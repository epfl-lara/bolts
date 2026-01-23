; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218252 () Bool)

(assert start!218252)

(declare-fun b!2240264 () Bool)

(declare-fun b_free!65033 () Bool)

(declare-fun b_next!65737 () Bool)

(assert (=> b!2240264 (= b_free!65033 (not b_next!65737))))

(declare-fun tp!705959 () Bool)

(declare-fun b_and!175045 () Bool)

(assert (=> b!2240264 (= tp!705959 b_and!175045)))

(declare-fun b!2240270 () Bool)

(declare-fun b_free!65035 () Bool)

(declare-fun b_next!65739 () Bool)

(assert (=> b!2240270 (= b_free!65035 (not b_next!65739))))

(declare-fun tp!705965 () Bool)

(declare-fun b_and!175047 () Bool)

(assert (=> b!2240270 (= tp!705965 b_and!175047)))

(declare-fun b!2240263 () Bool)

(declare-fun e!1432270 () Bool)

(assert (=> b!2240263 (= e!1432270 false)))

(declare-fun lt!833541 () Bool)

(declare-datatypes ((C!13156 0))(
  ( (C!13157 (val!7626 Int)) )
))
(declare-fun a!949 () C!13156)

(declare-datatypes ((Regex!6505 0))(
  ( (ElementMatch!6505 (c!356750 C!13156)) (Concat!10843 (regOne!13522 Regex!6505) (regTwo!13522 Regex!6505)) (EmptyExpr!6505) (Star!6505 (reg!6834 Regex!6505)) (EmptyLang!6505) (Union!6505 (regOne!13523 Regex!6505) (regTwo!13523 Regex!6505)) )
))
(declare-datatypes ((List!26502 0))(
  ( (Nil!26408) (Cons!26408 (h!31809 Regex!6505) (t!199934 List!26502)) )
))
(declare-datatypes ((Context!4106 0))(
  ( (Context!4107 (exprs!2553 List!26502)) )
))
(declare-fun ctx!40 () Context!4106)

(declare-datatypes ((tuple2!25818 0))(
  ( (tuple2!25819 (_1!15419 Context!4106) (_2!15419 C!13156)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25820 0))(
  ( (tuple2!25821 (_1!15420 tuple2!25818) (_2!15420 (InoxSet Context!4106))) )
))
(declare-datatypes ((List!26503 0))(
  ( (Nil!26409) (Cons!26409 (h!31810 tuple2!25820) (t!199935 List!26503)) )
))
(declare-datatypes ((array!10978 0))(
  ( (array!10979 (arr!4873 (Array (_ BitVec 32) (_ BitVec 64))) (size!20654 (_ BitVec 32))) )
))
(declare-datatypes ((array!10980 0))(
  ( (array!10981 (arr!4874 (Array (_ BitVec 32) List!26503)) (size!20655 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6286 0))(
  ( (LongMapFixedSize!6287 (defaultEntry!3508 Int) (mask!7749 (_ BitVec 32)) (extraKeys!3391 (_ BitVec 32)) (zeroValue!3401 List!26503) (minValue!3401 List!26503) (_size!6333 (_ BitVec 32)) (_keys!3440 array!10978) (_values!3423 array!10980) (_vacant!3204 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12389 0))(
  ( (Cell!12390 (v!30033 LongMapFixedSize!6286)) )
))
(declare-datatypes ((MutLongMap!3143 0))(
  ( (LongMap!3143 (underlying!6487 Cell!12389)) (MutLongMapExt!3142 (__x!17655 Int)) )
))
(declare-datatypes ((Hashable!3053 0))(
  ( (HashableExt!3052 (__x!17656 Int)) )
))
(declare-datatypes ((Cell!12391 0))(
  ( (Cell!12392 (v!30034 MutLongMap!3143)) )
))
(declare-datatypes ((MutableMap!3053 0))(
  ( (MutableMapExt!3052 (__x!17657 Int)) (HashMap!3053 (underlying!6488 Cell!12391) (hashF!4976 Hashable!3053) (_size!6334 (_ BitVec 32)) (defaultValue!3215 Int)) )
))
(declare-datatypes ((CacheUp!1976 0))(
  ( (CacheUp!1977 (cache!3434 MutableMap!3053)) )
))
(declare-fun thiss!28657 () CacheUp!1976)

(declare-fun contains!4465 (MutableMap!3053 tuple2!25818) Bool)

(assert (=> b!2240263 (= lt!833541 (contains!4465 (cache!3434 thiss!28657) (tuple2!25819 ctx!40 a!949)))))

(declare-fun mapIsEmpty!14738 () Bool)

(declare-fun mapRes!14738 () Bool)

(assert (=> mapIsEmpty!14738 mapRes!14738))

(declare-fun e!1432272 () Bool)

(declare-fun tp!705966 () Bool)

(declare-fun e!1432266 () Bool)

(declare-fun tp!705961 () Bool)

(declare-fun array_inv!3495 (array!10978) Bool)

(declare-fun array_inv!3496 (array!10980) Bool)

(assert (=> b!2240264 (= e!1432272 (and tp!705959 tp!705966 tp!705961 (array_inv!3495 (_keys!3440 (v!30033 (underlying!6487 (v!30034 (underlying!6488 (cache!3434 thiss!28657))))))) (array_inv!3496 (_values!3423 (v!30033 (underlying!6487 (v!30034 (underlying!6488 (cache!3434 thiss!28657))))))) e!1432266))))

(declare-fun mapNonEmpty!14738 () Bool)

(declare-fun tp!705962 () Bool)

(declare-fun tp!705964 () Bool)

(assert (=> mapNonEmpty!14738 (= mapRes!14738 (and tp!705962 tp!705964))))

(declare-fun mapRest!14738 () (Array (_ BitVec 32) List!26503))

(declare-fun mapKey!14738 () (_ BitVec 32))

(declare-fun mapValue!14738 () List!26503)

(assert (=> mapNonEmpty!14738 (= (arr!4874 (_values!3423 (v!30033 (underlying!6487 (v!30034 (underlying!6488 (cache!3434 thiss!28657))))))) (store mapRest!14738 mapKey!14738 mapValue!14738))))

(declare-fun b!2240265 () Bool)

(declare-fun e!1432263 () Bool)

(declare-fun e!1432267 () Bool)

(assert (=> b!2240265 (= e!1432263 e!1432267)))

(declare-fun b!2240266 () Bool)

(declare-fun e!1432269 () Bool)

(assert (=> b!2240266 (= e!1432269 e!1432272)))

(declare-fun b!2240267 () Bool)

(declare-fun e!1432268 () Bool)

(declare-fun tp!705960 () Bool)

(assert (=> b!2240267 (= e!1432268 tp!705960)))

(declare-fun b!2240268 () Bool)

(declare-fun tp!705963 () Bool)

(assert (=> b!2240268 (= e!1432266 (and tp!705963 mapRes!14738))))

(declare-fun condMapEmpty!14738 () Bool)

(declare-fun mapDefault!14738 () List!26503)

(assert (=> b!2240268 (= condMapEmpty!14738 (= (arr!4874 (_values!3423 (v!30033 (underlying!6487 (v!30034 (underlying!6488 (cache!3434 thiss!28657))))))) ((as const (Array (_ BitVec 32) List!26503)) mapDefault!14738)))))

(declare-fun res!957665 () Bool)

(assert (=> start!218252 (=> (not res!957665) (not e!1432270))))

(declare-fun validCacheMapUp!289 (MutableMap!3053) Bool)

(assert (=> start!218252 (= res!957665 (validCacheMapUp!289 (cache!3434 thiss!28657)))))

(assert (=> start!218252 e!1432270))

(declare-fun inv!35865 (CacheUp!1976) Bool)

(assert (=> start!218252 (and (inv!35865 thiss!28657) e!1432263)))

(declare-fun inv!35866 (Context!4106) Bool)

(assert (=> start!218252 (and (inv!35866 ctx!40) e!1432268)))

(declare-fun tp_is_empty!10231 () Bool)

(assert (=> start!218252 tp_is_empty!10231))

(declare-fun b!2240269 () Bool)

(declare-fun e!1432271 () Bool)

(declare-fun e!1432264 () Bool)

(declare-fun lt!833540 () MutLongMap!3143)

(get-info :version)

(assert (=> b!2240269 (= e!1432271 (and e!1432264 ((_ is LongMap!3143) lt!833540)))))

(assert (=> b!2240269 (= lt!833540 (v!30034 (underlying!6488 (cache!3434 thiss!28657))))))

(assert (=> b!2240270 (= e!1432267 (and e!1432271 tp!705965))))

(declare-fun b!2240271 () Bool)

(assert (=> b!2240271 (= e!1432264 e!1432269)))

(assert (= (and start!218252 res!957665) b!2240263))

(assert (= (and b!2240268 condMapEmpty!14738) mapIsEmpty!14738))

(assert (= (and b!2240268 (not condMapEmpty!14738)) mapNonEmpty!14738))

(assert (= b!2240264 b!2240268))

(assert (= b!2240266 b!2240264))

(assert (= b!2240271 b!2240266))

(assert (= (and b!2240269 ((_ is LongMap!3143) (v!30034 (underlying!6488 (cache!3434 thiss!28657))))) b!2240271))

(assert (= b!2240270 b!2240269))

(assert (= (and b!2240265 ((_ is HashMap!3053) (cache!3434 thiss!28657))) b!2240270))

(assert (= start!218252 b!2240265))

(assert (= start!218252 b!2240267))

(declare-fun m!2672664 () Bool)

(assert (=> b!2240263 m!2672664))

(declare-fun m!2672666 () Bool)

(assert (=> b!2240264 m!2672666))

(declare-fun m!2672668 () Bool)

(assert (=> b!2240264 m!2672668))

(declare-fun m!2672670 () Bool)

(assert (=> mapNonEmpty!14738 m!2672670))

(declare-fun m!2672672 () Bool)

(assert (=> start!218252 m!2672672))

(declare-fun m!2672674 () Bool)

(assert (=> start!218252 m!2672674))

(declare-fun m!2672676 () Bool)

(assert (=> start!218252 m!2672676))

(check-sat (not b_next!65737) b_and!175045 (not b!2240268) (not mapNonEmpty!14738) (not b!2240264) (not b_next!65739) tp_is_empty!10231 (not b!2240267) (not b!2240263) b_and!175047 (not start!218252))
(check-sat b_and!175045 b_and!175047 (not b_next!65739) (not b_next!65737))
