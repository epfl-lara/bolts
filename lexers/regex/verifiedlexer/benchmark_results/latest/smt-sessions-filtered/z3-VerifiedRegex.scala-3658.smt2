; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208006 () Bool)

(assert start!208006)

(declare-fun b!2142622 () Bool)

(declare-fun b_free!63053 () Bool)

(declare-fun b_next!63757 () Bool)

(assert (=> b!2142622 (= b_free!63053 (not b_next!63757))))

(declare-fun tp!663258 () Bool)

(declare-fun b_and!172633 () Bool)

(assert (=> b!2142622 (= tp!663258 b_and!172633)))

(declare-fun b!2142650 () Bool)

(declare-fun b_free!63055 () Bool)

(declare-fun b_next!63759 () Bool)

(assert (=> b!2142650 (= b_free!63055 (not b_next!63759))))

(declare-fun tp!663259 () Bool)

(declare-fun b_and!172635 () Bool)

(assert (=> b!2142650 (= tp!663259 b_and!172635)))

(declare-fun b!2142623 () Bool)

(declare-fun b_free!63057 () Bool)

(declare-fun b_next!63761 () Bool)

(assert (=> b!2142623 (= b_free!63057 (not b_next!63761))))

(declare-fun tp!663262 () Bool)

(declare-fun b_and!172637 () Bool)

(assert (=> b!2142623 (= tp!663262 b_and!172637)))

(declare-fun b!2142633 () Bool)

(declare-fun b_free!63059 () Bool)

(declare-fun b_next!63763 () Bool)

(assert (=> b!2142633 (= b_free!63059 (not b_next!63763))))

(declare-fun tp!663247 () Bool)

(declare-fun b_and!172639 () Bool)

(assert (=> b!2142633 (= tp!663247 b_and!172639)))

(declare-fun b!2142614 () Bool)

(declare-fun b_free!63061 () Bool)

(declare-fun b_next!63765 () Bool)

(assert (=> b!2142614 (= b_free!63061 (not b_next!63765))))

(declare-fun tp!663254 () Bool)

(declare-fun b_and!172641 () Bool)

(assert (=> b!2142614 (= tp!663254 b_and!172641)))

(declare-fun b!2142628 () Bool)

(declare-fun b_free!63063 () Bool)

(declare-fun b_next!63767 () Bool)

(assert (=> b!2142628 (= b_free!63063 (not b_next!63767))))

(declare-fun tp!663238 () Bool)

(declare-fun b_and!172643 () Bool)

(assert (=> b!2142628 (= tp!663238 b_and!172643)))

(declare-fun b!2142624 () Bool)

(assert (=> b!2142624 true))

(declare-fun bs!445268 () Bool)

(declare-fun b!2142645 () Bool)

(assert (= bs!445268 (and b!2142645 b!2142624)))

(declare-fun lambda!80254 () Int)

(declare-fun lambda!80253 () Int)

(assert (=> bs!445268 (not (= lambda!80254 lambda!80253))))

(assert (=> b!2142645 true))

(declare-fun bs!445269 () Bool)

(declare-fun b!2142625 () Bool)

(assert (= bs!445269 (and b!2142625 b!2142624)))

(declare-datatypes ((Option!4941 0))(
  ( (None!4940) (Some!4940 (v!28953 Int)) )
))
(declare-fun lt!798394 () Option!4941)

(declare-fun lt!798393 () Int)

(declare-fun lambda!80255 () Int)

(assert (=> bs!445269 (= (= (v!28953 lt!798394) lt!798393) (= lambda!80255 lambda!80253))))

(declare-fun bs!445270 () Bool)

(assert (= bs!445270 (and b!2142625 b!2142645)))

(assert (=> bs!445270 (not (= lambda!80255 lambda!80254))))

(assert (=> b!2142625 true))

(declare-fun b!2142613 () Bool)

(declare-fun e!1368808 () Bool)

(declare-datatypes ((C!11712 0))(
  ( (C!11713 (val!6842 Int)) )
))
(declare-datatypes ((Regex!5783 0))(
  ( (ElementMatch!5783 (c!340635 C!11712)) (Concat!10085 (regOne!12078 Regex!5783) (regTwo!12078 Regex!5783)) (EmptyExpr!5783) (Star!5783 (reg!6112 Regex!5783)) (EmptyLang!5783) (Union!5783 (regOne!12079 Regex!5783) (regTwo!12079 Regex!5783)) )
))
(declare-datatypes ((List!24451 0))(
  ( (Nil!24367) (Cons!24367 (h!29768 Regex!5783) (t!196981 List!24451)) )
))
(declare-datatypes ((Context!2706 0))(
  ( (Context!2707 (exprs!1853 List!24451)) )
))
(declare-datatypes ((List!24452 0))(
  ( (Nil!24368) (Cons!24368 (h!29769 C!11712) (t!196982 List!24452)) )
))
(declare-datatypes ((IArray!15845 0))(
  ( (IArray!15846 (innerList!7980 List!24452)) )
))
(declare-datatypes ((Conc!7920 0))(
  ( (Node!7920 (left!18736 Conc!7920) (right!19066 Conc!7920) (csize!16070 Int) (cheight!8131 Int)) (Leaf!11579 (xs!10862 IArray!15845) (csize!16071 Int)) (Empty!7920) )
))
(declare-datatypes ((BalanceConc!15602 0))(
  ( (BalanceConc!15603 (c!340636 Conc!7920)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!240 0))(
  ( (StackFrame!241 (z!5881 (InoxSet Context!2706)) (from!2749 Int) (lastNullablePos!436 Int) (res!924889 Int) (totalInput!3139 BalanceConc!15602)) )
))
(declare-datatypes ((List!24453 0))(
  ( (Nil!24369) (Cons!24369 (h!29770 StackFrame!240) (t!196983 List!24453)) )
))
(declare-fun stack!8 () List!24453)

(declare-fun tp!663245 () Bool)

(declare-fun e!1368833 () Bool)

(declare-fun inv!32071 (StackFrame!240) Bool)

(assert (=> b!2142613 (= e!1368833 (and (inv!32071 (h!29770 stack!8)) e!1368808 tp!663245))))

(declare-fun e!1368828 () Bool)

(declare-fun e!1368815 () Bool)

(assert (=> b!2142614 (= e!1368828 (and e!1368815 tp!663254))))

(declare-fun b!2142615 () Bool)

(declare-fun e!1368829 () Bool)

(declare-fun e!1368812 () Bool)

(assert (=> b!2142615 (= e!1368829 e!1368812)))

(declare-fun res!924875 () Bool)

(assert (=> b!2142615 (=> (not res!924875) (not e!1368812))))

(declare-fun lastNullablePos!123 () Int)

(declare-fun z!3839 () (InoxSet Context!2706))

(declare-fun from!1043 () Int)

(declare-fun totalInput!851 () BalanceConc!15602)

(declare-fun totalInputSize!296 () Int)

(declare-fun furthestNullablePosition!81 ((InoxSet Context!2706) Int BalanceConc!15602 Int Int) Int)

(assert (=> b!2142615 (= res!924875 (= (v!28953 lt!798394) (furthestNullablePosition!81 z!3839 from!1043 totalInput!851 totalInputSize!296 lastNullablePos!123)))))

(declare-fun b!2142617 () Bool)

(declare-fun e!1368820 () Bool)

(declare-fun e!1368802 () Bool)

(assert (=> b!2142617 (= e!1368820 e!1368802)))

(declare-fun b!2142618 () Bool)

(declare-fun e!1368826 () Bool)

(declare-fun tp!663255 () Bool)

(assert (=> b!2142618 (= e!1368826 tp!663255)))

(declare-fun mapIsEmpty!13216 () Bool)

(declare-fun mapRes!13218 () Bool)

(assert (=> mapIsEmpty!13216 mapRes!13218))

(declare-fun b!2142619 () Bool)

(declare-fun forall!4978 (List!24453 Int) Bool)

(assert (=> b!2142619 (= e!1368812 (forall!4978 Nil!24369 lambda!80254))))

(declare-fun setIsEmpty!16511 () Bool)

(declare-fun setRes!16512 () Bool)

(assert (=> setIsEmpty!16511 setRes!16512))

(declare-fun b!2142620 () Bool)

(declare-fun e!1368806 () Bool)

(declare-fun tp!663251 () Bool)

(declare-fun inv!32072 (Conc!7920) Bool)

(assert (=> b!2142620 (= e!1368806 (and (inv!32072 (c!340636 (totalInput!3139 (h!29770 stack!8)))) tp!663251))))

(declare-fun b!2142621 () Bool)

(declare-fun res!924877 () Bool)

(assert (=> b!2142621 (=> res!924877 e!1368829)))

(assert (=> b!2142621 (= res!924877 (not (forall!4978 Nil!24369 lambda!80253)))))

(declare-fun e!1368798 () Bool)

(declare-fun e!1368803 () Bool)

(assert (=> b!2142622 (= e!1368798 (and e!1368803 tp!663258))))

(declare-fun mapIsEmpty!13217 () Bool)

(declare-fun mapRes!13217 () Bool)

(assert (=> mapIsEmpty!13217 mapRes!13217))

(declare-fun e!1368832 () Bool)

(declare-fun e!1368814 () Bool)

(assert (=> b!2142623 (= e!1368832 (and e!1368814 tp!663262))))

(declare-fun e!1368834 () Bool)

(declare-fun e!1368825 () Bool)

(assert (=> b!2142624 (= e!1368834 e!1368825)))

(declare-fun res!924885 () Bool)

(assert (=> b!2142624 (=> (not res!924885) (not e!1368825))))

(assert (=> b!2142624 (= res!924885 (forall!4978 stack!8 lambda!80253))))

(declare-fun lt!798392 () Int)

(assert (=> b!2142624 (= lt!798393 (furthestNullablePosition!81 z!3839 from!1043 totalInput!851 lt!798392 lastNullablePos!123))))

(declare-fun res!924878 () Bool)

(assert (=> b!2142625 (=> (not res!924878) (not e!1368812))))

(assert (=> b!2142625 (= res!924878 (forall!4978 Nil!24369 lambda!80255))))

(declare-fun b!2142626 () Bool)

(declare-fun e!1368819 () Bool)

(declare-fun e!1368827 () Bool)

(assert (=> b!2142626 (= e!1368819 e!1368827)))

(declare-fun b!2142627 () Bool)

(declare-fun res!924883 () Bool)

(assert (=> b!2142627 (=> (not res!924883) (not e!1368834))))

(declare-datatypes ((tuple3!3448 0))(
  ( (tuple3!3449 (_1!14298 Regex!5783) (_2!14298 Context!2706) (_3!2194 C!11712)) )
))
(declare-datatypes ((tuple2!24208 0))(
  ( (tuple2!24209 (_1!14299 tuple3!3448) (_2!14299 (InoxSet Context!2706))) )
))
(declare-datatypes ((List!24454 0))(
  ( (Nil!24370) (Cons!24370 (h!29771 tuple2!24208) (t!196984 List!24454)) )
))
(declare-datatypes ((Hashable!2688 0))(
  ( (HashableExt!2687 (__x!16498 Int)) )
))
(declare-datatypes ((array!9361 0))(
  ( (array!9362 (arr!4178 (Array (_ BitVec 32) (_ BitVec 64))) (size!19070 (_ BitVec 32))) )
))
(declare-datatypes ((array!9363 0))(
  ( (array!9364 (arr!4179 (Array (_ BitVec 32) List!24454)) (size!19071 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5548 0))(
  ( (LongMapFixedSize!5549 (defaultEntry!3139 Int) (mask!6981 (_ BitVec 32)) (extraKeys!3022 (_ BitVec 32)) (zeroValue!3032 List!24454) (minValue!3032 List!24454) (_size!5599 (_ BitVec 32)) (_keys!3071 array!9361) (_values!3054 array!9363) (_vacant!2835 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10921 0))(
  ( (Cell!10922 (v!28954 LongMapFixedSize!5548)) )
))
(declare-datatypes ((MutLongMap!2774 0))(
  ( (LongMap!2774 (underlying!5743 Cell!10921)) (MutLongMapExt!2773 (__x!16499 Int)) )
))
(declare-datatypes ((Cell!10923 0))(
  ( (Cell!10924 (v!28955 MutLongMap!2774)) )
))
(declare-datatypes ((MutableMap!2688 0))(
  ( (MutableMapExt!2687 (__x!16500 Int)) (HashMap!2688 (underlying!5744 Cell!10923) (hashF!4611 Hashable!2688) (_size!5600 (_ BitVec 32)) (defaultValue!2850 Int)) )
))
(declare-datatypes ((CacheDown!1840 0))(
  ( (CacheDown!1841 (cache!3069 MutableMap!2688)) )
))
(declare-fun cacheDown!1098 () CacheDown!1840)

(declare-fun valid!2165 (CacheDown!1840) Bool)

(assert (=> b!2142627 (= res!924883 (valid!2165 cacheDown!1098))))

(declare-fun tp!663242 () Bool)

(declare-datatypes ((tuple2!24210 0))(
  ( (tuple2!24211 (_1!14300 Context!2706) (_2!14300 C!11712)) )
))
(declare-datatypes ((tuple2!24212 0))(
  ( (tuple2!24213 (_1!14301 tuple2!24210) (_2!14301 (InoxSet Context!2706))) )
))
(declare-datatypes ((List!24455 0))(
  ( (Nil!24371) (Cons!24371 (h!29772 tuple2!24212) (t!196985 List!24455)) )
))
(declare-datatypes ((array!9365 0))(
  ( (array!9366 (arr!4180 (Array (_ BitVec 32) List!24455)) (size!19072 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5550 0))(
  ( (LongMapFixedSize!5551 (defaultEntry!3140 Int) (mask!6982 (_ BitVec 32)) (extraKeys!3023 (_ BitVec 32)) (zeroValue!3033 List!24455) (minValue!3033 List!24455) (_size!5601 (_ BitVec 32)) (_keys!3072 array!9361) (_values!3055 array!9365) (_vacant!2836 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10925 0))(
  ( (Cell!10926 (v!28956 LongMapFixedSize!5550)) )
))
(declare-datatypes ((MutLongMap!2775 0))(
  ( (LongMap!2775 (underlying!5745 Cell!10925)) (MutLongMapExt!2774 (__x!16501 Int)) )
))
(declare-datatypes ((Cell!10927 0))(
  ( (Cell!10928 (v!28957 MutLongMap!2775)) )
))
(declare-datatypes ((Hashable!2689 0))(
  ( (HashableExt!2688 (__x!16502 Int)) )
))
(declare-datatypes ((MutableMap!2689 0))(
  ( (MutableMapExt!2688 (__x!16503 Int)) (HashMap!2689 (underlying!5746 Cell!10927) (hashF!4612 Hashable!2689) (_size!5602 (_ BitVec 32)) (defaultValue!2851 Int)) )
))
(declare-datatypes ((CacheUp!1852 0))(
  ( (CacheUp!1853 (cache!3070 MutableMap!2689)) )
))
(declare-fun cacheUp!979 () CacheUp!1852)

(declare-fun tp!663248 () Bool)

(declare-fun e!1368816 () Bool)

(declare-fun array_inv!2989 (array!9361) Bool)

(declare-fun array_inv!2990 (array!9365) Bool)

(assert (=> b!2142628 (= e!1368827 (and tp!663238 tp!663242 tp!663248 (array_inv!2989 (_keys!3072 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979))))))) (array_inv!2990 (_values!3055 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979))))))) e!1368816))))

(declare-fun setIsEmpty!16512 () Bool)

(declare-fun setRes!16511 () Bool)

(assert (=> setIsEmpty!16512 setRes!16511))

(declare-fun b!2142629 () Bool)

(declare-fun e!1368824 () Bool)

(assert (=> b!2142629 (= e!1368824 e!1368820)))

(declare-fun b!2142630 () Bool)

(declare-fun res!924879 () Bool)

(assert (=> b!2142630 (=> (not res!924879) (not e!1368834))))

(declare-fun valid!2166 (CacheUp!1852) Bool)

(assert (=> b!2142630 (= res!924879 (valid!2166 cacheUp!979))))

(declare-fun res!924888 () Bool)

(declare-fun e!1368813 () Bool)

(assert (=> start!208006 (=> (not res!924888) (not e!1368813))))

(assert (=> start!208006 (= res!924888 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!208006 e!1368813))

(declare-datatypes ((tuple3!3450 0))(
  ( (tuple3!3451 (_1!14302 (InoxSet Context!2706)) (_2!14302 Int) (_3!2195 Int)) )
))
(declare-datatypes ((tuple2!24214 0))(
  ( (tuple2!24215 (_1!14303 tuple3!3450) (_2!14303 Int)) )
))
(declare-datatypes ((List!24456 0))(
  ( (Nil!24372) (Cons!24372 (h!29773 tuple2!24214) (t!196986 List!24456)) )
))
(declare-datatypes ((array!9367 0))(
  ( (array!9368 (arr!4181 (Array (_ BitVec 32) List!24456)) (size!19073 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5552 0))(
  ( (LongMapFixedSize!5553 (defaultEntry!3141 Int) (mask!6983 (_ BitVec 32)) (extraKeys!3024 (_ BitVec 32)) (zeroValue!3034 List!24456) (minValue!3034 List!24456) (_size!5603 (_ BitVec 32)) (_keys!3073 array!9361) (_values!3056 array!9367) (_vacant!2837 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10929 0))(
  ( (Cell!10930 (v!28958 LongMapFixedSize!5552)) )
))
(declare-datatypes ((MutLongMap!2776 0))(
  ( (LongMap!2776 (underlying!5747 Cell!10929)) (MutLongMapExt!2775 (__x!16504 Int)) )
))
(declare-datatypes ((Cell!10931 0))(
  ( (Cell!10932 (v!28959 MutLongMap!2776)) )
))
(declare-datatypes ((Hashable!2690 0))(
  ( (HashableExt!2689 (__x!16505 Int)) )
))
(declare-datatypes ((MutableMap!2690 0))(
  ( (MutableMapExt!2689 (__x!16506 Int)) (HashMap!2690 (underlying!5748 Cell!10931) (hashF!4613 Hashable!2690) (_size!5604 (_ BitVec 32)) (defaultValue!2852 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!808 0))(
  ( (CacheFurthestNullable!809 (cache!3071 MutableMap!2690) (totalInput!3140 BalanceConc!15602)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!808)

(declare-fun e!1368809 () Bool)

(declare-fun inv!32073 (CacheFurthestNullable!808) Bool)

(assert (=> start!208006 (and (inv!32073 cacheFurthestNullable!114) e!1368809)))

(assert (=> start!208006 true))

(declare-fun e!1368811 () Bool)

(declare-fun inv!32074 (CacheDown!1840) Bool)

(assert (=> start!208006 (and (inv!32074 cacheDown!1098) e!1368811)))

(declare-fun e!1368818 () Bool)

(declare-fun inv!32075 (CacheUp!1852) Bool)

(assert (=> start!208006 (and (inv!32075 cacheUp!979) e!1368818)))

(declare-fun condSetEmpty!16512 () Bool)

(assert (=> start!208006 (= condSetEmpty!16512 (= z!3839 ((as const (Array Context!2706 Bool)) false)))))

(assert (=> start!208006 setRes!16512))

(declare-fun e!1368800 () Bool)

(declare-fun inv!32076 (BalanceConc!15602) Bool)

(assert (=> start!208006 (and (inv!32076 totalInput!851) e!1368800)))

(assert (=> start!208006 e!1368833))

(declare-fun b!2142616 () Bool)

(declare-fun res!924881 () Bool)

(assert (=> b!2142616 (=> (not res!924881) (not e!1368834))))

(declare-fun valid!2167 (CacheFurthestNullable!808) Bool)

(assert (=> b!2142616 (= res!924881 (valid!2167 cacheFurthestNullable!114))))

(declare-fun b!2142631 () Bool)

(declare-fun e!1368807 () Bool)

(declare-fun e!1368817 () Bool)

(assert (=> b!2142631 (= e!1368807 e!1368817)))

(declare-fun setNonEmpty!16511 () Bool)

(declare-fun tp!663260 () Bool)

(declare-fun setElem!16512 () Context!2706)

(declare-fun inv!32077 (Context!2706) Bool)

(assert (=> setNonEmpty!16511 (= setRes!16511 (and tp!663260 (inv!32077 setElem!16512) e!1368826))))

(declare-fun setRest!16512 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16511 (= (z!5881 (h!29770 stack!8)) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16512 true) setRest!16512))))

(declare-fun mapNonEmpty!13216 () Bool)

(declare-fun tp!663244 () Bool)

(declare-fun tp!663249 () Bool)

(assert (=> mapNonEmpty!13216 (= mapRes!13218 (and tp!663244 tp!663249))))

(declare-fun mapRest!13216 () (Array (_ BitVec 32) List!24455))

(declare-fun mapKey!13218 () (_ BitVec 32))

(declare-fun mapValue!13217 () List!24455)

(assert (=> mapNonEmpty!13216 (= (arr!4180 (_values!3055 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979))))))) (store mapRest!13216 mapKey!13218 mapValue!13217))))

(declare-fun b!2142632 () Bool)

(declare-fun e!1368831 () Bool)

(assert (=> b!2142632 (= e!1368831 e!1368819)))

(declare-fun tp!663237 () Bool)

(declare-fun e!1368799 () Bool)

(declare-fun tp!663263 () Bool)

(declare-fun array_inv!2991 (array!9363) Bool)

(assert (=> b!2142633 (= e!1368817 (and tp!663247 tp!663263 tp!663237 (array_inv!2989 (_keys!3071 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098))))))) (array_inv!2991 (_values!3054 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098))))))) e!1368799))))

(declare-fun e!1368830 () Bool)

(declare-fun tp!663236 () Bool)

(declare-fun setElem!16511 () Context!2706)

(declare-fun setNonEmpty!16512 () Bool)

(assert (=> setNonEmpty!16512 (= setRes!16512 (and tp!663236 (inv!32077 setElem!16511) e!1368830))))

(declare-fun setRest!16511 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16512 (= z!3839 ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16511 true) setRest!16511))))

(declare-fun b!2142634 () Bool)

(assert (=> b!2142634 (= e!1368813 e!1368834)))

(declare-fun res!924876 () Bool)

(assert (=> b!2142634 (=> (not res!924876) (not e!1368834))))

(assert (=> b!2142634 (= res!924876 (and (= totalInputSize!296 lt!798392) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19074 (BalanceConc!15602) Int)

(assert (=> b!2142634 (= lt!798392 (size!19074 totalInput!851))))

(declare-fun b!2142635 () Bool)

(assert (=> b!2142635 (= e!1368818 e!1368832)))

(declare-fun b!2142636 () Bool)

(declare-fun e!1368805 () Bool)

(declare-fun tp!663250 () Bool)

(declare-fun mapRes!13216 () Bool)

(assert (=> b!2142636 (= e!1368805 (and tp!663250 mapRes!13216))))

(declare-fun condMapEmpty!13218 () Bool)

(declare-fun mapDefault!13217 () List!24456)

(assert (=> b!2142636 (= condMapEmpty!13218 (= (arr!4181 (_values!3056 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24456)) mapDefault!13217)))))

(declare-fun b!2142637 () Bool)

(declare-fun tp!663239 () Bool)

(assert (=> b!2142637 (= e!1368816 (and tp!663239 mapRes!13218))))

(declare-fun condMapEmpty!13217 () Bool)

(declare-fun mapDefault!13216 () List!24455)

(assert (=> b!2142637 (= condMapEmpty!13217 (= (arr!4180 (_values!3055 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24455)) mapDefault!13216)))))

(declare-fun mapNonEmpty!13217 () Bool)

(declare-fun tp!663241 () Bool)

(declare-fun tp!663246 () Bool)

(assert (=> mapNonEmpty!13217 (= mapRes!13216 (and tp!663241 tp!663246))))

(declare-fun mapValue!13218 () List!24456)

(declare-fun mapRest!13218 () (Array (_ BitVec 32) List!24456))

(declare-fun mapKey!13217 () (_ BitVec 32))

(assert (=> mapNonEmpty!13217 (= (arr!4181 (_values!3056 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))))) (store mapRest!13218 mapKey!13217 mapValue!13218))))

(declare-fun b!2142638 () Bool)

(declare-fun tp!663261 () Bool)

(assert (=> b!2142638 (= e!1368830 tp!663261)))

(declare-fun b!2142639 () Bool)

(declare-fun e!1368804 () Bool)

(declare-fun lt!798396 () MutLongMap!2774)

(get-info :version)

(assert (=> b!2142639 (= e!1368815 (and e!1368804 ((_ is LongMap!2774) lt!798396)))))

(assert (=> b!2142639 (= lt!798396 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098))))))

(declare-fun e!1368821 () Bool)

(declare-fun b!2142640 () Bool)

(assert (=> b!2142640 (= e!1368809 (and e!1368798 (inv!32076 (totalInput!3140 cacheFurthestNullable!114)) e!1368821))))

(declare-fun b!2142641 () Bool)

(declare-fun tp!663252 () Bool)

(assert (=> b!2142641 (= e!1368821 (and (inv!32072 (c!340636 (totalInput!3140 cacheFurthestNullable!114))) tp!663252))))

(declare-fun mapIsEmpty!13218 () Bool)

(assert (=> mapIsEmpty!13218 mapRes!13216))

(declare-fun mapNonEmpty!13218 () Bool)

(declare-fun tp!663240 () Bool)

(declare-fun tp!663243 () Bool)

(assert (=> mapNonEmpty!13218 (= mapRes!13217 (and tp!663240 tp!663243))))

(declare-fun mapValue!13216 () List!24454)

(declare-fun mapRest!13217 () (Array (_ BitVec 32) List!24454))

(declare-fun mapKey!13216 () (_ BitVec 32))

(assert (=> mapNonEmpty!13218 (= (arr!4179 (_values!3054 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098))))))) (store mapRest!13217 mapKey!13216 mapValue!13216))))

(declare-fun b!2142642 () Bool)

(declare-fun lt!798397 () MutLongMap!2775)

(assert (=> b!2142642 (= e!1368814 (and e!1368831 ((_ is LongMap!2775) lt!798397)))))

(assert (=> b!2142642 (= lt!798397 (v!28957 (underlying!5746 (cache!3070 cacheUp!979))))))

(declare-fun b!2142643 () Bool)

(declare-fun e!1368822 () Bool)

(assert (=> b!2142643 (= e!1368822 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2142644 () Bool)

(assert (=> b!2142644 (= e!1368804 e!1368807)))

(declare-fun res!924887 () Bool)

(assert (=> b!2142645 (=> (not res!924887) (not e!1368825))))

(assert (=> b!2142645 (= res!924887 (forall!4978 stack!8 lambda!80254))))

(declare-fun b!2142646 () Bool)

(declare-fun tp!663253 () Bool)

(assert (=> b!2142646 (= e!1368800 (and (inv!32072 (c!340636 totalInput!851)) tp!663253))))

(declare-fun b!2142647 () Bool)

(declare-fun res!924886 () Bool)

(assert (=> b!2142647 (=> (not res!924886) (not e!1368834))))

(assert (=> b!2142647 (= res!924886 (= (totalInput!3140 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2142648 () Bool)

(declare-fun tp!663257 () Bool)

(assert (=> b!2142648 (= e!1368799 (and tp!663257 mapRes!13217))))

(declare-fun condMapEmpty!13216 () Bool)

(declare-fun mapDefault!13218 () List!24454)

(assert (=> b!2142648 (= condMapEmpty!13216 (= (arr!4179 (_values!3054 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24454)) mapDefault!13218)))))

(declare-fun b!2142649 () Bool)

(assert (=> b!2142649 (= e!1368811 e!1368828)))

(declare-fun tp!663256 () Bool)

(declare-fun tp!663235 () Bool)

(declare-fun array_inv!2992 (array!9367) Bool)

(assert (=> b!2142650 (= e!1368802 (and tp!663259 tp!663235 tp!663256 (array_inv!2989 (_keys!3073 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))))) (array_inv!2992 (_values!3056 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))))) e!1368805))))

(declare-fun b!2142651 () Bool)

(declare-fun res!924884 () Bool)

(assert (=> b!2142651 (=> (not res!924884) (not e!1368834))))

(assert (=> b!2142651 (= res!924884 e!1368822)))

(declare-fun res!924880 () Bool)

(assert (=> b!2142651 (=> res!924880 e!1368822)))

(declare-fun nullableZipper!143 ((InoxSet Context!2706)) Bool)

(assert (=> b!2142651 (= res!924880 (not (nullableZipper!143 z!3839)))))

(declare-fun b!2142652 () Bool)

(assert (=> b!2142652 (= e!1368825 (not e!1368829))))

(declare-fun res!924882 () Bool)

(assert (=> b!2142652 (=> res!924882 e!1368829)))

(assert (=> b!2142652 (= res!924882 (or (not ((_ is Some!4940) lt!798394)) (not (= (v!28953 lt!798394) lt!798393))))))

(declare-fun get!7442 (CacheFurthestNullable!808 (InoxSet Context!2706) Int Int) Option!4941)

(assert (=> b!2142652 (= lt!798394 (get!7442 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> b!2142652 (forall!4978 stack!8 lambda!80253)))

(declare-fun b!2142653 () Bool)

(declare-fun lt!798395 () MutLongMap!2776)

(assert (=> b!2142653 (= e!1368803 (and e!1368824 ((_ is LongMap!2776) lt!798395)))))

(assert (=> b!2142653 (= lt!798395 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))))

(declare-fun b!2142654 () Bool)

(assert (=> b!2142654 (= e!1368808 (and setRes!16511 (inv!32076 (totalInput!3139 (h!29770 stack!8))) e!1368806))))

(declare-fun condSetEmpty!16511 () Bool)

(assert (=> b!2142654 (= condSetEmpty!16511 (= (z!5881 (h!29770 stack!8)) ((as const (Array Context!2706 Bool)) false)))))

(assert (= (and start!208006 res!924888) b!2142634))

(assert (= (and b!2142634 res!924876) b!2142651))

(assert (= (and b!2142651 (not res!924880)) b!2142643))

(assert (= (and b!2142651 res!924884) b!2142630))

(assert (= (and b!2142630 res!924879) b!2142627))

(assert (= (and b!2142627 res!924883) b!2142616))

(assert (= (and b!2142616 res!924881) b!2142647))

(assert (= (and b!2142647 res!924886) b!2142624))

(assert (= (and b!2142624 res!924885) b!2142645))

(assert (= (and b!2142645 res!924887) b!2142652))

(assert (= (and b!2142652 (not res!924882)) b!2142621))

(assert (= (and b!2142621 (not res!924877)) b!2142615))

(assert (= (and b!2142615 res!924875) b!2142625))

(assert (= (and b!2142625 res!924878) b!2142619))

(assert (= (and b!2142636 condMapEmpty!13218) mapIsEmpty!13218))

(assert (= (and b!2142636 (not condMapEmpty!13218)) mapNonEmpty!13217))

(assert (= b!2142650 b!2142636))

(assert (= b!2142617 b!2142650))

(assert (= b!2142629 b!2142617))

(assert (= (and b!2142653 ((_ is LongMap!2776) (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))) b!2142629))

(assert (= b!2142622 b!2142653))

(assert (= (and b!2142640 ((_ is HashMap!2690) (cache!3071 cacheFurthestNullable!114))) b!2142622))

(assert (= b!2142640 b!2142641))

(assert (= start!208006 b!2142640))

(assert (= (and b!2142648 condMapEmpty!13216) mapIsEmpty!13217))

(assert (= (and b!2142648 (not condMapEmpty!13216)) mapNonEmpty!13218))

(assert (= b!2142633 b!2142648))

(assert (= b!2142631 b!2142633))

(assert (= b!2142644 b!2142631))

(assert (= (and b!2142639 ((_ is LongMap!2774) (v!28955 (underlying!5744 (cache!3069 cacheDown!1098))))) b!2142644))

(assert (= b!2142614 b!2142639))

(assert (= (and b!2142649 ((_ is HashMap!2688) (cache!3069 cacheDown!1098))) b!2142614))

(assert (= start!208006 b!2142649))

(assert (= (and b!2142637 condMapEmpty!13217) mapIsEmpty!13216))

(assert (= (and b!2142637 (not condMapEmpty!13217)) mapNonEmpty!13216))

(assert (= b!2142628 b!2142637))

(assert (= b!2142626 b!2142628))

(assert (= b!2142632 b!2142626))

(assert (= (and b!2142642 ((_ is LongMap!2775) (v!28957 (underlying!5746 (cache!3070 cacheUp!979))))) b!2142632))

(assert (= b!2142623 b!2142642))

(assert (= (and b!2142635 ((_ is HashMap!2689) (cache!3070 cacheUp!979))) b!2142623))

(assert (= start!208006 b!2142635))

(assert (= (and start!208006 condSetEmpty!16512) setIsEmpty!16511))

(assert (= (and start!208006 (not condSetEmpty!16512)) setNonEmpty!16512))

(assert (= setNonEmpty!16512 b!2142638))

(assert (= start!208006 b!2142646))

(assert (= (and b!2142654 condSetEmpty!16511) setIsEmpty!16512))

(assert (= (and b!2142654 (not condSetEmpty!16511)) setNonEmpty!16511))

(assert (= setNonEmpty!16511 b!2142618))

(assert (= b!2142654 b!2142620))

(assert (= b!2142613 b!2142654))

(assert (= (and start!208006 ((_ is Cons!24369) stack!8)) b!2142613))

(declare-fun m!2587813 () Bool)

(assert (=> b!2142654 m!2587813))

(declare-fun m!2587815 () Bool)

(assert (=> b!2142615 m!2587815))

(declare-fun m!2587817 () Bool)

(assert (=> b!2142627 m!2587817))

(declare-fun m!2587819 () Bool)

(assert (=> b!2142650 m!2587819))

(declare-fun m!2587821 () Bool)

(assert (=> b!2142650 m!2587821))

(declare-fun m!2587823 () Bool)

(assert (=> mapNonEmpty!13218 m!2587823))

(declare-fun m!2587825 () Bool)

(assert (=> b!2142625 m!2587825))

(declare-fun m!2587827 () Bool)

(assert (=> b!2142633 m!2587827))

(declare-fun m!2587829 () Bool)

(assert (=> b!2142633 m!2587829))

(declare-fun m!2587831 () Bool)

(assert (=> b!2142646 m!2587831))

(declare-fun m!2587833 () Bool)

(assert (=> b!2142619 m!2587833))

(declare-fun m!2587835 () Bool)

(assert (=> b!2142651 m!2587835))

(declare-fun m!2587837 () Bool)

(assert (=> b!2142621 m!2587837))

(declare-fun m!2587839 () Bool)

(assert (=> b!2142641 m!2587839))

(declare-fun m!2587841 () Bool)

(assert (=> mapNonEmpty!13216 m!2587841))

(declare-fun m!2587843 () Bool)

(assert (=> b!2142634 m!2587843))

(declare-fun m!2587845 () Bool)

(assert (=> b!2142613 m!2587845))

(declare-fun m!2587847 () Bool)

(assert (=> b!2142620 m!2587847))

(declare-fun m!2587849 () Bool)

(assert (=> setNonEmpty!16512 m!2587849))

(declare-fun m!2587851 () Bool)

(assert (=> b!2142652 m!2587851))

(declare-fun m!2587853 () Bool)

(assert (=> b!2142652 m!2587853))

(assert (=> b!2142624 m!2587853))

(declare-fun m!2587855 () Bool)

(assert (=> b!2142624 m!2587855))

(declare-fun m!2587857 () Bool)

(assert (=> b!2142640 m!2587857))

(declare-fun m!2587859 () Bool)

(assert (=> b!2142616 m!2587859))

(declare-fun m!2587861 () Bool)

(assert (=> b!2142630 m!2587861))

(declare-fun m!2587863 () Bool)

(assert (=> setNonEmpty!16511 m!2587863))

(declare-fun m!2587865 () Bool)

(assert (=> mapNonEmpty!13217 m!2587865))

(declare-fun m!2587867 () Bool)

(assert (=> b!2142628 m!2587867))

(declare-fun m!2587869 () Bool)

(assert (=> b!2142628 m!2587869))

(declare-fun m!2587871 () Bool)

(assert (=> start!208006 m!2587871))

(declare-fun m!2587873 () Bool)

(assert (=> start!208006 m!2587873))

(declare-fun m!2587875 () Bool)

(assert (=> start!208006 m!2587875))

(declare-fun m!2587877 () Bool)

(assert (=> start!208006 m!2587877))

(declare-fun m!2587879 () Bool)

(assert (=> b!2142645 m!2587879))

(check-sat b_and!172639 (not setNonEmpty!16512) (not mapNonEmpty!13218) (not b!2142624) (not b!2142627) (not b!2142636) (not b!2142654) b_and!172637 (not b!2142650) (not b!2142641) b_and!172641 (not b!2142633) (not b!2142618) (not b!2142620) (not b!2142637) (not b!2142613) (not b!2142648) (not b!2142634) (not b!2142645) (not b!2142630) (not b!2142651) (not setNonEmpty!16511) b_and!172643 (not b!2142646) (not mapNonEmpty!13216) (not mapNonEmpty!13217) (not b_next!63757) (not b!2142640) (not b!2142619) (not b!2142615) (not b!2142625) (not start!208006) (not b_next!63767) (not b!2142621) (not b!2142638) (not b!2142652) (not b!2142628) (not b_next!63759) (not b!2142616) (not b_next!63765) b_and!172635 (not b_next!63763) (not b_next!63761) b_and!172633)
(check-sat b_and!172641 b_and!172639 b_and!172643 (not b_next!63757) (not b_next!63767) (not b_next!63759) b_and!172637 (not b_next!63765) b_and!172635 (not b_next!63763) (not b_next!63761) b_and!172633)
(get-model)

(declare-fun d!645009 () Bool)

(declare-fun validCacheMapDown!256 (MutableMap!2688) Bool)

(assert (=> d!645009 (= (valid!2165 cacheDown!1098) (validCacheMapDown!256 (cache!3069 cacheDown!1098)))))

(declare-fun bs!445271 () Bool)

(assert (= bs!445271 d!645009))

(declare-fun m!2587881 () Bool)

(assert (=> bs!445271 m!2587881))

(assert (=> b!2142627 d!645009))

(declare-fun d!645011 () Bool)

(assert (=> d!645011 (= (array_inv!2989 (_keys!3072 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979))))))) (bvsge (size!19070 (_keys!3072 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2142628 d!645011))

(declare-fun d!645013 () Bool)

(assert (=> d!645013 (= (array_inv!2990 (_values!3055 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979))))))) (bvsge (size!19072 (_values!3055 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2142628 d!645013))

(declare-fun d!645015 () Bool)

(declare-fun isBalanced!2462 (Conc!7920) Bool)

(assert (=> d!645015 (= (inv!32076 (totalInput!3140 cacheFurthestNullable!114)) (isBalanced!2462 (c!340636 (totalInput!3140 cacheFurthestNullable!114))))))

(declare-fun bs!445272 () Bool)

(assert (= bs!445272 d!645015))

(declare-fun m!2587883 () Bool)

(assert (=> bs!445272 m!2587883))

(assert (=> b!2142640 d!645015))

(declare-fun d!645017 () Bool)

(declare-fun res!924894 () Bool)

(declare-fun e!1368839 () Bool)

(assert (=> d!645017 (=> res!924894 e!1368839)))

(assert (=> d!645017 (= res!924894 ((_ is Nil!24369) stack!8))))

(assert (=> d!645017 (= (forall!4978 stack!8 lambda!80253) e!1368839)))

(declare-fun b!2142665 () Bool)

(declare-fun e!1368840 () Bool)

(assert (=> b!2142665 (= e!1368839 e!1368840)))

(declare-fun res!924895 () Bool)

(assert (=> b!2142665 (=> (not res!924895) (not e!1368840))))

(declare-fun dynLambda!11374 (Int StackFrame!240) Bool)

(assert (=> b!2142665 (= res!924895 (dynLambda!11374 lambda!80253 (h!29770 stack!8)))))

(declare-fun b!2142666 () Bool)

(assert (=> b!2142666 (= e!1368840 (forall!4978 (t!196983 stack!8) lambda!80253))))

(assert (= (and d!645017 (not res!924894)) b!2142665))

(assert (= (and b!2142665 res!924895) b!2142666))

(declare-fun b_lambda!70681 () Bool)

(assert (=> (not b_lambda!70681) (not b!2142665)))

(declare-fun m!2587885 () Bool)

(assert (=> b!2142665 m!2587885))

(declare-fun m!2587887 () Bool)

(assert (=> b!2142666 m!2587887))

(assert (=> b!2142624 d!645017))

(declare-fun b!2142677 () Bool)

(declare-fun e!1368849 () Bool)

(declare-fun lostCauseZipper!118 ((InoxSet Context!2706)) Bool)

(assert (=> b!2142677 (= e!1368849 (lostCauseZipper!118 z!3839))))

(declare-fun lt!798402 () Int)

(declare-fun d!645019 () Bool)

(assert (=> d!645019 (and (>= lt!798402 (- 1)) (< lt!798402 lt!798392) (>= lt!798402 lastNullablePos!123) (or (= lt!798402 lastNullablePos!123) (>= lt!798402 from!1043)))))

(declare-fun e!1368847 () Int)

(assert (=> d!645019 (= lt!798402 e!1368847)))

(declare-fun c!340642 () Bool)

(assert (=> d!645019 (= c!340642 e!1368849)))

(declare-fun res!924898 () Bool)

(assert (=> d!645019 (=> res!924898 e!1368849)))

(assert (=> d!645019 (= res!924898 (= from!1043 lt!798392))))

(assert (=> d!645019 (and (>= from!1043 0) (<= from!1043 lt!798392))))

(assert (=> d!645019 (= (furthestNullablePosition!81 z!3839 from!1043 totalInput!851 lt!798392 lastNullablePos!123) lt!798402)))

(declare-fun b!2142678 () Bool)

(assert (=> b!2142678 (= e!1368847 lastNullablePos!123)))

(declare-fun b!2142679 () Bool)

(declare-fun e!1368848 () Int)

(declare-fun lt!798403 () (InoxSet Context!2706))

(assert (=> b!2142679 (= e!1368847 (furthestNullablePosition!81 lt!798403 (+ from!1043 1) totalInput!851 lt!798392 e!1368848))))

(declare-fun derivationStepZipper!97 ((InoxSet Context!2706) C!11712) (InoxSet Context!2706))

(declare-fun apply!5971 (BalanceConc!15602 Int) C!11712)

(assert (=> b!2142679 (= lt!798403 (derivationStepZipper!97 z!3839 (apply!5971 totalInput!851 from!1043)))))

(declare-fun c!340641 () Bool)

(assert (=> b!2142679 (= c!340641 (nullableZipper!143 lt!798403))))

(declare-fun b!2142680 () Bool)

(assert (=> b!2142680 (= e!1368848 from!1043)))

(declare-fun b!2142681 () Bool)

(assert (=> b!2142681 (= e!1368848 lastNullablePos!123)))

(assert (= (and d!645019 (not res!924898)) b!2142677))

(assert (= (and d!645019 c!340642) b!2142678))

(assert (= (and d!645019 (not c!340642)) b!2142679))

(assert (= (and b!2142679 c!340641) b!2142680))

(assert (= (and b!2142679 (not c!340641)) b!2142681))

(declare-fun m!2587889 () Bool)

(assert (=> b!2142677 m!2587889))

(declare-fun m!2587891 () Bool)

(assert (=> b!2142679 m!2587891))

(declare-fun m!2587893 () Bool)

(assert (=> b!2142679 m!2587893))

(assert (=> b!2142679 m!2587893))

(declare-fun m!2587895 () Bool)

(assert (=> b!2142679 m!2587895))

(declare-fun m!2587897 () Bool)

(assert (=> b!2142679 m!2587897))

(assert (=> b!2142624 d!645019))

(declare-fun d!645021 () Bool)

(declare-fun res!924899 () Bool)

(declare-fun e!1368850 () Bool)

(assert (=> d!645021 (=> res!924899 e!1368850)))

(assert (=> d!645021 (= res!924899 ((_ is Nil!24369) Nil!24369))))

(assert (=> d!645021 (= (forall!4978 Nil!24369 lambda!80255) e!1368850)))

(declare-fun b!2142682 () Bool)

(declare-fun e!1368851 () Bool)

(assert (=> b!2142682 (= e!1368850 e!1368851)))

(declare-fun res!924900 () Bool)

(assert (=> b!2142682 (=> (not res!924900) (not e!1368851))))

(assert (=> b!2142682 (= res!924900 (dynLambda!11374 lambda!80255 (h!29770 Nil!24369)))))

(declare-fun b!2142683 () Bool)

(assert (=> b!2142683 (= e!1368851 (forall!4978 (t!196983 Nil!24369) lambda!80255))))

(assert (= (and d!645021 (not res!924899)) b!2142682))

(assert (= (and b!2142682 res!924900) b!2142683))

(declare-fun b_lambda!70683 () Bool)

(assert (=> (not b_lambda!70683) (not b!2142682)))

(declare-fun m!2587899 () Bool)

(assert (=> b!2142682 m!2587899))

(declare-fun m!2587901 () Bool)

(assert (=> b!2142683 m!2587901))

(assert (=> b!2142625 d!645021))

(declare-fun d!645023 () Bool)

(declare-fun res!924903 () Bool)

(declare-fun e!1368854 () Bool)

(assert (=> d!645023 (=> (not res!924903) (not e!1368854))))

(assert (=> d!645023 (= res!924903 ((_ is HashMap!2690) (cache!3071 cacheFurthestNullable!114)))))

(assert (=> d!645023 (= (inv!32073 cacheFurthestNullable!114) e!1368854)))

(declare-fun b!2142686 () Bool)

(declare-fun validCacheMapFurthestNullable!108 (MutableMap!2690 BalanceConc!15602) Bool)

(assert (=> b!2142686 (= e!1368854 (validCacheMapFurthestNullable!108 (cache!3071 cacheFurthestNullable!114) (totalInput!3140 cacheFurthestNullable!114)))))

(assert (= (and d!645023 res!924903) b!2142686))

(declare-fun m!2587903 () Bool)

(assert (=> b!2142686 m!2587903))

(assert (=> start!208006 d!645023))

(declare-fun d!645025 () Bool)

(declare-fun res!924906 () Bool)

(declare-fun e!1368857 () Bool)

(assert (=> d!645025 (=> (not res!924906) (not e!1368857))))

(assert (=> d!645025 (= res!924906 ((_ is HashMap!2688) (cache!3069 cacheDown!1098)))))

(assert (=> d!645025 (= (inv!32074 cacheDown!1098) e!1368857)))

(declare-fun b!2142689 () Bool)

(assert (=> b!2142689 (= e!1368857 (validCacheMapDown!256 (cache!3069 cacheDown!1098)))))

(assert (= (and d!645025 res!924906) b!2142689))

(assert (=> b!2142689 m!2587881))

(assert (=> start!208006 d!645025))

(declare-fun d!645027 () Bool)

(declare-fun res!924909 () Bool)

(declare-fun e!1368860 () Bool)

(assert (=> d!645027 (=> (not res!924909) (not e!1368860))))

(assert (=> d!645027 (= res!924909 ((_ is HashMap!2689) (cache!3070 cacheUp!979)))))

(assert (=> d!645027 (= (inv!32075 cacheUp!979) e!1368860)))

(declare-fun b!2142692 () Bool)

(declare-fun validCacheMapUp!258 (MutableMap!2689) Bool)

(assert (=> b!2142692 (= e!1368860 (validCacheMapUp!258 (cache!3070 cacheUp!979)))))

(assert (= (and d!645027 res!924909) b!2142692))

(declare-fun m!2587905 () Bool)

(assert (=> b!2142692 m!2587905))

(assert (=> start!208006 d!645027))

(declare-fun d!645029 () Bool)

(assert (=> d!645029 (= (inv!32076 totalInput!851) (isBalanced!2462 (c!340636 totalInput!851)))))

(declare-fun bs!445273 () Bool)

(assert (= bs!445273 d!645029))

(declare-fun m!2587907 () Bool)

(assert (=> bs!445273 m!2587907))

(assert (=> start!208006 d!645029))

(declare-fun d!645031 () Bool)

(declare-fun c!340645 () Bool)

(assert (=> d!645031 (= c!340645 ((_ is Node!7920) (c!340636 (totalInput!3140 cacheFurthestNullable!114))))))

(declare-fun e!1368865 () Bool)

(assert (=> d!645031 (= (inv!32072 (c!340636 (totalInput!3140 cacheFurthestNullable!114))) e!1368865)))

(declare-fun b!2142699 () Bool)

(declare-fun inv!32078 (Conc!7920) Bool)

(assert (=> b!2142699 (= e!1368865 (inv!32078 (c!340636 (totalInput!3140 cacheFurthestNullable!114))))))

(declare-fun b!2142700 () Bool)

(declare-fun e!1368866 () Bool)

(assert (=> b!2142700 (= e!1368865 e!1368866)))

(declare-fun res!924912 () Bool)

(assert (=> b!2142700 (= res!924912 (not ((_ is Leaf!11579) (c!340636 (totalInput!3140 cacheFurthestNullable!114)))))))

(assert (=> b!2142700 (=> res!924912 e!1368866)))

(declare-fun b!2142701 () Bool)

(declare-fun inv!32079 (Conc!7920) Bool)

(assert (=> b!2142701 (= e!1368866 (inv!32079 (c!340636 (totalInput!3140 cacheFurthestNullable!114))))))

(assert (= (and d!645031 c!340645) b!2142699))

(assert (= (and d!645031 (not c!340645)) b!2142700))

(assert (= (and b!2142700 (not res!924912)) b!2142701))

(declare-fun m!2587909 () Bool)

(assert (=> b!2142699 m!2587909))

(declare-fun m!2587911 () Bool)

(assert (=> b!2142701 m!2587911))

(assert (=> b!2142641 d!645031))

(declare-fun d!645033 () Bool)

(declare-fun c!340646 () Bool)

(assert (=> d!645033 (= c!340646 ((_ is Node!7920) (c!340636 totalInput!851)))))

(declare-fun e!1368867 () Bool)

(assert (=> d!645033 (= (inv!32072 (c!340636 totalInput!851)) e!1368867)))

(declare-fun b!2142702 () Bool)

(assert (=> b!2142702 (= e!1368867 (inv!32078 (c!340636 totalInput!851)))))

(declare-fun b!2142703 () Bool)

(declare-fun e!1368868 () Bool)

(assert (=> b!2142703 (= e!1368867 e!1368868)))

(declare-fun res!924913 () Bool)

(assert (=> b!2142703 (= res!924913 (not ((_ is Leaf!11579) (c!340636 totalInput!851))))))

(assert (=> b!2142703 (=> res!924913 e!1368868)))

(declare-fun b!2142704 () Bool)

(assert (=> b!2142704 (= e!1368868 (inv!32079 (c!340636 totalInput!851)))))

(assert (= (and d!645033 c!340646) b!2142702))

(assert (= (and d!645033 (not c!340646)) b!2142703))

(assert (= (and b!2142703 (not res!924913)) b!2142704))

(declare-fun m!2587913 () Bool)

(assert (=> b!2142702 m!2587913))

(declare-fun m!2587915 () Bool)

(assert (=> b!2142704 m!2587915))

(assert (=> b!2142646 d!645033))

(declare-fun b!2142717 () Bool)

(declare-fun res!924928 () Bool)

(declare-fun e!1368873 () Bool)

(assert (=> b!2142717 (=> (not res!924928) (not e!1368873))))

(assert (=> b!2142717 (= res!924928 (= (size!19074 (totalInput!3139 (h!29770 stack!8))) (size!19074 (totalInput!3139 (h!29770 stack!8)))))))

(declare-fun b!2142718 () Bool)

(declare-fun res!924931 () Bool)

(assert (=> b!2142718 (=> (not res!924931) (not e!1368873))))

(assert (=> b!2142718 (= res!924931 (<= (from!2749 (h!29770 stack!8)) (size!19074 (totalInput!3139 (h!29770 stack!8)))))))

(declare-fun b!2142719 () Bool)

(assert (=> b!2142719 (= e!1368873 (= (res!924889 (h!29770 stack!8)) (furthestNullablePosition!81 (z!5881 (h!29770 stack!8)) (from!2749 (h!29770 stack!8)) (totalInput!3139 (h!29770 stack!8)) (size!19074 (totalInput!3139 (h!29770 stack!8))) (lastNullablePos!436 (h!29770 stack!8)))))))

(declare-fun b!2142720 () Bool)

(declare-fun res!924930 () Bool)

(assert (=> b!2142720 (=> (not res!924930) (not e!1368873))))

(assert (=> b!2142720 (= res!924930 (and (>= (lastNullablePos!436 (h!29770 stack!8)) (- 1)) (< (lastNullablePos!436 (h!29770 stack!8)) (from!2749 (h!29770 stack!8)))))))

(declare-fun b!2142721 () Bool)

(declare-fun res!924926 () Bool)

(assert (=> b!2142721 (=> (not res!924926) (not e!1368873))))

(declare-fun e!1368874 () Bool)

(assert (=> b!2142721 (= res!924926 e!1368874)))

(declare-fun res!924929 () Bool)

(assert (=> b!2142721 (=> res!924929 e!1368874)))

(assert (=> b!2142721 (= res!924929 (not (nullableZipper!143 (z!5881 (h!29770 stack!8)))))))

(declare-fun d!645035 () Bool)

(declare-fun res!924927 () Bool)

(assert (=> d!645035 (=> (not res!924927) (not e!1368873))))

(assert (=> d!645035 (= res!924927 (>= (from!2749 (h!29770 stack!8)) 0))))

(assert (=> d!645035 (= (inv!32071 (h!29770 stack!8)) e!1368873)))

(declare-fun b!2142722 () Bool)

(assert (=> b!2142722 (= e!1368874 (= (lastNullablePos!436 (h!29770 stack!8)) (- (from!2749 (h!29770 stack!8)) 1)))))

(assert (= (and d!645035 res!924927) b!2142718))

(assert (= (and b!2142718 res!924931) b!2142717))

(assert (= (and b!2142717 res!924928) b!2142720))

(assert (= (and b!2142720 res!924930) b!2142721))

(assert (= (and b!2142721 (not res!924929)) b!2142722))

(assert (= (and b!2142721 res!924926) b!2142719))

(declare-fun m!2587917 () Bool)

(assert (=> b!2142717 m!2587917))

(assert (=> b!2142718 m!2587917))

(assert (=> b!2142719 m!2587917))

(assert (=> b!2142719 m!2587917))

(declare-fun m!2587919 () Bool)

(assert (=> b!2142719 m!2587919))

(declare-fun m!2587921 () Bool)

(assert (=> b!2142721 m!2587921))

(assert (=> b!2142613 d!645035))

(declare-fun d!645037 () Bool)

(declare-fun lambda!80258 () Int)

(declare-fun forall!4979 (List!24451 Int) Bool)

(assert (=> d!645037 (= (inv!32077 setElem!16512) (forall!4979 (exprs!1853 setElem!16512) lambda!80258))))

(declare-fun bs!445274 () Bool)

(assert (= bs!445274 d!645037))

(declare-fun m!2587923 () Bool)

(assert (=> bs!445274 m!2587923))

(assert (=> setNonEmpty!16511 d!645037))

(declare-fun b!2142723 () Bool)

(declare-fun e!1368877 () Bool)

(assert (=> b!2142723 (= e!1368877 (lostCauseZipper!118 z!3839))))

(declare-fun lt!798404 () Int)

(declare-fun d!645039 () Bool)

(assert (=> d!645039 (and (>= lt!798404 (- 1)) (< lt!798404 totalInputSize!296) (>= lt!798404 lastNullablePos!123) (or (= lt!798404 lastNullablePos!123) (>= lt!798404 from!1043)))))

(declare-fun e!1368875 () Int)

(assert (=> d!645039 (= lt!798404 e!1368875)))

(declare-fun c!340648 () Bool)

(assert (=> d!645039 (= c!340648 e!1368877)))

(declare-fun res!924932 () Bool)

(assert (=> d!645039 (=> res!924932 e!1368877)))

(assert (=> d!645039 (= res!924932 (= from!1043 totalInputSize!296))))

(assert (=> d!645039 (and (>= from!1043 0) (<= from!1043 totalInputSize!296))))

(assert (=> d!645039 (= (furthestNullablePosition!81 z!3839 from!1043 totalInput!851 totalInputSize!296 lastNullablePos!123) lt!798404)))

(declare-fun b!2142724 () Bool)

(assert (=> b!2142724 (= e!1368875 lastNullablePos!123)))

(declare-fun b!2142725 () Bool)

(declare-fun lt!798405 () (InoxSet Context!2706))

(declare-fun e!1368876 () Int)

(assert (=> b!2142725 (= e!1368875 (furthestNullablePosition!81 lt!798405 (+ from!1043 1) totalInput!851 totalInputSize!296 e!1368876))))

(assert (=> b!2142725 (= lt!798405 (derivationStepZipper!97 z!3839 (apply!5971 totalInput!851 from!1043)))))

(declare-fun c!340647 () Bool)

(assert (=> b!2142725 (= c!340647 (nullableZipper!143 lt!798405))))

(declare-fun b!2142726 () Bool)

(assert (=> b!2142726 (= e!1368876 from!1043)))

(declare-fun b!2142727 () Bool)

(assert (=> b!2142727 (= e!1368876 lastNullablePos!123)))

(assert (= (and d!645039 (not res!924932)) b!2142723))

(assert (= (and d!645039 c!340648) b!2142724))

(assert (= (and d!645039 (not c!340648)) b!2142725))

(assert (= (and b!2142725 c!340647) b!2142726))

(assert (= (and b!2142725 (not c!340647)) b!2142727))

(assert (=> b!2142723 m!2587889))

(declare-fun m!2587925 () Bool)

(assert (=> b!2142725 m!2587925))

(assert (=> b!2142725 m!2587893))

(assert (=> b!2142725 m!2587893))

(assert (=> b!2142725 m!2587895))

(declare-fun m!2587927 () Bool)

(assert (=> b!2142725 m!2587927))

(assert (=> b!2142615 d!645039))

(declare-fun d!645041 () Bool)

(assert (=> d!645041 (= (valid!2166 cacheUp!979) (validCacheMapUp!258 (cache!3070 cacheUp!979)))))

(declare-fun bs!445275 () Bool)

(assert (= bs!445275 d!645041))

(assert (=> bs!445275 m!2587905))

(assert (=> b!2142630 d!645041))

(declare-fun d!645043 () Bool)

(declare-fun res!924933 () Bool)

(declare-fun e!1368878 () Bool)

(assert (=> d!645043 (=> res!924933 e!1368878)))

(assert (=> d!645043 (= res!924933 ((_ is Nil!24369) stack!8))))

(assert (=> d!645043 (= (forall!4978 stack!8 lambda!80254) e!1368878)))

(declare-fun b!2142728 () Bool)

(declare-fun e!1368879 () Bool)

(assert (=> b!2142728 (= e!1368878 e!1368879)))

(declare-fun res!924934 () Bool)

(assert (=> b!2142728 (=> (not res!924934) (not e!1368879))))

(assert (=> b!2142728 (= res!924934 (dynLambda!11374 lambda!80254 (h!29770 stack!8)))))

(declare-fun b!2142729 () Bool)

(assert (=> b!2142729 (= e!1368879 (forall!4978 (t!196983 stack!8) lambda!80254))))

(assert (= (and d!645043 (not res!924933)) b!2142728))

(assert (= (and b!2142728 res!924934) b!2142729))

(declare-fun b_lambda!70685 () Bool)

(assert (=> (not b_lambda!70685) (not b!2142728)))

(declare-fun m!2587929 () Bool)

(assert (=> b!2142728 m!2587929))

(declare-fun m!2587931 () Bool)

(assert (=> b!2142729 m!2587931))

(assert (=> b!2142645 d!645043))

(declare-fun bs!445276 () Bool)

(declare-fun d!645045 () Bool)

(assert (= bs!445276 (and d!645045 d!645037)))

(declare-fun lambda!80259 () Int)

(assert (=> bs!445276 (= lambda!80259 lambda!80258)))

(assert (=> d!645045 (= (inv!32077 setElem!16511) (forall!4979 (exprs!1853 setElem!16511) lambda!80259))))

(declare-fun bs!445277 () Bool)

(assert (= bs!445277 d!645045))

(declare-fun m!2587933 () Bool)

(assert (=> bs!445277 m!2587933))

(assert (=> setNonEmpty!16512 d!645045))

(declare-fun d!645047 () Bool)

(declare-fun lambda!80262 () Int)

(declare-fun exists!714 ((InoxSet Context!2706) Int) Bool)

(assert (=> d!645047 (= (nullableZipper!143 z!3839) (exists!714 z!3839 lambda!80262))))

(declare-fun bs!445278 () Bool)

(assert (= bs!445278 d!645047))

(declare-fun m!2587935 () Bool)

(assert (=> bs!445278 m!2587935))

(assert (=> b!2142651 d!645047))

(declare-fun d!645049 () Bool)

(declare-fun e!1368882 () Bool)

(assert (=> d!645049 e!1368882))

(declare-fun res!924937 () Bool)

(assert (=> d!645049 (=> res!924937 e!1368882)))

(declare-fun lt!798408 () Option!4941)

(declare-fun isEmpty!14334 (Option!4941) Bool)

(assert (=> d!645049 (= res!924937 (isEmpty!14334 lt!798408))))

(declare-fun choose!12691 (CacheFurthestNullable!808 (InoxSet Context!2706) Int Int) Option!4941)

(assert (=> d!645049 (= lt!798408 (choose!12691 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> d!645049 (and (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043))))

(assert (=> d!645049 (= (get!7442 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123) lt!798408)))

(declare-fun b!2142732 () Bool)

(declare-fun get!7443 (Option!4941) Int)

(assert (=> b!2142732 (= e!1368882 (= (get!7443 lt!798408) (furthestNullablePosition!81 z!3839 from!1043 (totalInput!3140 cacheFurthestNullable!114) (size!19074 (totalInput!3140 cacheFurthestNullable!114)) lastNullablePos!123)))))

(assert (= (and d!645049 (not res!924937)) b!2142732))

(declare-fun m!2587937 () Bool)

(assert (=> d!645049 m!2587937))

(declare-fun m!2587939 () Bool)

(assert (=> d!645049 m!2587939))

(declare-fun m!2587941 () Bool)

(assert (=> b!2142732 m!2587941))

(declare-fun m!2587943 () Bool)

(assert (=> b!2142732 m!2587943))

(assert (=> b!2142732 m!2587943))

(declare-fun m!2587945 () Bool)

(assert (=> b!2142732 m!2587945))

(assert (=> b!2142652 d!645049))

(assert (=> b!2142652 d!645017))

(declare-fun d!645051 () Bool)

(declare-fun res!924938 () Bool)

(declare-fun e!1368883 () Bool)

(assert (=> d!645051 (=> res!924938 e!1368883)))

(assert (=> d!645051 (= res!924938 ((_ is Nil!24369) Nil!24369))))

(assert (=> d!645051 (= (forall!4978 Nil!24369 lambda!80254) e!1368883)))

(declare-fun b!2142733 () Bool)

(declare-fun e!1368884 () Bool)

(assert (=> b!2142733 (= e!1368883 e!1368884)))

(declare-fun res!924939 () Bool)

(assert (=> b!2142733 (=> (not res!924939) (not e!1368884))))

(assert (=> b!2142733 (= res!924939 (dynLambda!11374 lambda!80254 (h!29770 Nil!24369)))))

(declare-fun b!2142734 () Bool)

(assert (=> b!2142734 (= e!1368884 (forall!4978 (t!196983 Nil!24369) lambda!80254))))

(assert (= (and d!645051 (not res!924938)) b!2142733))

(assert (= (and b!2142733 res!924939) b!2142734))

(declare-fun b_lambda!70687 () Bool)

(assert (=> (not b_lambda!70687) (not b!2142733)))

(declare-fun m!2587947 () Bool)

(assert (=> b!2142733 m!2587947))

(declare-fun m!2587949 () Bool)

(assert (=> b!2142734 m!2587949))

(assert (=> b!2142619 d!645051))

(declare-fun d!645053 () Bool)

(declare-fun lt!798411 () Int)

(declare-fun size!19075 (List!24452) Int)

(declare-fun list!9552 (BalanceConc!15602) List!24452)

(assert (=> d!645053 (= lt!798411 (size!19075 (list!9552 totalInput!851)))))

(declare-fun size!19076 (Conc!7920) Int)

(assert (=> d!645053 (= lt!798411 (size!19076 (c!340636 totalInput!851)))))

(assert (=> d!645053 (= (size!19074 totalInput!851) lt!798411)))

(declare-fun bs!445279 () Bool)

(assert (= bs!445279 d!645053))

(declare-fun m!2587951 () Bool)

(assert (=> bs!445279 m!2587951))

(assert (=> bs!445279 m!2587951))

(declare-fun m!2587953 () Bool)

(assert (=> bs!445279 m!2587953))

(declare-fun m!2587955 () Bool)

(assert (=> bs!445279 m!2587955))

(assert (=> b!2142634 d!645053))

(declare-fun d!645055 () Bool)

(assert (=> d!645055 (= (valid!2167 cacheFurthestNullable!114) (validCacheMapFurthestNullable!108 (cache!3071 cacheFurthestNullable!114) (totalInput!3140 cacheFurthestNullable!114)))))

(declare-fun bs!445280 () Bool)

(assert (= bs!445280 d!645055))

(assert (=> bs!445280 m!2587903))

(assert (=> b!2142616 d!645055))

(declare-fun d!645057 () Bool)

(assert (=> d!645057 (= (array_inv!2989 (_keys!3073 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))))) (bvsge (size!19070 (_keys!3073 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2142650 d!645057))

(declare-fun d!645059 () Bool)

(assert (=> d!645059 (= (array_inv!2992 (_values!3056 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))))) (bvsge (size!19073 (_values!3056 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2142650 d!645059))

(declare-fun d!645061 () Bool)

(assert (=> d!645061 (= (array_inv!2989 (_keys!3071 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098))))))) (bvsge (size!19070 (_keys!3071 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2142633 d!645061))

(declare-fun d!645063 () Bool)

(assert (=> d!645063 (= (array_inv!2991 (_values!3054 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098))))))) (bvsge (size!19071 (_values!3054 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2142633 d!645063))

(declare-fun d!645065 () Bool)

(assert (=> d!645065 (= (inv!32076 (totalInput!3139 (h!29770 stack!8))) (isBalanced!2462 (c!340636 (totalInput!3139 (h!29770 stack!8)))))))

(declare-fun bs!445281 () Bool)

(assert (= bs!445281 d!645065))

(declare-fun m!2587957 () Bool)

(assert (=> bs!445281 m!2587957))

(assert (=> b!2142654 d!645065))

(declare-fun d!645067 () Bool)

(declare-fun c!340651 () Bool)

(assert (=> d!645067 (= c!340651 ((_ is Node!7920) (c!340636 (totalInput!3139 (h!29770 stack!8)))))))

(declare-fun e!1368885 () Bool)

(assert (=> d!645067 (= (inv!32072 (c!340636 (totalInput!3139 (h!29770 stack!8)))) e!1368885)))

(declare-fun b!2142735 () Bool)

(assert (=> b!2142735 (= e!1368885 (inv!32078 (c!340636 (totalInput!3139 (h!29770 stack!8)))))))

(declare-fun b!2142736 () Bool)

(declare-fun e!1368886 () Bool)

(assert (=> b!2142736 (= e!1368885 e!1368886)))

(declare-fun res!924940 () Bool)

(assert (=> b!2142736 (= res!924940 (not ((_ is Leaf!11579) (c!340636 (totalInput!3139 (h!29770 stack!8))))))))

(assert (=> b!2142736 (=> res!924940 e!1368886)))

(declare-fun b!2142737 () Bool)

(assert (=> b!2142737 (= e!1368886 (inv!32079 (c!340636 (totalInput!3139 (h!29770 stack!8)))))))

(assert (= (and d!645067 c!340651) b!2142735))

(assert (= (and d!645067 (not c!340651)) b!2142736))

(assert (= (and b!2142736 (not res!924940)) b!2142737))

(declare-fun m!2587959 () Bool)

(assert (=> b!2142735 m!2587959))

(declare-fun m!2587961 () Bool)

(assert (=> b!2142737 m!2587961))

(assert (=> b!2142620 d!645067))

(declare-fun d!645069 () Bool)

(declare-fun res!924941 () Bool)

(declare-fun e!1368887 () Bool)

(assert (=> d!645069 (=> res!924941 e!1368887)))

(assert (=> d!645069 (= res!924941 ((_ is Nil!24369) Nil!24369))))

(assert (=> d!645069 (= (forall!4978 Nil!24369 lambda!80253) e!1368887)))

(declare-fun b!2142738 () Bool)

(declare-fun e!1368888 () Bool)

(assert (=> b!2142738 (= e!1368887 e!1368888)))

(declare-fun res!924942 () Bool)

(assert (=> b!2142738 (=> (not res!924942) (not e!1368888))))

(assert (=> b!2142738 (= res!924942 (dynLambda!11374 lambda!80253 (h!29770 Nil!24369)))))

(declare-fun b!2142739 () Bool)

(assert (=> b!2142739 (= e!1368888 (forall!4978 (t!196983 Nil!24369) lambda!80253))))

(assert (= (and d!645069 (not res!924941)) b!2142738))

(assert (= (and b!2142738 res!924942) b!2142739))

(declare-fun b_lambda!70689 () Bool)

(assert (=> (not b_lambda!70689) (not b!2142738)))

(declare-fun m!2587963 () Bool)

(assert (=> b!2142738 m!2587963))

(declare-fun m!2587965 () Bool)

(assert (=> b!2142739 m!2587965))

(assert (=> b!2142621 d!645069))

(declare-fun condSetEmpty!16515 () Bool)

(assert (=> setNonEmpty!16512 (= condSetEmpty!16515 (= setRest!16511 ((as const (Array Context!2706 Bool)) false)))))

(declare-fun setRes!16515 () Bool)

(assert (=> setNonEmpty!16512 (= tp!663236 setRes!16515)))

(declare-fun setIsEmpty!16515 () Bool)

(assert (=> setIsEmpty!16515 setRes!16515))

(declare-fun setNonEmpty!16515 () Bool)

(declare-fun setElem!16515 () Context!2706)

(declare-fun tp!663268 () Bool)

(declare-fun e!1368891 () Bool)

(assert (=> setNonEmpty!16515 (= setRes!16515 (and tp!663268 (inv!32077 setElem!16515) e!1368891))))

(declare-fun setRest!16515 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16515 (= setRest!16511 ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16515 true) setRest!16515))))

(declare-fun b!2142744 () Bool)

(declare-fun tp!663269 () Bool)

(assert (=> b!2142744 (= e!1368891 tp!663269)))

(assert (= (and setNonEmpty!16512 condSetEmpty!16515) setIsEmpty!16515))

(assert (= (and setNonEmpty!16512 (not condSetEmpty!16515)) setNonEmpty!16515))

(assert (= setNonEmpty!16515 b!2142744))

(declare-fun m!2587967 () Bool)

(assert (=> setNonEmpty!16515 m!2587967))

(declare-fun setIsEmpty!16520 () Bool)

(declare-fun setRes!16520 () Bool)

(assert (=> setIsEmpty!16520 setRes!16520))

(declare-fun b!2142759 () Bool)

(declare-fun e!1368904 () Bool)

(declare-fun tp!663296 () Bool)

(assert (=> b!2142759 (= e!1368904 tp!663296)))

(declare-fun e!1368906 () Bool)

(declare-fun b!2142760 () Bool)

(declare-fun mapDefault!13221 () List!24454)

(declare-fun tp!663299 () Bool)

(declare-fun tp_is_empty!9517 () Bool)

(declare-fun tp!663297 () Bool)

(declare-fun e!1368907 () Bool)

(assert (=> b!2142760 (= e!1368906 (and tp!663297 (inv!32077 (_2!14298 (_1!14299 (h!29771 mapDefault!13221)))) e!1368907 tp_is_empty!9517 setRes!16520 tp!663299))))

(declare-fun condSetEmpty!16520 () Bool)

(assert (=> b!2142760 (= condSetEmpty!16520 (= (_2!14299 (h!29771 mapDefault!13221)) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun setIsEmpty!16521 () Bool)

(declare-fun setRes!16521 () Bool)

(assert (=> setIsEmpty!16521 setRes!16521))

(declare-fun mapIsEmpty!13221 () Bool)

(declare-fun mapRes!13221 () Bool)

(assert (=> mapIsEmpty!13221 mapRes!13221))

(declare-fun b!2142761 () Bool)

(declare-fun e!1368905 () Bool)

(declare-fun tp!663293 () Bool)

(assert (=> b!2142761 (= e!1368905 tp!663293)))

(declare-fun condMapEmpty!13221 () Bool)

(assert (=> mapNonEmpty!13218 (= condMapEmpty!13221 (= mapRest!13217 ((as const (Array (_ BitVec 32) List!24454)) mapDefault!13221)))))

(assert (=> mapNonEmpty!13218 (= tp!663240 (and e!1368906 mapRes!13221))))

(declare-fun b!2142762 () Bool)

(declare-fun tp!663302 () Bool)

(assert (=> b!2142762 (= e!1368907 tp!663302)))

(declare-fun b!2142763 () Bool)

(declare-fun e!1368908 () Bool)

(declare-fun tp!663294 () Bool)

(assert (=> b!2142763 (= e!1368908 tp!663294)))

(declare-fun tp!663295 () Bool)

(declare-fun e!1368909 () Bool)

(declare-fun b!2142764 () Bool)

(declare-fun tp!663301 () Bool)

(declare-fun mapValue!13221 () List!24454)

(assert (=> b!2142764 (= e!1368909 (and tp!663301 (inv!32077 (_2!14298 (_1!14299 (h!29771 mapValue!13221)))) e!1368905 tp_is_empty!9517 setRes!16521 tp!663295))))

(declare-fun condSetEmpty!16521 () Bool)

(assert (=> b!2142764 (= condSetEmpty!16521 (= (_2!14299 (h!29771 mapValue!13221)) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun tp!663300 () Bool)

(declare-fun setNonEmpty!16520 () Bool)

(declare-fun setElem!16521 () Context!2706)

(assert (=> setNonEmpty!16520 (= setRes!16520 (and tp!663300 (inv!32077 setElem!16521) e!1368904))))

(declare-fun setRest!16520 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16520 (= (_2!14299 (h!29771 mapDefault!13221)) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16521 true) setRest!16520))))

(declare-fun tp!663298 () Bool)

(declare-fun setElem!16520 () Context!2706)

(declare-fun setNonEmpty!16521 () Bool)

(assert (=> setNonEmpty!16521 (= setRes!16521 (and tp!663298 (inv!32077 setElem!16520) e!1368908))))

(declare-fun setRest!16521 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16521 (= (_2!14299 (h!29771 mapValue!13221)) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16520 true) setRest!16521))))

(declare-fun mapNonEmpty!13221 () Bool)

(declare-fun tp!663292 () Bool)

(assert (=> mapNonEmpty!13221 (= mapRes!13221 (and tp!663292 e!1368909))))

(declare-fun mapRest!13221 () (Array (_ BitVec 32) List!24454))

(declare-fun mapKey!13221 () (_ BitVec 32))

(assert (=> mapNonEmpty!13221 (= mapRest!13217 (store mapRest!13221 mapKey!13221 mapValue!13221))))

(assert (= (and mapNonEmpty!13218 condMapEmpty!13221) mapIsEmpty!13221))

(assert (= (and mapNonEmpty!13218 (not condMapEmpty!13221)) mapNonEmpty!13221))

(assert (= b!2142764 b!2142761))

(assert (= (and b!2142764 condSetEmpty!16521) setIsEmpty!16521))

(assert (= (and b!2142764 (not condSetEmpty!16521)) setNonEmpty!16521))

(assert (= setNonEmpty!16521 b!2142763))

(assert (= (and mapNonEmpty!13221 ((_ is Cons!24370) mapValue!13221)) b!2142764))

(assert (= b!2142760 b!2142762))

(assert (= (and b!2142760 condSetEmpty!16520) setIsEmpty!16520))

(assert (= (and b!2142760 (not condSetEmpty!16520)) setNonEmpty!16520))

(assert (= setNonEmpty!16520 b!2142759))

(assert (= (and mapNonEmpty!13218 ((_ is Cons!24370) mapDefault!13221)) b!2142760))

(declare-fun m!2587969 () Bool)

(assert (=> b!2142764 m!2587969))

(declare-fun m!2587971 () Bool)

(assert (=> mapNonEmpty!13221 m!2587971))

(declare-fun m!2587973 () Bool)

(assert (=> setNonEmpty!16520 m!2587973))

(declare-fun m!2587975 () Bool)

(assert (=> b!2142760 m!2587975))

(declare-fun m!2587977 () Bool)

(assert (=> setNonEmpty!16521 m!2587977))

(declare-fun e!1368917 () Bool)

(declare-fun tp!663313 () Bool)

(declare-fun setNonEmpty!16524 () Bool)

(declare-fun setElem!16524 () Context!2706)

(declare-fun setRes!16524 () Bool)

(assert (=> setNonEmpty!16524 (= setRes!16524 (and tp!663313 (inv!32077 setElem!16524) e!1368917))))

(declare-fun setRest!16524 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16524 (= (_2!14299 (h!29771 mapValue!13216)) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16524 true) setRest!16524))))

(declare-fun e!1368916 () Bool)

(assert (=> mapNonEmpty!13218 (= tp!663243 e!1368916)))

(declare-fun b!2142773 () Bool)

(declare-fun e!1368918 () Bool)

(declare-fun tp!663314 () Bool)

(assert (=> b!2142773 (= e!1368918 tp!663314)))

(declare-fun setIsEmpty!16524 () Bool)

(assert (=> setIsEmpty!16524 setRes!16524))

(declare-fun b!2142774 () Bool)

(declare-fun tp!663317 () Bool)

(assert (=> b!2142774 (= e!1368917 tp!663317)))

(declare-fun b!2142775 () Bool)

(declare-fun tp!663316 () Bool)

(declare-fun tp!663315 () Bool)

(assert (=> b!2142775 (= e!1368916 (and tp!663316 (inv!32077 (_2!14298 (_1!14299 (h!29771 mapValue!13216)))) e!1368918 tp_is_empty!9517 setRes!16524 tp!663315))))

(declare-fun condSetEmpty!16524 () Bool)

(assert (=> b!2142775 (= condSetEmpty!16524 (= (_2!14299 (h!29771 mapValue!13216)) ((as const (Array Context!2706 Bool)) false)))))

(assert (= b!2142775 b!2142773))

(assert (= (and b!2142775 condSetEmpty!16524) setIsEmpty!16524))

(assert (= (and b!2142775 (not condSetEmpty!16524)) setNonEmpty!16524))

(assert (= setNonEmpty!16524 b!2142774))

(assert (= (and mapNonEmpty!13218 ((_ is Cons!24370) mapValue!13216)) b!2142775))

(declare-fun m!2587979 () Bool)

(assert (=> setNonEmpty!16524 m!2587979))

(declare-fun m!2587981 () Bool)

(assert (=> b!2142775 m!2587981))

(declare-fun e!1368926 () Bool)

(assert (=> b!2142628 (= tp!663242 e!1368926)))

(declare-fun setRes!16527 () Bool)

(declare-fun tp!663329 () Bool)

(declare-fun e!1368927 () Bool)

(declare-fun b!2142784 () Bool)

(assert (=> b!2142784 (= e!1368926 (and (inv!32077 (_1!14300 (_1!14301 (h!29772 (zeroValue!3033 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979)))))))))) e!1368927 tp_is_empty!9517 setRes!16527 tp!663329))))

(declare-fun condSetEmpty!16527 () Bool)

(assert (=> b!2142784 (= condSetEmpty!16527 (= (_2!14301 (h!29772 (zeroValue!3033 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979)))))))) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun b!2142785 () Bool)

(declare-fun e!1368925 () Bool)

(declare-fun tp!663326 () Bool)

(assert (=> b!2142785 (= e!1368925 tp!663326)))

(declare-fun b!2142786 () Bool)

(declare-fun tp!663327 () Bool)

(assert (=> b!2142786 (= e!1368927 tp!663327)))

(declare-fun setIsEmpty!16527 () Bool)

(assert (=> setIsEmpty!16527 setRes!16527))

(declare-fun setNonEmpty!16527 () Bool)

(declare-fun setElem!16527 () Context!2706)

(declare-fun tp!663328 () Bool)

(assert (=> setNonEmpty!16527 (= setRes!16527 (and tp!663328 (inv!32077 setElem!16527) e!1368925))))

(declare-fun setRest!16527 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16527 (= (_2!14301 (h!29772 (zeroValue!3033 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16527 true) setRest!16527))))

(assert (= b!2142784 b!2142786))

(assert (= (and b!2142784 condSetEmpty!16527) setIsEmpty!16527))

(assert (= (and b!2142784 (not condSetEmpty!16527)) setNonEmpty!16527))

(assert (= setNonEmpty!16527 b!2142785))

(assert (= (and b!2142628 ((_ is Cons!24371) (zeroValue!3033 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979)))))))) b!2142784))

(declare-fun m!2587983 () Bool)

(assert (=> b!2142784 m!2587983))

(declare-fun m!2587985 () Bool)

(assert (=> setNonEmpty!16527 m!2587985))

(declare-fun e!1368929 () Bool)

(assert (=> b!2142628 (= tp!663248 e!1368929)))

(declare-fun e!1368930 () Bool)

(declare-fun setRes!16528 () Bool)

(declare-fun b!2142787 () Bool)

(declare-fun tp!663333 () Bool)

(assert (=> b!2142787 (= e!1368929 (and (inv!32077 (_1!14300 (_1!14301 (h!29772 (minValue!3033 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979)))))))))) e!1368930 tp_is_empty!9517 setRes!16528 tp!663333))))

(declare-fun condSetEmpty!16528 () Bool)

(assert (=> b!2142787 (= condSetEmpty!16528 (= (_2!14301 (h!29772 (minValue!3033 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979)))))))) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun b!2142788 () Bool)

(declare-fun e!1368928 () Bool)

(declare-fun tp!663330 () Bool)

(assert (=> b!2142788 (= e!1368928 tp!663330)))

(declare-fun b!2142789 () Bool)

(declare-fun tp!663331 () Bool)

(assert (=> b!2142789 (= e!1368930 tp!663331)))

(declare-fun setIsEmpty!16528 () Bool)

(assert (=> setIsEmpty!16528 setRes!16528))

(declare-fun tp!663332 () Bool)

(declare-fun setNonEmpty!16528 () Bool)

(declare-fun setElem!16528 () Context!2706)

(assert (=> setNonEmpty!16528 (= setRes!16528 (and tp!663332 (inv!32077 setElem!16528) e!1368928))))

(declare-fun setRest!16528 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16528 (= (_2!14301 (h!29772 (minValue!3033 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16528 true) setRest!16528))))

(assert (= b!2142787 b!2142789))

(assert (= (and b!2142787 condSetEmpty!16528) setIsEmpty!16528))

(assert (= (and b!2142787 (not condSetEmpty!16528)) setNonEmpty!16528))

(assert (= setNonEmpty!16528 b!2142788))

(assert (= (and b!2142628 ((_ is Cons!24371) (minValue!3033 (v!28956 (underlying!5745 (v!28957 (underlying!5746 (cache!3070 cacheUp!979)))))))) b!2142787))

(declare-fun m!2587987 () Bool)

(assert (=> b!2142787 m!2587987))

(declare-fun m!2587989 () Bool)

(assert (=> setNonEmpty!16528 m!2587989))

(declare-fun condMapEmpty!13224 () Bool)

(declare-fun mapDefault!13224 () List!24455)

(assert (=> mapNonEmpty!13216 (= condMapEmpty!13224 (= mapRest!13216 ((as const (Array (_ BitVec 32) List!24455)) mapDefault!13224)))))

(declare-fun e!1368948 () Bool)

(declare-fun mapRes!13224 () Bool)

(assert (=> mapNonEmpty!13216 (= tp!663244 (and e!1368948 mapRes!13224))))

(declare-fun b!2142804 () Bool)

(declare-fun e!1368945 () Bool)

(declare-fun tp!663353 () Bool)

(assert (=> b!2142804 (= e!1368945 tp!663353)))

(declare-fun mapNonEmpty!13224 () Bool)

(declare-fun tp!663359 () Bool)

(declare-fun e!1368946 () Bool)

(assert (=> mapNonEmpty!13224 (= mapRes!13224 (and tp!663359 e!1368946))))

(declare-fun mapRest!13224 () (Array (_ BitVec 32) List!24455))

(declare-fun mapValue!13224 () List!24455)

(declare-fun mapKey!13224 () (_ BitVec 32))

(assert (=> mapNonEmpty!13224 (= mapRest!13216 (store mapRest!13224 mapKey!13224 mapValue!13224))))

(declare-fun tp!663356 () Bool)

(declare-fun setNonEmpty!16533 () Bool)

(declare-fun e!1368947 () Bool)

(declare-fun setElem!16534 () Context!2706)

(declare-fun setRes!16533 () Bool)

(assert (=> setNonEmpty!16533 (= setRes!16533 (and tp!663356 (inv!32077 setElem!16534) e!1368947))))

(declare-fun setRest!16534 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16533 (= (_2!14301 (h!29772 mapValue!13224)) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16534 true) setRest!16534))))

(declare-fun setNonEmpty!16534 () Bool)

(declare-fun setElem!16533 () Context!2706)

(declare-fun setRes!16534 () Bool)

(declare-fun tp!663352 () Bool)

(assert (=> setNonEmpty!16534 (= setRes!16534 (and tp!663352 (inv!32077 setElem!16533) e!1368945))))

(declare-fun setRest!16533 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16534 (= (_2!14301 (h!29772 mapDefault!13224)) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16533 true) setRest!16533))))

(declare-fun e!1368944 () Bool)

(declare-fun tp!663360 () Bool)

(declare-fun b!2142805 () Bool)

(assert (=> b!2142805 (= e!1368946 (and (inv!32077 (_1!14300 (_1!14301 (h!29772 mapValue!13224)))) e!1368944 tp_is_empty!9517 setRes!16533 tp!663360))))

(declare-fun condSetEmpty!16533 () Bool)

(assert (=> b!2142805 (= condSetEmpty!16533 (= (_2!14301 (h!29772 mapValue!13224)) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun b!2142806 () Bool)

(declare-fun e!1368943 () Bool)

(declare-fun tp!663358 () Bool)

(assert (=> b!2142806 (= e!1368943 tp!663358)))

(declare-fun mapIsEmpty!13224 () Bool)

(assert (=> mapIsEmpty!13224 mapRes!13224))

(declare-fun tp!663357 () Bool)

(declare-fun b!2142807 () Bool)

(assert (=> b!2142807 (= e!1368948 (and (inv!32077 (_1!14300 (_1!14301 (h!29772 mapDefault!13224)))) e!1368943 tp_is_empty!9517 setRes!16534 tp!663357))))

(declare-fun condSetEmpty!16534 () Bool)

(assert (=> b!2142807 (= condSetEmpty!16534 (= (_2!14301 (h!29772 mapDefault!13224)) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun b!2142808 () Bool)

(declare-fun tp!663355 () Bool)

(assert (=> b!2142808 (= e!1368944 tp!663355)))

(declare-fun b!2142809 () Bool)

(declare-fun tp!663354 () Bool)

(assert (=> b!2142809 (= e!1368947 tp!663354)))

(declare-fun setIsEmpty!16533 () Bool)

(assert (=> setIsEmpty!16533 setRes!16533))

(declare-fun setIsEmpty!16534 () Bool)

(assert (=> setIsEmpty!16534 setRes!16534))

(assert (= (and mapNonEmpty!13216 condMapEmpty!13224) mapIsEmpty!13224))

(assert (= (and mapNonEmpty!13216 (not condMapEmpty!13224)) mapNonEmpty!13224))

(assert (= b!2142805 b!2142808))

(assert (= (and b!2142805 condSetEmpty!16533) setIsEmpty!16533))

(assert (= (and b!2142805 (not condSetEmpty!16533)) setNonEmpty!16533))

(assert (= setNonEmpty!16533 b!2142809))

(assert (= (and mapNonEmpty!13224 ((_ is Cons!24371) mapValue!13224)) b!2142805))

(assert (= b!2142807 b!2142806))

(assert (= (and b!2142807 condSetEmpty!16534) setIsEmpty!16534))

(assert (= (and b!2142807 (not condSetEmpty!16534)) setNonEmpty!16534))

(assert (= setNonEmpty!16534 b!2142804))

(assert (= (and mapNonEmpty!13216 ((_ is Cons!24371) mapDefault!13224)) b!2142807))

(declare-fun m!2587991 () Bool)

(assert (=> b!2142807 m!2587991))

(declare-fun m!2587993 () Bool)

(assert (=> mapNonEmpty!13224 m!2587993))

(declare-fun m!2587995 () Bool)

(assert (=> setNonEmpty!16533 m!2587995))

(declare-fun m!2587997 () Bool)

(assert (=> setNonEmpty!16534 m!2587997))

(declare-fun m!2587999 () Bool)

(assert (=> b!2142805 m!2587999))

(declare-fun e!1368950 () Bool)

(assert (=> mapNonEmpty!13216 (= tp!663249 e!1368950)))

(declare-fun e!1368951 () Bool)

(declare-fun tp!663364 () Bool)

(declare-fun setRes!16535 () Bool)

(declare-fun b!2142810 () Bool)

(assert (=> b!2142810 (= e!1368950 (and (inv!32077 (_1!14300 (_1!14301 (h!29772 mapValue!13217)))) e!1368951 tp_is_empty!9517 setRes!16535 tp!663364))))

(declare-fun condSetEmpty!16535 () Bool)

(assert (=> b!2142810 (= condSetEmpty!16535 (= (_2!14301 (h!29772 mapValue!13217)) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun b!2142811 () Bool)

(declare-fun e!1368949 () Bool)

(declare-fun tp!663361 () Bool)

(assert (=> b!2142811 (= e!1368949 tp!663361)))

(declare-fun b!2142812 () Bool)

(declare-fun tp!663362 () Bool)

(assert (=> b!2142812 (= e!1368951 tp!663362)))

(declare-fun setIsEmpty!16535 () Bool)

(assert (=> setIsEmpty!16535 setRes!16535))

(declare-fun tp!663363 () Bool)

(declare-fun setElem!16535 () Context!2706)

(declare-fun setNonEmpty!16535 () Bool)

(assert (=> setNonEmpty!16535 (= setRes!16535 (and tp!663363 (inv!32077 setElem!16535) e!1368949))))

(declare-fun setRest!16535 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16535 (= (_2!14301 (h!29772 mapValue!13217)) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16535 true) setRest!16535))))

(assert (= b!2142810 b!2142812))

(assert (= (and b!2142810 condSetEmpty!16535) setIsEmpty!16535))

(assert (= (and b!2142810 (not condSetEmpty!16535)) setNonEmpty!16535))

(assert (= setNonEmpty!16535 b!2142811))

(assert (= (and mapNonEmpty!13216 ((_ is Cons!24371) mapValue!13217)) b!2142810))

(declare-fun m!2588001 () Bool)

(assert (=> b!2142810 m!2588001))

(declare-fun m!2588003 () Bool)

(assert (=> setNonEmpty!16535 m!2588003))

(declare-fun b!2142819 () Bool)

(declare-fun e!1368956 () Bool)

(declare-fun setRes!16538 () Bool)

(declare-fun tp!663371 () Bool)

(assert (=> b!2142819 (= e!1368956 (and setRes!16538 tp!663371))))

(declare-fun condSetEmpty!16538 () Bool)

(assert (=> b!2142819 (= condSetEmpty!16538 (= (_1!14302 (_1!14303 (h!29773 (zeroValue!3034 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))))))) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun e!1368957 () Bool)

(declare-fun setElem!16538 () Context!2706)

(declare-fun setNonEmpty!16538 () Bool)

(declare-fun tp!663372 () Bool)

(assert (=> setNonEmpty!16538 (= setRes!16538 (and tp!663372 (inv!32077 setElem!16538) e!1368957))))

(declare-fun setRest!16538 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16538 (= (_1!14302 (_1!14303 (h!29773 (zeroValue!3034 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16538 true) setRest!16538))))

(assert (=> b!2142650 (= tp!663235 e!1368956)))

(declare-fun setIsEmpty!16538 () Bool)

(assert (=> setIsEmpty!16538 setRes!16538))

(declare-fun b!2142820 () Bool)

(declare-fun tp!663373 () Bool)

(assert (=> b!2142820 (= e!1368957 tp!663373)))

(assert (= (and b!2142819 condSetEmpty!16538) setIsEmpty!16538))

(assert (= (and b!2142819 (not condSetEmpty!16538)) setNonEmpty!16538))

(assert (= setNonEmpty!16538 b!2142820))

(assert (= (and b!2142650 ((_ is Cons!24372) (zeroValue!3034 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114)))))))) b!2142819))

(declare-fun m!2588005 () Bool)

(assert (=> setNonEmpty!16538 m!2588005))

(declare-fun b!2142821 () Bool)

(declare-fun e!1368958 () Bool)

(declare-fun setRes!16539 () Bool)

(declare-fun tp!663374 () Bool)

(assert (=> b!2142821 (= e!1368958 (and setRes!16539 tp!663374))))

(declare-fun condSetEmpty!16539 () Bool)

(assert (=> b!2142821 (= condSetEmpty!16539 (= (_1!14302 (_1!14303 (h!29773 (minValue!3034 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))))))) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun e!1368959 () Bool)

(declare-fun setNonEmpty!16539 () Bool)

(declare-fun tp!663375 () Bool)

(declare-fun setElem!16539 () Context!2706)

(assert (=> setNonEmpty!16539 (= setRes!16539 (and tp!663375 (inv!32077 setElem!16539) e!1368959))))

(declare-fun setRest!16539 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16539 (= (_1!14302 (_1!14303 (h!29773 (minValue!3034 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16539 true) setRest!16539))))

(assert (=> b!2142650 (= tp!663256 e!1368958)))

(declare-fun setIsEmpty!16539 () Bool)

(assert (=> setIsEmpty!16539 setRes!16539))

(declare-fun b!2142822 () Bool)

(declare-fun tp!663376 () Bool)

(assert (=> b!2142822 (= e!1368959 tp!663376)))

(assert (= (and b!2142821 condSetEmpty!16539) setIsEmpty!16539))

(assert (= (and b!2142821 (not condSetEmpty!16539)) setNonEmpty!16539))

(assert (= setNonEmpty!16539 b!2142822))

(assert (= (and b!2142650 ((_ is Cons!24372) (minValue!3034 (v!28958 (underlying!5747 (v!28959 (underlying!5748 (cache!3071 cacheFurthestNullable!114)))))))) b!2142821))

(declare-fun m!2588007 () Bool)

(assert (=> setNonEmpty!16539 m!2588007))

(declare-fun b!2142831 () Bool)

(declare-fun e!1368964 () Bool)

(declare-fun tp!663384 () Bool)

(declare-fun tp!663385 () Bool)

(assert (=> b!2142831 (= e!1368964 (and (inv!32072 (left!18736 (c!340636 (totalInput!3140 cacheFurthestNullable!114)))) tp!663385 (inv!32072 (right!19066 (c!340636 (totalInput!3140 cacheFurthestNullable!114)))) tp!663384))))

(declare-fun b!2142833 () Bool)

(declare-fun e!1368965 () Bool)

(declare-fun tp!663383 () Bool)

(assert (=> b!2142833 (= e!1368965 tp!663383)))

(declare-fun b!2142832 () Bool)

(declare-fun inv!32080 (IArray!15845) Bool)

(assert (=> b!2142832 (= e!1368964 (and (inv!32080 (xs!10862 (c!340636 (totalInput!3140 cacheFurthestNullable!114)))) e!1368965))))

(assert (=> b!2142641 (= tp!663252 (and (inv!32072 (c!340636 (totalInput!3140 cacheFurthestNullable!114))) e!1368964))))

(assert (= (and b!2142641 ((_ is Node!7920) (c!340636 (totalInput!3140 cacheFurthestNullable!114)))) b!2142831))

(assert (= b!2142832 b!2142833))

(assert (= (and b!2142641 ((_ is Leaf!11579) (c!340636 (totalInput!3140 cacheFurthestNullable!114)))) b!2142832))

(declare-fun m!2588009 () Bool)

(assert (=> b!2142831 m!2588009))

(declare-fun m!2588011 () Bool)

(assert (=> b!2142831 m!2588011))

(declare-fun m!2588013 () Bool)

(assert (=> b!2142832 m!2588013))

(assert (=> b!2142641 m!2587839))

(declare-fun b!2142838 () Bool)

(declare-fun e!1368968 () Bool)

(declare-fun tp!663390 () Bool)

(declare-fun tp!663391 () Bool)

(assert (=> b!2142838 (= e!1368968 (and tp!663390 tp!663391))))

(assert (=> b!2142618 (= tp!663255 e!1368968)))

(assert (= (and b!2142618 ((_ is Cons!24367) (exprs!1853 setElem!16512))) b!2142838))

(declare-fun tp!663392 () Bool)

(declare-fun setRes!16540 () Bool)

(declare-fun setNonEmpty!16540 () Bool)

(declare-fun e!1368970 () Bool)

(declare-fun setElem!16540 () Context!2706)

(assert (=> setNonEmpty!16540 (= setRes!16540 (and tp!663392 (inv!32077 setElem!16540) e!1368970))))

(declare-fun setRest!16540 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16540 (= (_2!14299 (h!29771 (zeroValue!3032 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16540 true) setRest!16540))))

(declare-fun e!1368969 () Bool)

(assert (=> b!2142633 (= tp!663263 e!1368969)))

(declare-fun b!2142839 () Bool)

(declare-fun e!1368971 () Bool)

(declare-fun tp!663393 () Bool)

(assert (=> b!2142839 (= e!1368971 tp!663393)))

(declare-fun setIsEmpty!16540 () Bool)

(assert (=> setIsEmpty!16540 setRes!16540))

(declare-fun b!2142840 () Bool)

(declare-fun tp!663396 () Bool)

(assert (=> b!2142840 (= e!1368970 tp!663396)))

(declare-fun b!2142841 () Bool)

(declare-fun tp!663394 () Bool)

(declare-fun tp!663395 () Bool)

(assert (=> b!2142841 (= e!1368969 (and tp!663395 (inv!32077 (_2!14298 (_1!14299 (h!29771 (zeroValue!3032 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098)))))))))) e!1368971 tp_is_empty!9517 setRes!16540 tp!663394))))

(declare-fun condSetEmpty!16540 () Bool)

(assert (=> b!2142841 (= condSetEmpty!16540 (= (_2!14299 (h!29771 (zeroValue!3032 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098)))))))) ((as const (Array Context!2706 Bool)) false)))))

(assert (= b!2142841 b!2142839))

(assert (= (and b!2142841 condSetEmpty!16540) setIsEmpty!16540))

(assert (= (and b!2142841 (not condSetEmpty!16540)) setNonEmpty!16540))

(assert (= setNonEmpty!16540 b!2142840))

(assert (= (and b!2142633 ((_ is Cons!24370) (zeroValue!3032 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098)))))))) b!2142841))

(declare-fun m!2588015 () Bool)

(assert (=> setNonEmpty!16540 m!2588015))

(declare-fun m!2588017 () Bool)

(assert (=> b!2142841 m!2588017))

(declare-fun e!1368973 () Bool)

(declare-fun setNonEmpty!16541 () Bool)

(declare-fun setElem!16541 () Context!2706)

(declare-fun tp!663397 () Bool)

(declare-fun setRes!16541 () Bool)

(assert (=> setNonEmpty!16541 (= setRes!16541 (and tp!663397 (inv!32077 setElem!16541) e!1368973))))

(declare-fun setRest!16541 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16541 (= (_2!14299 (h!29771 (minValue!3032 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16541 true) setRest!16541))))

(declare-fun e!1368972 () Bool)

(assert (=> b!2142633 (= tp!663237 e!1368972)))

(declare-fun b!2142842 () Bool)

(declare-fun e!1368974 () Bool)

(declare-fun tp!663398 () Bool)

(assert (=> b!2142842 (= e!1368974 tp!663398)))

(declare-fun setIsEmpty!16541 () Bool)

(assert (=> setIsEmpty!16541 setRes!16541))

(declare-fun b!2142843 () Bool)

(declare-fun tp!663401 () Bool)

(assert (=> b!2142843 (= e!1368973 tp!663401)))

(declare-fun b!2142844 () Bool)

(declare-fun tp!663400 () Bool)

(declare-fun tp!663399 () Bool)

(assert (=> b!2142844 (= e!1368972 (and tp!663400 (inv!32077 (_2!14298 (_1!14299 (h!29771 (minValue!3032 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098)))))))))) e!1368974 tp_is_empty!9517 setRes!16541 tp!663399))))

(declare-fun condSetEmpty!16541 () Bool)

(assert (=> b!2142844 (= condSetEmpty!16541 (= (_2!14299 (h!29771 (minValue!3032 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098)))))))) ((as const (Array Context!2706 Bool)) false)))))

(assert (= b!2142844 b!2142842))

(assert (= (and b!2142844 condSetEmpty!16541) setIsEmpty!16541))

(assert (= (and b!2142844 (not condSetEmpty!16541)) setNonEmpty!16541))

(assert (= setNonEmpty!16541 b!2142843))

(assert (= (and b!2142633 ((_ is Cons!24370) (minValue!3032 (v!28954 (underlying!5743 (v!28955 (underlying!5744 (cache!3069 cacheDown!1098)))))))) b!2142844))

(declare-fun m!2588019 () Bool)

(assert (=> setNonEmpty!16541 m!2588019))

(declare-fun m!2588021 () Bool)

(assert (=> b!2142844 m!2588021))

(declare-fun b!2142845 () Bool)

(declare-fun e!1368975 () Bool)

(declare-fun tp!663404 () Bool)

(declare-fun tp!663403 () Bool)

(assert (=> b!2142845 (= e!1368975 (and (inv!32072 (left!18736 (c!340636 totalInput!851))) tp!663404 (inv!32072 (right!19066 (c!340636 totalInput!851))) tp!663403))))

(declare-fun b!2142847 () Bool)

(declare-fun e!1368976 () Bool)

(declare-fun tp!663402 () Bool)

(assert (=> b!2142847 (= e!1368976 tp!663402)))

(declare-fun b!2142846 () Bool)

(assert (=> b!2142846 (= e!1368975 (and (inv!32080 (xs!10862 (c!340636 totalInput!851))) e!1368976))))

(assert (=> b!2142646 (= tp!663253 (and (inv!32072 (c!340636 totalInput!851)) e!1368975))))

(assert (= (and b!2142646 ((_ is Node!7920) (c!340636 totalInput!851))) b!2142845))

(assert (= b!2142846 b!2142847))

(assert (= (and b!2142646 ((_ is Leaf!11579) (c!340636 totalInput!851))) b!2142846))

(declare-fun m!2588023 () Bool)

(assert (=> b!2142845 m!2588023))

(declare-fun m!2588025 () Bool)

(assert (=> b!2142845 m!2588025))

(declare-fun m!2588027 () Bool)

(assert (=> b!2142846 m!2588027))

(assert (=> b!2142646 m!2587831))

(declare-fun setRes!16544 () Bool)

(declare-fun e!1368987 () Bool)

(declare-fun b!2142858 () Bool)

(declare-fun e!1368986 () Bool)

(assert (=> b!2142858 (= e!1368986 (and setRes!16544 (inv!32076 (totalInput!3139 (h!29770 (t!196983 stack!8)))) e!1368987))))

(declare-fun condSetEmpty!16544 () Bool)

(assert (=> b!2142858 (= condSetEmpty!16544 (= (z!5881 (h!29770 (t!196983 stack!8))) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun b!2142859 () Bool)

(declare-fun tp!663414 () Bool)

(assert (=> b!2142859 (= e!1368987 (and (inv!32072 (c!340636 (totalInput!3139 (h!29770 (t!196983 stack!8))))) tp!663414))))

(declare-fun setIsEmpty!16544 () Bool)

(assert (=> setIsEmpty!16544 setRes!16544))

(declare-fun e!1368988 () Bool)

(declare-fun tp!663416 () Bool)

(declare-fun setNonEmpty!16544 () Bool)

(declare-fun setElem!16544 () Context!2706)

(assert (=> setNonEmpty!16544 (= setRes!16544 (and tp!663416 (inv!32077 setElem!16544) e!1368988))))

(declare-fun setRest!16544 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16544 (= (z!5881 (h!29770 (t!196983 stack!8))) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16544 true) setRest!16544))))

(declare-fun b!2142861 () Bool)

(declare-fun tp!663413 () Bool)

(declare-fun e!1368985 () Bool)

(assert (=> b!2142861 (= e!1368985 (and (inv!32071 (h!29770 (t!196983 stack!8))) e!1368986 tp!663413))))

(declare-fun b!2142860 () Bool)

(declare-fun tp!663415 () Bool)

(assert (=> b!2142860 (= e!1368988 tp!663415)))

(assert (=> b!2142613 (= tp!663245 e!1368985)))

(assert (= (and b!2142858 condSetEmpty!16544) setIsEmpty!16544))

(assert (= (and b!2142858 (not condSetEmpty!16544)) setNonEmpty!16544))

(assert (= setNonEmpty!16544 b!2142860))

(assert (= b!2142858 b!2142859))

(assert (= b!2142861 b!2142858))

(assert (= (and b!2142613 ((_ is Cons!24369) (t!196983 stack!8))) b!2142861))

(declare-fun m!2588029 () Bool)

(assert (=> b!2142858 m!2588029))

(declare-fun m!2588031 () Bool)

(assert (=> b!2142859 m!2588031))

(declare-fun m!2588033 () Bool)

(assert (=> setNonEmpty!16544 m!2588033))

(declare-fun m!2588035 () Bool)

(assert (=> b!2142861 m!2588035))

(declare-fun setIsEmpty!16549 () Bool)

(declare-fun setRes!16549 () Bool)

(assert (=> setIsEmpty!16549 setRes!16549))

(declare-fun setIsEmpty!16550 () Bool)

(declare-fun setRes!16550 () Bool)

(assert (=> setIsEmpty!16550 setRes!16550))

(declare-fun b!2142872 () Bool)

(declare-fun e!1368997 () Bool)

(declare-fun tp!663436 () Bool)

(assert (=> b!2142872 (= e!1368997 (and setRes!16550 tp!663436))))

(declare-fun condSetEmpty!16550 () Bool)

(declare-fun mapDefault!13227 () List!24456)

(assert (=> b!2142872 (= condSetEmpty!16550 (= (_1!14302 (_1!14303 (h!29773 mapDefault!13227))) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun mapNonEmpty!13227 () Bool)

(declare-fun mapRes!13227 () Bool)

(declare-fun tp!663432 () Bool)

(declare-fun e!1368998 () Bool)

(assert (=> mapNonEmpty!13227 (= mapRes!13227 (and tp!663432 e!1368998))))

(declare-fun mapRest!13227 () (Array (_ BitVec 32) List!24456))

(declare-fun mapKey!13227 () (_ BitVec 32))

(declare-fun mapValue!13227 () List!24456)

(assert (=> mapNonEmpty!13227 (= mapRest!13218 (store mapRest!13227 mapKey!13227 mapValue!13227))))

(declare-fun b!2142873 () Bool)

(declare-fun e!1368999 () Bool)

(declare-fun tp!663435 () Bool)

(assert (=> b!2142873 (= e!1368999 tp!663435)))

(declare-fun mapIsEmpty!13227 () Bool)

(assert (=> mapIsEmpty!13227 mapRes!13227))

(declare-fun setElem!16549 () Context!2706)

(declare-fun tp!663431 () Bool)

(declare-fun setNonEmpty!16550 () Bool)

(assert (=> setNonEmpty!16550 (= setRes!16549 (and tp!663431 (inv!32077 setElem!16549) e!1368999))))

(declare-fun setRest!16550 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16550 (= (_1!14302 (_1!14303 (h!29773 mapValue!13227))) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16549 true) setRest!16550))))

(declare-fun b!2142874 () Bool)

(declare-fun tp!663434 () Bool)

(assert (=> b!2142874 (= e!1368998 (and setRes!16549 tp!663434))))

(declare-fun condSetEmpty!16549 () Bool)

(assert (=> b!2142874 (= condSetEmpty!16549 (= (_1!14302 (_1!14303 (h!29773 mapValue!13227))) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun b!2142875 () Bool)

(declare-fun e!1369000 () Bool)

(declare-fun tp!663437 () Bool)

(assert (=> b!2142875 (= e!1369000 tp!663437)))

(declare-fun setNonEmpty!16549 () Bool)

(declare-fun tp!663433 () Bool)

(declare-fun setElem!16550 () Context!2706)

(assert (=> setNonEmpty!16549 (= setRes!16550 (and tp!663433 (inv!32077 setElem!16550) e!1369000))))

(declare-fun setRest!16549 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16549 (= (_1!14302 (_1!14303 (h!29773 mapDefault!13227))) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16550 true) setRest!16549))))

(declare-fun condMapEmpty!13227 () Bool)

(assert (=> mapNonEmpty!13217 (= condMapEmpty!13227 (= mapRest!13218 ((as const (Array (_ BitVec 32) List!24456)) mapDefault!13227)))))

(assert (=> mapNonEmpty!13217 (= tp!663241 (and e!1368997 mapRes!13227))))

(assert (= (and mapNonEmpty!13217 condMapEmpty!13227) mapIsEmpty!13227))

(assert (= (and mapNonEmpty!13217 (not condMapEmpty!13227)) mapNonEmpty!13227))

(assert (= (and b!2142874 condSetEmpty!16549) setIsEmpty!16549))

(assert (= (and b!2142874 (not condSetEmpty!16549)) setNonEmpty!16550))

(assert (= setNonEmpty!16550 b!2142873))

(assert (= (and mapNonEmpty!13227 ((_ is Cons!24372) mapValue!13227)) b!2142874))

(assert (= (and b!2142872 condSetEmpty!16550) setIsEmpty!16550))

(assert (= (and b!2142872 (not condSetEmpty!16550)) setNonEmpty!16549))

(assert (= setNonEmpty!16549 b!2142875))

(assert (= (and mapNonEmpty!13217 ((_ is Cons!24372) mapDefault!13227)) b!2142872))

(declare-fun m!2588037 () Bool)

(assert (=> mapNonEmpty!13227 m!2588037))

(declare-fun m!2588039 () Bool)

(assert (=> setNonEmpty!16550 m!2588039))

(declare-fun m!2588041 () Bool)

(assert (=> setNonEmpty!16549 m!2588041))

(declare-fun b!2142876 () Bool)

(declare-fun e!1369001 () Bool)

(declare-fun setRes!16551 () Bool)

(declare-fun tp!663438 () Bool)

(assert (=> b!2142876 (= e!1369001 (and setRes!16551 tp!663438))))

(declare-fun condSetEmpty!16551 () Bool)

(assert (=> b!2142876 (= condSetEmpty!16551 (= (_1!14302 (_1!14303 (h!29773 mapValue!13218))) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun tp!663439 () Bool)

(declare-fun setElem!16551 () Context!2706)

(declare-fun setNonEmpty!16551 () Bool)

(declare-fun e!1369002 () Bool)

(assert (=> setNonEmpty!16551 (= setRes!16551 (and tp!663439 (inv!32077 setElem!16551) e!1369002))))

(declare-fun setRest!16551 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16551 (= (_1!14302 (_1!14303 (h!29773 mapValue!13218))) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16551 true) setRest!16551))))

(assert (=> mapNonEmpty!13217 (= tp!663246 e!1369001)))

(declare-fun setIsEmpty!16551 () Bool)

(assert (=> setIsEmpty!16551 setRes!16551))

(declare-fun b!2142877 () Bool)

(declare-fun tp!663440 () Bool)

(assert (=> b!2142877 (= e!1369002 tp!663440)))

(assert (= (and b!2142876 condSetEmpty!16551) setIsEmpty!16551))

(assert (= (and b!2142876 (not condSetEmpty!16551)) setNonEmpty!16551))

(assert (= setNonEmpty!16551 b!2142877))

(assert (= (and mapNonEmpty!13217 ((_ is Cons!24372) mapValue!13218)) b!2142876))

(declare-fun m!2588043 () Bool)

(assert (=> setNonEmpty!16551 m!2588043))

(declare-fun b!2142878 () Bool)

(declare-fun e!1369003 () Bool)

(declare-fun tp!663441 () Bool)

(declare-fun tp!663442 () Bool)

(assert (=> b!2142878 (= e!1369003 (and tp!663441 tp!663442))))

(assert (=> b!2142638 (= tp!663261 e!1369003)))

(assert (= (and b!2142638 ((_ is Cons!24367) (exprs!1853 setElem!16511))) b!2142878))

(declare-fun condSetEmpty!16552 () Bool)

(assert (=> setNonEmpty!16511 (= condSetEmpty!16552 (= setRest!16512 ((as const (Array Context!2706 Bool)) false)))))

(declare-fun setRes!16552 () Bool)

(assert (=> setNonEmpty!16511 (= tp!663260 setRes!16552)))

(declare-fun setIsEmpty!16552 () Bool)

(assert (=> setIsEmpty!16552 setRes!16552))

(declare-fun e!1369004 () Bool)

(declare-fun setNonEmpty!16552 () Bool)

(declare-fun setElem!16552 () Context!2706)

(declare-fun tp!663443 () Bool)

(assert (=> setNonEmpty!16552 (= setRes!16552 (and tp!663443 (inv!32077 setElem!16552) e!1369004))))

(declare-fun setRest!16552 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16552 (= setRest!16512 ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16552 true) setRest!16552))))

(declare-fun b!2142879 () Bool)

(declare-fun tp!663444 () Bool)

(assert (=> b!2142879 (= e!1369004 tp!663444)))

(assert (= (and setNonEmpty!16511 condSetEmpty!16552) setIsEmpty!16552))

(assert (= (and setNonEmpty!16511 (not condSetEmpty!16552)) setNonEmpty!16552))

(assert (= setNonEmpty!16552 b!2142879))

(declare-fun m!2588045 () Bool)

(assert (=> setNonEmpty!16552 m!2588045))

(declare-fun setElem!16553 () Context!2706)

(declare-fun tp!663445 () Bool)

(declare-fun setNonEmpty!16553 () Bool)

(declare-fun e!1369006 () Bool)

(declare-fun setRes!16553 () Bool)

(assert (=> setNonEmpty!16553 (= setRes!16553 (and tp!663445 (inv!32077 setElem!16553) e!1369006))))

(declare-fun setRest!16553 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16553 (= (_2!14299 (h!29771 mapDefault!13218)) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16553 true) setRest!16553))))

(declare-fun e!1369005 () Bool)

(assert (=> b!2142648 (= tp!663257 e!1369005)))

(declare-fun b!2142880 () Bool)

(declare-fun e!1369007 () Bool)

(declare-fun tp!663446 () Bool)

(assert (=> b!2142880 (= e!1369007 tp!663446)))

(declare-fun setIsEmpty!16553 () Bool)

(assert (=> setIsEmpty!16553 setRes!16553))

(declare-fun b!2142881 () Bool)

(declare-fun tp!663449 () Bool)

(assert (=> b!2142881 (= e!1369006 tp!663449)))

(declare-fun tp!663447 () Bool)

(declare-fun b!2142882 () Bool)

(declare-fun tp!663448 () Bool)

(assert (=> b!2142882 (= e!1369005 (and tp!663448 (inv!32077 (_2!14298 (_1!14299 (h!29771 mapDefault!13218)))) e!1369007 tp_is_empty!9517 setRes!16553 tp!663447))))

(declare-fun condSetEmpty!16553 () Bool)

(assert (=> b!2142882 (= condSetEmpty!16553 (= (_2!14299 (h!29771 mapDefault!13218)) ((as const (Array Context!2706 Bool)) false)))))

(assert (= b!2142882 b!2142880))

(assert (= (and b!2142882 condSetEmpty!16553) setIsEmpty!16553))

(assert (= (and b!2142882 (not condSetEmpty!16553)) setNonEmpty!16553))

(assert (= setNonEmpty!16553 b!2142881))

(assert (= (and b!2142648 ((_ is Cons!24370) mapDefault!13218)) b!2142882))

(declare-fun m!2588047 () Bool)

(assert (=> setNonEmpty!16553 m!2588047))

(declare-fun m!2588049 () Bool)

(assert (=> b!2142882 m!2588049))

(declare-fun tp!663452 () Bool)

(declare-fun e!1369008 () Bool)

(declare-fun b!2142883 () Bool)

(declare-fun tp!663451 () Bool)

(assert (=> b!2142883 (= e!1369008 (and (inv!32072 (left!18736 (c!340636 (totalInput!3139 (h!29770 stack!8))))) tp!663452 (inv!32072 (right!19066 (c!340636 (totalInput!3139 (h!29770 stack!8))))) tp!663451))))

(declare-fun b!2142885 () Bool)

(declare-fun e!1369009 () Bool)

(declare-fun tp!663450 () Bool)

(assert (=> b!2142885 (= e!1369009 tp!663450)))

(declare-fun b!2142884 () Bool)

(assert (=> b!2142884 (= e!1369008 (and (inv!32080 (xs!10862 (c!340636 (totalInput!3139 (h!29770 stack!8))))) e!1369009))))

(assert (=> b!2142620 (= tp!663251 (and (inv!32072 (c!340636 (totalInput!3139 (h!29770 stack!8)))) e!1369008))))

(assert (= (and b!2142620 ((_ is Node!7920) (c!340636 (totalInput!3139 (h!29770 stack!8))))) b!2142883))

(assert (= b!2142884 b!2142885))

(assert (= (and b!2142620 ((_ is Leaf!11579) (c!340636 (totalInput!3139 (h!29770 stack!8))))) b!2142884))

(declare-fun m!2588051 () Bool)

(assert (=> b!2142883 m!2588051))

(declare-fun m!2588053 () Bool)

(assert (=> b!2142883 m!2588053))

(declare-fun m!2588055 () Bool)

(assert (=> b!2142884 m!2588055))

(assert (=> b!2142620 m!2587847))

(declare-fun b!2142886 () Bool)

(declare-fun e!1369010 () Bool)

(declare-fun setRes!16554 () Bool)

(declare-fun tp!663453 () Bool)

(assert (=> b!2142886 (= e!1369010 (and setRes!16554 tp!663453))))

(declare-fun condSetEmpty!16554 () Bool)

(assert (=> b!2142886 (= condSetEmpty!16554 (= (_1!14302 (_1!14303 (h!29773 mapDefault!13217))) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun setElem!16554 () Context!2706)

(declare-fun e!1369011 () Bool)

(declare-fun tp!663454 () Bool)

(declare-fun setNonEmpty!16554 () Bool)

(assert (=> setNonEmpty!16554 (= setRes!16554 (and tp!663454 (inv!32077 setElem!16554) e!1369011))))

(declare-fun setRest!16554 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16554 (= (_1!14302 (_1!14303 (h!29773 mapDefault!13217))) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16554 true) setRest!16554))))

(assert (=> b!2142636 (= tp!663250 e!1369010)))

(declare-fun setIsEmpty!16554 () Bool)

(assert (=> setIsEmpty!16554 setRes!16554))

(declare-fun b!2142887 () Bool)

(declare-fun tp!663455 () Bool)

(assert (=> b!2142887 (= e!1369011 tp!663455)))

(assert (= (and b!2142886 condSetEmpty!16554) setIsEmpty!16554))

(assert (= (and b!2142886 (not condSetEmpty!16554)) setNonEmpty!16554))

(assert (= setNonEmpty!16554 b!2142887))

(assert (= (and b!2142636 ((_ is Cons!24372) mapDefault!13217)) b!2142886))

(declare-fun m!2588057 () Bool)

(assert (=> setNonEmpty!16554 m!2588057))

(declare-fun e!1369013 () Bool)

(assert (=> b!2142637 (= tp!663239 e!1369013)))

(declare-fun b!2142888 () Bool)

(declare-fun setRes!16555 () Bool)

(declare-fun tp!663459 () Bool)

(declare-fun e!1369014 () Bool)

(assert (=> b!2142888 (= e!1369013 (and (inv!32077 (_1!14300 (_1!14301 (h!29772 mapDefault!13216)))) e!1369014 tp_is_empty!9517 setRes!16555 tp!663459))))

(declare-fun condSetEmpty!16555 () Bool)

(assert (=> b!2142888 (= condSetEmpty!16555 (= (_2!14301 (h!29772 mapDefault!13216)) ((as const (Array Context!2706 Bool)) false)))))

(declare-fun b!2142889 () Bool)

(declare-fun e!1369012 () Bool)

(declare-fun tp!663456 () Bool)

(assert (=> b!2142889 (= e!1369012 tp!663456)))

(declare-fun b!2142890 () Bool)

(declare-fun tp!663457 () Bool)

(assert (=> b!2142890 (= e!1369014 tp!663457)))

(declare-fun setIsEmpty!16555 () Bool)

(assert (=> setIsEmpty!16555 setRes!16555))

(declare-fun setNonEmpty!16555 () Bool)

(declare-fun setElem!16555 () Context!2706)

(declare-fun tp!663458 () Bool)

(assert (=> setNonEmpty!16555 (= setRes!16555 (and tp!663458 (inv!32077 setElem!16555) e!1369012))))

(declare-fun setRest!16555 () (InoxSet Context!2706))

(assert (=> setNonEmpty!16555 (= (_2!14301 (h!29772 mapDefault!13216)) ((_ map or) (store ((as const (Array Context!2706 Bool)) false) setElem!16555 true) setRest!16555))))

(assert (= b!2142888 b!2142890))

(assert (= (and b!2142888 condSetEmpty!16555) setIsEmpty!16555))

(assert (= (and b!2142888 (not condSetEmpty!16555)) setNonEmpty!16555))

(assert (= setNonEmpty!16555 b!2142889))

(assert (= (and b!2142637 ((_ is Cons!24371) mapDefault!13216)) b!2142888))

(declare-fun m!2588059 () Bool)

(assert (=> b!2142888 m!2588059))

(declare-fun m!2588061 () Bool)

(assert (=> setNonEmpty!16555 m!2588061))

(declare-fun b_lambda!70691 () Bool)

(assert (= b_lambda!70685 (or b!2142645 b_lambda!70691)))

(declare-fun bs!445282 () Bool)

(declare-fun d!645071 () Bool)

(assert (= bs!445282 (and d!645071 b!2142645)))

(assert (=> bs!445282 (= (dynLambda!11374 lambda!80254 (h!29770 stack!8)) (= (totalInput!3139 (h!29770 stack!8)) totalInput!851))))

(assert (=> b!2142728 d!645071))

(declare-fun b_lambda!70693 () Bool)

(assert (= b_lambda!70689 (or b!2142624 b_lambda!70693)))

(declare-fun bs!445283 () Bool)

(declare-fun d!645073 () Bool)

(assert (= bs!445283 (and d!645073 b!2142624)))

(assert (=> bs!445283 (= (dynLambda!11374 lambda!80253 (h!29770 Nil!24369)) (= (res!924889 (h!29770 Nil!24369)) lt!798393))))

(assert (=> b!2142738 d!645073))

(declare-fun b_lambda!70695 () Bool)

(assert (= b_lambda!70687 (or b!2142645 b_lambda!70695)))

(declare-fun bs!445284 () Bool)

(declare-fun d!645075 () Bool)

(assert (= bs!445284 (and d!645075 b!2142645)))

(assert (=> bs!445284 (= (dynLambda!11374 lambda!80254 (h!29770 Nil!24369)) (= (totalInput!3139 (h!29770 Nil!24369)) totalInput!851))))

(assert (=> b!2142733 d!645075))

(declare-fun b_lambda!70697 () Bool)

(assert (= b_lambda!70681 (or b!2142624 b_lambda!70697)))

(declare-fun bs!445285 () Bool)

(declare-fun d!645077 () Bool)

(assert (= bs!445285 (and d!645077 b!2142624)))

(assert (=> bs!445285 (= (dynLambda!11374 lambda!80253 (h!29770 stack!8)) (= (res!924889 (h!29770 stack!8)) lt!798393))))

(assert (=> b!2142665 d!645077))

(declare-fun b_lambda!70699 () Bool)

(assert (= b_lambda!70683 (or b!2142625 b_lambda!70699)))

(declare-fun bs!445286 () Bool)

(declare-fun d!645079 () Bool)

(assert (= bs!445286 (and d!645079 b!2142625)))

(assert (=> bs!445286 (= (dynLambda!11374 lambda!80255 (h!29770 Nil!24369)) (= (res!924889 (h!29770 Nil!24369)) (v!28953 lt!798394)))))

(assert (=> b!2142682 d!645079))

(check-sat (not setNonEmpty!16515) (not b!2142641) b_and!172641 (not b!2142888) (not b!2142889) (not b!2142774) (not b!2142734) (not b!2142808) (not b!2142883) (not b!2142699) (not b!2142719) (not b!2142882) (not b!2142620) (not b!2142804) (not b!2142666) (not d!645041) (not b!2142878) b_and!172639 (not mapNonEmpty!13221) (not b!2142809) (not setNonEmpty!16539) (not b!2142858) (not setNonEmpty!16535) (not b!2142845) (not setNonEmpty!16553) (not b!2142842) (not b!2142890) (not d!645065) (not b!2142820) (not b!2142838) (not b!2142832) b_and!172643 (not b!2142846) (not b!2142723) (not setNonEmpty!16551) (not b_lambda!70693) (not b!2142701) (not b!2142860) (not b_lambda!70699) (not b_lambda!70691) (not b!2142689) (not b!2142789) (not b!2142821) (not b!2142739) (not b!2142763) (not b!2142876) (not b!2142760) (not b!2142683) (not setNonEmpty!16541) (not setNonEmpty!16552) (not b!2142677) (not b!2142881) (not b!2142788) (not b_lambda!70695) (not setNonEmpty!16555) (not setNonEmpty!16533) (not b!2142762) (not b!2142729) (not b!2142886) (not b!2142841) (not setNonEmpty!16527) (not b!2142646) (not b!2142759) (not b!2142810) (not b!2142717) (not b!2142812) (not b!2142775) (not b_next!63757) (not b!2142761) (not b!2142872) (not b!2142875) (not b!2142764) (not b!2142732) (not setNonEmpty!16534) (not b!2142735) (not setNonEmpty!16550) (not b!2142744) (not d!645045) (not b_next!63767) (not b!2142859) (not setNonEmpty!16528) (not b!2142843) (not d!645015) (not setNonEmpty!16549) (not b!2142737) (not d!645055) (not b_lambda!70697) (not setNonEmpty!16554) (not b!2142785) (not b_next!63759) (not d!645049) (not b!2142844) (not b!2142831) (not d!645009) (not b!2142704) (not b!2142721) (not b!2142822) (not b!2142847) (not mapNonEmpty!13224) (not b!2142718) (not b!2142702) (not b!2142807) (not b!2142679) (not b!2142811) (not b!2142787) (not b!2142773) (not b!2142784) (not b!2142840) (not setNonEmpty!16544) (not b!2142884) b_and!172637 (not b!2142877) (not setNonEmpty!16520) (not b!2142833) (not b!2142819) (not b!2142873) (not b!2142692) (not b!2142887) (not b!2142686) tp_is_empty!9517 (not b_next!63765) (not b!2142805) (not setNonEmpty!16524) (not setNonEmpty!16538) (not mapNonEmpty!13227) (not d!645037) (not d!645053) (not d!645029) b_and!172635 (not b_next!63763) (not setNonEmpty!16521) (not b!2142786) (not b!2142880) (not b!2142879) (not b!2142885) (not b!2142725) b_and!172633 (not b_next!63761) (not b!2142874) (not b!2142806) (not b!2142861) (not d!645047) (not b!2142839) (not setNonEmpty!16540))
(check-sat b_and!172641 b_and!172639 b_and!172643 (not b_next!63757) (not b_next!63767) (not b_next!63759) b_and!172637 (not b_next!63765) b_and!172635 (not b_next!63763) (not b_next!63761) b_and!172633)
