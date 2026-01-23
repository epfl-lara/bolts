; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270834 () Bool)

(assert start!270834)

(declare-fun b!2800639 () Bool)

(declare-fun b_free!79405 () Bool)

(declare-fun b_next!80109 () Bool)

(assert (=> b!2800639 (= b_free!79405 (not b_next!80109))))

(declare-fun tp!892357 () Bool)

(declare-fun b_and!204143 () Bool)

(assert (=> b!2800639 (= tp!892357 b_and!204143)))

(declare-fun b!2800643 () Bool)

(declare-fun b_free!79407 () Bool)

(declare-fun b_next!80111 () Bool)

(assert (=> b!2800643 (= b_free!79407 (not b_next!80111))))

(declare-fun tp!892354 () Bool)

(declare-fun b_and!204145 () Bool)

(assert (=> b!2800643 (= tp!892354 b_and!204145)))

(declare-fun b!2800619 () Bool)

(declare-fun b_free!79409 () Bool)

(declare-fun b_next!80113 () Bool)

(assert (=> b!2800619 (= b_free!79409 (not b_next!80113))))

(declare-fun tp!892352 () Bool)

(declare-fun b_and!204147 () Bool)

(assert (=> b!2800619 (= tp!892352 b_and!204147)))

(declare-fun b!2800633 () Bool)

(declare-fun b_free!79411 () Bool)

(declare-fun b_next!80115 () Bool)

(assert (=> b!2800633 (= b_free!79411 (not b_next!80115))))

(declare-fun tp!892355 () Bool)

(declare-fun b_and!204149 () Bool)

(assert (=> b!2800633 (= tp!892355 b_and!204149)))

(declare-fun b!2800616 () Bool)

(declare-fun res!1167136 () Bool)

(declare-fun e!1769601 () Bool)

(assert (=> b!2800616 (=> res!1167136 e!1769601)))

(declare-datatypes ((Hashable!3949 0))(
  ( (HashableExt!3948 (__x!21749 Int)) )
))
(declare-datatypes ((C!16600 0))(
  ( (C!16601 (val!10234 Int)) )
))
(declare-datatypes ((Regex!8221 0))(
  ( (ElementMatch!8221 (c!454106 C!16600)) (Concat!13309 (regOne!16954 Regex!8221) (regTwo!16954 Regex!8221)) (EmptyExpr!8221) (Star!8221 (reg!8550 Regex!8221)) (EmptyLang!8221) (Union!8221 (regOne!16955 Regex!8221) (regTwo!16955 Regex!8221)) )
))
(declare-datatypes ((List!32651 0))(
  ( (Nil!32551) (Cons!32551 (h!37971 Regex!8221) (t!228816 List!32651)) )
))
(declare-datatypes ((Context!4878 0))(
  ( (Context!4879 (exprs!2939 List!32651)) )
))
(declare-datatypes ((tuple2!33172 0))(
  ( (tuple2!33173 (_1!19651 Context!4878) (_2!19651 C!16600)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33174 0))(
  ( (tuple2!33175 (_1!19652 tuple2!33172) (_2!19652 (InoxSet Context!4878))) )
))
(declare-datatypes ((List!32652 0))(
  ( (Nil!32552) (Cons!32552 (h!37972 tuple2!33174) (t!228817 List!32652)) )
))
(declare-datatypes ((array!14337 0))(
  ( (array!14338 (arr!6387 (Array (_ BitVec 32) List!32652)) (size!25407 (_ BitVec 32))) )
))
(declare-datatypes ((array!14339 0))(
  ( (array!14340 (arr!6388 (Array (_ BitVec 32) (_ BitVec 64))) (size!25408 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8066 0))(
  ( (LongMapFixedSize!8067 (defaultEntry!4418 Int) (mask!9880 (_ BitVec 32)) (extraKeys!4282 (_ BitVec 32)) (zeroValue!4292 List!32652) (minValue!4292 List!32652) (_size!8109 (_ BitVec 32)) (_keys!4333 array!14339) (_values!4314 array!14337) (_vacant!4094 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15941 0))(
  ( (Cell!15942 (v!34153 LongMapFixedSize!8066)) )
))
(declare-datatypes ((MutLongMap!4033 0))(
  ( (LongMap!4033 (underlying!8269 Cell!15941)) (MutLongMapExt!4032 (__x!21750 Int)) )
))
(declare-datatypes ((Cell!15943 0))(
  ( (Cell!15944 (v!34154 MutLongMap!4033)) )
))
(declare-datatypes ((MutableMap!3939 0))(
  ( (MutableMapExt!3938 (__x!21751 Int)) (HashMap!3939 (underlying!8270 Cell!15943) (hashF!5981 Hashable!3949) (_size!8110 (_ BitVec 32)) (defaultValue!4110 Int)) )
))
(declare-datatypes ((CacheUp!2642 0))(
  ( (CacheUp!2643 (cache!4082 MutableMap!3939)) )
))
(declare-datatypes ((tuple3!5190 0))(
  ( (tuple3!5191 (_1!19653 Regex!8221) (_2!19653 Context!4878) (_3!3065 C!16600)) )
))
(declare-datatypes ((tuple2!33176 0))(
  ( (tuple2!33177 (_1!19654 tuple3!5190) (_2!19654 (InoxSet Context!4878))) )
))
(declare-datatypes ((List!32653 0))(
  ( (Nil!32553) (Cons!32553 (h!37973 tuple2!33176) (t!228818 List!32653)) )
))
(declare-datatypes ((array!14341 0))(
  ( (array!14342 (arr!6389 (Array (_ BitVec 32) List!32653)) (size!25409 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8068 0))(
  ( (LongMapFixedSize!8069 (defaultEntry!4419 Int) (mask!9881 (_ BitVec 32)) (extraKeys!4283 (_ BitVec 32)) (zeroValue!4293 List!32653) (minValue!4293 List!32653) (_size!8111 (_ BitVec 32)) (_keys!4334 array!14339) (_values!4315 array!14341) (_vacant!4095 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15945 0))(
  ( (Cell!15946 (v!34155 LongMapFixedSize!8068)) )
))
(declare-datatypes ((MutLongMap!4034 0))(
  ( (LongMap!4034 (underlying!8271 Cell!15945)) (MutLongMapExt!4033 (__x!21752 Int)) )
))
(declare-datatypes ((Cell!15947 0))(
  ( (Cell!15948 (v!34156 MutLongMap!4034)) )
))
(declare-datatypes ((Hashable!3950 0))(
  ( (HashableExt!3949 (__x!21753 Int)) )
))
(declare-datatypes ((MutableMap!3940 0))(
  ( (MutableMapExt!3939 (__x!21754 Int)) (HashMap!3940 (underlying!8272 Cell!15947) (hashF!5982 Hashable!3950) (_size!8112 (_ BitVec 32)) (defaultValue!4111 Int)) )
))
(declare-datatypes ((CacheDown!2768 0))(
  ( (CacheDown!2769 (cache!4083 MutableMap!3940)) )
))
(declare-datatypes ((tuple3!5192 0))(
  ( (tuple3!5193 (_1!19655 (InoxSet Context!4878)) (_2!19655 CacheUp!2642) (_3!3066 CacheDown!2768)) )
))
(declare-fun lt!1001081 () tuple3!5192)

(declare-fun valid!3158 (CacheDown!2768) Bool)

(assert (=> b!2800616 (= res!1167136 (not (valid!3158 (_3!3066 lt!1001081))))))

(declare-fun b!2800617 () Bool)

(declare-fun e!1769580 () Bool)

(declare-fun e!1769587 () Bool)

(assert (=> b!2800617 (= e!1769580 e!1769587)))

(declare-fun mapNonEmpty!18335 () Bool)

(declare-fun mapRes!18336 () Bool)

(declare-fun tp!892363 () Bool)

(declare-fun tp!892369 () Bool)

(assert (=> mapNonEmpty!18335 (= mapRes!18336 (and tp!892363 tp!892369))))

(declare-fun mapValue!18335 () List!32652)

(declare-fun mapKey!18336 () (_ BitVec 32))

(declare-fun mapRest!18336 () (Array (_ BitVec 32) List!32652))

(declare-fun cacheUp!890 () CacheUp!2642)

(assert (=> mapNonEmpty!18335 (= (arr!6387 (_values!4314 (v!34153 (underlying!8269 (v!34154 (underlying!8270 (cache!4082 cacheUp!890))))))) (store mapRest!18336 mapKey!18336 mapValue!18335))))

(declare-fun b!2800618 () Bool)

(declare-fun e!1769600 () Bool)

(declare-fun tp_is_empty!14255 () Bool)

(declare-fun tp!892360 () Bool)

(assert (=> b!2800618 (= e!1769600 (and tp_is_empty!14255 tp!892360))))

(declare-fun e!1769599 () Bool)

(declare-fun tp!892359 () Bool)

(declare-fun e!1769574 () Bool)

(declare-fun cacheDown!1009 () CacheDown!2768)

(declare-fun tp!892366 () Bool)

(declare-fun array_inv!4572 (array!14339) Bool)

(declare-fun array_inv!4573 (array!14341) Bool)

(assert (=> b!2800619 (= e!1769599 (and tp!892352 tp!892359 tp!892366 (array_inv!4572 (_keys!4334 (v!34155 (underlying!8271 (v!34156 (underlying!8272 (cache!4083 cacheDown!1009))))))) (array_inv!4573 (_values!4315 (v!34155 (underlying!8271 (v!34156 (underlying!8272 (cache!4083 cacheDown!1009))))))) e!1769574))))

(declare-fun b!2800620 () Bool)

(declare-fun e!1769602 () Bool)

(declare-fun tp!892356 () Bool)

(assert (=> b!2800620 (= e!1769602 (and tp_is_empty!14255 tp!892356))))

(declare-fun b!2800621 () Bool)

(declare-fun e!1769585 () Bool)

(assert (=> b!2800621 (= e!1769585 e!1769599)))

(declare-fun b!2800622 () Bool)

(declare-fun e!1769591 () Bool)

(declare-fun e!1769598 () Bool)

(declare-fun lt!1001092 () MutLongMap!4033)

(get-info :version)

(assert (=> b!2800622 (= e!1769591 (and e!1769598 ((_ is LongMap!4033) lt!1001092)))))

(assert (=> b!2800622 (= lt!1001092 (v!34154 (underlying!8270 (cache!4082 cacheUp!890))))))

(declare-fun mapNonEmpty!18336 () Bool)

(declare-fun mapRes!18335 () Bool)

(declare-fun tp!892370 () Bool)

(declare-fun tp!892367 () Bool)

(assert (=> mapNonEmpty!18336 (= mapRes!18335 (and tp!892370 tp!892367))))

(declare-fun mapKey!18335 () (_ BitVec 32))

(declare-fun mapRest!18335 () (Array (_ BitVec 32) List!32653))

(declare-fun mapValue!18336 () List!32653)

(assert (=> mapNonEmpty!18336 (= (arr!6389 (_values!4315 (v!34155 (underlying!8271 (v!34156 (underlying!8272 (cache!4083 cacheDown!1009))))))) (store mapRest!18335 mapKey!18335 mapValue!18336))))

(declare-fun b!2800623 () Bool)

(declare-fun e!1769583 () Bool)

(declare-fun e!1769581 () Bool)

(assert (=> b!2800623 (= e!1769583 e!1769581)))

(declare-fun res!1167130 () Bool)

(assert (=> b!2800623 (=> res!1167130 e!1769581)))

(declare-fun lt!1001098 () Int)

(declare-fun lt!1001079 () Int)

(assert (=> b!2800623 (= res!1167130 (>= lt!1001098 lt!1001079))))

(declare-datatypes ((Unit!46668 0))(
  ( (Unit!46669) )
))
(declare-fun lt!1001099 () Unit!46668)

(declare-fun e!1769577 () Unit!46668)

(assert (=> b!2800623 (= lt!1001099 e!1769577)))

(declare-fun c!454105 () Bool)

(assert (=> b!2800623 (= c!454105 (= lt!1001098 lt!1001079))))

(declare-datatypes ((List!32654 0))(
  ( (Nil!32554) (Cons!32554 (h!37974 C!16600) (t!228819 List!32654)) )
))
(declare-fun lt!1001085 () List!32654)

(declare-fun size!25410 (List!32654) Int)

(assert (=> b!2800623 (<= lt!1001098 (size!25410 lt!1001085))))

(declare-fun lt!1001078 () Unit!46668)

(declare-fun testedP!183 () List!32654)

(declare-fun lemmaIsPrefixThenSmallerEqSize!296 (List!32654 List!32654) Unit!46668)

(assert (=> b!2800623 (= lt!1001078 (lemmaIsPrefixThenSmallerEqSize!296 testedP!183 lt!1001085))))

(declare-fun b!2800624 () Bool)

(declare-fun e!1769589 () Bool)

(declare-fun e!1769596 () Bool)

(assert (=> b!2800624 (= e!1769589 e!1769596)))

(declare-fun res!1167133 () Bool)

(assert (=> b!2800624 (=> res!1167133 e!1769596)))

(declare-fun lt!1001086 () List!32654)

(declare-fun lt!1001089 () List!32654)

(declare-fun ++!8025 (List!32654 List!32654) List!32654)

(assert (=> b!2800624 (= res!1167133 (not (= (++!8025 lt!1001086 lt!1001089) lt!1001085)))))

(declare-datatypes ((IArray!20163 0))(
  ( (IArray!20164 (innerList!10139 List!32654)) )
))
(declare-datatypes ((Conc!10079 0))(
  ( (Node!10079 (left!24589 Conc!10079) (right!24919 Conc!10079) (csize!20388 Int) (cheight!10290 Int)) (Leaf!15358 (xs!13191 IArray!20163) (csize!20389 Int)) (Empty!10079) )
))
(declare-datatypes ((BalanceConc!19772 0))(
  ( (BalanceConc!19773 (c!454107 Conc!10079)) )
))
(declare-datatypes ((tuple2!33178 0))(
  ( (tuple2!33179 (_1!19656 BalanceConc!19772) (_2!19656 BalanceConc!19772)) )
))
(declare-fun lt!1001088 () tuple2!33178)

(declare-fun list!12217 (BalanceConc!19772) List!32654)

(assert (=> b!2800624 (= lt!1001089 (list!12217 (_2!19656 lt!1001088)))))

(assert (=> b!2800624 (= lt!1001086 (list!12217 (_1!19656 lt!1001088)))))

(declare-fun totalInput!758 () BalanceConc!19772)

(declare-fun testedPSize!143 () Int)

(declare-fun splitAt!198 (BalanceConc!19772 Int) tuple2!33178)

(assert (=> b!2800624 (= lt!1001088 (splitAt!198 totalInput!758 testedPSize!143))))

(declare-fun b!2800625 () Bool)

(declare-fun e!1769592 () Bool)

(declare-fun e!1769593 () Bool)

(assert (=> b!2800625 (= e!1769592 (not e!1769593))))

(declare-fun res!1167141 () Bool)

(assert (=> b!2800625 (=> res!1167141 e!1769593)))

(declare-fun isPrefix!2637 (List!32654 List!32654) Bool)

(assert (=> b!2800625 (= res!1167141 (not (isPrefix!2637 testedP!183 lt!1001085)))))

(declare-fun lt!1001091 () List!32654)

(assert (=> b!2800625 (isPrefix!2637 testedP!183 lt!1001091)))

(declare-fun lt!1001084 () Unit!46668)

(declare-fun testedSuffix!143 () List!32654)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1744 (List!32654 List!32654) Unit!46668)

(assert (=> b!2800625 (= lt!1001084 (lemmaConcatTwoListThenFirstIsPrefix!1744 testedP!183 testedSuffix!143))))

(declare-fun b!2800626 () Bool)

(declare-fun tp!892364 () Bool)

(assert (=> b!2800626 (= e!1769574 (and tp!892364 mapRes!18335))))

(declare-fun condMapEmpty!18336 () Bool)

(declare-fun mapDefault!18336 () List!32653)

(assert (=> b!2800626 (= condMapEmpty!18336 (= (arr!6389 (_values!4315 (v!34155 (underlying!8271 (v!34156 (underlying!8272 (cache!4083 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32653)) mapDefault!18336)))))

(declare-fun b!2800627 () Bool)

(declare-fun Unit!46670 () Unit!46668)

(assert (=> b!2800627 (= e!1769577 Unit!46670)))

(declare-fun b!2800628 () Bool)

(declare-fun e!1769578 () Bool)

(declare-fun e!1769584 () Bool)

(assert (=> b!2800628 (= e!1769578 e!1769584)))

(declare-fun b!2800629 () Bool)

(declare-fun res!1167139 () Bool)

(assert (=> b!2800629 (=> res!1167139 e!1769601)))

(declare-fun valid!3159 (CacheUp!2642) Bool)

(assert (=> b!2800629 (= res!1167139 (not (valid!3159 (_2!19655 lt!1001081))))))

(declare-fun b!2800630 () Bool)

(declare-fun res!1167134 () Bool)

(assert (=> b!2800630 (=> (not res!1167134) (not e!1769592))))

(assert (=> b!2800630 (= res!1167134 (valid!3159 cacheUp!890))))

(declare-fun b!2800631 () Bool)

(declare-fun e!1769586 () Bool)

(assert (=> b!2800631 (= e!1769581 e!1769586)))

(declare-fun res!1167132 () Bool)

(assert (=> b!2800631 (=> res!1167132 e!1769586)))

(declare-fun z!3684 () (InoxSet Context!4878))

(declare-fun nullableZipper!659 ((InoxSet Context!4878)) Bool)

(assert (=> b!2800631 (= res!1167132 (not (nullableZipper!659 z!3684)))))

(declare-fun lt!1001096 () List!32654)

(declare-fun lt!1001095 () List!32654)

(assert (=> b!2800631 (= (++!8025 lt!1001096 lt!1001095) lt!1001085)))

(declare-fun lt!1001093 () C!16600)

(assert (=> b!2800631 (= lt!1001096 (++!8025 testedP!183 (Cons!32554 lt!1001093 Nil!32554)))))

(declare-fun lt!1001082 () Unit!46668)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!895 (List!32654 C!16600 List!32654 List!32654) Unit!46668)

(assert (=> b!2800631 (= lt!1001082 (lemmaMoveElementToOtherListKeepsConcatEq!895 testedP!183 lt!1001093 lt!1001095 lt!1001085))))

(declare-fun tail!4431 (List!32654) List!32654)

(assert (=> b!2800631 (= lt!1001095 (tail!4431 testedSuffix!143))))

(declare-fun lt!1001083 () List!32654)

(declare-fun head!6204 (List!32654) C!16600)

(assert (=> b!2800631 (isPrefix!2637 (++!8025 testedP!183 (Cons!32554 (head!6204 lt!1001083) Nil!32554)) lt!1001085)))

(declare-fun lt!1001077 () Unit!46668)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!487 (List!32654 List!32654) Unit!46668)

(assert (=> b!2800631 (= lt!1001077 (lemmaAddHeadSuffixToPrefixStillPrefix!487 testedP!183 lt!1001085))))

(declare-fun b!2800632 () Bool)

(declare-fun e!1769588 () Bool)

(declare-fun tp!892362 () Bool)

(assert (=> b!2800632 (= e!1769588 (and tp!892362 mapRes!18336))))

(declare-fun condMapEmpty!18335 () Bool)

(declare-fun mapDefault!18335 () List!32652)

(assert (=> b!2800632 (= condMapEmpty!18335 (= (arr!6387 (_values!4314 (v!34153 (underlying!8269 (v!34154 (underlying!8270 (cache!4082 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32652)) mapDefault!18335)))))

(declare-fun tp!892365 () Bool)

(declare-fun tp!892361 () Bool)

(declare-fun array_inv!4574 (array!14337) Bool)

(assert (=> b!2800633 (= e!1769587 (and tp!892355 tp!892361 tp!892365 (array_inv!4572 (_keys!4333 (v!34153 (underlying!8269 (v!34154 (underlying!8270 (cache!4082 cacheUp!890))))))) (array_inv!4574 (_values!4314 (v!34153 (underlying!8269 (v!34154 (underlying!8270 (cache!4082 cacheUp!890))))))) e!1769588))))

(declare-fun res!1167142 () Bool)

(declare-fun e!1769590 () Bool)

(assert (=> start!270834 (=> (not res!1167142) (not e!1769590))))

(assert (=> start!270834 (= res!1167142 (= lt!1001091 lt!1001085))))

(assert (=> start!270834 (= lt!1001085 (list!12217 totalInput!758))))

(assert (=> start!270834 (= lt!1001091 (++!8025 testedP!183 testedSuffix!143))))

(assert (=> start!270834 e!1769590))

(declare-fun e!1769597 () Bool)

(declare-fun inv!44207 (BalanceConc!19772) Bool)

(assert (=> start!270834 (and (inv!44207 totalInput!758) e!1769597)))

(declare-fun condSetEmpty!24511 () Bool)

(assert (=> start!270834 (= condSetEmpty!24511 (= z!3684 ((as const (Array Context!4878 Bool)) false)))))

(declare-fun setRes!24511 () Bool)

(assert (=> start!270834 setRes!24511))

(assert (=> start!270834 true))

(assert (=> start!270834 e!1769602))

(assert (=> start!270834 e!1769600))

(declare-fun inv!44208 (CacheDown!2768) Bool)

(assert (=> start!270834 (and (inv!44208 cacheDown!1009) e!1769578)))

(declare-fun e!1769579 () Bool)

(declare-fun inv!44209 (CacheUp!2642) Bool)

(assert (=> start!270834 (and (inv!44209 cacheUp!890) e!1769579)))

(declare-fun b!2800634 () Bool)

(assert (=> b!2800634 (= e!1769586 e!1769601)))

(declare-fun res!1167137 () Bool)

(assert (=> b!2800634 (=> res!1167137 e!1769601)))

(declare-fun lt!1001087 () Int)

(assert (=> b!2800634 (= res!1167137 (not (= (+ 1 testedPSize!143) lt!1001087)))))

(assert (=> b!2800634 (= lt!1001087 (size!25410 lt!1001096))))

(declare-fun derivationStepZipperMem!115 ((InoxSet Context!4878) C!16600 CacheUp!2642 CacheDown!2768) tuple3!5192)

(assert (=> b!2800634 (= lt!1001081 (derivationStepZipperMem!115 z!3684 lt!1001093 cacheUp!890 cacheDown!1009))))

(declare-fun b!2800635 () Bool)

(declare-fun Unit!46671 () Unit!46668)

(assert (=> b!2800635 (= e!1769577 Unit!46671)))

(declare-fun lt!1001094 () Unit!46668)

(declare-fun lemmaIsPrefixRefl!1720 (List!32654 List!32654) Unit!46668)

(assert (=> b!2800635 (= lt!1001094 (lemmaIsPrefixRefl!1720 lt!1001085 lt!1001085))))

(assert (=> b!2800635 (isPrefix!2637 lt!1001085 lt!1001085)))

(declare-fun lt!1001097 () Unit!46668)

(declare-fun lemmaIsPrefixSameLengthThenSameList!496 (List!32654 List!32654 List!32654) Unit!46668)

(assert (=> b!2800635 (= lt!1001097 (lemmaIsPrefixSameLengthThenSameList!496 lt!1001085 testedP!183 lt!1001085))))

(assert (=> b!2800635 false))

(declare-fun b!2800636 () Bool)

(declare-fun e!1769604 () Bool)

(declare-fun tp!892353 () Bool)

(assert (=> b!2800636 (= e!1769604 tp!892353)))

(declare-fun b!2800637 () Bool)

(assert (=> b!2800637 (= e!1769601 (< (- lt!1001079 lt!1001087) (- lt!1001079 lt!1001098)))))

(declare-fun b!2800638 () Bool)

(assert (=> b!2800638 (= e!1769598 e!1769580)))

(declare-fun e!1769603 () Bool)

(assert (=> b!2800639 (= e!1769584 (and e!1769603 tp!892357))))

(declare-fun b!2800640 () Bool)

(declare-fun e!1769594 () Bool)

(declare-fun lt!1001090 () MutLongMap!4034)

(assert (=> b!2800640 (= e!1769603 (and e!1769594 ((_ is LongMap!4034) lt!1001090)))))

(assert (=> b!2800640 (= lt!1001090 (v!34156 (underlying!8272 (cache!4083 cacheDown!1009))))))

(declare-fun b!2800641 () Bool)

(declare-fun res!1167131 () Bool)

(assert (=> b!2800641 (=> res!1167131 e!1769589)))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2800641 (= res!1167131 (= testedPSize!143 totalInputSize!205))))

(declare-fun mapIsEmpty!18335 () Bool)

(assert (=> mapIsEmpty!18335 mapRes!18335))

(declare-fun b!2800642 () Bool)

(declare-fun res!1167129 () Bool)

(assert (=> b!2800642 (=> (not res!1167129) (not e!1769592))))

(assert (=> b!2800642 (= res!1167129 (valid!3158 cacheDown!1009))))

(declare-fun e!1769575 () Bool)

(assert (=> b!2800643 (= e!1769575 (and e!1769591 tp!892354))))

(declare-fun b!2800644 () Bool)

(assert (=> b!2800644 (= e!1769579 e!1769575)))

(declare-fun b!2800645 () Bool)

(declare-fun tp!892368 () Bool)

(declare-fun inv!44210 (Conc!10079) Bool)

(assert (=> b!2800645 (= e!1769597 (and (inv!44210 (c!454107 totalInput!758)) tp!892368))))

(declare-fun mapIsEmpty!18336 () Bool)

(assert (=> mapIsEmpty!18336 mapRes!18336))

(declare-fun b!2800646 () Bool)

(assert (=> b!2800646 (= e!1769594 e!1769585)))

(declare-fun b!2800647 () Bool)

(assert (=> b!2800647 (= e!1769593 e!1769589)))

(declare-fun res!1167128 () Bool)

(assert (=> b!2800647 (=> res!1167128 e!1769589)))

(declare-fun lostCauseZipper!508 ((InoxSet Context!4878)) Bool)

(assert (=> b!2800647 (= res!1167128 (lostCauseZipper!508 z!3684))))

(assert (=> b!2800647 (and (= testedSuffix!143 lt!1001083) (= lt!1001083 testedSuffix!143))))

(declare-fun lt!1001076 () Unit!46668)

(declare-fun lemmaSamePrefixThenSameSuffix!1211 (List!32654 List!32654 List!32654 List!32654 List!32654) Unit!46668)

(assert (=> b!2800647 (= lt!1001076 (lemmaSamePrefixThenSameSuffix!1211 testedP!183 testedSuffix!143 testedP!183 lt!1001083 lt!1001085))))

(declare-fun getSuffix!1313 (List!32654 List!32654) List!32654)

(assert (=> b!2800647 (= lt!1001083 (getSuffix!1313 lt!1001085 testedP!183))))

(declare-fun setElem!24511 () Context!4878)

(declare-fun setNonEmpty!24511 () Bool)

(declare-fun tp!892358 () Bool)

(declare-fun inv!44211 (Context!4878) Bool)

(assert (=> setNonEmpty!24511 (= setRes!24511 (and tp!892358 (inv!44211 setElem!24511) e!1769604))))

(declare-fun setRest!24511 () (InoxSet Context!4878))

(assert (=> setNonEmpty!24511 (= z!3684 ((_ map or) (store ((as const (Array Context!4878 Bool)) false) setElem!24511 true) setRest!24511))))

(declare-fun setIsEmpty!24511 () Bool)

(assert (=> setIsEmpty!24511 setRes!24511))

(declare-fun b!2800648 () Bool)

(declare-fun e!1769582 () Bool)

(assert (=> b!2800648 (= e!1769582 e!1769592)))

(declare-fun res!1167143 () Bool)

(assert (=> b!2800648 (=> (not res!1167143) (not e!1769592))))

(assert (=> b!2800648 (= res!1167143 (= totalInputSize!205 lt!1001079))))

(declare-fun size!25411 (BalanceConc!19772) Int)

(assert (=> b!2800648 (= lt!1001079 (size!25411 totalInput!758))))

(declare-fun b!2800649 () Bool)

(assert (=> b!2800649 (= e!1769596 e!1769583)))

(declare-fun res!1167140 () Bool)

(assert (=> b!2800649 (=> res!1167140 e!1769583)))

(assert (=> b!2800649 (= res!1167140 (not (= lt!1001093 (head!6204 testedSuffix!143))))))

(declare-fun apply!7609 (BalanceConc!19772 Int) C!16600)

(assert (=> b!2800649 (= lt!1001093 (apply!7609 totalInput!758 testedPSize!143))))

(declare-fun drop!1751 (List!32654 Int) List!32654)

(declare-fun apply!7610 (List!32654 Int) C!16600)

(assert (=> b!2800649 (= (head!6204 (drop!1751 lt!1001085 testedPSize!143)) (apply!7610 lt!1001085 testedPSize!143))))

(declare-fun lt!1001080 () Unit!46668)

(declare-fun lemmaDropApply!955 (List!32654 Int) Unit!46668)

(assert (=> b!2800649 (= lt!1001080 (lemmaDropApply!955 lt!1001085 testedPSize!143))))

(assert (=> b!2800649 (not (or (not (= lt!1001086 testedP!183)) (not (= lt!1001089 testedSuffix!143))))))

(declare-fun lt!1001100 () Unit!46668)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!385 (List!32654 List!32654 List!32654 List!32654) Unit!46668)

(assert (=> b!2800649 (= lt!1001100 (lemmaConcatSameAndSameSizesThenSameLists!385 lt!1001086 lt!1001089 testedP!183 testedSuffix!143))))

(declare-fun b!2800650 () Bool)

(declare-fun res!1167138 () Bool)

(assert (=> b!2800650 (=> res!1167138 e!1769596)))

(assert (=> b!2800650 (= res!1167138 (not (= (size!25411 (_1!19656 lt!1001088)) testedPSize!143)))))

(declare-fun b!2800651 () Bool)

(assert (=> b!2800651 (= e!1769590 e!1769582)))

(declare-fun res!1167135 () Bool)

(assert (=> b!2800651 (=> (not res!1167135) (not e!1769582))))

(assert (=> b!2800651 (= res!1167135 (= testedPSize!143 lt!1001098))))

(assert (=> b!2800651 (= lt!1001098 (size!25410 testedP!183))))

(assert (= (and start!270834 res!1167142) b!2800651))

(assert (= (and b!2800651 res!1167135) b!2800648))

(assert (= (and b!2800648 res!1167143) b!2800630))

(assert (= (and b!2800630 res!1167134) b!2800642))

(assert (= (and b!2800642 res!1167129) b!2800625))

(assert (= (and b!2800625 (not res!1167141)) b!2800647))

(assert (= (and b!2800647 (not res!1167128)) b!2800641))

(assert (= (and b!2800641 (not res!1167131)) b!2800624))

(assert (= (and b!2800624 (not res!1167133)) b!2800650))

(assert (= (and b!2800650 (not res!1167138)) b!2800649))

(assert (= (and b!2800649 (not res!1167140)) b!2800623))

(assert (= (and b!2800623 c!454105) b!2800635))

(assert (= (and b!2800623 (not c!454105)) b!2800627))

(assert (= (and b!2800623 (not res!1167130)) b!2800631))

(assert (= (and b!2800631 (not res!1167132)) b!2800634))

(assert (= (and b!2800634 (not res!1167137)) b!2800629))

(assert (= (and b!2800629 (not res!1167139)) b!2800616))

(assert (= (and b!2800616 (not res!1167136)) b!2800637))

(assert (= start!270834 b!2800645))

(assert (= (and start!270834 condSetEmpty!24511) setIsEmpty!24511))

(assert (= (and start!270834 (not condSetEmpty!24511)) setNonEmpty!24511))

(assert (= setNonEmpty!24511 b!2800636))

(assert (= (and start!270834 ((_ is Cons!32554) testedP!183)) b!2800620))

(assert (= (and start!270834 ((_ is Cons!32554) testedSuffix!143)) b!2800618))

(assert (= (and b!2800626 condMapEmpty!18336) mapIsEmpty!18335))

(assert (= (and b!2800626 (not condMapEmpty!18336)) mapNonEmpty!18336))

(assert (= b!2800619 b!2800626))

(assert (= b!2800621 b!2800619))

(assert (= b!2800646 b!2800621))

(assert (= (and b!2800640 ((_ is LongMap!4034) (v!34156 (underlying!8272 (cache!4083 cacheDown!1009))))) b!2800646))

(assert (= b!2800639 b!2800640))

(assert (= (and b!2800628 ((_ is HashMap!3940) (cache!4083 cacheDown!1009))) b!2800639))

(assert (= start!270834 b!2800628))

(assert (= (and b!2800632 condMapEmpty!18335) mapIsEmpty!18336))

(assert (= (and b!2800632 (not condMapEmpty!18335)) mapNonEmpty!18335))

(assert (= b!2800633 b!2800632))

(assert (= b!2800617 b!2800633))

(assert (= b!2800638 b!2800617))

(assert (= (and b!2800622 ((_ is LongMap!4033) (v!34154 (underlying!8270 (cache!4082 cacheUp!890))))) b!2800638))

(assert (= b!2800643 b!2800622))

(assert (= (and b!2800644 ((_ is HashMap!3939) (cache!4082 cacheUp!890))) b!2800643))

(assert (= start!270834 b!2800644))

(declare-fun m!3230161 () Bool)

(assert (=> b!2800648 m!3230161))

(declare-fun m!3230163 () Bool)

(assert (=> b!2800634 m!3230163))

(declare-fun m!3230165 () Bool)

(assert (=> b!2800634 m!3230165))

(declare-fun m!3230167 () Bool)

(assert (=> b!2800647 m!3230167))

(declare-fun m!3230169 () Bool)

(assert (=> b!2800647 m!3230169))

(declare-fun m!3230171 () Bool)

(assert (=> b!2800647 m!3230171))

(declare-fun m!3230173 () Bool)

(assert (=> b!2800625 m!3230173))

(declare-fun m!3230175 () Bool)

(assert (=> b!2800625 m!3230175))

(declare-fun m!3230177 () Bool)

(assert (=> b!2800625 m!3230177))

(declare-fun m!3230179 () Bool)

(assert (=> b!2800623 m!3230179))

(declare-fun m!3230181 () Bool)

(assert (=> b!2800623 m!3230181))

(declare-fun m!3230183 () Bool)

(assert (=> b!2800619 m!3230183))

(declare-fun m!3230185 () Bool)

(assert (=> b!2800619 m!3230185))

(declare-fun m!3230187 () Bool)

(assert (=> setNonEmpty!24511 m!3230187))

(declare-fun m!3230189 () Bool)

(assert (=> b!2800629 m!3230189))

(declare-fun m!3230191 () Bool)

(assert (=> mapNonEmpty!18336 m!3230191))

(declare-fun m!3230193 () Bool)

(assert (=> mapNonEmpty!18335 m!3230193))

(declare-fun m!3230195 () Bool)

(assert (=> b!2800649 m!3230195))

(declare-fun m!3230197 () Bool)

(assert (=> b!2800649 m!3230197))

(declare-fun m!3230199 () Bool)

(assert (=> b!2800649 m!3230199))

(declare-fun m!3230201 () Bool)

(assert (=> b!2800649 m!3230201))

(declare-fun m!3230203 () Bool)

(assert (=> b!2800649 m!3230203))

(assert (=> b!2800649 m!3230195))

(declare-fun m!3230205 () Bool)

(assert (=> b!2800649 m!3230205))

(declare-fun m!3230207 () Bool)

(assert (=> b!2800649 m!3230207))

(declare-fun m!3230209 () Bool)

(assert (=> b!2800635 m!3230209))

(declare-fun m!3230211 () Bool)

(assert (=> b!2800635 m!3230211))

(declare-fun m!3230213 () Bool)

(assert (=> b!2800635 m!3230213))

(declare-fun m!3230215 () Bool)

(assert (=> b!2800645 m!3230215))

(declare-fun m!3230217 () Bool)

(assert (=> start!270834 m!3230217))

(declare-fun m!3230219 () Bool)

(assert (=> start!270834 m!3230219))

(declare-fun m!3230221 () Bool)

(assert (=> start!270834 m!3230221))

(declare-fun m!3230223 () Bool)

(assert (=> start!270834 m!3230223))

(declare-fun m!3230225 () Bool)

(assert (=> start!270834 m!3230225))

(declare-fun m!3230227 () Bool)

(assert (=> b!2800616 m!3230227))

(declare-fun m!3230229 () Bool)

(assert (=> b!2800633 m!3230229))

(declare-fun m!3230231 () Bool)

(assert (=> b!2800633 m!3230231))

(declare-fun m!3230233 () Bool)

(assert (=> b!2800651 m!3230233))

(declare-fun m!3230235 () Bool)

(assert (=> b!2800630 m!3230235))

(declare-fun m!3230237 () Bool)

(assert (=> b!2800642 m!3230237))

(declare-fun m!3230239 () Bool)

(assert (=> b!2800631 m!3230239))

(declare-fun m!3230241 () Bool)

(assert (=> b!2800631 m!3230241))

(declare-fun m!3230243 () Bool)

(assert (=> b!2800631 m!3230243))

(declare-fun m!3230245 () Bool)

(assert (=> b!2800631 m!3230245))

(declare-fun m!3230247 () Bool)

(assert (=> b!2800631 m!3230247))

(declare-fun m!3230249 () Bool)

(assert (=> b!2800631 m!3230249))

(assert (=> b!2800631 m!3230241))

(declare-fun m!3230251 () Bool)

(assert (=> b!2800631 m!3230251))

(declare-fun m!3230253 () Bool)

(assert (=> b!2800631 m!3230253))

(declare-fun m!3230255 () Bool)

(assert (=> b!2800631 m!3230255))

(declare-fun m!3230257 () Bool)

(assert (=> b!2800624 m!3230257))

(declare-fun m!3230259 () Bool)

(assert (=> b!2800624 m!3230259))

(declare-fun m!3230261 () Bool)

(assert (=> b!2800624 m!3230261))

(declare-fun m!3230263 () Bool)

(assert (=> b!2800624 m!3230263))

(declare-fun m!3230265 () Bool)

(assert (=> b!2800650 m!3230265))

(check-sat (not b!2800625) (not b!2800647) (not b!2800619) (not b!2800651) (not b!2800616) (not b!2800649) (not b!2800636) (not b!2800645) (not start!270834) b_and!204147 (not b_next!80115) (not mapNonEmpty!18336) (not b!2800618) (not b_next!80111) (not mapNonEmpty!18335) (not b!2800642) (not b!2800634) tp_is_empty!14255 (not b!2800623) (not b!2800633) (not b!2800624) (not b!2800650) (not b!2800635) b_and!204143 (not b_next!80109) (not b!2800631) b_and!204149 (not b!2800632) b_and!204145 (not b!2800648) (not b!2800629) (not b!2800626) (not setNonEmpty!24511) (not b!2800630) (not b_next!80113) (not b!2800620))
(check-sat (not b_next!80111) b_and!204147 (not b_next!80115) b_and!204149 b_and!204145 (not b_next!80113) b_and!204143 (not b_next!80109))
