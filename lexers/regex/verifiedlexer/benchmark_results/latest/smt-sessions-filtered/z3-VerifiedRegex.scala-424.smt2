; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12560 () Bool)

(assert start!12560)

(declare-fun b!124331 () Bool)

(declare-fun b_free!3945 () Bool)

(declare-fun b_next!3945 () Bool)

(assert (=> b!124331 (= b_free!3945 (not b_next!3945))))

(declare-fun tp!68143 () Bool)

(declare-fun b_and!6075 () Bool)

(assert (=> b!124331 (= tp!68143 b_and!6075)))

(declare-fun b!124335 () Bool)

(declare-fun b_free!3947 () Bool)

(declare-fun b_next!3947 () Bool)

(assert (=> b!124335 (= b_free!3947 (not b_next!3947))))

(declare-fun tp!68141 () Bool)

(declare-fun b_and!6077 () Bool)

(assert (=> b!124335 (= tp!68141 b_and!6077)))

(declare-fun b!124311 () Bool)

(declare-datatypes ((Unit!1581 0))(
  ( (Unit!1582) )
))
(declare-fun e!71492 () Unit!1581)

(declare-fun Unit!1583 () Unit!1581)

(assert (=> b!124311 (= e!71492 Unit!1583)))

(declare-fun b!124312 () Bool)

(declare-fun e!71502 () Bool)

(declare-fun e!71498 () Bool)

(assert (=> b!124312 (= e!71502 e!71498)))

(declare-fun b!124313 () Bool)

(declare-fun e!71493 () Bool)

(declare-fun e!71512 () Bool)

(assert (=> b!124313 (= e!71493 e!71512)))

(declare-fun res!57901 () Bool)

(assert (=> b!124313 (=> res!57901 e!71512)))

(declare-datatypes ((C!2048 0))(
  ( (C!2049 (val!750 Int)) )
))
(declare-datatypes ((Regex!563 0))(
  ( (ElementMatch!563 (c!27412 C!2048)) (Concat!947 (regOne!1638 Regex!563) (regTwo!1638 Regex!563)) (EmptyExpr!563) (Star!563 (reg!892 Regex!563)) (EmptyLang!563) (Union!563 (regOne!1639 Regex!563) (regTwo!1639 Regex!563)) )
))
(declare-fun r!15532 () Regex!563)

(declare-fun lostCause!79 (Regex!563) Bool)

(assert (=> b!124313 (= res!57901 (lostCause!79 r!15532))))

(declare-datatypes ((List!2036 0))(
  ( (Nil!2030) (Cons!2030 (h!7427 C!2048) (t!22513 List!2036)) )
))
(declare-fun testedSuffix!285 () List!2036)

(declare-fun lt!37585 () List!2036)

(assert (=> b!124313 (and (= testedSuffix!285 lt!37585) (= lt!37585 testedSuffix!285))))

(declare-fun lt!37596 () Unit!1581)

(declare-fun testedP!367 () List!2036)

(declare-fun totalInput!1363 () List!2036)

(declare-fun lemmaSamePrefixThenSameSuffix!70 (List!2036 List!2036 List!2036 List!2036 List!2036) Unit!1581)

(assert (=> b!124313 (= lt!37596 (lemmaSamePrefixThenSameSuffix!70 testedP!367 testedSuffix!285 testedP!367 lt!37585 totalInput!1363))))

(declare-fun getSuffix!74 (List!2036 List!2036) List!2036)

(assert (=> b!124313 (= lt!37585 (getSuffix!74 totalInput!1363 testedP!367))))

(declare-fun b!124314 () Bool)

(declare-fun e!71501 () Bool)

(declare-fun e!71511 () Bool)

(assert (=> b!124314 (= e!71501 e!71511)))

(declare-fun res!57907 () Bool)

(assert (=> b!124314 (=> res!57907 e!71511)))

(declare-fun lt!37599 () Regex!563)

(declare-fun validRegex!157 (Regex!563) Bool)

(assert (=> b!124314 (= res!57907 (not (validRegex!157 lt!37599)))))

(declare-fun lt!37586 () C!2048)

(declare-fun derivativeStep!68 (Regex!563 C!2048) Regex!563)

(assert (=> b!124314 (= lt!37599 (derivativeStep!68 r!15532 lt!37586))))

(declare-fun mapNonEmpty!1660 () Bool)

(declare-fun mapRes!1660 () Bool)

(declare-fun tp!68136 () Bool)

(declare-fun tp!68146 () Bool)

(assert (=> mapNonEmpty!1660 (= mapRes!1660 (and tp!68136 tp!68146))))

(declare-fun mapKey!1660 () (_ BitVec 32))

(declare-datatypes ((tuple2!2396 0))(
  ( (tuple2!2397 (_1!1408 Regex!563) (_2!1408 C!2048)) )
))
(declare-datatypes ((tuple2!2398 0))(
  ( (tuple2!2399 (_1!1409 tuple2!2396) (_2!1409 Regex!563)) )
))
(declare-datatypes ((List!2037 0))(
  ( (Nil!2031) (Cons!2031 (h!7428 tuple2!2398) (t!22514 List!2037)) )
))
(declare-fun mapValue!1660 () List!2037)

(declare-datatypes ((Hashable!425 0))(
  ( (HashableExt!424 (__x!2212 Int)) )
))
(declare-datatypes ((array!1601 0))(
  ( (array!1602 (arr!742 (Array (_ BitVec 32) (_ BitVec 64))) (size!1898 (_ BitVec 32))) )
))
(declare-datatypes ((array!1603 0))(
  ( (array!1604 (arr!743 (Array (_ BitVec 32) List!2037)) (size!1899 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!858 0))(
  ( (LongMapFixedSize!859 (defaultEntry!768 Int) (mask!1378 (_ BitVec 32)) (extraKeys!675 (_ BitVec 32)) (zeroValue!685 List!2037) (minValue!685 List!2037) (_size!991 (_ BitVec 32)) (_keys!720 array!1601) (_values!707 array!1603) (_vacant!490 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1705 0))(
  ( (Cell!1706 (v!13391 LongMapFixedSize!858)) )
))
(declare-datatypes ((MutLongMap!429 0))(
  ( (LongMap!429 (underlying!1057 Cell!1705)) (MutLongMapExt!428 (__x!2213 Int)) )
))
(declare-datatypes ((Cell!1707 0))(
  ( (Cell!1708 (v!13392 MutLongMap!429)) )
))
(declare-datatypes ((MutableMap!425 0))(
  ( (MutableMapExt!424 (__x!2214 Int)) (HashMap!425 (underlying!1058 Cell!1707) (hashF!2301 Hashable!425) (_size!992 (_ BitVec 32)) (defaultValue!574 Int)) )
))
(declare-datatypes ((Cache!286 0))(
  ( (Cache!287 (cache!879 MutableMap!425)) )
))
(declare-fun cache!470 () Cache!286)

(declare-fun mapRest!1660 () (Array (_ BitVec 32) List!2037))

(assert (=> mapNonEmpty!1660 (= (arr!743 (_values!707 (v!13391 (underlying!1057 (v!13392 (underlying!1058 (cache!879 cache!470))))))) (store mapRest!1660 mapKey!1660 mapValue!1660))))

(declare-fun b!124316 () Bool)

(declare-fun e!71505 () Bool)

(declare-fun tp!68138 () Bool)

(declare-fun tp!68148 () Bool)

(assert (=> b!124316 (= e!71505 (and tp!68138 tp!68148))))

(declare-fun b!124317 () Bool)

(declare-fun e!71508 () Bool)

(declare-fun tp_is_empty!1181 () Bool)

(declare-fun tp!68144 () Bool)

(assert (=> b!124317 (= e!71508 (and tp_is_empty!1181 tp!68144))))

(declare-fun b!124318 () Bool)

(declare-fun e!71510 () Bool)

(declare-fun e!71506 () Bool)

(assert (=> b!124318 (= e!71510 e!71506)))

(declare-fun res!57906 () Bool)

(assert (=> b!124318 (=> (not res!57906) (not e!71506))))

(declare-fun lt!37598 () List!2036)

(assert (=> b!124318 (= res!57906 (= lt!37598 totalInput!1363))))

(declare-fun ++!387 (List!2036 List!2036) List!2036)

(assert (=> b!124318 (= lt!37598 (++!387 testedP!367 testedSuffix!285))))

(declare-fun b!124319 () Bool)

(declare-fun e!71497 () Bool)

(declare-fun e!71507 () Bool)

(assert (=> b!124319 (= e!71497 e!71507)))

(declare-fun b!124320 () Bool)

(declare-fun e!71503 () Bool)

(declare-fun lt!37591 () MutLongMap!429)

(get-info :version)

(assert (=> b!124320 (= e!71503 (and e!71497 ((_ is LongMap!429) lt!37591)))))

(assert (=> b!124320 (= lt!37591 (v!13392 (underlying!1058 (cache!879 cache!470))))))

(declare-fun b!124321 () Bool)

(declare-fun e!71499 () Bool)

(declare-fun tp!68149 () Bool)

(assert (=> b!124321 (= e!71499 (and tp_is_empty!1181 tp!68149))))

(declare-fun b!124322 () Bool)

(declare-fun e!71491 () Bool)

(assert (=> b!124322 (= e!71506 e!71491)))

(declare-fun res!57900 () Bool)

(assert (=> b!124322 (=> (not res!57900) (not e!71491))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!37588 () Int)

(assert (=> b!124322 (= res!57900 (= testedPSize!285 lt!37588))))

(declare-fun size!1900 (List!2036) Int)

(assert (=> b!124322 (= lt!37588 (size!1900 testedP!367))))

(declare-fun totalInputSize!643 () Int)

(declare-datatypes ((tuple2!2400 0))(
  ( (tuple2!2401 (_1!1410 List!2036) (_2!1410 List!2036)) )
))
(declare-fun lt!37600 () tuple2!2400)

(declare-fun b!124323 () Bool)

(declare-fun findLongestMatchInner!50 (Regex!563 List!2036 Int List!2036 List!2036 Int) tuple2!2400)

(assert (=> b!124323 (= e!71511 (= lt!37600 (findLongestMatchInner!50 r!15532 testedP!367 testedPSize!285 testedSuffix!285 totalInput!1363 totalInputSize!643)))))

(declare-fun lt!37595 () List!2036)

(declare-fun lt!37587 () List!2036)

(assert (=> b!124323 (= lt!37600 (findLongestMatchInner!50 lt!37599 lt!37587 (+ 1 testedPSize!285) lt!37595 totalInput!1363 totalInputSize!643))))

(declare-fun findLongestMatchInnerMem!12 (Regex!563 List!2036 Int List!2036 List!2036 Int Cache!286) tuple2!2400)

(assert (=> b!124323 (= lt!37600 (findLongestMatchInnerMem!12 lt!37599 lt!37587 (+ 1 testedPSize!285) lt!37595 totalInput!1363 totalInputSize!643 cache!470))))

(declare-fun b!124324 () Bool)

(declare-fun res!57897 () Bool)

(assert (=> b!124324 (=> (not res!57897) (not e!71510))))

(declare-fun valid!386 (Cache!286) Bool)

(assert (=> b!124324 (= res!57897 (valid!386 cache!470))))

(declare-fun mapIsEmpty!1660 () Bool)

(assert (=> mapIsEmpty!1660 mapRes!1660))

(declare-fun b!124325 () Bool)

(declare-fun res!57898 () Bool)

(assert (=> b!124325 (=> res!57898 e!71512)))

(assert (=> b!124325 (= res!57898 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!124326 () Bool)

(declare-fun e!71500 () Bool)

(assert (=> b!124326 (= e!71491 e!71500)))

(declare-fun res!57896 () Bool)

(assert (=> b!124326 (=> (not res!57896) (not e!71500))))

(declare-fun lt!37589 () Int)

(assert (=> b!124326 (= res!57896 (= totalInputSize!643 lt!37589))))

(assert (=> b!124326 (= lt!37589 (size!1900 totalInput!1363))))

(declare-fun b!124327 () Bool)

(declare-fun e!71504 () Bool)

(declare-fun tp!68140 () Bool)

(assert (=> b!124327 (= e!71504 (and tp!68140 mapRes!1660))))

(declare-fun condMapEmpty!1660 () Bool)

(declare-fun mapDefault!1660 () List!2037)

(assert (=> b!124327 (= condMapEmpty!1660 (= (arr!743 (_values!707 (v!13391 (underlying!1057 (v!13392 (underlying!1058 (cache!879 cache!470))))))) ((as const (Array (_ BitVec 32) List!2037)) mapDefault!1660)))))

(declare-fun b!124328 () Bool)

(declare-fun Unit!1584 () Unit!1581)

(assert (=> b!124328 (= e!71492 Unit!1584)))

(declare-fun lt!37584 () Unit!1581)

(declare-fun lemmaIsPrefixRefl!107 (List!2036 List!2036) Unit!1581)

(assert (=> b!124328 (= lt!37584 (lemmaIsPrefixRefl!107 totalInput!1363 totalInput!1363))))

(declare-fun isPrefix!137 (List!2036 List!2036) Bool)

(assert (=> b!124328 (isPrefix!137 totalInput!1363 totalInput!1363)))

(declare-fun lt!37594 () Unit!1581)

(declare-fun lemmaIsPrefixSameLengthThenSameList!50 (List!2036 List!2036 List!2036) Unit!1581)

(assert (=> b!124328 (= lt!37594 (lemmaIsPrefixSameLengthThenSameList!50 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!124328 false))

(declare-fun res!57905 () Bool)

(assert (=> start!12560 (=> (not res!57905) (not e!71510))))

(assert (=> start!12560 (= res!57905 (validRegex!157 r!15532))))

(assert (=> start!12560 e!71510))

(assert (=> start!12560 true))

(assert (=> start!12560 e!71505))

(assert (=> start!12560 e!71499))

(declare-fun e!71509 () Bool)

(assert (=> start!12560 e!71509))

(assert (=> start!12560 e!71508))

(declare-fun inv!2564 (Cache!286) Bool)

(assert (=> start!12560 (and (inv!2564 cache!470) e!71502)))

(declare-fun b!124315 () Bool)

(declare-fun tp!68147 () Bool)

(assert (=> b!124315 (= e!71505 tp!68147)))

(declare-fun b!124329 () Bool)

(declare-fun e!71496 () Bool)

(assert (=> b!124329 (= e!71496 e!71501)))

(declare-fun res!57902 () Bool)

(assert (=> b!124329 (=> res!57902 e!71501)))

(declare-fun nullable!96 (Regex!563) Bool)

(assert (=> b!124329 (= res!57902 (nullable!96 r!15532))))

(assert (=> b!124329 (= (++!387 lt!37587 lt!37595) totalInput!1363)))

(declare-fun lt!37593 () Unit!1581)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!33 (List!2036 C!2048 List!2036 List!2036) Unit!1581)

(assert (=> b!124329 (= lt!37593 (lemmaMoveElementToOtherListKeepsConcatEq!33 testedP!367 lt!37586 lt!37595 totalInput!1363))))

(declare-fun tail!246 (List!2036) List!2036)

(assert (=> b!124329 (= lt!37595 (tail!246 testedSuffix!285))))

(declare-fun head!510 (List!2036) C!2048)

(assert (=> b!124329 (isPrefix!137 (++!387 testedP!367 (Cons!2030 (head!510 lt!37585) Nil!2030)) totalInput!1363)))

(declare-fun lt!37592 () Unit!1581)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!39 (List!2036 List!2036) Unit!1581)

(assert (=> b!124329 (= lt!37592 (lemmaAddHeadSuffixToPrefixStillPrefix!39 testedP!367 totalInput!1363))))

(assert (=> b!124329 (= lt!37587 (++!387 testedP!367 (Cons!2030 lt!37586 Nil!2030)))))

(assert (=> b!124329 (= lt!37586 (head!510 testedSuffix!285))))

(declare-fun b!124330 () Bool)

(declare-fun e!71495 () Bool)

(assert (=> b!124330 (= e!71507 e!71495)))

(assert (=> b!124331 (= e!71498 (and e!71503 tp!68143))))

(declare-fun b!124332 () Bool)

(assert (=> b!124332 (= e!71505 tp_is_empty!1181)))

(declare-fun b!124333 () Bool)

(declare-fun tp!68145 () Bool)

(assert (=> b!124333 (= e!71509 (and tp_is_empty!1181 tp!68145))))

(declare-fun b!124334 () Bool)

(declare-fun tp!68150 () Bool)

(declare-fun tp!68139 () Bool)

(assert (=> b!124334 (= e!71505 (and tp!68150 tp!68139))))

(declare-fun tp!68142 () Bool)

(declare-fun tp!68137 () Bool)

(declare-fun array_inv!535 (array!1601) Bool)

(declare-fun array_inv!536 (array!1603) Bool)

(assert (=> b!124335 (= e!71495 (and tp!68141 tp!68137 tp!68142 (array_inv!535 (_keys!720 (v!13391 (underlying!1057 (v!13392 (underlying!1058 (cache!879 cache!470))))))) (array_inv!536 (_values!707 (v!13391 (underlying!1057 (v!13392 (underlying!1058 (cache!879 cache!470))))))) e!71504))))

(declare-fun b!124336 () Bool)

(assert (=> b!124336 (= e!71500 (not e!71493))))

(declare-fun res!57903 () Bool)

(assert (=> b!124336 (=> res!57903 e!71493)))

(assert (=> b!124336 (= res!57903 (not (isPrefix!137 testedP!367 totalInput!1363)))))

(assert (=> b!124336 (isPrefix!137 testedP!367 lt!37598)))

(declare-fun lt!37597 () Unit!1581)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!80 (List!2036 List!2036) Unit!1581)

(assert (=> b!124336 (= lt!37597 (lemmaConcatTwoListThenFirstIsPrefix!80 testedP!367 testedSuffix!285))))

(declare-fun b!124337 () Bool)

(assert (=> b!124337 (= e!71512 e!71496)))

(declare-fun res!57899 () Bool)

(assert (=> b!124337 (=> res!57899 e!71496)))

(assert (=> b!124337 (= res!57899 (>= lt!37588 lt!37589))))

(declare-fun lt!37601 () Unit!1581)

(assert (=> b!124337 (= lt!37601 e!71492)))

(declare-fun c!27411 () Bool)

(assert (=> b!124337 (= c!27411 (= lt!37588 lt!37589))))

(assert (=> b!124337 (<= lt!37588 lt!37589)))

(declare-fun lt!37590 () Unit!1581)

(declare-fun lemmaIsPrefixThenSmallerEqSize!50 (List!2036 List!2036) Unit!1581)

(assert (=> b!124337 (= lt!37590 (lemmaIsPrefixThenSmallerEqSize!50 testedP!367 totalInput!1363))))

(declare-fun b!124338 () Bool)

(declare-fun res!57904 () Bool)

(assert (=> b!124338 (=> res!57904 e!71511)))

(assert (=> b!124338 (= res!57904 (not (= (+ 1 testedPSize!285) (size!1900 lt!37587))))))

(assert (= (and start!12560 res!57905) b!124324))

(assert (= (and b!124324 res!57897) b!124318))

(assert (= (and b!124318 res!57906) b!124322))

(assert (= (and b!124322 res!57900) b!124326))

(assert (= (and b!124326 res!57896) b!124336))

(assert (= (and b!124336 (not res!57903)) b!124313))

(assert (= (and b!124313 (not res!57901)) b!124325))

(assert (= (and b!124325 (not res!57898)) b!124337))

(assert (= (and b!124337 c!27411) b!124328))

(assert (= (and b!124337 (not c!27411)) b!124311))

(assert (= (and b!124337 (not res!57899)) b!124329))

(assert (= (and b!124329 (not res!57902)) b!124314))

(assert (= (and b!124314 (not res!57907)) b!124338))

(assert (= (and b!124338 (not res!57904)) b!124323))

(assert (= (and start!12560 ((_ is ElementMatch!563) r!15532)) b!124332))

(assert (= (and start!12560 ((_ is Concat!947) r!15532)) b!124316))

(assert (= (and start!12560 ((_ is Star!563) r!15532)) b!124315))

(assert (= (and start!12560 ((_ is Union!563) r!15532)) b!124334))

(assert (= (and start!12560 ((_ is Cons!2030) totalInput!1363)) b!124321))

(assert (= (and start!12560 ((_ is Cons!2030) testedSuffix!285)) b!124333))

(assert (= (and start!12560 ((_ is Cons!2030) testedP!367)) b!124317))

(assert (= (and b!124327 condMapEmpty!1660) mapIsEmpty!1660))

(assert (= (and b!124327 (not condMapEmpty!1660)) mapNonEmpty!1660))

(assert (= b!124335 b!124327))

(assert (= b!124330 b!124335))

(assert (= b!124319 b!124330))

(assert (= (and b!124320 ((_ is LongMap!429) (v!13392 (underlying!1058 (cache!879 cache!470))))) b!124319))

(assert (= b!124331 b!124320))

(assert (= (and b!124312 ((_ is HashMap!425) (cache!879 cache!470))) b!124331))

(assert (= start!12560 b!124312))

(declare-fun m!109915 () Bool)

(assert (=> b!124314 m!109915))

(declare-fun m!109917 () Bool)

(assert (=> b!124314 m!109917))

(declare-fun m!109919 () Bool)

(assert (=> b!124336 m!109919))

(declare-fun m!109921 () Bool)

(assert (=> b!124336 m!109921))

(declare-fun m!109923 () Bool)

(assert (=> b!124336 m!109923))

(declare-fun m!109925 () Bool)

(assert (=> mapNonEmpty!1660 m!109925))

(declare-fun m!109927 () Bool)

(assert (=> b!124335 m!109927))

(declare-fun m!109929 () Bool)

(assert (=> b!124335 m!109929))

(declare-fun m!109931 () Bool)

(assert (=> b!124323 m!109931))

(declare-fun m!109933 () Bool)

(assert (=> b!124323 m!109933))

(declare-fun m!109935 () Bool)

(assert (=> b!124323 m!109935))

(declare-fun m!109937 () Bool)

(assert (=> b!124329 m!109937))

(declare-fun m!109939 () Bool)

(assert (=> b!124329 m!109939))

(declare-fun m!109941 () Bool)

(assert (=> b!124329 m!109941))

(declare-fun m!109943 () Bool)

(assert (=> b!124329 m!109943))

(assert (=> b!124329 m!109943))

(declare-fun m!109945 () Bool)

(assert (=> b!124329 m!109945))

(declare-fun m!109947 () Bool)

(assert (=> b!124329 m!109947))

(declare-fun m!109949 () Bool)

(assert (=> b!124329 m!109949))

(declare-fun m!109951 () Bool)

(assert (=> b!124329 m!109951))

(declare-fun m!109953 () Bool)

(assert (=> b!124329 m!109953))

(declare-fun m!109955 () Bool)

(assert (=> b!124329 m!109955))

(declare-fun m!109957 () Bool)

(assert (=> b!124313 m!109957))

(declare-fun m!109959 () Bool)

(assert (=> b!124313 m!109959))

(declare-fun m!109961 () Bool)

(assert (=> b!124313 m!109961))

(declare-fun m!109963 () Bool)

(assert (=> b!124326 m!109963))

(declare-fun m!109965 () Bool)

(assert (=> b!124337 m!109965))

(declare-fun m!109967 () Bool)

(assert (=> b!124322 m!109967))

(declare-fun m!109969 () Bool)

(assert (=> b!124318 m!109969))

(declare-fun m!109971 () Bool)

(assert (=> b!124338 m!109971))

(declare-fun m!109973 () Bool)

(assert (=> start!12560 m!109973))

(declare-fun m!109975 () Bool)

(assert (=> start!12560 m!109975))

(declare-fun m!109977 () Bool)

(assert (=> b!124324 m!109977))

(declare-fun m!109979 () Bool)

(assert (=> b!124328 m!109979))

(declare-fun m!109981 () Bool)

(assert (=> b!124328 m!109981))

(declare-fun m!109983 () Bool)

(assert (=> b!124328 m!109983))

(check-sat (not b!124315) (not b!124322) (not b!124334) (not b!124338) (not b_next!3945) (not b!124326) (not start!12560) (not b!124314) (not b!124336) (not b!124324) (not b!124327) (not b!124316) (not mapNonEmpty!1660) (not b!124313) (not b!124335) (not b!124337) (not b!124318) (not b_next!3947) (not b!124323) (not b!124321) b_and!6077 (not b!124328) b_and!6075 (not b!124333) (not b!124317) tp_is_empty!1181 (not b!124329))
(check-sat b_and!6075 b_and!6077 (not b_next!3945) (not b_next!3947))
(get-model)

(declare-fun d!29419 () Bool)

(declare-fun lt!37604 () Int)

(assert (=> d!29419 (>= lt!37604 0)))

(declare-fun e!71515 () Int)

(assert (=> d!29419 (= lt!37604 e!71515)))

(declare-fun c!27415 () Bool)

(assert (=> d!29419 (= c!27415 ((_ is Nil!2030) testedP!367))))

(assert (=> d!29419 (= (size!1900 testedP!367) lt!37604)))

(declare-fun b!124343 () Bool)

(assert (=> b!124343 (= e!71515 0)))

(declare-fun b!124344 () Bool)

(assert (=> b!124344 (= e!71515 (+ 1 (size!1900 (t!22513 testedP!367))))))

(assert (= (and d!29419 c!27415) b!124343))

(assert (= (and d!29419 (not c!27415)) b!124344))

(declare-fun m!109985 () Bool)

(assert (=> b!124344 m!109985))

(assert (=> b!124322 d!29419))

(declare-fun b!124373 () Bool)

(declare-fun e!71533 () tuple2!2400)

(assert (=> b!124373 (= e!71533 (tuple2!2401 Nil!2030 totalInput!1363))))

(declare-fun b!124374 () Bool)

(declare-fun e!71534 () tuple2!2400)

(assert (=> b!124374 (= e!71534 (tuple2!2401 testedP!367 testedSuffix!285))))

(declare-fun b!124375 () Bool)

(declare-fun c!27430 () Bool)

(declare-fun call!5374 () Bool)

(assert (=> b!124375 (= c!27430 call!5374)))

(declare-fun lt!37669 () Unit!1581)

(declare-fun lt!37663 () Unit!1581)

(assert (=> b!124375 (= lt!37669 lt!37663)))

(declare-fun lt!37685 () C!2048)

(declare-fun lt!37682 () List!2036)

(assert (=> b!124375 (= (++!387 (++!387 testedP!367 (Cons!2030 lt!37685 Nil!2030)) lt!37682) totalInput!1363)))

(assert (=> b!124375 (= lt!37663 (lemmaMoveElementToOtherListKeepsConcatEq!33 testedP!367 lt!37685 lt!37682 totalInput!1363))))

(assert (=> b!124375 (= lt!37682 (tail!246 testedSuffix!285))))

(assert (=> b!124375 (= lt!37685 (head!510 testedSuffix!285))))

(declare-fun lt!37680 () Unit!1581)

(declare-fun lt!37676 () Unit!1581)

(assert (=> b!124375 (= lt!37680 lt!37676)))

(assert (=> b!124375 (isPrefix!137 (++!387 testedP!367 (Cons!2030 (head!510 (getSuffix!74 totalInput!1363 testedP!367)) Nil!2030)) totalInput!1363)))

(assert (=> b!124375 (= lt!37676 (lemmaAddHeadSuffixToPrefixStillPrefix!39 testedP!367 totalInput!1363))))

(declare-fun lt!37668 () Unit!1581)

(declare-fun lt!37665 () Unit!1581)

(assert (=> b!124375 (= lt!37668 lt!37665)))

(assert (=> b!124375 (= lt!37665 (lemmaAddHeadSuffixToPrefixStillPrefix!39 testedP!367 totalInput!1363))))

(declare-fun lt!37688 () List!2036)

(assert (=> b!124375 (= lt!37688 (++!387 testedP!367 (Cons!2030 (head!510 testedSuffix!285) Nil!2030)))))

(declare-fun lt!37679 () Unit!1581)

(declare-fun e!71532 () Unit!1581)

(assert (=> b!124375 (= lt!37679 e!71532)))

(declare-fun c!27428 () Bool)

(assert (=> b!124375 (= c!27428 (= (size!1900 testedP!367) (size!1900 totalInput!1363)))))

(declare-fun lt!37662 () Unit!1581)

(declare-fun lt!37667 () Unit!1581)

(assert (=> b!124375 (= lt!37662 lt!37667)))

(assert (=> b!124375 (<= (size!1900 testedP!367) (size!1900 totalInput!1363))))

(assert (=> b!124375 (= lt!37667 (lemmaIsPrefixThenSmallerEqSize!50 testedP!367 totalInput!1363))))

(declare-fun e!71535 () tuple2!2400)

(declare-fun e!71538 () tuple2!2400)

(assert (=> b!124375 (= e!71535 e!71538)))

(declare-fun b!124376 () Bool)

(declare-fun lt!37677 () tuple2!2400)

(assert (=> b!124376 (= e!71534 lt!37677)))

(declare-fun b!124377 () Bool)

(declare-fun call!5370 () tuple2!2400)

(assert (=> b!124377 (= e!71538 call!5370)))

(declare-fun bm!5363 () Bool)

(assert (=> bm!5363 (= call!5374 (nullable!96 r!15532))))

(declare-fun b!124378 () Bool)

(declare-fun e!71539 () Bool)

(declare-fun e!71536 () Bool)

(assert (=> b!124378 (= e!71539 e!71536)))

(declare-fun res!57913 () Bool)

(assert (=> b!124378 (=> res!57913 e!71536)))

(declare-fun lt!37675 () tuple2!2400)

(declare-fun isEmpty!819 (List!2036) Bool)

(assert (=> b!124378 (= res!57913 (isEmpty!819 (_1!1410 lt!37675)))))

(declare-fun b!124379 () Bool)

(declare-fun c!27432 () Bool)

(assert (=> b!124379 (= c!27432 call!5374)))

(declare-fun lt!37684 () Unit!1581)

(declare-fun lt!37673 () Unit!1581)

(assert (=> b!124379 (= lt!37684 lt!37673)))

(assert (=> b!124379 (= totalInput!1363 testedP!367)))

(declare-fun call!5372 () Unit!1581)

(assert (=> b!124379 (= lt!37673 call!5372)))

(declare-fun lt!37664 () Unit!1581)

(declare-fun lt!37670 () Unit!1581)

(assert (=> b!124379 (= lt!37664 lt!37670)))

(declare-fun call!5368 () Bool)

(assert (=> b!124379 call!5368))

(declare-fun call!5375 () Unit!1581)

(assert (=> b!124379 (= lt!37670 call!5375)))

(assert (=> b!124379 (= e!71535 e!71533)))

(declare-fun bm!5364 () Bool)

(assert (=> bm!5364 (= call!5372 (lemmaIsPrefixSameLengthThenSameList!50 totalInput!1363 testedP!367 totalInput!1363))))

(declare-fun d!29421 () Bool)

(assert (=> d!29421 e!71539))

(declare-fun res!57912 () Bool)

(assert (=> d!29421 (=> (not res!57912) (not e!71539))))

(assert (=> d!29421 (= res!57912 (= (++!387 (_1!1410 lt!37675) (_2!1410 lt!37675)) totalInput!1363))))

(declare-fun e!71537 () tuple2!2400)

(assert (=> d!29421 (= lt!37675 e!71537)))

(declare-fun c!27429 () Bool)

(assert (=> d!29421 (= c!27429 (lostCause!79 r!15532))))

(declare-fun lt!37681 () Unit!1581)

(declare-fun Unit!1585 () Unit!1581)

(assert (=> d!29421 (= lt!37681 Unit!1585)))

(assert (=> d!29421 (= (getSuffix!74 totalInput!1363 testedP!367) testedSuffix!285)))

(declare-fun lt!37672 () Unit!1581)

(declare-fun lt!37661 () Unit!1581)

(assert (=> d!29421 (= lt!37672 lt!37661)))

(declare-fun lt!37686 () List!2036)

(assert (=> d!29421 (= testedSuffix!285 lt!37686)))

(assert (=> d!29421 (= lt!37661 (lemmaSamePrefixThenSameSuffix!70 testedP!367 testedSuffix!285 testedP!367 lt!37686 totalInput!1363))))

(assert (=> d!29421 (= lt!37686 (getSuffix!74 totalInput!1363 testedP!367))))

(declare-fun lt!37678 () Unit!1581)

(declare-fun lt!37671 () Unit!1581)

(assert (=> d!29421 (= lt!37678 lt!37671)))

(assert (=> d!29421 (isPrefix!137 testedP!367 (++!387 testedP!367 testedSuffix!285))))

(assert (=> d!29421 (= lt!37671 (lemmaConcatTwoListThenFirstIsPrefix!80 testedP!367 testedSuffix!285))))

(assert (=> d!29421 (validRegex!157 r!15532)))

(assert (=> d!29421 (= (findLongestMatchInner!50 r!15532 testedP!367 testedPSize!285 testedSuffix!285 totalInput!1363 totalInputSize!643) lt!37675)))

(declare-fun b!124380 () Bool)

(declare-fun Unit!1586 () Unit!1581)

(assert (=> b!124380 (= e!71532 Unit!1586)))

(declare-fun call!5373 () Regex!563)

(declare-fun bm!5365 () Bool)

(declare-fun call!5369 () List!2036)

(assert (=> bm!5365 (= call!5370 (findLongestMatchInner!50 call!5373 lt!37688 (+ testedPSize!285 1) call!5369 totalInput!1363 totalInputSize!643))))

(declare-fun b!124381 () Bool)

(assert (=> b!124381 (= e!71533 (tuple2!2401 testedP!367 Nil!2030))))

(declare-fun b!124382 () Bool)

(assert (=> b!124382 (= e!71538 e!71534)))

(assert (=> b!124382 (= lt!37677 call!5370)))

(declare-fun c!27433 () Bool)

(assert (=> b!124382 (= c!27433 (isEmpty!819 (_1!1410 lt!37677)))))

(declare-fun bm!5366 () Bool)

(declare-fun call!5371 () C!2048)

(assert (=> bm!5366 (= call!5371 (head!510 testedSuffix!285))))

(declare-fun bm!5367 () Bool)

(assert (=> bm!5367 (= call!5369 (tail!246 testedSuffix!285))))

(declare-fun b!124383 () Bool)

(assert (=> b!124383 (= e!71536 (>= (size!1900 (_1!1410 lt!37675)) (size!1900 testedP!367)))))

(declare-fun b!124384 () Bool)

(assert (=> b!124384 (= e!71537 (tuple2!2401 Nil!2030 totalInput!1363))))

(declare-fun b!124385 () Bool)

(assert (=> b!124385 (= e!71537 e!71535)))

(declare-fun c!27431 () Bool)

(assert (=> b!124385 (= c!27431 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!124386 () Bool)

(declare-fun Unit!1587 () Unit!1581)

(assert (=> b!124386 (= e!71532 Unit!1587)))

(declare-fun lt!37674 () Unit!1581)

(assert (=> b!124386 (= lt!37674 call!5375)))

(assert (=> b!124386 call!5368))

(declare-fun lt!37666 () Unit!1581)

(assert (=> b!124386 (= lt!37666 lt!37674)))

(declare-fun lt!37683 () Unit!1581)

(assert (=> b!124386 (= lt!37683 call!5372)))

(assert (=> b!124386 (= totalInput!1363 testedP!367)))

(declare-fun lt!37687 () Unit!1581)

(assert (=> b!124386 (= lt!37687 lt!37683)))

(assert (=> b!124386 false))

(declare-fun bm!5368 () Bool)

(assert (=> bm!5368 (= call!5375 (lemmaIsPrefixRefl!107 totalInput!1363 totalInput!1363))))

(declare-fun bm!5369 () Bool)

(assert (=> bm!5369 (= call!5368 (isPrefix!137 totalInput!1363 totalInput!1363))))

(declare-fun bm!5370 () Bool)

(assert (=> bm!5370 (= call!5373 (derivativeStep!68 r!15532 call!5371))))

(assert (= (and d!29421 c!27429) b!124384))

(assert (= (and d!29421 (not c!27429)) b!124385))

(assert (= (and b!124385 c!27431) b!124379))

(assert (= (and b!124385 (not c!27431)) b!124375))

(assert (= (and b!124379 c!27432) b!124381))

(assert (= (and b!124379 (not c!27432)) b!124373))

(assert (= (and b!124375 c!27428) b!124386))

(assert (= (and b!124375 (not c!27428)) b!124380))

(assert (= (and b!124375 c!27430) b!124382))

(assert (= (and b!124375 (not c!27430)) b!124377))

(assert (= (and b!124382 c!27433) b!124374))

(assert (= (and b!124382 (not c!27433)) b!124376))

(assert (= (or b!124382 b!124377) bm!5367))

(assert (= (or b!124382 b!124377) bm!5366))

(assert (= (or b!124382 b!124377) bm!5370))

(assert (= (or b!124382 b!124377) bm!5365))

(assert (= (or b!124379 b!124386) bm!5368))

(assert (= (or b!124379 b!124386) bm!5369))

(assert (= (or b!124379 b!124375) bm!5363))

(assert (= (or b!124379 b!124386) bm!5364))

(assert (= (and d!29421 res!57912) b!124378))

(assert (= (and b!124378 (not res!57913)) b!124383))

(declare-fun m!109987 () Bool)

(assert (=> bm!5365 m!109987))

(assert (=> bm!5364 m!109983))

(assert (=> bm!5366 m!109947))

(declare-fun m!109989 () Bool)

(assert (=> b!124383 m!109989))

(assert (=> b!124383 m!109967))

(declare-fun m!109991 () Bool)

(assert (=> b!124382 m!109991))

(assert (=> bm!5368 m!109979))

(assert (=> bm!5369 m!109981))

(assert (=> d!29421 m!109961))

(declare-fun m!109993 () Bool)

(assert (=> d!29421 m!109993))

(assert (=> d!29421 m!109923))

(declare-fun m!109995 () Bool)

(assert (=> d!29421 m!109995))

(assert (=> d!29421 m!109957))

(assert (=> d!29421 m!109969))

(declare-fun m!109997 () Bool)

(assert (=> d!29421 m!109997))

(assert (=> d!29421 m!109969))

(assert (=> d!29421 m!109973))

(declare-fun m!109999 () Bool)

(assert (=> bm!5370 m!109999))

(declare-fun m!110001 () Bool)

(assert (=> b!124378 m!110001))

(assert (=> b!124375 m!109965))

(assert (=> b!124375 m!109961))

(assert (=> b!124375 m!109963))

(declare-fun m!110003 () Bool)

(assert (=> b!124375 m!110003))

(declare-fun m!110005 () Bool)

(assert (=> b!124375 m!110005))

(assert (=> b!124375 m!109939))

(declare-fun m!110007 () Bool)

(assert (=> b!124375 m!110007))

(declare-fun m!110009 () Bool)

(assert (=> b!124375 m!110009))

(declare-fun m!110011 () Bool)

(assert (=> b!124375 m!110011))

(assert (=> b!124375 m!109947))

(assert (=> b!124375 m!110003))

(assert (=> b!124375 m!110009))

(assert (=> b!124375 m!109967))

(declare-fun m!110013 () Bool)

(assert (=> b!124375 m!110013))

(assert (=> b!124375 m!109961))

(declare-fun m!110015 () Bool)

(assert (=> b!124375 m!110015))

(assert (=> b!124375 m!109955))

(assert (=> bm!5367 m!109939))

(assert (=> bm!5363 m!109937))

(assert (=> b!124323 d!29421))

(declare-fun b!124387 () Bool)

(declare-fun e!71541 () tuple2!2400)

(assert (=> b!124387 (= e!71541 (tuple2!2401 Nil!2030 totalInput!1363))))

(declare-fun b!124388 () Bool)

(declare-fun e!71542 () tuple2!2400)

(assert (=> b!124388 (= e!71542 (tuple2!2401 lt!37587 lt!37595))))

(declare-fun b!124389 () Bool)

(declare-fun c!27436 () Bool)

(declare-fun call!5382 () Bool)

(assert (=> b!124389 (= c!27436 call!5382)))

(declare-fun lt!37697 () Unit!1581)

(declare-fun lt!37691 () Unit!1581)

(assert (=> b!124389 (= lt!37697 lt!37691)))

(declare-fun lt!37713 () C!2048)

(declare-fun lt!37710 () List!2036)

(assert (=> b!124389 (= (++!387 (++!387 lt!37587 (Cons!2030 lt!37713 Nil!2030)) lt!37710) totalInput!1363)))

(assert (=> b!124389 (= lt!37691 (lemmaMoveElementToOtherListKeepsConcatEq!33 lt!37587 lt!37713 lt!37710 totalInput!1363))))

(assert (=> b!124389 (= lt!37710 (tail!246 lt!37595))))

(assert (=> b!124389 (= lt!37713 (head!510 lt!37595))))

(declare-fun lt!37708 () Unit!1581)

(declare-fun lt!37704 () Unit!1581)

(assert (=> b!124389 (= lt!37708 lt!37704)))

(assert (=> b!124389 (isPrefix!137 (++!387 lt!37587 (Cons!2030 (head!510 (getSuffix!74 totalInput!1363 lt!37587)) Nil!2030)) totalInput!1363)))

(assert (=> b!124389 (= lt!37704 (lemmaAddHeadSuffixToPrefixStillPrefix!39 lt!37587 totalInput!1363))))

(declare-fun lt!37696 () Unit!1581)

(declare-fun lt!37693 () Unit!1581)

(assert (=> b!124389 (= lt!37696 lt!37693)))

(assert (=> b!124389 (= lt!37693 (lemmaAddHeadSuffixToPrefixStillPrefix!39 lt!37587 totalInput!1363))))

(declare-fun lt!37716 () List!2036)

(assert (=> b!124389 (= lt!37716 (++!387 lt!37587 (Cons!2030 (head!510 lt!37595) Nil!2030)))))

(declare-fun lt!37707 () Unit!1581)

(declare-fun e!71540 () Unit!1581)

(assert (=> b!124389 (= lt!37707 e!71540)))

(declare-fun c!27434 () Bool)

(assert (=> b!124389 (= c!27434 (= (size!1900 lt!37587) (size!1900 totalInput!1363)))))

(declare-fun lt!37690 () Unit!1581)

(declare-fun lt!37695 () Unit!1581)

(assert (=> b!124389 (= lt!37690 lt!37695)))

(assert (=> b!124389 (<= (size!1900 lt!37587) (size!1900 totalInput!1363))))

(assert (=> b!124389 (= lt!37695 (lemmaIsPrefixThenSmallerEqSize!50 lt!37587 totalInput!1363))))

(declare-fun e!71543 () tuple2!2400)

(declare-fun e!71546 () tuple2!2400)

(assert (=> b!124389 (= e!71543 e!71546)))

(declare-fun b!124390 () Bool)

(declare-fun lt!37705 () tuple2!2400)

(assert (=> b!124390 (= e!71542 lt!37705)))

(declare-fun b!124391 () Bool)

(declare-fun call!5378 () tuple2!2400)

(assert (=> b!124391 (= e!71546 call!5378)))

(declare-fun bm!5371 () Bool)

(assert (=> bm!5371 (= call!5382 (nullable!96 lt!37599))))

(declare-fun b!124392 () Bool)

(declare-fun e!71547 () Bool)

(declare-fun e!71544 () Bool)

(assert (=> b!124392 (= e!71547 e!71544)))

(declare-fun res!57915 () Bool)

(assert (=> b!124392 (=> res!57915 e!71544)))

(declare-fun lt!37703 () tuple2!2400)

(assert (=> b!124392 (= res!57915 (isEmpty!819 (_1!1410 lt!37703)))))

(declare-fun b!124393 () Bool)

(declare-fun c!27438 () Bool)

(assert (=> b!124393 (= c!27438 call!5382)))

(declare-fun lt!37712 () Unit!1581)

(declare-fun lt!37701 () Unit!1581)

(assert (=> b!124393 (= lt!37712 lt!37701)))

(assert (=> b!124393 (= totalInput!1363 lt!37587)))

(declare-fun call!5380 () Unit!1581)

(assert (=> b!124393 (= lt!37701 call!5380)))

(declare-fun lt!37692 () Unit!1581)

(declare-fun lt!37698 () Unit!1581)

(assert (=> b!124393 (= lt!37692 lt!37698)))

(declare-fun call!5376 () Bool)

(assert (=> b!124393 call!5376))

(declare-fun call!5383 () Unit!1581)

(assert (=> b!124393 (= lt!37698 call!5383)))

(assert (=> b!124393 (= e!71543 e!71541)))

(declare-fun bm!5372 () Bool)

(assert (=> bm!5372 (= call!5380 (lemmaIsPrefixSameLengthThenSameList!50 totalInput!1363 lt!37587 totalInput!1363))))

(declare-fun d!29423 () Bool)

(assert (=> d!29423 e!71547))

(declare-fun res!57914 () Bool)

(assert (=> d!29423 (=> (not res!57914) (not e!71547))))

(assert (=> d!29423 (= res!57914 (= (++!387 (_1!1410 lt!37703) (_2!1410 lt!37703)) totalInput!1363))))

(declare-fun e!71545 () tuple2!2400)

(assert (=> d!29423 (= lt!37703 e!71545)))

(declare-fun c!27435 () Bool)

(assert (=> d!29423 (= c!27435 (lostCause!79 lt!37599))))

(declare-fun lt!37709 () Unit!1581)

(declare-fun Unit!1588 () Unit!1581)

(assert (=> d!29423 (= lt!37709 Unit!1588)))

(assert (=> d!29423 (= (getSuffix!74 totalInput!1363 lt!37587) lt!37595)))

(declare-fun lt!37700 () Unit!1581)

(declare-fun lt!37689 () Unit!1581)

(assert (=> d!29423 (= lt!37700 lt!37689)))

(declare-fun lt!37714 () List!2036)

(assert (=> d!29423 (= lt!37595 lt!37714)))

(assert (=> d!29423 (= lt!37689 (lemmaSamePrefixThenSameSuffix!70 lt!37587 lt!37595 lt!37587 lt!37714 totalInput!1363))))

(assert (=> d!29423 (= lt!37714 (getSuffix!74 totalInput!1363 lt!37587))))

(declare-fun lt!37706 () Unit!1581)

(declare-fun lt!37699 () Unit!1581)

(assert (=> d!29423 (= lt!37706 lt!37699)))

(assert (=> d!29423 (isPrefix!137 lt!37587 (++!387 lt!37587 lt!37595))))

(assert (=> d!29423 (= lt!37699 (lemmaConcatTwoListThenFirstIsPrefix!80 lt!37587 lt!37595))))

(assert (=> d!29423 (validRegex!157 lt!37599)))

(assert (=> d!29423 (= (findLongestMatchInner!50 lt!37599 lt!37587 (+ 1 testedPSize!285) lt!37595 totalInput!1363 totalInputSize!643) lt!37703)))

(declare-fun b!124394 () Bool)

(declare-fun Unit!1589 () Unit!1581)

(assert (=> b!124394 (= e!71540 Unit!1589)))

(declare-fun call!5377 () List!2036)

(declare-fun call!5381 () Regex!563)

(declare-fun bm!5373 () Bool)

(assert (=> bm!5373 (= call!5378 (findLongestMatchInner!50 call!5381 lt!37716 (+ 1 testedPSize!285 1) call!5377 totalInput!1363 totalInputSize!643))))

(declare-fun b!124395 () Bool)

(assert (=> b!124395 (= e!71541 (tuple2!2401 lt!37587 Nil!2030))))

(declare-fun b!124396 () Bool)

(assert (=> b!124396 (= e!71546 e!71542)))

(assert (=> b!124396 (= lt!37705 call!5378)))

(declare-fun c!27439 () Bool)

(assert (=> b!124396 (= c!27439 (isEmpty!819 (_1!1410 lt!37705)))))

(declare-fun bm!5374 () Bool)

(declare-fun call!5379 () C!2048)

(assert (=> bm!5374 (= call!5379 (head!510 lt!37595))))

(declare-fun bm!5375 () Bool)

(assert (=> bm!5375 (= call!5377 (tail!246 lt!37595))))

(declare-fun b!124397 () Bool)

(assert (=> b!124397 (= e!71544 (>= (size!1900 (_1!1410 lt!37703)) (size!1900 lt!37587)))))

(declare-fun b!124398 () Bool)

(assert (=> b!124398 (= e!71545 (tuple2!2401 Nil!2030 totalInput!1363))))

(declare-fun b!124399 () Bool)

(assert (=> b!124399 (= e!71545 e!71543)))

(declare-fun c!27437 () Bool)

(assert (=> b!124399 (= c!27437 (= (+ 1 testedPSize!285) totalInputSize!643))))

(declare-fun b!124400 () Bool)

(declare-fun Unit!1590 () Unit!1581)

(assert (=> b!124400 (= e!71540 Unit!1590)))

(declare-fun lt!37702 () Unit!1581)

(assert (=> b!124400 (= lt!37702 call!5383)))

(assert (=> b!124400 call!5376))

(declare-fun lt!37694 () Unit!1581)

(assert (=> b!124400 (= lt!37694 lt!37702)))

(declare-fun lt!37711 () Unit!1581)

(assert (=> b!124400 (= lt!37711 call!5380)))

(assert (=> b!124400 (= totalInput!1363 lt!37587)))

(declare-fun lt!37715 () Unit!1581)

(assert (=> b!124400 (= lt!37715 lt!37711)))

(assert (=> b!124400 false))

(declare-fun bm!5376 () Bool)

(assert (=> bm!5376 (= call!5383 (lemmaIsPrefixRefl!107 totalInput!1363 totalInput!1363))))

(declare-fun bm!5377 () Bool)

(assert (=> bm!5377 (= call!5376 (isPrefix!137 totalInput!1363 totalInput!1363))))

(declare-fun bm!5378 () Bool)

(assert (=> bm!5378 (= call!5381 (derivativeStep!68 lt!37599 call!5379))))

(assert (= (and d!29423 c!27435) b!124398))

(assert (= (and d!29423 (not c!27435)) b!124399))

(assert (= (and b!124399 c!27437) b!124393))

(assert (= (and b!124399 (not c!27437)) b!124389))

(assert (= (and b!124393 c!27438) b!124395))

(assert (= (and b!124393 (not c!27438)) b!124387))

(assert (= (and b!124389 c!27434) b!124400))

(assert (= (and b!124389 (not c!27434)) b!124394))

(assert (= (and b!124389 c!27436) b!124396))

(assert (= (and b!124389 (not c!27436)) b!124391))

(assert (= (and b!124396 c!27439) b!124388))

(assert (= (and b!124396 (not c!27439)) b!124390))

(assert (= (or b!124396 b!124391) bm!5375))

(assert (= (or b!124396 b!124391) bm!5374))

(assert (= (or b!124396 b!124391) bm!5378))

(assert (= (or b!124396 b!124391) bm!5373))

(assert (= (or b!124393 b!124400) bm!5376))

(assert (= (or b!124393 b!124400) bm!5377))

(assert (= (or b!124393 b!124389) bm!5371))

(assert (= (or b!124393 b!124400) bm!5372))

(assert (= (and d!29423 res!57914) b!124392))

(assert (= (and b!124392 (not res!57915)) b!124397))

(declare-fun m!110017 () Bool)

(assert (=> bm!5373 m!110017))

(declare-fun m!110019 () Bool)

(assert (=> bm!5372 m!110019))

(declare-fun m!110021 () Bool)

(assert (=> bm!5374 m!110021))

(declare-fun m!110023 () Bool)

(assert (=> b!124397 m!110023))

(assert (=> b!124397 m!109971))

(declare-fun m!110025 () Bool)

(assert (=> b!124396 m!110025))

(assert (=> bm!5376 m!109979))

(assert (=> bm!5377 m!109981))

(declare-fun m!110027 () Bool)

(assert (=> d!29423 m!110027))

(declare-fun m!110029 () Bool)

(assert (=> d!29423 m!110029))

(declare-fun m!110031 () Bool)

(assert (=> d!29423 m!110031))

(declare-fun m!110033 () Bool)

(assert (=> d!29423 m!110033))

(declare-fun m!110035 () Bool)

(assert (=> d!29423 m!110035))

(assert (=> d!29423 m!109941))

(declare-fun m!110037 () Bool)

(assert (=> d!29423 m!110037))

(assert (=> d!29423 m!109941))

(assert (=> d!29423 m!109915))

(declare-fun m!110039 () Bool)

(assert (=> bm!5378 m!110039))

(declare-fun m!110041 () Bool)

(assert (=> b!124392 m!110041))

(declare-fun m!110043 () Bool)

(assert (=> b!124389 m!110043))

(assert (=> b!124389 m!110027))

(assert (=> b!124389 m!109963))

(declare-fun m!110045 () Bool)

(assert (=> b!124389 m!110045))

(declare-fun m!110047 () Bool)

(assert (=> b!124389 m!110047))

(declare-fun m!110049 () Bool)

(assert (=> b!124389 m!110049))

(declare-fun m!110051 () Bool)

(assert (=> b!124389 m!110051))

(declare-fun m!110053 () Bool)

(assert (=> b!124389 m!110053))

(declare-fun m!110055 () Bool)

(assert (=> b!124389 m!110055))

(assert (=> b!124389 m!110021))

(assert (=> b!124389 m!110045))

(assert (=> b!124389 m!110053))

(assert (=> b!124389 m!109971))

(declare-fun m!110057 () Bool)

(assert (=> b!124389 m!110057))

(assert (=> b!124389 m!110027))

(declare-fun m!110059 () Bool)

(assert (=> b!124389 m!110059))

(declare-fun m!110061 () Bool)

(assert (=> b!124389 m!110061))

(assert (=> bm!5375 m!110049))

(declare-fun m!110063 () Bool)

(assert (=> bm!5371 m!110063))

(assert (=> b!124323 d!29423))

(declare-fun d!29425 () Bool)

(declare-fun e!71550 () Bool)

(assert (=> d!29425 e!71550))

(declare-fun res!57918 () Bool)

(assert (=> d!29425 (=> (not res!57918) (not e!71550))))

(declare-fun lt!37719 () tuple2!2400)

(assert (=> d!29425 (= res!57918 (= lt!37719 (findLongestMatchInner!50 lt!37599 lt!37587 (+ 1 testedPSize!285) lt!37595 totalInput!1363 totalInputSize!643)))))

(declare-fun choose!1610 (Regex!563 List!2036 Int List!2036 List!2036 Int Cache!286) tuple2!2400)

(assert (=> d!29425 (= lt!37719 (choose!1610 lt!37599 lt!37587 (+ 1 testedPSize!285) lt!37595 totalInput!1363 totalInputSize!643 cache!470))))

(assert (=> d!29425 (validRegex!157 lt!37599)))

(assert (=> d!29425 (= (findLongestMatchInnerMem!12 lt!37599 lt!37587 (+ 1 testedPSize!285) lt!37595 totalInput!1363 totalInputSize!643 cache!470) lt!37719)))

(declare-fun b!124403 () Bool)

(assert (=> b!124403 (= e!71550 (valid!386 cache!470))))

(assert (= (and d!29425 res!57918) b!124403))

(assert (=> d!29425 m!109933))

(declare-fun m!110065 () Bool)

(assert (=> d!29425 m!110065))

(assert (=> d!29425 m!109915))

(assert (=> b!124403 m!109977))

(assert (=> b!124323 d!29425))

(declare-fun d!29427 () Bool)

(declare-fun lostCauseFct!35 (Regex!563) Bool)

(assert (=> d!29427 (= (lostCause!79 r!15532) (lostCauseFct!35 r!15532))))

(declare-fun bs!12037 () Bool)

(assert (= bs!12037 d!29427))

(declare-fun m!110067 () Bool)

(assert (=> bs!12037 m!110067))

(assert (=> b!124313 d!29427))

(declare-fun d!29429 () Bool)

(assert (=> d!29429 (= testedSuffix!285 lt!37585)))

(declare-fun lt!37722 () Unit!1581)

(declare-fun choose!1611 (List!2036 List!2036 List!2036 List!2036 List!2036) Unit!1581)

(assert (=> d!29429 (= lt!37722 (choose!1611 testedP!367 testedSuffix!285 testedP!367 lt!37585 totalInput!1363))))

(assert (=> d!29429 (isPrefix!137 testedP!367 totalInput!1363)))

(assert (=> d!29429 (= (lemmaSamePrefixThenSameSuffix!70 testedP!367 testedSuffix!285 testedP!367 lt!37585 totalInput!1363) lt!37722)))

(declare-fun bs!12038 () Bool)

(assert (= bs!12038 d!29429))

(declare-fun m!110069 () Bool)

(assert (=> bs!12038 m!110069))

(assert (=> bs!12038 m!109919))

(assert (=> b!124313 d!29429))

(declare-fun d!29431 () Bool)

(declare-fun lt!37725 () List!2036)

(assert (=> d!29431 (= (++!387 testedP!367 lt!37725) totalInput!1363)))

(declare-fun e!71553 () List!2036)

(assert (=> d!29431 (= lt!37725 e!71553)))

(declare-fun c!27442 () Bool)

(assert (=> d!29431 (= c!27442 ((_ is Cons!2030) testedP!367))))

(assert (=> d!29431 (>= (size!1900 totalInput!1363) (size!1900 testedP!367))))

(assert (=> d!29431 (= (getSuffix!74 totalInput!1363 testedP!367) lt!37725)))

(declare-fun b!124408 () Bool)

(assert (=> b!124408 (= e!71553 (getSuffix!74 (tail!246 totalInput!1363) (t!22513 testedP!367)))))

(declare-fun b!124409 () Bool)

(assert (=> b!124409 (= e!71553 totalInput!1363)))

(assert (= (and d!29431 c!27442) b!124408))

(assert (= (and d!29431 (not c!27442)) b!124409))

(declare-fun m!110071 () Bool)

(assert (=> d!29431 m!110071))

(assert (=> d!29431 m!109963))

(assert (=> d!29431 m!109967))

(declare-fun m!110073 () Bool)

(assert (=> b!124408 m!110073))

(assert (=> b!124408 m!110073))

(declare-fun m!110075 () Bool)

(assert (=> b!124408 m!110075))

(assert (=> b!124313 d!29431))

(declare-fun b!124428 () Bool)

(declare-fun e!71574 () Bool)

(declare-fun e!71572 () Bool)

(assert (=> b!124428 (= e!71574 e!71572)))

(declare-fun res!57930 () Bool)

(assert (=> b!124428 (= res!57930 (not (nullable!96 (reg!892 lt!37599))))))

(assert (=> b!124428 (=> (not res!57930) (not e!71572))))

(declare-fun b!124429 () Bool)

(declare-fun res!57931 () Bool)

(declare-fun e!71573 () Bool)

(assert (=> b!124429 (=> (not res!57931) (not e!71573))))

(declare-fun call!5392 () Bool)

(assert (=> b!124429 (= res!57931 call!5392)))

(declare-fun e!71568 () Bool)

(assert (=> b!124429 (= e!71568 e!71573)))

(declare-fun b!124430 () Bool)

(declare-fun e!71570 () Bool)

(assert (=> b!124430 (= e!71570 call!5392)))

(declare-fun b!124431 () Bool)

(assert (=> b!124431 (= e!71574 e!71568)))

(declare-fun c!27447 () Bool)

(assert (=> b!124431 (= c!27447 ((_ is Union!563) lt!37599))))

(declare-fun b!124432 () Bool)

(declare-fun res!57933 () Bool)

(declare-fun e!71569 () Bool)

(assert (=> b!124432 (=> res!57933 e!71569)))

(assert (=> b!124432 (= res!57933 (not ((_ is Concat!947) lt!37599)))))

(assert (=> b!124432 (= e!71568 e!71569)))

(declare-fun bm!5385 () Bool)

(declare-fun call!5390 () Bool)

(assert (=> bm!5385 (= call!5390 (validRegex!157 (ite c!27447 (regTwo!1639 lt!37599) (regOne!1638 lt!37599))))))

(declare-fun b!124433 () Bool)

(assert (=> b!124433 (= e!71569 e!71570)))

(declare-fun res!57929 () Bool)

(assert (=> b!124433 (=> (not res!57929) (not e!71570))))

(assert (=> b!124433 (= res!57929 call!5390)))

(declare-fun b!124434 () Bool)

(declare-fun e!71571 () Bool)

(assert (=> b!124434 (= e!71571 e!71574)))

(declare-fun c!27448 () Bool)

(assert (=> b!124434 (= c!27448 ((_ is Star!563) lt!37599))))

(declare-fun d!29433 () Bool)

(declare-fun res!57932 () Bool)

(assert (=> d!29433 (=> res!57932 e!71571)))

(assert (=> d!29433 (= res!57932 ((_ is ElementMatch!563) lt!37599))))

(assert (=> d!29433 (= (validRegex!157 lt!37599) e!71571)))

(declare-fun b!124435 () Bool)

(declare-fun call!5391 () Bool)

(assert (=> b!124435 (= e!71572 call!5391)))

(declare-fun bm!5386 () Bool)

(assert (=> bm!5386 (= call!5392 call!5391)))

(declare-fun b!124436 () Bool)

(assert (=> b!124436 (= e!71573 call!5390)))

(declare-fun bm!5387 () Bool)

(assert (=> bm!5387 (= call!5391 (validRegex!157 (ite c!27448 (reg!892 lt!37599) (ite c!27447 (regOne!1639 lt!37599) (regTwo!1638 lt!37599)))))))

(assert (= (and d!29433 (not res!57932)) b!124434))

(assert (= (and b!124434 c!27448) b!124428))

(assert (= (and b!124434 (not c!27448)) b!124431))

(assert (= (and b!124428 res!57930) b!124435))

(assert (= (and b!124431 c!27447) b!124429))

(assert (= (and b!124431 (not c!27447)) b!124432))

(assert (= (and b!124429 res!57931) b!124436))

(assert (= (and b!124432 (not res!57933)) b!124433))

(assert (= (and b!124433 res!57929) b!124430))

(assert (= (or b!124436 b!124433) bm!5385))

(assert (= (or b!124429 b!124430) bm!5386))

(assert (= (or b!124435 bm!5386) bm!5387))

(declare-fun m!110077 () Bool)

(assert (=> b!124428 m!110077))

(declare-fun m!110079 () Bool)

(assert (=> bm!5385 m!110079))

(declare-fun m!110081 () Bool)

(assert (=> bm!5387 m!110081))

(assert (=> b!124314 d!29433))

(declare-fun b!124457 () Bool)

(declare-fun c!27462 () Bool)

(assert (=> b!124457 (= c!27462 (nullable!96 (regOne!1638 r!15532)))))

(declare-fun e!71589 () Regex!563)

(declare-fun e!71586 () Regex!563)

(assert (=> b!124457 (= e!71589 e!71586)))

(declare-fun b!124458 () Bool)

(declare-fun e!71585 () Regex!563)

(assert (=> b!124458 (= e!71585 (ite (= lt!37586 (c!27412 r!15532)) EmptyExpr!563 EmptyLang!563))))

(declare-fun b!124459 () Bool)

(declare-fun e!71588 () Regex!563)

(declare-fun call!5403 () Regex!563)

(declare-fun call!5401 () Regex!563)

(assert (=> b!124459 (= e!71588 (Union!563 call!5403 call!5401))))

(declare-fun b!124460 () Bool)

(declare-fun c!27460 () Bool)

(assert (=> b!124460 (= c!27460 ((_ is Union!563) r!15532))))

(assert (=> b!124460 (= e!71585 e!71588)))

(declare-fun bm!5397 () Bool)

(assert (=> bm!5397 (= call!5403 (derivativeStep!68 (ite c!27460 (regOne!1639 r!15532) (regTwo!1638 r!15532)) lt!37586))))

(declare-fun b!124461 () Bool)

(declare-fun e!71587 () Regex!563)

(assert (=> b!124461 (= e!71587 EmptyLang!563)))

(declare-fun b!124462 () Bool)

(declare-fun call!5402 () Regex!563)

(assert (=> b!124462 (= e!71589 (Concat!947 call!5402 r!15532))))

(declare-fun b!124463 () Bool)

(assert (=> b!124463 (= e!71587 e!71585)))

(declare-fun c!27463 () Bool)

(assert (=> b!124463 (= c!27463 ((_ is ElementMatch!563) r!15532))))

(declare-fun d!29435 () Bool)

(declare-fun lt!37728 () Regex!563)

(assert (=> d!29435 (validRegex!157 lt!37728)))

(assert (=> d!29435 (= lt!37728 e!71587)))

(declare-fun c!27461 () Bool)

(assert (=> d!29435 (= c!27461 (or ((_ is EmptyExpr!563) r!15532) ((_ is EmptyLang!563) r!15532)))))

(assert (=> d!29435 (validRegex!157 r!15532)))

(assert (=> d!29435 (= (derivativeStep!68 r!15532 lt!37586) lt!37728)))

(declare-fun c!27459 () Bool)

(declare-fun bm!5396 () Bool)

(assert (=> bm!5396 (= call!5401 (derivativeStep!68 (ite c!27460 (regTwo!1639 r!15532) (ite c!27459 (reg!892 r!15532) (regOne!1638 r!15532))) lt!37586))))

(declare-fun bm!5398 () Bool)

(assert (=> bm!5398 (= call!5402 call!5401)))

(declare-fun b!124464 () Bool)

(declare-fun call!5404 () Regex!563)

(assert (=> b!124464 (= e!71586 (Union!563 (Concat!947 call!5404 (regTwo!1638 r!15532)) EmptyLang!563))))

(declare-fun bm!5399 () Bool)

(assert (=> bm!5399 (= call!5404 call!5402)))

(declare-fun b!124465 () Bool)

(assert (=> b!124465 (= e!71586 (Union!563 (Concat!947 call!5404 (regTwo!1638 r!15532)) call!5403))))

(declare-fun b!124466 () Bool)

(assert (=> b!124466 (= e!71588 e!71589)))

(assert (=> b!124466 (= c!27459 ((_ is Star!563) r!15532))))

(assert (= (and d!29435 c!27461) b!124461))

(assert (= (and d!29435 (not c!27461)) b!124463))

(assert (= (and b!124463 c!27463) b!124458))

(assert (= (and b!124463 (not c!27463)) b!124460))

(assert (= (and b!124460 c!27460) b!124459))

(assert (= (and b!124460 (not c!27460)) b!124466))

(assert (= (and b!124466 c!27459) b!124462))

(assert (= (and b!124466 (not c!27459)) b!124457))

(assert (= (and b!124457 c!27462) b!124465))

(assert (= (and b!124457 (not c!27462)) b!124464))

(assert (= (or b!124465 b!124464) bm!5399))

(assert (= (or b!124462 bm!5399) bm!5398))

(assert (= (or b!124459 bm!5398) bm!5396))

(assert (= (or b!124459 b!124465) bm!5397))

(declare-fun m!110083 () Bool)

(assert (=> b!124457 m!110083))

(declare-fun m!110085 () Bool)

(assert (=> bm!5397 m!110085))

(declare-fun m!110087 () Bool)

(assert (=> d!29435 m!110087))

(assert (=> d!29435 m!109973))

(declare-fun m!110089 () Bool)

(assert (=> bm!5396 m!110089))

(assert (=> b!124314 d!29435))

(declare-fun b!124467 () Bool)

(declare-fun e!71596 () Bool)

(declare-fun e!71594 () Bool)

(assert (=> b!124467 (= e!71596 e!71594)))

(declare-fun res!57935 () Bool)

(assert (=> b!124467 (= res!57935 (not (nullable!96 (reg!892 r!15532))))))

(assert (=> b!124467 (=> (not res!57935) (not e!71594))))

(declare-fun b!124468 () Bool)

(declare-fun res!57936 () Bool)

(declare-fun e!71595 () Bool)

(assert (=> b!124468 (=> (not res!57936) (not e!71595))))

(declare-fun call!5407 () Bool)

(assert (=> b!124468 (= res!57936 call!5407)))

(declare-fun e!71590 () Bool)

(assert (=> b!124468 (= e!71590 e!71595)))

(declare-fun b!124469 () Bool)

(declare-fun e!71592 () Bool)

(assert (=> b!124469 (= e!71592 call!5407)))

(declare-fun b!124470 () Bool)

(assert (=> b!124470 (= e!71596 e!71590)))

(declare-fun c!27464 () Bool)

(assert (=> b!124470 (= c!27464 ((_ is Union!563) r!15532))))

(declare-fun b!124471 () Bool)

(declare-fun res!57938 () Bool)

(declare-fun e!71591 () Bool)

(assert (=> b!124471 (=> res!57938 e!71591)))

(assert (=> b!124471 (= res!57938 (not ((_ is Concat!947) r!15532)))))

(assert (=> b!124471 (= e!71590 e!71591)))

(declare-fun bm!5400 () Bool)

(declare-fun call!5405 () Bool)

(assert (=> bm!5400 (= call!5405 (validRegex!157 (ite c!27464 (regTwo!1639 r!15532) (regOne!1638 r!15532))))))

(declare-fun b!124472 () Bool)

(assert (=> b!124472 (= e!71591 e!71592)))

(declare-fun res!57934 () Bool)

(assert (=> b!124472 (=> (not res!57934) (not e!71592))))

(assert (=> b!124472 (= res!57934 call!5405)))

(declare-fun b!124473 () Bool)

(declare-fun e!71593 () Bool)

(assert (=> b!124473 (= e!71593 e!71596)))

(declare-fun c!27465 () Bool)

(assert (=> b!124473 (= c!27465 ((_ is Star!563) r!15532))))

(declare-fun d!29437 () Bool)

(declare-fun res!57937 () Bool)

(assert (=> d!29437 (=> res!57937 e!71593)))

(assert (=> d!29437 (= res!57937 ((_ is ElementMatch!563) r!15532))))

(assert (=> d!29437 (= (validRegex!157 r!15532) e!71593)))

(declare-fun b!124474 () Bool)

(declare-fun call!5406 () Bool)

(assert (=> b!124474 (= e!71594 call!5406)))

(declare-fun bm!5401 () Bool)

(assert (=> bm!5401 (= call!5407 call!5406)))

(declare-fun b!124475 () Bool)

(assert (=> b!124475 (= e!71595 call!5405)))

(declare-fun bm!5402 () Bool)

(assert (=> bm!5402 (= call!5406 (validRegex!157 (ite c!27465 (reg!892 r!15532) (ite c!27464 (regOne!1639 r!15532) (regTwo!1638 r!15532)))))))

(assert (= (and d!29437 (not res!57937)) b!124473))

(assert (= (and b!124473 c!27465) b!124467))

(assert (= (and b!124473 (not c!27465)) b!124470))

(assert (= (and b!124467 res!57935) b!124474))

(assert (= (and b!124470 c!27464) b!124468))

(assert (= (and b!124470 (not c!27464)) b!124471))

(assert (= (and b!124468 res!57936) b!124475))

(assert (= (and b!124471 (not res!57938)) b!124472))

(assert (= (and b!124472 res!57934) b!124469))

(assert (= (or b!124475 b!124472) bm!5400))

(assert (= (or b!124468 b!124469) bm!5401))

(assert (= (or b!124474 bm!5401) bm!5402))

(declare-fun m!110091 () Bool)

(assert (=> b!124467 m!110091))

(declare-fun m!110093 () Bool)

(assert (=> bm!5400 m!110093))

(declare-fun m!110095 () Bool)

(assert (=> bm!5402 m!110095))

(assert (=> start!12560 d!29437))

(declare-fun d!29439 () Bool)

(declare-fun res!57941 () Bool)

(declare-fun e!71599 () Bool)

(assert (=> d!29439 (=> (not res!57941) (not e!71599))))

(assert (=> d!29439 (= res!57941 ((_ is HashMap!425) (cache!879 cache!470)))))

(assert (=> d!29439 (= (inv!2564 cache!470) e!71599)))

(declare-fun b!124478 () Bool)

(declare-fun validCacheMap!32 (MutableMap!425) Bool)

(assert (=> b!124478 (= e!71599 (validCacheMap!32 (cache!879 cache!470)))))

(assert (= (and d!29439 res!57941) b!124478))

(declare-fun m!110097 () Bool)

(assert (=> b!124478 m!110097))

(assert (=> start!12560 d!29439))

(declare-fun d!29441 () Bool)

(assert (=> d!29441 (= (valid!386 cache!470) (validCacheMap!32 (cache!879 cache!470)))))

(declare-fun bs!12039 () Bool)

(assert (= bs!12039 d!29441))

(assert (=> bs!12039 m!110097))

(assert (=> b!124324 d!29441))

(declare-fun d!29443 () Bool)

(assert (=> d!29443 (= (array_inv!535 (_keys!720 (v!13391 (underlying!1057 (v!13392 (underlying!1058 (cache!879 cache!470))))))) (bvsge (size!1898 (_keys!720 (v!13391 (underlying!1057 (v!13392 (underlying!1058 (cache!879 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!124335 d!29443))

(declare-fun d!29445 () Bool)

(assert (=> d!29445 (= (array_inv!536 (_values!707 (v!13391 (underlying!1057 (v!13392 (underlying!1058 (cache!879 cache!470))))))) (bvsge (size!1899 (_values!707 (v!13391 (underlying!1057 (v!13392 (underlying!1058 (cache!879 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!124335 d!29445))

(declare-fun d!29447 () Bool)

(declare-fun e!71606 () Bool)

(assert (=> d!29447 e!71606))

(declare-fun res!57953 () Bool)

(assert (=> d!29447 (=> res!57953 e!71606)))

(declare-fun lt!37731 () Bool)

(assert (=> d!29447 (= res!57953 (not lt!37731))))

(declare-fun e!71608 () Bool)

(assert (=> d!29447 (= lt!37731 e!71608)))

(declare-fun res!57951 () Bool)

(assert (=> d!29447 (=> res!57951 e!71608)))

(assert (=> d!29447 (= res!57951 ((_ is Nil!2030) testedP!367))))

(assert (=> d!29447 (= (isPrefix!137 testedP!367 totalInput!1363) lt!37731)))

(declare-fun b!124490 () Bool)

(assert (=> b!124490 (= e!71606 (>= (size!1900 totalInput!1363) (size!1900 testedP!367)))))

(declare-fun b!124488 () Bool)

(declare-fun res!57952 () Bool)

(declare-fun e!71607 () Bool)

(assert (=> b!124488 (=> (not res!57952) (not e!71607))))

(assert (=> b!124488 (= res!57952 (= (head!510 testedP!367) (head!510 totalInput!1363)))))

(declare-fun b!124487 () Bool)

(assert (=> b!124487 (= e!71608 e!71607)))

(declare-fun res!57950 () Bool)

(assert (=> b!124487 (=> (not res!57950) (not e!71607))))

(assert (=> b!124487 (= res!57950 (not ((_ is Nil!2030) totalInput!1363)))))

(declare-fun b!124489 () Bool)

(assert (=> b!124489 (= e!71607 (isPrefix!137 (tail!246 testedP!367) (tail!246 totalInput!1363)))))

(assert (= (and d!29447 (not res!57951)) b!124487))

(assert (= (and b!124487 res!57950) b!124488))

(assert (= (and b!124488 res!57952) b!124489))

(assert (= (and d!29447 (not res!57953)) b!124490))

(assert (=> b!124490 m!109963))

(assert (=> b!124490 m!109967))

(declare-fun m!110099 () Bool)

(assert (=> b!124488 m!110099))

(declare-fun m!110101 () Bool)

(assert (=> b!124488 m!110101))

(declare-fun m!110103 () Bool)

(assert (=> b!124489 m!110103))

(assert (=> b!124489 m!110073))

(assert (=> b!124489 m!110103))

(assert (=> b!124489 m!110073))

(declare-fun m!110105 () Bool)

(assert (=> b!124489 m!110105))

(assert (=> b!124336 d!29447))

(declare-fun d!29449 () Bool)

(declare-fun e!71609 () Bool)

(assert (=> d!29449 e!71609))

(declare-fun res!57957 () Bool)

(assert (=> d!29449 (=> res!57957 e!71609)))

(declare-fun lt!37732 () Bool)

(assert (=> d!29449 (= res!57957 (not lt!37732))))

(declare-fun e!71611 () Bool)

(assert (=> d!29449 (= lt!37732 e!71611)))

(declare-fun res!57955 () Bool)

(assert (=> d!29449 (=> res!57955 e!71611)))

(assert (=> d!29449 (= res!57955 ((_ is Nil!2030) testedP!367))))

(assert (=> d!29449 (= (isPrefix!137 testedP!367 lt!37598) lt!37732)))

(declare-fun b!124494 () Bool)

(assert (=> b!124494 (= e!71609 (>= (size!1900 lt!37598) (size!1900 testedP!367)))))

(declare-fun b!124492 () Bool)

(declare-fun res!57956 () Bool)

(declare-fun e!71610 () Bool)

(assert (=> b!124492 (=> (not res!57956) (not e!71610))))

(assert (=> b!124492 (= res!57956 (= (head!510 testedP!367) (head!510 lt!37598)))))

(declare-fun b!124491 () Bool)

(assert (=> b!124491 (= e!71611 e!71610)))

(declare-fun res!57954 () Bool)

(assert (=> b!124491 (=> (not res!57954) (not e!71610))))

(assert (=> b!124491 (= res!57954 (not ((_ is Nil!2030) lt!37598)))))

(declare-fun b!124493 () Bool)

(assert (=> b!124493 (= e!71610 (isPrefix!137 (tail!246 testedP!367) (tail!246 lt!37598)))))

(assert (= (and d!29449 (not res!57955)) b!124491))

(assert (= (and b!124491 res!57954) b!124492))

(assert (= (and b!124492 res!57956) b!124493))

(assert (= (and d!29449 (not res!57957)) b!124494))

(declare-fun m!110107 () Bool)

(assert (=> b!124494 m!110107))

(assert (=> b!124494 m!109967))

(assert (=> b!124492 m!110099))

(declare-fun m!110109 () Bool)

(assert (=> b!124492 m!110109))

(assert (=> b!124493 m!110103))

(declare-fun m!110111 () Bool)

(assert (=> b!124493 m!110111))

(assert (=> b!124493 m!110103))

(assert (=> b!124493 m!110111))

(declare-fun m!110113 () Bool)

(assert (=> b!124493 m!110113))

(assert (=> b!124336 d!29449))

(declare-fun d!29451 () Bool)

(assert (=> d!29451 (isPrefix!137 testedP!367 (++!387 testedP!367 testedSuffix!285))))

(declare-fun lt!37735 () Unit!1581)

(declare-fun choose!1612 (List!2036 List!2036) Unit!1581)

(assert (=> d!29451 (= lt!37735 (choose!1612 testedP!367 testedSuffix!285))))

(assert (=> d!29451 (= (lemmaConcatTwoListThenFirstIsPrefix!80 testedP!367 testedSuffix!285) lt!37735)))

(declare-fun bs!12040 () Bool)

(assert (= bs!12040 d!29451))

(assert (=> bs!12040 m!109969))

(assert (=> bs!12040 m!109969))

(assert (=> bs!12040 m!109997))

(declare-fun m!110115 () Bool)

(assert (=> bs!12040 m!110115))

(assert (=> b!124336 d!29451))

(declare-fun d!29453 () Bool)

(declare-fun lt!37736 () Int)

(assert (=> d!29453 (>= lt!37736 0)))

(declare-fun e!71612 () Int)

(assert (=> d!29453 (= lt!37736 e!71612)))

(declare-fun c!27466 () Bool)

(assert (=> d!29453 (= c!27466 ((_ is Nil!2030) totalInput!1363))))

(assert (=> d!29453 (= (size!1900 totalInput!1363) lt!37736)))

(declare-fun b!124495 () Bool)

(assert (=> b!124495 (= e!71612 0)))

(declare-fun b!124496 () Bool)

(assert (=> b!124496 (= e!71612 (+ 1 (size!1900 (t!22513 totalInput!1363))))))

(assert (= (and d!29453 c!27466) b!124495))

(assert (= (and d!29453 (not c!27466)) b!124496))

(declare-fun m!110117 () Bool)

(assert (=> b!124496 m!110117))

(assert (=> b!124326 d!29453))

(declare-fun d!29455 () Bool)

(assert (=> d!29455 (<= (size!1900 testedP!367) (size!1900 totalInput!1363))))

(declare-fun lt!37739 () Unit!1581)

(declare-fun choose!1613 (List!2036 List!2036) Unit!1581)

(assert (=> d!29455 (= lt!37739 (choose!1613 testedP!367 totalInput!1363))))

(assert (=> d!29455 (isPrefix!137 testedP!367 totalInput!1363)))

(assert (=> d!29455 (= (lemmaIsPrefixThenSmallerEqSize!50 testedP!367 totalInput!1363) lt!37739)))

(declare-fun bs!12041 () Bool)

(assert (= bs!12041 d!29455))

(assert (=> bs!12041 m!109967))

(assert (=> bs!12041 m!109963))

(declare-fun m!110119 () Bool)

(assert (=> bs!12041 m!110119))

(assert (=> bs!12041 m!109919))

(assert (=> b!124337 d!29455))

(declare-fun d!29457 () Bool)

(declare-fun lt!37740 () Int)

(assert (=> d!29457 (>= lt!37740 0)))

(declare-fun e!71613 () Int)

(assert (=> d!29457 (= lt!37740 e!71613)))

(declare-fun c!27467 () Bool)

(assert (=> d!29457 (= c!27467 ((_ is Nil!2030) lt!37587))))

(assert (=> d!29457 (= (size!1900 lt!37587) lt!37740)))

(declare-fun b!124497 () Bool)

(assert (=> b!124497 (= e!71613 0)))

(declare-fun b!124498 () Bool)

(assert (=> b!124498 (= e!71613 (+ 1 (size!1900 (t!22513 lt!37587))))))

(assert (= (and d!29457 c!27467) b!124497))

(assert (= (and d!29457 (not c!27467)) b!124498))

(declare-fun m!110121 () Bool)

(assert (=> b!124498 m!110121))

(assert (=> b!124338 d!29457))

(declare-fun d!29459 () Bool)

(assert (=> d!29459 (isPrefix!137 totalInput!1363 totalInput!1363)))

(declare-fun lt!37743 () Unit!1581)

(declare-fun choose!1614 (List!2036 List!2036) Unit!1581)

(assert (=> d!29459 (= lt!37743 (choose!1614 totalInput!1363 totalInput!1363))))

(assert (=> d!29459 (= (lemmaIsPrefixRefl!107 totalInput!1363 totalInput!1363) lt!37743)))

(declare-fun bs!12042 () Bool)

(assert (= bs!12042 d!29459))

(assert (=> bs!12042 m!109981))

(declare-fun m!110123 () Bool)

(assert (=> bs!12042 m!110123))

(assert (=> b!124328 d!29459))

(declare-fun d!29461 () Bool)

(declare-fun e!71614 () Bool)

(assert (=> d!29461 e!71614))

(declare-fun res!57961 () Bool)

(assert (=> d!29461 (=> res!57961 e!71614)))

(declare-fun lt!37744 () Bool)

(assert (=> d!29461 (= res!57961 (not lt!37744))))

(declare-fun e!71616 () Bool)

(assert (=> d!29461 (= lt!37744 e!71616)))

(declare-fun res!57959 () Bool)

(assert (=> d!29461 (=> res!57959 e!71616)))

(assert (=> d!29461 (= res!57959 ((_ is Nil!2030) totalInput!1363))))

(assert (=> d!29461 (= (isPrefix!137 totalInput!1363 totalInput!1363) lt!37744)))

(declare-fun b!124502 () Bool)

(assert (=> b!124502 (= e!71614 (>= (size!1900 totalInput!1363) (size!1900 totalInput!1363)))))

(declare-fun b!124500 () Bool)

(declare-fun res!57960 () Bool)

(declare-fun e!71615 () Bool)

(assert (=> b!124500 (=> (not res!57960) (not e!71615))))

(assert (=> b!124500 (= res!57960 (= (head!510 totalInput!1363) (head!510 totalInput!1363)))))

(declare-fun b!124499 () Bool)

(assert (=> b!124499 (= e!71616 e!71615)))

(declare-fun res!57958 () Bool)

(assert (=> b!124499 (=> (not res!57958) (not e!71615))))

(assert (=> b!124499 (= res!57958 (not ((_ is Nil!2030) totalInput!1363)))))

(declare-fun b!124501 () Bool)

(assert (=> b!124501 (= e!71615 (isPrefix!137 (tail!246 totalInput!1363) (tail!246 totalInput!1363)))))

(assert (= (and d!29461 (not res!57959)) b!124499))

(assert (= (and b!124499 res!57958) b!124500))

(assert (= (and b!124500 res!57960) b!124501))

(assert (= (and d!29461 (not res!57961)) b!124502))

(assert (=> b!124502 m!109963))

(assert (=> b!124502 m!109963))

(assert (=> b!124500 m!110101))

(assert (=> b!124500 m!110101))

(assert (=> b!124501 m!110073))

(assert (=> b!124501 m!110073))

(assert (=> b!124501 m!110073))

(assert (=> b!124501 m!110073))

(declare-fun m!110125 () Bool)

(assert (=> b!124501 m!110125))

(assert (=> b!124328 d!29461))

(declare-fun d!29463 () Bool)

(assert (=> d!29463 (= totalInput!1363 testedP!367)))

(declare-fun lt!37747 () Unit!1581)

(declare-fun choose!1615 (List!2036 List!2036 List!2036) Unit!1581)

(assert (=> d!29463 (= lt!37747 (choose!1615 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!29463 (isPrefix!137 totalInput!1363 totalInput!1363)))

(assert (=> d!29463 (= (lemmaIsPrefixSameLengthThenSameList!50 totalInput!1363 testedP!367 totalInput!1363) lt!37747)))

(declare-fun bs!12043 () Bool)

(assert (= bs!12043 d!29463))

(declare-fun m!110127 () Bool)

(assert (=> bs!12043 m!110127))

(assert (=> bs!12043 m!109981))

(assert (=> b!124328 d!29463))

(declare-fun d!29465 () Bool)

(declare-fun e!71621 () Bool)

(assert (=> d!29465 e!71621))

(declare-fun res!57967 () Bool)

(assert (=> d!29465 (=> (not res!57967) (not e!71621))))

(declare-fun lt!37750 () List!2036)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!230 (List!2036) (InoxSet C!2048))

(assert (=> d!29465 (= res!57967 (= (content!230 lt!37750) ((_ map or) (content!230 testedP!367) (content!230 testedSuffix!285))))))

(declare-fun e!71622 () List!2036)

(assert (=> d!29465 (= lt!37750 e!71622)))

(declare-fun c!27470 () Bool)

(assert (=> d!29465 (= c!27470 ((_ is Nil!2030) testedP!367))))

(assert (=> d!29465 (= (++!387 testedP!367 testedSuffix!285) lt!37750)))

(declare-fun b!124512 () Bool)

(assert (=> b!124512 (= e!71622 (Cons!2030 (h!7427 testedP!367) (++!387 (t!22513 testedP!367) testedSuffix!285)))))

(declare-fun b!124511 () Bool)

(assert (=> b!124511 (= e!71622 testedSuffix!285)))

(declare-fun b!124513 () Bool)

(declare-fun res!57966 () Bool)

(assert (=> b!124513 (=> (not res!57966) (not e!71621))))

(assert (=> b!124513 (= res!57966 (= (size!1900 lt!37750) (+ (size!1900 testedP!367) (size!1900 testedSuffix!285))))))

(declare-fun b!124514 () Bool)

(assert (=> b!124514 (= e!71621 (or (not (= testedSuffix!285 Nil!2030)) (= lt!37750 testedP!367)))))

(assert (= (and d!29465 c!27470) b!124511))

(assert (= (and d!29465 (not c!27470)) b!124512))

(assert (= (and d!29465 res!57967) b!124513))

(assert (= (and b!124513 res!57966) b!124514))

(declare-fun m!110129 () Bool)

(assert (=> d!29465 m!110129))

(declare-fun m!110131 () Bool)

(assert (=> d!29465 m!110131))

(declare-fun m!110133 () Bool)

(assert (=> d!29465 m!110133))

(declare-fun m!110135 () Bool)

(assert (=> b!124512 m!110135))

(declare-fun m!110137 () Bool)

(assert (=> b!124513 m!110137))

(assert (=> b!124513 m!109967))

(declare-fun m!110139 () Bool)

(assert (=> b!124513 m!110139))

(assert (=> b!124318 d!29465))

(declare-fun d!29467 () Bool)

(declare-fun e!71623 () Bool)

(assert (=> d!29467 e!71623))

(declare-fun res!57971 () Bool)

(assert (=> d!29467 (=> res!57971 e!71623)))

(declare-fun lt!37751 () Bool)

(assert (=> d!29467 (= res!57971 (not lt!37751))))

(declare-fun e!71625 () Bool)

(assert (=> d!29467 (= lt!37751 e!71625)))

(declare-fun res!57969 () Bool)

(assert (=> d!29467 (=> res!57969 e!71625)))

(assert (=> d!29467 (= res!57969 ((_ is Nil!2030) (++!387 testedP!367 (Cons!2030 (head!510 lt!37585) Nil!2030))))))

(assert (=> d!29467 (= (isPrefix!137 (++!387 testedP!367 (Cons!2030 (head!510 lt!37585) Nil!2030)) totalInput!1363) lt!37751)))

(declare-fun b!124518 () Bool)

(assert (=> b!124518 (= e!71623 (>= (size!1900 totalInput!1363) (size!1900 (++!387 testedP!367 (Cons!2030 (head!510 lt!37585) Nil!2030)))))))

(declare-fun b!124516 () Bool)

(declare-fun res!57970 () Bool)

(declare-fun e!71624 () Bool)

(assert (=> b!124516 (=> (not res!57970) (not e!71624))))

(assert (=> b!124516 (= res!57970 (= (head!510 (++!387 testedP!367 (Cons!2030 (head!510 lt!37585) Nil!2030))) (head!510 totalInput!1363)))))

(declare-fun b!124515 () Bool)

(assert (=> b!124515 (= e!71625 e!71624)))

(declare-fun res!57968 () Bool)

(assert (=> b!124515 (=> (not res!57968) (not e!71624))))

(assert (=> b!124515 (= res!57968 (not ((_ is Nil!2030) totalInput!1363)))))

(declare-fun b!124517 () Bool)

(assert (=> b!124517 (= e!71624 (isPrefix!137 (tail!246 (++!387 testedP!367 (Cons!2030 (head!510 lt!37585) Nil!2030))) (tail!246 totalInput!1363)))))

(assert (= (and d!29467 (not res!57969)) b!124515))

(assert (= (and b!124515 res!57968) b!124516))

(assert (= (and b!124516 res!57970) b!124517))

(assert (= (and d!29467 (not res!57971)) b!124518))

(assert (=> b!124518 m!109963))

(assert (=> b!124518 m!109943))

(declare-fun m!110141 () Bool)

(assert (=> b!124518 m!110141))

(assert (=> b!124516 m!109943))

(declare-fun m!110143 () Bool)

(assert (=> b!124516 m!110143))

(assert (=> b!124516 m!110101))

(assert (=> b!124517 m!109943))

(declare-fun m!110145 () Bool)

(assert (=> b!124517 m!110145))

(assert (=> b!124517 m!110073))

(assert (=> b!124517 m!110145))

(assert (=> b!124517 m!110073))

(declare-fun m!110147 () Bool)

(assert (=> b!124517 m!110147))

(assert (=> b!124329 d!29467))

(declare-fun d!29469 () Bool)

(assert (=> d!29469 (= (head!510 lt!37585) (h!7427 lt!37585))))

(assert (=> b!124329 d!29469))

(declare-fun d!29471 () Bool)

(assert (=> d!29471 (= (head!510 testedSuffix!285) (h!7427 testedSuffix!285))))

(assert (=> b!124329 d!29471))

(declare-fun d!29473 () Bool)

(assert (=> d!29473 (= (tail!246 testedSuffix!285) (t!22513 testedSuffix!285))))

(assert (=> b!124329 d!29473))

(declare-fun d!29475 () Bool)

(declare-fun nullableFct!25 (Regex!563) Bool)

(assert (=> d!29475 (= (nullable!96 r!15532) (nullableFct!25 r!15532))))

(declare-fun bs!12044 () Bool)

(assert (= bs!12044 d!29475))

(declare-fun m!110149 () Bool)

(assert (=> bs!12044 m!110149))

(assert (=> b!124329 d!29475))

(declare-fun d!29477 () Bool)

(assert (=> d!29477 (isPrefix!137 (++!387 testedP!367 (Cons!2030 (head!510 (getSuffix!74 totalInput!1363 testedP!367)) Nil!2030)) totalInput!1363)))

(declare-fun lt!37754 () Unit!1581)

(declare-fun choose!1616 (List!2036 List!2036) Unit!1581)

(assert (=> d!29477 (= lt!37754 (choose!1616 testedP!367 totalInput!1363))))

(assert (=> d!29477 (isPrefix!137 testedP!367 totalInput!1363)))

(assert (=> d!29477 (= (lemmaAddHeadSuffixToPrefixStillPrefix!39 testedP!367 totalInput!1363) lt!37754)))

(declare-fun bs!12045 () Bool)

(assert (= bs!12045 d!29477))

(assert (=> bs!12045 m!110009))

(assert (=> bs!12045 m!109961))

(declare-fun m!110151 () Bool)

(assert (=> bs!12045 m!110151))

(assert (=> bs!12045 m!110009))

(assert (=> bs!12045 m!110011))

(assert (=> bs!12045 m!109919))

(assert (=> bs!12045 m!109961))

(assert (=> bs!12045 m!110015))

(assert (=> b!124329 d!29477))

(declare-fun d!29479 () Bool)

(declare-fun e!71626 () Bool)

(assert (=> d!29479 e!71626))

(declare-fun res!57973 () Bool)

(assert (=> d!29479 (=> (not res!57973) (not e!71626))))

(declare-fun lt!37755 () List!2036)

(assert (=> d!29479 (= res!57973 (= (content!230 lt!37755) ((_ map or) (content!230 lt!37587) (content!230 lt!37595))))))

(declare-fun e!71627 () List!2036)

(assert (=> d!29479 (= lt!37755 e!71627)))

(declare-fun c!27471 () Bool)

(assert (=> d!29479 (= c!27471 ((_ is Nil!2030) lt!37587))))

(assert (=> d!29479 (= (++!387 lt!37587 lt!37595) lt!37755)))

(declare-fun b!124520 () Bool)

(assert (=> b!124520 (= e!71627 (Cons!2030 (h!7427 lt!37587) (++!387 (t!22513 lt!37587) lt!37595)))))

(declare-fun b!124519 () Bool)

(assert (=> b!124519 (= e!71627 lt!37595)))

(declare-fun b!124521 () Bool)

(declare-fun res!57972 () Bool)

(assert (=> b!124521 (=> (not res!57972) (not e!71626))))

(assert (=> b!124521 (= res!57972 (= (size!1900 lt!37755) (+ (size!1900 lt!37587) (size!1900 lt!37595))))))

(declare-fun b!124522 () Bool)

(assert (=> b!124522 (= e!71626 (or (not (= lt!37595 Nil!2030)) (= lt!37755 lt!37587)))))

(assert (= (and d!29479 c!27471) b!124519))

(assert (= (and d!29479 (not c!27471)) b!124520))

(assert (= (and d!29479 res!57973) b!124521))

(assert (= (and b!124521 res!57972) b!124522))

(declare-fun m!110153 () Bool)

(assert (=> d!29479 m!110153))

(declare-fun m!110155 () Bool)

(assert (=> d!29479 m!110155))

(declare-fun m!110157 () Bool)

(assert (=> d!29479 m!110157))

(declare-fun m!110159 () Bool)

(assert (=> b!124520 m!110159))

(declare-fun m!110161 () Bool)

(assert (=> b!124521 m!110161))

(assert (=> b!124521 m!109971))

(declare-fun m!110163 () Bool)

(assert (=> b!124521 m!110163))

(assert (=> b!124329 d!29479))

(declare-fun d!29481 () Bool)

(assert (=> d!29481 (= (++!387 (++!387 testedP!367 (Cons!2030 lt!37586 Nil!2030)) lt!37595) totalInput!1363)))

(declare-fun lt!37758 () Unit!1581)

(declare-fun choose!1617 (List!2036 C!2048 List!2036 List!2036) Unit!1581)

(assert (=> d!29481 (= lt!37758 (choose!1617 testedP!367 lt!37586 lt!37595 totalInput!1363))))

(assert (=> d!29481 (= (++!387 testedP!367 (Cons!2030 lt!37586 lt!37595)) totalInput!1363)))

(assert (=> d!29481 (= (lemmaMoveElementToOtherListKeepsConcatEq!33 testedP!367 lt!37586 lt!37595 totalInput!1363) lt!37758)))

(declare-fun bs!12046 () Bool)

(assert (= bs!12046 d!29481))

(assert (=> bs!12046 m!109953))

(assert (=> bs!12046 m!109953))

(declare-fun m!110165 () Bool)

(assert (=> bs!12046 m!110165))

(declare-fun m!110167 () Bool)

(assert (=> bs!12046 m!110167))

(declare-fun m!110169 () Bool)

(assert (=> bs!12046 m!110169))

(assert (=> b!124329 d!29481))

(declare-fun d!29483 () Bool)

(declare-fun e!71628 () Bool)

(assert (=> d!29483 e!71628))

(declare-fun res!57975 () Bool)

(assert (=> d!29483 (=> (not res!57975) (not e!71628))))

(declare-fun lt!37759 () List!2036)

(assert (=> d!29483 (= res!57975 (= (content!230 lt!37759) ((_ map or) (content!230 testedP!367) (content!230 (Cons!2030 (head!510 lt!37585) Nil!2030)))))))

(declare-fun e!71629 () List!2036)

(assert (=> d!29483 (= lt!37759 e!71629)))

(declare-fun c!27472 () Bool)

(assert (=> d!29483 (= c!27472 ((_ is Nil!2030) testedP!367))))

(assert (=> d!29483 (= (++!387 testedP!367 (Cons!2030 (head!510 lt!37585) Nil!2030)) lt!37759)))

(declare-fun b!124524 () Bool)

(assert (=> b!124524 (= e!71629 (Cons!2030 (h!7427 testedP!367) (++!387 (t!22513 testedP!367) (Cons!2030 (head!510 lt!37585) Nil!2030))))))

(declare-fun b!124523 () Bool)

(assert (=> b!124523 (= e!71629 (Cons!2030 (head!510 lt!37585) Nil!2030))))

(declare-fun b!124525 () Bool)

(declare-fun res!57974 () Bool)

(assert (=> b!124525 (=> (not res!57974) (not e!71628))))

(assert (=> b!124525 (= res!57974 (= (size!1900 lt!37759) (+ (size!1900 testedP!367) (size!1900 (Cons!2030 (head!510 lt!37585) Nil!2030)))))))

(declare-fun b!124526 () Bool)

(assert (=> b!124526 (= e!71628 (or (not (= (Cons!2030 (head!510 lt!37585) Nil!2030) Nil!2030)) (= lt!37759 testedP!367)))))

(assert (= (and d!29483 c!27472) b!124523))

(assert (= (and d!29483 (not c!27472)) b!124524))

(assert (= (and d!29483 res!57975) b!124525))

(assert (= (and b!124525 res!57974) b!124526))

(declare-fun m!110171 () Bool)

(assert (=> d!29483 m!110171))

(assert (=> d!29483 m!110131))

(declare-fun m!110173 () Bool)

(assert (=> d!29483 m!110173))

(declare-fun m!110175 () Bool)

(assert (=> b!124524 m!110175))

(declare-fun m!110177 () Bool)

(assert (=> b!124525 m!110177))

(assert (=> b!124525 m!109967))

(declare-fun m!110179 () Bool)

(assert (=> b!124525 m!110179))

(assert (=> b!124329 d!29483))

(declare-fun d!29485 () Bool)

(declare-fun e!71630 () Bool)

(assert (=> d!29485 e!71630))

(declare-fun res!57977 () Bool)

(assert (=> d!29485 (=> (not res!57977) (not e!71630))))

(declare-fun lt!37760 () List!2036)

(assert (=> d!29485 (= res!57977 (= (content!230 lt!37760) ((_ map or) (content!230 testedP!367) (content!230 (Cons!2030 lt!37586 Nil!2030)))))))

(declare-fun e!71631 () List!2036)

(assert (=> d!29485 (= lt!37760 e!71631)))

(declare-fun c!27473 () Bool)

(assert (=> d!29485 (= c!27473 ((_ is Nil!2030) testedP!367))))

(assert (=> d!29485 (= (++!387 testedP!367 (Cons!2030 lt!37586 Nil!2030)) lt!37760)))

(declare-fun b!124528 () Bool)

(assert (=> b!124528 (= e!71631 (Cons!2030 (h!7427 testedP!367) (++!387 (t!22513 testedP!367) (Cons!2030 lt!37586 Nil!2030))))))

(declare-fun b!124527 () Bool)

(assert (=> b!124527 (= e!71631 (Cons!2030 lt!37586 Nil!2030))))

(declare-fun b!124529 () Bool)

(declare-fun res!57976 () Bool)

(assert (=> b!124529 (=> (not res!57976) (not e!71630))))

(assert (=> b!124529 (= res!57976 (= (size!1900 lt!37760) (+ (size!1900 testedP!367) (size!1900 (Cons!2030 lt!37586 Nil!2030)))))))

(declare-fun b!124530 () Bool)

(assert (=> b!124530 (= e!71630 (or (not (= (Cons!2030 lt!37586 Nil!2030) Nil!2030)) (= lt!37760 testedP!367)))))

(assert (= (and d!29485 c!27473) b!124527))

(assert (= (and d!29485 (not c!27473)) b!124528))

(assert (= (and d!29485 res!57977) b!124529))

(assert (= (and b!124529 res!57976) b!124530))

(declare-fun m!110181 () Bool)

(assert (=> d!29485 m!110181))

(assert (=> d!29485 m!110131))

(declare-fun m!110183 () Bool)

(assert (=> d!29485 m!110183))

(declare-fun m!110185 () Bool)

(assert (=> b!124528 m!110185))

(declare-fun m!110187 () Bool)

(assert (=> b!124529 m!110187))

(assert (=> b!124529 m!109967))

(declare-fun m!110189 () Bool)

(assert (=> b!124529 m!110189))

(assert (=> b!124329 d!29485))

(declare-fun b!124535 () Bool)

(declare-fun e!71634 () Bool)

(declare-fun tp!68153 () Bool)

(assert (=> b!124535 (= e!71634 (and tp_is_empty!1181 tp!68153))))

(assert (=> b!124317 (= tp!68144 e!71634)))

(assert (= (and b!124317 ((_ is Cons!2030) (t!22513 testedP!367))) b!124535))

(declare-fun e!71637 () Bool)

(declare-fun b!124540 () Bool)

(declare-fun tp!68160 () Bool)

(declare-fun tp!68162 () Bool)

(declare-fun tp!68161 () Bool)

(assert (=> b!124540 (= e!71637 (and tp!68160 tp_is_empty!1181 tp!68161 tp!68162))))

(assert (=> b!124327 (= tp!68140 e!71637)))

(assert (= (and b!124327 ((_ is Cons!2031) mapDefault!1660)) b!124540))

(declare-fun b!124541 () Bool)

(declare-fun e!71638 () Bool)

(declare-fun tp!68163 () Bool)

(assert (=> b!124541 (= e!71638 (and tp_is_empty!1181 tp!68163))))

(assert (=> b!124333 (= tp!68145 e!71638)))

(assert (= (and b!124333 ((_ is Cons!2030) (t!22513 testedSuffix!285))) b!124541))

(declare-fun b!124555 () Bool)

(declare-fun e!71641 () Bool)

(declare-fun tp!68177 () Bool)

(declare-fun tp!68175 () Bool)

(assert (=> b!124555 (= e!71641 (and tp!68177 tp!68175))))

(assert (=> b!124334 (= tp!68150 e!71641)))

(declare-fun b!124553 () Bool)

(declare-fun tp!68174 () Bool)

(declare-fun tp!68178 () Bool)

(assert (=> b!124553 (= e!71641 (and tp!68174 tp!68178))))

(declare-fun b!124554 () Bool)

(declare-fun tp!68176 () Bool)

(assert (=> b!124554 (= e!71641 tp!68176)))

(declare-fun b!124552 () Bool)

(assert (=> b!124552 (= e!71641 tp_is_empty!1181)))

(assert (= (and b!124334 ((_ is ElementMatch!563) (regOne!1639 r!15532))) b!124552))

(assert (= (and b!124334 ((_ is Concat!947) (regOne!1639 r!15532))) b!124553))

(assert (= (and b!124334 ((_ is Star!563) (regOne!1639 r!15532))) b!124554))

(assert (= (and b!124334 ((_ is Union!563) (regOne!1639 r!15532))) b!124555))

(declare-fun b!124559 () Bool)

(declare-fun e!71642 () Bool)

(declare-fun tp!68182 () Bool)

(declare-fun tp!68180 () Bool)

(assert (=> b!124559 (= e!71642 (and tp!68182 tp!68180))))

(assert (=> b!124334 (= tp!68139 e!71642)))

(declare-fun b!124557 () Bool)

(declare-fun tp!68179 () Bool)

(declare-fun tp!68183 () Bool)

(assert (=> b!124557 (= e!71642 (and tp!68179 tp!68183))))

(declare-fun b!124558 () Bool)

(declare-fun tp!68181 () Bool)

(assert (=> b!124558 (= e!71642 tp!68181)))

(declare-fun b!124556 () Bool)

(assert (=> b!124556 (= e!71642 tp_is_empty!1181)))

(assert (= (and b!124334 ((_ is ElementMatch!563) (regTwo!1639 r!15532))) b!124556))

(assert (= (and b!124334 ((_ is Concat!947) (regTwo!1639 r!15532))) b!124557))

(assert (= (and b!124334 ((_ is Star!563) (regTwo!1639 r!15532))) b!124558))

(assert (= (and b!124334 ((_ is Union!563) (regTwo!1639 r!15532))) b!124559))

(declare-fun mapIsEmpty!1663 () Bool)

(declare-fun mapRes!1663 () Bool)

(assert (=> mapIsEmpty!1663 mapRes!1663))

(declare-fun condMapEmpty!1663 () Bool)

(declare-fun mapDefault!1663 () List!2037)

(assert (=> mapNonEmpty!1660 (= condMapEmpty!1663 (= mapRest!1660 ((as const (Array (_ BitVec 32) List!2037)) mapDefault!1663)))))

(declare-fun e!71647 () Bool)

(assert (=> mapNonEmpty!1660 (= tp!68136 (and e!71647 mapRes!1663))))

(declare-fun mapNonEmpty!1663 () Bool)

(declare-fun tp!68201 () Bool)

(declare-fun e!71648 () Bool)

(assert (=> mapNonEmpty!1663 (= mapRes!1663 (and tp!68201 e!71648))))

(declare-fun mapKey!1663 () (_ BitVec 32))

(declare-fun mapRest!1663 () (Array (_ BitVec 32) List!2037))

(declare-fun mapValue!1663 () List!2037)

(assert (=> mapNonEmpty!1663 (= mapRest!1660 (store mapRest!1663 mapKey!1663 mapValue!1663))))

(declare-fun tp!68198 () Bool)

(declare-fun b!124566 () Bool)

(declare-fun tp!68200 () Bool)

(declare-fun tp!68204 () Bool)

(assert (=> b!124566 (= e!71648 (and tp!68204 tp_is_empty!1181 tp!68198 tp!68200))))

(declare-fun tp!68203 () Bool)

(declare-fun b!124567 () Bool)

(declare-fun tp!68199 () Bool)

(declare-fun tp!68202 () Bool)

(assert (=> b!124567 (= e!71647 (and tp!68202 tp_is_empty!1181 tp!68199 tp!68203))))

(assert (= (and mapNonEmpty!1660 condMapEmpty!1663) mapIsEmpty!1663))

(assert (= (and mapNonEmpty!1660 (not condMapEmpty!1663)) mapNonEmpty!1663))

(assert (= (and mapNonEmpty!1663 ((_ is Cons!2031) mapValue!1663)) b!124566))

(assert (= (and mapNonEmpty!1660 ((_ is Cons!2031) mapDefault!1663)) b!124567))

(declare-fun m!110191 () Bool)

(assert (=> mapNonEmpty!1663 m!110191))

(declare-fun tp!68207 () Bool)

(declare-fun tp!68205 () Bool)

(declare-fun e!71649 () Bool)

(declare-fun b!124568 () Bool)

(declare-fun tp!68206 () Bool)

(assert (=> b!124568 (= e!71649 (and tp!68205 tp_is_empty!1181 tp!68206 tp!68207))))

(assert (=> mapNonEmpty!1660 (= tp!68146 e!71649)))

(assert (= (and mapNonEmpty!1660 ((_ is Cons!2031) mapValue!1660)) b!124568))

(declare-fun b!124572 () Bool)

(declare-fun e!71650 () Bool)

(declare-fun tp!68211 () Bool)

(declare-fun tp!68209 () Bool)

(assert (=> b!124572 (= e!71650 (and tp!68211 tp!68209))))

(assert (=> b!124315 (= tp!68147 e!71650)))

(declare-fun b!124570 () Bool)

(declare-fun tp!68208 () Bool)

(declare-fun tp!68212 () Bool)

(assert (=> b!124570 (= e!71650 (and tp!68208 tp!68212))))

(declare-fun b!124571 () Bool)

(declare-fun tp!68210 () Bool)

(assert (=> b!124571 (= e!71650 tp!68210)))

(declare-fun b!124569 () Bool)

(assert (=> b!124569 (= e!71650 tp_is_empty!1181)))

(assert (= (and b!124315 ((_ is ElementMatch!563) (reg!892 r!15532))) b!124569))

(assert (= (and b!124315 ((_ is Concat!947) (reg!892 r!15532))) b!124570))

(assert (= (and b!124315 ((_ is Star!563) (reg!892 r!15532))) b!124571))

(assert (= (and b!124315 ((_ is Union!563) (reg!892 r!15532))) b!124572))

(declare-fun tp!68213 () Bool)

(declare-fun tp!68214 () Bool)

(declare-fun tp!68215 () Bool)

(declare-fun b!124573 () Bool)

(declare-fun e!71651 () Bool)

(assert (=> b!124573 (= e!71651 (and tp!68213 tp_is_empty!1181 tp!68214 tp!68215))))

(assert (=> b!124335 (= tp!68137 e!71651)))

(assert (= (and b!124335 ((_ is Cons!2031) (zeroValue!685 (v!13391 (underlying!1057 (v!13392 (underlying!1058 (cache!879 cache!470)))))))) b!124573))

(declare-fun e!71652 () Bool)

(declare-fun tp!68217 () Bool)

(declare-fun b!124574 () Bool)

(declare-fun tp!68218 () Bool)

(declare-fun tp!68216 () Bool)

(assert (=> b!124574 (= e!71652 (and tp!68216 tp_is_empty!1181 tp!68217 tp!68218))))

(assert (=> b!124335 (= tp!68142 e!71652)))

(assert (= (and b!124335 ((_ is Cons!2031) (minValue!685 (v!13391 (underlying!1057 (v!13392 (underlying!1058 (cache!879 cache!470)))))))) b!124574))

(declare-fun b!124575 () Bool)

(declare-fun e!71653 () Bool)

(declare-fun tp!68219 () Bool)

(assert (=> b!124575 (= e!71653 (and tp_is_empty!1181 tp!68219))))

(assert (=> b!124321 (= tp!68149 e!71653)))

(assert (= (and b!124321 ((_ is Cons!2030) (t!22513 totalInput!1363))) b!124575))

(declare-fun b!124579 () Bool)

(declare-fun e!71654 () Bool)

(declare-fun tp!68223 () Bool)

(declare-fun tp!68221 () Bool)

(assert (=> b!124579 (= e!71654 (and tp!68223 tp!68221))))

(assert (=> b!124316 (= tp!68138 e!71654)))

(declare-fun b!124577 () Bool)

(declare-fun tp!68220 () Bool)

(declare-fun tp!68224 () Bool)

(assert (=> b!124577 (= e!71654 (and tp!68220 tp!68224))))

(declare-fun b!124578 () Bool)

(declare-fun tp!68222 () Bool)

(assert (=> b!124578 (= e!71654 tp!68222)))

(declare-fun b!124576 () Bool)

(assert (=> b!124576 (= e!71654 tp_is_empty!1181)))

(assert (= (and b!124316 ((_ is ElementMatch!563) (regOne!1638 r!15532))) b!124576))

(assert (= (and b!124316 ((_ is Concat!947) (regOne!1638 r!15532))) b!124577))

(assert (= (and b!124316 ((_ is Star!563) (regOne!1638 r!15532))) b!124578))

(assert (= (and b!124316 ((_ is Union!563) (regOne!1638 r!15532))) b!124579))

(declare-fun b!124583 () Bool)

(declare-fun e!71655 () Bool)

(declare-fun tp!68228 () Bool)

(declare-fun tp!68226 () Bool)

(assert (=> b!124583 (= e!71655 (and tp!68228 tp!68226))))

(assert (=> b!124316 (= tp!68148 e!71655)))

(declare-fun b!124581 () Bool)

(declare-fun tp!68225 () Bool)

(declare-fun tp!68229 () Bool)

(assert (=> b!124581 (= e!71655 (and tp!68225 tp!68229))))

(declare-fun b!124582 () Bool)

(declare-fun tp!68227 () Bool)

(assert (=> b!124582 (= e!71655 tp!68227)))

(declare-fun b!124580 () Bool)

(assert (=> b!124580 (= e!71655 tp_is_empty!1181)))

(assert (= (and b!124316 ((_ is ElementMatch!563) (regTwo!1638 r!15532))) b!124580))

(assert (= (and b!124316 ((_ is Concat!947) (regTwo!1638 r!15532))) b!124581))

(assert (= (and b!124316 ((_ is Star!563) (regTwo!1638 r!15532))) b!124582))

(assert (= (and b!124316 ((_ is Union!563) (regTwo!1638 r!15532))) b!124583))

(check-sat (not b!124518) (not d!29479) (not b!124457) (not b!124392) (not b!124521) (not b!124383) (not b!124492) (not d!29485) (not bm!5397) (not bm!5377) (not d!29427) (not b!124516) (not b!124570) (not b!124502) (not b!124489) (not b!124517) (not d!29475) (not d!29481) (not b!124573) (not b!124428) (not bm!5367) (not b!124490) (not bm!5371) (not b!124578) (not b!124581) (not b!124501) (not bm!5364) (not d!29425) (not b!124389) (not bm!5370) (not b!124408) (not d!29441) (not b!124378) (not b!124494) (not bm!5385) (not bm!5365) (not d!29463) (not bm!5396) (not b_next!3947) (not b!124557) (not mapNonEmpty!1663) (not bm!5378) (not b_next!3945) (not bm!5372) (not b!124540) (not b!124555) (not d!29465) (not b!124396) (not b!124488) (not b!124554) (not b!124498) (not bm!5363) (not b!124528) (not b!124572) (not bm!5400) (not b!124579) (not bm!5366) (not d!29459) (not b!124520) (not d!29483) (not b!124344) (not b!124535) (not b!124577) (not bm!5375) b_and!6077 (not b!124512) b_and!6075 (not b!124558) (not b!124513) (not bm!5402) (not d!29421) (not b!124478) (not bm!5374) (not b!124524) (not bm!5369) (not b!124375) (not b!124582) (not b!124382) (not b!124493) (not d!29455) (not bm!5368) (not b!124583) (not b!124575) (not d!29451) (not b!124397) (not b!124529) (not b!124541) (not b!124496) (not b!124553) (not b!124467) tp_is_empty!1181 (not b!124559) (not b!124574) (not d!29423) (not b!124571) (not b!124568) (not b!124403) (not b!124567) (not b!124525) (not d!29429) (not d!29431) (not bm!5376) (not bm!5373) (not b!124566) (not bm!5387) (not d!29435) (not d!29477) (not b!124500))
(check-sat b_and!6075 b_and!6077 (not b_next!3945) (not b_next!3947))
