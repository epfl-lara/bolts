; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11994 () Bool)

(assert start!11994)

(declare-fun b!117949 () Bool)

(declare-fun b_free!3761 () Bool)

(declare-fun b_next!3761 () Bool)

(assert (=> b!117949 (= b_free!3761 (not b_next!3761))))

(declare-fun tp!64493 () Bool)

(declare-fun b_and!5891 () Bool)

(assert (=> b!117949 (= tp!64493 b_and!5891)))

(declare-fun b!117948 () Bool)

(declare-fun b_free!3763 () Bool)

(declare-fun b_next!3763 () Bool)

(assert (=> b!117948 (= b_free!3763 (not b_next!3763))))

(declare-fun tp!64483 () Bool)

(declare-fun b_and!5893 () Bool)

(assert (=> b!117948 (= tp!64483 b_and!5893)))

(declare-fun b!117926 () Bool)

(declare-fun e!67224 () Bool)

(declare-fun tp_is_empty!1089 () Bool)

(declare-fun tp!64487 () Bool)

(assert (=> b!117926 (= e!67224 (and tp_is_empty!1089 tp!64487))))

(declare-fun b!117927 () Bool)

(declare-fun e!67214 () Bool)

(declare-fun tp!64484 () Bool)

(assert (=> b!117927 (= e!67214 tp!64484)))

(declare-fun b!117928 () Bool)

(declare-fun e!67209 () Bool)

(declare-fun e!67211 () Bool)

(assert (=> b!117928 (= e!67209 e!67211)))

(declare-fun res!55798 () Bool)

(assert (=> b!117928 (=> (not res!55798) (not e!67211))))

(declare-datatypes ((C!1956 0))(
  ( (C!1957 (val!704 Int)) )
))
(declare-datatypes ((List!1948 0))(
  ( (Nil!1942) (Cons!1942 (h!7339 C!1956) (t!22425 List!1948)) )
))
(declare-fun lt!35051 () List!1948)

(declare-fun totalInput!1363 () List!1948)

(assert (=> b!117928 (= res!55798 (= lt!35051 totalInput!1363))))

(declare-fun testedP!367 () List!1948)

(declare-fun testedSuffix!285 () List!1948)

(declare-fun ++!354 (List!1948 List!1948) List!1948)

(assert (=> b!117928 (= lt!35051 (++!354 testedP!367 testedSuffix!285))))

(declare-fun b!117929 () Bool)

(declare-fun res!55797 () Bool)

(assert (=> b!117929 (=> (not res!55797) (not e!67209))))

(declare-datatypes ((Regex!517 0))(
  ( (ElementMatch!517 (c!26747 C!1956)) (Concat!901 (regOne!1546 Regex!517) (regTwo!1546 Regex!517)) (EmptyExpr!517) (Star!517 (reg!846 Regex!517)) (EmptyLang!517) (Union!517 (regOne!1547 Regex!517) (regTwo!1547 Regex!517)) )
))
(declare-datatypes ((Hashable!379 0))(
  ( (HashableExt!378 (__x!2074 Int)) )
))
(declare-datatypes ((tuple2!2192 0))(
  ( (tuple2!2193 (_1!1306 Regex!517) (_2!1306 C!1956)) )
))
(declare-datatypes ((tuple2!2194 0))(
  ( (tuple2!2195 (_1!1307 tuple2!2192) (_2!1307 Regex!517)) )
))
(declare-datatypes ((List!1949 0))(
  ( (Nil!1943) (Cons!1943 (h!7340 tuple2!2194) (t!22426 List!1949)) )
))
(declare-datatypes ((array!1393 0))(
  ( (array!1394 (arr!650 (Array (_ BitVec 32) (_ BitVec 64))) (size!1771 (_ BitVec 32))) )
))
(declare-datatypes ((array!1395 0))(
  ( (array!1396 (arr!651 (Array (_ BitVec 32) List!1949)) (size!1772 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!766 0))(
  ( (LongMapFixedSize!767 (defaultEntry!722 Int) (mask!1309 (_ BitVec 32)) (extraKeys!629 (_ BitVec 32)) (zeroValue!639 List!1949) (minValue!639 List!1949) (_size!899 (_ BitVec 32)) (_keys!674 array!1393) (_values!661 array!1395) (_vacant!444 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1521 0))(
  ( (Cell!1522 (v!13297 LongMapFixedSize!766)) )
))
(declare-datatypes ((MutLongMap!383 0))(
  ( (LongMap!383 (underlying!965 Cell!1521)) (MutLongMapExt!382 (__x!2075 Int)) )
))
(declare-datatypes ((Cell!1523 0))(
  ( (Cell!1524 (v!13298 MutLongMap!383)) )
))
(declare-datatypes ((MutableMap!379 0))(
  ( (MutableMapExt!378 (__x!2076 Int)) (HashMap!379 (underlying!966 Cell!1523) (hashF!2255 Hashable!379) (_size!900 (_ BitVec 32)) (defaultValue!528 Int)) )
))
(declare-datatypes ((Cache!194 0))(
  ( (Cache!195 (cache!831 MutableMap!379)) )
))
(declare-fun cache!470 () Cache!194)

(declare-fun valid!346 (Cache!194) Bool)

(assert (=> b!117929 (= res!55797 (valid!346 cache!470))))

(declare-fun b!117930 () Bool)

(declare-datatypes ((Unit!1453 0))(
  ( (Unit!1454) )
))
(declare-fun e!67217 () Unit!1453)

(declare-fun Unit!1455 () Unit!1453)

(assert (=> b!117930 (= e!67217 Unit!1455)))

(declare-fun b!117931 () Bool)

(declare-fun e!67220 () Bool)

(declare-fun tp!64485 () Bool)

(assert (=> b!117931 (= e!67220 (and tp_is_empty!1089 tp!64485))))

(declare-fun res!55794 () Bool)

(assert (=> start!11994 (=> (not res!55794) (not e!67209))))

(declare-fun r!15532 () Regex!517)

(declare-fun validRegex!122 (Regex!517) Bool)

(assert (=> start!11994 (= res!55794 (validRegex!122 r!15532))))

(assert (=> start!11994 e!67209))

(assert (=> start!11994 true))

(assert (=> start!11994 e!67214))

(assert (=> start!11994 e!67220))

(declare-fun e!67210 () Bool)

(assert (=> start!11994 e!67210))

(assert (=> start!11994 e!67224))

(declare-fun e!67226 () Bool)

(declare-fun inv!2461 (Cache!194) Bool)

(assert (=> start!11994 (and (inv!2461 cache!470) e!67226)))

(declare-fun b!117932 () Bool)

(declare-fun tp!64481 () Bool)

(declare-fun tp!64490 () Bool)

(assert (=> b!117932 (= e!67214 (and tp!64481 tp!64490))))

(declare-fun mapIsEmpty!1483 () Bool)

(declare-fun mapRes!1483 () Bool)

(assert (=> mapIsEmpty!1483 mapRes!1483))

(declare-fun b!117933 () Bool)

(declare-fun e!67218 () Bool)

(declare-fun e!67221 () Bool)

(assert (=> b!117933 (= e!67218 e!67221)))

(declare-fun res!55801 () Bool)

(assert (=> b!117933 (=> res!55801 e!67221)))

(declare-fun lostCause!54 (Regex!517) Bool)

(assert (=> b!117933 (= res!55801 (lostCause!54 r!15532))))

(declare-fun lt!35048 () List!1948)

(assert (=> b!117933 (and (= testedSuffix!285 lt!35048) (= lt!35048 testedSuffix!285))))

(declare-fun lt!35052 () Unit!1453)

(declare-fun lemmaSamePrefixThenSameSuffix!42 (List!1948 List!1948 List!1948 List!1948 List!1948) Unit!1453)

(assert (=> b!117933 (= lt!35052 (lemmaSamePrefixThenSameSuffix!42 testedP!367 testedSuffix!285 testedP!367 lt!35048 totalInput!1363))))

(declare-fun getSuffix!43 (List!1948 List!1948) List!1948)

(assert (=> b!117933 (= lt!35048 (getSuffix!43 totalInput!1363 testedP!367))))

(declare-fun b!117934 () Bool)

(declare-fun e!67219 () Bool)

(assert (=> b!117934 (= e!67226 e!67219)))

(declare-fun b!117935 () Bool)

(assert (=> b!117935 (= e!67214 tp_is_empty!1089)))

(declare-fun b!117936 () Bool)

(declare-fun e!67225 () Bool)

(declare-fun e!67215 () Bool)

(assert (=> b!117936 (= e!67225 e!67215)))

(declare-fun res!55795 () Bool)

(assert (=> b!117936 (=> (not res!55795) (not e!67215))))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!35056 () Int)

(assert (=> b!117936 (= res!55795 (= totalInputSize!643 lt!35056))))

(declare-fun size!1773 (List!1948) Int)

(assert (=> b!117936 (= lt!35056 (size!1773 totalInput!1363))))

(declare-fun b!117937 () Bool)

(assert (=> b!117937 (= e!67211 e!67225)))

(declare-fun res!55799 () Bool)

(assert (=> b!117937 (=> (not res!55799) (not e!67225))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!35050 () Int)

(assert (=> b!117937 (= res!55799 (= testedPSize!285 lt!35050))))

(assert (=> b!117937 (= lt!35050 (size!1773 testedP!367))))

(declare-fun b!117938 () Bool)

(declare-fun tp!64491 () Bool)

(assert (=> b!117938 (= e!67210 (and tp_is_empty!1089 tp!64491))))

(declare-fun b!117939 () Bool)

(declare-fun e!67222 () Bool)

(declare-fun e!67216 () Bool)

(assert (=> b!117939 (= e!67222 e!67216)))

(declare-fun b!117940 () Bool)

(declare-fun Unit!1456 () Unit!1453)

(assert (=> b!117940 (= e!67217 Unit!1456)))

(declare-fun lt!35047 () Unit!1453)

(declare-fun lemmaIsPrefixRefl!82 (List!1948 List!1948) Unit!1453)

(assert (=> b!117940 (= lt!35047 (lemmaIsPrefixRefl!82 totalInput!1363 totalInput!1363))))

(declare-fun isPrefix!103 (List!1948 List!1948) Bool)

(assert (=> b!117940 (isPrefix!103 totalInput!1363 totalInput!1363)))

(declare-fun lt!35046 () Unit!1453)

(declare-fun lemmaIsPrefixSameLengthThenSameList!28 (List!1948 List!1948 List!1948) Unit!1453)

(assert (=> b!117940 (= lt!35046 (lemmaIsPrefixSameLengthThenSameList!28 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!117940 false))

(declare-fun b!117941 () Bool)

(declare-fun res!55800 () Bool)

(assert (=> b!117941 (=> res!55800 e!67221)))

(assert (=> b!117941 (= res!55800 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!117942 () Bool)

(declare-fun e!67212 () Bool)

(declare-fun tp!64492 () Bool)

(assert (=> b!117942 (= e!67212 (and tp!64492 mapRes!1483))))

(declare-fun condMapEmpty!1483 () Bool)

(declare-fun mapDefault!1483 () List!1949)

(assert (=> b!117942 (= condMapEmpty!1483 (= (arr!651 (_values!661 (v!13297 (underlying!965 (v!13298 (underlying!966 (cache!831 cache!470))))))) ((as const (Array (_ BitVec 32) List!1949)) mapDefault!1483)))))

(declare-fun b!117943 () Bool)

(declare-fun e!67213 () Bool)

(assert (=> b!117943 (= e!67216 e!67213)))

(declare-fun b!117944 () Bool)

(declare-fun tp!64489 () Bool)

(declare-fun tp!64479 () Bool)

(assert (=> b!117944 (= e!67214 (and tp!64489 tp!64479))))

(declare-fun b!117945 () Bool)

(assert (=> b!117945 (= e!67221 (< lt!35050 lt!35056))))

(declare-fun lt!35054 () Unit!1453)

(assert (=> b!117945 (= lt!35054 e!67217)))

(declare-fun c!26746 () Bool)

(assert (=> b!117945 (= c!26746 (= lt!35050 lt!35056))))

(assert (=> b!117945 (<= lt!35050 lt!35056)))

(declare-fun lt!35055 () Unit!1453)

(declare-fun lemmaIsPrefixThenSmallerEqSize!26 (List!1948 List!1948) Unit!1453)

(assert (=> b!117945 (= lt!35055 (lemmaIsPrefixThenSmallerEqSize!26 testedP!367 totalInput!1363))))

(declare-fun mapNonEmpty!1483 () Bool)

(declare-fun tp!64488 () Bool)

(declare-fun tp!64486 () Bool)

(assert (=> mapNonEmpty!1483 (= mapRes!1483 (and tp!64488 tp!64486))))

(declare-fun mapValue!1483 () List!1949)

(declare-fun mapRest!1483 () (Array (_ BitVec 32) List!1949))

(declare-fun mapKey!1483 () (_ BitVec 32))

(assert (=> mapNonEmpty!1483 (= (arr!651 (_values!661 (v!13297 (underlying!965 (v!13298 (underlying!966 (cache!831 cache!470))))))) (store mapRest!1483 mapKey!1483 mapValue!1483))))

(declare-fun b!117946 () Bool)

(assert (=> b!117946 (= e!67215 (not e!67218))))

(declare-fun res!55796 () Bool)

(assert (=> b!117946 (=> res!55796 e!67218)))

(assert (=> b!117946 (= res!55796 (not (isPrefix!103 testedP!367 totalInput!1363)))))

(assert (=> b!117946 (isPrefix!103 testedP!367 lt!35051)))

(declare-fun lt!35049 () Unit!1453)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!49 (List!1948 List!1948) Unit!1453)

(assert (=> b!117946 (= lt!35049 (lemmaConcatTwoListThenFirstIsPrefix!49 testedP!367 testedSuffix!285))))

(declare-fun b!117947 () Bool)

(declare-fun e!67223 () Bool)

(declare-fun lt!35053 () MutLongMap!383)

(get-info :version)

(assert (=> b!117947 (= e!67223 (and e!67222 ((_ is LongMap!383) lt!35053)))))

(assert (=> b!117947 (= lt!35053 (v!13298 (underlying!966 (cache!831 cache!470))))))

(assert (=> b!117948 (= e!67219 (and e!67223 tp!64483))))

(declare-fun tp!64482 () Bool)

(declare-fun tp!64480 () Bool)

(declare-fun array_inv!465 (array!1393) Bool)

(declare-fun array_inv!466 (array!1395) Bool)

(assert (=> b!117949 (= e!67213 (and tp!64493 tp!64480 tp!64482 (array_inv!465 (_keys!674 (v!13297 (underlying!965 (v!13298 (underlying!966 (cache!831 cache!470))))))) (array_inv!466 (_values!661 (v!13297 (underlying!965 (v!13298 (underlying!966 (cache!831 cache!470))))))) e!67212))))

(assert (= (and start!11994 res!55794) b!117929))

(assert (= (and b!117929 res!55797) b!117928))

(assert (= (and b!117928 res!55798) b!117937))

(assert (= (and b!117937 res!55799) b!117936))

(assert (= (and b!117936 res!55795) b!117946))

(assert (= (and b!117946 (not res!55796)) b!117933))

(assert (= (and b!117933 (not res!55801)) b!117941))

(assert (= (and b!117941 (not res!55800)) b!117945))

(assert (= (and b!117945 c!26746) b!117940))

(assert (= (and b!117945 (not c!26746)) b!117930))

(assert (= (and start!11994 ((_ is ElementMatch!517) r!15532)) b!117935))

(assert (= (and start!11994 ((_ is Concat!901) r!15532)) b!117944))

(assert (= (and start!11994 ((_ is Star!517) r!15532)) b!117927))

(assert (= (and start!11994 ((_ is Union!517) r!15532)) b!117932))

(assert (= (and start!11994 ((_ is Cons!1942) totalInput!1363)) b!117931))

(assert (= (and start!11994 ((_ is Cons!1942) testedSuffix!285)) b!117938))

(assert (= (and start!11994 ((_ is Cons!1942) testedP!367)) b!117926))

(assert (= (and b!117942 condMapEmpty!1483) mapIsEmpty!1483))

(assert (= (and b!117942 (not condMapEmpty!1483)) mapNonEmpty!1483))

(assert (= b!117949 b!117942))

(assert (= b!117943 b!117949))

(assert (= b!117939 b!117943))

(assert (= (and b!117947 ((_ is LongMap!383) (v!13298 (underlying!966 (cache!831 cache!470))))) b!117939))

(assert (= b!117948 b!117947))

(assert (= (and b!117934 ((_ is HashMap!379) (cache!831 cache!470))) b!117948))

(assert (= start!11994 b!117934))

(declare-fun m!105696 () Bool)

(assert (=> start!11994 m!105696))

(declare-fun m!105698 () Bool)

(assert (=> start!11994 m!105698))

(declare-fun m!105700 () Bool)

(assert (=> b!117936 m!105700))

(declare-fun m!105702 () Bool)

(assert (=> b!117946 m!105702))

(declare-fun m!105704 () Bool)

(assert (=> b!117946 m!105704))

(declare-fun m!105706 () Bool)

(assert (=> b!117946 m!105706))

(declare-fun m!105708 () Bool)

(assert (=> b!117945 m!105708))

(declare-fun m!105710 () Bool)

(assert (=> b!117940 m!105710))

(declare-fun m!105712 () Bool)

(assert (=> b!117940 m!105712))

(declare-fun m!105714 () Bool)

(assert (=> b!117940 m!105714))

(declare-fun m!105716 () Bool)

(assert (=> b!117949 m!105716))

(declare-fun m!105718 () Bool)

(assert (=> b!117949 m!105718))

(declare-fun m!105720 () Bool)

(assert (=> mapNonEmpty!1483 m!105720))

(declare-fun m!105722 () Bool)

(assert (=> b!117933 m!105722))

(declare-fun m!105724 () Bool)

(assert (=> b!117933 m!105724))

(declare-fun m!105726 () Bool)

(assert (=> b!117933 m!105726))

(declare-fun m!105728 () Bool)

(assert (=> b!117937 m!105728))

(declare-fun m!105730 () Bool)

(assert (=> b!117928 m!105730))

(declare-fun m!105732 () Bool)

(assert (=> b!117929 m!105732))

(check-sat tp_is_empty!1089 (not b!117946) (not b!117940) (not start!11994) b_and!5893 (not b!117928) (not b!117942) (not b!117933) (not b!117932) (not b!117927) b_and!5891 (not b!117936) (not b!117945) (not mapNonEmpty!1483) (not b!117931) (not b!117926) (not b!117929) (not b!117944) (not b!117949) (not b_next!3761) (not b_next!3763) (not b!117938) (not b!117937))
(check-sat b_and!5893 b_and!5891 (not b_next!3763) (not b_next!3761))
