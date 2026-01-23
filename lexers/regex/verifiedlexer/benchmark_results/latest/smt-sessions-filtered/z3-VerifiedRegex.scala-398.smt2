; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11982 () Bool)

(assert start!11982)

(declare-fun b!117557 () Bool)

(declare-fun b_free!3737 () Bool)

(declare-fun b_next!3737 () Bool)

(assert (=> b!117557 (= b_free!3737 (not b_next!3737))))

(declare-fun tp!64212 () Bool)

(declare-fun b_and!5867 () Bool)

(assert (=> b!117557 (= tp!64212 b_and!5867)))

(declare-fun b!117555 () Bool)

(declare-fun b_free!3739 () Bool)

(declare-fun b_next!3739 () Bool)

(assert (=> b!117555 (= b_free!3739 (not b_next!3739))))

(declare-fun tp!64214 () Bool)

(declare-fun b_and!5869 () Bool)

(assert (=> b!117555 (= tp!64214 b_and!5869)))

(declare-fun b!117532 () Bool)

(declare-fun e!66920 () Bool)

(declare-fun e!66925 () Bool)

(assert (=> b!117532 (= e!66920 e!66925)))

(declare-fun b!117533 () Bool)

(declare-fun e!66928 () Bool)

(declare-fun e!66924 () Bool)

(assert (=> b!117533 (= e!66928 e!66924)))

(declare-fun b!117534 () Bool)

(declare-fun e!66932 () Bool)

(declare-fun e!66918 () Bool)

(assert (=> b!117534 (= e!66932 e!66918)))

(declare-fun res!55674 () Bool)

(assert (=> b!117534 (=> (not res!55674) (not e!66918))))

(declare-datatypes ((C!1944 0))(
  ( (C!1945 (val!698 Int)) )
))
(declare-datatypes ((List!1936 0))(
  ( (Nil!1930) (Cons!1930 (h!7327 C!1944) (t!22413 List!1936)) )
))
(declare-fun lt!34920 () List!1936)

(declare-fun totalInput!1363 () List!1936)

(assert (=> b!117534 (= res!55674 (= lt!34920 totalInput!1363))))

(declare-fun testedP!367 () List!1936)

(declare-fun testedSuffix!285 () List!1936)

(declare-fun ++!350 (List!1936 List!1936) List!1936)

(assert (=> b!117534 (= lt!34920 (++!350 testedP!367 testedSuffix!285))))

(declare-fun b!117535 () Bool)

(declare-fun e!66921 () Bool)

(declare-fun tp_is_empty!1077 () Bool)

(assert (=> b!117535 (= e!66921 tp_is_empty!1077)))

(declare-fun b!117536 () Bool)

(declare-fun res!55666 () Bool)

(declare-fun e!66931 () Bool)

(assert (=> b!117536 (=> res!55666 e!66931)))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!34914 () List!1936)

(declare-fun size!1754 (List!1936) Int)

(assert (=> b!117536 (= res!55666 (not (= (+ 1 testedPSize!285) (size!1754 lt!34914))))))

(declare-fun b!117537 () Bool)

(declare-fun res!55664 () Bool)

(assert (=> b!117537 (=> (not res!55664) (not e!66932))))

(declare-datatypes ((Regex!511 0))(
  ( (ElementMatch!511 (c!26735 C!1944)) (Concat!895 (regOne!1534 Regex!511) (regTwo!1534 Regex!511)) (EmptyExpr!511) (Star!511 (reg!840 Regex!511)) (EmptyLang!511) (Union!511 (regOne!1535 Regex!511) (regTwo!1535 Regex!511)) )
))
(declare-datatypes ((Hashable!373 0))(
  ( (HashableExt!372 (__x!2056 Int)) )
))
(declare-datatypes ((tuple2!2166 0))(
  ( (tuple2!2167 (_1!1293 Regex!511) (_2!1293 C!1944)) )
))
(declare-datatypes ((tuple2!2168 0))(
  ( (tuple2!2169 (_1!1294 tuple2!2166) (_2!1294 Regex!511)) )
))
(declare-datatypes ((List!1937 0))(
  ( (Nil!1931) (Cons!1931 (h!7328 tuple2!2168) (t!22414 List!1937)) )
))
(declare-datatypes ((array!1369 0))(
  ( (array!1370 (arr!638 (Array (_ BitVec 32) (_ BitVec 64))) (size!1755 (_ BitVec 32))) )
))
(declare-datatypes ((array!1371 0))(
  ( (array!1372 (arr!639 (Array (_ BitVec 32) List!1937)) (size!1756 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!754 0))(
  ( (LongMapFixedSize!755 (defaultEntry!716 Int) (mask!1300 (_ BitVec 32)) (extraKeys!623 (_ BitVec 32)) (zeroValue!633 List!1937) (minValue!633 List!1937) (_size!887 (_ BitVec 32)) (_keys!668 array!1369) (_values!655 array!1371) (_vacant!438 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1497 0))(
  ( (Cell!1498 (v!13285 LongMapFixedSize!754)) )
))
(declare-datatypes ((MutLongMap!377 0))(
  ( (LongMap!377 (underlying!953 Cell!1497)) (MutLongMapExt!376 (__x!2057 Int)) )
))
(declare-datatypes ((Cell!1499 0))(
  ( (Cell!1500 (v!13286 MutLongMap!377)) )
))
(declare-datatypes ((MutableMap!373 0))(
  ( (MutableMapExt!372 (__x!2058 Int)) (HashMap!373 (underlying!954 Cell!1499) (hashF!2249 Hashable!373) (_size!888 (_ BitVec 32)) (defaultValue!522 Int)) )
))
(declare-datatypes ((Cache!182 0))(
  ( (Cache!183 (cache!825 MutableMap!373)) )
))
(declare-fun cache!470 () Cache!182)

(declare-fun valid!341 (Cache!182) Bool)

(assert (=> b!117537 (= res!55664 (valid!341 cache!470))))

(declare-fun res!55669 () Bool)

(assert (=> start!11982 (=> (not res!55669) (not e!66932))))

(declare-fun r!15532 () Regex!511)

(declare-fun validRegex!118 (Regex!511) Bool)

(assert (=> start!11982 (= res!55669 (validRegex!118 r!15532))))

(assert (=> start!11982 e!66932))

(assert (=> start!11982 true))

(assert (=> start!11982 e!66921))

(declare-fun e!66927 () Bool)

(assert (=> start!11982 e!66927))

(declare-fun e!66919 () Bool)

(assert (=> start!11982 e!66919))

(declare-fun e!66922 () Bool)

(assert (=> start!11982 e!66922))

(declare-fun inv!2448 (Cache!182) Bool)

(assert (=> start!11982 (and (inv!2448 cache!470) e!66920)))

(declare-fun b!117538 () Bool)

(declare-fun tp!64220 () Bool)

(declare-fun tp!64211 () Bool)

(assert (=> b!117538 (= e!66921 (and tp!64220 tp!64211))))

(declare-fun b!117539 () Bool)

(declare-fun e!66930 () Bool)

(declare-fun e!66916 () Bool)

(assert (=> b!117539 (= e!66930 e!66916)))

(declare-fun res!55675 () Bool)

(assert (=> b!117539 (=> res!55675 e!66916)))

(declare-fun lostCause!52 (Regex!511) Bool)

(assert (=> b!117539 (= res!55675 (lostCause!52 r!15532))))

(declare-fun lt!34917 () List!1936)

(assert (=> b!117539 (and (= testedSuffix!285 lt!34917) (= lt!34917 testedSuffix!285))))

(declare-datatypes ((Unit!1441 0))(
  ( (Unit!1442) )
))
(declare-fun lt!34927 () Unit!1441)

(declare-fun lemmaSamePrefixThenSameSuffix!40 (List!1936 List!1936 List!1936 List!1936 List!1936) Unit!1441)

(assert (=> b!117539 (= lt!34927 (lemmaSamePrefixThenSameSuffix!40 testedP!367 testedSuffix!285 testedP!367 lt!34917 totalInput!1363))))

(declare-fun getSuffix!41 (List!1936 List!1936) List!1936)

(assert (=> b!117539 (= lt!34917 (getSuffix!41 totalInput!1363 testedP!367))))

(declare-fun b!117540 () Bool)

(declare-fun tp!64218 () Bool)

(assert (=> b!117540 (= e!66919 (and tp_is_empty!1077 tp!64218))))

(declare-fun b!117541 () Bool)

(declare-fun e!66923 () Bool)

(declare-fun tp!64213 () Bool)

(declare-fun mapRes!1465 () Bool)

(assert (=> b!117541 (= e!66923 (and tp!64213 mapRes!1465))))

(declare-fun condMapEmpty!1465 () Bool)

(declare-fun mapDefault!1465 () List!1937)

(assert (=> b!117541 (= condMapEmpty!1465 (= (arr!639 (_values!655 (v!13285 (underlying!953 (v!13286 (underlying!954 (cache!825 cache!470))))))) ((as const (Array (_ BitVec 32) List!1937)) mapDefault!1465)))))

(declare-fun b!117542 () Bool)

(assert (=> b!117542 (= e!66931 true)))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!34925 () Regex!511)

(declare-fun lt!34915 () List!1936)

(declare-datatypes ((tuple2!2170 0))(
  ( (tuple2!2171 (_1!1295 List!1936) (_2!1295 List!1936)) )
))
(declare-fun findLongestMatchInnerMem!6 (Regex!511 List!1936 Int List!1936 List!1936 Int Cache!182) tuple2!2170)

(declare-fun findLongestMatchInner!39 (Regex!511 List!1936 Int List!1936 List!1936 Int) tuple2!2170)

(assert (=> b!117542 (= (findLongestMatchInnerMem!6 lt!34925 lt!34914 (+ 1 testedPSize!285) lt!34915 totalInput!1363 totalInputSize!643 cache!470) (findLongestMatchInner!39 lt!34925 lt!34914 (+ 1 testedPSize!285) lt!34915 totalInput!1363 totalInputSize!643))))

(declare-fun b!117543 () Bool)

(declare-fun e!66917 () Bool)

(assert (=> b!117543 (= e!66917 e!66931)))

(declare-fun res!55670 () Bool)

(assert (=> b!117543 (=> res!55670 e!66931)))

(assert (=> b!117543 (= res!55670 (not (validRegex!118 lt!34925)))))

(declare-fun lt!34922 () C!1944)

(declare-fun derivativeStep!47 (Regex!511 C!1944) Regex!511)

(assert (=> b!117543 (= lt!34925 (derivativeStep!47 r!15532 lt!34922))))

(declare-fun b!117544 () Bool)

(declare-fun e!66914 () Bool)

(assert (=> b!117544 (= e!66916 e!66914)))

(declare-fun res!55667 () Bool)

(assert (=> b!117544 (=> res!55667 e!66914)))

(declare-fun lt!34916 () Int)

(declare-fun lt!34926 () Int)

(assert (=> b!117544 (= res!55667 (>= lt!34916 lt!34926))))

(declare-fun lt!34919 () Unit!1441)

(declare-fun e!66926 () Unit!1441)

(assert (=> b!117544 (= lt!34919 e!66926)))

(declare-fun c!26734 () Bool)

(assert (=> b!117544 (= c!26734 (= lt!34916 lt!34926))))

(assert (=> b!117544 (<= lt!34916 lt!34926)))

(declare-fun lt!34928 () Unit!1441)

(declare-fun lemmaIsPrefixThenSmallerEqSize!25 (List!1936 List!1936) Unit!1441)

(assert (=> b!117544 (= lt!34928 (lemmaIsPrefixThenSmallerEqSize!25 testedP!367 totalInput!1363))))

(declare-fun b!117545 () Bool)

(declare-fun e!66933 () Bool)

(assert (=> b!117545 (= e!66918 e!66933)))

(declare-fun res!55668 () Bool)

(assert (=> b!117545 (=> (not res!55668) (not e!66933))))

(assert (=> b!117545 (= res!55668 (= testedPSize!285 lt!34916))))

(assert (=> b!117545 (= lt!34916 (size!1754 testedP!367))))

(declare-fun mapIsEmpty!1465 () Bool)

(assert (=> mapIsEmpty!1465 mapRes!1465))

(declare-fun b!117546 () Bool)

(declare-fun e!66913 () Bool)

(assert (=> b!117546 (= e!66913 (not e!66930))))

(declare-fun res!55665 () Bool)

(assert (=> b!117546 (=> res!55665 e!66930)))

(declare-fun isPrefix!98 (List!1936 List!1936) Bool)

(assert (=> b!117546 (= res!55665 (not (isPrefix!98 testedP!367 totalInput!1363)))))

(assert (=> b!117546 (isPrefix!98 testedP!367 lt!34920)))

(declare-fun lt!34923 () Unit!1441)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!44 (List!1936 List!1936) Unit!1441)

(assert (=> b!117546 (= lt!34923 (lemmaConcatTwoListThenFirstIsPrefix!44 testedP!367 testedSuffix!285))))

(declare-fun b!117547 () Bool)

(declare-fun tp!64216 () Bool)

(assert (=> b!117547 (= e!66927 (and tp_is_empty!1077 tp!64216))))

(declare-fun b!117548 () Bool)

(declare-fun Unit!1443 () Unit!1441)

(assert (=> b!117548 (= e!66926 Unit!1443)))

(declare-fun lt!34929 () Unit!1441)

(declare-fun lemmaIsPrefixRefl!80 (List!1936 List!1936) Unit!1441)

(assert (=> b!117548 (= lt!34929 (lemmaIsPrefixRefl!80 totalInput!1363 totalInput!1363))))

(assert (=> b!117548 (isPrefix!98 totalInput!1363 totalInput!1363)))

(declare-fun lt!34924 () Unit!1441)

(declare-fun lemmaIsPrefixSameLengthThenSameList!26 (List!1936 List!1936 List!1936) Unit!1441)

(assert (=> b!117548 (= lt!34924 (lemmaIsPrefixSameLengthThenSameList!26 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!117548 false))

(declare-fun b!117549 () Bool)

(assert (=> b!117549 (= e!66914 e!66917)))

(declare-fun res!55673 () Bool)

(assert (=> b!117549 (=> res!55673 e!66917)))

(declare-fun nullable!74 (Regex!511) Bool)

(assert (=> b!117549 (= res!55673 (nullable!74 r!15532))))

(assert (=> b!117549 (= (++!350 lt!34914 lt!34915) totalInput!1363)))

(declare-fun lt!34930 () Unit!1441)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!15 (List!1936 C!1944 List!1936 List!1936) Unit!1441)

(assert (=> b!117549 (= lt!34930 (lemmaMoveElementToOtherListKeepsConcatEq!15 testedP!367 lt!34922 lt!34915 totalInput!1363))))

(declare-fun tail!225 (List!1936) List!1936)

(assert (=> b!117549 (= lt!34915 (tail!225 testedSuffix!285))))

(declare-fun head!489 (List!1936) C!1944)

(assert (=> b!117549 (isPrefix!98 (++!350 testedP!367 (Cons!1930 (head!489 lt!34917) Nil!1930)) totalInput!1363)))

(declare-fun lt!34918 () Unit!1441)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!19 (List!1936 List!1936) Unit!1441)

(assert (=> b!117549 (= lt!34918 (lemmaAddHeadSuffixToPrefixStillPrefix!19 testedP!367 totalInput!1363))))

(assert (=> b!117549 (= lt!34914 (++!350 testedP!367 (Cons!1930 lt!34922 Nil!1930)))))

(assert (=> b!117549 (= lt!34922 (head!489 testedSuffix!285))))

(declare-fun b!117550 () Bool)

(declare-fun tp!64223 () Bool)

(assert (=> b!117550 (= e!66921 tp!64223)))

(declare-fun b!117551 () Bool)

(declare-fun Unit!1444 () Unit!1441)

(assert (=> b!117551 (= e!66926 Unit!1444)))

(declare-fun b!117552 () Bool)

(declare-fun e!66915 () Bool)

(declare-fun e!66929 () Bool)

(declare-fun lt!34921 () MutLongMap!377)

(get-info :version)

(assert (=> b!117552 (= e!66915 (and e!66929 ((_ is LongMap!377) lt!34921)))))

(assert (=> b!117552 (= lt!34921 (v!13286 (underlying!954 (cache!825 cache!470))))))

(declare-fun b!117553 () Bool)

(assert (=> b!117553 (= e!66929 e!66928)))

(declare-fun b!117554 () Bool)

(declare-fun res!55672 () Bool)

(assert (=> b!117554 (=> res!55672 e!66916)))

(assert (=> b!117554 (= res!55672 (= testedPSize!285 totalInputSize!643))))

(assert (=> b!117555 (= e!66925 (and e!66915 tp!64214))))

(declare-fun b!117556 () Bool)

(declare-fun tp!64210 () Bool)

(declare-fun tp!64222 () Bool)

(assert (=> b!117556 (= e!66921 (and tp!64210 tp!64222))))

(declare-fun tp!64209 () Bool)

(declare-fun tp!64221 () Bool)

(declare-fun array_inv!455 (array!1369) Bool)

(declare-fun array_inv!456 (array!1371) Bool)

(assert (=> b!117557 (= e!66924 (and tp!64212 tp!64221 tp!64209 (array_inv!455 (_keys!668 (v!13285 (underlying!953 (v!13286 (underlying!954 (cache!825 cache!470))))))) (array_inv!456 (_values!655 (v!13285 (underlying!953 (v!13286 (underlying!954 (cache!825 cache!470))))))) e!66923))))

(declare-fun b!117558 () Bool)

(declare-fun tp!64215 () Bool)

(assert (=> b!117558 (= e!66922 (and tp_is_empty!1077 tp!64215))))

(declare-fun mapNonEmpty!1465 () Bool)

(declare-fun tp!64217 () Bool)

(declare-fun tp!64219 () Bool)

(assert (=> mapNonEmpty!1465 (= mapRes!1465 (and tp!64217 tp!64219))))

(declare-fun mapValue!1465 () List!1937)

(declare-fun mapKey!1465 () (_ BitVec 32))

(declare-fun mapRest!1465 () (Array (_ BitVec 32) List!1937))

(assert (=> mapNonEmpty!1465 (= (arr!639 (_values!655 (v!13285 (underlying!953 (v!13286 (underlying!954 (cache!825 cache!470))))))) (store mapRest!1465 mapKey!1465 mapValue!1465))))

(declare-fun b!117559 () Bool)

(assert (=> b!117559 (= e!66933 e!66913)))

(declare-fun res!55671 () Bool)

(assert (=> b!117559 (=> (not res!55671) (not e!66913))))

(assert (=> b!117559 (= res!55671 (= totalInputSize!643 lt!34926))))

(assert (=> b!117559 (= lt!34926 (size!1754 totalInput!1363))))

(assert (= (and start!11982 res!55669) b!117537))

(assert (= (and b!117537 res!55664) b!117534))

(assert (= (and b!117534 res!55674) b!117545))

(assert (= (and b!117545 res!55668) b!117559))

(assert (= (and b!117559 res!55671) b!117546))

(assert (= (and b!117546 (not res!55665)) b!117539))

(assert (= (and b!117539 (not res!55675)) b!117554))

(assert (= (and b!117554 (not res!55672)) b!117544))

(assert (= (and b!117544 c!26734) b!117548))

(assert (= (and b!117544 (not c!26734)) b!117551))

(assert (= (and b!117544 (not res!55667)) b!117549))

(assert (= (and b!117549 (not res!55673)) b!117543))

(assert (= (and b!117543 (not res!55670)) b!117536))

(assert (= (and b!117536 (not res!55666)) b!117542))

(assert (= (and start!11982 ((_ is ElementMatch!511) r!15532)) b!117535))

(assert (= (and start!11982 ((_ is Concat!895) r!15532)) b!117538))

(assert (= (and start!11982 ((_ is Star!511) r!15532)) b!117550))

(assert (= (and start!11982 ((_ is Union!511) r!15532)) b!117556))

(assert (= (and start!11982 ((_ is Cons!1930) totalInput!1363)) b!117547))

(assert (= (and start!11982 ((_ is Cons!1930) testedSuffix!285)) b!117540))

(assert (= (and start!11982 ((_ is Cons!1930) testedP!367)) b!117558))

(assert (= (and b!117541 condMapEmpty!1465) mapIsEmpty!1465))

(assert (= (and b!117541 (not condMapEmpty!1465)) mapNonEmpty!1465))

(assert (= b!117557 b!117541))

(assert (= b!117533 b!117557))

(assert (= b!117553 b!117533))

(assert (= (and b!117552 ((_ is LongMap!377) (v!13286 (underlying!954 (cache!825 cache!470))))) b!117553))

(assert (= b!117555 b!117552))

(assert (= (and b!117532 ((_ is HashMap!373) (cache!825 cache!470))) b!117555))

(assert (= start!11982 b!117532))

(declare-fun m!105470 () Bool)

(assert (=> b!117537 m!105470))

(declare-fun m!105472 () Bool)

(assert (=> b!117544 m!105472))

(declare-fun m!105474 () Bool)

(assert (=> b!117559 m!105474))

(declare-fun m!105476 () Bool)

(assert (=> b!117539 m!105476))

(declare-fun m!105478 () Bool)

(assert (=> b!117539 m!105478))

(declare-fun m!105480 () Bool)

(assert (=> b!117539 m!105480))

(declare-fun m!105482 () Bool)

(assert (=> start!11982 m!105482))

(declare-fun m!105484 () Bool)

(assert (=> start!11982 m!105484))

(declare-fun m!105486 () Bool)

(assert (=> b!117549 m!105486))

(declare-fun m!105488 () Bool)

(assert (=> b!117549 m!105488))

(declare-fun m!105490 () Bool)

(assert (=> b!117549 m!105490))

(declare-fun m!105492 () Bool)

(assert (=> b!117549 m!105492))

(declare-fun m!105494 () Bool)

(assert (=> b!117549 m!105494))

(declare-fun m!105496 () Bool)

(assert (=> b!117549 m!105496))

(assert (=> b!117549 m!105492))

(declare-fun m!105498 () Bool)

(assert (=> b!117549 m!105498))

(declare-fun m!105500 () Bool)

(assert (=> b!117549 m!105500))

(declare-fun m!105502 () Bool)

(assert (=> b!117549 m!105502))

(declare-fun m!105504 () Bool)

(assert (=> b!117549 m!105504))

(declare-fun m!105506 () Bool)

(assert (=> b!117534 m!105506))

(declare-fun m!105508 () Bool)

(assert (=> b!117545 m!105508))

(declare-fun m!105510 () Bool)

(assert (=> mapNonEmpty!1465 m!105510))

(declare-fun m!105512 () Bool)

(assert (=> b!117557 m!105512))

(declare-fun m!105514 () Bool)

(assert (=> b!117557 m!105514))

(declare-fun m!105516 () Bool)

(assert (=> b!117542 m!105516))

(declare-fun m!105518 () Bool)

(assert (=> b!117542 m!105518))

(declare-fun m!105520 () Bool)

(assert (=> b!117543 m!105520))

(declare-fun m!105522 () Bool)

(assert (=> b!117543 m!105522))

(declare-fun m!105524 () Bool)

(assert (=> b!117548 m!105524))

(declare-fun m!105526 () Bool)

(assert (=> b!117548 m!105526))

(declare-fun m!105528 () Bool)

(assert (=> b!117548 m!105528))

(declare-fun m!105530 () Bool)

(assert (=> b!117536 m!105530))

(declare-fun m!105532 () Bool)

(assert (=> b!117546 m!105532))

(declare-fun m!105534 () Bool)

(assert (=> b!117546 m!105534))

(declare-fun m!105536 () Bool)

(assert (=> b!117546 m!105536))

(check-sat (not mapNonEmpty!1465) (not b!117537) (not start!11982) (not b!117545) b_and!5869 (not b!117556) (not b!117544) tp_is_empty!1077 (not b!117559) (not b!117558) (not b!117536) (not b_next!3739) (not b!117550) (not b!117557) (not b!117538) (not b!117548) (not b!117542) (not b!117546) (not b!117541) (not b!117547) (not b!117543) (not b!117549) b_and!5867 (not b!117540) (not b!117534) (not b!117539) (not b_next!3737))
(check-sat b_and!5869 b_and!5867 (not b_next!3739) (not b_next!3737))
