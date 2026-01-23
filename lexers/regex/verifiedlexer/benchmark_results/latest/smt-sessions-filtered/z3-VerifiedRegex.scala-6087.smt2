; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296500 () Bool)

(assert start!296500)

(declare-fun b!3163290 () Bool)

(declare-fun b_free!83065 () Bool)

(declare-fun b_next!83769 () Bool)

(assert (=> b!3163290 (= b_free!83065 (not b_next!83769))))

(declare-fun tp!996040 () Bool)

(declare-fun b_and!209315 () Bool)

(assert (=> b!3163290 (= tp!996040 b_and!209315)))

(declare-fun b!3163300 () Bool)

(declare-fun b_free!83067 () Bool)

(declare-fun b_next!83771 () Bool)

(assert (=> b!3163300 (= b_free!83067 (not b_next!83771))))

(declare-fun tp!996038 () Bool)

(declare-fun b_and!209317 () Bool)

(assert (=> b!3163300 (= tp!996038 b_and!209317)))

(declare-fun b!3163287 () Bool)

(declare-fun e!1970652 () Bool)

(declare-fun tp!996032 () Bool)

(declare-fun tp!996033 () Bool)

(assert (=> b!3163287 (= e!1970652 (and tp!996032 tp!996033))))

(declare-fun b!3163288 () Bool)

(declare-fun e!1970653 () Bool)

(assert (=> b!3163288 (= e!1970653 false)))

(declare-fun b!3163289 () Bool)

(declare-fun e!1970648 () Bool)

(declare-fun e!1970649 () Bool)

(assert (=> b!3163289 (= e!1970648 e!1970649)))

(declare-fun mapNonEmpty!18808 () Bool)

(declare-fun mapRes!18808 () Bool)

(declare-fun tp!996043 () Bool)

(declare-fun tp!996037 () Bool)

(assert (=> mapNonEmpty!18808 (= mapRes!18808 (and tp!996043 tp!996037))))

(declare-datatypes ((C!19636 0))(
  ( (C!19637 (val!11854 Int)) )
))
(declare-datatypes ((Regex!9725 0))(
  ( (ElementMatch!9725 (c!531913 C!19636)) (Concat!15046 (regOne!19962 Regex!9725) (regTwo!19962 Regex!9725)) (EmptyExpr!9725) (Star!9725 (reg!10054 Regex!9725)) (EmptyLang!9725) (Union!9725 (regOne!19963 Regex!9725) (regTwo!19963 Regex!9725)) )
))
(declare-datatypes ((tuple2!34448 0))(
  ( (tuple2!34449 (_1!20356 Regex!9725) (_2!20356 C!19636)) )
))
(declare-datatypes ((tuple2!34450 0))(
  ( (tuple2!34451 (_1!20357 tuple2!34448) (_2!20357 Regex!9725)) )
))
(declare-datatypes ((List!35555 0))(
  ( (Nil!35431) (Cons!35431 (h!40851 tuple2!34450) (t!234624 List!35555)) )
))
(declare-fun mapValue!18808 () List!35555)

(declare-datatypes ((array!14780 0))(
  ( (array!14781 (arr!6582 (Array (_ BitVec 32) (_ BitVec 64))) (size!26668 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4062 0))(
  ( (HashableExt!4061 (__x!22544 Int)) )
))
(declare-datatypes ((array!14782 0))(
  ( (array!14783 (arr!6583 (Array (_ BitVec 32) List!35555)) (size!26669 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8292 0))(
  ( (LongMapFixedSize!8293 (defaultEntry!4531 Int) (mask!10802 (_ BitVec 32)) (extraKeys!4395 (_ BitVec 32)) (zeroValue!4405 List!35555) (minValue!4405 List!35555) (_size!8335 (_ BitVec 32)) (_keys!4446 array!14780) (_values!4427 array!14782) (_vacant!4207 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16393 0))(
  ( (Cell!16394 (v!35089 LongMapFixedSize!8292)) )
))
(declare-datatypes ((MutLongMap!4146 0))(
  ( (LongMap!4146 (underlying!8521 Cell!16393)) (MutLongMapExt!4145 (__x!22545 Int)) )
))
(declare-datatypes ((Cell!16395 0))(
  ( (Cell!16396 (v!35090 MutLongMap!4146)) )
))
(declare-datatypes ((MutableMap!4052 0))(
  ( (MutableMapExt!4051 (__x!22546 Int)) (HashMap!4052 (underlying!8522 Cell!16395) (hashF!6094 Hashable!4062) (_size!8336 (_ BitVec 32)) (defaultValue!4223 Int)) )
))
(declare-datatypes ((Cache!374 0))(
  ( (Cache!375 (cache!4193 MutableMap!4052)) )
))
(declare-fun cache!347 () Cache!374)

(declare-fun mapRest!18808 () (Array (_ BitVec 32) List!35555))

(declare-fun mapKey!18808 () (_ BitVec 32))

(assert (=> mapNonEmpty!18808 (= (arr!6583 (_values!4427 (v!35089 (underlying!8521 (v!35090 (underlying!8522 (cache!4193 cache!347))))))) (store mapRest!18808 mapKey!18808 mapValue!18808))))

(declare-fun e!1970651 () Bool)

(declare-fun tp!996036 () Bool)

(declare-fun tp!996035 () Bool)

(declare-fun e!1970650 () Bool)

(declare-fun array_inv!4716 (array!14780) Bool)

(declare-fun array_inv!4717 (array!14782) Bool)

(assert (=> b!3163290 (= e!1970651 (and tp!996040 tp!996035 tp!996036 (array_inv!4716 (_keys!4446 (v!35089 (underlying!8521 (v!35090 (underlying!8522 (cache!4193 cache!347))))))) (array_inv!4717 (_values!4427 (v!35089 (underlying!8521 (v!35090 (underlying!8522 (cache!4193 cache!347))))))) e!1970650))))

(declare-fun b!3163291 () Bool)

(declare-fun res!1287561 () Bool)

(assert (=> b!3163291 (=> (not res!1287561) (not e!1970653))))

(declare-fun valid!3229 (Cache!374) Bool)

(assert (=> b!3163291 (= res!1287561 (valid!3229 cache!347))))

(declare-fun res!1287560 () Bool)

(assert (=> start!296500 (=> (not res!1287560) (not e!1970653))))

(declare-fun r!13156 () Regex!9725)

(declare-fun validRegex!4451 (Regex!9725) Bool)

(assert (=> start!296500 (= res!1287560 (validRegex!4451 r!13156))))

(assert (=> start!296500 e!1970653))

(assert (=> start!296500 e!1970652))

(declare-fun inv!48086 (Cache!374) Bool)

(assert (=> start!296500 (and (inv!48086 cache!347) e!1970648)))

(declare-fun tp_is_empty!17013 () Bool)

(assert (=> start!296500 tp_is_empty!17013))

(declare-fun b!3163292 () Bool)

(declare-fun e!1970655 () Bool)

(declare-fun e!1970646 () Bool)

(declare-fun lt!1063433 () MutLongMap!4146)

(get-info :version)

(assert (=> b!3163292 (= e!1970655 (and e!1970646 ((_ is LongMap!4146) lt!1063433)))))

(assert (=> b!3163292 (= lt!1063433 (v!35090 (underlying!8522 (cache!4193 cache!347))))))

(declare-fun b!3163293 () Bool)

(declare-fun tp!996042 () Bool)

(assert (=> b!3163293 (= e!1970652 tp!996042)))

(declare-fun b!3163294 () Bool)

(declare-fun tp!996041 () Bool)

(declare-fun tp!996039 () Bool)

(assert (=> b!3163294 (= e!1970652 (and tp!996041 tp!996039))))

(declare-fun b!3163295 () Bool)

(assert (=> b!3163295 (= e!1970652 tp_is_empty!17013)))

(declare-fun b!3163296 () Bool)

(declare-fun e!1970654 () Bool)

(assert (=> b!3163296 (= e!1970654 e!1970651)))

(declare-fun b!3163297 () Bool)

(declare-fun tp!996034 () Bool)

(assert (=> b!3163297 (= e!1970650 (and tp!996034 mapRes!18808))))

(declare-fun condMapEmpty!18808 () Bool)

(declare-fun mapDefault!18808 () List!35555)

(assert (=> b!3163297 (= condMapEmpty!18808 (= (arr!6583 (_values!4427 (v!35089 (underlying!8521 (v!35090 (underlying!8522 (cache!4193 cache!347))))))) ((as const (Array (_ BitVec 32) List!35555)) mapDefault!18808)))))

(declare-fun b!3163298 () Bool)

(assert (=> b!3163298 (= e!1970646 e!1970654)))

(declare-fun b!3163299 () Bool)

(declare-fun res!1287559 () Bool)

(assert (=> b!3163299 (=> (not res!1287559) (not e!1970653))))

(declare-fun a!2409 () C!19636)

(declare-datatypes ((Option!6886 0))(
  ( (None!6885) (Some!6885 (v!35091 Regex!9725)) )
))
(declare-fun get!11221 (Cache!374 Regex!9725 C!19636) Option!6886)

(assert (=> b!3163299 (= res!1287559 (not ((_ is Some!6885) (get!11221 cache!347 r!13156 a!2409))))))

(declare-fun mapIsEmpty!18808 () Bool)

(assert (=> mapIsEmpty!18808 mapRes!18808))

(assert (=> b!3163300 (= e!1970649 (and e!1970655 tp!996038))))

(assert (= (and start!296500 res!1287560) b!3163291))

(assert (= (and b!3163291 res!1287561) b!3163299))

(assert (= (and b!3163299 res!1287559) b!3163288))

(assert (= (and start!296500 ((_ is ElementMatch!9725) r!13156)) b!3163295))

(assert (= (and start!296500 ((_ is Concat!15046) r!13156)) b!3163287))

(assert (= (and start!296500 ((_ is Star!9725) r!13156)) b!3163293))

(assert (= (and start!296500 ((_ is Union!9725) r!13156)) b!3163294))

(assert (= (and b!3163297 condMapEmpty!18808) mapIsEmpty!18808))

(assert (= (and b!3163297 (not condMapEmpty!18808)) mapNonEmpty!18808))

(assert (= b!3163290 b!3163297))

(assert (= b!3163296 b!3163290))

(assert (= b!3163298 b!3163296))

(assert (= (and b!3163292 ((_ is LongMap!4146) (v!35090 (underlying!8522 (cache!4193 cache!347))))) b!3163298))

(assert (= b!3163300 b!3163292))

(assert (= (and b!3163289 ((_ is HashMap!4052) (cache!4193 cache!347))) b!3163300))

(assert (= start!296500 b!3163289))

(declare-fun m!3426707 () Bool)

(assert (=> b!3163299 m!3426707))

(declare-fun m!3426709 () Bool)

(assert (=> b!3163291 m!3426709))

(declare-fun m!3426711 () Bool)

(assert (=> mapNonEmpty!18808 m!3426711))

(declare-fun m!3426713 () Bool)

(assert (=> b!3163290 m!3426713))

(declare-fun m!3426715 () Bool)

(assert (=> b!3163290 m!3426715))

(declare-fun m!3426717 () Bool)

(assert (=> start!296500 m!3426717))

(declare-fun m!3426719 () Bool)

(assert (=> start!296500 m!3426719))

(check-sat (not start!296500) (not b!3163293) (not b!3163287) tp_is_empty!17013 (not mapNonEmpty!18808) (not b_next!83769) (not b!3163297) (not b!3163294) (not b!3163290) b_and!209317 b_and!209315 (not b!3163299) (not b_next!83771) (not b!3163291))
(check-sat b_and!209317 b_and!209315 (not b_next!83769) (not b_next!83771))
