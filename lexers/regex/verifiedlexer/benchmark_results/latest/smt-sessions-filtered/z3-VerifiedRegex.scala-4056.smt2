; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218248 () Bool)

(assert start!218248)

(declare-fun b!2240209 () Bool)

(declare-fun b_free!65025 () Bool)

(declare-fun b_next!65729 () Bool)

(assert (=> b!2240209 (= b_free!65025 (not b_next!65729))))

(declare-fun tp!705913 () Bool)

(declare-fun b_and!175037 () Bool)

(assert (=> b!2240209 (= tp!705913 b_and!175037)))

(declare-fun b!2240212 () Bool)

(declare-fun b_free!65027 () Bool)

(declare-fun b_next!65731 () Bool)

(assert (=> b!2240212 (= b_free!65027 (not b_next!65731))))

(declare-fun tp!705912 () Bool)

(declare-fun b_and!175039 () Bool)

(assert (=> b!2240212 (= tp!705912 b_and!175039)))

(declare-fun b!2240202 () Bool)

(declare-fun e!1432206 () Bool)

(declare-fun tp!705906 () Bool)

(declare-fun mapRes!14732 () Bool)

(assert (=> b!2240202 (= e!1432206 (and tp!705906 mapRes!14732))))

(declare-fun condMapEmpty!14732 () Bool)

(declare-datatypes ((C!13152 0))(
  ( (C!13153 (val!7624 Int)) )
))
(declare-datatypes ((Regex!6503 0))(
  ( (ElementMatch!6503 (c!356748 C!13152)) (Concat!10841 (regOne!13518 Regex!6503) (regTwo!13518 Regex!6503)) (EmptyExpr!6503) (Star!6503 (reg!6832 Regex!6503)) (EmptyLang!6503) (Union!6503 (regOne!13519 Regex!6503) (regTwo!13519 Regex!6503)) )
))
(declare-datatypes ((List!26498 0))(
  ( (Nil!26404) (Cons!26404 (h!31805 Regex!6503) (t!199930 List!26498)) )
))
(declare-datatypes ((Context!4102 0))(
  ( (Context!4103 (exprs!2551 List!26498)) )
))
(declare-datatypes ((tuple3!4078 0))(
  ( (tuple3!4079 (_1!15415 Regex!6503) (_2!15415 Context!4102) (_3!2509 C!13152)) )
))
(declare-datatypes ((Hashable!3051 0))(
  ( (HashableExt!3050 (__x!17649 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25812 0))(
  ( (tuple2!25813 (_1!15416 tuple3!4078) (_2!15416 (InoxSet Context!4102))) )
))
(declare-datatypes ((List!26499 0))(
  ( (Nil!26405) (Cons!26405 (h!31806 tuple2!25812) (t!199931 List!26499)) )
))
(declare-datatypes ((array!10970 0))(
  ( (array!10971 (arr!4869 (Array (_ BitVec 32) List!26499)) (size!20650 (_ BitVec 32))) )
))
(declare-datatypes ((array!10972 0))(
  ( (array!10973 (arr!4870 (Array (_ BitVec 32) (_ BitVec 64))) (size!20651 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6282 0))(
  ( (LongMapFixedSize!6283 (defaultEntry!3506 Int) (mask!7746 (_ BitVec 32)) (extraKeys!3389 (_ BitVec 32)) (zeroValue!3399 List!26499) (minValue!3399 List!26499) (_size!6329 (_ BitVec 32)) (_keys!3438 array!10972) (_values!3421 array!10970) (_vacant!3202 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12381 0))(
  ( (Cell!12382 (v!30029 LongMapFixedSize!6282)) )
))
(declare-datatypes ((MutLongMap!3141 0))(
  ( (LongMap!3141 (underlying!6483 Cell!12381)) (MutLongMapExt!3140 (__x!17650 Int)) )
))
(declare-datatypes ((Cell!12383 0))(
  ( (Cell!12384 (v!30030 MutLongMap!3141)) )
))
(declare-datatypes ((MutableMap!3051 0))(
  ( (MutableMapExt!3050 (__x!17651 Int)) (HashMap!3051 (underlying!6484 Cell!12383) (hashF!4974 Hashable!3051) (_size!6330 (_ BitVec 32)) (defaultValue!3213 Int)) )
))
(declare-datatypes ((CacheDown!2148 0))(
  ( (CacheDown!2149 (cache!3432 MutableMap!3051)) )
))
(declare-fun thiss!28743 () CacheDown!2148)

(declare-fun mapDefault!14732 () List!26499)

(assert (=> b!2240202 (= condMapEmpty!14732 (= (arr!4869 (_values!3421 (v!30029 (underlying!6483 (v!30030 (underlying!6484 (cache!3432 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26499)) mapDefault!14732)))))

(declare-fun b!2240203 () Bool)

(declare-fun e!1432209 () Bool)

(declare-fun tp!705914 () Bool)

(declare-fun tp!705910 () Bool)

(assert (=> b!2240203 (= e!1432209 (and tp!705914 tp!705910))))

(declare-fun b!2240204 () Bool)

(declare-fun e!1432210 () Bool)

(declare-fun e!1432201 () Bool)

(declare-fun lt!833529 () MutLongMap!3141)

(get-info :version)

(assert (=> b!2240204 (= e!1432210 (and e!1432201 ((_ is LongMap!3141) lt!833529)))))

(assert (=> b!2240204 (= lt!833529 (v!30030 (underlying!6484 (cache!3432 thiss!28743))))))

(declare-fun b!2240205 () Bool)

(declare-fun e!1432208 () Bool)

(declare-fun e!1432203 () Bool)

(assert (=> b!2240205 (= e!1432208 e!1432203)))

(declare-fun b!2240206 () Bool)

(declare-fun ctx!48 () Context!4102)

(declare-fun r!4750 () Regex!6503)

(declare-fun a!970 () C!13152)

(declare-fun lt!833527 () (InoxSet Context!4102))

(declare-fun e!1432212 () Bool)

(declare-fun derivationStepZipperDown!82 (Regex!6503 Context!4102 C!13152) (InoxSet Context!4102))

(assert (=> b!2240206 (= e!1432212 (= (derivationStepZipperDown!82 r!4750 ctx!48 a!970) lt!833527))))

(declare-fun b!2240207 () Bool)

(declare-fun e!1432207 () Bool)

(assert (=> b!2240207 (= e!1432207 (not e!1432212))))

(declare-fun res!957657 () Bool)

(assert (=> b!2240207 (=> (not res!957657) (not e!1432212))))

(declare-fun validRegex!2444 (Regex!6503) Bool)

(assert (=> b!2240207 (= res!957657 (validRegex!2444 r!4750))))

(declare-fun e!1432211 () Bool)

(assert (=> b!2240207 e!1432211))

(declare-fun res!957656 () Bool)

(assert (=> b!2240207 (=> (not res!957656) (not e!1432211))))

(declare-fun lt!833528 () tuple3!4078)

(assert (=> b!2240207 (= res!957656 (validRegex!2444 (_1!15415 lt!833528)))))

(declare-fun apply!6511 (MutableMap!3051 tuple3!4078) (InoxSet Context!4102))

(assert (=> b!2240207 (= lt!833527 (apply!6511 (cache!3432 thiss!28743) lt!833528))))

(declare-datatypes ((Unit!39377 0))(
  ( (Unit!39378) )
))
(declare-fun lt!833526 () Unit!39377)

(declare-fun lambda!84725 () Int)

(declare-fun lemmaForallPairsThenForLookup!32 (MutableMap!3051 tuple3!4078 Int) Unit!39377)

(assert (=> b!2240207 (= lt!833526 (lemmaForallPairsThenForLookup!32 (cache!3432 thiss!28743) lt!833528 lambda!84725))))

(declare-fun b!2240208 () Bool)

(declare-fun e!1432204 () Bool)

(declare-fun tp!705908 () Bool)

(assert (=> b!2240208 (= e!1432204 tp!705908)))

(declare-fun mapNonEmpty!14732 () Bool)

(declare-fun tp!705915 () Bool)

(declare-fun tp!705917 () Bool)

(assert (=> mapNonEmpty!14732 (= mapRes!14732 (and tp!705915 tp!705917))))

(declare-fun mapKey!14732 () (_ BitVec 32))

(declare-fun mapRest!14732 () (Array (_ BitVec 32) List!26499))

(declare-fun mapValue!14732 () List!26499)

(assert (=> mapNonEmpty!14732 (= (arr!4869 (_values!3421 (v!30029 (underlying!6483 (v!30030 (underlying!6484 (cache!3432 thiss!28743))))))) (store mapRest!14732 mapKey!14732 mapValue!14732))))

(declare-fun tp!705909 () Bool)

(declare-fun e!1432205 () Bool)

(declare-fun tp!705911 () Bool)

(declare-fun array_inv!3493 (array!10972) Bool)

(declare-fun array_inv!3494 (array!10970) Bool)

(assert (=> b!2240209 (= e!1432205 (and tp!705913 tp!705911 tp!705909 (array_inv!3493 (_keys!3438 (v!30029 (underlying!6483 (v!30030 (underlying!6484 (cache!3432 thiss!28743))))))) (array_inv!3494 (_values!3421 (v!30029 (underlying!6483 (v!30030 (underlying!6484 (cache!3432 thiss!28743))))))) e!1432206))))

(declare-fun res!957659 () Bool)

(declare-fun e!1432200 () Bool)

(assert (=> start!218248 (=> (not res!957659) (not e!1432200))))

(declare-fun validCacheMapDown!343 (MutableMap!3051) Bool)

(assert (=> start!218248 (= res!957659 (validCacheMapDown!343 (cache!3432 thiss!28743)))))

(assert (=> start!218248 e!1432200))

(declare-fun inv!35860 (CacheDown!2148) Bool)

(assert (=> start!218248 (and (inv!35860 thiss!28743) e!1432208)))

(declare-fun inv!35861 (Context!4102) Bool)

(assert (=> start!218248 (and (inv!35861 ctx!48) e!1432204)))

(assert (=> start!218248 e!1432209))

(declare-fun tp_is_empty!10227 () Bool)

(assert (=> start!218248 tp_is_empty!10227))

(declare-fun b!2240210 () Bool)

(declare-fun tp!705907 () Bool)

(assert (=> b!2240210 (= e!1432209 tp!705907)))

(declare-fun b!2240211 () Bool)

(assert (=> b!2240211 (= e!1432211 (= lt!833527 (derivationStepZipperDown!82 (_1!15415 lt!833528) (_2!15415 lt!833528) (_3!2509 lt!833528))))))

(assert (=> b!2240212 (= e!1432203 (and e!1432210 tp!705912))))

(declare-fun b!2240213 () Bool)

(declare-fun e!1432202 () Bool)

(assert (=> b!2240213 (= e!1432202 e!1432205)))

(declare-fun mapIsEmpty!14732 () Bool)

(assert (=> mapIsEmpty!14732 mapRes!14732))

(declare-fun b!2240214 () Bool)

(declare-fun tp!705916 () Bool)

(declare-fun tp!705918 () Bool)

(assert (=> b!2240214 (= e!1432209 (and tp!705916 tp!705918))))

(declare-fun b!2240215 () Bool)

(assert (=> b!2240215 (= e!1432200 e!1432207)))

(declare-fun res!957658 () Bool)

(assert (=> b!2240215 (=> (not res!957658) (not e!1432207))))

(declare-fun contains!4463 (MutableMap!3051 tuple3!4078) Bool)

(assert (=> b!2240215 (= res!957658 (contains!4463 (cache!3432 thiss!28743) lt!833528))))

(assert (=> b!2240215 (= lt!833528 (tuple3!4079 r!4750 ctx!48 a!970))))

(declare-fun b!2240216 () Bool)

(assert (=> b!2240216 (= e!1432201 e!1432202)))

(declare-fun b!2240217 () Bool)

(assert (=> b!2240217 (= e!1432209 tp_is_empty!10227)))

(assert (= (and start!218248 res!957659) b!2240215))

(assert (= (and b!2240215 res!957658) b!2240207))

(assert (= (and b!2240207 res!957656) b!2240211))

(assert (= (and b!2240207 res!957657) b!2240206))

(assert (= (and b!2240202 condMapEmpty!14732) mapIsEmpty!14732))

(assert (= (and b!2240202 (not condMapEmpty!14732)) mapNonEmpty!14732))

(assert (= b!2240209 b!2240202))

(assert (= b!2240213 b!2240209))

(assert (= b!2240216 b!2240213))

(assert (= (and b!2240204 ((_ is LongMap!3141) (v!30030 (underlying!6484 (cache!3432 thiss!28743))))) b!2240216))

(assert (= b!2240212 b!2240204))

(assert (= (and b!2240205 ((_ is HashMap!3051) (cache!3432 thiss!28743))) b!2240212))

(assert (= start!218248 b!2240205))

(assert (= start!218248 b!2240208))

(assert (= (and start!218248 ((_ is ElementMatch!6503) r!4750)) b!2240217))

(assert (= (and start!218248 ((_ is Concat!10841) r!4750)) b!2240203))

(assert (= (and start!218248 ((_ is Star!6503) r!4750)) b!2240210))

(assert (= (and start!218248 ((_ is Union!6503) r!4750)) b!2240214))

(declare-fun m!2672624 () Bool)

(assert (=> b!2240215 m!2672624))

(declare-fun m!2672626 () Bool)

(assert (=> b!2240207 m!2672626))

(declare-fun m!2672628 () Bool)

(assert (=> b!2240207 m!2672628))

(declare-fun m!2672630 () Bool)

(assert (=> b!2240207 m!2672630))

(declare-fun m!2672632 () Bool)

(assert (=> b!2240207 m!2672632))

(declare-fun m!2672634 () Bool)

(assert (=> b!2240211 m!2672634))

(declare-fun m!2672636 () Bool)

(assert (=> b!2240206 m!2672636))

(declare-fun m!2672638 () Bool)

(assert (=> mapNonEmpty!14732 m!2672638))

(declare-fun m!2672640 () Bool)

(assert (=> start!218248 m!2672640))

(declare-fun m!2672642 () Bool)

(assert (=> start!218248 m!2672642))

(declare-fun m!2672644 () Bool)

(assert (=> start!218248 m!2672644))

(declare-fun m!2672646 () Bool)

(assert (=> b!2240209 m!2672646))

(declare-fun m!2672648 () Bool)

(assert (=> b!2240209 m!2672648))

(check-sat b_and!175037 (not b!2240203) (not b!2240214) (not mapNonEmpty!14732) b_and!175039 (not start!218248) (not b!2240206) tp_is_empty!10227 (not b_next!65729) (not b!2240209) (not b!2240202) (not b!2240207) (not b!2240215) (not b!2240211) (not b!2240210) (not b_next!65731) (not b!2240208))
(check-sat b_and!175037 b_and!175039 (not b_next!65731) (not b_next!65729))
