; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218100 () Bool)

(assert start!218100)

(declare-fun b!2238338 () Bool)

(declare-fun b_free!64953 () Bool)

(declare-fun b_next!65657 () Bool)

(assert (=> b!2238338 (= b_free!64953 (not b_next!65657))))

(declare-fun tp!704476 () Bool)

(declare-fun b_and!174957 () Bool)

(assert (=> b!2238338 (= tp!704476 b_and!174957)))

(declare-fun b!2238340 () Bool)

(declare-fun b_free!64955 () Bool)

(declare-fun b_next!65659 () Bool)

(assert (=> b!2238340 (= b_free!64955 (not b_next!65659))))

(declare-fun tp!704479 () Bool)

(declare-fun b_and!174959 () Bool)

(assert (=> b!2238340 (= tp!704479 b_and!174959)))

(declare-fun mapIsEmpty!14657 () Bool)

(declare-fun mapRes!14657 () Bool)

(assert (=> mapIsEmpty!14657 mapRes!14657))

(declare-fun b!2238331 () Bool)

(declare-fun e!1430871 () Bool)

(declare-fun e!1430872 () Bool)

(assert (=> b!2238331 (= e!1430871 e!1430872)))

(declare-fun res!957254 () Bool)

(declare-fun e!1430868 () Bool)

(assert (=> start!218100 (=> (not res!957254) (not e!1430868))))

(declare-datatypes ((C!13116 0))(
  ( (C!13117 (val!7606 Int)) )
))
(declare-datatypes ((Regex!6485 0))(
  ( (ElementMatch!6485 (c!356582 C!13116)) (Concat!10823 (regOne!13482 Regex!6485) (regTwo!13482 Regex!6485)) (EmptyExpr!6485) (Star!6485 (reg!6814 Regex!6485)) (EmptyLang!6485) (Union!6485 (regOne!13483 Regex!6485) (regTwo!13483 Regex!6485)) )
))
(declare-datatypes ((List!26455 0))(
  ( (Nil!26361) (Cons!26361 (h!31762 Regex!6485) (t!199883 List!26455)) )
))
(declare-datatypes ((Context!4066 0))(
  ( (Context!4067 (exprs!2533 List!26455)) )
))
(declare-datatypes ((tuple3!4042 0))(
  ( (tuple3!4043 (_1!15372 Regex!6485) (_2!15372 Context!4066) (_3!2491 C!13116)) )
))
(declare-datatypes ((Hashable!3033 0))(
  ( (HashableExt!3032 (__x!17595 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25762 0))(
  ( (tuple2!25763 (_1!15373 tuple3!4042) (_2!15373 (InoxSet Context!4066))) )
))
(declare-datatypes ((List!26456 0))(
  ( (Nil!26362) (Cons!26362 (h!31763 tuple2!25762) (t!199884 List!26456)) )
))
(declare-datatypes ((array!10884 0))(
  ( (array!10885 (arr!4833 (Array (_ BitVec 32) List!26456)) (size!20614 (_ BitVec 32))) )
))
(declare-datatypes ((array!10886 0))(
  ( (array!10887 (arr!4834 (Array (_ BitVec 32) (_ BitVec 64))) (size!20615 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6246 0))(
  ( (LongMapFixedSize!6247 (defaultEntry!3488 Int) (mask!7719 (_ BitVec 32)) (extraKeys!3371 (_ BitVec 32)) (zeroValue!3381 List!26456) (minValue!3381 List!26456) (_size!6293 (_ BitVec 32)) (_keys!3420 array!10886) (_values!3403 array!10884) (_vacant!3184 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12309 0))(
  ( (Cell!12310 (v!29977 LongMapFixedSize!6246)) )
))
(declare-datatypes ((MutLongMap!3123 0))(
  ( (LongMap!3123 (underlying!6447 Cell!12309)) (MutLongMapExt!3122 (__x!17596 Int)) )
))
(declare-datatypes ((Cell!12311 0))(
  ( (Cell!12312 (v!29978 MutLongMap!3123)) )
))
(declare-datatypes ((MutableMap!3033 0))(
  ( (MutableMapExt!3032 (__x!17597 Int)) (HashMap!3033 (underlying!6448 Cell!12311) (hashF!4956 Hashable!3033) (_size!6294 (_ BitVec 32)) (defaultValue!3195 Int)) )
))
(declare-datatypes ((CacheDown!2112 0))(
  ( (CacheDown!2113 (cache!3414 MutableMap!3033)) )
))
(declare-fun thiss!28743 () CacheDown!2112)

(declare-fun validCacheMapDown!330 (MutableMap!3033) Bool)

(assert (=> start!218100 (= res!957254 (validCacheMapDown!330 (cache!3414 thiss!28743)))))

(assert (=> start!218100 e!1430868))

(declare-fun inv!35807 (CacheDown!2112) Bool)

(assert (=> start!218100 (and (inv!35807 thiss!28743) e!1430871)))

(declare-fun ctx!48 () Context!4066)

(declare-fun e!1430869 () Bool)

(declare-fun inv!35808 (Context!4066) Bool)

(assert (=> start!218100 (and (inv!35808 ctx!48) e!1430869)))

(declare-fun e!1430865 () Bool)

(assert (=> start!218100 e!1430865))

(declare-fun tp_is_empty!10191 () Bool)

(assert (=> start!218100 tp_is_empty!10191))

(declare-fun b!2238332 () Bool)

(declare-fun e!1430864 () Bool)

(declare-fun tp!704488 () Bool)

(assert (=> b!2238332 (= e!1430864 (and tp!704488 mapRes!14657))))

(declare-fun condMapEmpty!14657 () Bool)

(declare-fun mapDefault!14657 () List!26456)

(assert (=> b!2238332 (= condMapEmpty!14657 (= (arr!4833 (_values!3403 (v!29977 (underlying!6447 (v!29978 (underlying!6448 (cache!3414 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26456)) mapDefault!14657)))))

(declare-fun b!2238333 () Bool)

(declare-fun tp!704486 () Bool)

(assert (=> b!2238333 (= e!1430865 tp!704486)))

(declare-fun mapNonEmpty!14657 () Bool)

(declare-fun tp!704482 () Bool)

(declare-fun tp!704478 () Bool)

(assert (=> mapNonEmpty!14657 (= mapRes!14657 (and tp!704482 tp!704478))))

(declare-fun mapRest!14657 () (Array (_ BitVec 32) List!26456))

(declare-fun mapKey!14657 () (_ BitVec 32))

(declare-fun mapValue!14657 () List!26456)

(assert (=> mapNonEmpty!14657 (= (arr!4833 (_values!3403 (v!29977 (underlying!6447 (v!29978 (underlying!6448 (cache!3414 thiss!28743))))))) (store mapRest!14657 mapKey!14657 mapValue!14657))))

(declare-fun b!2238334 () Bool)

(assert (=> b!2238334 (= e!1430865 tp_is_empty!10191)))

(declare-fun b!2238335 () Bool)

(declare-fun e!1430860 () Bool)

(declare-fun e!1430862 () Bool)

(assert (=> b!2238335 (= e!1430860 e!1430862)))

(declare-fun b!2238336 () Bool)

(declare-fun tp!704477 () Bool)

(declare-fun tp!704480 () Bool)

(assert (=> b!2238336 (= e!1430865 (and tp!704477 tp!704480))))

(declare-fun b!2238337 () Bool)

(declare-fun e!1430861 () Bool)

(assert (=> b!2238337 (= e!1430868 e!1430861)))

(declare-fun res!957255 () Bool)

(assert (=> b!2238337 (=> (not res!957255) (not e!1430861))))

(declare-fun lt!832739 () tuple3!4042)

(declare-fun contains!4424 (MutableMap!3033 tuple3!4042) Bool)

(assert (=> b!2238337 (= res!957255 (contains!4424 (cache!3414 thiss!28743) lt!832739))))

(declare-fun r!4750 () Regex!6485)

(declare-fun a!970 () C!13116)

(assert (=> b!2238337 (= lt!832739 (tuple3!4043 r!4750 ctx!48 a!970))))

(declare-fun e!1430867 () Bool)

(declare-fun tp!704484 () Bool)

(declare-fun tp!704483 () Bool)

(declare-fun array_inv!3473 (array!10886) Bool)

(declare-fun array_inv!3474 (array!10884) Bool)

(assert (=> b!2238338 (= e!1430867 (and tp!704476 tp!704484 tp!704483 (array_inv!3473 (_keys!3420 (v!29977 (underlying!6447 (v!29978 (underlying!6448 (cache!3414 thiss!28743))))))) (array_inv!3474 (_values!3403 (v!29977 (underlying!6447 (v!29978 (underlying!6448 (cache!3414 thiss!28743))))))) e!1430864))))

(declare-fun b!2238339 () Bool)

(declare-fun tp!704487 () Bool)

(assert (=> b!2238339 (= e!1430869 tp!704487)))

(declare-fun e!1430863 () Bool)

(assert (=> b!2238340 (= e!1430872 (and e!1430863 tp!704479))))

(declare-fun b!2238341 () Bool)

(assert (=> b!2238341 (= e!1430861 (not true))))

(declare-fun e!1430870 () Bool)

(assert (=> b!2238341 e!1430870))

(declare-fun res!957256 () Bool)

(assert (=> b!2238341 (=> (not res!957256) (not e!1430870))))

(declare-fun validRegex!2439 (Regex!6485) Bool)

(assert (=> b!2238341 (= res!957256 (validRegex!2439 (_1!15372 lt!832739)))))

(declare-fun lt!832744 () (InoxSet Context!4066))

(declare-fun apply!6492 (MutableMap!3033 tuple3!4042) (InoxSet Context!4066))

(assert (=> b!2238341 (= lt!832744 (apply!6492 (cache!3414 thiss!28743) lt!832739))))

(declare-fun lt!832745 () tuple2!25762)

(assert (=> b!2238341 (= lt!832745 (tuple2!25763 lt!832739 (apply!6492 (cache!3414 thiss!28743) lt!832739)))))

(declare-datatypes ((Unit!39320 0))(
  ( (Unit!39321) )
))
(declare-fun lt!832741 () Unit!39320)

(declare-fun lambda!84612 () Int)

(declare-fun lemmaForallPairsThenForLookup!28 (MutableMap!3033 tuple3!4042 Int) Unit!39320)

(assert (=> b!2238341 (= lt!832741 (lemmaForallPairsThenForLookup!28 (cache!3414 thiss!28743) lt!832739 lambda!84612))))

(declare-fun b!2238342 () Bool)

(declare-fun derivationStepZipperDown!76 (Regex!6485 Context!4066 C!13116) (InoxSet Context!4066))

(assert (=> b!2238342 (= e!1430870 (= (apply!6492 (cache!3414 thiss!28743) lt!832739) (derivationStepZipperDown!76 (_1!15372 lt!832739) (_2!15372 lt!832739) (_3!2491 lt!832739))))))

(declare-fun lt!832740 () (InoxSet Context!4066))

(assert (=> b!2238342 (= lt!832740 (apply!6492 (cache!3414 thiss!28743) lt!832739))))

(declare-fun lt!832742 () (InoxSet Context!4066))

(assert (=> b!2238342 (= lt!832742 (apply!6492 (cache!3414 thiss!28743) lt!832739))))

(declare-fun lt!832743 () (InoxSet Context!4066))

(assert (=> b!2238342 (= lt!832743 (apply!6492 (cache!3414 thiss!28743) lt!832739))))

(declare-fun lt!832738 () tuple3!4042)

(assert (=> b!2238342 (= lt!832738 lt!832739)))

(declare-fun b!2238343 () Bool)

(declare-fun tp!704485 () Bool)

(declare-fun tp!704481 () Bool)

(assert (=> b!2238343 (= e!1430865 (and tp!704485 tp!704481))))

(declare-fun b!2238344 () Bool)

(declare-fun lt!832746 () MutLongMap!3123)

(get-info :version)

(assert (=> b!2238344 (= e!1430863 (and e!1430860 ((_ is LongMap!3123) lt!832746)))))

(assert (=> b!2238344 (= lt!832746 (v!29978 (underlying!6448 (cache!3414 thiss!28743))))))

(declare-fun b!2238345 () Bool)

(assert (=> b!2238345 (= e!1430862 e!1430867)))

(assert (= (and start!218100 res!957254) b!2238337))

(assert (= (and b!2238337 res!957255) b!2238341))

(assert (= (and b!2238341 res!957256) b!2238342))

(assert (= (and b!2238332 condMapEmpty!14657) mapIsEmpty!14657))

(assert (= (and b!2238332 (not condMapEmpty!14657)) mapNonEmpty!14657))

(assert (= b!2238338 b!2238332))

(assert (= b!2238345 b!2238338))

(assert (= b!2238335 b!2238345))

(assert (= (and b!2238344 ((_ is LongMap!3123) (v!29978 (underlying!6448 (cache!3414 thiss!28743))))) b!2238335))

(assert (= b!2238340 b!2238344))

(assert (= (and b!2238331 ((_ is HashMap!3033) (cache!3414 thiss!28743))) b!2238340))

(assert (= start!218100 b!2238331))

(assert (= start!218100 b!2238339))

(assert (= (and start!218100 ((_ is ElementMatch!6485) r!4750)) b!2238334))

(assert (= (and start!218100 ((_ is Concat!10823) r!4750)) b!2238336))

(assert (= (and start!218100 ((_ is Star!6485) r!4750)) b!2238333))

(assert (= (and start!218100 ((_ is Union!6485) r!4750)) b!2238343))

(declare-fun m!2671465 () Bool)

(assert (=> b!2238337 m!2671465))

(declare-fun m!2671467 () Bool)

(assert (=> start!218100 m!2671467))

(declare-fun m!2671469 () Bool)

(assert (=> start!218100 m!2671469))

(declare-fun m!2671471 () Bool)

(assert (=> start!218100 m!2671471))

(declare-fun m!2671473 () Bool)

(assert (=> b!2238338 m!2671473))

(declare-fun m!2671475 () Bool)

(assert (=> b!2238338 m!2671475))

(declare-fun m!2671477 () Bool)

(assert (=> b!2238341 m!2671477))

(declare-fun m!2671479 () Bool)

(assert (=> b!2238341 m!2671479))

(declare-fun m!2671481 () Bool)

(assert (=> b!2238341 m!2671481))

(assert (=> b!2238342 m!2671479))

(declare-fun m!2671483 () Bool)

(assert (=> b!2238342 m!2671483))

(declare-fun m!2671485 () Bool)

(assert (=> mapNonEmpty!14657 m!2671485))

(check-sat (not start!218100) (not b!2238341) (not b!2238337) (not b!2238333) (not b!2238342) tp_is_empty!10191 b_and!174957 (not mapNonEmpty!14657) (not b!2238339) (not b_next!65659) (not b!2238336) (not b_next!65657) (not b!2238338) (not b!2238332) (not b!2238343) b_and!174959)
(check-sat b_and!174957 b_and!174959 (not b_next!65659) (not b_next!65657))
