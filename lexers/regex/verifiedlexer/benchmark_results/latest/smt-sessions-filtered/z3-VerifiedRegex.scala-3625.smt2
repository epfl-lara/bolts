; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207540 () Bool)

(assert start!207540)

(declare-fun b!2131721 () Bool)

(declare-fun b_free!62261 () Bool)

(declare-fun b_next!62965 () Bool)

(assert (=> b!2131721 (= b_free!62261 (not b_next!62965))))

(declare-fun tp!655838 () Bool)

(declare-fun b_and!171841 () Bool)

(assert (=> b!2131721 (= tp!655838 b_and!171841)))

(declare-fun b!2131731 () Bool)

(declare-fun b_free!62263 () Bool)

(declare-fun b_next!62967 () Bool)

(assert (=> b!2131731 (= b_free!62263 (not b_next!62967))))

(declare-fun tp!655839 () Bool)

(declare-fun b_and!171843 () Bool)

(assert (=> b!2131731 (= tp!655839 b_and!171843)))

(declare-fun b!2131751 () Bool)

(declare-fun b_free!62265 () Bool)

(declare-fun b_next!62969 () Bool)

(assert (=> b!2131751 (= b_free!62265 (not b_next!62969))))

(declare-fun tp!655836 () Bool)

(declare-fun b_and!171845 () Bool)

(assert (=> b!2131751 (= tp!655836 b_and!171845)))

(declare-fun b!2131745 () Bool)

(declare-fun b_free!62267 () Bool)

(declare-fun b_next!62971 () Bool)

(assert (=> b!2131745 (= b_free!62267 (not b_next!62971))))

(declare-fun tp!655846 () Bool)

(declare-fun b_and!171847 () Bool)

(assert (=> b!2131745 (= tp!655846 b_and!171847)))

(declare-fun b!2131722 () Bool)

(declare-fun b_free!62269 () Bool)

(declare-fun b_next!62973 () Bool)

(assert (=> b!2131722 (= b_free!62269 (not b_next!62973))))

(declare-fun tp!655848 () Bool)

(declare-fun b_and!171849 () Bool)

(assert (=> b!2131722 (= tp!655848 b_and!171849)))

(declare-fun b!2131718 () Bool)

(declare-fun b_free!62271 () Bool)

(declare-fun b_next!62975 () Bool)

(assert (=> b!2131718 (= b_free!62271 (not b_next!62975))))

(declare-fun tp!655847 () Bool)

(declare-fun b_and!171851 () Bool)

(assert (=> b!2131718 (= tp!655847 b_and!171851)))

(declare-fun b!2131720 () Bool)

(assert (=> b!2131720 true))

(declare-fun bs!444260 () Bool)

(declare-fun b!2131728 () Bool)

(assert (= bs!444260 (and b!2131728 b!2131720)))

(declare-fun lambda!79227 () Int)

(declare-fun lambda!79226 () Int)

(assert (=> bs!444260 (not (= lambda!79227 lambda!79226))))

(assert (=> b!2131728 true))

(declare-fun setRes!15768 () Bool)

(declare-fun e!1359856 () Bool)

(declare-datatypes ((C!11580 0))(
  ( (C!11581 (val!6776 Int)) )
))
(declare-datatypes ((Regex!5717 0))(
  ( (ElementMatch!5717 (c!340201 C!11580)) (Concat!10019 (regOne!11946 Regex!5717) (regTwo!11946 Regex!5717)) (EmptyExpr!5717) (Star!5717 (reg!6046 Regex!5717)) (EmptyLang!5717) (Union!5717 (regOne!11947 Regex!5717) (regTwo!11947 Regex!5717)) )
))
(declare-datatypes ((List!24078 0))(
  ( (Nil!23994) (Cons!23994 (h!29395 Regex!5717) (t!196606 List!24078)) )
))
(declare-datatypes ((Context!2574 0))(
  ( (Context!2575 (exprs!1787 List!24078)) )
))
(declare-datatypes ((List!24079 0))(
  ( (Nil!23995) (Cons!23995 (h!29396 C!11580) (t!196607 List!24079)) )
))
(declare-datatypes ((IArray!15715 0))(
  ( (IArray!15716 (innerList!7915 List!24079)) )
))
(declare-datatypes ((Conc!7855 0))(
  ( (Node!7855 (left!18506 Conc!7855) (right!18836 Conc!7855) (csize!15940 Int) (cheight!8066 Int)) (Leaf!11481 (xs!10797 IArray!15715) (csize!15941 Int)) (Empty!7855) )
))
(declare-datatypes ((BalanceConc!15472 0))(
  ( (BalanceConc!15473 (c!340202 Conc!7855)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!128 0))(
  ( (StackFrame!129 (z!5792 (InoxSet Context!2574)) (from!2678 Int) (lastNullablePos!365 Int) (res!921473 Int) (totalInput!3011 BalanceConc!15472)) )
))
(declare-datatypes ((List!24080 0))(
  ( (Nil!23996) (Cons!23996 (h!29397 StackFrame!128) (t!196608 List!24080)) )
))
(declare-fun stack!8 () List!24080)

(declare-fun e!1359849 () Bool)

(declare-fun b!2131714 () Bool)

(declare-fun inv!31629 (BalanceConc!15472) Bool)

(assert (=> b!2131714 (= e!1359856 (and setRes!15768 (inv!31629 (totalInput!3011 (h!29397 stack!8))) e!1359849))))

(declare-fun condSetEmpty!15769 () Bool)

(assert (=> b!2131714 (= condSetEmpty!15769 (= (z!5792 (h!29397 stack!8)) ((as const (Array Context!2574 Bool)) false)))))

(declare-fun b!2131715 () Bool)

(declare-fun e!1359844 () Bool)

(declare-fun totalInput!851 () BalanceConc!15472)

(declare-fun tp!655858 () Bool)

(declare-fun inv!31630 (Conc!7855) Bool)

(assert (=> b!2131715 (= e!1359844 (and (inv!31630 (c!340202 totalInput!851)) tp!655858))))

(declare-fun b!2131716 () Bool)

(declare-fun e!1359865 () Bool)

(declare-fun e!1359840 () Bool)

(declare-datatypes ((tuple3!3132 0))(
  ( (tuple3!3133 (_1!13902 Regex!5717) (_2!13902 Context!2574) (_3!2036 C!11580)) )
))
(declare-datatypes ((tuple2!23732 0))(
  ( (tuple2!23733 (_1!13903 tuple3!3132) (_2!13903 (InoxSet Context!2574))) )
))
(declare-datatypes ((List!24081 0))(
  ( (Nil!23997) (Cons!23997 (h!29398 tuple2!23732) (t!196609 List!24081)) )
))
(declare-datatypes ((array!8841 0))(
  ( (array!8842 (arr!3932 (Array (_ BitVec 32) (_ BitVec 64))) (size!18767 (_ BitVec 32))) )
))
(declare-datatypes ((array!8843 0))(
  ( (array!8844 (arr!3933 (Array (_ BitVec 32) List!24081)) (size!18768 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5188 0))(
  ( (LongMapFixedSize!5189 (defaultEntry!2959 Int) (mask!6768 (_ BitVec 32)) (extraKeys!2842 (_ BitVec 32)) (zeroValue!2852 List!24081) (minValue!2852 List!24081) (_size!5239 (_ BitVec 32)) (_keys!2891 array!8841) (_values!2874 array!8843) (_vacant!2655 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10201 0))(
  ( (Cell!10202 (v!28547 LongMapFixedSize!5188)) )
))
(declare-datatypes ((MutLongMap!2594 0))(
  ( (LongMap!2594 (underlying!5383 Cell!10201)) (MutLongMapExt!2593 (__x!15958 Int)) )
))
(declare-fun lt!796555 () MutLongMap!2594)

(get-info :version)

(assert (=> b!2131716 (= e!1359865 (and e!1359840 ((_ is LongMap!2594) lt!796555)))))

(declare-datatypes ((Hashable!2508 0))(
  ( (HashableExt!2507 (__x!15959 Int)) )
))
(declare-datatypes ((Cell!10203 0))(
  ( (Cell!10204 (v!28548 MutLongMap!2594)) )
))
(declare-datatypes ((MutableMap!2508 0))(
  ( (MutableMapExt!2507 (__x!15960 Int)) (HashMap!2508 (underlying!5384 Cell!10203) (hashF!4431 Hashable!2508) (_size!5240 (_ BitVec 32)) (defaultValue!2670 Int)) )
))
(declare-datatypes ((CacheDown!1722 0))(
  ( (CacheDown!1723 (cache!2889 MutableMap!2508)) )
))
(declare-fun cacheDown!1098 () CacheDown!1722)

(assert (=> b!2131716 (= lt!796555 (v!28548 (underlying!5384 (cache!2889 cacheDown!1098))))))

(declare-fun b!2131717 () Bool)

(declare-fun res!921463 () Bool)

(declare-fun e!1359842 () Bool)

(assert (=> b!2131717 (=> (not res!921463) (not e!1359842))))

(declare-datatypes ((tuple3!3134 0))(
  ( (tuple3!3135 (_1!13904 (InoxSet Context!2574)) (_2!13904 Int) (_3!2037 Int)) )
))
(declare-datatypes ((tuple2!23734 0))(
  ( (tuple2!23735 (_1!13905 tuple3!3134) (_2!13905 Int)) )
))
(declare-datatypes ((List!24082 0))(
  ( (Nil!23998) (Cons!23998 (h!29399 tuple2!23734) (t!196610 List!24082)) )
))
(declare-datatypes ((array!8845 0))(
  ( (array!8846 (arr!3934 (Array (_ BitVec 32) List!24082)) (size!18769 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5190 0))(
  ( (LongMapFixedSize!5191 (defaultEntry!2960 Int) (mask!6769 (_ BitVec 32)) (extraKeys!2843 (_ BitVec 32)) (zeroValue!2853 List!24082) (minValue!2853 List!24082) (_size!5241 (_ BitVec 32)) (_keys!2892 array!8841) (_values!2875 array!8845) (_vacant!2656 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10205 0))(
  ( (Cell!10206 (v!28549 LongMapFixedSize!5190)) )
))
(declare-datatypes ((MutLongMap!2595 0))(
  ( (LongMap!2595 (underlying!5385 Cell!10205)) (MutLongMapExt!2594 (__x!15961 Int)) )
))
(declare-datatypes ((Cell!10207 0))(
  ( (Cell!10208 (v!28550 MutLongMap!2595)) )
))
(declare-datatypes ((Hashable!2509 0))(
  ( (HashableExt!2508 (__x!15962 Int)) )
))
(declare-datatypes ((MutableMap!2509 0))(
  ( (MutableMapExt!2508 (__x!15963 Int)) (HashMap!2509 (underlying!5386 Cell!10207) (hashF!4432 Hashable!2509) (_size!5242 (_ BitVec 32)) (defaultValue!2671 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!680 0))(
  ( (CacheFurthestNullable!681 (cache!2890 MutableMap!2509) (totalInput!3012 BalanceConc!15472)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!680)

(declare-fun valid!2035 (CacheFurthestNullable!680) Bool)

(assert (=> b!2131717 (= res!921463 (valid!2035 cacheFurthestNullable!114))))

(declare-fun tp!655840 () Bool)

(declare-fun tp!655850 () Bool)

(declare-fun e!1359839 () Bool)

(declare-fun e!1359857 () Bool)

(declare-fun array_inv!2807 (array!8841) Bool)

(declare-fun array_inv!2808 (array!8845) Bool)

(assert (=> b!2131718 (= e!1359839 (and tp!655847 tp!655850 tp!655840 (array_inv!2807 (_keys!2892 (v!28549 (underlying!5385 (v!28550 (underlying!5386 (cache!2890 cacheFurthestNullable!114))))))) (array_inv!2808 (_values!2875 (v!28549 (underlying!5385 (v!28550 (underlying!5386 (cache!2890 cacheFurthestNullable!114))))))) e!1359857))))

(declare-fun b!2131719 () Bool)

(declare-fun tp!655853 () Bool)

(declare-fun mapRes!12557 () Bool)

(assert (=> b!2131719 (= e!1359857 (and tp!655853 mapRes!12557))))

(declare-fun condMapEmpty!12557 () Bool)

(declare-fun mapDefault!12557 () List!24082)

(assert (=> b!2131719 (= condMapEmpty!12557 (= (arr!3934 (_values!2875 (v!28549 (underlying!5385 (v!28550 (underlying!5386 (cache!2890 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24082)) mapDefault!12557)))))

(declare-fun e!1359836 () Bool)

(assert (=> b!2131720 (= e!1359842 e!1359836)))

(declare-fun res!921467 () Bool)

(assert (=> b!2131720 (=> (not res!921467) (not e!1359836))))

(declare-fun forall!4910 (List!24080 Int) Bool)

(assert (=> b!2131720 (= res!921467 (forall!4910 stack!8 lambda!79226))))

(declare-fun lt!796554 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun z!3839 () (InoxSet Context!2574))

(declare-fun from!1043 () Int)

(declare-fun lt!796557 () Int)

(declare-fun furthestNullablePosition!35 ((InoxSet Context!2574) Int BalanceConc!15472 Int Int) Int)

(assert (=> b!2131720 (= lt!796554 (furthestNullablePosition!35 z!3839 from!1043 totalInput!851 lt!796557 lastNullablePos!123))))

(declare-fun e!1359835 () Bool)

(declare-fun e!1359833 () Bool)

(assert (=> b!2131721 (= e!1359835 (and e!1359833 tp!655838))))

(declare-fun mapIsEmpty!12556 () Bool)

(assert (=> mapIsEmpty!12556 mapRes!12557))

(declare-fun b!2131723 () Bool)

(declare-fun e!1359848 () Bool)

(declare-fun tp!655835 () Bool)

(declare-fun mapRes!12556 () Bool)

(assert (=> b!2131723 (= e!1359848 (and tp!655835 mapRes!12556))))

(declare-fun condMapEmpty!12556 () Bool)

(declare-fun mapDefault!12556 () List!24081)

(assert (=> b!2131723 (= condMapEmpty!12556 (= (arr!3933 (_values!2874 (v!28547 (underlying!5383 (v!28548 (underlying!5384 (cache!2889 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24081)) mapDefault!12556)))))

(declare-fun b!2131724 () Bool)

(declare-fun e!1359846 () Bool)

(declare-fun e!1359847 () Bool)

(assert (=> b!2131724 (= e!1359846 e!1359847)))

(declare-fun b!2131725 () Bool)

(declare-fun e!1359831 () Bool)

(assert (=> b!2131725 (= e!1359831 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2131726 () Bool)

(declare-fun e!1359853 () Bool)

(assert (=> b!2131726 (= e!1359836 (not e!1359853))))

(declare-fun res!921470 () Bool)

(assert (=> b!2131726 (=> res!921470 e!1359853)))

(declare-datatypes ((Option!4895 0))(
  ( (None!4894) (Some!4894 (v!28551 Int)) )
))
(declare-fun get!7363 (CacheFurthestNullable!680 (InoxSet Context!2574) Int Int) Option!4895)

(assert (=> b!2131726 (= res!921470 ((_ is Some!4894) (get!7363 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2131726 (forall!4910 stack!8 lambda!79226)))

(declare-fun b!2131727 () Bool)

(declare-fun e!1359863 () Bool)

(declare-fun tp!655849 () Bool)

(assert (=> b!2131727 (= e!1359863 tp!655849)))

(declare-fun mapIsEmpty!12557 () Bool)

(assert (=> mapIsEmpty!12557 mapRes!12556))

(declare-fun res!921469 () Bool)

(assert (=> b!2131728 (=> (not res!921469) (not e!1359836))))

(assert (=> b!2131728 (= res!921469 (forall!4910 stack!8 lambda!79227))))

(declare-fun mapNonEmpty!12556 () Bool)

(declare-fun tp!655834 () Bool)

(declare-fun tp!655855 () Bool)

(assert (=> mapNonEmpty!12556 (= mapRes!12557 (and tp!655834 tp!655855))))

(declare-fun mapValue!12558 () List!24082)

(declare-fun mapKey!12556 () (_ BitVec 32))

(declare-fun mapRest!12558 () (Array (_ BitVec 32) List!24082))

(assert (=> mapNonEmpty!12556 (= (arr!3934 (_values!2875 (v!28549 (underlying!5385 (v!28550 (underlying!5386 (cache!2890 cacheFurthestNullable!114))))))) (store mapRest!12558 mapKey!12556 mapValue!12558))))

(declare-fun b!2131729 () Bool)

(declare-fun e!1359860 () Bool)

(assert (=> b!2131729 (= e!1359840 e!1359860)))

(declare-fun b!2131730 () Bool)

(declare-fun res!921464 () Bool)

(assert (=> b!2131730 (=> (not res!921464) (not e!1359842))))

(assert (=> b!2131730 (= res!921464 e!1359831)))

(declare-fun res!921468 () Bool)

(assert (=> b!2131730 (=> res!921468 e!1359831)))

(declare-fun nullableZipper!100 ((InoxSet Context!2574)) Bool)

(assert (=> b!2131730 (= res!921468 (not (nullableZipper!100 z!3839)))))

(declare-fun tp!655843 () Bool)

(declare-fun e!1359851 () Bool)

(declare-fun tp!655857 () Bool)

(declare-datatypes ((tuple2!23736 0))(
  ( (tuple2!23737 (_1!13906 Context!2574) (_2!13906 C!11580)) )
))
(declare-datatypes ((tuple2!23738 0))(
  ( (tuple2!23739 (_1!13907 tuple2!23736) (_2!13907 (InoxSet Context!2574))) )
))
(declare-datatypes ((List!24083 0))(
  ( (Nil!23999) (Cons!23999 (h!29400 tuple2!23738) (t!196611 List!24083)) )
))
(declare-datatypes ((array!8847 0))(
  ( (array!8848 (arr!3935 (Array (_ BitVec 32) List!24083)) (size!18770 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5192 0))(
  ( (LongMapFixedSize!5193 (defaultEntry!2961 Int) (mask!6770 (_ BitVec 32)) (extraKeys!2844 (_ BitVec 32)) (zeroValue!2854 List!24083) (minValue!2854 List!24083) (_size!5243 (_ BitVec 32)) (_keys!2893 array!8841) (_values!2876 array!8847) (_vacant!2657 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10209 0))(
  ( (Cell!10210 (v!28552 LongMapFixedSize!5192)) )
))
(declare-datatypes ((MutLongMap!2596 0))(
  ( (LongMap!2596 (underlying!5387 Cell!10209)) (MutLongMapExt!2595 (__x!15964 Int)) )
))
(declare-datatypes ((Cell!10211 0))(
  ( (Cell!10212 (v!28553 MutLongMap!2596)) )
))
(declare-datatypes ((Hashable!2510 0))(
  ( (HashableExt!2509 (__x!15965 Int)) )
))
(declare-datatypes ((MutableMap!2510 0))(
  ( (MutableMapExt!2509 (__x!15966 Int)) (HashMap!2510 (underlying!5388 Cell!10211) (hashF!4433 Hashable!2510) (_size!5244 (_ BitVec 32)) (defaultValue!2672 Int)) )
))
(declare-datatypes ((CacheUp!1738 0))(
  ( (CacheUp!1739 (cache!2891 MutableMap!2510)) )
))
(declare-fun cacheUp!979 () CacheUp!1738)

(declare-fun e!1359843 () Bool)

(declare-fun array_inv!2809 (array!8847) Bool)

(assert (=> b!2131731 (= e!1359843 (and tp!655839 tp!655843 tp!655857 (array_inv!2807 (_keys!2893 (v!28552 (underlying!5387 (v!28553 (underlying!5388 (cache!2891 cacheUp!979))))))) (array_inv!2809 (_values!2876 (v!28552 (underlying!5387 (v!28553 (underlying!5388 (cache!2891 cacheUp!979))))))) e!1359851))))

(declare-fun b!2131732 () Bool)

(declare-fun e!1359837 () Bool)

(declare-fun e!1359854 () Bool)

(declare-fun lt!796560 () MutLongMap!2596)

(assert (=> b!2131732 (= e!1359837 (and e!1359854 ((_ is LongMap!2596) lt!796560)))))

(assert (=> b!2131732 (= lt!796560 (v!28553 (underlying!5388 (cache!2891 cacheUp!979))))))

(declare-fun tp!655842 () Bool)

(declare-fun e!1359834 () Bool)

(declare-fun b!2131733 () Bool)

(declare-fun inv!31631 (StackFrame!128) Bool)

(assert (=> b!2131733 (= e!1359834 (and (inv!31631 (h!29397 stack!8)) e!1359856 tp!655842))))

(declare-fun b!2131734 () Bool)

(declare-fun lt!796559 () MutLongMap!2595)

(assert (=> b!2131734 (= e!1359833 (and e!1359846 ((_ is LongMap!2595) lt!796559)))))

(assert (=> b!2131734 (= lt!796559 (v!28550 (underlying!5386 (cache!2890 cacheFurthestNullable!114))))))

(declare-fun b!2131735 () Bool)

(assert (=> b!2131735 (= e!1359847 e!1359839)))

(declare-fun b!2131736 () Bool)

(declare-fun res!921462 () Bool)

(assert (=> b!2131736 (=> (not res!921462) (not e!1359842))))

(assert (=> b!2131736 (= res!921462 (= (totalInput!3012 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2131737 () Bool)

(declare-fun e!1359850 () Bool)

(declare-fun e!1359858 () Bool)

(assert (=> b!2131737 (= e!1359850 e!1359858)))

(declare-fun b!2131738 () Bool)

(declare-fun e!1359845 () Bool)

(assert (=> b!2131738 (= e!1359854 e!1359845)))

(declare-fun b!2131739 () Bool)

(declare-fun e!1359841 () Bool)

(declare-fun tp!655844 () Bool)

(assert (=> b!2131739 (= e!1359841 tp!655844)))

(declare-fun b!2131740 () Bool)

(declare-fun e!1359861 () Bool)

(declare-fun e!1359838 () Bool)

(assert (=> b!2131740 (= e!1359861 e!1359838)))

(declare-fun mapNonEmpty!12557 () Bool)

(declare-fun tp!655841 () Bool)

(declare-fun tp!655832 () Bool)

(assert (=> mapNonEmpty!12557 (= mapRes!12556 (and tp!655841 tp!655832))))

(declare-fun mapKey!12558 () (_ BitVec 32))

(declare-fun mapValue!12556 () List!24081)

(declare-fun mapRest!12556 () (Array (_ BitVec 32) List!24081))

(assert (=> mapNonEmpty!12557 (= (arr!3933 (_values!2874 (v!28547 (underlying!5383 (v!28548 (underlying!5384 (cache!2889 cacheDown!1098))))))) (store mapRest!12556 mapKey!12558 mapValue!12556))))

(declare-fun mapIsEmpty!12558 () Bool)

(declare-fun mapRes!12558 () Bool)

(assert (=> mapIsEmpty!12558 mapRes!12558))

(assert (=> b!2131722 (= e!1359838 (and e!1359837 tp!655848))))

(declare-fun res!921466 () Bool)

(declare-fun e!1359852 () Bool)

(assert (=> start!207540 (=> (not res!921466) (not e!1359852))))

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207540 (= res!921466 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207540 e!1359852))

(declare-fun e!1359859 () Bool)

(declare-fun inv!31632 (CacheFurthestNullable!680) Bool)

(assert (=> start!207540 (and (inv!31632 cacheFurthestNullable!114) e!1359859)))

(assert (=> start!207540 true))

(declare-fun inv!31633 (CacheDown!1722) Bool)

(assert (=> start!207540 (and (inv!31633 cacheDown!1098) e!1359850)))

(declare-fun inv!31634 (CacheUp!1738) Bool)

(assert (=> start!207540 (and (inv!31634 cacheUp!979) e!1359861)))

(declare-fun condSetEmpty!15768 () Bool)

(assert (=> start!207540 (= condSetEmpty!15768 (= z!3839 ((as const (Array Context!2574 Bool)) false)))))

(declare-fun setRes!15769 () Bool)

(assert (=> start!207540 setRes!15769))

(assert (=> start!207540 (and (inv!31629 totalInput!851) e!1359844)))

(assert (=> start!207540 e!1359834))

(declare-fun setIsEmpty!15768 () Bool)

(assert (=> setIsEmpty!15768 setRes!15768))

(declare-fun b!2131741 () Bool)

(assert (=> b!2131741 (= e!1359852 e!1359842)))

(declare-fun res!921461 () Bool)

(assert (=> b!2131741 (=> (not res!921461) (not e!1359842))))

(assert (=> b!2131741 (= res!921461 (and (= totalInputSize!296 lt!796557) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18771 (BalanceConc!15472) Int)

(assert (=> b!2131741 (= lt!796557 (size!18771 totalInput!851))))

(declare-fun b!2131742 () Bool)

(declare-fun e!1359830 () Bool)

(assert (=> b!2131742 (= e!1359859 (and e!1359835 (inv!31629 (totalInput!3012 cacheFurthestNullable!114)) e!1359830))))

(declare-fun setElem!15769 () Context!2574)

(declare-fun setNonEmpty!15768 () Bool)

(declare-fun tp!655852 () Bool)

(declare-fun inv!31635 (Context!2574) Bool)

(assert (=> setNonEmpty!15768 (= setRes!15769 (and tp!655852 (inv!31635 setElem!15769) e!1359863))))

(declare-fun setRest!15769 () (InoxSet Context!2574))

(assert (=> setNonEmpty!15768 (= z!3839 ((_ map or) (store ((as const (Array Context!2574 Bool)) false) setElem!15769 true) setRest!15769))))

(declare-fun lt!796558 () Bool)

(declare-fun lt!796556 () Int)

(declare-fun b!2131743 () Bool)

(assert (=> b!2131743 (= e!1359853 (or (< (+ 1 from!1043) 0) (> (+ 1 from!1043) lt!796557) (< lt!796556 (- 1)) (>= lt!796556 (+ 1 from!1043)) (not lt!796558) (= lt!796556 from!1043)))))

(assert (=> b!2131743 (= lt!796556 (ite lt!796558 from!1043 lastNullablePos!123))))

(declare-datatypes ((tuple3!3136 0))(
  ( (tuple3!3137 (_1!13908 (InoxSet Context!2574)) (_2!13908 CacheUp!1738) (_3!2038 CacheDown!1722)) )
))
(declare-fun derivationStepZipperMem!25 ((InoxSet Context!2574) C!11580 CacheUp!1738 CacheDown!1722) tuple3!3136)

(declare-fun apply!5924 (BalanceConc!15472 Int) C!11580)

(assert (=> b!2131743 (= lt!796558 (nullableZipper!100 (_1!13908 (derivationStepZipperMem!25 z!3839 (apply!5924 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))))

(declare-fun mapNonEmpty!12558 () Bool)

(declare-fun tp!655833 () Bool)

(declare-fun tp!655830 () Bool)

(assert (=> mapNonEmpty!12558 (= mapRes!12558 (and tp!655833 tp!655830))))

(declare-fun mapRest!12557 () (Array (_ BitVec 32) List!24083))

(declare-fun mapValue!12557 () List!24083)

(declare-fun mapKey!12557 () (_ BitVec 32))

(assert (=> mapNonEmpty!12558 (= (arr!3935 (_values!2876 (v!28552 (underlying!5387 (v!28553 (underlying!5388 (cache!2891 cacheUp!979))))))) (store mapRest!12557 mapKey!12557 mapValue!12557))))

(declare-fun tp!655831 () Bool)

(declare-fun setNonEmpty!15769 () Bool)

(declare-fun setElem!15768 () Context!2574)

(assert (=> setNonEmpty!15769 (= setRes!15768 (and tp!655831 (inv!31635 setElem!15768) e!1359841))))

(declare-fun setRest!15768 () (InoxSet Context!2574))

(assert (=> setNonEmpty!15769 (= (z!5792 (h!29397 stack!8)) ((_ map or) (store ((as const (Array Context!2574 Bool)) false) setElem!15768 true) setRest!15768))))

(declare-fun b!2131744 () Bool)

(declare-fun res!921465 () Bool)

(assert (=> b!2131744 (=> res!921465 e!1359853)))

(declare-fun lostCauseZipper!75 ((InoxSet Context!2574)) Bool)

(assert (=> b!2131744 (= res!921465 (lostCauseZipper!75 z!3839))))

(assert (=> b!2131745 (= e!1359858 (and e!1359865 tp!655846))))

(declare-fun b!2131746 () Bool)

(declare-fun res!921471 () Bool)

(assert (=> b!2131746 (=> (not res!921471) (not e!1359842))))

(declare-fun valid!2036 (CacheDown!1722) Bool)

(assert (=> b!2131746 (= res!921471 (valid!2036 cacheDown!1098))))

(declare-fun b!2131747 () Bool)

(assert (=> b!2131747 (= e!1359845 e!1359843)))

(declare-fun b!2131748 () Bool)

(declare-fun tp!655856 () Bool)

(assert (=> b!2131748 (= e!1359849 (and (inv!31630 (c!340202 (totalInput!3011 (h!29397 stack!8)))) tp!655856))))

(declare-fun setIsEmpty!15769 () Bool)

(assert (=> setIsEmpty!15769 setRes!15769))

(declare-fun b!2131749 () Bool)

(declare-fun tp!655845 () Bool)

(assert (=> b!2131749 (= e!1359830 (and (inv!31630 (c!340202 (totalInput!3012 cacheFurthestNullable!114))) tp!655845))))

(declare-fun b!2131750 () Bool)

(declare-fun tp!655837 () Bool)

(assert (=> b!2131750 (= e!1359851 (and tp!655837 mapRes!12558))))

(declare-fun condMapEmpty!12558 () Bool)

(declare-fun mapDefault!12558 () List!24083)

(assert (=> b!2131750 (= condMapEmpty!12558 (= (arr!3935 (_values!2876 (v!28552 (underlying!5387 (v!28553 (underlying!5388 (cache!2891 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24083)) mapDefault!12558)))))

(declare-fun tp!655851 () Bool)

(declare-fun e!1359862 () Bool)

(declare-fun tp!655854 () Bool)

(declare-fun array_inv!2810 (array!8843) Bool)

(assert (=> b!2131751 (= e!1359862 (and tp!655836 tp!655854 tp!655851 (array_inv!2807 (_keys!2891 (v!28547 (underlying!5383 (v!28548 (underlying!5384 (cache!2889 cacheDown!1098))))))) (array_inv!2810 (_values!2874 (v!28547 (underlying!5383 (v!28548 (underlying!5384 (cache!2889 cacheDown!1098))))))) e!1359848))))

(declare-fun b!2131752 () Bool)

(declare-fun res!921472 () Bool)

(assert (=> b!2131752 (=> res!921472 e!1359853)))

(assert (=> b!2131752 (= res!921472 (= from!1043 totalInputSize!296))))

(declare-fun b!2131753 () Bool)

(declare-fun res!921460 () Bool)

(assert (=> b!2131753 (=> (not res!921460) (not e!1359842))))

(declare-fun valid!2037 (CacheUp!1738) Bool)

(assert (=> b!2131753 (= res!921460 (valid!2037 cacheUp!979))))

(declare-fun b!2131754 () Bool)

(assert (=> b!2131754 (= e!1359860 e!1359862)))

(assert (= (and start!207540 res!921466) b!2131741))

(assert (= (and b!2131741 res!921461) b!2131730))

(assert (= (and b!2131730 (not res!921468)) b!2131725))

(assert (= (and b!2131730 res!921464) b!2131753))

(assert (= (and b!2131753 res!921460) b!2131746))

(assert (= (and b!2131746 res!921471) b!2131717))

(assert (= (and b!2131717 res!921463) b!2131736))

(assert (= (and b!2131736 res!921462) b!2131720))

(assert (= (and b!2131720 res!921467) b!2131728))

(assert (= (and b!2131728 res!921469) b!2131726))

(assert (= (and b!2131726 (not res!921470)) b!2131752))

(assert (= (and b!2131752 (not res!921472)) b!2131744))

(assert (= (and b!2131744 (not res!921465)) b!2131743))

(assert (= (and b!2131719 condMapEmpty!12557) mapIsEmpty!12556))

(assert (= (and b!2131719 (not condMapEmpty!12557)) mapNonEmpty!12556))

(assert (= b!2131718 b!2131719))

(assert (= b!2131735 b!2131718))

(assert (= b!2131724 b!2131735))

(assert (= (and b!2131734 ((_ is LongMap!2595) (v!28550 (underlying!5386 (cache!2890 cacheFurthestNullable!114))))) b!2131724))

(assert (= b!2131721 b!2131734))

(assert (= (and b!2131742 ((_ is HashMap!2509) (cache!2890 cacheFurthestNullable!114))) b!2131721))

(assert (= b!2131742 b!2131749))

(assert (= start!207540 b!2131742))

(assert (= (and b!2131723 condMapEmpty!12556) mapIsEmpty!12557))

(assert (= (and b!2131723 (not condMapEmpty!12556)) mapNonEmpty!12557))

(assert (= b!2131751 b!2131723))

(assert (= b!2131754 b!2131751))

(assert (= b!2131729 b!2131754))

(assert (= (and b!2131716 ((_ is LongMap!2594) (v!28548 (underlying!5384 (cache!2889 cacheDown!1098))))) b!2131729))

(assert (= b!2131745 b!2131716))

(assert (= (and b!2131737 ((_ is HashMap!2508) (cache!2889 cacheDown!1098))) b!2131745))

(assert (= start!207540 b!2131737))

(assert (= (and b!2131750 condMapEmpty!12558) mapIsEmpty!12558))

(assert (= (and b!2131750 (not condMapEmpty!12558)) mapNonEmpty!12558))

(assert (= b!2131731 b!2131750))

(assert (= b!2131747 b!2131731))

(assert (= b!2131738 b!2131747))

(assert (= (and b!2131732 ((_ is LongMap!2596) (v!28553 (underlying!5388 (cache!2891 cacheUp!979))))) b!2131738))

(assert (= b!2131722 b!2131732))

(assert (= (and b!2131740 ((_ is HashMap!2510) (cache!2891 cacheUp!979))) b!2131722))

(assert (= start!207540 b!2131740))

(assert (= (and start!207540 condSetEmpty!15768) setIsEmpty!15769))

(assert (= (and start!207540 (not condSetEmpty!15768)) setNonEmpty!15768))

(assert (= setNonEmpty!15768 b!2131727))

(assert (= start!207540 b!2131715))

(assert (= (and b!2131714 condSetEmpty!15769) setIsEmpty!15768))

(assert (= (and b!2131714 (not condSetEmpty!15769)) setNonEmpty!15769))

(assert (= setNonEmpty!15769 b!2131739))

(assert (= b!2131714 b!2131748))

(assert (= b!2131733 b!2131714))

(assert (= (and start!207540 ((_ is Cons!23996) stack!8)) b!2131733))

(declare-fun m!2581244 () Bool)

(assert (=> setNonEmpty!15769 m!2581244))

(declare-fun m!2581246 () Bool)

(assert (=> mapNonEmpty!12558 m!2581246))

(declare-fun m!2581248 () Bool)

(assert (=> setNonEmpty!15768 m!2581248))

(declare-fun m!2581250 () Bool)

(assert (=> b!2131741 m!2581250))

(declare-fun m!2581252 () Bool)

(assert (=> b!2131731 m!2581252))

(declare-fun m!2581254 () Bool)

(assert (=> b!2131731 m!2581254))

(declare-fun m!2581256 () Bool)

(assert (=> b!2131730 m!2581256))

(declare-fun m!2581258 () Bool)

(assert (=> b!2131746 m!2581258))

(declare-fun m!2581260 () Bool)

(assert (=> b!2131726 m!2581260))

(declare-fun m!2581262 () Bool)

(assert (=> b!2131726 m!2581262))

(declare-fun m!2581264 () Bool)

(assert (=> b!2131751 m!2581264))

(declare-fun m!2581266 () Bool)

(assert (=> b!2131751 m!2581266))

(declare-fun m!2581268 () Bool)

(assert (=> b!2131753 m!2581268))

(declare-fun m!2581270 () Bool)

(assert (=> b!2131743 m!2581270))

(assert (=> b!2131743 m!2581270))

(declare-fun m!2581272 () Bool)

(assert (=> b!2131743 m!2581272))

(declare-fun m!2581274 () Bool)

(assert (=> b!2131743 m!2581274))

(declare-fun m!2581276 () Bool)

(assert (=> start!207540 m!2581276))

(declare-fun m!2581278 () Bool)

(assert (=> start!207540 m!2581278))

(declare-fun m!2581280 () Bool)

(assert (=> start!207540 m!2581280))

(declare-fun m!2581282 () Bool)

(assert (=> start!207540 m!2581282))

(declare-fun m!2581284 () Bool)

(assert (=> b!2131749 m!2581284))

(declare-fun m!2581286 () Bool)

(assert (=> b!2131728 m!2581286))

(declare-fun m!2581288 () Bool)

(assert (=> mapNonEmpty!12557 m!2581288))

(declare-fun m!2581290 () Bool)

(assert (=> mapNonEmpty!12556 m!2581290))

(declare-fun m!2581292 () Bool)

(assert (=> b!2131744 m!2581292))

(declare-fun m!2581294 () Bool)

(assert (=> b!2131748 m!2581294))

(assert (=> b!2131720 m!2581262))

(declare-fun m!2581296 () Bool)

(assert (=> b!2131720 m!2581296))

(declare-fun m!2581298 () Bool)

(assert (=> b!2131742 m!2581298))

(declare-fun m!2581300 () Bool)

(assert (=> b!2131718 m!2581300))

(declare-fun m!2581302 () Bool)

(assert (=> b!2131718 m!2581302))

(declare-fun m!2581304 () Bool)

(assert (=> b!2131715 m!2581304))

(declare-fun m!2581306 () Bool)

(assert (=> b!2131717 m!2581306))

(declare-fun m!2581308 () Bool)

(assert (=> b!2131733 m!2581308))

(declare-fun m!2581310 () Bool)

(assert (=> b!2131714 m!2581310))

(check-sat (not b_next!62971) (not b!2131750) (not mapNonEmpty!12558) (not b!2131720) (not b!2131742) (not mapNonEmpty!12557) (not b!2131753) (not b!2131726) (not b!2131730) (not b_next!62965) (not b!2131718) (not b!2131717) b_and!171851 (not b!2131714) (not start!207540) (not setNonEmpty!15769) (not b!2131743) (not setNonEmpty!15768) (not b!2131719) (not b!2131746) (not b!2131727) b_and!171847 (not b!2131723) (not b!2131751) (not b!2131715) (not b!2131748) (not b_next!62973) b_and!171843 b_and!171849 b_and!171841 (not b_next!62967) (not mapNonEmpty!12556) (not b!2131731) (not b!2131744) (not b!2131733) (not b!2131749) (not b!2131741) b_and!171845 (not b_next!62975) (not b!2131739) (not b!2131728) (not b_next!62969))
(check-sat b_and!171851 (not b_next!62971) b_and!171847 (not b_next!62967) b_and!171845 (not b_next!62975) (not b_next!62965) (not b_next!62969) (not b_next!62973) b_and!171843 b_and!171849 b_and!171841)
