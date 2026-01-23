; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12054 () Bool)

(assert start!12054)

(declare-fun b!118968 () Bool)

(declare-fun b_free!3801 () Bool)

(declare-fun b_next!3801 () Bool)

(assert (=> b!118968 (= b_free!3801 (not b_next!3801))))

(declare-fun tp!65310 () Bool)

(declare-fun b_and!5931 () Bool)

(assert (=> b!118968 (= tp!65310 b_and!5931)))

(declare-fun b!118965 () Bool)

(declare-fun b_free!3803 () Bool)

(declare-fun b_next!3803 () Bool)

(assert (=> b!118965 (= b_free!3803 (not b_next!3803))))

(declare-fun tp!65307 () Bool)

(declare-fun b_and!5933 () Bool)

(assert (=> b!118965 (= tp!65307 b_and!5933)))

(declare-fun b!118957 () Bool)

(declare-fun e!67876 () Bool)

(declare-fun e!67869 () Bool)

(assert (=> b!118957 (= e!67876 e!67869)))

(declare-fun b!118958 () Bool)

(declare-fun e!67879 () Bool)

(declare-fun e!67882 () Bool)

(declare-datatypes ((C!1976 0))(
  ( (C!1977 (val!714 Int)) )
))
(declare-datatypes ((Regex!527 0))(
  ( (ElementMatch!527 (c!26801 C!1976)) (Concat!911 (regOne!1566 Regex!527) (regTwo!1566 Regex!527)) (EmptyExpr!527) (Star!527 (reg!856 Regex!527)) (EmptyLang!527) (Union!527 (regOne!1567 Regex!527) (regTwo!1567 Regex!527)) )
))
(declare-datatypes ((tuple2!2232 0))(
  ( (tuple2!2233 (_1!1326 Regex!527) (_2!1326 C!1976)) )
))
(declare-datatypes ((tuple2!2234 0))(
  ( (tuple2!2235 (_1!1327 tuple2!2232) (_2!1327 Regex!527)) )
))
(declare-datatypes ((List!1967 0))(
  ( (Nil!1961) (Cons!1961 (h!7358 tuple2!2234) (t!22444 List!1967)) )
))
(declare-datatypes ((array!1437 0))(
  ( (array!1438 (arr!670 (Array (_ BitVec 32) (_ BitVec 64))) (size!1799 (_ BitVec 32))) )
))
(declare-datatypes ((array!1439 0))(
  ( (array!1440 (arr!671 (Array (_ BitVec 32) List!1967)) (size!1800 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!786 0))(
  ( (LongMapFixedSize!787 (defaultEntry!732 Int) (mask!1324 (_ BitVec 32)) (extraKeys!639 (_ BitVec 32)) (zeroValue!649 List!1967) (minValue!649 List!1967) (_size!919 (_ BitVec 32)) (_keys!684 array!1437) (_values!671 array!1439) (_vacant!454 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1561 0))(
  ( (Cell!1562 (v!13317 LongMapFixedSize!786)) )
))
(declare-datatypes ((MutLongMap!393 0))(
  ( (LongMap!393 (underlying!985 Cell!1561)) (MutLongMapExt!392 (__x!2104 Int)) )
))
(declare-fun lt!35206 () MutLongMap!393)

(get-info :version)

(assert (=> b!118958 (= e!67879 (and e!67882 ((_ is LongMap!393) lt!35206)))))

(declare-datatypes ((Hashable!389 0))(
  ( (HashableExt!388 (__x!2105 Int)) )
))
(declare-datatypes ((Cell!1563 0))(
  ( (Cell!1564 (v!13318 MutLongMap!393)) )
))
(declare-datatypes ((MutableMap!389 0))(
  ( (MutableMapExt!388 (__x!2106 Int)) (HashMap!389 (underlying!986 Cell!1563) (hashF!2265 Hashable!389) (_size!920 (_ BitVec 32)) (defaultValue!538 Int)) )
))
(declare-datatypes ((Cache!214 0))(
  ( (Cache!215 (cache!841 MutableMap!389)) )
))
(declare-fun cache!470 () Cache!214)

(assert (=> b!118958 (= lt!35206 (v!13318 (underlying!986 (cache!841 cache!470))))))

(declare-fun b!118960 () Bool)

(declare-fun e!67868 () Bool)

(declare-fun tp_is_empty!1109 () Bool)

(declare-fun tp!65303 () Bool)

(assert (=> b!118960 (= e!67868 (and tp_is_empty!1109 tp!65303))))

(declare-fun b!118961 () Bool)

(declare-fun res!56055 () Bool)

(declare-fun e!67877 () Bool)

(assert (=> b!118961 (=> (not res!56055) (not e!67877))))

(declare-fun totalInputSize!643 () Int)

(declare-datatypes ((List!1968 0))(
  ( (Nil!1962) (Cons!1962 (h!7359 C!1976) (t!22445 List!1968)) )
))
(declare-fun totalInput!1363 () List!1968)

(declare-fun size!1801 (List!1968) Int)

(assert (=> b!118961 (= res!56055 (= totalInputSize!643 (size!1801 totalInput!1363)))))

(declare-fun b!118962 () Bool)

(declare-fun e!67872 () Bool)

(declare-fun tp!65309 () Bool)

(declare-fun tp!65305 () Bool)

(assert (=> b!118962 (= e!67872 (and tp!65309 tp!65305))))

(declare-fun b!118963 () Bool)

(declare-fun e!67880 () Bool)

(declare-fun tp!65313 () Bool)

(declare-fun mapRes!1520 () Bool)

(assert (=> b!118963 (= e!67880 (and tp!65313 mapRes!1520))))

(declare-fun condMapEmpty!1520 () Bool)

(declare-fun mapDefault!1520 () List!1967)

(assert (=> b!118963 (= condMapEmpty!1520 (= (arr!671 (_values!671 (v!13317 (underlying!985 (v!13318 (underlying!986 (cache!841 cache!470))))))) ((as const (Array (_ BitVec 32) List!1967)) mapDefault!1520)))))

(declare-fun b!118964 () Bool)

(declare-fun e!67874 () Bool)

(assert (=> b!118964 (= e!67877 (not e!67874))))

(declare-fun res!56052 () Bool)

(assert (=> b!118964 (=> res!56052 e!67874)))

(declare-fun testedP!367 () List!1968)

(declare-fun isPrefix!110 (List!1968 List!1968) Bool)

(assert (=> b!118964 (= res!56052 (not (isPrefix!110 testedP!367 totalInput!1363)))))

(declare-fun lt!35205 () List!1968)

(assert (=> b!118964 (isPrefix!110 testedP!367 lt!35205)))

(declare-datatypes ((Unit!1469 0))(
  ( (Unit!1470) )
))
(declare-fun lt!35204 () Unit!1469)

(declare-fun testedSuffix!285 () List!1968)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!56 (List!1968 List!1968) Unit!1469)

(assert (=> b!118964 (= lt!35204 (lemmaConcatTwoListThenFirstIsPrefix!56 testedP!367 testedSuffix!285))))

(declare-fun e!67878 () Bool)

(assert (=> b!118965 (= e!67878 (and e!67879 tp!65307))))

(declare-fun b!118966 () Bool)

(declare-fun res!56054 () Bool)

(declare-fun e!67881 () Bool)

(assert (=> b!118966 (=> (not res!56054) (not e!67881))))

(declare-fun valid!356 (Cache!214) Bool)

(assert (=> b!118966 (= res!56054 (valid!356 cache!470))))

(declare-fun b!118967 () Bool)

(declare-fun e!67875 () Bool)

(declare-fun tp!65314 () Bool)

(assert (=> b!118967 (= e!67875 (and tp_is_empty!1109 tp!65314))))

(declare-fun tp!65306 () Bool)

(declare-fun tp!65300 () Bool)

(declare-fun array_inv!481 (array!1437) Bool)

(declare-fun array_inv!482 (array!1439) Bool)

(assert (=> b!118968 (= e!67869 (and tp!65310 tp!65306 tp!65300 (array_inv!481 (_keys!684 (v!13317 (underlying!985 (v!13318 (underlying!986 (cache!841 cache!470))))))) (array_inv!482 (_values!671 (v!13317 (underlying!985 (v!13318 (underlying!986 (cache!841 cache!470))))))) e!67880))))

(declare-fun b!118959 () Bool)

(declare-fun res!56051 () Bool)

(assert (=> b!118959 (=> (not res!56051) (not e!67877))))

(declare-fun testedPSize!285 () Int)

(assert (=> b!118959 (= res!56051 (= testedPSize!285 (size!1801 testedP!367)))))

(declare-fun res!56050 () Bool)

(assert (=> start!12054 (=> (not res!56050) (not e!67881))))

(declare-fun r!15532 () Regex!527)

(declare-fun validRegex!130 (Regex!527) Bool)

(assert (=> start!12054 (= res!56050 (validRegex!130 r!15532))))

(assert (=> start!12054 e!67881))

(assert (=> start!12054 true))

(assert (=> start!12054 e!67872))

(assert (=> start!12054 e!67875))

(assert (=> start!12054 e!67868))

(declare-fun e!67870 () Bool)

(assert (=> start!12054 e!67870))

(declare-fun e!67873 () Bool)

(declare-fun inv!2484 (Cache!214) Bool)

(assert (=> start!12054 (and (inv!2484 cache!470) e!67873)))

(declare-fun lt!35202 () List!1968)

(declare-fun b!118969 () Bool)

(declare-fun ++!362 (List!1968 List!1968) List!1968)

(assert (=> b!118969 (= e!67874 (= (++!362 testedP!367 lt!35202) totalInput!1363))))

(assert (=> b!118969 (and (= testedSuffix!285 lt!35202) (= lt!35202 testedSuffix!285))))

(declare-fun lt!35203 () Unit!1469)

(declare-fun lemmaSamePrefixThenSameSuffix!45 (List!1968 List!1968 List!1968 List!1968 List!1968) Unit!1469)

(assert (=> b!118969 (= lt!35203 (lemmaSamePrefixThenSameSuffix!45 testedP!367 testedSuffix!285 testedP!367 lt!35202 totalInput!1363))))

(declare-fun getSuffix!49 (List!1968 List!1968) List!1968)

(assert (=> b!118969 (= lt!35202 (getSuffix!49 totalInput!1363 testedP!367))))

(declare-fun b!118970 () Bool)

(assert (=> b!118970 (= e!67873 e!67878)))

(declare-fun b!118971 () Bool)

(assert (=> b!118971 (= e!67881 e!67877)))

(declare-fun res!56053 () Bool)

(assert (=> b!118971 (=> (not res!56053) (not e!67877))))

(assert (=> b!118971 (= res!56053 (= lt!35205 totalInput!1363))))

(assert (=> b!118971 (= lt!35205 (++!362 testedP!367 testedSuffix!285))))

(declare-fun b!118972 () Bool)

(assert (=> b!118972 (= e!67882 e!67876)))

(declare-fun b!118973 () Bool)

(declare-fun tp!65311 () Bool)

(assert (=> b!118973 (= e!67870 (and tp_is_empty!1109 tp!65311))))

(declare-fun b!118974 () Bool)

(declare-fun tp!65308 () Bool)

(assert (=> b!118974 (= e!67872 tp!65308)))

(declare-fun b!118975 () Bool)

(assert (=> b!118975 (= e!67872 tp_is_empty!1109)))

(declare-fun mapIsEmpty!1520 () Bool)

(assert (=> mapIsEmpty!1520 mapRes!1520))

(declare-fun b!118976 () Bool)

(declare-fun tp!65302 () Bool)

(declare-fun tp!65304 () Bool)

(assert (=> b!118976 (= e!67872 (and tp!65302 tp!65304))))

(declare-fun mapNonEmpty!1520 () Bool)

(declare-fun tp!65301 () Bool)

(declare-fun tp!65312 () Bool)

(assert (=> mapNonEmpty!1520 (= mapRes!1520 (and tp!65301 tp!65312))))

(declare-fun mapKey!1520 () (_ BitVec 32))

(declare-fun mapValue!1520 () List!1967)

(declare-fun mapRest!1520 () (Array (_ BitVec 32) List!1967))

(assert (=> mapNonEmpty!1520 (= (arr!671 (_values!671 (v!13317 (underlying!985 (v!13318 (underlying!986 (cache!841 cache!470))))))) (store mapRest!1520 mapKey!1520 mapValue!1520))))

(assert (= (and start!12054 res!56050) b!118966))

(assert (= (and b!118966 res!56054) b!118971))

(assert (= (and b!118971 res!56053) b!118959))

(assert (= (and b!118959 res!56051) b!118961))

(assert (= (and b!118961 res!56055) b!118964))

(assert (= (and b!118964 (not res!56052)) b!118969))

(assert (= (and start!12054 ((_ is ElementMatch!527) r!15532)) b!118975))

(assert (= (and start!12054 ((_ is Concat!911) r!15532)) b!118962))

(assert (= (and start!12054 ((_ is Star!527) r!15532)) b!118974))

(assert (= (and start!12054 ((_ is Union!527) r!15532)) b!118976))

(assert (= (and start!12054 ((_ is Cons!1962) totalInput!1363)) b!118967))

(assert (= (and start!12054 ((_ is Cons!1962) testedSuffix!285)) b!118960))

(assert (= (and start!12054 ((_ is Cons!1962) testedP!367)) b!118973))

(assert (= (and b!118963 condMapEmpty!1520) mapIsEmpty!1520))

(assert (= (and b!118963 (not condMapEmpty!1520)) mapNonEmpty!1520))

(assert (= b!118968 b!118963))

(assert (= b!118957 b!118968))

(assert (= b!118972 b!118957))

(assert (= (and b!118958 ((_ is LongMap!393) (v!13318 (underlying!986 (cache!841 cache!470))))) b!118972))

(assert (= b!118965 b!118958))

(assert (= (and b!118970 ((_ is HashMap!389) (cache!841 cache!470))) b!118965))

(assert (= start!12054 b!118970))

(declare-fun m!106103 () Bool)

(assert (=> b!118971 m!106103))

(declare-fun m!106105 () Bool)

(assert (=> b!118966 m!106105))

(declare-fun m!106107 () Bool)

(assert (=> start!12054 m!106107))

(declare-fun m!106109 () Bool)

(assert (=> start!12054 m!106109))

(declare-fun m!106111 () Bool)

(assert (=> mapNonEmpty!1520 m!106111))

(declare-fun m!106113 () Bool)

(assert (=> b!118968 m!106113))

(declare-fun m!106115 () Bool)

(assert (=> b!118968 m!106115))

(declare-fun m!106117 () Bool)

(assert (=> b!118959 m!106117))

(declare-fun m!106119 () Bool)

(assert (=> b!118969 m!106119))

(declare-fun m!106121 () Bool)

(assert (=> b!118969 m!106121))

(declare-fun m!106123 () Bool)

(assert (=> b!118969 m!106123))

(declare-fun m!106125 () Bool)

(assert (=> b!118961 m!106125))

(declare-fun m!106127 () Bool)

(assert (=> b!118964 m!106127))

(declare-fun m!106129 () Bool)

(assert (=> b!118964 m!106129))

(declare-fun m!106131 () Bool)

(assert (=> b!118964 m!106131))

(check-sat b_and!5931 (not b!118963) b_and!5933 (not b!118969) (not b!118959) (not b_next!3803) (not b!118962) (not b!118973) (not b_next!3801) (not b!118974) (not b!118968) (not start!12054) tp_is_empty!1109 (not b!118971) (not mapNonEmpty!1520) (not b!118976) (not b!118960) (not b!118966) (not b!118964) (not b!118961) (not b!118967))
(check-sat b_and!5933 b_and!5931 (not b_next!3803) (not b_next!3801))
