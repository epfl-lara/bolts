; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12556 () Bool)

(assert start!12556)

(declare-fun b!124155 () Bool)

(declare-fun b_free!3937 () Bool)

(declare-fun b_next!3937 () Bool)

(assert (=> b!124155 (= b_free!3937 (not b_next!3937))))

(declare-fun tp!68050 () Bool)

(declare-fun b_and!6067 () Bool)

(assert (=> b!124155 (= tp!68050 b_and!6067)))

(declare-fun b!124162 () Bool)

(declare-fun b_free!3939 () Bool)

(declare-fun b_next!3939 () Bool)

(assert (=> b!124162 (= b_free!3939 (not b_next!3939))))

(declare-fun tp!68051 () Bool)

(declare-fun b_and!6069 () Bool)

(assert (=> b!124162 (= tp!68051 b_and!6069)))

(declare-fun b!124144 () Bool)

(declare-fun e!71373 () Bool)

(declare-fun e!71371 () Bool)

(assert (=> b!124144 (= e!71373 e!71371)))

(declare-fun res!57830 () Bool)

(assert (=> b!124144 (=> (not res!57830) (not e!71371))))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!37489 () Int)

(assert (=> b!124144 (= res!57830 (= totalInputSize!643 lt!37489))))

(declare-datatypes ((C!2044 0))(
  ( (C!2045 (val!748 Int)) )
))
(declare-datatypes ((List!2032 0))(
  ( (Nil!2026) (Cons!2026 (h!7423 C!2044) (t!22509 List!2032)) )
))
(declare-fun totalInput!1363 () List!2032)

(declare-fun size!1892 (List!2032) Int)

(assert (=> b!124144 (= lt!37489 (size!1892 totalInput!1363))))

(declare-fun b!124145 () Bool)

(declare-fun res!57832 () Bool)

(declare-fun e!71360 () Bool)

(assert (=> b!124145 (=> (not res!57832) (not e!71360))))

(declare-datatypes ((Regex!561 0))(
  ( (ElementMatch!561 (c!27404 C!2044)) (Concat!945 (regOne!1634 Regex!561) (regTwo!1634 Regex!561)) (EmptyExpr!561) (Star!561 (reg!890 Regex!561)) (EmptyLang!561) (Union!561 (regOne!1635 Regex!561) (regTwo!1635 Regex!561)) )
))
(declare-datatypes ((Hashable!423 0))(
  ( (HashableExt!422 (__x!2206 Int)) )
))
(declare-datatypes ((tuple2!2386 0))(
  ( (tuple2!2387 (_1!1403 Regex!561) (_2!1403 C!2044)) )
))
(declare-datatypes ((tuple2!2388 0))(
  ( (tuple2!2389 (_1!1404 tuple2!2386) (_2!1404 Regex!561)) )
))
(declare-datatypes ((List!2033 0))(
  ( (Nil!2027) (Cons!2027 (h!7424 tuple2!2388) (t!22510 List!2033)) )
))
(declare-datatypes ((array!1593 0))(
  ( (array!1594 (arr!738 (Array (_ BitVec 32) (_ BitVec 64))) (size!1893 (_ BitVec 32))) )
))
(declare-datatypes ((array!1595 0))(
  ( (array!1596 (arr!739 (Array (_ BitVec 32) List!2033)) (size!1894 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!854 0))(
  ( (LongMapFixedSize!855 (defaultEntry!766 Int) (mask!1375 (_ BitVec 32)) (extraKeys!673 (_ BitVec 32)) (zeroValue!683 List!2033) (minValue!683 List!2033) (_size!987 (_ BitVec 32)) (_keys!718 array!1593) (_values!705 array!1595) (_vacant!488 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1697 0))(
  ( (Cell!1698 (v!13387 LongMapFixedSize!854)) )
))
(declare-datatypes ((MutLongMap!427 0))(
  ( (LongMap!427 (underlying!1053 Cell!1697)) (MutLongMapExt!426 (__x!2207 Int)) )
))
(declare-datatypes ((Cell!1699 0))(
  ( (Cell!1700 (v!13388 MutLongMap!427)) )
))
(declare-datatypes ((MutableMap!423 0))(
  ( (MutableMapExt!422 (__x!2208 Int)) (HashMap!423 (underlying!1054 Cell!1699) (hashF!2299 Hashable!423) (_size!988 (_ BitVec 32)) (defaultValue!572 Int)) )
))
(declare-datatypes ((Cache!282 0))(
  ( (Cache!283 (cache!877 MutableMap!423)) )
))
(declare-fun cache!470 () Cache!282)

(declare-fun valid!384 (Cache!282) Bool)

(assert (=> b!124145 (= res!57832 (valid!384 cache!470))))

(declare-fun b!124146 () Bool)

(declare-fun res!57833 () Bool)

(declare-fun e!71368 () Bool)

(assert (=> b!124146 (=> res!57833 e!71368)))

(declare-fun r!15532 () Regex!561)

(declare-fun lt!37483 () C!2044)

(declare-fun validRegex!155 (Regex!561) Bool)

(declare-fun derivativeStep!66 (Regex!561 C!2044) Regex!561)

(assert (=> b!124146 (= res!57833 (not (validRegex!155 (derivativeStep!66 r!15532 lt!37483))))))

(declare-fun b!124147 () Bool)

(declare-fun e!71366 () Bool)

(assert (=> b!124147 (= e!71366 e!71368)))

(declare-fun res!57835 () Bool)

(assert (=> b!124147 (=> res!57835 e!71368)))

(declare-fun nullable!94 (Regex!561) Bool)

(assert (=> b!124147 (= res!57835 (nullable!94 r!15532))))

(declare-fun lt!37493 () List!2032)

(declare-fun lt!37479 () List!2032)

(declare-fun ++!385 (List!2032 List!2032) List!2032)

(assert (=> b!124147 (= (++!385 lt!37493 lt!37479) totalInput!1363)))

(declare-fun testedP!367 () List!2032)

(declare-datatypes ((Unit!1573 0))(
  ( (Unit!1574) )
))
(declare-fun lt!37491 () Unit!1573)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!31 (List!2032 C!2044 List!2032 List!2032) Unit!1573)

(assert (=> b!124147 (= lt!37491 (lemmaMoveElementToOtherListKeepsConcatEq!31 testedP!367 lt!37483 lt!37479 totalInput!1363))))

(declare-fun testedSuffix!285 () List!2032)

(declare-fun tail!244 (List!2032) List!2032)

(assert (=> b!124147 (= lt!37479 (tail!244 testedSuffix!285))))

(declare-fun lt!37481 () List!2032)

(declare-fun isPrefix!135 (List!2032 List!2032) Bool)

(declare-fun head!508 (List!2032) C!2044)

(assert (=> b!124147 (isPrefix!135 (++!385 testedP!367 (Cons!2026 (head!508 lt!37481) Nil!2026)) totalInput!1363)))

(declare-fun lt!37486 () Unit!1573)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!37 (List!2032 List!2032) Unit!1573)

(assert (=> b!124147 (= lt!37486 (lemmaAddHeadSuffixToPrefixStillPrefix!37 testedP!367 totalInput!1363))))

(assert (=> b!124147 (= lt!37493 (++!385 testedP!367 (Cons!2026 lt!37483 Nil!2026)))))

(assert (=> b!124147 (= lt!37483 (head!508 testedSuffix!285))))

(declare-fun b!124148 () Bool)

(declare-fun e!71363 () Bool)

(assert (=> b!124148 (= e!71360 e!71363)))

(declare-fun res!57825 () Bool)

(assert (=> b!124148 (=> (not res!57825) (not e!71363))))

(declare-fun lt!37488 () List!2032)

(assert (=> b!124148 (= res!57825 (= lt!37488 totalInput!1363))))

(assert (=> b!124148 (= lt!37488 (++!385 testedP!367 testedSuffix!285))))

(declare-fun b!124149 () Bool)

(assert (=> b!124149 (= e!71363 e!71373)))

(declare-fun res!57834 () Bool)

(assert (=> b!124149 (=> (not res!57834) (not e!71373))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!37485 () Int)

(assert (=> b!124149 (= res!57834 (= testedPSize!285 lt!37485))))

(assert (=> b!124149 (= lt!37485 (size!1892 testedP!367))))

(declare-fun b!124150 () Bool)

(declare-fun e!71378 () Bool)

(declare-fun tp_is_empty!1177 () Bool)

(declare-fun tp!68053 () Bool)

(assert (=> b!124150 (= e!71378 (and tp_is_empty!1177 tp!68053))))

(declare-fun b!124151 () Bool)

(declare-fun e!71362 () Bool)

(declare-fun tp!68046 () Bool)

(declare-fun tp!68058 () Bool)

(assert (=> b!124151 (= e!71362 (and tp!68046 tp!68058))))

(declare-fun b!124152 () Bool)

(declare-fun res!57831 () Bool)

(declare-fun e!71379 () Bool)

(assert (=> b!124152 (=> res!57831 e!71379)))

(assert (=> b!124152 (= res!57831 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!124153 () Bool)

(assert (=> b!124153 (= e!71379 e!71366)))

(declare-fun res!57826 () Bool)

(assert (=> b!124153 (=> res!57826 e!71366)))

(assert (=> b!124153 (= res!57826 (>= lt!37485 lt!37489))))

(declare-fun lt!37480 () Unit!1573)

(declare-fun e!71369 () Unit!1573)

(assert (=> b!124153 (= lt!37480 e!71369)))

(declare-fun c!27403 () Bool)

(assert (=> b!124153 (= c!27403 (= lt!37485 lt!37489))))

(assert (=> b!124153 (<= lt!37485 lt!37489)))

(declare-fun lt!37482 () Unit!1573)

(declare-fun lemmaIsPrefixThenSmallerEqSize!48 (List!2032 List!2032) Unit!1573)

(assert (=> b!124153 (= lt!37482 (lemmaIsPrefixThenSmallerEqSize!48 testedP!367 totalInput!1363))))

(declare-fun b!124154 () Bool)

(declare-fun e!71377 () Bool)

(declare-fun tp!68052 () Bool)

(assert (=> b!124154 (= e!71377 (and tp_is_empty!1177 tp!68052))))

(declare-fun lt!37487 () Int)

(declare-fun b!124156 () Bool)

(assert (=> b!124156 (= e!71368 (or (not (= (+ 1 testedPSize!285) lt!37487)) (< (- lt!37489 lt!37487) (- lt!37489 lt!37485))))))

(assert (=> b!124156 (= lt!37487 (size!1892 lt!37493))))

(declare-fun b!124157 () Bool)

(declare-fun e!71364 () Bool)

(assert (=> b!124157 (= e!71364 e!71379)))

(declare-fun res!57828 () Bool)

(assert (=> b!124157 (=> res!57828 e!71379)))

(declare-fun lostCause!78 (Regex!561) Bool)

(assert (=> b!124157 (= res!57828 (lostCause!78 r!15532))))

(assert (=> b!124157 (and (= testedSuffix!285 lt!37481) (= lt!37481 testedSuffix!285))))

(declare-fun lt!37492 () Unit!1573)

(declare-fun lemmaSamePrefixThenSameSuffix!69 (List!2032 List!2032 List!2032 List!2032 List!2032) Unit!1573)

(assert (=> b!124157 (= lt!37492 (lemmaSamePrefixThenSameSuffix!69 testedP!367 testedSuffix!285 testedP!367 lt!37481 totalInput!1363))))

(declare-fun getSuffix!73 (List!2032 List!2032) List!2032)

(assert (=> b!124157 (= lt!37481 (getSuffix!73 totalInput!1363 testedP!367))))

(declare-fun mapNonEmpty!1654 () Bool)

(declare-fun mapRes!1654 () Bool)

(declare-fun tp!68054 () Bool)

(declare-fun tp!68048 () Bool)

(assert (=> mapNonEmpty!1654 (= mapRes!1654 (and tp!68054 tp!68048))))

(declare-fun mapRest!1654 () (Array (_ BitVec 32) List!2033))

(declare-fun mapKey!1654 () (_ BitVec 32))

(declare-fun mapValue!1654 () List!2033)

(assert (=> mapNonEmpty!1654 (= (arr!739 (_values!705 (v!13387 (underlying!1053 (v!13388 (underlying!1054 (cache!877 cache!470))))))) (store mapRest!1654 mapKey!1654 mapValue!1654))))

(declare-fun b!124158 () Bool)

(declare-fun e!71376 () Bool)

(declare-fun tp!68056 () Bool)

(assert (=> b!124158 (= e!71376 (and tp_is_empty!1177 tp!68056))))

(declare-fun b!124159 () Bool)

(declare-fun e!71361 () Bool)

(declare-fun tp!68060 () Bool)

(assert (=> b!124159 (= e!71361 (and tp!68060 mapRes!1654))))

(declare-fun condMapEmpty!1654 () Bool)

(declare-fun mapDefault!1654 () List!2033)

(assert (=> b!124159 (= condMapEmpty!1654 (= (arr!739 (_values!705 (v!13387 (underlying!1053 (v!13388 (underlying!1054 (cache!877 cache!470))))))) ((as const (Array (_ BitVec 32) List!2033)) mapDefault!1654)))))

(declare-fun b!124160 () Bool)

(declare-fun e!71367 () Bool)

(declare-fun e!71380 () Bool)

(declare-fun lt!37478 () MutLongMap!427)

(get-info :version)

(assert (=> b!124160 (= e!71367 (and e!71380 ((_ is LongMap!427) lt!37478)))))

(assert (=> b!124160 (= lt!37478 (v!13388 (underlying!1054 (cache!877 cache!470))))))

(declare-fun mapIsEmpty!1654 () Bool)

(assert (=> mapIsEmpty!1654 mapRes!1654))

(declare-fun b!124161 () Bool)

(declare-fun tp!68059 () Bool)

(assert (=> b!124161 (= e!71362 tp!68059)))

(declare-fun e!71365 () Bool)

(assert (=> b!124162 (= e!71365 (and e!71367 tp!68051))))

(declare-fun b!124163 () Bool)

(declare-fun e!71374 () Bool)

(declare-fun e!71372 () Bool)

(assert (=> b!124163 (= e!71374 e!71372)))

(declare-fun b!124164 () Bool)

(assert (=> b!124164 (= e!71362 tp_is_empty!1177)))

(declare-fun b!124165 () Bool)

(declare-fun tp!68049 () Bool)

(declare-fun tp!68055 () Bool)

(assert (=> b!124165 (= e!71362 (and tp!68049 tp!68055))))

(declare-fun tp!68057 () Bool)

(declare-fun tp!68047 () Bool)

(declare-fun array_inv!531 (array!1593) Bool)

(declare-fun array_inv!532 (array!1595) Bool)

(assert (=> b!124155 (= e!71372 (and tp!68050 tp!68057 tp!68047 (array_inv!531 (_keys!718 (v!13387 (underlying!1053 (v!13388 (underlying!1054 (cache!877 cache!470))))))) (array_inv!532 (_values!705 (v!13387 (underlying!1053 (v!13388 (underlying!1054 (cache!877 cache!470))))))) e!71361))))

(declare-fun res!57829 () Bool)

(assert (=> start!12556 (=> (not res!57829) (not e!71360))))

(assert (=> start!12556 (= res!57829 (validRegex!155 r!15532))))

(assert (=> start!12556 e!71360))

(assert (=> start!12556 true))

(assert (=> start!12556 e!71362))

(assert (=> start!12556 e!71378))

(assert (=> start!12556 e!71376))

(assert (=> start!12556 e!71377))

(declare-fun e!71375 () Bool)

(declare-fun inv!2559 (Cache!282) Bool)

(assert (=> start!12556 (and (inv!2559 cache!470) e!71375)))

(declare-fun b!124166 () Bool)

(declare-fun Unit!1575 () Unit!1573)

(assert (=> b!124166 (= e!71369 Unit!1575)))

(declare-fun lt!37477 () Unit!1573)

(declare-fun lemmaIsPrefixRefl!105 (List!2032 List!2032) Unit!1573)

(assert (=> b!124166 (= lt!37477 (lemmaIsPrefixRefl!105 totalInput!1363 totalInput!1363))))

(assert (=> b!124166 (isPrefix!135 totalInput!1363 totalInput!1363)))

(declare-fun lt!37484 () Unit!1573)

(declare-fun lemmaIsPrefixSameLengthThenSameList!48 (List!2032 List!2032 List!2032) Unit!1573)

(assert (=> b!124166 (= lt!37484 (lemmaIsPrefixSameLengthThenSameList!48 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!124166 false))

(declare-fun b!124167 () Bool)

(assert (=> b!124167 (= e!71371 (not e!71364))))

(declare-fun res!57827 () Bool)

(assert (=> b!124167 (=> res!57827 e!71364)))

(assert (=> b!124167 (= res!57827 (not (isPrefix!135 testedP!367 totalInput!1363)))))

(assert (=> b!124167 (isPrefix!135 testedP!367 lt!37488)))

(declare-fun lt!37490 () Unit!1573)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!78 (List!2032 List!2032) Unit!1573)

(assert (=> b!124167 (= lt!37490 (lemmaConcatTwoListThenFirstIsPrefix!78 testedP!367 testedSuffix!285))))

(declare-fun b!124168 () Bool)

(declare-fun Unit!1576 () Unit!1573)

(assert (=> b!124168 (= e!71369 Unit!1576)))

(declare-fun b!124169 () Bool)

(assert (=> b!124169 (= e!71375 e!71365)))

(declare-fun b!124170 () Bool)

(assert (=> b!124170 (= e!71380 e!71374)))

(assert (= (and start!12556 res!57829) b!124145))

(assert (= (and b!124145 res!57832) b!124148))

(assert (= (and b!124148 res!57825) b!124149))

(assert (= (and b!124149 res!57834) b!124144))

(assert (= (and b!124144 res!57830) b!124167))

(assert (= (and b!124167 (not res!57827)) b!124157))

(assert (= (and b!124157 (not res!57828)) b!124152))

(assert (= (and b!124152 (not res!57831)) b!124153))

(assert (= (and b!124153 c!27403) b!124166))

(assert (= (and b!124153 (not c!27403)) b!124168))

(assert (= (and b!124153 (not res!57826)) b!124147))

(assert (= (and b!124147 (not res!57835)) b!124146))

(assert (= (and b!124146 (not res!57833)) b!124156))

(assert (= (and start!12556 ((_ is ElementMatch!561) r!15532)) b!124164))

(assert (= (and start!12556 ((_ is Concat!945) r!15532)) b!124165))

(assert (= (and start!12556 ((_ is Star!561) r!15532)) b!124161))

(assert (= (and start!12556 ((_ is Union!561) r!15532)) b!124151))

(assert (= (and start!12556 ((_ is Cons!2026) totalInput!1363)) b!124150))

(assert (= (and start!12556 ((_ is Cons!2026) testedSuffix!285)) b!124158))

(assert (= (and start!12556 ((_ is Cons!2026) testedP!367)) b!124154))

(assert (= (and b!124159 condMapEmpty!1654) mapIsEmpty!1654))

(assert (= (and b!124159 (not condMapEmpty!1654)) mapNonEmpty!1654))

(assert (= b!124155 b!124159))

(assert (= b!124163 b!124155))

(assert (= b!124170 b!124163))

(assert (= (and b!124160 ((_ is LongMap!427) (v!13388 (underlying!1054 (cache!877 cache!470))))) b!124170))

(assert (= b!124162 b!124160))

(assert (= (and b!124169 ((_ is HashMap!423) (cache!877 cache!470))) b!124162))

(assert (= start!12556 b!124169))

(declare-fun m!109781 () Bool)

(assert (=> b!124149 m!109781))

(declare-fun m!109783 () Bool)

(assert (=> b!124157 m!109783))

(declare-fun m!109785 () Bool)

(assert (=> b!124157 m!109785))

(declare-fun m!109787 () Bool)

(assert (=> b!124157 m!109787))

(declare-fun m!109789 () Bool)

(assert (=> b!124155 m!109789))

(declare-fun m!109791 () Bool)

(assert (=> b!124155 m!109791))

(declare-fun m!109793 () Bool)

(assert (=> b!124147 m!109793))

(declare-fun m!109795 () Bool)

(assert (=> b!124147 m!109795))

(declare-fun m!109797 () Bool)

(assert (=> b!124147 m!109797))

(declare-fun m!109799 () Bool)

(assert (=> b!124147 m!109799))

(declare-fun m!109801 () Bool)

(assert (=> b!124147 m!109801))

(declare-fun m!109803 () Bool)

(assert (=> b!124147 m!109803))

(assert (=> b!124147 m!109801))

(declare-fun m!109805 () Bool)

(assert (=> b!124147 m!109805))

(declare-fun m!109807 () Bool)

(assert (=> b!124147 m!109807))

(declare-fun m!109809 () Bool)

(assert (=> b!124147 m!109809))

(declare-fun m!109811 () Bool)

(assert (=> b!124147 m!109811))

(declare-fun m!109813 () Bool)

(assert (=> b!124148 m!109813))

(declare-fun m!109815 () Bool)

(assert (=> b!124146 m!109815))

(assert (=> b!124146 m!109815))

(declare-fun m!109817 () Bool)

(assert (=> b!124146 m!109817))

(declare-fun m!109819 () Bool)

(assert (=> b!124167 m!109819))

(declare-fun m!109821 () Bool)

(assert (=> b!124167 m!109821))

(declare-fun m!109823 () Bool)

(assert (=> b!124167 m!109823))

(declare-fun m!109825 () Bool)

(assert (=> b!124153 m!109825))

(declare-fun m!109827 () Bool)

(assert (=> b!124166 m!109827))

(declare-fun m!109829 () Bool)

(assert (=> b!124166 m!109829))

(declare-fun m!109831 () Bool)

(assert (=> b!124166 m!109831))

(declare-fun m!109833 () Bool)

(assert (=> b!124156 m!109833))

(declare-fun m!109835 () Bool)

(assert (=> mapNonEmpty!1654 m!109835))

(declare-fun m!109837 () Bool)

(assert (=> start!12556 m!109837))

(declare-fun m!109839 () Bool)

(assert (=> start!12556 m!109839))

(declare-fun m!109841 () Bool)

(assert (=> b!124145 m!109841))

(declare-fun m!109843 () Bool)

(assert (=> b!124144 m!109843))

(check-sat (not start!12556) (not b!124147) (not b!124156) (not b!124165) (not b!124149) (not b!124155) (not b_next!3939) (not b!124158) (not b!124153) (not b!124150) (not b!124151) (not b!124157) (not mapNonEmpty!1654) (not b_next!3937) (not b!124144) b_and!6069 (not b!124145) (not b!124148) (not b!124159) (not b!124161) tp_is_empty!1177 (not b!124154) b_and!6067 (not b!124167) (not b!124166) (not b!124146))
(check-sat b_and!6069 b_and!6067 (not b_next!3939) (not b_next!3937))
