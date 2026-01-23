; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207556 () Bool)

(assert start!207556)

(declare-fun b!2132818 () Bool)

(declare-fun b_free!62357 () Bool)

(declare-fun b_next!63061 () Bool)

(assert (=> b!2132818 (= b_free!62357 (not b_next!63061))))

(declare-fun tp!656528 () Bool)

(declare-fun b_and!171937 () Bool)

(assert (=> b!2132818 (= tp!656528 b_and!171937)))

(declare-fun b!2132792 () Bool)

(declare-fun b_free!62359 () Bool)

(declare-fun b_next!63063 () Bool)

(assert (=> b!2132792 (= b_free!62359 (not b_next!63063))))

(declare-fun tp!656540 () Bool)

(declare-fun b_and!171939 () Bool)

(assert (=> b!2132792 (= tp!656540 b_and!171939)))

(declare-fun b!2132805 () Bool)

(declare-fun b_free!62361 () Bool)

(declare-fun b_next!63065 () Bool)

(assert (=> b!2132805 (= b_free!62361 (not b_next!63065))))

(declare-fun tp!656545 () Bool)

(declare-fun b_and!171941 () Bool)

(assert (=> b!2132805 (= tp!656545 b_and!171941)))

(declare-fun b!2132811 () Bool)

(declare-fun b_free!62363 () Bool)

(declare-fun b_next!63067 () Bool)

(assert (=> b!2132811 (= b_free!62363 (not b_next!63067))))

(declare-fun tp!656554 () Bool)

(declare-fun b_and!171943 () Bool)

(assert (=> b!2132811 (= tp!656554 b_and!171943)))

(declare-fun b!2132801 () Bool)

(declare-fun b_free!62365 () Bool)

(declare-fun b_next!63069 () Bool)

(assert (=> b!2132801 (= b_free!62365 (not b_next!63069))))

(declare-fun tp!656553 () Bool)

(declare-fun b_and!171945 () Bool)

(assert (=> b!2132801 (= tp!656553 b_and!171945)))

(declare-fun b!2132791 () Bool)

(declare-fun b_free!62367 () Bool)

(declare-fun b_next!63071 () Bool)

(assert (=> b!2132791 (= b_free!62367 (not b_next!63071))))

(declare-fun tp!656529 () Bool)

(declare-fun b_and!171947 () Bool)

(assert (=> b!2132791 (= tp!656529 b_and!171947)))

(declare-fun b!2132815 () Bool)

(assert (=> b!2132815 true))

(declare-fun bs!444276 () Bool)

(declare-fun b!2132779 () Bool)

(assert (= bs!444276 (and b!2132779 b!2132815)))

(declare-fun lambda!79291 () Int)

(declare-fun lambda!79290 () Int)

(assert (=> bs!444276 (not (= lambda!79291 lambda!79290))))

(assert (=> b!2132779 true))

(declare-fun b!2132776 () Bool)

(declare-fun e!1360745 () Bool)

(declare-fun e!1360752 () Bool)

(assert (=> b!2132776 (= e!1360745 e!1360752)))

(declare-fun b!2132777 () Bool)

(declare-fun e!1360757 () Bool)

(declare-fun e!1360725 () Bool)

(declare-datatypes ((C!11596 0))(
  ( (C!11597 (val!6784 Int)) )
))
(declare-datatypes ((Regex!5725 0))(
  ( (ElementMatch!5725 (c!340241 C!11596)) (Concat!10027 (regOne!11962 Regex!5725) (regTwo!11962 Regex!5725)) (EmptyExpr!5725) (Star!5725 (reg!6054 Regex!5725)) (EmptyLang!5725) (Union!5725 (regOne!11963 Regex!5725) (regTwo!11963 Regex!5725)) )
))
(declare-datatypes ((List!24124 0))(
  ( (Nil!24040) (Cons!24040 (h!29441 Regex!5725) (t!196652 List!24124)) )
))
(declare-datatypes ((Context!2590 0))(
  ( (Context!2591 (exprs!1795 List!24124)) )
))
(declare-datatypes ((tuple3!3174 0))(
  ( (tuple3!3175 (_1!13954 Regex!5725) (_2!13954 Context!2590) (_3!2057 C!11596)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23794 0))(
  ( (tuple2!23795 (_1!13955 tuple3!3174) (_2!13955 (InoxSet Context!2590))) )
))
(declare-datatypes ((List!24125 0))(
  ( (Nil!24041) (Cons!24041 (h!29442 tuple2!23794) (t!196653 List!24125)) )
))
(declare-datatypes ((array!8903 0))(
  ( (array!8904 (arr!3963 (Array (_ BitVec 32) (_ BitVec 64))) (size!18804 (_ BitVec 32))) )
))
(declare-datatypes ((array!8905 0))(
  ( (array!8906 (arr!3964 (Array (_ BitVec 32) List!24125)) (size!18805 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5234 0))(
  ( (LongMapFixedSize!5235 (defaultEntry!2982 Int) (mask!6795 (_ BitVec 32)) (extraKeys!2865 (_ BitVec 32)) (zeroValue!2875 List!24125) (minValue!2875 List!24125) (_size!5285 (_ BitVec 32)) (_keys!2914 array!8903) (_values!2897 array!8905) (_vacant!2678 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10293 0))(
  ( (Cell!10294 (v!28598 LongMapFixedSize!5234)) )
))
(declare-datatypes ((MutLongMap!2617 0))(
  ( (LongMap!2617 (underlying!5429 Cell!10293)) (MutLongMapExt!2616 (__x!16027 Int)) )
))
(declare-fun lt!796730 () MutLongMap!2617)

(get-info :version)

(assert (=> b!2132777 (= e!1360757 (and e!1360725 ((_ is LongMap!2617) lt!796730)))))

(declare-datatypes ((Hashable!2531 0))(
  ( (HashableExt!2530 (__x!16028 Int)) )
))
(declare-datatypes ((Cell!10295 0))(
  ( (Cell!10296 (v!28599 MutLongMap!2617)) )
))
(declare-datatypes ((MutableMap!2531 0))(
  ( (MutableMapExt!2530 (__x!16029 Int)) (HashMap!2531 (underlying!5430 Cell!10295) (hashF!4454 Hashable!2531) (_size!5286 (_ BitVec 32)) (defaultValue!2693 Int)) )
))
(declare-datatypes ((CacheDown!1736 0))(
  ( (CacheDown!1737 (cache!2912 MutableMap!2531)) )
))
(declare-fun cacheDown!1098 () CacheDown!1736)

(assert (=> b!2132777 (= lt!796730 (v!28599 (underlying!5430 (cache!2912 cacheDown!1098))))))

(declare-fun setIsEmpty!15816 () Bool)

(declare-fun setRes!15817 () Bool)

(assert (=> setIsEmpty!15816 setRes!15817))

(declare-fun setElem!15817 () Context!2590)

(declare-fun setNonEmpty!15816 () Bool)

(declare-fun tp!656547 () Bool)

(declare-fun e!1360727 () Bool)

(declare-fun inv!31686 (Context!2590) Bool)

(assert (=> setNonEmpty!15816 (= setRes!15817 (and tp!656547 (inv!31686 setElem!15817) e!1360727))))

(declare-datatypes ((List!24126 0))(
  ( (Nil!24042) (Cons!24042 (h!29443 C!11596) (t!196654 List!24126)) )
))
(declare-datatypes ((IArray!15731 0))(
  ( (IArray!15732 (innerList!7923 List!24126)) )
))
(declare-datatypes ((Conc!7863 0))(
  ( (Node!7863 (left!18534 Conc!7863) (right!18864 Conc!7863) (csize!15956 Int) (cheight!8074 Int)) (Leaf!11493 (xs!10805 IArray!15731) (csize!15957 Int)) (Empty!7863) )
))
(declare-datatypes ((BalanceConc!15488 0))(
  ( (BalanceConc!15489 (c!340242 Conc!7863)) )
))
(declare-datatypes ((StackFrame!142 0))(
  ( (StackFrame!143 (z!5799 (InoxSet Context!2590)) (from!2685 Int) (lastNullablePos!372 Int) (res!921792 Int) (totalInput!3026 BalanceConc!15488)) )
))
(declare-datatypes ((List!24127 0))(
  ( (Nil!24043) (Cons!24043 (h!29444 StackFrame!142) (t!196655 List!24127)) )
))
(declare-fun stack!8 () List!24127)

(declare-fun setRest!15817 () (InoxSet Context!2590))

(assert (=> setNonEmpty!15816 (= (z!5799 (h!29444 stack!8)) ((_ map or) (store ((as const (Array Context!2590 Bool)) false) setElem!15817 true) setRest!15817))))

(declare-fun res!921788 () Bool)

(declare-fun e!1360756 () Bool)

(assert (=> start!207556 (=> (not res!921788) (not e!1360756))))

(declare-fun from!1043 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207556 (= res!921788 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207556 e!1360756))

(declare-datatypes ((tuple3!3176 0))(
  ( (tuple3!3177 (_1!13956 (InoxSet Context!2590)) (_2!13956 Int) (_3!2058 Int)) )
))
(declare-datatypes ((tuple2!23796 0))(
  ( (tuple2!23797 (_1!13957 tuple3!3176) (_2!13957 Int)) )
))
(declare-datatypes ((List!24128 0))(
  ( (Nil!24044) (Cons!24044 (h!29445 tuple2!23796) (t!196656 List!24128)) )
))
(declare-datatypes ((array!8907 0))(
  ( (array!8908 (arr!3965 (Array (_ BitVec 32) List!24128)) (size!18806 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5236 0))(
  ( (LongMapFixedSize!5237 (defaultEntry!2983 Int) (mask!6796 (_ BitVec 32)) (extraKeys!2866 (_ BitVec 32)) (zeroValue!2876 List!24128) (minValue!2876 List!24128) (_size!5287 (_ BitVec 32)) (_keys!2915 array!8903) (_values!2898 array!8907) (_vacant!2679 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10297 0))(
  ( (Cell!10298 (v!28600 LongMapFixedSize!5236)) )
))
(declare-datatypes ((MutLongMap!2618 0))(
  ( (LongMap!2618 (underlying!5431 Cell!10297)) (MutLongMapExt!2617 (__x!16030 Int)) )
))
(declare-datatypes ((Cell!10299 0))(
  ( (Cell!10300 (v!28601 MutLongMap!2618)) )
))
(declare-datatypes ((Hashable!2532 0))(
  ( (HashableExt!2531 (__x!16031 Int)) )
))
(declare-datatypes ((MutableMap!2532 0))(
  ( (MutableMapExt!2531 (__x!16032 Int)) (HashMap!2532 (underlying!5432 Cell!10299) (hashF!4455 Hashable!2532) (_size!5288 (_ BitVec 32)) (defaultValue!2694 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!696 0))(
  ( (CacheFurthestNullable!697 (cache!2913 MutableMap!2532) (totalInput!3027 BalanceConc!15488)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!696)

(declare-fun e!1360751 () Bool)

(declare-fun inv!31687 (CacheFurthestNullable!696) Bool)

(assert (=> start!207556 (and (inv!31687 cacheFurthestNullable!114) e!1360751)))

(assert (=> start!207556 true))

(declare-fun e!1360742 () Bool)

(declare-fun inv!31688 (CacheDown!1736) Bool)

(assert (=> start!207556 (and (inv!31688 cacheDown!1098) e!1360742)))

(declare-datatypes ((tuple2!23798 0))(
  ( (tuple2!23799 (_1!13958 Context!2590) (_2!13958 C!11596)) )
))
(declare-datatypes ((tuple2!23800 0))(
  ( (tuple2!23801 (_1!13959 tuple2!23798) (_2!13959 (InoxSet Context!2590))) )
))
(declare-datatypes ((List!24129 0))(
  ( (Nil!24045) (Cons!24045 (h!29446 tuple2!23800) (t!196657 List!24129)) )
))
(declare-datatypes ((array!8909 0))(
  ( (array!8910 (arr!3966 (Array (_ BitVec 32) List!24129)) (size!18807 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5238 0))(
  ( (LongMapFixedSize!5239 (defaultEntry!2984 Int) (mask!6797 (_ BitVec 32)) (extraKeys!2867 (_ BitVec 32)) (zeroValue!2877 List!24129) (minValue!2877 List!24129) (_size!5289 (_ BitVec 32)) (_keys!2916 array!8903) (_values!2899 array!8909) (_vacant!2680 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10301 0))(
  ( (Cell!10302 (v!28602 LongMapFixedSize!5238)) )
))
(declare-datatypes ((MutLongMap!2619 0))(
  ( (LongMap!2619 (underlying!5433 Cell!10301)) (MutLongMapExt!2618 (__x!16033 Int)) )
))
(declare-datatypes ((Cell!10303 0))(
  ( (Cell!10304 (v!28603 MutLongMap!2619)) )
))
(declare-datatypes ((Hashable!2533 0))(
  ( (HashableExt!2532 (__x!16034 Int)) )
))
(declare-datatypes ((MutableMap!2533 0))(
  ( (MutableMapExt!2532 (__x!16035 Int)) (HashMap!2533 (underlying!5434 Cell!10303) (hashF!4456 Hashable!2533) (_size!5290 (_ BitVec 32)) (defaultValue!2695 Int)) )
))
(declare-datatypes ((CacheUp!1754 0))(
  ( (CacheUp!1755 (cache!2914 MutableMap!2533)) )
))
(declare-fun cacheUp!979 () CacheUp!1754)

(declare-fun e!1360734 () Bool)

(declare-fun inv!31689 (CacheUp!1754) Bool)

(assert (=> start!207556 (and (inv!31689 cacheUp!979) e!1360734)))

(declare-fun condSetEmpty!15816 () Bool)

(declare-fun z!3839 () (InoxSet Context!2590))

(assert (=> start!207556 (= condSetEmpty!15816 (= z!3839 ((as const (Array Context!2590 Bool)) false)))))

(declare-fun setRes!15816 () Bool)

(assert (=> start!207556 setRes!15816))

(declare-fun totalInput!851 () BalanceConc!15488)

(declare-fun e!1360739 () Bool)

(declare-fun inv!31690 (BalanceConc!15488) Bool)

(assert (=> start!207556 (and (inv!31690 totalInput!851) e!1360739)))

(declare-fun e!1360744 () Bool)

(assert (=> start!207556 e!1360744))

(declare-fun b!2132778 () Bool)

(declare-fun e!1360747 () Bool)

(declare-fun tp!656532 () Bool)

(declare-fun inv!31691 (Conc!7863) Bool)

(assert (=> b!2132778 (= e!1360747 (and (inv!31691 (c!340242 (totalInput!3026 (h!29444 stack!8)))) tp!656532))))

(declare-fun res!921790 () Bool)

(declare-fun e!1360758 () Bool)

(assert (=> b!2132779 (=> (not res!921790) (not e!1360758))))

(declare-fun forall!4917 (List!24127 Int) Bool)

(assert (=> b!2132779 (= res!921790 (forall!4917 stack!8 lambda!79291))))

(declare-fun b!2132780 () Bool)

(declare-fun e!1360731 () Bool)

(assert (=> b!2132780 (= e!1360725 e!1360731)))

(declare-fun b!2132781 () Bool)

(declare-fun e!1360755 () Bool)

(declare-fun e!1360746 () Bool)

(declare-fun lt!796734 () MutLongMap!2619)

(assert (=> b!2132781 (= e!1360755 (and e!1360746 ((_ is LongMap!2619) lt!796734)))))

(assert (=> b!2132781 (= lt!796734 (v!28603 (underlying!5434 (cache!2914 cacheUp!979))))))

(declare-fun b!2132782 () Bool)

(declare-fun e!1360728 () Bool)

(declare-fun tp!656541 () Bool)

(assert (=> b!2132782 (= e!1360728 tp!656541)))

(declare-fun mapNonEmpty!12628 () Bool)

(declare-fun mapRes!12629 () Bool)

(declare-fun tp!656534 () Bool)

(declare-fun tp!656552 () Bool)

(assert (=> mapNonEmpty!12628 (= mapRes!12629 (and tp!656534 tp!656552))))

(declare-fun mapKey!12628 () (_ BitVec 32))

(declare-fun mapValue!12630 () List!24128)

(declare-fun mapRest!12630 () (Array (_ BitVec 32) List!24128))

(assert (=> mapNonEmpty!12628 (= (arr!3965 (_values!2898 (v!28600 (underlying!5431 (v!28601 (underlying!5432 (cache!2913 cacheFurthestNullable!114))))))) (store mapRest!12630 mapKey!12628 mapValue!12630))))

(declare-fun b!2132783 () Bool)

(declare-fun tp!656544 () Bool)

(assert (=> b!2132783 (= e!1360727 tp!656544)))

(declare-fun b!2132784 () Bool)

(declare-fun res!921787 () Bool)

(declare-fun e!1360753 () Bool)

(assert (=> b!2132784 (=> res!921787 e!1360753)))

(assert (=> b!2132784 (= res!921787 (= from!1043 totalInputSize!296))))

(declare-fun b!2132785 () Bool)

(declare-fun e!1360749 () Bool)

(assert (=> b!2132785 (= e!1360742 e!1360749)))

(declare-fun b!2132786 () Bool)

(declare-fun e!1360750 () Bool)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2132786 (= e!1360750 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2132787 () Bool)

(declare-fun e!1360729 () Bool)

(declare-fun e!1360730 () Bool)

(assert (=> b!2132787 (= e!1360729 e!1360730)))

(declare-fun b!2132788 () Bool)

(declare-fun e!1360737 () Bool)

(declare-fun e!1360743 () Bool)

(assert (=> b!2132788 (= e!1360751 (and e!1360743 (inv!31690 (totalInput!3027 cacheFurthestNullable!114)) e!1360737))))

(declare-fun b!2132789 () Bool)

(declare-fun res!921786 () Bool)

(declare-fun e!1360740 () Bool)

(assert (=> b!2132789 (=> (not res!921786) (not e!1360740))))

(assert (=> b!2132789 (= res!921786 e!1360750)))

(declare-fun res!921784 () Bool)

(assert (=> b!2132789 (=> res!921784 e!1360750)))

(declare-fun nullableZipper!107 ((InoxSet Context!2590)) Bool)

(assert (=> b!2132789 (= res!921784 (not (nullableZipper!107 z!3839)))))

(declare-fun b!2132790 () Bool)

(declare-fun e!1360748 () Int)

(assert (=> b!2132790 (= e!1360748 lastNullablePos!123)))

(declare-fun e!1360754 () Bool)

(assert (=> b!2132791 (= e!1360754 (and e!1360755 tp!656529))))

(declare-fun e!1360732 () Bool)

(assert (=> b!2132792 (= e!1360743 (and e!1360732 tp!656540))))

(declare-fun b!2132793 () Bool)

(declare-fun tp!656538 () Bool)

(assert (=> b!2132793 (= e!1360739 (and (inv!31691 (c!340242 totalInput!851)) tp!656538))))

(declare-fun b!2132794 () Bool)

(assert (=> b!2132794 (= e!1360734 e!1360754)))

(declare-fun mapIsEmpty!12628 () Bool)

(assert (=> mapIsEmpty!12628 mapRes!12629))

(declare-fun b!2132795 () Bool)

(declare-fun e!1360726 () Bool)

(declare-fun tp!656551 () Bool)

(declare-fun mapRes!12630 () Bool)

(assert (=> b!2132795 (= e!1360726 (and tp!656551 mapRes!12630))))

(declare-fun condMapEmpty!12628 () Bool)

(declare-fun mapDefault!12629 () List!24125)

(assert (=> b!2132795 (= condMapEmpty!12628 (= (arr!3964 (_values!2897 (v!28598 (underlying!5429 (v!28599 (underlying!5430 (cache!2912 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24125)) mapDefault!12629)))))

(declare-fun b!2132796 () Bool)

(declare-fun tp!656542 () Bool)

(assert (=> b!2132796 (= e!1360737 (and (inv!31691 (c!340242 (totalInput!3027 cacheFurthestNullable!114))) tp!656542))))

(declare-fun b!2132797 () Bool)

(assert (=> b!2132797 (= e!1360756 e!1360740)))

(declare-fun res!921780 () Bool)

(assert (=> b!2132797 (=> (not res!921780) (not e!1360740))))

(declare-fun lt!796733 () Int)

(assert (=> b!2132797 (= res!921780 (and (= totalInputSize!296 lt!796733) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18808 (BalanceConc!15488) Int)

(assert (=> b!2132797 (= lt!796733 (size!18808 totalInput!851))))

(declare-fun b!2132798 () Bool)

(declare-fun e!1360735 () Bool)

(assert (=> b!2132798 (= e!1360730 e!1360735)))

(declare-fun b!2132799 () Bool)

(assert (=> b!2132799 (= e!1360748 from!1043)))

(declare-fun e!1360723 () Bool)

(declare-fun b!2132800 () Bool)

(declare-fun tp!656533 () Bool)

(declare-fun inv!31692 (StackFrame!142) Bool)

(assert (=> b!2132800 (= e!1360744 (and (inv!31692 (h!29444 stack!8)) e!1360723 tp!656533))))

(declare-fun tp!656537 () Bool)

(declare-fun e!1360741 () Bool)

(declare-fun tp!656531 () Bool)

(declare-fun array_inv!2834 (array!8903) Bool)

(declare-fun array_inv!2835 (array!8905) Bool)

(assert (=> b!2132801 (= e!1360741 (and tp!656553 tp!656531 tp!656537 (array_inv!2834 (_keys!2914 (v!28598 (underlying!5429 (v!28599 (underlying!5430 (cache!2912 cacheDown!1098))))))) (array_inv!2835 (_values!2897 (v!28598 (underlying!5429 (v!28599 (underlying!5430 (cache!2912 cacheDown!1098))))))) e!1360726))))

(declare-fun b!2132802 () Bool)

(assert (=> b!2132802 (= e!1360758 (not e!1360753))))

(declare-fun res!921779 () Bool)

(assert (=> b!2132802 (=> res!921779 e!1360753)))

(declare-datatypes ((Option!4900 0))(
  ( (None!4899) (Some!4899 (v!28604 Int)) )
))
(declare-fun get!7372 (CacheFurthestNullable!696 (InoxSet Context!2590) Int Int) Option!4900)

(assert (=> b!2132802 (= res!921779 ((_ is Some!4899) (get!7372 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2132802 (forall!4917 stack!8 lambda!79290)))

(declare-fun b!2132803 () Bool)

(assert (=> b!2132803 (= e!1360731 e!1360741)))

(declare-fun b!2132804 () Bool)

(assert (=> b!2132804 (= e!1360723 (and setRes!15817 (inv!31690 (totalInput!3026 (h!29444 stack!8))) e!1360747))))

(declare-fun condSetEmpty!15817 () Bool)

(assert (=> b!2132804 (= condSetEmpty!15817 (= (z!5799 (h!29444 stack!8)) ((as const (Array Context!2590 Bool)) false)))))

(declare-fun tp!656536 () Bool)

(declare-fun tp!656535 () Bool)

(declare-fun e!1360724 () Bool)

(declare-fun array_inv!2836 (array!8907) Bool)

(assert (=> b!2132805 (= e!1360735 (and tp!656545 tp!656535 tp!656536 (array_inv!2834 (_keys!2915 (v!28600 (underlying!5431 (v!28601 (underlying!5432 (cache!2913 cacheFurthestNullable!114))))))) (array_inv!2836 (_values!2898 (v!28600 (underlying!5431 (v!28601 (underlying!5432 (cache!2913 cacheFurthestNullable!114))))))) e!1360724))))

(declare-fun mapNonEmpty!12629 () Bool)

(declare-fun tp!656543 () Bool)

(declare-fun tp!656530 () Bool)

(assert (=> mapNonEmpty!12629 (= mapRes!12630 (and tp!656543 tp!656530))))

(declare-fun mapValue!12628 () List!24125)

(declare-fun mapKey!12630 () (_ BitVec 32))

(declare-fun mapRest!12628 () (Array (_ BitVec 32) List!24125))

(assert (=> mapNonEmpty!12629 (= (arr!3964 (_values!2897 (v!28598 (underlying!5429 (v!28599 (underlying!5430 (cache!2912 cacheDown!1098))))))) (store mapRest!12628 mapKey!12630 mapValue!12628))))

(declare-fun b!2132806 () Bool)

(declare-fun res!921782 () Bool)

(assert (=> b!2132806 (=> (not res!921782) (not e!1360740))))

(declare-fun valid!2051 (CacheUp!1754) Bool)

(assert (=> b!2132806 (= res!921782 (valid!2051 cacheUp!979))))

(declare-fun b!2132807 () Bool)

(assert (=> b!2132807 (= e!1360746 e!1360745)))

(declare-fun b!2132808 () Bool)

(declare-fun tp!656539 () Bool)

(assert (=> b!2132808 (= e!1360724 (and tp!656539 mapRes!12629))))

(declare-fun condMapEmpty!12629 () Bool)

(declare-fun mapDefault!12630 () List!24128)

(assert (=> b!2132808 (= condMapEmpty!12629 (= (arr!3965 (_values!2898 (v!28600 (underlying!5431 (v!28601 (underlying!5432 (cache!2913 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24128)) mapDefault!12630)))))

(declare-fun b!2132809 () Bool)

(assert (=> b!2132809 (= e!1360753 (and (>= (+ 1 from!1043) 0) (<= (+ 1 from!1043) lt!796733)))))

(declare-datatypes ((tuple3!3178 0))(
  ( (tuple3!3179 (_1!13960 (InoxSet Context!2590)) (_2!13960 CacheUp!1754) (_3!2059 CacheDown!1736)) )
))
(declare-fun lt!796732 () tuple3!3178)

(declare-fun lt!796729 () Int)

(declare-fun furthestNullablePosition!41 ((InoxSet Context!2590) Int BalanceConc!15488 Int Int) Int)

(assert (=> b!2132809 (= lt!796729 (furthestNullablePosition!41 (_1!13960 lt!796732) (+ 1 from!1043) totalInput!851 lt!796733 e!1360748))))

(declare-fun c!340240 () Bool)

(assert (=> b!2132809 (= c!340240 (nullableZipper!107 (_1!13960 lt!796732)))))

(declare-fun derivationStepZipperMem!31 ((InoxSet Context!2590) C!11596 CacheUp!1754 CacheDown!1736) tuple3!3178)

(declare-fun apply!5930 (BalanceConc!15488 Int) C!11596)

(assert (=> b!2132809 (= lt!796732 (derivationStepZipperMem!31 z!3839 (apply!5930 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2132810 () Bool)

(declare-fun e!1360738 () Bool)

(declare-fun tp!656549 () Bool)

(declare-fun mapRes!12628 () Bool)

(assert (=> b!2132810 (= e!1360738 (and tp!656549 mapRes!12628))))

(declare-fun condMapEmpty!12630 () Bool)

(declare-fun mapDefault!12628 () List!24129)

(assert (=> b!2132810 (= condMapEmpty!12630 (= (arr!3966 (_values!2899 (v!28602 (underlying!5433 (v!28603 (underlying!5434 (cache!2914 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24129)) mapDefault!12628)))))

(declare-fun setElem!15816 () Context!2590)

(declare-fun setNonEmpty!15817 () Bool)

(declare-fun tp!656527 () Bool)

(assert (=> setNonEmpty!15817 (= setRes!15816 (and tp!656527 (inv!31686 setElem!15816) e!1360728))))

(declare-fun setRest!15816 () (InoxSet Context!2590))

(assert (=> setNonEmpty!15817 (= z!3839 ((_ map or) (store ((as const (Array Context!2590 Bool)) false) setElem!15816 true) setRest!15816))))

(declare-fun mapIsEmpty!12629 () Bool)

(assert (=> mapIsEmpty!12629 mapRes!12630))

(declare-fun tp!656526 () Bool)

(declare-fun tp!656548 () Bool)

(declare-fun array_inv!2837 (array!8909) Bool)

(assert (=> b!2132811 (= e!1360752 (and tp!656554 tp!656526 tp!656548 (array_inv!2834 (_keys!2916 (v!28602 (underlying!5433 (v!28603 (underlying!5434 (cache!2914 cacheUp!979))))))) (array_inv!2837 (_values!2899 (v!28602 (underlying!5433 (v!28603 (underlying!5434 (cache!2914 cacheUp!979))))))) e!1360738))))

(declare-fun b!2132812 () Bool)

(declare-fun res!921785 () Bool)

(assert (=> b!2132812 (=> (not res!921785) (not e!1360740))))

(assert (=> b!2132812 (= res!921785 (= (totalInput!3027 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2132813 () Bool)

(declare-fun res!921781 () Bool)

(assert (=> b!2132813 (=> res!921781 e!1360753)))

(declare-fun lostCauseZipper!80 ((InoxSet Context!2590)) Bool)

(assert (=> b!2132813 (= res!921781 (lostCauseZipper!80 z!3839))))

(declare-fun b!2132814 () Bool)

(declare-fun lt!796728 () MutLongMap!2618)

(assert (=> b!2132814 (= e!1360732 (and e!1360729 ((_ is LongMap!2618) lt!796728)))))

(assert (=> b!2132814 (= lt!796728 (v!28601 (underlying!5432 (cache!2913 cacheFurthestNullable!114))))))

(declare-fun mapNonEmpty!12630 () Bool)

(declare-fun tp!656550 () Bool)

(declare-fun tp!656546 () Bool)

(assert (=> mapNonEmpty!12630 (= mapRes!12628 (and tp!656550 tp!656546))))

(declare-fun mapKey!12629 () (_ BitVec 32))

(declare-fun mapValue!12629 () List!24129)

(declare-fun mapRest!12629 () (Array (_ BitVec 32) List!24129))

(assert (=> mapNonEmpty!12630 (= (arr!3966 (_values!2899 (v!28602 (underlying!5433 (v!28603 (underlying!5434 (cache!2914 cacheUp!979))))))) (store mapRest!12629 mapKey!12629 mapValue!12629))))

(assert (=> b!2132815 (= e!1360740 e!1360758)))

(declare-fun res!921789 () Bool)

(assert (=> b!2132815 (=> (not res!921789) (not e!1360758))))

(assert (=> b!2132815 (= res!921789 (forall!4917 stack!8 lambda!79290))))

(declare-fun lt!796731 () Int)

(assert (=> b!2132815 (= lt!796731 (furthestNullablePosition!41 z!3839 from!1043 totalInput!851 lt!796733 lastNullablePos!123))))

(declare-fun b!2132816 () Bool)

(declare-fun res!921783 () Bool)

(assert (=> b!2132816 (=> (not res!921783) (not e!1360740))))

(declare-fun valid!2052 (CacheFurthestNullable!696) Bool)

(assert (=> b!2132816 (= res!921783 (valid!2052 cacheFurthestNullable!114))))

(declare-fun setIsEmpty!15817 () Bool)

(assert (=> setIsEmpty!15817 setRes!15816))

(declare-fun b!2132817 () Bool)

(declare-fun res!921791 () Bool)

(assert (=> b!2132817 (=> (not res!921791) (not e!1360740))))

(declare-fun valid!2053 (CacheDown!1736) Bool)

(assert (=> b!2132817 (= res!921791 (valid!2053 cacheDown!1098))))

(declare-fun mapIsEmpty!12630 () Bool)

(assert (=> mapIsEmpty!12630 mapRes!12628))

(assert (=> b!2132818 (= e!1360749 (and e!1360757 tp!656528))))

(assert (= (and start!207556 res!921788) b!2132797))

(assert (= (and b!2132797 res!921780) b!2132789))

(assert (= (and b!2132789 (not res!921784)) b!2132786))

(assert (= (and b!2132789 res!921786) b!2132806))

(assert (= (and b!2132806 res!921782) b!2132817))

(assert (= (and b!2132817 res!921791) b!2132816))

(assert (= (and b!2132816 res!921783) b!2132812))

(assert (= (and b!2132812 res!921785) b!2132815))

(assert (= (and b!2132815 res!921789) b!2132779))

(assert (= (and b!2132779 res!921790) b!2132802))

(assert (= (and b!2132802 (not res!921779)) b!2132784))

(assert (= (and b!2132784 (not res!921787)) b!2132813))

(assert (= (and b!2132813 (not res!921781)) b!2132809))

(assert (= (and b!2132809 c!340240) b!2132799))

(assert (= (and b!2132809 (not c!340240)) b!2132790))

(assert (= (and b!2132808 condMapEmpty!12629) mapIsEmpty!12628))

(assert (= (and b!2132808 (not condMapEmpty!12629)) mapNonEmpty!12628))

(assert (= b!2132805 b!2132808))

(assert (= b!2132798 b!2132805))

(assert (= b!2132787 b!2132798))

(assert (= (and b!2132814 ((_ is LongMap!2618) (v!28601 (underlying!5432 (cache!2913 cacheFurthestNullable!114))))) b!2132787))

(assert (= b!2132792 b!2132814))

(assert (= (and b!2132788 ((_ is HashMap!2532) (cache!2913 cacheFurthestNullable!114))) b!2132792))

(assert (= b!2132788 b!2132796))

(assert (= start!207556 b!2132788))

(assert (= (and b!2132795 condMapEmpty!12628) mapIsEmpty!12629))

(assert (= (and b!2132795 (not condMapEmpty!12628)) mapNonEmpty!12629))

(assert (= b!2132801 b!2132795))

(assert (= b!2132803 b!2132801))

(assert (= b!2132780 b!2132803))

(assert (= (and b!2132777 ((_ is LongMap!2617) (v!28599 (underlying!5430 (cache!2912 cacheDown!1098))))) b!2132780))

(assert (= b!2132818 b!2132777))

(assert (= (and b!2132785 ((_ is HashMap!2531) (cache!2912 cacheDown!1098))) b!2132818))

(assert (= start!207556 b!2132785))

(assert (= (and b!2132810 condMapEmpty!12630) mapIsEmpty!12630))

(assert (= (and b!2132810 (not condMapEmpty!12630)) mapNonEmpty!12630))

(assert (= b!2132811 b!2132810))

(assert (= b!2132776 b!2132811))

(assert (= b!2132807 b!2132776))

(assert (= (and b!2132781 ((_ is LongMap!2619) (v!28603 (underlying!5434 (cache!2914 cacheUp!979))))) b!2132807))

(assert (= b!2132791 b!2132781))

(assert (= (and b!2132794 ((_ is HashMap!2533) (cache!2914 cacheUp!979))) b!2132791))

(assert (= start!207556 b!2132794))

(assert (= (and start!207556 condSetEmpty!15816) setIsEmpty!15817))

(assert (= (and start!207556 (not condSetEmpty!15816)) setNonEmpty!15817))

(assert (= setNonEmpty!15817 b!2132782))

(assert (= start!207556 b!2132793))

(assert (= (and b!2132804 condSetEmpty!15817) setIsEmpty!15816))

(assert (= (and b!2132804 (not condSetEmpty!15817)) setNonEmpty!15816))

(assert (= setNonEmpty!15816 b!2132783))

(assert (= b!2132804 b!2132778))

(assert (= b!2132800 b!2132804))

(assert (= (and start!207556 ((_ is Cons!24043) stack!8)) b!2132800))

(declare-fun m!2581802 () Bool)

(assert (=> b!2132809 m!2581802))

(declare-fun m!2581804 () Bool)

(assert (=> b!2132809 m!2581804))

(declare-fun m!2581806 () Bool)

(assert (=> b!2132809 m!2581806))

(assert (=> b!2132809 m!2581806))

(declare-fun m!2581808 () Bool)

(assert (=> b!2132809 m!2581808))

(declare-fun m!2581810 () Bool)

(assert (=> b!2132800 m!2581810))

(declare-fun m!2581812 () Bool)

(assert (=> b!2132813 m!2581812))

(declare-fun m!2581814 () Bool)

(assert (=> mapNonEmpty!12628 m!2581814))

(declare-fun m!2581816 () Bool)

(assert (=> b!2132779 m!2581816))

(declare-fun m!2581818 () Bool)

(assert (=> b!2132789 m!2581818))

(declare-fun m!2581820 () Bool)

(assert (=> b!2132793 m!2581820))

(declare-fun m!2581822 () Bool)

(assert (=> b!2132801 m!2581822))

(declare-fun m!2581824 () Bool)

(assert (=> b!2132801 m!2581824))

(declare-fun m!2581826 () Bool)

(assert (=> start!207556 m!2581826))

(declare-fun m!2581828 () Bool)

(assert (=> start!207556 m!2581828))

(declare-fun m!2581830 () Bool)

(assert (=> start!207556 m!2581830))

(declare-fun m!2581832 () Bool)

(assert (=> start!207556 m!2581832))

(declare-fun m!2581834 () Bool)

(assert (=> b!2132802 m!2581834))

(declare-fun m!2581836 () Bool)

(assert (=> b!2132802 m!2581836))

(declare-fun m!2581838 () Bool)

(assert (=> b!2132788 m!2581838))

(declare-fun m!2581840 () Bool)

(assert (=> b!2132804 m!2581840))

(declare-fun m!2581842 () Bool)

(assert (=> b!2132806 m!2581842))

(assert (=> b!2132815 m!2581836))

(declare-fun m!2581844 () Bool)

(assert (=> b!2132815 m!2581844))

(declare-fun m!2581846 () Bool)

(assert (=> b!2132811 m!2581846))

(declare-fun m!2581848 () Bool)

(assert (=> b!2132811 m!2581848))

(declare-fun m!2581850 () Bool)

(assert (=> b!2132817 m!2581850))

(declare-fun m!2581852 () Bool)

(assert (=> setNonEmpty!15817 m!2581852))

(declare-fun m!2581854 () Bool)

(assert (=> mapNonEmpty!12629 m!2581854))

(declare-fun m!2581856 () Bool)

(assert (=> mapNonEmpty!12630 m!2581856))

(declare-fun m!2581858 () Bool)

(assert (=> b!2132778 m!2581858))

(declare-fun m!2581860 () Bool)

(assert (=> b!2132805 m!2581860))

(declare-fun m!2581862 () Bool)

(assert (=> b!2132805 m!2581862))

(declare-fun m!2581864 () Bool)

(assert (=> b!2132796 m!2581864))

(declare-fun m!2581866 () Bool)

(assert (=> b!2132797 m!2581866))

(declare-fun m!2581868 () Bool)

(assert (=> b!2132816 m!2581868))

(declare-fun m!2581870 () Bool)

(assert (=> setNonEmpty!15816 m!2581870))

(check-sat (not b!2132797) b_and!171939 (not b_next!63071) (not b!2132795) (not start!207556) (not b!2132778) (not b!2132816) b_and!171945 (not b!2132813) (not b_next!63065) (not mapNonEmpty!12630) (not b!2132811) (not b!2132802) b_and!171937 (not b!2132806) (not b_next!63069) (not setNonEmpty!15816) b_and!171943 (not b_next!63067) (not b!2132810) b_and!171941 (not b!2132801) (not b_next!63063) (not b!2132808) (not mapNonEmpty!12628) (not b!2132800) (not b!2132817) (not b!2132809) (not setNonEmpty!15817) (not b!2132783) (not b_next!63061) (not b!2132782) (not b!2132815) (not b!2132796) (not b!2132804) (not b!2132793) (not mapNonEmpty!12629) (not b!2132789) (not b!2132805) b_and!171947 (not b!2132779) (not b!2132788))
(check-sat b_and!171939 (not b_next!63071) b_and!171943 (not b_next!63067) b_and!171941 (not b_next!63063) b_and!171945 (not b_next!63065) (not b_next!63061) b_and!171947 b_and!171937 (not b_next!63069))
