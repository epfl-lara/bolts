; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12484 () Bool)

(assert start!12484)

(declare-fun b!123266 () Bool)

(declare-fun b_free!3921 () Bool)

(declare-fun b_next!3921 () Bool)

(assert (=> b!123266 (= b_free!3921 (not b_next!3921))))

(declare-fun tp!67576 () Bool)

(declare-fun b_and!6051 () Bool)

(assert (=> b!123266 (= tp!67576 b_and!6051)))

(declare-fun b!123273 () Bool)

(declare-fun b_free!3923 () Bool)

(declare-fun b_next!3923 () Bool)

(assert (=> b!123273 (= b_free!3923 (not b_next!3923))))

(declare-fun tp!67583 () Bool)

(declare-fun b_and!6053 () Bool)

(assert (=> b!123273 (= tp!67583 b_and!6053)))

(declare-fun mapIsEmpty!1638 () Bool)

(declare-fun mapRes!1638 () Bool)

(assert (=> mapIsEmpty!1638 mapRes!1638))

(declare-fun b!123253 () Bool)

(declare-fun e!70823 () Bool)

(declare-fun e!70813 () Bool)

(assert (=> b!123253 (= e!70823 e!70813)))

(declare-fun res!57539 () Bool)

(assert (=> b!123253 (=> res!57539 e!70813)))

(declare-datatypes ((C!2036 0))(
  ( (C!2037 (val!744 Int)) )
))
(declare-datatypes ((Regex!557 0))(
  ( (ElementMatch!557 (c!27291 C!2036)) (Concat!941 (regOne!1626 Regex!557) (regTwo!1626 Regex!557)) (EmptyExpr!557) (Star!557 (reg!886 Regex!557)) (EmptyLang!557) (Union!557 (regOne!1627 Regex!557) (regTwo!1627 Regex!557)) )
))
(declare-fun r!15532 () Regex!557)

(declare-fun lostCause!76 (Regex!557) Bool)

(assert (=> b!123253 (= res!57539 (lostCause!76 r!15532))))

(declare-datatypes ((List!2024 0))(
  ( (Nil!2018) (Cons!2018 (h!7415 C!2036) (t!22501 List!2024)) )
))
(declare-fun testedSuffix!285 () List!2024)

(declare-fun lt!37202 () List!2024)

(assert (=> b!123253 (and (= testedSuffix!285 lt!37202) (= lt!37202 testedSuffix!285))))

(declare-fun testedP!367 () List!2024)

(declare-fun totalInput!1363 () List!2024)

(declare-datatypes ((Unit!1563 0))(
  ( (Unit!1564) )
))
(declare-fun lt!37215 () Unit!1563)

(declare-fun lemmaSamePrefixThenSameSuffix!67 (List!2024 List!2024 List!2024 List!2024 List!2024) Unit!1563)

(assert (=> b!123253 (= lt!37215 (lemmaSamePrefixThenSameSuffix!67 testedP!367 testedSuffix!285 testedP!367 lt!37202 totalInput!1363))))

(declare-fun getSuffix!71 (List!2024 List!2024) List!2024)

(assert (=> b!123253 (= lt!37202 (getSuffix!71 totalInput!1363 testedP!367))))

(declare-fun b!123254 () Bool)

(declare-fun e!70811 () Bool)

(declare-fun e!70812 () Bool)

(declare-datatypes ((tuple2!2370 0))(
  ( (tuple2!2371 (_1!1395 Regex!557) (_2!1395 C!2036)) )
))
(declare-datatypes ((tuple2!2372 0))(
  ( (tuple2!2373 (_1!1396 tuple2!2370) (_2!1396 Regex!557)) )
))
(declare-datatypes ((List!2025 0))(
  ( (Nil!2019) (Cons!2019 (h!7416 tuple2!2372) (t!22502 List!2025)) )
))
(declare-datatypes ((array!1575 0))(
  ( (array!1576 (arr!730 (Array (_ BitVec 32) (_ BitVec 64))) (size!1881 (_ BitVec 32))) )
))
(declare-datatypes ((array!1577 0))(
  ( (array!1578 (arr!731 (Array (_ BitVec 32) List!2025)) (size!1882 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!846 0))(
  ( (LongMapFixedSize!847 (defaultEntry!762 Int) (mask!1369 (_ BitVec 32)) (extraKeys!669 (_ BitVec 32)) (zeroValue!679 List!2025) (minValue!679 List!2025) (_size!979 (_ BitVec 32)) (_keys!714 array!1575) (_values!701 array!1577) (_vacant!484 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1681 0))(
  ( (Cell!1682 (v!13378 LongMapFixedSize!846)) )
))
(declare-datatypes ((MutLongMap!423 0))(
  ( (LongMap!423 (underlying!1045 Cell!1681)) (MutLongMapExt!422 (__x!2194 Int)) )
))
(declare-fun lt!37209 () MutLongMap!423)

(get-info :version)

(assert (=> b!123254 (= e!70811 (and e!70812 ((_ is LongMap!423) lt!37209)))))

(declare-datatypes ((Hashable!419 0))(
  ( (HashableExt!418 (__x!2195 Int)) )
))
(declare-datatypes ((Cell!1683 0))(
  ( (Cell!1684 (v!13379 MutLongMap!423)) )
))
(declare-datatypes ((MutableMap!419 0))(
  ( (MutableMapExt!418 (__x!2196 Int)) (HashMap!419 (underlying!1046 Cell!1683) (hashF!2295 Hashable!419) (_size!980 (_ BitVec 32)) (defaultValue!568 Int)) )
))
(declare-datatypes ((Cache!274 0))(
  ( (Cache!275 (cache!873 MutableMap!419)) )
))
(declare-fun cache!470 () Cache!274)

(assert (=> b!123254 (= lt!37209 (v!13379 (underlying!1046 (cache!873 cache!470))))))

(declare-fun b!123255 () Bool)

(declare-fun e!70810 () Bool)

(assert (=> b!123255 (= e!70810 (not e!70823))))

(declare-fun res!57538 () Bool)

(assert (=> b!123255 (=> res!57538 e!70823)))

(declare-fun isPrefix!133 (List!2024 List!2024) Bool)

(assert (=> b!123255 (= res!57538 (not (isPrefix!133 testedP!367 totalInput!1363)))))

(declare-fun lt!37208 () List!2024)

(assert (=> b!123255 (isPrefix!133 testedP!367 lt!37208)))

(declare-fun lt!37218 () Unit!1563)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!76 (List!2024 List!2024) Unit!1563)

(assert (=> b!123255 (= lt!37218 (lemmaConcatTwoListThenFirstIsPrefix!76 testedP!367 testedSuffix!285))))

(declare-fun b!123256 () Bool)

(declare-fun e!70825 () Bool)

(declare-fun tp_is_empty!1169 () Bool)

(declare-fun tp!67574 () Bool)

(assert (=> b!123256 (= e!70825 (and tp_is_empty!1169 tp!67574))))

(declare-fun b!123257 () Bool)

(declare-fun res!57541 () Bool)

(declare-fun e!70818 () Bool)

(assert (=> b!123257 (=> (not res!57541) (not e!70818))))

(declare-fun valid!380 (Cache!274) Bool)

(assert (=> b!123257 (= res!57541 (valid!380 cache!470))))

(declare-fun b!123258 () Bool)

(declare-fun e!70808 () Unit!1563)

(declare-fun Unit!1565 () Unit!1563)

(assert (=> b!123258 (= e!70808 Unit!1565)))

(declare-fun b!123259 () Bool)

(declare-fun e!70824 () Bool)

(declare-fun tp!67575 () Bool)

(declare-fun tp!67588 () Bool)

(assert (=> b!123259 (= e!70824 (and tp!67575 tp!67588))))

(declare-fun b!123260 () Bool)

(declare-fun e!70820 () Bool)

(declare-fun tp!67578 () Bool)

(assert (=> b!123260 (= e!70820 (and tp_is_empty!1169 tp!67578))))

(declare-fun b!123261 () Bool)

(declare-fun e!70807 () Bool)

(assert (=> b!123261 (= e!70812 e!70807)))

(declare-fun b!123263 () Bool)

(declare-fun e!70822 () Bool)

(assert (=> b!123263 (= e!70807 e!70822)))

(declare-fun b!123264 () Bool)

(declare-fun tp!67587 () Bool)

(assert (=> b!123264 (= e!70824 tp!67587)))

(declare-fun b!123265 () Bool)

(declare-fun Unit!1566 () Unit!1563)

(assert (=> b!123265 (= e!70808 Unit!1566)))

(declare-fun lt!37205 () Unit!1563)

(declare-fun lemmaIsPrefixRefl!103 (List!2024 List!2024) Unit!1563)

(assert (=> b!123265 (= lt!37205 (lemmaIsPrefixRefl!103 totalInput!1363 totalInput!1363))))

(assert (=> b!123265 (isPrefix!133 totalInput!1363 totalInput!1363)))

(declare-fun lt!37216 () Unit!1563)

(declare-fun lemmaIsPrefixSameLengthThenSameList!46 (List!2024 List!2024 List!2024) Unit!1563)

(assert (=> b!123265 (= lt!37216 (lemmaIsPrefixSameLengthThenSameList!46 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!123265 false))

(declare-fun e!70821 () Bool)

(assert (=> b!123266 (= e!70821 (and e!70811 tp!67576))))

(declare-fun b!123267 () Bool)

(declare-fun tp!67580 () Bool)

(declare-fun tp!67582 () Bool)

(assert (=> b!123267 (= e!70824 (and tp!67580 tp!67582))))

(declare-fun b!123268 () Bool)

(declare-fun res!57534 () Bool)

(assert (=> b!123268 (=> res!57534 e!70813)))

(declare-fun testedPSize!285 () Int)

(declare-fun totalInputSize!643 () Int)

(assert (=> b!123268 (= res!57534 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!123269 () Bool)

(declare-fun e!70819 () Bool)

(declare-fun tp!67577 () Bool)

(assert (=> b!123269 (= e!70819 (and tp_is_empty!1169 tp!67577))))

(declare-fun b!123270 () Bool)

(declare-fun e!70826 () Bool)

(assert (=> b!123270 (= e!70826 e!70810)))

(declare-fun res!57532 () Bool)

(assert (=> b!123270 (=> (not res!57532) (not e!70810))))

(declare-fun lt!37214 () Int)

(assert (=> b!123270 (= res!57532 (= totalInputSize!643 lt!37214))))

(declare-fun size!1883 (List!2024) Int)

(assert (=> b!123270 (= lt!37214 (size!1883 totalInput!1363))))

(declare-fun b!123271 () Bool)

(declare-fun e!70809 () Bool)

(assert (=> b!123271 (= e!70809 e!70821)))

(declare-fun b!123272 () Bool)

(declare-fun e!70817 () Bool)

(assert (=> b!123272 (= e!70818 e!70817)))

(declare-fun res!57536 () Bool)

(assert (=> b!123272 (=> (not res!57536) (not e!70817))))

(assert (=> b!123272 (= res!57536 (= lt!37208 totalInput!1363))))

(declare-fun ++!383 (List!2024 List!2024) List!2024)

(assert (=> b!123272 (= lt!37208 (++!383 testedP!367 testedSuffix!285))))

(declare-fun e!70814 () Bool)

(declare-fun tp!67586 () Bool)

(declare-fun tp!67579 () Bool)

(declare-fun array_inv!527 (array!1575) Bool)

(declare-fun array_inv!528 (array!1577) Bool)

(assert (=> b!123273 (= e!70822 (and tp!67583 tp!67579 tp!67586 (array_inv!527 (_keys!714 (v!13378 (underlying!1045 (v!13379 (underlying!1046 (cache!873 cache!470))))))) (array_inv!528 (_values!701 (v!13378 (underlying!1045 (v!13379 (underlying!1046 (cache!873 cache!470))))))) e!70814))))

(declare-fun b!123274 () Bool)

(declare-fun e!70816 () Bool)

(declare-fun e!70815 () Bool)

(assert (=> b!123274 (= e!70816 e!70815)))

(declare-fun res!57535 () Bool)

(assert (=> b!123274 (=> res!57535 e!70815)))

(declare-fun nullable!92 (Regex!557) Bool)

(assert (=> b!123274 (= res!57535 (nullable!92 r!15532))))

(declare-fun lt!37211 () List!2024)

(declare-fun lt!37217 () List!2024)

(assert (=> b!123274 (= (++!383 lt!37211 lt!37217) totalInput!1363)))

(declare-fun lt!37203 () C!2036)

(declare-fun lt!37210 () Unit!1563)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!29 (List!2024 C!2036 List!2024 List!2024) Unit!1563)

(assert (=> b!123274 (= lt!37210 (lemmaMoveElementToOtherListKeepsConcatEq!29 testedP!367 lt!37203 lt!37217 totalInput!1363))))

(declare-fun tail!242 (List!2024) List!2024)

(assert (=> b!123274 (= lt!37217 (tail!242 testedSuffix!285))))

(declare-fun head!506 (List!2024) C!2036)

(assert (=> b!123274 (isPrefix!133 (++!383 testedP!367 (Cons!2018 (head!506 lt!37202) Nil!2018)) totalInput!1363)))

(declare-fun lt!37213 () Unit!1563)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!35 (List!2024 List!2024) Unit!1563)

(assert (=> b!123274 (= lt!37213 (lemmaAddHeadSuffixToPrefixStillPrefix!35 testedP!367 totalInput!1363))))

(assert (=> b!123274 (= lt!37211 (++!383 testedP!367 (Cons!2018 lt!37203 Nil!2018)))))

(assert (=> b!123274 (= lt!37203 (head!506 testedSuffix!285))))

(declare-fun b!123275 () Bool)

(declare-fun tp!67581 () Bool)

(assert (=> b!123275 (= e!70814 (and tp!67581 mapRes!1638))))

(declare-fun condMapEmpty!1638 () Bool)

(declare-fun mapDefault!1638 () List!2025)

(assert (=> b!123275 (= condMapEmpty!1638 (= (arr!731 (_values!701 (v!13378 (underlying!1045 (v!13379 (underlying!1046 (cache!873 cache!470))))))) ((as const (Array (_ BitVec 32) List!2025)) mapDefault!1638)))))

(declare-fun b!123276 () Bool)

(assert (=> b!123276 (= e!70824 tp_is_empty!1169)))

(declare-fun b!123277 () Bool)

(assert (=> b!123277 (= e!70817 e!70826)))

(declare-fun res!57540 () Bool)

(assert (=> b!123277 (=> (not res!57540) (not e!70826))))

(declare-fun lt!37212 () Int)

(assert (=> b!123277 (= res!57540 (= testedPSize!285 lt!37212))))

(assert (=> b!123277 (= lt!37212 (size!1883 testedP!367))))

(declare-fun res!57537 () Bool)

(assert (=> start!12484 (=> (not res!57537) (not e!70818))))

(declare-fun validRegex!151 (Regex!557) Bool)

(assert (=> start!12484 (= res!57537 (validRegex!151 r!15532))))

(assert (=> start!12484 e!70818))

(assert (=> start!12484 true))

(assert (=> start!12484 e!70824))

(assert (=> start!12484 e!70825))

(assert (=> start!12484 e!70819))

(assert (=> start!12484 e!70820))

(declare-fun inv!2550 (Cache!274) Bool)

(assert (=> start!12484 (and (inv!2550 cache!470) e!70809)))

(declare-fun b!123262 () Bool)

(assert (=> b!123262 (= e!70813 e!70816)))

(declare-fun res!57533 () Bool)

(assert (=> b!123262 (=> res!57533 e!70816)))

(assert (=> b!123262 (= res!57533 (>= lt!37212 lt!37214))))

(declare-fun lt!37204 () Unit!1563)

(assert (=> b!123262 (= lt!37204 e!70808)))

(declare-fun c!27290 () Bool)

(assert (=> b!123262 (= c!27290 (= lt!37212 lt!37214))))

(assert (=> b!123262 (<= lt!37212 lt!37214)))

(declare-fun lt!37207 () Unit!1563)

(declare-fun lemmaIsPrefixThenSmallerEqSize!45 (List!2024 List!2024) Unit!1563)

(assert (=> b!123262 (= lt!37207 (lemmaIsPrefixThenSmallerEqSize!45 testedP!367 totalInput!1363))))

(declare-fun mapNonEmpty!1638 () Bool)

(declare-fun tp!67585 () Bool)

(declare-fun tp!67584 () Bool)

(assert (=> mapNonEmpty!1638 (= mapRes!1638 (and tp!67585 tp!67584))))

(declare-fun mapRest!1638 () (Array (_ BitVec 32) List!2025))

(declare-fun mapValue!1638 () List!2025)

(declare-fun mapKey!1638 () (_ BitVec 32))

(assert (=> mapNonEmpty!1638 (= (arr!731 (_values!701 (v!13378 (underlying!1045 (v!13379 (underlying!1046 (cache!873 cache!470))))))) (store mapRest!1638 mapKey!1638 mapValue!1638))))

(declare-fun b!123278 () Bool)

(assert (=> b!123278 (= e!70815 true)))

(declare-fun lt!37206 () Bool)

(declare-fun derivativeStep!63 (Regex!557 C!2036) Regex!557)

(assert (=> b!123278 (= lt!37206 (validRegex!151 (derivativeStep!63 r!15532 lt!37203)))))

(assert (= (and start!12484 res!57537) b!123257))

(assert (= (and b!123257 res!57541) b!123272))

(assert (= (and b!123272 res!57536) b!123277))

(assert (= (and b!123277 res!57540) b!123270))

(assert (= (and b!123270 res!57532) b!123255))

(assert (= (and b!123255 (not res!57538)) b!123253))

(assert (= (and b!123253 (not res!57539)) b!123268))

(assert (= (and b!123268 (not res!57534)) b!123262))

(assert (= (and b!123262 c!27290) b!123265))

(assert (= (and b!123262 (not c!27290)) b!123258))

(assert (= (and b!123262 (not res!57533)) b!123274))

(assert (= (and b!123274 (not res!57535)) b!123278))

(assert (= (and start!12484 ((_ is ElementMatch!557) r!15532)) b!123276))

(assert (= (and start!12484 ((_ is Concat!941) r!15532)) b!123267))

(assert (= (and start!12484 ((_ is Star!557) r!15532)) b!123264))

(assert (= (and start!12484 ((_ is Union!557) r!15532)) b!123259))

(assert (= (and start!12484 ((_ is Cons!2018) totalInput!1363)) b!123256))

(assert (= (and start!12484 ((_ is Cons!2018) testedSuffix!285)) b!123269))

(assert (= (and start!12484 ((_ is Cons!2018) testedP!367)) b!123260))

(assert (= (and b!123275 condMapEmpty!1638) mapIsEmpty!1638))

(assert (= (and b!123275 (not condMapEmpty!1638)) mapNonEmpty!1638))

(assert (= b!123273 b!123275))

(assert (= b!123263 b!123273))

(assert (= b!123261 b!123263))

(assert (= (and b!123254 ((_ is LongMap!423) (v!13379 (underlying!1046 (cache!873 cache!470))))) b!123261))

(assert (= b!123266 b!123254))

(assert (= (and b!123271 ((_ is HashMap!419) (cache!873 cache!470))) b!123266))

(assert (= start!12484 b!123271))

(declare-fun m!109130 () Bool)

(assert (=> b!123274 m!109130))

(declare-fun m!109132 () Bool)

(assert (=> b!123274 m!109132))

(declare-fun m!109134 () Bool)

(assert (=> b!123274 m!109134))

(declare-fun m!109136 () Bool)

(assert (=> b!123274 m!109136))

(assert (=> b!123274 m!109136))

(declare-fun m!109138 () Bool)

(assert (=> b!123274 m!109138))

(declare-fun m!109140 () Bool)

(assert (=> b!123274 m!109140))

(declare-fun m!109142 () Bool)

(assert (=> b!123274 m!109142))

(declare-fun m!109144 () Bool)

(assert (=> b!123274 m!109144))

(declare-fun m!109146 () Bool)

(assert (=> b!123274 m!109146))

(declare-fun m!109148 () Bool)

(assert (=> b!123274 m!109148))

(declare-fun m!109150 () Bool)

(assert (=> b!123273 m!109150))

(declare-fun m!109152 () Bool)

(assert (=> b!123273 m!109152))

(declare-fun m!109154 () Bool)

(assert (=> b!123272 m!109154))

(declare-fun m!109156 () Bool)

(assert (=> b!123265 m!109156))

(declare-fun m!109158 () Bool)

(assert (=> b!123265 m!109158))

(declare-fun m!109160 () Bool)

(assert (=> b!123265 m!109160))

(declare-fun m!109162 () Bool)

(assert (=> b!123257 m!109162))

(declare-fun m!109164 () Bool)

(assert (=> start!12484 m!109164))

(declare-fun m!109166 () Bool)

(assert (=> start!12484 m!109166))

(declare-fun m!109168 () Bool)

(assert (=> b!123277 m!109168))

(declare-fun m!109170 () Bool)

(assert (=> b!123270 m!109170))

(declare-fun m!109172 () Bool)

(assert (=> b!123262 m!109172))

(declare-fun m!109174 () Bool)

(assert (=> b!123253 m!109174))

(declare-fun m!109176 () Bool)

(assert (=> b!123253 m!109176))

(declare-fun m!109178 () Bool)

(assert (=> b!123253 m!109178))

(declare-fun m!109180 () Bool)

(assert (=> b!123278 m!109180))

(assert (=> b!123278 m!109180))

(declare-fun m!109182 () Bool)

(assert (=> b!123278 m!109182))

(declare-fun m!109184 () Bool)

(assert (=> mapNonEmpty!1638 m!109184))

(declare-fun m!109186 () Bool)

(assert (=> b!123255 m!109186))

(declare-fun m!109188 () Bool)

(assert (=> b!123255 m!109188))

(declare-fun m!109190 () Bool)

(assert (=> b!123255 m!109190))

(check-sat (not b!123273) (not b!123260) (not b!123253) (not start!12484) (not b_next!3921) (not b!123275) (not b!123269) (not b!123255) (not b!123264) (not mapNonEmpty!1638) (not b!123257) (not b!123265) tp_is_empty!1169 b_and!6053 (not b!123274) (not b_next!3923) (not b!123262) (not b!123259) (not b!123277) b_and!6051 (not b!123272) (not b!123270) (not b!123267) (not b!123278) (not b!123256))
(check-sat b_and!6051 b_and!6053 (not b_next!3921) (not b_next!3923))
