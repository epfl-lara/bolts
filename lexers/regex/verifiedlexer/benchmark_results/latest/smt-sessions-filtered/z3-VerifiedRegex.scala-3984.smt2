; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217034 () Bool)

(assert start!217034)

(declare-fun b!2224103 () Bool)

(declare-fun b_free!64449 () Bool)

(declare-fun b_next!65153 () Bool)

(assert (=> b!2224103 (= b_free!64449 (not b_next!65153))))

(declare-fun tp!694194 () Bool)

(declare-fun b_and!174437 () Bool)

(assert (=> b!2224103 (= tp!694194 b_and!174437)))

(declare-fun b!2224102 () Bool)

(declare-fun b_free!64451 () Bool)

(declare-fun b_next!65155 () Bool)

(assert (=> b!2224102 (= b_free!64451 (not b_next!65155))))

(declare-fun tp!694198 () Bool)

(declare-fun b_and!174439 () Bool)

(assert (=> b!2224102 (= tp!694198 b_and!174439)))

(declare-datatypes ((C!12864 0))(
  ( (C!12865 (val!7480 Int)) )
))
(declare-datatypes ((Regex!6359 0))(
  ( (ElementMatch!6359 (c!355107 C!12864)) (Concat!10697 (regOne!13230 Regex!6359) (regTwo!13230 Regex!6359)) (EmptyExpr!6359) (Star!6359 (reg!6688 Regex!6359)) (EmptyLang!6359) (Union!6359 (regOne!13231 Regex!6359) (regTwo!13231 Regex!6359)) )
))
(declare-datatypes ((List!26183 0))(
  ( (Nil!26089) (Cons!26089 (h!31490 Regex!6359) (t!199595 List!26183)) )
))
(declare-datatypes ((Context!3814 0))(
  ( (Context!3815 (exprs!2407 List!26183)) )
))
(declare-fun context!72 () Context!3814)

(declare-fun a!1149 () C!12864)

(declare-datatypes ((array!10294 0))(
  ( (array!10295 (arr!4581 (Array (_ BitVec 32) (_ BitVec 64))) (size!20362 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!25324 0))(
  ( (tuple2!25325 (_1!15046 Context!3814) (_2!15046 C!12864)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25326 0))(
  ( (tuple2!25327 (_1!15047 tuple2!25324) (_2!15047 (InoxSet Context!3814))) )
))
(declare-datatypes ((List!26184 0))(
  ( (Nil!26090) (Cons!26090 (h!31491 tuple2!25326) (t!199596 List!26184)) )
))
(declare-datatypes ((array!10296 0))(
  ( (array!10297 (arr!4582 (Array (_ BitVec 32) List!26184)) (size!20363 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5994 0))(
  ( (LongMapFixedSize!5995 (defaultEntry!3362 Int) (mask!7530 (_ BitVec 32)) (extraKeys!3245 (_ BitVec 32)) (zeroValue!3255 List!26184) (minValue!3255 List!26184) (_size!6041 (_ BitVec 32)) (_keys!3294 array!10294) (_values!3277 array!10296) (_vacant!3058 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11805 0))(
  ( (Cell!11806 (v!29651 LongMapFixedSize!5994)) )
))
(declare-datatypes ((MutLongMap!2997 0))(
  ( (LongMap!2997 (underlying!6195 Cell!11805)) (MutLongMapExt!2996 (__x!17217 Int)) )
))
(declare-datatypes ((Cell!11807 0))(
  ( (Cell!11808 (v!29652 MutLongMap!2997)) )
))
(declare-datatypes ((Hashable!2907 0))(
  ( (HashableExt!2906 (__x!17218 Int)) )
))
(declare-datatypes ((MutableMap!2907 0))(
  ( (MutableMapExt!2906 (__x!17219 Int)) (HashMap!2907 (underlying!6196 Cell!11807) (hashF!4830 Hashable!2907) (_size!6042 (_ BitVec 32)) (defaultValue!3069 Int)) )
))
(declare-datatypes ((CacheUp!1936 0))(
  ( (CacheUp!1937 (cache!3288 MutableMap!2907)) )
))
(declare-fun cacheUp!790 () CacheUp!1936)

(declare-datatypes ((Option!5076 0))(
  ( (None!5075) (Some!5075 (v!29653 (InoxSet Context!3814))) )
))
(declare-fun lt!829163 () Option!5076)

(declare-fun get!7843 (CacheUp!1936 Context!3814 C!12864) Option!5076)

(assert (=> start!217034 (= lt!829163 (get!7843 cacheUp!790 context!72 a!1149))))

(assert (=> start!217034 false))

(declare-fun e!1421039 () Bool)

(declare-fun inv!35421 (CacheUp!1936) Bool)

(assert (=> start!217034 (and (inv!35421 cacheUp!790) e!1421039)))

(declare-fun e!1421038 () Bool)

(declare-fun inv!35422 (Context!3814) Bool)

(assert (=> start!217034 (and (inv!35422 context!72) e!1421038)))

(declare-fun tp_is_empty!9943 () Bool)

(assert (=> start!217034 tp_is_empty!9943))

(declare-fun b!2224098 () Bool)

(declare-fun e!1421043 () Bool)

(declare-fun e!1421044 () Bool)

(declare-fun lt!829162 () MutLongMap!2997)

(get-info :version)

(assert (=> b!2224098 (= e!1421043 (and e!1421044 ((_ is LongMap!2997) lt!829162)))))

(assert (=> b!2224098 (= lt!829162 (v!29652 (underlying!6196 (cache!3288 cacheUp!790))))))

(declare-fun mapNonEmpty!14145 () Bool)

(declare-fun mapRes!14145 () Bool)

(declare-fun tp!694196 () Bool)

(declare-fun tp!694197 () Bool)

(assert (=> mapNonEmpty!14145 (= mapRes!14145 (and tp!694196 tp!694197))))

(declare-fun mapKey!14145 () (_ BitVec 32))

(declare-fun mapRest!14145 () (Array (_ BitVec 32) List!26184))

(declare-fun mapValue!14145 () List!26184)

(assert (=> mapNonEmpty!14145 (= (arr!4582 (_values!3277 (v!29651 (underlying!6195 (v!29652 (underlying!6196 (cache!3288 cacheUp!790))))))) (store mapRest!14145 mapKey!14145 mapValue!14145))))

(declare-fun b!2224099 () Bool)

(declare-fun tp!694195 () Bool)

(assert (=> b!2224099 (= e!1421038 tp!694195)))

(declare-fun b!2224100 () Bool)

(declare-fun e!1421040 () Bool)

(declare-fun tp!694192 () Bool)

(assert (=> b!2224100 (= e!1421040 (and tp!694192 mapRes!14145))))

(declare-fun condMapEmpty!14145 () Bool)

(declare-fun mapDefault!14145 () List!26184)

(assert (=> b!2224100 (= condMapEmpty!14145 (= (arr!4582 (_values!3277 (v!29651 (underlying!6195 (v!29652 (underlying!6196 (cache!3288 cacheUp!790))))))) ((as const (Array (_ BitVec 32) List!26184)) mapDefault!14145)))))

(declare-fun b!2224101 () Bool)

(declare-fun e!1421037 () Bool)

(assert (=> b!2224101 (= e!1421039 e!1421037)))

(assert (=> b!2224102 (= e!1421037 (and e!1421043 tp!694198))))

(declare-fun tp!694191 () Bool)

(declare-fun e!1421045 () Bool)

(declare-fun tp!694193 () Bool)

(declare-fun array_inv!3291 (array!10294) Bool)

(declare-fun array_inv!3292 (array!10296) Bool)

(assert (=> b!2224103 (= e!1421045 (and tp!694194 tp!694193 tp!694191 (array_inv!3291 (_keys!3294 (v!29651 (underlying!6195 (v!29652 (underlying!6196 (cache!3288 cacheUp!790))))))) (array_inv!3292 (_values!3277 (v!29651 (underlying!6195 (v!29652 (underlying!6196 (cache!3288 cacheUp!790))))))) e!1421040))))

(declare-fun b!2224104 () Bool)

(declare-fun e!1421041 () Bool)

(assert (=> b!2224104 (= e!1421041 e!1421045)))

(declare-fun mapIsEmpty!14145 () Bool)

(assert (=> mapIsEmpty!14145 mapRes!14145))

(declare-fun b!2224105 () Bool)

(assert (=> b!2224105 (= e!1421044 e!1421041)))

(assert (= (and b!2224100 condMapEmpty!14145) mapIsEmpty!14145))

(assert (= (and b!2224100 (not condMapEmpty!14145)) mapNonEmpty!14145))

(assert (= b!2224103 b!2224100))

(assert (= b!2224104 b!2224103))

(assert (= b!2224105 b!2224104))

(assert (= (and b!2224098 ((_ is LongMap!2997) (v!29652 (underlying!6196 (cache!3288 cacheUp!790))))) b!2224105))

(assert (= b!2224102 b!2224098))

(assert (= (and b!2224101 ((_ is HashMap!2907) (cache!3288 cacheUp!790))) b!2224102))

(assert (= start!217034 b!2224101))

(assert (= start!217034 b!2224099))

(declare-fun m!2664104 () Bool)

(assert (=> start!217034 m!2664104))

(declare-fun m!2664106 () Bool)

(assert (=> start!217034 m!2664106))

(declare-fun m!2664108 () Bool)

(assert (=> start!217034 m!2664108))

(declare-fun m!2664110 () Bool)

(assert (=> mapNonEmpty!14145 m!2664110))

(declare-fun m!2664112 () Bool)

(assert (=> b!2224103 m!2664112))

(declare-fun m!2664114 () Bool)

(assert (=> b!2224103 m!2664114))

(check-sat (not mapNonEmpty!14145) (not start!217034) b_and!174439 (not b_next!65153) b_and!174437 (not b_next!65155) (not b!2224099) tp_is_empty!9943 (not b!2224103) (not b!2224100))
(check-sat b_and!174439 b_and!174437 (not b_next!65155) (not b_next!65153))
