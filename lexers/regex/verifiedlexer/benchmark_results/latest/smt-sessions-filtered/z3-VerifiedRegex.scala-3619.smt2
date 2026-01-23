; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207516 () Bool)

(assert start!207516)

(declare-fun b!2130181 () Bool)

(declare-fun b_free!62117 () Bool)

(declare-fun b_next!62821 () Bool)

(assert (=> b!2130181 (= b_free!62117 (not b_next!62821))))

(declare-fun tp!654793 () Bool)

(declare-fun b_and!171697 () Bool)

(assert (=> b!2130181 (= tp!654793 b_and!171697)))

(declare-fun b!2130200 () Bool)

(declare-fun b_free!62119 () Bool)

(declare-fun b_next!62823 () Bool)

(assert (=> b!2130200 (= b_free!62119 (not b_next!62823))))

(declare-fun tp!654786 () Bool)

(declare-fun b_and!171699 () Bool)

(assert (=> b!2130200 (= tp!654786 b_and!171699)))

(declare-fun b!2130196 () Bool)

(declare-fun b_free!62121 () Bool)

(declare-fun b_next!62825 () Bool)

(assert (=> b!2130196 (= b_free!62121 (not b_next!62825))))

(declare-fun tp!654814 () Bool)

(declare-fun b_and!171701 () Bool)

(assert (=> b!2130196 (= tp!654814 b_and!171701)))

(declare-fun b!2130195 () Bool)

(declare-fun b_free!62123 () Bool)

(declare-fun b_next!62827 () Bool)

(assert (=> b!2130195 (= b_free!62123 (not b_next!62827))))

(declare-fun tp!654807 () Bool)

(declare-fun b_and!171703 () Bool)

(assert (=> b!2130195 (= tp!654807 b_and!171703)))

(declare-fun b!2130183 () Bool)

(declare-fun b_free!62125 () Bool)

(declare-fun b_next!62829 () Bool)

(assert (=> b!2130183 (= b_free!62125 (not b_next!62829))))

(declare-fun tp!654803 () Bool)

(declare-fun b_and!171705 () Bool)

(assert (=> b!2130183 (= tp!654803 b_and!171705)))

(declare-fun b!2130203 () Bool)

(declare-fun b_free!62127 () Bool)

(declare-fun b_next!62831 () Bool)

(assert (=> b!2130203 (= b_free!62127 (not b_next!62831))))

(declare-fun tp!654792 () Bool)

(declare-fun b_and!171707 () Bool)

(assert (=> b!2130203 (= tp!654792 b_and!171707)))

(declare-fun b!2130210 () Bool)

(assert (=> b!2130210 true))

(declare-fun bs!444232 () Bool)

(declare-fun b!2130208 () Bool)

(assert (= bs!444232 (and b!2130208 b!2130210)))

(declare-fun lambda!79121 () Int)

(declare-fun lambda!79120 () Int)

(assert (=> bs!444232 (not (= lambda!79121 lambda!79120))))

(assert (=> b!2130208 true))

(declare-fun b!2130171 () Bool)

(declare-fun res!920984 () Bool)

(declare-fun e!1358526 () Bool)

(assert (=> b!2130171 (=> (not res!920984) (not e!1358526))))

(declare-datatypes ((C!11556 0))(
  ( (C!11557 (val!6764 Int)) )
))
(declare-datatypes ((Regex!5705 0))(
  ( (ElementMatch!5705 (c!340171 C!11556)) (Concat!10007 (regOne!11922 Regex!5705) (regTwo!11922 Regex!5705)) (EmptyExpr!5705) (Star!5705 (reg!6034 Regex!5705)) (EmptyLang!5705) (Union!5705 (regOne!11923 Regex!5705) (regTwo!11923 Regex!5705)) )
))
(declare-datatypes ((List!24010 0))(
  ( (Nil!23926) (Cons!23926 (h!29327 Regex!5705) (t!196538 List!24010)) )
))
(declare-datatypes ((Context!2550 0))(
  ( (Context!2551 (exprs!1775 List!24010)) )
))
(declare-datatypes ((tuple3!3080 0))(
  ( (tuple3!3081 (_1!13833 Regex!5705) (_2!13833 Context!2550) (_3!2010 C!11556)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23646 0))(
  ( (tuple2!23647 (_1!13834 tuple3!3080) (_2!13834 (InoxSet Context!2550))) )
))
(declare-datatypes ((List!24011 0))(
  ( (Nil!23927) (Cons!23927 (h!29328 tuple2!23646) (t!196539 List!24011)) )
))
(declare-datatypes ((Hashable!2475 0))(
  ( (HashableExt!2474 (__x!15859 Int)) )
))
(declare-datatypes ((array!8751 0))(
  ( (array!8752 (arr!3887 (Array (_ BitVec 32) (_ BitVec 64))) (size!18714 (_ BitVec 32))) )
))
(declare-datatypes ((array!8753 0))(
  ( (array!8754 (arr!3888 (Array (_ BitVec 32) List!24011)) (size!18715 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5122 0))(
  ( (LongMapFixedSize!5123 (defaultEntry!2926 Int) (mask!6729 (_ BitVec 32)) (extraKeys!2809 (_ BitVec 32)) (zeroValue!2819 List!24011) (minValue!2819 List!24011) (_size!5173 (_ BitVec 32)) (_keys!2858 array!8751) (_values!2841 array!8753) (_vacant!2622 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10069 0))(
  ( (Cell!10070 (v!28474 LongMapFixedSize!5122)) )
))
(declare-datatypes ((MutLongMap!2561 0))(
  ( (LongMap!2561 (underlying!5317 Cell!10069)) (MutLongMapExt!2560 (__x!15860 Int)) )
))
(declare-datatypes ((Cell!10071 0))(
  ( (Cell!10072 (v!28475 MutLongMap!2561)) )
))
(declare-datatypes ((MutableMap!2475 0))(
  ( (MutableMapExt!2474 (__x!15861 Int)) (HashMap!2475 (underlying!5318 Cell!10071) (hashF!4398 Hashable!2475) (_size!5174 (_ BitVec 32)) (defaultValue!2637 Int)) )
))
(declare-datatypes ((CacheDown!1700 0))(
  ( (CacheDown!1701 (cache!2856 MutableMap!2475)) )
))
(declare-fun cacheDown!1098 () CacheDown!1700)

(declare-fun valid!2016 (CacheDown!1700) Bool)

(assert (=> b!2130171 (= res!920984 (valid!2016 cacheDown!1098))))

(declare-fun b!2130172 () Bool)

(declare-fun e!1358525 () Bool)

(declare-fun tp!654811 () Bool)

(assert (=> b!2130172 (= e!1358525 tp!654811)))

(declare-fun b!2130173 () Bool)

(declare-fun e!1358539 () Bool)

(declare-fun e!1358528 () Bool)

(assert (=> b!2130173 (= e!1358539 e!1358528)))

(declare-fun e!1358541 () Bool)

(declare-fun e!1358557 () Bool)

(declare-fun b!2130174 () Bool)

(declare-datatypes ((List!24012 0))(
  ( (Nil!23928) (Cons!23928 (h!29329 C!11556) (t!196540 List!24012)) )
))
(declare-datatypes ((IArray!15691 0))(
  ( (IArray!15692 (innerList!7903 List!24012)) )
))
(declare-datatypes ((Conc!7843 0))(
  ( (Node!7843 (left!18464 Conc!7843) (right!18794 Conc!7843) (csize!15916 Int) (cheight!8054 Int)) (Leaf!11463 (xs!10785 IArray!15691) (csize!15917 Int)) (Empty!7843) )
))
(declare-datatypes ((BalanceConc!15448 0))(
  ( (BalanceConc!15449 (c!340172 Conc!7843)) )
))
(declare-datatypes ((StackFrame!106 0))(
  ( (StackFrame!107 (z!5781 (InoxSet Context!2550)) (from!2667 Int) (lastNullablePos!354 Int) (res!920988 Int) (totalInput!2988 BalanceConc!15448)) )
))
(declare-datatypes ((List!24013 0))(
  ( (Nil!23929) (Cons!23929 (h!29330 StackFrame!106) (t!196541 List!24013)) )
))
(declare-fun stack!8 () List!24013)

(declare-fun tp!654795 () Bool)

(declare-fun inv!31552 (StackFrame!106) Bool)

(assert (=> b!2130174 (= e!1358557 (and (inv!31552 (h!29330 stack!8)) e!1358541 tp!654795))))

(declare-fun res!920979 () Bool)

(declare-fun e!1358522 () Bool)

(assert (=> start!207516 (=> (not res!920979) (not e!1358522))))

(declare-fun from!1043 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207516 (= res!920979 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207516 e!1358522))

(declare-datatypes ((tuple3!3082 0))(
  ( (tuple3!3083 (_1!13835 (InoxSet Context!2550)) (_2!13835 Int) (_3!2011 Int)) )
))
(declare-datatypes ((tuple2!23648 0))(
  ( (tuple2!23649 (_1!13836 tuple3!3082) (_2!13836 Int)) )
))
(declare-datatypes ((List!24014 0))(
  ( (Nil!23930) (Cons!23930 (h!29331 tuple2!23648) (t!196542 List!24014)) )
))
(declare-datatypes ((array!8755 0))(
  ( (array!8756 (arr!3889 (Array (_ BitVec 32) List!24014)) (size!18716 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5124 0))(
  ( (LongMapFixedSize!5125 (defaultEntry!2927 Int) (mask!6730 (_ BitVec 32)) (extraKeys!2810 (_ BitVec 32)) (zeroValue!2820 List!24014) (minValue!2820 List!24014) (_size!5175 (_ BitVec 32)) (_keys!2859 array!8751) (_values!2842 array!8755) (_vacant!2623 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10073 0))(
  ( (Cell!10074 (v!28476 LongMapFixedSize!5124)) )
))
(declare-datatypes ((MutLongMap!2562 0))(
  ( (LongMap!2562 (underlying!5319 Cell!10073)) (MutLongMapExt!2561 (__x!15862 Int)) )
))
(declare-datatypes ((Cell!10075 0))(
  ( (Cell!10076 (v!28477 MutLongMap!2562)) )
))
(declare-datatypes ((Hashable!2476 0))(
  ( (HashableExt!2475 (__x!15863 Int)) )
))
(declare-datatypes ((MutableMap!2476 0))(
  ( (MutableMapExt!2475 (__x!15864 Int)) (HashMap!2476 (underlying!5320 Cell!10075) (hashF!4399 Hashable!2476) (_size!5176 (_ BitVec 32)) (defaultValue!2638 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!656 0))(
  ( (CacheFurthestNullable!657 (cache!2857 MutableMap!2476) (totalInput!2989 BalanceConc!15448)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!656)

(declare-fun e!1358543 () Bool)

(declare-fun inv!31553 (CacheFurthestNullable!656) Bool)

(assert (=> start!207516 (and (inv!31553 cacheFurthestNullable!114) e!1358543)))

(assert (=> start!207516 true))

(declare-fun inv!31554 (CacheDown!1700) Bool)

(assert (=> start!207516 (and (inv!31554 cacheDown!1098) e!1358539)))

(declare-datatypes ((tuple2!23650 0))(
  ( (tuple2!23651 (_1!13837 Context!2550) (_2!13837 C!11556)) )
))
(declare-datatypes ((tuple2!23652 0))(
  ( (tuple2!23653 (_1!13838 tuple2!23650) (_2!13838 (InoxSet Context!2550))) )
))
(declare-datatypes ((List!24015 0))(
  ( (Nil!23931) (Cons!23931 (h!29332 tuple2!23652) (t!196543 List!24015)) )
))
(declare-datatypes ((array!8757 0))(
  ( (array!8758 (arr!3890 (Array (_ BitVec 32) List!24015)) (size!18717 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5126 0))(
  ( (LongMapFixedSize!5127 (defaultEntry!2928 Int) (mask!6731 (_ BitVec 32)) (extraKeys!2811 (_ BitVec 32)) (zeroValue!2821 List!24015) (minValue!2821 List!24015) (_size!5177 (_ BitVec 32)) (_keys!2860 array!8751) (_values!2843 array!8757) (_vacant!2624 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10077 0))(
  ( (Cell!10078 (v!28478 LongMapFixedSize!5126)) )
))
(declare-datatypes ((MutLongMap!2563 0))(
  ( (LongMap!2563 (underlying!5321 Cell!10077)) (MutLongMapExt!2562 (__x!15865 Int)) )
))
(declare-datatypes ((Cell!10079 0))(
  ( (Cell!10080 (v!28479 MutLongMap!2563)) )
))
(declare-datatypes ((Hashable!2477 0))(
  ( (HashableExt!2476 (__x!15866 Int)) )
))
(declare-datatypes ((MutableMap!2477 0))(
  ( (MutableMapExt!2476 (__x!15867 Int)) (HashMap!2477 (underlying!5322 Cell!10079) (hashF!4400 Hashable!2477) (_size!5178 (_ BitVec 32)) (defaultValue!2639 Int)) )
))
(declare-datatypes ((CacheUp!1718 0))(
  ( (CacheUp!1719 (cache!2858 MutableMap!2477)) )
))
(declare-fun cacheUp!979 () CacheUp!1718)

(declare-fun e!1358556 () Bool)

(declare-fun inv!31555 (CacheUp!1718) Bool)

(assert (=> start!207516 (and (inv!31555 cacheUp!979) e!1358556)))

(declare-fun condSetEmpty!15697 () Bool)

(declare-fun z!3839 () (InoxSet Context!2550))

(assert (=> start!207516 (= condSetEmpty!15697 (= z!3839 ((as const (Array Context!2550 Bool)) false)))))

(declare-fun setRes!15696 () Bool)

(assert (=> start!207516 setRes!15696))

(declare-fun totalInput!851 () BalanceConc!15448)

(declare-fun e!1358536 () Bool)

(declare-fun inv!31556 (BalanceConc!15448) Bool)

(assert (=> start!207516 (and (inv!31556 totalInput!851) e!1358536)))

(assert (=> start!207516 e!1358557))

(declare-fun b!2130175 () Bool)

(assert (=> b!2130175 (= e!1358522 e!1358526)))

(declare-fun res!920974 () Bool)

(assert (=> b!2130175 (=> (not res!920974) (not e!1358526))))

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!796341 () Int)

(assert (=> b!2130175 (= res!920974 (and (= totalInputSize!296 lt!796341) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18718 (BalanceConc!15448) Int)

(assert (=> b!2130175 (= lt!796341 (size!18718 totalInput!851))))

(declare-fun setRes!15697 () Bool)

(declare-fun e!1358549 () Bool)

(declare-fun b!2130176 () Bool)

(assert (=> b!2130176 (= e!1358541 (and setRes!15697 (inv!31556 (totalInput!2988 (h!29330 stack!8))) e!1358549))))

(declare-fun condSetEmpty!15696 () Bool)

(assert (=> b!2130176 (= condSetEmpty!15696 (= (z!5781 (h!29330 stack!8)) ((as const (Array Context!2550 Bool)) false)))))

(declare-fun mapNonEmpty!12448 () Bool)

(declare-fun mapRes!12450 () Bool)

(declare-fun tp!654810 () Bool)

(declare-fun tp!654812 () Bool)

(assert (=> mapNonEmpty!12448 (= mapRes!12450 (and tp!654810 tp!654812))))

(declare-fun mapRest!12448 () (Array (_ BitVec 32) List!24014))

(declare-fun mapValue!12450 () List!24014)

(declare-fun mapKey!12449 () (_ BitVec 32))

(assert (=> mapNonEmpty!12448 (= (arr!3889 (_values!2842 (v!28476 (underlying!5319 (v!28477 (underlying!5320 (cache!2857 cacheFurthestNullable!114))))))) (store mapRest!12448 mapKey!12449 mapValue!12450))))

(declare-fun mapNonEmpty!12449 () Bool)

(declare-fun mapRes!12449 () Bool)

(declare-fun tp!654800 () Bool)

(declare-fun tp!654799 () Bool)

(assert (=> mapNonEmpty!12449 (= mapRes!12449 (and tp!654800 tp!654799))))

(declare-fun mapRest!12449 () (Array (_ BitVec 32) List!24011))

(declare-fun mapValue!12448 () List!24011)

(declare-fun mapKey!12448 () (_ BitVec 32))

(assert (=> mapNonEmpty!12449 (= (arr!3888 (_values!2841 (v!28474 (underlying!5317 (v!28475 (underlying!5318 (cache!2856 cacheDown!1098))))))) (store mapRest!12449 mapKey!12448 mapValue!12448))))

(declare-fun b!2130177 () Bool)

(declare-fun e!1358534 () Bool)

(declare-fun e!1358554 () Bool)

(declare-fun lt!796342 () MutLongMap!2561)

(get-info :version)

(assert (=> b!2130177 (= e!1358534 (and e!1358554 ((_ is LongMap!2561) lt!796342)))))

(assert (=> b!2130177 (= lt!796342 (v!28475 (underlying!5318 (cache!2856 cacheDown!1098))))))

(declare-fun b!2130178 () Bool)

(declare-fun res!920977 () Bool)

(assert (=> b!2130178 (=> (not res!920977) (not e!1358526))))

(declare-fun e!1358532 () Bool)

(assert (=> b!2130178 (= res!920977 e!1358532)))

(declare-fun res!920987 () Bool)

(assert (=> b!2130178 (=> res!920987 e!1358532)))

(declare-fun nullableZipper!90 ((InoxSet Context!2550)) Bool)

(assert (=> b!2130178 (= res!920987 (not (nullableZipper!90 z!3839)))))

(declare-fun b!2130179 () Bool)

(declare-fun res!920983 () Bool)

(declare-fun e!1358547 () Bool)

(assert (=> b!2130179 (=> res!920983 e!1358547)))

(declare-fun lt!796344 () Int)

(assert (=> b!2130179 (= res!920983 (not (= lt!796344 lastNullablePos!123)))))

(declare-fun b!2130180 () Bool)

(declare-fun e!1358550 () Bool)

(declare-fun tp!654801 () Bool)

(assert (=> b!2130180 (= e!1358550 tp!654801)))

(declare-fun e!1358544 () Bool)

(declare-fun tp!654813 () Bool)

(declare-fun tp!654805 () Bool)

(declare-fun e!1358546 () Bool)

(declare-fun array_inv!2779 (array!8751) Bool)

(declare-fun array_inv!2780 (array!8755) Bool)

(assert (=> b!2130181 (= e!1358544 (and tp!654793 tp!654813 tp!654805 (array_inv!2779 (_keys!2859 (v!28476 (underlying!5319 (v!28477 (underlying!5320 (cache!2857 cacheFurthestNullable!114))))))) (array_inv!2780 (_values!2842 (v!28476 (underlying!5319 (v!28477 (underlying!5320 (cache!2857 cacheFurthestNullable!114))))))) e!1358546))))

(declare-fun b!2130182 () Bool)

(declare-fun e!1358527 () Bool)

(assert (=> b!2130182 (= e!1358527 (not e!1358547))))

(declare-fun res!920975 () Bool)

(assert (=> b!2130182 (=> res!920975 e!1358547)))

(declare-datatypes ((Option!4888 0))(
  ( (None!4887) (Some!4887 (v!28480 Int)) )
))
(declare-fun get!7350 (CacheFurthestNullable!656 (InoxSet Context!2550) Int Int) Option!4888)

(assert (=> b!2130182 (= res!920975 ((_ is Some!4887) (get!7350 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(declare-fun forall!4902 (List!24013 Int) Bool)

(assert (=> b!2130182 (forall!4902 stack!8 lambda!79120)))

(declare-fun e!1358529 () Bool)

(declare-fun e!1358548 () Bool)

(assert (=> b!2130183 (= e!1358529 (and e!1358548 tp!654803))))

(declare-fun b!2130184 () Bool)

(declare-fun e!1358555 () Bool)

(declare-fun lostCauseZipper!68 ((InoxSet Context!2550)) Bool)

(assert (=> b!2130184 (= e!1358555 (not (lostCauseZipper!68 z!3839)))))

(declare-fun b!2130185 () Bool)

(declare-fun e!1358545 () Bool)

(declare-fun e!1358553 () Bool)

(assert (=> b!2130185 (= e!1358545 e!1358553)))

(declare-fun mapIsEmpty!12448 () Bool)

(assert (=> mapIsEmpty!12448 mapRes!12450))

(declare-fun b!2130186 () Bool)

(declare-fun e!1358530 () Bool)

(declare-fun tp!654788 () Bool)

(assert (=> b!2130186 (= e!1358530 (and tp!654788 mapRes!12449))))

(declare-fun condMapEmpty!12450 () Bool)

(declare-fun mapDefault!12449 () List!24011)

(assert (=> b!2130186 (= condMapEmpty!12450 (= (arr!3888 (_values!2841 (v!28474 (underlying!5317 (v!28475 (underlying!5318 (cache!2856 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24011)) mapDefault!12449)))))

(declare-fun b!2130187 () Bool)

(declare-fun e!1358521 () Bool)

(declare-fun tp!654797 () Bool)

(declare-fun mapRes!12448 () Bool)

(assert (=> b!2130187 (= e!1358521 (and tp!654797 mapRes!12448))))

(declare-fun condMapEmpty!12448 () Bool)

(declare-fun mapDefault!12448 () List!24015)

(assert (=> b!2130187 (= condMapEmpty!12448 (= (arr!3890 (_values!2843 (v!28478 (underlying!5321 (v!28479 (underlying!5322 (cache!2858 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24015)) mapDefault!12448)))))

(declare-fun b!2130188 () Bool)

(assert (=> b!2130188 (= e!1358532 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2130189 () Bool)

(declare-fun res!920982 () Bool)

(assert (=> b!2130189 (=> (not res!920982) (not e!1358526))))

(declare-fun valid!2017 (CacheFurthestNullable!656) Bool)

(assert (=> b!2130189 (= res!920982 (valid!2017 cacheFurthestNullable!114))))

(declare-fun b!2130190 () Bool)

(assert (=> b!2130190 (= e!1358547 true)))

(assert (=> b!2130190 (forall!4902 stack!8 lambda!79120)))

(declare-fun b!2130191 () Bool)

(declare-fun e!1358552 () Bool)

(declare-fun e!1358551 () Bool)

(declare-fun lt!796343 () MutLongMap!2562)

(assert (=> b!2130191 (= e!1358552 (and e!1358551 ((_ is LongMap!2562) lt!796343)))))

(assert (=> b!2130191 (= lt!796343 (v!28477 (underlying!5320 (cache!2857 cacheFurthestNullable!114))))))

(declare-fun b!2130192 () Bool)

(declare-fun res!920981 () Bool)

(assert (=> b!2130192 (=> (not res!920981) (not e!1358526))))

(assert (=> b!2130192 (= res!920981 (= (totalInput!2989 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2130193 () Bool)

(declare-fun e!1358540 () Bool)

(declare-fun e!1358542 () Bool)

(assert (=> b!2130193 (= e!1358540 e!1358542)))

(declare-fun mapNonEmpty!12450 () Bool)

(declare-fun tp!654789 () Bool)

(declare-fun tp!654806 () Bool)

(assert (=> mapNonEmpty!12450 (= mapRes!12448 (and tp!654789 tp!654806))))

(declare-fun mapValue!12449 () List!24015)

(declare-fun mapRest!12450 () (Array (_ BitVec 32) List!24015))

(declare-fun mapKey!12450 () (_ BitVec 32))

(assert (=> mapNonEmpty!12450 (= (arr!3890 (_values!2843 (v!28478 (underlying!5321 (v!28479 (underlying!5322 (cache!2858 cacheUp!979))))))) (store mapRest!12450 mapKey!12450 mapValue!12449))))

(declare-fun b!2130194 () Bool)

(declare-fun e!1358531 () Bool)

(declare-fun tp!654808 () Bool)

(declare-fun inv!31557 (Conc!7843) Bool)

(assert (=> b!2130194 (= e!1358531 (and (inv!31557 (c!340172 (totalInput!2989 cacheFurthestNullable!114))) tp!654808))))

(assert (=> b!2130195 (= e!1358528 (and e!1358534 tp!654807))))

(declare-fun e!1358535 () Bool)

(assert (=> b!2130196 (= e!1358535 (and e!1358552 tp!654814))))

(declare-fun b!2130197 () Bool)

(declare-fun tp!654790 () Bool)

(assert (=> b!2130197 (= e!1358549 (and (inv!31557 (c!340172 (totalInput!2988 (h!29330 stack!8)))) tp!654790))))

(declare-fun b!2130198 () Bool)

(declare-fun e!1358537 () Bool)

(assert (=> b!2130198 (= e!1358551 e!1358537)))

(declare-fun b!2130199 () Bool)

(assert (=> b!2130199 (= e!1358537 e!1358544)))

(declare-fun tp!654787 () Bool)

(declare-fun tp!654802 () Bool)

(declare-fun array_inv!2781 (array!8753) Bool)

(assert (=> b!2130200 (= e!1358542 (and tp!654786 tp!654802 tp!654787 (array_inv!2779 (_keys!2858 (v!28474 (underlying!5317 (v!28475 (underlying!5318 (cache!2856 cacheDown!1098))))))) (array_inv!2781 (_values!2841 (v!28474 (underlying!5317 (v!28475 (underlying!5318 (cache!2856 cacheDown!1098))))))) e!1358530))))

(declare-fun b!2130201 () Bool)

(assert (=> b!2130201 (= e!1358556 e!1358529)))

(declare-fun b!2130202 () Bool)

(assert (=> b!2130202 (= e!1358554 e!1358540)))

(declare-fun mapIsEmpty!12449 () Bool)

(assert (=> mapIsEmpty!12449 mapRes!12448))

(declare-fun e!1358523 () Bool)

(declare-fun tp!654809 () Bool)

(declare-fun tp!654804 () Bool)

(declare-fun array_inv!2782 (array!8757) Bool)

(assert (=> b!2130203 (= e!1358523 (and tp!654792 tp!654809 tp!654804 (array_inv!2779 (_keys!2860 (v!28478 (underlying!5321 (v!28479 (underlying!5322 (cache!2858 cacheUp!979))))))) (array_inv!2782 (_values!2843 (v!28478 (underlying!5321 (v!28479 (underlying!5322 (cache!2858 cacheUp!979))))))) e!1358521))))

(declare-fun mapIsEmpty!12450 () Bool)

(assert (=> mapIsEmpty!12450 mapRes!12449))

(declare-fun setIsEmpty!15696 () Bool)

(assert (=> setIsEmpty!15696 setRes!15696))

(declare-fun b!2130204 () Bool)

(assert (=> b!2130204 (= e!1358553 e!1358523)))

(declare-fun b!2130205 () Bool)

(declare-fun tp!654794 () Bool)

(assert (=> b!2130205 (= e!1358546 (and tp!654794 mapRes!12450))))

(declare-fun condMapEmpty!12449 () Bool)

(declare-fun mapDefault!12450 () List!24014)

(assert (=> b!2130205 (= condMapEmpty!12449 (= (arr!3889 (_values!2842 (v!28476 (underlying!5319 (v!28477 (underlying!5320 (cache!2857 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24014)) mapDefault!12450)))))

(declare-fun b!2130206 () Bool)

(declare-fun lt!796340 () MutLongMap!2563)

(assert (=> b!2130206 (= e!1358548 (and e!1358545 ((_ is LongMap!2563) lt!796340)))))

(assert (=> b!2130206 (= lt!796340 (v!28479 (underlying!5322 (cache!2858 cacheUp!979))))))

(declare-fun b!2130207 () Bool)

(assert (=> b!2130207 (= e!1358543 (and e!1358535 (inv!31556 (totalInput!2989 cacheFurthestNullable!114)) e!1358531))))

(declare-fun setIsEmpty!15697 () Bool)

(assert (=> setIsEmpty!15697 setRes!15697))

(declare-fun res!920978 () Bool)

(assert (=> b!2130208 (=> (not res!920978) (not e!1358527))))

(assert (=> b!2130208 (= res!920978 (forall!4902 stack!8 lambda!79121))))

(declare-fun tp!654796 () Bool)

(declare-fun setElem!15696 () Context!2550)

(declare-fun setNonEmpty!15696 () Bool)

(declare-fun inv!31558 (Context!2550) Bool)

(assert (=> setNonEmpty!15696 (= setRes!15697 (and tp!654796 (inv!31558 setElem!15696) e!1358550))))

(declare-fun setRest!15697 () (InoxSet Context!2550))

(assert (=> setNonEmpty!15696 (= (z!5781 (h!29330 stack!8)) ((_ map or) (store ((as const (Array Context!2550 Bool)) false) setElem!15696 true) setRest!15697))))

(declare-fun b!2130209 () Bool)

(declare-fun res!920980 () Bool)

(assert (=> b!2130209 (=> (not res!920980) (not e!1358526))))

(declare-fun valid!2018 (CacheUp!1718) Bool)

(assert (=> b!2130209 (= res!920980 (valid!2018 cacheUp!979))))

(assert (=> b!2130210 (= e!1358526 e!1358527)))

(declare-fun res!920986 () Bool)

(assert (=> b!2130210 (=> (not res!920986) (not e!1358527))))

(assert (=> b!2130210 (= res!920986 (forall!4902 stack!8 lambda!79120))))

(declare-fun furthestNullablePosition!29 ((InoxSet Context!2550) Int BalanceConc!15448 Int Int) Int)

(assert (=> b!2130210 (= lt!796344 (furthestNullablePosition!29 z!3839 from!1043 totalInput!851 lt!796341 lastNullablePos!123))))

(declare-fun b!2130211 () Bool)

(declare-fun tp!654798 () Bool)

(assert (=> b!2130211 (= e!1358536 (and (inv!31557 (c!340172 totalInput!851)) tp!654798))))

(declare-fun b!2130212 () Bool)

(declare-fun res!920985 () Bool)

(assert (=> b!2130212 (=> res!920985 e!1358547)))

(assert (=> b!2130212 (= res!920985 e!1358555)))

(declare-fun res!920976 () Bool)

(assert (=> b!2130212 (=> (not res!920976) (not e!1358555))))

(assert (=> b!2130212 (= res!920976 (not (= from!1043 totalInputSize!296)))))

(declare-fun setNonEmpty!15697 () Bool)

(declare-fun setElem!15697 () Context!2550)

(declare-fun tp!654791 () Bool)

(assert (=> setNonEmpty!15697 (= setRes!15696 (and tp!654791 (inv!31558 setElem!15697) e!1358525))))

(declare-fun setRest!15696 () (InoxSet Context!2550))

(assert (=> setNonEmpty!15697 (= z!3839 ((_ map or) (store ((as const (Array Context!2550 Bool)) false) setElem!15697 true) setRest!15696))))

(assert (= (and start!207516 res!920979) b!2130175))

(assert (= (and b!2130175 res!920974) b!2130178))

(assert (= (and b!2130178 (not res!920987)) b!2130188))

(assert (= (and b!2130178 res!920977) b!2130209))

(assert (= (and b!2130209 res!920980) b!2130171))

(assert (= (and b!2130171 res!920984) b!2130189))

(assert (= (and b!2130189 res!920982) b!2130192))

(assert (= (and b!2130192 res!920981) b!2130210))

(assert (= (and b!2130210 res!920986) b!2130208))

(assert (= (and b!2130208 res!920978) b!2130182))

(assert (= (and b!2130182 (not res!920975)) b!2130212))

(assert (= (and b!2130212 res!920976) b!2130184))

(assert (= (and b!2130212 (not res!920985)) b!2130179))

(assert (= (and b!2130179 (not res!920983)) b!2130190))

(assert (= (and b!2130205 condMapEmpty!12449) mapIsEmpty!12448))

(assert (= (and b!2130205 (not condMapEmpty!12449)) mapNonEmpty!12448))

(assert (= b!2130181 b!2130205))

(assert (= b!2130199 b!2130181))

(assert (= b!2130198 b!2130199))

(assert (= (and b!2130191 ((_ is LongMap!2562) (v!28477 (underlying!5320 (cache!2857 cacheFurthestNullable!114))))) b!2130198))

(assert (= b!2130196 b!2130191))

(assert (= (and b!2130207 ((_ is HashMap!2476) (cache!2857 cacheFurthestNullable!114))) b!2130196))

(assert (= b!2130207 b!2130194))

(assert (= start!207516 b!2130207))

(assert (= (and b!2130186 condMapEmpty!12450) mapIsEmpty!12450))

(assert (= (and b!2130186 (not condMapEmpty!12450)) mapNonEmpty!12449))

(assert (= b!2130200 b!2130186))

(assert (= b!2130193 b!2130200))

(assert (= b!2130202 b!2130193))

(assert (= (and b!2130177 ((_ is LongMap!2561) (v!28475 (underlying!5318 (cache!2856 cacheDown!1098))))) b!2130202))

(assert (= b!2130195 b!2130177))

(assert (= (and b!2130173 ((_ is HashMap!2475) (cache!2856 cacheDown!1098))) b!2130195))

(assert (= start!207516 b!2130173))

(assert (= (and b!2130187 condMapEmpty!12448) mapIsEmpty!12449))

(assert (= (and b!2130187 (not condMapEmpty!12448)) mapNonEmpty!12450))

(assert (= b!2130203 b!2130187))

(assert (= b!2130204 b!2130203))

(assert (= b!2130185 b!2130204))

(assert (= (and b!2130206 ((_ is LongMap!2563) (v!28479 (underlying!5322 (cache!2858 cacheUp!979))))) b!2130185))

(assert (= b!2130183 b!2130206))

(assert (= (and b!2130201 ((_ is HashMap!2477) (cache!2858 cacheUp!979))) b!2130183))

(assert (= start!207516 b!2130201))

(assert (= (and start!207516 condSetEmpty!15697) setIsEmpty!15696))

(assert (= (and start!207516 (not condSetEmpty!15697)) setNonEmpty!15697))

(assert (= setNonEmpty!15697 b!2130172))

(assert (= start!207516 b!2130211))

(assert (= (and b!2130176 condSetEmpty!15696) setIsEmpty!15697))

(assert (= (and b!2130176 (not condSetEmpty!15696)) setNonEmpty!15696))

(assert (= setNonEmpty!15696 b!2130180))

(assert (= b!2130176 b!2130197))

(assert (= b!2130174 b!2130176))

(assert (= (and start!207516 ((_ is Cons!23929) stack!8)) b!2130174))

(declare-fun m!2580450 () Bool)

(assert (=> b!2130203 m!2580450))

(declare-fun m!2580452 () Bool)

(assert (=> b!2130203 m!2580452))

(declare-fun m!2580454 () Bool)

(assert (=> b!2130211 m!2580454))

(declare-fun m!2580456 () Bool)

(assert (=> mapNonEmpty!12450 m!2580456))

(declare-fun m!2580458 () Bool)

(assert (=> b!2130208 m!2580458))

(declare-fun m!2580460 () Bool)

(assert (=> b!2130181 m!2580460))

(declare-fun m!2580462 () Bool)

(assert (=> b!2130181 m!2580462))

(declare-fun m!2580464 () Bool)

(assert (=> b!2130207 m!2580464))

(declare-fun m!2580466 () Bool)

(assert (=> b!2130200 m!2580466))

(declare-fun m!2580468 () Bool)

(assert (=> b!2130200 m!2580468))

(declare-fun m!2580470 () Bool)

(assert (=> b!2130182 m!2580470))

(declare-fun m!2580472 () Bool)

(assert (=> b!2130182 m!2580472))

(declare-fun m!2580474 () Bool)

(assert (=> b!2130209 m!2580474))

(declare-fun m!2580476 () Bool)

(assert (=> setNonEmpty!15696 m!2580476))

(declare-fun m!2580478 () Bool)

(assert (=> b!2130175 m!2580478))

(declare-fun m!2580480 () Bool)

(assert (=> b!2130171 m!2580480))

(declare-fun m!2580482 () Bool)

(assert (=> b!2130197 m!2580482))

(declare-fun m!2580484 () Bool)

(assert (=> b!2130178 m!2580484))

(declare-fun m!2580486 () Bool)

(assert (=> mapNonEmpty!12449 m!2580486))

(declare-fun m!2580488 () Bool)

(assert (=> start!207516 m!2580488))

(declare-fun m!2580490 () Bool)

(assert (=> start!207516 m!2580490))

(declare-fun m!2580492 () Bool)

(assert (=> start!207516 m!2580492))

(declare-fun m!2580494 () Bool)

(assert (=> start!207516 m!2580494))

(declare-fun m!2580496 () Bool)

(assert (=> b!2130184 m!2580496))

(declare-fun m!2580498 () Bool)

(assert (=> mapNonEmpty!12448 m!2580498))

(assert (=> b!2130210 m!2580472))

(declare-fun m!2580500 () Bool)

(assert (=> b!2130210 m!2580500))

(declare-fun m!2580502 () Bool)

(assert (=> b!2130174 m!2580502))

(assert (=> b!2130190 m!2580472))

(declare-fun m!2580504 () Bool)

(assert (=> b!2130176 m!2580504))

(declare-fun m!2580506 () Bool)

(assert (=> b!2130194 m!2580506))

(declare-fun m!2580508 () Bool)

(assert (=> setNonEmpty!15697 m!2580508))

(declare-fun m!2580510 () Bool)

(assert (=> b!2130189 m!2580510))

(check-sat (not b!2130205) (not b!2130194) (not b_next!62827) (not b!2130208) (not b!2130203) (not mapNonEmpty!12450) b_and!171697 b_and!171701 (not b!2130172) b_and!171699 (not b!2130180) (not b!2130175) (not b!2130184) (not b!2130181) b_and!171703 (not mapNonEmpty!12448) (not b_next!62829) (not setNonEmpty!15696) (not start!207516) (not b!2130207) (not b!2130174) (not b!2130182) (not mapNonEmpty!12449) (not b!2130189) (not b_next!62821) (not b_next!62831) (not b!2130176) (not b!2130187) (not b!2130209) (not setNonEmpty!15697) (not b_next!62825) (not b_next!62823) (not b!2130186) b_and!171707 (not b!2130197) (not b!2130171) (not b!2130190) (not b!2130211) (not b!2130210) (not b!2130178) (not b!2130200) b_and!171705)
(check-sat b_and!171703 (not b_next!62829) (not b_next!62827) (not b_next!62821) (not b_next!62831) b_and!171707 b_and!171697 b_and!171701 b_and!171705 b_and!171699 (not b_next!62825) (not b_next!62823))
