; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11978 () Bool)

(assert start!11978)

(declare-fun b!117366 () Bool)

(declare-fun b_free!3729 () Bool)

(declare-fun b_next!3729 () Bool)

(assert (=> b!117366 (= b_free!3729 (not b_next!3729))))

(declare-fun tp!64122 () Bool)

(declare-fun b_and!5859 () Bool)

(assert (=> b!117366 (= tp!64122 b_and!5859)))

(declare-fun b!117384 () Bool)

(declare-fun b_free!3731 () Bool)

(declare-fun b_next!3731 () Bool)

(assert (=> b!117384 (= b_free!3731 (not b_next!3731))))

(declare-fun tp!64133 () Bool)

(declare-fun b_and!5861 () Bool)

(assert (=> b!117384 (= tp!64133 b_and!5861)))

(declare-fun res!55600 () Bool)

(declare-fun e!66788 () Bool)

(assert (=> start!11978 (=> (not res!55600) (not e!66788))))

(declare-datatypes ((C!1940 0))(
  ( (C!1941 (val!696 Int)) )
))
(declare-datatypes ((Regex!509 0))(
  ( (ElementMatch!509 (c!26727 C!1940)) (Concat!893 (regOne!1530 Regex!509) (regTwo!1530 Regex!509)) (EmptyExpr!509) (Star!509 (reg!838 Regex!509)) (EmptyLang!509) (Union!509 (regOne!1531 Regex!509) (regTwo!1531 Regex!509)) )
))
(declare-fun r!15532 () Regex!509)

(declare-fun validRegex!116 (Regex!509) Bool)

(assert (=> start!11978 (= res!55600 (validRegex!116 r!15532))))

(assert (=> start!11978 e!66788))

(assert (=> start!11978 true))

(declare-fun e!66786 () Bool)

(assert (=> start!11978 e!66786))

(declare-fun e!66781 () Bool)

(assert (=> start!11978 e!66781))

(declare-fun e!66798 () Bool)

(assert (=> start!11978 e!66798))

(declare-fun e!66799 () Bool)

(assert (=> start!11978 e!66799))

(declare-datatypes ((Hashable!371 0))(
  ( (HashableExt!370 (__x!2050 Int)) )
))
(declare-datatypes ((tuple2!2158 0))(
  ( (tuple2!2159 (_1!1289 Regex!509) (_2!1289 C!1940)) )
))
(declare-datatypes ((tuple2!2160 0))(
  ( (tuple2!2161 (_1!1290 tuple2!2158) (_2!1290 Regex!509)) )
))
(declare-datatypes ((List!1932 0))(
  ( (Nil!1926) (Cons!1926 (h!7323 tuple2!2160) (t!22409 List!1932)) )
))
(declare-datatypes ((array!1361 0))(
  ( (array!1362 (arr!634 (Array (_ BitVec 32) (_ BitVec 64))) (size!1748 (_ BitVec 32))) )
))
(declare-datatypes ((array!1363 0))(
  ( (array!1364 (arr!635 (Array (_ BitVec 32) List!1932)) (size!1749 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!750 0))(
  ( (LongMapFixedSize!751 (defaultEntry!714 Int) (mask!1297 (_ BitVec 32)) (extraKeys!621 (_ BitVec 32)) (zeroValue!631 List!1932) (minValue!631 List!1932) (_size!883 (_ BitVec 32)) (_keys!666 array!1361) (_values!653 array!1363) (_vacant!436 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1489 0))(
  ( (Cell!1490 (v!13281 LongMapFixedSize!750)) )
))
(declare-datatypes ((MutLongMap!375 0))(
  ( (LongMap!375 (underlying!949 Cell!1489)) (MutLongMapExt!374 (__x!2051 Int)) )
))
(declare-datatypes ((Cell!1491 0))(
  ( (Cell!1492 (v!13282 MutLongMap!375)) )
))
(declare-datatypes ((MutableMap!371 0))(
  ( (MutableMapExt!370 (__x!2052 Int)) (HashMap!371 (underlying!950 Cell!1491) (hashF!2247 Hashable!371) (_size!884 (_ BitVec 32)) (defaultValue!520 Int)) )
))
(declare-datatypes ((Cache!178 0))(
  ( (Cache!179 (cache!823 MutableMap!371)) )
))
(declare-fun cache!470 () Cache!178)

(declare-fun e!66795 () Bool)

(declare-fun inv!2443 (Cache!178) Bool)

(assert (=> start!11978 (and (inv!2443 cache!470) e!66795)))

(declare-fun b!117365 () Bool)

(declare-fun e!66792 () Bool)

(declare-fun e!66793 () Bool)

(assert (=> b!117365 (= e!66792 (not e!66793))))

(declare-fun res!55595 () Bool)

(assert (=> b!117365 (=> res!55595 e!66793)))

(declare-datatypes ((List!1933 0))(
  ( (Nil!1927) (Cons!1927 (h!7324 C!1940) (t!22410 List!1933)) )
))
(declare-fun testedP!367 () List!1933)

(declare-fun totalInput!1363 () List!1933)

(declare-fun isPrefix!96 (List!1933 List!1933) Bool)

(assert (=> b!117365 (= res!55595 (not (isPrefix!96 testedP!367 totalInput!1363)))))

(declare-fun lt!34823 () List!1933)

(assert (=> b!117365 (isPrefix!96 testedP!367 lt!34823)))

(declare-datatypes ((Unit!1433 0))(
  ( (Unit!1434) )
))
(declare-fun lt!34812 () Unit!1433)

(declare-fun testedSuffix!285 () List!1933)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!42 (List!1933 List!1933) Unit!1433)

(assert (=> b!117365 (= lt!34812 (lemmaConcatTwoListThenFirstIsPrefix!42 testedP!367 testedSuffix!285))))

(declare-fun tp!64132 () Bool)

(declare-fun e!66800 () Bool)

(declare-fun e!66796 () Bool)

(declare-fun tp!64128 () Bool)

(declare-fun array_inv!453 (array!1361) Bool)

(declare-fun array_inv!454 (array!1363) Bool)

(assert (=> b!117366 (= e!66796 (and tp!64122 tp!64132 tp!64128 (array_inv!453 (_keys!666 (v!13281 (underlying!949 (v!13282 (underlying!950 (cache!823 cache!470))))))) (array_inv!454 (_values!653 (v!13281 (underlying!949 (v!13282 (underlying!950 (cache!823 cache!470))))))) e!66800))))

(declare-fun b!117367 () Bool)

(declare-fun tp!64130 () Bool)

(declare-fun mapRes!1459 () Bool)

(assert (=> b!117367 (= e!66800 (and tp!64130 mapRes!1459))))

(declare-fun condMapEmpty!1459 () Bool)

(declare-fun mapDefault!1459 () List!1932)

(assert (=> b!117367 (= condMapEmpty!1459 (= (arr!635 (_values!653 (v!13281 (underlying!949 (v!13282 (underlying!950 (cache!823 cache!470))))))) ((as const (Array (_ BitVec 32) List!1932)) mapDefault!1459)))))

(declare-fun b!117368 () Bool)

(declare-fun tp_is_empty!1073 () Bool)

(declare-fun tp!64120 () Bool)

(assert (=> b!117368 (= e!66781 (and tp_is_empty!1073 tp!64120))))

(declare-fun b!117369 () Bool)

(declare-fun tp!64119 () Bool)

(assert (=> b!117369 (= e!66786 tp!64119)))

(declare-fun mapNonEmpty!1459 () Bool)

(declare-fun tp!64124 () Bool)

(declare-fun tp!64127 () Bool)

(assert (=> mapNonEmpty!1459 (= mapRes!1459 (and tp!64124 tp!64127))))

(declare-fun mapKey!1459 () (_ BitVec 32))

(declare-fun mapRest!1459 () (Array (_ BitVec 32) List!1932))

(declare-fun mapValue!1459 () List!1932)

(assert (=> mapNonEmpty!1459 (= (arr!635 (_values!653 (v!13281 (underlying!949 (v!13282 (underlying!950 (cache!823 cache!470))))))) (store mapRest!1459 mapKey!1459 mapValue!1459))))

(declare-fun b!117370 () Bool)

(declare-fun e!66789 () Bool)

(assert (=> b!117370 (= e!66795 e!66789)))

(declare-fun b!117371 () Bool)

(declare-fun e!66790 () Bool)

(declare-fun e!66801 () Bool)

(assert (=> b!117371 (= e!66790 e!66801)))

(declare-fun res!55594 () Bool)

(assert (=> b!117371 (=> (not res!55594) (not e!66801))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!34827 () Int)

(assert (=> b!117371 (= res!55594 (= testedPSize!285 lt!34827))))

(declare-fun size!1750 (List!1933) Int)

(assert (=> b!117371 (= lt!34827 (size!1750 testedP!367))))

(declare-fun b!117372 () Bool)

(declare-fun e!66785 () Bool)

(assert (=> b!117372 (= e!66785 true)))

(declare-fun lt!34828 () Int)

(declare-fun lt!34817 () List!1933)

(assert (=> b!117372 (= lt!34828 (size!1750 lt!34817))))

(declare-fun b!117373 () Bool)

(declare-fun tp!64131 () Bool)

(assert (=> b!117373 (= e!66799 (and tp_is_empty!1073 tp!64131))))

(declare-fun mapIsEmpty!1459 () Bool)

(assert (=> mapIsEmpty!1459 mapRes!1459))

(declare-fun b!117374 () Bool)

(declare-fun e!66783 () Bool)

(declare-fun e!66794 () Bool)

(assert (=> b!117374 (= e!66783 e!66794)))

(declare-fun res!55599 () Bool)

(assert (=> b!117374 (=> res!55599 e!66794)))

(declare-fun lt!34821 () Int)

(assert (=> b!117374 (= res!55599 (>= lt!34827 lt!34821))))

(declare-fun lt!34814 () Unit!1433)

(declare-fun e!66782 () Unit!1433)

(assert (=> b!117374 (= lt!34814 e!66782)))

(declare-fun c!26726 () Bool)

(assert (=> b!117374 (= c!26726 (= lt!34827 lt!34821))))

(assert (=> b!117374 (<= lt!34827 lt!34821)))

(declare-fun lt!34825 () Unit!1433)

(declare-fun lemmaIsPrefixThenSmallerEqSize!23 (List!1933 List!1933) Unit!1433)

(assert (=> b!117374 (= lt!34825 (lemmaIsPrefixThenSmallerEqSize!23 testedP!367 totalInput!1363))))

(declare-fun b!117375 () Bool)

(declare-fun tp!64129 () Bool)

(declare-fun tp!64126 () Bool)

(assert (=> b!117375 (= e!66786 (and tp!64129 tp!64126))))

(declare-fun b!117376 () Bool)

(declare-fun res!55603 () Bool)

(assert (=> b!117376 (=> res!55603 e!66783)))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!117376 (= res!55603 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!117377 () Bool)

(declare-fun res!55601 () Bool)

(assert (=> b!117377 (=> (not res!55601) (not e!66788))))

(declare-fun valid!339 (Cache!178) Bool)

(assert (=> b!117377 (= res!55601 (valid!339 cache!470))))

(declare-fun b!117378 () Bool)

(declare-fun e!66787 () Bool)

(declare-fun e!66791 () Bool)

(declare-fun lt!34824 () MutLongMap!375)

(get-info :version)

(assert (=> b!117378 (= e!66787 (and e!66791 ((_ is LongMap!375) lt!34824)))))

(assert (=> b!117378 (= lt!34824 (v!13282 (underlying!950 (cache!823 cache!470))))))

(declare-fun b!117379 () Bool)

(declare-fun Unit!1435 () Unit!1433)

(assert (=> b!117379 (= e!66782 Unit!1435)))

(declare-fun lt!34815 () Unit!1433)

(declare-fun lemmaIsPrefixRefl!78 (List!1933 List!1933) Unit!1433)

(assert (=> b!117379 (= lt!34815 (lemmaIsPrefixRefl!78 totalInput!1363 totalInput!1363))))

(assert (=> b!117379 (isPrefix!96 totalInput!1363 totalInput!1363)))

(declare-fun lt!34813 () Unit!1433)

(declare-fun lemmaIsPrefixSameLengthThenSameList!24 (List!1933 List!1933 List!1933) Unit!1433)

(assert (=> b!117379 (= lt!34813 (lemmaIsPrefixSameLengthThenSameList!24 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!117379 false))

(declare-fun b!117380 () Bool)

(declare-fun tp!64121 () Bool)

(assert (=> b!117380 (= e!66798 (and tp_is_empty!1073 tp!64121))))

(declare-fun b!117381 () Bool)

(assert (=> b!117381 (= e!66793 e!66783)))

(declare-fun res!55602 () Bool)

(assert (=> b!117381 (=> res!55602 e!66783)))

(declare-fun lostCause!50 (Regex!509) Bool)

(assert (=> b!117381 (= res!55602 (lostCause!50 r!15532))))

(declare-fun lt!34818 () List!1933)

(assert (=> b!117381 (and (= testedSuffix!285 lt!34818) (= lt!34818 testedSuffix!285))))

(declare-fun lt!34822 () Unit!1433)

(declare-fun lemmaSamePrefixThenSameSuffix!38 (List!1933 List!1933 List!1933 List!1933 List!1933) Unit!1433)

(assert (=> b!117381 (= lt!34822 (lemmaSamePrefixThenSameSuffix!38 testedP!367 testedSuffix!285 testedP!367 lt!34818 totalInput!1363))))

(declare-fun getSuffix!39 (List!1933 List!1933) List!1933)

(assert (=> b!117381 (= lt!34818 (getSuffix!39 totalInput!1363 testedP!367))))

(declare-fun b!117382 () Bool)

(declare-fun tp!64125 () Bool)

(declare-fun tp!64123 () Bool)

(assert (=> b!117382 (= e!66786 (and tp!64125 tp!64123))))

(declare-fun b!117383 () Bool)

(assert (=> b!117383 (= e!66794 e!66785)))

(declare-fun res!55597 () Bool)

(assert (=> b!117383 (=> res!55597 e!66785)))

(declare-fun nullable!72 (Regex!509) Bool)

(assert (=> b!117383 (= res!55597 (nullable!72 r!15532))))

(declare-fun lt!34816 () List!1933)

(declare-fun ++!348 (List!1933 List!1933) List!1933)

(assert (=> b!117383 (= (++!348 lt!34817 lt!34816) totalInput!1363)))

(declare-fun lt!34826 () C!1940)

(declare-fun lt!34820 () Unit!1433)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!13 (List!1933 C!1940 List!1933 List!1933) Unit!1433)

(assert (=> b!117383 (= lt!34820 (lemmaMoveElementToOtherListKeepsConcatEq!13 testedP!367 lt!34826 lt!34816 totalInput!1363))))

(declare-fun tail!223 (List!1933) List!1933)

(assert (=> b!117383 (= lt!34816 (tail!223 testedSuffix!285))))

(declare-fun head!487 (List!1933) C!1940)

(assert (=> b!117383 (isPrefix!96 (++!348 testedP!367 (Cons!1927 (head!487 lt!34818) Nil!1927)) totalInput!1363)))

(declare-fun lt!34819 () Unit!1433)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!17 (List!1933 List!1933) Unit!1433)

(assert (=> b!117383 (= lt!34819 (lemmaAddHeadSuffixToPrefixStillPrefix!17 testedP!367 totalInput!1363))))

(assert (=> b!117383 (= lt!34817 (++!348 testedP!367 (Cons!1927 lt!34826 Nil!1927)))))

(assert (=> b!117383 (= lt!34826 (head!487 testedSuffix!285))))

(assert (=> b!117384 (= e!66789 (and e!66787 tp!64133))))

(declare-fun b!117385 () Bool)

(assert (=> b!117385 (= e!66788 e!66790)))

(declare-fun res!55596 () Bool)

(assert (=> b!117385 (=> (not res!55596) (not e!66790))))

(assert (=> b!117385 (= res!55596 (= lt!34823 totalInput!1363))))

(assert (=> b!117385 (= lt!34823 (++!348 testedP!367 testedSuffix!285))))

(declare-fun b!117386 () Bool)

(assert (=> b!117386 (= e!66801 e!66792)))

(declare-fun res!55593 () Bool)

(assert (=> b!117386 (=> (not res!55593) (not e!66792))))

(assert (=> b!117386 (= res!55593 (= totalInputSize!643 lt!34821))))

(assert (=> b!117386 (= lt!34821 (size!1750 totalInput!1363))))

(declare-fun b!117387 () Bool)

(assert (=> b!117387 (= e!66786 tp_is_empty!1073)))

(declare-fun b!117388 () Bool)

(declare-fun Unit!1436 () Unit!1433)

(assert (=> b!117388 (= e!66782 Unit!1436)))

(declare-fun b!117389 () Bool)

(declare-fun e!66784 () Bool)

(assert (=> b!117389 (= e!66784 e!66796)))

(declare-fun b!117390 () Bool)

(declare-fun res!55598 () Bool)

(assert (=> b!117390 (=> res!55598 e!66785)))

(declare-fun derivativeStep!45 (Regex!509 C!1940) Regex!509)

(assert (=> b!117390 (= res!55598 (not (validRegex!116 (derivativeStep!45 r!15532 lt!34826))))))

(declare-fun b!117391 () Bool)

(assert (=> b!117391 (= e!66791 e!66784)))

(assert (= (and start!11978 res!55600) b!117377))

(assert (= (and b!117377 res!55601) b!117385))

(assert (= (and b!117385 res!55596) b!117371))

(assert (= (and b!117371 res!55594) b!117386))

(assert (= (and b!117386 res!55593) b!117365))

(assert (= (and b!117365 (not res!55595)) b!117381))

(assert (= (and b!117381 (not res!55602)) b!117376))

(assert (= (and b!117376 (not res!55603)) b!117374))

(assert (= (and b!117374 c!26726) b!117379))

(assert (= (and b!117374 (not c!26726)) b!117388))

(assert (= (and b!117374 (not res!55599)) b!117383))

(assert (= (and b!117383 (not res!55597)) b!117390))

(assert (= (and b!117390 (not res!55598)) b!117372))

(assert (= (and start!11978 ((_ is ElementMatch!509) r!15532)) b!117387))

(assert (= (and start!11978 ((_ is Concat!893) r!15532)) b!117382))

(assert (= (and start!11978 ((_ is Star!509) r!15532)) b!117369))

(assert (= (and start!11978 ((_ is Union!509) r!15532)) b!117375))

(assert (= (and start!11978 ((_ is Cons!1927) totalInput!1363)) b!117368))

(assert (= (and start!11978 ((_ is Cons!1927) testedSuffix!285)) b!117380))

(assert (= (and start!11978 ((_ is Cons!1927) testedP!367)) b!117373))

(assert (= (and b!117367 condMapEmpty!1459) mapIsEmpty!1459))

(assert (= (and b!117367 (not condMapEmpty!1459)) mapNonEmpty!1459))

(assert (= b!117366 b!117367))

(assert (= b!117389 b!117366))

(assert (= b!117391 b!117389))

(assert (= (and b!117378 ((_ is LongMap!375) (v!13282 (underlying!950 (cache!823 cache!470))))) b!117391))

(assert (= b!117384 b!117378))

(assert (= (and b!117370 ((_ is HashMap!371) (cache!823 cache!470))) b!117384))

(assert (= start!11978 b!117370))

(declare-fun m!105338 () Bool)

(assert (=> mapNonEmpty!1459 m!105338))

(declare-fun m!105340 () Bool)

(assert (=> b!117365 m!105340))

(declare-fun m!105342 () Bool)

(assert (=> b!117365 m!105342))

(declare-fun m!105344 () Bool)

(assert (=> b!117365 m!105344))

(declare-fun m!105346 () Bool)

(assert (=> b!117374 m!105346))

(declare-fun m!105348 () Bool)

(assert (=> b!117390 m!105348))

(assert (=> b!117390 m!105348))

(declare-fun m!105350 () Bool)

(assert (=> b!117390 m!105350))

(declare-fun m!105352 () Bool)

(assert (=> b!117381 m!105352))

(declare-fun m!105354 () Bool)

(assert (=> b!117381 m!105354))

(declare-fun m!105356 () Bool)

(assert (=> b!117381 m!105356))

(declare-fun m!105358 () Bool)

(assert (=> b!117372 m!105358))

(declare-fun m!105360 () Bool)

(assert (=> b!117379 m!105360))

(declare-fun m!105362 () Bool)

(assert (=> b!117379 m!105362))

(declare-fun m!105364 () Bool)

(assert (=> b!117379 m!105364))

(declare-fun m!105366 () Bool)

(assert (=> b!117383 m!105366))

(declare-fun m!105368 () Bool)

(assert (=> b!117383 m!105368))

(declare-fun m!105370 () Bool)

(assert (=> b!117383 m!105370))

(declare-fun m!105372 () Bool)

(assert (=> b!117383 m!105372))

(declare-fun m!105374 () Bool)

(assert (=> b!117383 m!105374))

(declare-fun m!105376 () Bool)

(assert (=> b!117383 m!105376))

(declare-fun m!105378 () Bool)

(assert (=> b!117383 m!105378))

(declare-fun m!105380 () Bool)

(assert (=> b!117383 m!105380))

(assert (=> b!117383 m!105376))

(declare-fun m!105382 () Bool)

(assert (=> b!117383 m!105382))

(declare-fun m!105384 () Bool)

(assert (=> b!117383 m!105384))

(declare-fun m!105386 () Bool)

(assert (=> b!117366 m!105386))

(declare-fun m!105388 () Bool)

(assert (=> b!117366 m!105388))

(declare-fun m!105390 () Bool)

(assert (=> b!117377 m!105390))

(declare-fun m!105392 () Bool)

(assert (=> b!117385 m!105392))

(declare-fun m!105394 () Bool)

(assert (=> b!117371 m!105394))

(declare-fun m!105396 () Bool)

(assert (=> start!11978 m!105396))

(declare-fun m!105398 () Bool)

(assert (=> start!11978 m!105398))

(declare-fun m!105400 () Bool)

(assert (=> b!117386 m!105400))

(check-sat (not b!117390) b_and!5859 (not b!117373) (not b!117371) (not b!117385) (not b!117382) (not b!117368) (not b_next!3731) tp_is_empty!1073 (not b!117380) (not b!117379) (not b!117386) (not b!117383) (not b!117381) (not b!117372) (not b!117377) b_and!5861 (not b!117369) (not b!117365) (not b!117374) (not b_next!3729) (not b!117366) (not b!117375) (not start!11978) (not b!117367) (not mapNonEmpty!1459))
(check-sat b_and!5861 b_and!5859 (not b_next!3731) (not b_next!3729))
