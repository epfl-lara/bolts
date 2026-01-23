; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11698 () Bool)

(assert start!11698)

(declare-fun b!114477 () Bool)

(declare-fun b_free!3625 () Bool)

(declare-fun b_next!3625 () Bool)

(assert (=> b!114477 (= b_free!3625 (not b_next!3625))))

(declare-fun tp!62485 () Bool)

(declare-fun b_and!5755 () Bool)

(assert (=> b!114477 (= tp!62485 b_and!5755)))

(declare-fun b!114472 () Bool)

(declare-fun b_free!3627 () Bool)

(declare-fun b_next!3627 () Bool)

(assert (=> b!114472 (= b_free!3627 (not b_next!3627))))

(declare-fun tp!62484 () Bool)

(declare-fun b_and!5757 () Bool)

(assert (=> b!114472 (= tp!62484 b_and!5757)))

(declare-fun b!114461 () Bool)

(declare-fun e!64669 () Bool)

(declare-fun tp_is_empty!1021 () Bool)

(declare-fun tp!62481 () Bool)

(assert (=> b!114461 (= e!64669 (and tp_is_empty!1021 tp!62481))))

(declare-fun b!114462 () Bool)

(declare-fun e!64664 () Bool)

(declare-fun tp!62478 () Bool)

(assert (=> b!114462 (= e!64664 (and tp_is_empty!1021 tp!62478))))

(declare-fun b!114463 () Bool)

(declare-fun e!64658 () Bool)

(declare-fun e!64674 () Bool)

(assert (=> b!114463 (= e!64658 e!64674)))

(declare-fun res!54538 () Bool)

(assert (=> b!114463 (=> (not res!54538) (not e!64674))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!33406 () Int)

(assert (=> b!114463 (= res!54538 (= testedPSize!285 lt!33406))))

(declare-datatypes ((C!1888 0))(
  ( (C!1889 (val!670 Int)) )
))
(declare-datatypes ((List!1881 0))(
  ( (Nil!1875) (Cons!1875 (h!7272 C!1888) (t!22358 List!1881)) )
))
(declare-fun testedP!367 () List!1881)

(declare-fun size!1672 (List!1881) Int)

(assert (=> b!114463 (= lt!33406 (size!1672 testedP!367))))

(declare-fun b!114464 () Bool)

(declare-fun e!64671 () Bool)

(declare-fun e!64659 () Bool)

(assert (=> b!114464 (= e!64671 e!64659)))

(declare-fun res!54534 () Bool)

(assert (=> b!114464 (=> res!54534 e!64659)))

(declare-fun lt!33407 () Int)

(assert (=> b!114464 (= res!54534 (not (= lt!33406 lt!33407)))))

(assert (=> b!114464 (<= lt!33406 lt!33407)))

(declare-datatypes ((Unit!1345 0))(
  ( (Unit!1346) )
))
(declare-fun lt!33409 () Unit!1345)

(declare-fun totalInput!1363 () List!1881)

(declare-fun lemmaIsPrefixThenSmallerEqSize!4 (List!1881 List!1881) Unit!1345)

(assert (=> b!114464 (= lt!33409 (lemmaIsPrefixThenSmallerEqSize!4 testedP!367 totalInput!1363))))

(declare-fun res!54537 () Bool)

(declare-fun e!64666 () Bool)

(assert (=> start!11698 (=> (not res!54537) (not e!64666))))

(declare-datatypes ((Regex!483 0))(
  ( (ElementMatch!483 (c!26483 C!1888)) (Concat!867 (regOne!1478 Regex!483) (regTwo!1478 Regex!483)) (EmptyExpr!483) (Star!483 (reg!812 Regex!483)) (EmptyLang!483) (Union!483 (regOne!1479 Regex!483) (regTwo!1479 Regex!483)) )
))
(declare-fun r!15532 () Regex!483)

(declare-fun validRegex!94 (Regex!483) Bool)

(assert (=> start!11698 (= res!54537 (validRegex!94 r!15532))))

(assert (=> start!11698 e!64666))

(assert (=> start!11698 true))

(declare-fun e!64661 () Bool)

(assert (=> start!11698 e!64661))

(assert (=> start!11698 e!64664))

(declare-fun e!64673 () Bool)

(assert (=> start!11698 e!64673))

(assert (=> start!11698 e!64669))

(declare-datatypes ((Hashable!345 0))(
  ( (HashableExt!344 (__x!1972 Int)) )
))
(declare-datatypes ((tuple2!2052 0))(
  ( (tuple2!2053 (_1!1236 Regex!483) (_2!1236 C!1888)) )
))
(declare-datatypes ((tuple2!2054 0))(
  ( (tuple2!2055 (_1!1237 tuple2!2052) (_2!1237 Regex!483)) )
))
(declare-datatypes ((List!1882 0))(
  ( (Nil!1876) (Cons!1876 (h!7273 tuple2!2054) (t!22359 List!1882)) )
))
(declare-datatypes ((array!1245 0))(
  ( (array!1246 (arr!582 (Array (_ BitVec 32) (_ BitVec 64))) (size!1673 (_ BitVec 32))) )
))
(declare-datatypes ((array!1247 0))(
  ( (array!1248 (arr!583 (Array (_ BitVec 32) List!1882)) (size!1674 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!698 0))(
  ( (LongMapFixedSize!699 (defaultEntry!688 Int) (mask!1258 (_ BitVec 32)) (extraKeys!595 (_ BitVec 32)) (zeroValue!605 List!1882) (minValue!605 List!1882) (_size!831 (_ BitVec 32)) (_keys!640 array!1245) (_values!627 array!1247) (_vacant!410 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1385 0))(
  ( (Cell!1386 (v!13229 LongMapFixedSize!698)) )
))
(declare-datatypes ((MutLongMap!349 0))(
  ( (LongMap!349 (underlying!897 Cell!1385)) (MutLongMapExt!348 (__x!1973 Int)) )
))
(declare-datatypes ((Cell!1387 0))(
  ( (Cell!1388 (v!13230 MutLongMap!349)) )
))
(declare-datatypes ((MutableMap!345 0))(
  ( (MutableMapExt!344 (__x!1974 Int)) (HashMap!345 (underlying!898 Cell!1387) (hashF!2221 Hashable!345) (_size!832 (_ BitVec 32)) (defaultValue!494 Int)) )
))
(declare-datatypes ((Cache!126 0))(
  ( (Cache!127 (cache!797 MutableMap!345)) )
))
(declare-fun cache!470 () Cache!126)

(declare-fun e!64660 () Bool)

(declare-fun inv!2383 (Cache!126) Bool)

(assert (=> start!11698 (and (inv!2383 cache!470) e!64660)))

(declare-fun b!114465 () Bool)

(declare-fun tp!62480 () Bool)

(declare-fun tp!62487 () Bool)

(assert (=> b!114465 (= e!64661 (and tp!62480 tp!62487))))

(declare-fun b!114466 () Bool)

(declare-fun e!64665 () Bool)

(declare-fun e!64670 () Bool)

(assert (=> b!114466 (= e!64665 (not e!64670))))

(declare-fun res!54539 () Bool)

(assert (=> b!114466 (=> res!54539 e!64670)))

(declare-fun isPrefix!72 (List!1881 List!1881) Bool)

(assert (=> b!114466 (= res!54539 (not (isPrefix!72 testedP!367 totalInput!1363)))))

(declare-fun lt!33411 () List!1881)

(assert (=> b!114466 (isPrefix!72 testedP!367 lt!33411)))

(declare-fun lt!33410 () Unit!1345)

(declare-fun testedSuffix!285 () List!1881)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!21 (List!1881 List!1881) Unit!1345)

(assert (=> b!114466 (= lt!33410 (lemmaConcatTwoListThenFirstIsPrefix!21 testedP!367 testedSuffix!285))))

(declare-fun b!114467 () Bool)

(assert (=> b!114467 (= e!64674 e!64665)))

(declare-fun res!54540 () Bool)

(assert (=> b!114467 (=> (not res!54540) (not e!64665))))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!114467 (= res!54540 (= totalInputSize!643 lt!33407))))

(assert (=> b!114467 (= lt!33407 (size!1672 totalInput!1363))))

(declare-fun b!114468 () Bool)

(assert (=> b!114468 (= e!64661 tp_is_empty!1021)))

(declare-fun b!114469 () Bool)

(declare-fun tp!62488 () Bool)

(assert (=> b!114469 (= e!64661 tp!62488)))

(declare-fun b!114470 () Bool)

(declare-fun tp!62475 () Bool)

(declare-fun tp!62477 () Bool)

(assert (=> b!114470 (= e!64661 (and tp!62475 tp!62477))))

(declare-fun b!114471 () Bool)

(assert (=> b!114471 (= e!64666 e!64658)))

(declare-fun res!54535 () Bool)

(assert (=> b!114471 (=> (not res!54535) (not e!64658))))

(assert (=> b!114471 (= res!54535 (= lt!33411 totalInput!1363))))

(declare-fun ++!326 (List!1881 List!1881) List!1881)

(assert (=> b!114471 (= lt!33411 (++!326 testedP!367 testedSuffix!285))))

(declare-fun mapIsEmpty!1363 () Bool)

(declare-fun mapRes!1363 () Bool)

(assert (=> mapIsEmpty!1363 mapRes!1363))

(declare-fun e!64676 () Bool)

(declare-fun e!64663 () Bool)

(assert (=> b!114472 (= e!64676 (and e!64663 tp!62484))))

(declare-fun b!114473 () Bool)

(assert (=> b!114473 (= e!64659 true)))

(assert (=> b!114473 (isPrefix!72 totalInput!1363 totalInput!1363)))

(declare-fun lt!33412 () Unit!1345)

(declare-fun lemmaIsPrefixRefl!57 (List!1881 List!1881) Unit!1345)

(assert (=> b!114473 (= lt!33412 (lemmaIsPrefixRefl!57 totalInput!1363 totalInput!1363))))

(declare-fun b!114474 () Bool)

(declare-fun res!54536 () Bool)

(assert (=> b!114474 (=> res!54536 e!64671)))

(assert (=> b!114474 (= res!54536 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!114475 () Bool)

(assert (=> b!114475 (= e!64670 e!64671)))

(declare-fun res!54541 () Bool)

(assert (=> b!114475 (=> res!54541 e!64671)))

(declare-fun lostCause!30 (Regex!483) Bool)

(assert (=> b!114475 (= res!54541 (lostCause!30 r!15532))))

(declare-fun lt!33414 () List!1881)

(assert (=> b!114475 (and (= testedSuffix!285 lt!33414) (= lt!33414 testedSuffix!285))))

(declare-fun lt!33408 () Unit!1345)

(declare-fun lemmaSamePrefixThenSameSuffix!18 (List!1881 List!1881 List!1881 List!1881 List!1881) Unit!1345)

(assert (=> b!114475 (= lt!33408 (lemmaSamePrefixThenSameSuffix!18 testedP!367 testedSuffix!285 testedP!367 lt!33414 totalInput!1363))))

(declare-fun getSuffix!19 (List!1881 List!1881) List!1881)

(assert (=> b!114475 (= lt!33414 (getSuffix!19 totalInput!1363 testedP!367))))

(declare-fun b!114476 () Bool)

(assert (=> b!114476 (= e!64660 e!64676)))

(declare-fun tp!62476 () Bool)

(declare-fun e!64672 () Bool)

(declare-fun e!64675 () Bool)

(declare-fun tp!62482 () Bool)

(declare-fun array_inv!411 (array!1245) Bool)

(declare-fun array_inv!412 (array!1247) Bool)

(assert (=> b!114477 (= e!64675 (and tp!62485 tp!62476 tp!62482 (array_inv!411 (_keys!640 (v!13229 (underlying!897 (v!13230 (underlying!898 (cache!797 cache!470))))))) (array_inv!412 (_values!627 (v!13229 (underlying!897 (v!13230 (underlying!898 (cache!797 cache!470))))))) e!64672))))

(declare-fun b!114478 () Bool)

(declare-fun e!64667 () Bool)

(declare-fun lt!33413 () MutLongMap!349)

(get-info :version)

(assert (=> b!114478 (= e!64663 (and e!64667 ((_ is LongMap!349) lt!33413)))))

(assert (=> b!114478 (= lt!33413 (v!13230 (underlying!898 (cache!797 cache!470))))))

(declare-fun b!114479 () Bool)

(declare-fun e!64662 () Bool)

(assert (=> b!114479 (= e!64667 e!64662)))

(declare-fun b!114480 () Bool)

(assert (=> b!114480 (= e!64662 e!64675)))

(declare-fun b!114481 () Bool)

(declare-fun res!54533 () Bool)

(assert (=> b!114481 (=> (not res!54533) (not e!64666))))

(declare-fun valid!321 (Cache!126) Bool)

(assert (=> b!114481 (= res!54533 (valid!321 cache!470))))

(declare-fun mapNonEmpty!1363 () Bool)

(declare-fun tp!62483 () Bool)

(declare-fun tp!62479 () Bool)

(assert (=> mapNonEmpty!1363 (= mapRes!1363 (and tp!62483 tp!62479))))

(declare-fun mapKey!1363 () (_ BitVec 32))

(declare-fun mapRest!1363 () (Array (_ BitVec 32) List!1882))

(declare-fun mapValue!1363 () List!1882)

(assert (=> mapNonEmpty!1363 (= (arr!583 (_values!627 (v!13229 (underlying!897 (v!13230 (underlying!898 (cache!797 cache!470))))))) (store mapRest!1363 mapKey!1363 mapValue!1363))))

(declare-fun b!114482 () Bool)

(declare-fun tp!62489 () Bool)

(assert (=> b!114482 (= e!64672 (and tp!62489 mapRes!1363))))

(declare-fun condMapEmpty!1363 () Bool)

(declare-fun mapDefault!1363 () List!1882)

(assert (=> b!114482 (= condMapEmpty!1363 (= (arr!583 (_values!627 (v!13229 (underlying!897 (v!13230 (underlying!898 (cache!797 cache!470))))))) ((as const (Array (_ BitVec 32) List!1882)) mapDefault!1363)))))

(declare-fun b!114483 () Bool)

(declare-fun tp!62486 () Bool)

(assert (=> b!114483 (= e!64673 (and tp_is_empty!1021 tp!62486))))

(assert (= (and start!11698 res!54537) b!114481))

(assert (= (and b!114481 res!54533) b!114471))

(assert (= (and b!114471 res!54535) b!114463))

(assert (= (and b!114463 res!54538) b!114467))

(assert (= (and b!114467 res!54540) b!114466))

(assert (= (and b!114466 (not res!54539)) b!114475))

(assert (= (and b!114475 (not res!54541)) b!114474))

(assert (= (and b!114474 (not res!54536)) b!114464))

(assert (= (and b!114464 (not res!54534)) b!114473))

(assert (= (and start!11698 ((_ is ElementMatch!483) r!15532)) b!114468))

(assert (= (and start!11698 ((_ is Concat!867) r!15532)) b!114470))

(assert (= (and start!11698 ((_ is Star!483) r!15532)) b!114469))

(assert (= (and start!11698 ((_ is Union!483) r!15532)) b!114465))

(assert (= (and start!11698 ((_ is Cons!1875) totalInput!1363)) b!114462))

(assert (= (and start!11698 ((_ is Cons!1875) testedSuffix!285)) b!114483))

(assert (= (and start!11698 ((_ is Cons!1875) testedP!367)) b!114461))

(assert (= (and b!114482 condMapEmpty!1363) mapIsEmpty!1363))

(assert (= (and b!114482 (not condMapEmpty!1363)) mapNonEmpty!1363))

(assert (= b!114477 b!114482))

(assert (= b!114480 b!114477))

(assert (= b!114479 b!114480))

(assert (= (and b!114478 ((_ is LongMap!349) (v!13230 (underlying!898 (cache!797 cache!470))))) b!114479))

(assert (= b!114472 b!114478))

(assert (= (and b!114476 ((_ is HashMap!345) (cache!797 cache!470))) b!114472))

(assert (= start!11698 b!114476))

(declare-fun m!103262 () Bool)

(assert (=> b!114466 m!103262))

(declare-fun m!103264 () Bool)

(assert (=> b!114466 m!103264))

(declare-fun m!103266 () Bool)

(assert (=> b!114466 m!103266))

(declare-fun m!103268 () Bool)

(assert (=> mapNonEmpty!1363 m!103268))

(declare-fun m!103270 () Bool)

(assert (=> b!114464 m!103270))

(declare-fun m!103272 () Bool)

(assert (=> b!114475 m!103272))

(declare-fun m!103274 () Bool)

(assert (=> b!114475 m!103274))

(declare-fun m!103276 () Bool)

(assert (=> b!114475 m!103276))

(declare-fun m!103278 () Bool)

(assert (=> b!114471 m!103278))

(declare-fun m!103280 () Bool)

(assert (=> b!114481 m!103280))

(declare-fun m!103282 () Bool)

(assert (=> b!114473 m!103282))

(declare-fun m!103284 () Bool)

(assert (=> b!114473 m!103284))

(declare-fun m!103286 () Bool)

(assert (=> b!114467 m!103286))

(declare-fun m!103288 () Bool)

(assert (=> b!114477 m!103288))

(declare-fun m!103290 () Bool)

(assert (=> b!114477 m!103290))

(declare-fun m!103292 () Bool)

(assert (=> b!114463 m!103292))

(declare-fun m!103294 () Bool)

(assert (=> start!11698 m!103294))

(declare-fun m!103296 () Bool)

(assert (=> start!11698 m!103296))

(check-sat (not b!114464) (not start!11698) (not b!114469) (not b!114463) (not b!114477) (not b!114482) (not b!114475) b_and!5757 (not b!114483) (not b!114461) (not b!114481) b_and!5755 (not b!114471) (not b_next!3627) (not b_next!3625) (not b!114466) (not b!114470) (not mapNonEmpty!1363) tp_is_empty!1021 (not b!114473) (not b!114462) (not b!114465) (not b!114467))
(check-sat b_and!5757 b_and!5755 (not b_next!3627) (not b_next!3625))
