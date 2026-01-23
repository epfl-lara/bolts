; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208060 () Bool)

(assert start!208060)

(declare-fun b!2143914 () Bool)

(declare-fun b_free!63149 () Bool)

(declare-fun b_next!63853 () Bool)

(assert (=> b!2143914 (= b_free!63149 (not b_next!63853))))

(declare-fun tp!664155 () Bool)

(declare-fun b_and!172729 () Bool)

(assert (=> b!2143914 (= tp!664155 b_and!172729)))

(declare-fun b!2143917 () Bool)

(declare-fun b_free!63151 () Bool)

(declare-fun b_next!63855 () Bool)

(assert (=> b!2143917 (= b_free!63151 (not b_next!63855))))

(declare-fun tp!664148 () Bool)

(declare-fun b_and!172731 () Bool)

(assert (=> b!2143917 (= tp!664148 b_and!172731)))

(declare-fun b!2143936 () Bool)

(declare-fun b_free!63153 () Bool)

(declare-fun b_next!63857 () Bool)

(assert (=> b!2143936 (= b_free!63153 (not b_next!63857))))

(declare-fun tp!664145 () Bool)

(declare-fun b_and!172733 () Bool)

(assert (=> b!2143936 (= tp!664145 b_and!172733)))

(declare-fun b!2143908 () Bool)

(declare-fun b_free!63155 () Bool)

(declare-fun b_next!63859 () Bool)

(assert (=> b!2143908 (= b_free!63155 (not b_next!63859))))

(declare-fun tp!664138 () Bool)

(declare-fun b_and!172735 () Bool)

(assert (=> b!2143908 (= tp!664138 b_and!172735)))

(declare-fun b!2143895 () Bool)

(declare-fun b_free!63157 () Bool)

(declare-fun b_next!63861 () Bool)

(assert (=> b!2143895 (= b_free!63157 (not b_next!63861))))

(declare-fun tp!664133 () Bool)

(declare-fun b_and!172737 () Bool)

(assert (=> b!2143895 (= tp!664133 b_and!172737)))

(declare-fun b!2143930 () Bool)

(declare-fun b_free!63159 () Bool)

(declare-fun b_next!63863 () Bool)

(assert (=> b!2143930 (= b_free!63159 (not b_next!63863))))

(declare-fun tp!664143 () Bool)

(declare-fun b_and!172739 () Bool)

(assert (=> b!2143930 (= tp!664143 b_and!172739)))

(declare-fun b!2143897 () Bool)

(assert (=> b!2143897 true))

(declare-fun bs!445304 () Bool)

(declare-fun b!2143903 () Bool)

(assert (= bs!445304 (and b!2143903 b!2143897)))

(declare-fun lambda!80359 () Int)

(declare-fun lambda!80358 () Int)

(assert (=> bs!445304 (not (= lambda!80359 lambda!80358))))

(assert (=> b!2143903 true))

(declare-fun bs!445305 () Bool)

(declare-fun b!2143901 () Bool)

(assert (= bs!445305 (and b!2143901 b!2143897)))

(declare-fun lt!798532 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun lambda!80360 () Int)

(assert (=> bs!445305 (= (= lastNullablePos!123 lt!798532) (= lambda!80360 lambda!80358))))

(declare-fun bs!445306 () Bool)

(assert (= bs!445306 (and b!2143901 b!2143903)))

(assert (=> bs!445306 (not (= lambda!80360 lambda!80359))))

(assert (=> b!2143901 true))

(declare-fun b!2143896 () Bool)

(declare-fun e!1369907 () Bool)

(declare-fun tp!664140 () Bool)

(declare-fun mapRes!13297 () Bool)

(assert (=> b!2143896 (= e!1369907 (and tp!664140 mapRes!13297))))

(declare-fun condMapEmpty!13297 () Bool)

(declare-datatypes ((C!11728 0))(
  ( (C!11729 (val!6850 Int)) )
))
(declare-datatypes ((Regex!5791 0))(
  ( (ElementMatch!5791 (c!340666 C!11728)) (Concat!10093 (regOne!12094 Regex!5791) (regTwo!12094 Regex!5791)) (EmptyExpr!5791) (Star!5791 (reg!6120 Regex!5791)) (EmptyLang!5791) (Union!5791 (regOne!12095 Regex!5791) (regTwo!12095 Regex!5791)) )
))
(declare-datatypes ((List!24495 0))(
  ( (Nil!24411) (Cons!24411 (h!29812 Regex!5791) (t!197025 List!24495)) )
))
(declare-datatypes ((Context!2722 0))(
  ( (Context!2723 (exprs!1861 List!24495)) )
))
(declare-datatypes ((tuple2!24262 0))(
  ( (tuple2!24263 (_1!14340 Context!2722) (_2!14340 C!11728)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!24264 0))(
  ( (tuple2!24265 (_1!14341 tuple2!24262) (_2!14341 (InoxSet Context!2722))) )
))
(declare-datatypes ((List!24496 0))(
  ( (Nil!24412) (Cons!24412 (h!29813 tuple2!24264) (t!197026 List!24496)) )
))
(declare-datatypes ((array!9423 0))(
  ( (array!9424 (arr!4207 (Array (_ BitVec 32) (_ BitVec 64))) (size!19106 (_ BitVec 32))) )
))
(declare-datatypes ((array!9425 0))(
  ( (array!9426 (arr!4208 (Array (_ BitVec 32) List!24496)) (size!19107 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5590 0))(
  ( (LongMapFixedSize!5591 (defaultEntry!3160 Int) (mask!7006 (_ BitVec 32)) (extraKeys!3043 (_ BitVec 32)) (zeroValue!3053 List!24496) (minValue!3053 List!24496) (_size!5641 (_ BitVec 32)) (_keys!3092 array!9423) (_values!3075 array!9425) (_vacant!2856 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11005 0))(
  ( (Cell!11006 (v!29000 LongMapFixedSize!5590)) )
))
(declare-datatypes ((MutLongMap!2795 0))(
  ( (LongMap!2795 (underlying!5785 Cell!11005)) (MutLongMapExt!2794 (__x!16561 Int)) )
))
(declare-datatypes ((Cell!11007 0))(
  ( (Cell!11008 (v!29001 MutLongMap!2795)) )
))
(declare-datatypes ((Hashable!2709 0))(
  ( (HashableExt!2708 (__x!16562 Int)) )
))
(declare-datatypes ((MutableMap!2709 0))(
  ( (MutableMapExt!2708 (__x!16563 Int)) (HashMap!2709 (underlying!5786 Cell!11007) (hashF!4632 Hashable!2709) (_size!5642 (_ BitVec 32)) (defaultValue!2871 Int)) )
))
(declare-datatypes ((CacheUp!1864 0))(
  ( (CacheUp!1865 (cache!3090 MutableMap!2709)) )
))
(declare-fun cacheUp!979 () CacheUp!1864)

(declare-fun mapDefault!13298 () List!24496)

(assert (=> b!2143896 (= condMapEmpty!13297 (= (arr!4208 (_values!3075 (v!29000 (underlying!5785 (v!29001 (underlying!5786 (cache!3090 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24496)) mapDefault!13298)))))

(declare-fun e!1369902 () Bool)

(declare-fun e!1369900 () Bool)

(assert (=> b!2143897 (= e!1369902 e!1369900)))

(declare-fun res!925281 () Bool)

(assert (=> b!2143897 (=> (not res!925281) (not e!1369900))))

(declare-datatypes ((List!24497 0))(
  ( (Nil!24413) (Cons!24413 (h!29814 C!11728) (t!197027 List!24497)) )
))
(declare-datatypes ((IArray!15861 0))(
  ( (IArray!15862 (innerList!7988 List!24497)) )
))
(declare-datatypes ((Conc!7928 0))(
  ( (Node!7928 (left!18764 Conc!7928) (right!19094 Conc!7928) (csize!16086 Int) (cheight!8139 Int)) (Leaf!11591 (xs!10870 IArray!15861) (csize!16087 Int)) (Empty!7928) )
))
(declare-datatypes ((BalanceConc!15618 0))(
  ( (BalanceConc!15619 (c!340667 Conc!7928)) )
))
(declare-datatypes ((StackFrame!254 0))(
  ( (StackFrame!255 (z!5891 (InoxSet Context!2722)) (from!2758 Int) (lastNullablePos!445 Int) (res!925297 Int) (totalInput!3154 BalanceConc!15618)) )
))
(declare-datatypes ((List!24498 0))(
  ( (Nil!24414) (Cons!24414 (h!29815 StackFrame!254) (t!197028 List!24498)) )
))
(declare-fun stack!8 () List!24498)

(declare-fun forall!4985 (List!24498 Int) Bool)

(assert (=> b!2143897 (= res!925281 (forall!4985 stack!8 lambda!80358))))

(declare-fun z!3839 () (InoxSet Context!2722))

(declare-fun from!1043 () Int)

(declare-fun lt!798535 () Int)

(declare-fun totalInput!851 () BalanceConc!15618)

(declare-fun furthestNullablePosition!87 ((InoxSet Context!2722) Int BalanceConc!15618 Int Int) Int)

(assert (=> b!2143897 (= lt!798532 (furthestNullablePosition!87 z!3839 from!1043 totalInput!851 lt!798535 lastNullablePos!123))))

(declare-fun b!2143898 () Bool)

(declare-fun res!925294 () Bool)

(declare-fun e!1369884 () Bool)

(assert (=> b!2143898 (=> res!925294 e!1369884)))

(assert (=> b!2143898 (= res!925294 (not (= lt!798532 lastNullablePos!123)))))

(declare-fun b!2143899 () Bool)

(declare-fun e!1369905 () Bool)

(declare-datatypes ((tuple3!3478 0))(
  ( (tuple3!3479 (_1!14342 (InoxSet Context!2722)) (_2!14342 Int) (_3!2209 Int)) )
))
(declare-datatypes ((tuple2!24266 0))(
  ( (tuple2!24267 (_1!14343 tuple3!3478) (_2!14343 Int)) )
))
(declare-datatypes ((List!24499 0))(
  ( (Nil!24415) (Cons!24415 (h!29816 tuple2!24266) (t!197029 List!24499)) )
))
(declare-datatypes ((array!9427 0))(
  ( (array!9428 (arr!4209 (Array (_ BitVec 32) List!24499)) (size!19108 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5592 0))(
  ( (LongMapFixedSize!5593 (defaultEntry!3161 Int) (mask!7007 (_ BitVec 32)) (extraKeys!3044 (_ BitVec 32)) (zeroValue!3054 List!24499) (minValue!3054 List!24499) (_size!5643 (_ BitVec 32)) (_keys!3093 array!9423) (_values!3076 array!9427) (_vacant!2857 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11009 0))(
  ( (Cell!11010 (v!29002 LongMapFixedSize!5592)) )
))
(declare-datatypes ((MutLongMap!2796 0))(
  ( (LongMap!2796 (underlying!5787 Cell!11009)) (MutLongMapExt!2795 (__x!16564 Int)) )
))
(declare-datatypes ((Cell!11011 0))(
  ( (Cell!11012 (v!29003 MutLongMap!2796)) )
))
(declare-datatypes ((Hashable!2710 0))(
  ( (HashableExt!2709 (__x!16565 Int)) )
))
(declare-datatypes ((MutableMap!2710 0))(
  ( (MutableMapExt!2709 (__x!16566 Int)) (HashMap!2710 (underlying!5788 Cell!11011) (hashF!4633 Hashable!2710) (_size!5644 (_ BitVec 32)) (defaultValue!2872 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!822 0))(
  ( (CacheFurthestNullable!823 (cache!3091 MutableMap!2710) (totalInput!3155 BalanceConc!15618)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!822)

(declare-fun tp!664149 () Bool)

(declare-fun inv!32124 (Conc!7928) Bool)

(assert (=> b!2143899 (= e!1369905 (and (inv!32124 (c!340667 (totalInput!3155 cacheFurthestNullable!114))) tp!664149))))

(declare-fun b!2143900 () Bool)

(declare-fun e!1369890 () Bool)

(assert (=> b!2143900 (= e!1369890 e!1369902)))

(declare-fun res!925296 () Bool)

(assert (=> b!2143900 (=> (not res!925296) (not e!1369902))))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2143900 (= res!925296 (and (= totalInputSize!296 lt!798535) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19109 (BalanceConc!15618) Int)

(assert (=> b!2143900 (= lt!798535 (size!19109 totalInput!851))))

(declare-fun e!1369899 () Bool)

(assert (=> b!2143901 (= e!1369884 e!1369899)))

(declare-fun res!925292 () Bool)

(assert (=> b!2143901 (=> (not res!925292) (not e!1369899))))

(assert (=> b!2143901 (= res!925292 (= lastNullablePos!123 (furthestNullablePosition!87 z!3839 from!1043 totalInput!851 totalInputSize!296 lastNullablePos!123)))))

(assert (=> b!2143901 (forall!4985 stack!8 lambda!80360)))

(declare-datatypes ((Unit!37705 0))(
  ( (Unit!37706) )
))
(declare-fun lt!798537 () Unit!37705)

(declare-fun lemmaStackPreservesForEqualRes!30 (List!24498 Int Int) Unit!37705)

(assert (=> b!2143901 (= lt!798537 (lemmaStackPreservesForEqualRes!30 stack!8 lt!798532 lastNullablePos!123))))

(assert (=> b!2143901 (forall!4985 stack!8 lambda!80358)))

(declare-fun b!2143902 () Bool)

(declare-fun res!925282 () Bool)

(assert (=> b!2143902 (=> res!925282 e!1369884)))

(declare-fun e!1369888 () Bool)

(assert (=> b!2143902 (= res!925282 e!1369888)))

(declare-fun res!925286 () Bool)

(assert (=> b!2143902 (=> (not res!925286) (not e!1369888))))

(assert (=> b!2143902 (= res!925286 (not (= from!1043 totalInputSize!296)))))

(declare-fun res!925283 () Bool)

(assert (=> b!2143903 (=> (not res!925283) (not e!1369900))))

(assert (=> b!2143903 (= res!925283 (forall!4985 stack!8 lambda!80359))))

(declare-fun b!2143904 () Bool)

(declare-fun res!925288 () Bool)

(assert (=> b!2143904 (=> (not res!925288) (not e!1369902))))

(declare-datatypes ((tuple3!3480 0))(
  ( (tuple3!3481 (_1!14344 Regex!5791) (_2!14344 Context!2722) (_3!2210 C!11728)) )
))
(declare-datatypes ((tuple2!24268 0))(
  ( (tuple2!24269 (_1!14345 tuple3!3480) (_2!14345 (InoxSet Context!2722))) )
))
(declare-datatypes ((List!24500 0))(
  ( (Nil!24416) (Cons!24416 (h!29817 tuple2!24268) (t!197030 List!24500)) )
))
(declare-datatypes ((Hashable!2711 0))(
  ( (HashableExt!2710 (__x!16567 Int)) )
))
(declare-datatypes ((array!9429 0))(
  ( (array!9430 (arr!4210 (Array (_ BitVec 32) List!24500)) (size!19110 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5594 0))(
  ( (LongMapFixedSize!5595 (defaultEntry!3162 Int) (mask!7008 (_ BitVec 32)) (extraKeys!3045 (_ BitVec 32)) (zeroValue!3055 List!24500) (minValue!3055 List!24500) (_size!5645 (_ BitVec 32)) (_keys!3094 array!9423) (_values!3077 array!9429) (_vacant!2858 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11013 0))(
  ( (Cell!11014 (v!29004 LongMapFixedSize!5594)) )
))
(declare-datatypes ((MutLongMap!2797 0))(
  ( (LongMap!2797 (underlying!5789 Cell!11013)) (MutLongMapExt!2796 (__x!16568 Int)) )
))
(declare-datatypes ((Cell!11015 0))(
  ( (Cell!11016 (v!29005 MutLongMap!2797)) )
))
(declare-datatypes ((MutableMap!2711 0))(
  ( (MutableMapExt!2710 (__x!16569 Int)) (HashMap!2711 (underlying!5790 Cell!11015) (hashF!4634 Hashable!2711) (_size!5646 (_ BitVec 32)) (defaultValue!2873 Int)) )
))
(declare-datatypes ((CacheDown!1856 0))(
  ( (CacheDown!1857 (cache!3092 MutableMap!2711)) )
))
(declare-fun cacheDown!1098 () CacheDown!1856)

(declare-fun valid!2181 (CacheDown!1856) Bool)

(assert (=> b!2143904 (= res!925288 (valid!2181 cacheDown!1098))))

(declare-fun b!2143905 () Bool)

(declare-fun e!1369903 () Bool)

(declare-fun e!1369886 () Bool)

(declare-fun lt!798536 () MutLongMap!2797)

(get-info :version)

(assert (=> b!2143905 (= e!1369903 (and e!1369886 ((_ is LongMap!2797) lt!798536)))))

(assert (=> b!2143905 (= lt!798536 (v!29005 (underlying!5790 (cache!3092 cacheDown!1098))))))

(declare-fun b!2143906 () Bool)

(assert (=> b!2143906 (= e!1369900 (not e!1369884))))

(declare-fun res!925295 () Bool)

(assert (=> b!2143906 (=> res!925295 e!1369884)))

(declare-datatypes ((Option!4946 0))(
  ( (None!4945) (Some!4945 (v!29006 Int)) )
))
(declare-fun get!7452 (CacheFurthestNullable!822 (InoxSet Context!2722) Int Int) Option!4946)

(assert (=> b!2143906 (= res!925295 ((_ is Some!4945) (get!7452 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2143906 (forall!4985 stack!8 lambda!80358)))

(declare-fun b!2143907 () Bool)

(declare-fun e!1369891 () Bool)

(declare-fun e!1369906 () Bool)

(assert (=> b!2143907 (= e!1369891 e!1369906)))

(declare-fun e!1369871 () Bool)

(assert (=> b!2143908 (= e!1369871 (and e!1369903 tp!664138))))

(declare-fun e!1369883 () Bool)

(declare-fun tp!664141 () Bool)

(declare-fun tp!664137 () Bool)

(declare-fun array_inv!3012 (array!9423) Bool)

(declare-fun array_inv!3013 (array!9425) Bool)

(assert (=> b!2143895 (= e!1369883 (and tp!664133 tp!664137 tp!664141 (array_inv!3012 (_keys!3092 (v!29000 (underlying!5785 (v!29001 (underlying!5786 (cache!3090 cacheUp!979))))))) (array_inv!3013 (_values!3075 (v!29000 (underlying!5785 (v!29001 (underlying!5786 (cache!3090 cacheUp!979))))))) e!1369907))))

(declare-fun res!925285 () Bool)

(assert (=> start!208060 (=> (not res!925285) (not e!1369890))))

(assert (=> start!208060 (= res!925285 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!208060 e!1369890))

(declare-fun e!1369892 () Bool)

(declare-fun inv!32125 (CacheFurthestNullable!822) Bool)

(assert (=> start!208060 (and (inv!32125 cacheFurthestNullable!114) e!1369892)))

(assert (=> start!208060 true))

(declare-fun e!1369889 () Bool)

(declare-fun inv!32126 (CacheDown!1856) Bool)

(assert (=> start!208060 (and (inv!32126 cacheDown!1098) e!1369889)))

(declare-fun inv!32127 (CacheUp!1864) Bool)

(assert (=> start!208060 (and (inv!32127 cacheUp!979) e!1369891)))

(declare-fun condSetEmpty!16603 () Bool)

(assert (=> start!208060 (= condSetEmpty!16603 (= z!3839 ((as const (Array Context!2722 Bool)) false)))))

(declare-fun setRes!16602 () Bool)

(assert (=> start!208060 setRes!16602))

(declare-fun e!1369875 () Bool)

(declare-fun inv!32128 (BalanceConc!15618) Bool)

(assert (=> start!208060 (and (inv!32128 totalInput!851) e!1369875)))

(declare-fun e!1369877 () Bool)

(assert (=> start!208060 e!1369877))

(declare-fun mapNonEmpty!13297 () Bool)

(declare-fun mapRes!13298 () Bool)

(declare-fun tp!664154 () Bool)

(declare-fun tp!664152 () Bool)

(assert (=> mapNonEmpty!13297 (= mapRes!13298 (and tp!664154 tp!664152))))

(declare-fun mapValue!13297 () List!24499)

(declare-fun mapRest!13297 () (Array (_ BitVec 32) List!24499))

(declare-fun mapKey!13298 () (_ BitVec 32))

(assert (=> mapNonEmpty!13297 (= (arr!4209 (_values!3076 (v!29002 (underlying!5787 (v!29003 (underlying!5788 (cache!3091 cacheFurthestNullable!114))))))) (store mapRest!13297 mapKey!13298 mapValue!13297))))

(declare-fun b!2143909 () Bool)

(declare-fun setRes!16603 () Bool)

(declare-fun e!1369898 () Bool)

(declare-fun e!1369874 () Bool)

(assert (=> b!2143909 (= e!1369898 (and setRes!16603 (inv!32128 (totalInput!3154 (h!29815 stack!8))) e!1369874))))

(declare-fun condSetEmpty!16602 () Bool)

(assert (=> b!2143909 (= condSetEmpty!16602 (= (z!5891 (h!29815 stack!8)) ((as const (Array Context!2722 Bool)) false)))))

(declare-fun b!2143910 () Bool)

(declare-fun tp!664134 () Bool)

(assert (=> b!2143910 (= e!1369874 (and (inv!32124 (c!340667 (totalInput!3154 (h!29815 stack!8)))) tp!664134))))

(declare-fun b!2143911 () Bool)

(declare-fun e!1369908 () Bool)

(assert (=> b!2143911 (= e!1369886 e!1369908)))

(declare-fun b!2143912 () Bool)

(declare-fun e!1369879 () Bool)

(declare-fun e!1369904 () Bool)

(declare-fun lt!798533 () MutLongMap!2796)

(assert (=> b!2143912 (= e!1369879 (and e!1369904 ((_ is LongMap!2796) lt!798533)))))

(assert (=> b!2143912 (= lt!798533 (v!29003 (underlying!5788 (cache!3091 cacheFurthestNullable!114))))))

(declare-fun b!2143913 () Bool)

(declare-fun tp!664153 () Bool)

(declare-fun inv!32129 (StackFrame!254) Bool)

(assert (=> b!2143913 (= e!1369877 (and (inv!32129 (h!29815 stack!8)) e!1369898 tp!664153))))

(declare-fun tp!664136 () Bool)

(declare-fun e!1369880 () Bool)

(declare-fun tp!664150 () Bool)

(declare-fun e!1369896 () Bool)

(declare-fun array_inv!3014 (array!9429) Bool)

(assert (=> b!2143914 (= e!1369896 (and tp!664155 tp!664136 tp!664150 (array_inv!3012 (_keys!3094 (v!29004 (underlying!5789 (v!29005 (underlying!5790 (cache!3092 cacheDown!1098))))))) (array_inv!3014 (_values!3077 (v!29004 (underlying!5789 (v!29005 (underlying!5790 (cache!3092 cacheDown!1098))))))) e!1369880))))

(declare-fun setIsEmpty!16602 () Bool)

(assert (=> setIsEmpty!16602 setRes!16602))

(declare-fun b!2143915 () Bool)

(declare-fun e!1369872 () Bool)

(assert (=> b!2143915 (= e!1369872 e!1369883)))

(declare-fun b!2143916 () Bool)

(declare-fun res!925291 () Bool)

(assert (=> b!2143916 (=> (not res!925291) (not e!1369902))))

(assert (=> b!2143916 (= res!925291 (= (totalInput!3155 cacheFurthestNullable!114) totalInput!851))))

(declare-fun e!1369885 () Bool)

(assert (=> b!2143917 (= e!1369906 (and e!1369885 tp!664148))))

(declare-fun setElem!16602 () Context!2722)

(declare-fun setNonEmpty!16602 () Bool)

(declare-fun e!1369897 () Bool)

(declare-fun tp!664142 () Bool)

(declare-fun inv!32130 (Context!2722) Bool)

(assert (=> setNonEmpty!16602 (= setRes!16603 (and tp!664142 (inv!32130 setElem!16602) e!1369897))))

(declare-fun setRest!16602 () (InoxSet Context!2722))

(assert (=> setNonEmpty!16602 (= (z!5891 (h!29815 stack!8)) ((_ map or) (store ((as const (Array Context!2722 Bool)) false) setElem!16602 true) setRest!16602))))

(declare-fun b!2143918 () Bool)

(declare-fun e!1369873 () Bool)

(declare-fun lt!798534 () MutLongMap!2795)

(assert (=> b!2143918 (= e!1369885 (and e!1369873 ((_ is LongMap!2795) lt!798534)))))

(assert (=> b!2143918 (= lt!798534 (v!29001 (underlying!5786 (cache!3090 cacheUp!979))))))

(declare-fun b!2143919 () Bool)

(declare-fun e!1369882 () Bool)

(declare-fun tp!664151 () Bool)

(assert (=> b!2143919 (= e!1369882 tp!664151)))

(declare-fun b!2143920 () Bool)

(declare-fun res!925293 () Bool)

(assert (=> b!2143920 (=> (not res!925293) (not e!1369902))))

(declare-fun valid!2182 (CacheUp!1864) Bool)

(assert (=> b!2143920 (= res!925293 (valid!2182 cacheUp!979))))

(declare-fun b!2143921 () Bool)

(declare-fun tp!664132 () Bool)

(declare-fun mapRes!13299 () Bool)

(assert (=> b!2143921 (= e!1369880 (and tp!664132 mapRes!13299))))

(declare-fun condMapEmpty!13298 () Bool)

(declare-fun mapDefault!13299 () List!24500)

(assert (=> b!2143921 (= condMapEmpty!13298 (= (arr!4210 (_values!3077 (v!29004 (underlying!5789 (v!29005 (underlying!5790 (cache!3092 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24500)) mapDefault!13299)))))

(declare-fun b!2143922 () Bool)

(declare-fun res!925289 () Bool)

(assert (=> b!2143922 (=> (not res!925289) (not e!1369902))))

(declare-fun e!1369895 () Bool)

(assert (=> b!2143922 (= res!925289 e!1369895)))

(declare-fun res!925284 () Bool)

(assert (=> b!2143922 (=> res!925284 e!1369895)))

(declare-fun nullableZipper!149 ((InoxSet Context!2722)) Bool)

(assert (=> b!2143922 (= res!925284 (not (nullableZipper!149 z!3839)))))

(declare-fun b!2143923 () Bool)

(declare-fun e!1369881 () Bool)

(assert (=> b!2143923 (= e!1369904 e!1369881)))

(declare-fun b!2143924 () Bool)

(assert (=> b!2143924 (= e!1369899 (forall!4985 stack!8 lambda!80359))))

(declare-fun b!2143925 () Bool)

(declare-fun res!925290 () Bool)

(assert (=> b!2143925 (=> (not res!925290) (not e!1369902))))

(declare-fun valid!2183 (CacheFurthestNullable!822) Bool)

(assert (=> b!2143925 (= res!925290 (valid!2183 cacheFurthestNullable!114))))

(declare-fun b!2143926 () Bool)

(declare-fun e!1369876 () Bool)

(assert (=> b!2143926 (= e!1369892 (and e!1369876 (inv!32128 (totalInput!3155 cacheFurthestNullable!114)) e!1369905))))

(declare-fun b!2143927 () Bool)

(declare-fun e!1369887 () Bool)

(declare-fun tp!664147 () Bool)

(assert (=> b!2143927 (= e!1369887 (and tp!664147 mapRes!13298))))

(declare-fun condMapEmpty!13299 () Bool)

(declare-fun mapDefault!13297 () List!24499)

(assert (=> b!2143927 (= condMapEmpty!13299 (= (arr!4209 (_values!3076 (v!29002 (underlying!5787 (v!29003 (underlying!5788 (cache!3091 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24499)) mapDefault!13297)))))

(declare-fun b!2143928 () Bool)

(assert (=> b!2143928 (= e!1369908 e!1369896)))

(declare-fun b!2143929 () Bool)

(declare-fun lostCauseZipper!124 ((InoxSet Context!2722)) Bool)

(assert (=> b!2143929 (= e!1369888 (not (lostCauseZipper!124 z!3839)))))

(assert (=> b!2143930 (= e!1369876 (and e!1369879 tp!664143))))

(declare-fun setIsEmpty!16603 () Bool)

(assert (=> setIsEmpty!16603 setRes!16603))

(declare-fun mapNonEmpty!13298 () Bool)

(declare-fun tp!664128 () Bool)

(declare-fun tp!664127 () Bool)

(assert (=> mapNonEmpty!13298 (= mapRes!13299 (and tp!664128 tp!664127))))

(declare-fun mapValue!13298 () List!24500)

(declare-fun mapRest!13299 () (Array (_ BitVec 32) List!24500))

(declare-fun mapKey!13299 () (_ BitVec 32))

(assert (=> mapNonEmpty!13298 (= (arr!4210 (_values!3077 (v!29004 (underlying!5789 (v!29005 (underlying!5790 (cache!3092 cacheDown!1098))))))) (store mapRest!13299 mapKey!13299 mapValue!13298))))

(declare-fun mapIsEmpty!13297 () Bool)

(assert (=> mapIsEmpty!13297 mapRes!13297))

(declare-fun b!2143931 () Bool)

(assert (=> b!2143931 (= e!1369873 e!1369872)))

(declare-fun tp!664129 () Bool)

(declare-fun setNonEmpty!16603 () Bool)

(declare-fun setElem!16603 () Context!2722)

(assert (=> setNonEmpty!16603 (= setRes!16602 (and tp!664129 (inv!32130 setElem!16603) e!1369882))))

(declare-fun setRest!16603 () (InoxSet Context!2722))

(assert (=> setNonEmpty!16603 (= z!3839 ((_ map or) (store ((as const (Array Context!2722 Bool)) false) setElem!16603 true) setRest!16603))))

(declare-fun mapNonEmpty!13299 () Bool)

(declare-fun tp!664131 () Bool)

(declare-fun tp!664146 () Bool)

(assert (=> mapNonEmpty!13299 (= mapRes!13297 (and tp!664131 tp!664146))))

(declare-fun mapRest!13298 () (Array (_ BitVec 32) List!24496))

(declare-fun mapKey!13297 () (_ BitVec 32))

(declare-fun mapValue!13299 () List!24496)

(assert (=> mapNonEmpty!13299 (= (arr!4208 (_values!3075 (v!29000 (underlying!5785 (v!29001 (underlying!5786 (cache!3090 cacheUp!979))))))) (store mapRest!13298 mapKey!13297 mapValue!13299))))

(declare-fun b!2143932 () Bool)

(declare-fun res!925287 () Bool)

(assert (=> b!2143932 (=> (not res!925287) (not e!1369899))))

(assert (=> b!2143932 (= res!925287 (forall!4985 stack!8 lambda!80360))))

(declare-fun b!2143933 () Bool)

(assert (=> b!2143933 (= e!1369895 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2143934 () Bool)

(assert (=> b!2143934 (= e!1369889 e!1369871)))

(declare-fun b!2143935 () Bool)

(declare-fun tp!664139 () Bool)

(assert (=> b!2143935 (= e!1369897 tp!664139)))

(declare-fun mapIsEmpty!13298 () Bool)

(assert (=> mapIsEmpty!13298 mapRes!13299))

(declare-fun e!1369878 () Bool)

(declare-fun tp!664135 () Bool)

(declare-fun tp!664144 () Bool)

(declare-fun array_inv!3015 (array!9427) Bool)

(assert (=> b!2143936 (= e!1369878 (and tp!664145 tp!664144 tp!664135 (array_inv!3012 (_keys!3093 (v!29002 (underlying!5787 (v!29003 (underlying!5788 (cache!3091 cacheFurthestNullable!114))))))) (array_inv!3015 (_values!3076 (v!29002 (underlying!5787 (v!29003 (underlying!5788 (cache!3091 cacheFurthestNullable!114))))))) e!1369887))))

(declare-fun b!2143937 () Bool)

(assert (=> b!2143937 (= e!1369881 e!1369878)))

(declare-fun mapIsEmpty!13299 () Bool)

(assert (=> mapIsEmpty!13299 mapRes!13298))

(declare-fun b!2143938 () Bool)

(declare-fun tp!664130 () Bool)

(assert (=> b!2143938 (= e!1369875 (and (inv!32124 (c!340667 totalInput!851)) tp!664130))))

(assert (= (and start!208060 res!925285) b!2143900))

(assert (= (and b!2143900 res!925296) b!2143922))

(assert (= (and b!2143922 (not res!925284)) b!2143933))

(assert (= (and b!2143922 res!925289) b!2143920))

(assert (= (and b!2143920 res!925293) b!2143904))

(assert (= (and b!2143904 res!925288) b!2143925))

(assert (= (and b!2143925 res!925290) b!2143916))

(assert (= (and b!2143916 res!925291) b!2143897))

(assert (= (and b!2143897 res!925281) b!2143903))

(assert (= (and b!2143903 res!925283) b!2143906))

(assert (= (and b!2143906 (not res!925295)) b!2143902))

(assert (= (and b!2143902 res!925286) b!2143929))

(assert (= (and b!2143902 (not res!925282)) b!2143898))

(assert (= (and b!2143898 (not res!925294)) b!2143901))

(assert (= (and b!2143901 res!925292) b!2143932))

(assert (= (and b!2143932 res!925287) b!2143924))

(assert (= (and b!2143927 condMapEmpty!13299) mapIsEmpty!13299))

(assert (= (and b!2143927 (not condMapEmpty!13299)) mapNonEmpty!13297))

(assert (= b!2143936 b!2143927))

(assert (= b!2143937 b!2143936))

(assert (= b!2143923 b!2143937))

(assert (= (and b!2143912 ((_ is LongMap!2796) (v!29003 (underlying!5788 (cache!3091 cacheFurthestNullable!114))))) b!2143923))

(assert (= b!2143930 b!2143912))

(assert (= (and b!2143926 ((_ is HashMap!2710) (cache!3091 cacheFurthestNullable!114))) b!2143930))

(assert (= b!2143926 b!2143899))

(assert (= start!208060 b!2143926))

(assert (= (and b!2143921 condMapEmpty!13298) mapIsEmpty!13298))

(assert (= (and b!2143921 (not condMapEmpty!13298)) mapNonEmpty!13298))

(assert (= b!2143914 b!2143921))

(assert (= b!2143928 b!2143914))

(assert (= b!2143911 b!2143928))

(assert (= (and b!2143905 ((_ is LongMap!2797) (v!29005 (underlying!5790 (cache!3092 cacheDown!1098))))) b!2143911))

(assert (= b!2143908 b!2143905))

(assert (= (and b!2143934 ((_ is HashMap!2711) (cache!3092 cacheDown!1098))) b!2143908))

(assert (= start!208060 b!2143934))

(assert (= (and b!2143896 condMapEmpty!13297) mapIsEmpty!13297))

(assert (= (and b!2143896 (not condMapEmpty!13297)) mapNonEmpty!13299))

(assert (= b!2143895 b!2143896))

(assert (= b!2143915 b!2143895))

(assert (= b!2143931 b!2143915))

(assert (= (and b!2143918 ((_ is LongMap!2795) (v!29001 (underlying!5786 (cache!3090 cacheUp!979))))) b!2143931))

(assert (= b!2143917 b!2143918))

(assert (= (and b!2143907 ((_ is HashMap!2709) (cache!3090 cacheUp!979))) b!2143917))

(assert (= start!208060 b!2143907))

(assert (= (and start!208060 condSetEmpty!16603) setIsEmpty!16602))

(assert (= (and start!208060 (not condSetEmpty!16603)) setNonEmpty!16603))

(assert (= setNonEmpty!16603 b!2143919))

(assert (= start!208060 b!2143938))

(assert (= (and b!2143909 condSetEmpty!16602) setIsEmpty!16603))

(assert (= (and b!2143909 (not condSetEmpty!16602)) setNonEmpty!16602))

(assert (= setNonEmpty!16602 b!2143935))

(assert (= b!2143909 b!2143910))

(assert (= b!2143913 b!2143909))

(assert (= (and start!208060 ((_ is Cons!24414) stack!8)) b!2143913))

(declare-fun m!2588503 () Bool)

(assert (=> mapNonEmpty!13297 m!2588503))

(declare-fun m!2588505 () Bool)

(assert (=> b!2143895 m!2588505))

(declare-fun m!2588507 () Bool)

(assert (=> b!2143895 m!2588507))

(declare-fun m!2588509 () Bool)

(assert (=> b!2143901 m!2588509))

(declare-fun m!2588511 () Bool)

(assert (=> b!2143901 m!2588511))

(declare-fun m!2588513 () Bool)

(assert (=> b!2143901 m!2588513))

(declare-fun m!2588515 () Bool)

(assert (=> b!2143901 m!2588515))

(declare-fun m!2588517 () Bool)

(assert (=> b!2143938 m!2588517))

(declare-fun m!2588519 () Bool)

(assert (=> b!2143925 m!2588519))

(declare-fun m!2588521 () Bool)

(assert (=> mapNonEmpty!13298 m!2588521))

(declare-fun m!2588523 () Bool)

(assert (=> start!208060 m!2588523))

(declare-fun m!2588525 () Bool)

(assert (=> start!208060 m!2588525))

(declare-fun m!2588527 () Bool)

(assert (=> start!208060 m!2588527))

(declare-fun m!2588529 () Bool)

(assert (=> start!208060 m!2588529))

(declare-fun m!2588531 () Bool)

(assert (=> b!2143899 m!2588531))

(declare-fun m!2588533 () Bool)

(assert (=> b!2143926 m!2588533))

(declare-fun m!2588535 () Bool)

(assert (=> setNonEmpty!16602 m!2588535))

(assert (=> b!2143932 m!2588511))

(declare-fun m!2588537 () Bool)

(assert (=> b!2143903 m!2588537))

(declare-fun m!2588539 () Bool)

(assert (=> b!2143920 m!2588539))

(declare-fun m!2588541 () Bool)

(assert (=> b!2143922 m!2588541))

(assert (=> b!2143897 m!2588515))

(declare-fun m!2588543 () Bool)

(assert (=> b!2143897 m!2588543))

(declare-fun m!2588545 () Bool)

(assert (=> b!2143906 m!2588545))

(assert (=> b!2143906 m!2588515))

(declare-fun m!2588547 () Bool)

(assert (=> mapNonEmpty!13299 m!2588547))

(declare-fun m!2588549 () Bool)

(assert (=> b!2143904 m!2588549))

(declare-fun m!2588551 () Bool)

(assert (=> b!2143914 m!2588551))

(declare-fun m!2588553 () Bool)

(assert (=> b!2143914 m!2588553))

(declare-fun m!2588555 () Bool)

(assert (=> b!2143900 m!2588555))

(declare-fun m!2588557 () Bool)

(assert (=> b!2143910 m!2588557))

(declare-fun m!2588559 () Bool)

(assert (=> b!2143929 m!2588559))

(assert (=> b!2143924 m!2588537))

(declare-fun m!2588561 () Bool)

(assert (=> setNonEmpty!16603 m!2588561))

(declare-fun m!2588563 () Bool)

(assert (=> b!2143936 m!2588563))

(declare-fun m!2588565 () Bool)

(assert (=> b!2143936 m!2588565))

(declare-fun m!2588567 () Bool)

(assert (=> b!2143913 m!2588567))

(declare-fun m!2588569 () Bool)

(assert (=> b!2143909 m!2588569))

(check-sat (not b_next!63857) (not b_next!63859) (not b!2143903) b_and!172733 b_and!172729 (not b!2143904) (not b!2143920) (not mapNonEmpty!13298) (not b!2143899) b_and!172737 (not b!2143921) (not b!2143914) (not b_next!63863) (not b!2143901) (not setNonEmpty!16603) b_and!172739 (not b!2143936) (not setNonEmpty!16602) (not b!2143935) (not b!2143919) (not b!2143925) (not b!2143900) (not b!2143906) (not b!2143932) (not b!2143924) (not start!208060) (not b!2143938) (not b_next!63861) b_and!172731 (not b_next!63853) (not b!2143926) (not mapNonEmpty!13299) (not b_next!63855) (not b!2143897) (not b!2143909) (not b!2143913) (not b!2143896) (not b!2143929) b_and!172735 (not b!2143927) (not mapNonEmpty!13297) (not b!2143895) (not b!2143922) (not b!2143910))
(check-sat (not b_next!63863) b_and!172739 (not b_next!63857) (not b_next!63859) b_and!172733 b_and!172729 (not b_next!63861) (not b_next!63855) b_and!172737 b_and!172735 b_and!172731 (not b_next!63853))
