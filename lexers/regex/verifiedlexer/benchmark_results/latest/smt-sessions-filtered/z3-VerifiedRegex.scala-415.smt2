; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12258 () Bool)

(assert start!12258)

(declare-fun b!121074 () Bool)

(declare-fun b_free!3873 () Bool)

(declare-fun b_next!3873 () Bool)

(assert (=> b!121074 (= b_free!3873 (not b_next!3873))))

(declare-fun tp!66506 () Bool)

(declare-fun b_and!6003 () Bool)

(assert (=> b!121074 (= tp!66506 b_and!6003)))

(declare-fun b!121095 () Bool)

(declare-fun b_free!3875 () Bool)

(declare-fun b_next!3875 () Bool)

(assert (=> b!121095 (= b_free!3875 (not b_next!3875))))

(declare-fun tp!66507 () Bool)

(declare-fun b_and!6005 () Bool)

(assert (=> b!121095 (= tp!66507 b_and!6005)))

(declare-fun b!121073 () Bool)

(declare-fun e!69360 () Bool)

(declare-fun tp_is_empty!1145 () Bool)

(declare-fun tp!66511 () Bool)

(assert (=> b!121073 (= e!69360 (and tp_is_empty!1145 tp!66511))))

(declare-fun e!69359 () Bool)

(declare-fun e!69364 () Bool)

(assert (=> b!121074 (= e!69359 (and e!69364 tp!66506))))

(declare-fun b!121075 () Bool)

(declare-fun e!69373 () Bool)

(declare-fun tp!66509 () Bool)

(assert (=> b!121075 (= e!69373 (and tp_is_empty!1145 tp!66509))))

(declare-fun b!121076 () Bool)

(declare-fun e!69361 () Bool)

(declare-fun e!69379 () Bool)

(assert (=> b!121076 (= e!69361 e!69379)))

(declare-fun b!121077 () Bool)

(declare-fun e!69362 () Bool)

(declare-fun e!69375 () Bool)

(assert (=> b!121077 (= e!69362 e!69375)))

(declare-fun res!56800 () Bool)

(assert (=> b!121077 (=> (not res!56800) (not e!69375))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!36166 () Int)

(assert (=> b!121077 (= res!56800 (= testedPSize!285 lt!36166))))

(declare-datatypes ((C!2012 0))(
  ( (C!2013 (val!732 Int)) )
))
(declare-datatypes ((List!2001 0))(
  ( (Nil!1995) (Cons!1995 (h!7392 C!2012) (t!22478 List!2001)) )
))
(declare-fun testedP!367 () List!2001)

(declare-fun size!1849 (List!2001) Int)

(assert (=> b!121077 (= lt!36166 (size!1849 testedP!367))))

(declare-fun b!121078 () Bool)

(declare-fun e!69377 () Bool)

(assert (=> b!121078 (= e!69377 e!69359)))

(declare-fun b!121079 () Bool)

(declare-datatypes ((Unit!1514 0))(
  ( (Unit!1515) )
))
(declare-fun e!69366 () Unit!1514)

(declare-fun Unit!1516 () Unit!1514)

(assert (=> b!121079 (= e!69366 Unit!1516)))

(declare-fun b!121080 () Bool)

(declare-fun e!69370 () Bool)

(declare-fun e!69365 () Bool)

(assert (=> b!121080 (= e!69370 (not e!69365))))

(declare-fun res!56802 () Bool)

(assert (=> b!121080 (=> res!56802 e!69365)))

(declare-fun totalInput!1363 () List!2001)

(declare-fun isPrefix!124 (List!2001 List!2001) Bool)

(assert (=> b!121080 (= res!56802 (not (isPrefix!124 testedP!367 totalInput!1363)))))

(declare-fun lt!36168 () List!2001)

(assert (=> b!121080 (isPrefix!124 testedP!367 lt!36168)))

(declare-fun lt!36164 () Unit!1514)

(declare-fun testedSuffix!285 () List!2001)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!68 (List!2001 List!2001) Unit!1514)

(assert (=> b!121080 (= lt!36164 (lemmaConcatTwoListThenFirstIsPrefix!68 testedP!367 testedSuffix!285))))

(declare-fun b!121081 () Bool)

(declare-fun e!69372 () Bool)

(declare-fun tp!66514 () Bool)

(assert (=> b!121081 (= e!69372 (and tp_is_empty!1145 tp!66514))))

(declare-fun b!121082 () Bool)

(declare-fun res!56798 () Bool)

(declare-fun e!69371 () Bool)

(assert (=> b!121082 (=> res!56798 e!69371)))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!121082 (= res!56798 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!121083 () Bool)

(declare-fun e!69374 () Bool)

(assert (=> b!121083 (= e!69374 e!69362)))

(declare-fun res!56803 () Bool)

(assert (=> b!121083 (=> (not res!56803) (not e!69362))))

(assert (=> b!121083 (= res!56803 (= lt!36168 totalInput!1363))))

(declare-fun ++!375 (List!2001 List!2001) List!2001)

(assert (=> b!121083 (= lt!36168 (++!375 testedP!367 testedSuffix!285))))

(declare-fun b!121084 () Bool)

(declare-datatypes ((Regex!545 0))(
  ( (ElementMatch!545 (c!26994 C!2012)) (Concat!929 (regOne!1602 Regex!545) (regTwo!1602 Regex!545)) (EmptyExpr!545) (Star!545 (reg!874 Regex!545)) (EmptyLang!545) (Union!545 (regOne!1603 Regex!545) (regTwo!1603 Regex!545)) )
))
(declare-datatypes ((tuple2!2314 0))(
  ( (tuple2!2315 (_1!1367 Regex!545) (_2!1367 C!2012)) )
))
(declare-datatypes ((tuple2!2316 0))(
  ( (tuple2!2317 (_1!1368 tuple2!2314) (_2!1368 Regex!545)) )
))
(declare-datatypes ((List!2002 0))(
  ( (Nil!1996) (Cons!1996 (h!7393 tuple2!2316) (t!22479 List!2002)) )
))
(declare-datatypes ((array!1519 0))(
  ( (array!1520 (arr!706 (Array (_ BitVec 32) (_ BitVec 64))) (size!1850 (_ BitVec 32))) )
))
(declare-datatypes ((array!1521 0))(
  ( (array!1522 (arr!707 (Array (_ BitVec 32) List!2002)) (size!1851 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!822 0))(
  ( (LongMapFixedSize!823 (defaultEntry!750 Int) (mask!1351 (_ BitVec 32)) (extraKeys!657 (_ BitVec 32)) (zeroValue!667 List!2002) (minValue!667 List!2002) (_size!955 (_ BitVec 32)) (_keys!702 array!1519) (_values!689 array!1521) (_vacant!472 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1633 0))(
  ( (Cell!1634 (v!13353 LongMapFixedSize!822)) )
))
(declare-datatypes ((MutLongMap!411 0))(
  ( (LongMap!411 (underlying!1021 Cell!1633)) (MutLongMapExt!410 (__x!2158 Int)) )
))
(declare-fun lt!36165 () MutLongMap!411)

(get-info :version)

(assert (=> b!121084 (= e!69364 (and e!69361 ((_ is LongMap!411) lt!36165)))))

(declare-datatypes ((Hashable!407 0))(
  ( (HashableExt!406 (__x!2159 Int)) )
))
(declare-datatypes ((Cell!1635 0))(
  ( (Cell!1636 (v!13354 MutLongMap!411)) )
))
(declare-datatypes ((MutableMap!407 0))(
  ( (MutableMapExt!406 (__x!2160 Int)) (HashMap!407 (underlying!1022 Cell!1635) (hashF!2283 Hashable!407) (_size!956 (_ BitVec 32)) (defaultValue!556 Int)) )
))
(declare-datatypes ((Cache!250 0))(
  ( (Cache!251 (cache!859 MutableMap!407)) )
))
(declare-fun cache!470 () Cache!250)

(assert (=> b!121084 (= lt!36165 (v!13354 (underlying!1022 (cache!859 cache!470))))))

(declare-fun b!121085 () Bool)

(assert (=> b!121085 (= e!69365 e!69371)))

(declare-fun res!56801 () Bool)

(assert (=> b!121085 (=> res!56801 e!69371)))

(declare-fun r!15532 () Regex!545)

(declare-fun lostCause!67 (Regex!545) Bool)

(assert (=> b!121085 (= res!56801 (lostCause!67 r!15532))))

(declare-fun lt!36170 () List!2001)

(assert (=> b!121085 (and (= testedSuffix!285 lt!36170) (= lt!36170 testedSuffix!285))))

(declare-fun lt!36155 () Unit!1514)

(declare-fun lemmaSamePrefixThenSameSuffix!58 (List!2001 List!2001 List!2001 List!2001 List!2001) Unit!1514)

(assert (=> b!121085 (= lt!36155 (lemmaSamePrefixThenSameSuffix!58 testedP!367 testedSuffix!285 testedP!367 lt!36170 totalInput!1363))))

(declare-fun getSuffix!62 (List!2001 List!2001) List!2001)

(assert (=> b!121085 (= lt!36170 (getSuffix!62 totalInput!1363 testedP!367))))

(declare-fun res!56804 () Bool)

(assert (=> start!12258 (=> (not res!56804) (not e!69374))))

(declare-fun validRegex!143 (Regex!545) Bool)

(assert (=> start!12258 (= res!56804 (validRegex!143 r!15532))))

(assert (=> start!12258 e!69374))

(assert (=> start!12258 true))

(declare-fun e!69369 () Bool)

(assert (=> start!12258 e!69369))

(assert (=> start!12258 e!69373))

(assert (=> start!12258 e!69372))

(assert (=> start!12258 e!69360))

(declare-fun inv!2524 (Cache!250) Bool)

(assert (=> start!12258 (and (inv!2524 cache!470) e!69377)))

(declare-fun b!121086 () Bool)

(assert (=> b!121086 (= e!69369 tp_is_empty!1145)))

(declare-fun b!121087 () Bool)

(declare-fun tp!66515 () Bool)

(declare-fun tp!66508 () Bool)

(assert (=> b!121087 (= e!69369 (and tp!66515 tp!66508))))

(declare-fun b!121088 () Bool)

(declare-fun e!69367 () Bool)

(declare-fun e!69368 () Bool)

(assert (=> b!121088 (= e!69367 e!69368)))

(declare-fun res!56806 () Bool)

(assert (=> b!121088 (=> res!56806 e!69368)))

(declare-fun nullable!84 (Regex!545) Bool)

(assert (=> b!121088 (= res!56806 (not (nullable!84 r!15532)))))

(declare-fun lt!36163 () List!2001)

(declare-fun lt!36154 () List!2001)

(assert (=> b!121088 (= (++!375 lt!36163 lt!36154) totalInput!1363)))

(declare-fun lt!36160 () C!2012)

(declare-fun lt!36156 () Unit!1514)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!21 (List!2001 C!2012 List!2001 List!2001) Unit!1514)

(assert (=> b!121088 (= lt!36156 (lemmaMoveElementToOtherListKeepsConcatEq!21 testedP!367 lt!36160 lt!36154 totalInput!1363))))

(declare-fun tail!234 (List!2001) List!2001)

(assert (=> b!121088 (= lt!36154 (tail!234 testedSuffix!285))))

(declare-fun head!498 (List!2001) C!2012)

(assert (=> b!121088 (isPrefix!124 (++!375 testedP!367 (Cons!1995 (head!498 lt!36170) Nil!1995)) totalInput!1363)))

(declare-fun lt!36158 () Unit!1514)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!27 (List!2001 List!2001) Unit!1514)

(assert (=> b!121088 (= lt!36158 (lemmaAddHeadSuffixToPrefixStillPrefix!27 testedP!367 totalInput!1363))))

(assert (=> b!121088 (= lt!36163 (++!375 testedP!367 (Cons!1995 lt!36160 Nil!1995)))))

(assert (=> b!121088 (= lt!36160 (head!498 testedSuffix!285))))

(declare-fun b!121089 () Bool)

(assert (=> b!121089 (= e!69375 e!69370)))

(declare-fun res!56797 () Bool)

(assert (=> b!121089 (=> (not res!56797) (not e!69370))))

(declare-fun lt!36162 () Int)

(assert (=> b!121089 (= res!56797 (= totalInputSize!643 lt!36162))))

(assert (=> b!121089 (= lt!36162 (size!1849 totalInput!1363))))

(declare-fun b!121090 () Bool)

(declare-fun tp!66518 () Bool)

(declare-fun tp!66505 () Bool)

(assert (=> b!121090 (= e!69369 (and tp!66518 tp!66505))))

(declare-fun b!121091 () Bool)

(declare-fun Unit!1517 () Unit!1514)

(assert (=> b!121091 (= e!69366 Unit!1517)))

(declare-fun lt!36169 () Unit!1514)

(declare-fun lemmaIsPrefixRefl!94 (List!2001 List!2001) Unit!1514)

(assert (=> b!121091 (= lt!36169 (lemmaIsPrefixRefl!94 totalInput!1363 totalInput!1363))))

(assert (=> b!121091 (isPrefix!124 totalInput!1363 totalInput!1363)))

(declare-fun lt!36159 () Unit!1514)

(declare-fun lemmaIsPrefixSameLengthThenSameList!37 (List!2001 List!2001 List!2001) Unit!1514)

(assert (=> b!121091 (= lt!36159 (lemmaIsPrefixSameLengthThenSameList!37 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!121091 false))

(declare-fun b!121092 () Bool)

(declare-fun e!69376 () Bool)

(assert (=> b!121092 (= e!69379 e!69376)))

(declare-fun mapNonEmpty!1589 () Bool)

(declare-fun mapRes!1589 () Bool)

(declare-fun tp!66510 () Bool)

(declare-fun tp!66513 () Bool)

(assert (=> mapNonEmpty!1589 (= mapRes!1589 (and tp!66510 tp!66513))))

(declare-fun mapValue!1589 () List!2002)

(declare-fun mapRest!1589 () (Array (_ BitVec 32) List!2002))

(declare-fun mapKey!1589 () (_ BitVec 32))

(assert (=> mapNonEmpty!1589 (= (arr!707 (_values!689 (v!13353 (underlying!1021 (v!13354 (underlying!1022 (cache!859 cache!470))))))) (store mapRest!1589 mapKey!1589 mapValue!1589))))

(declare-fun b!121093 () Bool)

(assert (=> b!121093 (= e!69371 e!69367)))

(declare-fun res!56805 () Bool)

(assert (=> b!121093 (=> res!56805 e!69367)))

(assert (=> b!121093 (= res!56805 (>= lt!36166 lt!36162))))

(declare-fun lt!36161 () Unit!1514)

(assert (=> b!121093 (= lt!36161 e!69366)))

(declare-fun c!26993 () Bool)

(assert (=> b!121093 (= c!26993 (= lt!36166 lt!36162))))

(assert (=> b!121093 (<= lt!36166 lt!36162)))

(declare-fun lt!36157 () Unit!1514)

(declare-fun lemmaIsPrefixThenSmallerEqSize!36 (List!2001 List!2001) Unit!1514)

(assert (=> b!121093 (= lt!36157 (lemmaIsPrefixThenSmallerEqSize!36 testedP!367 totalInput!1363))))

(declare-fun mapIsEmpty!1589 () Bool)

(assert (=> mapIsEmpty!1589 mapRes!1589))

(declare-fun b!121094 () Bool)

(assert (=> b!121094 (= e!69368 true)))

(declare-fun lt!36167 () Bool)

(declare-fun derivativeStep!53 (Regex!545 C!2012) Regex!545)

(assert (=> b!121094 (= lt!36167 (validRegex!143 (derivativeStep!53 r!15532 lt!36160)))))

(declare-fun e!69363 () Bool)

(declare-fun tp!66517 () Bool)

(declare-fun tp!66512 () Bool)

(declare-fun array_inv!509 (array!1519) Bool)

(declare-fun array_inv!510 (array!1521) Bool)

(assert (=> b!121095 (= e!69376 (and tp!66507 tp!66517 tp!66512 (array_inv!509 (_keys!702 (v!13353 (underlying!1021 (v!13354 (underlying!1022 (cache!859 cache!470))))))) (array_inv!510 (_values!689 (v!13353 (underlying!1021 (v!13354 (underlying!1022 (cache!859 cache!470))))))) e!69363))))

(declare-fun b!121096 () Bool)

(declare-fun res!56799 () Bool)

(assert (=> b!121096 (=> (not res!56799) (not e!69374))))

(declare-fun valid!370 (Cache!250) Bool)

(assert (=> b!121096 (= res!56799 (valid!370 cache!470))))

(declare-fun b!121097 () Bool)

(declare-fun tp!66519 () Bool)

(assert (=> b!121097 (= e!69369 tp!66519)))

(declare-fun b!121098 () Bool)

(declare-fun tp!66516 () Bool)

(assert (=> b!121098 (= e!69363 (and tp!66516 mapRes!1589))))

(declare-fun condMapEmpty!1589 () Bool)

(declare-fun mapDefault!1589 () List!2002)

(assert (=> b!121098 (= condMapEmpty!1589 (= (arr!707 (_values!689 (v!13353 (underlying!1021 (v!13354 (underlying!1022 (cache!859 cache!470))))))) ((as const (Array (_ BitVec 32) List!2002)) mapDefault!1589)))))

(assert (= (and start!12258 res!56804) b!121096))

(assert (= (and b!121096 res!56799) b!121083))

(assert (= (and b!121083 res!56803) b!121077))

(assert (= (and b!121077 res!56800) b!121089))

(assert (= (and b!121089 res!56797) b!121080))

(assert (= (and b!121080 (not res!56802)) b!121085))

(assert (= (and b!121085 (not res!56801)) b!121082))

(assert (= (and b!121082 (not res!56798)) b!121093))

(assert (= (and b!121093 c!26993) b!121091))

(assert (= (and b!121093 (not c!26993)) b!121079))

(assert (= (and b!121093 (not res!56805)) b!121088))

(assert (= (and b!121088 (not res!56806)) b!121094))

(assert (= (and start!12258 ((_ is ElementMatch!545) r!15532)) b!121086))

(assert (= (and start!12258 ((_ is Concat!929) r!15532)) b!121090))

(assert (= (and start!12258 ((_ is Star!545) r!15532)) b!121097))

(assert (= (and start!12258 ((_ is Union!545) r!15532)) b!121087))

(assert (= (and start!12258 ((_ is Cons!1995) totalInput!1363)) b!121075))

(assert (= (and start!12258 ((_ is Cons!1995) testedSuffix!285)) b!121081))

(assert (= (and start!12258 ((_ is Cons!1995) testedP!367)) b!121073))

(assert (= (and b!121098 condMapEmpty!1589) mapIsEmpty!1589))

(assert (= (and b!121098 (not condMapEmpty!1589)) mapNonEmpty!1589))

(assert (= b!121095 b!121098))

(assert (= b!121092 b!121095))

(assert (= b!121076 b!121092))

(assert (= (and b!121084 ((_ is LongMap!411) (v!13354 (underlying!1022 (cache!859 cache!470))))) b!121076))

(assert (= b!121074 b!121084))

(assert (= (and b!121078 ((_ is HashMap!407) (cache!859 cache!470))) b!121074))

(assert (= start!12258 b!121078))

(declare-fun m!107413 () Bool)

(assert (=> b!121089 m!107413))

(declare-fun m!107415 () Bool)

(assert (=> b!121096 m!107415))

(declare-fun m!107417 () Bool)

(assert (=> b!121093 m!107417))

(declare-fun m!107419 () Bool)

(assert (=> b!121088 m!107419))

(declare-fun m!107421 () Bool)

(assert (=> b!121088 m!107421))

(declare-fun m!107423 () Bool)

(assert (=> b!121088 m!107423))

(declare-fun m!107425 () Bool)

(assert (=> b!121088 m!107425))

(declare-fun m!107427 () Bool)

(assert (=> b!121088 m!107427))

(assert (=> b!121088 m!107419))

(declare-fun m!107429 () Bool)

(assert (=> b!121088 m!107429))

(declare-fun m!107431 () Bool)

(assert (=> b!121088 m!107431))

(declare-fun m!107433 () Bool)

(assert (=> b!121088 m!107433))

(declare-fun m!107435 () Bool)

(assert (=> b!121088 m!107435))

(declare-fun m!107437 () Bool)

(assert (=> b!121088 m!107437))

(declare-fun m!107439 () Bool)

(assert (=> start!12258 m!107439))

(declare-fun m!107441 () Bool)

(assert (=> start!12258 m!107441))

(declare-fun m!107443 () Bool)

(assert (=> b!121083 m!107443))

(declare-fun m!107445 () Bool)

(assert (=> b!121095 m!107445))

(declare-fun m!107447 () Bool)

(assert (=> b!121095 m!107447))

(declare-fun m!107449 () Bool)

(assert (=> b!121085 m!107449))

(declare-fun m!107451 () Bool)

(assert (=> b!121085 m!107451))

(declare-fun m!107453 () Bool)

(assert (=> b!121085 m!107453))

(declare-fun m!107455 () Bool)

(assert (=> mapNonEmpty!1589 m!107455))

(declare-fun m!107457 () Bool)

(assert (=> b!121094 m!107457))

(assert (=> b!121094 m!107457))

(declare-fun m!107459 () Bool)

(assert (=> b!121094 m!107459))

(declare-fun m!107461 () Bool)

(assert (=> b!121077 m!107461))

(declare-fun m!107463 () Bool)

(assert (=> b!121080 m!107463))

(declare-fun m!107465 () Bool)

(assert (=> b!121080 m!107465))

(declare-fun m!107467 () Bool)

(assert (=> b!121080 m!107467))

(declare-fun m!107469 () Bool)

(assert (=> b!121091 m!107469))

(declare-fun m!107471 () Bool)

(assert (=> b!121091 m!107471))

(declare-fun m!107473 () Bool)

(assert (=> b!121091 m!107473))

(check-sat (not b!121098) (not b!121094) (not b!121087) (not b!121085) (not b!121088) (not b!121095) (not b!121077) (not b!121083) (not b!121097) (not b_next!3875) (not b!121073) (not b!121089) (not b!121080) (not b!121096) (not b!121091) (not b!121081) (not mapNonEmpty!1589) (not b_next!3873) (not b!121075) tp_is_empty!1145 b_and!6005 (not b!121090) (not b!121093) (not start!12258) b_and!6003)
(check-sat b_and!6003 b_and!6005 (not b_next!3873) (not b_next!3875))
