; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207484 () Bool)

(assert start!207484)

(declare-fun b!2128207 () Bool)

(declare-fun b_free!61925 () Bool)

(declare-fun b_next!62629 () Bool)

(assert (=> b!2128207 (= b_free!61925 (not b_next!62629))))

(declare-fun tp!653416 () Bool)

(declare-fun b_and!171505 () Bool)

(assert (=> b!2128207 (= tp!653416 b_and!171505)))

(declare-fun b!2128197 () Bool)

(declare-fun b_free!61927 () Bool)

(declare-fun b_next!62631 () Bool)

(assert (=> b!2128197 (= b_free!61927 (not b_next!62631))))

(declare-fun tp!653395 () Bool)

(declare-fun b_and!171507 () Bool)

(assert (=> b!2128197 (= tp!653395 b_and!171507)))

(declare-fun b!2128216 () Bool)

(declare-fun b_free!61929 () Bool)

(declare-fun b_next!62633 () Bool)

(assert (=> b!2128216 (= b_free!61929 (not b_next!62633))))

(declare-fun tp!653413 () Bool)

(declare-fun b_and!171509 () Bool)

(assert (=> b!2128216 (= tp!653413 b_and!171509)))

(declare-fun b!2128184 () Bool)

(declare-fun b_free!61931 () Bool)

(declare-fun b_next!62635 () Bool)

(assert (=> b!2128184 (= b_free!61931 (not b_next!62635))))

(declare-fun tp!653412 () Bool)

(declare-fun b_and!171511 () Bool)

(assert (=> b!2128184 (= tp!653412 b_and!171511)))

(declare-fun b!2128206 () Bool)

(declare-fun b_free!61933 () Bool)

(declare-fun b_next!62637 () Bool)

(assert (=> b!2128206 (= b_free!61933 (not b_next!62637))))

(declare-fun tp!653401 () Bool)

(declare-fun b_and!171513 () Bool)

(assert (=> b!2128206 (= tp!653401 b_and!171513)))

(declare-fun b!2128199 () Bool)

(declare-fun b_free!61935 () Bool)

(declare-fun b_next!62639 () Bool)

(assert (=> b!2128199 (= b_free!61935 (not b_next!62639))))

(declare-fun tp!653396 () Bool)

(declare-fun b_and!171515 () Bool)

(assert (=> b!2128199 (= tp!653396 b_and!171515)))

(declare-fun b!2128194 () Bool)

(assert (=> b!2128194 true))

(declare-fun bs!444200 () Bool)

(declare-fun b!2128203 () Bool)

(assert (= bs!444200 (and b!2128203 b!2128194)))

(declare-fun lambda!78977 () Int)

(declare-fun lambda!78976 () Int)

(assert (=> bs!444200 (not (= lambda!78977 lambda!78976))))

(assert (=> b!2128203 true))

(declare-fun b!2128178 () Bool)

(declare-fun e!1356787 () Bool)

(declare-fun e!1356760 () Bool)

(assert (=> b!2128178 (= e!1356787 e!1356760)))

(declare-fun res!920376 () Bool)

(assert (=> b!2128178 (=> (not res!920376) (not e!1356760))))

(declare-fun lastNullablePos!123 () Int)

(declare-fun from!1043 () Int)

(declare-fun lt!796074 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2128178 (= res!920376 (and (= totalInputSize!296 lt!796074) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-datatypes ((C!11524 0))(
  ( (C!11525 (val!6748 Int)) )
))
(declare-datatypes ((List!23918 0))(
  ( (Nil!23834) (Cons!23834 (h!29235 C!11524) (t!196446 List!23918)) )
))
(declare-datatypes ((IArray!15659 0))(
  ( (IArray!15660 (innerList!7887 List!23918)) )
))
(declare-datatypes ((Conc!7827 0))(
  ( (Node!7827 (left!18408 Conc!7827) (right!18738 Conc!7827) (csize!15884 Int) (cheight!8038 Int)) (Leaf!11439 (xs!10769 IArray!15659) (csize!15885 Int)) (Empty!7827) )
))
(declare-datatypes ((BalanceConc!15416 0))(
  ( (BalanceConc!15417 (c!340139 Conc!7827)) )
))
(declare-fun totalInput!851 () BalanceConc!15416)

(declare-fun size!18644 (BalanceConc!15416) Int)

(assert (=> b!2128178 (= lt!796074 (size!18644 totalInput!851))))

(declare-fun b!2128180 () Bool)

(declare-fun e!1356759 () Bool)

(declare-fun e!1356775 () Bool)

(declare-datatypes ((Regex!5689 0))(
  ( (ElementMatch!5689 (c!340140 C!11524)) (Concat!9991 (regOne!11890 Regex!5689) (regTwo!11890 Regex!5689)) (EmptyExpr!5689) (Star!5689 (reg!6018 Regex!5689)) (EmptyLang!5689) (Union!5689 (regOne!11891 Regex!5689) (regTwo!11891 Regex!5689)) )
))
(declare-datatypes ((List!23919 0))(
  ( (Nil!23835) (Cons!23835 (h!29236 Regex!5689) (t!196447 List!23919)) )
))
(declare-datatypes ((Context!2518 0))(
  ( (Context!2519 (exprs!1759 List!23919)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3022 0))(
  ( (tuple3!3023 (_1!13743 (InoxSet Context!2518)) (_2!13743 Int) (_3!1981 Int)) )
))
(declare-datatypes ((tuple2!23524 0))(
  ( (tuple2!23525 (_1!13744 tuple3!3022) (_2!13744 Int)) )
))
(declare-datatypes ((List!23920 0))(
  ( (Nil!23836) (Cons!23836 (h!29237 tuple2!23524) (t!196448 List!23920)) )
))
(declare-datatypes ((array!8629 0))(
  ( (array!8630 (arr!3826 (Array (_ BitVec 32) (_ BitVec 64))) (size!18645 (_ BitVec 32))) )
))
(declare-datatypes ((array!8631 0))(
  ( (array!8632 (arr!3827 (Array (_ BitVec 32) List!23920)) (size!18646 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5032 0))(
  ( (LongMapFixedSize!5033 (defaultEntry!2881 Int) (mask!6676 (_ BitVec 32)) (extraKeys!2764 (_ BitVec 32)) (zeroValue!2774 List!23920) (minValue!2774 List!23920) (_size!5083 (_ BitVec 32)) (_keys!2813 array!8629) (_values!2796 array!8631) (_vacant!2577 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9889 0))(
  ( (Cell!9890 (v!28373 LongMapFixedSize!5032)) )
))
(declare-datatypes ((MutLongMap!2516 0))(
  ( (LongMap!2516 (underlying!5227 Cell!9889)) (MutLongMapExt!2515 (__x!15724 Int)) )
))
(declare-fun lt!796070 () MutLongMap!2516)

(get-info :version)

(assert (=> b!2128180 (= e!1356759 (and e!1356775 ((_ is LongMap!2516) lt!796070)))))

(declare-datatypes ((Cell!9891 0))(
  ( (Cell!9892 (v!28374 MutLongMap!2516)) )
))
(declare-datatypes ((Hashable!2430 0))(
  ( (HashableExt!2429 (__x!15725 Int)) )
))
(declare-datatypes ((MutableMap!2430 0))(
  ( (MutableMapExt!2429 (__x!15726 Int)) (HashMap!2430 (underlying!5228 Cell!9891) (hashF!4353 Hashable!2430) (_size!5084 (_ BitVec 32)) (defaultValue!2592 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!626 0))(
  ( (CacheFurthestNullable!627 (cache!2811 MutableMap!2430) (totalInput!2958 BalanceConc!15416)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!626)

(assert (=> b!2128180 (= lt!796070 (v!28374 (underlying!5228 (cache!2811 cacheFurthestNullable!114))))))

(declare-fun b!2128181 () Bool)

(declare-fun e!1356769 () Bool)

(declare-fun e!1356767 () Bool)

(assert (=> b!2128181 (= e!1356769 e!1356767)))

(declare-fun mapIsEmpty!12304 () Bool)

(declare-fun mapRes!12306 () Bool)

(assert (=> mapIsEmpty!12304 mapRes!12306))

(declare-fun e!1356762 () Bool)

(declare-fun tp!653408 () Bool)

(declare-fun setElem!15601 () Context!2518)

(declare-fun setNonEmpty!15600 () Bool)

(declare-fun setRes!15600 () Bool)

(declare-fun inv!31446 (Context!2518) Bool)

(assert (=> setNonEmpty!15600 (= setRes!15600 (and tp!653408 (inv!31446 setElem!15601) e!1356762))))

(declare-datatypes ((StackFrame!76 0))(
  ( (StackFrame!77 (z!5766 (InoxSet Context!2518)) (from!2652 Int) (lastNullablePos!339 Int) (res!920385 Int) (totalInput!2959 BalanceConc!15416)) )
))
(declare-datatypes ((List!23921 0))(
  ( (Nil!23837) (Cons!23837 (h!29238 StackFrame!76) (t!196449 List!23921)) )
))
(declare-fun stack!8 () List!23921)

(declare-fun setRest!15601 () (InoxSet Context!2518))

(assert (=> setNonEmpty!15600 (= (z!5766 (h!29238 stack!8)) ((_ map or) (store ((as const (Array Context!2518 Bool)) false) setElem!15601 true) setRest!15601))))

(declare-fun b!2128182 () Bool)

(declare-fun e!1356785 () Bool)

(declare-datatypes ((tuple2!23526 0))(
  ( (tuple2!23527 (_1!13745 Context!2518) (_2!13745 C!11524)) )
))
(declare-datatypes ((tuple2!23528 0))(
  ( (tuple2!23529 (_1!13746 tuple2!23526) (_2!13746 (InoxSet Context!2518))) )
))
(declare-datatypes ((List!23922 0))(
  ( (Nil!23838) (Cons!23838 (h!29239 tuple2!23528) (t!196450 List!23922)) )
))
(declare-datatypes ((array!8633 0))(
  ( (array!8634 (arr!3828 (Array (_ BitVec 32) List!23922)) (size!18647 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5034 0))(
  ( (LongMapFixedSize!5035 (defaultEntry!2882 Int) (mask!6677 (_ BitVec 32)) (extraKeys!2765 (_ BitVec 32)) (zeroValue!2775 List!23922) (minValue!2775 List!23922) (_size!5085 (_ BitVec 32)) (_keys!2814 array!8629) (_values!2797 array!8633) (_vacant!2578 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9893 0))(
  ( (Cell!9894 (v!28375 LongMapFixedSize!5034)) )
))
(declare-datatypes ((MutLongMap!2517 0))(
  ( (LongMap!2517 (underlying!5229 Cell!9893)) (MutLongMapExt!2516 (__x!15727 Int)) )
))
(declare-fun lt!796072 () MutLongMap!2517)

(assert (=> b!2128182 (= e!1356785 (and e!1356769 ((_ is LongMap!2517) lt!796072)))))

(declare-datatypes ((Cell!9895 0))(
  ( (Cell!9896 (v!28376 MutLongMap!2517)) )
))
(declare-datatypes ((Hashable!2431 0))(
  ( (HashableExt!2430 (__x!15728 Int)) )
))
(declare-datatypes ((MutableMap!2431 0))(
  ( (MutableMapExt!2430 (__x!15729 Int)) (HashMap!2431 (underlying!5230 Cell!9895) (hashF!4354 Hashable!2431) (_size!5086 (_ BitVec 32)) (defaultValue!2593 Int)) )
))
(declare-datatypes ((CacheUp!1686 0))(
  ( (CacheUp!1687 (cache!2812 MutableMap!2431)) )
))
(declare-fun cacheUp!979 () CacheUp!1686)

(assert (=> b!2128182 (= lt!796072 (v!28376 (underlying!5230 (cache!2812 cacheUp!979))))))

(declare-fun setIsEmpty!15600 () Bool)

(assert (=> setIsEmpty!15600 setRes!15600))

(declare-fun mapNonEmpty!12304 () Bool)

(declare-fun mapRes!12305 () Bool)

(declare-fun tp!653402 () Bool)

(declare-fun tp!653404 () Bool)

(assert (=> mapNonEmpty!12304 (= mapRes!12305 (and tp!653402 tp!653404))))

(declare-fun mapValue!12305 () List!23922)

(declare-fun mapRest!12304 () (Array (_ BitVec 32) List!23922))

(declare-fun mapKey!12306 () (_ BitVec 32))

(assert (=> mapNonEmpty!12304 (= (arr!3828 (_values!2797 (v!28375 (underlying!5229 (v!28376 (underlying!5230 (cache!2812 cacheUp!979))))))) (store mapRest!12304 mapKey!12306 mapValue!12305))))

(declare-fun b!2128183 () Bool)

(declare-fun res!920375 () Bool)

(assert (=> b!2128183 (=> (not res!920375) (not e!1356760))))

(declare-fun e!1356784 () Bool)

(assert (=> b!2128183 (= res!920375 e!1356784)))

(declare-fun res!920383 () Bool)

(assert (=> b!2128183 (=> res!920383 e!1356784)))

(declare-fun z!3839 () (InoxSet Context!2518))

(declare-fun nullableZipper!80 ((InoxSet Context!2518)) Bool)

(assert (=> b!2128183 (= res!920383 (not (nullableZipper!80 z!3839)))))

(declare-fun e!1356766 () Bool)

(declare-fun e!1356771 () Bool)

(assert (=> b!2128184 (= e!1356766 (and e!1356771 tp!653412))))

(declare-fun mapNonEmpty!12305 () Bool)

(declare-fun mapRes!12304 () Bool)

(declare-fun tp!653411 () Bool)

(declare-fun tp!653399 () Bool)

(assert (=> mapNonEmpty!12305 (= mapRes!12304 (and tp!653411 tp!653399))))

(declare-datatypes ((tuple3!3024 0))(
  ( (tuple3!3025 (_1!13747 Regex!5689) (_2!13747 Context!2518) (_3!1982 C!11524)) )
))
(declare-datatypes ((tuple2!23530 0))(
  ( (tuple2!23531 (_1!13748 tuple3!3024) (_2!13748 (InoxSet Context!2518))) )
))
(declare-datatypes ((List!23923 0))(
  ( (Nil!23839) (Cons!23839 (h!29240 tuple2!23530) (t!196451 List!23923)) )
))
(declare-datatypes ((Hashable!2432 0))(
  ( (HashableExt!2431 (__x!15730 Int)) )
))
(declare-datatypes ((array!8635 0))(
  ( (array!8636 (arr!3829 (Array (_ BitVec 32) List!23923)) (size!18648 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5036 0))(
  ( (LongMapFixedSize!5037 (defaultEntry!2883 Int) (mask!6678 (_ BitVec 32)) (extraKeys!2766 (_ BitVec 32)) (zeroValue!2776 List!23923) (minValue!2776 List!23923) (_size!5087 (_ BitVec 32)) (_keys!2815 array!8629) (_values!2798 array!8635) (_vacant!2579 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9897 0))(
  ( (Cell!9898 (v!28377 LongMapFixedSize!5036)) )
))
(declare-datatypes ((MutLongMap!2518 0))(
  ( (LongMap!2518 (underlying!5231 Cell!9897)) (MutLongMapExt!2517 (__x!15731 Int)) )
))
(declare-datatypes ((Cell!9899 0))(
  ( (Cell!9900 (v!28378 MutLongMap!2518)) )
))
(declare-datatypes ((MutableMap!2432 0))(
  ( (MutableMapExt!2431 (__x!15732 Int)) (HashMap!2432 (underlying!5232 Cell!9899) (hashF!4355 Hashable!2432) (_size!5088 (_ BitVec 32)) (defaultValue!2594 Int)) )
))
(declare-datatypes ((CacheDown!1672 0))(
  ( (CacheDown!1673 (cache!2813 MutableMap!2432)) )
))
(declare-fun cacheDown!1098 () CacheDown!1672)

(declare-fun mapKey!12305 () (_ BitVec 32))

(declare-fun mapValue!12304 () List!23923)

(declare-fun mapRest!12305 () (Array (_ BitVec 32) List!23923))

(assert (=> mapNonEmpty!12305 (= (arr!3829 (_values!2798 (v!28377 (underlying!5231 (v!28378 (underlying!5232 (cache!2813 cacheDown!1098))))))) (store mapRest!12305 mapKey!12305 mapValue!12304))))

(declare-fun b!2128185 () Bool)

(declare-fun e!1356788 () Bool)

(declare-fun lt!796071 () MutLongMap!2518)

(assert (=> b!2128185 (= e!1356771 (and e!1356788 ((_ is LongMap!2518) lt!796071)))))

(assert (=> b!2128185 (= lt!796071 (v!28378 (underlying!5232 (cache!2813 cacheDown!1098))))))

(declare-fun b!2128186 () Bool)

(declare-fun e!1356763 () Bool)

(declare-fun e!1356790 () Bool)

(assert (=> b!2128186 (= e!1356763 e!1356790)))

(declare-fun b!2128187 () Bool)

(declare-fun e!1356772 () Bool)

(assert (=> b!2128187 (= e!1356772 e!1356766)))

(declare-fun b!2128188 () Bool)

(declare-fun e!1356792 () Bool)

(assert (=> b!2128188 (= e!1356775 e!1356792)))

(declare-fun b!2128189 () Bool)

(declare-fun e!1356779 () Bool)

(declare-fun tp!653407 () Bool)

(declare-fun inv!31447 (Conc!7827) Bool)

(assert (=> b!2128189 (= e!1356779 (and (inv!31447 (c!340139 (totalInput!2958 cacheFurthestNullable!114))) tp!653407))))

(declare-fun b!2128190 () Bool)

(assert (=> b!2128190 (= e!1356784 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2128179 () Bool)

(declare-fun tp!653400 () Bool)

(assert (=> b!2128179 (= e!1356762 tp!653400)))

(declare-fun res!920381 () Bool)

(assert (=> start!207484 (=> (not res!920381) (not e!1356787))))

(assert (=> start!207484 (= res!920381 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207484 e!1356787))

(declare-fun e!1356777 () Bool)

(declare-fun inv!31448 (CacheFurthestNullable!626) Bool)

(assert (=> start!207484 (and (inv!31448 cacheFurthestNullable!114) e!1356777)))

(assert (=> start!207484 true))

(declare-fun inv!31449 (CacheDown!1672) Bool)

(assert (=> start!207484 (and (inv!31449 cacheDown!1098) e!1356772)))

(declare-fun inv!31450 (CacheUp!1686) Bool)

(assert (=> start!207484 (and (inv!31450 cacheUp!979) e!1356763)))

(declare-fun condSetEmpty!15600 () Bool)

(assert (=> start!207484 (= condSetEmpty!15600 (= z!3839 ((as const (Array Context!2518 Bool)) false)))))

(declare-fun setRes!15601 () Bool)

(assert (=> start!207484 setRes!15601))

(declare-fun e!1356781 () Bool)

(declare-fun inv!31451 (BalanceConc!15416) Bool)

(assert (=> start!207484 (and (inv!31451 totalInput!851) e!1356781)))

(declare-fun e!1356758 () Bool)

(assert (=> start!207484 e!1356758))

(declare-fun b!2128191 () Bool)

(declare-fun e!1356786 () Bool)

(assert (=> b!2128191 (= e!1356788 e!1356786)))

(declare-fun b!2128192 () Bool)

(declare-fun e!1356774 () Bool)

(declare-fun tp!653406 () Bool)

(assert (=> b!2128192 (= e!1356774 tp!653406)))

(declare-fun b!2128193 () Bool)

(declare-fun e!1356770 () Bool)

(assert (=> b!2128193 (= e!1356786 e!1356770)))

(declare-fun e!1356793 () Bool)

(assert (=> b!2128194 (= e!1356760 e!1356793)))

(declare-fun res!920377 () Bool)

(assert (=> b!2128194 (=> (not res!920377) (not e!1356793))))

(declare-fun forall!4889 (List!23921 Int) Bool)

(assert (=> b!2128194 (= res!920377 (forall!4889 stack!8 lambda!78976))))

(declare-fun lt!796073 () Int)

(declare-fun furthestNullablePosition!18 ((InoxSet Context!2518) Int BalanceConc!15416 Int Int) Int)

(assert (=> b!2128194 (= lt!796073 (furthestNullablePosition!18 z!3839 from!1043 totalInput!851 lt!796074 lastNullablePos!123))))

(declare-fun b!2128195 () Bool)

(declare-fun res!920378 () Bool)

(assert (=> b!2128195 (=> (not res!920378) (not e!1356760))))

(declare-fun valid!1983 (CacheFurthestNullable!626) Bool)

(assert (=> b!2128195 (= res!920378 (valid!1983 cacheFurthestNullable!114))))

(declare-fun mapIsEmpty!12305 () Bool)

(assert (=> mapIsEmpty!12305 mapRes!12305))

(declare-fun mapNonEmpty!12306 () Bool)

(declare-fun tp!653398 () Bool)

(declare-fun tp!653421 () Bool)

(assert (=> mapNonEmpty!12306 (= mapRes!12306 (and tp!653398 tp!653421))))

(declare-fun mapValue!12306 () List!23920)

(declare-fun mapKey!12304 () (_ BitVec 32))

(declare-fun mapRest!12306 () (Array (_ BitVec 32) List!23920))

(assert (=> mapNonEmpty!12306 (= (arr!3827 (_values!2796 (v!28373 (underlying!5227 (v!28374 (underlying!5228 (cache!2811 cacheFurthestNullable!114))))))) (store mapRest!12306 mapKey!12304 mapValue!12306))))

(declare-fun b!2128196 () Bool)

(declare-fun res!920384 () Bool)

(assert (=> b!2128196 (=> (not res!920384) (not e!1356760))))

(declare-fun valid!1984 (CacheUp!1686) Bool)

(assert (=> b!2128196 (= res!920384 (valid!1984 cacheUp!979))))

(declare-fun e!1356776 () Bool)

(assert (=> b!2128197 (= e!1356776 (and e!1356759 tp!653395))))

(declare-fun b!2128198 () Bool)

(declare-fun e!1356782 () Bool)

(assert (=> b!2128198 (= e!1356793 (not e!1356782))))

(declare-fun res!920380 () Bool)

(assert (=> b!2128198 (=> res!920380 e!1356782)))

(declare-datatypes ((Option!4877 0))(
  ( (None!4876) (Some!4876 (v!28379 Int)) )
))
(declare-fun get!7331 (CacheFurthestNullable!626 (InoxSet Context!2518) Int Int) Option!4877)

(assert (=> b!2128198 (= res!920380 (not ((_ is Some!4876) (get!7331 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))))

(assert (=> b!2128198 (forall!4889 stack!8 lambda!78976)))

(assert (=> b!2128199 (= e!1356790 (and e!1356785 tp!653396))))

(declare-fun setNonEmpty!15601 () Bool)

(declare-fun tp!653394 () Bool)

(declare-fun setElem!15600 () Context!2518)

(assert (=> setNonEmpty!15601 (= setRes!15601 (and tp!653394 (inv!31446 setElem!15600) e!1356774))))

(declare-fun setRest!15600 () (InoxSet Context!2518))

(assert (=> setNonEmpty!15601 (= z!3839 ((_ map or) (store ((as const (Array Context!2518 Bool)) false) setElem!15600 true) setRest!15600))))

(declare-fun b!2128200 () Bool)

(declare-fun e!1356791 () Bool)

(assert (=> b!2128200 (= e!1356792 e!1356791)))

(declare-fun e!1356761 () Bool)

(declare-fun e!1356764 () Bool)

(declare-fun b!2128201 () Bool)

(assert (=> b!2128201 (= e!1356761 (and setRes!15600 (inv!31451 (totalInput!2959 (h!29238 stack!8))) e!1356764))))

(declare-fun condSetEmpty!15601 () Bool)

(assert (=> b!2128201 (= condSetEmpty!15601 (= (z!5766 (h!29238 stack!8)) ((as const (Array Context!2518 Bool)) false)))))

(declare-fun mapIsEmpty!12306 () Bool)

(assert (=> mapIsEmpty!12306 mapRes!12304))

(declare-fun b!2128202 () Bool)

(assert (=> b!2128202 (= e!1356782 (<= from!1043 lt!796074))))

(declare-fun res!920382 () Bool)

(assert (=> b!2128203 (=> (not res!920382) (not e!1356793))))

(assert (=> b!2128203 (= res!920382 (forall!4889 stack!8 lambda!78977))))

(declare-fun b!2128204 () Bool)

(declare-fun tp!653418 () Bool)

(assert (=> b!2128204 (= e!1356764 (and (inv!31447 (c!340139 (totalInput!2959 (h!29238 stack!8)))) tp!653418))))

(declare-fun b!2128205 () Bool)

(declare-fun e!1356789 () Bool)

(declare-fun tp!653410 () Bool)

(assert (=> b!2128205 (= e!1356789 (and tp!653410 mapRes!12304))))

(declare-fun condMapEmpty!12304 () Bool)

(declare-fun mapDefault!12305 () List!23923)

(assert (=> b!2128205 (= condMapEmpty!12304 (= (arr!3829 (_values!2798 (v!28377 (underlying!5231 (v!28378 (underlying!5232 (cache!2813 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!23923)) mapDefault!12305)))))

(declare-fun tp!653405 () Bool)

(declare-fun e!1356783 () Bool)

(declare-fun tp!653403 () Bool)

(declare-fun array_inv!2736 (array!8629) Bool)

(declare-fun array_inv!2737 (array!8631) Bool)

(assert (=> b!2128206 (= e!1356791 (and tp!653401 tp!653405 tp!653403 (array_inv!2736 (_keys!2813 (v!28373 (underlying!5227 (v!28374 (underlying!5228 (cache!2811 cacheFurthestNullable!114))))))) (array_inv!2737 (_values!2796 (v!28373 (underlying!5227 (v!28374 (underlying!5228 (cache!2811 cacheFurthestNullable!114))))))) e!1356783))))

(declare-fun e!1356768 () Bool)

(declare-fun tp!653422 () Bool)

(declare-fun e!1356778 () Bool)

(declare-fun tp!653415 () Bool)

(declare-fun array_inv!2738 (array!8633) Bool)

(assert (=> b!2128207 (= e!1356778 (and tp!653416 tp!653415 tp!653422 (array_inv!2736 (_keys!2814 (v!28375 (underlying!5229 (v!28376 (underlying!5230 (cache!2812 cacheUp!979))))))) (array_inv!2738 (_values!2797 (v!28375 (underlying!5229 (v!28376 (underlying!5230 (cache!2812 cacheUp!979))))))) e!1356768))))

(declare-fun b!2128208 () Bool)

(declare-fun tp!653414 () Bool)

(assert (=> b!2128208 (= e!1356768 (and tp!653414 mapRes!12305))))

(declare-fun condMapEmpty!12306 () Bool)

(declare-fun mapDefault!12304 () List!23922)

(assert (=> b!2128208 (= condMapEmpty!12306 (= (arr!3828 (_values!2797 (v!28375 (underlying!5229 (v!28376 (underlying!5230 (cache!2812 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!23922)) mapDefault!12304)))))

(declare-fun b!2128209 () Bool)

(declare-fun tp!653420 () Bool)

(assert (=> b!2128209 (= e!1356783 (and tp!653420 mapRes!12306))))

(declare-fun condMapEmpty!12305 () Bool)

(declare-fun mapDefault!12306 () List!23920)

(assert (=> b!2128209 (= condMapEmpty!12305 (= (arr!3827 (_values!2796 (v!28373 (underlying!5227 (v!28374 (underlying!5228 (cache!2811 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!23920)) mapDefault!12306)))))

(declare-fun setIsEmpty!15601 () Bool)

(assert (=> setIsEmpty!15601 setRes!15601))

(declare-fun b!2128210 () Bool)

(assert (=> b!2128210 (= e!1356777 (and e!1356776 (inv!31451 (totalInput!2958 cacheFurthestNullable!114)) e!1356779))))

(declare-fun b!2128211 () Bool)

(declare-fun res!920374 () Bool)

(assert (=> b!2128211 (=> (not res!920374) (not e!1356760))))

(assert (=> b!2128211 (= res!920374 (= (totalInput!2958 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2128212 () Bool)

(declare-fun res!920379 () Bool)

(assert (=> b!2128212 (=> (not res!920379) (not e!1356760))))

(declare-fun valid!1985 (CacheDown!1672) Bool)

(assert (=> b!2128212 (= res!920379 (valid!1985 cacheDown!1098))))

(declare-fun b!2128213 () Bool)

(declare-fun tp!653417 () Bool)

(assert (=> b!2128213 (= e!1356781 (and (inv!31447 (c!340139 totalInput!851)) tp!653417))))

(declare-fun b!2128214 () Bool)

(assert (=> b!2128214 (= e!1356767 e!1356778)))

(declare-fun tp!653419 () Bool)

(declare-fun b!2128215 () Bool)

(declare-fun inv!31452 (StackFrame!76) Bool)

(assert (=> b!2128215 (= e!1356758 (and (inv!31452 (h!29238 stack!8)) e!1356761 tp!653419))))

(declare-fun tp!653397 () Bool)

(declare-fun tp!653409 () Bool)

(declare-fun array_inv!2739 (array!8635) Bool)

(assert (=> b!2128216 (= e!1356770 (and tp!653413 tp!653409 tp!653397 (array_inv!2736 (_keys!2815 (v!28377 (underlying!5231 (v!28378 (underlying!5232 (cache!2813 cacheDown!1098))))))) (array_inv!2739 (_values!2798 (v!28377 (underlying!5231 (v!28378 (underlying!5232 (cache!2813 cacheDown!1098))))))) e!1356789))))

(assert (= (and start!207484 res!920381) b!2128178))

(assert (= (and b!2128178 res!920376) b!2128183))

(assert (= (and b!2128183 (not res!920383)) b!2128190))

(assert (= (and b!2128183 res!920375) b!2128196))

(assert (= (and b!2128196 res!920384) b!2128212))

(assert (= (and b!2128212 res!920379) b!2128195))

(assert (= (and b!2128195 res!920378) b!2128211))

(assert (= (and b!2128211 res!920374) b!2128194))

(assert (= (and b!2128194 res!920377) b!2128203))

(assert (= (and b!2128203 res!920382) b!2128198))

(assert (= (and b!2128198 (not res!920380)) b!2128202))

(assert (= (and b!2128209 condMapEmpty!12305) mapIsEmpty!12304))

(assert (= (and b!2128209 (not condMapEmpty!12305)) mapNonEmpty!12306))

(assert (= b!2128206 b!2128209))

(assert (= b!2128200 b!2128206))

(assert (= b!2128188 b!2128200))

(assert (= (and b!2128180 ((_ is LongMap!2516) (v!28374 (underlying!5228 (cache!2811 cacheFurthestNullable!114))))) b!2128188))

(assert (= b!2128197 b!2128180))

(assert (= (and b!2128210 ((_ is HashMap!2430) (cache!2811 cacheFurthestNullable!114))) b!2128197))

(assert (= b!2128210 b!2128189))

(assert (= start!207484 b!2128210))

(assert (= (and b!2128205 condMapEmpty!12304) mapIsEmpty!12306))

(assert (= (and b!2128205 (not condMapEmpty!12304)) mapNonEmpty!12305))

(assert (= b!2128216 b!2128205))

(assert (= b!2128193 b!2128216))

(assert (= b!2128191 b!2128193))

(assert (= (and b!2128185 ((_ is LongMap!2518) (v!28378 (underlying!5232 (cache!2813 cacheDown!1098))))) b!2128191))

(assert (= b!2128184 b!2128185))

(assert (= (and b!2128187 ((_ is HashMap!2432) (cache!2813 cacheDown!1098))) b!2128184))

(assert (= start!207484 b!2128187))

(assert (= (and b!2128208 condMapEmpty!12306) mapIsEmpty!12305))

(assert (= (and b!2128208 (not condMapEmpty!12306)) mapNonEmpty!12304))

(assert (= b!2128207 b!2128208))

(assert (= b!2128214 b!2128207))

(assert (= b!2128181 b!2128214))

(assert (= (and b!2128182 ((_ is LongMap!2517) (v!28376 (underlying!5230 (cache!2812 cacheUp!979))))) b!2128181))

(assert (= b!2128199 b!2128182))

(assert (= (and b!2128186 ((_ is HashMap!2431) (cache!2812 cacheUp!979))) b!2128199))

(assert (= start!207484 b!2128186))

(assert (= (and start!207484 condSetEmpty!15600) setIsEmpty!15601))

(assert (= (and start!207484 (not condSetEmpty!15600)) setNonEmpty!15601))

(assert (= setNonEmpty!15601 b!2128192))

(assert (= start!207484 b!2128213))

(assert (= (and b!2128201 condSetEmpty!15601) setIsEmpty!15600))

(assert (= (and b!2128201 (not condSetEmpty!15601)) setNonEmpty!15600))

(assert (= setNonEmpty!15600 b!2128179))

(assert (= b!2128201 b!2128204))

(assert (= b!2128215 b!2128201))

(assert (= (and start!207484 ((_ is Cons!23837) stack!8)) b!2128215))

(declare-fun m!2579472 () Bool)

(assert (=> b!2128207 m!2579472))

(declare-fun m!2579474 () Bool)

(assert (=> b!2128207 m!2579474))

(declare-fun m!2579476 () Bool)

(assert (=> b!2128215 m!2579476))

(declare-fun m!2579478 () Bool)

(assert (=> b!2128201 m!2579478))

(declare-fun m!2579480 () Bool)

(assert (=> mapNonEmpty!12304 m!2579480))

(declare-fun m!2579482 () Bool)

(assert (=> mapNonEmpty!12306 m!2579482))

(declare-fun m!2579484 () Bool)

(assert (=> setNonEmpty!15600 m!2579484))

(declare-fun m!2579486 () Bool)

(assert (=> b!2128210 m!2579486))

(declare-fun m!2579488 () Bool)

(assert (=> b!2128195 m!2579488))

(declare-fun m!2579490 () Bool)

(assert (=> b!2128216 m!2579490))

(declare-fun m!2579492 () Bool)

(assert (=> b!2128216 m!2579492))

(declare-fun m!2579494 () Bool)

(assert (=> b!2128198 m!2579494))

(declare-fun m!2579496 () Bool)

(assert (=> b!2128198 m!2579496))

(declare-fun m!2579498 () Bool)

(assert (=> b!2128183 m!2579498))

(declare-fun m!2579500 () Bool)

(assert (=> b!2128189 m!2579500))

(declare-fun m!2579502 () Bool)

(assert (=> b!2128212 m!2579502))

(declare-fun m!2579504 () Bool)

(assert (=> b!2128204 m!2579504))

(declare-fun m!2579506 () Bool)

(assert (=> b!2128196 m!2579506))

(declare-fun m!2579508 () Bool)

(assert (=> start!207484 m!2579508))

(declare-fun m!2579510 () Bool)

(assert (=> start!207484 m!2579510))

(declare-fun m!2579512 () Bool)

(assert (=> start!207484 m!2579512))

(declare-fun m!2579514 () Bool)

(assert (=> start!207484 m!2579514))

(declare-fun m!2579516 () Bool)

(assert (=> b!2128206 m!2579516))

(declare-fun m!2579518 () Bool)

(assert (=> b!2128206 m!2579518))

(declare-fun m!2579520 () Bool)

(assert (=> setNonEmpty!15601 m!2579520))

(assert (=> b!2128194 m!2579496))

(declare-fun m!2579522 () Bool)

(assert (=> b!2128194 m!2579522))

(declare-fun m!2579524 () Bool)

(assert (=> b!2128213 m!2579524))

(declare-fun m!2579526 () Bool)

(assert (=> b!2128178 m!2579526))

(declare-fun m!2579528 () Bool)

(assert (=> mapNonEmpty!12305 m!2579528))

(declare-fun m!2579530 () Bool)

(assert (=> b!2128203 m!2579530))

(check-sat (not b!2128212) (not b_next!62637) (not b!2128192) (not b_next!62639) (not b!2128208) (not b!2128207) (not b!2128206) (not b!2128179) (not b!2128198) b_and!171513 (not b!2128216) (not b!2128194) (not b!2128196) (not b!2128195) (not mapNonEmpty!12306) (not b_next!62635) (not setNonEmpty!15601) (not b!2128178) b_and!171505 (not b!2128210) (not b!2128209) (not b!2128213) (not b_next!62633) (not b!2128183) (not setNonEmpty!15600) (not b_next!62629) (not b_next!62631) (not b!2128189) b_and!171511 (not b!2128204) (not b!2128201) (not b!2128205) (not b!2128203) b_and!171507 b_and!171509 (not mapNonEmpty!12305) (not start!207484) (not mapNonEmpty!12304) b_and!171515 (not b!2128215))
(check-sat (not b_next!62637) (not b_next!62639) (not b_next!62635) b_and!171505 (not b_next!62633) b_and!171513 b_and!171511 b_and!171515 (not b_next!62629) (not b_next!62631) b_and!171507 b_and!171509)
