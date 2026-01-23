; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269514 () Bool)

(assert start!269514)

(declare-fun b!2788196 () Bool)

(declare-fun b_free!78869 () Bool)

(declare-fun b_next!79573 () Bool)

(assert (=> b!2788196 (= b_free!78869 (not b_next!79573))))

(declare-fun tp!884591 () Bool)

(declare-fun b_and!203607 () Bool)

(assert (=> b!2788196 (= tp!884591 b_and!203607)))

(declare-fun b!2788191 () Bool)

(declare-fun b_free!78871 () Bool)

(declare-fun b_next!79575 () Bool)

(assert (=> b!2788191 (= b_free!78871 (not b_next!79575))))

(declare-fun tp!884584 () Bool)

(declare-fun b_and!203609 () Bool)

(assert (=> b!2788191 (= tp!884584 b_and!203609)))

(declare-fun b!2788207 () Bool)

(declare-fun b_free!78873 () Bool)

(declare-fun b_next!79577 () Bool)

(assert (=> b!2788207 (= b_free!78873 (not b_next!79577))))

(declare-fun tp!884590 () Bool)

(declare-fun b_and!203611 () Bool)

(assert (=> b!2788207 (= tp!884590 b_and!203611)))

(declare-fun b!2788177 () Bool)

(declare-fun b_free!78875 () Bool)

(declare-fun b_next!79579 () Bool)

(assert (=> b!2788177 (= b_free!78875 (not b_next!79579))))

(declare-fun tp!884582 () Bool)

(declare-fun b_and!203613 () Bool)

(assert (=> b!2788177 (= tp!884582 b_and!203613)))

(declare-fun tp!884581 () Bool)

(declare-fun e!1759884 () Bool)

(declare-fun tp!884594 () Bool)

(declare-fun e!1759875 () Bool)

(declare-datatypes ((C!16468 0))(
  ( (C!16469 (val!10168 Int)) )
))
(declare-datatypes ((array!13902 0))(
  ( (array!13903 (arr!6195 (Array (_ BitVec 32) (_ BitVec 64))) (size!25105 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8155 0))(
  ( (ElementMatch!8155 (c!452733 C!16468)) (Concat!13243 (regOne!16822 Regex!8155) (regTwo!16822 Regex!8155)) (EmptyExpr!8155) (Star!8155 (reg!8484 Regex!8155)) (EmptyLang!8155) (Union!8155 (regOne!16823 Regex!8155) (regTwo!16823 Regex!8155)) )
))
(declare-datatypes ((List!32379 0))(
  ( (Nil!32279) (Cons!32279 (h!37699 Regex!8155) (t!228521 List!32379)) )
))
(declare-datatypes ((Context!4746 0))(
  ( (Context!4747 (exprs!2873 List!32379)) )
))
(declare-datatypes ((tuple3!5028 0))(
  ( (tuple3!5029 (_1!19318 Regex!8155) (_2!19318 Context!4746) (_3!2984 C!16468)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32668 0))(
  ( (tuple2!32669 (_1!19319 tuple3!5028) (_2!19319 (InoxSet Context!4746))) )
))
(declare-datatypes ((List!32380 0))(
  ( (Nil!32280) (Cons!32280 (h!37700 tuple2!32668) (t!228522 List!32380)) )
))
(declare-datatypes ((array!13904 0))(
  ( (array!13905 (arr!6196 (Array (_ BitVec 32) List!32380)) (size!25106 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7814 0))(
  ( (LongMapFixedSize!7815 (defaultEntry!4292 Int) (mask!9721 (_ BitVec 32)) (extraKeys!4156 (_ BitVec 32)) (zeroValue!4166 List!32380) (minValue!4166 List!32380) (_size!7857 (_ BitVec 32)) (_keys!4207 array!13902) (_values!4188 array!13904) (_vacant!3968 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15437 0))(
  ( (Cell!15438 (v!33884 LongMapFixedSize!7814)) )
))
(declare-datatypes ((MutLongMap!3907 0))(
  ( (LongMap!3907 (underlying!8017 Cell!15437)) (MutLongMapExt!3906 (__x!21371 Int)) )
))
(declare-datatypes ((Cell!15439 0))(
  ( (Cell!15440 (v!33885 MutLongMap!3907)) )
))
(declare-datatypes ((Hashable!3823 0))(
  ( (HashableExt!3822 (__x!21372 Int)) )
))
(declare-datatypes ((MutableMap!3813 0))(
  ( (MutableMapExt!3812 (__x!21373 Int)) (HashMap!3813 (underlying!8018 Cell!15439) (hashF!5855 Hashable!3823) (_size!7858 (_ BitVec 32)) (defaultValue!3984 Int)) )
))
(declare-datatypes ((CacheDown!2638 0))(
  ( (CacheDown!2639 (cache!3956 MutableMap!3813)) )
))
(declare-fun cacheDown!1009 () CacheDown!2638)

(declare-fun array_inv!4436 (array!13902) Bool)

(declare-fun array_inv!4437 (array!13904) Bool)

(assert (=> b!2788177 (= e!1759884 (and tp!884582 tp!884594 tp!884581 (array_inv!4436 (_keys!4207 (v!33884 (underlying!8017 (v!33885 (underlying!8018 (cache!3956 cacheDown!1009))))))) (array_inv!4437 (_values!4188 (v!33884 (underlying!8017 (v!33885 (underlying!8018 (cache!3956 cacheDown!1009))))))) e!1759875))))

(declare-fun b!2788178 () Bool)

(declare-fun e!1759887 () Bool)

(declare-fun tp_is_empty!14123 () Bool)

(declare-fun tp!884578 () Bool)

(assert (=> b!2788178 (= e!1759887 (and tp_is_empty!14123 tp!884578))))

(declare-fun b!2788179 () Bool)

(declare-fun e!1759881 () Bool)

(assert (=> b!2788179 (= e!1759881 e!1759884)))

(declare-fun b!2788180 () Bool)

(declare-fun e!1759898 () Bool)

(declare-fun e!1759893 () Bool)

(assert (=> b!2788180 (= e!1759898 e!1759893)))

(declare-fun mapNonEmpty!17819 () Bool)

(declare-fun mapRes!17820 () Bool)

(declare-fun tp!884580 () Bool)

(declare-fun tp!884577 () Bool)

(assert (=> mapNonEmpty!17819 (= mapRes!17820 (and tp!884580 tp!884577))))

(declare-datatypes ((tuple2!32670 0))(
  ( (tuple2!32671 (_1!19320 Context!4746) (_2!19320 C!16468)) )
))
(declare-datatypes ((tuple2!32672 0))(
  ( (tuple2!32673 (_1!19321 tuple2!32670) (_2!19321 (InoxSet Context!4746))) )
))
(declare-datatypes ((List!32381 0))(
  ( (Nil!32281) (Cons!32281 (h!37701 tuple2!32672) (t!228523 List!32381)) )
))
(declare-fun mapValue!17820 () List!32381)

(declare-datatypes ((Hashable!3824 0))(
  ( (HashableExt!3823 (__x!21374 Int)) )
))
(declare-datatypes ((array!13906 0))(
  ( (array!13907 (arr!6197 (Array (_ BitVec 32) List!32381)) (size!25107 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7816 0))(
  ( (LongMapFixedSize!7817 (defaultEntry!4293 Int) (mask!9722 (_ BitVec 32)) (extraKeys!4157 (_ BitVec 32)) (zeroValue!4167 List!32381) (minValue!4167 List!32381) (_size!7859 (_ BitVec 32)) (_keys!4208 array!13902) (_values!4189 array!13906) (_vacant!3969 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15441 0))(
  ( (Cell!15442 (v!33886 LongMapFixedSize!7816)) )
))
(declare-datatypes ((MutLongMap!3908 0))(
  ( (LongMap!3908 (underlying!8019 Cell!15441)) (MutLongMapExt!3907 (__x!21375 Int)) )
))
(declare-datatypes ((Cell!15443 0))(
  ( (Cell!15444 (v!33887 MutLongMap!3908)) )
))
(declare-datatypes ((MutableMap!3814 0))(
  ( (MutableMapExt!3813 (__x!21376 Int)) (HashMap!3814 (underlying!8020 Cell!15443) (hashF!5856 Hashable!3824) (_size!7860 (_ BitVec 32)) (defaultValue!3985 Int)) )
))
(declare-datatypes ((CacheUp!2520 0))(
  ( (CacheUp!2521 (cache!3957 MutableMap!3814)) )
))
(declare-fun cacheUp!890 () CacheUp!2520)

(declare-fun mapRest!17819 () (Array (_ BitVec 32) List!32381))

(declare-fun mapKey!17820 () (_ BitVec 32))

(assert (=> mapNonEmpty!17819 (= (arr!6197 (_values!4189 (v!33886 (underlying!8019 (v!33887 (underlying!8020 (cache!3957 cacheUp!890))))))) (store mapRest!17819 mapKey!17820 mapValue!17820))))

(declare-fun b!2788181 () Bool)

(declare-fun res!1163414 () Bool)

(declare-fun e!1759894 () Bool)

(assert (=> b!2788181 (=> (not res!1163414) (not e!1759894))))

(declare-fun valid!3053 (CacheDown!2638) Bool)

(assert (=> b!2788181 (= res!1163414 (valid!3053 cacheDown!1009))))

(declare-fun b!2788182 () Bool)

(declare-fun e!1759891 () Bool)

(declare-datatypes ((List!32382 0))(
  ( (Nil!32282) (Cons!32282 (h!37702 C!16468) (t!228524 List!32382)) )
))
(declare-datatypes ((IArray!20053 0))(
  ( (IArray!20054 (innerList!10084 List!32382)) )
))
(declare-datatypes ((Conc!10024 0))(
  ( (Node!10024 (left!24493 Conc!10024) (right!24823 Conc!10024) (csize!20278 Int) (cheight!10235 Int)) (Leaf!15270 (xs!13135 IArray!20053) (csize!20279 Int)) (Empty!10024) )
))
(declare-datatypes ((BalanceConc!19662 0))(
  ( (BalanceConc!19663 (c!452734 Conc!10024)) )
))
(declare-fun totalInput!758 () BalanceConc!19662)

(declare-fun tp!884585 () Bool)

(declare-fun inv!43858 (Conc!10024) Bool)

(assert (=> b!2788182 (= e!1759891 (and (inv!43858 (c!452734 totalInput!758)) tp!884585))))

(declare-fun b!2788183 () Bool)

(declare-fun res!1163408 () Bool)

(declare-fun e!1759895 () Bool)

(assert (=> b!2788183 (=> res!1163408 e!1759895)))

(declare-fun testedPSize!143 () Int)

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2788183 (= res!1163408 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2788184 () Bool)

(declare-fun e!1759890 () Bool)

(declare-fun e!1759888 () Bool)

(assert (=> b!2788184 (= e!1759890 e!1759888)))

(declare-fun e!1759889 () Bool)

(declare-fun setElem!23692 () Context!4746)

(declare-fun setRes!23692 () Bool)

(declare-fun setNonEmpty!23692 () Bool)

(declare-fun tp!884586 () Bool)

(declare-fun inv!43859 (Context!4746) Bool)

(assert (=> setNonEmpty!23692 (= setRes!23692 (and tp!884586 (inv!43859 setElem!23692) e!1759889))))

(declare-fun z!3684 () (InoxSet Context!4746))

(declare-fun setRest!23692 () (InoxSet Context!4746))

(assert (=> setNonEmpty!23692 (= z!3684 ((_ map or) (store ((as const (Array Context!4746 Bool)) false) setElem!23692 true) setRest!23692))))

(declare-fun b!2788185 () Bool)

(declare-fun e!1759870 () Bool)

(declare-fun e!1759869 () Bool)

(assert (=> b!2788185 (= e!1759870 e!1759869)))

(declare-fun res!1163412 () Bool)

(assert (=> b!2788185 (=> (not res!1163412) (not e!1759869))))

(declare-fun lt!996383 () Int)

(assert (=> b!2788185 (= res!1163412 (= testedPSize!143 lt!996383))))

(declare-fun testedP!183 () List!32382)

(declare-fun size!25108 (List!32382) Int)

(assert (=> b!2788185 (= lt!996383 (size!25108 testedP!183))))

(declare-fun b!2788186 () Bool)

(declare-fun res!1163404 () Bool)

(assert (=> b!2788186 (=> (not res!1163404) (not e!1759894))))

(declare-fun valid!3054 (CacheUp!2520) Bool)

(assert (=> b!2788186 (= res!1163404 (valid!3054 cacheUp!890))))

(declare-fun b!2788187 () Bool)

(declare-fun e!1759885 () Bool)

(declare-fun tp!884588 () Bool)

(assert (=> b!2788187 (= e!1759885 (and tp_is_empty!14123 tp!884588))))

(declare-fun b!2788188 () Bool)

(declare-fun e!1759882 () Bool)

(assert (=> b!2788188 (= e!1759895 e!1759882)))

(declare-fun res!1163409 () Bool)

(assert (=> b!2788188 (=> res!1163409 e!1759882)))

(declare-fun lt!996382 () List!32382)

(declare-fun lt!996386 () List!32382)

(declare-fun lt!996384 () List!32382)

(declare-fun ++!7972 (List!32382 List!32382) List!32382)

(assert (=> b!2788188 (= res!1163409 (not (= (++!7972 lt!996382 lt!996384) lt!996386)))))

(declare-datatypes ((tuple2!32674 0))(
  ( (tuple2!32675 (_1!19322 BalanceConc!19662) (_2!19322 BalanceConc!19662)) )
))
(declare-fun lt!996381 () tuple2!32674)

(declare-fun list!12150 (BalanceConc!19662) List!32382)

(assert (=> b!2788188 (= lt!996384 (list!12150 (_2!19322 lt!996381)))))

(assert (=> b!2788188 (= lt!996382 (list!12150 (_1!19322 lt!996381)))))

(declare-fun splitAt!152 (BalanceConc!19662 Int) tuple2!32674)

(assert (=> b!2788188 (= lt!996381 (splitAt!152 totalInput!758 testedPSize!143))))

(declare-fun b!2788189 () Bool)

(assert (=> b!2788189 (= e!1759869 e!1759894)))

(declare-fun res!1163406 () Bool)

(assert (=> b!2788189 (=> (not res!1163406) (not e!1759894))))

(declare-fun lt!996372 () Int)

(assert (=> b!2788189 (= res!1163406 (= totalInputSize!205 lt!996372))))

(declare-fun size!25109 (BalanceConc!19662) Int)

(assert (=> b!2788189 (= lt!996372 (size!25109 totalInput!758))))

(declare-fun mapIsEmpty!17819 () Bool)

(declare-fun mapRes!17819 () Bool)

(assert (=> mapIsEmpty!17819 mapRes!17819))

(declare-fun mapIsEmpty!17820 () Bool)

(assert (=> mapIsEmpty!17820 mapRes!17820))

(declare-fun b!2788190 () Bool)

(declare-fun e!1759877 () Bool)

(declare-fun e!1759874 () Bool)

(assert (=> b!2788190 (= e!1759877 e!1759874)))

(declare-fun e!1759883 () Bool)

(assert (=> b!2788191 (= e!1759888 (and e!1759883 tp!884584))))

(declare-fun b!2788192 () Bool)

(declare-fun e!1759880 () Bool)

(declare-fun tp!884587 () Bool)

(assert (=> b!2788192 (= e!1759880 (and tp!884587 mapRes!17820))))

(declare-fun condMapEmpty!17819 () Bool)

(declare-fun mapDefault!17819 () List!32381)

(assert (=> b!2788192 (= condMapEmpty!17819 (= (arr!6197 (_values!4189 (v!33886 (underlying!8019 (v!33887 (underlying!8020 (cache!3957 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32381)) mapDefault!17819)))))

(declare-fun b!2788193 () Bool)

(declare-fun e!1759897 () Bool)

(declare-fun lt!996369 () MutLongMap!3908)

(get-info :version)

(assert (=> b!2788193 (= e!1759897 (and e!1759877 ((_ is LongMap!3908) lt!996369)))))

(assert (=> b!2788193 (= lt!996369 (v!33887 (underlying!8020 (cache!3957 cacheUp!890))))))

(declare-fun b!2788194 () Bool)

(declare-fun res!1163410 () Bool)

(declare-fun e!1759873 () Bool)

(assert (=> b!2788194 (=> res!1163410 e!1759873)))

(declare-datatypes ((tuple3!5030 0))(
  ( (tuple3!5031 (_1!19323 (InoxSet Context!4746)) (_2!19323 CacheUp!2520) (_3!2985 CacheDown!2638)) )
))
(declare-fun lt!996368 () tuple3!5030)

(assert (=> b!2788194 (= res!1163410 (not (valid!3054 (_2!19323 lt!996368))))))

(declare-fun b!2788195 () Bool)

(declare-fun e!1759896 () Bool)

(declare-fun lt!996380 () MutLongMap!3907)

(assert (=> b!2788195 (= e!1759883 (and e!1759896 ((_ is LongMap!3907) lt!996380)))))

(assert (=> b!2788195 (= lt!996380 (v!33885 (underlying!8018 (cache!3956 cacheDown!1009))))))

(declare-fun mapNonEmpty!17820 () Bool)

(declare-fun tp!884583 () Bool)

(declare-fun tp!884593 () Bool)

(assert (=> mapNonEmpty!17820 (= mapRes!17819 (and tp!884583 tp!884593))))

(declare-fun mapValue!17819 () List!32380)

(declare-fun mapKey!17819 () (_ BitVec 32))

(declare-fun mapRest!17820 () (Array (_ BitVec 32) List!32380))

(assert (=> mapNonEmpty!17820 (= (arr!6196 (_values!4188 (v!33884 (underlying!8017 (v!33885 (underlying!8018 (cache!3956 cacheDown!1009))))))) (store mapRest!17820 mapKey!17819 mapValue!17819))))

(assert (=> b!2788196 (= e!1759893 (and e!1759897 tp!884591))))

(declare-fun b!2788197 () Bool)

(declare-fun e!1759868 () Bool)

(declare-fun e!1759879 () Bool)

(assert (=> b!2788197 (= e!1759868 e!1759879)))

(declare-fun res!1163416 () Bool)

(assert (=> b!2788197 (=> res!1163416 e!1759879)))

(declare-fun nullableZipper!644 ((InoxSet Context!4746)) Bool)

(assert (=> b!2788197 (= res!1163416 (not (nullableZipper!644 z!3684)))))

(declare-fun lt!996374 () List!32382)

(declare-fun lt!996364 () List!32382)

(assert (=> b!2788197 (= (++!7972 lt!996374 lt!996364) lt!996386)))

(declare-fun lt!996375 () C!16468)

(assert (=> b!2788197 (= lt!996374 (++!7972 testedP!183 (Cons!32282 lt!996375 Nil!32282)))))

(declare-datatypes ((Unit!46499 0))(
  ( (Unit!46500) )
))
(declare-fun lt!996366 () Unit!46499)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!880 (List!32382 C!16468 List!32382 List!32382) Unit!46499)

(assert (=> b!2788197 (= lt!996366 (lemmaMoveElementToOtherListKeepsConcatEq!880 testedP!183 lt!996375 lt!996364 lt!996386))))

(declare-fun testedSuffix!143 () List!32382)

(declare-fun tail!4406 (List!32382) List!32382)

(assert (=> b!2788197 (= lt!996364 (tail!4406 testedSuffix!143))))

(declare-fun lt!996373 () List!32382)

(declare-fun isPrefix!2591 (List!32382 List!32382) Bool)

(declare-fun head!6174 (List!32382) C!16468)

(assert (=> b!2788197 (isPrefix!2591 (++!7972 testedP!183 (Cons!32282 (head!6174 lt!996373) Nil!32282)) lt!996386)))

(declare-fun lt!996387 () Unit!46499)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!471 (List!32382 List!32382) Unit!46499)

(assert (=> b!2788197 (= lt!996387 (lemmaAddHeadSuffixToPrefixStillPrefix!471 testedP!183 lt!996386))))

(declare-fun b!2788198 () Bool)

(declare-fun tp!884589 () Bool)

(assert (=> b!2788198 (= e!1759875 (and tp!884589 mapRes!17819))))

(declare-fun condMapEmpty!17820 () Bool)

(declare-fun mapDefault!17820 () List!32380)

(assert (=> b!2788198 (= condMapEmpty!17820 (= (arr!6196 (_values!4188 (v!33884 (underlying!8017 (v!33885 (underlying!8018 (cache!3956 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32380)) mapDefault!17820)))))

(declare-fun b!2788199 () Bool)

(declare-fun e!1759876 () Bool)

(assert (=> b!2788199 (= e!1759894 (not e!1759876))))

(declare-fun res!1163417 () Bool)

(assert (=> b!2788199 (=> res!1163417 e!1759876)))

(assert (=> b!2788199 (= res!1163417 (not (isPrefix!2591 testedP!183 lt!996386)))))

(declare-fun lt!996367 () List!32382)

(assert (=> b!2788199 (isPrefix!2591 testedP!183 lt!996367)))

(declare-fun lt!996377 () Unit!46499)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1701 (List!32382 List!32382) Unit!46499)

(assert (=> b!2788199 (= lt!996377 (lemmaConcatTwoListThenFirstIsPrefix!1701 testedP!183 testedSuffix!143))))

(declare-fun b!2788200 () Bool)

(assert (=> b!2788200 (= e!1759879 e!1759873)))

(declare-fun res!1163413 () Bool)

(assert (=> b!2788200 (=> res!1163413 e!1759873)))

(assert (=> b!2788200 (= res!1163413 (not (= (+ 1 testedPSize!143) (size!25108 lt!996374))))))

(declare-fun derivationStepZipperMem!103 ((InoxSet Context!4746) C!16468 CacheUp!2520 CacheDown!2638) tuple3!5030)

(assert (=> b!2788200 (= lt!996368 (derivationStepZipperMem!103 z!3684 lt!996375 cacheUp!890 cacheDown!1009))))

(declare-fun b!2788201 () Bool)

(declare-fun e!1759878 () Unit!46499)

(declare-fun Unit!46501 () Unit!46499)

(assert (=> b!2788201 (= e!1759878 Unit!46501)))

(declare-fun lt!996363 () Unit!46499)

(declare-fun lemmaIsPrefixRefl!1695 (List!32382 List!32382) Unit!46499)

(assert (=> b!2788201 (= lt!996363 (lemmaIsPrefixRefl!1695 lt!996386 lt!996386))))

(assert (=> b!2788201 (isPrefix!2591 lt!996386 lt!996386)))

(declare-fun lt!996378 () Unit!46499)

(declare-fun lemmaIsPrefixSameLengthThenSameList!475 (List!32382 List!32382 List!32382) Unit!46499)

(assert (=> b!2788201 (= lt!996378 (lemmaIsPrefixSameLengthThenSameList!475 lt!996386 testedP!183 lt!996386))))

(assert (=> b!2788201 false))

(declare-fun b!2788202 () Bool)

(assert (=> b!2788202 (= e!1759873 true)))

(declare-fun lt!996385 () Bool)

(assert (=> b!2788202 (= lt!996385 (valid!3053 (_3!2985 lt!996368)))))

(declare-fun b!2788203 () Bool)

(declare-fun res!1163411 () Bool)

(assert (=> b!2788203 (=> res!1163411 e!1759882)))

(assert (=> b!2788203 (= res!1163411 (not (= (size!25109 (_1!19322 lt!996381)) testedPSize!143)))))

(declare-fun b!2788204 () Bool)

(declare-fun e!1759871 () Bool)

(assert (=> b!2788204 (= e!1759871 e!1759868)))

(declare-fun res!1163405 () Bool)

(assert (=> b!2788204 (=> res!1163405 e!1759868)))

(assert (=> b!2788204 (= res!1163405 (>= lt!996383 lt!996372))))

(declare-fun lt!996376 () Unit!46499)

(assert (=> b!2788204 (= lt!996376 e!1759878)))

(declare-fun c!452732 () Bool)

(assert (=> b!2788204 (= c!452732 (= lt!996383 lt!996372))))

(assert (=> b!2788204 (<= lt!996383 (size!25108 lt!996386))))

(declare-fun lt!996371 () Unit!46499)

(declare-fun lemmaIsPrefixThenSmallerEqSize!278 (List!32382 List!32382) Unit!46499)

(assert (=> b!2788204 (= lt!996371 (lemmaIsPrefixThenSmallerEqSize!278 testedP!183 lt!996386))))

(declare-fun b!2788205 () Bool)

(declare-fun Unit!46502 () Unit!46499)

(assert (=> b!2788205 (= e!1759878 Unit!46502)))

(declare-fun b!2788206 () Bool)

(declare-fun e!1759872 () Bool)

(assert (=> b!2788206 (= e!1759874 e!1759872)))

(declare-fun tp!884579 () Bool)

(declare-fun tp!884576 () Bool)

(declare-fun array_inv!4438 (array!13906) Bool)

(assert (=> b!2788207 (= e!1759872 (and tp!884590 tp!884579 tp!884576 (array_inv!4436 (_keys!4208 (v!33886 (underlying!8019 (v!33887 (underlying!8020 (cache!3957 cacheUp!890))))))) (array_inv!4438 (_values!4189 (v!33886 (underlying!8019 (v!33887 (underlying!8020 (cache!3957 cacheUp!890))))))) e!1759880))))

(declare-fun setIsEmpty!23692 () Bool)

(assert (=> setIsEmpty!23692 setRes!23692))

(declare-fun b!2788208 () Bool)

(assert (=> b!2788208 (= e!1759876 e!1759895)))

(declare-fun res!1163418 () Bool)

(assert (=> b!2788208 (=> res!1163418 e!1759895)))

(declare-fun lostCauseZipper!470 ((InoxSet Context!4746)) Bool)

(assert (=> b!2788208 (= res!1163418 (lostCauseZipper!470 z!3684))))

(assert (=> b!2788208 (and (= testedSuffix!143 lt!996373) (= lt!996373 testedSuffix!143))))

(declare-fun lt!996365 () Unit!46499)

(declare-fun lemmaSamePrefixThenSameSuffix!1171 (List!32382 List!32382 List!32382 List!32382 List!32382) Unit!46499)

(assert (=> b!2788208 (= lt!996365 (lemmaSamePrefixThenSameSuffix!1171 testedP!183 testedSuffix!143 testedP!183 lt!996373 lt!996386))))

(declare-fun getSuffix!1270 (List!32382 List!32382) List!32382)

(assert (=> b!2788208 (= lt!996373 (getSuffix!1270 lt!996386 testedP!183))))

(declare-fun b!2788209 () Bool)

(assert (=> b!2788209 (= e!1759896 e!1759881)))

(declare-fun res!1163415 () Bool)

(assert (=> start!269514 (=> (not res!1163415) (not e!1759870))))

(assert (=> start!269514 (= res!1163415 (= lt!996367 lt!996386))))

(assert (=> start!269514 (= lt!996386 (list!12150 totalInput!758))))

(assert (=> start!269514 (= lt!996367 (++!7972 testedP!183 testedSuffix!143))))

(assert (=> start!269514 e!1759870))

(declare-fun inv!43860 (BalanceConc!19662) Bool)

(assert (=> start!269514 (and (inv!43860 totalInput!758) e!1759891)))

(declare-fun condSetEmpty!23692 () Bool)

(assert (=> start!269514 (= condSetEmpty!23692 (= z!3684 ((as const (Array Context!4746 Bool)) false)))))

(assert (=> start!269514 setRes!23692))

(assert (=> start!269514 true))

(assert (=> start!269514 e!1759885))

(assert (=> start!269514 e!1759887))

(declare-fun inv!43861 (CacheDown!2638) Bool)

(assert (=> start!269514 (and (inv!43861 cacheDown!1009) e!1759890)))

(declare-fun inv!43862 (CacheUp!2520) Bool)

(assert (=> start!269514 (and (inv!43862 cacheUp!890) e!1759898)))

(declare-fun b!2788210 () Bool)

(assert (=> b!2788210 (= e!1759882 e!1759871)))

(declare-fun res!1163407 () Bool)

(assert (=> b!2788210 (=> res!1163407 e!1759871)))

(assert (=> b!2788210 (= res!1163407 (not (= lt!996375 (head!6174 testedSuffix!143))))))

(declare-fun apply!7555 (BalanceConc!19662 Int) C!16468)

(assert (=> b!2788210 (= lt!996375 (apply!7555 totalInput!758 testedPSize!143))))

(declare-fun drop!1728 (List!32382 Int) List!32382)

(declare-fun apply!7556 (List!32382 Int) C!16468)

(assert (=> b!2788210 (= (head!6174 (drop!1728 lt!996386 testedPSize!143)) (apply!7556 lt!996386 testedPSize!143))))

(declare-fun lt!996379 () Unit!46499)

(declare-fun lemmaDropApply!934 (List!32382 Int) Unit!46499)

(assert (=> b!2788210 (= lt!996379 (lemmaDropApply!934 lt!996386 testedPSize!143))))

(assert (=> b!2788210 (not (or (not (= lt!996382 testedP!183)) (not (= lt!996384 testedSuffix!143))))))

(declare-fun lt!996370 () Unit!46499)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!361 (List!32382 List!32382 List!32382 List!32382) Unit!46499)

(assert (=> b!2788210 (= lt!996370 (lemmaConcatSameAndSameSizesThenSameLists!361 lt!996382 lt!996384 testedP!183 testedSuffix!143))))

(declare-fun b!2788211 () Bool)

(declare-fun tp!884592 () Bool)

(assert (=> b!2788211 (= e!1759889 tp!884592)))

(assert (= (and start!269514 res!1163415) b!2788185))

(assert (= (and b!2788185 res!1163412) b!2788189))

(assert (= (and b!2788189 res!1163406) b!2788186))

(assert (= (and b!2788186 res!1163404) b!2788181))

(assert (= (and b!2788181 res!1163414) b!2788199))

(assert (= (and b!2788199 (not res!1163417)) b!2788208))

(assert (= (and b!2788208 (not res!1163418)) b!2788183))

(assert (= (and b!2788183 (not res!1163408)) b!2788188))

(assert (= (and b!2788188 (not res!1163409)) b!2788203))

(assert (= (and b!2788203 (not res!1163411)) b!2788210))

(assert (= (and b!2788210 (not res!1163407)) b!2788204))

(assert (= (and b!2788204 c!452732) b!2788201))

(assert (= (and b!2788204 (not c!452732)) b!2788205))

(assert (= (and b!2788204 (not res!1163405)) b!2788197))

(assert (= (and b!2788197 (not res!1163416)) b!2788200))

(assert (= (and b!2788200 (not res!1163413)) b!2788194))

(assert (= (and b!2788194 (not res!1163410)) b!2788202))

(assert (= start!269514 b!2788182))

(assert (= (and start!269514 condSetEmpty!23692) setIsEmpty!23692))

(assert (= (and start!269514 (not condSetEmpty!23692)) setNonEmpty!23692))

(assert (= setNonEmpty!23692 b!2788211))

(assert (= (and start!269514 ((_ is Cons!32282) testedP!183)) b!2788187))

(assert (= (and start!269514 ((_ is Cons!32282) testedSuffix!143)) b!2788178))

(assert (= (and b!2788198 condMapEmpty!17820) mapIsEmpty!17819))

(assert (= (and b!2788198 (not condMapEmpty!17820)) mapNonEmpty!17820))

(assert (= b!2788177 b!2788198))

(assert (= b!2788179 b!2788177))

(assert (= b!2788209 b!2788179))

(assert (= (and b!2788195 ((_ is LongMap!3907) (v!33885 (underlying!8018 (cache!3956 cacheDown!1009))))) b!2788209))

(assert (= b!2788191 b!2788195))

(assert (= (and b!2788184 ((_ is HashMap!3813) (cache!3956 cacheDown!1009))) b!2788191))

(assert (= start!269514 b!2788184))

(assert (= (and b!2788192 condMapEmpty!17819) mapIsEmpty!17820))

(assert (= (and b!2788192 (not condMapEmpty!17819)) mapNonEmpty!17819))

(assert (= b!2788207 b!2788192))

(assert (= b!2788206 b!2788207))

(assert (= b!2788190 b!2788206))

(assert (= (and b!2788193 ((_ is LongMap!3908) (v!33887 (underlying!8020 (cache!3957 cacheUp!890))))) b!2788190))

(assert (= b!2788196 b!2788193))

(assert (= (and b!2788180 ((_ is HashMap!3814) (cache!3957 cacheUp!890))) b!2788196))

(assert (= start!269514 b!2788180))

(declare-fun m!3218539 () Bool)

(assert (=> b!2788201 m!3218539))

(declare-fun m!3218541 () Bool)

(assert (=> b!2788201 m!3218541))

(declare-fun m!3218543 () Bool)

(assert (=> b!2788201 m!3218543))

(declare-fun m!3218545 () Bool)

(assert (=> b!2788182 m!3218545))

(declare-fun m!3218547 () Bool)

(assert (=> mapNonEmpty!17820 m!3218547))

(declare-fun m!3218549 () Bool)

(assert (=> mapNonEmpty!17819 m!3218549))

(declare-fun m!3218551 () Bool)

(assert (=> b!2788185 m!3218551))

(declare-fun m!3218553 () Bool)

(assert (=> b!2788181 m!3218553))

(declare-fun m!3218555 () Bool)

(assert (=> b!2788186 m!3218555))

(declare-fun m!3218557 () Bool)

(assert (=> b!2788200 m!3218557))

(declare-fun m!3218559 () Bool)

(assert (=> b!2788200 m!3218559))

(declare-fun m!3218561 () Bool)

(assert (=> b!2788210 m!3218561))

(declare-fun m!3218563 () Bool)

(assert (=> b!2788210 m!3218563))

(declare-fun m!3218565 () Bool)

(assert (=> b!2788210 m!3218565))

(declare-fun m!3218567 () Bool)

(assert (=> b!2788210 m!3218567))

(declare-fun m!3218569 () Bool)

(assert (=> b!2788210 m!3218569))

(declare-fun m!3218571 () Bool)

(assert (=> b!2788210 m!3218571))

(assert (=> b!2788210 m!3218561))

(declare-fun m!3218573 () Bool)

(assert (=> b!2788210 m!3218573))

(declare-fun m!3218575 () Bool)

(assert (=> b!2788202 m!3218575))

(declare-fun m!3218577 () Bool)

(assert (=> setNonEmpty!23692 m!3218577))

(declare-fun m!3218579 () Bool)

(assert (=> b!2788203 m!3218579))

(declare-fun m!3218581 () Bool)

(assert (=> b!2788207 m!3218581))

(declare-fun m!3218583 () Bool)

(assert (=> b!2788207 m!3218583))

(declare-fun m!3218585 () Bool)

(assert (=> start!269514 m!3218585))

(declare-fun m!3218587 () Bool)

(assert (=> start!269514 m!3218587))

(declare-fun m!3218589 () Bool)

(assert (=> start!269514 m!3218589))

(declare-fun m!3218591 () Bool)

(assert (=> start!269514 m!3218591))

(declare-fun m!3218593 () Bool)

(assert (=> start!269514 m!3218593))

(declare-fun m!3218595 () Bool)

(assert (=> b!2788188 m!3218595))

(declare-fun m!3218597 () Bool)

(assert (=> b!2788188 m!3218597))

(declare-fun m!3218599 () Bool)

(assert (=> b!2788188 m!3218599))

(declare-fun m!3218601 () Bool)

(assert (=> b!2788188 m!3218601))

(declare-fun m!3218603 () Bool)

(assert (=> b!2788204 m!3218603))

(declare-fun m!3218605 () Bool)

(assert (=> b!2788204 m!3218605))

(declare-fun m!3218607 () Bool)

(assert (=> b!2788208 m!3218607))

(declare-fun m!3218609 () Bool)

(assert (=> b!2788208 m!3218609))

(declare-fun m!3218611 () Bool)

(assert (=> b!2788208 m!3218611))

(declare-fun m!3218613 () Bool)

(assert (=> b!2788189 m!3218613))

(declare-fun m!3218615 () Bool)

(assert (=> b!2788199 m!3218615))

(declare-fun m!3218617 () Bool)

(assert (=> b!2788199 m!3218617))

(declare-fun m!3218619 () Bool)

(assert (=> b!2788199 m!3218619))

(declare-fun m!3218621 () Bool)

(assert (=> b!2788194 m!3218621))

(declare-fun m!3218623 () Bool)

(assert (=> b!2788177 m!3218623))

(declare-fun m!3218625 () Bool)

(assert (=> b!2788177 m!3218625))

(declare-fun m!3218627 () Bool)

(assert (=> b!2788197 m!3218627))

(declare-fun m!3218629 () Bool)

(assert (=> b!2788197 m!3218629))

(declare-fun m!3218631 () Bool)

(assert (=> b!2788197 m!3218631))

(declare-fun m!3218633 () Bool)

(assert (=> b!2788197 m!3218633))

(declare-fun m!3218635 () Bool)

(assert (=> b!2788197 m!3218635))

(declare-fun m!3218637 () Bool)

(assert (=> b!2788197 m!3218637))

(assert (=> b!2788197 m!3218631))

(declare-fun m!3218639 () Bool)

(assert (=> b!2788197 m!3218639))

(declare-fun m!3218641 () Bool)

(assert (=> b!2788197 m!3218641))

(declare-fun m!3218643 () Bool)

(assert (=> b!2788197 m!3218643))

(check-sat (not b!2788182) (not b!2788210) b_and!203611 (not b!2788192) (not b!2788211) (not start!269514) (not mapNonEmpty!17819) (not setNonEmpty!23692) (not b!2788204) (not b!2788200) (not b!2788177) (not b_next!79573) (not b_next!79579) (not b!2788178) (not b!2788199) (not b_next!79575) (not b!2788207) (not b!2788203) b_and!203613 (not b!2788194) b_and!203609 (not b!2788186) (not b!2788202) (not b!2788188) (not b!2788181) b_and!203607 (not b!2788208) (not b!2788187) (not b_next!79577) tp_is_empty!14123 (not b!2788185) (not b!2788198) (not b!2788197) (not b!2788189) (not b!2788201) (not mapNonEmpty!17820))
(check-sat b_and!203611 b_and!203609 (not b_next!79573) (not b_next!79579) (not b_next!79575) b_and!203613 b_and!203607 (not b_next!79577))
