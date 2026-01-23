; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11690 () Bool)

(assert start!11690)

(declare-fun b!114205 () Bool)

(declare-fun b_free!3609 () Bool)

(declare-fun b_next!3609 () Bool)

(assert (=> b!114205 (= b_free!3609 (not b_next!3609))))

(declare-fun tp!62305 () Bool)

(declare-fun b_and!5739 () Bool)

(assert (=> b!114205 (= tp!62305 b_and!5739)))

(declare-fun b!114197 () Bool)

(declare-fun b_free!3611 () Bool)

(declare-fun b_next!3611 () Bool)

(assert (=> b!114197 (= b_free!3611 (not b_next!3611))))

(declare-fun tp!62297 () Bool)

(declare-fun b_and!5741 () Bool)

(assert (=> b!114197 (= tp!62297 b_and!5741)))

(declare-fun b!114192 () Bool)

(declare-fun res!54434 () Bool)

(declare-fun e!64448 () Bool)

(assert (=> b!114192 (=> (not res!54434) (not e!64448))))

(declare-datatypes ((C!1880 0))(
  ( (C!1881 (val!666 Int)) )
))
(declare-datatypes ((Regex!479 0))(
  ( (ElementMatch!479 (c!26479 C!1880)) (Concat!863 (regOne!1470 Regex!479) (regTwo!1470 Regex!479)) (EmptyExpr!479) (Star!479 (reg!808 Regex!479)) (EmptyLang!479) (Union!479 (regOne!1471 Regex!479) (regTwo!1471 Regex!479)) )
))
(declare-datatypes ((Hashable!341 0))(
  ( (HashableExt!340 (__x!1960 Int)) )
))
(declare-datatypes ((tuple2!2036 0))(
  ( (tuple2!2037 (_1!1228 Regex!479) (_2!1228 C!1880)) )
))
(declare-datatypes ((tuple2!2038 0))(
  ( (tuple2!2039 (_1!1229 tuple2!2036) (_2!1229 Regex!479)) )
))
(declare-datatypes ((List!1873 0))(
  ( (Nil!1867) (Cons!1867 (h!7264 tuple2!2038) (t!22350 List!1873)) )
))
(declare-datatypes ((array!1229 0))(
  ( (array!1230 (arr!574 (Array (_ BitVec 32) (_ BitVec 64))) (size!1660 (_ BitVec 32))) )
))
(declare-datatypes ((array!1231 0))(
  ( (array!1232 (arr!575 (Array (_ BitVec 32) List!1873)) (size!1661 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!690 0))(
  ( (LongMapFixedSize!691 (defaultEntry!684 Int) (mask!1252 (_ BitVec 32)) (extraKeys!591 (_ BitVec 32)) (zeroValue!601 List!1873) (minValue!601 List!1873) (_size!823 (_ BitVec 32)) (_keys!636 array!1229) (_values!623 array!1231) (_vacant!406 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1369 0))(
  ( (Cell!1370 (v!13221 LongMapFixedSize!690)) )
))
(declare-datatypes ((MutLongMap!345 0))(
  ( (LongMap!345 (underlying!889 Cell!1369)) (MutLongMapExt!344 (__x!1961 Int)) )
))
(declare-datatypes ((Cell!1371 0))(
  ( (Cell!1372 (v!13222 MutLongMap!345)) )
))
(declare-datatypes ((MutableMap!341 0))(
  ( (MutableMapExt!340 (__x!1962 Int)) (HashMap!341 (underlying!890 Cell!1371) (hashF!2217 Hashable!341) (_size!824 (_ BitVec 32)) (defaultValue!490 Int)) )
))
(declare-datatypes ((Cache!118 0))(
  ( (Cache!119 (cache!793 MutableMap!341)) )
))
(declare-fun cache!470 () Cache!118)

(declare-fun valid!317 (Cache!118) Bool)

(assert (=> b!114192 (= res!54434 (valid!317 cache!470))))

(declare-fun b!114193 () Bool)

(declare-fun e!64451 () Bool)

(declare-fun tp_is_empty!1013 () Bool)

(declare-fun tp!62299 () Bool)

(assert (=> b!114193 (= e!64451 (and tp_is_empty!1013 tp!62299))))

(declare-fun mapNonEmpty!1351 () Bool)

(declare-fun mapRes!1351 () Bool)

(declare-fun tp!62298 () Bool)

(declare-fun tp!62302 () Bool)

(assert (=> mapNonEmpty!1351 (= mapRes!1351 (and tp!62298 tp!62302))))

(declare-fun mapValue!1351 () List!1873)

(declare-fun mapRest!1351 () (Array (_ BitVec 32) List!1873))

(declare-fun mapKey!1351 () (_ BitVec 32))

(assert (=> mapNonEmpty!1351 (= (arr!575 (_values!623 (v!13221 (underlying!889 (v!13222 (underlying!890 (cache!793 cache!470))))))) (store mapRest!1351 mapKey!1351 mapValue!1351))))

(declare-fun b!114194 () Bool)

(declare-fun e!64440 () Bool)

(declare-fun tp!62306 () Bool)

(declare-fun tp!62303 () Bool)

(assert (=> b!114194 (= e!64440 (and tp!62306 tp!62303))))

(declare-fun b!114195 () Bool)

(declare-fun e!64449 () Bool)

(declare-fun e!64446 () Bool)

(declare-fun lt!33308 () MutLongMap!345)

(get-info :version)

(assert (=> b!114195 (= e!64449 (and e!64446 ((_ is LongMap!345) lt!33308)))))

(assert (=> b!114195 (= lt!33308 (v!13222 (underlying!890 (cache!793 cache!470))))))

(declare-fun mapIsEmpty!1351 () Bool)

(assert (=> mapIsEmpty!1351 mapRes!1351))

(declare-fun b!114196 () Bool)

(assert (=> b!114196 (= e!64440 tp_is_empty!1013)))

(declare-fun e!64445 () Bool)

(declare-fun tp!62308 () Bool)

(declare-fun tp!62304 () Bool)

(declare-fun e!64450 () Bool)

(declare-fun array_inv!403 (array!1229) Bool)

(declare-fun array_inv!404 (array!1231) Bool)

(assert (=> b!114197 (= e!64445 (and tp!62297 tp!62308 tp!62304 (array_inv!403 (_keys!636 (v!13221 (underlying!889 (v!13222 (underlying!890 (cache!793 cache!470))))))) (array_inv!404 (_values!623 (v!13221 (underlying!889 (v!13222 (underlying!890 (cache!793 cache!470))))))) e!64450))))

(declare-fun b!114198 () Bool)

(declare-fun e!64444 () Bool)

(declare-fun e!64452 () Bool)

(assert (=> b!114198 (= e!64444 (not e!64452))))

(declare-fun res!54439 () Bool)

(assert (=> b!114198 (=> res!54439 e!64452)))

(declare-datatypes ((List!1874 0))(
  ( (Nil!1868) (Cons!1868 (h!7265 C!1880) (t!22351 List!1874)) )
))
(declare-fun testedP!367 () List!1874)

(declare-fun totalInput!1363 () List!1874)

(declare-fun isPrefix!68 (List!1874 List!1874) Bool)

(assert (=> b!114198 (= res!54439 (not (isPrefix!68 testedP!367 totalInput!1363)))))

(declare-fun lt!33310 () List!1874)

(assert (=> b!114198 (isPrefix!68 testedP!367 lt!33310)))

(declare-datatypes ((Unit!1337 0))(
  ( (Unit!1338) )
))
(declare-fun lt!33309 () Unit!1337)

(declare-fun testedSuffix!285 () List!1874)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!17 (List!1874 List!1874) Unit!1337)

(assert (=> b!114198 (= lt!33309 (lemmaConcatTwoListThenFirstIsPrefix!17 testedP!367 testedSuffix!285))))

(declare-fun b!114199 () Bool)

(declare-fun res!54432 () Bool)

(assert (=> b!114199 (=> (not res!54432) (not e!64444))))

(declare-fun totalInputSize!643 () Int)

(declare-fun size!1662 (List!1874) Int)

(assert (=> b!114199 (= res!54432 (= totalInputSize!643 (size!1662 totalInput!1363)))))

(declare-fun b!114200 () Bool)

(declare-fun e!64447 () Bool)

(declare-fun tp!62309 () Bool)

(assert (=> b!114200 (= e!64447 (and tp_is_empty!1013 tp!62309))))

(declare-fun b!114201 () Bool)

(declare-fun res!54433 () Bool)

(declare-fun e!64442 () Bool)

(assert (=> b!114201 (=> res!54433 e!64442)))

(declare-fun testedPSize!285 () Int)

(assert (=> b!114201 (= res!54433 (not (= testedPSize!285 totalInputSize!643)))))

(declare-fun b!114202 () Bool)

(assert (=> b!114202 (= e!64448 e!64444)))

(declare-fun res!54436 () Bool)

(assert (=> b!114202 (=> (not res!54436) (not e!64444))))

(assert (=> b!114202 (= res!54436 (= lt!33310 totalInput!1363))))

(declare-fun ++!322 (List!1874 List!1874) List!1874)

(assert (=> b!114202 (= lt!33310 (++!322 testedP!367 testedSuffix!285))))

(declare-fun b!114203 () Bool)

(declare-fun e!64439 () Bool)

(assert (=> b!114203 (= e!64446 e!64439)))

(declare-fun b!114204 () Bool)

(declare-fun tp!62307 () Bool)

(assert (=> b!114204 (= e!64450 (and tp!62307 mapRes!1351))))

(declare-fun condMapEmpty!1351 () Bool)

(declare-fun mapDefault!1351 () List!1873)

(assert (=> b!114204 (= condMapEmpty!1351 (= (arr!575 (_values!623 (v!13221 (underlying!889 (v!13222 (underlying!890 (cache!793 cache!470))))))) ((as const (Array (_ BitVec 32) List!1873)) mapDefault!1351)))))

(declare-fun e!64454 () Bool)

(assert (=> b!114205 (= e!64454 (and e!64449 tp!62305))))

(declare-fun b!114206 () Bool)

(declare-fun tp!62300 () Bool)

(declare-fun tp!62301 () Bool)

(assert (=> b!114206 (= e!64440 (and tp!62300 tp!62301))))

(declare-fun res!54438 () Bool)

(assert (=> start!11690 (=> (not res!54438) (not e!64448))))

(declare-fun r!15532 () Regex!479)

(declare-fun validRegex!90 (Regex!479) Bool)

(assert (=> start!11690 (= res!54438 (validRegex!90 r!15532))))

(assert (=> start!11690 e!64448))

(assert (=> start!11690 true))

(assert (=> start!11690 e!64440))

(assert (=> start!11690 e!64447))

(assert (=> start!11690 e!64451))

(declare-fun e!64441 () Bool)

(assert (=> start!11690 e!64441))

(declare-fun e!64453 () Bool)

(declare-fun inv!2373 (Cache!118) Bool)

(assert (=> start!11690 (and (inv!2373 cache!470) e!64453)))

(declare-fun b!114207 () Bool)

(assert (=> b!114207 (= e!64439 e!64445)))

(declare-fun b!114208 () Bool)

(declare-fun tp!62295 () Bool)

(assert (=> b!114208 (= e!64440 tp!62295)))

(declare-fun b!114209 () Bool)

(assert (=> b!114209 (= e!64442 true)))

(assert (=> b!114209 (= totalInput!1363 testedP!367)))

(declare-fun lt!33311 () Unit!1337)

(declare-fun lemmaIsPrefixSameLengthThenSameList!3 (List!1874 List!1874 List!1874) Unit!1337)

(assert (=> b!114209 (= lt!33311 (lemmaIsPrefixSameLengthThenSameList!3 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!114209 (isPrefix!68 totalInput!1363 totalInput!1363)))

(declare-fun lt!33312 () Unit!1337)

(declare-fun lemmaIsPrefixRefl!55 (List!1874 List!1874) Unit!1337)

(assert (=> b!114209 (= lt!33312 (lemmaIsPrefixRefl!55 totalInput!1363 totalInput!1363))))

(declare-fun b!114210 () Bool)

(assert (=> b!114210 (= e!64452 e!64442)))

(declare-fun res!54435 () Bool)

(assert (=> b!114210 (=> res!54435 e!64442)))

(declare-fun lostCause!27 (Regex!479) Bool)

(assert (=> b!114210 (= res!54435 (lostCause!27 r!15532))))

(declare-fun lt!33306 () List!1874)

(assert (=> b!114210 (and (= testedSuffix!285 lt!33306) (= lt!33306 testedSuffix!285))))

(declare-fun lt!33307 () Unit!1337)

(declare-fun lemmaSamePrefixThenSameSuffix!15 (List!1874 List!1874 List!1874 List!1874 List!1874) Unit!1337)

(assert (=> b!114210 (= lt!33307 (lemmaSamePrefixThenSameSuffix!15 testedP!367 testedSuffix!285 testedP!367 lt!33306 totalInput!1363))))

(declare-fun getSuffix!16 (List!1874 List!1874) List!1874)

(assert (=> b!114210 (= lt!33306 (getSuffix!16 totalInput!1363 testedP!367))))

(declare-fun b!114211 () Bool)

(declare-fun res!54437 () Bool)

(assert (=> b!114211 (=> (not res!54437) (not e!64444))))

(assert (=> b!114211 (= res!54437 (= testedPSize!285 (size!1662 testedP!367)))))

(declare-fun b!114212 () Bool)

(assert (=> b!114212 (= e!64453 e!64454)))

(declare-fun b!114213 () Bool)

(declare-fun tp!62296 () Bool)

(assert (=> b!114213 (= e!64441 (and tp_is_empty!1013 tp!62296))))

(assert (= (and start!11690 res!54438) b!114192))

(assert (= (and b!114192 res!54434) b!114202))

(assert (= (and b!114202 res!54436) b!114211))

(assert (= (and b!114211 res!54437) b!114199))

(assert (= (and b!114199 res!54432) b!114198))

(assert (= (and b!114198 (not res!54439)) b!114210))

(assert (= (and b!114210 (not res!54435)) b!114201))

(assert (= (and b!114201 (not res!54433)) b!114209))

(assert (= (and start!11690 ((_ is ElementMatch!479) r!15532)) b!114196))

(assert (= (and start!11690 ((_ is Concat!863) r!15532)) b!114194))

(assert (= (and start!11690 ((_ is Star!479) r!15532)) b!114208))

(assert (= (and start!11690 ((_ is Union!479) r!15532)) b!114206))

(assert (= (and start!11690 ((_ is Cons!1868) totalInput!1363)) b!114200))

(assert (= (and start!11690 ((_ is Cons!1868) testedSuffix!285)) b!114193))

(assert (= (and start!11690 ((_ is Cons!1868) testedP!367)) b!114213))

(assert (= (and b!114204 condMapEmpty!1351) mapIsEmpty!1351))

(assert (= (and b!114204 (not condMapEmpty!1351)) mapNonEmpty!1351))

(assert (= b!114197 b!114204))

(assert (= b!114207 b!114197))

(assert (= b!114203 b!114207))

(assert (= (and b!114195 ((_ is LongMap!345) (v!13222 (underlying!890 (cache!793 cache!470))))) b!114203))

(assert (= b!114205 b!114195))

(assert (= (and b!114212 ((_ is HashMap!341) (cache!793 cache!470))) b!114205))

(assert (= start!11690 b!114212))

(declare-fun m!103126 () Bool)

(assert (=> b!114192 m!103126))

(declare-fun m!103128 () Bool)

(assert (=> b!114202 m!103128))

(declare-fun m!103130 () Bool)

(assert (=> b!114209 m!103130))

(declare-fun m!103132 () Bool)

(assert (=> b!114209 m!103132))

(declare-fun m!103134 () Bool)

(assert (=> b!114209 m!103134))

(declare-fun m!103136 () Bool)

(assert (=> b!114210 m!103136))

(declare-fun m!103138 () Bool)

(assert (=> b!114210 m!103138))

(declare-fun m!103140 () Bool)

(assert (=> b!114210 m!103140))

(declare-fun m!103142 () Bool)

(assert (=> b!114211 m!103142))

(declare-fun m!103144 () Bool)

(assert (=> b!114197 m!103144))

(declare-fun m!103146 () Bool)

(assert (=> b!114197 m!103146))

(declare-fun m!103148 () Bool)

(assert (=> b!114199 m!103148))

(declare-fun m!103150 () Bool)

(assert (=> b!114198 m!103150))

(declare-fun m!103152 () Bool)

(assert (=> b!114198 m!103152))

(declare-fun m!103154 () Bool)

(assert (=> b!114198 m!103154))

(declare-fun m!103156 () Bool)

(assert (=> mapNonEmpty!1351 m!103156))

(declare-fun m!103158 () Bool)

(assert (=> start!11690 m!103158))

(declare-fun m!103160 () Bool)

(assert (=> start!11690 m!103160))

(check-sat (not b!114204) (not b!114192) (not b!114193) b_and!5741 (not b!114213) (not start!11690) (not b!114202) (not b_next!3609) (not b!114211) (not b!114200) (not b!114197) tp_is_empty!1013 (not b!114210) (not b!114208) (not b!114198) (not b!114206) (not b_next!3611) b_and!5739 (not mapNonEmpty!1351) (not b!114194) (not b!114209) (not b!114199))
(check-sat b_and!5739 b_and!5741 (not b_next!3609) (not b_next!3611))
