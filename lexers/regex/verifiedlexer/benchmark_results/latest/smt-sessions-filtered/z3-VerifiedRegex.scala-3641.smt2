; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207604 () Bool)

(assert start!207604)

(declare-fun b!2136086 () Bool)

(declare-fun b_free!62645 () Bool)

(declare-fun b_next!63349 () Bool)

(assert (=> b!2136086 (= b_free!62645 (not b_next!63349))))

(declare-fun tp!658627 () Bool)

(declare-fun b_and!172225 () Bool)

(assert (=> b!2136086 (= tp!658627 b_and!172225)))

(declare-fun b!2136065 () Bool)

(declare-fun b_free!62647 () Bool)

(declare-fun b_next!63351 () Bool)

(assert (=> b!2136065 (= b_free!62647 (not b_next!63351))))

(declare-fun tp!658624 () Bool)

(declare-fun b_and!172227 () Bool)

(assert (=> b!2136065 (= tp!658624 b_and!172227)))

(declare-fun b!2136079 () Bool)

(declare-fun b_free!62649 () Bool)

(declare-fun b_next!63353 () Bool)

(assert (=> b!2136079 (= b_free!62649 (not b_next!63353))))

(declare-fun tp!658632 () Bool)

(declare-fun b_and!172229 () Bool)

(assert (=> b!2136079 (= tp!658632 b_and!172229)))

(declare-fun b!2136074 () Bool)

(declare-fun b_free!62651 () Bool)

(declare-fun b_next!63355 () Bool)

(assert (=> b!2136074 (= b_free!62651 (not b_next!63355))))

(declare-fun tp!658635 () Bool)

(declare-fun b_and!172231 () Bool)

(assert (=> b!2136074 (= tp!658635 b_and!172231)))

(declare-fun b!2136077 () Bool)

(declare-fun b_free!62653 () Bool)

(declare-fun b_next!63357 () Bool)

(assert (=> b!2136077 (= b_free!62653 (not b_next!63357))))

(declare-fun tp!658628 () Bool)

(declare-fun b_and!172233 () Bool)

(assert (=> b!2136077 (= tp!658628 b_and!172233)))

(declare-fun b!2136063 () Bool)

(declare-fun b_free!62655 () Bool)

(declare-fun b_next!63359 () Bool)

(assert (=> b!2136063 (= b_free!62655 (not b_next!63359))))

(declare-fun tp!658620 () Bool)

(declare-fun b_and!172235 () Bool)

(assert (=> b!2136063 (= tp!658620 b_and!172235)))

(declare-fun b!2136075 () Bool)

(assert (=> b!2136075 true))

(declare-fun bs!444334 () Bool)

(declare-fun b!2136045 () Bool)

(assert (= bs!444334 (and b!2136045 b!2136075)))

(declare-fun lambda!79552 () Int)

(declare-fun lambda!79551 () Int)

(assert (=> bs!444334 (not (= lambda!79552 lambda!79551))))

(assert (=> b!2136045 true))

(declare-fun bs!444335 () Bool)

(declare-fun b!2136064 () Bool)

(assert (= bs!444335 (and b!2136064 b!2136075)))

(declare-fun lambda!79553 () Int)

(declare-fun lt!797273 () Int)

(declare-fun lt!797269 () Int)

(assert (=> bs!444335 (= (= lt!797269 lt!797273) (= lambda!79553 lambda!79551))))

(declare-fun bs!444336 () Bool)

(assert (= bs!444336 (and b!2136064 b!2136045)))

(assert (=> bs!444336 (not (= lambda!79553 lambda!79552))))

(assert (=> b!2136064 true))

(declare-fun b!2136042 () Bool)

(declare-fun e!1363470 () Bool)

(declare-fun e!1363483 () Bool)

(assert (=> b!2136042 (= e!1363470 e!1363483)))

(declare-fun b!2136043 () Bool)

(declare-fun res!922849 () Bool)

(declare-fun e!1363461 () Bool)

(assert (=> b!2136043 (=> res!922849 e!1363461)))

(declare-datatypes ((C!11644 0))(
  ( (C!11645 (val!6808 Int)) )
))
(declare-datatypes ((Regex!5749 0))(
  ( (ElementMatch!5749 (c!340349 C!11644)) (Concat!10051 (regOne!12010 Regex!5749) (regTwo!12010 Regex!5749)) (EmptyExpr!5749) (Star!5749 (reg!6078 Regex!5749)) (EmptyLang!5749) (Union!5749 (regOne!12011 Regex!5749) (regTwo!12011 Regex!5749)) )
))
(declare-datatypes ((List!24258 0))(
  ( (Nil!24174) (Cons!24174 (h!29575 Regex!5749) (t!196786 List!24258)) )
))
(declare-datatypes ((Context!2638 0))(
  ( (Context!2639 (exprs!1819 List!24258)) )
))
(declare-datatypes ((List!24259 0))(
  ( (Nil!24175) (Cons!24175 (h!29576 C!11644) (t!196787 List!24259)) )
))
(declare-datatypes ((IArray!15779 0))(
  ( (IArray!15780 (innerList!7947 List!24259)) )
))
(declare-datatypes ((Conc!7887 0))(
  ( (Node!7887 (left!18618 Conc!7887) (right!18948 Conc!7887) (csize!16004 Int) (cheight!8098 Int)) (Leaf!11529 (xs!10829 IArray!15779) (csize!16005 Int)) (Empty!7887) )
))
(declare-datatypes ((BalanceConc!15536 0))(
  ( (BalanceConc!15537 (c!340350 Conc!7887)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!184 0))(
  ( (StackFrame!185 (z!5820 (InoxSet Context!2638)) (from!2706 Int) (lastNullablePos!393 Int) (res!922851 Int) (totalInput!3070 BalanceConc!15536)) )
))
(declare-datatypes ((List!24260 0))(
  ( (Nil!24176) (Cons!24176 (h!29577 StackFrame!184) (t!196788 List!24260)) )
))
(declare-fun lt!797268 () List!24260)

(declare-fun forall!4935 (List!24260 Int) Bool)

(assert (=> b!2136043 (= res!922849 (not (forall!4935 lt!797268 lambda!79553)))))

(declare-fun b!2136044 () Bool)

(declare-fun res!922846 () Bool)

(assert (=> b!2136044 (=> res!922846 e!1363461)))

(assert (=> b!2136044 (= res!922846 (not (forall!4935 lt!797268 lambda!79552)))))

(declare-fun res!922843 () Bool)

(declare-fun e!1363482 () Bool)

(assert (=> b!2136045 (=> (not res!922843) (not e!1363482))))

(declare-fun stack!8 () List!24260)

(assert (=> b!2136045 (= res!922843 (forall!4935 stack!8 lambda!79552))))

(declare-fun b!2136046 () Bool)

(declare-fun e!1363459 () Int)

(declare-fun lastNullablePos!123 () Int)

(assert (=> b!2136046 (= e!1363459 lastNullablePos!123)))

(declare-fun b!2136047 () Bool)

(declare-fun e!1363485 () Bool)

(declare-fun tp!658621 () Bool)

(assert (=> b!2136047 (= e!1363485 tp!658621)))

(declare-fun b!2136048 () Bool)

(declare-fun res!922835 () Bool)

(declare-fun e!1363479 () Bool)

(assert (=> b!2136048 (=> (not res!922835) (not e!1363479))))

(declare-fun e!1363493 () Bool)

(assert (=> b!2136048 (= res!922835 e!1363493)))

(declare-fun res!922834 () Bool)

(assert (=> b!2136048 (=> res!922834 e!1363493)))

(declare-fun z!3839 () (InoxSet Context!2638))

(declare-fun nullableZipper!122 ((InoxSet Context!2638)) Bool)

(assert (=> b!2136048 (= res!922834 (not (nullableZipper!122 z!3839)))))

(declare-fun b!2136049 () Bool)

(declare-fun res!922839 () Bool)

(assert (=> b!2136049 (=> (not res!922839) (not e!1363479))))

(declare-datatypes ((tuple3!3288 0))(
  ( (tuple3!3289 (_1!14097 Regex!5749) (_2!14097 Context!2638) (_3!2114 C!11644)) )
))
(declare-datatypes ((tuple2!23966 0))(
  ( (tuple2!23967 (_1!14098 tuple3!3288) (_2!14098 (InoxSet Context!2638))) )
))
(declare-datatypes ((List!24261 0))(
  ( (Nil!24177) (Cons!24177 (h!29578 tuple2!23966) (t!196789 List!24261)) )
))
(declare-datatypes ((Hashable!2596 0))(
  ( (HashableExt!2595 (__x!16222 Int)) )
))
(declare-datatypes ((array!9081 0))(
  ( (array!9082 (arr!4052 (Array (_ BitVec 32) (_ BitVec 64))) (size!18908 (_ BitVec 32))) )
))
(declare-datatypes ((array!9083 0))(
  ( (array!9084 (arr!4053 (Array (_ BitVec 32) List!24261)) (size!18909 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5364 0))(
  ( (LongMapFixedSize!5365 (defaultEntry!3047 Int) (mask!6872 (_ BitVec 32)) (extraKeys!2930 (_ BitVec 32)) (zeroValue!2940 List!24261) (minValue!2940 List!24261) (_size!5415 (_ BitVec 32)) (_keys!2979 array!9081) (_values!2962 array!9083) (_vacant!2743 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10553 0))(
  ( (Cell!10554 (v!28742 LongMapFixedSize!5364)) )
))
(declare-datatypes ((MutLongMap!2682 0))(
  ( (LongMap!2682 (underlying!5559 Cell!10553)) (MutLongMapExt!2681 (__x!16223 Int)) )
))
(declare-datatypes ((Cell!10555 0))(
  ( (Cell!10556 (v!28743 MutLongMap!2682)) )
))
(declare-datatypes ((MutableMap!2596 0))(
  ( (MutableMapExt!2595 (__x!16224 Int)) (HashMap!2596 (underlying!5560 Cell!10555) (hashF!4519 Hashable!2596) (_size!5416 (_ BitVec 32)) (defaultValue!2758 Int)) )
))
(declare-datatypes ((CacheDown!1778 0))(
  ( (CacheDown!1779 (cache!2977 MutableMap!2596)) )
))
(declare-fun cacheDown!1098 () CacheDown!1778)

(declare-fun valid!2099 (CacheDown!1778) Bool)

(assert (=> b!2136049 (= res!922839 (valid!2099 cacheDown!1098))))

(declare-fun b!2136050 () Bool)

(declare-fun e!1363465 () Bool)

(declare-fun tp!658638 () Bool)

(declare-fun inv!31838 (Conc!7887) Bool)

(assert (=> b!2136050 (= e!1363465 (and (inv!31838 (c!340350 (totalInput!3070 (h!29577 stack!8)))) tp!658638))))

(declare-fun mapIsEmpty!12844 () Bool)

(declare-fun mapRes!12846 () Bool)

(assert (=> mapIsEmpty!12844 mapRes!12846))

(declare-fun mapNonEmpty!12844 () Bool)

(declare-fun mapRes!12844 () Bool)

(declare-fun tp!658640 () Bool)

(declare-fun tp!658626 () Bool)

(assert (=> mapNonEmpty!12844 (= mapRes!12844 (and tp!658640 tp!658626))))

(declare-fun mapValue!12844 () List!24261)

(declare-fun mapKey!12844 () (_ BitVec 32))

(declare-fun mapRest!12844 () (Array (_ BitVec 32) List!24261))

(assert (=> mapNonEmpty!12844 (= (arr!4053 (_values!2962 (v!28742 (underlying!5559 (v!28743 (underlying!5560 (cache!2977 cacheDown!1098))))))) (store mapRest!12844 mapKey!12844 mapValue!12844))))

(declare-fun mapIsEmpty!12845 () Bool)

(assert (=> mapIsEmpty!12845 mapRes!12844))

(declare-fun b!2136051 () Bool)

(declare-fun res!922850 () Bool)

(assert (=> b!2136051 (=> (not res!922850) (not e!1363479))))

(declare-datatypes ((tuple3!3290 0))(
  ( (tuple3!3291 (_1!14099 (InoxSet Context!2638)) (_2!14099 Int) (_3!2115 Int)) )
))
(declare-datatypes ((tuple2!23968 0))(
  ( (tuple2!23969 (_1!14100 tuple3!3290) (_2!14100 Int)) )
))
(declare-datatypes ((List!24262 0))(
  ( (Nil!24178) (Cons!24178 (h!29579 tuple2!23968) (t!196790 List!24262)) )
))
(declare-datatypes ((array!9085 0))(
  ( (array!9086 (arr!4054 (Array (_ BitVec 32) List!24262)) (size!18910 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5366 0))(
  ( (LongMapFixedSize!5367 (defaultEntry!3048 Int) (mask!6873 (_ BitVec 32)) (extraKeys!2931 (_ BitVec 32)) (zeroValue!2941 List!24262) (minValue!2941 List!24262) (_size!5417 (_ BitVec 32)) (_keys!2980 array!9081) (_values!2963 array!9085) (_vacant!2744 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10557 0))(
  ( (Cell!10558 (v!28744 LongMapFixedSize!5366)) )
))
(declare-datatypes ((MutLongMap!2683 0))(
  ( (LongMap!2683 (underlying!5561 Cell!10557)) (MutLongMapExt!2682 (__x!16225 Int)) )
))
(declare-datatypes ((Cell!10559 0))(
  ( (Cell!10560 (v!28745 MutLongMap!2683)) )
))
(declare-datatypes ((Hashable!2597 0))(
  ( (HashableExt!2596 (__x!16226 Int)) )
))
(declare-datatypes ((MutableMap!2597 0))(
  ( (MutableMapExt!2596 (__x!16227 Int)) (HashMap!2597 (underlying!5562 Cell!10559) (hashF!4520 Hashable!2597) (_size!5418 (_ BitVec 32)) (defaultValue!2759 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!742 0))(
  ( (CacheFurthestNullable!743 (cache!2978 MutableMap!2597) (totalInput!3071 BalanceConc!15536)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!742)

(declare-fun totalInput!851 () BalanceConc!15536)

(assert (=> b!2136051 (= res!922850 (= (totalInput!3071 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2136052 () Bool)

(declare-fun e!1363473 () Bool)

(declare-fun tp!658618 () Bool)

(assert (=> b!2136052 (= e!1363473 (and tp!658618 mapRes!12846))))

(declare-fun condMapEmpty!12844 () Bool)

(declare-datatypes ((tuple2!23970 0))(
  ( (tuple2!23971 (_1!14101 Context!2638) (_2!14101 C!11644)) )
))
(declare-datatypes ((tuple2!23972 0))(
  ( (tuple2!23973 (_1!14102 tuple2!23970) (_2!14102 (InoxSet Context!2638))) )
))
(declare-datatypes ((List!24263 0))(
  ( (Nil!24179) (Cons!24179 (h!29580 tuple2!23972) (t!196791 List!24263)) )
))
(declare-datatypes ((array!9087 0))(
  ( (array!9088 (arr!4055 (Array (_ BitVec 32) List!24263)) (size!18911 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5368 0))(
  ( (LongMapFixedSize!5369 (defaultEntry!3049 Int) (mask!6874 (_ BitVec 32)) (extraKeys!2932 (_ BitVec 32)) (zeroValue!2942 List!24263) (minValue!2942 List!24263) (_size!5419 (_ BitVec 32)) (_keys!2981 array!9081) (_values!2964 array!9087) (_vacant!2745 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10561 0))(
  ( (Cell!10562 (v!28746 LongMapFixedSize!5368)) )
))
(declare-datatypes ((MutLongMap!2684 0))(
  ( (LongMap!2684 (underlying!5563 Cell!10561)) (MutLongMapExt!2683 (__x!16228 Int)) )
))
(declare-datatypes ((Cell!10563 0))(
  ( (Cell!10564 (v!28747 MutLongMap!2684)) )
))
(declare-datatypes ((Hashable!2598 0))(
  ( (HashableExt!2597 (__x!16229 Int)) )
))
(declare-datatypes ((MutableMap!2598 0))(
  ( (MutableMapExt!2597 (__x!16230 Int)) (HashMap!2598 (underlying!5564 Cell!10563) (hashF!4521 Hashable!2598) (_size!5420 (_ BitVec 32)) (defaultValue!2760 Int)) )
))
(declare-datatypes ((CacheUp!1796 0))(
  ( (CacheUp!1797 (cache!2979 MutableMap!2598)) )
))
(declare-fun cacheUp!979 () CacheUp!1796)

(declare-fun mapDefault!12844 () List!24263)

(assert (=> b!2136052 (= condMapEmpty!12844 (= (arr!4055 (_values!2964 (v!28746 (underlying!5563 (v!28747 (underlying!5564 (cache!2979 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24263)) mapDefault!12844)))))

(declare-fun b!2136053 () Bool)

(declare-fun e!1363471 () Bool)

(declare-fun e!1363495 () Bool)

(assert (=> b!2136053 (= e!1363471 e!1363495)))

(declare-fun b!2136054 () Bool)

(declare-fun res!922841 () Bool)

(assert (=> b!2136054 (=> (not res!922841) (not e!1363479))))

(declare-fun valid!2100 (CacheUp!1796) Bool)

(assert (=> b!2136054 (= res!922841 (valid!2100 cacheUp!979))))

(declare-fun b!2136055 () Bool)

(declare-fun e!1363462 () Bool)

(declare-fun e!1363467 () Bool)

(assert (=> b!2136055 (= e!1363462 e!1363467)))

(declare-fun b!2136056 () Bool)

(declare-fun e!1363466 () Bool)

(declare-fun e!1363481 () Bool)

(assert (=> b!2136056 (= e!1363466 e!1363481)))

(declare-fun b!2136057 () Bool)

(declare-fun from!1043 () Int)

(assert (=> b!2136057 (= e!1363459 from!1043)))

(declare-fun b!2136058 () Bool)

(declare-fun res!922838 () Bool)

(assert (=> b!2136058 (=> (not res!922838) (not e!1363479))))

(declare-fun valid!2101 (CacheFurthestNullable!742) Bool)

(assert (=> b!2136058 (= res!922838 (valid!2101 cacheFurthestNullable!114))))

(declare-fun b!2136059 () Bool)

(declare-fun e!1363458 () Bool)

(declare-fun lt!797266 () MutLongMap!2682)

(get-info :version)

(assert (=> b!2136059 (= e!1363458 (and e!1363462 ((_ is LongMap!2682) lt!797266)))))

(assert (=> b!2136059 (= lt!797266 (v!28743 (underlying!5560 (cache!2977 cacheDown!1098))))))

(declare-fun b!2136060 () Bool)

(assert (=> b!2136060 (= e!1363493 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2136061 () Bool)

(declare-fun e!1363460 () Bool)

(assert (=> b!2136061 (= e!1363482 (not e!1363460))))

(declare-fun res!922840 () Bool)

(assert (=> b!2136061 (=> res!922840 e!1363460)))

(declare-datatypes ((Option!4914 0))(
  ( (None!4913) (Some!4913 (v!28748 Int)) )
))
(declare-fun get!7398 (CacheFurthestNullable!742 (InoxSet Context!2638) Int Int) Option!4914)

(assert (=> b!2136061 (= res!922840 ((_ is Some!4913) (get!7398 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2136061 (forall!4935 stack!8 lambda!79551)))

(declare-fun b!2136062 () Bool)

(declare-fun e!1363489 () Bool)

(declare-fun lt!797274 () MutLongMap!2684)

(assert (=> b!2136062 (= e!1363489 (and e!1363466 ((_ is LongMap!2684) lt!797274)))))

(assert (=> b!2136062 (= lt!797274 (v!28747 (underlying!5564 (cache!2979 cacheUp!979))))))

(declare-fun e!1363476 () Bool)

(declare-fun e!1363494 () Bool)

(assert (=> b!2136063 (= e!1363476 (and e!1363494 tp!658620))))

(declare-fun e!1363490 () Bool)

(assert (=> b!2136064 (= e!1363490 e!1363461)))

(declare-fun res!922842 () Bool)

(assert (=> b!2136064 (=> res!922842 e!1363461)))

(assert (=> b!2136064 (= res!922842 (not (forall!4935 stack!8 lambda!79553)))))

(assert (=> b!2136064 (forall!4935 stack!8 lambda!79553)))

(declare-datatypes ((Unit!37655 0))(
  ( (Unit!37656) )
))
(declare-fun lt!797271 () Unit!37655)

(declare-fun lemmaStackPreservesForEqualRes!14 (List!24260 Int Int) Unit!37655)

(assert (=> b!2136064 (= lt!797271 (lemmaStackPreservesForEqualRes!14 stack!8 lt!797273 lt!797269))))

(assert (=> b!2136064 (forall!4935 stack!8 lambda!79551)))

(assert (=> b!2136065 (= e!1363483 (and e!1363458 tp!658624))))

(declare-fun mapIsEmpty!12846 () Bool)

(declare-fun mapRes!12845 () Bool)

(assert (=> mapIsEmpty!12846 mapRes!12845))

(declare-fun b!2136066 () Bool)

(declare-fun res!922844 () Bool)

(assert (=> b!2136066 (=> res!922844 e!1363460)))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2136066 (= res!922844 (= from!1043 totalInputSize!296))))

(declare-fun b!2136067 () Bool)

(declare-fun e!1363475 () Bool)

(declare-fun e!1363477 () Bool)

(assert (=> b!2136067 (= e!1363475 e!1363477)))

(declare-fun e!1363463 () Bool)

(declare-fun tp!658614 () Bool)

(declare-fun setNonEmpty!15960 () Bool)

(declare-fun setElem!15960 () Context!2638)

(declare-fun setRes!15961 () Bool)

(declare-fun inv!31839 (Context!2638) Bool)

(assert (=> setNonEmpty!15960 (= setRes!15961 (and tp!658614 (inv!31839 setElem!15960) e!1363463))))

(declare-fun setRest!15960 () (InoxSet Context!2638))

(assert (=> setNonEmpty!15960 (= z!3839 ((_ map or) (store ((as const (Array Context!2638 Bool)) false) setElem!15960 true) setRest!15960))))

(declare-fun b!2136068 () Bool)

(declare-fun e!1363478 () Bool)

(declare-fun tp!658633 () Bool)

(assert (=> b!2136068 (= e!1363478 (and tp!658633 mapRes!12844))))

(declare-fun condMapEmpty!12846 () Bool)

(declare-fun mapDefault!12846 () List!24261)

(assert (=> b!2136068 (= condMapEmpty!12846 (= (arr!4053 (_values!2962 (v!28742 (underlying!5559 (v!28743 (underlying!5560 (cache!2977 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24261)) mapDefault!12846)))))

(declare-fun e!1363488 () Bool)

(declare-fun e!1363491 () Bool)

(declare-fun b!2136069 () Bool)

(declare-fun inv!31840 (BalanceConc!15536) Bool)

(assert (=> b!2136069 (= e!1363491 (and e!1363476 (inv!31840 (totalInput!3071 cacheFurthestNullable!114)) e!1363488))))

(declare-fun setRes!15960 () Bool)

(declare-fun setNonEmpty!15961 () Bool)

(declare-fun tp!658636 () Bool)

(declare-fun setElem!15961 () Context!2638)

(assert (=> setNonEmpty!15961 (= setRes!15960 (and tp!658636 (inv!31839 setElem!15961) e!1363485))))

(declare-fun setRest!15961 () (InoxSet Context!2638))

(assert (=> setNonEmpty!15961 (= (z!5820 (h!29577 stack!8)) ((_ map or) (store ((as const (Array Context!2638 Bool)) false) setElem!15961 true) setRest!15961))))

(declare-fun b!2136070 () Bool)

(declare-fun tp!658617 () Bool)

(assert (=> b!2136070 (= e!1363463 tp!658617)))

(declare-fun b!2136071 () Bool)

(declare-fun e!1363469 () Bool)

(assert (=> b!2136071 (= e!1363481 e!1363469)))

(declare-fun b!2136072 () Bool)

(declare-fun e!1363487 () Bool)

(declare-fun tp!658630 () Bool)

(assert (=> b!2136072 (= e!1363487 (and tp!658630 mapRes!12845))))

(declare-fun condMapEmpty!12845 () Bool)

(declare-fun mapDefault!12845 () List!24262)

(assert (=> b!2136072 (= condMapEmpty!12845 (= (arr!4054 (_values!2963 (v!28744 (underlying!5561 (v!28745 (underlying!5562 (cache!2978 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24262)) mapDefault!12845)))))

(declare-fun b!2136073 () Bool)

(declare-fun lt!797267 () MutLongMap!2683)

(assert (=> b!2136073 (= e!1363494 (and e!1363471 ((_ is LongMap!2683) lt!797267)))))

(assert (=> b!2136073 (= lt!797267 (v!28745 (underlying!5562 (cache!2978 cacheFurthestNullable!114))))))

(declare-fun tp!658616 () Bool)

(declare-fun e!1363484 () Bool)

(declare-fun tp!658619 () Bool)

(declare-fun array_inv!2897 (array!9081) Bool)

(declare-fun array_inv!2898 (array!9083) Bool)

(assert (=> b!2136074 (= e!1363484 (and tp!658635 tp!658619 tp!658616 (array_inv!2897 (_keys!2979 (v!28742 (underlying!5559 (v!28743 (underlying!5560 (cache!2977 cacheDown!1098))))))) (array_inv!2898 (_values!2962 (v!28742 (underlying!5559 (v!28743 (underlying!5560 (cache!2977 cacheDown!1098))))))) e!1363478))))

(assert (=> b!2136075 (= e!1363479 e!1363482)))

(declare-fun res!922845 () Bool)

(assert (=> b!2136075 (=> (not res!922845) (not e!1363482))))

(assert (=> b!2136075 (= res!922845 (forall!4935 stack!8 lambda!79551))))

(declare-fun lt!797270 () Int)

(declare-fun furthestNullablePosition!57 ((InoxSet Context!2638) Int BalanceConc!15536 Int Int) Int)

(assert (=> b!2136075 (= lt!797273 (furthestNullablePosition!57 z!3839 from!1043 totalInput!851 lt!797270 lastNullablePos!123))))

(declare-fun b!2136076 () Bool)

(declare-fun e!1363474 () Bool)

(assert (=> b!2136076 (= e!1363495 e!1363474)))

(declare-fun tp!658642 () Bool)

(declare-fun tp!658641 () Bool)

(declare-fun array_inv!2899 (array!9087) Bool)

(assert (=> b!2136077 (= e!1363469 (and tp!658628 tp!658642 tp!658641 (array_inv!2897 (_keys!2981 (v!28746 (underlying!5563 (v!28747 (underlying!5564 (cache!2979 cacheUp!979))))))) (array_inv!2899 (_values!2964 (v!28746 (underlying!5563 (v!28747 (underlying!5564 (cache!2979 cacheUp!979))))))) e!1363473))))

(declare-fun res!922848 () Bool)

(declare-fun e!1363457 () Bool)

(assert (=> start!207604 (=> (not res!922848) (not e!1363457))))

(assert (=> start!207604 (= res!922848 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207604 e!1363457))

(declare-fun inv!31841 (CacheFurthestNullable!742) Bool)

(assert (=> start!207604 (and (inv!31841 cacheFurthestNullable!114) e!1363491)))

(assert (=> start!207604 true))

(declare-fun inv!31842 (CacheDown!1778) Bool)

(assert (=> start!207604 (and (inv!31842 cacheDown!1098) e!1363470)))

(declare-fun inv!31843 (CacheUp!1796) Bool)

(assert (=> start!207604 (and (inv!31843 cacheUp!979) e!1363475)))

(declare-fun condSetEmpty!15961 () Bool)

(assert (=> start!207604 (= condSetEmpty!15961 (= z!3839 ((as const (Array Context!2638 Bool)) false)))))

(assert (=> start!207604 setRes!15961))

(declare-fun e!1363480 () Bool)

(assert (=> start!207604 (and (inv!31840 totalInput!851) e!1363480)))

(declare-fun e!1363472 () Bool)

(assert (=> start!207604 e!1363472))

(declare-fun e!1363492 () Bool)

(declare-fun b!2136078 () Bool)

(assert (=> b!2136078 (= e!1363492 (and setRes!15960 (inv!31840 (totalInput!3070 (h!29577 stack!8))) e!1363465))))

(declare-fun condSetEmpty!15960 () Bool)

(assert (=> b!2136078 (= condSetEmpty!15960 (= (z!5820 (h!29577 stack!8)) ((as const (Array Context!2638 Bool)) false)))))

(declare-fun tp!658629 () Bool)

(declare-fun tp!658637 () Bool)

(declare-fun array_inv!2900 (array!9085) Bool)

(assert (=> b!2136079 (= e!1363474 (and tp!658632 tp!658629 tp!658637 (array_inv!2897 (_keys!2980 (v!28744 (underlying!5561 (v!28745 (underlying!5562 (cache!2978 cacheFurthestNullable!114))))))) (array_inv!2900 (_values!2963 (v!28744 (underlying!5561 (v!28745 (underlying!5562 (cache!2978 cacheFurthestNullable!114))))))) e!1363487))))

(declare-fun setIsEmpty!15960 () Bool)

(assert (=> setIsEmpty!15960 setRes!15961))

(declare-fun tp!658634 () Bool)

(declare-fun b!2136080 () Bool)

(declare-fun inv!31844 (StackFrame!184) Bool)

(assert (=> b!2136080 (= e!1363472 (and (inv!31844 (h!29577 stack!8)) e!1363492 tp!658634))))

(declare-fun b!2136081 () Bool)

(declare-fun tp!658625 () Bool)

(assert (=> b!2136081 (= e!1363480 (and (inv!31838 (c!340350 totalInput!851)) tp!658625))))

(declare-fun mapNonEmpty!12845 () Bool)

(declare-fun tp!658623 () Bool)

(declare-fun tp!658622 () Bool)

(assert (=> mapNonEmpty!12845 (= mapRes!12846 (and tp!658623 tp!658622))))

(declare-fun mapValue!12845 () List!24263)

(declare-fun mapKey!12845 () (_ BitVec 32))

(declare-fun mapRest!12846 () (Array (_ BitVec 32) List!24263))

(assert (=> mapNonEmpty!12845 (= (arr!4055 (_values!2964 (v!28746 (underlying!5563 (v!28747 (underlying!5564 (cache!2979 cacheUp!979))))))) (store mapRest!12846 mapKey!12845 mapValue!12845))))

(declare-fun b!2136082 () Bool)

(assert (=> b!2136082 (= e!1363457 e!1363479)))

(declare-fun res!922847 () Bool)

(assert (=> b!2136082 (=> (not res!922847) (not e!1363479))))

(assert (=> b!2136082 (= res!922847 (and (= totalInputSize!296 lt!797270) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18912 (BalanceConc!15536) Int)

(assert (=> b!2136082 (= lt!797270 (size!18912 totalInput!851))))

(declare-fun b!2136083 () Bool)

(assert (=> b!2136083 (= e!1363460 e!1363490)))

(declare-fun res!922836 () Bool)

(assert (=> b!2136083 (=> res!922836 e!1363490)))

(assert (=> b!2136083 (= res!922836 (not (= lt!797273 lt!797269)))))

(declare-datatypes ((tuple3!3292 0))(
  ( (tuple3!3293 (_1!14103 (InoxSet Context!2638)) (_2!14103 CacheUp!1796) (_3!2116 CacheDown!1778)) )
))
(declare-fun lt!797265 () tuple3!3292)

(declare-fun lt!797272 () Int)

(assert (=> b!2136083 (= lt!797269 (furthestNullablePosition!57 (_1!14103 lt!797265) (+ 1 from!1043) totalInput!851 lt!797270 lt!797272))))

(assert (=> b!2136083 (= lt!797268 (Cons!24176 (StackFrame!185 z!3839 from!1043 lastNullablePos!123 lt!797273 totalInput!851) stack!8))))

(assert (=> b!2136083 (= lt!797272 e!1363459)))

(declare-fun c!340348 () Bool)

(assert (=> b!2136083 (= c!340348 (nullableZipper!122 (_1!14103 lt!797265)))))

(declare-fun derivationStepZipperMem!44 ((InoxSet Context!2638) C!11644 CacheUp!1796 CacheDown!1778) tuple3!3292)

(declare-fun apply!5943 (BalanceConc!15536 Int) C!11644)

(assert (=> b!2136083 (= lt!797265 (derivationStepZipperMem!44 z!3839 (apply!5943 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2136084 () Bool)

(declare-fun tp!658639 () Bool)

(assert (=> b!2136084 (= e!1363488 (and (inv!31838 (c!340350 (totalInput!3071 cacheFurthestNullable!114))) tp!658639))))

(declare-fun b!2136085 () Bool)

(declare-fun res!922837 () Bool)

(assert (=> b!2136085 (=> res!922837 e!1363460)))

(declare-fun lostCauseZipper!98 ((InoxSet Context!2638)) Bool)

(assert (=> b!2136085 (= res!922837 (lostCauseZipper!98 z!3839))))

(assert (=> b!2136086 (= e!1363477 (and e!1363489 tp!658627))))

(declare-fun mapNonEmpty!12846 () Bool)

(declare-fun tp!658615 () Bool)

(declare-fun tp!658631 () Bool)

(assert (=> mapNonEmpty!12846 (= mapRes!12845 (and tp!658615 tp!658631))))

(declare-fun mapKey!12846 () (_ BitVec 32))

(declare-fun mapRest!12845 () (Array (_ BitVec 32) List!24262))

(declare-fun mapValue!12846 () List!24262)

(assert (=> mapNonEmpty!12846 (= (arr!4054 (_values!2963 (v!28744 (underlying!5561 (v!28745 (underlying!5562 (cache!2978 cacheFurthestNullable!114))))))) (store mapRest!12845 mapKey!12846 mapValue!12846))))

(declare-fun setIsEmpty!15961 () Bool)

(assert (=> setIsEmpty!15961 setRes!15960))

(declare-fun b!2136087 () Bool)

(assert (=> b!2136087 (= e!1363467 e!1363484)))

(declare-fun b!2136088 () Bool)

(assert (=> b!2136088 (= e!1363461 (or (< (+ 1 from!1043) 0) (> (+ 1 from!1043) totalInputSize!296) (and (>= lt!797272 (- 1)) (< lt!797272 (+ 1 from!1043)))))))

(assert (= (and start!207604 res!922848) b!2136082))

(assert (= (and b!2136082 res!922847) b!2136048))

(assert (= (and b!2136048 (not res!922834)) b!2136060))

(assert (= (and b!2136048 res!922835) b!2136054))

(assert (= (and b!2136054 res!922841) b!2136049))

(assert (= (and b!2136049 res!922839) b!2136058))

(assert (= (and b!2136058 res!922838) b!2136051))

(assert (= (and b!2136051 res!922850) b!2136075))

(assert (= (and b!2136075 res!922845) b!2136045))

(assert (= (and b!2136045 res!922843) b!2136061))

(assert (= (and b!2136061 (not res!922840)) b!2136066))

(assert (= (and b!2136066 (not res!922844)) b!2136085))

(assert (= (and b!2136085 (not res!922837)) b!2136083))

(assert (= (and b!2136083 c!340348) b!2136057))

(assert (= (and b!2136083 (not c!340348)) b!2136046))

(assert (= (and b!2136083 (not res!922836)) b!2136064))

(assert (= (and b!2136064 (not res!922842)) b!2136043))

(assert (= (and b!2136043 (not res!922849)) b!2136044))

(assert (= (and b!2136044 (not res!922846)) b!2136088))

(assert (= (and b!2136072 condMapEmpty!12845) mapIsEmpty!12846))

(assert (= (and b!2136072 (not condMapEmpty!12845)) mapNonEmpty!12846))

(assert (= b!2136079 b!2136072))

(assert (= b!2136076 b!2136079))

(assert (= b!2136053 b!2136076))

(assert (= (and b!2136073 ((_ is LongMap!2683) (v!28745 (underlying!5562 (cache!2978 cacheFurthestNullable!114))))) b!2136053))

(assert (= b!2136063 b!2136073))

(assert (= (and b!2136069 ((_ is HashMap!2597) (cache!2978 cacheFurthestNullable!114))) b!2136063))

(assert (= b!2136069 b!2136084))

(assert (= start!207604 b!2136069))

(assert (= (and b!2136068 condMapEmpty!12846) mapIsEmpty!12845))

(assert (= (and b!2136068 (not condMapEmpty!12846)) mapNonEmpty!12844))

(assert (= b!2136074 b!2136068))

(assert (= b!2136087 b!2136074))

(assert (= b!2136055 b!2136087))

(assert (= (and b!2136059 ((_ is LongMap!2682) (v!28743 (underlying!5560 (cache!2977 cacheDown!1098))))) b!2136055))

(assert (= b!2136065 b!2136059))

(assert (= (and b!2136042 ((_ is HashMap!2596) (cache!2977 cacheDown!1098))) b!2136065))

(assert (= start!207604 b!2136042))

(assert (= (and b!2136052 condMapEmpty!12844) mapIsEmpty!12844))

(assert (= (and b!2136052 (not condMapEmpty!12844)) mapNonEmpty!12845))

(assert (= b!2136077 b!2136052))

(assert (= b!2136071 b!2136077))

(assert (= b!2136056 b!2136071))

(assert (= (and b!2136062 ((_ is LongMap!2684) (v!28747 (underlying!5564 (cache!2979 cacheUp!979))))) b!2136056))

(assert (= b!2136086 b!2136062))

(assert (= (and b!2136067 ((_ is HashMap!2598) (cache!2979 cacheUp!979))) b!2136086))

(assert (= start!207604 b!2136067))

(assert (= (and start!207604 condSetEmpty!15961) setIsEmpty!15960))

(assert (= (and start!207604 (not condSetEmpty!15961)) setNonEmpty!15960))

(assert (= setNonEmpty!15960 b!2136070))

(assert (= start!207604 b!2136081))

(assert (= (and b!2136078 condSetEmpty!15960) setIsEmpty!15961))

(assert (= (and b!2136078 (not condSetEmpty!15960)) setNonEmpty!15961))

(assert (= setNonEmpty!15961 b!2136047))

(assert (= b!2136078 b!2136050))

(assert (= b!2136080 b!2136078))

(assert (= (and start!207604 ((_ is Cons!24176) stack!8)) b!2136080))

(declare-fun m!2583514 () Bool)

(assert (=> b!2136082 m!2583514))

(declare-fun m!2583516 () Bool)

(assert (=> b!2136077 m!2583516))

(declare-fun m!2583518 () Bool)

(assert (=> b!2136077 m!2583518))

(declare-fun m!2583520 () Bool)

(assert (=> b!2136079 m!2583520))

(declare-fun m!2583522 () Bool)

(assert (=> b!2136079 m!2583522))

(declare-fun m!2583524 () Bool)

(assert (=> b!2136043 m!2583524))

(declare-fun m!2583526 () Bool)

(assert (=> mapNonEmpty!12846 m!2583526))

(declare-fun m!2583528 () Bool)

(assert (=> b!2136058 m!2583528))

(declare-fun m!2583530 () Bool)

(assert (=> b!2136048 m!2583530))

(declare-fun m!2583532 () Bool)

(assert (=> mapNonEmpty!12845 m!2583532))

(declare-fun m!2583534 () Bool)

(assert (=> start!207604 m!2583534))

(declare-fun m!2583536 () Bool)

(assert (=> start!207604 m!2583536))

(declare-fun m!2583538 () Bool)

(assert (=> start!207604 m!2583538))

(declare-fun m!2583540 () Bool)

(assert (=> start!207604 m!2583540))

(declare-fun m!2583542 () Bool)

(assert (=> b!2136049 m!2583542))

(declare-fun m!2583544 () Bool)

(assert (=> b!2136045 m!2583544))

(declare-fun m!2583546 () Bool)

(assert (=> b!2136069 m!2583546))

(declare-fun m!2583548 () Bool)

(assert (=> b!2136084 m!2583548))

(declare-fun m!2583550 () Bool)

(assert (=> b!2136061 m!2583550))

(declare-fun m!2583552 () Bool)

(assert (=> b!2136061 m!2583552))

(declare-fun m!2583554 () Bool)

(assert (=> b!2136080 m!2583554))

(declare-fun m!2583556 () Bool)

(assert (=> b!2136054 m!2583556))

(declare-fun m!2583558 () Bool)

(assert (=> mapNonEmpty!12844 m!2583558))

(declare-fun m!2583560 () Bool)

(assert (=> b!2136064 m!2583560))

(assert (=> b!2136064 m!2583560))

(declare-fun m!2583562 () Bool)

(assert (=> b!2136064 m!2583562))

(assert (=> b!2136064 m!2583552))

(declare-fun m!2583564 () Bool)

(assert (=> b!2136074 m!2583564))

(declare-fun m!2583566 () Bool)

(assert (=> b!2136074 m!2583566))

(declare-fun m!2583568 () Bool)

(assert (=> b!2136081 m!2583568))

(declare-fun m!2583570 () Bool)

(assert (=> b!2136083 m!2583570))

(declare-fun m!2583572 () Bool)

(assert (=> b!2136083 m!2583572))

(declare-fun m!2583574 () Bool)

(assert (=> b!2136083 m!2583574))

(assert (=> b!2136083 m!2583574))

(declare-fun m!2583576 () Bool)

(assert (=> b!2136083 m!2583576))

(declare-fun m!2583578 () Bool)

(assert (=> b!2136050 m!2583578))

(declare-fun m!2583580 () Bool)

(assert (=> b!2136044 m!2583580))

(assert (=> b!2136075 m!2583552))

(declare-fun m!2583582 () Bool)

(assert (=> b!2136075 m!2583582))

(declare-fun m!2583584 () Bool)

(assert (=> setNonEmpty!15961 m!2583584))

(declare-fun m!2583586 () Bool)

(assert (=> b!2136078 m!2583586))

(declare-fun m!2583588 () Bool)

(assert (=> b!2136085 m!2583588))

(declare-fun m!2583590 () Bool)

(assert (=> setNonEmpty!15960 m!2583590))

(check-sat (not b!2136044) (not b!2136072) (not b_next!63353) (not b!2136045) (not b_next!63351) (not mapNonEmpty!12844) b_and!172231 (not b!2136047) (not b!2136083) (not b!2136082) (not b_next!63357) (not mapNonEmpty!12846) (not b!2136043) (not b!2136074) (not b!2136068) (not mapNonEmpty!12845) b_and!172229 (not b!2136049) (not b!2136075) (not b!2136084) (not setNonEmpty!15961) (not b!2136061) (not b!2136078) (not b!2136081) (not start!207604) b_and!172235 (not b!2136080) (not b_next!63349) (not b!2136070) (not b_next!63359) (not b!2136058) b_and!172227 (not b!2136050) (not b!2136052) (not b!2136054) (not b!2136085) (not b!2136048) b_and!172233 (not b!2136077) (not setNonEmpty!15960) (not b!2136079) (not b!2136069) b_and!172225 (not b!2136064) (not b_next!63355))
(check-sat (not b_next!63357) b_and!172229 (not b_next!63353) b_and!172235 (not b_next!63349) b_and!172233 (not b_next!63351) b_and!172225 b_and!172231 (not b_next!63355) (not b_next!63359) b_and!172227)
