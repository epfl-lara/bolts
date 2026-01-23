; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12386 () Bool)

(assert start!12386)

(declare-fun b!122540 () Bool)

(declare-fun b_free!3905 () Bool)

(declare-fun b_next!3905 () Bool)

(assert (=> b!122540 (= b_free!3905 (not b_next!3905))))

(declare-fun tp!67239 () Bool)

(declare-fun b_and!6035 () Bool)

(assert (=> b!122540 (= tp!67239 b_and!6035)))

(declare-fun b!122534 () Bool)

(declare-fun b_free!3907 () Bool)

(declare-fun b_next!3907 () Bool)

(assert (=> b!122534 (= b_free!3907 (not b_next!3907))))

(declare-fun tp!67243 () Bool)

(declare-fun b_and!6037 () Bool)

(assert (=> b!122534 (= tp!67243 b_and!6037)))

(declare-fun mapIsEmpty!1620 () Bool)

(declare-fun mapRes!1620 () Bool)

(assert (=> mapIsEmpty!1620 mapRes!1620))

(declare-fun b!122522 () Bool)

(declare-fun e!70327 () Bool)

(declare-fun tp_is_empty!1161 () Bool)

(declare-fun tp!67241 () Bool)

(assert (=> b!122522 (= e!70327 (and tp_is_empty!1161 tp!67241))))

(declare-fun b!122523 () Bool)

(declare-fun res!57291 () Bool)

(declare-fun e!70325 () Bool)

(assert (=> b!122523 (=> res!57291 e!70325)))

(declare-fun testedPSize!285 () Int)

(declare-fun totalInputSize!643 () Int)

(assert (=> b!122523 (= res!57291 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!122524 () Bool)

(declare-fun e!70326 () Bool)

(declare-fun e!70311 () Bool)

(assert (=> b!122524 (= e!70326 e!70311)))

(declare-fun b!122525 () Bool)

(declare-fun e!70316 () Bool)

(declare-datatypes ((C!2028 0))(
  ( (C!2029 (val!740 Int)) )
))
(declare-datatypes ((Regex!553 0))(
  ( (ElementMatch!553 (c!27181 C!2028)) (Concat!937 (regOne!1618 Regex!553) (regTwo!1618 Regex!553)) (EmptyExpr!553) (Star!553 (reg!882 Regex!553)) (EmptyLang!553) (Union!553 (regOne!1619 Regex!553) (regTwo!1619 Regex!553)) )
))
(declare-datatypes ((tuple2!2352 0))(
  ( (tuple2!2353 (_1!1386 Regex!553) (_2!1386 C!2028)) )
))
(declare-datatypes ((tuple2!2354 0))(
  ( (tuple2!2355 (_1!1387 tuple2!2352) (_2!1387 Regex!553)) )
))
(declare-datatypes ((List!2016 0))(
  ( (Nil!2010) (Cons!2010 (h!7407 tuple2!2354) (t!22493 List!2016)) )
))
(declare-datatypes ((array!1555 0))(
  ( (array!1556 (arr!722 (Array (_ BitVec 32) (_ BitVec 64))) (size!1869 (_ BitVec 32))) )
))
(declare-datatypes ((array!1557 0))(
  ( (array!1558 (arr!723 (Array (_ BitVec 32) List!2016)) (size!1870 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!838 0))(
  ( (LongMapFixedSize!839 (defaultEntry!758 Int) (mask!1363 (_ BitVec 32)) (extraKeys!665 (_ BitVec 32)) (zeroValue!675 List!2016) (minValue!675 List!2016) (_size!971 (_ BitVec 32)) (_keys!710 array!1555) (_values!697 array!1557) (_vacant!480 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1665 0))(
  ( (Cell!1666 (v!13370 LongMapFixedSize!838)) )
))
(declare-datatypes ((MutLongMap!419 0))(
  ( (LongMap!419 (underlying!1037 Cell!1665)) (MutLongMapExt!418 (__x!2182 Int)) )
))
(declare-fun lt!36816 () MutLongMap!419)

(get-info :version)

(assert (=> b!122525 (= e!70316 (and e!70326 ((_ is LongMap!419) lt!36816)))))

(declare-datatypes ((Hashable!415 0))(
  ( (HashableExt!414 (__x!2183 Int)) )
))
(declare-datatypes ((Cell!1667 0))(
  ( (Cell!1668 (v!13371 MutLongMap!419)) )
))
(declare-datatypes ((MutableMap!415 0))(
  ( (MutableMapExt!414 (__x!2184 Int)) (HashMap!415 (underlying!1038 Cell!1667) (hashF!2291 Hashable!415) (_size!972 (_ BitVec 32)) (defaultValue!564 Int)) )
))
(declare-datatypes ((Cache!266 0))(
  ( (Cache!267 (cache!868 MutableMap!415)) )
))
(declare-fun cache!470 () Cache!266)

(assert (=> b!122525 (= lt!36816 (v!13371 (underlying!1038 (cache!868 cache!470))))))

(declare-fun b!122526 () Bool)

(declare-fun e!70328 () Bool)

(declare-fun tp!67237 () Bool)

(assert (=> b!122526 (= e!70328 (and tp_is_empty!1161 tp!67237))))

(declare-fun b!122527 () Bool)

(declare-fun e!70322 () Bool)

(declare-fun e!70312 () Bool)

(assert (=> b!122527 (= e!70322 e!70312)))

(declare-fun b!122528 () Bool)

(declare-fun e!70313 () Bool)

(declare-fun tp!67236 () Bool)

(assert (=> b!122528 (= e!70313 (and tp!67236 mapRes!1620))))

(declare-fun condMapEmpty!1620 () Bool)

(declare-fun mapDefault!1620 () List!2016)

(assert (=> b!122528 (= condMapEmpty!1620 (= (arr!723 (_values!697 (v!13370 (underlying!1037 (v!13371 (underlying!1038 (cache!868 cache!470))))))) ((as const (Array (_ BitVec 32) List!2016)) mapDefault!1620)))))

(declare-fun b!122529 () Bool)

(declare-fun e!70329 () Bool)

(declare-fun e!70321 () Bool)

(assert (=> b!122529 (= e!70329 e!70321)))

(declare-fun res!57297 () Bool)

(assert (=> b!122529 (=> (not res!57297) (not e!70321))))

(declare-datatypes ((List!2017 0))(
  ( (Nil!2011) (Cons!2011 (h!7408 C!2028) (t!22494 List!2017)) )
))
(declare-fun lt!36818 () List!2017)

(declare-fun totalInput!1363 () List!2017)

(assert (=> b!122529 (= res!57297 (= lt!36818 totalInput!1363))))

(declare-fun testedP!367 () List!2017)

(declare-fun testedSuffix!285 () List!2017)

(declare-fun ++!379 (List!2017 List!2017) List!2017)

(assert (=> b!122529 (= lt!36818 (++!379 testedP!367 testedSuffix!285))))

(declare-fun res!57290 () Bool)

(assert (=> start!12386 (=> (not res!57290) (not e!70329))))

(declare-fun r!15532 () Regex!553)

(declare-fun validRegex!147 (Regex!553) Bool)

(assert (=> start!12386 (= res!57290 (validRegex!147 r!15532))))

(assert (=> start!12386 e!70329))

(assert (=> start!12386 true))

(declare-fun e!70331 () Bool)

(assert (=> start!12386 e!70331))

(declare-fun e!70323 () Bool)

(assert (=> start!12386 e!70323))

(assert (=> start!12386 e!70327))

(assert (=> start!12386 e!70328))

(declare-fun inv!2540 (Cache!266) Bool)

(assert (=> start!12386 (and (inv!2540 cache!470) e!70322)))

(declare-fun b!122530 () Bool)

(declare-fun e!70314 () Bool)

(declare-fun e!70320 () Bool)

(assert (=> b!122530 (= e!70314 (not e!70320))))

(declare-fun res!57289 () Bool)

(assert (=> b!122530 (=> res!57289 e!70320)))

(declare-fun isPrefix!129 (List!2017 List!2017) Bool)

(assert (=> b!122530 (= res!57289 (not (isPrefix!129 testedP!367 totalInput!1363)))))

(assert (=> b!122530 (isPrefix!129 testedP!367 lt!36818)))

(declare-datatypes ((Unit!1542 0))(
  ( (Unit!1543) )
))
(declare-fun lt!36804 () Unit!1542)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!72 (List!2017 List!2017) Unit!1542)

(assert (=> b!122530 (= lt!36804 (lemmaConcatTwoListThenFirstIsPrefix!72 testedP!367 testedSuffix!285))))

(declare-fun mapNonEmpty!1620 () Bool)

(declare-fun tp!67248 () Bool)

(declare-fun tp!67246 () Bool)

(assert (=> mapNonEmpty!1620 (= mapRes!1620 (and tp!67248 tp!67246))))

(declare-fun mapRest!1620 () (Array (_ BitVec 32) List!2016))

(declare-fun mapValue!1620 () List!2016)

(declare-fun mapKey!1620 () (_ BitVec 32))

(assert (=> mapNonEmpty!1620 (= (arr!723 (_values!697 (v!13370 (underlying!1037 (v!13371 (underlying!1038 (cache!868 cache!470))))))) (store mapRest!1620 mapKey!1620 mapValue!1620))))

(declare-fun b!122531 () Bool)

(declare-fun tp!67240 () Bool)

(assert (=> b!122531 (= e!70323 (and tp_is_empty!1161 tp!67240))))

(declare-fun b!122532 () Bool)

(declare-fun tp!67238 () Bool)

(assert (=> b!122532 (= e!70331 tp!67238)))

(declare-fun b!122533 () Bool)

(assert (=> b!122533 (= e!70320 e!70325)))

(declare-fun res!57293 () Bool)

(assert (=> b!122533 (=> res!57293 e!70325)))

(declare-fun lostCause!73 (Regex!553) Bool)

(assert (=> b!122533 (= res!57293 (lostCause!73 r!15532))))

(declare-fun lt!36803 () List!2017)

(assert (=> b!122533 (and (= testedSuffix!285 lt!36803) (= lt!36803 testedSuffix!285))))

(declare-fun lt!36813 () Unit!1542)

(declare-fun lemmaSamePrefixThenSameSuffix!64 (List!2017 List!2017 List!2017 List!2017 List!2017) Unit!1542)

(assert (=> b!122533 (= lt!36813 (lemmaSamePrefixThenSameSuffix!64 testedP!367 testedSuffix!285 testedP!367 lt!36803 totalInput!1363))))

(declare-fun getSuffix!68 (List!2017 List!2017) List!2017)

(assert (=> b!122533 (= lt!36803 (getSuffix!68 totalInput!1363 testedP!367))))

(declare-fun tp!67245 () Bool)

(declare-fun e!70332 () Bool)

(declare-fun tp!67249 () Bool)

(declare-fun array_inv!519 (array!1555) Bool)

(declare-fun array_inv!520 (array!1557) Bool)

(assert (=> b!122534 (= e!70332 (and tp!67243 tp!67245 tp!67249 (array_inv!519 (_keys!710 (v!13370 (underlying!1037 (v!13371 (underlying!1038 (cache!868 cache!470))))))) (array_inv!520 (_values!697 (v!13370 (underlying!1037 (v!13371 (underlying!1038 (cache!868 cache!470))))))) e!70313))))

(declare-fun b!122535 () Bool)

(declare-fun res!57287 () Bool)

(assert (=> b!122535 (=> (not res!57287) (not e!70329))))

(declare-fun valid!376 (Cache!266) Bool)

(assert (=> b!122535 (= res!57287 (valid!376 cache!470))))

(declare-fun b!122536 () Bool)

(assert (=> b!122536 (= e!70331 tp_is_empty!1161)))

(declare-fun b!122537 () Bool)

(declare-fun e!70324 () Bool)

(assert (=> b!122537 (= e!70324 e!70314)))

(declare-fun res!57296 () Bool)

(assert (=> b!122537 (=> (not res!57296) (not e!70314))))

(declare-fun lt!36805 () Int)

(assert (=> b!122537 (= res!57296 (= totalInputSize!643 lt!36805))))

(declare-fun size!1871 (List!2017) Int)

(assert (=> b!122537 (= lt!36805 (size!1871 totalInput!1363))))

(declare-fun b!122538 () Bool)

(declare-fun e!70317 () Unit!1542)

(declare-fun Unit!1544 () Unit!1542)

(assert (=> b!122538 (= e!70317 Unit!1544)))

(declare-fun lt!36802 () Unit!1542)

(declare-fun lemmaIsPrefixRefl!99 (List!2017 List!2017) Unit!1542)

(assert (=> b!122538 (= lt!36802 (lemmaIsPrefixRefl!99 totalInput!1363 totalInput!1363))))

(assert (=> b!122538 (isPrefix!129 totalInput!1363 totalInput!1363)))

(declare-fun lt!36815 () Unit!1542)

(declare-fun lemmaIsPrefixSameLengthThenSameList!42 (List!2017 List!2017 List!2017) Unit!1542)

(assert (=> b!122538 (= lt!36815 (lemmaIsPrefixSameLengthThenSameList!42 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!122538 false))

(declare-fun b!122539 () Bool)

(assert (=> b!122539 (= e!70321 e!70324)))

(declare-fun res!57288 () Bool)

(assert (=> b!122539 (=> (not res!57288) (not e!70324))))

(declare-fun lt!36814 () Int)

(assert (=> b!122539 (= res!57288 (= testedPSize!285 lt!36814))))

(assert (=> b!122539 (= lt!36814 (size!1871 testedP!367))))

(assert (=> b!122540 (= e!70312 (and e!70316 tp!67239))))

(declare-fun b!122541 () Bool)

(declare-fun e!70319 () Bool)

(declare-fun e!70330 () Bool)

(assert (=> b!122541 (= e!70319 e!70330)))

(declare-fun res!57292 () Bool)

(assert (=> b!122541 (=> res!57292 e!70330)))

(declare-fun nullable!88 (Regex!553) Bool)

(assert (=> b!122541 (= res!57292 (not (nullable!88 r!15532)))))

(declare-fun lt!36806 () List!2017)

(declare-fun lt!36810 () List!2017)

(assert (=> b!122541 (= (++!379 lt!36806 lt!36810) totalInput!1363)))

(declare-fun lt!36817 () C!2028)

(declare-fun lt!36819 () Unit!1542)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!25 (List!2017 C!2028 List!2017 List!2017) Unit!1542)

(assert (=> b!122541 (= lt!36819 (lemmaMoveElementToOtherListKeepsConcatEq!25 testedP!367 lt!36817 lt!36810 totalInput!1363))))

(declare-fun tail!238 (List!2017) List!2017)

(assert (=> b!122541 (= lt!36810 (tail!238 testedSuffix!285))))

(declare-fun head!502 (List!2017) C!2028)

(assert (=> b!122541 (isPrefix!129 (++!379 testedP!367 (Cons!2011 (head!502 lt!36803) Nil!2011)) totalInput!1363)))

(declare-fun lt!36808 () Unit!1542)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!31 (List!2017 List!2017) Unit!1542)

(assert (=> b!122541 (= lt!36808 (lemmaAddHeadSuffixToPrefixStillPrefix!31 testedP!367 totalInput!1363))))

(assert (=> b!122541 (= lt!36806 (++!379 testedP!367 (Cons!2011 lt!36817 Nil!2011)))))

(assert (=> b!122541 (= lt!36817 (head!502 testedSuffix!285))))

(declare-fun b!122542 () Bool)

(declare-fun tp!67242 () Bool)

(declare-fun tp!67250 () Bool)

(assert (=> b!122542 (= e!70331 (and tp!67242 tp!67250))))

(declare-fun b!122543 () Bool)

(declare-fun tp!67247 () Bool)

(declare-fun tp!67244 () Bool)

(assert (=> b!122543 (= e!70331 (and tp!67247 tp!67244))))

(declare-fun b!122544 () Bool)

(assert (=> b!122544 (= e!70311 e!70332)))

(declare-fun b!122545 () Bool)

(declare-fun e!70318 () Bool)

(assert (=> b!122545 (= e!70330 e!70318)))

(declare-fun res!57295 () Bool)

(assert (=> b!122545 (=> res!57295 e!70318)))

(declare-datatypes ((tuple2!2356 0))(
  ( (tuple2!2357 (_1!1388 List!2017) (_2!1388 List!2017)) )
))
(declare-fun lt!36811 () tuple2!2356)

(declare-fun isEmpty!817 (List!2017) Bool)

(assert (=> b!122545 (= res!57295 (isEmpty!817 (_1!1388 lt!36811)))))

(declare-fun lt!36809 () Regex!553)

(declare-fun findLongestMatchInner!48 (Regex!553 List!2017 Int List!2017 List!2017 Int) tuple2!2356)

(assert (=> b!122545 (= lt!36811 (findLongestMatchInner!48 lt!36809 lt!36806 (+ 1 testedPSize!285) lt!36810 totalInput!1363 totalInputSize!643))))

(declare-fun findLongestMatchInnerMem!10 (Regex!553 List!2017 Int List!2017 List!2017 Int Cache!266) tuple2!2356)

(assert (=> b!122545 (= lt!36811 (findLongestMatchInnerMem!10 lt!36809 lt!36806 (+ 1 testedPSize!285) lt!36810 totalInput!1363 totalInputSize!643 cache!470))))

(declare-fun derivativeStep!59 (Regex!553 C!2028) Regex!553)

(assert (=> b!122545 (= lt!36809 (derivativeStep!59 r!15532 lt!36817))))

(declare-fun b!122546 () Bool)

(declare-fun Unit!1545 () Unit!1542)

(assert (=> b!122546 (= e!70317 Unit!1545)))

(declare-fun b!122547 () Bool)

(assert (=> b!122547 (= e!70325 e!70319)))

(declare-fun res!57294 () Bool)

(assert (=> b!122547 (=> res!57294 e!70319)))

(assert (=> b!122547 (= res!57294 (>= lt!36814 lt!36805))))

(declare-fun lt!36807 () Unit!1542)

(assert (=> b!122547 (= lt!36807 e!70317)))

(declare-fun c!27180 () Bool)

(assert (=> b!122547 (= c!27180 (= lt!36814 lt!36805))))

(assert (=> b!122547 (<= lt!36814 lt!36805)))

(declare-fun lt!36812 () Unit!1542)

(declare-fun lemmaIsPrefixThenSmallerEqSize!41 (List!2017 List!2017) Unit!1542)

(assert (=> b!122547 (= lt!36812 (lemmaIsPrefixThenSmallerEqSize!41 testedP!367 totalInput!1363))))

(declare-fun b!122548 () Bool)

(assert (=> b!122548 (= e!70318 (= lt!36811 (findLongestMatchInner!48 r!15532 testedP!367 testedPSize!285 testedSuffix!285 totalInput!1363 totalInputSize!643)))))

(assert (= (and start!12386 res!57290) b!122535))

(assert (= (and b!122535 res!57287) b!122529))

(assert (= (and b!122529 res!57297) b!122539))

(assert (= (and b!122539 res!57288) b!122537))

(assert (= (and b!122537 res!57296) b!122530))

(assert (= (and b!122530 (not res!57289)) b!122533))

(assert (= (and b!122533 (not res!57293)) b!122523))

(assert (= (and b!122523 (not res!57291)) b!122547))

(assert (= (and b!122547 c!27180) b!122538))

(assert (= (and b!122547 (not c!27180)) b!122546))

(assert (= (and b!122547 (not res!57294)) b!122541))

(assert (= (and b!122541 (not res!57292)) b!122545))

(assert (= (and b!122545 (not res!57295)) b!122548))

(assert (= (and start!12386 ((_ is ElementMatch!553) r!15532)) b!122536))

(assert (= (and start!12386 ((_ is Concat!937) r!15532)) b!122543))

(assert (= (and start!12386 ((_ is Star!553) r!15532)) b!122532))

(assert (= (and start!12386 ((_ is Union!553) r!15532)) b!122542))

(assert (= (and start!12386 ((_ is Cons!2011) totalInput!1363)) b!122531))

(assert (= (and start!12386 ((_ is Cons!2011) testedSuffix!285)) b!122522))

(assert (= (and start!12386 ((_ is Cons!2011) testedP!367)) b!122526))

(assert (= (and b!122528 condMapEmpty!1620) mapIsEmpty!1620))

(assert (= (and b!122528 (not condMapEmpty!1620)) mapNonEmpty!1620))

(assert (= b!122534 b!122528))

(assert (= b!122544 b!122534))

(assert (= b!122524 b!122544))

(assert (= (and b!122525 ((_ is LongMap!419) (v!13371 (underlying!1038 (cache!868 cache!470))))) b!122524))

(assert (= b!122540 b!122525))

(assert (= (and b!122527 ((_ is HashMap!415) (cache!868 cache!470))) b!122540))

(assert (= start!12386 b!122527))

(declare-fun m!108536 () Bool)

(assert (=> b!122535 m!108536))

(declare-fun m!108538 () Bool)

(assert (=> b!122545 m!108538))

(declare-fun m!108540 () Bool)

(assert (=> b!122545 m!108540))

(declare-fun m!108542 () Bool)

(assert (=> b!122545 m!108542))

(declare-fun m!108544 () Bool)

(assert (=> b!122545 m!108544))

(declare-fun m!108546 () Bool)

(assert (=> b!122541 m!108546))

(declare-fun m!108548 () Bool)

(assert (=> b!122541 m!108548))

(declare-fun m!108550 () Bool)

(assert (=> b!122541 m!108550))

(declare-fun m!108552 () Bool)

(assert (=> b!122541 m!108552))

(declare-fun m!108554 () Bool)

(assert (=> b!122541 m!108554))

(declare-fun m!108556 () Bool)

(assert (=> b!122541 m!108556))

(declare-fun m!108558 () Bool)

(assert (=> b!122541 m!108558))

(assert (=> b!122541 m!108554))

(declare-fun m!108560 () Bool)

(assert (=> b!122541 m!108560))

(declare-fun m!108562 () Bool)

(assert (=> b!122541 m!108562))

(declare-fun m!108564 () Bool)

(assert (=> b!122541 m!108564))

(declare-fun m!108566 () Bool)

(assert (=> b!122539 m!108566))

(declare-fun m!108568 () Bool)

(assert (=> b!122529 m!108568))

(declare-fun m!108570 () Bool)

(assert (=> mapNonEmpty!1620 m!108570))

(declare-fun m!108572 () Bool)

(assert (=> b!122533 m!108572))

(declare-fun m!108574 () Bool)

(assert (=> b!122533 m!108574))

(declare-fun m!108576 () Bool)

(assert (=> b!122533 m!108576))

(declare-fun m!108578 () Bool)

(assert (=> b!122530 m!108578))

(declare-fun m!108580 () Bool)

(assert (=> b!122530 m!108580))

(declare-fun m!108582 () Bool)

(assert (=> b!122530 m!108582))

(declare-fun m!108584 () Bool)

(assert (=> b!122537 m!108584))

(declare-fun m!108586 () Bool)

(assert (=> b!122534 m!108586))

(declare-fun m!108588 () Bool)

(assert (=> b!122534 m!108588))

(declare-fun m!108590 () Bool)

(assert (=> b!122548 m!108590))

(declare-fun m!108592 () Bool)

(assert (=> start!12386 m!108592))

(declare-fun m!108594 () Bool)

(assert (=> start!12386 m!108594))

(declare-fun m!108596 () Bool)

(assert (=> b!122547 m!108596))

(declare-fun m!108598 () Bool)

(assert (=> b!122538 m!108598))

(declare-fun m!108600 () Bool)

(assert (=> b!122538 m!108600))

(declare-fun m!108602 () Bool)

(assert (=> b!122538 m!108602))

(check-sat (not b!122529) (not b!122539) (not b!122541) (not b!122534) (not b!122547) (not b!122535) (not mapNonEmpty!1620) (not b!122528) (not b!122522) (not start!12386) (not b!122542) (not b!122538) (not b!122548) (not b!122531) (not b!122543) (not b_next!3907) (not b_next!3905) (not b!122532) (not b!122526) b_and!6035 (not b!122530) (not b!122545) (not b!122537) b_and!6037 (not b!122533) tp_is_empty!1161)
(check-sat b_and!6035 b_and!6037 (not b_next!3905) (not b_next!3907))
(get-model)

(declare-fun d!29092 () Bool)

(declare-fun lostCauseFct!32 (Regex!553) Bool)

(assert (=> d!29092 (= (lostCause!73 r!15532) (lostCauseFct!32 r!15532))))

(declare-fun bs!11989 () Bool)

(assert (= bs!11989 d!29092))

(declare-fun m!108604 () Bool)

(assert (=> bs!11989 m!108604))

(assert (=> b!122533 d!29092))

(declare-fun d!29094 () Bool)

(assert (=> d!29094 (= testedSuffix!285 lt!36803)))

(declare-fun lt!36822 () Unit!1542)

(declare-fun choose!1588 (List!2017 List!2017 List!2017 List!2017 List!2017) Unit!1542)

(assert (=> d!29094 (= lt!36822 (choose!1588 testedP!367 testedSuffix!285 testedP!367 lt!36803 totalInput!1363))))

(assert (=> d!29094 (isPrefix!129 testedP!367 totalInput!1363)))

(assert (=> d!29094 (= (lemmaSamePrefixThenSameSuffix!64 testedP!367 testedSuffix!285 testedP!367 lt!36803 totalInput!1363) lt!36822)))

(declare-fun bs!11990 () Bool)

(assert (= bs!11990 d!29094))

(declare-fun m!108606 () Bool)

(assert (=> bs!11990 m!108606))

(assert (=> bs!11990 m!108578))

(assert (=> b!122533 d!29094))

(declare-fun d!29096 () Bool)

(declare-fun lt!36825 () List!2017)

(assert (=> d!29096 (= (++!379 testedP!367 lt!36825) totalInput!1363)))

(declare-fun e!70335 () List!2017)

(assert (=> d!29096 (= lt!36825 e!70335)))

(declare-fun c!27184 () Bool)

(assert (=> d!29096 (= c!27184 ((_ is Cons!2011) testedP!367))))

(assert (=> d!29096 (>= (size!1871 totalInput!1363) (size!1871 testedP!367))))

(assert (=> d!29096 (= (getSuffix!68 totalInput!1363 testedP!367) lt!36825)))

(declare-fun b!122553 () Bool)

(assert (=> b!122553 (= e!70335 (getSuffix!68 (tail!238 totalInput!1363) (t!22494 testedP!367)))))

(declare-fun b!122554 () Bool)

(assert (=> b!122554 (= e!70335 totalInput!1363)))

(assert (= (and d!29096 c!27184) b!122553))

(assert (= (and d!29096 (not c!27184)) b!122554))

(declare-fun m!108608 () Bool)

(assert (=> d!29096 m!108608))

(assert (=> d!29096 m!108584))

(assert (=> d!29096 m!108566))

(declare-fun m!108610 () Bool)

(assert (=> b!122553 m!108610))

(assert (=> b!122553 m!108610))

(declare-fun m!108612 () Bool)

(assert (=> b!122553 m!108612))

(assert (=> b!122533 d!29096))

(declare-fun b!122565 () Bool)

(declare-fun e!70344 () Bool)

(assert (=> b!122565 (= e!70344 (isPrefix!129 (tail!238 testedP!367) (tail!238 totalInput!1363)))))

(declare-fun b!122566 () Bool)

(declare-fun e!70342 () Bool)

(assert (=> b!122566 (= e!70342 (>= (size!1871 totalInput!1363) (size!1871 testedP!367)))))

(declare-fun b!122563 () Bool)

(declare-fun e!70343 () Bool)

(assert (=> b!122563 (= e!70343 e!70344)))

(declare-fun res!57309 () Bool)

(assert (=> b!122563 (=> (not res!57309) (not e!70344))))

(assert (=> b!122563 (= res!57309 (not ((_ is Nil!2011) totalInput!1363)))))

(declare-fun d!29098 () Bool)

(assert (=> d!29098 e!70342))

(declare-fun res!57308 () Bool)

(assert (=> d!29098 (=> res!57308 e!70342)))

(declare-fun lt!36828 () Bool)

(assert (=> d!29098 (= res!57308 (not lt!36828))))

(assert (=> d!29098 (= lt!36828 e!70343)))

(declare-fun res!57307 () Bool)

(assert (=> d!29098 (=> res!57307 e!70343)))

(assert (=> d!29098 (= res!57307 ((_ is Nil!2011) testedP!367))))

(assert (=> d!29098 (= (isPrefix!129 testedP!367 totalInput!1363) lt!36828)))

(declare-fun b!122564 () Bool)

(declare-fun res!57306 () Bool)

(assert (=> b!122564 (=> (not res!57306) (not e!70344))))

(assert (=> b!122564 (= res!57306 (= (head!502 testedP!367) (head!502 totalInput!1363)))))

(assert (= (and d!29098 (not res!57307)) b!122563))

(assert (= (and b!122563 res!57309) b!122564))

(assert (= (and b!122564 res!57306) b!122565))

(assert (= (and d!29098 (not res!57308)) b!122566))

(declare-fun m!108614 () Bool)

(assert (=> b!122565 m!108614))

(assert (=> b!122565 m!108610))

(assert (=> b!122565 m!108614))

(assert (=> b!122565 m!108610))

(declare-fun m!108616 () Bool)

(assert (=> b!122565 m!108616))

(assert (=> b!122566 m!108584))

(assert (=> b!122566 m!108566))

(declare-fun m!108618 () Bool)

(assert (=> b!122564 m!108618))

(declare-fun m!108620 () Bool)

(assert (=> b!122564 m!108620))

(assert (=> b!122530 d!29098))

(declare-fun b!122569 () Bool)

(declare-fun e!70347 () Bool)

(assert (=> b!122569 (= e!70347 (isPrefix!129 (tail!238 testedP!367) (tail!238 lt!36818)))))

(declare-fun b!122570 () Bool)

(declare-fun e!70345 () Bool)

(assert (=> b!122570 (= e!70345 (>= (size!1871 lt!36818) (size!1871 testedP!367)))))

(declare-fun b!122567 () Bool)

(declare-fun e!70346 () Bool)

(assert (=> b!122567 (= e!70346 e!70347)))

(declare-fun res!57313 () Bool)

(assert (=> b!122567 (=> (not res!57313) (not e!70347))))

(assert (=> b!122567 (= res!57313 (not ((_ is Nil!2011) lt!36818)))))

(declare-fun d!29100 () Bool)

(assert (=> d!29100 e!70345))

(declare-fun res!57312 () Bool)

(assert (=> d!29100 (=> res!57312 e!70345)))

(declare-fun lt!36829 () Bool)

(assert (=> d!29100 (= res!57312 (not lt!36829))))

(assert (=> d!29100 (= lt!36829 e!70346)))

(declare-fun res!57311 () Bool)

(assert (=> d!29100 (=> res!57311 e!70346)))

(assert (=> d!29100 (= res!57311 ((_ is Nil!2011) testedP!367))))

(assert (=> d!29100 (= (isPrefix!129 testedP!367 lt!36818) lt!36829)))

(declare-fun b!122568 () Bool)

(declare-fun res!57310 () Bool)

(assert (=> b!122568 (=> (not res!57310) (not e!70347))))

(assert (=> b!122568 (= res!57310 (= (head!502 testedP!367) (head!502 lt!36818)))))

(assert (= (and d!29100 (not res!57311)) b!122567))

(assert (= (and b!122567 res!57313) b!122568))

(assert (= (and b!122568 res!57310) b!122569))

(assert (= (and d!29100 (not res!57312)) b!122570))

(assert (=> b!122569 m!108614))

(declare-fun m!108622 () Bool)

(assert (=> b!122569 m!108622))

(assert (=> b!122569 m!108614))

(assert (=> b!122569 m!108622))

(declare-fun m!108624 () Bool)

(assert (=> b!122569 m!108624))

(declare-fun m!108626 () Bool)

(assert (=> b!122570 m!108626))

(assert (=> b!122570 m!108566))

(assert (=> b!122568 m!108618))

(declare-fun m!108628 () Bool)

(assert (=> b!122568 m!108628))

(assert (=> b!122530 d!29100))

(declare-fun d!29102 () Bool)

(assert (=> d!29102 (isPrefix!129 testedP!367 (++!379 testedP!367 testedSuffix!285))))

(declare-fun lt!36832 () Unit!1542)

(declare-fun choose!1589 (List!2017 List!2017) Unit!1542)

(assert (=> d!29102 (= lt!36832 (choose!1589 testedP!367 testedSuffix!285))))

(assert (=> d!29102 (= (lemmaConcatTwoListThenFirstIsPrefix!72 testedP!367 testedSuffix!285) lt!36832)))

(declare-fun bs!11991 () Bool)

(assert (= bs!11991 d!29102))

(assert (=> bs!11991 m!108568))

(assert (=> bs!11991 m!108568))

(declare-fun m!108630 () Bool)

(assert (=> bs!11991 m!108630))

(declare-fun m!108632 () Bool)

(assert (=> bs!11991 m!108632))

(assert (=> b!122530 d!29102))

(declare-fun d!29104 () Bool)

(declare-fun lt!36835 () Int)

(assert (=> d!29104 (>= lt!36835 0)))

(declare-fun e!70350 () Int)

(assert (=> d!29104 (= lt!36835 e!70350)))

(declare-fun c!27187 () Bool)

(assert (=> d!29104 (= c!27187 ((_ is Nil!2011) testedP!367))))

(assert (=> d!29104 (= (size!1871 testedP!367) lt!36835)))

(declare-fun b!122575 () Bool)

(assert (=> b!122575 (= e!70350 0)))

(declare-fun b!122576 () Bool)

(assert (=> b!122576 (= e!70350 (+ 1 (size!1871 (t!22494 testedP!367))))))

(assert (= (and d!29104 c!27187) b!122575))

(assert (= (and d!29104 (not c!27187)) b!122576))

(declare-fun m!108634 () Bool)

(assert (=> b!122576 m!108634))

(assert (=> b!122539 d!29104))

(declare-fun d!29106 () Bool)

(assert (=> d!29106 (= (head!502 testedSuffix!285) (h!7408 testedSuffix!285))))

(assert (=> b!122541 d!29106))

(declare-fun d!29108 () Bool)

(assert (=> d!29108 (= (tail!238 testedSuffix!285) (t!22494 testedSuffix!285))))

(assert (=> b!122541 d!29108))

(declare-fun d!29110 () Bool)

(assert (=> d!29110 (= (head!502 lt!36803) (h!7408 lt!36803))))

(assert (=> b!122541 d!29110))

(declare-fun b!122579 () Bool)

(declare-fun e!70353 () Bool)

(assert (=> b!122579 (= e!70353 (isPrefix!129 (tail!238 (++!379 testedP!367 (Cons!2011 (head!502 lt!36803) Nil!2011))) (tail!238 totalInput!1363)))))

(declare-fun e!70351 () Bool)

(declare-fun b!122580 () Bool)

(assert (=> b!122580 (= e!70351 (>= (size!1871 totalInput!1363) (size!1871 (++!379 testedP!367 (Cons!2011 (head!502 lt!36803) Nil!2011)))))))

(declare-fun b!122577 () Bool)

(declare-fun e!70352 () Bool)

(assert (=> b!122577 (= e!70352 e!70353)))

(declare-fun res!57317 () Bool)

(assert (=> b!122577 (=> (not res!57317) (not e!70353))))

(assert (=> b!122577 (= res!57317 (not ((_ is Nil!2011) totalInput!1363)))))

(declare-fun d!29112 () Bool)

(assert (=> d!29112 e!70351))

(declare-fun res!57316 () Bool)

(assert (=> d!29112 (=> res!57316 e!70351)))

(declare-fun lt!36836 () Bool)

(assert (=> d!29112 (= res!57316 (not lt!36836))))

(assert (=> d!29112 (= lt!36836 e!70352)))

(declare-fun res!57315 () Bool)

(assert (=> d!29112 (=> res!57315 e!70352)))

(assert (=> d!29112 (= res!57315 ((_ is Nil!2011) (++!379 testedP!367 (Cons!2011 (head!502 lt!36803) Nil!2011))))))

(assert (=> d!29112 (= (isPrefix!129 (++!379 testedP!367 (Cons!2011 (head!502 lt!36803) Nil!2011)) totalInput!1363) lt!36836)))

(declare-fun b!122578 () Bool)

(declare-fun res!57314 () Bool)

(assert (=> b!122578 (=> (not res!57314) (not e!70353))))

(assert (=> b!122578 (= res!57314 (= (head!502 (++!379 testedP!367 (Cons!2011 (head!502 lt!36803) Nil!2011))) (head!502 totalInput!1363)))))

(assert (= (and d!29112 (not res!57315)) b!122577))

(assert (= (and b!122577 res!57317) b!122578))

(assert (= (and b!122578 res!57314) b!122579))

(assert (= (and d!29112 (not res!57316)) b!122580))

(assert (=> b!122579 m!108554))

(declare-fun m!108636 () Bool)

(assert (=> b!122579 m!108636))

(assert (=> b!122579 m!108610))

(assert (=> b!122579 m!108636))

(assert (=> b!122579 m!108610))

(declare-fun m!108638 () Bool)

(assert (=> b!122579 m!108638))

(assert (=> b!122580 m!108584))

(assert (=> b!122580 m!108554))

(declare-fun m!108640 () Bool)

(assert (=> b!122580 m!108640))

(assert (=> b!122578 m!108554))

(declare-fun m!108642 () Bool)

(assert (=> b!122578 m!108642))

(assert (=> b!122578 m!108620))

(assert (=> b!122541 d!29112))

(declare-fun d!29114 () Bool)

(declare-fun nullableFct!22 (Regex!553) Bool)

(assert (=> d!29114 (= (nullable!88 r!15532) (nullableFct!22 r!15532))))

(declare-fun bs!11992 () Bool)

(assert (= bs!11992 d!29114))

(declare-fun m!108644 () Bool)

(assert (=> bs!11992 m!108644))

(assert (=> b!122541 d!29114))

(declare-fun d!29116 () Bool)

(assert (=> d!29116 (isPrefix!129 (++!379 testedP!367 (Cons!2011 (head!502 (getSuffix!68 totalInput!1363 testedP!367)) Nil!2011)) totalInput!1363)))

(declare-fun lt!36839 () Unit!1542)

(declare-fun choose!1590 (List!2017 List!2017) Unit!1542)

(assert (=> d!29116 (= lt!36839 (choose!1590 testedP!367 totalInput!1363))))

(assert (=> d!29116 (isPrefix!129 testedP!367 totalInput!1363)))

(assert (=> d!29116 (= (lemmaAddHeadSuffixToPrefixStillPrefix!31 testedP!367 totalInput!1363) lt!36839)))

(declare-fun bs!11993 () Bool)

(assert (= bs!11993 d!29116))

(declare-fun m!108646 () Bool)

(assert (=> bs!11993 m!108646))

(assert (=> bs!11993 m!108578))

(assert (=> bs!11993 m!108576))

(declare-fun m!108648 () Bool)

(assert (=> bs!11993 m!108648))

(assert (=> bs!11993 m!108646))

(declare-fun m!108650 () Bool)

(assert (=> bs!11993 m!108650))

(declare-fun m!108652 () Bool)

(assert (=> bs!11993 m!108652))

(assert (=> bs!11993 m!108576))

(assert (=> b!122541 d!29116))

(declare-fun d!29118 () Bool)

(assert (=> d!29118 (= (++!379 (++!379 testedP!367 (Cons!2011 lt!36817 Nil!2011)) lt!36810) totalInput!1363)))

(declare-fun lt!36842 () Unit!1542)

(declare-fun choose!1591 (List!2017 C!2028 List!2017 List!2017) Unit!1542)

(assert (=> d!29118 (= lt!36842 (choose!1591 testedP!367 lt!36817 lt!36810 totalInput!1363))))

(assert (=> d!29118 (= (++!379 testedP!367 (Cons!2011 lt!36817 lt!36810)) totalInput!1363)))

(assert (=> d!29118 (= (lemmaMoveElementToOtherListKeepsConcatEq!25 testedP!367 lt!36817 lt!36810 totalInput!1363) lt!36842)))

(declare-fun bs!11994 () Bool)

(assert (= bs!11994 d!29118))

(assert (=> bs!11994 m!108564))

(assert (=> bs!11994 m!108564))

(declare-fun m!108654 () Bool)

(assert (=> bs!11994 m!108654))

(declare-fun m!108656 () Bool)

(assert (=> bs!11994 m!108656))

(declare-fun m!108658 () Bool)

(assert (=> bs!11994 m!108658))

(assert (=> b!122541 d!29118))

(declare-fun b!122590 () Bool)

(declare-fun e!70359 () List!2017)

(assert (=> b!122590 (= e!70359 (Cons!2011 (h!7408 lt!36806) (++!379 (t!22494 lt!36806) lt!36810)))))

(declare-fun b!122589 () Bool)

(assert (=> b!122589 (= e!70359 lt!36810)))

(declare-fun b!122591 () Bool)

(declare-fun res!57322 () Bool)

(declare-fun e!70358 () Bool)

(assert (=> b!122591 (=> (not res!57322) (not e!70358))))

(declare-fun lt!36845 () List!2017)

(assert (=> b!122591 (= res!57322 (= (size!1871 lt!36845) (+ (size!1871 lt!36806) (size!1871 lt!36810))))))

(declare-fun b!122592 () Bool)

(assert (=> b!122592 (= e!70358 (or (not (= lt!36810 Nil!2011)) (= lt!36845 lt!36806)))))

(declare-fun d!29120 () Bool)

(assert (=> d!29120 e!70358))

(declare-fun res!57323 () Bool)

(assert (=> d!29120 (=> (not res!57323) (not e!70358))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!227 (List!2017) (InoxSet C!2028))

(assert (=> d!29120 (= res!57323 (= (content!227 lt!36845) ((_ map or) (content!227 lt!36806) (content!227 lt!36810))))))

(assert (=> d!29120 (= lt!36845 e!70359)))

(declare-fun c!27190 () Bool)

(assert (=> d!29120 (= c!27190 ((_ is Nil!2011) lt!36806))))

(assert (=> d!29120 (= (++!379 lt!36806 lt!36810) lt!36845)))

(assert (= (and d!29120 c!27190) b!122589))

(assert (= (and d!29120 (not c!27190)) b!122590))

(assert (= (and d!29120 res!57323) b!122591))

(assert (= (and b!122591 res!57322) b!122592))

(declare-fun m!108660 () Bool)

(assert (=> b!122590 m!108660))

(declare-fun m!108662 () Bool)

(assert (=> b!122591 m!108662))

(declare-fun m!108664 () Bool)

(assert (=> b!122591 m!108664))

(declare-fun m!108666 () Bool)

(assert (=> b!122591 m!108666))

(declare-fun m!108668 () Bool)

(assert (=> d!29120 m!108668))

(declare-fun m!108670 () Bool)

(assert (=> d!29120 m!108670))

(declare-fun m!108672 () Bool)

(assert (=> d!29120 m!108672))

(assert (=> b!122541 d!29120))

(declare-fun b!122594 () Bool)

(declare-fun e!70361 () List!2017)

(assert (=> b!122594 (= e!70361 (Cons!2011 (h!7408 testedP!367) (++!379 (t!22494 testedP!367) (Cons!2011 lt!36817 Nil!2011))))))

(declare-fun b!122593 () Bool)

(assert (=> b!122593 (= e!70361 (Cons!2011 lt!36817 Nil!2011))))

(declare-fun b!122595 () Bool)

(declare-fun res!57324 () Bool)

(declare-fun e!70360 () Bool)

(assert (=> b!122595 (=> (not res!57324) (not e!70360))))

(declare-fun lt!36846 () List!2017)

(assert (=> b!122595 (= res!57324 (= (size!1871 lt!36846) (+ (size!1871 testedP!367) (size!1871 (Cons!2011 lt!36817 Nil!2011)))))))

(declare-fun b!122596 () Bool)

(assert (=> b!122596 (= e!70360 (or (not (= (Cons!2011 lt!36817 Nil!2011) Nil!2011)) (= lt!36846 testedP!367)))))

(declare-fun d!29122 () Bool)

(assert (=> d!29122 e!70360))

(declare-fun res!57325 () Bool)

(assert (=> d!29122 (=> (not res!57325) (not e!70360))))

(assert (=> d!29122 (= res!57325 (= (content!227 lt!36846) ((_ map or) (content!227 testedP!367) (content!227 (Cons!2011 lt!36817 Nil!2011)))))))

(assert (=> d!29122 (= lt!36846 e!70361)))

(declare-fun c!27191 () Bool)

(assert (=> d!29122 (= c!27191 ((_ is Nil!2011) testedP!367))))

(assert (=> d!29122 (= (++!379 testedP!367 (Cons!2011 lt!36817 Nil!2011)) lt!36846)))

(assert (= (and d!29122 c!27191) b!122593))

(assert (= (and d!29122 (not c!27191)) b!122594))

(assert (= (and d!29122 res!57325) b!122595))

(assert (= (and b!122595 res!57324) b!122596))

(declare-fun m!108674 () Bool)

(assert (=> b!122594 m!108674))

(declare-fun m!108676 () Bool)

(assert (=> b!122595 m!108676))

(assert (=> b!122595 m!108566))

(declare-fun m!108678 () Bool)

(assert (=> b!122595 m!108678))

(declare-fun m!108680 () Bool)

(assert (=> d!29122 m!108680))

(declare-fun m!108682 () Bool)

(assert (=> d!29122 m!108682))

(declare-fun m!108684 () Bool)

(assert (=> d!29122 m!108684))

(assert (=> b!122541 d!29122))

(declare-fun b!122598 () Bool)

(declare-fun e!70363 () List!2017)

(assert (=> b!122598 (= e!70363 (Cons!2011 (h!7408 testedP!367) (++!379 (t!22494 testedP!367) (Cons!2011 (head!502 lt!36803) Nil!2011))))))

(declare-fun b!122597 () Bool)

(assert (=> b!122597 (= e!70363 (Cons!2011 (head!502 lt!36803) Nil!2011))))

(declare-fun b!122599 () Bool)

(declare-fun res!57326 () Bool)

(declare-fun e!70362 () Bool)

(assert (=> b!122599 (=> (not res!57326) (not e!70362))))

(declare-fun lt!36847 () List!2017)

(assert (=> b!122599 (= res!57326 (= (size!1871 lt!36847) (+ (size!1871 testedP!367) (size!1871 (Cons!2011 (head!502 lt!36803) Nil!2011)))))))

(declare-fun b!122600 () Bool)

(assert (=> b!122600 (= e!70362 (or (not (= (Cons!2011 (head!502 lt!36803) Nil!2011) Nil!2011)) (= lt!36847 testedP!367)))))

(declare-fun d!29124 () Bool)

(assert (=> d!29124 e!70362))

(declare-fun res!57327 () Bool)

(assert (=> d!29124 (=> (not res!57327) (not e!70362))))

(assert (=> d!29124 (= res!57327 (= (content!227 lt!36847) ((_ map or) (content!227 testedP!367) (content!227 (Cons!2011 (head!502 lt!36803) Nil!2011)))))))

(assert (=> d!29124 (= lt!36847 e!70363)))

(declare-fun c!27192 () Bool)

(assert (=> d!29124 (= c!27192 ((_ is Nil!2011) testedP!367))))

(assert (=> d!29124 (= (++!379 testedP!367 (Cons!2011 (head!502 lt!36803) Nil!2011)) lt!36847)))

(assert (= (and d!29124 c!27192) b!122597))

(assert (= (and d!29124 (not c!27192)) b!122598))

(assert (= (and d!29124 res!57327) b!122599))

(assert (= (and b!122599 res!57326) b!122600))

(declare-fun m!108686 () Bool)

(assert (=> b!122598 m!108686))

(declare-fun m!108688 () Bool)

(assert (=> b!122599 m!108688))

(assert (=> b!122599 m!108566))

(declare-fun m!108690 () Bool)

(assert (=> b!122599 m!108690))

(declare-fun m!108692 () Bool)

(assert (=> d!29124 m!108692))

(assert (=> d!29124 m!108682))

(declare-fun m!108694 () Bool)

(assert (=> d!29124 m!108694))

(assert (=> b!122541 d!29124))

(declare-fun d!29126 () Bool)

(declare-fun lt!36848 () Int)

(assert (=> d!29126 (>= lt!36848 0)))

(declare-fun e!70364 () Int)

(assert (=> d!29126 (= lt!36848 e!70364)))

(declare-fun c!27193 () Bool)

(assert (=> d!29126 (= c!27193 ((_ is Nil!2011) totalInput!1363))))

(assert (=> d!29126 (= (size!1871 totalInput!1363) lt!36848)))

(declare-fun b!122601 () Bool)

(assert (=> b!122601 (= e!70364 0)))

(declare-fun b!122602 () Bool)

(assert (=> b!122602 (= e!70364 (+ 1 (size!1871 (t!22494 totalInput!1363))))))

(assert (= (and d!29126 c!27193) b!122601))

(assert (= (and d!29126 (not c!27193)) b!122602))

(declare-fun m!108696 () Bool)

(assert (=> b!122602 m!108696))

(assert (=> b!122537 d!29126))

(declare-fun b!122631 () Bool)

(declare-fun e!70386 () tuple2!2356)

(declare-fun lt!36931 () tuple2!2356)

(assert (=> b!122631 (= e!70386 lt!36931)))

(declare-fun b!122632 () Bool)

(assert (=> b!122632 (= e!70386 (tuple2!2357 testedP!367 testedSuffix!285))))

(declare-fun bm!5227 () Bool)

(declare-fun call!5236 () C!2028)

(assert (=> bm!5227 (= call!5236 (head!502 testedSuffix!285))))

(declare-fun b!122633 () Bool)

(declare-fun e!70382 () tuple2!2356)

(assert (=> b!122633 (= e!70382 (tuple2!2357 Nil!2011 totalInput!1363))))

(declare-fun bm!5228 () Bool)

(declare-fun call!5233 () Unit!1542)

(assert (=> bm!5228 (= call!5233 (lemmaIsPrefixSameLengthThenSameList!42 totalInput!1363 testedP!367 totalInput!1363))))

(declare-fun bm!5229 () Bool)

(declare-fun call!5238 () Unit!1542)

(assert (=> bm!5229 (= call!5238 (lemmaIsPrefixRefl!99 totalInput!1363 totalInput!1363))))

(declare-fun b!122634 () Bool)

(declare-fun e!70384 () tuple2!2356)

(declare-fun call!5239 () tuple2!2356)

(assert (=> b!122634 (= e!70384 call!5239)))

(declare-fun b!122635 () Bool)

(declare-fun e!70381 () Bool)

(declare-fun lt!36926 () tuple2!2356)

(assert (=> b!122635 (= e!70381 (>= (size!1871 (_1!1388 lt!36926)) (size!1871 testedP!367)))))

(declare-fun b!122636 () Bool)

(declare-fun c!27211 () Bool)

(declare-fun call!5234 () Bool)

(assert (=> b!122636 (= c!27211 call!5234)))

(declare-fun lt!36910 () Unit!1542)

(declare-fun lt!36914 () Unit!1542)

(assert (=> b!122636 (= lt!36910 lt!36914)))

(assert (=> b!122636 (= totalInput!1363 testedP!367)))

(assert (=> b!122636 (= lt!36914 call!5233)))

(declare-fun lt!36923 () Unit!1542)

(declare-fun lt!36913 () Unit!1542)

(assert (=> b!122636 (= lt!36923 lt!36913)))

(declare-fun call!5232 () Bool)

(assert (=> b!122636 call!5232))

(assert (=> b!122636 (= lt!36913 call!5238)))

(declare-fun e!70383 () tuple2!2356)

(declare-fun e!70387 () tuple2!2356)

(assert (=> b!122636 (= e!70383 e!70387)))

(declare-fun b!122637 () Bool)

(assert (=> b!122637 (= e!70382 e!70383)))

(declare-fun c!27208 () Bool)

(assert (=> b!122637 (= c!27208 (= testedPSize!285 totalInputSize!643))))

(declare-fun bm!5230 () Bool)

(declare-fun call!5235 () List!2017)

(assert (=> bm!5230 (= call!5235 (tail!238 testedSuffix!285))))

(declare-fun b!122638 () Bool)

(assert (=> b!122638 (= e!70387 (tuple2!2357 Nil!2011 totalInput!1363))))

(declare-fun b!122639 () Bool)

(declare-fun e!70385 () Unit!1542)

(declare-fun Unit!1546 () Unit!1542)

(assert (=> b!122639 (= e!70385 Unit!1546)))

(declare-fun lt!36924 () Unit!1542)

(assert (=> b!122639 (= lt!36924 call!5238)))

(assert (=> b!122639 call!5232))

(declare-fun lt!36911 () Unit!1542)

(assert (=> b!122639 (= lt!36911 lt!36924)))

(declare-fun lt!36919 () Unit!1542)

(assert (=> b!122639 (= lt!36919 call!5233)))

(assert (=> b!122639 (= totalInput!1363 testedP!367)))

(declare-fun lt!36932 () Unit!1542)

(assert (=> b!122639 (= lt!36932 lt!36919)))

(assert (=> b!122639 false))

(declare-fun b!122640 () Bool)

(assert (=> b!122640 (= e!70384 e!70386)))

(assert (=> b!122640 (= lt!36931 call!5239)))

(declare-fun c!27209 () Bool)

(assert (=> b!122640 (= c!27209 (isEmpty!817 (_1!1388 lt!36931)))))

(declare-fun d!29128 () Bool)

(declare-fun e!70388 () Bool)

(assert (=> d!29128 e!70388))

(declare-fun res!57332 () Bool)

(assert (=> d!29128 (=> (not res!57332) (not e!70388))))

(assert (=> d!29128 (= res!57332 (= (++!379 (_1!1388 lt!36926) (_2!1388 lt!36926)) totalInput!1363))))

(assert (=> d!29128 (= lt!36926 e!70382)))

(declare-fun c!27210 () Bool)

(assert (=> d!29128 (= c!27210 (lostCause!73 r!15532))))

(declare-fun lt!36916 () Unit!1542)

(declare-fun Unit!1547 () Unit!1542)

(assert (=> d!29128 (= lt!36916 Unit!1547)))

(assert (=> d!29128 (= (getSuffix!68 totalInput!1363 testedP!367) testedSuffix!285)))

(declare-fun lt!36905 () Unit!1542)

(declare-fun lt!36918 () Unit!1542)

(assert (=> d!29128 (= lt!36905 lt!36918)))

(declare-fun lt!36929 () List!2017)

(assert (=> d!29128 (= testedSuffix!285 lt!36929)))

(assert (=> d!29128 (= lt!36918 (lemmaSamePrefixThenSameSuffix!64 testedP!367 testedSuffix!285 testedP!367 lt!36929 totalInput!1363))))

(assert (=> d!29128 (= lt!36929 (getSuffix!68 totalInput!1363 testedP!367))))

(declare-fun lt!36917 () Unit!1542)

(declare-fun lt!36921 () Unit!1542)

(assert (=> d!29128 (= lt!36917 lt!36921)))

(assert (=> d!29128 (isPrefix!129 testedP!367 (++!379 testedP!367 testedSuffix!285))))

(assert (=> d!29128 (= lt!36921 (lemmaConcatTwoListThenFirstIsPrefix!72 testedP!367 testedSuffix!285))))

(assert (=> d!29128 (validRegex!147 r!15532)))

(assert (=> d!29128 (= (findLongestMatchInner!48 r!15532 testedP!367 testedPSize!285 testedSuffix!285 totalInput!1363 totalInputSize!643) lt!36926)))

(declare-fun bm!5231 () Bool)

(declare-fun lt!36909 () List!2017)

(declare-fun call!5237 () Regex!553)

(assert (=> bm!5231 (= call!5239 (findLongestMatchInner!48 call!5237 lt!36909 (+ testedPSize!285 1) call!5235 totalInput!1363 totalInputSize!643))))

(declare-fun b!122641 () Bool)

(declare-fun Unit!1548 () Unit!1542)

(assert (=> b!122641 (= e!70385 Unit!1548)))

(declare-fun b!122642 () Bool)

(assert (=> b!122642 (= e!70388 e!70381)))

(declare-fun res!57333 () Bool)

(assert (=> b!122642 (=> res!57333 e!70381)))

(assert (=> b!122642 (= res!57333 (isEmpty!817 (_1!1388 lt!36926)))))

(declare-fun b!122643 () Bool)

(assert (=> b!122643 (= e!70387 (tuple2!2357 testedP!367 Nil!2011))))

(declare-fun bm!5232 () Bool)

(assert (=> bm!5232 (= call!5237 (derivativeStep!59 r!15532 call!5236))))

(declare-fun bm!5233 () Bool)

(assert (=> bm!5233 (= call!5232 (isPrefix!129 totalInput!1363 totalInput!1363))))

(declare-fun b!122644 () Bool)

(declare-fun c!27206 () Bool)

(assert (=> b!122644 (= c!27206 call!5234)))

(declare-fun lt!36912 () Unit!1542)

(declare-fun lt!36920 () Unit!1542)

(assert (=> b!122644 (= lt!36912 lt!36920)))

(declare-fun lt!36907 () List!2017)

(declare-fun lt!36922 () C!2028)

(assert (=> b!122644 (= (++!379 (++!379 testedP!367 (Cons!2011 lt!36922 Nil!2011)) lt!36907) totalInput!1363)))

(assert (=> b!122644 (= lt!36920 (lemmaMoveElementToOtherListKeepsConcatEq!25 testedP!367 lt!36922 lt!36907 totalInput!1363))))

(assert (=> b!122644 (= lt!36907 (tail!238 testedSuffix!285))))

(assert (=> b!122644 (= lt!36922 (head!502 testedSuffix!285))))

(declare-fun lt!36925 () Unit!1542)

(declare-fun lt!36908 () Unit!1542)

(assert (=> b!122644 (= lt!36925 lt!36908)))

(assert (=> b!122644 (isPrefix!129 (++!379 testedP!367 (Cons!2011 (head!502 (getSuffix!68 totalInput!1363 testedP!367)) Nil!2011)) totalInput!1363)))

(assert (=> b!122644 (= lt!36908 (lemmaAddHeadSuffixToPrefixStillPrefix!31 testedP!367 totalInput!1363))))

(declare-fun lt!36906 () Unit!1542)

(declare-fun lt!36930 () Unit!1542)

(assert (=> b!122644 (= lt!36906 lt!36930)))

(assert (=> b!122644 (= lt!36930 (lemmaAddHeadSuffixToPrefixStillPrefix!31 testedP!367 totalInput!1363))))

(assert (=> b!122644 (= lt!36909 (++!379 testedP!367 (Cons!2011 (head!502 testedSuffix!285) Nil!2011)))))

(declare-fun lt!36927 () Unit!1542)

(assert (=> b!122644 (= lt!36927 e!70385)))

(declare-fun c!27207 () Bool)

(assert (=> b!122644 (= c!27207 (= (size!1871 testedP!367) (size!1871 totalInput!1363)))))

(declare-fun lt!36928 () Unit!1542)

(declare-fun lt!36915 () Unit!1542)

(assert (=> b!122644 (= lt!36928 lt!36915)))

(assert (=> b!122644 (<= (size!1871 testedP!367) (size!1871 totalInput!1363))))

(assert (=> b!122644 (= lt!36915 (lemmaIsPrefixThenSmallerEqSize!41 testedP!367 totalInput!1363))))

(assert (=> b!122644 (= e!70383 e!70384)))

(declare-fun bm!5234 () Bool)

(assert (=> bm!5234 (= call!5234 (nullable!88 r!15532))))

(assert (= (and d!29128 c!27210) b!122633))

(assert (= (and d!29128 (not c!27210)) b!122637))

(assert (= (and b!122637 c!27208) b!122636))

(assert (= (and b!122637 (not c!27208)) b!122644))

(assert (= (and b!122636 c!27211) b!122643))

(assert (= (and b!122636 (not c!27211)) b!122638))

(assert (= (and b!122644 c!27207) b!122639))

(assert (= (and b!122644 (not c!27207)) b!122641))

(assert (= (and b!122644 c!27206) b!122640))

(assert (= (and b!122644 (not c!27206)) b!122634))

(assert (= (and b!122640 c!27209) b!122632))

(assert (= (and b!122640 (not c!27209)) b!122631))

(assert (= (or b!122640 b!122634) bm!5230))

(assert (= (or b!122640 b!122634) bm!5227))

(assert (= (or b!122640 b!122634) bm!5232))

(assert (= (or b!122640 b!122634) bm!5231))

(assert (= (or b!122636 b!122639) bm!5229))

(assert (= (or b!122636 b!122639) bm!5233))

(assert (= (or b!122636 b!122644) bm!5234))

(assert (= (or b!122636 b!122639) bm!5228))

(assert (= (and d!29128 res!57332) b!122642))

(assert (= (and b!122642 (not res!57333)) b!122635))

(declare-fun m!108698 () Bool)

(assert (=> b!122642 m!108698))

(assert (=> bm!5229 m!108598))

(assert (=> bm!5227 m!108558))

(declare-fun m!108700 () Bool)

(assert (=> bm!5231 m!108700))

(assert (=> bm!5228 m!108602))

(declare-fun m!108702 () Bool)

(assert (=> bm!5232 m!108702))

(declare-fun m!108704 () Bool)

(assert (=> b!122640 m!108704))

(assert (=> bm!5233 m!108600))

(assert (=> bm!5230 m!108550))

(assert (=> bm!5234 m!108548))

(assert (=> d!29128 m!108576))

(assert (=> d!29128 m!108568))

(declare-fun m!108706 () Bool)

(assert (=> d!29128 m!108706))

(assert (=> d!29128 m!108592))

(assert (=> d!29128 m!108572))

(declare-fun m!108708 () Bool)

(assert (=> d!29128 m!108708))

(assert (=> d!29128 m!108568))

(assert (=> d!29128 m!108630))

(assert (=> d!29128 m!108582))

(assert (=> b!122644 m!108584))

(declare-fun m!108710 () Bool)

(assert (=> b!122644 m!108710))

(declare-fun m!108712 () Bool)

(assert (=> b!122644 m!108712))

(assert (=> b!122644 m!108646))

(assert (=> b!122644 m!108650))

(declare-fun m!108714 () Bool)

(assert (=> b!122644 m!108714))

(assert (=> b!122644 m!108566))

(assert (=> b!122644 m!108550))

(assert (=> b!122644 m!108558))

(assert (=> b!122644 m!108576))

(assert (=> b!122644 m!108562))

(assert (=> b!122644 m!108576))

(assert (=> b!122644 m!108648))

(assert (=> b!122644 m!108596))

(assert (=> b!122644 m!108714))

(declare-fun m!108716 () Bool)

(assert (=> b!122644 m!108716))

(assert (=> b!122644 m!108646))

(declare-fun m!108718 () Bool)

(assert (=> b!122635 m!108718))

(assert (=> b!122635 m!108566))

(assert (=> b!122548 d!29128))

(declare-fun d!29130 () Bool)

(assert (=> d!29130 (<= (size!1871 testedP!367) (size!1871 totalInput!1363))))

(declare-fun lt!36935 () Unit!1542)

(declare-fun choose!1592 (List!2017 List!2017) Unit!1542)

(assert (=> d!29130 (= lt!36935 (choose!1592 testedP!367 totalInput!1363))))

(assert (=> d!29130 (isPrefix!129 testedP!367 totalInput!1363)))

(assert (=> d!29130 (= (lemmaIsPrefixThenSmallerEqSize!41 testedP!367 totalInput!1363) lt!36935)))

(declare-fun bs!11995 () Bool)

(assert (= bs!11995 d!29130))

(assert (=> bs!11995 m!108566))

(assert (=> bs!11995 m!108584))

(declare-fun m!108720 () Bool)

(assert (=> bs!11995 m!108720))

(assert (=> bs!11995 m!108578))

(assert (=> b!122547 d!29130))

(declare-fun b!122646 () Bool)

(declare-fun e!70390 () List!2017)

(assert (=> b!122646 (= e!70390 (Cons!2011 (h!7408 testedP!367) (++!379 (t!22494 testedP!367) testedSuffix!285)))))

(declare-fun b!122645 () Bool)

(assert (=> b!122645 (= e!70390 testedSuffix!285)))

(declare-fun b!122647 () Bool)

(declare-fun res!57334 () Bool)

(declare-fun e!70389 () Bool)

(assert (=> b!122647 (=> (not res!57334) (not e!70389))))

(declare-fun lt!36936 () List!2017)

(assert (=> b!122647 (= res!57334 (= (size!1871 lt!36936) (+ (size!1871 testedP!367) (size!1871 testedSuffix!285))))))

(declare-fun b!122648 () Bool)

(assert (=> b!122648 (= e!70389 (or (not (= testedSuffix!285 Nil!2011)) (= lt!36936 testedP!367)))))

(declare-fun d!29132 () Bool)

(assert (=> d!29132 e!70389))

(declare-fun res!57335 () Bool)

(assert (=> d!29132 (=> (not res!57335) (not e!70389))))

(assert (=> d!29132 (= res!57335 (= (content!227 lt!36936) ((_ map or) (content!227 testedP!367) (content!227 testedSuffix!285))))))

(assert (=> d!29132 (= lt!36936 e!70390)))

(declare-fun c!27212 () Bool)

(assert (=> d!29132 (= c!27212 ((_ is Nil!2011) testedP!367))))

(assert (=> d!29132 (= (++!379 testedP!367 testedSuffix!285) lt!36936)))

(assert (= (and d!29132 c!27212) b!122645))

(assert (= (and d!29132 (not c!27212)) b!122646))

(assert (= (and d!29132 res!57335) b!122647))

(assert (= (and b!122647 res!57334) b!122648))

(declare-fun m!108722 () Bool)

(assert (=> b!122646 m!108722))

(declare-fun m!108724 () Bool)

(assert (=> b!122647 m!108724))

(assert (=> b!122647 m!108566))

(declare-fun m!108726 () Bool)

(assert (=> b!122647 m!108726))

(declare-fun m!108728 () Bool)

(assert (=> d!29132 m!108728))

(assert (=> d!29132 m!108682))

(declare-fun m!108730 () Bool)

(assert (=> d!29132 m!108730))

(assert (=> b!122529 d!29132))

(declare-fun c!27218 () Bool)

(declare-fun bm!5241 () Bool)

(declare-fun c!27217 () Bool)

(declare-fun call!5246 () Bool)

(assert (=> bm!5241 (= call!5246 (validRegex!147 (ite c!27218 (reg!882 r!15532) (ite c!27217 (regOne!1619 r!15532) (regTwo!1618 r!15532)))))))

(declare-fun b!122667 () Bool)

(declare-fun e!70410 () Bool)

(declare-fun e!70406 () Bool)

(assert (=> b!122667 (= e!70410 e!70406)))

(assert (=> b!122667 (= c!27217 ((_ is Union!553) r!15532))))

(declare-fun d!29134 () Bool)

(declare-fun res!57346 () Bool)

(declare-fun e!70407 () Bool)

(assert (=> d!29134 (=> res!57346 e!70407)))

(assert (=> d!29134 (= res!57346 ((_ is ElementMatch!553) r!15532))))

(assert (=> d!29134 (= (validRegex!147 r!15532) e!70407)))

(declare-fun bm!5242 () Bool)

(declare-fun call!5248 () Bool)

(assert (=> bm!5242 (= call!5248 (validRegex!147 (ite c!27217 (regTwo!1619 r!15532) (regOne!1618 r!15532))))))

(declare-fun b!122668 () Bool)

(declare-fun e!70411 () Bool)

(assert (=> b!122668 (= e!70411 call!5248)))

(declare-fun b!122669 () Bool)

(declare-fun e!70405 () Bool)

(assert (=> b!122669 (= e!70405 call!5246)))

(declare-fun b!122670 () Bool)

(assert (=> b!122670 (= e!70410 e!70405)))

(declare-fun res!57350 () Bool)

(assert (=> b!122670 (= res!57350 (not (nullable!88 (reg!882 r!15532))))))

(assert (=> b!122670 (=> (not res!57350) (not e!70405))))

(declare-fun b!122671 () Bool)

(declare-fun e!70408 () Bool)

(declare-fun call!5247 () Bool)

(assert (=> b!122671 (= e!70408 call!5247)))

(declare-fun b!122672 () Bool)

(declare-fun res!57348 () Bool)

(declare-fun e!70409 () Bool)

(assert (=> b!122672 (=> res!57348 e!70409)))

(assert (=> b!122672 (= res!57348 (not ((_ is Concat!937) r!15532)))))

(assert (=> b!122672 (= e!70406 e!70409)))

(declare-fun b!122673 () Bool)

(assert (=> b!122673 (= e!70407 e!70410)))

(assert (=> b!122673 (= c!27218 ((_ is Star!553) r!15532))))

(declare-fun b!122674 () Bool)

(assert (=> b!122674 (= e!70409 e!70408)))

(declare-fun res!57349 () Bool)

(assert (=> b!122674 (=> (not res!57349) (not e!70408))))

(assert (=> b!122674 (= res!57349 call!5248)))

(declare-fun bm!5243 () Bool)

(assert (=> bm!5243 (= call!5247 call!5246)))

(declare-fun b!122675 () Bool)

(declare-fun res!57347 () Bool)

(assert (=> b!122675 (=> (not res!57347) (not e!70411))))

(assert (=> b!122675 (= res!57347 call!5247)))

(assert (=> b!122675 (= e!70406 e!70411)))

(assert (= (and d!29134 (not res!57346)) b!122673))

(assert (= (and b!122673 c!27218) b!122670))

(assert (= (and b!122673 (not c!27218)) b!122667))

(assert (= (and b!122670 res!57350) b!122669))

(assert (= (and b!122667 c!27217) b!122675))

(assert (= (and b!122667 (not c!27217)) b!122672))

(assert (= (and b!122675 res!57347) b!122668))

(assert (= (and b!122672 (not res!57348)) b!122674))

(assert (= (and b!122674 res!57349) b!122671))

(assert (= (or b!122668 b!122674) bm!5242))

(assert (= (or b!122675 b!122671) bm!5243))

(assert (= (or b!122669 bm!5243) bm!5241))

(declare-fun m!108732 () Bool)

(assert (=> bm!5241 m!108732))

(declare-fun m!108734 () Bool)

(assert (=> bm!5242 m!108734))

(declare-fun m!108736 () Bool)

(assert (=> b!122670 m!108736))

(assert (=> start!12386 d!29134))

(declare-fun d!29136 () Bool)

(declare-fun res!57353 () Bool)

(declare-fun e!70414 () Bool)

(assert (=> d!29136 (=> (not res!57353) (not e!70414))))

(assert (=> d!29136 (= res!57353 ((_ is HashMap!415) (cache!868 cache!470)))))

(assert (=> d!29136 (= (inv!2540 cache!470) e!70414)))

(declare-fun b!122678 () Bool)

(declare-fun validCacheMap!29 (MutableMap!415) Bool)

(assert (=> b!122678 (= e!70414 (validCacheMap!29 (cache!868 cache!470)))))

(assert (= (and d!29136 res!57353) b!122678))

(declare-fun m!108738 () Bool)

(assert (=> b!122678 m!108738))

(assert (=> start!12386 d!29136))

(declare-fun d!29138 () Bool)

(assert (=> d!29138 (isPrefix!129 totalInput!1363 totalInput!1363)))

(declare-fun lt!36939 () Unit!1542)

(declare-fun choose!1593 (List!2017 List!2017) Unit!1542)

(assert (=> d!29138 (= lt!36939 (choose!1593 totalInput!1363 totalInput!1363))))

(assert (=> d!29138 (= (lemmaIsPrefixRefl!99 totalInput!1363 totalInput!1363) lt!36939)))

(declare-fun bs!11996 () Bool)

(assert (= bs!11996 d!29138))

(assert (=> bs!11996 m!108600))

(declare-fun m!108740 () Bool)

(assert (=> bs!11996 m!108740))

(assert (=> b!122538 d!29138))

(declare-fun b!122681 () Bool)

(declare-fun e!70417 () Bool)

(assert (=> b!122681 (= e!70417 (isPrefix!129 (tail!238 totalInput!1363) (tail!238 totalInput!1363)))))

(declare-fun b!122682 () Bool)

(declare-fun e!70415 () Bool)

(assert (=> b!122682 (= e!70415 (>= (size!1871 totalInput!1363) (size!1871 totalInput!1363)))))

(declare-fun b!122679 () Bool)

(declare-fun e!70416 () Bool)

(assert (=> b!122679 (= e!70416 e!70417)))

(declare-fun res!57357 () Bool)

(assert (=> b!122679 (=> (not res!57357) (not e!70417))))

(assert (=> b!122679 (= res!57357 (not ((_ is Nil!2011) totalInput!1363)))))

(declare-fun d!29140 () Bool)

(assert (=> d!29140 e!70415))

(declare-fun res!57356 () Bool)

(assert (=> d!29140 (=> res!57356 e!70415)))

(declare-fun lt!36940 () Bool)

(assert (=> d!29140 (= res!57356 (not lt!36940))))

(assert (=> d!29140 (= lt!36940 e!70416)))

(declare-fun res!57355 () Bool)

(assert (=> d!29140 (=> res!57355 e!70416)))

(assert (=> d!29140 (= res!57355 ((_ is Nil!2011) totalInput!1363))))

(assert (=> d!29140 (= (isPrefix!129 totalInput!1363 totalInput!1363) lt!36940)))

(declare-fun b!122680 () Bool)

(declare-fun res!57354 () Bool)

(assert (=> b!122680 (=> (not res!57354) (not e!70417))))

(assert (=> b!122680 (= res!57354 (= (head!502 totalInput!1363) (head!502 totalInput!1363)))))

(assert (= (and d!29140 (not res!57355)) b!122679))

(assert (= (and b!122679 res!57357) b!122680))

(assert (= (and b!122680 res!57354) b!122681))

(assert (= (and d!29140 (not res!57356)) b!122682))

(assert (=> b!122681 m!108610))

(assert (=> b!122681 m!108610))

(assert (=> b!122681 m!108610))

(assert (=> b!122681 m!108610))

(declare-fun m!108742 () Bool)

(assert (=> b!122681 m!108742))

(assert (=> b!122682 m!108584))

(assert (=> b!122682 m!108584))

(assert (=> b!122680 m!108620))

(assert (=> b!122680 m!108620))

(assert (=> b!122538 d!29140))

(declare-fun d!29142 () Bool)

(assert (=> d!29142 (= totalInput!1363 testedP!367)))

(declare-fun lt!36943 () Unit!1542)

(declare-fun choose!1594 (List!2017 List!2017 List!2017) Unit!1542)

(assert (=> d!29142 (= lt!36943 (choose!1594 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!29142 (isPrefix!129 totalInput!1363 totalInput!1363)))

(assert (=> d!29142 (= (lemmaIsPrefixSameLengthThenSameList!42 totalInput!1363 testedP!367 totalInput!1363) lt!36943)))

(declare-fun bs!11997 () Bool)

(assert (= bs!11997 d!29142))

(declare-fun m!108744 () Bool)

(assert (=> bs!11997 m!108744))

(assert (=> bs!11997 m!108600))

(assert (=> b!122538 d!29142))

(declare-fun d!29144 () Bool)

(assert (=> d!29144 (= (isEmpty!817 (_1!1388 lt!36811)) ((_ is Nil!2011) (_1!1388 lt!36811)))))

(assert (=> b!122545 d!29144))

(declare-fun b!122683 () Bool)

(declare-fun e!70423 () tuple2!2356)

(declare-fun lt!36970 () tuple2!2356)

(assert (=> b!122683 (= e!70423 lt!36970)))

(declare-fun b!122684 () Bool)

(assert (=> b!122684 (= e!70423 (tuple2!2357 lt!36806 lt!36810))))

(declare-fun bm!5244 () Bool)

(declare-fun call!5253 () C!2028)

(assert (=> bm!5244 (= call!5253 (head!502 lt!36810))))

(declare-fun b!122685 () Bool)

(declare-fun e!70419 () tuple2!2356)

(assert (=> b!122685 (= e!70419 (tuple2!2357 Nil!2011 totalInput!1363))))

(declare-fun bm!5245 () Bool)

(declare-fun call!5250 () Unit!1542)

(assert (=> bm!5245 (= call!5250 (lemmaIsPrefixSameLengthThenSameList!42 totalInput!1363 lt!36806 totalInput!1363))))

(declare-fun bm!5246 () Bool)

(declare-fun call!5255 () Unit!1542)

(assert (=> bm!5246 (= call!5255 (lemmaIsPrefixRefl!99 totalInput!1363 totalInput!1363))))

(declare-fun b!122686 () Bool)

(declare-fun e!70421 () tuple2!2356)

(declare-fun call!5256 () tuple2!2356)

(assert (=> b!122686 (= e!70421 call!5256)))

(declare-fun b!122687 () Bool)

(declare-fun e!70418 () Bool)

(declare-fun lt!36965 () tuple2!2356)

(assert (=> b!122687 (= e!70418 (>= (size!1871 (_1!1388 lt!36965)) (size!1871 lt!36806)))))

(declare-fun b!122688 () Bool)

(declare-fun c!27224 () Bool)

(declare-fun call!5251 () Bool)

(assert (=> b!122688 (= c!27224 call!5251)))

(declare-fun lt!36949 () Unit!1542)

(declare-fun lt!36953 () Unit!1542)

(assert (=> b!122688 (= lt!36949 lt!36953)))

(assert (=> b!122688 (= totalInput!1363 lt!36806)))

(assert (=> b!122688 (= lt!36953 call!5250)))

(declare-fun lt!36962 () Unit!1542)

(declare-fun lt!36952 () Unit!1542)

(assert (=> b!122688 (= lt!36962 lt!36952)))

(declare-fun call!5249 () Bool)

(assert (=> b!122688 call!5249))

(assert (=> b!122688 (= lt!36952 call!5255)))

(declare-fun e!70420 () tuple2!2356)

(declare-fun e!70424 () tuple2!2356)

(assert (=> b!122688 (= e!70420 e!70424)))

(declare-fun b!122689 () Bool)

(assert (=> b!122689 (= e!70419 e!70420)))

(declare-fun c!27221 () Bool)

(assert (=> b!122689 (= c!27221 (= (+ 1 testedPSize!285) totalInputSize!643))))

(declare-fun bm!5247 () Bool)

(declare-fun call!5252 () List!2017)

(assert (=> bm!5247 (= call!5252 (tail!238 lt!36810))))

(declare-fun b!122690 () Bool)

(assert (=> b!122690 (= e!70424 (tuple2!2357 Nil!2011 totalInput!1363))))

(declare-fun b!122691 () Bool)

(declare-fun e!70422 () Unit!1542)

(declare-fun Unit!1549 () Unit!1542)

(assert (=> b!122691 (= e!70422 Unit!1549)))

(declare-fun lt!36963 () Unit!1542)

(assert (=> b!122691 (= lt!36963 call!5255)))

(assert (=> b!122691 call!5249))

(declare-fun lt!36950 () Unit!1542)

(assert (=> b!122691 (= lt!36950 lt!36963)))

(declare-fun lt!36958 () Unit!1542)

(assert (=> b!122691 (= lt!36958 call!5250)))

(assert (=> b!122691 (= totalInput!1363 lt!36806)))

(declare-fun lt!36971 () Unit!1542)

(assert (=> b!122691 (= lt!36971 lt!36958)))

(assert (=> b!122691 false))

(declare-fun b!122692 () Bool)

(assert (=> b!122692 (= e!70421 e!70423)))

(assert (=> b!122692 (= lt!36970 call!5256)))

(declare-fun c!27222 () Bool)

(assert (=> b!122692 (= c!27222 (isEmpty!817 (_1!1388 lt!36970)))))

(declare-fun d!29146 () Bool)

(declare-fun e!70425 () Bool)

(assert (=> d!29146 e!70425))

(declare-fun res!57358 () Bool)

(assert (=> d!29146 (=> (not res!57358) (not e!70425))))

(assert (=> d!29146 (= res!57358 (= (++!379 (_1!1388 lt!36965) (_2!1388 lt!36965)) totalInput!1363))))

(assert (=> d!29146 (= lt!36965 e!70419)))

(declare-fun c!27223 () Bool)

(assert (=> d!29146 (= c!27223 (lostCause!73 lt!36809))))

(declare-fun lt!36955 () Unit!1542)

(declare-fun Unit!1550 () Unit!1542)

(assert (=> d!29146 (= lt!36955 Unit!1550)))

(assert (=> d!29146 (= (getSuffix!68 totalInput!1363 lt!36806) lt!36810)))

(declare-fun lt!36944 () Unit!1542)

(declare-fun lt!36957 () Unit!1542)

(assert (=> d!29146 (= lt!36944 lt!36957)))

(declare-fun lt!36968 () List!2017)

(assert (=> d!29146 (= lt!36810 lt!36968)))

(assert (=> d!29146 (= lt!36957 (lemmaSamePrefixThenSameSuffix!64 lt!36806 lt!36810 lt!36806 lt!36968 totalInput!1363))))

(assert (=> d!29146 (= lt!36968 (getSuffix!68 totalInput!1363 lt!36806))))

(declare-fun lt!36956 () Unit!1542)

(declare-fun lt!36960 () Unit!1542)

(assert (=> d!29146 (= lt!36956 lt!36960)))

(assert (=> d!29146 (isPrefix!129 lt!36806 (++!379 lt!36806 lt!36810))))

(assert (=> d!29146 (= lt!36960 (lemmaConcatTwoListThenFirstIsPrefix!72 lt!36806 lt!36810))))

(assert (=> d!29146 (validRegex!147 lt!36809)))

(assert (=> d!29146 (= (findLongestMatchInner!48 lt!36809 lt!36806 (+ 1 testedPSize!285) lt!36810 totalInput!1363 totalInputSize!643) lt!36965)))

(declare-fun call!5254 () Regex!553)

(declare-fun bm!5248 () Bool)

(declare-fun lt!36948 () List!2017)

(assert (=> bm!5248 (= call!5256 (findLongestMatchInner!48 call!5254 lt!36948 (+ 1 testedPSize!285 1) call!5252 totalInput!1363 totalInputSize!643))))

(declare-fun b!122693 () Bool)

(declare-fun Unit!1551 () Unit!1542)

(assert (=> b!122693 (= e!70422 Unit!1551)))

(declare-fun b!122694 () Bool)

(assert (=> b!122694 (= e!70425 e!70418)))

(declare-fun res!57359 () Bool)

(assert (=> b!122694 (=> res!57359 e!70418)))

(assert (=> b!122694 (= res!57359 (isEmpty!817 (_1!1388 lt!36965)))))

(declare-fun b!122695 () Bool)

(assert (=> b!122695 (= e!70424 (tuple2!2357 lt!36806 Nil!2011))))

(declare-fun bm!5249 () Bool)

(assert (=> bm!5249 (= call!5254 (derivativeStep!59 lt!36809 call!5253))))

(declare-fun bm!5250 () Bool)

(assert (=> bm!5250 (= call!5249 (isPrefix!129 totalInput!1363 totalInput!1363))))

(declare-fun b!122696 () Bool)

(declare-fun c!27219 () Bool)

(assert (=> b!122696 (= c!27219 call!5251)))

(declare-fun lt!36951 () Unit!1542)

(declare-fun lt!36959 () Unit!1542)

(assert (=> b!122696 (= lt!36951 lt!36959)))

(declare-fun lt!36946 () List!2017)

(declare-fun lt!36961 () C!2028)

(assert (=> b!122696 (= (++!379 (++!379 lt!36806 (Cons!2011 lt!36961 Nil!2011)) lt!36946) totalInput!1363)))

(assert (=> b!122696 (= lt!36959 (lemmaMoveElementToOtherListKeepsConcatEq!25 lt!36806 lt!36961 lt!36946 totalInput!1363))))

(assert (=> b!122696 (= lt!36946 (tail!238 lt!36810))))

(assert (=> b!122696 (= lt!36961 (head!502 lt!36810))))

(declare-fun lt!36964 () Unit!1542)

(declare-fun lt!36947 () Unit!1542)

(assert (=> b!122696 (= lt!36964 lt!36947)))

(assert (=> b!122696 (isPrefix!129 (++!379 lt!36806 (Cons!2011 (head!502 (getSuffix!68 totalInput!1363 lt!36806)) Nil!2011)) totalInput!1363)))

(assert (=> b!122696 (= lt!36947 (lemmaAddHeadSuffixToPrefixStillPrefix!31 lt!36806 totalInput!1363))))

(declare-fun lt!36945 () Unit!1542)

(declare-fun lt!36969 () Unit!1542)

(assert (=> b!122696 (= lt!36945 lt!36969)))

(assert (=> b!122696 (= lt!36969 (lemmaAddHeadSuffixToPrefixStillPrefix!31 lt!36806 totalInput!1363))))

(assert (=> b!122696 (= lt!36948 (++!379 lt!36806 (Cons!2011 (head!502 lt!36810) Nil!2011)))))

(declare-fun lt!36966 () Unit!1542)

(assert (=> b!122696 (= lt!36966 e!70422)))

(declare-fun c!27220 () Bool)

(assert (=> b!122696 (= c!27220 (= (size!1871 lt!36806) (size!1871 totalInput!1363)))))

(declare-fun lt!36967 () Unit!1542)

(declare-fun lt!36954 () Unit!1542)

(assert (=> b!122696 (= lt!36967 lt!36954)))

(assert (=> b!122696 (<= (size!1871 lt!36806) (size!1871 totalInput!1363))))

(assert (=> b!122696 (= lt!36954 (lemmaIsPrefixThenSmallerEqSize!41 lt!36806 totalInput!1363))))

(assert (=> b!122696 (= e!70420 e!70421)))

(declare-fun bm!5251 () Bool)

(assert (=> bm!5251 (= call!5251 (nullable!88 lt!36809))))

(assert (= (and d!29146 c!27223) b!122685))

(assert (= (and d!29146 (not c!27223)) b!122689))

(assert (= (and b!122689 c!27221) b!122688))

(assert (= (and b!122689 (not c!27221)) b!122696))

(assert (= (and b!122688 c!27224) b!122695))

(assert (= (and b!122688 (not c!27224)) b!122690))

(assert (= (and b!122696 c!27220) b!122691))

(assert (= (and b!122696 (not c!27220)) b!122693))

(assert (= (and b!122696 c!27219) b!122692))

(assert (= (and b!122696 (not c!27219)) b!122686))

(assert (= (and b!122692 c!27222) b!122684))

(assert (= (and b!122692 (not c!27222)) b!122683))

(assert (= (or b!122692 b!122686) bm!5247))

(assert (= (or b!122692 b!122686) bm!5244))

(assert (= (or b!122692 b!122686) bm!5249))

(assert (= (or b!122692 b!122686) bm!5248))

(assert (= (or b!122688 b!122691) bm!5246))

(assert (= (or b!122688 b!122691) bm!5250))

(assert (= (or b!122688 b!122696) bm!5251))

(assert (= (or b!122688 b!122691) bm!5245))

(assert (= (and d!29146 res!57358) b!122694))

(assert (= (and b!122694 (not res!57359)) b!122687))

(declare-fun m!108746 () Bool)

(assert (=> b!122694 m!108746))

(assert (=> bm!5246 m!108598))

(declare-fun m!108748 () Bool)

(assert (=> bm!5244 m!108748))

(declare-fun m!108750 () Bool)

(assert (=> bm!5248 m!108750))

(declare-fun m!108752 () Bool)

(assert (=> bm!5245 m!108752))

(declare-fun m!108754 () Bool)

(assert (=> bm!5249 m!108754))

(declare-fun m!108756 () Bool)

(assert (=> b!122692 m!108756))

(assert (=> bm!5250 m!108600))

(declare-fun m!108758 () Bool)

(assert (=> bm!5247 m!108758))

(declare-fun m!108760 () Bool)

(assert (=> bm!5251 m!108760))

(declare-fun m!108762 () Bool)

(assert (=> d!29146 m!108762))

(assert (=> d!29146 m!108552))

(declare-fun m!108764 () Bool)

(assert (=> d!29146 m!108764))

(declare-fun m!108766 () Bool)

(assert (=> d!29146 m!108766))

(declare-fun m!108768 () Bool)

(assert (=> d!29146 m!108768))

(declare-fun m!108770 () Bool)

(assert (=> d!29146 m!108770))

(assert (=> d!29146 m!108552))

(declare-fun m!108772 () Bool)

(assert (=> d!29146 m!108772))

(declare-fun m!108774 () Bool)

(assert (=> d!29146 m!108774))

(assert (=> b!122696 m!108584))

(declare-fun m!108776 () Bool)

(assert (=> b!122696 m!108776))

(declare-fun m!108778 () Bool)

(assert (=> b!122696 m!108778))

(declare-fun m!108780 () Bool)

(assert (=> b!122696 m!108780))

(declare-fun m!108782 () Bool)

(assert (=> b!122696 m!108782))

(declare-fun m!108784 () Bool)

(assert (=> b!122696 m!108784))

(assert (=> b!122696 m!108664))

(assert (=> b!122696 m!108758))

(assert (=> b!122696 m!108748))

(assert (=> b!122696 m!108762))

(declare-fun m!108786 () Bool)

(assert (=> b!122696 m!108786))

(assert (=> b!122696 m!108762))

(declare-fun m!108788 () Bool)

(assert (=> b!122696 m!108788))

(declare-fun m!108790 () Bool)

(assert (=> b!122696 m!108790))

(assert (=> b!122696 m!108784))

(declare-fun m!108792 () Bool)

(assert (=> b!122696 m!108792))

(assert (=> b!122696 m!108780))

(declare-fun m!108794 () Bool)

(assert (=> b!122687 m!108794))

(assert (=> b!122687 m!108664))

(assert (=> b!122545 d!29146))

(declare-fun d!29148 () Bool)

(declare-fun e!70428 () Bool)

(assert (=> d!29148 e!70428))

(declare-fun res!57362 () Bool)

(assert (=> d!29148 (=> (not res!57362) (not e!70428))))

(declare-fun lt!36974 () tuple2!2356)

(assert (=> d!29148 (= res!57362 (= lt!36974 (findLongestMatchInner!48 lt!36809 lt!36806 (+ 1 testedPSize!285) lt!36810 totalInput!1363 totalInputSize!643)))))

(declare-fun choose!1595 (Regex!553 List!2017 Int List!2017 List!2017 Int Cache!266) tuple2!2356)

(assert (=> d!29148 (= lt!36974 (choose!1595 lt!36809 lt!36806 (+ 1 testedPSize!285) lt!36810 totalInput!1363 totalInputSize!643 cache!470))))

(assert (=> d!29148 (validRegex!147 lt!36809)))

(assert (=> d!29148 (= (findLongestMatchInnerMem!10 lt!36809 lt!36806 (+ 1 testedPSize!285) lt!36810 totalInput!1363 totalInputSize!643 cache!470) lt!36974)))

(declare-fun b!122699 () Bool)

(assert (=> b!122699 (= e!70428 (valid!376 cache!470))))

(assert (= (and d!29148 res!57362) b!122699))

(assert (=> d!29148 m!108540))

(declare-fun m!108796 () Bool)

(assert (=> d!29148 m!108796))

(assert (=> d!29148 m!108766))

(assert (=> b!122699 m!108536))

(assert (=> b!122545 d!29148))

(declare-fun bm!5260 () Bool)

(declare-fun c!27236 () Bool)

(declare-fun call!5267 () Regex!553)

(declare-fun c!27238 () Bool)

(assert (=> bm!5260 (= call!5267 (derivativeStep!59 (ite c!27238 (regTwo!1619 r!15532) (ite c!27236 (reg!882 r!15532) (regOne!1618 r!15532))) lt!36817))))

(declare-fun bm!5261 () Bool)

(declare-fun call!5266 () Regex!553)

(declare-fun call!5268 () Regex!553)

(assert (=> bm!5261 (= call!5266 call!5268)))

(declare-fun d!29150 () Bool)

(declare-fun lt!36977 () Regex!553)

(assert (=> d!29150 (validRegex!147 lt!36977)))

(declare-fun e!70443 () Regex!553)

(assert (=> d!29150 (= lt!36977 e!70443)))

(declare-fun c!27235 () Bool)

(assert (=> d!29150 (= c!27235 (or ((_ is EmptyExpr!553) r!15532) ((_ is EmptyLang!553) r!15532)))))

(assert (=> d!29150 (validRegex!147 r!15532)))

(assert (=> d!29150 (= (derivativeStep!59 r!15532 lt!36817) lt!36977)))

(declare-fun b!122720 () Bool)

(declare-fun c!27237 () Bool)

(assert (=> b!122720 (= c!27237 (nullable!88 (regOne!1618 r!15532)))))

(declare-fun e!70441 () Regex!553)

(declare-fun e!70439 () Regex!553)

(assert (=> b!122720 (= e!70441 e!70439)))

(declare-fun b!122721 () Bool)

(assert (=> b!122721 (= e!70443 EmptyLang!553)))

(declare-fun call!5265 () Regex!553)

(declare-fun b!122722 () Bool)

(assert (=> b!122722 (= e!70439 (Union!553 (Concat!937 call!5266 (regTwo!1618 r!15532)) call!5265))))

(declare-fun bm!5262 () Bool)

(assert (=> bm!5262 (= call!5268 call!5267)))

(declare-fun b!122723 () Bool)

(assert (=> b!122723 (= e!70441 (Concat!937 call!5268 r!15532))))

(declare-fun b!122724 () Bool)

(assert (=> b!122724 (= e!70439 (Union!553 (Concat!937 call!5266 (regTwo!1618 r!15532)) EmptyLang!553))))

(declare-fun b!122725 () Bool)

(declare-fun e!70440 () Regex!553)

(assert (=> b!122725 (= e!70443 e!70440)))

(declare-fun c!27239 () Bool)

(assert (=> b!122725 (= c!27239 ((_ is ElementMatch!553) r!15532))))

(declare-fun b!122726 () Bool)

(declare-fun e!70442 () Regex!553)

(assert (=> b!122726 (= e!70442 e!70441)))

(assert (=> b!122726 (= c!27236 ((_ is Star!553) r!15532))))

(declare-fun bm!5263 () Bool)

(assert (=> bm!5263 (= call!5265 (derivativeStep!59 (ite c!27238 (regOne!1619 r!15532) (regTwo!1618 r!15532)) lt!36817))))

(declare-fun b!122727 () Bool)

(assert (=> b!122727 (= e!70442 (Union!553 call!5265 call!5267))))

(declare-fun b!122728 () Bool)

(assert (=> b!122728 (= c!27238 ((_ is Union!553) r!15532))))

(assert (=> b!122728 (= e!70440 e!70442)))

(declare-fun b!122729 () Bool)

(assert (=> b!122729 (= e!70440 (ite (= lt!36817 (c!27181 r!15532)) EmptyExpr!553 EmptyLang!553))))

(assert (= (and d!29150 c!27235) b!122721))

(assert (= (and d!29150 (not c!27235)) b!122725))

(assert (= (and b!122725 c!27239) b!122729))

(assert (= (and b!122725 (not c!27239)) b!122728))

(assert (= (and b!122728 c!27238) b!122727))

(assert (= (and b!122728 (not c!27238)) b!122726))

(assert (= (and b!122726 c!27236) b!122723))

(assert (= (and b!122726 (not c!27236)) b!122720))

(assert (= (and b!122720 c!27237) b!122722))

(assert (= (and b!122720 (not c!27237)) b!122724))

(assert (= (or b!122722 b!122724) bm!5261))

(assert (= (or b!122723 bm!5261) bm!5262))

(assert (= (or b!122727 bm!5262) bm!5260))

(assert (= (or b!122727 b!122722) bm!5263))

(declare-fun m!108798 () Bool)

(assert (=> bm!5260 m!108798))

(declare-fun m!108800 () Bool)

(assert (=> d!29150 m!108800))

(assert (=> d!29150 m!108592))

(declare-fun m!108802 () Bool)

(assert (=> b!122720 m!108802))

(declare-fun m!108804 () Bool)

(assert (=> bm!5263 m!108804))

(assert (=> b!122545 d!29150))

(declare-fun d!29152 () Bool)

(assert (=> d!29152 (= (array_inv!519 (_keys!710 (v!13370 (underlying!1037 (v!13371 (underlying!1038 (cache!868 cache!470))))))) (bvsge (size!1869 (_keys!710 (v!13370 (underlying!1037 (v!13371 (underlying!1038 (cache!868 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!122534 d!29152))

(declare-fun d!29154 () Bool)

(assert (=> d!29154 (= (array_inv!520 (_values!697 (v!13370 (underlying!1037 (v!13371 (underlying!1038 (cache!868 cache!470))))))) (bvsge (size!1870 (_values!697 (v!13370 (underlying!1037 (v!13371 (underlying!1038 (cache!868 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!122534 d!29154))

(declare-fun d!29156 () Bool)

(assert (=> d!29156 (= (valid!376 cache!470) (validCacheMap!29 (cache!868 cache!470)))))

(declare-fun bs!11998 () Bool)

(assert (= bs!11998 d!29156))

(assert (=> bs!11998 m!108738))

(assert (=> b!122535 d!29156))

(declare-fun b!122734 () Bool)

(declare-fun e!70446 () Bool)

(declare-fun tp!67253 () Bool)

(assert (=> b!122734 (= e!70446 (and tp_is_empty!1161 tp!67253))))

(assert (=> b!122522 (= tp!67241 e!70446)))

(assert (= (and b!122522 ((_ is Cons!2011) (t!22494 testedSuffix!285))) b!122734))

(declare-fun e!70449 () Bool)

(assert (=> b!122532 (= tp!67238 e!70449)))

(declare-fun b!122747 () Bool)

(declare-fun tp!67267 () Bool)

(assert (=> b!122747 (= e!70449 tp!67267)))

(declare-fun b!122746 () Bool)

(declare-fun tp!67266 () Bool)

(declare-fun tp!67264 () Bool)

(assert (=> b!122746 (= e!70449 (and tp!67266 tp!67264))))

(declare-fun b!122745 () Bool)

(assert (=> b!122745 (= e!70449 tp_is_empty!1161)))

(declare-fun b!122748 () Bool)

(declare-fun tp!67265 () Bool)

(declare-fun tp!67268 () Bool)

(assert (=> b!122748 (= e!70449 (and tp!67265 tp!67268))))

(assert (= (and b!122532 ((_ is ElementMatch!553) (reg!882 r!15532))) b!122745))

(assert (= (and b!122532 ((_ is Concat!937) (reg!882 r!15532))) b!122746))

(assert (= (and b!122532 ((_ is Star!553) (reg!882 r!15532))) b!122747))

(assert (= (and b!122532 ((_ is Union!553) (reg!882 r!15532))) b!122748))

(declare-fun b!122749 () Bool)

(declare-fun e!70450 () Bool)

(declare-fun tp!67269 () Bool)

(assert (=> b!122749 (= e!70450 (and tp_is_empty!1161 tp!67269))))

(assert (=> b!122531 (= tp!67240 e!70450)))

(assert (= (and b!122531 ((_ is Cons!2011) (t!22494 totalInput!1363))) b!122749))

(declare-fun e!70451 () Bool)

(assert (=> b!122542 (= tp!67242 e!70451)))

(declare-fun b!122752 () Bool)

(declare-fun tp!67273 () Bool)

(assert (=> b!122752 (= e!70451 tp!67273)))

(declare-fun b!122751 () Bool)

(declare-fun tp!67272 () Bool)

(declare-fun tp!67270 () Bool)

(assert (=> b!122751 (= e!70451 (and tp!67272 tp!67270))))

(declare-fun b!122750 () Bool)

(assert (=> b!122750 (= e!70451 tp_is_empty!1161)))

(declare-fun b!122753 () Bool)

(declare-fun tp!67271 () Bool)

(declare-fun tp!67274 () Bool)

(assert (=> b!122753 (= e!70451 (and tp!67271 tp!67274))))

(assert (= (and b!122542 ((_ is ElementMatch!553) (regOne!1619 r!15532))) b!122750))

(assert (= (and b!122542 ((_ is Concat!937) (regOne!1619 r!15532))) b!122751))

(assert (= (and b!122542 ((_ is Star!553) (regOne!1619 r!15532))) b!122752))

(assert (= (and b!122542 ((_ is Union!553) (regOne!1619 r!15532))) b!122753))

(declare-fun e!70452 () Bool)

(assert (=> b!122542 (= tp!67250 e!70452)))

(declare-fun b!122756 () Bool)

(declare-fun tp!67278 () Bool)

(assert (=> b!122756 (= e!70452 tp!67278)))

(declare-fun b!122755 () Bool)

(declare-fun tp!67277 () Bool)

(declare-fun tp!67275 () Bool)

(assert (=> b!122755 (= e!70452 (and tp!67277 tp!67275))))

(declare-fun b!122754 () Bool)

(assert (=> b!122754 (= e!70452 tp_is_empty!1161)))

(declare-fun b!122757 () Bool)

(declare-fun tp!67276 () Bool)

(declare-fun tp!67279 () Bool)

(assert (=> b!122757 (= e!70452 (and tp!67276 tp!67279))))

(assert (= (and b!122542 ((_ is ElementMatch!553) (regTwo!1619 r!15532))) b!122754))

(assert (= (and b!122542 ((_ is Concat!937) (regTwo!1619 r!15532))) b!122755))

(assert (= (and b!122542 ((_ is Star!553) (regTwo!1619 r!15532))) b!122756))

(assert (= (and b!122542 ((_ is Union!553) (regTwo!1619 r!15532))) b!122757))

(declare-fun e!70453 () Bool)

(assert (=> b!122543 (= tp!67247 e!70453)))

(declare-fun b!122760 () Bool)

(declare-fun tp!67283 () Bool)

(assert (=> b!122760 (= e!70453 tp!67283)))

(declare-fun b!122759 () Bool)

(declare-fun tp!67282 () Bool)

(declare-fun tp!67280 () Bool)

(assert (=> b!122759 (= e!70453 (and tp!67282 tp!67280))))

(declare-fun b!122758 () Bool)

(assert (=> b!122758 (= e!70453 tp_is_empty!1161)))

(declare-fun b!122761 () Bool)

(declare-fun tp!67281 () Bool)

(declare-fun tp!67284 () Bool)

(assert (=> b!122761 (= e!70453 (and tp!67281 tp!67284))))

(assert (= (and b!122543 ((_ is ElementMatch!553) (regOne!1618 r!15532))) b!122758))

(assert (= (and b!122543 ((_ is Concat!937) (regOne!1618 r!15532))) b!122759))

(assert (= (and b!122543 ((_ is Star!553) (regOne!1618 r!15532))) b!122760))

(assert (= (and b!122543 ((_ is Union!553) (regOne!1618 r!15532))) b!122761))

(declare-fun e!70454 () Bool)

(assert (=> b!122543 (= tp!67244 e!70454)))

(declare-fun b!122764 () Bool)

(declare-fun tp!67288 () Bool)

(assert (=> b!122764 (= e!70454 tp!67288)))

(declare-fun b!122763 () Bool)

(declare-fun tp!67287 () Bool)

(declare-fun tp!67285 () Bool)

(assert (=> b!122763 (= e!70454 (and tp!67287 tp!67285))))

(declare-fun b!122762 () Bool)

(assert (=> b!122762 (= e!70454 tp_is_empty!1161)))

(declare-fun b!122765 () Bool)

(declare-fun tp!67286 () Bool)

(declare-fun tp!67289 () Bool)

(assert (=> b!122765 (= e!70454 (and tp!67286 tp!67289))))

(assert (= (and b!122543 ((_ is ElementMatch!553) (regTwo!1618 r!15532))) b!122762))

(assert (= (and b!122543 ((_ is Concat!937) (regTwo!1618 r!15532))) b!122763))

(assert (= (and b!122543 ((_ is Star!553) (regTwo!1618 r!15532))) b!122764))

(assert (= (and b!122543 ((_ is Union!553) (regTwo!1618 r!15532))) b!122765))

(declare-fun tp!67298 () Bool)

(declare-fun tp!67297 () Bool)

(declare-fun e!70457 () Bool)

(declare-fun b!122770 () Bool)

(declare-fun tp!67296 () Bool)

(assert (=> b!122770 (= e!70457 (and tp!67296 tp_is_empty!1161 tp!67297 tp!67298))))

(assert (=> b!122528 (= tp!67236 e!70457)))

(assert (= (and b!122528 ((_ is Cons!2010) mapDefault!1620)) b!122770))

(declare-fun e!70458 () Bool)

(declare-fun b!122771 () Bool)

(declare-fun tp!67301 () Bool)

(declare-fun tp!67300 () Bool)

(declare-fun tp!67299 () Bool)

(assert (=> b!122771 (= e!70458 (and tp!67299 tp_is_empty!1161 tp!67300 tp!67301))))

(assert (=> b!122534 (= tp!67245 e!70458)))

(assert (= (and b!122534 ((_ is Cons!2010) (zeroValue!675 (v!13370 (underlying!1037 (v!13371 (underlying!1038 (cache!868 cache!470)))))))) b!122771))

(declare-fun tp!67303 () Bool)

(declare-fun tp!67304 () Bool)

(declare-fun b!122772 () Bool)

(declare-fun e!70459 () Bool)

(declare-fun tp!67302 () Bool)

(assert (=> b!122772 (= e!70459 (and tp!67302 tp_is_empty!1161 tp!67303 tp!67304))))

(assert (=> b!122534 (= tp!67249 e!70459)))

(assert (= (and b!122534 ((_ is Cons!2010) (minValue!675 (v!13370 (underlying!1037 (v!13371 (underlying!1038 (cache!868 cache!470)))))))) b!122772))

(declare-fun b!122773 () Bool)

(declare-fun e!70460 () Bool)

(declare-fun tp!67305 () Bool)

(assert (=> b!122773 (= e!70460 (and tp_is_empty!1161 tp!67305))))

(assert (=> b!122526 (= tp!67237 e!70460)))

(assert (= (and b!122526 ((_ is Cons!2011) (t!22494 testedP!367))) b!122773))

(declare-fun b!122781 () Bool)

(declare-fun tp!67325 () Bool)

(declare-fun e!70466 () Bool)

(declare-fun tp!67323 () Bool)

(declare-fun tp!67321 () Bool)

(assert (=> b!122781 (= e!70466 (and tp!67321 tp_is_empty!1161 tp!67323 tp!67325))))

(declare-fun condMapEmpty!1623 () Bool)

(declare-fun mapDefault!1623 () List!2016)

(assert (=> mapNonEmpty!1620 (= condMapEmpty!1623 (= mapRest!1620 ((as const (Array (_ BitVec 32) List!2016)) mapDefault!1623)))))

(declare-fun mapRes!1623 () Bool)

(assert (=> mapNonEmpty!1620 (= tp!67248 (and e!70466 mapRes!1623))))

(declare-fun mapNonEmpty!1623 () Bool)

(declare-fun tp!67326 () Bool)

(declare-fun e!70465 () Bool)

(assert (=> mapNonEmpty!1623 (= mapRes!1623 (and tp!67326 e!70465))))

(declare-fun mapKey!1623 () (_ BitVec 32))

(declare-fun mapValue!1623 () List!2016)

(declare-fun mapRest!1623 () (Array (_ BitVec 32) List!2016))

(assert (=> mapNonEmpty!1623 (= mapRest!1620 (store mapRest!1623 mapKey!1623 mapValue!1623))))

(declare-fun mapIsEmpty!1623 () Bool)

(assert (=> mapIsEmpty!1623 mapRes!1623))

(declare-fun tp!67320 () Bool)

(declare-fun tp!67324 () Bool)

(declare-fun tp!67322 () Bool)

(declare-fun b!122780 () Bool)

(assert (=> b!122780 (= e!70465 (and tp!67322 tp_is_empty!1161 tp!67320 tp!67324))))

(assert (= (and mapNonEmpty!1620 condMapEmpty!1623) mapIsEmpty!1623))

(assert (= (and mapNonEmpty!1620 (not condMapEmpty!1623)) mapNonEmpty!1623))

(assert (= (and mapNonEmpty!1623 ((_ is Cons!2010) mapValue!1623)) b!122780))

(assert (= (and mapNonEmpty!1620 ((_ is Cons!2010) mapDefault!1623)) b!122781))

(declare-fun m!108806 () Bool)

(assert (=> mapNonEmpty!1623 m!108806))

(declare-fun e!70467 () Bool)

(declare-fun tp!67327 () Bool)

(declare-fun tp!67329 () Bool)

(declare-fun b!122782 () Bool)

(declare-fun tp!67328 () Bool)

(assert (=> b!122782 (= e!70467 (and tp!67327 tp_is_empty!1161 tp!67328 tp!67329))))

(assert (=> mapNonEmpty!1620 (= tp!67246 e!70467)))

(assert (= (and mapNonEmpty!1620 ((_ is Cons!2010) mapValue!1620)) b!122782))

(check-sat (not bm!5248) (not b!122720) (not b!122640) (not bm!5229) (not b!122594) (not b!122579) (not b!122644) (not b!122642) (not bm!5247) (not b!122781) (not d!29142) (not b!122771) (not d!29138) (not b!122772) (not bm!5228) (not b!122570) (not d!29092) (not b!122734) (not b!122751) (not b!122566) (not b!122568) (not b!122598) (not b!122646) (not b!122670) (not bm!5234) (not b!122780) (not d!29150) (not b!122647) (not b!122763) (not b!122748) (not bm!5242) (not b!122759) (not b!122692) (not bm!5260) (not b!122749) (not mapNonEmpty!1623) (not b!122694) (not bm!5245) (not d!29124) (not bm!5244) (not b_next!3907) (not b_next!3905) (not bm!5233) (not b!122564) (not b!122760) (not d!29148) (not bm!5241) (not d!29114) (not b!122747) (not b!122687) (not b!122680) (not bm!5251) b_and!6035 (not d!29120) (not d!29096) (not b!122565) (not b!122681) (not b!122756) (not b!122580) (not d!29122) (not b!122752) (not bm!5232) (not b!122553) (not d!29130) (not b!122682) (not d!29118) (not b!122569) (not b!122595) (not b!122761) (not bm!5231) (not b!122764) (not d!29156) (not b!122578) (not b!122599) (not bm!5250) (not d!29094) (not b!122699) (not d!29102) (not d!29116) (not b!122590) (not d!29146) (not b!122576) (not b!122602) (not b!122770) (not b!122696) (not bm!5263) b_and!6037 tp_is_empty!1161 (not b!122635) (not bm!5227) (not b!122765) (not b!122591) (not bm!5230) (not d!29128) (not b!122755) (not b!122773) (not d!29132) (not b!122757) (not bm!5246) (not b!122678) (not b!122782) (not b!122753) (not b!122746) (not bm!5249))
(check-sat b_and!6035 b_and!6037 (not b_next!3905) (not b_next!3907))
