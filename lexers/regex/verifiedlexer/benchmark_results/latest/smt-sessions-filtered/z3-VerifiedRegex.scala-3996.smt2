; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217218 () Bool)

(assert start!217218)

(declare-fun b!2225893 () Bool)

(declare-fun b_free!64545 () Bool)

(declare-fun b_next!65249 () Bool)

(assert (=> b!2225893 (= b_free!64545 (not b_next!65249))))

(declare-fun tp!695501 () Bool)

(declare-fun b_and!174533 () Bool)

(assert (=> b!2225893 (= tp!695501 b_and!174533)))

(declare-fun b!2225903 () Bool)

(declare-fun b_free!64547 () Bool)

(declare-fun b_next!65251 () Bool)

(assert (=> b!2225903 (= b_free!64547 (not b_next!65251))))

(declare-fun tp!695511 () Bool)

(declare-fun b_and!174535 () Bool)

(assert (=> b!2225903 (= tp!695511 b_and!174535)))

(declare-fun b!2225892 () Bool)

(declare-fun e!1422492 () Bool)

(declare-fun tp!695513 () Bool)

(declare-fun tp!695504 () Bool)

(assert (=> b!2225892 (= e!1422492 (and tp!695513 tp!695504))))

(declare-fun e!1422491 () Bool)

(declare-fun e!1422493 () Bool)

(assert (=> b!2225893 (= e!1422491 (and e!1422493 tp!695501))))

(declare-fun b!2225894 () Bool)

(declare-fun e!1422484 () Bool)

(declare-fun e!1422490 () Bool)

(assert (=> b!2225894 (= e!1422484 e!1422490)))

(declare-fun b!2225895 () Bool)

(declare-fun e!1422486 () Bool)

(assert (=> b!2225895 (= e!1422486 e!1422491)))

(declare-fun mapIsEmpty!14241 () Bool)

(declare-fun mapRes!14241 () Bool)

(assert (=> mapIsEmpty!14241 mapRes!14241))

(declare-fun b!2225896 () Bool)

(declare-fun e!1422489 () Bool)

(declare-fun tp!695502 () Bool)

(assert (=> b!2225896 (= e!1422489 (and tp!695502 mapRes!14241))))

(declare-fun condMapEmpty!14241 () Bool)

(declare-datatypes ((C!12912 0))(
  ( (C!12913 (val!7504 Int)) )
))
(declare-datatypes ((Regex!6383 0))(
  ( (ElementMatch!6383 (c!355263 C!12912)) (Concat!10721 (regOne!13278 Regex!6383) (regTwo!13278 Regex!6383)) (EmptyExpr!6383) (Star!6383 (reg!6712 Regex!6383)) (EmptyLang!6383) (Union!6383 (regOne!13279 Regex!6383) (regTwo!13279 Regex!6383)) )
))
(declare-datatypes ((List!26237 0))(
  ( (Nil!26143) (Cons!26143 (h!31544 Regex!6383) (t!199649 List!26237)) )
))
(declare-datatypes ((Context!3862 0))(
  ( (Context!3863 (exprs!2431 List!26237)) )
))
(declare-datatypes ((array!10406 0))(
  ( (array!10407 (arr!4629 (Array (_ BitVec 32) (_ BitVec 64))) (size!20410 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3838 0))(
  ( (tuple3!3839 (_1!15115 Regex!6383) (_2!15115 Context!3862) (_3!2389 C!12912)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25452 0))(
  ( (tuple2!25453 (_1!15116 tuple3!3838) (_2!15116 (InoxSet Context!3862))) )
))
(declare-datatypes ((List!26238 0))(
  ( (Nil!26144) (Cons!26144 (h!31545 tuple2!25452) (t!199650 List!26238)) )
))
(declare-datatypes ((array!10408 0))(
  ( (array!10409 (arr!4630 (Array (_ BitVec 32) List!26238)) (size!20411 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6042 0))(
  ( (LongMapFixedSize!6043 (defaultEntry!3386 Int) (mask!7566 (_ BitVec 32)) (extraKeys!3269 (_ BitVec 32)) (zeroValue!3279 List!26238) (minValue!3279 List!26238) (_size!6089 (_ BitVec 32)) (_keys!3318 array!10406) (_values!3301 array!10408) (_vacant!3082 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11901 0))(
  ( (Cell!11902 (v!29709 LongMapFixedSize!6042)) )
))
(declare-datatypes ((MutLongMap!3021 0))(
  ( (LongMap!3021 (underlying!6243 Cell!11901)) (MutLongMapExt!3020 (__x!17289 Int)) )
))
(declare-datatypes ((Cell!11903 0))(
  ( (Cell!11904 (v!29710 MutLongMap!3021)) )
))
(declare-datatypes ((Hashable!2931 0))(
  ( (HashableExt!2930 (__x!17290 Int)) )
))
(declare-datatypes ((MutableMap!2931 0))(
  ( (MutableMapExt!2930 (__x!17291 Int)) (HashMap!2931 (underlying!6244 Cell!11903) (hashF!4854 Hashable!2931) (_size!6090 (_ BitVec 32)) (defaultValue!3093 Int)) )
))
(declare-datatypes ((CacheDown!1908 0))(
  ( (CacheDown!1909 (cache!3312 MutableMap!2931)) )
))
(declare-fun cacheDown!839 () CacheDown!1908)

(declare-fun mapDefault!14241 () List!26238)

(assert (=> b!2225896 (= condMapEmpty!14241 (= (arr!4630 (_values!3301 (v!29709 (underlying!6243 (v!29710 (underlying!6244 (cache!3312 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26238)) mapDefault!14241)))))

(declare-fun mapNonEmpty!14241 () Bool)

(declare-fun tp!695510 () Bool)

(declare-fun tp!695507 () Bool)

(assert (=> mapNonEmpty!14241 (= mapRes!14241 (and tp!695510 tp!695507))))

(declare-fun mapValue!14241 () List!26238)

(declare-fun mapKey!14241 () (_ BitVec 32))

(declare-fun mapRest!14241 () (Array (_ BitVec 32) List!26238))

(assert (=> mapNonEmpty!14241 (= (arr!4630 (_values!3301 (v!29709 (underlying!6243 (v!29710 (underlying!6244 (cache!3312 cacheDown!839))))))) (store mapRest!14241 mapKey!14241 mapValue!14241))))

(declare-fun b!2225898 () Bool)

(declare-fun e!1422487 () Bool)

(declare-fun lt!830060 () MutLongMap!3021)

(get-info :version)

(assert (=> b!2225898 (= e!1422493 (and e!1422487 ((_ is LongMap!3021) lt!830060)))))

(assert (=> b!2225898 (= lt!830060 (v!29710 (underlying!6244 (cache!3312 cacheDown!839))))))

(declare-fun b!2225899 () Bool)

(declare-fun tp!695503 () Bool)

(declare-fun tp!695505 () Bool)

(assert (=> b!2225899 (= e!1422492 (and tp!695503 tp!695505))))

(declare-fun b!2225900 () Bool)

(declare-fun e!1422488 () Bool)

(assert (=> b!2225900 (= e!1422488 false)))

(declare-fun context!86 () Context!3862)

(declare-datatypes ((Option!5078 0))(
  ( (None!5077) (Some!5077 (v!29711 (InoxSet Context!3862))) )
))
(declare-fun lt!830059 () Option!5078)

(declare-fun expr!64 () Regex!6383)

(declare-fun a!1167 () C!12912)

(declare-fun get!7857 (CacheDown!1908 Regex!6383 Context!3862 C!12912) Option!5078)

(assert (=> b!2225900 (= lt!830059 (get!7857 cacheDown!839 expr!64 context!86 a!1167))))

(declare-fun b!2225901 () Bool)

(assert (=> b!2225901 (= e!1422487 e!1422484)))

(declare-fun b!2225902 () Bool)

(declare-fun e!1422483 () Bool)

(declare-fun tp!695512 () Bool)

(assert (=> b!2225902 (= e!1422483 tp!695512)))

(declare-fun tp!695509 () Bool)

(declare-fun tp!695506 () Bool)

(declare-fun array_inv!3325 (array!10406) Bool)

(declare-fun array_inv!3326 (array!10408) Bool)

(assert (=> b!2225903 (= e!1422490 (and tp!695511 tp!695509 tp!695506 (array_inv!3325 (_keys!3318 (v!29709 (underlying!6243 (v!29710 (underlying!6244 (cache!3312 cacheDown!839))))))) (array_inv!3326 (_values!3301 (v!29709 (underlying!6243 (v!29710 (underlying!6244 (cache!3312 cacheDown!839))))))) e!1422489))))

(declare-fun b!2225904 () Bool)

(declare-fun tp_is_empty!9991 () Bool)

(assert (=> b!2225904 (= e!1422492 tp_is_empty!9991)))

(declare-fun b!2225897 () Bool)

(declare-fun tp!695508 () Bool)

(assert (=> b!2225897 (= e!1422492 tp!695508)))

(declare-fun res!954486 () Bool)

(assert (=> start!217218 (=> (not res!954486) (not e!1422488))))

(declare-fun validRegex!2364 (Regex!6383) Bool)

(assert (=> start!217218 (= res!954486 (validRegex!2364 expr!64))))

(assert (=> start!217218 e!1422488))

(assert (=> start!217218 e!1422492))

(declare-fun inv!35494 (CacheDown!1908) Bool)

(assert (=> start!217218 (and (inv!35494 cacheDown!839) e!1422486)))

(declare-fun inv!35495 (Context!3862) Bool)

(assert (=> start!217218 (and (inv!35495 context!86) e!1422483)))

(assert (=> start!217218 tp_is_empty!9991))

(assert (= (and start!217218 res!954486) b!2225900))

(assert (= (and start!217218 ((_ is ElementMatch!6383) expr!64)) b!2225904))

(assert (= (and start!217218 ((_ is Concat!10721) expr!64)) b!2225899))

(assert (= (and start!217218 ((_ is Star!6383) expr!64)) b!2225897))

(assert (= (and start!217218 ((_ is Union!6383) expr!64)) b!2225892))

(assert (= (and b!2225896 condMapEmpty!14241) mapIsEmpty!14241))

(assert (= (and b!2225896 (not condMapEmpty!14241)) mapNonEmpty!14241))

(assert (= b!2225903 b!2225896))

(assert (= b!2225894 b!2225903))

(assert (= b!2225901 b!2225894))

(assert (= (and b!2225898 ((_ is LongMap!3021) (v!29710 (underlying!6244 (cache!3312 cacheDown!839))))) b!2225901))

(assert (= b!2225893 b!2225898))

(assert (= (and b!2225895 ((_ is HashMap!2931) (cache!3312 cacheDown!839))) b!2225893))

(assert (= start!217218 b!2225895))

(assert (= start!217218 b!2225902))

(declare-fun m!2665400 () Bool)

(assert (=> mapNonEmpty!14241 m!2665400))

(declare-fun m!2665402 () Bool)

(assert (=> b!2225900 m!2665402))

(declare-fun m!2665404 () Bool)

(assert (=> b!2225903 m!2665404))

(declare-fun m!2665406 () Bool)

(assert (=> b!2225903 m!2665406))

(declare-fun m!2665408 () Bool)

(assert (=> start!217218 m!2665408))

(declare-fun m!2665410 () Bool)

(assert (=> start!217218 m!2665410))

(declare-fun m!2665412 () Bool)

(assert (=> start!217218 m!2665412))

(check-sat (not b_next!65251) (not b_next!65249) (not b!2225897) (not start!217218) (not b!2225899) (not mapNonEmpty!14241) (not b!2225903) b_and!174535 (not b!2225896) tp_is_empty!9991 (not b!2225902) (not b!2225892) b_and!174533 (not b!2225900))
(check-sat b_and!174533 b_and!174535 (not b_next!65251) (not b_next!65249))
