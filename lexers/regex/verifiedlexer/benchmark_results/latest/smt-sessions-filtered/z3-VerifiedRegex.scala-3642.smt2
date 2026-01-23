; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207608 () Bool)

(assert start!207608)

(declare-fun b!2136359 () Bool)

(declare-fun b_free!62669 () Bool)

(declare-fun b_next!63373 () Bool)

(assert (=> b!2136359 (= b_free!62669 (not b_next!63373))))

(declare-fun tp!658795 () Bool)

(declare-fun b_and!172249 () Bool)

(assert (=> b!2136359 (= tp!658795 b_and!172249)))

(declare-fun b!2136351 () Bool)

(declare-fun b_free!62671 () Bool)

(declare-fun b_next!63375 () Bool)

(assert (=> b!2136351 (= b_free!62671 (not b_next!63375))))

(declare-fun tp!658815 () Bool)

(declare-fun b_and!172251 () Bool)

(assert (=> b!2136351 (= tp!658815 b_and!172251)))

(declare-fun b!2136361 () Bool)

(declare-fun b_free!62673 () Bool)

(declare-fun b_next!63377 () Bool)

(assert (=> b!2136361 (= b_free!62673 (not b_next!63377))))

(declare-fun tp!658811 () Bool)

(declare-fun b_and!172253 () Bool)

(assert (=> b!2136361 (= tp!658811 b_and!172253)))

(declare-fun b!2136333 () Bool)

(declare-fun b_free!62675 () Bool)

(declare-fun b_next!63379 () Bool)

(assert (=> b!2136333 (= b_free!62675 (not b_next!63379))))

(declare-fun tp!658798 () Bool)

(declare-fun b_and!172255 () Bool)

(assert (=> b!2136333 (= tp!658798 b_and!172255)))

(declare-fun b!2136338 () Bool)

(declare-fun b_free!62677 () Bool)

(declare-fun b_next!63381 () Bool)

(assert (=> b!2136338 (= b_free!62677 (not b_next!63381))))

(declare-fun tp!658789 () Bool)

(declare-fun b_and!172257 () Bool)

(assert (=> b!2136338 (= tp!658789 b_and!172257)))

(declare-fun b!2136323 () Bool)

(declare-fun b_free!62679 () Bool)

(declare-fun b_next!63383 () Bool)

(assert (=> b!2136323 (= b_free!62679 (not b_next!63383))))

(declare-fun tp!658793 () Bool)

(declare-fun b_and!172259 () Bool)

(assert (=> b!2136323 (= tp!658793 b_and!172259)))

(declare-fun b!2136358 () Bool)

(assert (=> b!2136358 true))

(declare-fun bs!444342 () Bool)

(declare-fun b!2136345 () Bool)

(assert (= bs!444342 (and b!2136345 b!2136358)))

(declare-fun lambda!79590 () Int)

(declare-fun lambda!79589 () Int)

(assert (=> bs!444342 (not (= lambda!79590 lambda!79589))))

(assert (=> b!2136345 true))

(declare-fun bs!444343 () Bool)

(declare-fun b!2136337 () Bool)

(assert (= bs!444343 (and b!2136337 b!2136358)))

(declare-fun lt!797340 () Int)

(declare-fun lambda!79591 () Int)

(declare-fun lt!797332 () Int)

(assert (=> bs!444343 (= (= lt!797332 lt!797340) (= lambda!79591 lambda!79589))))

(declare-fun bs!444344 () Bool)

(assert (= bs!444344 (and b!2136337 b!2136345)))

(assert (=> bs!444344 (not (= lambda!79591 lambda!79590))))

(assert (=> b!2136337 true))

(declare-fun b!2136322 () Bool)

(declare-fun e!1363720 () Bool)

(declare-fun tp!658796 () Bool)

(assert (=> b!2136322 (= e!1363720 tp!658796)))

(declare-fun e!1363689 () Bool)

(declare-fun e!1363712 () Bool)

(assert (=> b!2136323 (= e!1363689 (and e!1363712 tp!658793))))

(declare-fun b!2136324 () Bool)

(declare-fun e!1363723 () Bool)

(declare-datatypes ((C!11648 0))(
  ( (C!11649 (val!6810 Int)) )
))
(declare-datatypes ((Regex!5751 0))(
  ( (ElementMatch!5751 (c!340353 C!11648)) (Concat!10053 (regOne!12014 Regex!5751) (regTwo!12014 Regex!5751)) (EmptyExpr!5751) (Star!5751 (reg!6080 Regex!5751)) (EmptyLang!5751) (Union!5751 (regOne!12015 Regex!5751) (regTwo!12015 Regex!5751)) )
))
(declare-datatypes ((List!24270 0))(
  ( (Nil!24186) (Cons!24186 (h!29587 Regex!5751) (t!196798 List!24270)) )
))
(declare-datatypes ((Context!2642 0))(
  ( (Context!2643 (exprs!1821 List!24270)) )
))
(declare-datatypes ((tuple2!23982 0))(
  ( (tuple2!23983 (_1!14110 Context!2642) (_2!14110 C!11648)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23984 0))(
  ( (tuple2!23985 (_1!14111 tuple2!23982) (_2!14111 (InoxSet Context!2642))) )
))
(declare-datatypes ((List!24271 0))(
  ( (Nil!24187) (Cons!24187 (h!29588 tuple2!23984) (t!196799 List!24271)) )
))
(declare-datatypes ((array!9097 0))(
  ( (array!9098 (arr!4060 (Array (_ BitVec 32) (_ BitVec 64))) (size!18917 (_ BitVec 32))) )
))
(declare-datatypes ((array!9099 0))(
  ( (array!9100 (arr!4061 (Array (_ BitVec 32) List!24271)) (size!18918 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5376 0))(
  ( (LongMapFixedSize!5377 (defaultEntry!3053 Int) (mask!6879 (_ BitVec 32)) (extraKeys!2936 (_ BitVec 32)) (zeroValue!2946 List!24271) (minValue!2946 List!24271) (_size!5427 (_ BitVec 32)) (_keys!2985 array!9097) (_values!2968 array!9099) (_vacant!2749 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10577 0))(
  ( (Cell!10578 (v!28756 LongMapFixedSize!5376)) )
))
(declare-datatypes ((MutLongMap!2688 0))(
  ( (LongMap!2688 (underlying!5571 Cell!10577)) (MutLongMapExt!2687 (__x!16240 Int)) )
))
(declare-fun lt!797339 () MutLongMap!2688)

(get-info :version)

(assert (=> b!2136324 (= e!1363712 (and e!1363723 ((_ is LongMap!2688) lt!797339)))))

(declare-datatypes ((Cell!10579 0))(
  ( (Cell!10580 (v!28757 MutLongMap!2688)) )
))
(declare-datatypes ((Hashable!2602 0))(
  ( (HashableExt!2601 (__x!16241 Int)) )
))
(declare-datatypes ((MutableMap!2602 0))(
  ( (MutableMapExt!2601 (__x!16242 Int)) (HashMap!2602 (underlying!5572 Cell!10579) (hashF!4525 Hashable!2602) (_size!5428 (_ BitVec 32)) (defaultValue!2764 Int)) )
))
(declare-datatypes ((CacheUp!1800 0))(
  ( (CacheUp!1801 (cache!2983 MutableMap!2602)) )
))
(declare-fun cacheUp!979 () CacheUp!1800)

(assert (=> b!2136324 (= lt!797339 (v!28757 (underlying!5572 (cache!2983 cacheUp!979))))))

(declare-fun b!2136325 () Bool)

(declare-fun res!922943 () Bool)

(declare-fun e!1363718 () Bool)

(assert (=> b!2136325 (=> (not res!922943) (not e!1363718))))

(declare-datatypes ((tuple3!3298 0))(
  ( (tuple3!3299 (_1!14112 (InoxSet Context!2642)) (_2!14112 Int) (_3!2119 Int)) )
))
(declare-datatypes ((tuple2!23986 0))(
  ( (tuple2!23987 (_1!14113 tuple3!3298) (_2!14113 Int)) )
))
(declare-datatypes ((List!24272 0))(
  ( (Nil!24188) (Cons!24188 (h!29589 tuple2!23986) (t!196800 List!24272)) )
))
(declare-datatypes ((array!9101 0))(
  ( (array!9102 (arr!4062 (Array (_ BitVec 32) List!24272)) (size!18919 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5378 0))(
  ( (LongMapFixedSize!5379 (defaultEntry!3054 Int) (mask!6880 (_ BitVec 32)) (extraKeys!2937 (_ BitVec 32)) (zeroValue!2947 List!24272) (minValue!2947 List!24272) (_size!5429 (_ BitVec 32)) (_keys!2986 array!9097) (_values!2969 array!9101) (_vacant!2750 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10581 0))(
  ( (Cell!10582 (v!28758 LongMapFixedSize!5378)) )
))
(declare-datatypes ((List!24273 0))(
  ( (Nil!24189) (Cons!24189 (h!29590 C!11648) (t!196801 List!24273)) )
))
(declare-datatypes ((IArray!15783 0))(
  ( (IArray!15784 (innerList!7949 List!24273)) )
))
(declare-datatypes ((Conc!7889 0))(
  ( (Node!7889 (left!18625 Conc!7889) (right!18955 Conc!7889) (csize!16008 Int) (cheight!8100 Int)) (Leaf!11532 (xs!10831 IArray!15783) (csize!16009 Int)) (Empty!7889) )
))
(declare-datatypes ((MutLongMap!2689 0))(
  ( (LongMap!2689 (underlying!5573 Cell!10581)) (MutLongMapExt!2688 (__x!16243 Int)) )
))
(declare-datatypes ((Cell!10583 0))(
  ( (Cell!10584 (v!28759 MutLongMap!2689)) )
))
(declare-datatypes ((Hashable!2603 0))(
  ( (HashableExt!2602 (__x!16244 Int)) )
))
(declare-datatypes ((MutableMap!2603 0))(
  ( (MutableMapExt!2602 (__x!16245 Int)) (HashMap!2603 (underlying!5574 Cell!10583) (hashF!4526 Hashable!2603) (_size!5430 (_ BitVec 32)) (defaultValue!2765 Int)) )
))
(declare-datatypes ((BalanceConc!15540 0))(
  ( (BalanceConc!15541 (c!340354 Conc!7889)) )
))
(declare-datatypes ((CacheFurthestNullable!746 0))(
  ( (CacheFurthestNullable!747 (cache!2984 MutableMap!2603) (totalInput!3074 BalanceConc!15540)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!746)

(declare-fun totalInput!851 () BalanceConc!15540)

(assert (=> b!2136325 (= res!922943 (= (totalInput!3074 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2136326 () Bool)

(declare-fun res!922942 () Bool)

(declare-fun e!1363713 () Bool)

(assert (=> b!2136326 (=> res!922942 e!1363713)))

(declare-datatypes ((StackFrame!188 0))(
  ( (StackFrame!189 (z!5822 (InoxSet Context!2642)) (from!2708 Int) (lastNullablePos!395 Int) (res!922955 Int) (totalInput!3075 BalanceConc!15540)) )
))
(declare-datatypes ((List!24274 0))(
  ( (Nil!24190) (Cons!24190 (h!29591 StackFrame!188) (t!196802 List!24274)) )
))
(declare-fun lt!797337 () List!24274)

(declare-fun forall!4937 (List!24274 Int) Bool)

(assert (=> b!2136326 (= res!922942 (not (forall!4937 lt!797337 lambda!79591)))))

(declare-fun b!2136328 () Bool)

(declare-fun e!1363705 () Bool)

(assert (=> b!2136328 (= e!1363705 e!1363718)))

(declare-fun res!922944 () Bool)

(assert (=> b!2136328 (=> (not res!922944) (not e!1363718))))

(declare-fun totalInputSize!296 () Int)

(declare-fun lt!797335 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2136328 (= res!922944 (and (= totalInputSize!296 lt!797335) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18920 (BalanceConc!15540) Int)

(assert (=> b!2136328 (= lt!797335 (size!18920 totalInput!851))))

(declare-fun b!2136329 () Bool)

(declare-fun e!1363702 () Bool)

(declare-fun tp!658801 () Bool)

(declare-fun mapRes!12864 () Bool)

(assert (=> b!2136329 (= e!1363702 (and tp!658801 mapRes!12864))))

(declare-fun condMapEmpty!12864 () Bool)

(declare-fun mapDefault!12863 () List!24272)

(assert (=> b!2136329 (= condMapEmpty!12864 (= (arr!4062 (_values!2969 (v!28758 (underlying!5573 (v!28759 (underlying!5574 (cache!2984 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24272)) mapDefault!12863)))))

(declare-fun b!2136330 () Bool)

(declare-fun e!1363707 () Bool)

(declare-fun e!1363708 () Bool)

(assert (=> b!2136330 (= e!1363707 e!1363708)))

(declare-fun b!2136331 () Bool)

(declare-fun e!1363696 () Bool)

(declare-fun e!1363709 () Bool)

(assert (=> b!2136331 (= e!1363696 e!1363709)))

(declare-fun b!2136332 () Bool)

(declare-fun e!1363699 () Bool)

(declare-fun tp!658794 () Bool)

(declare-fun inv!31854 (Conc!7889) Bool)

(assert (=> b!2136332 (= e!1363699 (and (inv!31854 (c!340354 (totalInput!3074 cacheFurthestNullable!114))) tp!658794))))

(declare-fun e!1363697 () Bool)

(declare-fun tp!658816 () Bool)

(declare-fun e!1363686 () Bool)

(declare-fun tp!658807 () Bool)

(declare-fun array_inv!2901 (array!9097) Bool)

(declare-fun array_inv!2902 (array!9099) Bool)

(assert (=> b!2136333 (= e!1363686 (and tp!658798 tp!658816 tp!658807 (array_inv!2901 (_keys!2985 (v!28756 (underlying!5571 (v!28757 (underlying!5572 (cache!2983 cacheUp!979))))))) (array_inv!2902 (_values!2968 (v!28756 (underlying!5571 (v!28757 (underlying!5572 (cache!2983 cacheUp!979))))))) e!1363697))))

(declare-fun b!2136334 () Bool)

(declare-fun e!1363692 () Bool)

(declare-fun e!1363716 () Bool)

(assert (=> b!2136334 (= e!1363692 e!1363716)))

(declare-fun mapIsEmpty!12862 () Bool)

(declare-fun mapRes!12863 () Bool)

(assert (=> mapIsEmpty!12862 mapRes!12863))

(declare-fun b!2136335 () Bool)

(declare-fun res!922952 () Bool)

(declare-fun e!1363693 () Bool)

(assert (=> b!2136335 (=> res!922952 e!1363693)))

(declare-fun z!3839 () (InoxSet Context!2642))

(declare-fun lostCauseZipper!99 ((InoxSet Context!2642)) Bool)

(assert (=> b!2136335 (= res!922952 (lostCauseZipper!99 z!3839))))

(declare-fun b!2136336 () Bool)

(declare-fun res!922953 () Bool)

(assert (=> b!2136336 (=> (not res!922953) (not e!1363718))))

(declare-fun valid!2103 (CacheUp!1800) Bool)

(assert (=> b!2136336 (= res!922953 (valid!2103 cacheUp!979))))

(declare-fun e!1363690 () Bool)

(assert (=> b!2136337 (= e!1363690 e!1363713)))

(declare-fun res!922950 () Bool)

(assert (=> b!2136337 (=> res!922950 e!1363713)))

(declare-fun stack!8 () List!24274)

(assert (=> b!2136337 (= res!922950 (not (forall!4937 stack!8 lambda!79591)))))

(assert (=> b!2136337 (forall!4937 stack!8 lambda!79591)))

(declare-datatypes ((Unit!37657 0))(
  ( (Unit!37658) )
))
(declare-fun lt!797331 () Unit!37657)

(declare-fun lemmaStackPreservesForEqualRes!15 (List!24274 Int Int) Unit!37657)

(assert (=> b!2136337 (= lt!797331 (lemmaStackPreservesForEqualRes!15 stack!8 lt!797340 lt!797332))))

(assert (=> b!2136337 (forall!4937 stack!8 lambda!79589)))

(declare-fun tp!658813 () Bool)

(declare-fun tp!658805 () Bool)

(declare-fun e!1363695 () Bool)

(declare-fun array_inv!2903 (array!9101) Bool)

(assert (=> b!2136338 (= e!1363695 (and tp!658789 tp!658813 tp!658805 (array_inv!2901 (_keys!2986 (v!28758 (underlying!5573 (v!28759 (underlying!5574 (cache!2984 cacheFurthestNullable!114))))))) (array_inv!2903 (_values!2969 (v!28758 (underlying!5573 (v!28759 (underlying!5574 (cache!2984 cacheFurthestNullable!114))))))) e!1363702))))

(declare-fun b!2136339 () Bool)

(declare-fun tp!658800 () Bool)

(declare-fun mapRes!12862 () Bool)

(assert (=> b!2136339 (= e!1363697 (and tp!658800 mapRes!12862))))

(declare-fun condMapEmpty!12863 () Bool)

(declare-fun mapDefault!12864 () List!24271)

(assert (=> b!2136339 (= condMapEmpty!12863 (= (arr!4061 (_values!2968 (v!28756 (underlying!5571 (v!28757 (underlying!5572 (cache!2983 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24271)) mapDefault!12864)))))

(declare-fun mapIsEmpty!12863 () Bool)

(assert (=> mapIsEmpty!12863 mapRes!12862))

(declare-fun e!1363721 () Bool)

(declare-fun setRes!15972 () Bool)

(declare-fun e!1363722 () Bool)

(declare-fun b!2136340 () Bool)

(declare-fun inv!31855 (BalanceConc!15540) Bool)

(assert (=> b!2136340 (= e!1363722 (and setRes!15972 (inv!31855 (totalInput!3075 (h!29591 stack!8))) e!1363721))))

(declare-fun condSetEmpty!15972 () Bool)

(assert (=> b!2136340 (= condSetEmpty!15972 (= (z!5822 (h!29591 stack!8)) ((as const (Array Context!2642 Bool)) false)))))

(declare-fun b!2136341 () Bool)

(declare-fun e!1363687 () Bool)

(declare-fun tp!658814 () Bool)

(assert (=> b!2136341 (= e!1363687 (and tp!658814 mapRes!12863))))

(declare-fun condMapEmpty!12862 () Bool)

(declare-datatypes ((tuple3!3300 0))(
  ( (tuple3!3301 (_1!14114 Regex!5751) (_2!14114 Context!2642) (_3!2120 C!11648)) )
))
(declare-datatypes ((tuple2!23988 0))(
  ( (tuple2!23989 (_1!14115 tuple3!3300) (_2!14115 (InoxSet Context!2642))) )
))
(declare-datatypes ((List!24275 0))(
  ( (Nil!24191) (Cons!24191 (h!29592 tuple2!23988) (t!196803 List!24275)) )
))
(declare-datatypes ((Hashable!2604 0))(
  ( (HashableExt!2603 (__x!16246 Int)) )
))
(declare-datatypes ((array!9103 0))(
  ( (array!9104 (arr!4063 (Array (_ BitVec 32) List!24275)) (size!18921 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5380 0))(
  ( (LongMapFixedSize!5381 (defaultEntry!3055 Int) (mask!6881 (_ BitVec 32)) (extraKeys!2938 (_ BitVec 32)) (zeroValue!2948 List!24275) (minValue!2948 List!24275) (_size!5431 (_ BitVec 32)) (_keys!2987 array!9097) (_values!2970 array!9103) (_vacant!2751 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10585 0))(
  ( (Cell!10586 (v!28760 LongMapFixedSize!5380)) )
))
(declare-datatypes ((MutLongMap!2690 0))(
  ( (LongMap!2690 (underlying!5575 Cell!10585)) (MutLongMapExt!2689 (__x!16247 Int)) )
))
(declare-datatypes ((Cell!10587 0))(
  ( (Cell!10588 (v!28761 MutLongMap!2690)) )
))
(declare-datatypes ((MutableMap!2604 0))(
  ( (MutableMapExt!2603 (__x!16248 Int)) (HashMap!2604 (underlying!5576 Cell!10587) (hashF!4527 Hashable!2604) (_size!5432 (_ BitVec 32)) (defaultValue!2766 Int)) )
))
(declare-datatypes ((CacheDown!1782 0))(
  ( (CacheDown!1783 (cache!2985 MutableMap!2604)) )
))
(declare-fun cacheDown!1098 () CacheDown!1782)

(declare-fun mapDefault!12862 () List!24275)

(assert (=> b!2136341 (= condMapEmpty!12862 (= (arr!4063 (_values!2970 (v!28760 (underlying!5575 (v!28761 (underlying!5576 (cache!2985 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24275)) mapDefault!12862)))))

(declare-fun b!2136342 () Bool)

(declare-fun res!922954 () Bool)

(assert (=> b!2136342 (=> res!922954 e!1363713)))

(assert (=> b!2136342 (= res!922954 (not (forall!4937 lt!797337 lambda!79590)))))

(declare-fun b!2136343 () Bool)

(assert (=> b!2136343 (= e!1363716 e!1363695)))

(declare-fun b!2136344 () Bool)

(assert (=> b!2136344 (= e!1363693 e!1363690)))

(declare-fun res!922940 () Bool)

(assert (=> b!2136344 (=> res!922940 e!1363690)))

(assert (=> b!2136344 (= res!922940 (not (= lt!797340 lt!797332)))))

(declare-datatypes ((tuple3!3302 0))(
  ( (tuple3!3303 (_1!14116 (InoxSet Context!2642)) (_2!14116 CacheUp!1800) (_3!2121 CacheDown!1782)) )
))
(declare-fun lt!797330 () tuple3!3302)

(declare-fun lt!797338 () Int)

(declare-fun furthestNullablePosition!59 ((InoxSet Context!2642) Int BalanceConc!15540 Int Int) Int)

(assert (=> b!2136344 (= lt!797332 (furthestNullablePosition!59 (_1!14116 lt!797330) (+ 1 from!1043) totalInput!851 lt!797335 lt!797338))))

(assert (=> b!2136344 (= lt!797337 (Cons!24190 (StackFrame!189 z!3839 from!1043 lastNullablePos!123 lt!797340 totalInput!851) stack!8))))

(declare-fun lt!797336 () Bool)

(assert (=> b!2136344 (= lt!797338 (ite lt!797336 from!1043 lastNullablePos!123))))

(declare-fun nullableZipper!123 ((InoxSet Context!2642)) Bool)

(assert (=> b!2136344 (= lt!797336 (nullableZipper!123 (_1!14116 lt!797330)))))

(declare-fun derivationStepZipperMem!45 ((InoxSet Context!2642) C!11648 CacheUp!1800 CacheDown!1782) tuple3!3302)

(declare-fun apply!5944 (BalanceConc!15540 Int) C!11648)

(assert (=> b!2136344 (= lt!797330 (derivationStepZipperMem!45 z!3839 (apply!5944 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun res!922941 () Bool)

(declare-fun e!1363706 () Bool)

(assert (=> b!2136345 (=> (not res!922941) (not e!1363706))))

(assert (=> b!2136345 (= res!922941 (forall!4937 stack!8 lambda!79590))))

(declare-fun b!2136346 () Bool)

(declare-fun e!1363691 () Bool)

(declare-fun lt!797334 () MutLongMap!2689)

(assert (=> b!2136346 (= e!1363691 (and e!1363692 ((_ is LongMap!2689) lt!797334)))))

(assert (=> b!2136346 (= lt!797334 (v!28759 (underlying!5574 (cache!2984 cacheFurthestNullable!114))))))

(declare-fun b!2136347 () Bool)

(declare-fun e!1363715 () Bool)

(declare-fun tp!658788 () Bool)

(assert (=> b!2136347 (= e!1363715 tp!658788)))

(declare-fun b!2136348 () Bool)

(assert (=> b!2136348 (= e!1363713 (or (< (+ 1 from!1043) 0) (> (+ 1 from!1043) totalInputSize!296) (< lt!797338 (- 1)) (>= lt!797338 (+ 1 from!1043)) (not lt!797336) (= lt!797338 from!1043)))))

(declare-fun tp!658802 () Bool)

(declare-fun setRes!15973 () Bool)

(declare-fun setNonEmpty!15972 () Bool)

(declare-fun setElem!15973 () Context!2642)

(declare-fun inv!31856 (Context!2642) Bool)

(assert (=> setNonEmpty!15972 (= setRes!15973 (and tp!658802 (inv!31856 setElem!15973) e!1363720))))

(declare-fun setRest!15972 () (InoxSet Context!2642))

(assert (=> setNonEmpty!15972 (= z!3839 ((_ map or) (store ((as const (Array Context!2642 Bool)) false) setElem!15973 true) setRest!15972))))

(declare-fun b!2136327 () Bool)

(declare-fun res!922939 () Bool)

(assert (=> b!2136327 (=> res!922939 e!1363693)))

(assert (=> b!2136327 (= res!922939 (= from!1043 totalInputSize!296))))

(declare-fun res!922946 () Bool)

(assert (=> start!207608 (=> (not res!922946) (not e!1363705))))

(assert (=> start!207608 (= res!922946 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207608 e!1363705))

(declare-fun e!1363719 () Bool)

(declare-fun inv!31857 (CacheFurthestNullable!746) Bool)

(assert (=> start!207608 (and (inv!31857 cacheFurthestNullable!114) e!1363719)))

(assert (=> start!207608 true))

(declare-fun inv!31858 (CacheDown!1782) Bool)

(assert (=> start!207608 (and (inv!31858 cacheDown!1098) e!1363707)))

(declare-fun e!1363700 () Bool)

(declare-fun inv!31859 (CacheUp!1800) Bool)

(assert (=> start!207608 (and (inv!31859 cacheUp!979) e!1363700)))

(declare-fun condSetEmpty!15973 () Bool)

(assert (=> start!207608 (= condSetEmpty!15973 (= z!3839 ((as const (Array Context!2642 Bool)) false)))))

(assert (=> start!207608 setRes!15973))

(declare-fun e!1363698 () Bool)

(assert (=> start!207608 (and (inv!31855 totalInput!851) e!1363698)))

(declare-fun e!1363711 () Bool)

(assert (=> start!207608 e!1363711))

(declare-fun b!2136349 () Bool)

(declare-fun res!922951 () Bool)

(assert (=> b!2136349 (=> (not res!922951) (not e!1363718))))

(declare-fun valid!2104 (CacheFurthestNullable!746) Bool)

(assert (=> b!2136349 (= res!922951 (valid!2104 cacheFurthestNullable!114))))

(declare-fun mapNonEmpty!12862 () Bool)

(declare-fun tp!658797 () Bool)

(declare-fun tp!658804 () Bool)

(assert (=> mapNonEmpty!12862 (= mapRes!12862 (and tp!658797 tp!658804))))

(declare-fun mapValue!12862 () List!24271)

(declare-fun mapKey!12864 () (_ BitVec 32))

(declare-fun mapRest!12864 () (Array (_ BitVec 32) List!24271))

(assert (=> mapNonEmpty!12862 (= (arr!4061 (_values!2968 (v!28756 (underlying!5571 (v!28757 (underlying!5572 (cache!2983 cacheUp!979))))))) (store mapRest!12864 mapKey!12864 mapValue!12862))))

(declare-fun b!2136350 () Bool)

(assert (=> b!2136350 (= e!1363706 (not e!1363693))))

(declare-fun res!922938 () Bool)

(assert (=> b!2136350 (=> res!922938 e!1363693)))

(declare-datatypes ((Option!4916 0))(
  ( (None!4915) (Some!4915 (v!28762 Int)) )
))
(declare-fun get!7401 (CacheFurthestNullable!746 (InoxSet Context!2642) Int Int) Option!4916)

(assert (=> b!2136350 (= res!922938 ((_ is Some!4915) (get!7401 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2136350 (forall!4937 stack!8 lambda!79589)))

(declare-fun tp!658808 () Bool)

(declare-fun tp!658803 () Bool)

(declare-fun array_inv!2904 (array!9103) Bool)

(assert (=> b!2136351 (= e!1363709 (and tp!658815 tp!658803 tp!658808 (array_inv!2901 (_keys!2987 (v!28760 (underlying!5575 (v!28761 (underlying!5576 (cache!2985 cacheDown!1098))))))) (array_inv!2904 (_values!2970 (v!28760 (underlying!5575 (v!28761 (underlying!5576 (cache!2985 cacheDown!1098))))))) e!1363687))))

(declare-fun b!2136352 () Bool)

(declare-fun e!1363717 () Bool)

(assert (=> b!2136352 (= e!1363717 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2136353 () Bool)

(declare-fun e!1363703 () Bool)

(declare-fun e!1363701 () Bool)

(declare-fun lt!797333 () MutLongMap!2690)

(assert (=> b!2136353 (= e!1363703 (and e!1363701 ((_ is LongMap!2690) lt!797333)))))

(assert (=> b!2136353 (= lt!797333 (v!28761 (underlying!5576 (cache!2985 cacheDown!1098))))))

(declare-fun setIsEmpty!15972 () Bool)

(assert (=> setIsEmpty!15972 setRes!15972))

(declare-fun mapNonEmpty!12863 () Bool)

(declare-fun tp!658790 () Bool)

(declare-fun tp!658810 () Bool)

(assert (=> mapNonEmpty!12863 (= mapRes!12863 (and tp!658790 tp!658810))))

(declare-fun mapValue!12864 () List!24275)

(declare-fun mapKey!12863 () (_ BitVec 32))

(declare-fun mapRest!12862 () (Array (_ BitVec 32) List!24275))

(assert (=> mapNonEmpty!12863 (= (arr!4063 (_values!2970 (v!28760 (underlying!5575 (v!28761 (underlying!5576 (cache!2985 cacheDown!1098))))))) (store mapRest!12862 mapKey!12863 mapValue!12864))))

(declare-fun b!2136354 () Bool)

(assert (=> b!2136354 (= e!1363700 e!1363689)))

(declare-fun b!2136355 () Bool)

(declare-fun res!922949 () Bool)

(assert (=> b!2136355 (=> (not res!922949) (not e!1363718))))

(assert (=> b!2136355 (= res!922949 e!1363717)))

(declare-fun res!922945 () Bool)

(assert (=> b!2136355 (=> res!922945 e!1363717)))

(assert (=> b!2136355 (= res!922945 (not (nullableZipper!123 z!3839)))))

(declare-fun setElem!15972 () Context!2642)

(declare-fun tp!658791 () Bool)

(declare-fun setNonEmpty!15973 () Bool)

(assert (=> setNonEmpty!15973 (= setRes!15972 (and tp!658791 (inv!31856 setElem!15972) e!1363715))))

(declare-fun setRest!15973 () (InoxSet Context!2642))

(assert (=> setNonEmpty!15973 (= (z!5822 (h!29591 stack!8)) ((_ map or) (store ((as const (Array Context!2642 Bool)) false) setElem!15972 true) setRest!15973))))

(declare-fun b!2136356 () Bool)

(declare-fun e!1363688 () Bool)

(assert (=> b!2136356 (= e!1363723 e!1363688)))

(declare-fun b!2136357 () Bool)

(declare-fun tp!658799 () Bool)

(assert (=> b!2136357 (= e!1363698 (and (inv!31854 (c!340354 totalInput!851)) tp!658799))))

(declare-fun mapNonEmpty!12864 () Bool)

(declare-fun tp!658792 () Bool)

(declare-fun tp!658809 () Bool)

(assert (=> mapNonEmpty!12864 (= mapRes!12864 (and tp!658792 tp!658809))))

(declare-fun mapRest!12863 () (Array (_ BitVec 32) List!24272))

(declare-fun mapKey!12862 () (_ BitVec 32))

(declare-fun mapValue!12863 () List!24272)

(assert (=> mapNonEmpty!12864 (= (arr!4062 (_values!2969 (v!28758 (underlying!5573 (v!28759 (underlying!5574 (cache!2984 cacheFurthestNullable!114))))))) (store mapRest!12863 mapKey!12862 mapValue!12863))))

(assert (=> b!2136358 (= e!1363718 e!1363706)))

(declare-fun res!922948 () Bool)

(assert (=> b!2136358 (=> (not res!922948) (not e!1363706))))

(assert (=> b!2136358 (= res!922948 (forall!4937 stack!8 lambda!79589))))

(assert (=> b!2136358 (= lt!797340 (furthestNullablePosition!59 z!3839 from!1043 totalInput!851 lt!797335 lastNullablePos!123))))

(declare-fun setIsEmpty!15973 () Bool)

(assert (=> setIsEmpty!15973 setRes!15973))

(assert (=> b!2136359 (= e!1363708 (and e!1363703 tp!658795))))

(declare-fun b!2136360 () Bool)

(assert (=> b!2136360 (= e!1363701 e!1363696)))

(declare-fun e!1363710 () Bool)

(assert (=> b!2136361 (= e!1363710 (and e!1363691 tp!658811))))

(declare-fun b!2136362 () Bool)

(assert (=> b!2136362 (= e!1363719 (and e!1363710 (inv!31855 (totalInput!3074 cacheFurthestNullable!114)) e!1363699))))

(declare-fun tp!658812 () Bool)

(declare-fun b!2136363 () Bool)

(declare-fun inv!31860 (StackFrame!188) Bool)

(assert (=> b!2136363 (= e!1363711 (and (inv!31860 (h!29591 stack!8)) e!1363722 tp!658812))))

(declare-fun b!2136364 () Bool)

(declare-fun tp!658806 () Bool)

(assert (=> b!2136364 (= e!1363721 (and (inv!31854 (c!340354 (totalInput!3075 (h!29591 stack!8)))) tp!658806))))

(declare-fun b!2136365 () Bool)

(declare-fun res!922947 () Bool)

(assert (=> b!2136365 (=> (not res!922947) (not e!1363718))))

(declare-fun valid!2105 (CacheDown!1782) Bool)

(assert (=> b!2136365 (= res!922947 (valid!2105 cacheDown!1098))))

(declare-fun b!2136366 () Bool)

(assert (=> b!2136366 (= e!1363688 e!1363686)))

(declare-fun mapIsEmpty!12864 () Bool)

(assert (=> mapIsEmpty!12864 mapRes!12864))

(assert (= (and start!207608 res!922946) b!2136328))

(assert (= (and b!2136328 res!922944) b!2136355))

(assert (= (and b!2136355 (not res!922945)) b!2136352))

(assert (= (and b!2136355 res!922949) b!2136336))

(assert (= (and b!2136336 res!922953) b!2136365))

(assert (= (and b!2136365 res!922947) b!2136349))

(assert (= (and b!2136349 res!922951) b!2136325))

(assert (= (and b!2136325 res!922943) b!2136358))

(assert (= (and b!2136358 res!922948) b!2136345))

(assert (= (and b!2136345 res!922941) b!2136350))

(assert (= (and b!2136350 (not res!922938)) b!2136327))

(assert (= (and b!2136327 (not res!922939)) b!2136335))

(assert (= (and b!2136335 (not res!922952)) b!2136344))

(assert (= (and b!2136344 (not res!922940)) b!2136337))

(assert (= (and b!2136337 (not res!922950)) b!2136326))

(assert (= (and b!2136326 (not res!922942)) b!2136342))

(assert (= (and b!2136342 (not res!922954)) b!2136348))

(assert (= (and b!2136329 condMapEmpty!12864) mapIsEmpty!12864))

(assert (= (and b!2136329 (not condMapEmpty!12864)) mapNonEmpty!12864))

(assert (= b!2136338 b!2136329))

(assert (= b!2136343 b!2136338))

(assert (= b!2136334 b!2136343))

(assert (= (and b!2136346 ((_ is LongMap!2689) (v!28759 (underlying!5574 (cache!2984 cacheFurthestNullable!114))))) b!2136334))

(assert (= b!2136361 b!2136346))

(assert (= (and b!2136362 ((_ is HashMap!2603) (cache!2984 cacheFurthestNullable!114))) b!2136361))

(assert (= b!2136362 b!2136332))

(assert (= start!207608 b!2136362))

(assert (= (and b!2136341 condMapEmpty!12862) mapIsEmpty!12862))

(assert (= (and b!2136341 (not condMapEmpty!12862)) mapNonEmpty!12863))

(assert (= b!2136351 b!2136341))

(assert (= b!2136331 b!2136351))

(assert (= b!2136360 b!2136331))

(assert (= (and b!2136353 ((_ is LongMap!2690) (v!28761 (underlying!5576 (cache!2985 cacheDown!1098))))) b!2136360))

(assert (= b!2136359 b!2136353))

(assert (= (and b!2136330 ((_ is HashMap!2604) (cache!2985 cacheDown!1098))) b!2136359))

(assert (= start!207608 b!2136330))

(assert (= (and b!2136339 condMapEmpty!12863) mapIsEmpty!12863))

(assert (= (and b!2136339 (not condMapEmpty!12863)) mapNonEmpty!12862))

(assert (= b!2136333 b!2136339))

(assert (= b!2136366 b!2136333))

(assert (= b!2136356 b!2136366))

(assert (= (and b!2136324 ((_ is LongMap!2688) (v!28757 (underlying!5572 (cache!2983 cacheUp!979))))) b!2136356))

(assert (= b!2136323 b!2136324))

(assert (= (and b!2136354 ((_ is HashMap!2602) (cache!2983 cacheUp!979))) b!2136323))

(assert (= start!207608 b!2136354))

(assert (= (and start!207608 condSetEmpty!15973) setIsEmpty!15973))

(assert (= (and start!207608 (not condSetEmpty!15973)) setNonEmpty!15972))

(assert (= setNonEmpty!15972 b!2136322))

(assert (= start!207608 b!2136357))

(assert (= (and b!2136340 condSetEmpty!15972) setIsEmpty!15972))

(assert (= (and b!2136340 (not condSetEmpty!15972)) setNonEmpty!15973))

(assert (= setNonEmpty!15973 b!2136347))

(assert (= b!2136340 b!2136364))

(assert (= b!2136363 b!2136340))

(assert (= (and start!207608 ((_ is Cons!24190) stack!8)) b!2136363))

(declare-fun m!2583670 () Bool)

(assert (=> b!2136335 m!2583670))

(declare-fun m!2583672 () Bool)

(assert (=> b!2136342 m!2583672))

(declare-fun m!2583674 () Bool)

(assert (=> b!2136338 m!2583674))

(declare-fun m!2583676 () Bool)

(assert (=> b!2136338 m!2583676))

(declare-fun m!2583678 () Bool)

(assert (=> mapNonEmpty!12864 m!2583678))

(declare-fun m!2583680 () Bool)

(assert (=> b!2136332 m!2583680))

(declare-fun m!2583682 () Bool)

(assert (=> b!2136365 m!2583682))

(declare-fun m!2583684 () Bool)

(assert (=> b!2136344 m!2583684))

(declare-fun m!2583686 () Bool)

(assert (=> b!2136344 m!2583686))

(declare-fun m!2583688 () Bool)

(assert (=> b!2136344 m!2583688))

(assert (=> b!2136344 m!2583688))

(declare-fun m!2583690 () Bool)

(assert (=> b!2136344 m!2583690))

(declare-fun m!2583692 () Bool)

(assert (=> mapNonEmpty!12863 m!2583692))

(declare-fun m!2583694 () Bool)

(assert (=> b!2136326 m!2583694))

(declare-fun m!2583696 () Bool)

(assert (=> b!2136357 m!2583696))

(declare-fun m!2583698 () Bool)

(assert (=> b!2136362 m!2583698))

(declare-fun m!2583700 () Bool)

(assert (=> b!2136337 m!2583700))

(assert (=> b!2136337 m!2583700))

(declare-fun m!2583702 () Bool)

(assert (=> b!2136337 m!2583702))

(declare-fun m!2583704 () Bool)

(assert (=> b!2136337 m!2583704))

(declare-fun m!2583706 () Bool)

(assert (=> mapNonEmpty!12862 m!2583706))

(declare-fun m!2583708 () Bool)

(assert (=> setNonEmpty!15973 m!2583708))

(declare-fun m!2583710 () Bool)

(assert (=> b!2136340 m!2583710))

(declare-fun m!2583712 () Bool)

(assert (=> b!2136345 m!2583712))

(declare-fun m!2583714 () Bool)

(assert (=> b!2136355 m!2583714))

(declare-fun m!2583716 () Bool)

(assert (=> b!2136328 m!2583716))

(declare-fun m!2583718 () Bool)

(assert (=> b!2136350 m!2583718))

(assert (=> b!2136350 m!2583704))

(declare-fun m!2583720 () Bool)

(assert (=> setNonEmpty!15972 m!2583720))

(declare-fun m!2583722 () Bool)

(assert (=> b!2136351 m!2583722))

(declare-fun m!2583724 () Bool)

(assert (=> b!2136351 m!2583724))

(declare-fun m!2583726 () Bool)

(assert (=> b!2136333 m!2583726))

(declare-fun m!2583728 () Bool)

(assert (=> b!2136333 m!2583728))

(assert (=> b!2136358 m!2583704))

(declare-fun m!2583730 () Bool)

(assert (=> b!2136358 m!2583730))

(declare-fun m!2583732 () Bool)

(assert (=> b!2136349 m!2583732))

(declare-fun m!2583734 () Bool)

(assert (=> b!2136363 m!2583734))

(declare-fun m!2583736 () Bool)

(assert (=> b!2136364 m!2583736))

(declare-fun m!2583738 () Bool)

(assert (=> b!2136336 m!2583738))

(declare-fun m!2583740 () Bool)

(assert (=> start!207608 m!2583740))

(declare-fun m!2583742 () Bool)

(assert (=> start!207608 m!2583742))

(declare-fun m!2583744 () Bool)

(assert (=> start!207608 m!2583744))

(declare-fun m!2583746 () Bool)

(assert (=> start!207608 m!2583746))

(check-sat b_and!172251 (not b!2136342) (not b!2136322) (not b!2136351) (not b!2136335) (not b_next!63375) (not mapNonEmpty!12863) (not b_next!63373) b_and!172255 (not b!2136332) (not b!2136329) (not b!2136345) b_and!172253 (not b!2136349) (not setNonEmpty!15973) (not b!2136358) (not b!2136344) (not b!2136365) (not b!2136350) (not mapNonEmpty!12864) (not b!2136336) (not start!207608) (not b_next!63379) (not b!2136333) (not b!2136355) (not setNonEmpty!15972) (not b!2136341) (not b_next!63383) (not b!2136328) b_and!172249 (not b!2136364) (not mapNonEmpty!12862) (not b!2136357) (not b!2136363) (not b!2136338) b_and!172257 (not b!2136339) b_and!172259 (not b!2136326) (not b!2136362) (not b!2136337) (not b_next!63381) (not b!2136340) (not b!2136347) (not b_next!63377))
(check-sat b_and!172251 (not b_next!63379) (not b_next!63383) b_and!172249 (not b_next!63375) (not b_next!63373) b_and!172255 b_and!172257 b_and!172259 b_and!172253 (not b_next!63381) (not b_next!63377))
