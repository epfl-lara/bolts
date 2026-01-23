; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297168 () Bool)

(assert start!297168)

(declare-fun b!3173010 () Bool)

(declare-fun b_free!83345 () Bool)

(declare-fun b_next!84049 () Bool)

(assert (=> b!3173010 (= b_free!83345 (not b_next!84049))))

(declare-fun tp!1002413 () Bool)

(declare-fun b_and!209631 () Bool)

(assert (=> b!3173010 (= tp!1002413 b_and!209631)))

(declare-fun b!3173020 () Bool)

(declare-fun b_free!83347 () Bool)

(declare-fun b_next!84051 () Bool)

(assert (=> b!3173020 (= b_free!83347 (not b_next!84051))))

(declare-fun tp!1002412 () Bool)

(declare-fun b_and!209633 () Bool)

(assert (=> b!3173020 (= tp!1002412 b_and!209633)))

(declare-fun tp!1002410 () Bool)

(declare-fun e!1976265 () Bool)

(declare-datatypes ((C!19776 0))(
  ( (C!19777 (val!11924 Int)) )
))
(declare-datatypes ((Regex!9795 0))(
  ( (ElementMatch!9795 (c!533398 C!19776)) (Concat!15116 (regOne!20102 Regex!9795) (regTwo!20102 Regex!9795)) (EmptyExpr!9795) (Star!9795 (reg!10124 Regex!9795)) (EmptyLang!9795) (Union!9795 (regOne!20103 Regex!9795) (regTwo!20103 Regex!9795)) )
))
(declare-datatypes ((tuple2!34842 0))(
  ( (tuple2!34843 (_1!20553 Regex!9795) (_2!20553 C!19776)) )
))
(declare-datatypes ((tuple2!34844 0))(
  ( (tuple2!34845 (_1!20554 tuple2!34842) (_2!20554 Regex!9795)) )
))
(declare-datatypes ((List!35643 0))(
  ( (Nil!35519) (Cons!35519 (h!40939 tuple2!34844) (t!234730 List!35643)) )
))
(declare-datatypes ((array!15110 0))(
  ( (array!15111 (arr!6722 (Array (_ BitVec 32) (_ BitVec 64))) (size!26808 (_ BitVec 32))) )
))
(declare-datatypes ((array!15112 0))(
  ( (array!15113 (arr!6723 (Array (_ BitVec 32) List!35643)) (size!26809 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8432 0))(
  ( (LongMapFixedSize!8433 (defaultEntry!4601 Int) (mask!10907 (_ BitVec 32)) (extraKeys!4465 (_ BitVec 32)) (zeroValue!4475 List!35643) (minValue!4475 List!35643) (_size!8475 (_ BitVec 32)) (_keys!4516 array!15110) (_values!4497 array!15112) (_vacant!4277 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16673 0))(
  ( (Cell!16674 (v!35283 LongMapFixedSize!8432)) )
))
(declare-datatypes ((MutLongMap!4216 0))(
  ( (LongMap!4216 (underlying!8661 Cell!16673)) (MutLongMapExt!4215 (__x!22754 Int)) )
))
(declare-datatypes ((Cell!16675 0))(
  ( (Cell!16676 (v!35284 MutLongMap!4216)) )
))
(declare-datatypes ((Hashable!4132 0))(
  ( (HashableExt!4131 (__x!22755 Int)) )
))
(declare-datatypes ((MutableMap!4122 0))(
  ( (MutableMapExt!4121 (__x!22756 Int)) (HashMap!4122 (underlying!8662 Cell!16675) (hashF!6164 Hashable!4132) (_size!8476 (_ BitVec 32)) (defaultValue!4293 Int)) )
))
(declare-datatypes ((Cache!514 0))(
  ( (Cache!515 (cache!4268 MutableMap!4122)) )
))
(declare-fun thiss!28499 () Cache!514)

(declare-fun tp!1002409 () Bool)

(declare-fun e!1976266 () Bool)

(declare-fun array_inv!4824 (array!15110) Bool)

(declare-fun array_inv!4825 (array!15112) Bool)

(assert (=> b!3173010 (= e!1976265 (and tp!1002413 tp!1002409 tp!1002410 (array_inv!4824 (_keys!4516 (v!35283 (underlying!8661 (v!35284 (underlying!8662 (cache!4268 thiss!28499))))))) (array_inv!4825 (_values!4497 (v!35283 (underlying!8661 (v!35284 (underlying!8662 (cache!4268 thiss!28499))))))) e!1976266))))

(declare-fun b!3173011 () Bool)

(declare-fun e!1976267 () Bool)

(declare-fun r!4721 () Regex!9795)

(declare-fun c!6988 () C!19776)

(declare-datatypes ((Option!6932 0))(
  ( (None!6931) (Some!6931 (v!35285 Regex!9795)) )
))
(declare-fun get!11299 (Option!6932) Regex!9795)

(declare-fun derivativeStep!2919 (Regex!9795 C!19776) Regex!9795)

(assert (=> b!3173011 (= e!1976267 (not (= (get!11299 None!6931) (derivativeStep!2919 r!4721 c!6988))))))

(declare-fun b!3173012 () Bool)

(declare-fun res!1289493 () Bool)

(assert (=> b!3173012 (=> (not res!1289493) (not e!1976267))))

(declare-fun validCacheMap!98 (MutableMap!4122) Bool)

(assert (=> b!3173012 (= res!1289493 (validCacheMap!98 (cache!4268 thiss!28499)))))

(declare-fun b!3173013 () Bool)

(declare-fun e!1976268 () Bool)

(declare-fun tp_is_empty!17153 () Bool)

(assert (=> b!3173013 (= e!1976268 tp_is_empty!17153)))

(declare-fun b!3173014 () Bool)

(declare-fun e!1976264 () Bool)

(declare-fun e!1976271 () Bool)

(assert (=> b!3173014 (= e!1976264 e!1976271)))

(declare-fun b!3173015 () Bool)

(declare-fun res!1289490 () Bool)

(assert (=> b!3173015 (=> (not res!1289490) (not e!1976267))))

(declare-fun contains!6235 (MutableMap!4122 tuple2!34842) Bool)

(assert (=> b!3173015 (= res!1289490 (not (contains!6235 (cache!4268 thiss!28499) (tuple2!34843 r!4721 c!6988))))))

(declare-fun b!3173016 () Bool)

(declare-fun e!1976263 () Bool)

(declare-fun e!1976269 () Bool)

(declare-fun lt!1066967 () MutLongMap!4216)

(get-info :version)

(assert (=> b!3173016 (= e!1976263 (and e!1976269 ((_ is LongMap!4216) lt!1066967)))))

(assert (=> b!3173016 (= lt!1066967 (v!35284 (underlying!8662 (cache!4268 thiss!28499))))))

(declare-fun b!3173017 () Bool)

(declare-fun tp!1002415 () Bool)

(declare-fun mapRes!19100 () Bool)

(assert (=> b!3173017 (= e!1976266 (and tp!1002415 mapRes!19100))))

(declare-fun condMapEmpty!19100 () Bool)

(declare-fun mapDefault!19100 () List!35643)

(assert (=> b!3173017 (= condMapEmpty!19100 (= (arr!6723 (_values!4497 (v!35283 (underlying!8661 (v!35284 (underlying!8662 (cache!4268 thiss!28499))))))) ((as const (Array (_ BitVec 32) List!35643)) mapDefault!19100)))))

(declare-fun b!3173018 () Bool)

(declare-fun e!1976262 () Bool)

(assert (=> b!3173018 (= e!1976262 e!1976265)))

(declare-fun b!3173019 () Bool)

(declare-fun tp!1002411 () Bool)

(declare-fun tp!1002408 () Bool)

(assert (=> b!3173019 (= e!1976268 (and tp!1002411 tp!1002408))))

(declare-fun mapIsEmpty!19100 () Bool)

(assert (=> mapIsEmpty!19100 mapRes!19100))

(declare-fun b!3173021 () Bool)

(declare-fun tp!1002417 () Bool)

(declare-fun tp!1002407 () Bool)

(assert (=> b!3173021 (= e!1976268 (and tp!1002417 tp!1002407))))

(declare-fun b!3173022 () Bool)

(declare-fun tp!1002416 () Bool)

(assert (=> b!3173022 (= e!1976268 tp!1002416)))

(declare-fun mapNonEmpty!19100 () Bool)

(declare-fun tp!1002414 () Bool)

(declare-fun tp!1002418 () Bool)

(assert (=> mapNonEmpty!19100 (= mapRes!19100 (and tp!1002414 tp!1002418))))

(declare-fun mapValue!19100 () List!35643)

(declare-fun mapKey!19100 () (_ BitVec 32))

(declare-fun mapRest!19100 () (Array (_ BitVec 32) List!35643))

(assert (=> mapNonEmpty!19100 (= (arr!6723 (_values!4497 (v!35283 (underlying!8661 (v!35284 (underlying!8662 (cache!4268 thiss!28499))))))) (store mapRest!19100 mapKey!19100 mapValue!19100))))

(assert (=> b!3173020 (= e!1976271 (and e!1976263 tp!1002412))))

(declare-fun res!1289491 () Bool)

(assert (=> start!297168 (=> (not res!1289491) (not e!1976267))))

(declare-fun validRegex!4500 (Regex!9795) Bool)

(assert (=> start!297168 (= res!1289491 (validRegex!4500 r!4721))))

(assert (=> start!297168 e!1976267))

(assert (=> start!297168 e!1976268))

(declare-fun inv!48242 (Cache!514) Bool)

(assert (=> start!297168 (and (inv!48242 thiss!28499) e!1976264)))

(assert (=> start!297168 tp_is_empty!17153))

(declare-fun b!3173023 () Bool)

(declare-fun res!1289492 () Bool)

(assert (=> b!3173023 (=> (not res!1289492) (not e!1976267))))

(assert (=> b!3173023 (= res!1289492 false)))

(declare-fun b!3173024 () Bool)

(assert (=> b!3173024 (= e!1976269 e!1976262)))

(assert (= (and start!297168 res!1289491) b!3173012))

(assert (= (and b!3173012 res!1289493) b!3173015))

(assert (= (and b!3173015 res!1289490) b!3173023))

(assert (= (and b!3173023 res!1289492) b!3173011))

(assert (= (and start!297168 ((_ is ElementMatch!9795) r!4721)) b!3173013))

(assert (= (and start!297168 ((_ is Concat!15116) r!4721)) b!3173019))

(assert (= (and start!297168 ((_ is Star!9795) r!4721)) b!3173022))

(assert (= (and start!297168 ((_ is Union!9795) r!4721)) b!3173021))

(assert (= (and b!3173017 condMapEmpty!19100) mapIsEmpty!19100))

(assert (= (and b!3173017 (not condMapEmpty!19100)) mapNonEmpty!19100))

(assert (= b!3173010 b!3173017))

(assert (= b!3173018 b!3173010))

(assert (= b!3173024 b!3173018))

(assert (= (and b!3173016 ((_ is LongMap!4216) (v!35284 (underlying!8662 (cache!4268 thiss!28499))))) b!3173024))

(assert (= b!3173020 b!3173016))

(assert (= (and b!3173014 ((_ is HashMap!4122) (cache!4268 thiss!28499))) b!3173020))

(assert (= start!297168 b!3173014))

(declare-fun m!3431042 () Bool)

(assert (=> mapNonEmpty!19100 m!3431042))

(declare-fun m!3431044 () Bool)

(assert (=> b!3173015 m!3431044))

(declare-fun m!3431046 () Bool)

(assert (=> b!3173011 m!3431046))

(declare-fun m!3431048 () Bool)

(assert (=> b!3173011 m!3431048))

(declare-fun m!3431050 () Bool)

(assert (=> start!297168 m!3431050))

(declare-fun m!3431052 () Bool)

(assert (=> start!297168 m!3431052))

(declare-fun m!3431054 () Bool)

(assert (=> b!3173012 m!3431054))

(declare-fun m!3431056 () Bool)

(assert (=> b!3173010 m!3431056))

(declare-fun m!3431058 () Bool)

(assert (=> b!3173010 m!3431058))

(check-sat (not b!3173012) (not b!3173011) (not mapNonEmpty!19100) (not start!297168) (not b!3173021) (not b_next!84049) (not b!3173022) b_and!209633 tp_is_empty!17153 (not b!3173010) (not b!3173017) (not b!3173019) (not b!3173015) b_and!209631 (not b_next!84051))
(check-sat b_and!209633 b_and!209631 (not b_next!84049) (not b_next!84051))
