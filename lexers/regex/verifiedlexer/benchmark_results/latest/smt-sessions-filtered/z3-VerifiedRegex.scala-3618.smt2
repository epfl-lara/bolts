; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207512 () Bool)

(assert start!207512)

(declare-fun b!2129922 () Bool)

(declare-fun b_free!62093 () Bool)

(declare-fun b_next!62797 () Bool)

(assert (=> b!2129922 (= b_free!62093 (not b_next!62797))))

(declare-fun tp!654634 () Bool)

(declare-fun b_and!171673 () Bool)

(assert (=> b!2129922 (= tp!654634 b_and!171673)))

(declare-fun b!2129933 () Bool)

(declare-fun b_free!62095 () Bool)

(declare-fun b_next!62799 () Bool)

(assert (=> b!2129933 (= b_free!62095 (not b_next!62799))))

(declare-fun tp!654625 () Bool)

(declare-fun b_and!171675 () Bool)

(assert (=> b!2129933 (= tp!654625 b_and!171675)))

(declare-fun b!2129911 () Bool)

(declare-fun b_free!62097 () Bool)

(declare-fun b_next!62801 () Bool)

(assert (=> b!2129911 (= b_free!62097 (not b_next!62801))))

(declare-fun tp!654628 () Bool)

(declare-fun b_and!171677 () Bool)

(assert (=> b!2129911 (= tp!654628 b_and!171677)))

(declare-fun b!2129920 () Bool)

(declare-fun b_free!62099 () Bool)

(declare-fun b_next!62803 () Bool)

(assert (=> b!2129920 (= b_free!62099 (not b_next!62803))))

(declare-fun tp!654632 () Bool)

(declare-fun b_and!171679 () Bool)

(assert (=> b!2129920 (= tp!654632 b_and!171679)))

(declare-fun b!2129943 () Bool)

(declare-fun b_free!62101 () Bool)

(declare-fun b_next!62805 () Bool)

(assert (=> b!2129943 (= b_free!62101 (not b_next!62805))))

(declare-fun tp!654624 () Bool)

(declare-fun b_and!171681 () Bool)

(assert (=> b!2129943 (= tp!654624 b_and!171681)))

(declare-fun b!2129946 () Bool)

(declare-fun b_free!62103 () Bool)

(declare-fun b_next!62807 () Bool)

(assert (=> b!2129946 (= b_free!62103 (not b_next!62807))))

(declare-fun tp!654637 () Bool)

(declare-fun b_and!171683 () Bool)

(assert (=> b!2129946 (= tp!654637 b_and!171683)))

(declare-fun b!2129910 () Bool)

(assert (=> b!2129910 true))

(declare-fun bs!444228 () Bool)

(declare-fun b!2129950 () Bool)

(assert (= bs!444228 (and b!2129950 b!2129910)))

(declare-fun lambda!79101 () Int)

(declare-fun lambda!79100 () Int)

(assert (=> bs!444228 (not (= lambda!79101 lambda!79100))))

(assert (=> b!2129950 true))

(declare-fun e!1358334 () Bool)

(declare-fun e!1358299 () Bool)

(assert (=> b!2129910 (= e!1358334 e!1358299)))

(declare-fun res!920900 () Bool)

(assert (=> b!2129910 (=> (not res!920900) (not e!1358299))))

(declare-datatypes ((C!11552 0))(
  ( (C!11553 (val!6762 Int)) )
))
(declare-datatypes ((Regex!5703 0))(
  ( (ElementMatch!5703 (c!340167 C!11552)) (Concat!10005 (regOne!11918 Regex!5703) (regTwo!11918 Regex!5703)) (EmptyExpr!5703) (Star!5703 (reg!6032 Regex!5703)) (EmptyLang!5703) (Union!5703 (regOne!11919 Regex!5703) (regTwo!11919 Regex!5703)) )
))
(declare-datatypes ((List!23998 0))(
  ( (Nil!23914) (Cons!23914 (h!29315 Regex!5703) (t!196526 List!23998)) )
))
(declare-datatypes ((Context!2546 0))(
  ( (Context!2547 (exprs!1773 List!23998)) )
))
(declare-datatypes ((List!23999 0))(
  ( (Nil!23915) (Cons!23915 (h!29316 C!11552) (t!196527 List!23999)) )
))
(declare-datatypes ((IArray!15687 0))(
  ( (IArray!15688 (innerList!7901 List!23999)) )
))
(declare-datatypes ((Conc!7841 0))(
  ( (Node!7841 (left!18457 Conc!7841) (right!18787 Conc!7841) (csize!15912 Int) (cheight!8052 Int)) (Leaf!11460 (xs!10783 IArray!15687) (csize!15913 Int)) (Empty!7841) )
))
(declare-datatypes ((BalanceConc!15444 0))(
  ( (BalanceConc!15445 (c!340168 Conc!7841)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!102 0))(
  ( (StackFrame!103 (z!5779 (InoxSet Context!2546)) (from!2665 Int) (lastNullablePos!352 Int) (res!920902 Int) (totalInput!2984 BalanceConc!15444)) )
))
(declare-datatypes ((List!24000 0))(
  ( (Nil!23916) (Cons!23916 (h!29317 StackFrame!102) (t!196528 List!24000)) )
))
(declare-fun stack!8 () List!24000)

(declare-fun forall!4900 (List!24000 Int) Bool)

(assert (=> b!2129910 (= res!920900 (forall!4900 stack!8 lambda!79100))))

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!796312 () Int)

(declare-fun z!3839 () (InoxSet Context!2546))

(declare-fun from!1043 () Int)

(declare-fun lt!796311 () Int)

(declare-fun totalInput!851 () BalanceConc!15444)

(declare-fun furthestNullablePosition!28 ((InoxSet Context!2546) Int BalanceConc!15444 Int Int) Int)

(assert (=> b!2129910 (= lt!796312 (furthestNullablePosition!28 z!3839 from!1043 totalInput!851 lt!796311 lastNullablePos!123))))

(declare-datatypes ((tuple3!3072 0))(
  ( (tuple3!3073 (_1!13821 (InoxSet Context!2546)) (_2!13821 Int) (_3!2006 Int)) )
))
(declare-datatypes ((tuple2!23630 0))(
  ( (tuple2!23631 (_1!13822 tuple3!3072) (_2!13822 Int)) )
))
(declare-datatypes ((List!24001 0))(
  ( (Nil!23917) (Cons!23917 (h!29318 tuple2!23630) (t!196529 List!24001)) )
))
(declare-datatypes ((array!8735 0))(
  ( (array!8736 (arr!3879 (Array (_ BitVec 32) (_ BitVec 64))) (size!18705 (_ BitVec 32))) )
))
(declare-datatypes ((array!8737 0))(
  ( (array!8738 (arr!3880 (Array (_ BitVec 32) List!24001)) (size!18706 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5110 0))(
  ( (LongMapFixedSize!5111 (defaultEntry!2920 Int) (mask!6722 (_ BitVec 32)) (extraKeys!2803 (_ BitVec 32)) (zeroValue!2813 List!24001) (minValue!2813 List!24001) (_size!5161 (_ BitVec 32)) (_keys!2852 array!8735) (_values!2835 array!8737) (_vacant!2616 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10045 0))(
  ( (Cell!10046 (v!28460 LongMapFixedSize!5110)) )
))
(declare-datatypes ((MutLongMap!2555 0))(
  ( (LongMap!2555 (underlying!5305 Cell!10045)) (MutLongMapExt!2554 (__x!15841 Int)) )
))
(declare-datatypes ((Cell!10047 0))(
  ( (Cell!10048 (v!28461 MutLongMap!2555)) )
))
(declare-datatypes ((Hashable!2469 0))(
  ( (HashableExt!2468 (__x!15842 Int)) )
))
(declare-datatypes ((MutableMap!2469 0))(
  ( (MutableMapExt!2468 (__x!15843 Int)) (HashMap!2469 (underlying!5306 Cell!10047) (hashF!4392 Hashable!2469) (_size!5162 (_ BitVec 32)) (defaultValue!2631 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!652 0))(
  ( (CacheFurthestNullable!653 (cache!2850 MutableMap!2469) (totalInput!2985 BalanceConc!15444)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!652)

(declare-fun tp!654616 () Bool)

(declare-fun e!1358324 () Bool)

(declare-fun tp!654626 () Bool)

(declare-fun e!1358306 () Bool)

(declare-fun array_inv!2775 (array!8735) Bool)

(declare-fun array_inv!2776 (array!8737) Bool)

(assert (=> b!2129911 (= e!1358306 (and tp!654628 tp!654616 tp!654626 (array_inv!2775 (_keys!2852 (v!28460 (underlying!5305 (v!28461 (underlying!5306 (cache!2850 cacheFurthestNullable!114))))))) (array_inv!2776 (_values!2835 (v!28460 (underlying!5305 (v!28461 (underlying!5306 (cache!2850 cacheFurthestNullable!114))))))) e!1358324))))

(declare-fun b!2129912 () Bool)

(declare-fun e!1358332 () Bool)

(declare-fun e!1358317 () Bool)

(assert (=> b!2129912 (= e!1358332 e!1358317)))

(declare-fun b!2129913 () Bool)

(declare-fun e!1358300 () Bool)

(declare-fun tp!654639 () Bool)

(declare-fun inv!31537 (Conc!7841) Bool)

(assert (=> b!2129913 (= e!1358300 (and (inv!31537 (c!340168 totalInput!851)) tp!654639))))

(declare-fun b!2129914 () Bool)

(declare-fun e!1358298 () Bool)

(assert (=> b!2129914 (= e!1358298 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2129915 () Bool)

(declare-fun e!1358322 () Bool)

(declare-fun e!1358311 () Bool)

(assert (=> b!2129915 (= e!1358322 e!1358311)))

(declare-fun b!2129916 () Bool)

(declare-fun res!920898 () Bool)

(assert (=> b!2129916 (=> (not res!920898) (not e!1358334))))

(declare-fun valid!2012 (CacheFurthestNullable!652) Bool)

(assert (=> b!2129916 (= res!920898 (valid!2012 cacheFurthestNullable!114))))

(declare-fun b!2129917 () Bool)

(declare-fun e!1358321 () Bool)

(declare-fun e!1358304 () Bool)

(declare-datatypes ((tuple2!23632 0))(
  ( (tuple2!23633 (_1!13823 Context!2546) (_2!13823 C!11552)) )
))
(declare-datatypes ((tuple2!23634 0))(
  ( (tuple2!23635 (_1!13824 tuple2!23632) (_2!13824 (InoxSet Context!2546))) )
))
(declare-datatypes ((List!24002 0))(
  ( (Nil!23918) (Cons!23918 (h!29319 tuple2!23634) (t!196530 List!24002)) )
))
(declare-datatypes ((array!8739 0))(
  ( (array!8740 (arr!3881 (Array (_ BitVec 32) List!24002)) (size!18707 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5112 0))(
  ( (LongMapFixedSize!5113 (defaultEntry!2921 Int) (mask!6723 (_ BitVec 32)) (extraKeys!2804 (_ BitVec 32)) (zeroValue!2814 List!24002) (minValue!2814 List!24002) (_size!5163 (_ BitVec 32)) (_keys!2853 array!8735) (_values!2836 array!8739) (_vacant!2617 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10049 0))(
  ( (Cell!10050 (v!28462 LongMapFixedSize!5112)) )
))
(declare-datatypes ((MutLongMap!2556 0))(
  ( (LongMap!2556 (underlying!5307 Cell!10049)) (MutLongMapExt!2555 (__x!15844 Int)) )
))
(declare-fun lt!796314 () MutLongMap!2556)

(get-info :version)

(assert (=> b!2129917 (= e!1358321 (and e!1358304 ((_ is LongMap!2556) lt!796314)))))

(declare-datatypes ((Cell!10051 0))(
  ( (Cell!10052 (v!28463 MutLongMap!2556)) )
))
(declare-datatypes ((Hashable!2470 0))(
  ( (HashableExt!2469 (__x!15845 Int)) )
))
(declare-datatypes ((MutableMap!2470 0))(
  ( (MutableMapExt!2469 (__x!15846 Int)) (HashMap!2470 (underlying!5308 Cell!10051) (hashF!4393 Hashable!2470) (_size!5164 (_ BitVec 32)) (defaultValue!2632 Int)) )
))
(declare-datatypes ((CacheUp!1714 0))(
  ( (CacheUp!1715 (cache!2851 MutableMap!2470)) )
))
(declare-fun cacheUp!979 () CacheUp!1714)

(assert (=> b!2129917 (= lt!796314 (v!28463 (underlying!5308 (cache!2851 cacheUp!979))))))

(declare-fun mapIsEmpty!12430 () Bool)

(declare-fun mapRes!12430 () Bool)

(assert (=> mapIsEmpty!12430 mapRes!12430))

(declare-fun b!2129918 () Bool)

(declare-fun e!1358318 () Bool)

(declare-fun e!1358330 () Bool)

(declare-fun setRes!15684 () Bool)

(declare-fun inv!31538 (BalanceConc!15444) Bool)

(assert (=> b!2129918 (= e!1358330 (and setRes!15684 (inv!31538 (totalInput!2984 (h!29317 stack!8))) e!1358318))))

(declare-fun condSetEmpty!15684 () Bool)

(assert (=> b!2129918 (= condSetEmpty!15684 (= (z!5779 (h!29317 stack!8)) ((as const (Array Context!2546 Bool)) false)))))

(declare-fun mapNonEmpty!12430 () Bool)

(declare-fun tp!654630 () Bool)

(declare-fun tp!654622 () Bool)

(assert (=> mapNonEmpty!12430 (= mapRes!12430 (and tp!654630 tp!654622))))

(declare-datatypes ((tuple3!3074 0))(
  ( (tuple3!3075 (_1!13825 Regex!5703) (_2!13825 Context!2546) (_3!2007 C!11552)) )
))
(declare-datatypes ((tuple2!23636 0))(
  ( (tuple2!23637 (_1!13826 tuple3!3074) (_2!13826 (InoxSet Context!2546))) )
))
(declare-datatypes ((List!24003 0))(
  ( (Nil!23919) (Cons!23919 (h!29320 tuple2!23636) (t!196531 List!24003)) )
))
(declare-fun mapValue!12430 () List!24003)

(declare-datatypes ((Hashable!2471 0))(
  ( (HashableExt!2470 (__x!15847 Int)) )
))
(declare-datatypes ((array!8741 0))(
  ( (array!8742 (arr!3882 (Array (_ BitVec 32) List!24003)) (size!18708 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5114 0))(
  ( (LongMapFixedSize!5115 (defaultEntry!2922 Int) (mask!6724 (_ BitVec 32)) (extraKeys!2805 (_ BitVec 32)) (zeroValue!2815 List!24003) (minValue!2815 List!24003) (_size!5165 (_ BitVec 32)) (_keys!2854 array!8735) (_values!2837 array!8741) (_vacant!2618 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10053 0))(
  ( (Cell!10054 (v!28464 LongMapFixedSize!5114)) )
))
(declare-datatypes ((MutLongMap!2557 0))(
  ( (LongMap!2557 (underlying!5309 Cell!10053)) (MutLongMapExt!2556 (__x!15848 Int)) )
))
(declare-datatypes ((Cell!10055 0))(
  ( (Cell!10056 (v!28465 MutLongMap!2557)) )
))
(declare-datatypes ((MutableMap!2471 0))(
  ( (MutableMapExt!2470 (__x!15849 Int)) (HashMap!2471 (underlying!5310 Cell!10055) (hashF!4394 Hashable!2471) (_size!5166 (_ BitVec 32)) (defaultValue!2633 Int)) )
))
(declare-datatypes ((CacheDown!1696 0))(
  ( (CacheDown!1697 (cache!2852 MutableMap!2471)) )
))
(declare-fun cacheDown!1098 () CacheDown!1696)

(declare-fun mapRest!12431 () (Array (_ BitVec 32) List!24003))

(declare-fun mapKey!12430 () (_ BitVec 32))

(assert (=> mapNonEmpty!12430 (= (arr!3882 (_values!2837 (v!28464 (underlying!5309 (v!28465 (underlying!5310 (cache!2852 cacheDown!1098))))))) (store mapRest!12431 mapKey!12430 mapValue!12430))))

(declare-fun b!2129919 () Bool)

(declare-fun res!920896 () Bool)

(assert (=> b!2129919 (=> (not res!920896) (not e!1358334))))

(declare-fun valid!2013 (CacheDown!1696) Bool)

(assert (=> b!2129919 (= res!920896 (valid!2013 cacheDown!1098))))

(declare-fun mapIsEmpty!12431 () Bool)

(declare-fun mapRes!12432 () Bool)

(assert (=> mapIsEmpty!12431 mapRes!12432))

(declare-fun mapNonEmpty!12431 () Bool)

(declare-fun tp!654620 () Bool)

(declare-fun tp!654619 () Bool)

(assert (=> mapNonEmpty!12431 (= mapRes!12432 (and tp!654620 tp!654619))))

(declare-fun mapValue!12431 () List!24001)

(declare-fun mapRest!12430 () (Array (_ BitVec 32) List!24001))

(declare-fun mapKey!12432 () (_ BitVec 32))

(assert (=> mapNonEmpty!12431 (= (arr!3880 (_values!2835 (v!28460 (underlying!5305 (v!28461 (underlying!5306 (cache!2850 cacheFurthestNullable!114))))))) (store mapRest!12430 mapKey!12432 mapValue!12431))))

(declare-fun tp!654633 () Bool)

(declare-fun e!1358333 () Bool)

(declare-fun tp!654617 () Bool)

(declare-fun e!1358327 () Bool)

(declare-fun array_inv!2777 (array!8741) Bool)

(assert (=> b!2129920 (= e!1358327 (and tp!654632 tp!654633 tp!654617 (array_inv!2775 (_keys!2854 (v!28464 (underlying!5309 (v!28465 (underlying!5310 (cache!2852 cacheDown!1098))))))) (array_inv!2777 (_values!2837 (v!28464 (underlying!5309 (v!28465 (underlying!5310 (cache!2852 cacheDown!1098))))))) e!1358333))))

(declare-fun b!2129921 () Bool)

(declare-fun e!1358301 () Bool)

(assert (=> b!2129921 (= e!1358299 (not e!1358301))))

(declare-fun res!920889 () Bool)

(assert (=> b!2129921 (=> res!920889 e!1358301)))

(declare-datatypes ((Option!4886 0))(
  ( (None!4885) (Some!4885 (v!28466 Int)) )
))
(declare-fun get!7347 (CacheFurthestNullable!652 (InoxSet Context!2546) Int Int) Option!4886)

(assert (=> b!2129921 (= res!920889 ((_ is Some!4885) (get!7347 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2129921 (forall!4900 stack!8 lambda!79100)))

(declare-fun tp!654640 () Bool)

(declare-fun e!1358303 () Bool)

(declare-fun tp!654627 () Bool)

(declare-fun array_inv!2778 (array!8739) Bool)

(assert (=> b!2129922 (= e!1358311 (and tp!654634 tp!654627 tp!654640 (array_inv!2775 (_keys!2853 (v!28462 (underlying!5307 (v!28463 (underlying!5308 (cache!2851 cacheUp!979))))))) (array_inv!2778 (_values!2836 (v!28462 (underlying!5307 (v!28463 (underlying!5308 (cache!2851 cacheUp!979))))))) e!1358303))))

(declare-fun b!2129923 () Bool)

(declare-fun e!1358313 () Bool)

(declare-fun tp!654635 () Bool)

(assert (=> b!2129923 (= e!1358313 tp!654635)))

(declare-fun b!2129924 () Bool)

(declare-fun e!1358305 () Bool)

(declare-fun e!1358325 () Bool)

(declare-fun lt!796310 () MutLongMap!2555)

(assert (=> b!2129924 (= e!1358305 (and e!1358325 ((_ is LongMap!2555) lt!796310)))))

(assert (=> b!2129924 (= lt!796310 (v!28461 (underlying!5306 (cache!2850 cacheFurthestNullable!114))))))

(declare-fun b!2129925 () Bool)

(declare-fun e!1358302 () Bool)

(assert (=> b!2129925 (= e!1358301 e!1358302)))

(declare-fun res!920887 () Bool)

(assert (=> b!2129925 (=> res!920887 e!1358302)))

(assert (=> b!2129925 (= res!920887 (not (forall!4900 stack!8 lambda!79100)))))

(assert (=> b!2129925 (forall!4900 stack!8 lambda!79100)))

(declare-fun b!2129926 () Bool)

(declare-fun e!1358319 () Bool)

(declare-fun e!1358331 () Bool)

(declare-fun lt!796313 () MutLongMap!2557)

(assert (=> b!2129926 (= e!1358319 (and e!1358331 ((_ is LongMap!2557) lt!796313)))))

(assert (=> b!2129926 (= lt!796313 (v!28465 (underlying!5310 (cache!2852 cacheDown!1098))))))

(declare-fun b!2129927 () Bool)

(assert (=> b!2129927 (= e!1358302 (forall!4900 stack!8 lambda!79100))))

(declare-fun b!2129928 () Bool)

(declare-fun e!1358320 () Bool)

(declare-fun tp!654636 () Bool)

(assert (=> b!2129928 (= e!1358320 tp!654636)))

(declare-fun b!2129929 () Bool)

(declare-fun e!1358328 () Bool)

(declare-fun tp!654618 () Bool)

(assert (=> b!2129929 (= e!1358328 (and (inv!31537 (c!340168 (totalInput!2985 cacheFurthestNullable!114))) tp!654618))))

(declare-fun setIsEmpty!15684 () Bool)

(declare-fun setRes!15685 () Bool)

(assert (=> setIsEmpty!15684 setRes!15685))

(declare-fun b!2129930 () Bool)

(declare-fun e!1358309 () Bool)

(declare-fun lostCauseZipper!67 ((InoxSet Context!2546)) Bool)

(assert (=> b!2129930 (= e!1358309 (not (lostCauseZipper!67 z!3839)))))

(declare-fun b!2129931 () Bool)

(declare-fun e!1358307 () Bool)

(assert (=> b!2129931 (= e!1358307 e!1358327)))

(declare-fun b!2129932 () Bool)

(declare-fun res!920895 () Bool)

(assert (=> b!2129932 (=> (not res!920895) (not e!1358334))))

(declare-fun valid!2014 (CacheUp!1714) Bool)

(assert (=> b!2129932 (= res!920895 (valid!2014 cacheUp!979))))

(declare-fun e!1358335 () Bool)

(assert (=> b!2129933 (= e!1358335 (and e!1358305 tp!654625))))

(declare-fun b!2129934 () Bool)

(assert (=> b!2129934 (= e!1358304 e!1358322)))

(declare-fun b!2129935 () Bool)

(declare-fun res!920894 () Bool)

(assert (=> b!2129935 (=> res!920894 e!1358301)))

(assert (=> b!2129935 (= res!920894 e!1358309)))

(declare-fun res!920888 () Bool)

(assert (=> b!2129935 (=> (not res!920888) (not e!1358309))))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2129935 (= res!920888 (not (= from!1043 totalInputSize!296)))))

(declare-fun b!2129936 () Bool)

(declare-fun e!1358316 () Bool)

(declare-fun e!1358315 () Bool)

(assert (=> b!2129936 (= e!1358316 e!1358315)))

(declare-fun b!2129937 () Bool)

(declare-fun e!1358326 () Bool)

(assert (=> b!2129937 (= e!1358326 e!1358306)))

(declare-fun b!2129938 () Bool)

(declare-fun tp!654631 () Bool)

(declare-fun e!1358323 () Bool)

(declare-fun inv!31539 (StackFrame!102) Bool)

(assert (=> b!2129938 (= e!1358323 (and (inv!31539 (h!29317 stack!8)) e!1358330 tp!654631))))

(declare-fun b!2129939 () Bool)

(declare-fun tp!654612 () Bool)

(declare-fun mapRes!12431 () Bool)

(assert (=> b!2129939 (= e!1358303 (and tp!654612 mapRes!12431))))

(declare-fun condMapEmpty!12431 () Bool)

(declare-fun mapDefault!12432 () List!24002)

(assert (=> b!2129939 (= condMapEmpty!12431 (= (arr!3881 (_values!2836 (v!28462 (underlying!5307 (v!28463 (underlying!5308 (cache!2851 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24002)) mapDefault!12432)))))

(declare-fun b!2129940 () Bool)

(declare-fun tp!654638 () Bool)

(assert (=> b!2129940 (= e!1358333 (and tp!654638 mapRes!12430))))

(declare-fun condMapEmpty!12430 () Bool)

(declare-fun mapDefault!12431 () List!24003)

(assert (=> b!2129940 (= condMapEmpty!12430 (= (arr!3882 (_values!2837 (v!28464 (underlying!5309 (v!28465 (underlying!5310 (cache!2852 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24003)) mapDefault!12431)))))

(declare-fun mapNonEmpty!12432 () Bool)

(declare-fun tp!654615 () Bool)

(declare-fun tp!654614 () Bool)

(assert (=> mapNonEmpty!12432 (= mapRes!12431 (and tp!654615 tp!654614))))

(declare-fun mapKey!12431 () (_ BitVec 32))

(declare-fun mapRest!12432 () (Array (_ BitVec 32) List!24002))

(declare-fun mapValue!12432 () List!24002)

(assert (=> mapNonEmpty!12432 (= (arr!3881 (_values!2836 (v!28462 (underlying!5307 (v!28463 (underlying!5308 (cache!2851 cacheUp!979))))))) (store mapRest!12432 mapKey!12431 mapValue!12432))))

(declare-fun b!2129941 () Bool)

(assert (=> b!2129941 (= e!1358325 e!1358326)))

(declare-fun b!2129942 () Bool)

(declare-fun res!920901 () Bool)

(assert (=> b!2129942 (=> (not res!920901) (not e!1358334))))

(assert (=> b!2129942 (= res!920901 e!1358298)))

(declare-fun res!920891 () Bool)

(assert (=> b!2129942 (=> res!920891 e!1358298)))

(declare-fun nullableZipper!89 ((InoxSet Context!2546)) Bool)

(assert (=> b!2129942 (= res!920891 (not (nullableZipper!89 z!3839)))))

(declare-fun setIsEmpty!15685 () Bool)

(assert (=> setIsEmpty!15685 setRes!15684))

(declare-fun res!920893 () Bool)

(declare-fun e!1358329 () Bool)

(assert (=> start!207512 (=> (not res!920893) (not e!1358329))))

(assert (=> start!207512 (= res!920893 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207512 e!1358329))

(declare-fun e!1358310 () Bool)

(declare-fun inv!31540 (CacheFurthestNullable!652) Bool)

(assert (=> start!207512 (and (inv!31540 cacheFurthestNullable!114) e!1358310)))

(assert (=> start!207512 true))

(declare-fun inv!31541 (CacheDown!1696) Bool)

(assert (=> start!207512 (and (inv!31541 cacheDown!1098) e!1358332)))

(declare-fun inv!31542 (CacheUp!1714) Bool)

(assert (=> start!207512 (and (inv!31542 cacheUp!979) e!1358316)))

(declare-fun condSetEmpty!15685 () Bool)

(assert (=> start!207512 (= condSetEmpty!15685 (= z!3839 ((as const (Array Context!2546 Bool)) false)))))

(assert (=> start!207512 setRes!15685))

(assert (=> start!207512 (and (inv!31538 totalInput!851) e!1358300)))

(assert (=> start!207512 e!1358323))

(assert (=> b!2129943 (= e!1358315 (and e!1358321 tp!654624))))

(declare-fun b!2129944 () Bool)

(declare-fun res!920897 () Bool)

(assert (=> b!2129944 (=> (not res!920897) (not e!1358334))))

(assert (=> b!2129944 (= res!920897 (= (totalInput!2985 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2129945 () Bool)

(declare-fun tp!654629 () Bool)

(assert (=> b!2129945 (= e!1358324 (and tp!654629 mapRes!12432))))

(declare-fun condMapEmpty!12432 () Bool)

(declare-fun mapDefault!12430 () List!24001)

(assert (=> b!2129945 (= condMapEmpty!12432 (= (arr!3880 (_values!2835 (v!28460 (underlying!5305 (v!28461 (underlying!5306 (cache!2850 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24001)) mapDefault!12430)))))

(assert (=> b!2129946 (= e!1358317 (and e!1358319 tp!654637))))

(declare-fun b!2129947 () Bool)

(declare-fun tp!654621 () Bool)

(assert (=> b!2129947 (= e!1358318 (and (inv!31537 (c!340168 (totalInput!2984 (h!29317 stack!8)))) tp!654621))))

(declare-fun b!2129948 () Bool)

(assert (=> b!2129948 (= e!1358329 e!1358334)))

(declare-fun res!920890 () Bool)

(assert (=> b!2129948 (=> (not res!920890) (not e!1358334))))

(assert (=> b!2129948 (= res!920890 (and (= totalInputSize!296 lt!796311) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18709 (BalanceConc!15444) Int)

(assert (=> b!2129948 (= lt!796311 (size!18709 totalInput!851))))

(declare-fun setElem!15684 () Context!2546)

(declare-fun tp!654623 () Bool)

(declare-fun setNonEmpty!15684 () Bool)

(declare-fun inv!31543 (Context!2546) Bool)

(assert (=> setNonEmpty!15684 (= setRes!15684 (and tp!654623 (inv!31543 setElem!15684) e!1358313))))

(declare-fun setRest!15685 () (InoxSet Context!2546))

(assert (=> setNonEmpty!15684 (= (z!5779 (h!29317 stack!8)) ((_ map or) (store ((as const (Array Context!2546 Bool)) false) setElem!15684 true) setRest!15685))))

(declare-fun b!2129949 () Bool)

(assert (=> b!2129949 (= e!1358331 e!1358307)))

(declare-fun res!920892 () Bool)

(assert (=> b!2129950 (=> (not res!920892) (not e!1358299))))

(assert (=> b!2129950 (= res!920892 (forall!4900 stack!8 lambda!79101))))

(declare-fun mapIsEmpty!12432 () Bool)

(assert (=> mapIsEmpty!12432 mapRes!12431))

(declare-fun b!2129951 () Bool)

(assert (=> b!2129951 (= e!1358310 (and e!1358335 (inv!31538 (totalInput!2985 cacheFurthestNullable!114)) e!1358328))))

(declare-fun b!2129952 () Bool)

(declare-fun res!920899 () Bool)

(assert (=> b!2129952 (=> res!920899 e!1358301)))

(assert (=> b!2129952 (= res!920899 (not (= lt!796312 lastNullablePos!123)))))

(declare-fun tp!654613 () Bool)

(declare-fun setNonEmpty!15685 () Bool)

(declare-fun setElem!15685 () Context!2546)

(assert (=> setNonEmpty!15685 (= setRes!15685 (and tp!654613 (inv!31543 setElem!15685) e!1358320))))

(declare-fun setRest!15684 () (InoxSet Context!2546))

(assert (=> setNonEmpty!15685 (= z!3839 ((_ map or) (store ((as const (Array Context!2546 Bool)) false) setElem!15685 true) setRest!15684))))

(assert (= (and start!207512 res!920893) b!2129948))

(assert (= (and b!2129948 res!920890) b!2129942))

(assert (= (and b!2129942 (not res!920891)) b!2129914))

(assert (= (and b!2129942 res!920901) b!2129932))

(assert (= (and b!2129932 res!920895) b!2129919))

(assert (= (and b!2129919 res!920896) b!2129916))

(assert (= (and b!2129916 res!920898) b!2129944))

(assert (= (and b!2129944 res!920897) b!2129910))

(assert (= (and b!2129910 res!920900) b!2129950))

(assert (= (and b!2129950 res!920892) b!2129921))

(assert (= (and b!2129921 (not res!920889)) b!2129935))

(assert (= (and b!2129935 res!920888) b!2129930))

(assert (= (and b!2129935 (not res!920894)) b!2129952))

(assert (= (and b!2129952 (not res!920899)) b!2129925))

(assert (= (and b!2129925 (not res!920887)) b!2129927))

(assert (= (and b!2129945 condMapEmpty!12432) mapIsEmpty!12431))

(assert (= (and b!2129945 (not condMapEmpty!12432)) mapNonEmpty!12431))

(assert (= b!2129911 b!2129945))

(assert (= b!2129937 b!2129911))

(assert (= b!2129941 b!2129937))

(assert (= (and b!2129924 ((_ is LongMap!2555) (v!28461 (underlying!5306 (cache!2850 cacheFurthestNullable!114))))) b!2129941))

(assert (= b!2129933 b!2129924))

(assert (= (and b!2129951 ((_ is HashMap!2469) (cache!2850 cacheFurthestNullable!114))) b!2129933))

(assert (= b!2129951 b!2129929))

(assert (= start!207512 b!2129951))

(assert (= (and b!2129940 condMapEmpty!12430) mapIsEmpty!12430))

(assert (= (and b!2129940 (not condMapEmpty!12430)) mapNonEmpty!12430))

(assert (= b!2129920 b!2129940))

(assert (= b!2129931 b!2129920))

(assert (= b!2129949 b!2129931))

(assert (= (and b!2129926 ((_ is LongMap!2557) (v!28465 (underlying!5310 (cache!2852 cacheDown!1098))))) b!2129949))

(assert (= b!2129946 b!2129926))

(assert (= (and b!2129912 ((_ is HashMap!2471) (cache!2852 cacheDown!1098))) b!2129946))

(assert (= start!207512 b!2129912))

(assert (= (and b!2129939 condMapEmpty!12431) mapIsEmpty!12432))

(assert (= (and b!2129939 (not condMapEmpty!12431)) mapNonEmpty!12432))

(assert (= b!2129922 b!2129939))

(assert (= b!2129915 b!2129922))

(assert (= b!2129934 b!2129915))

(assert (= (and b!2129917 ((_ is LongMap!2556) (v!28463 (underlying!5308 (cache!2851 cacheUp!979))))) b!2129934))

(assert (= b!2129943 b!2129917))

(assert (= (and b!2129936 ((_ is HashMap!2470) (cache!2851 cacheUp!979))) b!2129943))

(assert (= start!207512 b!2129936))

(assert (= (and start!207512 condSetEmpty!15685) setIsEmpty!15684))

(assert (= (and start!207512 (not condSetEmpty!15685)) setNonEmpty!15685))

(assert (= setNonEmpty!15685 b!2129928))

(assert (= start!207512 b!2129913))

(assert (= (and b!2129918 condSetEmpty!15684) setIsEmpty!15685))

(assert (= (and b!2129918 (not condSetEmpty!15684)) setNonEmpty!15684))

(assert (= setNonEmpty!15684 b!2129923))

(assert (= b!2129918 b!2129947))

(assert (= b!2129938 b!2129918))

(assert (= (and start!207512 ((_ is Cons!23916) stack!8)) b!2129938))

(declare-fun m!2580326 () Bool)

(assert (=> b!2129916 m!2580326))

(declare-fun m!2580328 () Bool)

(assert (=> b!2129932 m!2580328))

(declare-fun m!2580330 () Bool)

(assert (=> b!2129925 m!2580330))

(assert (=> b!2129925 m!2580330))

(declare-fun m!2580332 () Bool)

(assert (=> b!2129929 m!2580332))

(declare-fun m!2580334 () Bool)

(assert (=> mapNonEmpty!12432 m!2580334))

(declare-fun m!2580336 () Bool)

(assert (=> mapNonEmpty!12430 m!2580336))

(declare-fun m!2580338 () Bool)

(assert (=> b!2129911 m!2580338))

(declare-fun m!2580340 () Bool)

(assert (=> b!2129911 m!2580340))

(declare-fun m!2580342 () Bool)

(assert (=> mapNonEmpty!12431 m!2580342))

(assert (=> b!2129910 m!2580330))

(declare-fun m!2580344 () Bool)

(assert (=> b!2129910 m!2580344))

(declare-fun m!2580346 () Bool)

(assert (=> setNonEmpty!15685 m!2580346))

(declare-fun m!2580348 () Bool)

(assert (=> b!2129948 m!2580348))

(declare-fun m!2580350 () Bool)

(assert (=> b!2129950 m!2580350))

(declare-fun m!2580352 () Bool)

(assert (=> b!2129922 m!2580352))

(declare-fun m!2580354 () Bool)

(assert (=> b!2129922 m!2580354))

(declare-fun m!2580356 () Bool)

(assert (=> b!2129951 m!2580356))

(declare-fun m!2580358 () Bool)

(assert (=> b!2129920 m!2580358))

(declare-fun m!2580360 () Bool)

(assert (=> b!2129920 m!2580360))

(assert (=> b!2129927 m!2580330))

(declare-fun m!2580362 () Bool)

(assert (=> b!2129947 m!2580362))

(declare-fun m!2580364 () Bool)

(assert (=> b!2129918 m!2580364))

(declare-fun m!2580366 () Bool)

(assert (=> b!2129913 m!2580366))

(declare-fun m!2580368 () Bool)

(assert (=> b!2129942 m!2580368))

(declare-fun m!2580370 () Bool)

(assert (=> b!2129930 m!2580370))

(declare-fun m!2580372 () Bool)

(assert (=> start!207512 m!2580372))

(declare-fun m!2580374 () Bool)

(assert (=> start!207512 m!2580374))

(declare-fun m!2580376 () Bool)

(assert (=> start!207512 m!2580376))

(declare-fun m!2580378 () Bool)

(assert (=> start!207512 m!2580378))

(declare-fun m!2580380 () Bool)

(assert (=> b!2129919 m!2580380))

(declare-fun m!2580382 () Bool)

(assert (=> setNonEmpty!15684 m!2580382))

(declare-fun m!2580384 () Bool)

(assert (=> b!2129921 m!2580384))

(assert (=> b!2129921 m!2580330))

(declare-fun m!2580386 () Bool)

(assert (=> b!2129938 m!2580386))

(check-sat (not b!2129918) (not setNonEmpty!15685) (not b!2129916) (not b!2129930) (not b_next!62803) b_and!171681 (not b!2129940) (not b!2129921) (not b_next!62805) (not start!207512) (not b!2129928) b_and!171673 (not b_next!62807) (not mapNonEmpty!12432) (not b!2129929) b_and!171677 b_and!171675 (not b!2129920) (not mapNonEmpty!12431) (not mapNonEmpty!12430) (not b!2129923) (not b!2129922) (not b!2129919) b_and!171679 b_and!171683 (not setNonEmpty!15684) (not b!2129925) (not b!2129951) (not b_next!62797) (not b_next!62801) (not b!2129947) (not b!2129945) (not b!2129932) (not b!2129950) (not b!2129927) (not b!2129939) (not b_next!62799) (not b!2129942) (not b!2129913) (not b!2129948) (not b!2129911) (not b!2129910) (not b!2129938))
(check-sat (not b_next!62805) b_and!171673 (not b_next!62807) (not b_next!62803) b_and!171681 b_and!171679 b_and!171683 (not b_next!62799) b_and!171677 b_and!171675 (not b_next!62797) (not b_next!62801))
