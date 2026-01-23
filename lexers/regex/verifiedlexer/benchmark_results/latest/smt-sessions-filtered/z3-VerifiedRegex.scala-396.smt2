; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11932 () Bool)

(assert start!11932)

(declare-fun b!117052 () Bool)

(declare-fun b_free!3721 () Bool)

(declare-fun b_next!3721 () Bool)

(assert (=> b!117052 (= b_free!3721 (not b_next!3721))))

(declare-fun tp!63963 () Bool)

(declare-fun b_and!5851 () Bool)

(assert (=> b!117052 (= tp!63963 b_and!5851)))

(declare-fun b!117030 () Bool)

(declare-fun b_free!3723 () Bool)

(declare-fun b_next!3723 () Bool)

(assert (=> b!117030 (= b_free!3723 (not b_next!3723))))

(declare-fun tp!63956 () Bool)

(declare-fun b_and!5853 () Bool)

(assert (=> b!117030 (= tp!63956 b_and!5853)))

(declare-fun b!117029 () Bool)

(declare-fun e!66557 () Bool)

(declare-fun e!66574 () Bool)

(assert (=> b!117029 (= e!66557 e!66574)))

(declare-fun res!55476 () Bool)

(assert (=> b!117029 (=> (not res!55476) (not e!66574))))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!34681 () Int)

(assert (=> b!117029 (= res!55476 (= totalInputSize!643 lt!34681))))

(declare-datatypes ((C!1936 0))(
  ( (C!1937 (val!694 Int)) )
))
(declare-datatypes ((List!1928 0))(
  ( (Nil!1922) (Cons!1922 (h!7319 C!1936) (t!22405 List!1928)) )
))
(declare-fun totalInput!1363 () List!1928)

(declare-fun size!1742 (List!1928) Int)

(assert (=> b!117029 (= lt!34681 (size!1742 totalInput!1363))))

(declare-fun e!66566 () Bool)

(declare-fun e!66571 () Bool)

(assert (=> b!117030 (= e!66566 (and e!66571 tp!63956))))

(declare-fun b!117031 () Bool)

(declare-fun e!66572 () Bool)

(declare-fun testedSuffix!285 () List!1928)

(assert (=> b!117031 (= e!66572 (not (= testedSuffix!285 Nil!1922)))))

(declare-datatypes ((Regex!507 0))(
  ( (ElementMatch!507 (c!26685 C!1936)) (Concat!891 (regOne!1526 Regex!507) (regTwo!1526 Regex!507)) (EmptyExpr!507) (Star!507 (reg!836 Regex!507)) (EmptyLang!507) (Union!507 (regOne!1527 Regex!507) (regTwo!1527 Regex!507)) )
))
(declare-fun lt!34679 () Regex!507)

(declare-fun r!15532 () Regex!507)

(declare-fun lt!34673 () C!1936)

(declare-fun derivativeStep!43 (Regex!507 C!1936) Regex!507)

(assert (=> b!117031 (= lt!34679 (derivativeStep!43 r!15532 lt!34673))))

(declare-fun b!117032 () Bool)

(declare-datatypes ((Unit!1426 0))(
  ( (Unit!1427) )
))
(declare-fun e!66573 () Unit!1426)

(declare-fun Unit!1428 () Unit!1426)

(assert (=> b!117032 (= e!66573 Unit!1428)))

(declare-fun b!117033 () Bool)

(declare-fun e!66561 () Bool)

(declare-fun e!66565 () Bool)

(assert (=> b!117033 (= e!66561 e!66565)))

(declare-fun res!55483 () Bool)

(assert (=> b!117033 (=> res!55483 e!66565)))

(declare-fun lostCause!48 (Regex!507) Bool)

(assert (=> b!117033 (= res!55483 (lostCause!48 r!15532))))

(declare-fun lt!34676 () List!1928)

(assert (=> b!117033 (and (= testedSuffix!285 lt!34676) (= lt!34676 testedSuffix!285))))

(declare-fun lt!34677 () Unit!1426)

(declare-fun testedP!367 () List!1928)

(declare-fun lemmaSamePrefixThenSameSuffix!36 (List!1928 List!1928 List!1928 List!1928 List!1928) Unit!1426)

(assert (=> b!117033 (= lt!34677 (lemmaSamePrefixThenSameSuffix!36 testedP!367 testedSuffix!285 testedP!367 lt!34676 totalInput!1363))))

(declare-fun getSuffix!37 (List!1928 List!1928) List!1928)

(assert (=> b!117033 (= lt!34676 (getSuffix!37 totalInput!1363 testedP!367))))

(declare-fun b!117034 () Bool)

(declare-fun e!66558 () Bool)

(declare-fun tp_is_empty!1069 () Bool)

(declare-fun tp!63959 () Bool)

(assert (=> b!117034 (= e!66558 (and tp_is_empty!1069 tp!63959))))

(declare-fun b!117035 () Bool)

(declare-fun e!66568 () Bool)

(declare-fun tp!63951 () Bool)

(assert (=> b!117035 (= e!66568 (and tp_is_empty!1069 tp!63951))))

(declare-fun b!117036 () Bool)

(declare-fun e!66575 () Bool)

(declare-datatypes ((tuple2!2150 0))(
  ( (tuple2!2151 (_1!1285 Regex!507) (_2!1285 C!1936)) )
))
(declare-datatypes ((tuple2!2152 0))(
  ( (tuple2!2153 (_1!1286 tuple2!2150) (_2!1286 Regex!507)) )
))
(declare-datatypes ((List!1929 0))(
  ( (Nil!1923) (Cons!1923 (h!7320 tuple2!2152) (t!22406 List!1929)) )
))
(declare-datatypes ((array!1351 0))(
  ( (array!1352 (arr!630 (Array (_ BitVec 32) (_ BitVec 64))) (size!1743 (_ BitVec 32))) )
))
(declare-datatypes ((array!1353 0))(
  ( (array!1354 (arr!631 (Array (_ BitVec 32) List!1929)) (size!1744 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!746 0))(
  ( (LongMapFixedSize!747 (defaultEntry!712 Int) (mask!1294 (_ BitVec 32)) (extraKeys!619 (_ BitVec 32)) (zeroValue!629 List!1929) (minValue!629 List!1929) (_size!879 (_ BitVec 32)) (_keys!664 array!1351) (_values!651 array!1353) (_vacant!434 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1481 0))(
  ( (Cell!1482 (v!13277 LongMapFixedSize!746)) )
))
(declare-datatypes ((MutLongMap!373 0))(
  ( (LongMap!373 (underlying!945 Cell!1481)) (MutLongMapExt!372 (__x!2044 Int)) )
))
(declare-fun lt!34675 () MutLongMap!373)

(get-info :version)

(assert (=> b!117036 (= e!66571 (and e!66575 ((_ is LongMap!373) lt!34675)))))

(declare-datatypes ((Hashable!369 0))(
  ( (HashableExt!368 (__x!2045 Int)) )
))
(declare-datatypes ((Cell!1483 0))(
  ( (Cell!1484 (v!13278 MutLongMap!373)) )
))
(declare-datatypes ((MutableMap!369 0))(
  ( (MutableMapExt!368 (__x!2046 Int)) (HashMap!369 (underlying!946 Cell!1483) (hashF!2245 Hashable!369) (_size!880 (_ BitVec 32)) (defaultValue!518 Int)) )
))
(declare-datatypes ((Cache!174 0))(
  ( (Cache!175 (cache!821 MutableMap!369)) )
))
(declare-fun cache!470 () Cache!174)

(assert (=> b!117036 (= lt!34675 (v!13278 (underlying!946 (cache!821 cache!470))))))

(declare-fun b!117037 () Bool)

(declare-fun e!66569 () Bool)

(declare-fun e!66556 () Bool)

(assert (=> b!117037 (= e!66569 e!66556)))

(declare-fun b!117038 () Bool)

(declare-fun e!66559 () Bool)

(assert (=> b!117038 (= e!66559 e!66557)))

(declare-fun res!55482 () Bool)

(assert (=> b!117038 (=> (not res!55482) (not e!66557))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!34672 () Int)

(assert (=> b!117038 (= res!55482 (= testedPSize!285 lt!34672))))

(assert (=> b!117038 (= lt!34672 (size!1742 testedP!367))))

(declare-fun b!117039 () Bool)

(declare-fun e!66560 () Bool)

(declare-fun tp!63964 () Bool)

(declare-fun mapRes!1450 () Bool)

(assert (=> b!117039 (= e!66560 (and tp!63964 mapRes!1450))))

(declare-fun condMapEmpty!1450 () Bool)

(declare-fun mapDefault!1450 () List!1929)

(assert (=> b!117039 (= condMapEmpty!1450 (= (arr!631 (_values!651 (v!13277 (underlying!945 (v!13278 (underlying!946 (cache!821 cache!470))))))) ((as const (Array (_ BitVec 32) List!1929)) mapDefault!1450)))))

(declare-fun b!117040 () Bool)

(declare-fun e!66570 () Bool)

(assert (=> b!117040 (= e!66565 e!66570)))

(declare-fun res!55478 () Bool)

(assert (=> b!117040 (=> res!55478 e!66570)))

(assert (=> b!117040 (= res!55478 (>= lt!34672 lt!34681))))

(declare-fun lt!34669 () Unit!1426)

(assert (=> b!117040 (= lt!34669 e!66573)))

(declare-fun c!26684 () Bool)

(assert (=> b!117040 (= c!26684 (= lt!34672 lt!34681))))

(assert (=> b!117040 (<= lt!34672 lt!34681)))

(declare-fun lt!34680 () Unit!1426)

(declare-fun lemmaIsPrefixThenSmallerEqSize!22 (List!1928 List!1928) Unit!1426)

(assert (=> b!117040 (= lt!34680 (lemmaIsPrefixThenSmallerEqSize!22 testedP!367 totalInput!1363))))

(declare-fun mapNonEmpty!1450 () Bool)

(declare-fun tp!63953 () Bool)

(declare-fun tp!63958 () Bool)

(assert (=> mapNonEmpty!1450 (= mapRes!1450 (and tp!63953 tp!63958))))

(declare-fun mapKey!1450 () (_ BitVec 32))

(declare-fun mapValue!1450 () List!1929)

(declare-fun mapRest!1450 () (Array (_ BitVec 32) List!1929))

(assert (=> mapNonEmpty!1450 (= (arr!631 (_values!651 (v!13277 (underlying!945 (v!13278 (underlying!946 (cache!821 cache!470))))))) (store mapRest!1450 mapKey!1450 mapValue!1450))))

(declare-fun b!117041 () Bool)

(assert (=> b!117041 (= e!66575 e!66569)))

(declare-fun b!117042 () Bool)

(declare-fun res!55474 () Bool)

(assert (=> b!117042 (=> res!55474 e!66565)))

(assert (=> b!117042 (= res!55474 (= testedPSize!285 totalInputSize!643))))

(declare-fun mapIsEmpty!1450 () Bool)

(assert (=> mapIsEmpty!1450 mapRes!1450))

(declare-fun b!117043 () Bool)

(declare-fun e!66562 () Bool)

(assert (=> b!117043 (= e!66562 e!66559)))

(declare-fun res!55477 () Bool)

(assert (=> b!117043 (=> (not res!55477) (not e!66559))))

(declare-fun lt!34667 () List!1928)

(assert (=> b!117043 (= res!55477 (= lt!34667 totalInput!1363))))

(declare-fun ++!347 (List!1928 List!1928) List!1928)

(assert (=> b!117043 (= lt!34667 (++!347 testedP!367 testedSuffix!285))))

(declare-fun b!117044 () Bool)

(declare-fun res!55475 () Bool)

(assert (=> b!117044 (=> (not res!55475) (not e!66562))))

(declare-fun valid!338 (Cache!174) Bool)

(assert (=> b!117044 (= res!55475 (valid!338 cache!470))))

(declare-fun b!117045 () Bool)

(declare-fun Unit!1429 () Unit!1426)

(assert (=> b!117045 (= e!66573 Unit!1429)))

(declare-fun lt!34678 () Unit!1426)

(declare-fun lemmaIsPrefixRefl!76 (List!1928 List!1928) Unit!1426)

(assert (=> b!117045 (= lt!34678 (lemmaIsPrefixRefl!76 totalInput!1363 totalInput!1363))))

(declare-fun isPrefix!94 (List!1928 List!1928) Bool)

(assert (=> b!117045 (isPrefix!94 totalInput!1363 totalInput!1363)))

(declare-fun lt!34670 () Unit!1426)

(declare-fun lemmaIsPrefixSameLengthThenSameList!22 (List!1928 List!1928 List!1928) Unit!1426)

(assert (=> b!117045 (= lt!34670 (lemmaIsPrefixSameLengthThenSameList!22 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!117045 false))

(declare-fun b!117046 () Bool)

(declare-fun e!66564 () Bool)

(assert (=> b!117046 (= e!66564 e!66566)))

(declare-fun b!117047 () Bool)

(assert (=> b!117047 (= e!66574 (not e!66561))))

(declare-fun res!55479 () Bool)

(assert (=> b!117047 (=> res!55479 e!66561)))

(assert (=> b!117047 (= res!55479 (not (isPrefix!94 testedP!367 totalInput!1363)))))

(assert (=> b!117047 (isPrefix!94 testedP!367 lt!34667)))

(declare-fun lt!34674 () Unit!1426)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!40 (List!1928 List!1928) Unit!1426)

(assert (=> b!117047 (= lt!34674 (lemmaConcatTwoListThenFirstIsPrefix!40 testedP!367 testedSuffix!285))))

(declare-fun b!117048 () Bool)

(declare-fun e!66555 () Bool)

(declare-fun tp!63960 () Bool)

(declare-fun tp!63955 () Bool)

(assert (=> b!117048 (= e!66555 (and tp!63960 tp!63955))))

(declare-fun b!117049 () Bool)

(assert (=> b!117049 (= e!66555 tp_is_empty!1069)))

(declare-fun b!117050 () Bool)

(declare-fun tp!63952 () Bool)

(assert (=> b!117050 (= e!66555 tp!63952)))

(declare-fun b!117051 () Bool)

(assert (=> b!117051 (= e!66570 e!66572)))

(declare-fun res!55480 () Bool)

(assert (=> b!117051 (=> res!55480 e!66572)))

(declare-fun nullable!71 (Regex!507) Bool)

(assert (=> b!117051 (= res!55480 (nullable!71 r!15532))))

(declare-fun lt!34682 () List!1928)

(declare-fun lt!34671 () List!1928)

(assert (=> b!117051 (= (++!347 lt!34682 lt!34671) totalInput!1363)))

(declare-fun lt!34683 () Unit!1426)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!12 (List!1928 C!1936 List!1928 List!1928) Unit!1426)

(assert (=> b!117051 (= lt!34683 (lemmaMoveElementToOtherListKeepsConcatEq!12 testedP!367 lt!34673 lt!34671 totalInput!1363))))

(declare-fun tail!222 (List!1928) List!1928)

(assert (=> b!117051 (= lt!34671 (tail!222 testedSuffix!285))))

(declare-fun head!486 (List!1928) C!1936)

(assert (=> b!117051 (isPrefix!94 (++!347 testedP!367 (Cons!1922 (head!486 lt!34676) Nil!1922)) totalInput!1363)))

(declare-fun lt!34668 () Unit!1426)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!16 (List!1928 List!1928) Unit!1426)

(assert (=> b!117051 (= lt!34668 (lemmaAddHeadSuffixToPrefixStillPrefix!16 testedP!367 totalInput!1363))))

(assert (=> b!117051 (= lt!34682 (++!347 testedP!367 (Cons!1922 lt!34673 Nil!1922)))))

(assert (=> b!117051 (= lt!34673 (head!486 testedSuffix!285))))

(declare-fun res!55481 () Bool)

(assert (=> start!11932 (=> (not res!55481) (not e!66562))))

(declare-fun validRegex!114 (Regex!507) Bool)

(assert (=> start!11932 (= res!55481 (validRegex!114 r!15532))))

(assert (=> start!11932 e!66562))

(assert (=> start!11932 true))

(assert (=> start!11932 e!66555))

(assert (=> start!11932 e!66568))

(declare-fun e!66563 () Bool)

(assert (=> start!11932 e!66563))

(assert (=> start!11932 e!66558))

(declare-fun inv!2439 (Cache!174) Bool)

(assert (=> start!11932 (and (inv!2439 cache!470) e!66564)))

(declare-fun tp!63961 () Bool)

(declare-fun tp!63957 () Bool)

(declare-fun array_inv!451 (array!1351) Bool)

(declare-fun array_inv!452 (array!1353) Bool)

(assert (=> b!117052 (= e!66556 (and tp!63963 tp!63957 tp!63961 (array_inv!451 (_keys!664 (v!13277 (underlying!945 (v!13278 (underlying!946 (cache!821 cache!470))))))) (array_inv!452 (_values!651 (v!13277 (underlying!945 (v!13278 (underlying!946 (cache!821 cache!470))))))) e!66560))))

(declare-fun b!117053 () Bool)

(declare-fun tp!63962 () Bool)

(assert (=> b!117053 (= e!66563 (and tp_is_empty!1069 tp!63962))))

(declare-fun b!117054 () Bool)

(declare-fun tp!63954 () Bool)

(declare-fun tp!63950 () Bool)

(assert (=> b!117054 (= e!66555 (and tp!63954 tp!63950))))

(assert (= (and start!11932 res!55481) b!117044))

(assert (= (and b!117044 res!55475) b!117043))

(assert (= (and b!117043 res!55477) b!117038))

(assert (= (and b!117038 res!55482) b!117029))

(assert (= (and b!117029 res!55476) b!117047))

(assert (= (and b!117047 (not res!55479)) b!117033))

(assert (= (and b!117033 (not res!55483)) b!117042))

(assert (= (and b!117042 (not res!55474)) b!117040))

(assert (= (and b!117040 c!26684) b!117045))

(assert (= (and b!117040 (not c!26684)) b!117032))

(assert (= (and b!117040 (not res!55478)) b!117051))

(assert (= (and b!117051 (not res!55480)) b!117031))

(assert (= (and start!11932 ((_ is ElementMatch!507) r!15532)) b!117049))

(assert (= (and start!11932 ((_ is Concat!891) r!15532)) b!117048))

(assert (= (and start!11932 ((_ is Star!507) r!15532)) b!117050))

(assert (= (and start!11932 ((_ is Union!507) r!15532)) b!117054))

(assert (= (and start!11932 ((_ is Cons!1922) totalInput!1363)) b!117035))

(assert (= (and start!11932 ((_ is Cons!1922) testedSuffix!285)) b!117053))

(assert (= (and start!11932 ((_ is Cons!1922) testedP!367)) b!117034))

(assert (= (and b!117039 condMapEmpty!1450) mapIsEmpty!1450))

(assert (= (and b!117039 (not condMapEmpty!1450)) mapNonEmpty!1450))

(assert (= b!117052 b!117039))

(assert (= b!117037 b!117052))

(assert (= b!117041 b!117037))

(assert (= (and b!117036 ((_ is LongMap!373) (v!13278 (underlying!946 (cache!821 cache!470))))) b!117041))

(assert (= b!117030 b!117036))

(assert (= (and b!117046 ((_ is HashMap!369) (cache!821 cache!470))) b!117030))

(assert (= start!11932 b!117046))

(declare-fun m!105084 () Bool)

(assert (=> b!117033 m!105084))

(declare-fun m!105086 () Bool)

(assert (=> b!117033 m!105086))

(declare-fun m!105088 () Bool)

(assert (=> b!117033 m!105088))

(declare-fun m!105090 () Bool)

(assert (=> start!11932 m!105090))

(declare-fun m!105092 () Bool)

(assert (=> start!11932 m!105092))

(declare-fun m!105094 () Bool)

(assert (=> b!117045 m!105094))

(declare-fun m!105096 () Bool)

(assert (=> b!117045 m!105096))

(declare-fun m!105098 () Bool)

(assert (=> b!117045 m!105098))

(declare-fun m!105100 () Bool)

(assert (=> b!117029 m!105100))

(declare-fun m!105102 () Bool)

(assert (=> b!117031 m!105102))

(declare-fun m!105104 () Bool)

(assert (=> b!117040 m!105104))

(declare-fun m!105106 () Bool)

(assert (=> mapNonEmpty!1450 m!105106))

(declare-fun m!105108 () Bool)

(assert (=> b!117038 m!105108))

(declare-fun m!105110 () Bool)

(assert (=> b!117043 m!105110))

(declare-fun m!105112 () Bool)

(assert (=> b!117051 m!105112))

(declare-fun m!105114 () Bool)

(assert (=> b!117051 m!105114))

(declare-fun m!105116 () Bool)

(assert (=> b!117051 m!105116))

(declare-fun m!105118 () Bool)

(assert (=> b!117051 m!105118))

(declare-fun m!105120 () Bool)

(assert (=> b!117051 m!105120))

(declare-fun m!105122 () Bool)

(assert (=> b!117051 m!105122))

(declare-fun m!105124 () Bool)

(assert (=> b!117051 m!105124))

(declare-fun m!105126 () Bool)

(assert (=> b!117051 m!105126))

(declare-fun m!105128 () Bool)

(assert (=> b!117051 m!105128))

(assert (=> b!117051 m!105112))

(declare-fun m!105130 () Bool)

(assert (=> b!117051 m!105130))

(declare-fun m!105132 () Bool)

(assert (=> b!117047 m!105132))

(declare-fun m!105134 () Bool)

(assert (=> b!117047 m!105134))

(declare-fun m!105136 () Bool)

(assert (=> b!117047 m!105136))

(declare-fun m!105138 () Bool)

(assert (=> b!117052 m!105138))

(declare-fun m!105140 () Bool)

(assert (=> b!117052 m!105140))

(declare-fun m!105142 () Bool)

(assert (=> b!117044 m!105142))

(check-sat tp_is_empty!1069 (not b!117050) (not b!117033) (not b!117054) (not b!117044) (not b!117048) (not b!117045) (not b!117039) (not b_next!3723) b_and!5853 (not start!11932) (not b!117053) (not b!117051) (not b!117038) (not b!117031) (not b!117034) (not b!117052) (not b!117040) (not b!117035) (not b!117029) (not b_next!3721) (not b!117047) b_and!5851 (not mapNonEmpty!1450) (not b!117043))
(check-sat b_and!5853 b_and!5851 (not b_next!3723) (not b_next!3721))
(get-model)

(declare-fun bm!4928 () Bool)

(declare-fun call!4933 () Bool)

(declare-fun c!26690 () Bool)

(assert (=> bm!4928 (= call!4933 (validRegex!114 (ite c!26690 (regOne!1527 r!15532) (regTwo!1526 r!15532))))))

(declare-fun b!117073 () Bool)

(declare-fun e!66594 () Bool)

(declare-fun e!66596 () Bool)

(assert (=> b!117073 (= e!66594 e!66596)))

(assert (=> b!117073 (= c!26690 ((_ is Union!507) r!15532))))

(declare-fun bm!4929 () Bool)

(declare-fun call!4935 () Bool)

(declare-fun c!26691 () Bool)

(assert (=> bm!4929 (= call!4935 (validRegex!114 (ite c!26691 (reg!836 r!15532) (ite c!26690 (regTwo!1527 r!15532) (regOne!1526 r!15532)))))))

(declare-fun d!28465 () Bool)

(declare-fun res!55496 () Bool)

(declare-fun e!66595 () Bool)

(assert (=> d!28465 (=> res!55496 e!66595)))

(assert (=> d!28465 (= res!55496 ((_ is ElementMatch!507) r!15532))))

(assert (=> d!28465 (= (validRegex!114 r!15532) e!66595)))

(declare-fun b!117074 () Bool)

(assert (=> b!117074 (= e!66595 e!66594)))

(assert (=> b!117074 (= c!26691 ((_ is Star!507) r!15532))))

(declare-fun b!117075 () Bool)

(declare-fun e!66590 () Bool)

(assert (=> b!117075 (= e!66594 e!66590)))

(declare-fun res!55495 () Bool)

(assert (=> b!117075 (= res!55495 (not (nullable!71 (reg!836 r!15532))))))

(assert (=> b!117075 (=> (not res!55495) (not e!66590))))

(declare-fun b!117076 () Bool)

(declare-fun e!66593 () Bool)

(declare-fun call!4934 () Bool)

(assert (=> b!117076 (= e!66593 call!4934)))

(declare-fun b!117077 () Bool)

(declare-fun res!55497 () Bool)

(assert (=> b!117077 (=> (not res!55497) (not e!66593))))

(assert (=> b!117077 (= res!55497 call!4933)))

(assert (=> b!117077 (= e!66596 e!66593)))

(declare-fun b!117078 () Bool)

(declare-fun e!66592 () Bool)

(assert (=> b!117078 (= e!66592 call!4933)))

(declare-fun bm!4930 () Bool)

(assert (=> bm!4930 (= call!4934 call!4935)))

(declare-fun b!117079 () Bool)

(declare-fun e!66591 () Bool)

(assert (=> b!117079 (= e!66591 e!66592)))

(declare-fun res!55494 () Bool)

(assert (=> b!117079 (=> (not res!55494) (not e!66592))))

(assert (=> b!117079 (= res!55494 call!4934)))

(declare-fun b!117080 () Bool)

(declare-fun res!55498 () Bool)

(assert (=> b!117080 (=> res!55498 e!66591)))

(assert (=> b!117080 (= res!55498 (not ((_ is Concat!891) r!15532)))))

(assert (=> b!117080 (= e!66596 e!66591)))

(declare-fun b!117081 () Bool)

(assert (=> b!117081 (= e!66590 call!4935)))

(assert (= (and d!28465 (not res!55496)) b!117074))

(assert (= (and b!117074 c!26691) b!117075))

(assert (= (and b!117074 (not c!26691)) b!117073))

(assert (= (and b!117075 res!55495) b!117081))

(assert (= (and b!117073 c!26690) b!117077))

(assert (= (and b!117073 (not c!26690)) b!117080))

(assert (= (and b!117077 res!55497) b!117076))

(assert (= (and b!117080 (not res!55498)) b!117079))

(assert (= (and b!117079 res!55494) b!117078))

(assert (= (or b!117076 b!117079) bm!4930))

(assert (= (or b!117077 b!117078) bm!4928))

(assert (= (or b!117081 bm!4930) bm!4929))

(declare-fun m!105144 () Bool)

(assert (=> bm!4928 m!105144))

(declare-fun m!105146 () Bool)

(assert (=> bm!4929 m!105146))

(declare-fun m!105148 () Bool)

(assert (=> b!117075 m!105148))

(assert (=> start!11932 d!28465))

(declare-fun d!28467 () Bool)

(declare-fun res!55501 () Bool)

(declare-fun e!66599 () Bool)

(assert (=> d!28467 (=> (not res!55501) (not e!66599))))

(assert (=> d!28467 (= res!55501 ((_ is HashMap!369) (cache!821 cache!470)))))

(assert (=> d!28467 (= (inv!2439 cache!470) e!66599)))

(declare-fun b!117084 () Bool)

(declare-fun validCacheMap!19 (MutableMap!369) Bool)

(assert (=> b!117084 (= e!66599 (validCacheMap!19 (cache!821 cache!470)))))

(assert (= (and d!28467 res!55501) b!117084))

(declare-fun m!105150 () Bool)

(assert (=> b!117084 m!105150))

(assert (=> start!11932 d!28467))

(declare-fun d!28469 () Bool)

(assert (=> d!28469 (isPrefix!94 totalInput!1363 totalInput!1363)))

(declare-fun lt!34686 () Unit!1426)

(declare-fun choose!1542 (List!1928 List!1928) Unit!1426)

(assert (=> d!28469 (= lt!34686 (choose!1542 totalInput!1363 totalInput!1363))))

(assert (=> d!28469 (= (lemmaIsPrefixRefl!76 totalInput!1363 totalInput!1363) lt!34686)))

(declare-fun bs!11865 () Bool)

(assert (= bs!11865 d!28469))

(assert (=> bs!11865 m!105096))

(declare-fun m!105152 () Bool)

(assert (=> bs!11865 m!105152))

(assert (=> b!117045 d!28469))

(declare-fun d!28471 () Bool)

(declare-fun e!66607 () Bool)

(assert (=> d!28471 e!66607))

(declare-fun res!55510 () Bool)

(assert (=> d!28471 (=> res!55510 e!66607)))

(declare-fun lt!34689 () Bool)

(assert (=> d!28471 (= res!55510 (not lt!34689))))

(declare-fun e!66606 () Bool)

(assert (=> d!28471 (= lt!34689 e!66606)))

(declare-fun res!55512 () Bool)

(assert (=> d!28471 (=> res!55512 e!66606)))

(assert (=> d!28471 (= res!55512 ((_ is Nil!1922) totalInput!1363))))

(assert (=> d!28471 (= (isPrefix!94 totalInput!1363 totalInput!1363) lt!34689)))

(declare-fun b!117095 () Bool)

(declare-fun e!66608 () Bool)

(assert (=> b!117095 (= e!66608 (isPrefix!94 (tail!222 totalInput!1363) (tail!222 totalInput!1363)))))

(declare-fun b!117093 () Bool)

(assert (=> b!117093 (= e!66606 e!66608)))

(declare-fun res!55511 () Bool)

(assert (=> b!117093 (=> (not res!55511) (not e!66608))))

(assert (=> b!117093 (= res!55511 (not ((_ is Nil!1922) totalInput!1363)))))

(declare-fun b!117094 () Bool)

(declare-fun res!55513 () Bool)

(assert (=> b!117094 (=> (not res!55513) (not e!66608))))

(assert (=> b!117094 (= res!55513 (= (head!486 totalInput!1363) (head!486 totalInput!1363)))))

(declare-fun b!117096 () Bool)

(assert (=> b!117096 (= e!66607 (>= (size!1742 totalInput!1363) (size!1742 totalInput!1363)))))

(assert (= (and d!28471 (not res!55512)) b!117093))

(assert (= (and b!117093 res!55511) b!117094))

(assert (= (and b!117094 res!55513) b!117095))

(assert (= (and d!28471 (not res!55510)) b!117096))

(declare-fun m!105154 () Bool)

(assert (=> b!117095 m!105154))

(assert (=> b!117095 m!105154))

(assert (=> b!117095 m!105154))

(assert (=> b!117095 m!105154))

(declare-fun m!105156 () Bool)

(assert (=> b!117095 m!105156))

(declare-fun m!105158 () Bool)

(assert (=> b!117094 m!105158))

(assert (=> b!117094 m!105158))

(assert (=> b!117096 m!105100))

(assert (=> b!117096 m!105100))

(assert (=> b!117045 d!28471))

(declare-fun d!28473 () Bool)

(assert (=> d!28473 (= totalInput!1363 testedP!367)))

(declare-fun lt!34692 () Unit!1426)

(declare-fun choose!1543 (List!1928 List!1928 List!1928) Unit!1426)

(assert (=> d!28473 (= lt!34692 (choose!1543 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!28473 (isPrefix!94 totalInput!1363 totalInput!1363)))

(assert (=> d!28473 (= (lemmaIsPrefixSameLengthThenSameList!22 totalInput!1363 testedP!367 totalInput!1363) lt!34692)))

(declare-fun bs!11866 () Bool)

(assert (= bs!11866 d!28473))

(declare-fun m!105160 () Bool)

(assert (=> bs!11866 m!105160))

(assert (=> bs!11866 m!105096))

(assert (=> b!117045 d!28473))

(declare-fun d!28475 () Bool)

(assert (=> d!28475 (= (valid!338 cache!470) (validCacheMap!19 (cache!821 cache!470)))))

(declare-fun bs!11867 () Bool)

(assert (= bs!11867 d!28475))

(assert (=> bs!11867 m!105150))

(assert (=> b!117044 d!28475))

(declare-fun d!28477 () Bool)

(assert (=> d!28477 (<= (size!1742 testedP!367) (size!1742 totalInput!1363))))

(declare-fun lt!34695 () Unit!1426)

(declare-fun choose!1544 (List!1928 List!1928) Unit!1426)

(assert (=> d!28477 (= lt!34695 (choose!1544 testedP!367 totalInput!1363))))

(assert (=> d!28477 (isPrefix!94 testedP!367 totalInput!1363)))

(assert (=> d!28477 (= (lemmaIsPrefixThenSmallerEqSize!22 testedP!367 totalInput!1363) lt!34695)))

(declare-fun bs!11868 () Bool)

(assert (= bs!11868 d!28477))

(assert (=> bs!11868 m!105108))

(assert (=> bs!11868 m!105100))

(declare-fun m!105162 () Bool)

(assert (=> bs!11868 m!105162))

(assert (=> bs!11868 m!105132))

(assert (=> b!117040 d!28477))

(declare-fun d!28479 () Bool)

(declare-fun lt!34698 () Int)

(assert (=> d!28479 (>= lt!34698 0)))

(declare-fun e!66611 () Int)

(assert (=> d!28479 (= lt!34698 e!66611)))

(declare-fun c!26694 () Bool)

(assert (=> d!28479 (= c!26694 ((_ is Nil!1922) totalInput!1363))))

(assert (=> d!28479 (= (size!1742 totalInput!1363) lt!34698)))

(declare-fun b!117101 () Bool)

(assert (=> b!117101 (= e!66611 0)))

(declare-fun b!117102 () Bool)

(assert (=> b!117102 (= e!66611 (+ 1 (size!1742 (t!22405 totalInput!1363))))))

(assert (= (and d!28479 c!26694) b!117101))

(assert (= (and d!28479 (not c!26694)) b!117102))

(declare-fun m!105164 () Bool)

(assert (=> b!117102 m!105164))

(assert (=> b!117029 d!28479))

(declare-fun d!28481 () Bool)

(declare-fun e!66613 () Bool)

(assert (=> d!28481 e!66613))

(declare-fun res!55514 () Bool)

(assert (=> d!28481 (=> res!55514 e!66613)))

(declare-fun lt!34699 () Bool)

(assert (=> d!28481 (= res!55514 (not lt!34699))))

(declare-fun e!66612 () Bool)

(assert (=> d!28481 (= lt!34699 e!66612)))

(declare-fun res!55516 () Bool)

(assert (=> d!28481 (=> res!55516 e!66612)))

(assert (=> d!28481 (= res!55516 ((_ is Nil!1922) testedP!367))))

(assert (=> d!28481 (= (isPrefix!94 testedP!367 totalInput!1363) lt!34699)))

(declare-fun b!117105 () Bool)

(declare-fun e!66614 () Bool)

(assert (=> b!117105 (= e!66614 (isPrefix!94 (tail!222 testedP!367) (tail!222 totalInput!1363)))))

(declare-fun b!117103 () Bool)

(assert (=> b!117103 (= e!66612 e!66614)))

(declare-fun res!55515 () Bool)

(assert (=> b!117103 (=> (not res!55515) (not e!66614))))

(assert (=> b!117103 (= res!55515 (not ((_ is Nil!1922) totalInput!1363)))))

(declare-fun b!117104 () Bool)

(declare-fun res!55517 () Bool)

(assert (=> b!117104 (=> (not res!55517) (not e!66614))))

(assert (=> b!117104 (= res!55517 (= (head!486 testedP!367) (head!486 totalInput!1363)))))

(declare-fun b!117106 () Bool)

(assert (=> b!117106 (= e!66613 (>= (size!1742 totalInput!1363) (size!1742 testedP!367)))))

(assert (= (and d!28481 (not res!55516)) b!117103))

(assert (= (and b!117103 res!55515) b!117104))

(assert (= (and b!117104 res!55517) b!117105))

(assert (= (and d!28481 (not res!55514)) b!117106))

(declare-fun m!105166 () Bool)

(assert (=> b!117105 m!105166))

(assert (=> b!117105 m!105154))

(assert (=> b!117105 m!105166))

(assert (=> b!117105 m!105154))

(declare-fun m!105168 () Bool)

(assert (=> b!117105 m!105168))

(declare-fun m!105170 () Bool)

(assert (=> b!117104 m!105170))

(assert (=> b!117104 m!105158))

(assert (=> b!117106 m!105100))

(assert (=> b!117106 m!105108))

(assert (=> b!117047 d!28481))

(declare-fun d!28483 () Bool)

(declare-fun e!66616 () Bool)

(assert (=> d!28483 e!66616))

(declare-fun res!55518 () Bool)

(assert (=> d!28483 (=> res!55518 e!66616)))

(declare-fun lt!34700 () Bool)

(assert (=> d!28483 (= res!55518 (not lt!34700))))

(declare-fun e!66615 () Bool)

(assert (=> d!28483 (= lt!34700 e!66615)))

(declare-fun res!55520 () Bool)

(assert (=> d!28483 (=> res!55520 e!66615)))

(assert (=> d!28483 (= res!55520 ((_ is Nil!1922) testedP!367))))

(assert (=> d!28483 (= (isPrefix!94 testedP!367 lt!34667) lt!34700)))

(declare-fun b!117109 () Bool)

(declare-fun e!66617 () Bool)

(assert (=> b!117109 (= e!66617 (isPrefix!94 (tail!222 testedP!367) (tail!222 lt!34667)))))

(declare-fun b!117107 () Bool)

(assert (=> b!117107 (= e!66615 e!66617)))

(declare-fun res!55519 () Bool)

(assert (=> b!117107 (=> (not res!55519) (not e!66617))))

(assert (=> b!117107 (= res!55519 (not ((_ is Nil!1922) lt!34667)))))

(declare-fun b!117108 () Bool)

(declare-fun res!55521 () Bool)

(assert (=> b!117108 (=> (not res!55521) (not e!66617))))

(assert (=> b!117108 (= res!55521 (= (head!486 testedP!367) (head!486 lt!34667)))))

(declare-fun b!117110 () Bool)

(assert (=> b!117110 (= e!66616 (>= (size!1742 lt!34667) (size!1742 testedP!367)))))

(assert (= (and d!28483 (not res!55520)) b!117107))

(assert (= (and b!117107 res!55519) b!117108))

(assert (= (and b!117108 res!55521) b!117109))

(assert (= (and d!28483 (not res!55518)) b!117110))

(assert (=> b!117109 m!105166))

(declare-fun m!105172 () Bool)

(assert (=> b!117109 m!105172))

(assert (=> b!117109 m!105166))

(assert (=> b!117109 m!105172))

(declare-fun m!105174 () Bool)

(assert (=> b!117109 m!105174))

(assert (=> b!117108 m!105170))

(declare-fun m!105176 () Bool)

(assert (=> b!117108 m!105176))

(declare-fun m!105178 () Bool)

(assert (=> b!117110 m!105178))

(assert (=> b!117110 m!105108))

(assert (=> b!117047 d!28483))

(declare-fun d!28485 () Bool)

(assert (=> d!28485 (isPrefix!94 testedP!367 (++!347 testedP!367 testedSuffix!285))))

(declare-fun lt!34703 () Unit!1426)

(declare-fun choose!1545 (List!1928 List!1928) Unit!1426)

(assert (=> d!28485 (= lt!34703 (choose!1545 testedP!367 testedSuffix!285))))

(assert (=> d!28485 (= (lemmaConcatTwoListThenFirstIsPrefix!40 testedP!367 testedSuffix!285) lt!34703)))

(declare-fun bs!11869 () Bool)

(assert (= bs!11869 d!28485))

(assert (=> bs!11869 m!105110))

(assert (=> bs!11869 m!105110))

(declare-fun m!105180 () Bool)

(assert (=> bs!11869 m!105180))

(declare-fun m!105182 () Bool)

(assert (=> bs!11869 m!105182))

(assert (=> b!117047 d!28485))

(declare-fun d!28487 () Bool)

(declare-fun lt!34704 () Int)

(assert (=> d!28487 (>= lt!34704 0)))

(declare-fun e!66618 () Int)

(assert (=> d!28487 (= lt!34704 e!66618)))

(declare-fun c!26695 () Bool)

(assert (=> d!28487 (= c!26695 ((_ is Nil!1922) testedP!367))))

(assert (=> d!28487 (= (size!1742 testedP!367) lt!34704)))

(declare-fun b!117111 () Bool)

(assert (=> b!117111 (= e!66618 0)))

(declare-fun b!117112 () Bool)

(assert (=> b!117112 (= e!66618 (+ 1 (size!1742 (t!22405 testedP!367))))))

(assert (= (and d!28487 c!26695) b!117111))

(assert (= (and d!28487 (not c!26695)) b!117112))

(declare-fun m!105184 () Bool)

(assert (=> b!117112 m!105184))

(assert (=> b!117038 d!28487))

(declare-fun b!117121 () Bool)

(declare-fun e!66623 () List!1928)

(assert (=> b!117121 (= e!66623 lt!34671)))

(declare-fun b!117124 () Bool)

(declare-fun lt!34707 () List!1928)

(declare-fun e!66624 () Bool)

(assert (=> b!117124 (= e!66624 (or (not (= lt!34671 Nil!1922)) (= lt!34707 lt!34682)))))

(declare-fun b!117123 () Bool)

(declare-fun res!55527 () Bool)

(assert (=> b!117123 (=> (not res!55527) (not e!66624))))

(assert (=> b!117123 (= res!55527 (= (size!1742 lt!34707) (+ (size!1742 lt!34682) (size!1742 lt!34671))))))

(declare-fun d!28489 () Bool)

(assert (=> d!28489 e!66624))

(declare-fun res!55526 () Bool)

(assert (=> d!28489 (=> (not res!55526) (not e!66624))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!217 (List!1928) (InoxSet C!1936))

(assert (=> d!28489 (= res!55526 (= (content!217 lt!34707) ((_ map or) (content!217 lt!34682) (content!217 lt!34671))))))

(assert (=> d!28489 (= lt!34707 e!66623)))

(declare-fun c!26698 () Bool)

(assert (=> d!28489 (= c!26698 ((_ is Nil!1922) lt!34682))))

(assert (=> d!28489 (= (++!347 lt!34682 lt!34671) lt!34707)))

(declare-fun b!117122 () Bool)

(assert (=> b!117122 (= e!66623 (Cons!1922 (h!7319 lt!34682) (++!347 (t!22405 lt!34682) lt!34671)))))

(assert (= (and d!28489 c!26698) b!117121))

(assert (= (and d!28489 (not c!26698)) b!117122))

(assert (= (and d!28489 res!55526) b!117123))

(assert (= (and b!117123 res!55527) b!117124))

(declare-fun m!105186 () Bool)

(assert (=> b!117123 m!105186))

(declare-fun m!105188 () Bool)

(assert (=> b!117123 m!105188))

(declare-fun m!105190 () Bool)

(assert (=> b!117123 m!105190))

(declare-fun m!105192 () Bool)

(assert (=> d!28489 m!105192))

(declare-fun m!105194 () Bool)

(assert (=> d!28489 m!105194))

(declare-fun m!105196 () Bool)

(assert (=> d!28489 m!105196))

(declare-fun m!105198 () Bool)

(assert (=> b!117122 m!105198))

(assert (=> b!117051 d!28489))

(declare-fun d!28491 () Bool)

(assert (=> d!28491 (= (head!486 testedSuffix!285) (h!7319 testedSuffix!285))))

(assert (=> b!117051 d!28491))

(declare-fun d!28493 () Bool)

(assert (=> d!28493 (= (tail!222 testedSuffix!285) (t!22405 testedSuffix!285))))

(assert (=> b!117051 d!28493))

(declare-fun d!28495 () Bool)

(declare-fun nullableFct!15 (Regex!507) Bool)

(assert (=> d!28495 (= (nullable!71 r!15532) (nullableFct!15 r!15532))))

(declare-fun bs!11870 () Bool)

(assert (= bs!11870 d!28495))

(declare-fun m!105200 () Bool)

(assert (=> bs!11870 m!105200))

(assert (=> b!117051 d!28495))

(declare-fun d!28497 () Bool)

(assert (=> d!28497 (isPrefix!94 (++!347 testedP!367 (Cons!1922 (head!486 (getSuffix!37 totalInput!1363 testedP!367)) Nil!1922)) totalInput!1363)))

(declare-fun lt!34710 () Unit!1426)

(declare-fun choose!1546 (List!1928 List!1928) Unit!1426)

(assert (=> d!28497 (= lt!34710 (choose!1546 testedP!367 totalInput!1363))))

(assert (=> d!28497 (isPrefix!94 testedP!367 totalInput!1363)))

(assert (=> d!28497 (= (lemmaAddHeadSuffixToPrefixStillPrefix!16 testedP!367 totalInput!1363) lt!34710)))

(declare-fun bs!11871 () Bool)

(assert (= bs!11871 d!28497))

(declare-fun m!105202 () Bool)

(assert (=> bs!11871 m!105202))

(declare-fun m!105204 () Bool)

(assert (=> bs!11871 m!105204))

(declare-fun m!105206 () Bool)

(assert (=> bs!11871 m!105206))

(assert (=> bs!11871 m!105202))

(assert (=> bs!11871 m!105132))

(assert (=> bs!11871 m!105088))

(declare-fun m!105208 () Bool)

(assert (=> bs!11871 m!105208))

(assert (=> bs!11871 m!105088))

(assert (=> b!117051 d!28497))

(declare-fun d!28499 () Bool)

(assert (=> d!28499 (= (++!347 (++!347 testedP!367 (Cons!1922 lt!34673 Nil!1922)) lt!34671) totalInput!1363)))

(declare-fun lt!34713 () Unit!1426)

(declare-fun choose!1547 (List!1928 C!1936 List!1928 List!1928) Unit!1426)

(assert (=> d!28499 (= lt!34713 (choose!1547 testedP!367 lt!34673 lt!34671 totalInput!1363))))

(assert (=> d!28499 (= (++!347 testedP!367 (Cons!1922 lt!34673 lt!34671)) totalInput!1363)))

(assert (=> d!28499 (= (lemmaMoveElementToOtherListKeepsConcatEq!12 testedP!367 lt!34673 lt!34671 totalInput!1363) lt!34713)))

(declare-fun bs!11872 () Bool)

(assert (= bs!11872 d!28499))

(assert (=> bs!11872 m!105126))

(assert (=> bs!11872 m!105126))

(declare-fun m!105210 () Bool)

(assert (=> bs!11872 m!105210))

(declare-fun m!105212 () Bool)

(assert (=> bs!11872 m!105212))

(declare-fun m!105214 () Bool)

(assert (=> bs!11872 m!105214))

(assert (=> b!117051 d!28499))

(declare-fun d!28501 () Bool)

(declare-fun e!66626 () Bool)

(assert (=> d!28501 e!66626))

(declare-fun res!55528 () Bool)

(assert (=> d!28501 (=> res!55528 e!66626)))

(declare-fun lt!34714 () Bool)

(assert (=> d!28501 (= res!55528 (not lt!34714))))

(declare-fun e!66625 () Bool)

(assert (=> d!28501 (= lt!34714 e!66625)))

(declare-fun res!55530 () Bool)

(assert (=> d!28501 (=> res!55530 e!66625)))

(assert (=> d!28501 (= res!55530 ((_ is Nil!1922) (++!347 testedP!367 (Cons!1922 (head!486 lt!34676) Nil!1922))))))

(assert (=> d!28501 (= (isPrefix!94 (++!347 testedP!367 (Cons!1922 (head!486 lt!34676) Nil!1922)) totalInput!1363) lt!34714)))

(declare-fun e!66627 () Bool)

(declare-fun b!117127 () Bool)

(assert (=> b!117127 (= e!66627 (isPrefix!94 (tail!222 (++!347 testedP!367 (Cons!1922 (head!486 lt!34676) Nil!1922))) (tail!222 totalInput!1363)))))

(declare-fun b!117125 () Bool)

(assert (=> b!117125 (= e!66625 e!66627)))

(declare-fun res!55529 () Bool)

(assert (=> b!117125 (=> (not res!55529) (not e!66627))))

(assert (=> b!117125 (= res!55529 (not ((_ is Nil!1922) totalInput!1363)))))

(declare-fun b!117126 () Bool)

(declare-fun res!55531 () Bool)

(assert (=> b!117126 (=> (not res!55531) (not e!66627))))

(assert (=> b!117126 (= res!55531 (= (head!486 (++!347 testedP!367 (Cons!1922 (head!486 lt!34676) Nil!1922))) (head!486 totalInput!1363)))))

(declare-fun b!117128 () Bool)

(assert (=> b!117128 (= e!66626 (>= (size!1742 totalInput!1363) (size!1742 (++!347 testedP!367 (Cons!1922 (head!486 lt!34676) Nil!1922)))))))

(assert (= (and d!28501 (not res!55530)) b!117125))

(assert (= (and b!117125 res!55529) b!117126))

(assert (= (and b!117126 res!55531) b!117127))

(assert (= (and d!28501 (not res!55528)) b!117128))

(assert (=> b!117127 m!105112))

(declare-fun m!105216 () Bool)

(assert (=> b!117127 m!105216))

(assert (=> b!117127 m!105154))

(assert (=> b!117127 m!105216))

(assert (=> b!117127 m!105154))

(declare-fun m!105218 () Bool)

(assert (=> b!117127 m!105218))

(assert (=> b!117126 m!105112))

(declare-fun m!105220 () Bool)

(assert (=> b!117126 m!105220))

(assert (=> b!117126 m!105158))

(assert (=> b!117128 m!105100))

(assert (=> b!117128 m!105112))

(declare-fun m!105222 () Bool)

(assert (=> b!117128 m!105222))

(assert (=> b!117051 d!28501))

(declare-fun d!28503 () Bool)

(assert (=> d!28503 (= (head!486 lt!34676) (h!7319 lt!34676))))

(assert (=> b!117051 d!28503))

(declare-fun b!117129 () Bool)

(declare-fun e!66628 () List!1928)

(assert (=> b!117129 (= e!66628 (Cons!1922 lt!34673 Nil!1922))))

(declare-fun lt!34715 () List!1928)

(declare-fun e!66629 () Bool)

(declare-fun b!117132 () Bool)

(assert (=> b!117132 (= e!66629 (or (not (= (Cons!1922 lt!34673 Nil!1922) Nil!1922)) (= lt!34715 testedP!367)))))

(declare-fun b!117131 () Bool)

(declare-fun res!55533 () Bool)

(assert (=> b!117131 (=> (not res!55533) (not e!66629))))

(assert (=> b!117131 (= res!55533 (= (size!1742 lt!34715) (+ (size!1742 testedP!367) (size!1742 (Cons!1922 lt!34673 Nil!1922)))))))

(declare-fun d!28505 () Bool)

(assert (=> d!28505 e!66629))

(declare-fun res!55532 () Bool)

(assert (=> d!28505 (=> (not res!55532) (not e!66629))))

(assert (=> d!28505 (= res!55532 (= (content!217 lt!34715) ((_ map or) (content!217 testedP!367) (content!217 (Cons!1922 lt!34673 Nil!1922)))))))

(assert (=> d!28505 (= lt!34715 e!66628)))

(declare-fun c!26699 () Bool)

(assert (=> d!28505 (= c!26699 ((_ is Nil!1922) testedP!367))))

(assert (=> d!28505 (= (++!347 testedP!367 (Cons!1922 lt!34673 Nil!1922)) lt!34715)))

(declare-fun b!117130 () Bool)

(assert (=> b!117130 (= e!66628 (Cons!1922 (h!7319 testedP!367) (++!347 (t!22405 testedP!367) (Cons!1922 lt!34673 Nil!1922))))))

(assert (= (and d!28505 c!26699) b!117129))

(assert (= (and d!28505 (not c!26699)) b!117130))

(assert (= (and d!28505 res!55532) b!117131))

(assert (= (and b!117131 res!55533) b!117132))

(declare-fun m!105224 () Bool)

(assert (=> b!117131 m!105224))

(assert (=> b!117131 m!105108))

(declare-fun m!105226 () Bool)

(assert (=> b!117131 m!105226))

(declare-fun m!105228 () Bool)

(assert (=> d!28505 m!105228))

(declare-fun m!105230 () Bool)

(assert (=> d!28505 m!105230))

(declare-fun m!105232 () Bool)

(assert (=> d!28505 m!105232))

(declare-fun m!105234 () Bool)

(assert (=> b!117130 m!105234))

(assert (=> b!117051 d!28505))

(declare-fun b!117133 () Bool)

(declare-fun e!66630 () List!1928)

(assert (=> b!117133 (= e!66630 (Cons!1922 (head!486 lt!34676) Nil!1922))))

(declare-fun b!117136 () Bool)

(declare-fun lt!34716 () List!1928)

(declare-fun e!66631 () Bool)

(assert (=> b!117136 (= e!66631 (or (not (= (Cons!1922 (head!486 lt!34676) Nil!1922) Nil!1922)) (= lt!34716 testedP!367)))))

(declare-fun b!117135 () Bool)

(declare-fun res!55535 () Bool)

(assert (=> b!117135 (=> (not res!55535) (not e!66631))))

(assert (=> b!117135 (= res!55535 (= (size!1742 lt!34716) (+ (size!1742 testedP!367) (size!1742 (Cons!1922 (head!486 lt!34676) Nil!1922)))))))

(declare-fun d!28507 () Bool)

(assert (=> d!28507 e!66631))

(declare-fun res!55534 () Bool)

(assert (=> d!28507 (=> (not res!55534) (not e!66631))))

(assert (=> d!28507 (= res!55534 (= (content!217 lt!34716) ((_ map or) (content!217 testedP!367) (content!217 (Cons!1922 (head!486 lt!34676) Nil!1922)))))))

(assert (=> d!28507 (= lt!34716 e!66630)))

(declare-fun c!26700 () Bool)

(assert (=> d!28507 (= c!26700 ((_ is Nil!1922) testedP!367))))

(assert (=> d!28507 (= (++!347 testedP!367 (Cons!1922 (head!486 lt!34676) Nil!1922)) lt!34716)))

(declare-fun b!117134 () Bool)

(assert (=> b!117134 (= e!66630 (Cons!1922 (h!7319 testedP!367) (++!347 (t!22405 testedP!367) (Cons!1922 (head!486 lt!34676) Nil!1922))))))

(assert (= (and d!28507 c!26700) b!117133))

(assert (= (and d!28507 (not c!26700)) b!117134))

(assert (= (and d!28507 res!55534) b!117135))

(assert (= (and b!117135 res!55535) b!117136))

(declare-fun m!105236 () Bool)

(assert (=> b!117135 m!105236))

(assert (=> b!117135 m!105108))

(declare-fun m!105238 () Bool)

(assert (=> b!117135 m!105238))

(declare-fun m!105240 () Bool)

(assert (=> d!28507 m!105240))

(assert (=> d!28507 m!105230))

(declare-fun m!105242 () Bool)

(assert (=> d!28507 m!105242))

(declare-fun m!105244 () Bool)

(assert (=> b!117134 m!105244))

(assert (=> b!117051 d!28507))

(declare-fun b!117158 () Bool)

(declare-fun e!66643 () Regex!507)

(declare-fun e!66644 () Regex!507)

(assert (=> b!117158 (= e!66643 e!66644)))

(declare-fun c!26714 () Bool)

(assert (=> b!117158 (= c!26714 ((_ is Star!507) r!15532))))

(declare-fun b!117159 () Bool)

(declare-fun e!66642 () Regex!507)

(declare-fun call!4944 () Regex!507)

(assert (=> b!117159 (= e!66642 (Union!507 (Concat!891 call!4944 (regTwo!1526 r!15532)) EmptyLang!507))))

(declare-fun b!117160 () Bool)

(declare-fun call!4945 () Regex!507)

(declare-fun call!4946 () Regex!507)

(assert (=> b!117160 (= e!66643 (Union!507 call!4945 call!4946))))

(declare-fun c!26715 () Bool)

(declare-fun bm!4939 () Bool)

(assert (=> bm!4939 (= call!4945 (derivativeStep!43 (ite c!26715 (regOne!1527 r!15532) (regTwo!1526 r!15532)) lt!34673))))

(declare-fun b!117161 () Bool)

(declare-fun c!26712 () Bool)

(assert (=> b!117161 (= c!26712 (nullable!71 (regOne!1526 r!15532)))))

(assert (=> b!117161 (= e!66644 e!66642)))

(declare-fun b!117162 () Bool)

(declare-fun call!4947 () Regex!507)

(assert (=> b!117162 (= e!66644 (Concat!891 call!4947 r!15532))))

(declare-fun b!117163 () Bool)

(assert (=> b!117163 (= e!66642 (Union!507 (Concat!891 call!4944 (regTwo!1526 r!15532)) call!4945))))

(declare-fun b!117164 () Bool)

(assert (=> b!117164 (= c!26715 ((_ is Union!507) r!15532))))

(declare-fun e!66646 () Regex!507)

(assert (=> b!117164 (= e!66646 e!66643)))

(declare-fun b!117165 () Bool)

(declare-fun e!66645 () Regex!507)

(assert (=> b!117165 (= e!66645 EmptyLang!507)))

(declare-fun bm!4940 () Bool)

(assert (=> bm!4940 (= call!4944 call!4947)))

(declare-fun bm!4941 () Bool)

(assert (=> bm!4941 (= call!4947 call!4946)))

(declare-fun b!117157 () Bool)

(assert (=> b!117157 (= e!66645 e!66646)))

(declare-fun c!26713 () Bool)

(assert (=> b!117157 (= c!26713 ((_ is ElementMatch!507) r!15532))))

(declare-fun d!28509 () Bool)

(declare-fun lt!34719 () Regex!507)

(assert (=> d!28509 (validRegex!114 lt!34719)))

(assert (=> d!28509 (= lt!34719 e!66645)))

(declare-fun c!26711 () Bool)

(assert (=> d!28509 (= c!26711 (or ((_ is EmptyExpr!507) r!15532) ((_ is EmptyLang!507) r!15532)))))

(assert (=> d!28509 (validRegex!114 r!15532)))

(assert (=> d!28509 (= (derivativeStep!43 r!15532 lt!34673) lt!34719)))

(declare-fun b!117166 () Bool)

(assert (=> b!117166 (= e!66646 (ite (= lt!34673 (c!26685 r!15532)) EmptyExpr!507 EmptyLang!507))))

(declare-fun bm!4942 () Bool)

(assert (=> bm!4942 (= call!4946 (derivativeStep!43 (ite c!26715 (regTwo!1527 r!15532) (ite c!26714 (reg!836 r!15532) (regOne!1526 r!15532))) lt!34673))))

(assert (= (and d!28509 c!26711) b!117165))

(assert (= (and d!28509 (not c!26711)) b!117157))

(assert (= (and b!117157 c!26713) b!117166))

(assert (= (and b!117157 (not c!26713)) b!117164))

(assert (= (and b!117164 c!26715) b!117160))

(assert (= (and b!117164 (not c!26715)) b!117158))

(assert (= (and b!117158 c!26714) b!117162))

(assert (= (and b!117158 (not c!26714)) b!117161))

(assert (= (and b!117161 c!26712) b!117163))

(assert (= (and b!117161 (not c!26712)) b!117159))

(assert (= (or b!117163 b!117159) bm!4940))

(assert (= (or b!117162 bm!4940) bm!4941))

(assert (= (or b!117160 bm!4941) bm!4942))

(assert (= (or b!117160 b!117163) bm!4939))

(declare-fun m!105246 () Bool)

(assert (=> bm!4939 m!105246))

(declare-fun m!105248 () Bool)

(assert (=> b!117161 m!105248))

(declare-fun m!105250 () Bool)

(assert (=> d!28509 m!105250))

(assert (=> d!28509 m!105090))

(declare-fun m!105252 () Bool)

(assert (=> bm!4942 m!105252))

(assert (=> b!117031 d!28509))

(declare-fun b!117167 () Bool)

(declare-fun e!66647 () List!1928)

(assert (=> b!117167 (= e!66647 testedSuffix!285)))

(declare-fun e!66648 () Bool)

(declare-fun b!117170 () Bool)

(declare-fun lt!34720 () List!1928)

(assert (=> b!117170 (= e!66648 (or (not (= testedSuffix!285 Nil!1922)) (= lt!34720 testedP!367)))))

(declare-fun b!117169 () Bool)

(declare-fun res!55537 () Bool)

(assert (=> b!117169 (=> (not res!55537) (not e!66648))))

(assert (=> b!117169 (= res!55537 (= (size!1742 lt!34720) (+ (size!1742 testedP!367) (size!1742 testedSuffix!285))))))

(declare-fun d!28511 () Bool)

(assert (=> d!28511 e!66648))

(declare-fun res!55536 () Bool)

(assert (=> d!28511 (=> (not res!55536) (not e!66648))))

(assert (=> d!28511 (= res!55536 (= (content!217 lt!34720) ((_ map or) (content!217 testedP!367) (content!217 testedSuffix!285))))))

(assert (=> d!28511 (= lt!34720 e!66647)))

(declare-fun c!26716 () Bool)

(assert (=> d!28511 (= c!26716 ((_ is Nil!1922) testedP!367))))

(assert (=> d!28511 (= (++!347 testedP!367 testedSuffix!285) lt!34720)))

(declare-fun b!117168 () Bool)

(assert (=> b!117168 (= e!66647 (Cons!1922 (h!7319 testedP!367) (++!347 (t!22405 testedP!367) testedSuffix!285)))))

(assert (= (and d!28511 c!26716) b!117167))

(assert (= (and d!28511 (not c!26716)) b!117168))

(assert (= (and d!28511 res!55536) b!117169))

(assert (= (and b!117169 res!55537) b!117170))

(declare-fun m!105254 () Bool)

(assert (=> b!117169 m!105254))

(assert (=> b!117169 m!105108))

(declare-fun m!105256 () Bool)

(assert (=> b!117169 m!105256))

(declare-fun m!105258 () Bool)

(assert (=> d!28511 m!105258))

(assert (=> d!28511 m!105230))

(declare-fun m!105260 () Bool)

(assert (=> d!28511 m!105260))

(declare-fun m!105262 () Bool)

(assert (=> b!117168 m!105262))

(assert (=> b!117043 d!28511))

(declare-fun d!28513 () Bool)

(declare-fun lostCauseFct!24 (Regex!507) Bool)

(assert (=> d!28513 (= (lostCause!48 r!15532) (lostCauseFct!24 r!15532))))

(declare-fun bs!11873 () Bool)

(assert (= bs!11873 d!28513))

(declare-fun m!105264 () Bool)

(assert (=> bs!11873 m!105264))

(assert (=> b!117033 d!28513))

(declare-fun d!28515 () Bool)

(assert (=> d!28515 (= testedSuffix!285 lt!34676)))

(declare-fun lt!34723 () Unit!1426)

(declare-fun choose!1548 (List!1928 List!1928 List!1928 List!1928 List!1928) Unit!1426)

(assert (=> d!28515 (= lt!34723 (choose!1548 testedP!367 testedSuffix!285 testedP!367 lt!34676 totalInput!1363))))

(assert (=> d!28515 (isPrefix!94 testedP!367 totalInput!1363)))

(assert (=> d!28515 (= (lemmaSamePrefixThenSameSuffix!36 testedP!367 testedSuffix!285 testedP!367 lt!34676 totalInput!1363) lt!34723)))

(declare-fun bs!11874 () Bool)

(assert (= bs!11874 d!28515))

(declare-fun m!105266 () Bool)

(assert (=> bs!11874 m!105266))

(assert (=> bs!11874 m!105132))

(assert (=> b!117033 d!28515))

(declare-fun d!28517 () Bool)

(declare-fun lt!34726 () List!1928)

(assert (=> d!28517 (= (++!347 testedP!367 lt!34726) totalInput!1363)))

(declare-fun e!66651 () List!1928)

(assert (=> d!28517 (= lt!34726 e!66651)))

(declare-fun c!26719 () Bool)

(assert (=> d!28517 (= c!26719 ((_ is Cons!1922) testedP!367))))

(assert (=> d!28517 (>= (size!1742 totalInput!1363) (size!1742 testedP!367))))

(assert (=> d!28517 (= (getSuffix!37 totalInput!1363 testedP!367) lt!34726)))

(declare-fun b!117175 () Bool)

(assert (=> b!117175 (= e!66651 (getSuffix!37 (tail!222 totalInput!1363) (t!22405 testedP!367)))))

(declare-fun b!117176 () Bool)

(assert (=> b!117176 (= e!66651 totalInput!1363)))

(assert (= (and d!28517 c!26719) b!117175))

(assert (= (and d!28517 (not c!26719)) b!117176))

(declare-fun m!105268 () Bool)

(assert (=> d!28517 m!105268))

(assert (=> d!28517 m!105100))

(assert (=> d!28517 m!105108))

(assert (=> b!117175 m!105154))

(assert (=> b!117175 m!105154))

(declare-fun m!105270 () Bool)

(assert (=> b!117175 m!105270))

(assert (=> b!117033 d!28517))

(declare-fun d!28519 () Bool)

(assert (=> d!28519 (= (array_inv!451 (_keys!664 (v!13277 (underlying!945 (v!13278 (underlying!946 (cache!821 cache!470))))))) (bvsge (size!1743 (_keys!664 (v!13277 (underlying!945 (v!13278 (underlying!946 (cache!821 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!117052 d!28519))

(declare-fun d!28521 () Bool)

(assert (=> d!28521 (= (array_inv!452 (_values!651 (v!13277 (underlying!945 (v!13278 (underlying!946 (cache!821 cache!470))))))) (bvsge (size!1744 (_values!651 (v!13277 (underlying!945 (v!13278 (underlying!946 (cache!821 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!117052 d!28521))

(declare-fun b!117189 () Bool)

(declare-fun e!66654 () Bool)

(declare-fun tp!63979 () Bool)

(assert (=> b!117189 (= e!66654 tp!63979)))

(assert (=> b!117050 (= tp!63952 e!66654)))

(declare-fun b!117190 () Bool)

(declare-fun tp!63977 () Bool)

(declare-fun tp!63978 () Bool)

(assert (=> b!117190 (= e!66654 (and tp!63977 tp!63978))))

(declare-fun b!117187 () Bool)

(assert (=> b!117187 (= e!66654 tp_is_empty!1069)))

(declare-fun b!117188 () Bool)

(declare-fun tp!63976 () Bool)

(declare-fun tp!63975 () Bool)

(assert (=> b!117188 (= e!66654 (and tp!63976 tp!63975))))

(assert (= (and b!117050 ((_ is ElementMatch!507) (reg!836 r!15532))) b!117187))

(assert (= (and b!117050 ((_ is Concat!891) (reg!836 r!15532))) b!117188))

(assert (= (and b!117050 ((_ is Star!507) (reg!836 r!15532))) b!117189))

(assert (= (and b!117050 ((_ is Union!507) (reg!836 r!15532))) b!117190))

(declare-fun mapNonEmpty!1453 () Bool)

(declare-fun mapRes!1453 () Bool)

(declare-fun tp!63997 () Bool)

(declare-fun e!66659 () Bool)

(assert (=> mapNonEmpty!1453 (= mapRes!1453 (and tp!63997 e!66659))))

(declare-fun mapValue!1453 () List!1929)

(declare-fun mapRest!1453 () (Array (_ BitVec 32) List!1929))

(declare-fun mapKey!1453 () (_ BitVec 32))

(assert (=> mapNonEmpty!1453 (= mapRest!1450 (store mapRest!1453 mapKey!1453 mapValue!1453))))

(declare-fun mapIsEmpty!1453 () Bool)

(assert (=> mapIsEmpty!1453 mapRes!1453))

(declare-fun tp!63998 () Bool)

(declare-fun tp!63995 () Bool)

(declare-fun tp!63994 () Bool)

(declare-fun b!117197 () Bool)

(assert (=> b!117197 (= e!66659 (and tp!63998 tp_is_empty!1069 tp!63995 tp!63994))))

(declare-fun tp!63996 () Bool)

(declare-fun tp!63999 () Bool)

(declare-fun b!117198 () Bool)

(declare-fun tp!64000 () Bool)

(declare-fun e!66660 () Bool)

(assert (=> b!117198 (= e!66660 (and tp!63999 tp_is_empty!1069 tp!64000 tp!63996))))

(declare-fun condMapEmpty!1453 () Bool)

(declare-fun mapDefault!1453 () List!1929)

(assert (=> mapNonEmpty!1450 (= condMapEmpty!1453 (= mapRest!1450 ((as const (Array (_ BitVec 32) List!1929)) mapDefault!1453)))))

(assert (=> mapNonEmpty!1450 (= tp!63953 (and e!66660 mapRes!1453))))

(assert (= (and mapNonEmpty!1450 condMapEmpty!1453) mapIsEmpty!1453))

(assert (= (and mapNonEmpty!1450 (not condMapEmpty!1453)) mapNonEmpty!1453))

(assert (= (and mapNonEmpty!1453 ((_ is Cons!1923) mapValue!1453)) b!117197))

(assert (= (and mapNonEmpty!1450 ((_ is Cons!1923) mapDefault!1453)) b!117198))

(declare-fun m!105272 () Bool)

(assert (=> mapNonEmpty!1453 m!105272))

(declare-fun tp!64008 () Bool)

(declare-fun tp!64009 () Bool)

(declare-fun b!117203 () Bool)

(declare-fun tp!64007 () Bool)

(declare-fun e!66663 () Bool)

(assert (=> b!117203 (= e!66663 (and tp!64007 tp_is_empty!1069 tp!64008 tp!64009))))

(assert (=> mapNonEmpty!1450 (= tp!63958 e!66663)))

(assert (= (and mapNonEmpty!1450 ((_ is Cons!1923) mapValue!1450)) b!117203))

(declare-fun b!117208 () Bool)

(declare-fun e!66666 () Bool)

(declare-fun tp!64012 () Bool)

(assert (=> b!117208 (= e!66666 (and tp_is_empty!1069 tp!64012))))

(assert (=> b!117035 (= tp!63951 e!66666)))

(assert (= (and b!117035 ((_ is Cons!1922) (t!22405 totalInput!1363))) b!117208))

(declare-fun b!117211 () Bool)

(declare-fun e!66667 () Bool)

(declare-fun tp!64017 () Bool)

(assert (=> b!117211 (= e!66667 tp!64017)))

(assert (=> b!117054 (= tp!63954 e!66667)))

(declare-fun b!117212 () Bool)

(declare-fun tp!64015 () Bool)

(declare-fun tp!64016 () Bool)

(assert (=> b!117212 (= e!66667 (and tp!64015 tp!64016))))

(declare-fun b!117209 () Bool)

(assert (=> b!117209 (= e!66667 tp_is_empty!1069)))

(declare-fun b!117210 () Bool)

(declare-fun tp!64014 () Bool)

(declare-fun tp!64013 () Bool)

(assert (=> b!117210 (= e!66667 (and tp!64014 tp!64013))))

(assert (= (and b!117054 ((_ is ElementMatch!507) (regOne!1527 r!15532))) b!117209))

(assert (= (and b!117054 ((_ is Concat!891) (regOne!1527 r!15532))) b!117210))

(assert (= (and b!117054 ((_ is Star!507) (regOne!1527 r!15532))) b!117211))

(assert (= (and b!117054 ((_ is Union!507) (regOne!1527 r!15532))) b!117212))

(declare-fun b!117215 () Bool)

(declare-fun e!66668 () Bool)

(declare-fun tp!64022 () Bool)

(assert (=> b!117215 (= e!66668 tp!64022)))

(assert (=> b!117054 (= tp!63950 e!66668)))

(declare-fun b!117216 () Bool)

(declare-fun tp!64020 () Bool)

(declare-fun tp!64021 () Bool)

(assert (=> b!117216 (= e!66668 (and tp!64020 tp!64021))))

(declare-fun b!117213 () Bool)

(assert (=> b!117213 (= e!66668 tp_is_empty!1069)))

(declare-fun b!117214 () Bool)

(declare-fun tp!64019 () Bool)

(declare-fun tp!64018 () Bool)

(assert (=> b!117214 (= e!66668 (and tp!64019 tp!64018))))

(assert (= (and b!117054 ((_ is ElementMatch!507) (regTwo!1527 r!15532))) b!117213))

(assert (= (and b!117054 ((_ is Concat!891) (regTwo!1527 r!15532))) b!117214))

(assert (= (and b!117054 ((_ is Star!507) (regTwo!1527 r!15532))) b!117215))

(assert (= (and b!117054 ((_ is Union!507) (regTwo!1527 r!15532))) b!117216))

(declare-fun b!117219 () Bool)

(declare-fun e!66669 () Bool)

(declare-fun tp!64027 () Bool)

(assert (=> b!117219 (= e!66669 tp!64027)))

(assert (=> b!117048 (= tp!63960 e!66669)))

(declare-fun b!117220 () Bool)

(declare-fun tp!64025 () Bool)

(declare-fun tp!64026 () Bool)

(assert (=> b!117220 (= e!66669 (and tp!64025 tp!64026))))

(declare-fun b!117217 () Bool)

(assert (=> b!117217 (= e!66669 tp_is_empty!1069)))

(declare-fun b!117218 () Bool)

(declare-fun tp!64024 () Bool)

(declare-fun tp!64023 () Bool)

(assert (=> b!117218 (= e!66669 (and tp!64024 tp!64023))))

(assert (= (and b!117048 ((_ is ElementMatch!507) (regOne!1526 r!15532))) b!117217))

(assert (= (and b!117048 ((_ is Concat!891) (regOne!1526 r!15532))) b!117218))

(assert (= (and b!117048 ((_ is Star!507) (regOne!1526 r!15532))) b!117219))

(assert (= (and b!117048 ((_ is Union!507) (regOne!1526 r!15532))) b!117220))

(declare-fun b!117223 () Bool)

(declare-fun e!66670 () Bool)

(declare-fun tp!64032 () Bool)

(assert (=> b!117223 (= e!66670 tp!64032)))

(assert (=> b!117048 (= tp!63955 e!66670)))

(declare-fun b!117224 () Bool)

(declare-fun tp!64030 () Bool)

(declare-fun tp!64031 () Bool)

(assert (=> b!117224 (= e!66670 (and tp!64030 tp!64031))))

(declare-fun b!117221 () Bool)

(assert (=> b!117221 (= e!66670 tp_is_empty!1069)))

(declare-fun b!117222 () Bool)

(declare-fun tp!64029 () Bool)

(declare-fun tp!64028 () Bool)

(assert (=> b!117222 (= e!66670 (and tp!64029 tp!64028))))

(assert (= (and b!117048 ((_ is ElementMatch!507) (regTwo!1526 r!15532))) b!117221))

(assert (= (and b!117048 ((_ is Concat!891) (regTwo!1526 r!15532))) b!117222))

(assert (= (and b!117048 ((_ is Star!507) (regTwo!1526 r!15532))) b!117223))

(assert (= (and b!117048 ((_ is Union!507) (regTwo!1526 r!15532))) b!117224))

(declare-fun b!117225 () Bool)

(declare-fun e!66671 () Bool)

(declare-fun tp!64033 () Bool)

(assert (=> b!117225 (= e!66671 (and tp_is_empty!1069 tp!64033))))

(assert (=> b!117034 (= tp!63959 e!66671)))

(assert (= (and b!117034 ((_ is Cons!1922) (t!22405 testedP!367))) b!117225))

(declare-fun b!117226 () Bool)

(declare-fun e!66672 () Bool)

(declare-fun tp!64034 () Bool)

(assert (=> b!117226 (= e!66672 (and tp_is_empty!1069 tp!64034))))

(assert (=> b!117053 (= tp!63962 e!66672)))

(assert (= (and b!117053 ((_ is Cons!1922) (t!22405 testedSuffix!285))) b!117226))

(declare-fun e!66673 () Bool)

(declare-fun tp!64037 () Bool)

(declare-fun tp!64035 () Bool)

(declare-fun b!117227 () Bool)

(declare-fun tp!64036 () Bool)

(assert (=> b!117227 (= e!66673 (and tp!64035 tp_is_empty!1069 tp!64036 tp!64037))))

(assert (=> b!117039 (= tp!63964 e!66673)))

(assert (= (and b!117039 ((_ is Cons!1923) mapDefault!1450)) b!117227))

(declare-fun e!66674 () Bool)

(declare-fun b!117228 () Bool)

(declare-fun tp!64038 () Bool)

(declare-fun tp!64040 () Bool)

(declare-fun tp!64039 () Bool)

(assert (=> b!117228 (= e!66674 (and tp!64038 tp_is_empty!1069 tp!64039 tp!64040))))

(assert (=> b!117052 (= tp!63957 e!66674)))

(assert (= (and b!117052 ((_ is Cons!1923) (zeroValue!629 (v!13277 (underlying!945 (v!13278 (underlying!946 (cache!821 cache!470)))))))) b!117228))

(declare-fun e!66675 () Bool)

(declare-fun b!117229 () Bool)

(declare-fun tp!64041 () Bool)

(declare-fun tp!64043 () Bool)

(declare-fun tp!64042 () Bool)

(assert (=> b!117229 (= e!66675 (and tp!64041 tp_is_empty!1069 tp!64042 tp!64043))))

(assert (=> b!117052 (= tp!63961 e!66675)))

(assert (= (and b!117052 ((_ is Cons!1923) (minValue!629 (v!13277 (underlying!945 (v!13278 (underlying!946 (cache!821 cache!470)))))))) b!117229))

(check-sat (not d!28515) (not b!117197) (not b!117214) (not bm!4928) (not b!117203) (not b!117102) (not b!117134) (not b!117222) tp_is_empty!1069 (not b!117227) (not b!117123) (not b_next!3723) b_and!5853 (not d!28485) (not b!117198) (not b!117223) (not b!117104) (not b!117105) (not b!117168) (not b!117096) (not bm!4939) (not b!117161) (not d!28489) (not mapNonEmpty!1453) (not d!28505) (not b!117211) (not b!117075) (not d!28513) (not b!117208) (not b!117122) (not b!117094) (not d!28495) (not b!117126) (not b!117216) (not b!117219) (not b!117228) (not b!117127) (not b!117190) (not b!117095) (not bm!4929) (not d!28475) (not b!117225) (not b!117110) (not d!28517) (not d!28499) (not b!117212) (not b!117131) (not b!117218) (not bm!4942) (not b!117128) (not d!28507) (not b!117210) (not d!28509) (not b!117084) (not b!117112) (not d!28497) (not b!117130) (not b!117215) (not b!117175) (not b!117135) (not b!117189) (not b_next!3721) (not b!117226) (not b!117188) (not b!117169) (not d!28477) (not b!117229) (not b!117106) (not d!28469) b_and!5851 (not b!117108) (not d!28511) (not b!117220) (not b!117109) (not d!28473) (not b!117224))
(check-sat b_and!5853 b_and!5851 (not b_next!3723) (not b_next!3721))
