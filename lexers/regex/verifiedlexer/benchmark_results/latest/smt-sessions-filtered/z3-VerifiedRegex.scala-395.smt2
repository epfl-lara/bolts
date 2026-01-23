; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11888 () Bool)

(assert start!11888)

(declare-fun b!116746 () Bool)

(declare-fun b_free!3713 () Bool)

(declare-fun b_next!3713 () Bool)

(assert (=> b!116746 (= b_free!3713 (not b_next!3713))))

(declare-fun tp!63794 () Bool)

(declare-fun b_and!5843 () Bool)

(assert (=> b!116746 (= tp!63794 b_and!5843)))

(declare-fun b!116744 () Bool)

(declare-fun b_free!3715 () Bool)

(declare-fun b_next!3715 () Bool)

(assert (=> b!116744 (= b_free!3715 (not b_next!3715))))

(declare-fun tp!63786 () Bool)

(declare-fun b_and!5845 () Bool)

(assert (=> b!116744 (= tp!63786 b_and!5845)))

(declare-fun b!116728 () Bool)

(declare-fun e!66364 () Bool)

(declare-fun e!66349 () Bool)

(assert (=> b!116728 (= e!66364 e!66349)))

(declare-fun b!116729 () Bool)

(declare-fun e!66354 () Bool)

(declare-fun e!66357 () Bool)

(assert (=> b!116729 (= e!66354 e!66357)))

(declare-fun res!55362 () Bool)

(assert (=> b!116729 (=> res!55362 e!66357)))

(declare-datatypes ((C!1932 0))(
  ( (C!1933 (val!692 Int)) )
))
(declare-datatypes ((Regex!505 0))(
  ( (ElementMatch!505 (c!26658 C!1932)) (Concat!889 (regOne!1522 Regex!505) (regTwo!1522 Regex!505)) (EmptyExpr!505) (Star!505 (reg!834 Regex!505)) (EmptyLang!505) (Union!505 (regOne!1523 Regex!505) (regTwo!1523 Regex!505)) )
))
(declare-fun r!15532 () Regex!505)

(declare-fun nullable!69 (Regex!505) Bool)

(assert (=> b!116729 (= res!55362 (nullable!69 r!15532))))

(declare-datatypes ((List!1924 0))(
  ( (Nil!1918) (Cons!1918 (h!7315 C!1932) (t!22401 List!1924)) )
))
(declare-fun lt!34535 () List!1924)

(declare-fun lt!34539 () List!1924)

(declare-fun totalInput!1363 () List!1924)

(declare-fun ++!345 (List!1924 List!1924) List!1924)

(assert (=> b!116729 (= (++!345 lt!34535 lt!34539) totalInput!1363)))

(declare-fun lt!34533 () C!1932)

(declare-fun testedP!367 () List!1924)

(declare-datatypes ((Unit!1418 0))(
  ( (Unit!1419) )
))
(declare-fun lt!34538 () Unit!1418)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!10 (List!1924 C!1932 List!1924 List!1924) Unit!1418)

(assert (=> b!116729 (= lt!34538 (lemmaMoveElementToOtherListKeepsConcatEq!10 testedP!367 lt!34533 lt!34539 totalInput!1363))))

(declare-fun testedSuffix!285 () List!1924)

(declare-fun tail!220 (List!1924) List!1924)

(assert (=> b!116729 (= lt!34539 (tail!220 testedSuffix!285))))

(declare-fun lt!34527 () List!1924)

(declare-fun isPrefix!92 (List!1924 List!1924) Bool)

(declare-fun head!484 (List!1924) C!1932)

(assert (=> b!116729 (isPrefix!92 (++!345 testedP!367 (Cons!1918 (head!484 lt!34527) Nil!1918)) totalInput!1363)))

(declare-fun lt!34532 () Unit!1418)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!14 (List!1924 List!1924) Unit!1418)

(assert (=> b!116729 (= lt!34532 (lemmaAddHeadSuffixToPrefixStillPrefix!14 testedP!367 totalInput!1363))))

(assert (=> b!116729 (= lt!34535 (++!345 testedP!367 (Cons!1918 lt!34533 Nil!1918)))))

(assert (=> b!116729 (= lt!34533 (head!484 testedSuffix!285))))

(declare-fun b!116730 () Bool)

(declare-fun res!55369 () Bool)

(declare-fun e!66350 () Bool)

(assert (=> b!116730 (=> res!55369 e!66350)))

(declare-fun testedPSize!285 () Int)

(declare-fun totalInputSize!643 () Int)

(assert (=> b!116730 (= res!55369 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!116731 () Bool)

(declare-fun e!66362 () Bool)

(declare-fun tp_is_empty!1065 () Bool)

(assert (=> b!116731 (= e!66362 tp_is_empty!1065)))

(declare-fun mapNonEmpty!1441 () Bool)

(declare-fun mapRes!1441 () Bool)

(declare-fun tp!63781 () Bool)

(declare-fun tp!63789 () Bool)

(assert (=> mapNonEmpty!1441 (= mapRes!1441 (and tp!63781 tp!63789))))

(declare-datatypes ((Hashable!367 0))(
  ( (HashableExt!366 (__x!2038 Int)) )
))
(declare-datatypes ((tuple2!2142 0))(
  ( (tuple2!2143 (_1!1281 Regex!505) (_2!1281 C!1932)) )
))
(declare-datatypes ((tuple2!2144 0))(
  ( (tuple2!2145 (_1!1282 tuple2!2142) (_2!1282 Regex!505)) )
))
(declare-datatypes ((List!1925 0))(
  ( (Nil!1919) (Cons!1919 (h!7316 tuple2!2144) (t!22402 List!1925)) )
))
(declare-datatypes ((array!1341 0))(
  ( (array!1342 (arr!626 (Array (_ BitVec 32) (_ BitVec 64))) (size!1736 (_ BitVec 32))) )
))
(declare-datatypes ((array!1343 0))(
  ( (array!1344 (arr!627 (Array (_ BitVec 32) List!1925)) (size!1737 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!742 0))(
  ( (LongMapFixedSize!743 (defaultEntry!710 Int) (mask!1291 (_ BitVec 32)) (extraKeys!617 (_ BitVec 32)) (zeroValue!627 List!1925) (minValue!627 List!1925) (_size!875 (_ BitVec 32)) (_keys!662 array!1341) (_values!649 array!1343) (_vacant!432 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1473 0))(
  ( (Cell!1474 (v!13273 LongMapFixedSize!742)) )
))
(declare-datatypes ((MutLongMap!371 0))(
  ( (LongMap!371 (underlying!941 Cell!1473)) (MutLongMapExt!370 (__x!2039 Int)) )
))
(declare-datatypes ((Cell!1475 0))(
  ( (Cell!1476 (v!13274 MutLongMap!371)) )
))
(declare-datatypes ((MutableMap!367 0))(
  ( (MutableMapExt!366 (__x!2040 Int)) (HashMap!367 (underlying!942 Cell!1475) (hashF!2243 Hashable!367) (_size!876 (_ BitVec 32)) (defaultValue!516 Int)) )
))
(declare-datatypes ((Cache!170 0))(
  ( (Cache!171 (cache!819 MutableMap!367)) )
))
(declare-fun cache!470 () Cache!170)

(declare-fun mapKey!1441 () (_ BitVec 32))

(declare-fun mapRest!1441 () (Array (_ BitVec 32) List!1925))

(declare-fun mapValue!1441 () List!1925)

(assert (=> mapNonEmpty!1441 (= (arr!627 (_values!649 (v!13273 (underlying!941 (v!13274 (underlying!942 (cache!819 cache!470))))))) (store mapRest!1441 mapKey!1441 mapValue!1441))))

(declare-fun b!116732 () Bool)

(declare-fun res!55360 () Bool)

(declare-fun e!66345 () Bool)

(assert (=> b!116732 (=> (not res!55360) (not e!66345))))

(declare-fun valid!336 (Cache!170) Bool)

(assert (=> b!116732 (= res!55360 (valid!336 cache!470))))

(declare-fun b!116733 () Bool)

(declare-fun e!66356 () Bool)

(assert (=> b!116733 (= e!66345 e!66356)))

(declare-fun res!55361 () Bool)

(assert (=> b!116733 (=> (not res!55361) (not e!66356))))

(declare-fun lt!34534 () List!1924)

(assert (=> b!116733 (= res!55361 (= lt!34534 totalInput!1363))))

(assert (=> b!116733 (= lt!34534 (++!345 testedP!367 testedSuffix!285))))

(declare-fun b!116734 () Bool)

(declare-fun e!66355 () Bool)

(assert (=> b!116734 (= e!66355 e!66350)))

(declare-fun res!55366 () Bool)

(assert (=> b!116734 (=> res!55366 e!66350)))

(declare-fun lostCause!46 (Regex!505) Bool)

(assert (=> b!116734 (= res!55366 (lostCause!46 r!15532))))

(assert (=> b!116734 (and (= testedSuffix!285 lt!34527) (= lt!34527 testedSuffix!285))))

(declare-fun lt!34536 () Unit!1418)

(declare-fun lemmaSamePrefixThenSameSuffix!34 (List!1924 List!1924 List!1924 List!1924 List!1924) Unit!1418)

(assert (=> b!116734 (= lt!34536 (lemmaSamePrefixThenSameSuffix!34 testedP!367 testedSuffix!285 testedP!367 lt!34527 totalInput!1363))))

(declare-fun getSuffix!35 (List!1924 List!1924) List!1924)

(assert (=> b!116734 (= lt!34527 (getSuffix!35 totalInput!1363 testedP!367))))

(declare-fun b!116735 () Bool)

(declare-fun e!66358 () Bool)

(declare-fun tp!63787 () Bool)

(assert (=> b!116735 (= e!66358 (and tp_is_empty!1065 tp!63787))))

(declare-fun b!116736 () Bool)

(assert (=> b!116736 (= e!66350 e!66354)))

(declare-fun res!55368 () Bool)

(assert (=> b!116736 (=> res!55368 e!66354)))

(declare-fun lt!34541 () Int)

(declare-fun lt!34540 () Int)

(assert (=> b!116736 (= res!55368 (>= lt!34541 lt!34540))))

(declare-fun lt!34531 () Unit!1418)

(declare-fun e!66346 () Unit!1418)

(assert (=> b!116736 (= lt!34531 e!66346)))

(declare-fun c!26657 () Bool)

(assert (=> b!116736 (= c!26657 (= lt!34541 lt!34540))))

(assert (=> b!116736 (<= lt!34541 lt!34540)))

(declare-fun lt!34530 () Unit!1418)

(declare-fun lemmaIsPrefixThenSmallerEqSize!20 (List!1924 List!1924) Unit!1418)

(assert (=> b!116736 (= lt!34530 (lemmaIsPrefixThenSmallerEqSize!20 testedP!367 totalInput!1363))))

(declare-fun b!116737 () Bool)

(declare-fun e!66347 () Bool)

(declare-fun tp!63790 () Bool)

(assert (=> b!116737 (= e!66347 (and tp_is_empty!1065 tp!63790))))

(declare-fun b!116738 () Bool)

(assert (=> b!116738 (= e!66357 (not (= testedSuffix!285 Nil!1918)))))

(declare-fun b!116739 () Bool)

(declare-fun Unit!1420 () Unit!1418)

(assert (=> b!116739 (= e!66346 Unit!1420)))

(declare-fun res!55364 () Bool)

(assert (=> start!11888 (=> (not res!55364) (not e!66345))))

(declare-fun validRegex!112 (Regex!505) Bool)

(assert (=> start!11888 (= res!55364 (validRegex!112 r!15532))))

(assert (=> start!11888 e!66345))

(assert (=> start!11888 true))

(assert (=> start!11888 e!66362))

(assert (=> start!11888 e!66347))

(declare-fun e!66363 () Bool)

(assert (=> start!11888 e!66363))

(assert (=> start!11888 e!66358))

(declare-fun inv!2434 (Cache!170) Bool)

(assert (=> start!11888 (and (inv!2434 cache!470) e!66364)))

(declare-fun b!116740 () Bool)

(declare-fun e!66344 () Bool)

(assert (=> b!116740 (= e!66356 e!66344)))

(declare-fun res!55363 () Bool)

(assert (=> b!116740 (=> (not res!55363) (not e!66344))))

(assert (=> b!116740 (= res!55363 (= testedPSize!285 lt!34541))))

(declare-fun size!1738 (List!1924) Int)

(assert (=> b!116740 (= lt!34541 (size!1738 testedP!367))))

(declare-fun b!116741 () Bool)

(declare-fun e!66360 () Bool)

(declare-fun tp!63795 () Bool)

(assert (=> b!116741 (= e!66360 (and tp!63795 mapRes!1441))))

(declare-fun condMapEmpty!1441 () Bool)

(declare-fun mapDefault!1441 () List!1925)

(assert (=> b!116741 (= condMapEmpty!1441 (= (arr!627 (_values!649 (v!13273 (underlying!941 (v!13274 (underlying!942 (cache!819 cache!470))))))) ((as const (Array (_ BitVec 32) List!1925)) mapDefault!1441)))))

(declare-fun b!116742 () Bool)

(declare-fun e!66352 () Bool)

(declare-fun e!66348 () Bool)

(declare-fun lt!34529 () MutLongMap!371)

(get-info :version)

(assert (=> b!116742 (= e!66352 (and e!66348 ((_ is LongMap!371) lt!34529)))))

(assert (=> b!116742 (= lt!34529 (v!13274 (underlying!942 (cache!819 cache!470))))))

(declare-fun b!116743 () Bool)

(declare-fun tp!63792 () Bool)

(declare-fun tp!63784 () Bool)

(assert (=> b!116743 (= e!66362 (and tp!63792 tp!63784))))

(declare-fun mapIsEmpty!1441 () Bool)

(assert (=> mapIsEmpty!1441 mapRes!1441))

(assert (=> b!116744 (= e!66349 (and e!66352 tp!63786))))

(declare-fun b!116745 () Bool)

(declare-fun tp!63791 () Bool)

(declare-fun tp!63783 () Bool)

(assert (=> b!116745 (= e!66362 (and tp!63791 tp!63783))))

(declare-fun tp!63788 () Bool)

(declare-fun e!66359 () Bool)

(declare-fun tp!63785 () Bool)

(declare-fun array_inv!447 (array!1341) Bool)

(declare-fun array_inv!448 (array!1343) Bool)

(assert (=> b!116746 (= e!66359 (and tp!63794 tp!63785 tp!63788 (array_inv!447 (_keys!662 (v!13273 (underlying!941 (v!13274 (underlying!942 (cache!819 cache!470))))))) (array_inv!448 (_values!649 (v!13273 (underlying!941 (v!13274 (underlying!942 (cache!819 cache!470))))))) e!66360))))

(declare-fun b!116747 () Bool)

(declare-fun Unit!1421 () Unit!1418)

(assert (=> b!116747 (= e!66346 Unit!1421)))

(declare-fun lt!34537 () Unit!1418)

(declare-fun lemmaIsPrefixRefl!74 (List!1924 List!1924) Unit!1418)

(assert (=> b!116747 (= lt!34537 (lemmaIsPrefixRefl!74 totalInput!1363 totalInput!1363))))

(assert (=> b!116747 (isPrefix!92 totalInput!1363 totalInput!1363)))

(declare-fun lt!34526 () Unit!1418)

(declare-fun lemmaIsPrefixSameLengthThenSameList!20 (List!1924 List!1924 List!1924) Unit!1418)

(assert (=> b!116747 (= lt!34526 (lemmaIsPrefixSameLengthThenSameList!20 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!116747 false))

(declare-fun b!116748 () Bool)

(declare-fun tp!63782 () Bool)

(assert (=> b!116748 (= e!66362 tp!63782)))

(declare-fun b!116749 () Bool)

(declare-fun e!66351 () Bool)

(assert (=> b!116749 (= e!66348 e!66351)))

(declare-fun b!116750 () Bool)

(declare-fun e!66361 () Bool)

(assert (=> b!116750 (= e!66361 (not e!66355))))

(declare-fun res!55365 () Bool)

(assert (=> b!116750 (=> res!55365 e!66355)))

(assert (=> b!116750 (= res!55365 (not (isPrefix!92 testedP!367 totalInput!1363)))))

(assert (=> b!116750 (isPrefix!92 testedP!367 lt!34534)))

(declare-fun lt!34528 () Unit!1418)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!38 (List!1924 List!1924) Unit!1418)

(assert (=> b!116750 (= lt!34528 (lemmaConcatTwoListThenFirstIsPrefix!38 testedP!367 testedSuffix!285))))

(declare-fun b!116751 () Bool)

(declare-fun tp!63793 () Bool)

(assert (=> b!116751 (= e!66363 (and tp_is_empty!1065 tp!63793))))

(declare-fun b!116752 () Bool)

(assert (=> b!116752 (= e!66351 e!66359)))

(declare-fun b!116753 () Bool)

(assert (=> b!116753 (= e!66344 e!66361)))

(declare-fun res!55367 () Bool)

(assert (=> b!116753 (=> (not res!55367) (not e!66361))))

(assert (=> b!116753 (= res!55367 (= totalInputSize!643 lt!34540))))

(assert (=> b!116753 (= lt!34540 (size!1738 totalInput!1363))))

(assert (= (and start!11888 res!55364) b!116732))

(assert (= (and b!116732 res!55360) b!116733))

(assert (= (and b!116733 res!55361) b!116740))

(assert (= (and b!116740 res!55363) b!116753))

(assert (= (and b!116753 res!55367) b!116750))

(assert (= (and b!116750 (not res!55365)) b!116734))

(assert (= (and b!116734 (not res!55366)) b!116730))

(assert (= (and b!116730 (not res!55369)) b!116736))

(assert (= (and b!116736 c!26657) b!116747))

(assert (= (and b!116736 (not c!26657)) b!116739))

(assert (= (and b!116736 (not res!55368)) b!116729))

(assert (= (and b!116729 (not res!55362)) b!116738))

(assert (= (and start!11888 ((_ is ElementMatch!505) r!15532)) b!116731))

(assert (= (and start!11888 ((_ is Concat!889) r!15532)) b!116745))

(assert (= (and start!11888 ((_ is Star!505) r!15532)) b!116748))

(assert (= (and start!11888 ((_ is Union!505) r!15532)) b!116743))

(assert (= (and start!11888 ((_ is Cons!1918) totalInput!1363)) b!116737))

(assert (= (and start!11888 ((_ is Cons!1918) testedSuffix!285)) b!116751))

(assert (= (and start!11888 ((_ is Cons!1918) testedP!367)) b!116735))

(assert (= (and b!116741 condMapEmpty!1441) mapIsEmpty!1441))

(assert (= (and b!116741 (not condMapEmpty!1441)) mapNonEmpty!1441))

(assert (= b!116746 b!116741))

(assert (= b!116752 b!116746))

(assert (= b!116749 b!116752))

(assert (= (and b!116742 ((_ is LongMap!371) (v!13274 (underlying!942 (cache!819 cache!470))))) b!116749))

(assert (= b!116744 b!116742))

(assert (= (and b!116728 ((_ is HashMap!367) (cache!819 cache!470))) b!116744))

(assert (= start!11888 b!116728))

(declare-fun m!104844 () Bool)

(assert (=> b!116732 m!104844))

(declare-fun m!104846 () Bool)

(assert (=> b!116753 m!104846))

(declare-fun m!104848 () Bool)

(assert (=> b!116747 m!104848))

(declare-fun m!104850 () Bool)

(assert (=> b!116747 m!104850))

(declare-fun m!104852 () Bool)

(assert (=> b!116747 m!104852))

(declare-fun m!104854 () Bool)

(assert (=> b!116733 m!104854))

(declare-fun m!104856 () Bool)

(assert (=> b!116740 m!104856))

(declare-fun m!104858 () Bool)

(assert (=> start!11888 m!104858))

(declare-fun m!104860 () Bool)

(assert (=> start!11888 m!104860))

(declare-fun m!104862 () Bool)

(assert (=> b!116734 m!104862))

(declare-fun m!104864 () Bool)

(assert (=> b!116734 m!104864))

(declare-fun m!104866 () Bool)

(assert (=> b!116734 m!104866))

(declare-fun m!104868 () Bool)

(assert (=> b!116736 m!104868))

(declare-fun m!104870 () Bool)

(assert (=> mapNonEmpty!1441 m!104870))

(declare-fun m!104872 () Bool)

(assert (=> b!116750 m!104872))

(declare-fun m!104874 () Bool)

(assert (=> b!116750 m!104874))

(declare-fun m!104876 () Bool)

(assert (=> b!116750 m!104876))

(declare-fun m!104878 () Bool)

(assert (=> b!116746 m!104878))

(declare-fun m!104880 () Bool)

(assert (=> b!116746 m!104880))

(declare-fun m!104882 () Bool)

(assert (=> b!116729 m!104882))

(declare-fun m!104884 () Bool)

(assert (=> b!116729 m!104884))

(declare-fun m!104886 () Bool)

(assert (=> b!116729 m!104886))

(declare-fun m!104888 () Bool)

(assert (=> b!116729 m!104888))

(declare-fun m!104890 () Bool)

(assert (=> b!116729 m!104890))

(declare-fun m!104892 () Bool)

(assert (=> b!116729 m!104892))

(assert (=> b!116729 m!104890))

(declare-fun m!104894 () Bool)

(assert (=> b!116729 m!104894))

(declare-fun m!104896 () Bool)

(assert (=> b!116729 m!104896))

(declare-fun m!104898 () Bool)

(assert (=> b!116729 m!104898))

(declare-fun m!104900 () Bool)

(assert (=> b!116729 m!104900))

(check-sat tp_is_empty!1065 (not mapNonEmpty!1441) (not b!116734) (not b!116751) (not b!116745) (not b!116732) (not b!116747) (not b!116750) (not b!116740) (not b!116748) (not b!116737) (not b!116735) (not b!116746) (not b!116753) b_and!5843 (not b_next!3713) (not b!116729) (not b!116733) (not start!11888) (not b_next!3715) (not b!116743) (not b!116736) b_and!5845 (not b!116741))
(check-sat b_and!5845 b_and!5843 (not b_next!3715) (not b_next!3713))
(get-model)

(declare-fun d!28408 () Bool)

(assert (=> d!28408 (= (array_inv!447 (_keys!662 (v!13273 (underlying!941 (v!13274 (underlying!942 (cache!819 cache!470))))))) (bvsge (size!1736 (_keys!662 (v!13273 (underlying!941 (v!13274 (underlying!942 (cache!819 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!116746 d!28408))

(declare-fun d!28410 () Bool)

(assert (=> d!28410 (= (array_inv!448 (_values!649 (v!13273 (underlying!941 (v!13274 (underlying!942 (cache!819 cache!470))))))) (bvsge (size!1737 (_values!649 (v!13273 (underlying!941 (v!13274 (underlying!942 (cache!819 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!116746 d!28410))

(declare-fun d!28412 () Bool)

(assert (=> d!28412 (<= (size!1738 testedP!367) (size!1738 totalInput!1363))))

(declare-fun lt!34544 () Unit!1418)

(declare-fun choose!1535 (List!1924 List!1924) Unit!1418)

(assert (=> d!28412 (= lt!34544 (choose!1535 testedP!367 totalInput!1363))))

(assert (=> d!28412 (isPrefix!92 testedP!367 totalInput!1363)))

(assert (=> d!28412 (= (lemmaIsPrefixThenSmallerEqSize!20 testedP!367 totalInput!1363) lt!34544)))

(declare-fun bs!11853 () Bool)

(assert (= bs!11853 d!28412))

(assert (=> bs!11853 m!104856))

(assert (=> bs!11853 m!104846))

(declare-fun m!104902 () Bool)

(assert (=> bs!11853 m!104902))

(assert (=> bs!11853 m!104872))

(assert (=> b!116736 d!28412))

(declare-fun d!28414 () Bool)

(assert (=> d!28414 (isPrefix!92 totalInput!1363 totalInput!1363)))

(declare-fun lt!34547 () Unit!1418)

(declare-fun choose!1536 (List!1924 List!1924) Unit!1418)

(assert (=> d!28414 (= lt!34547 (choose!1536 totalInput!1363 totalInput!1363))))

(assert (=> d!28414 (= (lemmaIsPrefixRefl!74 totalInput!1363 totalInput!1363) lt!34547)))

(declare-fun bs!11854 () Bool)

(assert (= bs!11854 d!28414))

(assert (=> bs!11854 m!104850))

(declare-fun m!104904 () Bool)

(assert (=> bs!11854 m!104904))

(assert (=> b!116747 d!28414))

(declare-fun b!116765 () Bool)

(declare-fun e!66372 () Bool)

(assert (=> b!116765 (= e!66372 (>= (size!1738 totalInput!1363) (size!1738 totalInput!1363)))))

(declare-fun b!116764 () Bool)

(declare-fun e!66373 () Bool)

(assert (=> b!116764 (= e!66373 (isPrefix!92 (tail!220 totalInput!1363) (tail!220 totalInput!1363)))))

(declare-fun d!28416 () Bool)

(assert (=> d!28416 e!66372))

(declare-fun res!55380 () Bool)

(assert (=> d!28416 (=> res!55380 e!66372)))

(declare-fun lt!34550 () Bool)

(assert (=> d!28416 (= res!55380 (not lt!34550))))

(declare-fun e!66371 () Bool)

(assert (=> d!28416 (= lt!34550 e!66371)))

(declare-fun res!55381 () Bool)

(assert (=> d!28416 (=> res!55381 e!66371)))

(assert (=> d!28416 (= res!55381 ((_ is Nil!1918) totalInput!1363))))

(assert (=> d!28416 (= (isPrefix!92 totalInput!1363 totalInput!1363) lt!34550)))

(declare-fun b!116763 () Bool)

(declare-fun res!55378 () Bool)

(assert (=> b!116763 (=> (not res!55378) (not e!66373))))

(assert (=> b!116763 (= res!55378 (= (head!484 totalInput!1363) (head!484 totalInput!1363)))))

(declare-fun b!116762 () Bool)

(assert (=> b!116762 (= e!66371 e!66373)))

(declare-fun res!55379 () Bool)

(assert (=> b!116762 (=> (not res!55379) (not e!66373))))

(assert (=> b!116762 (= res!55379 (not ((_ is Nil!1918) totalInput!1363)))))

(assert (= (and d!28416 (not res!55381)) b!116762))

(assert (= (and b!116762 res!55379) b!116763))

(assert (= (and b!116763 res!55378) b!116764))

(assert (= (and d!28416 (not res!55380)) b!116765))

(assert (=> b!116765 m!104846))

(assert (=> b!116765 m!104846))

(declare-fun m!104906 () Bool)

(assert (=> b!116764 m!104906))

(assert (=> b!116764 m!104906))

(assert (=> b!116764 m!104906))

(assert (=> b!116764 m!104906))

(declare-fun m!104908 () Bool)

(assert (=> b!116764 m!104908))

(declare-fun m!104910 () Bool)

(assert (=> b!116763 m!104910))

(assert (=> b!116763 m!104910))

(assert (=> b!116747 d!28416))

(declare-fun d!28418 () Bool)

(assert (=> d!28418 (= totalInput!1363 testedP!367)))

(declare-fun lt!34553 () Unit!1418)

(declare-fun choose!1537 (List!1924 List!1924 List!1924) Unit!1418)

(assert (=> d!28418 (= lt!34553 (choose!1537 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!28418 (isPrefix!92 totalInput!1363 totalInput!1363)))

(assert (=> d!28418 (= (lemmaIsPrefixSameLengthThenSameList!20 totalInput!1363 testedP!367 totalInput!1363) lt!34553)))

(declare-fun bs!11855 () Bool)

(assert (= bs!11855 d!28418))

(declare-fun m!104912 () Bool)

(assert (=> bs!11855 m!104912))

(assert (=> bs!11855 m!104850))

(assert (=> b!116747 d!28418))

(declare-fun b!116777 () Bool)

(declare-fun e!66379 () Bool)

(declare-fun lt!34556 () List!1924)

(assert (=> b!116777 (= e!66379 (or (not (= testedSuffix!285 Nil!1918)) (= lt!34556 testedP!367)))))

(declare-fun b!116776 () Bool)

(declare-fun res!55386 () Bool)

(assert (=> b!116776 (=> (not res!55386) (not e!66379))))

(assert (=> b!116776 (= res!55386 (= (size!1738 lt!34556) (+ (size!1738 testedP!367) (size!1738 testedSuffix!285))))))

(declare-fun b!116774 () Bool)

(declare-fun e!66378 () List!1924)

(assert (=> b!116774 (= e!66378 testedSuffix!285)))

(declare-fun d!28420 () Bool)

(assert (=> d!28420 e!66379))

(declare-fun res!55387 () Bool)

(assert (=> d!28420 (=> (not res!55387) (not e!66379))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!216 (List!1924) (InoxSet C!1932))

(assert (=> d!28420 (= res!55387 (= (content!216 lt!34556) ((_ map or) (content!216 testedP!367) (content!216 testedSuffix!285))))))

(assert (=> d!28420 (= lt!34556 e!66378)))

(declare-fun c!26661 () Bool)

(assert (=> d!28420 (= c!26661 ((_ is Nil!1918) testedP!367))))

(assert (=> d!28420 (= (++!345 testedP!367 testedSuffix!285) lt!34556)))

(declare-fun b!116775 () Bool)

(assert (=> b!116775 (= e!66378 (Cons!1918 (h!7315 testedP!367) (++!345 (t!22401 testedP!367) testedSuffix!285)))))

(assert (= (and d!28420 c!26661) b!116774))

(assert (= (and d!28420 (not c!26661)) b!116775))

(assert (= (and d!28420 res!55387) b!116776))

(assert (= (and b!116776 res!55386) b!116777))

(declare-fun m!104914 () Bool)

(assert (=> b!116776 m!104914))

(assert (=> b!116776 m!104856))

(declare-fun m!104916 () Bool)

(assert (=> b!116776 m!104916))

(declare-fun m!104918 () Bool)

(assert (=> d!28420 m!104918))

(declare-fun m!104920 () Bool)

(assert (=> d!28420 m!104920))

(declare-fun m!104922 () Bool)

(assert (=> d!28420 m!104922))

(declare-fun m!104924 () Bool)

(assert (=> b!116775 m!104924))

(assert (=> b!116733 d!28420))

(declare-fun d!28422 () Bool)

(declare-fun lt!34559 () Int)

(assert (=> d!28422 (>= lt!34559 0)))

(declare-fun e!66382 () Int)

(assert (=> d!28422 (= lt!34559 e!66382)))

(declare-fun c!26664 () Bool)

(assert (=> d!28422 (= c!26664 ((_ is Nil!1918) totalInput!1363))))

(assert (=> d!28422 (= (size!1738 totalInput!1363) lt!34559)))

(declare-fun b!116782 () Bool)

(assert (=> b!116782 (= e!66382 0)))

(declare-fun b!116783 () Bool)

(assert (=> b!116783 (= e!66382 (+ 1 (size!1738 (t!22401 totalInput!1363))))))

(assert (= (and d!28422 c!26664) b!116782))

(assert (= (and d!28422 (not c!26664)) b!116783))

(declare-fun m!104926 () Bool)

(assert (=> b!116783 m!104926))

(assert (=> b!116753 d!28422))

(declare-fun d!28424 () Bool)

(declare-fun lostCauseFct!23 (Regex!505) Bool)

(assert (=> d!28424 (= (lostCause!46 r!15532) (lostCauseFct!23 r!15532))))

(declare-fun bs!11856 () Bool)

(assert (= bs!11856 d!28424))

(declare-fun m!104928 () Bool)

(assert (=> bs!11856 m!104928))

(assert (=> b!116734 d!28424))

(declare-fun d!28426 () Bool)

(assert (=> d!28426 (= testedSuffix!285 lt!34527)))

(declare-fun lt!34562 () Unit!1418)

(declare-fun choose!1538 (List!1924 List!1924 List!1924 List!1924 List!1924) Unit!1418)

(assert (=> d!28426 (= lt!34562 (choose!1538 testedP!367 testedSuffix!285 testedP!367 lt!34527 totalInput!1363))))

(assert (=> d!28426 (isPrefix!92 testedP!367 totalInput!1363)))

(assert (=> d!28426 (= (lemmaSamePrefixThenSameSuffix!34 testedP!367 testedSuffix!285 testedP!367 lt!34527 totalInput!1363) lt!34562)))

(declare-fun bs!11857 () Bool)

(assert (= bs!11857 d!28426))

(declare-fun m!104930 () Bool)

(assert (=> bs!11857 m!104930))

(assert (=> bs!11857 m!104872))

(assert (=> b!116734 d!28426))

(declare-fun d!28428 () Bool)

(declare-fun lt!34565 () List!1924)

(assert (=> d!28428 (= (++!345 testedP!367 lt!34565) totalInput!1363)))

(declare-fun e!66385 () List!1924)

(assert (=> d!28428 (= lt!34565 e!66385)))

(declare-fun c!26667 () Bool)

(assert (=> d!28428 (= c!26667 ((_ is Cons!1918) testedP!367))))

(assert (=> d!28428 (>= (size!1738 totalInput!1363) (size!1738 testedP!367))))

(assert (=> d!28428 (= (getSuffix!35 totalInput!1363 testedP!367) lt!34565)))

(declare-fun b!116788 () Bool)

(assert (=> b!116788 (= e!66385 (getSuffix!35 (tail!220 totalInput!1363) (t!22401 testedP!367)))))

(declare-fun b!116789 () Bool)

(assert (=> b!116789 (= e!66385 totalInput!1363)))

(assert (= (and d!28428 c!26667) b!116788))

(assert (= (and d!28428 (not c!26667)) b!116789))

(declare-fun m!104932 () Bool)

(assert (=> d!28428 m!104932))

(assert (=> d!28428 m!104846))

(assert (=> d!28428 m!104856))

(assert (=> b!116788 m!104906))

(assert (=> b!116788 m!104906))

(declare-fun m!104934 () Bool)

(assert (=> b!116788 m!104934))

(assert (=> b!116734 d!28428))

(declare-fun d!28430 () Bool)

(declare-fun validCacheMap!18 (MutableMap!367) Bool)

(assert (=> d!28430 (= (valid!336 cache!470) (validCacheMap!18 (cache!819 cache!470)))))

(declare-fun bs!11858 () Bool)

(assert (= bs!11858 d!28430))

(declare-fun m!104936 () Bool)

(assert (=> bs!11858 m!104936))

(assert (=> b!116732 d!28430))

(declare-fun b!116808 () Bool)

(declare-fun e!66401 () Bool)

(declare-fun e!66403 () Bool)

(assert (=> b!116808 (= e!66401 e!66403)))

(declare-fun c!26673 () Bool)

(assert (=> b!116808 (= c!26673 ((_ is Union!505) r!15532))))

(declare-fun c!26672 () Bool)

(declare-fun call!4926 () Bool)

(declare-fun bm!4919 () Bool)

(assert (=> bm!4919 (= call!4926 (validRegex!112 (ite c!26672 (reg!834 r!15532) (ite c!26673 (regTwo!1523 r!15532) (regOne!1522 r!15532)))))))

(declare-fun bm!4920 () Bool)

(declare-fun call!4925 () Bool)

(assert (=> bm!4920 (= call!4925 (validRegex!112 (ite c!26673 (regOne!1523 r!15532) (regTwo!1522 r!15532))))))

(declare-fun d!28432 () Bool)

(declare-fun res!55401 () Bool)

(declare-fun e!66405 () Bool)

(assert (=> d!28432 (=> res!55401 e!66405)))

(assert (=> d!28432 (= res!55401 ((_ is ElementMatch!505) r!15532))))

(assert (=> d!28432 (= (validRegex!112 r!15532) e!66405)))

(declare-fun b!116809 () Bool)

(declare-fun e!66400 () Bool)

(assert (=> b!116809 (= e!66401 e!66400)))

(declare-fun res!55399 () Bool)

(assert (=> b!116809 (= res!55399 (not (nullable!69 (reg!834 r!15532))))))

(assert (=> b!116809 (=> (not res!55399) (not e!66400))))

(declare-fun b!116810 () Bool)

(declare-fun e!66402 () Bool)

(assert (=> b!116810 (= e!66402 call!4925)))

(declare-fun b!116811 () Bool)

(declare-fun res!55398 () Bool)

(declare-fun e!66404 () Bool)

(assert (=> b!116811 (=> res!55398 e!66404)))

(assert (=> b!116811 (= res!55398 (not ((_ is Concat!889) r!15532)))))

(assert (=> b!116811 (= e!66403 e!66404)))

(declare-fun b!116812 () Bool)

(declare-fun res!55402 () Bool)

(declare-fun e!66406 () Bool)

(assert (=> b!116812 (=> (not res!55402) (not e!66406))))

(assert (=> b!116812 (= res!55402 call!4925)))

(assert (=> b!116812 (= e!66403 e!66406)))

(declare-fun b!116813 () Bool)

(declare-fun call!4924 () Bool)

(assert (=> b!116813 (= e!66406 call!4924)))

(declare-fun bm!4921 () Bool)

(assert (=> bm!4921 (= call!4924 call!4926)))

(declare-fun b!116814 () Bool)

(assert (=> b!116814 (= e!66404 e!66402)))

(declare-fun res!55400 () Bool)

(assert (=> b!116814 (=> (not res!55400) (not e!66402))))

(assert (=> b!116814 (= res!55400 call!4924)))

(declare-fun b!116815 () Bool)

(assert (=> b!116815 (= e!66405 e!66401)))

(assert (=> b!116815 (= c!26672 ((_ is Star!505) r!15532))))

(declare-fun b!116816 () Bool)

(assert (=> b!116816 (= e!66400 call!4926)))

(assert (= (and d!28432 (not res!55401)) b!116815))

(assert (= (and b!116815 c!26672) b!116809))

(assert (= (and b!116815 (not c!26672)) b!116808))

(assert (= (and b!116809 res!55399) b!116816))

(assert (= (and b!116808 c!26673) b!116812))

(assert (= (and b!116808 (not c!26673)) b!116811))

(assert (= (and b!116812 res!55402) b!116813))

(assert (= (and b!116811 (not res!55398)) b!116814))

(assert (= (and b!116814 res!55400) b!116810))

(assert (= (or b!116813 b!116814) bm!4921))

(assert (= (or b!116812 b!116810) bm!4920))

(assert (= (or b!116816 bm!4921) bm!4919))

(declare-fun m!104938 () Bool)

(assert (=> bm!4919 m!104938))

(declare-fun m!104940 () Bool)

(assert (=> bm!4920 m!104940))

(declare-fun m!104942 () Bool)

(assert (=> b!116809 m!104942))

(assert (=> start!11888 d!28432))

(declare-fun d!28434 () Bool)

(declare-fun res!55405 () Bool)

(declare-fun e!66409 () Bool)

(assert (=> d!28434 (=> (not res!55405) (not e!66409))))

(assert (=> d!28434 (= res!55405 ((_ is HashMap!367) (cache!819 cache!470)))))

(assert (=> d!28434 (= (inv!2434 cache!470) e!66409)))

(declare-fun b!116819 () Bool)

(assert (=> b!116819 (= e!66409 (validCacheMap!18 (cache!819 cache!470)))))

(assert (= (and d!28434 res!55405) b!116819))

(assert (=> b!116819 m!104936))

(assert (=> start!11888 d!28434))

(declare-fun d!28436 () Bool)

(assert (=> d!28436 (= (head!484 testedSuffix!285) (h!7315 testedSuffix!285))))

(assert (=> b!116729 d!28436))

(declare-fun d!28438 () Bool)

(assert (=> d!28438 (= (tail!220 testedSuffix!285) (t!22401 testedSuffix!285))))

(assert (=> b!116729 d!28438))

(declare-fun d!28440 () Bool)

(declare-fun nullableFct!14 (Regex!505) Bool)

(assert (=> d!28440 (= (nullable!69 r!15532) (nullableFct!14 r!15532))))

(declare-fun bs!11859 () Bool)

(assert (= bs!11859 d!28440))

(declare-fun m!104944 () Bool)

(assert (=> bs!11859 m!104944))

(assert (=> b!116729 d!28440))

(declare-fun d!28442 () Bool)

(assert (=> d!28442 (isPrefix!92 (++!345 testedP!367 (Cons!1918 (head!484 (getSuffix!35 totalInput!1363 testedP!367)) Nil!1918)) totalInput!1363)))

(declare-fun lt!34568 () Unit!1418)

(declare-fun choose!1539 (List!1924 List!1924) Unit!1418)

(assert (=> d!28442 (= lt!34568 (choose!1539 testedP!367 totalInput!1363))))

(assert (=> d!28442 (isPrefix!92 testedP!367 totalInput!1363)))

(assert (=> d!28442 (= (lemmaAddHeadSuffixToPrefixStillPrefix!14 testedP!367 totalInput!1363) lt!34568)))

(declare-fun bs!11860 () Bool)

(assert (= bs!11860 d!28442))

(declare-fun m!104946 () Bool)

(assert (=> bs!11860 m!104946))

(declare-fun m!104948 () Bool)

(assert (=> bs!11860 m!104948))

(declare-fun m!104950 () Bool)

(assert (=> bs!11860 m!104950))

(assert (=> bs!11860 m!104946))

(assert (=> bs!11860 m!104866))

(assert (=> bs!11860 m!104866))

(declare-fun m!104952 () Bool)

(assert (=> bs!11860 m!104952))

(assert (=> bs!11860 m!104872))

(assert (=> b!116729 d!28442))

(declare-fun d!28444 () Bool)

(assert (=> d!28444 (= (head!484 lt!34527) (h!7315 lt!34527))))

(assert (=> b!116729 d!28444))

(declare-fun d!28446 () Bool)

(assert (=> d!28446 (= (++!345 (++!345 testedP!367 (Cons!1918 lt!34533 Nil!1918)) lt!34539) totalInput!1363)))

(declare-fun lt!34571 () Unit!1418)

(declare-fun choose!1540 (List!1924 C!1932 List!1924 List!1924) Unit!1418)

(assert (=> d!28446 (= lt!34571 (choose!1540 testedP!367 lt!34533 lt!34539 totalInput!1363))))

(assert (=> d!28446 (= (++!345 testedP!367 (Cons!1918 lt!34533 lt!34539)) totalInput!1363)))

(assert (=> d!28446 (= (lemmaMoveElementToOtherListKeepsConcatEq!10 testedP!367 lt!34533 lt!34539 totalInput!1363) lt!34571)))

(declare-fun bs!11861 () Bool)

(assert (= bs!11861 d!28446))

(assert (=> bs!11861 m!104896))

(assert (=> bs!11861 m!104896))

(declare-fun m!104954 () Bool)

(assert (=> bs!11861 m!104954))

(declare-fun m!104956 () Bool)

(assert (=> bs!11861 m!104956))

(declare-fun m!104958 () Bool)

(assert (=> bs!11861 m!104958))

(assert (=> b!116729 d!28446))

(declare-fun b!116823 () Bool)

(declare-fun e!66411 () Bool)

(declare-fun lt!34572 () List!1924)

(assert (=> b!116823 (= e!66411 (or (not (= (Cons!1918 (head!484 lt!34527) Nil!1918) Nil!1918)) (= lt!34572 testedP!367)))))

(declare-fun b!116822 () Bool)

(declare-fun res!55406 () Bool)

(assert (=> b!116822 (=> (not res!55406) (not e!66411))))

(assert (=> b!116822 (= res!55406 (= (size!1738 lt!34572) (+ (size!1738 testedP!367) (size!1738 (Cons!1918 (head!484 lt!34527) Nil!1918)))))))

(declare-fun b!116820 () Bool)

(declare-fun e!66410 () List!1924)

(assert (=> b!116820 (= e!66410 (Cons!1918 (head!484 lt!34527) Nil!1918))))

(declare-fun d!28448 () Bool)

(assert (=> d!28448 e!66411))

(declare-fun res!55407 () Bool)

(assert (=> d!28448 (=> (not res!55407) (not e!66411))))

(assert (=> d!28448 (= res!55407 (= (content!216 lt!34572) ((_ map or) (content!216 testedP!367) (content!216 (Cons!1918 (head!484 lt!34527) Nil!1918)))))))

(assert (=> d!28448 (= lt!34572 e!66410)))

(declare-fun c!26674 () Bool)

(assert (=> d!28448 (= c!26674 ((_ is Nil!1918) testedP!367))))

(assert (=> d!28448 (= (++!345 testedP!367 (Cons!1918 (head!484 lt!34527) Nil!1918)) lt!34572)))

(declare-fun b!116821 () Bool)

(assert (=> b!116821 (= e!66410 (Cons!1918 (h!7315 testedP!367) (++!345 (t!22401 testedP!367) (Cons!1918 (head!484 lt!34527) Nil!1918))))))

(assert (= (and d!28448 c!26674) b!116820))

(assert (= (and d!28448 (not c!26674)) b!116821))

(assert (= (and d!28448 res!55407) b!116822))

(assert (= (and b!116822 res!55406) b!116823))

(declare-fun m!104960 () Bool)

(assert (=> b!116822 m!104960))

(assert (=> b!116822 m!104856))

(declare-fun m!104962 () Bool)

(assert (=> b!116822 m!104962))

(declare-fun m!104964 () Bool)

(assert (=> d!28448 m!104964))

(assert (=> d!28448 m!104920))

(declare-fun m!104966 () Bool)

(assert (=> d!28448 m!104966))

(declare-fun m!104968 () Bool)

(assert (=> b!116821 m!104968))

(assert (=> b!116729 d!28448))

(declare-fun lt!34573 () List!1924)

(declare-fun b!116827 () Bool)

(declare-fun e!66413 () Bool)

(assert (=> b!116827 (= e!66413 (or (not (= (Cons!1918 lt!34533 Nil!1918) Nil!1918)) (= lt!34573 testedP!367)))))

(declare-fun b!116826 () Bool)

(declare-fun res!55408 () Bool)

(assert (=> b!116826 (=> (not res!55408) (not e!66413))))

(assert (=> b!116826 (= res!55408 (= (size!1738 lt!34573) (+ (size!1738 testedP!367) (size!1738 (Cons!1918 lt!34533 Nil!1918)))))))

(declare-fun b!116824 () Bool)

(declare-fun e!66412 () List!1924)

(assert (=> b!116824 (= e!66412 (Cons!1918 lt!34533 Nil!1918))))

(declare-fun d!28450 () Bool)

(assert (=> d!28450 e!66413))

(declare-fun res!55409 () Bool)

(assert (=> d!28450 (=> (not res!55409) (not e!66413))))

(assert (=> d!28450 (= res!55409 (= (content!216 lt!34573) ((_ map or) (content!216 testedP!367) (content!216 (Cons!1918 lt!34533 Nil!1918)))))))

(assert (=> d!28450 (= lt!34573 e!66412)))

(declare-fun c!26675 () Bool)

(assert (=> d!28450 (= c!26675 ((_ is Nil!1918) testedP!367))))

(assert (=> d!28450 (= (++!345 testedP!367 (Cons!1918 lt!34533 Nil!1918)) lt!34573)))

(declare-fun b!116825 () Bool)

(assert (=> b!116825 (= e!66412 (Cons!1918 (h!7315 testedP!367) (++!345 (t!22401 testedP!367) (Cons!1918 lt!34533 Nil!1918))))))

(assert (= (and d!28450 c!26675) b!116824))

(assert (= (and d!28450 (not c!26675)) b!116825))

(assert (= (and d!28450 res!55409) b!116826))

(assert (= (and b!116826 res!55408) b!116827))

(declare-fun m!104970 () Bool)

(assert (=> b!116826 m!104970))

(assert (=> b!116826 m!104856))

(declare-fun m!104972 () Bool)

(assert (=> b!116826 m!104972))

(declare-fun m!104974 () Bool)

(assert (=> d!28450 m!104974))

(assert (=> d!28450 m!104920))

(declare-fun m!104976 () Bool)

(assert (=> d!28450 m!104976))

(declare-fun m!104978 () Bool)

(assert (=> b!116825 m!104978))

(assert (=> b!116729 d!28450))

(declare-fun lt!34574 () List!1924)

(declare-fun b!116831 () Bool)

(declare-fun e!66415 () Bool)

(assert (=> b!116831 (= e!66415 (or (not (= lt!34539 Nil!1918)) (= lt!34574 lt!34535)))))

(declare-fun b!116830 () Bool)

(declare-fun res!55410 () Bool)

(assert (=> b!116830 (=> (not res!55410) (not e!66415))))

(assert (=> b!116830 (= res!55410 (= (size!1738 lt!34574) (+ (size!1738 lt!34535) (size!1738 lt!34539))))))

(declare-fun b!116828 () Bool)

(declare-fun e!66414 () List!1924)

(assert (=> b!116828 (= e!66414 lt!34539)))

(declare-fun d!28452 () Bool)

(assert (=> d!28452 e!66415))

(declare-fun res!55411 () Bool)

(assert (=> d!28452 (=> (not res!55411) (not e!66415))))

(assert (=> d!28452 (= res!55411 (= (content!216 lt!34574) ((_ map or) (content!216 lt!34535) (content!216 lt!34539))))))

(assert (=> d!28452 (= lt!34574 e!66414)))

(declare-fun c!26676 () Bool)

(assert (=> d!28452 (= c!26676 ((_ is Nil!1918) lt!34535))))

(assert (=> d!28452 (= (++!345 lt!34535 lt!34539) lt!34574)))

(declare-fun b!116829 () Bool)

(assert (=> b!116829 (= e!66414 (Cons!1918 (h!7315 lt!34535) (++!345 (t!22401 lt!34535) lt!34539)))))

(assert (= (and d!28452 c!26676) b!116828))

(assert (= (and d!28452 (not c!26676)) b!116829))

(assert (= (and d!28452 res!55411) b!116830))

(assert (= (and b!116830 res!55410) b!116831))

(declare-fun m!104980 () Bool)

(assert (=> b!116830 m!104980))

(declare-fun m!104982 () Bool)

(assert (=> b!116830 m!104982))

(declare-fun m!104984 () Bool)

(assert (=> b!116830 m!104984))

(declare-fun m!104986 () Bool)

(assert (=> d!28452 m!104986))

(declare-fun m!104988 () Bool)

(assert (=> d!28452 m!104988))

(declare-fun m!104990 () Bool)

(assert (=> d!28452 m!104990))

(declare-fun m!104992 () Bool)

(assert (=> b!116829 m!104992))

(assert (=> b!116729 d!28452))

(declare-fun e!66417 () Bool)

(declare-fun b!116835 () Bool)

(assert (=> b!116835 (= e!66417 (>= (size!1738 totalInput!1363) (size!1738 (++!345 testedP!367 (Cons!1918 (head!484 lt!34527) Nil!1918)))))))

(declare-fun e!66418 () Bool)

(declare-fun b!116834 () Bool)

(assert (=> b!116834 (= e!66418 (isPrefix!92 (tail!220 (++!345 testedP!367 (Cons!1918 (head!484 lt!34527) Nil!1918))) (tail!220 totalInput!1363)))))

(declare-fun d!28454 () Bool)

(assert (=> d!28454 e!66417))

(declare-fun res!55414 () Bool)

(assert (=> d!28454 (=> res!55414 e!66417)))

(declare-fun lt!34575 () Bool)

(assert (=> d!28454 (= res!55414 (not lt!34575))))

(declare-fun e!66416 () Bool)

(assert (=> d!28454 (= lt!34575 e!66416)))

(declare-fun res!55415 () Bool)

(assert (=> d!28454 (=> res!55415 e!66416)))

(assert (=> d!28454 (= res!55415 ((_ is Nil!1918) (++!345 testedP!367 (Cons!1918 (head!484 lt!34527) Nil!1918))))))

(assert (=> d!28454 (= (isPrefix!92 (++!345 testedP!367 (Cons!1918 (head!484 lt!34527) Nil!1918)) totalInput!1363) lt!34575)))

(declare-fun b!116833 () Bool)

(declare-fun res!55412 () Bool)

(assert (=> b!116833 (=> (not res!55412) (not e!66418))))

(assert (=> b!116833 (= res!55412 (= (head!484 (++!345 testedP!367 (Cons!1918 (head!484 lt!34527) Nil!1918))) (head!484 totalInput!1363)))))

(declare-fun b!116832 () Bool)

(assert (=> b!116832 (= e!66416 e!66418)))

(declare-fun res!55413 () Bool)

(assert (=> b!116832 (=> (not res!55413) (not e!66418))))

(assert (=> b!116832 (= res!55413 (not ((_ is Nil!1918) totalInput!1363)))))

(assert (= (and d!28454 (not res!55415)) b!116832))

(assert (= (and b!116832 res!55413) b!116833))

(assert (= (and b!116833 res!55412) b!116834))

(assert (= (and d!28454 (not res!55414)) b!116835))

(assert (=> b!116835 m!104846))

(assert (=> b!116835 m!104890))

(declare-fun m!104994 () Bool)

(assert (=> b!116835 m!104994))

(assert (=> b!116834 m!104890))

(declare-fun m!104996 () Bool)

(assert (=> b!116834 m!104996))

(assert (=> b!116834 m!104906))

(assert (=> b!116834 m!104996))

(assert (=> b!116834 m!104906))

(declare-fun m!104998 () Bool)

(assert (=> b!116834 m!104998))

(assert (=> b!116833 m!104890))

(declare-fun m!105000 () Bool)

(assert (=> b!116833 m!105000))

(assert (=> b!116833 m!104910))

(assert (=> b!116729 d!28454))

(declare-fun b!116839 () Bool)

(declare-fun e!66420 () Bool)

(assert (=> b!116839 (= e!66420 (>= (size!1738 totalInput!1363) (size!1738 testedP!367)))))

(declare-fun b!116838 () Bool)

(declare-fun e!66421 () Bool)

(assert (=> b!116838 (= e!66421 (isPrefix!92 (tail!220 testedP!367) (tail!220 totalInput!1363)))))

(declare-fun d!28456 () Bool)

(assert (=> d!28456 e!66420))

(declare-fun res!55418 () Bool)

(assert (=> d!28456 (=> res!55418 e!66420)))

(declare-fun lt!34576 () Bool)

(assert (=> d!28456 (= res!55418 (not lt!34576))))

(declare-fun e!66419 () Bool)

(assert (=> d!28456 (= lt!34576 e!66419)))

(declare-fun res!55419 () Bool)

(assert (=> d!28456 (=> res!55419 e!66419)))

(assert (=> d!28456 (= res!55419 ((_ is Nil!1918) testedP!367))))

(assert (=> d!28456 (= (isPrefix!92 testedP!367 totalInput!1363) lt!34576)))

(declare-fun b!116837 () Bool)

(declare-fun res!55416 () Bool)

(assert (=> b!116837 (=> (not res!55416) (not e!66421))))

(assert (=> b!116837 (= res!55416 (= (head!484 testedP!367) (head!484 totalInput!1363)))))

(declare-fun b!116836 () Bool)

(assert (=> b!116836 (= e!66419 e!66421)))

(declare-fun res!55417 () Bool)

(assert (=> b!116836 (=> (not res!55417) (not e!66421))))

(assert (=> b!116836 (= res!55417 (not ((_ is Nil!1918) totalInput!1363)))))

(assert (= (and d!28456 (not res!55419)) b!116836))

(assert (= (and b!116836 res!55417) b!116837))

(assert (= (and b!116837 res!55416) b!116838))

(assert (= (and d!28456 (not res!55418)) b!116839))

(assert (=> b!116839 m!104846))

(assert (=> b!116839 m!104856))

(declare-fun m!105002 () Bool)

(assert (=> b!116838 m!105002))

(assert (=> b!116838 m!104906))

(assert (=> b!116838 m!105002))

(assert (=> b!116838 m!104906))

(declare-fun m!105004 () Bool)

(assert (=> b!116838 m!105004))

(declare-fun m!105006 () Bool)

(assert (=> b!116837 m!105006))

(assert (=> b!116837 m!104910))

(assert (=> b!116750 d!28456))

(declare-fun b!116843 () Bool)

(declare-fun e!66423 () Bool)

(assert (=> b!116843 (= e!66423 (>= (size!1738 lt!34534) (size!1738 testedP!367)))))

(declare-fun b!116842 () Bool)

(declare-fun e!66424 () Bool)

(assert (=> b!116842 (= e!66424 (isPrefix!92 (tail!220 testedP!367) (tail!220 lt!34534)))))

(declare-fun d!28458 () Bool)

(assert (=> d!28458 e!66423))

(declare-fun res!55422 () Bool)

(assert (=> d!28458 (=> res!55422 e!66423)))

(declare-fun lt!34577 () Bool)

(assert (=> d!28458 (= res!55422 (not lt!34577))))

(declare-fun e!66422 () Bool)

(assert (=> d!28458 (= lt!34577 e!66422)))

(declare-fun res!55423 () Bool)

(assert (=> d!28458 (=> res!55423 e!66422)))

(assert (=> d!28458 (= res!55423 ((_ is Nil!1918) testedP!367))))

(assert (=> d!28458 (= (isPrefix!92 testedP!367 lt!34534) lt!34577)))

(declare-fun b!116841 () Bool)

(declare-fun res!55420 () Bool)

(assert (=> b!116841 (=> (not res!55420) (not e!66424))))

(assert (=> b!116841 (= res!55420 (= (head!484 testedP!367) (head!484 lt!34534)))))

(declare-fun b!116840 () Bool)

(assert (=> b!116840 (= e!66422 e!66424)))

(declare-fun res!55421 () Bool)

(assert (=> b!116840 (=> (not res!55421) (not e!66424))))

(assert (=> b!116840 (= res!55421 (not ((_ is Nil!1918) lt!34534)))))

(assert (= (and d!28458 (not res!55423)) b!116840))

(assert (= (and b!116840 res!55421) b!116841))

(assert (= (and b!116841 res!55420) b!116842))

(assert (= (and d!28458 (not res!55422)) b!116843))

(declare-fun m!105008 () Bool)

(assert (=> b!116843 m!105008))

(assert (=> b!116843 m!104856))

(assert (=> b!116842 m!105002))

(declare-fun m!105010 () Bool)

(assert (=> b!116842 m!105010))

(assert (=> b!116842 m!105002))

(assert (=> b!116842 m!105010))

(declare-fun m!105012 () Bool)

(assert (=> b!116842 m!105012))

(assert (=> b!116841 m!105006))

(declare-fun m!105014 () Bool)

(assert (=> b!116841 m!105014))

(assert (=> b!116750 d!28458))

(declare-fun d!28460 () Bool)

(assert (=> d!28460 (isPrefix!92 testedP!367 (++!345 testedP!367 testedSuffix!285))))

(declare-fun lt!34580 () Unit!1418)

(declare-fun choose!1541 (List!1924 List!1924) Unit!1418)

(assert (=> d!28460 (= lt!34580 (choose!1541 testedP!367 testedSuffix!285))))

(assert (=> d!28460 (= (lemmaConcatTwoListThenFirstIsPrefix!38 testedP!367 testedSuffix!285) lt!34580)))

(declare-fun bs!11862 () Bool)

(assert (= bs!11862 d!28460))

(assert (=> bs!11862 m!104854))

(assert (=> bs!11862 m!104854))

(declare-fun m!105016 () Bool)

(assert (=> bs!11862 m!105016))

(declare-fun m!105018 () Bool)

(assert (=> bs!11862 m!105018))

(assert (=> b!116750 d!28460))

(declare-fun d!28462 () Bool)

(declare-fun lt!34581 () Int)

(assert (=> d!28462 (>= lt!34581 0)))

(declare-fun e!66425 () Int)

(assert (=> d!28462 (= lt!34581 e!66425)))

(declare-fun c!26677 () Bool)

(assert (=> d!28462 (= c!26677 ((_ is Nil!1918) testedP!367))))

(assert (=> d!28462 (= (size!1738 testedP!367) lt!34581)))

(declare-fun b!116844 () Bool)

(assert (=> b!116844 (= e!66425 0)))

(declare-fun b!116845 () Bool)

(assert (=> b!116845 (= e!66425 (+ 1 (size!1738 (t!22401 testedP!367))))))

(assert (= (and d!28462 c!26677) b!116844))

(assert (= (and d!28462 (not c!26677)) b!116845))

(declare-fun m!105020 () Bool)

(assert (=> b!116845 m!105020))

(assert (=> b!116740 d!28462))

(declare-fun e!66428 () Bool)

(declare-fun tp!63803 () Bool)

(declare-fun tp!63804 () Bool)

(declare-fun tp!63802 () Bool)

(declare-fun b!116850 () Bool)

(assert (=> b!116850 (= e!66428 (and tp!63802 tp_is_empty!1065 tp!63803 tp!63804))))

(assert (=> b!116741 (= tp!63795 e!66428)))

(assert (= (and b!116741 ((_ is Cons!1919) mapDefault!1441)) b!116850))

(declare-fun b!116863 () Bool)

(declare-fun e!66431 () Bool)

(declare-fun tp!63818 () Bool)

(assert (=> b!116863 (= e!66431 tp!63818)))

(declare-fun b!116864 () Bool)

(declare-fun tp!63816 () Bool)

(declare-fun tp!63817 () Bool)

(assert (=> b!116864 (= e!66431 (and tp!63816 tp!63817))))

(declare-fun b!116861 () Bool)

(assert (=> b!116861 (= e!66431 tp_is_empty!1065)))

(declare-fun b!116862 () Bool)

(declare-fun tp!63815 () Bool)

(declare-fun tp!63819 () Bool)

(assert (=> b!116862 (= e!66431 (and tp!63815 tp!63819))))

(assert (=> b!116745 (= tp!63791 e!66431)))

(assert (= (and b!116745 ((_ is ElementMatch!505) (regOne!1522 r!15532))) b!116861))

(assert (= (and b!116745 ((_ is Concat!889) (regOne!1522 r!15532))) b!116862))

(assert (= (and b!116745 ((_ is Star!505) (regOne!1522 r!15532))) b!116863))

(assert (= (and b!116745 ((_ is Union!505) (regOne!1522 r!15532))) b!116864))

(declare-fun b!116867 () Bool)

(declare-fun e!66432 () Bool)

(declare-fun tp!63823 () Bool)

(assert (=> b!116867 (= e!66432 tp!63823)))

(declare-fun b!116868 () Bool)

(declare-fun tp!63821 () Bool)

(declare-fun tp!63822 () Bool)

(assert (=> b!116868 (= e!66432 (and tp!63821 tp!63822))))

(declare-fun b!116865 () Bool)

(assert (=> b!116865 (= e!66432 tp_is_empty!1065)))

(declare-fun b!116866 () Bool)

(declare-fun tp!63820 () Bool)

(declare-fun tp!63824 () Bool)

(assert (=> b!116866 (= e!66432 (and tp!63820 tp!63824))))

(assert (=> b!116745 (= tp!63783 e!66432)))

(assert (= (and b!116745 ((_ is ElementMatch!505) (regTwo!1522 r!15532))) b!116865))

(assert (= (and b!116745 ((_ is Concat!889) (regTwo!1522 r!15532))) b!116866))

(assert (= (and b!116745 ((_ is Star!505) (regTwo!1522 r!15532))) b!116867))

(assert (= (and b!116745 ((_ is Union!505) (regTwo!1522 r!15532))) b!116868))

(declare-fun tp!63841 () Bool)

(declare-fun e!66438 () Bool)

(declare-fun tp!63843 () Bool)

(declare-fun tp!63839 () Bool)

(declare-fun b!116876 () Bool)

(assert (=> b!116876 (= e!66438 (and tp!63843 tp_is_empty!1065 tp!63841 tp!63839))))

(declare-fun tp!63845 () Bool)

(declare-fun tp!63844 () Bool)

(declare-fun b!116875 () Bool)

(declare-fun e!66437 () Bool)

(declare-fun tp!63842 () Bool)

(assert (=> b!116875 (= e!66437 (and tp!63842 tp_is_empty!1065 tp!63845 tp!63844))))

(declare-fun condMapEmpty!1444 () Bool)

(declare-fun mapDefault!1444 () List!1925)

(assert (=> mapNonEmpty!1441 (= condMapEmpty!1444 (= mapRest!1441 ((as const (Array (_ BitVec 32) List!1925)) mapDefault!1444)))))

(declare-fun mapRes!1444 () Bool)

(assert (=> mapNonEmpty!1441 (= tp!63781 (and e!66438 mapRes!1444))))

(declare-fun mapNonEmpty!1444 () Bool)

(declare-fun tp!63840 () Bool)

(assert (=> mapNonEmpty!1444 (= mapRes!1444 (and tp!63840 e!66437))))

(declare-fun mapValue!1444 () List!1925)

(declare-fun mapRest!1444 () (Array (_ BitVec 32) List!1925))

(declare-fun mapKey!1444 () (_ BitVec 32))

(assert (=> mapNonEmpty!1444 (= mapRest!1441 (store mapRest!1444 mapKey!1444 mapValue!1444))))

(declare-fun mapIsEmpty!1444 () Bool)

(assert (=> mapIsEmpty!1444 mapRes!1444))

(assert (= (and mapNonEmpty!1441 condMapEmpty!1444) mapIsEmpty!1444))

(assert (= (and mapNonEmpty!1441 (not condMapEmpty!1444)) mapNonEmpty!1444))

(assert (= (and mapNonEmpty!1444 ((_ is Cons!1919) mapValue!1444)) b!116875))

(assert (= (and mapNonEmpty!1441 ((_ is Cons!1919) mapDefault!1444)) b!116876))

(declare-fun m!105022 () Bool)

(assert (=> mapNonEmpty!1444 m!105022))

(declare-fun tp!63846 () Bool)

(declare-fun tp!63847 () Bool)

(declare-fun tp!63848 () Bool)

(declare-fun e!66439 () Bool)

(declare-fun b!116877 () Bool)

(assert (=> b!116877 (= e!66439 (and tp!63846 tp_is_empty!1065 tp!63847 tp!63848))))

(assert (=> mapNonEmpty!1441 (= tp!63789 e!66439)))

(assert (= (and mapNonEmpty!1441 ((_ is Cons!1919) mapValue!1441)) b!116877))

(declare-fun tp!63851 () Bool)

(declare-fun b!116878 () Bool)

(declare-fun tp!63849 () Bool)

(declare-fun e!66440 () Bool)

(declare-fun tp!63850 () Bool)

(assert (=> b!116878 (= e!66440 (and tp!63849 tp_is_empty!1065 tp!63850 tp!63851))))

(assert (=> b!116746 (= tp!63785 e!66440)))

(assert (= (and b!116746 ((_ is Cons!1919) (zeroValue!627 (v!13273 (underlying!941 (v!13274 (underlying!942 (cache!819 cache!470)))))))) b!116878))

(declare-fun tp!63853 () Bool)

(declare-fun e!66441 () Bool)

(declare-fun b!116879 () Bool)

(declare-fun tp!63852 () Bool)

(declare-fun tp!63854 () Bool)

(assert (=> b!116879 (= e!66441 (and tp!63852 tp_is_empty!1065 tp!63853 tp!63854))))

(assert (=> b!116746 (= tp!63788 e!66441)))

(assert (= (and b!116746 ((_ is Cons!1919) (minValue!627 (v!13273 (underlying!941 (v!13274 (underlying!942 (cache!819 cache!470)))))))) b!116879))

(declare-fun b!116884 () Bool)

(declare-fun e!66444 () Bool)

(declare-fun tp!63857 () Bool)

(assert (=> b!116884 (= e!66444 (and tp_is_empty!1065 tp!63857))))

(assert (=> b!116751 (= tp!63793 e!66444)))

(assert (= (and b!116751 ((_ is Cons!1918) (t!22401 testedSuffix!285))) b!116884))

(declare-fun b!116885 () Bool)

(declare-fun e!66445 () Bool)

(declare-fun tp!63858 () Bool)

(assert (=> b!116885 (= e!66445 (and tp_is_empty!1065 tp!63858))))

(assert (=> b!116737 (= tp!63790 e!66445)))

(assert (= (and b!116737 ((_ is Cons!1918) (t!22401 totalInput!1363))) b!116885))

(declare-fun b!116888 () Bool)

(declare-fun e!66446 () Bool)

(declare-fun tp!63862 () Bool)

(assert (=> b!116888 (= e!66446 tp!63862)))

(declare-fun b!116889 () Bool)

(declare-fun tp!63860 () Bool)

(declare-fun tp!63861 () Bool)

(assert (=> b!116889 (= e!66446 (and tp!63860 tp!63861))))

(declare-fun b!116886 () Bool)

(assert (=> b!116886 (= e!66446 tp_is_empty!1065)))

(declare-fun b!116887 () Bool)

(declare-fun tp!63859 () Bool)

(declare-fun tp!63863 () Bool)

(assert (=> b!116887 (= e!66446 (and tp!63859 tp!63863))))

(assert (=> b!116743 (= tp!63792 e!66446)))

(assert (= (and b!116743 ((_ is ElementMatch!505) (regOne!1523 r!15532))) b!116886))

(assert (= (and b!116743 ((_ is Concat!889) (regOne!1523 r!15532))) b!116887))

(assert (= (and b!116743 ((_ is Star!505) (regOne!1523 r!15532))) b!116888))

(assert (= (and b!116743 ((_ is Union!505) (regOne!1523 r!15532))) b!116889))

(declare-fun b!116892 () Bool)

(declare-fun e!66447 () Bool)

(declare-fun tp!63867 () Bool)

(assert (=> b!116892 (= e!66447 tp!63867)))

(declare-fun b!116893 () Bool)

(declare-fun tp!63865 () Bool)

(declare-fun tp!63866 () Bool)

(assert (=> b!116893 (= e!66447 (and tp!63865 tp!63866))))

(declare-fun b!116890 () Bool)

(assert (=> b!116890 (= e!66447 tp_is_empty!1065)))

(declare-fun b!116891 () Bool)

(declare-fun tp!63864 () Bool)

(declare-fun tp!63868 () Bool)

(assert (=> b!116891 (= e!66447 (and tp!63864 tp!63868))))

(assert (=> b!116743 (= tp!63784 e!66447)))

(assert (= (and b!116743 ((_ is ElementMatch!505) (regTwo!1523 r!15532))) b!116890))

(assert (= (and b!116743 ((_ is Concat!889) (regTwo!1523 r!15532))) b!116891))

(assert (= (and b!116743 ((_ is Star!505) (regTwo!1523 r!15532))) b!116892))

(assert (= (and b!116743 ((_ is Union!505) (regTwo!1523 r!15532))) b!116893))

(declare-fun b!116896 () Bool)

(declare-fun e!66448 () Bool)

(declare-fun tp!63872 () Bool)

(assert (=> b!116896 (= e!66448 tp!63872)))

(declare-fun b!116897 () Bool)

(declare-fun tp!63870 () Bool)

(declare-fun tp!63871 () Bool)

(assert (=> b!116897 (= e!66448 (and tp!63870 tp!63871))))

(declare-fun b!116894 () Bool)

(assert (=> b!116894 (= e!66448 tp_is_empty!1065)))

(declare-fun b!116895 () Bool)

(declare-fun tp!63869 () Bool)

(declare-fun tp!63873 () Bool)

(assert (=> b!116895 (= e!66448 (and tp!63869 tp!63873))))

(assert (=> b!116748 (= tp!63782 e!66448)))

(assert (= (and b!116748 ((_ is ElementMatch!505) (reg!834 r!15532))) b!116894))

(assert (= (and b!116748 ((_ is Concat!889) (reg!834 r!15532))) b!116895))

(assert (= (and b!116748 ((_ is Star!505) (reg!834 r!15532))) b!116896))

(assert (= (and b!116748 ((_ is Union!505) (reg!834 r!15532))) b!116897))

(declare-fun b!116898 () Bool)

(declare-fun e!66449 () Bool)

(declare-fun tp!63874 () Bool)

(assert (=> b!116898 (= e!66449 (and tp_is_empty!1065 tp!63874))))

(assert (=> b!116735 (= tp!63787 e!66449)))

(assert (= (and b!116735 ((_ is Cons!1918) (t!22401 testedP!367))) b!116898))

(check-sat (not b!116877) (not mapNonEmpty!1444) (not b!116763) (not b!116878) (not d!28428) (not b!116830) (not b!116835) (not b!116829) (not d!28450) (not b!116776) (not b!116888) tp_is_empty!1065 (not b!116866) (not d!28412) (not b!116864) (not b!116875) (not b!116845) (not b!116843) (not d!28430) b_and!5843 (not b!116841) (not bm!4920) (not b!116898) (not b!116834) (not b!116876) (not b!116863) (not d!28442) (not b!116822) (not b!116833) (not b!116764) (not b_next!3713) (not b!116788) (not b!116826) (not b!116891) (not b!116868) (not b!116775) (not b_next!3715) (not b!116879) (not b!116867) (not b!116884) (not b!116783) (not b!116895) (not d!28418) (not b!116809) (not d!28426) (not d!28446) (not b!116842) (not b!116837) (not b!116850) (not b!116839) (not b!116821) (not d!28414) (not d!28440) (not b!116889) (not b!116887) (not b!116885) (not b!116896) (not b!116765) (not b!116825) (not b!116892) (not b!116819) (not d!28420) (not d!28452) (not bm!4919) (not b!116897) (not b!116838) (not b!116893) (not b!116862) b_and!5845 (not d!28448) (not d!28460) (not d!28424))
(check-sat b_and!5845 b_and!5843 (not b_next!3715) (not b_next!3713))
