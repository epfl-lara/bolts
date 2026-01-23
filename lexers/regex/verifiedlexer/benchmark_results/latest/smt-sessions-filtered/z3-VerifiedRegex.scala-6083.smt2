; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296420 () Bool)

(assert start!296420)

(declare-fun b!3162180 () Bool)

(declare-fun b_free!83033 () Bool)

(declare-fun b_next!83737 () Bool)

(assert (=> b!3162180 (= b_free!83033 (not b_next!83737))))

(declare-fun tp!995319 () Bool)

(declare-fun b_and!209279 () Bool)

(assert (=> b!3162180 (= tp!995319 b_and!209279)))

(declare-fun b!3162188 () Bool)

(declare-fun b_free!83035 () Bool)

(declare-fun b_next!83739 () Bool)

(assert (=> b!3162188 (= b_free!83035 (not b_next!83739))))

(declare-fun tp!995323 () Bool)

(declare-fun b_and!209281 () Bool)

(assert (=> b!3162188 (= tp!995323 b_and!209281)))

(declare-fun b!3162178 () Bool)

(declare-fun res!1287297 () Bool)

(declare-fun e!1970011 () Bool)

(assert (=> b!3162178 (=> (not res!1287297) (not e!1970011))))

(declare-datatypes ((C!19620 0))(
  ( (C!19621 (val!11846 Int)) )
))
(declare-datatypes ((Regex!9717 0))(
  ( (ElementMatch!9717 (c!531761 C!19620)) (Concat!15038 (regOne!19946 Regex!9717) (regTwo!19946 Regex!9717)) (EmptyExpr!9717) (Star!9717 (reg!10046 Regex!9717)) (EmptyLang!9717) (Union!9717 (regOne!19947 Regex!9717) (regTwo!19947 Regex!9717)) )
))
(declare-datatypes ((tuple2!34402 0))(
  ( (tuple2!34403 (_1!20333 Regex!9717) (_2!20333 C!19620)) )
))
(declare-datatypes ((tuple2!34404 0))(
  ( (tuple2!34405 (_1!20334 tuple2!34402) (_2!20334 Regex!9717)) )
))
(declare-datatypes ((array!14742 0))(
  ( (array!14743 (arr!6566 (Array (_ BitVec 32) (_ BitVec 64))) (size!26652 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4054 0))(
  ( (HashableExt!4053 (__x!22520 Int)) )
))
(declare-datatypes ((List!35546 0))(
  ( (Nil!35422) (Cons!35422 (h!40842 tuple2!34404) (t!234613 List!35546)) )
))
(declare-datatypes ((array!14744 0))(
  ( (array!14745 (arr!6567 (Array (_ BitVec 32) List!35546)) (size!26653 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8276 0))(
  ( (LongMapFixedSize!8277 (defaultEntry!4523 Int) (mask!10790 (_ BitVec 32)) (extraKeys!4387 (_ BitVec 32)) (zeroValue!4397 List!35546) (minValue!4397 List!35546) (_size!8319 (_ BitVec 32)) (_keys!4438 array!14742) (_values!4419 array!14744) (_vacant!4199 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16361 0))(
  ( (Cell!16362 (v!35066 LongMapFixedSize!8276)) )
))
(declare-datatypes ((MutLongMap!4138 0))(
  ( (LongMap!4138 (underlying!8505 Cell!16361)) (MutLongMapExt!4137 (__x!22521 Int)) )
))
(declare-datatypes ((Cell!16363 0))(
  ( (Cell!16364 (v!35067 MutLongMap!4138)) )
))
(declare-datatypes ((MutableMap!4044 0))(
  ( (MutableMapExt!4043 (__x!22522 Int)) (HashMap!4044 (underlying!8506 Cell!16363) (hashF!6086 Hashable!4054) (_size!8320 (_ BitVec 32)) (defaultValue!4215 Int)) )
))
(declare-datatypes ((Cache!358 0))(
  ( (Cache!359 (cache!4183 MutableMap!4044)) )
))
(declare-fun cache!347 () Cache!358)

(declare-fun valid!3223 (Cache!358) Bool)

(assert (=> b!3162178 (= res!1287297 (valid!3223 cache!347))))

(declare-fun b!3162179 () Bool)

(declare-fun res!1287296 () Bool)

(assert (=> b!3162179 (=> (not res!1287296) (not e!1970011))))

(declare-fun r!13156 () Regex!9717)

(declare-fun a!2409 () C!19620)

(get-info :version)

(declare-datatypes ((Option!6879 0))(
  ( (None!6878) (Some!6878 (v!35068 Regex!9717)) )
))
(declare-fun get!11208 (Cache!358 Regex!9717 C!19620) Option!6879)

(assert (=> b!3162179 (= res!1287296 (not ((_ is Some!6878) (get!11208 cache!347 r!13156 a!2409))))))

(declare-fun e!1970002 () Bool)

(declare-fun e!1970008 () Bool)

(assert (=> b!3162180 (= e!1970002 (and e!1970008 tp!995319))))

(declare-fun b!3162181 () Bool)

(declare-fun e!1970006 () Bool)

(declare-fun tp_is_empty!16997 () Bool)

(assert (=> b!3162181 (= e!1970006 tp_is_empty!16997)))

(declare-fun b!3162182 () Bool)

(declare-fun e!1970004 () Bool)

(declare-fun e!1970005 () Bool)

(assert (=> b!3162182 (= e!1970004 e!1970005)))

(declare-fun b!3162183 () Bool)

(declare-fun tp!995312 () Bool)

(assert (=> b!3162183 (= e!1970006 tp!995312)))

(declare-fun b!3162184 () Bool)

(declare-fun e!1970010 () Bool)

(assert (=> b!3162184 (= e!1970010 e!1970004)))

(declare-fun b!3162185 () Bool)

(declare-fun tp!995322 () Bool)

(declare-fun tp!995321 () Bool)

(assert (=> b!3162185 (= e!1970006 (and tp!995322 tp!995321))))

(declare-fun b!3162186 () Bool)

(declare-fun e!1970009 () Bool)

(declare-fun tp!995316 () Bool)

(declare-fun mapRes!18774 () Bool)

(assert (=> b!3162186 (= e!1970009 (and tp!995316 mapRes!18774))))

(declare-fun condMapEmpty!18774 () Bool)

(declare-fun mapDefault!18774 () List!35546)

(assert (=> b!3162186 (= condMapEmpty!18774 (= (arr!6567 (_values!4419 (v!35066 (underlying!8505 (v!35067 (underlying!8506 (cache!4183 cache!347))))))) ((as const (Array (_ BitVec 32) List!35546)) mapDefault!18774)))))

(declare-fun b!3162187 () Bool)

(declare-fun lt!1063112 () MutLongMap!4138)

(assert (=> b!3162187 (= e!1970008 (and e!1970010 ((_ is LongMap!4138) lt!1063112)))))

(assert (=> b!3162187 (= lt!1063112 (v!35067 (underlying!8506 (cache!4183 cache!347))))))

(declare-fun mapIsEmpty!18774 () Bool)

(assert (=> mapIsEmpty!18774 mapRes!18774))

(declare-fun mapNonEmpty!18774 () Bool)

(declare-fun tp!995318 () Bool)

(declare-fun tp!995320 () Bool)

(assert (=> mapNonEmpty!18774 (= mapRes!18774 (and tp!995318 tp!995320))))

(declare-fun mapValue!18774 () List!35546)

(declare-fun mapRest!18774 () (Array (_ BitVec 32) List!35546))

(declare-fun mapKey!18774 () (_ BitVec 32))

(assert (=> mapNonEmpty!18774 (= (arr!6567 (_values!4419 (v!35066 (underlying!8505 (v!35067 (underlying!8506 (cache!4183 cache!347))))))) (store mapRest!18774 mapKey!18774 mapValue!18774))))

(declare-fun tp!995314 () Bool)

(declare-fun tp!995313 () Bool)

(declare-fun array_inv!4704 (array!14742) Bool)

(declare-fun array_inv!4705 (array!14744) Bool)

(assert (=> b!3162188 (= e!1970005 (and tp!995323 tp!995314 tp!995313 (array_inv!4704 (_keys!4438 (v!35066 (underlying!8505 (v!35067 (underlying!8506 (cache!4183 cache!347))))))) (array_inv!4705 (_values!4419 (v!35066 (underlying!8505 (v!35067 (underlying!8506 (cache!4183 cache!347))))))) e!1970009))))

(declare-fun b!3162189 () Bool)

(declare-fun tp!995317 () Bool)

(declare-fun tp!995315 () Bool)

(assert (=> b!3162189 (= e!1970006 (and tp!995317 tp!995315))))

(declare-fun b!3162190 () Bool)

(declare-fun e!1970007 () Bool)

(assert (=> b!3162190 (= e!1970007 e!1970002)))

(declare-fun res!1287298 () Bool)

(assert (=> start!296420 (=> (not res!1287298) (not e!1970011))))

(declare-fun validRegex!4444 (Regex!9717) Bool)

(assert (=> start!296420 (= res!1287298 (validRegex!4444 r!13156))))

(assert (=> start!296420 e!1970011))

(assert (=> start!296420 e!1970006))

(declare-fun inv!48068 (Cache!358) Bool)

(assert (=> start!296420 (and (inv!48068 cache!347) e!1970007)))

(assert (=> start!296420 tp_is_empty!16997))

(declare-fun b!3162191 () Bool)

(assert (=> b!3162191 (= e!1970011 false)))

(assert (= (and start!296420 res!1287298) b!3162178))

(assert (= (and b!3162178 res!1287297) b!3162179))

(assert (= (and b!3162179 res!1287296) b!3162191))

(assert (= (and start!296420 ((_ is ElementMatch!9717) r!13156)) b!3162181))

(assert (= (and start!296420 ((_ is Concat!15038) r!13156)) b!3162189))

(assert (= (and start!296420 ((_ is Star!9717) r!13156)) b!3162183))

(assert (= (and start!296420 ((_ is Union!9717) r!13156)) b!3162185))

(assert (= (and b!3162186 condMapEmpty!18774) mapIsEmpty!18774))

(assert (= (and b!3162186 (not condMapEmpty!18774)) mapNonEmpty!18774))

(assert (= b!3162188 b!3162186))

(assert (= b!3162182 b!3162188))

(assert (= b!3162184 b!3162182))

(assert (= (and b!3162187 ((_ is LongMap!4138) (v!35067 (underlying!8506 (cache!4183 cache!347))))) b!3162184))

(assert (= b!3162180 b!3162187))

(assert (= (and b!3162190 ((_ is HashMap!4044) (cache!4183 cache!347))) b!3162180))

(assert (= start!296420 b!3162190))

(declare-fun m!3426198 () Bool)

(assert (=> b!3162179 m!3426198))

(declare-fun m!3426200 () Bool)

(assert (=> b!3162178 m!3426200))

(declare-fun m!3426202 () Bool)

(assert (=> start!296420 m!3426202))

(declare-fun m!3426204 () Bool)

(assert (=> start!296420 m!3426204))

(declare-fun m!3426206 () Bool)

(assert (=> b!3162188 m!3426206))

(declare-fun m!3426208 () Bool)

(assert (=> b!3162188 m!3426208))

(declare-fun m!3426210 () Bool)

(assert (=> mapNonEmpty!18774 m!3426210))

(check-sat (not start!296420) (not b!3162179) tp_is_empty!16997 (not b!3162189) b_and!209281 (not b!3162178) (not b_next!83739) (not b!3162185) (not b!3162186) (not b!3162188) (not b!3162183) (not mapNonEmpty!18774) (not b_next!83737) b_and!209279)
(check-sat b_and!209279 b_and!209281 (not b_next!83739) (not b_next!83737))
