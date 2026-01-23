; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208124 () Bool)

(assert start!208124)

(declare-fun b!2145510 () Bool)

(declare-fun b_free!63269 () Bool)

(declare-fun b_next!63973 () Bool)

(assert (=> b!2145510 (= b_free!63269 (not b_next!63973))))

(declare-fun tp!665218 () Bool)

(declare-fun b_and!172849 () Bool)

(assert (=> b!2145510 (= tp!665218 b_and!172849)))

(declare-fun b!2145497 () Bool)

(declare-fun b_free!63271 () Bool)

(declare-fun b_next!63975 () Bool)

(assert (=> b!2145497 (= b_free!63271 (not b_next!63975))))

(declare-fun tp!665211 () Bool)

(declare-fun b_and!172851 () Bool)

(assert (=> b!2145497 (= tp!665211 b_and!172851)))

(declare-fun b!2145508 () Bool)

(declare-fun b_free!63273 () Bool)

(declare-fun b_next!63977 () Bool)

(assert (=> b!2145508 (= b_free!63273 (not b_next!63977))))

(declare-fun tp!665214 () Bool)

(declare-fun b_and!172853 () Bool)

(assert (=> b!2145508 (= tp!665214 b_and!172853)))

(declare-fun b!2145507 () Bool)

(declare-fun b_free!63275 () Bool)

(declare-fun b_next!63979 () Bool)

(assert (=> b!2145507 (= b_free!63275 (not b_next!63979))))

(declare-fun tp!665193 () Bool)

(declare-fun b_and!172855 () Bool)

(assert (=> b!2145507 (= tp!665193 b_and!172855)))

(declare-fun b!2145536 () Bool)

(declare-fun b_free!63277 () Bool)

(declare-fun b_next!63981 () Bool)

(assert (=> b!2145536 (= b_free!63277 (not b_next!63981))))

(declare-fun tp!665219 () Bool)

(declare-fun b_and!172857 () Bool)

(assert (=> b!2145536 (= tp!665219 b_and!172857)))

(declare-fun b!2145534 () Bool)

(declare-fun b_free!63279 () Bool)

(declare-fun b_next!63983 () Bool)

(assert (=> b!2145534 (= b_free!63279 (not b_next!63983))))

(declare-fun tp!665204 () Bool)

(declare-fun b_and!172859 () Bool)

(assert (=> b!2145534 (= tp!665204 b_and!172859)))

(declare-fun b!2145537 () Bool)

(assert (=> b!2145537 true))

(declare-fun bs!445352 () Bool)

(declare-fun b!2145495 () Bool)

(assert (= bs!445352 (and b!2145495 b!2145537)))

(declare-fun lambda!80500 () Int)

(declare-fun lambda!80499 () Int)

(assert (=> bs!445352 (not (= lambda!80500 lambda!80499))))

(assert (=> b!2145495 true))

(declare-fun bs!445353 () Bool)

(declare-fun b!2145511 () Bool)

(assert (= bs!445353 (and b!2145511 b!2145537)))

(declare-fun lt!798769 () Int)

(declare-fun lt!798771 () Int)

(declare-fun lambda!80501 () Int)

(assert (=> bs!445353 (= (= lt!798771 lt!798769) (= lambda!80501 lambda!80499))))

(declare-fun bs!445354 () Bool)

(assert (= bs!445354 (and b!2145511 b!2145495)))

(assert (=> bs!445354 (not (= lambda!80501 lambda!80500))))

(assert (=> b!2145511 true))

(declare-fun b!2145492 () Bool)

(declare-fun e!1371217 () Bool)

(declare-fun totalInputSize!296 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2145492 (= e!1371217 (< (- totalInputSize!296 (+ 1 from!1043)) (- totalInputSize!296 from!1043)))))

(declare-fun b!2145493 () Bool)

(declare-fun e!1371228 () Bool)

(declare-datatypes ((C!11748 0))(
  ( (C!11749 (val!6860 Int)) )
))
(declare-datatypes ((List!24548 0))(
  ( (Nil!24464) (Cons!24464 (h!29865 C!11748) (t!197078 List!24548)) )
))
(declare-datatypes ((IArray!15879 0))(
  ( (IArray!15880 (innerList!7997 List!24548)) )
))
(declare-datatypes ((Conc!7937 0))(
  ( (Node!7937 (left!18798 Conc!7937) (right!19128 Conc!7937) (csize!16104 Int) (cheight!8148 Int)) (Leaf!11605 (xs!10879 IArray!15879) (csize!16105 Int)) (Empty!7937) )
))
(declare-datatypes ((BalanceConc!15636 0))(
  ( (BalanceConc!15637 (c!340733 Conc!7937)) )
))
(declare-fun totalInput!851 () BalanceConc!15636)

(declare-fun tp!665206 () Bool)

(declare-fun inv!32181 (Conc!7937) Bool)

(assert (=> b!2145493 (= e!1371228 (and (inv!32181 (c!340733 totalInput!851)) tp!665206))))

(declare-fun b!2145494 () Bool)

(declare-fun e!1371192 () Bool)

(declare-fun tp!665199 () Bool)

(declare-fun mapRes!13396 () Bool)

(assert (=> b!2145494 (= e!1371192 (and tp!665199 mapRes!13396))))

(declare-fun condMapEmpty!13397 () Bool)

(declare-datatypes ((Regex!5801 0))(
  ( (ElementMatch!5801 (c!340734 C!11748)) (Concat!10103 (regOne!12114 Regex!5801) (regTwo!12114 Regex!5801)) (EmptyExpr!5801) (Star!5801 (reg!6130 Regex!5801)) (EmptyLang!5801) (Union!5801 (regOne!12115 Regex!5801) (regTwo!12115 Regex!5801)) )
))
(declare-datatypes ((List!24549 0))(
  ( (Nil!24465) (Cons!24465 (h!29866 Regex!5801) (t!197079 List!24549)) )
))
(declare-datatypes ((Context!2742 0))(
  ( (Context!2743 (exprs!1871 List!24549)) )
))
(declare-datatypes ((tuple2!24330 0))(
  ( (tuple2!24331 (_1!14396 Context!2742) (_2!14396 C!11748)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!24332 0))(
  ( (tuple2!24333 (_1!14397 tuple2!24330) (_2!14397 (InoxSet Context!2742))) )
))
(declare-datatypes ((List!24550 0))(
  ( (Nil!24466) (Cons!24466 (h!29867 tuple2!24332) (t!197080 List!24550)) )
))
(declare-datatypes ((array!9499 0))(
  ( (array!9500 (arr!4243 (Array (_ BitVec 32) (_ BitVec 64))) (size!19150 (_ BitVec 32))) )
))
(declare-datatypes ((array!9501 0))(
  ( (array!9502 (arr!4244 (Array (_ BitVec 32) List!24550)) (size!19151 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5642 0))(
  ( (LongMapFixedSize!5643 (defaultEntry!3186 Int) (mask!7037 (_ BitVec 32)) (extraKeys!3069 (_ BitVec 32)) (zeroValue!3079 List!24550) (minValue!3079 List!24550) (_size!5693 (_ BitVec 32)) (_keys!3118 array!9499) (_values!3101 array!9501) (_vacant!2882 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11109 0))(
  ( (Cell!11110 (v!29058 LongMapFixedSize!5642)) )
))
(declare-datatypes ((MutLongMap!2821 0))(
  ( (LongMap!2821 (underlying!5837 Cell!11109)) (MutLongMapExt!2820 (__x!16639 Int)) )
))
(declare-datatypes ((Cell!11111 0))(
  ( (Cell!11112 (v!29059 MutLongMap!2821)) )
))
(declare-datatypes ((Hashable!2735 0))(
  ( (HashableExt!2734 (__x!16640 Int)) )
))
(declare-datatypes ((MutableMap!2735 0))(
  ( (MutableMapExt!2734 (__x!16641 Int)) (HashMap!2735 (underlying!5838 Cell!11111) (hashF!4658 Hashable!2735) (_size!5694 (_ BitVec 32)) (defaultValue!2897 Int)) )
))
(declare-datatypes ((CacheUp!1880 0))(
  ( (CacheUp!1881 (cache!3116 MutableMap!2735)) )
))
(declare-fun cacheUp!979 () CacheUp!1880)

(declare-fun mapDefault!13396 () List!24550)

(assert (=> b!2145494 (= condMapEmpty!13397 (= (arr!4244 (_values!3101 (v!29058 (underlying!5837 (v!29059 (underlying!5838 (cache!3116 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24550)) mapDefault!13396)))))

(declare-fun res!925780 () Bool)

(declare-fun e!1371211 () Bool)

(assert (=> b!2145495 (=> (not res!925780) (not e!1371211))))

(declare-datatypes ((StackFrame!268 0))(
  ( (StackFrame!269 (z!5903 (InoxSet Context!2742)) (from!2767 Int) (lastNullablePos!454 Int) (res!925797 Int) (totalInput!3171 BalanceConc!15636)) )
))
(declare-datatypes ((List!24551 0))(
  ( (Nil!24467) (Cons!24467 (h!29868 StackFrame!268) (t!197081 List!24551)) )
))
(declare-fun stack!8 () List!24551)

(declare-fun forall!4994 (List!24551 Int) Bool)

(assert (=> b!2145495 (= res!925780 (forall!4994 stack!8 lambda!80500))))

(declare-fun b!2145496 () Bool)

(declare-fun e!1371227 () Bool)

(declare-fun tp!665203 () Bool)

(assert (=> b!2145496 (= e!1371227 tp!665203)))

(declare-fun e!1371194 () Bool)

(declare-fun e!1371209 () Bool)

(assert (=> b!2145497 (= e!1371194 (and e!1371209 tp!665211))))

(declare-fun b!2145498 () Bool)

(declare-fun e!1371208 () Bool)

(declare-fun tp!665198 () Bool)

(declare-fun mapRes!13397 () Bool)

(assert (=> b!2145498 (= e!1371208 (and tp!665198 mapRes!13397))))

(declare-fun condMapEmpty!13396 () Bool)

(declare-datatypes ((tuple3!3522 0))(
  ( (tuple3!3523 (_1!14398 Regex!5801) (_2!14398 Context!2742) (_3!2231 C!11748)) )
))
(declare-datatypes ((tuple2!24334 0))(
  ( (tuple2!24335 (_1!14399 tuple3!3522) (_2!14399 (InoxSet Context!2742))) )
))
(declare-datatypes ((List!24552 0))(
  ( (Nil!24468) (Cons!24468 (h!29869 tuple2!24334) (t!197082 List!24552)) )
))
(declare-datatypes ((Hashable!2736 0))(
  ( (HashableExt!2735 (__x!16642 Int)) )
))
(declare-datatypes ((array!9503 0))(
  ( (array!9504 (arr!4245 (Array (_ BitVec 32) List!24552)) (size!19152 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5644 0))(
  ( (LongMapFixedSize!5645 (defaultEntry!3187 Int) (mask!7038 (_ BitVec 32)) (extraKeys!3070 (_ BitVec 32)) (zeroValue!3080 List!24552) (minValue!3080 List!24552) (_size!5695 (_ BitVec 32)) (_keys!3119 array!9499) (_values!3102 array!9503) (_vacant!2883 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11113 0))(
  ( (Cell!11114 (v!29060 LongMapFixedSize!5644)) )
))
(declare-datatypes ((MutLongMap!2822 0))(
  ( (LongMap!2822 (underlying!5839 Cell!11113)) (MutLongMapExt!2821 (__x!16643 Int)) )
))
(declare-datatypes ((Cell!11115 0))(
  ( (Cell!11116 (v!29061 MutLongMap!2822)) )
))
(declare-datatypes ((MutableMap!2736 0))(
  ( (MutableMapExt!2735 (__x!16644 Int)) (HashMap!2736 (underlying!5840 Cell!11115) (hashF!4659 Hashable!2736) (_size!5696 (_ BitVec 32)) (defaultValue!2898 Int)) )
))
(declare-datatypes ((CacheDown!1874 0))(
  ( (CacheDown!1875 (cache!3117 MutableMap!2736)) )
))
(declare-fun cacheDown!1098 () CacheDown!1874)

(declare-fun mapDefault!13398 () List!24552)

(assert (=> b!2145498 (= condMapEmpty!13396 (= (arr!4245 (_values!3102 (v!29060 (underlying!5839 (v!29061 (underlying!5840 (cache!3117 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24552)) mapDefault!13398)))))

(declare-fun b!2145499 () Bool)

(declare-fun e!1371223 () Int)

(assert (=> b!2145499 (= e!1371223 from!1043)))

(declare-fun b!2145500 () Bool)

(declare-fun res!925790 () Bool)

(declare-fun e!1371210 () Bool)

(assert (=> b!2145500 (=> (not res!925790) (not e!1371210))))

(declare-fun e!1371199 () Bool)

(assert (=> b!2145500 (= res!925790 e!1371199)))

(declare-fun res!925789 () Bool)

(assert (=> b!2145500 (=> res!925789 e!1371199)))

(declare-fun z!3839 () (InoxSet Context!2742))

(declare-fun nullableZipper!154 ((InoxSet Context!2742)) Bool)

(assert (=> b!2145500 (= res!925789 (not (nullableZipper!154 z!3839)))))

(declare-fun b!2145501 () Bool)

(declare-fun e!1371197 () Bool)

(declare-fun e!1371191 () Bool)

(assert (=> b!2145501 (= e!1371197 e!1371191)))

(declare-fun b!2145502 () Bool)

(declare-fun e!1371214 () Bool)

(declare-fun e!1371190 () Bool)

(assert (=> b!2145502 (= e!1371214 e!1371190)))

(declare-fun b!2145503 () Bool)

(declare-fun e!1371224 () Bool)

(declare-fun tp!665195 () Bool)

(declare-fun mapRes!13398 () Bool)

(assert (=> b!2145503 (= e!1371224 (and tp!665195 mapRes!13398))))

(declare-fun condMapEmpty!13398 () Bool)

(declare-datatypes ((tuple3!3524 0))(
  ( (tuple3!3525 (_1!14400 (InoxSet Context!2742)) (_2!14400 Int) (_3!2232 Int)) )
))
(declare-datatypes ((tuple2!24336 0))(
  ( (tuple2!24337 (_1!14401 tuple3!3524) (_2!14401 Int)) )
))
(declare-datatypes ((List!24553 0))(
  ( (Nil!24469) (Cons!24469 (h!29870 tuple2!24336) (t!197083 List!24553)) )
))
(declare-datatypes ((array!9505 0))(
  ( (array!9506 (arr!4246 (Array (_ BitVec 32) List!24553)) (size!19153 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5646 0))(
  ( (LongMapFixedSize!5647 (defaultEntry!3188 Int) (mask!7039 (_ BitVec 32)) (extraKeys!3071 (_ BitVec 32)) (zeroValue!3081 List!24553) (minValue!3081 List!24553) (_size!5697 (_ BitVec 32)) (_keys!3120 array!9499) (_values!3103 array!9505) (_vacant!2884 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11117 0))(
  ( (Cell!11118 (v!29062 LongMapFixedSize!5646)) )
))
(declare-datatypes ((MutLongMap!2823 0))(
  ( (LongMap!2823 (underlying!5841 Cell!11117)) (MutLongMapExt!2822 (__x!16645 Int)) )
))
(declare-datatypes ((Cell!11119 0))(
  ( (Cell!11120 (v!29063 MutLongMap!2823)) )
))
(declare-datatypes ((Hashable!2737 0))(
  ( (HashableExt!2736 (__x!16646 Int)) )
))
(declare-datatypes ((MutableMap!2737 0))(
  ( (MutableMapExt!2736 (__x!16647 Int)) (HashMap!2737 (underlying!5842 Cell!11119) (hashF!4660 Hashable!2737) (_size!5698 (_ BitVec 32)) (defaultValue!2899 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!840 0))(
  ( (CacheFurthestNullable!841 (cache!3118 MutableMap!2737) (totalInput!3172 BalanceConc!15636)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!840)

(declare-fun mapDefault!13397 () List!24553)

(assert (=> b!2145503 (= condMapEmpty!13398 (= (arr!4246 (_values!3103 (v!29062 (underlying!5841 (v!29063 (underlying!5842 (cache!3118 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24553)) mapDefault!13397)))))

(declare-fun e!1371220 () Bool)

(declare-fun setRes!16705 () Bool)

(declare-fun b!2145504 () Bool)

(declare-fun e!1371212 () Bool)

(declare-fun inv!32182 (BalanceConc!15636) Bool)

(assert (=> b!2145504 (= e!1371212 (and setRes!16705 (inv!32182 (totalInput!3171 (h!29868 stack!8))) e!1371220))))

(declare-fun condSetEmpty!16706 () Bool)

(assert (=> b!2145504 (= condSetEmpty!16706 (= (z!5903 (h!29868 stack!8)) ((as const (Array Context!2742 Bool)) false)))))

(declare-fun e!1371207 () Bool)

(declare-fun b!2145505 () Bool)

(declare-fun e!1371215 () Bool)

(declare-fun e!1371200 () Bool)

(assert (=> b!2145505 (= e!1371215 (and e!1371207 (inv!32182 (totalInput!3172 cacheFurthestNullable!114)) e!1371200))))

(declare-fun mapNonEmpty!13396 () Bool)

(declare-fun tp!665215 () Bool)

(declare-fun tp!665196 () Bool)

(assert (=> mapNonEmpty!13396 (= mapRes!13396 (and tp!665215 tp!665196))))

(declare-fun mapValue!13398 () List!24550)

(declare-fun mapKey!13397 () (_ BitVec 32))

(declare-fun mapRest!13396 () (Array (_ BitVec 32) List!24550))

(assert (=> mapNonEmpty!13396 (= (arr!4244 (_values!3101 (v!29058 (underlying!5837 (v!29059 (underlying!5838 (cache!3116 cacheUp!979))))))) (store mapRest!13396 mapKey!13397 mapValue!13398))))

(declare-fun b!2145506 () Bool)

(declare-fun e!1371203 () Bool)

(declare-fun tp!665201 () Bool)

(assert (=> b!2145506 (= e!1371203 tp!665201)))

(declare-fun tp!665217 () Bool)

(declare-fun tp!665212 () Bool)

(declare-fun e!1371202 () Bool)

(declare-fun array_inv!3036 (array!9499) Bool)

(declare-fun array_inv!3037 (array!9501) Bool)

(assert (=> b!2145507 (= e!1371202 (and tp!665193 tp!665217 tp!665212 (array_inv!3036 (_keys!3118 (v!29058 (underlying!5837 (v!29059 (underlying!5838 (cache!3116 cacheUp!979))))))) (array_inv!3037 (_values!3101 (v!29058 (underlying!5837 (v!29059 (underlying!5838 (cache!3116 cacheUp!979))))))) e!1371192))))

(declare-fun e!1371225 () Bool)

(declare-fun e!1371216 () Bool)

(assert (=> b!2145508 (= e!1371225 (and e!1371216 tp!665214))))

(declare-fun b!2145509 () Bool)

(declare-fun e!1371196 () Bool)

(declare-fun lt!798774 () MutLongMap!2821)

(get-info :version)

(assert (=> b!2145509 (= e!1371209 (and e!1371196 ((_ is LongMap!2821) lt!798774)))))

(assert (=> b!2145509 (= lt!798774 (v!29059 (underlying!5838 (cache!3116 cacheUp!979))))))

(declare-fun e!1371221 () Bool)

(assert (=> b!2145510 (= e!1371207 (and e!1371221 tp!665218))))

(declare-fun mapNonEmpty!13397 () Bool)

(declare-fun tp!665202 () Bool)

(declare-fun tp!665207 () Bool)

(assert (=> mapNonEmpty!13397 (= mapRes!13398 (and tp!665202 tp!665207))))

(declare-fun mapKey!13396 () (_ BitVec 32))

(declare-fun mapValue!13397 () List!24553)

(declare-fun mapRest!13397 () (Array (_ BitVec 32) List!24553))

(assert (=> mapNonEmpty!13397 (= (arr!4246 (_values!3103 (v!29062 (underlying!5841 (v!29063 (underlying!5842 (cache!3118 cacheFurthestNullable!114))))))) (store mapRest!13397 mapKey!13396 mapValue!13397))))

(declare-fun mapIsEmpty!13396 () Bool)

(assert (=> mapIsEmpty!13396 mapRes!13397))

(declare-fun e!1371198 () Bool)

(assert (=> b!2145511 (= e!1371198 e!1371217)))

(declare-fun res!925796 () Bool)

(assert (=> b!2145511 (=> res!925796 e!1371217)))

(assert (=> b!2145511 (= res!925796 (not (forall!4994 stack!8 lambda!80501)))))

(assert (=> b!2145511 (forall!4994 stack!8 lambda!80501)))

(declare-datatypes ((Unit!37713 0))(
  ( (Unit!37714) )
))
(declare-fun lt!798770 () Unit!37713)

(declare-fun lemmaStackPreservesForEqualRes!32 (List!24551 Int Int) Unit!37713)

(assert (=> b!2145511 (= lt!798770 (lemmaStackPreservesForEqualRes!32 stack!8 lt!798769 lt!798771))))

(assert (=> b!2145511 (forall!4994 stack!8 lambda!80499)))

(declare-fun b!2145512 () Bool)

(declare-fun res!925782 () Bool)

(assert (=> b!2145512 (=> (not res!925782) (not e!1371210))))

(declare-fun valid!2199 (CacheFurthestNullable!840) Bool)

(assert (=> b!2145512 (= res!925782 (valid!2199 cacheFurthestNullable!114))))

(declare-fun res!925783 () Bool)

(declare-fun e!1371206 () Bool)

(assert (=> start!208124 (=> (not res!925783) (not e!1371206))))

(assert (=> start!208124 (= res!925783 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!208124 e!1371206))

(declare-fun inv!32183 (CacheFurthestNullable!840) Bool)

(assert (=> start!208124 (and (inv!32183 cacheFurthestNullable!114) e!1371215)))

(assert (=> start!208124 true))

(declare-fun e!1371204 () Bool)

(declare-fun inv!32184 (CacheDown!1874) Bool)

(assert (=> start!208124 (and (inv!32184 cacheDown!1098) e!1371204)))

(declare-fun e!1371195 () Bool)

(declare-fun inv!32185 (CacheUp!1880) Bool)

(assert (=> start!208124 (and (inv!32185 cacheUp!979) e!1371195)))

(declare-fun condSetEmpty!16705 () Bool)

(assert (=> start!208124 (= condSetEmpty!16705 (= z!3839 ((as const (Array Context!2742 Bool)) false)))))

(declare-fun setRes!16706 () Bool)

(assert (=> start!208124 setRes!16706))

(assert (=> start!208124 (and (inv!32182 totalInput!851) e!1371228)))

(declare-fun e!1371219 () Bool)

(assert (=> start!208124 e!1371219))

(declare-fun mapIsEmpty!13397 () Bool)

(assert (=> mapIsEmpty!13397 mapRes!13398))

(declare-fun b!2145513 () Bool)

(assert (=> b!2145513 (= e!1371195 e!1371194)))

(declare-fun b!2145514 () Bool)

(declare-fun tp!665209 () Bool)

(assert (=> b!2145514 (= e!1371220 (and (inv!32181 (c!340733 (totalInput!3171 (h!29868 stack!8)))) tp!665209))))

(declare-fun b!2145515 () Bool)

(declare-fun e!1371218 () Bool)

(assert (=> b!2145515 (= e!1371211 (not e!1371218))))

(declare-fun res!925785 () Bool)

(assert (=> b!2145515 (=> res!925785 e!1371218)))

(declare-fun lastNullablePos!123 () Int)

(declare-datatypes ((Option!4952 0))(
  ( (None!4951) (Some!4951 (v!29064 Int)) )
))
(declare-fun get!7463 (CacheFurthestNullable!840 (InoxSet Context!2742) Int Int) Option!4952)

(assert (=> b!2145515 (= res!925785 ((_ is Some!4951) (get!7463 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2145515 (forall!4994 stack!8 lambda!80499)))

(declare-fun b!2145516 () Bool)

(declare-fun res!925786 () Bool)

(assert (=> b!2145516 (=> res!925786 e!1371217)))

(declare-fun lt!798776 () List!24551)

(assert (=> b!2145516 (= res!925786 (not (forall!4994 lt!798776 lambda!80500)))))

(declare-fun b!2145517 () Bool)

(declare-fun e!1371193 () Bool)

(assert (=> b!2145517 (= e!1371193 e!1371202)))

(declare-fun b!2145518 () Bool)

(declare-fun res!925795 () Bool)

(assert (=> b!2145518 (=> (not res!925795) (not e!1371210))))

(assert (=> b!2145518 (= res!925795 (= (totalInput!3172 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2145519 () Bool)

(assert (=> b!2145519 (= e!1371206 e!1371210)))

(declare-fun res!925792 () Bool)

(assert (=> b!2145519 (=> (not res!925792) (not e!1371210))))

(declare-fun lt!798775 () Int)

(assert (=> b!2145519 (= res!925792 (and (= totalInputSize!296 lt!798775) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19154 (BalanceConc!15636) Int)

(assert (=> b!2145519 (= lt!798775 (size!19154 totalInput!851))))

(declare-fun b!2145520 () Bool)

(declare-fun res!925784 () Bool)

(assert (=> b!2145520 (=> (not res!925784) (not e!1371210))))

(declare-fun valid!2200 (CacheDown!1874) Bool)

(assert (=> b!2145520 (= res!925784 (valid!2200 cacheDown!1098))))

(declare-fun b!2145521 () Bool)

(assert (=> b!2145521 (= e!1371196 e!1371193)))

(declare-fun b!2145522 () Bool)

(declare-fun e!1371226 () Bool)

(assert (=> b!2145522 (= e!1371226 e!1371197)))

(declare-fun setNonEmpty!16705 () Bool)

(declare-fun setElem!16706 () Context!2742)

(declare-fun tp!665200 () Bool)

(declare-fun inv!32186 (Context!2742) Bool)

(assert (=> setNonEmpty!16705 (= setRes!16705 (and tp!665200 (inv!32186 setElem!16706) e!1371203))))

(declare-fun setRest!16706 () (InoxSet Context!2742))

(assert (=> setNonEmpty!16705 (= (z!5903 (h!29868 stack!8)) ((_ map or) (store ((as const (Array Context!2742 Bool)) false) setElem!16706 true) setRest!16706))))

(declare-fun b!2145523 () Bool)

(assert (=> b!2145523 (= e!1371204 e!1371225)))

(declare-fun b!2145524 () Bool)

(declare-fun e!1371213 () Bool)

(assert (=> b!2145524 (= e!1371190 e!1371213)))

(declare-fun tp!665205 () Bool)

(declare-fun setElem!16705 () Context!2742)

(declare-fun setNonEmpty!16706 () Bool)

(assert (=> setNonEmpty!16706 (= setRes!16706 (and tp!665205 (inv!32186 setElem!16705) e!1371227))))

(declare-fun setRest!16705 () (InoxSet Context!2742))

(assert (=> setNonEmpty!16706 (= z!3839 ((_ map or) (store ((as const (Array Context!2742 Bool)) false) setElem!16705 true) setRest!16705))))

(declare-fun b!2145525 () Bool)

(declare-fun tp!665210 () Bool)

(declare-fun inv!32187 (StackFrame!268) Bool)

(assert (=> b!2145525 (= e!1371219 (and (inv!32187 (h!29868 stack!8)) e!1371212 tp!665210))))

(declare-fun b!2145526 () Bool)

(declare-fun res!925794 () Bool)

(assert (=> b!2145526 (=> res!925794 e!1371218)))

(assert (=> b!2145526 (= res!925794 (= from!1043 totalInputSize!296))))

(declare-fun b!2145527 () Bool)

(declare-fun res!925791 () Bool)

(assert (=> b!2145527 (=> (not res!925791) (not e!1371210))))

(declare-fun valid!2201 (CacheUp!1880) Bool)

(assert (=> b!2145527 (= res!925791 (valid!2201 cacheUp!979))))

(declare-fun b!2145528 () Bool)

(declare-fun lt!798773 () MutLongMap!2822)

(assert (=> b!2145528 (= e!1371216 (and e!1371214 ((_ is LongMap!2822) lt!798773)))))

(assert (=> b!2145528 (= lt!798773 (v!29061 (underlying!5840 (cache!3117 cacheDown!1098))))))

(declare-fun b!2145529 () Bool)

(declare-fun tp!665213 () Bool)

(assert (=> b!2145529 (= e!1371200 (and (inv!32181 (c!340733 (totalInput!3172 cacheFurthestNullable!114))) tp!665213))))

(declare-fun b!2145530 () Bool)

(declare-fun res!925788 () Bool)

(assert (=> b!2145530 (=> res!925788 e!1371218)))

(declare-fun lostCauseZipper!131 ((InoxSet Context!2742)) Bool)

(assert (=> b!2145530 (= res!925788 (lostCauseZipper!131 z!3839))))

(declare-fun mapNonEmpty!13398 () Bool)

(declare-fun tp!665208 () Bool)

(declare-fun tp!665197 () Bool)

(assert (=> mapNonEmpty!13398 (= mapRes!13397 (and tp!665208 tp!665197))))

(declare-fun mapRest!13398 () (Array (_ BitVec 32) List!24552))

(declare-fun mapValue!13396 () List!24552)

(declare-fun mapKey!13398 () (_ BitVec 32))

(assert (=> mapNonEmpty!13398 (= (arr!4245 (_values!3102 (v!29060 (underlying!5839 (v!29061 (underlying!5840 (cache!3117 cacheDown!1098))))))) (store mapRest!13398 mapKey!13398 mapValue!13396))))

(declare-fun setIsEmpty!16705 () Bool)

(assert (=> setIsEmpty!16705 setRes!16706))

(declare-fun b!2145531 () Bool)

(assert (=> b!2145531 (= e!1371199 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2145532 () Bool)

(declare-fun lt!798772 () MutLongMap!2823)

(assert (=> b!2145532 (= e!1371221 (and e!1371226 ((_ is LongMap!2823) lt!798772)))))

(assert (=> b!2145532 (= lt!798772 (v!29063 (underlying!5842 (cache!3118 cacheFurthestNullable!114))))))

(declare-fun b!2145533 () Bool)

(assert (=> b!2145533 (= e!1371218 e!1371198)))

(declare-fun res!925787 () Bool)

(assert (=> b!2145533 (=> res!925787 e!1371198)))

(assert (=> b!2145533 (= res!925787 (not (= lt!798769 lt!798771)))))

(declare-datatypes ((tuple3!3526 0))(
  ( (tuple3!3527 (_1!14402 (InoxSet Context!2742)) (_2!14402 CacheUp!1880) (_3!2233 CacheDown!1874)) )
))
(declare-fun lt!798777 () tuple3!3526)

(declare-fun furthestNullablePosition!92 ((InoxSet Context!2742) Int BalanceConc!15636 Int Int) Int)

(assert (=> b!2145533 (= lt!798771 (furthestNullablePosition!92 (_1!14402 lt!798777) (+ 1 from!1043) totalInput!851 lt!798775 e!1371223))))

(declare-fun c!340732 () Bool)

(assert (=> b!2145533 (= c!340732 (nullableZipper!154 (_1!14402 lt!798777)))))

(assert (=> b!2145533 (= lt!798776 (Cons!24467 (StackFrame!269 z!3839 from!1043 lastNullablePos!123 lt!798769 totalInput!851) stack!8))))

(declare-fun derivationStepZipperMem!63 ((InoxSet Context!2742) C!11748 CacheUp!1880 CacheDown!1874) tuple3!3526)

(declare-fun apply!5978 (BalanceConc!15636 Int) C!11748)

(assert (=> b!2145533 (= lt!798777 (derivationStepZipperMem!63 z!3839 (apply!5978 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun tp!665220 () Bool)

(declare-fun tp!665216 () Bool)

(declare-fun array_inv!3038 (array!9503) Bool)

(assert (=> b!2145534 (= e!1371213 (and tp!665204 tp!665216 tp!665220 (array_inv!3036 (_keys!3119 (v!29060 (underlying!5839 (v!29061 (underlying!5840 (cache!3117 cacheDown!1098))))))) (array_inv!3038 (_values!3102 (v!29060 (underlying!5839 (v!29061 (underlying!5840 (cache!3117 cacheDown!1098))))))) e!1371208))))

(declare-fun b!2145535 () Bool)

(declare-fun res!925793 () Bool)

(assert (=> b!2145535 (=> res!925793 e!1371217)))

(assert (=> b!2145535 (= res!925793 (not (forall!4994 lt!798776 lambda!80501)))))

(declare-fun setIsEmpty!16706 () Bool)

(assert (=> setIsEmpty!16706 setRes!16705))

(declare-fun tp!665194 () Bool)

(declare-fun tp!665221 () Bool)

(declare-fun array_inv!3039 (array!9505) Bool)

(assert (=> b!2145536 (= e!1371191 (and tp!665219 tp!665221 tp!665194 (array_inv!3036 (_keys!3120 (v!29062 (underlying!5841 (v!29063 (underlying!5842 (cache!3118 cacheFurthestNullable!114))))))) (array_inv!3039 (_values!3103 (v!29062 (underlying!5841 (v!29063 (underlying!5842 (cache!3118 cacheFurthestNullable!114))))))) e!1371224))))

(assert (=> b!2145537 (= e!1371210 e!1371211)))

(declare-fun res!925781 () Bool)

(assert (=> b!2145537 (=> (not res!925781) (not e!1371211))))

(assert (=> b!2145537 (= res!925781 (forall!4994 stack!8 lambda!80499))))

(assert (=> b!2145537 (= lt!798769 (furthestNullablePosition!92 z!3839 from!1043 totalInput!851 lt!798775 lastNullablePos!123))))

(declare-fun mapIsEmpty!13398 () Bool)

(assert (=> mapIsEmpty!13398 mapRes!13396))

(declare-fun b!2145538 () Bool)

(assert (=> b!2145538 (= e!1371223 lastNullablePos!123)))

(assert (= (and start!208124 res!925783) b!2145519))

(assert (= (and b!2145519 res!925792) b!2145500))

(assert (= (and b!2145500 (not res!925789)) b!2145531))

(assert (= (and b!2145500 res!925790) b!2145527))

(assert (= (and b!2145527 res!925791) b!2145520))

(assert (= (and b!2145520 res!925784) b!2145512))

(assert (= (and b!2145512 res!925782) b!2145518))

(assert (= (and b!2145518 res!925795) b!2145537))

(assert (= (and b!2145537 res!925781) b!2145495))

(assert (= (and b!2145495 res!925780) b!2145515))

(assert (= (and b!2145515 (not res!925785)) b!2145526))

(assert (= (and b!2145526 (not res!925794)) b!2145530))

(assert (= (and b!2145530 (not res!925788)) b!2145533))

(assert (= (and b!2145533 c!340732) b!2145499))

(assert (= (and b!2145533 (not c!340732)) b!2145538))

(assert (= (and b!2145533 (not res!925787)) b!2145511))

(assert (= (and b!2145511 (not res!925796)) b!2145535))

(assert (= (and b!2145535 (not res!925793)) b!2145516))

(assert (= (and b!2145516 (not res!925786)) b!2145492))

(assert (= (and b!2145503 condMapEmpty!13398) mapIsEmpty!13397))

(assert (= (and b!2145503 (not condMapEmpty!13398)) mapNonEmpty!13397))

(assert (= b!2145536 b!2145503))

(assert (= b!2145501 b!2145536))

(assert (= b!2145522 b!2145501))

(assert (= (and b!2145532 ((_ is LongMap!2823) (v!29063 (underlying!5842 (cache!3118 cacheFurthestNullable!114))))) b!2145522))

(assert (= b!2145510 b!2145532))

(assert (= (and b!2145505 ((_ is HashMap!2737) (cache!3118 cacheFurthestNullable!114))) b!2145510))

(assert (= b!2145505 b!2145529))

(assert (= start!208124 b!2145505))

(assert (= (and b!2145498 condMapEmpty!13396) mapIsEmpty!13396))

(assert (= (and b!2145498 (not condMapEmpty!13396)) mapNonEmpty!13398))

(assert (= b!2145534 b!2145498))

(assert (= b!2145524 b!2145534))

(assert (= b!2145502 b!2145524))

(assert (= (and b!2145528 ((_ is LongMap!2822) (v!29061 (underlying!5840 (cache!3117 cacheDown!1098))))) b!2145502))

(assert (= b!2145508 b!2145528))

(assert (= (and b!2145523 ((_ is HashMap!2736) (cache!3117 cacheDown!1098))) b!2145508))

(assert (= start!208124 b!2145523))

(assert (= (and b!2145494 condMapEmpty!13397) mapIsEmpty!13398))

(assert (= (and b!2145494 (not condMapEmpty!13397)) mapNonEmpty!13396))

(assert (= b!2145507 b!2145494))

(assert (= b!2145517 b!2145507))

(assert (= b!2145521 b!2145517))

(assert (= (and b!2145509 ((_ is LongMap!2821) (v!29059 (underlying!5838 (cache!3116 cacheUp!979))))) b!2145521))

(assert (= b!2145497 b!2145509))

(assert (= (and b!2145513 ((_ is HashMap!2735) (cache!3116 cacheUp!979))) b!2145497))

(assert (= start!208124 b!2145513))

(assert (= (and start!208124 condSetEmpty!16705) setIsEmpty!16705))

(assert (= (and start!208124 (not condSetEmpty!16705)) setNonEmpty!16706))

(assert (= setNonEmpty!16706 b!2145496))

(assert (= start!208124 b!2145493))

(assert (= (and b!2145504 condSetEmpty!16706) setIsEmpty!16706))

(assert (= (and b!2145504 (not condSetEmpty!16706)) setNonEmpty!16705))

(assert (= setNonEmpty!16705 b!2145506))

(assert (= b!2145504 b!2145514))

(assert (= b!2145525 b!2145504))

(assert (= (and start!208124 ((_ is Cons!24467) stack!8)) b!2145525))

(declare-fun m!2589403 () Bool)

(assert (=> setNonEmpty!16705 m!2589403))

(declare-fun m!2589405 () Bool)

(assert (=> b!2145500 m!2589405))

(declare-fun m!2589407 () Bool)

(assert (=> b!2145512 m!2589407))

(declare-fun m!2589409 () Bool)

(assert (=> b!2145525 m!2589409))

(declare-fun m!2589411 () Bool)

(assert (=> b!2145505 m!2589411))

(declare-fun m!2589413 () Bool)

(assert (=> b!2145515 m!2589413))

(declare-fun m!2589415 () Bool)

(assert (=> b!2145515 m!2589415))

(declare-fun m!2589417 () Bool)

(assert (=> b!2145520 m!2589417))

(declare-fun m!2589419 () Bool)

(assert (=> b!2145527 m!2589419))

(declare-fun m!2589421 () Bool)

(assert (=> b!2145504 m!2589421))

(declare-fun m!2589423 () Bool)

(assert (=> b!2145535 m!2589423))

(declare-fun m!2589425 () Bool)

(assert (=> b!2145507 m!2589425))

(declare-fun m!2589427 () Bool)

(assert (=> b!2145507 m!2589427))

(declare-fun m!2589429 () Bool)

(assert (=> mapNonEmpty!13398 m!2589429))

(declare-fun m!2589431 () Bool)

(assert (=> b!2145529 m!2589431))

(declare-fun m!2589433 () Bool)

(assert (=> b!2145534 m!2589433))

(declare-fun m!2589435 () Bool)

(assert (=> b!2145534 m!2589435))

(declare-fun m!2589437 () Bool)

(assert (=> b!2145511 m!2589437))

(assert (=> b!2145511 m!2589437))

(declare-fun m!2589439 () Bool)

(assert (=> b!2145511 m!2589439))

(assert (=> b!2145511 m!2589415))

(declare-fun m!2589441 () Bool)

(assert (=> b!2145530 m!2589441))

(declare-fun m!2589443 () Bool)

(assert (=> b!2145495 m!2589443))

(declare-fun m!2589445 () Bool)

(assert (=> b!2145514 m!2589445))

(declare-fun m!2589447 () Bool)

(assert (=> setNonEmpty!16706 m!2589447))

(declare-fun m!2589449 () Bool)

(assert (=> mapNonEmpty!13396 m!2589449))

(assert (=> b!2145537 m!2589415))

(declare-fun m!2589451 () Bool)

(assert (=> b!2145537 m!2589451))

(declare-fun m!2589453 () Bool)

(assert (=> mapNonEmpty!13397 m!2589453))

(declare-fun m!2589455 () Bool)

(assert (=> b!2145516 m!2589455))

(declare-fun m!2589457 () Bool)

(assert (=> start!208124 m!2589457))

(declare-fun m!2589459 () Bool)

(assert (=> start!208124 m!2589459))

(declare-fun m!2589461 () Bool)

(assert (=> start!208124 m!2589461))

(declare-fun m!2589463 () Bool)

(assert (=> start!208124 m!2589463))

(declare-fun m!2589465 () Bool)

(assert (=> b!2145536 m!2589465))

(declare-fun m!2589467 () Bool)

(assert (=> b!2145536 m!2589467))

(declare-fun m!2589469 () Bool)

(assert (=> b!2145533 m!2589469))

(declare-fun m!2589471 () Bool)

(assert (=> b!2145533 m!2589471))

(declare-fun m!2589473 () Bool)

(assert (=> b!2145533 m!2589473))

(assert (=> b!2145533 m!2589473))

(declare-fun m!2589475 () Bool)

(assert (=> b!2145533 m!2589475))

(declare-fun m!2589477 () Bool)

(assert (=> b!2145493 m!2589477))

(declare-fun m!2589479 () Bool)

(assert (=> b!2145519 m!2589479))

(check-sat (not b!2145500) b_and!172855 (not b_next!63983) (not mapNonEmpty!13398) (not b!2145519) (not b!2145507) b_and!172857 (not b_next!63979) b_and!172859 (not b!2145498) (not b!2145504) (not b!2145496) (not b!2145536) (not b!2145537) (not b!2145529) (not b!2145505) (not b!2145495) b_and!172851 (not setNonEmpty!16705) (not b!2145520) (not b!2145494) b_and!172849 (not b!2145512) (not b!2145527) (not b!2145503) (not b!2145535) (not b_next!63975) (not b!2145534) (not b!2145533) (not mapNonEmpty!13396) (not setNonEmpty!16706) (not b!2145515) (not b!2145514) (not b!2145506) (not b!2145530) (not b!2145525) (not b_next!63977) b_and!172853 (not b_next!63973) (not b!2145511) (not b!2145493) (not start!208124) (not mapNonEmpty!13397) (not b_next!63981) (not b!2145516))
(check-sat b_and!172855 (not b_next!63983) b_and!172851 b_and!172849 (not b_next!63975) (not b_next!63977) (not b_next!63981) b_and!172857 (not b_next!63979) b_and!172859 b_and!172853 (not b_next!63973))
