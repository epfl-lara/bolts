; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270980 () Bool)

(assert start!270980)

(declare-fun b!2802048 () Bool)

(declare-fun b_free!79461 () Bool)

(declare-fun b_next!80165 () Bool)

(assert (=> b!2802048 (= b_free!79461 (not b_next!80165))))

(declare-fun tp!893094 () Bool)

(declare-fun b_and!204199 () Bool)

(assert (=> b!2802048 (= tp!893094 b_and!204199)))

(declare-fun b!2802058 () Bool)

(declare-fun b_free!79463 () Bool)

(declare-fun b_next!80167 () Bool)

(assert (=> b!2802058 (= b_free!79463 (not b_next!80167))))

(declare-fun tp!893102 () Bool)

(declare-fun b_and!204201 () Bool)

(assert (=> b!2802058 (= tp!893102 b_and!204201)))

(declare-fun b!2802044 () Bool)

(declare-fun b_free!79465 () Bool)

(declare-fun b_next!80169 () Bool)

(assert (=> b!2802044 (= b_free!79465 (not b_next!80169))))

(declare-fun tp!893104 () Bool)

(declare-fun b_and!204203 () Bool)

(assert (=> b!2802044 (= tp!893104 b_and!204203)))

(declare-fun b!2802054 () Bool)

(declare-fun b_free!79467 () Bool)

(declare-fun b_next!80171 () Bool)

(assert (=> b!2802054 (= b_free!79467 (not b_next!80171))))

(declare-fun tp!893090 () Bool)

(declare-fun b_and!204205 () Bool)

(assert (=> b!2802054 (= tp!893090 b_and!204205)))

(declare-fun b!2802038 () Bool)

(declare-fun e!1770684 () Bool)

(declare-fun tp!893105 () Bool)

(declare-fun mapRes!18385 () Bool)

(assert (=> b!2802038 (= e!1770684 (and tp!893105 mapRes!18385))))

(declare-fun condMapEmpty!18385 () Bool)

(declare-datatypes ((C!16612 0))(
  ( (C!16613 (val!10240 Int)) )
))
(declare-datatypes ((array!14374 0))(
  ( (array!14375 (arr!6404 (Array (_ BitVec 32) (_ BitVec 64))) (size!25434 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8227 0))(
  ( (ElementMatch!8227 (c!454304 C!16612)) (Concat!13315 (regOne!16966 Regex!8227) (regTwo!16966 Regex!8227)) (EmptyExpr!8227) (Star!8227 (reg!8556 Regex!8227)) (EmptyLang!8227) (Union!8227 (regOne!16967 Regex!8227) (regTwo!16967 Regex!8227)) )
))
(declare-datatypes ((List!32674 0))(
  ( (Nil!32574) (Cons!32574 (h!37994 Regex!8227) (t!228844 List!32674)) )
))
(declare-datatypes ((Context!4890 0))(
  ( (Context!4891 (exprs!2945 List!32674)) )
))
(declare-datatypes ((tuple3!5208 0))(
  ( (tuple3!5209 (_1!19682 Regex!8227) (_2!19682 Context!4890) (_3!3074 C!16612)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33216 0))(
  ( (tuple2!33217 (_1!19683 tuple3!5208) (_2!19683 (InoxSet Context!4890))) )
))
(declare-datatypes ((List!32675 0))(
  ( (Nil!32575) (Cons!32575 (h!37995 tuple2!33216) (t!228845 List!32675)) )
))
(declare-datatypes ((array!14376 0))(
  ( (array!14377 (arr!6405 (Array (_ BitVec 32) List!32675)) (size!25435 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8088 0))(
  ( (LongMapFixedSize!8089 (defaultEntry!4429 Int) (mask!9894 (_ BitVec 32)) (extraKeys!4293 (_ BitVec 32)) (zeroValue!4303 List!32675) (minValue!4303 List!32675) (_size!8131 (_ BitVec 32)) (_keys!4344 array!14374) (_values!4325 array!14376) (_vacant!4105 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15985 0))(
  ( (Cell!15986 (v!34177 LongMapFixedSize!8088)) )
))
(declare-datatypes ((MutLongMap!4044 0))(
  ( (LongMap!4044 (underlying!8291 Cell!15985)) (MutLongMapExt!4043 (__x!21782 Int)) )
))
(declare-datatypes ((Cell!15987 0))(
  ( (Cell!15988 (v!34178 MutLongMap!4044)) )
))
(declare-datatypes ((Hashable!3960 0))(
  ( (HashableExt!3959 (__x!21783 Int)) )
))
(declare-datatypes ((MutableMap!3950 0))(
  ( (MutableMapExt!3949 (__x!21784 Int)) (HashMap!3950 (underlying!8292 Cell!15987) (hashF!5992 Hashable!3960) (_size!8132 (_ BitVec 32)) (defaultValue!4121 Int)) )
))
(declare-datatypes ((CacheDown!2780 0))(
  ( (CacheDown!2781 (cache!4093 MutableMap!3950)) )
))
(declare-fun cacheDown!1009 () CacheDown!2780)

(declare-fun mapDefault!18386 () List!32675)

(assert (=> b!2802038 (= condMapEmpty!18385 (= (arr!6405 (_values!4325 (v!34177 (underlying!8291 (v!34178 (underlying!8292 (cache!4093 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32675)) mapDefault!18386)))))

(declare-fun b!2802040 () Bool)

(declare-fun e!1770692 () Bool)

(declare-fun e!1770675 () Bool)

(assert (=> b!2802040 (= e!1770692 (not e!1770675))))

(declare-fun res!1167588 () Bool)

(assert (=> b!2802040 (=> res!1167588 e!1770675)))

(declare-datatypes ((List!32676 0))(
  ( (Nil!32576) (Cons!32576 (h!37996 C!16612) (t!228846 List!32676)) )
))
(declare-fun testedP!183 () List!32676)

(declare-fun lt!1001738 () List!32676)

(declare-fun isPrefix!2642 (List!32676 List!32676) Bool)

(assert (=> b!2802040 (= res!1167588 (not (isPrefix!2642 testedP!183 lt!1001738)))))

(declare-fun lt!1001734 () List!32676)

(assert (=> b!2802040 (isPrefix!2642 testedP!183 lt!1001734)))

(declare-datatypes ((Unit!46687 0))(
  ( (Unit!46688) )
))
(declare-fun lt!1001737 () Unit!46687)

(declare-fun testedSuffix!143 () List!32676)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1748 (List!32676 List!32676) Unit!46687)

(assert (=> b!2802040 (= lt!1001737 (lemmaConcatTwoListThenFirstIsPrefix!1748 testedP!183 testedSuffix!143))))

(declare-fun b!2802041 () Bool)

(declare-fun e!1770695 () Bool)

(declare-fun e!1770696 () Bool)

(assert (=> b!2802041 (= e!1770695 e!1770696)))

(declare-fun res!1167584 () Bool)

(assert (=> b!2802041 (=> res!1167584 e!1770696)))

(declare-fun z!3684 () (InoxSet Context!4890))

(declare-fun nullableZipper!663 ((InoxSet Context!4890)) Bool)

(assert (=> b!2802041 (= res!1167584 (nullableZipper!663 z!3684))))

(declare-fun lt!1001749 () List!32676)

(declare-fun lt!1001747 () List!32676)

(declare-fun ++!8031 (List!32676 List!32676) List!32676)

(assert (=> b!2802041 (= (++!8031 lt!1001749 lt!1001747) lt!1001738)))

(declare-fun lt!1001739 () C!16612)

(assert (=> b!2802041 (= lt!1001749 (++!8031 testedP!183 (Cons!32576 lt!1001739 Nil!32576)))))

(declare-fun lt!1001744 () Unit!46687)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!899 (List!32676 C!16612 List!32676 List!32676) Unit!46687)

(assert (=> b!2802041 (= lt!1001744 (lemmaMoveElementToOtherListKeepsConcatEq!899 testedP!183 lt!1001739 lt!1001747 lt!1001738))))

(declare-fun tail!4435 (List!32676) List!32676)

(assert (=> b!2802041 (= lt!1001747 (tail!4435 testedSuffix!143))))

(declare-fun lt!1001751 () List!32676)

(declare-fun head!6208 (List!32676) C!16612)

(assert (=> b!2802041 (isPrefix!2642 (++!8031 testedP!183 (Cons!32576 (head!6208 lt!1001751) Nil!32576)) lt!1001738)))

(declare-fun lt!1001750 () Unit!46687)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!491 (List!32676 List!32676) Unit!46687)

(assert (=> b!2802041 (= lt!1001750 (lemmaAddHeadSuffixToPrefixStillPrefix!491 testedP!183 lt!1001738))))

(declare-fun b!2802042 () Bool)

(declare-fun e!1770688 () Bool)

(declare-fun tp_is_empty!14267 () Bool)

(declare-fun tp!893089 () Bool)

(assert (=> b!2802042 (= e!1770688 (and tp_is_empty!14267 tp!893089))))

(declare-fun b!2802043 () Bool)

(declare-fun e!1770686 () Bool)

(declare-fun e!1770672 () Bool)

(assert (=> b!2802043 (= e!1770686 e!1770672)))

(declare-fun tp!893093 () Bool)

(declare-fun tp!893088 () Bool)

(declare-fun array_inv!4587 (array!14374) Bool)

(declare-fun array_inv!4588 (array!14376) Bool)

(assert (=> b!2802044 (= e!1770672 (and tp!893104 tp!893093 tp!893088 (array_inv!4587 (_keys!4344 (v!34177 (underlying!8291 (v!34178 (underlying!8292 (cache!4093 cacheDown!1009))))))) (array_inv!4588 (_values!4325 (v!34177 (underlying!8291 (v!34178 (underlying!8292 (cache!4093 cacheDown!1009))))))) e!1770684))))

(declare-fun mapIsEmpty!18385 () Bool)

(declare-fun mapRes!18386 () Bool)

(assert (=> mapIsEmpty!18385 mapRes!18386))

(declare-fun b!2802045 () Bool)

(declare-fun e!1770689 () Unit!46687)

(declare-fun Unit!46689 () Unit!46687)

(assert (=> b!2802045 (= e!1770689 Unit!46689)))

(declare-fun lt!1001740 () Unit!46687)

(declare-fun lemmaIsPrefixRefl!1723 (List!32676 List!32676) Unit!46687)

(assert (=> b!2802045 (= lt!1001740 (lemmaIsPrefixRefl!1723 lt!1001738 lt!1001738))))

(assert (=> b!2802045 (isPrefix!2642 lt!1001738 lt!1001738)))

(declare-fun lt!1001730 () Unit!46687)

(declare-fun lemmaIsPrefixSameLengthThenSameList!499 (List!32676 List!32676 List!32676) Unit!46687)

(assert (=> b!2802045 (= lt!1001730 (lemmaIsPrefixSameLengthThenSameList!499 lt!1001738 testedP!183 lt!1001738))))

(assert (=> b!2802045 false))

(declare-fun b!2802046 () Bool)

(declare-fun e!1770671 () Bool)

(declare-fun e!1770685 () Bool)

(assert (=> b!2802046 (= e!1770671 e!1770685)))

(declare-fun b!2802047 () Bool)

(declare-fun res!1167590 () Bool)

(declare-fun e!1770697 () Bool)

(assert (=> b!2802047 (=> res!1167590 e!1770697)))

(declare-fun testedPSize!143 () Int)

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2802047 (= res!1167590 (= testedPSize!143 totalInputSize!205))))

(declare-fun e!1770673 () Bool)

(declare-fun e!1770681 () Bool)

(assert (=> b!2802048 (= e!1770673 (and e!1770681 tp!893094))))

(declare-fun b!2802049 () Bool)

(declare-fun e!1770670 () Bool)

(assert (=> b!2802049 (= e!1770697 e!1770670)))

(declare-fun res!1167587 () Bool)

(assert (=> b!2802049 (=> res!1167587 e!1770670)))

(declare-fun lt!1001743 () List!32676)

(declare-fun lt!1001733 () List!32676)

(assert (=> b!2802049 (= res!1167587 (not (= (++!8031 lt!1001743 lt!1001733) lt!1001738)))))

(declare-datatypes ((IArray!20173 0))(
  ( (IArray!20174 (innerList!10144 List!32676)) )
))
(declare-datatypes ((Conc!10084 0))(
  ( (Node!10084 (left!24599 Conc!10084) (right!24929 Conc!10084) (csize!20398 Int) (cheight!10295 Int)) (Leaf!15366 (xs!13196 IArray!20173) (csize!20399 Int)) (Empty!10084) )
))
(declare-datatypes ((BalanceConc!19782 0))(
  ( (BalanceConc!19783 (c!454305 Conc!10084)) )
))
(declare-datatypes ((tuple2!33218 0))(
  ( (tuple2!33219 (_1!19684 BalanceConc!19782) (_2!19684 BalanceConc!19782)) )
))
(declare-fun lt!1001741 () tuple2!33218)

(declare-fun list!12224 (BalanceConc!19782) List!32676)

(assert (=> b!2802049 (= lt!1001733 (list!12224 (_2!19684 lt!1001741)))))

(assert (=> b!2802049 (= lt!1001743 (list!12224 (_1!19684 lt!1001741)))))

(declare-fun totalInput!758 () BalanceConc!19782)

(declare-fun splitAt!203 (BalanceConc!19782 Int) tuple2!33218)

(assert (=> b!2802049 (= lt!1001741 (splitAt!203 totalInput!758 testedPSize!143))))

(declare-fun setIsEmpty!24588 () Bool)

(declare-fun setRes!24588 () Bool)

(assert (=> setIsEmpty!24588 setRes!24588))

(declare-fun b!2802050 () Bool)

(declare-fun e!1770674 () Bool)

(assert (=> b!2802050 (= e!1770674 e!1770686)))

(declare-fun b!2802051 () Bool)

(declare-fun e!1770691 () Bool)

(declare-fun e!1770698 () Bool)

(assert (=> b!2802051 (= e!1770691 e!1770698)))

(declare-fun res!1167586 () Bool)

(assert (=> b!2802051 (=> (not res!1167586) (not e!1770698))))

(declare-fun lt!1001736 () Int)

(assert (=> b!2802051 (= res!1167586 (= testedPSize!143 lt!1001736))))

(declare-fun size!25436 (List!32676) Int)

(assert (=> b!2802051 (= lt!1001736 (size!25436 testedP!183))))

(declare-fun b!2802052 () Bool)

(declare-fun res!1167592 () Bool)

(assert (=> b!2802052 (=> (not res!1167592) (not e!1770692))))

(declare-datatypes ((Hashable!3961 0))(
  ( (HashableExt!3960 (__x!21785 Int)) )
))
(declare-datatypes ((tuple2!33220 0))(
  ( (tuple2!33221 (_1!19685 Context!4890) (_2!19685 C!16612)) )
))
(declare-datatypes ((tuple2!33222 0))(
  ( (tuple2!33223 (_1!19686 tuple2!33220) (_2!19686 (InoxSet Context!4890))) )
))
(declare-datatypes ((List!32677 0))(
  ( (Nil!32577) (Cons!32577 (h!37997 tuple2!33222) (t!228847 List!32677)) )
))
(declare-datatypes ((array!14378 0))(
  ( (array!14379 (arr!6406 (Array (_ BitVec 32) List!32677)) (size!25437 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8090 0))(
  ( (LongMapFixedSize!8091 (defaultEntry!4430 Int) (mask!9895 (_ BitVec 32)) (extraKeys!4294 (_ BitVec 32)) (zeroValue!4304 List!32677) (minValue!4304 List!32677) (_size!8133 (_ BitVec 32)) (_keys!4345 array!14374) (_values!4326 array!14378) (_vacant!4106 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15989 0))(
  ( (Cell!15990 (v!34179 LongMapFixedSize!8090)) )
))
(declare-datatypes ((MutLongMap!4045 0))(
  ( (LongMap!4045 (underlying!8293 Cell!15989)) (MutLongMapExt!4044 (__x!21786 Int)) )
))
(declare-datatypes ((Cell!15991 0))(
  ( (Cell!15992 (v!34180 MutLongMap!4045)) )
))
(declare-datatypes ((MutableMap!3951 0))(
  ( (MutableMapExt!3950 (__x!21787 Int)) (HashMap!3951 (underlying!8294 Cell!15991) (hashF!5993 Hashable!3961) (_size!8134 (_ BitVec 32)) (defaultValue!4122 Int)) )
))
(declare-datatypes ((CacheUp!2652 0))(
  ( (CacheUp!2653 (cache!4094 MutableMap!3951)) )
))
(declare-fun cacheUp!890 () CacheUp!2652)

(declare-fun valid!3166 (CacheUp!2652) Bool)

(assert (=> b!2802052 (= res!1167592 (valid!3166 cacheUp!890))))

(declare-fun b!2802039 () Bool)

(declare-fun e!1770683 () Bool)

(declare-fun tp!893092 () Bool)

(assert (=> b!2802039 (= e!1770683 tp!893092)))

(declare-fun res!1167585 () Bool)

(assert (=> start!270980 (=> (not res!1167585) (not e!1770691))))

(assert (=> start!270980 (= res!1167585 (= lt!1001734 lt!1001738))))

(assert (=> start!270980 (= lt!1001738 (list!12224 totalInput!758))))

(assert (=> start!270980 (= lt!1001734 (++!8031 testedP!183 testedSuffix!143))))

(assert (=> start!270980 e!1770691))

(declare-fun e!1770677 () Bool)

(declare-fun inv!44244 (BalanceConc!19782) Bool)

(assert (=> start!270980 (and (inv!44244 totalInput!758) e!1770677)))

(declare-fun condSetEmpty!24588 () Bool)

(assert (=> start!270980 (= condSetEmpty!24588 (= z!3684 ((as const (Array Context!4890 Bool)) false)))))

(assert (=> start!270980 setRes!24588))

(assert (=> start!270980 true))

(assert (=> start!270980 e!1770688))

(declare-fun e!1770680 () Bool)

(assert (=> start!270980 e!1770680))

(declare-fun e!1770676 () Bool)

(declare-fun inv!44245 (CacheDown!2780) Bool)

(assert (=> start!270980 (and (inv!44245 cacheDown!1009) e!1770676)))

(declare-fun e!1770694 () Bool)

(declare-fun inv!44246 (CacheUp!2652) Bool)

(assert (=> start!270980 (and (inv!44246 cacheUp!890) e!1770694)))

(declare-fun b!2802053 () Bool)

(declare-fun e!1770678 () Bool)

(assert (=> b!2802053 (= e!1770678 e!1770671)))

(declare-fun tp!893098 () Bool)

(declare-fun setNonEmpty!24588 () Bool)

(declare-fun setElem!24588 () Context!4890)

(declare-fun inv!44247 (Context!4890) Bool)

(assert (=> setNonEmpty!24588 (= setRes!24588 (and tp!893098 (inv!44247 setElem!24588) e!1770683))))

(declare-fun setRest!24588 () (InoxSet Context!4890))

(assert (=> setNonEmpty!24588 (= z!3684 ((_ map or) (store ((as const (Array Context!4890 Bool)) false) setElem!24588 true) setRest!24588))))

(declare-fun tp!893100 () Bool)

(declare-fun tp!893091 () Bool)

(declare-fun e!1770679 () Bool)

(declare-fun array_inv!4589 (array!14378) Bool)

(assert (=> b!2802054 (= e!1770685 (and tp!893090 tp!893100 tp!893091 (array_inv!4587 (_keys!4345 (v!34179 (underlying!8293 (v!34180 (underlying!8294 (cache!4094 cacheUp!890))))))) (array_inv!4589 (_values!4326 (v!34179 (underlying!8293 (v!34180 (underlying!8294 (cache!4094 cacheUp!890))))))) e!1770679))))

(declare-fun b!2802055 () Bool)

(declare-fun tp!893101 () Bool)

(assert (=> b!2802055 (= e!1770680 (and tp_is_empty!14267 tp!893101))))

(declare-fun b!2802056 () Bool)

(declare-fun tp!893096 () Bool)

(assert (=> b!2802056 (= e!1770679 (and tp!893096 mapRes!18386))))

(declare-fun condMapEmpty!18386 () Bool)

(declare-fun mapDefault!18385 () List!32677)

(assert (=> b!2802056 (= condMapEmpty!18386 (= (arr!6406 (_values!4326 (v!34179 (underlying!8293 (v!34180 (underlying!8294 (cache!4094 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32677)) mapDefault!18385)))))

(declare-fun b!2802057 () Bool)

(declare-fun Unit!46690 () Unit!46687)

(assert (=> b!2802057 (= e!1770689 Unit!46690)))

(declare-fun mapIsEmpty!18386 () Bool)

(assert (=> mapIsEmpty!18386 mapRes!18385))

(declare-fun e!1770687 () Bool)

(declare-fun e!1770669 () Bool)

(assert (=> b!2802058 (= e!1770687 (and e!1770669 tp!893102))))

(declare-fun b!2802059 () Bool)

(assert (=> b!2802059 (= e!1770676 e!1770673)))

(declare-fun b!2802060 () Bool)

(assert (=> b!2802060 (= e!1770698 e!1770692)))

(declare-fun res!1167582 () Bool)

(assert (=> b!2802060 (=> (not res!1167582) (not e!1770692))))

(declare-fun lt!1001728 () Int)

(assert (=> b!2802060 (= res!1167582 (= totalInputSize!205 lt!1001728))))

(declare-fun size!25438 (BalanceConc!19782) Int)

(assert (=> b!2802060 (= lt!1001728 (size!25438 totalInput!758))))

(declare-fun b!2802061 () Bool)

(declare-fun lt!1001748 () MutLongMap!4045)

(get-info :version)

(assert (=> b!2802061 (= e!1770669 (and e!1770678 ((_ is LongMap!4045) lt!1001748)))))

(assert (=> b!2802061 (= lt!1001748 (v!34180 (underlying!8294 (cache!4094 cacheUp!890))))))

(declare-fun b!2802062 () Bool)

(assert (=> b!2802062 (= e!1770696 true)))

(declare-fun lt!1001742 () Int)

(assert (=> b!2802062 (= lt!1001742 (size!25436 lt!1001749))))

(declare-datatypes ((tuple3!5210 0))(
  ( (tuple3!5211 (_1!19687 (InoxSet Context!4890)) (_2!19687 CacheUp!2652) (_3!3075 CacheDown!2780)) )
))
(declare-fun lt!1001735 () tuple3!5210)

(declare-fun derivationStepZipperMem!118 ((InoxSet Context!4890) C!16612 CacheUp!2652 CacheDown!2780) tuple3!5210)

(assert (=> b!2802062 (= lt!1001735 (derivationStepZipperMem!118 z!3684 lt!1001739 cacheUp!890 cacheDown!1009))))

(declare-fun b!2802063 () Bool)

(declare-fun res!1167581 () Bool)

(assert (=> b!2802063 (=> (not res!1167581) (not e!1770692))))

(declare-fun valid!3167 (CacheDown!2780) Bool)

(assert (=> b!2802063 (= res!1167581 (valid!3167 cacheDown!1009))))

(declare-fun mapNonEmpty!18385 () Bool)

(declare-fun tp!893087 () Bool)

(declare-fun tp!893095 () Bool)

(assert (=> mapNonEmpty!18385 (= mapRes!18386 (and tp!893087 tp!893095))))

(declare-fun mapValue!18386 () List!32677)

(declare-fun mapKey!18386 () (_ BitVec 32))

(declare-fun mapRest!18385 () (Array (_ BitVec 32) List!32677))

(assert (=> mapNonEmpty!18385 (= (arr!6406 (_values!4326 (v!34179 (underlying!8293 (v!34180 (underlying!8294 (cache!4094 cacheUp!890))))))) (store mapRest!18385 mapKey!18386 mapValue!18386))))

(declare-fun b!2802064 () Bool)

(declare-fun e!1770682 () Bool)

(assert (=> b!2802064 (= e!1770670 e!1770682)))

(declare-fun res!1167583 () Bool)

(assert (=> b!2802064 (=> res!1167583 e!1770682)))

(assert (=> b!2802064 (= res!1167583 (not (= lt!1001739 (head!6208 testedSuffix!143))))))

(declare-fun apply!7619 (BalanceConc!19782 Int) C!16612)

(assert (=> b!2802064 (= lt!1001739 (apply!7619 totalInput!758 testedPSize!143))))

(declare-fun drop!1755 (List!32676 Int) List!32676)

(declare-fun apply!7620 (List!32676 Int) C!16612)

(assert (=> b!2802064 (= (head!6208 (drop!1755 lt!1001738 testedPSize!143)) (apply!7620 lt!1001738 testedPSize!143))))

(declare-fun lt!1001746 () Unit!46687)

(declare-fun lemmaDropApply!959 (List!32676 Int) Unit!46687)

(assert (=> b!2802064 (= lt!1001746 (lemmaDropApply!959 lt!1001738 testedPSize!143))))

(assert (=> b!2802064 (not (or (not (= lt!1001743 testedP!183)) (not (= lt!1001733 testedSuffix!143))))))

(declare-fun lt!1001729 () Unit!46687)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!389 (List!32676 List!32676 List!32676 List!32676) Unit!46687)

(assert (=> b!2802064 (= lt!1001729 (lemmaConcatSameAndSameSizesThenSameLists!389 lt!1001743 lt!1001733 testedP!183 testedSuffix!143))))

(declare-fun b!2802065 () Bool)

(assert (=> b!2802065 (= e!1770675 e!1770697)))

(declare-fun res!1167589 () Bool)

(assert (=> b!2802065 (=> res!1167589 e!1770697)))

(declare-fun lostCauseZipper!513 ((InoxSet Context!4890)) Bool)

(assert (=> b!2802065 (= res!1167589 (lostCauseZipper!513 z!3684))))

(assert (=> b!2802065 (and (= testedSuffix!143 lt!1001751) (= lt!1001751 testedSuffix!143))))

(declare-fun lt!1001752 () Unit!46687)

(declare-fun lemmaSamePrefixThenSameSuffix!1216 (List!32676 List!32676 List!32676 List!32676 List!32676) Unit!46687)

(assert (=> b!2802065 (= lt!1001752 (lemmaSamePrefixThenSameSuffix!1216 testedP!183 testedSuffix!143 testedP!183 lt!1001751 lt!1001738))))

(declare-fun getSuffix!1318 (List!32676 List!32676) List!32676)

(assert (=> b!2802065 (= lt!1001751 (getSuffix!1318 lt!1001738 testedP!183))))

(declare-fun b!2802066 () Bool)

(assert (=> b!2802066 (= e!1770694 e!1770687)))

(declare-fun b!2802067 () Bool)

(declare-fun tp!893097 () Bool)

(declare-fun inv!44248 (Conc!10084) Bool)

(assert (=> b!2802067 (= e!1770677 (and (inv!44248 (c!454305 totalInput!758)) tp!893097))))

(declare-fun b!2802068 () Bool)

(assert (=> b!2802068 (= e!1770682 e!1770695)))

(declare-fun res!1167591 () Bool)

(assert (=> b!2802068 (=> res!1167591 e!1770695)))

(assert (=> b!2802068 (= res!1167591 (>= lt!1001736 lt!1001728))))

(declare-fun lt!1001732 () Unit!46687)

(assert (=> b!2802068 (= lt!1001732 e!1770689)))

(declare-fun c!454303 () Bool)

(assert (=> b!2802068 (= c!454303 (= lt!1001736 lt!1001728))))

(assert (=> b!2802068 (<= lt!1001736 (size!25436 lt!1001738))))

(declare-fun lt!1001731 () Unit!46687)

(declare-fun lemmaIsPrefixThenSmallerEqSize!300 (List!32676 List!32676) Unit!46687)

(assert (=> b!2802068 (= lt!1001731 (lemmaIsPrefixThenSmallerEqSize!300 testedP!183 lt!1001738))))

(declare-fun b!2802069 () Bool)

(declare-fun res!1167593 () Bool)

(assert (=> b!2802069 (=> res!1167593 e!1770670)))

(assert (=> b!2802069 (= res!1167593 (not (= (size!25438 (_1!19684 lt!1001741)) testedPSize!143)))))

(declare-fun mapNonEmpty!18386 () Bool)

(declare-fun tp!893103 () Bool)

(declare-fun tp!893099 () Bool)

(assert (=> mapNonEmpty!18386 (= mapRes!18385 (and tp!893103 tp!893099))))

(declare-fun mapRest!18386 () (Array (_ BitVec 32) List!32675))

(declare-fun mapValue!18385 () List!32675)

(declare-fun mapKey!18385 () (_ BitVec 32))

(assert (=> mapNonEmpty!18386 (= (arr!6405 (_values!4325 (v!34177 (underlying!8291 (v!34178 (underlying!8292 (cache!4093 cacheDown!1009))))))) (store mapRest!18386 mapKey!18385 mapValue!18385))))

(declare-fun b!2802070 () Bool)

(declare-fun lt!1001745 () MutLongMap!4044)

(assert (=> b!2802070 (= e!1770681 (and e!1770674 ((_ is LongMap!4044) lt!1001745)))))

(assert (=> b!2802070 (= lt!1001745 (v!34178 (underlying!8292 (cache!4093 cacheDown!1009))))))

(assert (= (and start!270980 res!1167585) b!2802051))

(assert (= (and b!2802051 res!1167586) b!2802060))

(assert (= (and b!2802060 res!1167582) b!2802052))

(assert (= (and b!2802052 res!1167592) b!2802063))

(assert (= (and b!2802063 res!1167581) b!2802040))

(assert (= (and b!2802040 (not res!1167588)) b!2802065))

(assert (= (and b!2802065 (not res!1167589)) b!2802047))

(assert (= (and b!2802047 (not res!1167590)) b!2802049))

(assert (= (and b!2802049 (not res!1167587)) b!2802069))

(assert (= (and b!2802069 (not res!1167593)) b!2802064))

(assert (= (and b!2802064 (not res!1167583)) b!2802068))

(assert (= (and b!2802068 c!454303) b!2802045))

(assert (= (and b!2802068 (not c!454303)) b!2802057))

(assert (= (and b!2802068 (not res!1167591)) b!2802041))

(assert (= (and b!2802041 (not res!1167584)) b!2802062))

(assert (= start!270980 b!2802067))

(assert (= (and start!270980 condSetEmpty!24588) setIsEmpty!24588))

(assert (= (and start!270980 (not condSetEmpty!24588)) setNonEmpty!24588))

(assert (= setNonEmpty!24588 b!2802039))

(assert (= (and start!270980 ((_ is Cons!32576) testedP!183)) b!2802042))

(assert (= (and start!270980 ((_ is Cons!32576) testedSuffix!143)) b!2802055))

(assert (= (and b!2802038 condMapEmpty!18385) mapIsEmpty!18386))

(assert (= (and b!2802038 (not condMapEmpty!18385)) mapNonEmpty!18386))

(assert (= b!2802044 b!2802038))

(assert (= b!2802043 b!2802044))

(assert (= b!2802050 b!2802043))

(assert (= (and b!2802070 ((_ is LongMap!4044) (v!34178 (underlying!8292 (cache!4093 cacheDown!1009))))) b!2802050))

(assert (= b!2802048 b!2802070))

(assert (= (and b!2802059 ((_ is HashMap!3950) (cache!4093 cacheDown!1009))) b!2802048))

(assert (= start!270980 b!2802059))

(assert (= (and b!2802056 condMapEmpty!18386) mapIsEmpty!18385))

(assert (= (and b!2802056 (not condMapEmpty!18386)) mapNonEmpty!18385))

(assert (= b!2802054 b!2802056))

(assert (= b!2802046 b!2802054))

(assert (= b!2802053 b!2802046))

(assert (= (and b!2802061 ((_ is LongMap!4045) (v!34180 (underlying!8294 (cache!4094 cacheUp!890))))) b!2802053))

(assert (= b!2802058 b!2802061))

(assert (= (and b!2802066 ((_ is HashMap!3951) (cache!4094 cacheUp!890))) b!2802058))

(assert (= start!270980 b!2802066))

(declare-fun m!3231661 () Bool)

(assert (=> setNonEmpty!24588 m!3231661))

(declare-fun m!3231663 () Bool)

(assert (=> mapNonEmpty!18385 m!3231663))

(declare-fun m!3231665 () Bool)

(assert (=> b!2802052 m!3231665))

(declare-fun m!3231667 () Bool)

(assert (=> b!2802060 m!3231667))

(declare-fun m!3231669 () Bool)

(assert (=> b!2802063 m!3231669))

(declare-fun m!3231671 () Bool)

(assert (=> b!2802045 m!3231671))

(declare-fun m!3231673 () Bool)

(assert (=> b!2802045 m!3231673))

(declare-fun m!3231675 () Bool)

(assert (=> b!2802045 m!3231675))

(declare-fun m!3231677 () Bool)

(assert (=> b!2802064 m!3231677))

(declare-fun m!3231679 () Bool)

(assert (=> b!2802064 m!3231679))

(declare-fun m!3231681 () Bool)

(assert (=> b!2802064 m!3231681))

(declare-fun m!3231683 () Bool)

(assert (=> b!2802064 m!3231683))

(declare-fun m!3231685 () Bool)

(assert (=> b!2802064 m!3231685))

(declare-fun m!3231687 () Bool)

(assert (=> b!2802064 m!3231687))

(declare-fun m!3231689 () Bool)

(assert (=> b!2802064 m!3231689))

(assert (=> b!2802064 m!3231679))

(declare-fun m!3231691 () Bool)

(assert (=> b!2802040 m!3231691))

(declare-fun m!3231693 () Bool)

(assert (=> b!2802040 m!3231693))

(declare-fun m!3231695 () Bool)

(assert (=> b!2802040 m!3231695))

(declare-fun m!3231697 () Bool)

(assert (=> b!2802069 m!3231697))

(declare-fun m!3231699 () Bool)

(assert (=> b!2802044 m!3231699))

(declare-fun m!3231701 () Bool)

(assert (=> b!2802044 m!3231701))

(declare-fun m!3231703 () Bool)

(assert (=> b!2802054 m!3231703))

(declare-fun m!3231705 () Bool)

(assert (=> b!2802054 m!3231705))

(declare-fun m!3231707 () Bool)

(assert (=> start!270980 m!3231707))

(declare-fun m!3231709 () Bool)

(assert (=> start!270980 m!3231709))

(declare-fun m!3231711 () Bool)

(assert (=> start!270980 m!3231711))

(declare-fun m!3231713 () Bool)

(assert (=> start!270980 m!3231713))

(declare-fun m!3231715 () Bool)

(assert (=> start!270980 m!3231715))

(declare-fun m!3231717 () Bool)

(assert (=> mapNonEmpty!18386 m!3231717))

(declare-fun m!3231719 () Bool)

(assert (=> b!2802065 m!3231719))

(declare-fun m!3231721 () Bool)

(assert (=> b!2802065 m!3231721))

(declare-fun m!3231723 () Bool)

(assert (=> b!2802065 m!3231723))

(declare-fun m!3231725 () Bool)

(assert (=> b!2802051 m!3231725))

(declare-fun m!3231727 () Bool)

(assert (=> b!2802062 m!3231727))

(declare-fun m!3231729 () Bool)

(assert (=> b!2802062 m!3231729))

(declare-fun m!3231731 () Bool)

(assert (=> b!2802041 m!3231731))

(declare-fun m!3231733 () Bool)

(assert (=> b!2802041 m!3231733))

(declare-fun m!3231735 () Bool)

(assert (=> b!2802041 m!3231735))

(declare-fun m!3231737 () Bool)

(assert (=> b!2802041 m!3231737))

(declare-fun m!3231739 () Bool)

(assert (=> b!2802041 m!3231739))

(declare-fun m!3231741 () Bool)

(assert (=> b!2802041 m!3231741))

(assert (=> b!2802041 m!3231739))

(declare-fun m!3231743 () Bool)

(assert (=> b!2802041 m!3231743))

(declare-fun m!3231745 () Bool)

(assert (=> b!2802041 m!3231745))

(declare-fun m!3231747 () Bool)

(assert (=> b!2802041 m!3231747))

(declare-fun m!3231749 () Bool)

(assert (=> b!2802049 m!3231749))

(declare-fun m!3231751 () Bool)

(assert (=> b!2802049 m!3231751))

(declare-fun m!3231753 () Bool)

(assert (=> b!2802049 m!3231753))

(declare-fun m!3231755 () Bool)

(assert (=> b!2802049 m!3231755))

(declare-fun m!3231757 () Bool)

(assert (=> b!2802068 m!3231757))

(declare-fun m!3231759 () Bool)

(assert (=> b!2802068 m!3231759))

(declare-fun m!3231761 () Bool)

(assert (=> b!2802067 m!3231761))

(check-sat (not b!2802051) b_and!204203 (not b_next!80169) (not b!2802064) (not b!2802065) (not b!2802044) (not b!2802049) (not b!2802063) (not b!2802062) (not start!270980) (not setNonEmpty!24588) (not b!2802039) b_and!204199 (not b!2802069) (not b!2802068) (not b!2802040) (not b_next!80165) (not b!2802056) tp_is_empty!14267 (not b!2802052) (not b!2802038) b_and!204201 (not b!2802041) (not mapNonEmpty!18386) (not b!2802060) (not b_next!80167) b_and!204205 (not b!2802042) (not b!2802054) (not b!2802067) (not b!2802045) (not b!2802055) (not mapNonEmpty!18385) (not b_next!80171))
(check-sat b_and!204199 (not b_next!80165) b_and!204201 (not b_next!80167) b_and!204203 (not b_next!80169) b_and!204205 (not b_next!80171))
