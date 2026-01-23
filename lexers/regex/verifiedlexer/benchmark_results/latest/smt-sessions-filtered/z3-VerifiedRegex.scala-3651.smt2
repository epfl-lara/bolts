; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207842 () Bool)

(assert start!207842)

(declare-fun b!2140054 () Bool)

(declare-fun b_free!62885 () Bool)

(declare-fun b_next!63589 () Bool)

(assert (=> b!2140054 (= b_free!62885 (not b_next!63589))))

(declare-fun tp!661433 () Bool)

(declare-fun b_and!172465 () Bool)

(assert (=> b!2140054 (= tp!661433 b_and!172465)))

(declare-fun b!2140063 () Bool)

(declare-fun b_free!62887 () Bool)

(declare-fun b_next!63591 () Bool)

(assert (=> b!2140063 (= b_free!62887 (not b_next!63591))))

(declare-fun tp!661436 () Bool)

(declare-fun b_and!172467 () Bool)

(assert (=> b!2140063 (= tp!661436 b_and!172467)))

(declare-fun b!2140084 () Bool)

(declare-fun b_free!62889 () Bool)

(declare-fun b_next!63593 () Bool)

(assert (=> b!2140084 (= b_free!62889 (not b_next!63593))))

(declare-fun tp!661431 () Bool)

(declare-fun b_and!172469 () Bool)

(assert (=> b!2140084 (= tp!661431 b_and!172469)))

(declare-fun b!2140057 () Bool)

(declare-fun b_free!62891 () Bool)

(declare-fun b_next!63595 () Bool)

(assert (=> b!2140057 (= b_free!62891 (not b_next!63595))))

(declare-fun tp!661448 () Bool)

(declare-fun b_and!172471 () Bool)

(assert (=> b!2140057 (= tp!661448 b_and!172471)))

(declare-fun b!2140082 () Bool)

(declare-fun b_free!62893 () Bool)

(declare-fun b_next!63597 () Bool)

(assert (=> b!2140082 (= b_free!62893 (not b_next!63597))))

(declare-fun tp!661432 () Bool)

(declare-fun b_and!172473 () Bool)

(assert (=> b!2140082 (= tp!661432 b_and!172473)))

(declare-fun b!2140064 () Bool)

(declare-fun b_free!62895 () Bool)

(declare-fun b_next!63599 () Bool)

(assert (=> b!2140064 (= b_free!62895 (not b_next!63599))))

(declare-fun tp!661451 () Bool)

(declare-fun b_and!172475 () Bool)

(assert (=> b!2140064 (= tp!661451 b_and!172475)))

(declare-fun b!2140073 () Bool)

(assert (=> b!2140073 true))

(declare-fun bs!445137 () Bool)

(declare-fun b!2140058 () Bool)

(assert (= bs!445137 (and b!2140058 b!2140073)))

(declare-fun lambda!79988 () Int)

(declare-fun lambda!79987 () Int)

(assert (=> bs!445137 (not (= lambda!79988 lambda!79987))))

(assert (=> b!2140058 true))

(declare-fun b!2140045 () Bool)

(declare-fun e!1366670 () Bool)

(declare-fun e!1366696 () Bool)

(declare-datatypes ((C!11684 0))(
  ( (C!11685 (val!6828 Int)) )
))
(declare-datatypes ((Regex!5769 0))(
  ( (ElementMatch!5769 (c!340506 C!11684)) (Concat!10071 (regOne!12050 Regex!5769) (regTwo!12050 Regex!5769)) (EmptyExpr!5769) (Star!5769 (reg!6098 Regex!5769)) (EmptyLang!5769) (Union!5769 (regOne!12051 Regex!5769) (regTwo!12051 Regex!5769)) )
))
(declare-datatypes ((List!24370 0))(
  ( (Nil!24286) (Cons!24286 (h!29687 Regex!5769) (t!196900 List!24370)) )
))
(declare-datatypes ((Context!2678 0))(
  ( (Context!2679 (exprs!1839 List!24370)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3384 0))(
  ( (tuple3!3385 (_1!14214 (InoxSet Context!2678)) (_2!14214 Int) (_3!2162 Int)) )
))
(declare-datatypes ((tuple2!24104 0))(
  ( (tuple2!24105 (_1!14215 tuple3!3384) (_2!14215 Int)) )
))
(declare-datatypes ((List!24371 0))(
  ( (Nil!24287) (Cons!24287 (h!29688 tuple2!24104) (t!196901 List!24371)) )
))
(declare-datatypes ((array!9243 0))(
  ( (array!9244 (arr!4125 (Array (_ BitVec 32) (_ BitVec 64))) (size!19001 (_ BitVec 32))) )
))
(declare-datatypes ((array!9245 0))(
  ( (array!9246 (arr!4126 (Array (_ BitVec 32) List!24371)) (size!19002 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5470 0))(
  ( (LongMapFixedSize!5471 (defaultEntry!3100 Int) (mask!6935 (_ BitVec 32)) (extraKeys!2983 (_ BitVec 32)) (zeroValue!2993 List!24371) (minValue!2993 List!24371) (_size!5521 (_ BitVec 32)) (_keys!3032 array!9243) (_values!3015 array!9245) (_vacant!2796 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10765 0))(
  ( (Cell!10766 (v!28864 LongMapFixedSize!5470)) )
))
(declare-datatypes ((MutLongMap!2735 0))(
  ( (LongMap!2735 (underlying!5665 Cell!10765)) (MutLongMapExt!2734 (__x!16381 Int)) )
))
(declare-fun lt!797963 () MutLongMap!2735)

(get-info :version)

(assert (=> b!2140045 (= e!1366670 (and e!1366696 ((_ is LongMap!2735) lt!797963)))))

(declare-datatypes ((List!24372 0))(
  ( (Nil!24288) (Cons!24288 (h!29689 C!11684) (t!196902 List!24372)) )
))
(declare-datatypes ((IArray!15819 0))(
  ( (IArray!15820 (innerList!7967 List!24372)) )
))
(declare-datatypes ((Conc!7907 0))(
  ( (Node!7907 (left!18688 Conc!7907) (right!19018 Conc!7907) (csize!16044 Int) (cheight!8118 Int)) (Leaf!11559 (xs!10849 IArray!15819) (csize!16045 Int)) (Empty!7907) )
))
(declare-datatypes ((Cell!10767 0))(
  ( (Cell!10768 (v!28865 MutLongMap!2735)) )
))
(declare-datatypes ((Hashable!2649 0))(
  ( (HashableExt!2648 (__x!16382 Int)) )
))
(declare-datatypes ((MutableMap!2649 0))(
  ( (MutableMapExt!2648 (__x!16383 Int)) (HashMap!2649 (underlying!5666 Cell!10767) (hashF!4572 Hashable!2649) (_size!5522 (_ BitVec 32)) (defaultValue!2811 Int)) )
))
(declare-datatypes ((BalanceConc!15576 0))(
  ( (BalanceConc!15577 (c!340507 Conc!7907)) )
))
(declare-datatypes ((CacheFurthestNullable!782 0))(
  ( (CacheFurthestNullable!783 (cache!3030 MutableMap!2649) (totalInput!3111 BalanceConc!15576)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!782)

(assert (=> b!2140045 (= lt!797963 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))))

(declare-fun b!2140046 () Bool)

(declare-fun e!1366661 () Bool)

(declare-fun tp!661437 () Bool)

(assert (=> b!2140046 (= e!1366661 tp!661437)))

(declare-fun b!2140047 () Bool)

(declare-fun e!1366693 () Bool)

(declare-fun e!1366672 () Bool)

(assert (=> b!2140047 (= e!1366693 e!1366672)))

(declare-fun res!924134 () Bool)

(assert (=> b!2140047 (=> (not res!924134) (not e!1366672))))

(declare-fun totalInputSize!296 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun from!1043 () Int)

(declare-fun lt!797960 () Int)

(assert (=> b!2140047 (= res!924134 (and (= totalInputSize!296 lt!797960) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun totalInput!851 () BalanceConc!15576)

(declare-fun size!19003 (BalanceConc!15576) Int)

(assert (=> b!2140047 (= lt!797960 (size!19003 totalInput!851))))

(declare-fun b!2140048 () Bool)

(declare-fun e!1366692 () Bool)

(declare-fun tp!661453 () Bool)

(declare-fun inv!31971 (Conc!7907) Bool)

(assert (=> b!2140048 (= e!1366692 (and (inv!31971 (c!340507 totalInput!851)) tp!661453))))

(declare-fun mapIsEmpty!13063 () Bool)

(declare-fun mapRes!13065 () Bool)

(assert (=> mapIsEmpty!13063 mapRes!13065))

(declare-fun b!2140049 () Bool)

(declare-fun lt!797965 () Int)

(declare-datatypes ((tuple3!3386 0))(
  ( (tuple3!3387 (_1!14216 Regex!5769) (_2!14216 Context!2678) (_3!2163 C!11684)) )
))
(declare-datatypes ((tuple2!24106 0))(
  ( (tuple2!24107 (_1!14217 tuple3!3386) (_2!14217 (InoxSet Context!2678))) )
))
(declare-datatypes ((List!24373 0))(
  ( (Nil!24289) (Cons!24289 (h!29690 tuple2!24106) (t!196903 List!24373)) )
))
(declare-datatypes ((tuple2!24108 0))(
  ( (tuple2!24109 (_1!14218 Context!2678) (_2!14218 C!11684)) )
))
(declare-datatypes ((tuple2!24110 0))(
  ( (tuple2!24111 (_1!14219 tuple2!24108) (_2!14219 (InoxSet Context!2678))) )
))
(declare-datatypes ((List!24374 0))(
  ( (Nil!24290) (Cons!24290 (h!29691 tuple2!24110) (t!196904 List!24374)) )
))
(declare-datatypes ((Hashable!2650 0))(
  ( (HashableExt!2649 (__x!16384 Int)) )
))
(declare-datatypes ((Hashable!2651 0))(
  ( (HashableExt!2650 (__x!16385 Int)) )
))
(declare-datatypes ((array!9247 0))(
  ( (array!9248 (arr!4127 (Array (_ BitVec 32) List!24374)) (size!19004 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5472 0))(
  ( (LongMapFixedSize!5473 (defaultEntry!3101 Int) (mask!6936 (_ BitVec 32)) (extraKeys!2984 (_ BitVec 32)) (zeroValue!2994 List!24374) (minValue!2994 List!24374) (_size!5523 (_ BitVec 32)) (_keys!3033 array!9243) (_values!3016 array!9247) (_vacant!2797 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10769 0))(
  ( (Cell!10770 (v!28866 LongMapFixedSize!5472)) )
))
(declare-datatypes ((MutLongMap!2736 0))(
  ( (LongMap!2736 (underlying!5667 Cell!10769)) (MutLongMapExt!2735 (__x!16386 Int)) )
))
(declare-datatypes ((Cell!10771 0))(
  ( (Cell!10772 (v!28867 MutLongMap!2736)) )
))
(declare-datatypes ((MutableMap!2650 0))(
  ( (MutableMapExt!2649 (__x!16387 Int)) (HashMap!2650 (underlying!5668 Cell!10771) (hashF!4573 Hashable!2650) (_size!5524 (_ BitVec 32)) (defaultValue!2812 Int)) )
))
(declare-datatypes ((CacheUp!1826 0))(
  ( (CacheUp!1827 (cache!3031 MutableMap!2650)) )
))
(declare-datatypes ((array!9249 0))(
  ( (array!9250 (arr!4128 (Array (_ BitVec 32) List!24373)) (size!19005 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5474 0))(
  ( (LongMapFixedSize!5475 (defaultEntry!3102 Int) (mask!6937 (_ BitVec 32)) (extraKeys!2985 (_ BitVec 32)) (zeroValue!2995 List!24373) (minValue!2995 List!24373) (_size!5525 (_ BitVec 32)) (_keys!3034 array!9243) (_values!3017 array!9249) (_vacant!2798 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10773 0))(
  ( (Cell!10774 (v!28868 LongMapFixedSize!5474)) )
))
(declare-datatypes ((MutLongMap!2737 0))(
  ( (LongMap!2737 (underlying!5669 Cell!10773)) (MutLongMapExt!2736 (__x!16388 Int)) )
))
(declare-datatypes ((Cell!10775 0))(
  ( (Cell!10776 (v!28869 MutLongMap!2737)) )
))
(declare-datatypes ((MutableMap!2651 0))(
  ( (MutableMapExt!2650 (__x!16389 Int)) (HashMap!2651 (underlying!5670 Cell!10775) (hashF!4574 Hashable!2651) (_size!5526 (_ BitVec 32)) (defaultValue!2813 Int)) )
))
(declare-datatypes ((CacheDown!1814 0))(
  ( (CacheDown!1815 (cache!3032 MutableMap!2651)) )
))
(declare-datatypes ((tuple3!3388 0))(
  ( (tuple3!3389 (_1!14220 (InoxSet Context!2678)) (_2!14220 CacheUp!1826) (_3!2164 CacheDown!1814)) )
))
(declare-fun lt!797964 () tuple3!3388)

(declare-fun e!1366679 () Bool)

(declare-fun e!1366697 () Int)

(declare-fun furthestNullablePosition!71 ((InoxSet Context!2678) Int BalanceConc!15576 Int Int) Int)

(assert (=> b!2140049 (= e!1366679 (= lt!797965 (furthestNullablePosition!71 (_1!14220 lt!797964) (+ 1 from!1043) totalInput!851 lt!797960 e!1366697)))))

(declare-fun c!340505 () Bool)

(declare-fun nullableZipper!134 ((InoxSet Context!2678)) Bool)

(assert (=> b!2140049 (= c!340505 (nullableZipper!134 (_1!14220 lt!797964)))))

(declare-fun cacheDown!1098 () CacheDown!1814)

(declare-fun z!3839 () (InoxSet Context!2678))

(declare-fun cacheUp!979 () CacheUp!1826)

(declare-fun derivationStepZipperMem!53 ((InoxSet Context!2678) C!11684 CacheUp!1826 CacheDown!1814) tuple3!3388)

(declare-fun apply!5959 (BalanceConc!15576 Int) C!11684)

(assert (=> b!2140049 (= lt!797964 (derivationStepZipperMem!53 z!3839 (apply!5959 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2140051 () Bool)

(declare-fun res!924129 () Bool)

(assert (=> b!2140051 (=> (not res!924129) (not e!1366672))))

(declare-fun valid!2138 (CacheDown!1814) Bool)

(assert (=> b!2140051 (= res!924129 (valid!2138 cacheDown!1098))))

(declare-fun e!1366678 () Bool)

(declare-datatypes ((StackFrame!216 0))(
  ( (StackFrame!217 (z!5854 (InoxSet Context!2678)) (from!2731 Int) (lastNullablePos!418 Int) (res!924141 Int) (totalInput!3112 BalanceConc!15576)) )
))
(declare-datatypes ((List!24375 0))(
  ( (Nil!24291) (Cons!24291 (h!29692 StackFrame!216) (t!196905 List!24375)) )
))
(declare-fun stack!8 () List!24375)

(declare-fun b!2140052 () Bool)

(declare-fun tp!661457 () Bool)

(declare-fun e!1366676 () Bool)

(declare-fun inv!31972 (StackFrame!216) Bool)

(assert (=> b!2140052 (= e!1366676 (and (inv!31972 (h!29692 stack!8)) e!1366678 tp!661457))))

(declare-fun mapIsEmpty!13064 () Bool)

(declare-fun mapRes!13063 () Bool)

(assert (=> mapIsEmpty!13064 mapRes!13063))

(declare-fun mapNonEmpty!13063 () Bool)

(declare-fun mapRes!13064 () Bool)

(declare-fun tp!661454 () Bool)

(declare-fun tp!661440 () Bool)

(assert (=> mapNonEmpty!13063 (= mapRes!13064 (and tp!661454 tp!661440))))

(declare-fun mapKey!13064 () (_ BitVec 32))

(declare-fun mapRest!13065 () (Array (_ BitVec 32) List!24374))

(declare-fun mapValue!13065 () List!24374)

(assert (=> mapNonEmpty!13063 (= (arr!4127 (_values!3016 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979))))))) (store mapRest!13065 mapKey!13064 mapValue!13065))))

(declare-fun b!2140053 () Bool)

(declare-fun e!1366667 () Bool)

(assert (=> b!2140053 (= e!1366667 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun e!1366669 () Bool)

(assert (=> b!2140054 (= e!1366669 (and e!1366670 tp!661433))))

(declare-fun b!2140055 () Bool)

(declare-fun res!924132 () Bool)

(assert (=> b!2140055 (=> (not res!924132) (not e!1366672))))

(assert (=> b!2140055 (= res!924132 (= (totalInput!3111 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2140056 () Bool)

(declare-fun e!1366675 () Bool)

(declare-fun tp!661455 () Bool)

(assert (=> b!2140056 (= e!1366675 (and tp!661455 mapRes!13065))))

(declare-fun condMapEmpty!13064 () Bool)

(declare-fun mapDefault!13064 () List!24373)

(assert (=> b!2140056 (= condMapEmpty!13064 (= (arr!4128 (_values!3017 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24373)) mapDefault!13064)))))

(declare-fun e!1366666 () Bool)

(declare-fun tp!661438 () Bool)

(declare-fun tp!661443 () Bool)

(declare-fun array_inv!2950 (array!9243) Bool)

(declare-fun array_inv!2951 (array!9249) Bool)

(assert (=> b!2140057 (= e!1366666 (and tp!661448 tp!661438 tp!661443 (array_inv!2950 (_keys!3034 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098))))))) (array_inv!2951 (_values!3017 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098))))))) e!1366675))))

(declare-fun res!924128 () Bool)

(declare-fun e!1366665 () Bool)

(assert (=> b!2140058 (=> (not res!924128) (not e!1366665))))

(declare-fun forall!4960 (List!24375 Int) Bool)

(assert (=> b!2140058 (= res!924128 (forall!4960 stack!8 lambda!79988))))

(declare-fun b!2140059 () Bool)

(declare-fun e!1366671 () Bool)

(assert (=> b!2140059 (= e!1366696 e!1366671)))

(declare-fun b!2140060 () Bool)

(declare-fun e!1366681 () Bool)

(declare-fun e!1366673 () Bool)

(assert (=> b!2140060 (= e!1366681 e!1366673)))

(declare-fun b!2140061 () Bool)

(declare-fun e!1366680 () Bool)

(declare-fun tp!661435 () Bool)

(assert (=> b!2140061 (= e!1366680 tp!661435)))

(declare-fun e!1366684 () Bool)

(declare-fun e!1366685 () Bool)

(declare-fun b!2140062 () Bool)

(declare-fun inv!31973 (BalanceConc!15576) Bool)

(assert (=> b!2140062 (= e!1366684 (and e!1366669 (inv!31973 (totalInput!3111 cacheFurthestNullable!114)) e!1366685))))

(declare-fun e!1366664 () Bool)

(declare-fun e!1366687 () Bool)

(assert (=> b!2140063 (= e!1366664 (and e!1366687 tp!661436))))

(declare-fun e!1366683 () Bool)

(declare-fun tp!661446 () Bool)

(declare-fun tp!661430 () Bool)

(declare-fun array_inv!2952 (array!9247) Bool)

(assert (=> b!2140064 (= e!1366673 (and tp!661451 tp!661430 tp!661446 (array_inv!2950 (_keys!3033 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979))))))) (array_inv!2952 (_values!3016 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979))))))) e!1366683))))

(declare-fun mapNonEmpty!13064 () Bool)

(declare-fun tp!661441 () Bool)

(declare-fun tp!661439 () Bool)

(assert (=> mapNonEmpty!13064 (= mapRes!13063 (and tp!661441 tp!661439))))

(declare-fun mapKey!13065 () (_ BitVec 32))

(declare-fun mapRest!13063 () (Array (_ BitVec 32) List!24371))

(declare-fun mapValue!13063 () List!24371)

(assert (=> mapNonEmpty!13064 (= (arr!4126 (_values!3015 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))))) (store mapRest!13063 mapKey!13065 mapValue!13063))))

(declare-fun b!2140065 () Bool)

(declare-fun e!1366695 () Bool)

(assert (=> b!2140065 (= e!1366695 e!1366666)))

(declare-fun b!2140066 () Bool)

(declare-fun tp!661445 () Bool)

(assert (=> b!2140066 (= e!1366685 (and (inv!31971 (c!340507 (totalInput!3111 cacheFurthestNullable!114))) tp!661445))))

(declare-fun b!2140067 () Bool)

(declare-fun e!1366668 () Bool)

(assert (=> b!2140067 (= e!1366668 e!1366681)))

(declare-fun b!2140068 () Bool)

(declare-fun e!1366690 () Bool)

(declare-fun tp!661429 () Bool)

(assert (=> b!2140068 (= e!1366690 (and tp!661429 mapRes!13063))))

(declare-fun condMapEmpty!13065 () Bool)

(declare-fun mapDefault!13063 () List!24371)

(assert (=> b!2140068 (= condMapEmpty!13065 (= (arr!4126 (_values!3015 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24371)) mapDefault!13063)))))

(declare-fun setIsEmpty!16298 () Bool)

(declare-fun setRes!16298 () Bool)

(assert (=> setIsEmpty!16298 setRes!16298))

(declare-fun b!2140069 () Bool)

(declare-fun e!1366663 () Bool)

(declare-fun tp!661442 () Bool)

(assert (=> b!2140069 (= e!1366663 (and (inv!31971 (c!340507 (totalInput!3112 (h!29692 stack!8)))) tp!661442))))

(declare-fun b!2140070 () Bool)

(declare-fun lt!797961 () MutLongMap!2736)

(assert (=> b!2140070 (= e!1366687 (and e!1366668 ((_ is LongMap!2736) lt!797961)))))

(assert (=> b!2140070 (= lt!797961 (v!28867 (underlying!5668 (cache!3031 cacheUp!979))))))

(declare-fun b!2140071 () Bool)

(declare-fun res!924139 () Bool)

(assert (=> b!2140071 (=> (not res!924139) (not e!1366672))))

(declare-fun valid!2139 (CacheUp!1826) Bool)

(assert (=> b!2140071 (= res!924139 (valid!2139 cacheUp!979))))

(declare-fun b!2140072 () Bool)

(assert (=> b!2140072 (= e!1366665 (not e!1366679))))

(declare-fun res!924130 () Bool)

(assert (=> b!2140072 (=> res!924130 e!1366679)))

(declare-datatypes ((Option!4930 0))(
  ( (None!4929) (Some!4929 (v!28870 Int)) )
))
(declare-fun get!7425 (CacheFurthestNullable!782 (InoxSet Context!2678) Int Int) Option!4930)

(assert (=> b!2140072 (= res!924130 ((_ is Some!4929) (get!7425 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2140072 (forall!4960 stack!8 lambda!79987)))

(declare-fun res!924140 () Bool)

(assert (=> start!207842 (=> (not res!924140) (not e!1366693))))

(assert (=> start!207842 (= res!924140 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207842 e!1366693))

(declare-fun inv!31974 (CacheFurthestNullable!782) Bool)

(assert (=> start!207842 (and (inv!31974 cacheFurthestNullable!114) e!1366684)))

(assert (=> start!207842 true))

(declare-fun e!1366694 () Bool)

(declare-fun inv!31975 (CacheDown!1814) Bool)

(assert (=> start!207842 (and (inv!31975 cacheDown!1098) e!1366694)))

(declare-fun e!1366674 () Bool)

(declare-fun inv!31976 (CacheUp!1826) Bool)

(assert (=> start!207842 (and (inv!31976 cacheUp!979) e!1366674)))

(declare-fun condSetEmpty!16299 () Bool)

(assert (=> start!207842 (= condSetEmpty!16299 (= z!3839 ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setRes!16299 () Bool)

(assert (=> start!207842 setRes!16299))

(assert (=> start!207842 (and (inv!31973 totalInput!851) e!1366692)))

(assert (=> start!207842 e!1366676))

(declare-fun b!2140050 () Bool)

(declare-fun res!924133 () Bool)

(assert (=> b!2140050 (=> res!924133 e!1366679)))

(declare-fun lostCauseZipper!111 ((InoxSet Context!2678)) Bool)

(assert (=> b!2140050 (= res!924133 (lostCauseZipper!111 z!3839))))

(assert (=> b!2140073 (= e!1366672 e!1366665)))

(declare-fun res!924131 () Bool)

(assert (=> b!2140073 (=> (not res!924131) (not e!1366665))))

(assert (=> b!2140073 (= res!924131 (forall!4960 stack!8 lambda!79987))))

(assert (=> b!2140073 (= lt!797965 (furthestNullablePosition!71 z!3839 from!1043 totalInput!851 lt!797960 lastNullablePos!123))))

(declare-fun b!2140074 () Bool)

(assert (=> b!2140074 (= e!1366678 (and setRes!16298 (inv!31973 (totalInput!3112 (h!29692 stack!8))) e!1366663))))

(declare-fun condSetEmpty!16298 () Bool)

(assert (=> b!2140074 (= condSetEmpty!16298 (= (z!5854 (h!29692 stack!8)) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun mapIsEmpty!13065 () Bool)

(assert (=> mapIsEmpty!13065 mapRes!13064))

(declare-fun b!2140075 () Bool)

(declare-fun e!1366682 () Bool)

(declare-fun e!1366686 () Bool)

(declare-fun lt!797962 () MutLongMap!2737)

(assert (=> b!2140075 (= e!1366682 (and e!1366686 ((_ is LongMap!2737) lt!797962)))))

(assert (=> b!2140075 (= lt!797962 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098))))))

(declare-fun b!2140076 () Bool)

(declare-fun e!1366688 () Bool)

(assert (=> b!2140076 (= e!1366694 e!1366688)))

(declare-fun mapNonEmpty!13065 () Bool)

(declare-fun tp!661434 () Bool)

(declare-fun tp!661444 () Bool)

(assert (=> mapNonEmpty!13065 (= mapRes!13065 (and tp!661434 tp!661444))))

(declare-fun mapKey!13063 () (_ BitVec 32))

(declare-fun mapRest!13064 () (Array (_ BitVec 32) List!24373))

(declare-fun mapValue!13064 () List!24373)

(assert (=> mapNonEmpty!13065 (= (arr!4128 (_values!3017 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098))))))) (store mapRest!13064 mapKey!13063 mapValue!13064))))

(declare-fun b!2140077 () Bool)

(declare-fun res!924138 () Bool)

(assert (=> b!2140077 (=> (not res!924138) (not e!1366672))))

(assert (=> b!2140077 (= res!924138 e!1366667)))

(declare-fun res!924135 () Bool)

(assert (=> b!2140077 (=> res!924135 e!1366667)))

(assert (=> b!2140077 (= res!924135 (not (nullableZipper!134 z!3839)))))

(declare-fun setNonEmpty!16298 () Bool)

(declare-fun setElem!16298 () Context!2678)

(declare-fun tp!661456 () Bool)

(declare-fun inv!31977 (Context!2678) Bool)

(assert (=> setNonEmpty!16298 (= setRes!16298 (and tp!661456 (inv!31977 setElem!16298) e!1366661))))

(declare-fun setRest!16298 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16298 (= (z!5854 (h!29692 stack!8)) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16298 true) setRest!16298))))

(declare-fun b!2140078 () Bool)

(declare-fun tp!661450 () Bool)

(assert (=> b!2140078 (= e!1366683 (and tp!661450 mapRes!13064))))

(declare-fun condMapEmpty!13063 () Bool)

(declare-fun mapDefault!13065 () List!24374)

(assert (=> b!2140078 (= condMapEmpty!13063 (= (arr!4127 (_values!3016 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24374)) mapDefault!13065)))))

(declare-fun b!2140079 () Bool)

(declare-fun e!1366691 () Bool)

(assert (=> b!2140079 (= e!1366671 e!1366691)))

(declare-fun b!2140080 () Bool)

(assert (=> b!2140080 (= e!1366697 from!1043)))

(declare-fun b!2140081 () Bool)

(declare-fun res!924137 () Bool)

(assert (=> b!2140081 (=> (not res!924137) (not e!1366672))))

(declare-fun valid!2140 (CacheFurthestNullable!782) Bool)

(assert (=> b!2140081 (= res!924137 (valid!2140 cacheFurthestNullable!114))))

(declare-fun tp!661452 () Bool)

(declare-fun tp!661449 () Bool)

(declare-fun array_inv!2953 (array!9245) Bool)

(assert (=> b!2140082 (= e!1366691 (and tp!661432 tp!661449 tp!661452 (array_inv!2950 (_keys!3032 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))))) (array_inv!2953 (_values!3015 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))))) e!1366690))))

(declare-fun b!2140083 () Bool)

(assert (=> b!2140083 (= e!1366686 e!1366695)))

(declare-fun setIsEmpty!16299 () Bool)

(assert (=> setIsEmpty!16299 setRes!16299))

(declare-fun tp!661447 () Bool)

(declare-fun setElem!16299 () Context!2678)

(declare-fun setNonEmpty!16299 () Bool)

(assert (=> setNonEmpty!16299 (= setRes!16299 (and tp!661447 (inv!31977 setElem!16299) e!1366680))))

(declare-fun setRest!16299 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16299 (= z!3839 ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16299 true) setRest!16299))))

(assert (=> b!2140084 (= e!1366688 (and e!1366682 tp!661431))))

(declare-fun b!2140085 () Bool)

(assert (=> b!2140085 (= e!1366674 e!1366664)))

(declare-fun b!2140086 () Bool)

(assert (=> b!2140086 (= e!1366697 lastNullablePos!123)))

(declare-fun b!2140087 () Bool)

(declare-fun res!924136 () Bool)

(assert (=> b!2140087 (=> res!924136 e!1366679)))

(assert (=> b!2140087 (= res!924136 (= from!1043 totalInputSize!296))))

(assert (= (and start!207842 res!924140) b!2140047))

(assert (= (and b!2140047 res!924134) b!2140077))

(assert (= (and b!2140077 (not res!924135)) b!2140053))

(assert (= (and b!2140077 res!924138) b!2140071))

(assert (= (and b!2140071 res!924139) b!2140051))

(assert (= (and b!2140051 res!924129) b!2140081))

(assert (= (and b!2140081 res!924137) b!2140055))

(assert (= (and b!2140055 res!924132) b!2140073))

(assert (= (and b!2140073 res!924131) b!2140058))

(assert (= (and b!2140058 res!924128) b!2140072))

(assert (= (and b!2140072 (not res!924130)) b!2140087))

(assert (= (and b!2140087 (not res!924136)) b!2140050))

(assert (= (and b!2140050 (not res!924133)) b!2140049))

(assert (= (and b!2140049 c!340505) b!2140080))

(assert (= (and b!2140049 (not c!340505)) b!2140086))

(assert (= (and b!2140068 condMapEmpty!13065) mapIsEmpty!13064))

(assert (= (and b!2140068 (not condMapEmpty!13065)) mapNonEmpty!13064))

(assert (= b!2140082 b!2140068))

(assert (= b!2140079 b!2140082))

(assert (= b!2140059 b!2140079))

(assert (= (and b!2140045 ((_ is LongMap!2735) (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))) b!2140059))

(assert (= b!2140054 b!2140045))

(assert (= (and b!2140062 ((_ is HashMap!2649) (cache!3030 cacheFurthestNullable!114))) b!2140054))

(assert (= b!2140062 b!2140066))

(assert (= start!207842 b!2140062))

(assert (= (and b!2140056 condMapEmpty!13064) mapIsEmpty!13063))

(assert (= (and b!2140056 (not condMapEmpty!13064)) mapNonEmpty!13065))

(assert (= b!2140057 b!2140056))

(assert (= b!2140065 b!2140057))

(assert (= b!2140083 b!2140065))

(assert (= (and b!2140075 ((_ is LongMap!2737) (v!28869 (underlying!5670 (cache!3032 cacheDown!1098))))) b!2140083))

(assert (= b!2140084 b!2140075))

(assert (= (and b!2140076 ((_ is HashMap!2651) (cache!3032 cacheDown!1098))) b!2140084))

(assert (= start!207842 b!2140076))

(assert (= (and b!2140078 condMapEmpty!13063) mapIsEmpty!13065))

(assert (= (and b!2140078 (not condMapEmpty!13063)) mapNonEmpty!13063))

(assert (= b!2140064 b!2140078))

(assert (= b!2140060 b!2140064))

(assert (= b!2140067 b!2140060))

(assert (= (and b!2140070 ((_ is LongMap!2736) (v!28867 (underlying!5668 (cache!3031 cacheUp!979))))) b!2140067))

(assert (= b!2140063 b!2140070))

(assert (= (and b!2140085 ((_ is HashMap!2650) (cache!3031 cacheUp!979))) b!2140063))

(assert (= start!207842 b!2140085))

(assert (= (and start!207842 condSetEmpty!16299) setIsEmpty!16299))

(assert (= (and start!207842 (not condSetEmpty!16299)) setNonEmpty!16299))

(assert (= setNonEmpty!16299 b!2140061))

(assert (= start!207842 b!2140048))

(assert (= (and b!2140074 condSetEmpty!16298) setIsEmpty!16298))

(assert (= (and b!2140074 (not condSetEmpty!16298)) setNonEmpty!16298))

(assert (= setNonEmpty!16298 b!2140046))

(assert (= b!2140074 b!2140069))

(assert (= b!2140052 b!2140074))

(assert (= (and start!207842 ((_ is Cons!24291) stack!8)) b!2140052))

(declare-fun m!2586213 () Bool)

(assert (=> b!2140074 m!2586213))

(declare-fun m!2586215 () Bool)

(assert (=> b!2140082 m!2586215))

(declare-fun m!2586217 () Bool)

(assert (=> b!2140082 m!2586217))

(declare-fun m!2586219 () Bool)

(assert (=> b!2140066 m!2586219))

(declare-fun m!2586221 () Bool)

(assert (=> setNonEmpty!16299 m!2586221))

(declare-fun m!2586223 () Bool)

(assert (=> b!2140064 m!2586223))

(declare-fun m!2586225 () Bool)

(assert (=> b!2140064 m!2586225))

(declare-fun m!2586227 () Bool)

(assert (=> start!207842 m!2586227))

(declare-fun m!2586229 () Bool)

(assert (=> start!207842 m!2586229))

(declare-fun m!2586231 () Bool)

(assert (=> start!207842 m!2586231))

(declare-fun m!2586233 () Bool)

(assert (=> start!207842 m!2586233))

(declare-fun m!2586235 () Bool)

(assert (=> b!2140058 m!2586235))

(declare-fun m!2586237 () Bool)

(assert (=> b!2140071 m!2586237))

(declare-fun m!2586239 () Bool)

(assert (=> b!2140049 m!2586239))

(declare-fun m!2586241 () Bool)

(assert (=> b!2140049 m!2586241))

(declare-fun m!2586243 () Bool)

(assert (=> b!2140049 m!2586243))

(assert (=> b!2140049 m!2586243))

(declare-fun m!2586245 () Bool)

(assert (=> b!2140049 m!2586245))

(declare-fun m!2586247 () Bool)

(assert (=> b!2140069 m!2586247))

(declare-fun m!2586249 () Bool)

(assert (=> mapNonEmpty!13064 m!2586249))

(declare-fun m!2586251 () Bool)

(assert (=> b!2140073 m!2586251))

(declare-fun m!2586253 () Bool)

(assert (=> b!2140073 m!2586253))

(declare-fun m!2586255 () Bool)

(assert (=> b!2140050 m!2586255))

(declare-fun m!2586257 () Bool)

(assert (=> b!2140062 m!2586257))

(declare-fun m!2586259 () Bool)

(assert (=> b!2140072 m!2586259))

(assert (=> b!2140072 m!2586251))

(declare-fun m!2586261 () Bool)

(assert (=> b!2140051 m!2586261))

(declare-fun m!2586263 () Bool)

(assert (=> b!2140077 m!2586263))

(declare-fun m!2586265 () Bool)

(assert (=> b!2140048 m!2586265))

(declare-fun m!2586267 () Bool)

(assert (=> setNonEmpty!16298 m!2586267))

(declare-fun m!2586269 () Bool)

(assert (=> mapNonEmpty!13065 m!2586269))

(declare-fun m!2586271 () Bool)

(assert (=> b!2140047 m!2586271))

(declare-fun m!2586273 () Bool)

(assert (=> b!2140057 m!2586273))

(declare-fun m!2586275 () Bool)

(assert (=> b!2140057 m!2586275))

(declare-fun m!2586277 () Bool)

(assert (=> mapNonEmpty!13063 m!2586277))

(declare-fun m!2586279 () Bool)

(assert (=> b!2140081 m!2586279))

(declare-fun m!2586281 () Bool)

(assert (=> b!2140052 m!2586281))

(check-sat (not b!2140061) (not b!2140072) b_and!172473 (not b!2140069) (not b_next!63593) b_and!172471 (not b!2140057) (not b_next!63597) (not mapNonEmpty!13064) (not b!2140073) (not b_next!63595) b_and!172467 (not b!2140056) (not b_next!63599) (not start!207842) (not b_next!63591) (not b!2140047) (not setNonEmpty!16299) (not b!2140068) (not b!2140064) (not b!2140051) (not b!2140052) (not b!2140081) (not b!2140077) b_and!172469 (not b!2140074) (not b!2140048) (not b!2140071) (not b!2140050) (not b!2140046) (not b!2140058) b_and!172475 (not setNonEmpty!16298) (not mapNonEmpty!13065) (not b!2140082) (not b_next!63589) (not b!2140066) (not mapNonEmpty!13063) (not b!2140049) b_and!172465 (not b!2140062) (not b!2140078))
(check-sat (not b_next!63591) b_and!172473 (not b_next!63593) b_and!172471 (not b_next!63597) b_and!172469 b_and!172475 (not b_next!63595) (not b_next!63589) b_and!172467 b_and!172465 (not b_next!63599))
(get-model)

(declare-fun d!644774 () Bool)

(declare-fun c!340510 () Bool)

(assert (=> d!644774 (= c!340510 ((_ is Node!7907) (c!340507 (totalInput!3111 cacheFurthestNullable!114))))))

(declare-fun e!1366702 () Bool)

(assert (=> d!644774 (= (inv!31971 (c!340507 (totalInput!3111 cacheFurthestNullable!114))) e!1366702)))

(declare-fun b!2140098 () Bool)

(declare-fun inv!31978 (Conc!7907) Bool)

(assert (=> b!2140098 (= e!1366702 (inv!31978 (c!340507 (totalInput!3111 cacheFurthestNullable!114))))))

(declare-fun b!2140099 () Bool)

(declare-fun e!1366703 () Bool)

(assert (=> b!2140099 (= e!1366702 e!1366703)))

(declare-fun res!924144 () Bool)

(assert (=> b!2140099 (= res!924144 (not ((_ is Leaf!11559) (c!340507 (totalInput!3111 cacheFurthestNullable!114)))))))

(assert (=> b!2140099 (=> res!924144 e!1366703)))

(declare-fun b!2140100 () Bool)

(declare-fun inv!31979 (Conc!7907) Bool)

(assert (=> b!2140100 (= e!1366703 (inv!31979 (c!340507 (totalInput!3111 cacheFurthestNullable!114))))))

(assert (= (and d!644774 c!340510) b!2140098))

(assert (= (and d!644774 (not c!340510)) b!2140099))

(assert (= (and b!2140099 (not res!924144)) b!2140100))

(declare-fun m!2586283 () Bool)

(assert (=> b!2140098 m!2586283))

(declare-fun m!2586285 () Bool)

(assert (=> b!2140100 m!2586285))

(assert (=> b!2140066 d!644774))

(declare-fun d!644776 () Bool)

(declare-fun c!340511 () Bool)

(assert (=> d!644776 (= c!340511 ((_ is Node!7907) (c!340507 totalInput!851)))))

(declare-fun e!1366704 () Bool)

(assert (=> d!644776 (= (inv!31971 (c!340507 totalInput!851)) e!1366704)))

(declare-fun b!2140101 () Bool)

(assert (=> b!2140101 (= e!1366704 (inv!31978 (c!340507 totalInput!851)))))

(declare-fun b!2140102 () Bool)

(declare-fun e!1366705 () Bool)

(assert (=> b!2140102 (= e!1366704 e!1366705)))

(declare-fun res!924145 () Bool)

(assert (=> b!2140102 (= res!924145 (not ((_ is Leaf!11559) (c!340507 totalInput!851))))))

(assert (=> b!2140102 (=> res!924145 e!1366705)))

(declare-fun b!2140103 () Bool)

(assert (=> b!2140103 (= e!1366705 (inv!31979 (c!340507 totalInput!851)))))

(assert (= (and d!644776 c!340511) b!2140101))

(assert (= (and d!644776 (not c!340511)) b!2140102))

(assert (= (and b!2140102 (not res!924145)) b!2140103))

(declare-fun m!2586287 () Bool)

(assert (=> b!2140101 m!2586287))

(declare-fun m!2586289 () Bool)

(assert (=> b!2140103 m!2586289))

(assert (=> b!2140048 d!644776))

(declare-fun e!1366713 () Int)

(declare-fun e!1366712 () Int)

(declare-fun b!2140114 () Bool)

(declare-fun lt!797971 () (InoxSet Context!2678))

(assert (=> b!2140114 (= e!1366713 (furthestNullablePosition!71 lt!797971 (+ 1 from!1043 1) totalInput!851 lt!797960 e!1366712))))

(declare-fun derivationStepZipper!94 ((InoxSet Context!2678) C!11684) (InoxSet Context!2678))

(assert (=> b!2140114 (= lt!797971 (derivationStepZipper!94 (_1!14220 lt!797964) (apply!5959 totalInput!851 (+ 1 from!1043))))))

(declare-fun c!340517 () Bool)

(assert (=> b!2140114 (= c!340517 (nullableZipper!134 lt!797971))))

(declare-fun b!2140116 () Bool)

(declare-fun e!1366714 () Bool)

(assert (=> b!2140116 (= e!1366714 (lostCauseZipper!111 (_1!14220 lt!797964)))))

(declare-fun b!2140117 () Bool)

(assert (=> b!2140117 (= e!1366712 e!1366697)))

(declare-fun b!2140118 () Bool)

(assert (=> b!2140118 (= e!1366712 (+ 1 from!1043))))

(declare-fun b!2140115 () Bool)

(assert (=> b!2140115 (= e!1366713 e!1366697)))

(declare-fun lt!797970 () Int)

(declare-fun d!644778 () Bool)

(assert (=> d!644778 (and (>= lt!797970 (- 1)) (< lt!797970 lt!797960) (>= lt!797970 e!1366697) (or (= lt!797970 e!1366697) (>= lt!797970 (+ 1 from!1043))))))

(assert (=> d!644778 (= lt!797970 e!1366713)))

(declare-fun c!340516 () Bool)

(assert (=> d!644778 (= c!340516 e!1366714)))

(declare-fun res!924148 () Bool)

(assert (=> d!644778 (=> res!924148 e!1366714)))

(assert (=> d!644778 (= res!924148 (= (+ 1 from!1043) lt!797960))))

(assert (=> d!644778 (and (>= (+ 1 from!1043) 0) (<= (+ 1 from!1043) lt!797960))))

(assert (=> d!644778 (= (furthestNullablePosition!71 (_1!14220 lt!797964) (+ 1 from!1043) totalInput!851 lt!797960 e!1366697) lt!797970)))

(assert (= (and d!644778 (not res!924148)) b!2140116))

(assert (= (and d!644778 c!340516) b!2140115))

(assert (= (and d!644778 (not c!340516)) b!2140114))

(assert (= (and b!2140114 c!340517) b!2140118))

(assert (= (and b!2140114 (not c!340517)) b!2140117))

(declare-fun m!2586291 () Bool)

(assert (=> b!2140114 m!2586291))

(declare-fun m!2586293 () Bool)

(assert (=> b!2140114 m!2586293))

(assert (=> b!2140114 m!2586293))

(declare-fun m!2586295 () Bool)

(assert (=> b!2140114 m!2586295))

(declare-fun m!2586297 () Bool)

(assert (=> b!2140114 m!2586297))

(declare-fun m!2586299 () Bool)

(assert (=> b!2140116 m!2586299))

(assert (=> b!2140049 d!644778))

(declare-fun d!644780 () Bool)

(declare-fun lambda!79991 () Int)

(declare-fun exists!708 ((InoxSet Context!2678) Int) Bool)

(assert (=> d!644780 (= (nullableZipper!134 (_1!14220 lt!797964)) (exists!708 (_1!14220 lt!797964) lambda!79991))))

(declare-fun bs!445138 () Bool)

(assert (= bs!445138 d!644780))

(declare-fun m!2586301 () Bool)

(assert (=> bs!445138 m!2586301))

(assert (=> b!2140049 d!644780))

(declare-fun d!644782 () Bool)

(declare-fun e!1366717 () Bool)

(assert (=> d!644782 e!1366717))

(declare-fun res!924153 () Bool)

(assert (=> d!644782 (=> (not res!924153) (not e!1366717))))

(declare-fun lt!797974 () tuple3!3388)

(assert (=> d!644782 (= res!924153 (= (_1!14220 lt!797974) (derivationStepZipper!94 z!3839 (apply!5959 totalInput!851 from!1043))))))

(declare-fun choose!12683 ((InoxSet Context!2678) C!11684 CacheUp!1826 CacheDown!1814) tuple3!3388)

(assert (=> d!644782 (= lt!797974 (choose!12683 z!3839 (apply!5959 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(assert (=> d!644782 (= (derivationStepZipperMem!53 z!3839 (apply!5959 totalInput!851 from!1043) cacheUp!979 cacheDown!1098) lt!797974)))

(declare-fun b!2140123 () Bool)

(declare-fun res!924154 () Bool)

(assert (=> b!2140123 (=> (not res!924154) (not e!1366717))))

(assert (=> b!2140123 (= res!924154 (valid!2139 (_2!14220 lt!797974)))))

(declare-fun b!2140124 () Bool)

(assert (=> b!2140124 (= e!1366717 (valid!2138 (_3!2164 lt!797974)))))

(assert (= (and d!644782 res!924153) b!2140123))

(assert (= (and b!2140123 res!924154) b!2140124))

(assert (=> d!644782 m!2586243))

(declare-fun m!2586303 () Bool)

(assert (=> d!644782 m!2586303))

(assert (=> d!644782 m!2586243))

(declare-fun m!2586305 () Bool)

(assert (=> d!644782 m!2586305))

(declare-fun m!2586307 () Bool)

(assert (=> b!2140123 m!2586307))

(declare-fun m!2586309 () Bool)

(assert (=> b!2140124 m!2586309))

(assert (=> b!2140049 d!644782))

(declare-fun d!644784 () Bool)

(declare-fun lt!797977 () C!11684)

(declare-fun apply!5960 (List!24372 Int) C!11684)

(declare-fun list!9549 (BalanceConc!15576) List!24372)

(assert (=> d!644784 (= lt!797977 (apply!5960 (list!9549 totalInput!851) from!1043))))

(declare-fun apply!5961 (Conc!7907 Int) C!11684)

(assert (=> d!644784 (= lt!797977 (apply!5961 (c!340507 totalInput!851) from!1043))))

(declare-fun e!1366720 () Bool)

(assert (=> d!644784 e!1366720))

(declare-fun res!924157 () Bool)

(assert (=> d!644784 (=> (not res!924157) (not e!1366720))))

(assert (=> d!644784 (= res!924157 (<= 0 from!1043))))

(assert (=> d!644784 (= (apply!5959 totalInput!851 from!1043) lt!797977)))

(declare-fun b!2140127 () Bool)

(assert (=> b!2140127 (= e!1366720 (< from!1043 (size!19003 totalInput!851)))))

(assert (= (and d!644784 res!924157) b!2140127))

(declare-fun m!2586311 () Bool)

(assert (=> d!644784 m!2586311))

(assert (=> d!644784 m!2586311))

(declare-fun m!2586313 () Bool)

(assert (=> d!644784 m!2586313))

(declare-fun m!2586315 () Bool)

(assert (=> d!644784 m!2586315))

(assert (=> b!2140127 m!2586271))

(assert (=> b!2140049 d!644784))

(declare-fun d!644786 () Bool)

(assert (=> d!644786 (= (array_inv!2950 (_keys!3034 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098))))))) (bvsge (size!19001 (_keys!3034 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2140057 d!644786))

(declare-fun d!644788 () Bool)

(assert (=> d!644788 (= (array_inv!2951 (_values!3017 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098))))))) (bvsge (size!19005 (_values!3017 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2140057 d!644788))

(declare-fun d!644790 () Bool)

(assert (=> d!644790 (= (array_inv!2950 (_keys!3033 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979))))))) (bvsge (size!19001 (_keys!3033 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2140064 d!644790))

(declare-fun d!644792 () Bool)

(assert (=> d!644792 (= (array_inv!2952 (_values!3016 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979))))))) (bvsge (size!19004 (_values!3016 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2140064 d!644792))

(declare-fun d!644794 () Bool)

(declare-fun res!924162 () Bool)

(declare-fun e!1366725 () Bool)

(assert (=> d!644794 (=> res!924162 e!1366725)))

(assert (=> d!644794 (= res!924162 ((_ is Nil!24291) stack!8))))

(assert (=> d!644794 (= (forall!4960 stack!8 lambda!79987) e!1366725)))

(declare-fun b!2140132 () Bool)

(declare-fun e!1366726 () Bool)

(assert (=> b!2140132 (= e!1366725 e!1366726)))

(declare-fun res!924163 () Bool)

(assert (=> b!2140132 (=> (not res!924163) (not e!1366726))))

(declare-fun dynLambda!11371 (Int StackFrame!216) Bool)

(assert (=> b!2140132 (= res!924163 (dynLambda!11371 lambda!79987 (h!29692 stack!8)))))

(declare-fun b!2140133 () Bool)

(assert (=> b!2140133 (= e!1366726 (forall!4960 (t!196905 stack!8) lambda!79987))))

(assert (= (and d!644794 (not res!924162)) b!2140132))

(assert (= (and b!2140132 res!924163) b!2140133))

(declare-fun b_lambda!70637 () Bool)

(assert (=> (not b_lambda!70637) (not b!2140132)))

(declare-fun m!2586317 () Bool)

(assert (=> b!2140132 m!2586317))

(declare-fun m!2586319 () Bool)

(assert (=> b!2140133 m!2586319))

(assert (=> b!2140073 d!644794))

(declare-fun b!2140134 () Bool)

(declare-fun e!1366728 () Int)

(declare-fun lt!797979 () (InoxSet Context!2678))

(declare-fun e!1366727 () Int)

(assert (=> b!2140134 (= e!1366728 (furthestNullablePosition!71 lt!797979 (+ from!1043 1) totalInput!851 lt!797960 e!1366727))))

(assert (=> b!2140134 (= lt!797979 (derivationStepZipper!94 z!3839 (apply!5959 totalInput!851 from!1043)))))

(declare-fun c!340521 () Bool)

(assert (=> b!2140134 (= c!340521 (nullableZipper!134 lt!797979))))

(declare-fun b!2140136 () Bool)

(declare-fun e!1366729 () Bool)

(assert (=> b!2140136 (= e!1366729 (lostCauseZipper!111 z!3839))))

(declare-fun b!2140137 () Bool)

(assert (=> b!2140137 (= e!1366727 lastNullablePos!123)))

(declare-fun b!2140138 () Bool)

(assert (=> b!2140138 (= e!1366727 from!1043)))

(declare-fun b!2140135 () Bool)

(assert (=> b!2140135 (= e!1366728 lastNullablePos!123)))

(declare-fun lt!797978 () Int)

(declare-fun d!644796 () Bool)

(assert (=> d!644796 (and (>= lt!797978 (- 1)) (< lt!797978 lt!797960) (>= lt!797978 lastNullablePos!123) (or (= lt!797978 lastNullablePos!123) (>= lt!797978 from!1043)))))

(assert (=> d!644796 (= lt!797978 e!1366728)))

(declare-fun c!340520 () Bool)

(assert (=> d!644796 (= c!340520 e!1366729)))

(declare-fun res!924164 () Bool)

(assert (=> d!644796 (=> res!924164 e!1366729)))

(assert (=> d!644796 (= res!924164 (= from!1043 lt!797960))))

(assert (=> d!644796 (and (>= from!1043 0) (<= from!1043 lt!797960))))

(assert (=> d!644796 (= (furthestNullablePosition!71 z!3839 from!1043 totalInput!851 lt!797960 lastNullablePos!123) lt!797978)))

(assert (= (and d!644796 (not res!924164)) b!2140136))

(assert (= (and d!644796 c!340520) b!2140135))

(assert (= (and d!644796 (not c!340520)) b!2140134))

(assert (= (and b!2140134 c!340521) b!2140138))

(assert (= (and b!2140134 (not c!340521)) b!2140137))

(declare-fun m!2586321 () Bool)

(assert (=> b!2140134 m!2586321))

(assert (=> b!2140134 m!2586243))

(assert (=> b!2140134 m!2586243))

(assert (=> b!2140134 m!2586303))

(declare-fun m!2586323 () Bool)

(assert (=> b!2140134 m!2586323))

(assert (=> b!2140136 m!2586255))

(assert (=> b!2140073 d!644796))

(declare-fun d!644798 () Bool)

(declare-fun e!1366732 () Bool)

(assert (=> d!644798 e!1366732))

(declare-fun res!924167 () Bool)

(assert (=> d!644798 (=> res!924167 e!1366732)))

(declare-fun lt!797982 () Option!4930)

(declare-fun isEmpty!14328 (Option!4930) Bool)

(assert (=> d!644798 (= res!924167 (isEmpty!14328 lt!797982))))

(declare-fun choose!12684 (CacheFurthestNullable!782 (InoxSet Context!2678) Int Int) Option!4930)

(assert (=> d!644798 (= lt!797982 (choose!12684 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> d!644798 (and (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043))))

(assert (=> d!644798 (= (get!7425 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123) lt!797982)))

(declare-fun b!2140141 () Bool)

(declare-fun get!7426 (Option!4930) Int)

(assert (=> b!2140141 (= e!1366732 (= (get!7426 lt!797982) (furthestNullablePosition!71 z!3839 from!1043 (totalInput!3111 cacheFurthestNullable!114) (size!19003 (totalInput!3111 cacheFurthestNullable!114)) lastNullablePos!123)))))

(assert (= (and d!644798 (not res!924167)) b!2140141))

(declare-fun m!2586325 () Bool)

(assert (=> d!644798 m!2586325))

(declare-fun m!2586327 () Bool)

(assert (=> d!644798 m!2586327))

(declare-fun m!2586329 () Bool)

(assert (=> b!2140141 m!2586329))

(declare-fun m!2586331 () Bool)

(assert (=> b!2140141 m!2586331))

(assert (=> b!2140141 m!2586331))

(declare-fun m!2586333 () Bool)

(assert (=> b!2140141 m!2586333))

(assert (=> b!2140072 d!644798))

(assert (=> b!2140072 d!644794))

(declare-fun d!644800 () Bool)

(declare-fun isBalanced!2459 (Conc!7907) Bool)

(assert (=> d!644800 (= (inv!31973 (totalInput!3112 (h!29692 stack!8))) (isBalanced!2459 (c!340507 (totalInput!3112 (h!29692 stack!8)))))))

(declare-fun bs!445139 () Bool)

(assert (= bs!445139 d!644800))

(declare-fun m!2586335 () Bool)

(assert (=> bs!445139 m!2586335))

(assert (=> b!2140074 d!644800))

(declare-fun d!644802 () Bool)

(declare-fun lt!797985 () Int)

(declare-fun size!19006 (List!24372) Int)

(assert (=> d!644802 (= lt!797985 (size!19006 (list!9549 totalInput!851)))))

(declare-fun size!19007 (Conc!7907) Int)

(assert (=> d!644802 (= lt!797985 (size!19007 (c!340507 totalInput!851)))))

(assert (=> d!644802 (= (size!19003 totalInput!851) lt!797985)))

(declare-fun bs!445140 () Bool)

(assert (= bs!445140 d!644802))

(assert (=> bs!445140 m!2586311))

(assert (=> bs!445140 m!2586311))

(declare-fun m!2586337 () Bool)

(assert (=> bs!445140 m!2586337))

(declare-fun m!2586339 () Bool)

(assert (=> bs!445140 m!2586339))

(assert (=> b!2140047 d!644802))

(declare-fun d!644804 () Bool)

(assert (=> d!644804 (= (array_inv!2950 (_keys!3032 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))))) (bvsge (size!19001 (_keys!3032 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2140082 d!644804))

(declare-fun d!644806 () Bool)

(assert (=> d!644806 (= (array_inv!2953 (_values!3015 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))))) (bvsge (size!19002 (_values!3015 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2140082 d!644806))

(declare-fun d!644808 () Bool)

(declare-fun validCacheMapFurthestNullable!105 (MutableMap!2649 BalanceConc!15576) Bool)

(assert (=> d!644808 (= (valid!2140 cacheFurthestNullable!114) (validCacheMapFurthestNullable!105 (cache!3030 cacheFurthestNullable!114) (totalInput!3111 cacheFurthestNullable!114)))))

(declare-fun bs!445141 () Bool)

(assert (= bs!445141 d!644808))

(declare-fun m!2586341 () Bool)

(assert (=> bs!445141 m!2586341))

(assert (=> b!2140081 d!644808))

(declare-fun d!644810 () Bool)

(declare-fun lambda!79994 () Int)

(declare-fun forall!4961 (List!24370 Int) Bool)

(assert (=> d!644810 (= (inv!31977 setElem!16298) (forall!4961 (exprs!1839 setElem!16298) lambda!79994))))

(declare-fun bs!445142 () Bool)

(assert (= bs!445142 d!644810))

(declare-fun m!2586343 () Bool)

(assert (=> bs!445142 m!2586343))

(assert (=> setNonEmpty!16298 d!644810))

(declare-fun b!2140154 () Bool)

(declare-fun res!924184 () Bool)

(declare-fun e!1366737 () Bool)

(assert (=> b!2140154 (=> (not res!924184) (not e!1366737))))

(assert (=> b!2140154 (= res!924184 (<= (from!2731 (h!29692 stack!8)) (size!19003 (totalInput!3112 (h!29692 stack!8)))))))

(declare-fun b!2140155 () Bool)

(assert (=> b!2140155 (= e!1366737 (= (res!924141 (h!29692 stack!8)) (furthestNullablePosition!71 (z!5854 (h!29692 stack!8)) (from!2731 (h!29692 stack!8)) (totalInput!3112 (h!29692 stack!8)) (size!19003 (totalInput!3112 (h!29692 stack!8))) (lastNullablePos!418 (h!29692 stack!8)))))))

(declare-fun b!2140156 () Bool)

(declare-fun res!924181 () Bool)

(assert (=> b!2140156 (=> (not res!924181) (not e!1366737))))

(assert (=> b!2140156 (= res!924181 (and (>= (lastNullablePos!418 (h!29692 stack!8)) (- 1)) (< (lastNullablePos!418 (h!29692 stack!8)) (from!2731 (h!29692 stack!8)))))))

(declare-fun b!2140157 () Bool)

(declare-fun res!924182 () Bool)

(assert (=> b!2140157 (=> (not res!924182) (not e!1366737))))

(declare-fun e!1366738 () Bool)

(assert (=> b!2140157 (= res!924182 e!1366738)))

(declare-fun res!924185 () Bool)

(assert (=> b!2140157 (=> res!924185 e!1366738)))

(assert (=> b!2140157 (= res!924185 (not (nullableZipper!134 (z!5854 (h!29692 stack!8)))))))

(declare-fun b!2140158 () Bool)

(assert (=> b!2140158 (= e!1366738 (= (lastNullablePos!418 (h!29692 stack!8)) (- (from!2731 (h!29692 stack!8)) 1)))))

(declare-fun b!2140159 () Bool)

(declare-fun res!924180 () Bool)

(assert (=> b!2140159 (=> (not res!924180) (not e!1366737))))

(assert (=> b!2140159 (= res!924180 (= (size!19003 (totalInput!3112 (h!29692 stack!8))) (size!19003 (totalInput!3112 (h!29692 stack!8)))))))

(declare-fun d!644812 () Bool)

(declare-fun res!924183 () Bool)

(assert (=> d!644812 (=> (not res!924183) (not e!1366737))))

(assert (=> d!644812 (= res!924183 (>= (from!2731 (h!29692 stack!8)) 0))))

(assert (=> d!644812 (= (inv!31972 (h!29692 stack!8)) e!1366737)))

(assert (= (and d!644812 res!924183) b!2140154))

(assert (= (and b!2140154 res!924184) b!2140159))

(assert (= (and b!2140159 res!924180) b!2140156))

(assert (= (and b!2140156 res!924181) b!2140157))

(assert (= (and b!2140157 (not res!924185)) b!2140158))

(assert (= (and b!2140157 res!924182) b!2140155))

(declare-fun m!2586345 () Bool)

(assert (=> b!2140154 m!2586345))

(assert (=> b!2140155 m!2586345))

(assert (=> b!2140155 m!2586345))

(declare-fun m!2586347 () Bool)

(assert (=> b!2140155 m!2586347))

(declare-fun m!2586349 () Bool)

(assert (=> b!2140157 m!2586349))

(assert (=> b!2140159 m!2586345))

(assert (=> b!2140052 d!644812))

(declare-fun d!644814 () Bool)

(assert (=> d!644814 (= (inv!31973 (totalInput!3111 cacheFurthestNullable!114)) (isBalanced!2459 (c!340507 (totalInput!3111 cacheFurthestNullable!114))))))

(declare-fun bs!445143 () Bool)

(assert (= bs!445143 d!644814))

(declare-fun m!2586351 () Bool)

(assert (=> bs!445143 m!2586351))

(assert (=> b!2140062 d!644814))

(declare-fun d!644816 () Bool)

(declare-fun validCacheMapUp!255 (MutableMap!2650) Bool)

(assert (=> d!644816 (= (valid!2139 cacheUp!979) (validCacheMapUp!255 (cache!3031 cacheUp!979)))))

(declare-fun bs!445144 () Bool)

(assert (= bs!445144 d!644816))

(declare-fun m!2586353 () Bool)

(assert (=> bs!445144 m!2586353))

(assert (=> b!2140071 d!644816))

(declare-fun bs!445145 () Bool)

(declare-fun d!644818 () Bool)

(assert (= bs!445145 (and d!644818 d!644780)))

(declare-fun lambda!80007 () Int)

(assert (=> bs!445145 (not (= lambda!80007 lambda!79991))))

(declare-fun bs!445146 () Bool)

(declare-fun b!2140164 () Bool)

(assert (= bs!445146 (and b!2140164 d!644780)))

(declare-fun lambda!80008 () Int)

(assert (=> bs!445146 (not (= lambda!80008 lambda!79991))))

(declare-fun bs!445147 () Bool)

(assert (= bs!445147 (and b!2140164 d!644818)))

(assert (=> bs!445147 (not (= lambda!80008 lambda!80007))))

(declare-fun bs!445148 () Bool)

(declare-fun b!2140165 () Bool)

(assert (= bs!445148 (and b!2140165 d!644780)))

(declare-fun lambda!80009 () Int)

(assert (=> bs!445148 (not (= lambda!80009 lambda!79991))))

(declare-fun bs!445149 () Bool)

(assert (= bs!445149 (and b!2140165 d!644818)))

(assert (=> bs!445149 (not (= lambda!80009 lambda!80007))))

(declare-fun bs!445150 () Bool)

(assert (= bs!445150 (and b!2140165 b!2140164)))

(assert (=> bs!445150 (= lambda!80009 lambda!80008)))

(declare-datatypes ((Unit!37685 0))(
  ( (Unit!37686) )
))
(declare-fun e!1366745 () Unit!37685)

(declare-fun Unit!37687 () Unit!37685)

(assert (=> b!2140164 (= e!1366745 Unit!37687)))

(declare-datatypes ((List!24376 0))(
  ( (Nil!24292) (Cons!24292 (h!29693 Context!2678) (t!196906 List!24376)) )
))
(declare-fun lt!798003 () List!24376)

(declare-fun call!128806 () List!24376)

(assert (=> b!2140164 (= lt!798003 call!128806)))

(declare-fun lt!798004 () Unit!37685)

(declare-fun lemmaNotForallThenExists!19 (List!24376 Int) Unit!37685)

(assert (=> b!2140164 (= lt!798004 (lemmaNotForallThenExists!19 lt!798003 lambda!80007))))

(declare-fun call!128807 () Bool)

(assert (=> b!2140164 call!128807))

(declare-fun lt!798008 () Unit!37685)

(assert (=> b!2140164 (= lt!798008 lt!798004)))

(declare-fun lt!798009 () Bool)

(declare-datatypes ((Option!4931 0))(
  ( (None!4930) (Some!4930 (v!28871 List!24372)) )
))
(declare-fun isEmpty!14329 (Option!4931) Bool)

(declare-fun getLanguageWitness!104 ((InoxSet Context!2678)) Option!4931)

(assert (=> d!644818 (= lt!798009 (isEmpty!14329 (getLanguageWitness!104 z!3839)))))

(declare-fun forall!4962 ((InoxSet Context!2678) Int) Bool)

(assert (=> d!644818 (= lt!798009 (forall!4962 z!3839 lambda!80007))))

(declare-fun lt!798007 () Unit!37685)

(assert (=> d!644818 (= lt!798007 e!1366745)))

(declare-fun c!340532 () Bool)

(assert (=> d!644818 (= c!340532 (not (forall!4962 z!3839 lambda!80007)))))

(assert (=> d!644818 (= (lostCauseZipper!111 z!3839) lt!798009)))

(declare-fun bm!128801 () Bool)

(declare-fun lt!798005 () List!24376)

(declare-fun exists!709 (List!24376 Int) Bool)

(assert (=> bm!128801 (= call!128807 (exists!709 (ite c!340532 lt!798003 lt!798005) (ite c!340532 lambda!80008 lambda!80009)))))

(declare-fun Unit!37688 () Unit!37685)

(assert (=> b!2140165 (= e!1366745 Unit!37688)))

(assert (=> b!2140165 (= lt!798005 call!128806)))

(declare-fun lt!798006 () Unit!37685)

(declare-fun lemmaForallThenNotExists!19 (List!24376 Int) Unit!37685)

(assert (=> b!2140165 (= lt!798006 (lemmaForallThenNotExists!19 lt!798005 lambda!80007))))

(assert (=> b!2140165 (not call!128807)))

(declare-fun lt!798002 () Unit!37685)

(assert (=> b!2140165 (= lt!798002 lt!798006)))

(declare-fun bm!128802 () Bool)

(declare-fun toList!1079 ((InoxSet Context!2678)) List!24376)

(assert (=> bm!128802 (= call!128806 (toList!1079 z!3839))))

(assert (= (and d!644818 c!340532) b!2140164))

(assert (= (and d!644818 (not c!340532)) b!2140165))

(assert (= (or b!2140164 b!2140165) bm!128801))

(assert (= (or b!2140164 b!2140165) bm!128802))

(declare-fun m!2586355 () Bool)

(assert (=> d!644818 m!2586355))

(assert (=> d!644818 m!2586355))

(declare-fun m!2586357 () Bool)

(assert (=> d!644818 m!2586357))

(declare-fun m!2586359 () Bool)

(assert (=> d!644818 m!2586359))

(assert (=> d!644818 m!2586359))

(declare-fun m!2586361 () Bool)

(assert (=> b!2140165 m!2586361))

(declare-fun m!2586363 () Bool)

(assert (=> bm!128802 m!2586363))

(declare-fun m!2586365 () Bool)

(assert (=> bm!128801 m!2586365))

(declare-fun m!2586367 () Bool)

(assert (=> b!2140164 m!2586367))

(assert (=> b!2140050 d!644818))

(declare-fun bs!445151 () Bool)

(declare-fun d!644820 () Bool)

(assert (= bs!445151 (and d!644820 d!644810)))

(declare-fun lambda!80010 () Int)

(assert (=> bs!445151 (= lambda!80010 lambda!79994)))

(assert (=> d!644820 (= (inv!31977 setElem!16299) (forall!4961 (exprs!1839 setElem!16299) lambda!80010))))

(declare-fun bs!445152 () Bool)

(assert (= bs!445152 d!644820))

(declare-fun m!2586369 () Bool)

(assert (=> bs!445152 m!2586369))

(assert (=> setNonEmpty!16299 d!644820))

(declare-fun d!644822 () Bool)

(declare-fun res!924186 () Bool)

(declare-fun e!1366746 () Bool)

(assert (=> d!644822 (=> res!924186 e!1366746)))

(assert (=> d!644822 (= res!924186 ((_ is Nil!24291) stack!8))))

(assert (=> d!644822 (= (forall!4960 stack!8 lambda!79988) e!1366746)))

(declare-fun b!2140166 () Bool)

(declare-fun e!1366747 () Bool)

(assert (=> b!2140166 (= e!1366746 e!1366747)))

(declare-fun res!924187 () Bool)

(assert (=> b!2140166 (=> (not res!924187) (not e!1366747))))

(assert (=> b!2140166 (= res!924187 (dynLambda!11371 lambda!79988 (h!29692 stack!8)))))

(declare-fun b!2140167 () Bool)

(assert (=> b!2140167 (= e!1366747 (forall!4960 (t!196905 stack!8) lambda!79988))))

(assert (= (and d!644822 (not res!924186)) b!2140166))

(assert (= (and b!2140166 res!924187) b!2140167))

(declare-fun b_lambda!70639 () Bool)

(assert (=> (not b_lambda!70639) (not b!2140166)))

(declare-fun m!2586371 () Bool)

(assert (=> b!2140166 m!2586371))

(declare-fun m!2586373 () Bool)

(assert (=> b!2140167 m!2586373))

(assert (=> b!2140058 d!644822))

(declare-fun d!644824 () Bool)

(declare-fun res!924190 () Bool)

(declare-fun e!1366750 () Bool)

(assert (=> d!644824 (=> (not res!924190) (not e!1366750))))

(assert (=> d!644824 (= res!924190 ((_ is HashMap!2649) (cache!3030 cacheFurthestNullable!114)))))

(assert (=> d!644824 (= (inv!31974 cacheFurthestNullable!114) e!1366750)))

(declare-fun b!2140170 () Bool)

(assert (=> b!2140170 (= e!1366750 (validCacheMapFurthestNullable!105 (cache!3030 cacheFurthestNullable!114) (totalInput!3111 cacheFurthestNullable!114)))))

(assert (= (and d!644824 res!924190) b!2140170))

(assert (=> b!2140170 m!2586341))

(assert (=> start!207842 d!644824))

(declare-fun d!644826 () Bool)

(declare-fun res!924193 () Bool)

(declare-fun e!1366753 () Bool)

(assert (=> d!644826 (=> (not res!924193) (not e!1366753))))

(assert (=> d!644826 (= res!924193 ((_ is HashMap!2651) (cache!3032 cacheDown!1098)))))

(assert (=> d!644826 (= (inv!31975 cacheDown!1098) e!1366753)))

(declare-fun b!2140173 () Bool)

(declare-fun validCacheMapDown!253 (MutableMap!2651) Bool)

(assert (=> b!2140173 (= e!1366753 (validCacheMapDown!253 (cache!3032 cacheDown!1098)))))

(assert (= (and d!644826 res!924193) b!2140173))

(declare-fun m!2586375 () Bool)

(assert (=> b!2140173 m!2586375))

(assert (=> start!207842 d!644826))

(declare-fun d!644828 () Bool)

(declare-fun res!924196 () Bool)

(declare-fun e!1366756 () Bool)

(assert (=> d!644828 (=> (not res!924196) (not e!1366756))))

(assert (=> d!644828 (= res!924196 ((_ is HashMap!2650) (cache!3031 cacheUp!979)))))

(assert (=> d!644828 (= (inv!31976 cacheUp!979) e!1366756)))

(declare-fun b!2140176 () Bool)

(assert (=> b!2140176 (= e!1366756 (validCacheMapUp!255 (cache!3031 cacheUp!979)))))

(assert (= (and d!644828 res!924196) b!2140176))

(assert (=> b!2140176 m!2586353))

(assert (=> start!207842 d!644828))

(declare-fun d!644830 () Bool)

(assert (=> d!644830 (= (inv!31973 totalInput!851) (isBalanced!2459 (c!340507 totalInput!851)))))

(declare-fun bs!445153 () Bool)

(assert (= bs!445153 d!644830))

(declare-fun m!2586377 () Bool)

(assert (=> bs!445153 m!2586377))

(assert (=> start!207842 d!644830))

(declare-fun d!644832 () Bool)

(declare-fun c!340533 () Bool)

(assert (=> d!644832 (= c!340533 ((_ is Node!7907) (c!340507 (totalInput!3112 (h!29692 stack!8)))))))

(declare-fun e!1366757 () Bool)

(assert (=> d!644832 (= (inv!31971 (c!340507 (totalInput!3112 (h!29692 stack!8)))) e!1366757)))

(declare-fun b!2140177 () Bool)

(assert (=> b!2140177 (= e!1366757 (inv!31978 (c!340507 (totalInput!3112 (h!29692 stack!8)))))))

(declare-fun b!2140178 () Bool)

(declare-fun e!1366758 () Bool)

(assert (=> b!2140178 (= e!1366757 e!1366758)))

(declare-fun res!924197 () Bool)

(assert (=> b!2140178 (= res!924197 (not ((_ is Leaf!11559) (c!340507 (totalInput!3112 (h!29692 stack!8))))))))

(assert (=> b!2140178 (=> res!924197 e!1366758)))

(declare-fun b!2140179 () Bool)

(assert (=> b!2140179 (= e!1366758 (inv!31979 (c!340507 (totalInput!3112 (h!29692 stack!8)))))))

(assert (= (and d!644832 c!340533) b!2140177))

(assert (= (and d!644832 (not c!340533)) b!2140178))

(assert (= (and b!2140178 (not res!924197)) b!2140179))

(declare-fun m!2586379 () Bool)

(assert (=> b!2140177 m!2586379))

(declare-fun m!2586381 () Bool)

(assert (=> b!2140179 m!2586381))

(assert (=> b!2140069 d!644832))

(declare-fun bs!445154 () Bool)

(declare-fun d!644834 () Bool)

(assert (= bs!445154 (and d!644834 d!644780)))

(declare-fun lambda!80011 () Int)

(assert (=> bs!445154 (= lambda!80011 lambda!79991)))

(declare-fun bs!445155 () Bool)

(assert (= bs!445155 (and d!644834 d!644818)))

(assert (=> bs!445155 (not (= lambda!80011 lambda!80007))))

(declare-fun bs!445156 () Bool)

(assert (= bs!445156 (and d!644834 b!2140164)))

(assert (=> bs!445156 (not (= lambda!80011 lambda!80008))))

(declare-fun bs!445157 () Bool)

(assert (= bs!445157 (and d!644834 b!2140165)))

(assert (=> bs!445157 (not (= lambda!80011 lambda!80009))))

(assert (=> d!644834 (= (nullableZipper!134 z!3839) (exists!708 z!3839 lambda!80011))))

(declare-fun bs!445158 () Bool)

(assert (= bs!445158 d!644834))

(declare-fun m!2586383 () Bool)

(assert (=> bs!445158 m!2586383))

(assert (=> b!2140077 d!644834))

(declare-fun d!644836 () Bool)

(assert (=> d!644836 (= (valid!2138 cacheDown!1098) (validCacheMapDown!253 (cache!3032 cacheDown!1098)))))

(declare-fun bs!445159 () Bool)

(assert (= bs!445159 d!644836))

(assert (=> bs!445159 m!2586375))

(assert (=> b!2140051 d!644836))

(declare-fun e!1366767 () Bool)

(assert (=> b!2140056 (= tp!661455 e!1366767)))

(declare-fun tp!661472 () Bool)

(declare-fun tp_is_empty!9511 () Bool)

(declare-fun setRes!16302 () Bool)

(declare-fun e!1366766 () Bool)

(declare-fun b!2140188 () Bool)

(declare-fun tp!661468 () Bool)

(assert (=> b!2140188 (= e!1366767 (and tp!661468 (inv!31977 (_2!14216 (_1!14217 (h!29690 mapDefault!13064)))) e!1366766 tp_is_empty!9511 setRes!16302 tp!661472))))

(declare-fun condSetEmpty!16302 () Bool)

(assert (=> b!2140188 (= condSetEmpty!16302 (= (_2!14217 (h!29690 mapDefault!13064)) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setNonEmpty!16302 () Bool)

(declare-fun tp!661469 () Bool)

(declare-fun e!1366765 () Bool)

(declare-fun setElem!16302 () Context!2678)

(assert (=> setNonEmpty!16302 (= setRes!16302 (and tp!661469 (inv!31977 setElem!16302) e!1366765))))

(declare-fun setRest!16302 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16302 (= (_2!14217 (h!29690 mapDefault!13064)) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16302 true) setRest!16302))))

(declare-fun setIsEmpty!16302 () Bool)

(assert (=> setIsEmpty!16302 setRes!16302))

(declare-fun b!2140189 () Bool)

(declare-fun tp!661470 () Bool)

(assert (=> b!2140189 (= e!1366765 tp!661470)))

(declare-fun b!2140190 () Bool)

(declare-fun tp!661471 () Bool)

(assert (=> b!2140190 (= e!1366766 tp!661471)))

(assert (= b!2140188 b!2140190))

(assert (= (and b!2140188 condSetEmpty!16302) setIsEmpty!16302))

(assert (= (and b!2140188 (not condSetEmpty!16302)) setNonEmpty!16302))

(assert (= setNonEmpty!16302 b!2140189))

(assert (= (and b!2140056 ((_ is Cons!24289) mapDefault!13064)) b!2140188))

(declare-fun m!2586385 () Bool)

(assert (=> b!2140188 m!2586385))

(declare-fun m!2586387 () Bool)

(assert (=> setNonEmpty!16302 m!2586387))

(declare-fun tp!661481 () Bool)

(declare-fun b!2140199 () Bool)

(declare-fun tp!661480 () Bool)

(declare-fun e!1366772 () Bool)

(assert (=> b!2140199 (= e!1366772 (and (inv!31971 (left!18688 (c!340507 (totalInput!3111 cacheFurthestNullable!114)))) tp!661481 (inv!31971 (right!19018 (c!340507 (totalInput!3111 cacheFurthestNullable!114)))) tp!661480))))

(declare-fun b!2140201 () Bool)

(declare-fun e!1366773 () Bool)

(declare-fun tp!661479 () Bool)

(assert (=> b!2140201 (= e!1366773 tp!661479)))

(declare-fun b!2140200 () Bool)

(declare-fun inv!31980 (IArray!15819) Bool)

(assert (=> b!2140200 (= e!1366772 (and (inv!31980 (xs!10849 (c!340507 (totalInput!3111 cacheFurthestNullable!114)))) e!1366773))))

(assert (=> b!2140066 (= tp!661445 (and (inv!31971 (c!340507 (totalInput!3111 cacheFurthestNullable!114))) e!1366772))))

(assert (= (and b!2140066 ((_ is Node!7907) (c!340507 (totalInput!3111 cacheFurthestNullable!114)))) b!2140199))

(assert (= b!2140200 b!2140201))

(assert (= (and b!2140066 ((_ is Leaf!11559) (c!340507 (totalInput!3111 cacheFurthestNullable!114)))) b!2140200))

(declare-fun m!2586389 () Bool)

(assert (=> b!2140199 m!2586389))

(declare-fun m!2586391 () Bool)

(assert (=> b!2140199 m!2586391))

(declare-fun m!2586393 () Bool)

(assert (=> b!2140200 m!2586393))

(assert (=> b!2140066 m!2586219))

(declare-fun tp!661483 () Bool)

(declare-fun b!2140202 () Bool)

(declare-fun e!1366774 () Bool)

(declare-fun tp!661484 () Bool)

(assert (=> b!2140202 (= e!1366774 (and (inv!31971 (left!18688 (c!340507 totalInput!851))) tp!661484 (inv!31971 (right!19018 (c!340507 totalInput!851))) tp!661483))))

(declare-fun b!2140204 () Bool)

(declare-fun e!1366775 () Bool)

(declare-fun tp!661482 () Bool)

(assert (=> b!2140204 (= e!1366775 tp!661482)))

(declare-fun b!2140203 () Bool)

(assert (=> b!2140203 (= e!1366774 (and (inv!31980 (xs!10849 (c!340507 totalInput!851))) e!1366775))))

(assert (=> b!2140048 (= tp!661453 (and (inv!31971 (c!340507 totalInput!851)) e!1366774))))

(assert (= (and b!2140048 ((_ is Node!7907) (c!340507 totalInput!851))) b!2140202))

(assert (= b!2140203 b!2140204))

(assert (= (and b!2140048 ((_ is Leaf!11559) (c!340507 totalInput!851))) b!2140203))

(declare-fun m!2586395 () Bool)

(assert (=> b!2140202 m!2586395))

(declare-fun m!2586397 () Bool)

(assert (=> b!2140202 m!2586397))

(declare-fun m!2586399 () Bool)

(assert (=> b!2140203 m!2586399))

(assert (=> b!2140048 m!2586265))

(declare-fun e!1366778 () Bool)

(assert (=> b!2140057 (= tp!661438 e!1366778)))

(declare-fun setRes!16303 () Bool)

(declare-fun b!2140205 () Bool)

(declare-fun tp!661489 () Bool)

(declare-fun e!1366777 () Bool)

(declare-fun tp!661485 () Bool)

(assert (=> b!2140205 (= e!1366778 (and tp!661485 (inv!31977 (_2!14216 (_1!14217 (h!29690 (zeroValue!2995 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098)))))))))) e!1366777 tp_is_empty!9511 setRes!16303 tp!661489))))

(declare-fun condSetEmpty!16303 () Bool)

(assert (=> b!2140205 (= condSetEmpty!16303 (= (_2!14217 (h!29690 (zeroValue!2995 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098)))))))) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setElem!16303 () Context!2678)

(declare-fun e!1366776 () Bool)

(declare-fun setNonEmpty!16303 () Bool)

(declare-fun tp!661486 () Bool)

(assert (=> setNonEmpty!16303 (= setRes!16303 (and tp!661486 (inv!31977 setElem!16303) e!1366776))))

(declare-fun setRest!16303 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16303 (= (_2!14217 (h!29690 (zeroValue!2995 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16303 true) setRest!16303))))

(declare-fun setIsEmpty!16303 () Bool)

(assert (=> setIsEmpty!16303 setRes!16303))

(declare-fun b!2140206 () Bool)

(declare-fun tp!661487 () Bool)

(assert (=> b!2140206 (= e!1366776 tp!661487)))

(declare-fun b!2140207 () Bool)

(declare-fun tp!661488 () Bool)

(assert (=> b!2140207 (= e!1366777 tp!661488)))

(assert (= b!2140205 b!2140207))

(assert (= (and b!2140205 condSetEmpty!16303) setIsEmpty!16303))

(assert (= (and b!2140205 (not condSetEmpty!16303)) setNonEmpty!16303))

(assert (= setNonEmpty!16303 b!2140206))

(assert (= (and b!2140057 ((_ is Cons!24289) (zeroValue!2995 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098)))))))) b!2140205))

(declare-fun m!2586401 () Bool)

(assert (=> b!2140205 m!2586401))

(declare-fun m!2586403 () Bool)

(assert (=> setNonEmpty!16303 m!2586403))

(declare-fun e!1366781 () Bool)

(assert (=> b!2140057 (= tp!661443 e!1366781)))

(declare-fun tp!661494 () Bool)

(declare-fun setRes!16304 () Bool)

(declare-fun b!2140208 () Bool)

(declare-fun e!1366780 () Bool)

(declare-fun tp!661490 () Bool)

(assert (=> b!2140208 (= e!1366781 (and tp!661490 (inv!31977 (_2!14216 (_1!14217 (h!29690 (minValue!2995 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098)))))))))) e!1366780 tp_is_empty!9511 setRes!16304 tp!661494))))

(declare-fun condSetEmpty!16304 () Bool)

(assert (=> b!2140208 (= condSetEmpty!16304 (= (_2!14217 (h!29690 (minValue!2995 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098)))))))) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun e!1366779 () Bool)

(declare-fun setElem!16304 () Context!2678)

(declare-fun setNonEmpty!16304 () Bool)

(declare-fun tp!661491 () Bool)

(assert (=> setNonEmpty!16304 (= setRes!16304 (and tp!661491 (inv!31977 setElem!16304) e!1366779))))

(declare-fun setRest!16304 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16304 (= (_2!14217 (h!29690 (minValue!2995 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16304 true) setRest!16304))))

(declare-fun setIsEmpty!16304 () Bool)

(assert (=> setIsEmpty!16304 setRes!16304))

(declare-fun b!2140209 () Bool)

(declare-fun tp!661492 () Bool)

(assert (=> b!2140209 (= e!1366779 tp!661492)))

(declare-fun b!2140210 () Bool)

(declare-fun tp!661493 () Bool)

(assert (=> b!2140210 (= e!1366780 tp!661493)))

(assert (= b!2140208 b!2140210))

(assert (= (and b!2140208 condSetEmpty!16304) setIsEmpty!16304))

(assert (= (and b!2140208 (not condSetEmpty!16304)) setNonEmpty!16304))

(assert (= setNonEmpty!16304 b!2140209))

(assert (= (and b!2140057 ((_ is Cons!24289) (minValue!2995 (v!28868 (underlying!5669 (v!28869 (underlying!5670 (cache!3032 cacheDown!1098)))))))) b!2140208))

(declare-fun m!2586405 () Bool)

(assert (=> b!2140208 m!2586405))

(declare-fun m!2586407 () Bool)

(assert (=> setNonEmpty!16304 m!2586407))

(declare-fun b!2140219 () Bool)

(declare-fun e!1366790 () Bool)

(declare-fun tp!661504 () Bool)

(assert (=> b!2140219 (= e!1366790 tp!661504)))

(declare-fun setRes!16307 () Bool)

(declare-fun tp!661505 () Bool)

(declare-fun setElem!16307 () Context!2678)

(declare-fun setNonEmpty!16307 () Bool)

(assert (=> setNonEmpty!16307 (= setRes!16307 (and tp!661505 (inv!31977 setElem!16307) e!1366790))))

(declare-fun setRest!16307 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16307 (= (_2!14219 (h!29691 (zeroValue!2994 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16307 true) setRest!16307))))

(declare-fun b!2140220 () Bool)

(declare-fun e!1366788 () Bool)

(declare-fun tp!661503 () Bool)

(assert (=> b!2140220 (= e!1366788 tp!661503)))

(declare-fun tp!661506 () Bool)

(declare-fun e!1366789 () Bool)

(declare-fun b!2140221 () Bool)

(assert (=> b!2140221 (= e!1366789 (and (inv!31977 (_1!14218 (_1!14219 (h!29691 (zeroValue!2994 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979)))))))))) e!1366788 tp_is_empty!9511 setRes!16307 tp!661506))))

(declare-fun condSetEmpty!16307 () Bool)

(assert (=> b!2140221 (= condSetEmpty!16307 (= (_2!14219 (h!29691 (zeroValue!2994 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979)))))))) ((as const (Array Context!2678 Bool)) false)))))

(assert (=> b!2140064 (= tp!661430 e!1366789)))

(declare-fun setIsEmpty!16307 () Bool)

(assert (=> setIsEmpty!16307 setRes!16307))

(assert (= b!2140221 b!2140220))

(assert (= (and b!2140221 condSetEmpty!16307) setIsEmpty!16307))

(assert (= (and b!2140221 (not condSetEmpty!16307)) setNonEmpty!16307))

(assert (= setNonEmpty!16307 b!2140219))

(assert (= (and b!2140064 ((_ is Cons!24290) (zeroValue!2994 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979)))))))) b!2140221))

(declare-fun m!2586409 () Bool)

(assert (=> setNonEmpty!16307 m!2586409))

(declare-fun m!2586411 () Bool)

(assert (=> b!2140221 m!2586411))

(declare-fun b!2140222 () Bool)

(declare-fun e!1366793 () Bool)

(declare-fun tp!661508 () Bool)

(assert (=> b!2140222 (= e!1366793 tp!661508)))

(declare-fun setRes!16308 () Bool)

(declare-fun setElem!16308 () Context!2678)

(declare-fun setNonEmpty!16308 () Bool)

(declare-fun tp!661509 () Bool)

(assert (=> setNonEmpty!16308 (= setRes!16308 (and tp!661509 (inv!31977 setElem!16308) e!1366793))))

(declare-fun setRest!16308 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16308 (= (_2!14219 (h!29691 (minValue!2994 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16308 true) setRest!16308))))

(declare-fun b!2140223 () Bool)

(declare-fun e!1366791 () Bool)

(declare-fun tp!661507 () Bool)

(assert (=> b!2140223 (= e!1366791 tp!661507)))

(declare-fun b!2140224 () Bool)

(declare-fun tp!661510 () Bool)

(declare-fun e!1366792 () Bool)

(assert (=> b!2140224 (= e!1366792 (and (inv!31977 (_1!14218 (_1!14219 (h!29691 (minValue!2994 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979)))))))))) e!1366791 tp_is_empty!9511 setRes!16308 tp!661510))))

(declare-fun condSetEmpty!16308 () Bool)

(assert (=> b!2140224 (= condSetEmpty!16308 (= (_2!14219 (h!29691 (minValue!2994 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979)))))))) ((as const (Array Context!2678 Bool)) false)))))

(assert (=> b!2140064 (= tp!661446 e!1366792)))

(declare-fun setIsEmpty!16308 () Bool)

(assert (=> setIsEmpty!16308 setRes!16308))

(assert (= b!2140224 b!2140223))

(assert (= (and b!2140224 condSetEmpty!16308) setIsEmpty!16308))

(assert (= (and b!2140224 (not condSetEmpty!16308)) setNonEmpty!16308))

(assert (= setNonEmpty!16308 b!2140222))

(assert (= (and b!2140064 ((_ is Cons!24290) (minValue!2994 (v!28866 (underlying!5667 (v!28867 (underlying!5668 (cache!3031 cacheUp!979)))))))) b!2140224))

(declare-fun m!2586413 () Bool)

(assert (=> setNonEmpty!16308 m!2586413))

(declare-fun m!2586415 () Bool)

(assert (=> b!2140224 m!2586415))

(declare-fun b!2140229 () Bool)

(declare-fun e!1366796 () Bool)

(declare-fun tp!661515 () Bool)

(declare-fun tp!661516 () Bool)

(assert (=> b!2140229 (= e!1366796 (and tp!661515 tp!661516))))

(assert (=> b!2140046 (= tp!661437 e!1366796)))

(assert (= (and b!2140046 ((_ is Cons!24286) (exprs!1839 setElem!16298))) b!2140229))

(declare-fun b!2140237 () Bool)

(declare-fun e!1366801 () Bool)

(declare-fun tp!661524 () Bool)

(assert (=> b!2140237 (= e!1366801 tp!661524)))

(declare-fun setIsEmpty!16311 () Bool)

(declare-fun setRes!16311 () Bool)

(assert (=> setIsEmpty!16311 setRes!16311))

(declare-fun e!1366802 () Bool)

(assert (=> b!2140082 (= tp!661449 e!1366802)))

(declare-fun b!2140236 () Bool)

(declare-fun tp!661523 () Bool)

(assert (=> b!2140236 (= e!1366802 (and setRes!16311 tp!661523))))

(declare-fun condSetEmpty!16311 () Bool)

(assert (=> b!2140236 (= condSetEmpty!16311 (= (_1!14214 (_1!14215 (h!29688 (zeroValue!2993 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))))))) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setElem!16311 () Context!2678)

(declare-fun tp!661525 () Bool)

(declare-fun setNonEmpty!16311 () Bool)

(assert (=> setNonEmpty!16311 (= setRes!16311 (and tp!661525 (inv!31977 setElem!16311) e!1366801))))

(declare-fun setRest!16311 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16311 (= (_1!14214 (_1!14215 (h!29688 (zeroValue!2993 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16311 true) setRest!16311))))

(assert (= (and b!2140236 condSetEmpty!16311) setIsEmpty!16311))

(assert (= (and b!2140236 (not condSetEmpty!16311)) setNonEmpty!16311))

(assert (= setNonEmpty!16311 b!2140237))

(assert (= (and b!2140082 ((_ is Cons!24287) (zeroValue!2993 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114)))))))) b!2140236))

(declare-fun m!2586417 () Bool)

(assert (=> setNonEmpty!16311 m!2586417))

(declare-fun b!2140239 () Bool)

(declare-fun e!1366803 () Bool)

(declare-fun tp!661527 () Bool)

(assert (=> b!2140239 (= e!1366803 tp!661527)))

(declare-fun setIsEmpty!16312 () Bool)

(declare-fun setRes!16312 () Bool)

(assert (=> setIsEmpty!16312 setRes!16312))

(declare-fun e!1366804 () Bool)

(assert (=> b!2140082 (= tp!661452 e!1366804)))

(declare-fun b!2140238 () Bool)

(declare-fun tp!661526 () Bool)

(assert (=> b!2140238 (= e!1366804 (and setRes!16312 tp!661526))))

(declare-fun condSetEmpty!16312 () Bool)

(assert (=> b!2140238 (= condSetEmpty!16312 (= (_1!14214 (_1!14215 (h!29688 (minValue!2993 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))))))) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setElem!16312 () Context!2678)

(declare-fun tp!661528 () Bool)

(declare-fun setNonEmpty!16312 () Bool)

(assert (=> setNonEmpty!16312 (= setRes!16312 (and tp!661528 (inv!31977 setElem!16312) e!1366803))))

(declare-fun setRest!16312 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16312 (= (_1!14214 (_1!14215 (h!29688 (minValue!2993 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16312 true) setRest!16312))))

(assert (= (and b!2140238 condSetEmpty!16312) setIsEmpty!16312))

(assert (= (and b!2140238 (not condSetEmpty!16312)) setNonEmpty!16312))

(assert (= setNonEmpty!16312 b!2140239))

(assert (= (and b!2140082 ((_ is Cons!24287) (minValue!2993 (v!28864 (underlying!5665 (v!28865 (underlying!5666 (cache!3030 cacheFurthestNullable!114)))))))) b!2140238))

(declare-fun m!2586419 () Bool)

(assert (=> setNonEmpty!16312 m!2586419))

(declare-fun e!1366816 () Bool)

(declare-fun setElem!16317 () Context!2678)

(declare-fun setRes!16318 () Bool)

(declare-fun setNonEmpty!16317 () Bool)

(declare-fun tp!661546 () Bool)

(assert (=> setNonEmpty!16317 (= setRes!16318 (and tp!661546 (inv!31977 setElem!16317) e!1366816))))

(declare-fun mapValue!13068 () List!24371)

(declare-fun setRest!16318 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16317 (= (_1!14214 (_1!14215 (h!29688 mapValue!13068))) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16317 true) setRest!16318))))

(declare-fun b!2140250 () Bool)

(declare-fun e!1366815 () Bool)

(declare-fun tp!661545 () Bool)

(assert (=> b!2140250 (= e!1366815 (and setRes!16318 tp!661545))))

(declare-fun condSetEmpty!16318 () Bool)

(assert (=> b!2140250 (= condSetEmpty!16318 (= (_1!14214 (_1!14215 (h!29688 mapValue!13068))) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun b!2140251 () Bool)

(declare-fun e!1366813 () Bool)

(declare-fun setRes!16317 () Bool)

(declare-fun tp!661544 () Bool)

(assert (=> b!2140251 (= e!1366813 (and setRes!16317 tp!661544))))

(declare-fun condSetEmpty!16317 () Bool)

(declare-fun mapDefault!13068 () List!24371)

(assert (=> b!2140251 (= condSetEmpty!16317 (= (_1!14214 (_1!14215 (h!29688 mapDefault!13068))) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setIsEmpty!16317 () Bool)

(assert (=> setIsEmpty!16317 setRes!16317))

(declare-fun mapIsEmpty!13068 () Bool)

(declare-fun mapRes!13068 () Bool)

(assert (=> mapIsEmpty!13068 mapRes!13068))

(declare-fun tp!661543 () Bool)

(declare-fun setNonEmpty!16318 () Bool)

(declare-fun e!1366814 () Bool)

(declare-fun setElem!16318 () Context!2678)

(assert (=> setNonEmpty!16318 (= setRes!16317 (and tp!661543 (inv!31977 setElem!16318) e!1366814))))

(declare-fun setRest!16317 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16318 (= (_1!14214 (_1!14215 (h!29688 mapDefault!13068))) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16318 true) setRest!16317))))

(declare-fun b!2140252 () Bool)

(declare-fun tp!661548 () Bool)

(assert (=> b!2140252 (= e!1366814 tp!661548)))

(declare-fun setIsEmpty!16318 () Bool)

(assert (=> setIsEmpty!16318 setRes!16318))

(declare-fun b!2140253 () Bool)

(declare-fun tp!661549 () Bool)

(assert (=> b!2140253 (= e!1366816 tp!661549)))

(declare-fun mapNonEmpty!13068 () Bool)

(declare-fun tp!661547 () Bool)

(assert (=> mapNonEmpty!13068 (= mapRes!13068 (and tp!661547 e!1366815))))

(declare-fun mapRest!13068 () (Array (_ BitVec 32) List!24371))

(declare-fun mapKey!13068 () (_ BitVec 32))

(assert (=> mapNonEmpty!13068 (= mapRest!13063 (store mapRest!13068 mapKey!13068 mapValue!13068))))

(declare-fun condMapEmpty!13068 () Bool)

(assert (=> mapNonEmpty!13064 (= condMapEmpty!13068 (= mapRest!13063 ((as const (Array (_ BitVec 32) List!24371)) mapDefault!13068)))))

(assert (=> mapNonEmpty!13064 (= tp!661441 (and e!1366813 mapRes!13068))))

(assert (= (and mapNonEmpty!13064 condMapEmpty!13068) mapIsEmpty!13068))

(assert (= (and mapNonEmpty!13064 (not condMapEmpty!13068)) mapNonEmpty!13068))

(assert (= (and b!2140250 condSetEmpty!16318) setIsEmpty!16318))

(assert (= (and b!2140250 (not condSetEmpty!16318)) setNonEmpty!16317))

(assert (= setNonEmpty!16317 b!2140253))

(assert (= (and mapNonEmpty!13068 ((_ is Cons!24287) mapValue!13068)) b!2140250))

(assert (= (and b!2140251 condSetEmpty!16317) setIsEmpty!16317))

(assert (= (and b!2140251 (not condSetEmpty!16317)) setNonEmpty!16318))

(assert (= setNonEmpty!16318 b!2140252))

(assert (= (and mapNonEmpty!13064 ((_ is Cons!24287) mapDefault!13068)) b!2140251))

(declare-fun m!2586421 () Bool)

(assert (=> setNonEmpty!16317 m!2586421))

(declare-fun m!2586423 () Bool)

(assert (=> setNonEmpty!16318 m!2586423))

(declare-fun m!2586425 () Bool)

(assert (=> mapNonEmpty!13068 m!2586425))

(declare-fun b!2140255 () Bool)

(declare-fun e!1366817 () Bool)

(declare-fun tp!661551 () Bool)

(assert (=> b!2140255 (= e!1366817 tp!661551)))

(declare-fun setIsEmpty!16319 () Bool)

(declare-fun setRes!16319 () Bool)

(assert (=> setIsEmpty!16319 setRes!16319))

(declare-fun e!1366818 () Bool)

(assert (=> mapNonEmpty!13064 (= tp!661439 e!1366818)))

(declare-fun b!2140254 () Bool)

(declare-fun tp!661550 () Bool)

(assert (=> b!2140254 (= e!1366818 (and setRes!16319 tp!661550))))

(declare-fun condSetEmpty!16319 () Bool)

(assert (=> b!2140254 (= condSetEmpty!16319 (= (_1!14214 (_1!14215 (h!29688 mapValue!13063))) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setNonEmpty!16319 () Bool)

(declare-fun setElem!16319 () Context!2678)

(declare-fun tp!661552 () Bool)

(assert (=> setNonEmpty!16319 (= setRes!16319 (and tp!661552 (inv!31977 setElem!16319) e!1366817))))

(declare-fun setRest!16319 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16319 (= (_1!14214 (_1!14215 (h!29688 mapValue!13063))) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16319 true) setRest!16319))))

(assert (= (and b!2140254 condSetEmpty!16319) setIsEmpty!16319))

(assert (= (and b!2140254 (not condSetEmpty!16319)) setNonEmpty!16319))

(assert (= setNonEmpty!16319 b!2140255))

(assert (= (and mapNonEmpty!13064 ((_ is Cons!24287) mapValue!13063)) b!2140254))

(declare-fun m!2586427 () Bool)

(assert (=> setNonEmpty!16319 m!2586427))

(declare-fun b!2140256 () Bool)

(declare-fun e!1366821 () Bool)

(declare-fun tp!661554 () Bool)

(assert (=> b!2140256 (= e!1366821 tp!661554)))

(declare-fun tp!661555 () Bool)

(declare-fun setElem!16320 () Context!2678)

(declare-fun setNonEmpty!16320 () Bool)

(declare-fun setRes!16320 () Bool)

(assert (=> setNonEmpty!16320 (= setRes!16320 (and tp!661555 (inv!31977 setElem!16320) e!1366821))))

(declare-fun setRest!16320 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16320 (= (_2!14219 (h!29691 mapDefault!13065)) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16320 true) setRest!16320))))

(declare-fun b!2140257 () Bool)

(declare-fun e!1366819 () Bool)

(declare-fun tp!661553 () Bool)

(assert (=> b!2140257 (= e!1366819 tp!661553)))

(declare-fun e!1366820 () Bool)

(declare-fun b!2140258 () Bool)

(declare-fun tp!661556 () Bool)

(assert (=> b!2140258 (= e!1366820 (and (inv!31977 (_1!14218 (_1!14219 (h!29691 mapDefault!13065)))) e!1366819 tp_is_empty!9511 setRes!16320 tp!661556))))

(declare-fun condSetEmpty!16320 () Bool)

(assert (=> b!2140258 (= condSetEmpty!16320 (= (_2!14219 (h!29691 mapDefault!13065)) ((as const (Array Context!2678 Bool)) false)))))

(assert (=> b!2140078 (= tp!661450 e!1366820)))

(declare-fun setIsEmpty!16320 () Bool)

(assert (=> setIsEmpty!16320 setRes!16320))

(assert (= b!2140258 b!2140257))

(assert (= (and b!2140258 condSetEmpty!16320) setIsEmpty!16320))

(assert (= (and b!2140258 (not condSetEmpty!16320)) setNonEmpty!16320))

(assert (= setNonEmpty!16320 b!2140256))

(assert (= (and b!2140078 ((_ is Cons!24290) mapDefault!13065)) b!2140258))

(declare-fun m!2586429 () Bool)

(assert (=> setNonEmpty!16320 m!2586429))

(declare-fun m!2586431 () Bool)

(assert (=> b!2140258 m!2586431))

(declare-fun condSetEmpty!16323 () Bool)

(assert (=> setNonEmpty!16298 (= condSetEmpty!16323 (= setRest!16298 ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setRes!16323 () Bool)

(assert (=> setNonEmpty!16298 (= tp!661456 setRes!16323)))

(declare-fun setIsEmpty!16323 () Bool)

(assert (=> setIsEmpty!16323 setRes!16323))

(declare-fun setElem!16323 () Context!2678)

(declare-fun tp!661562 () Bool)

(declare-fun e!1366824 () Bool)

(declare-fun setNonEmpty!16323 () Bool)

(assert (=> setNonEmpty!16323 (= setRes!16323 (and tp!661562 (inv!31977 setElem!16323) e!1366824))))

(declare-fun setRest!16323 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16323 (= setRest!16298 ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16323 true) setRest!16323))))

(declare-fun b!2140263 () Bool)

(declare-fun tp!661561 () Bool)

(assert (=> b!2140263 (= e!1366824 tp!661561)))

(assert (= (and setNonEmpty!16298 condSetEmpty!16323) setIsEmpty!16323))

(assert (= (and setNonEmpty!16298 (not condSetEmpty!16323)) setNonEmpty!16323))

(assert (= setNonEmpty!16323 b!2140263))

(declare-fun m!2586433 () Bool)

(assert (=> setNonEmpty!16323 m!2586433))

(declare-fun e!1366836 () Bool)

(assert (=> b!2140052 (= tp!661457 e!1366836)))

(declare-fun b!2140274 () Bool)

(declare-fun e!1366835 () Bool)

(declare-fun tp!661572 () Bool)

(assert (=> b!2140274 (= e!1366835 tp!661572)))

(declare-fun e!1366834 () Bool)

(declare-fun tp!661574 () Bool)

(declare-fun b!2140275 () Bool)

(assert (=> b!2140275 (= e!1366836 (and (inv!31972 (h!29692 (t!196905 stack!8))) e!1366834 tp!661574))))

(declare-fun b!2140276 () Bool)

(declare-fun e!1366833 () Bool)

(declare-fun tp!661573 () Bool)

(assert (=> b!2140276 (= e!1366833 (and (inv!31971 (c!340507 (totalInput!3112 (h!29692 (t!196905 stack!8))))) tp!661573))))

(declare-fun b!2140277 () Bool)

(declare-fun setRes!16326 () Bool)

(assert (=> b!2140277 (= e!1366834 (and setRes!16326 (inv!31973 (totalInput!3112 (h!29692 (t!196905 stack!8)))) e!1366833))))

(declare-fun condSetEmpty!16326 () Bool)

(assert (=> b!2140277 (= condSetEmpty!16326 (= (z!5854 (h!29692 (t!196905 stack!8))) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setIsEmpty!16326 () Bool)

(assert (=> setIsEmpty!16326 setRes!16326))

(declare-fun setElem!16326 () Context!2678)

(declare-fun tp!661571 () Bool)

(declare-fun setNonEmpty!16326 () Bool)

(assert (=> setNonEmpty!16326 (= setRes!16326 (and tp!661571 (inv!31977 setElem!16326) e!1366835))))

(declare-fun setRest!16326 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16326 (= (z!5854 (h!29692 (t!196905 stack!8))) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16326 true) setRest!16326))))

(assert (= (and b!2140277 condSetEmpty!16326) setIsEmpty!16326))

(assert (= (and b!2140277 (not condSetEmpty!16326)) setNonEmpty!16326))

(assert (= setNonEmpty!16326 b!2140274))

(assert (= b!2140277 b!2140276))

(assert (= b!2140275 b!2140277))

(assert (= (and b!2140052 ((_ is Cons!24291) (t!196905 stack!8))) b!2140275))

(declare-fun m!2586435 () Bool)

(assert (=> b!2140275 m!2586435))

(declare-fun m!2586437 () Bool)

(assert (=> b!2140276 m!2586437))

(declare-fun m!2586439 () Bool)

(assert (=> b!2140277 m!2586439))

(declare-fun m!2586441 () Bool)

(assert (=> setNonEmpty!16326 m!2586441))

(declare-fun b!2140278 () Bool)

(declare-fun e!1366837 () Bool)

(declare-fun tp!661575 () Bool)

(declare-fun tp!661576 () Bool)

(assert (=> b!2140278 (= e!1366837 (and tp!661575 tp!661576))))

(assert (=> b!2140061 (= tp!661435 e!1366837)))

(assert (= (and b!2140061 ((_ is Cons!24286) (exprs!1839 setElem!16299))) b!2140278))

(declare-fun setNonEmpty!16331 () Bool)

(declare-fun e!1366851 () Bool)

(declare-fun tp!661601 () Bool)

(declare-fun setElem!16332 () Context!2678)

(declare-fun setRes!16332 () Bool)

(assert (=> setNonEmpty!16331 (= setRes!16332 (and tp!661601 (inv!31977 setElem!16332) e!1366851))))

(declare-fun mapValue!13071 () List!24374)

(declare-fun setRest!16331 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16331 (= (_2!14219 (h!29691 mapValue!13071)) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16332 true) setRest!16331))))

(declare-fun e!1366855 () Bool)

(declare-fun e!1366852 () Bool)

(declare-fun tp!661599 () Bool)

(declare-fun b!2140293 () Bool)

(assert (=> b!2140293 (= e!1366852 (and (inv!31977 (_1!14218 (_1!14219 (h!29691 mapValue!13071)))) e!1366855 tp_is_empty!9511 setRes!16332 tp!661599))))

(declare-fun condSetEmpty!16331 () Bool)

(assert (=> b!2140293 (= condSetEmpty!16331 (= (_2!14219 (h!29691 mapValue!13071)) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setElem!16331 () Context!2678)

(declare-fun setRes!16331 () Bool)

(declare-fun e!1366854 () Bool)

(declare-fun tp!661596 () Bool)

(declare-fun setNonEmpty!16332 () Bool)

(assert (=> setNonEmpty!16332 (= setRes!16331 (and tp!661596 (inv!31977 setElem!16331) e!1366854))))

(declare-fun mapDefault!13071 () List!24374)

(declare-fun setRest!16332 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16332 (= (_2!14219 (h!29691 mapDefault!13071)) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16331 true) setRest!16332))))

(declare-fun b!2140294 () Bool)

(declare-fun tp!661600 () Bool)

(assert (=> b!2140294 (= e!1366854 tp!661600)))

(declare-fun setIsEmpty!16331 () Bool)

(assert (=> setIsEmpty!16331 setRes!16332))

(declare-fun mapIsEmpty!13071 () Bool)

(declare-fun mapRes!13071 () Bool)

(assert (=> mapIsEmpty!13071 mapRes!13071))

(declare-fun b!2140295 () Bool)

(declare-fun tp!661598 () Bool)

(assert (=> b!2140295 (= e!1366851 tp!661598)))

(declare-fun mapNonEmpty!13071 () Bool)

(declare-fun tp!661597 () Bool)

(assert (=> mapNonEmpty!13071 (= mapRes!13071 (and tp!661597 e!1366852))))

(declare-fun mapKey!13071 () (_ BitVec 32))

(declare-fun mapRest!13071 () (Array (_ BitVec 32) List!24374))

(assert (=> mapNonEmpty!13071 (= mapRest!13065 (store mapRest!13071 mapKey!13071 mapValue!13071))))

(declare-fun b!2140296 () Bool)

(declare-fun e!1366850 () Bool)

(declare-fun tp!661603 () Bool)

(assert (=> b!2140296 (= e!1366850 tp!661603)))

(declare-fun tp!661595 () Bool)

(declare-fun b!2140297 () Bool)

(declare-fun e!1366853 () Bool)

(assert (=> b!2140297 (= e!1366853 (and (inv!31977 (_1!14218 (_1!14219 (h!29691 mapDefault!13071)))) e!1366850 tp_is_empty!9511 setRes!16331 tp!661595))))

(declare-fun condSetEmpty!16332 () Bool)

(assert (=> b!2140297 (= condSetEmpty!16332 (= (_2!14219 (h!29691 mapDefault!13071)) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setIsEmpty!16332 () Bool)

(assert (=> setIsEmpty!16332 setRes!16331))

(declare-fun condMapEmpty!13071 () Bool)

(assert (=> mapNonEmpty!13063 (= condMapEmpty!13071 (= mapRest!13065 ((as const (Array (_ BitVec 32) List!24374)) mapDefault!13071)))))

(assert (=> mapNonEmpty!13063 (= tp!661454 (and e!1366853 mapRes!13071))))

(declare-fun b!2140298 () Bool)

(declare-fun tp!661602 () Bool)

(assert (=> b!2140298 (= e!1366855 tp!661602)))

(assert (= (and mapNonEmpty!13063 condMapEmpty!13071) mapIsEmpty!13071))

(assert (= (and mapNonEmpty!13063 (not condMapEmpty!13071)) mapNonEmpty!13071))

(assert (= b!2140293 b!2140298))

(assert (= (and b!2140293 condSetEmpty!16331) setIsEmpty!16331))

(assert (= (and b!2140293 (not condSetEmpty!16331)) setNonEmpty!16331))

(assert (= setNonEmpty!16331 b!2140295))

(assert (= (and mapNonEmpty!13071 ((_ is Cons!24290) mapValue!13071)) b!2140293))

(assert (= b!2140297 b!2140296))

(assert (= (and b!2140297 condSetEmpty!16332) setIsEmpty!16332))

(assert (= (and b!2140297 (not condSetEmpty!16332)) setNonEmpty!16332))

(assert (= setNonEmpty!16332 b!2140294))

(assert (= (and mapNonEmpty!13063 ((_ is Cons!24290) mapDefault!13071)) b!2140297))

(declare-fun m!2586443 () Bool)

(assert (=> b!2140293 m!2586443))

(declare-fun m!2586445 () Bool)

(assert (=> mapNonEmpty!13071 m!2586445))

(declare-fun m!2586447 () Bool)

(assert (=> setNonEmpty!16331 m!2586447))

(declare-fun m!2586449 () Bool)

(assert (=> setNonEmpty!16332 m!2586449))

(declare-fun m!2586451 () Bool)

(assert (=> b!2140297 m!2586451))

(declare-fun b!2140299 () Bool)

(declare-fun e!1366858 () Bool)

(declare-fun tp!661605 () Bool)

(assert (=> b!2140299 (= e!1366858 tp!661605)))

(declare-fun setNonEmpty!16333 () Bool)

(declare-fun setElem!16333 () Context!2678)

(declare-fun setRes!16333 () Bool)

(declare-fun tp!661606 () Bool)

(assert (=> setNonEmpty!16333 (= setRes!16333 (and tp!661606 (inv!31977 setElem!16333) e!1366858))))

(declare-fun setRest!16333 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16333 (= (_2!14219 (h!29691 mapValue!13065)) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16333 true) setRest!16333))))

(declare-fun b!2140300 () Bool)

(declare-fun e!1366856 () Bool)

(declare-fun tp!661604 () Bool)

(assert (=> b!2140300 (= e!1366856 tp!661604)))

(declare-fun e!1366857 () Bool)

(declare-fun b!2140301 () Bool)

(declare-fun tp!661607 () Bool)

(assert (=> b!2140301 (= e!1366857 (and (inv!31977 (_1!14218 (_1!14219 (h!29691 mapValue!13065)))) e!1366856 tp_is_empty!9511 setRes!16333 tp!661607))))

(declare-fun condSetEmpty!16333 () Bool)

(assert (=> b!2140301 (= condSetEmpty!16333 (= (_2!14219 (h!29691 mapValue!13065)) ((as const (Array Context!2678 Bool)) false)))))

(assert (=> mapNonEmpty!13063 (= tp!661440 e!1366857)))

(declare-fun setIsEmpty!16333 () Bool)

(assert (=> setIsEmpty!16333 setRes!16333))

(assert (= b!2140301 b!2140300))

(assert (= (and b!2140301 condSetEmpty!16333) setIsEmpty!16333))

(assert (= (and b!2140301 (not condSetEmpty!16333)) setNonEmpty!16333))

(assert (= setNonEmpty!16333 b!2140299))

(assert (= (and mapNonEmpty!13063 ((_ is Cons!24290) mapValue!13065)) b!2140301))

(declare-fun m!2586453 () Bool)

(assert (=> setNonEmpty!16333 m!2586453))

(declare-fun m!2586455 () Bool)

(assert (=> b!2140301 m!2586455))

(declare-fun b!2140316 () Bool)

(declare-fun tp!661638 () Bool)

(declare-fun e!1366872 () Bool)

(declare-fun mapDefault!13074 () List!24373)

(declare-fun setRes!16338 () Bool)

(declare-fun e!1366876 () Bool)

(declare-fun tp!661633 () Bool)

(assert (=> b!2140316 (= e!1366872 (and tp!661633 (inv!31977 (_2!14216 (_1!14217 (h!29690 mapDefault!13074)))) e!1366876 tp_is_empty!9511 setRes!16338 tp!661638))))

(declare-fun condSetEmpty!16338 () Bool)

(assert (=> b!2140316 (= condSetEmpty!16338 (= (_2!14217 (h!29690 mapDefault!13074)) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setIsEmpty!16338 () Bool)

(declare-fun setRes!16339 () Bool)

(assert (=> setIsEmpty!16338 setRes!16339))

(declare-fun setElem!16338 () Context!2678)

(declare-fun setNonEmpty!16338 () Bool)

(declare-fun tp!661635 () Bool)

(declare-fun e!1366874 () Bool)

(assert (=> setNonEmpty!16338 (= setRes!16339 (and tp!661635 (inv!31977 setElem!16338) e!1366874))))

(declare-fun mapValue!13074 () List!24373)

(declare-fun setRest!16338 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16338 (= (_2!14217 (h!29690 mapValue!13074)) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16338 true) setRest!16338))))

(declare-fun b!2140317 () Bool)

(declare-fun tp!661639 () Bool)

(assert (=> b!2140317 (= e!1366876 tp!661639)))

(declare-fun b!2140318 () Bool)

(declare-fun e!1366875 () Bool)

(declare-fun tp!661630 () Bool)

(assert (=> b!2140318 (= e!1366875 tp!661630)))

(declare-fun condMapEmpty!13074 () Bool)

(assert (=> mapNonEmpty!13065 (= condMapEmpty!13074 (= mapRest!13064 ((as const (Array (_ BitVec 32) List!24373)) mapDefault!13074)))))

(declare-fun mapRes!13074 () Bool)

(assert (=> mapNonEmpty!13065 (= tp!661434 (and e!1366872 mapRes!13074))))

(declare-fun tp!661634 () Bool)

(declare-fun e!1366873 () Bool)

(declare-fun b!2140319 () Bool)

(declare-fun tp!661631 () Bool)

(assert (=> b!2140319 (= e!1366873 (and tp!661634 (inv!31977 (_2!14216 (_1!14217 (h!29690 mapValue!13074)))) e!1366875 tp_is_empty!9511 setRes!16339 tp!661631))))

(declare-fun condSetEmpty!16339 () Bool)

(assert (=> b!2140319 (= condSetEmpty!16339 (= (_2!14217 (h!29690 mapValue!13074)) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setIsEmpty!16339 () Bool)

(assert (=> setIsEmpty!16339 setRes!16338))

(declare-fun b!2140320 () Bool)

(declare-fun e!1366871 () Bool)

(declare-fun tp!661632 () Bool)

(assert (=> b!2140320 (= e!1366871 tp!661632)))

(declare-fun mapNonEmpty!13074 () Bool)

(declare-fun tp!661636 () Bool)

(assert (=> mapNonEmpty!13074 (= mapRes!13074 (and tp!661636 e!1366873))))

(declare-fun mapKey!13074 () (_ BitVec 32))

(declare-fun mapRest!13074 () (Array (_ BitVec 32) List!24373))

(assert (=> mapNonEmpty!13074 (= mapRest!13064 (store mapRest!13074 mapKey!13074 mapValue!13074))))

(declare-fun b!2140321 () Bool)

(declare-fun tp!661640 () Bool)

(assert (=> b!2140321 (= e!1366874 tp!661640)))

(declare-fun tp!661637 () Bool)

(declare-fun setNonEmpty!16339 () Bool)

(declare-fun setElem!16339 () Context!2678)

(assert (=> setNonEmpty!16339 (= setRes!16338 (and tp!661637 (inv!31977 setElem!16339) e!1366871))))

(declare-fun setRest!16339 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16339 (= (_2!14217 (h!29690 mapDefault!13074)) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16339 true) setRest!16339))))

(declare-fun mapIsEmpty!13074 () Bool)

(assert (=> mapIsEmpty!13074 mapRes!13074))

(assert (= (and mapNonEmpty!13065 condMapEmpty!13074) mapIsEmpty!13074))

(assert (= (and mapNonEmpty!13065 (not condMapEmpty!13074)) mapNonEmpty!13074))

(assert (= b!2140319 b!2140318))

(assert (= (and b!2140319 condSetEmpty!16339) setIsEmpty!16338))

(assert (= (and b!2140319 (not condSetEmpty!16339)) setNonEmpty!16338))

(assert (= setNonEmpty!16338 b!2140321))

(assert (= (and mapNonEmpty!13074 ((_ is Cons!24289) mapValue!13074)) b!2140319))

(assert (= b!2140316 b!2140317))

(assert (= (and b!2140316 condSetEmpty!16338) setIsEmpty!16339))

(assert (= (and b!2140316 (not condSetEmpty!16338)) setNonEmpty!16339))

(assert (= setNonEmpty!16339 b!2140320))

(assert (= (and mapNonEmpty!13065 ((_ is Cons!24289) mapDefault!13074)) b!2140316))

(declare-fun m!2586457 () Bool)

(assert (=> b!2140319 m!2586457))

(declare-fun m!2586459 () Bool)

(assert (=> setNonEmpty!16338 m!2586459))

(declare-fun m!2586461 () Bool)

(assert (=> setNonEmpty!16339 m!2586461))

(declare-fun m!2586463 () Bool)

(assert (=> mapNonEmpty!13074 m!2586463))

(declare-fun m!2586465 () Bool)

(assert (=> b!2140316 m!2586465))

(declare-fun e!1366879 () Bool)

(assert (=> mapNonEmpty!13065 (= tp!661444 e!1366879)))

(declare-fun e!1366878 () Bool)

(declare-fun tp!661641 () Bool)

(declare-fun b!2140322 () Bool)

(declare-fun tp!661645 () Bool)

(declare-fun setRes!16340 () Bool)

(assert (=> b!2140322 (= e!1366879 (and tp!661641 (inv!31977 (_2!14216 (_1!14217 (h!29690 mapValue!13064)))) e!1366878 tp_is_empty!9511 setRes!16340 tp!661645))))

(declare-fun condSetEmpty!16340 () Bool)

(assert (=> b!2140322 (= condSetEmpty!16340 (= (_2!14217 (h!29690 mapValue!13064)) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setElem!16340 () Context!2678)

(declare-fun setNonEmpty!16340 () Bool)

(declare-fun e!1366877 () Bool)

(declare-fun tp!661642 () Bool)

(assert (=> setNonEmpty!16340 (= setRes!16340 (and tp!661642 (inv!31977 setElem!16340) e!1366877))))

(declare-fun setRest!16340 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16340 (= (_2!14217 (h!29690 mapValue!13064)) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16340 true) setRest!16340))))

(declare-fun setIsEmpty!16340 () Bool)

(assert (=> setIsEmpty!16340 setRes!16340))

(declare-fun b!2140323 () Bool)

(declare-fun tp!661643 () Bool)

(assert (=> b!2140323 (= e!1366877 tp!661643)))

(declare-fun b!2140324 () Bool)

(declare-fun tp!661644 () Bool)

(assert (=> b!2140324 (= e!1366878 tp!661644)))

(assert (= b!2140322 b!2140324))

(assert (= (and b!2140322 condSetEmpty!16340) setIsEmpty!16340))

(assert (= (and b!2140322 (not condSetEmpty!16340)) setNonEmpty!16340))

(assert (= setNonEmpty!16340 b!2140323))

(assert (= (and mapNonEmpty!13065 ((_ is Cons!24289) mapValue!13064)) b!2140322))

(declare-fun m!2586467 () Bool)

(assert (=> b!2140322 m!2586467))

(declare-fun m!2586469 () Bool)

(assert (=> setNonEmpty!16340 m!2586469))

(declare-fun condSetEmpty!16341 () Bool)

(assert (=> setNonEmpty!16299 (= condSetEmpty!16341 (= setRest!16299 ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setRes!16341 () Bool)

(assert (=> setNonEmpty!16299 (= tp!661447 setRes!16341)))

(declare-fun setIsEmpty!16341 () Bool)

(assert (=> setIsEmpty!16341 setRes!16341))

(declare-fun setNonEmpty!16341 () Bool)

(declare-fun e!1366880 () Bool)

(declare-fun setElem!16341 () Context!2678)

(declare-fun tp!661647 () Bool)

(assert (=> setNonEmpty!16341 (= setRes!16341 (and tp!661647 (inv!31977 setElem!16341) e!1366880))))

(declare-fun setRest!16341 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16341 (= setRest!16299 ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16341 true) setRest!16341))))

(declare-fun b!2140325 () Bool)

(declare-fun tp!661646 () Bool)

(assert (=> b!2140325 (= e!1366880 tp!661646)))

(assert (= (and setNonEmpty!16299 condSetEmpty!16341) setIsEmpty!16341))

(assert (= (and setNonEmpty!16299 (not condSetEmpty!16341)) setNonEmpty!16341))

(assert (= setNonEmpty!16341 b!2140325))

(declare-fun m!2586471 () Bool)

(assert (=> setNonEmpty!16341 m!2586471))

(declare-fun b!2140327 () Bool)

(declare-fun e!1366881 () Bool)

(declare-fun tp!661649 () Bool)

(assert (=> b!2140327 (= e!1366881 tp!661649)))

(declare-fun setIsEmpty!16342 () Bool)

(declare-fun setRes!16342 () Bool)

(assert (=> setIsEmpty!16342 setRes!16342))

(declare-fun e!1366882 () Bool)

(assert (=> b!2140068 (= tp!661429 e!1366882)))

(declare-fun b!2140326 () Bool)

(declare-fun tp!661648 () Bool)

(assert (=> b!2140326 (= e!1366882 (and setRes!16342 tp!661648))))

(declare-fun condSetEmpty!16342 () Bool)

(assert (=> b!2140326 (= condSetEmpty!16342 (= (_1!14214 (_1!14215 (h!29688 mapDefault!13063))) ((as const (Array Context!2678 Bool)) false)))))

(declare-fun setNonEmpty!16342 () Bool)

(declare-fun setElem!16342 () Context!2678)

(declare-fun tp!661650 () Bool)

(assert (=> setNonEmpty!16342 (= setRes!16342 (and tp!661650 (inv!31977 setElem!16342) e!1366881))))

(declare-fun setRest!16342 () (InoxSet Context!2678))

(assert (=> setNonEmpty!16342 (= (_1!14214 (_1!14215 (h!29688 mapDefault!13063))) ((_ map or) (store ((as const (Array Context!2678 Bool)) false) setElem!16342 true) setRest!16342))))

(assert (= (and b!2140326 condSetEmpty!16342) setIsEmpty!16342))

(assert (= (and b!2140326 (not condSetEmpty!16342)) setNonEmpty!16342))

(assert (= setNonEmpty!16342 b!2140327))

(assert (= (and b!2140068 ((_ is Cons!24287) mapDefault!13063)) b!2140326))

(declare-fun m!2586473 () Bool)

(assert (=> setNonEmpty!16342 m!2586473))

(declare-fun b!2140328 () Bool)

(declare-fun e!1366883 () Bool)

(declare-fun tp!661653 () Bool)

(declare-fun tp!661652 () Bool)

(assert (=> b!2140328 (= e!1366883 (and (inv!31971 (left!18688 (c!340507 (totalInput!3112 (h!29692 stack!8))))) tp!661653 (inv!31971 (right!19018 (c!340507 (totalInput!3112 (h!29692 stack!8))))) tp!661652))))

(declare-fun b!2140330 () Bool)

(declare-fun e!1366884 () Bool)

(declare-fun tp!661651 () Bool)

(assert (=> b!2140330 (= e!1366884 tp!661651)))

(declare-fun b!2140329 () Bool)

(assert (=> b!2140329 (= e!1366883 (and (inv!31980 (xs!10849 (c!340507 (totalInput!3112 (h!29692 stack!8))))) e!1366884))))

(assert (=> b!2140069 (= tp!661442 (and (inv!31971 (c!340507 (totalInput!3112 (h!29692 stack!8)))) e!1366883))))

(assert (= (and b!2140069 ((_ is Node!7907) (c!340507 (totalInput!3112 (h!29692 stack!8))))) b!2140328))

(assert (= b!2140329 b!2140330))

(assert (= (and b!2140069 ((_ is Leaf!11559) (c!340507 (totalInput!3112 (h!29692 stack!8))))) b!2140329))

(declare-fun m!2586475 () Bool)

(assert (=> b!2140328 m!2586475))

(declare-fun m!2586477 () Bool)

(assert (=> b!2140328 m!2586477))

(declare-fun m!2586479 () Bool)

(assert (=> b!2140329 m!2586479))

(assert (=> b!2140069 m!2586247))

(declare-fun b_lambda!70641 () Bool)

(assert (= b_lambda!70637 (or b!2140073 b_lambda!70641)))

(declare-fun bs!445160 () Bool)

(declare-fun d!644838 () Bool)

(assert (= bs!445160 (and d!644838 b!2140073)))

(assert (=> bs!445160 (= (dynLambda!11371 lambda!79987 (h!29692 stack!8)) (= (res!924141 (h!29692 stack!8)) lt!797965))))

(assert (=> b!2140132 d!644838))

(declare-fun b_lambda!70643 () Bool)

(assert (= b_lambda!70639 (or b!2140058 b_lambda!70643)))

(declare-fun bs!445161 () Bool)

(declare-fun d!644840 () Bool)

(assert (= bs!445161 (and d!644840 b!2140058)))

(assert (=> bs!445161 (= (dynLambda!11371 lambda!79988 (h!29692 stack!8)) (= (totalInput!3112 (h!29692 stack!8)) totalInput!851))))

(assert (=> b!2140166 d!644840))

(check-sat (not b!2140123) (not b!2140277) (not setNonEmpty!16320) (not b_next!63591) (not b!2140200) (not b!2140127) (not b!2140298) (not b!2140136) (not b!2140319) (not setNonEmpty!16333) (not b!2140236) (not d!644830) (not d!644818) (not setNonEmpty!16338) (not b!2140327) (not b!2140205) (not setNonEmpty!16311) (not b!2140253) (not b!2140316) (not b_lambda!70641) b_and!172473 (not b!2140322) (not b!2140179) (not b!2140320) (not b!2140069) (not b!2140159) (not b_next!63593) (not b!2140274) (not d!644784) (not b!2140295) (not b_lambda!70643) (not d!644802) (not b!2140220) (not b!2140252) (not b!2140221) (not setNonEmpty!16342) (not b!2140251) (not b!2140257) b_and!172471 (not b!2140189) (not b!2140165) tp_is_empty!9511 (not b!2140299) (not mapNonEmpty!13074) (not b!2140330) (not d!644820) (not setNonEmpty!16323) (not b!2140103) (not b!2140324) (not b!2140318) (not b!2140258) (not b!2140201) (not b_next!63597) (not b!2140116) (not b!2140256) (not b!2140164) (not b!2140177) (not b!2140100) (not bm!128802) (not b!2140239) (not mapNonEmpty!13068) (not b!2140134) (not b!2140328) (not setNonEmpty!16317) (not b!2140329) (not d!644810) (not d!644836) (not d!644782) (not mapNonEmpty!13071) (not b!2140297) (not b!2140133) (not b!2140300) b_and!172469 (not b!2140250) (not setNonEmpty!16339) (not b!2140141) (not b!2140224) (not b!2140209) (not b!2140098) (not b!2140048) (not b!2140293) (not setNonEmpty!16331) (not setNonEmpty!16318) (not b!2140203) (not b!2140170) (not setNonEmpty!16326) (not setNonEmpty!16304) b_and!172475 (not setNonEmpty!16302) (not b!2140325) (not setNonEmpty!16308) (not b!2140219) (not b!2140101) (not b!2140188) (not d!644780) (not b!2140229) (not b!2140207) (not b!2140263) (not b!2140199) (not b!2140254) (not b!2140321) (not b_next!63595) (not b!2140206) (not bm!128801) (not setNonEmpty!16319) (not d!644834) (not d!644800) (not b!2140124) (not b!2140157) (not b!2140114) (not setNonEmpty!16307) (not b!2140275) (not b_next!63589) (not b!2140066) (not b!2140323) (not setNonEmpty!16341) (not b!2140202) (not b!2140301) (not b!2140317) (not b!2140255) (not b!2140276) b_and!172467 (not setNonEmpty!16303) (not d!644798) (not b!2140237) (not setNonEmpty!16340) (not b!2140173) (not b!2140223) (not d!644808) b_and!172465 (not setNonEmpty!16312) (not b!2140326) (not b!2140155) (not d!644814) (not b!2140278) (not b!2140238) (not b!2140294) (not b!2140167) (not b!2140190) (not b!2140208) (not d!644816) (not b!2140176) (not b_next!63599) (not b!2140296) (not b!2140154) (not b!2140210) (not b!2140222) (not setNonEmpty!16332) (not b!2140204))
(check-sat (not b_next!63591) b_and!172473 (not b_next!63593) b_and!172471 (not b_next!63597) b_and!172469 b_and!172475 (not b_next!63595) (not b_next!63589) b_and!172467 b_and!172465 (not b_next!63599))
