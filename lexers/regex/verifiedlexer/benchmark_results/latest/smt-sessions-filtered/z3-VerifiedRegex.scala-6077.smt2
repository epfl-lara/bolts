; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296324 () Bool)

(assert start!296324)

(declare-fun b!3160844 () Bool)

(declare-fun b_free!82985 () Bool)

(declare-fun b_next!83689 () Bool)

(assert (=> b!3160844 (= b_free!82985 (not b_next!83689))))

(declare-fun tp!994376 () Bool)

(declare-fun b_and!209227 () Bool)

(assert (=> b!3160844 (= tp!994376 b_and!209227)))

(declare-fun b!3160840 () Bool)

(declare-fun b_free!82987 () Bool)

(declare-fun b_next!83691 () Bool)

(assert (=> b!3160840 (= b_free!82987 (not b_next!83691))))

(declare-fun tp!994379 () Bool)

(declare-fun b_and!209229 () Bool)

(assert (=> b!3160840 (= tp!994379 b_and!209229)))

(declare-fun b!3160834 () Bool)

(declare-fun e!1969206 () Bool)

(declare-fun tp!994382 () Bool)

(assert (=> b!3160834 (= e!1969206 tp!994382)))

(declare-fun mapIsEmpty!18725 () Bool)

(declare-fun mapRes!18725 () Bool)

(assert (=> mapIsEmpty!18725 mapRes!18725))

(declare-fun b!3160835 () Bool)

(declare-fun e!1969200 () Bool)

(declare-fun e!1969207 () Bool)

(declare-datatypes ((C!19596 0))(
  ( (C!19597 (val!11834 Int)) )
))
(declare-datatypes ((Regex!9705 0))(
  ( (ElementMatch!9705 (c!531596 C!19596)) (Concat!15026 (regOne!19922 Regex!9705) (regTwo!19922 Regex!9705)) (EmptyExpr!9705) (Star!9705 (reg!10034 Regex!9705)) (EmptyLang!9705) (Union!9705 (regOne!19923 Regex!9705) (regTwo!19923 Regex!9705)) )
))
(declare-datatypes ((tuple2!34338 0))(
  ( (tuple2!34339 (_1!20301 Regex!9705) (_2!20301 C!19596)) )
))
(declare-datatypes ((tuple2!34340 0))(
  ( (tuple2!34341 (_1!20302 tuple2!34338) (_2!20302 Regex!9705)) )
))
(declare-datatypes ((array!14686 0))(
  ( (array!14687 (arr!6542 (Array (_ BitVec 32) (_ BitVec 64))) (size!26628 (_ BitVec 32))) )
))
(declare-datatypes ((List!35533 0))(
  ( (Nil!35409) (Cons!35409 (h!40829 tuple2!34340) (t!234598 List!35533)) )
))
(declare-datatypes ((array!14688 0))(
  ( (array!14689 (arr!6543 (Array (_ BitVec 32) List!35533)) (size!26629 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8252 0))(
  ( (LongMapFixedSize!8253 (defaultEntry!4511 Int) (mask!10772 (_ BitVec 32)) (extraKeys!4375 (_ BitVec 32)) (zeroValue!4385 List!35533) (minValue!4385 List!35533) (_size!8295 (_ BitVec 32)) (_keys!4426 array!14686) (_values!4407 array!14688) (_vacant!4187 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16313 0))(
  ( (Cell!16314 (v!35032 LongMapFixedSize!8252)) )
))
(declare-datatypes ((MutLongMap!4126 0))(
  ( (LongMap!4126 (underlying!8481 Cell!16313)) (MutLongMapExt!4125 (__x!22484 Int)) )
))
(declare-fun lt!1062773 () MutLongMap!4126)

(get-info :version)

(assert (=> b!3160835 (= e!1969200 (and e!1969207 ((_ is LongMap!4126) lt!1062773)))))

(declare-datatypes ((Hashable!4042 0))(
  ( (HashableExt!4041 (__x!22485 Int)) )
))
(declare-datatypes ((Cell!16315 0))(
  ( (Cell!16316 (v!35033 MutLongMap!4126)) )
))
(declare-datatypes ((MutableMap!4032 0))(
  ( (MutableMapExt!4031 (__x!22486 Int)) (HashMap!4032 (underlying!8482 Cell!16315) (hashF!6074 Hashable!4042) (_size!8296 (_ BitVec 32)) (defaultValue!4203 Int)) )
))
(declare-datatypes ((Cache!334 0))(
  ( (Cache!335 (cache!4169 MutableMap!4032)) )
))
(declare-fun cache!347 () Cache!334)

(assert (=> b!3160835 (= lt!1062773 (v!35033 (underlying!8482 (cache!4169 cache!347))))))

(declare-fun b!3160836 () Bool)

(declare-fun tp!994380 () Bool)

(declare-fun tp!994378 () Bool)

(assert (=> b!3160836 (= e!1969206 (and tp!994380 tp!994378))))

(declare-fun b!3160837 () Bool)

(declare-fun res!1286994 () Bool)

(declare-fun e!1969209 () Bool)

(assert (=> b!3160837 (=> (not res!1286994) (not e!1969209))))

(declare-fun valid!3213 (Cache!334) Bool)

(assert (=> b!3160837 (= res!1286994 (valid!3213 cache!347))))

(declare-fun b!3160838 () Bool)

(declare-fun e!1969204 () Bool)

(assert (=> b!3160838 (= e!1969207 e!1969204)))

(declare-fun res!1286993 () Bool)

(assert (=> start!296324 (=> (not res!1286993) (not e!1969209))))

(declare-fun r!13156 () Regex!9705)

(declare-fun validRegex!4435 (Regex!9705) Bool)

(assert (=> start!296324 (= res!1286993 (validRegex!4435 r!13156))))

(assert (=> start!296324 e!1969209))

(assert (=> start!296324 e!1969206))

(declare-fun e!1969202 () Bool)

(declare-fun inv!48041 (Cache!334) Bool)

(assert (=> start!296324 (and (inv!48041 cache!347) e!1969202)))

(declare-fun tp_is_empty!16973 () Bool)

(assert (=> start!296324 tp_is_empty!16973))

(declare-fun b!3160839 () Bool)

(declare-fun res!1286992 () Bool)

(assert (=> b!3160839 (=> (not res!1286992) (not e!1969209))))

(declare-fun a!2409 () C!19596)

(declare-datatypes ((Option!6869 0))(
  ( (None!6868) (Some!6868 (v!35034 Regex!9705)) )
))
(declare-fun get!11189 (Cache!334 Regex!9705 C!19596) Option!6869)

(assert (=> b!3160839 (= res!1286992 (not ((_ is Some!6868) (get!11189 cache!347 r!13156 a!2409))))))

(declare-fun e!1969201 () Bool)

(assert (=> b!3160840 (= e!1969201 (and e!1969200 tp!994379))))

(declare-fun b!3160841 () Bool)

(declare-fun e!1969205 () Bool)

(declare-fun tp!994383 () Bool)

(assert (=> b!3160841 (= e!1969205 (and tp!994383 mapRes!18725))))

(declare-fun condMapEmpty!18725 () Bool)

(declare-fun mapDefault!18725 () List!35533)

(assert (=> b!3160841 (= condMapEmpty!18725 (= (arr!6543 (_values!4407 (v!35032 (underlying!8481 (v!35033 (underlying!8482 (cache!4169 cache!347))))))) ((as const (Array (_ BitVec 32) List!35533)) mapDefault!18725)))))

(declare-fun b!3160842 () Bool)

(assert (=> b!3160842 (= e!1969202 e!1969201)))

(declare-fun b!3160843 () Bool)

(assert (=> b!3160843 (= e!1969209 false)))

(declare-fun mapNonEmpty!18725 () Bool)

(declare-fun tp!994374 () Bool)

(declare-fun tp!994385 () Bool)

(assert (=> mapNonEmpty!18725 (= mapRes!18725 (and tp!994374 tp!994385))))

(declare-fun mapValue!18725 () List!35533)

(declare-fun mapRest!18725 () (Array (_ BitVec 32) List!35533))

(declare-fun mapKey!18725 () (_ BitVec 32))

(assert (=> mapNonEmpty!18725 (= (arr!6543 (_values!4407 (v!35032 (underlying!8481 (v!35033 (underlying!8482 (cache!4169 cache!347))))))) (store mapRest!18725 mapKey!18725 mapValue!18725))))

(declare-fun tp!994381 () Bool)

(declare-fun e!1969203 () Bool)

(declare-fun tp!994375 () Bool)

(declare-fun array_inv!4686 (array!14686) Bool)

(declare-fun array_inv!4687 (array!14688) Bool)

(assert (=> b!3160844 (= e!1969203 (and tp!994376 tp!994375 tp!994381 (array_inv!4686 (_keys!4426 (v!35032 (underlying!8481 (v!35033 (underlying!8482 (cache!4169 cache!347))))))) (array_inv!4687 (_values!4407 (v!35032 (underlying!8481 (v!35033 (underlying!8482 (cache!4169 cache!347))))))) e!1969205))))

(declare-fun b!3160845 () Bool)

(declare-fun tp!994377 () Bool)

(declare-fun tp!994384 () Bool)

(assert (=> b!3160845 (= e!1969206 (and tp!994377 tp!994384))))

(declare-fun b!3160846 () Bool)

(assert (=> b!3160846 (= e!1969204 e!1969203)))

(declare-fun b!3160847 () Bool)

(assert (=> b!3160847 (= e!1969206 tp_is_empty!16973)))

(assert (= (and start!296324 res!1286993) b!3160837))

(assert (= (and b!3160837 res!1286994) b!3160839))

(assert (= (and b!3160839 res!1286992) b!3160843))

(assert (= (and start!296324 ((_ is ElementMatch!9705) r!13156)) b!3160847))

(assert (= (and start!296324 ((_ is Concat!15026) r!13156)) b!3160845))

(assert (= (and start!296324 ((_ is Star!9705) r!13156)) b!3160834))

(assert (= (and start!296324 ((_ is Union!9705) r!13156)) b!3160836))

(assert (= (and b!3160841 condMapEmpty!18725) mapIsEmpty!18725))

(assert (= (and b!3160841 (not condMapEmpty!18725)) mapNonEmpty!18725))

(assert (= b!3160844 b!3160841))

(assert (= b!3160846 b!3160844))

(assert (= b!3160838 b!3160846))

(assert (= (and b!3160835 ((_ is LongMap!4126) (v!35033 (underlying!8482 (cache!4169 cache!347))))) b!3160838))

(assert (= b!3160840 b!3160835))

(assert (= (and b!3160842 ((_ is HashMap!4032) (cache!4169 cache!347))) b!3160840))

(assert (= start!296324 b!3160842))

(declare-fun m!3425615 () Bool)

(assert (=> b!3160844 m!3425615))

(declare-fun m!3425617 () Bool)

(assert (=> b!3160844 m!3425617))

(declare-fun m!3425619 () Bool)

(assert (=> b!3160837 m!3425619))

(declare-fun m!3425621 () Bool)

(assert (=> b!3160839 m!3425621))

(declare-fun m!3425623 () Bool)

(assert (=> start!296324 m!3425623))

(declare-fun m!3425625 () Bool)

(assert (=> start!296324 m!3425625))

(declare-fun m!3425627 () Bool)

(assert (=> mapNonEmpty!18725 m!3425627))

(check-sat (not b!3160834) (not b!3160836) b_and!209227 (not b!3160839) (not b!3160841) tp_is_empty!16973 (not b!3160845) b_and!209229 (not mapNonEmpty!18725) (not start!296324) (not b!3160844) (not b_next!83689) (not b_next!83691) (not b!3160837))
(check-sat b_and!209229 b_and!209227 (not b_next!83689) (not b_next!83691))
