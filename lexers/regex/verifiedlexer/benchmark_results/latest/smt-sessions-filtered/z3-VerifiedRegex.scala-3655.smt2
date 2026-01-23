; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207948 () Bool)

(assert start!207948)

(declare-fun b!2141660 () Bool)

(declare-fun b_free!62981 () Bool)

(declare-fun b_next!63685 () Bool)

(assert (=> b!2141660 (= b_free!62981 (not b_next!63685))))

(declare-fun tp!662544 () Bool)

(declare-fun b_and!172561 () Bool)

(assert (=> b!2141660 (= tp!662544 b_and!172561)))

(declare-fun b!2141645 () Bool)

(declare-fun b_free!62983 () Bool)

(declare-fun b_next!63687 () Bool)

(assert (=> b!2141645 (= b_free!62983 (not b_next!63687))))

(declare-fun tp!662545 () Bool)

(declare-fun b_and!172563 () Bool)

(assert (=> b!2141645 (= tp!662545 b_and!172563)))

(declare-fun b!2141658 () Bool)

(declare-fun b_free!62985 () Bool)

(declare-fun b_next!63689 () Bool)

(assert (=> b!2141658 (= b_free!62985 (not b_next!63689))))

(declare-fun tp!662534 () Bool)

(declare-fun b_and!172565 () Bool)

(assert (=> b!2141658 (= tp!662534 b_and!172565)))

(declare-fun b!2141650 () Bool)

(declare-fun b_free!62987 () Bool)

(declare-fun b_next!63691 () Bool)

(assert (=> b!2141650 (= b_free!62987 (not b_next!63691))))

(declare-fun tp!662525 () Bool)

(declare-fun b_and!172567 () Bool)

(assert (=> b!2141650 (= tp!662525 b_and!172567)))

(declare-fun b!2141653 () Bool)

(declare-fun b_free!62989 () Bool)

(declare-fun b_next!63693 () Bool)

(assert (=> b!2141653 (= b_free!62989 (not b_next!63693))))

(declare-fun tp!662541 () Bool)

(declare-fun b_and!172569 () Bool)

(assert (=> b!2141653 (= tp!662541 b_and!172569)))

(declare-fun b!2141669 () Bool)

(declare-fun b_free!62991 () Bool)

(declare-fun b_next!63695 () Bool)

(assert (=> b!2141669 (= b_free!62991 (not b_next!63695))))

(declare-fun tp!662530 () Bool)

(declare-fun b_and!172571 () Bool)

(assert (=> b!2141669 (= tp!662530 b_and!172571)))

(declare-fun b!2141671 () Bool)

(assert (=> b!2141671 true))

(declare-fun bs!445221 () Bool)

(declare-fun b!2141665 () Bool)

(assert (= bs!445221 (and b!2141665 b!2141671)))

(declare-fun lambda!80167 () Int)

(declare-fun lambda!80166 () Int)

(assert (=> bs!445221 (not (= lambda!80167 lambda!80166))))

(assert (=> b!2141665 true))

(declare-fun bs!445222 () Bool)

(declare-fun b!2141662 () Bool)

(assert (= bs!445222 (and b!2141662 b!2141671)))

(declare-fun lambda!80168 () Int)

(declare-fun lt!798254 () Int)

(declare-fun lt!798250 () Int)

(assert (=> bs!445222 (= (= lt!798250 lt!798254) (= lambda!80168 lambda!80166))))

(declare-fun bs!445223 () Bool)

(assert (= bs!445223 (and b!2141662 b!2141665)))

(assert (=> bs!445223 (not (= lambda!80168 lambda!80167))))

(assert (=> b!2141662 true))

(declare-fun b!2141630 () Bool)

(declare-fun e!1367980 () Bool)

(declare-fun e!1367971 () Bool)

(assert (=> b!2141630 (= e!1367980 e!1367971)))

(declare-fun b!2141631 () Bool)

(declare-fun e!1367986 () Bool)

(declare-fun tp!662524 () Bool)

(declare-fun mapRes!13154 () Bool)

(assert (=> b!2141631 (= e!1367986 (and tp!662524 mapRes!13154))))

(declare-fun condMapEmpty!13154 () Bool)

(declare-datatypes ((C!11700 0))(
  ( (C!11701 (val!6836 Int)) )
))
(declare-datatypes ((Regex!5777 0))(
  ( (ElementMatch!5777 (c!340598 C!11700)) (Concat!10079 (regOne!12066 Regex!5777) (regTwo!12066 Regex!5777)) (EmptyExpr!5777) (Star!5777 (reg!6106 Regex!5777)) (EmptyLang!5777) (Union!5777 (regOne!12067 Regex!5777) (regTwo!12067 Regex!5777)) )
))
(declare-datatypes ((List!24419 0))(
  ( (Nil!24335) (Cons!24335 (h!29736 Regex!5777) (t!196949 List!24419)) )
))
(declare-datatypes ((Context!2694 0))(
  ( (Context!2695 (exprs!1847 List!24419)) )
))
(declare-datatypes ((tuple3!3426 0))(
  ( (tuple3!3427 (_1!14265 Regex!5777) (_2!14265 Context!2694) (_3!2183 C!11700)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!24164 0))(
  ( (tuple2!24165 (_1!14266 tuple3!3426) (_2!14266 (InoxSet Context!2694))) )
))
(declare-datatypes ((List!24420 0))(
  ( (Nil!24336) (Cons!24336 (h!29737 tuple2!24164) (t!196950 List!24420)) )
))
(declare-datatypes ((Hashable!2672 0))(
  ( (HashableExt!2671 (__x!16450 Int)) )
))
(declare-datatypes ((array!9313 0))(
  ( (array!9314 (arr!4156 (Array (_ BitVec 32) (_ BitVec 64))) (size!19042 (_ BitVec 32))) )
))
(declare-datatypes ((array!9315 0))(
  ( (array!9316 (arr!4157 (Array (_ BitVec 32) List!24420)) (size!19043 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5516 0))(
  ( (LongMapFixedSize!5517 (defaultEntry!3123 Int) (mask!6962 (_ BitVec 32)) (extraKeys!3006 (_ BitVec 32)) (zeroValue!3016 List!24420) (minValue!3016 List!24420) (_size!5567 (_ BitVec 32)) (_keys!3055 array!9313) (_values!3038 array!9315) (_vacant!2819 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10857 0))(
  ( (Cell!10858 (v!28918 LongMapFixedSize!5516)) )
))
(declare-datatypes ((MutLongMap!2758 0))(
  ( (LongMap!2758 (underlying!5711 Cell!10857)) (MutLongMapExt!2757 (__x!16451 Int)) )
))
(declare-datatypes ((Cell!10859 0))(
  ( (Cell!10860 (v!28919 MutLongMap!2758)) )
))
(declare-datatypes ((MutableMap!2672 0))(
  ( (MutableMapExt!2671 (__x!16452 Int)) (HashMap!2672 (underlying!5712 Cell!10859) (hashF!4595 Hashable!2672) (_size!5568 (_ BitVec 32)) (defaultValue!2834 Int)) )
))
(declare-datatypes ((CacheDown!1830 0))(
  ( (CacheDown!1831 (cache!3053 MutableMap!2672)) )
))
(declare-fun cacheDown!1098 () CacheDown!1830)

(declare-fun mapDefault!13155 () List!24420)

(assert (=> b!2141631 (= condMapEmpty!13154 (= (arr!4157 (_values!3038 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24420)) mapDefault!13155)))))

(declare-fun b!2141632 () Bool)

(declare-fun e!1367966 () Bool)

(declare-fun e!1367998 () Bool)

(assert (=> b!2141632 (= e!1367966 e!1367998)))

(declare-fun b!2141633 () Bool)

(declare-fun e!1367969 () Bool)

(declare-fun e!1367977 () Bool)

(declare-fun lt!798251 () MutLongMap!2758)

(get-info :version)

(assert (=> b!2141633 (= e!1367969 (and e!1367977 ((_ is LongMap!2758) lt!798251)))))

(assert (=> b!2141633 (= lt!798251 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098))))))

(declare-fun b!2141634 () Bool)

(declare-fun e!1367983 () Bool)

(declare-fun e!1367995 () Bool)

(assert (=> b!2141634 (= e!1367983 (not e!1367995))))

(declare-fun res!924606 () Bool)

(assert (=> b!2141634 (=> res!924606 e!1367995)))

(declare-datatypes ((tuple3!3428 0))(
  ( (tuple3!3429 (_1!14267 (InoxSet Context!2694)) (_2!14267 Int) (_3!2184 Int)) )
))
(declare-datatypes ((tuple2!24166 0))(
  ( (tuple2!24167 (_1!14268 tuple3!3428) (_2!14268 Int)) )
))
(declare-datatypes ((List!24421 0))(
  ( (Nil!24337) (Cons!24337 (h!29738 tuple2!24166) (t!196951 List!24421)) )
))
(declare-datatypes ((array!9317 0))(
  ( (array!9318 (arr!4158 (Array (_ BitVec 32) List!24421)) (size!19044 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5518 0))(
  ( (LongMapFixedSize!5519 (defaultEntry!3124 Int) (mask!6963 (_ BitVec 32)) (extraKeys!3007 (_ BitVec 32)) (zeroValue!3017 List!24421) (minValue!3017 List!24421) (_size!5569 (_ BitVec 32)) (_keys!3056 array!9313) (_values!3039 array!9317) (_vacant!2820 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10861 0))(
  ( (Cell!10862 (v!28920 LongMapFixedSize!5518)) )
))
(declare-datatypes ((List!24422 0))(
  ( (Nil!24338) (Cons!24338 (h!29739 C!11700) (t!196952 List!24422)) )
))
(declare-datatypes ((IArray!15835 0))(
  ( (IArray!15836 (innerList!7975 List!24422)) )
))
(declare-datatypes ((Conc!7915 0))(
  ( (Node!7915 (left!18716 Conc!7915) (right!19046 Conc!7915) (csize!16060 Int) (cheight!8126 Int)) (Leaf!11571 (xs!10857 IArray!15835) (csize!16061 Int)) (Empty!7915) )
))
(declare-datatypes ((MutLongMap!2759 0))(
  ( (LongMap!2759 (underlying!5713 Cell!10861)) (MutLongMapExt!2758 (__x!16453 Int)) )
))
(declare-datatypes ((Cell!10863 0))(
  ( (Cell!10864 (v!28921 MutLongMap!2759)) )
))
(declare-datatypes ((Hashable!2673 0))(
  ( (HashableExt!2672 (__x!16454 Int)) )
))
(declare-datatypes ((MutableMap!2673 0))(
  ( (MutableMapExt!2672 (__x!16455 Int)) (HashMap!2673 (underlying!5714 Cell!10863) (hashF!4596 Hashable!2673) (_size!5570 (_ BitVec 32)) (defaultValue!2835 Int)) )
))
(declare-datatypes ((BalanceConc!15592 0))(
  ( (BalanceConc!15593 (c!340599 Conc!7915)) )
))
(declare-datatypes ((CacheFurthestNullable!798 0))(
  ( (CacheFurthestNullable!799 (cache!3054 MutableMap!2673) (totalInput!3129 BalanceConc!15592)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!798)

(declare-fun lastNullablePos!123 () Int)

(declare-fun z!3839 () (InoxSet Context!2694))

(declare-fun from!1043 () Int)

(declare-datatypes ((Option!4938 0))(
  ( (None!4937) (Some!4937 (v!28922 Int)) )
))
(declare-fun get!7437 (CacheFurthestNullable!798 (InoxSet Context!2694) Int Int) Option!4938)

(assert (=> b!2141634 (= res!924606 ((_ is Some!4937) (get!7437 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(declare-datatypes ((StackFrame!232 0))(
  ( (StackFrame!233 (z!5872 (InoxSet Context!2694)) (from!2743 Int) (lastNullablePos!430 Int) (res!924619 Int) (totalInput!3130 BalanceConc!15592)) )
))
(declare-datatypes ((List!24423 0))(
  ( (Nil!24339) (Cons!24339 (h!29740 StackFrame!232) (t!196953 List!24423)) )
))
(declare-fun stack!8 () List!24423)

(declare-fun forall!4972 (List!24423 Int) Bool)

(assert (=> b!2141634 (forall!4972 stack!8 lambda!80166)))

(declare-fun b!2141635 () Bool)

(declare-fun e!1367970 () Bool)

(declare-fun lt!798252 () List!24423)

(assert (=> b!2141635 (= e!1367970 (forall!4972 lt!798252 lambda!80167))))

(declare-fun b!2141636 () Bool)

(declare-fun res!924617 () Bool)

(declare-fun e!1367988 () Bool)

(assert (=> b!2141636 (=> (not res!924617) (not e!1367988))))

(declare-datatypes ((tuple2!24168 0))(
  ( (tuple2!24169 (_1!14269 Context!2694) (_2!14269 C!11700)) )
))
(declare-datatypes ((tuple2!24170 0))(
  ( (tuple2!24171 (_1!14270 tuple2!24168) (_2!14270 (InoxSet Context!2694))) )
))
(declare-datatypes ((List!24424 0))(
  ( (Nil!24340) (Cons!24340 (h!29741 tuple2!24170) (t!196954 List!24424)) )
))
(declare-datatypes ((array!9319 0))(
  ( (array!9320 (arr!4159 (Array (_ BitVec 32) List!24424)) (size!19045 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5520 0))(
  ( (LongMapFixedSize!5521 (defaultEntry!3125 Int) (mask!6964 (_ BitVec 32)) (extraKeys!3008 (_ BitVec 32)) (zeroValue!3018 List!24424) (minValue!3018 List!24424) (_size!5571 (_ BitVec 32)) (_keys!3057 array!9313) (_values!3040 array!9319) (_vacant!2821 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10865 0))(
  ( (Cell!10866 (v!28923 LongMapFixedSize!5520)) )
))
(declare-datatypes ((MutLongMap!2760 0))(
  ( (LongMap!2760 (underlying!5715 Cell!10865)) (MutLongMapExt!2759 (__x!16456 Int)) )
))
(declare-datatypes ((Cell!10867 0))(
  ( (Cell!10868 (v!28924 MutLongMap!2760)) )
))
(declare-datatypes ((Hashable!2674 0))(
  ( (HashableExt!2673 (__x!16457 Int)) )
))
(declare-datatypes ((MutableMap!2674 0))(
  ( (MutableMapExt!2673 (__x!16458 Int)) (HashMap!2674 (underlying!5716 Cell!10867) (hashF!4597 Hashable!2674) (_size!5572 (_ BitVec 32)) (defaultValue!2836 Int)) )
))
(declare-datatypes ((CacheUp!1840 0))(
  ( (CacheUp!1841 (cache!3055 MutableMap!2674)) )
))
(declare-fun cacheUp!979 () CacheUp!1840)

(declare-fun valid!2153 (CacheUp!1840) Bool)

(assert (=> b!2141636 (= res!924617 (valid!2153 cacheUp!979))))

(declare-fun b!2141637 () Bool)

(declare-fun e!1367989 () Bool)

(declare-fun e!1367994 () Bool)

(assert (=> b!2141637 (= e!1367989 e!1367994)))

(declare-fun tp!662523 () Bool)

(declare-fun setNonEmpty!16432 () Bool)

(declare-fun setRes!16432 () Bool)

(declare-fun e!1367973 () Bool)

(declare-fun setElem!16432 () Context!2694)

(declare-fun inv!32029 (Context!2694) Bool)

(assert (=> setNonEmpty!16432 (= setRes!16432 (and tp!662523 (inv!32029 setElem!16432) e!1367973))))

(declare-fun setRest!16432 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16432 (= (z!5872 (h!29740 stack!8)) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16432 true) setRest!16432))))

(declare-fun b!2141638 () Bool)

(declare-fun res!924612 () Bool)

(assert (=> b!2141638 (=> res!924612 e!1367970)))

(assert (=> b!2141638 (= res!924612 (not (forall!4972 lt!798252 lambda!80168)))))

(declare-fun b!2141639 () Bool)

(declare-fun e!1367996 () Bool)

(declare-fun e!1367991 () Bool)

(declare-fun lt!798248 () MutLongMap!2759)

(assert (=> b!2141639 (= e!1367996 (and e!1367991 ((_ is LongMap!2759) lt!798248)))))

(assert (=> b!2141639 (= lt!798248 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))))

(declare-fun setIsEmpty!16432 () Bool)

(declare-fun setRes!16433 () Bool)

(assert (=> setIsEmpty!16432 setRes!16433))

(declare-fun mapIsEmpty!13153 () Bool)

(assert (=> mapIsEmpty!13153 mapRes!13154))

(declare-fun b!2141640 () Bool)

(declare-fun e!1367976 () Bool)

(declare-fun tp!662539 () Bool)

(declare-fun mapRes!13155 () Bool)

(assert (=> b!2141640 (= e!1367976 (and tp!662539 mapRes!13155))))

(declare-fun condMapEmpty!13155 () Bool)

(declare-fun mapDefault!13154 () List!24421)

(assert (=> b!2141640 (= condMapEmpty!13155 (= (arr!4158 (_values!3039 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24421)) mapDefault!13154)))))

(declare-fun b!2141641 () Bool)

(declare-fun e!1367978 () Bool)

(assert (=> b!2141641 (= e!1367994 e!1367978)))

(declare-fun b!2141642 () Bool)

(declare-fun res!924613 () Bool)

(assert (=> b!2141642 (=> (not res!924613) (not e!1367988))))

(declare-fun totalInput!851 () BalanceConc!15592)

(assert (=> b!2141642 (= res!924613 (= (totalInput!3129 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2141643 () Bool)

(declare-fun e!1367967 () Bool)

(declare-fun tp!662536 () Bool)

(declare-fun inv!32030 (Conc!7915) Bool)

(assert (=> b!2141643 (= e!1367967 (and (inv!32030 (c!340599 totalInput!851)) tp!662536))))

(declare-fun mapIsEmpty!13154 () Bool)

(assert (=> mapIsEmpty!13154 mapRes!13155))

(declare-fun b!2141644 () Bool)

(declare-fun e!1367962 () Bool)

(declare-fun e!1367993 () Bool)

(declare-fun tp!662521 () Bool)

(declare-fun inv!32031 (StackFrame!232) Bool)

(assert (=> b!2141644 (= e!1367962 (and (inv!32031 (h!29740 stack!8)) e!1367993 tp!662521))))

(declare-fun e!1367987 () Bool)

(assert (=> b!2141645 (= e!1367987 (and e!1367996 tp!662545))))

(declare-fun res!924604 () Bool)

(declare-fun e!1367990 () Bool)

(assert (=> start!207948 (=> (not res!924604) (not e!1367990))))

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207948 (= res!924604 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207948 e!1367990))

(declare-fun e!1367984 () Bool)

(declare-fun inv!32032 (CacheFurthestNullable!798) Bool)

(assert (=> start!207948 (and (inv!32032 cacheFurthestNullable!114) e!1367984)))

(assert (=> start!207948 true))

(declare-fun inv!32033 (CacheDown!1830) Bool)

(assert (=> start!207948 (and (inv!32033 cacheDown!1098) e!1367966)))

(declare-fun inv!32034 (CacheUp!1840) Bool)

(assert (=> start!207948 (and (inv!32034 cacheUp!979) e!1367980)))

(declare-fun condSetEmpty!16432 () Bool)

(assert (=> start!207948 (= condSetEmpty!16432 (= z!3839 ((as const (Array Context!2694 Bool)) false)))))

(assert (=> start!207948 setRes!16433))

(declare-fun inv!32035 (BalanceConc!15592) Bool)

(assert (=> start!207948 (and (inv!32035 totalInput!851) e!1367967)))

(assert (=> start!207948 e!1367962))

(declare-fun b!2141646 () Bool)

(declare-fun e!1367968 () Bool)

(assert (=> b!2141646 (= e!1367995 e!1367968)))

(declare-fun res!924609 () Bool)

(assert (=> b!2141646 (=> res!924609 e!1367968)))

(assert (=> b!2141646 (= res!924609 (not (= lt!798254 lt!798250)))))

(declare-fun lt!798247 () Int)

(declare-fun e!1367992 () Int)

(declare-datatypes ((tuple3!3430 0))(
  ( (tuple3!3431 (_1!14271 (InoxSet Context!2694)) (_2!14271 CacheUp!1840) (_3!2185 CacheDown!1830)) )
))
(declare-fun lt!798246 () tuple3!3430)

(declare-fun furthestNullablePosition!77 ((InoxSet Context!2694) Int BalanceConc!15592 Int Int) Int)

(assert (=> b!2141646 (= lt!798250 (furthestNullablePosition!77 (_1!14271 lt!798246) (+ 1 from!1043) totalInput!851 lt!798247 e!1367992))))

(declare-fun c!340597 () Bool)

(declare-fun nullableZipper!140 ((InoxSet Context!2694)) Bool)

(assert (=> b!2141646 (= c!340597 (nullableZipper!140 (_1!14271 lt!798246)))))

(assert (=> b!2141646 (= lt!798252 (Cons!24339 (StackFrame!233 z!3839 from!1043 lastNullablePos!123 lt!798254 totalInput!851) stack!8))))

(declare-fun derivationStepZipperMem!58 ((InoxSet Context!2694) C!11700 CacheUp!1840 CacheDown!1830) tuple3!3430)

(declare-fun apply!5968 (BalanceConc!15592 Int) C!11700)

(assert (=> b!2141646 (= lt!798246 (derivationStepZipperMem!58 z!3839 (apply!5968 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2141647 () Bool)

(declare-fun res!924605 () Bool)

(assert (=> b!2141647 (=> (not res!924605) (not e!1367988))))

(declare-fun e!1367982 () Bool)

(assert (=> b!2141647 (= res!924605 e!1367982)))

(declare-fun res!924618 () Bool)

(assert (=> b!2141647 (=> res!924618 e!1367982)))

(assert (=> b!2141647 (= res!924618 (not (nullableZipper!140 z!3839)))))

(declare-fun b!2141648 () Bool)

(declare-fun e!1367972 () Bool)

(assert (=> b!2141648 (= e!1367991 e!1367972)))

(declare-fun b!2141649 () Bool)

(declare-fun e!1367961 () Bool)

(declare-fun tp!662538 () Bool)

(assert (=> b!2141649 (= e!1367961 tp!662538)))

(declare-fun mapNonEmpty!13153 () Bool)

(declare-fun mapRes!13153 () Bool)

(declare-fun tp!662533 () Bool)

(declare-fun tp!662518 () Bool)

(assert (=> mapNonEmpty!13153 (= mapRes!13153 (and tp!662533 tp!662518))))

(declare-fun mapValue!13153 () List!24424)

(declare-fun mapKey!13153 () (_ BitVec 32))

(declare-fun mapRest!13154 () (Array (_ BitVec 32) List!24424))

(assert (=> mapNonEmpty!13153 (= (arr!4159 (_values!3040 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979))))))) (store mapRest!13154 mapKey!13153 mapValue!13153))))

(declare-fun mapNonEmpty!13154 () Bool)

(declare-fun tp!662527 () Bool)

(declare-fun tp!662540 () Bool)

(assert (=> mapNonEmpty!13154 (= mapRes!13154 (and tp!662527 tp!662540))))

(declare-fun mapRest!13155 () (Array (_ BitVec 32) List!24420))

(declare-fun mapKey!13155 () (_ BitVec 32))

(declare-fun mapValue!13154 () List!24420)

(assert (=> mapNonEmpty!13154 (= (arr!4157 (_values!3038 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098))))))) (store mapRest!13155 mapKey!13155 mapValue!13154))))

(declare-fun tp!662531 () Bool)

(declare-fun e!1367997 () Bool)

(declare-fun tp!662535 () Bool)

(declare-fun array_inv!2973 (array!9313) Bool)

(declare-fun array_inv!2974 (array!9315) Bool)

(assert (=> b!2141650 (= e!1367997 (and tp!662525 tp!662535 tp!662531 (array_inv!2973 (_keys!3055 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098))))))) (array_inv!2974 (_values!3038 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098))))))) e!1367986))))

(declare-fun b!2141651 () Bool)

(assert (=> b!2141651 (= e!1367982 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2141652 () Bool)

(declare-fun e!1367974 () Bool)

(declare-fun tp!662537 () Bool)

(assert (=> b!2141652 (= e!1367974 (and tp!662537 mapRes!13153))))

(declare-fun condMapEmpty!13153 () Bool)

(declare-fun mapDefault!13153 () List!24424)

(assert (=> b!2141652 (= condMapEmpty!13153 (= (arr!4159 (_values!3040 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24424)) mapDefault!13153)))))

(declare-fun tp!662522 () Bool)

(declare-fun tp!662520 () Bool)

(declare-fun array_inv!2975 (array!9319) Bool)

(assert (=> b!2141653 (= e!1367978 (and tp!662541 tp!662522 tp!662520 (array_inv!2973 (_keys!3057 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979))))))) (array_inv!2975 (_values!3040 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979))))))) e!1367974))))

(declare-fun b!2141654 () Bool)

(declare-fun e!1367981 () Bool)

(assert (=> b!2141654 (= e!1367972 e!1367981)))

(declare-fun mapIsEmpty!13155 () Bool)

(assert (=> mapIsEmpty!13155 mapRes!13153))

(declare-fun b!2141655 () Bool)

(declare-fun e!1367965 () Bool)

(declare-fun lt!798253 () MutLongMap!2760)

(assert (=> b!2141655 (= e!1367965 (and e!1367989 ((_ is LongMap!2760) lt!798253)))))

(assert (=> b!2141655 (= lt!798253 (v!28924 (underlying!5716 (cache!3055 cacheUp!979))))))

(declare-fun b!2141656 () Bool)

(declare-fun res!924607 () Bool)

(assert (=> b!2141656 (=> (not res!924607) (not e!1367988))))

(declare-fun valid!2154 (CacheFurthestNullable!798) Bool)

(assert (=> b!2141656 (= res!924607 (valid!2154 cacheFurthestNullable!114))))

(declare-fun mapNonEmpty!13155 () Bool)

(declare-fun tp!662543 () Bool)

(declare-fun tp!662526 () Bool)

(assert (=> mapNonEmpty!13155 (= mapRes!13155 (and tp!662543 tp!662526))))

(declare-fun mapValue!13155 () List!24421)

(declare-fun mapRest!13153 () (Array (_ BitVec 32) List!24421))

(declare-fun mapKey!13154 () (_ BitVec 32))

(assert (=> mapNonEmpty!13155 (= (arr!4158 (_values!3039 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))))) (store mapRest!13153 mapKey!13154 mapValue!13155))))

(declare-fun b!2141657 () Bool)

(declare-fun e!1367999 () Bool)

(assert (=> b!2141657 (= e!1367984 (and e!1367987 (inv!32035 (totalInput!3129 cacheFurthestNullable!114)) e!1367999))))

(declare-fun tp!662532 () Bool)

(declare-fun tp!662528 () Bool)

(declare-fun array_inv!2976 (array!9317) Bool)

(assert (=> b!2141658 (= e!1367981 (and tp!662534 tp!662528 tp!662532 (array_inv!2973 (_keys!3056 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))))) (array_inv!2976 (_values!3039 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))))) e!1367976))))

(declare-fun b!2141659 () Bool)

(assert (=> b!2141659 (= e!1367990 e!1367988)))

(declare-fun res!924611 () Bool)

(assert (=> b!2141659 (=> (not res!924611) (not e!1367988))))

(assert (=> b!2141659 (= res!924611 (and (= totalInputSize!296 lt!798247) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19046 (BalanceConc!15592) Int)

(assert (=> b!2141659 (= lt!798247 (size!19046 totalInput!851))))

(assert (=> b!2141660 (= e!1367971 (and e!1367965 tp!662544))))

(declare-fun b!2141661 () Bool)

(declare-fun e!1367964 () Bool)

(declare-fun tp!662517 () Bool)

(assert (=> b!2141661 (= e!1367964 (and (inv!32030 (c!340599 (totalInput!3130 (h!29740 stack!8)))) tp!662517))))

(assert (=> b!2141662 (= e!1367968 e!1367970)))

(declare-fun res!924615 () Bool)

(assert (=> b!2141662 (=> res!924615 e!1367970)))

(assert (=> b!2141662 (= res!924615 (not (forall!4972 stack!8 lambda!80168)))))

(assert (=> b!2141662 (forall!4972 stack!8 lambda!80168)))

(declare-datatypes ((Unit!37699 0))(
  ( (Unit!37700) )
))
(declare-fun lt!798249 () Unit!37699)

(declare-fun lemmaStackPreservesForEqualRes!28 (List!24423 Int Int) Unit!37699)

(assert (=> b!2141662 (= lt!798249 (lemmaStackPreservesForEqualRes!28 stack!8 lt!798254 lt!798250))))

(assert (=> b!2141662 (forall!4972 stack!8 lambda!80166)))

(declare-fun b!2141663 () Bool)

(declare-fun e!1367975 () Bool)

(assert (=> b!2141663 (= e!1367975 e!1367997)))

(declare-fun b!2141664 () Bool)

(assert (=> b!2141664 (= e!1367993 (and setRes!16432 (inv!32035 (totalInput!3130 (h!29740 stack!8))) e!1367964))))

(declare-fun condSetEmpty!16433 () Bool)

(assert (=> b!2141664 (= condSetEmpty!16433 (= (z!5872 (h!29740 stack!8)) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun res!924616 () Bool)

(assert (=> b!2141665 (=> (not res!924616) (not e!1367983))))

(assert (=> b!2141665 (= res!924616 (forall!4972 stack!8 lambda!80167))))

(declare-fun b!2141666 () Bool)

(declare-fun res!924603 () Bool)

(assert (=> b!2141666 (=> (not res!924603) (not e!1367988))))

(declare-fun valid!2155 (CacheDown!1830) Bool)

(assert (=> b!2141666 (= res!924603 (valid!2155 cacheDown!1098))))

(declare-fun b!2141667 () Bool)

(declare-fun res!924610 () Bool)

(assert (=> b!2141667 (=> res!924610 e!1367995)))

(assert (=> b!2141667 (= res!924610 (= from!1043 totalInputSize!296))))

(declare-fun b!2141668 () Bool)

(assert (=> b!2141668 (= e!1367992 lastNullablePos!123)))

(assert (=> b!2141669 (= e!1367998 (and e!1367969 tp!662530))))

(declare-fun setNonEmpty!16433 () Bool)

(declare-fun setElem!16433 () Context!2694)

(declare-fun tp!662542 () Bool)

(assert (=> setNonEmpty!16433 (= setRes!16433 (and tp!662542 (inv!32029 setElem!16433) e!1367961))))

(declare-fun setRest!16433 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16433 (= z!3839 ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16433 true) setRest!16433))))

(declare-fun b!2141670 () Bool)

(assert (=> b!2141670 (= e!1367992 from!1043)))

(assert (=> b!2141671 (= e!1367988 e!1367983)))

(declare-fun res!924614 () Bool)

(assert (=> b!2141671 (=> (not res!924614) (not e!1367983))))

(assert (=> b!2141671 (= res!924614 (forall!4972 stack!8 lambda!80166))))

(assert (=> b!2141671 (= lt!798254 (furthestNullablePosition!77 z!3839 from!1043 totalInput!851 lt!798247 lastNullablePos!123))))

(declare-fun setIsEmpty!16433 () Bool)

(assert (=> setIsEmpty!16433 setRes!16432))

(declare-fun b!2141672 () Bool)

(declare-fun tp!662529 () Bool)

(assert (=> b!2141672 (= e!1367973 tp!662529)))

(declare-fun b!2141673 () Bool)

(assert (=> b!2141673 (= e!1367977 e!1367975)))

(declare-fun b!2141674 () Bool)

(declare-fun tp!662519 () Bool)

(assert (=> b!2141674 (= e!1367999 (and (inv!32030 (c!340599 (totalInput!3129 cacheFurthestNullable!114))) tp!662519))))

(declare-fun b!2141675 () Bool)

(declare-fun res!924608 () Bool)

(assert (=> b!2141675 (=> res!924608 e!1367995)))

(declare-fun lostCauseZipper!117 ((InoxSet Context!2694)) Bool)

(assert (=> b!2141675 (= res!924608 (lostCauseZipper!117 z!3839))))

(assert (= (and start!207948 res!924604) b!2141659))

(assert (= (and b!2141659 res!924611) b!2141647))

(assert (= (and b!2141647 (not res!924618)) b!2141651))

(assert (= (and b!2141647 res!924605) b!2141636))

(assert (= (and b!2141636 res!924617) b!2141666))

(assert (= (and b!2141666 res!924603) b!2141656))

(assert (= (and b!2141656 res!924607) b!2141642))

(assert (= (and b!2141642 res!924613) b!2141671))

(assert (= (and b!2141671 res!924614) b!2141665))

(assert (= (and b!2141665 res!924616) b!2141634))

(assert (= (and b!2141634 (not res!924606)) b!2141667))

(assert (= (and b!2141667 (not res!924610)) b!2141675))

(assert (= (and b!2141675 (not res!924608)) b!2141646))

(assert (= (and b!2141646 c!340597) b!2141670))

(assert (= (and b!2141646 (not c!340597)) b!2141668))

(assert (= (and b!2141646 (not res!924609)) b!2141662))

(assert (= (and b!2141662 (not res!924615)) b!2141638))

(assert (= (and b!2141638 (not res!924612)) b!2141635))

(assert (= (and b!2141640 condMapEmpty!13155) mapIsEmpty!13154))

(assert (= (and b!2141640 (not condMapEmpty!13155)) mapNonEmpty!13155))

(assert (= b!2141658 b!2141640))

(assert (= b!2141654 b!2141658))

(assert (= b!2141648 b!2141654))

(assert (= (and b!2141639 ((_ is LongMap!2759) (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))) b!2141648))

(assert (= b!2141645 b!2141639))

(assert (= (and b!2141657 ((_ is HashMap!2673) (cache!3054 cacheFurthestNullable!114))) b!2141645))

(assert (= b!2141657 b!2141674))

(assert (= start!207948 b!2141657))

(assert (= (and b!2141631 condMapEmpty!13154) mapIsEmpty!13153))

(assert (= (and b!2141631 (not condMapEmpty!13154)) mapNonEmpty!13154))

(assert (= b!2141650 b!2141631))

(assert (= b!2141663 b!2141650))

(assert (= b!2141673 b!2141663))

(assert (= (and b!2141633 ((_ is LongMap!2758) (v!28919 (underlying!5712 (cache!3053 cacheDown!1098))))) b!2141673))

(assert (= b!2141669 b!2141633))

(assert (= (and b!2141632 ((_ is HashMap!2672) (cache!3053 cacheDown!1098))) b!2141669))

(assert (= start!207948 b!2141632))

(assert (= (and b!2141652 condMapEmpty!13153) mapIsEmpty!13155))

(assert (= (and b!2141652 (not condMapEmpty!13153)) mapNonEmpty!13153))

(assert (= b!2141653 b!2141652))

(assert (= b!2141641 b!2141653))

(assert (= b!2141637 b!2141641))

(assert (= (and b!2141655 ((_ is LongMap!2760) (v!28924 (underlying!5716 (cache!3055 cacheUp!979))))) b!2141637))

(assert (= b!2141660 b!2141655))

(assert (= (and b!2141630 ((_ is HashMap!2674) (cache!3055 cacheUp!979))) b!2141660))

(assert (= start!207948 b!2141630))

(assert (= (and start!207948 condSetEmpty!16432) setIsEmpty!16432))

(assert (= (and start!207948 (not condSetEmpty!16432)) setNonEmpty!16433))

(assert (= setNonEmpty!16433 b!2141649))

(assert (= start!207948 b!2141643))

(assert (= (and b!2141664 condSetEmpty!16433) setIsEmpty!16433))

(assert (= (and b!2141664 (not condSetEmpty!16433)) setNonEmpty!16432))

(assert (= setNonEmpty!16432 b!2141672))

(assert (= b!2141664 b!2141661))

(assert (= b!2141644 b!2141664))

(assert (= (and start!207948 ((_ is Cons!24339) stack!8)) b!2141644))

(declare-fun m!2587219 () Bool)

(assert (=> b!2141675 m!2587219))

(declare-fun m!2587221 () Bool)

(assert (=> setNonEmpty!16433 m!2587221))

(declare-fun m!2587223 () Bool)

(assert (=> b!2141644 m!2587223))

(declare-fun m!2587225 () Bool)

(assert (=> b!2141658 m!2587225))

(declare-fun m!2587227 () Bool)

(assert (=> b!2141658 m!2587227))

(declare-fun m!2587229 () Bool)

(assert (=> b!2141661 m!2587229))

(declare-fun m!2587231 () Bool)

(assert (=> b!2141636 m!2587231))

(declare-fun m!2587233 () Bool)

(assert (=> b!2141647 m!2587233))

(declare-fun m!2587235 () Bool)

(assert (=> b!2141656 m!2587235))

(declare-fun m!2587237 () Bool)

(assert (=> b!2141662 m!2587237))

(assert (=> b!2141662 m!2587237))

(declare-fun m!2587239 () Bool)

(assert (=> b!2141662 m!2587239))

(declare-fun m!2587241 () Bool)

(assert (=> b!2141662 m!2587241))

(assert (=> b!2141671 m!2587241))

(declare-fun m!2587243 () Bool)

(assert (=> b!2141671 m!2587243))

(declare-fun m!2587245 () Bool)

(assert (=> start!207948 m!2587245))

(declare-fun m!2587247 () Bool)

(assert (=> start!207948 m!2587247))

(declare-fun m!2587249 () Bool)

(assert (=> start!207948 m!2587249))

(declare-fun m!2587251 () Bool)

(assert (=> start!207948 m!2587251))

(declare-fun m!2587253 () Bool)

(assert (=> b!2141653 m!2587253))

(declare-fun m!2587255 () Bool)

(assert (=> b!2141653 m!2587255))

(declare-fun m!2587257 () Bool)

(assert (=> b!2141634 m!2587257))

(assert (=> b!2141634 m!2587241))

(declare-fun m!2587259 () Bool)

(assert (=> mapNonEmpty!13154 m!2587259))

(declare-fun m!2587261 () Bool)

(assert (=> b!2141659 m!2587261))

(declare-fun m!2587263 () Bool)

(assert (=> setNonEmpty!16432 m!2587263))

(declare-fun m!2587265 () Bool)

(assert (=> b!2141635 m!2587265))

(declare-fun m!2587267 () Bool)

(assert (=> b!2141665 m!2587267))

(declare-fun m!2587269 () Bool)

(assert (=> mapNonEmpty!13153 m!2587269))

(declare-fun m!2587271 () Bool)

(assert (=> b!2141646 m!2587271))

(declare-fun m!2587273 () Bool)

(assert (=> b!2141646 m!2587273))

(declare-fun m!2587275 () Bool)

(assert (=> b!2141646 m!2587275))

(assert (=> b!2141646 m!2587275))

(declare-fun m!2587277 () Bool)

(assert (=> b!2141646 m!2587277))

(declare-fun m!2587279 () Bool)

(assert (=> b!2141666 m!2587279))

(declare-fun m!2587281 () Bool)

(assert (=> b!2141650 m!2587281))

(declare-fun m!2587283 () Bool)

(assert (=> b!2141650 m!2587283))

(declare-fun m!2587285 () Bool)

(assert (=> b!2141638 m!2587285))

(declare-fun m!2587287 () Bool)

(assert (=> b!2141643 m!2587287))

(declare-fun m!2587289 () Bool)

(assert (=> b!2141664 m!2587289))

(declare-fun m!2587291 () Bool)

(assert (=> mapNonEmpty!13155 m!2587291))

(declare-fun m!2587293 () Bool)

(assert (=> b!2141657 m!2587293))

(declare-fun m!2587295 () Bool)

(assert (=> b!2141674 m!2587295))

(check-sat (not b!2141638) (not b!2141675) (not b!2141652) (not b!2141666) (not mapNonEmpty!13154) (not b!2141635) (not b!2141661) (not b_next!63685) (not b!2141644) (not b_next!63687) (not setNonEmpty!16432) (not b!2141665) b_and!172563 (not b!2141653) (not b!2141662) (not b!2141650) b_and!172567 (not b_next!63689) (not b!2141656) (not mapNonEmpty!13155) b_and!172565 (not b!2141664) (not b_next!63691) (not b!2141671) (not b!2141636) (not mapNonEmpty!13153) (not setNonEmpty!16433) (not b!2141647) (not b_next!63693) (not start!207948) (not b!2141674) (not b!2141657) (not b!2141649) (not b!2141672) (not b!2141646) b_and!172571 b_and!172569 (not b!2141640) b_and!172561 (not b!2141643) (not b!2141634) (not b!2141658) (not b!2141631) (not b_next!63695) (not b!2141659))
(check-sat (not b_next!63687) b_and!172563 (not b_next!63693) b_and!172571 b_and!172569 (not b_next!63685) b_and!172561 (not b_next!63695) b_and!172567 (not b_next!63689) b_and!172565 (not b_next!63691))
(get-model)

(declare-fun d!644924 () Bool)

(declare-fun lt!798257 () Int)

(declare-fun size!19047 (List!24422) Int)

(declare-fun list!9551 (BalanceConc!15592) List!24422)

(assert (=> d!644924 (= lt!798257 (size!19047 (list!9551 totalInput!851)))))

(declare-fun size!19048 (Conc!7915) Int)

(assert (=> d!644924 (= lt!798257 (size!19048 (c!340599 totalInput!851)))))

(assert (=> d!644924 (= (size!19046 totalInput!851) lt!798257)))

(declare-fun bs!445224 () Bool)

(assert (= bs!445224 d!644924))

(declare-fun m!2587297 () Bool)

(assert (=> bs!445224 m!2587297))

(assert (=> bs!445224 m!2587297))

(declare-fun m!2587299 () Bool)

(assert (=> bs!445224 m!2587299))

(declare-fun m!2587301 () Bool)

(assert (=> bs!445224 m!2587301))

(assert (=> b!2141659 d!644924))

(declare-fun d!644926 () Bool)

(declare-fun c!340602 () Bool)

(assert (=> d!644926 (= c!340602 ((_ is Node!7915) (c!340599 totalInput!851)))))

(declare-fun e!1368004 () Bool)

(assert (=> d!644926 (= (inv!32030 (c!340599 totalInput!851)) e!1368004)))

(declare-fun b!2141686 () Bool)

(declare-fun inv!32036 (Conc!7915) Bool)

(assert (=> b!2141686 (= e!1368004 (inv!32036 (c!340599 totalInput!851)))))

(declare-fun b!2141687 () Bool)

(declare-fun e!1368005 () Bool)

(assert (=> b!2141687 (= e!1368004 e!1368005)))

(declare-fun res!924622 () Bool)

(assert (=> b!2141687 (= res!924622 (not ((_ is Leaf!11571) (c!340599 totalInput!851))))))

(assert (=> b!2141687 (=> res!924622 e!1368005)))

(declare-fun b!2141688 () Bool)

(declare-fun inv!32037 (Conc!7915) Bool)

(assert (=> b!2141688 (= e!1368005 (inv!32037 (c!340599 totalInput!851)))))

(assert (= (and d!644926 c!340602) b!2141686))

(assert (= (and d!644926 (not c!340602)) b!2141687))

(assert (= (and b!2141687 (not res!924622)) b!2141688))

(declare-fun m!2587303 () Bool)

(assert (=> b!2141686 m!2587303))

(declare-fun m!2587305 () Bool)

(assert (=> b!2141688 m!2587305))

(assert (=> b!2141643 d!644926))

(declare-fun d!644928 () Bool)

(declare-fun res!924625 () Bool)

(declare-fun e!1368008 () Bool)

(assert (=> d!644928 (=> (not res!924625) (not e!1368008))))

(assert (=> d!644928 (= res!924625 ((_ is HashMap!2673) (cache!3054 cacheFurthestNullable!114)))))

(assert (=> d!644928 (= (inv!32032 cacheFurthestNullable!114) e!1368008)))

(declare-fun b!2141691 () Bool)

(declare-fun validCacheMapFurthestNullable!107 (MutableMap!2673 BalanceConc!15592) Bool)

(assert (=> b!2141691 (= e!1368008 (validCacheMapFurthestNullable!107 (cache!3054 cacheFurthestNullable!114) (totalInput!3129 cacheFurthestNullable!114)))))

(assert (= (and d!644928 res!924625) b!2141691))

(declare-fun m!2587307 () Bool)

(assert (=> b!2141691 m!2587307))

(assert (=> start!207948 d!644928))

(declare-fun d!644930 () Bool)

(declare-fun res!924628 () Bool)

(declare-fun e!1368011 () Bool)

(assert (=> d!644930 (=> (not res!924628) (not e!1368011))))

(assert (=> d!644930 (= res!924628 ((_ is HashMap!2672) (cache!3053 cacheDown!1098)))))

(assert (=> d!644930 (= (inv!32033 cacheDown!1098) e!1368011)))

(declare-fun b!2141694 () Bool)

(declare-fun validCacheMapDown!255 (MutableMap!2672) Bool)

(assert (=> b!2141694 (= e!1368011 (validCacheMapDown!255 (cache!3053 cacheDown!1098)))))

(assert (= (and d!644930 res!924628) b!2141694))

(declare-fun m!2587309 () Bool)

(assert (=> b!2141694 m!2587309))

(assert (=> start!207948 d!644930))

(declare-fun d!644932 () Bool)

(declare-fun res!924631 () Bool)

(declare-fun e!1368014 () Bool)

(assert (=> d!644932 (=> (not res!924631) (not e!1368014))))

(assert (=> d!644932 (= res!924631 ((_ is HashMap!2674) (cache!3055 cacheUp!979)))))

(assert (=> d!644932 (= (inv!32034 cacheUp!979) e!1368014)))

(declare-fun b!2141697 () Bool)

(declare-fun validCacheMapUp!257 (MutableMap!2674) Bool)

(assert (=> b!2141697 (= e!1368014 (validCacheMapUp!257 (cache!3055 cacheUp!979)))))

(assert (= (and d!644932 res!924631) b!2141697))

(declare-fun m!2587311 () Bool)

(assert (=> b!2141697 m!2587311))

(assert (=> start!207948 d!644932))

(declare-fun d!644934 () Bool)

(declare-fun isBalanced!2461 (Conc!7915) Bool)

(assert (=> d!644934 (= (inv!32035 totalInput!851) (isBalanced!2461 (c!340599 totalInput!851)))))

(declare-fun bs!445225 () Bool)

(assert (= bs!445225 d!644934))

(declare-fun m!2587313 () Bool)

(assert (=> bs!445225 m!2587313))

(assert (=> start!207948 d!644934))

(declare-fun d!644936 () Bool)

(declare-fun c!340603 () Bool)

(assert (=> d!644936 (= c!340603 ((_ is Node!7915) (c!340599 (totalInput!3130 (h!29740 stack!8)))))))

(declare-fun e!1368015 () Bool)

(assert (=> d!644936 (= (inv!32030 (c!340599 (totalInput!3130 (h!29740 stack!8)))) e!1368015)))

(declare-fun b!2141698 () Bool)

(assert (=> b!2141698 (= e!1368015 (inv!32036 (c!340599 (totalInput!3130 (h!29740 stack!8)))))))

(declare-fun b!2141699 () Bool)

(declare-fun e!1368016 () Bool)

(assert (=> b!2141699 (= e!1368015 e!1368016)))

(declare-fun res!924632 () Bool)

(assert (=> b!2141699 (= res!924632 (not ((_ is Leaf!11571) (c!340599 (totalInput!3130 (h!29740 stack!8))))))))

(assert (=> b!2141699 (=> res!924632 e!1368016)))

(declare-fun b!2141700 () Bool)

(assert (=> b!2141700 (= e!1368016 (inv!32037 (c!340599 (totalInput!3130 (h!29740 stack!8)))))))

(assert (= (and d!644936 c!340603) b!2141698))

(assert (= (and d!644936 (not c!340603)) b!2141699))

(assert (= (and b!2141699 (not res!924632)) b!2141700))

(declare-fun m!2587315 () Bool)

(assert (=> b!2141698 m!2587315))

(declare-fun m!2587317 () Bool)

(assert (=> b!2141700 m!2587317))

(assert (=> b!2141661 d!644936))

(declare-fun b!2141713 () Bool)

(declare-fun res!924646 () Bool)

(declare-fun e!1368021 () Bool)

(assert (=> b!2141713 (=> (not res!924646) (not e!1368021))))

(assert (=> b!2141713 (= res!924646 (<= (from!2743 (h!29740 stack!8)) (size!19046 (totalInput!3130 (h!29740 stack!8)))))))

(declare-fun b!2141714 () Bool)

(declare-fun res!924645 () Bool)

(assert (=> b!2141714 (=> (not res!924645) (not e!1368021))))

(assert (=> b!2141714 (= res!924645 (and (>= (lastNullablePos!430 (h!29740 stack!8)) (- 1)) (< (lastNullablePos!430 (h!29740 stack!8)) (from!2743 (h!29740 stack!8)))))))

(declare-fun b!2141715 () Bool)

(declare-fun e!1368022 () Bool)

(assert (=> b!2141715 (= e!1368022 (= (lastNullablePos!430 (h!29740 stack!8)) (- (from!2743 (h!29740 stack!8)) 1)))))

(declare-fun b!2141716 () Bool)

(declare-fun res!924649 () Bool)

(assert (=> b!2141716 (=> (not res!924649) (not e!1368021))))

(assert (=> b!2141716 (= res!924649 (= (size!19046 (totalInput!3130 (h!29740 stack!8))) (size!19046 (totalInput!3130 (h!29740 stack!8)))))))

(declare-fun d!644938 () Bool)

(declare-fun res!924648 () Bool)

(assert (=> d!644938 (=> (not res!924648) (not e!1368021))))

(assert (=> d!644938 (= res!924648 (>= (from!2743 (h!29740 stack!8)) 0))))

(assert (=> d!644938 (= (inv!32031 (h!29740 stack!8)) e!1368021)))

(declare-fun b!2141717 () Bool)

(declare-fun res!924647 () Bool)

(assert (=> b!2141717 (=> (not res!924647) (not e!1368021))))

(assert (=> b!2141717 (= res!924647 e!1368022)))

(declare-fun res!924650 () Bool)

(assert (=> b!2141717 (=> res!924650 e!1368022)))

(assert (=> b!2141717 (= res!924650 (not (nullableZipper!140 (z!5872 (h!29740 stack!8)))))))

(declare-fun b!2141718 () Bool)

(assert (=> b!2141718 (= e!1368021 (= (res!924619 (h!29740 stack!8)) (furthestNullablePosition!77 (z!5872 (h!29740 stack!8)) (from!2743 (h!29740 stack!8)) (totalInput!3130 (h!29740 stack!8)) (size!19046 (totalInput!3130 (h!29740 stack!8))) (lastNullablePos!430 (h!29740 stack!8)))))))

(assert (= (and d!644938 res!924648) b!2141713))

(assert (= (and b!2141713 res!924646) b!2141716))

(assert (= (and b!2141716 res!924649) b!2141714))

(assert (= (and b!2141714 res!924645) b!2141717))

(assert (= (and b!2141717 (not res!924650)) b!2141715))

(assert (= (and b!2141717 res!924647) b!2141718))

(declare-fun m!2587319 () Bool)

(assert (=> b!2141713 m!2587319))

(assert (=> b!2141716 m!2587319))

(declare-fun m!2587321 () Bool)

(assert (=> b!2141717 m!2587321))

(assert (=> b!2141718 m!2587319))

(assert (=> b!2141718 m!2587319))

(declare-fun m!2587323 () Bool)

(assert (=> b!2141718 m!2587323))

(assert (=> b!2141644 d!644938))

(declare-fun d!644940 () Bool)

(declare-fun res!924655 () Bool)

(declare-fun e!1368027 () Bool)

(assert (=> d!644940 (=> res!924655 e!1368027)))

(assert (=> d!644940 (= res!924655 ((_ is Nil!24339) stack!8))))

(assert (=> d!644940 (= (forall!4972 stack!8 lambda!80168) e!1368027)))

(declare-fun b!2141723 () Bool)

(declare-fun e!1368028 () Bool)

(assert (=> b!2141723 (= e!1368027 e!1368028)))

(declare-fun res!924656 () Bool)

(assert (=> b!2141723 (=> (not res!924656) (not e!1368028))))

(declare-fun dynLambda!11373 (Int StackFrame!232) Bool)

(assert (=> b!2141723 (= res!924656 (dynLambda!11373 lambda!80168 (h!29740 stack!8)))))

(declare-fun b!2141724 () Bool)

(assert (=> b!2141724 (= e!1368028 (forall!4972 (t!196953 stack!8) lambda!80168))))

(assert (= (and d!644940 (not res!924655)) b!2141723))

(assert (= (and b!2141723 res!924656) b!2141724))

(declare-fun b_lambda!70661 () Bool)

(assert (=> (not b_lambda!70661) (not b!2141723)))

(declare-fun m!2587325 () Bool)

(assert (=> b!2141723 m!2587325))

(declare-fun m!2587327 () Bool)

(assert (=> b!2141724 m!2587327))

(assert (=> b!2141662 d!644940))

(declare-fun bs!445226 () Bool)

(declare-fun d!644942 () Bool)

(assert (= bs!445226 (and d!644942 b!2141671)))

(declare-fun lambda!80173 () Int)

(assert (=> bs!445226 (= lambda!80173 lambda!80166)))

(declare-fun bs!445227 () Bool)

(assert (= bs!445227 (and d!644942 b!2141665)))

(assert (=> bs!445227 (not (= lambda!80173 lambda!80167))))

(declare-fun bs!445228 () Bool)

(assert (= bs!445228 (and d!644942 b!2141662)))

(assert (=> bs!445228 (= (= lt!798254 lt!798250) (= lambda!80173 lambda!80168))))

(assert (=> d!644942 true))

(declare-fun lambda!80174 () Int)

(assert (=> bs!445226 (= (= lt!798250 lt!798254) (= lambda!80174 lambda!80166))))

(assert (=> bs!445227 (not (= lambda!80174 lambda!80167))))

(assert (=> bs!445228 (= lambda!80174 lambda!80168)))

(declare-fun bs!445229 () Bool)

(assert (= bs!445229 d!644942))

(assert (=> bs!445229 (= (= lt!798250 lt!798254) (= lambda!80174 lambda!80173))))

(assert (=> d!644942 true))

(assert (=> d!644942 (forall!4972 stack!8 lambda!80174)))

(declare-fun lt!798260 () Unit!37699)

(declare-fun choose!12688 (List!24423 Int Int) Unit!37699)

(assert (=> d!644942 (= lt!798260 (choose!12688 stack!8 lt!798254 lt!798250))))

(assert (=> d!644942 (forall!4972 stack!8 lambda!80173)))

(assert (=> d!644942 (= (lemmaStackPreservesForEqualRes!28 stack!8 lt!798254 lt!798250) lt!798260)))

(declare-fun m!2587329 () Bool)

(assert (=> bs!445229 m!2587329))

(declare-fun m!2587331 () Bool)

(assert (=> bs!445229 m!2587331))

(declare-fun m!2587333 () Bool)

(assert (=> bs!445229 m!2587333))

(assert (=> b!2141662 d!644942))

(declare-fun d!644944 () Bool)

(declare-fun res!924657 () Bool)

(declare-fun e!1368029 () Bool)

(assert (=> d!644944 (=> res!924657 e!1368029)))

(assert (=> d!644944 (= res!924657 ((_ is Nil!24339) stack!8))))

(assert (=> d!644944 (= (forall!4972 stack!8 lambda!80166) e!1368029)))

(declare-fun b!2141725 () Bool)

(declare-fun e!1368030 () Bool)

(assert (=> b!2141725 (= e!1368029 e!1368030)))

(declare-fun res!924658 () Bool)

(assert (=> b!2141725 (=> (not res!924658) (not e!1368030))))

(assert (=> b!2141725 (= res!924658 (dynLambda!11373 lambda!80166 (h!29740 stack!8)))))

(declare-fun b!2141726 () Bool)

(assert (=> b!2141726 (= e!1368030 (forall!4972 (t!196953 stack!8) lambda!80166))))

(assert (= (and d!644944 (not res!924657)) b!2141725))

(assert (= (and b!2141725 res!924658) b!2141726))

(declare-fun b_lambda!70663 () Bool)

(assert (=> (not b_lambda!70663) (not b!2141725)))

(declare-fun m!2587335 () Bool)

(assert (=> b!2141725 m!2587335))

(declare-fun m!2587337 () Bool)

(assert (=> b!2141726 m!2587337))

(assert (=> b!2141662 d!644944))

(declare-fun d!644946 () Bool)

(declare-fun lt!798265 () Int)

(assert (=> d!644946 (and (>= lt!798265 (- 1)) (< lt!798265 lt!798247) (>= lt!798265 e!1367992) (or (= lt!798265 e!1367992) (>= lt!798265 (+ 1 from!1043))))))

(declare-fun e!1368038 () Int)

(assert (=> d!644946 (= lt!798265 e!1368038)))

(declare-fun c!340609 () Bool)

(declare-fun e!1368037 () Bool)

(assert (=> d!644946 (= c!340609 e!1368037)))

(declare-fun res!924661 () Bool)

(assert (=> d!644946 (=> res!924661 e!1368037)))

(assert (=> d!644946 (= res!924661 (= (+ 1 from!1043) lt!798247))))

(assert (=> d!644946 (and (>= (+ 1 from!1043) 0) (<= (+ 1 from!1043) lt!798247))))

(assert (=> d!644946 (= (furthestNullablePosition!77 (_1!14271 lt!798246) (+ 1 from!1043) totalInput!851 lt!798247 e!1367992) lt!798265)))

(declare-fun b!2141737 () Bool)

(assert (=> b!2141737 (= e!1368038 e!1367992)))

(declare-fun b!2141738 () Bool)

(declare-fun e!1368039 () Int)

(assert (=> b!2141738 (= e!1368039 (+ 1 from!1043))))

(declare-fun b!2141739 () Bool)

(assert (=> b!2141739 (= e!1368037 (lostCauseZipper!117 (_1!14271 lt!798246)))))

(declare-fun b!2141740 () Bool)

(declare-fun lt!798266 () (InoxSet Context!2694))

(assert (=> b!2141740 (= e!1368038 (furthestNullablePosition!77 lt!798266 (+ 1 from!1043 1) totalInput!851 lt!798247 e!1368039))))

(declare-fun derivationStepZipper!96 ((InoxSet Context!2694) C!11700) (InoxSet Context!2694))

(assert (=> b!2141740 (= lt!798266 (derivationStepZipper!96 (_1!14271 lt!798246) (apply!5968 totalInput!851 (+ 1 from!1043))))))

(declare-fun c!340608 () Bool)

(assert (=> b!2141740 (= c!340608 (nullableZipper!140 lt!798266))))

(declare-fun b!2141741 () Bool)

(assert (=> b!2141741 (= e!1368039 e!1367992)))

(assert (= (and d!644946 (not res!924661)) b!2141739))

(assert (= (and d!644946 c!340609) b!2141737))

(assert (= (and d!644946 (not c!340609)) b!2141740))

(assert (= (and b!2141740 c!340608) b!2141738))

(assert (= (and b!2141740 (not c!340608)) b!2141741))

(declare-fun m!2587339 () Bool)

(assert (=> b!2141739 m!2587339))

(declare-fun m!2587341 () Bool)

(assert (=> b!2141740 m!2587341))

(declare-fun m!2587343 () Bool)

(assert (=> b!2141740 m!2587343))

(assert (=> b!2141740 m!2587343))

(declare-fun m!2587345 () Bool)

(assert (=> b!2141740 m!2587345))

(declare-fun m!2587347 () Bool)

(assert (=> b!2141740 m!2587347))

(assert (=> b!2141646 d!644946))

(declare-fun d!644948 () Bool)

(declare-fun lambda!80177 () Int)

(declare-fun exists!712 ((InoxSet Context!2694) Int) Bool)

(assert (=> d!644948 (= (nullableZipper!140 (_1!14271 lt!798246)) (exists!712 (_1!14271 lt!798246) lambda!80177))))

(declare-fun bs!445230 () Bool)

(assert (= bs!445230 d!644948))

(declare-fun m!2587349 () Bool)

(assert (=> bs!445230 m!2587349))

(assert (=> b!2141646 d!644948))

(declare-fun d!644950 () Bool)

(declare-fun e!1368042 () Bool)

(assert (=> d!644950 e!1368042))

(declare-fun res!924666 () Bool)

(assert (=> d!644950 (=> (not res!924666) (not e!1368042))))

(declare-fun lt!798269 () tuple3!3430)

(assert (=> d!644950 (= res!924666 (= (_1!14271 lt!798269) (derivationStepZipper!96 z!3839 (apply!5968 totalInput!851 from!1043))))))

(declare-fun choose!12689 ((InoxSet Context!2694) C!11700 CacheUp!1840 CacheDown!1830) tuple3!3430)

(assert (=> d!644950 (= lt!798269 (choose!12689 z!3839 (apply!5968 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(assert (=> d!644950 (= (derivationStepZipperMem!58 z!3839 (apply!5968 totalInput!851 from!1043) cacheUp!979 cacheDown!1098) lt!798269)))

(declare-fun b!2141746 () Bool)

(declare-fun res!924667 () Bool)

(assert (=> b!2141746 (=> (not res!924667) (not e!1368042))))

(assert (=> b!2141746 (= res!924667 (valid!2153 (_2!14271 lt!798269)))))

(declare-fun b!2141747 () Bool)

(assert (=> b!2141747 (= e!1368042 (valid!2155 (_3!2185 lt!798269)))))

(assert (= (and d!644950 res!924666) b!2141746))

(assert (= (and b!2141746 res!924667) b!2141747))

(assert (=> d!644950 m!2587275))

(declare-fun m!2587351 () Bool)

(assert (=> d!644950 m!2587351))

(assert (=> d!644950 m!2587275))

(declare-fun m!2587353 () Bool)

(assert (=> d!644950 m!2587353))

(declare-fun m!2587355 () Bool)

(assert (=> b!2141746 m!2587355))

(declare-fun m!2587357 () Bool)

(assert (=> b!2141747 m!2587357))

(assert (=> b!2141646 d!644950))

(declare-fun d!644952 () Bool)

(declare-fun lt!798272 () C!11700)

(declare-fun apply!5969 (List!24422 Int) C!11700)

(assert (=> d!644952 (= lt!798272 (apply!5969 (list!9551 totalInput!851) from!1043))))

(declare-fun apply!5970 (Conc!7915 Int) C!11700)

(assert (=> d!644952 (= lt!798272 (apply!5970 (c!340599 totalInput!851) from!1043))))

(declare-fun e!1368045 () Bool)

(assert (=> d!644952 e!1368045))

(declare-fun res!924670 () Bool)

(assert (=> d!644952 (=> (not res!924670) (not e!1368045))))

(assert (=> d!644952 (= res!924670 (<= 0 from!1043))))

(assert (=> d!644952 (= (apply!5968 totalInput!851 from!1043) lt!798272)))

(declare-fun b!2141750 () Bool)

(assert (=> b!2141750 (= e!1368045 (< from!1043 (size!19046 totalInput!851)))))

(assert (= (and d!644952 res!924670) b!2141750))

(assert (=> d!644952 m!2587297))

(assert (=> d!644952 m!2587297))

(declare-fun m!2587359 () Bool)

(assert (=> d!644952 m!2587359))

(declare-fun m!2587361 () Bool)

(assert (=> d!644952 m!2587361))

(assert (=> b!2141750 m!2587261))

(assert (=> b!2141646 d!644952))

(declare-fun d!644954 () Bool)

(declare-fun c!340612 () Bool)

(assert (=> d!644954 (= c!340612 ((_ is Node!7915) (c!340599 (totalInput!3129 cacheFurthestNullable!114))))))

(declare-fun e!1368046 () Bool)

(assert (=> d!644954 (= (inv!32030 (c!340599 (totalInput!3129 cacheFurthestNullable!114))) e!1368046)))

(declare-fun b!2141751 () Bool)

(assert (=> b!2141751 (= e!1368046 (inv!32036 (c!340599 (totalInput!3129 cacheFurthestNullable!114))))))

(declare-fun b!2141752 () Bool)

(declare-fun e!1368047 () Bool)

(assert (=> b!2141752 (= e!1368046 e!1368047)))

(declare-fun res!924671 () Bool)

(assert (=> b!2141752 (= res!924671 (not ((_ is Leaf!11571) (c!340599 (totalInput!3129 cacheFurthestNullable!114)))))))

(assert (=> b!2141752 (=> res!924671 e!1368047)))

(declare-fun b!2141753 () Bool)

(assert (=> b!2141753 (= e!1368047 (inv!32037 (c!340599 (totalInput!3129 cacheFurthestNullable!114))))))

(assert (= (and d!644954 c!340612) b!2141751))

(assert (= (and d!644954 (not c!340612)) b!2141752))

(assert (= (and b!2141752 (not res!924671)) b!2141753))

(declare-fun m!2587363 () Bool)

(assert (=> b!2141751 m!2587363))

(declare-fun m!2587365 () Bool)

(assert (=> b!2141753 m!2587365))

(assert (=> b!2141674 d!644954))

(declare-fun d!644956 () Bool)

(assert (=> d!644956 (= (valid!2154 cacheFurthestNullable!114) (validCacheMapFurthestNullable!107 (cache!3054 cacheFurthestNullable!114) (totalInput!3129 cacheFurthestNullable!114)))))

(declare-fun bs!445231 () Bool)

(assert (= bs!445231 d!644956))

(assert (=> bs!445231 m!2587307))

(assert (=> b!2141656 d!644956))

(declare-fun bs!445232 () Bool)

(declare-fun d!644958 () Bool)

(assert (= bs!445232 (and d!644958 d!644948)))

(declare-fun lambda!80190 () Int)

(assert (=> bs!445232 (not (= lambda!80190 lambda!80177))))

(declare-fun bs!445233 () Bool)

(declare-fun b!2141758 () Bool)

(assert (= bs!445233 (and b!2141758 d!644948)))

(declare-fun lambda!80191 () Int)

(assert (=> bs!445233 (not (= lambda!80191 lambda!80177))))

(declare-fun bs!445234 () Bool)

(assert (= bs!445234 (and b!2141758 d!644958)))

(assert (=> bs!445234 (not (= lambda!80191 lambda!80190))))

(declare-fun bs!445235 () Bool)

(declare-fun b!2141759 () Bool)

(assert (= bs!445235 (and b!2141759 d!644948)))

(declare-fun lambda!80192 () Int)

(assert (=> bs!445235 (not (= lambda!80192 lambda!80177))))

(declare-fun bs!445236 () Bool)

(assert (= bs!445236 (and b!2141759 d!644958)))

(assert (=> bs!445236 (not (= lambda!80192 lambda!80190))))

(declare-fun bs!445237 () Bool)

(assert (= bs!445237 (and b!2141759 b!2141758)))

(assert (=> bs!445237 (= lambda!80192 lambda!80191)))

(declare-datatypes ((List!24425 0))(
  ( (Nil!24341) (Cons!24341 (h!29742 Context!2694) (t!196955 List!24425)) )
))
(declare-fun lt!798289 () List!24425)

(declare-fun bm!128813 () Bool)

(declare-fun lt!798291 () List!24425)

(declare-fun c!340623 () Bool)

(declare-fun call!128819 () Bool)

(declare-fun exists!713 (List!24425 Int) Bool)

(assert (=> bm!128813 (= call!128819 (exists!713 (ite c!340623 lt!798289 lt!798291) (ite c!340623 lambda!80191 lambda!80192)))))

(declare-fun lt!798292 () Bool)

(declare-datatypes ((Option!4939 0))(
  ( (None!4938) (Some!4938 (v!28925 List!24422)) )
))
(declare-fun isEmpty!14332 (Option!4939) Bool)

(declare-fun getLanguageWitness!106 ((InoxSet Context!2694)) Option!4939)

(assert (=> d!644958 (= lt!798292 (isEmpty!14332 (getLanguageWitness!106 z!3839)))))

(declare-fun forall!4973 ((InoxSet Context!2694) Int) Bool)

(assert (=> d!644958 (= lt!798292 (forall!4973 z!3839 lambda!80190))))

(declare-fun lt!798290 () Unit!37699)

(declare-fun e!1368054 () Unit!37699)

(assert (=> d!644958 (= lt!798290 e!1368054)))

(assert (=> d!644958 (= c!340623 (not (forall!4973 z!3839 lambda!80190)))))

(assert (=> d!644958 (= (lostCauseZipper!117 z!3839) lt!798292)))

(declare-fun bm!128814 () Bool)

(declare-fun call!128818 () List!24425)

(declare-fun toList!1081 ((InoxSet Context!2694)) List!24425)

(assert (=> bm!128814 (= call!128818 (toList!1081 z!3839))))

(declare-fun Unit!37701 () Unit!37699)

(assert (=> b!2141758 (= e!1368054 Unit!37701)))

(assert (=> b!2141758 (= lt!798289 call!128818)))

(declare-fun lt!798295 () Unit!37699)

(declare-fun lemmaNotForallThenExists!21 (List!24425 Int) Unit!37699)

(assert (=> b!2141758 (= lt!798295 (lemmaNotForallThenExists!21 lt!798289 lambda!80190))))

(assert (=> b!2141758 call!128819))

(declare-fun lt!798294 () Unit!37699)

(assert (=> b!2141758 (= lt!798294 lt!798295)))

(declare-fun Unit!37702 () Unit!37699)

(assert (=> b!2141759 (= e!1368054 Unit!37702)))

(assert (=> b!2141759 (= lt!798291 call!128818)))

(declare-fun lt!798293 () Unit!37699)

(declare-fun lemmaForallThenNotExists!21 (List!24425 Int) Unit!37699)

(assert (=> b!2141759 (= lt!798293 (lemmaForallThenNotExists!21 lt!798291 lambda!80190))))

(assert (=> b!2141759 (not call!128819)))

(declare-fun lt!798296 () Unit!37699)

(assert (=> b!2141759 (= lt!798296 lt!798293)))

(assert (= (and d!644958 c!340623) b!2141758))

(assert (= (and d!644958 (not c!340623)) b!2141759))

(assert (= (or b!2141758 b!2141759) bm!128813))

(assert (= (or b!2141758 b!2141759) bm!128814))

(declare-fun m!2587367 () Bool)

(assert (=> b!2141759 m!2587367))

(declare-fun m!2587369 () Bool)

(assert (=> d!644958 m!2587369))

(assert (=> d!644958 m!2587369))

(declare-fun m!2587371 () Bool)

(assert (=> d!644958 m!2587371))

(declare-fun m!2587373 () Bool)

(assert (=> d!644958 m!2587373))

(assert (=> d!644958 m!2587373))

(declare-fun m!2587375 () Bool)

(assert (=> b!2141758 m!2587375))

(declare-fun m!2587377 () Bool)

(assert (=> bm!128814 m!2587377))

(declare-fun m!2587379 () Bool)

(assert (=> bm!128813 m!2587379))

(assert (=> b!2141675 d!644958))

(declare-fun d!644960 () Bool)

(assert (=> d!644960 (= (inv!32035 (totalInput!3129 cacheFurthestNullable!114)) (isBalanced!2461 (c!340599 (totalInput!3129 cacheFurthestNullable!114))))))

(declare-fun bs!445238 () Bool)

(assert (= bs!445238 d!644960))

(declare-fun m!2587381 () Bool)

(assert (=> bs!445238 m!2587381))

(assert (=> b!2141657 d!644960))

(declare-fun d!644962 () Bool)

(assert (=> d!644962 (= (array_inv!2973 (_keys!3056 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))))) (bvsge (size!19042 (_keys!3056 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2141658 d!644962))

(declare-fun d!644964 () Bool)

(assert (=> d!644964 (= (array_inv!2976 (_values!3039 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))))) (bvsge (size!19044 (_values!3039 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2141658 d!644964))

(declare-fun d!644966 () Bool)

(assert (=> d!644966 (= (array_inv!2973 (_keys!3055 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098))))))) (bvsge (size!19042 (_keys!3055 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2141650 d!644966))

(declare-fun d!644968 () Bool)

(assert (=> d!644968 (= (array_inv!2974 (_values!3038 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098))))))) (bvsge (size!19043 (_values!3038 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2141650 d!644968))

(declare-fun d!644970 () Bool)

(declare-fun res!924672 () Bool)

(declare-fun e!1368055 () Bool)

(assert (=> d!644970 (=> res!924672 e!1368055)))

(assert (=> d!644970 (= res!924672 ((_ is Nil!24339) lt!798252))))

(assert (=> d!644970 (= (forall!4972 lt!798252 lambda!80167) e!1368055)))

(declare-fun b!2141760 () Bool)

(declare-fun e!1368056 () Bool)

(assert (=> b!2141760 (= e!1368055 e!1368056)))

(declare-fun res!924673 () Bool)

(assert (=> b!2141760 (=> (not res!924673) (not e!1368056))))

(assert (=> b!2141760 (= res!924673 (dynLambda!11373 lambda!80167 (h!29740 lt!798252)))))

(declare-fun b!2141761 () Bool)

(assert (=> b!2141761 (= e!1368056 (forall!4972 (t!196953 lt!798252) lambda!80167))))

(assert (= (and d!644970 (not res!924672)) b!2141760))

(assert (= (and b!2141760 res!924673) b!2141761))

(declare-fun b_lambda!70665 () Bool)

(assert (=> (not b_lambda!70665) (not b!2141760)))

(declare-fun m!2587383 () Bool)

(assert (=> b!2141760 m!2587383))

(declare-fun m!2587385 () Bool)

(assert (=> b!2141761 m!2587385))

(assert (=> b!2141635 d!644970))

(declare-fun d!644972 () Bool)

(declare-fun lambda!80195 () Int)

(declare-fun forall!4974 (List!24419 Int) Bool)

(assert (=> d!644972 (= (inv!32029 setElem!16433) (forall!4974 (exprs!1847 setElem!16433) lambda!80195))))

(declare-fun bs!445239 () Bool)

(assert (= bs!445239 d!644972))

(declare-fun m!2587387 () Bool)

(assert (=> bs!445239 m!2587387))

(assert (=> setNonEmpty!16433 d!644972))

(declare-fun d!644974 () Bool)

(assert (=> d!644974 (= (valid!2153 cacheUp!979) (validCacheMapUp!257 (cache!3055 cacheUp!979)))))

(declare-fun bs!445240 () Bool)

(assert (= bs!445240 d!644974))

(assert (=> bs!445240 m!2587311))

(assert (=> b!2141636 d!644974))

(assert (=> b!2141671 d!644944))

(declare-fun lt!798297 () Int)

(declare-fun d!644976 () Bool)

(assert (=> d!644976 (and (>= lt!798297 (- 1)) (< lt!798297 lt!798247) (>= lt!798297 lastNullablePos!123) (or (= lt!798297 lastNullablePos!123) (>= lt!798297 from!1043)))))

(declare-fun e!1368058 () Int)

(assert (=> d!644976 (= lt!798297 e!1368058)))

(declare-fun c!340625 () Bool)

(declare-fun e!1368057 () Bool)

(assert (=> d!644976 (= c!340625 e!1368057)))

(declare-fun res!924674 () Bool)

(assert (=> d!644976 (=> res!924674 e!1368057)))

(assert (=> d!644976 (= res!924674 (= from!1043 lt!798247))))

(assert (=> d!644976 (and (>= from!1043 0) (<= from!1043 lt!798247))))

(assert (=> d!644976 (= (furthestNullablePosition!77 z!3839 from!1043 totalInput!851 lt!798247 lastNullablePos!123) lt!798297)))

(declare-fun b!2141762 () Bool)

(assert (=> b!2141762 (= e!1368058 lastNullablePos!123)))

(declare-fun b!2141763 () Bool)

(declare-fun e!1368059 () Int)

(assert (=> b!2141763 (= e!1368059 from!1043)))

(declare-fun b!2141764 () Bool)

(assert (=> b!2141764 (= e!1368057 (lostCauseZipper!117 z!3839))))

(declare-fun b!2141765 () Bool)

(declare-fun lt!798298 () (InoxSet Context!2694))

(assert (=> b!2141765 (= e!1368058 (furthestNullablePosition!77 lt!798298 (+ from!1043 1) totalInput!851 lt!798247 e!1368059))))

(assert (=> b!2141765 (= lt!798298 (derivationStepZipper!96 z!3839 (apply!5968 totalInput!851 from!1043)))))

(declare-fun c!340624 () Bool)

(assert (=> b!2141765 (= c!340624 (nullableZipper!140 lt!798298))))

(declare-fun b!2141766 () Bool)

(assert (=> b!2141766 (= e!1368059 lastNullablePos!123)))

(assert (= (and d!644976 (not res!924674)) b!2141764))

(assert (= (and d!644976 c!340625) b!2141762))

(assert (= (and d!644976 (not c!340625)) b!2141765))

(assert (= (and b!2141765 c!340624) b!2141763))

(assert (= (and b!2141765 (not c!340624)) b!2141766))

(assert (=> b!2141764 m!2587219))

(declare-fun m!2587389 () Bool)

(assert (=> b!2141765 m!2587389))

(assert (=> b!2141765 m!2587275))

(assert (=> b!2141765 m!2587275))

(assert (=> b!2141765 m!2587351))

(declare-fun m!2587391 () Bool)

(assert (=> b!2141765 m!2587391))

(assert (=> b!2141671 d!644976))

(declare-fun d!644978 () Bool)

(assert (=> d!644978 (= (array_inv!2973 (_keys!3057 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979))))))) (bvsge (size!19042 (_keys!3057 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2141653 d!644978))

(declare-fun d!644980 () Bool)

(assert (=> d!644980 (= (array_inv!2975 (_values!3040 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979))))))) (bvsge (size!19045 (_values!3040 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2141653 d!644980))

(declare-fun bs!445241 () Bool)

(declare-fun d!644982 () Bool)

(assert (= bs!445241 (and d!644982 d!644972)))

(declare-fun lambda!80196 () Int)

(assert (=> bs!445241 (= lambda!80196 lambda!80195)))

(assert (=> d!644982 (= (inv!32029 setElem!16432) (forall!4974 (exprs!1847 setElem!16432) lambda!80196))))

(declare-fun bs!445242 () Bool)

(assert (= bs!445242 d!644982))

(declare-fun m!2587393 () Bool)

(assert (=> bs!445242 m!2587393))

(assert (=> setNonEmpty!16432 d!644982))

(declare-fun d!644984 () Bool)

(declare-fun res!924675 () Bool)

(declare-fun e!1368060 () Bool)

(assert (=> d!644984 (=> res!924675 e!1368060)))

(assert (=> d!644984 (= res!924675 ((_ is Nil!24339) lt!798252))))

(assert (=> d!644984 (= (forall!4972 lt!798252 lambda!80168) e!1368060)))

(declare-fun b!2141767 () Bool)

(declare-fun e!1368061 () Bool)

(assert (=> b!2141767 (= e!1368060 e!1368061)))

(declare-fun res!924676 () Bool)

(assert (=> b!2141767 (=> (not res!924676) (not e!1368061))))

(assert (=> b!2141767 (= res!924676 (dynLambda!11373 lambda!80168 (h!29740 lt!798252)))))

(declare-fun b!2141768 () Bool)

(assert (=> b!2141768 (= e!1368061 (forall!4972 (t!196953 lt!798252) lambda!80168))))

(assert (= (and d!644984 (not res!924675)) b!2141767))

(assert (= (and b!2141767 res!924676) b!2141768))

(declare-fun b_lambda!70667 () Bool)

(assert (=> (not b_lambda!70667) (not b!2141767)))

(declare-fun m!2587395 () Bool)

(assert (=> b!2141767 m!2587395))

(declare-fun m!2587397 () Bool)

(assert (=> b!2141768 m!2587397))

(assert (=> b!2141638 d!644984))

(declare-fun d!644986 () Bool)

(assert (=> d!644986 (= (inv!32035 (totalInput!3130 (h!29740 stack!8))) (isBalanced!2461 (c!340599 (totalInput!3130 (h!29740 stack!8)))))))

(declare-fun bs!445243 () Bool)

(assert (= bs!445243 d!644986))

(declare-fun m!2587399 () Bool)

(assert (=> bs!445243 m!2587399))

(assert (=> b!2141664 d!644986))

(declare-fun bs!445244 () Bool)

(declare-fun d!644988 () Bool)

(assert (= bs!445244 (and d!644988 d!644948)))

(declare-fun lambda!80197 () Int)

(assert (=> bs!445244 (= lambda!80197 lambda!80177)))

(declare-fun bs!445245 () Bool)

(assert (= bs!445245 (and d!644988 d!644958)))

(assert (=> bs!445245 (not (= lambda!80197 lambda!80190))))

(declare-fun bs!445246 () Bool)

(assert (= bs!445246 (and d!644988 b!2141758)))

(assert (=> bs!445246 (not (= lambda!80197 lambda!80191))))

(declare-fun bs!445247 () Bool)

(assert (= bs!445247 (and d!644988 b!2141759)))

(assert (=> bs!445247 (not (= lambda!80197 lambda!80192))))

(assert (=> d!644988 (= (nullableZipper!140 z!3839) (exists!712 z!3839 lambda!80197))))

(declare-fun bs!445248 () Bool)

(assert (= bs!445248 d!644988))

(declare-fun m!2587401 () Bool)

(assert (=> bs!445248 m!2587401))

(assert (=> b!2141647 d!644988))

(declare-fun d!644990 () Bool)

(declare-fun res!924677 () Bool)

(declare-fun e!1368062 () Bool)

(assert (=> d!644990 (=> res!924677 e!1368062)))

(assert (=> d!644990 (= res!924677 ((_ is Nil!24339) stack!8))))

(assert (=> d!644990 (= (forall!4972 stack!8 lambda!80167) e!1368062)))

(declare-fun b!2141769 () Bool)

(declare-fun e!1368063 () Bool)

(assert (=> b!2141769 (= e!1368062 e!1368063)))

(declare-fun res!924678 () Bool)

(assert (=> b!2141769 (=> (not res!924678) (not e!1368063))))

(assert (=> b!2141769 (= res!924678 (dynLambda!11373 lambda!80167 (h!29740 stack!8)))))

(declare-fun b!2141770 () Bool)

(assert (=> b!2141770 (= e!1368063 (forall!4972 (t!196953 stack!8) lambda!80167))))

(assert (= (and d!644990 (not res!924677)) b!2141769))

(assert (= (and b!2141769 res!924678) b!2141770))

(declare-fun b_lambda!70669 () Bool)

(assert (=> (not b_lambda!70669) (not b!2141769)))

(declare-fun m!2587403 () Bool)

(assert (=> b!2141769 m!2587403))

(declare-fun m!2587405 () Bool)

(assert (=> b!2141770 m!2587405))

(assert (=> b!2141665 d!644990))

(declare-fun d!644992 () Bool)

(assert (=> d!644992 (= (valid!2155 cacheDown!1098) (validCacheMapDown!255 (cache!3053 cacheDown!1098)))))

(declare-fun bs!445249 () Bool)

(assert (= bs!445249 d!644992))

(assert (=> bs!445249 m!2587309))

(assert (=> b!2141666 d!644992))

(declare-fun d!644994 () Bool)

(declare-fun e!1368066 () Bool)

(assert (=> d!644994 e!1368066))

(declare-fun res!924681 () Bool)

(assert (=> d!644994 (=> res!924681 e!1368066)))

(declare-fun lt!798301 () Option!4938)

(declare-fun isEmpty!14333 (Option!4938) Bool)

(assert (=> d!644994 (= res!924681 (isEmpty!14333 lt!798301))))

(declare-fun choose!12690 (CacheFurthestNullable!798 (InoxSet Context!2694) Int Int) Option!4938)

(assert (=> d!644994 (= lt!798301 (choose!12690 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> d!644994 (and (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043))))

(assert (=> d!644994 (= (get!7437 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123) lt!798301)))

(declare-fun b!2141773 () Bool)

(declare-fun get!7438 (Option!4938) Int)

(assert (=> b!2141773 (= e!1368066 (= (get!7438 lt!798301) (furthestNullablePosition!77 z!3839 from!1043 (totalInput!3129 cacheFurthestNullable!114) (size!19046 (totalInput!3129 cacheFurthestNullable!114)) lastNullablePos!123)))))

(assert (= (and d!644994 (not res!924681)) b!2141773))

(declare-fun m!2587407 () Bool)

(assert (=> d!644994 m!2587407))

(declare-fun m!2587409 () Bool)

(assert (=> d!644994 m!2587409))

(declare-fun m!2587411 () Bool)

(assert (=> b!2141773 m!2587411))

(declare-fun m!2587413 () Bool)

(assert (=> b!2141773 m!2587413))

(assert (=> b!2141773 m!2587413))

(declare-fun m!2587415 () Bool)

(assert (=> b!2141773 m!2587415))

(assert (=> b!2141634 d!644994))

(assert (=> b!2141634 d!644944))

(declare-fun b!2141782 () Bool)

(declare-fun e!1368075 () Bool)

(declare-fun tp!662557 () Bool)

(assert (=> b!2141782 (= e!1368075 tp!662557)))

(declare-fun setElem!16436 () Context!2694)

(declare-fun e!1368074 () Bool)

(declare-fun setRes!16436 () Bool)

(declare-fun setNonEmpty!16436 () Bool)

(declare-fun tp!662556 () Bool)

(assert (=> setNonEmpty!16436 (= setRes!16436 (and tp!662556 (inv!32029 setElem!16436) e!1368074))))

(declare-fun setRest!16436 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16436 (= (_2!14266 (h!29737 (zeroValue!3016 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16436 true) setRest!16436))))

(declare-fun e!1368073 () Bool)

(assert (=> b!2141650 (= tp!662535 e!1368073)))

(declare-fun setIsEmpty!16436 () Bool)

(assert (=> setIsEmpty!16436 setRes!16436))

(declare-fun tp!662560 () Bool)

(declare-fun tp_is_empty!9515 () Bool)

(declare-fun b!2141783 () Bool)

(declare-fun tp!662558 () Bool)

(assert (=> b!2141783 (= e!1368073 (and tp!662560 (inv!32029 (_2!14265 (_1!14266 (h!29737 (zeroValue!3016 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098)))))))))) e!1368075 tp_is_empty!9515 setRes!16436 tp!662558))))

(declare-fun condSetEmpty!16436 () Bool)

(assert (=> b!2141783 (= condSetEmpty!16436 (= (_2!14266 (h!29737 (zeroValue!3016 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098)))))))) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun b!2141784 () Bool)

(declare-fun tp!662559 () Bool)

(assert (=> b!2141784 (= e!1368074 tp!662559)))

(assert (= b!2141783 b!2141782))

(assert (= (and b!2141783 condSetEmpty!16436) setIsEmpty!16436))

(assert (= (and b!2141783 (not condSetEmpty!16436)) setNonEmpty!16436))

(assert (= setNonEmpty!16436 b!2141784))

(assert (= (and b!2141650 ((_ is Cons!24336) (zeroValue!3016 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098)))))))) b!2141783))

(declare-fun m!2587417 () Bool)

(assert (=> setNonEmpty!16436 m!2587417))

(declare-fun m!2587419 () Bool)

(assert (=> b!2141783 m!2587419))

(declare-fun b!2141785 () Bool)

(declare-fun e!1368078 () Bool)

(declare-fun tp!662562 () Bool)

(assert (=> b!2141785 (= e!1368078 tp!662562)))

(declare-fun setNonEmpty!16437 () Bool)

(declare-fun setRes!16437 () Bool)

(declare-fun tp!662561 () Bool)

(declare-fun setElem!16437 () Context!2694)

(declare-fun e!1368077 () Bool)

(assert (=> setNonEmpty!16437 (= setRes!16437 (and tp!662561 (inv!32029 setElem!16437) e!1368077))))

(declare-fun setRest!16437 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16437 (= (_2!14266 (h!29737 (minValue!3016 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16437 true) setRest!16437))))

(declare-fun e!1368076 () Bool)

(assert (=> b!2141650 (= tp!662531 e!1368076)))

(declare-fun setIsEmpty!16437 () Bool)

(assert (=> setIsEmpty!16437 setRes!16437))

(declare-fun b!2141786 () Bool)

(declare-fun tp!662565 () Bool)

(declare-fun tp!662563 () Bool)

(assert (=> b!2141786 (= e!1368076 (and tp!662565 (inv!32029 (_2!14265 (_1!14266 (h!29737 (minValue!3016 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098)))))))))) e!1368078 tp_is_empty!9515 setRes!16437 tp!662563))))

(declare-fun condSetEmpty!16437 () Bool)

(assert (=> b!2141786 (= condSetEmpty!16437 (= (_2!14266 (h!29737 (minValue!3016 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098)))))))) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun b!2141787 () Bool)

(declare-fun tp!662564 () Bool)

(assert (=> b!2141787 (= e!1368077 tp!662564)))

(assert (= b!2141786 b!2141785))

(assert (= (and b!2141786 condSetEmpty!16437) setIsEmpty!16437))

(assert (= (and b!2141786 (not condSetEmpty!16437)) setNonEmpty!16437))

(assert (= setNonEmpty!16437 b!2141787))

(assert (= (and b!2141650 ((_ is Cons!24336) (minValue!3016 (v!28918 (underlying!5711 (v!28919 (underlying!5712 (cache!3053 cacheDown!1098)))))))) b!2141786))

(declare-fun m!2587421 () Bool)

(assert (=> setNonEmpty!16437 m!2587421))

(declare-fun m!2587423 () Bool)

(assert (=> b!2141786 m!2587423))

(declare-fun tp!662574 () Bool)

(declare-fun b!2141796 () Bool)

(declare-fun tp!662573 () Bool)

(declare-fun e!1368084 () Bool)

(assert (=> b!2141796 (= e!1368084 (and (inv!32030 (left!18716 (c!340599 totalInput!851))) tp!662574 (inv!32030 (right!19046 (c!340599 totalInput!851))) tp!662573))))

(declare-fun b!2141798 () Bool)

(declare-fun e!1368083 () Bool)

(declare-fun tp!662572 () Bool)

(assert (=> b!2141798 (= e!1368083 tp!662572)))

(declare-fun b!2141797 () Bool)

(declare-fun inv!32038 (IArray!15835) Bool)

(assert (=> b!2141797 (= e!1368084 (and (inv!32038 (xs!10857 (c!340599 totalInput!851))) e!1368083))))

(assert (=> b!2141643 (= tp!662536 (and (inv!32030 (c!340599 totalInput!851)) e!1368084))))

(assert (= (and b!2141643 ((_ is Node!7915) (c!340599 totalInput!851))) b!2141796))

(assert (= b!2141797 b!2141798))

(assert (= (and b!2141643 ((_ is Leaf!11571) (c!340599 totalInput!851))) b!2141797))

(declare-fun m!2587425 () Bool)

(assert (=> b!2141796 m!2587425))

(declare-fun m!2587427 () Bool)

(assert (=> b!2141796 m!2587427))

(declare-fun m!2587429 () Bool)

(assert (=> b!2141797 m!2587429))

(assert (=> b!2141643 m!2587287))

(declare-fun condSetEmpty!16440 () Bool)

(assert (=> setNonEmpty!16433 (= condSetEmpty!16440 (= setRest!16433 ((as const (Array Context!2694 Bool)) false)))))

(declare-fun setRes!16440 () Bool)

(assert (=> setNonEmpty!16433 (= tp!662542 setRes!16440)))

(declare-fun setIsEmpty!16440 () Bool)

(assert (=> setIsEmpty!16440 setRes!16440))

(declare-fun setElem!16440 () Context!2694)

(declare-fun e!1368087 () Bool)

(declare-fun tp!662579 () Bool)

(declare-fun setNonEmpty!16440 () Bool)

(assert (=> setNonEmpty!16440 (= setRes!16440 (and tp!662579 (inv!32029 setElem!16440) e!1368087))))

(declare-fun setRest!16440 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16440 (= setRest!16433 ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16440 true) setRest!16440))))

(declare-fun b!2141803 () Bool)

(declare-fun tp!662580 () Bool)

(assert (=> b!2141803 (= e!1368087 tp!662580)))

(assert (= (and setNonEmpty!16433 condSetEmpty!16440) setIsEmpty!16440))

(assert (= (and setNonEmpty!16433 (not condSetEmpty!16440)) setNonEmpty!16440))

(assert (= setNonEmpty!16440 b!2141803))

(declare-fun m!2587431 () Bool)

(assert (=> setNonEmpty!16440 m!2587431))

(declare-fun tp!662591 () Bool)

(declare-fun e!1368095 () Bool)

(declare-fun b!2141812 () Bool)

(declare-fun setRes!16443 () Bool)

(declare-fun e!1368094 () Bool)

(assert (=> b!2141812 (= e!1368095 (and (inv!32029 (_1!14269 (_1!14270 (h!29741 mapDefault!13153)))) e!1368094 tp_is_empty!9515 setRes!16443 tp!662591))))

(declare-fun condSetEmpty!16443 () Bool)

(assert (=> b!2141812 (= condSetEmpty!16443 (= (_2!14270 (h!29741 mapDefault!13153)) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun b!2141814 () Bool)

(declare-fun tp!662592 () Bool)

(assert (=> b!2141814 (= e!1368094 tp!662592)))

(declare-fun setIsEmpty!16443 () Bool)

(assert (=> setIsEmpty!16443 setRes!16443))

(declare-fun setNonEmpty!16443 () Bool)

(declare-fun tp!662589 () Bool)

(declare-fun setElem!16443 () Context!2694)

(declare-fun e!1368096 () Bool)

(assert (=> setNonEmpty!16443 (= setRes!16443 (and tp!662589 (inv!32029 setElem!16443) e!1368096))))

(declare-fun setRest!16443 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16443 (= (_2!14270 (h!29741 mapDefault!13153)) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16443 true) setRest!16443))))

(declare-fun b!2141813 () Bool)

(declare-fun tp!662590 () Bool)

(assert (=> b!2141813 (= e!1368096 tp!662590)))

(assert (=> b!2141652 (= tp!662537 e!1368095)))

(assert (= b!2141812 b!2141814))

(assert (= (and b!2141812 condSetEmpty!16443) setIsEmpty!16443))

(assert (= (and b!2141812 (not condSetEmpty!16443)) setNonEmpty!16443))

(assert (= setNonEmpty!16443 b!2141813))

(assert (= (and b!2141652 ((_ is Cons!24340) mapDefault!13153)) b!2141812))

(declare-fun m!2587433 () Bool)

(assert (=> b!2141812 m!2587433))

(declare-fun m!2587435 () Bool)

(assert (=> setNonEmpty!16443 m!2587435))

(declare-fun b!2141815 () Bool)

(declare-fun tp!662595 () Bool)

(declare-fun e!1368098 () Bool)

(declare-fun tp!662594 () Bool)

(assert (=> b!2141815 (= e!1368098 (and (inv!32030 (left!18716 (c!340599 (totalInput!3130 (h!29740 stack!8))))) tp!662595 (inv!32030 (right!19046 (c!340599 (totalInput!3130 (h!29740 stack!8))))) tp!662594))))

(declare-fun b!2141817 () Bool)

(declare-fun e!1368097 () Bool)

(declare-fun tp!662593 () Bool)

(assert (=> b!2141817 (= e!1368097 tp!662593)))

(declare-fun b!2141816 () Bool)

(assert (=> b!2141816 (= e!1368098 (and (inv!32038 (xs!10857 (c!340599 (totalInput!3130 (h!29740 stack!8))))) e!1368097))))

(assert (=> b!2141661 (= tp!662517 (and (inv!32030 (c!340599 (totalInput!3130 (h!29740 stack!8)))) e!1368098))))

(assert (= (and b!2141661 ((_ is Node!7915) (c!340599 (totalInput!3130 (h!29740 stack!8))))) b!2141815))

(assert (= b!2141816 b!2141817))

(assert (= (and b!2141661 ((_ is Leaf!11571) (c!340599 (totalInput!3130 (h!29740 stack!8))))) b!2141816))

(declare-fun m!2587437 () Bool)

(assert (=> b!2141815 m!2587437))

(declare-fun m!2587439 () Bool)

(assert (=> b!2141815 m!2587439))

(declare-fun m!2587441 () Bool)

(assert (=> b!2141816 m!2587441))

(assert (=> b!2141661 m!2587229))

(declare-fun setIsEmpty!16446 () Bool)

(declare-fun setRes!16446 () Bool)

(assert (=> setIsEmpty!16446 setRes!16446))

(declare-fun setElem!16446 () Context!2694)

(declare-fun tp!662606 () Bool)

(declare-fun e!1368107 () Bool)

(declare-fun setNonEmpty!16446 () Bool)

(assert (=> setNonEmpty!16446 (= setRes!16446 (and tp!662606 (inv!32029 setElem!16446) e!1368107))))

(declare-fun setRest!16446 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16446 (= (z!5872 (h!29740 (t!196953 stack!8))) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16446 true) setRest!16446))))

(declare-fun b!2141828 () Bool)

(declare-fun e!1368108 () Bool)

(declare-fun e!1368110 () Bool)

(assert (=> b!2141828 (= e!1368108 (and setRes!16446 (inv!32035 (totalInput!3130 (h!29740 (t!196953 stack!8)))) e!1368110))))

(declare-fun condSetEmpty!16446 () Bool)

(assert (=> b!2141828 (= condSetEmpty!16446 (= (z!5872 (h!29740 (t!196953 stack!8))) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun e!1368109 () Bool)

(assert (=> b!2141644 (= tp!662521 e!1368109)))

(declare-fun b!2141829 () Bool)

(declare-fun tp!662604 () Bool)

(assert (=> b!2141829 (= e!1368110 (and (inv!32030 (c!340599 (totalInput!3130 (h!29740 (t!196953 stack!8))))) tp!662604))))

(declare-fun b!2141830 () Bool)

(declare-fun tp!662607 () Bool)

(assert (=> b!2141830 (= e!1368107 tp!662607)))

(declare-fun tp!662605 () Bool)

(declare-fun b!2141831 () Bool)

(assert (=> b!2141831 (= e!1368109 (and (inv!32031 (h!29740 (t!196953 stack!8))) e!1368108 tp!662605))))

(assert (= (and b!2141828 condSetEmpty!16446) setIsEmpty!16446))

(assert (= (and b!2141828 (not condSetEmpty!16446)) setNonEmpty!16446))

(assert (= setNonEmpty!16446 b!2141830))

(assert (= b!2141828 b!2141829))

(assert (= b!2141831 b!2141828))

(assert (= (and b!2141644 ((_ is Cons!24339) (t!196953 stack!8))) b!2141831))

(declare-fun m!2587443 () Bool)

(assert (=> setNonEmpty!16446 m!2587443))

(declare-fun m!2587445 () Bool)

(assert (=> b!2141828 m!2587445))

(declare-fun m!2587447 () Bool)

(assert (=> b!2141829 m!2587447))

(declare-fun m!2587449 () Bool)

(assert (=> b!2141831 m!2587449))

(declare-fun setRes!16447 () Bool)

(declare-fun tp!662610 () Bool)

(declare-fun b!2141832 () Bool)

(declare-fun e!1368111 () Bool)

(declare-fun e!1368112 () Bool)

(assert (=> b!2141832 (= e!1368112 (and (inv!32029 (_1!14269 (_1!14270 (h!29741 (zeroValue!3018 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979)))))))))) e!1368111 tp_is_empty!9515 setRes!16447 tp!662610))))

(declare-fun condSetEmpty!16447 () Bool)

(assert (=> b!2141832 (= condSetEmpty!16447 (= (_2!14270 (h!29741 (zeroValue!3018 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979)))))))) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun b!2141834 () Bool)

(declare-fun tp!662611 () Bool)

(assert (=> b!2141834 (= e!1368111 tp!662611)))

(declare-fun setIsEmpty!16447 () Bool)

(assert (=> setIsEmpty!16447 setRes!16447))

(declare-fun tp!662608 () Bool)

(declare-fun e!1368113 () Bool)

(declare-fun setNonEmpty!16447 () Bool)

(declare-fun setElem!16447 () Context!2694)

(assert (=> setNonEmpty!16447 (= setRes!16447 (and tp!662608 (inv!32029 setElem!16447) e!1368113))))

(declare-fun setRest!16447 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16447 (= (_2!14270 (h!29741 (zeroValue!3018 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16447 true) setRest!16447))))

(declare-fun b!2141833 () Bool)

(declare-fun tp!662609 () Bool)

(assert (=> b!2141833 (= e!1368113 tp!662609)))

(assert (=> b!2141653 (= tp!662522 e!1368112)))

(assert (= b!2141832 b!2141834))

(assert (= (and b!2141832 condSetEmpty!16447) setIsEmpty!16447))

(assert (= (and b!2141832 (not condSetEmpty!16447)) setNonEmpty!16447))

(assert (= setNonEmpty!16447 b!2141833))

(assert (= (and b!2141653 ((_ is Cons!24340) (zeroValue!3018 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979)))))))) b!2141832))

(declare-fun m!2587451 () Bool)

(assert (=> b!2141832 m!2587451))

(declare-fun m!2587453 () Bool)

(assert (=> setNonEmpty!16447 m!2587453))

(declare-fun b!2141835 () Bool)

(declare-fun e!1368114 () Bool)

(declare-fun setRes!16448 () Bool)

(declare-fun tp!662614 () Bool)

(declare-fun e!1368115 () Bool)

(assert (=> b!2141835 (= e!1368115 (and (inv!32029 (_1!14269 (_1!14270 (h!29741 (minValue!3018 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979)))))))))) e!1368114 tp_is_empty!9515 setRes!16448 tp!662614))))

(declare-fun condSetEmpty!16448 () Bool)

(assert (=> b!2141835 (= condSetEmpty!16448 (= (_2!14270 (h!29741 (minValue!3018 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979)))))))) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun b!2141837 () Bool)

(declare-fun tp!662615 () Bool)

(assert (=> b!2141837 (= e!1368114 tp!662615)))

(declare-fun setIsEmpty!16448 () Bool)

(assert (=> setIsEmpty!16448 setRes!16448))

(declare-fun setElem!16448 () Context!2694)

(declare-fun e!1368116 () Bool)

(declare-fun setNonEmpty!16448 () Bool)

(declare-fun tp!662612 () Bool)

(assert (=> setNonEmpty!16448 (= setRes!16448 (and tp!662612 (inv!32029 setElem!16448) e!1368116))))

(declare-fun setRest!16448 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16448 (= (_2!14270 (h!29741 (minValue!3018 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16448 true) setRest!16448))))

(declare-fun b!2141836 () Bool)

(declare-fun tp!662613 () Bool)

(assert (=> b!2141836 (= e!1368116 tp!662613)))

(assert (=> b!2141653 (= tp!662520 e!1368115)))

(assert (= b!2141835 b!2141837))

(assert (= (and b!2141835 condSetEmpty!16448) setIsEmpty!16448))

(assert (= (and b!2141835 (not condSetEmpty!16448)) setNonEmpty!16448))

(assert (= setNonEmpty!16448 b!2141836))

(assert (= (and b!2141653 ((_ is Cons!24340) (minValue!3018 (v!28923 (underlying!5715 (v!28924 (underlying!5716 (cache!3055 cacheUp!979)))))))) b!2141835))

(declare-fun m!2587455 () Bool)

(assert (=> b!2141835 m!2587455))

(declare-fun m!2587457 () Bool)

(assert (=> setNonEmpty!16448 m!2587457))

(declare-fun condSetEmpty!16449 () Bool)

(assert (=> setNonEmpty!16432 (= condSetEmpty!16449 (= setRest!16432 ((as const (Array Context!2694 Bool)) false)))))

(declare-fun setRes!16449 () Bool)

(assert (=> setNonEmpty!16432 (= tp!662523 setRes!16449)))

(declare-fun setIsEmpty!16449 () Bool)

(assert (=> setIsEmpty!16449 setRes!16449))

(declare-fun e!1368117 () Bool)

(declare-fun setElem!16449 () Context!2694)

(declare-fun setNonEmpty!16449 () Bool)

(declare-fun tp!662616 () Bool)

(assert (=> setNonEmpty!16449 (= setRes!16449 (and tp!662616 (inv!32029 setElem!16449) e!1368117))))

(declare-fun setRest!16449 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16449 (= setRest!16432 ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16449 true) setRest!16449))))

(declare-fun b!2141838 () Bool)

(declare-fun tp!662617 () Bool)

(assert (=> b!2141838 (= e!1368117 tp!662617)))

(assert (= (and setNonEmpty!16432 condSetEmpty!16449) setIsEmpty!16449))

(assert (= (and setNonEmpty!16432 (not condSetEmpty!16449)) setNonEmpty!16449))

(assert (= setNonEmpty!16449 b!2141838))

(declare-fun m!2587459 () Bool)

(assert (=> setNonEmpty!16449 m!2587459))

(declare-fun b!2141843 () Bool)

(declare-fun e!1368120 () Bool)

(declare-fun tp!662622 () Bool)

(declare-fun tp!662623 () Bool)

(assert (=> b!2141843 (= e!1368120 (and tp!662622 tp!662623))))

(assert (=> b!2141672 (= tp!662529 e!1368120)))

(assert (= (and b!2141672 ((_ is Cons!24335) (exprs!1847 setElem!16432))) b!2141843))

(declare-fun e!1368122 () Bool)

(declare-fun tp!662625 () Bool)

(declare-fun b!2141844 () Bool)

(declare-fun tp!662626 () Bool)

(assert (=> b!2141844 (= e!1368122 (and (inv!32030 (left!18716 (c!340599 (totalInput!3129 cacheFurthestNullable!114)))) tp!662626 (inv!32030 (right!19046 (c!340599 (totalInput!3129 cacheFurthestNullable!114)))) tp!662625))))

(declare-fun b!2141846 () Bool)

(declare-fun e!1368121 () Bool)

(declare-fun tp!662624 () Bool)

(assert (=> b!2141846 (= e!1368121 tp!662624)))

(declare-fun b!2141845 () Bool)

(assert (=> b!2141845 (= e!1368122 (and (inv!32038 (xs!10857 (c!340599 (totalInput!3129 cacheFurthestNullable!114)))) e!1368121))))

(assert (=> b!2141674 (= tp!662519 (and (inv!32030 (c!340599 (totalInput!3129 cacheFurthestNullable!114))) e!1368122))))

(assert (= (and b!2141674 ((_ is Node!7915) (c!340599 (totalInput!3129 cacheFurthestNullable!114)))) b!2141844))

(assert (= b!2141845 b!2141846))

(assert (= (and b!2141674 ((_ is Leaf!11571) (c!340599 (totalInput!3129 cacheFurthestNullable!114)))) b!2141845))

(declare-fun m!2587461 () Bool)

(assert (=> b!2141844 m!2587461))

(declare-fun m!2587463 () Bool)

(assert (=> b!2141844 m!2587463))

(declare-fun m!2587465 () Bool)

(assert (=> b!2141845 m!2587465))

(assert (=> b!2141674 m!2587295))

(declare-fun b!2141847 () Bool)

(declare-fun e!1368125 () Bool)

(declare-fun tp!662628 () Bool)

(assert (=> b!2141847 (= e!1368125 tp!662628)))

(declare-fun setRes!16450 () Bool)

(declare-fun tp!662627 () Bool)

(declare-fun setNonEmpty!16450 () Bool)

(declare-fun setElem!16450 () Context!2694)

(declare-fun e!1368124 () Bool)

(assert (=> setNonEmpty!16450 (= setRes!16450 (and tp!662627 (inv!32029 setElem!16450) e!1368124))))

(declare-fun setRest!16450 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16450 (= (_2!14266 (h!29737 mapDefault!13155)) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16450 true) setRest!16450))))

(declare-fun e!1368123 () Bool)

(assert (=> b!2141631 (= tp!662524 e!1368123)))

(declare-fun setIsEmpty!16450 () Bool)

(assert (=> setIsEmpty!16450 setRes!16450))

(declare-fun tp!662629 () Bool)

(declare-fun tp!662631 () Bool)

(declare-fun b!2141848 () Bool)

(assert (=> b!2141848 (= e!1368123 (and tp!662631 (inv!32029 (_2!14265 (_1!14266 (h!29737 mapDefault!13155)))) e!1368125 tp_is_empty!9515 setRes!16450 tp!662629))))

(declare-fun condSetEmpty!16450 () Bool)

(assert (=> b!2141848 (= condSetEmpty!16450 (= (_2!14266 (h!29737 mapDefault!13155)) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun b!2141849 () Bool)

(declare-fun tp!662630 () Bool)

(assert (=> b!2141849 (= e!1368124 tp!662630)))

(assert (= b!2141848 b!2141847))

(assert (= (and b!2141848 condSetEmpty!16450) setIsEmpty!16450))

(assert (= (and b!2141848 (not condSetEmpty!16450)) setNonEmpty!16450))

(assert (= setNonEmpty!16450 b!2141849))

(assert (= (and b!2141631 ((_ is Cons!24336) mapDefault!13155)) b!2141848))

(declare-fun m!2587467 () Bool)

(assert (=> setNonEmpty!16450 m!2587467))

(declare-fun m!2587469 () Bool)

(assert (=> b!2141848 m!2587469))

(declare-fun b!2141850 () Bool)

(declare-fun e!1368126 () Bool)

(declare-fun tp!662632 () Bool)

(declare-fun tp!662633 () Bool)

(assert (=> b!2141850 (= e!1368126 (and tp!662632 tp!662633))))

(assert (=> b!2141649 (= tp!662538 e!1368126)))

(assert (= (and b!2141649 ((_ is Cons!24335) (exprs!1847 setElem!16433))) b!2141850))

(declare-fun setIsEmpty!16455 () Bool)

(declare-fun setRes!16455 () Bool)

(assert (=> setIsEmpty!16455 setRes!16455))

(declare-fun b!2141861 () Bool)

(declare-fun e!1368136 () Bool)

(declare-fun tp!662649 () Bool)

(assert (=> b!2141861 (= e!1368136 (and setRes!16455 tp!662649))))

(declare-fun condSetEmpty!16455 () Bool)

(declare-fun mapDefault!13158 () List!24421)

(assert (=> b!2141861 (= condSetEmpty!16455 (= (_1!14267 (_1!14268 (h!29738 mapDefault!13158))) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun b!2141862 () Bool)

(declare-fun e!1368135 () Bool)

(declare-fun setRes!16456 () Bool)

(declare-fun tp!662651 () Bool)

(assert (=> b!2141862 (= e!1368135 (and setRes!16456 tp!662651))))

(declare-fun condSetEmpty!16456 () Bool)

(declare-fun mapValue!13158 () List!24421)

(assert (=> b!2141862 (= condSetEmpty!16456 (= (_1!14267 (_1!14268 (h!29738 mapValue!13158))) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun mapNonEmpty!13158 () Bool)

(declare-fun mapRes!13158 () Bool)

(declare-fun tp!662652 () Bool)

(assert (=> mapNonEmpty!13158 (= mapRes!13158 (and tp!662652 e!1368135))))

(declare-fun mapRest!13158 () (Array (_ BitVec 32) List!24421))

(declare-fun mapKey!13158 () (_ BitVec 32))

(assert (=> mapNonEmpty!13158 (= mapRest!13153 (store mapRest!13158 mapKey!13158 mapValue!13158))))

(declare-fun setNonEmpty!16455 () Bool)

(declare-fun setElem!16456 () Context!2694)

(declare-fun tp!662653 () Bool)

(declare-fun e!1368138 () Bool)

(assert (=> setNonEmpty!16455 (= setRes!16455 (and tp!662653 (inv!32029 setElem!16456) e!1368138))))

(declare-fun setRest!16455 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16455 (= (_1!14267 (_1!14268 (h!29738 mapDefault!13158))) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16456 true) setRest!16455))))

(declare-fun setIsEmpty!16456 () Bool)

(assert (=> setIsEmpty!16456 setRes!16456))

(declare-fun b!2141863 () Bool)

(declare-fun tp!662648 () Bool)

(assert (=> b!2141863 (= e!1368138 tp!662648)))

(declare-fun b!2141864 () Bool)

(declare-fun e!1368137 () Bool)

(declare-fun tp!662654 () Bool)

(assert (=> b!2141864 (= e!1368137 tp!662654)))

(declare-fun mapIsEmpty!13158 () Bool)

(assert (=> mapIsEmpty!13158 mapRes!13158))

(declare-fun condMapEmpty!13158 () Bool)

(assert (=> mapNonEmpty!13155 (= condMapEmpty!13158 (= mapRest!13153 ((as const (Array (_ BitVec 32) List!24421)) mapDefault!13158)))))

(assert (=> mapNonEmpty!13155 (= tp!662543 (and e!1368136 mapRes!13158))))

(declare-fun tp!662650 () Bool)

(declare-fun setElem!16455 () Context!2694)

(declare-fun setNonEmpty!16456 () Bool)

(assert (=> setNonEmpty!16456 (= setRes!16456 (and tp!662650 (inv!32029 setElem!16455) e!1368137))))

(declare-fun setRest!16456 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16456 (= (_1!14267 (_1!14268 (h!29738 mapValue!13158))) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16455 true) setRest!16456))))

(assert (= (and mapNonEmpty!13155 condMapEmpty!13158) mapIsEmpty!13158))

(assert (= (and mapNonEmpty!13155 (not condMapEmpty!13158)) mapNonEmpty!13158))

(assert (= (and b!2141862 condSetEmpty!16456) setIsEmpty!16456))

(assert (= (and b!2141862 (not condSetEmpty!16456)) setNonEmpty!16456))

(assert (= setNonEmpty!16456 b!2141864))

(assert (= (and mapNonEmpty!13158 ((_ is Cons!24337) mapValue!13158)) b!2141862))

(assert (= (and b!2141861 condSetEmpty!16455) setIsEmpty!16455))

(assert (= (and b!2141861 (not condSetEmpty!16455)) setNonEmpty!16455))

(assert (= setNonEmpty!16455 b!2141863))

(assert (= (and mapNonEmpty!13155 ((_ is Cons!24337) mapDefault!13158)) b!2141861))

(declare-fun m!2587471 () Bool)

(assert (=> mapNonEmpty!13158 m!2587471))

(declare-fun m!2587473 () Bool)

(assert (=> setNonEmpty!16455 m!2587473))

(declare-fun m!2587475 () Bool)

(assert (=> setNonEmpty!16456 m!2587475))

(declare-fun b!2141872 () Bool)

(declare-fun e!1368143 () Bool)

(declare-fun tp!662662 () Bool)

(assert (=> b!2141872 (= e!1368143 tp!662662)))

(declare-fun setElem!16459 () Context!2694)

(declare-fun setNonEmpty!16459 () Bool)

(declare-fun tp!662663 () Bool)

(declare-fun setRes!16459 () Bool)

(assert (=> setNonEmpty!16459 (= setRes!16459 (and tp!662663 (inv!32029 setElem!16459) e!1368143))))

(declare-fun setRest!16459 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16459 (= (_1!14267 (_1!14268 (h!29738 mapValue!13155))) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16459 true) setRest!16459))))

(declare-fun e!1368144 () Bool)

(assert (=> mapNonEmpty!13155 (= tp!662526 e!1368144)))

(declare-fun b!2141871 () Bool)

(declare-fun tp!662661 () Bool)

(assert (=> b!2141871 (= e!1368144 (and setRes!16459 tp!662661))))

(declare-fun condSetEmpty!16459 () Bool)

(assert (=> b!2141871 (= condSetEmpty!16459 (= (_1!14267 (_1!14268 (h!29738 mapValue!13155))) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun setIsEmpty!16459 () Bool)

(assert (=> setIsEmpty!16459 setRes!16459))

(assert (= (and b!2141871 condSetEmpty!16459) setIsEmpty!16459))

(assert (= (and b!2141871 (not condSetEmpty!16459)) setNonEmpty!16459))

(assert (= setNonEmpty!16459 b!2141872))

(assert (= (and mapNonEmpty!13155 ((_ is Cons!24337) mapValue!13155)) b!2141871))

(declare-fun m!2587477 () Bool)

(assert (=> setNonEmpty!16459 m!2587477))

(declare-fun b!2141874 () Bool)

(declare-fun e!1368145 () Bool)

(declare-fun tp!662665 () Bool)

(assert (=> b!2141874 (= e!1368145 tp!662665)))

(declare-fun setNonEmpty!16460 () Bool)

(declare-fun setElem!16460 () Context!2694)

(declare-fun tp!662666 () Bool)

(declare-fun setRes!16460 () Bool)

(assert (=> setNonEmpty!16460 (= setRes!16460 (and tp!662666 (inv!32029 setElem!16460) e!1368145))))

(declare-fun setRest!16460 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16460 (= (_1!14267 (_1!14268 (h!29738 mapDefault!13154))) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16460 true) setRest!16460))))

(declare-fun e!1368146 () Bool)

(assert (=> b!2141640 (= tp!662539 e!1368146)))

(declare-fun b!2141873 () Bool)

(declare-fun tp!662664 () Bool)

(assert (=> b!2141873 (= e!1368146 (and setRes!16460 tp!662664))))

(declare-fun condSetEmpty!16460 () Bool)

(assert (=> b!2141873 (= condSetEmpty!16460 (= (_1!14267 (_1!14268 (h!29738 mapDefault!13154))) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun setIsEmpty!16460 () Bool)

(assert (=> setIsEmpty!16460 setRes!16460))

(assert (= (and b!2141873 condSetEmpty!16460) setIsEmpty!16460))

(assert (= (and b!2141873 (not condSetEmpty!16460)) setNonEmpty!16460))

(assert (= setNonEmpty!16460 b!2141874))

(assert (= (and b!2141640 ((_ is Cons!24337) mapDefault!13154)) b!2141873))

(declare-fun m!2587479 () Bool)

(assert (=> setNonEmpty!16460 m!2587479))

(declare-fun tp!662685 () Bool)

(declare-fun setElem!16465 () Context!2694)

(declare-fun setNonEmpty!16465 () Bool)

(declare-fun setRes!16465 () Bool)

(declare-fun e!1368161 () Bool)

(assert (=> setNonEmpty!16465 (= setRes!16465 (and tp!662685 (inv!32029 setElem!16465) e!1368161))))

(declare-fun mapDefault!13161 () List!24424)

(declare-fun setRest!16466 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16465 (= (_2!14270 (h!29741 mapDefault!13161)) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16465 true) setRest!16466))))

(declare-fun setIsEmpty!16465 () Bool)

(assert (=> setIsEmpty!16465 setRes!16465))

(declare-fun b!2141889 () Bool)

(declare-fun e!1368162 () Bool)

(declare-fun tp!662690 () Bool)

(assert (=> b!2141889 (= e!1368162 tp!662690)))

(declare-fun b!2141890 () Bool)

(declare-fun e!1368164 () Bool)

(declare-fun tp!662688 () Bool)

(assert (=> b!2141890 (= e!1368164 tp!662688)))

(declare-fun mapNonEmpty!13161 () Bool)

(declare-fun mapRes!13161 () Bool)

(declare-fun tp!662691 () Bool)

(declare-fun e!1368159 () Bool)

(assert (=> mapNonEmpty!13161 (= mapRes!13161 (and tp!662691 e!1368159))))

(declare-fun mapValue!13161 () List!24424)

(declare-fun mapKey!13161 () (_ BitVec 32))

(declare-fun mapRest!13161 () (Array (_ BitVec 32) List!24424))

(assert (=> mapNonEmpty!13161 (= mapRest!13154 (store mapRest!13161 mapKey!13161 mapValue!13161))))

(declare-fun condMapEmpty!13161 () Bool)

(assert (=> mapNonEmpty!13153 (= condMapEmpty!13161 (= mapRest!13154 ((as const (Array (_ BitVec 32) List!24424)) mapDefault!13161)))))

(declare-fun e!1368163 () Bool)

(assert (=> mapNonEmpty!13153 (= tp!662533 (and e!1368163 mapRes!13161))))

(declare-fun tp!662692 () Bool)

(declare-fun setNonEmpty!16466 () Bool)

(declare-fun setRes!16466 () Bool)

(declare-fun e!1368160 () Bool)

(declare-fun setElem!16466 () Context!2694)

(assert (=> setNonEmpty!16466 (= setRes!16466 (and tp!662692 (inv!32029 setElem!16466) e!1368160))))

(declare-fun setRest!16465 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16466 (= (_2!14270 (h!29741 mapValue!13161)) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16466 true) setRest!16465))))

(declare-fun b!2141891 () Bool)

(declare-fun tp!662693 () Bool)

(assert (=> b!2141891 (= e!1368161 tp!662693)))

(declare-fun b!2141892 () Bool)

(declare-fun tp!662689 () Bool)

(assert (=> b!2141892 (= e!1368159 (and (inv!32029 (_1!14269 (_1!14270 (h!29741 mapValue!13161)))) e!1368164 tp_is_empty!9515 setRes!16466 tp!662689))))

(declare-fun condSetEmpty!16466 () Bool)

(assert (=> b!2141892 (= condSetEmpty!16466 (= (_2!14270 (h!29741 mapValue!13161)) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun b!2141893 () Bool)

(declare-fun tp!662686 () Bool)

(assert (=> b!2141893 (= e!1368160 tp!662686)))

(declare-fun mapIsEmpty!13161 () Bool)

(assert (=> mapIsEmpty!13161 mapRes!13161))

(declare-fun b!2141894 () Bool)

(declare-fun tp!662687 () Bool)

(assert (=> b!2141894 (= e!1368163 (and (inv!32029 (_1!14269 (_1!14270 (h!29741 mapDefault!13161)))) e!1368162 tp_is_empty!9515 setRes!16465 tp!662687))))

(declare-fun condSetEmpty!16465 () Bool)

(assert (=> b!2141894 (= condSetEmpty!16465 (= (_2!14270 (h!29741 mapDefault!13161)) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun setIsEmpty!16466 () Bool)

(assert (=> setIsEmpty!16466 setRes!16466))

(assert (= (and mapNonEmpty!13153 condMapEmpty!13161) mapIsEmpty!13161))

(assert (= (and mapNonEmpty!13153 (not condMapEmpty!13161)) mapNonEmpty!13161))

(assert (= b!2141892 b!2141890))

(assert (= (and b!2141892 condSetEmpty!16466) setIsEmpty!16466))

(assert (= (and b!2141892 (not condSetEmpty!16466)) setNonEmpty!16466))

(assert (= setNonEmpty!16466 b!2141893))

(assert (= (and mapNonEmpty!13161 ((_ is Cons!24340) mapValue!13161)) b!2141892))

(assert (= b!2141894 b!2141889))

(assert (= (and b!2141894 condSetEmpty!16465) setIsEmpty!16465))

(assert (= (and b!2141894 (not condSetEmpty!16465)) setNonEmpty!16465))

(assert (= setNonEmpty!16465 b!2141891))

(assert (= (and mapNonEmpty!13153 ((_ is Cons!24340) mapDefault!13161)) b!2141894))

(declare-fun m!2587481 () Bool)

(assert (=> setNonEmpty!16465 m!2587481))

(declare-fun m!2587483 () Bool)

(assert (=> mapNonEmpty!13161 m!2587483))

(declare-fun m!2587485 () Bool)

(assert (=> b!2141892 m!2587485))

(declare-fun m!2587487 () Bool)

(assert (=> b!2141894 m!2587487))

(declare-fun m!2587489 () Bool)

(assert (=> setNonEmpty!16466 m!2587489))

(declare-fun tp!662696 () Bool)

(declare-fun setRes!16467 () Bool)

(declare-fun b!2141895 () Bool)

(declare-fun e!1368165 () Bool)

(declare-fun e!1368166 () Bool)

(assert (=> b!2141895 (= e!1368166 (and (inv!32029 (_1!14269 (_1!14270 (h!29741 mapValue!13153)))) e!1368165 tp_is_empty!9515 setRes!16467 tp!662696))))

(declare-fun condSetEmpty!16467 () Bool)

(assert (=> b!2141895 (= condSetEmpty!16467 (= (_2!14270 (h!29741 mapValue!13153)) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun b!2141897 () Bool)

(declare-fun tp!662697 () Bool)

(assert (=> b!2141897 (= e!1368165 tp!662697)))

(declare-fun setIsEmpty!16467 () Bool)

(assert (=> setIsEmpty!16467 setRes!16467))

(declare-fun e!1368167 () Bool)

(declare-fun tp!662694 () Bool)

(declare-fun setElem!16467 () Context!2694)

(declare-fun setNonEmpty!16467 () Bool)

(assert (=> setNonEmpty!16467 (= setRes!16467 (and tp!662694 (inv!32029 setElem!16467) e!1368167))))

(declare-fun setRest!16467 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16467 (= (_2!14270 (h!29741 mapValue!13153)) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16467 true) setRest!16467))))

(declare-fun b!2141896 () Bool)

(declare-fun tp!662695 () Bool)

(assert (=> b!2141896 (= e!1368167 tp!662695)))

(assert (=> mapNonEmpty!13153 (= tp!662518 e!1368166)))

(assert (= b!2141895 b!2141897))

(assert (= (and b!2141895 condSetEmpty!16467) setIsEmpty!16467))

(assert (= (and b!2141895 (not condSetEmpty!16467)) setNonEmpty!16467))

(assert (= setNonEmpty!16467 b!2141896))

(assert (= (and mapNonEmpty!13153 ((_ is Cons!24340) mapValue!13153)) b!2141895))

(declare-fun m!2587491 () Bool)

(assert (=> b!2141895 m!2587491))

(declare-fun m!2587493 () Bool)

(assert (=> setNonEmpty!16467 m!2587493))

(declare-fun b!2141912 () Bool)

(declare-fun e!1368180 () Bool)

(declare-fun tp!662724 () Bool)

(assert (=> b!2141912 (= e!1368180 tp!662724)))

(declare-fun setRes!16473 () Bool)

(declare-fun e!1368182 () Bool)

(declare-fun mapValue!13164 () List!24420)

(declare-fun tp!662726 () Bool)

(declare-fun b!2141913 () Bool)

(declare-fun e!1368181 () Bool)

(declare-fun tp!662730 () Bool)

(assert (=> b!2141913 (= e!1368182 (and tp!662730 (inv!32029 (_2!14265 (_1!14266 (h!29737 mapValue!13164)))) e!1368181 tp_is_empty!9515 setRes!16473 tp!662726))))

(declare-fun condSetEmpty!16472 () Bool)

(assert (=> b!2141913 (= condSetEmpty!16472 (= (_2!14266 (h!29737 mapValue!13164)) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun condMapEmpty!13164 () Bool)

(declare-fun mapDefault!13164 () List!24420)

(assert (=> mapNonEmpty!13154 (= condMapEmpty!13164 (= mapRest!13155 ((as const (Array (_ BitVec 32) List!24420)) mapDefault!13164)))))

(declare-fun e!1368185 () Bool)

(declare-fun mapRes!13164 () Bool)

(assert (=> mapNonEmpty!13154 (= tp!662527 (and e!1368185 mapRes!13164))))

(declare-fun b!2141914 () Bool)

(declare-fun e!1368184 () Bool)

(declare-fun tp!662723 () Bool)

(assert (=> b!2141914 (= e!1368184 tp!662723)))

(declare-fun tp!662720 () Bool)

(declare-fun setElem!16473 () Context!2694)

(declare-fun setNonEmpty!16472 () Bool)

(assert (=> setNonEmpty!16472 (= setRes!16473 (and tp!662720 (inv!32029 setElem!16473) e!1368180))))

(declare-fun setRest!16472 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16472 (= (_2!14266 (h!29737 mapValue!13164)) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16473 true) setRest!16472))))

(declare-fun b!2141915 () Bool)

(declare-fun tp!662728 () Bool)

(assert (=> b!2141915 (= e!1368181 tp!662728)))

(declare-fun mapNonEmpty!13164 () Bool)

(declare-fun tp!662729 () Bool)

(assert (=> mapNonEmpty!13164 (= mapRes!13164 (and tp!662729 e!1368182))))

(declare-fun mapKey!13164 () (_ BitVec 32))

(declare-fun mapRest!13164 () (Array (_ BitVec 32) List!24420))

(assert (=> mapNonEmpty!13164 (= mapRest!13155 (store mapRest!13164 mapKey!13164 mapValue!13164))))

(declare-fun setIsEmpty!16472 () Bool)

(declare-fun setRes!16472 () Bool)

(assert (=> setIsEmpty!16472 setRes!16472))

(declare-fun mapIsEmpty!13164 () Bool)

(assert (=> mapIsEmpty!13164 mapRes!13164))

(declare-fun b!2141916 () Bool)

(declare-fun e!1368183 () Bool)

(declare-fun tp!662722 () Bool)

(assert (=> b!2141916 (= e!1368183 tp!662722)))

(declare-fun setIsEmpty!16473 () Bool)

(assert (=> setIsEmpty!16473 setRes!16473))

(declare-fun setElem!16472 () Context!2694)

(declare-fun setNonEmpty!16473 () Bool)

(declare-fun tp!662721 () Bool)

(assert (=> setNonEmpty!16473 (= setRes!16472 (and tp!662721 (inv!32029 setElem!16472) e!1368183))))

(declare-fun setRest!16473 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16473 (= (_2!14266 (h!29737 mapDefault!13164)) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16472 true) setRest!16473))))

(declare-fun tp!662727 () Bool)

(declare-fun tp!662725 () Bool)

(declare-fun b!2141917 () Bool)

(assert (=> b!2141917 (= e!1368185 (and tp!662727 (inv!32029 (_2!14265 (_1!14266 (h!29737 mapDefault!13164)))) e!1368184 tp_is_empty!9515 setRes!16472 tp!662725))))

(declare-fun condSetEmpty!16473 () Bool)

(assert (=> b!2141917 (= condSetEmpty!16473 (= (_2!14266 (h!29737 mapDefault!13164)) ((as const (Array Context!2694 Bool)) false)))))

(assert (= (and mapNonEmpty!13154 condMapEmpty!13164) mapIsEmpty!13164))

(assert (= (and mapNonEmpty!13154 (not condMapEmpty!13164)) mapNonEmpty!13164))

(assert (= b!2141913 b!2141915))

(assert (= (and b!2141913 condSetEmpty!16472) setIsEmpty!16473))

(assert (= (and b!2141913 (not condSetEmpty!16472)) setNonEmpty!16472))

(assert (= setNonEmpty!16472 b!2141912))

(assert (= (and mapNonEmpty!13164 ((_ is Cons!24336) mapValue!13164)) b!2141913))

(assert (= b!2141917 b!2141914))

(assert (= (and b!2141917 condSetEmpty!16473) setIsEmpty!16472))

(assert (= (and b!2141917 (not condSetEmpty!16473)) setNonEmpty!16473))

(assert (= setNonEmpty!16473 b!2141916))

(assert (= (and mapNonEmpty!13154 ((_ is Cons!24336) mapDefault!13164)) b!2141917))

(declare-fun m!2587495 () Bool)

(assert (=> setNonEmpty!16473 m!2587495))

(declare-fun m!2587497 () Bool)

(assert (=> setNonEmpty!16472 m!2587497))

(declare-fun m!2587499 () Bool)

(assert (=> mapNonEmpty!13164 m!2587499))

(declare-fun m!2587501 () Bool)

(assert (=> b!2141917 m!2587501))

(declare-fun m!2587503 () Bool)

(assert (=> b!2141913 m!2587503))

(declare-fun b!2141918 () Bool)

(declare-fun e!1368188 () Bool)

(declare-fun tp!662732 () Bool)

(assert (=> b!2141918 (= e!1368188 tp!662732)))

(declare-fun e!1368187 () Bool)

(declare-fun tp!662731 () Bool)

(declare-fun setRes!16474 () Bool)

(declare-fun setNonEmpty!16474 () Bool)

(declare-fun setElem!16474 () Context!2694)

(assert (=> setNonEmpty!16474 (= setRes!16474 (and tp!662731 (inv!32029 setElem!16474) e!1368187))))

(declare-fun setRest!16474 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16474 (= (_2!14266 (h!29737 mapValue!13154)) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16474 true) setRest!16474))))

(declare-fun e!1368186 () Bool)

(assert (=> mapNonEmpty!13154 (= tp!662540 e!1368186)))

(declare-fun setIsEmpty!16474 () Bool)

(assert (=> setIsEmpty!16474 setRes!16474))

(declare-fun tp!662735 () Bool)

(declare-fun b!2141919 () Bool)

(declare-fun tp!662733 () Bool)

(assert (=> b!2141919 (= e!1368186 (and tp!662735 (inv!32029 (_2!14265 (_1!14266 (h!29737 mapValue!13154)))) e!1368188 tp_is_empty!9515 setRes!16474 tp!662733))))

(declare-fun condSetEmpty!16474 () Bool)

(assert (=> b!2141919 (= condSetEmpty!16474 (= (_2!14266 (h!29737 mapValue!13154)) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun b!2141920 () Bool)

(declare-fun tp!662734 () Bool)

(assert (=> b!2141920 (= e!1368187 tp!662734)))

(assert (= b!2141919 b!2141918))

(assert (= (and b!2141919 condSetEmpty!16474) setIsEmpty!16474))

(assert (= (and b!2141919 (not condSetEmpty!16474)) setNonEmpty!16474))

(assert (= setNonEmpty!16474 b!2141920))

(assert (= (and mapNonEmpty!13154 ((_ is Cons!24336) mapValue!13154)) b!2141919))

(declare-fun m!2587505 () Bool)

(assert (=> setNonEmpty!16474 m!2587505))

(declare-fun m!2587507 () Bool)

(assert (=> b!2141919 m!2587507))

(declare-fun b!2141922 () Bool)

(declare-fun e!1368189 () Bool)

(declare-fun tp!662737 () Bool)

(assert (=> b!2141922 (= e!1368189 tp!662737)))

(declare-fun setRes!16475 () Bool)

(declare-fun tp!662738 () Bool)

(declare-fun setElem!16475 () Context!2694)

(declare-fun setNonEmpty!16475 () Bool)

(assert (=> setNonEmpty!16475 (= setRes!16475 (and tp!662738 (inv!32029 setElem!16475) e!1368189))))

(declare-fun setRest!16475 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16475 (= (_1!14267 (_1!14268 (h!29738 (zeroValue!3017 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16475 true) setRest!16475))))

(declare-fun e!1368190 () Bool)

(assert (=> b!2141658 (= tp!662528 e!1368190)))

(declare-fun b!2141921 () Bool)

(declare-fun tp!662736 () Bool)

(assert (=> b!2141921 (= e!1368190 (and setRes!16475 tp!662736))))

(declare-fun condSetEmpty!16475 () Bool)

(assert (=> b!2141921 (= condSetEmpty!16475 (= (_1!14267 (_1!14268 (h!29738 (zeroValue!3017 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))))))) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun setIsEmpty!16475 () Bool)

(assert (=> setIsEmpty!16475 setRes!16475))

(assert (= (and b!2141921 condSetEmpty!16475) setIsEmpty!16475))

(assert (= (and b!2141921 (not condSetEmpty!16475)) setNonEmpty!16475))

(assert (= setNonEmpty!16475 b!2141922))

(assert (= (and b!2141658 ((_ is Cons!24337) (zeroValue!3017 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114)))))))) b!2141921))

(declare-fun m!2587509 () Bool)

(assert (=> setNonEmpty!16475 m!2587509))

(declare-fun b!2141924 () Bool)

(declare-fun e!1368191 () Bool)

(declare-fun tp!662740 () Bool)

(assert (=> b!2141924 (= e!1368191 tp!662740)))

(declare-fun setElem!16476 () Context!2694)

(declare-fun setRes!16476 () Bool)

(declare-fun setNonEmpty!16476 () Bool)

(declare-fun tp!662741 () Bool)

(assert (=> setNonEmpty!16476 (= setRes!16476 (and tp!662741 (inv!32029 setElem!16476) e!1368191))))

(declare-fun setRest!16476 () (InoxSet Context!2694))

(assert (=> setNonEmpty!16476 (= (_1!14267 (_1!14268 (h!29738 (minValue!3017 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2694 Bool)) false) setElem!16476 true) setRest!16476))))

(declare-fun e!1368192 () Bool)

(assert (=> b!2141658 (= tp!662532 e!1368192)))

(declare-fun b!2141923 () Bool)

(declare-fun tp!662739 () Bool)

(assert (=> b!2141923 (= e!1368192 (and setRes!16476 tp!662739))))

(declare-fun condSetEmpty!16476 () Bool)

(assert (=> b!2141923 (= condSetEmpty!16476 (= (_1!14267 (_1!14268 (h!29738 (minValue!3017 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114))))))))) ((as const (Array Context!2694 Bool)) false)))))

(declare-fun setIsEmpty!16476 () Bool)

(assert (=> setIsEmpty!16476 setRes!16476))

(assert (= (and b!2141923 condSetEmpty!16476) setIsEmpty!16476))

(assert (= (and b!2141923 (not condSetEmpty!16476)) setNonEmpty!16476))

(assert (= setNonEmpty!16476 b!2141924))

(assert (= (and b!2141658 ((_ is Cons!24337) (minValue!3017 (v!28920 (underlying!5713 (v!28921 (underlying!5714 (cache!3054 cacheFurthestNullable!114)))))))) b!2141923))

(declare-fun m!2587511 () Bool)

(assert (=> setNonEmpty!16476 m!2587511))

(declare-fun b_lambda!70671 () Bool)

(assert (= b_lambda!70665 (or b!2141665 b_lambda!70671)))

(declare-fun bs!445250 () Bool)

(declare-fun d!644996 () Bool)

(assert (= bs!445250 (and d!644996 b!2141665)))

(assert (=> bs!445250 (= (dynLambda!11373 lambda!80167 (h!29740 lt!798252)) (= (totalInput!3130 (h!29740 lt!798252)) totalInput!851))))

(assert (=> b!2141760 d!644996))

(declare-fun b_lambda!70673 () Bool)

(assert (= b_lambda!70669 (or b!2141665 b_lambda!70673)))

(declare-fun bs!445251 () Bool)

(declare-fun d!644998 () Bool)

(assert (= bs!445251 (and d!644998 b!2141665)))

(assert (=> bs!445251 (= (dynLambda!11373 lambda!80167 (h!29740 stack!8)) (= (totalInput!3130 (h!29740 stack!8)) totalInput!851))))

(assert (=> b!2141769 d!644998))

(declare-fun b_lambda!70675 () Bool)

(assert (= b_lambda!70661 (or b!2141662 b_lambda!70675)))

(declare-fun bs!445252 () Bool)

(declare-fun d!645000 () Bool)

(assert (= bs!445252 (and d!645000 b!2141662)))

(assert (=> bs!445252 (= (dynLambda!11373 lambda!80168 (h!29740 stack!8)) (= (res!924619 (h!29740 stack!8)) lt!798250))))

(assert (=> b!2141723 d!645000))

(declare-fun b_lambda!70677 () Bool)

(assert (= b_lambda!70667 (or b!2141662 b_lambda!70677)))

(declare-fun bs!445253 () Bool)

(declare-fun d!645002 () Bool)

(assert (= bs!445253 (and d!645002 b!2141662)))

(assert (=> bs!445253 (= (dynLambda!11373 lambda!80168 (h!29740 lt!798252)) (= (res!924619 (h!29740 lt!798252)) lt!798250))))

(assert (=> b!2141767 d!645002))

(declare-fun b_lambda!70679 () Bool)

(assert (= b_lambda!70663 (or b!2141671 b_lambda!70679)))

(declare-fun bs!445254 () Bool)

(declare-fun d!645004 () Bool)

(assert (= bs!445254 (and d!645004 b!2141671)))

(assert (=> bs!445254 (= (dynLambda!11373 lambda!80166 (h!29740 stack!8)) (= (res!924619 (h!29740 stack!8)) lt!798254))))

(assert (=> b!2141725 d!645004))

(check-sat (not b!2141921) (not b!2141784) (not b!2141863) (not b!2141786) (not b!2141713) (not b!2141893) (not b!2141844) (not setNonEmpty!16440) (not setNonEmpty!16475) (not b_next!63687) (not b!2141918) (not setNonEmpty!16436) (not setNonEmpty!16450) (not b!2141861) (not b!2141718) (not d!644924) (not d!644992) (not d!644974) (not b!2141726) (not bm!128813) (not b!2141746) (not b!2141914) (not b!2141873) (not mapNonEmpty!13161) (not d!644982) b_and!172563 (not b!2141750) (not b!2141758) (not b!2141919) (not b!2141773) (not setNonEmpty!16465) (not b!2141724) (not b!2141816) (not b!2141815) (not b!2141698) (not setNonEmpty!16447) (not d!644952) (not d!644972) (not b!2141831) (not b!2141691) (not setNonEmpty!16473) (not d!644934) (not b!2141739) (not mapNonEmpty!13158) (not d!644986) (not b!2141836) (not d!644994) (not b!2141889) (not setNonEmpty!16448) (not setNonEmpty!16459) (not b!2141871) (not b_lambda!70677) (not b!2141716) (not setNonEmpty!16474) (not b!2141812) (not b!2141894) b_and!172567 (not setNonEmpty!16449) (not b_next!63689) (not b!2141797) (not b!2141694) (not b!2141916) (not d!644960) (not b!2141845) (not b!2141747) tp_is_empty!9515 (not setNonEmpty!16467) (not d!644942) (not b!2141890) (not b!2141917) (not setNonEmpty!16456) (not b!2141833) (not b!2141832) (not b!2141785) (not setNonEmpty!16466) (not setNonEmpty!16476) b_and!172565 (not b!2141768) (not setNonEmpty!16472) (not b!2141848) (not b_next!63691) (not b_lambda!70675) (not b!2141751) (not b!2141814) (not b!2141803) (not b!2141874) (not b!2141770) (not d!644988) (not b!2141759) (not d!644956) (not b!2141850) (not b!2141835) (not b!2141896) (not b_next!63693) (not b!2141872) (not b!2141717) (not b!2141674) (not b!2141849) (not b!2141686) (not b!2141782) (not b!2141843) (not b!2141828) (not b!2141897) (not b!2141697) (not b!2141912) (not b!2141753) b_and!172571 (not b!2141764) (not b!2141688) b_and!172569 (not setNonEmpty!16455) (not bm!128814) (not b!2141796) (not b!2141783) (not mapNonEmpty!13164) (not b!2141837) (not setNonEmpty!16460) (not b!2141798) (not b!2141830) (not b!2141661) (not b!2141817) (not b!2141862) (not setNonEmpty!16443) (not b!2141864) (not b!2141892) (not b!2141923) (not b!2141761) (not b!2141847) (not b!2141829) (not b_next!63685) (not d!644950) (not b_lambda!70673) (not setNonEmpty!16437) (not b!2141891) b_and!172561 (not b!2141643) (not b!2141924) (not b!2141838) (not b!2141813) (not b!2141920) (not b!2141915) (not b!2141895) (not d!644958) (not b_lambda!70679) (not d!644948) (not b!2141834) (not b!2141846) (not b!2141913) (not b!2141787) (not b_lambda!70671) (not b!2141765) (not b!2141922) (not b!2141740) (not b!2141700) (not b_next!63695) (not setNonEmpty!16446))
(check-sat (not b_next!63687) b_and!172563 (not b_next!63693) b_and!172571 b_and!172569 (not b_next!63685) b_and!172561 (not b_next!63695) b_and!172567 (not b_next!63689) b_and!172565 (not b_next!63691))
