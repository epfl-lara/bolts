; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207670 () Bool)

(assert start!207670)

(declare-fun b!2137776 () Bool)

(declare-fun b_free!62765 () Bool)

(declare-fun b_next!63469 () Bool)

(assert (=> b!2137776 (= b_free!62765 (not b_next!63469))))

(declare-fun tp!659704 () Bool)

(declare-fun b_and!172345 () Bool)

(assert (=> b!2137776 (= tp!659704 b_and!172345)))

(declare-fun b!2137772 () Bool)

(declare-fun b_free!62767 () Bool)

(declare-fun b_next!63471 () Bool)

(assert (=> b!2137772 (= b_free!62767 (not b_next!63471))))

(declare-fun tp!659694 () Bool)

(declare-fun b_and!172347 () Bool)

(assert (=> b!2137772 (= tp!659694 b_and!172347)))

(declare-fun b!2137788 () Bool)

(declare-fun b_free!62769 () Bool)

(declare-fun b_next!63473 () Bool)

(assert (=> b!2137788 (= b_free!62769 (not b_next!63473))))

(declare-fun tp!659699 () Bool)

(declare-fun b_and!172349 () Bool)

(assert (=> b!2137788 (= tp!659699 b_and!172349)))

(declare-fun b!2137784 () Bool)

(declare-fun b_free!62771 () Bool)

(declare-fun b_next!63475 () Bool)

(assert (=> b!2137784 (= b_free!62771 (not b_next!63475))))

(declare-fun tp!659681 () Bool)

(declare-fun b_and!172351 () Bool)

(assert (=> b!2137784 (= tp!659681 b_and!172351)))

(declare-fun b!2137743 () Bool)

(declare-fun b_free!62773 () Bool)

(declare-fun b_next!63477 () Bool)

(assert (=> b!2137743 (= b_free!62773 (not b_next!63477))))

(declare-fun tp!659700 () Bool)

(declare-fun b_and!172353 () Bool)

(assert (=> b!2137743 (= tp!659700 b_and!172353)))

(declare-fun b!2137754 () Bool)

(declare-fun b_free!62775 () Bool)

(declare-fun b_next!63479 () Bool)

(assert (=> b!2137754 (= b_free!62775 (not b_next!63479))))

(declare-fun tp!659683 () Bool)

(declare-fun b_and!172355 () Bool)

(assert (=> b!2137754 (= tp!659683 b_and!172355)))

(declare-fun b!2137786 () Bool)

(assert (=> b!2137786 true))

(declare-fun bs!444407 () Bool)

(declare-fun b!2137753 () Bool)

(assert (= bs!444407 (and b!2137753 b!2137786)))

(declare-fun lambda!79783 () Int)

(declare-fun lambda!79782 () Int)

(assert (=> bs!444407 (not (= lambda!79783 lambda!79782))))

(assert (=> b!2137753 true))

(declare-fun bs!444408 () Bool)

(declare-fun b!2137756 () Bool)

(assert (= bs!444408 (and b!2137756 b!2137786)))

(declare-fun lt!797657 () Int)

(declare-fun lambda!79784 () Int)

(declare-fun lt!797651 () Int)

(assert (=> bs!444408 (= (= lt!797657 lt!797651) (= lambda!79784 lambda!79782))))

(declare-fun bs!444409 () Bool)

(assert (= bs!444409 (and b!2137756 b!2137753)))

(assert (=> bs!444409 (not (= lambda!79784 lambda!79783))))

(assert (=> b!2137756 true))

(declare-fun b!2137741 () Bool)

(declare-fun e!1364818 () Bool)

(declare-fun e!1364804 () Bool)

(declare-datatypes ((C!11664 0))(
  ( (C!11665 (val!6818 Int)) )
))
(declare-datatypes ((Regex!5759 0))(
  ( (ElementMatch!5759 (c!340395 C!11664)) (Concat!10061 (regOne!12030 Regex!5759) (regTwo!12030 Regex!5759)) (EmptyExpr!5759) (Star!5759 (reg!6088 Regex!5759)) (EmptyLang!5759) (Union!5759 (regOne!12031 Regex!5759) (regTwo!12031 Regex!5759)) )
))
(declare-datatypes ((List!24318 0))(
  ( (Nil!24234) (Cons!24234 (h!29635 Regex!5759) (t!196846 List!24318)) )
))
(declare-datatypes ((Context!2658 0))(
  ( (Context!2659 (exprs!1829 List!24318)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3342 0))(
  ( (tuple3!3343 (_1!14162 (InoxSet Context!2658)) (_2!14162 Int) (_3!2141 Int)) )
))
(declare-datatypes ((tuple2!24042 0))(
  ( (tuple2!24043 (_1!14163 tuple3!3342) (_2!14163 Int)) )
))
(declare-datatypes ((List!24319 0))(
  ( (Nil!24235) (Cons!24235 (h!29636 tuple2!24042) (t!196847 List!24319)) )
))
(declare-datatypes ((array!9163 0))(
  ( (array!9164 (arr!4091 (Array (_ BitVec 32) (_ BitVec 64))) (size!18954 (_ BitVec 32))) )
))
(declare-datatypes ((array!9165 0))(
  ( (array!9166 (arr!4092 (Array (_ BitVec 32) List!24319)) (size!18955 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5422 0))(
  ( (LongMapFixedSize!5423 (defaultEntry!3076 Int) (mask!6906 (_ BitVec 32)) (extraKeys!2959 (_ BitVec 32)) (zeroValue!2969 List!24319) (minValue!2969 List!24319) (_size!5473 (_ BitVec 32)) (_keys!3008 array!9163) (_values!2991 array!9165) (_vacant!2772 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10669 0))(
  ( (Cell!10670 (v!28808 LongMapFixedSize!5422)) )
))
(declare-datatypes ((MutLongMap!2711 0))(
  ( (LongMap!2711 (underlying!5617 Cell!10669)) (MutLongMapExt!2710 (__x!16309 Int)) )
))
(declare-fun lt!797655 () MutLongMap!2711)

(get-info :version)

(assert (=> b!2137741 (= e!1364818 (and e!1364804 ((_ is LongMap!2711) lt!797655)))))

(declare-datatypes ((List!24320 0))(
  ( (Nil!24236) (Cons!24236 (h!29637 C!11664) (t!196848 List!24320)) )
))
(declare-datatypes ((IArray!15799 0))(
  ( (IArray!15800 (innerList!7957 List!24320)) )
))
(declare-datatypes ((Conc!7897 0))(
  ( (Node!7897 (left!18653 Conc!7897) (right!18983 Conc!7897) (csize!16024 Int) (cheight!8108 Int)) (Leaf!11544 (xs!10839 IArray!15799) (csize!16025 Int)) (Empty!7897) )
))
(declare-datatypes ((Cell!10671 0))(
  ( (Cell!10672 (v!28809 MutLongMap!2711)) )
))
(declare-datatypes ((Hashable!2625 0))(
  ( (HashableExt!2624 (__x!16310 Int)) )
))
(declare-datatypes ((MutableMap!2625 0))(
  ( (MutableMapExt!2624 (__x!16311 Int)) (HashMap!2625 (underlying!5618 Cell!10671) (hashF!4548 Hashable!2625) (_size!5474 (_ BitVec 32)) (defaultValue!2787 Int)) )
))
(declare-datatypes ((BalanceConc!15556 0))(
  ( (BalanceConc!15557 (c!340396 Conc!7897)) )
))
(declare-datatypes ((CacheFurthestNullable!762 0))(
  ( (CacheFurthestNullable!763 (cache!3006 MutableMap!2625) (totalInput!3091 BalanceConc!15556)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!762)

(assert (=> b!2137741 (= lt!797655 (v!28809 (underlying!5618 (cache!3006 cacheFurthestNullable!114))))))

(declare-fun b!2137742 () Bool)

(declare-fun res!923478 () Bool)

(declare-fun e!1364815 () Bool)

(assert (=> b!2137742 (=> res!923478 e!1364815)))

(declare-fun totalInputSize!296 () Int)

(declare-fun lt!797653 () Bool)

(declare-fun from!1043 () Int)

(declare-fun lt!797647 () Int)

(assert (=> b!2137742 (= res!923478 (or (< (+ 1 from!1043) 0) (> (+ 1 from!1043) totalInputSize!296) (< lt!797647 (- 1)) (>= lt!797647 (+ 1 from!1043)) (and lt!797653 (not (= lt!797647 from!1043)))))))

(declare-fun e!1364807 () Bool)

(declare-fun e!1364829 () Bool)

(declare-datatypes ((tuple2!24044 0))(
  ( (tuple2!24045 (_1!14164 Context!2658) (_2!14164 C!11664)) )
))
(declare-datatypes ((tuple2!24046 0))(
  ( (tuple2!24047 (_1!14165 tuple2!24044) (_2!14165 (InoxSet Context!2658))) )
))
(declare-datatypes ((List!24321 0))(
  ( (Nil!24237) (Cons!24237 (h!29638 tuple2!24046) (t!196849 List!24321)) )
))
(declare-datatypes ((array!9167 0))(
  ( (array!9168 (arr!4093 (Array (_ BitVec 32) List!24321)) (size!18956 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5424 0))(
  ( (LongMapFixedSize!5425 (defaultEntry!3077 Int) (mask!6907 (_ BitVec 32)) (extraKeys!2960 (_ BitVec 32)) (zeroValue!2970 List!24321) (minValue!2970 List!24321) (_size!5475 (_ BitVec 32)) (_keys!3009 array!9163) (_values!2992 array!9167) (_vacant!2773 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10673 0))(
  ( (Cell!10674 (v!28810 LongMapFixedSize!5424)) )
))
(declare-datatypes ((MutLongMap!2712 0))(
  ( (LongMap!2712 (underlying!5619 Cell!10673)) (MutLongMapExt!2711 (__x!16312 Int)) )
))
(declare-datatypes ((Cell!10675 0))(
  ( (Cell!10676 (v!28811 MutLongMap!2712)) )
))
(declare-datatypes ((Hashable!2626 0))(
  ( (HashableExt!2625 (__x!16313 Int)) )
))
(declare-datatypes ((MutableMap!2626 0))(
  ( (MutableMapExt!2625 (__x!16314 Int)) (HashMap!2626 (underlying!5620 Cell!10675) (hashF!4549 Hashable!2626) (_size!5476 (_ BitVec 32)) (defaultValue!2788 Int)) )
))
(declare-datatypes ((CacheUp!1814 0))(
  ( (CacheUp!1815 (cache!3007 MutableMap!2626)) )
))
(declare-fun cacheUp!979 () CacheUp!1814)

(declare-fun tp!659682 () Bool)

(declare-fun tp!659698 () Bool)

(declare-fun array_inv!2926 (array!9163) Bool)

(declare-fun array_inv!2927 (array!9167) Bool)

(assert (=> b!2137743 (= e!1364829 (and tp!659700 tp!659698 tp!659682 (array_inv!2926 (_keys!3009 (v!28810 (underlying!5619 (v!28811 (underlying!5620 (cache!3007 cacheUp!979))))))) (array_inv!2927 (_values!2992 (v!28810 (underlying!5619 (v!28811 (underlying!5620 (cache!3007 cacheUp!979))))))) e!1364807))))

(declare-fun b!2137744 () Bool)

(declare-fun res!923480 () Bool)

(declare-fun e!1364805 () Bool)

(assert (=> b!2137744 (=> (not res!923480) (not e!1364805))))

(declare-datatypes ((tuple3!3344 0))(
  ( (tuple3!3345 (_1!14166 Regex!5759) (_2!14166 Context!2658) (_3!2142 C!11664)) )
))
(declare-datatypes ((tuple2!24048 0))(
  ( (tuple2!24049 (_1!14167 tuple3!3344) (_2!14167 (InoxSet Context!2658))) )
))
(declare-datatypes ((List!24322 0))(
  ( (Nil!24238) (Cons!24238 (h!29639 tuple2!24048) (t!196850 List!24322)) )
))
(declare-datatypes ((Hashable!2627 0))(
  ( (HashableExt!2626 (__x!16315 Int)) )
))
(declare-datatypes ((array!9169 0))(
  ( (array!9170 (arr!4094 (Array (_ BitVec 32) List!24322)) (size!18957 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5426 0))(
  ( (LongMapFixedSize!5427 (defaultEntry!3078 Int) (mask!6908 (_ BitVec 32)) (extraKeys!2961 (_ BitVec 32)) (zeroValue!2971 List!24322) (minValue!2971 List!24322) (_size!5477 (_ BitVec 32)) (_keys!3010 array!9163) (_values!2993 array!9169) (_vacant!2774 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10677 0))(
  ( (Cell!10678 (v!28812 LongMapFixedSize!5426)) )
))
(declare-datatypes ((MutLongMap!2713 0))(
  ( (LongMap!2713 (underlying!5621 Cell!10677)) (MutLongMapExt!2712 (__x!16316 Int)) )
))
(declare-datatypes ((Cell!10679 0))(
  ( (Cell!10680 (v!28813 MutLongMap!2713)) )
))
(declare-datatypes ((MutableMap!2627 0))(
  ( (MutableMapExt!2626 (__x!16317 Int)) (HashMap!2627 (underlying!5622 Cell!10679) (hashF!4550 Hashable!2627) (_size!5478 (_ BitVec 32)) (defaultValue!2789 Int)) )
))
(declare-datatypes ((CacheDown!1798 0))(
  ( (CacheDown!1799 (cache!3008 MutableMap!2627)) )
))
(declare-fun cacheDown!1098 () CacheDown!1798)

(declare-fun valid!2118 (CacheDown!1798) Bool)

(assert (=> b!2137744 (= res!923480 (valid!2118 cacheDown!1098))))

(declare-fun b!2137745 () Bool)

(declare-fun e!1364810 () Bool)

(declare-fun e!1364826 () Bool)

(assert (=> b!2137745 (= e!1364810 e!1364826)))

(declare-fun res!923496 () Bool)

(assert (=> b!2137745 (=> res!923496 e!1364826)))

(assert (=> b!2137745 (= res!923496 (not (= lt!797651 lt!797657)))))

(declare-fun lt!797652 () Int)

(declare-datatypes ((tuple3!3346 0))(
  ( (tuple3!3347 (_1!14168 (InoxSet Context!2658)) (_2!14168 CacheUp!1814) (_3!2143 CacheDown!1798)) )
))
(declare-fun lt!797648 () tuple3!3346)

(declare-fun totalInput!851 () BalanceConc!15556)

(declare-fun furthestNullablePosition!65 ((InoxSet Context!2658) Int BalanceConc!15556 Int Int) Int)

(assert (=> b!2137745 (= lt!797657 (furthestNullablePosition!65 (_1!14168 lt!797648) (+ 1 from!1043) totalInput!851 lt!797652 lt!797647))))

(declare-fun lastNullablePos!123 () Int)

(declare-fun z!3839 () (InoxSet Context!2658))

(declare-datatypes ((StackFrame!204 0))(
  ( (StackFrame!205 (z!5835 (InoxSet Context!2658)) (from!2718 Int) (lastNullablePos!405 Int) (res!923499 Int) (totalInput!3092 BalanceConc!15556)) )
))
(declare-datatypes ((List!24323 0))(
  ( (Nil!24239) (Cons!24239 (h!29640 StackFrame!204) (t!196851 List!24323)) )
))
(declare-fun lt!797656 () List!24323)

(declare-fun stack!8 () List!24323)

(assert (=> b!2137745 (= lt!797656 (Cons!24239 (StackFrame!205 z!3839 from!1043 lastNullablePos!123 lt!797651 totalInput!851) stack!8))))

(assert (=> b!2137745 (= lt!797647 (ite lt!797653 from!1043 lastNullablePos!123))))

(declare-fun nullableZipper!129 ((InoxSet Context!2658)) Bool)

(assert (=> b!2137745 (= lt!797653 (nullableZipper!129 (_1!14168 lt!797648)))))

(declare-fun derivationStepZipperMem!51 ((InoxSet Context!2658) C!11664 CacheUp!1814 CacheDown!1798) tuple3!3346)

(declare-fun apply!5952 (BalanceConc!15556 Int) C!11664)

(assert (=> b!2137745 (= lt!797648 (derivationStepZipperMem!51 z!3839 (apply!5952 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2137746 () Bool)

(declare-fun e!1364806 () Bool)

(declare-fun e!1364801 () Bool)

(assert (=> b!2137746 (= e!1364806 e!1364801)))

(declare-fun b!2137747 () Bool)

(declare-fun res!923485 () Bool)

(assert (=> b!2137747 (=> (not res!923485) (not e!1364805))))

(assert (=> b!2137747 (= res!923485 (= (totalInput!3091 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2137748 () Bool)

(declare-fun res!923495 () Bool)

(assert (=> b!2137748 (=> res!923495 e!1364815)))

(assert (=> b!2137748 (= res!923495 (not (valid!2118 (_3!2143 lt!797648))))))

(declare-fun b!2137749 () Bool)

(declare-fun e!1364812 () Bool)

(declare-fun e!1364797 () Bool)

(assert (=> b!2137749 (= e!1364812 e!1364797)))

(declare-fun mapNonEmpty!12943 () Bool)

(declare-fun mapRes!12943 () Bool)

(declare-fun tp!659707 () Bool)

(declare-fun tp!659688 () Bool)

(assert (=> mapNonEmpty!12943 (= mapRes!12943 (and tp!659707 tp!659688))))

(declare-fun mapValue!12943 () List!24319)

(declare-fun mapRest!12943 () (Array (_ BitVec 32) List!24319))

(declare-fun mapKey!12945 () (_ BitVec 32))

(assert (=> mapNonEmpty!12943 (= (arr!4092 (_values!2991 (v!28808 (underlying!5617 (v!28809 (underlying!5618 (cache!3006 cacheFurthestNullable!114))))))) (store mapRest!12943 mapKey!12945 mapValue!12943))))

(declare-fun b!2137750 () Bool)

(declare-fun e!1364803 () Bool)

(declare-fun tp!659690 () Bool)

(assert (=> b!2137750 (= e!1364803 tp!659690)))

(declare-fun b!2137751 () Bool)

(declare-fun e!1364819 () Bool)

(declare-fun tp!659680 () Bool)

(assert (=> b!2137751 (= e!1364819 (and tp!659680 mapRes!12943))))

(declare-fun condMapEmpty!12943 () Bool)

(declare-fun mapDefault!12943 () List!24319)

(assert (=> b!2137751 (= condMapEmpty!12943 (= (arr!4092 (_values!2991 (v!28808 (underlying!5617 (v!28809 (underlying!5618 (cache!3006 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24319)) mapDefault!12943)))))

(declare-fun setIsEmpty!16063 () Bool)

(declare-fun setRes!16064 () Bool)

(assert (=> setIsEmpty!16063 setRes!16064))

(declare-fun b!2137752 () Bool)

(declare-fun res!923494 () Bool)

(assert (=> b!2137752 (=> res!923494 e!1364810)))

(declare-fun lostCauseZipper!105 ((InoxSet Context!2658)) Bool)

(assert (=> b!2137752 (= res!923494 (lostCauseZipper!105 z!3839))))

(declare-fun res!923481 () Bool)

(declare-fun e!1364820 () Bool)

(assert (=> b!2137753 (=> (not res!923481) (not e!1364820))))

(declare-fun forall!4946 (List!24323 Int) Bool)

(assert (=> b!2137753 (= res!923481 (forall!4946 stack!8 lambda!79783))))

(declare-fun tp!659693 () Bool)

(declare-fun tp!659685 () Bool)

(declare-fun e!1364822 () Bool)

(declare-fun array_inv!2928 (array!9169) Bool)

(assert (=> b!2137754 (= e!1364801 (and tp!659683 tp!659693 tp!659685 (array_inv!2926 (_keys!3010 (v!28812 (underlying!5621 (v!28813 (underlying!5622 (cache!3008 cacheDown!1098))))))) (array_inv!2928 (_values!2993 (v!28812 (underlying!5621 (v!28813 (underlying!5622 (cache!3008 cacheDown!1098))))))) e!1364822))))

(declare-fun b!2137755 () Bool)

(declare-fun res!923489 () Bool)

(assert (=> b!2137755 (=> res!923489 e!1364810)))

(assert (=> b!2137755 (= res!923489 (= from!1043 totalInputSize!296))))

(declare-fun setElem!16063 () Context!2658)

(declare-fun setNonEmpty!16063 () Bool)

(declare-fun tp!659692 () Bool)

(declare-fun inv!31903 (Context!2658) Bool)

(assert (=> setNonEmpty!16063 (= setRes!16064 (and tp!659692 (inv!31903 setElem!16063) e!1364803))))

(declare-fun setRest!16064 () (InoxSet Context!2658))

(assert (=> setNonEmpty!16063 (= z!3839 ((_ map or) (store ((as const (Array Context!2658 Bool)) false) setElem!16063 true) setRest!16064))))

(assert (=> b!2137756 (= e!1364826 e!1364815)))

(declare-fun res!923493 () Bool)

(assert (=> b!2137756 (=> res!923493 e!1364815)))

(assert (=> b!2137756 (= res!923493 (not (forall!4946 stack!8 lambda!79784)))))

(assert (=> b!2137756 (forall!4946 stack!8 lambda!79784)))

(declare-datatypes ((Unit!37673 0))(
  ( (Unit!37674) )
))
(declare-fun lt!797654 () Unit!37673)

(declare-fun lemmaStackPreservesForEqualRes!22 (List!24323 Int Int) Unit!37673)

(assert (=> b!2137756 (= lt!797654 (lemmaStackPreservesForEqualRes!22 stack!8 lt!797651 lt!797657))))

(assert (=> b!2137756 (forall!4946 stack!8 lambda!79782)))

(declare-fun b!2137757 () Bool)

(declare-fun res!923479 () Bool)

(assert (=> b!2137757 (=> (not res!923479) (not e!1364805))))

(declare-fun valid!2119 (CacheFurthestNullable!762) Bool)

(assert (=> b!2137757 (= res!923479 (valid!2119 cacheFurthestNullable!114))))

(declare-fun b!2137758 () Bool)

(assert (=> b!2137758 (= e!1364797 e!1364829)))

(declare-fun e!1364830 () Bool)

(declare-fun setRes!16063 () Bool)

(declare-fun b!2137759 () Bool)

(declare-fun e!1364831 () Bool)

(declare-fun inv!31904 (BalanceConc!15556) Bool)

(assert (=> b!2137759 (= e!1364831 (and setRes!16063 (inv!31904 (totalInput!3092 (h!29640 stack!8))) e!1364830))))

(declare-fun condSetEmpty!16064 () Bool)

(assert (=> b!2137759 (= condSetEmpty!16064 (= (z!5835 (h!29640 stack!8)) ((as const (Array Context!2658 Bool)) false)))))

(declare-fun b!2137760 () Bool)

(declare-fun e!1364800 () Bool)

(assert (=> b!2137760 (= e!1364804 e!1364800)))

(declare-fun b!2137761 () Bool)

(declare-fun e!1364833 () Bool)

(assert (=> b!2137761 (= e!1364833 e!1364806)))

(declare-fun res!923484 () Bool)

(declare-fun e!1364809 () Bool)

(assert (=> start!207670 (=> (not res!923484) (not e!1364809))))

(assert (=> start!207670 (= res!923484 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207670 e!1364809))

(declare-fun e!1364811 () Bool)

(declare-fun inv!31905 (CacheFurthestNullable!762) Bool)

(assert (=> start!207670 (and (inv!31905 cacheFurthestNullable!114) e!1364811)))

(assert (=> start!207670 true))

(declare-fun e!1364808 () Bool)

(declare-fun inv!31906 (CacheDown!1798) Bool)

(assert (=> start!207670 (and (inv!31906 cacheDown!1098) e!1364808)))

(declare-fun e!1364825 () Bool)

(declare-fun inv!31907 (CacheUp!1814) Bool)

(assert (=> start!207670 (and (inv!31907 cacheUp!979) e!1364825)))

(declare-fun condSetEmpty!16063 () Bool)

(assert (=> start!207670 (= condSetEmpty!16063 (= z!3839 ((as const (Array Context!2658 Bool)) false)))))

(assert (=> start!207670 setRes!16064))

(declare-fun e!1364798 () Bool)

(assert (=> start!207670 (and (inv!31904 totalInput!851) e!1364798)))

(declare-fun e!1364828 () Bool)

(assert (=> start!207670 e!1364828))

(declare-fun b!2137762 () Bool)

(declare-fun tp!659702 () Bool)

(declare-fun mapRes!12945 () Bool)

(assert (=> b!2137762 (= e!1364807 (and tp!659702 mapRes!12945))))

(declare-fun condMapEmpty!12945 () Bool)

(declare-fun mapDefault!12945 () List!24321)

(assert (=> b!2137762 (= condMapEmpty!12945 (= (arr!4093 (_values!2992 (v!28810 (underlying!5619 (v!28811 (underlying!5620 (cache!3007 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24321)) mapDefault!12945)))))

(declare-fun b!2137763 () Bool)

(declare-fun res!923486 () Bool)

(assert (=> b!2137763 (=> res!923486 e!1364815)))

(assert (=> b!2137763 (= res!923486 (not (forall!4946 lt!797656 lambda!79784)))))

(declare-fun b!2137764 () Bool)

(declare-fun res!923482 () Bool)

(assert (=> b!2137764 (=> res!923482 e!1364815)))

(assert (=> b!2137764 (= res!923482 (not (forall!4946 lt!797656 lambda!79784)))))

(declare-fun mapIsEmpty!12943 () Bool)

(assert (=> mapIsEmpty!12943 mapRes!12945))

(declare-fun b!2137765 () Bool)

(declare-fun res!923498 () Bool)

(assert (=> b!2137765 (=> res!923498 e!1364815)))

(declare-fun valid!2120 (CacheUp!1814) Bool)

(assert (=> b!2137765 (= res!923498 (not (valid!2120 (_2!14168 lt!797648))))))

(declare-fun b!2137766 () Bool)

(declare-fun res!923492 () Bool)

(assert (=> b!2137766 (=> (not res!923492) (not e!1364805))))

(declare-fun e!1364813 () Bool)

(assert (=> b!2137766 (= res!923492 e!1364813)))

(declare-fun res!923483 () Bool)

(assert (=> b!2137766 (=> res!923483 e!1364813)))

(assert (=> b!2137766 (= res!923483 (not (nullableZipper!129 z!3839)))))

(declare-fun b!2137767 () Bool)

(assert (=> b!2137767 (= e!1364815 (forall!4946 lt!797656 lambda!79783))))

(declare-fun b!2137768 () Bool)

(declare-fun tp!659701 () Bool)

(declare-fun inv!31908 (Conc!7897) Bool)

(assert (=> b!2137768 (= e!1364830 (and (inv!31908 (c!340396 (totalInput!3092 (h!29640 stack!8)))) tp!659701))))

(declare-fun tp!659691 () Bool)

(declare-fun setElem!16064 () Context!2658)

(declare-fun e!1364816 () Bool)

(declare-fun setNonEmpty!16064 () Bool)

(assert (=> setNonEmpty!16064 (= setRes!16063 (and tp!659691 (inv!31903 setElem!16064) e!1364816))))

(declare-fun setRest!16063 () (InoxSet Context!2658))

(assert (=> setNonEmpty!16064 (= (z!5835 (h!29640 stack!8)) ((_ map or) (store ((as const (Array Context!2658 Bool)) false) setElem!16064 true) setRest!16063))))

(declare-fun b!2137769 () Bool)

(declare-fun e!1364834 () Bool)

(declare-fun lt!797649 () MutLongMap!2713)

(assert (=> b!2137769 (= e!1364834 (and e!1364833 ((_ is LongMap!2713) lt!797649)))))

(assert (=> b!2137769 (= lt!797649 (v!28813 (underlying!5622 (cache!3008 cacheDown!1098))))))

(declare-fun mapNonEmpty!12944 () Bool)

(declare-fun mapRes!12944 () Bool)

(declare-fun tp!659684 () Bool)

(declare-fun tp!659697 () Bool)

(assert (=> mapNonEmpty!12944 (= mapRes!12944 (and tp!659684 tp!659697))))

(declare-fun mapKey!12943 () (_ BitVec 32))

(declare-fun mapRest!12945 () (Array (_ BitVec 32) List!24322))

(declare-fun mapValue!12945 () List!24322)

(assert (=> mapNonEmpty!12944 (= (arr!4094 (_values!2993 (v!28812 (underlying!5621 (v!28813 (underlying!5622 (cache!3008 cacheDown!1098))))))) (store mapRest!12945 mapKey!12943 mapValue!12945))))

(declare-fun mapIsEmpty!12944 () Bool)

(assert (=> mapIsEmpty!12944 mapRes!12944))

(declare-fun b!2137770 () Bool)

(declare-fun e!1364824 () Bool)

(assert (=> b!2137770 (= e!1364800 e!1364824)))

(declare-fun b!2137771 () Bool)

(declare-fun res!923497 () Bool)

(assert (=> b!2137771 (=> res!923497 e!1364815)))

(assert (=> b!2137771 (= res!923497 (not (forall!4946 lt!797656 lambda!79783)))))

(declare-fun e!1364821 () Bool)

(assert (=> b!2137772 (= e!1364821 (and e!1364834 tp!659694))))

(declare-fun b!2137773 () Bool)

(assert (=> b!2137773 (= e!1364809 e!1364805)))

(declare-fun res!923490 () Bool)

(assert (=> b!2137773 (=> (not res!923490) (not e!1364805))))

(assert (=> b!2137773 (= res!923490 (and (= totalInputSize!296 lt!797652) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18958 (BalanceConc!15556) Int)

(assert (=> b!2137773 (= lt!797652 (size!18958 totalInput!851))))

(declare-fun b!2137774 () Bool)

(assert (=> b!2137774 (= e!1364820 (not e!1364810))))

(declare-fun res!923488 () Bool)

(assert (=> b!2137774 (=> res!923488 e!1364810)))

(declare-datatypes ((Option!4922 0))(
  ( (None!4921) (Some!4921 (v!28814 Int)) )
))
(declare-fun get!7411 (CacheFurthestNullable!762 (InoxSet Context!2658) Int Int) Option!4922)

(assert (=> b!2137774 (= res!923488 ((_ is Some!4921) (get!7411 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2137774 (forall!4946 stack!8 lambda!79782)))

(declare-fun e!1364823 () Bool)

(declare-fun e!1364832 () Bool)

(declare-fun b!2137775 () Bool)

(assert (=> b!2137775 (= e!1364811 (and e!1364832 (inv!31904 (totalInput!3091 cacheFurthestNullable!114)) e!1364823))))

(declare-fun e!1364817 () Bool)

(declare-fun e!1364802 () Bool)

(assert (=> b!2137776 (= e!1364817 (and e!1364802 tp!659704))))

(declare-fun b!2137777 () Bool)

(declare-fun tp!659705 () Bool)

(assert (=> b!2137777 (= e!1364816 tp!659705)))

(declare-fun b!2137778 () Bool)

(assert (=> b!2137778 (= e!1364813 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun mapNonEmpty!12945 () Bool)

(declare-fun tp!659706 () Bool)

(declare-fun tp!659695 () Bool)

(assert (=> mapNonEmpty!12945 (= mapRes!12945 (and tp!659706 tp!659695))))

(declare-fun mapRest!12944 () (Array (_ BitVec 32) List!24321))

(declare-fun mapKey!12944 () (_ BitVec 32))

(declare-fun mapValue!12944 () List!24321)

(assert (=> mapNonEmpty!12945 (= (arr!4093 (_values!2992 (v!28810 (underlying!5619 (v!28811 (underlying!5620 (cache!3007 cacheUp!979))))))) (store mapRest!12944 mapKey!12944 mapValue!12944))))

(declare-fun b!2137779 () Bool)

(declare-fun tp!659708 () Bool)

(assert (=> b!2137779 (= e!1364822 (and tp!659708 mapRes!12944))))

(declare-fun condMapEmpty!12944 () Bool)

(declare-fun mapDefault!12944 () List!24322)

(assert (=> b!2137779 (= condMapEmpty!12944 (= (arr!4094 (_values!2993 (v!28812 (underlying!5621 (v!28813 (underlying!5622 (cache!3008 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24322)) mapDefault!12944)))))

(declare-fun b!2137780 () Bool)

(declare-fun tp!659687 () Bool)

(declare-fun inv!31909 (StackFrame!204) Bool)

(assert (=> b!2137780 (= e!1364828 (and (inv!31909 (h!29640 stack!8)) e!1364831 tp!659687))))

(declare-fun b!2137781 () Bool)

(declare-fun tp!659703 () Bool)

(assert (=> b!2137781 (= e!1364798 (and (inv!31908 (c!340396 totalInput!851)) tp!659703))))

(declare-fun mapIsEmpty!12945 () Bool)

(assert (=> mapIsEmpty!12945 mapRes!12943))

(declare-fun b!2137782 () Bool)

(declare-fun res!923491 () Bool)

(assert (=> b!2137782 (=> (not res!923491) (not e!1364805))))

(assert (=> b!2137782 (= res!923491 (valid!2120 cacheUp!979))))

(declare-fun b!2137783 () Bool)

(assert (=> b!2137783 (= e!1364808 e!1364821)))

(assert (=> b!2137784 (= e!1364832 (and e!1364818 tp!659681))))

(declare-fun b!2137785 () Bool)

(declare-fun tp!659686 () Bool)

(assert (=> b!2137785 (= e!1364823 (and (inv!31908 (c!340396 (totalInput!3091 cacheFurthestNullable!114))) tp!659686))))

(assert (=> b!2137786 (= e!1364805 e!1364820)))

(declare-fun res!923487 () Bool)

(assert (=> b!2137786 (=> (not res!923487) (not e!1364820))))

(assert (=> b!2137786 (= res!923487 (forall!4946 stack!8 lambda!79782))))

(assert (=> b!2137786 (= lt!797651 (furthestNullablePosition!65 z!3839 from!1043 totalInput!851 lt!797652 lastNullablePos!123))))

(declare-fun b!2137787 () Bool)

(assert (=> b!2137787 (= e!1364825 e!1364817)))

(declare-fun setIsEmpty!16064 () Bool)

(assert (=> setIsEmpty!16064 setRes!16063))

(declare-fun tp!659689 () Bool)

(declare-fun tp!659696 () Bool)

(declare-fun array_inv!2929 (array!9165) Bool)

(assert (=> b!2137788 (= e!1364824 (and tp!659699 tp!659696 tp!659689 (array_inv!2926 (_keys!3008 (v!28808 (underlying!5617 (v!28809 (underlying!5618 (cache!3006 cacheFurthestNullable!114))))))) (array_inv!2929 (_values!2991 (v!28808 (underlying!5617 (v!28809 (underlying!5618 (cache!3006 cacheFurthestNullable!114))))))) e!1364819))))

(declare-fun b!2137789 () Bool)

(declare-fun lt!797650 () MutLongMap!2712)

(assert (=> b!2137789 (= e!1364802 (and e!1364812 ((_ is LongMap!2712) lt!797650)))))

(assert (=> b!2137789 (= lt!797650 (v!28811 (underlying!5620 (cache!3007 cacheUp!979))))))

(assert (= (and start!207670 res!923484) b!2137773))

(assert (= (and b!2137773 res!923490) b!2137766))

(assert (= (and b!2137766 (not res!923483)) b!2137778))

(assert (= (and b!2137766 res!923492) b!2137782))

(assert (= (and b!2137782 res!923491) b!2137744))

(assert (= (and b!2137744 res!923480) b!2137757))

(assert (= (and b!2137757 res!923479) b!2137747))

(assert (= (and b!2137747 res!923485) b!2137786))

(assert (= (and b!2137786 res!923487) b!2137753))

(assert (= (and b!2137753 res!923481) b!2137774))

(assert (= (and b!2137774 (not res!923488)) b!2137755))

(assert (= (and b!2137755 (not res!923489)) b!2137752))

(assert (= (and b!2137752 (not res!923494)) b!2137745))

(assert (= (and b!2137745 (not res!923496)) b!2137756))

(assert (= (and b!2137756 (not res!923493)) b!2137764))

(assert (= (and b!2137764 (not res!923482)) b!2137771))

(assert (= (and b!2137771 (not res!923497)) b!2137742))

(assert (= (and b!2137742 (not res!923478)) b!2137765))

(assert (= (and b!2137765 (not res!923498)) b!2137748))

(assert (= (and b!2137748 (not res!923495)) b!2137763))

(assert (= (and b!2137763 (not res!923486)) b!2137767))

(assert (= (and b!2137751 condMapEmpty!12943) mapIsEmpty!12945))

(assert (= (and b!2137751 (not condMapEmpty!12943)) mapNonEmpty!12943))

(assert (= b!2137788 b!2137751))

(assert (= b!2137770 b!2137788))

(assert (= b!2137760 b!2137770))

(assert (= (and b!2137741 ((_ is LongMap!2711) (v!28809 (underlying!5618 (cache!3006 cacheFurthestNullable!114))))) b!2137760))

(assert (= b!2137784 b!2137741))

(assert (= (and b!2137775 ((_ is HashMap!2625) (cache!3006 cacheFurthestNullable!114))) b!2137784))

(assert (= b!2137775 b!2137785))

(assert (= start!207670 b!2137775))

(assert (= (and b!2137779 condMapEmpty!12944) mapIsEmpty!12944))

(assert (= (and b!2137779 (not condMapEmpty!12944)) mapNonEmpty!12944))

(assert (= b!2137754 b!2137779))

(assert (= b!2137746 b!2137754))

(assert (= b!2137761 b!2137746))

(assert (= (and b!2137769 ((_ is LongMap!2713) (v!28813 (underlying!5622 (cache!3008 cacheDown!1098))))) b!2137761))

(assert (= b!2137772 b!2137769))

(assert (= (and b!2137783 ((_ is HashMap!2627) (cache!3008 cacheDown!1098))) b!2137772))

(assert (= start!207670 b!2137783))

(assert (= (and b!2137762 condMapEmpty!12945) mapIsEmpty!12943))

(assert (= (and b!2137762 (not condMapEmpty!12945)) mapNonEmpty!12945))

(assert (= b!2137743 b!2137762))

(assert (= b!2137758 b!2137743))

(assert (= b!2137749 b!2137758))

(assert (= (and b!2137789 ((_ is LongMap!2712) (v!28811 (underlying!5620 (cache!3007 cacheUp!979))))) b!2137749))

(assert (= b!2137776 b!2137789))

(assert (= (and b!2137787 ((_ is HashMap!2626) (cache!3007 cacheUp!979))) b!2137776))

(assert (= start!207670 b!2137787))

(assert (= (and start!207670 condSetEmpty!16063) setIsEmpty!16063))

(assert (= (and start!207670 (not condSetEmpty!16063)) setNonEmpty!16063))

(assert (= setNonEmpty!16063 b!2137750))

(assert (= start!207670 b!2137781))

(assert (= (and b!2137759 condSetEmpty!16064) setIsEmpty!16064))

(assert (= (and b!2137759 (not condSetEmpty!16064)) setNonEmpty!16064))

(assert (= setNonEmpty!16064 b!2137777))

(assert (= b!2137759 b!2137768))

(assert (= b!2137780 b!2137759))

(assert (= (and start!207670 ((_ is Cons!24239) stack!8)) b!2137780))

(declare-fun m!2584542 () Bool)

(assert (=> b!2137754 m!2584542))

(declare-fun m!2584544 () Bool)

(assert (=> b!2137754 m!2584544))

(declare-fun m!2584546 () Bool)

(assert (=> b!2137768 m!2584546))

(declare-fun m!2584548 () Bool)

(assert (=> b!2137773 m!2584548))

(declare-fun m!2584550 () Bool)

(assert (=> b!2137767 m!2584550))

(declare-fun m!2584552 () Bool)

(assert (=> b!2137745 m!2584552))

(declare-fun m!2584554 () Bool)

(assert (=> b!2137745 m!2584554))

(declare-fun m!2584556 () Bool)

(assert (=> b!2137745 m!2584556))

(assert (=> b!2137745 m!2584556))

(declare-fun m!2584558 () Bool)

(assert (=> b!2137745 m!2584558))

(declare-fun m!2584560 () Bool)

(assert (=> b!2137744 m!2584560))

(declare-fun m!2584562 () Bool)

(assert (=> b!2137753 m!2584562))

(declare-fun m!2584564 () Bool)

(assert (=> b!2137785 m!2584564))

(declare-fun m!2584566 () Bool)

(assert (=> b!2137765 m!2584566))

(declare-fun m!2584568 () Bool)

(assert (=> setNonEmpty!16063 m!2584568))

(declare-fun m!2584570 () Bool)

(assert (=> b!2137775 m!2584570))

(declare-fun m!2584572 () Bool)

(assert (=> b!2137764 m!2584572))

(declare-fun m!2584574 () Bool)

(assert (=> mapNonEmpty!12945 m!2584574))

(declare-fun m!2584576 () Bool)

(assert (=> b!2137780 m!2584576))

(declare-fun m!2584578 () Bool)

(assert (=> mapNonEmpty!12943 m!2584578))

(declare-fun m!2584580 () Bool)

(assert (=> start!207670 m!2584580))

(declare-fun m!2584582 () Bool)

(assert (=> start!207670 m!2584582))

(declare-fun m!2584584 () Bool)

(assert (=> start!207670 m!2584584))

(declare-fun m!2584586 () Bool)

(assert (=> start!207670 m!2584586))

(declare-fun m!2584588 () Bool)

(assert (=> b!2137766 m!2584588))

(declare-fun m!2584590 () Bool)

(assert (=> b!2137752 m!2584590))

(declare-fun m!2584592 () Bool)

(assert (=> b!2137757 m!2584592))

(assert (=> b!2137763 m!2584572))

(declare-fun m!2584594 () Bool)

(assert (=> b!2137774 m!2584594))

(declare-fun m!2584596 () Bool)

(assert (=> b!2137774 m!2584596))

(assert (=> b!2137771 m!2584550))

(declare-fun m!2584598 () Bool)

(assert (=> b!2137743 m!2584598))

(declare-fun m!2584600 () Bool)

(assert (=> b!2137743 m!2584600))

(declare-fun m!2584602 () Bool)

(assert (=> b!2137782 m!2584602))

(declare-fun m!2584604 () Bool)

(assert (=> setNonEmpty!16064 m!2584604))

(declare-fun m!2584606 () Bool)

(assert (=> b!2137756 m!2584606))

(assert (=> b!2137756 m!2584606))

(declare-fun m!2584608 () Bool)

(assert (=> b!2137756 m!2584608))

(assert (=> b!2137756 m!2584596))

(declare-fun m!2584610 () Bool)

(assert (=> b!2137788 m!2584610))

(declare-fun m!2584612 () Bool)

(assert (=> b!2137788 m!2584612))

(declare-fun m!2584614 () Bool)

(assert (=> mapNonEmpty!12944 m!2584614))

(declare-fun m!2584616 () Bool)

(assert (=> b!2137748 m!2584616))

(declare-fun m!2584618 () Bool)

(assert (=> b!2137781 m!2584618))

(assert (=> b!2137786 m!2584596))

(declare-fun m!2584620 () Bool)

(assert (=> b!2137786 m!2584620))

(declare-fun m!2584622 () Bool)

(assert (=> b!2137759 m!2584622))

(check-sat (not b!2137788) b_and!172353 b_and!172345 (not b_next!63475) (not b!2137752) (not b!2137759) (not b!2137785) (not b!2137781) (not b!2137766) (not b!2137753) b_and!172351 (not mapNonEmpty!12943) (not b!2137773) (not b!2137748) (not b!2137763) (not mapNonEmpty!12944) (not b_next!63469) (not b!2137777) (not b!2137762) (not b!2137743) (not b!2137750) b_and!172347 (not b!2137768) (not setNonEmpty!16064) (not b!2137771) (not b_next!63471) (not b!2137774) (not b!2137756) (not b!2137751) (not b!2137767) (not b!2137780) (not b_next!63477) (not b!2137745) (not start!207670) (not b!2137786) b_and!172349 (not b!2137775) (not b_next!63473) (not b!2137782) (not b!2137754) (not b!2137765) (not b!2137744) (not b!2137757) (not b!2137764) (not b_next!63479) b_and!172355 (not setNonEmpty!16063) (not mapNonEmpty!12945) (not b!2137779))
(check-sat b_and!172351 b_and!172353 (not b_next!63469) b_and!172347 b_and!172345 (not b_next!63471) (not b_next!63477) (not b_next!63475) b_and!172349 (not b_next!63473) (not b_next!63479) b_and!172355)
