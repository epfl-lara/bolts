; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217214 () Bool)

(assert start!217214)

(declare-fun b!2225825 () Bool)

(declare-fun b_free!64537 () Bool)

(declare-fun b_next!65241 () Bool)

(assert (=> b!2225825 (= b_free!64537 (not b_next!65241))))

(declare-fun tp!695429 () Bool)

(declare-fun b_and!174525 () Bool)

(assert (=> b!2225825 (= tp!695429 b_and!174525)))

(declare-fun b!2225819 () Bool)

(declare-fun b_free!64539 () Bool)

(declare-fun b_next!65243 () Bool)

(assert (=> b!2225819 (= b_free!64539 (not b_next!65243))))

(declare-fun tp!695428 () Bool)

(declare-fun b_and!174527 () Bool)

(assert (=> b!2225819 (= tp!695428 b_and!174527)))

(declare-fun b!2225815 () Bool)

(declare-fun e!1422426 () Bool)

(declare-fun tp!695433 () Bool)

(declare-fun mapRes!14235 () Bool)

(assert (=> b!2225815 (= e!1422426 (and tp!695433 mapRes!14235))))

(declare-fun condMapEmpty!14235 () Bool)

(declare-datatypes ((C!12908 0))(
  ( (C!12909 (val!7502 Int)) )
))
(declare-datatypes ((Regex!6381 0))(
  ( (ElementMatch!6381 (c!355261 C!12908)) (Concat!10719 (regOne!13274 Regex!6381) (regTwo!13274 Regex!6381)) (EmptyExpr!6381) (Star!6381 (reg!6710 Regex!6381)) (EmptyLang!6381) (Union!6381 (regOne!13275 Regex!6381) (regTwo!13275 Regex!6381)) )
))
(declare-datatypes ((List!26233 0))(
  ( (Nil!26139) (Cons!26139 (h!31540 Regex!6381) (t!199645 List!26233)) )
))
(declare-datatypes ((Context!3858 0))(
  ( (Context!3859 (exprs!2429 List!26233)) )
))
(declare-datatypes ((array!10398 0))(
  ( (array!10399 (arr!4625 (Array (_ BitVec 32) (_ BitVec 64))) (size!20406 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3834 0))(
  ( (tuple3!3835 (_1!15111 Regex!6381) (_2!15111 Context!3858) (_3!2387 C!12908)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25448 0))(
  ( (tuple2!25449 (_1!15112 tuple3!3834) (_2!15112 (InoxSet Context!3858))) )
))
(declare-datatypes ((List!26234 0))(
  ( (Nil!26140) (Cons!26140 (h!31541 tuple2!25448) (t!199646 List!26234)) )
))
(declare-datatypes ((array!10400 0))(
  ( (array!10401 (arr!4626 (Array (_ BitVec 32) List!26234)) (size!20407 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6038 0))(
  ( (LongMapFixedSize!6039 (defaultEntry!3384 Int) (mask!7563 (_ BitVec 32)) (extraKeys!3267 (_ BitVec 32)) (zeroValue!3277 List!26234) (minValue!3277 List!26234) (_size!6085 (_ BitVec 32)) (_keys!3316 array!10398) (_values!3299 array!10400) (_vacant!3080 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11893 0))(
  ( (Cell!11894 (v!29704 LongMapFixedSize!6038)) )
))
(declare-datatypes ((MutLongMap!3019 0))(
  ( (LongMap!3019 (underlying!6239 Cell!11893)) (MutLongMapExt!3018 (__x!17283 Int)) )
))
(declare-datatypes ((Cell!11895 0))(
  ( (Cell!11896 (v!29705 MutLongMap!3019)) )
))
(declare-datatypes ((Hashable!2929 0))(
  ( (HashableExt!2928 (__x!17284 Int)) )
))
(declare-datatypes ((MutableMap!2929 0))(
  ( (MutableMapExt!2928 (__x!17285 Int)) (HashMap!2929 (underlying!6240 Cell!11895) (hashF!4852 Hashable!2929) (_size!6086 (_ BitVec 32)) (defaultValue!3091 Int)) )
))
(declare-datatypes ((CacheDown!1904 0))(
  ( (CacheDown!1905 (cache!3310 MutableMap!2929)) )
))
(declare-fun cacheDown!839 () CacheDown!1904)

(declare-fun mapDefault!14235 () List!26234)

(assert (=> b!2225815 (= condMapEmpty!14235 (= (arr!4626 (_values!3299 (v!29704 (underlying!6239 (v!29705 (underlying!6240 (cache!3310 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26234)) mapDefault!14235)))))

(declare-fun b!2225816 () Bool)

(declare-fun e!1422421 () Bool)

(declare-fun e!1422420 () Bool)

(assert (=> b!2225816 (= e!1422421 e!1422420)))

(declare-fun b!2225817 () Bool)

(declare-fun e!1422424 () Bool)

(declare-fun tp_is_empty!9987 () Bool)

(assert (=> b!2225817 (= e!1422424 tp_is_empty!9987)))

(declare-fun b!2225818 () Bool)

(declare-fun tp!695424 () Bool)

(declare-fun tp!695430 () Bool)

(assert (=> b!2225818 (= e!1422424 (and tp!695424 tp!695430))))

(declare-fun e!1422419 () Bool)

(declare-fun tp!695426 () Bool)

(declare-fun tp!695435 () Bool)

(declare-fun array_inv!3323 (array!10398) Bool)

(declare-fun array_inv!3324 (array!10400) Bool)

(assert (=> b!2225819 (= e!1422419 (and tp!695428 tp!695426 tp!695435 (array_inv!3323 (_keys!3316 (v!29704 (underlying!6239 (v!29705 (underlying!6240 (cache!3310 cacheDown!839))))))) (array_inv!3324 (_values!3299 (v!29704 (underlying!6239 (v!29705 (underlying!6240 (cache!3310 cacheDown!839))))))) e!1422426))))

(declare-fun mapIsEmpty!14235 () Bool)

(assert (=> mapIsEmpty!14235 mapRes!14235))

(declare-fun b!2225820 () Bool)

(declare-fun e!1422418 () Bool)

(declare-fun e!1422427 () Bool)

(assert (=> b!2225820 (= e!1422418 e!1422427)))

(declare-fun b!2225821 () Bool)

(declare-fun tp!695425 () Bool)

(assert (=> b!2225821 (= e!1422424 tp!695425)))

(declare-fun b!2225822 () Bool)

(declare-fun tp!695431 () Bool)

(declare-fun tp!695432 () Bool)

(assert (=> b!2225822 (= e!1422424 (and tp!695431 tp!695432))))

(declare-fun b!2225824 () Bool)

(assert (=> b!2225824 (= e!1422420 e!1422419)))

(declare-fun mapNonEmpty!14235 () Bool)

(declare-fun tp!695434 () Bool)

(declare-fun tp!695427 () Bool)

(assert (=> mapNonEmpty!14235 (= mapRes!14235 (and tp!695434 tp!695427))))

(declare-fun mapKey!14235 () (_ BitVec 32))

(declare-fun mapValue!14235 () List!26234)

(declare-fun mapRest!14235 () (Array (_ BitVec 32) List!26234))

(assert (=> mapNonEmpty!14235 (= (arr!4626 (_values!3299 (v!29704 (underlying!6239 (v!29705 (underlying!6240 (cache!3310 cacheDown!839))))))) (store mapRest!14235 mapKey!14235 mapValue!14235))))

(declare-fun e!1422422 () Bool)

(assert (=> b!2225825 (= e!1422427 (and e!1422422 tp!695429))))

(declare-fun b!2225826 () Bool)

(declare-fun lt!830047 () MutLongMap!3019)

(get-info :version)

(assert (=> b!2225826 (= e!1422422 (and e!1422421 ((_ is LongMap!3019) lt!830047)))))

(assert (=> b!2225826 (= lt!830047 (v!29705 (underlying!6240 (cache!3310 cacheDown!839))))))

(declare-fun b!2225823 () Bool)

(declare-fun e!1422423 () Bool)

(assert (=> b!2225823 (= e!1422423 false)))

(declare-fun lt!830048 () Bool)

(declare-fun validCacheMapDown!265 (MutableMap!2929) Bool)

(assert (=> b!2225823 (= lt!830048 (validCacheMapDown!265 (cache!3310 cacheDown!839)))))

(declare-fun res!954480 () Bool)

(assert (=> start!217214 (=> (not res!954480) (not e!1422423))))

(declare-fun expr!64 () Regex!6381)

(declare-fun validRegex!2362 (Regex!6381) Bool)

(assert (=> start!217214 (= res!954480 (validRegex!2362 expr!64))))

(assert (=> start!217214 e!1422423))

(assert (=> start!217214 e!1422424))

(declare-fun inv!35488 (CacheDown!1904) Bool)

(assert (=> start!217214 (and (inv!35488 cacheDown!839) e!1422418)))

(assert (= (and start!217214 res!954480) b!2225823))

(assert (= (and start!217214 ((_ is ElementMatch!6381) expr!64)) b!2225817))

(assert (= (and start!217214 ((_ is Concat!10719) expr!64)) b!2225822))

(assert (= (and start!217214 ((_ is Star!6381) expr!64)) b!2225821))

(assert (= (and start!217214 ((_ is Union!6381) expr!64)) b!2225818))

(assert (= (and b!2225815 condMapEmpty!14235) mapIsEmpty!14235))

(assert (= (and b!2225815 (not condMapEmpty!14235)) mapNonEmpty!14235))

(assert (= b!2225819 b!2225815))

(assert (= b!2225824 b!2225819))

(assert (= b!2225816 b!2225824))

(assert (= (and b!2225826 ((_ is LongMap!3019) (v!29705 (underlying!6240 (cache!3310 cacheDown!839))))) b!2225816))

(assert (= b!2225825 b!2225826))

(assert (= (and b!2225820 ((_ is HashMap!2929) (cache!3310 cacheDown!839))) b!2225825))

(assert (= start!217214 b!2225820))

(declare-fun m!2665374 () Bool)

(assert (=> b!2225819 m!2665374))

(declare-fun m!2665376 () Bool)

(assert (=> b!2225819 m!2665376))

(declare-fun m!2665378 () Bool)

(assert (=> mapNonEmpty!14235 m!2665378))

(declare-fun m!2665380 () Bool)

(assert (=> b!2225823 m!2665380))

(declare-fun m!2665382 () Bool)

(assert (=> start!217214 m!2665382))

(declare-fun m!2665384 () Bool)

(assert (=> start!217214 m!2665384))

(check-sat tp_is_empty!9987 (not b!2225821) (not b_next!65241) (not b!2225823) (not b!2225815) b_and!174527 (not b!2225819) (not b!2225818) (not b_next!65243) (not b!2225822) (not mapNonEmpty!14235) (not start!217214) b_and!174525)
(check-sat b_and!174525 b_and!174527 (not b_next!65243) (not b_next!65241))
