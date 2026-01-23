; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207564 () Bool)

(assert start!207564)

(declare-fun b!2133302 () Bool)

(declare-fun b_free!62405 () Bool)

(declare-fun b_next!63109 () Bool)

(assert (=> b!2133302 (= b_free!62405 (not b_next!63109))))

(declare-fun tp!656896 () Bool)

(declare-fun b_and!171985 () Bool)

(assert (=> b!2133302 (= tp!656896 b_and!171985)))

(declare-fun b!2133333 () Bool)

(declare-fun b_free!62407 () Bool)

(declare-fun b_next!63111 () Bool)

(assert (=> b!2133333 (= b_free!62407 (not b_next!63111))))

(declare-fun tp!656892 () Bool)

(declare-fun b_and!171987 () Bool)

(assert (=> b!2133333 (= tp!656892 b_and!171987)))

(declare-fun b!2133320 () Bool)

(declare-fun b_free!62409 () Bool)

(declare-fun b_next!63113 () Bool)

(assert (=> b!2133320 (= b_free!62409 (not b_next!63113))))

(declare-fun tp!656876 () Bool)

(declare-fun b_and!171989 () Bool)

(assert (=> b!2133320 (= tp!656876 b_and!171989)))

(declare-fun b!2133310 () Bool)

(declare-fun b_free!62411 () Bool)

(declare-fun b_next!63115 () Bool)

(assert (=> b!2133310 (= b_free!62411 (not b_next!63115))))

(declare-fun tp!656898 () Bool)

(declare-fun b_and!171991 () Bool)

(assert (=> b!2133310 (= tp!656898 b_and!171991)))

(declare-fun b!2133337 () Bool)

(declare-fun b_free!62413 () Bool)

(declare-fun b_next!63117 () Bool)

(assert (=> b!2133337 (= b_free!62413 (not b_next!63117))))

(declare-fun tp!656886 () Bool)

(declare-fun b_and!171993 () Bool)

(assert (=> b!2133337 (= tp!656886 b_and!171993)))

(declare-fun b!2133317 () Bool)

(declare-fun b_free!62415 () Bool)

(declare-fun b_next!63119 () Bool)

(assert (=> b!2133317 (= b_free!62415 (not b_next!63119))))

(declare-fun tp!656888 () Bool)

(declare-fun b_and!171995 () Bool)

(assert (=> b!2133317 (= tp!656888 b_and!171995)))

(declare-fun b!2133307 () Bool)

(assert (=> b!2133307 true))

(declare-fun bs!444284 () Bool)

(declare-fun b!2133325 () Bool)

(assert (= bs!444284 (and b!2133325 b!2133307)))

(declare-fun lambda!79323 () Int)

(declare-fun lambda!79322 () Int)

(assert (=> bs!444284 (not (= lambda!79323 lambda!79322))))

(assert (=> b!2133325 true))

(declare-fun b!2133298 () Bool)

(declare-fun e!1361186 () Bool)

(declare-fun e!1361163 () Bool)

(assert (=> b!2133298 (= e!1361186 (not e!1361163))))

(declare-fun res!921945 () Bool)

(assert (=> b!2133298 (=> res!921945 e!1361163)))

(declare-datatypes ((C!11604 0))(
  ( (C!11605 (val!6788 Int)) )
))
(declare-datatypes ((Regex!5729 0))(
  ( (ElementMatch!5729 (c!340255 C!11604)) (Concat!10031 (regOne!11970 Regex!5729) (regTwo!11970 Regex!5729)) (EmptyExpr!5729) (Star!5729 (reg!6058 Regex!5729)) (EmptyLang!5729) (Union!5729 (regOne!11971 Regex!5729) (regTwo!11971 Regex!5729)) )
))
(declare-datatypes ((List!24148 0))(
  ( (Nil!24064) (Cons!24064 (h!29465 Regex!5729) (t!196676 List!24148)) )
))
(declare-datatypes ((Context!2598 0))(
  ( (Context!2599 (exprs!1799 List!24148)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3194 0))(
  ( (tuple3!3195 (_1!13980 (InoxSet Context!2598)) (_2!13980 Int) (_3!2067 Int)) )
))
(declare-datatypes ((tuple2!23826 0))(
  ( (tuple2!23827 (_1!13981 tuple3!3194) (_2!13981 Int)) )
))
(declare-datatypes ((List!24149 0))(
  ( (Nil!24065) (Cons!24065 (h!29466 tuple2!23826) (t!196677 List!24149)) )
))
(declare-datatypes ((array!8935 0))(
  ( (array!8936 (arr!3979 (Array (_ BitVec 32) (_ BitVec 64))) (size!18822 (_ BitVec 32))) )
))
(declare-datatypes ((array!8937 0))(
  ( (array!8938 (arr!3980 (Array (_ BitVec 32) List!24149)) (size!18823 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5258 0))(
  ( (LongMapFixedSize!5259 (defaultEntry!2994 Int) (mask!6809 (_ BitVec 32)) (extraKeys!2877 (_ BitVec 32)) (zeroValue!2887 List!24149) (minValue!2887 List!24149) (_size!5309 (_ BitVec 32)) (_keys!2926 array!8935) (_values!2909 array!8937) (_vacant!2690 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10341 0))(
  ( (Cell!10342 (v!28624 LongMapFixedSize!5258)) )
))
(declare-datatypes ((List!24150 0))(
  ( (Nil!24066) (Cons!24066 (h!29467 C!11604) (t!196678 List!24150)) )
))
(declare-datatypes ((IArray!15739 0))(
  ( (IArray!15740 (innerList!7927 List!24150)) )
))
(declare-datatypes ((Conc!7867 0))(
  ( (Node!7867 (left!18548 Conc!7867) (right!18878 Conc!7867) (csize!15964 Int) (cheight!8078 Int)) (Leaf!11499 (xs!10809 IArray!15739) (csize!15965 Int)) (Empty!7867) )
))
(declare-datatypes ((MutLongMap!2629 0))(
  ( (LongMap!2629 (underlying!5453 Cell!10341)) (MutLongMapExt!2628 (__x!16063 Int)) )
))
(declare-datatypes ((Cell!10343 0))(
  ( (Cell!10344 (v!28625 MutLongMap!2629)) )
))
(declare-datatypes ((Hashable!2543 0))(
  ( (HashableExt!2542 (__x!16064 Int)) )
))
(declare-datatypes ((MutableMap!2543 0))(
  ( (MutableMapExt!2542 (__x!16065 Int)) (HashMap!2543 (underlying!5454 Cell!10343) (hashF!4466 Hashable!2543) (_size!5310 (_ BitVec 32)) (defaultValue!2705 Int)) )
))
(declare-datatypes ((BalanceConc!15496 0))(
  ( (BalanceConc!15497 (c!340256 Conc!7867)) )
))
(declare-datatypes ((CacheFurthestNullable!704 0))(
  ( (CacheFurthestNullable!705 (cache!2924 MutableMap!2543) (totalInput!3034 BalanceConc!15496)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!704)

(declare-fun lastNullablePos!123 () Int)

(declare-fun z!3839 () (InoxSet Context!2598))

(declare-fun from!1043 () Int)

(get-info :version)

(declare-datatypes ((Option!4902 0))(
  ( (None!4901) (Some!4901 (v!28626 Int)) )
))
(declare-fun get!7376 (CacheFurthestNullable!704 (InoxSet Context!2598) Int Int) Option!4902)

(assert (=> b!2133298 (= res!921945 ((_ is Some!4901) (get!7376 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(declare-datatypes ((StackFrame!150 0))(
  ( (StackFrame!151 (z!5803 (InoxSet Context!2598)) (from!2689 Int) (lastNullablePos!376 Int) (res!921952 Int) (totalInput!3035 BalanceConc!15496)) )
))
(declare-datatypes ((List!24151 0))(
  ( (Nil!24067) (Cons!24067 (h!29468 StackFrame!150) (t!196679 List!24151)) )
))
(declare-fun stack!8 () List!24151)

(declare-fun forall!4920 (List!24151 Int) Bool)

(assert (=> b!2133298 (forall!4920 stack!8 lambda!79322)))

(declare-fun b!2133299 () Bool)

(declare-fun e!1361185 () Bool)

(declare-fun tp!656901 () Bool)

(assert (=> b!2133299 (= e!1361185 tp!656901)))

(declare-fun e!1361167 () Bool)

(declare-fun e!1361190 () Bool)

(declare-fun e!1361197 () Bool)

(declare-fun b!2133300 () Bool)

(declare-fun inv!31714 (BalanceConc!15496) Bool)

(assert (=> b!2133300 (= e!1361167 (and e!1361190 (inv!31714 (totalInput!3034 cacheFurthestNullable!114)) e!1361197))))

(declare-fun tp!656900 () Bool)

(declare-fun e!1361193 () Bool)

(declare-fun tp!656889 () Bool)

(declare-fun e!1361187 () Bool)

(declare-fun array_inv!2846 (array!8935) Bool)

(declare-fun array_inv!2847 (array!8937) Bool)

(assert (=> b!2133302 (= e!1361187 (and tp!656896 tp!656900 tp!656889 (array_inv!2846 (_keys!2926 (v!28624 (underlying!5453 (v!28625 (underlying!5454 (cache!2924 cacheFurthestNullable!114))))))) (array_inv!2847 (_values!2909 (v!28624 (underlying!5453 (v!28625 (underlying!5454 (cache!2924 cacheFurthestNullable!114))))))) e!1361193))))

(declare-fun b!2133303 () Bool)

(declare-fun e!1361171 () Bool)

(declare-fun e!1361182 () Bool)

(assert (=> b!2133303 (= e!1361171 e!1361182)))

(declare-fun b!2133304 () Bool)

(declare-fun res!921946 () Bool)

(declare-fun e!1361181 () Bool)

(assert (=> b!2133304 (=> (not res!921946) (not e!1361181))))

(declare-fun e!1361176 () Bool)

(assert (=> b!2133304 (= res!921946 e!1361176)))

(declare-fun res!921943 () Bool)

(assert (=> b!2133304 (=> res!921943 e!1361176)))

(declare-fun nullableZipper!109 ((InoxSet Context!2598)) Bool)

(assert (=> b!2133304 (= res!921943 (not (nullableZipper!109 z!3839)))))

(declare-fun b!2133305 () Bool)

(declare-fun e!1361178 () Bool)

(declare-fun e!1361168 () Bool)

(assert (=> b!2133305 (= e!1361178 e!1361168)))

(declare-fun lt!796834 () Bool)

(declare-fun lt!796828 () Int)

(declare-fun b!2133306 () Bool)

(declare-fun lt!796830 () Int)

(assert (=> b!2133306 (= e!1361163 (or (< (+ 1 from!1043) 0) (> (+ 1 from!1043) lt!796830) (< lt!796828 (- 1)) (>= lt!796828 (+ 1 from!1043)) (not lt!796834) (= lt!796828 from!1043)))))

(declare-datatypes ((tuple3!3196 0))(
  ( (tuple3!3197 (_1!13982 Regex!5729) (_2!13982 Context!2598) (_3!2068 C!11604)) )
))
(declare-datatypes ((tuple2!23828 0))(
  ( (tuple2!23829 (_1!13983 tuple3!3196) (_2!13983 (InoxSet Context!2598))) )
))
(declare-datatypes ((List!24152 0))(
  ( (Nil!24068) (Cons!24068 (h!29469 tuple2!23828) (t!196680 List!24152)) )
))
(declare-datatypes ((tuple2!23830 0))(
  ( (tuple2!23831 (_1!13984 Context!2598) (_2!13984 C!11604)) )
))
(declare-datatypes ((tuple2!23832 0))(
  ( (tuple2!23833 (_1!13985 tuple2!23830) (_2!13985 (InoxSet Context!2598))) )
))
(declare-datatypes ((List!24153 0))(
  ( (Nil!24069) (Cons!24069 (h!29470 tuple2!23832) (t!196681 List!24153)) )
))
(declare-datatypes ((Hashable!2544 0))(
  ( (HashableExt!2543 (__x!16066 Int)) )
))
(declare-datatypes ((Hashable!2545 0))(
  ( (HashableExt!2544 (__x!16067 Int)) )
))
(declare-datatypes ((array!8939 0))(
  ( (array!8940 (arr!3981 (Array (_ BitVec 32) List!24153)) (size!18824 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5260 0))(
  ( (LongMapFixedSize!5261 (defaultEntry!2995 Int) (mask!6810 (_ BitVec 32)) (extraKeys!2878 (_ BitVec 32)) (zeroValue!2888 List!24153) (minValue!2888 List!24153) (_size!5311 (_ BitVec 32)) (_keys!2927 array!8935) (_values!2910 array!8939) (_vacant!2691 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10345 0))(
  ( (Cell!10346 (v!28627 LongMapFixedSize!5260)) )
))
(declare-datatypes ((MutLongMap!2630 0))(
  ( (LongMap!2630 (underlying!5455 Cell!10345)) (MutLongMapExt!2629 (__x!16068 Int)) )
))
(declare-datatypes ((Cell!10347 0))(
  ( (Cell!10348 (v!28628 MutLongMap!2630)) )
))
(declare-datatypes ((MutableMap!2544 0))(
  ( (MutableMapExt!2543 (__x!16069 Int)) (HashMap!2544 (underlying!5456 Cell!10347) (hashF!4467 Hashable!2544) (_size!5312 (_ BitVec 32)) (defaultValue!2706 Int)) )
))
(declare-datatypes ((CacheUp!1762 0))(
  ( (CacheUp!1763 (cache!2925 MutableMap!2544)) )
))
(declare-datatypes ((array!8941 0))(
  ( (array!8942 (arr!3982 (Array (_ BitVec 32) List!24152)) (size!18825 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5262 0))(
  ( (LongMapFixedSize!5263 (defaultEntry!2996 Int) (mask!6811 (_ BitVec 32)) (extraKeys!2879 (_ BitVec 32)) (zeroValue!2889 List!24152) (minValue!2889 List!24152) (_size!5313 (_ BitVec 32)) (_keys!2928 array!8935) (_values!2911 array!8941) (_vacant!2692 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10349 0))(
  ( (Cell!10350 (v!28629 LongMapFixedSize!5262)) )
))
(declare-datatypes ((MutLongMap!2631 0))(
  ( (LongMap!2631 (underlying!5457 Cell!10349)) (MutLongMapExt!2630 (__x!16070 Int)) )
))
(declare-datatypes ((Cell!10351 0))(
  ( (Cell!10352 (v!28630 MutLongMap!2631)) )
))
(declare-datatypes ((MutableMap!2545 0))(
  ( (MutableMapExt!2544 (__x!16071 Int)) (HashMap!2545 (underlying!5458 Cell!10351) (hashF!4468 Hashable!2545) (_size!5314 (_ BitVec 32)) (defaultValue!2707 Int)) )
))
(declare-datatypes ((CacheDown!1744 0))(
  ( (CacheDown!1745 (cache!2926 MutableMap!2545)) )
))
(declare-datatypes ((tuple3!3198 0))(
  ( (tuple3!3199 (_1!13986 (InoxSet Context!2598)) (_2!13986 CacheUp!1762) (_3!2069 CacheDown!1744)) )
))
(declare-fun lt!796829 () tuple3!3198)

(declare-fun totalInput!851 () BalanceConc!15496)

(declare-fun lt!796835 () Int)

(declare-fun furthestNullablePosition!43 ((InoxSet Context!2598) Int BalanceConc!15496 Int Int) Int)

(assert (=> b!2133306 (= lt!796835 (furthestNullablePosition!43 (_1!13986 lt!796829) (+ 1 from!1043) totalInput!851 lt!796830 lt!796828))))

(assert (=> b!2133306 (= lt!796828 (ite lt!796834 from!1043 lastNullablePos!123))))

(assert (=> b!2133306 (= lt!796834 (nullableZipper!109 (_1!13986 lt!796829)))))

(declare-fun cacheDown!1098 () CacheDown!1744)

(declare-fun cacheUp!979 () CacheUp!1762)

(declare-fun derivationStepZipperMem!33 ((InoxSet Context!2598) C!11604 CacheUp!1762 CacheDown!1744) tuple3!3198)

(declare-fun apply!5932 (BalanceConc!15496 Int) C!11604)

(assert (=> b!2133306 (= lt!796829 (derivationStepZipperMem!33 z!3839 (apply!5932 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(assert (=> b!2133307 (= e!1361181 e!1361186)))

(declare-fun res!921940 () Bool)

(assert (=> b!2133307 (=> (not res!921940) (not e!1361186))))

(assert (=> b!2133307 (= res!921940 (forall!4920 stack!8 lambda!79322))))

(declare-fun lt!796832 () Int)

(assert (=> b!2133307 (= lt!796832 (furthestNullablePosition!43 z!3839 from!1043 totalInput!851 lt!796830 lastNullablePos!123))))

(declare-fun b!2133308 () Bool)

(declare-fun res!921949 () Bool)

(assert (=> b!2133308 (=> res!921949 e!1361163)))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2133308 (= res!921949 (= from!1043 totalInputSize!296))))

(declare-fun b!2133309 () Bool)

(assert (=> b!2133309 (= e!1361176 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun e!1361169 () Bool)

(assert (=> b!2133310 (= e!1361190 (and e!1361169 tp!656898))))

(declare-fun b!2133311 () Bool)

(declare-fun tp!656891 () Bool)

(declare-fun mapRes!12665 () Bool)

(assert (=> b!2133311 (= e!1361193 (and tp!656891 mapRes!12665))))

(declare-fun condMapEmpty!12666 () Bool)

(declare-fun mapDefault!12666 () List!24149)

(assert (=> b!2133311 (= condMapEmpty!12666 (= (arr!3980 (_values!2909 (v!28624 (underlying!5453 (v!28625 (underlying!5454 (cache!2924 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24149)) mapDefault!12666)))))

(declare-fun mapIsEmpty!12664 () Bool)

(assert (=> mapIsEmpty!12664 mapRes!12665))

(declare-fun mapNonEmpty!12664 () Bool)

(declare-fun mapRes!12664 () Bool)

(declare-fun tp!656880 () Bool)

(declare-fun tp!656902 () Bool)

(assert (=> mapNonEmpty!12664 (= mapRes!12664 (and tp!656880 tp!656902))))

(declare-fun mapKey!12664 () (_ BitVec 32))

(declare-fun mapValue!12664 () List!24153)

(declare-fun mapRest!12666 () (Array (_ BitVec 32) List!24153))

(assert (=> mapNonEmpty!12664 (= (arr!3981 (_values!2910 (v!28627 (underlying!5455 (v!28628 (underlying!5456 (cache!2925 cacheUp!979))))))) (store mapRest!12666 mapKey!12664 mapValue!12664))))

(declare-fun res!921950 () Bool)

(declare-fun e!1361174 () Bool)

(assert (=> start!207564 (=> (not res!921950) (not e!1361174))))

(assert (=> start!207564 (= res!921950 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207564 e!1361174))

(declare-fun inv!31715 (CacheFurthestNullable!704) Bool)

(assert (=> start!207564 (and (inv!31715 cacheFurthestNullable!114) e!1361167)))

(assert (=> start!207564 true))

(declare-fun e!1361173 () Bool)

(declare-fun inv!31716 (CacheDown!1744) Bool)

(assert (=> start!207564 (and (inv!31716 cacheDown!1098) e!1361173)))

(declare-fun e!1361164 () Bool)

(declare-fun inv!31717 (CacheUp!1762) Bool)

(assert (=> start!207564 (and (inv!31717 cacheUp!979) e!1361164)))

(declare-fun condSetEmpty!15840 () Bool)

(assert (=> start!207564 (= condSetEmpty!15840 (= z!3839 ((as const (Array Context!2598 Bool)) false)))))

(declare-fun setRes!15840 () Bool)

(assert (=> start!207564 setRes!15840))

(declare-fun e!1361192 () Bool)

(assert (=> start!207564 (and (inv!31714 totalInput!851) e!1361192)))

(declare-fun e!1361183 () Bool)

(assert (=> start!207564 e!1361183))

(declare-fun b!2133301 () Bool)

(declare-fun res!921942 () Bool)

(assert (=> b!2133301 (=> (not res!921942) (not e!1361181))))

(assert (=> b!2133301 (= res!921942 (= (totalInput!3034 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2133312 () Bool)

(declare-fun tp!656893 () Bool)

(declare-fun inv!31718 (Conc!7867) Bool)

(assert (=> b!2133312 (= e!1361197 (and (inv!31718 (c!340256 (totalInput!3034 cacheFurthestNullable!114))) tp!656893))))

(declare-fun b!2133313 () Bool)

(declare-fun e!1361177 () Bool)

(assert (=> b!2133313 (= e!1361182 e!1361177)))

(declare-fun b!2133314 () Bool)

(declare-fun e!1361195 () Bool)

(declare-fun tp!656895 () Bool)

(declare-fun mapRes!12666 () Bool)

(assert (=> b!2133314 (= e!1361195 (and tp!656895 mapRes!12666))))

(declare-fun condMapEmpty!12665 () Bool)

(declare-fun mapDefault!12664 () List!24152)

(assert (=> b!2133314 (= condMapEmpty!12665 (= (arr!3982 (_values!2911 (v!28629 (underlying!5457 (v!28630 (underlying!5458 (cache!2926 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24152)) mapDefault!12664)))))

(declare-fun mapIsEmpty!12665 () Bool)

(assert (=> mapIsEmpty!12665 mapRes!12664))

(declare-fun b!2133315 () Bool)

(declare-fun res!921948 () Bool)

(assert (=> b!2133315 (=> res!921948 e!1361163)))

(declare-fun lostCauseZipper!82 ((InoxSet Context!2598)) Bool)

(assert (=> b!2133315 (= res!921948 (lostCauseZipper!82 z!3839))))

(declare-fun b!2133316 () Bool)

(declare-fun res!921944 () Bool)

(assert (=> b!2133316 (=> (not res!921944) (not e!1361181))))

(declare-fun valid!2059 (CacheFurthestNullable!704) Bool)

(assert (=> b!2133316 (= res!921944 (valid!2059 cacheFurthestNullable!114))))

(declare-fun e!1361179 () Bool)

(declare-fun e!1361170 () Bool)

(assert (=> b!2133317 (= e!1361179 (and e!1361170 tp!656888))))

(declare-fun e!1361162 () Bool)

(declare-fun b!2133318 () Bool)

(declare-fun e!1361184 () Bool)

(declare-fun setRes!15841 () Bool)

(assert (=> b!2133318 (= e!1361162 (and setRes!15841 (inv!31714 (totalInput!3035 (h!29468 stack!8))) e!1361184))))

(declare-fun condSetEmpty!15841 () Bool)

(assert (=> b!2133318 (= condSetEmpty!15841 (= (z!5803 (h!29468 stack!8)) ((as const (Array Context!2598 Bool)) false)))))

(declare-fun b!2133319 () Bool)

(declare-fun e!1361180 () Bool)

(assert (=> b!2133319 (= e!1361180 e!1361187)))

(declare-fun tp!656890 () Bool)

(declare-fun tp!656874 () Bool)

(declare-fun array_inv!2848 (array!8941) Bool)

(assert (=> b!2133320 (= e!1361177 (and tp!656876 tp!656890 tp!656874 (array_inv!2846 (_keys!2928 (v!28629 (underlying!5457 (v!28630 (underlying!5458 (cache!2926 cacheDown!1098))))))) (array_inv!2848 (_values!2911 (v!28629 (underlying!5457 (v!28630 (underlying!5458 (cache!2926 cacheDown!1098))))))) e!1361195))))

(declare-fun b!2133321 () Bool)

(declare-fun e!1361196 () Bool)

(declare-fun tp!656882 () Bool)

(assert (=> b!2133321 (= e!1361196 tp!656882)))

(declare-fun b!2133322 () Bool)

(declare-fun lt!796831 () MutLongMap!2631)

(assert (=> b!2133322 (= e!1361170 (and e!1361171 ((_ is LongMap!2631) lt!796831)))))

(assert (=> b!2133322 (= lt!796831 (v!28630 (underlying!5458 (cache!2926 cacheDown!1098))))))

(declare-fun b!2133323 () Bool)

(declare-fun e!1361189 () Bool)

(assert (=> b!2133323 (= e!1361189 e!1361178)))

(declare-fun b!2133324 () Bool)

(declare-fun e!1361191 () Bool)

(declare-fun tp!656875 () Bool)

(assert (=> b!2133324 (= e!1361191 (and tp!656875 mapRes!12664))))

(declare-fun condMapEmpty!12664 () Bool)

(declare-fun mapDefault!12665 () List!24153)

(assert (=> b!2133324 (= condMapEmpty!12664 (= (arr!3981 (_values!2910 (v!28627 (underlying!5455 (v!28628 (underlying!5456 (cache!2925 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24153)) mapDefault!12665)))))

(declare-fun res!921941 () Bool)

(assert (=> b!2133325 (=> (not res!921941) (not e!1361186))))

(assert (=> b!2133325 (= res!921941 (forall!4920 stack!8 lambda!79323))))

(declare-fun mapIsEmpty!12666 () Bool)

(assert (=> mapIsEmpty!12666 mapRes!12666))

(declare-fun tp!656881 () Bool)

(declare-fun setNonEmpty!15840 () Bool)

(declare-fun setElem!15841 () Context!2598)

(declare-fun inv!31719 (Context!2598) Bool)

(assert (=> setNonEmpty!15840 (= setRes!15841 (and tp!656881 (inv!31719 setElem!15841) e!1361185))))

(declare-fun setRest!15841 () (InoxSet Context!2598))

(assert (=> setNonEmpty!15840 (= (z!5803 (h!29468 stack!8)) ((_ map or) (store ((as const (Array Context!2598 Bool)) false) setElem!15841 true) setRest!15841))))

(declare-fun b!2133326 () Bool)

(declare-fun res!921951 () Bool)

(assert (=> b!2133326 (=> (not res!921951) (not e!1361181))))

(declare-fun valid!2060 (CacheUp!1762) Bool)

(assert (=> b!2133326 (= res!921951 (valid!2060 cacheUp!979))))

(declare-fun b!2133327 () Bool)

(declare-fun tp!656878 () Bool)

(assert (=> b!2133327 (= e!1361192 (and (inv!31718 (c!340256 totalInput!851)) tp!656878))))

(declare-fun b!2133328 () Bool)

(declare-fun tp!656885 () Bool)

(assert (=> b!2133328 (= e!1361184 (and (inv!31718 (c!340256 (totalInput!3035 (h!29468 stack!8)))) tp!656885))))

(declare-fun b!2133329 () Bool)

(assert (=> b!2133329 (= e!1361174 e!1361181)))

(declare-fun res!921947 () Bool)

(assert (=> b!2133329 (=> (not res!921947) (not e!1361181))))

(assert (=> b!2133329 (= res!921947 (and (= totalInputSize!296 lt!796830) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18826 (BalanceConc!15496) Int)

(assert (=> b!2133329 (= lt!796830 (size!18826 totalInput!851))))

(declare-fun b!2133330 () Bool)

(declare-fun e!1361175 () Bool)

(declare-fun lt!796836 () MutLongMap!2629)

(assert (=> b!2133330 (= e!1361169 (and e!1361175 ((_ is LongMap!2629) lt!796836)))))

(assert (=> b!2133330 (= lt!796836 (v!28625 (underlying!5454 (cache!2924 cacheFurthestNullable!114))))))

(declare-fun mapNonEmpty!12665 () Bool)

(declare-fun tp!656894 () Bool)

(declare-fun tp!656877 () Bool)

(assert (=> mapNonEmpty!12665 (= mapRes!12666 (and tp!656894 tp!656877))))

(declare-fun mapValue!12665 () List!24152)

(declare-fun mapKey!12665 () (_ BitVec 32))

(declare-fun mapRest!12664 () (Array (_ BitVec 32) List!24152))

(assert (=> mapNonEmpty!12665 (= (arr!3982 (_values!2911 (v!28629 (underlying!5457 (v!28630 (underlying!5458 (cache!2926 cacheDown!1098))))))) (store mapRest!12664 mapKey!12665 mapValue!12665))))

(declare-fun b!2133331 () Bool)

(declare-fun e!1361188 () Bool)

(assert (=> b!2133331 (= e!1361164 e!1361188)))

(declare-fun setIsEmpty!15840 () Bool)

(assert (=> setIsEmpty!15840 setRes!15840))

(declare-fun tp!656899 () Bool)

(declare-fun b!2133332 () Bool)

(declare-fun inv!31720 (StackFrame!150) Bool)

(assert (=> b!2133332 (= e!1361183 (and (inv!31720 (h!29468 stack!8)) e!1361162 tp!656899))))

(declare-fun tp!656897 () Bool)

(declare-fun setNonEmpty!15841 () Bool)

(declare-fun setElem!15840 () Context!2598)

(assert (=> setNonEmpty!15841 (= setRes!15840 (and tp!656897 (inv!31719 setElem!15840) e!1361196))))

(declare-fun setRest!15840 () (InoxSet Context!2598))

(assert (=> setNonEmpty!15841 (= z!3839 ((_ map or) (store ((as const (Array Context!2598 Bool)) false) setElem!15840 true) setRest!15840))))

(declare-fun e!1361194 () Bool)

(assert (=> b!2133333 (= e!1361188 (and e!1361194 tp!656892))))

(declare-fun b!2133334 () Bool)

(declare-fun res!921939 () Bool)

(assert (=> b!2133334 (=> (not res!921939) (not e!1361181))))

(declare-fun valid!2061 (CacheDown!1744) Bool)

(assert (=> b!2133334 (= res!921939 (valid!2061 cacheDown!1098))))

(declare-fun b!2133335 () Bool)

(assert (=> b!2133335 (= e!1361173 e!1361179)))

(declare-fun b!2133336 () Bool)

(assert (=> b!2133336 (= e!1361175 e!1361180)))

(declare-fun tp!656887 () Bool)

(declare-fun tp!656884 () Bool)

(declare-fun array_inv!2849 (array!8939) Bool)

(assert (=> b!2133337 (= e!1361168 (and tp!656886 tp!656884 tp!656887 (array_inv!2846 (_keys!2927 (v!28627 (underlying!5455 (v!28628 (underlying!5456 (cache!2925 cacheUp!979))))))) (array_inv!2849 (_values!2910 (v!28627 (underlying!5455 (v!28628 (underlying!5456 (cache!2925 cacheUp!979))))))) e!1361191))))

(declare-fun setIsEmpty!15841 () Bool)

(assert (=> setIsEmpty!15841 setRes!15841))

(declare-fun b!2133338 () Bool)

(declare-fun lt!796833 () MutLongMap!2630)

(assert (=> b!2133338 (= e!1361194 (and e!1361189 ((_ is LongMap!2630) lt!796833)))))

(assert (=> b!2133338 (= lt!796833 (v!28628 (underlying!5456 (cache!2925 cacheUp!979))))))

(declare-fun mapNonEmpty!12666 () Bool)

(declare-fun tp!656883 () Bool)

(declare-fun tp!656879 () Bool)

(assert (=> mapNonEmpty!12666 (= mapRes!12665 (and tp!656883 tp!656879))))

(declare-fun mapKey!12666 () (_ BitVec 32))

(declare-fun mapValue!12666 () List!24149)

(declare-fun mapRest!12665 () (Array (_ BitVec 32) List!24149))

(assert (=> mapNonEmpty!12666 (= (arr!3980 (_values!2909 (v!28624 (underlying!5453 (v!28625 (underlying!5454 (cache!2924 cacheFurthestNullable!114))))))) (store mapRest!12665 mapKey!12666 mapValue!12666))))

(assert (= (and start!207564 res!921950) b!2133329))

(assert (= (and b!2133329 res!921947) b!2133304))

(assert (= (and b!2133304 (not res!921943)) b!2133309))

(assert (= (and b!2133304 res!921946) b!2133326))

(assert (= (and b!2133326 res!921951) b!2133334))

(assert (= (and b!2133334 res!921939) b!2133316))

(assert (= (and b!2133316 res!921944) b!2133301))

(assert (= (and b!2133301 res!921942) b!2133307))

(assert (= (and b!2133307 res!921940) b!2133325))

(assert (= (and b!2133325 res!921941) b!2133298))

(assert (= (and b!2133298 (not res!921945)) b!2133308))

(assert (= (and b!2133308 (not res!921949)) b!2133315))

(assert (= (and b!2133315 (not res!921948)) b!2133306))

(assert (= (and b!2133311 condMapEmpty!12666) mapIsEmpty!12664))

(assert (= (and b!2133311 (not condMapEmpty!12666)) mapNonEmpty!12666))

(assert (= b!2133302 b!2133311))

(assert (= b!2133319 b!2133302))

(assert (= b!2133336 b!2133319))

(assert (= (and b!2133330 ((_ is LongMap!2629) (v!28625 (underlying!5454 (cache!2924 cacheFurthestNullable!114))))) b!2133336))

(assert (= b!2133310 b!2133330))

(assert (= (and b!2133300 ((_ is HashMap!2543) (cache!2924 cacheFurthestNullable!114))) b!2133310))

(assert (= b!2133300 b!2133312))

(assert (= start!207564 b!2133300))

(assert (= (and b!2133314 condMapEmpty!12665) mapIsEmpty!12666))

(assert (= (and b!2133314 (not condMapEmpty!12665)) mapNonEmpty!12665))

(assert (= b!2133320 b!2133314))

(assert (= b!2133313 b!2133320))

(assert (= b!2133303 b!2133313))

(assert (= (and b!2133322 ((_ is LongMap!2631) (v!28630 (underlying!5458 (cache!2926 cacheDown!1098))))) b!2133303))

(assert (= b!2133317 b!2133322))

(assert (= (and b!2133335 ((_ is HashMap!2545) (cache!2926 cacheDown!1098))) b!2133317))

(assert (= start!207564 b!2133335))

(assert (= (and b!2133324 condMapEmpty!12664) mapIsEmpty!12665))

(assert (= (and b!2133324 (not condMapEmpty!12664)) mapNonEmpty!12664))

(assert (= b!2133337 b!2133324))

(assert (= b!2133305 b!2133337))

(assert (= b!2133323 b!2133305))

(assert (= (and b!2133338 ((_ is LongMap!2630) (v!28628 (underlying!5456 (cache!2925 cacheUp!979))))) b!2133323))

(assert (= b!2133333 b!2133338))

(assert (= (and b!2133331 ((_ is HashMap!2544) (cache!2925 cacheUp!979))) b!2133333))

(assert (= start!207564 b!2133331))

(assert (= (and start!207564 condSetEmpty!15840) setIsEmpty!15840))

(assert (= (and start!207564 (not condSetEmpty!15840)) setNonEmpty!15841))

(assert (= setNonEmpty!15841 b!2133321))

(assert (= start!207564 b!2133327))

(assert (= (and b!2133318 condSetEmpty!15841) setIsEmpty!15841))

(assert (= (and b!2133318 (not condSetEmpty!15841)) setNonEmpty!15840))

(assert (= setNonEmpty!15840 b!2133299))

(assert (= b!2133318 b!2133328))

(assert (= b!2133332 b!2133318))

(assert (= (and start!207564 ((_ is Cons!24067) stack!8)) b!2133332))

(declare-fun m!2582082 () Bool)

(assert (=> b!2133302 m!2582082))

(declare-fun m!2582084 () Bool)

(assert (=> b!2133302 m!2582084))

(declare-fun m!2582086 () Bool)

(assert (=> b!2133298 m!2582086))

(declare-fun m!2582088 () Bool)

(assert (=> b!2133298 m!2582088))

(declare-fun m!2582090 () Bool)

(assert (=> mapNonEmpty!12665 m!2582090))

(declare-fun m!2582092 () Bool)

(assert (=> b!2133327 m!2582092))

(declare-fun m!2582094 () Bool)

(assert (=> mapNonEmpty!12664 m!2582094))

(declare-fun m!2582096 () Bool)

(assert (=> b!2133326 m!2582096))

(declare-fun m!2582098 () Bool)

(assert (=> b!2133320 m!2582098))

(declare-fun m!2582100 () Bool)

(assert (=> b!2133320 m!2582100))

(declare-fun m!2582102 () Bool)

(assert (=> b!2133325 m!2582102))

(declare-fun m!2582104 () Bool)

(assert (=> b!2133318 m!2582104))

(declare-fun m!2582106 () Bool)

(assert (=> b!2133332 m!2582106))

(declare-fun m!2582108 () Bool)

(assert (=> setNonEmpty!15841 m!2582108))

(declare-fun m!2582110 () Bool)

(assert (=> b!2133328 m!2582110))

(declare-fun m!2582112 () Bool)

(assert (=> b!2133304 m!2582112))

(declare-fun m!2582114 () Bool)

(assert (=> b!2133337 m!2582114))

(declare-fun m!2582116 () Bool)

(assert (=> b!2133337 m!2582116))

(declare-fun m!2582118 () Bool)

(assert (=> b!2133334 m!2582118))

(assert (=> b!2133307 m!2582088))

(declare-fun m!2582120 () Bool)

(assert (=> b!2133307 m!2582120))

(declare-fun m!2582122 () Bool)

(assert (=> setNonEmpty!15840 m!2582122))

(declare-fun m!2582124 () Bool)

(assert (=> b!2133329 m!2582124))

(declare-fun m!2582126 () Bool)

(assert (=> b!2133312 m!2582126))

(declare-fun m!2582128 () Bool)

(assert (=> b!2133315 m!2582128))

(declare-fun m!2582130 () Bool)

(assert (=> b!2133300 m!2582130))

(declare-fun m!2582132 () Bool)

(assert (=> b!2133306 m!2582132))

(declare-fun m!2582134 () Bool)

(assert (=> b!2133306 m!2582134))

(declare-fun m!2582136 () Bool)

(assert (=> b!2133306 m!2582136))

(assert (=> b!2133306 m!2582136))

(declare-fun m!2582138 () Bool)

(assert (=> b!2133306 m!2582138))

(declare-fun m!2582140 () Bool)

(assert (=> b!2133316 m!2582140))

(declare-fun m!2582142 () Bool)

(assert (=> mapNonEmpty!12666 m!2582142))

(declare-fun m!2582144 () Bool)

(assert (=> start!207564 m!2582144))

(declare-fun m!2582146 () Bool)

(assert (=> start!207564 m!2582146))

(declare-fun m!2582148 () Bool)

(assert (=> start!207564 m!2582148))

(declare-fun m!2582150 () Bool)

(assert (=> start!207564 m!2582150))

(check-sat (not b!2133311) (not b!2133320) (not b!2133337) (not setNonEmpty!15840) (not b!2133328) (not b!2133332) (not mapNonEmpty!12666) (not b!2133306) (not b!2133325) (not b_next!63115) (not b!2133307) (not b!2133321) (not b!2133302) b_and!171991 b_and!171987 (not b!2133316) (not b!2133329) (not b_next!63117) (not b!2133299) (not b!2133304) (not b!2133327) (not setNonEmpty!15841) (not b!2133324) (not b_next!63111) (not b!2133326) (not b!2133314) b_and!171995 (not b_next!63109) (not b!2133298) (not b!2133318) (not mapNonEmpty!12665) (not mapNonEmpty!12664) b_and!171989 (not b!2133300) (not b!2133312) b_and!171985 (not b!2133334) (not b_next!63119) (not start!207564) b_and!171993 (not b!2133315) (not b_next!63113))
(check-sat b_and!171991 b_and!171987 (not b_next!63117) (not b_next!63111) b_and!171989 b_and!171985 (not b_next!63119) (not b_next!63115) b_and!171995 (not b_next!63109) b_and!171993 (not b_next!63113))
