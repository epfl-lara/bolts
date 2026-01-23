; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12334 () Bool)

(assert start!12334)

(declare-fun b!122140 () Bool)

(declare-fun b_free!3897 () Bool)

(declare-fun b_next!3897 () Bool)

(assert (=> b!122140 (= b_free!3897 (not b_next!3897))))

(declare-fun tp!67067 () Bool)

(declare-fun b_and!6027 () Bool)

(assert (=> b!122140 (= tp!67067 b_and!6027)))

(declare-fun b!122143 () Bool)

(declare-fun b_free!3899 () Bool)

(declare-fun b_next!3899 () Bool)

(assert (=> b!122143 (= b_free!3899 (not b_next!3899))))

(declare-fun tp!67069 () Bool)

(declare-fun b_and!6029 () Bool)

(assert (=> b!122143 (= tp!67069 b_and!6029)))

(declare-fun b!122126 () Bool)

(declare-fun e!70054 () Bool)

(declare-fun tp!67076 () Bool)

(declare-fun tp!67072 () Bool)

(assert (=> b!122126 (= e!70054 (and tp!67076 tp!67072))))

(declare-fun b!122127 () Bool)

(declare-fun e!70053 () Bool)

(declare-fun e!70052 () Bool)

(assert (=> b!122127 (= e!70053 (not e!70052))))

(declare-fun res!57159 () Bool)

(assert (=> b!122127 (=> res!57159 e!70052)))

(declare-datatypes ((C!2024 0))(
  ( (C!2025 (val!738 Int)) )
))
(declare-datatypes ((List!2012 0))(
  ( (Nil!2006) (Cons!2006 (h!7403 C!2024) (t!22489 List!2012)) )
))
(declare-fun testedP!367 () List!2012)

(declare-fun totalInput!1363 () List!2012)

(declare-fun isPrefix!127 (List!2012 List!2012) Bool)

(assert (=> b!122127 (= res!57159 (not (isPrefix!127 testedP!367 totalInput!1363)))))

(declare-fun lt!36543 () List!2012)

(assert (=> b!122127 (isPrefix!127 testedP!367 lt!36543)))

(declare-datatypes ((Unit!1528 0))(
  ( (Unit!1529) )
))
(declare-fun lt!36540 () Unit!1528)

(declare-fun testedSuffix!285 () List!2012)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!71 (List!2012 List!2012) Unit!1528)

(assert (=> b!122127 (= lt!36540 (lemmaConcatTwoListThenFirstIsPrefix!71 testedP!367 testedSuffix!285))))

(declare-fun b!122128 () Bool)

(declare-fun e!70046 () Bool)

(declare-fun e!70056 () Bool)

(assert (=> b!122128 (= e!70046 e!70056)))

(declare-fun b!122129 () Bool)

(declare-fun tp!67081 () Bool)

(assert (=> b!122129 (= e!70054 tp!67081)))

(declare-fun b!122130 () Bool)

(declare-fun e!70064 () Bool)

(declare-fun tp_is_empty!1157 () Bool)

(declare-fun tp!67071 () Bool)

(assert (=> b!122130 (= e!70064 (and tp_is_empty!1157 tp!67071))))

(declare-fun b!122131 () Bool)

(declare-fun e!70057 () Bool)

(assert (=> b!122131 (= e!70057 e!70053)))

(declare-fun res!57161 () Bool)

(assert (=> b!122131 (=> (not res!57161) (not e!70053))))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!36552 () Int)

(assert (=> b!122131 (= res!57161 (= totalInputSize!643 lt!36552))))

(declare-fun size!1864 (List!2012) Int)

(assert (=> b!122131 (= lt!36552 (size!1864 totalInput!1363))))

(declare-fun b!122132 () Bool)

(assert (=> b!122132 (= e!70054 tp_is_empty!1157)))

(declare-fun b!122133 () Bool)

(declare-fun e!70045 () Bool)

(declare-fun e!70062 () Bool)

(assert (=> b!122133 (= e!70045 e!70062)))

(declare-fun res!57158 () Bool)

(assert (=> b!122133 (=> res!57158 e!70062)))

(declare-datatypes ((Regex!551 0))(
  ( (ElementMatch!551 (c!27115 C!2024)) (Concat!935 (regOne!1614 Regex!551) (regTwo!1614 Regex!551)) (EmptyExpr!551) (Star!551 (reg!880 Regex!551)) (EmptyLang!551) (Union!551 (regOne!1615 Regex!551) (regTwo!1615 Regex!551)) )
))
(declare-fun r!15532 () Regex!551)

(declare-fun nullable!87 (Regex!551) Bool)

(assert (=> b!122133 (= res!57158 (not (nullable!87 r!15532)))))

(declare-fun lt!36536 () List!2012)

(declare-fun lt!36553 () List!2012)

(declare-fun ++!378 (List!2012 List!2012) List!2012)

(assert (=> b!122133 (= (++!378 lt!36536 lt!36553) totalInput!1363)))

(declare-fun lt!36550 () Unit!1528)

(declare-fun lt!36547 () C!2024)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!24 (List!2012 C!2024 List!2012 List!2012) Unit!1528)

(assert (=> b!122133 (= lt!36550 (lemmaMoveElementToOtherListKeepsConcatEq!24 testedP!367 lt!36547 lt!36553 totalInput!1363))))

(declare-fun tail!237 (List!2012) List!2012)

(assert (=> b!122133 (= lt!36553 (tail!237 testedSuffix!285))))

(declare-fun lt!36551 () List!2012)

(declare-fun head!501 (List!2012) C!2024)

(assert (=> b!122133 (isPrefix!127 (++!378 testedP!367 (Cons!2006 (head!501 lt!36551) Nil!2006)) totalInput!1363)))

(declare-fun lt!36545 () Unit!1528)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!30 (List!2012 List!2012) Unit!1528)

(assert (=> b!122133 (= lt!36545 (lemmaAddHeadSuffixToPrefixStillPrefix!30 testedP!367 totalInput!1363))))

(assert (=> b!122133 (= lt!36536 (++!378 testedP!367 (Cons!2006 lt!36547 Nil!2006)))))

(assert (=> b!122133 (= lt!36547 (head!501 testedSuffix!285))))

(declare-fun b!122135 () Bool)

(declare-fun e!70049 () Bool)

(assert (=> b!122135 (= e!70052 e!70049)))

(declare-fun res!57162 () Bool)

(assert (=> b!122135 (=> res!57162 e!70049)))

(declare-fun lostCause!71 (Regex!551) Bool)

(assert (=> b!122135 (= res!57162 (lostCause!71 r!15532))))

(assert (=> b!122135 (and (= testedSuffix!285 lt!36551) (= lt!36551 testedSuffix!285))))

(declare-fun lt!36541 () Unit!1528)

(declare-fun lemmaSamePrefixThenSameSuffix!62 (List!2012 List!2012 List!2012 List!2012 List!2012) Unit!1528)

(assert (=> b!122135 (= lt!36541 (lemmaSamePrefixThenSameSuffix!62 testedP!367 testedSuffix!285 testedP!367 lt!36551 totalInput!1363))))

(declare-fun getSuffix!66 (List!2012 List!2012) List!2012)

(assert (=> b!122135 (= lt!36551 (getSuffix!66 totalInput!1363 testedP!367))))

(declare-fun mapIsEmpty!1611 () Bool)

(declare-fun mapRes!1611 () Bool)

(assert (=> mapIsEmpty!1611 mapRes!1611))

(declare-fun mapNonEmpty!1611 () Bool)

(declare-fun tp!67078 () Bool)

(declare-fun tp!67074 () Bool)

(assert (=> mapNonEmpty!1611 (= mapRes!1611 (and tp!67078 tp!67074))))

(declare-datatypes ((tuple2!2340 0))(
  ( (tuple2!2341 (_1!1380 Regex!551) (_2!1380 C!2024)) )
))
(declare-datatypes ((tuple2!2342 0))(
  ( (tuple2!2343 (_1!1381 tuple2!2340) (_2!1381 Regex!551)) )
))
(declare-datatypes ((List!2013 0))(
  ( (Nil!2007) (Cons!2007 (h!7404 tuple2!2342) (t!22490 List!2013)) )
))
(declare-fun mapRest!1611 () (Array (_ BitVec 32) List!2013))

(declare-fun mapValue!1611 () List!2013)

(declare-datatypes ((Hashable!413 0))(
  ( (HashableExt!412 (__x!2176 Int)) )
))
(declare-datatypes ((array!1545 0))(
  ( (array!1546 (arr!718 (Array (_ BitVec 32) (_ BitVec 64))) (size!1865 (_ BitVec 32))) )
))
(declare-datatypes ((array!1547 0))(
  ( (array!1548 (arr!719 (Array (_ BitVec 32) List!2013)) (size!1866 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!834 0))(
  ( (LongMapFixedSize!835 (defaultEntry!756 Int) (mask!1360 (_ BitVec 32)) (extraKeys!663 (_ BitVec 32)) (zeroValue!673 List!2013) (minValue!673 List!2013) (_size!967 (_ BitVec 32)) (_keys!708 array!1545) (_values!695 array!1547) (_vacant!478 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1657 0))(
  ( (Cell!1658 (v!13366 LongMapFixedSize!834)) )
))
(declare-datatypes ((MutLongMap!417 0))(
  ( (LongMap!417 (underlying!1033 Cell!1657)) (MutLongMapExt!416 (__x!2177 Int)) )
))
(declare-datatypes ((Cell!1659 0))(
  ( (Cell!1660 (v!13367 MutLongMap!417)) )
))
(declare-datatypes ((MutableMap!413 0))(
  ( (MutableMapExt!412 (__x!2178 Int)) (HashMap!413 (underlying!1034 Cell!1659) (hashF!2289 Hashable!413) (_size!968 (_ BitVec 32)) (defaultValue!562 Int)) )
))
(declare-datatypes ((Cache!262 0))(
  ( (Cache!263 (cache!865 MutableMap!413)) )
))
(declare-fun cache!470 () Cache!262)

(declare-fun mapKey!1611 () (_ BitVec 32))

(assert (=> mapNonEmpty!1611 (= (arr!719 (_values!695 (v!13366 (underlying!1033 (v!13367 (underlying!1034 (cache!865 cache!470))))))) (store mapRest!1611 mapKey!1611 mapValue!1611))))

(declare-fun b!122136 () Bool)

(assert (=> b!122136 (= e!70049 e!70045)))

(declare-fun res!57163 () Bool)

(assert (=> b!122136 (=> res!57163 e!70045)))

(declare-fun lt!36544 () Int)

(assert (=> b!122136 (= res!57163 (>= lt!36544 lt!36552))))

(declare-fun lt!36538 () Unit!1528)

(declare-fun e!70050 () Unit!1528)

(assert (=> b!122136 (= lt!36538 e!70050)))

(declare-fun c!27114 () Bool)

(assert (=> b!122136 (= c!27114 (= lt!36544 lt!36552))))

(assert (=> b!122136 (<= lt!36544 lt!36552)))

(declare-fun lt!36548 () Unit!1528)

(declare-fun lemmaIsPrefixThenSmallerEqSize!39 (List!2012 List!2012) Unit!1528)

(assert (=> b!122136 (= lt!36548 (lemmaIsPrefixThenSmallerEqSize!39 testedP!367 totalInput!1363))))

(declare-fun b!122137 () Bool)

(declare-fun Unit!1530 () Unit!1528)

(assert (=> b!122137 (= e!70050 Unit!1530)))

(declare-fun lt!36546 () Unit!1528)

(declare-fun lemmaIsPrefixRefl!97 (List!2012 List!2012) Unit!1528)

(assert (=> b!122137 (= lt!36546 (lemmaIsPrefixRefl!97 totalInput!1363 totalInput!1363))))

(assert (=> b!122137 (isPrefix!127 totalInput!1363 totalInput!1363)))

(declare-fun lt!36537 () Unit!1528)

(declare-fun lemmaIsPrefixSameLengthThenSameList!40 (List!2012 List!2012 List!2012) Unit!1528)

(assert (=> b!122137 (= lt!36537 (lemmaIsPrefixSameLengthThenSameList!40 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!122137 false))

(declare-fun b!122138 () Bool)

(declare-fun tp!67077 () Bool)

(declare-fun tp!67079 () Bool)

(assert (=> b!122138 (= e!70054 (and tp!67077 tp!67079))))

(declare-fun b!122139 () Bool)

(declare-fun e!70065 () Bool)

(declare-fun e!70060 () Bool)

(assert (=> b!122139 (= e!70065 e!70060)))

(declare-fun e!70058 () Bool)

(declare-fun tp!67075 () Bool)

(declare-fun tp!67068 () Bool)

(declare-fun array_inv!517 (array!1545) Bool)

(declare-fun array_inv!518 (array!1547) Bool)

(assert (=> b!122140 (= e!70056 (and tp!67067 tp!67075 tp!67068 (array_inv!517 (_keys!708 (v!13366 (underlying!1033 (v!13367 (underlying!1034 (cache!865 cache!470))))))) (array_inv!518 (_values!695 (v!13366 (underlying!1033 (v!13367 (underlying!1034 (cache!865 cache!470))))))) e!70058))))

(declare-fun b!122141 () Bool)

(declare-fun tp!67080 () Bool)

(assert (=> b!122141 (= e!70058 (and tp!67080 mapRes!1611))))

(declare-fun condMapEmpty!1611 () Bool)

(declare-fun mapDefault!1611 () List!2013)

(assert (=> b!122141 (= condMapEmpty!1611 (= (arr!719 (_values!695 (v!13366 (underlying!1033 (v!13367 (underlying!1034 (cache!865 cache!470))))))) ((as const (Array (_ BitVec 32) List!2013)) mapDefault!1611)))))

(declare-fun testedPSize!285 () Int)

(declare-fun b!122142 () Bool)

(declare-fun e!70044 () Bool)

(declare-datatypes ((tuple2!2344 0))(
  ( (tuple2!2345 (_1!1382 List!2012) (_2!1382 List!2012)) )
))
(declare-fun findLongestMatchInner!46 (Regex!551 List!2012 Int List!2012 List!2012 Int) tuple2!2344)

(assert (=> b!122142 (= e!70044 (= (tuple2!2345 testedP!367 testedSuffix!285) (findLongestMatchInner!46 r!15532 testedP!367 testedPSize!285 testedSuffix!285 totalInput!1363 totalInputSize!643)))))

(declare-fun e!70055 () Bool)

(assert (=> b!122143 (= e!70060 (and e!70055 tp!67069))))

(declare-fun b!122144 () Bool)

(declare-fun e!70048 () Bool)

(declare-fun e!70061 () Bool)

(assert (=> b!122144 (= e!70048 e!70061)))

(declare-fun res!57164 () Bool)

(assert (=> b!122144 (=> (not res!57164) (not e!70061))))

(assert (=> b!122144 (= res!57164 (= lt!36543 totalInput!1363))))

(assert (=> b!122144 (= lt!36543 (++!378 testedP!367 testedSuffix!285))))

(declare-fun b!122145 () Bool)

(assert (=> b!122145 (= e!70062 e!70044)))

(declare-fun res!57165 () Bool)

(assert (=> b!122145 (=> res!57165 e!70044)))

(declare-fun lt!36549 () tuple2!2344)

(declare-fun isEmpty!815 (List!2012) Bool)

(assert (=> b!122145 (= res!57165 (not (isEmpty!815 (_1!1382 lt!36549))))))

(declare-fun lt!36539 () Regex!551)

(assert (=> b!122145 (= lt!36549 (findLongestMatchInner!46 lt!36539 lt!36536 (+ 1 testedPSize!285) lt!36553 totalInput!1363 totalInputSize!643))))

(declare-fun findLongestMatchInnerMem!8 (Regex!551 List!2012 Int List!2012 List!2012 Int Cache!262) tuple2!2344)

(assert (=> b!122145 (= lt!36549 (findLongestMatchInnerMem!8 lt!36539 lt!36536 (+ 1 testedPSize!285) lt!36553 totalInput!1363 totalInputSize!643 cache!470))))

(declare-fun derivativeStep!57 (Regex!551 C!2024) Regex!551)

(assert (=> b!122145 (= lt!36539 (derivativeStep!57 r!15532 lt!36547))))

(declare-fun b!122146 () Bool)

(declare-fun Unit!1531 () Unit!1528)

(assert (=> b!122146 (= e!70050 Unit!1531)))

(declare-fun b!122147 () Bool)

(declare-fun e!70051 () Bool)

(declare-fun tp!67070 () Bool)

(assert (=> b!122147 (= e!70051 (and tp_is_empty!1157 tp!67070))))

(declare-fun b!122148 () Bool)

(declare-fun res!57156 () Bool)

(assert (=> b!122148 (=> res!57156 e!70049)))

(assert (=> b!122148 (= res!57156 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!122134 () Bool)

(declare-fun e!70059 () Bool)

(declare-fun lt!36542 () MutLongMap!417)

(get-info :version)

(assert (=> b!122134 (= e!70055 (and e!70059 ((_ is LongMap!417) lt!36542)))))

(assert (=> b!122134 (= lt!36542 (v!13367 (underlying!1034 (cache!865 cache!470))))))

(declare-fun res!57166 () Bool)

(assert (=> start!12334 (=> (not res!57166) (not e!70048))))

(declare-fun validRegex!146 (Regex!551) Bool)

(assert (=> start!12334 (= res!57166 (validRegex!146 r!15532))))

(assert (=> start!12334 e!70048))

(assert (=> start!12334 true))

(assert (=> start!12334 e!70054))

(declare-fun e!70063 () Bool)

(assert (=> start!12334 e!70063))

(assert (=> start!12334 e!70064))

(assert (=> start!12334 e!70051))

(declare-fun inv!2536 (Cache!262) Bool)

(assert (=> start!12334 (and (inv!2536 cache!470) e!70065)))

(declare-fun b!122149 () Bool)

(declare-fun res!57160 () Bool)

(assert (=> b!122149 (=> (not res!57160) (not e!70048))))

(declare-fun valid!374 (Cache!262) Bool)

(assert (=> b!122149 (= res!57160 (valid!374 cache!470))))

(declare-fun b!122150 () Bool)

(assert (=> b!122150 (= e!70061 e!70057)))

(declare-fun res!57157 () Bool)

(assert (=> b!122150 (=> (not res!57157) (not e!70057))))

(assert (=> b!122150 (= res!57157 (= testedPSize!285 lt!36544))))

(assert (=> b!122150 (= lt!36544 (size!1864 testedP!367))))

(declare-fun b!122151 () Bool)

(assert (=> b!122151 (= e!70059 e!70046)))

(declare-fun b!122152 () Bool)

(declare-fun tp!67073 () Bool)

(assert (=> b!122152 (= e!70063 (and tp_is_empty!1157 tp!67073))))

(assert (= (and start!12334 res!57166) b!122149))

(assert (= (and b!122149 res!57160) b!122144))

(assert (= (and b!122144 res!57164) b!122150))

(assert (= (and b!122150 res!57157) b!122131))

(assert (= (and b!122131 res!57161) b!122127))

(assert (= (and b!122127 (not res!57159)) b!122135))

(assert (= (and b!122135 (not res!57162)) b!122148))

(assert (= (and b!122148 (not res!57156)) b!122136))

(assert (= (and b!122136 c!27114) b!122137))

(assert (= (and b!122136 (not c!27114)) b!122146))

(assert (= (and b!122136 (not res!57163)) b!122133))

(assert (= (and b!122133 (not res!57158)) b!122145))

(assert (= (and b!122145 (not res!57165)) b!122142))

(assert (= (and start!12334 ((_ is ElementMatch!551) r!15532)) b!122132))

(assert (= (and start!12334 ((_ is Concat!935) r!15532)) b!122126))

(assert (= (and start!12334 ((_ is Star!551) r!15532)) b!122129))

(assert (= (and start!12334 ((_ is Union!551) r!15532)) b!122138))

(assert (= (and start!12334 ((_ is Cons!2006) totalInput!1363)) b!122152))

(assert (= (and start!12334 ((_ is Cons!2006) testedSuffix!285)) b!122130))

(assert (= (and start!12334 ((_ is Cons!2006) testedP!367)) b!122147))

(assert (= (and b!122141 condMapEmpty!1611) mapIsEmpty!1611))

(assert (= (and b!122141 (not condMapEmpty!1611)) mapNonEmpty!1611))

(assert (= b!122140 b!122141))

(assert (= b!122128 b!122140))

(assert (= b!122151 b!122128))

(assert (= (and b!122134 ((_ is LongMap!417) (v!13367 (underlying!1034 (cache!865 cache!470))))) b!122151))

(assert (= b!122143 b!122134))

(assert (= (and b!122139 ((_ is HashMap!413) (cache!865 cache!470))) b!122143))

(assert (= start!12334 b!122139))

(declare-fun m!108196 () Bool)

(assert (=> mapNonEmpty!1611 m!108196))

(declare-fun m!108198 () Bool)

(assert (=> b!122150 m!108198))

(declare-fun m!108200 () Bool)

(assert (=> b!122135 m!108200))

(declare-fun m!108202 () Bool)

(assert (=> b!122135 m!108202))

(declare-fun m!108204 () Bool)

(assert (=> b!122135 m!108204))

(declare-fun m!108206 () Bool)

(assert (=> b!122137 m!108206))

(declare-fun m!108208 () Bool)

(assert (=> b!122137 m!108208))

(declare-fun m!108210 () Bool)

(assert (=> b!122137 m!108210))

(declare-fun m!108212 () Bool)

(assert (=> b!122140 m!108212))

(declare-fun m!108214 () Bool)

(assert (=> b!122140 m!108214))

(declare-fun m!108216 () Bool)

(assert (=> b!122127 m!108216))

(declare-fun m!108218 () Bool)

(assert (=> b!122127 m!108218))

(declare-fun m!108220 () Bool)

(assert (=> b!122127 m!108220))

(declare-fun m!108222 () Bool)

(assert (=> start!12334 m!108222))

(declare-fun m!108224 () Bool)

(assert (=> start!12334 m!108224))

(declare-fun m!108226 () Bool)

(assert (=> b!122149 m!108226))

(declare-fun m!108228 () Bool)

(assert (=> b!122145 m!108228))

(declare-fun m!108230 () Bool)

(assert (=> b!122145 m!108230))

(declare-fun m!108232 () Bool)

(assert (=> b!122145 m!108232))

(declare-fun m!108234 () Bool)

(assert (=> b!122145 m!108234))

(declare-fun m!108236 () Bool)

(assert (=> b!122133 m!108236))

(declare-fun m!108238 () Bool)

(assert (=> b!122133 m!108238))

(declare-fun m!108240 () Bool)

(assert (=> b!122133 m!108240))

(declare-fun m!108242 () Bool)

(assert (=> b!122133 m!108242))

(declare-fun m!108244 () Bool)

(assert (=> b!122133 m!108244))

(declare-fun m!108246 () Bool)

(assert (=> b!122133 m!108246))

(declare-fun m!108248 () Bool)

(assert (=> b!122133 m!108248))

(assert (=> b!122133 m!108240))

(declare-fun m!108250 () Bool)

(assert (=> b!122133 m!108250))

(declare-fun m!108252 () Bool)

(assert (=> b!122133 m!108252))

(declare-fun m!108254 () Bool)

(assert (=> b!122133 m!108254))

(declare-fun m!108256 () Bool)

(assert (=> b!122142 m!108256))

(declare-fun m!108258 () Bool)

(assert (=> b!122144 m!108258))

(declare-fun m!108260 () Bool)

(assert (=> b!122136 m!108260))

(declare-fun m!108262 () Bool)

(assert (=> b!122131 m!108262))

(check-sat (not b!122138) (not b!122131) (not b!122145) (not b!122147) (not b!122129) (not b!122150) b_and!6027 tp_is_empty!1157 (not b!122144) (not b!122133) (not b!122141) (not mapNonEmpty!1611) (not b!122136) (not b_next!3897) (not b!122137) (not b!122152) (not b!122135) (not b!122140) (not b_next!3899) (not b!122127) (not start!12334) (not b!122130) b_and!6029 (not b!122126) (not b!122142) (not b!122149))
(check-sat b_and!6029 b_and!6027 (not b_next!3899) (not b_next!3897))
(get-model)

(declare-fun d!29025 () Bool)

(declare-fun lt!36556 () Int)

(assert (=> d!29025 (>= lt!36556 0)))

(declare-fun e!70068 () Int)

(assert (=> d!29025 (= lt!36556 e!70068)))

(declare-fun c!27118 () Bool)

(assert (=> d!29025 (= c!27118 ((_ is Nil!2006) totalInput!1363))))

(assert (=> d!29025 (= (size!1864 totalInput!1363) lt!36556)))

(declare-fun b!122157 () Bool)

(assert (=> b!122157 (= e!70068 0)))

(declare-fun b!122158 () Bool)

(assert (=> b!122158 (= e!70068 (+ 1 (size!1864 (t!22489 totalInput!1363))))))

(assert (= (and d!29025 c!27118) b!122157))

(assert (= (and d!29025 (not c!27118)) b!122158))

(declare-fun m!108264 () Bool)

(assert (=> b!122158 m!108264))

(assert (=> b!122131 d!29025))

(declare-fun d!29027 () Bool)

(assert (=> d!29027 (= (array_inv!517 (_keys!708 (v!13366 (underlying!1033 (v!13367 (underlying!1034 (cache!865 cache!470))))))) (bvsge (size!1865 (_keys!708 (v!13366 (underlying!1033 (v!13367 (underlying!1034 (cache!865 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!122140 d!29027))

(declare-fun d!29029 () Bool)

(assert (=> d!29029 (= (array_inv!518 (_values!695 (v!13366 (underlying!1033 (v!13367 (underlying!1034 (cache!865 cache!470))))))) (bvsge (size!1866 (_values!695 (v!13366 (underlying!1033 (v!13367 (underlying!1034 (cache!865 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!122140 d!29029))

(declare-fun d!29031 () Bool)

(declare-fun validCacheMap!28 (MutableMap!413) Bool)

(assert (=> d!29031 (= (valid!374 cache!470) (validCacheMap!28 (cache!865 cache!470)))))

(declare-fun bs!11977 () Bool)

(assert (= bs!11977 d!29031))

(declare-fun m!108266 () Bool)

(assert (=> bs!11977 m!108266))

(assert (=> b!122149 d!29031))

(declare-fun d!29033 () Bool)

(declare-fun lt!36557 () Int)

(assert (=> d!29033 (>= lt!36557 0)))

(declare-fun e!70069 () Int)

(assert (=> d!29033 (= lt!36557 e!70069)))

(declare-fun c!27119 () Bool)

(assert (=> d!29033 (= c!27119 ((_ is Nil!2006) testedP!367))))

(assert (=> d!29033 (= (size!1864 testedP!367) lt!36557)))

(declare-fun b!122159 () Bool)

(assert (=> b!122159 (= e!70069 0)))

(declare-fun b!122160 () Bool)

(assert (=> b!122160 (= e!70069 (+ 1 (size!1864 (t!22489 testedP!367))))))

(assert (= (and d!29033 c!27119) b!122159))

(assert (= (and d!29033 (not c!27119)) b!122160))

(declare-fun m!108268 () Bool)

(assert (=> b!122160 m!108268))

(assert (=> b!122150 d!29033))

(declare-fun d!29035 () Bool)

(assert (=> d!29035 (isPrefix!127 totalInput!1363 totalInput!1363)))

(declare-fun lt!36560 () Unit!1528)

(declare-fun choose!1580 (List!2012 List!2012) Unit!1528)

(assert (=> d!29035 (= lt!36560 (choose!1580 totalInput!1363 totalInput!1363))))

(assert (=> d!29035 (= (lemmaIsPrefixRefl!97 totalInput!1363 totalInput!1363) lt!36560)))

(declare-fun bs!11978 () Bool)

(assert (= bs!11978 d!29035))

(assert (=> bs!11978 m!108208))

(declare-fun m!108270 () Bool)

(assert (=> bs!11978 m!108270))

(assert (=> b!122137 d!29035))

(declare-fun b!122169 () Bool)

(declare-fun e!70077 () Bool)

(declare-fun e!70076 () Bool)

(assert (=> b!122169 (= e!70077 e!70076)))

(declare-fun res!57176 () Bool)

(assert (=> b!122169 (=> (not res!57176) (not e!70076))))

(assert (=> b!122169 (= res!57176 (not ((_ is Nil!2006) totalInput!1363)))))

(declare-fun d!29037 () Bool)

(declare-fun e!70078 () Bool)

(assert (=> d!29037 e!70078))

(declare-fun res!57178 () Bool)

(assert (=> d!29037 (=> res!57178 e!70078)))

(declare-fun lt!36563 () Bool)

(assert (=> d!29037 (= res!57178 (not lt!36563))))

(assert (=> d!29037 (= lt!36563 e!70077)))

(declare-fun res!57177 () Bool)

(assert (=> d!29037 (=> res!57177 e!70077)))

(assert (=> d!29037 (= res!57177 ((_ is Nil!2006) totalInput!1363))))

(assert (=> d!29037 (= (isPrefix!127 totalInput!1363 totalInput!1363) lt!36563)))

(declare-fun b!122172 () Bool)

(assert (=> b!122172 (= e!70078 (>= (size!1864 totalInput!1363) (size!1864 totalInput!1363)))))

(declare-fun b!122171 () Bool)

(assert (=> b!122171 (= e!70076 (isPrefix!127 (tail!237 totalInput!1363) (tail!237 totalInput!1363)))))

(declare-fun b!122170 () Bool)

(declare-fun res!57175 () Bool)

(assert (=> b!122170 (=> (not res!57175) (not e!70076))))

(assert (=> b!122170 (= res!57175 (= (head!501 totalInput!1363) (head!501 totalInput!1363)))))

(assert (= (and d!29037 (not res!57177)) b!122169))

(assert (= (and b!122169 res!57176) b!122170))

(assert (= (and b!122170 res!57175) b!122171))

(assert (= (and d!29037 (not res!57178)) b!122172))

(assert (=> b!122172 m!108262))

(assert (=> b!122172 m!108262))

(declare-fun m!108272 () Bool)

(assert (=> b!122171 m!108272))

(assert (=> b!122171 m!108272))

(assert (=> b!122171 m!108272))

(assert (=> b!122171 m!108272))

(declare-fun m!108274 () Bool)

(assert (=> b!122171 m!108274))

(declare-fun m!108276 () Bool)

(assert (=> b!122170 m!108276))

(assert (=> b!122170 m!108276))

(assert (=> b!122137 d!29037))

(declare-fun d!29039 () Bool)

(assert (=> d!29039 (= totalInput!1363 testedP!367)))

(declare-fun lt!36566 () Unit!1528)

(declare-fun choose!1581 (List!2012 List!2012 List!2012) Unit!1528)

(assert (=> d!29039 (= lt!36566 (choose!1581 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!29039 (isPrefix!127 totalInput!1363 totalInput!1363)))

(assert (=> d!29039 (= (lemmaIsPrefixSameLengthThenSameList!40 totalInput!1363 testedP!367 totalInput!1363) lt!36566)))

(declare-fun bs!11979 () Bool)

(assert (= bs!11979 d!29039))

(declare-fun m!108278 () Bool)

(assert (=> bs!11979 m!108278))

(assert (=> bs!11979 m!108208))

(assert (=> b!122137 d!29039))

(declare-fun b!122173 () Bool)

(declare-fun e!70080 () Bool)

(declare-fun e!70079 () Bool)

(assert (=> b!122173 (= e!70080 e!70079)))

(declare-fun res!57180 () Bool)

(assert (=> b!122173 (=> (not res!57180) (not e!70079))))

(assert (=> b!122173 (= res!57180 (not ((_ is Nil!2006) totalInput!1363)))))

(declare-fun d!29041 () Bool)

(declare-fun e!70081 () Bool)

(assert (=> d!29041 e!70081))

(declare-fun res!57182 () Bool)

(assert (=> d!29041 (=> res!57182 e!70081)))

(declare-fun lt!36567 () Bool)

(assert (=> d!29041 (= res!57182 (not lt!36567))))

(assert (=> d!29041 (= lt!36567 e!70080)))

(declare-fun res!57181 () Bool)

(assert (=> d!29041 (=> res!57181 e!70080)))

(assert (=> d!29041 (= res!57181 ((_ is Nil!2006) testedP!367))))

(assert (=> d!29041 (= (isPrefix!127 testedP!367 totalInput!1363) lt!36567)))

(declare-fun b!122176 () Bool)

(assert (=> b!122176 (= e!70081 (>= (size!1864 totalInput!1363) (size!1864 testedP!367)))))

(declare-fun b!122175 () Bool)

(assert (=> b!122175 (= e!70079 (isPrefix!127 (tail!237 testedP!367) (tail!237 totalInput!1363)))))

(declare-fun b!122174 () Bool)

(declare-fun res!57179 () Bool)

(assert (=> b!122174 (=> (not res!57179) (not e!70079))))

(assert (=> b!122174 (= res!57179 (= (head!501 testedP!367) (head!501 totalInput!1363)))))

(assert (= (and d!29041 (not res!57181)) b!122173))

(assert (= (and b!122173 res!57180) b!122174))

(assert (= (and b!122174 res!57179) b!122175))

(assert (= (and d!29041 (not res!57182)) b!122176))

(assert (=> b!122176 m!108262))

(assert (=> b!122176 m!108198))

(declare-fun m!108280 () Bool)

(assert (=> b!122175 m!108280))

(assert (=> b!122175 m!108272))

(assert (=> b!122175 m!108280))

(assert (=> b!122175 m!108272))

(declare-fun m!108282 () Bool)

(assert (=> b!122175 m!108282))

(declare-fun m!108284 () Bool)

(assert (=> b!122174 m!108284))

(assert (=> b!122174 m!108276))

(assert (=> b!122127 d!29041))

(declare-fun b!122177 () Bool)

(declare-fun e!70083 () Bool)

(declare-fun e!70082 () Bool)

(assert (=> b!122177 (= e!70083 e!70082)))

(declare-fun res!57184 () Bool)

(assert (=> b!122177 (=> (not res!57184) (not e!70082))))

(assert (=> b!122177 (= res!57184 (not ((_ is Nil!2006) lt!36543)))))

(declare-fun d!29043 () Bool)

(declare-fun e!70084 () Bool)

(assert (=> d!29043 e!70084))

(declare-fun res!57186 () Bool)

(assert (=> d!29043 (=> res!57186 e!70084)))

(declare-fun lt!36568 () Bool)

(assert (=> d!29043 (= res!57186 (not lt!36568))))

(assert (=> d!29043 (= lt!36568 e!70083)))

(declare-fun res!57185 () Bool)

(assert (=> d!29043 (=> res!57185 e!70083)))

(assert (=> d!29043 (= res!57185 ((_ is Nil!2006) testedP!367))))

(assert (=> d!29043 (= (isPrefix!127 testedP!367 lt!36543) lt!36568)))

(declare-fun b!122180 () Bool)

(assert (=> b!122180 (= e!70084 (>= (size!1864 lt!36543) (size!1864 testedP!367)))))

(declare-fun b!122179 () Bool)

(assert (=> b!122179 (= e!70082 (isPrefix!127 (tail!237 testedP!367) (tail!237 lt!36543)))))

(declare-fun b!122178 () Bool)

(declare-fun res!57183 () Bool)

(assert (=> b!122178 (=> (not res!57183) (not e!70082))))

(assert (=> b!122178 (= res!57183 (= (head!501 testedP!367) (head!501 lt!36543)))))

(assert (= (and d!29043 (not res!57185)) b!122177))

(assert (= (and b!122177 res!57184) b!122178))

(assert (= (and b!122178 res!57183) b!122179))

(assert (= (and d!29043 (not res!57186)) b!122180))

(declare-fun m!108286 () Bool)

(assert (=> b!122180 m!108286))

(assert (=> b!122180 m!108198))

(assert (=> b!122179 m!108280))

(declare-fun m!108288 () Bool)

(assert (=> b!122179 m!108288))

(assert (=> b!122179 m!108280))

(assert (=> b!122179 m!108288))

(declare-fun m!108290 () Bool)

(assert (=> b!122179 m!108290))

(assert (=> b!122178 m!108284))

(declare-fun m!108292 () Bool)

(assert (=> b!122178 m!108292))

(assert (=> b!122127 d!29043))

(declare-fun d!29045 () Bool)

(assert (=> d!29045 (isPrefix!127 testedP!367 (++!378 testedP!367 testedSuffix!285))))

(declare-fun lt!36571 () Unit!1528)

(declare-fun choose!1582 (List!2012 List!2012) Unit!1528)

(assert (=> d!29045 (= lt!36571 (choose!1582 testedP!367 testedSuffix!285))))

(assert (=> d!29045 (= (lemmaConcatTwoListThenFirstIsPrefix!71 testedP!367 testedSuffix!285) lt!36571)))

(declare-fun bs!11980 () Bool)

(assert (= bs!11980 d!29045))

(assert (=> bs!11980 m!108258))

(assert (=> bs!11980 m!108258))

(declare-fun m!108294 () Bool)

(assert (=> bs!11980 m!108294))

(declare-fun m!108296 () Bool)

(assert (=> bs!11980 m!108296))

(assert (=> b!122127 d!29045))

(declare-fun d!29047 () Bool)

(assert (=> d!29047 (<= (size!1864 testedP!367) (size!1864 totalInput!1363))))

(declare-fun lt!36574 () Unit!1528)

(declare-fun choose!1583 (List!2012 List!2012) Unit!1528)

(assert (=> d!29047 (= lt!36574 (choose!1583 testedP!367 totalInput!1363))))

(assert (=> d!29047 (isPrefix!127 testedP!367 totalInput!1363)))

(assert (=> d!29047 (= (lemmaIsPrefixThenSmallerEqSize!39 testedP!367 totalInput!1363) lt!36574)))

(declare-fun bs!11981 () Bool)

(assert (= bs!11981 d!29047))

(assert (=> bs!11981 m!108198))

(assert (=> bs!11981 m!108262))

(declare-fun m!108298 () Bool)

(assert (=> bs!11981 m!108298))

(assert (=> bs!11981 m!108216))

(assert (=> b!122136 d!29047))

(declare-fun d!29049 () Bool)

(assert (=> d!29049 (= (isEmpty!815 (_1!1382 lt!36549)) ((_ is Nil!2006) (_1!1382 lt!36549)))))

(assert (=> b!122145 d!29049))

(declare-fun b!122209 () Bool)

(declare-fun e!70101 () Unit!1528)

(declare-fun Unit!1532 () Unit!1528)

(assert (=> b!122209 (= e!70101 Unit!1532)))

(declare-fun b!122210 () Bool)

(declare-fun e!70102 () tuple2!2344)

(assert (=> b!122210 (= e!70102 (tuple2!2345 Nil!2006 totalInput!1363))))

(declare-fun b!122211 () Bool)

(declare-fun e!70106 () tuple2!2344)

(declare-fun lt!36649 () tuple2!2344)

(assert (=> b!122211 (= e!70106 lt!36649)))

(declare-fun bm!5174 () Bool)

(declare-fun call!5184 () Regex!551)

(declare-fun call!5185 () C!2024)

(assert (=> bm!5174 (= call!5184 (derivativeStep!57 lt!36539 call!5185))))

(declare-fun bm!5175 () Bool)

(declare-fun call!5186 () Bool)

(assert (=> bm!5175 (= call!5186 (nullable!87 lt!36539))))

(declare-fun bm!5177 () Bool)

(declare-fun call!5179 () Unit!1528)

(assert (=> bm!5177 (= call!5179 (lemmaIsPrefixRefl!97 totalInput!1363 totalInput!1363))))

(declare-fun b!122212 () Bool)

(declare-fun e!70107 () tuple2!2344)

(assert (=> b!122212 (= e!70107 e!70106)))

(declare-fun call!5181 () tuple2!2344)

(assert (=> b!122212 (= lt!36649 call!5181)))

(declare-fun c!27132 () Bool)

(assert (=> b!122212 (= c!27132 (isEmpty!815 (_1!1382 lt!36649)))))

(declare-fun b!122213 () Bool)

(declare-fun e!70103 () tuple2!2344)

(assert (=> b!122213 (= e!70103 (tuple2!2345 Nil!2006 totalInput!1363))))

(declare-fun b!122214 () Bool)

(declare-fun e!70108 () Bool)

(declare-fun lt!36645 () tuple2!2344)

(assert (=> b!122214 (= e!70108 (>= (size!1864 (_1!1382 lt!36645)) (size!1864 lt!36536)))))

(declare-fun b!122215 () Bool)

(assert (=> b!122215 (= e!70103 (tuple2!2345 lt!36536 Nil!2006))))

(declare-fun b!122216 () Bool)

(declare-fun c!27137 () Bool)

(assert (=> b!122216 (= c!27137 call!5186)))

(declare-fun lt!36631 () Unit!1528)

(declare-fun lt!36650 () Unit!1528)

(assert (=> b!122216 (= lt!36631 lt!36650)))

(assert (=> b!122216 (= totalInput!1363 lt!36536)))

(declare-fun call!5182 () Unit!1528)

(assert (=> b!122216 (= lt!36650 call!5182)))

(declare-fun lt!36642 () Unit!1528)

(declare-fun lt!36634 () Unit!1528)

(assert (=> b!122216 (= lt!36642 lt!36634)))

(declare-fun call!5180 () Bool)

(assert (=> b!122216 call!5180))

(assert (=> b!122216 (= lt!36634 call!5179)))

(declare-fun e!70105 () tuple2!2344)

(assert (=> b!122216 (= e!70105 e!70103)))

(declare-fun d!29051 () Bool)

(declare-fun e!70104 () Bool)

(assert (=> d!29051 e!70104))

(declare-fun res!57191 () Bool)

(assert (=> d!29051 (=> (not res!57191) (not e!70104))))

(assert (=> d!29051 (= res!57191 (= (++!378 (_1!1382 lt!36645) (_2!1382 lt!36645)) totalInput!1363))))

(assert (=> d!29051 (= lt!36645 e!70102)))

(declare-fun c!27133 () Bool)

(assert (=> d!29051 (= c!27133 (lostCause!71 lt!36539))))

(declare-fun lt!36653 () Unit!1528)

(declare-fun Unit!1533 () Unit!1528)

(assert (=> d!29051 (= lt!36653 Unit!1533)))

(assert (=> d!29051 (= (getSuffix!66 totalInput!1363 lt!36536) lt!36553)))

(declare-fun lt!36656 () Unit!1528)

(declare-fun lt!36639 () Unit!1528)

(assert (=> d!29051 (= lt!36656 lt!36639)))

(declare-fun lt!36638 () List!2012)

(assert (=> d!29051 (= lt!36553 lt!36638)))

(assert (=> d!29051 (= lt!36639 (lemmaSamePrefixThenSameSuffix!62 lt!36536 lt!36553 lt!36536 lt!36638 totalInput!1363))))

(assert (=> d!29051 (= lt!36638 (getSuffix!66 totalInput!1363 lt!36536))))

(declare-fun lt!36657 () Unit!1528)

(declare-fun lt!36648 () Unit!1528)

(assert (=> d!29051 (= lt!36657 lt!36648)))

(assert (=> d!29051 (isPrefix!127 lt!36536 (++!378 lt!36536 lt!36553))))

(assert (=> d!29051 (= lt!36648 (lemmaConcatTwoListThenFirstIsPrefix!71 lt!36536 lt!36553))))

(assert (=> d!29051 (validRegex!146 lt!36539)))

(assert (=> d!29051 (= (findLongestMatchInner!46 lt!36539 lt!36536 (+ 1 testedPSize!285) lt!36553 totalInput!1363 totalInputSize!643) lt!36645)))

(declare-fun lt!36633 () List!2012)

(declare-fun call!5183 () List!2012)

(declare-fun bm!5176 () Bool)

(assert (=> bm!5176 (= call!5181 (findLongestMatchInner!46 call!5184 lt!36633 (+ 1 testedPSize!285 1) call!5183 totalInput!1363 totalInputSize!643))))

(declare-fun b!122217 () Bool)

(assert (=> b!122217 (= e!70106 (tuple2!2345 lt!36536 lt!36553))))

(declare-fun b!122218 () Bool)

(assert (=> b!122218 (= e!70104 e!70108)))

(declare-fun res!57192 () Bool)

(assert (=> b!122218 (=> res!57192 e!70108)))

(assert (=> b!122218 (= res!57192 (isEmpty!815 (_1!1382 lt!36645)))))

(declare-fun bm!5178 () Bool)

(assert (=> bm!5178 (= call!5180 (isPrefix!127 totalInput!1363 totalInput!1363))))

(declare-fun b!122219 () Bool)

(declare-fun Unit!1534 () Unit!1528)

(assert (=> b!122219 (= e!70101 Unit!1534)))

(declare-fun lt!36658 () Unit!1528)

(assert (=> b!122219 (= lt!36658 call!5179)))

(assert (=> b!122219 call!5180))

(declare-fun lt!36637 () Unit!1528)

(assert (=> b!122219 (= lt!36637 lt!36658)))

(declare-fun lt!36641 () Unit!1528)

(assert (=> b!122219 (= lt!36641 call!5182)))

(assert (=> b!122219 (= totalInput!1363 lt!36536)))

(declare-fun lt!36636 () Unit!1528)

(assert (=> b!122219 (= lt!36636 lt!36641)))

(assert (=> b!122219 false))

(declare-fun b!122220 () Bool)

(assert (=> b!122220 (= e!70107 call!5181)))

(declare-fun bm!5179 () Bool)

(assert (=> bm!5179 (= call!5185 (head!501 lt!36553))))

(declare-fun b!122221 () Bool)

(assert (=> b!122221 (= e!70102 e!70105)))

(declare-fun c!27135 () Bool)

(assert (=> b!122221 (= c!27135 (= (+ 1 testedPSize!285) totalInputSize!643))))

(declare-fun bm!5180 () Bool)

(assert (=> bm!5180 (= call!5183 (tail!237 lt!36553))))

(declare-fun bm!5181 () Bool)

(assert (=> bm!5181 (= call!5182 (lemmaIsPrefixSameLengthThenSameList!40 totalInput!1363 lt!36536 totalInput!1363))))

(declare-fun b!122222 () Bool)

(declare-fun c!27134 () Bool)

(assert (=> b!122222 (= c!27134 call!5186)))

(declare-fun lt!36632 () Unit!1528)

(declare-fun lt!36635 () Unit!1528)

(assert (=> b!122222 (= lt!36632 lt!36635)))

(declare-fun lt!36640 () List!2012)

(declare-fun lt!36644 () C!2024)

(assert (=> b!122222 (= (++!378 (++!378 lt!36536 (Cons!2006 lt!36644 Nil!2006)) lt!36640) totalInput!1363)))

(assert (=> b!122222 (= lt!36635 (lemmaMoveElementToOtherListKeepsConcatEq!24 lt!36536 lt!36644 lt!36640 totalInput!1363))))

(assert (=> b!122222 (= lt!36640 (tail!237 lt!36553))))

(assert (=> b!122222 (= lt!36644 (head!501 lt!36553))))

(declare-fun lt!36655 () Unit!1528)

(declare-fun lt!36652 () Unit!1528)

(assert (=> b!122222 (= lt!36655 lt!36652)))

(assert (=> b!122222 (isPrefix!127 (++!378 lt!36536 (Cons!2006 (head!501 (getSuffix!66 totalInput!1363 lt!36536)) Nil!2006)) totalInput!1363)))

(assert (=> b!122222 (= lt!36652 (lemmaAddHeadSuffixToPrefixStillPrefix!30 lt!36536 totalInput!1363))))

(declare-fun lt!36646 () Unit!1528)

(declare-fun lt!36643 () Unit!1528)

(assert (=> b!122222 (= lt!36646 lt!36643)))

(assert (=> b!122222 (= lt!36643 (lemmaAddHeadSuffixToPrefixStillPrefix!30 lt!36536 totalInput!1363))))

(assert (=> b!122222 (= lt!36633 (++!378 lt!36536 (Cons!2006 (head!501 lt!36553) Nil!2006)))))

(declare-fun lt!36654 () Unit!1528)

(assert (=> b!122222 (= lt!36654 e!70101)))

(declare-fun c!27136 () Bool)

(assert (=> b!122222 (= c!27136 (= (size!1864 lt!36536) (size!1864 totalInput!1363)))))

(declare-fun lt!36647 () Unit!1528)

(declare-fun lt!36651 () Unit!1528)

(assert (=> b!122222 (= lt!36647 lt!36651)))

(assert (=> b!122222 (<= (size!1864 lt!36536) (size!1864 totalInput!1363))))

(assert (=> b!122222 (= lt!36651 (lemmaIsPrefixThenSmallerEqSize!39 lt!36536 totalInput!1363))))

(assert (=> b!122222 (= e!70105 e!70107)))

(assert (= (and d!29051 c!27133) b!122210))

(assert (= (and d!29051 (not c!27133)) b!122221))

(assert (= (and b!122221 c!27135) b!122216))

(assert (= (and b!122221 (not c!27135)) b!122222))

(assert (= (and b!122216 c!27137) b!122215))

(assert (= (and b!122216 (not c!27137)) b!122213))

(assert (= (and b!122222 c!27136) b!122219))

(assert (= (and b!122222 (not c!27136)) b!122209))

(assert (= (and b!122222 c!27134) b!122212))

(assert (= (and b!122222 (not c!27134)) b!122220))

(assert (= (and b!122212 c!27132) b!122217))

(assert (= (and b!122212 (not c!27132)) b!122211))

(assert (= (or b!122212 b!122220) bm!5180))

(assert (= (or b!122212 b!122220) bm!5179))

(assert (= (or b!122212 b!122220) bm!5174))

(assert (= (or b!122212 b!122220) bm!5176))

(assert (= (or b!122216 b!122219) bm!5177))

(assert (= (or b!122216 b!122219) bm!5178))

(assert (= (or b!122216 b!122222) bm!5175))

(assert (= (or b!122216 b!122219) bm!5181))

(assert (= (and d!29051 res!57191) b!122218))

(assert (= (and b!122218 (not res!57192)) b!122214))

(declare-fun m!108300 () Bool)

(assert (=> bm!5174 m!108300))

(declare-fun m!108302 () Bool)

(assert (=> b!122222 m!108302))

(declare-fun m!108304 () Bool)

(assert (=> b!122222 m!108304))

(declare-fun m!108306 () Bool)

(assert (=> b!122222 m!108306))

(declare-fun m!108308 () Bool)

(assert (=> b!122222 m!108308))

(assert (=> b!122222 m!108306))

(assert (=> b!122222 m!108262))

(declare-fun m!108310 () Bool)

(assert (=> b!122222 m!108310))

(declare-fun m!108312 () Bool)

(assert (=> b!122222 m!108312))

(declare-fun m!108314 () Bool)

(assert (=> b!122222 m!108314))

(declare-fun m!108316 () Bool)

(assert (=> b!122222 m!108316))

(declare-fun m!108318 () Bool)

(assert (=> b!122222 m!108318))

(declare-fun m!108320 () Bool)

(assert (=> b!122222 m!108320))

(declare-fun m!108322 () Bool)

(assert (=> b!122222 m!108322))

(declare-fun m!108324 () Bool)

(assert (=> b!122222 m!108324))

(assert (=> b!122222 m!108312))

(assert (=> b!122222 m!108310))

(declare-fun m!108326 () Bool)

(assert (=> b!122222 m!108326))

(declare-fun m!108328 () Bool)

(assert (=> b!122214 m!108328))

(assert (=> b!122214 m!108316))

(assert (=> d!29051 m!108254))

(declare-fun m!108330 () Bool)

(assert (=> d!29051 m!108330))

(declare-fun m!108332 () Bool)

(assert (=> d!29051 m!108332))

(assert (=> d!29051 m!108254))

(declare-fun m!108334 () Bool)

(assert (=> d!29051 m!108334))

(declare-fun m!108336 () Bool)

(assert (=> d!29051 m!108336))

(declare-fun m!108338 () Bool)

(assert (=> d!29051 m!108338))

(assert (=> d!29051 m!108312))

(declare-fun m!108340 () Bool)

(assert (=> d!29051 m!108340))

(declare-fun m!108342 () Bool)

(assert (=> bm!5175 m!108342))

(declare-fun m!108344 () Bool)

(assert (=> bm!5176 m!108344))

(assert (=> bm!5179 m!108324))

(assert (=> bm!5177 m!108206))

(assert (=> bm!5178 m!108208))

(assert (=> bm!5180 m!108320))

(declare-fun m!108346 () Bool)

(assert (=> b!122218 m!108346))

(declare-fun m!108348 () Bool)

(assert (=> b!122212 m!108348))

(declare-fun m!108350 () Bool)

(assert (=> bm!5181 m!108350))

(assert (=> b!122145 d!29051))

(declare-fun d!29053 () Bool)

(declare-fun e!70111 () Bool)

(assert (=> d!29053 e!70111))

(declare-fun res!57195 () Bool)

(assert (=> d!29053 (=> (not res!57195) (not e!70111))))

(declare-fun lt!36661 () tuple2!2344)

(assert (=> d!29053 (= res!57195 (= lt!36661 (findLongestMatchInner!46 lt!36539 lt!36536 (+ 1 testedPSize!285) lt!36553 totalInput!1363 totalInputSize!643)))))

(declare-fun choose!1584 (Regex!551 List!2012 Int List!2012 List!2012 Int Cache!262) tuple2!2344)

(assert (=> d!29053 (= lt!36661 (choose!1584 lt!36539 lt!36536 (+ 1 testedPSize!285) lt!36553 totalInput!1363 totalInputSize!643 cache!470))))

(assert (=> d!29053 (validRegex!146 lt!36539)))

(assert (=> d!29053 (= (findLongestMatchInnerMem!8 lt!36539 lt!36536 (+ 1 testedPSize!285) lt!36553 totalInput!1363 totalInputSize!643 cache!470) lt!36661)))

(declare-fun b!122225 () Bool)

(assert (=> b!122225 (= e!70111 (valid!374 cache!470))))

(assert (= (and d!29053 res!57195) b!122225))

(assert (=> d!29053 m!108230))

(declare-fun m!108352 () Bool)

(assert (=> d!29053 m!108352))

(assert (=> d!29053 m!108340))

(assert (=> b!122225 m!108226))

(assert (=> b!122145 d!29053))

(declare-fun b!122246 () Bool)

(declare-fun e!70123 () Regex!551)

(declare-fun e!70124 () Regex!551)

(assert (=> b!122246 (= e!70123 e!70124)))

(declare-fun c!27151 () Bool)

(assert (=> b!122246 (= c!27151 ((_ is Star!551) r!15532))))

(declare-fun b!122247 () Bool)

(declare-fun call!5195 () Regex!551)

(declare-fun call!5197 () Regex!551)

(assert (=> b!122247 (= e!70123 (Union!551 call!5195 call!5197))))

(declare-fun bm!5190 () Bool)

(declare-fun call!5198 () Regex!551)

(assert (=> bm!5190 (= call!5198 call!5197)))

(declare-fun b!122248 () Bool)

(assert (=> b!122248 (= e!70124 (Concat!935 call!5198 r!15532))))

(declare-fun c!27149 () Bool)

(declare-fun bm!5191 () Bool)

(assert (=> bm!5191 (= call!5197 (derivativeStep!57 (ite c!27149 (regTwo!1615 r!15532) (ite c!27151 (reg!880 r!15532) (regOne!1614 r!15532))) lt!36547))))

(declare-fun b!122249 () Bool)

(assert (=> b!122249 (= c!27149 ((_ is Union!551) r!15532))))

(declare-fun e!70122 () Regex!551)

(assert (=> b!122249 (= e!70122 e!70123)))

(declare-fun b!122250 () Bool)

(declare-fun e!70126 () Regex!551)

(declare-fun call!5196 () Regex!551)

(assert (=> b!122250 (= e!70126 (Union!551 (Concat!935 call!5196 (regTwo!1614 r!15532)) EmptyLang!551))))

(declare-fun bm!5192 () Bool)

(assert (=> bm!5192 (= call!5196 call!5198)))

(declare-fun bm!5193 () Bool)

(assert (=> bm!5193 (= call!5195 (derivativeStep!57 (ite c!27149 (regOne!1615 r!15532) (regTwo!1614 r!15532)) lt!36547))))

(declare-fun d!29055 () Bool)

(declare-fun lt!36664 () Regex!551)

(assert (=> d!29055 (validRegex!146 lt!36664)))

(declare-fun e!70125 () Regex!551)

(assert (=> d!29055 (= lt!36664 e!70125)))

(declare-fun c!27152 () Bool)

(assert (=> d!29055 (= c!27152 (or ((_ is EmptyExpr!551) r!15532) ((_ is EmptyLang!551) r!15532)))))

(assert (=> d!29055 (validRegex!146 r!15532)))

(assert (=> d!29055 (= (derivativeStep!57 r!15532 lt!36547) lt!36664)))

(declare-fun b!122251 () Bool)

(assert (=> b!122251 (= e!70122 (ite (= lt!36547 (c!27115 r!15532)) EmptyExpr!551 EmptyLang!551))))

(declare-fun b!122252 () Bool)

(assert (=> b!122252 (= e!70125 e!70122)))

(declare-fun c!27148 () Bool)

(assert (=> b!122252 (= c!27148 ((_ is ElementMatch!551) r!15532))))

(declare-fun b!122253 () Bool)

(declare-fun c!27150 () Bool)

(assert (=> b!122253 (= c!27150 (nullable!87 (regOne!1614 r!15532)))))

(assert (=> b!122253 (= e!70124 e!70126)))

(declare-fun b!122254 () Bool)

(assert (=> b!122254 (= e!70125 EmptyLang!551)))

(declare-fun b!122255 () Bool)

(assert (=> b!122255 (= e!70126 (Union!551 (Concat!935 call!5196 (regTwo!1614 r!15532)) call!5195))))

(assert (= (and d!29055 c!27152) b!122254))

(assert (= (and d!29055 (not c!27152)) b!122252))

(assert (= (and b!122252 c!27148) b!122251))

(assert (= (and b!122252 (not c!27148)) b!122249))

(assert (= (and b!122249 c!27149) b!122247))

(assert (= (and b!122249 (not c!27149)) b!122246))

(assert (= (and b!122246 c!27151) b!122248))

(assert (= (and b!122246 (not c!27151)) b!122253))

(assert (= (and b!122253 c!27150) b!122255))

(assert (= (and b!122253 (not c!27150)) b!122250))

(assert (= (or b!122255 b!122250) bm!5192))

(assert (= (or b!122248 bm!5192) bm!5190))

(assert (= (or b!122247 bm!5190) bm!5191))

(assert (= (or b!122247 b!122255) bm!5193))

(declare-fun m!108354 () Bool)

(assert (=> bm!5191 m!108354))

(declare-fun m!108356 () Bool)

(assert (=> bm!5193 m!108356))

(declare-fun m!108358 () Bool)

(assert (=> d!29055 m!108358))

(assert (=> d!29055 m!108222))

(declare-fun m!108360 () Bool)

(assert (=> b!122253 m!108360))

(assert (=> b!122145 d!29055))

(declare-fun d!29057 () Bool)

(declare-fun lostCauseFct!31 (Regex!551) Bool)

(assert (=> d!29057 (= (lostCause!71 r!15532) (lostCauseFct!31 r!15532))))

(declare-fun bs!11982 () Bool)

(assert (= bs!11982 d!29057))

(declare-fun m!108362 () Bool)

(assert (=> bs!11982 m!108362))

(assert (=> b!122135 d!29057))

(declare-fun d!29059 () Bool)

(assert (=> d!29059 (= testedSuffix!285 lt!36551)))

(declare-fun lt!36667 () Unit!1528)

(declare-fun choose!1585 (List!2012 List!2012 List!2012 List!2012 List!2012) Unit!1528)

(assert (=> d!29059 (= lt!36667 (choose!1585 testedP!367 testedSuffix!285 testedP!367 lt!36551 totalInput!1363))))

(assert (=> d!29059 (isPrefix!127 testedP!367 totalInput!1363)))

(assert (=> d!29059 (= (lemmaSamePrefixThenSameSuffix!62 testedP!367 testedSuffix!285 testedP!367 lt!36551 totalInput!1363) lt!36667)))

(declare-fun bs!11983 () Bool)

(assert (= bs!11983 d!29059))

(declare-fun m!108364 () Bool)

(assert (=> bs!11983 m!108364))

(assert (=> bs!11983 m!108216))

(assert (=> b!122135 d!29059))

(declare-fun d!29061 () Bool)

(declare-fun lt!36670 () List!2012)

(assert (=> d!29061 (= (++!378 testedP!367 lt!36670) totalInput!1363)))

(declare-fun e!70129 () List!2012)

(assert (=> d!29061 (= lt!36670 e!70129)))

(declare-fun c!27155 () Bool)

(assert (=> d!29061 (= c!27155 ((_ is Cons!2006) testedP!367))))

(assert (=> d!29061 (>= (size!1864 totalInput!1363) (size!1864 testedP!367))))

(assert (=> d!29061 (= (getSuffix!66 totalInput!1363 testedP!367) lt!36670)))

(declare-fun b!122260 () Bool)

(assert (=> b!122260 (= e!70129 (getSuffix!66 (tail!237 totalInput!1363) (t!22489 testedP!367)))))

(declare-fun b!122261 () Bool)

(assert (=> b!122261 (= e!70129 totalInput!1363)))

(assert (= (and d!29061 c!27155) b!122260))

(assert (= (and d!29061 (not c!27155)) b!122261))

(declare-fun m!108366 () Bool)

(assert (=> d!29061 m!108366))

(assert (=> d!29061 m!108262))

(assert (=> d!29061 m!108198))

(assert (=> b!122260 m!108272))

(assert (=> b!122260 m!108272))

(declare-fun m!108368 () Bool)

(assert (=> b!122260 m!108368))

(assert (=> b!122135 d!29061))

(declare-fun b!122272 () Bool)

(declare-fun res!57201 () Bool)

(declare-fun e!70135 () Bool)

(assert (=> b!122272 (=> (not res!57201) (not e!70135))))

(declare-fun lt!36673 () List!2012)

(assert (=> b!122272 (= res!57201 (= (size!1864 lt!36673) (+ (size!1864 testedP!367) (size!1864 testedSuffix!285))))))

(declare-fun b!122270 () Bool)

(declare-fun e!70134 () List!2012)

(assert (=> b!122270 (= e!70134 testedSuffix!285)))

(declare-fun b!122271 () Bool)

(assert (=> b!122271 (= e!70134 (Cons!2006 (h!7403 testedP!367) (++!378 (t!22489 testedP!367) testedSuffix!285)))))

(declare-fun b!122273 () Bool)

(assert (=> b!122273 (= e!70135 (or (not (= testedSuffix!285 Nil!2006)) (= lt!36673 testedP!367)))))

(declare-fun d!29063 () Bool)

(assert (=> d!29063 e!70135))

(declare-fun res!57200 () Bool)

(assert (=> d!29063 (=> (not res!57200) (not e!70135))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!226 (List!2012) (InoxSet C!2024))

(assert (=> d!29063 (= res!57200 (= (content!226 lt!36673) ((_ map or) (content!226 testedP!367) (content!226 testedSuffix!285))))))

(assert (=> d!29063 (= lt!36673 e!70134)))

(declare-fun c!27158 () Bool)

(assert (=> d!29063 (= c!27158 ((_ is Nil!2006) testedP!367))))

(assert (=> d!29063 (= (++!378 testedP!367 testedSuffix!285) lt!36673)))

(assert (= (and d!29063 c!27158) b!122270))

(assert (= (and d!29063 (not c!27158)) b!122271))

(assert (= (and d!29063 res!57200) b!122272))

(assert (= (and b!122272 res!57201) b!122273))

(declare-fun m!108370 () Bool)

(assert (=> b!122272 m!108370))

(assert (=> b!122272 m!108198))

(declare-fun m!108372 () Bool)

(assert (=> b!122272 m!108372))

(declare-fun m!108374 () Bool)

(assert (=> b!122271 m!108374))

(declare-fun m!108376 () Bool)

(assert (=> d!29063 m!108376))

(declare-fun m!108378 () Bool)

(assert (=> d!29063 m!108378))

(declare-fun m!108380 () Bool)

(assert (=> d!29063 m!108380))

(assert (=> b!122144 d!29063))

(declare-fun b!122292 () Bool)

(declare-fun e!70153 () Bool)

(declare-fun e!70154 () Bool)

(assert (=> b!122292 (= e!70153 e!70154)))

(declare-fun c!27163 () Bool)

(assert (=> b!122292 (= c!27163 ((_ is Star!551) r!15532))))

(declare-fun bm!5200 () Bool)

(declare-fun call!5205 () Bool)

(declare-fun call!5206 () Bool)

(assert (=> bm!5200 (= call!5205 call!5206)))

(declare-fun bm!5201 () Bool)

(declare-fun call!5207 () Bool)

(declare-fun c!27164 () Bool)

(assert (=> bm!5201 (= call!5207 (validRegex!146 (ite c!27164 (regOne!1615 r!15532) (regTwo!1614 r!15532))))))

(declare-fun b!122294 () Bool)

(declare-fun e!70155 () Bool)

(assert (=> b!122294 (= e!70154 e!70155)))

(declare-fun res!57216 () Bool)

(assert (=> b!122294 (= res!57216 (not (nullable!87 (reg!880 r!15532))))))

(assert (=> b!122294 (=> (not res!57216) (not e!70155))))

(declare-fun b!122295 () Bool)

(declare-fun e!70152 () Bool)

(declare-fun e!70156 () Bool)

(assert (=> b!122295 (= e!70152 e!70156)))

(declare-fun res!57212 () Bool)

(assert (=> b!122295 (=> (not res!57212) (not e!70156))))

(assert (=> b!122295 (= res!57212 call!5205)))

(declare-fun b!122296 () Bool)

(assert (=> b!122296 (= e!70156 call!5207)))

(declare-fun b!122297 () Bool)

(declare-fun e!70150 () Bool)

(assert (=> b!122297 (= e!70150 call!5205)))

(declare-fun b!122298 () Bool)

(assert (=> b!122298 (= e!70155 call!5206)))

(declare-fun b!122299 () Bool)

(declare-fun e!70151 () Bool)

(assert (=> b!122299 (= e!70154 e!70151)))

(assert (=> b!122299 (= c!27164 ((_ is Union!551) r!15532))))

(declare-fun b!122293 () Bool)

(declare-fun res!57215 () Bool)

(assert (=> b!122293 (=> res!57215 e!70152)))

(assert (=> b!122293 (= res!57215 (not ((_ is Concat!935) r!15532)))))

(assert (=> b!122293 (= e!70151 e!70152)))

(declare-fun d!29065 () Bool)

(declare-fun res!57214 () Bool)

(assert (=> d!29065 (=> res!57214 e!70153)))

(assert (=> d!29065 (= res!57214 ((_ is ElementMatch!551) r!15532))))

(assert (=> d!29065 (= (validRegex!146 r!15532) e!70153)))

(declare-fun b!122300 () Bool)

(declare-fun res!57213 () Bool)

(assert (=> b!122300 (=> (not res!57213) (not e!70150))))

(assert (=> b!122300 (= res!57213 call!5207)))

(assert (=> b!122300 (= e!70151 e!70150)))

(declare-fun bm!5202 () Bool)

(assert (=> bm!5202 (= call!5206 (validRegex!146 (ite c!27163 (reg!880 r!15532) (ite c!27164 (regTwo!1615 r!15532) (regOne!1614 r!15532)))))))

(assert (= (and d!29065 (not res!57214)) b!122292))

(assert (= (and b!122292 c!27163) b!122294))

(assert (= (and b!122292 (not c!27163)) b!122299))

(assert (= (and b!122294 res!57216) b!122298))

(assert (= (and b!122299 c!27164) b!122300))

(assert (= (and b!122299 (not c!27164)) b!122293))

(assert (= (and b!122300 res!57213) b!122297))

(assert (= (and b!122293 (not res!57215)) b!122295))

(assert (= (and b!122295 res!57212) b!122296))

(assert (= (or b!122297 b!122295) bm!5200))

(assert (= (or b!122300 b!122296) bm!5201))

(assert (= (or b!122298 bm!5200) bm!5202))

(declare-fun m!108382 () Bool)

(assert (=> bm!5201 m!108382))

(declare-fun m!108384 () Bool)

(assert (=> b!122294 m!108384))

(declare-fun m!108386 () Bool)

(assert (=> bm!5202 m!108386))

(assert (=> start!12334 d!29065))

(declare-fun d!29067 () Bool)

(declare-fun res!57219 () Bool)

(declare-fun e!70159 () Bool)

(assert (=> d!29067 (=> (not res!57219) (not e!70159))))

(assert (=> d!29067 (= res!57219 ((_ is HashMap!413) (cache!865 cache!470)))))

(assert (=> d!29067 (= (inv!2536 cache!470) e!70159)))

(declare-fun b!122303 () Bool)

(assert (=> b!122303 (= e!70159 (validCacheMap!28 (cache!865 cache!470)))))

(assert (= (and d!29067 res!57219) b!122303))

(assert (=> b!122303 m!108266))

(assert (=> start!12334 d!29067))

(declare-fun b!122306 () Bool)

(declare-fun res!57221 () Bool)

(declare-fun e!70161 () Bool)

(assert (=> b!122306 (=> (not res!57221) (not e!70161))))

(declare-fun lt!36674 () List!2012)

(assert (=> b!122306 (= res!57221 (= (size!1864 lt!36674) (+ (size!1864 lt!36536) (size!1864 lt!36553))))))

(declare-fun b!122304 () Bool)

(declare-fun e!70160 () List!2012)

(assert (=> b!122304 (= e!70160 lt!36553)))

(declare-fun b!122305 () Bool)

(assert (=> b!122305 (= e!70160 (Cons!2006 (h!7403 lt!36536) (++!378 (t!22489 lt!36536) lt!36553)))))

(declare-fun b!122307 () Bool)

(assert (=> b!122307 (= e!70161 (or (not (= lt!36553 Nil!2006)) (= lt!36674 lt!36536)))))

(declare-fun d!29069 () Bool)

(assert (=> d!29069 e!70161))

(declare-fun res!57220 () Bool)

(assert (=> d!29069 (=> (not res!57220) (not e!70161))))

(assert (=> d!29069 (= res!57220 (= (content!226 lt!36674) ((_ map or) (content!226 lt!36536) (content!226 lt!36553))))))

(assert (=> d!29069 (= lt!36674 e!70160)))

(declare-fun c!27165 () Bool)

(assert (=> d!29069 (= c!27165 ((_ is Nil!2006) lt!36536))))

(assert (=> d!29069 (= (++!378 lt!36536 lt!36553) lt!36674)))

(assert (= (and d!29069 c!27165) b!122304))

(assert (= (and d!29069 (not c!27165)) b!122305))

(assert (= (and d!29069 res!57220) b!122306))

(assert (= (and b!122306 res!57221) b!122307))

(declare-fun m!108388 () Bool)

(assert (=> b!122306 m!108388))

(assert (=> b!122306 m!108316))

(declare-fun m!108390 () Bool)

(assert (=> b!122306 m!108390))

(declare-fun m!108392 () Bool)

(assert (=> b!122305 m!108392))

(declare-fun m!108394 () Bool)

(assert (=> d!29069 m!108394))

(declare-fun m!108396 () Bool)

(assert (=> d!29069 m!108396))

(declare-fun m!108398 () Bool)

(assert (=> d!29069 m!108398))

(assert (=> b!122133 d!29069))

(declare-fun d!29071 () Bool)

(assert (=> d!29071 (= (head!501 testedSuffix!285) (h!7403 testedSuffix!285))))

(assert (=> b!122133 d!29071))

(declare-fun d!29073 () Bool)

(assert (=> d!29073 (= (tail!237 testedSuffix!285) (t!22489 testedSuffix!285))))

(assert (=> b!122133 d!29073))

(declare-fun b!122310 () Bool)

(declare-fun res!57223 () Bool)

(declare-fun e!70163 () Bool)

(assert (=> b!122310 (=> (not res!57223) (not e!70163))))

(declare-fun lt!36675 () List!2012)

(assert (=> b!122310 (= res!57223 (= (size!1864 lt!36675) (+ (size!1864 testedP!367) (size!1864 (Cons!2006 lt!36547 Nil!2006)))))))

(declare-fun b!122308 () Bool)

(declare-fun e!70162 () List!2012)

(assert (=> b!122308 (= e!70162 (Cons!2006 lt!36547 Nil!2006))))

(declare-fun b!122309 () Bool)

(assert (=> b!122309 (= e!70162 (Cons!2006 (h!7403 testedP!367) (++!378 (t!22489 testedP!367) (Cons!2006 lt!36547 Nil!2006))))))

(declare-fun b!122311 () Bool)

(assert (=> b!122311 (= e!70163 (or (not (= (Cons!2006 lt!36547 Nil!2006) Nil!2006)) (= lt!36675 testedP!367)))))

(declare-fun d!29075 () Bool)

(assert (=> d!29075 e!70163))

(declare-fun res!57222 () Bool)

(assert (=> d!29075 (=> (not res!57222) (not e!70163))))

(assert (=> d!29075 (= res!57222 (= (content!226 lt!36675) ((_ map or) (content!226 testedP!367) (content!226 (Cons!2006 lt!36547 Nil!2006)))))))

(assert (=> d!29075 (= lt!36675 e!70162)))

(declare-fun c!27166 () Bool)

(assert (=> d!29075 (= c!27166 ((_ is Nil!2006) testedP!367))))

(assert (=> d!29075 (= (++!378 testedP!367 (Cons!2006 lt!36547 Nil!2006)) lt!36675)))

(assert (= (and d!29075 c!27166) b!122308))

(assert (= (and d!29075 (not c!27166)) b!122309))

(assert (= (and d!29075 res!57222) b!122310))

(assert (= (and b!122310 res!57223) b!122311))

(declare-fun m!108400 () Bool)

(assert (=> b!122310 m!108400))

(assert (=> b!122310 m!108198))

(declare-fun m!108402 () Bool)

(assert (=> b!122310 m!108402))

(declare-fun m!108404 () Bool)

(assert (=> b!122309 m!108404))

(declare-fun m!108406 () Bool)

(assert (=> d!29075 m!108406))

(assert (=> d!29075 m!108378))

(declare-fun m!108408 () Bool)

(assert (=> d!29075 m!108408))

(assert (=> b!122133 d!29075))

(declare-fun d!29077 () Bool)

(assert (=> d!29077 (= (++!378 (++!378 testedP!367 (Cons!2006 lt!36547 Nil!2006)) lt!36553) totalInput!1363)))

(declare-fun lt!36678 () Unit!1528)

(declare-fun choose!1586 (List!2012 C!2024 List!2012 List!2012) Unit!1528)

(assert (=> d!29077 (= lt!36678 (choose!1586 testedP!367 lt!36547 lt!36553 totalInput!1363))))

(assert (=> d!29077 (= (++!378 testedP!367 (Cons!2006 lt!36547 lt!36553)) totalInput!1363)))

(assert (=> d!29077 (= (lemmaMoveElementToOtherListKeepsConcatEq!24 testedP!367 lt!36547 lt!36553 totalInput!1363) lt!36678)))

(declare-fun bs!11984 () Bool)

(assert (= bs!11984 d!29077))

(assert (=> bs!11984 m!108236))

(assert (=> bs!11984 m!108236))

(declare-fun m!108410 () Bool)

(assert (=> bs!11984 m!108410))

(declare-fun m!108412 () Bool)

(assert (=> bs!11984 m!108412))

(declare-fun m!108414 () Bool)

(assert (=> bs!11984 m!108414))

(assert (=> b!122133 d!29077))

(declare-fun b!122312 () Bool)

(declare-fun e!70165 () Bool)

(declare-fun e!70164 () Bool)

(assert (=> b!122312 (= e!70165 e!70164)))

(declare-fun res!57225 () Bool)

(assert (=> b!122312 (=> (not res!57225) (not e!70164))))

(assert (=> b!122312 (= res!57225 (not ((_ is Nil!2006) totalInput!1363)))))

(declare-fun d!29079 () Bool)

(declare-fun e!70166 () Bool)

(assert (=> d!29079 e!70166))

(declare-fun res!57227 () Bool)

(assert (=> d!29079 (=> res!57227 e!70166)))

(declare-fun lt!36679 () Bool)

(assert (=> d!29079 (= res!57227 (not lt!36679))))

(assert (=> d!29079 (= lt!36679 e!70165)))

(declare-fun res!57226 () Bool)

(assert (=> d!29079 (=> res!57226 e!70165)))

(assert (=> d!29079 (= res!57226 ((_ is Nil!2006) (++!378 testedP!367 (Cons!2006 (head!501 lt!36551) Nil!2006))))))

(assert (=> d!29079 (= (isPrefix!127 (++!378 testedP!367 (Cons!2006 (head!501 lt!36551) Nil!2006)) totalInput!1363) lt!36679)))

(declare-fun b!122315 () Bool)

(assert (=> b!122315 (= e!70166 (>= (size!1864 totalInput!1363) (size!1864 (++!378 testedP!367 (Cons!2006 (head!501 lt!36551) Nil!2006)))))))

(declare-fun b!122314 () Bool)

(assert (=> b!122314 (= e!70164 (isPrefix!127 (tail!237 (++!378 testedP!367 (Cons!2006 (head!501 lt!36551) Nil!2006))) (tail!237 totalInput!1363)))))

(declare-fun b!122313 () Bool)

(declare-fun res!57224 () Bool)

(assert (=> b!122313 (=> (not res!57224) (not e!70164))))

(assert (=> b!122313 (= res!57224 (= (head!501 (++!378 testedP!367 (Cons!2006 (head!501 lt!36551) Nil!2006))) (head!501 totalInput!1363)))))

(assert (= (and d!29079 (not res!57226)) b!122312))

(assert (= (and b!122312 res!57225) b!122313))

(assert (= (and b!122313 res!57224) b!122314))

(assert (= (and d!29079 (not res!57227)) b!122315))

(assert (=> b!122315 m!108262))

(assert (=> b!122315 m!108240))

(declare-fun m!108416 () Bool)

(assert (=> b!122315 m!108416))

(assert (=> b!122314 m!108240))

(declare-fun m!108418 () Bool)

(assert (=> b!122314 m!108418))

(assert (=> b!122314 m!108272))

(assert (=> b!122314 m!108418))

(assert (=> b!122314 m!108272))

(declare-fun m!108420 () Bool)

(assert (=> b!122314 m!108420))

(assert (=> b!122313 m!108240))

(declare-fun m!108422 () Bool)

(assert (=> b!122313 m!108422))

(assert (=> b!122313 m!108276))

(assert (=> b!122133 d!29079))

(declare-fun d!29081 () Bool)

(declare-fun nullableFct!21 (Regex!551) Bool)

(assert (=> d!29081 (= (nullable!87 r!15532) (nullableFct!21 r!15532))))

(declare-fun bs!11985 () Bool)

(assert (= bs!11985 d!29081))

(declare-fun m!108424 () Bool)

(assert (=> bs!11985 m!108424))

(assert (=> b!122133 d!29081))

(declare-fun d!29083 () Bool)

(assert (=> d!29083 (isPrefix!127 (++!378 testedP!367 (Cons!2006 (head!501 (getSuffix!66 totalInput!1363 testedP!367)) Nil!2006)) totalInput!1363)))

(declare-fun lt!36682 () Unit!1528)

(declare-fun choose!1587 (List!2012 List!2012) Unit!1528)

(assert (=> d!29083 (= lt!36682 (choose!1587 testedP!367 totalInput!1363))))

(assert (=> d!29083 (isPrefix!127 testedP!367 totalInput!1363)))

(assert (=> d!29083 (= (lemmaAddHeadSuffixToPrefixStillPrefix!30 testedP!367 totalInput!1363) lt!36682)))

(declare-fun bs!11986 () Bool)

(assert (= bs!11986 d!29083))

(declare-fun m!108426 () Bool)

(assert (=> bs!11986 m!108426))

(assert (=> bs!11986 m!108426))

(declare-fun m!108428 () Bool)

(assert (=> bs!11986 m!108428))

(declare-fun m!108430 () Bool)

(assert (=> bs!11986 m!108430))

(assert (=> bs!11986 m!108216))

(assert (=> bs!11986 m!108204))

(declare-fun m!108432 () Bool)

(assert (=> bs!11986 m!108432))

(assert (=> bs!11986 m!108204))

(assert (=> b!122133 d!29083))

(declare-fun d!29085 () Bool)

(assert (=> d!29085 (= (head!501 lt!36551) (h!7403 lt!36551))))

(assert (=> b!122133 d!29085))

(declare-fun b!122318 () Bool)

(declare-fun res!57229 () Bool)

(declare-fun e!70168 () Bool)

(assert (=> b!122318 (=> (not res!57229) (not e!70168))))

(declare-fun lt!36683 () List!2012)

(assert (=> b!122318 (= res!57229 (= (size!1864 lt!36683) (+ (size!1864 testedP!367) (size!1864 (Cons!2006 (head!501 lt!36551) Nil!2006)))))))

(declare-fun b!122316 () Bool)

(declare-fun e!70167 () List!2012)

(assert (=> b!122316 (= e!70167 (Cons!2006 (head!501 lt!36551) Nil!2006))))

(declare-fun b!122317 () Bool)

(assert (=> b!122317 (= e!70167 (Cons!2006 (h!7403 testedP!367) (++!378 (t!22489 testedP!367) (Cons!2006 (head!501 lt!36551) Nil!2006))))))

(declare-fun b!122319 () Bool)

(assert (=> b!122319 (= e!70168 (or (not (= (Cons!2006 (head!501 lt!36551) Nil!2006) Nil!2006)) (= lt!36683 testedP!367)))))

(declare-fun d!29087 () Bool)

(assert (=> d!29087 e!70168))

(declare-fun res!57228 () Bool)

(assert (=> d!29087 (=> (not res!57228) (not e!70168))))

(assert (=> d!29087 (= res!57228 (= (content!226 lt!36683) ((_ map or) (content!226 testedP!367) (content!226 (Cons!2006 (head!501 lt!36551) Nil!2006)))))))

(assert (=> d!29087 (= lt!36683 e!70167)))

(declare-fun c!27167 () Bool)

(assert (=> d!29087 (= c!27167 ((_ is Nil!2006) testedP!367))))

(assert (=> d!29087 (= (++!378 testedP!367 (Cons!2006 (head!501 lt!36551) Nil!2006)) lt!36683)))

(assert (= (and d!29087 c!27167) b!122316))

(assert (= (and d!29087 (not c!27167)) b!122317))

(assert (= (and d!29087 res!57228) b!122318))

(assert (= (and b!122318 res!57229) b!122319))

(declare-fun m!108434 () Bool)

(assert (=> b!122318 m!108434))

(assert (=> b!122318 m!108198))

(declare-fun m!108436 () Bool)

(assert (=> b!122318 m!108436))

(declare-fun m!108438 () Bool)

(assert (=> b!122317 m!108438))

(declare-fun m!108440 () Bool)

(assert (=> d!29087 m!108440))

(assert (=> d!29087 m!108378))

(declare-fun m!108442 () Bool)

(assert (=> d!29087 m!108442))

(assert (=> b!122133 d!29087))

(declare-fun b!122320 () Bool)

(declare-fun e!70169 () Unit!1528)

(declare-fun Unit!1535 () Unit!1528)

(assert (=> b!122320 (= e!70169 Unit!1535)))

(declare-fun b!122321 () Bool)

(declare-fun e!70170 () tuple2!2344)

(assert (=> b!122321 (= e!70170 (tuple2!2345 Nil!2006 totalInput!1363))))

(declare-fun b!122322 () Bool)

(declare-fun e!70174 () tuple2!2344)

(declare-fun lt!36702 () tuple2!2344)

(assert (=> b!122322 (= e!70174 lt!36702)))

(declare-fun bm!5203 () Bool)

(declare-fun call!5213 () Regex!551)

(declare-fun call!5214 () C!2024)

(assert (=> bm!5203 (= call!5213 (derivativeStep!57 r!15532 call!5214))))

(declare-fun bm!5204 () Bool)

(declare-fun call!5215 () Bool)

(assert (=> bm!5204 (= call!5215 (nullable!87 r!15532))))

(declare-fun bm!5206 () Bool)

(declare-fun call!5208 () Unit!1528)

(assert (=> bm!5206 (= call!5208 (lemmaIsPrefixRefl!97 totalInput!1363 totalInput!1363))))

(declare-fun b!122323 () Bool)

(declare-fun e!70175 () tuple2!2344)

(assert (=> b!122323 (= e!70175 e!70174)))

(declare-fun call!5210 () tuple2!2344)

(assert (=> b!122323 (= lt!36702 call!5210)))

(declare-fun c!27168 () Bool)

(assert (=> b!122323 (= c!27168 (isEmpty!815 (_1!1382 lt!36702)))))

(declare-fun b!122324 () Bool)

(declare-fun e!70171 () tuple2!2344)

(assert (=> b!122324 (= e!70171 (tuple2!2345 Nil!2006 totalInput!1363))))

(declare-fun b!122325 () Bool)

(declare-fun e!70176 () Bool)

(declare-fun lt!36698 () tuple2!2344)

(assert (=> b!122325 (= e!70176 (>= (size!1864 (_1!1382 lt!36698)) (size!1864 testedP!367)))))

(declare-fun b!122326 () Bool)

(assert (=> b!122326 (= e!70171 (tuple2!2345 testedP!367 Nil!2006))))

(declare-fun b!122327 () Bool)

(declare-fun c!27173 () Bool)

(assert (=> b!122327 (= c!27173 call!5215)))

(declare-fun lt!36684 () Unit!1528)

(declare-fun lt!36703 () Unit!1528)

(assert (=> b!122327 (= lt!36684 lt!36703)))

(assert (=> b!122327 (= totalInput!1363 testedP!367)))

(declare-fun call!5211 () Unit!1528)

(assert (=> b!122327 (= lt!36703 call!5211)))

(declare-fun lt!36695 () Unit!1528)

(declare-fun lt!36687 () Unit!1528)

(assert (=> b!122327 (= lt!36695 lt!36687)))

(declare-fun call!5209 () Bool)

(assert (=> b!122327 call!5209))

(assert (=> b!122327 (= lt!36687 call!5208)))

(declare-fun e!70173 () tuple2!2344)

(assert (=> b!122327 (= e!70173 e!70171)))

(declare-fun d!29089 () Bool)

(declare-fun e!70172 () Bool)

(assert (=> d!29089 e!70172))

(declare-fun res!57230 () Bool)

(assert (=> d!29089 (=> (not res!57230) (not e!70172))))

(assert (=> d!29089 (= res!57230 (= (++!378 (_1!1382 lt!36698) (_2!1382 lt!36698)) totalInput!1363))))

(assert (=> d!29089 (= lt!36698 e!70170)))

(declare-fun c!27169 () Bool)

(assert (=> d!29089 (= c!27169 (lostCause!71 r!15532))))

(declare-fun lt!36706 () Unit!1528)

(declare-fun Unit!1536 () Unit!1528)

(assert (=> d!29089 (= lt!36706 Unit!1536)))

(assert (=> d!29089 (= (getSuffix!66 totalInput!1363 testedP!367) testedSuffix!285)))

(declare-fun lt!36709 () Unit!1528)

(declare-fun lt!36692 () Unit!1528)

(assert (=> d!29089 (= lt!36709 lt!36692)))

(declare-fun lt!36691 () List!2012)

(assert (=> d!29089 (= testedSuffix!285 lt!36691)))

(assert (=> d!29089 (= lt!36692 (lemmaSamePrefixThenSameSuffix!62 testedP!367 testedSuffix!285 testedP!367 lt!36691 totalInput!1363))))

(assert (=> d!29089 (= lt!36691 (getSuffix!66 totalInput!1363 testedP!367))))

(declare-fun lt!36710 () Unit!1528)

(declare-fun lt!36701 () Unit!1528)

(assert (=> d!29089 (= lt!36710 lt!36701)))

(assert (=> d!29089 (isPrefix!127 testedP!367 (++!378 testedP!367 testedSuffix!285))))

(assert (=> d!29089 (= lt!36701 (lemmaConcatTwoListThenFirstIsPrefix!71 testedP!367 testedSuffix!285))))

(assert (=> d!29089 (validRegex!146 r!15532)))

(assert (=> d!29089 (= (findLongestMatchInner!46 r!15532 testedP!367 testedPSize!285 testedSuffix!285 totalInput!1363 totalInputSize!643) lt!36698)))

(declare-fun bm!5205 () Bool)

(declare-fun call!5212 () List!2012)

(declare-fun lt!36686 () List!2012)

(assert (=> bm!5205 (= call!5210 (findLongestMatchInner!46 call!5213 lt!36686 (+ testedPSize!285 1) call!5212 totalInput!1363 totalInputSize!643))))

(declare-fun b!122328 () Bool)

(assert (=> b!122328 (= e!70174 (tuple2!2345 testedP!367 testedSuffix!285))))

(declare-fun b!122329 () Bool)

(assert (=> b!122329 (= e!70172 e!70176)))

(declare-fun res!57231 () Bool)

(assert (=> b!122329 (=> res!57231 e!70176)))

(assert (=> b!122329 (= res!57231 (isEmpty!815 (_1!1382 lt!36698)))))

(declare-fun bm!5207 () Bool)

(assert (=> bm!5207 (= call!5209 (isPrefix!127 totalInput!1363 totalInput!1363))))

(declare-fun b!122330 () Bool)

(declare-fun Unit!1537 () Unit!1528)

(assert (=> b!122330 (= e!70169 Unit!1537)))

(declare-fun lt!36711 () Unit!1528)

(assert (=> b!122330 (= lt!36711 call!5208)))

(assert (=> b!122330 call!5209))

(declare-fun lt!36690 () Unit!1528)

(assert (=> b!122330 (= lt!36690 lt!36711)))

(declare-fun lt!36694 () Unit!1528)

(assert (=> b!122330 (= lt!36694 call!5211)))

(assert (=> b!122330 (= totalInput!1363 testedP!367)))

(declare-fun lt!36689 () Unit!1528)

(assert (=> b!122330 (= lt!36689 lt!36694)))

(assert (=> b!122330 false))

(declare-fun b!122331 () Bool)

(assert (=> b!122331 (= e!70175 call!5210)))

(declare-fun bm!5208 () Bool)

(assert (=> bm!5208 (= call!5214 (head!501 testedSuffix!285))))

(declare-fun b!122332 () Bool)

(assert (=> b!122332 (= e!70170 e!70173)))

(declare-fun c!27171 () Bool)

(assert (=> b!122332 (= c!27171 (= testedPSize!285 totalInputSize!643))))

(declare-fun bm!5209 () Bool)

(assert (=> bm!5209 (= call!5212 (tail!237 testedSuffix!285))))

(declare-fun bm!5210 () Bool)

(assert (=> bm!5210 (= call!5211 (lemmaIsPrefixSameLengthThenSameList!40 totalInput!1363 testedP!367 totalInput!1363))))

(declare-fun b!122333 () Bool)

(declare-fun c!27170 () Bool)

(assert (=> b!122333 (= c!27170 call!5215)))

(declare-fun lt!36685 () Unit!1528)

(declare-fun lt!36688 () Unit!1528)

(assert (=> b!122333 (= lt!36685 lt!36688)))

(declare-fun lt!36697 () C!2024)

(declare-fun lt!36693 () List!2012)

(assert (=> b!122333 (= (++!378 (++!378 testedP!367 (Cons!2006 lt!36697 Nil!2006)) lt!36693) totalInput!1363)))

(assert (=> b!122333 (= lt!36688 (lemmaMoveElementToOtherListKeepsConcatEq!24 testedP!367 lt!36697 lt!36693 totalInput!1363))))

(assert (=> b!122333 (= lt!36693 (tail!237 testedSuffix!285))))

(assert (=> b!122333 (= lt!36697 (head!501 testedSuffix!285))))

(declare-fun lt!36708 () Unit!1528)

(declare-fun lt!36705 () Unit!1528)

(assert (=> b!122333 (= lt!36708 lt!36705)))

(assert (=> b!122333 (isPrefix!127 (++!378 testedP!367 (Cons!2006 (head!501 (getSuffix!66 totalInput!1363 testedP!367)) Nil!2006)) totalInput!1363)))

(assert (=> b!122333 (= lt!36705 (lemmaAddHeadSuffixToPrefixStillPrefix!30 testedP!367 totalInput!1363))))

(declare-fun lt!36699 () Unit!1528)

(declare-fun lt!36696 () Unit!1528)

(assert (=> b!122333 (= lt!36699 lt!36696)))

(assert (=> b!122333 (= lt!36696 (lemmaAddHeadSuffixToPrefixStillPrefix!30 testedP!367 totalInput!1363))))

(assert (=> b!122333 (= lt!36686 (++!378 testedP!367 (Cons!2006 (head!501 testedSuffix!285) Nil!2006)))))

(declare-fun lt!36707 () Unit!1528)

(assert (=> b!122333 (= lt!36707 e!70169)))

(declare-fun c!27172 () Bool)

(assert (=> b!122333 (= c!27172 (= (size!1864 testedP!367) (size!1864 totalInput!1363)))))

(declare-fun lt!36700 () Unit!1528)

(declare-fun lt!36704 () Unit!1528)

(assert (=> b!122333 (= lt!36700 lt!36704)))

(assert (=> b!122333 (<= (size!1864 testedP!367) (size!1864 totalInput!1363))))

(assert (=> b!122333 (= lt!36704 (lemmaIsPrefixThenSmallerEqSize!39 testedP!367 totalInput!1363))))

(assert (=> b!122333 (= e!70173 e!70175)))

(assert (= (and d!29089 c!27169) b!122321))

(assert (= (and d!29089 (not c!27169)) b!122332))

(assert (= (and b!122332 c!27171) b!122327))

(assert (= (and b!122332 (not c!27171)) b!122333))

(assert (= (and b!122327 c!27173) b!122326))

(assert (= (and b!122327 (not c!27173)) b!122324))

(assert (= (and b!122333 c!27172) b!122330))

(assert (= (and b!122333 (not c!27172)) b!122320))

(assert (= (and b!122333 c!27170) b!122323))

(assert (= (and b!122333 (not c!27170)) b!122331))

(assert (= (and b!122323 c!27168) b!122328))

(assert (= (and b!122323 (not c!27168)) b!122322))

(assert (= (or b!122323 b!122331) bm!5209))

(assert (= (or b!122323 b!122331) bm!5208))

(assert (= (or b!122323 b!122331) bm!5203))

(assert (= (or b!122323 b!122331) bm!5205))

(assert (= (or b!122327 b!122330) bm!5206))

(assert (= (or b!122327 b!122330) bm!5207))

(assert (= (or b!122327 b!122333) bm!5204))

(assert (= (or b!122327 b!122330) bm!5210))

(assert (= (and d!29089 res!57230) b!122329))

(assert (= (and b!122329 (not res!57231)) b!122325))

(declare-fun m!108444 () Bool)

(assert (=> bm!5203 m!108444))

(declare-fun m!108446 () Bool)

(assert (=> b!122333 m!108446))

(declare-fun m!108448 () Bool)

(assert (=> b!122333 m!108448))

(declare-fun m!108450 () Bool)

(assert (=> b!122333 m!108450))

(declare-fun m!108452 () Bool)

(assert (=> b!122333 m!108452))

(assert (=> b!122333 m!108450))

(assert (=> b!122333 m!108262))

(assert (=> b!122333 m!108426))

(assert (=> b!122333 m!108204))

(assert (=> b!122333 m!108432))

(assert (=> b!122333 m!108198))

(assert (=> b!122333 m!108248))

(assert (=> b!122333 m!108250))

(assert (=> b!122333 m!108260))

(assert (=> b!122333 m!108246))

(assert (=> b!122333 m!108204))

(assert (=> b!122333 m!108426))

(assert (=> b!122333 m!108428))

(declare-fun m!108454 () Bool)

(assert (=> b!122325 m!108454))

(assert (=> b!122325 m!108198))

(assert (=> d!29089 m!108258))

(assert (=> d!29089 m!108200))

(assert (=> d!29089 m!108220))

(assert (=> d!29089 m!108258))

(assert (=> d!29089 m!108294))

(declare-fun m!108456 () Bool)

(assert (=> d!29089 m!108456))

(declare-fun m!108458 () Bool)

(assert (=> d!29089 m!108458))

(assert (=> d!29089 m!108204))

(assert (=> d!29089 m!108222))

(assert (=> bm!5204 m!108238))

(declare-fun m!108460 () Bool)

(assert (=> bm!5205 m!108460))

(assert (=> bm!5208 m!108246))

(assert (=> bm!5206 m!108206))

(assert (=> bm!5207 m!108208))

(assert (=> bm!5209 m!108250))

(declare-fun m!108462 () Bool)

(assert (=> b!122329 m!108462))

(declare-fun m!108464 () Bool)

(assert (=> b!122323 m!108464))

(assert (=> bm!5210 m!108210))

(assert (=> b!122142 d!29089))

(declare-fun b!122338 () Bool)

(declare-fun tp!67088 () Bool)

(declare-fun e!70179 () Bool)

(declare-fun tp!67090 () Bool)

(declare-fun tp!67089 () Bool)

(assert (=> b!122338 (= e!70179 (and tp!67088 tp_is_empty!1157 tp!67089 tp!67090))))

(assert (=> b!122140 (= tp!67075 e!70179)))

(assert (= (and b!122140 ((_ is Cons!2007) (zeroValue!673 (v!13366 (underlying!1033 (v!13367 (underlying!1034 (cache!865 cache!470)))))))) b!122338))

(declare-fun tp!67091 () Bool)

(declare-fun e!70180 () Bool)

(declare-fun tp!67092 () Bool)

(declare-fun tp!67093 () Bool)

(declare-fun b!122339 () Bool)

(assert (=> b!122339 (= e!70180 (and tp!67091 tp_is_empty!1157 tp!67092 tp!67093))))

(assert (=> b!122140 (= tp!67068 e!70180)))

(assert (= (and b!122140 ((_ is Cons!2007) (minValue!673 (v!13366 (underlying!1033 (v!13367 (underlying!1034 (cache!865 cache!470)))))))) b!122339))

(declare-fun b!122351 () Bool)

(declare-fun e!70183 () Bool)

(declare-fun tp!67107 () Bool)

(declare-fun tp!67105 () Bool)

(assert (=> b!122351 (= e!70183 (and tp!67107 tp!67105))))

(declare-fun b!122353 () Bool)

(declare-fun tp!67108 () Bool)

(declare-fun tp!67106 () Bool)

(assert (=> b!122353 (= e!70183 (and tp!67108 tp!67106))))

(declare-fun b!122350 () Bool)

(assert (=> b!122350 (= e!70183 tp_is_empty!1157)))

(assert (=> b!122126 (= tp!67076 e!70183)))

(declare-fun b!122352 () Bool)

(declare-fun tp!67104 () Bool)

(assert (=> b!122352 (= e!70183 tp!67104)))

(assert (= (and b!122126 ((_ is ElementMatch!551) (regOne!1614 r!15532))) b!122350))

(assert (= (and b!122126 ((_ is Concat!935) (regOne!1614 r!15532))) b!122351))

(assert (= (and b!122126 ((_ is Star!551) (regOne!1614 r!15532))) b!122352))

(assert (= (and b!122126 ((_ is Union!551) (regOne!1614 r!15532))) b!122353))

(declare-fun b!122355 () Bool)

(declare-fun e!70184 () Bool)

(declare-fun tp!67112 () Bool)

(declare-fun tp!67110 () Bool)

(assert (=> b!122355 (= e!70184 (and tp!67112 tp!67110))))

(declare-fun b!122357 () Bool)

(declare-fun tp!67113 () Bool)

(declare-fun tp!67111 () Bool)

(assert (=> b!122357 (= e!70184 (and tp!67113 tp!67111))))

(declare-fun b!122354 () Bool)

(assert (=> b!122354 (= e!70184 tp_is_empty!1157)))

(assert (=> b!122126 (= tp!67072 e!70184)))

(declare-fun b!122356 () Bool)

(declare-fun tp!67109 () Bool)

(assert (=> b!122356 (= e!70184 tp!67109)))

(assert (= (and b!122126 ((_ is ElementMatch!551) (regTwo!1614 r!15532))) b!122354))

(assert (= (and b!122126 ((_ is Concat!935) (regTwo!1614 r!15532))) b!122355))

(assert (= (and b!122126 ((_ is Star!551) (regTwo!1614 r!15532))) b!122356))

(assert (= (and b!122126 ((_ is Union!551) (regTwo!1614 r!15532))) b!122357))

(declare-fun tp!67134 () Bool)

(declare-fun tp!67132 () Bool)

(declare-fun b!122365 () Bool)

(declare-fun e!70189 () Bool)

(declare-fun tp!67130 () Bool)

(assert (=> b!122365 (= e!70189 (and tp!67134 tp_is_empty!1157 tp!67132 tp!67130))))

(declare-fun mapIsEmpty!1614 () Bool)

(declare-fun mapRes!1614 () Bool)

(assert (=> mapIsEmpty!1614 mapRes!1614))

(declare-fun mapNonEmpty!1614 () Bool)

(declare-fun tp!67131 () Bool)

(declare-fun e!70190 () Bool)

(assert (=> mapNonEmpty!1614 (= mapRes!1614 (and tp!67131 e!70190))))

(declare-fun mapKey!1614 () (_ BitVec 32))

(declare-fun mapRest!1614 () (Array (_ BitVec 32) List!2013))

(declare-fun mapValue!1614 () List!2013)

(assert (=> mapNonEmpty!1614 (= mapRest!1611 (store mapRest!1614 mapKey!1614 mapValue!1614))))

(declare-fun condMapEmpty!1614 () Bool)

(declare-fun mapDefault!1614 () List!2013)

(assert (=> mapNonEmpty!1611 (= condMapEmpty!1614 (= mapRest!1611 ((as const (Array (_ BitVec 32) List!2013)) mapDefault!1614)))))

(assert (=> mapNonEmpty!1611 (= tp!67078 (and e!70189 mapRes!1614))))

(declare-fun tp!67128 () Bool)

(declare-fun b!122364 () Bool)

(declare-fun tp!67129 () Bool)

(declare-fun tp!67133 () Bool)

(assert (=> b!122364 (= e!70190 (and tp!67128 tp_is_empty!1157 tp!67129 tp!67133))))

(assert (= (and mapNonEmpty!1611 condMapEmpty!1614) mapIsEmpty!1614))

(assert (= (and mapNonEmpty!1611 (not condMapEmpty!1614)) mapNonEmpty!1614))

(assert (= (and mapNonEmpty!1614 ((_ is Cons!2007) mapValue!1614)) b!122364))

(assert (= (and mapNonEmpty!1611 ((_ is Cons!2007) mapDefault!1614)) b!122365))

(declare-fun m!108466 () Bool)

(assert (=> mapNonEmpty!1614 m!108466))

(declare-fun tp!67137 () Bool)

(declare-fun tp!67136 () Bool)

(declare-fun e!70191 () Bool)

(declare-fun tp!67135 () Bool)

(declare-fun b!122366 () Bool)

(assert (=> b!122366 (= e!70191 (and tp!67135 tp_is_empty!1157 tp!67136 tp!67137))))

(assert (=> mapNonEmpty!1611 (= tp!67074 e!70191)))

(assert (= (and mapNonEmpty!1611 ((_ is Cons!2007) mapValue!1611)) b!122366))

(declare-fun b!122371 () Bool)

(declare-fun e!70194 () Bool)

(declare-fun tp!67140 () Bool)

(assert (=> b!122371 (= e!70194 (and tp_is_empty!1157 tp!67140))))

(assert (=> b!122130 (= tp!67071 e!70194)))

(assert (= (and b!122130 ((_ is Cons!2006) (t!22489 testedSuffix!285))) b!122371))

(declare-fun b!122373 () Bool)

(declare-fun e!70195 () Bool)

(declare-fun tp!67144 () Bool)

(declare-fun tp!67142 () Bool)

(assert (=> b!122373 (= e!70195 (and tp!67144 tp!67142))))

(declare-fun b!122375 () Bool)

(declare-fun tp!67145 () Bool)

(declare-fun tp!67143 () Bool)

(assert (=> b!122375 (= e!70195 (and tp!67145 tp!67143))))

(declare-fun b!122372 () Bool)

(assert (=> b!122372 (= e!70195 tp_is_empty!1157)))

(assert (=> b!122129 (= tp!67081 e!70195)))

(declare-fun b!122374 () Bool)

(declare-fun tp!67141 () Bool)

(assert (=> b!122374 (= e!70195 tp!67141)))

(assert (= (and b!122129 ((_ is ElementMatch!551) (reg!880 r!15532))) b!122372))

(assert (= (and b!122129 ((_ is Concat!935) (reg!880 r!15532))) b!122373))

(assert (= (and b!122129 ((_ is Star!551) (reg!880 r!15532))) b!122374))

(assert (= (and b!122129 ((_ is Union!551) (reg!880 r!15532))) b!122375))

(declare-fun b!122377 () Bool)

(declare-fun e!70196 () Bool)

(declare-fun tp!67149 () Bool)

(declare-fun tp!67147 () Bool)

(assert (=> b!122377 (= e!70196 (and tp!67149 tp!67147))))

(declare-fun b!122379 () Bool)

(declare-fun tp!67150 () Bool)

(declare-fun tp!67148 () Bool)

(assert (=> b!122379 (= e!70196 (and tp!67150 tp!67148))))

(declare-fun b!122376 () Bool)

(assert (=> b!122376 (= e!70196 tp_is_empty!1157)))

(assert (=> b!122138 (= tp!67077 e!70196)))

(declare-fun b!122378 () Bool)

(declare-fun tp!67146 () Bool)

(assert (=> b!122378 (= e!70196 tp!67146)))

(assert (= (and b!122138 ((_ is ElementMatch!551) (regOne!1615 r!15532))) b!122376))

(assert (= (and b!122138 ((_ is Concat!935) (regOne!1615 r!15532))) b!122377))

(assert (= (and b!122138 ((_ is Star!551) (regOne!1615 r!15532))) b!122378))

(assert (= (and b!122138 ((_ is Union!551) (regOne!1615 r!15532))) b!122379))

(declare-fun b!122381 () Bool)

(declare-fun e!70197 () Bool)

(declare-fun tp!67154 () Bool)

(declare-fun tp!67152 () Bool)

(assert (=> b!122381 (= e!70197 (and tp!67154 tp!67152))))

(declare-fun b!122383 () Bool)

(declare-fun tp!67155 () Bool)

(declare-fun tp!67153 () Bool)

(assert (=> b!122383 (= e!70197 (and tp!67155 tp!67153))))

(declare-fun b!122380 () Bool)

(assert (=> b!122380 (= e!70197 tp_is_empty!1157)))

(assert (=> b!122138 (= tp!67079 e!70197)))

(declare-fun b!122382 () Bool)

(declare-fun tp!67151 () Bool)

(assert (=> b!122382 (= e!70197 tp!67151)))

(assert (= (and b!122138 ((_ is ElementMatch!551) (regTwo!1615 r!15532))) b!122380))

(assert (= (and b!122138 ((_ is Concat!935) (regTwo!1615 r!15532))) b!122381))

(assert (= (and b!122138 ((_ is Star!551) (regTwo!1615 r!15532))) b!122382))

(assert (= (and b!122138 ((_ is Union!551) (regTwo!1615 r!15532))) b!122383))

(declare-fun b!122384 () Bool)

(declare-fun e!70198 () Bool)

(declare-fun tp!67157 () Bool)

(declare-fun tp!67156 () Bool)

(declare-fun tp!67158 () Bool)

(assert (=> b!122384 (= e!70198 (and tp!67156 tp_is_empty!1157 tp!67157 tp!67158))))

(assert (=> b!122141 (= tp!67080 e!70198)))

(assert (= (and b!122141 ((_ is Cons!2007) mapDefault!1611)) b!122384))

(declare-fun b!122385 () Bool)

(declare-fun e!70199 () Bool)

(declare-fun tp!67159 () Bool)

(assert (=> b!122385 (= e!70199 (and tp_is_empty!1157 tp!67159))))

(assert (=> b!122152 (= tp!67073 e!70199)))

(assert (= (and b!122152 ((_ is Cons!2006) (t!22489 totalInput!1363))) b!122385))

(declare-fun b!122386 () Bool)

(declare-fun e!70200 () Bool)

(declare-fun tp!67160 () Bool)

(assert (=> b!122386 (= e!70200 (and tp_is_empty!1157 tp!67160))))

(assert (=> b!122147 (= tp!67070 e!70200)))

(assert (= (and b!122147 ((_ is Cons!2006) (t!22489 testedP!367))) b!122386))

(check-sat (not d!29057) (not bm!5191) (not b!122218) (not b!122180) (not d!29063) (not b!122253) (not b!122329) (not d!29031) (not d!29059) (not bm!5209) (not bm!5203) (not b!122158) (not b!122315) (not b!122365) (not b!122383) (not b!122323) (not b!122303) (not b!122171) (not b!122382) (not b!122174) (not bm!5181) (not d!29069) (not b!122260) (not b_next!3897) (not d!29075) (not b!122325) (not d!29089) (not b!122178) (not bm!5175) (not bm!5177) (not b!122381) (not b!122386) (not bm!5208) (not b!122225) (not b!122378) (not b!122338) (not d!29053) (not b!122333) (not b!122313) (not d!29035) (not b!122212) (not b!122352) (not b!122357) (not bm!5201) (not bm!5205) (not b!122314) (not d!29081) (not b!122294) (not b!122379) (not b!122351) (not b!122371) (not b!122317) (not bm!5178) (not b!122377) (not b!122375) (not d!29083) (not b!122172) (not d!29047) (not b!122272) (not b!122355) (not b!122214) (not b!122373) (not d!29061) (not bm!5180) (not bm!5204) (not b!122339) (not b!122176) (not b_next!3899) (not bm!5210) (not b!122305) (not d!29077) b_and!6027 (not bm!5207) (not b!122353) (not d!29055) (not b!122179) (not b!122222) (not d!29051) (not b!122271) (not b!122366) (not d!29087) (not b!122160) (not bm!5176) (not b!122175) (not b!122374) (not b!122364) (not d!29039) (not bm!5179) tp_is_empty!1157 (not b!122170) (not bm!5193) (not mapNonEmpty!1614) (not b!122318) (not b!122356) (not d!29045) (not bm!5206) (not bm!5202) (not b!122384) (not bm!5174) (not b!122385) b_and!6029 (not b!122306) (not b!122309) (not b!122310))
(check-sat b_and!6029 b_and!6027 (not b_next!3899) (not b_next!3897))
