; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12488 () Bool)

(assert start!12488)

(declare-fun b!123419 () Bool)

(declare-fun b_free!3929 () Bool)

(declare-fun b_next!3929 () Bool)

(assert (=> b!123419 (= b_free!3929 (not b_next!3929))))

(declare-fun tp!67676 () Bool)

(declare-fun b_and!6059 () Bool)

(assert (=> b!123419 (= tp!67676 b_and!6059)))

(declare-fun b!123440 () Bool)

(declare-fun b_free!3931 () Bool)

(declare-fun b_next!3931 () Bool)

(assert (=> b!123440 (= b_free!3931 (not b_next!3931))))

(declare-fun tp!67667 () Bool)

(declare-fun b_and!6061 () Bool)

(assert (=> b!123440 (= tp!67667 b_and!6061)))

(declare-fun b!123414 () Bool)

(declare-fun e!70932 () Bool)

(declare-fun e!70946 () Bool)

(assert (=> b!123414 (= e!70932 e!70946)))

(declare-fun res!57600 () Bool)

(assert (=> b!123414 (=> (not res!57600) (not e!70946))))

(declare-datatypes ((C!2040 0))(
  ( (C!2041 (val!746 Int)) )
))
(declare-datatypes ((List!2028 0))(
  ( (Nil!2022) (Cons!2022 (h!7419 C!2040) (t!22505 List!2028)) )
))
(declare-fun lt!37311 () List!2028)

(declare-fun totalInput!1363 () List!2028)

(assert (=> b!123414 (= res!57600 (= lt!37311 totalInput!1363))))

(declare-fun testedP!367 () List!2028)

(declare-fun testedSuffix!285 () List!2028)

(declare-fun ++!384 (List!2028 List!2028) List!2028)

(assert (=> b!123414 (= lt!37311 (++!384 testedP!367 testedSuffix!285))))

(declare-fun b!123415 () Bool)

(declare-datatypes ((Unit!1569 0))(
  ( (Unit!1570) )
))
(declare-fun e!70941 () Unit!1569)

(declare-fun Unit!1571 () Unit!1569)

(assert (=> b!123415 (= e!70941 Unit!1571)))

(declare-fun b!123416 () Bool)

(declare-fun e!70940 () Bool)

(assert (=> b!123416 (= e!70946 e!70940)))

(declare-fun res!57607 () Bool)

(assert (=> b!123416 (=> (not res!57607) (not e!70940))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!37305 () Int)

(assert (=> b!123416 (= res!57607 (= testedPSize!285 lt!37305))))

(declare-fun size!1886 (List!2028) Int)

(assert (=> b!123416 (= lt!37305 (size!1886 testedP!367))))

(declare-fun b!123417 () Bool)

(declare-fun e!70936 () Bool)

(declare-fun e!70944 () Bool)

(assert (=> b!123417 (= e!70936 e!70944)))

(declare-fun mapNonEmpty!1644 () Bool)

(declare-fun mapRes!1644 () Bool)

(declare-fun tp!67674 () Bool)

(declare-fun tp!67677 () Bool)

(assert (=> mapNonEmpty!1644 (= mapRes!1644 (and tp!67674 tp!67677))))

(declare-fun mapKey!1644 () (_ BitVec 32))

(declare-datatypes ((Regex!559 0))(
  ( (ElementMatch!559 (c!27299 C!2040)) (Concat!943 (regOne!1630 Regex!559) (regTwo!1630 Regex!559)) (EmptyExpr!559) (Star!559 (reg!888 Regex!559)) (EmptyLang!559) (Union!559 (regOne!1631 Regex!559) (regTwo!1631 Regex!559)) )
))
(declare-datatypes ((tuple2!2378 0))(
  ( (tuple2!2379 (_1!1399 Regex!559) (_2!1399 C!2040)) )
))
(declare-datatypes ((tuple2!2380 0))(
  ( (tuple2!2381 (_1!1400 tuple2!2378) (_2!1400 Regex!559)) )
))
(declare-datatypes ((List!2029 0))(
  ( (Nil!2023) (Cons!2023 (h!7420 tuple2!2380) (t!22506 List!2029)) )
))
(declare-fun mapRest!1644 () (Array (_ BitVec 32) List!2029))

(declare-datatypes ((Hashable!421 0))(
  ( (HashableExt!420 (__x!2200 Int)) )
))
(declare-datatypes ((array!1583 0))(
  ( (array!1584 (arr!734 (Array (_ BitVec 32) (_ BitVec 64))) (size!1887 (_ BitVec 32))) )
))
(declare-datatypes ((array!1585 0))(
  ( (array!1586 (arr!735 (Array (_ BitVec 32) List!2029)) (size!1888 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!850 0))(
  ( (LongMapFixedSize!851 (defaultEntry!764 Int) (mask!1372 (_ BitVec 32)) (extraKeys!671 (_ BitVec 32)) (zeroValue!681 List!2029) (minValue!681 List!2029) (_size!983 (_ BitVec 32)) (_keys!716 array!1583) (_values!703 array!1585) (_vacant!486 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1689 0))(
  ( (Cell!1690 (v!13382 LongMapFixedSize!850)) )
))
(declare-datatypes ((MutLongMap!425 0))(
  ( (LongMap!425 (underlying!1049 Cell!1689)) (MutLongMapExt!424 (__x!2201 Int)) )
))
(declare-datatypes ((Cell!1691 0))(
  ( (Cell!1692 (v!13383 MutLongMap!425)) )
))
(declare-datatypes ((MutableMap!421 0))(
  ( (MutableMapExt!420 (__x!2202 Int)) (HashMap!421 (underlying!1050 Cell!1691) (hashF!2297 Hashable!421) (_size!984 (_ BitVec 32)) (defaultValue!570 Int)) )
))
(declare-datatypes ((Cache!278 0))(
  ( (Cache!279 (cache!875 MutableMap!421)) )
))
(declare-fun cache!470 () Cache!278)

(declare-fun mapValue!1644 () List!2029)

(assert (=> mapNonEmpty!1644 (= (arr!735 (_values!703 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))) (store mapRest!1644 mapKey!1644 mapValue!1644))))

(declare-fun b!123418 () Bool)

(declare-fun e!70950 () Bool)

(assert (=> b!123418 (= e!70940 e!70950)))

(declare-fun res!57598 () Bool)

(assert (=> b!123418 (=> (not res!57598) (not e!70950))))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!37307 () Int)

(assert (=> b!123418 (= res!57598 (= totalInputSize!643 lt!37307))))

(assert (=> b!123418 (= lt!37307 (size!1886 totalInput!1363))))

(declare-fun mapIsEmpty!1644 () Bool)

(assert (=> mapIsEmpty!1644 mapRes!1644))

(declare-fun e!70947 () Bool)

(assert (=> b!123419 (= e!70944 (and e!70947 tp!67676))))

(declare-fun b!123420 () Bool)

(declare-fun e!70949 () Bool)

(declare-fun e!70935 () Bool)

(assert (=> b!123420 (= e!70949 e!70935)))

(declare-fun res!57599 () Bool)

(assert (=> b!123420 (=> res!57599 e!70935)))

(declare-fun r!15532 () Regex!559)

(declare-fun nullable!93 (Regex!559) Bool)

(assert (=> b!123420 (= res!57599 (nullable!93 r!15532))))

(declare-fun lt!37304 () List!2028)

(declare-fun lt!37309 () List!2028)

(assert (=> b!123420 (= (++!384 lt!37304 lt!37309) totalInput!1363)))

(declare-fun lt!37310 () C!2040)

(declare-fun lt!37314 () Unit!1569)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!30 (List!2028 C!2040 List!2028 List!2028) Unit!1569)

(assert (=> b!123420 (= lt!37314 (lemmaMoveElementToOtherListKeepsConcatEq!30 testedP!367 lt!37310 lt!37309 totalInput!1363))))

(declare-fun tail!243 (List!2028) List!2028)

(assert (=> b!123420 (= lt!37309 (tail!243 testedSuffix!285))))

(declare-fun lt!37312 () List!2028)

(declare-fun isPrefix!134 (List!2028 List!2028) Bool)

(declare-fun head!507 (List!2028) C!2040)

(assert (=> b!123420 (isPrefix!134 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022)) totalInput!1363)))

(declare-fun lt!37299 () Unit!1569)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!36 (List!2028 List!2028) Unit!1569)

(assert (=> b!123420 (= lt!37299 (lemmaAddHeadSuffixToPrefixStillPrefix!36 testedP!367 totalInput!1363))))

(assert (=> b!123420 (= lt!37304 (++!384 testedP!367 (Cons!2022 lt!37310 Nil!2022)))))

(assert (=> b!123420 (= lt!37310 (head!507 testedSuffix!285))))

(declare-fun b!123421 () Bool)

(declare-fun e!70934 () Bool)

(declare-fun tp!67668 () Bool)

(declare-fun tp!67669 () Bool)

(assert (=> b!123421 (= e!70934 (and tp!67668 tp!67669))))

(declare-fun b!123422 () Bool)

(declare-fun res!57603 () Bool)

(assert (=> b!123422 (=> (not res!57603) (not e!70932))))

(declare-fun valid!381 (Cache!278) Bool)

(assert (=> b!123422 (= res!57603 (valid!381 cache!470))))

(declare-fun b!123423 () Bool)

(declare-fun res!57602 () Bool)

(assert (=> b!123423 (=> res!57602 e!70935)))

(declare-fun validRegex!153 (Regex!559) Bool)

(declare-fun derivativeStep!65 (Regex!559 C!2040) Regex!559)

(assert (=> b!123423 (= res!57602 (not (validRegex!153 (derivativeStep!65 r!15532 lt!37310))))))

(declare-fun b!123424 () Bool)

(declare-fun tp_is_empty!1173 () Bool)

(assert (=> b!123424 (= e!70934 tp_is_empty!1173)))

(declare-fun b!123425 () Bool)

(declare-fun tp!67670 () Bool)

(assert (=> b!123425 (= e!70934 tp!67670)))

(declare-fun b!123426 () Bool)

(declare-fun e!70951 () Bool)

(declare-fun e!70952 () Bool)

(assert (=> b!123426 (= e!70951 e!70952)))

(declare-fun b!123427 () Bool)

(declare-fun e!70938 () Bool)

(declare-fun tp!67665 () Bool)

(assert (=> b!123427 (= e!70938 (and tp_is_empty!1173 tp!67665))))

(declare-fun b!123428 () Bool)

(assert (=> b!123428 (= e!70935 (= (+ 1 testedPSize!285) (size!1886 lt!37304)))))

(declare-fun b!123429 () Bool)

(declare-fun tp!67672 () Bool)

(declare-fun tp!67671 () Bool)

(assert (=> b!123429 (= e!70934 (and tp!67672 tp!67671))))

(declare-fun b!123430 () Bool)

(declare-fun e!70945 () Bool)

(declare-fun tp!67664 () Bool)

(assert (=> b!123430 (= e!70945 (and tp_is_empty!1173 tp!67664))))

(declare-fun b!123431 () Bool)

(declare-fun res!57601 () Bool)

(declare-fun e!70943 () Bool)

(assert (=> b!123431 (=> res!57601 e!70943)))

(assert (=> b!123431 (= res!57601 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!123432 () Bool)

(declare-fun Unit!1572 () Unit!1569)

(assert (=> b!123432 (= e!70941 Unit!1572)))

(declare-fun lt!37302 () Unit!1569)

(declare-fun lemmaIsPrefixRefl!104 (List!2028 List!2028) Unit!1569)

(assert (=> b!123432 (= lt!37302 (lemmaIsPrefixRefl!104 totalInput!1363 totalInput!1363))))

(assert (=> b!123432 (isPrefix!134 totalInput!1363 totalInput!1363)))

(declare-fun lt!37306 () Unit!1569)

(declare-fun lemmaIsPrefixSameLengthThenSameList!47 (List!2028 List!2028 List!2028) Unit!1569)

(assert (=> b!123432 (= lt!37306 (lemmaIsPrefixSameLengthThenSameList!47 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!123432 false))

(declare-fun b!123433 () Bool)

(declare-fun e!70933 () Bool)

(assert (=> b!123433 (= e!70933 e!70951)))

(declare-fun b!123434 () Bool)

(declare-fun e!70939 () Bool)

(declare-fun tp!67666 () Bool)

(assert (=> b!123434 (= e!70939 (and tp!67666 mapRes!1644))))

(declare-fun condMapEmpty!1644 () Bool)

(declare-fun mapDefault!1644 () List!2029)

(assert (=> b!123434 (= condMapEmpty!1644 (= (arr!735 (_values!703 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))) ((as const (Array (_ BitVec 32) List!2029)) mapDefault!1644)))))

(declare-fun b!123435 () Bool)

(declare-fun e!70942 () Bool)

(declare-fun tp!67675 () Bool)

(assert (=> b!123435 (= e!70942 (and tp_is_empty!1173 tp!67675))))

(declare-fun res!57606 () Bool)

(assert (=> start!12488 (=> (not res!57606) (not e!70932))))

(assert (=> start!12488 (= res!57606 (validRegex!153 r!15532))))

(assert (=> start!12488 e!70932))

(assert (=> start!12488 true))

(assert (=> start!12488 e!70934))

(assert (=> start!12488 e!70945))

(assert (=> start!12488 e!70942))

(assert (=> start!12488 e!70938))

(declare-fun inv!2554 (Cache!278) Bool)

(assert (=> start!12488 (and (inv!2554 cache!470) e!70936)))

(declare-fun b!123436 () Bool)

(declare-fun lt!37303 () MutLongMap!425)

(get-info :version)

(assert (=> b!123436 (= e!70947 (and e!70933 ((_ is LongMap!425) lt!37303)))))

(assert (=> b!123436 (= lt!37303 (v!13383 (underlying!1050 (cache!875 cache!470))))))

(declare-fun b!123437 () Bool)

(declare-fun e!70948 () Bool)

(assert (=> b!123437 (= e!70948 e!70943)))

(declare-fun res!57597 () Bool)

(assert (=> b!123437 (=> res!57597 e!70943)))

(declare-fun lostCause!77 (Regex!559) Bool)

(assert (=> b!123437 (= res!57597 (lostCause!77 r!15532))))

(assert (=> b!123437 (and (= testedSuffix!285 lt!37312) (= lt!37312 testedSuffix!285))))

(declare-fun lt!37308 () Unit!1569)

(declare-fun lemmaSamePrefixThenSameSuffix!68 (List!2028 List!2028 List!2028 List!2028 List!2028) Unit!1569)

(assert (=> b!123437 (= lt!37308 (lemmaSamePrefixThenSameSuffix!68 testedP!367 testedSuffix!285 testedP!367 lt!37312 totalInput!1363))))

(declare-fun getSuffix!72 (List!2028 List!2028) List!2028)

(assert (=> b!123437 (= lt!37312 (getSuffix!72 totalInput!1363 testedP!367))))

(declare-fun b!123438 () Bool)

(assert (=> b!123438 (= e!70950 (not e!70948))))

(declare-fun res!57605 () Bool)

(assert (=> b!123438 (=> res!57605 e!70948)))

(assert (=> b!123438 (= res!57605 (not (isPrefix!134 testedP!367 totalInput!1363)))))

(assert (=> b!123438 (isPrefix!134 testedP!367 lt!37311)))

(declare-fun lt!37301 () Unit!1569)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!77 (List!2028 List!2028) Unit!1569)

(assert (=> b!123438 (= lt!37301 (lemmaConcatTwoListThenFirstIsPrefix!77 testedP!367 testedSuffix!285))))

(declare-fun b!123439 () Bool)

(assert (=> b!123439 (= e!70943 e!70949)))

(declare-fun res!57604 () Bool)

(assert (=> b!123439 (=> res!57604 e!70949)))

(assert (=> b!123439 (= res!57604 (>= lt!37305 lt!37307))))

(declare-fun lt!37300 () Unit!1569)

(assert (=> b!123439 (= lt!37300 e!70941)))

(declare-fun c!27298 () Bool)

(assert (=> b!123439 (= c!27298 (= lt!37305 lt!37307))))

(assert (=> b!123439 (<= lt!37305 lt!37307)))

(declare-fun lt!37313 () Unit!1569)

(declare-fun lemmaIsPrefixThenSmallerEqSize!47 (List!2028 List!2028) Unit!1569)

(assert (=> b!123439 (= lt!37313 (lemmaIsPrefixThenSmallerEqSize!47 testedP!367 totalInput!1363))))

(declare-fun tp!67673 () Bool)

(declare-fun tp!67678 () Bool)

(declare-fun array_inv!529 (array!1583) Bool)

(declare-fun array_inv!530 (array!1585) Bool)

(assert (=> b!123440 (= e!70952 (and tp!67667 tp!67673 tp!67678 (array_inv!529 (_keys!716 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))) (array_inv!530 (_values!703 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))) e!70939))))

(assert (= (and start!12488 res!57606) b!123422))

(assert (= (and b!123422 res!57603) b!123414))

(assert (= (and b!123414 res!57600) b!123416))

(assert (= (and b!123416 res!57607) b!123418))

(assert (= (and b!123418 res!57598) b!123438))

(assert (= (and b!123438 (not res!57605)) b!123437))

(assert (= (and b!123437 (not res!57597)) b!123431))

(assert (= (and b!123431 (not res!57601)) b!123439))

(assert (= (and b!123439 c!27298) b!123432))

(assert (= (and b!123439 (not c!27298)) b!123415))

(assert (= (and b!123439 (not res!57604)) b!123420))

(assert (= (and b!123420 (not res!57599)) b!123423))

(assert (= (and b!123423 (not res!57602)) b!123428))

(assert (= (and start!12488 ((_ is ElementMatch!559) r!15532)) b!123424))

(assert (= (and start!12488 ((_ is Concat!943) r!15532)) b!123429))

(assert (= (and start!12488 ((_ is Star!559) r!15532)) b!123425))

(assert (= (and start!12488 ((_ is Union!559) r!15532)) b!123421))

(assert (= (and start!12488 ((_ is Cons!2022) totalInput!1363)) b!123430))

(assert (= (and start!12488 ((_ is Cons!2022) testedSuffix!285)) b!123435))

(assert (= (and start!12488 ((_ is Cons!2022) testedP!367)) b!123427))

(assert (= (and b!123434 condMapEmpty!1644) mapIsEmpty!1644))

(assert (= (and b!123434 (not condMapEmpty!1644)) mapNonEmpty!1644))

(assert (= b!123440 b!123434))

(assert (= b!123426 b!123440))

(assert (= b!123433 b!123426))

(assert (= (and b!123436 ((_ is LongMap!425) (v!13383 (underlying!1050 (cache!875 cache!470))))) b!123433))

(assert (= b!123419 b!123436))

(assert (= (and b!123417 ((_ is HashMap!421) (cache!875 cache!470))) b!123419))

(assert (= start!12488 b!123417))

(declare-fun m!109256 () Bool)

(assert (=> b!123437 m!109256))

(declare-fun m!109258 () Bool)

(assert (=> b!123437 m!109258))

(declare-fun m!109260 () Bool)

(assert (=> b!123437 m!109260))

(declare-fun m!109262 () Bool)

(assert (=> b!123432 m!109262))

(declare-fun m!109264 () Bool)

(assert (=> b!123432 m!109264))

(declare-fun m!109266 () Bool)

(assert (=> b!123432 m!109266))

(declare-fun m!109268 () Bool)

(assert (=> b!123420 m!109268))

(declare-fun m!109270 () Bool)

(assert (=> b!123420 m!109270))

(declare-fun m!109272 () Bool)

(assert (=> b!123420 m!109272))

(declare-fun m!109274 () Bool)

(assert (=> b!123420 m!109274))

(declare-fun m!109276 () Bool)

(assert (=> b!123420 m!109276))

(declare-fun m!109278 () Bool)

(assert (=> b!123420 m!109278))

(declare-fun m!109280 () Bool)

(assert (=> b!123420 m!109280))

(declare-fun m!109282 () Bool)

(assert (=> b!123420 m!109282))

(assert (=> b!123420 m!109270))

(declare-fun m!109284 () Bool)

(assert (=> b!123420 m!109284))

(declare-fun m!109286 () Bool)

(assert (=> b!123420 m!109286))

(declare-fun m!109288 () Bool)

(assert (=> b!123418 m!109288))

(declare-fun m!109290 () Bool)

(assert (=> b!123440 m!109290))

(declare-fun m!109292 () Bool)

(assert (=> b!123440 m!109292))

(declare-fun m!109294 () Bool)

(assert (=> mapNonEmpty!1644 m!109294))

(declare-fun m!109296 () Bool)

(assert (=> b!123422 m!109296))

(declare-fun m!109298 () Bool)

(assert (=> b!123414 m!109298))

(declare-fun m!109300 () Bool)

(assert (=> b!123438 m!109300))

(declare-fun m!109302 () Bool)

(assert (=> b!123438 m!109302))

(declare-fun m!109304 () Bool)

(assert (=> b!123438 m!109304))

(declare-fun m!109306 () Bool)

(assert (=> b!123439 m!109306))

(declare-fun m!109308 () Bool)

(assert (=> start!12488 m!109308))

(declare-fun m!109310 () Bool)

(assert (=> start!12488 m!109310))

(declare-fun m!109312 () Bool)

(assert (=> b!123428 m!109312))

(declare-fun m!109314 () Bool)

(assert (=> b!123423 m!109314))

(assert (=> b!123423 m!109314))

(declare-fun m!109316 () Bool)

(assert (=> b!123423 m!109316))

(declare-fun m!109318 () Bool)

(assert (=> b!123416 m!109318))

(check-sat (not b_next!3929) (not mapNonEmpty!1644) (not b!123414) (not b!123423) b_and!6061 tp_is_empty!1173 (not b!123430) (not b!123437) (not b!123418) (not b!123435) (not b!123427) (not b!123434) (not b!123439) (not b!123425) (not b!123440) (not b!123428) (not b!123422) (not b!123416) (not b!123420) b_and!6059 (not start!12488) (not b!123429) (not b!123421) (not b_next!3931) (not b!123438) (not b!123432))
(check-sat b_and!6059 b_and!6061 (not b_next!3929) (not b_next!3931))
(get-model)

(declare-fun d!29221 () Bool)

(declare-fun lt!37317 () Int)

(assert (=> d!29221 (>= lt!37317 0)))

(declare-fun e!70955 () Int)

(assert (=> d!29221 (= lt!37317 e!70955)))

(declare-fun c!27302 () Bool)

(assert (=> d!29221 (= c!27302 ((_ is Nil!2022) totalInput!1363))))

(assert (=> d!29221 (= (size!1886 totalInput!1363) lt!37317)))

(declare-fun b!123445 () Bool)

(assert (=> b!123445 (= e!70955 0)))

(declare-fun b!123446 () Bool)

(assert (=> b!123446 (= e!70955 (+ 1 (size!1886 (t!22505 totalInput!1363))))))

(assert (= (and d!29221 c!27302) b!123445))

(assert (= (and d!29221 (not c!27302)) b!123446))

(declare-fun m!109320 () Bool)

(assert (=> b!123446 m!109320))

(assert (=> b!123418 d!29221))

(declare-fun d!29223 () Bool)

(declare-fun e!70962 () Bool)

(assert (=> d!29223 e!70962))

(declare-fun res!57618 () Bool)

(assert (=> d!29223 (=> res!57618 e!70962)))

(declare-fun lt!37320 () Bool)

(assert (=> d!29223 (= res!57618 (not lt!37320))))

(declare-fun e!70964 () Bool)

(assert (=> d!29223 (= lt!37320 e!70964)))

(declare-fun res!57619 () Bool)

(assert (=> d!29223 (=> res!57619 e!70964)))

(assert (=> d!29223 (= res!57619 ((_ is Nil!2022) testedP!367))))

(assert (=> d!29223 (= (isPrefix!134 testedP!367 totalInput!1363) lt!37320)))

(declare-fun b!123457 () Bool)

(declare-fun e!70963 () Bool)

(assert (=> b!123457 (= e!70963 (isPrefix!134 (tail!243 testedP!367) (tail!243 totalInput!1363)))))

(declare-fun b!123455 () Bool)

(assert (=> b!123455 (= e!70964 e!70963)))

(declare-fun res!57617 () Bool)

(assert (=> b!123455 (=> (not res!57617) (not e!70963))))

(assert (=> b!123455 (= res!57617 (not ((_ is Nil!2022) totalInput!1363)))))

(declare-fun b!123456 () Bool)

(declare-fun res!57616 () Bool)

(assert (=> b!123456 (=> (not res!57616) (not e!70963))))

(assert (=> b!123456 (= res!57616 (= (head!507 testedP!367) (head!507 totalInput!1363)))))

(declare-fun b!123458 () Bool)

(assert (=> b!123458 (= e!70962 (>= (size!1886 totalInput!1363) (size!1886 testedP!367)))))

(assert (= (and d!29223 (not res!57619)) b!123455))

(assert (= (and b!123455 res!57617) b!123456))

(assert (= (and b!123456 res!57616) b!123457))

(assert (= (and d!29223 (not res!57618)) b!123458))

(declare-fun m!109322 () Bool)

(assert (=> b!123457 m!109322))

(declare-fun m!109324 () Bool)

(assert (=> b!123457 m!109324))

(assert (=> b!123457 m!109322))

(assert (=> b!123457 m!109324))

(declare-fun m!109326 () Bool)

(assert (=> b!123457 m!109326))

(declare-fun m!109328 () Bool)

(assert (=> b!123456 m!109328))

(declare-fun m!109330 () Bool)

(assert (=> b!123456 m!109330))

(assert (=> b!123458 m!109288))

(assert (=> b!123458 m!109318))

(assert (=> b!123438 d!29223))

(declare-fun d!29225 () Bool)

(declare-fun e!70965 () Bool)

(assert (=> d!29225 e!70965))

(declare-fun res!57622 () Bool)

(assert (=> d!29225 (=> res!57622 e!70965)))

(declare-fun lt!37321 () Bool)

(assert (=> d!29225 (= res!57622 (not lt!37321))))

(declare-fun e!70967 () Bool)

(assert (=> d!29225 (= lt!37321 e!70967)))

(declare-fun res!57623 () Bool)

(assert (=> d!29225 (=> res!57623 e!70967)))

(assert (=> d!29225 (= res!57623 ((_ is Nil!2022) testedP!367))))

(assert (=> d!29225 (= (isPrefix!134 testedP!367 lt!37311) lt!37321)))

(declare-fun b!123461 () Bool)

(declare-fun e!70966 () Bool)

(assert (=> b!123461 (= e!70966 (isPrefix!134 (tail!243 testedP!367) (tail!243 lt!37311)))))

(declare-fun b!123459 () Bool)

(assert (=> b!123459 (= e!70967 e!70966)))

(declare-fun res!57621 () Bool)

(assert (=> b!123459 (=> (not res!57621) (not e!70966))))

(assert (=> b!123459 (= res!57621 (not ((_ is Nil!2022) lt!37311)))))

(declare-fun b!123460 () Bool)

(declare-fun res!57620 () Bool)

(assert (=> b!123460 (=> (not res!57620) (not e!70966))))

(assert (=> b!123460 (= res!57620 (= (head!507 testedP!367) (head!507 lt!37311)))))

(declare-fun b!123462 () Bool)

(assert (=> b!123462 (= e!70965 (>= (size!1886 lt!37311) (size!1886 testedP!367)))))

(assert (= (and d!29225 (not res!57623)) b!123459))

(assert (= (and b!123459 res!57621) b!123460))

(assert (= (and b!123460 res!57620) b!123461))

(assert (= (and d!29225 (not res!57622)) b!123462))

(assert (=> b!123461 m!109322))

(declare-fun m!109332 () Bool)

(assert (=> b!123461 m!109332))

(assert (=> b!123461 m!109322))

(assert (=> b!123461 m!109332))

(declare-fun m!109334 () Bool)

(assert (=> b!123461 m!109334))

(assert (=> b!123460 m!109328))

(declare-fun m!109336 () Bool)

(assert (=> b!123460 m!109336))

(declare-fun m!109338 () Bool)

(assert (=> b!123462 m!109338))

(assert (=> b!123462 m!109318))

(assert (=> b!123438 d!29225))

(declare-fun d!29227 () Bool)

(assert (=> d!29227 (isPrefix!134 testedP!367 (++!384 testedP!367 testedSuffix!285))))

(declare-fun lt!37324 () Unit!1569)

(declare-fun choose!1603 (List!2028 List!2028) Unit!1569)

(assert (=> d!29227 (= lt!37324 (choose!1603 testedP!367 testedSuffix!285))))

(assert (=> d!29227 (= (lemmaConcatTwoListThenFirstIsPrefix!77 testedP!367 testedSuffix!285) lt!37324)))

(declare-fun bs!12015 () Bool)

(assert (= bs!12015 d!29227))

(assert (=> bs!12015 m!109298))

(assert (=> bs!12015 m!109298))

(declare-fun m!109340 () Bool)

(assert (=> bs!12015 m!109340))

(declare-fun m!109342 () Bool)

(assert (=> bs!12015 m!109342))

(assert (=> b!123438 d!29227))

(declare-fun d!29229 () Bool)

(assert (=> d!29229 (<= (size!1886 testedP!367) (size!1886 totalInput!1363))))

(declare-fun lt!37327 () Unit!1569)

(declare-fun choose!1604 (List!2028 List!2028) Unit!1569)

(assert (=> d!29229 (= lt!37327 (choose!1604 testedP!367 totalInput!1363))))

(assert (=> d!29229 (isPrefix!134 testedP!367 totalInput!1363)))

(assert (=> d!29229 (= (lemmaIsPrefixThenSmallerEqSize!47 testedP!367 totalInput!1363) lt!37327)))

(declare-fun bs!12016 () Bool)

(assert (= bs!12016 d!29229))

(assert (=> bs!12016 m!109318))

(assert (=> bs!12016 m!109288))

(declare-fun m!109344 () Bool)

(assert (=> bs!12016 m!109344))

(assert (=> bs!12016 m!109300))

(assert (=> b!123439 d!29229))

(declare-fun d!29231 () Bool)

(declare-fun lt!37328 () Int)

(assert (=> d!29231 (>= lt!37328 0)))

(declare-fun e!70968 () Int)

(assert (=> d!29231 (= lt!37328 e!70968)))

(declare-fun c!27303 () Bool)

(assert (=> d!29231 (= c!27303 ((_ is Nil!2022) lt!37304))))

(assert (=> d!29231 (= (size!1886 lt!37304) lt!37328)))

(declare-fun b!123463 () Bool)

(assert (=> b!123463 (= e!70968 0)))

(declare-fun b!123464 () Bool)

(assert (=> b!123464 (= e!70968 (+ 1 (size!1886 (t!22505 lt!37304))))))

(assert (= (and d!29231 c!27303) b!123463))

(assert (= (and d!29231 (not c!27303)) b!123464))

(declare-fun m!109346 () Bool)

(assert (=> b!123464 m!109346))

(assert (=> b!123428 d!29231))

(declare-fun d!29233 () Bool)

(declare-fun lostCauseFct!34 (Regex!559) Bool)

(assert (=> d!29233 (= (lostCause!77 r!15532) (lostCauseFct!34 r!15532))))

(declare-fun bs!12017 () Bool)

(assert (= bs!12017 d!29233))

(declare-fun m!109348 () Bool)

(assert (=> bs!12017 m!109348))

(assert (=> b!123437 d!29233))

(declare-fun d!29235 () Bool)

(assert (=> d!29235 (= testedSuffix!285 lt!37312)))

(declare-fun lt!37331 () Unit!1569)

(declare-fun choose!1605 (List!2028 List!2028 List!2028 List!2028 List!2028) Unit!1569)

(assert (=> d!29235 (= lt!37331 (choose!1605 testedP!367 testedSuffix!285 testedP!367 lt!37312 totalInput!1363))))

(assert (=> d!29235 (isPrefix!134 testedP!367 totalInput!1363)))

(assert (=> d!29235 (= (lemmaSamePrefixThenSameSuffix!68 testedP!367 testedSuffix!285 testedP!367 lt!37312 totalInput!1363) lt!37331)))

(declare-fun bs!12018 () Bool)

(assert (= bs!12018 d!29235))

(declare-fun m!109350 () Bool)

(assert (=> bs!12018 m!109350))

(assert (=> bs!12018 m!109300))

(assert (=> b!123437 d!29235))

(declare-fun d!29237 () Bool)

(declare-fun lt!37334 () List!2028)

(assert (=> d!29237 (= (++!384 testedP!367 lt!37334) totalInput!1363)))

(declare-fun e!70971 () List!2028)

(assert (=> d!29237 (= lt!37334 e!70971)))

(declare-fun c!27306 () Bool)

(assert (=> d!29237 (= c!27306 ((_ is Cons!2022) testedP!367))))

(assert (=> d!29237 (>= (size!1886 totalInput!1363) (size!1886 testedP!367))))

(assert (=> d!29237 (= (getSuffix!72 totalInput!1363 testedP!367) lt!37334)))

(declare-fun b!123469 () Bool)

(assert (=> b!123469 (= e!70971 (getSuffix!72 (tail!243 totalInput!1363) (t!22505 testedP!367)))))

(declare-fun b!123470 () Bool)

(assert (=> b!123470 (= e!70971 totalInput!1363)))

(assert (= (and d!29237 c!27306) b!123469))

(assert (= (and d!29237 (not c!27306)) b!123470))

(declare-fun m!109352 () Bool)

(assert (=> d!29237 m!109352))

(assert (=> d!29237 m!109288))

(assert (=> d!29237 m!109318))

(assert (=> b!123469 m!109324))

(assert (=> b!123469 m!109324))

(declare-fun m!109354 () Bool)

(assert (=> b!123469 m!109354))

(assert (=> b!123437 d!29237))

(declare-fun d!29239 () Bool)

(assert (=> d!29239 (= (head!507 testedSuffix!285) (h!7419 testedSuffix!285))))

(assert (=> b!123420 d!29239))

(declare-fun b!123481 () Bool)

(declare-fun res!57628 () Bool)

(declare-fun e!70976 () Bool)

(assert (=> b!123481 (=> (not res!57628) (not e!70976))))

(declare-fun lt!37337 () List!2028)

(assert (=> b!123481 (= res!57628 (= (size!1886 lt!37337) (+ (size!1886 testedP!367) (size!1886 (Cons!2022 lt!37310 Nil!2022)))))))

(declare-fun b!123479 () Bool)

(declare-fun e!70977 () List!2028)

(assert (=> b!123479 (= e!70977 (Cons!2022 lt!37310 Nil!2022))))

(declare-fun b!123480 () Bool)

(assert (=> b!123480 (= e!70977 (Cons!2022 (h!7419 testedP!367) (++!384 (t!22505 testedP!367) (Cons!2022 lt!37310 Nil!2022))))))

(declare-fun b!123482 () Bool)

(assert (=> b!123482 (= e!70976 (or (not (= (Cons!2022 lt!37310 Nil!2022) Nil!2022)) (= lt!37337 testedP!367)))))

(declare-fun d!29241 () Bool)

(assert (=> d!29241 e!70976))

(declare-fun res!57629 () Bool)

(assert (=> d!29241 (=> (not res!57629) (not e!70976))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!229 (List!2028) (InoxSet C!2040))

(assert (=> d!29241 (= res!57629 (= (content!229 lt!37337) ((_ map or) (content!229 testedP!367) (content!229 (Cons!2022 lt!37310 Nil!2022)))))))

(assert (=> d!29241 (= lt!37337 e!70977)))

(declare-fun c!27309 () Bool)

(assert (=> d!29241 (= c!27309 ((_ is Nil!2022) testedP!367))))

(assert (=> d!29241 (= (++!384 testedP!367 (Cons!2022 lt!37310 Nil!2022)) lt!37337)))

(assert (= (and d!29241 c!27309) b!123479))

(assert (= (and d!29241 (not c!27309)) b!123480))

(assert (= (and d!29241 res!57629) b!123481))

(assert (= (and b!123481 res!57628) b!123482))

(declare-fun m!109356 () Bool)

(assert (=> b!123481 m!109356))

(assert (=> b!123481 m!109318))

(declare-fun m!109358 () Bool)

(assert (=> b!123481 m!109358))

(declare-fun m!109360 () Bool)

(assert (=> b!123480 m!109360))

(declare-fun m!109362 () Bool)

(assert (=> d!29241 m!109362))

(declare-fun m!109364 () Bool)

(assert (=> d!29241 m!109364))

(declare-fun m!109366 () Bool)

(assert (=> d!29241 m!109366))

(assert (=> b!123420 d!29241))

(declare-fun d!29243 () Bool)

(declare-fun nullableFct!24 (Regex!559) Bool)

(assert (=> d!29243 (= (nullable!93 r!15532) (nullableFct!24 r!15532))))

(declare-fun bs!12019 () Bool)

(assert (= bs!12019 d!29243))

(declare-fun m!109368 () Bool)

(assert (=> bs!12019 m!109368))

(assert (=> b!123420 d!29243))

(declare-fun d!29245 () Bool)

(assert (=> d!29245 (isPrefix!134 (++!384 testedP!367 (Cons!2022 (head!507 (getSuffix!72 totalInput!1363 testedP!367)) Nil!2022)) totalInput!1363)))

(declare-fun lt!37340 () Unit!1569)

(declare-fun choose!1606 (List!2028 List!2028) Unit!1569)

(assert (=> d!29245 (= lt!37340 (choose!1606 testedP!367 totalInput!1363))))

(assert (=> d!29245 (isPrefix!134 testedP!367 totalInput!1363)))

(assert (=> d!29245 (= (lemmaAddHeadSuffixToPrefixStillPrefix!36 testedP!367 totalInput!1363) lt!37340)))

(declare-fun bs!12020 () Bool)

(assert (= bs!12020 d!29245))

(declare-fun m!109370 () Bool)

(assert (=> bs!12020 m!109370))

(assert (=> bs!12020 m!109260))

(declare-fun m!109372 () Bool)

(assert (=> bs!12020 m!109372))

(assert (=> bs!12020 m!109300))

(declare-fun m!109374 () Bool)

(assert (=> bs!12020 m!109374))

(declare-fun m!109376 () Bool)

(assert (=> bs!12020 m!109376))

(assert (=> bs!12020 m!109260))

(assert (=> bs!12020 m!109374))

(assert (=> b!123420 d!29245))

(declare-fun b!123485 () Bool)

(declare-fun res!57630 () Bool)

(declare-fun e!70978 () Bool)

(assert (=> b!123485 (=> (not res!57630) (not e!70978))))

(declare-fun lt!37341 () List!2028)

(assert (=> b!123485 (= res!57630 (= (size!1886 lt!37341) (+ (size!1886 testedP!367) (size!1886 (Cons!2022 (head!507 lt!37312) Nil!2022)))))))

(declare-fun b!123483 () Bool)

(declare-fun e!70979 () List!2028)

(assert (=> b!123483 (= e!70979 (Cons!2022 (head!507 lt!37312) Nil!2022))))

(declare-fun b!123484 () Bool)

(assert (=> b!123484 (= e!70979 (Cons!2022 (h!7419 testedP!367) (++!384 (t!22505 testedP!367) (Cons!2022 (head!507 lt!37312) Nil!2022))))))

(declare-fun b!123486 () Bool)

(assert (=> b!123486 (= e!70978 (or (not (= (Cons!2022 (head!507 lt!37312) Nil!2022) Nil!2022)) (= lt!37341 testedP!367)))))

(declare-fun d!29247 () Bool)

(assert (=> d!29247 e!70978))

(declare-fun res!57631 () Bool)

(assert (=> d!29247 (=> (not res!57631) (not e!70978))))

(assert (=> d!29247 (= res!57631 (= (content!229 lt!37341) ((_ map or) (content!229 testedP!367) (content!229 (Cons!2022 (head!507 lt!37312) Nil!2022)))))))

(assert (=> d!29247 (= lt!37341 e!70979)))

(declare-fun c!27310 () Bool)

(assert (=> d!29247 (= c!27310 ((_ is Nil!2022) testedP!367))))

(assert (=> d!29247 (= (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022)) lt!37341)))

(assert (= (and d!29247 c!27310) b!123483))

(assert (= (and d!29247 (not c!27310)) b!123484))

(assert (= (and d!29247 res!57631) b!123485))

(assert (= (and b!123485 res!57630) b!123486))

(declare-fun m!109378 () Bool)

(assert (=> b!123485 m!109378))

(assert (=> b!123485 m!109318))

(declare-fun m!109380 () Bool)

(assert (=> b!123485 m!109380))

(declare-fun m!109382 () Bool)

(assert (=> b!123484 m!109382))

(declare-fun m!109384 () Bool)

(assert (=> d!29247 m!109384))

(assert (=> d!29247 m!109364))

(declare-fun m!109386 () Bool)

(assert (=> d!29247 m!109386))

(assert (=> b!123420 d!29247))

(declare-fun d!29249 () Bool)

(assert (=> d!29249 (= (head!507 lt!37312) (h!7419 lt!37312))))

(assert (=> b!123420 d!29249))

(declare-fun d!29251 () Bool)

(assert (=> d!29251 (= (++!384 (++!384 testedP!367 (Cons!2022 lt!37310 Nil!2022)) lt!37309) totalInput!1363)))

(declare-fun lt!37344 () Unit!1569)

(declare-fun choose!1607 (List!2028 C!2040 List!2028 List!2028) Unit!1569)

(assert (=> d!29251 (= lt!37344 (choose!1607 testedP!367 lt!37310 lt!37309 totalInput!1363))))

(assert (=> d!29251 (= (++!384 testedP!367 (Cons!2022 lt!37310 lt!37309)) totalInput!1363)))

(assert (=> d!29251 (= (lemmaMoveElementToOtherListKeepsConcatEq!30 testedP!367 lt!37310 lt!37309 totalInput!1363) lt!37344)))

(declare-fun bs!12021 () Bool)

(assert (= bs!12021 d!29251))

(assert (=> bs!12021 m!109280))

(assert (=> bs!12021 m!109280))

(declare-fun m!109388 () Bool)

(assert (=> bs!12021 m!109388))

(declare-fun m!109390 () Bool)

(assert (=> bs!12021 m!109390))

(declare-fun m!109392 () Bool)

(assert (=> bs!12021 m!109392))

(assert (=> b!123420 d!29251))

(declare-fun b!123489 () Bool)

(declare-fun res!57632 () Bool)

(declare-fun e!70980 () Bool)

(assert (=> b!123489 (=> (not res!57632) (not e!70980))))

(declare-fun lt!37345 () List!2028)

(assert (=> b!123489 (= res!57632 (= (size!1886 lt!37345) (+ (size!1886 lt!37304) (size!1886 lt!37309))))))

(declare-fun b!123487 () Bool)

(declare-fun e!70981 () List!2028)

(assert (=> b!123487 (= e!70981 lt!37309)))

(declare-fun b!123488 () Bool)

(assert (=> b!123488 (= e!70981 (Cons!2022 (h!7419 lt!37304) (++!384 (t!22505 lt!37304) lt!37309)))))

(declare-fun b!123490 () Bool)

(assert (=> b!123490 (= e!70980 (or (not (= lt!37309 Nil!2022)) (= lt!37345 lt!37304)))))

(declare-fun d!29253 () Bool)

(assert (=> d!29253 e!70980))

(declare-fun res!57633 () Bool)

(assert (=> d!29253 (=> (not res!57633) (not e!70980))))

(assert (=> d!29253 (= res!57633 (= (content!229 lt!37345) ((_ map or) (content!229 lt!37304) (content!229 lt!37309))))))

(assert (=> d!29253 (= lt!37345 e!70981)))

(declare-fun c!27311 () Bool)

(assert (=> d!29253 (= c!27311 ((_ is Nil!2022) lt!37304))))

(assert (=> d!29253 (= (++!384 lt!37304 lt!37309) lt!37345)))

(assert (= (and d!29253 c!27311) b!123487))

(assert (= (and d!29253 (not c!27311)) b!123488))

(assert (= (and d!29253 res!57633) b!123489))

(assert (= (and b!123489 res!57632) b!123490))

(declare-fun m!109394 () Bool)

(assert (=> b!123489 m!109394))

(assert (=> b!123489 m!109312))

(declare-fun m!109396 () Bool)

(assert (=> b!123489 m!109396))

(declare-fun m!109398 () Bool)

(assert (=> b!123488 m!109398))

(declare-fun m!109400 () Bool)

(assert (=> d!29253 m!109400))

(declare-fun m!109402 () Bool)

(assert (=> d!29253 m!109402))

(declare-fun m!109404 () Bool)

(assert (=> d!29253 m!109404))

(assert (=> b!123420 d!29253))

(declare-fun d!29255 () Bool)

(declare-fun e!70982 () Bool)

(assert (=> d!29255 e!70982))

(declare-fun res!57636 () Bool)

(assert (=> d!29255 (=> res!57636 e!70982)))

(declare-fun lt!37346 () Bool)

(assert (=> d!29255 (= res!57636 (not lt!37346))))

(declare-fun e!70984 () Bool)

(assert (=> d!29255 (= lt!37346 e!70984)))

(declare-fun res!57637 () Bool)

(assert (=> d!29255 (=> res!57637 e!70984)))

(assert (=> d!29255 (= res!57637 ((_ is Nil!2022) (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022))))))

(assert (=> d!29255 (= (isPrefix!134 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022)) totalInput!1363) lt!37346)))

(declare-fun e!70983 () Bool)

(declare-fun b!123493 () Bool)

(assert (=> b!123493 (= e!70983 (isPrefix!134 (tail!243 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022))) (tail!243 totalInput!1363)))))

(declare-fun b!123491 () Bool)

(assert (=> b!123491 (= e!70984 e!70983)))

(declare-fun res!57635 () Bool)

(assert (=> b!123491 (=> (not res!57635) (not e!70983))))

(assert (=> b!123491 (= res!57635 (not ((_ is Nil!2022) totalInput!1363)))))

(declare-fun b!123492 () Bool)

(declare-fun res!57634 () Bool)

(assert (=> b!123492 (=> (not res!57634) (not e!70983))))

(assert (=> b!123492 (= res!57634 (= (head!507 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022))) (head!507 totalInput!1363)))))

(declare-fun b!123494 () Bool)

(assert (=> b!123494 (= e!70982 (>= (size!1886 totalInput!1363) (size!1886 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022)))))))

(assert (= (and d!29255 (not res!57637)) b!123491))

(assert (= (and b!123491 res!57635) b!123492))

(assert (= (and b!123492 res!57634) b!123493))

(assert (= (and d!29255 (not res!57636)) b!123494))

(assert (=> b!123493 m!109270))

(declare-fun m!109406 () Bool)

(assert (=> b!123493 m!109406))

(assert (=> b!123493 m!109324))

(assert (=> b!123493 m!109406))

(assert (=> b!123493 m!109324))

(declare-fun m!109408 () Bool)

(assert (=> b!123493 m!109408))

(assert (=> b!123492 m!109270))

(declare-fun m!109410 () Bool)

(assert (=> b!123492 m!109410))

(assert (=> b!123492 m!109330))

(assert (=> b!123494 m!109288))

(assert (=> b!123494 m!109270))

(declare-fun m!109412 () Bool)

(assert (=> b!123494 m!109412))

(assert (=> b!123420 d!29255))

(declare-fun d!29257 () Bool)

(assert (=> d!29257 (= (tail!243 testedSuffix!285) (t!22505 testedSuffix!285))))

(assert (=> b!123420 d!29257))

(declare-fun call!5300 () Bool)

(declare-fun bm!5294 () Bool)

(declare-fun c!27317 () Bool)

(declare-fun c!27316 () Bool)

(assert (=> bm!5294 (= call!5300 (validRegex!153 (ite c!27317 (reg!888 r!15532) (ite c!27316 (regTwo!1631 r!15532) (regOne!1630 r!15532)))))))

(declare-fun b!123513 () Bool)

(declare-fun e!71005 () Bool)

(declare-fun e!71002 () Bool)

(assert (=> b!123513 (= e!71005 e!71002)))

(assert (=> b!123513 (= c!27317 ((_ is Star!559) r!15532))))

(declare-fun bm!5295 () Bool)

(declare-fun call!5299 () Bool)

(assert (=> bm!5295 (= call!5299 (validRegex!153 (ite c!27316 (regOne!1631 r!15532) (regTwo!1630 r!15532))))))

(declare-fun bm!5296 () Bool)

(declare-fun call!5301 () Bool)

(assert (=> bm!5296 (= call!5301 call!5300)))

(declare-fun b!123514 () Bool)

(declare-fun e!71000 () Bool)

(assert (=> b!123514 (= e!71000 call!5300)))

(declare-fun b!123515 () Bool)

(assert (=> b!123515 (= e!71002 e!71000)))

(declare-fun res!57648 () Bool)

(assert (=> b!123515 (= res!57648 (not (nullable!93 (reg!888 r!15532))))))

(assert (=> b!123515 (=> (not res!57648) (not e!71000))))

(declare-fun b!123516 () Bool)

(declare-fun e!71004 () Bool)

(assert (=> b!123516 (= e!71002 e!71004)))

(assert (=> b!123516 (= c!27316 ((_ is Union!559) r!15532))))

(declare-fun b!123517 () Bool)

(declare-fun e!71001 () Bool)

(assert (=> b!123517 (= e!71001 call!5301)))

(declare-fun b!123518 () Bool)

(declare-fun res!57651 () Bool)

(assert (=> b!123518 (=> (not res!57651) (not e!71001))))

(assert (=> b!123518 (= res!57651 call!5299)))

(assert (=> b!123518 (= e!71004 e!71001)))

(declare-fun b!123519 () Bool)

(declare-fun e!70999 () Bool)

(assert (=> b!123519 (= e!70999 call!5299)))

(declare-fun d!29259 () Bool)

(declare-fun res!57652 () Bool)

(assert (=> d!29259 (=> res!57652 e!71005)))

(assert (=> d!29259 (= res!57652 ((_ is ElementMatch!559) r!15532))))

(assert (=> d!29259 (= (validRegex!153 r!15532) e!71005)))

(declare-fun b!123520 () Bool)

(declare-fun res!57650 () Bool)

(declare-fun e!71003 () Bool)

(assert (=> b!123520 (=> res!57650 e!71003)))

(assert (=> b!123520 (= res!57650 (not ((_ is Concat!943) r!15532)))))

(assert (=> b!123520 (= e!71004 e!71003)))

(declare-fun b!123521 () Bool)

(assert (=> b!123521 (= e!71003 e!70999)))

(declare-fun res!57649 () Bool)

(assert (=> b!123521 (=> (not res!57649) (not e!70999))))

(assert (=> b!123521 (= res!57649 call!5301)))

(assert (= (and d!29259 (not res!57652)) b!123513))

(assert (= (and b!123513 c!27317) b!123515))

(assert (= (and b!123513 (not c!27317)) b!123516))

(assert (= (and b!123515 res!57648) b!123514))

(assert (= (and b!123516 c!27316) b!123518))

(assert (= (and b!123516 (not c!27316)) b!123520))

(assert (= (and b!123518 res!57651) b!123517))

(assert (= (and b!123520 (not res!57650)) b!123521))

(assert (= (and b!123521 res!57649) b!123519))

(assert (= (or b!123517 b!123521) bm!5296))

(assert (= (or b!123518 b!123519) bm!5295))

(assert (= (or b!123514 bm!5296) bm!5294))

(declare-fun m!109414 () Bool)

(assert (=> bm!5294 m!109414))

(declare-fun m!109416 () Bool)

(assert (=> bm!5295 m!109416))

(declare-fun m!109418 () Bool)

(assert (=> b!123515 m!109418))

(assert (=> start!12488 d!29259))

(declare-fun d!29261 () Bool)

(declare-fun res!57655 () Bool)

(declare-fun e!71008 () Bool)

(assert (=> d!29261 (=> (not res!57655) (not e!71008))))

(assert (=> d!29261 (= res!57655 ((_ is HashMap!421) (cache!875 cache!470)))))

(assert (=> d!29261 (= (inv!2554 cache!470) e!71008)))

(declare-fun b!123524 () Bool)

(declare-fun validCacheMap!31 (MutableMap!421) Bool)

(assert (=> b!123524 (= e!71008 (validCacheMap!31 (cache!875 cache!470)))))

(assert (= (and d!29261 res!57655) b!123524))

(declare-fun m!109420 () Bool)

(assert (=> b!123524 m!109420))

(assert (=> start!12488 d!29261))

(declare-fun d!29263 () Bool)

(assert (=> d!29263 (= (array_inv!529 (_keys!716 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))) (bvsge (size!1887 (_keys!716 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!123440 d!29263))

(declare-fun d!29265 () Bool)

(assert (=> d!29265 (= (array_inv!530 (_values!703 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))) (bvsge (size!1888 (_values!703 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!123440 d!29265))

(declare-fun d!29267 () Bool)

(assert (=> d!29267 (= (valid!381 cache!470) (validCacheMap!31 (cache!875 cache!470)))))

(declare-fun bs!12022 () Bool)

(assert (= bs!12022 d!29267))

(assert (=> bs!12022 m!109420))

(assert (=> b!123422 d!29267))

(declare-fun c!27319 () Bool)

(declare-fun bm!5297 () Bool)

(declare-fun call!5303 () Bool)

(declare-fun c!27318 () Bool)

(assert (=> bm!5297 (= call!5303 (validRegex!153 (ite c!27319 (reg!888 (derivativeStep!65 r!15532 lt!37310)) (ite c!27318 (regTwo!1631 (derivativeStep!65 r!15532 lt!37310)) (regOne!1630 (derivativeStep!65 r!15532 lt!37310))))))))

(declare-fun b!123525 () Bool)

(declare-fun e!71015 () Bool)

(declare-fun e!71012 () Bool)

(assert (=> b!123525 (= e!71015 e!71012)))

(assert (=> b!123525 (= c!27319 ((_ is Star!559) (derivativeStep!65 r!15532 lt!37310)))))

(declare-fun bm!5298 () Bool)

(declare-fun call!5302 () Bool)

(assert (=> bm!5298 (= call!5302 (validRegex!153 (ite c!27318 (regOne!1631 (derivativeStep!65 r!15532 lt!37310)) (regTwo!1630 (derivativeStep!65 r!15532 lt!37310)))))))

(declare-fun bm!5299 () Bool)

(declare-fun call!5304 () Bool)

(assert (=> bm!5299 (= call!5304 call!5303)))

(declare-fun b!123526 () Bool)

(declare-fun e!71010 () Bool)

(assert (=> b!123526 (= e!71010 call!5303)))

(declare-fun b!123527 () Bool)

(assert (=> b!123527 (= e!71012 e!71010)))

(declare-fun res!57656 () Bool)

(assert (=> b!123527 (= res!57656 (not (nullable!93 (reg!888 (derivativeStep!65 r!15532 lt!37310)))))))

(assert (=> b!123527 (=> (not res!57656) (not e!71010))))

(declare-fun b!123528 () Bool)

(declare-fun e!71014 () Bool)

(assert (=> b!123528 (= e!71012 e!71014)))

(assert (=> b!123528 (= c!27318 ((_ is Union!559) (derivativeStep!65 r!15532 lt!37310)))))

(declare-fun b!123529 () Bool)

(declare-fun e!71011 () Bool)

(assert (=> b!123529 (= e!71011 call!5304)))

(declare-fun b!123530 () Bool)

(declare-fun res!57659 () Bool)

(assert (=> b!123530 (=> (not res!57659) (not e!71011))))

(assert (=> b!123530 (= res!57659 call!5302)))

(assert (=> b!123530 (= e!71014 e!71011)))

(declare-fun b!123531 () Bool)

(declare-fun e!71009 () Bool)

(assert (=> b!123531 (= e!71009 call!5302)))

(declare-fun d!29269 () Bool)

(declare-fun res!57660 () Bool)

(assert (=> d!29269 (=> res!57660 e!71015)))

(assert (=> d!29269 (= res!57660 ((_ is ElementMatch!559) (derivativeStep!65 r!15532 lt!37310)))))

(assert (=> d!29269 (= (validRegex!153 (derivativeStep!65 r!15532 lt!37310)) e!71015)))

(declare-fun b!123532 () Bool)

(declare-fun res!57658 () Bool)

(declare-fun e!71013 () Bool)

(assert (=> b!123532 (=> res!57658 e!71013)))

(assert (=> b!123532 (= res!57658 (not ((_ is Concat!943) (derivativeStep!65 r!15532 lt!37310))))))

(assert (=> b!123532 (= e!71014 e!71013)))

(declare-fun b!123533 () Bool)

(assert (=> b!123533 (= e!71013 e!71009)))

(declare-fun res!57657 () Bool)

(assert (=> b!123533 (=> (not res!57657) (not e!71009))))

(assert (=> b!123533 (= res!57657 call!5304)))

(assert (= (and d!29269 (not res!57660)) b!123525))

(assert (= (and b!123525 c!27319) b!123527))

(assert (= (and b!123525 (not c!27319)) b!123528))

(assert (= (and b!123527 res!57656) b!123526))

(assert (= (and b!123528 c!27318) b!123530))

(assert (= (and b!123528 (not c!27318)) b!123532))

(assert (= (and b!123530 res!57659) b!123529))

(assert (= (and b!123532 (not res!57658)) b!123533))

(assert (= (and b!123533 res!57657) b!123531))

(assert (= (or b!123529 b!123533) bm!5299))

(assert (= (or b!123530 b!123531) bm!5298))

(assert (= (or b!123526 bm!5299) bm!5297))

(declare-fun m!109422 () Bool)

(assert (=> bm!5297 m!109422))

(declare-fun m!109424 () Bool)

(assert (=> bm!5298 m!109424))

(declare-fun m!109426 () Bool)

(assert (=> b!123527 m!109426))

(assert (=> b!123423 d!29269))

(declare-fun b!123554 () Bool)

(declare-fun e!71029 () Regex!559)

(declare-fun call!5313 () Regex!559)

(assert (=> b!123554 (= e!71029 (Union!559 (Concat!943 call!5313 (regTwo!1630 r!15532)) EmptyLang!559))))

(declare-fun b!123555 () Bool)

(declare-fun e!71027 () Regex!559)

(assert (=> b!123555 (= e!71027 EmptyLang!559)))

(declare-fun b!123556 () Bool)

(declare-fun c!27331 () Bool)

(assert (=> b!123556 (= c!27331 (nullable!93 (regOne!1630 r!15532)))))

(declare-fun e!71028 () Regex!559)

(assert (=> b!123556 (= e!71028 e!71029)))

(declare-fun b!123557 () Bool)

(declare-fun e!71030 () Regex!559)

(assert (=> b!123557 (= e!71030 e!71028)))

(declare-fun c!27332 () Bool)

(assert (=> b!123557 (= c!27332 ((_ is Star!559) r!15532))))

(declare-fun bm!5308 () Bool)

(declare-fun call!5314 () Regex!559)

(declare-fun call!5315 () Regex!559)

(assert (=> bm!5308 (= call!5314 call!5315)))

(declare-fun c!27330 () Bool)

(declare-fun bm!5309 () Bool)

(assert (=> bm!5309 (= call!5315 (derivativeStep!65 (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532))) lt!37310))))

(declare-fun bm!5310 () Bool)

(assert (=> bm!5310 (= call!5313 call!5314)))

(declare-fun call!5316 () Regex!559)

(declare-fun bm!5311 () Bool)

(assert (=> bm!5311 (= call!5316 (derivativeStep!65 (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532)) lt!37310))))

(declare-fun b!123559 () Bool)

(assert (=> b!123559 (= e!71030 (Union!559 call!5316 call!5315))))

(declare-fun b!123560 () Bool)

(assert (=> b!123560 (= c!27330 ((_ is Union!559) r!15532))))

(declare-fun e!71026 () Regex!559)

(assert (=> b!123560 (= e!71026 e!71030)))

(declare-fun b!123561 () Bool)

(assert (=> b!123561 (= e!71028 (Concat!943 call!5314 r!15532))))

(declare-fun b!123562 () Bool)

(assert (=> b!123562 (= e!71029 (Union!559 (Concat!943 call!5313 (regTwo!1630 r!15532)) call!5316))))

(declare-fun b!123563 () Bool)

(assert (=> b!123563 (= e!71027 e!71026)))

(declare-fun c!27334 () Bool)

(assert (=> b!123563 (= c!27334 ((_ is ElementMatch!559) r!15532))))

(declare-fun b!123558 () Bool)

(assert (=> b!123558 (= e!71026 (ite (= lt!37310 (c!27299 r!15532)) EmptyExpr!559 EmptyLang!559))))

(declare-fun d!29271 () Bool)

(declare-fun lt!37349 () Regex!559)

(assert (=> d!29271 (validRegex!153 lt!37349)))

(assert (=> d!29271 (= lt!37349 e!71027)))

(declare-fun c!27333 () Bool)

(assert (=> d!29271 (= c!27333 (or ((_ is EmptyExpr!559) r!15532) ((_ is EmptyLang!559) r!15532)))))

(assert (=> d!29271 (validRegex!153 r!15532)))

(assert (=> d!29271 (= (derivativeStep!65 r!15532 lt!37310) lt!37349)))

(assert (= (and d!29271 c!27333) b!123555))

(assert (= (and d!29271 (not c!27333)) b!123563))

(assert (= (and b!123563 c!27334) b!123558))

(assert (= (and b!123563 (not c!27334)) b!123560))

(assert (= (and b!123560 c!27330) b!123559))

(assert (= (and b!123560 (not c!27330)) b!123557))

(assert (= (and b!123557 c!27332) b!123561))

(assert (= (and b!123557 (not c!27332)) b!123556))

(assert (= (and b!123556 c!27331) b!123562))

(assert (= (and b!123556 (not c!27331)) b!123554))

(assert (= (or b!123562 b!123554) bm!5310))

(assert (= (or b!123561 bm!5310) bm!5308))

(assert (= (or b!123559 bm!5308) bm!5309))

(assert (= (or b!123559 b!123562) bm!5311))

(declare-fun m!109428 () Bool)

(assert (=> b!123556 m!109428))

(declare-fun m!109430 () Bool)

(assert (=> bm!5309 m!109430))

(declare-fun m!109432 () Bool)

(assert (=> bm!5311 m!109432))

(declare-fun m!109434 () Bool)

(assert (=> d!29271 m!109434))

(assert (=> d!29271 m!109308))

(assert (=> b!123423 d!29271))

(declare-fun b!123566 () Bool)

(declare-fun res!57661 () Bool)

(declare-fun e!71031 () Bool)

(assert (=> b!123566 (=> (not res!57661) (not e!71031))))

(declare-fun lt!37350 () List!2028)

(assert (=> b!123566 (= res!57661 (= (size!1886 lt!37350) (+ (size!1886 testedP!367) (size!1886 testedSuffix!285))))))

(declare-fun b!123564 () Bool)

(declare-fun e!71032 () List!2028)

(assert (=> b!123564 (= e!71032 testedSuffix!285)))

(declare-fun b!123565 () Bool)

(assert (=> b!123565 (= e!71032 (Cons!2022 (h!7419 testedP!367) (++!384 (t!22505 testedP!367) testedSuffix!285)))))

(declare-fun b!123567 () Bool)

(assert (=> b!123567 (= e!71031 (or (not (= testedSuffix!285 Nil!2022)) (= lt!37350 testedP!367)))))

(declare-fun d!29273 () Bool)

(assert (=> d!29273 e!71031))

(declare-fun res!57662 () Bool)

(assert (=> d!29273 (=> (not res!57662) (not e!71031))))

(assert (=> d!29273 (= res!57662 (= (content!229 lt!37350) ((_ map or) (content!229 testedP!367) (content!229 testedSuffix!285))))))

(assert (=> d!29273 (= lt!37350 e!71032)))

(declare-fun c!27335 () Bool)

(assert (=> d!29273 (= c!27335 ((_ is Nil!2022) testedP!367))))

(assert (=> d!29273 (= (++!384 testedP!367 testedSuffix!285) lt!37350)))

(assert (= (and d!29273 c!27335) b!123564))

(assert (= (and d!29273 (not c!27335)) b!123565))

(assert (= (and d!29273 res!57662) b!123566))

(assert (= (and b!123566 res!57661) b!123567))

(declare-fun m!109436 () Bool)

(assert (=> b!123566 m!109436))

(assert (=> b!123566 m!109318))

(declare-fun m!109438 () Bool)

(assert (=> b!123566 m!109438))

(declare-fun m!109440 () Bool)

(assert (=> b!123565 m!109440))

(declare-fun m!109442 () Bool)

(assert (=> d!29273 m!109442))

(assert (=> d!29273 m!109364))

(declare-fun m!109444 () Bool)

(assert (=> d!29273 m!109444))

(assert (=> b!123414 d!29273))

(declare-fun d!29275 () Bool)

(assert (=> d!29275 (isPrefix!134 totalInput!1363 totalInput!1363)))

(declare-fun lt!37353 () Unit!1569)

(declare-fun choose!1608 (List!2028 List!2028) Unit!1569)

(assert (=> d!29275 (= lt!37353 (choose!1608 totalInput!1363 totalInput!1363))))

(assert (=> d!29275 (= (lemmaIsPrefixRefl!104 totalInput!1363 totalInput!1363) lt!37353)))

(declare-fun bs!12023 () Bool)

(assert (= bs!12023 d!29275))

(assert (=> bs!12023 m!109264))

(declare-fun m!109446 () Bool)

(assert (=> bs!12023 m!109446))

(assert (=> b!123432 d!29275))

(declare-fun d!29277 () Bool)

(declare-fun e!71033 () Bool)

(assert (=> d!29277 e!71033))

(declare-fun res!57665 () Bool)

(assert (=> d!29277 (=> res!57665 e!71033)))

(declare-fun lt!37354 () Bool)

(assert (=> d!29277 (= res!57665 (not lt!37354))))

(declare-fun e!71035 () Bool)

(assert (=> d!29277 (= lt!37354 e!71035)))

(declare-fun res!57666 () Bool)

(assert (=> d!29277 (=> res!57666 e!71035)))

(assert (=> d!29277 (= res!57666 ((_ is Nil!2022) totalInput!1363))))

(assert (=> d!29277 (= (isPrefix!134 totalInput!1363 totalInput!1363) lt!37354)))

(declare-fun b!123570 () Bool)

(declare-fun e!71034 () Bool)

(assert (=> b!123570 (= e!71034 (isPrefix!134 (tail!243 totalInput!1363) (tail!243 totalInput!1363)))))

(declare-fun b!123568 () Bool)

(assert (=> b!123568 (= e!71035 e!71034)))

(declare-fun res!57664 () Bool)

(assert (=> b!123568 (=> (not res!57664) (not e!71034))))

(assert (=> b!123568 (= res!57664 (not ((_ is Nil!2022) totalInput!1363)))))

(declare-fun b!123569 () Bool)

(declare-fun res!57663 () Bool)

(assert (=> b!123569 (=> (not res!57663) (not e!71034))))

(assert (=> b!123569 (= res!57663 (= (head!507 totalInput!1363) (head!507 totalInput!1363)))))

(declare-fun b!123571 () Bool)

(assert (=> b!123571 (= e!71033 (>= (size!1886 totalInput!1363) (size!1886 totalInput!1363)))))

(assert (= (and d!29277 (not res!57666)) b!123568))

(assert (= (and b!123568 res!57664) b!123569))

(assert (= (and b!123569 res!57663) b!123570))

(assert (= (and d!29277 (not res!57665)) b!123571))

(assert (=> b!123570 m!109324))

(assert (=> b!123570 m!109324))

(assert (=> b!123570 m!109324))

(assert (=> b!123570 m!109324))

(declare-fun m!109448 () Bool)

(assert (=> b!123570 m!109448))

(assert (=> b!123569 m!109330))

(assert (=> b!123569 m!109330))

(assert (=> b!123571 m!109288))

(assert (=> b!123571 m!109288))

(assert (=> b!123432 d!29277))

(declare-fun d!29279 () Bool)

(assert (=> d!29279 (= totalInput!1363 testedP!367)))

(declare-fun lt!37357 () Unit!1569)

(declare-fun choose!1609 (List!2028 List!2028 List!2028) Unit!1569)

(assert (=> d!29279 (= lt!37357 (choose!1609 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!29279 (isPrefix!134 totalInput!1363 totalInput!1363)))

(assert (=> d!29279 (= (lemmaIsPrefixSameLengthThenSameList!47 totalInput!1363 testedP!367 totalInput!1363) lt!37357)))

(declare-fun bs!12024 () Bool)

(assert (= bs!12024 d!29279))

(declare-fun m!109450 () Bool)

(assert (=> bs!12024 m!109450))

(assert (=> bs!12024 m!109264))

(assert (=> b!123432 d!29279))

(declare-fun d!29281 () Bool)

(declare-fun lt!37358 () Int)

(assert (=> d!29281 (>= lt!37358 0)))

(declare-fun e!71036 () Int)

(assert (=> d!29281 (= lt!37358 e!71036)))

(declare-fun c!27336 () Bool)

(assert (=> d!29281 (= c!27336 ((_ is Nil!2022) testedP!367))))

(assert (=> d!29281 (= (size!1886 testedP!367) lt!37358)))

(declare-fun b!123572 () Bool)

(assert (=> b!123572 (= e!71036 0)))

(declare-fun b!123573 () Bool)

(assert (=> b!123573 (= e!71036 (+ 1 (size!1886 (t!22505 testedP!367))))))

(assert (= (and d!29281 c!27336) b!123572))

(assert (= (and d!29281 (not c!27336)) b!123573))

(declare-fun m!109452 () Bool)

(assert (=> b!123573 m!109452))

(assert (=> b!123416 d!29281))

(declare-fun e!71039 () Bool)

(assert (=> b!123421 (= tp!67668 e!71039)))

(declare-fun b!123584 () Bool)

(assert (=> b!123584 (= e!71039 tp_is_empty!1173)))

(declare-fun b!123587 () Bool)

(declare-fun tp!67690 () Bool)

(declare-fun tp!67691 () Bool)

(assert (=> b!123587 (= e!71039 (and tp!67690 tp!67691))))

(declare-fun b!123586 () Bool)

(declare-fun tp!67689 () Bool)

(assert (=> b!123586 (= e!71039 tp!67689)))

(declare-fun b!123585 () Bool)

(declare-fun tp!67693 () Bool)

(declare-fun tp!67692 () Bool)

(assert (=> b!123585 (= e!71039 (and tp!67693 tp!67692))))

(assert (= (and b!123421 ((_ is ElementMatch!559) (regOne!1631 r!15532))) b!123584))

(assert (= (and b!123421 ((_ is Concat!943) (regOne!1631 r!15532))) b!123585))

(assert (= (and b!123421 ((_ is Star!559) (regOne!1631 r!15532))) b!123586))

(assert (= (and b!123421 ((_ is Union!559) (regOne!1631 r!15532))) b!123587))

(declare-fun e!71040 () Bool)

(assert (=> b!123421 (= tp!67669 e!71040)))

(declare-fun b!123588 () Bool)

(assert (=> b!123588 (= e!71040 tp_is_empty!1173)))

(declare-fun b!123591 () Bool)

(declare-fun tp!67695 () Bool)

(declare-fun tp!67696 () Bool)

(assert (=> b!123591 (= e!71040 (and tp!67695 tp!67696))))

(declare-fun b!123590 () Bool)

(declare-fun tp!67694 () Bool)

(assert (=> b!123590 (= e!71040 tp!67694)))

(declare-fun b!123589 () Bool)

(declare-fun tp!67698 () Bool)

(declare-fun tp!67697 () Bool)

(assert (=> b!123589 (= e!71040 (and tp!67698 tp!67697))))

(assert (= (and b!123421 ((_ is ElementMatch!559) (regTwo!1631 r!15532))) b!123588))

(assert (= (and b!123421 ((_ is Concat!943) (regTwo!1631 r!15532))) b!123589))

(assert (= (and b!123421 ((_ is Star!559) (regTwo!1631 r!15532))) b!123590))

(assert (= (and b!123421 ((_ is Union!559) (regTwo!1631 r!15532))) b!123591))

(declare-fun b!123596 () Bool)

(declare-fun e!71043 () Bool)

(declare-fun tp!67701 () Bool)

(assert (=> b!123596 (= e!71043 (and tp_is_empty!1173 tp!67701))))

(assert (=> b!123427 (= tp!67665 e!71043)))

(assert (= (and b!123427 ((_ is Cons!2022) (t!22505 testedP!367))) b!123596))

(declare-fun condMapEmpty!1647 () Bool)

(declare-fun mapDefault!1647 () List!2029)

(assert (=> mapNonEmpty!1644 (= condMapEmpty!1647 (= mapRest!1644 ((as const (Array (_ BitVec 32) List!2029)) mapDefault!1647)))))

(declare-fun e!71049 () Bool)

(declare-fun mapRes!1647 () Bool)

(assert (=> mapNonEmpty!1644 (= tp!67674 (and e!71049 mapRes!1647))))

(declare-fun tp!67717 () Bool)

(declare-fun b!123603 () Bool)

(declare-fun tp!67718 () Bool)

(declare-fun e!71048 () Bool)

(declare-fun tp!67720 () Bool)

(assert (=> b!123603 (= e!71048 (and tp!67720 tp_is_empty!1173 tp!67717 tp!67718))))

(declare-fun mapIsEmpty!1647 () Bool)

(assert (=> mapIsEmpty!1647 mapRes!1647))

(declare-fun tp!67716 () Bool)

(declare-fun b!123604 () Bool)

(declare-fun tp!67721 () Bool)

(declare-fun tp!67719 () Bool)

(assert (=> b!123604 (= e!71049 (and tp!67721 tp_is_empty!1173 tp!67719 tp!67716))))

(declare-fun mapNonEmpty!1647 () Bool)

(declare-fun tp!67722 () Bool)

(assert (=> mapNonEmpty!1647 (= mapRes!1647 (and tp!67722 e!71048))))

(declare-fun mapRest!1647 () (Array (_ BitVec 32) List!2029))

(declare-fun mapKey!1647 () (_ BitVec 32))

(declare-fun mapValue!1647 () List!2029)

(assert (=> mapNonEmpty!1647 (= mapRest!1644 (store mapRest!1647 mapKey!1647 mapValue!1647))))

(assert (= (and mapNonEmpty!1644 condMapEmpty!1647) mapIsEmpty!1647))

(assert (= (and mapNonEmpty!1644 (not condMapEmpty!1647)) mapNonEmpty!1647))

(assert (= (and mapNonEmpty!1647 ((_ is Cons!2023) mapValue!1647)) b!123603))

(assert (= (and mapNonEmpty!1644 ((_ is Cons!2023) mapDefault!1647)) b!123604))

(declare-fun m!109454 () Bool)

(assert (=> mapNonEmpty!1647 m!109454))

(declare-fun b!123609 () Bool)

(declare-fun e!71052 () Bool)

(declare-fun tp!67731 () Bool)

(declare-fun tp!67729 () Bool)

(declare-fun tp!67730 () Bool)

(assert (=> b!123609 (= e!71052 (and tp!67729 tp_is_empty!1173 tp!67730 tp!67731))))

(assert (=> mapNonEmpty!1644 (= tp!67677 e!71052)))

(assert (= (and mapNonEmpty!1644 ((_ is Cons!2023) mapValue!1644)) b!123609))

(declare-fun e!71053 () Bool)

(assert (=> b!123425 (= tp!67670 e!71053)))

(declare-fun b!123610 () Bool)

(assert (=> b!123610 (= e!71053 tp_is_empty!1173)))

(declare-fun b!123613 () Bool)

(declare-fun tp!67733 () Bool)

(declare-fun tp!67734 () Bool)

(assert (=> b!123613 (= e!71053 (and tp!67733 tp!67734))))

(declare-fun b!123612 () Bool)

(declare-fun tp!67732 () Bool)

(assert (=> b!123612 (= e!71053 tp!67732)))

(declare-fun b!123611 () Bool)

(declare-fun tp!67736 () Bool)

(declare-fun tp!67735 () Bool)

(assert (=> b!123611 (= e!71053 (and tp!67736 tp!67735))))

(assert (= (and b!123425 ((_ is ElementMatch!559) (reg!888 r!15532))) b!123610))

(assert (= (and b!123425 ((_ is Concat!943) (reg!888 r!15532))) b!123611))

(assert (= (and b!123425 ((_ is Star!559) (reg!888 r!15532))) b!123612))

(assert (= (and b!123425 ((_ is Union!559) (reg!888 r!15532))) b!123613))

(declare-fun b!123614 () Bool)

(declare-fun e!71054 () Bool)

(declare-fun tp!67737 () Bool)

(assert (=> b!123614 (= e!71054 (and tp_is_empty!1173 tp!67737))))

(assert (=> b!123430 (= tp!67664 e!71054)))

(assert (= (and b!123430 ((_ is Cons!2022) (t!22505 totalInput!1363))) b!123614))

(declare-fun e!71055 () Bool)

(assert (=> b!123429 (= tp!67672 e!71055)))

(declare-fun b!123615 () Bool)

(assert (=> b!123615 (= e!71055 tp_is_empty!1173)))

(declare-fun b!123618 () Bool)

(declare-fun tp!67739 () Bool)

(declare-fun tp!67740 () Bool)

(assert (=> b!123618 (= e!71055 (and tp!67739 tp!67740))))

(declare-fun b!123617 () Bool)

(declare-fun tp!67738 () Bool)

(assert (=> b!123617 (= e!71055 tp!67738)))

(declare-fun b!123616 () Bool)

(declare-fun tp!67742 () Bool)

(declare-fun tp!67741 () Bool)

(assert (=> b!123616 (= e!71055 (and tp!67742 tp!67741))))

(assert (= (and b!123429 ((_ is ElementMatch!559) (regOne!1630 r!15532))) b!123615))

(assert (= (and b!123429 ((_ is Concat!943) (regOne!1630 r!15532))) b!123616))

(assert (= (and b!123429 ((_ is Star!559) (regOne!1630 r!15532))) b!123617))

(assert (= (and b!123429 ((_ is Union!559) (regOne!1630 r!15532))) b!123618))

(declare-fun e!71056 () Bool)

(assert (=> b!123429 (= tp!67671 e!71056)))

(declare-fun b!123619 () Bool)

(assert (=> b!123619 (= e!71056 tp_is_empty!1173)))

(declare-fun b!123622 () Bool)

(declare-fun tp!67744 () Bool)

(declare-fun tp!67745 () Bool)

(assert (=> b!123622 (= e!71056 (and tp!67744 tp!67745))))

(declare-fun b!123621 () Bool)

(declare-fun tp!67743 () Bool)

(assert (=> b!123621 (= e!71056 tp!67743)))

(declare-fun b!123620 () Bool)

(declare-fun tp!67747 () Bool)

(declare-fun tp!67746 () Bool)

(assert (=> b!123620 (= e!71056 (and tp!67747 tp!67746))))

(assert (= (and b!123429 ((_ is ElementMatch!559) (regTwo!1630 r!15532))) b!123619))

(assert (= (and b!123429 ((_ is Concat!943) (regTwo!1630 r!15532))) b!123620))

(assert (= (and b!123429 ((_ is Star!559) (regTwo!1630 r!15532))) b!123621))

(assert (= (and b!123429 ((_ is Union!559) (regTwo!1630 r!15532))) b!123622))

(declare-fun tp!67749 () Bool)

(declare-fun tp!67748 () Bool)

(declare-fun tp!67750 () Bool)

(declare-fun e!71057 () Bool)

(declare-fun b!123623 () Bool)

(assert (=> b!123623 (= e!71057 (and tp!67748 tp_is_empty!1173 tp!67749 tp!67750))))

(assert (=> b!123434 (= tp!67666 e!71057)))

(assert (= (and b!123434 ((_ is Cons!2023) mapDefault!1644)) b!123623))

(declare-fun b!123624 () Bool)

(declare-fun e!71058 () Bool)

(declare-fun tp!67751 () Bool)

(assert (=> b!123624 (= e!71058 (and tp_is_empty!1173 tp!67751))))

(assert (=> b!123435 (= tp!67675 e!71058)))

(assert (= (and b!123435 ((_ is Cons!2022) (t!22505 testedSuffix!285))) b!123624))

(declare-fun tp!67753 () Bool)

(declare-fun tp!67752 () Bool)

(declare-fun e!71059 () Bool)

(declare-fun tp!67754 () Bool)

(declare-fun b!123625 () Bool)

(assert (=> b!123625 (= e!71059 (and tp!67752 tp_is_empty!1173 tp!67753 tp!67754))))

(assert (=> b!123440 (= tp!67673 e!71059)))

(assert (= (and b!123440 ((_ is Cons!2023) (zeroValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470)))))))) b!123625))

(declare-fun tp!67756 () Bool)

(declare-fun tp!67755 () Bool)

(declare-fun e!71060 () Bool)

(declare-fun tp!67757 () Bool)

(declare-fun b!123626 () Bool)

(assert (=> b!123626 (= e!71060 (and tp!67755 tp_is_empty!1173 tp!67756 tp!67757))))

(assert (=> b!123440 (= tp!67678 e!71060)))

(assert (= (and b!123440 ((_ is Cons!2023) (minValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470)))))))) b!123626))

(check-sat (not b_next!3929) (not b!123489) (not b!123515) b_and!6061 (not d!29235) (not b!123585) (not b!123469) (not b!123620) (not d!29271) (not d!29241) (not b!123626) (not b!123446) (not d!29273) (not b!123590) (not b!123623) (not b!123481) (not d!29253) (not b!123586) (not b!123492) (not b!123624) (not bm!5294) (not d!29227) (not b!123621) (not bm!5297) (not b!123566) (not b!123570) (not d!29267) (not b!123494) (not b!123461) (not bm!5298) (not b!123493) (not b!123622) (not b!123625) (not b!123612) (not b!123573) b_and!6059 tp_is_empty!1173 (not d!29245) (not b!123609) (not b!123458) (not b!123462) (not d!29243) (not b!123527) (not d!29229) (not b!123589) (not b!123524) (not b!123614) (not b!123596) (not d!29233) (not b!123603) (not b!123456) (not b!123480) (not b!123569) (not b!123457) (not b!123618) (not d!29237) (not b!123484) (not b!123613) (not b!123460) (not b!123485) (not d!29275) (not d!29279) (not bm!5309) (not b!123464) (not b!123604) (not bm!5311) (not d!29247) (not b!123488) (not b!123571) (not b!123616) (not mapNonEmpty!1647) (not b_next!3931) (not b!123617) (not bm!5295) (not b!123611) (not b!123587) (not d!29251) (not b!123556) (not b!123591) (not b!123565))
(check-sat b_and!6059 b_and!6061 (not b_next!3929) (not b_next!3931))
(get-model)

(declare-fun d!29283 () Bool)

(assert (=> d!29283 (= (head!507 testedP!367) (h!7419 testedP!367))))

(assert (=> b!123460 d!29283))

(declare-fun d!29285 () Bool)

(assert (=> d!29285 (= (head!507 lt!37311) (h!7419 lt!37311))))

(assert (=> b!123460 d!29285))

(declare-fun d!29287 () Bool)

(declare-fun e!71061 () Bool)

(assert (=> d!29287 e!71061))

(declare-fun res!57669 () Bool)

(assert (=> d!29287 (=> res!57669 e!71061)))

(declare-fun lt!37359 () Bool)

(assert (=> d!29287 (= res!57669 (not lt!37359))))

(declare-fun e!71063 () Bool)

(assert (=> d!29287 (= lt!37359 e!71063)))

(declare-fun res!57670 () Bool)

(assert (=> d!29287 (=> res!57670 e!71063)))

(assert (=> d!29287 (= res!57670 ((_ is Nil!2022) (tail!243 testedP!367)))))

(assert (=> d!29287 (= (isPrefix!134 (tail!243 testedP!367) (tail!243 totalInput!1363)) lt!37359)))

(declare-fun b!123629 () Bool)

(declare-fun e!71062 () Bool)

(assert (=> b!123629 (= e!71062 (isPrefix!134 (tail!243 (tail!243 testedP!367)) (tail!243 (tail!243 totalInput!1363))))))

(declare-fun b!123627 () Bool)

(assert (=> b!123627 (= e!71063 e!71062)))

(declare-fun res!57668 () Bool)

(assert (=> b!123627 (=> (not res!57668) (not e!71062))))

(assert (=> b!123627 (= res!57668 (not ((_ is Nil!2022) (tail!243 totalInput!1363))))))

(declare-fun b!123628 () Bool)

(declare-fun res!57667 () Bool)

(assert (=> b!123628 (=> (not res!57667) (not e!71062))))

(assert (=> b!123628 (= res!57667 (= (head!507 (tail!243 testedP!367)) (head!507 (tail!243 totalInput!1363))))))

(declare-fun b!123630 () Bool)

(assert (=> b!123630 (= e!71061 (>= (size!1886 (tail!243 totalInput!1363)) (size!1886 (tail!243 testedP!367))))))

(assert (= (and d!29287 (not res!57670)) b!123627))

(assert (= (and b!123627 res!57668) b!123628))

(assert (= (and b!123628 res!57667) b!123629))

(assert (= (and d!29287 (not res!57669)) b!123630))

(assert (=> b!123629 m!109322))

(declare-fun m!109456 () Bool)

(assert (=> b!123629 m!109456))

(assert (=> b!123629 m!109324))

(declare-fun m!109458 () Bool)

(assert (=> b!123629 m!109458))

(assert (=> b!123629 m!109456))

(assert (=> b!123629 m!109458))

(declare-fun m!109460 () Bool)

(assert (=> b!123629 m!109460))

(assert (=> b!123628 m!109322))

(declare-fun m!109462 () Bool)

(assert (=> b!123628 m!109462))

(assert (=> b!123628 m!109324))

(declare-fun m!109464 () Bool)

(assert (=> b!123628 m!109464))

(assert (=> b!123630 m!109324))

(declare-fun m!109466 () Bool)

(assert (=> b!123630 m!109466))

(assert (=> b!123630 m!109322))

(declare-fun m!109468 () Bool)

(assert (=> b!123630 m!109468))

(assert (=> b!123457 d!29287))

(declare-fun d!29289 () Bool)

(assert (=> d!29289 (= (tail!243 testedP!367) (t!22505 testedP!367))))

(assert (=> b!123457 d!29289))

(declare-fun d!29291 () Bool)

(assert (=> d!29291 (= (tail!243 totalInput!1363) (t!22505 totalInput!1363))))

(assert (=> b!123457 d!29291))

(declare-fun d!29293 () Bool)

(declare-fun lt!37360 () List!2028)

(assert (=> d!29293 (= (++!384 (t!22505 testedP!367) lt!37360) (tail!243 totalInput!1363))))

(declare-fun e!71064 () List!2028)

(assert (=> d!29293 (= lt!37360 e!71064)))

(declare-fun c!27337 () Bool)

(assert (=> d!29293 (= c!27337 ((_ is Cons!2022) (t!22505 testedP!367)))))

(assert (=> d!29293 (>= (size!1886 (tail!243 totalInput!1363)) (size!1886 (t!22505 testedP!367)))))

(assert (=> d!29293 (= (getSuffix!72 (tail!243 totalInput!1363) (t!22505 testedP!367)) lt!37360)))

(declare-fun b!123631 () Bool)

(assert (=> b!123631 (= e!71064 (getSuffix!72 (tail!243 (tail!243 totalInput!1363)) (t!22505 (t!22505 testedP!367))))))

(declare-fun b!123632 () Bool)

(assert (=> b!123632 (= e!71064 (tail!243 totalInput!1363))))

(assert (= (and d!29293 c!27337) b!123631))

(assert (= (and d!29293 (not c!27337)) b!123632))

(declare-fun m!109470 () Bool)

(assert (=> d!29293 m!109470))

(assert (=> d!29293 m!109324))

(assert (=> d!29293 m!109466))

(assert (=> d!29293 m!109452))

(assert (=> b!123631 m!109324))

(assert (=> b!123631 m!109458))

(assert (=> b!123631 m!109458))

(declare-fun m!109472 () Bool)

(assert (=> b!123631 m!109472))

(assert (=> b!123469 d!29293))

(assert (=> b!123469 d!29291))

(declare-fun d!29295 () Bool)

(declare-fun c!27340 () Bool)

(assert (=> d!29295 (= c!27340 ((_ is Nil!2022) lt!37345))))

(declare-fun e!71067 () (InoxSet C!2040))

(assert (=> d!29295 (= (content!229 lt!37345) e!71067)))

(declare-fun b!123637 () Bool)

(assert (=> b!123637 (= e!71067 ((as const (Array C!2040 Bool)) false))))

(declare-fun b!123638 () Bool)

(assert (=> b!123638 (= e!71067 ((_ map or) (store ((as const (Array C!2040 Bool)) false) (h!7419 lt!37345) true) (content!229 (t!22505 lt!37345))))))

(assert (= (and d!29295 c!27340) b!123637))

(assert (= (and d!29295 (not c!27340)) b!123638))

(declare-fun m!109474 () Bool)

(assert (=> b!123638 m!109474))

(declare-fun m!109476 () Bool)

(assert (=> b!123638 m!109476))

(assert (=> d!29253 d!29295))

(declare-fun d!29297 () Bool)

(declare-fun c!27341 () Bool)

(assert (=> d!29297 (= c!27341 ((_ is Nil!2022) lt!37304))))

(declare-fun e!71068 () (InoxSet C!2040))

(assert (=> d!29297 (= (content!229 lt!37304) e!71068)))

(declare-fun b!123639 () Bool)

(assert (=> b!123639 (= e!71068 ((as const (Array C!2040 Bool)) false))))

(declare-fun b!123640 () Bool)

(assert (=> b!123640 (= e!71068 ((_ map or) (store ((as const (Array C!2040 Bool)) false) (h!7419 lt!37304) true) (content!229 (t!22505 lt!37304))))))

(assert (= (and d!29297 c!27341) b!123639))

(assert (= (and d!29297 (not c!27341)) b!123640))

(declare-fun m!109478 () Bool)

(assert (=> b!123640 m!109478))

(declare-fun m!109480 () Bool)

(assert (=> b!123640 m!109480))

(assert (=> d!29253 d!29297))

(declare-fun d!29299 () Bool)

(declare-fun c!27342 () Bool)

(assert (=> d!29299 (= c!27342 ((_ is Nil!2022) lt!37309))))

(declare-fun e!71069 () (InoxSet C!2040))

(assert (=> d!29299 (= (content!229 lt!37309) e!71069)))

(declare-fun b!123641 () Bool)

(assert (=> b!123641 (= e!71069 ((as const (Array C!2040 Bool)) false))))

(declare-fun b!123642 () Bool)

(assert (=> b!123642 (= e!71069 ((_ map or) (store ((as const (Array C!2040 Bool)) false) (h!7419 lt!37309) true) (content!229 (t!22505 lt!37309))))))

(assert (= (and d!29299 c!27342) b!123641))

(assert (= (and d!29299 (not c!27342)) b!123642))

(declare-fun m!109482 () Bool)

(assert (=> b!123642 m!109482))

(declare-fun m!109484 () Bool)

(assert (=> b!123642 m!109484))

(assert (=> d!29253 d!29299))

(declare-fun d!29301 () Bool)

(declare-fun c!27343 () Bool)

(assert (=> d!29301 (= c!27343 ((_ is Nil!2022) lt!37341))))

(declare-fun e!71070 () (InoxSet C!2040))

(assert (=> d!29301 (= (content!229 lt!37341) e!71070)))

(declare-fun b!123643 () Bool)

(assert (=> b!123643 (= e!71070 ((as const (Array C!2040 Bool)) false))))

(declare-fun b!123644 () Bool)

(assert (=> b!123644 (= e!71070 ((_ map or) (store ((as const (Array C!2040 Bool)) false) (h!7419 lt!37341) true) (content!229 (t!22505 lt!37341))))))

(assert (= (and d!29301 c!27343) b!123643))

(assert (= (and d!29301 (not c!27343)) b!123644))

(declare-fun m!109486 () Bool)

(assert (=> b!123644 m!109486))

(declare-fun m!109488 () Bool)

(assert (=> b!123644 m!109488))

(assert (=> d!29247 d!29301))

(declare-fun d!29303 () Bool)

(declare-fun c!27344 () Bool)

(assert (=> d!29303 (= c!27344 ((_ is Nil!2022) testedP!367))))

(declare-fun e!71071 () (InoxSet C!2040))

(assert (=> d!29303 (= (content!229 testedP!367) e!71071)))

(declare-fun b!123645 () Bool)

(assert (=> b!123645 (= e!71071 ((as const (Array C!2040 Bool)) false))))

(declare-fun b!123646 () Bool)

(assert (=> b!123646 (= e!71071 ((_ map or) (store ((as const (Array C!2040 Bool)) false) (h!7419 testedP!367) true) (content!229 (t!22505 testedP!367))))))

(assert (= (and d!29303 c!27344) b!123645))

(assert (= (and d!29303 (not c!27344)) b!123646))

(declare-fun m!109490 () Bool)

(assert (=> b!123646 m!109490))

(declare-fun m!109492 () Bool)

(assert (=> b!123646 m!109492))

(assert (=> d!29247 d!29303))

(declare-fun d!29305 () Bool)

(declare-fun c!27345 () Bool)

(assert (=> d!29305 (= c!27345 ((_ is Nil!2022) (Cons!2022 (head!507 lt!37312) Nil!2022)))))

(declare-fun e!71072 () (InoxSet C!2040))

(assert (=> d!29305 (= (content!229 (Cons!2022 (head!507 lt!37312) Nil!2022)) e!71072)))

(declare-fun b!123647 () Bool)

(assert (=> b!123647 (= e!71072 ((as const (Array C!2040 Bool)) false))))

(declare-fun b!123648 () Bool)

(assert (=> b!123648 (= e!71072 ((_ map or) (store ((as const (Array C!2040 Bool)) false) (h!7419 (Cons!2022 (head!507 lt!37312) Nil!2022)) true) (content!229 (t!22505 (Cons!2022 (head!507 lt!37312) Nil!2022)))))))

(assert (= (and d!29305 c!27345) b!123647))

(assert (= (and d!29305 (not c!27345)) b!123648))

(declare-fun m!109494 () Bool)

(assert (=> b!123648 m!109494))

(declare-fun m!109496 () Bool)

(assert (=> b!123648 m!109496))

(assert (=> d!29247 d!29305))

(declare-fun d!29307 () Bool)

(assert (=> d!29307 (= (head!507 totalInput!1363) (h!7419 totalInput!1363))))

(assert (=> b!123569 d!29307))

(declare-fun d!29309 () Bool)

(declare-fun lt!37361 () Int)

(assert (=> d!29309 (>= lt!37361 0)))

(declare-fun e!71073 () Int)

(assert (=> d!29309 (= lt!37361 e!71073)))

(declare-fun c!27346 () Bool)

(assert (=> d!29309 (= c!27346 ((_ is Nil!2022) lt!37311))))

(assert (=> d!29309 (= (size!1886 lt!37311) lt!37361)))

(declare-fun b!123649 () Bool)

(assert (=> b!123649 (= e!71073 0)))

(declare-fun b!123650 () Bool)

(assert (=> b!123650 (= e!71073 (+ 1 (size!1886 (t!22505 lt!37311))))))

(assert (= (and d!29309 c!27346) b!123649))

(assert (= (and d!29309 (not c!27346)) b!123650))

(declare-fun m!109498 () Bool)

(assert (=> b!123650 m!109498))

(assert (=> b!123462 d!29309))

(assert (=> b!123462 d!29281))

(declare-fun d!29311 () Bool)

(declare-fun c!27347 () Bool)

(assert (=> d!29311 (= c!27347 ((_ is Nil!2022) lt!37350))))

(declare-fun e!71074 () (InoxSet C!2040))

(assert (=> d!29311 (= (content!229 lt!37350) e!71074)))

(declare-fun b!123651 () Bool)

(assert (=> b!123651 (= e!71074 ((as const (Array C!2040 Bool)) false))))

(declare-fun b!123652 () Bool)

(assert (=> b!123652 (= e!71074 ((_ map or) (store ((as const (Array C!2040 Bool)) false) (h!7419 lt!37350) true) (content!229 (t!22505 lt!37350))))))

(assert (= (and d!29311 c!27347) b!123651))

(assert (= (and d!29311 (not c!27347)) b!123652))

(declare-fun m!109500 () Bool)

(assert (=> b!123652 m!109500))

(declare-fun m!109502 () Bool)

(assert (=> b!123652 m!109502))

(assert (=> d!29273 d!29311))

(assert (=> d!29273 d!29303))

(declare-fun d!29313 () Bool)

(declare-fun c!27348 () Bool)

(assert (=> d!29313 (= c!27348 ((_ is Nil!2022) testedSuffix!285))))

(declare-fun e!71075 () (InoxSet C!2040))

(assert (=> d!29313 (= (content!229 testedSuffix!285) e!71075)))

(declare-fun b!123653 () Bool)

(assert (=> b!123653 (= e!71075 ((as const (Array C!2040 Bool)) false))))

(declare-fun b!123654 () Bool)

(assert (=> b!123654 (= e!71075 ((_ map or) (store ((as const (Array C!2040 Bool)) false) (h!7419 testedSuffix!285) true) (content!229 (t!22505 testedSuffix!285))))))

(assert (= (and d!29313 c!27348) b!123653))

(assert (= (and d!29313 (not c!27348)) b!123654))

(declare-fun m!109504 () Bool)

(assert (=> b!123654 m!109504))

(declare-fun m!109506 () Bool)

(assert (=> b!123654 m!109506))

(assert (=> d!29273 d!29313))

(declare-fun d!29315 () Bool)

(assert (=> d!29315 (= (nullable!93 (regOne!1630 r!15532)) (nullableFct!24 (regOne!1630 r!15532)))))

(declare-fun bs!12025 () Bool)

(assert (= bs!12025 d!29315))

(declare-fun m!109508 () Bool)

(assert (=> bs!12025 m!109508))

(assert (=> b!123556 d!29315))

(declare-fun d!29317 () Bool)

(assert (=> d!29317 (= (nullable!93 (reg!888 (derivativeStep!65 r!15532 lt!37310))) (nullableFct!24 (reg!888 (derivativeStep!65 r!15532 lt!37310))))))

(declare-fun bs!12026 () Bool)

(assert (= bs!12026 d!29317))

(declare-fun m!109510 () Bool)

(assert (=> bs!12026 m!109510))

(assert (=> b!123527 d!29317))

(declare-fun d!29319 () Bool)

(assert (=> d!29319 (= (head!507 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022))) (h!7419 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022))))))

(assert (=> b!123492 d!29319))

(assert (=> b!123492 d!29307))

(assert (=> b!123494 d!29221))

(declare-fun d!29321 () Bool)

(declare-fun lt!37362 () Int)

(assert (=> d!29321 (>= lt!37362 0)))

(declare-fun e!71076 () Int)

(assert (=> d!29321 (= lt!37362 e!71076)))

(declare-fun c!27349 () Bool)

(assert (=> d!29321 (= c!27349 ((_ is Nil!2022) (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022))))))

(assert (=> d!29321 (= (size!1886 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022))) lt!37362)))

(declare-fun b!123655 () Bool)

(assert (=> b!123655 (= e!71076 0)))

(declare-fun b!123656 () Bool)

(assert (=> b!123656 (= e!71076 (+ 1 (size!1886 (t!22505 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022))))))))

(assert (= (and d!29321 c!27349) b!123655))

(assert (= (and d!29321 (not c!27349)) b!123656))

(declare-fun m!109512 () Bool)

(assert (=> b!123656 m!109512))

(assert (=> b!123494 d!29321))

(declare-fun d!29323 () Bool)

(declare-fun lt!37363 () Int)

(assert (=> d!29323 (>= lt!37363 0)))

(declare-fun e!71077 () Int)

(assert (=> d!29323 (= lt!37363 e!71077)))

(declare-fun c!27350 () Bool)

(assert (=> d!29323 (= c!27350 ((_ is Nil!2022) lt!37350))))

(assert (=> d!29323 (= (size!1886 lt!37350) lt!37363)))

(declare-fun b!123657 () Bool)

(assert (=> b!123657 (= e!71077 0)))

(declare-fun b!123658 () Bool)

(assert (=> b!123658 (= e!71077 (+ 1 (size!1886 (t!22505 lt!37350))))))

(assert (= (and d!29323 c!27350) b!123657))

(assert (= (and d!29323 (not c!27350)) b!123658))

(declare-fun m!109514 () Bool)

(assert (=> b!123658 m!109514))

(assert (=> b!123566 d!29323))

(assert (=> b!123566 d!29281))

(declare-fun d!29325 () Bool)

(declare-fun lt!37364 () Int)

(assert (=> d!29325 (>= lt!37364 0)))

(declare-fun e!71078 () Int)

(assert (=> d!29325 (= lt!37364 e!71078)))

(declare-fun c!27351 () Bool)

(assert (=> d!29325 (= c!27351 ((_ is Nil!2022) testedSuffix!285))))

(assert (=> d!29325 (= (size!1886 testedSuffix!285) lt!37364)))

(declare-fun b!123659 () Bool)

(assert (=> b!123659 (= e!71078 0)))

(declare-fun b!123660 () Bool)

(assert (=> b!123660 (= e!71078 (+ 1 (size!1886 (t!22505 testedSuffix!285))))))

(assert (= (and d!29325 c!27351) b!123659))

(assert (= (and d!29325 (not c!27351)) b!123660))

(declare-fun m!109516 () Bool)

(assert (=> b!123660 m!109516))

(assert (=> b!123566 d!29325))

(declare-fun d!29327 () Bool)

(assert (=> d!29327 (= (nullable!93 (reg!888 r!15532)) (nullableFct!24 (reg!888 r!15532)))))

(declare-fun bs!12027 () Bool)

(assert (= bs!12027 d!29327))

(declare-fun m!109518 () Bool)

(assert (=> bs!12027 m!109518))

(assert (=> b!123515 d!29327))

(declare-fun d!29329 () Bool)

(declare-fun lt!37365 () Int)

(assert (=> d!29329 (>= lt!37365 0)))

(declare-fun e!71079 () Int)

(assert (=> d!29329 (= lt!37365 e!71079)))

(declare-fun c!27352 () Bool)

(assert (=> d!29329 (= c!27352 ((_ is Nil!2022) lt!37345))))

(assert (=> d!29329 (= (size!1886 lt!37345) lt!37365)))

(declare-fun b!123661 () Bool)

(assert (=> b!123661 (= e!71079 0)))

(declare-fun b!123662 () Bool)

(assert (=> b!123662 (= e!71079 (+ 1 (size!1886 (t!22505 lt!37345))))))

(assert (= (and d!29329 c!27352) b!123661))

(assert (= (and d!29329 (not c!27352)) b!123662))

(declare-fun m!109520 () Bool)

(assert (=> b!123662 m!109520))

(assert (=> b!123489 d!29329))

(assert (=> b!123489 d!29231))

(declare-fun d!29331 () Bool)

(declare-fun lt!37366 () Int)

(assert (=> d!29331 (>= lt!37366 0)))

(declare-fun e!71080 () Int)

(assert (=> d!29331 (= lt!37366 e!71080)))

(declare-fun c!27353 () Bool)

(assert (=> d!29331 (= c!27353 ((_ is Nil!2022) lt!37309))))

(assert (=> d!29331 (= (size!1886 lt!37309) lt!37366)))

(declare-fun b!123663 () Bool)

(assert (=> b!123663 (= e!71080 0)))

(declare-fun b!123664 () Bool)

(assert (=> b!123664 (= e!71080 (+ 1 (size!1886 (t!22505 lt!37309))))))

(assert (= (and d!29331 c!27353) b!123663))

(assert (= (and d!29331 (not c!27353)) b!123664))

(declare-fun m!109522 () Bool)

(assert (=> b!123664 m!109522))

(assert (=> b!123489 d!29331))

(declare-fun d!29333 () Bool)

(declare-fun lt!37367 () Int)

(assert (=> d!29333 (>= lt!37367 0)))

(declare-fun e!71081 () Int)

(assert (=> d!29333 (= lt!37367 e!71081)))

(declare-fun c!27354 () Bool)

(assert (=> d!29333 (= c!27354 ((_ is Nil!2022) lt!37341))))

(assert (=> d!29333 (= (size!1886 lt!37341) lt!37367)))

(declare-fun b!123665 () Bool)

(assert (=> b!123665 (= e!71081 0)))

(declare-fun b!123666 () Bool)

(assert (=> b!123666 (= e!71081 (+ 1 (size!1886 (t!22505 lt!37341))))))

(assert (= (and d!29333 c!27354) b!123665))

(assert (= (and d!29333 (not c!27354)) b!123666))

(declare-fun m!109524 () Bool)

(assert (=> b!123666 m!109524))

(assert (=> b!123485 d!29333))

(assert (=> b!123485 d!29281))

(declare-fun d!29335 () Bool)

(declare-fun lt!37368 () Int)

(assert (=> d!29335 (>= lt!37368 0)))

(declare-fun e!71082 () Int)

(assert (=> d!29335 (= lt!37368 e!71082)))

(declare-fun c!27355 () Bool)

(assert (=> d!29335 (= c!27355 ((_ is Nil!2022) (Cons!2022 (head!507 lt!37312) Nil!2022)))))

(assert (=> d!29335 (= (size!1886 (Cons!2022 (head!507 lt!37312) Nil!2022)) lt!37368)))

(declare-fun b!123667 () Bool)

(assert (=> b!123667 (= e!71082 0)))

(declare-fun b!123668 () Bool)

(assert (=> b!123668 (= e!71082 (+ 1 (size!1886 (t!22505 (Cons!2022 (head!507 lt!37312) Nil!2022)))))))

(assert (= (and d!29335 c!27355) b!123667))

(assert (= (and d!29335 (not c!27355)) b!123668))

(declare-fun m!109526 () Bool)

(assert (=> b!123668 m!109526))

(assert (=> b!123485 d!29335))

(declare-fun d!29337 () Bool)

(assert (=> d!29337 (= testedSuffix!285 lt!37312)))

(assert (=> d!29337 true))

(declare-fun _$63!525 () Unit!1569)

(assert (=> d!29337 (= (choose!1605 testedP!367 testedSuffix!285 testedP!367 lt!37312 totalInput!1363) _$63!525)))

(assert (=> d!29235 d!29337))

(assert (=> d!29235 d!29223))

(declare-fun call!5317 () Regex!559)

(declare-fun e!71086 () Regex!559)

(declare-fun b!123669 () Bool)

(assert (=> b!123669 (= e!71086 (Union!559 (Concat!943 call!5317 (regTwo!1630 (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532))))) EmptyLang!559))))

(declare-fun b!123670 () Bool)

(declare-fun e!71084 () Regex!559)

(assert (=> b!123670 (= e!71084 EmptyLang!559)))

(declare-fun c!27357 () Bool)

(declare-fun b!123671 () Bool)

(assert (=> b!123671 (= c!27357 (nullable!93 (regOne!1630 (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532))))))))

(declare-fun e!71085 () Regex!559)

(assert (=> b!123671 (= e!71085 e!71086)))

(declare-fun b!123672 () Bool)

(declare-fun e!71087 () Regex!559)

(assert (=> b!123672 (= e!71087 e!71085)))

(declare-fun c!27358 () Bool)

(assert (=> b!123672 (= c!27358 ((_ is Star!559) (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532)))))))

(declare-fun bm!5312 () Bool)

(declare-fun call!5318 () Regex!559)

(declare-fun call!5319 () Regex!559)

(assert (=> bm!5312 (= call!5318 call!5319)))

(declare-fun bm!5313 () Bool)

(declare-fun c!27356 () Bool)

(assert (=> bm!5313 (= call!5319 (derivativeStep!65 (ite c!27356 (regTwo!1631 (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532)))) (ite c!27358 (reg!888 (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532)))) (regOne!1630 (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532)))))) lt!37310))))

(declare-fun bm!5314 () Bool)

(assert (=> bm!5314 (= call!5317 call!5318)))

(declare-fun call!5320 () Regex!559)

(declare-fun bm!5315 () Bool)

(assert (=> bm!5315 (= call!5320 (derivativeStep!65 (ite c!27356 (regOne!1631 (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532)))) (regTwo!1630 (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532))))) lt!37310))))

(declare-fun b!123674 () Bool)

(assert (=> b!123674 (= e!71087 (Union!559 call!5320 call!5319))))

(declare-fun b!123675 () Bool)

(assert (=> b!123675 (= c!27356 ((_ is Union!559) (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532)))))))

(declare-fun e!71083 () Regex!559)

(assert (=> b!123675 (= e!71083 e!71087)))

(declare-fun b!123676 () Bool)

(assert (=> b!123676 (= e!71085 (Concat!943 call!5318 (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532)))))))

(declare-fun b!123677 () Bool)

(assert (=> b!123677 (= e!71086 (Union!559 (Concat!943 call!5317 (regTwo!1630 (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532))))) call!5320))))

(declare-fun b!123678 () Bool)

(assert (=> b!123678 (= e!71084 e!71083)))

(declare-fun c!27360 () Bool)

(assert (=> b!123678 (= c!27360 ((_ is ElementMatch!559) (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532)))))))

(declare-fun b!123673 () Bool)

(assert (=> b!123673 (= e!71083 (ite (= lt!37310 (c!27299 (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532))))) EmptyExpr!559 EmptyLang!559))))

(declare-fun d!29339 () Bool)

(declare-fun lt!37369 () Regex!559)

(assert (=> d!29339 (validRegex!153 lt!37369)))

(assert (=> d!29339 (= lt!37369 e!71084)))

(declare-fun c!27359 () Bool)

(assert (=> d!29339 (= c!27359 (or ((_ is EmptyExpr!559) (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532)))) ((_ is EmptyLang!559) (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532))))))))

(assert (=> d!29339 (validRegex!153 (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532))))))

(assert (=> d!29339 (= (derivativeStep!65 (ite c!27330 (regTwo!1631 r!15532) (ite c!27332 (reg!888 r!15532) (regOne!1630 r!15532))) lt!37310) lt!37369)))

(assert (= (and d!29339 c!27359) b!123670))

(assert (= (and d!29339 (not c!27359)) b!123678))

(assert (= (and b!123678 c!27360) b!123673))

(assert (= (and b!123678 (not c!27360)) b!123675))

(assert (= (and b!123675 c!27356) b!123674))

(assert (= (and b!123675 (not c!27356)) b!123672))

(assert (= (and b!123672 c!27358) b!123676))

(assert (= (and b!123672 (not c!27358)) b!123671))

(assert (= (and b!123671 c!27357) b!123677))

(assert (= (and b!123671 (not c!27357)) b!123669))

(assert (= (or b!123677 b!123669) bm!5314))

(assert (= (or b!123676 bm!5314) bm!5312))

(assert (= (or b!123674 bm!5312) bm!5313))

(assert (= (or b!123674 b!123677) bm!5315))

(declare-fun m!109528 () Bool)

(assert (=> b!123671 m!109528))

(declare-fun m!109530 () Bool)

(assert (=> bm!5313 m!109530))

(declare-fun m!109532 () Bool)

(assert (=> bm!5315 m!109532))

(declare-fun m!109534 () Bool)

(assert (=> d!29339 m!109534))

(declare-fun m!109536 () Bool)

(assert (=> d!29339 m!109536))

(assert (=> bm!5309 d!29339))

(declare-fun d!29341 () Bool)

(declare-fun lt!37370 () Int)

(assert (=> d!29341 (>= lt!37370 0)))

(declare-fun e!71088 () Int)

(assert (=> d!29341 (= lt!37370 e!71088)))

(declare-fun c!27361 () Bool)

(assert (=> d!29341 (= c!27361 ((_ is Nil!2022) lt!37337))))

(assert (=> d!29341 (= (size!1886 lt!37337) lt!37370)))

(declare-fun b!123679 () Bool)

(assert (=> b!123679 (= e!71088 0)))

(declare-fun b!123680 () Bool)

(assert (=> b!123680 (= e!71088 (+ 1 (size!1886 (t!22505 lt!37337))))))

(assert (= (and d!29341 c!27361) b!123679))

(assert (= (and d!29341 (not c!27361)) b!123680))

(declare-fun m!109538 () Bool)

(assert (=> b!123680 m!109538))

(assert (=> b!123481 d!29341))

(assert (=> b!123481 d!29281))

(declare-fun d!29343 () Bool)

(declare-fun lt!37371 () Int)

(assert (=> d!29343 (>= lt!37371 0)))

(declare-fun e!71089 () Int)

(assert (=> d!29343 (= lt!37371 e!71089)))

(declare-fun c!27362 () Bool)

(assert (=> d!29343 (= c!27362 ((_ is Nil!2022) (Cons!2022 lt!37310 Nil!2022)))))

(assert (=> d!29343 (= (size!1886 (Cons!2022 lt!37310 Nil!2022)) lt!37371)))

(declare-fun b!123681 () Bool)

(assert (=> b!123681 (= e!71089 0)))

(declare-fun b!123682 () Bool)

(assert (=> b!123682 (= e!71089 (+ 1 (size!1886 (t!22505 (Cons!2022 lt!37310 Nil!2022)))))))

(assert (= (and d!29343 c!27362) b!123681))

(assert (= (and d!29343 (not c!27362)) b!123682))

(declare-fun m!109540 () Bool)

(assert (=> b!123682 m!109540))

(assert (=> b!123481 d!29343))

(declare-fun b!123685 () Bool)

(declare-fun res!57671 () Bool)

(declare-fun e!71090 () Bool)

(assert (=> b!123685 (=> (not res!57671) (not e!71090))))

(declare-fun lt!37372 () List!2028)

(assert (=> b!123685 (= res!57671 (= (size!1886 lt!37372) (+ (size!1886 testedP!367) (size!1886 lt!37334))))))

(declare-fun b!123683 () Bool)

(declare-fun e!71091 () List!2028)

(assert (=> b!123683 (= e!71091 lt!37334)))

(declare-fun b!123684 () Bool)

(assert (=> b!123684 (= e!71091 (Cons!2022 (h!7419 testedP!367) (++!384 (t!22505 testedP!367) lt!37334)))))

(declare-fun b!123686 () Bool)

(assert (=> b!123686 (= e!71090 (or (not (= lt!37334 Nil!2022)) (= lt!37372 testedP!367)))))

(declare-fun d!29345 () Bool)

(assert (=> d!29345 e!71090))

(declare-fun res!57672 () Bool)

(assert (=> d!29345 (=> (not res!57672) (not e!71090))))

(assert (=> d!29345 (= res!57672 (= (content!229 lt!37372) ((_ map or) (content!229 testedP!367) (content!229 lt!37334))))))

(assert (=> d!29345 (= lt!37372 e!71091)))

(declare-fun c!27363 () Bool)

(assert (=> d!29345 (= c!27363 ((_ is Nil!2022) testedP!367))))

(assert (=> d!29345 (= (++!384 testedP!367 lt!37334) lt!37372)))

(assert (= (and d!29345 c!27363) b!123683))

(assert (= (and d!29345 (not c!27363)) b!123684))

(assert (= (and d!29345 res!57672) b!123685))

(assert (= (and b!123685 res!57671) b!123686))

(declare-fun m!109542 () Bool)

(assert (=> b!123685 m!109542))

(assert (=> b!123685 m!109318))

(declare-fun m!109544 () Bool)

(assert (=> b!123685 m!109544))

(declare-fun m!109546 () Bool)

(assert (=> b!123684 m!109546))

(declare-fun m!109548 () Bool)

(assert (=> d!29345 m!109548))

(assert (=> d!29345 m!109364))

(declare-fun m!109550 () Bool)

(assert (=> d!29345 m!109550))

(assert (=> d!29237 d!29345))

(assert (=> d!29237 d!29221))

(assert (=> d!29237 d!29281))

(declare-fun d!29347 () Bool)

(declare-fun lt!37373 () Int)

(assert (=> d!29347 (>= lt!37373 0)))

(declare-fun e!71092 () Int)

(assert (=> d!29347 (= lt!37373 e!71092)))

(declare-fun c!27364 () Bool)

(assert (=> d!29347 (= c!27364 ((_ is Nil!2022) (t!22505 testedP!367)))))

(assert (=> d!29347 (= (size!1886 (t!22505 testedP!367)) lt!37373)))

(declare-fun b!123687 () Bool)

(assert (=> b!123687 (= e!71092 0)))

(declare-fun b!123688 () Bool)

(assert (=> b!123688 (= e!71092 (+ 1 (size!1886 (t!22505 (t!22505 testedP!367)))))))

(assert (= (and d!29347 c!27364) b!123687))

(assert (= (and d!29347 (not c!27364)) b!123688))

(declare-fun m!109552 () Bool)

(assert (=> b!123688 m!109552))

(assert (=> b!123573 d!29347))

(declare-fun b!123691 () Bool)

(declare-fun res!57673 () Bool)

(declare-fun e!71093 () Bool)

(assert (=> b!123691 (=> (not res!57673) (not e!71093))))

(declare-fun lt!37374 () List!2028)

(assert (=> b!123691 (= res!57673 (= (size!1886 lt!37374) (+ (size!1886 (++!384 testedP!367 (Cons!2022 lt!37310 Nil!2022))) (size!1886 lt!37309))))))

(declare-fun b!123689 () Bool)

(declare-fun e!71094 () List!2028)

(assert (=> b!123689 (= e!71094 lt!37309)))

(declare-fun b!123690 () Bool)

(assert (=> b!123690 (= e!71094 (Cons!2022 (h!7419 (++!384 testedP!367 (Cons!2022 lt!37310 Nil!2022))) (++!384 (t!22505 (++!384 testedP!367 (Cons!2022 lt!37310 Nil!2022))) lt!37309)))))

(declare-fun b!123692 () Bool)

(assert (=> b!123692 (= e!71093 (or (not (= lt!37309 Nil!2022)) (= lt!37374 (++!384 testedP!367 (Cons!2022 lt!37310 Nil!2022)))))))

(declare-fun d!29349 () Bool)

(assert (=> d!29349 e!71093))

(declare-fun res!57674 () Bool)

(assert (=> d!29349 (=> (not res!57674) (not e!71093))))

(assert (=> d!29349 (= res!57674 (= (content!229 lt!37374) ((_ map or) (content!229 (++!384 testedP!367 (Cons!2022 lt!37310 Nil!2022))) (content!229 lt!37309))))))

(assert (=> d!29349 (= lt!37374 e!71094)))

(declare-fun c!27365 () Bool)

(assert (=> d!29349 (= c!27365 ((_ is Nil!2022) (++!384 testedP!367 (Cons!2022 lt!37310 Nil!2022))))))

(assert (=> d!29349 (= (++!384 (++!384 testedP!367 (Cons!2022 lt!37310 Nil!2022)) lt!37309) lt!37374)))

(assert (= (and d!29349 c!27365) b!123689))

(assert (= (and d!29349 (not c!27365)) b!123690))

(assert (= (and d!29349 res!57674) b!123691))

(assert (= (and b!123691 res!57673) b!123692))

(declare-fun m!109554 () Bool)

(assert (=> b!123691 m!109554))

(assert (=> b!123691 m!109280))

(declare-fun m!109556 () Bool)

(assert (=> b!123691 m!109556))

(assert (=> b!123691 m!109396))

(declare-fun m!109558 () Bool)

(assert (=> b!123690 m!109558))

(declare-fun m!109560 () Bool)

(assert (=> d!29349 m!109560))

(assert (=> d!29349 m!109280))

(declare-fun m!109562 () Bool)

(assert (=> d!29349 m!109562))

(assert (=> d!29349 m!109404))

(assert (=> d!29251 d!29349))

(assert (=> d!29251 d!29241))

(declare-fun d!29351 () Bool)

(assert (=> d!29351 (= (++!384 (++!384 testedP!367 (Cons!2022 lt!37310 Nil!2022)) lt!37309) totalInput!1363)))

(assert (=> d!29351 true))

(declare-fun _$68!534 () Unit!1569)

(assert (=> d!29351 (= (choose!1607 testedP!367 lt!37310 lt!37309 totalInput!1363) _$68!534)))

(declare-fun bs!12028 () Bool)

(assert (= bs!12028 d!29351))

(assert (=> bs!12028 m!109280))

(assert (=> bs!12028 m!109280))

(assert (=> bs!12028 m!109388))

(assert (=> d!29251 d!29351))

(declare-fun b!123695 () Bool)

(declare-fun res!57675 () Bool)

(declare-fun e!71095 () Bool)

(assert (=> b!123695 (=> (not res!57675) (not e!71095))))

(declare-fun lt!37375 () List!2028)

(assert (=> b!123695 (= res!57675 (= (size!1886 lt!37375) (+ (size!1886 testedP!367) (size!1886 (Cons!2022 lt!37310 lt!37309)))))))

(declare-fun b!123693 () Bool)

(declare-fun e!71096 () List!2028)

(assert (=> b!123693 (= e!71096 (Cons!2022 lt!37310 lt!37309))))

(declare-fun b!123694 () Bool)

(assert (=> b!123694 (= e!71096 (Cons!2022 (h!7419 testedP!367) (++!384 (t!22505 testedP!367) (Cons!2022 lt!37310 lt!37309))))))

(declare-fun b!123696 () Bool)

(assert (=> b!123696 (= e!71095 (or (not (= (Cons!2022 lt!37310 lt!37309) Nil!2022)) (= lt!37375 testedP!367)))))

(declare-fun d!29353 () Bool)

(assert (=> d!29353 e!71095))

(declare-fun res!57676 () Bool)

(assert (=> d!29353 (=> (not res!57676) (not e!71095))))

(assert (=> d!29353 (= res!57676 (= (content!229 lt!37375) ((_ map or) (content!229 testedP!367) (content!229 (Cons!2022 lt!37310 lt!37309)))))))

(assert (=> d!29353 (= lt!37375 e!71096)))

(declare-fun c!27366 () Bool)

(assert (=> d!29353 (= c!27366 ((_ is Nil!2022) testedP!367))))

(assert (=> d!29353 (= (++!384 testedP!367 (Cons!2022 lt!37310 lt!37309)) lt!37375)))

(assert (= (and d!29353 c!27366) b!123693))

(assert (= (and d!29353 (not c!27366)) b!123694))

(assert (= (and d!29353 res!57676) b!123695))

(assert (= (and b!123695 res!57675) b!123696))

(declare-fun m!109564 () Bool)

(assert (=> b!123695 m!109564))

(assert (=> b!123695 m!109318))

(declare-fun m!109566 () Bool)

(assert (=> b!123695 m!109566))

(declare-fun m!109568 () Bool)

(assert (=> b!123694 m!109568))

(declare-fun m!109570 () Bool)

(assert (=> d!29353 m!109570))

(assert (=> d!29353 m!109364))

(declare-fun m!109572 () Bool)

(assert (=> d!29353 m!109572))

(assert (=> d!29251 d!29353))

(declare-fun d!29355 () Bool)

(declare-fun e!71097 () Bool)

(assert (=> d!29355 e!71097))

(declare-fun res!57679 () Bool)

(assert (=> d!29355 (=> res!57679 e!71097)))

(declare-fun lt!37376 () Bool)

(assert (=> d!29355 (= res!57679 (not lt!37376))))

(declare-fun e!71099 () Bool)

(assert (=> d!29355 (= lt!37376 e!71099)))

(declare-fun res!57680 () Bool)

(assert (=> d!29355 (=> res!57680 e!71099)))

(assert (=> d!29355 (= res!57680 ((_ is Nil!2022) (tail!243 totalInput!1363)))))

(assert (=> d!29355 (= (isPrefix!134 (tail!243 totalInput!1363) (tail!243 totalInput!1363)) lt!37376)))

(declare-fun b!123699 () Bool)

(declare-fun e!71098 () Bool)

(assert (=> b!123699 (= e!71098 (isPrefix!134 (tail!243 (tail!243 totalInput!1363)) (tail!243 (tail!243 totalInput!1363))))))

(declare-fun b!123697 () Bool)

(assert (=> b!123697 (= e!71099 e!71098)))

(declare-fun res!57678 () Bool)

(assert (=> b!123697 (=> (not res!57678) (not e!71098))))

(assert (=> b!123697 (= res!57678 (not ((_ is Nil!2022) (tail!243 totalInput!1363))))))

(declare-fun b!123698 () Bool)

(declare-fun res!57677 () Bool)

(assert (=> b!123698 (=> (not res!57677) (not e!71098))))

(assert (=> b!123698 (= res!57677 (= (head!507 (tail!243 totalInput!1363)) (head!507 (tail!243 totalInput!1363))))))

(declare-fun b!123700 () Bool)

(assert (=> b!123700 (= e!71097 (>= (size!1886 (tail!243 totalInput!1363)) (size!1886 (tail!243 totalInput!1363))))))

(assert (= (and d!29355 (not res!57680)) b!123697))

(assert (= (and b!123697 res!57678) b!123698))

(assert (= (and b!123698 res!57677) b!123699))

(assert (= (and d!29355 (not res!57679)) b!123700))

(assert (=> b!123699 m!109324))

(assert (=> b!123699 m!109458))

(assert (=> b!123699 m!109324))

(assert (=> b!123699 m!109458))

(assert (=> b!123699 m!109458))

(assert (=> b!123699 m!109458))

(declare-fun m!109574 () Bool)

(assert (=> b!123699 m!109574))

(assert (=> b!123698 m!109324))

(assert (=> b!123698 m!109464))

(assert (=> b!123698 m!109324))

(assert (=> b!123698 m!109464))

(assert (=> b!123700 m!109324))

(assert (=> b!123700 m!109466))

(assert (=> b!123700 m!109324))

(assert (=> b!123700 m!109466))

(assert (=> b!123570 d!29355))

(assert (=> b!123570 d!29291))

(assert (=> d!29229 d!29281))

(assert (=> d!29229 d!29221))

(declare-fun d!29357 () Bool)

(assert (=> d!29357 (<= (size!1886 testedP!367) (size!1886 totalInput!1363))))

(assert (=> d!29357 true))

(declare-fun _$64!438 () Unit!1569)

(assert (=> d!29357 (= (choose!1604 testedP!367 totalInput!1363) _$64!438)))

(declare-fun bs!12029 () Bool)

(assert (= bs!12029 d!29357))

(assert (=> bs!12029 m!109318))

(assert (=> bs!12029 m!109288))

(assert (=> d!29229 d!29357))

(assert (=> d!29229 d!29223))

(declare-fun b!123715 () Bool)

(declare-fun e!71116 () Bool)

(declare-fun call!5326 () Bool)

(assert (=> b!123715 (= e!71116 call!5326)))

(declare-fun b!123716 () Bool)

(declare-fun e!71115 () Bool)

(declare-fun e!71113 () Bool)

(assert (=> b!123716 (= e!71115 e!71113)))

(declare-fun res!57693 () Bool)

(assert (=> b!123716 (=> res!57693 e!71113)))

(assert (=> b!123716 (= res!57693 ((_ is EmptyLang!559) r!15532))))

(declare-fun bm!5320 () Bool)

(declare-fun c!27369 () Bool)

(assert (=> bm!5320 (= call!5326 (lostCause!77 (ite c!27369 (regTwo!1631 r!15532) (regOne!1630 r!15532))))))

(declare-fun b!123717 () Bool)

(declare-fun e!71114 () Bool)

(assert (=> b!123717 (= e!71114 e!71116)))

(declare-fun res!57694 () Bool)

(declare-fun call!5325 () Bool)

(assert (=> b!123717 (= res!57694 call!5325)))

(assert (=> b!123717 (=> (not res!57694) (not e!71116))))

(declare-fun b!123718 () Bool)

(declare-fun e!71112 () Bool)

(assert (=> b!123718 (= e!71114 e!71112)))

(declare-fun res!57692 () Bool)

(assert (=> b!123718 (= res!57692 call!5326)))

(assert (=> b!123718 (=> res!57692 e!71112)))

(declare-fun b!123719 () Bool)

(assert (=> b!123719 (= e!71112 call!5325)))

(declare-fun bm!5321 () Bool)

(assert (=> bm!5321 (= call!5325 (lostCause!77 (ite c!27369 (regOne!1631 r!15532) (regTwo!1630 r!15532))))))

(declare-fun b!123720 () Bool)

(declare-fun e!71117 () Bool)

(assert (=> b!123720 (= e!71113 e!71117)))

(declare-fun res!57691 () Bool)

(assert (=> b!123720 (=> (not res!57691) (not e!71117))))

(assert (=> b!123720 (= res!57691 (and (not ((_ is ElementMatch!559) r!15532)) (not ((_ is Star!559) r!15532))))))

(declare-fun d!29359 () Bool)

(declare-fun lt!37379 () Bool)

(declare-datatypes ((Option!200 0))(
  ( (None!199) (Some!199 (v!13384 List!2028)) )
))
(declare-fun isEmpty!818 (Option!200) Bool)

(declare-fun getLanguageWitness!28 (Regex!559) Option!200)

(assert (=> d!29359 (= lt!37379 (isEmpty!818 (getLanguageWitness!28 r!15532)))))

(assert (=> d!29359 (= lt!37379 e!71115)))

(declare-fun res!57695 () Bool)

(assert (=> d!29359 (=> (not res!57695) (not e!71115))))

(assert (=> d!29359 (= res!57695 (not ((_ is EmptyExpr!559) r!15532)))))

(assert (=> d!29359 (= (lostCauseFct!34 r!15532) lt!37379)))

(declare-fun b!123721 () Bool)

(assert (=> b!123721 (= e!71117 e!71114)))

(assert (=> b!123721 (= c!27369 ((_ is Union!559) r!15532))))

(assert (= (and d!29359 res!57695) b!123716))

(assert (= (and b!123716 (not res!57693)) b!123720))

(assert (= (and b!123720 res!57691) b!123721))

(assert (= (and b!123721 c!27369) b!123717))

(assert (= (and b!123721 (not c!27369)) b!123718))

(assert (= (and b!123717 res!57694) b!123715))

(assert (= (and b!123718 (not res!57692)) b!123719))

(assert (= (or b!123715 b!123718) bm!5320))

(assert (= (or b!123717 b!123719) bm!5321))

(declare-fun m!109576 () Bool)

(assert (=> bm!5320 m!109576))

(declare-fun m!109578 () Bool)

(assert (=> bm!5321 m!109578))

(declare-fun m!109580 () Bool)

(assert (=> d!29359 m!109580))

(assert (=> d!29359 m!109580))

(declare-fun m!109582 () Bool)

(assert (=> d!29359 m!109582))

(assert (=> d!29233 d!29359))

(declare-fun d!29361 () Bool)

(assert (=> d!29361 (isPrefix!134 (++!384 testedP!367 (Cons!2022 (head!507 (getSuffix!72 totalInput!1363 testedP!367)) Nil!2022)) totalInput!1363)))

(assert (=> d!29361 true))

(declare-fun _$65!799 () Unit!1569)

(assert (=> d!29361 (= (choose!1606 testedP!367 totalInput!1363) _$65!799)))

(declare-fun bs!12030 () Bool)

(assert (= bs!12030 d!29361))

(assert (=> bs!12030 m!109260))

(assert (=> bs!12030 m!109260))

(assert (=> bs!12030 m!109372))

(assert (=> bs!12030 m!109374))

(assert (=> bs!12030 m!109374))

(assert (=> bs!12030 m!109376))

(assert (=> d!29245 d!29361))

(assert (=> d!29245 d!29237))

(declare-fun d!29363 () Bool)

(declare-fun e!71118 () Bool)

(assert (=> d!29363 e!71118))

(declare-fun res!57698 () Bool)

(assert (=> d!29363 (=> res!57698 e!71118)))

(declare-fun lt!37380 () Bool)

(assert (=> d!29363 (= res!57698 (not lt!37380))))

(declare-fun e!71120 () Bool)

(assert (=> d!29363 (= lt!37380 e!71120)))

(declare-fun res!57699 () Bool)

(assert (=> d!29363 (=> res!57699 e!71120)))

(assert (=> d!29363 (= res!57699 ((_ is Nil!2022) (++!384 testedP!367 (Cons!2022 (head!507 (getSuffix!72 totalInput!1363 testedP!367)) Nil!2022))))))

(assert (=> d!29363 (= (isPrefix!134 (++!384 testedP!367 (Cons!2022 (head!507 (getSuffix!72 totalInput!1363 testedP!367)) Nil!2022)) totalInput!1363) lt!37380)))

(declare-fun b!123724 () Bool)

(declare-fun e!71119 () Bool)

(assert (=> b!123724 (= e!71119 (isPrefix!134 (tail!243 (++!384 testedP!367 (Cons!2022 (head!507 (getSuffix!72 totalInput!1363 testedP!367)) Nil!2022))) (tail!243 totalInput!1363)))))

(declare-fun b!123722 () Bool)

(assert (=> b!123722 (= e!71120 e!71119)))

(declare-fun res!57697 () Bool)

(assert (=> b!123722 (=> (not res!57697) (not e!71119))))

(assert (=> b!123722 (= res!57697 (not ((_ is Nil!2022) totalInput!1363)))))

(declare-fun b!123723 () Bool)

(declare-fun res!57696 () Bool)

(assert (=> b!123723 (=> (not res!57696) (not e!71119))))

(assert (=> b!123723 (= res!57696 (= (head!507 (++!384 testedP!367 (Cons!2022 (head!507 (getSuffix!72 totalInput!1363 testedP!367)) Nil!2022))) (head!507 totalInput!1363)))))

(declare-fun b!123725 () Bool)

(assert (=> b!123725 (= e!71118 (>= (size!1886 totalInput!1363) (size!1886 (++!384 testedP!367 (Cons!2022 (head!507 (getSuffix!72 totalInput!1363 testedP!367)) Nil!2022)))))))

(assert (= (and d!29363 (not res!57699)) b!123722))

(assert (= (and b!123722 res!57697) b!123723))

(assert (= (and b!123723 res!57696) b!123724))

(assert (= (and d!29363 (not res!57698)) b!123725))

(assert (=> b!123724 m!109374))

(declare-fun m!109584 () Bool)

(assert (=> b!123724 m!109584))

(assert (=> b!123724 m!109324))

(assert (=> b!123724 m!109584))

(assert (=> b!123724 m!109324))

(declare-fun m!109586 () Bool)

(assert (=> b!123724 m!109586))

(assert (=> b!123723 m!109374))

(declare-fun m!109588 () Bool)

(assert (=> b!123723 m!109588))

(assert (=> b!123723 m!109330))

(assert (=> b!123725 m!109288))

(assert (=> b!123725 m!109374))

(declare-fun m!109590 () Bool)

(assert (=> b!123725 m!109590))

(assert (=> d!29245 d!29363))

(declare-fun b!123728 () Bool)

(declare-fun res!57700 () Bool)

(declare-fun e!71121 () Bool)

(assert (=> b!123728 (=> (not res!57700) (not e!71121))))

(declare-fun lt!37381 () List!2028)

(assert (=> b!123728 (= res!57700 (= (size!1886 lt!37381) (+ (size!1886 testedP!367) (size!1886 (Cons!2022 (head!507 (getSuffix!72 totalInput!1363 testedP!367)) Nil!2022)))))))

(declare-fun b!123726 () Bool)

(declare-fun e!71122 () List!2028)

(assert (=> b!123726 (= e!71122 (Cons!2022 (head!507 (getSuffix!72 totalInput!1363 testedP!367)) Nil!2022))))

(declare-fun b!123727 () Bool)

(assert (=> b!123727 (= e!71122 (Cons!2022 (h!7419 testedP!367) (++!384 (t!22505 testedP!367) (Cons!2022 (head!507 (getSuffix!72 totalInput!1363 testedP!367)) Nil!2022))))))

(declare-fun b!123729 () Bool)

(assert (=> b!123729 (= e!71121 (or (not (= (Cons!2022 (head!507 (getSuffix!72 totalInput!1363 testedP!367)) Nil!2022) Nil!2022)) (= lt!37381 testedP!367)))))

(declare-fun d!29365 () Bool)

(assert (=> d!29365 e!71121))

(declare-fun res!57701 () Bool)

(assert (=> d!29365 (=> (not res!57701) (not e!71121))))

(assert (=> d!29365 (= res!57701 (= (content!229 lt!37381) ((_ map or) (content!229 testedP!367) (content!229 (Cons!2022 (head!507 (getSuffix!72 totalInput!1363 testedP!367)) Nil!2022)))))))

(assert (=> d!29365 (= lt!37381 e!71122)))

(declare-fun c!27370 () Bool)

(assert (=> d!29365 (= c!27370 ((_ is Nil!2022) testedP!367))))

(assert (=> d!29365 (= (++!384 testedP!367 (Cons!2022 (head!507 (getSuffix!72 totalInput!1363 testedP!367)) Nil!2022)) lt!37381)))

(assert (= (and d!29365 c!27370) b!123726))

(assert (= (and d!29365 (not c!27370)) b!123727))

(assert (= (and d!29365 res!57701) b!123728))

(assert (= (and b!123728 res!57700) b!123729))

(declare-fun m!109592 () Bool)

(assert (=> b!123728 m!109592))

(assert (=> b!123728 m!109318))

(declare-fun m!109594 () Bool)

(assert (=> b!123728 m!109594))

(declare-fun m!109596 () Bool)

(assert (=> b!123727 m!109596))

(declare-fun m!109598 () Bool)

(assert (=> d!29365 m!109598))

(assert (=> d!29365 m!109364))

(declare-fun m!109600 () Bool)

(assert (=> d!29365 m!109600))

(assert (=> d!29245 d!29365))

(assert (=> d!29245 d!29223))

(declare-fun d!29367 () Bool)

(assert (=> d!29367 (= (head!507 (getSuffix!72 totalInput!1363 testedP!367)) (h!7419 (getSuffix!72 totalInput!1363 testedP!367)))))

(assert (=> d!29245 d!29367))

(declare-fun e!71126 () Regex!559)

(declare-fun call!5327 () Regex!559)

(declare-fun b!123730 () Bool)

(assert (=> b!123730 (= e!71126 (Union!559 (Concat!943 call!5327 (regTwo!1630 (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532)))) EmptyLang!559))))

(declare-fun b!123731 () Bool)

(declare-fun e!71124 () Regex!559)

(assert (=> b!123731 (= e!71124 EmptyLang!559)))

(declare-fun b!123732 () Bool)

(declare-fun c!27372 () Bool)

(assert (=> b!123732 (= c!27372 (nullable!93 (regOne!1630 (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532)))))))

(declare-fun e!71125 () Regex!559)

(assert (=> b!123732 (= e!71125 e!71126)))

(declare-fun b!123733 () Bool)

(declare-fun e!71127 () Regex!559)

(assert (=> b!123733 (= e!71127 e!71125)))

(declare-fun c!27373 () Bool)

(assert (=> b!123733 (= c!27373 ((_ is Star!559) (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532))))))

(declare-fun bm!5322 () Bool)

(declare-fun call!5328 () Regex!559)

(declare-fun call!5329 () Regex!559)

(assert (=> bm!5322 (= call!5328 call!5329)))

(declare-fun bm!5323 () Bool)

(declare-fun c!27371 () Bool)

(assert (=> bm!5323 (= call!5329 (derivativeStep!65 (ite c!27371 (regTwo!1631 (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532))) (ite c!27373 (reg!888 (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532))) (regOne!1630 (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532))))) lt!37310))))

(declare-fun bm!5324 () Bool)

(assert (=> bm!5324 (= call!5327 call!5328)))

(declare-fun call!5330 () Regex!559)

(declare-fun bm!5325 () Bool)

(assert (=> bm!5325 (= call!5330 (derivativeStep!65 (ite c!27371 (regOne!1631 (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532))) (regTwo!1630 (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532)))) lt!37310))))

(declare-fun b!123735 () Bool)

(assert (=> b!123735 (= e!71127 (Union!559 call!5330 call!5329))))

(declare-fun b!123736 () Bool)

(assert (=> b!123736 (= c!27371 ((_ is Union!559) (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532))))))

(declare-fun e!71123 () Regex!559)

(assert (=> b!123736 (= e!71123 e!71127)))

(declare-fun b!123737 () Bool)

(assert (=> b!123737 (= e!71125 (Concat!943 call!5328 (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532))))))

(declare-fun b!123738 () Bool)

(assert (=> b!123738 (= e!71126 (Union!559 (Concat!943 call!5327 (regTwo!1630 (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532)))) call!5330))))

(declare-fun b!123739 () Bool)

(assert (=> b!123739 (= e!71124 e!71123)))

(declare-fun c!27375 () Bool)

(assert (=> b!123739 (= c!27375 ((_ is ElementMatch!559) (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532))))))

(declare-fun b!123734 () Bool)

(assert (=> b!123734 (= e!71123 (ite (= lt!37310 (c!27299 (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532)))) EmptyExpr!559 EmptyLang!559))))

(declare-fun d!29369 () Bool)

(declare-fun lt!37382 () Regex!559)

(assert (=> d!29369 (validRegex!153 lt!37382)))

(assert (=> d!29369 (= lt!37382 e!71124)))

(declare-fun c!27374 () Bool)

(assert (=> d!29369 (= c!27374 (or ((_ is EmptyExpr!559) (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532))) ((_ is EmptyLang!559) (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532)))))))

(assert (=> d!29369 (validRegex!153 (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532)))))

(assert (=> d!29369 (= (derivativeStep!65 (ite c!27330 (regOne!1631 r!15532) (regTwo!1630 r!15532)) lt!37310) lt!37382)))

(assert (= (and d!29369 c!27374) b!123731))

(assert (= (and d!29369 (not c!27374)) b!123739))

(assert (= (and b!123739 c!27375) b!123734))

(assert (= (and b!123739 (not c!27375)) b!123736))

(assert (= (and b!123736 c!27371) b!123735))

(assert (= (and b!123736 (not c!27371)) b!123733))

(assert (= (and b!123733 c!27373) b!123737))

(assert (= (and b!123733 (not c!27373)) b!123732))

(assert (= (and b!123732 c!27372) b!123738))

(assert (= (and b!123732 (not c!27372)) b!123730))

(assert (= (or b!123738 b!123730) bm!5324))

(assert (= (or b!123737 bm!5324) bm!5322))

(assert (= (or b!123735 bm!5322) bm!5323))

(assert (= (or b!123735 b!123738) bm!5325))

(declare-fun m!109602 () Bool)

(assert (=> b!123732 m!109602))

(declare-fun m!109604 () Bool)

(assert (=> bm!5323 m!109604))

(declare-fun m!109606 () Bool)

(assert (=> bm!5325 m!109606))

(declare-fun m!109608 () Bool)

(assert (=> d!29369 m!109608))

(declare-fun m!109610 () Bool)

(assert (=> d!29369 m!109610))

(assert (=> bm!5311 d!29369))

(declare-fun d!29371 () Bool)

(declare-fun res!57708 () Bool)

(declare-fun e!71132 () Bool)

(assert (=> d!29371 (=> (not res!57708) (not e!71132))))

(declare-fun valid!382 (MutableMap!421) Bool)

(assert (=> d!29371 (= res!57708 (valid!382 (cache!875 cache!470)))))

(assert (=> d!29371 (= (validCacheMap!31 (cache!875 cache!470)) e!71132)))

(declare-fun b!123746 () Bool)

(declare-fun res!57709 () Bool)

(assert (=> b!123746 (=> (not res!57709) (not e!71132))))

(declare-fun invariantList!33 (List!2029) Bool)

(declare-datatypes ((ListMap!89 0))(
  ( (ListMap!90 (toList!269 List!2029)) )
))
(declare-fun map!497 (MutableMap!421) ListMap!89)

(assert (=> b!123746 (= res!57709 (invariantList!33 (toList!269 (map!497 (cache!875 cache!470)))))))

(declare-fun b!123747 () Bool)

(declare-fun lambda!3041 () Int)

(declare-fun forall!346 (List!2029 Int) Bool)

(assert (=> b!123747 (= e!71132 (forall!346 (toList!269 (map!497 (cache!875 cache!470))) lambda!3041))))

(assert (= (and d!29371 res!57708) b!123746))

(assert (= (and b!123746 res!57709) b!123747))

(declare-fun m!109613 () Bool)

(assert (=> d!29371 m!109613))

(declare-fun m!109615 () Bool)

(assert (=> b!123746 m!109615))

(declare-fun m!109617 () Bool)

(assert (=> b!123746 m!109617))

(assert (=> b!123747 m!109615))

(declare-fun m!109619 () Bool)

(assert (=> b!123747 m!109619))

(assert (=> d!29267 d!29371))

(declare-fun d!29373 () Bool)

(declare-fun lt!37383 () Int)

(assert (=> d!29373 (>= lt!37383 0)))

(declare-fun e!71133 () Int)

(assert (=> d!29373 (= lt!37383 e!71133)))

(declare-fun c!27376 () Bool)

(assert (=> d!29373 (= c!27376 ((_ is Nil!2022) (t!22505 lt!37304)))))

(assert (=> d!29373 (= (size!1886 (t!22505 lt!37304)) lt!37383)))

(declare-fun b!123748 () Bool)

(assert (=> b!123748 (= e!71133 0)))

(declare-fun b!123749 () Bool)

(assert (=> b!123749 (= e!71133 (+ 1 (size!1886 (t!22505 (t!22505 lt!37304)))))))

(assert (= (and d!29373 c!27376) b!123748))

(assert (= (and d!29373 (not c!27376)) b!123749))

(declare-fun m!109621 () Bool)

(assert (=> b!123749 m!109621))

(assert (=> b!123464 d!29373))

(declare-fun b!123764 () Bool)

(declare-fun e!71147 () Bool)

(declare-fun e!71150 () Bool)

(assert (=> b!123764 (= e!71147 e!71150)))

(declare-fun res!57722 () Bool)

(declare-fun call!5335 () Bool)

(assert (=> b!123764 (= res!57722 call!5335)))

(assert (=> b!123764 (=> res!57722 e!71150)))

(declare-fun b!123765 () Bool)

(declare-fun e!71149 () Bool)

(declare-fun e!71151 () Bool)

(assert (=> b!123765 (= e!71149 e!71151)))

(declare-fun res!57720 () Bool)

(assert (=> b!123765 (=> (not res!57720) (not e!71151))))

(assert (=> b!123765 (= res!57720 (and (not ((_ is EmptyLang!559) r!15532)) (not ((_ is ElementMatch!559) r!15532))))))

(declare-fun bm!5330 () Bool)

(declare-fun c!27379 () Bool)

(assert (=> bm!5330 (= call!5335 (nullable!93 (ite c!27379 (regOne!1631 r!15532) (regOne!1630 r!15532))))))

(declare-fun bm!5331 () Bool)

(declare-fun call!5336 () Bool)

(assert (=> bm!5331 (= call!5336 (nullable!93 (ite c!27379 (regTwo!1631 r!15532) (regTwo!1630 r!15532))))))

(declare-fun b!123766 () Bool)

(declare-fun e!71146 () Bool)

(assert (=> b!123766 (= e!71146 e!71147)))

(assert (=> b!123766 (= c!27379 ((_ is Union!559) r!15532))))

(declare-fun d!29375 () Bool)

(declare-fun res!57721 () Bool)

(assert (=> d!29375 (=> res!57721 e!71149)))

(assert (=> d!29375 (= res!57721 ((_ is EmptyExpr!559) r!15532))))

(assert (=> d!29375 (= (nullableFct!24 r!15532) e!71149)))

(declare-fun b!123767 () Bool)

(declare-fun e!71148 () Bool)

(assert (=> b!123767 (= e!71148 call!5336)))

(declare-fun b!123768 () Bool)

(assert (=> b!123768 (= e!71151 e!71146)))

(declare-fun res!57724 () Bool)

(assert (=> b!123768 (=> res!57724 e!71146)))

(assert (=> b!123768 (= res!57724 ((_ is Star!559) r!15532))))

(declare-fun b!123769 () Bool)

(assert (=> b!123769 (= e!71150 call!5336)))

(declare-fun b!123770 () Bool)

(assert (=> b!123770 (= e!71147 e!71148)))

(declare-fun res!57723 () Bool)

(assert (=> b!123770 (= res!57723 call!5335)))

(assert (=> b!123770 (=> (not res!57723) (not e!71148))))

(assert (= (and d!29375 (not res!57721)) b!123765))

(assert (= (and b!123765 res!57720) b!123768))

(assert (= (and b!123768 (not res!57724)) b!123766))

(assert (= (and b!123766 c!27379) b!123764))

(assert (= (and b!123766 (not c!27379)) b!123770))

(assert (= (and b!123764 (not res!57722)) b!123769))

(assert (= (and b!123770 res!57723) b!123767))

(assert (= (or b!123769 b!123767) bm!5331))

(assert (= (or b!123764 b!123770) bm!5330))

(declare-fun m!109623 () Bool)

(assert (=> bm!5330 m!109623))

(declare-fun m!109625 () Bool)

(assert (=> bm!5331 m!109625))

(assert (=> d!29243 d!29375))

(assert (=> b!123458 d!29221))

(assert (=> b!123458 d!29281))

(assert (=> d!29275 d!29277))

(declare-fun d!29377 () Bool)

(assert (=> d!29377 (isPrefix!134 totalInput!1363 totalInput!1363)))

(assert (=> d!29377 true))

(declare-fun _$45!1154 () Unit!1569)

(assert (=> d!29377 (= (choose!1608 totalInput!1363 totalInput!1363) _$45!1154)))

(declare-fun bs!12031 () Bool)

(assert (= bs!12031 d!29377))

(assert (=> bs!12031 m!109264))

(assert (=> d!29275 d!29377))

(declare-fun d!29379 () Bool)

(declare-fun e!71152 () Bool)

(assert (=> d!29379 e!71152))

(declare-fun res!57727 () Bool)

(assert (=> d!29379 (=> res!57727 e!71152)))

(declare-fun lt!37384 () Bool)

(assert (=> d!29379 (= res!57727 (not lt!37384))))

(declare-fun e!71154 () Bool)

(assert (=> d!29379 (= lt!37384 e!71154)))

(declare-fun res!57728 () Bool)

(assert (=> d!29379 (=> res!57728 e!71154)))

(assert (=> d!29379 (= res!57728 ((_ is Nil!2022) (tail!243 testedP!367)))))

(assert (=> d!29379 (= (isPrefix!134 (tail!243 testedP!367) (tail!243 lt!37311)) lt!37384)))

(declare-fun b!123773 () Bool)

(declare-fun e!71153 () Bool)

(assert (=> b!123773 (= e!71153 (isPrefix!134 (tail!243 (tail!243 testedP!367)) (tail!243 (tail!243 lt!37311))))))

(declare-fun b!123771 () Bool)

(assert (=> b!123771 (= e!71154 e!71153)))

(declare-fun res!57726 () Bool)

(assert (=> b!123771 (=> (not res!57726) (not e!71153))))

(assert (=> b!123771 (= res!57726 (not ((_ is Nil!2022) (tail!243 lt!37311))))))

(declare-fun b!123772 () Bool)

(declare-fun res!57725 () Bool)

(assert (=> b!123772 (=> (not res!57725) (not e!71153))))

(assert (=> b!123772 (= res!57725 (= (head!507 (tail!243 testedP!367)) (head!507 (tail!243 lt!37311))))))

(declare-fun b!123774 () Bool)

(assert (=> b!123774 (= e!71152 (>= (size!1886 (tail!243 lt!37311)) (size!1886 (tail!243 testedP!367))))))

(assert (= (and d!29379 (not res!57728)) b!123771))

(assert (= (and b!123771 res!57726) b!123772))

(assert (= (and b!123772 res!57725) b!123773))

(assert (= (and d!29379 (not res!57727)) b!123774))

(assert (=> b!123773 m!109322))

(assert (=> b!123773 m!109456))

(assert (=> b!123773 m!109332))

(declare-fun m!109627 () Bool)

(assert (=> b!123773 m!109627))

(assert (=> b!123773 m!109456))

(assert (=> b!123773 m!109627))

(declare-fun m!109629 () Bool)

(assert (=> b!123773 m!109629))

(assert (=> b!123772 m!109322))

(assert (=> b!123772 m!109462))

(assert (=> b!123772 m!109332))

(declare-fun m!109631 () Bool)

(assert (=> b!123772 m!109631))

(assert (=> b!123774 m!109332))

(declare-fun m!109633 () Bool)

(assert (=> b!123774 m!109633))

(assert (=> b!123774 m!109322))

(assert (=> b!123774 m!109468))

(assert (=> b!123461 d!29379))

(assert (=> b!123461 d!29289))

(declare-fun d!29381 () Bool)

(assert (=> d!29381 (= (tail!243 lt!37311) (t!22505 lt!37311))))

(assert (=> b!123461 d!29381))

(declare-fun d!29383 () Bool)

(declare-fun e!71155 () Bool)

(assert (=> d!29383 e!71155))

(declare-fun res!57731 () Bool)

(assert (=> d!29383 (=> res!57731 e!71155)))

(declare-fun lt!37385 () Bool)

(assert (=> d!29383 (= res!57731 (not lt!37385))))

(declare-fun e!71157 () Bool)

(assert (=> d!29383 (= lt!37385 e!71157)))

(declare-fun res!57732 () Bool)

(assert (=> d!29383 (=> res!57732 e!71157)))

(assert (=> d!29383 (= res!57732 ((_ is Nil!2022) (tail!243 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022)))))))

(assert (=> d!29383 (= (isPrefix!134 (tail!243 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022))) (tail!243 totalInput!1363)) lt!37385)))

(declare-fun b!123777 () Bool)

(declare-fun e!71156 () Bool)

(assert (=> b!123777 (= e!71156 (isPrefix!134 (tail!243 (tail!243 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022)))) (tail!243 (tail!243 totalInput!1363))))))

(declare-fun b!123775 () Bool)

(assert (=> b!123775 (= e!71157 e!71156)))

(declare-fun res!57730 () Bool)

(assert (=> b!123775 (=> (not res!57730) (not e!71156))))

(assert (=> b!123775 (= res!57730 (not ((_ is Nil!2022) (tail!243 totalInput!1363))))))

(declare-fun b!123776 () Bool)

(declare-fun res!57729 () Bool)

(assert (=> b!123776 (=> (not res!57729) (not e!71156))))

(assert (=> b!123776 (= res!57729 (= (head!507 (tail!243 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022)))) (head!507 (tail!243 totalInput!1363))))))

(declare-fun b!123778 () Bool)

(assert (=> b!123778 (= e!71155 (>= (size!1886 (tail!243 totalInput!1363)) (size!1886 (tail!243 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022))))))))

(assert (= (and d!29383 (not res!57732)) b!123775))

(assert (= (and b!123775 res!57730) b!123776))

(assert (= (and b!123776 res!57729) b!123777))

(assert (= (and d!29383 (not res!57731)) b!123778))

(assert (=> b!123777 m!109406))

(declare-fun m!109635 () Bool)

(assert (=> b!123777 m!109635))

(assert (=> b!123777 m!109324))

(assert (=> b!123777 m!109458))

(assert (=> b!123777 m!109635))

(assert (=> b!123777 m!109458))

(declare-fun m!109637 () Bool)

(assert (=> b!123777 m!109637))

(assert (=> b!123776 m!109406))

(declare-fun m!109639 () Bool)

(assert (=> b!123776 m!109639))

(assert (=> b!123776 m!109324))

(assert (=> b!123776 m!109464))

(assert (=> b!123778 m!109324))

(assert (=> b!123778 m!109466))

(assert (=> b!123778 m!109406))

(declare-fun m!109641 () Bool)

(assert (=> b!123778 m!109641))

(assert (=> b!123493 d!29383))

(declare-fun d!29385 () Bool)

(assert (=> d!29385 (= (tail!243 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022))) (t!22505 (++!384 testedP!367 (Cons!2022 (head!507 lt!37312) Nil!2022))))))

(assert (=> b!123493 d!29385))

(assert (=> b!123493 d!29291))

(declare-fun d!29387 () Bool)

(declare-fun c!27380 () Bool)

(assert (=> d!29387 (= c!27380 ((_ is Nil!2022) lt!37337))))

(declare-fun e!71158 () (InoxSet C!2040))

(assert (=> d!29387 (= (content!229 lt!37337) e!71158)))

(declare-fun b!123779 () Bool)

(assert (=> b!123779 (= e!71158 ((as const (Array C!2040 Bool)) false))))

(declare-fun b!123780 () Bool)

(assert (=> b!123780 (= e!71158 ((_ map or) (store ((as const (Array C!2040 Bool)) false) (h!7419 lt!37337) true) (content!229 (t!22505 lt!37337))))))

(assert (= (and d!29387 c!27380) b!123779))

(assert (= (and d!29387 (not c!27380)) b!123780))

(declare-fun m!109643 () Bool)

(assert (=> b!123780 m!109643))

(declare-fun m!109645 () Bool)

(assert (=> b!123780 m!109645))

(assert (=> d!29241 d!29387))

(assert (=> d!29241 d!29303))

(declare-fun d!29389 () Bool)

(declare-fun c!27381 () Bool)

(assert (=> d!29389 (= c!27381 ((_ is Nil!2022) (Cons!2022 lt!37310 Nil!2022)))))

(declare-fun e!71159 () (InoxSet C!2040))

(assert (=> d!29389 (= (content!229 (Cons!2022 lt!37310 Nil!2022)) e!71159)))

(declare-fun b!123781 () Bool)

(assert (=> b!123781 (= e!71159 ((as const (Array C!2040 Bool)) false))))

(declare-fun b!123782 () Bool)

(assert (=> b!123782 (= e!71159 ((_ map or) (store ((as const (Array C!2040 Bool)) false) (h!7419 (Cons!2022 lt!37310 Nil!2022)) true) (content!229 (t!22505 (Cons!2022 lt!37310 Nil!2022)))))))

(assert (= (and d!29389 c!27381) b!123781))

(assert (= (and d!29389 (not c!27381)) b!123782))

(declare-fun m!109647 () Bool)

(assert (=> b!123782 m!109647))

(declare-fun m!109649 () Bool)

(assert (=> b!123782 m!109649))

(assert (=> d!29241 d!29389))

(assert (=> b!123524 d!29371))

(assert (=> b!123456 d!29283))

(assert (=> b!123456 d!29307))

(declare-fun d!29391 () Bool)

(declare-fun lt!37386 () Int)

(assert (=> d!29391 (>= lt!37386 0)))

(declare-fun e!71160 () Int)

(assert (=> d!29391 (= lt!37386 e!71160)))

(declare-fun c!27382 () Bool)

(assert (=> d!29391 (= c!27382 ((_ is Nil!2022) (t!22505 totalInput!1363)))))

(assert (=> d!29391 (= (size!1886 (t!22505 totalInput!1363)) lt!37386)))

(declare-fun b!123783 () Bool)

(assert (=> b!123783 (= e!71160 0)))

(declare-fun b!123784 () Bool)

(assert (=> b!123784 (= e!71160 (+ 1 (size!1886 (t!22505 (t!22505 totalInput!1363)))))))

(assert (= (and d!29391 c!27382) b!123783))

(assert (= (and d!29391 (not c!27382)) b!123784))

(declare-fun m!109651 () Bool)

(assert (=> b!123784 m!109651))

(assert (=> b!123446 d!29391))

(declare-fun b!123787 () Bool)

(declare-fun res!57733 () Bool)

(declare-fun e!71161 () Bool)

(assert (=> b!123787 (=> (not res!57733) (not e!71161))))

(declare-fun lt!37387 () List!2028)

(assert (=> b!123787 (= res!57733 (= (size!1886 lt!37387) (+ (size!1886 (t!22505 lt!37304)) (size!1886 lt!37309))))))

(declare-fun b!123785 () Bool)

(declare-fun e!71162 () List!2028)

(assert (=> b!123785 (= e!71162 lt!37309)))

(declare-fun b!123786 () Bool)

(assert (=> b!123786 (= e!71162 (Cons!2022 (h!7419 (t!22505 lt!37304)) (++!384 (t!22505 (t!22505 lt!37304)) lt!37309)))))

(declare-fun b!123788 () Bool)

(assert (=> b!123788 (= e!71161 (or (not (= lt!37309 Nil!2022)) (= lt!37387 (t!22505 lt!37304))))))

(declare-fun d!29393 () Bool)

(assert (=> d!29393 e!71161))

(declare-fun res!57734 () Bool)

(assert (=> d!29393 (=> (not res!57734) (not e!71161))))

(assert (=> d!29393 (= res!57734 (= (content!229 lt!37387) ((_ map or) (content!229 (t!22505 lt!37304)) (content!229 lt!37309))))))

(assert (=> d!29393 (= lt!37387 e!71162)))

(declare-fun c!27383 () Bool)

(assert (=> d!29393 (= c!27383 ((_ is Nil!2022) (t!22505 lt!37304)))))

(assert (=> d!29393 (= (++!384 (t!22505 lt!37304) lt!37309) lt!37387)))

(assert (= (and d!29393 c!27383) b!123785))

(assert (= (and d!29393 (not c!27383)) b!123786))

(assert (= (and d!29393 res!57734) b!123787))

(assert (= (and b!123787 res!57733) b!123788))

(declare-fun m!109653 () Bool)

(assert (=> b!123787 m!109653))

(assert (=> b!123787 m!109346))

(assert (=> b!123787 m!109396))

(declare-fun m!109655 () Bool)

(assert (=> b!123786 m!109655))

(declare-fun m!109657 () Bool)

(assert (=> d!29393 m!109657))

(assert (=> d!29393 m!109480))

(assert (=> d!29393 m!109404))

(assert (=> b!123488 d!29393))

(declare-fun b!123791 () Bool)

(declare-fun res!57735 () Bool)

(declare-fun e!71163 () Bool)

(assert (=> b!123791 (=> (not res!57735) (not e!71163))))

(declare-fun lt!37388 () List!2028)

(assert (=> b!123791 (= res!57735 (= (size!1886 lt!37388) (+ (size!1886 (t!22505 testedP!367)) (size!1886 (Cons!2022 (head!507 lt!37312) Nil!2022)))))))

(declare-fun b!123789 () Bool)

(declare-fun e!71164 () List!2028)

(assert (=> b!123789 (= e!71164 (Cons!2022 (head!507 lt!37312) Nil!2022))))

(declare-fun b!123790 () Bool)

(assert (=> b!123790 (= e!71164 (Cons!2022 (h!7419 (t!22505 testedP!367)) (++!384 (t!22505 (t!22505 testedP!367)) (Cons!2022 (head!507 lt!37312) Nil!2022))))))

(declare-fun b!123792 () Bool)

(assert (=> b!123792 (= e!71163 (or (not (= (Cons!2022 (head!507 lt!37312) Nil!2022) Nil!2022)) (= lt!37388 (t!22505 testedP!367))))))

(declare-fun d!29395 () Bool)

(assert (=> d!29395 e!71163))

(declare-fun res!57736 () Bool)

(assert (=> d!29395 (=> (not res!57736) (not e!71163))))

(assert (=> d!29395 (= res!57736 (= (content!229 lt!37388) ((_ map or) (content!229 (t!22505 testedP!367)) (content!229 (Cons!2022 (head!507 lt!37312) Nil!2022)))))))

(assert (=> d!29395 (= lt!37388 e!71164)))

(declare-fun c!27384 () Bool)

(assert (=> d!29395 (= c!27384 ((_ is Nil!2022) (t!22505 testedP!367)))))

(assert (=> d!29395 (= (++!384 (t!22505 testedP!367) (Cons!2022 (head!507 lt!37312) Nil!2022)) lt!37388)))

(assert (= (and d!29395 c!27384) b!123789))

(assert (= (and d!29395 (not c!27384)) b!123790))

(assert (= (and d!29395 res!57736) b!123791))

(assert (= (and b!123791 res!57735) b!123792))

(declare-fun m!109659 () Bool)

(assert (=> b!123791 m!109659))

(assert (=> b!123791 m!109452))

(assert (=> b!123791 m!109380))

(declare-fun m!109661 () Bool)

(assert (=> b!123790 m!109661))

(declare-fun m!109663 () Bool)

(assert (=> d!29395 m!109663))

(assert (=> d!29395 m!109492))

(assert (=> d!29395 m!109386))

(assert (=> b!123484 d!29395))

(declare-fun d!29397 () Bool)

(assert (=> d!29397 (= totalInput!1363 testedP!367)))

(assert (=> d!29397 true))

(declare-fun _$60!672 () Unit!1569)

(assert (=> d!29397 (= (choose!1609 totalInput!1363 testedP!367 totalInput!1363) _$60!672)))

(assert (=> d!29279 d!29397))

(assert (=> d!29279 d!29277))

(declare-fun b!123795 () Bool)

(declare-fun res!57737 () Bool)

(declare-fun e!71165 () Bool)

(assert (=> b!123795 (=> (not res!57737) (not e!71165))))

(declare-fun lt!37389 () List!2028)

(assert (=> b!123795 (= res!57737 (= (size!1886 lt!37389) (+ (size!1886 (t!22505 testedP!367)) (size!1886 testedSuffix!285))))))

(declare-fun b!123793 () Bool)

(declare-fun e!71166 () List!2028)

(assert (=> b!123793 (= e!71166 testedSuffix!285)))

(declare-fun b!123794 () Bool)

(assert (=> b!123794 (= e!71166 (Cons!2022 (h!7419 (t!22505 testedP!367)) (++!384 (t!22505 (t!22505 testedP!367)) testedSuffix!285)))))

(declare-fun b!123796 () Bool)

(assert (=> b!123796 (= e!71165 (or (not (= testedSuffix!285 Nil!2022)) (= lt!37389 (t!22505 testedP!367))))))

(declare-fun d!29399 () Bool)

(assert (=> d!29399 e!71165))

(declare-fun res!57738 () Bool)

(assert (=> d!29399 (=> (not res!57738) (not e!71165))))

(assert (=> d!29399 (= res!57738 (= (content!229 lt!37389) ((_ map or) (content!229 (t!22505 testedP!367)) (content!229 testedSuffix!285))))))

(assert (=> d!29399 (= lt!37389 e!71166)))

(declare-fun c!27385 () Bool)

(assert (=> d!29399 (= c!27385 ((_ is Nil!2022) (t!22505 testedP!367)))))

(assert (=> d!29399 (= (++!384 (t!22505 testedP!367) testedSuffix!285) lt!37389)))

(assert (= (and d!29399 c!27385) b!123793))

(assert (= (and d!29399 (not c!27385)) b!123794))

(assert (= (and d!29399 res!57738) b!123795))

(assert (= (and b!123795 res!57737) b!123796))

(declare-fun m!109665 () Bool)

(assert (=> b!123795 m!109665))

(assert (=> b!123795 m!109452))

(assert (=> b!123795 m!109438))

(declare-fun m!109667 () Bool)

(assert (=> b!123794 m!109667))

(declare-fun m!109669 () Bool)

(assert (=> d!29399 m!109669))

(assert (=> d!29399 m!109492))

(assert (=> d!29399 m!109444))

(assert (=> b!123565 d!29399))

(declare-fun c!27386 () Bool)

(declare-fun call!5338 () Bool)

(declare-fun c!27387 () Bool)

(declare-fun bm!5332 () Bool)

(assert (=> bm!5332 (= call!5338 (validRegex!153 (ite c!27387 (reg!888 (ite c!27319 (reg!888 (derivativeStep!65 r!15532 lt!37310)) (ite c!27318 (regTwo!1631 (derivativeStep!65 r!15532 lt!37310)) (regOne!1630 (derivativeStep!65 r!15532 lt!37310))))) (ite c!27386 (regTwo!1631 (ite c!27319 (reg!888 (derivativeStep!65 r!15532 lt!37310)) (ite c!27318 (regTwo!1631 (derivativeStep!65 r!15532 lt!37310)) (regOne!1630 (derivativeStep!65 r!15532 lt!37310))))) (regOne!1630 (ite c!27319 (reg!888 (derivativeStep!65 r!15532 lt!37310)) (ite c!27318 (regTwo!1631 (derivativeStep!65 r!15532 lt!37310)) (regOne!1630 (derivativeStep!65 r!15532 lt!37310)))))))))))

(declare-fun b!123797 () Bool)

(declare-fun e!71173 () Bool)

(declare-fun e!71170 () Bool)

(assert (=> b!123797 (= e!71173 e!71170)))

(assert (=> b!123797 (= c!27387 ((_ is Star!559) (ite c!27319 (reg!888 (derivativeStep!65 r!15532 lt!37310)) (ite c!27318 (regTwo!1631 (derivativeStep!65 r!15532 lt!37310)) (regOne!1630 (derivativeStep!65 r!15532 lt!37310))))))))

(declare-fun bm!5333 () Bool)

(declare-fun call!5337 () Bool)

(assert (=> bm!5333 (= call!5337 (validRegex!153 (ite c!27386 (regOne!1631 (ite c!27319 (reg!888 (derivativeStep!65 r!15532 lt!37310)) (ite c!27318 (regTwo!1631 (derivativeStep!65 r!15532 lt!37310)) (regOne!1630 (derivativeStep!65 r!15532 lt!37310))))) (regTwo!1630 (ite c!27319 (reg!888 (derivativeStep!65 r!15532 lt!37310)) (ite c!27318 (regTwo!1631 (derivativeStep!65 r!15532 lt!37310)) (regOne!1630 (derivativeStep!65 r!15532 lt!37310))))))))))

(declare-fun bm!5334 () Bool)

(declare-fun call!5339 () Bool)

(assert (=> bm!5334 (= call!5339 call!5338)))

(declare-fun b!123798 () Bool)

(declare-fun e!71168 () Bool)

(assert (=> b!123798 (= e!71168 call!5338)))

(declare-fun b!123799 () Bool)

(assert (=> b!123799 (= e!71170 e!71168)))

(declare-fun res!57739 () Bool)

(assert (=> b!123799 (= res!57739 (not (nullable!93 (reg!888 (ite c!27319 (reg!888 (derivativeStep!65 r!15532 lt!37310)) (ite c!27318 (regTwo!1631 (derivativeStep!65 r!15532 lt!37310)) (regOne!1630 (derivativeStep!65 r!15532 lt!37310))))))))))

(assert (=> b!123799 (=> (not res!57739) (not e!71168))))

(declare-fun b!123800 () Bool)

(declare-fun e!71172 () Bool)

(assert (=> b!123800 (= e!71170 e!71172)))

(assert (=> b!123800 (= c!27386 ((_ is Union!559) (ite c!27319 (reg!888 (derivativeStep!65 r!15532 lt!37310)) (ite c!27318 (regTwo!1631 (derivativeStep!65 r!15532 lt!37310)) (regOne!1630 (derivativeStep!65 r!15532 lt!37310))))))))

(declare-fun b!123801 () Bool)

(declare-fun e!71169 () Bool)

(assert (=> b!123801 (= e!71169 call!5339)))

(declare-fun b!123802 () Bool)

(declare-fun res!57742 () Bool)

(assert (=> b!123802 (=> (not res!57742) (not e!71169))))

(assert (=> b!123802 (= res!57742 call!5337)))

(assert (=> b!123802 (= e!71172 e!71169)))

(declare-fun b!123803 () Bool)

(declare-fun e!71167 () Bool)

(assert (=> b!123803 (= e!71167 call!5337)))

(declare-fun d!29401 () Bool)

(declare-fun res!57743 () Bool)

(assert (=> d!29401 (=> res!57743 e!71173)))

(assert (=> d!29401 (= res!57743 ((_ is ElementMatch!559) (ite c!27319 (reg!888 (derivativeStep!65 r!15532 lt!37310)) (ite c!27318 (regTwo!1631 (derivativeStep!65 r!15532 lt!37310)) (regOne!1630 (derivativeStep!65 r!15532 lt!37310))))))))

(assert (=> d!29401 (= (validRegex!153 (ite c!27319 (reg!888 (derivativeStep!65 r!15532 lt!37310)) (ite c!27318 (regTwo!1631 (derivativeStep!65 r!15532 lt!37310)) (regOne!1630 (derivativeStep!65 r!15532 lt!37310))))) e!71173)))

(declare-fun b!123804 () Bool)

(declare-fun res!57741 () Bool)

(declare-fun e!71171 () Bool)

(assert (=> b!123804 (=> res!57741 e!71171)))

(assert (=> b!123804 (= res!57741 (not ((_ is Concat!943) (ite c!27319 (reg!888 (derivativeStep!65 r!15532 lt!37310)) (ite c!27318 (regTwo!1631 (derivativeStep!65 r!15532 lt!37310)) (regOne!1630 (derivativeStep!65 r!15532 lt!37310)))))))))

(assert (=> b!123804 (= e!71172 e!71171)))

(declare-fun b!123805 () Bool)

(assert (=> b!123805 (= e!71171 e!71167)))

(declare-fun res!57740 () Bool)

(assert (=> b!123805 (=> (not res!57740) (not e!71167))))

(assert (=> b!123805 (= res!57740 call!5339)))

(assert (= (and d!29401 (not res!57743)) b!123797))

(assert (= (and b!123797 c!27387) b!123799))

(assert (= (and b!123797 (not c!27387)) b!123800))

(assert (= (and b!123799 res!57739) b!123798))

(assert (= (and b!123800 c!27386) b!123802))

(assert (= (and b!123800 (not c!27386)) b!123804))

(assert (= (and b!123802 res!57742) b!123801))

(assert (= (and b!123804 (not res!57741)) b!123805))

(assert (= (and b!123805 res!57740) b!123803))

(assert (= (or b!123801 b!123805) bm!5334))

(assert (= (or b!123802 b!123803) bm!5333))

(assert (= (or b!123798 bm!5334) bm!5332))

(declare-fun m!109671 () Bool)

(assert (=> bm!5332 m!109671))

(declare-fun m!109673 () Bool)

(assert (=> bm!5333 m!109673))

(declare-fun m!109675 () Bool)

(assert (=> b!123799 m!109675))

(assert (=> bm!5297 d!29401))

(declare-fun d!29403 () Bool)

(declare-fun e!71174 () Bool)

(assert (=> d!29403 e!71174))

(declare-fun res!57746 () Bool)

(assert (=> d!29403 (=> res!57746 e!71174)))

(declare-fun lt!37390 () Bool)

(assert (=> d!29403 (= res!57746 (not lt!37390))))

(declare-fun e!71176 () Bool)

(assert (=> d!29403 (= lt!37390 e!71176)))

(declare-fun res!57747 () Bool)

(assert (=> d!29403 (=> res!57747 e!71176)))

(assert (=> d!29403 (= res!57747 ((_ is Nil!2022) testedP!367))))

(assert (=> d!29403 (= (isPrefix!134 testedP!367 (++!384 testedP!367 testedSuffix!285)) lt!37390)))

(declare-fun b!123808 () Bool)

(declare-fun e!71175 () Bool)

(assert (=> b!123808 (= e!71175 (isPrefix!134 (tail!243 testedP!367) (tail!243 (++!384 testedP!367 testedSuffix!285))))))

(declare-fun b!123806 () Bool)

(assert (=> b!123806 (= e!71176 e!71175)))

(declare-fun res!57745 () Bool)

(assert (=> b!123806 (=> (not res!57745) (not e!71175))))

(assert (=> b!123806 (= res!57745 (not ((_ is Nil!2022) (++!384 testedP!367 testedSuffix!285))))))

(declare-fun b!123807 () Bool)

(declare-fun res!57744 () Bool)

(assert (=> b!123807 (=> (not res!57744) (not e!71175))))

(assert (=> b!123807 (= res!57744 (= (head!507 testedP!367) (head!507 (++!384 testedP!367 testedSuffix!285))))))

(declare-fun b!123809 () Bool)

(assert (=> b!123809 (= e!71174 (>= (size!1886 (++!384 testedP!367 testedSuffix!285)) (size!1886 testedP!367)))))

(assert (= (and d!29403 (not res!57747)) b!123806))

(assert (= (and b!123806 res!57745) b!123807))

(assert (= (and b!123807 res!57744) b!123808))

(assert (= (and d!29403 (not res!57746)) b!123809))

(assert (=> b!123808 m!109322))

(assert (=> b!123808 m!109298))

(declare-fun m!109677 () Bool)

(assert (=> b!123808 m!109677))

(assert (=> b!123808 m!109322))

(assert (=> b!123808 m!109677))

(declare-fun m!109679 () Bool)

(assert (=> b!123808 m!109679))

(assert (=> b!123807 m!109328))

(assert (=> b!123807 m!109298))

(declare-fun m!109681 () Bool)

(assert (=> b!123807 m!109681))

(assert (=> b!123809 m!109298))

(declare-fun m!109683 () Bool)

(assert (=> b!123809 m!109683))

(assert (=> b!123809 m!109318))

(assert (=> d!29227 d!29403))

(assert (=> d!29227 d!29273))

(declare-fun d!29405 () Bool)

(assert (=> d!29405 (isPrefix!134 testedP!367 (++!384 testedP!367 testedSuffix!285))))

(assert (=> d!29405 true))

(declare-fun _$46!725 () Unit!1569)

(assert (=> d!29405 (= (choose!1603 testedP!367 testedSuffix!285) _$46!725)))

(declare-fun bs!12032 () Bool)

(assert (= bs!12032 d!29405))

(assert (=> bs!12032 m!109298))

(assert (=> bs!12032 m!109298))

(assert (=> bs!12032 m!109340))

(assert (=> d!29227 d!29405))

(declare-fun call!5341 () Bool)

(declare-fun bm!5335 () Bool)

(declare-fun c!27389 () Bool)

(declare-fun c!27388 () Bool)

(assert (=> bm!5335 (= call!5341 (validRegex!153 (ite c!27389 (reg!888 (ite c!27318 (regOne!1631 (derivativeStep!65 r!15532 lt!37310)) (regTwo!1630 (derivativeStep!65 r!15532 lt!37310)))) (ite c!27388 (regTwo!1631 (ite c!27318 (regOne!1631 (derivativeStep!65 r!15532 lt!37310)) (regTwo!1630 (derivativeStep!65 r!15532 lt!37310)))) (regOne!1630 (ite c!27318 (regOne!1631 (derivativeStep!65 r!15532 lt!37310)) (regTwo!1630 (derivativeStep!65 r!15532 lt!37310))))))))))

(declare-fun b!123810 () Bool)

(declare-fun e!71183 () Bool)

(declare-fun e!71180 () Bool)

(assert (=> b!123810 (= e!71183 e!71180)))

(assert (=> b!123810 (= c!27389 ((_ is Star!559) (ite c!27318 (regOne!1631 (derivativeStep!65 r!15532 lt!37310)) (regTwo!1630 (derivativeStep!65 r!15532 lt!37310)))))))

(declare-fun bm!5336 () Bool)

(declare-fun call!5340 () Bool)

(assert (=> bm!5336 (= call!5340 (validRegex!153 (ite c!27388 (regOne!1631 (ite c!27318 (regOne!1631 (derivativeStep!65 r!15532 lt!37310)) (regTwo!1630 (derivativeStep!65 r!15532 lt!37310)))) (regTwo!1630 (ite c!27318 (regOne!1631 (derivativeStep!65 r!15532 lt!37310)) (regTwo!1630 (derivativeStep!65 r!15532 lt!37310)))))))))

(declare-fun bm!5337 () Bool)

(declare-fun call!5342 () Bool)

(assert (=> bm!5337 (= call!5342 call!5341)))

(declare-fun b!123811 () Bool)

(declare-fun e!71178 () Bool)

(assert (=> b!123811 (= e!71178 call!5341)))

(declare-fun b!123812 () Bool)

(assert (=> b!123812 (= e!71180 e!71178)))

(declare-fun res!57748 () Bool)

(assert (=> b!123812 (= res!57748 (not (nullable!93 (reg!888 (ite c!27318 (regOne!1631 (derivativeStep!65 r!15532 lt!37310)) (regTwo!1630 (derivativeStep!65 r!15532 lt!37310)))))))))

(assert (=> b!123812 (=> (not res!57748) (not e!71178))))

(declare-fun b!123813 () Bool)

(declare-fun e!71182 () Bool)

(assert (=> b!123813 (= e!71180 e!71182)))

(assert (=> b!123813 (= c!27388 ((_ is Union!559) (ite c!27318 (regOne!1631 (derivativeStep!65 r!15532 lt!37310)) (regTwo!1630 (derivativeStep!65 r!15532 lt!37310)))))))

(declare-fun b!123814 () Bool)

(declare-fun e!71179 () Bool)

(assert (=> b!123814 (= e!71179 call!5342)))

(declare-fun b!123815 () Bool)

(declare-fun res!57751 () Bool)

(assert (=> b!123815 (=> (not res!57751) (not e!71179))))

(assert (=> b!123815 (= res!57751 call!5340)))

(assert (=> b!123815 (= e!71182 e!71179)))

(declare-fun b!123816 () Bool)

(declare-fun e!71177 () Bool)

(assert (=> b!123816 (= e!71177 call!5340)))

(declare-fun d!29407 () Bool)

(declare-fun res!57752 () Bool)

(assert (=> d!29407 (=> res!57752 e!71183)))

(assert (=> d!29407 (= res!57752 ((_ is ElementMatch!559) (ite c!27318 (regOne!1631 (derivativeStep!65 r!15532 lt!37310)) (regTwo!1630 (derivativeStep!65 r!15532 lt!37310)))))))

(assert (=> d!29407 (= (validRegex!153 (ite c!27318 (regOne!1631 (derivativeStep!65 r!15532 lt!37310)) (regTwo!1630 (derivativeStep!65 r!15532 lt!37310)))) e!71183)))

(declare-fun b!123817 () Bool)

(declare-fun res!57750 () Bool)

(declare-fun e!71181 () Bool)

(assert (=> b!123817 (=> res!57750 e!71181)))

(assert (=> b!123817 (= res!57750 (not ((_ is Concat!943) (ite c!27318 (regOne!1631 (derivativeStep!65 r!15532 lt!37310)) (regTwo!1630 (derivativeStep!65 r!15532 lt!37310))))))))

(assert (=> b!123817 (= e!71182 e!71181)))

(declare-fun b!123818 () Bool)

(assert (=> b!123818 (= e!71181 e!71177)))

(declare-fun res!57749 () Bool)

(assert (=> b!123818 (=> (not res!57749) (not e!71177))))

(assert (=> b!123818 (= res!57749 call!5342)))

(assert (= (and d!29407 (not res!57752)) b!123810))

(assert (= (and b!123810 c!27389) b!123812))

(assert (= (and b!123810 (not c!27389)) b!123813))

(assert (= (and b!123812 res!57748) b!123811))

(assert (= (and b!123813 c!27388) b!123815))

(assert (= (and b!123813 (not c!27388)) b!123817))

(assert (= (and b!123815 res!57751) b!123814))

(assert (= (and b!123817 (not res!57750)) b!123818))

(assert (= (and b!123818 res!57749) b!123816))

(assert (= (or b!123814 b!123818) bm!5337))

(assert (= (or b!123815 b!123816) bm!5336))

(assert (= (or b!123811 bm!5337) bm!5335))

(declare-fun m!109685 () Bool)

(assert (=> bm!5335 m!109685))

(declare-fun m!109687 () Bool)

(assert (=> bm!5336 m!109687))

(declare-fun m!109689 () Bool)

(assert (=> b!123812 m!109689))

(assert (=> bm!5298 d!29407))

(assert (=> b!123571 d!29221))

(declare-fun b!123821 () Bool)

(declare-fun res!57753 () Bool)

(declare-fun e!71184 () Bool)

(assert (=> b!123821 (=> (not res!57753) (not e!71184))))

(declare-fun lt!37391 () List!2028)

(assert (=> b!123821 (= res!57753 (= (size!1886 lt!37391) (+ (size!1886 (t!22505 testedP!367)) (size!1886 (Cons!2022 lt!37310 Nil!2022)))))))

(declare-fun b!123819 () Bool)

(declare-fun e!71185 () List!2028)

(assert (=> b!123819 (= e!71185 (Cons!2022 lt!37310 Nil!2022))))

(declare-fun b!123820 () Bool)

(assert (=> b!123820 (= e!71185 (Cons!2022 (h!7419 (t!22505 testedP!367)) (++!384 (t!22505 (t!22505 testedP!367)) (Cons!2022 lt!37310 Nil!2022))))))

(declare-fun b!123822 () Bool)

(assert (=> b!123822 (= e!71184 (or (not (= (Cons!2022 lt!37310 Nil!2022) Nil!2022)) (= lt!37391 (t!22505 testedP!367))))))

(declare-fun d!29409 () Bool)

(assert (=> d!29409 e!71184))

(declare-fun res!57754 () Bool)

(assert (=> d!29409 (=> (not res!57754) (not e!71184))))

(assert (=> d!29409 (= res!57754 (= (content!229 lt!37391) ((_ map or) (content!229 (t!22505 testedP!367)) (content!229 (Cons!2022 lt!37310 Nil!2022)))))))

(assert (=> d!29409 (= lt!37391 e!71185)))

(declare-fun c!27390 () Bool)

(assert (=> d!29409 (= c!27390 ((_ is Nil!2022) (t!22505 testedP!367)))))

(assert (=> d!29409 (= (++!384 (t!22505 testedP!367) (Cons!2022 lt!37310 Nil!2022)) lt!37391)))

(assert (= (and d!29409 c!27390) b!123819))

(assert (= (and d!29409 (not c!27390)) b!123820))

(assert (= (and d!29409 res!57754) b!123821))

(assert (= (and b!123821 res!57753) b!123822))

(declare-fun m!109691 () Bool)

(assert (=> b!123821 m!109691))

(assert (=> b!123821 m!109452))

(assert (=> b!123821 m!109358))

(declare-fun m!109693 () Bool)

(assert (=> b!123820 m!109693))

(declare-fun m!109695 () Bool)

(assert (=> d!29409 m!109695))

(assert (=> d!29409 m!109492))

(assert (=> d!29409 m!109366))

(assert (=> b!123480 d!29409))

(declare-fun bm!5338 () Bool)

(declare-fun call!5344 () Bool)

(declare-fun c!27391 () Bool)

(declare-fun c!27392 () Bool)

(assert (=> bm!5338 (= call!5344 (validRegex!153 (ite c!27392 (reg!888 (ite c!27317 (reg!888 r!15532) (ite c!27316 (regTwo!1631 r!15532) (regOne!1630 r!15532)))) (ite c!27391 (regTwo!1631 (ite c!27317 (reg!888 r!15532) (ite c!27316 (regTwo!1631 r!15532) (regOne!1630 r!15532)))) (regOne!1630 (ite c!27317 (reg!888 r!15532) (ite c!27316 (regTwo!1631 r!15532) (regOne!1630 r!15532))))))))))

(declare-fun b!123823 () Bool)

(declare-fun e!71192 () Bool)

(declare-fun e!71189 () Bool)

(assert (=> b!123823 (= e!71192 e!71189)))

(assert (=> b!123823 (= c!27392 ((_ is Star!559) (ite c!27317 (reg!888 r!15532) (ite c!27316 (regTwo!1631 r!15532) (regOne!1630 r!15532)))))))

(declare-fun bm!5339 () Bool)

(declare-fun call!5343 () Bool)

(assert (=> bm!5339 (= call!5343 (validRegex!153 (ite c!27391 (regOne!1631 (ite c!27317 (reg!888 r!15532) (ite c!27316 (regTwo!1631 r!15532) (regOne!1630 r!15532)))) (regTwo!1630 (ite c!27317 (reg!888 r!15532) (ite c!27316 (regTwo!1631 r!15532) (regOne!1630 r!15532)))))))))

(declare-fun bm!5340 () Bool)

(declare-fun call!5345 () Bool)

(assert (=> bm!5340 (= call!5345 call!5344)))

(declare-fun b!123824 () Bool)

(declare-fun e!71187 () Bool)

(assert (=> b!123824 (= e!71187 call!5344)))

(declare-fun b!123825 () Bool)

(assert (=> b!123825 (= e!71189 e!71187)))

(declare-fun res!57755 () Bool)

(assert (=> b!123825 (= res!57755 (not (nullable!93 (reg!888 (ite c!27317 (reg!888 r!15532) (ite c!27316 (regTwo!1631 r!15532) (regOne!1630 r!15532)))))))))

(assert (=> b!123825 (=> (not res!57755) (not e!71187))))

(declare-fun b!123826 () Bool)

(declare-fun e!71191 () Bool)

(assert (=> b!123826 (= e!71189 e!71191)))

(assert (=> b!123826 (= c!27391 ((_ is Union!559) (ite c!27317 (reg!888 r!15532) (ite c!27316 (regTwo!1631 r!15532) (regOne!1630 r!15532)))))))

(declare-fun b!123827 () Bool)

(declare-fun e!71188 () Bool)

(assert (=> b!123827 (= e!71188 call!5345)))

(declare-fun b!123828 () Bool)

(declare-fun res!57758 () Bool)

(assert (=> b!123828 (=> (not res!57758) (not e!71188))))

(assert (=> b!123828 (= res!57758 call!5343)))

(assert (=> b!123828 (= e!71191 e!71188)))

(declare-fun b!123829 () Bool)

(declare-fun e!71186 () Bool)

(assert (=> b!123829 (= e!71186 call!5343)))

(declare-fun d!29411 () Bool)

(declare-fun res!57759 () Bool)

(assert (=> d!29411 (=> res!57759 e!71192)))

(assert (=> d!29411 (= res!57759 ((_ is ElementMatch!559) (ite c!27317 (reg!888 r!15532) (ite c!27316 (regTwo!1631 r!15532) (regOne!1630 r!15532)))))))

(assert (=> d!29411 (= (validRegex!153 (ite c!27317 (reg!888 r!15532) (ite c!27316 (regTwo!1631 r!15532) (regOne!1630 r!15532)))) e!71192)))

(declare-fun b!123830 () Bool)

(declare-fun res!57757 () Bool)

(declare-fun e!71190 () Bool)

(assert (=> b!123830 (=> res!57757 e!71190)))

(assert (=> b!123830 (= res!57757 (not ((_ is Concat!943) (ite c!27317 (reg!888 r!15532) (ite c!27316 (regTwo!1631 r!15532) (regOne!1630 r!15532))))))))

(assert (=> b!123830 (= e!71191 e!71190)))

(declare-fun b!123831 () Bool)

(assert (=> b!123831 (= e!71190 e!71186)))

(declare-fun res!57756 () Bool)

(assert (=> b!123831 (=> (not res!57756) (not e!71186))))

(assert (=> b!123831 (= res!57756 call!5345)))

(assert (= (and d!29411 (not res!57759)) b!123823))

(assert (= (and b!123823 c!27392) b!123825))

(assert (= (and b!123823 (not c!27392)) b!123826))

(assert (= (and b!123825 res!57755) b!123824))

(assert (= (and b!123826 c!27391) b!123828))

(assert (= (and b!123826 (not c!27391)) b!123830))

(assert (= (and b!123828 res!57758) b!123827))

(assert (= (and b!123830 (not res!57757)) b!123831))

(assert (= (and b!123831 res!57756) b!123829))

(assert (= (or b!123827 b!123831) bm!5340))

(assert (= (or b!123828 b!123829) bm!5339))

(assert (= (or b!123824 bm!5340) bm!5338))

(declare-fun m!109697 () Bool)

(assert (=> bm!5338 m!109697))

(declare-fun m!109699 () Bool)

(assert (=> bm!5339 m!109699))

(declare-fun m!109701 () Bool)

(assert (=> b!123825 m!109701))

(assert (=> bm!5294 d!29411))

(declare-fun call!5347 () Bool)

(declare-fun c!27394 () Bool)

(declare-fun bm!5341 () Bool)

(declare-fun c!27393 () Bool)

(assert (=> bm!5341 (= call!5347 (validRegex!153 (ite c!27394 (reg!888 (ite c!27316 (regOne!1631 r!15532) (regTwo!1630 r!15532))) (ite c!27393 (regTwo!1631 (ite c!27316 (regOne!1631 r!15532) (regTwo!1630 r!15532))) (regOne!1630 (ite c!27316 (regOne!1631 r!15532) (regTwo!1630 r!15532)))))))))

(declare-fun b!123832 () Bool)

(declare-fun e!71199 () Bool)

(declare-fun e!71196 () Bool)

(assert (=> b!123832 (= e!71199 e!71196)))

(assert (=> b!123832 (= c!27394 ((_ is Star!559) (ite c!27316 (regOne!1631 r!15532) (regTwo!1630 r!15532))))))

(declare-fun bm!5342 () Bool)

(declare-fun call!5346 () Bool)

(assert (=> bm!5342 (= call!5346 (validRegex!153 (ite c!27393 (regOne!1631 (ite c!27316 (regOne!1631 r!15532) (regTwo!1630 r!15532))) (regTwo!1630 (ite c!27316 (regOne!1631 r!15532) (regTwo!1630 r!15532))))))))

(declare-fun bm!5343 () Bool)

(declare-fun call!5348 () Bool)

(assert (=> bm!5343 (= call!5348 call!5347)))

(declare-fun b!123833 () Bool)

(declare-fun e!71194 () Bool)

(assert (=> b!123833 (= e!71194 call!5347)))

(declare-fun b!123834 () Bool)

(assert (=> b!123834 (= e!71196 e!71194)))

(declare-fun res!57760 () Bool)

(assert (=> b!123834 (= res!57760 (not (nullable!93 (reg!888 (ite c!27316 (regOne!1631 r!15532) (regTwo!1630 r!15532))))))))

(assert (=> b!123834 (=> (not res!57760) (not e!71194))))

(declare-fun b!123835 () Bool)

(declare-fun e!71198 () Bool)

(assert (=> b!123835 (= e!71196 e!71198)))

(assert (=> b!123835 (= c!27393 ((_ is Union!559) (ite c!27316 (regOne!1631 r!15532) (regTwo!1630 r!15532))))))

(declare-fun b!123836 () Bool)

(declare-fun e!71195 () Bool)

(assert (=> b!123836 (= e!71195 call!5348)))

(declare-fun b!123837 () Bool)

(declare-fun res!57763 () Bool)

(assert (=> b!123837 (=> (not res!57763) (not e!71195))))

(assert (=> b!123837 (= res!57763 call!5346)))

(assert (=> b!123837 (= e!71198 e!71195)))

(declare-fun b!123838 () Bool)

(declare-fun e!71193 () Bool)

(assert (=> b!123838 (= e!71193 call!5346)))

(declare-fun d!29413 () Bool)

(declare-fun res!57764 () Bool)

(assert (=> d!29413 (=> res!57764 e!71199)))

(assert (=> d!29413 (= res!57764 ((_ is ElementMatch!559) (ite c!27316 (regOne!1631 r!15532) (regTwo!1630 r!15532))))))

(assert (=> d!29413 (= (validRegex!153 (ite c!27316 (regOne!1631 r!15532) (regTwo!1630 r!15532))) e!71199)))

(declare-fun b!123839 () Bool)

(declare-fun res!57762 () Bool)

(declare-fun e!71197 () Bool)

(assert (=> b!123839 (=> res!57762 e!71197)))

(assert (=> b!123839 (= res!57762 (not ((_ is Concat!943) (ite c!27316 (regOne!1631 r!15532) (regTwo!1630 r!15532)))))))

(assert (=> b!123839 (= e!71198 e!71197)))

(declare-fun b!123840 () Bool)

(assert (=> b!123840 (= e!71197 e!71193)))

(declare-fun res!57761 () Bool)

(assert (=> b!123840 (=> (not res!57761) (not e!71193))))

(assert (=> b!123840 (= res!57761 call!5348)))

(assert (= (and d!29413 (not res!57764)) b!123832))

(assert (= (and b!123832 c!27394) b!123834))

(assert (= (and b!123832 (not c!27394)) b!123835))

(assert (= (and b!123834 res!57760) b!123833))

(assert (= (and b!123835 c!27393) b!123837))

(assert (= (and b!123835 (not c!27393)) b!123839))

(assert (= (and b!123837 res!57763) b!123836))

(assert (= (and b!123839 (not res!57762)) b!123840))

(assert (= (and b!123840 res!57761) b!123838))

(assert (= (or b!123836 b!123840) bm!5343))

(assert (= (or b!123837 b!123838) bm!5342))

(assert (= (or b!123833 bm!5343) bm!5341))

(declare-fun m!109703 () Bool)

(assert (=> bm!5341 m!109703))

(declare-fun m!109705 () Bool)

(assert (=> bm!5342 m!109705))

(declare-fun m!109707 () Bool)

(assert (=> b!123834 m!109707))

(assert (=> bm!5295 d!29413))

(declare-fun c!27396 () Bool)

(declare-fun call!5350 () Bool)

(declare-fun bm!5344 () Bool)

(declare-fun c!27395 () Bool)

(assert (=> bm!5344 (= call!5350 (validRegex!153 (ite c!27396 (reg!888 lt!37349) (ite c!27395 (regTwo!1631 lt!37349) (regOne!1630 lt!37349)))))))

(declare-fun b!123841 () Bool)

(declare-fun e!71206 () Bool)

(declare-fun e!71203 () Bool)

(assert (=> b!123841 (= e!71206 e!71203)))

(assert (=> b!123841 (= c!27396 ((_ is Star!559) lt!37349))))

(declare-fun bm!5345 () Bool)

(declare-fun call!5349 () Bool)

(assert (=> bm!5345 (= call!5349 (validRegex!153 (ite c!27395 (regOne!1631 lt!37349) (regTwo!1630 lt!37349))))))

(declare-fun bm!5346 () Bool)

(declare-fun call!5351 () Bool)

(assert (=> bm!5346 (= call!5351 call!5350)))

(declare-fun b!123842 () Bool)

(declare-fun e!71201 () Bool)

(assert (=> b!123842 (= e!71201 call!5350)))

(declare-fun b!123843 () Bool)

(assert (=> b!123843 (= e!71203 e!71201)))

(declare-fun res!57765 () Bool)

(assert (=> b!123843 (= res!57765 (not (nullable!93 (reg!888 lt!37349))))))

(assert (=> b!123843 (=> (not res!57765) (not e!71201))))

(declare-fun b!123844 () Bool)

(declare-fun e!71205 () Bool)

(assert (=> b!123844 (= e!71203 e!71205)))

(assert (=> b!123844 (= c!27395 ((_ is Union!559) lt!37349))))

(declare-fun b!123845 () Bool)

(declare-fun e!71202 () Bool)

(assert (=> b!123845 (= e!71202 call!5351)))

(declare-fun b!123846 () Bool)

(declare-fun res!57768 () Bool)

(assert (=> b!123846 (=> (not res!57768) (not e!71202))))

(assert (=> b!123846 (= res!57768 call!5349)))

(assert (=> b!123846 (= e!71205 e!71202)))

(declare-fun b!123847 () Bool)

(declare-fun e!71200 () Bool)

(assert (=> b!123847 (= e!71200 call!5349)))

(declare-fun d!29415 () Bool)

(declare-fun res!57769 () Bool)

(assert (=> d!29415 (=> res!57769 e!71206)))

(assert (=> d!29415 (= res!57769 ((_ is ElementMatch!559) lt!37349))))

(assert (=> d!29415 (= (validRegex!153 lt!37349) e!71206)))

(declare-fun b!123848 () Bool)

(declare-fun res!57767 () Bool)

(declare-fun e!71204 () Bool)

(assert (=> b!123848 (=> res!57767 e!71204)))

(assert (=> b!123848 (= res!57767 (not ((_ is Concat!943) lt!37349)))))

(assert (=> b!123848 (= e!71205 e!71204)))

(declare-fun b!123849 () Bool)

(assert (=> b!123849 (= e!71204 e!71200)))

(declare-fun res!57766 () Bool)

(assert (=> b!123849 (=> (not res!57766) (not e!71200))))

(assert (=> b!123849 (= res!57766 call!5351)))

(assert (= (and d!29415 (not res!57769)) b!123841))

(assert (= (and b!123841 c!27396) b!123843))

(assert (= (and b!123841 (not c!27396)) b!123844))

(assert (= (and b!123843 res!57765) b!123842))

(assert (= (and b!123844 c!27395) b!123846))

(assert (= (and b!123844 (not c!27395)) b!123848))

(assert (= (and b!123846 res!57768) b!123845))

(assert (= (and b!123848 (not res!57767)) b!123849))

(assert (= (and b!123849 res!57766) b!123847))

(assert (= (or b!123845 b!123849) bm!5346))

(assert (= (or b!123846 b!123847) bm!5345))

(assert (= (or b!123842 bm!5346) bm!5344))

(declare-fun m!109709 () Bool)

(assert (=> bm!5344 m!109709))

(declare-fun m!109711 () Bool)

(assert (=> bm!5345 m!109711))

(declare-fun m!109713 () Bool)

(assert (=> b!123843 m!109713))

(assert (=> d!29271 d!29415))

(assert (=> d!29271 d!29259))

(declare-fun e!71207 () Bool)

(assert (=> b!123586 (= tp!67689 e!71207)))

(declare-fun b!123850 () Bool)

(assert (=> b!123850 (= e!71207 tp_is_empty!1173)))

(declare-fun b!123853 () Bool)

(declare-fun tp!67759 () Bool)

(declare-fun tp!67760 () Bool)

(assert (=> b!123853 (= e!71207 (and tp!67759 tp!67760))))

(declare-fun b!123852 () Bool)

(declare-fun tp!67758 () Bool)

(assert (=> b!123852 (= e!71207 tp!67758)))

(declare-fun b!123851 () Bool)

(declare-fun tp!67762 () Bool)

(declare-fun tp!67761 () Bool)

(assert (=> b!123851 (= e!71207 (and tp!67762 tp!67761))))

(assert (= (and b!123586 ((_ is ElementMatch!559) (reg!888 (regOne!1631 r!15532)))) b!123850))

(assert (= (and b!123586 ((_ is Concat!943) (reg!888 (regOne!1631 r!15532)))) b!123851))

(assert (= (and b!123586 ((_ is Star!559) (reg!888 (regOne!1631 r!15532)))) b!123852))

(assert (= (and b!123586 ((_ is Union!559) (reg!888 (regOne!1631 r!15532)))) b!123853))

(declare-fun e!71208 () Bool)

(assert (=> b!123623 (= tp!67748 e!71208)))

(declare-fun b!123854 () Bool)

(assert (=> b!123854 (= e!71208 tp_is_empty!1173)))

(declare-fun b!123857 () Bool)

(declare-fun tp!67764 () Bool)

(declare-fun tp!67765 () Bool)

(assert (=> b!123857 (= e!71208 (and tp!67764 tp!67765))))

(declare-fun b!123856 () Bool)

(declare-fun tp!67763 () Bool)

(assert (=> b!123856 (= e!71208 tp!67763)))

(declare-fun b!123855 () Bool)

(declare-fun tp!67767 () Bool)

(declare-fun tp!67766 () Bool)

(assert (=> b!123855 (= e!71208 (and tp!67767 tp!67766))))

(assert (= (and b!123623 ((_ is ElementMatch!559) (_1!1399 (_1!1400 (h!7420 mapDefault!1644))))) b!123854))

(assert (= (and b!123623 ((_ is Concat!943) (_1!1399 (_1!1400 (h!7420 mapDefault!1644))))) b!123855))

(assert (= (and b!123623 ((_ is Star!559) (_1!1399 (_1!1400 (h!7420 mapDefault!1644))))) b!123856))

(assert (= (and b!123623 ((_ is Union!559) (_1!1399 (_1!1400 (h!7420 mapDefault!1644))))) b!123857))

(declare-fun e!71209 () Bool)

(assert (=> b!123623 (= tp!67749 e!71209)))

(declare-fun b!123858 () Bool)

(assert (=> b!123858 (= e!71209 tp_is_empty!1173)))

(declare-fun b!123861 () Bool)

(declare-fun tp!67769 () Bool)

(declare-fun tp!67770 () Bool)

(assert (=> b!123861 (= e!71209 (and tp!67769 tp!67770))))

(declare-fun b!123860 () Bool)

(declare-fun tp!67768 () Bool)

(assert (=> b!123860 (= e!71209 tp!67768)))

(declare-fun b!123859 () Bool)

(declare-fun tp!67772 () Bool)

(declare-fun tp!67771 () Bool)

(assert (=> b!123859 (= e!71209 (and tp!67772 tp!67771))))

(assert (= (and b!123623 ((_ is ElementMatch!559) (_2!1400 (h!7420 mapDefault!1644)))) b!123858))

(assert (= (and b!123623 ((_ is Concat!943) (_2!1400 (h!7420 mapDefault!1644)))) b!123859))

(assert (= (and b!123623 ((_ is Star!559) (_2!1400 (h!7420 mapDefault!1644)))) b!123860))

(assert (= (and b!123623 ((_ is Union!559) (_2!1400 (h!7420 mapDefault!1644)))) b!123861))

(declare-fun tp!67773 () Bool)

(declare-fun b!123862 () Bool)

(declare-fun e!71210 () Bool)

(declare-fun tp!67775 () Bool)

(declare-fun tp!67774 () Bool)

(assert (=> b!123862 (= e!71210 (and tp!67773 tp_is_empty!1173 tp!67774 tp!67775))))

(assert (=> b!123623 (= tp!67750 e!71210)))

(assert (= (and b!123623 ((_ is Cons!2023) (t!22506 mapDefault!1644))) b!123862))

(declare-fun e!71211 () Bool)

(assert (=> b!123585 (= tp!67693 e!71211)))

(declare-fun b!123863 () Bool)

(assert (=> b!123863 (= e!71211 tp_is_empty!1173)))

(declare-fun b!123866 () Bool)

(declare-fun tp!67777 () Bool)

(declare-fun tp!67778 () Bool)

(assert (=> b!123866 (= e!71211 (and tp!67777 tp!67778))))

(declare-fun b!123865 () Bool)

(declare-fun tp!67776 () Bool)

(assert (=> b!123865 (= e!71211 tp!67776)))

(declare-fun b!123864 () Bool)

(declare-fun tp!67780 () Bool)

(declare-fun tp!67779 () Bool)

(assert (=> b!123864 (= e!71211 (and tp!67780 tp!67779))))

(assert (= (and b!123585 ((_ is ElementMatch!559) (regOne!1630 (regOne!1631 r!15532)))) b!123863))

(assert (= (and b!123585 ((_ is Concat!943) (regOne!1630 (regOne!1631 r!15532)))) b!123864))

(assert (= (and b!123585 ((_ is Star!559) (regOne!1630 (regOne!1631 r!15532)))) b!123865))

(assert (= (and b!123585 ((_ is Union!559) (regOne!1630 (regOne!1631 r!15532)))) b!123866))

(declare-fun e!71212 () Bool)

(assert (=> b!123585 (= tp!67692 e!71212)))

(declare-fun b!123867 () Bool)

(assert (=> b!123867 (= e!71212 tp_is_empty!1173)))

(declare-fun b!123870 () Bool)

(declare-fun tp!67782 () Bool)

(declare-fun tp!67783 () Bool)

(assert (=> b!123870 (= e!71212 (and tp!67782 tp!67783))))

(declare-fun b!123869 () Bool)

(declare-fun tp!67781 () Bool)

(assert (=> b!123869 (= e!71212 tp!67781)))

(declare-fun b!123868 () Bool)

(declare-fun tp!67785 () Bool)

(declare-fun tp!67784 () Bool)

(assert (=> b!123868 (= e!71212 (and tp!67785 tp!67784))))

(assert (= (and b!123585 ((_ is ElementMatch!559) (regTwo!1630 (regOne!1631 r!15532)))) b!123867))

(assert (= (and b!123585 ((_ is Concat!943) (regTwo!1630 (regOne!1631 r!15532)))) b!123868))

(assert (= (and b!123585 ((_ is Star!559) (regTwo!1630 (regOne!1631 r!15532)))) b!123869))

(assert (= (and b!123585 ((_ is Union!559) (regTwo!1630 (regOne!1631 r!15532)))) b!123870))

(declare-fun e!71213 () Bool)

(assert (=> b!123603 (= tp!67720 e!71213)))

(declare-fun b!123871 () Bool)

(assert (=> b!123871 (= e!71213 tp_is_empty!1173)))

(declare-fun b!123874 () Bool)

(declare-fun tp!67787 () Bool)

(declare-fun tp!67788 () Bool)

(assert (=> b!123874 (= e!71213 (and tp!67787 tp!67788))))

(declare-fun b!123873 () Bool)

(declare-fun tp!67786 () Bool)

(assert (=> b!123873 (= e!71213 tp!67786)))

(declare-fun b!123872 () Bool)

(declare-fun tp!67790 () Bool)

(declare-fun tp!67789 () Bool)

(assert (=> b!123872 (= e!71213 (and tp!67790 tp!67789))))

(assert (= (and b!123603 ((_ is ElementMatch!559) (_1!1399 (_1!1400 (h!7420 mapValue!1647))))) b!123871))

(assert (= (and b!123603 ((_ is Concat!943) (_1!1399 (_1!1400 (h!7420 mapValue!1647))))) b!123872))

(assert (= (and b!123603 ((_ is Star!559) (_1!1399 (_1!1400 (h!7420 mapValue!1647))))) b!123873))

(assert (= (and b!123603 ((_ is Union!559) (_1!1399 (_1!1400 (h!7420 mapValue!1647))))) b!123874))

(declare-fun e!71214 () Bool)

(assert (=> b!123603 (= tp!67717 e!71214)))

(declare-fun b!123875 () Bool)

(assert (=> b!123875 (= e!71214 tp_is_empty!1173)))

(declare-fun b!123878 () Bool)

(declare-fun tp!67792 () Bool)

(declare-fun tp!67793 () Bool)

(assert (=> b!123878 (= e!71214 (and tp!67792 tp!67793))))

(declare-fun b!123877 () Bool)

(declare-fun tp!67791 () Bool)

(assert (=> b!123877 (= e!71214 tp!67791)))

(declare-fun b!123876 () Bool)

(declare-fun tp!67795 () Bool)

(declare-fun tp!67794 () Bool)

(assert (=> b!123876 (= e!71214 (and tp!67795 tp!67794))))

(assert (= (and b!123603 ((_ is ElementMatch!559) (_2!1400 (h!7420 mapValue!1647)))) b!123875))

(assert (= (and b!123603 ((_ is Concat!943) (_2!1400 (h!7420 mapValue!1647)))) b!123876))

(assert (= (and b!123603 ((_ is Star!559) (_2!1400 (h!7420 mapValue!1647)))) b!123877))

(assert (= (and b!123603 ((_ is Union!559) (_2!1400 (h!7420 mapValue!1647)))) b!123878))

(declare-fun tp!67796 () Bool)

(declare-fun b!123879 () Bool)

(declare-fun tp!67797 () Bool)

(declare-fun tp!67798 () Bool)

(declare-fun e!71215 () Bool)

(assert (=> b!123879 (= e!71215 (and tp!67796 tp_is_empty!1173 tp!67797 tp!67798))))

(assert (=> b!123603 (= tp!67718 e!71215)))

(assert (= (and b!123603 ((_ is Cons!2023) (t!22506 mapValue!1647))) b!123879))

(declare-fun e!71216 () Bool)

(assert (=> b!123587 (= tp!67690 e!71216)))

(declare-fun b!123880 () Bool)

(assert (=> b!123880 (= e!71216 tp_is_empty!1173)))

(declare-fun b!123883 () Bool)

(declare-fun tp!67800 () Bool)

(declare-fun tp!67801 () Bool)

(assert (=> b!123883 (= e!71216 (and tp!67800 tp!67801))))

(declare-fun b!123882 () Bool)

(declare-fun tp!67799 () Bool)

(assert (=> b!123882 (= e!71216 tp!67799)))

(declare-fun b!123881 () Bool)

(declare-fun tp!67803 () Bool)

(declare-fun tp!67802 () Bool)

(assert (=> b!123881 (= e!71216 (and tp!67803 tp!67802))))

(assert (= (and b!123587 ((_ is ElementMatch!559) (regOne!1631 (regOne!1631 r!15532)))) b!123880))

(assert (= (and b!123587 ((_ is Concat!943) (regOne!1631 (regOne!1631 r!15532)))) b!123881))

(assert (= (and b!123587 ((_ is Star!559) (regOne!1631 (regOne!1631 r!15532)))) b!123882))

(assert (= (and b!123587 ((_ is Union!559) (regOne!1631 (regOne!1631 r!15532)))) b!123883))

(declare-fun e!71217 () Bool)

(assert (=> b!123587 (= tp!67691 e!71217)))

(declare-fun b!123884 () Bool)

(assert (=> b!123884 (= e!71217 tp_is_empty!1173)))

(declare-fun b!123887 () Bool)

(declare-fun tp!67805 () Bool)

(declare-fun tp!67806 () Bool)

(assert (=> b!123887 (= e!71217 (and tp!67805 tp!67806))))

(declare-fun b!123886 () Bool)

(declare-fun tp!67804 () Bool)

(assert (=> b!123886 (= e!71217 tp!67804)))

(declare-fun b!123885 () Bool)

(declare-fun tp!67808 () Bool)

(declare-fun tp!67807 () Bool)

(assert (=> b!123885 (= e!71217 (and tp!67808 tp!67807))))

(assert (= (and b!123587 ((_ is ElementMatch!559) (regTwo!1631 (regOne!1631 r!15532)))) b!123884))

(assert (= (and b!123587 ((_ is Concat!943) (regTwo!1631 (regOne!1631 r!15532)))) b!123885))

(assert (= (and b!123587 ((_ is Star!559) (regTwo!1631 (regOne!1631 r!15532)))) b!123886))

(assert (= (and b!123587 ((_ is Union!559) (regTwo!1631 (regOne!1631 r!15532)))) b!123887))

(declare-fun condMapEmpty!1648 () Bool)

(declare-fun mapDefault!1648 () List!2029)

(assert (=> mapNonEmpty!1647 (= condMapEmpty!1648 (= mapRest!1647 ((as const (Array (_ BitVec 32) List!2029)) mapDefault!1648)))))

(declare-fun e!71219 () Bool)

(declare-fun mapRes!1648 () Bool)

(assert (=> mapNonEmpty!1647 (= tp!67722 (and e!71219 mapRes!1648))))

(declare-fun tp!67810 () Bool)

(declare-fun e!71218 () Bool)

(declare-fun b!123888 () Bool)

(declare-fun tp!67813 () Bool)

(declare-fun tp!67811 () Bool)

(assert (=> b!123888 (= e!71218 (and tp!67813 tp_is_empty!1173 tp!67810 tp!67811))))

(declare-fun mapIsEmpty!1648 () Bool)

(assert (=> mapIsEmpty!1648 mapRes!1648))

(declare-fun tp!67814 () Bool)

(declare-fun b!123889 () Bool)

(declare-fun tp!67809 () Bool)

(declare-fun tp!67812 () Bool)

(assert (=> b!123889 (= e!71219 (and tp!67814 tp_is_empty!1173 tp!67812 tp!67809))))

(declare-fun mapNonEmpty!1648 () Bool)

(declare-fun tp!67815 () Bool)

(assert (=> mapNonEmpty!1648 (= mapRes!1648 (and tp!67815 e!71218))))

(declare-fun mapRest!1648 () (Array (_ BitVec 32) List!2029))

(declare-fun mapValue!1648 () List!2029)

(declare-fun mapKey!1648 () (_ BitVec 32))

(assert (=> mapNonEmpty!1648 (= mapRest!1647 (store mapRest!1648 mapKey!1648 mapValue!1648))))

(assert (= (and mapNonEmpty!1647 condMapEmpty!1648) mapIsEmpty!1648))

(assert (= (and mapNonEmpty!1647 (not condMapEmpty!1648)) mapNonEmpty!1648))

(assert (= (and mapNonEmpty!1648 ((_ is Cons!2023) mapValue!1648)) b!123888))

(assert (= (and mapNonEmpty!1647 ((_ is Cons!2023) mapDefault!1648)) b!123889))

(declare-fun m!109715 () Bool)

(assert (=> mapNonEmpty!1648 m!109715))

(declare-fun e!71220 () Bool)

(assert (=> b!123621 (= tp!67743 e!71220)))

(declare-fun b!123890 () Bool)

(assert (=> b!123890 (= e!71220 tp_is_empty!1173)))

(declare-fun b!123893 () Bool)

(declare-fun tp!67817 () Bool)

(declare-fun tp!67818 () Bool)

(assert (=> b!123893 (= e!71220 (and tp!67817 tp!67818))))

(declare-fun b!123892 () Bool)

(declare-fun tp!67816 () Bool)

(assert (=> b!123892 (= e!71220 tp!67816)))

(declare-fun b!123891 () Bool)

(declare-fun tp!67820 () Bool)

(declare-fun tp!67819 () Bool)

(assert (=> b!123891 (= e!71220 (and tp!67820 tp!67819))))

(assert (= (and b!123621 ((_ is ElementMatch!559) (reg!888 (regTwo!1630 r!15532)))) b!123890))

(assert (= (and b!123621 ((_ is Concat!943) (reg!888 (regTwo!1630 r!15532)))) b!123891))

(assert (= (and b!123621 ((_ is Star!559) (reg!888 (regTwo!1630 r!15532)))) b!123892))

(assert (= (and b!123621 ((_ is Union!559) (reg!888 (regTwo!1630 r!15532)))) b!123893))

(declare-fun e!71221 () Bool)

(assert (=> b!123612 (= tp!67732 e!71221)))

(declare-fun b!123894 () Bool)

(assert (=> b!123894 (= e!71221 tp_is_empty!1173)))

(declare-fun b!123897 () Bool)

(declare-fun tp!67822 () Bool)

(declare-fun tp!67823 () Bool)

(assert (=> b!123897 (= e!71221 (and tp!67822 tp!67823))))

(declare-fun b!123896 () Bool)

(declare-fun tp!67821 () Bool)

(assert (=> b!123896 (= e!71221 tp!67821)))

(declare-fun b!123895 () Bool)

(declare-fun tp!67825 () Bool)

(declare-fun tp!67824 () Bool)

(assert (=> b!123895 (= e!71221 (and tp!67825 tp!67824))))

(assert (= (and b!123612 ((_ is ElementMatch!559) (reg!888 (reg!888 r!15532)))) b!123894))

(assert (= (and b!123612 ((_ is Concat!943) (reg!888 (reg!888 r!15532)))) b!123895))

(assert (= (and b!123612 ((_ is Star!559) (reg!888 (reg!888 r!15532)))) b!123896))

(assert (= (and b!123612 ((_ is Union!559) (reg!888 (reg!888 r!15532)))) b!123897))

(declare-fun e!71222 () Bool)

(assert (=> b!123620 (= tp!67747 e!71222)))

(declare-fun b!123898 () Bool)

(assert (=> b!123898 (= e!71222 tp_is_empty!1173)))

(declare-fun b!123901 () Bool)

(declare-fun tp!67827 () Bool)

(declare-fun tp!67828 () Bool)

(assert (=> b!123901 (= e!71222 (and tp!67827 tp!67828))))

(declare-fun b!123900 () Bool)

(declare-fun tp!67826 () Bool)

(assert (=> b!123900 (= e!71222 tp!67826)))

(declare-fun b!123899 () Bool)

(declare-fun tp!67830 () Bool)

(declare-fun tp!67829 () Bool)

(assert (=> b!123899 (= e!71222 (and tp!67830 tp!67829))))

(assert (= (and b!123620 ((_ is ElementMatch!559) (regOne!1630 (regTwo!1630 r!15532)))) b!123898))

(assert (= (and b!123620 ((_ is Concat!943) (regOne!1630 (regTwo!1630 r!15532)))) b!123899))

(assert (= (and b!123620 ((_ is Star!559) (regOne!1630 (regTwo!1630 r!15532)))) b!123900))

(assert (= (and b!123620 ((_ is Union!559) (regOne!1630 (regTwo!1630 r!15532)))) b!123901))

(declare-fun e!71223 () Bool)

(assert (=> b!123620 (= tp!67746 e!71223)))

(declare-fun b!123902 () Bool)

(assert (=> b!123902 (= e!71223 tp_is_empty!1173)))

(declare-fun b!123905 () Bool)

(declare-fun tp!67832 () Bool)

(declare-fun tp!67833 () Bool)

(assert (=> b!123905 (= e!71223 (and tp!67832 tp!67833))))

(declare-fun b!123904 () Bool)

(declare-fun tp!67831 () Bool)

(assert (=> b!123904 (= e!71223 tp!67831)))

(declare-fun b!123903 () Bool)

(declare-fun tp!67835 () Bool)

(declare-fun tp!67834 () Bool)

(assert (=> b!123903 (= e!71223 (and tp!67835 tp!67834))))

(assert (= (and b!123620 ((_ is ElementMatch!559) (regTwo!1630 (regTwo!1630 r!15532)))) b!123902))

(assert (= (and b!123620 ((_ is Concat!943) (regTwo!1630 (regTwo!1630 r!15532)))) b!123903))

(assert (= (and b!123620 ((_ is Star!559) (regTwo!1630 (regTwo!1630 r!15532)))) b!123904))

(assert (= (and b!123620 ((_ is Union!559) (regTwo!1630 (regTwo!1630 r!15532)))) b!123905))

(declare-fun e!71224 () Bool)

(assert (=> b!123613 (= tp!67733 e!71224)))

(declare-fun b!123906 () Bool)

(assert (=> b!123906 (= e!71224 tp_is_empty!1173)))

(declare-fun b!123909 () Bool)

(declare-fun tp!67837 () Bool)

(declare-fun tp!67838 () Bool)

(assert (=> b!123909 (= e!71224 (and tp!67837 tp!67838))))

(declare-fun b!123908 () Bool)

(declare-fun tp!67836 () Bool)

(assert (=> b!123908 (= e!71224 tp!67836)))

(declare-fun b!123907 () Bool)

(declare-fun tp!67840 () Bool)

(declare-fun tp!67839 () Bool)

(assert (=> b!123907 (= e!71224 (and tp!67840 tp!67839))))

(assert (= (and b!123613 ((_ is ElementMatch!559) (regOne!1631 (reg!888 r!15532)))) b!123906))

(assert (= (and b!123613 ((_ is Concat!943) (regOne!1631 (reg!888 r!15532)))) b!123907))

(assert (= (and b!123613 ((_ is Star!559) (regOne!1631 (reg!888 r!15532)))) b!123908))

(assert (= (and b!123613 ((_ is Union!559) (regOne!1631 (reg!888 r!15532)))) b!123909))

(declare-fun e!71225 () Bool)

(assert (=> b!123613 (= tp!67734 e!71225)))

(declare-fun b!123910 () Bool)

(assert (=> b!123910 (= e!71225 tp_is_empty!1173)))

(declare-fun b!123913 () Bool)

(declare-fun tp!67842 () Bool)

(declare-fun tp!67843 () Bool)

(assert (=> b!123913 (= e!71225 (and tp!67842 tp!67843))))

(declare-fun b!123912 () Bool)

(declare-fun tp!67841 () Bool)

(assert (=> b!123912 (= e!71225 tp!67841)))

(declare-fun b!123911 () Bool)

(declare-fun tp!67845 () Bool)

(declare-fun tp!67844 () Bool)

(assert (=> b!123911 (= e!71225 (and tp!67845 tp!67844))))

(assert (= (and b!123613 ((_ is ElementMatch!559) (regTwo!1631 (reg!888 r!15532)))) b!123910))

(assert (= (and b!123613 ((_ is Concat!943) (regTwo!1631 (reg!888 r!15532)))) b!123911))

(assert (= (and b!123613 ((_ is Star!559) (regTwo!1631 (reg!888 r!15532)))) b!123912))

(assert (= (and b!123613 ((_ is Union!559) (regTwo!1631 (reg!888 r!15532)))) b!123913))

(declare-fun b!123914 () Bool)

(declare-fun e!71226 () Bool)

(declare-fun tp!67846 () Bool)

(assert (=> b!123914 (= e!71226 (and tp_is_empty!1173 tp!67846))))

(assert (=> b!123614 (= tp!67737 e!71226)))

(assert (= (and b!123614 ((_ is Cons!2022) (t!22505 (t!22505 totalInput!1363)))) b!123914))

(declare-fun e!71227 () Bool)

(assert (=> b!123622 (= tp!67744 e!71227)))

(declare-fun b!123915 () Bool)

(assert (=> b!123915 (= e!71227 tp_is_empty!1173)))

(declare-fun b!123918 () Bool)

(declare-fun tp!67848 () Bool)

(declare-fun tp!67849 () Bool)

(assert (=> b!123918 (= e!71227 (and tp!67848 tp!67849))))

(declare-fun b!123917 () Bool)

(declare-fun tp!67847 () Bool)

(assert (=> b!123917 (= e!71227 tp!67847)))

(declare-fun b!123916 () Bool)

(declare-fun tp!67851 () Bool)

(declare-fun tp!67850 () Bool)

(assert (=> b!123916 (= e!71227 (and tp!67851 tp!67850))))

(assert (= (and b!123622 ((_ is ElementMatch!559) (regOne!1631 (regTwo!1630 r!15532)))) b!123915))

(assert (= (and b!123622 ((_ is Concat!943) (regOne!1631 (regTwo!1630 r!15532)))) b!123916))

(assert (= (and b!123622 ((_ is Star!559) (regOne!1631 (regTwo!1630 r!15532)))) b!123917))

(assert (= (and b!123622 ((_ is Union!559) (regOne!1631 (regTwo!1630 r!15532)))) b!123918))

(declare-fun e!71228 () Bool)

(assert (=> b!123622 (= tp!67745 e!71228)))

(declare-fun b!123919 () Bool)

(assert (=> b!123919 (= e!71228 tp_is_empty!1173)))

(declare-fun b!123922 () Bool)

(declare-fun tp!67853 () Bool)

(declare-fun tp!67854 () Bool)

(assert (=> b!123922 (= e!71228 (and tp!67853 tp!67854))))

(declare-fun b!123921 () Bool)

(declare-fun tp!67852 () Bool)

(assert (=> b!123921 (= e!71228 tp!67852)))

(declare-fun b!123920 () Bool)

(declare-fun tp!67856 () Bool)

(declare-fun tp!67855 () Bool)

(assert (=> b!123920 (= e!71228 (and tp!67856 tp!67855))))

(assert (= (and b!123622 ((_ is ElementMatch!559) (regTwo!1631 (regTwo!1630 r!15532)))) b!123919))

(assert (= (and b!123622 ((_ is Concat!943) (regTwo!1631 (regTwo!1630 r!15532)))) b!123920))

(assert (= (and b!123622 ((_ is Star!559) (regTwo!1631 (regTwo!1630 r!15532)))) b!123921))

(assert (= (and b!123622 ((_ is Union!559) (regTwo!1631 (regTwo!1630 r!15532)))) b!123922))

(declare-fun e!71229 () Bool)

(assert (=> b!123591 (= tp!67695 e!71229)))

(declare-fun b!123923 () Bool)

(assert (=> b!123923 (= e!71229 tp_is_empty!1173)))

(declare-fun b!123926 () Bool)

(declare-fun tp!67858 () Bool)

(declare-fun tp!67859 () Bool)

(assert (=> b!123926 (= e!71229 (and tp!67858 tp!67859))))

(declare-fun b!123925 () Bool)

(declare-fun tp!67857 () Bool)

(assert (=> b!123925 (= e!71229 tp!67857)))

(declare-fun b!123924 () Bool)

(declare-fun tp!67861 () Bool)

(declare-fun tp!67860 () Bool)

(assert (=> b!123924 (= e!71229 (and tp!67861 tp!67860))))

(assert (= (and b!123591 ((_ is ElementMatch!559) (regOne!1631 (regTwo!1631 r!15532)))) b!123923))

(assert (= (and b!123591 ((_ is Concat!943) (regOne!1631 (regTwo!1631 r!15532)))) b!123924))

(assert (= (and b!123591 ((_ is Star!559) (regOne!1631 (regTwo!1631 r!15532)))) b!123925))

(assert (= (and b!123591 ((_ is Union!559) (regOne!1631 (regTwo!1631 r!15532)))) b!123926))

(declare-fun e!71230 () Bool)

(assert (=> b!123591 (= tp!67696 e!71230)))

(declare-fun b!123927 () Bool)

(assert (=> b!123927 (= e!71230 tp_is_empty!1173)))

(declare-fun b!123930 () Bool)

(declare-fun tp!67863 () Bool)

(declare-fun tp!67864 () Bool)

(assert (=> b!123930 (= e!71230 (and tp!67863 tp!67864))))

(declare-fun b!123929 () Bool)

(declare-fun tp!67862 () Bool)

(assert (=> b!123929 (= e!71230 tp!67862)))

(declare-fun b!123928 () Bool)

(declare-fun tp!67866 () Bool)

(declare-fun tp!67865 () Bool)

(assert (=> b!123928 (= e!71230 (and tp!67866 tp!67865))))

(assert (= (and b!123591 ((_ is ElementMatch!559) (regTwo!1631 (regTwo!1631 r!15532)))) b!123927))

(assert (= (and b!123591 ((_ is Concat!943) (regTwo!1631 (regTwo!1631 r!15532)))) b!123928))

(assert (= (and b!123591 ((_ is Star!559) (regTwo!1631 (regTwo!1631 r!15532)))) b!123929))

(assert (= (and b!123591 ((_ is Union!559) (regTwo!1631 (regTwo!1631 r!15532)))) b!123930))

(declare-fun e!71231 () Bool)

(assert (=> b!123589 (= tp!67698 e!71231)))

(declare-fun b!123931 () Bool)

(assert (=> b!123931 (= e!71231 tp_is_empty!1173)))

(declare-fun b!123934 () Bool)

(declare-fun tp!67868 () Bool)

(declare-fun tp!67869 () Bool)

(assert (=> b!123934 (= e!71231 (and tp!67868 tp!67869))))

(declare-fun b!123933 () Bool)

(declare-fun tp!67867 () Bool)

(assert (=> b!123933 (= e!71231 tp!67867)))

(declare-fun b!123932 () Bool)

(declare-fun tp!67871 () Bool)

(declare-fun tp!67870 () Bool)

(assert (=> b!123932 (= e!71231 (and tp!67871 tp!67870))))

(assert (= (and b!123589 ((_ is ElementMatch!559) (regOne!1630 (regTwo!1631 r!15532)))) b!123931))

(assert (= (and b!123589 ((_ is Concat!943) (regOne!1630 (regTwo!1631 r!15532)))) b!123932))

(assert (= (and b!123589 ((_ is Star!559) (regOne!1630 (regTwo!1631 r!15532)))) b!123933))

(assert (= (and b!123589 ((_ is Union!559) (regOne!1630 (regTwo!1631 r!15532)))) b!123934))

(declare-fun e!71232 () Bool)

(assert (=> b!123589 (= tp!67697 e!71232)))

(declare-fun b!123935 () Bool)

(assert (=> b!123935 (= e!71232 tp_is_empty!1173)))

(declare-fun b!123938 () Bool)

(declare-fun tp!67873 () Bool)

(declare-fun tp!67874 () Bool)

(assert (=> b!123938 (= e!71232 (and tp!67873 tp!67874))))

(declare-fun b!123937 () Bool)

(declare-fun tp!67872 () Bool)

(assert (=> b!123937 (= e!71232 tp!67872)))

(declare-fun b!123936 () Bool)

(declare-fun tp!67876 () Bool)

(declare-fun tp!67875 () Bool)

(assert (=> b!123936 (= e!71232 (and tp!67876 tp!67875))))

(assert (= (and b!123589 ((_ is ElementMatch!559) (regTwo!1630 (regTwo!1631 r!15532)))) b!123935))

(assert (= (and b!123589 ((_ is Concat!943) (regTwo!1630 (regTwo!1631 r!15532)))) b!123936))

(assert (= (and b!123589 ((_ is Star!559) (regTwo!1630 (regTwo!1631 r!15532)))) b!123937))

(assert (= (and b!123589 ((_ is Union!559) (regTwo!1630 (regTwo!1631 r!15532)))) b!123938))

(declare-fun e!71233 () Bool)

(assert (=> b!123590 (= tp!67694 e!71233)))

(declare-fun b!123939 () Bool)

(assert (=> b!123939 (= e!71233 tp_is_empty!1173)))

(declare-fun b!123942 () Bool)

(declare-fun tp!67878 () Bool)

(declare-fun tp!67879 () Bool)

(assert (=> b!123942 (= e!71233 (and tp!67878 tp!67879))))

(declare-fun b!123941 () Bool)

(declare-fun tp!67877 () Bool)

(assert (=> b!123941 (= e!71233 tp!67877)))

(declare-fun b!123940 () Bool)

(declare-fun tp!67881 () Bool)

(declare-fun tp!67880 () Bool)

(assert (=> b!123940 (= e!71233 (and tp!67881 tp!67880))))

(assert (= (and b!123590 ((_ is ElementMatch!559) (reg!888 (regTwo!1631 r!15532)))) b!123939))

(assert (= (and b!123590 ((_ is Concat!943) (reg!888 (regTwo!1631 r!15532)))) b!123940))

(assert (= (and b!123590 ((_ is Star!559) (reg!888 (regTwo!1631 r!15532)))) b!123941))

(assert (= (and b!123590 ((_ is Union!559) (reg!888 (regTwo!1631 r!15532)))) b!123942))

(declare-fun e!71234 () Bool)

(assert (=> b!123611 (= tp!67736 e!71234)))

(declare-fun b!123943 () Bool)

(assert (=> b!123943 (= e!71234 tp_is_empty!1173)))

(declare-fun b!123946 () Bool)

(declare-fun tp!67883 () Bool)

(declare-fun tp!67884 () Bool)

(assert (=> b!123946 (= e!71234 (and tp!67883 tp!67884))))

(declare-fun b!123945 () Bool)

(declare-fun tp!67882 () Bool)

(assert (=> b!123945 (= e!71234 tp!67882)))

(declare-fun b!123944 () Bool)

(declare-fun tp!67886 () Bool)

(declare-fun tp!67885 () Bool)

(assert (=> b!123944 (= e!71234 (and tp!67886 tp!67885))))

(assert (= (and b!123611 ((_ is ElementMatch!559) (regOne!1630 (reg!888 r!15532)))) b!123943))

(assert (= (and b!123611 ((_ is Concat!943) (regOne!1630 (reg!888 r!15532)))) b!123944))

(assert (= (and b!123611 ((_ is Star!559) (regOne!1630 (reg!888 r!15532)))) b!123945))

(assert (= (and b!123611 ((_ is Union!559) (regOne!1630 (reg!888 r!15532)))) b!123946))

(declare-fun e!71235 () Bool)

(assert (=> b!123611 (= tp!67735 e!71235)))

(declare-fun b!123947 () Bool)

(assert (=> b!123947 (= e!71235 tp_is_empty!1173)))

(declare-fun b!123950 () Bool)

(declare-fun tp!67888 () Bool)

(declare-fun tp!67889 () Bool)

(assert (=> b!123950 (= e!71235 (and tp!67888 tp!67889))))

(declare-fun b!123949 () Bool)

(declare-fun tp!67887 () Bool)

(assert (=> b!123949 (= e!71235 tp!67887)))

(declare-fun b!123948 () Bool)

(declare-fun tp!67891 () Bool)

(declare-fun tp!67890 () Bool)

(assert (=> b!123948 (= e!71235 (and tp!67891 tp!67890))))

(assert (= (and b!123611 ((_ is ElementMatch!559) (regTwo!1630 (reg!888 r!15532)))) b!123947))

(assert (= (and b!123611 ((_ is Concat!943) (regTwo!1630 (reg!888 r!15532)))) b!123948))

(assert (= (and b!123611 ((_ is Star!559) (regTwo!1630 (reg!888 r!15532)))) b!123949))

(assert (= (and b!123611 ((_ is Union!559) (regTwo!1630 (reg!888 r!15532)))) b!123950))

(declare-fun e!71236 () Bool)

(assert (=> b!123626 (= tp!67755 e!71236)))

(declare-fun b!123951 () Bool)

(assert (=> b!123951 (= e!71236 tp_is_empty!1173)))

(declare-fun b!123954 () Bool)

(declare-fun tp!67893 () Bool)

(declare-fun tp!67894 () Bool)

(assert (=> b!123954 (= e!71236 (and tp!67893 tp!67894))))

(declare-fun b!123953 () Bool)

(declare-fun tp!67892 () Bool)

(assert (=> b!123953 (= e!71236 tp!67892)))

(declare-fun b!123952 () Bool)

(declare-fun tp!67896 () Bool)

(declare-fun tp!67895 () Bool)

(assert (=> b!123952 (= e!71236 (and tp!67896 tp!67895))))

(assert (= (and b!123626 ((_ is ElementMatch!559) (_1!1399 (_1!1400 (h!7420 (minValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))))))) b!123951))

(assert (= (and b!123626 ((_ is Concat!943) (_1!1399 (_1!1400 (h!7420 (minValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))))))) b!123952))

(assert (= (and b!123626 ((_ is Star!559) (_1!1399 (_1!1400 (h!7420 (minValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))))))) b!123953))

(assert (= (and b!123626 ((_ is Union!559) (_1!1399 (_1!1400 (h!7420 (minValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))))))) b!123954))

(declare-fun e!71237 () Bool)

(assert (=> b!123626 (= tp!67756 e!71237)))

(declare-fun b!123955 () Bool)

(assert (=> b!123955 (= e!71237 tp_is_empty!1173)))

(declare-fun b!123958 () Bool)

(declare-fun tp!67898 () Bool)

(declare-fun tp!67899 () Bool)

(assert (=> b!123958 (= e!71237 (and tp!67898 tp!67899))))

(declare-fun b!123957 () Bool)

(declare-fun tp!67897 () Bool)

(assert (=> b!123957 (= e!71237 tp!67897)))

(declare-fun b!123956 () Bool)

(declare-fun tp!67901 () Bool)

(declare-fun tp!67900 () Bool)

(assert (=> b!123956 (= e!71237 (and tp!67901 tp!67900))))

(assert (= (and b!123626 ((_ is ElementMatch!559) (_2!1400 (h!7420 (minValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470)))))))))) b!123955))

(assert (= (and b!123626 ((_ is Concat!943) (_2!1400 (h!7420 (minValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470)))))))))) b!123956))

(assert (= (and b!123626 ((_ is Star!559) (_2!1400 (h!7420 (minValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470)))))))))) b!123957))

(assert (= (and b!123626 ((_ is Union!559) (_2!1400 (h!7420 (minValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470)))))))))) b!123958))

(declare-fun tp!67903 () Bool)

(declare-fun tp!67902 () Bool)

(declare-fun e!71238 () Bool)

(declare-fun b!123959 () Bool)

(declare-fun tp!67904 () Bool)

(assert (=> b!123959 (= e!71238 (and tp!67902 tp_is_empty!1173 tp!67903 tp!67904))))

(assert (=> b!123626 (= tp!67757 e!71238)))

(assert (= (and b!123626 ((_ is Cons!2023) (t!22506 (minValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))))) b!123959))

(declare-fun e!71239 () Bool)

(assert (=> b!123616 (= tp!67742 e!71239)))

(declare-fun b!123960 () Bool)

(assert (=> b!123960 (= e!71239 tp_is_empty!1173)))

(declare-fun b!123963 () Bool)

(declare-fun tp!67906 () Bool)

(declare-fun tp!67907 () Bool)

(assert (=> b!123963 (= e!71239 (and tp!67906 tp!67907))))

(declare-fun b!123962 () Bool)

(declare-fun tp!67905 () Bool)

(assert (=> b!123962 (= e!71239 tp!67905)))

(declare-fun b!123961 () Bool)

(declare-fun tp!67909 () Bool)

(declare-fun tp!67908 () Bool)

(assert (=> b!123961 (= e!71239 (and tp!67909 tp!67908))))

(assert (= (and b!123616 ((_ is ElementMatch!559) (regOne!1630 (regOne!1630 r!15532)))) b!123960))

(assert (= (and b!123616 ((_ is Concat!943) (regOne!1630 (regOne!1630 r!15532)))) b!123961))

(assert (= (and b!123616 ((_ is Star!559) (regOne!1630 (regOne!1630 r!15532)))) b!123962))

(assert (= (and b!123616 ((_ is Union!559) (regOne!1630 (regOne!1630 r!15532)))) b!123963))

(declare-fun e!71240 () Bool)

(assert (=> b!123616 (= tp!67741 e!71240)))

(declare-fun b!123964 () Bool)

(assert (=> b!123964 (= e!71240 tp_is_empty!1173)))

(declare-fun b!123967 () Bool)

(declare-fun tp!67911 () Bool)

(declare-fun tp!67912 () Bool)

(assert (=> b!123967 (= e!71240 (and tp!67911 tp!67912))))

(declare-fun b!123966 () Bool)

(declare-fun tp!67910 () Bool)

(assert (=> b!123966 (= e!71240 tp!67910)))

(declare-fun b!123965 () Bool)

(declare-fun tp!67914 () Bool)

(declare-fun tp!67913 () Bool)

(assert (=> b!123965 (= e!71240 (and tp!67914 tp!67913))))

(assert (= (and b!123616 ((_ is ElementMatch!559) (regTwo!1630 (regOne!1630 r!15532)))) b!123964))

(assert (= (and b!123616 ((_ is Concat!943) (regTwo!1630 (regOne!1630 r!15532)))) b!123965))

(assert (= (and b!123616 ((_ is Star!559) (regTwo!1630 (regOne!1630 r!15532)))) b!123966))

(assert (= (and b!123616 ((_ is Union!559) (regTwo!1630 (regOne!1630 r!15532)))) b!123967))

(declare-fun e!71241 () Bool)

(assert (=> b!123609 (= tp!67729 e!71241)))

(declare-fun b!123968 () Bool)

(assert (=> b!123968 (= e!71241 tp_is_empty!1173)))

(declare-fun b!123971 () Bool)

(declare-fun tp!67916 () Bool)

(declare-fun tp!67917 () Bool)

(assert (=> b!123971 (= e!71241 (and tp!67916 tp!67917))))

(declare-fun b!123970 () Bool)

(declare-fun tp!67915 () Bool)

(assert (=> b!123970 (= e!71241 tp!67915)))

(declare-fun b!123969 () Bool)

(declare-fun tp!67919 () Bool)

(declare-fun tp!67918 () Bool)

(assert (=> b!123969 (= e!71241 (and tp!67919 tp!67918))))

(assert (= (and b!123609 ((_ is ElementMatch!559) (_1!1399 (_1!1400 (h!7420 mapValue!1644))))) b!123968))

(assert (= (and b!123609 ((_ is Concat!943) (_1!1399 (_1!1400 (h!7420 mapValue!1644))))) b!123969))

(assert (= (and b!123609 ((_ is Star!559) (_1!1399 (_1!1400 (h!7420 mapValue!1644))))) b!123970))

(assert (= (and b!123609 ((_ is Union!559) (_1!1399 (_1!1400 (h!7420 mapValue!1644))))) b!123971))

(declare-fun e!71242 () Bool)

(assert (=> b!123609 (= tp!67730 e!71242)))

(declare-fun b!123972 () Bool)

(assert (=> b!123972 (= e!71242 tp_is_empty!1173)))

(declare-fun b!123975 () Bool)

(declare-fun tp!67921 () Bool)

(declare-fun tp!67922 () Bool)

(assert (=> b!123975 (= e!71242 (and tp!67921 tp!67922))))

(declare-fun b!123974 () Bool)

(declare-fun tp!67920 () Bool)

(assert (=> b!123974 (= e!71242 tp!67920)))

(declare-fun b!123973 () Bool)

(declare-fun tp!67924 () Bool)

(declare-fun tp!67923 () Bool)

(assert (=> b!123973 (= e!71242 (and tp!67924 tp!67923))))

(assert (= (and b!123609 ((_ is ElementMatch!559) (_2!1400 (h!7420 mapValue!1644)))) b!123972))

(assert (= (and b!123609 ((_ is Concat!943) (_2!1400 (h!7420 mapValue!1644)))) b!123973))

(assert (= (and b!123609 ((_ is Star!559) (_2!1400 (h!7420 mapValue!1644)))) b!123974))

(assert (= (and b!123609 ((_ is Union!559) (_2!1400 (h!7420 mapValue!1644)))) b!123975))

(declare-fun b!123976 () Bool)

(declare-fun tp!67926 () Bool)

(declare-fun tp!67925 () Bool)

(declare-fun tp!67927 () Bool)

(declare-fun e!71243 () Bool)

(assert (=> b!123976 (= e!71243 (and tp!67925 tp_is_empty!1173 tp!67926 tp!67927))))

(assert (=> b!123609 (= tp!67731 e!71243)))

(assert (= (and b!123609 ((_ is Cons!2023) (t!22506 mapValue!1644))) b!123976))

(declare-fun e!71244 () Bool)

(assert (=> b!123617 (= tp!67738 e!71244)))

(declare-fun b!123977 () Bool)

(assert (=> b!123977 (= e!71244 tp_is_empty!1173)))

(declare-fun b!123980 () Bool)

(declare-fun tp!67929 () Bool)

(declare-fun tp!67930 () Bool)

(assert (=> b!123980 (= e!71244 (and tp!67929 tp!67930))))

(declare-fun b!123979 () Bool)

(declare-fun tp!67928 () Bool)

(assert (=> b!123979 (= e!71244 tp!67928)))

(declare-fun b!123978 () Bool)

(declare-fun tp!67932 () Bool)

(declare-fun tp!67931 () Bool)

(assert (=> b!123978 (= e!71244 (and tp!67932 tp!67931))))

(assert (= (and b!123617 ((_ is ElementMatch!559) (reg!888 (regOne!1630 r!15532)))) b!123977))

(assert (= (and b!123617 ((_ is Concat!943) (reg!888 (regOne!1630 r!15532)))) b!123978))

(assert (= (and b!123617 ((_ is Star!559) (reg!888 (regOne!1630 r!15532)))) b!123979))

(assert (= (and b!123617 ((_ is Union!559) (reg!888 (regOne!1630 r!15532)))) b!123980))

(declare-fun e!71245 () Bool)

(assert (=> b!123604 (= tp!67721 e!71245)))

(declare-fun b!123981 () Bool)

(assert (=> b!123981 (= e!71245 tp_is_empty!1173)))

(declare-fun b!123984 () Bool)

(declare-fun tp!67934 () Bool)

(declare-fun tp!67935 () Bool)

(assert (=> b!123984 (= e!71245 (and tp!67934 tp!67935))))

(declare-fun b!123983 () Bool)

(declare-fun tp!67933 () Bool)

(assert (=> b!123983 (= e!71245 tp!67933)))

(declare-fun b!123982 () Bool)

(declare-fun tp!67937 () Bool)

(declare-fun tp!67936 () Bool)

(assert (=> b!123982 (= e!71245 (and tp!67937 tp!67936))))

(assert (= (and b!123604 ((_ is ElementMatch!559) (_1!1399 (_1!1400 (h!7420 mapDefault!1647))))) b!123981))

(assert (= (and b!123604 ((_ is Concat!943) (_1!1399 (_1!1400 (h!7420 mapDefault!1647))))) b!123982))

(assert (= (and b!123604 ((_ is Star!559) (_1!1399 (_1!1400 (h!7420 mapDefault!1647))))) b!123983))

(assert (= (and b!123604 ((_ is Union!559) (_1!1399 (_1!1400 (h!7420 mapDefault!1647))))) b!123984))

(declare-fun e!71246 () Bool)

(assert (=> b!123604 (= tp!67719 e!71246)))

(declare-fun b!123985 () Bool)

(assert (=> b!123985 (= e!71246 tp_is_empty!1173)))

(declare-fun b!123988 () Bool)

(declare-fun tp!67939 () Bool)

(declare-fun tp!67940 () Bool)

(assert (=> b!123988 (= e!71246 (and tp!67939 tp!67940))))

(declare-fun b!123987 () Bool)

(declare-fun tp!67938 () Bool)

(assert (=> b!123987 (= e!71246 tp!67938)))

(declare-fun b!123986 () Bool)

(declare-fun tp!67942 () Bool)

(declare-fun tp!67941 () Bool)

(assert (=> b!123986 (= e!71246 (and tp!67942 tp!67941))))

(assert (= (and b!123604 ((_ is ElementMatch!559) (_2!1400 (h!7420 mapDefault!1647)))) b!123985))

(assert (= (and b!123604 ((_ is Concat!943) (_2!1400 (h!7420 mapDefault!1647)))) b!123986))

(assert (= (and b!123604 ((_ is Star!559) (_2!1400 (h!7420 mapDefault!1647)))) b!123987))

(assert (= (and b!123604 ((_ is Union!559) (_2!1400 (h!7420 mapDefault!1647)))) b!123988))

(declare-fun b!123989 () Bool)

(declare-fun tp!67945 () Bool)

(declare-fun tp!67943 () Bool)

(declare-fun e!71247 () Bool)

(declare-fun tp!67944 () Bool)

(assert (=> b!123989 (= e!71247 (and tp!67943 tp_is_empty!1173 tp!67944 tp!67945))))

(assert (=> b!123604 (= tp!67716 e!71247)))

(assert (= (and b!123604 ((_ is Cons!2023) (t!22506 mapDefault!1647))) b!123989))

(declare-fun b!123990 () Bool)

(declare-fun e!71248 () Bool)

(declare-fun tp!67946 () Bool)

(assert (=> b!123990 (= e!71248 (and tp_is_empty!1173 tp!67946))))

(assert (=> b!123624 (= tp!67751 e!71248)))

(assert (= (and b!123624 ((_ is Cons!2022) (t!22505 (t!22505 testedSuffix!285)))) b!123990))

(declare-fun b!123991 () Bool)

(declare-fun e!71249 () Bool)

(declare-fun tp!67947 () Bool)

(assert (=> b!123991 (= e!71249 (and tp_is_empty!1173 tp!67947))))

(assert (=> b!123596 (= tp!67701 e!71249)))

(assert (= (and b!123596 ((_ is Cons!2022) (t!22505 (t!22505 testedP!367)))) b!123991))

(declare-fun e!71250 () Bool)

(assert (=> b!123625 (= tp!67752 e!71250)))

(declare-fun b!123992 () Bool)

(assert (=> b!123992 (= e!71250 tp_is_empty!1173)))

(declare-fun b!123995 () Bool)

(declare-fun tp!67949 () Bool)

(declare-fun tp!67950 () Bool)

(assert (=> b!123995 (= e!71250 (and tp!67949 tp!67950))))

(declare-fun b!123994 () Bool)

(declare-fun tp!67948 () Bool)

(assert (=> b!123994 (= e!71250 tp!67948)))

(declare-fun b!123993 () Bool)

(declare-fun tp!67952 () Bool)

(declare-fun tp!67951 () Bool)

(assert (=> b!123993 (= e!71250 (and tp!67952 tp!67951))))

(assert (= (and b!123625 ((_ is ElementMatch!559) (_1!1399 (_1!1400 (h!7420 (zeroValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))))))) b!123992))

(assert (= (and b!123625 ((_ is Concat!943) (_1!1399 (_1!1400 (h!7420 (zeroValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))))))) b!123993))

(assert (= (and b!123625 ((_ is Star!559) (_1!1399 (_1!1400 (h!7420 (zeroValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))))))) b!123994))

(assert (= (and b!123625 ((_ is Union!559) (_1!1399 (_1!1400 (h!7420 (zeroValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))))))) b!123995))

(declare-fun e!71251 () Bool)

(assert (=> b!123625 (= tp!67753 e!71251)))

(declare-fun b!123996 () Bool)

(assert (=> b!123996 (= e!71251 tp_is_empty!1173)))

(declare-fun b!123999 () Bool)

(declare-fun tp!67954 () Bool)

(declare-fun tp!67955 () Bool)

(assert (=> b!123999 (= e!71251 (and tp!67954 tp!67955))))

(declare-fun b!123998 () Bool)

(declare-fun tp!67953 () Bool)

(assert (=> b!123998 (= e!71251 tp!67953)))

(declare-fun b!123997 () Bool)

(declare-fun tp!67957 () Bool)

(declare-fun tp!67956 () Bool)

(assert (=> b!123997 (= e!71251 (and tp!67957 tp!67956))))

(assert (= (and b!123625 ((_ is ElementMatch!559) (_2!1400 (h!7420 (zeroValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470)))))))))) b!123996))

(assert (= (and b!123625 ((_ is Concat!943) (_2!1400 (h!7420 (zeroValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470)))))))))) b!123997))

(assert (= (and b!123625 ((_ is Star!559) (_2!1400 (h!7420 (zeroValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470)))))))))) b!123998))

(assert (= (and b!123625 ((_ is Union!559) (_2!1400 (h!7420 (zeroValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470)))))))))) b!123999))

(declare-fun tp!67959 () Bool)

(declare-fun tp!67958 () Bool)

(declare-fun tp!67960 () Bool)

(declare-fun e!71252 () Bool)

(declare-fun b!124000 () Bool)

(assert (=> b!124000 (= e!71252 (and tp!67958 tp_is_empty!1173 tp!67959 tp!67960))))

(assert (=> b!123625 (= tp!67754 e!71252)))

(assert (= (and b!123625 ((_ is Cons!2023) (t!22506 (zeroValue!681 (v!13382 (underlying!1049 (v!13383 (underlying!1050 (cache!875 cache!470))))))))) b!124000))

(declare-fun e!71253 () Bool)

(assert (=> b!123618 (= tp!67739 e!71253)))

(declare-fun b!124001 () Bool)

(assert (=> b!124001 (= e!71253 tp_is_empty!1173)))

(declare-fun b!124004 () Bool)

(declare-fun tp!67962 () Bool)

(declare-fun tp!67963 () Bool)

(assert (=> b!124004 (= e!71253 (and tp!67962 tp!67963))))

(declare-fun b!124003 () Bool)

(declare-fun tp!67961 () Bool)

(assert (=> b!124003 (= e!71253 tp!67961)))

(declare-fun b!124002 () Bool)

(declare-fun tp!67965 () Bool)

(declare-fun tp!67964 () Bool)

(assert (=> b!124002 (= e!71253 (and tp!67965 tp!67964))))

(assert (= (and b!123618 ((_ is ElementMatch!559) (regOne!1631 (regOne!1630 r!15532)))) b!124001))

(assert (= (and b!123618 ((_ is Concat!943) (regOne!1631 (regOne!1630 r!15532)))) b!124002))

(assert (= (and b!123618 ((_ is Star!559) (regOne!1631 (regOne!1630 r!15532)))) b!124003))

(assert (= (and b!123618 ((_ is Union!559) (regOne!1631 (regOne!1630 r!15532)))) b!124004))

(declare-fun e!71254 () Bool)

(assert (=> b!123618 (= tp!67740 e!71254)))

(declare-fun b!124005 () Bool)

(assert (=> b!124005 (= e!71254 tp_is_empty!1173)))

(declare-fun b!124008 () Bool)

(declare-fun tp!67967 () Bool)

(declare-fun tp!67968 () Bool)

(assert (=> b!124008 (= e!71254 (and tp!67967 tp!67968))))

(declare-fun b!124007 () Bool)

(declare-fun tp!67966 () Bool)

(assert (=> b!124007 (= e!71254 tp!67966)))

(declare-fun b!124006 () Bool)

(declare-fun tp!67970 () Bool)

(declare-fun tp!67969 () Bool)

(assert (=> b!124006 (= e!71254 (and tp!67970 tp!67969))))

(assert (= (and b!123618 ((_ is ElementMatch!559) (regTwo!1631 (regOne!1630 r!15532)))) b!124005))

(assert (= (and b!123618 ((_ is Concat!943) (regTwo!1631 (regOne!1630 r!15532)))) b!124006))

(assert (= (and b!123618 ((_ is Star!559) (regTwo!1631 (regOne!1630 r!15532)))) b!124007))

(assert (= (and b!123618 ((_ is Union!559) (regTwo!1631 (regOne!1630 r!15532)))) b!124008))

(check-sat (not b!123988) (not b!123913) (not b!123821) (not b!123698) (not b!123909) (not d!29365) (not b!123746) (not b!123728) (not b!123773) (not b!123929) (not b_next!3929) (not b!123690) (not b!124007) (not b!124003) (not bm!5320) (not b!123825) (not b!123942) (not b!123912) (not b!123967) (not b!123969) (not b!123950) (not b!123780) (not b!123984) (not b!123862) (not b!123853) (not b!123856) (not b!123997) (not b!123957) (not b!123834) (not b!123695) (not b!123941) (not bm!5325) (not b!123642) (not b!123895) (not b!123982) (not b!123794) (not b!123975) (not d!29405) (not b!123809) (not b!123963) (not b!123930) (not b!123978) (not b!123682) (not b!123656) (not b!123971) (not b!123932) (not b!123998) (not b!123873) (not b!123660) (not bm!5342) (not d!29395) (not b!123851) (not d!29359) (not b!123970) (not b!123924) (not b!123904) (not b!123666) (not b!123786) (not b!123897) (not b!123952) (not b!123671) (not b!123900) (not b!123937) (not b!123928) (not b!123727) b_and!6061 (not b!123979) (not b!123956) (not b!123784) (not b!123877) (not b!123899) (not b!123630) (not d!29345) (not b!123749) (not b!123920) (not b!123868) (not b!123887) (not b!123874) (not b!123893) (not b!123680) (not b!123869) (not b!123958) (not bm!5344) (not b!123640) b_and!6059 tp_is_empty!1173 (not b!123778) (not b!123812) (not b!123724) (not d!29293) (not b!123654) (not d!29327) (not b!123662) (not b!123807) (not b!123865) (not b!123918) (not b!123986) (not b!123664) (not b!123646) (not b!124006) (not b!123699) (not b!123658) (not b!123787) (not b!123723) (not b!123907) (not b!123908) (not b!123652) (not d!29369) (not mapNonEmpty!1648) (not b!123691) (not b!123959) (not b!123861) (not bm!5330) (not b!123843) (not b!123994) (not b!123883) (not b!123889) (not d!29353) (not b!123917) (not b!124004) (not b!123991) (not bm!5333) (not b!123945) (not b!123747) (not b!123872) (not b!123668) (not b!124000) (not b!123852) (not b!123965) (not b!123684) (not b!123790) (not d!29393) (not b!123732) (not b!123777) (not b!123892) (not b!123799) (not b!123948) (not b!123860) (not b!123980) (not bm!5339) (not b!123962) (not b!123688) (not b!123650) (not b!124008) (not b!123776) (not b!123795) (not b!123879) (not b!123774) (not b!123976) (not bm!5335) (not b!123876) (not b!123864) (not bm!5313) (not d!29357) (not b!123938) (not bm!5315) (not d!29317) (not b!123934) (not b!123974) (not d!29351) (not b!123855) (not b!123888) (not b!123885) (not b!123628) (not b!123914) (not d!29349) (not b!123987) (not b!123993) (not b!123936) (not b!123882) (not d!29399) (not b!123694) (not b!123933) (not b!123881) (not b!123944) (not b!123725) (not d!29377) (not bm!5345) (not bm!5331) (not b!123911) (not b!123685) (not b!123954) (not b!123983) (not b!123644) (not b!123866) (not b!123925) (not b!123926) (not b!123700) (not b!123903) (not b!123946) (not b!123896) (not b!123772) (not d!29371) (not d!29315) (not b!123949) (not b!123990) (not b!123989) (not b!123999) (not bm!5336) (not b!123631) (not bm!5338) (not b!123973) (not b!123648) (not b!123905) (not b!123921) (not b!123791) (not b!123859) (not d!29361) (not bm!5321) (not bm!5323) (not b!123886) (not b_next!3931) (not b!123966) (not bm!5341) (not b!123820) (not b!123953) (not b!123857) (not b!123878) (not b!123808) (not b!123961) (not b!123782) (not d!29339) (not b!124002) (not b!123870) (not b!123940) (not d!29409) (not b!123922) (not bm!5332) (not b!123901) (not b!123638) (not b!123891) (not b!123916) (not b!123629) (not b!123995))
(check-sat b_and!6059 b_and!6061 (not b_next!3929) (not b_next!3931))
