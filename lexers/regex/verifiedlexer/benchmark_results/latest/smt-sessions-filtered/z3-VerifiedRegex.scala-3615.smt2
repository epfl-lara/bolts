; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207500 () Bool)

(assert start!207500)

(declare-fun b!2129148 () Bool)

(declare-fun b_free!62021 () Bool)

(declare-fun b_next!62725 () Bool)

(assert (=> b!2129148 (= b_free!62021 (not b_next!62725))))

(declare-fun tp!654102 () Bool)

(declare-fun b_and!171601 () Bool)

(assert (=> b!2129148 (= tp!654102 b_and!171601)))

(declare-fun b!2129178 () Bool)

(declare-fun b_free!62023 () Bool)

(declare-fun b_next!62727 () Bool)

(assert (=> b!2129178 (= b_free!62023 (not b_next!62727))))

(declare-fun tp!654100 () Bool)

(declare-fun b_and!171603 () Bool)

(assert (=> b!2129178 (= tp!654100 b_and!171603)))

(declare-fun b!2129166 () Bool)

(declare-fun b_free!62025 () Bool)

(declare-fun b_next!62729 () Bool)

(assert (=> b!2129166 (= b_free!62025 (not b_next!62729))))

(declare-fun tp!654096 () Bool)

(declare-fun b_and!171605 () Bool)

(assert (=> b!2129166 (= tp!654096 b_and!171605)))

(declare-fun b!2129156 () Bool)

(declare-fun b_free!62027 () Bool)

(declare-fun b_next!62731 () Bool)

(assert (=> b!2129156 (= b_free!62027 (not b_next!62731))))

(declare-fun tp!654110 () Bool)

(declare-fun b_and!171607 () Bool)

(assert (=> b!2129156 (= tp!654110 b_and!171607)))

(declare-fun b!2129144 () Bool)

(declare-fun b_free!62029 () Bool)

(declare-fun b_next!62733 () Bool)

(assert (=> b!2129144 (= b_free!62029 (not b_next!62733))))

(declare-fun tp!654104 () Bool)

(declare-fun b_and!171609 () Bool)

(assert (=> b!2129144 (= tp!654104 b_and!171609)))

(declare-fun b!2129165 () Bool)

(declare-fun b_free!62031 () Bool)

(declare-fun b_next!62735 () Bool)

(assert (=> b!2129165 (= b_free!62031 (not b_next!62735))))

(declare-fun tp!654114 () Bool)

(declare-fun b_and!171611 () Bool)

(assert (=> b!2129165 (= tp!654114 b_and!171611)))

(declare-fun b!2129147 () Bool)

(assert (=> b!2129147 true))

(declare-fun bs!444216 () Bool)

(declare-fun b!2129152 () Bool)

(assert (= bs!444216 (and b!2129152 b!2129147)))

(declare-fun lambda!79041 () Int)

(declare-fun lambda!79040 () Int)

(assert (=> bs!444216 (not (= lambda!79041 lambda!79040))))

(assert (=> b!2129152 true))

(declare-datatypes ((C!11540 0))(
  ( (C!11541 (val!6756 Int)) )
))
(declare-datatypes ((Regex!5697 0))(
  ( (ElementMatch!5697 (c!340155 C!11540)) (Concat!9999 (regOne!11906 Regex!5697) (regTwo!11906 Regex!5697)) (EmptyExpr!5697) (Star!5697 (reg!6026 Regex!5697)) (EmptyLang!5697) (Union!5697 (regOne!11907 Regex!5697) (regTwo!11907 Regex!5697)) )
))
(declare-datatypes ((List!23965 0))(
  ( (Nil!23881) (Cons!23881 (h!29282 Regex!5697) (t!196493 List!23965)) )
))
(declare-datatypes ((Context!2534 0))(
  ( (Context!2535 (exprs!1767 List!23965)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3052 0))(
  ( (tuple3!3053 (_1!13789 (InoxSet Context!2534)) (_2!13789 Int) (_3!1996 Int)) )
))
(declare-datatypes ((tuple2!23586 0))(
  ( (tuple2!23587 (_1!13790 tuple3!3052) (_2!13790 Int)) )
))
(declare-datatypes ((List!23966 0))(
  ( (Nil!23882) (Cons!23882 (h!29283 tuple2!23586) (t!196494 List!23966)) )
))
(declare-datatypes ((array!8691 0))(
  ( (array!8692 (arr!3857 (Array (_ BitVec 32) (_ BitVec 64))) (size!18680 (_ BitVec 32))) )
))
(declare-datatypes ((array!8693 0))(
  ( (array!8694 (arr!3858 (Array (_ BitVec 32) List!23966)) (size!18681 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5078 0))(
  ( (LongMapFixedSize!5079 (defaultEntry!2904 Int) (mask!6703 (_ BitVec 32)) (extraKeys!2787 (_ BitVec 32)) (zeroValue!2797 List!23966) (minValue!2797 List!23966) (_size!5129 (_ BitVec 32)) (_keys!2836 array!8691) (_values!2819 array!8693) (_vacant!2600 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9981 0))(
  ( (Cell!9982 (v!28424 LongMapFixedSize!5078)) )
))
(declare-datatypes ((List!23967 0))(
  ( (Nil!23883) (Cons!23883 (h!29284 C!11540) (t!196495 List!23967)) )
))
(declare-datatypes ((IArray!15675 0))(
  ( (IArray!15676 (innerList!7895 List!23967)) )
))
(declare-datatypes ((Conc!7835 0))(
  ( (Node!7835 (left!18436 Conc!7835) (right!18766 Conc!7835) (csize!15900 Int) (cheight!8046 Int)) (Leaf!11451 (xs!10777 IArray!15675) (csize!15901 Int)) (Empty!7835) )
))
(declare-datatypes ((MutLongMap!2539 0))(
  ( (LongMap!2539 (underlying!5273 Cell!9981)) (MutLongMapExt!2538 (__x!15793 Int)) )
))
(declare-datatypes ((Cell!9983 0))(
  ( (Cell!9984 (v!28425 MutLongMap!2539)) )
))
(declare-datatypes ((Hashable!2453 0))(
  ( (HashableExt!2452 (__x!15794 Int)) )
))
(declare-datatypes ((MutableMap!2453 0))(
  ( (MutableMapExt!2452 (__x!15795 Int)) (HashMap!2453 (underlying!5274 Cell!9983) (hashF!4376 Hashable!2453) (_size!5130 (_ BitVec 32)) (defaultValue!2615 Int)) )
))
(declare-datatypes ((BalanceConc!15432 0))(
  ( (BalanceConc!15433 (c!340156 Conc!7835)) )
))
(declare-datatypes ((CacheFurthestNullable!640 0))(
  ( (CacheFurthestNullable!641 (cache!2834 MutableMap!2453) (totalInput!2973 BalanceConc!15432)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!640)

(declare-fun e!1357635 () Bool)

(declare-fun tp!654107 () Bool)

(declare-fun tp!654095 () Bool)

(declare-fun e!1357621 () Bool)

(declare-fun array_inv!2759 (array!8691) Bool)

(declare-fun array_inv!2760 (array!8693) Bool)

(assert (=> b!2129144 (= e!1357621 (and tp!654104 tp!654095 tp!654107 (array_inv!2759 (_keys!2836 (v!28424 (underlying!5273 (v!28425 (underlying!5274 (cache!2834 cacheFurthestNullable!114))))))) (array_inv!2760 (_values!2819 (v!28424 (underlying!5273 (v!28425 (underlying!5274 (cache!2834 cacheFurthestNullable!114))))))) e!1357635))))

(declare-fun b!2129145 () Bool)

(declare-fun res!920655 () Bool)

(declare-fun e!1357655 () Bool)

(assert (=> b!2129145 (=> (not res!920655) (not e!1357655))))

(declare-fun totalInput!851 () BalanceConc!15432)

(assert (=> b!2129145 (= res!920655 (= (totalInput!2973 cacheFurthestNullable!114) totalInput!851))))

(declare-fun e!1357647 () Bool)

(assert (=> b!2129147 (= e!1357655 e!1357647)))

(declare-fun res!920649 () Bool)

(assert (=> b!2129147 (=> (not res!920649) (not e!1357647))))

(declare-datatypes ((StackFrame!92 0))(
  ( (StackFrame!93 (z!5774 (InoxSet Context!2534)) (from!2660 Int) (lastNullablePos!347 Int) (res!920657 Int) (totalInput!2974 BalanceConc!15432)) )
))
(declare-datatypes ((List!23968 0))(
  ( (Nil!23884) (Cons!23884 (h!29285 StackFrame!92) (t!196496 List!23968)) )
))
(declare-fun stack!8 () List!23968)

(declare-fun forall!4895 (List!23968 Int) Bool)

(assert (=> b!2129147 (= res!920649 (forall!4895 stack!8 lambda!79040))))

(declare-fun lt!796212 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!796208 () Int)

(declare-fun z!3839 () (InoxSet Context!2534))

(declare-fun from!1043 () Int)

(declare-fun furthestNullablePosition!24 ((InoxSet Context!2534) Int BalanceConc!15432 Int Int) Int)

(assert (=> b!2129147 (= lt!796212 (furthestNullablePosition!24 z!3839 from!1043 totalInput!851 lt!796208 lastNullablePos!123))))

(declare-fun e!1357651 () Bool)

(declare-fun e!1357641 () Bool)

(assert (=> b!2129148 (= e!1357651 (and e!1357641 tp!654102))))

(declare-fun b!2129149 () Bool)

(declare-fun e!1357627 () Bool)

(assert (=> b!2129149 (= e!1357627 e!1357651)))

(declare-fun b!2129150 () Bool)

(declare-fun e!1357654 () Bool)

(declare-fun e!1357626 () Bool)

(assert (=> b!2129150 (= e!1357654 e!1357626)))

(declare-fun mapIsEmpty!12376 () Bool)

(declare-fun mapRes!12377 () Bool)

(assert (=> mapIsEmpty!12376 mapRes!12377))

(declare-fun b!2129151 () Bool)

(declare-fun e!1357628 () Bool)

(assert (=> b!2129151 (= e!1357628 e!1357655)))

(declare-fun res!920651 () Bool)

(assert (=> b!2129151 (=> (not res!920651) (not e!1357655))))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2129151 (= res!920651 (and (= totalInputSize!296 lt!796208) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18682 (BalanceConc!15432) Int)

(assert (=> b!2129151 (= lt!796208 (size!18682 totalInput!851))))

(declare-fun res!920654 () Bool)

(assert (=> b!2129152 (=> (not res!920654) (not e!1357647))))

(assert (=> b!2129152 (= res!920654 (forall!4895 stack!8 lambda!79041))))

(declare-fun e!1357642 () Bool)

(declare-fun e!1357644 () Bool)

(declare-fun b!2129153 () Bool)

(declare-fun setRes!15649 () Bool)

(declare-fun inv!31499 (BalanceConc!15432) Bool)

(assert (=> b!2129153 (= e!1357644 (and setRes!15649 (inv!31499 (totalInput!2974 (h!29285 stack!8))) e!1357642))))

(declare-fun condSetEmpty!15648 () Bool)

(assert (=> b!2129153 (= condSetEmpty!15648 (= (z!5774 (h!29285 stack!8)) ((as const (Array Context!2534 Bool)) false)))))

(declare-fun b!2129154 () Bool)

(declare-fun e!1357624 () Bool)

(declare-fun e!1357650 () Bool)

(assert (=> b!2129154 (= e!1357624 e!1357650)))

(declare-fun b!2129155 () Bool)

(declare-fun tp!654101 () Bool)

(declare-fun mapRes!12376 () Bool)

(assert (=> b!2129155 (= e!1357635 (and tp!654101 mapRes!12376))))

(declare-fun condMapEmpty!12378 () Bool)

(declare-fun mapDefault!12377 () List!23966)

(assert (=> b!2129155 (= condMapEmpty!12378 (= (arr!3858 (_values!2819 (v!28424 (underlying!5273 (v!28425 (underlying!5274 (cache!2834 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!23966)) mapDefault!12377)))))

(declare-fun e!1357643 () Bool)

(declare-fun e!1357622 () Bool)

(assert (=> b!2129156 (= e!1357643 (and e!1357622 tp!654110))))

(declare-fun b!2129157 () Bool)

(declare-fun res!920646 () Bool)

(declare-fun e!1357652 () Bool)

(assert (=> b!2129157 (=> res!920646 e!1357652)))

(declare-fun e!1357646 () Bool)

(assert (=> b!2129157 (= res!920646 e!1357646)))

(declare-fun res!920647 () Bool)

(assert (=> b!2129157 (=> (not res!920647) (not e!1357646))))

(assert (=> b!2129157 (= res!920647 (not (= from!1043 totalInputSize!296)))))

(declare-fun b!2129158 () Bool)

(declare-fun e!1357636 () Bool)

(declare-fun lt!796210 () MutLongMap!2539)

(get-info :version)

(assert (=> b!2129158 (= e!1357636 (and e!1357624 ((_ is LongMap!2539) lt!796210)))))

(assert (=> b!2129158 (= lt!796210 (v!28425 (underlying!5274 (cache!2834 cacheFurthestNullable!114))))))

(declare-fun b!2129159 () Bool)

(declare-fun e!1357639 () Bool)

(declare-fun tp!654109 () Bool)

(declare-fun inv!31500 (Conc!7835) Bool)

(assert (=> b!2129159 (= e!1357639 (and (inv!31500 (c!340156 (totalInput!2973 cacheFurthestNullable!114))) tp!654109))))

(declare-fun b!2129160 () Bool)

(declare-fun tp!654113 () Bool)

(assert (=> b!2129160 (= e!1357642 (and (inv!31500 (c!340156 (totalInput!2974 (h!29285 stack!8)))) tp!654113))))

(declare-fun b!2129161 () Bool)

(declare-fun e!1357633 () Bool)

(declare-fun tp!654108 () Bool)

(assert (=> b!2129161 (= e!1357633 tp!654108)))

(declare-fun b!2129162 () Bool)

(declare-fun e!1357653 () Bool)

(declare-fun tp!654090 () Bool)

(assert (=> b!2129162 (= e!1357653 tp!654090)))

(declare-fun b!2129163 () Bool)

(declare-fun res!920656 () Bool)

(assert (=> b!2129163 (=> (not res!920656) (not e!1357655))))

(declare-datatypes ((tuple2!23588 0))(
  ( (tuple2!23589 (_1!13791 Context!2534) (_2!13791 C!11540)) )
))
(declare-datatypes ((tuple2!23590 0))(
  ( (tuple2!23591 (_1!13792 tuple2!23588) (_2!13792 (InoxSet Context!2534))) )
))
(declare-datatypes ((List!23969 0))(
  ( (Nil!23885) (Cons!23885 (h!29286 tuple2!23590) (t!196497 List!23969)) )
))
(declare-datatypes ((array!8695 0))(
  ( (array!8696 (arr!3859 (Array (_ BitVec 32) List!23969)) (size!18683 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5080 0))(
  ( (LongMapFixedSize!5081 (defaultEntry!2905 Int) (mask!6704 (_ BitVec 32)) (extraKeys!2788 (_ BitVec 32)) (zeroValue!2798 List!23969) (minValue!2798 List!23969) (_size!5131 (_ BitVec 32)) (_keys!2837 array!8691) (_values!2820 array!8695) (_vacant!2601 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9985 0))(
  ( (Cell!9986 (v!28426 LongMapFixedSize!5080)) )
))
(declare-datatypes ((MutLongMap!2540 0))(
  ( (LongMap!2540 (underlying!5275 Cell!9985)) (MutLongMapExt!2539 (__x!15796 Int)) )
))
(declare-datatypes ((Cell!9987 0))(
  ( (Cell!9988 (v!28427 MutLongMap!2540)) )
))
(declare-datatypes ((Hashable!2454 0))(
  ( (HashableExt!2453 (__x!15797 Int)) )
))
(declare-datatypes ((MutableMap!2454 0))(
  ( (MutableMapExt!2453 (__x!15798 Int)) (HashMap!2454 (underlying!5276 Cell!9987) (hashF!4377 Hashable!2454) (_size!5132 (_ BitVec 32)) (defaultValue!2616 Int)) )
))
(declare-datatypes ((CacheUp!1702 0))(
  ( (CacheUp!1703 (cache!2835 MutableMap!2454)) )
))
(declare-fun cacheUp!979 () CacheUp!1702)

(declare-fun valid!2000 (CacheUp!1702) Bool)

(assert (=> b!2129163 (= res!920656 (valid!2000 cacheUp!979))))

(declare-fun b!2129164 () Bool)

(declare-fun e!1357640 () Bool)

(declare-fun tp!654112 () Bool)

(declare-fun mapRes!12378 () Bool)

(assert (=> b!2129164 (= e!1357640 (and tp!654112 mapRes!12378))))

(declare-fun condMapEmpty!12377 () Bool)

(declare-fun mapDefault!12376 () List!23969)

(assert (=> b!2129164 (= condMapEmpty!12377 (= (arr!3859 (_values!2820 (v!28426 (underlying!5275 (v!28427 (underlying!5276 (cache!2835 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!23969)) mapDefault!12376)))))

(declare-fun tp!654106 () Bool)

(declare-fun e!1357631 () Bool)

(declare-fun tp!654099 () Bool)

(declare-fun array_inv!2761 (array!8695) Bool)

(assert (=> b!2129165 (= e!1357631 (and tp!654114 tp!654106 tp!654099 (array_inv!2759 (_keys!2837 (v!28426 (underlying!5275 (v!28427 (underlying!5276 (cache!2835 cacheUp!979))))))) (array_inv!2761 (_values!2820 (v!28426 (underlying!5275 (v!28427 (underlying!5276 (cache!2835 cacheUp!979))))))) e!1357640))))

(declare-fun e!1357645 () Bool)

(assert (=> b!2129166 (= e!1357645 (and e!1357636 tp!654096))))

(declare-fun b!2129167 () Bool)

(declare-fun lostCauseZipper!63 ((InoxSet Context!2534)) Bool)

(assert (=> b!2129167 (= e!1357646 (not (lostCauseZipper!63 z!3839)))))

(declare-fun mapIsEmpty!12377 () Bool)

(assert (=> mapIsEmpty!12377 mapRes!12378))

(declare-fun b!2129168 () Bool)

(declare-fun e!1357634 () Bool)

(assert (=> b!2129168 (= e!1357634 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun setIsEmpty!15648 () Bool)

(declare-fun setRes!15648 () Bool)

(assert (=> setIsEmpty!15648 setRes!15648))

(declare-fun b!2129169 () Bool)

(assert (=> b!2129169 (= e!1357652 (<= from!1043 lt!796208))))

(declare-fun b!2129170 () Bool)

(declare-fun e!1357648 () Bool)

(assert (=> b!2129170 (= e!1357648 e!1357631)))

(declare-fun b!2129171 () Bool)

(assert (=> b!2129171 (= e!1357650 e!1357621)))

(declare-fun b!2129146 () Bool)

(assert (=> b!2129146 (= e!1357647 (not e!1357652))))

(declare-fun res!920645 () Bool)

(assert (=> b!2129146 (=> res!920645 e!1357652)))

(declare-datatypes ((Option!4882 0))(
  ( (None!4881) (Some!4881 (v!28428 Int)) )
))
(declare-fun get!7340 (CacheFurthestNullable!640 (InoxSet Context!2534) Int Int) Option!4882)

(assert (=> b!2129146 (= res!920645 ((_ is Some!4881) (get!7340 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2129146 (forall!4895 stack!8 lambda!79040)))

(declare-fun res!920653 () Bool)

(assert (=> start!207500 (=> (not res!920653) (not e!1357628))))

(assert (=> start!207500 (= res!920653 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207500 e!1357628))

(declare-fun e!1357657 () Bool)

(declare-fun inv!31501 (CacheFurthestNullable!640) Bool)

(assert (=> start!207500 (and (inv!31501 cacheFurthestNullable!114) e!1357657)))

(assert (=> start!207500 true))

(declare-datatypes ((tuple3!3054 0))(
  ( (tuple3!3055 (_1!13793 Regex!5697) (_2!13793 Context!2534) (_3!1997 C!11540)) )
))
(declare-datatypes ((tuple2!23592 0))(
  ( (tuple2!23593 (_1!13794 tuple3!3054) (_2!13794 (InoxSet Context!2534))) )
))
(declare-datatypes ((List!23970 0))(
  ( (Nil!23886) (Cons!23886 (h!29287 tuple2!23592) (t!196498 List!23970)) )
))
(declare-datatypes ((Hashable!2455 0))(
  ( (HashableExt!2454 (__x!15799 Int)) )
))
(declare-datatypes ((array!8697 0))(
  ( (array!8698 (arr!3860 (Array (_ BitVec 32) List!23970)) (size!18684 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5082 0))(
  ( (LongMapFixedSize!5083 (defaultEntry!2906 Int) (mask!6705 (_ BitVec 32)) (extraKeys!2789 (_ BitVec 32)) (zeroValue!2799 List!23970) (minValue!2799 List!23970) (_size!5133 (_ BitVec 32)) (_keys!2838 array!8691) (_values!2821 array!8697) (_vacant!2602 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9989 0))(
  ( (Cell!9990 (v!28429 LongMapFixedSize!5082)) )
))
(declare-datatypes ((MutLongMap!2541 0))(
  ( (LongMap!2541 (underlying!5277 Cell!9989)) (MutLongMapExt!2540 (__x!15800 Int)) )
))
(declare-datatypes ((Cell!9991 0))(
  ( (Cell!9992 (v!28430 MutLongMap!2541)) )
))
(declare-datatypes ((MutableMap!2455 0))(
  ( (MutableMapExt!2454 (__x!15801 Int)) (HashMap!2455 (underlying!5278 Cell!9991) (hashF!4378 Hashable!2455) (_size!5134 (_ BitVec 32)) (defaultValue!2617 Int)) )
))
(declare-datatypes ((CacheDown!1688 0))(
  ( (CacheDown!1689 (cache!2836 MutableMap!2455)) )
))
(declare-fun cacheDown!1098 () CacheDown!1688)

(declare-fun e!1357632 () Bool)

(declare-fun inv!31502 (CacheDown!1688) Bool)

(assert (=> start!207500 (and (inv!31502 cacheDown!1098) e!1357632)))

(declare-fun inv!31503 (CacheUp!1702) Bool)

(assert (=> start!207500 (and (inv!31503 cacheUp!979) e!1357627)))

(declare-fun condSetEmpty!15649 () Bool)

(assert (=> start!207500 (= condSetEmpty!15649 (= z!3839 ((as const (Array Context!2534 Bool)) false)))))

(assert (=> start!207500 setRes!15648))

(declare-fun e!1357623 () Bool)

(assert (=> start!207500 (and (inv!31499 totalInput!851) e!1357623)))

(declare-fun e!1357637 () Bool)

(assert (=> start!207500 e!1357637))

(declare-fun b!2129172 () Bool)

(assert (=> b!2129172 (= e!1357657 (and e!1357645 (inv!31499 (totalInput!2973 cacheFurthestNullable!114)) e!1357639))))

(declare-fun b!2129173 () Bool)

(declare-fun tp!654103 () Bool)

(assert (=> b!2129173 (= e!1357623 (and (inv!31500 (c!340156 totalInput!851)) tp!654103))))

(declare-fun setElem!15649 () Context!2534)

(declare-fun setNonEmpty!15648 () Bool)

(declare-fun tp!654117 () Bool)

(declare-fun inv!31504 (Context!2534) Bool)

(assert (=> setNonEmpty!15648 (= setRes!15648 (and tp!654117 (inv!31504 setElem!15649) e!1357653))))

(declare-fun setRest!15648 () (InoxSet Context!2534))

(assert (=> setNonEmpty!15648 (= z!3839 ((_ map or) (store ((as const (Array Context!2534 Bool)) false) setElem!15649 true) setRest!15648))))

(declare-fun mapNonEmpty!12376 () Bool)

(declare-fun tp!654105 () Bool)

(declare-fun tp!654098 () Bool)

(assert (=> mapNonEmpty!12376 (= mapRes!12376 (and tp!654105 tp!654098))))

(declare-fun mapKey!12378 () (_ BitVec 32))

(declare-fun mapRest!12378 () (Array (_ BitVec 32) List!23966))

(declare-fun mapValue!12377 () List!23966)

(assert (=> mapNonEmpty!12376 (= (arr!3858 (_values!2819 (v!28424 (underlying!5273 (v!28425 (underlying!5274 (cache!2834 cacheFurthestNullable!114))))))) (store mapRest!12378 mapKey!12378 mapValue!12377))))

(declare-fun tp!654097 () Bool)

(declare-fun b!2129174 () Bool)

(declare-fun inv!31505 (StackFrame!92) Bool)

(assert (=> b!2129174 (= e!1357637 (and (inv!31505 (h!29285 stack!8)) e!1357644 tp!654097))))

(declare-fun b!2129175 () Bool)

(assert (=> b!2129175 (= e!1357632 e!1357643)))

(declare-fun b!2129176 () Bool)

(declare-fun e!1357649 () Bool)

(declare-fun lt!796211 () MutLongMap!2541)

(assert (=> b!2129176 (= e!1357622 (and e!1357649 ((_ is LongMap!2541) lt!796211)))))

(assert (=> b!2129176 (= lt!796211 (v!28430 (underlying!5278 (cache!2836 cacheDown!1098))))))

(declare-fun mapIsEmpty!12378 () Bool)

(assert (=> mapIsEmpty!12378 mapRes!12376))

(declare-fun mapNonEmpty!12377 () Bool)

(declare-fun tp!654093 () Bool)

(declare-fun tp!654091 () Bool)

(assert (=> mapNonEmpty!12377 (= mapRes!12378 (and tp!654093 tp!654091))))

(declare-fun mapRest!12377 () (Array (_ BitVec 32) List!23969))

(declare-fun mapValue!12378 () List!23969)

(declare-fun mapKey!12377 () (_ BitVec 32))

(assert (=> mapNonEmpty!12377 (= (arr!3859 (_values!2820 (v!28426 (underlying!5275 (v!28427 (underlying!5276 (cache!2835 cacheUp!979))))))) (store mapRest!12377 mapKey!12377 mapValue!12378))))

(declare-fun setNonEmpty!15649 () Bool)

(declare-fun tp!654116 () Bool)

(declare-fun setElem!15648 () Context!2534)

(assert (=> setNonEmpty!15649 (= setRes!15649 (and tp!654116 (inv!31504 setElem!15648) e!1357633))))

(declare-fun setRest!15649 () (InoxSet Context!2534))

(assert (=> setNonEmpty!15649 (= (z!5774 (h!29285 stack!8)) ((_ map or) (store ((as const (Array Context!2534 Bool)) false) setElem!15648 true) setRest!15649))))

(declare-fun b!2129177 () Bool)

(declare-fun e!1357629 () Bool)

(declare-fun tp!654111 () Bool)

(assert (=> b!2129177 (= e!1357629 (and tp!654111 mapRes!12377))))

(declare-fun condMapEmpty!12376 () Bool)

(declare-fun mapDefault!12378 () List!23970)

(assert (=> b!2129177 (= condMapEmpty!12376 (= (arr!3860 (_values!2821 (v!28429 (underlying!5277 (v!28430 (underlying!5278 (cache!2836 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!23970)) mapDefault!12378)))))

(declare-fun tp!654092 () Bool)

(declare-fun tp!654118 () Bool)

(declare-fun array_inv!2762 (array!8697) Bool)

(assert (=> b!2129178 (= e!1357626 (and tp!654100 tp!654092 tp!654118 (array_inv!2759 (_keys!2838 (v!28429 (underlying!5277 (v!28430 (underlying!5278 (cache!2836 cacheDown!1098))))))) (array_inv!2762 (_values!2821 (v!28429 (underlying!5277 (v!28430 (underlying!5278 (cache!2836 cacheDown!1098))))))) e!1357629))))

(declare-fun mapNonEmpty!12378 () Bool)

(declare-fun tp!654094 () Bool)

(declare-fun tp!654115 () Bool)

(assert (=> mapNonEmpty!12378 (= mapRes!12377 (and tp!654094 tp!654115))))

(declare-fun mapRest!12376 () (Array (_ BitVec 32) List!23970))

(declare-fun mapKey!12376 () (_ BitVec 32))

(declare-fun mapValue!12376 () List!23970)

(assert (=> mapNonEmpty!12378 (= (arr!3860 (_values!2821 (v!28429 (underlying!5277 (v!28430 (underlying!5278 (cache!2836 cacheDown!1098))))))) (store mapRest!12376 mapKey!12376 mapValue!12376))))

(declare-fun b!2129179 () Bool)

(declare-fun e!1357638 () Bool)

(declare-fun lt!796209 () MutLongMap!2540)

(assert (=> b!2129179 (= e!1357641 (and e!1357638 ((_ is LongMap!2540) lt!796209)))))

(assert (=> b!2129179 (= lt!796209 (v!28427 (underlying!5276 (cache!2835 cacheUp!979))))))

(declare-fun b!2129180 () Bool)

(assert (=> b!2129180 (= e!1357638 e!1357648)))

(declare-fun setIsEmpty!15649 () Bool)

(assert (=> setIsEmpty!15649 setRes!15649))

(declare-fun b!2129181 () Bool)

(assert (=> b!2129181 (= e!1357649 e!1357654)))

(declare-fun b!2129182 () Bool)

(declare-fun res!920644 () Bool)

(assert (=> b!2129182 (=> (not res!920644) (not e!1357655))))

(declare-fun valid!2001 (CacheFurthestNullable!640) Bool)

(assert (=> b!2129182 (= res!920644 (valid!2001 cacheFurthestNullable!114))))

(declare-fun b!2129183 () Bool)

(declare-fun res!920650 () Bool)

(assert (=> b!2129183 (=> (not res!920650) (not e!1357655))))

(assert (=> b!2129183 (= res!920650 e!1357634)))

(declare-fun res!920652 () Bool)

(assert (=> b!2129183 (=> res!920652 e!1357634)))

(declare-fun nullableZipper!86 ((InoxSet Context!2534)) Bool)

(assert (=> b!2129183 (= res!920652 (not (nullableZipper!86 z!3839)))))

(declare-fun b!2129184 () Bool)

(declare-fun res!920648 () Bool)

(assert (=> b!2129184 (=> (not res!920648) (not e!1357655))))

(declare-fun valid!2002 (CacheDown!1688) Bool)

(assert (=> b!2129184 (= res!920648 (valid!2002 cacheDown!1098))))

(assert (= (and start!207500 res!920653) b!2129151))

(assert (= (and b!2129151 res!920651) b!2129183))

(assert (= (and b!2129183 (not res!920652)) b!2129168))

(assert (= (and b!2129183 res!920650) b!2129163))

(assert (= (and b!2129163 res!920656) b!2129184))

(assert (= (and b!2129184 res!920648) b!2129182))

(assert (= (and b!2129182 res!920644) b!2129145))

(assert (= (and b!2129145 res!920655) b!2129147))

(assert (= (and b!2129147 res!920649) b!2129152))

(assert (= (and b!2129152 res!920654) b!2129146))

(assert (= (and b!2129146 (not res!920645)) b!2129157))

(assert (= (and b!2129157 res!920647) b!2129167))

(assert (= (and b!2129157 (not res!920646)) b!2129169))

(assert (= (and b!2129155 condMapEmpty!12378) mapIsEmpty!12378))

(assert (= (and b!2129155 (not condMapEmpty!12378)) mapNonEmpty!12376))

(assert (= b!2129144 b!2129155))

(assert (= b!2129171 b!2129144))

(assert (= b!2129154 b!2129171))

(assert (= (and b!2129158 ((_ is LongMap!2539) (v!28425 (underlying!5274 (cache!2834 cacheFurthestNullable!114))))) b!2129154))

(assert (= b!2129166 b!2129158))

(assert (= (and b!2129172 ((_ is HashMap!2453) (cache!2834 cacheFurthestNullable!114))) b!2129166))

(assert (= b!2129172 b!2129159))

(assert (= start!207500 b!2129172))

(assert (= (and b!2129177 condMapEmpty!12376) mapIsEmpty!12376))

(assert (= (and b!2129177 (not condMapEmpty!12376)) mapNonEmpty!12378))

(assert (= b!2129178 b!2129177))

(assert (= b!2129150 b!2129178))

(assert (= b!2129181 b!2129150))

(assert (= (and b!2129176 ((_ is LongMap!2541) (v!28430 (underlying!5278 (cache!2836 cacheDown!1098))))) b!2129181))

(assert (= b!2129156 b!2129176))

(assert (= (and b!2129175 ((_ is HashMap!2455) (cache!2836 cacheDown!1098))) b!2129156))

(assert (= start!207500 b!2129175))

(assert (= (and b!2129164 condMapEmpty!12377) mapIsEmpty!12377))

(assert (= (and b!2129164 (not condMapEmpty!12377)) mapNonEmpty!12377))

(assert (= b!2129165 b!2129164))

(assert (= b!2129170 b!2129165))

(assert (= b!2129180 b!2129170))

(assert (= (and b!2129179 ((_ is LongMap!2540) (v!28427 (underlying!5276 (cache!2835 cacheUp!979))))) b!2129180))

(assert (= b!2129148 b!2129179))

(assert (= (and b!2129149 ((_ is HashMap!2454) (cache!2835 cacheUp!979))) b!2129148))

(assert (= start!207500 b!2129149))

(assert (= (and start!207500 condSetEmpty!15649) setIsEmpty!15648))

(assert (= (and start!207500 (not condSetEmpty!15649)) setNonEmpty!15648))

(assert (= setNonEmpty!15648 b!2129162))

(assert (= start!207500 b!2129173))

(assert (= (and b!2129153 condSetEmpty!15648) setIsEmpty!15649))

(assert (= (and b!2129153 (not condSetEmpty!15648)) setNonEmpty!15649))

(assert (= setNonEmpty!15649 b!2129161))

(assert (= b!2129153 b!2129160))

(assert (= b!2129174 b!2129153))

(assert (= (and start!207500 ((_ is Cons!23884) stack!8)) b!2129174))

(declare-fun m!2579954 () Bool)

(assert (=> b!2129147 m!2579954))

(declare-fun m!2579956 () Bool)

(assert (=> b!2129147 m!2579956))

(declare-fun m!2579958 () Bool)

(assert (=> b!2129159 m!2579958))

(declare-fun m!2579960 () Bool)

(assert (=> mapNonEmpty!12377 m!2579960))

(declare-fun m!2579962 () Bool)

(assert (=> b!2129167 m!2579962))

(declare-fun m!2579964 () Bool)

(assert (=> b!2129163 m!2579964))

(declare-fun m!2579966 () Bool)

(assert (=> b!2129173 m!2579966))

(declare-fun m!2579968 () Bool)

(assert (=> b!2129165 m!2579968))

(declare-fun m!2579970 () Bool)

(assert (=> b!2129165 m!2579970))

(declare-fun m!2579972 () Bool)

(assert (=> b!2129183 m!2579972))

(declare-fun m!2579974 () Bool)

(assert (=> b!2129152 m!2579974))

(declare-fun m!2579976 () Bool)

(assert (=> setNonEmpty!15649 m!2579976))

(declare-fun m!2579978 () Bool)

(assert (=> b!2129151 m!2579978))

(declare-fun m!2579980 () Bool)

(assert (=> b!2129144 m!2579980))

(declare-fun m!2579982 () Bool)

(assert (=> b!2129144 m!2579982))

(declare-fun m!2579984 () Bool)

(assert (=> b!2129184 m!2579984))

(declare-fun m!2579986 () Bool)

(assert (=> b!2129146 m!2579986))

(assert (=> b!2129146 m!2579954))

(declare-fun m!2579988 () Bool)

(assert (=> b!2129182 m!2579988))

(declare-fun m!2579990 () Bool)

(assert (=> b!2129160 m!2579990))

(declare-fun m!2579992 () Bool)

(assert (=> b!2129178 m!2579992))

(declare-fun m!2579994 () Bool)

(assert (=> b!2129178 m!2579994))

(declare-fun m!2579996 () Bool)

(assert (=> b!2129172 m!2579996))

(declare-fun m!2579998 () Bool)

(assert (=> mapNonEmpty!12376 m!2579998))

(declare-fun m!2580000 () Bool)

(assert (=> b!2129153 m!2580000))

(declare-fun m!2580002 () Bool)

(assert (=> b!2129174 m!2580002))

(declare-fun m!2580004 () Bool)

(assert (=> mapNonEmpty!12378 m!2580004))

(declare-fun m!2580006 () Bool)

(assert (=> setNonEmpty!15648 m!2580006))

(declare-fun m!2580008 () Bool)

(assert (=> start!207500 m!2580008))

(declare-fun m!2580010 () Bool)

(assert (=> start!207500 m!2580010))

(declare-fun m!2580012 () Bool)

(assert (=> start!207500 m!2580012))

(declare-fun m!2580014 () Bool)

(assert (=> start!207500 m!2580014))

(check-sat (not b!2129164) (not b!2129144) (not b!2129182) (not b!2129161) (not b!2129167) b_and!171603 (not mapNonEmpty!12376) (not b!2129152) (not b!2129178) (not b!2129174) b_and!171611 (not b!2129160) (not b!2129146) (not setNonEmpty!15649) (not b!2129151) (not b!2129155) (not mapNonEmpty!12378) (not setNonEmpty!15648) b_and!171605 (not b_next!62729) (not b!2129165) (not b!2129147) (not mapNonEmpty!12377) (not b_next!62725) (not b!2129172) (not b!2129163) b_and!171607 (not b!2129184) b_and!171609 (not b!2129183) (not b_next!62731) b_and!171601 (not b_next!62733) (not b_next!62735) (not b!2129162) (not b!2129177) (not b!2129159) (not b!2129173) (not start!207500) (not b!2129153) (not b_next!62727))
(check-sat b_and!171605 (not b_next!62729) (not b_next!62725) b_and!171607 b_and!171603 b_and!171609 b_and!171611 (not b_next!62727) (not b_next!62731) b_and!171601 (not b_next!62733) (not b_next!62735))
