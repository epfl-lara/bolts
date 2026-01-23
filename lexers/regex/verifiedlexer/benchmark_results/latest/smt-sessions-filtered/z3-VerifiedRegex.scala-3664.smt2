; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208112 () Bool)

(assert start!208112)

(declare-fun b!2144674 () Bool)

(declare-fun b_free!63197 () Bool)

(declare-fun b_next!63901 () Bool)

(assert (=> b!2144674 (= b_free!63197 (not b_next!63901))))

(declare-fun tp!664696 () Bool)

(declare-fun b_and!172777 () Bool)

(assert (=> b!2144674 (= tp!664696 b_and!172777)))

(declare-fun b!2144683 () Bool)

(declare-fun b_free!63199 () Bool)

(declare-fun b_next!63903 () Bool)

(assert (=> b!2144683 (= b_free!63199 (not b_next!63903))))

(declare-fun tp!664679 () Bool)

(declare-fun b_and!172779 () Bool)

(assert (=> b!2144683 (= tp!664679 b_and!172779)))

(declare-fun b!2144671 () Bool)

(declare-fun b_free!63201 () Bool)

(declare-fun b_next!63905 () Bool)

(assert (=> b!2144671 (= b_free!63201 (not b_next!63905))))

(declare-fun tp!664691 () Bool)

(declare-fun b_and!172781 () Bool)

(assert (=> b!2144671 (= tp!664691 b_and!172781)))

(declare-fun b!2144699 () Bool)

(declare-fun b_free!63203 () Bool)

(declare-fun b_next!63907 () Bool)

(assert (=> b!2144699 (= b_free!63203 (not b_next!63907))))

(declare-fun tp!664680 () Bool)

(declare-fun b_and!172783 () Bool)

(assert (=> b!2144699 (= tp!664680 b_and!172783)))

(declare-fun b!2144679 () Bool)

(declare-fun b_free!63205 () Bool)

(declare-fun b_next!63909 () Bool)

(assert (=> b!2144679 (= b_free!63205 (not b_next!63909))))

(declare-fun tp!664673 () Bool)

(declare-fun b_and!172785 () Bool)

(assert (=> b!2144679 (= tp!664673 b_and!172785)))

(declare-fun b!2144667 () Bool)

(declare-fun b_free!63207 () Bool)

(declare-fun b_next!63911 () Bool)

(assert (=> b!2144667 (= b_free!63207 (not b_next!63911))))

(declare-fun tp!664684 () Bool)

(declare-fun b_and!172787 () Bool)

(assert (=> b!2144667 (= tp!664684 b_and!172787)))

(declare-fun b!2144669 () Bool)

(assert (=> b!2144669 true))

(declare-fun bs!445338 () Bool)

(declare-fun b!2144670 () Bool)

(assert (= bs!445338 (and b!2144670 b!2144669)))

(declare-fun lambda!80419 () Int)

(declare-fun lambda!80418 () Int)

(assert (=> bs!445338 (not (= lambda!80419 lambda!80418))))

(assert (=> b!2144670 true))

(declare-fun b!2144661 () Bool)

(declare-fun res!925519 () Bool)

(declare-fun e!1370537 () Bool)

(assert (=> b!2144661 (=> res!925519 e!1370537)))

(declare-fun from!1043 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2144661 (= res!925519 (= from!1043 totalInputSize!296))))

(declare-fun b!2144662 () Bool)

(declare-fun e!1370519 () Bool)

(declare-fun e!1370508 () Bool)

(assert (=> b!2144662 (= e!1370519 e!1370508)))

(declare-fun res!925511 () Bool)

(assert (=> b!2144662 (=> (not res!925511) (not e!1370508))))

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!798646 () Int)

(assert (=> b!2144662 (= res!925511 (and (= totalInputSize!296 lt!798646) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-datatypes ((C!11736 0))(
  ( (C!11737 (val!6854 Int)) )
))
(declare-datatypes ((List!24515 0))(
  ( (Nil!24431) (Cons!24431 (h!29832 C!11736) (t!197045 List!24515)) )
))
(declare-datatypes ((IArray!15867 0))(
  ( (IArray!15868 (innerList!7991 List!24515)) )
))
(declare-datatypes ((Conc!7931 0))(
  ( (Node!7931 (left!18777 Conc!7931) (right!19107 Conc!7931) (csize!16092 Int) (cheight!8142 Int)) (Leaf!11596 (xs!10873 IArray!15867) (csize!16093 Int)) (Empty!7931) )
))
(declare-datatypes ((BalanceConc!15624 0))(
  ( (BalanceConc!15625 (c!340703 Conc!7931)) )
))
(declare-fun totalInput!851 () BalanceConc!15624)

(declare-fun size!19124 (BalanceConc!15624) Int)

(assert (=> b!2144662 (= lt!798646 (size!19124 totalInput!851))))

(declare-fun setIsEmpty!16669 () Bool)

(declare-fun setRes!16670 () Bool)

(assert (=> setIsEmpty!16669 setRes!16670))

(declare-fun b!2144663 () Bool)

(declare-fun e!1370521 () Int)

(assert (=> b!2144663 (= e!1370521 lastNullablePos!123)))

(declare-fun mapIsEmpty!13342 () Bool)

(declare-fun mapRes!13342 () Bool)

(assert (=> mapIsEmpty!13342 mapRes!13342))

(declare-fun b!2144664 () Bool)

(declare-fun res!925509 () Bool)

(assert (=> b!2144664 (=> (not res!925509) (not e!1370508))))

(declare-datatypes ((Regex!5795 0))(
  ( (ElementMatch!5795 (c!340704 C!11736)) (Concat!10097 (regOne!12102 Regex!5795) (regTwo!12102 Regex!5795)) (EmptyExpr!5795) (Star!5795 (reg!6124 Regex!5795)) (EmptyLang!5795) (Union!5795 (regOne!12103 Regex!5795) (regTwo!12103 Regex!5795)) )
))
(declare-datatypes ((List!24516 0))(
  ( (Nil!24432) (Cons!24432 (h!29833 Regex!5795) (t!197046 List!24516)) )
))
(declare-datatypes ((Context!2730 0))(
  ( (Context!2731 (exprs!1865 List!24516)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3494 0))(
  ( (tuple3!3495 (_1!14361 (InoxSet Context!2730)) (_2!14361 Int) (_3!2217 Int)) )
))
(declare-datatypes ((tuple2!24288 0))(
  ( (tuple2!24289 (_1!14362 tuple3!3494) (_2!14362 Int)) )
))
(declare-datatypes ((List!24517 0))(
  ( (Nil!24433) (Cons!24433 (h!29834 tuple2!24288) (t!197047 List!24517)) )
))
(declare-datatypes ((array!9455 0))(
  ( (array!9456 (arr!4221 (Array (_ BitVec 32) (_ BitVec 64))) (size!19125 (_ BitVec 32))) )
))
(declare-datatypes ((array!9457 0))(
  ( (array!9458 (arr!4222 (Array (_ BitVec 32) List!24517)) (size!19126 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5610 0))(
  ( (LongMapFixedSize!5611 (defaultEntry!3170 Int) (mask!7018 (_ BitVec 32)) (extraKeys!3053 (_ BitVec 32)) (zeroValue!3063 List!24517) (minValue!3063 List!24517) (_size!5661 (_ BitVec 32)) (_keys!3102 array!9455) (_values!3085 array!9457) (_vacant!2866 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11045 0))(
  ( (Cell!11046 (v!29023 LongMapFixedSize!5610)) )
))
(declare-datatypes ((MutLongMap!2805 0))(
  ( (LongMap!2805 (underlying!5805 Cell!11045)) (MutLongMapExt!2804 (__x!16591 Int)) )
))
(declare-datatypes ((Cell!11047 0))(
  ( (Cell!11048 (v!29024 MutLongMap!2805)) )
))
(declare-datatypes ((Hashable!2719 0))(
  ( (HashableExt!2718 (__x!16592 Int)) )
))
(declare-datatypes ((MutableMap!2719 0))(
  ( (MutableMapExt!2718 (__x!16593 Int)) (HashMap!2719 (underlying!5806 Cell!11047) (hashF!4642 Hashable!2719) (_size!5662 (_ BitVec 32)) (defaultValue!2881 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!828 0))(
  ( (CacheFurthestNullable!829 (cache!3100 MutableMap!2719) (totalInput!3160 BalanceConc!15624)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!828)

(declare-fun valid!2187 (CacheFurthestNullable!828) Bool)

(assert (=> b!2144664 (= res!925509 (valid!2187 cacheFurthestNullable!114))))

(declare-fun b!2144665 () Bool)

(declare-fun e!1370533 () Bool)

(declare-fun e!1370513 () Bool)

(declare-datatypes ((tuple2!24290 0))(
  ( (tuple2!24291 (_1!14363 Context!2730) (_2!14363 C!11736)) )
))
(declare-datatypes ((tuple2!24292 0))(
  ( (tuple2!24293 (_1!14364 tuple2!24290) (_2!14364 (InoxSet Context!2730))) )
))
(declare-datatypes ((List!24518 0))(
  ( (Nil!24434) (Cons!24434 (h!29835 tuple2!24292) (t!197048 List!24518)) )
))
(declare-datatypes ((array!9459 0))(
  ( (array!9460 (arr!4223 (Array (_ BitVec 32) List!24518)) (size!19127 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5612 0))(
  ( (LongMapFixedSize!5613 (defaultEntry!3171 Int) (mask!7019 (_ BitVec 32)) (extraKeys!3054 (_ BitVec 32)) (zeroValue!3064 List!24518) (minValue!3064 List!24518) (_size!5663 (_ BitVec 32)) (_keys!3103 array!9455) (_values!3086 array!9459) (_vacant!2867 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11049 0))(
  ( (Cell!11050 (v!29025 LongMapFixedSize!5612)) )
))
(declare-datatypes ((MutLongMap!2806 0))(
  ( (LongMap!2806 (underlying!5807 Cell!11049)) (MutLongMapExt!2805 (__x!16594 Int)) )
))
(declare-fun lt!798649 () MutLongMap!2806)

(get-info :version)

(assert (=> b!2144665 (= e!1370533 (and e!1370513 ((_ is LongMap!2806) lt!798649)))))

(declare-datatypes ((Cell!11051 0))(
  ( (Cell!11052 (v!29026 MutLongMap!2806)) )
))
(declare-datatypes ((Hashable!2720 0))(
  ( (HashableExt!2719 (__x!16595 Int)) )
))
(declare-datatypes ((MutableMap!2720 0))(
  ( (MutableMapExt!2719 (__x!16596 Int)) (HashMap!2720 (underlying!5808 Cell!11051) (hashF!4643 Hashable!2720) (_size!5664 (_ BitVec 32)) (defaultValue!2882 Int)) )
))
(declare-datatypes ((CacheUp!1870 0))(
  ( (CacheUp!1871 (cache!3101 MutableMap!2720)) )
))
(declare-fun cacheUp!979 () CacheUp!1870)

(assert (=> b!2144665 (= lt!798649 (v!29026 (underlying!5808 (cache!3101 cacheUp!979))))))

(declare-fun b!2144666 () Bool)

(declare-fun e!1370514 () Bool)

(declare-fun tp!664676 () Bool)

(declare-fun inv!32149 (Conc!7931) Bool)

(assert (=> b!2144666 (= e!1370514 (and (inv!32149 (c!340703 (totalInput!3160 cacheFurthestNullable!114))) tp!664676))))

(declare-fun e!1370525 () Bool)

(declare-fun e!1370526 () Bool)

(assert (=> b!2144667 (= e!1370525 (and e!1370526 tp!664684))))

(declare-fun setRes!16669 () Bool)

(declare-fun tp!664695 () Bool)

(declare-fun setNonEmpty!16669 () Bool)

(declare-fun e!1370527 () Bool)

(declare-fun setElem!16669 () Context!2730)

(declare-fun inv!32150 (Context!2730) Bool)

(assert (=> setNonEmpty!16669 (= setRes!16669 (and tp!664695 (inv!32150 setElem!16669) e!1370527))))

(declare-fun z!3839 () (InoxSet Context!2730))

(declare-fun setRest!16669 () (InoxSet Context!2730))

(assert (=> setNonEmpty!16669 (= z!3839 ((_ map or) (store ((as const (Array Context!2730 Bool)) false) setElem!16669 true) setRest!16669))))

(declare-fun b!2144668 () Bool)

(declare-fun e!1370506 () Bool)

(declare-fun tp!664681 () Bool)

(assert (=> b!2144668 (= e!1370506 (and (inv!32149 (c!340703 totalInput!851)) tp!664681))))

(declare-fun e!1370507 () Bool)

(assert (=> b!2144669 (= e!1370508 e!1370507)))

(declare-fun res!925521 () Bool)

(assert (=> b!2144669 (=> (not res!925521) (not e!1370507))))

(declare-datatypes ((StackFrame!258 0))(
  ( (StackFrame!259 (z!5898 (InoxSet Context!2730)) (from!2762 Int) (lastNullablePos!449 Int) (res!925522 Int) (totalInput!3161 BalanceConc!15624)) )
))
(declare-datatypes ((List!24519 0))(
  ( (Nil!24435) (Cons!24435 (h!29836 StackFrame!258) (t!197049 List!24519)) )
))
(declare-fun stack!8 () List!24519)

(declare-fun forall!4989 (List!24519 Int) Bool)

(assert (=> b!2144669 (= res!925521 (forall!4989 stack!8 lambda!80418))))

(declare-fun lt!798647 () Int)

(declare-fun furthestNullablePosition!89 ((InoxSet Context!2730) Int BalanceConc!15624 Int Int) Int)

(assert (=> b!2144669 (= lt!798647 (furthestNullablePosition!89 z!3839 from!1043 totalInput!851 lt!798646 lastNullablePos!123))))

(declare-fun res!925520 () Bool)

(assert (=> b!2144670 (=> (not res!925520) (not e!1370507))))

(assert (=> b!2144670 (= res!925520 (forall!4989 stack!8 lambda!80419))))

(declare-fun e!1370531 () Bool)

(declare-fun tp!664677 () Bool)

(declare-fun tp!664685 () Bool)

(declare-fun e!1370536 () Bool)

(declare-fun array_inv!3020 (array!9455) Bool)

(declare-fun array_inv!3021 (array!9459) Bool)

(assert (=> b!2144671 (= e!1370531 (and tp!664691 tp!664677 tp!664685 (array_inv!3020 (_keys!3103 (v!29025 (underlying!5807 (v!29026 (underlying!5808 (cache!3101 cacheUp!979))))))) (array_inv!3021 (_values!3086 (v!29025 (underlying!5807 (v!29026 (underlying!5808 (cache!3101 cacheUp!979))))))) e!1370536))))

(declare-fun b!2144672 () Bool)

(declare-fun e!1370510 () Bool)

(declare-fun tp!664672 () Bool)

(declare-fun mapRes!13344 () Bool)

(assert (=> b!2144672 (= e!1370510 (and tp!664672 mapRes!13344))))

(declare-fun condMapEmpty!13343 () Bool)

(declare-fun mapDefault!13343 () List!24517)

(assert (=> b!2144672 (= condMapEmpty!13343 (= (arr!4222 (_values!3085 (v!29023 (underlying!5805 (v!29024 (underlying!5806 (cache!3100 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24517)) mapDefault!13343)))))

(declare-fun b!2144673 () Bool)

(declare-fun e!1370505 () Bool)

(declare-fun e!1370512 () Bool)

(declare-fun lt!798648 () MutLongMap!2805)

(assert (=> b!2144673 (= e!1370505 (and e!1370512 ((_ is LongMap!2805) lt!798648)))))

(assert (=> b!2144673 (= lt!798648 (v!29024 (underlying!5806 (cache!3100 cacheFurthestNullable!114))))))

(declare-fun e!1370534 () Bool)

(assert (=> b!2144674 (= e!1370534 (and e!1370533 tp!664696))))

(declare-fun b!2144675 () Bool)

(declare-fun res!925517 () Bool)

(assert (=> b!2144675 (=> res!925517 e!1370537)))

(declare-fun lostCauseZipper!126 ((InoxSet Context!2730)) Bool)

(assert (=> b!2144675 (= res!925517 (lostCauseZipper!126 z!3839))))

(declare-fun e!1370529 () Bool)

(declare-fun tp!664699 () Bool)

(declare-fun setNonEmpty!16670 () Bool)

(declare-fun setElem!16670 () Context!2730)

(assert (=> setNonEmpty!16670 (= setRes!16670 (and tp!664699 (inv!32150 setElem!16670) e!1370529))))

(declare-fun setRest!16670 () (InoxSet Context!2730))

(assert (=> setNonEmpty!16670 (= (z!5898 (h!29836 stack!8)) ((_ map or) (store ((as const (Array Context!2730 Bool)) false) setElem!16670 true) setRest!16670))))

(declare-fun b!2144676 () Bool)

(declare-fun res!925514 () Bool)

(assert (=> b!2144676 (=> (not res!925514) (not e!1370508))))

(assert (=> b!2144676 (= res!925514 (= (totalInput!3160 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2144677 () Bool)

(declare-fun e!1370516 () Bool)

(assert (=> b!2144677 (= e!1370516 e!1370531)))

(declare-fun b!2144678 () Bool)

(declare-fun e!1370502 () Bool)

(declare-fun e!1370522 () Bool)

(assert (=> b!2144678 (= e!1370502 e!1370522)))

(declare-fun e!1370511 () Bool)

(assert (=> b!2144679 (= e!1370511 (and e!1370505 tp!664673))))

(declare-fun b!2144680 () Bool)

(declare-fun tp!664678 () Bool)

(declare-fun mapRes!13343 () Bool)

(assert (=> b!2144680 (= e!1370536 (and tp!664678 mapRes!13343))))

(declare-fun condMapEmpty!13344 () Bool)

(declare-fun mapDefault!13344 () List!24518)

(assert (=> b!2144680 (= condMapEmpty!13344 (= (arr!4223 (_values!3086 (v!29025 (underlying!5807 (v!29026 (underlying!5808 (cache!3101 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24518)) mapDefault!13344)))))

(declare-fun setIsEmpty!16670 () Bool)

(assert (=> setIsEmpty!16670 setRes!16669))

(declare-fun b!2144681 () Bool)

(declare-fun e!1370517 () Bool)

(assert (=> b!2144681 (= e!1370517 e!1370525)))

(declare-fun res!925518 () Bool)

(assert (=> start!208112 (=> (not res!925518) (not e!1370519))))

(assert (=> start!208112 (= res!925518 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!208112 e!1370519))

(declare-fun e!1370524 () Bool)

(declare-fun inv!32151 (CacheFurthestNullable!828) Bool)

(assert (=> start!208112 (and (inv!32151 cacheFurthestNullable!114) e!1370524)))

(assert (=> start!208112 true))

(declare-datatypes ((tuple3!3496 0))(
  ( (tuple3!3497 (_1!14365 Regex!5795) (_2!14365 Context!2730) (_3!2218 C!11736)) )
))
(declare-datatypes ((tuple2!24294 0))(
  ( (tuple2!24295 (_1!14366 tuple3!3496) (_2!14366 (InoxSet Context!2730))) )
))
(declare-datatypes ((List!24520 0))(
  ( (Nil!24436) (Cons!24436 (h!29837 tuple2!24294) (t!197050 List!24520)) )
))
(declare-datatypes ((Hashable!2721 0))(
  ( (HashableExt!2720 (__x!16597 Int)) )
))
(declare-datatypes ((array!9461 0))(
  ( (array!9462 (arr!4224 (Array (_ BitVec 32) List!24520)) (size!19128 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5614 0))(
  ( (LongMapFixedSize!5615 (defaultEntry!3172 Int) (mask!7020 (_ BitVec 32)) (extraKeys!3055 (_ BitVec 32)) (zeroValue!3065 List!24520) (minValue!3065 List!24520) (_size!5665 (_ BitVec 32)) (_keys!3104 array!9455) (_values!3087 array!9461) (_vacant!2868 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11053 0))(
  ( (Cell!11054 (v!29027 LongMapFixedSize!5614)) )
))
(declare-datatypes ((MutLongMap!2807 0))(
  ( (LongMap!2807 (underlying!5809 Cell!11053)) (MutLongMapExt!2806 (__x!16598 Int)) )
))
(declare-datatypes ((Cell!11055 0))(
  ( (Cell!11056 (v!29028 MutLongMap!2807)) )
))
(declare-datatypes ((MutableMap!2721 0))(
  ( (MutableMapExt!2720 (__x!16599 Int)) (HashMap!2721 (underlying!5810 Cell!11055) (hashF!4644 Hashable!2721) (_size!5666 (_ BitVec 32)) (defaultValue!2883 Int)) )
))
(declare-datatypes ((CacheDown!1864 0))(
  ( (CacheDown!1865 (cache!3102 MutableMap!2721)) )
))
(declare-fun cacheDown!1098 () CacheDown!1864)

(declare-fun inv!32152 (CacheDown!1864) Bool)

(assert (=> start!208112 (and (inv!32152 cacheDown!1098) e!1370517)))

(declare-fun e!1370538 () Bool)

(declare-fun inv!32153 (CacheUp!1870) Bool)

(assert (=> start!208112 (and (inv!32153 cacheUp!979) e!1370538)))

(declare-fun condSetEmpty!16670 () Bool)

(assert (=> start!208112 (= condSetEmpty!16670 (= z!3839 ((as const (Array Context!2730 Bool)) false)))))

(assert (=> start!208112 setRes!16669))

(declare-fun inv!32154 (BalanceConc!15624) Bool)

(assert (=> start!208112 (and (inv!32154 totalInput!851) e!1370506)))

(declare-fun e!1370535 () Bool)

(assert (=> start!208112 e!1370535))

(declare-fun b!2144682 () Bool)

(declare-fun tp!664690 () Bool)

(assert (=> b!2144682 (= e!1370527 tp!664690)))

(declare-fun tp!664687 () Bool)

(declare-fun tp!664692 () Bool)

(declare-fun array_inv!3022 (array!9457) Bool)

(assert (=> b!2144683 (= e!1370522 (and tp!664679 tp!664687 tp!664692 (array_inv!3020 (_keys!3102 (v!29023 (underlying!5805 (v!29024 (underlying!5806 (cache!3100 cacheFurthestNullable!114))))))) (array_inv!3022 (_values!3085 (v!29023 (underlying!5805 (v!29024 (underlying!5806 (cache!3100 cacheFurthestNullable!114))))))) e!1370510))))

(declare-fun mapIsEmpty!13343 () Bool)

(assert (=> mapIsEmpty!13343 mapRes!13344))

(declare-fun b!2144684 () Bool)

(declare-fun e!1370503 () Bool)

(declare-fun lt!798651 () MutLongMap!2807)

(assert (=> b!2144684 (= e!1370526 (and e!1370503 ((_ is LongMap!2807) lt!798651)))))

(assert (=> b!2144684 (= lt!798651 (v!29028 (underlying!5810 (cache!3102 cacheDown!1098))))))

(declare-fun e!1370523 () Bool)

(declare-fun b!2144685 () Bool)

(declare-fun e!1370528 () Bool)

(assert (=> b!2144685 (= e!1370528 (and setRes!16670 (inv!32154 (totalInput!3161 (h!29836 stack!8))) e!1370523))))

(declare-fun condSetEmpty!16669 () Bool)

(assert (=> b!2144685 (= condSetEmpty!16669 (= (z!5898 (h!29836 stack!8)) ((as const (Array Context!2730 Bool)) false)))))

(declare-fun b!2144686 () Bool)

(assert (=> b!2144686 (= e!1370521 from!1043)))

(declare-fun mapNonEmpty!13342 () Bool)

(declare-fun tp!664693 () Bool)

(declare-fun tp!664682 () Bool)

(assert (=> mapNonEmpty!13342 (= mapRes!13342 (and tp!664693 tp!664682))))

(declare-fun mapKey!13344 () (_ BitVec 32))

(declare-fun mapValue!13342 () List!24520)

(declare-fun mapRest!13343 () (Array (_ BitVec 32) List!24520))

(assert (=> mapNonEmpty!13342 (= (arr!4224 (_values!3087 (v!29027 (underlying!5809 (v!29028 (underlying!5810 (cache!3102 cacheDown!1098))))))) (store mapRest!13343 mapKey!13344 mapValue!13342))))

(declare-fun b!2144687 () Bool)

(declare-fun tp!664686 () Bool)

(declare-fun inv!32155 (StackFrame!258) Bool)

(assert (=> b!2144687 (= e!1370535 (and (inv!32155 (h!29836 stack!8)) e!1370528 tp!664686))))

(declare-fun b!2144688 () Bool)

(declare-fun e!1370509 () Bool)

(declare-fun tp!664683 () Bool)

(assert (=> b!2144688 (= e!1370509 (and tp!664683 mapRes!13342))))

(declare-fun condMapEmpty!13342 () Bool)

(declare-fun mapDefault!13342 () List!24520)

(assert (=> b!2144688 (= condMapEmpty!13342 (= (arr!4224 (_values!3087 (v!29027 (underlying!5809 (v!29028 (underlying!5810 (cache!3102 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24520)) mapDefault!13342)))))

(declare-fun b!2144689 () Bool)

(declare-fun res!925508 () Bool)

(assert (=> b!2144689 (=> (not res!925508) (not e!1370508))))

(declare-fun e!1370520 () Bool)

(assert (=> b!2144689 (= res!925508 e!1370520)))

(declare-fun res!925515 () Bool)

(assert (=> b!2144689 (=> res!925515 e!1370520)))

(declare-fun nullableZipper!151 ((InoxSet Context!2730)) Bool)

(assert (=> b!2144689 (= res!925515 (not (nullableZipper!151 z!3839)))))

(declare-fun b!2144690 () Bool)

(declare-fun res!925510 () Bool)

(assert (=> b!2144690 (=> (not res!925510) (not e!1370508))))

(declare-fun valid!2188 (CacheUp!1870) Bool)

(assert (=> b!2144690 (= res!925510 (valid!2188 cacheUp!979))))

(declare-fun b!2144691 () Bool)

(declare-fun res!925513 () Bool)

(assert (=> b!2144691 (=> (not res!925513) (not e!1370508))))

(declare-fun valid!2189 (CacheDown!1864) Bool)

(assert (=> b!2144691 (= res!925513 (valid!2189 cacheDown!1098))))

(declare-fun b!2144692 () Bool)

(assert (=> b!2144692 (= e!1370524 (and e!1370511 (inv!32154 (totalInput!3160 cacheFurthestNullable!114)) e!1370514))))

(declare-fun b!2144693 () Bool)

(declare-fun e!1370518 () Bool)

(declare-fun e!1370501 () Bool)

(assert (=> b!2144693 (= e!1370518 e!1370501)))

(declare-fun mapIsEmpty!13344 () Bool)

(assert (=> mapIsEmpty!13344 mapRes!13343))

(declare-fun mapNonEmpty!13343 () Bool)

(declare-fun tp!664675 () Bool)

(declare-fun tp!664697 () Bool)

(assert (=> mapNonEmpty!13343 (= mapRes!13343 (and tp!664675 tp!664697))))

(declare-fun mapRest!13344 () (Array (_ BitVec 32) List!24518))

(declare-fun mapValue!13343 () List!24518)

(declare-fun mapKey!13343 () (_ BitVec 32))

(assert (=> mapNonEmpty!13343 (= (arr!4223 (_values!3086 (v!29025 (underlying!5807 (v!29026 (underlying!5808 (cache!3101 cacheUp!979))))))) (store mapRest!13344 mapKey!13343 mapValue!13343))))

(declare-fun b!2144694 () Bool)

(assert (=> b!2144694 (= e!1370503 e!1370518)))

(declare-fun b!2144695 () Bool)

(assert (=> b!2144695 (= e!1370513 e!1370516)))

(declare-fun b!2144696 () Bool)

(assert (=> b!2144696 (= e!1370538 e!1370534)))

(declare-fun mapNonEmpty!13344 () Bool)

(declare-fun tp!664688 () Bool)

(declare-fun tp!664689 () Bool)

(assert (=> mapNonEmpty!13344 (= mapRes!13344 (and tp!664688 tp!664689))))

(declare-fun mapValue!13344 () List!24517)

(declare-fun mapRest!13342 () (Array (_ BitVec 32) List!24517))

(declare-fun mapKey!13342 () (_ BitVec 32))

(assert (=> mapNonEmpty!13344 (= (arr!4222 (_values!3085 (v!29023 (underlying!5805 (v!29024 (underlying!5806 (cache!3100 cacheFurthestNullable!114))))))) (store mapRest!13342 mapKey!13342 mapValue!13344))))

(declare-fun b!2144697 () Bool)

(declare-fun tp!664698 () Bool)

(assert (=> b!2144697 (= e!1370523 (and (inv!32149 (c!340703 (totalInput!3161 (h!29836 stack!8)))) tp!664698))))

(declare-fun b!2144698 () Bool)

(declare-fun tp!664674 () Bool)

(assert (=> b!2144698 (= e!1370529 tp!664674)))

(declare-fun tp!664694 () Bool)

(declare-fun tp!664671 () Bool)

(declare-fun array_inv!3023 (array!9461) Bool)

(assert (=> b!2144699 (= e!1370501 (and tp!664680 tp!664671 tp!664694 (array_inv!3020 (_keys!3104 (v!29027 (underlying!5809 (v!29028 (underlying!5810 (cache!3102 cacheDown!1098))))))) (array_inv!3023 (_values!3087 (v!29027 (underlying!5809 (v!29028 (underlying!5810 (cache!3102 cacheDown!1098))))))) e!1370509))))

(declare-fun b!2144700 () Bool)

(declare-fun e!1370504 () Bool)

(assert (=> b!2144700 (= e!1370504 (forall!4989 stack!8 lambda!80418))))

(declare-fun b!2144701 () Bool)

(assert (=> b!2144701 (= e!1370507 (not e!1370537))))

(declare-fun res!925516 () Bool)

(assert (=> b!2144701 (=> res!925516 e!1370537)))

(declare-datatypes ((Option!4949 0))(
  ( (None!4948) (Some!4948 (v!29029 Int)) )
))
(declare-fun get!7457 (CacheFurthestNullable!828 (InoxSet Context!2730) Int Int) Option!4949)

(assert (=> b!2144701 (= res!925516 ((_ is Some!4948) (get!7457 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2144701 (forall!4989 stack!8 lambda!80418)))

(declare-fun b!2144702 () Bool)

(assert (=> b!2144702 (= e!1370512 e!1370502)))

(declare-fun b!2144703 () Bool)

(assert (=> b!2144703 (= e!1370520 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2144704 () Bool)

(assert (=> b!2144704 (= e!1370537 e!1370504)))

(declare-fun res!925512 () Bool)

(assert (=> b!2144704 (=> res!925512 e!1370504)))

(declare-datatypes ((tuple3!3498 0))(
  ( (tuple3!3499 (_1!14367 (InoxSet Context!2730)) (_2!14367 CacheUp!1870) (_3!2219 CacheDown!1864)) )
))
(declare-fun lt!798650 () tuple3!3498)

(assert (=> b!2144704 (= res!925512 (not (= lt!798647 (furthestNullablePosition!89 (_1!14367 lt!798650) (+ 1 from!1043) totalInput!851 lt!798646 e!1370521))))))

(declare-fun c!340702 () Bool)

(assert (=> b!2144704 (= c!340702 (nullableZipper!151 (_1!14367 lt!798650)))))

(declare-fun derivationStepZipperMem!60 ((InoxSet Context!2730) C!11736 CacheUp!1870 CacheDown!1864) tuple3!3498)

(declare-fun apply!5975 (BalanceConc!15624 Int) C!11736)

(assert (=> b!2144704 (= lt!798650 (derivationStepZipperMem!60 z!3839 (apply!5975 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(assert (= (and start!208112 res!925518) b!2144662))

(assert (= (and b!2144662 res!925511) b!2144689))

(assert (= (and b!2144689 (not res!925515)) b!2144703))

(assert (= (and b!2144689 res!925508) b!2144690))

(assert (= (and b!2144690 res!925510) b!2144691))

(assert (= (and b!2144691 res!925513) b!2144664))

(assert (= (and b!2144664 res!925509) b!2144676))

(assert (= (and b!2144676 res!925514) b!2144669))

(assert (= (and b!2144669 res!925521) b!2144670))

(assert (= (and b!2144670 res!925520) b!2144701))

(assert (= (and b!2144701 (not res!925516)) b!2144661))

(assert (= (and b!2144661 (not res!925519)) b!2144675))

(assert (= (and b!2144675 (not res!925517)) b!2144704))

(assert (= (and b!2144704 c!340702) b!2144686))

(assert (= (and b!2144704 (not c!340702)) b!2144663))

(assert (= (and b!2144704 (not res!925512)) b!2144700))

(assert (= (and b!2144672 condMapEmpty!13343) mapIsEmpty!13343))

(assert (= (and b!2144672 (not condMapEmpty!13343)) mapNonEmpty!13344))

(assert (= b!2144683 b!2144672))

(assert (= b!2144678 b!2144683))

(assert (= b!2144702 b!2144678))

(assert (= (and b!2144673 ((_ is LongMap!2805) (v!29024 (underlying!5806 (cache!3100 cacheFurthestNullable!114))))) b!2144702))

(assert (= b!2144679 b!2144673))

(assert (= (and b!2144692 ((_ is HashMap!2719) (cache!3100 cacheFurthestNullable!114))) b!2144679))

(assert (= b!2144692 b!2144666))

(assert (= start!208112 b!2144692))

(assert (= (and b!2144688 condMapEmpty!13342) mapIsEmpty!13342))

(assert (= (and b!2144688 (not condMapEmpty!13342)) mapNonEmpty!13342))

(assert (= b!2144699 b!2144688))

(assert (= b!2144693 b!2144699))

(assert (= b!2144694 b!2144693))

(assert (= (and b!2144684 ((_ is LongMap!2807) (v!29028 (underlying!5810 (cache!3102 cacheDown!1098))))) b!2144694))

(assert (= b!2144667 b!2144684))

(assert (= (and b!2144681 ((_ is HashMap!2721) (cache!3102 cacheDown!1098))) b!2144667))

(assert (= start!208112 b!2144681))

(assert (= (and b!2144680 condMapEmpty!13344) mapIsEmpty!13344))

(assert (= (and b!2144680 (not condMapEmpty!13344)) mapNonEmpty!13343))

(assert (= b!2144671 b!2144680))

(assert (= b!2144677 b!2144671))

(assert (= b!2144695 b!2144677))

(assert (= (and b!2144665 ((_ is LongMap!2806) (v!29026 (underlying!5808 (cache!3101 cacheUp!979))))) b!2144695))

(assert (= b!2144674 b!2144665))

(assert (= (and b!2144696 ((_ is HashMap!2720) (cache!3101 cacheUp!979))) b!2144674))

(assert (= start!208112 b!2144696))

(assert (= (and start!208112 condSetEmpty!16670) setIsEmpty!16670))

(assert (= (and start!208112 (not condSetEmpty!16670)) setNonEmpty!16669))

(assert (= setNonEmpty!16669 b!2144682))

(assert (= start!208112 b!2144668))

(assert (= (and b!2144685 condSetEmpty!16669) setIsEmpty!16669))

(assert (= (and b!2144685 (not condSetEmpty!16669)) setNonEmpty!16670))

(assert (= setNonEmpty!16670 b!2144698))

(assert (= b!2144685 b!2144697))

(assert (= b!2144687 b!2144685))

(assert (= (and start!208112 ((_ is Cons!24435) stack!8)) b!2144687))

(declare-fun m!2588975 () Bool)

(assert (=> start!208112 m!2588975))

(declare-fun m!2588977 () Bool)

(assert (=> start!208112 m!2588977))

(declare-fun m!2588979 () Bool)

(assert (=> start!208112 m!2588979))

(declare-fun m!2588981 () Bool)

(assert (=> start!208112 m!2588981))

(declare-fun m!2588983 () Bool)

(assert (=> b!2144687 m!2588983))

(declare-fun m!2588985 () Bool)

(assert (=> b!2144692 m!2588985))

(declare-fun m!2588987 () Bool)

(assert (=> mapNonEmpty!13344 m!2588987))

(declare-fun m!2588989 () Bool)

(assert (=> b!2144701 m!2588989))

(declare-fun m!2588991 () Bool)

(assert (=> b!2144701 m!2588991))

(assert (=> b!2144669 m!2588991))

(declare-fun m!2588993 () Bool)

(assert (=> b!2144669 m!2588993))

(declare-fun m!2588995 () Bool)

(assert (=> setNonEmpty!16670 m!2588995))

(declare-fun m!2588997 () Bool)

(assert (=> b!2144671 m!2588997))

(declare-fun m!2588999 () Bool)

(assert (=> b!2144671 m!2588999))

(declare-fun m!2589001 () Bool)

(assert (=> b!2144697 m!2589001))

(declare-fun m!2589003 () Bool)

(assert (=> b!2144666 m!2589003))

(declare-fun m!2589005 () Bool)

(assert (=> b!2144675 m!2589005))

(declare-fun m!2589007 () Bool)

(assert (=> b!2144664 m!2589007))

(declare-fun m!2589009 () Bool)

(assert (=> b!2144685 m!2589009))

(declare-fun m!2589011 () Bool)

(assert (=> b!2144690 m!2589011))

(declare-fun m!2589013 () Bool)

(assert (=> b!2144662 m!2589013))

(declare-fun m!2589015 () Bool)

(assert (=> b!2144691 m!2589015))

(declare-fun m!2589017 () Bool)

(assert (=> setNonEmpty!16669 m!2589017))

(declare-fun m!2589019 () Bool)

(assert (=> b!2144670 m!2589019))

(declare-fun m!2589021 () Bool)

(assert (=> b!2144683 m!2589021))

(declare-fun m!2589023 () Bool)

(assert (=> b!2144683 m!2589023))

(declare-fun m!2589025 () Bool)

(assert (=> mapNonEmpty!13343 m!2589025))

(declare-fun m!2589027 () Bool)

(assert (=> b!2144704 m!2589027))

(declare-fun m!2589029 () Bool)

(assert (=> b!2144704 m!2589029))

(declare-fun m!2589031 () Bool)

(assert (=> b!2144704 m!2589031))

(assert (=> b!2144704 m!2589031))

(declare-fun m!2589033 () Bool)

(assert (=> b!2144704 m!2589033))

(declare-fun m!2589035 () Bool)

(assert (=> b!2144699 m!2589035))

(declare-fun m!2589037 () Bool)

(assert (=> b!2144699 m!2589037))

(declare-fun m!2589039 () Bool)

(assert (=> b!2144689 m!2589039))

(declare-fun m!2589041 () Bool)

(assert (=> b!2144668 m!2589041))

(assert (=> b!2144700 m!2588991))

(declare-fun m!2589043 () Bool)

(assert (=> mapNonEmpty!13342 m!2589043))

(check-sat (not b!2144690) (not b!2144687) b_and!172779 (not b!2144670) b_and!172785 (not b!2144672) (not b!2144664) (not b!2144692) (not mapNonEmpty!13344) b_and!172787 b_and!172781 (not b!2144688) b_and!172783 (not start!208112) (not setNonEmpty!16669) (not b_next!63909) (not b!2144671) (not b!2144668) (not b!2144698) (not mapNonEmpty!13342) (not b_next!63911) (not b!2144691) (not b_next!63903) (not b!2144699) (not b_next!63907) (not b!2144683) (not b!2144697) (not b!2144704) (not b!2144682) (not b_next!63905) (not b!2144685) b_and!172777 (not b!2144662) (not b!2144675) (not setNonEmpty!16670) (not b!2144669) (not b_next!63901) (not b!2144701) (not b!2144700) (not b!2144666) (not b!2144689) (not mapNonEmpty!13343) (not b!2144680))
(check-sat b_and!172779 (not b_next!63909) b_and!172785 (not b_next!63907) (not b_next!63905) b_and!172777 (not b_next!63901) b_and!172787 b_and!172781 b_and!172783 (not b_next!63911) (not b_next!63903))
