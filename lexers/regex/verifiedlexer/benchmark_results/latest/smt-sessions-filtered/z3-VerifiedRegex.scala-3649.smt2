; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207756 () Bool)

(assert start!207756)

(declare-fun b!2139114 () Bool)

(declare-fun b_free!62837 () Bool)

(declare-fun b_next!63541 () Bool)

(assert (=> b!2139114 (= b_free!62837 (not b_next!63541))))

(declare-fun tp!660708 () Bool)

(declare-fun b_and!172417 () Bool)

(assert (=> b!2139114 (= tp!660708 b_and!172417)))

(declare-fun b!2139113 () Bool)

(declare-fun b_free!62839 () Bool)

(declare-fun b_next!63543 () Bool)

(assert (=> b!2139113 (= b_free!62839 (not b_next!63543))))

(declare-fun tp!660690 () Bool)

(declare-fun b_and!172419 () Bool)

(assert (=> b!2139113 (= tp!660690 b_and!172419)))

(declare-fun b!2139115 () Bool)

(declare-fun b_free!62841 () Bool)

(declare-fun b_next!63545 () Bool)

(assert (=> b!2139115 (= b_free!62841 (not b_next!63545))))

(declare-fun tp!660695 () Bool)

(declare-fun b_and!172421 () Bool)

(assert (=> b!2139115 (= tp!660695 b_and!172421)))

(declare-fun b!2139087 () Bool)

(declare-fun b_free!62843 () Bool)

(declare-fun b_next!63547 () Bool)

(assert (=> b!2139087 (= b_free!62843 (not b_next!63547))))

(declare-fun tp!660707 () Bool)

(declare-fun b_and!172423 () Bool)

(assert (=> b!2139087 (= tp!660707 b_and!172423)))

(declare-fun b!2139116 () Bool)

(declare-fun b_free!62845 () Bool)

(declare-fun b_next!63549 () Bool)

(assert (=> b!2139116 (= b_free!62845 (not b_next!63549))))

(declare-fun tp!660714 () Bool)

(declare-fun b_and!172425 () Bool)

(assert (=> b!2139116 (= tp!660714 b_and!172425)))

(declare-fun b!2139089 () Bool)

(declare-fun b_free!62847 () Bool)

(declare-fun b_next!63551 () Bool)

(assert (=> b!2139089 (= b_free!62847 (not b_next!63551))))

(declare-fun tp!660696 () Bool)

(declare-fun b_and!172427 () Bool)

(assert (=> b!2139089 (= tp!660696 b_and!172427)))

(declare-fun b!2139107 () Bool)

(assert (=> b!2139107 true))

(declare-fun bs!445096 () Bool)

(declare-fun b!2139121 () Bool)

(assert (= bs!445096 (and b!2139121 b!2139107)))

(declare-fun lambda!79927 () Int)

(declare-fun lambda!79926 () Int)

(assert (=> bs!445096 (not (= lambda!79927 lambda!79926))))

(assert (=> b!2139121 true))

(declare-fun b!2139083 () Bool)

(declare-fun res!923878 () Bool)

(declare-fun e!1365882 () Bool)

(assert (=> b!2139083 (=> (not res!923878) (not e!1365882))))

(declare-datatypes ((C!11676 0))(
  ( (C!11677 (val!6824 Int)) )
))
(declare-datatypes ((Regex!5765 0))(
  ( (ElementMatch!5765 (c!340455 C!11676)) (Concat!10067 (regOne!12042 Regex!5765) (regTwo!12042 Regex!5765)) (EmptyExpr!5765) (Star!5765 (reg!6094 Regex!5765)) (EmptyLang!5765) (Union!5765 (regOne!12043 Regex!5765) (regTwo!12043 Regex!5765)) )
))
(declare-datatypes ((List!24347 0))(
  ( (Nil!24263) (Cons!24263 (h!29664 Regex!5765) (t!196877 List!24347)) )
))
(declare-datatypes ((Context!2670 0))(
  ( (Context!2671 (exprs!1835 List!24347)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3368 0))(
  ( (tuple3!3369 (_1!14192 (InoxSet Context!2670)) (_2!14192 Int) (_3!2154 Int)) )
))
(declare-datatypes ((tuple2!24076 0))(
  ( (tuple2!24077 (_1!14193 tuple3!3368) (_2!14193 Int)) )
))
(declare-datatypes ((List!24348 0))(
  ( (Nil!24264) (Cons!24264 (h!29665 tuple2!24076) (t!196878 List!24348)) )
))
(declare-datatypes ((array!9205 0))(
  ( (array!9206 (arr!4110 (Array (_ BitVec 32) (_ BitVec 64))) (size!18978 (_ BitVec 32))) )
))
(declare-datatypes ((array!9207 0))(
  ( (array!9208 (arr!4111 (Array (_ BitVec 32) List!24348)) (size!18979 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5448 0))(
  ( (LongMapFixedSize!5449 (defaultEntry!3089 Int) (mask!6922 (_ BitVec 32)) (extraKeys!2972 (_ BitVec 32)) (zeroValue!2982 List!24348) (minValue!2982 List!24348) (_size!5499 (_ BitVec 32)) (_keys!3021 array!9205) (_values!3004 array!9207) (_vacant!2785 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10721 0))(
  ( (Cell!10722 (v!28838 LongMapFixedSize!5448)) )
))
(declare-datatypes ((List!24349 0))(
  ( (Nil!24265) (Cons!24265 (h!29666 C!11676) (t!196879 List!24349)) )
))
(declare-datatypes ((IArray!15811 0))(
  ( (IArray!15812 (innerList!7963 List!24349)) )
))
(declare-datatypes ((Conc!7903 0))(
  ( (Node!7903 (left!18674 Conc!7903) (right!19004 Conc!7903) (csize!16036 Int) (cheight!8114 Int)) (Leaf!11553 (xs!10845 IArray!15811) (csize!16037 Int)) (Empty!7903) )
))
(declare-datatypes ((MutLongMap!2724 0))(
  ( (LongMap!2724 (underlying!5643 Cell!10721)) (MutLongMapExt!2723 (__x!16348 Int)) )
))
(declare-datatypes ((Cell!10723 0))(
  ( (Cell!10724 (v!28839 MutLongMap!2724)) )
))
(declare-datatypes ((Hashable!2638 0))(
  ( (HashableExt!2637 (__x!16349 Int)) )
))
(declare-datatypes ((MutableMap!2638 0))(
  ( (MutableMapExt!2637 (__x!16350 Int)) (HashMap!2638 (underlying!5644 Cell!10723) (hashF!4561 Hashable!2638) (_size!5500 (_ BitVec 32)) (defaultValue!2800 Int)) )
))
(declare-datatypes ((BalanceConc!15568 0))(
  ( (BalanceConc!15569 (c!340456 Conc!7903)) )
))
(declare-datatypes ((CacheFurthestNullable!774 0))(
  ( (CacheFurthestNullable!775 (cache!3019 MutableMap!2638) (totalInput!3102 BalanceConc!15568)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!774)

(declare-fun totalInput!851 () BalanceConc!15568)

(assert (=> b!2139083 (= res!923878 (= (totalInput!3102 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2139084 () Bool)

(declare-fun e!1365900 () Bool)

(declare-fun e!1365888 () Bool)

(declare-datatypes ((tuple3!3370 0))(
  ( (tuple3!3371 (_1!14194 Regex!5765) (_2!14194 Context!2670) (_3!2155 C!11676)) )
))
(declare-datatypes ((tuple2!24078 0))(
  ( (tuple2!24079 (_1!14195 tuple3!3370) (_2!14195 (InoxSet Context!2670))) )
))
(declare-datatypes ((List!24350 0))(
  ( (Nil!24266) (Cons!24266 (h!29667 tuple2!24078) (t!196880 List!24350)) )
))
(declare-datatypes ((array!9209 0))(
  ( (array!9210 (arr!4112 (Array (_ BitVec 32) List!24350)) (size!18980 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5450 0))(
  ( (LongMapFixedSize!5451 (defaultEntry!3090 Int) (mask!6923 (_ BitVec 32)) (extraKeys!2973 (_ BitVec 32)) (zeroValue!2983 List!24350) (minValue!2983 List!24350) (_size!5501 (_ BitVec 32)) (_keys!3022 array!9205) (_values!3005 array!9209) (_vacant!2786 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10725 0))(
  ( (Cell!10726 (v!28840 LongMapFixedSize!5450)) )
))
(declare-datatypes ((MutLongMap!2725 0))(
  ( (LongMap!2725 (underlying!5645 Cell!10725)) (MutLongMapExt!2724 (__x!16351 Int)) )
))
(declare-fun lt!797851 () MutLongMap!2725)

(get-info :version)

(assert (=> b!2139084 (= e!1365900 (and e!1365888 ((_ is LongMap!2725) lt!797851)))))

(declare-datatypes ((Hashable!2639 0))(
  ( (HashableExt!2638 (__x!16352 Int)) )
))
(declare-datatypes ((Cell!10727 0))(
  ( (Cell!10728 (v!28841 MutLongMap!2725)) )
))
(declare-datatypes ((MutableMap!2639 0))(
  ( (MutableMapExt!2638 (__x!16353 Int)) (HashMap!2639 (underlying!5646 Cell!10727) (hashF!4562 Hashable!2639) (_size!5502 (_ BitVec 32)) (defaultValue!2801 Int)) )
))
(declare-datatypes ((CacheDown!1806 0))(
  ( (CacheDown!1807 (cache!3020 MutableMap!2639)) )
))
(declare-fun cacheDown!1098 () CacheDown!1806)

(assert (=> b!2139084 (= lt!797851 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098))))))

(declare-fun b!2139085 () Bool)

(declare-fun e!1365879 () Bool)

(declare-fun e!1365895 () Bool)

(assert (=> b!2139085 (= e!1365879 e!1365895)))

(declare-fun b!2139086 () Bool)

(declare-fun res!923882 () Bool)

(assert (=> b!2139086 (=> (not res!923882) (not e!1365882))))

(declare-fun valid!2130 (CacheFurthestNullable!774) Bool)

(assert (=> b!2139086 (= res!923882 (valid!2130 cacheFurthestNullable!114))))

(declare-fun b!2139088 () Bool)

(declare-fun e!1365893 () Bool)

(declare-fun tp!660700 () Bool)

(declare-fun inv!31938 (Conc!7903) Bool)

(assert (=> b!2139088 (= e!1365893 (and (inv!31938 (c!340456 totalInput!851)) tp!660700))))

(declare-fun e!1365889 () Bool)

(declare-fun e!1365878 () Bool)

(assert (=> b!2139089 (= e!1365889 (and e!1365878 tp!660696))))

(declare-fun b!2139090 () Bool)

(declare-fun e!1365884 () Bool)

(declare-fun setRes!16189 () Bool)

(declare-datatypes ((StackFrame!210 0))(
  ( (StackFrame!211 (z!5844 (InoxSet Context!2670)) (from!2724 Int) (lastNullablePos!411 Int) (res!923888 Int) (totalInput!3103 BalanceConc!15568)) )
))
(declare-datatypes ((List!24351 0))(
  ( (Nil!24267) (Cons!24267 (h!29668 StackFrame!210) (t!196881 List!24351)) )
))
(declare-fun stack!8 () List!24351)

(declare-fun e!1365869 () Bool)

(declare-fun inv!31939 (BalanceConc!15568) Bool)

(assert (=> b!2139090 (= e!1365884 (and setRes!16189 (inv!31939 (totalInput!3103 (h!29668 stack!8))) e!1365869))))

(declare-fun condSetEmpty!16189 () Bool)

(assert (=> b!2139090 (= condSetEmpty!16189 (= (z!5844 (h!29668 stack!8)) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun b!2139091 () Bool)

(declare-fun e!1365874 () Bool)

(declare-fun e!1365877 () Bool)

(assert (=> b!2139091 (= e!1365874 e!1365877)))

(declare-fun mapIsEmpty!13009 () Bool)

(declare-fun mapRes!13009 () Bool)

(assert (=> mapIsEmpty!13009 mapRes!13009))

(declare-fun b!2139092 () Bool)

(declare-fun e!1365901 () Bool)

(declare-fun lt!797850 () MutLongMap!2724)

(assert (=> b!2139092 (= e!1365878 (and e!1365901 ((_ is LongMap!2724) lt!797850)))))

(assert (=> b!2139092 (= lt!797850 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))))

(declare-fun b!2139093 () Bool)

(declare-fun e!1365891 () Bool)

(assert (=> b!2139093 (= e!1365891 e!1365882)))

(declare-fun res!923883 () Bool)

(assert (=> b!2139093 (=> (not res!923883) (not e!1365882))))

(declare-fun totalInputSize!296 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!797847 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2139093 (= res!923883 (and (= totalInputSize!296 lt!797847) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18981 (BalanceConc!15568) Int)

(assert (=> b!2139093 (= lt!797847 (size!18981 totalInput!851))))

(declare-fun b!2139094 () Bool)

(declare-fun e!1365899 () Bool)

(declare-fun tp!660710 () Bool)

(declare-fun mapRes!13010 () Bool)

(assert (=> b!2139094 (= e!1365899 (and tp!660710 mapRes!13010))))

(declare-fun condMapEmpty!13010 () Bool)

(declare-fun mapDefault!13009 () List!24350)

(assert (=> b!2139094 (= condMapEmpty!13010 (= (arr!4112 (_values!3005 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24350)) mapDefault!13009)))))

(declare-fun b!2139095 () Bool)

(declare-fun e!1365872 () Bool)

(declare-fun tp!660717 () Bool)

(assert (=> b!2139095 (= e!1365872 tp!660717)))

(declare-fun setIsEmpty!16188 () Bool)

(assert (=> setIsEmpty!16188 setRes!16189))

(declare-fun b!2139096 () Bool)

(declare-fun e!1365897 () Bool)

(declare-fun tp!660689 () Bool)

(assert (=> b!2139096 (= e!1365897 tp!660689)))

(declare-fun b!2139097 () Bool)

(declare-fun tp!660701 () Bool)

(assert (=> b!2139097 (= e!1365869 (and (inv!31938 (c!340456 (totalInput!3103 (h!29668 stack!8)))) tp!660701))))

(declare-fun mapIsEmpty!13010 () Bool)

(assert (=> mapIsEmpty!13010 mapRes!13010))

(declare-fun mapIsEmpty!13011 () Bool)

(declare-fun mapRes!13011 () Bool)

(assert (=> mapIsEmpty!13011 mapRes!13011))

(declare-fun b!2139098 () Bool)

(declare-fun e!1365867 () Bool)

(declare-fun tp!660702 () Bool)

(assert (=> b!2139098 (= e!1365867 (and tp!660702 mapRes!13009))))

(declare-fun condMapEmpty!13011 () Bool)

(declare-fun mapDefault!13010 () List!24348)

(assert (=> b!2139098 (= condMapEmpty!13011 (= (arr!4111 (_values!3004 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24348)) mapDefault!13010)))))

(declare-fun b!2139099 () Bool)

(declare-fun e!1365894 () Bool)

(declare-fun e!1365880 () Bool)

(assert (=> b!2139099 (= e!1365894 e!1365880)))

(declare-fun b!2139100 () Bool)

(declare-fun e!1365870 () Bool)

(declare-fun e!1365902 () Bool)

(assert (=> b!2139100 (= e!1365870 e!1365902)))

(declare-fun b!2139101 () Bool)

(declare-fun e!1365892 () Bool)

(assert (=> b!2139101 (= e!1365880 e!1365892)))

(declare-fun b!2139102 () Bool)

(declare-fun e!1365890 () Bool)

(declare-fun tp!660715 () Bool)

(assert (=> b!2139102 (= e!1365890 (and (inv!31938 (c!340456 (totalInput!3102 cacheFurthestNullable!114))) tp!660715))))

(declare-fun b!2139103 () Bool)

(declare-fun e!1365885 () Bool)

(assert (=> b!2139103 (= e!1365885 (and e!1365889 (inv!31939 (totalInput!3102 cacheFurthestNullable!114)) e!1365890))))

(declare-fun b!2139104 () Bool)

(declare-fun res!923880 () Bool)

(assert (=> b!2139104 (=> (not res!923880) (not e!1365882))))

(declare-datatypes ((tuple2!24080 0))(
  ( (tuple2!24081 (_1!14196 Context!2670) (_2!14196 C!11676)) )
))
(declare-datatypes ((tuple2!24082 0))(
  ( (tuple2!24083 (_1!14197 tuple2!24080) (_2!14197 (InoxSet Context!2670))) )
))
(declare-datatypes ((List!24352 0))(
  ( (Nil!24268) (Cons!24268 (h!29669 tuple2!24082) (t!196882 List!24352)) )
))
(declare-datatypes ((array!9211 0))(
  ( (array!9212 (arr!4113 (Array (_ BitVec 32) List!24352)) (size!18982 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5452 0))(
  ( (LongMapFixedSize!5453 (defaultEntry!3091 Int) (mask!6924 (_ BitVec 32)) (extraKeys!2974 (_ BitVec 32)) (zeroValue!2984 List!24352) (minValue!2984 List!24352) (_size!5503 (_ BitVec 32)) (_keys!3023 array!9205) (_values!3006 array!9211) (_vacant!2787 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10729 0))(
  ( (Cell!10730 (v!28842 LongMapFixedSize!5452)) )
))
(declare-datatypes ((MutLongMap!2726 0))(
  ( (LongMap!2726 (underlying!5647 Cell!10729)) (MutLongMapExt!2725 (__x!16354 Int)) )
))
(declare-datatypes ((Cell!10731 0))(
  ( (Cell!10732 (v!28843 MutLongMap!2726)) )
))
(declare-datatypes ((Hashable!2640 0))(
  ( (HashableExt!2639 (__x!16355 Int)) )
))
(declare-datatypes ((MutableMap!2640 0))(
  ( (MutableMapExt!2639 (__x!16356 Int)) (HashMap!2640 (underlying!5648 Cell!10731) (hashF!4563 Hashable!2640) (_size!5504 (_ BitVec 32)) (defaultValue!2802 Int)) )
))
(declare-datatypes ((CacheUp!1820 0))(
  ( (CacheUp!1821 (cache!3021 MutableMap!2640)) )
))
(declare-fun cacheUp!979 () CacheUp!1820)

(declare-fun valid!2131 (CacheUp!1820) Bool)

(assert (=> b!2139104 (= res!923880 (valid!2131 cacheUp!979))))

(declare-fun b!2139105 () Bool)

(declare-fun e!1365881 () Bool)

(declare-fun lt!797848 () MutLongMap!2726)

(assert (=> b!2139105 (= e!1365881 (and e!1365894 ((_ is LongMap!2726) lt!797848)))))

(assert (=> b!2139105 (= lt!797848 (v!28843 (underlying!5648 (cache!3021 cacheUp!979))))))

(declare-fun b!2139106 () Bool)

(declare-fun e!1365868 () Bool)

(declare-fun e!1365875 () Bool)

(assert (=> b!2139106 (= e!1365868 e!1365875)))

(declare-fun e!1365886 () Bool)

(assert (=> b!2139107 (= e!1365882 e!1365886)))

(declare-fun res!923877 () Bool)

(assert (=> b!2139107 (=> (not res!923877) (not e!1365886))))

(declare-fun forall!4954 (List!24351 Int) Bool)

(assert (=> b!2139107 (= res!923877 (forall!4954 stack!8 lambda!79926))))

(declare-fun z!3839 () (InoxSet Context!2670))

(declare-fun lt!797849 () Int)

(declare-fun furthestNullablePosition!68 ((InoxSet Context!2670) Int BalanceConc!15568 Int Int) Int)

(assert (=> b!2139107 (= lt!797849 (furthestNullablePosition!68 z!3839 from!1043 totalInput!851 lt!797847 lastNullablePos!123))))

(declare-fun b!2139108 () Bool)

(declare-fun res!923881 () Bool)

(assert (=> b!2139108 (=> (not res!923881) (not e!1365882))))

(declare-fun e!1365887 () Bool)

(assert (=> b!2139108 (= res!923881 e!1365887)))

(declare-fun res!923887 () Bool)

(assert (=> b!2139108 (=> res!923887 e!1365887)))

(declare-fun nullableZipper!132 ((InoxSet Context!2670)) Bool)

(assert (=> b!2139108 (= res!923887 (not (nullableZipper!132 z!3839)))))

(declare-fun e!1365883 () Bool)

(declare-fun tp!660693 () Bool)

(declare-fun b!2139109 () Bool)

(declare-fun inv!31940 (StackFrame!210) Bool)

(assert (=> b!2139109 (= e!1365883 (and (inv!31940 (h!29668 stack!8)) e!1365884 tp!660693))))

(declare-fun setNonEmpty!16188 () Bool)

(declare-fun tp!660703 () Bool)

(declare-fun setRes!16188 () Bool)

(declare-fun setElem!16188 () Context!2670)

(declare-fun inv!31941 (Context!2670) Bool)

(assert (=> setNonEmpty!16188 (= setRes!16188 (and tp!660703 (inv!31941 setElem!16188) e!1365872))))

(declare-fun setRest!16189 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16188 (= z!3839 ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16188 true) setRest!16189))))

(declare-fun res!923879 () Bool)

(assert (=> start!207756 (=> (not res!923879) (not e!1365891))))

(assert (=> start!207756 (= res!923879 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207756 e!1365891))

(declare-fun inv!31942 (CacheFurthestNullable!774) Bool)

(assert (=> start!207756 (and (inv!31942 cacheFurthestNullable!114) e!1365885)))

(assert (=> start!207756 true))

(declare-fun inv!31943 (CacheDown!1806) Bool)

(assert (=> start!207756 (and (inv!31943 cacheDown!1098) e!1365874)))

(declare-fun inv!31944 (CacheUp!1820) Bool)

(assert (=> start!207756 (and (inv!31944 cacheUp!979) e!1365870)))

(declare-fun condSetEmpty!16188 () Bool)

(assert (=> start!207756 (= condSetEmpty!16188 (= z!3839 ((as const (Array Context!2670 Bool)) false)))))

(assert (=> start!207756 setRes!16188))

(assert (=> start!207756 (and (inv!31939 totalInput!851) e!1365893)))

(assert (=> start!207756 e!1365883))

(declare-fun tp!660692 () Bool)

(declare-fun tp!660697 () Bool)

(declare-fun array_inv!2938 (array!9205) Bool)

(declare-fun array_inv!2939 (array!9207) Bool)

(assert (=> b!2139087 (= e!1365895 (and tp!660707 tp!660692 tp!660697 (array_inv!2938 (_keys!3021 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))))) (array_inv!2939 (_values!3004 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))))) e!1365867))))

(declare-fun b!2139110 () Bool)

(assert (=> b!2139110 (= e!1365901 e!1365879)))

(declare-fun b!2139111 () Bool)

(declare-fun e!1365876 () Bool)

(declare-fun tp!660706 () Bool)

(assert (=> b!2139111 (= e!1365876 (and tp!660706 mapRes!13011))))

(declare-fun condMapEmpty!13009 () Bool)

(declare-fun mapDefault!13011 () List!24352)

(assert (=> b!2139111 (= condMapEmpty!13009 (= (arr!4113 (_values!3006 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24352)) mapDefault!13011)))))

(declare-fun b!2139112 () Bool)

(declare-fun e!1365871 () Bool)

(assert (=> b!2139112 (= e!1365886 (not e!1365871))))

(declare-fun res!923884 () Bool)

(assert (=> b!2139112 (=> res!923884 e!1365871)))

(declare-datatypes ((Option!4926 0))(
  ( (None!4925) (Some!4925 (v!28844 Int)) )
))
(declare-fun lt!797846 () Option!4926)

(assert (=> b!2139112 (= res!923884 (or (not ((_ is Some!4925) lt!797846)) (not (= (v!28844 lt!797846) lt!797849))))))

(declare-fun get!7418 (CacheFurthestNullable!774 (InoxSet Context!2670) Int Int) Option!4926)

(assert (=> b!2139112 (= lt!797846 (get!7418 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> b!2139112 (forall!4954 stack!8 lambda!79926)))

(declare-fun mapNonEmpty!13009 () Bool)

(declare-fun tp!660711 () Bool)

(declare-fun tp!660691 () Bool)

(assert (=> mapNonEmpty!13009 (= mapRes!13010 (and tp!660711 tp!660691))))

(declare-fun mapValue!13010 () List!24350)

(declare-fun mapRest!13011 () (Array (_ BitVec 32) List!24350))

(declare-fun mapKey!13009 () (_ BitVec 32))

(assert (=> mapNonEmpty!13009 (= (arr!4112 (_values!3005 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098))))))) (store mapRest!13011 mapKey!13009 mapValue!13010))))

(declare-fun tp!660716 () Bool)

(declare-fun tp!660705 () Bool)

(declare-fun array_inv!2940 (array!9211) Bool)

(assert (=> b!2139113 (= e!1365892 (and tp!660690 tp!660705 tp!660716 (array_inv!2938 (_keys!3023 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979))))))) (array_inv!2940 (_values!3006 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979))))))) e!1365876))))

(declare-fun tp!660698 () Bool)

(declare-fun tp!660699 () Bool)

(declare-fun array_inv!2941 (array!9209) Bool)

(assert (=> b!2139114 (= e!1365875 (and tp!660708 tp!660698 tp!660699 (array_inv!2938 (_keys!3022 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098))))))) (array_inv!2941 (_values!3005 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098))))))) e!1365899))))

(declare-fun setElem!16189 () Context!2670)

(declare-fun tp!660694 () Bool)

(declare-fun setNonEmpty!16189 () Bool)

(assert (=> setNonEmpty!16189 (= setRes!16189 (and tp!660694 (inv!31941 setElem!16189) e!1365897))))

(declare-fun setRest!16188 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16189 (= (z!5844 (h!29668 stack!8)) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16189 true) setRest!16188))))

(assert (=> b!2139115 (= e!1365902 (and e!1365881 tp!660695))))

(assert (=> b!2139116 (= e!1365877 (and e!1365900 tp!660714))))

(declare-fun mapNonEmpty!13010 () Bool)

(declare-fun tp!660704 () Bool)

(declare-fun tp!660713 () Bool)

(assert (=> mapNonEmpty!13010 (= mapRes!13011 (and tp!660704 tp!660713))))

(declare-fun mapKey!13011 () (_ BitVec 32))

(declare-fun mapRest!13009 () (Array (_ BitVec 32) List!24352))

(declare-fun mapValue!13011 () List!24352)

(assert (=> mapNonEmpty!13010 (= (arr!4113 (_values!3006 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979))))))) (store mapRest!13009 mapKey!13011 mapValue!13011))))

(declare-fun b!2139117 () Bool)

(declare-fun res!923885 () Bool)

(assert (=> b!2139117 (=> (not res!923885) (not e!1365882))))

(declare-fun valid!2132 (CacheDown!1806) Bool)

(assert (=> b!2139117 (= res!923885 (valid!2132 cacheDown!1098))))

(declare-fun b!2139118 () Bool)

(assert (=> b!2139118 (= e!1365888 e!1365868)))

(declare-fun b!2139119 () Bool)

(assert (=> b!2139119 (= e!1365887 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2139120 () Bool)

(assert (=> b!2139120 (= e!1365871 (forall!4954 Nil!24267 lambda!79926))))

(declare-fun setIsEmpty!16189 () Bool)

(assert (=> setIsEmpty!16189 setRes!16188))

(declare-fun res!923886 () Bool)

(assert (=> b!2139121 (=> (not res!923886) (not e!1365886))))

(assert (=> b!2139121 (= res!923886 (forall!4954 stack!8 lambda!79927))))

(declare-fun mapNonEmpty!13011 () Bool)

(declare-fun tp!660709 () Bool)

(declare-fun tp!660712 () Bool)

(assert (=> mapNonEmpty!13011 (= mapRes!13009 (and tp!660709 tp!660712))))

(declare-fun mapRest!13010 () (Array (_ BitVec 32) List!24348))

(declare-fun mapValue!13009 () List!24348)

(declare-fun mapKey!13010 () (_ BitVec 32))

(assert (=> mapNonEmpty!13011 (= (arr!4111 (_values!3004 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))))) (store mapRest!13010 mapKey!13010 mapValue!13009))))

(assert (= (and start!207756 res!923879) b!2139093))

(assert (= (and b!2139093 res!923883) b!2139108))

(assert (= (and b!2139108 (not res!923887)) b!2139119))

(assert (= (and b!2139108 res!923881) b!2139104))

(assert (= (and b!2139104 res!923880) b!2139117))

(assert (= (and b!2139117 res!923885) b!2139086))

(assert (= (and b!2139086 res!923882) b!2139083))

(assert (= (and b!2139083 res!923878) b!2139107))

(assert (= (and b!2139107 res!923877) b!2139121))

(assert (= (and b!2139121 res!923886) b!2139112))

(assert (= (and b!2139112 (not res!923884)) b!2139120))

(assert (= (and b!2139098 condMapEmpty!13011) mapIsEmpty!13009))

(assert (= (and b!2139098 (not condMapEmpty!13011)) mapNonEmpty!13011))

(assert (= b!2139087 b!2139098))

(assert (= b!2139085 b!2139087))

(assert (= b!2139110 b!2139085))

(assert (= (and b!2139092 ((_ is LongMap!2724) (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))) b!2139110))

(assert (= b!2139089 b!2139092))

(assert (= (and b!2139103 ((_ is HashMap!2638) (cache!3019 cacheFurthestNullable!114))) b!2139089))

(assert (= b!2139103 b!2139102))

(assert (= start!207756 b!2139103))

(assert (= (and b!2139094 condMapEmpty!13010) mapIsEmpty!13010))

(assert (= (and b!2139094 (not condMapEmpty!13010)) mapNonEmpty!13009))

(assert (= b!2139114 b!2139094))

(assert (= b!2139106 b!2139114))

(assert (= b!2139118 b!2139106))

(assert (= (and b!2139084 ((_ is LongMap!2725) (v!28841 (underlying!5646 (cache!3020 cacheDown!1098))))) b!2139118))

(assert (= b!2139116 b!2139084))

(assert (= (and b!2139091 ((_ is HashMap!2639) (cache!3020 cacheDown!1098))) b!2139116))

(assert (= start!207756 b!2139091))

(assert (= (and b!2139111 condMapEmpty!13009) mapIsEmpty!13011))

(assert (= (and b!2139111 (not condMapEmpty!13009)) mapNonEmpty!13010))

(assert (= b!2139113 b!2139111))

(assert (= b!2139101 b!2139113))

(assert (= b!2139099 b!2139101))

(assert (= (and b!2139105 ((_ is LongMap!2726) (v!28843 (underlying!5648 (cache!3021 cacheUp!979))))) b!2139099))

(assert (= b!2139115 b!2139105))

(assert (= (and b!2139100 ((_ is HashMap!2640) (cache!3021 cacheUp!979))) b!2139115))

(assert (= start!207756 b!2139100))

(assert (= (and start!207756 condSetEmpty!16188) setIsEmpty!16189))

(assert (= (and start!207756 (not condSetEmpty!16188)) setNonEmpty!16188))

(assert (= setNonEmpty!16188 b!2139095))

(assert (= start!207756 b!2139088))

(assert (= (and b!2139090 condSetEmpty!16189) setIsEmpty!16188))

(assert (= (and b!2139090 (not condSetEmpty!16189)) setNonEmpty!16189))

(assert (= setNonEmpty!16189 b!2139096))

(assert (= b!2139090 b!2139097))

(assert (= b!2139109 b!2139090))

(assert (= (and start!207756 ((_ is Cons!24267) stack!8)) b!2139109))

(declare-fun m!2585609 () Bool)

(assert (=> b!2139109 m!2585609))

(declare-fun m!2585611 () Bool)

(assert (=> b!2139086 m!2585611))

(declare-fun m!2585613 () Bool)

(assert (=> setNonEmpty!16189 m!2585613))

(declare-fun m!2585615 () Bool)

(assert (=> b!2139103 m!2585615))

(declare-fun m!2585617 () Bool)

(assert (=> setNonEmpty!16188 m!2585617))

(declare-fun m!2585619 () Bool)

(assert (=> b!2139117 m!2585619))

(declare-fun m!2585621 () Bool)

(assert (=> b!2139097 m!2585621))

(declare-fun m!2585623 () Bool)

(assert (=> b!2139093 m!2585623))

(declare-fun m!2585625 () Bool)

(assert (=> mapNonEmpty!13009 m!2585625))

(declare-fun m!2585627 () Bool)

(assert (=> b!2139088 m!2585627))

(declare-fun m!2585629 () Bool)

(assert (=> mapNonEmpty!13010 m!2585629))

(declare-fun m!2585631 () Bool)

(assert (=> b!2139107 m!2585631))

(declare-fun m!2585633 () Bool)

(assert (=> b!2139107 m!2585633))

(declare-fun m!2585635 () Bool)

(assert (=> b!2139102 m!2585635))

(declare-fun m!2585637 () Bool)

(assert (=> b!2139113 m!2585637))

(declare-fun m!2585639 () Bool)

(assert (=> b!2139113 m!2585639))

(declare-fun m!2585641 () Bool)

(assert (=> b!2139090 m!2585641))

(declare-fun m!2585643 () Bool)

(assert (=> b!2139120 m!2585643))

(declare-fun m!2585645 () Bool)

(assert (=> b!2139112 m!2585645))

(assert (=> b!2139112 m!2585631))

(declare-fun m!2585647 () Bool)

(assert (=> b!2139087 m!2585647))

(declare-fun m!2585649 () Bool)

(assert (=> b!2139087 m!2585649))

(declare-fun m!2585651 () Bool)

(assert (=> b!2139121 m!2585651))

(declare-fun m!2585653 () Bool)

(assert (=> b!2139114 m!2585653))

(declare-fun m!2585655 () Bool)

(assert (=> b!2139114 m!2585655))

(declare-fun m!2585657 () Bool)

(assert (=> start!207756 m!2585657))

(declare-fun m!2585659 () Bool)

(assert (=> start!207756 m!2585659))

(declare-fun m!2585661 () Bool)

(assert (=> start!207756 m!2585661))

(declare-fun m!2585663 () Bool)

(assert (=> start!207756 m!2585663))

(declare-fun m!2585665 () Bool)

(assert (=> b!2139108 m!2585665))

(declare-fun m!2585667 () Bool)

(assert (=> mapNonEmpty!13011 m!2585667))

(declare-fun m!2585669 () Bool)

(assert (=> b!2139104 m!2585669))

(check-sat (not b!2139107) (not b!2139097) (not mapNonEmpty!13010) (not b!2139117) (not b!2139096) (not setNonEmpty!16188) (not b!2139103) (not b_next!63549) (not b!2139102) (not b_next!63547) (not b!2139114) (not b!2139121) (not b!2139095) (not b_next!63543) (not mapNonEmpty!13011) b_and!172423 (not b!2139109) b_and!172419 (not mapNonEmpty!13009) (not b!2139111) (not b!2139112) (not b!2139094) b_and!172421 (not b!2139113) (not b!2139098) b_and!172425 (not b!2139120) (not b!2139086) (not b!2139088) (not b!2139093) b_and!172427 (not b!2139104) (not b_next!63551) (not start!207756) (not b!2139087) (not b!2139090) (not b_next!63541) (not b_next!63545) (not setNonEmpty!16189) (not b!2139108) b_and!172417)
(check-sat (not b_next!63543) b_and!172423 b_and!172419 b_and!172421 b_and!172425 b_and!172427 (not b_next!63551) (not b_next!63541) (not b_next!63549) (not b_next!63545) (not b_next!63547) b_and!172417)
(get-model)

(declare-fun d!644650 () Bool)

(declare-fun lambda!79930 () Int)

(declare-fun forall!4955 (List!24347 Int) Bool)

(assert (=> d!644650 (= (inv!31941 setElem!16188) (forall!4955 (exprs!1835 setElem!16188) lambda!79930))))

(declare-fun bs!445097 () Bool)

(assert (= bs!445097 d!644650))

(declare-fun m!2585671 () Bool)

(assert (=> bs!445097 m!2585671))

(assert (=> setNonEmpty!16188 d!644650))

(declare-fun d!644652 () Bool)

(declare-fun validCacheMapDown!251 (MutableMap!2639) Bool)

(assert (=> d!644652 (= (valid!2132 cacheDown!1098) (validCacheMapDown!251 (cache!3020 cacheDown!1098)))))

(declare-fun bs!445098 () Bool)

(assert (= bs!445098 d!644652))

(declare-fun m!2585673 () Bool)

(assert (=> bs!445098 m!2585673))

(assert (=> b!2139117 d!644652))

(declare-fun d!644654 () Bool)

(declare-fun lt!797854 () Int)

(declare-fun size!18983 (List!24349) Int)

(declare-fun list!9547 (BalanceConc!15568) List!24349)

(assert (=> d!644654 (= lt!797854 (size!18983 (list!9547 totalInput!851)))))

(declare-fun size!18984 (Conc!7903) Int)

(assert (=> d!644654 (= lt!797854 (size!18984 (c!340456 totalInput!851)))))

(assert (=> d!644654 (= (size!18981 totalInput!851) lt!797854)))

(declare-fun bs!445099 () Bool)

(assert (= bs!445099 d!644654))

(declare-fun m!2585675 () Bool)

(assert (=> bs!445099 m!2585675))

(assert (=> bs!445099 m!2585675))

(declare-fun m!2585677 () Bool)

(assert (=> bs!445099 m!2585677))

(declare-fun m!2585679 () Bool)

(assert (=> bs!445099 m!2585679))

(assert (=> b!2139093 d!644654))

(declare-fun d!644656 () Bool)

(declare-fun res!923891 () Bool)

(declare-fun e!1365905 () Bool)

(assert (=> d!644656 (=> (not res!923891) (not e!1365905))))

(assert (=> d!644656 (= res!923891 ((_ is HashMap!2638) (cache!3019 cacheFurthestNullable!114)))))

(assert (=> d!644656 (= (inv!31942 cacheFurthestNullable!114) e!1365905)))

(declare-fun b!2139128 () Bool)

(declare-fun validCacheMapFurthestNullable!103 (MutableMap!2638 BalanceConc!15568) Bool)

(assert (=> b!2139128 (= e!1365905 (validCacheMapFurthestNullable!103 (cache!3019 cacheFurthestNullable!114) (totalInput!3102 cacheFurthestNullable!114)))))

(assert (= (and d!644656 res!923891) b!2139128))

(declare-fun m!2585681 () Bool)

(assert (=> b!2139128 m!2585681))

(assert (=> start!207756 d!644656))

(declare-fun d!644658 () Bool)

(declare-fun res!923894 () Bool)

(declare-fun e!1365908 () Bool)

(assert (=> d!644658 (=> (not res!923894) (not e!1365908))))

(assert (=> d!644658 (= res!923894 ((_ is HashMap!2639) (cache!3020 cacheDown!1098)))))

(assert (=> d!644658 (= (inv!31943 cacheDown!1098) e!1365908)))

(declare-fun b!2139131 () Bool)

(assert (=> b!2139131 (= e!1365908 (validCacheMapDown!251 (cache!3020 cacheDown!1098)))))

(assert (= (and d!644658 res!923894) b!2139131))

(assert (=> b!2139131 m!2585673))

(assert (=> start!207756 d!644658))

(declare-fun d!644660 () Bool)

(declare-fun res!923897 () Bool)

(declare-fun e!1365911 () Bool)

(assert (=> d!644660 (=> (not res!923897) (not e!1365911))))

(assert (=> d!644660 (= res!923897 ((_ is HashMap!2640) (cache!3021 cacheUp!979)))))

(assert (=> d!644660 (= (inv!31944 cacheUp!979) e!1365911)))

(declare-fun b!2139134 () Bool)

(declare-fun validCacheMapUp!253 (MutableMap!2640) Bool)

(assert (=> b!2139134 (= e!1365911 (validCacheMapUp!253 (cache!3021 cacheUp!979)))))

(assert (= (and d!644660 res!923897) b!2139134))

(declare-fun m!2585683 () Bool)

(assert (=> b!2139134 m!2585683))

(assert (=> start!207756 d!644660))

(declare-fun d!644662 () Bool)

(declare-fun isBalanced!2457 (Conc!7903) Bool)

(assert (=> d!644662 (= (inv!31939 totalInput!851) (isBalanced!2457 (c!340456 totalInput!851)))))

(declare-fun bs!445100 () Bool)

(assert (= bs!445100 d!644662))

(declare-fun m!2585685 () Bool)

(assert (=> bs!445100 m!2585685))

(assert (=> start!207756 d!644662))

(declare-fun d!644664 () Bool)

(declare-fun c!340459 () Bool)

(assert (=> d!644664 (= c!340459 ((_ is Node!7903) (c!340456 (totalInput!3102 cacheFurthestNullable!114))))))

(declare-fun e!1365916 () Bool)

(assert (=> d!644664 (= (inv!31938 (c!340456 (totalInput!3102 cacheFurthestNullable!114))) e!1365916)))

(declare-fun b!2139141 () Bool)

(declare-fun inv!31945 (Conc!7903) Bool)

(assert (=> b!2139141 (= e!1365916 (inv!31945 (c!340456 (totalInput!3102 cacheFurthestNullable!114))))))

(declare-fun b!2139142 () Bool)

(declare-fun e!1365917 () Bool)

(assert (=> b!2139142 (= e!1365916 e!1365917)))

(declare-fun res!923900 () Bool)

(assert (=> b!2139142 (= res!923900 (not ((_ is Leaf!11553) (c!340456 (totalInput!3102 cacheFurthestNullable!114)))))))

(assert (=> b!2139142 (=> res!923900 e!1365917)))

(declare-fun b!2139143 () Bool)

(declare-fun inv!31946 (Conc!7903) Bool)

(assert (=> b!2139143 (= e!1365917 (inv!31946 (c!340456 (totalInput!3102 cacheFurthestNullable!114))))))

(assert (= (and d!644664 c!340459) b!2139141))

(assert (= (and d!644664 (not c!340459)) b!2139142))

(assert (= (and b!2139142 (not res!923900)) b!2139143))

(declare-fun m!2585687 () Bool)

(assert (=> b!2139141 m!2585687))

(declare-fun m!2585689 () Bool)

(assert (=> b!2139143 m!2585689))

(assert (=> b!2139102 d!644664))

(declare-fun d!644666 () Bool)

(declare-fun e!1365920 () Bool)

(assert (=> d!644666 e!1365920))

(declare-fun res!923903 () Bool)

(assert (=> d!644666 (=> res!923903 e!1365920)))

(declare-fun lt!797857 () Option!4926)

(declare-fun isEmpty!14325 (Option!4926) Bool)

(assert (=> d!644666 (= res!923903 (isEmpty!14325 lt!797857))))

(declare-fun choose!12681 (CacheFurthestNullable!774 (InoxSet Context!2670) Int Int) Option!4926)

(assert (=> d!644666 (= lt!797857 (choose!12681 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> d!644666 (and (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043))))

(assert (=> d!644666 (= (get!7418 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123) lt!797857)))

(declare-fun b!2139146 () Bool)

(declare-fun get!7419 (Option!4926) Int)

(assert (=> b!2139146 (= e!1365920 (= (get!7419 lt!797857) (furthestNullablePosition!68 z!3839 from!1043 (totalInput!3102 cacheFurthestNullable!114) (size!18981 (totalInput!3102 cacheFurthestNullable!114)) lastNullablePos!123)))))

(assert (= (and d!644666 (not res!923903)) b!2139146))

(declare-fun m!2585691 () Bool)

(assert (=> d!644666 m!2585691))

(declare-fun m!2585693 () Bool)

(assert (=> d!644666 m!2585693))

(declare-fun m!2585695 () Bool)

(assert (=> b!2139146 m!2585695))

(declare-fun m!2585697 () Bool)

(assert (=> b!2139146 m!2585697))

(assert (=> b!2139146 m!2585697))

(declare-fun m!2585699 () Bool)

(assert (=> b!2139146 m!2585699))

(assert (=> b!2139112 d!644666))

(declare-fun d!644668 () Bool)

(declare-fun res!923908 () Bool)

(declare-fun e!1365925 () Bool)

(assert (=> d!644668 (=> res!923908 e!1365925)))

(assert (=> d!644668 (= res!923908 ((_ is Nil!24267) stack!8))))

(assert (=> d!644668 (= (forall!4954 stack!8 lambda!79926) e!1365925)))

(declare-fun b!2139151 () Bool)

(declare-fun e!1365926 () Bool)

(assert (=> b!2139151 (= e!1365925 e!1365926)))

(declare-fun res!923909 () Bool)

(assert (=> b!2139151 (=> (not res!923909) (not e!1365926))))

(declare-fun dynLambda!11369 (Int StackFrame!210) Bool)

(assert (=> b!2139151 (= res!923909 (dynLambda!11369 lambda!79926 (h!29668 stack!8)))))

(declare-fun b!2139152 () Bool)

(assert (=> b!2139152 (= e!1365926 (forall!4954 (t!196881 stack!8) lambda!79926))))

(assert (= (and d!644668 (not res!923908)) b!2139151))

(assert (= (and b!2139151 res!923909) b!2139152))

(declare-fun b_lambda!70617 () Bool)

(assert (=> (not b_lambda!70617) (not b!2139151)))

(declare-fun m!2585701 () Bool)

(assert (=> b!2139151 m!2585701))

(declare-fun m!2585703 () Bool)

(assert (=> b!2139152 m!2585703))

(assert (=> b!2139112 d!644668))

(declare-fun d!644670 () Bool)

(declare-fun res!923910 () Bool)

(declare-fun e!1365927 () Bool)

(assert (=> d!644670 (=> res!923910 e!1365927)))

(assert (=> d!644670 (= res!923910 ((_ is Nil!24267) Nil!24267))))

(assert (=> d!644670 (= (forall!4954 Nil!24267 lambda!79926) e!1365927)))

(declare-fun b!2139153 () Bool)

(declare-fun e!1365928 () Bool)

(assert (=> b!2139153 (= e!1365927 e!1365928)))

(declare-fun res!923911 () Bool)

(assert (=> b!2139153 (=> (not res!923911) (not e!1365928))))

(assert (=> b!2139153 (= res!923911 (dynLambda!11369 lambda!79926 (h!29668 Nil!24267)))))

(declare-fun b!2139154 () Bool)

(assert (=> b!2139154 (= e!1365928 (forall!4954 (t!196881 Nil!24267) lambda!79926))))

(assert (= (and d!644670 (not res!923910)) b!2139153))

(assert (= (and b!2139153 res!923911) b!2139154))

(declare-fun b_lambda!70619 () Bool)

(assert (=> (not b_lambda!70619) (not b!2139153)))

(declare-fun m!2585705 () Bool)

(assert (=> b!2139153 m!2585705))

(declare-fun m!2585707 () Bool)

(assert (=> b!2139154 m!2585707))

(assert (=> b!2139120 d!644670))

(declare-fun d!644672 () Bool)

(assert (=> d!644672 (= (inv!31939 (totalInput!3102 cacheFurthestNullable!114)) (isBalanced!2457 (c!340456 (totalInput!3102 cacheFurthestNullable!114))))))

(declare-fun bs!445101 () Bool)

(assert (= bs!445101 d!644672))

(declare-fun m!2585709 () Bool)

(assert (=> bs!445101 m!2585709))

(assert (=> b!2139103 d!644672))

(declare-fun d!644674 () Bool)

(assert (=> d!644674 (= (valid!2130 cacheFurthestNullable!114) (validCacheMapFurthestNullable!103 (cache!3019 cacheFurthestNullable!114) (totalInput!3102 cacheFurthestNullable!114)))))

(declare-fun bs!445102 () Bool)

(assert (= bs!445102 d!644674))

(assert (=> bs!445102 m!2585681))

(assert (=> b!2139086 d!644674))

(declare-fun d!644676 () Bool)

(assert (=> d!644676 (= (valid!2131 cacheUp!979) (validCacheMapUp!253 (cache!3021 cacheUp!979)))))

(declare-fun bs!445103 () Bool)

(assert (= bs!445103 d!644676))

(assert (=> bs!445103 m!2585683))

(assert (=> b!2139104 d!644676))

(declare-fun d!644678 () Bool)

(assert (=> d!644678 (= (array_inv!2938 (_keys!3023 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979))))))) (bvsge (size!18978 (_keys!3023 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2139113 d!644678))

(declare-fun d!644680 () Bool)

(assert (=> d!644680 (= (array_inv!2940 (_values!3006 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979))))))) (bvsge (size!18982 (_values!3006 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2139113 d!644680))

(declare-fun d!644682 () Bool)

(assert (=> d!644682 (= (array_inv!2938 (_keys!3021 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))))) (bvsge (size!18978 (_keys!3021 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2139087 d!644682))

(declare-fun d!644684 () Bool)

(assert (=> d!644684 (= (array_inv!2939 (_values!3004 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))))) (bvsge (size!18979 (_values!3004 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2139087 d!644684))

(declare-fun d!644686 () Bool)

(declare-fun res!923912 () Bool)

(declare-fun e!1365929 () Bool)

(assert (=> d!644686 (=> res!923912 e!1365929)))

(assert (=> d!644686 (= res!923912 ((_ is Nil!24267) stack!8))))

(assert (=> d!644686 (= (forall!4954 stack!8 lambda!79927) e!1365929)))

(declare-fun b!2139155 () Bool)

(declare-fun e!1365930 () Bool)

(assert (=> b!2139155 (= e!1365929 e!1365930)))

(declare-fun res!923913 () Bool)

(assert (=> b!2139155 (=> (not res!923913) (not e!1365930))))

(assert (=> b!2139155 (= res!923913 (dynLambda!11369 lambda!79927 (h!29668 stack!8)))))

(declare-fun b!2139156 () Bool)

(assert (=> b!2139156 (= e!1365930 (forall!4954 (t!196881 stack!8) lambda!79927))))

(assert (= (and d!644686 (not res!923912)) b!2139155))

(assert (= (and b!2139155 res!923913) b!2139156))

(declare-fun b_lambda!70621 () Bool)

(assert (=> (not b_lambda!70621) (not b!2139155)))

(declare-fun m!2585711 () Bool)

(assert (=> b!2139155 m!2585711))

(declare-fun m!2585713 () Bool)

(assert (=> b!2139156 m!2585713))

(assert (=> b!2139121 d!644686))

(declare-fun d!644688 () Bool)

(assert (=> d!644688 (= (array_inv!2938 (_keys!3022 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098))))))) (bvsge (size!18978 (_keys!3022 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2139114 d!644688))

(declare-fun d!644690 () Bool)

(assert (=> d!644690 (= (array_inv!2941 (_values!3005 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098))))))) (bvsge (size!18980 (_values!3005 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2139114 d!644690))

(declare-fun d!644692 () Bool)

(declare-fun c!340460 () Bool)

(assert (=> d!644692 (= c!340460 ((_ is Node!7903) (c!340456 totalInput!851)))))

(declare-fun e!1365931 () Bool)

(assert (=> d!644692 (= (inv!31938 (c!340456 totalInput!851)) e!1365931)))

(declare-fun b!2139157 () Bool)

(assert (=> b!2139157 (= e!1365931 (inv!31945 (c!340456 totalInput!851)))))

(declare-fun b!2139158 () Bool)

(declare-fun e!1365932 () Bool)

(assert (=> b!2139158 (= e!1365931 e!1365932)))

(declare-fun res!923914 () Bool)

(assert (=> b!2139158 (= res!923914 (not ((_ is Leaf!11553) (c!340456 totalInput!851))))))

(assert (=> b!2139158 (=> res!923914 e!1365932)))

(declare-fun b!2139159 () Bool)

(assert (=> b!2139159 (= e!1365932 (inv!31946 (c!340456 totalInput!851)))))

(assert (= (and d!644692 c!340460) b!2139157))

(assert (= (and d!644692 (not c!340460)) b!2139158))

(assert (= (and b!2139158 (not res!923914)) b!2139159))

(declare-fun m!2585715 () Bool)

(assert (=> b!2139157 m!2585715))

(declare-fun m!2585717 () Bool)

(assert (=> b!2139159 m!2585717))

(assert (=> b!2139088 d!644692))

(declare-fun d!644694 () Bool)

(declare-fun c!340461 () Bool)

(assert (=> d!644694 (= c!340461 ((_ is Node!7903) (c!340456 (totalInput!3103 (h!29668 stack!8)))))))

(declare-fun e!1365933 () Bool)

(assert (=> d!644694 (= (inv!31938 (c!340456 (totalInput!3103 (h!29668 stack!8)))) e!1365933)))

(declare-fun b!2139160 () Bool)

(assert (=> b!2139160 (= e!1365933 (inv!31945 (c!340456 (totalInput!3103 (h!29668 stack!8)))))))

(declare-fun b!2139161 () Bool)

(declare-fun e!1365934 () Bool)

(assert (=> b!2139161 (= e!1365933 e!1365934)))

(declare-fun res!923915 () Bool)

(assert (=> b!2139161 (= res!923915 (not ((_ is Leaf!11553) (c!340456 (totalInput!3103 (h!29668 stack!8))))))))

(assert (=> b!2139161 (=> res!923915 e!1365934)))

(declare-fun b!2139162 () Bool)

(assert (=> b!2139162 (= e!1365934 (inv!31946 (c!340456 (totalInput!3103 (h!29668 stack!8)))))))

(assert (= (and d!644694 c!340461) b!2139160))

(assert (= (and d!644694 (not c!340461)) b!2139161))

(assert (= (and b!2139161 (not res!923915)) b!2139162))

(declare-fun m!2585719 () Bool)

(assert (=> b!2139160 m!2585719))

(declare-fun m!2585721 () Bool)

(assert (=> b!2139162 m!2585721))

(assert (=> b!2139097 d!644694))

(declare-fun bs!445104 () Bool)

(declare-fun d!644696 () Bool)

(assert (= bs!445104 (and d!644696 d!644650)))

(declare-fun lambda!79931 () Int)

(assert (=> bs!445104 (= lambda!79931 lambda!79930)))

(assert (=> d!644696 (= (inv!31941 setElem!16189) (forall!4955 (exprs!1835 setElem!16189) lambda!79931))))

(declare-fun bs!445105 () Bool)

(assert (= bs!445105 d!644696))

(declare-fun m!2585723 () Bool)

(assert (=> bs!445105 m!2585723))

(assert (=> setNonEmpty!16189 d!644696))

(assert (=> b!2139107 d!644668))

(declare-fun b!2139173 () Bool)

(declare-fun e!1365942 () Int)

(assert (=> b!2139173 (= e!1365942 lastNullablePos!123)))

(declare-fun d!644698 () Bool)

(declare-fun lt!797863 () Int)

(assert (=> d!644698 (and (>= lt!797863 (- 1)) (< lt!797863 lt!797847) (>= lt!797863 lastNullablePos!123) (or (= lt!797863 lastNullablePos!123) (>= lt!797863 from!1043)))))

(declare-fun e!1365943 () Int)

(assert (=> d!644698 (= lt!797863 e!1365943)))

(declare-fun c!340466 () Bool)

(declare-fun e!1365941 () Bool)

(assert (=> d!644698 (= c!340466 e!1365941)))

(declare-fun res!923918 () Bool)

(assert (=> d!644698 (=> res!923918 e!1365941)))

(assert (=> d!644698 (= res!923918 (= from!1043 lt!797847))))

(assert (=> d!644698 (and (>= from!1043 0) (<= from!1043 lt!797847))))

(assert (=> d!644698 (= (furthestNullablePosition!68 z!3839 from!1043 totalInput!851 lt!797847 lastNullablePos!123) lt!797863)))

(declare-fun b!2139174 () Bool)

(declare-fun lostCauseZipper!108 ((InoxSet Context!2670)) Bool)

(assert (=> b!2139174 (= e!1365941 (lostCauseZipper!108 z!3839))))

(declare-fun b!2139175 () Bool)

(assert (=> b!2139175 (= e!1365943 lastNullablePos!123)))

(declare-fun b!2139176 () Bool)

(assert (=> b!2139176 (= e!1365942 from!1043)))

(declare-fun lt!797862 () (InoxSet Context!2670))

(declare-fun b!2139177 () Bool)

(assert (=> b!2139177 (= e!1365943 (furthestNullablePosition!68 lt!797862 (+ from!1043 1) totalInput!851 lt!797847 e!1365942))))

(declare-fun derivationStepZipper!92 ((InoxSet Context!2670) C!11676) (InoxSet Context!2670))

(declare-fun apply!5957 (BalanceConc!15568 Int) C!11676)

(assert (=> b!2139177 (= lt!797862 (derivationStepZipper!92 z!3839 (apply!5957 totalInput!851 from!1043)))))

(declare-fun c!340467 () Bool)

(assert (=> b!2139177 (= c!340467 (nullableZipper!132 lt!797862))))

(assert (= (and d!644698 (not res!923918)) b!2139174))

(assert (= (and d!644698 c!340466) b!2139175))

(assert (= (and d!644698 (not c!340466)) b!2139177))

(assert (= (and b!2139177 c!340467) b!2139176))

(assert (= (and b!2139177 (not c!340467)) b!2139173))

(declare-fun m!2585725 () Bool)

(assert (=> b!2139174 m!2585725))

(declare-fun m!2585727 () Bool)

(assert (=> b!2139177 m!2585727))

(declare-fun m!2585729 () Bool)

(assert (=> b!2139177 m!2585729))

(assert (=> b!2139177 m!2585729))

(declare-fun m!2585731 () Bool)

(assert (=> b!2139177 m!2585731))

(declare-fun m!2585733 () Bool)

(assert (=> b!2139177 m!2585733))

(assert (=> b!2139107 d!644698))

(declare-fun d!644700 () Bool)

(assert (=> d!644700 (= (inv!31939 (totalInput!3103 (h!29668 stack!8))) (isBalanced!2457 (c!340456 (totalInput!3103 (h!29668 stack!8)))))))

(declare-fun bs!445106 () Bool)

(assert (= bs!445106 d!644700))

(declare-fun m!2585735 () Bool)

(assert (=> bs!445106 m!2585735))

(assert (=> b!2139090 d!644700))

(declare-fun d!644702 () Bool)

(declare-fun lambda!79934 () Int)

(declare-fun exists!705 ((InoxSet Context!2670) Int) Bool)

(assert (=> d!644702 (= (nullableZipper!132 z!3839) (exists!705 z!3839 lambda!79934))))

(declare-fun bs!445107 () Bool)

(assert (= bs!445107 d!644702))

(declare-fun m!2585737 () Bool)

(assert (=> bs!445107 m!2585737))

(assert (=> b!2139108 d!644702))

(declare-fun b!2139190 () Bool)

(declare-fun res!923931 () Bool)

(declare-fun e!1365949 () Bool)

(assert (=> b!2139190 (=> (not res!923931) (not e!1365949))))

(assert (=> b!2139190 (= res!923931 (<= (from!2724 (h!29668 stack!8)) (size!18981 (totalInput!3103 (h!29668 stack!8)))))))

(declare-fun d!644704 () Bool)

(declare-fun res!923932 () Bool)

(assert (=> d!644704 (=> (not res!923932) (not e!1365949))))

(assert (=> d!644704 (= res!923932 (>= (from!2724 (h!29668 stack!8)) 0))))

(assert (=> d!644704 (= (inv!31940 (h!29668 stack!8)) e!1365949)))

(declare-fun b!2139191 () Bool)

(assert (=> b!2139191 (= e!1365949 (= (res!923888 (h!29668 stack!8)) (furthestNullablePosition!68 (z!5844 (h!29668 stack!8)) (from!2724 (h!29668 stack!8)) (totalInput!3103 (h!29668 stack!8)) (size!18981 (totalInput!3103 (h!29668 stack!8))) (lastNullablePos!411 (h!29668 stack!8)))))))

(declare-fun b!2139192 () Bool)

(declare-fun res!923933 () Bool)

(assert (=> b!2139192 (=> (not res!923933) (not e!1365949))))

(assert (=> b!2139192 (= res!923933 (and (>= (lastNullablePos!411 (h!29668 stack!8)) (- 1)) (< (lastNullablePos!411 (h!29668 stack!8)) (from!2724 (h!29668 stack!8)))))))

(declare-fun b!2139193 () Bool)

(declare-fun e!1365948 () Bool)

(assert (=> b!2139193 (= e!1365948 (= (lastNullablePos!411 (h!29668 stack!8)) (- (from!2724 (h!29668 stack!8)) 1)))))

(declare-fun b!2139194 () Bool)

(declare-fun res!923935 () Bool)

(assert (=> b!2139194 (=> (not res!923935) (not e!1365949))))

(assert (=> b!2139194 (= res!923935 e!1365948)))

(declare-fun res!923934 () Bool)

(assert (=> b!2139194 (=> res!923934 e!1365948)))

(assert (=> b!2139194 (= res!923934 (not (nullableZipper!132 (z!5844 (h!29668 stack!8)))))))

(declare-fun b!2139195 () Bool)

(declare-fun res!923936 () Bool)

(assert (=> b!2139195 (=> (not res!923936) (not e!1365949))))

(assert (=> b!2139195 (= res!923936 (= (size!18981 (totalInput!3103 (h!29668 stack!8))) (size!18981 (totalInput!3103 (h!29668 stack!8)))))))

(assert (= (and d!644704 res!923932) b!2139190))

(assert (= (and b!2139190 res!923931) b!2139195))

(assert (= (and b!2139195 res!923936) b!2139192))

(assert (= (and b!2139192 res!923933) b!2139194))

(assert (= (and b!2139194 (not res!923934)) b!2139193))

(assert (= (and b!2139194 res!923935) b!2139191))

(declare-fun m!2585739 () Bool)

(assert (=> b!2139190 m!2585739))

(assert (=> b!2139191 m!2585739))

(assert (=> b!2139191 m!2585739))

(declare-fun m!2585741 () Bool)

(assert (=> b!2139191 m!2585741))

(declare-fun m!2585743 () Bool)

(assert (=> b!2139194 m!2585743))

(assert (=> b!2139195 m!2585739))

(assert (=> b!2139109 d!644704))

(declare-fun condSetEmpty!16192 () Bool)

(assert (=> setNonEmpty!16188 (= condSetEmpty!16192 (= setRest!16189 ((as const (Array Context!2670 Bool)) false)))))

(declare-fun setRes!16192 () Bool)

(assert (=> setNonEmpty!16188 (= tp!660703 setRes!16192)))

(declare-fun setIsEmpty!16192 () Bool)

(assert (=> setIsEmpty!16192 setRes!16192))

(declare-fun setNonEmpty!16192 () Bool)

(declare-fun setElem!16192 () Context!2670)

(declare-fun tp!660723 () Bool)

(declare-fun e!1365952 () Bool)

(assert (=> setNonEmpty!16192 (= setRes!16192 (and tp!660723 (inv!31941 setElem!16192) e!1365952))))

(declare-fun setRest!16192 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16192 (= setRest!16189 ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16192 true) setRest!16192))))

(declare-fun b!2139200 () Bool)

(declare-fun tp!660722 () Bool)

(assert (=> b!2139200 (= e!1365952 tp!660722)))

(assert (= (and setNonEmpty!16188 condSetEmpty!16192) setIsEmpty!16192))

(assert (= (and setNonEmpty!16188 (not condSetEmpty!16192)) setNonEmpty!16192))

(assert (= setNonEmpty!16192 b!2139200))

(declare-fun m!2585745 () Bool)

(assert (=> setNonEmpty!16192 m!2585745))

(declare-fun tp!660735 () Bool)

(declare-fun setElem!16195 () Context!2670)

(declare-fun setRes!16195 () Bool)

(declare-fun e!1365959 () Bool)

(declare-fun setNonEmpty!16195 () Bool)

(assert (=> setNonEmpty!16195 (= setRes!16195 (and tp!660735 (inv!31941 setElem!16195) e!1365959))))

(declare-fun setRest!16195 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16195 (= (_2!14197 (h!29669 mapDefault!13011)) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16195 true) setRest!16195))))

(declare-fun b!2139209 () Bool)

(declare-fun tp!660732 () Bool)

(assert (=> b!2139209 (= e!1365959 tp!660732)))

(declare-fun e!1365961 () Bool)

(assert (=> b!2139111 (= tp!660706 e!1365961)))

(declare-fun tp_is_empty!9507 () Bool)

(declare-fun e!1365960 () Bool)

(declare-fun tp!660733 () Bool)

(declare-fun b!2139210 () Bool)

(assert (=> b!2139210 (= e!1365961 (and (inv!31941 (_1!14196 (_1!14197 (h!29669 mapDefault!13011)))) e!1365960 tp_is_empty!9507 setRes!16195 tp!660733))))

(declare-fun condSetEmpty!16195 () Bool)

(assert (=> b!2139210 (= condSetEmpty!16195 (= (_2!14197 (h!29669 mapDefault!13011)) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun b!2139211 () Bool)

(declare-fun tp!660734 () Bool)

(assert (=> b!2139211 (= e!1365960 tp!660734)))

(declare-fun setIsEmpty!16195 () Bool)

(assert (=> setIsEmpty!16195 setRes!16195))

(assert (= b!2139210 b!2139211))

(assert (= (and b!2139210 condSetEmpty!16195) setIsEmpty!16195))

(assert (= (and b!2139210 (not condSetEmpty!16195)) setNonEmpty!16195))

(assert (= setNonEmpty!16195 b!2139209))

(assert (= (and b!2139111 ((_ is Cons!24268) mapDefault!13011)) b!2139210))

(declare-fun m!2585747 () Bool)

(assert (=> setNonEmpty!16195 m!2585747))

(declare-fun m!2585749 () Bool)

(assert (=> b!2139210 m!2585749))

(declare-fun e!1365970 () Bool)

(assert (=> b!2139094 (= tp!660710 e!1365970)))

(declare-fun setRes!16198 () Bool)

(declare-fun tp!660750 () Bool)

(declare-fun b!2139220 () Bool)

(declare-fun tp!660748 () Bool)

(declare-fun e!1365968 () Bool)

(assert (=> b!2139220 (= e!1365970 (and tp!660750 (inv!31941 (_2!14194 (_1!14195 (h!29667 mapDefault!13009)))) e!1365968 tp_is_empty!9507 setRes!16198 tp!660748))))

(declare-fun condSetEmpty!16198 () Bool)

(assert (=> b!2139220 (= condSetEmpty!16198 (= (_2!14195 (h!29667 mapDefault!13009)) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun b!2139221 () Bool)

(declare-fun tp!660749 () Bool)

(assert (=> b!2139221 (= e!1365968 tp!660749)))

(declare-fun e!1365969 () Bool)

(declare-fun setElem!16198 () Context!2670)

(declare-fun tp!660746 () Bool)

(declare-fun setNonEmpty!16198 () Bool)

(assert (=> setNonEmpty!16198 (= setRes!16198 (and tp!660746 (inv!31941 setElem!16198) e!1365969))))

(declare-fun setRest!16198 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16198 (= (_2!14195 (h!29667 mapDefault!13009)) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16198 true) setRest!16198))))

(declare-fun b!2139222 () Bool)

(declare-fun tp!660747 () Bool)

(assert (=> b!2139222 (= e!1365969 tp!660747)))

(declare-fun setIsEmpty!16198 () Bool)

(assert (=> setIsEmpty!16198 setRes!16198))

(assert (= b!2139220 b!2139221))

(assert (= (and b!2139220 condSetEmpty!16198) setIsEmpty!16198))

(assert (= (and b!2139220 (not condSetEmpty!16198)) setNonEmpty!16198))

(assert (= setNonEmpty!16198 b!2139222))

(assert (= (and b!2139094 ((_ is Cons!24266) mapDefault!13009)) b!2139220))

(declare-fun m!2585751 () Bool)

(assert (=> b!2139220 m!2585751))

(declare-fun m!2585753 () Bool)

(assert (=> setNonEmpty!16198 m!2585753))

(declare-fun e!1365975 () Bool)

(declare-fun tp!660757 () Bool)

(declare-fun b!2139231 () Bool)

(declare-fun tp!660759 () Bool)

(assert (=> b!2139231 (= e!1365975 (and (inv!31938 (left!18674 (c!340456 (totalInput!3102 cacheFurthestNullable!114)))) tp!660757 (inv!31938 (right!19004 (c!340456 (totalInput!3102 cacheFurthestNullable!114)))) tp!660759))))

(declare-fun b!2139233 () Bool)

(declare-fun e!1365976 () Bool)

(declare-fun tp!660758 () Bool)

(assert (=> b!2139233 (= e!1365976 tp!660758)))

(declare-fun b!2139232 () Bool)

(declare-fun inv!31947 (IArray!15811) Bool)

(assert (=> b!2139232 (= e!1365975 (and (inv!31947 (xs!10845 (c!340456 (totalInput!3102 cacheFurthestNullable!114)))) e!1365976))))

(assert (=> b!2139102 (= tp!660715 (and (inv!31938 (c!340456 (totalInput!3102 cacheFurthestNullable!114))) e!1365975))))

(assert (= (and b!2139102 ((_ is Node!7903) (c!340456 (totalInput!3102 cacheFurthestNullable!114)))) b!2139231))

(assert (= b!2139232 b!2139233))

(assert (= (and b!2139102 ((_ is Leaf!11553) (c!340456 (totalInput!3102 cacheFurthestNullable!114)))) b!2139232))

(declare-fun m!2585755 () Bool)

(assert (=> b!2139231 m!2585755))

(declare-fun m!2585757 () Bool)

(assert (=> b!2139231 m!2585757))

(declare-fun m!2585759 () Bool)

(assert (=> b!2139232 m!2585759))

(assert (=> b!2139102 m!2585635))

(declare-fun b!2139238 () Bool)

(declare-fun e!1365979 () Bool)

(declare-fun tp!660764 () Bool)

(declare-fun tp!660765 () Bool)

(assert (=> b!2139238 (= e!1365979 (and tp!660764 tp!660765))))

(assert (=> b!2139095 (= tp!660717 e!1365979)))

(assert (= (and b!2139095 ((_ is Cons!24263) (exprs!1835 setElem!16188))) b!2139238))

(declare-fun setRes!16204 () Bool)

(declare-fun tp!660793 () Bool)

(declare-fun tp!660795 () Bool)

(declare-fun mapDefault!13014 () List!24350)

(declare-fun b!2139253 () Bool)

(declare-fun e!1365993 () Bool)

(declare-fun e!1365994 () Bool)

(assert (=> b!2139253 (= e!1365994 (and tp!660795 (inv!31941 (_2!14194 (_1!14195 (h!29667 mapDefault!13014)))) e!1365993 tp_is_empty!9507 setRes!16204 tp!660793))))

(declare-fun condSetEmpty!16203 () Bool)

(assert (=> b!2139253 (= condSetEmpty!16203 (= (_2!14195 (h!29667 mapDefault!13014)) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun mapIsEmpty!13014 () Bool)

(declare-fun mapRes!13014 () Bool)

(assert (=> mapIsEmpty!13014 mapRes!13014))

(declare-fun condMapEmpty!13014 () Bool)

(assert (=> mapNonEmpty!13009 (= condMapEmpty!13014 (= mapRest!13011 ((as const (Array (_ BitVec 32) List!24350)) mapDefault!13014)))))

(assert (=> mapNonEmpty!13009 (= tp!660711 (and e!1365994 mapRes!13014))))

(declare-fun setIsEmpty!16203 () Bool)

(declare-fun setRes!16203 () Bool)

(assert (=> setIsEmpty!16203 setRes!16203))

(declare-fun b!2139254 () Bool)

(declare-fun e!1365992 () Bool)

(declare-fun tp!660790 () Bool)

(assert (=> b!2139254 (= e!1365992 tp!660790)))

(declare-fun setIsEmpty!16204 () Bool)

(assert (=> setIsEmpty!16204 setRes!16204))

(declare-fun b!2139255 () Bool)

(declare-fun tp!660791 () Bool)

(assert (=> b!2139255 (= e!1365993 tp!660791)))

(declare-fun b!2139256 () Bool)

(declare-fun e!1365995 () Bool)

(declare-fun tp!660796 () Bool)

(assert (=> b!2139256 (= e!1365995 tp!660796)))

(declare-fun e!1365997 () Bool)

(declare-fun setElem!16203 () Context!2670)

(declare-fun tp!660789 () Bool)

(declare-fun setNonEmpty!16203 () Bool)

(assert (=> setNonEmpty!16203 (= setRes!16204 (and tp!660789 (inv!31941 setElem!16203) e!1365997))))

(declare-fun setRest!16204 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16203 (= (_2!14195 (h!29667 mapDefault!13014)) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16203 true) setRest!16204))))

(declare-fun mapNonEmpty!13014 () Bool)

(declare-fun tp!660798 () Bool)

(declare-fun e!1365996 () Bool)

(assert (=> mapNonEmpty!13014 (= mapRes!13014 (and tp!660798 e!1365996))))

(declare-fun mapValue!13014 () List!24350)

(declare-fun mapKey!13014 () (_ BitVec 32))

(declare-fun mapRest!13014 () (Array (_ BitVec 32) List!24350))

(assert (=> mapNonEmpty!13014 (= mapRest!13011 (store mapRest!13014 mapKey!13014 mapValue!13014))))

(declare-fun setElem!16204 () Context!2670)

(declare-fun tp!660792 () Bool)

(declare-fun setNonEmpty!16204 () Bool)

(assert (=> setNonEmpty!16204 (= setRes!16203 (and tp!660792 (inv!31941 setElem!16204) e!1365992))))

(declare-fun setRest!16203 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16204 (= (_2!14195 (h!29667 mapValue!13014)) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16204 true) setRest!16203))))

(declare-fun b!2139257 () Bool)

(declare-fun tp!660788 () Bool)

(assert (=> b!2139257 (= e!1365997 tp!660788)))

(declare-fun b!2139258 () Bool)

(declare-fun tp!660797 () Bool)

(declare-fun tp!660794 () Bool)

(assert (=> b!2139258 (= e!1365996 (and tp!660794 (inv!31941 (_2!14194 (_1!14195 (h!29667 mapValue!13014)))) e!1365995 tp_is_empty!9507 setRes!16203 tp!660797))))

(declare-fun condSetEmpty!16204 () Bool)

(assert (=> b!2139258 (= condSetEmpty!16204 (= (_2!14195 (h!29667 mapValue!13014)) ((as const (Array Context!2670 Bool)) false)))))

(assert (= (and mapNonEmpty!13009 condMapEmpty!13014) mapIsEmpty!13014))

(assert (= (and mapNonEmpty!13009 (not condMapEmpty!13014)) mapNonEmpty!13014))

(assert (= b!2139258 b!2139256))

(assert (= (and b!2139258 condSetEmpty!16204) setIsEmpty!16203))

(assert (= (and b!2139258 (not condSetEmpty!16204)) setNonEmpty!16204))

(assert (= setNonEmpty!16204 b!2139254))

(assert (= (and mapNonEmpty!13014 ((_ is Cons!24266) mapValue!13014)) b!2139258))

(assert (= b!2139253 b!2139255))

(assert (= (and b!2139253 condSetEmpty!16203) setIsEmpty!16204))

(assert (= (and b!2139253 (not condSetEmpty!16203)) setNonEmpty!16203))

(assert (= setNonEmpty!16203 b!2139257))

(assert (= (and mapNonEmpty!13009 ((_ is Cons!24266) mapDefault!13014)) b!2139253))

(declare-fun m!2585761 () Bool)

(assert (=> mapNonEmpty!13014 m!2585761))

(declare-fun m!2585763 () Bool)

(assert (=> setNonEmpty!16203 m!2585763))

(declare-fun m!2585765 () Bool)

(assert (=> setNonEmpty!16204 m!2585765))

(declare-fun m!2585767 () Bool)

(assert (=> b!2139253 m!2585767))

(declare-fun m!2585769 () Bool)

(assert (=> b!2139258 m!2585769))

(declare-fun e!1366000 () Bool)

(assert (=> mapNonEmpty!13009 (= tp!660691 e!1366000)))

(declare-fun tp!660801 () Bool)

(declare-fun b!2139259 () Bool)

(declare-fun e!1365998 () Bool)

(declare-fun tp!660803 () Bool)

(declare-fun setRes!16205 () Bool)

(assert (=> b!2139259 (= e!1366000 (and tp!660803 (inv!31941 (_2!14194 (_1!14195 (h!29667 mapValue!13010)))) e!1365998 tp_is_empty!9507 setRes!16205 tp!660801))))

(declare-fun condSetEmpty!16205 () Bool)

(assert (=> b!2139259 (= condSetEmpty!16205 (= (_2!14195 (h!29667 mapValue!13010)) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun b!2139260 () Bool)

(declare-fun tp!660802 () Bool)

(assert (=> b!2139260 (= e!1365998 tp!660802)))

(declare-fun setElem!16205 () Context!2670)

(declare-fun e!1365999 () Bool)

(declare-fun tp!660799 () Bool)

(declare-fun setNonEmpty!16205 () Bool)

(assert (=> setNonEmpty!16205 (= setRes!16205 (and tp!660799 (inv!31941 setElem!16205) e!1365999))))

(declare-fun setRest!16205 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16205 (= (_2!14195 (h!29667 mapValue!13010)) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16205 true) setRest!16205))))

(declare-fun b!2139261 () Bool)

(declare-fun tp!660800 () Bool)

(assert (=> b!2139261 (= e!1365999 tp!660800)))

(declare-fun setIsEmpty!16205 () Bool)

(assert (=> setIsEmpty!16205 setRes!16205))

(assert (= b!2139259 b!2139260))

(assert (= (and b!2139259 condSetEmpty!16205) setIsEmpty!16205))

(assert (= (and b!2139259 (not condSetEmpty!16205)) setNonEmpty!16205))

(assert (= setNonEmpty!16205 b!2139261))

(assert (= (and mapNonEmpty!13009 ((_ is Cons!24266) mapValue!13010)) b!2139259))

(declare-fun m!2585771 () Bool)

(assert (=> b!2139259 m!2585771))

(declare-fun m!2585773 () Bool)

(assert (=> setNonEmpty!16205 m!2585773))

(declare-fun setNonEmpty!16206 () Bool)

(declare-fun setRes!16206 () Bool)

(declare-fun tp!660807 () Bool)

(declare-fun setElem!16206 () Context!2670)

(declare-fun e!1366001 () Bool)

(assert (=> setNonEmpty!16206 (= setRes!16206 (and tp!660807 (inv!31941 setElem!16206) e!1366001))))

(declare-fun setRest!16206 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16206 (= (_2!14197 (h!29669 (zeroValue!2984 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16206 true) setRest!16206))))

(declare-fun b!2139262 () Bool)

(declare-fun tp!660804 () Bool)

(assert (=> b!2139262 (= e!1366001 tp!660804)))

(declare-fun e!1366003 () Bool)

(assert (=> b!2139113 (= tp!660705 e!1366003)))

(declare-fun e!1366002 () Bool)

(declare-fun b!2139263 () Bool)

(declare-fun tp!660805 () Bool)

(assert (=> b!2139263 (= e!1366003 (and (inv!31941 (_1!14196 (_1!14197 (h!29669 (zeroValue!2984 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979)))))))))) e!1366002 tp_is_empty!9507 setRes!16206 tp!660805))))

(declare-fun condSetEmpty!16206 () Bool)

(assert (=> b!2139263 (= condSetEmpty!16206 (= (_2!14197 (h!29669 (zeroValue!2984 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979)))))))) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun b!2139264 () Bool)

(declare-fun tp!660806 () Bool)

(assert (=> b!2139264 (= e!1366002 tp!660806)))

(declare-fun setIsEmpty!16206 () Bool)

(assert (=> setIsEmpty!16206 setRes!16206))

(assert (= b!2139263 b!2139264))

(assert (= (and b!2139263 condSetEmpty!16206) setIsEmpty!16206))

(assert (= (and b!2139263 (not condSetEmpty!16206)) setNonEmpty!16206))

(assert (= setNonEmpty!16206 b!2139262))

(assert (= (and b!2139113 ((_ is Cons!24268) (zeroValue!2984 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979)))))))) b!2139263))

(declare-fun m!2585775 () Bool)

(assert (=> setNonEmpty!16206 m!2585775))

(declare-fun m!2585777 () Bool)

(assert (=> b!2139263 m!2585777))

(declare-fun setNonEmpty!16207 () Bool)

(declare-fun e!1366004 () Bool)

(declare-fun setElem!16207 () Context!2670)

(declare-fun tp!660811 () Bool)

(declare-fun setRes!16207 () Bool)

(assert (=> setNonEmpty!16207 (= setRes!16207 (and tp!660811 (inv!31941 setElem!16207) e!1366004))))

(declare-fun setRest!16207 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16207 (= (_2!14197 (h!29669 (minValue!2984 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16207 true) setRest!16207))))

(declare-fun b!2139265 () Bool)

(declare-fun tp!660808 () Bool)

(assert (=> b!2139265 (= e!1366004 tp!660808)))

(declare-fun e!1366006 () Bool)

(assert (=> b!2139113 (= tp!660716 e!1366006)))

(declare-fun b!2139266 () Bool)

(declare-fun e!1366005 () Bool)

(declare-fun tp!660809 () Bool)

(assert (=> b!2139266 (= e!1366006 (and (inv!31941 (_1!14196 (_1!14197 (h!29669 (minValue!2984 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979)))))))))) e!1366005 tp_is_empty!9507 setRes!16207 tp!660809))))

(declare-fun condSetEmpty!16207 () Bool)

(assert (=> b!2139266 (= condSetEmpty!16207 (= (_2!14197 (h!29669 (minValue!2984 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979)))))))) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun b!2139267 () Bool)

(declare-fun tp!660810 () Bool)

(assert (=> b!2139267 (= e!1366005 tp!660810)))

(declare-fun setIsEmpty!16207 () Bool)

(assert (=> setIsEmpty!16207 setRes!16207))

(assert (= b!2139266 b!2139267))

(assert (= (and b!2139266 condSetEmpty!16207) setIsEmpty!16207))

(assert (= (and b!2139266 (not condSetEmpty!16207)) setNonEmpty!16207))

(assert (= setNonEmpty!16207 b!2139265))

(assert (= (and b!2139113 ((_ is Cons!24268) (minValue!2984 (v!28842 (underlying!5647 (v!28843 (underlying!5648 (cache!3021 cacheUp!979)))))))) b!2139266))

(declare-fun m!2585779 () Bool)

(assert (=> setNonEmpty!16207 m!2585779))

(declare-fun m!2585781 () Bool)

(assert (=> b!2139266 m!2585781))

(declare-fun b!2139275 () Bool)

(declare-fun e!1366011 () Bool)

(declare-fun tp!660820 () Bool)

(assert (=> b!2139275 (= e!1366011 tp!660820)))

(declare-fun e!1366012 () Bool)

(assert (=> b!2139087 (= tp!660692 e!1366012)))

(declare-fun b!2139274 () Bool)

(declare-fun setRes!16210 () Bool)

(declare-fun tp!660818 () Bool)

(assert (=> b!2139274 (= e!1366012 (and setRes!16210 tp!660818))))

(declare-fun condSetEmpty!16210 () Bool)

(assert (=> b!2139274 (= condSetEmpty!16210 (= (_1!14192 (_1!14193 (h!29665 (zeroValue!2982 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))))))) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun setIsEmpty!16210 () Bool)

(assert (=> setIsEmpty!16210 setRes!16210))

(declare-fun tp!660819 () Bool)

(declare-fun setElem!16210 () Context!2670)

(declare-fun setNonEmpty!16210 () Bool)

(assert (=> setNonEmpty!16210 (= setRes!16210 (and tp!660819 (inv!31941 setElem!16210) e!1366011))))

(declare-fun setRest!16210 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16210 (= (_1!14192 (_1!14193 (h!29665 (zeroValue!2982 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16210 true) setRest!16210))))

(assert (= (and b!2139274 condSetEmpty!16210) setIsEmpty!16210))

(assert (= (and b!2139274 (not condSetEmpty!16210)) setNonEmpty!16210))

(assert (= setNonEmpty!16210 b!2139275))

(assert (= (and b!2139087 ((_ is Cons!24264) (zeroValue!2982 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114)))))))) b!2139274))

(declare-fun m!2585783 () Bool)

(assert (=> setNonEmpty!16210 m!2585783))

(declare-fun b!2139277 () Bool)

(declare-fun e!1366013 () Bool)

(declare-fun tp!660823 () Bool)

(assert (=> b!2139277 (= e!1366013 tp!660823)))

(declare-fun e!1366014 () Bool)

(assert (=> b!2139087 (= tp!660697 e!1366014)))

(declare-fun b!2139276 () Bool)

(declare-fun setRes!16211 () Bool)

(declare-fun tp!660821 () Bool)

(assert (=> b!2139276 (= e!1366014 (and setRes!16211 tp!660821))))

(declare-fun condSetEmpty!16211 () Bool)

(assert (=> b!2139276 (= condSetEmpty!16211 (= (_1!14192 (_1!14193 (h!29665 (minValue!2982 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))))))) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun setIsEmpty!16211 () Bool)

(assert (=> setIsEmpty!16211 setRes!16211))

(declare-fun setElem!16211 () Context!2670)

(declare-fun setNonEmpty!16211 () Bool)

(declare-fun tp!660822 () Bool)

(assert (=> setNonEmpty!16211 (= setRes!16211 (and tp!660822 (inv!31941 setElem!16211) e!1366013))))

(declare-fun setRest!16211 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16211 (= (_1!14192 (_1!14193 (h!29665 (minValue!2982 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16211 true) setRest!16211))))

(assert (= (and b!2139276 condSetEmpty!16211) setIsEmpty!16211))

(assert (= (and b!2139276 (not condSetEmpty!16211)) setNonEmpty!16211))

(assert (= setNonEmpty!16211 b!2139277))

(assert (= (and b!2139087 ((_ is Cons!24264) (minValue!2982 (v!28838 (underlying!5643 (v!28839 (underlying!5644 (cache!3019 cacheFurthestNullable!114)))))))) b!2139276))

(declare-fun m!2585785 () Bool)

(assert (=> setNonEmpty!16211 m!2585785))

(declare-fun b!2139278 () Bool)

(declare-fun e!1366015 () Bool)

(declare-fun tp!660824 () Bool)

(declare-fun tp!660825 () Bool)

(assert (=> b!2139278 (= e!1366015 (and tp!660824 tp!660825))))

(assert (=> b!2139096 (= tp!660689 e!1366015)))

(assert (= (and b!2139096 ((_ is Cons!24263) (exprs!1835 setElem!16189))) b!2139278))

(declare-fun e!1366018 () Bool)

(assert (=> b!2139114 (= tp!660698 e!1366018)))

(declare-fun b!2139279 () Bool)

(declare-fun setRes!16212 () Bool)

(declare-fun tp!660828 () Bool)

(declare-fun e!1366016 () Bool)

(declare-fun tp!660830 () Bool)

(assert (=> b!2139279 (= e!1366018 (and tp!660830 (inv!31941 (_2!14194 (_1!14195 (h!29667 (zeroValue!2983 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098)))))))))) e!1366016 tp_is_empty!9507 setRes!16212 tp!660828))))

(declare-fun condSetEmpty!16212 () Bool)

(assert (=> b!2139279 (= condSetEmpty!16212 (= (_2!14195 (h!29667 (zeroValue!2983 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098)))))))) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun b!2139280 () Bool)

(declare-fun tp!660829 () Bool)

(assert (=> b!2139280 (= e!1366016 tp!660829)))

(declare-fun tp!660826 () Bool)

(declare-fun e!1366017 () Bool)

(declare-fun setElem!16212 () Context!2670)

(declare-fun setNonEmpty!16212 () Bool)

(assert (=> setNonEmpty!16212 (= setRes!16212 (and tp!660826 (inv!31941 setElem!16212) e!1366017))))

(declare-fun setRest!16212 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16212 (= (_2!14195 (h!29667 (zeroValue!2983 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16212 true) setRest!16212))))

(declare-fun b!2139281 () Bool)

(declare-fun tp!660827 () Bool)

(assert (=> b!2139281 (= e!1366017 tp!660827)))

(declare-fun setIsEmpty!16212 () Bool)

(assert (=> setIsEmpty!16212 setRes!16212))

(assert (= b!2139279 b!2139280))

(assert (= (and b!2139279 condSetEmpty!16212) setIsEmpty!16212))

(assert (= (and b!2139279 (not condSetEmpty!16212)) setNonEmpty!16212))

(assert (= setNonEmpty!16212 b!2139281))

(assert (= (and b!2139114 ((_ is Cons!24266) (zeroValue!2983 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098)))))))) b!2139279))

(declare-fun m!2585787 () Bool)

(assert (=> b!2139279 m!2585787))

(declare-fun m!2585789 () Bool)

(assert (=> setNonEmpty!16212 m!2585789))

(declare-fun e!1366021 () Bool)

(assert (=> b!2139114 (= tp!660699 e!1366021)))

(declare-fun tp!660835 () Bool)

(declare-fun tp!660833 () Bool)

(declare-fun e!1366019 () Bool)

(declare-fun b!2139282 () Bool)

(declare-fun setRes!16213 () Bool)

(assert (=> b!2139282 (= e!1366021 (and tp!660835 (inv!31941 (_2!14194 (_1!14195 (h!29667 (minValue!2983 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098)))))))))) e!1366019 tp_is_empty!9507 setRes!16213 tp!660833))))

(declare-fun condSetEmpty!16213 () Bool)

(assert (=> b!2139282 (= condSetEmpty!16213 (= (_2!14195 (h!29667 (minValue!2983 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098)))))))) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun b!2139283 () Bool)

(declare-fun tp!660834 () Bool)

(assert (=> b!2139283 (= e!1366019 tp!660834)))

(declare-fun setElem!16213 () Context!2670)

(declare-fun tp!660831 () Bool)

(declare-fun e!1366020 () Bool)

(declare-fun setNonEmpty!16213 () Bool)

(assert (=> setNonEmpty!16213 (= setRes!16213 (and tp!660831 (inv!31941 setElem!16213) e!1366020))))

(declare-fun setRest!16213 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16213 (= (_2!14195 (h!29667 (minValue!2983 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16213 true) setRest!16213))))

(declare-fun b!2139284 () Bool)

(declare-fun tp!660832 () Bool)

(assert (=> b!2139284 (= e!1366020 tp!660832)))

(declare-fun setIsEmpty!16213 () Bool)

(assert (=> setIsEmpty!16213 setRes!16213))

(assert (= b!2139282 b!2139283))

(assert (= (and b!2139282 condSetEmpty!16213) setIsEmpty!16213))

(assert (= (and b!2139282 (not condSetEmpty!16213)) setNonEmpty!16213))

(assert (= setNonEmpty!16213 b!2139284))

(assert (= (and b!2139114 ((_ is Cons!24266) (minValue!2983 (v!28840 (underlying!5645 (v!28841 (underlying!5646 (cache!3020 cacheDown!1098)))))))) b!2139282))

(declare-fun m!2585791 () Bool)

(assert (=> b!2139282 m!2585791))

(declare-fun m!2585793 () Bool)

(assert (=> setNonEmpty!16213 m!2585793))

(declare-fun tp!660838 () Bool)

(declare-fun b!2139285 () Bool)

(declare-fun tp!660836 () Bool)

(declare-fun e!1366022 () Bool)

(assert (=> b!2139285 (= e!1366022 (and (inv!31938 (left!18674 (c!340456 totalInput!851))) tp!660836 (inv!31938 (right!19004 (c!340456 totalInput!851))) tp!660838))))

(declare-fun b!2139287 () Bool)

(declare-fun e!1366023 () Bool)

(declare-fun tp!660837 () Bool)

(assert (=> b!2139287 (= e!1366023 tp!660837)))

(declare-fun b!2139286 () Bool)

(assert (=> b!2139286 (= e!1366022 (and (inv!31947 (xs!10845 (c!340456 totalInput!851))) e!1366023))))

(assert (=> b!2139088 (= tp!660700 (and (inv!31938 (c!340456 totalInput!851)) e!1366022))))

(assert (= (and b!2139088 ((_ is Node!7903) (c!340456 totalInput!851))) b!2139285))

(assert (= b!2139286 b!2139287))

(assert (= (and b!2139088 ((_ is Leaf!11553) (c!340456 totalInput!851))) b!2139286))

(declare-fun m!2585795 () Bool)

(assert (=> b!2139285 m!2585795))

(declare-fun m!2585797 () Bool)

(assert (=> b!2139285 m!2585797))

(declare-fun m!2585799 () Bool)

(assert (=> b!2139286 m!2585799))

(assert (=> b!2139088 m!2585627))

(declare-fun b!2139298 () Bool)

(declare-fun e!1366032 () Bool)

(declare-fun tp!660857 () Bool)

(assert (=> b!2139298 (= e!1366032 tp!660857)))

(declare-fun setIsEmpty!16218 () Bool)

(declare-fun setRes!16218 () Bool)

(assert (=> setIsEmpty!16218 setRes!16218))

(declare-fun condMapEmpty!13017 () Bool)

(declare-fun mapDefault!13017 () List!24348)

(assert (=> mapNonEmpty!13011 (= condMapEmpty!13017 (= mapRest!13010 ((as const (Array (_ BitVec 32) List!24348)) mapDefault!13017)))))

(declare-fun e!1366034 () Bool)

(declare-fun mapRes!13017 () Bool)

(assert (=> mapNonEmpty!13011 (= tp!660709 (and e!1366034 mapRes!13017))))

(declare-fun setIsEmpty!16219 () Bool)

(declare-fun setRes!16219 () Bool)

(assert (=> setIsEmpty!16219 setRes!16219))

(declare-fun b!2139299 () Bool)

(declare-fun e!1366033 () Bool)

(declare-fun tp!660856 () Bool)

(assert (=> b!2139299 (= e!1366033 tp!660856)))

(declare-fun mapNonEmpty!13017 () Bool)

(declare-fun tp!660855 () Bool)

(declare-fun e!1366035 () Bool)

(assert (=> mapNonEmpty!13017 (= mapRes!13017 (and tp!660855 e!1366035))))

(declare-fun mapValue!13017 () List!24348)

(declare-fun mapRest!13017 () (Array (_ BitVec 32) List!24348))

(declare-fun mapKey!13017 () (_ BitVec 32))

(assert (=> mapNonEmpty!13017 (= mapRest!13010 (store mapRest!13017 mapKey!13017 mapValue!13017))))

(declare-fun b!2139300 () Bool)

(declare-fun tp!660859 () Bool)

(assert (=> b!2139300 (= e!1366035 (and setRes!16218 tp!660859))))

(declare-fun condSetEmpty!16218 () Bool)

(assert (=> b!2139300 (= condSetEmpty!16218 (= (_1!14192 (_1!14193 (h!29665 mapValue!13017))) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun tp!660853 () Bool)

(declare-fun setNonEmpty!16218 () Bool)

(declare-fun setElem!16218 () Context!2670)

(assert (=> setNonEmpty!16218 (= setRes!16219 (and tp!660853 (inv!31941 setElem!16218) e!1366033))))

(declare-fun setRest!16218 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16218 (= (_1!14192 (_1!14193 (h!29665 mapDefault!13017))) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16218 true) setRest!16218))))

(declare-fun mapIsEmpty!13017 () Bool)

(assert (=> mapIsEmpty!13017 mapRes!13017))

(declare-fun setElem!16219 () Context!2670)

(declare-fun setNonEmpty!16219 () Bool)

(declare-fun tp!660858 () Bool)

(assert (=> setNonEmpty!16219 (= setRes!16218 (and tp!660858 (inv!31941 setElem!16219) e!1366032))))

(declare-fun setRest!16219 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16219 (= (_1!14192 (_1!14193 (h!29665 mapValue!13017))) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16219 true) setRest!16219))))

(declare-fun b!2139301 () Bool)

(declare-fun tp!660854 () Bool)

(assert (=> b!2139301 (= e!1366034 (and setRes!16219 tp!660854))))

(declare-fun condSetEmpty!16219 () Bool)

(assert (=> b!2139301 (= condSetEmpty!16219 (= (_1!14192 (_1!14193 (h!29665 mapDefault!13017))) ((as const (Array Context!2670 Bool)) false)))))

(assert (= (and mapNonEmpty!13011 condMapEmpty!13017) mapIsEmpty!13017))

(assert (= (and mapNonEmpty!13011 (not condMapEmpty!13017)) mapNonEmpty!13017))

(assert (= (and b!2139300 condSetEmpty!16218) setIsEmpty!16218))

(assert (= (and b!2139300 (not condSetEmpty!16218)) setNonEmpty!16219))

(assert (= setNonEmpty!16219 b!2139298))

(assert (= (and mapNonEmpty!13017 ((_ is Cons!24264) mapValue!13017)) b!2139300))

(assert (= (and b!2139301 condSetEmpty!16219) setIsEmpty!16219))

(assert (= (and b!2139301 (not condSetEmpty!16219)) setNonEmpty!16218))

(assert (= setNonEmpty!16218 b!2139299))

(assert (= (and mapNonEmpty!13011 ((_ is Cons!24264) mapDefault!13017)) b!2139301))

(declare-fun m!2585801 () Bool)

(assert (=> mapNonEmpty!13017 m!2585801))

(declare-fun m!2585803 () Bool)

(assert (=> setNonEmpty!16218 m!2585803))

(declare-fun m!2585805 () Bool)

(assert (=> setNonEmpty!16219 m!2585805))

(declare-fun b!2139303 () Bool)

(declare-fun e!1366036 () Bool)

(declare-fun tp!660862 () Bool)

(assert (=> b!2139303 (= e!1366036 tp!660862)))

(declare-fun e!1366037 () Bool)

(assert (=> mapNonEmpty!13011 (= tp!660712 e!1366037)))

(declare-fun b!2139302 () Bool)

(declare-fun setRes!16220 () Bool)

(declare-fun tp!660860 () Bool)

(assert (=> b!2139302 (= e!1366037 (and setRes!16220 tp!660860))))

(declare-fun condSetEmpty!16220 () Bool)

(assert (=> b!2139302 (= condSetEmpty!16220 (= (_1!14192 (_1!14193 (h!29665 mapValue!13009))) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun setIsEmpty!16220 () Bool)

(assert (=> setIsEmpty!16220 setRes!16220))

(declare-fun tp!660861 () Bool)

(declare-fun setElem!16220 () Context!2670)

(declare-fun setNonEmpty!16220 () Bool)

(assert (=> setNonEmpty!16220 (= setRes!16220 (and tp!660861 (inv!31941 setElem!16220) e!1366036))))

(declare-fun setRest!16220 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16220 (= (_1!14192 (_1!14193 (h!29665 mapValue!13009))) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16220 true) setRest!16220))))

(assert (= (and b!2139302 condSetEmpty!16220) setIsEmpty!16220))

(assert (= (and b!2139302 (not condSetEmpty!16220)) setNonEmpty!16220))

(assert (= setNonEmpty!16220 b!2139303))

(assert (= (and mapNonEmpty!13011 ((_ is Cons!24264) mapValue!13009)) b!2139302))

(declare-fun m!2585807 () Bool)

(assert (=> setNonEmpty!16220 m!2585807))

(declare-fun b!2139304 () Bool)

(declare-fun tp!660865 () Bool)

(declare-fun tp!660863 () Bool)

(declare-fun e!1366038 () Bool)

(assert (=> b!2139304 (= e!1366038 (and (inv!31938 (left!18674 (c!340456 (totalInput!3103 (h!29668 stack!8))))) tp!660863 (inv!31938 (right!19004 (c!340456 (totalInput!3103 (h!29668 stack!8))))) tp!660865))))

(declare-fun b!2139306 () Bool)

(declare-fun e!1366039 () Bool)

(declare-fun tp!660864 () Bool)

(assert (=> b!2139306 (= e!1366039 tp!660864)))

(declare-fun b!2139305 () Bool)

(assert (=> b!2139305 (= e!1366038 (and (inv!31947 (xs!10845 (c!340456 (totalInput!3103 (h!29668 stack!8))))) e!1366039))))

(assert (=> b!2139097 (= tp!660701 (and (inv!31938 (c!340456 (totalInput!3103 (h!29668 stack!8)))) e!1366038))))

(assert (= (and b!2139097 ((_ is Node!7903) (c!340456 (totalInput!3103 (h!29668 stack!8))))) b!2139304))

(assert (= b!2139305 b!2139306))

(assert (= (and b!2139097 ((_ is Leaf!11553) (c!340456 (totalInput!3103 (h!29668 stack!8))))) b!2139305))

(declare-fun m!2585809 () Bool)

(assert (=> b!2139304 m!2585809))

(declare-fun m!2585811 () Bool)

(assert (=> b!2139304 m!2585811))

(declare-fun m!2585813 () Bool)

(assert (=> b!2139305 m!2585813))

(assert (=> b!2139097 m!2585621))

(declare-fun condSetEmpty!16221 () Bool)

(assert (=> setNonEmpty!16189 (= condSetEmpty!16221 (= setRest!16188 ((as const (Array Context!2670 Bool)) false)))))

(declare-fun setRes!16221 () Bool)

(assert (=> setNonEmpty!16189 (= tp!660694 setRes!16221)))

(declare-fun setIsEmpty!16221 () Bool)

(assert (=> setIsEmpty!16221 setRes!16221))

(declare-fun setElem!16221 () Context!2670)

(declare-fun e!1366040 () Bool)

(declare-fun tp!660867 () Bool)

(declare-fun setNonEmpty!16221 () Bool)

(assert (=> setNonEmpty!16221 (= setRes!16221 (and tp!660867 (inv!31941 setElem!16221) e!1366040))))

(declare-fun setRest!16221 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16221 (= setRest!16188 ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16221 true) setRest!16221))))

(declare-fun b!2139307 () Bool)

(declare-fun tp!660866 () Bool)

(assert (=> b!2139307 (= e!1366040 tp!660866)))

(assert (= (and setNonEmpty!16189 condSetEmpty!16221) setIsEmpty!16221))

(assert (= (and setNonEmpty!16189 (not condSetEmpty!16221)) setNonEmpty!16221))

(assert (= setNonEmpty!16221 b!2139307))

(declare-fun m!2585815 () Bool)

(assert (=> setNonEmpty!16221 m!2585815))

(declare-fun b!2139309 () Bool)

(declare-fun e!1366041 () Bool)

(declare-fun tp!660870 () Bool)

(assert (=> b!2139309 (= e!1366041 tp!660870)))

(declare-fun e!1366042 () Bool)

(assert (=> b!2139098 (= tp!660702 e!1366042)))

(declare-fun b!2139308 () Bool)

(declare-fun setRes!16222 () Bool)

(declare-fun tp!660868 () Bool)

(assert (=> b!2139308 (= e!1366042 (and setRes!16222 tp!660868))))

(declare-fun condSetEmpty!16222 () Bool)

(assert (=> b!2139308 (= condSetEmpty!16222 (= (_1!14192 (_1!14193 (h!29665 mapDefault!13010))) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun setIsEmpty!16222 () Bool)

(assert (=> setIsEmpty!16222 setRes!16222))

(declare-fun tp!660869 () Bool)

(declare-fun setElem!16222 () Context!2670)

(declare-fun setNonEmpty!16222 () Bool)

(assert (=> setNonEmpty!16222 (= setRes!16222 (and tp!660869 (inv!31941 setElem!16222) e!1366041))))

(declare-fun setRest!16222 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16222 (= (_1!14192 (_1!14193 (h!29665 mapDefault!13010))) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16222 true) setRest!16222))))

(assert (= (and b!2139308 condSetEmpty!16222) setIsEmpty!16222))

(assert (= (and b!2139308 (not condSetEmpty!16222)) setNonEmpty!16222))

(assert (= setNonEmpty!16222 b!2139309))

(assert (= (and b!2139098 ((_ is Cons!24264) mapDefault!13010)) b!2139308))

(declare-fun m!2585817 () Bool)

(assert (=> setNonEmpty!16222 m!2585817))

(declare-fun setRes!16225 () Bool)

(declare-fun e!1366051 () Bool)

(declare-fun b!2139320 () Bool)

(declare-fun e!1366054 () Bool)

(assert (=> b!2139320 (= e!1366051 (and setRes!16225 (inv!31939 (totalInput!3103 (h!29668 (t!196881 stack!8)))) e!1366054))))

(declare-fun condSetEmpty!16225 () Bool)

(assert (=> b!2139320 (= condSetEmpty!16225 (= (z!5844 (h!29668 (t!196881 stack!8))) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun b!2139321 () Bool)

(declare-fun tp!660880 () Bool)

(assert (=> b!2139321 (= e!1366054 (and (inv!31938 (c!340456 (totalInput!3103 (h!29668 (t!196881 stack!8))))) tp!660880))))

(declare-fun b!2139322 () Bool)

(declare-fun e!1366053 () Bool)

(declare-fun tp!660879 () Bool)

(assert (=> b!2139322 (= e!1366053 tp!660879)))

(declare-fun e!1366052 () Bool)

(declare-fun b!2139323 () Bool)

(declare-fun tp!660881 () Bool)

(assert (=> b!2139323 (= e!1366052 (and (inv!31940 (h!29668 (t!196881 stack!8))) e!1366051 tp!660881))))

(declare-fun tp!660882 () Bool)

(declare-fun setNonEmpty!16225 () Bool)

(declare-fun setElem!16225 () Context!2670)

(assert (=> setNonEmpty!16225 (= setRes!16225 (and tp!660882 (inv!31941 setElem!16225) e!1366053))))

(declare-fun setRest!16225 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16225 (= (z!5844 (h!29668 (t!196881 stack!8))) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16225 true) setRest!16225))))

(assert (=> b!2139109 (= tp!660693 e!1366052)))

(declare-fun setIsEmpty!16225 () Bool)

(assert (=> setIsEmpty!16225 setRes!16225))

(assert (= (and b!2139320 condSetEmpty!16225) setIsEmpty!16225))

(assert (= (and b!2139320 (not condSetEmpty!16225)) setNonEmpty!16225))

(assert (= setNonEmpty!16225 b!2139322))

(assert (= b!2139320 b!2139321))

(assert (= b!2139323 b!2139320))

(assert (= (and b!2139109 ((_ is Cons!24267) (t!196881 stack!8))) b!2139323))

(declare-fun m!2585819 () Bool)

(assert (=> b!2139320 m!2585819))

(declare-fun m!2585821 () Bool)

(assert (=> b!2139321 m!2585821))

(declare-fun m!2585823 () Bool)

(assert (=> b!2139323 m!2585823))

(declare-fun m!2585825 () Bool)

(assert (=> setNonEmpty!16225 m!2585825))

(declare-fun setIsEmpty!16230 () Bool)

(declare-fun setRes!16231 () Bool)

(assert (=> setIsEmpty!16230 setRes!16231))

(declare-fun b!2139338 () Bool)

(declare-fun e!1366068 () Bool)

(declare-fun tp!660902 () Bool)

(assert (=> b!2139338 (= e!1366068 tp!660902)))

(declare-fun mapValue!13020 () List!24352)

(declare-fun e!1366067 () Bool)

(declare-fun tp!660907 () Bool)

(declare-fun setRes!16230 () Bool)

(declare-fun b!2139339 () Bool)

(declare-fun e!1366070 () Bool)

(assert (=> b!2139339 (= e!1366070 (and (inv!31941 (_1!14196 (_1!14197 (h!29669 mapValue!13020)))) e!1366067 tp_is_empty!9507 setRes!16230 tp!660907))))

(declare-fun condSetEmpty!16231 () Bool)

(assert (=> b!2139339 (= condSetEmpty!16231 (= (_2!14197 (h!29669 mapValue!13020)) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun tp!660903 () Bool)

(declare-fun setElem!16231 () Context!2670)

(declare-fun setNonEmpty!16230 () Bool)

(declare-fun e!1366072 () Bool)

(assert (=> setNonEmpty!16230 (= setRes!16230 (and tp!660903 (inv!31941 setElem!16231) e!1366072))))

(declare-fun setRest!16231 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16230 (= (_2!14197 (h!29669 mapValue!13020)) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16231 true) setRest!16231))))

(declare-fun b!2139340 () Bool)

(declare-fun e!1366071 () Bool)

(declare-fun tp!660909 () Bool)

(assert (=> b!2139340 (= e!1366071 tp!660909)))

(declare-fun mapNonEmpty!13020 () Bool)

(declare-fun mapRes!13020 () Bool)

(declare-fun tp!660901 () Bool)

(assert (=> mapNonEmpty!13020 (= mapRes!13020 (and tp!660901 e!1366070))))

(declare-fun mapKey!13020 () (_ BitVec 32))

(declare-fun mapRest!13020 () (Array (_ BitVec 32) List!24352))

(assert (=> mapNonEmpty!13020 (= mapRest!13009 (store mapRest!13020 mapKey!13020 mapValue!13020))))

(declare-fun setNonEmpty!16231 () Bool)

(declare-fun setElem!16230 () Context!2670)

(declare-fun tp!660904 () Bool)

(assert (=> setNonEmpty!16231 (= setRes!16231 (and tp!660904 (inv!31941 setElem!16230) e!1366071))))

(declare-fun mapDefault!13020 () List!24352)

(declare-fun setRest!16230 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16231 (= (_2!14197 (h!29669 mapDefault!13020)) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16230 true) setRest!16230))))

(declare-fun condMapEmpty!13020 () Bool)

(assert (=> mapNonEmpty!13010 (= condMapEmpty!13020 (= mapRest!13009 ((as const (Array (_ BitVec 32) List!24352)) mapDefault!13020)))))

(declare-fun e!1366069 () Bool)

(assert (=> mapNonEmpty!13010 (= tp!660704 (and e!1366069 mapRes!13020))))

(declare-fun mapIsEmpty!13020 () Bool)

(assert (=> mapIsEmpty!13020 mapRes!13020))

(declare-fun b!2139341 () Bool)

(declare-fun tp!660908 () Bool)

(assert (=> b!2139341 (= e!1366067 tp!660908)))

(declare-fun setIsEmpty!16231 () Bool)

(assert (=> setIsEmpty!16231 setRes!16230))

(declare-fun b!2139342 () Bool)

(declare-fun tp!660906 () Bool)

(assert (=> b!2139342 (= e!1366072 tp!660906)))

(declare-fun b!2139343 () Bool)

(declare-fun tp!660905 () Bool)

(assert (=> b!2139343 (= e!1366069 (and (inv!31941 (_1!14196 (_1!14197 (h!29669 mapDefault!13020)))) e!1366068 tp_is_empty!9507 setRes!16231 tp!660905))))

(declare-fun condSetEmpty!16230 () Bool)

(assert (=> b!2139343 (= condSetEmpty!16230 (= (_2!14197 (h!29669 mapDefault!13020)) ((as const (Array Context!2670 Bool)) false)))))

(assert (= (and mapNonEmpty!13010 condMapEmpty!13020) mapIsEmpty!13020))

(assert (= (and mapNonEmpty!13010 (not condMapEmpty!13020)) mapNonEmpty!13020))

(assert (= b!2139339 b!2139341))

(assert (= (and b!2139339 condSetEmpty!16231) setIsEmpty!16231))

(assert (= (and b!2139339 (not condSetEmpty!16231)) setNonEmpty!16230))

(assert (= setNonEmpty!16230 b!2139342))

(assert (= (and mapNonEmpty!13020 ((_ is Cons!24268) mapValue!13020)) b!2139339))

(assert (= b!2139343 b!2139338))

(assert (= (and b!2139343 condSetEmpty!16230) setIsEmpty!16230))

(assert (= (and b!2139343 (not condSetEmpty!16230)) setNonEmpty!16231))

(assert (= setNonEmpty!16231 b!2139340))

(assert (= (and mapNonEmpty!13010 ((_ is Cons!24268) mapDefault!13020)) b!2139343))

(declare-fun m!2585827 () Bool)

(assert (=> b!2139339 m!2585827))

(declare-fun m!2585829 () Bool)

(assert (=> b!2139343 m!2585829))

(declare-fun m!2585831 () Bool)

(assert (=> setNonEmpty!16231 m!2585831))

(declare-fun m!2585833 () Bool)

(assert (=> setNonEmpty!16230 m!2585833))

(declare-fun m!2585835 () Bool)

(assert (=> mapNonEmpty!13020 m!2585835))

(declare-fun tp!660913 () Bool)

(declare-fun setNonEmpty!16232 () Bool)

(declare-fun setRes!16232 () Bool)

(declare-fun setElem!16232 () Context!2670)

(declare-fun e!1366073 () Bool)

(assert (=> setNonEmpty!16232 (= setRes!16232 (and tp!660913 (inv!31941 setElem!16232) e!1366073))))

(declare-fun setRest!16232 () (InoxSet Context!2670))

(assert (=> setNonEmpty!16232 (= (_2!14197 (h!29669 mapValue!13011)) ((_ map or) (store ((as const (Array Context!2670 Bool)) false) setElem!16232 true) setRest!16232))))

(declare-fun b!2139344 () Bool)

(declare-fun tp!660910 () Bool)

(assert (=> b!2139344 (= e!1366073 tp!660910)))

(declare-fun e!1366075 () Bool)

(assert (=> mapNonEmpty!13010 (= tp!660713 e!1366075)))

(declare-fun e!1366074 () Bool)

(declare-fun b!2139345 () Bool)

(declare-fun tp!660911 () Bool)

(assert (=> b!2139345 (= e!1366075 (and (inv!31941 (_1!14196 (_1!14197 (h!29669 mapValue!13011)))) e!1366074 tp_is_empty!9507 setRes!16232 tp!660911))))

(declare-fun condSetEmpty!16232 () Bool)

(assert (=> b!2139345 (= condSetEmpty!16232 (= (_2!14197 (h!29669 mapValue!13011)) ((as const (Array Context!2670 Bool)) false)))))

(declare-fun b!2139346 () Bool)

(declare-fun tp!660912 () Bool)

(assert (=> b!2139346 (= e!1366074 tp!660912)))

(declare-fun setIsEmpty!16232 () Bool)

(assert (=> setIsEmpty!16232 setRes!16232))

(assert (= b!2139345 b!2139346))

(assert (= (and b!2139345 condSetEmpty!16232) setIsEmpty!16232))

(assert (= (and b!2139345 (not condSetEmpty!16232)) setNonEmpty!16232))

(assert (= setNonEmpty!16232 b!2139344))

(assert (= (and mapNonEmpty!13010 ((_ is Cons!24268) mapValue!13011)) b!2139345))

(declare-fun m!2585837 () Bool)

(assert (=> setNonEmpty!16232 m!2585837))

(declare-fun m!2585839 () Bool)

(assert (=> b!2139345 m!2585839))

(declare-fun b_lambda!70623 () Bool)

(assert (= b_lambda!70621 (or b!2139121 b_lambda!70623)))

(declare-fun bs!445108 () Bool)

(declare-fun d!644706 () Bool)

(assert (= bs!445108 (and d!644706 b!2139121)))

(assert (=> bs!445108 (= (dynLambda!11369 lambda!79927 (h!29668 stack!8)) (= (totalInput!3103 (h!29668 stack!8)) totalInput!851))))

(assert (=> b!2139155 d!644706))

(declare-fun b_lambda!70625 () Bool)

(assert (= b_lambda!70617 (or b!2139107 b_lambda!70625)))

(declare-fun bs!445109 () Bool)

(declare-fun d!644708 () Bool)

(assert (= bs!445109 (and d!644708 b!2139107)))

(assert (=> bs!445109 (= (dynLambda!11369 lambda!79926 (h!29668 stack!8)) (= (res!923888 (h!29668 stack!8)) lt!797849))))

(assert (=> b!2139151 d!644708))

(declare-fun b_lambda!70627 () Bool)

(assert (= b_lambda!70619 (or b!2139107 b_lambda!70627)))

(declare-fun bs!445110 () Bool)

(declare-fun d!644710 () Bool)

(assert (= bs!445110 (and d!644710 b!2139107)))

(assert (=> bs!445110 (= (dynLambda!11369 lambda!79926 (h!29668 Nil!24267)) (= (res!923888 (h!29668 Nil!24267)) lt!797849))))

(assert (=> b!2139153 d!644710))

(check-sat (not b!2139191) (not b!2139279) (not setNonEmpty!16230) (not d!644674) (not b!2139286) (not b!2139209) (not b!2139274) (not mapNonEmpty!13020) (not b!2139308) (not b!2139097) (not b!2139299) (not d!644676) (not b!2139341) (not b!2139346) (not b!2139345) (not setNonEmpty!16211) (not b!2139131) (not b_lambda!70623) (not b!2139253) (not b_next!63543) tp_is_empty!9507 (not b!2139343) (not setNonEmpty!16231) (not b!2139257) (not b!2139287) (not d!644702) (not b!2139222) (not setNonEmpty!16210) b_and!172423 (not b_lambda!70627) b_and!172419 (not setNonEmpty!16207) (not b!2139267) (not b!2139282) (not b!2139262) (not b!2139309) (not b!2139285) (not b!2139320) b_and!172421 (not d!644696) (not setNonEmpty!16220) (not b!2139156) (not d!644650) (not b!2139220) (not setNonEmpty!16232) b_and!172425 (not b!2139322) (not d!644672) (not b!2139277) (not b!2139200) (not b!2139281) (not b!2139303) (not d!644662) (not b!2139221) (not b!2139233) (not b!2139278) (not b!2139088) (not b!2139305) (not b!2139301) (not b!2139255) (not setNonEmpty!16219) (not b!2139306) b_and!172427 (not b!2139195) (not b!2139284) (not b!2139259) (not setNonEmpty!16206) (not b!2139261) (not b_next!63551) (not b!2139254) (not b!2139232) (not setNonEmpty!16192) (not b!2139128) (not b!2139177) (not b!2139152) (not b_next!63541) (not b!2139265) (not b!2139263) (not b!2139323) (not b!2139134) (not b!2139154) (not b!2139342) (not b!2139174) (not mapNonEmpty!13014) (not setNonEmpty!16212) (not b!2139321) (not setNonEmpty!16198) (not setNonEmpty!16218) (not b!2139143) (not b!2139260) (not setNonEmpty!16213) (not setNonEmpty!16225) (not d!644654) (not b!2139194) (not d!644652) (not b!2139302) (not b!2139298) (not b_next!63549) (not b!2139238) (not b!2139211) (not setNonEmpty!16222) (not setNonEmpty!16221) (not b!2139159) (not b_next!63545) (not setNonEmpty!16204) (not b!2139338) (not b!2139231) (not b!2139102) (not b!2139141) (not b!2139275) (not b!2139146) (not b_next!63547) (not b!2139344) (not b!2139258) (not b!2139276) (not b!2139300) (not setNonEmpty!16203) (not b_lambda!70625) (not b!2139307) (not b!2139157) (not b!2139162) (not d!644700) (not b!2139304) b_and!172417 (not b!2139210) (not b!2139280) (not b!2139190) (not b!2139264) (not b!2139266) (not b!2139160) (not mapNonEmpty!13017) (not d!644666) (not setNonEmpty!16195) (not b!2139339) (not b!2139340) (not b!2139256) (not setNonEmpty!16205) (not b!2139283))
(check-sat (not b_next!63543) b_and!172423 b_and!172419 b_and!172421 b_and!172425 b_and!172427 (not b_next!63551) (not b_next!63541) (not b_next!63549) (not b_next!63545) (not b_next!63547) b_and!172417)
