; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12022 () Bool)

(assert start!12022)

(declare-fun b!118470 () Bool)

(declare-fun b_free!3777 () Bool)

(declare-fun b_next!3777 () Bool)

(assert (=> b!118470 (= b_free!3777 (not b_next!3777))))

(declare-fun tp!64958 () Bool)

(declare-fun b_and!5907 () Bool)

(assert (=> b!118470 (= tp!64958 b_and!5907)))

(declare-fun b!118486 () Bool)

(declare-fun b_free!3779 () Bool)

(declare-fun b_next!3779 () Bool)

(assert (=> b!118486 (= b_free!3779 (not b_next!3779))))

(declare-fun tp!64961 () Bool)

(declare-fun b_and!5909 () Bool)

(assert (=> b!118486 (= tp!64961 b_and!5909)))

(declare-fun b!118468 () Bool)

(declare-fun e!67523 () Bool)

(declare-fun e!67537 () Bool)

(assert (=> b!118468 (= e!67523 e!67537)))

(declare-fun b!118469 () Bool)

(declare-fun e!67525 () Bool)

(declare-fun tp!64955 () Bool)

(assert (=> b!118469 (= e!67525 tp!64955)))

(declare-fun b!118471 () Bool)

(declare-fun e!67533 () Bool)

(declare-datatypes ((C!1964 0))(
  ( (C!1965 (val!708 Int)) )
))
(declare-datatypes ((Regex!521 0))(
  ( (ElementMatch!521 (c!26778 C!1964)) (Concat!905 (regOne!1554 Regex!521) (regTwo!1554 Regex!521)) (EmptyExpr!521) (Star!521 (reg!850 Regex!521)) (EmptyLang!521) (Union!521 (regOne!1555 Regex!521) (regTwo!1555 Regex!521)) )
))
(declare-datatypes ((tuple2!2208 0))(
  ( (tuple2!2209 (_1!1314 Regex!521) (_2!1314 C!1964)) )
))
(declare-datatypes ((tuple2!2210 0))(
  ( (tuple2!2211 (_1!1315 tuple2!2208) (_2!1315 Regex!521)) )
))
(declare-datatypes ((List!1956 0))(
  ( (Nil!1950) (Cons!1950 (h!7347 tuple2!2210) (t!22433 List!1956)) )
))
(declare-datatypes ((array!1411 0))(
  ( (array!1412 (arr!658 (Array (_ BitVec 32) (_ BitVec 64))) (size!1783 (_ BitVec 32))) )
))
(declare-datatypes ((array!1413 0))(
  ( (array!1414 (arr!659 (Array (_ BitVec 32) List!1956)) (size!1784 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!774 0))(
  ( (LongMapFixedSize!775 (defaultEntry!726 Int) (mask!1315 (_ BitVec 32)) (extraKeys!633 (_ BitVec 32)) (zeroValue!643 List!1956) (minValue!643 List!1956) (_size!907 (_ BitVec 32)) (_keys!678 array!1411) (_values!665 array!1413) (_vacant!448 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1537 0))(
  ( (Cell!1538 (v!13305 LongMapFixedSize!774)) )
))
(declare-datatypes ((MutLongMap!387 0))(
  ( (LongMap!387 (underlying!973 Cell!1537)) (MutLongMapExt!386 (__x!2086 Int)) )
))
(declare-fun lt!35107 () MutLongMap!387)

(get-info :version)

(assert (=> b!118471 (= e!67533 (and e!67523 ((_ is LongMap!387) lt!35107)))))

(declare-datatypes ((Hashable!383 0))(
  ( (HashableExt!382 (__x!2087 Int)) )
))
(declare-datatypes ((Cell!1539 0))(
  ( (Cell!1540 (v!13306 MutLongMap!387)) )
))
(declare-datatypes ((MutableMap!383 0))(
  ( (MutableMapExt!382 (__x!2088 Int)) (HashMap!383 (underlying!974 Cell!1539) (hashF!2259 Hashable!383) (_size!908 (_ BitVec 32)) (defaultValue!532 Int)) )
))
(declare-datatypes ((Cache!202 0))(
  ( (Cache!203 (cache!835 MutableMap!383)) )
))
(declare-fun cache!470 () Cache!202)

(assert (=> b!118471 (= lt!35107 (v!13306 (underlying!974 (cache!835 cache!470))))))

(declare-fun b!118472 () Bool)

(declare-fun tp!64956 () Bool)

(declare-fun tp!64963 () Bool)

(assert (=> b!118472 (= e!67525 (and tp!64956 tp!64963))))

(declare-fun b!118473 () Bool)

(declare-fun res!55905 () Bool)

(declare-fun e!67524 () Bool)

(assert (=> b!118473 (=> (not res!55905) (not e!67524))))

(declare-fun testedPSize!285 () Int)

(declare-datatypes ((List!1957 0))(
  ( (Nil!1951) (Cons!1951 (h!7348 C!1964) (t!22434 List!1957)) )
))
(declare-fun testedP!367 () List!1957)

(declare-fun size!1785 (List!1957) Int)

(assert (=> b!118473 (= res!55905 (= testedPSize!285 (size!1785 testedP!367)))))

(declare-fun b!118474 () Bool)

(declare-fun e!67532 () Bool)

(declare-fun tp!64959 () Bool)

(declare-fun mapRes!1499 () Bool)

(assert (=> b!118474 (= e!67532 (and tp!64959 mapRes!1499))))

(declare-fun condMapEmpty!1499 () Bool)

(declare-fun mapDefault!1499 () List!1956)

(assert (=> b!118474 (= condMapEmpty!1499 (= (arr!659 (_values!665 (v!13305 (underlying!973 (v!13306 (underlying!974 (cache!835 cache!470))))))) ((as const (Array (_ BitVec 32) List!1956)) mapDefault!1499)))))

(declare-fun b!118475 () Bool)

(declare-fun e!67526 () Bool)

(declare-fun tp_is_empty!1097 () Bool)

(declare-fun tp!64962 () Bool)

(assert (=> b!118475 (= e!67526 (and tp_is_empty!1097 tp!64962))))

(declare-fun b!118476 () Bool)

(declare-fun e!67535 () Bool)

(assert (=> b!118476 (= e!67535 true)))

(declare-fun lt!35109 () List!1957)

(declare-fun totalInput!1363 () List!1957)

(declare-fun getSuffix!44 (List!1957 List!1957) List!1957)

(assert (=> b!118476 (= lt!35109 (getSuffix!44 totalInput!1363 testedP!367))))

(declare-fun b!118477 () Bool)

(declare-fun e!67534 () Bool)

(assert (=> b!118477 (= e!67534 e!67524)))

(declare-fun res!55904 () Bool)

(assert (=> b!118477 (=> (not res!55904) (not e!67524))))

(declare-fun lt!35108 () List!1957)

(assert (=> b!118477 (= res!55904 (= lt!35108 totalInput!1363))))

(declare-fun testedSuffix!285 () List!1957)

(declare-fun ++!358 (List!1957 List!1957) List!1957)

(assert (=> b!118477 (= lt!35108 (++!358 testedP!367 testedSuffix!285))))

(declare-fun res!55903 () Bool)

(assert (=> start!12022 (=> (not res!55903) (not e!67534))))

(declare-fun r!15532 () Regex!521)

(declare-fun validRegex!126 (Regex!521) Bool)

(assert (=> start!12022 (= res!55903 (validRegex!126 r!15532))))

(assert (=> start!12022 e!67534))

(assert (=> start!12022 true))

(assert (=> start!12022 e!67525))

(declare-fun e!67536 () Bool)

(assert (=> start!12022 e!67536))

(declare-fun e!67528 () Bool)

(assert (=> start!12022 e!67528))

(assert (=> start!12022 e!67526))

(declare-fun e!67531 () Bool)

(declare-fun inv!2471 (Cache!202) Bool)

(assert (=> start!12022 (and (inv!2471 cache!470) e!67531)))

(declare-fun e!67527 () Bool)

(declare-fun tp!64954 () Bool)

(declare-fun tp!64960 () Bool)

(declare-fun array_inv!473 (array!1411) Bool)

(declare-fun array_inv!474 (array!1413) Bool)

(assert (=> b!118470 (= e!67527 (and tp!64958 tp!64960 tp!64954 (array_inv!473 (_keys!678 (v!13305 (underlying!973 (v!13306 (underlying!974 (cache!835 cache!470))))))) (array_inv!474 (_values!665 (v!13305 (underlying!973 (v!13306 (underlying!974 (cache!835 cache!470))))))) e!67532))))

(declare-fun mapIsEmpty!1499 () Bool)

(assert (=> mapIsEmpty!1499 mapRes!1499))

(declare-fun b!118478 () Bool)

(declare-fun tp!64952 () Bool)

(declare-fun tp!64965 () Bool)

(assert (=> b!118478 (= e!67525 (and tp!64952 tp!64965))))

(declare-fun b!118479 () Bool)

(declare-fun res!55901 () Bool)

(assert (=> b!118479 (=> (not res!55901) (not e!67524))))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!118479 (= res!55901 (= totalInputSize!643 (size!1785 totalInput!1363)))))

(declare-fun b!118480 () Bool)

(declare-fun tp!64957 () Bool)

(assert (=> b!118480 (= e!67528 (and tp_is_empty!1097 tp!64957))))

(declare-fun mapNonEmpty!1499 () Bool)

(declare-fun tp!64964 () Bool)

(declare-fun tp!64953 () Bool)

(assert (=> mapNonEmpty!1499 (= mapRes!1499 (and tp!64964 tp!64953))))

(declare-fun mapKey!1499 () (_ BitVec 32))

(declare-fun mapValue!1499 () List!1956)

(declare-fun mapRest!1499 () (Array (_ BitVec 32) List!1956))

(assert (=> mapNonEmpty!1499 (= (arr!659 (_values!665 (v!13305 (underlying!973 (v!13306 (underlying!974 (cache!835 cache!470))))))) (store mapRest!1499 mapKey!1499 mapValue!1499))))

(declare-fun b!118481 () Bool)

(declare-fun res!55902 () Bool)

(assert (=> b!118481 (=> (not res!55902) (not e!67534))))

(declare-fun valid!351 (Cache!202) Bool)

(assert (=> b!118481 (= res!55902 (valid!351 cache!470))))

(declare-fun b!118482 () Bool)

(declare-fun e!67529 () Bool)

(assert (=> b!118482 (= e!67531 e!67529)))

(declare-fun b!118483 () Bool)

(assert (=> b!118483 (= e!67525 tp_is_empty!1097)))

(declare-fun b!118484 () Bool)

(declare-fun tp!64951 () Bool)

(assert (=> b!118484 (= e!67536 (and tp_is_empty!1097 tp!64951))))

(declare-fun b!118485 () Bool)

(assert (=> b!118485 (= e!67537 e!67527)))

(assert (=> b!118486 (= e!67529 (and e!67533 tp!64961))))

(declare-fun b!118487 () Bool)

(assert (=> b!118487 (= e!67524 (not e!67535))))

(declare-fun res!55900 () Bool)

(assert (=> b!118487 (=> res!55900 e!67535)))

(declare-fun isPrefix!105 (List!1957 List!1957) Bool)

(assert (=> b!118487 (= res!55900 (not (isPrefix!105 testedP!367 totalInput!1363)))))

(assert (=> b!118487 (isPrefix!105 testedP!367 lt!35108)))

(declare-datatypes ((Unit!1459 0))(
  ( (Unit!1460) )
))
(declare-fun lt!35110 () Unit!1459)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!51 (List!1957 List!1957) Unit!1459)

(assert (=> b!118487 (= lt!35110 (lemmaConcatTwoListThenFirstIsPrefix!51 testedP!367 testedSuffix!285))))

(assert (= (and start!12022 res!55903) b!118481))

(assert (= (and b!118481 res!55902) b!118477))

(assert (= (and b!118477 res!55904) b!118473))

(assert (= (and b!118473 res!55905) b!118479))

(assert (= (and b!118479 res!55901) b!118487))

(assert (= (and b!118487 (not res!55900)) b!118476))

(assert (= (and start!12022 ((_ is ElementMatch!521) r!15532)) b!118483))

(assert (= (and start!12022 ((_ is Concat!905) r!15532)) b!118472))

(assert (= (and start!12022 ((_ is Star!521) r!15532)) b!118469))

(assert (= (and start!12022 ((_ is Union!521) r!15532)) b!118478))

(assert (= (and start!12022 ((_ is Cons!1951) totalInput!1363)) b!118484))

(assert (= (and start!12022 ((_ is Cons!1951) testedSuffix!285)) b!118480))

(assert (= (and start!12022 ((_ is Cons!1951) testedP!367)) b!118475))

(assert (= (and b!118474 condMapEmpty!1499) mapIsEmpty!1499))

(assert (= (and b!118474 (not condMapEmpty!1499)) mapNonEmpty!1499))

(assert (= b!118470 b!118474))

(assert (= b!118485 b!118470))

(assert (= b!118468 b!118485))

(assert (= (and b!118471 ((_ is LongMap!387) (v!13306 (underlying!974 (cache!835 cache!470))))) b!118468))

(assert (= b!118486 b!118471))

(assert (= (and b!118482 ((_ is HashMap!383) (cache!835 cache!470))) b!118486))

(assert (= start!12022 b!118482))

(declare-fun m!105873 () Bool)

(assert (=> b!118470 m!105873))

(declare-fun m!105875 () Bool)

(assert (=> b!118470 m!105875))

(declare-fun m!105877 () Bool)

(assert (=> b!118476 m!105877))

(declare-fun m!105879 () Bool)

(assert (=> b!118487 m!105879))

(declare-fun m!105881 () Bool)

(assert (=> b!118487 m!105881))

(declare-fun m!105883 () Bool)

(assert (=> b!118487 m!105883))

(declare-fun m!105885 () Bool)

(assert (=> b!118473 m!105885))

(declare-fun m!105887 () Bool)

(assert (=> start!12022 m!105887))

(declare-fun m!105889 () Bool)

(assert (=> start!12022 m!105889))

(declare-fun m!105891 () Bool)

(assert (=> b!118479 m!105891))

(declare-fun m!105893 () Bool)

(assert (=> b!118481 m!105893))

(declare-fun m!105895 () Bool)

(assert (=> mapNonEmpty!1499 m!105895))

(declare-fun m!105897 () Bool)

(assert (=> b!118477 m!105897))

(check-sat (not b!118487) (not b!118479) (not b!118469) (not b!118473) (not b_next!3777) (not b_next!3779) b_and!5907 (not b!118480) (not b!118475) tp_is_empty!1097 b_and!5909 (not b!118476) (not b!118474) (not b!118484) (not b!118481) (not mapNonEmpty!1499) (not b!118478) (not b!118477) (not b!118472) (not b!118470) (not start!12022))
(check-sat b_and!5909 b_and!5907 (not b_next!3779) (not b_next!3777))
