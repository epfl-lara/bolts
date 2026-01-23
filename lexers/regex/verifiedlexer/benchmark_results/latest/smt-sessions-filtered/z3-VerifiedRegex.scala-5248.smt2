; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269660 () Bool)

(assert start!269660)

(declare-fun b!2789291 () Bool)

(declare-fun b_free!78917 () Bool)

(declare-fun b_next!79621 () Bool)

(assert (=> b!2789291 (= b_free!78917 (not b_next!79621))))

(declare-fun tp!885199 () Bool)

(declare-fun b_and!203655 () Bool)

(assert (=> b!2789291 (= tp!885199 b_and!203655)))

(declare-fun b!2789277 () Bool)

(declare-fun b_free!78919 () Bool)

(declare-fun b_next!79623 () Bool)

(assert (=> b!2789277 (= b_free!78919 (not b_next!79623))))

(declare-fun tp!885206 () Bool)

(declare-fun b_and!203657 () Bool)

(assert (=> b!2789277 (= tp!885206 b_and!203657)))

(declare-fun b!2789280 () Bool)

(declare-fun b_free!78921 () Bool)

(declare-fun b_next!79625 () Bool)

(assert (=> b!2789280 (= b_free!78921 (not b_next!79625))))

(declare-fun tp!885205 () Bool)

(declare-fun b_and!203659 () Bool)

(assert (=> b!2789280 (= tp!885205 b_and!203659)))

(declare-fun b!2789292 () Bool)

(declare-fun b_free!78923 () Bool)

(declare-fun b_next!79627 () Bool)

(assert (=> b!2789292 (= b_free!78923 (not b_next!79627))))

(declare-fun tp!885197 () Bool)

(declare-fun b_and!203661 () Bool)

(assert (=> b!2789292 (= tp!885197 b_and!203661)))

(declare-fun b!2789263 () Bool)

(declare-fun e!1760786 () Bool)

(declare-fun tp_is_empty!14135 () Bool)

(declare-fun tp!885212 () Bool)

(assert (=> b!2789263 (= e!1760786 (and tp_is_empty!14135 tp!885212))))

(declare-fun mapIsEmpty!17867 () Bool)

(declare-fun mapRes!17867 () Bool)

(assert (=> mapIsEmpty!17867 mapRes!17867))

(declare-fun mapIsEmpty!17868 () Bool)

(declare-fun mapRes!17868 () Bool)

(assert (=> mapIsEmpty!17868 mapRes!17868))

(declare-fun b!2789264 () Bool)

(declare-fun e!1760787 () Bool)

(declare-fun tp!885214 () Bool)

(assert (=> b!2789264 (= e!1760787 (and tp!885214 mapRes!17868))))

(declare-fun condMapEmpty!17867 () Bool)

(declare-datatypes ((C!16480 0))(
  ( (C!16481 (val!10174 Int)) )
))
(declare-datatypes ((array!13944 0))(
  ( (array!13945 (arr!6213 (Array (_ BitVec 32) (_ BitVec 64))) (size!25132 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8161 0))(
  ( (ElementMatch!8161 (c!452851 C!16480)) (Concat!13249 (regOne!16834 Regex!8161) (regTwo!16834 Regex!8161)) (EmptyExpr!8161) (Star!8161 (reg!8490 Regex!8161)) (EmptyLang!8161) (Union!8161 (regOne!16835 Regex!8161) (regTwo!16835 Regex!8161)) )
))
(declare-datatypes ((List!32404 0))(
  ( (Nil!32304) (Cons!32304 (h!37724 Regex!8161) (t!228546 List!32404)) )
))
(declare-datatypes ((Context!4758 0))(
  ( (Context!4759 (exprs!2879 List!32404)) )
))
(declare-datatypes ((tuple3!5046 0))(
  ( (tuple3!5047 (_1!19353 Regex!8161) (_2!19353 Context!4758) (_3!2993 C!16480)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32720 0))(
  ( (tuple2!32721 (_1!19354 tuple3!5046) (_2!19354 (InoxSet Context!4758))) )
))
(declare-datatypes ((List!32405 0))(
  ( (Nil!32305) (Cons!32305 (h!37725 tuple2!32720) (t!228547 List!32405)) )
))
(declare-datatypes ((array!13946 0))(
  ( (array!13947 (arr!6214 (Array (_ BitVec 32) List!32405)) (size!25133 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7838 0))(
  ( (LongMapFixedSize!7839 (defaultEntry!4304 Int) (mask!9736 (_ BitVec 32)) (extraKeys!4168 (_ BitVec 32)) (zeroValue!4178 List!32405) (minValue!4178 List!32405) (_size!7881 (_ BitVec 32)) (_keys!4219 array!13944) (_values!4200 array!13946) (_vacant!3980 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15485 0))(
  ( (Cell!15486 (v!33910 LongMapFixedSize!7838)) )
))
(declare-datatypes ((MutLongMap!3919 0))(
  ( (LongMap!3919 (underlying!8041 Cell!15485)) (MutLongMapExt!3918 (__x!21407 Int)) )
))
(declare-datatypes ((Cell!15487 0))(
  ( (Cell!15488 (v!33911 MutLongMap!3919)) )
))
(declare-datatypes ((Hashable!3835 0))(
  ( (HashableExt!3834 (__x!21408 Int)) )
))
(declare-datatypes ((MutableMap!3825 0))(
  ( (MutableMapExt!3824 (__x!21409 Int)) (HashMap!3825 (underlying!8042 Cell!15487) (hashF!5867 Hashable!3835) (_size!7882 (_ BitVec 32)) (defaultValue!3996 Int)) )
))
(declare-datatypes ((CacheDown!2650 0))(
  ( (CacheDown!2651 (cache!3968 MutableMap!3825)) )
))
(declare-fun cacheDown!1009 () CacheDown!2650)

(declare-fun mapDefault!17867 () List!32405)

(assert (=> b!2789264 (= condMapEmpty!17867 (= (arr!6214 (_values!4200 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32405)) mapDefault!17867)))))

(declare-fun b!2789265 () Bool)

(declare-fun e!1760769 () Bool)

(declare-fun e!1760783 () Bool)

(assert (=> b!2789265 (= e!1760769 e!1760783)))

(declare-fun res!1163785 () Bool)

(assert (=> b!2789265 (=> (not res!1163785) (not e!1760783))))

(declare-fun totalInputSize!205 () Int)

(declare-fun lt!996966 () Int)

(assert (=> b!2789265 (= res!1163785 (= totalInputSize!205 lt!996966))))

(declare-datatypes ((List!32406 0))(
  ( (Nil!32306) (Cons!32306 (h!37726 C!16480) (t!228548 List!32406)) )
))
(declare-datatypes ((IArray!20061 0))(
  ( (IArray!20062 (innerList!10088 List!32406)) )
))
(declare-datatypes ((Conc!10028 0))(
  ( (Node!10028 (left!24500 Conc!10028) (right!24830 Conc!10028) (csize!20286 Int) (cheight!10239 Int)) (Leaf!15277 (xs!13139 IArray!20061) (csize!20287 Int)) (Empty!10028) )
))
(declare-datatypes ((BalanceConc!19670 0))(
  ( (BalanceConc!19671 (c!452852 Conc!10028)) )
))
(declare-fun totalInput!758 () BalanceConc!19670)

(declare-fun size!25134 (BalanceConc!19670) Int)

(assert (=> b!2789265 (= lt!996966 (size!25134 totalInput!758))))

(declare-fun b!2789266 () Bool)

(declare-fun e!1760790 () Bool)

(declare-fun e!1760764 () Bool)

(assert (=> b!2789266 (= e!1760790 e!1760764)))

(declare-fun b!2789267 () Bool)

(declare-datatypes ((Unit!46522 0))(
  ( (Unit!46523) )
))
(declare-fun e!1760784 () Unit!46522)

(declare-fun Unit!46524 () Unit!46522)

(assert (=> b!2789267 (= e!1760784 Unit!46524)))

(declare-fun b!2789268 () Bool)

(declare-fun e!1760767 () Bool)

(declare-fun e!1760791 () Bool)

(assert (=> b!2789268 (= e!1760767 e!1760791)))

(declare-fun b!2789269 () Bool)

(declare-fun e!1760772 () Bool)

(declare-fun testedSuffix!143 () List!32406)

(assert (=> b!2789269 (= e!1760772 (not (= testedSuffix!143 Nil!32306)))))

(declare-datatypes ((Hashable!3836 0))(
  ( (HashableExt!3835 (__x!21410 Int)) )
))
(declare-datatypes ((tuple2!32722 0))(
  ( (tuple2!32723 (_1!19355 Context!4758) (_2!19355 C!16480)) )
))
(declare-datatypes ((tuple2!32724 0))(
  ( (tuple2!32725 (_1!19356 tuple2!32722) (_2!19356 (InoxSet Context!4758))) )
))
(declare-datatypes ((List!32407 0))(
  ( (Nil!32307) (Cons!32307 (h!37727 tuple2!32724) (t!228549 List!32407)) )
))
(declare-datatypes ((array!13948 0))(
  ( (array!13949 (arr!6215 (Array (_ BitVec 32) List!32407)) (size!25135 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7840 0))(
  ( (LongMapFixedSize!7841 (defaultEntry!4305 Int) (mask!9737 (_ BitVec 32)) (extraKeys!4169 (_ BitVec 32)) (zeroValue!4179 List!32407) (minValue!4179 List!32407) (_size!7883 (_ BitVec 32)) (_keys!4220 array!13944) (_values!4201 array!13948) (_vacant!3981 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15489 0))(
  ( (Cell!15490 (v!33912 LongMapFixedSize!7840)) )
))
(declare-datatypes ((MutLongMap!3920 0))(
  ( (LongMap!3920 (underlying!8043 Cell!15489)) (MutLongMapExt!3919 (__x!21411 Int)) )
))
(declare-datatypes ((Cell!15491 0))(
  ( (Cell!15492 (v!33913 MutLongMap!3920)) )
))
(declare-datatypes ((MutableMap!3826 0))(
  ( (MutableMapExt!3825 (__x!21412 Int)) (HashMap!3826 (underlying!8044 Cell!15491) (hashF!5868 Hashable!3836) (_size!7884 (_ BitVec 32)) (defaultValue!3997 Int)) )
))
(declare-datatypes ((CacheUp!2532 0))(
  ( (CacheUp!2533 (cache!3969 MutableMap!3826)) )
))
(declare-fun cacheUp!890 () CacheUp!2532)

(declare-fun lt!996970 () C!16480)

(declare-fun z!3684 () (InoxSet Context!4758))

(declare-datatypes ((tuple3!5048 0))(
  ( (tuple3!5049 (_1!19357 (InoxSet Context!4758)) (_2!19357 CacheUp!2532) (_3!2994 CacheDown!2650)) )
))
(declare-fun lt!996967 () tuple3!5048)

(declare-fun derivationStepZipperMem!106 ((InoxSet Context!4758) C!16480 CacheUp!2532 CacheDown!2650) tuple3!5048)

(assert (=> b!2789269 (= lt!996967 (derivationStepZipperMem!106 z!3684 lt!996970 cacheUp!890 cacheDown!1009))))

(declare-fun b!2789270 () Bool)

(declare-fun e!1760781 () Bool)

(assert (=> b!2789270 (= e!1760781 e!1760769)))

(declare-fun res!1163776 () Bool)

(assert (=> b!2789270 (=> (not res!1163776) (not e!1760769))))

(declare-fun testedPSize!143 () Int)

(declare-fun lt!996965 () Int)

(assert (=> b!2789270 (= res!1163776 (= testedPSize!143 lt!996965))))

(declare-fun testedP!183 () List!32406)

(declare-fun size!25136 (List!32406) Int)

(assert (=> b!2789270 (= lt!996965 (size!25136 testedP!183))))

(declare-fun b!2789271 () Bool)

(declare-fun res!1163779 () Bool)

(assert (=> b!2789271 (=> (not res!1163779) (not e!1760783))))

(declare-fun valid!3061 (CacheDown!2650) Bool)

(assert (=> b!2789271 (= res!1163779 (valid!3061 cacheDown!1009))))

(declare-fun b!2789272 () Bool)

(declare-fun e!1760780 () Bool)

(declare-fun tp!885208 () Bool)

(assert (=> b!2789272 (= e!1760780 (and tp_is_empty!14135 tp!885208))))

(declare-fun b!2789273 () Bool)

(declare-fun res!1163782 () Bool)

(declare-fun e!1760776 () Bool)

(assert (=> b!2789273 (=> res!1163782 e!1760776)))

(declare-datatypes ((tuple2!32726 0))(
  ( (tuple2!32727 (_1!19358 BalanceConc!19670) (_2!19358 BalanceConc!19670)) )
))
(declare-fun lt!996959 () tuple2!32726)

(assert (=> b!2789273 (= res!1163782 (not (= (size!25134 (_1!19358 lt!996959)) testedPSize!143)))))

(declare-fun b!2789274 () Bool)

(declare-fun e!1760789 () Bool)

(declare-fun e!1760793 () Bool)

(assert (=> b!2789274 (= e!1760789 e!1760793)))

(declare-fun b!2789275 () Bool)

(declare-fun e!1760766 () Bool)

(assert (=> b!2789275 (= e!1760791 e!1760766)))

(declare-fun b!2789276 () Bool)

(declare-fun e!1760777 () Bool)

(assert (=> b!2789276 (= e!1760777 e!1760776)))

(declare-fun res!1163781 () Bool)

(assert (=> b!2789276 (=> res!1163781 e!1760776)))

(declare-fun lt!996976 () List!32406)

(declare-fun lt!996968 () List!32406)

(declare-fun lt!996978 () List!32406)

(declare-fun ++!7977 (List!32406 List!32406) List!32406)

(assert (=> b!2789276 (= res!1163781 (not (= (++!7977 lt!996976 lt!996978) lt!996968)))))

(declare-fun list!12156 (BalanceConc!19670) List!32406)

(assert (=> b!2789276 (= lt!996978 (list!12156 (_2!19358 lt!996959)))))

(assert (=> b!2789276 (= lt!996976 (list!12156 (_1!19358 lt!996959)))))

(declare-fun splitAt!157 (BalanceConc!19670 Int) tuple2!32726)

(assert (=> b!2789276 (= lt!996959 (splitAt!157 totalInput!758 testedPSize!143))))

(declare-fun mapNonEmpty!17867 () Bool)

(declare-fun tp!885200 () Bool)

(declare-fun tp!885207 () Bool)

(assert (=> mapNonEmpty!17867 (= mapRes!17867 (and tp!885200 tp!885207))))

(declare-fun mapValue!17867 () List!32407)

(declare-fun mapKey!17868 () (_ BitVec 32))

(declare-fun mapRest!17868 () (Array (_ BitVec 32) List!32407))

(assert (=> mapNonEmpty!17867 (= (arr!6215 (_values!4201 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890))))))) (store mapRest!17868 mapKey!17868 mapValue!17867))))

(declare-fun e!1760778 () Bool)

(declare-fun e!1760775 () Bool)

(assert (=> b!2789277 (= e!1760778 (and e!1760775 tp!885206))))

(declare-fun b!2789278 () Bool)

(declare-fun res!1163787 () Bool)

(assert (=> b!2789278 (=> res!1163787 e!1760777)))

(assert (=> b!2789278 (= res!1163787 (= testedPSize!143 totalInputSize!205))))

(declare-fun setIsEmpty!23764 () Bool)

(declare-fun setRes!23764 () Bool)

(assert (=> setIsEmpty!23764 setRes!23764))

(declare-fun b!2789279 () Bool)

(declare-fun e!1760773 () Bool)

(declare-fun tp!885202 () Bool)

(assert (=> b!2789279 (= e!1760773 tp!885202)))

(declare-fun e!1760788 () Bool)

(assert (=> b!2789280 (= e!1760764 (and e!1760788 tp!885205))))

(declare-fun res!1163778 () Bool)

(assert (=> start!269660 (=> (not res!1163778) (not e!1760781))))

(declare-fun lt!996971 () List!32406)

(assert (=> start!269660 (= res!1163778 (= lt!996971 lt!996968))))

(assert (=> start!269660 (= lt!996968 (list!12156 totalInput!758))))

(assert (=> start!269660 (= lt!996971 (++!7977 testedP!183 testedSuffix!143))))

(assert (=> start!269660 e!1760781))

(declare-fun e!1760771 () Bool)

(declare-fun inv!43892 (BalanceConc!19670) Bool)

(assert (=> start!269660 (and (inv!43892 totalInput!758) e!1760771)))

(declare-fun condSetEmpty!23764 () Bool)

(assert (=> start!269660 (= condSetEmpty!23764 (= z!3684 ((as const (Array Context!4758 Bool)) false)))))

(assert (=> start!269660 setRes!23764))

(assert (=> start!269660 true))

(assert (=> start!269660 e!1760786))

(assert (=> start!269660 e!1760780))

(declare-fun e!1760768 () Bool)

(declare-fun inv!43893 (CacheDown!2650) Bool)

(assert (=> start!269660 (and (inv!43893 cacheDown!1009) e!1760768)))

(declare-fun inv!43894 (CacheUp!2532) Bool)

(assert (=> start!269660 (and (inv!43894 cacheUp!890) e!1760790)))

(declare-fun b!2789281 () Bool)

(declare-fun e!1760770 () Bool)

(assert (=> b!2789281 (= e!1760776 e!1760770)))

(declare-fun res!1163786 () Bool)

(assert (=> b!2789281 (=> res!1163786 e!1760770)))

(declare-fun head!6178 (List!32406) C!16480)

(assert (=> b!2789281 (= res!1163786 (not (= lt!996970 (head!6178 testedSuffix!143))))))

(declare-fun apply!7563 (BalanceConc!19670 Int) C!16480)

(assert (=> b!2789281 (= lt!996970 (apply!7563 totalInput!758 testedPSize!143))))

(declare-fun drop!1731 (List!32406 Int) List!32406)

(declare-fun apply!7564 (List!32406 Int) C!16480)

(assert (=> b!2789281 (= (head!6178 (drop!1731 lt!996968 testedPSize!143)) (apply!7564 lt!996968 testedPSize!143))))

(declare-fun lt!996972 () Unit!46522)

(declare-fun lemmaDropApply!937 (List!32406 Int) Unit!46522)

(assert (=> b!2789281 (= lt!996972 (lemmaDropApply!937 lt!996968 testedPSize!143))))

(assert (=> b!2789281 (not (or (not (= lt!996976 testedP!183)) (not (= lt!996978 testedSuffix!143))))))

(declare-fun lt!996977 () Unit!46522)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!364 (List!32406 List!32406 List!32406 List!32406) Unit!46522)

(assert (=> b!2789281 (= lt!996977 (lemmaConcatSameAndSameSizesThenSameLists!364 lt!996976 lt!996978 testedP!183 testedSuffix!143))))

(declare-fun b!2789282 () Bool)

(declare-fun e!1760779 () Bool)

(assert (=> b!2789282 (= e!1760779 e!1760789)))

(declare-fun b!2789283 () Bool)

(assert (=> b!2789283 (= e!1760768 e!1760778)))

(declare-fun b!2789284 () Bool)

(declare-fun e!1760774 () Bool)

(assert (=> b!2789284 (= e!1760774 e!1760777)))

(declare-fun res!1163784 () Bool)

(assert (=> b!2789284 (=> res!1163784 e!1760777)))

(declare-fun lostCauseZipper!473 ((InoxSet Context!4758)) Bool)

(assert (=> b!2789284 (= res!1163784 (lostCauseZipper!473 z!3684))))

(declare-fun lt!996956 () List!32406)

(assert (=> b!2789284 (and (= testedSuffix!143 lt!996956) (= lt!996956 testedSuffix!143))))

(declare-fun lt!996975 () Unit!46522)

(declare-fun lemmaSamePrefixThenSameSuffix!1174 (List!32406 List!32406 List!32406 List!32406 List!32406) Unit!46522)

(assert (=> b!2789284 (= lt!996975 (lemmaSamePrefixThenSameSuffix!1174 testedP!183 testedSuffix!143 testedP!183 lt!996956 lt!996968))))

(declare-fun getSuffix!1273 (List!32406 List!32406) List!32406)

(assert (=> b!2789284 (= lt!996956 (getSuffix!1273 lt!996968 testedP!183))))

(declare-fun b!2789285 () Bool)

(declare-fun e!1760765 () Bool)

(assert (=> b!2789285 (= e!1760770 e!1760765)))

(declare-fun res!1163788 () Bool)

(assert (=> b!2789285 (=> res!1163788 e!1760765)))

(assert (=> b!2789285 (= res!1163788 (>= lt!996965 lt!996966))))

(declare-fun lt!996957 () Unit!46522)

(assert (=> b!2789285 (= lt!996957 e!1760784)))

(declare-fun c!452850 () Bool)

(assert (=> b!2789285 (= c!452850 (= lt!996965 lt!996966))))

(assert (=> b!2789285 (<= lt!996965 (size!25136 lt!996968))))

(declare-fun lt!996962 () Unit!46522)

(declare-fun lemmaIsPrefixThenSmallerEqSize!281 (List!32406 List!32406) Unit!46522)

(assert (=> b!2789285 (= lt!996962 (lemmaIsPrefixThenSmallerEqSize!281 testedP!183 lt!996968))))

(declare-fun b!2789286 () Bool)

(declare-fun lt!996974 () MutLongMap!3919)

(get-info :version)

(assert (=> b!2789286 (= e!1760775 (and e!1760767 ((_ is LongMap!3919) lt!996974)))))

(assert (=> b!2789286 (= lt!996974 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009))))))

(declare-fun b!2789287 () Bool)

(declare-fun e!1760785 () Bool)

(declare-fun tp!885213 () Bool)

(assert (=> b!2789287 (= e!1760785 (and tp!885213 mapRes!17867))))

(declare-fun condMapEmpty!17868 () Bool)

(declare-fun mapDefault!17868 () List!32407)

(assert (=> b!2789287 (= condMapEmpty!17868 (= (arr!6215 (_values!4201 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32407)) mapDefault!17868)))))

(declare-fun b!2789288 () Bool)

(assert (=> b!2789288 (= e!1760765 e!1760772)))

(declare-fun res!1163777 () Bool)

(assert (=> b!2789288 (=> res!1163777 e!1760772)))

(declare-fun nullableZipper!648 ((InoxSet Context!4758)) Bool)

(assert (=> b!2789288 (= res!1163777 (nullableZipper!648 z!3684))))

(declare-fun lt!996960 () List!32406)

(assert (=> b!2789288 (= (++!7977 (++!7977 testedP!183 (Cons!32306 lt!996970 Nil!32306)) lt!996960) lt!996968)))

(declare-fun lt!996963 () Unit!46522)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!884 (List!32406 C!16480 List!32406 List!32406) Unit!46522)

(assert (=> b!2789288 (= lt!996963 (lemmaMoveElementToOtherListKeepsConcatEq!884 testedP!183 lt!996970 lt!996960 lt!996968))))

(declare-fun tail!4410 (List!32406) List!32406)

(assert (=> b!2789288 (= lt!996960 (tail!4410 testedSuffix!143))))

(declare-fun isPrefix!2596 (List!32406 List!32406) Bool)

(assert (=> b!2789288 (isPrefix!2596 (++!7977 testedP!183 (Cons!32306 (head!6178 lt!996956) Nil!32306)) lt!996968)))

(declare-fun lt!996973 () Unit!46522)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!475 (List!32406 List!32406) Unit!46522)

(assert (=> b!2789288 (= lt!996973 (lemmaAddHeadSuffixToPrefixStillPrefix!475 testedP!183 lt!996968))))

(declare-fun b!2789289 () Bool)

(declare-fun lt!996958 () MutLongMap!3920)

(assert (=> b!2789289 (= e!1760788 (and e!1760779 ((_ is LongMap!3920) lt!996958)))))

(assert (=> b!2789289 (= lt!996958 (v!33913 (underlying!8044 (cache!3969 cacheUp!890))))))

(declare-fun b!2789290 () Bool)

(declare-fun tp!885196 () Bool)

(declare-fun inv!43895 (Conc!10028) Bool)

(assert (=> b!2789290 (= e!1760771 (and (inv!43895 (c!452852 totalInput!758)) tp!885196))))

(declare-fun tp!885204 () Bool)

(declare-fun tp!885211 () Bool)

(declare-fun array_inv!4447 (array!13944) Bool)

(declare-fun array_inv!4448 (array!13948) Bool)

(assert (=> b!2789291 (= e!1760793 (and tp!885199 tp!885211 tp!885204 (array_inv!4447 (_keys!4220 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890))))))) (array_inv!4448 (_values!4201 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890))))))) e!1760785))))

(declare-fun tp!885203 () Bool)

(declare-fun tp!885198 () Bool)

(declare-fun array_inv!4449 (array!13946) Bool)

(assert (=> b!2789292 (= e!1760766 (and tp!885197 tp!885203 tp!885198 (array_inv!4447 (_keys!4219 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009))))))) (array_inv!4449 (_values!4200 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009))))))) e!1760787))))

(declare-fun b!2789293 () Bool)

(declare-fun res!1163783 () Bool)

(assert (=> b!2789293 (=> (not res!1163783) (not e!1760783))))

(declare-fun valid!3062 (CacheUp!2532) Bool)

(assert (=> b!2789293 (= res!1163783 (valid!3062 cacheUp!890))))

(declare-fun b!2789294 () Bool)

(assert (=> b!2789294 (= e!1760783 (not e!1760774))))

(declare-fun res!1163780 () Bool)

(assert (=> b!2789294 (=> res!1163780 e!1760774)))

(assert (=> b!2789294 (= res!1163780 (not (isPrefix!2596 testedP!183 lt!996968)))))

(assert (=> b!2789294 (isPrefix!2596 testedP!183 lt!996971)))

(declare-fun lt!996961 () Unit!46522)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1706 (List!32406 List!32406) Unit!46522)

(assert (=> b!2789294 (= lt!996961 (lemmaConcatTwoListThenFirstIsPrefix!1706 testedP!183 testedSuffix!143))))

(declare-fun mapNonEmpty!17868 () Bool)

(declare-fun tp!885210 () Bool)

(declare-fun tp!885201 () Bool)

(assert (=> mapNonEmpty!17868 (= mapRes!17868 (and tp!885210 tp!885201))))

(declare-fun mapKey!17867 () (_ BitVec 32))

(declare-fun mapRest!17867 () (Array (_ BitVec 32) List!32405))

(declare-fun mapValue!17868 () List!32405)

(assert (=> mapNonEmpty!17868 (= (arr!6214 (_values!4200 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009))))))) (store mapRest!17867 mapKey!17867 mapValue!17868))))

(declare-fun b!2789295 () Bool)

(declare-fun Unit!46525 () Unit!46522)

(assert (=> b!2789295 (= e!1760784 Unit!46525)))

(declare-fun lt!996969 () Unit!46522)

(declare-fun lemmaIsPrefixRefl!1700 (List!32406 List!32406) Unit!46522)

(assert (=> b!2789295 (= lt!996969 (lemmaIsPrefixRefl!1700 lt!996968 lt!996968))))

(assert (=> b!2789295 (isPrefix!2596 lt!996968 lt!996968)))

(declare-fun lt!996964 () Unit!46522)

(declare-fun lemmaIsPrefixSameLengthThenSameList!480 (List!32406 List!32406 List!32406) Unit!46522)

(assert (=> b!2789295 (= lt!996964 (lemmaIsPrefixSameLengthThenSameList!480 lt!996968 testedP!183 lt!996968))))

(assert (=> b!2789295 false))

(declare-fun tp!885209 () Bool)

(declare-fun setNonEmpty!23764 () Bool)

(declare-fun setElem!23764 () Context!4758)

(declare-fun inv!43896 (Context!4758) Bool)

(assert (=> setNonEmpty!23764 (= setRes!23764 (and tp!885209 (inv!43896 setElem!23764) e!1760773))))

(declare-fun setRest!23764 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23764 (= z!3684 ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23764 true) setRest!23764))))

(assert (= (and start!269660 res!1163778) b!2789270))

(assert (= (and b!2789270 res!1163776) b!2789265))

(assert (= (and b!2789265 res!1163785) b!2789293))

(assert (= (and b!2789293 res!1163783) b!2789271))

(assert (= (and b!2789271 res!1163779) b!2789294))

(assert (= (and b!2789294 (not res!1163780)) b!2789284))

(assert (= (and b!2789284 (not res!1163784)) b!2789278))

(assert (= (and b!2789278 (not res!1163787)) b!2789276))

(assert (= (and b!2789276 (not res!1163781)) b!2789273))

(assert (= (and b!2789273 (not res!1163782)) b!2789281))

(assert (= (and b!2789281 (not res!1163786)) b!2789285))

(assert (= (and b!2789285 c!452850) b!2789295))

(assert (= (and b!2789285 (not c!452850)) b!2789267))

(assert (= (and b!2789285 (not res!1163788)) b!2789288))

(assert (= (and b!2789288 (not res!1163777)) b!2789269))

(assert (= start!269660 b!2789290))

(assert (= (and start!269660 condSetEmpty!23764) setIsEmpty!23764))

(assert (= (and start!269660 (not condSetEmpty!23764)) setNonEmpty!23764))

(assert (= setNonEmpty!23764 b!2789279))

(assert (= (and start!269660 ((_ is Cons!32306) testedP!183)) b!2789263))

(assert (= (and start!269660 ((_ is Cons!32306) testedSuffix!143)) b!2789272))

(assert (= (and b!2789264 condMapEmpty!17867) mapIsEmpty!17868))

(assert (= (and b!2789264 (not condMapEmpty!17867)) mapNonEmpty!17868))

(assert (= b!2789292 b!2789264))

(assert (= b!2789275 b!2789292))

(assert (= b!2789268 b!2789275))

(assert (= (and b!2789286 ((_ is LongMap!3919) (v!33911 (underlying!8042 (cache!3968 cacheDown!1009))))) b!2789268))

(assert (= b!2789277 b!2789286))

(assert (= (and b!2789283 ((_ is HashMap!3825) (cache!3968 cacheDown!1009))) b!2789277))

(assert (= start!269660 b!2789283))

(assert (= (and b!2789287 condMapEmpty!17868) mapIsEmpty!17867))

(assert (= (and b!2789287 (not condMapEmpty!17868)) mapNonEmpty!17867))

(assert (= b!2789291 b!2789287))

(assert (= b!2789274 b!2789291))

(assert (= b!2789282 b!2789274))

(assert (= (and b!2789289 ((_ is LongMap!3920) (v!33913 (underlying!8044 (cache!3969 cacheUp!890))))) b!2789282))

(assert (= b!2789280 b!2789289))

(assert (= (and b!2789266 ((_ is HashMap!3826) (cache!3969 cacheUp!890))) b!2789280))

(assert (= start!269660 b!2789266))

(declare-fun m!3219657 () Bool)

(assert (=> b!2789276 m!3219657))

(declare-fun m!3219659 () Bool)

(assert (=> b!2789276 m!3219659))

(declare-fun m!3219661 () Bool)

(assert (=> b!2789276 m!3219661))

(declare-fun m!3219663 () Bool)

(assert (=> b!2789276 m!3219663))

(declare-fun m!3219665 () Bool)

(assert (=> b!2789269 m!3219665))

(declare-fun m!3219667 () Bool)

(assert (=> b!2789284 m!3219667))

(declare-fun m!3219669 () Bool)

(assert (=> b!2789284 m!3219669))

(declare-fun m!3219671 () Bool)

(assert (=> b!2789284 m!3219671))

(declare-fun m!3219673 () Bool)

(assert (=> b!2789290 m!3219673))

(declare-fun m!3219675 () Bool)

(assert (=> b!2789291 m!3219675))

(declare-fun m!3219677 () Bool)

(assert (=> b!2789291 m!3219677))

(declare-fun m!3219679 () Bool)

(assert (=> setNonEmpty!23764 m!3219679))

(declare-fun m!3219681 () Bool)

(assert (=> b!2789285 m!3219681))

(declare-fun m!3219683 () Bool)

(assert (=> b!2789285 m!3219683))

(declare-fun m!3219685 () Bool)

(assert (=> mapNonEmpty!17868 m!3219685))

(declare-fun m!3219687 () Bool)

(assert (=> b!2789270 m!3219687))

(declare-fun m!3219689 () Bool)

(assert (=> b!2789273 m!3219689))

(declare-fun m!3219691 () Bool)

(assert (=> start!269660 m!3219691))

(declare-fun m!3219693 () Bool)

(assert (=> start!269660 m!3219693))

(declare-fun m!3219695 () Bool)

(assert (=> start!269660 m!3219695))

(declare-fun m!3219697 () Bool)

(assert (=> start!269660 m!3219697))

(declare-fun m!3219699 () Bool)

(assert (=> start!269660 m!3219699))

(declare-fun m!3219701 () Bool)

(assert (=> b!2789265 m!3219701))

(declare-fun m!3219703 () Bool)

(assert (=> b!2789294 m!3219703))

(declare-fun m!3219705 () Bool)

(assert (=> b!2789294 m!3219705))

(declare-fun m!3219707 () Bool)

(assert (=> b!2789294 m!3219707))

(declare-fun m!3219709 () Bool)

(assert (=> b!2789288 m!3219709))

(declare-fun m!3219711 () Bool)

(assert (=> b!2789288 m!3219711))

(declare-fun m!3219713 () Bool)

(assert (=> b!2789288 m!3219713))

(declare-fun m!3219715 () Bool)

(assert (=> b!2789288 m!3219715))

(declare-fun m!3219717 () Bool)

(assert (=> b!2789288 m!3219717))

(assert (=> b!2789288 m!3219715))

(declare-fun m!3219719 () Bool)

(assert (=> b!2789288 m!3219719))

(declare-fun m!3219721 () Bool)

(assert (=> b!2789288 m!3219721))

(declare-fun m!3219723 () Bool)

(assert (=> b!2789288 m!3219723))

(declare-fun m!3219725 () Bool)

(assert (=> b!2789288 m!3219725))

(assert (=> b!2789288 m!3219723))

(declare-fun m!3219727 () Bool)

(assert (=> b!2789281 m!3219727))

(declare-fun m!3219729 () Bool)

(assert (=> b!2789281 m!3219729))

(declare-fun m!3219731 () Bool)

(assert (=> b!2789281 m!3219731))

(declare-fun m!3219733 () Bool)

(assert (=> b!2789281 m!3219733))

(declare-fun m!3219735 () Bool)

(assert (=> b!2789281 m!3219735))

(assert (=> b!2789281 m!3219727))

(declare-fun m!3219737 () Bool)

(assert (=> b!2789281 m!3219737))

(declare-fun m!3219739 () Bool)

(assert (=> b!2789281 m!3219739))

(declare-fun m!3219741 () Bool)

(assert (=> b!2789271 m!3219741))

(declare-fun m!3219743 () Bool)

(assert (=> mapNonEmpty!17867 m!3219743))

(declare-fun m!3219745 () Bool)

(assert (=> b!2789293 m!3219745))

(declare-fun m!3219747 () Bool)

(assert (=> b!2789295 m!3219747))

(declare-fun m!3219749 () Bool)

(assert (=> b!2789295 m!3219749))

(declare-fun m!3219751 () Bool)

(assert (=> b!2789295 m!3219751))

(declare-fun m!3219753 () Bool)

(assert (=> b!2789292 m!3219753))

(declare-fun m!3219755 () Bool)

(assert (=> b!2789292 m!3219755))

(check-sat (not b!2789295) (not b_next!79625) (not b!2789288) b_and!203657 (not b_next!79623) (not b!2789265) (not b!2789290) b_and!203655 b_and!203661 (not setNonEmpty!23764) (not b!2789276) (not b!2789293) (not b!2789287) (not b!2789273) (not b!2789263) (not b!2789279) (not b!2789285) (not b!2789281) (not mapNonEmpty!17867) (not b!2789291) (not b!2789270) (not mapNonEmpty!17868) (not b!2789272) (not b!2789284) (not b!2789264) tp_is_empty!14135 (not b!2789292) (not b_next!79627) (not b!2789269) (not start!269660) (not b!2789271) (not b!2789294) b_and!203659 (not b_next!79621))
(check-sat (not b_next!79625) b_and!203657 (not b_next!79623) b_and!203655 (not b_next!79627) b_and!203661 b_and!203659 (not b_next!79621))
(get-model)

(declare-fun d!811191 () Bool)

(declare-fun e!1760796 () Bool)

(assert (=> d!811191 e!1760796))

(declare-fun res!1163793 () Bool)

(assert (=> d!811191 (=> (not res!1163793) (not e!1760796))))

(declare-fun lt!996981 () tuple3!5048)

(declare-fun derivationStepZipper!376 ((InoxSet Context!4758) C!16480) (InoxSet Context!4758))

(assert (=> d!811191 (= res!1163793 (= (_1!19357 lt!996981) (derivationStepZipper!376 z!3684 lt!996970)))))

(declare-fun choose!16399 ((InoxSet Context!4758) C!16480 CacheUp!2532 CacheDown!2650) tuple3!5048)

(assert (=> d!811191 (= lt!996981 (choose!16399 z!3684 lt!996970 cacheUp!890 cacheDown!1009))))

(assert (=> d!811191 (= (derivationStepZipperMem!106 z!3684 lt!996970 cacheUp!890 cacheDown!1009) lt!996981)))

(declare-fun b!2789300 () Bool)

(declare-fun res!1163794 () Bool)

(assert (=> b!2789300 (=> (not res!1163794) (not e!1760796))))

(assert (=> b!2789300 (= res!1163794 (valid!3062 (_2!19357 lt!996981)))))

(declare-fun b!2789301 () Bool)

(assert (=> b!2789301 (= e!1760796 (valid!3061 (_3!2994 lt!996981)))))

(assert (= (and d!811191 res!1163793) b!2789300))

(assert (= (and b!2789300 res!1163794) b!2789301))

(declare-fun m!3219757 () Bool)

(assert (=> d!811191 m!3219757))

(declare-fun m!3219759 () Bool)

(assert (=> d!811191 m!3219759))

(declare-fun m!3219761 () Bool)

(assert (=> b!2789300 m!3219761))

(declare-fun m!3219763 () Bool)

(assert (=> b!2789301 m!3219763))

(assert (=> b!2789269 d!811191))

(declare-fun d!811193 () Bool)

(declare-fun res!1163797 () Bool)

(declare-fun e!1760799 () Bool)

(assert (=> d!811193 (=> (not res!1163797) (not e!1760799))))

(assert (=> d!811193 (= res!1163797 ((_ is HashMap!3826) (cache!3969 cacheUp!890)))))

(assert (=> d!811193 (= (inv!43894 cacheUp!890) e!1760799)))

(declare-fun b!2789304 () Bool)

(declare-fun validCacheMapUp!385 (MutableMap!3826) Bool)

(assert (=> b!2789304 (= e!1760799 (validCacheMapUp!385 (cache!3969 cacheUp!890)))))

(assert (= (and d!811193 res!1163797) b!2789304))

(declare-fun m!3219765 () Bool)

(assert (=> b!2789304 m!3219765))

(assert (=> start!269660 d!811193))

(declare-fun d!811195 () Bool)

(declare-fun isBalanced!3061 (Conc!10028) Bool)

(assert (=> d!811195 (= (inv!43892 totalInput!758) (isBalanced!3061 (c!452852 totalInput!758)))))

(declare-fun bs!511072 () Bool)

(assert (= bs!511072 d!811195))

(declare-fun m!3219767 () Bool)

(assert (=> bs!511072 m!3219767))

(assert (=> start!269660 d!811195))

(declare-fun d!811197 () Bool)

(declare-fun res!1163800 () Bool)

(declare-fun e!1760802 () Bool)

(assert (=> d!811197 (=> (not res!1163800) (not e!1760802))))

(assert (=> d!811197 (= res!1163800 ((_ is HashMap!3825) (cache!3968 cacheDown!1009)))))

(assert (=> d!811197 (= (inv!43893 cacheDown!1009) e!1760802)))

(declare-fun b!2789307 () Bool)

(declare-fun validCacheMapDown!416 (MutableMap!3825) Bool)

(assert (=> b!2789307 (= e!1760802 (validCacheMapDown!416 (cache!3968 cacheDown!1009)))))

(assert (= (and d!811197 res!1163800) b!2789307))

(declare-fun m!3219769 () Bool)

(assert (=> b!2789307 m!3219769))

(assert (=> start!269660 d!811197))

(declare-fun d!811199 () Bool)

(declare-fun list!12157 (Conc!10028) List!32406)

(assert (=> d!811199 (= (list!12156 totalInput!758) (list!12157 (c!452852 totalInput!758)))))

(declare-fun bs!511073 () Bool)

(assert (= bs!511073 d!811199))

(declare-fun m!3219771 () Bool)

(assert (=> bs!511073 m!3219771))

(assert (=> start!269660 d!811199))

(declare-fun b!2789318 () Bool)

(declare-fun res!1163805 () Bool)

(declare-fun e!1760808 () Bool)

(assert (=> b!2789318 (=> (not res!1163805) (not e!1760808))))

(declare-fun lt!996984 () List!32406)

(assert (=> b!2789318 (= res!1163805 (= (size!25136 lt!996984) (+ (size!25136 testedP!183) (size!25136 testedSuffix!143))))))

(declare-fun b!2789319 () Bool)

(assert (=> b!2789319 (= e!1760808 (or (not (= testedSuffix!143 Nil!32306)) (= lt!996984 testedP!183)))))

(declare-fun b!2789316 () Bool)

(declare-fun e!1760807 () List!32406)

(assert (=> b!2789316 (= e!1760807 testedSuffix!143)))

(declare-fun d!811201 () Bool)

(assert (=> d!811201 e!1760808))

(declare-fun res!1163806 () Bool)

(assert (=> d!811201 (=> (not res!1163806) (not e!1760808))))

(declare-fun content!4526 (List!32406) (InoxSet C!16480))

(assert (=> d!811201 (= res!1163806 (= (content!4526 lt!996984) ((_ map or) (content!4526 testedP!183) (content!4526 testedSuffix!143))))))

(assert (=> d!811201 (= lt!996984 e!1760807)))

(declare-fun c!452855 () Bool)

(assert (=> d!811201 (= c!452855 ((_ is Nil!32306) testedP!183))))

(assert (=> d!811201 (= (++!7977 testedP!183 testedSuffix!143) lt!996984)))

(declare-fun b!2789317 () Bool)

(assert (=> b!2789317 (= e!1760807 (Cons!32306 (h!37726 testedP!183) (++!7977 (t!228548 testedP!183) testedSuffix!143)))))

(assert (= (and d!811201 c!452855) b!2789316))

(assert (= (and d!811201 (not c!452855)) b!2789317))

(assert (= (and d!811201 res!1163806) b!2789318))

(assert (= (and b!2789318 res!1163805) b!2789319))

(declare-fun m!3219773 () Bool)

(assert (=> b!2789318 m!3219773))

(assert (=> b!2789318 m!3219687))

(declare-fun m!3219775 () Bool)

(assert (=> b!2789318 m!3219775))

(declare-fun m!3219777 () Bool)

(assert (=> d!811201 m!3219777))

(declare-fun m!3219779 () Bool)

(assert (=> d!811201 m!3219779))

(declare-fun m!3219781 () Bool)

(assert (=> d!811201 m!3219781))

(declare-fun m!3219783 () Bool)

(assert (=> b!2789317 m!3219783))

(assert (=> start!269660 d!811201))

(declare-fun d!811203 () Bool)

(assert (=> d!811203 (isPrefix!2596 (++!7977 testedP!183 (Cons!32306 (head!6178 (getSuffix!1273 lt!996968 testedP!183)) Nil!32306)) lt!996968)))

(declare-fun lt!996987 () Unit!46522)

(declare-fun choose!16400 (List!32406 List!32406) Unit!46522)

(assert (=> d!811203 (= lt!996987 (choose!16400 testedP!183 lt!996968))))

(assert (=> d!811203 (isPrefix!2596 testedP!183 lt!996968)))

(assert (=> d!811203 (= (lemmaAddHeadSuffixToPrefixStillPrefix!475 testedP!183 lt!996968) lt!996987)))

(declare-fun bs!511074 () Bool)

(assert (= bs!511074 d!811203))

(assert (=> bs!511074 m!3219703))

(assert (=> bs!511074 m!3219671))

(declare-fun m!3219785 () Bool)

(assert (=> bs!511074 m!3219785))

(declare-fun m!3219787 () Bool)

(assert (=> bs!511074 m!3219787))

(declare-fun m!3219789 () Bool)

(assert (=> bs!511074 m!3219789))

(declare-fun m!3219791 () Bool)

(assert (=> bs!511074 m!3219791))

(assert (=> bs!511074 m!3219789))

(assert (=> bs!511074 m!3219671))

(assert (=> b!2789288 d!811203))

(declare-fun b!2789322 () Bool)

(declare-fun res!1163807 () Bool)

(declare-fun e!1760810 () Bool)

(assert (=> b!2789322 (=> (not res!1163807) (not e!1760810))))

(declare-fun lt!996988 () List!32406)

(assert (=> b!2789322 (= res!1163807 (= (size!25136 lt!996988) (+ (size!25136 testedP!183) (size!25136 (Cons!32306 lt!996970 Nil!32306)))))))

(declare-fun b!2789323 () Bool)

(assert (=> b!2789323 (= e!1760810 (or (not (= (Cons!32306 lt!996970 Nil!32306) Nil!32306)) (= lt!996988 testedP!183)))))

(declare-fun b!2789320 () Bool)

(declare-fun e!1760809 () List!32406)

(assert (=> b!2789320 (= e!1760809 (Cons!32306 lt!996970 Nil!32306))))

(declare-fun d!811205 () Bool)

(assert (=> d!811205 e!1760810))

(declare-fun res!1163808 () Bool)

(assert (=> d!811205 (=> (not res!1163808) (not e!1760810))))

(assert (=> d!811205 (= res!1163808 (= (content!4526 lt!996988) ((_ map or) (content!4526 testedP!183) (content!4526 (Cons!32306 lt!996970 Nil!32306)))))))

(assert (=> d!811205 (= lt!996988 e!1760809)))

(declare-fun c!452856 () Bool)

(assert (=> d!811205 (= c!452856 ((_ is Nil!32306) testedP!183))))

(assert (=> d!811205 (= (++!7977 testedP!183 (Cons!32306 lt!996970 Nil!32306)) lt!996988)))

(declare-fun b!2789321 () Bool)

(assert (=> b!2789321 (= e!1760809 (Cons!32306 (h!37726 testedP!183) (++!7977 (t!228548 testedP!183) (Cons!32306 lt!996970 Nil!32306))))))

(assert (= (and d!811205 c!452856) b!2789320))

(assert (= (and d!811205 (not c!452856)) b!2789321))

(assert (= (and d!811205 res!1163808) b!2789322))

(assert (= (and b!2789322 res!1163807) b!2789323))

(declare-fun m!3219793 () Bool)

(assert (=> b!2789322 m!3219793))

(assert (=> b!2789322 m!3219687))

(declare-fun m!3219795 () Bool)

(assert (=> b!2789322 m!3219795))

(declare-fun m!3219797 () Bool)

(assert (=> d!811205 m!3219797))

(assert (=> d!811205 m!3219779))

(declare-fun m!3219799 () Bool)

(assert (=> d!811205 m!3219799))

(declare-fun m!3219801 () Bool)

(assert (=> b!2789321 m!3219801))

(assert (=> b!2789288 d!811205))

(declare-fun b!2789326 () Bool)

(declare-fun res!1163809 () Bool)

(declare-fun e!1760812 () Bool)

(assert (=> b!2789326 (=> (not res!1163809) (not e!1760812))))

(declare-fun lt!996989 () List!32406)

(assert (=> b!2789326 (= res!1163809 (= (size!25136 lt!996989) (+ (size!25136 (++!7977 testedP!183 (Cons!32306 lt!996970 Nil!32306))) (size!25136 lt!996960))))))

(declare-fun b!2789327 () Bool)

(assert (=> b!2789327 (= e!1760812 (or (not (= lt!996960 Nil!32306)) (= lt!996989 (++!7977 testedP!183 (Cons!32306 lt!996970 Nil!32306)))))))

(declare-fun b!2789324 () Bool)

(declare-fun e!1760811 () List!32406)

(assert (=> b!2789324 (= e!1760811 lt!996960)))

(declare-fun d!811207 () Bool)

(assert (=> d!811207 e!1760812))

(declare-fun res!1163810 () Bool)

(assert (=> d!811207 (=> (not res!1163810) (not e!1760812))))

(assert (=> d!811207 (= res!1163810 (= (content!4526 lt!996989) ((_ map or) (content!4526 (++!7977 testedP!183 (Cons!32306 lt!996970 Nil!32306))) (content!4526 lt!996960))))))

(assert (=> d!811207 (= lt!996989 e!1760811)))

(declare-fun c!452857 () Bool)

(assert (=> d!811207 (= c!452857 ((_ is Nil!32306) (++!7977 testedP!183 (Cons!32306 lt!996970 Nil!32306))))))

(assert (=> d!811207 (= (++!7977 (++!7977 testedP!183 (Cons!32306 lt!996970 Nil!32306)) lt!996960) lt!996989)))

(declare-fun b!2789325 () Bool)

(assert (=> b!2789325 (= e!1760811 (Cons!32306 (h!37726 (++!7977 testedP!183 (Cons!32306 lt!996970 Nil!32306))) (++!7977 (t!228548 (++!7977 testedP!183 (Cons!32306 lt!996970 Nil!32306))) lt!996960)))))

(assert (= (and d!811207 c!452857) b!2789324))

(assert (= (and d!811207 (not c!452857)) b!2789325))

(assert (= (and d!811207 res!1163810) b!2789326))

(assert (= (and b!2789326 res!1163809) b!2789327))

(declare-fun m!3219803 () Bool)

(assert (=> b!2789326 m!3219803))

(assert (=> b!2789326 m!3219723))

(declare-fun m!3219805 () Bool)

(assert (=> b!2789326 m!3219805))

(declare-fun m!3219807 () Bool)

(assert (=> b!2789326 m!3219807))

(declare-fun m!3219809 () Bool)

(assert (=> d!811207 m!3219809))

(assert (=> d!811207 m!3219723))

(declare-fun m!3219811 () Bool)

(assert (=> d!811207 m!3219811))

(declare-fun m!3219813 () Bool)

(assert (=> d!811207 m!3219813))

(declare-fun m!3219815 () Bool)

(assert (=> b!2789325 m!3219815))

(assert (=> b!2789288 d!811207))

(declare-fun b!2789336 () Bool)

(declare-fun e!1760820 () Bool)

(declare-fun e!1760819 () Bool)

(assert (=> b!2789336 (= e!1760820 e!1760819)))

(declare-fun res!1163820 () Bool)

(assert (=> b!2789336 (=> (not res!1163820) (not e!1760819))))

(assert (=> b!2789336 (= res!1163820 (not ((_ is Nil!32306) lt!996968)))))

(declare-fun e!1760821 () Bool)

(declare-fun b!2789339 () Bool)

(assert (=> b!2789339 (= e!1760821 (>= (size!25136 lt!996968) (size!25136 (++!7977 testedP!183 (Cons!32306 (head!6178 lt!996956) Nil!32306)))))))

(declare-fun b!2789337 () Bool)

(declare-fun res!1163822 () Bool)

(assert (=> b!2789337 (=> (not res!1163822) (not e!1760819))))

(assert (=> b!2789337 (= res!1163822 (= (head!6178 (++!7977 testedP!183 (Cons!32306 (head!6178 lt!996956) Nil!32306))) (head!6178 lt!996968)))))

(declare-fun b!2789338 () Bool)

(assert (=> b!2789338 (= e!1760819 (isPrefix!2596 (tail!4410 (++!7977 testedP!183 (Cons!32306 (head!6178 lt!996956) Nil!32306))) (tail!4410 lt!996968)))))

(declare-fun d!811209 () Bool)

(assert (=> d!811209 e!1760821))

(declare-fun res!1163821 () Bool)

(assert (=> d!811209 (=> res!1163821 e!1760821)))

(declare-fun lt!996992 () Bool)

(assert (=> d!811209 (= res!1163821 (not lt!996992))))

(assert (=> d!811209 (= lt!996992 e!1760820)))

(declare-fun res!1163819 () Bool)

(assert (=> d!811209 (=> res!1163819 e!1760820)))

(assert (=> d!811209 (= res!1163819 ((_ is Nil!32306) (++!7977 testedP!183 (Cons!32306 (head!6178 lt!996956) Nil!32306))))))

(assert (=> d!811209 (= (isPrefix!2596 (++!7977 testedP!183 (Cons!32306 (head!6178 lt!996956) Nil!32306)) lt!996968) lt!996992)))

(assert (= (and d!811209 (not res!1163819)) b!2789336))

(assert (= (and b!2789336 res!1163820) b!2789337))

(assert (= (and b!2789337 res!1163822) b!2789338))

(assert (= (and d!811209 (not res!1163821)) b!2789339))

(assert (=> b!2789339 m!3219681))

(assert (=> b!2789339 m!3219715))

(declare-fun m!3219817 () Bool)

(assert (=> b!2789339 m!3219817))

(assert (=> b!2789337 m!3219715))

(declare-fun m!3219819 () Bool)

(assert (=> b!2789337 m!3219819))

(declare-fun m!3219821 () Bool)

(assert (=> b!2789337 m!3219821))

(assert (=> b!2789338 m!3219715))

(declare-fun m!3219823 () Bool)

(assert (=> b!2789338 m!3219823))

(declare-fun m!3219825 () Bool)

(assert (=> b!2789338 m!3219825))

(assert (=> b!2789338 m!3219823))

(assert (=> b!2789338 m!3219825))

(declare-fun m!3219827 () Bool)

(assert (=> b!2789338 m!3219827))

(assert (=> b!2789288 d!811209))

(declare-fun d!811211 () Bool)

(assert (=> d!811211 (= (head!6178 lt!996956) (h!37726 lt!996956))))

(assert (=> b!2789288 d!811211))

(declare-fun d!811213 () Bool)

(declare-fun lambda!102347 () Int)

(declare-fun exists!999 ((InoxSet Context!4758) Int) Bool)

(assert (=> d!811213 (= (nullableZipper!648 z!3684) (exists!999 z!3684 lambda!102347))))

(declare-fun bs!511075 () Bool)

(assert (= bs!511075 d!811213))

(declare-fun m!3219829 () Bool)

(assert (=> bs!511075 m!3219829))

(assert (=> b!2789288 d!811213))

(declare-fun d!811215 () Bool)

(assert (=> d!811215 (= (++!7977 (++!7977 testedP!183 (Cons!32306 lt!996970 Nil!32306)) lt!996960) lt!996968)))

(declare-fun lt!996995 () Unit!46522)

(declare-fun choose!16401 (List!32406 C!16480 List!32406 List!32406) Unit!46522)

(assert (=> d!811215 (= lt!996995 (choose!16401 testedP!183 lt!996970 lt!996960 lt!996968))))

(assert (=> d!811215 (= (++!7977 testedP!183 (Cons!32306 lt!996970 lt!996960)) lt!996968)))

(assert (=> d!811215 (= (lemmaMoveElementToOtherListKeepsConcatEq!884 testedP!183 lt!996970 lt!996960 lt!996968) lt!996995)))

(declare-fun bs!511076 () Bool)

(assert (= bs!511076 d!811215))

(assert (=> bs!511076 m!3219723))

(assert (=> bs!511076 m!3219723))

(assert (=> bs!511076 m!3219725))

(declare-fun m!3219831 () Bool)

(assert (=> bs!511076 m!3219831))

(declare-fun m!3219833 () Bool)

(assert (=> bs!511076 m!3219833))

(assert (=> b!2789288 d!811215))

(declare-fun b!2789342 () Bool)

(declare-fun res!1163823 () Bool)

(declare-fun e!1760823 () Bool)

(assert (=> b!2789342 (=> (not res!1163823) (not e!1760823))))

(declare-fun lt!996996 () List!32406)

(assert (=> b!2789342 (= res!1163823 (= (size!25136 lt!996996) (+ (size!25136 testedP!183) (size!25136 (Cons!32306 (head!6178 lt!996956) Nil!32306)))))))

(declare-fun b!2789343 () Bool)

(assert (=> b!2789343 (= e!1760823 (or (not (= (Cons!32306 (head!6178 lt!996956) Nil!32306) Nil!32306)) (= lt!996996 testedP!183)))))

(declare-fun b!2789340 () Bool)

(declare-fun e!1760822 () List!32406)

(assert (=> b!2789340 (= e!1760822 (Cons!32306 (head!6178 lt!996956) Nil!32306))))

(declare-fun d!811217 () Bool)

(assert (=> d!811217 e!1760823))

(declare-fun res!1163824 () Bool)

(assert (=> d!811217 (=> (not res!1163824) (not e!1760823))))

(assert (=> d!811217 (= res!1163824 (= (content!4526 lt!996996) ((_ map or) (content!4526 testedP!183) (content!4526 (Cons!32306 (head!6178 lt!996956) Nil!32306)))))))

(assert (=> d!811217 (= lt!996996 e!1760822)))

(declare-fun c!452860 () Bool)

(assert (=> d!811217 (= c!452860 ((_ is Nil!32306) testedP!183))))

(assert (=> d!811217 (= (++!7977 testedP!183 (Cons!32306 (head!6178 lt!996956) Nil!32306)) lt!996996)))

(declare-fun b!2789341 () Bool)

(assert (=> b!2789341 (= e!1760822 (Cons!32306 (h!37726 testedP!183) (++!7977 (t!228548 testedP!183) (Cons!32306 (head!6178 lt!996956) Nil!32306))))))

(assert (= (and d!811217 c!452860) b!2789340))

(assert (= (and d!811217 (not c!452860)) b!2789341))

(assert (= (and d!811217 res!1163824) b!2789342))

(assert (= (and b!2789342 res!1163823) b!2789343))

(declare-fun m!3219835 () Bool)

(assert (=> b!2789342 m!3219835))

(assert (=> b!2789342 m!3219687))

(declare-fun m!3219837 () Bool)

(assert (=> b!2789342 m!3219837))

(declare-fun m!3219839 () Bool)

(assert (=> d!811217 m!3219839))

(assert (=> d!811217 m!3219779))

(declare-fun m!3219841 () Bool)

(assert (=> d!811217 m!3219841))

(declare-fun m!3219843 () Bool)

(assert (=> b!2789341 m!3219843))

(assert (=> b!2789288 d!811217))

(declare-fun d!811219 () Bool)

(assert (=> d!811219 (= (tail!4410 testedSuffix!143) (t!228548 testedSuffix!143))))

(assert (=> b!2789288 d!811219))

(declare-fun d!811221 () Bool)

(assert (=> d!811221 (= (valid!3061 cacheDown!1009) (validCacheMapDown!416 (cache!3968 cacheDown!1009)))))

(declare-fun bs!511077 () Bool)

(assert (= bs!511077 d!811221))

(assert (=> bs!511077 m!3219769))

(assert (=> b!2789271 d!811221))

(declare-fun d!811223 () Bool)

(declare-fun c!452863 () Bool)

(assert (=> d!811223 (= c!452863 ((_ is Node!10028) (c!452852 totalInput!758)))))

(declare-fun e!1760828 () Bool)

(assert (=> d!811223 (= (inv!43895 (c!452852 totalInput!758)) e!1760828)))

(declare-fun b!2789350 () Bool)

(declare-fun inv!43897 (Conc!10028) Bool)

(assert (=> b!2789350 (= e!1760828 (inv!43897 (c!452852 totalInput!758)))))

(declare-fun b!2789351 () Bool)

(declare-fun e!1760829 () Bool)

(assert (=> b!2789351 (= e!1760828 e!1760829)))

(declare-fun res!1163827 () Bool)

(assert (=> b!2789351 (= res!1163827 (not ((_ is Leaf!15277) (c!452852 totalInput!758))))))

(assert (=> b!2789351 (=> res!1163827 e!1760829)))

(declare-fun b!2789352 () Bool)

(declare-fun inv!43898 (Conc!10028) Bool)

(assert (=> b!2789352 (= e!1760829 (inv!43898 (c!452852 totalInput!758)))))

(assert (= (and d!811223 c!452863) b!2789350))

(assert (= (and d!811223 (not c!452863)) b!2789351))

(assert (= (and b!2789351 (not res!1163827)) b!2789352))

(declare-fun m!3219845 () Bool)

(assert (=> b!2789350 m!3219845))

(declare-fun m!3219847 () Bool)

(assert (=> b!2789352 m!3219847))

(assert (=> b!2789290 d!811223))

(declare-fun d!811225 () Bool)

(declare-fun lt!996999 () Int)

(assert (=> d!811225 (>= lt!996999 0)))

(declare-fun e!1760832 () Int)

(assert (=> d!811225 (= lt!996999 e!1760832)))

(declare-fun c!452866 () Bool)

(assert (=> d!811225 (= c!452866 ((_ is Nil!32306) testedP!183))))

(assert (=> d!811225 (= (size!25136 testedP!183) lt!996999)))

(declare-fun b!2789357 () Bool)

(assert (=> b!2789357 (= e!1760832 0)))

(declare-fun b!2789358 () Bool)

(assert (=> b!2789358 (= e!1760832 (+ 1 (size!25136 (t!228548 testedP!183))))))

(assert (= (and d!811225 c!452866) b!2789357))

(assert (= (and d!811225 (not c!452866)) b!2789358))

(declare-fun m!3219849 () Bool)

(assert (=> b!2789358 m!3219849))

(assert (=> b!2789270 d!811225))

(declare-fun d!811227 () Bool)

(assert (=> d!811227 (and (= lt!996976 testedP!183) (= lt!996978 testedSuffix!143))))

(declare-fun lt!997002 () Unit!46522)

(declare-fun choose!16402 (List!32406 List!32406 List!32406 List!32406) Unit!46522)

(assert (=> d!811227 (= lt!997002 (choose!16402 lt!996976 lt!996978 testedP!183 testedSuffix!143))))

(assert (=> d!811227 (= (++!7977 lt!996976 lt!996978) (++!7977 testedP!183 testedSuffix!143))))

(assert (=> d!811227 (= (lemmaConcatSameAndSameSizesThenSameLists!364 lt!996976 lt!996978 testedP!183 testedSuffix!143) lt!997002)))

(declare-fun bs!511078 () Bool)

(assert (= bs!511078 d!811227))

(declare-fun m!3219851 () Bool)

(assert (=> bs!511078 m!3219851))

(assert (=> bs!511078 m!3219657))

(assert (=> bs!511078 m!3219699))

(assert (=> b!2789281 d!811227))

(declare-fun d!811229 () Bool)

(declare-fun lt!997005 () C!16480)

(assert (=> d!811229 (= lt!997005 (apply!7564 (list!12156 totalInput!758) testedPSize!143))))

(declare-fun apply!7565 (Conc!10028 Int) C!16480)

(assert (=> d!811229 (= lt!997005 (apply!7565 (c!452852 totalInput!758) testedPSize!143))))

(declare-fun e!1760835 () Bool)

(assert (=> d!811229 e!1760835))

(declare-fun res!1163830 () Bool)

(assert (=> d!811229 (=> (not res!1163830) (not e!1760835))))

(assert (=> d!811229 (= res!1163830 (<= 0 testedPSize!143))))

(assert (=> d!811229 (= (apply!7563 totalInput!758 testedPSize!143) lt!997005)))

(declare-fun b!2789361 () Bool)

(assert (=> b!2789361 (= e!1760835 (< testedPSize!143 (size!25134 totalInput!758)))))

(assert (= (and d!811229 res!1163830) b!2789361))

(assert (=> d!811229 m!3219691))

(assert (=> d!811229 m!3219691))

(declare-fun m!3219853 () Bool)

(assert (=> d!811229 m!3219853))

(declare-fun m!3219855 () Bool)

(assert (=> d!811229 m!3219855))

(assert (=> b!2789361 m!3219701))

(assert (=> b!2789281 d!811229))

(declare-fun d!811231 () Bool)

(assert (=> d!811231 (= (head!6178 testedSuffix!143) (h!37726 testedSuffix!143))))

(assert (=> b!2789281 d!811231))

(declare-fun d!811233 () Bool)

(assert (=> d!811233 (= (head!6178 (drop!1731 lt!996968 testedPSize!143)) (apply!7564 lt!996968 testedPSize!143))))

(declare-fun lt!997008 () Unit!46522)

(declare-fun choose!16403 (List!32406 Int) Unit!46522)

(assert (=> d!811233 (= lt!997008 (choose!16403 lt!996968 testedPSize!143))))

(declare-fun e!1760838 () Bool)

(assert (=> d!811233 e!1760838))

(declare-fun res!1163833 () Bool)

(assert (=> d!811233 (=> (not res!1163833) (not e!1760838))))

(assert (=> d!811233 (= res!1163833 (>= testedPSize!143 0))))

(assert (=> d!811233 (= (lemmaDropApply!937 lt!996968 testedPSize!143) lt!997008)))

(declare-fun b!2789364 () Bool)

(assert (=> b!2789364 (= e!1760838 (< testedPSize!143 (size!25136 lt!996968)))))

(assert (= (and d!811233 res!1163833) b!2789364))

(assert (=> d!811233 m!3219727))

(assert (=> d!811233 m!3219727))

(assert (=> d!811233 m!3219729))

(assert (=> d!811233 m!3219733))

(declare-fun m!3219857 () Bool)

(assert (=> d!811233 m!3219857))

(assert (=> b!2789364 m!3219681))

(assert (=> b!2789281 d!811233))

(declare-fun d!811235 () Bool)

(assert (=> d!811235 (= (head!6178 (drop!1731 lt!996968 testedPSize!143)) (h!37726 (drop!1731 lt!996968 testedPSize!143)))))

(assert (=> b!2789281 d!811235))

(declare-fun d!811237 () Bool)

(declare-fun lt!997011 () C!16480)

(declare-fun contains!6009 (List!32406 C!16480) Bool)

(assert (=> d!811237 (contains!6009 lt!996968 lt!997011)))

(declare-fun e!1760844 () C!16480)

(assert (=> d!811237 (= lt!997011 e!1760844)))

(declare-fun c!452869 () Bool)

(assert (=> d!811237 (= c!452869 (= testedPSize!143 0))))

(declare-fun e!1760843 () Bool)

(assert (=> d!811237 e!1760843))

(declare-fun res!1163836 () Bool)

(assert (=> d!811237 (=> (not res!1163836) (not e!1760843))))

(assert (=> d!811237 (= res!1163836 (<= 0 testedPSize!143))))

(assert (=> d!811237 (= (apply!7564 lt!996968 testedPSize!143) lt!997011)))

(declare-fun b!2789371 () Bool)

(assert (=> b!2789371 (= e!1760843 (< testedPSize!143 (size!25136 lt!996968)))))

(declare-fun b!2789372 () Bool)

(assert (=> b!2789372 (= e!1760844 (head!6178 lt!996968))))

(declare-fun b!2789373 () Bool)

(assert (=> b!2789373 (= e!1760844 (apply!7564 (tail!4410 lt!996968) (- testedPSize!143 1)))))

(assert (= (and d!811237 res!1163836) b!2789371))

(assert (= (and d!811237 c!452869) b!2789372))

(assert (= (and d!811237 (not c!452869)) b!2789373))

(declare-fun m!3219859 () Bool)

(assert (=> d!811237 m!3219859))

(assert (=> b!2789371 m!3219681))

(assert (=> b!2789372 m!3219821))

(assert (=> b!2789373 m!3219825))

(assert (=> b!2789373 m!3219825))

(declare-fun m!3219861 () Bool)

(assert (=> b!2789373 m!3219861))

(assert (=> b!2789281 d!811237))

(declare-fun b!2789392 () Bool)

(declare-fun e!1760858 () Bool)

(declare-fun lt!997014 () List!32406)

(declare-fun e!1760859 () Int)

(assert (=> b!2789392 (= e!1760858 (= (size!25136 lt!997014) e!1760859))))

(declare-fun c!452880 () Bool)

(assert (=> b!2789392 (= c!452880 (<= testedPSize!143 0))))

(declare-fun b!2789393 () Bool)

(declare-fun e!1760856 () Int)

(declare-fun call!182546 () Int)

(assert (=> b!2789393 (= e!1760856 (- call!182546 testedPSize!143))))

(declare-fun b!2789394 () Bool)

(declare-fun e!1760857 () List!32406)

(assert (=> b!2789394 (= e!1760857 (drop!1731 (t!228548 lt!996968) (- testedPSize!143 1)))))

(declare-fun b!2789395 () Bool)

(assert (=> b!2789395 (= e!1760856 0)))

(declare-fun b!2789396 () Bool)

(assert (=> b!2789396 (= e!1760857 lt!996968)))

(declare-fun b!2789397 () Bool)

(declare-fun e!1760855 () List!32406)

(assert (=> b!2789397 (= e!1760855 e!1760857)))

(declare-fun c!452881 () Bool)

(assert (=> b!2789397 (= c!452881 (<= testedPSize!143 0))))

(declare-fun bm!182541 () Bool)

(assert (=> bm!182541 (= call!182546 (size!25136 lt!996968))))

(declare-fun b!2789398 () Bool)

(assert (=> b!2789398 (= e!1760859 e!1760856)))

(declare-fun c!452878 () Bool)

(assert (=> b!2789398 (= c!452878 (>= testedPSize!143 call!182546))))

(declare-fun d!811239 () Bool)

(assert (=> d!811239 e!1760858))

(declare-fun res!1163839 () Bool)

(assert (=> d!811239 (=> (not res!1163839) (not e!1760858))))

(assert (=> d!811239 (= res!1163839 (= ((_ map implies) (content!4526 lt!997014) (content!4526 lt!996968)) ((as const (InoxSet C!16480)) true)))))

(assert (=> d!811239 (= lt!997014 e!1760855)))

(declare-fun c!452879 () Bool)

(assert (=> d!811239 (= c!452879 ((_ is Nil!32306) lt!996968))))

(assert (=> d!811239 (= (drop!1731 lt!996968 testedPSize!143) lt!997014)))

(declare-fun b!2789399 () Bool)

(assert (=> b!2789399 (= e!1760855 Nil!32306)))

(declare-fun b!2789400 () Bool)

(assert (=> b!2789400 (= e!1760859 call!182546)))

(assert (= (and d!811239 c!452879) b!2789399))

(assert (= (and d!811239 (not c!452879)) b!2789397))

(assert (= (and b!2789397 c!452881) b!2789396))

(assert (= (and b!2789397 (not c!452881)) b!2789394))

(assert (= (and d!811239 res!1163839) b!2789392))

(assert (= (and b!2789392 c!452880) b!2789400))

(assert (= (and b!2789392 (not c!452880)) b!2789398))

(assert (= (and b!2789398 c!452878) b!2789395))

(assert (= (and b!2789398 (not c!452878)) b!2789393))

(assert (= (or b!2789400 b!2789398 b!2789393) bm!182541))

(declare-fun m!3219863 () Bool)

(assert (=> b!2789392 m!3219863))

(declare-fun m!3219865 () Bool)

(assert (=> b!2789394 m!3219865))

(assert (=> bm!182541 m!3219681))

(declare-fun m!3219867 () Bool)

(assert (=> d!811239 m!3219867))

(declare-fun m!3219869 () Bool)

(assert (=> d!811239 m!3219869))

(assert (=> b!2789281 d!811239))

(declare-fun d!811241 () Bool)

(assert (=> d!811241 (= (array_inv!4447 (_keys!4220 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890))))))) (bvsge (size!25132 (_keys!4220 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2789291 d!811241))

(declare-fun d!811243 () Bool)

(assert (=> d!811243 (= (array_inv!4448 (_values!4201 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890))))))) (bvsge (size!25135 (_values!4201 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2789291 d!811243))

(declare-fun d!811245 () Bool)

(assert (=> d!811245 (= (valid!3062 cacheUp!890) (validCacheMapUp!385 (cache!3969 cacheUp!890)))))

(declare-fun bs!511079 () Bool)

(assert (= bs!511079 d!811245))

(assert (=> bs!511079 m!3219765))

(assert (=> b!2789293 d!811245))

(declare-fun d!811247 () Bool)

(declare-fun lt!997017 () Int)

(assert (=> d!811247 (= lt!997017 (size!25136 (list!12156 (_1!19358 lt!996959))))))

(declare-fun size!25137 (Conc!10028) Int)

(assert (=> d!811247 (= lt!997017 (size!25137 (c!452852 (_1!19358 lt!996959))))))

(assert (=> d!811247 (= (size!25134 (_1!19358 lt!996959)) lt!997017)))

(declare-fun bs!511080 () Bool)

(assert (= bs!511080 d!811247))

(assert (=> bs!511080 m!3219661))

(assert (=> bs!511080 m!3219661))

(declare-fun m!3219871 () Bool)

(assert (=> bs!511080 m!3219871))

(declare-fun m!3219873 () Bool)

(assert (=> bs!511080 m!3219873))

(assert (=> b!2789273 d!811247))

(declare-fun d!811249 () Bool)

(assert (=> d!811249 (= (array_inv!4447 (_keys!4219 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009))))))) (bvsge (size!25132 (_keys!4219 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2789292 d!811249))

(declare-fun d!811251 () Bool)

(assert (=> d!811251 (= (array_inv!4449 (_values!4200 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009))))))) (bvsge (size!25133 (_values!4200 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2789292 d!811251))

(declare-fun b!2789401 () Bool)

(declare-fun e!1760861 () Bool)

(declare-fun e!1760860 () Bool)

(assert (=> b!2789401 (= e!1760861 e!1760860)))

(declare-fun res!1163841 () Bool)

(assert (=> b!2789401 (=> (not res!1163841) (not e!1760860))))

(assert (=> b!2789401 (= res!1163841 (not ((_ is Nil!32306) lt!996968)))))

(declare-fun b!2789404 () Bool)

(declare-fun e!1760862 () Bool)

(assert (=> b!2789404 (= e!1760862 (>= (size!25136 lt!996968) (size!25136 testedP!183)))))

(declare-fun b!2789402 () Bool)

(declare-fun res!1163843 () Bool)

(assert (=> b!2789402 (=> (not res!1163843) (not e!1760860))))

(assert (=> b!2789402 (= res!1163843 (= (head!6178 testedP!183) (head!6178 lt!996968)))))

(declare-fun b!2789403 () Bool)

(assert (=> b!2789403 (= e!1760860 (isPrefix!2596 (tail!4410 testedP!183) (tail!4410 lt!996968)))))

(declare-fun d!811253 () Bool)

(assert (=> d!811253 e!1760862))

(declare-fun res!1163842 () Bool)

(assert (=> d!811253 (=> res!1163842 e!1760862)))

(declare-fun lt!997018 () Bool)

(assert (=> d!811253 (= res!1163842 (not lt!997018))))

(assert (=> d!811253 (= lt!997018 e!1760861)))

(declare-fun res!1163840 () Bool)

(assert (=> d!811253 (=> res!1163840 e!1760861)))

(assert (=> d!811253 (= res!1163840 ((_ is Nil!32306) testedP!183))))

(assert (=> d!811253 (= (isPrefix!2596 testedP!183 lt!996968) lt!997018)))

(assert (= (and d!811253 (not res!1163840)) b!2789401))

(assert (= (and b!2789401 res!1163841) b!2789402))

(assert (= (and b!2789402 res!1163843) b!2789403))

(assert (= (and d!811253 (not res!1163842)) b!2789404))

(assert (=> b!2789404 m!3219681))

(assert (=> b!2789404 m!3219687))

(declare-fun m!3219875 () Bool)

(assert (=> b!2789402 m!3219875))

(assert (=> b!2789402 m!3219821))

(declare-fun m!3219877 () Bool)

(assert (=> b!2789403 m!3219877))

(assert (=> b!2789403 m!3219825))

(assert (=> b!2789403 m!3219877))

(assert (=> b!2789403 m!3219825))

(declare-fun m!3219879 () Bool)

(assert (=> b!2789403 m!3219879))

(assert (=> b!2789294 d!811253))

(declare-fun b!2789405 () Bool)

(declare-fun e!1760864 () Bool)

(declare-fun e!1760863 () Bool)

(assert (=> b!2789405 (= e!1760864 e!1760863)))

(declare-fun res!1163845 () Bool)

(assert (=> b!2789405 (=> (not res!1163845) (not e!1760863))))

(assert (=> b!2789405 (= res!1163845 (not ((_ is Nil!32306) lt!996971)))))

(declare-fun b!2789408 () Bool)

(declare-fun e!1760865 () Bool)

(assert (=> b!2789408 (= e!1760865 (>= (size!25136 lt!996971) (size!25136 testedP!183)))))

(declare-fun b!2789406 () Bool)

(declare-fun res!1163847 () Bool)

(assert (=> b!2789406 (=> (not res!1163847) (not e!1760863))))

(assert (=> b!2789406 (= res!1163847 (= (head!6178 testedP!183) (head!6178 lt!996971)))))

(declare-fun b!2789407 () Bool)

(assert (=> b!2789407 (= e!1760863 (isPrefix!2596 (tail!4410 testedP!183) (tail!4410 lt!996971)))))

(declare-fun d!811255 () Bool)

(assert (=> d!811255 e!1760865))

(declare-fun res!1163846 () Bool)

(assert (=> d!811255 (=> res!1163846 e!1760865)))

(declare-fun lt!997019 () Bool)

(assert (=> d!811255 (= res!1163846 (not lt!997019))))

(assert (=> d!811255 (= lt!997019 e!1760864)))

(declare-fun res!1163844 () Bool)

(assert (=> d!811255 (=> res!1163844 e!1760864)))

(assert (=> d!811255 (= res!1163844 ((_ is Nil!32306) testedP!183))))

(assert (=> d!811255 (= (isPrefix!2596 testedP!183 lt!996971) lt!997019)))

(assert (= (and d!811255 (not res!1163844)) b!2789405))

(assert (= (and b!2789405 res!1163845) b!2789406))

(assert (= (and b!2789406 res!1163847) b!2789407))

(assert (= (and d!811255 (not res!1163846)) b!2789408))

(declare-fun m!3219881 () Bool)

(assert (=> b!2789408 m!3219881))

(assert (=> b!2789408 m!3219687))

(assert (=> b!2789406 m!3219875))

(declare-fun m!3219883 () Bool)

(assert (=> b!2789406 m!3219883))

(assert (=> b!2789407 m!3219877))

(declare-fun m!3219885 () Bool)

(assert (=> b!2789407 m!3219885))

(assert (=> b!2789407 m!3219877))

(assert (=> b!2789407 m!3219885))

(declare-fun m!3219887 () Bool)

(assert (=> b!2789407 m!3219887))

(assert (=> b!2789294 d!811255))

(declare-fun d!811257 () Bool)

(assert (=> d!811257 (isPrefix!2596 testedP!183 (++!7977 testedP!183 testedSuffix!143))))

(declare-fun lt!997022 () Unit!46522)

(declare-fun choose!16404 (List!32406 List!32406) Unit!46522)

(assert (=> d!811257 (= lt!997022 (choose!16404 testedP!183 testedSuffix!143))))

(assert (=> d!811257 (= (lemmaConcatTwoListThenFirstIsPrefix!1706 testedP!183 testedSuffix!143) lt!997022)))

(declare-fun bs!511081 () Bool)

(assert (= bs!511081 d!811257))

(assert (=> bs!511081 m!3219699))

(assert (=> bs!511081 m!3219699))

(declare-fun m!3219889 () Bool)

(assert (=> bs!511081 m!3219889))

(declare-fun m!3219891 () Bool)

(assert (=> bs!511081 m!3219891))

(assert (=> b!2789294 d!811257))

(declare-fun d!811259 () Bool)

(declare-fun lt!997023 () Int)

(assert (=> d!811259 (>= lt!997023 0)))

(declare-fun e!1760866 () Int)

(assert (=> d!811259 (= lt!997023 e!1760866)))

(declare-fun c!452882 () Bool)

(assert (=> d!811259 (= c!452882 ((_ is Nil!32306) lt!996968))))

(assert (=> d!811259 (= (size!25136 lt!996968) lt!997023)))

(declare-fun b!2789409 () Bool)

(assert (=> b!2789409 (= e!1760866 0)))

(declare-fun b!2789410 () Bool)

(assert (=> b!2789410 (= e!1760866 (+ 1 (size!25136 (t!228548 lt!996968))))))

(assert (= (and d!811259 c!452882) b!2789409))

(assert (= (and d!811259 (not c!452882)) b!2789410))

(declare-fun m!3219893 () Bool)

(assert (=> b!2789410 m!3219893))

(assert (=> b!2789285 d!811259))

(declare-fun d!811261 () Bool)

(assert (=> d!811261 (<= (size!25136 testedP!183) (size!25136 lt!996968))))

(declare-fun lt!997026 () Unit!46522)

(declare-fun choose!16405 (List!32406 List!32406) Unit!46522)

(assert (=> d!811261 (= lt!997026 (choose!16405 testedP!183 lt!996968))))

(assert (=> d!811261 (isPrefix!2596 testedP!183 lt!996968)))

(assert (=> d!811261 (= (lemmaIsPrefixThenSmallerEqSize!281 testedP!183 lt!996968) lt!997026)))

(declare-fun bs!511082 () Bool)

(assert (= bs!511082 d!811261))

(assert (=> bs!511082 m!3219687))

(assert (=> bs!511082 m!3219681))

(declare-fun m!3219895 () Bool)

(assert (=> bs!511082 m!3219895))

(assert (=> bs!511082 m!3219703))

(assert (=> b!2789285 d!811261))

(declare-fun b!2789413 () Bool)

(declare-fun res!1163848 () Bool)

(declare-fun e!1760868 () Bool)

(assert (=> b!2789413 (=> (not res!1163848) (not e!1760868))))

(declare-fun lt!997027 () List!32406)

(assert (=> b!2789413 (= res!1163848 (= (size!25136 lt!997027) (+ (size!25136 lt!996976) (size!25136 lt!996978))))))

(declare-fun b!2789414 () Bool)

(assert (=> b!2789414 (= e!1760868 (or (not (= lt!996978 Nil!32306)) (= lt!997027 lt!996976)))))

(declare-fun b!2789411 () Bool)

(declare-fun e!1760867 () List!32406)

(assert (=> b!2789411 (= e!1760867 lt!996978)))

(declare-fun d!811263 () Bool)

(assert (=> d!811263 e!1760868))

(declare-fun res!1163849 () Bool)

(assert (=> d!811263 (=> (not res!1163849) (not e!1760868))))

(assert (=> d!811263 (= res!1163849 (= (content!4526 lt!997027) ((_ map or) (content!4526 lt!996976) (content!4526 lt!996978))))))

(assert (=> d!811263 (= lt!997027 e!1760867)))

(declare-fun c!452883 () Bool)

(assert (=> d!811263 (= c!452883 ((_ is Nil!32306) lt!996976))))

(assert (=> d!811263 (= (++!7977 lt!996976 lt!996978) lt!997027)))

(declare-fun b!2789412 () Bool)

(assert (=> b!2789412 (= e!1760867 (Cons!32306 (h!37726 lt!996976) (++!7977 (t!228548 lt!996976) lt!996978)))))

(assert (= (and d!811263 c!452883) b!2789411))

(assert (= (and d!811263 (not c!452883)) b!2789412))

(assert (= (and d!811263 res!1163849) b!2789413))

(assert (= (and b!2789413 res!1163848) b!2789414))

(declare-fun m!3219897 () Bool)

(assert (=> b!2789413 m!3219897))

(declare-fun m!3219899 () Bool)

(assert (=> b!2789413 m!3219899))

(declare-fun m!3219901 () Bool)

(assert (=> b!2789413 m!3219901))

(declare-fun m!3219903 () Bool)

(assert (=> d!811263 m!3219903))

(declare-fun m!3219905 () Bool)

(assert (=> d!811263 m!3219905))

(declare-fun m!3219907 () Bool)

(assert (=> d!811263 m!3219907))

(declare-fun m!3219909 () Bool)

(assert (=> b!2789412 m!3219909))

(assert (=> b!2789276 d!811263))

(declare-fun d!811265 () Bool)

(assert (=> d!811265 (= (list!12156 (_2!19358 lt!996959)) (list!12157 (c!452852 (_2!19358 lt!996959))))))

(declare-fun bs!511083 () Bool)

(assert (= bs!511083 d!811265))

(declare-fun m!3219911 () Bool)

(assert (=> bs!511083 m!3219911))

(assert (=> b!2789276 d!811265))

(declare-fun d!811267 () Bool)

(assert (=> d!811267 (= (list!12156 (_1!19358 lt!996959)) (list!12157 (c!452852 (_1!19358 lt!996959))))))

(declare-fun bs!511084 () Bool)

(assert (= bs!511084 d!811267))

(declare-fun m!3219913 () Bool)

(assert (=> bs!511084 m!3219913))

(assert (=> b!2789276 d!811267))

(declare-fun d!811269 () Bool)

(declare-fun e!1760871 () Bool)

(assert (=> d!811269 e!1760871))

(declare-fun res!1163855 () Bool)

(assert (=> d!811269 (=> (not res!1163855) (not e!1760871))))

(declare-fun lt!997032 () tuple2!32726)

(assert (=> d!811269 (= res!1163855 (isBalanced!3061 (c!452852 (_1!19358 lt!997032))))))

(declare-datatypes ((tuple2!32728 0))(
  ( (tuple2!32729 (_1!19359 Conc!10028) (_2!19359 Conc!10028)) )
))
(declare-fun lt!997033 () tuple2!32728)

(assert (=> d!811269 (= lt!997032 (tuple2!32727 (BalanceConc!19671 (_1!19359 lt!997033)) (BalanceConc!19671 (_2!19359 lt!997033))))))

(declare-fun splitAt!158 (Conc!10028 Int) tuple2!32728)

(assert (=> d!811269 (= lt!997033 (splitAt!158 (c!452852 totalInput!758) testedPSize!143))))

(assert (=> d!811269 (isBalanced!3061 (c!452852 totalInput!758))))

(assert (=> d!811269 (= (splitAt!157 totalInput!758 testedPSize!143) lt!997032)))

(declare-fun b!2789419 () Bool)

(declare-fun res!1163854 () Bool)

(assert (=> b!2789419 (=> (not res!1163854) (not e!1760871))))

(assert (=> b!2789419 (= res!1163854 (isBalanced!3061 (c!452852 (_2!19358 lt!997032))))))

(declare-fun b!2789420 () Bool)

(declare-datatypes ((tuple2!32730 0))(
  ( (tuple2!32731 (_1!19360 List!32406) (_2!19360 List!32406)) )
))
(declare-fun splitAtIndex!64 (List!32406 Int) tuple2!32730)

(assert (=> b!2789420 (= e!1760871 (= (tuple2!32731 (list!12156 (_1!19358 lt!997032)) (list!12156 (_2!19358 lt!997032))) (splitAtIndex!64 (list!12156 totalInput!758) testedPSize!143)))))

(assert (= (and d!811269 res!1163855) b!2789419))

(assert (= (and b!2789419 res!1163854) b!2789420))

(declare-fun m!3219915 () Bool)

(assert (=> d!811269 m!3219915))

(declare-fun m!3219917 () Bool)

(assert (=> d!811269 m!3219917))

(assert (=> d!811269 m!3219767))

(declare-fun m!3219919 () Bool)

(assert (=> b!2789419 m!3219919))

(declare-fun m!3219921 () Bool)

(assert (=> b!2789420 m!3219921))

(declare-fun m!3219923 () Bool)

(assert (=> b!2789420 m!3219923))

(assert (=> b!2789420 m!3219691))

(assert (=> b!2789420 m!3219691))

(declare-fun m!3219925 () Bool)

(assert (=> b!2789420 m!3219925))

(assert (=> b!2789276 d!811269))

(declare-fun d!811271 () Bool)

(declare-fun lt!997034 () Int)

(assert (=> d!811271 (= lt!997034 (size!25136 (list!12156 totalInput!758)))))

(assert (=> d!811271 (= lt!997034 (size!25137 (c!452852 totalInput!758)))))

(assert (=> d!811271 (= (size!25134 totalInput!758) lt!997034)))

(declare-fun bs!511085 () Bool)

(assert (= bs!511085 d!811271))

(assert (=> bs!511085 m!3219691))

(assert (=> bs!511085 m!3219691))

(declare-fun m!3219927 () Bool)

(assert (=> bs!511085 m!3219927))

(declare-fun m!3219929 () Bool)

(assert (=> bs!511085 m!3219929))

(assert (=> b!2789265 d!811271))

(declare-fun bs!511086 () Bool)

(declare-fun d!811273 () Bool)

(assert (= bs!511086 (and d!811273 d!811213)))

(declare-fun lambda!102360 () Int)

(assert (=> bs!511086 (not (= lambda!102360 lambda!102347))))

(declare-fun bs!511087 () Bool)

(declare-fun b!2789425 () Bool)

(assert (= bs!511087 (and b!2789425 d!811213)))

(declare-fun lambda!102361 () Int)

(assert (=> bs!511087 (not (= lambda!102361 lambda!102347))))

(declare-fun bs!511088 () Bool)

(assert (= bs!511088 (and b!2789425 d!811273)))

(assert (=> bs!511088 (not (= lambda!102361 lambda!102360))))

(declare-fun bs!511089 () Bool)

(declare-fun b!2789426 () Bool)

(assert (= bs!511089 (and b!2789426 d!811213)))

(declare-fun lambda!102362 () Int)

(assert (=> bs!511089 (not (= lambda!102362 lambda!102347))))

(declare-fun bs!511090 () Bool)

(assert (= bs!511090 (and b!2789426 d!811273)))

(assert (=> bs!511090 (not (= lambda!102362 lambda!102360))))

(declare-fun bs!511091 () Bool)

(assert (= bs!511091 (and b!2789426 b!2789425)))

(assert (=> bs!511091 (= lambda!102362 lambda!102361)))

(declare-fun e!1760878 () Unit!46522)

(declare-fun Unit!46526 () Unit!46522)

(assert (=> b!2789426 (= e!1760878 Unit!46526)))

(declare-datatypes ((List!32408 0))(
  ( (Nil!32308) (Cons!32308 (h!37728 Context!4758) (t!228550 List!32408)) )
))
(declare-fun lt!997052 () List!32408)

(declare-fun call!182551 () List!32408)

(assert (=> b!2789426 (= lt!997052 call!182551)))

(declare-fun lt!997055 () Unit!46522)

(declare-fun lemmaForallThenNotExists!98 (List!32408 Int) Unit!46522)

(assert (=> b!2789426 (= lt!997055 (lemmaForallThenNotExists!98 lt!997052 lambda!102360))))

(declare-fun call!182552 () Bool)

(assert (=> b!2789426 (not call!182552)))

(declare-fun lt!997051 () Unit!46522)

(assert (=> b!2789426 (= lt!997051 lt!997055)))

(declare-fun Unit!46527 () Unit!46522)

(assert (=> b!2789425 (= e!1760878 Unit!46527)))

(declare-fun lt!997054 () List!32408)

(assert (=> b!2789425 (= lt!997054 call!182551)))

(declare-fun lt!997056 () Unit!46522)

(declare-fun lemmaNotForallThenExists!98 (List!32408 Int) Unit!46522)

(assert (=> b!2789425 (= lt!997056 (lemmaNotForallThenExists!98 lt!997054 lambda!102360))))

(assert (=> b!2789425 call!182552))

(declare-fun lt!997053 () Unit!46522)

(assert (=> b!2789425 (= lt!997053 lt!997056)))

(declare-fun bm!182547 () Bool)

(declare-fun c!452894 () Bool)

(declare-fun exists!1000 (List!32408 Int) Bool)

(assert (=> bm!182547 (= call!182552 (exists!1000 (ite c!452894 lt!997054 lt!997052) (ite c!452894 lambda!102361 lambda!102362)))))

(declare-fun bm!182546 () Bool)

(declare-fun toList!1861 ((InoxSet Context!4758)) List!32408)

(assert (=> bm!182546 (= call!182551 (toList!1861 z!3684))))

(declare-fun lt!997057 () Bool)

(declare-datatypes ((Option!6276 0))(
  ( (None!6275) (Some!6275 (v!33914 List!32406)) )
))
(declare-fun isEmpty!18120 (Option!6276) Bool)

(declare-fun getLanguageWitness!206 ((InoxSet Context!4758)) Option!6276)

(assert (=> d!811273 (= lt!997057 (isEmpty!18120 (getLanguageWitness!206 z!3684)))))

(declare-fun forall!6667 ((InoxSet Context!4758) Int) Bool)

(assert (=> d!811273 (= lt!997057 (forall!6667 z!3684 lambda!102360))))

(declare-fun lt!997058 () Unit!46522)

(assert (=> d!811273 (= lt!997058 e!1760878)))

(assert (=> d!811273 (= c!452894 (not (forall!6667 z!3684 lambda!102360)))))

(assert (=> d!811273 (= (lostCauseZipper!473 z!3684) lt!997057)))

(assert (= (and d!811273 c!452894) b!2789425))

(assert (= (and d!811273 (not c!452894)) b!2789426))

(assert (= (or b!2789425 b!2789426) bm!182546))

(assert (= (or b!2789425 b!2789426) bm!182547))

(declare-fun m!3219931 () Bool)

(assert (=> bm!182547 m!3219931))

(declare-fun m!3219933 () Bool)

(assert (=> d!811273 m!3219933))

(assert (=> d!811273 m!3219933))

(declare-fun m!3219935 () Bool)

(assert (=> d!811273 m!3219935))

(declare-fun m!3219937 () Bool)

(assert (=> d!811273 m!3219937))

(assert (=> d!811273 m!3219937))

(declare-fun m!3219939 () Bool)

(assert (=> b!2789426 m!3219939))

(declare-fun m!3219941 () Bool)

(assert (=> b!2789425 m!3219941))

(declare-fun m!3219943 () Bool)

(assert (=> bm!182546 m!3219943))

(assert (=> b!2789284 d!811273))

(declare-fun d!811275 () Bool)

(assert (=> d!811275 (= testedSuffix!143 lt!996956)))

(declare-fun lt!997061 () Unit!46522)

(declare-fun choose!16406 (List!32406 List!32406 List!32406 List!32406 List!32406) Unit!46522)

(assert (=> d!811275 (= lt!997061 (choose!16406 testedP!183 testedSuffix!143 testedP!183 lt!996956 lt!996968))))

(assert (=> d!811275 (isPrefix!2596 testedP!183 lt!996968)))

(assert (=> d!811275 (= (lemmaSamePrefixThenSameSuffix!1174 testedP!183 testedSuffix!143 testedP!183 lt!996956 lt!996968) lt!997061)))

(declare-fun bs!511092 () Bool)

(assert (= bs!511092 d!811275))

(declare-fun m!3219945 () Bool)

(assert (=> bs!511092 m!3219945))

(assert (=> bs!511092 m!3219703))

(assert (=> b!2789284 d!811275))

(declare-fun d!811277 () Bool)

(declare-fun lt!997064 () List!32406)

(assert (=> d!811277 (= (++!7977 testedP!183 lt!997064) lt!996968)))

(declare-fun e!1760881 () List!32406)

(assert (=> d!811277 (= lt!997064 e!1760881)))

(declare-fun c!452897 () Bool)

(assert (=> d!811277 (= c!452897 ((_ is Cons!32306) testedP!183))))

(assert (=> d!811277 (>= (size!25136 lt!996968) (size!25136 testedP!183))))

(assert (=> d!811277 (= (getSuffix!1273 lt!996968 testedP!183) lt!997064)))

(declare-fun b!2789431 () Bool)

(assert (=> b!2789431 (= e!1760881 (getSuffix!1273 (tail!4410 lt!996968) (t!228548 testedP!183)))))

(declare-fun b!2789432 () Bool)

(assert (=> b!2789432 (= e!1760881 lt!996968)))

(assert (= (and d!811277 c!452897) b!2789431))

(assert (= (and d!811277 (not c!452897)) b!2789432))

(declare-fun m!3219947 () Bool)

(assert (=> d!811277 m!3219947))

(assert (=> d!811277 m!3219681))

(assert (=> d!811277 m!3219687))

(assert (=> b!2789431 m!3219825))

(assert (=> b!2789431 m!3219825))

(declare-fun m!3219949 () Bool)

(assert (=> b!2789431 m!3219949))

(assert (=> b!2789284 d!811277))

(declare-fun d!811279 () Bool)

(declare-fun lambda!102365 () Int)

(declare-fun forall!6668 (List!32404 Int) Bool)

(assert (=> d!811279 (= (inv!43896 setElem!23764) (forall!6668 (exprs!2879 setElem!23764) lambda!102365))))

(declare-fun bs!511093 () Bool)

(assert (= bs!511093 d!811279))

(declare-fun m!3219951 () Bool)

(assert (=> bs!511093 m!3219951))

(assert (=> setNonEmpty!23764 d!811279))

(declare-fun d!811281 () Bool)

(assert (=> d!811281 (isPrefix!2596 lt!996968 lt!996968)))

(declare-fun lt!997067 () Unit!46522)

(declare-fun choose!16407 (List!32406 List!32406) Unit!46522)

(assert (=> d!811281 (= lt!997067 (choose!16407 lt!996968 lt!996968))))

(assert (=> d!811281 (= (lemmaIsPrefixRefl!1700 lt!996968 lt!996968) lt!997067)))

(declare-fun bs!511094 () Bool)

(assert (= bs!511094 d!811281))

(assert (=> bs!511094 m!3219749))

(declare-fun m!3219953 () Bool)

(assert (=> bs!511094 m!3219953))

(assert (=> b!2789295 d!811281))

(declare-fun b!2789433 () Bool)

(declare-fun e!1760883 () Bool)

(declare-fun e!1760882 () Bool)

(assert (=> b!2789433 (= e!1760883 e!1760882)))

(declare-fun res!1163857 () Bool)

(assert (=> b!2789433 (=> (not res!1163857) (not e!1760882))))

(assert (=> b!2789433 (= res!1163857 (not ((_ is Nil!32306) lt!996968)))))

(declare-fun b!2789436 () Bool)

(declare-fun e!1760884 () Bool)

(assert (=> b!2789436 (= e!1760884 (>= (size!25136 lt!996968) (size!25136 lt!996968)))))

(declare-fun b!2789434 () Bool)

(declare-fun res!1163859 () Bool)

(assert (=> b!2789434 (=> (not res!1163859) (not e!1760882))))

(assert (=> b!2789434 (= res!1163859 (= (head!6178 lt!996968) (head!6178 lt!996968)))))

(declare-fun b!2789435 () Bool)

(assert (=> b!2789435 (= e!1760882 (isPrefix!2596 (tail!4410 lt!996968) (tail!4410 lt!996968)))))

(declare-fun d!811283 () Bool)

(assert (=> d!811283 e!1760884))

(declare-fun res!1163858 () Bool)

(assert (=> d!811283 (=> res!1163858 e!1760884)))

(declare-fun lt!997068 () Bool)

(assert (=> d!811283 (= res!1163858 (not lt!997068))))

(assert (=> d!811283 (= lt!997068 e!1760883)))

(declare-fun res!1163856 () Bool)

(assert (=> d!811283 (=> res!1163856 e!1760883)))

(assert (=> d!811283 (= res!1163856 ((_ is Nil!32306) lt!996968))))

(assert (=> d!811283 (= (isPrefix!2596 lt!996968 lt!996968) lt!997068)))

(assert (= (and d!811283 (not res!1163856)) b!2789433))

(assert (= (and b!2789433 res!1163857) b!2789434))

(assert (= (and b!2789434 res!1163859) b!2789435))

(assert (= (and d!811283 (not res!1163858)) b!2789436))

(assert (=> b!2789436 m!3219681))

(assert (=> b!2789436 m!3219681))

(assert (=> b!2789434 m!3219821))

(assert (=> b!2789434 m!3219821))

(assert (=> b!2789435 m!3219825))

(assert (=> b!2789435 m!3219825))

(assert (=> b!2789435 m!3219825))

(assert (=> b!2789435 m!3219825))

(declare-fun m!3219955 () Bool)

(assert (=> b!2789435 m!3219955))

(assert (=> b!2789295 d!811283))

(declare-fun d!811285 () Bool)

(assert (=> d!811285 (= lt!996968 testedP!183)))

(declare-fun lt!997071 () Unit!46522)

(declare-fun choose!16408 (List!32406 List!32406 List!32406) Unit!46522)

(assert (=> d!811285 (= lt!997071 (choose!16408 lt!996968 testedP!183 lt!996968))))

(assert (=> d!811285 (isPrefix!2596 lt!996968 lt!996968)))

(assert (=> d!811285 (= (lemmaIsPrefixSameLengthThenSameList!480 lt!996968 testedP!183 lt!996968) lt!997071)))

(declare-fun bs!511095 () Bool)

(assert (= bs!511095 d!811285))

(declare-fun m!3219957 () Bool)

(assert (=> bs!511095 m!3219957))

(assert (=> bs!511095 m!3219749))

(assert (=> b!2789295 d!811285))

(declare-fun e!1760893 () Bool)

(assert (=> b!2789287 (= tp!885213 e!1760893)))

(declare-fun b!2789445 () Bool)

(declare-fun e!1760891 () Bool)

(declare-fun tp!885225 () Bool)

(assert (=> b!2789445 (= e!1760891 tp!885225)))

(declare-fun setIsEmpty!23767 () Bool)

(declare-fun setRes!23767 () Bool)

(assert (=> setIsEmpty!23767 setRes!23767))

(declare-fun b!2789446 () Bool)

(declare-fun e!1760892 () Bool)

(declare-fun tp!885226 () Bool)

(assert (=> b!2789446 (= e!1760892 tp!885226)))

(declare-fun tp!885224 () Bool)

(declare-fun b!2789447 () Bool)

(assert (=> b!2789447 (= e!1760893 (and (inv!43896 (_1!19355 (_1!19356 (h!37727 mapDefault!17868)))) e!1760892 tp_is_empty!14135 setRes!23767 tp!885224))))

(declare-fun condSetEmpty!23767 () Bool)

(assert (=> b!2789447 (= condSetEmpty!23767 (= (_2!19356 (h!37727 mapDefault!17868)) ((as const (Array Context!4758 Bool)) false)))))

(declare-fun setNonEmpty!23767 () Bool)

(declare-fun setElem!23767 () Context!4758)

(declare-fun tp!885223 () Bool)

(assert (=> setNonEmpty!23767 (= setRes!23767 (and tp!885223 (inv!43896 setElem!23767) e!1760891))))

(declare-fun setRest!23767 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23767 (= (_2!19356 (h!37727 mapDefault!17868)) ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23767 true) setRest!23767))))

(assert (= b!2789447 b!2789446))

(assert (= (and b!2789447 condSetEmpty!23767) setIsEmpty!23767))

(assert (= (and b!2789447 (not condSetEmpty!23767)) setNonEmpty!23767))

(assert (= setNonEmpty!23767 b!2789445))

(assert (= (and b!2789287 ((_ is Cons!32307) mapDefault!17868)) b!2789447))

(declare-fun m!3219959 () Bool)

(assert (=> b!2789447 m!3219959))

(declare-fun m!3219961 () Bool)

(assert (=> setNonEmpty!23767 m!3219961))

(declare-fun e!1760898 () Bool)

(declare-fun b!2789456 () Bool)

(declare-fun tp!885234 () Bool)

(declare-fun tp!885235 () Bool)

(assert (=> b!2789456 (= e!1760898 (and (inv!43895 (left!24500 (c!452852 totalInput!758))) tp!885235 (inv!43895 (right!24830 (c!452852 totalInput!758))) tp!885234))))

(declare-fun b!2789458 () Bool)

(declare-fun e!1760899 () Bool)

(declare-fun tp!885233 () Bool)

(assert (=> b!2789458 (= e!1760899 tp!885233)))

(declare-fun b!2789457 () Bool)

(declare-fun inv!43899 (IArray!20061) Bool)

(assert (=> b!2789457 (= e!1760898 (and (inv!43899 (xs!13139 (c!452852 totalInput!758))) e!1760899))))

(assert (=> b!2789290 (= tp!885196 (and (inv!43895 (c!452852 totalInput!758)) e!1760898))))

(assert (= (and b!2789290 ((_ is Node!10028) (c!452852 totalInput!758))) b!2789456))

(assert (= b!2789457 b!2789458))

(assert (= (and b!2789290 ((_ is Leaf!15277) (c!452852 totalInput!758))) b!2789457))

(declare-fun m!3219963 () Bool)

(assert (=> b!2789456 m!3219963))

(declare-fun m!3219965 () Bool)

(assert (=> b!2789456 m!3219965))

(declare-fun m!3219967 () Bool)

(assert (=> b!2789457 m!3219967))

(assert (=> b!2789290 m!3219673))

(declare-fun b!2789463 () Bool)

(declare-fun e!1760902 () Bool)

(declare-fun tp!885240 () Bool)

(declare-fun tp!885241 () Bool)

(assert (=> b!2789463 (= e!1760902 (and tp!885240 tp!885241))))

(assert (=> b!2789279 (= tp!885202 e!1760902)))

(assert (= (and b!2789279 ((_ is Cons!32304) (exprs!2879 setElem!23764))) b!2789463))

(declare-fun b!2789468 () Bool)

(declare-fun e!1760905 () Bool)

(declare-fun tp!885244 () Bool)

(assert (=> b!2789468 (= e!1760905 (and tp_is_empty!14135 tp!885244))))

(assert (=> b!2789272 (= tp!885208 e!1760905)))

(assert (= (and b!2789272 ((_ is Cons!32306) (t!228548 testedSuffix!143))) b!2789468))

(declare-fun e!1760908 () Bool)

(assert (=> b!2789291 (= tp!885211 e!1760908)))

(declare-fun b!2789469 () Bool)

(declare-fun e!1760906 () Bool)

(declare-fun tp!885247 () Bool)

(assert (=> b!2789469 (= e!1760906 tp!885247)))

(declare-fun setIsEmpty!23768 () Bool)

(declare-fun setRes!23768 () Bool)

(assert (=> setIsEmpty!23768 setRes!23768))

(declare-fun b!2789470 () Bool)

(declare-fun e!1760907 () Bool)

(declare-fun tp!885248 () Bool)

(assert (=> b!2789470 (= e!1760907 tp!885248)))

(declare-fun tp!885246 () Bool)

(declare-fun b!2789471 () Bool)

(assert (=> b!2789471 (= e!1760908 (and (inv!43896 (_1!19355 (_1!19356 (h!37727 (zeroValue!4179 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890)))))))))) e!1760907 tp_is_empty!14135 setRes!23768 tp!885246))))

(declare-fun condSetEmpty!23768 () Bool)

(assert (=> b!2789471 (= condSetEmpty!23768 (= (_2!19356 (h!37727 (zeroValue!4179 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890)))))))) ((as const (Array Context!4758 Bool)) false)))))

(declare-fun tp!885245 () Bool)

(declare-fun setNonEmpty!23768 () Bool)

(declare-fun setElem!23768 () Context!4758)

(assert (=> setNonEmpty!23768 (= setRes!23768 (and tp!885245 (inv!43896 setElem!23768) e!1760906))))

(declare-fun setRest!23768 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23768 (= (_2!19356 (h!37727 (zeroValue!4179 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23768 true) setRest!23768))))

(assert (= b!2789471 b!2789470))

(assert (= (and b!2789471 condSetEmpty!23768) setIsEmpty!23768))

(assert (= (and b!2789471 (not condSetEmpty!23768)) setNonEmpty!23768))

(assert (= setNonEmpty!23768 b!2789469))

(assert (= (and b!2789291 ((_ is Cons!32307) (zeroValue!4179 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890)))))))) b!2789471))

(declare-fun m!3219969 () Bool)

(assert (=> b!2789471 m!3219969))

(declare-fun m!3219971 () Bool)

(assert (=> setNonEmpty!23768 m!3219971))

(declare-fun e!1760911 () Bool)

(assert (=> b!2789291 (= tp!885204 e!1760911)))

(declare-fun b!2789472 () Bool)

(declare-fun e!1760909 () Bool)

(declare-fun tp!885251 () Bool)

(assert (=> b!2789472 (= e!1760909 tp!885251)))

(declare-fun setIsEmpty!23769 () Bool)

(declare-fun setRes!23769 () Bool)

(assert (=> setIsEmpty!23769 setRes!23769))

(declare-fun b!2789473 () Bool)

(declare-fun e!1760910 () Bool)

(declare-fun tp!885252 () Bool)

(assert (=> b!2789473 (= e!1760910 tp!885252)))

(declare-fun tp!885250 () Bool)

(declare-fun b!2789474 () Bool)

(assert (=> b!2789474 (= e!1760911 (and (inv!43896 (_1!19355 (_1!19356 (h!37727 (minValue!4179 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890)))))))))) e!1760910 tp_is_empty!14135 setRes!23769 tp!885250))))

(declare-fun condSetEmpty!23769 () Bool)

(assert (=> b!2789474 (= condSetEmpty!23769 (= (_2!19356 (h!37727 (minValue!4179 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890)))))))) ((as const (Array Context!4758 Bool)) false)))))

(declare-fun setNonEmpty!23769 () Bool)

(declare-fun setElem!23769 () Context!4758)

(declare-fun tp!885249 () Bool)

(assert (=> setNonEmpty!23769 (= setRes!23769 (and tp!885249 (inv!43896 setElem!23769) e!1760909))))

(declare-fun setRest!23769 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23769 (= (_2!19356 (h!37727 (minValue!4179 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23769 true) setRest!23769))))

(assert (= b!2789474 b!2789473))

(assert (= (and b!2789474 condSetEmpty!23769) setIsEmpty!23769))

(assert (= (and b!2789474 (not condSetEmpty!23769)) setNonEmpty!23769))

(assert (= setNonEmpty!23769 b!2789472))

(assert (= (and b!2789291 ((_ is Cons!32307) (minValue!4179 (v!33912 (underlying!8043 (v!33913 (underlying!8044 (cache!3969 cacheUp!890)))))))) b!2789474))

(declare-fun m!3219973 () Bool)

(assert (=> b!2789474 m!3219973))

(declare-fun m!3219975 () Bool)

(assert (=> setNonEmpty!23769 m!3219975))

(declare-fun b!2789475 () Bool)

(declare-fun e!1760912 () Bool)

(declare-fun tp!885253 () Bool)

(assert (=> b!2789475 (= e!1760912 (and tp_is_empty!14135 tp!885253))))

(assert (=> b!2789263 (= tp!885212 e!1760912)))

(assert (= (and b!2789263 ((_ is Cons!32306) (t!228548 testedP!183))) b!2789475))

(declare-fun setIsEmpty!23772 () Bool)

(declare-fun setRes!23772 () Bool)

(assert (=> setIsEmpty!23772 setRes!23772))

(declare-fun setElem!23772 () Context!4758)

(declare-fun setNonEmpty!23772 () Bool)

(declare-fun tp!885267 () Bool)

(declare-fun e!1760920 () Bool)

(assert (=> setNonEmpty!23772 (= setRes!23772 (and tp!885267 (inv!43896 setElem!23772) e!1760920))))

(declare-fun setRest!23772 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23772 (= (_2!19354 (h!37725 (zeroValue!4178 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23772 true) setRest!23772))))

(declare-fun b!2789484 () Bool)

(declare-fun tp!885268 () Bool)

(declare-fun e!1760919 () Bool)

(declare-fun e!1760921 () Bool)

(declare-fun tp!885265 () Bool)

(assert (=> b!2789484 (= e!1760921 (and tp!885268 (inv!43896 (_2!19353 (_1!19354 (h!37725 (zeroValue!4178 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009)))))))))) e!1760919 tp_is_empty!14135 setRes!23772 tp!885265))))

(declare-fun condSetEmpty!23772 () Bool)

(assert (=> b!2789484 (= condSetEmpty!23772 (= (_2!19354 (h!37725 (zeroValue!4178 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009)))))))) ((as const (Array Context!4758 Bool)) false)))))

(declare-fun b!2789485 () Bool)

(declare-fun tp!885266 () Bool)

(assert (=> b!2789485 (= e!1760920 tp!885266)))

(assert (=> b!2789292 (= tp!885203 e!1760921)))

(declare-fun b!2789486 () Bool)

(declare-fun tp!885264 () Bool)

(assert (=> b!2789486 (= e!1760919 tp!885264)))

(assert (= b!2789484 b!2789486))

(assert (= (and b!2789484 condSetEmpty!23772) setIsEmpty!23772))

(assert (= (and b!2789484 (not condSetEmpty!23772)) setNonEmpty!23772))

(assert (= setNonEmpty!23772 b!2789485))

(assert (= (and b!2789292 ((_ is Cons!32305) (zeroValue!4178 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009)))))))) b!2789484))

(declare-fun m!3219977 () Bool)

(assert (=> setNonEmpty!23772 m!3219977))

(declare-fun m!3219979 () Bool)

(assert (=> b!2789484 m!3219979))

(declare-fun setIsEmpty!23773 () Bool)

(declare-fun setRes!23773 () Bool)

(assert (=> setIsEmpty!23773 setRes!23773))

(declare-fun setElem!23773 () Context!4758)

(declare-fun e!1760923 () Bool)

(declare-fun tp!885272 () Bool)

(declare-fun setNonEmpty!23773 () Bool)

(assert (=> setNonEmpty!23773 (= setRes!23773 (and tp!885272 (inv!43896 setElem!23773) e!1760923))))

(declare-fun setRest!23773 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23773 (= (_2!19354 (h!37725 (minValue!4178 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23773 true) setRest!23773))))

(declare-fun e!1760922 () Bool)

(declare-fun b!2789487 () Bool)

(declare-fun tp!885270 () Bool)

(declare-fun e!1760924 () Bool)

(declare-fun tp!885273 () Bool)

(assert (=> b!2789487 (= e!1760924 (and tp!885273 (inv!43896 (_2!19353 (_1!19354 (h!37725 (minValue!4178 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009)))))))))) e!1760922 tp_is_empty!14135 setRes!23773 tp!885270))))

(declare-fun condSetEmpty!23773 () Bool)

(assert (=> b!2789487 (= condSetEmpty!23773 (= (_2!19354 (h!37725 (minValue!4178 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009)))))))) ((as const (Array Context!4758 Bool)) false)))))

(declare-fun b!2789488 () Bool)

(declare-fun tp!885271 () Bool)

(assert (=> b!2789488 (= e!1760923 tp!885271)))

(assert (=> b!2789292 (= tp!885198 e!1760924)))

(declare-fun b!2789489 () Bool)

(declare-fun tp!885269 () Bool)

(assert (=> b!2789489 (= e!1760922 tp!885269)))

(assert (= b!2789487 b!2789489))

(assert (= (and b!2789487 condSetEmpty!23773) setIsEmpty!23773))

(assert (= (and b!2789487 (not condSetEmpty!23773)) setNonEmpty!23773))

(assert (= setNonEmpty!23773 b!2789488))

(assert (= (and b!2789292 ((_ is Cons!32305) (minValue!4178 (v!33910 (underlying!8041 (v!33911 (underlying!8042 (cache!3968 cacheDown!1009)))))))) b!2789487))

(declare-fun m!3219981 () Bool)

(assert (=> setNonEmpty!23773 m!3219981))

(declare-fun m!3219983 () Bool)

(assert (=> b!2789487 m!3219983))

(declare-fun setIsEmpty!23774 () Bool)

(declare-fun setRes!23774 () Bool)

(assert (=> setIsEmpty!23774 setRes!23774))

(declare-fun e!1760926 () Bool)

(declare-fun setNonEmpty!23774 () Bool)

(declare-fun setElem!23774 () Context!4758)

(declare-fun tp!885277 () Bool)

(assert (=> setNonEmpty!23774 (= setRes!23774 (and tp!885277 (inv!43896 setElem!23774) e!1760926))))

(declare-fun setRest!23774 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23774 (= (_2!19354 (h!37725 mapDefault!17867)) ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23774 true) setRest!23774))))

(declare-fun tp!885275 () Bool)

(declare-fun b!2789490 () Bool)

(declare-fun tp!885278 () Bool)

(declare-fun e!1760925 () Bool)

(declare-fun e!1760927 () Bool)

(assert (=> b!2789490 (= e!1760927 (and tp!885278 (inv!43896 (_2!19353 (_1!19354 (h!37725 mapDefault!17867)))) e!1760925 tp_is_empty!14135 setRes!23774 tp!885275))))

(declare-fun condSetEmpty!23774 () Bool)

(assert (=> b!2789490 (= condSetEmpty!23774 (= (_2!19354 (h!37725 mapDefault!17867)) ((as const (Array Context!4758 Bool)) false)))))

(declare-fun b!2789491 () Bool)

(declare-fun tp!885276 () Bool)

(assert (=> b!2789491 (= e!1760926 tp!885276)))

(assert (=> b!2789264 (= tp!885214 e!1760927)))

(declare-fun b!2789492 () Bool)

(declare-fun tp!885274 () Bool)

(assert (=> b!2789492 (= e!1760925 tp!885274)))

(assert (= b!2789490 b!2789492))

(assert (= (and b!2789490 condSetEmpty!23774) setIsEmpty!23774))

(assert (= (and b!2789490 (not condSetEmpty!23774)) setNonEmpty!23774))

(assert (= setNonEmpty!23774 b!2789491))

(assert (= (and b!2789264 ((_ is Cons!32305) mapDefault!17867)) b!2789490))

(declare-fun m!3219985 () Bool)

(assert (=> setNonEmpty!23774 m!3219985))

(declare-fun m!3219987 () Bool)

(assert (=> b!2789490 m!3219987))

(declare-fun mapNonEmpty!17871 () Bool)

(declare-fun mapRes!17871 () Bool)

(declare-fun tp!885310 () Bool)

(declare-fun e!1760945 () Bool)

(assert (=> mapNonEmpty!17871 (= mapRes!17871 (and tp!885310 e!1760945))))

(declare-fun mapRest!17871 () (Array (_ BitVec 32) List!32405))

(declare-fun mapKey!17871 () (_ BitVec 32))

(declare-fun mapValue!17871 () List!32405)

(assert (=> mapNonEmpty!17871 (= mapRest!17867 (store mapRest!17871 mapKey!17871 mapValue!17871))))

(declare-fun condMapEmpty!17871 () Bool)

(declare-fun mapDefault!17871 () List!32405)

(assert (=> mapNonEmpty!17868 (= condMapEmpty!17871 (= mapRest!17867 ((as const (Array (_ BitVec 32) List!32405)) mapDefault!17871)))))

(declare-fun e!1760941 () Bool)

(assert (=> mapNonEmpty!17868 (= tp!885210 (and e!1760941 mapRes!17871))))

(declare-fun mapIsEmpty!17871 () Bool)

(assert (=> mapIsEmpty!17871 mapRes!17871))

(declare-fun b!2789507 () Bool)

(declare-fun e!1760942 () Bool)

(declare-fun tp!885305 () Bool)

(assert (=> b!2789507 (= e!1760942 tp!885305)))

(declare-fun b!2789508 () Bool)

(declare-fun e!1760944 () Bool)

(declare-fun tp!885304 () Bool)

(assert (=> b!2789508 (= e!1760944 tp!885304)))

(declare-fun b!2789509 () Bool)

(declare-fun e!1760940 () Bool)

(declare-fun tp!885302 () Bool)

(assert (=> b!2789509 (= e!1760940 tp!885302)))

(declare-fun tp!885309 () Bool)

(declare-fun setRes!23779 () Bool)

(declare-fun tp!885303 () Bool)

(declare-fun b!2789510 () Bool)

(assert (=> b!2789510 (= e!1760945 (and tp!885309 (inv!43896 (_2!19353 (_1!19354 (h!37725 mapValue!17871)))) e!1760940 tp_is_empty!14135 setRes!23779 tp!885303))))

(declare-fun condSetEmpty!23780 () Bool)

(assert (=> b!2789510 (= condSetEmpty!23780 (= (_2!19354 (h!37725 mapValue!17871)) ((as const (Array Context!4758 Bool)) false)))))

(declare-fun setElem!23780 () Context!4758)

(declare-fun e!1760943 () Bool)

(declare-fun tp!885311 () Bool)

(declare-fun setNonEmpty!23779 () Bool)

(assert (=> setNonEmpty!23779 (= setRes!23779 (and tp!885311 (inv!43896 setElem!23780) e!1760943))))

(declare-fun setRest!23779 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23779 (= (_2!19354 (h!37725 mapValue!17871)) ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23780 true) setRest!23779))))

(declare-fun b!2789511 () Bool)

(declare-fun tp!885307 () Bool)

(assert (=> b!2789511 (= e!1760943 tp!885307)))

(declare-fun setRes!23780 () Bool)

(declare-fun setNonEmpty!23780 () Bool)

(declare-fun tp!885306 () Bool)

(declare-fun setElem!23779 () Context!4758)

(assert (=> setNonEmpty!23780 (= setRes!23780 (and tp!885306 (inv!43896 setElem!23779) e!1760944))))

(declare-fun setRest!23780 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23780 (= (_2!19354 (h!37725 mapDefault!17871)) ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23779 true) setRest!23780))))

(declare-fun setIsEmpty!23779 () Bool)

(assert (=> setIsEmpty!23779 setRes!23780))

(declare-fun b!2789512 () Bool)

(declare-fun tp!885301 () Bool)

(declare-fun tp!885308 () Bool)

(assert (=> b!2789512 (= e!1760941 (and tp!885308 (inv!43896 (_2!19353 (_1!19354 (h!37725 mapDefault!17871)))) e!1760942 tp_is_empty!14135 setRes!23780 tp!885301))))

(declare-fun condSetEmpty!23779 () Bool)

(assert (=> b!2789512 (= condSetEmpty!23779 (= (_2!19354 (h!37725 mapDefault!17871)) ((as const (Array Context!4758 Bool)) false)))))

(declare-fun setIsEmpty!23780 () Bool)

(assert (=> setIsEmpty!23780 setRes!23779))

(assert (= (and mapNonEmpty!17868 condMapEmpty!17871) mapIsEmpty!17871))

(assert (= (and mapNonEmpty!17868 (not condMapEmpty!17871)) mapNonEmpty!17871))

(assert (= b!2789510 b!2789509))

(assert (= (and b!2789510 condSetEmpty!23780) setIsEmpty!23780))

(assert (= (and b!2789510 (not condSetEmpty!23780)) setNonEmpty!23779))

(assert (= setNonEmpty!23779 b!2789511))

(assert (= (and mapNonEmpty!17871 ((_ is Cons!32305) mapValue!17871)) b!2789510))

(assert (= b!2789512 b!2789507))

(assert (= (and b!2789512 condSetEmpty!23779) setIsEmpty!23779))

(assert (= (and b!2789512 (not condSetEmpty!23779)) setNonEmpty!23780))

(assert (= setNonEmpty!23780 b!2789508))

(assert (= (and mapNonEmpty!17868 ((_ is Cons!32305) mapDefault!17871)) b!2789512))

(declare-fun m!3219989 () Bool)

(assert (=> b!2789512 m!3219989))

(declare-fun m!3219991 () Bool)

(assert (=> setNonEmpty!23779 m!3219991))

(declare-fun m!3219993 () Bool)

(assert (=> setNonEmpty!23780 m!3219993))

(declare-fun m!3219995 () Bool)

(assert (=> mapNonEmpty!17871 m!3219995))

(declare-fun m!3219997 () Bool)

(assert (=> b!2789510 m!3219997))

(declare-fun setIsEmpty!23781 () Bool)

(declare-fun setRes!23781 () Bool)

(assert (=> setIsEmpty!23781 setRes!23781))

(declare-fun tp!885315 () Bool)

(declare-fun e!1760947 () Bool)

(declare-fun setNonEmpty!23781 () Bool)

(declare-fun setElem!23781 () Context!4758)

(assert (=> setNonEmpty!23781 (= setRes!23781 (and tp!885315 (inv!43896 setElem!23781) e!1760947))))

(declare-fun setRest!23781 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23781 (= (_2!19354 (h!37725 mapValue!17868)) ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23781 true) setRest!23781))))

(declare-fun b!2789513 () Bool)

(declare-fun tp!885313 () Bool)

(declare-fun tp!885316 () Bool)

(declare-fun e!1760948 () Bool)

(declare-fun e!1760946 () Bool)

(assert (=> b!2789513 (= e!1760948 (and tp!885316 (inv!43896 (_2!19353 (_1!19354 (h!37725 mapValue!17868)))) e!1760946 tp_is_empty!14135 setRes!23781 tp!885313))))

(declare-fun condSetEmpty!23781 () Bool)

(assert (=> b!2789513 (= condSetEmpty!23781 (= (_2!19354 (h!37725 mapValue!17868)) ((as const (Array Context!4758 Bool)) false)))))

(declare-fun b!2789514 () Bool)

(declare-fun tp!885314 () Bool)

(assert (=> b!2789514 (= e!1760947 tp!885314)))

(assert (=> mapNonEmpty!17868 (= tp!885201 e!1760948)))

(declare-fun b!2789515 () Bool)

(declare-fun tp!885312 () Bool)

(assert (=> b!2789515 (= e!1760946 tp!885312)))

(assert (= b!2789513 b!2789515))

(assert (= (and b!2789513 condSetEmpty!23781) setIsEmpty!23781))

(assert (= (and b!2789513 (not condSetEmpty!23781)) setNonEmpty!23781))

(assert (= setNonEmpty!23781 b!2789514))

(assert (= (and mapNonEmpty!17868 ((_ is Cons!32305) mapValue!17868)) b!2789513))

(declare-fun m!3219999 () Bool)

(assert (=> setNonEmpty!23781 m!3219999))

(declare-fun m!3220001 () Bool)

(assert (=> b!2789513 m!3220001))

(declare-fun condSetEmpty!23784 () Bool)

(assert (=> setNonEmpty!23764 (= condSetEmpty!23784 (= setRest!23764 ((as const (Array Context!4758 Bool)) false)))))

(declare-fun setRes!23784 () Bool)

(assert (=> setNonEmpty!23764 (= tp!885209 setRes!23784)))

(declare-fun setIsEmpty!23784 () Bool)

(assert (=> setIsEmpty!23784 setRes!23784))

(declare-fun e!1760951 () Bool)

(declare-fun tp!885322 () Bool)

(declare-fun setNonEmpty!23784 () Bool)

(declare-fun setElem!23784 () Context!4758)

(assert (=> setNonEmpty!23784 (= setRes!23784 (and tp!885322 (inv!43896 setElem!23784) e!1760951))))

(declare-fun setRest!23784 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23784 (= setRest!23764 ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23784 true) setRest!23784))))

(declare-fun b!2789520 () Bool)

(declare-fun tp!885321 () Bool)

(assert (=> b!2789520 (= e!1760951 tp!885321)))

(assert (= (and setNonEmpty!23764 condSetEmpty!23784) setIsEmpty!23784))

(assert (= (and setNonEmpty!23764 (not condSetEmpty!23784)) setNonEmpty!23784))

(assert (= setNonEmpty!23784 b!2789520))

(declare-fun m!3220003 () Bool)

(assert (=> setNonEmpty!23784 m!3220003))

(declare-fun b!2789535 () Bool)

(declare-fun e!1760966 () Bool)

(declare-fun tp!885348 () Bool)

(assert (=> b!2789535 (= e!1760966 tp!885348)))

(declare-fun mapDefault!17874 () List!32407)

(declare-fun e!1760969 () Bool)

(declare-fun setRes!23790 () Bool)

(declare-fun tp!885345 () Bool)

(declare-fun e!1760964 () Bool)

(declare-fun b!2789536 () Bool)

(assert (=> b!2789536 (= e!1760969 (and (inv!43896 (_1!19355 (_1!19356 (h!37727 mapDefault!17874)))) e!1760964 tp_is_empty!14135 setRes!23790 tp!885345))))

(declare-fun condSetEmpty!23789 () Bool)

(assert (=> b!2789536 (= condSetEmpty!23789 (= (_2!19356 (h!37727 mapDefault!17874)) ((as const (Array Context!4758 Bool)) false)))))

(declare-fun e!1760967 () Bool)

(declare-fun mapValue!17874 () List!32407)

(declare-fun tp!885347 () Bool)

(declare-fun setRes!23789 () Bool)

(declare-fun e!1760968 () Bool)

(declare-fun b!2789537 () Bool)

(assert (=> b!2789537 (= e!1760968 (and (inv!43896 (_1!19355 (_1!19356 (h!37727 mapValue!17874)))) e!1760967 tp_is_empty!14135 setRes!23789 tp!885347))))

(declare-fun condSetEmpty!23790 () Bool)

(assert (=> b!2789537 (= condSetEmpty!23790 (= (_2!19356 (h!37727 mapValue!17874)) ((as const (Array Context!4758 Bool)) false)))))

(declare-fun b!2789538 () Bool)

(declare-fun e!1760965 () Bool)

(declare-fun tp!885341 () Bool)

(assert (=> b!2789538 (= e!1760965 tp!885341)))

(declare-fun condMapEmpty!17874 () Bool)

(assert (=> mapNonEmpty!17867 (= condMapEmpty!17874 (= mapRest!17868 ((as const (Array (_ BitVec 32) List!32407)) mapDefault!17874)))))

(declare-fun mapRes!17874 () Bool)

(assert (=> mapNonEmpty!17867 (= tp!885200 (and e!1760969 mapRes!17874))))

(declare-fun tp!885343 () Bool)

(declare-fun setElem!23789 () Context!4758)

(declare-fun setNonEmpty!23789 () Bool)

(assert (=> setNonEmpty!23789 (= setRes!23790 (and tp!885343 (inv!43896 setElem!23789) e!1760965))))

(declare-fun setRest!23790 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23789 (= (_2!19356 (h!37727 mapDefault!17874)) ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23789 true) setRest!23790))))

(declare-fun b!2789539 () Bool)

(declare-fun tp!885344 () Bool)

(assert (=> b!2789539 (= e!1760964 tp!885344)))

(declare-fun b!2789540 () Bool)

(declare-fun tp!885349 () Bool)

(assert (=> b!2789540 (= e!1760967 tp!885349)))

(declare-fun mapNonEmpty!17874 () Bool)

(declare-fun tp!885342 () Bool)

(assert (=> mapNonEmpty!17874 (= mapRes!17874 (and tp!885342 e!1760968))))

(declare-fun mapRest!17874 () (Array (_ BitVec 32) List!32407))

(declare-fun mapKey!17874 () (_ BitVec 32))

(assert (=> mapNonEmpty!17874 (= mapRest!17868 (store mapRest!17874 mapKey!17874 mapValue!17874))))

(declare-fun setIsEmpty!23789 () Bool)

(assert (=> setIsEmpty!23789 setRes!23789))

(declare-fun setIsEmpty!23790 () Bool)

(assert (=> setIsEmpty!23790 setRes!23790))

(declare-fun tp!885346 () Bool)

(declare-fun setNonEmpty!23790 () Bool)

(declare-fun setElem!23790 () Context!4758)

(assert (=> setNonEmpty!23790 (= setRes!23789 (and tp!885346 (inv!43896 setElem!23790) e!1760966))))

(declare-fun setRest!23789 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23790 (= (_2!19356 (h!37727 mapValue!17874)) ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23790 true) setRest!23789))))

(declare-fun mapIsEmpty!17874 () Bool)

(assert (=> mapIsEmpty!17874 mapRes!17874))

(assert (= (and mapNonEmpty!17867 condMapEmpty!17874) mapIsEmpty!17874))

(assert (= (and mapNonEmpty!17867 (not condMapEmpty!17874)) mapNonEmpty!17874))

(assert (= b!2789537 b!2789540))

(assert (= (and b!2789537 condSetEmpty!23790) setIsEmpty!23789))

(assert (= (and b!2789537 (not condSetEmpty!23790)) setNonEmpty!23790))

(assert (= setNonEmpty!23790 b!2789535))

(assert (= (and mapNonEmpty!17874 ((_ is Cons!32307) mapValue!17874)) b!2789537))

(assert (= b!2789536 b!2789539))

(assert (= (and b!2789536 condSetEmpty!23789) setIsEmpty!23790))

(assert (= (and b!2789536 (not condSetEmpty!23789)) setNonEmpty!23789))

(assert (= setNonEmpty!23789 b!2789538))

(assert (= (and mapNonEmpty!17867 ((_ is Cons!32307) mapDefault!17874)) b!2789536))

(declare-fun m!3220005 () Bool)

(assert (=> setNonEmpty!23789 m!3220005))

(declare-fun m!3220007 () Bool)

(assert (=> mapNonEmpty!17874 m!3220007))

(declare-fun m!3220009 () Bool)

(assert (=> b!2789536 m!3220009))

(declare-fun m!3220011 () Bool)

(assert (=> setNonEmpty!23790 m!3220011))

(declare-fun m!3220013 () Bool)

(assert (=> b!2789537 m!3220013))

(declare-fun e!1760972 () Bool)

(assert (=> mapNonEmpty!17867 (= tp!885207 e!1760972)))

(declare-fun b!2789541 () Bool)

(declare-fun e!1760970 () Bool)

(declare-fun tp!885352 () Bool)

(assert (=> b!2789541 (= e!1760970 tp!885352)))

(declare-fun setIsEmpty!23791 () Bool)

(declare-fun setRes!23791 () Bool)

(assert (=> setIsEmpty!23791 setRes!23791))

(declare-fun b!2789542 () Bool)

(declare-fun e!1760971 () Bool)

(declare-fun tp!885353 () Bool)

(assert (=> b!2789542 (= e!1760971 tp!885353)))

(declare-fun tp!885351 () Bool)

(declare-fun b!2789543 () Bool)

(assert (=> b!2789543 (= e!1760972 (and (inv!43896 (_1!19355 (_1!19356 (h!37727 mapValue!17867)))) e!1760971 tp_is_empty!14135 setRes!23791 tp!885351))))

(declare-fun condSetEmpty!23791 () Bool)

(assert (=> b!2789543 (= condSetEmpty!23791 (= (_2!19356 (h!37727 mapValue!17867)) ((as const (Array Context!4758 Bool)) false)))))

(declare-fun setElem!23791 () Context!4758)

(declare-fun tp!885350 () Bool)

(declare-fun setNonEmpty!23791 () Bool)

(assert (=> setNonEmpty!23791 (= setRes!23791 (and tp!885350 (inv!43896 setElem!23791) e!1760970))))

(declare-fun setRest!23791 () (InoxSet Context!4758))

(assert (=> setNonEmpty!23791 (= (_2!19356 (h!37727 mapValue!17867)) ((_ map or) (store ((as const (Array Context!4758 Bool)) false) setElem!23791 true) setRest!23791))))

(assert (= b!2789543 b!2789542))

(assert (= (and b!2789543 condSetEmpty!23791) setIsEmpty!23791))

(assert (= (and b!2789543 (not condSetEmpty!23791)) setNonEmpty!23791))

(assert (= setNonEmpty!23791 b!2789541))

(assert (= (and mapNonEmpty!17867 ((_ is Cons!32307) mapValue!17867)) b!2789543))

(declare-fun m!3220015 () Bool)

(assert (=> b!2789543 m!3220015))

(declare-fun m!3220017 () Bool)

(assert (=> setNonEmpty!23791 m!3220017))

(check-sat (not b!2789290) (not b!2789512) (not b!2789484) (not b!2789358) (not b!2789325) (not d!811199) (not b!2789420) (not b!2789542) (not setNonEmpty!23791) (not b!2789412) (not d!811281) (not b!2789492) (not d!811261) (not b!2789463) (not b!2789487) (not b!2789475) (not b!2789372) (not bm!182546) (not d!811269) (not b!2789543) (not b!2789361) (not b!2789513) (not b!2789446) (not setNonEmpty!23784) (not b!2789337) (not b!2789507) (not b!2789413) (not b!2789535) (not b!2789394) (not b!2789539) (not b!2789471) (not setNonEmpty!23774) (not setNonEmpty!23767) (not setNonEmpty!23773) (not b_next!79625) (not bm!182541) (not b!2789474) (not b!2789426) (not b!2789511) (not setNonEmpty!23780) (not setNonEmpty!23781) (not b!2789300) (not b!2789536) (not b!2789364) (not b!2789473) (not b!2789318) (not setNonEmpty!23769) (not d!811245) (not b!2789537) (not b!2789373) (not d!811229) (not d!811263) (not b!2789321) (not b!2789403) (not b!2789469) (not d!811265) (not d!811227) (not b!2789447) (not b!2789435) b_and!203657 (not b!2789540) (not b!2789470) (not b!2789341) (not b!2789472) (not b!2789317) (not d!811277) (not b!2789301) (not b!2789431) (not b!2789326) (not b_next!79623) (not b!2789541) (not bm!182547) (not b!2789371) (not b!2789489) (not d!811257) (not b!2789392) (not b!2789419) (not d!811247) (not d!811217) (not d!811275) (not b!2789434) (not b!2789508) (not b!2789425) tp_is_empty!14135 (not d!811279) (not b!2789538) (not d!811239) (not mapNonEmpty!17874) (not d!811195) (not setNonEmpty!23789) (not b!2789402) b_and!203655 (not b!2789404) (not d!811201) (not b!2789322) (not b!2789339) (not d!811285) (not d!811191) (not d!811237) (not d!811207) (not b!2789468) (not b!2789485) (not mapNonEmpty!17871) (not d!811215) (not b!2789456) (not b_next!79627) (not b!2789350) b_and!203661 (not setNonEmpty!23772) (not b!2789407) (not d!811267) (not b!2789520) (not b!2789458) (not b!2789490) (not b!2789457) (not d!811221) (not d!811271) (not b!2789436) (not b!2789307) (not setNonEmpty!23768) (not setNonEmpty!23790) (not b!2789342) (not b!2789509) (not d!811273) (not b!2789514) (not b!2789408) (not b!2789491) (not d!811203) (not setNonEmpty!23779) (not b!2789304) (not b!2789488) (not d!811233) (not b!2789445) (not b!2789515) (not d!811205) (not b!2789510) (not d!811213) (not b!2789486) (not b!2789410) (not b!2789338) (not b!2789406) b_and!203659 (not b!2789352) (not b_next!79621))
(check-sat (not b_next!79625) b_and!203657 (not b_next!79623) b_and!203655 (not b_next!79627) b_and!203661 b_and!203659 (not b_next!79621))
