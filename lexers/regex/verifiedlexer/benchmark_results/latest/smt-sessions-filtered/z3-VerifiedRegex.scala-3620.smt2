; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207520 () Bool)

(assert start!207520)

(declare-fun b!2130434 () Bool)

(declare-fun b_free!62141 () Bool)

(declare-fun b_next!62845 () Bool)

(assert (=> b!2130434 (= b_free!62141 (not b_next!62845))))

(declare-fun tp!654967 () Bool)

(declare-fun b_and!171721 () Bool)

(assert (=> b!2130434 (= tp!654967 b_and!171721)))

(declare-fun b!2130436 () Bool)

(declare-fun b_free!62143 () Bool)

(declare-fun b_next!62847 () Bool)

(assert (=> b!2130436 (= b_free!62143 (not b_next!62847))))

(declare-fun tp!654978 () Bool)

(declare-fun b_and!171723 () Bool)

(assert (=> b!2130436 (= tp!654978 b_and!171723)))

(declare-fun b!2130469 () Bool)

(declare-fun b_free!62145 () Bool)

(declare-fun b_next!62849 () Bool)

(assert (=> b!2130469 (= b_free!62145 (not b_next!62849))))

(declare-fun tp!654965 () Bool)

(declare-fun b_and!171725 () Bool)

(assert (=> b!2130469 (= tp!654965 b_and!171725)))

(declare-fun b!2130444 () Bool)

(declare-fun b_free!62147 () Bool)

(declare-fun b_next!62851 () Bool)

(assert (=> b!2130444 (= b_free!62147 (not b_next!62851))))

(declare-fun tp!654985 () Bool)

(declare-fun b_and!171727 () Bool)

(assert (=> b!2130444 (= tp!654985 b_and!171727)))

(declare-fun b!2130451 () Bool)

(declare-fun b_free!62149 () Bool)

(declare-fun b_next!62853 () Bool)

(assert (=> b!2130451 (= b_free!62149 (not b_next!62853))))

(declare-fun tp!654971 () Bool)

(declare-fun b_and!171729 () Bool)

(assert (=> b!2130451 (= tp!654971 b_and!171729)))

(declare-fun b!2130452 () Bool)

(declare-fun b_free!62151 () Bool)

(declare-fun b_next!62855 () Bool)

(assert (=> b!2130452 (= b_free!62151 (not b_next!62855))))

(declare-fun tp!654972 () Bool)

(declare-fun b_and!171731 () Bool)

(assert (=> b!2130452 (= tp!654972 b_and!171731)))

(declare-fun b!2130448 () Bool)

(assert (=> b!2130448 true))

(declare-fun bs!444238 () Bool)

(declare-fun b!2130468 () Bool)

(assert (= bs!444238 (and b!2130468 b!2130448)))

(declare-fun lambda!79146 () Int)

(declare-fun lambda!79145 () Int)

(assert (=> bs!444238 (not (= lambda!79146 lambda!79145))))

(assert (=> b!2130468 true))

(declare-fun bs!444239 () Bool)

(declare-fun b!2130441 () Bool)

(assert (= bs!444239 (and b!2130441 b!2130448)))

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!796376 () Int)

(declare-fun lambda!79147 () Int)

(assert (=> bs!444239 (= (= lastNullablePos!123 lt!796376) (= lambda!79147 lambda!79145))))

(declare-fun bs!444240 () Bool)

(assert (= bs!444240 (and b!2130441 b!2130468)))

(assert (=> bs!444240 (not (= lambda!79147 lambda!79146))))

(assert (=> b!2130441 true))

(declare-fun b!2130431 () Bool)

(declare-fun e!1358767 () Bool)

(declare-fun e!1358758 () Bool)

(assert (=> b!2130431 (= e!1358767 e!1358758)))

(declare-fun b!2130432 () Bool)

(declare-fun e!1358771 () Bool)

(declare-fun e!1358765 () Bool)

(declare-datatypes ((C!11560 0))(
  ( (C!11561 (val!6766 Int)) )
))
(declare-datatypes ((Regex!5707 0))(
  ( (ElementMatch!5707 (c!340175 C!11560)) (Concat!10009 (regOne!11926 Regex!5707) (regTwo!11926 Regex!5707)) (EmptyExpr!5707) (Star!5707 (reg!6036 Regex!5707)) (EmptyLang!5707) (Union!5707 (regOne!11927 Regex!5707) (regTwo!11927 Regex!5707)) )
))
(declare-datatypes ((List!24022 0))(
  ( (Nil!23938) (Cons!23938 (h!29339 Regex!5707) (t!196550 List!24022)) )
))
(declare-datatypes ((Context!2554 0))(
  ( (Context!2555 (exprs!1777 List!24022)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3088 0))(
  ( (tuple3!3089 (_1!13845 (InoxSet Context!2554)) (_2!13845 Int) (_3!2014 Int)) )
))
(declare-datatypes ((tuple2!23662 0))(
  ( (tuple2!23663 (_1!13846 tuple3!3088) (_2!13846 Int)) )
))
(declare-datatypes ((List!24023 0))(
  ( (Nil!23939) (Cons!23939 (h!29340 tuple2!23662) (t!196551 List!24023)) )
))
(declare-datatypes ((array!8767 0))(
  ( (array!8768 (arr!3895 (Array (_ BitVec 32) (_ BitVec 64))) (size!18723 (_ BitVec 32))) )
))
(declare-datatypes ((array!8769 0))(
  ( (array!8770 (arr!3896 (Array (_ BitVec 32) List!24023)) (size!18724 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5134 0))(
  ( (LongMapFixedSize!5135 (defaultEntry!2932 Int) (mask!6736 (_ BitVec 32)) (extraKeys!2815 (_ BitVec 32)) (zeroValue!2825 List!24023) (minValue!2825 List!24023) (_size!5185 (_ BitVec 32)) (_keys!2864 array!8767) (_values!2847 array!8769) (_vacant!2628 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10093 0))(
  ( (Cell!10094 (v!28487 LongMapFixedSize!5134)) )
))
(declare-datatypes ((MutLongMap!2567 0))(
  ( (LongMap!2567 (underlying!5329 Cell!10093)) (MutLongMapExt!2566 (__x!15877 Int)) )
))
(declare-fun lt!796375 () MutLongMap!2567)

(get-info :version)

(assert (=> b!2130432 (= e!1358771 (and e!1358765 ((_ is LongMap!2567) lt!796375)))))

(declare-datatypes ((List!24024 0))(
  ( (Nil!23940) (Cons!23940 (h!29341 C!11560) (t!196552 List!24024)) )
))
(declare-datatypes ((IArray!15695 0))(
  ( (IArray!15696 (innerList!7905 List!24024)) )
))
(declare-datatypes ((Conc!7845 0))(
  ( (Node!7845 (left!18471 Conc!7845) (right!18801 Conc!7845) (csize!15920 Int) (cheight!8056 Int)) (Leaf!11466 (xs!10787 IArray!15695) (csize!15921 Int)) (Empty!7845) )
))
(declare-datatypes ((Cell!10095 0))(
  ( (Cell!10096 (v!28488 MutLongMap!2567)) )
))
(declare-datatypes ((Hashable!2481 0))(
  ( (HashableExt!2480 (__x!15878 Int)) )
))
(declare-datatypes ((MutableMap!2481 0))(
  ( (MutableMapExt!2480 (__x!15879 Int)) (HashMap!2481 (underlying!5330 Cell!10095) (hashF!4404 Hashable!2481) (_size!5186 (_ BitVec 32)) (defaultValue!2643 Int)) )
))
(declare-datatypes ((BalanceConc!15452 0))(
  ( (BalanceConc!15453 (c!340176 Conc!7845)) )
))
(declare-datatypes ((CacheFurthestNullable!660 0))(
  ( (CacheFurthestNullable!661 (cache!2862 MutableMap!2481) (totalInput!2992 BalanceConc!15452)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!660)

(assert (=> b!2130432 (= lt!796375 (v!28488 (underlying!5330 (cache!2862 cacheFurthestNullable!114))))))

(declare-fun b!2130433 () Bool)

(declare-fun e!1358772 () Bool)

(declare-fun e!1358762 () Bool)

(assert (=> b!2130433 (= e!1358772 e!1358762)))

(declare-fun res!921070 () Bool)

(assert (=> b!2130433 (=> (not res!921070) (not e!1358762))))

(declare-fun totalInputSize!296 () Int)

(declare-fun from!1043 () Int)

(declare-fun lt!796379 () Int)

(assert (=> b!2130433 (= res!921070 (and (= totalInputSize!296 lt!796379) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun totalInput!851 () BalanceConc!15452)

(declare-fun size!18725 (BalanceConc!15452) Int)

(assert (=> b!2130433 (= lt!796379 (size!18725 totalInput!851))))

(declare-fun e!1358779 () Bool)

(declare-fun e!1358746 () Bool)

(assert (=> b!2130434 (= e!1358779 (and e!1358746 tp!654967))))

(declare-fun b!2130435 () Bool)

(declare-fun e!1358752 () Bool)

(declare-fun e!1358745 () Bool)

(declare-datatypes ((tuple2!23664 0))(
  ( (tuple2!23665 (_1!13847 Context!2554) (_2!13847 C!11560)) )
))
(declare-datatypes ((tuple2!23666 0))(
  ( (tuple2!23667 (_1!13848 tuple2!23664) (_2!13848 (InoxSet Context!2554))) )
))
(declare-datatypes ((List!24025 0))(
  ( (Nil!23941) (Cons!23941 (h!29342 tuple2!23666) (t!196553 List!24025)) )
))
(declare-datatypes ((array!8771 0))(
  ( (array!8772 (arr!3897 (Array (_ BitVec 32) List!24025)) (size!18726 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5136 0))(
  ( (LongMapFixedSize!5137 (defaultEntry!2933 Int) (mask!6737 (_ BitVec 32)) (extraKeys!2816 (_ BitVec 32)) (zeroValue!2826 List!24025) (minValue!2826 List!24025) (_size!5187 (_ BitVec 32)) (_keys!2865 array!8767) (_values!2848 array!8771) (_vacant!2629 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10097 0))(
  ( (Cell!10098 (v!28489 LongMapFixedSize!5136)) )
))
(declare-datatypes ((MutLongMap!2568 0))(
  ( (LongMap!2568 (underlying!5331 Cell!10097)) (MutLongMapExt!2567 (__x!15880 Int)) )
))
(declare-fun lt!796377 () MutLongMap!2568)

(assert (=> b!2130435 (= e!1358752 (and e!1358745 ((_ is LongMap!2568) lt!796377)))))

(declare-datatypes ((Cell!10099 0))(
  ( (Cell!10100 (v!28490 MutLongMap!2568)) )
))
(declare-datatypes ((Hashable!2482 0))(
  ( (HashableExt!2481 (__x!15881 Int)) )
))
(declare-datatypes ((MutableMap!2482 0))(
  ( (MutableMapExt!2481 (__x!15882 Int)) (HashMap!2482 (underlying!5332 Cell!10099) (hashF!4405 Hashable!2482) (_size!5188 (_ BitVec 32)) (defaultValue!2644 Int)) )
))
(declare-datatypes ((CacheUp!1722 0))(
  ( (CacheUp!1723 (cache!2863 MutableMap!2482)) )
))
(declare-fun cacheUp!979 () CacheUp!1722)

(assert (=> b!2130435 (= lt!796377 (v!28490 (underlying!5332 (cache!2863 cacheUp!979))))))

(declare-fun e!1358748 () Bool)

(assert (=> b!2130436 (= e!1358748 (and e!1358771 tp!654978))))

(declare-fun b!2130437 () Bool)

(declare-fun res!921071 () Bool)

(declare-fun e!1358768 () Bool)

(assert (=> b!2130437 (=> res!921071 e!1358768)))

(assert (=> b!2130437 (= res!921071 (not (= lt!796376 lastNullablePos!123)))))

(declare-fun e!1358749 () Bool)

(declare-fun b!2130438 () Bool)

(declare-datatypes ((StackFrame!110 0))(
  ( (StackFrame!111 (z!5783 (InoxSet Context!2554)) (from!2669 Int) (lastNullablePos!356 Int) (res!921074 Int) (totalInput!2993 BalanceConc!15452)) )
))
(declare-datatypes ((List!24026 0))(
  ( (Nil!23942) (Cons!23942 (h!29343 StackFrame!110) (t!196554 List!24026)) )
))
(declare-fun stack!8 () List!24026)

(declare-fun e!1358756 () Bool)

(declare-fun tp!654969 () Bool)

(declare-fun inv!31566 (StackFrame!110) Bool)

(assert (=> b!2130438 (= e!1358756 (and (inv!31566 (h!29343 stack!8)) e!1358749 tp!654969))))

(declare-fun b!2130439 () Bool)

(declare-fun res!921066 () Bool)

(assert (=> b!2130439 (=> (not res!921066) (not e!1358762))))

(declare-datatypes ((tuple3!3090 0))(
  ( (tuple3!3091 (_1!13849 Regex!5707) (_2!13849 Context!2554) (_3!2015 C!11560)) )
))
(declare-datatypes ((tuple2!23668 0))(
  ( (tuple2!23669 (_1!13850 tuple3!3090) (_2!13850 (InoxSet Context!2554))) )
))
(declare-datatypes ((List!24027 0))(
  ( (Nil!23943) (Cons!23943 (h!29344 tuple2!23668) (t!196555 List!24027)) )
))
(declare-datatypes ((Hashable!2483 0))(
  ( (HashableExt!2482 (__x!15883 Int)) )
))
(declare-datatypes ((array!8773 0))(
  ( (array!8774 (arr!3898 (Array (_ BitVec 32) List!24027)) (size!18727 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5138 0))(
  ( (LongMapFixedSize!5139 (defaultEntry!2934 Int) (mask!6738 (_ BitVec 32)) (extraKeys!2817 (_ BitVec 32)) (zeroValue!2827 List!24027) (minValue!2827 List!24027) (_size!5189 (_ BitVec 32)) (_keys!2866 array!8767) (_values!2849 array!8773) (_vacant!2630 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10101 0))(
  ( (Cell!10102 (v!28491 LongMapFixedSize!5138)) )
))
(declare-datatypes ((MutLongMap!2569 0))(
  ( (LongMap!2569 (underlying!5333 Cell!10101)) (MutLongMapExt!2568 (__x!15884 Int)) )
))
(declare-datatypes ((Cell!10103 0))(
  ( (Cell!10104 (v!28492 MutLongMap!2569)) )
))
(declare-datatypes ((MutableMap!2483 0))(
  ( (MutableMapExt!2482 (__x!15885 Int)) (HashMap!2483 (underlying!5334 Cell!10103) (hashF!4406 Hashable!2483) (_size!5190 (_ BitVec 32)) (defaultValue!2645 Int)) )
))
(declare-datatypes ((CacheDown!1704 0))(
  ( (CacheDown!1705 (cache!2864 MutableMap!2483)) )
))
(declare-fun cacheDown!1098 () CacheDown!1704)

(declare-fun valid!2019 (CacheDown!1704) Bool)

(assert (=> b!2130439 (= res!921066 (valid!2019 cacheDown!1098))))

(declare-fun b!2130440 () Bool)

(declare-fun e!1358775 () Bool)

(declare-fun tp!654981 () Bool)

(declare-fun mapRes!12467 () Bool)

(assert (=> b!2130440 (= e!1358775 (and tp!654981 mapRes!12467))))

(declare-fun condMapEmpty!12468 () Bool)

(declare-fun mapDefault!12467 () List!24025)

(assert (=> b!2130440 (= condMapEmpty!12468 (= (arr!3897 (_values!2848 (v!28489 (underlying!5331 (v!28490 (underlying!5332 (cache!2863 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24025)) mapDefault!12467)))))

(assert (=> b!2130441 (= e!1358768 true)))

(declare-fun forall!4903 (List!24026 Int) Bool)

(assert (=> b!2130441 (forall!4903 stack!8 lambda!79147)))

(declare-datatypes ((Unit!37649 0))(
  ( (Unit!37650) )
))
(declare-fun lt!796378 () Unit!37649)

(declare-fun lemmaStackPreservesForEqualRes!11 (List!24026 Int Int) Unit!37649)

(assert (=> b!2130441 (= lt!796378 (lemmaStackPreservesForEqualRes!11 stack!8 lt!796376 lastNullablePos!123))))

(assert (=> b!2130441 (forall!4903 stack!8 lambda!79145)))

(declare-fun b!2130442 () Bool)

(declare-fun res!921065 () Bool)

(assert (=> b!2130442 (=> (not res!921065) (not e!1358762))))

(declare-fun valid!2020 (CacheUp!1722) Bool)

(assert (=> b!2130442 (= res!921065 (valid!2020 cacheUp!979))))

(declare-fun b!2130443 () Bool)

(declare-fun res!921068 () Bool)

(assert (=> b!2130443 (=> res!921068 e!1358768)))

(declare-fun e!1358774 () Bool)

(assert (=> b!2130443 (= res!921068 e!1358774)))

(declare-fun res!921063 () Bool)

(assert (=> b!2130443 (=> (not res!921063) (not e!1358774))))

(assert (=> b!2130443 (= res!921063 (not (= from!1043 totalInputSize!296)))))

(declare-fun e!1358763 () Bool)

(assert (=> b!2130444 (= e!1358763 (and e!1358752 tp!654985))))

(declare-fun b!2130445 () Bool)

(declare-fun e!1358751 () Bool)

(declare-fun e!1358764 () Bool)

(assert (=> b!2130445 (= e!1358751 e!1358764)))

(declare-fun b!2130446 () Bool)

(declare-fun e!1358770 () Bool)

(assert (=> b!2130446 (= e!1358770 e!1358767)))

(declare-fun b!2130447 () Bool)

(declare-fun e!1358776 () Bool)

(declare-fun tp!654983 () Bool)

(declare-fun inv!31567 (Conc!7845) Bool)

(assert (=> b!2130447 (= e!1358776 (and (inv!31567 (c!340176 (totalInput!2992 cacheFurthestNullable!114))) tp!654983))))

(declare-fun e!1358766 () Bool)

(assert (=> b!2130448 (= e!1358762 e!1358766)))

(declare-fun res!921060 () Bool)

(assert (=> b!2130448 (=> (not res!921060) (not e!1358766))))

(assert (=> b!2130448 (= res!921060 (forall!4903 stack!8 lambda!79145))))

(declare-fun z!3839 () (InoxSet Context!2554))

(declare-fun furthestNullablePosition!30 ((InoxSet Context!2554) Int BalanceConc!15452 Int Int) Int)

(assert (=> b!2130448 (= lt!796376 (furthestNullablePosition!30 z!3839 from!1043 totalInput!851 lt!796379 lastNullablePos!123))))

(declare-fun b!2130449 () Bool)

(declare-fun res!921072 () Bool)

(assert (=> b!2130449 (=> (not res!921072) (not e!1358762))))

(declare-fun valid!2021 (CacheFurthestNullable!660) Bool)

(assert (=> b!2130449 (= res!921072 (valid!2021 cacheFurthestNullable!114))))

(declare-fun b!2130450 () Bool)

(assert (=> b!2130450 (= e!1358765 e!1358751)))

(declare-fun mapNonEmpty!12466 () Bool)

(declare-fun mapRes!12466 () Bool)

(declare-fun tp!654975 () Bool)

(declare-fun tp!654960 () Bool)

(assert (=> mapNonEmpty!12466 (= mapRes!12466 (and tp!654975 tp!654960))))

(declare-fun mapValue!12467 () List!24023)

(declare-fun mapKey!12467 () (_ BitVec 32))

(declare-fun mapRest!12468 () (Array (_ BitVec 32) List!24023))

(assert (=> mapNonEmpty!12466 (= (arr!3896 (_values!2847 (v!28487 (underlying!5329 (v!28488 (underlying!5330 (cache!2862 cacheFurthestNullable!114))))))) (store mapRest!12468 mapKey!12467 mapValue!12467))))

(declare-fun setIsEmpty!15708 () Bool)

(declare-fun setRes!15709 () Bool)

(assert (=> setIsEmpty!15708 setRes!15709))

(declare-fun e!1358755 () Bool)

(declare-fun setRes!15708 () Bool)

(declare-fun setNonEmpty!15708 () Bool)

(declare-fun setElem!15709 () Context!2554)

(declare-fun tp!654963 () Bool)

(declare-fun inv!31568 (Context!2554) Bool)

(assert (=> setNonEmpty!15708 (= setRes!15708 (and tp!654963 (inv!31568 setElem!15709) e!1358755))))

(declare-fun setRest!15708 () (InoxSet Context!2554))

(assert (=> setNonEmpty!15708 (= z!3839 ((_ map or) (store ((as const (Array Context!2554 Bool)) false) setElem!15709 true) setRest!15708))))

(declare-fun tp!654976 () Bool)

(declare-fun e!1358778 () Bool)

(declare-fun tp!654973 () Bool)

(declare-fun array_inv!2785 (array!8767) Bool)

(declare-fun array_inv!2786 (array!8769) Bool)

(assert (=> b!2130451 (= e!1358764 (and tp!654971 tp!654973 tp!654976 (array_inv!2785 (_keys!2864 (v!28487 (underlying!5329 (v!28488 (underlying!5330 (cache!2862 cacheFurthestNullable!114))))))) (array_inv!2786 (_values!2847 (v!28487 (underlying!5329 (v!28488 (underlying!5330 (cache!2862 cacheFurthestNullable!114))))))) e!1358778))))

(declare-fun e!1358743 () Bool)

(declare-fun tp!654964 () Bool)

(declare-fun tp!654968 () Bool)

(declare-fun array_inv!2787 (array!8773) Bool)

(assert (=> b!2130452 (= e!1358758 (and tp!654972 tp!654968 tp!654964 (array_inv!2785 (_keys!2866 (v!28491 (underlying!5333 (v!28492 (underlying!5334 (cache!2864 cacheDown!1098))))))) (array_inv!2787 (_values!2849 (v!28491 (underlying!5333 (v!28492 (underlying!5334 (cache!2864 cacheDown!1098))))))) e!1358743))))

(declare-fun mapNonEmpty!12467 () Bool)

(declare-fun mapRes!12468 () Bool)

(declare-fun tp!654977 () Bool)

(declare-fun tp!654980 () Bool)

(assert (=> mapNonEmpty!12467 (= mapRes!12468 (and tp!654977 tp!654980))))

(declare-fun mapRest!12466 () (Array (_ BitVec 32) List!24027))

(declare-fun mapValue!12468 () List!24027)

(declare-fun mapKey!12468 () (_ BitVec 32))

(assert (=> mapNonEmpty!12467 (= (arr!3898 (_values!2849 (v!28491 (underlying!5333 (v!28492 (underlying!5334 (cache!2864 cacheDown!1098))))))) (store mapRest!12466 mapKey!12468 mapValue!12468))))

(declare-fun b!2130453 () Bool)

(declare-fun e!1358769 () Bool)

(declare-fun e!1358747 () Bool)

(assert (=> b!2130453 (= e!1358769 e!1358747)))

(declare-fun b!2130454 () Bool)

(declare-fun tp!654974 () Bool)

(assert (=> b!2130454 (= e!1358755 tp!654974)))

(declare-fun b!2130455 () Bool)

(assert (=> b!2130455 (= e!1358766 (not e!1358768))))

(declare-fun res!921073 () Bool)

(assert (=> b!2130455 (=> res!921073 e!1358768)))

(declare-datatypes ((Option!4889 0))(
  ( (None!4888) (Some!4888 (v!28493 Int)) )
))
(declare-fun get!7352 (CacheFurthestNullable!660 (InoxSet Context!2554) Int Int) Option!4889)

(assert (=> b!2130455 (= res!921073 ((_ is Some!4888) (get!7352 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2130455 (forall!4903 stack!8 lambda!79145)))

(declare-fun mapIsEmpty!12466 () Bool)

(assert (=> mapIsEmpty!12466 mapRes!12468))

(declare-fun b!2130456 () Bool)

(declare-fun e!1358753 () Bool)

(assert (=> b!2130456 (= e!1358753 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2130457 () Bool)

(declare-fun e!1358754 () Bool)

(declare-fun tp!654982 () Bool)

(assert (=> b!2130457 (= e!1358754 tp!654982)))

(declare-fun res!921067 () Bool)

(assert (=> start!207520 (=> (not res!921067) (not e!1358772))))

(assert (=> start!207520 (= res!921067 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207520 e!1358772))

(declare-fun e!1358760 () Bool)

(declare-fun inv!31569 (CacheFurthestNullable!660) Bool)

(assert (=> start!207520 (and (inv!31569 cacheFurthestNullable!114) e!1358760)))

(assert (=> start!207520 true))

(declare-fun e!1358757 () Bool)

(declare-fun inv!31570 (CacheDown!1704) Bool)

(assert (=> start!207520 (and (inv!31570 cacheDown!1098) e!1358757)))

(declare-fun e!1358773 () Bool)

(declare-fun inv!31571 (CacheUp!1722) Bool)

(assert (=> start!207520 (and (inv!31571 cacheUp!979) e!1358773)))

(declare-fun condSetEmpty!15709 () Bool)

(assert (=> start!207520 (= condSetEmpty!15709 (= z!3839 ((as const (Array Context!2554 Bool)) false)))))

(assert (=> start!207520 setRes!15708))

(declare-fun e!1358759 () Bool)

(declare-fun inv!31572 (BalanceConc!15452) Bool)

(assert (=> start!207520 (and (inv!31572 totalInput!851) e!1358759)))

(assert (=> start!207520 e!1358756))

(declare-fun b!2130458 () Bool)

(declare-fun tp!654970 () Bool)

(assert (=> b!2130458 (= e!1358778 (and tp!654970 mapRes!12466))))

(declare-fun condMapEmpty!12467 () Bool)

(declare-fun mapDefault!12466 () List!24023)

(assert (=> b!2130458 (= condMapEmpty!12467 (= (arr!3896 (_values!2847 (v!28487 (underlying!5329 (v!28488 (underlying!5330 (cache!2862 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24023)) mapDefault!12466)))))

(declare-fun setIsEmpty!15709 () Bool)

(assert (=> setIsEmpty!15709 setRes!15708))

(declare-fun b!2130459 () Bool)

(assert (=> b!2130459 (= e!1358773 e!1358763)))

(declare-fun b!2130460 () Bool)

(declare-fun tp!654966 () Bool)

(assert (=> b!2130460 (= e!1358743 (and tp!654966 mapRes!12468))))

(declare-fun condMapEmpty!12466 () Bool)

(declare-fun mapDefault!12468 () List!24027)

(assert (=> b!2130460 (= condMapEmpty!12466 (= (arr!3898 (_values!2849 (v!28491 (underlying!5333 (v!28492 (underlying!5334 (cache!2864 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24027)) mapDefault!12468)))))

(declare-fun b!2130461 () Bool)

(declare-fun e!1358744 () Bool)

(assert (=> b!2130461 (= e!1358749 (and setRes!15709 (inv!31572 (totalInput!2993 (h!29343 stack!8))) e!1358744))))

(declare-fun condSetEmpty!15708 () Bool)

(assert (=> b!2130461 (= condSetEmpty!15708 (= (z!5783 (h!29343 stack!8)) ((as const (Array Context!2554 Bool)) false)))))

(declare-fun tp!654961 () Bool)

(declare-fun setNonEmpty!15709 () Bool)

(declare-fun setElem!15708 () Context!2554)

(assert (=> setNonEmpty!15709 (= setRes!15709 (and tp!654961 (inv!31568 setElem!15708) e!1358754))))

(declare-fun setRest!15709 () (InoxSet Context!2554))

(assert (=> setNonEmpty!15709 (= (z!5783 (h!29343 stack!8)) ((_ map or) (store ((as const (Array Context!2554 Bool)) false) setElem!15708 true) setRest!15709))))

(declare-fun b!2130462 () Bool)

(declare-fun tp!654984 () Bool)

(assert (=> b!2130462 (= e!1358759 (and (inv!31567 (c!340176 totalInput!851)) tp!654984))))

(declare-fun b!2130463 () Bool)

(assert (=> b!2130463 (= e!1358760 (and e!1358748 (inv!31572 (totalInput!2992 cacheFurthestNullable!114)) e!1358776))))

(declare-fun b!2130464 () Bool)

(assert (=> b!2130464 (= e!1358745 e!1358769)))

(declare-fun b!2130465 () Bool)

(declare-fun tp!654962 () Bool)

(assert (=> b!2130465 (= e!1358744 (and (inv!31567 (c!340176 (totalInput!2993 (h!29343 stack!8)))) tp!654962))))

(declare-fun mapIsEmpty!12467 () Bool)

(assert (=> mapIsEmpty!12467 mapRes!12467))

(declare-fun mapNonEmpty!12468 () Bool)

(declare-fun tp!654986 () Bool)

(declare-fun tp!654987 () Bool)

(assert (=> mapNonEmpty!12468 (= mapRes!12467 (and tp!654986 tp!654987))))

(declare-fun mapRest!12467 () (Array (_ BitVec 32) List!24025))

(declare-fun mapValue!12466 () List!24025)

(declare-fun mapKey!12466 () (_ BitVec 32))

(assert (=> mapNonEmpty!12468 (= (arr!3897 (_values!2848 (v!28489 (underlying!5331 (v!28490 (underlying!5332 (cache!2863 cacheUp!979))))))) (store mapRest!12467 mapKey!12466 mapValue!12466))))

(declare-fun b!2130466 () Bool)

(declare-fun lostCauseZipper!70 ((InoxSet Context!2554)) Bool)

(assert (=> b!2130466 (= e!1358774 (not (lostCauseZipper!70 z!3839)))))

(declare-fun mapIsEmpty!12468 () Bool)

(assert (=> mapIsEmpty!12468 mapRes!12466))

(declare-fun b!2130467 () Bool)

(declare-fun lt!796380 () MutLongMap!2569)

(assert (=> b!2130467 (= e!1358746 (and e!1358770 ((_ is LongMap!2569) lt!796380)))))

(assert (=> b!2130467 (= lt!796380 (v!28492 (underlying!5334 (cache!2864 cacheDown!1098))))))

(declare-fun res!921062 () Bool)

(assert (=> b!2130468 (=> (not res!921062) (not e!1358766))))

(assert (=> b!2130468 (= res!921062 (forall!4903 stack!8 lambda!79146))))

(declare-fun tp!654988 () Bool)

(declare-fun tp!654979 () Bool)

(declare-fun array_inv!2788 (array!8771) Bool)

(assert (=> b!2130469 (= e!1358747 (and tp!654965 tp!654979 tp!654988 (array_inv!2785 (_keys!2865 (v!28489 (underlying!5331 (v!28490 (underlying!5332 (cache!2863 cacheUp!979))))))) (array_inv!2788 (_values!2848 (v!28489 (underlying!5331 (v!28490 (underlying!5332 (cache!2863 cacheUp!979))))))) e!1358775))))

(declare-fun b!2130470 () Bool)

(assert (=> b!2130470 (= e!1358757 e!1358779)))

(declare-fun b!2130471 () Bool)

(declare-fun res!921061 () Bool)

(assert (=> b!2130471 (=> (not res!921061) (not e!1358762))))

(assert (=> b!2130471 (= res!921061 (= (totalInput!2992 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2130472 () Bool)

(declare-fun res!921064 () Bool)

(assert (=> b!2130472 (=> (not res!921064) (not e!1358762))))

(assert (=> b!2130472 (= res!921064 e!1358753)))

(declare-fun res!921069 () Bool)

(assert (=> b!2130472 (=> res!921069 e!1358753)))

(declare-fun nullableZipper!92 ((InoxSet Context!2554)) Bool)

(assert (=> b!2130472 (= res!921069 (not (nullableZipper!92 z!3839)))))

(assert (= (and start!207520 res!921067) b!2130433))

(assert (= (and b!2130433 res!921070) b!2130472))

(assert (= (and b!2130472 (not res!921069)) b!2130456))

(assert (= (and b!2130472 res!921064) b!2130442))

(assert (= (and b!2130442 res!921065) b!2130439))

(assert (= (and b!2130439 res!921066) b!2130449))

(assert (= (and b!2130449 res!921072) b!2130471))

(assert (= (and b!2130471 res!921061) b!2130448))

(assert (= (and b!2130448 res!921060) b!2130468))

(assert (= (and b!2130468 res!921062) b!2130455))

(assert (= (and b!2130455 (not res!921073)) b!2130443))

(assert (= (and b!2130443 res!921063) b!2130466))

(assert (= (and b!2130443 (not res!921068)) b!2130437))

(assert (= (and b!2130437 (not res!921071)) b!2130441))

(assert (= (and b!2130458 condMapEmpty!12467) mapIsEmpty!12468))

(assert (= (and b!2130458 (not condMapEmpty!12467)) mapNonEmpty!12466))

(assert (= b!2130451 b!2130458))

(assert (= b!2130445 b!2130451))

(assert (= b!2130450 b!2130445))

(assert (= (and b!2130432 ((_ is LongMap!2567) (v!28488 (underlying!5330 (cache!2862 cacheFurthestNullable!114))))) b!2130450))

(assert (= b!2130436 b!2130432))

(assert (= (and b!2130463 ((_ is HashMap!2481) (cache!2862 cacheFurthestNullable!114))) b!2130436))

(assert (= b!2130463 b!2130447))

(assert (= start!207520 b!2130463))

(assert (= (and b!2130460 condMapEmpty!12466) mapIsEmpty!12466))

(assert (= (and b!2130460 (not condMapEmpty!12466)) mapNonEmpty!12467))

(assert (= b!2130452 b!2130460))

(assert (= b!2130431 b!2130452))

(assert (= b!2130446 b!2130431))

(assert (= (and b!2130467 ((_ is LongMap!2569) (v!28492 (underlying!5334 (cache!2864 cacheDown!1098))))) b!2130446))

(assert (= b!2130434 b!2130467))

(assert (= (and b!2130470 ((_ is HashMap!2483) (cache!2864 cacheDown!1098))) b!2130434))

(assert (= start!207520 b!2130470))

(assert (= (and b!2130440 condMapEmpty!12468) mapIsEmpty!12467))

(assert (= (and b!2130440 (not condMapEmpty!12468)) mapNonEmpty!12468))

(assert (= b!2130469 b!2130440))

(assert (= b!2130453 b!2130469))

(assert (= b!2130464 b!2130453))

(assert (= (and b!2130435 ((_ is LongMap!2568) (v!28490 (underlying!5332 (cache!2863 cacheUp!979))))) b!2130464))

(assert (= b!2130444 b!2130435))

(assert (= (and b!2130459 ((_ is HashMap!2482) (cache!2863 cacheUp!979))) b!2130444))

(assert (= start!207520 b!2130459))

(assert (= (and start!207520 condSetEmpty!15709) setIsEmpty!15709))

(assert (= (and start!207520 (not condSetEmpty!15709)) setNonEmpty!15708))

(assert (= setNonEmpty!15708 b!2130454))

(assert (= start!207520 b!2130462))

(assert (= (and b!2130461 condSetEmpty!15708) setIsEmpty!15708))

(assert (= (and b!2130461 (not condSetEmpty!15708)) setNonEmpty!15709))

(assert (= setNonEmpty!15709 b!2130457))

(assert (= b!2130461 b!2130465))

(assert (= b!2130438 b!2130461))

(assert (= (and start!207520 ((_ is Cons!23942) stack!8)) b!2130438))

(declare-fun m!2580578 () Bool)

(assert (=> b!2130468 m!2580578))

(declare-fun m!2580580 () Bool)

(assert (=> setNonEmpty!15709 m!2580580))

(declare-fun m!2580582 () Bool)

(assert (=> b!2130466 m!2580582))

(declare-fun m!2580584 () Bool)

(assert (=> b!2130469 m!2580584))

(declare-fun m!2580586 () Bool)

(assert (=> b!2130469 m!2580586))

(declare-fun m!2580588 () Bool)

(assert (=> b!2130472 m!2580588))

(declare-fun m!2580590 () Bool)

(assert (=> b!2130451 m!2580590))

(declare-fun m!2580592 () Bool)

(assert (=> b!2130451 m!2580592))

(declare-fun m!2580594 () Bool)

(assert (=> b!2130433 m!2580594))

(declare-fun m!2580596 () Bool)

(assert (=> setNonEmpty!15708 m!2580596))

(declare-fun m!2580598 () Bool)

(assert (=> mapNonEmpty!12468 m!2580598))

(declare-fun m!2580600 () Bool)

(assert (=> b!2130442 m!2580600))

(declare-fun m!2580602 () Bool)

(assert (=> mapNonEmpty!12467 m!2580602))

(declare-fun m!2580604 () Bool)

(assert (=> b!2130452 m!2580604))

(declare-fun m!2580606 () Bool)

(assert (=> b!2130452 m!2580606))

(declare-fun m!2580608 () Bool)

(assert (=> b!2130439 m!2580608))

(declare-fun m!2580610 () Bool)

(assert (=> mapNonEmpty!12466 m!2580610))

(declare-fun m!2580612 () Bool)

(assert (=> b!2130455 m!2580612))

(declare-fun m!2580614 () Bool)

(assert (=> b!2130455 m!2580614))

(declare-fun m!2580616 () Bool)

(assert (=> b!2130447 m!2580616))

(declare-fun m!2580618 () Bool)

(assert (=> b!2130438 m!2580618))

(declare-fun m!2580620 () Bool)

(assert (=> b!2130462 m!2580620))

(declare-fun m!2580622 () Bool)

(assert (=> b!2130461 m!2580622))

(declare-fun m!2580624 () Bool)

(assert (=> b!2130441 m!2580624))

(declare-fun m!2580626 () Bool)

(assert (=> b!2130441 m!2580626))

(assert (=> b!2130441 m!2580614))

(assert (=> b!2130448 m!2580614))

(declare-fun m!2580628 () Bool)

(assert (=> b!2130448 m!2580628))

(declare-fun m!2580630 () Bool)

(assert (=> start!207520 m!2580630))

(declare-fun m!2580632 () Bool)

(assert (=> start!207520 m!2580632))

(declare-fun m!2580634 () Bool)

(assert (=> start!207520 m!2580634))

(declare-fun m!2580636 () Bool)

(assert (=> start!207520 m!2580636))

(declare-fun m!2580638 () Bool)

(assert (=> b!2130449 m!2580638))

(declare-fun m!2580640 () Bool)

(assert (=> b!2130463 m!2580640))

(declare-fun m!2580642 () Bool)

(assert (=> b!2130465 m!2580642))

(check-sat (not b!2130460) (not b!2130438) (not b_next!62853) (not b!2130469) (not setNonEmpty!15708) (not mapNonEmpty!12468) (not b!2130457) (not b!2130455) b_and!171721 (not b!2130448) (not b_next!62845) (not b!2130454) (not b!2130466) (not b!2130472) (not b_next!62847) (not b_next!62851) (not b!2130449) (not b!2130440) (not start!207520) (not b!2130458) b_and!171725 (not b!2130442) (not b_next!62855) (not b!2130451) (not b!2130439) b_and!171727 (not b!2130452) (not b!2130465) (not b!2130462) (not b!2130468) (not mapNonEmpty!12466) (not mapNonEmpty!12467) (not b!2130433) (not b!2130441) (not b_next!62849) (not b!2130463) (not setNonEmpty!15709) b_and!171723 (not b!2130461) b_and!171729 b_and!171731 (not b!2130447))
(check-sat b_and!171725 (not b_next!62853) (not b_next!62855) b_and!171727 b_and!171721 (not b_next!62845) (not b_next!62849) b_and!171731 (not b_next!62847) (not b_next!62851) b_and!171723 b_and!171729)
