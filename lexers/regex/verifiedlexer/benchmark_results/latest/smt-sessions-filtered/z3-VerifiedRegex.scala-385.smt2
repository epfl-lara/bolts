; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11702 () Bool)

(assert start!11702)

(declare-fun b!114614 () Bool)

(declare-fun b_free!3633 () Bool)

(declare-fun b_next!3633 () Bool)

(assert (=> b!114614 (= b_free!3633 (not b_next!3633))))

(declare-fun tp!62578 () Bool)

(declare-fun b_and!5763 () Bool)

(assert (=> b!114614 (= tp!62578 b_and!5763)))

(declare-fun b!114615 () Bool)

(declare-fun b_free!3635 () Bool)

(declare-fun b_next!3635 () Bool)

(assert (=> b!114615 (= b_free!3635 (not b_next!3635))))

(declare-fun tp!62570 () Bool)

(declare-fun b_and!5765 () Bool)

(assert (=> b!114615 (= tp!62570 b_and!5765)))

(declare-fun mapNonEmpty!1369 () Bool)

(declare-fun mapRes!1369 () Bool)

(declare-fun tp!62571 () Bool)

(declare-fun tp!62566 () Bool)

(assert (=> mapNonEmpty!1369 (= mapRes!1369 (and tp!62571 tp!62566))))

(declare-datatypes ((C!1892 0))(
  ( (C!1893 (val!672 Int)) )
))
(declare-datatypes ((Regex!485 0))(
  ( (ElementMatch!485 (c!26491 C!1892)) (Concat!869 (regOne!1482 Regex!485) (regTwo!1482 Regex!485)) (EmptyExpr!485) (Star!485 (reg!814 Regex!485)) (EmptyLang!485) (Union!485 (regOne!1483 Regex!485) (regTwo!1483 Regex!485)) )
))
(declare-datatypes ((Hashable!347 0))(
  ( (HashableExt!346 (__x!1978 Int)) )
))
(declare-datatypes ((tuple2!2060 0))(
  ( (tuple2!2061 (_1!1240 Regex!485) (_2!1240 C!1892)) )
))
(declare-datatypes ((tuple2!2062 0))(
  ( (tuple2!2063 (_1!1241 tuple2!2060) (_2!1241 Regex!485)) )
))
(declare-datatypes ((List!1885 0))(
  ( (Nil!1879) (Cons!1879 (h!7276 tuple2!2062) (t!22362 List!1885)) )
))
(declare-datatypes ((array!1253 0))(
  ( (array!1254 (arr!586 (Array (_ BitVec 32) (_ BitVec 64))) (size!1678 (_ BitVec 32))) )
))
(declare-datatypes ((array!1255 0))(
  ( (array!1256 (arr!587 (Array (_ BitVec 32) List!1885)) (size!1679 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!702 0))(
  ( (LongMapFixedSize!703 (defaultEntry!690 Int) (mask!1261 (_ BitVec 32)) (extraKeys!597 (_ BitVec 32)) (zeroValue!607 List!1885) (minValue!607 List!1885) (_size!835 (_ BitVec 32)) (_keys!642 array!1253) (_values!629 array!1255) (_vacant!412 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1393 0))(
  ( (Cell!1394 (v!13233 LongMapFixedSize!702)) )
))
(declare-datatypes ((MutLongMap!351 0))(
  ( (LongMap!351 (underlying!901 Cell!1393)) (MutLongMapExt!350 (__x!1979 Int)) )
))
(declare-datatypes ((Cell!1395 0))(
  ( (Cell!1396 (v!13234 MutLongMap!351)) )
))
(declare-datatypes ((MutableMap!347 0))(
  ( (MutableMapExt!346 (__x!1980 Int)) (HashMap!347 (underlying!902 Cell!1395) (hashF!2223 Hashable!347) (_size!836 (_ BitVec 32)) (defaultValue!496 Int)) )
))
(declare-datatypes ((Cache!130 0))(
  ( (Cache!131 (cache!799 MutableMap!347)) )
))
(declare-fun cache!470 () Cache!130)

(declare-fun mapRest!1369 () (Array (_ BitVec 32) List!1885))

(declare-fun mapValue!1369 () List!1885)

(declare-fun mapKey!1369 () (_ BitVec 32))

(assert (=> mapNonEmpty!1369 (= (arr!587 (_values!629 (v!13233 (underlying!901 (v!13234 (underlying!902 (cache!799 cache!470))))))) (store mapRest!1369 mapKey!1369 mapValue!1369))))

(declare-fun b!114605 () Bool)

(declare-fun e!64787 () Bool)

(declare-fun e!64777 () Bool)

(assert (=> b!114605 (= e!64787 e!64777)))

(declare-fun res!54589 () Bool)

(assert (=> b!114605 (=> (not res!54589) (not e!64777))))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!33479 () Int)

(assert (=> b!114605 (= res!54589 (= totalInputSize!643 lt!33479))))

(declare-datatypes ((List!1886 0))(
  ( (Nil!1880) (Cons!1880 (h!7277 C!1892) (t!22363 List!1886)) )
))
(declare-fun totalInput!1363 () List!1886)

(declare-fun size!1680 (List!1886) Int)

(assert (=> b!114605 (= lt!33479 (size!1680 totalInput!1363))))

(declare-fun e!64772 () Bool)

(declare-fun b!114606 () Bool)

(declare-fun lt!33473 () Int)

(declare-fun testedSuffix!285 () List!1886)

(assert (=> b!114606 (= e!64772 (or (>= lt!33473 lt!33479) (not (= testedSuffix!285 Nil!1880))))))

(declare-datatypes ((Unit!1351 0))(
  ( (Unit!1352) )
))
(declare-fun lt!33477 () Unit!1351)

(declare-fun e!64786 () Unit!1351)

(assert (=> b!114606 (= lt!33477 e!64786)))

(declare-fun c!26490 () Bool)

(assert (=> b!114606 (= c!26490 (= lt!33473 lt!33479))))

(assert (=> b!114606 (<= lt!33473 lt!33479)))

(declare-fun lt!33478 () Unit!1351)

(declare-fun testedP!367 () List!1886)

(declare-fun lemmaIsPrefixThenSmallerEqSize!5 (List!1886 List!1886) Unit!1351)

(assert (=> b!114606 (= lt!33478 (lemmaIsPrefixThenSmallerEqSize!5 testedP!367 totalInput!1363))))

(declare-fun b!114607 () Bool)

(declare-fun e!64784 () Bool)

(assert (=> b!114607 (= e!64784 e!64772)))

(declare-fun res!54583 () Bool)

(assert (=> b!114607 (=> res!54583 e!64772)))

(declare-fun r!15532 () Regex!485)

(declare-fun lostCause!32 (Regex!485) Bool)

(assert (=> b!114607 (= res!54583 (lostCause!32 r!15532))))

(declare-fun lt!33472 () List!1886)

(assert (=> b!114607 (and (= testedSuffix!285 lt!33472) (= lt!33472 testedSuffix!285))))

(declare-fun lt!33476 () Unit!1351)

(declare-fun lemmaSamePrefixThenSameSuffix!20 (List!1886 List!1886 List!1886 List!1886 List!1886) Unit!1351)

(assert (=> b!114607 (= lt!33476 (lemmaSamePrefixThenSameSuffix!20 testedP!367 testedSuffix!285 testedP!367 lt!33472 totalInput!1363))))

(declare-fun getSuffix!21 (List!1886 List!1886) List!1886)

(assert (=> b!114607 (= lt!33472 (getSuffix!21 totalInput!1363 testedP!367))))

(declare-fun b!114608 () Bool)

(declare-fun e!64780 () Bool)

(declare-fun tp!62579 () Bool)

(assert (=> b!114608 (= e!64780 (and tp!62579 mapRes!1369))))

(declare-fun condMapEmpty!1369 () Bool)

(declare-fun mapDefault!1369 () List!1885)

(assert (=> b!114608 (= condMapEmpty!1369 (= (arr!587 (_values!629 (v!13233 (underlying!901 (v!13234 (underlying!902 (cache!799 cache!470))))))) ((as const (Array (_ BitVec 32) List!1885)) mapDefault!1369)))))

(declare-fun b!114609 () Bool)

(declare-fun e!64788 () Bool)

(declare-fun tp_is_empty!1025 () Bool)

(declare-fun tp!62569 () Bool)

(assert (=> b!114609 (= e!64788 (and tp_is_empty!1025 tp!62569))))

(declare-fun b!114610 () Bool)

(declare-fun e!64778 () Bool)

(declare-fun tp!62565 () Bool)

(assert (=> b!114610 (= e!64778 (and tp_is_empty!1025 tp!62565))))

(declare-fun b!114611 () Bool)

(assert (=> b!114611 (= e!64777 (not e!64784))))

(declare-fun res!54588 () Bool)

(assert (=> b!114611 (=> res!54588 e!64784)))

(declare-fun isPrefix!74 (List!1886 List!1886) Bool)

(assert (=> b!114611 (= res!54588 (not (isPrefix!74 testedP!367 totalInput!1363)))))

(declare-fun lt!33470 () List!1886)

(assert (=> b!114611 (isPrefix!74 testedP!367 lt!33470)))

(declare-fun lt!33475 () Unit!1351)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!22 (List!1886 List!1886) Unit!1351)

(assert (=> b!114611 (= lt!33475 (lemmaConcatTwoListThenFirstIsPrefix!22 testedP!367 testedSuffix!285))))

(declare-fun b!114612 () Bool)

(declare-fun e!64790 () Bool)

(declare-fun e!64776 () Bool)

(assert (=> b!114612 (= e!64790 e!64776)))

(declare-fun b!114613 () Bool)

(declare-fun e!64785 () Bool)

(declare-fun e!64782 () Bool)

(assert (=> b!114613 (= e!64785 e!64782)))

(declare-fun res!54586 () Bool)

(assert (=> b!114613 (=> (not res!54586) (not e!64782))))

(assert (=> b!114613 (= res!54586 (= lt!33470 totalInput!1363))))

(declare-fun ++!327 (List!1886 List!1886) List!1886)

(assert (=> b!114613 (= lt!33470 (++!327 testedP!367 testedSuffix!285))))

(declare-fun tp!62572 () Bool)

(declare-fun e!64789 () Bool)

(declare-fun tp!62573 () Bool)

(declare-fun array_inv!415 (array!1253) Bool)

(declare-fun array_inv!416 (array!1255) Bool)

(assert (=> b!114614 (= e!64789 (and tp!62578 tp!62573 tp!62572 (array_inv!415 (_keys!642 (v!13233 (underlying!901 (v!13234 (underlying!902 (cache!799 cache!470))))))) (array_inv!416 (_values!629 (v!13233 (underlying!901 (v!13234 (underlying!902 (cache!799 cache!470))))))) e!64780))))

(declare-fun e!64779 () Bool)

(declare-fun e!64783 () Bool)

(assert (=> b!114615 (= e!64779 (and e!64783 tp!62570))))

(declare-fun res!54584 () Bool)

(assert (=> start!11702 (=> (not res!54584) (not e!64785))))

(declare-fun validRegex!96 (Regex!485) Bool)

(assert (=> start!11702 (= res!54584 (validRegex!96 r!15532))))

(assert (=> start!11702 e!64785))

(assert (=> start!11702 true))

(declare-fun e!64774 () Bool)

(assert (=> start!11702 e!64774))

(declare-fun e!64773 () Bool)

(assert (=> start!11702 e!64773))

(assert (=> start!11702 e!64778))

(assert (=> start!11702 e!64788))

(declare-fun e!64775 () Bool)

(declare-fun inv!2388 (Cache!130) Bool)

(assert (=> start!11702 (and (inv!2388 cache!470) e!64775)))

(declare-fun b!114604 () Bool)

(declare-fun res!54582 () Bool)

(assert (=> b!114604 (=> (not res!54582) (not e!64785))))

(declare-fun valid!322 (Cache!130) Bool)

(assert (=> b!114604 (= res!54582 (valid!322 cache!470))))

(declare-fun b!114616 () Bool)

(declare-fun Unit!1353 () Unit!1351)

(assert (=> b!114616 (= e!64786 Unit!1353)))

(declare-fun b!114617 () Bool)

(declare-fun tp!62576 () Bool)

(declare-fun tp!62574 () Bool)

(assert (=> b!114617 (= e!64774 (and tp!62576 tp!62574))))

(declare-fun b!114618 () Bool)

(declare-fun tp!62575 () Bool)

(assert (=> b!114618 (= e!64774 tp!62575)))

(declare-fun b!114619 () Bool)

(assert (=> b!114619 (= e!64782 e!64787)))

(declare-fun res!54587 () Bool)

(assert (=> b!114619 (=> (not res!54587) (not e!64787))))

(declare-fun testedPSize!285 () Int)

(assert (=> b!114619 (= res!54587 (= testedPSize!285 lt!33473))))

(assert (=> b!114619 (= lt!33473 (size!1680 testedP!367))))

(declare-fun b!114620 () Bool)

(assert (=> b!114620 (= e!64776 e!64789)))

(declare-fun b!114621 () Bool)

(assert (=> b!114621 (= e!64774 tp_is_empty!1025)))

(declare-fun b!114622 () Bool)

(declare-fun res!54585 () Bool)

(assert (=> b!114622 (=> res!54585 e!64772)))

(assert (=> b!114622 (= res!54585 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!114623 () Bool)

(declare-fun tp!62577 () Bool)

(declare-fun tp!62568 () Bool)

(assert (=> b!114623 (= e!64774 (and tp!62577 tp!62568))))

(declare-fun b!114624 () Bool)

(declare-fun tp!62567 () Bool)

(assert (=> b!114624 (= e!64773 (and tp_is_empty!1025 tp!62567))))

(declare-fun b!114625 () Bool)

(assert (=> b!114625 (= e!64775 e!64779)))

(declare-fun b!114626 () Bool)

(declare-fun lt!33480 () MutLongMap!351)

(get-info :version)

(assert (=> b!114626 (= e!64783 (and e!64790 ((_ is LongMap!351) lt!33480)))))

(assert (=> b!114626 (= lt!33480 (v!13234 (underlying!902 (cache!799 cache!470))))))

(declare-fun b!114627 () Bool)

(declare-fun Unit!1354 () Unit!1351)

(assert (=> b!114627 (= e!64786 Unit!1354)))

(declare-fun lt!33474 () Unit!1351)

(declare-fun lemmaIsPrefixRefl!59 (List!1886 List!1886) Unit!1351)

(assert (=> b!114627 (= lt!33474 (lemmaIsPrefixRefl!59 totalInput!1363 totalInput!1363))))

(assert (=> b!114627 (isPrefix!74 totalInput!1363 totalInput!1363)))

(declare-fun lt!33471 () Unit!1351)

(declare-fun lemmaIsPrefixSameLengthThenSameList!5 (List!1886 List!1886 List!1886) Unit!1351)

(assert (=> b!114627 (= lt!33471 (lemmaIsPrefixSameLengthThenSameList!5 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!114627 false))

(declare-fun mapIsEmpty!1369 () Bool)

(assert (=> mapIsEmpty!1369 mapRes!1369))

(assert (= (and start!11702 res!54584) b!114604))

(assert (= (and b!114604 res!54582) b!114613))

(assert (= (and b!114613 res!54586) b!114619))

(assert (= (and b!114619 res!54587) b!114605))

(assert (= (and b!114605 res!54589) b!114611))

(assert (= (and b!114611 (not res!54588)) b!114607))

(assert (= (and b!114607 (not res!54583)) b!114622))

(assert (= (and b!114622 (not res!54585)) b!114606))

(assert (= (and b!114606 c!26490) b!114627))

(assert (= (and b!114606 (not c!26490)) b!114616))

(assert (= (and start!11702 ((_ is ElementMatch!485) r!15532)) b!114621))

(assert (= (and start!11702 ((_ is Concat!869) r!15532)) b!114623))

(assert (= (and start!11702 ((_ is Star!485) r!15532)) b!114618))

(assert (= (and start!11702 ((_ is Union!485) r!15532)) b!114617))

(assert (= (and start!11702 ((_ is Cons!1880) totalInput!1363)) b!114624))

(assert (= (and start!11702 ((_ is Cons!1880) testedSuffix!285)) b!114610))

(assert (= (and start!11702 ((_ is Cons!1880) testedP!367)) b!114609))

(assert (= (and b!114608 condMapEmpty!1369) mapIsEmpty!1369))

(assert (= (and b!114608 (not condMapEmpty!1369)) mapNonEmpty!1369))

(assert (= b!114614 b!114608))

(assert (= b!114620 b!114614))

(assert (= b!114612 b!114620))

(assert (= (and b!114626 ((_ is LongMap!351) (v!13234 (underlying!902 (cache!799 cache!470))))) b!114612))

(assert (= b!114615 b!114626))

(assert (= (and b!114625 ((_ is HashMap!347) (cache!799 cache!470))) b!114615))

(assert (= start!11702 b!114625))

(declare-fun m!103336 () Bool)

(assert (=> mapNonEmpty!1369 m!103336))

(declare-fun m!103338 () Bool)

(assert (=> b!114611 m!103338))

(declare-fun m!103340 () Bool)

(assert (=> b!114611 m!103340))

(declare-fun m!103342 () Bool)

(assert (=> b!114611 m!103342))

(declare-fun m!103344 () Bool)

(assert (=> b!114627 m!103344))

(declare-fun m!103346 () Bool)

(assert (=> b!114627 m!103346))

(declare-fun m!103348 () Bool)

(assert (=> b!114627 m!103348))

(declare-fun m!103350 () Bool)

(assert (=> b!114607 m!103350))

(declare-fun m!103352 () Bool)

(assert (=> b!114607 m!103352))

(declare-fun m!103354 () Bool)

(assert (=> b!114607 m!103354))

(declare-fun m!103356 () Bool)

(assert (=> start!11702 m!103356))

(declare-fun m!103358 () Bool)

(assert (=> start!11702 m!103358))

(declare-fun m!103360 () Bool)

(assert (=> b!114614 m!103360))

(declare-fun m!103362 () Bool)

(assert (=> b!114614 m!103362))

(declare-fun m!103364 () Bool)

(assert (=> b!114605 m!103364))

(declare-fun m!103366 () Bool)

(assert (=> b!114619 m!103366))

(declare-fun m!103368 () Bool)

(assert (=> b!114613 m!103368))

(declare-fun m!103370 () Bool)

(assert (=> b!114604 m!103370))

(declare-fun m!103372 () Bool)

(assert (=> b!114606 m!103372))

(check-sat (not mapNonEmpty!1369) (not b!114604) (not b!114610) (not b!114623) (not b!114605) (not b!114608) b_and!5763 (not start!11702) (not b!114606) tp_is_empty!1025 (not b!114611) (not b!114613) (not b!114624) b_and!5765 (not b_next!3633) (not b_next!3635) (not b!114609) (not b!114617) (not b!114607) (not b!114627) (not b!114619) (not b!114614) (not b!114618))
(check-sat b_and!5765 b_and!5763 (not b_next!3635) (not b_next!3633))
(get-model)

(declare-fun b!114646 () Bool)

(declare-fun res!54600 () Bool)

(declare-fun e!64808 () Bool)

(assert (=> b!114646 (=> (not res!54600) (not e!64808))))

(declare-fun call!4876 () Bool)

(assert (=> b!114646 (= res!54600 call!4876)))

(declare-fun e!64809 () Bool)

(assert (=> b!114646 (= e!64809 e!64808)))

(declare-fun b!114647 () Bool)

(declare-fun e!64805 () Bool)

(declare-fun e!64810 () Bool)

(assert (=> b!114647 (= e!64805 e!64810)))

(declare-fun res!54604 () Bool)

(assert (=> b!114647 (=> (not res!54604) (not e!64810))))

(declare-fun call!4877 () Bool)

(assert (=> b!114647 (= res!54604 call!4877)))

(declare-fun b!114648 () Bool)

(declare-fun e!64811 () Bool)

(declare-fun e!64806 () Bool)

(assert (=> b!114648 (= e!64811 e!64806)))

(declare-fun c!26496 () Bool)

(assert (=> b!114648 (= c!26496 ((_ is Star!485) r!15532))))

(declare-fun b!114649 () Bool)

(declare-fun e!64807 () Bool)

(declare-fun call!4878 () Bool)

(assert (=> b!114649 (= e!64807 call!4878)))

(declare-fun bm!4871 () Bool)

(declare-fun c!26497 () Bool)

(assert (=> bm!4871 (= call!4876 (validRegex!96 (ite c!26497 (regOne!1483 r!15532) (regTwo!1482 r!15532))))))

(declare-fun bm!4872 () Bool)

(assert (=> bm!4872 (= call!4878 (validRegex!96 (ite c!26496 (reg!814 r!15532) (ite c!26497 (regTwo!1483 r!15532) (regOne!1482 r!15532)))))))

(declare-fun bm!4873 () Bool)

(assert (=> bm!4873 (= call!4877 call!4878)))

(declare-fun d!28200 () Bool)

(declare-fun res!54603 () Bool)

(assert (=> d!28200 (=> res!54603 e!64811)))

(assert (=> d!28200 (= res!54603 ((_ is ElementMatch!485) r!15532))))

(assert (=> d!28200 (= (validRegex!96 r!15532) e!64811)))

(declare-fun b!114650 () Bool)

(assert (=> b!114650 (= e!64810 call!4876)))

(declare-fun b!114651 () Bool)

(assert (=> b!114651 (= e!64806 e!64809)))

(assert (=> b!114651 (= c!26497 ((_ is Union!485) r!15532))))

(declare-fun b!114652 () Bool)

(declare-fun res!54602 () Bool)

(assert (=> b!114652 (=> res!54602 e!64805)))

(assert (=> b!114652 (= res!54602 (not ((_ is Concat!869) r!15532)))))

(assert (=> b!114652 (= e!64809 e!64805)))

(declare-fun b!114653 () Bool)

(assert (=> b!114653 (= e!64808 call!4877)))

(declare-fun b!114654 () Bool)

(assert (=> b!114654 (= e!64806 e!64807)))

(declare-fun res!54601 () Bool)

(declare-fun nullable!60 (Regex!485) Bool)

(assert (=> b!114654 (= res!54601 (not (nullable!60 (reg!814 r!15532))))))

(assert (=> b!114654 (=> (not res!54601) (not e!64807))))

(assert (= (and d!28200 (not res!54603)) b!114648))

(assert (= (and b!114648 c!26496) b!114654))

(assert (= (and b!114648 (not c!26496)) b!114651))

(assert (= (and b!114654 res!54601) b!114649))

(assert (= (and b!114651 c!26497) b!114646))

(assert (= (and b!114651 (not c!26497)) b!114652))

(assert (= (and b!114646 res!54600) b!114653))

(assert (= (and b!114652 (not res!54602)) b!114647))

(assert (= (and b!114647 res!54604) b!114650))

(assert (= (or b!114653 b!114647) bm!4873))

(assert (= (or b!114646 b!114650) bm!4871))

(assert (= (or b!114649 bm!4873) bm!4872))

(declare-fun m!103374 () Bool)

(assert (=> bm!4871 m!103374))

(declare-fun m!103376 () Bool)

(assert (=> bm!4872 m!103376))

(declare-fun m!103378 () Bool)

(assert (=> b!114654 m!103378))

(assert (=> start!11702 d!28200))

(declare-fun d!28202 () Bool)

(declare-fun res!54607 () Bool)

(declare-fun e!64814 () Bool)

(assert (=> d!28202 (=> (not res!54607) (not e!64814))))

(assert (=> d!28202 (= res!54607 ((_ is HashMap!347) (cache!799 cache!470)))))

(assert (=> d!28202 (= (inv!2388 cache!470) e!64814)))

(declare-fun b!114657 () Bool)

(declare-fun validCacheMap!14 (MutableMap!347) Bool)

(assert (=> b!114657 (= e!64814 (validCacheMap!14 (cache!799 cache!470)))))

(assert (= (and d!28202 res!54607) b!114657))

(declare-fun m!103380 () Bool)

(assert (=> b!114657 m!103380))

(assert (=> start!11702 d!28202))

(declare-fun b!114668 () Bool)

(declare-fun res!54612 () Bool)

(declare-fun e!64820 () Bool)

(assert (=> b!114668 (=> (not res!54612) (not e!64820))))

(declare-fun lt!33483 () List!1886)

(assert (=> b!114668 (= res!54612 (= (size!1680 lt!33483) (+ (size!1680 testedP!367) (size!1680 testedSuffix!285))))))

(declare-fun b!114669 () Bool)

(assert (=> b!114669 (= e!64820 (or (not (= testedSuffix!285 Nil!1880)) (= lt!33483 testedP!367)))))

(declare-fun d!28204 () Bool)

(assert (=> d!28204 e!64820))

(declare-fun res!54613 () Bool)

(assert (=> d!28204 (=> (not res!54613) (not e!64820))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!212 (List!1886) (InoxSet C!1892))

(assert (=> d!28204 (= res!54613 (= (content!212 lt!33483) ((_ map or) (content!212 testedP!367) (content!212 testedSuffix!285))))))

(declare-fun e!64819 () List!1886)

(assert (=> d!28204 (= lt!33483 e!64819)))

(declare-fun c!26500 () Bool)

(assert (=> d!28204 (= c!26500 ((_ is Nil!1880) testedP!367))))

(assert (=> d!28204 (= (++!327 testedP!367 testedSuffix!285) lt!33483)))

(declare-fun b!114666 () Bool)

(assert (=> b!114666 (= e!64819 testedSuffix!285)))

(declare-fun b!114667 () Bool)

(assert (=> b!114667 (= e!64819 (Cons!1880 (h!7277 testedP!367) (++!327 (t!22363 testedP!367) testedSuffix!285)))))

(assert (= (and d!28204 c!26500) b!114666))

(assert (= (and d!28204 (not c!26500)) b!114667))

(assert (= (and d!28204 res!54613) b!114668))

(assert (= (and b!114668 res!54612) b!114669))

(declare-fun m!103382 () Bool)

(assert (=> b!114668 m!103382))

(assert (=> b!114668 m!103366))

(declare-fun m!103384 () Bool)

(assert (=> b!114668 m!103384))

(declare-fun m!103386 () Bool)

(assert (=> d!28204 m!103386))

(declare-fun m!103388 () Bool)

(assert (=> d!28204 m!103388))

(declare-fun m!103390 () Bool)

(assert (=> d!28204 m!103390))

(declare-fun m!103392 () Bool)

(assert (=> b!114667 m!103392))

(assert (=> b!114613 d!28204))

(declare-fun d!28206 () Bool)

(assert (=> d!28206 (= (array_inv!415 (_keys!642 (v!13233 (underlying!901 (v!13234 (underlying!902 (cache!799 cache!470))))))) (bvsge (size!1678 (_keys!642 (v!13233 (underlying!901 (v!13234 (underlying!902 (cache!799 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!114614 d!28206))

(declare-fun d!28208 () Bool)

(assert (=> d!28208 (= (array_inv!416 (_values!629 (v!13233 (underlying!901 (v!13234 (underlying!902 (cache!799 cache!470))))))) (bvsge (size!1679 (_values!629 (v!13233 (underlying!901 (v!13234 (underlying!902 (cache!799 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!114614 d!28208))

(declare-fun d!28210 () Bool)

(declare-fun lt!33486 () Int)

(assert (=> d!28210 (>= lt!33486 0)))

(declare-fun e!64823 () Int)

(assert (=> d!28210 (= lt!33486 e!64823)))

(declare-fun c!26503 () Bool)

(assert (=> d!28210 (= c!26503 ((_ is Nil!1880) testedP!367))))

(assert (=> d!28210 (= (size!1680 testedP!367) lt!33486)))

(declare-fun b!114674 () Bool)

(assert (=> b!114674 (= e!64823 0)))

(declare-fun b!114675 () Bool)

(assert (=> b!114675 (= e!64823 (+ 1 (size!1680 (t!22363 testedP!367))))))

(assert (= (and d!28210 c!26503) b!114674))

(assert (= (and d!28210 (not c!26503)) b!114675))

(declare-fun m!103394 () Bool)

(assert (=> b!114675 m!103394))

(assert (=> b!114619 d!28210))

(declare-fun d!28212 () Bool)

(assert (=> d!28212 (= (valid!322 cache!470) (validCacheMap!14 (cache!799 cache!470)))))

(declare-fun bs!11798 () Bool)

(assert (= bs!11798 d!28212))

(assert (=> bs!11798 m!103380))

(assert (=> b!114604 d!28212))

(declare-fun d!28214 () Bool)

(declare-fun lostCauseFct!19 (Regex!485) Bool)

(assert (=> d!28214 (= (lostCause!32 r!15532) (lostCauseFct!19 r!15532))))

(declare-fun bs!11799 () Bool)

(assert (= bs!11799 d!28214))

(declare-fun m!103396 () Bool)

(assert (=> bs!11799 m!103396))

(assert (=> b!114607 d!28214))

(declare-fun d!28216 () Bool)

(assert (=> d!28216 (= testedSuffix!285 lt!33472)))

(declare-fun lt!33489 () Unit!1351)

(declare-fun choose!1510 (List!1886 List!1886 List!1886 List!1886 List!1886) Unit!1351)

(assert (=> d!28216 (= lt!33489 (choose!1510 testedP!367 testedSuffix!285 testedP!367 lt!33472 totalInput!1363))))

(assert (=> d!28216 (isPrefix!74 testedP!367 totalInput!1363)))

(assert (=> d!28216 (= (lemmaSamePrefixThenSameSuffix!20 testedP!367 testedSuffix!285 testedP!367 lt!33472 totalInput!1363) lt!33489)))

(declare-fun bs!11800 () Bool)

(assert (= bs!11800 d!28216))

(declare-fun m!103398 () Bool)

(assert (=> bs!11800 m!103398))

(assert (=> bs!11800 m!103338))

(assert (=> b!114607 d!28216))

(declare-fun d!28218 () Bool)

(declare-fun lt!33492 () List!1886)

(assert (=> d!28218 (= (++!327 testedP!367 lt!33492) totalInput!1363)))

(declare-fun e!64826 () List!1886)

(assert (=> d!28218 (= lt!33492 e!64826)))

(declare-fun c!26506 () Bool)

(assert (=> d!28218 (= c!26506 ((_ is Cons!1880) testedP!367))))

(assert (=> d!28218 (>= (size!1680 totalInput!1363) (size!1680 testedP!367))))

(assert (=> d!28218 (= (getSuffix!21 totalInput!1363 testedP!367) lt!33492)))

(declare-fun b!114680 () Bool)

(declare-fun tail!209 (List!1886) List!1886)

(assert (=> b!114680 (= e!64826 (getSuffix!21 (tail!209 totalInput!1363) (t!22363 testedP!367)))))

(declare-fun b!114681 () Bool)

(assert (=> b!114681 (= e!64826 totalInput!1363)))

(assert (= (and d!28218 c!26506) b!114680))

(assert (= (and d!28218 (not c!26506)) b!114681))

(declare-fun m!103400 () Bool)

(assert (=> d!28218 m!103400))

(assert (=> d!28218 m!103364))

(assert (=> d!28218 m!103366))

(declare-fun m!103402 () Bool)

(assert (=> b!114680 m!103402))

(assert (=> b!114680 m!103402))

(declare-fun m!103404 () Bool)

(assert (=> b!114680 m!103404))

(assert (=> b!114607 d!28218))

(declare-fun d!28220 () Bool)

(declare-fun lt!33493 () Int)

(assert (=> d!28220 (>= lt!33493 0)))

(declare-fun e!64827 () Int)

(assert (=> d!28220 (= lt!33493 e!64827)))

(declare-fun c!26507 () Bool)

(assert (=> d!28220 (= c!26507 ((_ is Nil!1880) totalInput!1363))))

(assert (=> d!28220 (= (size!1680 totalInput!1363) lt!33493)))

(declare-fun b!114682 () Bool)

(assert (=> b!114682 (= e!64827 0)))

(declare-fun b!114683 () Bool)

(assert (=> b!114683 (= e!64827 (+ 1 (size!1680 (t!22363 totalInput!1363))))))

(assert (= (and d!28220 c!26507) b!114682))

(assert (= (and d!28220 (not c!26507)) b!114683))

(declare-fun m!103406 () Bool)

(assert (=> b!114683 m!103406))

(assert (=> b!114605 d!28220))

(declare-fun d!28222 () Bool)

(assert (=> d!28222 (<= (size!1680 testedP!367) (size!1680 totalInput!1363))))

(declare-fun lt!33496 () Unit!1351)

(declare-fun choose!1511 (List!1886 List!1886) Unit!1351)

(assert (=> d!28222 (= lt!33496 (choose!1511 testedP!367 totalInput!1363))))

(assert (=> d!28222 (isPrefix!74 testedP!367 totalInput!1363)))

(assert (=> d!28222 (= (lemmaIsPrefixThenSmallerEqSize!5 testedP!367 totalInput!1363) lt!33496)))

(declare-fun bs!11801 () Bool)

(assert (= bs!11801 d!28222))

(assert (=> bs!11801 m!103366))

(assert (=> bs!11801 m!103364))

(declare-fun m!103408 () Bool)

(assert (=> bs!11801 m!103408))

(assert (=> bs!11801 m!103338))

(assert (=> b!114606 d!28222))

(declare-fun d!28224 () Bool)

(assert (=> d!28224 (isPrefix!74 totalInput!1363 totalInput!1363)))

(declare-fun lt!33499 () Unit!1351)

(declare-fun choose!1512 (List!1886 List!1886) Unit!1351)

(assert (=> d!28224 (= lt!33499 (choose!1512 totalInput!1363 totalInput!1363))))

(assert (=> d!28224 (= (lemmaIsPrefixRefl!59 totalInput!1363 totalInput!1363) lt!33499)))

(declare-fun bs!11802 () Bool)

(assert (= bs!11802 d!28224))

(assert (=> bs!11802 m!103346))

(declare-fun m!103410 () Bool)

(assert (=> bs!11802 m!103410))

(assert (=> b!114627 d!28224))

(declare-fun d!28226 () Bool)

(declare-fun e!64836 () Bool)

(assert (=> d!28226 e!64836))

(declare-fun res!54622 () Bool)

(assert (=> d!28226 (=> res!54622 e!64836)))

(declare-fun lt!33502 () Bool)

(assert (=> d!28226 (= res!54622 (not lt!33502))))

(declare-fun e!64835 () Bool)

(assert (=> d!28226 (= lt!33502 e!64835)))

(declare-fun res!54623 () Bool)

(assert (=> d!28226 (=> res!54623 e!64835)))

(assert (=> d!28226 (= res!54623 ((_ is Nil!1880) totalInput!1363))))

(assert (=> d!28226 (= (isPrefix!74 totalInput!1363 totalInput!1363) lt!33502)))

(declare-fun b!114693 () Bool)

(declare-fun res!54624 () Bool)

(declare-fun e!64834 () Bool)

(assert (=> b!114693 (=> (not res!54624) (not e!64834))))

(declare-fun head!469 (List!1886) C!1892)

(assert (=> b!114693 (= res!54624 (= (head!469 totalInput!1363) (head!469 totalInput!1363)))))

(declare-fun b!114692 () Bool)

(assert (=> b!114692 (= e!64835 e!64834)))

(declare-fun res!54625 () Bool)

(assert (=> b!114692 (=> (not res!54625) (not e!64834))))

(assert (=> b!114692 (= res!54625 (not ((_ is Nil!1880) totalInput!1363)))))

(declare-fun b!114694 () Bool)

(assert (=> b!114694 (= e!64834 (isPrefix!74 (tail!209 totalInput!1363) (tail!209 totalInput!1363)))))

(declare-fun b!114695 () Bool)

(assert (=> b!114695 (= e!64836 (>= (size!1680 totalInput!1363) (size!1680 totalInput!1363)))))

(assert (= (and d!28226 (not res!54623)) b!114692))

(assert (= (and b!114692 res!54625) b!114693))

(assert (= (and b!114693 res!54624) b!114694))

(assert (= (and d!28226 (not res!54622)) b!114695))

(declare-fun m!103412 () Bool)

(assert (=> b!114693 m!103412))

(assert (=> b!114693 m!103412))

(assert (=> b!114694 m!103402))

(assert (=> b!114694 m!103402))

(assert (=> b!114694 m!103402))

(assert (=> b!114694 m!103402))

(declare-fun m!103414 () Bool)

(assert (=> b!114694 m!103414))

(assert (=> b!114695 m!103364))

(assert (=> b!114695 m!103364))

(assert (=> b!114627 d!28226))

(declare-fun d!28228 () Bool)

(assert (=> d!28228 (= totalInput!1363 testedP!367)))

(declare-fun lt!33505 () Unit!1351)

(declare-fun choose!1513 (List!1886 List!1886 List!1886) Unit!1351)

(assert (=> d!28228 (= lt!33505 (choose!1513 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!28228 (isPrefix!74 totalInput!1363 totalInput!1363)))

(assert (=> d!28228 (= (lemmaIsPrefixSameLengthThenSameList!5 totalInput!1363 testedP!367 totalInput!1363) lt!33505)))

(declare-fun bs!11803 () Bool)

(assert (= bs!11803 d!28228))

(declare-fun m!103416 () Bool)

(assert (=> bs!11803 m!103416))

(assert (=> bs!11803 m!103346))

(assert (=> b!114627 d!28228))

(declare-fun d!28230 () Bool)

(declare-fun e!64839 () Bool)

(assert (=> d!28230 e!64839))

(declare-fun res!54626 () Bool)

(assert (=> d!28230 (=> res!54626 e!64839)))

(declare-fun lt!33506 () Bool)

(assert (=> d!28230 (= res!54626 (not lt!33506))))

(declare-fun e!64838 () Bool)

(assert (=> d!28230 (= lt!33506 e!64838)))

(declare-fun res!54627 () Bool)

(assert (=> d!28230 (=> res!54627 e!64838)))

(assert (=> d!28230 (= res!54627 ((_ is Nil!1880) testedP!367))))

(assert (=> d!28230 (= (isPrefix!74 testedP!367 totalInput!1363) lt!33506)))

(declare-fun b!114697 () Bool)

(declare-fun res!54628 () Bool)

(declare-fun e!64837 () Bool)

(assert (=> b!114697 (=> (not res!54628) (not e!64837))))

(assert (=> b!114697 (= res!54628 (= (head!469 testedP!367) (head!469 totalInput!1363)))))

(declare-fun b!114696 () Bool)

(assert (=> b!114696 (= e!64838 e!64837)))

(declare-fun res!54629 () Bool)

(assert (=> b!114696 (=> (not res!54629) (not e!64837))))

(assert (=> b!114696 (= res!54629 (not ((_ is Nil!1880) totalInput!1363)))))

(declare-fun b!114698 () Bool)

(assert (=> b!114698 (= e!64837 (isPrefix!74 (tail!209 testedP!367) (tail!209 totalInput!1363)))))

(declare-fun b!114699 () Bool)

(assert (=> b!114699 (= e!64839 (>= (size!1680 totalInput!1363) (size!1680 testedP!367)))))

(assert (= (and d!28230 (not res!54627)) b!114696))

(assert (= (and b!114696 res!54629) b!114697))

(assert (= (and b!114697 res!54628) b!114698))

(assert (= (and d!28230 (not res!54626)) b!114699))

(declare-fun m!103418 () Bool)

(assert (=> b!114697 m!103418))

(assert (=> b!114697 m!103412))

(declare-fun m!103420 () Bool)

(assert (=> b!114698 m!103420))

(assert (=> b!114698 m!103402))

(assert (=> b!114698 m!103420))

(assert (=> b!114698 m!103402))

(declare-fun m!103422 () Bool)

(assert (=> b!114698 m!103422))

(assert (=> b!114699 m!103364))

(assert (=> b!114699 m!103366))

(assert (=> b!114611 d!28230))

(declare-fun d!28232 () Bool)

(declare-fun e!64842 () Bool)

(assert (=> d!28232 e!64842))

(declare-fun res!54630 () Bool)

(assert (=> d!28232 (=> res!54630 e!64842)))

(declare-fun lt!33507 () Bool)

(assert (=> d!28232 (= res!54630 (not lt!33507))))

(declare-fun e!64841 () Bool)

(assert (=> d!28232 (= lt!33507 e!64841)))

(declare-fun res!54631 () Bool)

(assert (=> d!28232 (=> res!54631 e!64841)))

(assert (=> d!28232 (= res!54631 ((_ is Nil!1880) testedP!367))))

(assert (=> d!28232 (= (isPrefix!74 testedP!367 lt!33470) lt!33507)))

(declare-fun b!114701 () Bool)

(declare-fun res!54632 () Bool)

(declare-fun e!64840 () Bool)

(assert (=> b!114701 (=> (not res!54632) (not e!64840))))

(assert (=> b!114701 (= res!54632 (= (head!469 testedP!367) (head!469 lt!33470)))))

(declare-fun b!114700 () Bool)

(assert (=> b!114700 (= e!64841 e!64840)))

(declare-fun res!54633 () Bool)

(assert (=> b!114700 (=> (not res!54633) (not e!64840))))

(assert (=> b!114700 (= res!54633 (not ((_ is Nil!1880) lt!33470)))))

(declare-fun b!114702 () Bool)

(assert (=> b!114702 (= e!64840 (isPrefix!74 (tail!209 testedP!367) (tail!209 lt!33470)))))

(declare-fun b!114703 () Bool)

(assert (=> b!114703 (= e!64842 (>= (size!1680 lt!33470) (size!1680 testedP!367)))))

(assert (= (and d!28232 (not res!54631)) b!114700))

(assert (= (and b!114700 res!54633) b!114701))

(assert (= (and b!114701 res!54632) b!114702))

(assert (= (and d!28232 (not res!54630)) b!114703))

(assert (=> b!114701 m!103418))

(declare-fun m!103424 () Bool)

(assert (=> b!114701 m!103424))

(assert (=> b!114702 m!103420))

(declare-fun m!103426 () Bool)

(assert (=> b!114702 m!103426))

(assert (=> b!114702 m!103420))

(assert (=> b!114702 m!103426))

(declare-fun m!103428 () Bool)

(assert (=> b!114702 m!103428))

(declare-fun m!103430 () Bool)

(assert (=> b!114703 m!103430))

(assert (=> b!114703 m!103366))

(assert (=> b!114611 d!28232))

(declare-fun d!28234 () Bool)

(assert (=> d!28234 (isPrefix!74 testedP!367 (++!327 testedP!367 testedSuffix!285))))

(declare-fun lt!33510 () Unit!1351)

(declare-fun choose!1514 (List!1886 List!1886) Unit!1351)

(assert (=> d!28234 (= lt!33510 (choose!1514 testedP!367 testedSuffix!285))))

(assert (=> d!28234 (= (lemmaConcatTwoListThenFirstIsPrefix!22 testedP!367 testedSuffix!285) lt!33510)))

(declare-fun bs!11804 () Bool)

(assert (= bs!11804 d!28234))

(assert (=> bs!11804 m!103368))

(assert (=> bs!11804 m!103368))

(declare-fun m!103432 () Bool)

(assert (=> bs!11804 m!103432))

(declare-fun m!103434 () Bool)

(assert (=> bs!11804 m!103434))

(assert (=> b!114611 d!28234))

(declare-fun b!114708 () Bool)

(declare-fun e!64845 () Bool)

(declare-fun tp!62582 () Bool)

(assert (=> b!114708 (= e!64845 (and tp_is_empty!1025 tp!62582))))

(assert (=> b!114624 (= tp!62567 e!64845)))

(assert (= (and b!114624 ((_ is Cons!1880) (t!22363 totalInput!1363))) b!114708))

(declare-fun b!114713 () Bool)

(declare-fun tp!62590 () Bool)

(declare-fun tp!62589 () Bool)

(declare-fun tp!62591 () Bool)

(declare-fun e!64848 () Bool)

(assert (=> b!114713 (= e!64848 (and tp!62589 tp_is_empty!1025 tp!62590 tp!62591))))

(assert (=> b!114608 (= tp!62579 e!64848)))

(assert (= (and b!114608 ((_ is Cons!1879) mapDefault!1369)) b!114713))

(declare-fun tp!62592 () Bool)

(declare-fun tp!62593 () Bool)

(declare-fun b!114714 () Bool)

(declare-fun e!64849 () Bool)

(declare-fun tp!62594 () Bool)

(assert (=> b!114714 (= e!64849 (and tp!62592 tp_is_empty!1025 tp!62593 tp!62594))))

(assert (=> b!114614 (= tp!62573 e!64849)))

(assert (= (and b!114614 ((_ is Cons!1879) (zeroValue!607 (v!13233 (underlying!901 (v!13234 (underlying!902 (cache!799 cache!470)))))))) b!114714))

(declare-fun b!114715 () Bool)

(declare-fun tp!62595 () Bool)

(declare-fun tp!62596 () Bool)

(declare-fun e!64850 () Bool)

(declare-fun tp!62597 () Bool)

(assert (=> b!114715 (= e!64850 (and tp!62595 tp_is_empty!1025 tp!62596 tp!62597))))

(assert (=> b!114614 (= tp!62572 e!64850)))

(assert (= (and b!114614 ((_ is Cons!1879) (minValue!607 (v!13233 (underlying!901 (v!13234 (underlying!902 (cache!799 cache!470)))))))) b!114715))

(declare-fun e!64853 () Bool)

(assert (=> b!114617 (= tp!62576 e!64853)))

(declare-fun b!114727 () Bool)

(declare-fun tp!62612 () Bool)

(declare-fun tp!62611 () Bool)

(assert (=> b!114727 (= e!64853 (and tp!62612 tp!62611))))

(declare-fun b!114728 () Bool)

(declare-fun tp!62608 () Bool)

(assert (=> b!114728 (= e!64853 tp!62608)))

(declare-fun b!114729 () Bool)

(declare-fun tp!62609 () Bool)

(declare-fun tp!62610 () Bool)

(assert (=> b!114729 (= e!64853 (and tp!62609 tp!62610))))

(declare-fun b!114726 () Bool)

(assert (=> b!114726 (= e!64853 tp_is_empty!1025)))

(assert (= (and b!114617 ((_ is ElementMatch!485) (regOne!1483 r!15532))) b!114726))

(assert (= (and b!114617 ((_ is Concat!869) (regOne!1483 r!15532))) b!114727))

(assert (= (and b!114617 ((_ is Star!485) (regOne!1483 r!15532))) b!114728))

(assert (= (and b!114617 ((_ is Union!485) (regOne!1483 r!15532))) b!114729))

(declare-fun e!64854 () Bool)

(assert (=> b!114617 (= tp!62574 e!64854)))

(declare-fun b!114731 () Bool)

(declare-fun tp!62617 () Bool)

(declare-fun tp!62616 () Bool)

(assert (=> b!114731 (= e!64854 (and tp!62617 tp!62616))))

(declare-fun b!114732 () Bool)

(declare-fun tp!62613 () Bool)

(assert (=> b!114732 (= e!64854 tp!62613)))

(declare-fun b!114733 () Bool)

(declare-fun tp!62614 () Bool)

(declare-fun tp!62615 () Bool)

(assert (=> b!114733 (= e!64854 (and tp!62614 tp!62615))))

(declare-fun b!114730 () Bool)

(assert (=> b!114730 (= e!64854 tp_is_empty!1025)))

(assert (= (and b!114617 ((_ is ElementMatch!485) (regTwo!1483 r!15532))) b!114730))

(assert (= (and b!114617 ((_ is Concat!869) (regTwo!1483 r!15532))) b!114731))

(assert (= (and b!114617 ((_ is Star!485) (regTwo!1483 r!15532))) b!114732))

(assert (= (and b!114617 ((_ is Union!485) (regTwo!1483 r!15532))) b!114733))

(declare-fun e!64855 () Bool)

(assert (=> b!114618 (= tp!62575 e!64855)))

(declare-fun b!114735 () Bool)

(declare-fun tp!62622 () Bool)

(declare-fun tp!62621 () Bool)

(assert (=> b!114735 (= e!64855 (and tp!62622 tp!62621))))

(declare-fun b!114736 () Bool)

(declare-fun tp!62618 () Bool)

(assert (=> b!114736 (= e!64855 tp!62618)))

(declare-fun b!114737 () Bool)

(declare-fun tp!62619 () Bool)

(declare-fun tp!62620 () Bool)

(assert (=> b!114737 (= e!64855 (and tp!62619 tp!62620))))

(declare-fun b!114734 () Bool)

(assert (=> b!114734 (= e!64855 tp_is_empty!1025)))

(assert (= (and b!114618 ((_ is ElementMatch!485) (reg!814 r!15532))) b!114734))

(assert (= (and b!114618 ((_ is Concat!869) (reg!814 r!15532))) b!114735))

(assert (= (and b!114618 ((_ is Star!485) (reg!814 r!15532))) b!114736))

(assert (= (and b!114618 ((_ is Union!485) (reg!814 r!15532))) b!114737))

(declare-fun e!64856 () Bool)

(assert (=> b!114623 (= tp!62577 e!64856)))

(declare-fun b!114739 () Bool)

(declare-fun tp!62627 () Bool)

(declare-fun tp!62626 () Bool)

(assert (=> b!114739 (= e!64856 (and tp!62627 tp!62626))))

(declare-fun b!114740 () Bool)

(declare-fun tp!62623 () Bool)

(assert (=> b!114740 (= e!64856 tp!62623)))

(declare-fun b!114741 () Bool)

(declare-fun tp!62624 () Bool)

(declare-fun tp!62625 () Bool)

(assert (=> b!114741 (= e!64856 (and tp!62624 tp!62625))))

(declare-fun b!114738 () Bool)

(assert (=> b!114738 (= e!64856 tp_is_empty!1025)))

(assert (= (and b!114623 ((_ is ElementMatch!485) (regOne!1482 r!15532))) b!114738))

(assert (= (and b!114623 ((_ is Concat!869) (regOne!1482 r!15532))) b!114739))

(assert (= (and b!114623 ((_ is Star!485) (regOne!1482 r!15532))) b!114740))

(assert (= (and b!114623 ((_ is Union!485) (regOne!1482 r!15532))) b!114741))

(declare-fun e!64857 () Bool)

(assert (=> b!114623 (= tp!62568 e!64857)))

(declare-fun b!114743 () Bool)

(declare-fun tp!62632 () Bool)

(declare-fun tp!62631 () Bool)

(assert (=> b!114743 (= e!64857 (and tp!62632 tp!62631))))

(declare-fun b!114744 () Bool)

(declare-fun tp!62628 () Bool)

(assert (=> b!114744 (= e!64857 tp!62628)))

(declare-fun b!114745 () Bool)

(declare-fun tp!62629 () Bool)

(declare-fun tp!62630 () Bool)

(assert (=> b!114745 (= e!64857 (and tp!62629 tp!62630))))

(declare-fun b!114742 () Bool)

(assert (=> b!114742 (= e!64857 tp_is_empty!1025)))

(assert (= (and b!114623 ((_ is ElementMatch!485) (regTwo!1482 r!15532))) b!114742))

(assert (= (and b!114623 ((_ is Concat!869) (regTwo!1482 r!15532))) b!114743))

(assert (= (and b!114623 ((_ is Star!485) (regTwo!1482 r!15532))) b!114744))

(assert (= (and b!114623 ((_ is Union!485) (regTwo!1482 r!15532))) b!114745))

(declare-fun e!64863 () Bool)

(declare-fun b!114752 () Bool)

(declare-fun tp!62648 () Bool)

(declare-fun tp!62652 () Bool)

(declare-fun tp!62649 () Bool)

(assert (=> b!114752 (= e!64863 (and tp!62649 tp_is_empty!1025 tp!62652 tp!62648))))

(declare-fun tp!62650 () Bool)

(declare-fun e!64862 () Bool)

(declare-fun b!114753 () Bool)

(declare-fun tp!62653 () Bool)

(declare-fun tp!62651 () Bool)

(assert (=> b!114753 (= e!64862 (and tp!62653 tp_is_empty!1025 tp!62651 tp!62650))))

(declare-fun mapNonEmpty!1372 () Bool)

(declare-fun mapRes!1372 () Bool)

(declare-fun tp!62647 () Bool)

(assert (=> mapNonEmpty!1372 (= mapRes!1372 (and tp!62647 e!64863))))

(declare-fun mapRest!1372 () (Array (_ BitVec 32) List!1885))

(declare-fun mapValue!1372 () List!1885)

(declare-fun mapKey!1372 () (_ BitVec 32))

(assert (=> mapNonEmpty!1372 (= mapRest!1369 (store mapRest!1372 mapKey!1372 mapValue!1372))))

(declare-fun condMapEmpty!1372 () Bool)

(declare-fun mapDefault!1372 () List!1885)

(assert (=> mapNonEmpty!1369 (= condMapEmpty!1372 (= mapRest!1369 ((as const (Array (_ BitVec 32) List!1885)) mapDefault!1372)))))

(assert (=> mapNonEmpty!1369 (= tp!62571 (and e!64862 mapRes!1372))))

(declare-fun mapIsEmpty!1372 () Bool)

(assert (=> mapIsEmpty!1372 mapRes!1372))

(assert (= (and mapNonEmpty!1369 condMapEmpty!1372) mapIsEmpty!1372))

(assert (= (and mapNonEmpty!1369 (not condMapEmpty!1372)) mapNonEmpty!1372))

(assert (= (and mapNonEmpty!1372 ((_ is Cons!1879) mapValue!1372)) b!114752))

(assert (= (and mapNonEmpty!1369 ((_ is Cons!1879) mapDefault!1372)) b!114753))

(declare-fun m!103436 () Bool)

(assert (=> mapNonEmpty!1372 m!103436))

(declare-fun tp!62654 () Bool)

(declare-fun b!114754 () Bool)

(declare-fun tp!62656 () Bool)

(declare-fun tp!62655 () Bool)

(declare-fun e!64864 () Bool)

(assert (=> b!114754 (= e!64864 (and tp!62654 tp_is_empty!1025 tp!62655 tp!62656))))

(assert (=> mapNonEmpty!1369 (= tp!62566 e!64864)))

(assert (= (and mapNonEmpty!1369 ((_ is Cons!1879) mapValue!1369)) b!114754))

(declare-fun b!114755 () Bool)

(declare-fun e!64865 () Bool)

(declare-fun tp!62657 () Bool)

(assert (=> b!114755 (= e!64865 (and tp_is_empty!1025 tp!62657))))

(assert (=> b!114609 (= tp!62569 e!64865)))

(assert (= (and b!114609 ((_ is Cons!1880) (t!22363 testedP!367))) b!114755))

(declare-fun b!114756 () Bool)

(declare-fun e!64866 () Bool)

(declare-fun tp!62658 () Bool)

(assert (=> b!114756 (= e!64866 (and tp_is_empty!1025 tp!62658))))

(assert (=> b!114610 (= tp!62565 e!64866)))

(assert (= (and b!114610 ((_ is Cons!1880) (t!22363 testedSuffix!285))) b!114756))

(check-sat (not b!114654) (not b!114698) (not b!114755) (not b!114667) (not b!114731) (not b!114708) (not bm!4872) (not b!114729) (not b!114702) (not b!114728) (not b!114680) b_and!5765 (not d!28224) (not b!114736) (not b_next!3633) (not b!114753) (not b!114695) (not b!114732) (not b!114714) (not b!114727) (not b!114735) (not b!114694) (not d!28218) (not b!114733) (not b_next!3635) (not d!28234) (not b!114745) (not d!28222) (not b!114713) (not d!28214) (not b!114739) (not b!114756) (not b!114743) (not b!114754) (not b!114744) (not d!28212) (not b!114657) (not b!114701) (not b!114697) (not d!28204) b_and!5763 (not b!114668) (not b!114715) (not d!28228) (not b!114741) tp_is_empty!1025 (not b!114683) (not mapNonEmpty!1372) (not b!114693) (not bm!4871) (not b!114703) (not d!28216) (not b!114675) (not b!114752) (not b!114699) (not b!114740) (not b!114737))
(check-sat b_and!5765 b_and!5763 (not b_next!3635) (not b_next!3633))
