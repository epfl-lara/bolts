; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217172 () Bool)

(assert start!217172)

(declare-fun b!2225353 () Bool)

(declare-fun b_free!64513 () Bool)

(declare-fun b_next!65217 () Bool)

(assert (=> b!2225353 (= b_free!64513 (not b_next!65217))))

(declare-fun tp!695059 () Bool)

(declare-fun b_and!174501 () Bool)

(assert (=> b!2225353 (= tp!695059 b_and!174501)))

(declare-fun b!2225355 () Bool)

(declare-fun b_free!64515 () Bool)

(declare-fun b_next!65219 () Bool)

(assert (=> b!2225355 (= b_free!64515 (not b_next!65219))))

(declare-fun tp!695066 () Bool)

(declare-fun b_and!174503 () Bool)

(assert (=> b!2225355 (= tp!695066 b_and!174503)))

(declare-fun b!2225352 () Bool)

(declare-fun res!954390 () Bool)

(declare-fun e!1422062 () Bool)

(assert (=> b!2225352 (=> (not res!954390) (not e!1422062))))

(declare-datatypes ((C!12896 0))(
  ( (C!12897 (val!7496 Int)) )
))
(declare-datatypes ((Regex!6375 0))(
  ( (ElementMatch!6375 (c!355222 C!12896)) (Concat!10713 (regOne!13262 Regex!6375) (regTwo!13262 Regex!6375)) (EmptyExpr!6375) (Star!6375 (reg!6704 Regex!6375)) (EmptyLang!6375) (Union!6375 (regOne!13263 Regex!6375) (regTwo!13263 Regex!6375)) )
))
(declare-datatypes ((List!26220 0))(
  ( (Nil!26126) (Cons!26126 (h!31527 Regex!6375) (t!199632 List!26220)) )
))
(declare-datatypes ((Context!3846 0))(
  ( (Context!3847 (exprs!2423 List!26220)) )
))
(declare-datatypes ((tuple2!25422 0))(
  ( (tuple2!25423 (_1!15095 Context!3846) (_2!15095 C!12896)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25424 0))(
  ( (tuple2!25425 (_1!15096 tuple2!25422) (_2!15096 (InoxSet Context!3846))) )
))
(declare-datatypes ((List!26221 0))(
  ( (Nil!26127) (Cons!26127 (h!31528 tuple2!25424) (t!199633 List!26221)) )
))
(declare-datatypes ((array!10370 0))(
  ( (array!10371 (arr!4613 (Array (_ BitVec 32) (_ BitVec 64))) (size!20394 (_ BitVec 32))) )
))
(declare-datatypes ((array!10372 0))(
  ( (array!10373 (arr!4614 (Array (_ BitVec 32) List!26221)) (size!20395 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6026 0))(
  ( (LongMapFixedSize!6027 (defaultEntry!3378 Int) (mask!7554 (_ BitVec 32)) (extraKeys!3261 (_ BitVec 32)) (zeroValue!3271 List!26221) (minValue!3271 List!26221) (_size!6073 (_ BitVec 32)) (_keys!3310 array!10370) (_values!3293 array!10372) (_vacant!3074 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11869 0))(
  ( (Cell!11870 (v!29690 LongMapFixedSize!6026)) )
))
(declare-datatypes ((MutLongMap!3013 0))(
  ( (LongMap!3013 (underlying!6227 Cell!11869)) (MutLongMapExt!3012 (__x!17265 Int)) )
))
(declare-datatypes ((Cell!11871 0))(
  ( (Cell!11872 (v!29691 MutLongMap!3013)) )
))
(declare-datatypes ((Hashable!2923 0))(
  ( (HashableExt!2922 (__x!17266 Int)) )
))
(declare-datatypes ((MutableMap!2923 0))(
  ( (MutableMapExt!2922 (__x!17267 Int)) (HashMap!2923 (underlying!6228 Cell!11871) (hashF!4846 Hashable!2923) (_size!6074 (_ BitVec 32)) (defaultValue!3085 Int)) )
))
(declare-datatypes ((CacheUp!1968 0))(
  ( (CacheUp!1969 (cache!3304 MutableMap!2923)) )
))
(declare-fun thiss!28682 () CacheUp!1968)

(declare-fun valid!2315 (MutableMap!2923) Bool)

(assert (=> b!2225352 (= res!954390 (valid!2315 (cache!3304 thiss!28682)))))

(declare-fun e!1422066 () Bool)

(declare-fun e!1422063 () Bool)

(assert (=> b!2225353 (= e!1422066 (and e!1422063 tp!695059))))

(declare-fun setElem!19826 () Context!3846)

(declare-fun setNonEmpty!19826 () Bool)

(declare-fun tp!695068 () Bool)

(declare-fun setRes!19826 () Bool)

(declare-fun e!1422064 () Bool)

(declare-fun inv!35472 (Context!3846) Bool)

(assert (=> setNonEmpty!19826 (= setRes!19826 (and tp!695068 (inv!35472 setElem!19826) e!1422064))))

(declare-fun res!14206 () (InoxSet Context!3846))

(declare-fun setRest!19826 () (InoxSet Context!3846))

(assert (=> setNonEmpty!19826 (= res!14206 ((_ map or) (store ((as const (Array Context!3846 Bool)) false) setElem!19826 true) setRest!19826))))

(declare-fun b!2225354 () Bool)

(declare-fun e!1422061 () Bool)

(declare-fun lt!829820 () MutLongMap!3013)

(get-info :version)

(assert (=> b!2225354 (= e!1422063 (and e!1422061 ((_ is LongMap!3013) lt!829820)))))

(assert (=> b!2225354 (= lt!829820 (v!29691 (underlying!6228 (cache!3304 thiss!28682))))))

(declare-fun tp!695064 () Bool)

(declare-fun e!1422068 () Bool)

(declare-fun e!1422067 () Bool)

(declare-fun tp!695063 () Bool)

(declare-fun array_inv!3315 (array!10370) Bool)

(declare-fun array_inv!3316 (array!10372) Bool)

(assert (=> b!2225355 (= e!1422068 (and tp!695066 tp!695064 tp!695063 (array_inv!3315 (_keys!3310 (v!29690 (underlying!6227 (v!29691 (underlying!6228 (cache!3304 thiss!28682))))))) (array_inv!3316 (_values!3293 (v!29690 (underlying!6227 (v!29691 (underlying!6228 (cache!3304 thiss!28682))))))) e!1422067))))

(declare-fun b!2225356 () Bool)

(declare-fun res!954389 () Bool)

(assert (=> b!2225356 (=> (not res!954389) (not e!1422062))))

(assert (=> b!2225356 (= res!954389 ((_ is HashMap!2923) (cache!3304 thiss!28682)))))

(declare-fun b!2225357 () Bool)

(declare-fun tp!695067 () Bool)

(declare-fun mapRes!14211 () Bool)

(assert (=> b!2225357 (= e!1422067 (and tp!695067 mapRes!14211))))

(declare-fun condMapEmpty!14211 () Bool)

(declare-fun mapDefault!14211 () List!26221)

(assert (=> b!2225357 (= condMapEmpty!14211 (= (arr!4614 (_values!3293 (v!29690 (underlying!6227 (v!29691 (underlying!6228 (cache!3304 thiss!28682))))))) ((as const (Array (_ BitVec 32) List!26221)) mapDefault!14211)))))

(declare-fun b!2225358 () Bool)

(declare-fun res!954391 () Bool)

(assert (=> b!2225358 (=> (not res!954391) (not e!1422062))))

(declare-fun lambda!84166 () Int)

(declare-fun forall!5339 (List!26221 Int) Bool)

(declare-datatypes ((ListMap!787 0))(
  ( (ListMap!788 (toList!1320 List!26221)) )
))
(declare-fun map!5329 (MutableMap!2923) ListMap!787)

(assert (=> b!2225358 (= res!954391 (forall!5339 (toList!1320 (map!5329 (cache!3304 thiss!28682))) lambda!84166))))

(declare-fun b!2225359 () Bool)

(declare-fun e!1422065 () Bool)

(assert (=> b!2225359 (= e!1422061 e!1422065)))

(declare-fun mapIsEmpty!14211 () Bool)

(assert (=> mapIsEmpty!14211 mapRes!14211))

(declare-fun b!2225360 () Bool)

(declare-fun e!1422058 () Bool)

(assert (=> b!2225360 (= e!1422058 e!1422066)))

(declare-fun b!2225361 () Bool)

(declare-fun res!954392 () Bool)

(assert (=> b!2225361 (=> (not res!954392) (not e!1422062))))

(declare-fun ctx!44 () Context!3846)

(declare-fun a!962 () C!12896)

(declare-fun derivationStepZipperUp!37 (Context!3846 C!12896) (InoxSet Context!3846))

(assert (=> b!2225361 (= res!954392 (= res!14206 (derivationStepZipperUp!37 ctx!44 a!962)))))

(declare-fun b!2225362 () Bool)

(declare-fun e!1422059 () Bool)

(declare-fun tp!695061 () Bool)

(assert (=> b!2225362 (= e!1422059 tp!695061)))

(declare-fun setIsEmpty!19826 () Bool)

(assert (=> setIsEmpty!19826 setRes!19826))

(declare-fun res!954388 () Bool)

(assert (=> start!217172 (=> (not res!954388) (not e!1422062))))

(declare-fun validCacheMapUp!287 (MutableMap!2923) Bool)

(assert (=> start!217172 (= res!954388 (validCacheMapUp!287 (cache!3304 thiss!28682)))))

(assert (=> start!217172 e!1422062))

(declare-fun inv!35473 (CacheUp!1968) Bool)

(assert (=> start!217172 (and (inv!35473 thiss!28682) e!1422058)))

(declare-fun condSetEmpty!19826 () Bool)

(assert (=> start!217172 (= condSetEmpty!19826 (= res!14206 ((as const (Array Context!3846 Bool)) false)))))

(assert (=> start!217172 setRes!19826))

(assert (=> start!217172 (and (inv!35472 ctx!44) e!1422059)))

(declare-fun tp_is_empty!9975 () Bool)

(assert (=> start!217172 tp_is_empty!9975))

(declare-fun b!2225363 () Bool)

(assert (=> b!2225363 (= e!1422062 (not (= res!14206 (derivationStepZipperUp!37 ctx!44 a!962))))))

(declare-fun b!2225364 () Bool)

(declare-fun tp!695062 () Bool)

(assert (=> b!2225364 (= e!1422064 tp!695062)))

(declare-fun b!2225365 () Bool)

(assert (=> b!2225365 (= e!1422065 e!1422068)))

(declare-fun mapNonEmpty!14211 () Bool)

(declare-fun tp!695065 () Bool)

(declare-fun tp!695060 () Bool)

(assert (=> mapNonEmpty!14211 (= mapRes!14211 (and tp!695065 tp!695060))))

(declare-fun mapRest!14211 () (Array (_ BitVec 32) List!26221))

(declare-fun mapValue!14211 () List!26221)

(declare-fun mapKey!14211 () (_ BitVec 32))

(assert (=> mapNonEmpty!14211 (= (arr!4614 (_values!3293 (v!29690 (underlying!6227 (v!29691 (underlying!6228 (cache!3304 thiss!28682))))))) (store mapRest!14211 mapKey!14211 mapValue!14211))))

(assert (= (and start!217172 res!954388) b!2225361))

(assert (= (and b!2225361 res!954392) b!2225356))

(assert (= (and b!2225356 res!954389) b!2225352))

(assert (= (and b!2225352 res!954390) b!2225358))

(assert (= (and b!2225358 res!954391) b!2225363))

(assert (= (and b!2225357 condMapEmpty!14211) mapIsEmpty!14211))

(assert (= (and b!2225357 (not condMapEmpty!14211)) mapNonEmpty!14211))

(assert (= b!2225355 b!2225357))

(assert (= b!2225365 b!2225355))

(assert (= b!2225359 b!2225365))

(assert (= (and b!2225354 ((_ is LongMap!3013) (v!29691 (underlying!6228 (cache!3304 thiss!28682))))) b!2225359))

(assert (= b!2225353 b!2225354))

(assert (= (and b!2225360 ((_ is HashMap!2923) (cache!3304 thiss!28682))) b!2225353))

(assert (= start!217172 b!2225360))

(assert (= (and start!217172 condSetEmpty!19826) setIsEmpty!19826))

(assert (= (and start!217172 (not condSetEmpty!19826)) setNonEmpty!19826))

(assert (= setNonEmpty!19826 b!2225364))

(assert (= start!217172 b!2225362))

(declare-fun m!2665066 () Bool)

(assert (=> b!2225355 m!2665066))

(declare-fun m!2665068 () Bool)

(assert (=> b!2225355 m!2665068))

(declare-fun m!2665070 () Bool)

(assert (=> b!2225363 m!2665070))

(declare-fun m!2665072 () Bool)

(assert (=> start!217172 m!2665072))

(declare-fun m!2665074 () Bool)

(assert (=> start!217172 m!2665074))

(declare-fun m!2665076 () Bool)

(assert (=> start!217172 m!2665076))

(declare-fun m!2665078 () Bool)

(assert (=> setNonEmpty!19826 m!2665078))

(declare-fun m!2665080 () Bool)

(assert (=> b!2225352 m!2665080))

(declare-fun m!2665082 () Bool)

(assert (=> b!2225358 m!2665082))

(declare-fun m!2665084 () Bool)

(assert (=> b!2225358 m!2665084))

(assert (=> b!2225361 m!2665070))

(declare-fun m!2665086 () Bool)

(assert (=> mapNonEmpty!14211 m!2665086))

(check-sat (not b!2225357) b_and!174501 tp_is_empty!9975 (not b!2225362) b_and!174503 (not b!2225364) (not b!2225361) (not start!217172) (not mapNonEmpty!14211) (not b!2225355) (not b_next!65217) (not b_next!65219) (not b!2225363) (not b!2225352) (not b!2225358) (not setNonEmpty!19826))
(check-sat b_and!174501 b_and!174503 (not b_next!65217) (not b_next!65219))
