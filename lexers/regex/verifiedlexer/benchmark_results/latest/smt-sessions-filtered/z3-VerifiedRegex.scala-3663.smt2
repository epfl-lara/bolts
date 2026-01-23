; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208064 () Bool)

(assert start!208064)

(declare-fun b!2144182 () Bool)

(declare-fun b_free!63173 () Bool)

(declare-fun b_next!63877 () Bool)

(assert (=> b!2144182 (= b_free!63173 (not b_next!63877))))

(declare-fun tp!664322 () Bool)

(declare-fun b_and!172753 () Bool)

(assert (=> b!2144182 (= tp!664322 b_and!172753)))

(declare-fun b!2144189 () Bool)

(declare-fun b_free!63175 () Bool)

(declare-fun b_next!63879 () Bool)

(assert (=> b!2144189 (= b_free!63175 (not b_next!63879))))

(declare-fun tp!664306 () Bool)

(declare-fun b_and!172755 () Bool)

(assert (=> b!2144189 (= tp!664306 b_and!172755)))

(declare-fun b!2144183 () Bool)

(declare-fun b_free!63177 () Bool)

(declare-fun b_next!63881 () Bool)

(assert (=> b!2144183 (= b_free!63177 (not b_next!63881))))

(declare-fun tp!664311 () Bool)

(declare-fun b_and!172757 () Bool)

(assert (=> b!2144183 (= tp!664311 b_and!172757)))

(declare-fun b!2144157 () Bool)

(declare-fun b_free!63179 () Bool)

(declare-fun b_next!63883 () Bool)

(assert (=> b!2144157 (= b_free!63179 (not b_next!63883))))

(declare-fun tp!664325 () Bool)

(declare-fun b_and!172759 () Bool)

(assert (=> b!2144157 (= tp!664325 b_and!172759)))

(declare-fun b!2144176 () Bool)

(declare-fun b_free!63181 () Bool)

(declare-fun b_next!63885 () Bool)

(assert (=> b!2144176 (= b_free!63181 (not b_next!63885))))

(declare-fun tp!664307 () Bool)

(declare-fun b_and!172761 () Bool)

(assert (=> b!2144176 (= tp!664307 b_and!172761)))

(declare-fun b!2144163 () Bool)

(declare-fun b_free!63183 () Bool)

(declare-fun b_next!63887 () Bool)

(assert (=> b!2144163 (= b_free!63183 (not b_next!63887))))

(declare-fun tp!664324 () Bool)

(declare-fun b_and!172763 () Bool)

(assert (=> b!2144163 (= tp!664324 b_and!172763)))

(declare-fun b!2144164 () Bool)

(assert (=> b!2144164 true))

(declare-fun bs!445310 () Bool)

(declare-fun b!2144174 () Bool)

(assert (= bs!445310 (and b!2144174 b!2144164)))

(declare-fun lambda!80376 () Int)

(declare-fun lambda!80375 () Int)

(assert (=> bs!445310 (not (= lambda!80376 lambda!80375))))

(assert (=> b!2144174 true))

(declare-fun mapIsEmpty!13315 () Bool)

(declare-fun mapRes!13316 () Bool)

(assert (=> mapIsEmpty!13315 mapRes!13316))

(declare-fun b!2144152 () Bool)

(declare-fun e!1370100 () Bool)

(declare-fun e!1370103 () Bool)

(assert (=> b!2144152 (= e!1370100 e!1370103)))

(declare-fun b!2144153 () Bool)

(declare-fun e!1370108 () Bool)

(declare-fun e!1370091 () Bool)

(assert (=> b!2144153 (= e!1370108 e!1370091)))

(declare-fun res!925372 () Bool)

(assert (=> b!2144153 (=> (not res!925372) (not e!1370091))))

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!798570 () Int)

(declare-fun from!1043 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2144153 (= res!925372 (and (= totalInputSize!296 lt!798570) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-datatypes ((C!11732 0))(
  ( (C!11733 (val!6852 Int)) )
))
(declare-datatypes ((List!24506 0))(
  ( (Nil!24422) (Cons!24422 (h!29823 C!11732) (t!197036 List!24506)) )
))
(declare-datatypes ((IArray!15865 0))(
  ( (IArray!15866 (innerList!7990 List!24506)) )
))
(declare-datatypes ((Conc!7930 0))(
  ( (Node!7930 (left!18771 Conc!7930) (right!19101 Conc!7930) (csize!16090 Int) (cheight!8141 Int)) (Leaf!11594 (xs!10872 IArray!15865) (csize!16091 Int)) (Empty!7930) )
))
(declare-datatypes ((BalanceConc!15622 0))(
  ( (BalanceConc!15623 (c!340670 Conc!7930)) )
))
(declare-fun totalInput!851 () BalanceConc!15622)

(declare-fun size!19115 (BalanceConc!15622) Int)

(assert (=> b!2144153 (= lt!798570 (size!19115 totalInput!851))))

(declare-fun b!2144154 () Bool)

(declare-fun e!1370110 () Bool)

(declare-fun e!1370095 () Bool)

(assert (=> b!2144154 (= e!1370110 e!1370095)))

(declare-fun mapNonEmpty!13315 () Bool)

(declare-fun mapRes!13315 () Bool)

(declare-fun tp!664301 () Bool)

(declare-fun tp!664328 () Bool)

(assert (=> mapNonEmpty!13315 (= mapRes!13315 (and tp!664301 tp!664328))))

(declare-datatypes ((Regex!5793 0))(
  ( (ElementMatch!5793 (c!340671 C!11732)) (Concat!10095 (regOne!12098 Regex!5793) (regTwo!12098 Regex!5793)) (EmptyExpr!5793) (Star!5793 (reg!6122 Regex!5793)) (EmptyLang!5793) (Union!5793 (regOne!12099 Regex!5793) (regTwo!12099 Regex!5793)) )
))
(declare-datatypes ((List!24507 0))(
  ( (Nil!24423) (Cons!24423 (h!29824 Regex!5793) (t!197037 List!24507)) )
))
(declare-datatypes ((Context!2726 0))(
  ( (Context!2727 (exprs!1863 List!24507)) )
))
(declare-datatypes ((tuple3!3486 0))(
  ( (tuple3!3487 (_1!14352 Regex!5793) (_2!14352 Context!2726) (_3!2213 C!11732)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!24278 0))(
  ( (tuple2!24279 (_1!14353 tuple3!3486) (_2!14353 (InoxSet Context!2726))) )
))
(declare-datatypes ((List!24508 0))(
  ( (Nil!24424) (Cons!24424 (h!29825 tuple2!24278) (t!197038 List!24508)) )
))
(declare-datatypes ((Hashable!2715 0))(
  ( (HashableExt!2714 (__x!16579 Int)) )
))
(declare-datatypes ((array!9439 0))(
  ( (array!9440 (arr!4215 (Array (_ BitVec 32) (_ BitVec 64))) (size!19116 (_ BitVec 32))) )
))
(declare-datatypes ((array!9441 0))(
  ( (array!9442 (arr!4216 (Array (_ BitVec 32) List!24508)) (size!19117 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5602 0))(
  ( (LongMapFixedSize!5603 (defaultEntry!3166 Int) (mask!7013 (_ BitVec 32)) (extraKeys!3049 (_ BitVec 32)) (zeroValue!3059 List!24508) (minValue!3059 List!24508) (_size!5653 (_ BitVec 32)) (_keys!3098 array!9439) (_values!3081 array!9441) (_vacant!2862 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11029 0))(
  ( (Cell!11030 (v!29013 LongMapFixedSize!5602)) )
))
(declare-datatypes ((MutLongMap!2801 0))(
  ( (LongMap!2801 (underlying!5797 Cell!11029)) (MutLongMapExt!2800 (__x!16580 Int)) )
))
(declare-datatypes ((Cell!11031 0))(
  ( (Cell!11032 (v!29014 MutLongMap!2801)) )
))
(declare-datatypes ((MutableMap!2715 0))(
  ( (MutableMapExt!2714 (__x!16581 Int)) (HashMap!2715 (underlying!5798 Cell!11031) (hashF!4638 Hashable!2715) (_size!5654 (_ BitVec 32)) (defaultValue!2877 Int)) )
))
(declare-datatypes ((CacheDown!1860 0))(
  ( (CacheDown!1861 (cache!3096 MutableMap!2715)) )
))
(declare-fun cacheDown!1098 () CacheDown!1860)

(declare-fun mapRest!13315 () (Array (_ BitVec 32) List!24508))

(declare-fun mapValue!13316 () List!24508)

(declare-fun mapKey!13317 () (_ BitVec 32))

(assert (=> mapNonEmpty!13315 (= (arr!4216 (_values!3081 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098))))))) (store mapRest!13315 mapKey!13317 mapValue!13316))))

(declare-fun b!2144155 () Bool)

(declare-fun res!925364 () Bool)

(assert (=> b!2144155 (=> (not res!925364) (not e!1370091))))

(declare-fun valid!2184 (CacheDown!1860) Bool)

(assert (=> b!2144155 (= res!925364 (valid!2184 cacheDown!1098))))

(declare-fun mapIsEmpty!13316 () Bool)

(assert (=> mapIsEmpty!13316 mapRes!13315))

(declare-fun b!2144156 () Bool)

(declare-fun e!1370113 () Bool)

(declare-fun e!1370114 () Bool)

(assert (=> b!2144156 (= e!1370113 e!1370114)))

(declare-fun e!1370097 () Bool)

(declare-datatypes ((tuple2!24280 0))(
  ( (tuple2!24281 (_1!14354 Context!2726) (_2!14354 C!11732)) )
))
(declare-datatypes ((tuple2!24282 0))(
  ( (tuple2!24283 (_1!14355 tuple2!24280) (_2!14355 (InoxSet Context!2726))) )
))
(declare-datatypes ((List!24509 0))(
  ( (Nil!24425) (Cons!24425 (h!29826 tuple2!24282) (t!197039 List!24509)) )
))
(declare-datatypes ((array!9443 0))(
  ( (array!9444 (arr!4217 (Array (_ BitVec 32) List!24509)) (size!19118 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5604 0))(
  ( (LongMapFixedSize!5605 (defaultEntry!3167 Int) (mask!7014 (_ BitVec 32)) (extraKeys!3050 (_ BitVec 32)) (zeroValue!3060 List!24509) (minValue!3060 List!24509) (_size!5655 (_ BitVec 32)) (_keys!3099 array!9439) (_values!3082 array!9443) (_vacant!2863 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11033 0))(
  ( (Cell!11034 (v!29015 LongMapFixedSize!5604)) )
))
(declare-datatypes ((MutLongMap!2802 0))(
  ( (LongMap!2802 (underlying!5799 Cell!11033)) (MutLongMapExt!2801 (__x!16582 Int)) )
))
(declare-datatypes ((Cell!11035 0))(
  ( (Cell!11036 (v!29016 MutLongMap!2802)) )
))
(declare-datatypes ((Hashable!2716 0))(
  ( (HashableExt!2715 (__x!16583 Int)) )
))
(declare-datatypes ((MutableMap!2716 0))(
  ( (MutableMapExt!2715 (__x!16584 Int)) (HashMap!2716 (underlying!5800 Cell!11035) (hashF!4639 Hashable!2716) (_size!5656 (_ BitVec 32)) (defaultValue!2878 Int)) )
))
(declare-datatypes ((CacheUp!1868 0))(
  ( (CacheUp!1869 (cache!3097 MutableMap!2716)) )
))
(declare-fun cacheUp!979 () CacheUp!1868)

(declare-fun tp!664317 () Bool)

(declare-fun tp!664318 () Bool)

(declare-fun array_inv!3016 (array!9439) Bool)

(declare-fun array_inv!3017 (array!9443) Bool)

(assert (=> b!2144157 (= e!1370095 (and tp!664325 tp!664317 tp!664318 (array_inv!3016 (_keys!3099 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979))))))) (array_inv!3017 (_values!3082 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979))))))) e!1370097))))

(declare-fun setRes!16615 () Bool)

(declare-fun e!1370105 () Bool)

(declare-fun b!2144158 () Bool)

(declare-datatypes ((StackFrame!256 0))(
  ( (StackFrame!257 (z!5892 (InoxSet Context!2726)) (from!2759 Int) (lastNullablePos!446 Int) (res!925376 Int) (totalInput!3157 BalanceConc!15622)) )
))
(declare-datatypes ((List!24510 0))(
  ( (Nil!24426) (Cons!24426 (h!29827 StackFrame!256) (t!197040 List!24510)) )
))
(declare-fun stack!8 () List!24510)

(declare-fun e!1370107 () Bool)

(declare-fun inv!32136 (BalanceConc!15622) Bool)

(assert (=> b!2144158 (= e!1370107 (and setRes!16615 (inv!32136 (totalInput!3157 (h!29827 stack!8))) e!1370105))))

(declare-fun condSetEmpty!16614 () Bool)

(assert (=> b!2144158 (= condSetEmpty!16614 (= (z!5892 (h!29827 stack!8)) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun b!2144159 () Bool)

(declare-fun e!1370099 () Bool)

(declare-datatypes ((tuple3!3488 0))(
  ( (tuple3!3489 (_1!14356 (InoxSet Context!2726)) (_2!14356 Int) (_3!2214 Int)) )
))
(declare-datatypes ((tuple2!24284 0))(
  ( (tuple2!24285 (_1!14357 tuple3!3488) (_2!14357 Int)) )
))
(declare-datatypes ((List!24511 0))(
  ( (Nil!24427) (Cons!24427 (h!29828 tuple2!24284) (t!197041 List!24511)) )
))
(declare-datatypes ((array!9445 0))(
  ( (array!9446 (arr!4218 (Array (_ BitVec 32) List!24511)) (size!19119 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5606 0))(
  ( (LongMapFixedSize!5607 (defaultEntry!3168 Int) (mask!7015 (_ BitVec 32)) (extraKeys!3051 (_ BitVec 32)) (zeroValue!3061 List!24511) (minValue!3061 List!24511) (_size!5657 (_ BitVec 32)) (_keys!3100 array!9439) (_values!3083 array!9445) (_vacant!2864 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11037 0))(
  ( (Cell!11038 (v!29017 LongMapFixedSize!5606)) )
))
(declare-datatypes ((MutLongMap!2803 0))(
  ( (LongMap!2803 (underlying!5801 Cell!11037)) (MutLongMapExt!2802 (__x!16585 Int)) )
))
(declare-datatypes ((Cell!11039 0))(
  ( (Cell!11040 (v!29018 MutLongMap!2803)) )
))
(declare-datatypes ((Hashable!2717 0))(
  ( (HashableExt!2716 (__x!16586 Int)) )
))
(declare-datatypes ((MutableMap!2717 0))(
  ( (MutableMapExt!2716 (__x!16587 Int)) (HashMap!2717 (underlying!5802 Cell!11039) (hashF!4640 Hashable!2717) (_size!5658 (_ BitVec 32)) (defaultValue!2879 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!826 0))(
  ( (CacheFurthestNullable!827 (cache!3098 MutableMap!2717) (totalInput!3158 BalanceConc!15622)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!826)

(declare-fun tp!664320 () Bool)

(declare-fun inv!32137 (Conc!7930) Bool)

(assert (=> b!2144159 (= e!1370099 (and (inv!32137 (c!340670 (totalInput!3158 cacheFurthestNullable!114))) tp!664320))))

(declare-fun b!2144160 () Bool)

(declare-fun e!1370106 () Bool)

(assert (=> b!2144160 (= e!1370106 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2144161 () Bool)

(declare-fun e!1370120 () Bool)

(declare-fun lt!798568 () MutLongMap!2801)

(get-info :version)

(assert (=> b!2144161 (= e!1370120 (and e!1370113 ((_ is LongMap!2801) lt!798568)))))

(assert (=> b!2144161 (= lt!798568 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098))))))

(declare-fun b!2144162 () Bool)

(declare-fun res!925371 () Bool)

(declare-fun e!1370101 () Bool)

(assert (=> b!2144162 (=> res!925371 e!1370101)))

(declare-fun z!3839 () (InoxSet Context!2726))

(declare-fun lostCauseZipper!125 ((InoxSet Context!2726)) Bool)

(assert (=> b!2144162 (= res!925371 (lostCauseZipper!125 z!3839))))

(declare-fun e!1370092 () Bool)

(declare-fun e!1370124 () Bool)

(declare-fun tp!664303 () Bool)

(declare-fun tp!664305 () Bool)

(declare-fun array_inv!3018 (array!9445) Bool)

(assert (=> b!2144163 (= e!1370124 (and tp!664324 tp!664305 tp!664303 (array_inv!3016 (_keys!3100 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))))) (array_inv!3018 (_values!3083 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))))) e!1370092))))

(declare-fun e!1370098 () Bool)

(assert (=> b!2144164 (= e!1370091 e!1370098)))

(declare-fun res!925373 () Bool)

(assert (=> b!2144164 (=> (not res!925373) (not e!1370098))))

(declare-fun forall!4986 (List!24510 Int) Bool)

(assert (=> b!2144164 (= res!925373 (forall!4986 stack!8 lambda!80375))))

(declare-fun lt!798571 () Int)

(declare-fun furthestNullablePosition!88 ((InoxSet Context!2726) Int BalanceConc!15622 Int Int) Int)

(assert (=> b!2144164 (= lt!798571 (furthestNullablePosition!88 z!3839 from!1043 totalInput!851 lt!798570 lastNullablePos!123))))

(declare-fun setIsEmpty!16614 () Bool)

(declare-fun setRes!16614 () Bool)

(assert (=> setIsEmpty!16614 setRes!16614))

(declare-fun b!2144165 () Bool)

(declare-fun res!925368 () Bool)

(assert (=> b!2144165 (=> (not res!925368) (not e!1370091))))

(assert (=> b!2144165 (= res!925368 e!1370106)))

(declare-fun res!925365 () Bool)

(assert (=> b!2144165 (=> res!925365 e!1370106)))

(declare-fun nullableZipper!150 ((InoxSet Context!2726)) Bool)

(assert (=> b!2144165 (= res!925365 (not (nullableZipper!150 z!3839)))))

(declare-fun b!2144166 () Bool)

(declare-fun e!1370109 () Bool)

(declare-fun e!1370093 () Bool)

(assert (=> b!2144166 (= e!1370109 (and e!1370093 (inv!32136 (totalInput!3158 cacheFurthestNullable!114)) e!1370099))))

(declare-fun b!2144167 () Bool)

(declare-fun e!1370090 () Bool)

(declare-fun e!1370121 () Bool)

(declare-fun lt!798572 () MutLongMap!2802)

(assert (=> b!2144167 (= e!1370090 (and e!1370121 ((_ is LongMap!2802) lt!798572)))))

(assert (=> b!2144167 (= lt!798572 (v!29016 (underlying!5800 (cache!3097 cacheUp!979))))))

(declare-fun b!2144168 () Bool)

(declare-fun res!925375 () Bool)

(assert (=> b!2144168 (=> (not res!925375) (not e!1370091))))

(assert (=> b!2144168 (= res!925375 (= (totalInput!3158 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2144169 () Bool)

(declare-fun tp!664329 () Bool)

(assert (=> b!2144169 (= e!1370105 (and (inv!32137 (c!340670 (totalInput!3157 (h!29827 stack!8)))) tp!664329))))

(declare-fun b!2144170 () Bool)

(declare-fun e!1370104 () Bool)

(declare-fun lt!798569 () MutLongMap!2803)

(assert (=> b!2144170 (= e!1370104 (and e!1370100 ((_ is LongMap!2803) lt!798569)))))

(assert (=> b!2144170 (= lt!798569 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))))

(declare-fun b!2144171 () Bool)

(declare-fun res!925369 () Bool)

(assert (=> b!2144171 (=> (not res!925369) (not e!1370091))))

(declare-fun valid!2185 (CacheFurthestNullable!826) Bool)

(assert (=> b!2144171 (= res!925369 (valid!2185 cacheFurthestNullable!114))))

(declare-fun b!2144172 () Bool)

(assert (=> b!2144172 (= e!1370103 e!1370124)))

(declare-fun b!2144173 () Bool)

(declare-fun inv!32138 (StackFrame!256) Bool)

(assert (=> b!2144173 (= e!1370101 (inv!32138 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)))))

(declare-fun lt!798573 () Bool)

(declare-datatypes ((tuple3!3490 0))(
  ( (tuple3!3491 (_1!14358 (InoxSet Context!2726)) (_2!14358 CacheUp!1868) (_3!2215 CacheDown!1860)) )
))
(declare-fun derivationStepZipperMem!59 ((InoxSet Context!2726) C!11732 CacheUp!1868 CacheDown!1860) tuple3!3490)

(declare-fun apply!5972 (BalanceConc!15622 Int) C!11732)

(assert (=> b!2144173 (= lt!798573 (nullableZipper!150 (_1!14358 (derivationStepZipperMem!59 z!3839 (apply!5972 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))))

(declare-fun res!925367 () Bool)

(assert (=> b!2144174 (=> (not res!925367) (not e!1370098))))

(assert (=> b!2144174 (= res!925367 (forall!4986 stack!8 lambda!80376))))

(declare-fun e!1370123 () Bool)

(declare-fun setElem!16615 () Context!2726)

(declare-fun tp!664323 () Bool)

(declare-fun setNonEmpty!16614 () Bool)

(declare-fun inv!32139 (Context!2726) Bool)

(assert (=> setNonEmpty!16614 (= setRes!16615 (and tp!664323 (inv!32139 setElem!16615) e!1370123))))

(declare-fun setRest!16614 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16614 (= (z!5892 (h!29827 stack!8)) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16615 true) setRest!16614))))

(declare-fun tp!664321 () Bool)

(declare-fun setElem!16614 () Context!2726)

(declare-fun setNonEmpty!16615 () Bool)

(declare-fun e!1370102 () Bool)

(assert (=> setNonEmpty!16615 (= setRes!16614 (and tp!664321 (inv!32139 setElem!16614) e!1370102))))

(declare-fun setRest!16615 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16615 (= z!3839 ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16614 true) setRest!16615))))

(declare-fun b!2144175 () Bool)

(declare-fun e!1370094 () Bool)

(declare-fun tp!664316 () Bool)

(assert (=> b!2144175 (= e!1370094 (and (inv!32137 (c!340670 totalInput!851)) tp!664316))))

(assert (=> b!2144176 (= e!1370093 (and e!1370104 tp!664307))))

(declare-fun mapIsEmpty!13317 () Bool)

(declare-fun mapRes!13317 () Bool)

(assert (=> mapIsEmpty!13317 mapRes!13317))

(declare-fun b!2144177 () Bool)

(declare-fun tp!664304 () Bool)

(assert (=> b!2144177 (= e!1370123 tp!664304)))

(declare-fun b!2144178 () Bool)

(declare-fun tp!664319 () Bool)

(assert (=> b!2144178 (= e!1370092 (and tp!664319 mapRes!13317))))

(declare-fun condMapEmpty!13316 () Bool)

(declare-fun mapDefault!13315 () List!24511)

(assert (=> b!2144178 (= condMapEmpty!13316 (= (arr!4218 (_values!3083 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24511)) mapDefault!13315)))))

(declare-fun b!2144179 () Bool)

(assert (=> b!2144179 (= e!1370121 e!1370110)))

(declare-fun tp!664326 () Bool)

(declare-fun e!1370119 () Bool)

(declare-fun b!2144180 () Bool)

(assert (=> b!2144180 (= e!1370119 (and (inv!32138 (h!29827 stack!8)) e!1370107 tp!664326))))

(declare-fun b!2144181 () Bool)

(assert (=> b!2144181 (= e!1370098 (not e!1370101))))

(declare-fun res!925370 () Bool)

(assert (=> b!2144181 (=> res!925370 e!1370101)))

(declare-datatypes ((Option!4947 0))(
  ( (None!4946) (Some!4946 (v!29019 Int)) )
))
(declare-fun get!7454 (CacheFurthestNullable!826 (InoxSet Context!2726) Int Int) Option!4947)

(assert (=> b!2144181 (= res!925370 ((_ is Some!4946) (get!7454 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2144181 (forall!4986 stack!8 lambda!80375)))

(declare-fun e!1370089 () Bool)

(assert (=> b!2144182 (= e!1370089 (and e!1370120 tp!664322))))

(declare-fun setIsEmpty!16615 () Bool)

(assert (=> setIsEmpty!16615 setRes!16615))

(declare-fun e!1370111 () Bool)

(assert (=> b!2144183 (= e!1370111 (and e!1370090 tp!664311))))

(declare-fun b!2144184 () Bool)

(declare-fun tp!664313 () Bool)

(assert (=> b!2144184 (= e!1370097 (and tp!664313 mapRes!13316))))

(declare-fun condMapEmpty!13315 () Bool)

(declare-fun mapDefault!13317 () List!24509)

(assert (=> b!2144184 (= condMapEmpty!13315 (= (arr!4217 (_values!3082 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24509)) mapDefault!13317)))))

(declare-fun b!2144185 () Bool)

(declare-fun e!1370122 () Bool)

(declare-fun tp!664310 () Bool)

(assert (=> b!2144185 (= e!1370122 (and tp!664310 mapRes!13315))))

(declare-fun condMapEmpty!13317 () Bool)

(declare-fun mapDefault!13316 () List!24508)

(assert (=> b!2144185 (= condMapEmpty!13317 (= (arr!4216 (_values!3081 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24508)) mapDefault!13316)))))

(declare-fun b!2144186 () Bool)

(declare-fun res!925366 () Bool)

(assert (=> b!2144186 (=> (not res!925366) (not e!1370091))))

(declare-fun valid!2186 (CacheUp!1868) Bool)

(assert (=> b!2144186 (= res!925366 (valid!2186 cacheUp!979))))

(declare-fun b!2144187 () Bool)

(declare-fun e!1370112 () Bool)

(assert (=> b!2144187 (= e!1370112 e!1370089)))

(declare-fun res!925363 () Bool)

(assert (=> start!208064 (=> (not res!925363) (not e!1370108))))

(assert (=> start!208064 (= res!925363 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!208064 e!1370108))

(declare-fun inv!32140 (CacheFurthestNullable!826) Bool)

(assert (=> start!208064 (and (inv!32140 cacheFurthestNullable!114) e!1370109)))

(assert (=> start!208064 true))

(declare-fun inv!32141 (CacheDown!1860) Bool)

(assert (=> start!208064 (and (inv!32141 cacheDown!1098) e!1370112)))

(declare-fun e!1370096 () Bool)

(declare-fun inv!32142 (CacheUp!1868) Bool)

(assert (=> start!208064 (and (inv!32142 cacheUp!979) e!1370096)))

(declare-fun condSetEmpty!16615 () Bool)

(assert (=> start!208064 (= condSetEmpty!16615 (= z!3839 ((as const (Array Context!2726 Bool)) false)))))

(assert (=> start!208064 setRes!16614))

(assert (=> start!208064 (and (inv!32136 totalInput!851) e!1370094)))

(assert (=> start!208064 e!1370119))

(declare-fun mapNonEmpty!13316 () Bool)

(declare-fun tp!664314 () Bool)

(declare-fun tp!664308 () Bool)

(assert (=> mapNonEmpty!13316 (= mapRes!13316 (and tp!664314 tp!664308))))

(declare-fun mapValue!13315 () List!24509)

(declare-fun mapRest!13317 () (Array (_ BitVec 32) List!24509))

(declare-fun mapKey!13316 () (_ BitVec 32))

(assert (=> mapNonEmpty!13316 (= (arr!4217 (_values!3082 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979))))))) (store mapRest!13317 mapKey!13316 mapValue!13315))))

(declare-fun b!2144188 () Bool)

(declare-fun res!925374 () Bool)

(assert (=> b!2144188 (=> res!925374 e!1370101)))

(assert (=> b!2144188 (= res!925374 (= from!1043 totalInputSize!296))))

(declare-fun tp!664312 () Bool)

(declare-fun tp!664302 () Bool)

(declare-fun e!1370115 () Bool)

(declare-fun array_inv!3019 (array!9441) Bool)

(assert (=> b!2144189 (= e!1370115 (and tp!664306 tp!664302 tp!664312 (array_inv!3016 (_keys!3098 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098))))))) (array_inv!3019 (_values!3081 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098))))))) e!1370122))))

(declare-fun b!2144190 () Bool)

(declare-fun tp!664327 () Bool)

(assert (=> b!2144190 (= e!1370102 tp!664327)))

(declare-fun b!2144191 () Bool)

(assert (=> b!2144191 (= e!1370096 e!1370111)))

(declare-fun b!2144192 () Bool)

(assert (=> b!2144192 (= e!1370114 e!1370115)))

(declare-fun mapNonEmpty!13317 () Bool)

(declare-fun tp!664315 () Bool)

(declare-fun tp!664309 () Bool)

(assert (=> mapNonEmpty!13317 (= mapRes!13317 (and tp!664315 tp!664309))))

(declare-fun mapKey!13315 () (_ BitVec 32))

(declare-fun mapValue!13317 () List!24511)

(declare-fun mapRest!13316 () (Array (_ BitVec 32) List!24511))

(assert (=> mapNonEmpty!13317 (= (arr!4218 (_values!3083 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))))) (store mapRest!13316 mapKey!13315 mapValue!13317))))

(assert (= (and start!208064 res!925363) b!2144153))

(assert (= (and b!2144153 res!925372) b!2144165))

(assert (= (and b!2144165 (not res!925365)) b!2144160))

(assert (= (and b!2144165 res!925368) b!2144186))

(assert (= (and b!2144186 res!925366) b!2144155))

(assert (= (and b!2144155 res!925364) b!2144171))

(assert (= (and b!2144171 res!925369) b!2144168))

(assert (= (and b!2144168 res!925375) b!2144164))

(assert (= (and b!2144164 res!925373) b!2144174))

(assert (= (and b!2144174 res!925367) b!2144181))

(assert (= (and b!2144181 (not res!925370)) b!2144188))

(assert (= (and b!2144188 (not res!925374)) b!2144162))

(assert (= (and b!2144162 (not res!925371)) b!2144173))

(assert (= (and b!2144178 condMapEmpty!13316) mapIsEmpty!13317))

(assert (= (and b!2144178 (not condMapEmpty!13316)) mapNonEmpty!13317))

(assert (= b!2144163 b!2144178))

(assert (= b!2144172 b!2144163))

(assert (= b!2144152 b!2144172))

(assert (= (and b!2144170 ((_ is LongMap!2803) (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))) b!2144152))

(assert (= b!2144176 b!2144170))

(assert (= (and b!2144166 ((_ is HashMap!2717) (cache!3098 cacheFurthestNullable!114))) b!2144176))

(assert (= b!2144166 b!2144159))

(assert (= start!208064 b!2144166))

(assert (= (and b!2144185 condMapEmpty!13317) mapIsEmpty!13316))

(assert (= (and b!2144185 (not condMapEmpty!13317)) mapNonEmpty!13315))

(assert (= b!2144189 b!2144185))

(assert (= b!2144192 b!2144189))

(assert (= b!2144156 b!2144192))

(assert (= (and b!2144161 ((_ is LongMap!2801) (v!29014 (underlying!5798 (cache!3096 cacheDown!1098))))) b!2144156))

(assert (= b!2144182 b!2144161))

(assert (= (and b!2144187 ((_ is HashMap!2715) (cache!3096 cacheDown!1098))) b!2144182))

(assert (= start!208064 b!2144187))

(assert (= (and b!2144184 condMapEmpty!13315) mapIsEmpty!13315))

(assert (= (and b!2144184 (not condMapEmpty!13315)) mapNonEmpty!13316))

(assert (= b!2144157 b!2144184))

(assert (= b!2144154 b!2144157))

(assert (= b!2144179 b!2144154))

(assert (= (and b!2144167 ((_ is LongMap!2802) (v!29016 (underlying!5800 (cache!3097 cacheUp!979))))) b!2144179))

(assert (= b!2144183 b!2144167))

(assert (= (and b!2144191 ((_ is HashMap!2716) (cache!3097 cacheUp!979))) b!2144183))

(assert (= start!208064 b!2144191))

(assert (= (and start!208064 condSetEmpty!16615) setIsEmpty!16614))

(assert (= (and start!208064 (not condSetEmpty!16615)) setNonEmpty!16615))

(assert (= setNonEmpty!16615 b!2144190))

(assert (= start!208064 b!2144175))

(assert (= (and b!2144158 condSetEmpty!16614) setIsEmpty!16615))

(assert (= (and b!2144158 (not condSetEmpty!16614)) setNonEmpty!16614))

(assert (= setNonEmpty!16614 b!2144177))

(assert (= b!2144158 b!2144169))

(assert (= b!2144180 b!2144158))

(assert (= (and start!208064 ((_ is Cons!24426) stack!8)) b!2144180))

(declare-fun m!2588641 () Bool)

(assert (=> start!208064 m!2588641))

(declare-fun m!2588643 () Bool)

(assert (=> start!208064 m!2588643))

(declare-fun m!2588645 () Bool)

(assert (=> start!208064 m!2588645))

(declare-fun m!2588647 () Bool)

(assert (=> start!208064 m!2588647))

(declare-fun m!2588649 () Bool)

(assert (=> mapNonEmpty!13316 m!2588649))

(declare-fun m!2588651 () Bool)

(assert (=> b!2144163 m!2588651))

(declare-fun m!2588653 () Bool)

(assert (=> b!2144163 m!2588653))

(declare-fun m!2588655 () Bool)

(assert (=> b!2144175 m!2588655))

(declare-fun m!2588657 () Bool)

(assert (=> b!2144164 m!2588657))

(declare-fun m!2588659 () Bool)

(assert (=> b!2144164 m!2588659))

(declare-fun m!2588661 () Bool)

(assert (=> b!2144174 m!2588661))

(declare-fun m!2588663 () Bool)

(assert (=> mapNonEmpty!13317 m!2588663))

(declare-fun m!2588665 () Bool)

(assert (=> b!2144166 m!2588665))

(declare-fun m!2588667 () Bool)

(assert (=> b!2144189 m!2588667))

(declare-fun m!2588669 () Bool)

(assert (=> b!2144189 m!2588669))

(declare-fun m!2588671 () Bool)

(assert (=> setNonEmpty!16614 m!2588671))

(declare-fun m!2588673 () Bool)

(assert (=> b!2144162 m!2588673))

(declare-fun m!2588675 () Bool)

(assert (=> b!2144169 m!2588675))

(declare-fun m!2588677 () Bool)

(assert (=> b!2144153 m!2588677))

(declare-fun m!2588679 () Bool)

(assert (=> b!2144159 m!2588679))

(declare-fun m!2588681 () Bool)

(assert (=> b!2144180 m!2588681))

(declare-fun m!2588683 () Bool)

(assert (=> b!2144155 m!2588683))

(declare-fun m!2588685 () Bool)

(assert (=> mapNonEmpty!13315 m!2588685))

(declare-fun m!2588687 () Bool)

(assert (=> b!2144181 m!2588687))

(assert (=> b!2144181 m!2588657))

(declare-fun m!2588689 () Bool)

(assert (=> b!2144173 m!2588689))

(declare-fun m!2588691 () Bool)

(assert (=> b!2144173 m!2588691))

(assert (=> b!2144173 m!2588691))

(declare-fun m!2588693 () Bool)

(assert (=> b!2144173 m!2588693))

(declare-fun m!2588695 () Bool)

(assert (=> b!2144173 m!2588695))

(declare-fun m!2588697 () Bool)

(assert (=> b!2144171 m!2588697))

(declare-fun m!2588699 () Bool)

(assert (=> setNonEmpty!16615 m!2588699))

(declare-fun m!2588701 () Bool)

(assert (=> b!2144165 m!2588701))

(declare-fun m!2588703 () Bool)

(assert (=> b!2144157 m!2588703))

(declare-fun m!2588705 () Bool)

(assert (=> b!2144157 m!2588705))

(declare-fun m!2588707 () Bool)

(assert (=> b!2144186 m!2588707))

(declare-fun m!2588709 () Bool)

(assert (=> b!2144158 m!2588709))

(check-sat (not mapNonEmpty!13315) (not b!2144157) (not b!2144190) (not b!2144164) (not start!208064) (not b!2144186) (not b!2144169) (not mapNonEmpty!13317) (not b!2144155) b_and!172753 (not b!2144184) (not b_next!63879) (not b!2144158) (not b!2144181) (not b!2144153) (not b!2144173) (not setNonEmpty!16614) (not b!2144166) (not b_next!63877) (not b!2144175) (not mapNonEmpty!13316) (not b!2144180) b_and!172759 (not b!2144165) b_and!172755 b_and!172763 b_and!172761 (not b_next!63883) (not b!2144163) (not b_next!63885) (not b!2144159) (not b!2144177) (not b_next!63887) (not b_next!63881) (not b!2144185) (not b!2144174) b_and!172757 (not b!2144178) (not setNonEmpty!16615) (not b!2144171) (not b!2144162) (not b!2144189))
(check-sat b_and!172753 (not b_next!63879) (not b_next!63877) (not b_next!63885) b_and!172757 b_and!172759 b_and!172755 b_and!172763 b_and!172761 (not b_next!63883) (not b_next!63887) (not b_next!63881))
(get-model)

(declare-fun d!645086 () Bool)

(declare-fun c!340674 () Bool)

(assert (=> d!645086 (= c!340674 ((_ is Node!7930) (c!340670 (totalInput!3158 cacheFurthestNullable!114))))))

(declare-fun e!1370129 () Bool)

(assert (=> d!645086 (= (inv!32137 (c!340670 (totalInput!3158 cacheFurthestNullable!114))) e!1370129)))

(declare-fun b!2144203 () Bool)

(declare-fun inv!32143 (Conc!7930) Bool)

(assert (=> b!2144203 (= e!1370129 (inv!32143 (c!340670 (totalInput!3158 cacheFurthestNullable!114))))))

(declare-fun b!2144204 () Bool)

(declare-fun e!1370130 () Bool)

(assert (=> b!2144204 (= e!1370129 e!1370130)))

(declare-fun res!925379 () Bool)

(assert (=> b!2144204 (= res!925379 (not ((_ is Leaf!11594) (c!340670 (totalInput!3158 cacheFurthestNullable!114)))))))

(assert (=> b!2144204 (=> res!925379 e!1370130)))

(declare-fun b!2144205 () Bool)

(declare-fun inv!32144 (Conc!7930) Bool)

(assert (=> b!2144205 (= e!1370130 (inv!32144 (c!340670 (totalInput!3158 cacheFurthestNullable!114))))))

(assert (= (and d!645086 c!340674) b!2144203))

(assert (= (and d!645086 (not c!340674)) b!2144204))

(assert (= (and b!2144204 (not res!925379)) b!2144205))

(declare-fun m!2588711 () Bool)

(assert (=> b!2144203 m!2588711))

(declare-fun m!2588713 () Bool)

(assert (=> b!2144205 m!2588713))

(assert (=> b!2144159 d!645086))

(declare-fun d!645088 () Bool)

(declare-fun validCacheMapUp!259 (MutableMap!2716) Bool)

(assert (=> d!645088 (= (valid!2186 cacheUp!979) (validCacheMapUp!259 (cache!3097 cacheUp!979)))))

(declare-fun bs!445311 () Bool)

(assert (= bs!445311 d!645088))

(declare-fun m!2588715 () Bool)

(assert (=> bs!445311 m!2588715))

(assert (=> b!2144186 d!645088))

(declare-fun d!645090 () Bool)

(declare-fun c!340675 () Bool)

(assert (=> d!645090 (= c!340675 ((_ is Node!7930) (c!340670 (totalInput!3157 (h!29827 stack!8)))))))

(declare-fun e!1370131 () Bool)

(assert (=> d!645090 (= (inv!32137 (c!340670 (totalInput!3157 (h!29827 stack!8)))) e!1370131)))

(declare-fun b!2144206 () Bool)

(assert (=> b!2144206 (= e!1370131 (inv!32143 (c!340670 (totalInput!3157 (h!29827 stack!8)))))))

(declare-fun b!2144207 () Bool)

(declare-fun e!1370132 () Bool)

(assert (=> b!2144207 (= e!1370131 e!1370132)))

(declare-fun res!925380 () Bool)

(assert (=> b!2144207 (= res!925380 (not ((_ is Leaf!11594) (c!340670 (totalInput!3157 (h!29827 stack!8))))))))

(assert (=> b!2144207 (=> res!925380 e!1370132)))

(declare-fun b!2144208 () Bool)

(assert (=> b!2144208 (= e!1370132 (inv!32144 (c!340670 (totalInput!3157 (h!29827 stack!8)))))))

(assert (= (and d!645090 c!340675) b!2144206))

(assert (= (and d!645090 (not c!340675)) b!2144207))

(assert (= (and b!2144207 (not res!925380)) b!2144208))

(declare-fun m!2588717 () Bool)

(assert (=> b!2144206 m!2588717))

(declare-fun m!2588719 () Bool)

(assert (=> b!2144208 m!2588719))

(assert (=> b!2144169 d!645090))

(declare-fun d!645092 () Bool)

(declare-fun lt!798576 () Int)

(declare-fun size!19120 (List!24506) Int)

(declare-fun list!9553 (BalanceConc!15622) List!24506)

(assert (=> d!645092 (= lt!798576 (size!19120 (list!9553 totalInput!851)))))

(declare-fun size!19121 (Conc!7930) Int)

(assert (=> d!645092 (= lt!798576 (size!19121 (c!340670 totalInput!851)))))

(assert (=> d!645092 (= (size!19115 totalInput!851) lt!798576)))

(declare-fun bs!445312 () Bool)

(assert (= bs!445312 d!645092))

(declare-fun m!2588721 () Bool)

(assert (=> bs!445312 m!2588721))

(assert (=> bs!445312 m!2588721))

(declare-fun m!2588723 () Bool)

(assert (=> bs!445312 m!2588723))

(declare-fun m!2588725 () Bool)

(assert (=> bs!445312 m!2588725))

(assert (=> b!2144153 d!645092))

(declare-fun d!645094 () Bool)

(declare-fun validCacheMapFurthestNullable!109 (MutableMap!2717 BalanceConc!15622) Bool)

(assert (=> d!645094 (= (valid!2185 cacheFurthestNullable!114) (validCacheMapFurthestNullable!109 (cache!3098 cacheFurthestNullable!114) (totalInput!3158 cacheFurthestNullable!114)))))

(declare-fun bs!445313 () Bool)

(assert (= bs!445313 d!645094))

(declare-fun m!2588727 () Bool)

(assert (=> bs!445313 m!2588727))

(assert (=> b!2144171 d!645094))

(declare-fun bs!445314 () Bool)

(declare-fun b!2144213 () Bool)

(declare-fun d!645096 () Bool)

(assert (= bs!445314 (and b!2144213 d!645096)))

(declare-fun lambda!80390 () Int)

(declare-fun lambda!80389 () Int)

(assert (=> bs!445314 (not (= lambda!80390 lambda!80389))))

(declare-fun bs!445315 () Bool)

(declare-fun b!2144214 () Bool)

(assert (= bs!445315 (and b!2144214 d!645096)))

(declare-fun lambda!80391 () Int)

(assert (=> bs!445315 (not (= lambda!80391 lambda!80389))))

(declare-fun bs!445316 () Bool)

(assert (= bs!445316 (and b!2144214 b!2144213)))

(assert (=> bs!445316 (= lambda!80391 lambda!80390)))

(declare-datatypes ((Unit!37707 0))(
  ( (Unit!37708) )
))
(declare-fun e!1370139 () Unit!37707)

(declare-fun Unit!37709 () Unit!37707)

(assert (=> b!2144213 (= e!1370139 Unit!37709)))

(declare-datatypes ((List!24512 0))(
  ( (Nil!24428) (Cons!24428 (h!29829 Context!2726) (t!197042 List!24512)) )
))
(declare-fun lt!798597 () List!24512)

(declare-fun call!128824 () List!24512)

(assert (=> b!2144213 (= lt!798597 call!128824)))

(declare-fun lt!798600 () Unit!37707)

(declare-fun lemmaNotForallThenExists!22 (List!24512 Int) Unit!37707)

(assert (=> b!2144213 (= lt!798600 (lemmaNotForallThenExists!22 lt!798597 lambda!80389))))

(declare-fun call!128825 () Bool)

(assert (=> b!2144213 call!128825))

(declare-fun lt!798599 () Unit!37707)

(assert (=> b!2144213 (= lt!798599 lt!798600)))

(declare-fun bm!128820 () Bool)

(declare-fun toList!1082 ((InoxSet Context!2726)) List!24512)

(assert (=> bm!128820 (= call!128824 (toList!1082 z!3839))))

(declare-fun Unit!37710 () Unit!37707)

(assert (=> b!2144214 (= e!1370139 Unit!37710)))

(declare-fun lt!798598 () List!24512)

(assert (=> b!2144214 (= lt!798598 call!128824)))

(declare-fun lt!798595 () Unit!37707)

(declare-fun lemmaForallThenNotExists!22 (List!24512 Int) Unit!37707)

(assert (=> b!2144214 (= lt!798595 (lemmaForallThenNotExists!22 lt!798598 lambda!80389))))

(assert (=> b!2144214 (not call!128825)))

(declare-fun lt!798594 () Unit!37707)

(assert (=> b!2144214 (= lt!798594 lt!798595)))

(declare-fun lt!798596 () Bool)

(declare-datatypes ((Option!4948 0))(
  ( (None!4947) (Some!4947 (v!29020 List!24506)) )
))
(declare-fun isEmpty!14335 (Option!4948) Bool)

(declare-fun getLanguageWitness!107 ((InoxSet Context!2726)) Option!4948)

(assert (=> d!645096 (= lt!798596 (isEmpty!14335 (getLanguageWitness!107 z!3839)))))

(declare-fun forall!4987 ((InoxSet Context!2726) Int) Bool)

(assert (=> d!645096 (= lt!798596 (forall!4987 z!3839 lambda!80389))))

(declare-fun lt!798593 () Unit!37707)

(assert (=> d!645096 (= lt!798593 e!1370139)))

(declare-fun c!340686 () Bool)

(assert (=> d!645096 (= c!340686 (not (forall!4987 z!3839 lambda!80389)))))

(assert (=> d!645096 (= (lostCauseZipper!125 z!3839) lt!798596)))

(declare-fun bm!128819 () Bool)

(declare-fun exists!715 (List!24512 Int) Bool)

(assert (=> bm!128819 (= call!128825 (exists!715 (ite c!340686 lt!798597 lt!798598) (ite c!340686 lambda!80390 lambda!80391)))))

(assert (= (and d!645096 c!340686) b!2144213))

(assert (= (and d!645096 (not c!340686)) b!2144214))

(assert (= (or b!2144213 b!2144214) bm!128819))

(assert (= (or b!2144213 b!2144214) bm!128820))

(declare-fun m!2588729 () Bool)

(assert (=> b!2144214 m!2588729))

(declare-fun m!2588731 () Bool)

(assert (=> b!2144213 m!2588731))

(declare-fun m!2588733 () Bool)

(assert (=> d!645096 m!2588733))

(assert (=> d!645096 m!2588733))

(declare-fun m!2588735 () Bool)

(assert (=> d!645096 m!2588735))

(declare-fun m!2588737 () Bool)

(assert (=> d!645096 m!2588737))

(assert (=> d!645096 m!2588737))

(declare-fun m!2588739 () Bool)

(assert (=> bm!128820 m!2588739))

(declare-fun m!2588741 () Bool)

(assert (=> bm!128819 m!2588741))

(assert (=> b!2144162 d!645096))

(declare-fun d!645098 () Bool)

(assert (=> d!645098 (= (array_inv!3016 (_keys!3098 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098))))))) (bvsge (size!19116 (_keys!3098 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2144189 d!645098))

(declare-fun d!645100 () Bool)

(assert (=> d!645100 (= (array_inv!3019 (_values!3081 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098))))))) (bvsge (size!19117 (_values!3081 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2144189 d!645100))

(declare-fun b!2144227 () Bool)

(declare-fun e!1370144 () Bool)

(assert (=> b!2144227 (= e!1370144 (= (res!925376 (h!29827 stack!8)) (furthestNullablePosition!88 (z!5892 (h!29827 stack!8)) (from!2759 (h!29827 stack!8)) (totalInput!3157 (h!29827 stack!8)) (size!19115 (totalInput!3157 (h!29827 stack!8))) (lastNullablePos!446 (h!29827 stack!8)))))))

(declare-fun b!2144228 () Bool)

(declare-fun res!925395 () Bool)

(assert (=> b!2144228 (=> (not res!925395) (not e!1370144))))

(assert (=> b!2144228 (= res!925395 (and (>= (lastNullablePos!446 (h!29827 stack!8)) (- 1)) (< (lastNullablePos!446 (h!29827 stack!8)) (from!2759 (h!29827 stack!8)))))))

(declare-fun b!2144229 () Bool)

(declare-fun res!925394 () Bool)

(assert (=> b!2144229 (=> (not res!925394) (not e!1370144))))

(assert (=> b!2144229 (= res!925394 (= (size!19115 (totalInput!3157 (h!29827 stack!8))) (size!19115 (totalInput!3157 (h!29827 stack!8)))))))

(declare-fun b!2144230 () Bool)

(declare-fun res!925393 () Bool)

(assert (=> b!2144230 (=> (not res!925393) (not e!1370144))))

(declare-fun e!1370145 () Bool)

(assert (=> b!2144230 (= res!925393 e!1370145)))

(declare-fun res!925397 () Bool)

(assert (=> b!2144230 (=> res!925397 e!1370145)))

(assert (=> b!2144230 (= res!925397 (not (nullableZipper!150 (z!5892 (h!29827 stack!8)))))))

(declare-fun b!2144232 () Bool)

(declare-fun res!925396 () Bool)

(assert (=> b!2144232 (=> (not res!925396) (not e!1370144))))

(assert (=> b!2144232 (= res!925396 (<= (from!2759 (h!29827 stack!8)) (size!19115 (totalInput!3157 (h!29827 stack!8)))))))

(declare-fun b!2144231 () Bool)

(assert (=> b!2144231 (= e!1370145 (= (lastNullablePos!446 (h!29827 stack!8)) (- (from!2759 (h!29827 stack!8)) 1)))))

(declare-fun d!645102 () Bool)

(declare-fun res!925398 () Bool)

(assert (=> d!645102 (=> (not res!925398) (not e!1370144))))

(assert (=> d!645102 (= res!925398 (>= (from!2759 (h!29827 stack!8)) 0))))

(assert (=> d!645102 (= (inv!32138 (h!29827 stack!8)) e!1370144)))

(assert (= (and d!645102 res!925398) b!2144232))

(assert (= (and b!2144232 res!925396) b!2144229))

(assert (= (and b!2144229 res!925394) b!2144228))

(assert (= (and b!2144228 res!925395) b!2144230))

(assert (= (and b!2144230 (not res!925397)) b!2144231))

(assert (= (and b!2144230 res!925393) b!2144227))

(declare-fun m!2588743 () Bool)

(assert (=> b!2144227 m!2588743))

(assert (=> b!2144227 m!2588743))

(declare-fun m!2588745 () Bool)

(assert (=> b!2144227 m!2588745))

(assert (=> b!2144229 m!2588743))

(declare-fun m!2588747 () Bool)

(assert (=> b!2144230 m!2588747))

(assert (=> b!2144232 m!2588743))

(assert (=> b!2144180 d!645102))

(declare-fun d!645104 () Bool)

(assert (=> d!645104 (= (array_inv!3016 (_keys!3100 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))))) (bvsge (size!19116 (_keys!3100 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2144163 d!645104))

(declare-fun d!645106 () Bool)

(assert (=> d!645106 (= (array_inv!3018 (_values!3083 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))))) (bvsge (size!19119 (_values!3083 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2144163 d!645106))

(declare-fun b!2144233 () Bool)

(declare-fun e!1370146 () Bool)

(assert (=> b!2144233 (= e!1370146 (= (res!925376 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)) (furthestNullablePosition!88 (z!5892 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)) (from!2759 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)) (totalInput!3157 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)) (size!19115 (totalInput!3157 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851))) (lastNullablePos!446 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)))))))

(declare-fun b!2144234 () Bool)

(declare-fun res!925401 () Bool)

(assert (=> b!2144234 (=> (not res!925401) (not e!1370146))))

(assert (=> b!2144234 (= res!925401 (and (>= (lastNullablePos!446 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)) (- 1)) (< (lastNullablePos!446 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)) (from!2759 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)))))))

(declare-fun b!2144235 () Bool)

(declare-fun res!925400 () Bool)

(assert (=> b!2144235 (=> (not res!925400) (not e!1370146))))

(assert (=> b!2144235 (= res!925400 (= (size!19115 (totalInput!3157 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851))) (size!19115 (totalInput!3157 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)))))))

(declare-fun b!2144236 () Bool)

(declare-fun res!925399 () Bool)

(assert (=> b!2144236 (=> (not res!925399) (not e!1370146))))

(declare-fun e!1370147 () Bool)

(assert (=> b!2144236 (= res!925399 e!1370147)))

(declare-fun res!925403 () Bool)

(assert (=> b!2144236 (=> res!925403 e!1370147)))

(assert (=> b!2144236 (= res!925403 (not (nullableZipper!150 (z!5892 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)))))))

(declare-fun b!2144238 () Bool)

(declare-fun res!925402 () Bool)

(assert (=> b!2144238 (=> (not res!925402) (not e!1370146))))

(assert (=> b!2144238 (= res!925402 (<= (from!2759 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)) (size!19115 (totalInput!3157 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)))))))

(declare-fun b!2144237 () Bool)

(assert (=> b!2144237 (= e!1370147 (= (lastNullablePos!446 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)) (- (from!2759 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)) 1)))))

(declare-fun d!645108 () Bool)

(declare-fun res!925404 () Bool)

(assert (=> d!645108 (=> (not res!925404) (not e!1370146))))

(assert (=> d!645108 (= res!925404 (>= (from!2759 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)) 0))))

(assert (=> d!645108 (= (inv!32138 (StackFrame!257 z!3839 from!1043 lastNullablePos!123 lt!798571 totalInput!851)) e!1370146)))

(assert (= (and d!645108 res!925404) b!2144238))

(assert (= (and b!2144238 res!925402) b!2144235))

(assert (= (and b!2144235 res!925400) b!2144234))

(assert (= (and b!2144234 res!925401) b!2144236))

(assert (= (and b!2144236 (not res!925403)) b!2144237))

(assert (= (and b!2144236 res!925399) b!2144233))

(declare-fun m!2588749 () Bool)

(assert (=> b!2144233 m!2588749))

(assert (=> b!2144233 m!2588749))

(declare-fun m!2588751 () Bool)

(assert (=> b!2144233 m!2588751))

(assert (=> b!2144235 m!2588749))

(declare-fun m!2588753 () Bool)

(assert (=> b!2144236 m!2588753))

(assert (=> b!2144238 m!2588749))

(assert (=> b!2144173 d!645108))

(declare-fun bs!445317 () Bool)

(declare-fun d!645110 () Bool)

(assert (= bs!445317 (and d!645110 d!645096)))

(declare-fun lambda!80394 () Int)

(assert (=> bs!445317 (not (= lambda!80394 lambda!80389))))

(declare-fun bs!445318 () Bool)

(assert (= bs!445318 (and d!645110 b!2144213)))

(assert (=> bs!445318 (not (= lambda!80394 lambda!80390))))

(declare-fun bs!445319 () Bool)

(assert (= bs!445319 (and d!645110 b!2144214)))

(assert (=> bs!445319 (not (= lambda!80394 lambda!80391))))

(declare-fun exists!716 ((InoxSet Context!2726) Int) Bool)

(assert (=> d!645110 (= (nullableZipper!150 (_1!14358 (derivationStepZipperMem!59 z!3839 (apply!5972 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))) (exists!716 (_1!14358 (derivationStepZipperMem!59 z!3839 (apply!5972 totalInput!851 from!1043) cacheUp!979 cacheDown!1098)) lambda!80394))))

(declare-fun bs!445320 () Bool)

(assert (= bs!445320 d!645110))

(declare-fun m!2588755 () Bool)

(assert (=> bs!445320 m!2588755))

(assert (=> b!2144173 d!645110))

(declare-fun d!645112 () Bool)

(declare-fun e!1370150 () Bool)

(assert (=> d!645112 e!1370150))

(declare-fun res!925409 () Bool)

(assert (=> d!645112 (=> (not res!925409) (not e!1370150))))

(declare-fun lt!798603 () tuple3!3490)

(declare-fun derivationStepZipper!98 ((InoxSet Context!2726) C!11732) (InoxSet Context!2726))

(assert (=> d!645112 (= res!925409 (= (_1!14358 lt!798603) (derivationStepZipper!98 z!3839 (apply!5972 totalInput!851 from!1043))))))

(declare-fun choose!12692 ((InoxSet Context!2726) C!11732 CacheUp!1868 CacheDown!1860) tuple3!3490)

(assert (=> d!645112 (= lt!798603 (choose!12692 z!3839 (apply!5972 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(assert (=> d!645112 (= (derivationStepZipperMem!59 z!3839 (apply!5972 totalInput!851 from!1043) cacheUp!979 cacheDown!1098) lt!798603)))

(declare-fun b!2144243 () Bool)

(declare-fun res!925410 () Bool)

(assert (=> b!2144243 (=> (not res!925410) (not e!1370150))))

(assert (=> b!2144243 (= res!925410 (valid!2186 (_2!14358 lt!798603)))))

(declare-fun b!2144244 () Bool)

(assert (=> b!2144244 (= e!1370150 (valid!2184 (_3!2215 lt!798603)))))

(assert (= (and d!645112 res!925409) b!2144243))

(assert (= (and b!2144243 res!925410) b!2144244))

(assert (=> d!645112 m!2588691))

(declare-fun m!2588757 () Bool)

(assert (=> d!645112 m!2588757))

(assert (=> d!645112 m!2588691))

(declare-fun m!2588759 () Bool)

(assert (=> d!645112 m!2588759))

(declare-fun m!2588761 () Bool)

(assert (=> b!2144243 m!2588761))

(declare-fun m!2588763 () Bool)

(assert (=> b!2144244 m!2588763))

(assert (=> b!2144173 d!645112))

(declare-fun d!645114 () Bool)

(declare-fun lt!798606 () C!11732)

(declare-fun apply!5973 (List!24506 Int) C!11732)

(assert (=> d!645114 (= lt!798606 (apply!5973 (list!9553 totalInput!851) from!1043))))

(declare-fun apply!5974 (Conc!7930 Int) C!11732)

(assert (=> d!645114 (= lt!798606 (apply!5974 (c!340670 totalInput!851) from!1043))))

(declare-fun e!1370153 () Bool)

(assert (=> d!645114 e!1370153))

(declare-fun res!925413 () Bool)

(assert (=> d!645114 (=> (not res!925413) (not e!1370153))))

(assert (=> d!645114 (= res!925413 (<= 0 from!1043))))

(assert (=> d!645114 (= (apply!5972 totalInput!851 from!1043) lt!798606)))

(declare-fun b!2144247 () Bool)

(assert (=> b!2144247 (= e!1370153 (< from!1043 (size!19115 totalInput!851)))))

(assert (= (and d!645114 res!925413) b!2144247))

(assert (=> d!645114 m!2588721))

(assert (=> d!645114 m!2588721))

(declare-fun m!2588765 () Bool)

(assert (=> d!645114 m!2588765))

(declare-fun m!2588767 () Bool)

(assert (=> d!645114 m!2588767))

(assert (=> b!2144247 m!2588677))

(assert (=> b!2144173 d!645114))

(declare-fun d!645116 () Bool)

(declare-fun validCacheMapDown!257 (MutableMap!2715) Bool)

(assert (=> d!645116 (= (valid!2184 cacheDown!1098) (validCacheMapDown!257 (cache!3096 cacheDown!1098)))))

(declare-fun bs!445321 () Bool)

(assert (= bs!445321 d!645116))

(declare-fun m!2588769 () Bool)

(assert (=> bs!445321 m!2588769))

(assert (=> b!2144155 d!645116))

(declare-fun d!645118 () Bool)

(declare-fun e!1370156 () Bool)

(assert (=> d!645118 e!1370156))

(declare-fun res!925416 () Bool)

(assert (=> d!645118 (=> res!925416 e!1370156)))

(declare-fun lt!798609 () Option!4947)

(declare-fun isEmpty!14336 (Option!4947) Bool)

(assert (=> d!645118 (= res!925416 (isEmpty!14336 lt!798609))))

(declare-fun choose!12693 (CacheFurthestNullable!826 (InoxSet Context!2726) Int Int) Option!4947)

(assert (=> d!645118 (= lt!798609 (choose!12693 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> d!645118 (and (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043))))

(assert (=> d!645118 (= (get!7454 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123) lt!798609)))

(declare-fun b!2144250 () Bool)

(declare-fun get!7455 (Option!4947) Int)

(assert (=> b!2144250 (= e!1370156 (= (get!7455 lt!798609) (furthestNullablePosition!88 z!3839 from!1043 (totalInput!3158 cacheFurthestNullable!114) (size!19115 (totalInput!3158 cacheFurthestNullable!114)) lastNullablePos!123)))))

(assert (= (and d!645118 (not res!925416)) b!2144250))

(declare-fun m!2588771 () Bool)

(assert (=> d!645118 m!2588771))

(declare-fun m!2588773 () Bool)

(assert (=> d!645118 m!2588773))

(declare-fun m!2588775 () Bool)

(assert (=> b!2144250 m!2588775))

(declare-fun m!2588777 () Bool)

(assert (=> b!2144250 m!2588777))

(assert (=> b!2144250 m!2588777))

(declare-fun m!2588779 () Bool)

(assert (=> b!2144250 m!2588779))

(assert (=> b!2144181 d!645118))

(declare-fun d!645120 () Bool)

(declare-fun res!925421 () Bool)

(declare-fun e!1370161 () Bool)

(assert (=> d!645120 (=> res!925421 e!1370161)))

(assert (=> d!645120 (= res!925421 ((_ is Nil!24426) stack!8))))

(assert (=> d!645120 (= (forall!4986 stack!8 lambda!80375) e!1370161)))

(declare-fun b!2144255 () Bool)

(declare-fun e!1370162 () Bool)

(assert (=> b!2144255 (= e!1370161 e!1370162)))

(declare-fun res!925422 () Bool)

(assert (=> b!2144255 (=> (not res!925422) (not e!1370162))))

(declare-fun dynLambda!11375 (Int StackFrame!256) Bool)

(assert (=> b!2144255 (= res!925422 (dynLambda!11375 lambda!80375 (h!29827 stack!8)))))

(declare-fun b!2144256 () Bool)

(assert (=> b!2144256 (= e!1370162 (forall!4986 (t!197040 stack!8) lambda!80375))))

(assert (= (and d!645120 (not res!925421)) b!2144255))

(assert (= (and b!2144255 res!925422) b!2144256))

(declare-fun b_lambda!70701 () Bool)

(assert (=> (not b_lambda!70701) (not b!2144255)))

(declare-fun m!2588781 () Bool)

(assert (=> b!2144255 m!2588781))

(declare-fun m!2588783 () Bool)

(assert (=> b!2144256 m!2588783))

(assert (=> b!2144181 d!645120))

(assert (=> b!2144164 d!645120))

(declare-fun b!2144267 () Bool)

(declare-fun e!1370169 () Int)

(assert (=> b!2144267 (= e!1370169 lastNullablePos!123)))

(declare-fun b!2144268 () Bool)

(declare-fun e!1370171 () Bool)

(assert (=> b!2144268 (= e!1370171 (lostCauseZipper!125 z!3839))))

(declare-fun b!2144269 () Bool)

(assert (=> b!2144269 (= e!1370169 from!1043)))

(declare-fun d!645122 () Bool)

(declare-fun lt!798614 () Int)

(assert (=> d!645122 (and (>= lt!798614 (- 1)) (< lt!798614 lt!798570) (>= lt!798614 lastNullablePos!123) (or (= lt!798614 lastNullablePos!123) (>= lt!798614 from!1043)))))

(declare-fun e!1370170 () Int)

(assert (=> d!645122 (= lt!798614 e!1370170)))

(declare-fun c!340694 () Bool)

(assert (=> d!645122 (= c!340694 e!1370171)))

(declare-fun res!925425 () Bool)

(assert (=> d!645122 (=> res!925425 e!1370171)))

(assert (=> d!645122 (= res!925425 (= from!1043 lt!798570))))

(assert (=> d!645122 (and (>= from!1043 0) (<= from!1043 lt!798570))))

(assert (=> d!645122 (= (furthestNullablePosition!88 z!3839 from!1043 totalInput!851 lt!798570 lastNullablePos!123) lt!798614)))

(declare-fun b!2144270 () Bool)

(assert (=> b!2144270 (= e!1370170 lastNullablePos!123)))

(declare-fun b!2144271 () Bool)

(declare-fun lt!798615 () (InoxSet Context!2726))

(assert (=> b!2144271 (= e!1370170 (furthestNullablePosition!88 lt!798615 (+ from!1043 1) totalInput!851 lt!798570 e!1370169))))

(assert (=> b!2144271 (= lt!798615 (derivationStepZipper!98 z!3839 (apply!5972 totalInput!851 from!1043)))))

(declare-fun c!340693 () Bool)

(assert (=> b!2144271 (= c!340693 (nullableZipper!150 lt!798615))))

(assert (= (and d!645122 (not res!925425)) b!2144268))

(assert (= (and d!645122 c!340694) b!2144270))

(assert (= (and d!645122 (not c!340694)) b!2144271))

(assert (= (and b!2144271 c!340693) b!2144269))

(assert (= (and b!2144271 (not c!340693)) b!2144267))

(assert (=> b!2144268 m!2588673))

(declare-fun m!2588785 () Bool)

(assert (=> b!2144271 m!2588785))

(assert (=> b!2144271 m!2588691))

(assert (=> b!2144271 m!2588691))

(assert (=> b!2144271 m!2588757))

(declare-fun m!2588787 () Bool)

(assert (=> b!2144271 m!2588787))

(assert (=> b!2144164 d!645122))

(declare-fun d!645124 () Bool)

(declare-fun res!925426 () Bool)

(declare-fun e!1370172 () Bool)

(assert (=> d!645124 (=> res!925426 e!1370172)))

(assert (=> d!645124 (= res!925426 ((_ is Nil!24426) stack!8))))

(assert (=> d!645124 (= (forall!4986 stack!8 lambda!80376) e!1370172)))

(declare-fun b!2144272 () Bool)

(declare-fun e!1370173 () Bool)

(assert (=> b!2144272 (= e!1370172 e!1370173)))

(declare-fun res!925427 () Bool)

(assert (=> b!2144272 (=> (not res!925427) (not e!1370173))))

(assert (=> b!2144272 (= res!925427 (dynLambda!11375 lambda!80376 (h!29827 stack!8)))))

(declare-fun b!2144273 () Bool)

(assert (=> b!2144273 (= e!1370173 (forall!4986 (t!197040 stack!8) lambda!80376))))

(assert (= (and d!645124 (not res!925426)) b!2144272))

(assert (= (and b!2144272 res!925427) b!2144273))

(declare-fun b_lambda!70703 () Bool)

(assert (=> (not b_lambda!70703) (not b!2144272)))

(declare-fun m!2588789 () Bool)

(assert (=> b!2144272 m!2588789))

(declare-fun m!2588791 () Bool)

(assert (=> b!2144273 m!2588791))

(assert (=> b!2144174 d!645124))

(declare-fun d!645126 () Bool)

(declare-fun res!925430 () Bool)

(declare-fun e!1370176 () Bool)

(assert (=> d!645126 (=> (not res!925430) (not e!1370176))))

(assert (=> d!645126 (= res!925430 ((_ is HashMap!2717) (cache!3098 cacheFurthestNullable!114)))))

(assert (=> d!645126 (= (inv!32140 cacheFurthestNullable!114) e!1370176)))

(declare-fun b!2144276 () Bool)

(assert (=> b!2144276 (= e!1370176 (validCacheMapFurthestNullable!109 (cache!3098 cacheFurthestNullable!114) (totalInput!3158 cacheFurthestNullable!114)))))

(assert (= (and d!645126 res!925430) b!2144276))

(assert (=> b!2144276 m!2588727))

(assert (=> start!208064 d!645126))

(declare-fun d!645128 () Bool)

(declare-fun res!925433 () Bool)

(declare-fun e!1370179 () Bool)

(assert (=> d!645128 (=> (not res!925433) (not e!1370179))))

(assert (=> d!645128 (= res!925433 ((_ is HashMap!2715) (cache!3096 cacheDown!1098)))))

(assert (=> d!645128 (= (inv!32141 cacheDown!1098) e!1370179)))

(declare-fun b!2144279 () Bool)

(assert (=> b!2144279 (= e!1370179 (validCacheMapDown!257 (cache!3096 cacheDown!1098)))))

(assert (= (and d!645128 res!925433) b!2144279))

(assert (=> b!2144279 m!2588769))

(assert (=> start!208064 d!645128))

(declare-fun d!645130 () Bool)

(declare-fun res!925436 () Bool)

(declare-fun e!1370182 () Bool)

(assert (=> d!645130 (=> (not res!925436) (not e!1370182))))

(assert (=> d!645130 (= res!925436 ((_ is HashMap!2716) (cache!3097 cacheUp!979)))))

(assert (=> d!645130 (= (inv!32142 cacheUp!979) e!1370182)))

(declare-fun b!2144282 () Bool)

(assert (=> b!2144282 (= e!1370182 (validCacheMapUp!259 (cache!3097 cacheUp!979)))))

(assert (= (and d!645130 res!925436) b!2144282))

(assert (=> b!2144282 m!2588715))

(assert (=> start!208064 d!645130))

(declare-fun d!645132 () Bool)

(declare-fun isBalanced!2463 (Conc!7930) Bool)

(assert (=> d!645132 (= (inv!32136 totalInput!851) (isBalanced!2463 (c!340670 totalInput!851)))))

(declare-fun bs!445322 () Bool)

(assert (= bs!445322 d!645132))

(declare-fun m!2588793 () Bool)

(assert (=> bs!445322 m!2588793))

(assert (=> start!208064 d!645132))

(declare-fun d!645134 () Bool)

(declare-fun lambda!80397 () Int)

(declare-fun forall!4988 (List!24507 Int) Bool)

(assert (=> d!645134 (= (inv!32139 setElem!16615) (forall!4988 (exprs!1863 setElem!16615) lambda!80397))))

(declare-fun bs!445323 () Bool)

(assert (= bs!445323 d!645134))

(declare-fun m!2588795 () Bool)

(assert (=> bs!445323 m!2588795))

(assert (=> setNonEmpty!16614 d!645134))

(declare-fun bs!445324 () Bool)

(declare-fun d!645136 () Bool)

(assert (= bs!445324 (and d!645136 d!645096)))

(declare-fun lambda!80398 () Int)

(assert (=> bs!445324 (not (= lambda!80398 lambda!80389))))

(declare-fun bs!445325 () Bool)

(assert (= bs!445325 (and d!645136 b!2144213)))

(assert (=> bs!445325 (not (= lambda!80398 lambda!80390))))

(declare-fun bs!445326 () Bool)

(assert (= bs!445326 (and d!645136 b!2144214)))

(assert (=> bs!445326 (not (= lambda!80398 lambda!80391))))

(declare-fun bs!445327 () Bool)

(assert (= bs!445327 (and d!645136 d!645110)))

(assert (=> bs!445327 (= lambda!80398 lambda!80394)))

(assert (=> d!645136 (= (nullableZipper!150 z!3839) (exists!716 z!3839 lambda!80398))))

(declare-fun bs!445328 () Bool)

(assert (= bs!445328 d!645136))

(declare-fun m!2588797 () Bool)

(assert (=> bs!445328 m!2588797))

(assert (=> b!2144165 d!645136))

(declare-fun bs!445329 () Bool)

(declare-fun d!645138 () Bool)

(assert (= bs!445329 (and d!645138 d!645134)))

(declare-fun lambda!80399 () Int)

(assert (=> bs!445329 (= lambda!80399 lambda!80397)))

(assert (=> d!645138 (= (inv!32139 setElem!16614) (forall!4988 (exprs!1863 setElem!16614) lambda!80399))))

(declare-fun bs!445330 () Bool)

(assert (= bs!445330 d!645138))

(declare-fun m!2588799 () Bool)

(assert (=> bs!445330 m!2588799))

(assert (=> setNonEmpty!16615 d!645138))

(declare-fun d!645140 () Bool)

(assert (=> d!645140 (= (inv!32136 (totalInput!3158 cacheFurthestNullable!114)) (isBalanced!2463 (c!340670 (totalInput!3158 cacheFurthestNullable!114))))))

(declare-fun bs!445331 () Bool)

(assert (= bs!445331 d!645140))

(declare-fun m!2588801 () Bool)

(assert (=> bs!445331 m!2588801))

(assert (=> b!2144166 d!645140))

(declare-fun d!645142 () Bool)

(declare-fun c!340695 () Bool)

(assert (=> d!645142 (= c!340695 ((_ is Node!7930) (c!340670 totalInput!851)))))

(declare-fun e!1370183 () Bool)

(assert (=> d!645142 (= (inv!32137 (c!340670 totalInput!851)) e!1370183)))

(declare-fun b!2144283 () Bool)

(assert (=> b!2144283 (= e!1370183 (inv!32143 (c!340670 totalInput!851)))))

(declare-fun b!2144284 () Bool)

(declare-fun e!1370184 () Bool)

(assert (=> b!2144284 (= e!1370183 e!1370184)))

(declare-fun res!925437 () Bool)

(assert (=> b!2144284 (= res!925437 (not ((_ is Leaf!11594) (c!340670 totalInput!851))))))

(assert (=> b!2144284 (=> res!925437 e!1370184)))

(declare-fun b!2144285 () Bool)

(assert (=> b!2144285 (= e!1370184 (inv!32144 (c!340670 totalInput!851)))))

(assert (= (and d!645142 c!340695) b!2144283))

(assert (= (and d!645142 (not c!340695)) b!2144284))

(assert (= (and b!2144284 (not res!925437)) b!2144285))

(declare-fun m!2588803 () Bool)

(assert (=> b!2144283 m!2588803))

(declare-fun m!2588805 () Bool)

(assert (=> b!2144285 m!2588805))

(assert (=> b!2144175 d!645142))

(declare-fun d!645144 () Bool)

(assert (=> d!645144 (= (array_inv!3016 (_keys!3099 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979))))))) (bvsge (size!19116 (_keys!3099 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2144157 d!645144))

(declare-fun d!645146 () Bool)

(assert (=> d!645146 (= (array_inv!3017 (_values!3082 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979))))))) (bvsge (size!19118 (_values!3082 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2144157 d!645146))

(declare-fun d!645148 () Bool)

(assert (=> d!645148 (= (inv!32136 (totalInput!3157 (h!29827 stack!8))) (isBalanced!2463 (c!340670 (totalInput!3157 (h!29827 stack!8)))))))

(declare-fun bs!445332 () Bool)

(assert (= bs!445332 d!645148))

(declare-fun m!2588807 () Bool)

(assert (=> bs!445332 m!2588807))

(assert (=> b!2144158 d!645148))

(declare-fun tp!664338 () Bool)

(declare-fun b!2144294 () Bool)

(declare-fun e!1370189 () Bool)

(declare-fun tp!664336 () Bool)

(assert (=> b!2144294 (= e!1370189 (and (inv!32137 (left!18771 (c!340670 (totalInput!3158 cacheFurthestNullable!114)))) tp!664338 (inv!32137 (right!19101 (c!340670 (totalInput!3158 cacheFurthestNullable!114)))) tp!664336))))

(declare-fun b!2144296 () Bool)

(declare-fun e!1370190 () Bool)

(declare-fun tp!664337 () Bool)

(assert (=> b!2144296 (= e!1370190 tp!664337)))

(declare-fun b!2144295 () Bool)

(declare-fun inv!32145 (IArray!15865) Bool)

(assert (=> b!2144295 (= e!1370189 (and (inv!32145 (xs!10872 (c!340670 (totalInput!3158 cacheFurthestNullable!114)))) e!1370190))))

(assert (=> b!2144159 (= tp!664320 (and (inv!32137 (c!340670 (totalInput!3158 cacheFurthestNullable!114))) e!1370189))))

(assert (= (and b!2144159 ((_ is Node!7930) (c!340670 (totalInput!3158 cacheFurthestNullable!114)))) b!2144294))

(assert (= b!2144295 b!2144296))

(assert (= (and b!2144159 ((_ is Leaf!11594) (c!340670 (totalInput!3158 cacheFurthestNullable!114)))) b!2144295))

(declare-fun m!2588809 () Bool)

(assert (=> b!2144294 m!2588809))

(declare-fun m!2588811 () Bool)

(assert (=> b!2144294 m!2588811))

(declare-fun m!2588813 () Bool)

(assert (=> b!2144295 m!2588813))

(assert (=> b!2144159 m!2588679))

(declare-fun tp!664339 () Bool)

(declare-fun tp!664341 () Bool)

(declare-fun b!2144297 () Bool)

(declare-fun e!1370191 () Bool)

(assert (=> b!2144297 (= e!1370191 (and (inv!32137 (left!18771 (c!340670 (totalInput!3157 (h!29827 stack!8))))) tp!664341 (inv!32137 (right!19101 (c!340670 (totalInput!3157 (h!29827 stack!8))))) tp!664339))))

(declare-fun b!2144299 () Bool)

(declare-fun e!1370192 () Bool)

(declare-fun tp!664340 () Bool)

(assert (=> b!2144299 (= e!1370192 tp!664340)))

(declare-fun b!2144298 () Bool)

(assert (=> b!2144298 (= e!1370191 (and (inv!32145 (xs!10872 (c!340670 (totalInput!3157 (h!29827 stack!8))))) e!1370192))))

(assert (=> b!2144169 (= tp!664329 (and (inv!32137 (c!340670 (totalInput!3157 (h!29827 stack!8)))) e!1370191))))

(assert (= (and b!2144169 ((_ is Node!7930) (c!340670 (totalInput!3157 (h!29827 stack!8))))) b!2144297))

(assert (= b!2144298 b!2144299))

(assert (= (and b!2144169 ((_ is Leaf!11594) (c!340670 (totalInput!3157 (h!29827 stack!8))))) b!2144298))

(declare-fun m!2588815 () Bool)

(assert (=> b!2144297 m!2588815))

(declare-fun m!2588817 () Bool)

(assert (=> b!2144297 m!2588817))

(declare-fun m!2588819 () Bool)

(assert (=> b!2144298 m!2588819))

(assert (=> b!2144169 m!2588675))

(declare-fun b!2144304 () Bool)

(declare-fun e!1370195 () Bool)

(declare-fun tp!664346 () Bool)

(declare-fun tp!664347 () Bool)

(assert (=> b!2144304 (= e!1370195 (and tp!664346 tp!664347))))

(assert (=> b!2144177 (= tp!664304 e!1370195)))

(assert (= (and b!2144177 ((_ is Cons!24423) (exprs!1863 setElem!16615))) b!2144304))

(declare-fun setIsEmpty!16618 () Bool)

(declare-fun setRes!16618 () Bool)

(assert (=> setIsEmpty!16618 setRes!16618))

(declare-fun b!2144312 () Bool)

(declare-fun e!1370201 () Bool)

(declare-fun tp!664356 () Bool)

(assert (=> b!2144312 (= e!1370201 tp!664356)))

(declare-fun setNonEmpty!16618 () Bool)

(declare-fun tp!664354 () Bool)

(declare-fun setElem!16618 () Context!2726)

(assert (=> setNonEmpty!16618 (= setRes!16618 (and tp!664354 (inv!32139 setElem!16618) e!1370201))))

(declare-fun setRest!16618 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16618 (= (_1!14356 (_1!14357 (h!29828 mapDefault!13315))) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16618 true) setRest!16618))))

(declare-fun e!1370200 () Bool)

(assert (=> b!2144178 (= tp!664319 e!1370200)))

(declare-fun b!2144311 () Bool)

(declare-fun tp!664355 () Bool)

(assert (=> b!2144311 (= e!1370200 (and setRes!16618 tp!664355))))

(declare-fun condSetEmpty!16618 () Bool)

(assert (=> b!2144311 (= condSetEmpty!16618 (= (_1!14356 (_1!14357 (h!29828 mapDefault!13315))) ((as const (Array Context!2726 Bool)) false)))))

(assert (= (and b!2144311 condSetEmpty!16618) setIsEmpty!16618))

(assert (= (and b!2144311 (not condSetEmpty!16618)) setNonEmpty!16618))

(assert (= setNonEmpty!16618 b!2144312))

(assert (= (and b!2144178 ((_ is Cons!24427) mapDefault!13315)) b!2144311))

(declare-fun m!2588821 () Bool)

(assert (=> setNonEmpty!16618 m!2588821))

(declare-fun setNonEmpty!16621 () Bool)

(declare-fun tp!664369 () Bool)

(declare-fun e!1370210 () Bool)

(declare-fun setRes!16621 () Bool)

(declare-fun setElem!16621 () Context!2726)

(assert (=> setNonEmpty!16621 (= setRes!16621 (and tp!664369 (inv!32139 setElem!16621) e!1370210))))

(declare-fun setRest!16621 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16621 (= (_2!14353 (h!29825 (zeroValue!3059 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16621 true) setRest!16621))))

(declare-fun e!1370208 () Bool)

(declare-fun e!1370209 () Bool)

(declare-fun tp_is_empty!9519 () Bool)

(declare-fun tp!664371 () Bool)

(declare-fun b!2144321 () Bool)

(declare-fun tp!664367 () Bool)

(assert (=> b!2144321 (= e!1370209 (and tp!664371 (inv!32139 (_2!14352 (_1!14353 (h!29825 (zeroValue!3059 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098)))))))))) e!1370208 tp_is_empty!9519 setRes!16621 tp!664367))))

(declare-fun condSetEmpty!16621 () Bool)

(assert (=> b!2144321 (= condSetEmpty!16621 (= (_2!14353 (h!29825 (zeroValue!3059 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098)))))))) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun b!2144322 () Bool)

(declare-fun tp!664368 () Bool)

(assert (=> b!2144322 (= e!1370210 tp!664368)))

(assert (=> b!2144189 (= tp!664302 e!1370209)))

(declare-fun b!2144323 () Bool)

(declare-fun tp!664370 () Bool)

(assert (=> b!2144323 (= e!1370208 tp!664370)))

(declare-fun setIsEmpty!16621 () Bool)

(assert (=> setIsEmpty!16621 setRes!16621))

(assert (= b!2144321 b!2144323))

(assert (= (and b!2144321 condSetEmpty!16621) setIsEmpty!16621))

(assert (= (and b!2144321 (not condSetEmpty!16621)) setNonEmpty!16621))

(assert (= setNonEmpty!16621 b!2144322))

(assert (= (and b!2144189 ((_ is Cons!24424) (zeroValue!3059 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098)))))))) b!2144321))

(declare-fun m!2588823 () Bool)

(assert (=> setNonEmpty!16621 m!2588823))

(declare-fun m!2588825 () Bool)

(assert (=> b!2144321 m!2588825))

(declare-fun e!1370213 () Bool)

(declare-fun setElem!16622 () Context!2726)

(declare-fun setRes!16622 () Bool)

(declare-fun tp!664374 () Bool)

(declare-fun setNonEmpty!16622 () Bool)

(assert (=> setNonEmpty!16622 (= setRes!16622 (and tp!664374 (inv!32139 setElem!16622) e!1370213))))

(declare-fun setRest!16622 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16622 (= (_2!14353 (h!29825 (minValue!3059 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16622 true) setRest!16622))))

(declare-fun b!2144324 () Bool)

(declare-fun tp!664376 () Bool)

(declare-fun tp!664372 () Bool)

(declare-fun e!1370212 () Bool)

(declare-fun e!1370211 () Bool)

(assert (=> b!2144324 (= e!1370212 (and tp!664376 (inv!32139 (_2!14352 (_1!14353 (h!29825 (minValue!3059 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098)))))))))) e!1370211 tp_is_empty!9519 setRes!16622 tp!664372))))

(declare-fun condSetEmpty!16622 () Bool)

(assert (=> b!2144324 (= condSetEmpty!16622 (= (_2!14353 (h!29825 (minValue!3059 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098)))))))) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun b!2144325 () Bool)

(declare-fun tp!664373 () Bool)

(assert (=> b!2144325 (= e!1370213 tp!664373)))

(assert (=> b!2144189 (= tp!664312 e!1370212)))

(declare-fun b!2144326 () Bool)

(declare-fun tp!664375 () Bool)

(assert (=> b!2144326 (= e!1370211 tp!664375)))

(declare-fun setIsEmpty!16622 () Bool)

(assert (=> setIsEmpty!16622 setRes!16622))

(assert (= b!2144324 b!2144326))

(assert (= (and b!2144324 condSetEmpty!16622) setIsEmpty!16622))

(assert (= (and b!2144324 (not condSetEmpty!16622)) setNonEmpty!16622))

(assert (= setNonEmpty!16622 b!2144325))

(assert (= (and b!2144189 ((_ is Cons!24424) (minValue!3059 (v!29013 (underlying!5797 (v!29014 (underlying!5798 (cache!3096 cacheDown!1098)))))))) b!2144324))

(declare-fun m!2588827 () Bool)

(assert (=> setNonEmpty!16622 m!2588827))

(declare-fun m!2588829 () Bool)

(assert (=> b!2144324 m!2588829))

(declare-fun mapIsEmpty!13320 () Bool)

(declare-fun mapRes!13320 () Bool)

(assert (=> mapIsEmpty!13320 mapRes!13320))

(declare-fun tp!664408 () Bool)

(declare-fun setNonEmpty!16627 () Bool)

(declare-fun setRes!16627 () Bool)

(declare-fun setElem!16628 () Context!2726)

(declare-fun e!1370231 () Bool)

(assert (=> setNonEmpty!16627 (= setRes!16627 (and tp!664408 (inv!32139 setElem!16628) e!1370231))))

(declare-fun mapDefault!13320 () List!24508)

(declare-fun setRest!16628 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16627 (= (_2!14353 (h!29825 mapDefault!13320)) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16628 true) setRest!16628))))

(declare-fun b!2144341 () Bool)

(declare-fun e!1370230 () Bool)

(declare-fun tp!664404 () Bool)

(assert (=> b!2144341 (= e!1370230 tp!664404)))

(declare-fun b!2144342 () Bool)

(declare-fun e!1370229 () Bool)

(declare-fun tp!664409 () Bool)

(assert (=> b!2144342 (= e!1370229 tp!664409)))

(declare-fun b!2144343 () Bool)

(declare-fun e!1370227 () Bool)

(declare-fun tp!664402 () Bool)

(assert (=> b!2144343 (= e!1370227 tp!664402)))

(declare-fun mapNonEmpty!13320 () Bool)

(declare-fun tp!664407 () Bool)

(declare-fun e!1370226 () Bool)

(assert (=> mapNonEmpty!13320 (= mapRes!13320 (and tp!664407 e!1370226))))

(declare-fun mapRest!13320 () (Array (_ BitVec 32) List!24508))

(declare-fun mapKey!13320 () (_ BitVec 32))

(declare-fun mapValue!13320 () List!24508)

(assert (=> mapNonEmpty!13320 (= mapRest!13315 (store mapRest!13320 mapKey!13320 mapValue!13320))))

(declare-fun b!2144344 () Bool)

(declare-fun tp!664403 () Bool)

(assert (=> b!2144344 (= e!1370231 tp!664403)))

(declare-fun setIsEmpty!16627 () Bool)

(assert (=> setIsEmpty!16627 setRes!16627))

(declare-fun setRes!16628 () Bool)

(declare-fun setElem!16627 () Context!2726)

(declare-fun tp!664401 () Bool)

(declare-fun setNonEmpty!16628 () Bool)

(assert (=> setNonEmpty!16628 (= setRes!16628 (and tp!664401 (inv!32139 setElem!16627) e!1370230))))

(declare-fun setRest!16627 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16628 (= (_2!14353 (h!29825 mapValue!13320)) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16627 true) setRest!16627))))

(declare-fun condMapEmpty!13320 () Bool)

(assert (=> mapNonEmpty!13315 (= condMapEmpty!13320 (= mapRest!13315 ((as const (Array (_ BitVec 32) List!24508)) mapDefault!13320)))))

(declare-fun e!1370228 () Bool)

(assert (=> mapNonEmpty!13315 (= tp!664301 (and e!1370228 mapRes!13320))))

(declare-fun setIsEmpty!16628 () Bool)

(assert (=> setIsEmpty!16628 setRes!16628))

(declare-fun b!2144345 () Bool)

(declare-fun tp!664405 () Bool)

(declare-fun tp!664400 () Bool)

(assert (=> b!2144345 (= e!1370228 (and tp!664405 (inv!32139 (_2!14352 (_1!14353 (h!29825 mapDefault!13320)))) e!1370229 tp_is_empty!9519 setRes!16627 tp!664400))))

(declare-fun condSetEmpty!16628 () Bool)

(assert (=> b!2144345 (= condSetEmpty!16628 (= (_2!14353 (h!29825 mapDefault!13320)) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun tp!664399 () Bool)

(declare-fun tp!664406 () Bool)

(declare-fun b!2144346 () Bool)

(assert (=> b!2144346 (= e!1370226 (and tp!664406 (inv!32139 (_2!14352 (_1!14353 (h!29825 mapValue!13320)))) e!1370227 tp_is_empty!9519 setRes!16628 tp!664399))))

(declare-fun condSetEmpty!16627 () Bool)

(assert (=> b!2144346 (= condSetEmpty!16627 (= (_2!14353 (h!29825 mapValue!13320)) ((as const (Array Context!2726 Bool)) false)))))

(assert (= (and mapNonEmpty!13315 condMapEmpty!13320) mapIsEmpty!13320))

(assert (= (and mapNonEmpty!13315 (not condMapEmpty!13320)) mapNonEmpty!13320))

(assert (= b!2144346 b!2144343))

(assert (= (and b!2144346 condSetEmpty!16627) setIsEmpty!16628))

(assert (= (and b!2144346 (not condSetEmpty!16627)) setNonEmpty!16628))

(assert (= setNonEmpty!16628 b!2144341))

(assert (= (and mapNonEmpty!13320 ((_ is Cons!24424) mapValue!13320)) b!2144346))

(assert (= b!2144345 b!2144342))

(assert (= (and b!2144345 condSetEmpty!16628) setIsEmpty!16627))

(assert (= (and b!2144345 (not condSetEmpty!16628)) setNonEmpty!16627))

(assert (= setNonEmpty!16627 b!2144344))

(assert (= (and mapNonEmpty!13315 ((_ is Cons!24424) mapDefault!13320)) b!2144345))

(declare-fun m!2588831 () Bool)

(assert (=> setNonEmpty!16628 m!2588831))

(declare-fun m!2588833 () Bool)

(assert (=> b!2144346 m!2588833))

(declare-fun m!2588835 () Bool)

(assert (=> mapNonEmpty!13320 m!2588835))

(declare-fun m!2588837 () Bool)

(assert (=> b!2144345 m!2588837))

(declare-fun m!2588839 () Bool)

(assert (=> setNonEmpty!16627 m!2588839))

(declare-fun setElem!16629 () Context!2726)

(declare-fun tp!664412 () Bool)

(declare-fun setRes!16629 () Bool)

(declare-fun e!1370234 () Bool)

(declare-fun setNonEmpty!16629 () Bool)

(assert (=> setNonEmpty!16629 (= setRes!16629 (and tp!664412 (inv!32139 setElem!16629) e!1370234))))

(declare-fun setRest!16629 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16629 (= (_2!14353 (h!29825 mapValue!13316)) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16629 true) setRest!16629))))

(declare-fun e!1370233 () Bool)

(declare-fun b!2144347 () Bool)

(declare-fun tp!664410 () Bool)

(declare-fun tp!664414 () Bool)

(declare-fun e!1370232 () Bool)

(assert (=> b!2144347 (= e!1370233 (and tp!664414 (inv!32139 (_2!14352 (_1!14353 (h!29825 mapValue!13316)))) e!1370232 tp_is_empty!9519 setRes!16629 tp!664410))))

(declare-fun condSetEmpty!16629 () Bool)

(assert (=> b!2144347 (= condSetEmpty!16629 (= (_2!14353 (h!29825 mapValue!13316)) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun b!2144348 () Bool)

(declare-fun tp!664411 () Bool)

(assert (=> b!2144348 (= e!1370234 tp!664411)))

(assert (=> mapNonEmpty!13315 (= tp!664328 e!1370233)))

(declare-fun b!2144349 () Bool)

(declare-fun tp!664413 () Bool)

(assert (=> b!2144349 (= e!1370232 tp!664413)))

(declare-fun setIsEmpty!16629 () Bool)

(assert (=> setIsEmpty!16629 setRes!16629))

(assert (= b!2144347 b!2144349))

(assert (= (and b!2144347 condSetEmpty!16629) setIsEmpty!16629))

(assert (= (and b!2144347 (not condSetEmpty!16629)) setNonEmpty!16629))

(assert (= setNonEmpty!16629 b!2144348))

(assert (= (and mapNonEmpty!13315 ((_ is Cons!24424) mapValue!13316)) b!2144347))

(declare-fun m!2588841 () Bool)

(assert (=> setNonEmpty!16629 m!2588841))

(declare-fun m!2588843 () Bool)

(assert (=> b!2144347 m!2588843))

(declare-fun b!2144360 () Bool)

(declare-fun e!1370244 () Bool)

(declare-fun tp!664424 () Bool)

(assert (=> b!2144360 (= e!1370244 (and (inv!32137 (c!340670 (totalInput!3157 (h!29827 (t!197040 stack!8))))) tp!664424))))

(declare-fun setIsEmpty!16632 () Bool)

(declare-fun setRes!16632 () Bool)

(assert (=> setIsEmpty!16632 setRes!16632))

(declare-fun e!1370243 () Bool)

(declare-fun b!2144361 () Bool)

(declare-fun tp!664423 () Bool)

(declare-fun e!1370245 () Bool)

(assert (=> b!2144361 (= e!1370243 (and (inv!32138 (h!29827 (t!197040 stack!8))) e!1370245 tp!664423))))

(assert (=> b!2144180 (= tp!664326 e!1370243)))

(declare-fun b!2144362 () Bool)

(assert (=> b!2144362 (= e!1370245 (and setRes!16632 (inv!32136 (totalInput!3157 (h!29827 (t!197040 stack!8)))) e!1370244))))

(declare-fun condSetEmpty!16632 () Bool)

(assert (=> b!2144362 (= condSetEmpty!16632 (= (z!5892 (h!29827 (t!197040 stack!8))) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun e!1370246 () Bool)

(declare-fun setElem!16632 () Context!2726)

(declare-fun tp!664426 () Bool)

(declare-fun setNonEmpty!16632 () Bool)

(assert (=> setNonEmpty!16632 (= setRes!16632 (and tp!664426 (inv!32139 setElem!16632) e!1370246))))

(declare-fun setRest!16632 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16632 (= (z!5892 (h!29827 (t!197040 stack!8))) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16632 true) setRest!16632))))

(declare-fun b!2144363 () Bool)

(declare-fun tp!664425 () Bool)

(assert (=> b!2144363 (= e!1370246 tp!664425)))

(assert (= (and b!2144362 condSetEmpty!16632) setIsEmpty!16632))

(assert (= (and b!2144362 (not condSetEmpty!16632)) setNonEmpty!16632))

(assert (= setNonEmpty!16632 b!2144363))

(assert (= b!2144362 b!2144360))

(assert (= b!2144361 b!2144362))

(assert (= (and b!2144180 ((_ is Cons!24426) (t!197040 stack!8))) b!2144361))

(declare-fun m!2588845 () Bool)

(assert (=> b!2144360 m!2588845))

(declare-fun m!2588847 () Bool)

(assert (=> b!2144361 m!2588847))

(declare-fun m!2588849 () Bool)

(assert (=> b!2144362 m!2588849))

(declare-fun m!2588851 () Bool)

(assert (=> setNonEmpty!16632 m!2588851))

(declare-fun setIsEmpty!16633 () Bool)

(declare-fun setRes!16633 () Bool)

(assert (=> setIsEmpty!16633 setRes!16633))

(declare-fun b!2144365 () Bool)

(declare-fun e!1370248 () Bool)

(declare-fun tp!664429 () Bool)

(assert (=> b!2144365 (= e!1370248 tp!664429)))

(declare-fun tp!664427 () Bool)

(declare-fun setElem!16633 () Context!2726)

(declare-fun setNonEmpty!16633 () Bool)

(assert (=> setNonEmpty!16633 (= setRes!16633 (and tp!664427 (inv!32139 setElem!16633) e!1370248))))

(declare-fun setRest!16633 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16633 (= (_1!14356 (_1!14357 (h!29828 (zeroValue!3061 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16633 true) setRest!16633))))

(declare-fun e!1370247 () Bool)

(assert (=> b!2144163 (= tp!664305 e!1370247)))

(declare-fun b!2144364 () Bool)

(declare-fun tp!664428 () Bool)

(assert (=> b!2144364 (= e!1370247 (and setRes!16633 tp!664428))))

(declare-fun condSetEmpty!16633 () Bool)

(assert (=> b!2144364 (= condSetEmpty!16633 (= (_1!14356 (_1!14357 (h!29828 (zeroValue!3061 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))))))) ((as const (Array Context!2726 Bool)) false)))))

(assert (= (and b!2144364 condSetEmpty!16633) setIsEmpty!16633))

(assert (= (and b!2144364 (not condSetEmpty!16633)) setNonEmpty!16633))

(assert (= setNonEmpty!16633 b!2144365))

(assert (= (and b!2144163 ((_ is Cons!24427) (zeroValue!3061 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114)))))))) b!2144364))

(declare-fun m!2588853 () Bool)

(assert (=> setNonEmpty!16633 m!2588853))

(declare-fun setIsEmpty!16634 () Bool)

(declare-fun setRes!16634 () Bool)

(assert (=> setIsEmpty!16634 setRes!16634))

(declare-fun b!2144367 () Bool)

(declare-fun e!1370250 () Bool)

(declare-fun tp!664432 () Bool)

(assert (=> b!2144367 (= e!1370250 tp!664432)))

(declare-fun tp!664430 () Bool)

(declare-fun setElem!16634 () Context!2726)

(declare-fun setNonEmpty!16634 () Bool)

(assert (=> setNonEmpty!16634 (= setRes!16634 (and tp!664430 (inv!32139 setElem!16634) e!1370250))))

(declare-fun setRest!16634 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16634 (= (_1!14356 (_1!14357 (h!29828 (minValue!3061 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16634 true) setRest!16634))))

(declare-fun e!1370249 () Bool)

(assert (=> b!2144163 (= tp!664303 e!1370249)))

(declare-fun b!2144366 () Bool)

(declare-fun tp!664431 () Bool)

(assert (=> b!2144366 (= e!1370249 (and setRes!16634 tp!664431))))

(declare-fun condSetEmpty!16634 () Bool)

(assert (=> b!2144366 (= condSetEmpty!16634 (= (_1!14356 (_1!14357 (h!29828 (minValue!3061 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114))))))))) ((as const (Array Context!2726 Bool)) false)))))

(assert (= (and b!2144366 condSetEmpty!16634) setIsEmpty!16634))

(assert (= (and b!2144366 (not condSetEmpty!16634)) setNonEmpty!16634))

(assert (= setNonEmpty!16634 b!2144367))

(assert (= (and b!2144163 ((_ is Cons!24427) (minValue!3061 (v!29017 (underlying!5801 (v!29018 (underlying!5802 (cache!3098 cacheFurthestNullable!114)))))))) b!2144366))

(declare-fun m!2588855 () Bool)

(assert (=> setNonEmpty!16634 m!2588855))

(declare-fun b!2144368 () Bool)

(declare-fun e!1370251 () Bool)

(declare-fun tp!664433 () Bool)

(declare-fun tp!664434 () Bool)

(assert (=> b!2144368 (= e!1370251 (and tp!664433 tp!664434))))

(assert (=> b!2144190 (= tp!664327 e!1370251)))

(assert (= (and b!2144190 ((_ is Cons!24423) (exprs!1863 setElem!16614))) b!2144368))

(declare-fun condSetEmpty!16637 () Bool)

(assert (=> setNonEmpty!16614 (= condSetEmpty!16637 (= setRest!16614 ((as const (Array Context!2726 Bool)) false)))))

(declare-fun setRes!16637 () Bool)

(assert (=> setNonEmpty!16614 (= tp!664323 setRes!16637)))

(declare-fun setIsEmpty!16637 () Bool)

(assert (=> setIsEmpty!16637 setRes!16637))

(declare-fun e!1370254 () Bool)

(declare-fun setNonEmpty!16637 () Bool)

(declare-fun setElem!16637 () Context!2726)

(declare-fun tp!664439 () Bool)

(assert (=> setNonEmpty!16637 (= setRes!16637 (and tp!664439 (inv!32139 setElem!16637) e!1370254))))

(declare-fun setRest!16637 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16637 (= setRest!16614 ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16637 true) setRest!16637))))

(declare-fun b!2144373 () Bool)

(declare-fun tp!664440 () Bool)

(assert (=> b!2144373 (= e!1370254 tp!664440)))

(assert (= (and setNonEmpty!16614 condSetEmpty!16637) setIsEmpty!16637))

(assert (= (and setNonEmpty!16614 (not condSetEmpty!16637)) setNonEmpty!16637))

(assert (= setNonEmpty!16637 b!2144373))

(declare-fun m!2588857 () Bool)

(assert (=> setNonEmpty!16637 m!2588857))

(declare-fun e!1370270 () Bool)

(declare-fun setNonEmpty!16642 () Bool)

(declare-fun setRes!16642 () Bool)

(declare-fun tp!664463 () Bool)

(declare-fun setElem!16643 () Context!2726)

(assert (=> setNonEmpty!16642 (= setRes!16642 (and tp!664463 (inv!32139 setElem!16643) e!1370270))))

(declare-fun mapValue!13323 () List!24509)

(declare-fun setRest!16642 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16642 (= (_2!14355 (h!29826 mapValue!13323)) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16643 true) setRest!16642))))

(declare-fun condMapEmpty!13323 () Bool)

(declare-fun mapDefault!13323 () List!24509)

(assert (=> mapNonEmpty!13316 (= condMapEmpty!13323 (= mapRest!13317 ((as const (Array (_ BitVec 32) List!24509)) mapDefault!13323)))))

(declare-fun e!1370271 () Bool)

(declare-fun mapRes!13323 () Bool)

(assert (=> mapNonEmpty!13316 (= tp!664314 (and e!1370271 mapRes!13323))))

(declare-fun mapIsEmpty!13323 () Bool)

(assert (=> mapIsEmpty!13323 mapRes!13323))

(declare-fun mapNonEmpty!13323 () Bool)

(declare-fun tp!664459 () Bool)

(declare-fun e!1370269 () Bool)

(assert (=> mapNonEmpty!13323 (= mapRes!13323 (and tp!664459 e!1370269))))

(declare-fun mapRest!13323 () (Array (_ BitVec 32) List!24509))

(declare-fun mapKey!13323 () (_ BitVec 32))

(assert (=> mapNonEmpty!13323 (= mapRest!13317 (store mapRest!13323 mapKey!13323 mapValue!13323))))

(declare-fun b!2144388 () Bool)

(declare-fun tp!664466 () Bool)

(assert (=> b!2144388 (= e!1370270 tp!664466)))

(declare-fun setRes!16643 () Bool)

(declare-fun tp!664465 () Bool)

(declare-fun e!1370272 () Bool)

(declare-fun b!2144389 () Bool)

(assert (=> b!2144389 (= e!1370271 (and (inv!32139 (_1!14354 (_1!14355 (h!29826 mapDefault!13323)))) e!1370272 tp_is_empty!9519 setRes!16643 tp!664465))))

(declare-fun condSetEmpty!16643 () Bool)

(assert (=> b!2144389 (= condSetEmpty!16643 (= (_2!14355 (h!29826 mapDefault!13323)) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun setIsEmpty!16642 () Bool)

(assert (=> setIsEmpty!16642 setRes!16643))

(declare-fun b!2144390 () Bool)

(declare-fun e!1370267 () Bool)

(declare-fun tp!664467 () Bool)

(assert (=> b!2144390 (= e!1370267 tp!664467)))

(declare-fun setIsEmpty!16643 () Bool)

(assert (=> setIsEmpty!16643 setRes!16642))

(declare-fun b!2144391 () Bool)

(declare-fun tp!664464 () Bool)

(assert (=> b!2144391 (= e!1370272 tp!664464)))

(declare-fun b!2144392 () Bool)

(declare-fun e!1370268 () Bool)

(declare-fun tp!664460 () Bool)

(assert (=> b!2144392 (= e!1370268 tp!664460)))

(declare-fun tp!664461 () Bool)

(declare-fun b!2144393 () Bool)

(assert (=> b!2144393 (= e!1370269 (and (inv!32139 (_1!14354 (_1!14355 (h!29826 mapValue!13323)))) e!1370268 tp_is_empty!9519 setRes!16642 tp!664461))))

(declare-fun condSetEmpty!16642 () Bool)

(assert (=> b!2144393 (= condSetEmpty!16642 (= (_2!14355 (h!29826 mapValue!13323)) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun tp!664462 () Bool)

(declare-fun setElem!16642 () Context!2726)

(declare-fun setNonEmpty!16643 () Bool)

(assert (=> setNonEmpty!16643 (= setRes!16643 (and tp!664462 (inv!32139 setElem!16642) e!1370267))))

(declare-fun setRest!16643 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16643 (= (_2!14355 (h!29826 mapDefault!13323)) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16642 true) setRest!16643))))

(assert (= (and mapNonEmpty!13316 condMapEmpty!13323) mapIsEmpty!13323))

(assert (= (and mapNonEmpty!13316 (not condMapEmpty!13323)) mapNonEmpty!13323))

(assert (= b!2144393 b!2144392))

(assert (= (and b!2144393 condSetEmpty!16642) setIsEmpty!16643))

(assert (= (and b!2144393 (not condSetEmpty!16642)) setNonEmpty!16642))

(assert (= setNonEmpty!16642 b!2144388))

(assert (= (and mapNonEmpty!13323 ((_ is Cons!24425) mapValue!13323)) b!2144393))

(assert (= b!2144389 b!2144391))

(assert (= (and b!2144389 condSetEmpty!16643) setIsEmpty!16642))

(assert (= (and b!2144389 (not condSetEmpty!16643)) setNonEmpty!16643))

(assert (= setNonEmpty!16643 b!2144390))

(assert (= (and mapNonEmpty!13316 ((_ is Cons!24425) mapDefault!13323)) b!2144389))

(declare-fun m!2588859 () Bool)

(assert (=> setNonEmpty!16643 m!2588859))

(declare-fun m!2588861 () Bool)

(assert (=> setNonEmpty!16642 m!2588861))

(declare-fun m!2588863 () Bool)

(assert (=> mapNonEmpty!13323 m!2588863))

(declare-fun m!2588865 () Bool)

(assert (=> b!2144393 m!2588865))

(declare-fun m!2588867 () Bool)

(assert (=> b!2144389 m!2588867))

(declare-fun setIsEmpty!16646 () Bool)

(declare-fun setRes!16646 () Bool)

(assert (=> setIsEmpty!16646 setRes!16646))

(declare-fun e!1370281 () Bool)

(assert (=> mapNonEmpty!13316 (= tp!664308 e!1370281)))

(declare-fun b!2144402 () Bool)

(declare-fun e!1370279 () Bool)

(declare-fun tp!664477 () Bool)

(assert (=> b!2144402 (= e!1370279 tp!664477)))

(declare-fun e!1370280 () Bool)

(declare-fun setElem!16646 () Context!2726)

(declare-fun tp!664478 () Bool)

(declare-fun setNonEmpty!16646 () Bool)

(assert (=> setNonEmpty!16646 (= setRes!16646 (and tp!664478 (inv!32139 setElem!16646) e!1370280))))

(declare-fun setRest!16646 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16646 (= (_2!14355 (h!29826 mapValue!13315)) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16646 true) setRest!16646))))

(declare-fun tp!664479 () Bool)

(declare-fun b!2144403 () Bool)

(assert (=> b!2144403 (= e!1370281 (and (inv!32139 (_1!14354 (_1!14355 (h!29826 mapValue!13315)))) e!1370279 tp_is_empty!9519 setRes!16646 tp!664479))))

(declare-fun condSetEmpty!16646 () Bool)

(assert (=> b!2144403 (= condSetEmpty!16646 (= (_2!14355 (h!29826 mapValue!13315)) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun b!2144404 () Bool)

(declare-fun tp!664476 () Bool)

(assert (=> b!2144404 (= e!1370280 tp!664476)))

(assert (= b!2144403 b!2144402))

(assert (= (and b!2144403 condSetEmpty!16646) setIsEmpty!16646))

(assert (= (and b!2144403 (not condSetEmpty!16646)) setNonEmpty!16646))

(assert (= setNonEmpty!16646 b!2144404))

(assert (= (and mapNonEmpty!13316 ((_ is Cons!24425) mapValue!13315)) b!2144403))

(declare-fun m!2588869 () Bool)

(assert (=> setNonEmpty!16646 m!2588869))

(declare-fun m!2588871 () Bool)

(assert (=> b!2144403 m!2588871))

(declare-fun b!2144415 () Bool)

(declare-fun e!1370292 () Bool)

(declare-fun setRes!16651 () Bool)

(declare-fun tp!664499 () Bool)

(assert (=> b!2144415 (= e!1370292 (and setRes!16651 tp!664499))))

(declare-fun condSetEmpty!16651 () Bool)

(declare-fun mapDefault!13326 () List!24511)

(assert (=> b!2144415 (= condSetEmpty!16651 (= (_1!14356 (_1!14357 (h!29828 mapDefault!13326))) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun mapIsEmpty!13326 () Bool)

(declare-fun mapRes!13326 () Bool)

(assert (=> mapIsEmpty!13326 mapRes!13326))

(declare-fun tp!664500 () Bool)

(declare-fun e!1370290 () Bool)

(declare-fun setElem!16652 () Context!2726)

(declare-fun setNonEmpty!16651 () Bool)

(assert (=> setNonEmpty!16651 (= setRes!16651 (and tp!664500 (inv!32139 setElem!16652) e!1370290))))

(declare-fun setRest!16652 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16651 (= (_1!14356 (_1!14357 (h!29828 mapDefault!13326))) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16652 true) setRest!16652))))

(declare-fun condMapEmpty!13326 () Bool)

(assert (=> mapNonEmpty!13317 (= condMapEmpty!13326 (= mapRest!13316 ((as const (Array (_ BitVec 32) List!24511)) mapDefault!13326)))))

(assert (=> mapNonEmpty!13317 (= tp!664315 (and e!1370292 mapRes!13326))))

(declare-fun b!2144416 () Bool)

(declare-fun e!1370293 () Bool)

(declare-fun tp!664494 () Bool)

(assert (=> b!2144416 (= e!1370293 tp!664494)))

(declare-fun setNonEmpty!16652 () Bool)

(declare-fun tp!664496 () Bool)

(declare-fun setRes!16652 () Bool)

(declare-fun setElem!16651 () Context!2726)

(assert (=> setNonEmpty!16652 (= setRes!16652 (and tp!664496 (inv!32139 setElem!16651) e!1370293))))

(declare-fun mapValue!13326 () List!24511)

(declare-fun setRest!16651 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16652 (= (_1!14356 (_1!14357 (h!29828 mapValue!13326))) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16651 true) setRest!16651))))

(declare-fun setIsEmpty!16651 () Bool)

(assert (=> setIsEmpty!16651 setRes!16652))

(declare-fun b!2144417 () Bool)

(declare-fun e!1370291 () Bool)

(declare-fun tp!664498 () Bool)

(assert (=> b!2144417 (= e!1370291 (and setRes!16652 tp!664498))))

(declare-fun condSetEmpty!16652 () Bool)

(assert (=> b!2144417 (= condSetEmpty!16652 (= (_1!14356 (_1!14357 (h!29828 mapValue!13326))) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun setIsEmpty!16652 () Bool)

(assert (=> setIsEmpty!16652 setRes!16651))

(declare-fun b!2144418 () Bool)

(declare-fun tp!664495 () Bool)

(assert (=> b!2144418 (= e!1370290 tp!664495)))

(declare-fun mapNonEmpty!13326 () Bool)

(declare-fun tp!664497 () Bool)

(assert (=> mapNonEmpty!13326 (= mapRes!13326 (and tp!664497 e!1370291))))

(declare-fun mapKey!13326 () (_ BitVec 32))

(declare-fun mapRest!13326 () (Array (_ BitVec 32) List!24511))

(assert (=> mapNonEmpty!13326 (= mapRest!13316 (store mapRest!13326 mapKey!13326 mapValue!13326))))

(assert (= (and mapNonEmpty!13317 condMapEmpty!13326) mapIsEmpty!13326))

(assert (= (and mapNonEmpty!13317 (not condMapEmpty!13326)) mapNonEmpty!13326))

(assert (= (and b!2144417 condSetEmpty!16652) setIsEmpty!16651))

(assert (= (and b!2144417 (not condSetEmpty!16652)) setNonEmpty!16652))

(assert (= setNonEmpty!16652 b!2144416))

(assert (= (and mapNonEmpty!13326 ((_ is Cons!24427) mapValue!13326)) b!2144417))

(assert (= (and b!2144415 condSetEmpty!16651) setIsEmpty!16652))

(assert (= (and b!2144415 (not condSetEmpty!16651)) setNonEmpty!16651))

(assert (= setNonEmpty!16651 b!2144418))

(assert (= (and mapNonEmpty!13317 ((_ is Cons!24427) mapDefault!13326)) b!2144415))

(declare-fun m!2588873 () Bool)

(assert (=> setNonEmpty!16651 m!2588873))

(declare-fun m!2588875 () Bool)

(assert (=> setNonEmpty!16652 m!2588875))

(declare-fun m!2588877 () Bool)

(assert (=> mapNonEmpty!13326 m!2588877))

(declare-fun setIsEmpty!16653 () Bool)

(declare-fun setRes!16653 () Bool)

(assert (=> setIsEmpty!16653 setRes!16653))

(declare-fun b!2144420 () Bool)

(declare-fun e!1370295 () Bool)

(declare-fun tp!664503 () Bool)

(assert (=> b!2144420 (= e!1370295 tp!664503)))

(declare-fun setNonEmpty!16653 () Bool)

(declare-fun setElem!16653 () Context!2726)

(declare-fun tp!664501 () Bool)

(assert (=> setNonEmpty!16653 (= setRes!16653 (and tp!664501 (inv!32139 setElem!16653) e!1370295))))

(declare-fun setRest!16653 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16653 (= (_1!14356 (_1!14357 (h!29828 mapValue!13317))) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16653 true) setRest!16653))))

(declare-fun e!1370294 () Bool)

(assert (=> mapNonEmpty!13317 (= tp!664309 e!1370294)))

(declare-fun b!2144419 () Bool)

(declare-fun tp!664502 () Bool)

(assert (=> b!2144419 (= e!1370294 (and setRes!16653 tp!664502))))

(declare-fun condSetEmpty!16653 () Bool)

(assert (=> b!2144419 (= condSetEmpty!16653 (= (_1!14356 (_1!14357 (h!29828 mapValue!13317))) ((as const (Array Context!2726 Bool)) false)))))

(assert (= (and b!2144419 condSetEmpty!16653) setIsEmpty!16653))

(assert (= (and b!2144419 (not condSetEmpty!16653)) setNonEmpty!16653))

(assert (= setNonEmpty!16653 b!2144420))

(assert (= (and mapNonEmpty!13317 ((_ is Cons!24427) mapValue!13317)) b!2144419))

(declare-fun m!2588879 () Bool)

(assert (=> setNonEmpty!16653 m!2588879))

(declare-fun condSetEmpty!16654 () Bool)

(assert (=> setNonEmpty!16615 (= condSetEmpty!16654 (= setRest!16615 ((as const (Array Context!2726 Bool)) false)))))

(declare-fun setRes!16654 () Bool)

(assert (=> setNonEmpty!16615 (= tp!664321 setRes!16654)))

(declare-fun setIsEmpty!16654 () Bool)

(assert (=> setIsEmpty!16654 setRes!16654))

(declare-fun setElem!16654 () Context!2726)

(declare-fun tp!664504 () Bool)

(declare-fun e!1370296 () Bool)

(declare-fun setNonEmpty!16654 () Bool)

(assert (=> setNonEmpty!16654 (= setRes!16654 (and tp!664504 (inv!32139 setElem!16654) e!1370296))))

(declare-fun setRest!16654 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16654 (= setRest!16615 ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16654 true) setRest!16654))))

(declare-fun b!2144421 () Bool)

(declare-fun tp!664505 () Bool)

(assert (=> b!2144421 (= e!1370296 tp!664505)))

(assert (= (and setNonEmpty!16615 condSetEmpty!16654) setIsEmpty!16654))

(assert (= (and setNonEmpty!16615 (not condSetEmpty!16654)) setNonEmpty!16654))

(assert (= setNonEmpty!16654 b!2144421))

(declare-fun m!2588881 () Bool)

(assert (=> setNonEmpty!16654 m!2588881))

(declare-fun b!2144422 () Bool)

(declare-fun tp!664506 () Bool)

(declare-fun e!1370297 () Bool)

(declare-fun tp!664508 () Bool)

(assert (=> b!2144422 (= e!1370297 (and (inv!32137 (left!18771 (c!340670 totalInput!851))) tp!664508 (inv!32137 (right!19101 (c!340670 totalInput!851))) tp!664506))))

(declare-fun b!2144424 () Bool)

(declare-fun e!1370298 () Bool)

(declare-fun tp!664507 () Bool)

(assert (=> b!2144424 (= e!1370298 tp!664507)))

(declare-fun b!2144423 () Bool)

(assert (=> b!2144423 (= e!1370297 (and (inv!32145 (xs!10872 (c!340670 totalInput!851))) e!1370298))))

(assert (=> b!2144175 (= tp!664316 (and (inv!32137 (c!340670 totalInput!851)) e!1370297))))

(assert (= (and b!2144175 ((_ is Node!7930) (c!340670 totalInput!851))) b!2144422))

(assert (= b!2144423 b!2144424))

(assert (= (and b!2144175 ((_ is Leaf!11594) (c!340670 totalInput!851))) b!2144423))

(declare-fun m!2588883 () Bool)

(assert (=> b!2144422 m!2588883))

(declare-fun m!2588885 () Bool)

(assert (=> b!2144422 m!2588885))

(declare-fun m!2588887 () Bool)

(assert (=> b!2144423 m!2588887))

(assert (=> b!2144175 m!2588655))

(declare-fun setIsEmpty!16655 () Bool)

(declare-fun setRes!16655 () Bool)

(assert (=> setIsEmpty!16655 setRes!16655))

(declare-fun e!1370301 () Bool)

(assert (=> b!2144157 (= tp!664317 e!1370301)))

(declare-fun b!2144425 () Bool)

(declare-fun e!1370299 () Bool)

(declare-fun tp!664510 () Bool)

(assert (=> b!2144425 (= e!1370299 tp!664510)))

(declare-fun e!1370300 () Bool)

(declare-fun setNonEmpty!16655 () Bool)

(declare-fun setElem!16655 () Context!2726)

(declare-fun tp!664511 () Bool)

(assert (=> setNonEmpty!16655 (= setRes!16655 (and tp!664511 (inv!32139 setElem!16655) e!1370300))))

(declare-fun setRest!16655 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16655 (= (_2!14355 (h!29826 (zeroValue!3060 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16655 true) setRest!16655))))

(declare-fun tp!664512 () Bool)

(declare-fun b!2144426 () Bool)

(assert (=> b!2144426 (= e!1370301 (and (inv!32139 (_1!14354 (_1!14355 (h!29826 (zeroValue!3060 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979)))))))))) e!1370299 tp_is_empty!9519 setRes!16655 tp!664512))))

(declare-fun condSetEmpty!16655 () Bool)

(assert (=> b!2144426 (= condSetEmpty!16655 (= (_2!14355 (h!29826 (zeroValue!3060 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979)))))))) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun b!2144427 () Bool)

(declare-fun tp!664509 () Bool)

(assert (=> b!2144427 (= e!1370300 tp!664509)))

(assert (= b!2144426 b!2144425))

(assert (= (and b!2144426 condSetEmpty!16655) setIsEmpty!16655))

(assert (= (and b!2144426 (not condSetEmpty!16655)) setNonEmpty!16655))

(assert (= setNonEmpty!16655 b!2144427))

(assert (= (and b!2144157 ((_ is Cons!24425) (zeroValue!3060 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979)))))))) b!2144426))

(declare-fun m!2588889 () Bool)

(assert (=> setNonEmpty!16655 m!2588889))

(declare-fun m!2588891 () Bool)

(assert (=> b!2144426 m!2588891))

(declare-fun setIsEmpty!16656 () Bool)

(declare-fun setRes!16656 () Bool)

(assert (=> setIsEmpty!16656 setRes!16656))

(declare-fun e!1370304 () Bool)

(assert (=> b!2144157 (= tp!664318 e!1370304)))

(declare-fun b!2144428 () Bool)

(declare-fun e!1370302 () Bool)

(declare-fun tp!664514 () Bool)

(assert (=> b!2144428 (= e!1370302 tp!664514)))

(declare-fun e!1370303 () Bool)

(declare-fun setElem!16656 () Context!2726)

(declare-fun setNonEmpty!16656 () Bool)

(declare-fun tp!664515 () Bool)

(assert (=> setNonEmpty!16656 (= setRes!16656 (and tp!664515 (inv!32139 setElem!16656) e!1370303))))

(declare-fun setRest!16656 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16656 (= (_2!14355 (h!29826 (minValue!3060 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16656 true) setRest!16656))))

(declare-fun tp!664516 () Bool)

(declare-fun b!2144429 () Bool)

(assert (=> b!2144429 (= e!1370304 (and (inv!32139 (_1!14354 (_1!14355 (h!29826 (minValue!3060 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979)))))))))) e!1370302 tp_is_empty!9519 setRes!16656 tp!664516))))

(declare-fun condSetEmpty!16656 () Bool)

(assert (=> b!2144429 (= condSetEmpty!16656 (= (_2!14355 (h!29826 (minValue!3060 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979)))))))) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun b!2144430 () Bool)

(declare-fun tp!664513 () Bool)

(assert (=> b!2144430 (= e!1370303 tp!664513)))

(assert (= b!2144429 b!2144428))

(assert (= (and b!2144429 condSetEmpty!16656) setIsEmpty!16656))

(assert (= (and b!2144429 (not condSetEmpty!16656)) setNonEmpty!16656))

(assert (= setNonEmpty!16656 b!2144430))

(assert (= (and b!2144157 ((_ is Cons!24425) (minValue!3060 (v!29015 (underlying!5799 (v!29016 (underlying!5800 (cache!3097 cacheUp!979)))))))) b!2144429))

(declare-fun m!2588893 () Bool)

(assert (=> setNonEmpty!16656 m!2588893))

(declare-fun m!2588895 () Bool)

(assert (=> b!2144429 m!2588895))

(declare-fun setIsEmpty!16657 () Bool)

(declare-fun setRes!16657 () Bool)

(assert (=> setIsEmpty!16657 setRes!16657))

(declare-fun e!1370307 () Bool)

(assert (=> b!2144184 (= tp!664313 e!1370307)))

(declare-fun b!2144431 () Bool)

(declare-fun e!1370305 () Bool)

(declare-fun tp!664518 () Bool)

(assert (=> b!2144431 (= e!1370305 tp!664518)))

(declare-fun tp!664519 () Bool)

(declare-fun setNonEmpty!16657 () Bool)

(declare-fun setElem!16657 () Context!2726)

(declare-fun e!1370306 () Bool)

(assert (=> setNonEmpty!16657 (= setRes!16657 (and tp!664519 (inv!32139 setElem!16657) e!1370306))))

(declare-fun setRest!16657 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16657 (= (_2!14355 (h!29826 mapDefault!13317)) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16657 true) setRest!16657))))

(declare-fun tp!664520 () Bool)

(declare-fun b!2144432 () Bool)

(assert (=> b!2144432 (= e!1370307 (and (inv!32139 (_1!14354 (_1!14355 (h!29826 mapDefault!13317)))) e!1370305 tp_is_empty!9519 setRes!16657 tp!664520))))

(declare-fun condSetEmpty!16657 () Bool)

(assert (=> b!2144432 (= condSetEmpty!16657 (= (_2!14355 (h!29826 mapDefault!13317)) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun b!2144433 () Bool)

(declare-fun tp!664517 () Bool)

(assert (=> b!2144433 (= e!1370306 tp!664517)))

(assert (= b!2144432 b!2144431))

(assert (= (and b!2144432 condSetEmpty!16657) setIsEmpty!16657))

(assert (= (and b!2144432 (not condSetEmpty!16657)) setNonEmpty!16657))

(assert (= setNonEmpty!16657 b!2144433))

(assert (= (and b!2144184 ((_ is Cons!24425) mapDefault!13317)) b!2144432))

(declare-fun m!2588897 () Bool)

(assert (=> setNonEmpty!16657 m!2588897))

(declare-fun m!2588899 () Bool)

(assert (=> b!2144432 m!2588899))

(declare-fun tp!664523 () Bool)

(declare-fun setElem!16658 () Context!2726)

(declare-fun setNonEmpty!16658 () Bool)

(declare-fun setRes!16658 () Bool)

(declare-fun e!1370310 () Bool)

(assert (=> setNonEmpty!16658 (= setRes!16658 (and tp!664523 (inv!32139 setElem!16658) e!1370310))))

(declare-fun setRest!16658 () (InoxSet Context!2726))

(assert (=> setNonEmpty!16658 (= (_2!14353 (h!29825 mapDefault!13316)) ((_ map or) (store ((as const (Array Context!2726 Bool)) false) setElem!16658 true) setRest!16658))))

(declare-fun tp!664525 () Bool)

(declare-fun e!1370309 () Bool)

(declare-fun tp!664521 () Bool)

(declare-fun b!2144434 () Bool)

(declare-fun e!1370308 () Bool)

(assert (=> b!2144434 (= e!1370309 (and tp!664525 (inv!32139 (_2!14352 (_1!14353 (h!29825 mapDefault!13316)))) e!1370308 tp_is_empty!9519 setRes!16658 tp!664521))))

(declare-fun condSetEmpty!16658 () Bool)

(assert (=> b!2144434 (= condSetEmpty!16658 (= (_2!14353 (h!29825 mapDefault!13316)) ((as const (Array Context!2726 Bool)) false)))))

(declare-fun b!2144435 () Bool)

(declare-fun tp!664522 () Bool)

(assert (=> b!2144435 (= e!1370310 tp!664522)))

(assert (=> b!2144185 (= tp!664310 e!1370309)))

(declare-fun b!2144436 () Bool)

(declare-fun tp!664524 () Bool)

(assert (=> b!2144436 (= e!1370308 tp!664524)))

(declare-fun setIsEmpty!16658 () Bool)

(assert (=> setIsEmpty!16658 setRes!16658))

(assert (= b!2144434 b!2144436))

(assert (= (and b!2144434 condSetEmpty!16658) setIsEmpty!16658))

(assert (= (and b!2144434 (not condSetEmpty!16658)) setNonEmpty!16658))

(assert (= setNonEmpty!16658 b!2144435))

(assert (= (and b!2144185 ((_ is Cons!24424) mapDefault!13316)) b!2144434))

(declare-fun m!2588901 () Bool)

(assert (=> setNonEmpty!16658 m!2588901))

(declare-fun m!2588903 () Bool)

(assert (=> b!2144434 m!2588903))

(declare-fun b_lambda!70705 () Bool)

(assert (= b_lambda!70701 (or b!2144164 b_lambda!70705)))

(declare-fun bs!445333 () Bool)

(declare-fun d!645150 () Bool)

(assert (= bs!445333 (and d!645150 b!2144164)))

(assert (=> bs!445333 (= (dynLambda!11375 lambda!80375 (h!29827 stack!8)) (= (res!925376 (h!29827 stack!8)) lt!798571))))

(assert (=> b!2144255 d!645150))

(declare-fun b_lambda!70707 () Bool)

(assert (= b_lambda!70703 (or b!2144174 b_lambda!70707)))

(declare-fun bs!445334 () Bool)

(declare-fun d!645152 () Bool)

(assert (= bs!445334 (and d!645152 b!2144174)))

(assert (=> bs!445334 (= (dynLambda!11375 lambda!80376 (h!29827 stack!8)) (= (totalInput!3157 (h!29827 stack!8)) totalInput!851))))

(assert (=> b!2144272 d!645152))

(check-sat (not b!2144203) (not b!2144366) (not b!2144325) (not b!2144298) (not b!2144347) (not d!645136) (not d!645140) (not setNonEmpty!16622) (not b!2144415) (not b!2144243) (not b!2144247) (not b!2144419) (not b!2144422) (not b!2144206) b_and!172753 (not setNonEmpty!16633) (not b!2144420) (not b!2144304) (not b!2144344) (not b!2144434) (not b!2144233) (not b_next!63879) (not d!645116) (not mapNonEmpty!13323) (not b!2144373) (not b!2144427) (not d!645118) (not b!2144418) (not d!645134) (not setNonEmpty!16634) (not b!2144229) (not d!645112) (not b!2144368) (not setNonEmpty!16656) (not b!2144390) (not b!2144423) (not setNonEmpty!16637) (not b!2144238) (not b!2144230) (not b!2144346) (not b!2144312) (not b!2144323) (not b!2144311) (not d!645138) (not setNonEmpty!16651) (not b!2144236) (not setNonEmpty!16657) (not b!2144430) (not b!2144297) (not b_next!63877) (not d!645114) (not d!645148) (not setNonEmpty!16655) (not b!2144175) (not b!2144250) (not b!2144435) (not b!2144294) (not b!2144276) (not b!2144271) (not b!2144392) (not setNonEmpty!16628) (not b!2144431) (not b!2144429) (not b!2144417) b_and!172759 b_and!172755 (not setNonEmpty!16618) (not b!2144348) (not b!2144404) b_and!172763 b_and!172761 (not b_next!63883) (not b!2144364) (not setNonEmpty!16627) (not bm!128820) (not b!2144421) (not b!2144402) (not b!2144433) (not setNonEmpty!16621) (not d!645096) (not setNonEmpty!16643) (not setNonEmpty!16629) (not b!2144283) (not b_next!63885) (not b!2144159) (not b!2144326) (not b_next!63887) (not d!645094) (not b_next!63881) (not b!2144273) (not d!645092) tp_is_empty!9519 (not setNonEmpty!16658) (not b!2144362) (not setNonEmpty!16632) (not b!2144342) (not bm!128819) (not b!2144321) (not b!2144299) (not b_lambda!70705) (not b!2144235) (not b!2144416) (not b!2144436) (not b!2144341) (not b!2144268) (not b!2144285) (not mapNonEmpty!13320) (not b!2144295) b_and!172757 (not b!2144244) (not b!2144365) (not b!2144256) (not b!2144428) (not mapNonEmpty!13326) (not b!2144214) (not b!2144349) (not b!2144389) (not b!2144426) (not b!2144391) (not setNonEmpty!16652) (not b!2144213) (not b!2144208) (not b!2144367) (not b!2144424) (not setNonEmpty!16654) (not b!2144432) (not b!2144205) (not b!2144322) (not b!2144169) (not b!2144388) (not b!2144279) (not b!2144425) (not d!645132) (not b!2144343) (not b!2144345) (not b!2144227) (not b!2144282) (not setNonEmpty!16642) (not setNonEmpty!16646) (not b!2144324) (not b!2144360) (not b!2144393) (not d!645088) (not b!2144361) (not setNonEmpty!16653) (not b_lambda!70707) (not b!2144363) (not d!645110) (not b!2144296) (not b!2144232) (not b!2144403))
(check-sat b_and!172753 (not b_next!63879) (not b_next!63877) (not b_next!63885) b_and!172757 b_and!172759 b_and!172755 b_and!172763 b_and!172761 (not b_next!63883) (not b_next!63887) (not b_next!63881))
