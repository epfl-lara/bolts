; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269300 () Bool)

(assert start!269300)

(declare-fun b!2786858 () Bool)

(declare-fun b_free!78821 () Bool)

(declare-fun b_next!79525 () Bool)

(assert (=> b!2786858 (= b_free!78821 (not b_next!79525))))

(declare-fun tp!883824 () Bool)

(declare-fun b_and!203559 () Bool)

(assert (=> b!2786858 (= tp!883824 b_and!203559)))

(declare-fun b!2786853 () Bool)

(declare-fun b_free!78823 () Bool)

(declare-fun b_next!79527 () Bool)

(assert (=> b!2786853 (= b_free!78823 (not b_next!79527))))

(declare-fun tp!883827 () Bool)

(declare-fun b_and!203561 () Bool)

(assert (=> b!2786853 (= tp!883827 b_and!203561)))

(declare-fun b!2786856 () Bool)

(declare-fun b_free!78825 () Bool)

(declare-fun b_next!79529 () Bool)

(assert (=> b!2786856 (= b_free!78825 (not b_next!79529))))

(declare-fun tp!883826 () Bool)

(declare-fun b_and!203563 () Bool)

(assert (=> b!2786856 (= tp!883826 b_and!203563)))

(declare-fun b!2786841 () Bool)

(declare-fun b_free!78827 () Bool)

(declare-fun b_next!79531 () Bool)

(assert (=> b!2786841 (= b_free!78827 (not b_next!79531))))

(declare-fun tp!883829 () Bool)

(declare-fun b_and!203565 () Bool)

(assert (=> b!2786841 (= tp!883829 b_and!203565)))

(declare-fun tp!883818 () Bool)

(declare-fun e!1758804 () Bool)

(declare-fun setRes!23593 () Bool)

(declare-fun setNonEmpty!23593 () Bool)

(declare-datatypes ((C!16456 0))(
  ( (C!16457 (val!10162 Int)) )
))
(declare-datatypes ((Regex!8149 0))(
  ( (ElementMatch!8149 (c!452569 C!16456)) (Concat!13237 (regOne!16810 Regex!8149) (regTwo!16810 Regex!8149)) (EmptyExpr!8149) (Star!8149 (reg!8478 Regex!8149)) (EmptyLang!8149) (Union!8149 (regOne!16811 Regex!8149) (regTwo!16811 Regex!8149)) )
))
(declare-datatypes ((List!32354 0))(
  ( (Nil!32254) (Cons!32254 (h!37674 Regex!8149) (t!228496 List!32354)) )
))
(declare-datatypes ((Context!4734 0))(
  ( (Context!4735 (exprs!2867 List!32354)) )
))
(declare-fun setElem!23593 () Context!4734)

(declare-fun inv!43821 (Context!4734) Bool)

(assert (=> setNonEmpty!23593 (= setRes!23593 (and tp!883818 (inv!43821 setElem!23593) e!1758804))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3684 () (InoxSet Context!4734))

(declare-fun setRest!23593 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23593 (= z!3684 ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23593 true) setRest!23593))))

(declare-fun mapNonEmpty!17765 () Bool)

(declare-fun mapRes!17765 () Bool)

(declare-fun tp!883822 () Bool)

(declare-fun tp!883834 () Bool)

(assert (=> mapNonEmpty!17765 (= mapRes!17765 (and tp!883822 tp!883834))))

(declare-datatypes ((Hashable!3812 0))(
  ( (HashableExt!3811 (__x!21338 Int)) )
))
(declare-datatypes ((tuple2!32614 0))(
  ( (tuple2!32615 (_1!19283 Context!4734) (_2!19283 C!16456)) )
))
(declare-datatypes ((tuple2!32616 0))(
  ( (tuple2!32617 (_1!19284 tuple2!32614) (_2!19284 (InoxSet Context!4734))) )
))
(declare-datatypes ((List!32355 0))(
  ( (Nil!32255) (Cons!32255 (h!37675 tuple2!32616) (t!228497 List!32355)) )
))
(declare-datatypes ((array!13859 0))(
  ( (array!13860 (arr!6178 (Array (_ BitVec 32) List!32355)) (size!25076 (_ BitVec 32))) )
))
(declare-datatypes ((array!13861 0))(
  ( (array!13862 (arr!6179 (Array (_ BitVec 32) (_ BitVec 64))) (size!25077 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7792 0))(
  ( (LongMapFixedSize!7793 (defaultEntry!4281 Int) (mask!9707 (_ BitVec 32)) (extraKeys!4145 (_ BitVec 32)) (zeroValue!4155 List!32355) (minValue!4155 List!32355) (_size!7835 (_ BitVec 32)) (_keys!4196 array!13861) (_values!4177 array!13859) (_vacant!3957 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15393 0))(
  ( (Cell!15394 (v!33859 LongMapFixedSize!7792)) )
))
(declare-datatypes ((MutLongMap!3896 0))(
  ( (LongMap!3896 (underlying!7995 Cell!15393)) (MutLongMapExt!3895 (__x!21339 Int)) )
))
(declare-datatypes ((Cell!15395 0))(
  ( (Cell!15396 (v!33860 MutLongMap!3896)) )
))
(declare-datatypes ((MutableMap!3802 0))(
  ( (MutableMapExt!3801 (__x!21340 Int)) (HashMap!3802 (underlying!7996 Cell!15395) (hashF!5844 Hashable!3812) (_size!7836 (_ BitVec 32)) (defaultValue!3973 Int)) )
))
(declare-datatypes ((CacheUp!2508 0))(
  ( (CacheUp!2509 (cache!3945 MutableMap!3802)) )
))
(declare-fun cacheUp!890 () CacheUp!2508)

(declare-fun mapKey!17765 () (_ BitVec 32))

(declare-fun mapRest!17765 () (Array (_ BitVec 32) List!32355))

(declare-fun mapValue!17766 () List!32355)

(assert (=> mapNonEmpty!17765 (= (arr!6178 (_values!4177 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890))))))) (store mapRest!17765 mapKey!17765 mapValue!17766))))

(declare-fun b!2786835 () Bool)

(declare-fun e!1758791 () Bool)

(declare-fun e!1758818 () Bool)

(assert (=> b!2786835 (= e!1758791 e!1758818)))

(declare-fun b!2786836 () Bool)

(declare-fun e!1758797 () Bool)

(declare-fun e!1758792 () Bool)

(assert (=> b!2786836 (= e!1758797 e!1758792)))

(declare-fun res!1162955 () Bool)

(assert (=> b!2786836 (=> res!1162955 e!1758792)))

(declare-fun lt!995673 () C!16456)

(declare-datatypes ((List!32356 0))(
  ( (Nil!32256) (Cons!32256 (h!37676 C!16456) (t!228498 List!32356)) )
))
(declare-fun testedSuffix!143 () List!32356)

(declare-fun head!6171 (List!32356) C!16456)

(assert (=> b!2786836 (= res!1162955 (not (= lt!995673 (head!6171 testedSuffix!143))))))

(declare-datatypes ((IArray!20043 0))(
  ( (IArray!20044 (innerList!10079 List!32356)) )
))
(declare-datatypes ((Conc!10019 0))(
  ( (Node!10019 (left!24485 Conc!10019) (right!24815 Conc!10019) (csize!20268 Int) (cheight!10230 Int)) (Leaf!15262 (xs!13130 IArray!20043) (csize!20269 Int)) (Empty!10019) )
))
(declare-datatypes ((BalanceConc!19652 0))(
  ( (BalanceConc!19653 (c!452570 Conc!10019)) )
))
(declare-fun totalInput!758 () BalanceConc!19652)

(declare-fun testedPSize!143 () Int)

(declare-fun apply!7546 (BalanceConc!19652 Int) C!16456)

(assert (=> b!2786836 (= lt!995673 (apply!7546 totalInput!758 testedPSize!143))))

(declare-fun lt!995676 () List!32356)

(declare-fun drop!1725 (List!32356 Int) List!32356)

(declare-fun apply!7547 (List!32356 Int) C!16456)

(assert (=> b!2786836 (= (head!6171 (drop!1725 lt!995676 testedPSize!143)) (apply!7547 lt!995676 testedPSize!143))))

(declare-datatypes ((Unit!46475 0))(
  ( (Unit!46476) )
))
(declare-fun lt!995675 () Unit!46475)

(declare-fun lemmaDropApply!931 (List!32356 Int) Unit!46475)

(assert (=> b!2786836 (= lt!995675 (lemmaDropApply!931 lt!995676 testedPSize!143))))

(declare-fun lt!995674 () List!32356)

(declare-fun testedP!183 () List!32356)

(declare-fun lt!995670 () List!32356)

(assert (=> b!2786836 (not (or (not (= lt!995670 testedP!183)) (not (= lt!995674 testedSuffix!143))))))

(declare-fun lt!995681 () Unit!46475)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!358 (List!32356 List!32356 List!32356 List!32356) Unit!46475)

(assert (=> b!2786836 (= lt!995681 (lemmaConcatSameAndSameSizesThenSameLists!358 lt!995670 lt!995674 testedP!183 testedSuffix!143))))

(declare-fun b!2786837 () Bool)

(declare-fun e!1758798 () Bool)

(declare-fun e!1758809 () Bool)

(assert (=> b!2786837 (= e!1758798 e!1758809)))

(declare-fun b!2786838 () Bool)

(declare-fun e!1758815 () Bool)

(declare-fun e!1758799 () Bool)

(assert (=> b!2786838 (= e!1758815 e!1758799)))

(declare-fun res!1162962 () Bool)

(assert (=> b!2786838 (=> (not res!1162962) (not e!1758799))))

(declare-fun totalInputSize!205 () Int)

(declare-fun lt!995669 () Int)

(assert (=> b!2786838 (= res!1162962 (= totalInputSize!205 lt!995669))))

(declare-fun size!25078 (BalanceConc!19652) Int)

(assert (=> b!2786838 (= lt!995669 (size!25078 totalInput!758))))

(declare-fun b!2786839 () Bool)

(declare-fun e!1758796 () Bool)

(declare-fun tp!883832 () Bool)

(assert (=> b!2786839 (= e!1758796 (and tp!883832 mapRes!17765))))

(declare-fun condMapEmpty!17766 () Bool)

(declare-fun mapDefault!17766 () List!32355)

(assert (=> b!2786839 (= condMapEmpty!17766 (= (arr!6178 (_values!4177 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32355)) mapDefault!17766)))))

(declare-fun b!2786840 () Bool)

(declare-fun e!1758801 () Bool)

(declare-fun e!1758802 () Bool)

(assert (=> b!2786840 (= e!1758801 e!1758802)))

(declare-fun res!1162954 () Bool)

(assert (=> b!2786840 (=> res!1162954 e!1758802)))

(declare-fun lostCauseZipper!466 ((InoxSet Context!4734)) Bool)

(assert (=> b!2786840 (= res!1162954 (lostCauseZipper!466 z!3684))))

(declare-fun lt!995678 () List!32356)

(assert (=> b!2786840 (and (= testedSuffix!143 lt!995678) (= lt!995678 testedSuffix!143))))

(declare-fun lt!995682 () Unit!46475)

(declare-fun lemmaSamePrefixThenSameSuffix!1167 (List!32356 List!32356 List!32356 List!32356 List!32356) Unit!46475)

(assert (=> b!2786840 (= lt!995682 (lemmaSamePrefixThenSameSuffix!1167 testedP!183 testedSuffix!143 testedP!183 lt!995678 lt!995676))))

(declare-fun getSuffix!1266 (List!32356 List!32356) List!32356)

(assert (=> b!2786840 (= lt!995678 (getSuffix!1266 lt!995676 testedP!183))))

(declare-fun b!2786842 () Bool)

(declare-fun e!1758813 () Bool)

(declare-fun e!1758805 () Bool)

(assert (=> b!2786842 (= e!1758813 e!1758805)))

(declare-fun res!1162961 () Bool)

(assert (=> b!2786842 (=> res!1162961 e!1758805)))

(declare-fun nullableZipper!641 ((InoxSet Context!4734)) Bool)

(assert (=> b!2786842 (= res!1162961 (not (nullableZipper!641 z!3684)))))

(declare-fun lt!995680 () List!32356)

(declare-fun ++!7968 (List!32356 List!32356) List!32356)

(assert (=> b!2786842 (= (++!7968 (++!7968 testedP!183 (Cons!32256 lt!995673 Nil!32256)) lt!995680) lt!995676)))

(declare-fun lt!995671 () Unit!46475)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!877 (List!32356 C!16456 List!32356 List!32356) Unit!46475)

(assert (=> b!2786842 (= lt!995671 (lemmaMoveElementToOtherListKeepsConcatEq!877 testedP!183 lt!995673 lt!995680 lt!995676))))

(declare-fun tail!4403 (List!32356) List!32356)

(assert (=> b!2786842 (= lt!995680 (tail!4403 testedSuffix!143))))

(declare-fun isPrefix!2588 (List!32356 List!32356) Bool)

(assert (=> b!2786842 (isPrefix!2588 (++!7968 testedP!183 (Cons!32256 (head!6171 lt!995678) Nil!32256)) lt!995676)))

(declare-fun lt!995679 () Unit!46475)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!468 (List!32356 List!32356) Unit!46475)

(assert (=> b!2786842 (= lt!995679 (lemmaAddHeadSuffixToPrefixStillPrefix!468 testedP!183 lt!995676))))

(declare-fun b!2786843 () Bool)

(declare-fun e!1758789 () Bool)

(declare-fun lt!995685 () MutLongMap!3896)

(get-info :version)

(assert (=> b!2786843 (= e!1758789 (and e!1758798 ((_ is LongMap!3896) lt!995685)))))

(assert (=> b!2786843 (= lt!995685 (v!33860 (underlying!7996 (cache!3945 cacheUp!890))))))

(declare-fun b!2786844 () Bool)

(declare-fun e!1758800 () Bool)

(assert (=> b!2786844 (= e!1758818 e!1758800)))

(declare-fun mapIsEmpty!17765 () Bool)

(declare-fun mapRes!17766 () Bool)

(assert (=> mapIsEmpty!17765 mapRes!17766))

(declare-fun b!2786845 () Bool)

(declare-fun tp!883833 () Bool)

(assert (=> b!2786845 (= e!1758804 tp!883833)))

(declare-fun b!2786846 () Bool)

(assert (=> b!2786846 (= e!1758805 (and (<= 0 testedPSize!143) (< testedPSize!143 lt!995669)))))

(declare-fun b!2786847 () Bool)

(declare-fun e!1758793 () Bool)

(declare-fun e!1758814 () Bool)

(assert (=> b!2786847 (= e!1758793 e!1758814)))

(declare-fun b!2786848 () Bool)

(declare-fun e!1758795 () Unit!46475)

(declare-fun Unit!46477 () Unit!46475)

(assert (=> b!2786848 (= e!1758795 Unit!46477)))

(declare-fun b!2786849 () Bool)

(declare-fun e!1758803 () Bool)

(declare-fun tp_is_empty!14111 () Bool)

(declare-fun tp!883835 () Bool)

(assert (=> b!2786849 (= e!1758803 (and tp_is_empty!14111 tp!883835))))

(declare-fun b!2786850 () Bool)

(declare-fun res!1162956 () Bool)

(assert (=> b!2786850 (=> (not res!1162956) (not e!1758799))))

(declare-fun valid!3045 (CacheUp!2508) Bool)

(assert (=> b!2786850 (= res!1162956 (valid!3045 cacheUp!890))))

(declare-fun b!2786851 () Bool)

(declare-fun e!1758810 () Bool)

(declare-datatypes ((tuple3!5012 0))(
  ( (tuple3!5013 (_1!19285 Regex!8149) (_2!19285 Context!4734) (_3!2976 C!16456)) )
))
(declare-datatypes ((tuple2!32618 0))(
  ( (tuple2!32619 (_1!19286 tuple3!5012) (_2!19286 (InoxSet Context!4734))) )
))
(declare-datatypes ((List!32357 0))(
  ( (Nil!32257) (Cons!32257 (h!37677 tuple2!32618) (t!228499 List!32357)) )
))
(declare-datatypes ((array!13863 0))(
  ( (array!13864 (arr!6180 (Array (_ BitVec 32) List!32357)) (size!25079 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7794 0))(
  ( (LongMapFixedSize!7795 (defaultEntry!4282 Int) (mask!9708 (_ BitVec 32)) (extraKeys!4146 (_ BitVec 32)) (zeroValue!4156 List!32357) (minValue!4156 List!32357) (_size!7837 (_ BitVec 32)) (_keys!4197 array!13861) (_values!4178 array!13863) (_vacant!3958 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15397 0))(
  ( (Cell!15398 (v!33861 LongMapFixedSize!7794)) )
))
(declare-datatypes ((MutLongMap!3897 0))(
  ( (LongMap!3897 (underlying!7997 Cell!15397)) (MutLongMapExt!3896 (__x!21341 Int)) )
))
(declare-fun lt!995665 () MutLongMap!3897)

(assert (=> b!2786851 (= e!1758810 (and e!1758791 ((_ is LongMap!3897) lt!995665)))))

(declare-datatypes ((Cell!15399 0))(
  ( (Cell!15400 (v!33862 MutLongMap!3897)) )
))
(declare-datatypes ((Hashable!3813 0))(
  ( (HashableExt!3812 (__x!21342 Int)) )
))
(declare-datatypes ((MutableMap!3803 0))(
  ( (MutableMapExt!3802 (__x!21343 Int)) (HashMap!3803 (underlying!7998 Cell!15399) (hashF!5845 Hashable!3813) (_size!7838 (_ BitVec 32)) (defaultValue!3974 Int)) )
))
(declare-datatypes ((CacheDown!2628 0))(
  ( (CacheDown!2629 (cache!3946 MutableMap!3803)) )
))
(declare-fun cacheDown!1009 () CacheDown!2628)

(assert (=> b!2786851 (= lt!995665 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009))))))

(declare-fun b!2786852 () Bool)

(declare-fun e!1758807 () Bool)

(assert (=> b!2786852 (= e!1758809 e!1758807)))

(declare-fun e!1758790 () Bool)

(assert (=> b!2786853 (= e!1758790 (and e!1758810 tp!883827))))

(declare-fun b!2786854 () Bool)

(declare-fun res!1162960 () Bool)

(assert (=> b!2786854 (=> res!1162960 e!1758797)))

(declare-datatypes ((tuple2!32620 0))(
  ( (tuple2!32621 (_1!19287 BalanceConc!19652) (_2!19287 BalanceConc!19652)) )
))
(declare-fun lt!995668 () tuple2!32620)

(assert (=> b!2786854 (= res!1162960 (not (= (size!25078 (_1!19287 lt!995668)) testedPSize!143)))))

(declare-fun b!2786855 () Bool)

(assert (=> b!2786855 (= e!1758802 e!1758797)))

(declare-fun res!1162965 () Bool)

(assert (=> b!2786855 (=> res!1162965 e!1758797)))

(assert (=> b!2786855 (= res!1162965 (not (= (++!7968 lt!995670 lt!995674) lt!995676)))))

(declare-fun list!12143 (BalanceConc!19652) List!32356)

(assert (=> b!2786855 (= lt!995674 (list!12143 (_2!19287 lt!995668)))))

(assert (=> b!2786855 (= lt!995670 (list!12143 (_1!19287 lt!995668)))))

(declare-fun splitAt!146 (BalanceConc!19652 Int) tuple2!32620)

(assert (=> b!2786855 (= lt!995668 (splitAt!146 totalInput!758 testedPSize!143))))

(declare-fun tp!883820 () Bool)

(declare-fun e!1758808 () Bool)

(declare-fun tp!883830 () Bool)

(declare-fun array_inv!4423 (array!13861) Bool)

(declare-fun array_inv!4424 (array!13863) Bool)

(assert (=> b!2786856 (= e!1758800 (and tp!883826 tp!883830 tp!883820 (array_inv!4423 (_keys!4197 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009))))))) (array_inv!4424 (_values!4178 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009))))))) e!1758808))))

(declare-fun b!2786857 () Bool)

(assert (=> b!2786857 (= e!1758799 (not e!1758801))))

(declare-fun res!1162958 () Bool)

(assert (=> b!2786857 (=> res!1162958 e!1758801)))

(assert (=> b!2786857 (= res!1162958 (not (isPrefix!2588 testedP!183 lt!995676)))))

(declare-fun lt!995667 () List!32356)

(assert (=> b!2786857 (isPrefix!2588 testedP!183 lt!995667)))

(declare-fun lt!995672 () Unit!46475)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1698 (List!32356 List!32356) Unit!46475)

(assert (=> b!2786857 (= lt!995672 (lemmaConcatTwoListThenFirstIsPrefix!1698 testedP!183 testedSuffix!143))))

(assert (=> b!2786858 (= e!1758814 (and e!1758789 tp!883824))))

(declare-fun b!2786859 () Bool)

(declare-fun e!1758794 () Bool)

(assert (=> b!2786859 (= e!1758794 e!1758815)))

(declare-fun res!1162957 () Bool)

(assert (=> b!2786859 (=> (not res!1162957) (not e!1758815))))

(declare-fun lt!995684 () Int)

(assert (=> b!2786859 (= res!1162957 (= testedPSize!143 lt!995684))))

(declare-fun size!25080 (List!32356) Int)

(assert (=> b!2786859 (= lt!995684 (size!25080 testedP!183))))

(declare-fun b!2786860 () Bool)

(assert (=> b!2786860 (= e!1758792 e!1758813)))

(declare-fun res!1162953 () Bool)

(assert (=> b!2786860 (=> res!1162953 e!1758813)))

(assert (=> b!2786860 (= res!1162953 (>= lt!995684 lt!995669))))

(declare-fun lt!995664 () Unit!46475)

(assert (=> b!2786860 (= lt!995664 e!1758795)))

(declare-fun c!452568 () Bool)

(assert (=> b!2786860 (= c!452568 (= lt!995684 lt!995669))))

(assert (=> b!2786860 (<= lt!995684 (size!25080 lt!995676))))

(declare-fun lt!995683 () Unit!46475)

(declare-fun lemmaIsPrefixThenSmallerEqSize!275 (List!32356 List!32356) Unit!46475)

(assert (=> b!2786860 (= lt!995683 (lemmaIsPrefixThenSmallerEqSize!275 testedP!183 lt!995676))))

(declare-fun b!2786861 () Bool)

(declare-fun tp!883817 () Bool)

(assert (=> b!2786861 (= e!1758808 (and tp!883817 mapRes!17766))))

(declare-fun condMapEmpty!17765 () Bool)

(declare-fun mapDefault!17765 () List!32357)

(assert (=> b!2786861 (= condMapEmpty!17765 (= (arr!6180 (_values!4178 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32357)) mapDefault!17765)))))

(declare-fun b!2786862 () Bool)

(declare-fun res!1162964 () Bool)

(assert (=> b!2786862 (=> res!1162964 e!1758802)))

(assert (=> b!2786862 (= res!1162964 (= testedPSize!143 totalInputSize!205))))

(declare-fun mapIsEmpty!17766 () Bool)

(assert (=> mapIsEmpty!17766 mapRes!17765))

(declare-fun b!2786863 () Bool)

(declare-fun e!1758812 () Bool)

(declare-fun tp!883819 () Bool)

(assert (=> b!2786863 (= e!1758812 (and tp_is_empty!14111 tp!883819))))

(declare-fun setIsEmpty!23593 () Bool)

(assert (=> setIsEmpty!23593 setRes!23593))

(declare-fun res!1162963 () Bool)

(assert (=> start!269300 (=> (not res!1162963) (not e!1758794))))

(assert (=> start!269300 (= res!1162963 (= lt!995667 lt!995676))))

(assert (=> start!269300 (= lt!995676 (list!12143 totalInput!758))))

(assert (=> start!269300 (= lt!995667 (++!7968 testedP!183 testedSuffix!143))))

(assert (=> start!269300 e!1758794))

(declare-fun e!1758816 () Bool)

(declare-fun inv!43822 (BalanceConc!19652) Bool)

(assert (=> start!269300 (and (inv!43822 totalInput!758) e!1758816)))

(declare-fun condSetEmpty!23593 () Bool)

(assert (=> start!269300 (= condSetEmpty!23593 (= z!3684 ((as const (Array Context!4734 Bool)) false)))))

(assert (=> start!269300 setRes!23593))

(assert (=> start!269300 true))

(assert (=> start!269300 e!1758803))

(assert (=> start!269300 e!1758812))

(declare-fun e!1758806 () Bool)

(declare-fun inv!43823 (CacheDown!2628) Bool)

(assert (=> start!269300 (and (inv!43823 cacheDown!1009) e!1758806)))

(declare-fun inv!43824 (CacheUp!2508) Bool)

(assert (=> start!269300 (and (inv!43824 cacheUp!890) e!1758793)))

(declare-fun tp!883821 () Bool)

(declare-fun tp!883828 () Bool)

(declare-fun array_inv!4425 (array!13859) Bool)

(assert (=> b!2786841 (= e!1758807 (and tp!883829 tp!883821 tp!883828 (array_inv!4423 (_keys!4196 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890))))))) (array_inv!4425 (_values!4177 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890))))))) e!1758796))))

(declare-fun b!2786864 () Bool)

(declare-fun Unit!46478 () Unit!46475)

(assert (=> b!2786864 (= e!1758795 Unit!46478)))

(declare-fun lt!995677 () Unit!46475)

(declare-fun lemmaIsPrefixRefl!1692 (List!32356 List!32356) Unit!46475)

(assert (=> b!2786864 (= lt!995677 (lemmaIsPrefixRefl!1692 lt!995676 lt!995676))))

(assert (=> b!2786864 (isPrefix!2588 lt!995676 lt!995676)))

(declare-fun lt!995666 () Unit!46475)

(declare-fun lemmaIsPrefixSameLengthThenSameList!472 (List!32356 List!32356 List!32356) Unit!46475)

(assert (=> b!2786864 (= lt!995666 (lemmaIsPrefixSameLengthThenSameList!472 lt!995676 testedP!183 lt!995676))))

(assert (=> b!2786864 false))

(declare-fun b!2786865 () Bool)

(declare-fun tp!883825 () Bool)

(declare-fun inv!43825 (Conc!10019) Bool)

(assert (=> b!2786865 (= e!1758816 (and (inv!43825 (c!452570 totalInput!758)) tp!883825))))

(declare-fun b!2786866 () Bool)

(declare-fun res!1162959 () Bool)

(assert (=> b!2786866 (=> (not res!1162959) (not e!1758799))))

(declare-fun valid!3046 (CacheDown!2628) Bool)

(assert (=> b!2786866 (= res!1162959 (valid!3046 cacheDown!1009))))

(declare-fun mapNonEmpty!17766 () Bool)

(declare-fun tp!883831 () Bool)

(declare-fun tp!883823 () Bool)

(assert (=> mapNonEmpty!17766 (= mapRes!17766 (and tp!883831 tp!883823))))

(declare-fun mapRest!17766 () (Array (_ BitVec 32) List!32357))

(declare-fun mapValue!17765 () List!32357)

(declare-fun mapKey!17766 () (_ BitVec 32))

(assert (=> mapNonEmpty!17766 (= (arr!6180 (_values!4178 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009))))))) (store mapRest!17766 mapKey!17766 mapValue!17765))))

(declare-fun b!2786867 () Bool)

(assert (=> b!2786867 (= e!1758806 e!1758790)))

(assert (= (and start!269300 res!1162963) b!2786859))

(assert (= (and b!2786859 res!1162957) b!2786838))

(assert (= (and b!2786838 res!1162962) b!2786850))

(assert (= (and b!2786850 res!1162956) b!2786866))

(assert (= (and b!2786866 res!1162959) b!2786857))

(assert (= (and b!2786857 (not res!1162958)) b!2786840))

(assert (= (and b!2786840 (not res!1162954)) b!2786862))

(assert (= (and b!2786862 (not res!1162964)) b!2786855))

(assert (= (and b!2786855 (not res!1162965)) b!2786854))

(assert (= (and b!2786854 (not res!1162960)) b!2786836))

(assert (= (and b!2786836 (not res!1162955)) b!2786860))

(assert (= (and b!2786860 c!452568) b!2786864))

(assert (= (and b!2786860 (not c!452568)) b!2786848))

(assert (= (and b!2786860 (not res!1162953)) b!2786842))

(assert (= (and b!2786842 (not res!1162961)) b!2786846))

(assert (= start!269300 b!2786865))

(assert (= (and start!269300 condSetEmpty!23593) setIsEmpty!23593))

(assert (= (and start!269300 (not condSetEmpty!23593)) setNonEmpty!23593))

(assert (= setNonEmpty!23593 b!2786845))

(assert (= (and start!269300 ((_ is Cons!32256) testedP!183)) b!2786849))

(assert (= (and start!269300 ((_ is Cons!32256) testedSuffix!143)) b!2786863))

(assert (= (and b!2786861 condMapEmpty!17765) mapIsEmpty!17765))

(assert (= (and b!2786861 (not condMapEmpty!17765)) mapNonEmpty!17766))

(assert (= b!2786856 b!2786861))

(assert (= b!2786844 b!2786856))

(assert (= b!2786835 b!2786844))

(assert (= (and b!2786851 ((_ is LongMap!3897) (v!33862 (underlying!7998 (cache!3946 cacheDown!1009))))) b!2786835))

(assert (= b!2786853 b!2786851))

(assert (= (and b!2786867 ((_ is HashMap!3803) (cache!3946 cacheDown!1009))) b!2786853))

(assert (= start!269300 b!2786867))

(assert (= (and b!2786839 condMapEmpty!17766) mapIsEmpty!17766))

(assert (= (and b!2786839 (not condMapEmpty!17766)) mapNonEmpty!17765))

(assert (= b!2786841 b!2786839))

(assert (= b!2786852 b!2786841))

(assert (= b!2786837 b!2786852))

(assert (= (and b!2786843 ((_ is LongMap!3896) (v!33860 (underlying!7996 (cache!3945 cacheUp!890))))) b!2786837))

(assert (= b!2786858 b!2786843))

(assert (= (and b!2786847 ((_ is HashMap!3802) (cache!3945 cacheUp!890))) b!2786858))

(assert (= start!269300 b!2786847))

(declare-fun m!3217157 () Bool)

(assert (=> b!2786840 m!3217157))

(declare-fun m!3217159 () Bool)

(assert (=> b!2786840 m!3217159))

(declare-fun m!3217161 () Bool)

(assert (=> b!2786840 m!3217161))

(declare-fun m!3217163 () Bool)

(assert (=> b!2786836 m!3217163))

(declare-fun m!3217165 () Bool)

(assert (=> b!2786836 m!3217165))

(declare-fun m!3217167 () Bool)

(assert (=> b!2786836 m!3217167))

(declare-fun m!3217169 () Bool)

(assert (=> b!2786836 m!3217169))

(declare-fun m!3217171 () Bool)

(assert (=> b!2786836 m!3217171))

(declare-fun m!3217173 () Bool)

(assert (=> b!2786836 m!3217173))

(assert (=> b!2786836 m!3217171))

(declare-fun m!3217175 () Bool)

(assert (=> b!2786836 m!3217175))

(declare-fun m!3217177 () Bool)

(assert (=> b!2786854 m!3217177))

(declare-fun m!3217179 () Bool)

(assert (=> b!2786841 m!3217179))

(declare-fun m!3217181 () Bool)

(assert (=> b!2786841 m!3217181))

(declare-fun m!3217183 () Bool)

(assert (=> start!269300 m!3217183))

(declare-fun m!3217185 () Bool)

(assert (=> start!269300 m!3217185))

(declare-fun m!3217187 () Bool)

(assert (=> start!269300 m!3217187))

(declare-fun m!3217189 () Bool)

(assert (=> start!269300 m!3217189))

(declare-fun m!3217191 () Bool)

(assert (=> start!269300 m!3217191))

(declare-fun m!3217193 () Bool)

(assert (=> mapNonEmpty!17766 m!3217193))

(declare-fun m!3217195 () Bool)

(assert (=> setNonEmpty!23593 m!3217195))

(declare-fun m!3217197 () Bool)

(assert (=> b!2786855 m!3217197))

(declare-fun m!3217199 () Bool)

(assert (=> b!2786855 m!3217199))

(declare-fun m!3217201 () Bool)

(assert (=> b!2786855 m!3217201))

(declare-fun m!3217203 () Bool)

(assert (=> b!2786855 m!3217203))

(declare-fun m!3217205 () Bool)

(assert (=> b!2786838 m!3217205))

(declare-fun m!3217207 () Bool)

(assert (=> mapNonEmpty!17765 m!3217207))

(declare-fun m!3217209 () Bool)

(assert (=> b!2786859 m!3217209))

(declare-fun m!3217211 () Bool)

(assert (=> b!2786850 m!3217211))

(declare-fun m!3217213 () Bool)

(assert (=> b!2786866 m!3217213))

(declare-fun m!3217215 () Bool)

(assert (=> b!2786842 m!3217215))

(declare-fun m!3217217 () Bool)

(assert (=> b!2786842 m!3217217))

(declare-fun m!3217219 () Bool)

(assert (=> b!2786842 m!3217219))

(declare-fun m!3217221 () Bool)

(assert (=> b!2786842 m!3217221))

(declare-fun m!3217223 () Bool)

(assert (=> b!2786842 m!3217223))

(declare-fun m!3217225 () Bool)

(assert (=> b!2786842 m!3217225))

(declare-fun m!3217227 () Bool)

(assert (=> b!2786842 m!3217227))

(assert (=> b!2786842 m!3217219))

(assert (=> b!2786842 m!3217217))

(declare-fun m!3217229 () Bool)

(assert (=> b!2786842 m!3217229))

(declare-fun m!3217231 () Bool)

(assert (=> b!2786842 m!3217231))

(declare-fun m!3217233 () Bool)

(assert (=> b!2786857 m!3217233))

(declare-fun m!3217235 () Bool)

(assert (=> b!2786857 m!3217235))

(declare-fun m!3217237 () Bool)

(assert (=> b!2786857 m!3217237))

(declare-fun m!3217239 () Bool)

(assert (=> b!2786864 m!3217239))

(declare-fun m!3217241 () Bool)

(assert (=> b!2786864 m!3217241))

(declare-fun m!3217243 () Bool)

(assert (=> b!2786864 m!3217243))

(declare-fun m!3217245 () Bool)

(assert (=> b!2786856 m!3217245))

(declare-fun m!3217247 () Bool)

(assert (=> b!2786856 m!3217247))

(declare-fun m!3217249 () Bool)

(assert (=> b!2786860 m!3217249))

(declare-fun m!3217251 () Bool)

(assert (=> b!2786860 m!3217251))

(declare-fun m!3217253 () Bool)

(assert (=> b!2786865 m!3217253))

(check-sat (not b!2786850) (not b!2786864) (not b!2786836) b_and!203559 b_and!203563 (not b_next!79531) (not b!2786838) (not b!2786859) (not start!269300) (not setNonEmpty!23593) (not b!2786857) (not b!2786863) (not mapNonEmpty!17766) (not b!2786841) (not b!2786840) b_and!203561 (not b!2786861) (not b!2786855) (not b!2786839) (not b!2786860) (not b!2786842) b_and!203565 (not b!2786845) (not b_next!79525) (not mapNonEmpty!17765) (not b_next!79529) (not b!2786849) (not b_next!79527) tp_is_empty!14111 (not b!2786866) (not b!2786856) (not b!2786865) (not b!2786854))
(check-sat b_and!203561 b_and!203559 b_and!203563 (not b_next!79531) b_and!203565 (not b_next!79525) (not b_next!79529) (not b_next!79527))
(get-model)

(declare-fun d!810709 () Bool)

(declare-fun lt!995688 () Int)

(assert (=> d!810709 (= lt!995688 (size!25080 (list!12143 totalInput!758)))))

(declare-fun size!25081 (Conc!10019) Int)

(assert (=> d!810709 (= lt!995688 (size!25081 (c!452570 totalInput!758)))))

(assert (=> d!810709 (= (size!25078 totalInput!758) lt!995688)))

(declare-fun bs!510940 () Bool)

(assert (= bs!510940 d!810709))

(assert (=> bs!510940 m!3217183))

(assert (=> bs!510940 m!3217183))

(declare-fun m!3217255 () Bool)

(assert (=> bs!510940 m!3217255))

(declare-fun m!3217257 () Bool)

(assert (=> bs!510940 m!3217257))

(assert (=> b!2786838 d!810709))

(declare-fun d!810711 () Bool)

(declare-fun lt!995691 () Int)

(assert (=> d!810711 (>= lt!995691 0)))

(declare-fun e!1758821 () Int)

(assert (=> d!810711 (= lt!995691 e!1758821)))

(declare-fun c!452573 () Bool)

(assert (=> d!810711 (= c!452573 ((_ is Nil!32256) lt!995676))))

(assert (=> d!810711 (= (size!25080 lt!995676) lt!995691)))

(declare-fun b!2786872 () Bool)

(assert (=> b!2786872 (= e!1758821 0)))

(declare-fun b!2786873 () Bool)

(assert (=> b!2786873 (= e!1758821 (+ 1 (size!25080 (t!228498 lt!995676))))))

(assert (= (and d!810711 c!452573) b!2786872))

(assert (= (and d!810711 (not c!452573)) b!2786873))

(declare-fun m!3217259 () Bool)

(assert (=> b!2786873 m!3217259))

(assert (=> b!2786860 d!810711))

(declare-fun d!810713 () Bool)

(assert (=> d!810713 (<= (size!25080 testedP!183) (size!25080 lt!995676))))

(declare-fun lt!995694 () Unit!46475)

(declare-fun choose!16351 (List!32356 List!32356) Unit!46475)

(assert (=> d!810713 (= lt!995694 (choose!16351 testedP!183 lt!995676))))

(assert (=> d!810713 (isPrefix!2588 testedP!183 lt!995676)))

(assert (=> d!810713 (= (lemmaIsPrefixThenSmallerEqSize!275 testedP!183 lt!995676) lt!995694)))

(declare-fun bs!510941 () Bool)

(assert (= bs!510941 d!810713))

(assert (=> bs!510941 m!3217209))

(assert (=> bs!510941 m!3217249))

(declare-fun m!3217261 () Bool)

(assert (=> bs!510941 m!3217261))

(assert (=> bs!510941 m!3217233))

(assert (=> b!2786860 d!810713))

(declare-fun d!810715 () Bool)

(declare-fun lt!995695 () Int)

(assert (=> d!810715 (>= lt!995695 0)))

(declare-fun e!1758822 () Int)

(assert (=> d!810715 (= lt!995695 e!1758822)))

(declare-fun c!452574 () Bool)

(assert (=> d!810715 (= c!452574 ((_ is Nil!32256) testedP!183))))

(assert (=> d!810715 (= (size!25080 testedP!183) lt!995695)))

(declare-fun b!2786874 () Bool)

(assert (=> b!2786874 (= e!1758822 0)))

(declare-fun b!2786875 () Bool)

(assert (=> b!2786875 (= e!1758822 (+ 1 (size!25080 (t!228498 testedP!183))))))

(assert (= (and d!810715 c!452574) b!2786874))

(assert (= (and d!810715 (not c!452574)) b!2786875))

(declare-fun m!3217263 () Bool)

(assert (=> b!2786875 m!3217263))

(assert (=> b!2786859 d!810715))

(declare-fun d!810717 () Bool)

(assert (=> d!810717 (= (array_inv!4423 (_keys!4196 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890))))))) (bvsge (size!25077 (_keys!4196 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2786841 d!810717))

(declare-fun d!810719 () Bool)

(assert (=> d!810719 (= (array_inv!4425 (_values!4177 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890))))))) (bvsge (size!25076 (_values!4177 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2786841 d!810719))

(declare-fun d!810721 () Bool)

(declare-fun validCacheMapUp!380 (MutableMap!3802) Bool)

(assert (=> d!810721 (= (valid!3045 cacheUp!890) (validCacheMapUp!380 (cache!3945 cacheUp!890)))))

(declare-fun bs!510942 () Bool)

(assert (= bs!510942 d!810721))

(declare-fun m!3217265 () Bool)

(assert (=> bs!510942 m!3217265))

(assert (=> b!2786850 d!810721))

(declare-fun bs!510943 () Bool)

(declare-fun b!2786880 () Bool)

(declare-fun d!810723 () Bool)

(assert (= bs!510943 (and b!2786880 d!810723)))

(declare-fun lambda!102253 () Int)

(declare-fun lambda!102252 () Int)

(assert (=> bs!510943 (not (= lambda!102253 lambda!102252))))

(declare-fun bs!510944 () Bool)

(declare-fun b!2786881 () Bool)

(assert (= bs!510944 (and b!2786881 d!810723)))

(declare-fun lambda!102254 () Int)

(assert (=> bs!510944 (not (= lambda!102254 lambda!102252))))

(declare-fun bs!510945 () Bool)

(assert (= bs!510945 (and b!2786881 b!2786880)))

(assert (=> bs!510945 (= lambda!102254 lambda!102253)))

(declare-fun e!1758829 () Unit!46475)

(declare-fun Unit!46479 () Unit!46475)

(assert (=> b!2786880 (= e!1758829 Unit!46479)))

(declare-datatypes ((List!32358 0))(
  ( (Nil!32258) (Cons!32258 (h!37678 Context!4734) (t!228500 List!32358)) )
))
(declare-fun lt!995718 () List!32358)

(declare-fun call!182504 () List!32358)

(assert (=> b!2786880 (= lt!995718 call!182504)))

(declare-fun lt!995715 () Unit!46475)

(declare-fun lemmaNotForallThenExists!93 (List!32358 Int) Unit!46475)

(assert (=> b!2786880 (= lt!995715 (lemmaNotForallThenExists!93 lt!995718 lambda!102252))))

(declare-fun call!182503 () Bool)

(assert (=> b!2786880 call!182503))

(declare-fun lt!995716 () Unit!46475)

(assert (=> b!2786880 (= lt!995716 lt!995715)))

(declare-fun lt!995717 () List!32358)

(declare-fun c!452585 () Bool)

(declare-fun bm!182499 () Bool)

(declare-fun exists!989 (List!32358 Int) Bool)

(assert (=> bm!182499 (= call!182503 (exists!989 (ite c!452585 lt!995718 lt!995717) (ite c!452585 lambda!102253 lambda!102254)))))

(declare-fun bm!182498 () Bool)

(declare-fun toList!1856 ((InoxSet Context!4734)) List!32358)

(assert (=> bm!182498 (= call!182504 (toList!1856 z!3684))))

(declare-fun lt!995719 () Bool)

(declare-datatypes ((Option!6271 0))(
  ( (None!6270) (Some!6270 (v!33863 List!32356)) )
))
(declare-fun isEmpty!18115 (Option!6271) Bool)

(declare-fun getLanguageWitness!201 ((InoxSet Context!4734)) Option!6271)

(assert (=> d!810723 (= lt!995719 (isEmpty!18115 (getLanguageWitness!201 z!3684)))))

(declare-fun forall!6657 ((InoxSet Context!4734) Int) Bool)

(assert (=> d!810723 (= lt!995719 (forall!6657 z!3684 lambda!102252))))

(declare-fun lt!995713 () Unit!46475)

(assert (=> d!810723 (= lt!995713 e!1758829)))

(assert (=> d!810723 (= c!452585 (not (forall!6657 z!3684 lambda!102252)))))

(assert (=> d!810723 (= (lostCauseZipper!466 z!3684) lt!995719)))

(declare-fun Unit!46480 () Unit!46475)

(assert (=> b!2786881 (= e!1758829 Unit!46480)))

(assert (=> b!2786881 (= lt!995717 call!182504)))

(declare-fun lt!995712 () Unit!46475)

(declare-fun lemmaForallThenNotExists!93 (List!32358 Int) Unit!46475)

(assert (=> b!2786881 (= lt!995712 (lemmaForallThenNotExists!93 lt!995717 lambda!102252))))

(assert (=> b!2786881 (not call!182503)))

(declare-fun lt!995714 () Unit!46475)

(assert (=> b!2786881 (= lt!995714 lt!995712)))

(assert (= (and d!810723 c!452585) b!2786880))

(assert (= (and d!810723 (not c!452585)) b!2786881))

(assert (= (or b!2786880 b!2786881) bm!182498))

(assert (= (or b!2786880 b!2786881) bm!182499))

(declare-fun m!3217267 () Bool)

(assert (=> bm!182499 m!3217267))

(declare-fun m!3217269 () Bool)

(assert (=> d!810723 m!3217269))

(assert (=> d!810723 m!3217269))

(declare-fun m!3217271 () Bool)

(assert (=> d!810723 m!3217271))

(declare-fun m!3217273 () Bool)

(assert (=> d!810723 m!3217273))

(assert (=> d!810723 m!3217273))

(declare-fun m!3217275 () Bool)

(assert (=> b!2786880 m!3217275))

(declare-fun m!3217277 () Bool)

(assert (=> b!2786881 m!3217277))

(declare-fun m!3217279 () Bool)

(assert (=> bm!182498 m!3217279))

(assert (=> b!2786840 d!810723))

(declare-fun d!810725 () Bool)

(assert (=> d!810725 (= testedSuffix!143 lt!995678)))

(declare-fun lt!995722 () Unit!46475)

(declare-fun choose!16352 (List!32356 List!32356 List!32356 List!32356 List!32356) Unit!46475)

(assert (=> d!810725 (= lt!995722 (choose!16352 testedP!183 testedSuffix!143 testedP!183 lt!995678 lt!995676))))

(assert (=> d!810725 (isPrefix!2588 testedP!183 lt!995676)))

(assert (=> d!810725 (= (lemmaSamePrefixThenSameSuffix!1167 testedP!183 testedSuffix!143 testedP!183 lt!995678 lt!995676) lt!995722)))

(declare-fun bs!510946 () Bool)

(assert (= bs!510946 d!810725))

(declare-fun m!3217281 () Bool)

(assert (=> bs!510946 m!3217281))

(assert (=> bs!510946 m!3217233))

(assert (=> b!2786840 d!810725))

(declare-fun d!810727 () Bool)

(declare-fun lt!995725 () List!32356)

(assert (=> d!810727 (= (++!7968 testedP!183 lt!995725) lt!995676)))

(declare-fun e!1758832 () List!32356)

(assert (=> d!810727 (= lt!995725 e!1758832)))

(declare-fun c!452588 () Bool)

(assert (=> d!810727 (= c!452588 ((_ is Cons!32256) testedP!183))))

(assert (=> d!810727 (>= (size!25080 lt!995676) (size!25080 testedP!183))))

(assert (=> d!810727 (= (getSuffix!1266 lt!995676 testedP!183) lt!995725)))

(declare-fun b!2786886 () Bool)

(assert (=> b!2786886 (= e!1758832 (getSuffix!1266 (tail!4403 lt!995676) (t!228498 testedP!183)))))

(declare-fun b!2786887 () Bool)

(assert (=> b!2786887 (= e!1758832 lt!995676)))

(assert (= (and d!810727 c!452588) b!2786886))

(assert (= (and d!810727 (not c!452588)) b!2786887))

(declare-fun m!3217283 () Bool)

(assert (=> d!810727 m!3217283))

(assert (=> d!810727 m!3217249))

(assert (=> d!810727 m!3217209))

(declare-fun m!3217285 () Bool)

(assert (=> b!2786886 m!3217285))

(assert (=> b!2786886 m!3217285))

(declare-fun m!3217287 () Bool)

(assert (=> b!2786886 m!3217287))

(assert (=> b!2786840 d!810727))

(declare-fun d!810729 () Bool)

(declare-fun e!1758838 () Bool)

(assert (=> d!810729 e!1758838))

(declare-fun res!1162970 () Bool)

(assert (=> d!810729 (=> (not res!1162970) (not e!1758838))))

(declare-fun lt!995728 () List!32356)

(declare-fun content!4521 (List!32356) (InoxSet C!16456))

(assert (=> d!810729 (= res!1162970 (= (content!4521 lt!995728) ((_ map or) (content!4521 testedP!183) (content!4521 (Cons!32256 lt!995673 Nil!32256)))))))

(declare-fun e!1758837 () List!32356)

(assert (=> d!810729 (= lt!995728 e!1758837)))

(declare-fun c!452591 () Bool)

(assert (=> d!810729 (= c!452591 ((_ is Nil!32256) testedP!183))))

(assert (=> d!810729 (= (++!7968 testedP!183 (Cons!32256 lt!995673 Nil!32256)) lt!995728)))

(declare-fun b!2786897 () Bool)

(assert (=> b!2786897 (= e!1758837 (Cons!32256 (h!37676 testedP!183) (++!7968 (t!228498 testedP!183) (Cons!32256 lt!995673 Nil!32256))))))

(declare-fun b!2786896 () Bool)

(assert (=> b!2786896 (= e!1758837 (Cons!32256 lt!995673 Nil!32256))))

(declare-fun b!2786899 () Bool)

(assert (=> b!2786899 (= e!1758838 (or (not (= (Cons!32256 lt!995673 Nil!32256) Nil!32256)) (= lt!995728 testedP!183)))))

(declare-fun b!2786898 () Bool)

(declare-fun res!1162971 () Bool)

(assert (=> b!2786898 (=> (not res!1162971) (not e!1758838))))

(assert (=> b!2786898 (= res!1162971 (= (size!25080 lt!995728) (+ (size!25080 testedP!183) (size!25080 (Cons!32256 lt!995673 Nil!32256)))))))

(assert (= (and d!810729 c!452591) b!2786896))

(assert (= (and d!810729 (not c!452591)) b!2786897))

(assert (= (and d!810729 res!1162970) b!2786898))

(assert (= (and b!2786898 res!1162971) b!2786899))

(declare-fun m!3217289 () Bool)

(assert (=> d!810729 m!3217289))

(declare-fun m!3217291 () Bool)

(assert (=> d!810729 m!3217291))

(declare-fun m!3217293 () Bool)

(assert (=> d!810729 m!3217293))

(declare-fun m!3217295 () Bool)

(assert (=> b!2786897 m!3217295))

(declare-fun m!3217297 () Bool)

(assert (=> b!2786898 m!3217297))

(assert (=> b!2786898 m!3217209))

(declare-fun m!3217299 () Bool)

(assert (=> b!2786898 m!3217299))

(assert (=> b!2786842 d!810729))

(declare-fun d!810731 () Bool)

(assert (=> d!810731 (= (head!6171 lt!995678) (h!37676 lt!995678))))

(assert (=> b!2786842 d!810731))

(declare-fun d!810733 () Bool)

(assert (=> d!810733 (= (++!7968 (++!7968 testedP!183 (Cons!32256 lt!995673 Nil!32256)) lt!995680) lt!995676)))

(declare-fun lt!995731 () Unit!46475)

(declare-fun choose!16353 (List!32356 C!16456 List!32356 List!32356) Unit!46475)

(assert (=> d!810733 (= lt!995731 (choose!16353 testedP!183 lt!995673 lt!995680 lt!995676))))

(assert (=> d!810733 (= (++!7968 testedP!183 (Cons!32256 lt!995673 lt!995680)) lt!995676)))

(assert (=> d!810733 (= (lemmaMoveElementToOtherListKeepsConcatEq!877 testedP!183 lt!995673 lt!995680 lt!995676) lt!995731)))

(declare-fun bs!510947 () Bool)

(assert (= bs!510947 d!810733))

(assert (=> bs!510947 m!3217219))

(assert (=> bs!510947 m!3217219))

(assert (=> bs!510947 m!3217221))

(declare-fun m!3217301 () Bool)

(assert (=> bs!510947 m!3217301))

(declare-fun m!3217303 () Bool)

(assert (=> bs!510947 m!3217303))

(assert (=> b!2786842 d!810733))

(declare-fun d!810735 () Bool)

(assert (=> d!810735 (isPrefix!2588 (++!7968 testedP!183 (Cons!32256 (head!6171 (getSuffix!1266 lt!995676 testedP!183)) Nil!32256)) lt!995676)))

(declare-fun lt!995734 () Unit!46475)

(declare-fun choose!16354 (List!32356 List!32356) Unit!46475)

(assert (=> d!810735 (= lt!995734 (choose!16354 testedP!183 lt!995676))))

(assert (=> d!810735 (isPrefix!2588 testedP!183 lt!995676)))

(assert (=> d!810735 (= (lemmaAddHeadSuffixToPrefixStillPrefix!468 testedP!183 lt!995676) lt!995734)))

(declare-fun bs!510948 () Bool)

(assert (= bs!510948 d!810735))

(assert (=> bs!510948 m!3217161))

(declare-fun m!3217305 () Bool)

(assert (=> bs!510948 m!3217305))

(declare-fun m!3217307 () Bool)

(assert (=> bs!510948 m!3217307))

(declare-fun m!3217309 () Bool)

(assert (=> bs!510948 m!3217309))

(assert (=> bs!510948 m!3217307))

(declare-fun m!3217311 () Bool)

(assert (=> bs!510948 m!3217311))

(assert (=> bs!510948 m!3217161))

(assert (=> bs!510948 m!3217233))

(assert (=> b!2786842 d!810735))

(declare-fun d!810737 () Bool)

(assert (=> d!810737 (= (tail!4403 testedSuffix!143) (t!228498 testedSuffix!143))))

(assert (=> b!2786842 d!810737))

(declare-fun bs!510949 () Bool)

(declare-fun d!810739 () Bool)

(assert (= bs!510949 (and d!810739 d!810723)))

(declare-fun lambda!102257 () Int)

(assert (=> bs!510949 (not (= lambda!102257 lambda!102252))))

(declare-fun bs!510950 () Bool)

(assert (= bs!510950 (and d!810739 b!2786880)))

(assert (=> bs!510950 (not (= lambda!102257 lambda!102253))))

(declare-fun bs!510951 () Bool)

(assert (= bs!510951 (and d!810739 b!2786881)))

(assert (=> bs!510951 (not (= lambda!102257 lambda!102254))))

(declare-fun exists!990 ((InoxSet Context!4734) Int) Bool)

(assert (=> d!810739 (= (nullableZipper!641 z!3684) (exists!990 z!3684 lambda!102257))))

(declare-fun bs!510952 () Bool)

(assert (= bs!510952 d!810739))

(declare-fun m!3217313 () Bool)

(assert (=> bs!510952 m!3217313))

(assert (=> b!2786842 d!810739))

(declare-fun d!810741 () Bool)

(declare-fun e!1758840 () Bool)

(assert (=> d!810741 e!1758840))

(declare-fun res!1162972 () Bool)

(assert (=> d!810741 (=> (not res!1162972) (not e!1758840))))

(declare-fun lt!995735 () List!32356)

(assert (=> d!810741 (= res!1162972 (= (content!4521 lt!995735) ((_ map or) (content!4521 testedP!183) (content!4521 (Cons!32256 (head!6171 lt!995678) Nil!32256)))))))

(declare-fun e!1758839 () List!32356)

(assert (=> d!810741 (= lt!995735 e!1758839)))

(declare-fun c!452594 () Bool)

(assert (=> d!810741 (= c!452594 ((_ is Nil!32256) testedP!183))))

(assert (=> d!810741 (= (++!7968 testedP!183 (Cons!32256 (head!6171 lt!995678) Nil!32256)) lt!995735)))

(declare-fun b!2786901 () Bool)

(assert (=> b!2786901 (= e!1758839 (Cons!32256 (h!37676 testedP!183) (++!7968 (t!228498 testedP!183) (Cons!32256 (head!6171 lt!995678) Nil!32256))))))

(declare-fun b!2786900 () Bool)

(assert (=> b!2786900 (= e!1758839 (Cons!32256 (head!6171 lt!995678) Nil!32256))))

(declare-fun b!2786903 () Bool)

(assert (=> b!2786903 (= e!1758840 (or (not (= (Cons!32256 (head!6171 lt!995678) Nil!32256) Nil!32256)) (= lt!995735 testedP!183)))))

(declare-fun b!2786902 () Bool)

(declare-fun res!1162973 () Bool)

(assert (=> b!2786902 (=> (not res!1162973) (not e!1758840))))

(assert (=> b!2786902 (= res!1162973 (= (size!25080 lt!995735) (+ (size!25080 testedP!183) (size!25080 (Cons!32256 (head!6171 lt!995678) Nil!32256)))))))

(assert (= (and d!810741 c!452594) b!2786900))

(assert (= (and d!810741 (not c!452594)) b!2786901))

(assert (= (and d!810741 res!1162972) b!2786902))

(assert (= (and b!2786902 res!1162973) b!2786903))

(declare-fun m!3217315 () Bool)

(assert (=> d!810741 m!3217315))

(assert (=> d!810741 m!3217291))

(declare-fun m!3217317 () Bool)

(assert (=> d!810741 m!3217317))

(declare-fun m!3217319 () Bool)

(assert (=> b!2786901 m!3217319))

(declare-fun m!3217321 () Bool)

(assert (=> b!2786902 m!3217321))

(assert (=> b!2786902 m!3217209))

(declare-fun m!3217323 () Bool)

(assert (=> b!2786902 m!3217323))

(assert (=> b!2786842 d!810741))

(declare-fun d!810743 () Bool)

(declare-fun e!1758847 () Bool)

(assert (=> d!810743 e!1758847))

(declare-fun res!1162985 () Bool)

(assert (=> d!810743 (=> res!1162985 e!1758847)))

(declare-fun lt!995738 () Bool)

(assert (=> d!810743 (= res!1162985 (not lt!995738))))

(declare-fun e!1758849 () Bool)

(assert (=> d!810743 (= lt!995738 e!1758849)))

(declare-fun res!1162983 () Bool)

(assert (=> d!810743 (=> res!1162983 e!1758849)))

(assert (=> d!810743 (= res!1162983 ((_ is Nil!32256) (++!7968 testedP!183 (Cons!32256 (head!6171 lt!995678) Nil!32256))))))

(assert (=> d!810743 (= (isPrefix!2588 (++!7968 testedP!183 (Cons!32256 (head!6171 lt!995678) Nil!32256)) lt!995676) lt!995738)))

(declare-fun e!1758848 () Bool)

(declare-fun b!2786914 () Bool)

(assert (=> b!2786914 (= e!1758848 (isPrefix!2588 (tail!4403 (++!7968 testedP!183 (Cons!32256 (head!6171 lt!995678) Nil!32256))) (tail!4403 lt!995676)))))

(declare-fun b!2786915 () Bool)

(assert (=> b!2786915 (= e!1758847 (>= (size!25080 lt!995676) (size!25080 (++!7968 testedP!183 (Cons!32256 (head!6171 lt!995678) Nil!32256)))))))

(declare-fun b!2786913 () Bool)

(declare-fun res!1162984 () Bool)

(assert (=> b!2786913 (=> (not res!1162984) (not e!1758848))))

(assert (=> b!2786913 (= res!1162984 (= (head!6171 (++!7968 testedP!183 (Cons!32256 (head!6171 lt!995678) Nil!32256))) (head!6171 lt!995676)))))

(declare-fun b!2786912 () Bool)

(assert (=> b!2786912 (= e!1758849 e!1758848)))

(declare-fun res!1162982 () Bool)

(assert (=> b!2786912 (=> (not res!1162982) (not e!1758848))))

(assert (=> b!2786912 (= res!1162982 (not ((_ is Nil!32256) lt!995676)))))

(assert (= (and d!810743 (not res!1162983)) b!2786912))

(assert (= (and b!2786912 res!1162982) b!2786913))

(assert (= (and b!2786913 res!1162984) b!2786914))

(assert (= (and d!810743 (not res!1162985)) b!2786915))

(assert (=> b!2786914 m!3217217))

(declare-fun m!3217325 () Bool)

(assert (=> b!2786914 m!3217325))

(assert (=> b!2786914 m!3217285))

(assert (=> b!2786914 m!3217325))

(assert (=> b!2786914 m!3217285))

(declare-fun m!3217327 () Bool)

(assert (=> b!2786914 m!3217327))

(assert (=> b!2786915 m!3217249))

(assert (=> b!2786915 m!3217217))

(declare-fun m!3217329 () Bool)

(assert (=> b!2786915 m!3217329))

(assert (=> b!2786913 m!3217217))

(declare-fun m!3217331 () Bool)

(assert (=> b!2786913 m!3217331))

(declare-fun m!3217333 () Bool)

(assert (=> b!2786913 m!3217333))

(assert (=> b!2786842 d!810743))

(declare-fun d!810745 () Bool)

(declare-fun e!1758851 () Bool)

(assert (=> d!810745 e!1758851))

(declare-fun res!1162986 () Bool)

(assert (=> d!810745 (=> (not res!1162986) (not e!1758851))))

(declare-fun lt!995739 () List!32356)

(assert (=> d!810745 (= res!1162986 (= (content!4521 lt!995739) ((_ map or) (content!4521 (++!7968 testedP!183 (Cons!32256 lt!995673 Nil!32256))) (content!4521 lt!995680))))))

(declare-fun e!1758850 () List!32356)

(assert (=> d!810745 (= lt!995739 e!1758850)))

(declare-fun c!452595 () Bool)

(assert (=> d!810745 (= c!452595 ((_ is Nil!32256) (++!7968 testedP!183 (Cons!32256 lt!995673 Nil!32256))))))

(assert (=> d!810745 (= (++!7968 (++!7968 testedP!183 (Cons!32256 lt!995673 Nil!32256)) lt!995680) lt!995739)))

(declare-fun b!2786917 () Bool)

(assert (=> b!2786917 (= e!1758850 (Cons!32256 (h!37676 (++!7968 testedP!183 (Cons!32256 lt!995673 Nil!32256))) (++!7968 (t!228498 (++!7968 testedP!183 (Cons!32256 lt!995673 Nil!32256))) lt!995680)))))

(declare-fun b!2786916 () Bool)

(assert (=> b!2786916 (= e!1758850 lt!995680)))

(declare-fun b!2786919 () Bool)

(assert (=> b!2786919 (= e!1758851 (or (not (= lt!995680 Nil!32256)) (= lt!995739 (++!7968 testedP!183 (Cons!32256 lt!995673 Nil!32256)))))))

(declare-fun b!2786918 () Bool)

(declare-fun res!1162987 () Bool)

(assert (=> b!2786918 (=> (not res!1162987) (not e!1758851))))

(assert (=> b!2786918 (= res!1162987 (= (size!25080 lt!995739) (+ (size!25080 (++!7968 testedP!183 (Cons!32256 lt!995673 Nil!32256))) (size!25080 lt!995680))))))

(assert (= (and d!810745 c!452595) b!2786916))

(assert (= (and d!810745 (not c!452595)) b!2786917))

(assert (= (and d!810745 res!1162986) b!2786918))

(assert (= (and b!2786918 res!1162987) b!2786919))

(declare-fun m!3217335 () Bool)

(assert (=> d!810745 m!3217335))

(assert (=> d!810745 m!3217219))

(declare-fun m!3217337 () Bool)

(assert (=> d!810745 m!3217337))

(declare-fun m!3217339 () Bool)

(assert (=> d!810745 m!3217339))

(declare-fun m!3217341 () Bool)

(assert (=> b!2786917 m!3217341))

(declare-fun m!3217343 () Bool)

(assert (=> b!2786918 m!3217343))

(assert (=> b!2786918 m!3217219))

(declare-fun m!3217345 () Bool)

(assert (=> b!2786918 m!3217345))

(declare-fun m!3217347 () Bool)

(assert (=> b!2786918 m!3217347))

(assert (=> b!2786842 d!810745))

(declare-fun d!810747 () Bool)

(declare-fun res!1162990 () Bool)

(declare-fun e!1758854 () Bool)

(assert (=> d!810747 (=> (not res!1162990) (not e!1758854))))

(assert (=> d!810747 (= res!1162990 ((_ is HashMap!3802) (cache!3945 cacheUp!890)))))

(assert (=> d!810747 (= (inv!43824 cacheUp!890) e!1758854)))

(declare-fun b!2786922 () Bool)

(assert (=> b!2786922 (= e!1758854 (validCacheMapUp!380 (cache!3945 cacheUp!890)))))

(assert (= (and d!810747 res!1162990) b!2786922))

(assert (=> b!2786922 m!3217265))

(assert (=> start!269300 d!810747))

(declare-fun d!810749 () Bool)

(declare-fun isBalanced!3056 (Conc!10019) Bool)

(assert (=> d!810749 (= (inv!43822 totalInput!758) (isBalanced!3056 (c!452570 totalInput!758)))))

(declare-fun bs!510953 () Bool)

(assert (= bs!510953 d!810749))

(declare-fun m!3217349 () Bool)

(assert (=> bs!510953 m!3217349))

(assert (=> start!269300 d!810749))

(declare-fun d!810751 () Bool)

(declare-fun res!1162993 () Bool)

(declare-fun e!1758857 () Bool)

(assert (=> d!810751 (=> (not res!1162993) (not e!1758857))))

(assert (=> d!810751 (= res!1162993 ((_ is HashMap!3803) (cache!3946 cacheDown!1009)))))

(assert (=> d!810751 (= (inv!43823 cacheDown!1009) e!1758857)))

(declare-fun b!2786925 () Bool)

(declare-fun validCacheMapDown!411 (MutableMap!3803) Bool)

(assert (=> b!2786925 (= e!1758857 (validCacheMapDown!411 (cache!3946 cacheDown!1009)))))

(assert (= (and d!810751 res!1162993) b!2786925))

(declare-fun m!3217351 () Bool)

(assert (=> b!2786925 m!3217351))

(assert (=> start!269300 d!810751))

(declare-fun d!810753 () Bool)

(declare-fun list!12144 (Conc!10019) List!32356)

(assert (=> d!810753 (= (list!12143 totalInput!758) (list!12144 (c!452570 totalInput!758)))))

(declare-fun bs!510954 () Bool)

(assert (= bs!510954 d!810753))

(declare-fun m!3217353 () Bool)

(assert (=> bs!510954 m!3217353))

(assert (=> start!269300 d!810753))

(declare-fun d!810755 () Bool)

(declare-fun e!1758859 () Bool)

(assert (=> d!810755 e!1758859))

(declare-fun res!1162994 () Bool)

(assert (=> d!810755 (=> (not res!1162994) (not e!1758859))))

(declare-fun lt!995740 () List!32356)

(assert (=> d!810755 (= res!1162994 (= (content!4521 lt!995740) ((_ map or) (content!4521 testedP!183) (content!4521 testedSuffix!143))))))

(declare-fun e!1758858 () List!32356)

(assert (=> d!810755 (= lt!995740 e!1758858)))

(declare-fun c!452596 () Bool)

(assert (=> d!810755 (= c!452596 ((_ is Nil!32256) testedP!183))))

(assert (=> d!810755 (= (++!7968 testedP!183 testedSuffix!143) lt!995740)))

(declare-fun b!2786927 () Bool)

(assert (=> b!2786927 (= e!1758858 (Cons!32256 (h!37676 testedP!183) (++!7968 (t!228498 testedP!183) testedSuffix!143)))))

(declare-fun b!2786926 () Bool)

(assert (=> b!2786926 (= e!1758858 testedSuffix!143)))

(declare-fun b!2786929 () Bool)

(assert (=> b!2786929 (= e!1758859 (or (not (= testedSuffix!143 Nil!32256)) (= lt!995740 testedP!183)))))

(declare-fun b!2786928 () Bool)

(declare-fun res!1162995 () Bool)

(assert (=> b!2786928 (=> (not res!1162995) (not e!1758859))))

(assert (=> b!2786928 (= res!1162995 (= (size!25080 lt!995740) (+ (size!25080 testedP!183) (size!25080 testedSuffix!143))))))

(assert (= (and d!810755 c!452596) b!2786926))

(assert (= (and d!810755 (not c!452596)) b!2786927))

(assert (= (and d!810755 res!1162994) b!2786928))

(assert (= (and b!2786928 res!1162995) b!2786929))

(declare-fun m!3217355 () Bool)

(assert (=> d!810755 m!3217355))

(assert (=> d!810755 m!3217291))

(declare-fun m!3217357 () Bool)

(assert (=> d!810755 m!3217357))

(declare-fun m!3217359 () Bool)

(assert (=> b!2786927 m!3217359))

(declare-fun m!3217361 () Bool)

(assert (=> b!2786928 m!3217361))

(assert (=> b!2786928 m!3217209))

(declare-fun m!3217363 () Bool)

(assert (=> b!2786928 m!3217363))

(assert (=> start!269300 d!810755))

(declare-fun d!810757 () Bool)

(declare-fun lambda!102260 () Int)

(declare-fun forall!6658 (List!32354 Int) Bool)

(assert (=> d!810757 (= (inv!43821 setElem!23593) (forall!6658 (exprs!2867 setElem!23593) lambda!102260))))

(declare-fun bs!510955 () Bool)

(assert (= bs!510955 d!810757))

(declare-fun m!3217365 () Bool)

(assert (=> bs!510955 m!3217365))

(assert (=> setNonEmpty!23593 d!810757))

(declare-fun d!810759 () Bool)

(declare-fun lt!995741 () Int)

(assert (=> d!810759 (= lt!995741 (size!25080 (list!12143 (_1!19287 lt!995668))))))

(assert (=> d!810759 (= lt!995741 (size!25081 (c!452570 (_1!19287 lt!995668))))))

(assert (=> d!810759 (= (size!25078 (_1!19287 lt!995668)) lt!995741)))

(declare-fun bs!510956 () Bool)

(assert (= bs!510956 d!810759))

(assert (=> bs!510956 m!3217201))

(assert (=> bs!510956 m!3217201))

(declare-fun m!3217367 () Bool)

(assert (=> bs!510956 m!3217367))

(declare-fun m!3217369 () Bool)

(assert (=> bs!510956 m!3217369))

(assert (=> b!2786854 d!810759))

(declare-fun d!810761 () Bool)

(assert (=> d!810761 (= (array_inv!4423 (_keys!4197 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009))))))) (bvsge (size!25077 (_keys!4197 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2786856 d!810761))

(declare-fun d!810763 () Bool)

(assert (=> d!810763 (= (array_inv!4424 (_values!4178 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009))))))) (bvsge (size!25079 (_values!4178 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2786856 d!810763))

(declare-fun d!810765 () Bool)

(assert (=> d!810765 (isPrefix!2588 lt!995676 lt!995676)))

(declare-fun lt!995744 () Unit!46475)

(declare-fun choose!16355 (List!32356 List!32356) Unit!46475)

(assert (=> d!810765 (= lt!995744 (choose!16355 lt!995676 lt!995676))))

(assert (=> d!810765 (= (lemmaIsPrefixRefl!1692 lt!995676 lt!995676) lt!995744)))

(declare-fun bs!510957 () Bool)

(assert (= bs!510957 d!810765))

(assert (=> bs!510957 m!3217241))

(declare-fun m!3217371 () Bool)

(assert (=> bs!510957 m!3217371))

(assert (=> b!2786864 d!810765))

(declare-fun d!810767 () Bool)

(declare-fun e!1758860 () Bool)

(assert (=> d!810767 e!1758860))

(declare-fun res!1162999 () Bool)

(assert (=> d!810767 (=> res!1162999 e!1758860)))

(declare-fun lt!995745 () Bool)

(assert (=> d!810767 (= res!1162999 (not lt!995745))))

(declare-fun e!1758862 () Bool)

(assert (=> d!810767 (= lt!995745 e!1758862)))

(declare-fun res!1162997 () Bool)

(assert (=> d!810767 (=> res!1162997 e!1758862)))

(assert (=> d!810767 (= res!1162997 ((_ is Nil!32256) lt!995676))))

(assert (=> d!810767 (= (isPrefix!2588 lt!995676 lt!995676) lt!995745)))

(declare-fun b!2786932 () Bool)

(declare-fun e!1758861 () Bool)

(assert (=> b!2786932 (= e!1758861 (isPrefix!2588 (tail!4403 lt!995676) (tail!4403 lt!995676)))))

(declare-fun b!2786933 () Bool)

(assert (=> b!2786933 (= e!1758860 (>= (size!25080 lt!995676) (size!25080 lt!995676)))))

(declare-fun b!2786931 () Bool)

(declare-fun res!1162998 () Bool)

(assert (=> b!2786931 (=> (not res!1162998) (not e!1758861))))

(assert (=> b!2786931 (= res!1162998 (= (head!6171 lt!995676) (head!6171 lt!995676)))))

(declare-fun b!2786930 () Bool)

(assert (=> b!2786930 (= e!1758862 e!1758861)))

(declare-fun res!1162996 () Bool)

(assert (=> b!2786930 (=> (not res!1162996) (not e!1758861))))

(assert (=> b!2786930 (= res!1162996 (not ((_ is Nil!32256) lt!995676)))))

(assert (= (and d!810767 (not res!1162997)) b!2786930))

(assert (= (and b!2786930 res!1162996) b!2786931))

(assert (= (and b!2786931 res!1162998) b!2786932))

(assert (= (and d!810767 (not res!1162999)) b!2786933))

(assert (=> b!2786932 m!3217285))

(assert (=> b!2786932 m!3217285))

(assert (=> b!2786932 m!3217285))

(assert (=> b!2786932 m!3217285))

(declare-fun m!3217373 () Bool)

(assert (=> b!2786932 m!3217373))

(assert (=> b!2786933 m!3217249))

(assert (=> b!2786933 m!3217249))

(assert (=> b!2786931 m!3217333))

(assert (=> b!2786931 m!3217333))

(assert (=> b!2786864 d!810767))

(declare-fun d!810769 () Bool)

(assert (=> d!810769 (= lt!995676 testedP!183)))

(declare-fun lt!995748 () Unit!46475)

(declare-fun choose!16356 (List!32356 List!32356 List!32356) Unit!46475)

(assert (=> d!810769 (= lt!995748 (choose!16356 lt!995676 testedP!183 lt!995676))))

(assert (=> d!810769 (isPrefix!2588 lt!995676 lt!995676)))

(assert (=> d!810769 (= (lemmaIsPrefixSameLengthThenSameList!472 lt!995676 testedP!183 lt!995676) lt!995748)))

(declare-fun bs!510958 () Bool)

(assert (= bs!510958 d!810769))

(declare-fun m!3217375 () Bool)

(assert (=> bs!510958 m!3217375))

(assert (=> bs!510958 m!3217241))

(assert (=> b!2786864 d!810769))

(declare-fun d!810771 () Bool)

(declare-fun e!1758864 () Bool)

(assert (=> d!810771 e!1758864))

(declare-fun res!1163000 () Bool)

(assert (=> d!810771 (=> (not res!1163000) (not e!1758864))))

(declare-fun lt!995749 () List!32356)

(assert (=> d!810771 (= res!1163000 (= (content!4521 lt!995749) ((_ map or) (content!4521 lt!995670) (content!4521 lt!995674))))))

(declare-fun e!1758863 () List!32356)

(assert (=> d!810771 (= lt!995749 e!1758863)))

(declare-fun c!452597 () Bool)

(assert (=> d!810771 (= c!452597 ((_ is Nil!32256) lt!995670))))

(assert (=> d!810771 (= (++!7968 lt!995670 lt!995674) lt!995749)))

(declare-fun b!2786935 () Bool)

(assert (=> b!2786935 (= e!1758863 (Cons!32256 (h!37676 lt!995670) (++!7968 (t!228498 lt!995670) lt!995674)))))

(declare-fun b!2786934 () Bool)

(assert (=> b!2786934 (= e!1758863 lt!995674)))

(declare-fun b!2786937 () Bool)

(assert (=> b!2786937 (= e!1758864 (or (not (= lt!995674 Nil!32256)) (= lt!995749 lt!995670)))))

(declare-fun b!2786936 () Bool)

(declare-fun res!1163001 () Bool)

(assert (=> b!2786936 (=> (not res!1163001) (not e!1758864))))

(assert (=> b!2786936 (= res!1163001 (= (size!25080 lt!995749) (+ (size!25080 lt!995670) (size!25080 lt!995674))))))

(assert (= (and d!810771 c!452597) b!2786934))

(assert (= (and d!810771 (not c!452597)) b!2786935))

(assert (= (and d!810771 res!1163000) b!2786936))

(assert (= (and b!2786936 res!1163001) b!2786937))

(declare-fun m!3217377 () Bool)

(assert (=> d!810771 m!3217377))

(declare-fun m!3217379 () Bool)

(assert (=> d!810771 m!3217379))

(declare-fun m!3217381 () Bool)

(assert (=> d!810771 m!3217381))

(declare-fun m!3217383 () Bool)

(assert (=> b!2786935 m!3217383))

(declare-fun m!3217385 () Bool)

(assert (=> b!2786936 m!3217385))

(declare-fun m!3217387 () Bool)

(assert (=> b!2786936 m!3217387))

(declare-fun m!3217389 () Bool)

(assert (=> b!2786936 m!3217389))

(assert (=> b!2786855 d!810771))

(declare-fun d!810773 () Bool)

(assert (=> d!810773 (= (list!12143 (_2!19287 lt!995668)) (list!12144 (c!452570 (_2!19287 lt!995668))))))

(declare-fun bs!510959 () Bool)

(assert (= bs!510959 d!810773))

(declare-fun m!3217391 () Bool)

(assert (=> bs!510959 m!3217391))

(assert (=> b!2786855 d!810773))

(declare-fun d!810775 () Bool)

(assert (=> d!810775 (= (list!12143 (_1!19287 lt!995668)) (list!12144 (c!452570 (_1!19287 lt!995668))))))

(declare-fun bs!510960 () Bool)

(assert (= bs!510960 d!810775))

(declare-fun m!3217393 () Bool)

(assert (=> bs!510960 m!3217393))

(assert (=> b!2786855 d!810775))

(declare-fun d!810777 () Bool)

(declare-fun e!1758867 () Bool)

(assert (=> d!810777 e!1758867))

(declare-fun res!1163006 () Bool)

(assert (=> d!810777 (=> (not res!1163006) (not e!1758867))))

(declare-fun lt!995755 () tuple2!32620)

(assert (=> d!810777 (= res!1163006 (isBalanced!3056 (c!452570 (_1!19287 lt!995755))))))

(declare-datatypes ((tuple2!32622 0))(
  ( (tuple2!32623 (_1!19288 Conc!10019) (_2!19288 Conc!10019)) )
))
(declare-fun lt!995754 () tuple2!32622)

(assert (=> d!810777 (= lt!995755 (tuple2!32621 (BalanceConc!19653 (_1!19288 lt!995754)) (BalanceConc!19653 (_2!19288 lt!995754))))))

(declare-fun splitAt!147 (Conc!10019 Int) tuple2!32622)

(assert (=> d!810777 (= lt!995754 (splitAt!147 (c!452570 totalInput!758) testedPSize!143))))

(assert (=> d!810777 (isBalanced!3056 (c!452570 totalInput!758))))

(assert (=> d!810777 (= (splitAt!146 totalInput!758 testedPSize!143) lt!995755)))

(declare-fun b!2786942 () Bool)

(declare-fun res!1163007 () Bool)

(assert (=> b!2786942 (=> (not res!1163007) (not e!1758867))))

(assert (=> b!2786942 (= res!1163007 (isBalanced!3056 (c!452570 (_2!19287 lt!995755))))))

(declare-fun b!2786943 () Bool)

(declare-datatypes ((tuple2!32624 0))(
  ( (tuple2!32625 (_1!19289 List!32356) (_2!19289 List!32356)) )
))
(declare-fun splitAtIndex!59 (List!32356 Int) tuple2!32624)

(assert (=> b!2786943 (= e!1758867 (= (tuple2!32625 (list!12143 (_1!19287 lt!995755)) (list!12143 (_2!19287 lt!995755))) (splitAtIndex!59 (list!12143 totalInput!758) testedPSize!143)))))

(assert (= (and d!810777 res!1163006) b!2786942))

(assert (= (and b!2786942 res!1163007) b!2786943))

(declare-fun m!3217395 () Bool)

(assert (=> d!810777 m!3217395))

(declare-fun m!3217397 () Bool)

(assert (=> d!810777 m!3217397))

(assert (=> d!810777 m!3217349))

(declare-fun m!3217399 () Bool)

(assert (=> b!2786942 m!3217399))

(declare-fun m!3217401 () Bool)

(assert (=> b!2786943 m!3217401))

(declare-fun m!3217403 () Bool)

(assert (=> b!2786943 m!3217403))

(assert (=> b!2786943 m!3217183))

(assert (=> b!2786943 m!3217183))

(declare-fun m!3217405 () Bool)

(assert (=> b!2786943 m!3217405))

(assert (=> b!2786855 d!810777))

(declare-fun d!810779 () Bool)

(assert (=> d!810779 (= (valid!3046 cacheDown!1009) (validCacheMapDown!411 (cache!3946 cacheDown!1009)))))

(declare-fun bs!510961 () Bool)

(assert (= bs!510961 d!810779))

(assert (=> bs!510961 m!3217351))

(assert (=> b!2786866 d!810779))

(declare-fun d!810781 () Bool)

(declare-fun e!1758868 () Bool)

(assert (=> d!810781 e!1758868))

(declare-fun res!1163011 () Bool)

(assert (=> d!810781 (=> res!1163011 e!1758868)))

(declare-fun lt!995756 () Bool)

(assert (=> d!810781 (= res!1163011 (not lt!995756))))

(declare-fun e!1758870 () Bool)

(assert (=> d!810781 (= lt!995756 e!1758870)))

(declare-fun res!1163009 () Bool)

(assert (=> d!810781 (=> res!1163009 e!1758870)))

(assert (=> d!810781 (= res!1163009 ((_ is Nil!32256) testedP!183))))

(assert (=> d!810781 (= (isPrefix!2588 testedP!183 lt!995676) lt!995756)))

(declare-fun b!2786946 () Bool)

(declare-fun e!1758869 () Bool)

(assert (=> b!2786946 (= e!1758869 (isPrefix!2588 (tail!4403 testedP!183) (tail!4403 lt!995676)))))

(declare-fun b!2786947 () Bool)

(assert (=> b!2786947 (= e!1758868 (>= (size!25080 lt!995676) (size!25080 testedP!183)))))

(declare-fun b!2786945 () Bool)

(declare-fun res!1163010 () Bool)

(assert (=> b!2786945 (=> (not res!1163010) (not e!1758869))))

(assert (=> b!2786945 (= res!1163010 (= (head!6171 testedP!183) (head!6171 lt!995676)))))

(declare-fun b!2786944 () Bool)

(assert (=> b!2786944 (= e!1758870 e!1758869)))

(declare-fun res!1163008 () Bool)

(assert (=> b!2786944 (=> (not res!1163008) (not e!1758869))))

(assert (=> b!2786944 (= res!1163008 (not ((_ is Nil!32256) lt!995676)))))

(assert (= (and d!810781 (not res!1163009)) b!2786944))

(assert (= (and b!2786944 res!1163008) b!2786945))

(assert (= (and b!2786945 res!1163010) b!2786946))

(assert (= (and d!810781 (not res!1163011)) b!2786947))

(declare-fun m!3217407 () Bool)

(assert (=> b!2786946 m!3217407))

(assert (=> b!2786946 m!3217285))

(assert (=> b!2786946 m!3217407))

(assert (=> b!2786946 m!3217285))

(declare-fun m!3217409 () Bool)

(assert (=> b!2786946 m!3217409))

(assert (=> b!2786947 m!3217249))

(assert (=> b!2786947 m!3217209))

(declare-fun m!3217411 () Bool)

(assert (=> b!2786945 m!3217411))

(assert (=> b!2786945 m!3217333))

(assert (=> b!2786857 d!810781))

(declare-fun d!810783 () Bool)

(declare-fun e!1758871 () Bool)

(assert (=> d!810783 e!1758871))

(declare-fun res!1163015 () Bool)

(assert (=> d!810783 (=> res!1163015 e!1758871)))

(declare-fun lt!995757 () Bool)

(assert (=> d!810783 (= res!1163015 (not lt!995757))))

(declare-fun e!1758873 () Bool)

(assert (=> d!810783 (= lt!995757 e!1758873)))

(declare-fun res!1163013 () Bool)

(assert (=> d!810783 (=> res!1163013 e!1758873)))

(assert (=> d!810783 (= res!1163013 ((_ is Nil!32256) testedP!183))))

(assert (=> d!810783 (= (isPrefix!2588 testedP!183 lt!995667) lt!995757)))

(declare-fun b!2786950 () Bool)

(declare-fun e!1758872 () Bool)

(assert (=> b!2786950 (= e!1758872 (isPrefix!2588 (tail!4403 testedP!183) (tail!4403 lt!995667)))))

(declare-fun b!2786951 () Bool)

(assert (=> b!2786951 (= e!1758871 (>= (size!25080 lt!995667) (size!25080 testedP!183)))))

(declare-fun b!2786949 () Bool)

(declare-fun res!1163014 () Bool)

(assert (=> b!2786949 (=> (not res!1163014) (not e!1758872))))

(assert (=> b!2786949 (= res!1163014 (= (head!6171 testedP!183) (head!6171 lt!995667)))))

(declare-fun b!2786948 () Bool)

(assert (=> b!2786948 (= e!1758873 e!1758872)))

(declare-fun res!1163012 () Bool)

(assert (=> b!2786948 (=> (not res!1163012) (not e!1758872))))

(assert (=> b!2786948 (= res!1163012 (not ((_ is Nil!32256) lt!995667)))))

(assert (= (and d!810783 (not res!1163013)) b!2786948))

(assert (= (and b!2786948 res!1163012) b!2786949))

(assert (= (and b!2786949 res!1163014) b!2786950))

(assert (= (and d!810783 (not res!1163015)) b!2786951))

(assert (=> b!2786950 m!3217407))

(declare-fun m!3217413 () Bool)

(assert (=> b!2786950 m!3217413))

(assert (=> b!2786950 m!3217407))

(assert (=> b!2786950 m!3217413))

(declare-fun m!3217415 () Bool)

(assert (=> b!2786950 m!3217415))

(declare-fun m!3217417 () Bool)

(assert (=> b!2786951 m!3217417))

(assert (=> b!2786951 m!3217209))

(assert (=> b!2786949 m!3217411))

(declare-fun m!3217419 () Bool)

(assert (=> b!2786949 m!3217419))

(assert (=> b!2786857 d!810783))

(declare-fun d!810785 () Bool)

(assert (=> d!810785 (isPrefix!2588 testedP!183 (++!7968 testedP!183 testedSuffix!143))))

(declare-fun lt!995760 () Unit!46475)

(declare-fun choose!16357 (List!32356 List!32356) Unit!46475)

(assert (=> d!810785 (= lt!995760 (choose!16357 testedP!183 testedSuffix!143))))

(assert (=> d!810785 (= (lemmaConcatTwoListThenFirstIsPrefix!1698 testedP!183 testedSuffix!143) lt!995760)))

(declare-fun bs!510962 () Bool)

(assert (= bs!510962 d!810785))

(assert (=> bs!510962 m!3217191))

(assert (=> bs!510962 m!3217191))

(declare-fun m!3217421 () Bool)

(assert (=> bs!510962 m!3217421))

(declare-fun m!3217423 () Bool)

(assert (=> bs!510962 m!3217423))

(assert (=> b!2786857 d!810785))

(declare-fun d!810787 () Bool)

(declare-fun c!452600 () Bool)

(assert (=> d!810787 (= c!452600 ((_ is Node!10019) (c!452570 totalInput!758)))))

(declare-fun e!1758878 () Bool)

(assert (=> d!810787 (= (inv!43825 (c!452570 totalInput!758)) e!1758878)))

(declare-fun b!2786958 () Bool)

(declare-fun inv!43826 (Conc!10019) Bool)

(assert (=> b!2786958 (= e!1758878 (inv!43826 (c!452570 totalInput!758)))))

(declare-fun b!2786959 () Bool)

(declare-fun e!1758879 () Bool)

(assert (=> b!2786959 (= e!1758878 e!1758879)))

(declare-fun res!1163018 () Bool)

(assert (=> b!2786959 (= res!1163018 (not ((_ is Leaf!15262) (c!452570 totalInput!758))))))

(assert (=> b!2786959 (=> res!1163018 e!1758879)))

(declare-fun b!2786960 () Bool)

(declare-fun inv!43827 (Conc!10019) Bool)

(assert (=> b!2786960 (= e!1758879 (inv!43827 (c!452570 totalInput!758)))))

(assert (= (and d!810787 c!452600) b!2786958))

(assert (= (and d!810787 (not c!452600)) b!2786959))

(assert (= (and b!2786959 (not res!1163018)) b!2786960))

(declare-fun m!3217425 () Bool)

(assert (=> b!2786958 m!3217425))

(declare-fun m!3217427 () Bool)

(assert (=> b!2786960 m!3217427))

(assert (=> b!2786865 d!810787))

(declare-fun b!2786979 () Bool)

(declare-fun e!1758894 () Int)

(declare-fun call!182507 () Int)

(assert (=> b!2786979 (= e!1758894 call!182507)))

(declare-fun b!2786980 () Bool)

(declare-fun e!1758893 () Int)

(assert (=> b!2786980 (= e!1758894 e!1758893)))

(declare-fun c!452612 () Bool)

(assert (=> b!2786980 (= c!452612 (>= testedPSize!143 call!182507))))

(declare-fun b!2786981 () Bool)

(assert (=> b!2786981 (= e!1758893 (- call!182507 testedPSize!143))))

(declare-fun d!810789 () Bool)

(declare-fun e!1758892 () Bool)

(assert (=> d!810789 e!1758892))

(declare-fun res!1163021 () Bool)

(assert (=> d!810789 (=> (not res!1163021) (not e!1758892))))

(declare-fun lt!995763 () List!32356)

(assert (=> d!810789 (= res!1163021 (= ((_ map implies) (content!4521 lt!995763) (content!4521 lt!995676)) ((as const (InoxSet C!16456)) true)))))

(declare-fun e!1758891 () List!32356)

(assert (=> d!810789 (= lt!995763 e!1758891)))

(declare-fun c!452611 () Bool)

(assert (=> d!810789 (= c!452611 ((_ is Nil!32256) lt!995676))))

(assert (=> d!810789 (= (drop!1725 lt!995676 testedPSize!143) lt!995763)))

(declare-fun b!2786982 () Bool)

(assert (=> b!2786982 (= e!1758893 0)))

(declare-fun b!2786983 () Bool)

(assert (=> b!2786983 (= e!1758892 (= (size!25080 lt!995763) e!1758894))))

(declare-fun c!452610 () Bool)

(assert (=> b!2786983 (= c!452610 (<= testedPSize!143 0))))

(declare-fun b!2786984 () Bool)

(assert (=> b!2786984 (= e!1758891 Nil!32256)))

(declare-fun b!2786985 () Bool)

(declare-fun e!1758890 () List!32356)

(assert (=> b!2786985 (= e!1758890 lt!995676)))

(declare-fun bm!182502 () Bool)

(assert (=> bm!182502 (= call!182507 (size!25080 lt!995676))))

(declare-fun b!2786986 () Bool)

(assert (=> b!2786986 (= e!1758891 e!1758890)))

(declare-fun c!452609 () Bool)

(assert (=> b!2786986 (= c!452609 (<= testedPSize!143 0))))

(declare-fun b!2786987 () Bool)

(assert (=> b!2786987 (= e!1758890 (drop!1725 (t!228498 lt!995676) (- testedPSize!143 1)))))

(assert (= (and d!810789 c!452611) b!2786984))

(assert (= (and d!810789 (not c!452611)) b!2786986))

(assert (= (and b!2786986 c!452609) b!2786985))

(assert (= (and b!2786986 (not c!452609)) b!2786987))

(assert (= (and d!810789 res!1163021) b!2786983))

(assert (= (and b!2786983 c!452610) b!2786979))

(assert (= (and b!2786983 (not c!452610)) b!2786980))

(assert (= (and b!2786980 c!452612) b!2786982))

(assert (= (and b!2786980 (not c!452612)) b!2786981))

(assert (= (or b!2786979 b!2786980 b!2786981) bm!182502))

(declare-fun m!3217429 () Bool)

(assert (=> d!810789 m!3217429))

(declare-fun m!3217431 () Bool)

(assert (=> d!810789 m!3217431))

(declare-fun m!3217433 () Bool)

(assert (=> b!2786983 m!3217433))

(assert (=> bm!182502 m!3217249))

(declare-fun m!3217435 () Bool)

(assert (=> b!2786987 m!3217435))

(assert (=> b!2786836 d!810789))

(declare-fun d!810791 () Bool)

(declare-fun lt!995766 () C!16456)

(assert (=> d!810791 (= lt!995766 (apply!7547 (list!12143 totalInput!758) testedPSize!143))))

(declare-fun apply!7548 (Conc!10019 Int) C!16456)

(assert (=> d!810791 (= lt!995766 (apply!7548 (c!452570 totalInput!758) testedPSize!143))))

(declare-fun e!1758897 () Bool)

(assert (=> d!810791 e!1758897))

(declare-fun res!1163024 () Bool)

(assert (=> d!810791 (=> (not res!1163024) (not e!1758897))))

(assert (=> d!810791 (= res!1163024 (<= 0 testedPSize!143))))

(assert (=> d!810791 (= (apply!7546 totalInput!758 testedPSize!143) lt!995766)))

(declare-fun b!2786990 () Bool)

(assert (=> b!2786990 (= e!1758897 (< testedPSize!143 (size!25078 totalInput!758)))))

(assert (= (and d!810791 res!1163024) b!2786990))

(assert (=> d!810791 m!3217183))

(assert (=> d!810791 m!3217183))

(declare-fun m!3217437 () Bool)

(assert (=> d!810791 m!3217437))

(declare-fun m!3217439 () Bool)

(assert (=> d!810791 m!3217439))

(assert (=> b!2786990 m!3217205))

(assert (=> b!2786836 d!810791))

(declare-fun d!810793 () Bool)

(declare-fun lt!995769 () C!16456)

(declare-fun contains!6004 (List!32356 C!16456) Bool)

(assert (=> d!810793 (contains!6004 lt!995676 lt!995769)))

(declare-fun e!1758902 () C!16456)

(assert (=> d!810793 (= lt!995769 e!1758902)))

(declare-fun c!452615 () Bool)

(assert (=> d!810793 (= c!452615 (= testedPSize!143 0))))

(declare-fun e!1758903 () Bool)

(assert (=> d!810793 e!1758903))

(declare-fun res!1163027 () Bool)

(assert (=> d!810793 (=> (not res!1163027) (not e!1758903))))

(assert (=> d!810793 (= res!1163027 (<= 0 testedPSize!143))))

(assert (=> d!810793 (= (apply!7547 lt!995676 testedPSize!143) lt!995769)))

(declare-fun b!2786997 () Bool)

(assert (=> b!2786997 (= e!1758903 (< testedPSize!143 (size!25080 lt!995676)))))

(declare-fun b!2786998 () Bool)

(assert (=> b!2786998 (= e!1758902 (head!6171 lt!995676))))

(declare-fun b!2786999 () Bool)

(assert (=> b!2786999 (= e!1758902 (apply!7547 (tail!4403 lt!995676) (- testedPSize!143 1)))))

(assert (= (and d!810793 res!1163027) b!2786997))

(assert (= (and d!810793 c!452615) b!2786998))

(assert (= (and d!810793 (not c!452615)) b!2786999))

(declare-fun m!3217441 () Bool)

(assert (=> d!810793 m!3217441))

(assert (=> b!2786997 m!3217249))

(assert (=> b!2786998 m!3217333))

(assert (=> b!2786999 m!3217285))

(assert (=> b!2786999 m!3217285))

(declare-fun m!3217443 () Bool)

(assert (=> b!2786999 m!3217443))

(assert (=> b!2786836 d!810793))

(declare-fun d!810795 () Bool)

(assert (=> d!810795 (= (head!6171 (drop!1725 lt!995676 testedPSize!143)) (apply!7547 lt!995676 testedPSize!143))))

(declare-fun lt!995772 () Unit!46475)

(declare-fun choose!16358 (List!32356 Int) Unit!46475)

(assert (=> d!810795 (= lt!995772 (choose!16358 lt!995676 testedPSize!143))))

(declare-fun e!1758906 () Bool)

(assert (=> d!810795 e!1758906))

(declare-fun res!1163030 () Bool)

(assert (=> d!810795 (=> (not res!1163030) (not e!1758906))))

(assert (=> d!810795 (= res!1163030 (>= testedPSize!143 0))))

(assert (=> d!810795 (= (lemmaDropApply!931 lt!995676 testedPSize!143) lt!995772)))

(declare-fun b!2787002 () Bool)

(assert (=> b!2787002 (= e!1758906 (< testedPSize!143 (size!25080 lt!995676)))))

(assert (= (and d!810795 res!1163030) b!2787002))

(assert (=> d!810795 m!3217171))

(assert (=> d!810795 m!3217171))

(assert (=> d!810795 m!3217173))

(assert (=> d!810795 m!3217163))

(declare-fun m!3217445 () Bool)

(assert (=> d!810795 m!3217445))

(assert (=> b!2787002 m!3217249))

(assert (=> b!2786836 d!810795))

(declare-fun d!810797 () Bool)

(assert (=> d!810797 (= (head!6171 testedSuffix!143) (h!37676 testedSuffix!143))))

(assert (=> b!2786836 d!810797))

(declare-fun d!810799 () Bool)

(assert (=> d!810799 (and (= lt!995670 testedP!183) (= lt!995674 testedSuffix!143))))

(declare-fun lt!995775 () Unit!46475)

(declare-fun choose!16359 (List!32356 List!32356 List!32356 List!32356) Unit!46475)

(assert (=> d!810799 (= lt!995775 (choose!16359 lt!995670 lt!995674 testedP!183 testedSuffix!143))))

(assert (=> d!810799 (= (++!7968 lt!995670 lt!995674) (++!7968 testedP!183 testedSuffix!143))))

(assert (=> d!810799 (= (lemmaConcatSameAndSameSizesThenSameLists!358 lt!995670 lt!995674 testedP!183 testedSuffix!143) lt!995775)))

(declare-fun bs!510963 () Bool)

(assert (= bs!510963 d!810799))

(declare-fun m!3217447 () Bool)

(assert (=> bs!510963 m!3217447))

(assert (=> bs!510963 m!3217197))

(assert (=> bs!510963 m!3217191))

(assert (=> b!2786836 d!810799))

(declare-fun d!810801 () Bool)

(assert (=> d!810801 (= (head!6171 (drop!1725 lt!995676 testedPSize!143)) (h!37676 (drop!1725 lt!995676 testedPSize!143)))))

(assert (=> b!2786836 d!810801))

(declare-fun b!2787007 () Bool)

(declare-fun e!1758909 () Bool)

(declare-fun tp!883838 () Bool)

(assert (=> b!2787007 (= e!1758909 (and tp_is_empty!14111 tp!883838))))

(assert (=> b!2786863 (= tp!883819 e!1758909)))

(assert (= (and b!2786863 ((_ is Cons!32256) (t!228498 testedSuffix!143))) b!2787007))

(declare-fun condSetEmpty!23596 () Bool)

(assert (=> setNonEmpty!23593 (= condSetEmpty!23596 (= setRest!23593 ((as const (Array Context!4734 Bool)) false)))))

(declare-fun setRes!23596 () Bool)

(assert (=> setNonEmpty!23593 (= tp!883818 setRes!23596)))

(declare-fun setIsEmpty!23596 () Bool)

(assert (=> setIsEmpty!23596 setRes!23596))

(declare-fun tp!883844 () Bool)

(declare-fun setNonEmpty!23596 () Bool)

(declare-fun e!1758912 () Bool)

(declare-fun setElem!23596 () Context!4734)

(assert (=> setNonEmpty!23596 (= setRes!23596 (and tp!883844 (inv!43821 setElem!23596) e!1758912))))

(declare-fun setRest!23596 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23596 (= setRest!23593 ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23596 true) setRest!23596))))

(declare-fun b!2787012 () Bool)

(declare-fun tp!883843 () Bool)

(assert (=> b!2787012 (= e!1758912 tp!883843)))

(assert (= (and setNonEmpty!23593 condSetEmpty!23596) setIsEmpty!23596))

(assert (= (and setNonEmpty!23593 (not condSetEmpty!23596)) setNonEmpty!23596))

(assert (= setNonEmpty!23596 b!2787012))

(declare-fun m!3217449 () Bool)

(assert (=> setNonEmpty!23596 m!3217449))

(declare-fun tp!883868 () Bool)

(declare-fun e!1758927 () Bool)

(declare-fun e!1758925 () Bool)

(declare-fun setRes!23601 () Bool)

(declare-fun mapValue!17769 () List!32357)

(declare-fun b!2787027 () Bool)

(declare-fun tp!883867 () Bool)

(assert (=> b!2787027 (= e!1758927 (and tp!883868 (inv!43821 (_2!19285 (_1!19286 (h!37677 mapValue!17769)))) e!1758925 tp_is_empty!14111 setRes!23601 tp!883867))))

(declare-fun condSetEmpty!23602 () Bool)

(assert (=> b!2787027 (= condSetEmpty!23602 (= (_2!19286 (h!37677 mapValue!17769)) ((as const (Array Context!4734 Bool)) false)))))

(declare-fun tp!883875 () Bool)

(declare-fun e!1758928 () Bool)

(declare-fun setNonEmpty!23601 () Bool)

(declare-fun setElem!23601 () Context!4734)

(assert (=> setNonEmpty!23601 (= setRes!23601 (and tp!883875 (inv!43821 setElem!23601) e!1758928))))

(declare-fun setRest!23601 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23601 (= (_2!19286 (h!37677 mapValue!17769)) ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23601 true) setRest!23601))))

(declare-fun tp!883876 () Bool)

(declare-fun setRes!23602 () Bool)

(declare-fun setNonEmpty!23602 () Bool)

(declare-fun e!1758926 () Bool)

(declare-fun setElem!23602 () Context!4734)

(assert (=> setNonEmpty!23602 (= setRes!23602 (and tp!883876 (inv!43821 setElem!23602) e!1758926))))

(declare-fun mapDefault!17769 () List!32357)

(declare-fun setRest!23602 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23602 (= (_2!19286 (h!37677 mapDefault!17769)) ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23602 true) setRest!23602))))

(declare-fun b!2787028 () Bool)

(declare-fun tp!883874 () Bool)

(assert (=> b!2787028 (= e!1758926 tp!883874)))

(declare-fun b!2787029 () Bool)

(declare-fun tp!883870 () Bool)

(assert (=> b!2787029 (= e!1758928 tp!883870)))

(declare-fun condMapEmpty!17769 () Bool)

(assert (=> mapNonEmpty!17766 (= condMapEmpty!17769 (= mapRest!17766 ((as const (Array (_ BitVec 32) List!32357)) mapDefault!17769)))))

(declare-fun e!1758929 () Bool)

(declare-fun mapRes!17769 () Bool)

(assert (=> mapNonEmpty!17766 (= tp!883831 (and e!1758929 mapRes!17769))))

(declare-fun mapIsEmpty!17769 () Bool)

(assert (=> mapIsEmpty!17769 mapRes!17769))

(declare-fun setIsEmpty!23601 () Bool)

(assert (=> setIsEmpty!23601 setRes!23601))

(declare-fun b!2787030 () Bool)

(declare-fun tp!883877 () Bool)

(assert (=> b!2787030 (= e!1758925 tp!883877)))

(declare-fun mapNonEmpty!17769 () Bool)

(declare-fun tp!883873 () Bool)

(assert (=> mapNonEmpty!17769 (= mapRes!17769 (and tp!883873 e!1758927))))

(declare-fun mapRest!17769 () (Array (_ BitVec 32) List!32357))

(declare-fun mapKey!17769 () (_ BitVec 32))

(assert (=> mapNonEmpty!17769 (= mapRest!17766 (store mapRest!17769 mapKey!17769 mapValue!17769))))

(declare-fun setIsEmpty!23602 () Bool)

(assert (=> setIsEmpty!23602 setRes!23602))

(declare-fun b!2787031 () Bool)

(declare-fun e!1758930 () Bool)

(declare-fun tp!883872 () Bool)

(assert (=> b!2787031 (= e!1758930 tp!883872)))

(declare-fun b!2787032 () Bool)

(declare-fun tp!883869 () Bool)

(declare-fun tp!883871 () Bool)

(assert (=> b!2787032 (= e!1758929 (and tp!883871 (inv!43821 (_2!19285 (_1!19286 (h!37677 mapDefault!17769)))) e!1758930 tp_is_empty!14111 setRes!23602 tp!883869))))

(declare-fun condSetEmpty!23601 () Bool)

(assert (=> b!2787032 (= condSetEmpty!23601 (= (_2!19286 (h!37677 mapDefault!17769)) ((as const (Array Context!4734 Bool)) false)))))

(assert (= (and mapNonEmpty!17766 condMapEmpty!17769) mapIsEmpty!17769))

(assert (= (and mapNonEmpty!17766 (not condMapEmpty!17769)) mapNonEmpty!17769))

(assert (= b!2787027 b!2787030))

(assert (= (and b!2787027 condSetEmpty!23602) setIsEmpty!23601))

(assert (= (and b!2787027 (not condSetEmpty!23602)) setNonEmpty!23601))

(assert (= setNonEmpty!23601 b!2787029))

(assert (= (and mapNonEmpty!17769 ((_ is Cons!32257) mapValue!17769)) b!2787027))

(assert (= b!2787032 b!2787031))

(assert (= (and b!2787032 condSetEmpty!23601) setIsEmpty!23602))

(assert (= (and b!2787032 (not condSetEmpty!23601)) setNonEmpty!23602))

(assert (= setNonEmpty!23602 b!2787028))

(assert (= (and mapNonEmpty!17766 ((_ is Cons!32257) mapDefault!17769)) b!2787032))

(declare-fun m!3217451 () Bool)

(assert (=> b!2787032 m!3217451))

(declare-fun m!3217453 () Bool)

(assert (=> mapNonEmpty!17769 m!3217453))

(declare-fun m!3217455 () Bool)

(assert (=> b!2787027 m!3217455))

(declare-fun m!3217457 () Bool)

(assert (=> setNonEmpty!23602 m!3217457))

(declare-fun m!3217459 () Bool)

(assert (=> setNonEmpty!23601 m!3217459))

(declare-fun b!2787041 () Bool)

(declare-fun e!1758937 () Bool)

(declare-fun tp!883890 () Bool)

(assert (=> b!2787041 (= e!1758937 tp!883890)))

(declare-fun setIsEmpty!23605 () Bool)

(declare-fun setRes!23605 () Bool)

(assert (=> setIsEmpty!23605 setRes!23605))

(declare-fun e!1758939 () Bool)

(declare-fun tp!883892 () Bool)

(declare-fun b!2787042 () Bool)

(declare-fun tp!883889 () Bool)

(assert (=> b!2787042 (= e!1758939 (and tp!883889 (inv!43821 (_2!19285 (_1!19286 (h!37677 mapValue!17765)))) e!1758937 tp_is_empty!14111 setRes!23605 tp!883892))))

(declare-fun condSetEmpty!23605 () Bool)

(assert (=> b!2787042 (= condSetEmpty!23605 (= (_2!19286 (h!37677 mapValue!17765)) ((as const (Array Context!4734 Bool)) false)))))

(declare-fun b!2787043 () Bool)

(declare-fun e!1758938 () Bool)

(declare-fun tp!883888 () Bool)

(assert (=> b!2787043 (= e!1758938 tp!883888)))

(declare-fun tp!883891 () Bool)

(declare-fun setNonEmpty!23605 () Bool)

(declare-fun setElem!23605 () Context!4734)

(assert (=> setNonEmpty!23605 (= setRes!23605 (and tp!883891 (inv!43821 setElem!23605) e!1758938))))

(declare-fun setRest!23605 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23605 (= (_2!19286 (h!37677 mapValue!17765)) ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23605 true) setRest!23605))))

(assert (=> mapNonEmpty!17766 (= tp!883823 e!1758939)))

(assert (= b!2787042 b!2787041))

(assert (= (and b!2787042 condSetEmpty!23605) setIsEmpty!23605))

(assert (= (and b!2787042 (not condSetEmpty!23605)) setNonEmpty!23605))

(assert (= setNonEmpty!23605 b!2787043))

(assert (= (and mapNonEmpty!17766 ((_ is Cons!32257) mapValue!17765)) b!2787042))

(declare-fun m!3217461 () Bool)

(assert (=> b!2787042 m!3217461))

(declare-fun m!3217463 () Bool)

(assert (=> setNonEmpty!23605 m!3217463))

(declare-fun b!2787044 () Bool)

(declare-fun e!1758940 () Bool)

(declare-fun tp!883893 () Bool)

(assert (=> b!2787044 (= e!1758940 (and tp_is_empty!14111 tp!883893))))

(assert (=> b!2786849 (= tp!883835 e!1758940)))

(assert (= (and b!2786849 ((_ is Cons!32256) (t!228498 testedP!183))) b!2787044))

(declare-fun b!2787059 () Bool)

(declare-fun e!1758954 () Bool)

(declare-fun tp!883912 () Bool)

(assert (=> b!2787059 (= e!1758954 tp!883912)))

(declare-fun tp!883913 () Bool)

(declare-fun setRes!23610 () Bool)

(declare-fun mapValue!17772 () List!32355)

(declare-fun e!1758957 () Bool)

(declare-fun b!2787060 () Bool)

(assert (=> b!2787060 (= e!1758957 (and (inv!43821 (_1!19283 (_1!19284 (h!37675 mapValue!17772)))) e!1758954 tp_is_empty!14111 setRes!23610 tp!883913))))

(declare-fun condSetEmpty!23611 () Bool)

(assert (=> b!2787060 (= condSetEmpty!23611 (= (_2!19284 (h!37675 mapValue!17772)) ((as const (Array Context!4734 Bool)) false)))))

(declare-fun setRes!23611 () Bool)

(declare-fun e!1758956 () Bool)

(declare-fun tp!883919 () Bool)

(declare-fun setNonEmpty!23610 () Bool)

(declare-fun setElem!23611 () Context!4734)

(assert (=> setNonEmpty!23610 (= setRes!23611 (and tp!883919 (inv!43821 setElem!23611) e!1758956))))

(declare-fun mapDefault!17772 () List!32355)

(declare-fun setRest!23610 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23610 (= (_2!19284 (h!37675 mapDefault!17772)) ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23611 true) setRest!23610))))

(declare-fun b!2787061 () Bool)

(declare-fun e!1758955 () Bool)

(declare-fun tp!883920 () Bool)

(assert (=> b!2787061 (= e!1758955 tp!883920)))

(declare-fun condMapEmpty!17772 () Bool)

(assert (=> mapNonEmpty!17765 (= condMapEmpty!17772 (= mapRest!17765 ((as const (Array (_ BitVec 32) List!32355)) mapDefault!17772)))))

(declare-fun e!1758953 () Bool)

(declare-fun mapRes!17772 () Bool)

(assert (=> mapNonEmpty!17765 (= tp!883822 (and e!1758953 mapRes!17772))))

(declare-fun b!2787062 () Bool)

(declare-fun tp!883918 () Bool)

(assert (=> b!2787062 (= e!1758953 (and (inv!43821 (_1!19283 (_1!19284 (h!37675 mapDefault!17772)))) e!1758955 tp_is_empty!14111 setRes!23611 tp!883918))))

(declare-fun condSetEmpty!23610 () Bool)

(assert (=> b!2787062 (= condSetEmpty!23610 (= (_2!19284 (h!37675 mapDefault!17772)) ((as const (Array Context!4734 Bool)) false)))))

(declare-fun mapIsEmpty!17772 () Bool)

(assert (=> mapIsEmpty!17772 mapRes!17772))

(declare-fun tp!883917 () Bool)

(declare-fun setNonEmpty!23611 () Bool)

(declare-fun e!1758958 () Bool)

(declare-fun setElem!23610 () Context!4734)

(assert (=> setNonEmpty!23611 (= setRes!23610 (and tp!883917 (inv!43821 setElem!23610) e!1758958))))

(declare-fun setRest!23611 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23611 (= (_2!19284 (h!37675 mapValue!17772)) ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23610 true) setRest!23611))))

(declare-fun mapNonEmpty!17772 () Bool)

(declare-fun tp!883916 () Bool)

(assert (=> mapNonEmpty!17772 (= mapRes!17772 (and tp!883916 e!1758957))))

(declare-fun mapRest!17772 () (Array (_ BitVec 32) List!32355))

(declare-fun mapKey!17772 () (_ BitVec 32))

(assert (=> mapNonEmpty!17772 (= mapRest!17765 (store mapRest!17772 mapKey!17772 mapValue!17772))))

(declare-fun b!2787063 () Bool)

(declare-fun tp!883915 () Bool)

(assert (=> b!2787063 (= e!1758956 tp!883915)))

(declare-fun b!2787064 () Bool)

(declare-fun tp!883914 () Bool)

(assert (=> b!2787064 (= e!1758958 tp!883914)))

(declare-fun setIsEmpty!23610 () Bool)

(assert (=> setIsEmpty!23610 setRes!23610))

(declare-fun setIsEmpty!23611 () Bool)

(assert (=> setIsEmpty!23611 setRes!23611))

(assert (= (and mapNonEmpty!17765 condMapEmpty!17772) mapIsEmpty!17772))

(assert (= (and mapNonEmpty!17765 (not condMapEmpty!17772)) mapNonEmpty!17772))

(assert (= b!2787060 b!2787059))

(assert (= (and b!2787060 condSetEmpty!23611) setIsEmpty!23610))

(assert (= (and b!2787060 (not condSetEmpty!23611)) setNonEmpty!23611))

(assert (= setNonEmpty!23611 b!2787064))

(assert (= (and mapNonEmpty!17772 ((_ is Cons!32255) mapValue!17772)) b!2787060))

(assert (= b!2787062 b!2787061))

(assert (= (and b!2787062 condSetEmpty!23610) setIsEmpty!23611))

(assert (= (and b!2787062 (not condSetEmpty!23610)) setNonEmpty!23610))

(assert (= setNonEmpty!23610 b!2787063))

(assert (= (and mapNonEmpty!17765 ((_ is Cons!32255) mapDefault!17772)) b!2787062))

(declare-fun m!3217465 () Bool)

(assert (=> setNonEmpty!23610 m!3217465))

(declare-fun m!3217467 () Bool)

(assert (=> b!2787060 m!3217467))

(declare-fun m!3217469 () Bool)

(assert (=> setNonEmpty!23611 m!3217469))

(declare-fun m!3217471 () Bool)

(assert (=> b!2787062 m!3217471))

(declare-fun m!3217473 () Bool)

(assert (=> mapNonEmpty!17772 m!3217473))

(declare-fun setElem!23614 () Context!4734)

(declare-fun e!1758966 () Bool)

(declare-fun tp!883932 () Bool)

(declare-fun setRes!23614 () Bool)

(declare-fun setNonEmpty!23614 () Bool)

(assert (=> setNonEmpty!23614 (= setRes!23614 (and tp!883932 (inv!43821 setElem!23614) e!1758966))))

(declare-fun setRest!23614 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23614 (= (_2!19284 (h!37675 mapValue!17766)) ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23614 true) setRest!23614))))

(declare-fun setIsEmpty!23614 () Bool)

(assert (=> setIsEmpty!23614 setRes!23614))

(declare-fun b!2787073 () Bool)

(declare-fun e!1758965 () Bool)

(declare-fun tp!883931 () Bool)

(assert (=> b!2787073 (= e!1758965 tp!883931)))

(declare-fun b!2787074 () Bool)

(declare-fun tp!883929 () Bool)

(assert (=> b!2787074 (= e!1758966 tp!883929)))

(declare-fun e!1758967 () Bool)

(assert (=> mapNonEmpty!17765 (= tp!883834 e!1758967)))

(declare-fun tp!883930 () Bool)

(declare-fun b!2787075 () Bool)

(assert (=> b!2787075 (= e!1758967 (and (inv!43821 (_1!19283 (_1!19284 (h!37675 mapValue!17766)))) e!1758965 tp_is_empty!14111 setRes!23614 tp!883930))))

(declare-fun condSetEmpty!23614 () Bool)

(assert (=> b!2787075 (= condSetEmpty!23614 (= (_2!19284 (h!37675 mapValue!17766)) ((as const (Array Context!4734 Bool)) false)))))

(assert (= b!2787075 b!2787073))

(assert (= (and b!2787075 condSetEmpty!23614) setIsEmpty!23614))

(assert (= (and b!2787075 (not condSetEmpty!23614)) setNonEmpty!23614))

(assert (= setNonEmpty!23614 b!2787074))

(assert (= (and mapNonEmpty!17765 ((_ is Cons!32255) mapValue!17766)) b!2787075))

(declare-fun m!3217475 () Bool)

(assert (=> setNonEmpty!23614 m!3217475))

(declare-fun m!3217477 () Bool)

(assert (=> b!2787075 m!3217477))

(declare-fun e!1758969 () Bool)

(declare-fun tp!883936 () Bool)

(declare-fun setNonEmpty!23615 () Bool)

(declare-fun setRes!23615 () Bool)

(declare-fun setElem!23615 () Context!4734)

(assert (=> setNonEmpty!23615 (= setRes!23615 (and tp!883936 (inv!43821 setElem!23615) e!1758969))))

(declare-fun setRest!23615 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23615 (= (_2!19284 (h!37675 mapDefault!17766)) ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23615 true) setRest!23615))))

(declare-fun setIsEmpty!23615 () Bool)

(assert (=> setIsEmpty!23615 setRes!23615))

(declare-fun b!2787076 () Bool)

(declare-fun e!1758968 () Bool)

(declare-fun tp!883935 () Bool)

(assert (=> b!2787076 (= e!1758968 tp!883935)))

(declare-fun b!2787077 () Bool)

(declare-fun tp!883933 () Bool)

(assert (=> b!2787077 (= e!1758969 tp!883933)))

(declare-fun e!1758970 () Bool)

(assert (=> b!2786839 (= tp!883832 e!1758970)))

(declare-fun tp!883934 () Bool)

(declare-fun b!2787078 () Bool)

(assert (=> b!2787078 (= e!1758970 (and (inv!43821 (_1!19283 (_1!19284 (h!37675 mapDefault!17766)))) e!1758968 tp_is_empty!14111 setRes!23615 tp!883934))))

(declare-fun condSetEmpty!23615 () Bool)

(assert (=> b!2787078 (= condSetEmpty!23615 (= (_2!19284 (h!37675 mapDefault!17766)) ((as const (Array Context!4734 Bool)) false)))))

(assert (= b!2787078 b!2787076))

(assert (= (and b!2787078 condSetEmpty!23615) setIsEmpty!23615))

(assert (= (and b!2787078 (not condSetEmpty!23615)) setNonEmpty!23615))

(assert (= setNonEmpty!23615 b!2787077))

(assert (= (and b!2786839 ((_ is Cons!32255) mapDefault!17766)) b!2787078))

(declare-fun m!3217479 () Bool)

(assert (=> setNonEmpty!23615 m!3217479))

(declare-fun m!3217481 () Bool)

(assert (=> b!2787078 m!3217481))

(declare-fun b!2787079 () Bool)

(declare-fun e!1758971 () Bool)

(declare-fun tp!883939 () Bool)

(assert (=> b!2787079 (= e!1758971 tp!883939)))

(declare-fun setIsEmpty!23616 () Bool)

(declare-fun setRes!23616 () Bool)

(assert (=> setIsEmpty!23616 setRes!23616))

(declare-fun e!1758973 () Bool)

(declare-fun tp!883938 () Bool)

(declare-fun tp!883941 () Bool)

(declare-fun b!2787080 () Bool)

(assert (=> b!2787080 (= e!1758973 (and tp!883938 (inv!43821 (_2!19285 (_1!19286 (h!37677 (zeroValue!4156 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009)))))))))) e!1758971 tp_is_empty!14111 setRes!23616 tp!883941))))

(declare-fun condSetEmpty!23616 () Bool)

(assert (=> b!2787080 (= condSetEmpty!23616 (= (_2!19286 (h!37677 (zeroValue!4156 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009)))))))) ((as const (Array Context!4734 Bool)) false)))))

(declare-fun b!2787081 () Bool)

(declare-fun e!1758972 () Bool)

(declare-fun tp!883937 () Bool)

(assert (=> b!2787081 (= e!1758972 tp!883937)))

(declare-fun setNonEmpty!23616 () Bool)

(declare-fun setElem!23616 () Context!4734)

(declare-fun tp!883940 () Bool)

(assert (=> setNonEmpty!23616 (= setRes!23616 (and tp!883940 (inv!43821 setElem!23616) e!1758972))))

(declare-fun setRest!23616 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23616 (= (_2!19286 (h!37677 (zeroValue!4156 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23616 true) setRest!23616))))

(assert (=> b!2786856 (= tp!883830 e!1758973)))

(assert (= b!2787080 b!2787079))

(assert (= (and b!2787080 condSetEmpty!23616) setIsEmpty!23616))

(assert (= (and b!2787080 (not condSetEmpty!23616)) setNonEmpty!23616))

(assert (= setNonEmpty!23616 b!2787081))

(assert (= (and b!2786856 ((_ is Cons!32257) (zeroValue!4156 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009)))))))) b!2787080))

(declare-fun m!3217483 () Bool)

(assert (=> b!2787080 m!3217483))

(declare-fun m!3217485 () Bool)

(assert (=> setNonEmpty!23616 m!3217485))

(declare-fun b!2787082 () Bool)

(declare-fun e!1758974 () Bool)

(declare-fun tp!883944 () Bool)

(assert (=> b!2787082 (= e!1758974 tp!883944)))

(declare-fun setIsEmpty!23617 () Bool)

(declare-fun setRes!23617 () Bool)

(assert (=> setIsEmpty!23617 setRes!23617))

(declare-fun e!1758976 () Bool)

(declare-fun tp!883946 () Bool)

(declare-fun tp!883943 () Bool)

(declare-fun b!2787083 () Bool)

(assert (=> b!2787083 (= e!1758976 (and tp!883943 (inv!43821 (_2!19285 (_1!19286 (h!37677 (minValue!4156 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009)))))))))) e!1758974 tp_is_empty!14111 setRes!23617 tp!883946))))

(declare-fun condSetEmpty!23617 () Bool)

(assert (=> b!2787083 (= condSetEmpty!23617 (= (_2!19286 (h!37677 (minValue!4156 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009)))))))) ((as const (Array Context!4734 Bool)) false)))))

(declare-fun b!2787084 () Bool)

(declare-fun e!1758975 () Bool)

(declare-fun tp!883942 () Bool)

(assert (=> b!2787084 (= e!1758975 tp!883942)))

(declare-fun setNonEmpty!23617 () Bool)

(declare-fun tp!883945 () Bool)

(declare-fun setElem!23617 () Context!4734)

(assert (=> setNonEmpty!23617 (= setRes!23617 (and tp!883945 (inv!43821 setElem!23617) e!1758975))))

(declare-fun setRest!23617 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23617 (= (_2!19286 (h!37677 (minValue!4156 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23617 true) setRest!23617))))

(assert (=> b!2786856 (= tp!883820 e!1758976)))

(assert (= b!2787083 b!2787082))

(assert (= (and b!2787083 condSetEmpty!23617) setIsEmpty!23617))

(assert (= (and b!2787083 (not condSetEmpty!23617)) setNonEmpty!23617))

(assert (= setNonEmpty!23617 b!2787084))

(assert (= (and b!2786856 ((_ is Cons!32257) (minValue!4156 (v!33861 (underlying!7997 (v!33862 (underlying!7998 (cache!3946 cacheDown!1009)))))))) b!2787083))

(declare-fun m!3217487 () Bool)

(assert (=> b!2787083 m!3217487))

(declare-fun m!3217489 () Bool)

(assert (=> setNonEmpty!23617 m!3217489))

(declare-fun tp!883950 () Bool)

(declare-fun setRes!23618 () Bool)

(declare-fun setElem!23618 () Context!4734)

(declare-fun setNonEmpty!23618 () Bool)

(declare-fun e!1758978 () Bool)

(assert (=> setNonEmpty!23618 (= setRes!23618 (and tp!883950 (inv!43821 setElem!23618) e!1758978))))

(declare-fun setRest!23618 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23618 (= (_2!19284 (h!37675 (zeroValue!4155 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23618 true) setRest!23618))))

(declare-fun setIsEmpty!23618 () Bool)

(assert (=> setIsEmpty!23618 setRes!23618))

(declare-fun b!2787085 () Bool)

(declare-fun e!1758977 () Bool)

(declare-fun tp!883949 () Bool)

(assert (=> b!2787085 (= e!1758977 tp!883949)))

(declare-fun b!2787086 () Bool)

(declare-fun tp!883947 () Bool)

(assert (=> b!2787086 (= e!1758978 tp!883947)))

(declare-fun e!1758979 () Bool)

(assert (=> b!2786841 (= tp!883821 e!1758979)))

(declare-fun b!2787087 () Bool)

(declare-fun tp!883948 () Bool)

(assert (=> b!2787087 (= e!1758979 (and (inv!43821 (_1!19283 (_1!19284 (h!37675 (zeroValue!4155 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890)))))))))) e!1758977 tp_is_empty!14111 setRes!23618 tp!883948))))

(declare-fun condSetEmpty!23618 () Bool)

(assert (=> b!2787087 (= condSetEmpty!23618 (= (_2!19284 (h!37675 (zeroValue!4155 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890)))))))) ((as const (Array Context!4734 Bool)) false)))))

(assert (= b!2787087 b!2787085))

(assert (= (and b!2787087 condSetEmpty!23618) setIsEmpty!23618))

(assert (= (and b!2787087 (not condSetEmpty!23618)) setNonEmpty!23618))

(assert (= setNonEmpty!23618 b!2787086))

(assert (= (and b!2786841 ((_ is Cons!32255) (zeroValue!4155 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890)))))))) b!2787087))

(declare-fun m!3217491 () Bool)

(assert (=> setNonEmpty!23618 m!3217491))

(declare-fun m!3217493 () Bool)

(assert (=> b!2787087 m!3217493))

(declare-fun setElem!23619 () Context!4734)

(declare-fun setRes!23619 () Bool)

(declare-fun e!1758981 () Bool)

(declare-fun tp!883954 () Bool)

(declare-fun setNonEmpty!23619 () Bool)

(assert (=> setNonEmpty!23619 (= setRes!23619 (and tp!883954 (inv!43821 setElem!23619) e!1758981))))

(declare-fun setRest!23619 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23619 (= (_2!19284 (h!37675 (minValue!4155 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23619 true) setRest!23619))))

(declare-fun setIsEmpty!23619 () Bool)

(assert (=> setIsEmpty!23619 setRes!23619))

(declare-fun b!2787088 () Bool)

(declare-fun e!1758980 () Bool)

(declare-fun tp!883953 () Bool)

(assert (=> b!2787088 (= e!1758980 tp!883953)))

(declare-fun b!2787089 () Bool)

(declare-fun tp!883951 () Bool)

(assert (=> b!2787089 (= e!1758981 tp!883951)))

(declare-fun e!1758982 () Bool)

(assert (=> b!2786841 (= tp!883828 e!1758982)))

(declare-fun tp!883952 () Bool)

(declare-fun b!2787090 () Bool)

(assert (=> b!2787090 (= e!1758982 (and (inv!43821 (_1!19283 (_1!19284 (h!37675 (minValue!4155 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890)))))))))) e!1758980 tp_is_empty!14111 setRes!23619 tp!883952))))

(declare-fun condSetEmpty!23619 () Bool)

(assert (=> b!2787090 (= condSetEmpty!23619 (= (_2!19284 (h!37675 (minValue!4155 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890)))))))) ((as const (Array Context!4734 Bool)) false)))))

(assert (= b!2787090 b!2787088))

(assert (= (and b!2787090 condSetEmpty!23619) setIsEmpty!23619))

(assert (= (and b!2787090 (not condSetEmpty!23619)) setNonEmpty!23619))

(assert (= setNonEmpty!23619 b!2787089))

(assert (= (and b!2786841 ((_ is Cons!32255) (minValue!4155 (v!33859 (underlying!7995 (v!33860 (underlying!7996 (cache!3945 cacheUp!890)))))))) b!2787090))

(declare-fun m!3217495 () Bool)

(assert (=> setNonEmpty!23619 m!3217495))

(declare-fun m!3217497 () Bool)

(assert (=> b!2787090 m!3217497))

(declare-fun b!2787091 () Bool)

(declare-fun e!1758983 () Bool)

(declare-fun tp!883957 () Bool)

(assert (=> b!2787091 (= e!1758983 tp!883957)))

(declare-fun setIsEmpty!23620 () Bool)

(declare-fun setRes!23620 () Bool)

(assert (=> setIsEmpty!23620 setRes!23620))

(declare-fun tp!883956 () Bool)

(declare-fun b!2787092 () Bool)

(declare-fun tp!883959 () Bool)

(declare-fun e!1758985 () Bool)

(assert (=> b!2787092 (= e!1758985 (and tp!883956 (inv!43821 (_2!19285 (_1!19286 (h!37677 mapDefault!17765)))) e!1758983 tp_is_empty!14111 setRes!23620 tp!883959))))

(declare-fun condSetEmpty!23620 () Bool)

(assert (=> b!2787092 (= condSetEmpty!23620 (= (_2!19286 (h!37677 mapDefault!17765)) ((as const (Array Context!4734 Bool)) false)))))

(declare-fun b!2787093 () Bool)

(declare-fun e!1758984 () Bool)

(declare-fun tp!883955 () Bool)

(assert (=> b!2787093 (= e!1758984 tp!883955)))

(declare-fun setNonEmpty!23620 () Bool)

(declare-fun setElem!23620 () Context!4734)

(declare-fun tp!883958 () Bool)

(assert (=> setNonEmpty!23620 (= setRes!23620 (and tp!883958 (inv!43821 setElem!23620) e!1758984))))

(declare-fun setRest!23620 () (InoxSet Context!4734))

(assert (=> setNonEmpty!23620 (= (_2!19286 (h!37677 mapDefault!17765)) ((_ map or) (store ((as const (Array Context!4734 Bool)) false) setElem!23620 true) setRest!23620))))

(assert (=> b!2786861 (= tp!883817 e!1758985)))

(assert (= b!2787092 b!2787091))

(assert (= (and b!2787092 condSetEmpty!23620) setIsEmpty!23620))

(assert (= (and b!2787092 (not condSetEmpty!23620)) setNonEmpty!23620))

(assert (= setNonEmpty!23620 b!2787093))

(assert (= (and b!2786861 ((_ is Cons!32257) mapDefault!17765)) b!2787092))

(declare-fun m!3217499 () Bool)

(assert (=> b!2787092 m!3217499))

(declare-fun m!3217501 () Bool)

(assert (=> setNonEmpty!23620 m!3217501))

(declare-fun b!2787098 () Bool)

(declare-fun e!1758988 () Bool)

(declare-fun tp!883964 () Bool)

(declare-fun tp!883965 () Bool)

(assert (=> b!2787098 (= e!1758988 (and tp!883964 tp!883965))))

(assert (=> b!2786845 (= tp!883833 e!1758988)))

(assert (= (and b!2786845 ((_ is Cons!32254) (exprs!2867 setElem!23593))) b!2787098))

(declare-fun tp!883974 () Bool)

(declare-fun e!1758994 () Bool)

(declare-fun b!2787107 () Bool)

(declare-fun tp!883972 () Bool)

(assert (=> b!2787107 (= e!1758994 (and (inv!43825 (left!24485 (c!452570 totalInput!758))) tp!883972 (inv!43825 (right!24815 (c!452570 totalInput!758))) tp!883974))))

(declare-fun b!2787109 () Bool)

(declare-fun e!1758993 () Bool)

(declare-fun tp!883973 () Bool)

(assert (=> b!2787109 (= e!1758993 tp!883973)))

(declare-fun b!2787108 () Bool)

(declare-fun inv!43828 (IArray!20043) Bool)

(assert (=> b!2787108 (= e!1758994 (and (inv!43828 (xs!13130 (c!452570 totalInput!758))) e!1758993))))

(assert (=> b!2786865 (= tp!883825 (and (inv!43825 (c!452570 totalInput!758)) e!1758994))))

(assert (= (and b!2786865 ((_ is Node!10019) (c!452570 totalInput!758))) b!2787107))

(assert (= b!2787108 b!2787109))

(assert (= (and b!2786865 ((_ is Leaf!15262) (c!452570 totalInput!758))) b!2787108))

(declare-fun m!3217503 () Bool)

(assert (=> b!2787107 m!3217503))

(declare-fun m!3217505 () Bool)

(assert (=> b!2787107 m!3217505))

(declare-fun m!3217507 () Bool)

(assert (=> b!2787108 m!3217507))

(assert (=> b!2786865 m!3217253))

(check-sat (not d!810725) (not b!2787041) (not b!2786960) (not b!2787086) (not mapNonEmpty!17769) (not setNonEmpty!23620) (not b!2786946) (not b!2787084) (not b!2786987) (not d!810799) (not d!810769) (not setNonEmpty!23605) (not d!810791) (not b!2786935) (not setNonEmpty!23619) (not b!2787030) (not b!2787098) (not bm!182498) (not b!2786951) (not b!2787090) (not b!2787093) (not b!2787080) (not d!810795) (not d!810735) b_and!203561 (not d!810713) (not d!810723) (not b!2787059) (not setNonEmpty!23616) (not setNonEmpty!23596) (not d!810757) (not d!810709) (not d!810741) (not b!2786922) (not b!2786913) (not d!810759) (not b!2787079) b_and!203559 (not b!2787044) (not b!2787077) b_and!203563 (not d!810775) (not b!2786886) (not d!810753) (not d!810733) (not b!2787028) (not d!810727) (not b!2787083) (not b!2786875) (not b!2787088) (not b!2786945) (not setNonEmpty!23602) (not d!810765) (not b!2786897) (not b!2787076) (not d!810779) (not b_next!79531) (not b!2787007) (not b!2787063) (not b!2787002) (not b!2786927) (not b!2786950) (not b!2786914) (not b!2787075) (not b!2786898) (not mapNonEmpty!17772) (not b!2787029) (not b!2786997) (not b!2787092) (not d!810729) (not b!2787073) (not b!2787089) (not b!2786928) (not b!2786942) (not b!2787060) (not b!2787107) b_and!203565 (not b!2786990) (not d!810721) (not setNonEmpty!23614) (not b_next!79525) (not b!2786932) (not b!2786958) (not b!2787087) (not bm!182502) (not b!2786947) (not b_next!79529) (not b!2787091) (not b!2786873) (not b!2786881) (not d!810777) (not setNonEmpty!23610) (not b!2786933) (not b!2787082) (not setNonEmpty!23618) (not b!2786949) (not b!2786901) (not setNonEmpty!23601) (not b!2786917) (not d!810793) (not d!810755) (not b!2787078) (not d!810773) (not b!2787061) (not b_next!79527) tp_is_empty!14111 (not setNonEmpty!23615) (not b!2786931) (not b!2787064) (not b!2787108) (not bm!182499) (not b!2786999) (not b!2786998) (not b!2786936) (not b!2787109) (not b!2786925) (not b!2787074) (not b!2786918) (not d!810789) (not d!810771) (not b!2787012) (not d!810749) (not b!2787085) (not b!2787062) (not b!2786865) (not d!810745) (not d!810739) (not setNonEmpty!23617) (not b!2786943) (not b!2787031) (not b!2786902) (not b!2787042) (not b!2786880) (not b!2787081) (not b!2787027) (not setNonEmpty!23611) (not d!810785) (not b!2787043) (not b!2786915) (not b!2787032) (not b!2786983))
(check-sat b_and!203561 b_and!203559 b_and!203563 (not b_next!79531) b_and!203565 (not b_next!79525) (not b_next!79529) (not b_next!79527))
