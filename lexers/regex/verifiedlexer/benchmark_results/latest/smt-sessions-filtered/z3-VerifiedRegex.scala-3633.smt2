; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207572 () Bool)

(assert start!207572)

(declare-fun b!2133856 () Bool)

(declare-fun b_free!62453 () Bool)

(declare-fun b_next!63157 () Bool)

(assert (=> b!2133856 (= b_free!62453 (not b_next!63157))))

(declare-fun tp!657244 () Bool)

(declare-fun b_and!172033 () Bool)

(assert (=> b!2133856 (= tp!657244 b_and!172033)))

(declare-fun b!2133854 () Bool)

(declare-fun b_free!62455 () Bool)

(declare-fun b_next!63159 () Bool)

(assert (=> b!2133854 (= b_free!62455 (not b_next!63159))))

(declare-fun tp!657223 () Bool)

(declare-fun b_and!172035 () Bool)

(assert (=> b!2133854 (= tp!657223 b_and!172035)))

(declare-fun b!2133877 () Bool)

(declare-fun b_free!62457 () Bool)

(declare-fun b_next!63161 () Bool)

(assert (=> b!2133877 (= b_free!62457 (not b_next!63161))))

(declare-fun tp!657222 () Bool)

(declare-fun b_and!172037 () Bool)

(assert (=> b!2133877 (= tp!657222 b_and!172037)))

(declare-fun b!2133858 () Bool)

(declare-fun b_free!62459 () Bool)

(declare-fun b_next!63163 () Bool)

(assert (=> b!2133858 (= b_free!62459 (not b_next!63163))))

(declare-fun tp!657238 () Bool)

(declare-fun b_and!172039 () Bool)

(assert (=> b!2133858 (= tp!657238 b_and!172039)))

(declare-fun b!2133874 () Bool)

(declare-fun b_free!62461 () Bool)

(declare-fun b_next!63165 () Bool)

(assert (=> b!2133874 (= b_free!62461 (not b_next!63165))))

(declare-fun tp!657243 () Bool)

(declare-fun b_and!172041 () Bool)

(assert (=> b!2133874 (= tp!657243 b_and!172041)))

(declare-fun b!2133845 () Bool)

(declare-fun b_free!62463 () Bool)

(declare-fun b_next!63167 () Bool)

(assert (=> b!2133845 (= b_free!62463 (not b_next!63167))))

(declare-fun tp!657225 () Bool)

(declare-fun b_and!172043 () Bool)

(assert (=> b!2133845 (= tp!657225 b_and!172043)))

(declare-fun b!2133850 () Bool)

(assert (=> b!2133850 true))

(declare-fun bs!444292 () Bool)

(declare-fun b!2133867 () Bool)

(assert (= bs!444292 (and b!2133867 b!2133850)))

(declare-fun lambda!79355 () Int)

(declare-fun lambda!79354 () Int)

(assert (=> bs!444292 (not (= lambda!79355 lambda!79354))))

(assert (=> b!2133867 true))

(declare-fun tp!657248 () Bool)

(declare-datatypes ((C!11612 0))(
  ( (C!11613 (val!6792 Int)) )
))
(declare-datatypes ((Regex!5733 0))(
  ( (ElementMatch!5733 (c!340275 C!11612)) (Concat!10035 (regOne!11978 Regex!5733) (regTwo!11978 Regex!5733)) (EmptyExpr!5733) (Star!5733 (reg!6062 Regex!5733)) (EmptyLang!5733) (Union!5733 (regOne!11979 Regex!5733) (regTwo!11979 Regex!5733)) )
))
(declare-datatypes ((List!24170 0))(
  ( (Nil!24086) (Cons!24086 (h!29487 Regex!5733) (t!196698 List!24170)) )
))
(declare-datatypes ((Context!2606 0))(
  ( (Context!2607 (exprs!1803 List!24170)) )
))
(declare-datatypes ((List!24171 0))(
  ( (Nil!24087) (Cons!24087 (h!29488 C!11612) (t!196699 List!24171)) )
))
(declare-datatypes ((IArray!15747 0))(
  ( (IArray!15748 (innerList!7931 List!24171)) )
))
(declare-datatypes ((Conc!7871 0))(
  ( (Node!7871 (left!18562 Conc!7871) (right!18892 Conc!7871) (csize!15972 Int) (cheight!8082 Int)) (Leaf!11505 (xs!10813 IArray!15747) (csize!15973 Int)) (Empty!7871) )
))
(declare-datatypes ((BalanceConc!15504 0))(
  ( (BalanceConc!15505 (c!340276 Conc!7871)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!158 0))(
  ( (StackFrame!159 (z!5807 (InoxSet Context!2606)) (from!2693 Int) (lastNullablePos!380 Int) (res!922124 Int) (totalInput!3042 BalanceConc!15504)) )
))
(declare-datatypes ((List!24172 0))(
  ( (Nil!24088) (Cons!24088 (h!29489 StackFrame!158) (t!196700 List!24172)) )
))
(declare-fun stack!8 () List!24172)

(declare-fun b!2133839 () Bool)

(declare-fun e!1361657 () Bool)

(declare-fun e!1361641 () Bool)

(declare-fun inv!31742 (StackFrame!158) Bool)

(assert (=> b!2133839 (= e!1361657 (and (inv!31742 (h!29489 stack!8)) e!1361641 tp!657248))))

(declare-fun mapNonEmpty!12700 () Bool)

(declare-fun mapRes!12701 () Bool)

(declare-fun tp!657241 () Bool)

(declare-fun tp!657233 () Bool)

(assert (=> mapNonEmpty!12700 (= mapRes!12701 (and tp!657241 tp!657233))))

(declare-fun mapKey!12702 () (_ BitVec 32))

(declare-datatypes ((tuple3!3212 0))(
  ( (tuple3!3213 (_1!14002 (InoxSet Context!2606)) (_2!14002 Int) (_3!2076 Int)) )
))
(declare-datatypes ((tuple2!23852 0))(
  ( (tuple2!23853 (_1!14003 tuple3!3212) (_2!14003 Int)) )
))
(declare-datatypes ((List!24173 0))(
  ( (Nil!24089) (Cons!24089 (h!29490 tuple2!23852) (t!196701 List!24173)) )
))
(declare-datatypes ((array!8963 0))(
  ( (array!8964 (arr!3993 (Array (_ BitVec 32) (_ BitVec 64))) (size!18838 (_ BitVec 32))) )
))
(declare-datatypes ((array!8965 0))(
  ( (array!8966 (arr!3994 (Array (_ BitVec 32) List!24173)) (size!18839 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5278 0))(
  ( (LongMapFixedSize!5279 (defaultEntry!3004 Int) (mask!6821 (_ BitVec 32)) (extraKeys!2887 (_ BitVec 32)) (zeroValue!2897 List!24173) (minValue!2897 List!24173) (_size!5329 (_ BitVec 32)) (_keys!2936 array!8963) (_values!2919 array!8965) (_vacant!2700 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10381 0))(
  ( (Cell!10382 (v!28646 LongMapFixedSize!5278)) )
))
(declare-datatypes ((MutLongMap!2639 0))(
  ( (LongMap!2639 (underlying!5473 Cell!10381)) (MutLongMapExt!2638 (__x!16093 Int)) )
))
(declare-datatypes ((Cell!10383 0))(
  ( (Cell!10384 (v!28647 MutLongMap!2639)) )
))
(declare-datatypes ((Hashable!2553 0))(
  ( (HashableExt!2552 (__x!16094 Int)) )
))
(declare-datatypes ((MutableMap!2553 0))(
  ( (MutableMapExt!2552 (__x!16095 Int)) (HashMap!2553 (underlying!5474 Cell!10383) (hashF!4476 Hashable!2553) (_size!5330 (_ BitVec 32)) (defaultValue!2715 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!712 0))(
  ( (CacheFurthestNullable!713 (cache!2934 MutableMap!2553) (totalInput!3043 BalanceConc!15504)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!712)

(declare-fun mapRest!12701 () (Array (_ BitVec 32) List!24173))

(declare-fun mapValue!12701 () List!24173)

(assert (=> mapNonEmpty!12700 (= (arr!3994 (_values!2919 (v!28646 (underlying!5473 (v!28647 (underlying!5474 (cache!2934 cacheFurthestNullable!114))))))) (store mapRest!12701 mapKey!12702 mapValue!12701))))

(declare-fun b!2133840 () Bool)

(declare-fun e!1361656 () Bool)

(declare-fun e!1361644 () Bool)

(assert (=> b!2133840 (= e!1361656 e!1361644)))

(declare-fun b!2133841 () Bool)

(declare-fun res!922112 () Bool)

(declare-fun e!1361646 () Bool)

(assert (=> b!2133841 (=> (not res!922112) (not e!1361646))))

(declare-datatypes ((tuple3!3214 0))(
  ( (tuple3!3215 (_1!14004 Regex!5733) (_2!14004 Context!2606) (_3!2077 C!11612)) )
))
(declare-datatypes ((tuple2!23854 0))(
  ( (tuple2!23855 (_1!14005 tuple3!3214) (_2!14005 (InoxSet Context!2606))) )
))
(declare-datatypes ((List!24174 0))(
  ( (Nil!24090) (Cons!24090 (h!29491 tuple2!23854) (t!196702 List!24174)) )
))
(declare-datatypes ((Hashable!2554 0))(
  ( (HashableExt!2553 (__x!16096 Int)) )
))
(declare-datatypes ((array!8967 0))(
  ( (array!8968 (arr!3995 (Array (_ BitVec 32) List!24174)) (size!18840 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5280 0))(
  ( (LongMapFixedSize!5281 (defaultEntry!3005 Int) (mask!6822 (_ BitVec 32)) (extraKeys!2888 (_ BitVec 32)) (zeroValue!2898 List!24174) (minValue!2898 List!24174) (_size!5331 (_ BitVec 32)) (_keys!2937 array!8963) (_values!2920 array!8967) (_vacant!2701 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10385 0))(
  ( (Cell!10386 (v!28648 LongMapFixedSize!5280)) )
))
(declare-datatypes ((MutLongMap!2640 0))(
  ( (LongMap!2640 (underlying!5475 Cell!10385)) (MutLongMapExt!2639 (__x!16097 Int)) )
))
(declare-datatypes ((Cell!10387 0))(
  ( (Cell!10388 (v!28649 MutLongMap!2640)) )
))
(declare-datatypes ((MutableMap!2554 0))(
  ( (MutableMapExt!2553 (__x!16098 Int)) (HashMap!2554 (underlying!5476 Cell!10387) (hashF!4477 Hashable!2554) (_size!5332 (_ BitVec 32)) (defaultValue!2716 Int)) )
))
(declare-datatypes ((CacheDown!1750 0))(
  ( (CacheDown!1751 (cache!2935 MutableMap!2554)) )
))
(declare-fun cacheDown!1098 () CacheDown!1750)

(declare-fun valid!2068 (CacheDown!1750) Bool)

(assert (=> b!2133841 (= res!922112 (valid!2068 cacheDown!1098))))

(declare-fun b!2133842 () Bool)

(declare-fun e!1361628 () Bool)

(assert (=> b!2133842 (= e!1361644 e!1361628)))

(declare-fun b!2133843 () Bool)

(declare-fun e!1361626 () Int)

(declare-fun from!1043 () Int)

(assert (=> b!2133843 (= e!1361626 from!1043)))

(declare-fun b!2133844 () Bool)

(declare-fun e!1361624 () Bool)

(declare-fun tp!657236 () Bool)

(declare-fun mapRes!12700 () Bool)

(assert (=> b!2133844 (= e!1361624 (and tp!657236 mapRes!12700))))

(declare-fun condMapEmpty!12702 () Bool)

(declare-datatypes ((tuple2!23856 0))(
  ( (tuple2!23857 (_1!14006 Context!2606) (_2!14006 C!11612)) )
))
(declare-datatypes ((tuple2!23858 0))(
  ( (tuple2!23859 (_1!14007 tuple2!23856) (_2!14007 (InoxSet Context!2606))) )
))
(declare-datatypes ((List!24175 0))(
  ( (Nil!24091) (Cons!24091 (h!29492 tuple2!23858) (t!196703 List!24175)) )
))
(declare-datatypes ((array!8969 0))(
  ( (array!8970 (arr!3996 (Array (_ BitVec 32) List!24175)) (size!18841 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5282 0))(
  ( (LongMapFixedSize!5283 (defaultEntry!3006 Int) (mask!6823 (_ BitVec 32)) (extraKeys!2889 (_ BitVec 32)) (zeroValue!2899 List!24175) (minValue!2899 List!24175) (_size!5333 (_ BitVec 32)) (_keys!2938 array!8963) (_values!2921 array!8969) (_vacant!2702 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10389 0))(
  ( (Cell!10390 (v!28650 LongMapFixedSize!5282)) )
))
(declare-datatypes ((MutLongMap!2641 0))(
  ( (LongMap!2641 (underlying!5477 Cell!10389)) (MutLongMapExt!2640 (__x!16099 Int)) )
))
(declare-datatypes ((Cell!10391 0))(
  ( (Cell!10392 (v!28651 MutLongMap!2641)) )
))
(declare-datatypes ((Hashable!2555 0))(
  ( (HashableExt!2554 (__x!16100 Int)) )
))
(declare-datatypes ((MutableMap!2555 0))(
  ( (MutableMapExt!2554 (__x!16101 Int)) (HashMap!2555 (underlying!5478 Cell!10391) (hashF!4478 Hashable!2555) (_size!5334 (_ BitVec 32)) (defaultValue!2717 Int)) )
))
(declare-datatypes ((CacheUp!1768 0))(
  ( (CacheUp!1769 (cache!2936 MutableMap!2555)) )
))
(declare-fun cacheUp!979 () CacheUp!1768)

(declare-fun mapDefault!12700 () List!24175)

(assert (=> b!2133844 (= condMapEmpty!12702 (= (arr!3996 (_values!2921 (v!28650 (underlying!5477 (v!28651 (underlying!5478 (cache!2936 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24175)) mapDefault!12700)))))

(declare-fun e!1361642 () Bool)

(declare-fun e!1361634 () Bool)

(assert (=> b!2133845 (= e!1361642 (and e!1361634 tp!657225))))

(declare-fun b!2133846 () Bool)

(declare-fun e!1361655 () Bool)

(declare-fun tp!657224 () Bool)

(assert (=> b!2133846 (= e!1361655 tp!657224)))

(declare-fun b!2133847 () Bool)

(declare-fun e!1361645 () Bool)

(declare-fun lt!796912 () MutLongMap!2641)

(get-info :version)

(assert (=> b!2133847 (= e!1361634 (and e!1361645 ((_ is LongMap!2641) lt!796912)))))

(assert (=> b!2133847 (= lt!796912 (v!28651 (underlying!5478 (cache!2936 cacheUp!979))))))

(declare-fun e!1361643 () Bool)

(declare-fun lt!796914 () Bool)

(declare-fun lt!796908 () Int)

(declare-fun b!2133848 () Bool)

(assert (=> b!2133848 (= e!1361643 (or (> from!1043 lt!796908) lt!796914))))

(declare-fun b!2133849 () Bool)

(declare-fun e!1361623 () Bool)

(declare-fun totalInput!851 () BalanceConc!15504)

(declare-fun tp!657247 () Bool)

(declare-fun inv!31743 (Conc!7871) Bool)

(assert (=> b!2133849 (= e!1361623 (and (inv!31743 (c!340276 totalInput!851)) tp!657247))))

(declare-fun e!1361632 () Bool)

(assert (=> b!2133850 (= e!1361646 e!1361632)))

(declare-fun res!922113 () Bool)

(assert (=> b!2133850 (=> (not res!922113) (not e!1361632))))

(declare-fun forall!4923 (List!24172 Int) Bool)

(assert (=> b!2133850 (= res!922113 (forall!4923 stack!8 lambda!79354))))

(declare-fun lt!796909 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun z!3839 () (InoxSet Context!2606))

(declare-fun furthestNullablePosition!46 ((InoxSet Context!2606) Int BalanceConc!15504 Int Int) Int)

(assert (=> b!2133850 (= lt!796909 (furthestNullablePosition!46 z!3839 from!1043 totalInput!851 lt!796908 lastNullablePos!123))))

(declare-fun mapNonEmpty!12701 () Bool)

(declare-fun mapRes!12702 () Bool)

(declare-fun tp!657229 () Bool)

(declare-fun tp!657232 () Bool)

(assert (=> mapNonEmpty!12701 (= mapRes!12702 (and tp!657229 tp!657232))))

(declare-fun mapValue!12700 () List!24174)

(declare-fun mapRest!12700 () (Array (_ BitVec 32) List!24174))

(declare-fun mapKey!12701 () (_ BitVec 32))

(assert (=> mapNonEmpty!12701 (= (arr!3995 (_values!2920 (v!28648 (underlying!5475 (v!28649 (underlying!5476 (cache!2935 cacheDown!1098))))))) (store mapRest!12700 mapKey!12701 mapValue!12700))))

(declare-fun b!2133851 () Bool)

(declare-fun e!1361653 () Bool)

(declare-fun e!1361638 () Bool)

(assert (=> b!2133851 (= e!1361653 e!1361638)))

(declare-fun tp!657246 () Bool)

(declare-fun setRes!15864 () Bool)

(declare-fun setNonEmpty!15864 () Bool)

(declare-fun setElem!15865 () Context!2606)

(declare-fun inv!31744 (Context!2606) Bool)

(assert (=> setNonEmpty!15864 (= setRes!15864 (and tp!657246 (inv!31744 setElem!15865) e!1361655))))

(declare-fun setRest!15864 () (InoxSet Context!2606))

(assert (=> setNonEmpty!15864 (= (z!5807 (h!29489 stack!8)) ((_ map or) (store ((as const (Array Context!2606 Bool)) false) setElem!15865 true) setRest!15864))))

(declare-fun b!2133852 () Bool)

(declare-fun e!1361627 () Bool)

(declare-fun inv!31745 (BalanceConc!15504) Bool)

(assert (=> b!2133852 (= e!1361641 (and setRes!15864 (inv!31745 (totalInput!3042 (h!29489 stack!8))) e!1361627))))

(declare-fun condSetEmpty!15864 () Bool)

(assert (=> b!2133852 (= condSetEmpty!15864 (= (z!5807 (h!29489 stack!8)) ((as const (Array Context!2606 Bool)) false)))))

(declare-fun b!2133853 () Bool)

(declare-fun res!922123 () Bool)

(declare-fun e!1361659 () Bool)

(assert (=> b!2133853 (=> res!922123 e!1361659)))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2133853 (= res!922123 (= from!1043 totalInputSize!296))))

(declare-fun e!1361631 () Bool)

(declare-fun e!1361630 () Bool)

(assert (=> b!2133854 (= e!1361631 (and e!1361630 tp!657223))))

(declare-fun b!2133855 () Bool)

(declare-fun res!922116 () Bool)

(assert (=> b!2133855 (=> (not res!922116) (not e!1361646))))

(declare-fun valid!2069 (CacheFurthestNullable!712) Bool)

(assert (=> b!2133855 (= res!922116 (valid!2069 cacheFurthestNullable!114))))

(declare-fun e!1361640 () Bool)

(declare-fun tp!657227 () Bool)

(declare-fun tp!657231 () Bool)

(declare-fun array_inv!2857 (array!8963) Bool)

(declare-fun array_inv!2858 (array!8965) Bool)

(assert (=> b!2133856 (= e!1361638 (and tp!657244 tp!657231 tp!657227 (array_inv!2857 (_keys!2936 (v!28646 (underlying!5473 (v!28647 (underlying!5474 (cache!2934 cacheFurthestNullable!114))))))) (array_inv!2858 (_values!2919 (v!28646 (underlying!5473 (v!28647 (underlying!5474 (cache!2934 cacheFurthestNullable!114))))))) e!1361640))))

(declare-fun b!2133857 () Bool)

(assert (=> b!2133857 (= e!1361626 lastNullablePos!123)))

(declare-fun e!1361652 () Bool)

(declare-fun tp!657250 () Bool)

(declare-fun tp!657228 () Bool)

(declare-fun array_inv!2859 (array!8969) Bool)

(assert (=> b!2133858 (= e!1361652 (and tp!657238 tp!657228 tp!657250 (array_inv!2857 (_keys!2938 (v!28650 (underlying!5477 (v!28651 (underlying!5478 (cache!2936 cacheUp!979))))))) (array_inv!2859 (_values!2921 (v!28650 (underlying!5477 (v!28651 (underlying!5478 (cache!2936 cacheUp!979))))))) e!1361624))))

(declare-fun b!2133859 () Bool)

(assert (=> b!2133859 (= e!1361659 e!1361643)))

(declare-fun res!922118 () Bool)

(assert (=> b!2133859 (=> res!922118 e!1361643)))

(declare-datatypes ((tuple3!3216 0))(
  ( (tuple3!3217 (_1!14008 (InoxSet Context!2606)) (_2!14008 CacheUp!1768) (_3!2078 CacheDown!1750)) )
))
(declare-fun lt!796913 () tuple3!3216)

(assert (=> b!2133859 (= res!922118 (not (= lt!796909 (furthestNullablePosition!46 (_1!14008 lt!796913) (+ 1 from!1043) totalInput!851 lt!796908 e!1361626))))))

(declare-fun c!340274 () Bool)

(declare-fun nullableZipper!113 ((InoxSet Context!2606)) Bool)

(assert (=> b!2133859 (= c!340274 (nullableZipper!113 (_1!14008 lt!796913)))))

(declare-fun derivationStepZipperMem!35 ((InoxSet Context!2606) C!11612 CacheUp!1768 CacheDown!1750) tuple3!3216)

(declare-fun apply!5934 (BalanceConc!15504 Int) C!11612)

(assert (=> b!2133859 (= lt!796913 (derivationStepZipperMem!35 z!3839 (apply!5934 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2133860 () Bool)

(declare-fun e!1361625 () Bool)

(assert (=> b!2133860 (= e!1361625 e!1361642)))

(declare-fun b!2133861 () Bool)

(declare-fun e!1361621 () Bool)

(assert (=> b!2133861 (= e!1361621 e!1361652)))

(declare-fun b!2133862 () Bool)

(declare-fun tp!657240 () Bool)

(assert (=> b!2133862 (= e!1361640 (and tp!657240 mapRes!12701))))

(declare-fun condMapEmpty!12700 () Bool)

(declare-fun mapDefault!12701 () List!24173)

(assert (=> b!2133862 (= condMapEmpty!12700 (= (arr!3994 (_values!2919 (v!28646 (underlying!5473 (v!28647 (underlying!5474 (cache!2934 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24173)) mapDefault!12701)))))

(declare-fun res!922111 () Bool)

(declare-fun e!1361649 () Bool)

(assert (=> start!207572 (=> (not res!922111) (not e!1361649))))

(assert (=> start!207572 (= res!922111 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207572 e!1361649))

(declare-fun e!1361633 () Bool)

(declare-fun inv!31746 (CacheFurthestNullable!712) Bool)

(assert (=> start!207572 (and (inv!31746 cacheFurthestNullable!114) e!1361633)))

(assert (=> start!207572 true))

(declare-fun e!1361637 () Bool)

(declare-fun inv!31747 (CacheDown!1750) Bool)

(assert (=> start!207572 (and (inv!31747 cacheDown!1098) e!1361637)))

(declare-fun inv!31748 (CacheUp!1768) Bool)

(assert (=> start!207572 (and (inv!31748 cacheUp!979) e!1361625)))

(declare-fun condSetEmpty!15865 () Bool)

(assert (=> start!207572 (= condSetEmpty!15865 (= z!3839 ((as const (Array Context!2606 Bool)) false)))))

(declare-fun setRes!15865 () Bool)

(assert (=> start!207572 setRes!15865))

(assert (=> start!207572 (and (inv!31745 totalInput!851) e!1361623)))

(assert (=> start!207572 e!1361657))

(declare-fun b!2133863 () Bool)

(declare-fun e!1361629 () Bool)

(assert (=> b!2133863 (= e!1361629 e!1361653)))

(declare-fun b!2133864 () Bool)

(assert (=> b!2133864 (= e!1361632 (not e!1361659))))

(declare-fun res!922115 () Bool)

(assert (=> b!2133864 (=> res!922115 e!1361659)))

(declare-datatypes ((Option!4904 0))(
  ( (None!4903) (Some!4903 (v!28652 Int)) )
))
(declare-fun get!7380 (CacheFurthestNullable!712 (InoxSet Context!2606) Int Int) Option!4904)

(assert (=> b!2133864 (= res!922115 ((_ is Some!4903) (get!7380 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2133864 (forall!4923 stack!8 lambda!79354)))

(declare-fun e!1361650 () Bool)

(declare-fun tp!657245 () Bool)

(declare-fun setElem!15864 () Context!2606)

(declare-fun setNonEmpty!15865 () Bool)

(assert (=> setNonEmpty!15865 (= setRes!15865 (and tp!657245 (inv!31744 setElem!15864) e!1361650))))

(declare-fun setRest!15865 () (InoxSet Context!2606))

(assert (=> setNonEmpty!15865 (= z!3839 ((_ map or) (store ((as const (Array Context!2606 Bool)) false) setElem!15864 true) setRest!15865))))

(declare-fun b!2133865 () Bool)

(declare-fun e!1361651 () Bool)

(declare-fun lt!796910 () MutLongMap!2640)

(assert (=> b!2133865 (= e!1361651 (and e!1361656 ((_ is LongMap!2640) lt!796910)))))

(assert (=> b!2133865 (= lt!796910 (v!28649 (underlying!5476 (cache!2935 cacheDown!1098))))))

(declare-fun b!2133866 () Bool)

(declare-fun e!1361647 () Bool)

(declare-fun tp!657249 () Bool)

(assert (=> b!2133866 (= e!1361647 (and (inv!31743 (c!340276 (totalInput!3043 cacheFurthestNullable!114))) tp!657249))))

(declare-fun res!922120 () Bool)

(assert (=> b!2133867 (=> (not res!922120) (not e!1361632))))

(assert (=> b!2133867 (= res!922120 (forall!4923 stack!8 lambda!79355))))

(declare-fun mapIsEmpty!12700 () Bool)

(assert (=> mapIsEmpty!12700 mapRes!12701))

(declare-fun b!2133868 () Bool)

(declare-fun e!1361654 () Bool)

(assert (=> b!2133868 (= e!1361654 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun mapIsEmpty!12701 () Bool)

(assert (=> mapIsEmpty!12701 mapRes!12702))

(declare-fun mapNonEmpty!12702 () Bool)

(declare-fun tp!657239 () Bool)

(declare-fun tp!657234 () Bool)

(assert (=> mapNonEmpty!12702 (= mapRes!12700 (and tp!657239 tp!657234))))

(declare-fun mapRest!12702 () (Array (_ BitVec 32) List!24175))

(declare-fun mapKey!12700 () (_ BitVec 32))

(declare-fun mapValue!12702 () List!24175)

(assert (=> mapNonEmpty!12702 (= (arr!3996 (_values!2921 (v!28650 (underlying!5477 (v!28651 (underlying!5478 (cache!2936 cacheUp!979))))))) (store mapRest!12702 mapKey!12700 mapValue!12702))))

(declare-fun b!2133869 () Bool)

(declare-fun tp!657242 () Bool)

(assert (=> b!2133869 (= e!1361650 tp!657242)))

(declare-fun b!2133870 () Bool)

(declare-fun tp!657226 () Bool)

(assert (=> b!2133870 (= e!1361627 (and (inv!31743 (c!340276 (totalInput!3042 (h!29489 stack!8)))) tp!657226))))

(declare-fun b!2133871 () Bool)

(assert (=> b!2133871 (= e!1361633 (and e!1361631 (inv!31745 (totalInput!3043 cacheFurthestNullable!114)) e!1361647))))

(declare-fun b!2133872 () Bool)

(declare-fun e!1361622 () Bool)

(assert (=> b!2133872 (= e!1361637 e!1361622)))

(declare-fun mapIsEmpty!12702 () Bool)

(assert (=> mapIsEmpty!12702 mapRes!12700))

(declare-fun b!2133873 () Bool)

(declare-fun e!1361636 () Bool)

(assert (=> b!2133873 (= e!1361636 e!1361646)))

(declare-fun res!922114 () Bool)

(assert (=> b!2133873 (=> (not res!922114) (not e!1361646))))

(assert (=> b!2133873 (= res!922114 lt!796914)))

(assert (=> b!2133873 (= lt!796914 e!1361654)))

(declare-fun res!922117 () Bool)

(assert (=> b!2133873 (=> res!922117 e!1361654)))

(assert (=> b!2133873 (= res!922117 (not (nullableZipper!113 z!3839)))))

(declare-fun tp!657237 () Bool)

(declare-fun e!1361648 () Bool)

(declare-fun tp!657230 () Bool)

(declare-fun array_inv!2860 (array!8967) Bool)

(assert (=> b!2133874 (= e!1361628 (and tp!657243 tp!657237 tp!657230 (array_inv!2857 (_keys!2937 (v!28648 (underlying!5475 (v!28649 (underlying!5476 (cache!2935 cacheDown!1098))))))) (array_inv!2860 (_values!2920 (v!28648 (underlying!5475 (v!28649 (underlying!5476 (cache!2935 cacheDown!1098))))))) e!1361648))))

(declare-fun setIsEmpty!15864 () Bool)

(assert (=> setIsEmpty!15864 setRes!15864))

(declare-fun b!2133875 () Bool)

(declare-fun res!922119 () Bool)

(assert (=> b!2133875 (=> (not res!922119) (not e!1361646))))

(assert (=> b!2133875 (= res!922119 (= (totalInput!3043 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2133876 () Bool)

(declare-fun lt!796911 () MutLongMap!2639)

(assert (=> b!2133876 (= e!1361630 (and e!1361629 ((_ is LongMap!2639) lt!796911)))))

(assert (=> b!2133876 (= lt!796911 (v!28647 (underlying!5474 (cache!2934 cacheFurthestNullable!114))))))

(assert (=> b!2133877 (= e!1361622 (and e!1361651 tp!657222))))

(declare-fun b!2133878 () Bool)

(declare-fun res!922122 () Bool)

(assert (=> b!2133878 (=> (not res!922122) (not e!1361646))))

(declare-fun valid!2070 (CacheUp!1768) Bool)

(assert (=> b!2133878 (= res!922122 (valid!2070 cacheUp!979))))

(declare-fun setIsEmpty!15865 () Bool)

(assert (=> setIsEmpty!15865 setRes!15865))

(declare-fun b!2133879 () Bool)

(declare-fun res!922110 () Bool)

(assert (=> b!2133879 (=> res!922110 e!1361659)))

(declare-fun lostCauseZipper!86 ((InoxSet Context!2606)) Bool)

(assert (=> b!2133879 (= res!922110 (lostCauseZipper!86 z!3839))))

(declare-fun b!2133880 () Bool)

(declare-fun tp!657235 () Bool)

(assert (=> b!2133880 (= e!1361648 (and tp!657235 mapRes!12702))))

(declare-fun condMapEmpty!12701 () Bool)

(declare-fun mapDefault!12702 () List!24174)

(assert (=> b!2133880 (= condMapEmpty!12701 (= (arr!3995 (_values!2920 (v!28648 (underlying!5475 (v!28649 (underlying!5476 (cache!2935 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24174)) mapDefault!12702)))))

(declare-fun b!2133881 () Bool)

(assert (=> b!2133881 (= e!1361645 e!1361621)))

(declare-fun b!2133882 () Bool)

(assert (=> b!2133882 (= e!1361649 e!1361636)))

(declare-fun res!922121 () Bool)

(assert (=> b!2133882 (=> (not res!922121) (not e!1361636))))

(assert (=> b!2133882 (= res!922121 (and (= totalInputSize!296 lt!796908) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18842 (BalanceConc!15504) Int)

(assert (=> b!2133882 (= lt!796908 (size!18842 totalInput!851))))

(assert (= (and start!207572 res!922111) b!2133882))

(assert (= (and b!2133882 res!922121) b!2133873))

(assert (= (and b!2133873 (not res!922117)) b!2133868))

(assert (= (and b!2133873 res!922114) b!2133878))

(assert (= (and b!2133878 res!922122) b!2133841))

(assert (= (and b!2133841 res!922112) b!2133855))

(assert (= (and b!2133855 res!922116) b!2133875))

(assert (= (and b!2133875 res!922119) b!2133850))

(assert (= (and b!2133850 res!922113) b!2133867))

(assert (= (and b!2133867 res!922120) b!2133864))

(assert (= (and b!2133864 (not res!922115)) b!2133853))

(assert (= (and b!2133853 (not res!922123)) b!2133879))

(assert (= (and b!2133879 (not res!922110)) b!2133859))

(assert (= (and b!2133859 c!340274) b!2133843))

(assert (= (and b!2133859 (not c!340274)) b!2133857))

(assert (= (and b!2133859 (not res!922118)) b!2133848))

(assert (= (and b!2133862 condMapEmpty!12700) mapIsEmpty!12700))

(assert (= (and b!2133862 (not condMapEmpty!12700)) mapNonEmpty!12700))

(assert (= b!2133856 b!2133862))

(assert (= b!2133851 b!2133856))

(assert (= b!2133863 b!2133851))

(assert (= (and b!2133876 ((_ is LongMap!2639) (v!28647 (underlying!5474 (cache!2934 cacheFurthestNullable!114))))) b!2133863))

(assert (= b!2133854 b!2133876))

(assert (= (and b!2133871 ((_ is HashMap!2553) (cache!2934 cacheFurthestNullable!114))) b!2133854))

(assert (= b!2133871 b!2133866))

(assert (= start!207572 b!2133871))

(assert (= (and b!2133880 condMapEmpty!12701) mapIsEmpty!12701))

(assert (= (and b!2133880 (not condMapEmpty!12701)) mapNonEmpty!12701))

(assert (= b!2133874 b!2133880))

(assert (= b!2133842 b!2133874))

(assert (= b!2133840 b!2133842))

(assert (= (and b!2133865 ((_ is LongMap!2640) (v!28649 (underlying!5476 (cache!2935 cacheDown!1098))))) b!2133840))

(assert (= b!2133877 b!2133865))

(assert (= (and b!2133872 ((_ is HashMap!2554) (cache!2935 cacheDown!1098))) b!2133877))

(assert (= start!207572 b!2133872))

(assert (= (and b!2133844 condMapEmpty!12702) mapIsEmpty!12702))

(assert (= (and b!2133844 (not condMapEmpty!12702)) mapNonEmpty!12702))

(assert (= b!2133858 b!2133844))

(assert (= b!2133861 b!2133858))

(assert (= b!2133881 b!2133861))

(assert (= (and b!2133847 ((_ is LongMap!2641) (v!28651 (underlying!5478 (cache!2936 cacheUp!979))))) b!2133881))

(assert (= b!2133845 b!2133847))

(assert (= (and b!2133860 ((_ is HashMap!2555) (cache!2936 cacheUp!979))) b!2133845))

(assert (= start!207572 b!2133860))

(assert (= (and start!207572 condSetEmpty!15865) setIsEmpty!15865))

(assert (= (and start!207572 (not condSetEmpty!15865)) setNonEmpty!15865))

(assert (= setNonEmpty!15865 b!2133869))

(assert (= start!207572 b!2133849))

(assert (= (and b!2133852 condSetEmpty!15864) setIsEmpty!15864))

(assert (= (and b!2133852 (not condSetEmpty!15864)) setNonEmpty!15864))

(assert (= setNonEmpty!15864 b!2133846))

(assert (= b!2133852 b!2133870))

(assert (= b!2133839 b!2133852))

(assert (= (and start!207572 ((_ is Cons!24088) stack!8)) b!2133839))

(declare-fun m!2582362 () Bool)

(assert (=> b!2133858 m!2582362))

(declare-fun m!2582364 () Bool)

(assert (=> b!2133858 m!2582364))

(declare-fun m!2582366 () Bool)

(assert (=> b!2133856 m!2582366))

(declare-fun m!2582368 () Bool)

(assert (=> b!2133856 m!2582368))

(declare-fun m!2582370 () Bool)

(assert (=> setNonEmpty!15865 m!2582370))

(declare-fun m!2582372 () Bool)

(assert (=> setNonEmpty!15864 m!2582372))

(declare-fun m!2582374 () Bool)

(assert (=> b!2133882 m!2582374))

(declare-fun m!2582376 () Bool)

(assert (=> b!2133874 m!2582376))

(declare-fun m!2582378 () Bool)

(assert (=> b!2133874 m!2582378))

(declare-fun m!2582380 () Bool)

(assert (=> mapNonEmpty!12701 m!2582380))

(declare-fun m!2582382 () Bool)

(assert (=> mapNonEmpty!12700 m!2582382))

(declare-fun m!2582384 () Bool)

(assert (=> b!2133873 m!2582384))

(declare-fun m!2582386 () Bool)

(assert (=> b!2133878 m!2582386))

(declare-fun m!2582388 () Bool)

(assert (=> b!2133855 m!2582388))

(declare-fun m!2582390 () Bool)

(assert (=> mapNonEmpty!12702 m!2582390))

(declare-fun m!2582392 () Bool)

(assert (=> b!2133849 m!2582392))

(declare-fun m!2582394 () Bool)

(assert (=> b!2133839 m!2582394))

(declare-fun m!2582396 () Bool)

(assert (=> b!2133864 m!2582396))

(declare-fun m!2582398 () Bool)

(assert (=> b!2133864 m!2582398))

(declare-fun m!2582400 () Bool)

(assert (=> b!2133871 m!2582400))

(declare-fun m!2582402 () Bool)

(assert (=> start!207572 m!2582402))

(declare-fun m!2582404 () Bool)

(assert (=> start!207572 m!2582404))

(declare-fun m!2582406 () Bool)

(assert (=> start!207572 m!2582406))

(declare-fun m!2582408 () Bool)

(assert (=> start!207572 m!2582408))

(declare-fun m!2582410 () Bool)

(assert (=> b!2133866 m!2582410))

(declare-fun m!2582412 () Bool)

(assert (=> b!2133867 m!2582412))

(declare-fun m!2582414 () Bool)

(assert (=> b!2133859 m!2582414))

(declare-fun m!2582416 () Bool)

(assert (=> b!2133859 m!2582416))

(declare-fun m!2582418 () Bool)

(assert (=> b!2133859 m!2582418))

(assert (=> b!2133859 m!2582418))

(declare-fun m!2582420 () Bool)

(assert (=> b!2133859 m!2582420))

(assert (=> b!2133850 m!2582398))

(declare-fun m!2582422 () Bool)

(assert (=> b!2133850 m!2582422))

(declare-fun m!2582424 () Bool)

(assert (=> b!2133841 m!2582424))

(declare-fun m!2582426 () Bool)

(assert (=> b!2133879 m!2582426))

(declare-fun m!2582428 () Bool)

(assert (=> b!2133870 m!2582428))

(declare-fun m!2582430 () Bool)

(assert (=> b!2133852 m!2582430))

(check-sat (not b!2133855) b_and!172039 (not b!2133864) b_and!172037 (not b!2133862) (not b_next!63161) (not b!2133880) (not b!2133871) (not b!2133850) (not b!2133844) (not b!2133849) (not b!2133879) (not b!2133839) b_and!172041 (not mapNonEmpty!12701) (not b!2133873) (not b!2133858) (not b!2133866) (not start!207572) (not b!2133874) (not b!2133852) (not b!2133869) b_and!172043 (not b_next!63165) (not b_next!63167) (not mapNonEmpty!12702) (not mapNonEmpty!12700) (not setNonEmpty!15864) (not setNonEmpty!15865) (not b!2133870) (not b!2133841) b_and!172033 (not b_next!63159) (not b!2133882) (not b!2133859) (not b_next!63163) (not b_next!63157) (not b!2133867) (not b!2133878) (not b!2133846) b_and!172035 (not b!2133856))
(check-sat b_and!172039 b_and!172041 b_and!172037 b_and!172033 (not b_next!63159) (not b_next!63161) (not b_next!63163) (not b_next!63157) b_and!172035 b_and!172043 (not b_next!63165) (not b_next!63167))
