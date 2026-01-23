; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217426 () Bool)

(assert start!217426)

(declare-fun b!2229051 () Bool)

(declare-fun b_free!64641 () Bool)

(declare-fun b_next!65345 () Bool)

(assert (=> b!2229051 (= b_free!64641 (not b_next!65345))))

(declare-fun tp!697769 () Bool)

(declare-fun b_and!174629 () Bool)

(assert (=> b!2229051 (= tp!697769 b_and!174629)))

(declare-fun b!2229058 () Bool)

(declare-fun b_free!64643 () Bool)

(declare-fun b_next!65347 () Bool)

(assert (=> b!2229058 (= b_free!64643 (not b_next!65347))))

(declare-fun tp!697771 () Bool)

(declare-fun b_and!174631 () Bool)

(assert (=> b!2229058 (= tp!697771 b_and!174631)))

(declare-datatypes ((C!12960 0))(
  ( (C!12961 (val!7528 Int)) )
))
(declare-datatypes ((Regex!6407 0))(
  ( (ElementMatch!6407 (c!355639 C!12960)) (Concat!10745 (regOne!13326 Regex!6407) (regTwo!13326 Regex!6407)) (EmptyExpr!6407) (Star!6407 (reg!6736 Regex!6407)) (EmptyLang!6407) (Union!6407 (regOne!13327 Regex!6407) (regTwo!13327 Regex!6407)) )
))
(declare-datatypes ((List!26286 0))(
  ( (Nil!26192) (Cons!26192 (h!31593 Regex!6407) (t!199701 List!26286)) )
))
(declare-datatypes ((Context!3910 0))(
  ( (Context!3911 (exprs!2455 List!26286)) )
))
(declare-datatypes ((array!10518 0))(
  ( (array!10519 (arr!4677 (Array (_ BitVec 32) (_ BitVec 64))) (size!20458 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3886 0))(
  ( (tuple3!3887 (_1!15180 Regex!6407) (_2!15180 Context!3910) (_3!2413 C!12960)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25534 0))(
  ( (tuple2!25535 (_1!15181 tuple3!3886) (_2!15181 (InoxSet Context!3910))) )
))
(declare-datatypes ((List!26287 0))(
  ( (Nil!26193) (Cons!26193 (h!31594 tuple2!25534) (t!199702 List!26287)) )
))
(declare-datatypes ((array!10520 0))(
  ( (array!10521 (arr!4678 (Array (_ BitVec 32) List!26287)) (size!20459 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6090 0))(
  ( (LongMapFixedSize!6091 (defaultEntry!3410 Int) (mask!7602 (_ BitVec 32)) (extraKeys!3293 (_ BitVec 32)) (zeroValue!3303 List!26287) (minValue!3303 List!26287) (_size!6137 (_ BitVec 32)) (_keys!3342 array!10518) (_values!3325 array!10520) (_vacant!3106 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11997 0))(
  ( (Cell!11998 (v!29773 LongMapFixedSize!6090)) )
))
(declare-datatypes ((MutLongMap!3045 0))(
  ( (LongMap!3045 (underlying!6291 Cell!11997)) (MutLongMapExt!3044 (__x!17361 Int)) )
))
(declare-datatypes ((Cell!11999 0))(
  ( (Cell!12000 (v!29774 MutLongMap!3045)) )
))
(declare-datatypes ((Hashable!2955 0))(
  ( (HashableExt!2954 (__x!17362 Int)) )
))
(declare-datatypes ((MutableMap!2955 0))(
  ( (MutableMapExt!2954 (__x!17363 Int)) (HashMap!2955 (underlying!6292 Cell!11999) (hashF!4878 Hashable!2955) (_size!6138 (_ BitVec 32)) (defaultValue!3117 Int)) )
))
(declare-datatypes ((CacheDown!1956 0))(
  ( (CacheDown!1957 (cache!3336 MutableMap!2955)) )
))
(declare-fun cacheDown!839 () CacheDown!1956)

(declare-fun tp!697770 () Bool)

(declare-fun tp!697768 () Bool)

(declare-fun e!1424553 () Bool)

(declare-fun e!1424543 () Bool)

(declare-fun array_inv!3355 (array!10518) Bool)

(declare-fun array_inv!3356 (array!10520) Bool)

(assert (=> b!2229051 (= e!1424543 (and tp!697769 tp!697768 tp!697770 (array_inv!3355 (_keys!3342 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839))))))) (array_inv!3356 (_values!3325 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839))))))) e!1424553))))

(declare-fun b!2229052 () Bool)

(declare-fun e!1424550 () Bool)

(declare-fun tp!697775 () Bool)

(declare-fun tp!697778 () Bool)

(assert (=> b!2229052 (= e!1424550 (and tp!697775 tp!697778))))

(declare-fun b!2229053 () Bool)

(declare-fun e!1424548 () Bool)

(declare-fun e!1424549 () Bool)

(assert (=> b!2229053 (= e!1424548 e!1424549)))

(declare-fun b!2229054 () Bool)

(declare-fun tp!697774 () Bool)

(assert (=> b!2229054 (= e!1424550 tp!697774)))

(declare-fun b!2229056 () Bool)

(declare-fun tp!697767 () Bool)

(declare-fun mapRes!14339 () Bool)

(assert (=> b!2229056 (= e!1424553 (and tp!697767 mapRes!14339))))

(declare-fun condMapEmpty!14339 () Bool)

(declare-fun mapDefault!14339 () List!26287)

(assert (=> b!2229056 (= condMapEmpty!14339 (= (arr!4678 (_values!3325 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26287)) mapDefault!14339)))))

(declare-fun b!2229057 () Bool)

(declare-fun e!1424544 () Bool)

(declare-fun e!1424545 () Bool)

(declare-fun lt!830442 () MutLongMap!3045)

(get-info :version)

(assert (=> b!2229057 (= e!1424544 (and e!1424545 ((_ is LongMap!3045) lt!830442)))))

(assert (=> b!2229057 (= lt!830442 (v!29774 (underlying!6292 (cache!3336 cacheDown!839))))))

(assert (=> b!2229058 (= e!1424549 (and e!1424544 tp!697771))))

(declare-fun b!2229059 () Bool)

(declare-fun tp_is_empty!10039 () Bool)

(assert (=> b!2229059 (= e!1424550 tp_is_empty!10039)))

(declare-fun mapNonEmpty!14339 () Bool)

(declare-fun tp!697779 () Bool)

(declare-fun tp!697776 () Bool)

(assert (=> mapNonEmpty!14339 (= mapRes!14339 (and tp!697779 tp!697776))))

(declare-fun mapValue!14339 () List!26287)

(declare-fun mapKey!14339 () (_ BitVec 32))

(declare-fun mapRest!14339 () (Array (_ BitVec 32) List!26287))

(assert (=> mapNonEmpty!14339 (= (arr!4678 (_values!3325 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839))))))) (store mapRest!14339 mapKey!14339 mapValue!14339))))

(declare-fun mapIsEmpty!14339 () Bool)

(assert (=> mapIsEmpty!14339 mapRes!14339))

(declare-fun b!2229060 () Bool)

(declare-fun e!1424547 () Bool)

(assert (=> b!2229060 (= e!1424545 e!1424547)))

(declare-fun b!2229061 () Bool)

(assert (=> b!2229061 (= e!1424547 e!1424543)))

(declare-fun b!2229062 () Bool)

(declare-fun e!1424546 () Bool)

(declare-fun expr!64 () Regex!6407)

(declare-fun regexDepth!63 (Regex!6407) Int)

(assert (=> b!2229062 (= e!1424546 (>= (regexDepth!63 (regOne!13327 expr!64)) (regexDepth!63 expr!64)))))

(declare-fun b!2229063 () Bool)

(declare-fun e!1424552 () Bool)

(declare-fun tp!697773 () Bool)

(assert (=> b!2229063 (= e!1424552 tp!697773)))

(declare-fun res!955108 () Bool)

(assert (=> start!217426 (=> (not res!955108) (not e!1424546))))

(declare-fun validRegex!2382 (Regex!6407) Bool)

(assert (=> start!217426 (= res!955108 (validRegex!2382 expr!64))))

(assert (=> start!217426 e!1424546))

(assert (=> start!217426 e!1424550))

(declare-fun inv!35564 (CacheDown!1956) Bool)

(assert (=> start!217426 (and (inv!35564 cacheDown!839) e!1424548)))

(declare-fun context!86 () Context!3910)

(declare-fun inv!35565 (Context!3910) Bool)

(assert (=> start!217426 (and (inv!35565 context!86) e!1424552)))

(assert (=> start!217426 tp_is_empty!10039))

(declare-fun b!2229055 () Bool)

(declare-fun res!955110 () Bool)

(assert (=> b!2229055 (=> (not res!955110) (not e!1424546))))

(declare-fun a!1167 () C!12960)

(assert (=> b!2229055 (= res!955110 (and (or (not ((_ is ElementMatch!6407) expr!64)) (not (= (c!355639 expr!64) a!1167))) ((_ is Union!6407) expr!64)))))

(declare-fun b!2229064 () Bool)

(declare-fun tp!697777 () Bool)

(declare-fun tp!697772 () Bool)

(assert (=> b!2229064 (= e!1424550 (and tp!697777 tp!697772))))

(declare-fun b!2229065 () Bool)

(declare-fun res!955109 () Bool)

(assert (=> b!2229065 (=> (not res!955109) (not e!1424546))))

(declare-datatypes ((Option!5094 0))(
  ( (None!5093) (Some!5093 (v!29775 (InoxSet Context!3910))) )
))
(declare-fun get!7893 (CacheDown!1956 Regex!6407 Context!3910 C!12960) Option!5094)

(assert (=> b!2229065 (= res!955109 (not ((_ is Some!5093) (get!7893 cacheDown!839 expr!64 context!86 a!1167))))))

(assert (= (and start!217426 res!955108) b!2229065))

(assert (= (and b!2229065 res!955109) b!2229055))

(assert (= (and b!2229055 res!955110) b!2229062))

(assert (= (and start!217426 ((_ is ElementMatch!6407) expr!64)) b!2229059))

(assert (= (and start!217426 ((_ is Concat!10745) expr!64)) b!2229052))

(assert (= (and start!217426 ((_ is Star!6407) expr!64)) b!2229054))

(assert (= (and start!217426 ((_ is Union!6407) expr!64)) b!2229064))

(assert (= (and b!2229056 condMapEmpty!14339) mapIsEmpty!14339))

(assert (= (and b!2229056 (not condMapEmpty!14339)) mapNonEmpty!14339))

(assert (= b!2229051 b!2229056))

(assert (= b!2229061 b!2229051))

(assert (= b!2229060 b!2229061))

(assert (= (and b!2229057 ((_ is LongMap!3045) (v!29774 (underlying!6292 (cache!3336 cacheDown!839))))) b!2229060))

(assert (= b!2229058 b!2229057))

(assert (= (and b!2229053 ((_ is HashMap!2955) (cache!3336 cacheDown!839))) b!2229058))

(assert (= start!217426 b!2229053))

(assert (= start!217426 b!2229063))

(declare-fun m!2666817 () Bool)

(assert (=> mapNonEmpty!14339 m!2666817))

(declare-fun m!2666819 () Bool)

(assert (=> b!2229065 m!2666819))

(declare-fun m!2666821 () Bool)

(assert (=> start!217426 m!2666821))

(declare-fun m!2666823 () Bool)

(assert (=> start!217426 m!2666823))

(declare-fun m!2666825 () Bool)

(assert (=> start!217426 m!2666825))

(declare-fun m!2666827 () Bool)

(assert (=> b!2229051 m!2666827))

(declare-fun m!2666829 () Bool)

(assert (=> b!2229051 m!2666829))

(declare-fun m!2666831 () Bool)

(assert (=> b!2229062 m!2666831))

(declare-fun m!2666833 () Bool)

(assert (=> b!2229062 m!2666833))

(check-sat (not b!2229051) b_and!174631 (not b!2229056) (not b!2229062) b_and!174629 (not b!2229054) tp_is_empty!10039 (not mapNonEmpty!14339) (not b!2229052) (not b_next!65347) (not b!2229063) (not b!2229065) (not b!2229064) (not b_next!65345) (not start!217426))
(check-sat b_and!174631 b_and!174629 (not b_next!65345) (not b_next!65347))
(get-model)

(declare-fun b!2229084 () Bool)

(declare-fun e!1424569 () Bool)

(declare-fun e!1424574 () Bool)

(assert (=> b!2229084 (= e!1424569 e!1424574)))

(declare-fun res!955123 () Bool)

(declare-fun nullable!1757 (Regex!6407) Bool)

(assert (=> b!2229084 (= res!955123 (not (nullable!1757 (reg!6736 expr!64))))))

(assert (=> b!2229084 (=> (not res!955123) (not e!1424574))))

(declare-fun b!2229085 () Bool)

(declare-fun e!1424571 () Bool)

(declare-fun call!133710 () Bool)

(assert (=> b!2229085 (= e!1424571 call!133710)))

(declare-fun bm!133703 () Bool)

(declare-fun c!355645 () Bool)

(assert (=> bm!133703 (= call!133710 (validRegex!2382 (ite c!355645 (regTwo!13327 expr!64) (regTwo!13326 expr!64))))))

(declare-fun b!2229086 () Bool)

(declare-fun e!1424570 () Bool)

(assert (=> b!2229086 (= e!1424570 e!1424569)))

(declare-fun c!355644 () Bool)

(assert (=> b!2229086 (= c!355644 ((_ is Star!6407) expr!64))))

(declare-fun b!2229087 () Bool)

(declare-fun call!133708 () Bool)

(assert (=> b!2229087 (= e!1424574 call!133708)))

(declare-fun b!2229088 () Bool)

(declare-fun res!955121 () Bool)

(declare-fun e!1424572 () Bool)

(assert (=> b!2229088 (=> res!955121 e!1424572)))

(assert (=> b!2229088 (= res!955121 (not ((_ is Concat!10745) expr!64)))))

(declare-fun e!1424573 () Bool)

(assert (=> b!2229088 (= e!1424573 e!1424572)))

(declare-fun bm!133704 () Bool)

(assert (=> bm!133704 (= call!133708 (validRegex!2382 (ite c!355644 (reg!6736 expr!64) (ite c!355645 (regOne!13327 expr!64) (regOne!13326 expr!64)))))))

(declare-fun d!664847 () Bool)

(declare-fun res!955124 () Bool)

(assert (=> d!664847 (=> res!955124 e!1424570)))

(assert (=> d!664847 (= res!955124 ((_ is ElementMatch!6407) expr!64))))

(assert (=> d!664847 (= (validRegex!2382 expr!64) e!1424570)))

(declare-fun b!2229089 () Bool)

(declare-fun e!1424568 () Bool)

(assert (=> b!2229089 (= e!1424568 call!133710)))

(declare-fun b!2229090 () Bool)

(declare-fun res!955122 () Bool)

(assert (=> b!2229090 (=> (not res!955122) (not e!1424568))))

(declare-fun call!133709 () Bool)

(assert (=> b!2229090 (= res!955122 call!133709)))

(assert (=> b!2229090 (= e!1424573 e!1424568)))

(declare-fun b!2229091 () Bool)

(assert (=> b!2229091 (= e!1424572 e!1424571)))

(declare-fun res!955125 () Bool)

(assert (=> b!2229091 (=> (not res!955125) (not e!1424571))))

(assert (=> b!2229091 (= res!955125 call!133709)))

(declare-fun b!2229092 () Bool)

(assert (=> b!2229092 (= e!1424569 e!1424573)))

(assert (=> b!2229092 (= c!355645 ((_ is Union!6407) expr!64))))

(declare-fun bm!133705 () Bool)

(assert (=> bm!133705 (= call!133709 call!133708)))

(assert (= (and d!664847 (not res!955124)) b!2229086))

(assert (= (and b!2229086 c!355644) b!2229084))

(assert (= (and b!2229086 (not c!355644)) b!2229092))

(assert (= (and b!2229084 res!955123) b!2229087))

(assert (= (and b!2229092 c!355645) b!2229090))

(assert (= (and b!2229092 (not c!355645)) b!2229088))

(assert (= (and b!2229090 res!955122) b!2229089))

(assert (= (and b!2229088 (not res!955121)) b!2229091))

(assert (= (and b!2229091 res!955125) b!2229085))

(assert (= (or b!2229089 b!2229085) bm!133703))

(assert (= (or b!2229090 b!2229091) bm!133705))

(assert (= (or b!2229087 bm!133705) bm!133704))

(declare-fun m!2666835 () Bool)

(assert (=> b!2229084 m!2666835))

(declare-fun m!2666837 () Bool)

(assert (=> bm!133703 m!2666837))

(declare-fun m!2666839 () Bool)

(assert (=> bm!133704 m!2666839))

(assert (=> start!217426 d!664847))

(declare-fun d!664849 () Bool)

(declare-fun res!955128 () Bool)

(declare-fun e!1424577 () Bool)

(assert (=> d!664849 (=> (not res!955128) (not e!1424577))))

(assert (=> d!664849 (= res!955128 ((_ is HashMap!2955) (cache!3336 cacheDown!839)))))

(assert (=> d!664849 (= (inv!35564 cacheDown!839) e!1424577)))

(declare-fun b!2229095 () Bool)

(declare-fun validCacheMapDown!277 (MutableMap!2955) Bool)

(assert (=> b!2229095 (= e!1424577 (validCacheMapDown!277 (cache!3336 cacheDown!839)))))

(assert (= (and d!664849 res!955128) b!2229095))

(declare-fun m!2666841 () Bool)

(assert (=> b!2229095 m!2666841))

(assert (=> start!217426 d!664849))

(declare-fun d!664851 () Bool)

(declare-fun lambda!84257 () Int)

(declare-fun forall!5356 (List!26286 Int) Bool)

(assert (=> d!664851 (= (inv!35565 context!86) (forall!5356 (exprs!2455 context!86) lambda!84257))))

(declare-fun bs!453762 () Bool)

(assert (= bs!453762 d!664851))

(declare-fun m!2666843 () Bool)

(assert (=> bs!453762 m!2666843))

(assert (=> start!217426 d!664851))

(declare-fun b!2229130 () Bool)

(declare-fun e!1424600 () Bool)

(declare-fun lt!830445 () Int)

(declare-fun call!133728 () Int)

(assert (=> b!2229130 (= e!1424600 (> lt!830445 call!133728))))

(declare-fun b!2229131 () Bool)

(assert (=> b!2229131 (= e!1424600 (= lt!830445 1))))

(declare-fun b!2229132 () Bool)

(declare-fun c!355662 () Bool)

(assert (=> b!2229132 (= c!355662 ((_ is Star!6407) (regOne!13327 expr!64)))))

(declare-fun e!1424605 () Bool)

(assert (=> b!2229132 (= e!1424605 e!1424600)))

(declare-fun bm!133720 () Bool)

(declare-fun call!133727 () Int)

(declare-fun call!133730 () Int)

(assert (=> bm!133720 (= call!133727 call!133730)))

(declare-fun c!355664 () Bool)

(declare-fun bm!133721 () Bool)

(declare-fun c!355660 () Bool)

(assert (=> bm!133721 (= call!133730 (regexDepth!63 (ite c!355660 (reg!6736 (regOne!13327 expr!64)) (ite c!355664 (regOne!13327 (regOne!13327 expr!64)) (regTwo!13326 (regOne!13327 expr!64))))))))

(declare-fun b!2229133 () Bool)

(declare-fun e!1424604 () Bool)

(declare-fun call!133726 () Int)

(assert (=> b!2229133 (= e!1424604 (> lt!830445 call!133726))))

(declare-fun b!2229134 () Bool)

(declare-fun res!955136 () Bool)

(assert (=> b!2229134 (=> (not res!955136) (not e!1424604))))

(assert (=> b!2229134 (= res!955136 (> lt!830445 call!133728))))

(assert (=> b!2229134 (= e!1424605 e!1424604)))

(declare-fun b!2229135 () Bool)

(declare-fun e!1424599 () Bool)

(declare-fun e!1424603 () Bool)

(assert (=> b!2229135 (= e!1424599 e!1424603)))

(declare-fun res!955137 () Bool)

(declare-fun call!133729 () Int)

(assert (=> b!2229135 (= res!955137 (> lt!830445 call!133729))))

(assert (=> b!2229135 (=> (not res!955137) (not e!1424603))))

(declare-fun b!2229136 () Bool)

(declare-fun e!1424606 () Int)

(declare-fun call!133725 () Int)

(assert (=> b!2229136 (= e!1424606 (+ 1 call!133725))))

(declare-fun b!2229137 () Bool)

(declare-fun e!1424598 () Int)

(declare-fun e!1424601 () Int)

(assert (=> b!2229137 (= e!1424598 e!1424601)))

(assert (=> b!2229137 (= c!355660 ((_ is Star!6407) (regOne!13327 expr!64)))))

(declare-fun b!2229139 () Bool)

(assert (=> b!2229139 (= e!1424606 1)))

(declare-fun bm!133722 () Bool)

(declare-fun call!133731 () Int)

(assert (=> bm!133722 (= call!133731 (regexDepth!63 (ite c!355664 (regTwo!13327 (regOne!13327 expr!64)) (regOne!13326 (regOne!13327 expr!64)))))))

(declare-fun bm!133723 () Bool)

(declare-fun c!355661 () Bool)

(declare-fun c!355665 () Bool)

(assert (=> bm!133723 (= call!133729 (regexDepth!63 (ite c!355665 (regOne!13327 (regOne!13327 expr!64)) (ite c!355661 (regOne!13326 (regOne!13327 expr!64)) (reg!6736 (regOne!13327 expr!64))))))))

(declare-fun b!2229140 () Bool)

(assert (=> b!2229140 (= e!1424599 e!1424605)))

(assert (=> b!2229140 (= c!355661 ((_ is Concat!10745) (regOne!13327 expr!64)))))

(declare-fun b!2229141 () Bool)

(declare-fun e!1424602 () Bool)

(assert (=> b!2229141 (= e!1424602 e!1424599)))

(assert (=> b!2229141 (= c!355665 ((_ is Union!6407) (regOne!13327 expr!64)))))

(declare-fun b!2229142 () Bool)

(declare-fun e!1424607 () Int)

(assert (=> b!2229142 (= e!1424607 e!1424606)))

(declare-fun c!355666 () Bool)

(assert (=> b!2229142 (= c!355666 ((_ is Concat!10745) (regOne!13327 expr!64)))))

(declare-fun b!2229143 () Bool)

(assert (=> b!2229143 (= e!1424598 1)))

(declare-fun b!2229144 () Bool)

(assert (=> b!2229144 (= e!1424601 (+ 1 call!133730))))

(declare-fun b!2229145 () Bool)

(assert (=> b!2229145 (= e!1424607 (+ 1 call!133725))))

(declare-fun bm!133724 () Bool)

(assert (=> bm!133724 (= call!133728 call!133729)))

(declare-fun bm!133725 () Bool)

(assert (=> bm!133725 (= call!133726 (regexDepth!63 (ite c!355665 (regTwo!13327 (regOne!13327 expr!64)) (regTwo!13326 (regOne!13327 expr!64)))))))

(declare-fun d!664853 () Bool)

(assert (=> d!664853 e!1424602))

(declare-fun res!955135 () Bool)

(assert (=> d!664853 (=> (not res!955135) (not e!1424602))))

(assert (=> d!664853 (= res!955135 (> lt!830445 0))))

(assert (=> d!664853 (= lt!830445 e!1424598)))

(declare-fun c!355663 () Bool)

(assert (=> d!664853 (= c!355663 ((_ is ElementMatch!6407) (regOne!13327 expr!64)))))

(assert (=> d!664853 (= (regexDepth!63 (regOne!13327 expr!64)) lt!830445)))

(declare-fun b!2229138 () Bool)

(assert (=> b!2229138 (= e!1424603 (> lt!830445 call!133726))))

(declare-fun bm!133726 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!133726 (= call!133725 (maxBigInt!0 (ite c!355664 call!133727 call!133731) (ite c!355664 call!133731 call!133727)))))

(declare-fun b!2229146 () Bool)

(assert (=> b!2229146 (= c!355664 ((_ is Union!6407) (regOne!13327 expr!64)))))

(assert (=> b!2229146 (= e!1424601 e!1424607)))

(assert (= (and d!664853 c!355663) b!2229143))

(assert (= (and d!664853 (not c!355663)) b!2229137))

(assert (= (and b!2229137 c!355660) b!2229144))

(assert (= (and b!2229137 (not c!355660)) b!2229146))

(assert (= (and b!2229146 c!355664) b!2229145))

(assert (= (and b!2229146 (not c!355664)) b!2229142))

(assert (= (and b!2229142 c!355666) b!2229136))

(assert (= (and b!2229142 (not c!355666)) b!2229139))

(assert (= (or b!2229145 b!2229136) bm!133722))

(assert (= (or b!2229145 b!2229136) bm!133720))

(assert (= (or b!2229145 b!2229136) bm!133726))

(assert (= (or b!2229144 bm!133720) bm!133721))

(assert (= (and d!664853 res!955135) b!2229141))

(assert (= (and b!2229141 c!355665) b!2229135))

(assert (= (and b!2229141 (not c!355665)) b!2229140))

(assert (= (and b!2229135 res!955137) b!2229138))

(assert (= (and b!2229140 c!355661) b!2229134))

(assert (= (and b!2229140 (not c!355661)) b!2229132))

(assert (= (and b!2229134 res!955136) b!2229133))

(assert (= (and b!2229132 c!355662) b!2229130))

(assert (= (and b!2229132 (not c!355662)) b!2229131))

(assert (= (or b!2229134 b!2229130) bm!133724))

(assert (= (or b!2229138 b!2229133) bm!133725))

(assert (= (or b!2229135 bm!133724) bm!133723))

(declare-fun m!2666845 () Bool)

(assert (=> bm!133721 m!2666845))

(declare-fun m!2666847 () Bool)

(assert (=> bm!133723 m!2666847))

(declare-fun m!2666849 () Bool)

(assert (=> bm!133725 m!2666849))

(declare-fun m!2666851 () Bool)

(assert (=> bm!133722 m!2666851))

(declare-fun m!2666853 () Bool)

(assert (=> bm!133726 m!2666853))

(assert (=> b!2229062 d!664853))

(declare-fun b!2229147 () Bool)

(declare-fun e!1424610 () Bool)

(declare-fun lt!830446 () Int)

(declare-fun call!133735 () Int)

(assert (=> b!2229147 (= e!1424610 (> lt!830446 call!133735))))

(declare-fun b!2229148 () Bool)

(assert (=> b!2229148 (= e!1424610 (= lt!830446 1))))

(declare-fun b!2229149 () Bool)

(declare-fun c!355669 () Bool)

(assert (=> b!2229149 (= c!355669 ((_ is Star!6407) expr!64))))

(declare-fun e!1424615 () Bool)

(assert (=> b!2229149 (= e!1424615 e!1424610)))

(declare-fun bm!133727 () Bool)

(declare-fun call!133734 () Int)

(declare-fun call!133737 () Int)

(assert (=> bm!133727 (= call!133734 call!133737)))

(declare-fun bm!133728 () Bool)

(declare-fun c!355667 () Bool)

(declare-fun c!355671 () Bool)

(assert (=> bm!133728 (= call!133737 (regexDepth!63 (ite c!355667 (reg!6736 expr!64) (ite c!355671 (regOne!13327 expr!64) (regTwo!13326 expr!64)))))))

(declare-fun b!2229150 () Bool)

(declare-fun e!1424614 () Bool)

(declare-fun call!133733 () Int)

(assert (=> b!2229150 (= e!1424614 (> lt!830446 call!133733))))

(declare-fun b!2229151 () Bool)

(declare-fun res!955139 () Bool)

(assert (=> b!2229151 (=> (not res!955139) (not e!1424614))))

(assert (=> b!2229151 (= res!955139 (> lt!830446 call!133735))))

(assert (=> b!2229151 (= e!1424615 e!1424614)))

(declare-fun b!2229152 () Bool)

(declare-fun e!1424609 () Bool)

(declare-fun e!1424613 () Bool)

(assert (=> b!2229152 (= e!1424609 e!1424613)))

(declare-fun res!955140 () Bool)

(declare-fun call!133736 () Int)

(assert (=> b!2229152 (= res!955140 (> lt!830446 call!133736))))

(assert (=> b!2229152 (=> (not res!955140) (not e!1424613))))

(declare-fun b!2229153 () Bool)

(declare-fun e!1424616 () Int)

(declare-fun call!133732 () Int)

(assert (=> b!2229153 (= e!1424616 (+ 1 call!133732))))

(declare-fun b!2229154 () Bool)

(declare-fun e!1424608 () Int)

(declare-fun e!1424611 () Int)

(assert (=> b!2229154 (= e!1424608 e!1424611)))

(assert (=> b!2229154 (= c!355667 ((_ is Star!6407) expr!64))))

(declare-fun b!2229156 () Bool)

(assert (=> b!2229156 (= e!1424616 1)))

(declare-fun bm!133729 () Bool)

(declare-fun call!133738 () Int)

(assert (=> bm!133729 (= call!133738 (regexDepth!63 (ite c!355671 (regTwo!13327 expr!64) (regOne!13326 expr!64))))))

(declare-fun c!355672 () Bool)

(declare-fun c!355668 () Bool)

(declare-fun bm!133730 () Bool)

(assert (=> bm!133730 (= call!133736 (regexDepth!63 (ite c!355672 (regOne!13327 expr!64) (ite c!355668 (regOne!13326 expr!64) (reg!6736 expr!64)))))))

(declare-fun b!2229157 () Bool)

(assert (=> b!2229157 (= e!1424609 e!1424615)))

(assert (=> b!2229157 (= c!355668 ((_ is Concat!10745) expr!64))))

(declare-fun b!2229158 () Bool)

(declare-fun e!1424612 () Bool)

(assert (=> b!2229158 (= e!1424612 e!1424609)))

(assert (=> b!2229158 (= c!355672 ((_ is Union!6407) expr!64))))

(declare-fun b!2229159 () Bool)

(declare-fun e!1424617 () Int)

(assert (=> b!2229159 (= e!1424617 e!1424616)))

(declare-fun c!355673 () Bool)

(assert (=> b!2229159 (= c!355673 ((_ is Concat!10745) expr!64))))

(declare-fun b!2229160 () Bool)

(assert (=> b!2229160 (= e!1424608 1)))

(declare-fun b!2229161 () Bool)

(assert (=> b!2229161 (= e!1424611 (+ 1 call!133737))))

(declare-fun b!2229162 () Bool)

(assert (=> b!2229162 (= e!1424617 (+ 1 call!133732))))

(declare-fun bm!133731 () Bool)

(assert (=> bm!133731 (= call!133735 call!133736)))

(declare-fun bm!133732 () Bool)

(assert (=> bm!133732 (= call!133733 (regexDepth!63 (ite c!355672 (regTwo!13327 expr!64) (regTwo!13326 expr!64))))))

(declare-fun d!664855 () Bool)

(assert (=> d!664855 e!1424612))

(declare-fun res!955138 () Bool)

(assert (=> d!664855 (=> (not res!955138) (not e!1424612))))

(assert (=> d!664855 (= res!955138 (> lt!830446 0))))

(assert (=> d!664855 (= lt!830446 e!1424608)))

(declare-fun c!355670 () Bool)

(assert (=> d!664855 (= c!355670 ((_ is ElementMatch!6407) expr!64))))

(assert (=> d!664855 (= (regexDepth!63 expr!64) lt!830446)))

(declare-fun b!2229155 () Bool)

(assert (=> b!2229155 (= e!1424613 (> lt!830446 call!133733))))

(declare-fun bm!133733 () Bool)

(assert (=> bm!133733 (= call!133732 (maxBigInt!0 (ite c!355671 call!133734 call!133738) (ite c!355671 call!133738 call!133734)))))

(declare-fun b!2229163 () Bool)

(assert (=> b!2229163 (= c!355671 ((_ is Union!6407) expr!64))))

(assert (=> b!2229163 (= e!1424611 e!1424617)))

(assert (= (and d!664855 c!355670) b!2229160))

(assert (= (and d!664855 (not c!355670)) b!2229154))

(assert (= (and b!2229154 c!355667) b!2229161))

(assert (= (and b!2229154 (not c!355667)) b!2229163))

(assert (= (and b!2229163 c!355671) b!2229162))

(assert (= (and b!2229163 (not c!355671)) b!2229159))

(assert (= (and b!2229159 c!355673) b!2229153))

(assert (= (and b!2229159 (not c!355673)) b!2229156))

(assert (= (or b!2229162 b!2229153) bm!133729))

(assert (= (or b!2229162 b!2229153) bm!133727))

(assert (= (or b!2229162 b!2229153) bm!133733))

(assert (= (or b!2229161 bm!133727) bm!133728))

(assert (= (and d!664855 res!955138) b!2229158))

(assert (= (and b!2229158 c!355672) b!2229152))

(assert (= (and b!2229158 (not c!355672)) b!2229157))

(assert (= (and b!2229152 res!955140) b!2229155))

(assert (= (and b!2229157 c!355668) b!2229151))

(assert (= (and b!2229157 (not c!355668)) b!2229149))

(assert (= (and b!2229151 res!955139) b!2229150))

(assert (= (and b!2229149 c!355669) b!2229147))

(assert (= (and b!2229149 (not c!355669)) b!2229148))

(assert (= (or b!2229151 b!2229147) bm!133731))

(assert (= (or b!2229155 b!2229150) bm!133732))

(assert (= (or b!2229152 bm!133731) bm!133730))

(declare-fun m!2666855 () Bool)

(assert (=> bm!133728 m!2666855))

(declare-fun m!2666857 () Bool)

(assert (=> bm!133730 m!2666857))

(declare-fun m!2666859 () Bool)

(assert (=> bm!133732 m!2666859))

(declare-fun m!2666861 () Bool)

(assert (=> bm!133729 m!2666861))

(declare-fun m!2666863 () Bool)

(assert (=> bm!133733 m!2666863))

(assert (=> b!2229062 d!664855))

(declare-fun d!664857 () Bool)

(assert (=> d!664857 (= (array_inv!3355 (_keys!3342 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839))))))) (bvsge (size!20458 (_keys!3342 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2229051 d!664857))

(declare-fun d!664859 () Bool)

(assert (=> d!664859 (= (array_inv!3356 (_values!3325 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839))))))) (bvsge (size!20459 (_values!3325 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2229051 d!664859))

(declare-fun d!664861 () Bool)

(declare-fun e!1424620 () Bool)

(assert (=> d!664861 e!1424620))

(declare-fun res!955143 () Bool)

(assert (=> d!664861 (=> res!955143 e!1424620)))

(declare-fun lt!830449 () Option!5094)

(declare-fun isEmpty!14890 (Option!5094) Bool)

(assert (=> d!664861 (= res!955143 (isEmpty!14890 lt!830449))))

(declare-fun choose!13121 (CacheDown!1956 Regex!6407 Context!3910 C!12960) Option!5094)

(assert (=> d!664861 (= lt!830449 (choose!13121 cacheDown!839 expr!64 context!86 a!1167))))

(assert (=> d!664861 (validCacheMapDown!277 (cache!3336 cacheDown!839))))

(assert (=> d!664861 (= (get!7893 cacheDown!839 expr!64 context!86 a!1167) lt!830449)))

(declare-fun b!2229166 () Bool)

(declare-fun get!7894 (Option!5094) (InoxSet Context!3910))

(declare-fun derivationStepZipperDown!40 (Regex!6407 Context!3910 C!12960) (InoxSet Context!3910))

(assert (=> b!2229166 (= e!1424620 (= (get!7894 lt!830449) (derivationStepZipperDown!40 expr!64 context!86 a!1167)))))

(assert (= (and d!664861 (not res!955143)) b!2229166))

(declare-fun m!2666865 () Bool)

(assert (=> d!664861 m!2666865))

(declare-fun m!2666867 () Bool)

(assert (=> d!664861 m!2666867))

(assert (=> d!664861 m!2666841))

(declare-fun m!2666869 () Bool)

(assert (=> b!2229166 m!2666869))

(declare-fun m!2666871 () Bool)

(assert (=> b!2229166 m!2666871))

(assert (=> b!2229065 d!664861))

(declare-fun b!2229180 () Bool)

(declare-fun e!1424623 () Bool)

(declare-fun tp!697793 () Bool)

(declare-fun tp!697794 () Bool)

(assert (=> b!2229180 (= e!1424623 (and tp!697793 tp!697794))))

(declare-fun b!2229178 () Bool)

(declare-fun tp!697790 () Bool)

(declare-fun tp!697791 () Bool)

(assert (=> b!2229178 (= e!1424623 (and tp!697790 tp!697791))))

(declare-fun b!2229177 () Bool)

(assert (=> b!2229177 (= e!1424623 tp_is_empty!10039)))

(assert (=> b!2229064 (= tp!697777 e!1424623)))

(declare-fun b!2229179 () Bool)

(declare-fun tp!697792 () Bool)

(assert (=> b!2229179 (= e!1424623 tp!697792)))

(assert (= (and b!2229064 ((_ is ElementMatch!6407) (regOne!13327 expr!64))) b!2229177))

(assert (= (and b!2229064 ((_ is Concat!10745) (regOne!13327 expr!64))) b!2229178))

(assert (= (and b!2229064 ((_ is Star!6407) (regOne!13327 expr!64))) b!2229179))

(assert (= (and b!2229064 ((_ is Union!6407) (regOne!13327 expr!64))) b!2229180))

(declare-fun b!2229184 () Bool)

(declare-fun e!1424624 () Bool)

(declare-fun tp!697798 () Bool)

(declare-fun tp!697799 () Bool)

(assert (=> b!2229184 (= e!1424624 (and tp!697798 tp!697799))))

(declare-fun b!2229182 () Bool)

(declare-fun tp!697795 () Bool)

(declare-fun tp!697796 () Bool)

(assert (=> b!2229182 (= e!1424624 (and tp!697795 tp!697796))))

(declare-fun b!2229181 () Bool)

(assert (=> b!2229181 (= e!1424624 tp_is_empty!10039)))

(assert (=> b!2229064 (= tp!697772 e!1424624)))

(declare-fun b!2229183 () Bool)

(declare-fun tp!697797 () Bool)

(assert (=> b!2229183 (= e!1424624 tp!697797)))

(assert (= (and b!2229064 ((_ is ElementMatch!6407) (regTwo!13327 expr!64))) b!2229181))

(assert (= (and b!2229064 ((_ is Concat!10745) (regTwo!13327 expr!64))) b!2229182))

(assert (= (and b!2229064 ((_ is Star!6407) (regTwo!13327 expr!64))) b!2229183))

(assert (= (and b!2229064 ((_ is Union!6407) (regTwo!13327 expr!64))) b!2229184))

(declare-fun b!2229193 () Bool)

(declare-fun e!1424633 () Bool)

(declare-fun tp!697810 () Bool)

(assert (=> b!2229193 (= e!1424633 tp!697810)))

(declare-fun setElem!19996 () Context!3910)

(declare-fun setNonEmpty!19996 () Bool)

(declare-fun tp!697812 () Bool)

(declare-fun setRes!19996 () Bool)

(assert (=> setNonEmpty!19996 (= setRes!19996 (and tp!697812 (inv!35565 setElem!19996) e!1424633))))

(declare-fun setRest!19996 () (InoxSet Context!3910))

(assert (=> setNonEmpty!19996 (= (_2!15181 (h!31594 mapDefault!14339)) ((_ map or) (store ((as const (Array Context!3910 Bool)) false) setElem!19996 true) setRest!19996))))

(declare-fun setIsEmpty!19996 () Bool)

(assert (=> setIsEmpty!19996 setRes!19996))

(declare-fun b!2229194 () Bool)

(declare-fun e!1424631 () Bool)

(declare-fun tp!697814 () Bool)

(assert (=> b!2229194 (= e!1424631 tp!697814)))

(declare-fun e!1424632 () Bool)

(assert (=> b!2229056 (= tp!697767 e!1424632)))

(declare-fun tp!697811 () Bool)

(declare-fun b!2229195 () Bool)

(declare-fun tp!697813 () Bool)

(assert (=> b!2229195 (= e!1424632 (and tp!697811 (inv!35565 (_2!15180 (_1!15181 (h!31594 mapDefault!14339)))) e!1424631 tp_is_empty!10039 setRes!19996 tp!697813))))

(declare-fun condSetEmpty!19996 () Bool)

(assert (=> b!2229195 (= condSetEmpty!19996 (= (_2!15181 (h!31594 mapDefault!14339)) ((as const (Array Context!3910 Bool)) false)))))

(assert (= b!2229195 b!2229194))

(assert (= (and b!2229195 condSetEmpty!19996) setIsEmpty!19996))

(assert (= (and b!2229195 (not condSetEmpty!19996)) setNonEmpty!19996))

(assert (= setNonEmpty!19996 b!2229193))

(assert (= (and b!2229056 ((_ is Cons!26193) mapDefault!14339)) b!2229195))

(declare-fun m!2666873 () Bool)

(assert (=> setNonEmpty!19996 m!2666873))

(declare-fun m!2666875 () Bool)

(assert (=> b!2229195 m!2666875))

(declare-fun b!2229199 () Bool)

(declare-fun e!1424634 () Bool)

(declare-fun tp!697818 () Bool)

(declare-fun tp!697819 () Bool)

(assert (=> b!2229199 (= e!1424634 (and tp!697818 tp!697819))))

(declare-fun b!2229197 () Bool)

(declare-fun tp!697815 () Bool)

(declare-fun tp!697816 () Bool)

(assert (=> b!2229197 (= e!1424634 (and tp!697815 tp!697816))))

(declare-fun b!2229196 () Bool)

(assert (=> b!2229196 (= e!1424634 tp_is_empty!10039)))

(assert (=> b!2229054 (= tp!697774 e!1424634)))

(declare-fun b!2229198 () Bool)

(declare-fun tp!697817 () Bool)

(assert (=> b!2229198 (= e!1424634 tp!697817)))

(assert (= (and b!2229054 ((_ is ElementMatch!6407) (reg!6736 expr!64))) b!2229196))

(assert (= (and b!2229054 ((_ is Concat!10745) (reg!6736 expr!64))) b!2229197))

(assert (= (and b!2229054 ((_ is Star!6407) (reg!6736 expr!64))) b!2229198))

(assert (= (and b!2229054 ((_ is Union!6407) (reg!6736 expr!64))) b!2229199))

(declare-fun b!2229204 () Bool)

(declare-fun e!1424637 () Bool)

(declare-fun tp!697824 () Bool)

(declare-fun tp!697825 () Bool)

(assert (=> b!2229204 (= e!1424637 (and tp!697824 tp!697825))))

(assert (=> b!2229063 (= tp!697773 e!1424637)))

(assert (= (and b!2229063 ((_ is Cons!26192) (exprs!2455 context!86))) b!2229204))

(declare-fun setNonEmpty!20001 () Bool)

(declare-fun tp!697852 () Bool)

(declare-fun setElem!20001 () Context!3910)

(declare-fun e!1424655 () Bool)

(declare-fun setRes!20002 () Bool)

(assert (=> setNonEmpty!20001 (= setRes!20002 (and tp!697852 (inv!35565 setElem!20001) e!1424655))))

(declare-fun mapDefault!14342 () List!26287)

(declare-fun setRest!20001 () (InoxSet Context!3910))

(assert (=> setNonEmpty!20001 (= (_2!15181 (h!31594 mapDefault!14342)) ((_ map or) (store ((as const (Array Context!3910 Bool)) false) setElem!20001 true) setRest!20001))))

(declare-fun tp!697853 () Bool)

(declare-fun mapValue!14342 () List!26287)

(declare-fun b!2229219 () Bool)

(declare-fun setRes!20001 () Bool)

(declare-fun e!1424650 () Bool)

(declare-fun e!1424654 () Bool)

(declare-fun tp!697851 () Bool)

(assert (=> b!2229219 (= e!1424654 (and tp!697851 (inv!35565 (_2!15180 (_1!15181 (h!31594 mapValue!14342)))) e!1424650 tp_is_empty!10039 setRes!20001 tp!697853))))

(declare-fun condSetEmpty!20002 () Bool)

(assert (=> b!2229219 (= condSetEmpty!20002 (= (_2!15181 (h!31594 mapValue!14342)) ((as const (Array Context!3910 Bool)) false)))))

(declare-fun mapNonEmpty!14342 () Bool)

(declare-fun mapRes!14342 () Bool)

(declare-fun tp!697856 () Bool)

(assert (=> mapNonEmpty!14342 (= mapRes!14342 (and tp!697856 e!1424654))))

(declare-fun mapRest!14342 () (Array (_ BitVec 32) List!26287))

(declare-fun mapKey!14342 () (_ BitVec 32))

(assert (=> mapNonEmpty!14342 (= mapRest!14339 (store mapRest!14342 mapKey!14342 mapValue!14342))))

(declare-fun b!2229221 () Bool)

(declare-fun tp!697855 () Bool)

(assert (=> b!2229221 (= e!1424650 tp!697855)))

(declare-fun setIsEmpty!20001 () Bool)

(assert (=> setIsEmpty!20001 setRes!20002))

(declare-fun setIsEmpty!20002 () Bool)

(assert (=> setIsEmpty!20002 setRes!20001))

(declare-fun b!2229222 () Bool)

(declare-fun e!1424652 () Bool)

(declare-fun tp!697850 () Bool)

(assert (=> b!2229222 (= e!1424652 tp!697850)))

(declare-fun mapIsEmpty!14342 () Bool)

(assert (=> mapIsEmpty!14342 mapRes!14342))

(declare-fun tp!697849 () Bool)

(declare-fun tp!697854 () Bool)

(declare-fun b!2229223 () Bool)

(declare-fun e!1424651 () Bool)

(assert (=> b!2229223 (= e!1424651 (and tp!697849 (inv!35565 (_2!15180 (_1!15181 (h!31594 mapDefault!14342)))) e!1424652 tp_is_empty!10039 setRes!20002 tp!697854))))

(declare-fun condSetEmpty!20001 () Bool)

(assert (=> b!2229223 (= condSetEmpty!20001 (= (_2!15181 (h!31594 mapDefault!14342)) ((as const (Array Context!3910 Bool)) false)))))

(declare-fun setNonEmpty!20002 () Bool)

(declare-fun e!1424653 () Bool)

(declare-fun tp!697848 () Bool)

(declare-fun setElem!20002 () Context!3910)

(assert (=> setNonEmpty!20002 (= setRes!20001 (and tp!697848 (inv!35565 setElem!20002) e!1424653))))

(declare-fun setRest!20002 () (InoxSet Context!3910))

(assert (=> setNonEmpty!20002 (= (_2!15181 (h!31594 mapValue!14342)) ((_ map or) (store ((as const (Array Context!3910 Bool)) false) setElem!20002 true) setRest!20002))))

(declare-fun b!2229224 () Bool)

(declare-fun tp!697857 () Bool)

(assert (=> b!2229224 (= e!1424653 tp!697857)))

(declare-fun b!2229220 () Bool)

(declare-fun tp!697858 () Bool)

(assert (=> b!2229220 (= e!1424655 tp!697858)))

(declare-fun condMapEmpty!14342 () Bool)

(assert (=> mapNonEmpty!14339 (= condMapEmpty!14342 (= mapRest!14339 ((as const (Array (_ BitVec 32) List!26287)) mapDefault!14342)))))

(assert (=> mapNonEmpty!14339 (= tp!697779 (and e!1424651 mapRes!14342))))

(assert (= (and mapNonEmpty!14339 condMapEmpty!14342) mapIsEmpty!14342))

(assert (= (and mapNonEmpty!14339 (not condMapEmpty!14342)) mapNonEmpty!14342))

(assert (= b!2229219 b!2229221))

(assert (= (and b!2229219 condSetEmpty!20002) setIsEmpty!20002))

(assert (= (and b!2229219 (not condSetEmpty!20002)) setNonEmpty!20002))

(assert (= setNonEmpty!20002 b!2229224))

(assert (= (and mapNonEmpty!14342 ((_ is Cons!26193) mapValue!14342)) b!2229219))

(assert (= b!2229223 b!2229222))

(assert (= (and b!2229223 condSetEmpty!20001) setIsEmpty!20001))

(assert (= (and b!2229223 (not condSetEmpty!20001)) setNonEmpty!20001))

(assert (= setNonEmpty!20001 b!2229220))

(assert (= (and mapNonEmpty!14339 ((_ is Cons!26193) mapDefault!14342)) b!2229223))

(declare-fun m!2666877 () Bool)

(assert (=> setNonEmpty!20002 m!2666877))

(declare-fun m!2666879 () Bool)

(assert (=> setNonEmpty!20001 m!2666879))

(declare-fun m!2666881 () Bool)

(assert (=> b!2229219 m!2666881))

(declare-fun m!2666883 () Bool)

(assert (=> b!2229223 m!2666883))

(declare-fun m!2666885 () Bool)

(assert (=> mapNonEmpty!14342 m!2666885))

(declare-fun b!2229225 () Bool)

(declare-fun e!1424658 () Bool)

(declare-fun tp!697859 () Bool)

(assert (=> b!2229225 (= e!1424658 tp!697859)))

(declare-fun setRes!20003 () Bool)

(declare-fun setElem!20003 () Context!3910)

(declare-fun tp!697861 () Bool)

(declare-fun setNonEmpty!20003 () Bool)

(assert (=> setNonEmpty!20003 (= setRes!20003 (and tp!697861 (inv!35565 setElem!20003) e!1424658))))

(declare-fun setRest!20003 () (InoxSet Context!3910))

(assert (=> setNonEmpty!20003 (= (_2!15181 (h!31594 mapValue!14339)) ((_ map or) (store ((as const (Array Context!3910 Bool)) false) setElem!20003 true) setRest!20003))))

(declare-fun setIsEmpty!20003 () Bool)

(assert (=> setIsEmpty!20003 setRes!20003))

(declare-fun b!2229226 () Bool)

(declare-fun e!1424656 () Bool)

(declare-fun tp!697863 () Bool)

(assert (=> b!2229226 (= e!1424656 tp!697863)))

(declare-fun e!1424657 () Bool)

(assert (=> mapNonEmpty!14339 (= tp!697776 e!1424657)))

(declare-fun b!2229227 () Bool)

(declare-fun tp!697862 () Bool)

(declare-fun tp!697860 () Bool)

(assert (=> b!2229227 (= e!1424657 (and tp!697860 (inv!35565 (_2!15180 (_1!15181 (h!31594 mapValue!14339)))) e!1424656 tp_is_empty!10039 setRes!20003 tp!697862))))

(declare-fun condSetEmpty!20003 () Bool)

(assert (=> b!2229227 (= condSetEmpty!20003 (= (_2!15181 (h!31594 mapValue!14339)) ((as const (Array Context!3910 Bool)) false)))))

(assert (= b!2229227 b!2229226))

(assert (= (and b!2229227 condSetEmpty!20003) setIsEmpty!20003))

(assert (= (and b!2229227 (not condSetEmpty!20003)) setNonEmpty!20003))

(assert (= setNonEmpty!20003 b!2229225))

(assert (= (and mapNonEmpty!14339 ((_ is Cons!26193) mapValue!14339)) b!2229227))

(declare-fun m!2666887 () Bool)

(assert (=> setNonEmpty!20003 m!2666887))

(declare-fun m!2666889 () Bool)

(assert (=> b!2229227 m!2666889))

(declare-fun b!2229228 () Bool)

(declare-fun e!1424661 () Bool)

(declare-fun tp!697864 () Bool)

(assert (=> b!2229228 (= e!1424661 tp!697864)))

(declare-fun setElem!20004 () Context!3910)

(declare-fun tp!697866 () Bool)

(declare-fun setRes!20004 () Bool)

(declare-fun setNonEmpty!20004 () Bool)

(assert (=> setNonEmpty!20004 (= setRes!20004 (and tp!697866 (inv!35565 setElem!20004) e!1424661))))

(declare-fun setRest!20004 () (InoxSet Context!3910))

(assert (=> setNonEmpty!20004 (= (_2!15181 (h!31594 (zeroValue!3303 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3910 Bool)) false) setElem!20004 true) setRest!20004))))

(declare-fun setIsEmpty!20004 () Bool)

(assert (=> setIsEmpty!20004 setRes!20004))

(declare-fun b!2229229 () Bool)

(declare-fun e!1424659 () Bool)

(declare-fun tp!697868 () Bool)

(assert (=> b!2229229 (= e!1424659 tp!697868)))

(declare-fun e!1424660 () Bool)

(assert (=> b!2229051 (= tp!697768 e!1424660)))

(declare-fun b!2229230 () Bool)

(declare-fun tp!697867 () Bool)

(declare-fun tp!697865 () Bool)

(assert (=> b!2229230 (= e!1424660 (and tp!697865 (inv!35565 (_2!15180 (_1!15181 (h!31594 (zeroValue!3303 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839)))))))))) e!1424659 tp_is_empty!10039 setRes!20004 tp!697867))))

(declare-fun condSetEmpty!20004 () Bool)

(assert (=> b!2229230 (= condSetEmpty!20004 (= (_2!15181 (h!31594 (zeroValue!3303 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839)))))))) ((as const (Array Context!3910 Bool)) false)))))

(assert (= b!2229230 b!2229229))

(assert (= (and b!2229230 condSetEmpty!20004) setIsEmpty!20004))

(assert (= (and b!2229230 (not condSetEmpty!20004)) setNonEmpty!20004))

(assert (= setNonEmpty!20004 b!2229228))

(assert (= (and b!2229051 ((_ is Cons!26193) (zeroValue!3303 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839)))))))) b!2229230))

(declare-fun m!2666891 () Bool)

(assert (=> setNonEmpty!20004 m!2666891))

(declare-fun m!2666893 () Bool)

(assert (=> b!2229230 m!2666893))

(declare-fun b!2229231 () Bool)

(declare-fun e!1424664 () Bool)

(declare-fun tp!697869 () Bool)

(assert (=> b!2229231 (= e!1424664 tp!697869)))

(declare-fun setNonEmpty!20005 () Bool)

(declare-fun setRes!20005 () Bool)

(declare-fun tp!697871 () Bool)

(declare-fun setElem!20005 () Context!3910)

(assert (=> setNonEmpty!20005 (= setRes!20005 (and tp!697871 (inv!35565 setElem!20005) e!1424664))))

(declare-fun setRest!20005 () (InoxSet Context!3910))

(assert (=> setNonEmpty!20005 (= (_2!15181 (h!31594 (minValue!3303 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3910 Bool)) false) setElem!20005 true) setRest!20005))))

(declare-fun setIsEmpty!20005 () Bool)

(assert (=> setIsEmpty!20005 setRes!20005))

(declare-fun b!2229232 () Bool)

(declare-fun e!1424662 () Bool)

(declare-fun tp!697873 () Bool)

(assert (=> b!2229232 (= e!1424662 tp!697873)))

(declare-fun e!1424663 () Bool)

(assert (=> b!2229051 (= tp!697770 e!1424663)))

(declare-fun tp!697870 () Bool)

(declare-fun tp!697872 () Bool)

(declare-fun b!2229233 () Bool)

(assert (=> b!2229233 (= e!1424663 (and tp!697870 (inv!35565 (_2!15180 (_1!15181 (h!31594 (minValue!3303 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839)))))))))) e!1424662 tp_is_empty!10039 setRes!20005 tp!697872))))

(declare-fun condSetEmpty!20005 () Bool)

(assert (=> b!2229233 (= condSetEmpty!20005 (= (_2!15181 (h!31594 (minValue!3303 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839)))))))) ((as const (Array Context!3910 Bool)) false)))))

(assert (= b!2229233 b!2229232))

(assert (= (and b!2229233 condSetEmpty!20005) setIsEmpty!20005))

(assert (= (and b!2229233 (not condSetEmpty!20005)) setNonEmpty!20005))

(assert (= setNonEmpty!20005 b!2229231))

(assert (= (and b!2229051 ((_ is Cons!26193) (minValue!3303 (v!29773 (underlying!6291 (v!29774 (underlying!6292 (cache!3336 cacheDown!839)))))))) b!2229233))

(declare-fun m!2666895 () Bool)

(assert (=> setNonEmpty!20005 m!2666895))

(declare-fun m!2666897 () Bool)

(assert (=> b!2229233 m!2666897))

(declare-fun b!2229237 () Bool)

(declare-fun e!1424665 () Bool)

(declare-fun tp!697877 () Bool)

(declare-fun tp!697878 () Bool)

(assert (=> b!2229237 (= e!1424665 (and tp!697877 tp!697878))))

(declare-fun b!2229235 () Bool)

(declare-fun tp!697874 () Bool)

(declare-fun tp!697875 () Bool)

(assert (=> b!2229235 (= e!1424665 (and tp!697874 tp!697875))))

(declare-fun b!2229234 () Bool)

(assert (=> b!2229234 (= e!1424665 tp_is_empty!10039)))

(assert (=> b!2229052 (= tp!697775 e!1424665)))

(declare-fun b!2229236 () Bool)

(declare-fun tp!697876 () Bool)

(assert (=> b!2229236 (= e!1424665 tp!697876)))

(assert (= (and b!2229052 ((_ is ElementMatch!6407) (regOne!13326 expr!64))) b!2229234))

(assert (= (and b!2229052 ((_ is Concat!10745) (regOne!13326 expr!64))) b!2229235))

(assert (= (and b!2229052 ((_ is Star!6407) (regOne!13326 expr!64))) b!2229236))

(assert (= (and b!2229052 ((_ is Union!6407) (regOne!13326 expr!64))) b!2229237))

(declare-fun b!2229241 () Bool)

(declare-fun e!1424666 () Bool)

(declare-fun tp!697882 () Bool)

(declare-fun tp!697883 () Bool)

(assert (=> b!2229241 (= e!1424666 (and tp!697882 tp!697883))))

(declare-fun b!2229239 () Bool)

(declare-fun tp!697879 () Bool)

(declare-fun tp!697880 () Bool)

(assert (=> b!2229239 (= e!1424666 (and tp!697879 tp!697880))))

(declare-fun b!2229238 () Bool)

(assert (=> b!2229238 (= e!1424666 tp_is_empty!10039)))

(assert (=> b!2229052 (= tp!697778 e!1424666)))

(declare-fun b!2229240 () Bool)

(declare-fun tp!697881 () Bool)

(assert (=> b!2229240 (= e!1424666 tp!697881)))

(assert (= (and b!2229052 ((_ is ElementMatch!6407) (regTwo!13326 expr!64))) b!2229238))

(assert (= (and b!2229052 ((_ is Concat!10745) (regTwo!13326 expr!64))) b!2229239))

(assert (= (and b!2229052 ((_ is Star!6407) (regTwo!13326 expr!64))) b!2229240))

(assert (= (and b!2229052 ((_ is Union!6407) (regTwo!13326 expr!64))) b!2229241))

(check-sat (not b!2229232) (not b!2229229) (not bm!133722) (not b!2229221) (not setNonEmpty!20001) (not b_next!65345) (not b!2229224) (not bm!133730) (not b!2229198) (not b!2229199) b_and!174631 (not bm!133723) (not b!2229222) (not setNonEmpty!20002) (not bm!133733) (not b!2229226) (not b!2229197) (not b!2229178) (not setNonEmpty!19996) (not b!2229225) (not bm!133704) (not b!2229236) (not b!2229228) (not b!2229231) b_and!174629 (not b!2229166) (not b!2229195) (not setNonEmpty!20005) (not b!2229084) (not b!2229095) (not bm!133728) (not b!2229239) (not b!2229227) (not setNonEmpty!20003) (not b!2229240) (not b!2229220) (not d!664851) (not b!2229223) tp_is_empty!10039 (not b!2229180) (not b!2229194) (not mapNonEmpty!14342) (not b!2229193) (not b!2229179) (not b!2229204) (not bm!133703) (not setNonEmpty!20004) (not b!2229241) (not bm!133732) (not b!2229230) (not bm!133726) (not b!2229219) (not b!2229233) (not b!2229183) (not b!2229237) (not d!664861) (not b_next!65347) (not bm!133729) (not bm!133725) (not bm!133721) (not b!2229184) (not b!2229235) (not b!2229182))
(check-sat b_and!174631 b_and!174629 (not b_next!65345) (not b_next!65347))
