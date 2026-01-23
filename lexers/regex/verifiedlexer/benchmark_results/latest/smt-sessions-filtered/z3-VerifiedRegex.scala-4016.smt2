; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217612 () Bool)

(assert start!217612)

(declare-fun b!2231726 () Bool)

(declare-fun b_free!64705 () Bool)

(declare-fun b_next!65409 () Bool)

(assert (=> b!2231726 (= b_free!64705 (not b_next!65409))))

(declare-fun tp!699730 () Bool)

(declare-fun b_and!174693 () Bool)

(assert (=> b!2231726 (= tp!699730 b_and!174693)))

(declare-fun b!2231727 () Bool)

(declare-fun b_free!64707 () Bool)

(declare-fun b_next!65411 () Bool)

(assert (=> b!2231727 (= b_free!64707 (not b_next!65411))))

(declare-fun tp!699733 () Bool)

(declare-fun b_and!174695 () Bool)

(assert (=> b!2231727 (= tp!699733 b_and!174695)))

(declare-fun b!2231723 () Bool)

(declare-fun res!955733 () Bool)

(declare-fun e!1426251 () Bool)

(assert (=> b!2231723 (=> (not res!955733) (not e!1426251))))

(declare-datatypes ((C!12992 0))(
  ( (C!12993 (val!7544 Int)) )
))
(declare-datatypes ((Regex!6423 0))(
  ( (ElementMatch!6423 (c!355915 C!12992)) (Concat!10761 (regOne!13358 Regex!6423) (regTwo!13358 Regex!6423)) (EmptyExpr!6423) (Star!6423 (reg!6752 Regex!6423)) (EmptyLang!6423) (Union!6423 (regOne!13359 Regex!6423) (regTwo!13359 Regex!6423)) )
))
(declare-fun expr!64 () Regex!6423)

(declare-fun a!1167 () C!12992)

(get-info :version)

(assert (=> b!2231723 (= res!955733 (and (or (not ((_ is ElementMatch!6423) expr!64)) (not (= (c!355915 expr!64) a!1167))) (not ((_ is Union!6423) expr!64))))))

(declare-fun mapNonEmpty!14413 () Bool)

(declare-fun mapRes!14413 () Bool)

(declare-fun tp!699729 () Bool)

(declare-fun tp!699721 () Bool)

(assert (=> mapNonEmpty!14413 (= mapRes!14413 (and tp!699729 tp!699721))))

(declare-fun mapKey!14413 () (_ BitVec 32))

(declare-datatypes ((List!26318 0))(
  ( (Nil!26224) (Cons!26224 (h!31625 Regex!6423) (t!199736 List!26318)) )
))
(declare-datatypes ((Context!3942 0))(
  ( (Context!3943 (exprs!2471 List!26318)) )
))
(declare-datatypes ((tuple3!3918 0))(
  ( (tuple3!3919 (_1!15218 Regex!6423) (_2!15218 Context!3942) (_3!2429 C!12992)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25578 0))(
  ( (tuple2!25579 (_1!15219 tuple3!3918) (_2!15219 (InoxSet Context!3942))) )
))
(declare-datatypes ((List!26319 0))(
  ( (Nil!26225) (Cons!26225 (h!31626 tuple2!25578) (t!199737 List!26319)) )
))
(declare-fun mapValue!14413 () List!26319)

(declare-datatypes ((array!10598 0))(
  ( (array!10599 (arr!4709 (Array (_ BitVec 32) (_ BitVec 64))) (size!20490 (_ BitVec 32))) )
))
(declare-datatypes ((array!10600 0))(
  ( (array!10601 (arr!4710 (Array (_ BitVec 32) List!26319)) (size!20491 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6122 0))(
  ( (LongMapFixedSize!6123 (defaultEntry!3426 Int) (mask!7626 (_ BitVec 32)) (extraKeys!3309 (_ BitVec 32)) (zeroValue!3319 List!26319) (minValue!3319 List!26319) (_size!6169 (_ BitVec 32)) (_keys!3358 array!10598) (_values!3341 array!10600) (_vacant!3122 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12061 0))(
  ( (Cell!12062 (v!29817 LongMapFixedSize!6122)) )
))
(declare-datatypes ((MutLongMap!3061 0))(
  ( (LongMap!3061 (underlying!6323 Cell!12061)) (MutLongMapExt!3060 (__x!17409 Int)) )
))
(declare-datatypes ((Cell!12063 0))(
  ( (Cell!12064 (v!29818 MutLongMap!3061)) )
))
(declare-datatypes ((Hashable!2971 0))(
  ( (HashableExt!2970 (__x!17410 Int)) )
))
(declare-datatypes ((MutableMap!2971 0))(
  ( (MutableMapExt!2970 (__x!17411 Int)) (HashMap!2971 (underlying!6324 Cell!12063) (hashF!4894 Hashable!2971) (_size!6170 (_ BitVec 32)) (defaultValue!3133 Int)) )
))
(declare-datatypes ((CacheDown!1988 0))(
  ( (CacheDown!1989 (cache!3352 MutableMap!2971)) )
))
(declare-fun cacheDown!839 () CacheDown!1988)

(declare-fun mapRest!14413 () (Array (_ BitVec 32) List!26319))

(assert (=> mapNonEmpty!14413 (= (arr!4710 (_values!3341 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839))))))) (store mapRest!14413 mapKey!14413 mapValue!14413))))

(declare-fun b!2231724 () Bool)

(declare-fun e!1426253 () Bool)

(declare-fun tp!699728 () Bool)

(assert (=> b!2231724 (= e!1426253 tp!699728)))

(declare-fun b!2231725 () Bool)

(declare-fun regexDepth!69 (Regex!6423) Int)

(assert (=> b!2231725 (= e!1426251 (>= (regexDepth!69 (regOne!13358 expr!64)) (regexDepth!69 expr!64)))))

(declare-fun e!1426242 () Bool)

(declare-fun e!1426249 () Bool)

(declare-fun tp!699725 () Bool)

(declare-fun tp!699723 () Bool)

(declare-fun array_inv!3381 (array!10598) Bool)

(declare-fun array_inv!3382 (array!10600) Bool)

(assert (=> b!2231726 (= e!1426242 (and tp!699730 tp!699723 tp!699725 (array_inv!3381 (_keys!3358 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839))))))) (array_inv!3382 (_values!3341 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839))))))) e!1426249))))

(declare-fun res!955734 () Bool)

(assert (=> start!217612 (=> (not res!955734) (not e!1426251))))

(declare-fun validRegex!2395 (Regex!6423) Bool)

(assert (=> start!217612 (= res!955734 (validRegex!2395 expr!64))))

(assert (=> start!217612 e!1426251))

(assert (=> start!217612 e!1426253))

(declare-fun e!1426245 () Bool)

(declare-fun inv!35614 (CacheDown!1988) Bool)

(assert (=> start!217612 (and (inv!35614 cacheDown!839) e!1426245)))

(declare-fun context!86 () Context!3942)

(declare-fun e!1426246 () Bool)

(declare-fun inv!35615 (Context!3942) Bool)

(assert (=> start!217612 (and (inv!35615 context!86) e!1426246)))

(declare-fun tp_is_empty!10071 () Bool)

(assert (=> start!217612 tp_is_empty!10071))

(declare-fun e!1426252 () Bool)

(declare-fun e!1426243 () Bool)

(assert (=> b!2231727 (= e!1426252 (and e!1426243 tp!699733))))

(declare-fun b!2231728 () Bool)

(declare-fun tp!699724 () Bool)

(declare-fun tp!699727 () Bool)

(assert (=> b!2231728 (= e!1426253 (and tp!699724 tp!699727))))

(declare-fun b!2231729 () Bool)

(declare-fun e!1426244 () Bool)

(assert (=> b!2231729 (= e!1426244 e!1426242)))

(declare-fun mapIsEmpty!14413 () Bool)

(assert (=> mapIsEmpty!14413 mapRes!14413))

(declare-fun b!2231730 () Bool)

(declare-fun res!955730 () Bool)

(assert (=> b!2231730 (=> (not res!955730) (not e!1426251))))

(assert (=> b!2231730 (= res!955730 ((_ is Concat!10761) expr!64))))

(declare-fun b!2231731 () Bool)

(declare-fun tp!699731 () Bool)

(assert (=> b!2231731 (= e!1426246 tp!699731)))

(declare-fun b!2231732 () Bool)

(declare-fun e!1426250 () Bool)

(declare-fun nullable!1768 (Regex!6423) Bool)

(assert (=> b!2231732 (= e!1426250 (not (nullable!1768 (regOne!13358 expr!64))))))

(declare-fun b!2231733 () Bool)

(declare-fun tp!699722 () Bool)

(assert (=> b!2231733 (= e!1426249 (and tp!699722 mapRes!14413))))

(declare-fun condMapEmpty!14413 () Bool)

(declare-fun mapDefault!14413 () List!26319)

(assert (=> b!2231733 (= condMapEmpty!14413 (= (arr!4710 (_values!3341 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26319)) mapDefault!14413)))))

(declare-fun b!2231734 () Bool)

(assert (=> b!2231734 (= e!1426253 tp_is_empty!10071)))

(declare-fun b!2231735 () Bool)

(declare-fun res!955728 () Bool)

(assert (=> b!2231735 (=> (not res!955728) (not e!1426251))))

(assert (=> b!2231735 (= res!955728 e!1426250)))

(declare-fun res!955731 () Bool)

(assert (=> b!2231735 (=> res!955731 e!1426250)))

(assert (=> b!2231735 (= res!955731 (not ((_ is Concat!10761) expr!64)))))

(declare-fun b!2231736 () Bool)

(assert (=> b!2231736 (= e!1426245 e!1426252)))

(declare-fun b!2231737 () Bool)

(declare-fun e!1426248 () Bool)

(declare-fun lt!830596 () MutLongMap!3061)

(assert (=> b!2231737 (= e!1426243 (and e!1426248 ((_ is LongMap!3061) lt!830596)))))

(assert (=> b!2231737 (= lt!830596 (v!29818 (underlying!6324 (cache!3352 cacheDown!839))))))

(declare-fun b!2231738 () Bool)

(declare-fun res!955732 () Bool)

(assert (=> b!2231738 (=> (not res!955732) (not e!1426251))))

(declare-datatypes ((Option!5106 0))(
  ( (None!5105) (Some!5105 (v!29819 (InoxSet Context!3942))) )
))
(declare-fun get!7921 (CacheDown!1988 Regex!6423 Context!3942 C!12992) Option!5106)

(assert (=> b!2231738 (= res!955732 (not ((_ is Some!5105) (get!7921 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2231739 () Bool)

(assert (=> b!2231739 (= e!1426248 e!1426244)))

(declare-fun b!2231740 () Bool)

(declare-fun tp!699732 () Bool)

(declare-fun tp!699726 () Bool)

(assert (=> b!2231740 (= e!1426253 (and tp!699732 tp!699726))))

(declare-fun b!2231741 () Bool)

(declare-fun res!955729 () Bool)

(assert (=> b!2231741 (=> (not res!955729) (not e!1426251))))

(assert (=> b!2231741 (= res!955729 (validRegex!2395 (regTwo!13358 expr!64)))))

(assert (= (and start!217612 res!955734) b!2231738))

(assert (= (and b!2231738 res!955732) b!2231723))

(assert (= (and b!2231723 res!955733) b!2231735))

(assert (= (and b!2231735 (not res!955731)) b!2231732))

(assert (= (and b!2231735 res!955728) b!2231730))

(assert (= (and b!2231730 res!955730) b!2231741))

(assert (= (and b!2231741 res!955729) b!2231725))

(assert (= (and start!217612 ((_ is ElementMatch!6423) expr!64)) b!2231734))

(assert (= (and start!217612 ((_ is Concat!10761) expr!64)) b!2231740))

(assert (= (and start!217612 ((_ is Star!6423) expr!64)) b!2231724))

(assert (= (and start!217612 ((_ is Union!6423) expr!64)) b!2231728))

(assert (= (and b!2231733 condMapEmpty!14413) mapIsEmpty!14413))

(assert (= (and b!2231733 (not condMapEmpty!14413)) mapNonEmpty!14413))

(assert (= b!2231726 b!2231733))

(assert (= b!2231729 b!2231726))

(assert (= b!2231739 b!2231729))

(assert (= (and b!2231737 ((_ is LongMap!3061) (v!29818 (underlying!6324 (cache!3352 cacheDown!839))))) b!2231739))

(assert (= b!2231727 b!2231737))

(assert (= (and b!2231736 ((_ is HashMap!2971) (cache!3352 cacheDown!839))) b!2231727))

(assert (= start!217612 b!2231736))

(assert (= start!217612 b!2231731))

(declare-fun m!2667947 () Bool)

(assert (=> b!2231738 m!2667947))

(declare-fun m!2667949 () Bool)

(assert (=> b!2231725 m!2667949))

(declare-fun m!2667951 () Bool)

(assert (=> b!2231725 m!2667951))

(declare-fun m!2667953 () Bool)

(assert (=> start!217612 m!2667953))

(declare-fun m!2667955 () Bool)

(assert (=> start!217612 m!2667955))

(declare-fun m!2667957 () Bool)

(assert (=> start!217612 m!2667957))

(declare-fun m!2667959 () Bool)

(assert (=> b!2231741 m!2667959))

(declare-fun m!2667961 () Bool)

(assert (=> b!2231726 m!2667961))

(declare-fun m!2667963 () Bool)

(assert (=> b!2231726 m!2667963))

(declare-fun m!2667965 () Bool)

(assert (=> b!2231732 m!2667965))

(declare-fun m!2667967 () Bool)

(assert (=> mapNonEmpty!14413 m!2667967))

(check-sat (not b!2231728) (not b!2231725) b_and!174693 (not b_next!65411) (not b!2231733) (not b!2231740) (not mapNonEmpty!14413) (not b!2231724) b_and!174695 tp_is_empty!10071 (not b!2231731) (not b!2231732) (not b_next!65409) (not start!217612) (not b!2231738) (not b!2231741) (not b!2231726))
(check-sat b_and!174695 b_and!174693 (not b_next!65409) (not b_next!65411))
(get-model)

(declare-fun bm!134013 () Bool)

(declare-fun call!134020 () Bool)

(declare-fun c!355921 () Bool)

(assert (=> bm!134013 (= call!134020 (validRegex!2395 (ite c!355921 (regTwo!13359 expr!64) (regTwo!13358 expr!64))))))

(declare-fun b!2231760 () Bool)

(declare-fun res!955749 () Bool)

(declare-fun e!1426269 () Bool)

(assert (=> b!2231760 (=> (not res!955749) (not e!1426269))))

(declare-fun call!134018 () Bool)

(assert (=> b!2231760 (= res!955749 call!134018)))

(declare-fun e!1426272 () Bool)

(assert (=> b!2231760 (= e!1426272 e!1426269)))

(declare-fun b!2231761 () Bool)

(assert (=> b!2231761 (= e!1426269 call!134020)))

(declare-fun b!2231762 () Bool)

(declare-fun e!1426268 () Bool)

(declare-fun e!1426271 () Bool)

(assert (=> b!2231762 (= e!1426268 e!1426271)))

(declare-fun c!355920 () Bool)

(assert (=> b!2231762 (= c!355920 ((_ is Star!6423) expr!64))))

(declare-fun b!2231763 () Bool)

(declare-fun e!1426274 () Bool)

(assert (=> b!2231763 (= e!1426271 e!1426274)))

(declare-fun res!955748 () Bool)

(assert (=> b!2231763 (= res!955748 (not (nullable!1768 (reg!6752 expr!64))))))

(assert (=> b!2231763 (=> (not res!955748) (not e!1426274))))

(declare-fun bm!134014 () Bool)

(declare-fun call!134019 () Bool)

(assert (=> bm!134014 (= call!134018 call!134019)))

(declare-fun b!2231764 () Bool)

(declare-fun e!1426270 () Bool)

(declare-fun e!1426273 () Bool)

(assert (=> b!2231764 (= e!1426270 e!1426273)))

(declare-fun res!955746 () Bool)

(assert (=> b!2231764 (=> (not res!955746) (not e!1426273))))

(assert (=> b!2231764 (= res!955746 call!134018)))

(declare-fun b!2231765 () Bool)

(assert (=> b!2231765 (= e!1426271 e!1426272)))

(assert (=> b!2231765 (= c!355921 ((_ is Union!6423) expr!64))))

(declare-fun d!665117 () Bool)

(declare-fun res!955745 () Bool)

(assert (=> d!665117 (=> res!955745 e!1426268)))

(assert (=> d!665117 (= res!955745 ((_ is ElementMatch!6423) expr!64))))

(assert (=> d!665117 (= (validRegex!2395 expr!64) e!1426268)))

(declare-fun bm!134015 () Bool)

(assert (=> bm!134015 (= call!134019 (validRegex!2395 (ite c!355920 (reg!6752 expr!64) (ite c!355921 (regOne!13359 expr!64) (regOne!13358 expr!64)))))))

(declare-fun b!2231766 () Bool)

(declare-fun res!955747 () Bool)

(assert (=> b!2231766 (=> res!955747 e!1426270)))

(assert (=> b!2231766 (= res!955747 (not ((_ is Concat!10761) expr!64)))))

(assert (=> b!2231766 (= e!1426272 e!1426270)))

(declare-fun b!2231767 () Bool)

(assert (=> b!2231767 (= e!1426274 call!134019)))

(declare-fun b!2231768 () Bool)

(assert (=> b!2231768 (= e!1426273 call!134020)))

(assert (= (and d!665117 (not res!955745)) b!2231762))

(assert (= (and b!2231762 c!355920) b!2231763))

(assert (= (and b!2231762 (not c!355920)) b!2231765))

(assert (= (and b!2231763 res!955748) b!2231767))

(assert (= (and b!2231765 c!355921) b!2231760))

(assert (= (and b!2231765 (not c!355921)) b!2231766))

(assert (= (and b!2231760 res!955749) b!2231761))

(assert (= (and b!2231766 (not res!955747)) b!2231764))

(assert (= (and b!2231764 res!955746) b!2231768))

(assert (= (or b!2231761 b!2231768) bm!134013))

(assert (= (or b!2231760 b!2231764) bm!134014))

(assert (= (or b!2231767 bm!134014) bm!134015))

(declare-fun m!2667969 () Bool)

(assert (=> bm!134013 m!2667969))

(declare-fun m!2667971 () Bool)

(assert (=> b!2231763 m!2667971))

(declare-fun m!2667973 () Bool)

(assert (=> bm!134015 m!2667973))

(assert (=> start!217612 d!665117))

(declare-fun d!665119 () Bool)

(declare-fun res!955752 () Bool)

(declare-fun e!1426277 () Bool)

(assert (=> d!665119 (=> (not res!955752) (not e!1426277))))

(assert (=> d!665119 (= res!955752 ((_ is HashMap!2971) (cache!3352 cacheDown!839)))))

(assert (=> d!665119 (= (inv!35614 cacheDown!839) e!1426277)))

(declare-fun b!2231771 () Bool)

(declare-fun validCacheMapDown!285 (MutableMap!2971) Bool)

(assert (=> b!2231771 (= e!1426277 (validCacheMapDown!285 (cache!3352 cacheDown!839)))))

(assert (= (and d!665119 res!955752) b!2231771))

(declare-fun m!2667975 () Bool)

(assert (=> b!2231771 m!2667975))

(assert (=> start!217612 d!665119))

(declare-fun d!665121 () Bool)

(declare-fun lambda!84313 () Int)

(declare-fun forall!5366 (List!26318 Int) Bool)

(assert (=> d!665121 (= (inv!35615 context!86) (forall!5366 (exprs!2471 context!86) lambda!84313))))

(declare-fun bs!454008 () Bool)

(assert (= bs!454008 d!665121))

(declare-fun m!2667977 () Bool)

(assert (=> bs!454008 m!2667977))

(assert (=> start!217612 d!665121))

(declare-fun b!2231806 () Bool)

(declare-fun e!1426299 () Int)

(declare-fun e!1426305 () Int)

(assert (=> b!2231806 (= e!1426299 e!1426305)))

(declare-fun c!355942 () Bool)

(assert (=> b!2231806 (= c!355942 ((_ is Star!6423) (regOne!13358 expr!64)))))

(declare-fun b!2231807 () Bool)

(declare-fun e!1426306 () Bool)

(declare-fun e!1426300 () Bool)

(assert (=> b!2231807 (= e!1426306 e!1426300)))

(declare-fun c!355941 () Bool)

(assert (=> b!2231807 (= c!355941 ((_ is Concat!10761) (regOne!13358 expr!64)))))

(declare-fun b!2231808 () Bool)

(declare-fun e!1426298 () Int)

(declare-fun e!1426301 () Int)

(assert (=> b!2231808 (= e!1426298 e!1426301)))

(declare-fun c!355939 () Bool)

(assert (=> b!2231808 (= c!355939 ((_ is Concat!10761) (regOne!13358 expr!64)))))

(declare-fun b!2231809 () Bool)

(declare-fun e!1426307 () Bool)

(assert (=> b!2231809 (= e!1426306 e!1426307)))

(declare-fun res!955761 () Bool)

(declare-fun lt!830599 () Int)

(declare-fun call!134039 () Int)

(assert (=> b!2231809 (= res!955761 (> lt!830599 call!134039))))

(assert (=> b!2231809 (=> (not res!955761) (not e!1426307))))

(declare-fun bm!134030 () Bool)

(declare-fun call!134038 () Int)

(declare-fun call!134036 () Int)

(assert (=> bm!134030 (= call!134038 call!134036)))

(declare-fun b!2231810 () Bool)

(declare-fun call!134041 () Int)

(assert (=> b!2231810 (= e!1426307 (> lt!830599 call!134041))))

(declare-fun b!2231811 () Bool)

(declare-fun e!1426303 () Bool)

(assert (=> b!2231811 (= e!1426303 (> lt!830599 call!134041))))

(declare-fun b!2231812 () Bool)

(declare-fun call!134040 () Int)

(assert (=> b!2231812 (= e!1426298 (+ 1 call!134040))))

(declare-fun bm!134032 () Bool)

(declare-fun c!355936 () Bool)

(assert (=> bm!134032 (= call!134036 (regexDepth!69 (ite c!355942 (reg!6752 (regOne!13358 expr!64)) (ite c!355936 (regOne!13359 (regOne!13358 expr!64)) (regTwo!13358 (regOne!13358 expr!64))))))))

(declare-fun b!2231813 () Bool)

(declare-fun c!355938 () Bool)

(assert (=> b!2231813 (= c!355938 ((_ is Star!6423) (regOne!13358 expr!64)))))

(declare-fun e!1426302 () Bool)

(assert (=> b!2231813 (= e!1426300 e!1426302)))

(declare-fun b!2231814 () Bool)

(assert (=> b!2231814 (= e!1426305 (+ 1 call!134036))))

(declare-fun b!2231815 () Bool)

(assert (=> b!2231815 (= e!1426302 (= lt!830599 1))))

(declare-fun bm!134033 () Bool)

(declare-fun call!134035 () Int)

(assert (=> bm!134033 (= call!134035 (regexDepth!69 (ite c!355936 (regTwo!13359 (regOne!13358 expr!64)) (regOne!13358 (regOne!13358 expr!64)))))))

(declare-fun b!2231816 () Bool)

(assert (=> b!2231816 (= e!1426301 1)))

(declare-fun b!2231817 () Bool)

(declare-fun res!955760 () Bool)

(assert (=> b!2231817 (=> (not res!955760) (not e!1426303))))

(declare-fun call!134037 () Int)

(assert (=> b!2231817 (= res!955760 (> lt!830599 call!134037))))

(assert (=> b!2231817 (= e!1426300 e!1426303)))

(declare-fun bm!134034 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!134034 (= call!134040 (maxBigInt!0 (ite c!355936 call!134038 call!134035) (ite c!355936 call!134035 call!134038)))))

(declare-fun b!2231818 () Bool)

(declare-fun e!1426304 () Bool)

(assert (=> b!2231818 (= e!1426304 e!1426306)))

(declare-fun c!355940 () Bool)

(assert (=> b!2231818 (= c!355940 ((_ is Union!6423) (regOne!13358 expr!64)))))

(declare-fun bm!134035 () Bool)

(assert (=> bm!134035 (= call!134039 (regexDepth!69 (ite c!355940 (regOne!13359 (regOne!13358 expr!64)) (ite c!355941 (regOne!13358 (regOne!13358 expr!64)) (reg!6752 (regOne!13358 expr!64))))))))

(declare-fun bm!134036 () Bool)

(assert (=> bm!134036 (= call!134037 call!134039)))

(declare-fun b!2231819 () Bool)

(assert (=> b!2231819 (= e!1426301 (+ 1 call!134040))))

(declare-fun b!2231820 () Bool)

(assert (=> b!2231820 (= e!1426299 1)))

(declare-fun d!665123 () Bool)

(assert (=> d!665123 e!1426304))

(declare-fun res!955759 () Bool)

(assert (=> d!665123 (=> (not res!955759) (not e!1426304))))

(assert (=> d!665123 (= res!955759 (> lt!830599 0))))

(assert (=> d!665123 (= lt!830599 e!1426299)))

(declare-fun c!355937 () Bool)

(assert (=> d!665123 (= c!355937 ((_ is ElementMatch!6423) (regOne!13358 expr!64)))))

(assert (=> d!665123 (= (regexDepth!69 (regOne!13358 expr!64)) lt!830599)))

(declare-fun bm!134031 () Bool)

(assert (=> bm!134031 (= call!134041 (regexDepth!69 (ite c!355940 (regTwo!13359 (regOne!13358 expr!64)) (regTwo!13358 (regOne!13358 expr!64)))))))

(declare-fun b!2231821 () Bool)

(assert (=> b!2231821 (= c!355936 ((_ is Union!6423) (regOne!13358 expr!64)))))

(assert (=> b!2231821 (= e!1426305 e!1426298)))

(declare-fun b!2231822 () Bool)

(assert (=> b!2231822 (= e!1426302 (> lt!830599 call!134037))))

(assert (= (and d!665123 c!355937) b!2231820))

(assert (= (and d!665123 (not c!355937)) b!2231806))

(assert (= (and b!2231806 c!355942) b!2231814))

(assert (= (and b!2231806 (not c!355942)) b!2231821))

(assert (= (and b!2231821 c!355936) b!2231812))

(assert (= (and b!2231821 (not c!355936)) b!2231808))

(assert (= (and b!2231808 c!355939) b!2231819))

(assert (= (and b!2231808 (not c!355939)) b!2231816))

(assert (= (or b!2231812 b!2231819) bm!134033))

(assert (= (or b!2231812 b!2231819) bm!134030))

(assert (= (or b!2231812 b!2231819) bm!134034))

(assert (= (or b!2231814 bm!134030) bm!134032))

(assert (= (and d!665123 res!955759) b!2231818))

(assert (= (and b!2231818 c!355940) b!2231809))

(assert (= (and b!2231818 (not c!355940)) b!2231807))

(assert (= (and b!2231809 res!955761) b!2231810))

(assert (= (and b!2231807 c!355941) b!2231817))

(assert (= (and b!2231807 (not c!355941)) b!2231813))

(assert (= (and b!2231817 res!955760) b!2231811))

(assert (= (and b!2231813 c!355938) b!2231822))

(assert (= (and b!2231813 (not c!355938)) b!2231815))

(assert (= (or b!2231817 b!2231822) bm!134036))

(assert (= (or b!2231810 b!2231811) bm!134031))

(assert (= (or b!2231809 bm!134036) bm!134035))

(declare-fun m!2667979 () Bool)

(assert (=> bm!134035 m!2667979))

(declare-fun m!2667981 () Bool)

(assert (=> bm!134031 m!2667981))

(declare-fun m!2667983 () Bool)

(assert (=> bm!134033 m!2667983))

(declare-fun m!2667985 () Bool)

(assert (=> bm!134034 m!2667985))

(declare-fun m!2667987 () Bool)

(assert (=> bm!134032 m!2667987))

(assert (=> b!2231725 d!665123))

(declare-fun b!2231823 () Bool)

(declare-fun e!1426309 () Int)

(declare-fun e!1426315 () Int)

(assert (=> b!2231823 (= e!1426309 e!1426315)))

(declare-fun c!355949 () Bool)

(assert (=> b!2231823 (= c!355949 ((_ is Star!6423) expr!64))))

(declare-fun b!2231824 () Bool)

(declare-fun e!1426316 () Bool)

(declare-fun e!1426310 () Bool)

(assert (=> b!2231824 (= e!1426316 e!1426310)))

(declare-fun c!355948 () Bool)

(assert (=> b!2231824 (= c!355948 ((_ is Concat!10761) expr!64))))

(declare-fun b!2231825 () Bool)

(declare-fun e!1426308 () Int)

(declare-fun e!1426311 () Int)

(assert (=> b!2231825 (= e!1426308 e!1426311)))

(declare-fun c!355946 () Bool)

(assert (=> b!2231825 (= c!355946 ((_ is Concat!10761) expr!64))))

(declare-fun b!2231826 () Bool)

(declare-fun e!1426317 () Bool)

(assert (=> b!2231826 (= e!1426316 e!1426317)))

(declare-fun res!955764 () Bool)

(declare-fun lt!830600 () Int)

(declare-fun call!134046 () Int)

(assert (=> b!2231826 (= res!955764 (> lt!830600 call!134046))))

(assert (=> b!2231826 (=> (not res!955764) (not e!1426317))))

(declare-fun bm!134037 () Bool)

(declare-fun call!134045 () Int)

(declare-fun call!134043 () Int)

(assert (=> bm!134037 (= call!134045 call!134043)))

(declare-fun b!2231827 () Bool)

(declare-fun call!134048 () Int)

(assert (=> b!2231827 (= e!1426317 (> lt!830600 call!134048))))

(declare-fun b!2231828 () Bool)

(declare-fun e!1426313 () Bool)

(assert (=> b!2231828 (= e!1426313 (> lt!830600 call!134048))))

(declare-fun b!2231829 () Bool)

(declare-fun call!134047 () Int)

(assert (=> b!2231829 (= e!1426308 (+ 1 call!134047))))

(declare-fun bm!134039 () Bool)

(declare-fun c!355943 () Bool)

(assert (=> bm!134039 (= call!134043 (regexDepth!69 (ite c!355949 (reg!6752 expr!64) (ite c!355943 (regOne!13359 expr!64) (regTwo!13358 expr!64)))))))

(declare-fun b!2231830 () Bool)

(declare-fun c!355945 () Bool)

(assert (=> b!2231830 (= c!355945 ((_ is Star!6423) expr!64))))

(declare-fun e!1426312 () Bool)

(assert (=> b!2231830 (= e!1426310 e!1426312)))

(declare-fun b!2231831 () Bool)

(assert (=> b!2231831 (= e!1426315 (+ 1 call!134043))))

(declare-fun b!2231832 () Bool)

(assert (=> b!2231832 (= e!1426312 (= lt!830600 1))))

(declare-fun bm!134040 () Bool)

(declare-fun call!134042 () Int)

(assert (=> bm!134040 (= call!134042 (regexDepth!69 (ite c!355943 (regTwo!13359 expr!64) (regOne!13358 expr!64))))))

(declare-fun b!2231833 () Bool)

(assert (=> b!2231833 (= e!1426311 1)))

(declare-fun b!2231834 () Bool)

(declare-fun res!955763 () Bool)

(assert (=> b!2231834 (=> (not res!955763) (not e!1426313))))

(declare-fun call!134044 () Int)

(assert (=> b!2231834 (= res!955763 (> lt!830600 call!134044))))

(assert (=> b!2231834 (= e!1426310 e!1426313)))

(declare-fun bm!134041 () Bool)

(assert (=> bm!134041 (= call!134047 (maxBigInt!0 (ite c!355943 call!134045 call!134042) (ite c!355943 call!134042 call!134045)))))

(declare-fun b!2231835 () Bool)

(declare-fun e!1426314 () Bool)

(assert (=> b!2231835 (= e!1426314 e!1426316)))

(declare-fun c!355947 () Bool)

(assert (=> b!2231835 (= c!355947 ((_ is Union!6423) expr!64))))

(declare-fun bm!134042 () Bool)

(assert (=> bm!134042 (= call!134046 (regexDepth!69 (ite c!355947 (regOne!13359 expr!64) (ite c!355948 (regOne!13358 expr!64) (reg!6752 expr!64)))))))

(declare-fun bm!134043 () Bool)

(assert (=> bm!134043 (= call!134044 call!134046)))

(declare-fun b!2231836 () Bool)

(assert (=> b!2231836 (= e!1426311 (+ 1 call!134047))))

(declare-fun b!2231837 () Bool)

(assert (=> b!2231837 (= e!1426309 1)))

(declare-fun d!665125 () Bool)

(assert (=> d!665125 e!1426314))

(declare-fun res!955762 () Bool)

(assert (=> d!665125 (=> (not res!955762) (not e!1426314))))

(assert (=> d!665125 (= res!955762 (> lt!830600 0))))

(assert (=> d!665125 (= lt!830600 e!1426309)))

(declare-fun c!355944 () Bool)

(assert (=> d!665125 (= c!355944 ((_ is ElementMatch!6423) expr!64))))

(assert (=> d!665125 (= (regexDepth!69 expr!64) lt!830600)))

(declare-fun bm!134038 () Bool)

(assert (=> bm!134038 (= call!134048 (regexDepth!69 (ite c!355947 (regTwo!13359 expr!64) (regTwo!13358 expr!64))))))

(declare-fun b!2231838 () Bool)

(assert (=> b!2231838 (= c!355943 ((_ is Union!6423) expr!64))))

(assert (=> b!2231838 (= e!1426315 e!1426308)))

(declare-fun b!2231839 () Bool)

(assert (=> b!2231839 (= e!1426312 (> lt!830600 call!134044))))

(assert (= (and d!665125 c!355944) b!2231837))

(assert (= (and d!665125 (not c!355944)) b!2231823))

(assert (= (and b!2231823 c!355949) b!2231831))

(assert (= (and b!2231823 (not c!355949)) b!2231838))

(assert (= (and b!2231838 c!355943) b!2231829))

(assert (= (and b!2231838 (not c!355943)) b!2231825))

(assert (= (and b!2231825 c!355946) b!2231836))

(assert (= (and b!2231825 (not c!355946)) b!2231833))

(assert (= (or b!2231829 b!2231836) bm!134040))

(assert (= (or b!2231829 b!2231836) bm!134037))

(assert (= (or b!2231829 b!2231836) bm!134041))

(assert (= (or b!2231831 bm!134037) bm!134039))

(assert (= (and d!665125 res!955762) b!2231835))

(assert (= (and b!2231835 c!355947) b!2231826))

(assert (= (and b!2231835 (not c!355947)) b!2231824))

(assert (= (and b!2231826 res!955764) b!2231827))

(assert (= (and b!2231824 c!355948) b!2231834))

(assert (= (and b!2231824 (not c!355948)) b!2231830))

(assert (= (and b!2231834 res!955763) b!2231828))

(assert (= (and b!2231830 c!355945) b!2231839))

(assert (= (and b!2231830 (not c!355945)) b!2231832))

(assert (= (or b!2231834 b!2231839) bm!134043))

(assert (= (or b!2231827 b!2231828) bm!134038))

(assert (= (or b!2231826 bm!134043) bm!134042))

(declare-fun m!2667989 () Bool)

(assert (=> bm!134042 m!2667989))

(declare-fun m!2667991 () Bool)

(assert (=> bm!134038 m!2667991))

(declare-fun m!2667993 () Bool)

(assert (=> bm!134040 m!2667993))

(declare-fun m!2667995 () Bool)

(assert (=> bm!134041 m!2667995))

(declare-fun m!2667997 () Bool)

(assert (=> bm!134039 m!2667997))

(assert (=> b!2231725 d!665125))

(declare-fun d!665127 () Bool)

(declare-fun e!1426320 () Bool)

(assert (=> d!665127 e!1426320))

(declare-fun res!955767 () Bool)

(assert (=> d!665127 (=> res!955767 e!1426320)))

(declare-fun lt!830603 () Option!5106)

(declare-fun isEmpty!14898 (Option!5106) Bool)

(assert (=> d!665127 (= res!955767 (isEmpty!14898 lt!830603))))

(declare-fun choose!13129 (CacheDown!1988 Regex!6423 Context!3942 C!12992) Option!5106)

(assert (=> d!665127 (= lt!830603 (choose!13129 cacheDown!839 expr!64 context!86 a!1167))))

(assert (=> d!665127 (validCacheMapDown!285 (cache!3352 cacheDown!839))))

(assert (=> d!665127 (= (get!7921 cacheDown!839 expr!64 context!86 a!1167) lt!830603)))

(declare-fun b!2231842 () Bool)

(declare-fun get!7922 (Option!5106) (InoxSet Context!3942))

(declare-fun derivationStepZipperDown!48 (Regex!6423 Context!3942 C!12992) (InoxSet Context!3942))

(assert (=> b!2231842 (= e!1426320 (= (get!7922 lt!830603) (derivationStepZipperDown!48 expr!64 context!86 a!1167)))))

(assert (= (and d!665127 (not res!955767)) b!2231842))

(declare-fun m!2667999 () Bool)

(assert (=> d!665127 m!2667999))

(declare-fun m!2668001 () Bool)

(assert (=> d!665127 m!2668001))

(assert (=> d!665127 m!2667975))

(declare-fun m!2668003 () Bool)

(assert (=> b!2231842 m!2668003))

(declare-fun m!2668005 () Bool)

(assert (=> b!2231842 m!2668005))

(assert (=> b!2231738 d!665127))

(declare-fun d!665129 () Bool)

(declare-fun nullableFct!418 (Regex!6423) Bool)

(assert (=> d!665129 (= (nullable!1768 (regOne!13358 expr!64)) (nullableFct!418 (regOne!13358 expr!64)))))

(declare-fun bs!454009 () Bool)

(assert (= bs!454009 d!665129))

(declare-fun m!2668007 () Bool)

(assert (=> bs!454009 m!2668007))

(assert (=> b!2231732 d!665129))

(declare-fun d!665131 () Bool)

(assert (=> d!665131 (= (array_inv!3381 (_keys!3358 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839))))))) (bvsge (size!20490 (_keys!3358 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2231726 d!665131))

(declare-fun d!665133 () Bool)

(assert (=> d!665133 (= (array_inv!3382 (_values!3341 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839))))))) (bvsge (size!20491 (_values!3341 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2231726 d!665133))

(declare-fun bm!134044 () Bool)

(declare-fun call!134051 () Bool)

(declare-fun c!355951 () Bool)

(assert (=> bm!134044 (= call!134051 (validRegex!2395 (ite c!355951 (regTwo!13359 (regTwo!13358 expr!64)) (regTwo!13358 (regTwo!13358 expr!64)))))))

(declare-fun b!2231843 () Bool)

(declare-fun res!955772 () Bool)

(declare-fun e!1426322 () Bool)

(assert (=> b!2231843 (=> (not res!955772) (not e!1426322))))

(declare-fun call!134049 () Bool)

(assert (=> b!2231843 (= res!955772 call!134049)))

(declare-fun e!1426325 () Bool)

(assert (=> b!2231843 (= e!1426325 e!1426322)))

(declare-fun b!2231844 () Bool)

(assert (=> b!2231844 (= e!1426322 call!134051)))

(declare-fun b!2231845 () Bool)

(declare-fun e!1426321 () Bool)

(declare-fun e!1426324 () Bool)

(assert (=> b!2231845 (= e!1426321 e!1426324)))

(declare-fun c!355950 () Bool)

(assert (=> b!2231845 (= c!355950 ((_ is Star!6423) (regTwo!13358 expr!64)))))

(declare-fun b!2231846 () Bool)

(declare-fun e!1426327 () Bool)

(assert (=> b!2231846 (= e!1426324 e!1426327)))

(declare-fun res!955771 () Bool)

(assert (=> b!2231846 (= res!955771 (not (nullable!1768 (reg!6752 (regTwo!13358 expr!64)))))))

(assert (=> b!2231846 (=> (not res!955771) (not e!1426327))))

(declare-fun bm!134045 () Bool)

(declare-fun call!134050 () Bool)

(assert (=> bm!134045 (= call!134049 call!134050)))

(declare-fun b!2231847 () Bool)

(declare-fun e!1426323 () Bool)

(declare-fun e!1426326 () Bool)

(assert (=> b!2231847 (= e!1426323 e!1426326)))

(declare-fun res!955769 () Bool)

(assert (=> b!2231847 (=> (not res!955769) (not e!1426326))))

(assert (=> b!2231847 (= res!955769 call!134049)))

(declare-fun b!2231848 () Bool)

(assert (=> b!2231848 (= e!1426324 e!1426325)))

(assert (=> b!2231848 (= c!355951 ((_ is Union!6423) (regTwo!13358 expr!64)))))

(declare-fun d!665135 () Bool)

(declare-fun res!955768 () Bool)

(assert (=> d!665135 (=> res!955768 e!1426321)))

(assert (=> d!665135 (= res!955768 ((_ is ElementMatch!6423) (regTwo!13358 expr!64)))))

(assert (=> d!665135 (= (validRegex!2395 (regTwo!13358 expr!64)) e!1426321)))

(declare-fun bm!134046 () Bool)

(assert (=> bm!134046 (= call!134050 (validRegex!2395 (ite c!355950 (reg!6752 (regTwo!13358 expr!64)) (ite c!355951 (regOne!13359 (regTwo!13358 expr!64)) (regOne!13358 (regTwo!13358 expr!64))))))))

(declare-fun b!2231849 () Bool)

(declare-fun res!955770 () Bool)

(assert (=> b!2231849 (=> res!955770 e!1426323)))

(assert (=> b!2231849 (= res!955770 (not ((_ is Concat!10761) (regTwo!13358 expr!64))))))

(assert (=> b!2231849 (= e!1426325 e!1426323)))

(declare-fun b!2231850 () Bool)

(assert (=> b!2231850 (= e!1426327 call!134050)))

(declare-fun b!2231851 () Bool)

(assert (=> b!2231851 (= e!1426326 call!134051)))

(assert (= (and d!665135 (not res!955768)) b!2231845))

(assert (= (and b!2231845 c!355950) b!2231846))

(assert (= (and b!2231845 (not c!355950)) b!2231848))

(assert (= (and b!2231846 res!955771) b!2231850))

(assert (= (and b!2231848 c!355951) b!2231843))

(assert (= (and b!2231848 (not c!355951)) b!2231849))

(assert (= (and b!2231843 res!955772) b!2231844))

(assert (= (and b!2231849 (not res!955770)) b!2231847))

(assert (= (and b!2231847 res!955769) b!2231851))

(assert (= (or b!2231844 b!2231851) bm!134044))

(assert (= (or b!2231843 b!2231847) bm!134045))

(assert (= (or b!2231850 bm!134045) bm!134046))

(declare-fun m!2668009 () Bool)

(assert (=> bm!134044 m!2668009))

(declare-fun m!2668011 () Bool)

(assert (=> b!2231846 m!2668011))

(declare-fun m!2668013 () Bool)

(assert (=> bm!134046 m!2668013))

(assert (=> b!2231741 d!665135))

(declare-fun b!2231862 () Bool)

(declare-fun e!1426330 () Bool)

(assert (=> b!2231862 (= e!1426330 tp_is_empty!10071)))

(declare-fun b!2231863 () Bool)

(declare-fun tp!699745 () Bool)

(declare-fun tp!699748 () Bool)

(assert (=> b!2231863 (= e!1426330 (and tp!699745 tp!699748))))

(assert (=> b!2231740 (= tp!699732 e!1426330)))

(declare-fun b!2231864 () Bool)

(declare-fun tp!699747 () Bool)

(assert (=> b!2231864 (= e!1426330 tp!699747)))

(declare-fun b!2231865 () Bool)

(declare-fun tp!699744 () Bool)

(declare-fun tp!699746 () Bool)

(assert (=> b!2231865 (= e!1426330 (and tp!699744 tp!699746))))

(assert (= (and b!2231740 ((_ is ElementMatch!6423) (regOne!13358 expr!64))) b!2231862))

(assert (= (and b!2231740 ((_ is Concat!10761) (regOne!13358 expr!64))) b!2231863))

(assert (= (and b!2231740 ((_ is Star!6423) (regOne!13358 expr!64))) b!2231864))

(assert (= (and b!2231740 ((_ is Union!6423) (regOne!13358 expr!64))) b!2231865))

(declare-fun b!2231866 () Bool)

(declare-fun e!1426331 () Bool)

(assert (=> b!2231866 (= e!1426331 tp_is_empty!10071)))

(declare-fun b!2231867 () Bool)

(declare-fun tp!699750 () Bool)

(declare-fun tp!699753 () Bool)

(assert (=> b!2231867 (= e!1426331 (and tp!699750 tp!699753))))

(assert (=> b!2231740 (= tp!699726 e!1426331)))

(declare-fun b!2231868 () Bool)

(declare-fun tp!699752 () Bool)

(assert (=> b!2231868 (= e!1426331 tp!699752)))

(declare-fun b!2231869 () Bool)

(declare-fun tp!699749 () Bool)

(declare-fun tp!699751 () Bool)

(assert (=> b!2231869 (= e!1426331 (and tp!699749 tp!699751))))

(assert (= (and b!2231740 ((_ is ElementMatch!6423) (regTwo!13358 expr!64))) b!2231866))

(assert (= (and b!2231740 ((_ is Concat!10761) (regTwo!13358 expr!64))) b!2231867))

(assert (= (and b!2231740 ((_ is Star!6423) (regTwo!13358 expr!64))) b!2231868))

(assert (= (and b!2231740 ((_ is Union!6423) (regTwo!13358 expr!64))) b!2231869))

(declare-fun b!2231870 () Bool)

(declare-fun e!1426332 () Bool)

(assert (=> b!2231870 (= e!1426332 tp_is_empty!10071)))

(declare-fun b!2231871 () Bool)

(declare-fun tp!699755 () Bool)

(declare-fun tp!699758 () Bool)

(assert (=> b!2231871 (= e!1426332 (and tp!699755 tp!699758))))

(assert (=> b!2231724 (= tp!699728 e!1426332)))

(declare-fun b!2231872 () Bool)

(declare-fun tp!699757 () Bool)

(assert (=> b!2231872 (= e!1426332 tp!699757)))

(declare-fun b!2231873 () Bool)

(declare-fun tp!699754 () Bool)

(declare-fun tp!699756 () Bool)

(assert (=> b!2231873 (= e!1426332 (and tp!699754 tp!699756))))

(assert (= (and b!2231724 ((_ is ElementMatch!6423) (reg!6752 expr!64))) b!2231870))

(assert (= (and b!2231724 ((_ is Concat!10761) (reg!6752 expr!64))) b!2231871))

(assert (= (and b!2231724 ((_ is Star!6423) (reg!6752 expr!64))) b!2231872))

(assert (= (and b!2231724 ((_ is Union!6423) (reg!6752 expr!64))) b!2231873))

(declare-fun setNonEmpty!20130 () Bool)

(declare-fun e!1426339 () Bool)

(declare-fun setElem!20130 () Context!3942)

(declare-fun tp!699772 () Bool)

(declare-fun setRes!20130 () Bool)

(assert (=> setNonEmpty!20130 (= setRes!20130 (and tp!699772 (inv!35615 setElem!20130) e!1426339))))

(declare-fun setRest!20130 () (InoxSet Context!3942))

(assert (=> setNonEmpty!20130 (= (_2!15219 (h!31626 mapDefault!14413)) ((_ map or) (store ((as const (Array Context!3942 Bool)) false) setElem!20130 true) setRest!20130))))

(declare-fun b!2231882 () Bool)

(declare-fun tp!699773 () Bool)

(assert (=> b!2231882 (= e!1426339 tp!699773)))

(declare-fun setIsEmpty!20130 () Bool)

(assert (=> setIsEmpty!20130 setRes!20130))

(declare-fun e!1426341 () Bool)

(assert (=> b!2231733 (= tp!699722 e!1426341)))

(declare-fun e!1426340 () Bool)

(declare-fun b!2231883 () Bool)

(declare-fun tp!699771 () Bool)

(declare-fun tp!699769 () Bool)

(assert (=> b!2231883 (= e!1426341 (and tp!699769 (inv!35615 (_2!15218 (_1!15219 (h!31626 mapDefault!14413)))) e!1426340 tp_is_empty!10071 setRes!20130 tp!699771))))

(declare-fun condSetEmpty!20130 () Bool)

(assert (=> b!2231883 (= condSetEmpty!20130 (= (_2!15219 (h!31626 mapDefault!14413)) ((as const (Array Context!3942 Bool)) false)))))

(declare-fun b!2231884 () Bool)

(declare-fun tp!699770 () Bool)

(assert (=> b!2231884 (= e!1426340 tp!699770)))

(assert (= b!2231883 b!2231884))

(assert (= (and b!2231883 condSetEmpty!20130) setIsEmpty!20130))

(assert (= (and b!2231883 (not condSetEmpty!20130)) setNonEmpty!20130))

(assert (= setNonEmpty!20130 b!2231882))

(assert (= (and b!2231733 ((_ is Cons!26225) mapDefault!14413)) b!2231883))

(declare-fun m!2668015 () Bool)

(assert (=> setNonEmpty!20130 m!2668015))

(declare-fun m!2668017 () Bool)

(assert (=> b!2231883 m!2668017))

(declare-fun mapNonEmpty!14416 () Bool)

(declare-fun mapRes!14416 () Bool)

(declare-fun tp!699803 () Bool)

(declare-fun e!1426358 () Bool)

(assert (=> mapNonEmpty!14416 (= mapRes!14416 (and tp!699803 e!1426358))))

(declare-fun mapValue!14416 () List!26319)

(declare-fun mapRest!14416 () (Array (_ BitVec 32) List!26319))

(declare-fun mapKey!14416 () (_ BitVec 32))

(assert (=> mapNonEmpty!14416 (= mapRest!14413 (store mapRest!14416 mapKey!14416 mapValue!14416))))

(declare-fun setIsEmpty!20135 () Bool)

(declare-fun setRes!20135 () Bool)

(assert (=> setIsEmpty!20135 setRes!20135))

(declare-fun setIsEmpty!20136 () Bool)

(declare-fun setRes!20136 () Bool)

(assert (=> setIsEmpty!20136 setRes!20136))

(declare-fun tp!699798 () Bool)

(declare-fun e!1426357 () Bool)

(declare-fun setNonEmpty!20135 () Bool)

(declare-fun setElem!20135 () Context!3942)

(assert (=> setNonEmpty!20135 (= setRes!20136 (and tp!699798 (inv!35615 setElem!20135) e!1426357))))

(declare-fun mapDefault!14416 () List!26319)

(declare-fun setRest!20136 () (InoxSet Context!3942))

(assert (=> setNonEmpty!20135 (= (_2!15219 (h!31626 mapDefault!14416)) ((_ map or) (store ((as const (Array Context!3942 Bool)) false) setElem!20135 true) setRest!20136))))

(declare-fun tp!699797 () Bool)

(declare-fun setElem!20136 () Context!3942)

(declare-fun setNonEmpty!20136 () Bool)

(declare-fun e!1426355 () Bool)

(assert (=> setNonEmpty!20136 (= setRes!20135 (and tp!699797 (inv!35615 setElem!20136) e!1426355))))

(declare-fun setRest!20135 () (InoxSet Context!3942))

(assert (=> setNonEmpty!20136 (= (_2!15219 (h!31626 mapValue!14416)) ((_ map or) (store ((as const (Array Context!3942 Bool)) false) setElem!20136 true) setRest!20135))))

(declare-fun b!2231899 () Bool)

(declare-fun e!1426354 () Bool)

(declare-fun tp!699805 () Bool)

(assert (=> b!2231899 (= e!1426354 tp!699805)))

(declare-fun mapIsEmpty!14416 () Bool)

(assert (=> mapIsEmpty!14416 mapRes!14416))

(declare-fun b!2231900 () Bool)

(declare-fun tp!699801 () Bool)

(declare-fun e!1426356 () Bool)

(declare-fun tp!699804 () Bool)

(assert (=> b!2231900 (= e!1426358 (and tp!699801 (inv!35615 (_2!15218 (_1!15219 (h!31626 mapValue!14416)))) e!1426356 tp_is_empty!10071 setRes!20135 tp!699804))))

(declare-fun condSetEmpty!20135 () Bool)

(assert (=> b!2231900 (= condSetEmpty!20135 (= (_2!15219 (h!31626 mapValue!14416)) ((as const (Array Context!3942 Bool)) false)))))

(declare-fun b!2231902 () Bool)

(declare-fun tp!699799 () Bool)

(assert (=> b!2231902 (= e!1426355 tp!699799)))

(declare-fun tp!699800 () Bool)

(declare-fun tp!699796 () Bool)

(declare-fun e!1426359 () Bool)

(declare-fun b!2231903 () Bool)

(assert (=> b!2231903 (= e!1426359 (and tp!699800 (inv!35615 (_2!15218 (_1!15219 (h!31626 mapDefault!14416)))) e!1426354 tp_is_empty!10071 setRes!20136 tp!699796))))

(declare-fun condSetEmpty!20136 () Bool)

(assert (=> b!2231903 (= condSetEmpty!20136 (= (_2!15219 (h!31626 mapDefault!14416)) ((as const (Array Context!3942 Bool)) false)))))

(declare-fun b!2231904 () Bool)

(declare-fun tp!699806 () Bool)

(assert (=> b!2231904 (= e!1426357 tp!699806)))

(declare-fun condMapEmpty!14416 () Bool)

(assert (=> mapNonEmpty!14413 (= condMapEmpty!14416 (= mapRest!14413 ((as const (Array (_ BitVec 32) List!26319)) mapDefault!14416)))))

(assert (=> mapNonEmpty!14413 (= tp!699729 (and e!1426359 mapRes!14416))))

(declare-fun b!2231901 () Bool)

(declare-fun tp!699802 () Bool)

(assert (=> b!2231901 (= e!1426356 tp!699802)))

(assert (= (and mapNonEmpty!14413 condMapEmpty!14416) mapIsEmpty!14416))

(assert (= (and mapNonEmpty!14413 (not condMapEmpty!14416)) mapNonEmpty!14416))

(assert (= b!2231900 b!2231901))

(assert (= (and b!2231900 condSetEmpty!20135) setIsEmpty!20135))

(assert (= (and b!2231900 (not condSetEmpty!20135)) setNonEmpty!20136))

(assert (= setNonEmpty!20136 b!2231902))

(assert (= (and mapNonEmpty!14416 ((_ is Cons!26225) mapValue!14416)) b!2231900))

(assert (= b!2231903 b!2231899))

(assert (= (and b!2231903 condSetEmpty!20136) setIsEmpty!20136))

(assert (= (and b!2231903 (not condSetEmpty!20136)) setNonEmpty!20135))

(assert (= setNonEmpty!20135 b!2231904))

(assert (= (and mapNonEmpty!14413 ((_ is Cons!26225) mapDefault!14416)) b!2231903))

(declare-fun m!2668019 () Bool)

(assert (=> mapNonEmpty!14416 m!2668019))

(declare-fun m!2668021 () Bool)

(assert (=> setNonEmpty!20136 m!2668021))

(declare-fun m!2668023 () Bool)

(assert (=> setNonEmpty!20135 m!2668023))

(declare-fun m!2668025 () Bool)

(assert (=> b!2231900 m!2668025))

(declare-fun m!2668027 () Bool)

(assert (=> b!2231903 m!2668027))

(declare-fun setRes!20137 () Bool)

(declare-fun tp!699810 () Bool)

(declare-fun setElem!20137 () Context!3942)

(declare-fun setNonEmpty!20137 () Bool)

(declare-fun e!1426360 () Bool)

(assert (=> setNonEmpty!20137 (= setRes!20137 (and tp!699810 (inv!35615 setElem!20137) e!1426360))))

(declare-fun setRest!20137 () (InoxSet Context!3942))

(assert (=> setNonEmpty!20137 (= (_2!15219 (h!31626 mapValue!14413)) ((_ map or) (store ((as const (Array Context!3942 Bool)) false) setElem!20137 true) setRest!20137))))

(declare-fun b!2231905 () Bool)

(declare-fun tp!699811 () Bool)

(assert (=> b!2231905 (= e!1426360 tp!699811)))

(declare-fun setIsEmpty!20137 () Bool)

(assert (=> setIsEmpty!20137 setRes!20137))

(declare-fun e!1426362 () Bool)

(assert (=> mapNonEmpty!14413 (= tp!699721 e!1426362)))

(declare-fun b!2231906 () Bool)

(declare-fun e!1426361 () Bool)

(declare-fun tp!699807 () Bool)

(declare-fun tp!699809 () Bool)

(assert (=> b!2231906 (= e!1426362 (and tp!699807 (inv!35615 (_2!15218 (_1!15219 (h!31626 mapValue!14413)))) e!1426361 tp_is_empty!10071 setRes!20137 tp!699809))))

(declare-fun condSetEmpty!20137 () Bool)

(assert (=> b!2231906 (= condSetEmpty!20137 (= (_2!15219 (h!31626 mapValue!14413)) ((as const (Array Context!3942 Bool)) false)))))

(declare-fun b!2231907 () Bool)

(declare-fun tp!699808 () Bool)

(assert (=> b!2231907 (= e!1426361 tp!699808)))

(assert (= b!2231906 b!2231907))

(assert (= (and b!2231906 condSetEmpty!20137) setIsEmpty!20137))

(assert (= (and b!2231906 (not condSetEmpty!20137)) setNonEmpty!20137))

(assert (= setNonEmpty!20137 b!2231905))

(assert (= (and mapNonEmpty!14413 ((_ is Cons!26225) mapValue!14413)) b!2231906))

(declare-fun m!2668029 () Bool)

(assert (=> setNonEmpty!20137 m!2668029))

(declare-fun m!2668031 () Bool)

(assert (=> b!2231906 m!2668031))

(declare-fun b!2231908 () Bool)

(declare-fun e!1426363 () Bool)

(assert (=> b!2231908 (= e!1426363 tp_is_empty!10071)))

(declare-fun b!2231909 () Bool)

(declare-fun tp!699813 () Bool)

(declare-fun tp!699816 () Bool)

(assert (=> b!2231909 (= e!1426363 (and tp!699813 tp!699816))))

(assert (=> b!2231728 (= tp!699724 e!1426363)))

(declare-fun b!2231910 () Bool)

(declare-fun tp!699815 () Bool)

(assert (=> b!2231910 (= e!1426363 tp!699815)))

(declare-fun b!2231911 () Bool)

(declare-fun tp!699812 () Bool)

(declare-fun tp!699814 () Bool)

(assert (=> b!2231911 (= e!1426363 (and tp!699812 tp!699814))))

(assert (= (and b!2231728 ((_ is ElementMatch!6423) (regOne!13359 expr!64))) b!2231908))

(assert (= (and b!2231728 ((_ is Concat!10761) (regOne!13359 expr!64))) b!2231909))

(assert (= (and b!2231728 ((_ is Star!6423) (regOne!13359 expr!64))) b!2231910))

(assert (= (and b!2231728 ((_ is Union!6423) (regOne!13359 expr!64))) b!2231911))

(declare-fun b!2231912 () Bool)

(declare-fun e!1426364 () Bool)

(assert (=> b!2231912 (= e!1426364 tp_is_empty!10071)))

(declare-fun b!2231913 () Bool)

(declare-fun tp!699818 () Bool)

(declare-fun tp!699821 () Bool)

(assert (=> b!2231913 (= e!1426364 (and tp!699818 tp!699821))))

(assert (=> b!2231728 (= tp!699727 e!1426364)))

(declare-fun b!2231914 () Bool)

(declare-fun tp!699820 () Bool)

(assert (=> b!2231914 (= e!1426364 tp!699820)))

(declare-fun b!2231915 () Bool)

(declare-fun tp!699817 () Bool)

(declare-fun tp!699819 () Bool)

(assert (=> b!2231915 (= e!1426364 (and tp!699817 tp!699819))))

(assert (= (and b!2231728 ((_ is ElementMatch!6423) (regTwo!13359 expr!64))) b!2231912))

(assert (= (and b!2231728 ((_ is Concat!10761) (regTwo!13359 expr!64))) b!2231913))

(assert (= (and b!2231728 ((_ is Star!6423) (regTwo!13359 expr!64))) b!2231914))

(assert (= (and b!2231728 ((_ is Union!6423) (regTwo!13359 expr!64))) b!2231915))

(declare-fun b!2231920 () Bool)

(declare-fun e!1426367 () Bool)

(declare-fun tp!699826 () Bool)

(declare-fun tp!699827 () Bool)

(assert (=> b!2231920 (= e!1426367 (and tp!699826 tp!699827))))

(assert (=> b!2231731 (= tp!699731 e!1426367)))

(assert (= (and b!2231731 ((_ is Cons!26224) (exprs!2471 context!86))) b!2231920))

(declare-fun e!1426368 () Bool)

(declare-fun setElem!20138 () Context!3942)

(declare-fun tp!699831 () Bool)

(declare-fun setRes!20138 () Bool)

(declare-fun setNonEmpty!20138 () Bool)

(assert (=> setNonEmpty!20138 (= setRes!20138 (and tp!699831 (inv!35615 setElem!20138) e!1426368))))

(declare-fun setRest!20138 () (InoxSet Context!3942))

(assert (=> setNonEmpty!20138 (= (_2!15219 (h!31626 (zeroValue!3319 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3942 Bool)) false) setElem!20138 true) setRest!20138))))

(declare-fun b!2231921 () Bool)

(declare-fun tp!699832 () Bool)

(assert (=> b!2231921 (= e!1426368 tp!699832)))

(declare-fun setIsEmpty!20138 () Bool)

(assert (=> setIsEmpty!20138 setRes!20138))

(declare-fun e!1426370 () Bool)

(assert (=> b!2231726 (= tp!699723 e!1426370)))

(declare-fun tp!699828 () Bool)

(declare-fun e!1426369 () Bool)

(declare-fun tp!699830 () Bool)

(declare-fun b!2231922 () Bool)

(assert (=> b!2231922 (= e!1426370 (and tp!699828 (inv!35615 (_2!15218 (_1!15219 (h!31626 (zeroValue!3319 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839)))))))))) e!1426369 tp_is_empty!10071 setRes!20138 tp!699830))))

(declare-fun condSetEmpty!20138 () Bool)

(assert (=> b!2231922 (= condSetEmpty!20138 (= (_2!15219 (h!31626 (zeroValue!3319 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839)))))))) ((as const (Array Context!3942 Bool)) false)))))

(declare-fun b!2231923 () Bool)

(declare-fun tp!699829 () Bool)

(assert (=> b!2231923 (= e!1426369 tp!699829)))

(assert (= b!2231922 b!2231923))

(assert (= (and b!2231922 condSetEmpty!20138) setIsEmpty!20138))

(assert (= (and b!2231922 (not condSetEmpty!20138)) setNonEmpty!20138))

(assert (= setNonEmpty!20138 b!2231921))

(assert (= (and b!2231726 ((_ is Cons!26225) (zeroValue!3319 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839)))))))) b!2231922))

(declare-fun m!2668033 () Bool)

(assert (=> setNonEmpty!20138 m!2668033))

(declare-fun m!2668035 () Bool)

(assert (=> b!2231922 m!2668035))

(declare-fun tp!699836 () Bool)

(declare-fun setRes!20139 () Bool)

(declare-fun setNonEmpty!20139 () Bool)

(declare-fun setElem!20139 () Context!3942)

(declare-fun e!1426371 () Bool)

(assert (=> setNonEmpty!20139 (= setRes!20139 (and tp!699836 (inv!35615 setElem!20139) e!1426371))))

(declare-fun setRest!20139 () (InoxSet Context!3942))

(assert (=> setNonEmpty!20139 (= (_2!15219 (h!31626 (minValue!3319 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3942 Bool)) false) setElem!20139 true) setRest!20139))))

(declare-fun b!2231924 () Bool)

(declare-fun tp!699837 () Bool)

(assert (=> b!2231924 (= e!1426371 tp!699837)))

(declare-fun setIsEmpty!20139 () Bool)

(assert (=> setIsEmpty!20139 setRes!20139))

(declare-fun e!1426373 () Bool)

(assert (=> b!2231726 (= tp!699725 e!1426373)))

(declare-fun tp!699833 () Bool)

(declare-fun e!1426372 () Bool)

(declare-fun tp!699835 () Bool)

(declare-fun b!2231925 () Bool)

(assert (=> b!2231925 (= e!1426373 (and tp!699833 (inv!35615 (_2!15218 (_1!15219 (h!31626 (minValue!3319 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839)))))))))) e!1426372 tp_is_empty!10071 setRes!20139 tp!699835))))

(declare-fun condSetEmpty!20139 () Bool)

(assert (=> b!2231925 (= condSetEmpty!20139 (= (_2!15219 (h!31626 (minValue!3319 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839)))))))) ((as const (Array Context!3942 Bool)) false)))))

(declare-fun b!2231926 () Bool)

(declare-fun tp!699834 () Bool)

(assert (=> b!2231926 (= e!1426372 tp!699834)))

(assert (= b!2231925 b!2231926))

(assert (= (and b!2231925 condSetEmpty!20139) setIsEmpty!20139))

(assert (= (and b!2231925 (not condSetEmpty!20139)) setNonEmpty!20139))

(assert (= setNonEmpty!20139 b!2231924))

(assert (= (and b!2231726 ((_ is Cons!26225) (minValue!3319 (v!29817 (underlying!6323 (v!29818 (underlying!6324 (cache!3352 cacheDown!839)))))))) b!2231925))

(declare-fun m!2668037 () Bool)

(assert (=> setNonEmpty!20139 m!2668037))

(declare-fun m!2668039 () Bool)

(assert (=> b!2231925 m!2668039))

(check-sat (not bm!134046) (not setNonEmpty!20139) (not b!2231864) (not b!2231902) (not b!2231903) (not bm!134031) (not b!2231900) (not bm!134035) (not bm!134042) (not mapNonEmpty!14416) (not b!2231901) (not b!2231923) (not d!665129) tp_is_empty!10071 (not b!2231869) (not b!2231925) (not b!2231863) (not b!2231884) (not b!2231763) (not bm!134034) (not b!2231871) b_and!174693 (not b_next!65409) (not b!2231906) (not setNonEmpty!20130) (not b_next!65411) (not setNonEmpty!20138) (not b!2231914) (not b!2231868) (not b!2231883) (not bm!134040) (not b!2231915) (not b!2231867) (not b!2231911) (not b!2231910) (not bm!134038) (not b!2231872) (not bm!134015) (not d!665127) (not b!2231882) (not bm!134013) (not b!2231873) (not b!2231907) (not setNonEmpty!20136) (not b!2231922) (not b!2231926) (not bm!134032) (not b!2231904) (not b!2231899) (not b!2231924) (not setNonEmpty!20135) (not bm!134044) (not b!2231909) (not b!2231865) (not b!2231771) (not bm!134033) (not b!2231920) (not b!2231913) (not setNonEmpty!20137) (not d!665121) (not b!2231842) (not bm!134039) (not b!2231905) (not bm!134041) (not b!2231846) b_and!174695 (not b!2231921))
(check-sat b_and!174695 b_and!174693 (not b_next!65409) (not b_next!65411))
