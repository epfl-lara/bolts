; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11884 () Bool)

(assert start!11884)

(declare-fun b!116580 () Bool)

(declare-fun b_free!3705 () Bool)

(declare-fun b_next!3705 () Bool)

(assert (=> b!116580 (= b_free!3705 (not b_next!3705))))

(declare-fun tp!63697 () Bool)

(declare-fun b_and!5835 () Bool)

(assert (=> b!116580 (= tp!63697 b_and!5835)))

(declare-fun b!116584 () Bool)

(declare-fun b_free!3707 () Bool)

(declare-fun b_next!3707 () Bool)

(assert (=> b!116584 (= b_free!3707 (not b_next!3707))))

(declare-fun tp!63701 () Bool)

(declare-fun b_and!5837 () Bool)

(assert (=> b!116584 (= tp!63701 b_and!5837)))

(declare-fun res!55304 () Bool)

(declare-fun e!66222 () Bool)

(assert (=> start!11884 (=> (not res!55304) (not e!66222))))

(declare-datatypes ((C!1928 0))(
  ( (C!1929 (val!690 Int)) )
))
(declare-datatypes ((Regex!503 0))(
  ( (ElementMatch!503 (c!26650 C!1928)) (Concat!887 (regOne!1518 Regex!503) (regTwo!1518 Regex!503)) (EmptyExpr!503) (Star!503 (reg!832 Regex!503)) (EmptyLang!503) (Union!503 (regOne!1519 Regex!503) (regTwo!1519 Regex!503)) )
))
(declare-fun r!15532 () Regex!503)

(declare-fun validRegex!110 (Regex!503) Bool)

(assert (=> start!11884 (= res!55304 (validRegex!110 r!15532))))

(assert (=> start!11884 e!66222))

(assert (=> start!11884 true))

(declare-fun e!66237 () Bool)

(assert (=> start!11884 e!66237))

(declare-fun e!66226 () Bool)

(assert (=> start!11884 e!66226))

(declare-fun e!66227 () Bool)

(assert (=> start!11884 e!66227))

(declare-fun e!66235 () Bool)

(assert (=> start!11884 e!66235))

(declare-datatypes ((Hashable!365 0))(
  ( (HashableExt!364 (__x!2032 Int)) )
))
(declare-datatypes ((tuple2!2132 0))(
  ( (tuple2!2133 (_1!1276 Regex!503) (_2!1276 C!1928)) )
))
(declare-datatypes ((tuple2!2134 0))(
  ( (tuple2!2135 (_1!1277 tuple2!2132) (_2!1277 Regex!503)) )
))
(declare-datatypes ((List!1920 0))(
  ( (Nil!1914) (Cons!1914 (h!7311 tuple2!2134) (t!22397 List!1920)) )
))
(declare-datatypes ((array!1333 0))(
  ( (array!1334 (arr!622 (Array (_ BitVec 32) (_ BitVec 64))) (size!1730 (_ BitVec 32))) )
))
(declare-datatypes ((array!1335 0))(
  ( (array!1336 (arr!623 (Array (_ BitVec 32) List!1920)) (size!1731 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!738 0))(
  ( (LongMapFixedSize!739 (defaultEntry!708 Int) (mask!1288 (_ BitVec 32)) (extraKeys!615 (_ BitVec 32)) (zeroValue!625 List!1920) (minValue!625 List!1920) (_size!871 (_ BitVec 32)) (_keys!660 array!1333) (_values!647 array!1335) (_vacant!430 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1465 0))(
  ( (Cell!1466 (v!13269 LongMapFixedSize!738)) )
))
(declare-datatypes ((MutLongMap!369 0))(
  ( (LongMap!369 (underlying!937 Cell!1465)) (MutLongMapExt!368 (__x!2033 Int)) )
))
(declare-datatypes ((Cell!1467 0))(
  ( (Cell!1468 (v!13270 MutLongMap!369)) )
))
(declare-datatypes ((MutableMap!365 0))(
  ( (MutableMapExt!364 (__x!2034 Int)) (HashMap!365 (underlying!938 Cell!1467) (hashF!2241 Hashable!365) (_size!872 (_ BitVec 32)) (defaultValue!514 Int)) )
))
(declare-datatypes ((Cache!166 0))(
  ( (Cache!167 (cache!817 MutableMap!365)) )
))
(declare-fun cache!470 () Cache!166)

(declare-fun e!66233 () Bool)

(declare-fun inv!2429 (Cache!166) Bool)

(assert (=> start!11884 (and (inv!2429 cache!470) e!66233)))

(declare-fun b!116572 () Bool)

(declare-datatypes ((Unit!1410 0))(
  ( (Unit!1411) )
))
(declare-fun e!66220 () Unit!1410)

(declare-fun Unit!1412 () Unit!1410)

(assert (=> b!116572 (= e!66220 Unit!1412)))

(declare-fun b!116573 () Bool)

(declare-fun e!66223 () Bool)

(assert (=> b!116573 (= e!66223 true)))

(declare-fun totalInputSize!643 () Int)

(declare-fun testedPSize!285 () Int)

(declare-datatypes ((List!1921 0))(
  ( (Nil!1915) (Cons!1915 (h!7312 C!1928) (t!22398 List!1921)) )
))
(declare-fun lt!34434 () List!1921)

(declare-fun lt!34432 () List!1921)

(declare-fun lt!34439 () Regex!503)

(declare-fun totalInput!1363 () List!1921)

(declare-datatypes ((tuple2!2136 0))(
  ( (tuple2!2137 (_1!1278 List!1921) (_2!1278 List!1921)) )
))
(declare-fun findLongestMatchInnerMem!5 (Regex!503 List!1921 Int List!1921 List!1921 Int Cache!166) tuple2!2136)

(declare-fun findLongestMatchInner!38 (Regex!503 List!1921 Int List!1921 List!1921 Int) tuple2!2136)

(assert (=> b!116573 (= (findLongestMatchInnerMem!5 lt!34439 lt!34432 (+ 1 testedPSize!285) lt!34434 totalInput!1363 totalInputSize!643 cache!470) (findLongestMatchInner!38 lt!34439 lt!34432 (+ 1 testedPSize!285) lt!34434 totalInput!1363 totalInputSize!643))))

(declare-fun lt!34440 () C!1928)

(declare-fun derivativeStep!41 (Regex!503 C!1928) Regex!503)

(assert (=> b!116573 (= lt!34439 (derivativeStep!41 r!15532 lt!34440))))

(declare-fun b!116574 () Bool)

(declare-fun Unit!1413 () Unit!1410)

(assert (=> b!116574 (= e!66220 Unit!1413)))

(declare-fun lt!34429 () Unit!1410)

(declare-fun lemmaIsPrefixRefl!72 (List!1921 List!1921) Unit!1410)

(assert (=> b!116574 (= lt!34429 (lemmaIsPrefixRefl!72 totalInput!1363 totalInput!1363))))

(declare-fun isPrefix!90 (List!1921 List!1921) Bool)

(assert (=> b!116574 (isPrefix!90 totalInput!1363 totalInput!1363)))

(declare-fun lt!34444 () Unit!1410)

(declare-fun testedP!367 () List!1921)

(declare-fun lemmaIsPrefixSameLengthThenSameList!18 (List!1921 List!1921 List!1921) Unit!1410)

(assert (=> b!116574 (= lt!34444 (lemmaIsPrefixSameLengthThenSameList!18 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!116574 false))

(declare-fun b!116575 () Bool)

(declare-fun tp_is_empty!1061 () Bool)

(declare-fun tp!63703 () Bool)

(assert (=> b!116575 (= e!66235 (and tp_is_empty!1061 tp!63703))))

(declare-fun b!116576 () Bool)

(declare-fun tp!63705 () Bool)

(assert (=> b!116576 (= e!66227 (and tp_is_empty!1061 tp!63705))))

(declare-fun b!116577 () Bool)

(declare-fun e!66225 () Bool)

(declare-fun e!66231 () Bool)

(assert (=> b!116577 (= e!66225 e!66231)))

(declare-fun b!116578 () Bool)

(declare-fun e!66230 () Bool)

(declare-fun e!66218 () Bool)

(assert (=> b!116578 (= e!66230 e!66218)))

(declare-fun res!55300 () Bool)

(assert (=> b!116578 (=> res!55300 e!66218)))

(declare-fun lt!34437 () Int)

(declare-fun lt!34443 () Int)

(assert (=> b!116578 (= res!55300 (>= lt!34437 lt!34443))))

(declare-fun lt!34435 () Unit!1410)

(assert (=> b!116578 (= lt!34435 e!66220)))

(declare-fun c!26649 () Bool)

(assert (=> b!116578 (= c!26649 (= lt!34437 lt!34443))))

(assert (=> b!116578 (<= lt!34437 lt!34443)))

(declare-fun lt!34430 () Unit!1410)

(declare-fun lemmaIsPrefixThenSmallerEqSize!18 (List!1921 List!1921) Unit!1410)

(assert (=> b!116578 (= lt!34430 (lemmaIsPrefixThenSmallerEqSize!18 testedP!367 totalInput!1363))))

(declare-fun b!116579 () Bool)

(declare-fun e!66224 () Bool)

(declare-fun lt!34438 () MutLongMap!369)

(get-info :version)

(assert (=> b!116579 (= e!66224 (and e!66225 ((_ is LongMap!369) lt!34438)))))

(assert (=> b!116579 (= lt!34438 (v!13270 (underlying!938 (cache!817 cache!470))))))

(declare-fun e!66234 () Bool)

(assert (=> b!116580 (= e!66234 (and e!66224 tp!63697))))

(declare-fun b!116581 () Bool)

(declare-fun e!66229 () Bool)

(declare-fun e!66228 () Bool)

(assert (=> b!116581 (= e!66229 e!66228)))

(declare-fun res!55306 () Bool)

(assert (=> b!116581 (=> (not res!55306) (not e!66228))))

(assert (=> b!116581 (= res!55306 (= testedPSize!285 lt!34437))))

(declare-fun size!1732 (List!1921) Int)

(assert (=> b!116581 (= lt!34437 (size!1732 testedP!367))))

(declare-fun b!116582 () Bool)

(declare-fun e!66221 () Bool)

(declare-fun tp!63693 () Bool)

(declare-fun mapRes!1435 () Bool)

(assert (=> b!116582 (= e!66221 (and tp!63693 mapRes!1435))))

(declare-fun condMapEmpty!1435 () Bool)

(declare-fun mapDefault!1435 () List!1920)

(assert (=> b!116582 (= condMapEmpty!1435 (= (arr!623 (_values!647 (v!13269 (underlying!937 (v!13270 (underlying!938 (cache!817 cache!470))))))) ((as const (Array (_ BitVec 32) List!1920)) mapDefault!1435)))))

(declare-fun b!116583 () Bool)

(declare-fun e!66232 () Bool)

(assert (=> b!116583 (= e!66228 e!66232)))

(declare-fun res!55302 () Bool)

(assert (=> b!116583 (=> (not res!55302) (not e!66232))))

(assert (=> b!116583 (= res!55302 (= totalInputSize!643 lt!34443))))

(assert (=> b!116583 (= lt!34443 (size!1732 totalInput!1363))))

(declare-fun e!66219 () Bool)

(declare-fun tp!63694 () Bool)

(declare-fun tp!63699 () Bool)

(declare-fun array_inv!443 (array!1333) Bool)

(declare-fun array_inv!444 (array!1335) Bool)

(assert (=> b!116584 (= e!66219 (and tp!63701 tp!63694 tp!63699 (array_inv!443 (_keys!660 (v!13269 (underlying!937 (v!13270 (underlying!938 (cache!817 cache!470))))))) (array_inv!444 (_values!647 (v!13269 (underlying!937 (v!13270 (underlying!938 (cache!817 cache!470))))))) e!66221))))

(declare-fun b!116585 () Bool)

(assert (=> b!116585 (= e!66218 e!66223)))

(declare-fun res!55301 () Bool)

(assert (=> b!116585 (=> res!55301 e!66223)))

(declare-fun nullable!67 (Regex!503) Bool)

(assert (=> b!116585 (= res!55301 (not (nullable!67 r!15532)))))

(declare-fun ++!343 (List!1921 List!1921) List!1921)

(assert (=> b!116585 (= (++!343 lt!34432 lt!34434) totalInput!1363)))

(declare-fun lt!34445 () Unit!1410)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!8 (List!1921 C!1928 List!1921 List!1921) Unit!1410)

(assert (=> b!116585 (= lt!34445 (lemmaMoveElementToOtherListKeepsConcatEq!8 testedP!367 lt!34440 lt!34434 totalInput!1363))))

(declare-fun testedSuffix!285 () List!1921)

(declare-fun tail!218 (List!1921) List!1921)

(assert (=> b!116585 (= lt!34434 (tail!218 testedSuffix!285))))

(declare-fun lt!34433 () List!1921)

(declare-fun head!482 (List!1921) C!1928)

(assert (=> b!116585 (isPrefix!90 (++!343 testedP!367 (Cons!1915 (head!482 lt!34433) Nil!1915)) totalInput!1363)))

(declare-fun lt!34441 () Unit!1410)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!12 (List!1921 List!1921) Unit!1410)

(assert (=> b!116585 (= lt!34441 (lemmaAddHeadSuffixToPrefixStillPrefix!12 testedP!367 totalInput!1363))))

(assert (=> b!116585 (= lt!34432 (++!343 testedP!367 (Cons!1915 lt!34440 Nil!1915)))))

(assert (=> b!116585 (= lt!34440 (head!482 testedSuffix!285))))

(declare-fun b!116586 () Bool)

(declare-fun res!55303 () Bool)

(assert (=> b!116586 (=> res!55303 e!66230)))

(assert (=> b!116586 (= res!55303 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!116587 () Bool)

(declare-fun e!66238 () Bool)

(assert (=> b!116587 (= e!66232 (not e!66238))))

(declare-fun res!55308 () Bool)

(assert (=> b!116587 (=> res!55308 e!66238)))

(assert (=> b!116587 (= res!55308 (not (isPrefix!90 testedP!367 totalInput!1363)))))

(declare-fun lt!34431 () List!1921)

(assert (=> b!116587 (isPrefix!90 testedP!367 lt!34431)))

(declare-fun lt!34442 () Unit!1410)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!36 (List!1921 List!1921) Unit!1410)

(assert (=> b!116587 (= lt!34442 (lemmaConcatTwoListThenFirstIsPrefix!36 testedP!367 testedSuffix!285))))

(declare-fun b!116588 () Bool)

(assert (=> b!116588 (= e!66233 e!66234)))

(declare-fun b!116589 () Bool)

(assert (=> b!116589 (= e!66231 e!66219)))

(declare-fun b!116590 () Bool)

(declare-fun tp!63702 () Bool)

(declare-fun tp!63698 () Bool)

(assert (=> b!116590 (= e!66237 (and tp!63702 tp!63698))))

(declare-fun b!116591 () Bool)

(assert (=> b!116591 (= e!66237 tp_is_empty!1061)))

(declare-fun b!116592 () Bool)

(assert (=> b!116592 (= e!66222 e!66229)))

(declare-fun res!55307 () Bool)

(assert (=> b!116592 (=> (not res!55307) (not e!66229))))

(assert (=> b!116592 (= res!55307 (= lt!34431 totalInput!1363))))

(assert (=> b!116592 (= lt!34431 (++!343 testedP!367 testedSuffix!285))))

(declare-fun mapIsEmpty!1435 () Bool)

(assert (=> mapIsEmpty!1435 mapRes!1435))

(declare-fun b!116593 () Bool)

(declare-fun tp!63691 () Bool)

(assert (=> b!116593 (= e!66226 (and tp_is_empty!1061 tp!63691))))

(declare-fun b!116594 () Bool)

(declare-fun tp!63692 () Bool)

(assert (=> b!116594 (= e!66237 tp!63692)))

(declare-fun b!116595 () Bool)

(declare-fun res!55309 () Bool)

(assert (=> b!116595 (=> (not res!55309) (not e!66222))))

(declare-fun valid!334 (Cache!166) Bool)

(assert (=> b!116595 (= res!55309 (valid!334 cache!470))))

(declare-fun b!116596 () Bool)

(assert (=> b!116596 (= e!66238 e!66230)))

(declare-fun res!55305 () Bool)

(assert (=> b!116596 (=> res!55305 e!66230)))

(declare-fun lostCause!44 (Regex!503) Bool)

(assert (=> b!116596 (= res!55305 (lostCause!44 r!15532))))

(assert (=> b!116596 (and (= testedSuffix!285 lt!34433) (= lt!34433 testedSuffix!285))))

(declare-fun lt!34436 () Unit!1410)

(declare-fun lemmaSamePrefixThenSameSuffix!32 (List!1921 List!1921 List!1921 List!1921 List!1921) Unit!1410)

(assert (=> b!116596 (= lt!34436 (lemmaSamePrefixThenSameSuffix!32 testedP!367 testedSuffix!285 testedP!367 lt!34433 totalInput!1363))))

(declare-fun getSuffix!33 (List!1921 List!1921) List!1921)

(assert (=> b!116596 (= lt!34433 (getSuffix!33 totalInput!1363 testedP!367))))

(declare-fun mapNonEmpty!1435 () Bool)

(declare-fun tp!63696 () Bool)

(declare-fun tp!63695 () Bool)

(assert (=> mapNonEmpty!1435 (= mapRes!1435 (and tp!63696 tp!63695))))

(declare-fun mapValue!1435 () List!1920)

(declare-fun mapKey!1435 () (_ BitVec 32))

(declare-fun mapRest!1435 () (Array (_ BitVec 32) List!1920))

(assert (=> mapNonEmpty!1435 (= (arr!623 (_values!647 (v!13269 (underlying!937 (v!13270 (underlying!938 (cache!817 cache!470))))))) (store mapRest!1435 mapKey!1435 mapValue!1435))))

(declare-fun b!116597 () Bool)

(declare-fun tp!63700 () Bool)

(declare-fun tp!63704 () Bool)

(assert (=> b!116597 (= e!66237 (and tp!63700 tp!63704))))

(assert (= (and start!11884 res!55304) b!116595))

(assert (= (and b!116595 res!55309) b!116592))

(assert (= (and b!116592 res!55307) b!116581))

(assert (= (and b!116581 res!55306) b!116583))

(assert (= (and b!116583 res!55302) b!116587))

(assert (= (and b!116587 (not res!55308)) b!116596))

(assert (= (and b!116596 (not res!55305)) b!116586))

(assert (= (and b!116586 (not res!55303)) b!116578))

(assert (= (and b!116578 c!26649) b!116574))

(assert (= (and b!116578 (not c!26649)) b!116572))

(assert (= (and b!116578 (not res!55300)) b!116585))

(assert (= (and b!116585 (not res!55301)) b!116573))

(assert (= (and start!11884 ((_ is ElementMatch!503) r!15532)) b!116591))

(assert (= (and start!11884 ((_ is Concat!887) r!15532)) b!116597))

(assert (= (and start!11884 ((_ is Star!503) r!15532)) b!116594))

(assert (= (and start!11884 ((_ is Union!503) r!15532)) b!116590))

(assert (= (and start!11884 ((_ is Cons!1915) totalInput!1363)) b!116593))

(assert (= (and start!11884 ((_ is Cons!1915) testedSuffix!285)) b!116576))

(assert (= (and start!11884 ((_ is Cons!1915) testedP!367)) b!116575))

(assert (= (and b!116582 condMapEmpty!1435) mapIsEmpty!1435))

(assert (= (and b!116582 (not condMapEmpty!1435)) mapNonEmpty!1435))

(assert (= b!116584 b!116582))

(assert (= b!116589 b!116584))

(assert (= b!116577 b!116589))

(assert (= (and b!116579 ((_ is LongMap!369) (v!13270 (underlying!938 (cache!817 cache!470))))) b!116577))

(assert (= b!116580 b!116579))

(assert (= (and b!116588 ((_ is HashMap!365) (cache!817 cache!470))) b!116580))

(assert (= start!11884 b!116588))

(declare-fun m!104722 () Bool)

(assert (=> b!116573 m!104722))

(declare-fun m!104724 () Bool)

(assert (=> b!116573 m!104724))

(declare-fun m!104726 () Bool)

(assert (=> b!116573 m!104726))

(declare-fun m!104728 () Bool)

(assert (=> b!116574 m!104728))

(declare-fun m!104730 () Bool)

(assert (=> b!116574 m!104730))

(declare-fun m!104732 () Bool)

(assert (=> b!116574 m!104732))

(declare-fun m!104734 () Bool)

(assert (=> start!11884 m!104734))

(declare-fun m!104736 () Bool)

(assert (=> start!11884 m!104736))

(declare-fun m!104738 () Bool)

(assert (=> b!116578 m!104738))

(declare-fun m!104740 () Bool)

(assert (=> b!116595 m!104740))

(declare-fun m!104742 () Bool)

(assert (=> b!116596 m!104742))

(declare-fun m!104744 () Bool)

(assert (=> b!116596 m!104744))

(declare-fun m!104746 () Bool)

(assert (=> b!116596 m!104746))

(declare-fun m!104748 () Bool)

(assert (=> b!116583 m!104748))

(declare-fun m!104750 () Bool)

(assert (=> b!116587 m!104750))

(declare-fun m!104752 () Bool)

(assert (=> b!116587 m!104752))

(declare-fun m!104754 () Bool)

(assert (=> b!116587 m!104754))

(declare-fun m!104756 () Bool)

(assert (=> b!116581 m!104756))

(declare-fun m!104758 () Bool)

(assert (=> b!116592 m!104758))

(declare-fun m!104760 () Bool)

(assert (=> b!116585 m!104760))

(declare-fun m!104762 () Bool)

(assert (=> b!116585 m!104762))

(declare-fun m!104764 () Bool)

(assert (=> b!116585 m!104764))

(declare-fun m!104766 () Bool)

(assert (=> b!116585 m!104766))

(declare-fun m!104768 () Bool)

(assert (=> b!116585 m!104768))

(declare-fun m!104770 () Bool)

(assert (=> b!116585 m!104770))

(declare-fun m!104772 () Bool)

(assert (=> b!116585 m!104772))

(assert (=> b!116585 m!104764))

(declare-fun m!104774 () Bool)

(assert (=> b!116585 m!104774))

(declare-fun m!104776 () Bool)

(assert (=> b!116585 m!104776))

(declare-fun m!104778 () Bool)

(assert (=> b!116585 m!104778))

(declare-fun m!104780 () Bool)

(assert (=> mapNonEmpty!1435 m!104780))

(declare-fun m!104782 () Bool)

(assert (=> b!116584 m!104782))

(declare-fun m!104784 () Bool)

(assert (=> b!116584 m!104784))

(check-sat (not b!116581) (not b!116596) (not b!116584) (not b!116595) (not b!116583) (not b!116573) (not b!116593) (not b!116590) b_and!5835 (not b!116597) (not b!116594) (not b!116576) (not mapNonEmpty!1435) (not b!116587) (not b!116592) (not b!116574) (not b!116582) (not start!11884) (not b_next!3707) tp_is_empty!1061 b_and!5837 (not b!116578) (not b_next!3705) (not b!116585) (not b!116575))
(check-sat b_and!5835 b_and!5837 (not b_next!3705) (not b_next!3707))
