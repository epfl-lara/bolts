; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207110 () Bool)

(assert start!207110)

(declare-fun b!2122883 () Bool)

(declare-fun b_free!61685 () Bool)

(declare-fun b_next!62389 () Bool)

(assert (=> b!2122883 (= b_free!61685 (not b_next!62389))))

(declare-fun tp!650184 () Bool)

(declare-fun b_and!171265 () Bool)

(assert (=> b!2122883 (= tp!650184 b_and!171265)))

(declare-fun b!2122904 () Bool)

(declare-fun b_free!61687 () Bool)

(declare-fun b_next!62391 () Bool)

(assert (=> b!2122904 (= b_free!61687 (not b_next!62391))))

(declare-fun tp!650182 () Bool)

(declare-fun b_and!171267 () Bool)

(assert (=> b!2122904 (= tp!650182 b_and!171267)))

(declare-fun b!2122896 () Bool)

(declare-fun b_free!61689 () Bool)

(declare-fun b_next!62393 () Bool)

(assert (=> b!2122896 (= b_free!61689 (not b_next!62393))))

(declare-fun tp!650181 () Bool)

(declare-fun b_and!171269 () Bool)

(assert (=> b!2122896 (= tp!650181 b_and!171269)))

(declare-fun b!2122912 () Bool)

(declare-fun b_free!61691 () Bool)

(declare-fun b_next!62395 () Bool)

(assert (=> b!2122912 (= b_free!61691 (not b_next!62395))))

(declare-fun tp!650171 () Bool)

(declare-fun b_and!171271 () Bool)

(assert (=> b!2122912 (= tp!650171 b_and!171271)))

(declare-fun b!2122887 () Bool)

(declare-fun b_free!61693 () Bool)

(declare-fun b_next!62397 () Bool)

(assert (=> b!2122887 (= b_free!61693 (not b_next!62397))))

(declare-fun tp!650190 () Bool)

(declare-fun b_and!171273 () Bool)

(assert (=> b!2122887 (= tp!650190 b_and!171273)))

(declare-fun b!2122899 () Bool)

(declare-fun b_free!61695 () Bool)

(declare-fun b_next!62399 () Bool)

(assert (=> b!2122899 (= b_free!61695 (not b_next!62399))))

(declare-fun tp!650175 () Bool)

(declare-fun b_and!171275 () Bool)

(assert (=> b!2122899 (= tp!650175 b_and!171275)))

(declare-fun b!2122947 () Bool)

(declare-fun e!1352486 () Bool)

(declare-fun e!1352488 () Bool)

(assert (=> b!2122947 (= e!1352486 e!1352488)))

(declare-fun b!2122948 () Bool)

(declare-fun e!1352495 () Bool)

(declare-fun e!1352494 () Bool)

(assert (=> b!2122948 (= e!1352495 e!1352494)))

(declare-fun b!2122949 () Bool)

(declare-fun e!1352491 () Bool)

(declare-fun e!1352499 () Bool)

(assert (=> b!2122949 (= e!1352491 e!1352499)))

(declare-fun setNonEmpty!14928 () Bool)

(declare-fun setRes!14928 () Bool)

(assert (=> setNonEmpty!14928 (= setRes!14928 true)))

(declare-datatypes ((C!11484 0))(
  ( (C!11485 (val!6728 Int)) )
))
(declare-datatypes ((Regex!5669 0))(
  ( (ElementMatch!5669 (c!339790 C!11484)) (Concat!9971 (regOne!11850 Regex!5669) (regTwo!11850 Regex!5669)) (EmptyExpr!5669) (Star!5669 (reg!5998 Regex!5669)) (EmptyLang!5669) (Union!5669 (regOne!11851 Regex!5669) (regTwo!11851 Regex!5669)) )
))
(declare-datatypes ((List!23807 0))(
  ( (Nil!23723) (Cons!23723 (h!29124 Regex!5669) (t!196325 List!23807)) )
))
(declare-datatypes ((Context!2478 0))(
  ( (Context!2479 (exprs!1739 List!23807)) )
))
(declare-datatypes ((tuple3!2922 0))(
  ( (tuple3!2923 (_1!13602 Regex!5669) (_2!13602 Context!2478) (_3!1931 C!11484)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23342 0))(
  ( (tuple2!23343 (_1!13603 tuple3!2922) (_2!13603 (InoxSet Context!2478))) )
))
(declare-datatypes ((tuple2!23344 0))(
  ( (tuple2!23345 (_1!13604 Context!2478) (_2!13604 C!11484)) )
))
(declare-datatypes ((tuple2!23346 0))(
  ( (tuple2!23347 (_1!13605 tuple2!23344) (_2!13605 (InoxSet Context!2478))) )
))
(declare-datatypes ((List!23808 0))(
  ( (Nil!23724) (Cons!23724 (h!29125 tuple2!23346) (t!196326 List!23808)) )
))
(declare-datatypes ((List!23809 0))(
  ( (Nil!23725) (Cons!23725 (h!29126 tuple2!23342) (t!196327 List!23809)) )
))
(declare-datatypes ((array!8453 0))(
  ( (array!8454 (arr!3750 (Array (_ BitVec 32) (_ BitVec 64))) (size!18542 (_ BitVec 32))) )
))
(declare-datatypes ((array!8455 0))(
  ( (array!8456 (arr!3751 (Array (_ BitVec 32) List!23809)) (size!18543 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4920 0))(
  ( (LongMapFixedSize!4921 (defaultEntry!2825 Int) (mask!6610 (_ BitVec 32)) (extraKeys!2708 (_ BitVec 32)) (zeroValue!2718 List!23809) (minValue!2718 List!23809) (_size!4971 (_ BitVec 32)) (_keys!2757 array!8453) (_values!2740 array!8455) (_vacant!2521 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9665 0))(
  ( (Cell!9666 (v!28253 LongMapFixedSize!4920)) )
))
(declare-datatypes ((MutLongMap!2460 0))(
  ( (LongMap!2460 (underlying!5115 Cell!9665)) (MutLongMapExt!2459 (__x!15556 Int)) )
))
(declare-datatypes ((Cell!9667 0))(
  ( (Cell!9668 (v!28254 MutLongMap!2460)) )
))
(declare-datatypes ((List!23810 0))(
  ( (Nil!23726) (Cons!23726 (h!29127 C!11484) (t!196328 List!23810)) )
))
(declare-datatypes ((IArray!15619 0))(
  ( (IArray!15620 (innerList!7867 List!23810)) )
))
(declare-datatypes ((Hashable!2374 0))(
  ( (HashableExt!2373 (__x!15557 Int)) )
))
(declare-datatypes ((Hashable!2375 0))(
  ( (HashableExt!2374 (__x!15558 Int)) )
))
(declare-datatypes ((array!8457 0))(
  ( (array!8458 (arr!3752 (Array (_ BitVec 32) List!23808)) (size!18544 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4922 0))(
  ( (LongMapFixedSize!4923 (defaultEntry!2826 Int) (mask!6611 (_ BitVec 32)) (extraKeys!2709 (_ BitVec 32)) (zeroValue!2719 List!23808) (minValue!2719 List!23808) (_size!4972 (_ BitVec 32)) (_keys!2758 array!8453) (_values!2741 array!8457) (_vacant!2522 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9669 0))(
  ( (Cell!9670 (v!28255 LongMapFixedSize!4922)) )
))
(declare-datatypes ((MutLongMap!2461 0))(
  ( (LongMap!2461 (underlying!5116 Cell!9669)) (MutLongMapExt!2460 (__x!15559 Int)) )
))
(declare-datatypes ((Cell!9671 0))(
  ( (Cell!9672 (v!28256 MutLongMap!2461)) )
))
(declare-datatypes ((MutableMap!2374 0))(
  ( (MutableMapExt!2373 (__x!15560 Int)) (HashMap!2374 (underlying!5117 Cell!9671) (hashF!4297 Hashable!2375) (_size!4973 (_ BitVec 32)) (defaultValue!2536 Int)) )
))
(declare-datatypes ((CacheUp!1646 0))(
  ( (CacheUp!1647 (cache!2755 MutableMap!2374)) )
))
(declare-datatypes ((Conc!7807 0))(
  ( (Node!7807 (left!18350 Conc!7807) (right!18680 Conc!7807) (csize!15844 Int) (cheight!8018 Int)) (Leaf!11409 (xs!10749 IArray!15619) (csize!15845 Int)) (Empty!7807) )
))
(declare-datatypes ((BalanceConc!15376 0))(
  ( (BalanceConc!15377 (c!339791 Conc!7807)) )
))
(declare-datatypes ((StackFrame!50 0))(
  ( (StackFrame!51 (z!5731 (InoxSet Context!2478)) (from!2627 Int) (lastNullablePos!314 Int) (res!919293 Int) (totalInput!2915 BalanceConc!15376)) )
))
(declare-datatypes ((List!23811 0))(
  ( (Nil!23727) (Cons!23727 (h!29128 StackFrame!50) (t!196329 List!23811)) )
))
(declare-datatypes ((tuple2!23348 0))(
  ( (tuple2!23349 (_1!13606 Int) (_2!13606 List!23811)) )
))
(declare-datatypes ((MutableMap!2375 0))(
  ( (MutableMapExt!2374 (__x!15561 Int)) (HashMap!2375 (underlying!5118 Cell!9667) (hashF!4298 Hashable!2374) (_size!4974 (_ BitVec 32)) (defaultValue!2537 Int)) )
))
(declare-datatypes ((CacheDown!1632 0))(
  ( (CacheDown!1633 (cache!2756 MutableMap!2375)) )
))
(declare-datatypes ((tuple3!2924 0))(
  ( (tuple3!2925 (_1!13607 tuple2!23348) (_2!13607 CacheUp!1646) (_3!1932 CacheDown!1632)) )
))
(declare-fun lt!795115 () tuple3!2924)

(declare-fun setElem!14928 () Context!2478)

(declare-fun setRest!14928 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14928 (= (z!5731 (h!29128 (_2!13606 (_1!13607 lt!795115)))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14928 true) setRest!14928))))

(declare-fun mapIsEmpty!11965 () Bool)

(declare-fun mapRes!11966 () Bool)

(assert (=> mapIsEmpty!11965 mapRes!11966))

(declare-fun b!2122950 () Bool)

(declare-fun e!1352498 () Bool)

(declare-fun e!1352496 () Bool)

(assert (=> b!2122950 (= e!1352498 e!1352496)))

(declare-fun mapNonEmpty!11965 () Bool)

(assert (=> mapNonEmpty!11965 (= mapRes!11966 true)))

(declare-fun mapKey!11966 () (_ BitVec 32))

(declare-fun mapRest!11966 () (Array (_ BitVec 32) List!23808))

(declare-fun mapValue!11966 () List!23808)

(assert (=> mapNonEmpty!11965 (= (arr!3752 (_values!2741 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795115)))))))) (store mapRest!11966 mapKey!11966 mapValue!11966))))

(declare-fun mapIsEmpty!11966 () Bool)

(declare-fun mapRes!11965 () Bool)

(assert (=> mapIsEmpty!11966 mapRes!11965))

(declare-fun b!2122951 () Bool)

(declare-fun e!1352497 () Bool)

(assert (=> b!2122951 (= e!1352494 e!1352497)))

(declare-fun mapNonEmpty!11966 () Bool)

(assert (=> mapNonEmpty!11966 (= mapRes!11965 true)))

(declare-fun mapValue!11965 () List!23809)

(declare-fun mapRest!11965 () (Array (_ BitVec 32) List!23809))

(declare-fun mapKey!11965 () (_ BitVec 32))

(assert (=> mapNonEmpty!11966 (= (arr!3751 (_values!2740 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795115)))))))) (store mapRest!11965 mapKey!11965 mapValue!11965))))

(declare-fun b!2122952 () Bool)

(declare-fun e!1352493 () Bool)

(declare-fun e!1352489 () Bool)

(assert (=> b!2122952 (= e!1352493 e!1352489)))

(declare-fun b!2122953 () Bool)

(declare-fun e!1352492 () Bool)

(declare-fun lt!795124 () MutLongMap!2461)

(get-info :version)

(assert (=> b!2122953 (= e!1352497 (and e!1352492 ((_ is LongMap!2461) lt!795124)))))

(assert (=> b!2122953 (= lt!795124 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795115)))))))

(declare-fun b!2122954 () Bool)

(declare-fun e!1352490 () Bool)

(assert (=> b!2122954 (= e!1352490 mapRes!11966)))

(declare-fun condMapEmpty!11966 () Bool)

(declare-fun mapDefault!11965 () List!23808)

(assert (=> b!2122954 (= condMapEmpty!11966 (= (arr!3752 (_values!2741 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795115)))))))) ((as const (Array (_ BitVec 32) List!23808)) mapDefault!11965)))))

(declare-fun b!2122955 () Bool)

(declare-fun e!1352484 () Bool)

(assert (=> b!2122955 (= e!1352484 e!1352490)))

(declare-fun b!2122956 () Bool)

(assert (=> b!2122956 (= e!1352488 mapRes!11965)))

(declare-fun condMapEmpty!11965 () Bool)

(declare-fun mapDefault!11966 () List!23809)

(assert (=> b!2122956 (= condMapEmpty!11965 (= (arr!3751 (_values!2740 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795115)))))))) ((as const (Array (_ BitVec 32) List!23809)) mapDefault!11966)))))

(declare-fun b!2122957 () Bool)

(declare-fun e!1352487 () Bool)

(assert (=> b!2122957 (= e!1352489 e!1352487)))

(declare-fun b!2122958 () Bool)

(assert (=> b!2122958 (= e!1352496 e!1352486)))

(declare-fun b!2122881 () Bool)

(assert (=> b!2122881 (and e!1352491 e!1352495 e!1352493)))

(declare-fun setIsEmpty!14928 () Bool)

(assert (=> setIsEmpty!14928 setRes!14928))

(declare-fun b!2122959 () Bool)

(declare-fun e!1352485 () Bool)

(assert (=> b!2122959 (= e!1352485 e!1352484)))

(declare-fun b!2122960 () Bool)

(declare-fun lt!795125 () MutLongMap!2460)

(assert (=> b!2122960 (= e!1352487 (and e!1352498 ((_ is LongMap!2460) lt!795125)))))

(assert (=> b!2122960 (= lt!795125 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795115)))))))

(declare-fun b!2122961 () Bool)

(assert (=> b!2122961 (= e!1352499 setRes!14928)))

(declare-fun condSetEmpty!14928 () Bool)

(assert (=> b!2122961 (= condSetEmpty!14928 (= (z!5731 (h!29128 (_2!13606 (_1!13607 lt!795115)))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun b!2122962 () Bool)

(assert (=> b!2122962 (= e!1352492 e!1352485)))

(assert (= (and b!2122961 condSetEmpty!14928) setIsEmpty!14928))

(assert (= (and b!2122961 (not condSetEmpty!14928)) setNonEmpty!14928))

(assert (= b!2122949 b!2122961))

(assert (= (and b!2122881 ((_ is Cons!23727) (_2!13606 (_1!13607 lt!795115)))) b!2122949))

(assert (= (and b!2122954 condMapEmpty!11966) mapIsEmpty!11965))

(assert (= (and b!2122954 (not condMapEmpty!11966)) mapNonEmpty!11965))

(assert (= b!2122955 b!2122954))

(assert (= b!2122959 b!2122955))

(assert (= b!2122962 b!2122959))

(assert (= (and b!2122953 ((_ is LongMap!2461) (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795115)))))) b!2122962))

(assert (= b!2122951 b!2122953))

(assert (= (and b!2122948 ((_ is HashMap!2374) (cache!2755 (_2!13607 lt!795115)))) b!2122951))

(assert (= b!2122881 b!2122948))

(assert (= (and b!2122956 condMapEmpty!11965) mapIsEmpty!11966))

(assert (= (and b!2122956 (not condMapEmpty!11965)) mapNonEmpty!11966))

(assert (= b!2122947 b!2122956))

(assert (= b!2122958 b!2122947))

(assert (= b!2122950 b!2122958))

(assert (= (and b!2122960 ((_ is LongMap!2460) (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795115)))))) b!2122950))

(assert (= b!2122957 b!2122960))

(assert (= (and b!2122952 ((_ is HashMap!2375) (cache!2756 (_3!1932 lt!795115)))) b!2122957))

(assert (= b!2122881 b!2122952))

(declare-fun order!14691 () Int)

(declare-fun order!14689 () Int)

(declare-fun lambda!78617 () Int)

(declare-fun dynLambda!11333 (Int Int) Int)

(declare-fun dynLambda!11334 (Int Int) Int)

(assert (=> b!2122947 (< (dynLambda!11333 order!14689 (defaultEntry!2825 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795115)))))))) (dynLambda!11334 order!14691 lambda!78617))))

(declare-fun order!14693 () Int)

(declare-fun dynLambda!11335 (Int Int) Int)

(assert (=> b!2122951 (< (dynLambda!11335 order!14693 (defaultValue!2536 (cache!2755 (_2!13607 lt!795115)))) (dynLambda!11334 order!14691 lambda!78617))))

(declare-fun order!14695 () Int)

(declare-fun dynLambda!11336 (Int Int) Int)

(assert (=> b!2122957 (< (dynLambda!11336 order!14695 (defaultValue!2537 (cache!2756 (_3!1932 lt!795115)))) (dynLambda!11334 order!14691 lambda!78617))))

(declare-fun order!14697 () Int)

(declare-fun dynLambda!11337 (Int Int) Int)

(assert (=> b!2122955 (< (dynLambda!11337 order!14697 (defaultEntry!2826 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795115)))))))) (dynLambda!11334 order!14691 lambda!78617))))

(declare-fun m!2575969 () Bool)

(assert (=> mapNonEmpty!11965 m!2575969))

(declare-fun m!2575971 () Bool)

(assert (=> mapNonEmpty!11966 m!2575971))

(declare-fun bs!442768 () Bool)

(declare-fun b!2122906 () Bool)

(assert (= bs!442768 (and b!2122906 b!2122881)))

(declare-fun lambda!78618 () Int)

(assert (=> bs!442768 (not (= lambda!78618 lambda!78617))))

(assert (=> b!2122906 true))

(declare-fun mapIsEmpty!11958 () Bool)

(declare-fun mapRes!11959 () Bool)

(assert (=> mapIsEmpty!11958 mapRes!11959))

(declare-fun b!2122879 () Bool)

(declare-fun e!1352440 () Bool)

(declare-fun e!1352427 () Bool)

(assert (=> b!2122879 (= e!1352440 e!1352427)))

(declare-fun b!2122880 () Bool)

(declare-fun e!1352444 () Bool)

(declare-fun e!1352432 () Bool)

(assert (=> b!2122880 (= e!1352444 e!1352432)))

(declare-fun e!1352443 () Bool)

(declare-fun e!1352439 () Bool)

(assert (=> b!2122881 (= e!1352443 (not e!1352439))))

(declare-fun res!919288 () Bool)

(assert (=> b!2122881 (=> res!919288 e!1352439)))

(declare-fun lt!795118 () Int)

(assert (=> b!2122881 (= res!919288 (< (+ 1 (- (_1!13606 (_1!13607 lt!795115)) lt!795118)) 0))))

(declare-fun lt!795117 () Int)

(declare-datatypes ((Hashable!2376 0))(
  ( (HashableExt!2375 (__x!15562 Int)) )
))
(declare-datatypes ((tuple3!2926 0))(
  ( (tuple3!2927 (_1!13608 (InoxSet Context!2478)) (_2!13608 Int) (_3!1933 Int)) )
))
(declare-datatypes ((tuple2!23350 0))(
  ( (tuple2!23351 (_1!13609 tuple3!2926) (_2!13609 Int)) )
))
(declare-datatypes ((List!23812 0))(
  ( (Nil!23728) (Cons!23728 (h!29129 tuple2!23350) (t!196330 List!23812)) )
))
(declare-datatypes ((array!8459 0))(
  ( (array!8460 (arr!3753 (Array (_ BitVec 32) List!23812)) (size!18545 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4924 0))(
  ( (LongMapFixedSize!4925 (defaultEntry!2827 Int) (mask!6612 (_ BitVec 32)) (extraKeys!2710 (_ BitVec 32)) (zeroValue!2720 List!23812) (minValue!2720 List!23812) (_size!4975 (_ BitVec 32)) (_keys!2759 array!8453) (_values!2742 array!8459) (_vacant!2523 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9673 0))(
  ( (Cell!9674 (v!28257 LongMapFixedSize!4924)) )
))
(declare-datatypes ((MutLongMap!2462 0))(
  ( (LongMap!2462 (underlying!5119 Cell!9673)) (MutLongMapExt!2461 (__x!15563 Int)) )
))
(declare-datatypes ((Unit!37602 0))(
  ( (Unit!37603) )
))
(declare-datatypes ((Cell!9675 0))(
  ( (Cell!9676 (v!28258 MutLongMap!2462)) )
))
(declare-datatypes ((MutableMap!2376 0))(
  ( (MutableMapExt!2375 (__x!15564 Int)) (HashMap!2376 (underlying!5120 Cell!9675) (hashF!4299 Hashable!2376) (_size!4976 (_ BitVec 32)) (defaultValue!2538 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!594 0))(
  ( (CacheFurthestNullable!595 (cache!2757 MutableMap!2376) (totalInput!2916 BalanceConc!15376)) )
))
(declare-datatypes ((tuple2!23352 0))(
  ( (tuple2!23353 (_1!13610 Unit!37602) (_2!13610 CacheFurthestNullable!594)) )
))
(declare-fun lt!795119 () tuple2!23352)

(declare-fun totalInput!886 () BalanceConc!15376)

(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!594)

(declare-fun fillUpCache!8 (List!23811 BalanceConc!15376 Int Int Int CacheFurthestNullable!594) tuple2!23352)

(assert (=> b!2122881 (= lt!795119 (fillUpCache!8 (_2!13606 (_1!13607 lt!795115)) totalInput!886 lt!795117 (_1!13606 (_1!13607 lt!795115)) 0 cacheFurthestNullable!130))))

(declare-fun e!1352448 () Bool)

(assert (=> b!2122881 e!1352448))

(declare-fun res!919292 () Bool)

(assert (=> b!2122881 (=> (not res!919292) (not e!1352448))))

(declare-fun forall!4866 (List!23811 Int) Bool)

(assert (=> b!2122881 (= res!919292 (forall!4866 (_2!13606 (_1!13607 lt!795115)) lambda!78617))))

(declare-fun z!3883 () (InoxSet Context!2478))

(declare-fun cacheUp!991 () CacheUp!1646)

(declare-fun e!1352431 () Int)

(declare-fun cacheDown!1110 () CacheDown!1632)

(declare-fun furthestNullablePositionStackMem!11 ((InoxSet Context!2478) Int BalanceConc!15376 Int Int List!23811 CacheUp!1646 CacheDown!1632 CacheFurthestNullable!594) tuple3!2924)

(assert (=> b!2122881 (= lt!795115 (furthestNullablePositionStackMem!11 z!3883 lt!795118 totalInput!886 lt!795117 e!1352431 Nil!23727 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))

(declare-fun c!339789 () Bool)

(declare-fun nullableZipper!66 ((InoxSet Context!2478)) Bool)

(assert (=> b!2122881 (= c!339789 (nullableZipper!66 z!3883))))

(declare-fun input!5507 () BalanceConc!15376)

(declare-fun size!18546 (BalanceConc!15376) Int)

(assert (=> b!2122881 (= lt!795118 (- lt!795117 (size!18546 input!5507)))))

(assert (=> b!2122881 (= lt!795117 (size!18546 totalInput!886))))

(declare-fun b!2122882 () Bool)

(declare-fun e!1352447 () Bool)

(declare-fun e!1352429 () Bool)

(assert (=> b!2122882 (= e!1352447 e!1352429)))

(declare-fun e!1352434 () Bool)

(declare-fun e!1352437 () Bool)

(assert (=> b!2122883 (= e!1352434 (and e!1352437 tp!650184))))

(declare-fun b!2122884 () Bool)

(declare-fun res!919291 () Bool)

(assert (=> b!2122884 (=> (not res!919291) (not e!1352443))))

(declare-fun valid!1934 (CacheUp!1646) Bool)

(assert (=> b!2122884 (= res!919291 (valid!1934 cacheUp!991))))

(declare-fun b!2122885 () Bool)

(declare-fun e!1352442 () Bool)

(assert (=> b!2122885 (= e!1352427 e!1352442)))

(declare-fun b!2122886 () Bool)

(declare-fun e!1352433 () Bool)

(declare-fun e!1352421 () Bool)

(declare-fun e!1352441 () Bool)

(declare-fun inv!31317 (BalanceConc!15376) Bool)

(assert (=> b!2122886 (= e!1352433 (and e!1352441 (inv!31317 (totalInput!2916 cacheFurthestNullable!130)) e!1352421))))

(declare-fun tp!650168 () Bool)

(declare-fun e!1352450 () Bool)

(declare-fun tp!650177 () Bool)

(declare-fun e!1352420 () Bool)

(declare-fun array_inv!2684 (array!8453) Bool)

(declare-fun array_inv!2685 (array!8457) Bool)

(assert (=> b!2122887 (= e!1352420 (and tp!650190 tp!650168 tp!650177 (array_inv!2684 (_keys!2758 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991))))))) (array_inv!2685 (_values!2741 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991))))))) e!1352450))))

(declare-fun b!2122888 () Bool)

(declare-fun e!1352436 () Bool)

(declare-fun lt!795116 () MutLongMap!2460)

(assert (=> b!2122888 (= e!1352436 (and e!1352447 ((_ is LongMap!2460) lt!795116)))))

(assert (=> b!2122888 (= lt!795116 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110))))))

(declare-fun b!2122889 () Bool)

(declare-fun lt!795113 () MutLongMap!2461)

(assert (=> b!2122889 (= e!1352437 (and e!1352444 ((_ is LongMap!2461) lt!795113)))))

(assert (=> b!2122889 (= lt!795113 (v!28256 (underlying!5117 (cache!2755 cacheUp!991))))))

(declare-fun e!1352425 () Bool)

(declare-fun setNonEmpty!14925 () Bool)

(declare-fun setRes!14925 () Bool)

(declare-fun setElem!14925 () Context!2478)

(declare-fun tp!650192 () Bool)

(declare-fun inv!31318 (Context!2478) Bool)

(assert (=> setNonEmpty!14925 (= setRes!14925 (and tp!650192 (inv!31318 setElem!14925) e!1352425))))

(declare-fun setRest!14925 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14925 (= z!3883 ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14925 true) setRest!14925))))

(declare-fun b!2122890 () Bool)

(declare-fun e!1352426 () Bool)

(assert (=> b!2122890 (= e!1352426 e!1352434)))

(declare-fun b!2122891 () Bool)

(assert (=> b!2122891 (= e!1352431 (- lt!795118 1))))

(declare-fun mapNonEmpty!11958 () Bool)

(declare-fun mapRes!11960 () Bool)

(declare-fun tp!650172 () Bool)

(declare-fun tp!650186 () Bool)

(assert (=> mapNonEmpty!11958 (= mapRes!11960 (and tp!650172 tp!650186))))

(declare-fun mapValue!11960 () List!23808)

(declare-fun mapKey!11958 () (_ BitVec 32))

(declare-fun mapRest!11958 () (Array (_ BitVec 32) List!23808))

(assert (=> mapNonEmpty!11958 (= (arr!3752 (_values!2741 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991))))))) (store mapRest!11958 mapKey!11958 mapValue!11960))))

(declare-fun b!2122892 () Bool)

(declare-fun e!1352422 () Bool)

(declare-fun lt!795114 () MutLongMap!2462)

(assert (=> b!2122892 (= e!1352422 (and e!1352440 ((_ is LongMap!2462) lt!795114)))))

(assert (=> b!2122892 (= lt!795114 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))))

(declare-fun setIsEmpty!14925 () Bool)

(assert (=> setIsEmpty!14925 setRes!14925))

(declare-fun b!2122893 () Bool)

(declare-fun tp!650173 () Bool)

(assert (=> b!2122893 (= e!1352450 (and tp!650173 mapRes!11960))))

(declare-fun condMapEmpty!11958 () Bool)

(declare-fun mapDefault!11960 () List!23808)

(assert (=> b!2122893 (= condMapEmpty!11958 (= (arr!3752 (_values!2741 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23808)) mapDefault!11960)))))

(declare-fun b!2122894 () Bool)

(declare-fun tp!650180 () Bool)

(assert (=> b!2122894 (= e!1352425 tp!650180)))

(declare-fun mapIsEmpty!11959 () Bool)

(declare-fun mapRes!11958 () Bool)

(assert (=> mapIsEmpty!11959 mapRes!11958))

(declare-fun mapIsEmpty!11960 () Bool)

(assert (=> mapIsEmpty!11960 mapRes!11960))

(declare-fun b!2122895 () Bool)

(declare-fun e!1352438 () Bool)

(declare-fun tp!650188 () Bool)

(declare-fun inv!31319 (Conc!7807) Bool)

(assert (=> b!2122895 (= e!1352438 (and (inv!31319 (c!339791 totalInput!886)) tp!650188))))

(declare-fun e!1352430 () Bool)

(assert (=> b!2122896 (= e!1352430 (and e!1352436 tp!650181))))

(declare-fun b!2122897 () Bool)

(declare-fun e!1352435 () Bool)

(declare-fun tp!650176 () Bool)

(assert (=> b!2122897 (= e!1352435 (and tp!650176 mapRes!11958))))

(declare-fun condMapEmpty!11960 () Bool)

(declare-fun mapDefault!11958 () List!23809)

(assert (=> b!2122897 (= condMapEmpty!11960 (= (arr!3751 (_values!2740 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23809)) mapDefault!11958)))))

(declare-fun b!2122898 () Bool)

(declare-fun e!1352449 () Bool)

(declare-fun tp!650170 () Bool)

(assert (=> b!2122898 (= e!1352449 (and tp!650170 mapRes!11959))))

(declare-fun condMapEmpty!11959 () Bool)

(declare-fun mapDefault!11959 () List!23812)

(assert (=> b!2122898 (= condMapEmpty!11959 (= (arr!3753 (_values!2742 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23812)) mapDefault!11959)))))

(assert (=> b!2122899 (= e!1352441 (and e!1352422 tp!650175))))

(declare-fun res!919289 () Bool)

(assert (=> start!207110 (=> (not res!919289) (not e!1352443))))

(declare-fun isSuffix!620 (List!23810 List!23810) Bool)

(declare-fun list!9530 (BalanceConc!15376) List!23810)

(assert (=> start!207110 (= res!919289 (isSuffix!620 (list!9530 input!5507) (list!9530 totalInput!886)))))

(assert (=> start!207110 e!1352443))

(declare-fun inv!31320 (CacheFurthestNullable!594) Bool)

(assert (=> start!207110 (and (inv!31320 cacheFurthestNullable!130) e!1352433)))

(declare-fun condSetEmpty!14925 () Bool)

(assert (=> start!207110 (= condSetEmpty!14925 (= z!3883 ((as const (Array Context!2478 Bool)) false)))))

(assert (=> start!207110 setRes!14925))

(declare-fun e!1352423 () Bool)

(assert (=> start!207110 (and (inv!31317 input!5507) e!1352423)))

(declare-fun e!1352451 () Bool)

(declare-fun inv!31321 (CacheDown!1632) Bool)

(assert (=> start!207110 (and (inv!31321 cacheDown!1110) e!1352451)))

(declare-fun inv!31322 (CacheUp!1646) Bool)

(assert (=> start!207110 (and (inv!31322 cacheUp!991) e!1352426)))

(assert (=> start!207110 (and (inv!31317 totalInput!886) e!1352438)))

(declare-fun b!2122900 () Bool)

(declare-fun res!919290 () Bool)

(assert (=> b!2122900 (=> (not res!919290) (not e!1352443))))

(declare-fun valid!1935 (CacheDown!1632) Bool)

(assert (=> b!2122900 (= res!919290 (valid!1935 cacheDown!1110))))

(declare-fun b!2122901 () Bool)

(assert (=> b!2122901 (= e!1352432 e!1352420)))

(declare-fun mapNonEmpty!11959 () Bool)

(declare-fun tp!650189 () Bool)

(declare-fun tp!650179 () Bool)

(assert (=> mapNonEmpty!11959 (= mapRes!11959 (and tp!650189 tp!650179))))

(declare-fun mapRest!11959 () (Array (_ BitVec 32) List!23812))

(declare-fun mapValue!11959 () List!23812)

(declare-fun mapKey!11960 () (_ BitVec 32))

(assert (=> mapNonEmpty!11959 (= (arr!3753 (_values!2742 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))))) (store mapRest!11959 mapKey!11960 mapValue!11959))))

(declare-fun b!2122902 () Bool)

(declare-fun res!919287 () Bool)

(assert (=> b!2122902 (=> (not res!919287) (not e!1352443))))

(declare-fun valid!1936 (CacheFurthestNullable!594) Bool)

(assert (=> b!2122902 (= res!919287 (valid!1936 cacheFurthestNullable!130))))

(declare-fun b!2122903 () Bool)

(declare-fun tp!650191 () Bool)

(assert (=> b!2122903 (= e!1352421 (and (inv!31319 (c!339791 (totalInput!2916 cacheFurthestNullable!130))) tp!650191))))

(declare-fun tp!650183 () Bool)

(declare-fun e!1352424 () Bool)

(declare-fun tp!650178 () Bool)

(declare-fun array_inv!2686 (array!8455) Bool)

(assert (=> b!2122904 (= e!1352424 (and tp!650182 tp!650178 tp!650183 (array_inv!2684 (_keys!2757 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110))))))) (array_inv!2686 (_values!2740 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110))))))) e!1352435))))

(declare-fun b!2122905 () Bool)

(assert (=> b!2122905 (= e!1352451 e!1352430)))

(declare-fun mapNonEmpty!11960 () Bool)

(declare-fun tp!650167 () Bool)

(declare-fun tp!650185 () Bool)

(assert (=> mapNonEmpty!11960 (= mapRes!11958 (and tp!650167 tp!650185))))

(declare-fun mapValue!11958 () List!23809)

(declare-fun mapKey!11959 () (_ BitVec 32))

(declare-fun mapRest!11960 () (Array (_ BitVec 32) List!23809))

(assert (=> mapNonEmpty!11960 (= (arr!3751 (_values!2740 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110))))))) (store mapRest!11960 mapKey!11959 mapValue!11958))))

(assert (=> b!2122906 (= e!1352448 (forall!4866 (_2!13606 (_1!13607 lt!795115)) lambda!78618))))

(declare-fun b!2122907 () Bool)

(declare-fun res!919286 () Bool)

(assert (=> b!2122907 (=> (not res!919286) (not e!1352443))))

(assert (=> b!2122907 (= res!919286 (= (totalInput!2916 cacheFurthestNullable!130) totalInput!886))))

(declare-fun b!2122908 () Bool)

(assert (=> b!2122908 (= e!1352429 e!1352424)))

(declare-fun b!2122909 () Bool)

(declare-fun isBalanced!2449 (Conc!7807) Bool)

(assert (=> b!2122909 (= e!1352439 (isBalanced!2449 (c!339791 input!5507)))))

(declare-fun b!2122910 () Bool)

(declare-fun tp!650169 () Bool)

(assert (=> b!2122910 (= e!1352423 (and (inv!31319 (c!339791 input!5507)) tp!650169))))

(declare-fun b!2122911 () Bool)

(assert (=> b!2122911 (= e!1352431 (- 1))))

(declare-fun tp!650187 () Bool)

(declare-fun tp!650174 () Bool)

(declare-fun array_inv!2687 (array!8459) Bool)

(assert (=> b!2122912 (= e!1352442 (and tp!650171 tp!650174 tp!650187 (array_inv!2684 (_keys!2759 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))))) (array_inv!2687 (_values!2742 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))))) e!1352449))))

(assert (= (and start!207110 res!919289) b!2122884))

(assert (= (and b!2122884 res!919291) b!2122900))

(assert (= (and b!2122900 res!919290) b!2122902))

(assert (= (and b!2122902 res!919287) b!2122907))

(assert (= (and b!2122907 res!919286) b!2122881))

(assert (= (and b!2122881 c!339789) b!2122891))

(assert (= (and b!2122881 (not c!339789)) b!2122911))

(assert (= (and b!2122881 res!919292) b!2122906))

(assert (= (and b!2122881 (not res!919288)) b!2122909))

(assert (= (and b!2122898 condMapEmpty!11959) mapIsEmpty!11958))

(assert (= (and b!2122898 (not condMapEmpty!11959)) mapNonEmpty!11959))

(assert (= b!2122912 b!2122898))

(assert (= b!2122885 b!2122912))

(assert (= b!2122879 b!2122885))

(assert (= (and b!2122892 ((_ is LongMap!2462) (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))) b!2122879))

(assert (= b!2122899 b!2122892))

(assert (= (and b!2122886 ((_ is HashMap!2376) (cache!2757 cacheFurthestNullable!130))) b!2122899))

(assert (= b!2122886 b!2122903))

(assert (= start!207110 b!2122886))

(assert (= (and start!207110 condSetEmpty!14925) setIsEmpty!14925))

(assert (= (and start!207110 (not condSetEmpty!14925)) setNonEmpty!14925))

(assert (= setNonEmpty!14925 b!2122894))

(assert (= start!207110 b!2122910))

(assert (= (and b!2122897 condMapEmpty!11960) mapIsEmpty!11959))

(assert (= (and b!2122897 (not condMapEmpty!11960)) mapNonEmpty!11960))

(assert (= b!2122904 b!2122897))

(assert (= b!2122908 b!2122904))

(assert (= b!2122882 b!2122908))

(assert (= (and b!2122888 ((_ is LongMap!2460) (v!28254 (underlying!5118 (cache!2756 cacheDown!1110))))) b!2122882))

(assert (= b!2122896 b!2122888))

(assert (= (and b!2122905 ((_ is HashMap!2375) (cache!2756 cacheDown!1110))) b!2122896))

(assert (= start!207110 b!2122905))

(assert (= (and b!2122893 condMapEmpty!11958) mapIsEmpty!11960))

(assert (= (and b!2122893 (not condMapEmpty!11958)) mapNonEmpty!11958))

(assert (= b!2122887 b!2122893))

(assert (= b!2122901 b!2122887))

(assert (= b!2122880 b!2122901))

(assert (= (and b!2122889 ((_ is LongMap!2461) (v!28256 (underlying!5117 (cache!2755 cacheUp!991))))) b!2122880))

(assert (= b!2122883 b!2122889))

(assert (= (and b!2122890 ((_ is HashMap!2374) (cache!2755 cacheUp!991))) b!2122883))

(assert (= start!207110 b!2122890))

(assert (= start!207110 b!2122895))

(declare-fun m!2575973 () Bool)

(assert (=> b!2122895 m!2575973))

(declare-fun m!2575975 () Bool)

(assert (=> b!2122910 m!2575975))

(declare-fun m!2575977 () Bool)

(assert (=> b!2122902 m!2575977))

(declare-fun m!2575979 () Bool)

(assert (=> mapNonEmpty!11959 m!2575979))

(declare-fun m!2575981 () Bool)

(assert (=> b!2122881 m!2575981))

(declare-fun m!2575983 () Bool)

(assert (=> b!2122881 m!2575983))

(declare-fun m!2575985 () Bool)

(assert (=> b!2122881 m!2575985))

(declare-fun m!2575987 () Bool)

(assert (=> b!2122881 m!2575987))

(declare-fun m!2575989 () Bool)

(assert (=> b!2122881 m!2575989))

(declare-fun m!2575991 () Bool)

(assert (=> b!2122881 m!2575991))

(declare-fun m!2575993 () Bool)

(assert (=> b!2122886 m!2575993))

(declare-fun m!2575995 () Bool)

(assert (=> b!2122904 m!2575995))

(declare-fun m!2575997 () Bool)

(assert (=> b!2122904 m!2575997))

(declare-fun m!2575999 () Bool)

(assert (=> setNonEmpty!14925 m!2575999))

(declare-fun m!2576001 () Bool)

(assert (=> b!2122906 m!2576001))

(declare-fun m!2576003 () Bool)

(assert (=> b!2122912 m!2576003))

(declare-fun m!2576005 () Bool)

(assert (=> b!2122912 m!2576005))

(declare-fun m!2576007 () Bool)

(assert (=> start!207110 m!2576007))

(declare-fun m!2576009 () Bool)

(assert (=> start!207110 m!2576009))

(declare-fun m!2576011 () Bool)

(assert (=> start!207110 m!2576011))

(declare-fun m!2576013 () Bool)

(assert (=> start!207110 m!2576013))

(declare-fun m!2576015 () Bool)

(assert (=> start!207110 m!2576015))

(declare-fun m!2576017 () Bool)

(assert (=> start!207110 m!2576017))

(assert (=> start!207110 m!2576013))

(assert (=> start!207110 m!2576007))

(declare-fun m!2576019 () Bool)

(assert (=> start!207110 m!2576019))

(declare-fun m!2576021 () Bool)

(assert (=> start!207110 m!2576021))

(declare-fun m!2576023 () Bool)

(assert (=> b!2122903 m!2576023))

(declare-fun m!2576025 () Bool)

(assert (=> b!2122887 m!2576025))

(declare-fun m!2576027 () Bool)

(assert (=> b!2122887 m!2576027))

(declare-fun m!2576029 () Bool)

(assert (=> b!2122900 m!2576029))

(declare-fun m!2576031 () Bool)

(assert (=> b!2122909 m!2576031))

(declare-fun m!2576033 () Bool)

(assert (=> mapNonEmpty!11960 m!2576033))

(declare-fun m!2576035 () Bool)

(assert (=> mapNonEmpty!11958 m!2576035))

(declare-fun m!2576037 () Bool)

(assert (=> b!2122884 m!2576037))

(check-sat (not b!2122904) b_and!171269 (not b!2122954) (not mapNonEmpty!11966) (not b_next!62391) (not mapNonEmpty!11958) (not b_next!62399) (not b!2122893) (not setNonEmpty!14925) b_and!171265 (not b_next!62397) (not b_next!62395) (not b!2122881) b_and!171275 (not b!2122887) (not b!2122898) (not b!2122912) (not mapNonEmpty!11965) (not b!2122947) (not b!2122900) (not b!2122956) (not b_next!62389) (not b!2122884) b_and!171273 (not b!2122909) (not b!2122902) b_and!171267 (not setNonEmpty!14928) (not b!2122906) (not b!2122886) (not start!207110) (not b!2122955) (not b!2122949) (not mapNonEmpty!11959) (not b!2122895) b_and!171271 (not b!2122910) (not b!2122903) (not b_next!62393) (not b!2122894) (not b!2122897) (not mapNonEmpty!11960))
(check-sat b_and!171269 (not b_next!62391) (not b_next!62399) b_and!171265 (not b_next!62389) b_and!171273 b_and!171267 (not b_next!62397) (not b_next!62395) b_and!171271 (not b_next!62393) b_and!171275)
(get-model)

(declare-fun d!643520 () Bool)

(declare-fun list!9531 (Conc!7807) List!23810)

(assert (=> d!643520 (= (list!9530 input!5507) (list!9531 (c!339791 input!5507)))))

(declare-fun bs!442769 () Bool)

(assert (= bs!442769 d!643520))

(declare-fun m!2576039 () Bool)

(assert (=> bs!442769 m!2576039))

(assert (=> start!207110 d!643520))

(declare-fun d!643522 () Bool)

(assert (=> d!643522 (= (inv!31317 totalInput!886) (isBalanced!2449 (c!339791 totalInput!886)))))

(declare-fun bs!442770 () Bool)

(assert (= bs!442770 d!643522))

(declare-fun m!2576041 () Bool)

(assert (=> bs!442770 m!2576041))

(assert (=> start!207110 d!643522))

(declare-fun d!643524 () Bool)

(assert (=> d!643524 (= (inv!31317 input!5507) (isBalanced!2449 (c!339791 input!5507)))))

(declare-fun bs!442771 () Bool)

(assert (= bs!442771 d!643524))

(assert (=> bs!442771 m!2576031))

(assert (=> start!207110 d!643524))

(declare-fun d!643526 () Bool)

(assert (=> d!643526 (= (list!9530 totalInput!886) (list!9531 (c!339791 totalInput!886)))))

(declare-fun bs!442772 () Bool)

(assert (= bs!442772 d!643526))

(declare-fun m!2576043 () Bool)

(assert (=> bs!442772 m!2576043))

(assert (=> start!207110 d!643526))

(declare-fun d!643528 () Bool)

(declare-fun res!919296 () Bool)

(declare-fun e!1352502 () Bool)

(assert (=> d!643528 (=> (not res!919296) (not e!1352502))))

(assert (=> d!643528 (= res!919296 ((_ is HashMap!2374) (cache!2755 cacheUp!991)))))

(assert (=> d!643528 (= (inv!31322 cacheUp!991) e!1352502)))

(declare-fun b!2122967 () Bool)

(declare-fun validCacheMapUp!245 (MutableMap!2374) Bool)

(assert (=> b!2122967 (= e!1352502 (validCacheMapUp!245 (cache!2755 cacheUp!991)))))

(assert (= (and d!643528 res!919296) b!2122967))

(declare-fun m!2576045 () Bool)

(assert (=> b!2122967 m!2576045))

(assert (=> start!207110 d!643528))

(declare-fun d!643530 () Bool)

(declare-fun res!919299 () Bool)

(declare-fun e!1352505 () Bool)

(assert (=> d!643530 (=> (not res!919299) (not e!1352505))))

(assert (=> d!643530 (= res!919299 ((_ is HashMap!2375) (cache!2756 cacheDown!1110)))))

(assert (=> d!643530 (= (inv!31321 cacheDown!1110) e!1352505)))

(declare-fun b!2122970 () Bool)

(declare-fun validCacheMapDown!243 (MutableMap!2375) Bool)

(assert (=> b!2122970 (= e!1352505 (validCacheMapDown!243 (cache!2756 cacheDown!1110)))))

(assert (= (and d!643530 res!919299) b!2122970))

(declare-fun m!2576047 () Bool)

(assert (=> b!2122970 m!2576047))

(assert (=> start!207110 d!643530))

(declare-fun d!643532 () Bool)

(declare-fun res!919302 () Bool)

(declare-fun e!1352508 () Bool)

(assert (=> d!643532 (=> (not res!919302) (not e!1352508))))

(assert (=> d!643532 (= res!919302 ((_ is HashMap!2376) (cache!2757 cacheFurthestNullable!130)))))

(assert (=> d!643532 (= (inv!31320 cacheFurthestNullable!130) e!1352508)))

(declare-fun b!2122973 () Bool)

(declare-fun validCacheMapFurthestNullable!95 (MutableMap!2376 BalanceConc!15376) Bool)

(assert (=> b!2122973 (= e!1352508 (validCacheMapFurthestNullable!95 (cache!2757 cacheFurthestNullable!130) (totalInput!2916 cacheFurthestNullable!130)))))

(assert (= (and d!643532 res!919302) b!2122973))

(declare-fun m!2576049 () Bool)

(assert (=> b!2122973 m!2576049))

(assert (=> start!207110 d!643532))

(declare-fun d!643534 () Bool)

(declare-fun e!1352511 () Bool)

(assert (=> d!643534 e!1352511))

(declare-fun res!919305 () Bool)

(assert (=> d!643534 (=> res!919305 e!1352511)))

(declare-fun lt!795128 () Bool)

(assert (=> d!643534 (= res!919305 (not lt!795128))))

(declare-fun drop!1184 (List!23810 Int) List!23810)

(declare-fun size!18547 (List!23810) Int)

(assert (=> d!643534 (= lt!795128 (= (list!9530 input!5507) (drop!1184 (list!9530 totalInput!886) (- (size!18547 (list!9530 totalInput!886)) (size!18547 (list!9530 input!5507))))))))

(assert (=> d!643534 (= (isSuffix!620 (list!9530 input!5507) (list!9530 totalInput!886)) lt!795128)))

(declare-fun b!2122976 () Bool)

(assert (=> b!2122976 (= e!1352511 (>= (size!18547 (list!9530 totalInput!886)) (size!18547 (list!9530 input!5507))))))

(assert (= (and d!643534 (not res!919305)) b!2122976))

(assert (=> d!643534 m!2576007))

(declare-fun m!2576051 () Bool)

(assert (=> d!643534 m!2576051))

(assert (=> d!643534 m!2576013))

(declare-fun m!2576053 () Bool)

(assert (=> d!643534 m!2576053))

(assert (=> d!643534 m!2576007))

(declare-fun m!2576055 () Bool)

(assert (=> d!643534 m!2576055))

(assert (=> b!2122976 m!2576007))

(assert (=> b!2122976 m!2576051))

(assert (=> b!2122976 m!2576013))

(assert (=> b!2122976 m!2576053))

(assert (=> start!207110 d!643534))

(declare-fun d!643536 () Bool)

(declare-fun c!339794 () Bool)

(assert (=> d!643536 (= c!339794 ((_ is Node!7807) (c!339791 (totalInput!2916 cacheFurthestNullable!130))))))

(declare-fun e!1352516 () Bool)

(assert (=> d!643536 (= (inv!31319 (c!339791 (totalInput!2916 cacheFurthestNullable!130))) e!1352516)))

(declare-fun b!2122983 () Bool)

(declare-fun inv!31323 (Conc!7807) Bool)

(assert (=> b!2122983 (= e!1352516 (inv!31323 (c!339791 (totalInput!2916 cacheFurthestNullable!130))))))

(declare-fun b!2122984 () Bool)

(declare-fun e!1352517 () Bool)

(assert (=> b!2122984 (= e!1352516 e!1352517)))

(declare-fun res!919308 () Bool)

(assert (=> b!2122984 (= res!919308 (not ((_ is Leaf!11409) (c!339791 (totalInput!2916 cacheFurthestNullable!130)))))))

(assert (=> b!2122984 (=> res!919308 e!1352517)))

(declare-fun b!2122985 () Bool)

(declare-fun inv!31324 (Conc!7807) Bool)

(assert (=> b!2122985 (= e!1352517 (inv!31324 (c!339791 (totalInput!2916 cacheFurthestNullable!130))))))

(assert (= (and d!643536 c!339794) b!2122983))

(assert (= (and d!643536 (not c!339794)) b!2122984))

(assert (= (and b!2122984 (not res!919308)) b!2122985))

(declare-fun m!2576057 () Bool)

(assert (=> b!2122983 m!2576057))

(declare-fun m!2576059 () Bool)

(assert (=> b!2122985 m!2576059))

(assert (=> b!2122903 d!643536))

(declare-fun d!643538 () Bool)

(assert (=> d!643538 (= (valid!1936 cacheFurthestNullable!130) (validCacheMapFurthestNullable!95 (cache!2757 cacheFurthestNullable!130) (totalInput!2916 cacheFurthestNullable!130)))))

(declare-fun bs!442773 () Bool)

(assert (= bs!442773 d!643538))

(assert (=> bs!442773 m!2576049))

(assert (=> b!2122902 d!643538))

(declare-fun d!643540 () Bool)

(assert (=> d!643540 (= (array_inv!2684 (_keys!2759 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))))) (bvsge (size!18542 (_keys!2759 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2122912 d!643540))

(declare-fun d!643542 () Bool)

(assert (=> d!643542 (= (array_inv!2687 (_values!2742 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))))) (bvsge (size!18545 (_values!2742 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2122912 d!643542))

(declare-fun d!643544 () Bool)

(assert (=> d!643544 (= (array_inv!2684 (_keys!2758 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991))))))) (bvsge (size!18542 (_keys!2758 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2122887 d!643544))

(declare-fun d!643546 () Bool)

(assert (=> d!643546 (= (array_inv!2685 (_values!2741 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991))))))) (bvsge (size!18544 (_values!2741 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2122887 d!643546))

(declare-fun d!643548 () Bool)

(assert (=> d!643548 (= (array_inv!2684 (_keys!2757 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110))))))) (bvsge (size!18542 (_keys!2757 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2122904 d!643548))

(declare-fun d!643550 () Bool)

(assert (=> d!643550 (= (array_inv!2686 (_values!2740 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110))))))) (bvsge (size!18543 (_values!2740 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2122904 d!643550))

(declare-fun d!643552 () Bool)

(declare-fun c!339795 () Bool)

(assert (=> d!643552 (= c!339795 ((_ is Node!7807) (c!339791 input!5507)))))

(declare-fun e!1352518 () Bool)

(assert (=> d!643552 (= (inv!31319 (c!339791 input!5507)) e!1352518)))

(declare-fun b!2122986 () Bool)

(assert (=> b!2122986 (= e!1352518 (inv!31323 (c!339791 input!5507)))))

(declare-fun b!2122987 () Bool)

(declare-fun e!1352519 () Bool)

(assert (=> b!2122987 (= e!1352518 e!1352519)))

(declare-fun res!919309 () Bool)

(assert (=> b!2122987 (= res!919309 (not ((_ is Leaf!11409) (c!339791 input!5507))))))

(assert (=> b!2122987 (=> res!919309 e!1352519)))

(declare-fun b!2122988 () Bool)

(assert (=> b!2122988 (= e!1352519 (inv!31324 (c!339791 input!5507)))))

(assert (= (and d!643552 c!339795) b!2122986))

(assert (= (and d!643552 (not c!339795)) b!2122987))

(assert (= (and b!2122987 (not res!919309)) b!2122988))

(declare-fun m!2576061 () Bool)

(assert (=> b!2122986 m!2576061))

(declare-fun m!2576063 () Bool)

(assert (=> b!2122988 m!2576063))

(assert (=> b!2122910 d!643552))

(declare-fun b!2123001 () Bool)

(declare-fun e!1352525 () Bool)

(declare-fun isEmpty!14312 (Conc!7807) Bool)

(assert (=> b!2123001 (= e!1352525 (not (isEmpty!14312 (right!18680 (c!339791 input!5507)))))))

(declare-fun b!2123002 () Bool)

(declare-fun res!919326 () Bool)

(assert (=> b!2123002 (=> (not res!919326) (not e!1352525))))

(assert (=> b!2123002 (= res!919326 (not (isEmpty!14312 (left!18350 (c!339791 input!5507)))))))

(declare-fun b!2123003 () Bool)

(declare-fun e!1352524 () Bool)

(assert (=> b!2123003 (= e!1352524 e!1352525)))

(declare-fun res!919324 () Bool)

(assert (=> b!2123003 (=> (not res!919324) (not e!1352525))))

(declare-fun height!1234 (Conc!7807) Int)

(assert (=> b!2123003 (= res!919324 (<= (- 1) (- (height!1234 (left!18350 (c!339791 input!5507))) (height!1234 (right!18680 (c!339791 input!5507))))))))

(declare-fun b!2123004 () Bool)

(declare-fun res!919322 () Bool)

(assert (=> b!2123004 (=> (not res!919322) (not e!1352525))))

(assert (=> b!2123004 (= res!919322 (isBalanced!2449 (left!18350 (c!339791 input!5507))))))

(declare-fun b!2123005 () Bool)

(declare-fun res!919327 () Bool)

(assert (=> b!2123005 (=> (not res!919327) (not e!1352525))))

(assert (=> b!2123005 (= res!919327 (<= (- (height!1234 (left!18350 (c!339791 input!5507))) (height!1234 (right!18680 (c!339791 input!5507)))) 1))))

(declare-fun d!643554 () Bool)

(declare-fun res!919325 () Bool)

(assert (=> d!643554 (=> res!919325 e!1352524)))

(assert (=> d!643554 (= res!919325 (not ((_ is Node!7807) (c!339791 input!5507))))))

(assert (=> d!643554 (= (isBalanced!2449 (c!339791 input!5507)) e!1352524)))

(declare-fun b!2123006 () Bool)

(declare-fun res!919323 () Bool)

(assert (=> b!2123006 (=> (not res!919323) (not e!1352525))))

(assert (=> b!2123006 (= res!919323 (isBalanced!2449 (right!18680 (c!339791 input!5507))))))

(assert (= (and d!643554 (not res!919325)) b!2123003))

(assert (= (and b!2123003 res!919324) b!2123005))

(assert (= (and b!2123005 res!919327) b!2123004))

(assert (= (and b!2123004 res!919322) b!2123006))

(assert (= (and b!2123006 res!919323) b!2123002))

(assert (= (and b!2123002 res!919326) b!2123001))

(declare-fun m!2576065 () Bool)

(assert (=> b!2123005 m!2576065))

(declare-fun m!2576067 () Bool)

(assert (=> b!2123005 m!2576067))

(assert (=> b!2123003 m!2576065))

(assert (=> b!2123003 m!2576067))

(declare-fun m!2576069 () Bool)

(assert (=> b!2123002 m!2576069))

(declare-fun m!2576071 () Bool)

(assert (=> b!2123001 m!2576071))

(declare-fun m!2576073 () Bool)

(assert (=> b!2123006 m!2576073))

(declare-fun m!2576075 () Bool)

(assert (=> b!2123004 m!2576075))

(assert (=> b!2122909 d!643554))

(declare-fun d!643556 () Bool)

(assert (=> d!643556 (= (valid!1934 cacheUp!991) (validCacheMapUp!245 (cache!2755 cacheUp!991)))))

(declare-fun bs!442774 () Bool)

(assert (= bs!442774 d!643556))

(assert (=> bs!442774 m!2576045))

(assert (=> b!2122884 d!643556))

(declare-fun d!643558 () Bool)

(assert (=> d!643558 (= (inv!31317 (totalInput!2916 cacheFurthestNullable!130)) (isBalanced!2449 (c!339791 (totalInput!2916 cacheFurthestNullable!130))))))

(declare-fun bs!442775 () Bool)

(assert (= bs!442775 d!643558))

(declare-fun m!2576077 () Bool)

(assert (=> bs!442775 m!2576077))

(assert (=> b!2122886 d!643558))

(declare-fun d!643560 () Bool)

(assert (=> d!643560 (= (valid!1935 cacheDown!1110) (validCacheMapDown!243 (cache!2756 cacheDown!1110)))))

(declare-fun bs!442776 () Bool)

(assert (= bs!442776 d!643560))

(assert (=> bs!442776 m!2576047))

(assert (=> b!2122900 d!643560))

(declare-fun d!643562 () Bool)

(declare-fun lambda!78621 () Int)

(declare-fun forall!4867 (List!23807 Int) Bool)

(assert (=> d!643562 (= (inv!31318 setElem!14925) (forall!4867 (exprs!1739 setElem!14925) lambda!78621))))

(declare-fun bs!442777 () Bool)

(assert (= bs!442777 d!643562))

(declare-fun m!2576079 () Bool)

(assert (=> bs!442777 m!2576079))

(assert (=> setNonEmpty!14925 d!643562))

(declare-fun d!643564 () Bool)

(declare-fun c!339796 () Bool)

(assert (=> d!643564 (= c!339796 ((_ is Node!7807) (c!339791 totalInput!886)))))

(declare-fun e!1352526 () Bool)

(assert (=> d!643564 (= (inv!31319 (c!339791 totalInput!886)) e!1352526)))

(declare-fun b!2123007 () Bool)

(assert (=> b!2123007 (= e!1352526 (inv!31323 (c!339791 totalInput!886)))))

(declare-fun b!2123008 () Bool)

(declare-fun e!1352527 () Bool)

(assert (=> b!2123008 (= e!1352526 e!1352527)))

(declare-fun res!919328 () Bool)

(assert (=> b!2123008 (= res!919328 (not ((_ is Leaf!11409) (c!339791 totalInput!886))))))

(assert (=> b!2123008 (=> res!919328 e!1352527)))

(declare-fun b!2123009 () Bool)

(assert (=> b!2123009 (= e!1352527 (inv!31324 (c!339791 totalInput!886)))))

(assert (= (and d!643564 c!339796) b!2123007))

(assert (= (and d!643564 (not c!339796)) b!2123008))

(assert (= (and b!2123008 (not res!919328)) b!2123009))

(declare-fun m!2576081 () Bool)

(assert (=> b!2123007 m!2576081))

(declare-fun m!2576083 () Bool)

(assert (=> b!2123009 m!2576083))

(assert (=> b!2122895 d!643564))

(declare-fun d!643566 () Bool)

(declare-fun res!919333 () Bool)

(declare-fun e!1352532 () Bool)

(assert (=> d!643566 (=> res!919333 e!1352532)))

(assert (=> d!643566 (= res!919333 ((_ is Nil!23727) (_2!13606 (_1!13607 lt!795115))))))

(assert (=> d!643566 (= (forall!4866 (_2!13606 (_1!13607 lt!795115)) lambda!78618) e!1352532)))

(declare-fun b!2123014 () Bool)

(declare-fun e!1352533 () Bool)

(assert (=> b!2123014 (= e!1352532 e!1352533)))

(declare-fun res!919334 () Bool)

(assert (=> b!2123014 (=> (not res!919334) (not e!1352533))))

(declare-fun dynLambda!11338 (Int StackFrame!50) Bool)

(assert (=> b!2123014 (= res!919334 (dynLambda!11338 lambda!78618 (h!29128 (_2!13606 (_1!13607 lt!795115)))))))

(declare-fun b!2123015 () Bool)

(assert (=> b!2123015 (= e!1352533 (forall!4866 (t!196329 (_2!13606 (_1!13607 lt!795115))) lambda!78618))))

(assert (= (and d!643566 (not res!919333)) b!2123014))

(assert (= (and b!2123014 res!919334) b!2123015))

(declare-fun b_lambda!70473 () Bool)

(assert (=> (not b_lambda!70473) (not b!2123014)))

(declare-fun m!2576085 () Bool)

(assert (=> b!2123014 m!2576085))

(declare-fun m!2576087 () Bool)

(assert (=> b!2123015 m!2576087))

(assert (=> b!2122906 d!643566))

(declare-fun d!643568 () Bool)

(declare-fun lambda!78624 () Int)

(declare-fun exists!693 ((InoxSet Context!2478) Int) Bool)

(assert (=> d!643568 (= (nullableZipper!66 z!3883) (exists!693 z!3883 lambda!78624))))

(declare-fun bs!442778 () Bool)

(assert (= bs!442778 d!643568))

(declare-fun m!2576089 () Bool)

(assert (=> bs!442778 m!2576089))

(assert (=> b!2122881 d!643568))

(declare-fun b!2123026 () Bool)

(declare-fun e!1352541 () tuple2!23352)

(declare-fun Unit!37604 () Unit!37602)

(assert (=> b!2123026 (= e!1352541 (tuple2!23353 Unit!37604 cacheFurthestNullable!130))))

(declare-fun d!643570 () Bool)

(declare-fun e!1352540 () Bool)

(assert (=> d!643570 e!1352540))

(declare-fun res!919338 () Bool)

(assert (=> d!643570 (=> (not res!919338) (not e!1352540))))

(declare-fun lt!795139 () tuple2!23352)

(assert (=> d!643570 (= res!919338 (valid!1936 (_2!13610 lt!795139)))))

(assert (=> d!643570 (= lt!795139 e!1352541)))

(declare-fun c!339804 () Bool)

(assert (=> d!643570 (= c!339804 ((_ is Nil!23727) (_2!13606 (_1!13607 lt!795115))))))

(assert (=> d!643570 (valid!1936 cacheFurthestNullable!130)))

(assert (=> d!643570 (= (fillUpCache!8 (_2!13606 (_1!13607 lt!795115)) totalInput!886 lt!795117 (_1!13606 (_1!13607 lt!795115)) 0 cacheFurthestNullable!130) lt!795139)))

(declare-fun b!2123027 () Bool)

(declare-fun lt!795137 () tuple2!23352)

(declare-fun update!87 (CacheFurthestNullable!594 (InoxSet Context!2478) Int Int Int BalanceConc!15376) tuple2!23352)

(assert (=> b!2123027 (= lt!795137 (update!87 cacheFurthestNullable!130 (z!5731 (h!29128 (_2!13606 (_1!13607 lt!795115)))) (from!2627 (h!29128 (_2!13606 (_1!13607 lt!795115)))) (lastNullablePos!314 (h!29128 (_2!13606 (_1!13607 lt!795115)))) (_1!13606 (_1!13607 lt!795115)) totalInput!886))))

(declare-fun lt!795138 () Unit!37602)

(declare-fun lemmaInvariant!381 (CacheFurthestNullable!594) Unit!37602)

(assert (=> b!2123027 (= lt!795138 (lemmaInvariant!381 cacheFurthestNullable!130))))

(declare-fun e!1352542 () tuple2!23352)

(assert (=> b!2123027 (= e!1352542 (tuple2!23353 (_1!13610 lt!795137) (_2!13610 lt!795137)))))

(declare-fun b!2123028 () Bool)

(assert (=> b!2123028 (= e!1352540 (= (totalInput!2916 (_2!13610 lt!795139)) totalInput!886))))

(declare-fun b!2123029 () Bool)

(declare-fun lt!795140 () tuple2!23352)

(assert (=> b!2123029 (= e!1352541 (tuple2!23353 (_1!13610 lt!795140) (_2!13610 lt!795140)))))

(declare-fun c!339803 () Bool)

(assert (=> b!2123029 (= c!339803 (and (> lt!795117 1048576) (not (= (- 0 (* 10 (ite (>= 0 0) (div 0 10) (- (div (- 0) 10))))) 0))))))

(assert (=> b!2123029 (= lt!795140 (fillUpCache!8 (t!196329 (_2!13606 (_1!13607 lt!795115))) totalInput!886 lt!795117 (_1!13606 (_1!13607 lt!795115)) (+ 0 1) (_2!13610 e!1352542)))))

(declare-fun b!2123030 () Bool)

(declare-fun Unit!37605 () Unit!37602)

(assert (=> b!2123030 (= e!1352542 (tuple2!23353 Unit!37605 cacheFurthestNullable!130))))

(assert (= (and d!643570 c!339804) b!2123026))

(assert (= (and d!643570 (not c!339804)) b!2123029))

(assert (= (and b!2123029 c!339803) b!2123030))

(assert (= (and b!2123029 (not c!339803)) b!2123027))

(assert (= (and d!643570 res!919338) b!2123028))

(declare-fun m!2576091 () Bool)

(assert (=> d!643570 m!2576091))

(assert (=> d!643570 m!2575977))

(declare-fun m!2576093 () Bool)

(assert (=> b!2123027 m!2576093))

(declare-fun m!2576095 () Bool)

(assert (=> b!2123027 m!2576095))

(declare-fun m!2576097 () Bool)

(assert (=> b!2123029 m!2576097))

(assert (=> b!2122881 d!643570))

(declare-fun d!643572 () Bool)

(declare-fun res!919339 () Bool)

(declare-fun e!1352543 () Bool)

(assert (=> d!643572 (=> res!919339 e!1352543)))

(assert (=> d!643572 (= res!919339 ((_ is Nil!23727) (_2!13606 (_1!13607 lt!795115))))))

(assert (=> d!643572 (= (forall!4866 (_2!13606 (_1!13607 lt!795115)) lambda!78617) e!1352543)))

(declare-fun b!2123031 () Bool)

(declare-fun e!1352544 () Bool)

(assert (=> b!2123031 (= e!1352543 e!1352544)))

(declare-fun res!919340 () Bool)

(assert (=> b!2123031 (=> (not res!919340) (not e!1352544))))

(assert (=> b!2123031 (= res!919340 (dynLambda!11338 lambda!78617 (h!29128 (_2!13606 (_1!13607 lt!795115)))))))

(declare-fun b!2123032 () Bool)

(assert (=> b!2123032 (= e!1352544 (forall!4866 (t!196329 (_2!13606 (_1!13607 lt!795115))) lambda!78617))))

(assert (= (and d!643572 (not res!919339)) b!2123031))

(assert (= (and b!2123031 res!919340) b!2123032))

(declare-fun b_lambda!70475 () Bool)

(assert (=> (not b_lambda!70475) (not b!2123031)))

(declare-fun m!2576099 () Bool)

(assert (=> b!2123031 m!2576099))

(declare-fun m!2576101 () Bool)

(assert (=> b!2123032 m!2576101))

(assert (=> b!2122881 d!643572))

(declare-fun d!643574 () Bool)

(declare-fun lt!795143 () Int)

(assert (=> d!643574 (= lt!795143 (size!18547 (list!9530 input!5507)))))

(declare-fun size!18548 (Conc!7807) Int)

(assert (=> d!643574 (= lt!795143 (size!18548 (c!339791 input!5507)))))

(assert (=> d!643574 (= (size!18546 input!5507) lt!795143)))

(declare-fun bs!442779 () Bool)

(assert (= bs!442779 d!643574))

(assert (=> bs!442779 m!2576013))

(assert (=> bs!442779 m!2576013))

(assert (=> bs!442779 m!2576053))

(declare-fun m!2576103 () Bool)

(assert (=> bs!442779 m!2576103))

(assert (=> b!2122881 d!643574))

(declare-fun bs!442780 () Bool)

(declare-fun d!643576 () Bool)

(assert (= bs!442780 (and d!643576 b!2122881)))

(declare-fun lambda!78639 () Int)

(declare-fun lt!795174 () Int)

(assert (=> bs!442780 (= (= lt!795174 (_1!13606 (_1!13607 lt!795115))) (= lambda!78639 lambda!78617))))

(declare-fun bs!442781 () Bool)

(assert (= bs!442781 (and d!643576 b!2122906)))

(assert (=> bs!442781 (not (= lambda!78639 lambda!78618))))

(assert (=> d!643576 true))

(declare-fun bs!442782 () Bool)

(declare-fun b!2123062 () Bool)

(assert (= bs!442782 (and b!2123062 b!2122881)))

(declare-fun lambda!78640 () Int)

(assert (=> bs!442782 (= (= e!1352431 (_1!13606 (_1!13607 lt!795115))) (= lambda!78640 lambda!78617))))

(declare-fun bs!442783 () Bool)

(assert (= bs!442783 (and b!2123062 b!2122906)))

(assert (=> bs!442783 (not (= lambda!78640 lambda!78618))))

(declare-fun bs!442784 () Bool)

(assert (= bs!442784 (and b!2123062 d!643576)))

(assert (=> bs!442784 (= (= e!1352431 lt!795174) (= lambda!78640 lambda!78639))))

(assert (=> b!2123062 true))

(declare-fun bs!442785 () Bool)

(declare-fun b!2123066 () Bool)

(assert (= bs!442785 (and b!2123066 b!2122881)))

(declare-fun lt!795185 () Int)

(declare-fun lambda!78641 () Int)

(assert (=> bs!442785 (= (= lt!795185 (_1!13606 (_1!13607 lt!795115))) (= lambda!78641 lambda!78617))))

(declare-fun bs!442786 () Bool)

(assert (= bs!442786 (and b!2123066 b!2122906)))

(assert (=> bs!442786 (not (= lambda!78641 lambda!78618))))

(declare-fun bs!442787 () Bool)

(assert (= bs!442787 (and b!2123066 d!643576)))

(assert (=> bs!442787 (= (= lt!795185 lt!795174) (= lambda!78641 lambda!78639))))

(declare-fun bs!442788 () Bool)

(assert (= bs!442788 (and b!2123066 b!2123062)))

(assert (=> bs!442788 (= (= lt!795185 e!1352431) (= lambda!78641 lambda!78640))))

(assert (=> b!2123066 true))

(declare-fun bs!442789 () Bool)

(declare-fun b!2123061 () Bool)

(assert (= bs!442789 (and b!2123061 b!2123066)))

(declare-fun lambda!78642 () Int)

(declare-fun lt!795172 () tuple3!2924)

(assert (=> bs!442789 (= (= (_1!13606 (_1!13607 lt!795172)) lt!795185) (= lambda!78642 lambda!78641))))

(declare-fun bs!442790 () Bool)

(assert (= bs!442790 (and b!2123061 b!2122906)))

(assert (=> bs!442790 (not (= lambda!78642 lambda!78618))))

(declare-fun bs!442791 () Bool)

(assert (= bs!442791 (and b!2123061 d!643576)))

(assert (=> bs!442791 (= (= (_1!13606 (_1!13607 lt!795172)) lt!795174) (= lambda!78642 lambda!78639))))

(declare-fun bs!442792 () Bool)

(assert (= bs!442792 (and b!2123061 b!2123062)))

(assert (=> bs!442792 (= (= (_1!13606 (_1!13607 lt!795172)) e!1352431) (= lambda!78642 lambda!78640))))

(declare-fun bs!442793 () Bool)

(assert (= bs!442793 (and b!2123061 b!2122881)))

(assert (=> bs!442793 (= (= (_1!13606 (_1!13607 lt!795172)) (_1!13606 (_1!13607 lt!795115))) (= lambda!78642 lambda!78617))))

(declare-fun b!2123074 () Bool)

(declare-fun e!1352562 () Bool)

(declare-fun e!1352564 () Bool)

(assert (=> b!2123074 (= e!1352562 e!1352564)))

(declare-fun b!2123075 () Bool)

(declare-fun e!1352571 () Bool)

(declare-fun e!1352570 () Bool)

(assert (=> b!2123075 (= e!1352571 e!1352570)))

(declare-fun b!2123076 () Bool)

(declare-fun e!1352567 () Bool)

(declare-fun e!1352575 () Bool)

(assert (=> b!2123076 (= e!1352567 e!1352575)))

(declare-fun setNonEmpty!14929 () Bool)

(declare-fun setRes!14929 () Bool)

(assert (=> setNonEmpty!14929 (= setRes!14929 true)))

(declare-fun setElem!14929 () Context!2478)

(declare-fun setRest!14929 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14929 (= (z!5731 (h!29128 (_2!13606 (_1!13607 lt!795172)))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14929 true) setRest!14929))))

(declare-fun mapIsEmpty!11967 () Bool)

(declare-fun mapRes!11968 () Bool)

(assert (=> mapIsEmpty!11967 mapRes!11968))

(declare-fun b!2123077 () Bool)

(declare-fun e!1352574 () Bool)

(declare-fun e!1352572 () Bool)

(assert (=> b!2123077 (= e!1352574 e!1352572)))

(declare-fun mapNonEmpty!11967 () Bool)

(assert (=> mapNonEmpty!11967 (= mapRes!11968 true)))

(declare-fun mapValue!11968 () List!23808)

(declare-fun mapKey!11968 () (_ BitVec 32))

(declare-fun mapRest!11968 () (Array (_ BitVec 32) List!23808))

(assert (=> mapNonEmpty!11967 (= (arr!3752 (_values!2741 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795172)))))))) (store mapRest!11968 mapKey!11968 mapValue!11968))))

(declare-fun mapIsEmpty!11968 () Bool)

(declare-fun mapRes!11967 () Bool)

(assert (=> mapIsEmpty!11968 mapRes!11967))

(declare-fun b!2123078 () Bool)

(declare-fun e!1352573 () Bool)

(assert (=> b!2123078 (= e!1352570 e!1352573)))

(declare-fun mapNonEmpty!11968 () Bool)

(assert (=> mapNonEmpty!11968 (= mapRes!11967 true)))

(declare-fun mapRest!11967 () (Array (_ BitVec 32) List!23809))

(declare-fun mapValue!11967 () List!23809)

(declare-fun mapKey!11967 () (_ BitVec 32))

(assert (=> mapNonEmpty!11968 (= (arr!3751 (_values!2740 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795172)))))))) (store mapRest!11967 mapKey!11967 mapValue!11967))))

(declare-fun b!2123079 () Bool)

(declare-fun e!1352569 () Bool)

(declare-fun e!1352565 () Bool)

(assert (=> b!2123079 (= e!1352569 e!1352565)))

(declare-fun b!2123080 () Bool)

(declare-fun e!1352568 () Bool)

(declare-fun lt!795186 () MutLongMap!2461)

(assert (=> b!2123080 (= e!1352573 (and e!1352568 ((_ is LongMap!2461) lt!795186)))))

(assert (=> b!2123080 (= lt!795186 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795172)))))))

(declare-fun b!2123081 () Bool)

(declare-fun e!1352566 () Bool)

(assert (=> b!2123081 (= e!1352566 mapRes!11968)))

(declare-fun condMapEmpty!11968 () Bool)

(declare-fun mapDefault!11967 () List!23808)

(assert (=> b!2123081 (= condMapEmpty!11968 (= (arr!3752 (_values!2741 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795172)))))))) ((as const (Array (_ BitVec 32) List!23808)) mapDefault!11967)))))

(declare-fun b!2123082 () Bool)

(declare-fun e!1352560 () Bool)

(assert (=> b!2123082 (= e!1352560 e!1352566)))

(declare-fun b!2123083 () Bool)

(assert (=> b!2123083 (= e!1352564 mapRes!11967)))

(declare-fun condMapEmpty!11967 () Bool)

(declare-fun mapDefault!11968 () List!23809)

(assert (=> b!2123083 (= condMapEmpty!11967 (= (arr!3751 (_values!2740 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795172)))))))) ((as const (Array (_ BitVec 32) List!23809)) mapDefault!11968)))))

(declare-fun b!2123084 () Bool)

(declare-fun e!1352563 () Bool)

(assert (=> b!2123084 (= e!1352565 e!1352563)))

(declare-fun b!2123085 () Bool)

(assert (=> b!2123085 (= e!1352572 e!1352562)))

(assert (=> b!2123061 (and e!1352567 e!1352571 e!1352569)))

(declare-fun setIsEmpty!14929 () Bool)

(assert (=> setIsEmpty!14929 setRes!14929))

(declare-fun b!2123086 () Bool)

(declare-fun e!1352561 () Bool)

(assert (=> b!2123086 (= e!1352561 e!1352560)))

(declare-fun b!2123087 () Bool)

(declare-fun lt!795187 () MutLongMap!2460)

(assert (=> b!2123087 (= e!1352563 (and e!1352574 ((_ is LongMap!2460) lt!795187)))))

(assert (=> b!2123087 (= lt!795187 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795172)))))))

(declare-fun b!2123088 () Bool)

(assert (=> b!2123088 (= e!1352575 setRes!14929)))

(declare-fun condSetEmpty!14929 () Bool)

(assert (=> b!2123088 (= condSetEmpty!14929 (= (z!5731 (h!29128 (_2!13606 (_1!13607 lt!795172)))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun b!2123089 () Bool)

(assert (=> b!2123089 (= e!1352568 e!1352561)))

(assert (= (and b!2123088 condSetEmpty!14929) setIsEmpty!14929))

(assert (= (and b!2123088 (not condSetEmpty!14929)) setNonEmpty!14929))

(assert (= b!2123076 b!2123088))

(assert (= (and b!2123061 ((_ is Cons!23727) (_2!13606 (_1!13607 lt!795172)))) b!2123076))

(assert (= (and b!2123081 condMapEmpty!11968) mapIsEmpty!11967))

(assert (= (and b!2123081 (not condMapEmpty!11968)) mapNonEmpty!11967))

(assert (= b!2123082 b!2123081))

(assert (= b!2123086 b!2123082))

(assert (= b!2123089 b!2123086))

(assert (= (and b!2123080 ((_ is LongMap!2461) (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795172)))))) b!2123089))

(assert (= b!2123078 b!2123080))

(assert (= (and b!2123075 ((_ is HashMap!2374) (cache!2755 (_2!13607 lt!795172)))) b!2123078))

(assert (= b!2123061 b!2123075))

(assert (= (and b!2123083 condMapEmpty!11967) mapIsEmpty!11968))

(assert (= (and b!2123083 (not condMapEmpty!11967)) mapNonEmpty!11968))

(assert (= b!2123074 b!2123083))

(assert (= b!2123085 b!2123074))

(assert (= b!2123077 b!2123085))

(assert (= (and b!2123087 ((_ is LongMap!2460) (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795172)))))) b!2123077))

(assert (= b!2123084 b!2123087))

(assert (= (and b!2123079 ((_ is HashMap!2375) (cache!2756 (_3!1932 lt!795172)))) b!2123084))

(assert (= b!2123061 b!2123079))

(assert (=> b!2123074 (< (dynLambda!11333 order!14689 (defaultEntry!2825 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795172)))))))) (dynLambda!11334 order!14691 lambda!78642))))

(assert (=> b!2123078 (< (dynLambda!11335 order!14693 (defaultValue!2536 (cache!2755 (_2!13607 lt!795172)))) (dynLambda!11334 order!14691 lambda!78642))))

(assert (=> b!2123084 (< (dynLambda!11336 order!14695 (defaultValue!2537 (cache!2756 (_3!1932 lt!795172)))) (dynLambda!11334 order!14691 lambda!78642))))

(assert (=> b!2123082 (< (dynLambda!11337 order!14697 (defaultEntry!2826 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795172)))))))) (dynLambda!11334 order!14691 lambda!78642))))

(declare-fun m!2576105 () Bool)

(assert (=> mapNonEmpty!11967 m!2576105))

(declare-fun m!2576107 () Bool)

(assert (=> mapNonEmpty!11968 m!2576107))

(declare-fun bs!442794 () Bool)

(declare-fun b!2123069 () Bool)

(assert (= bs!442794 (and b!2123069 b!2123066)))

(declare-fun lambda!78643 () Int)

(assert (=> bs!442794 (not (= lambda!78643 lambda!78641))))

(declare-fun bs!442795 () Bool)

(assert (= bs!442795 (and b!2123069 b!2122906)))

(assert (=> bs!442795 (= lambda!78643 lambda!78618)))

(declare-fun bs!442796 () Bool)

(assert (= bs!442796 (and b!2123069 b!2123061)))

(assert (=> bs!442796 (not (= lambda!78643 lambda!78642))))

(declare-fun bs!442797 () Bool)

(assert (= bs!442797 (and b!2123069 d!643576)))

(assert (=> bs!442797 (not (= lambda!78643 lambda!78639))))

(declare-fun bs!442798 () Bool)

(assert (= bs!442798 (and b!2123069 b!2123062)))

(assert (=> bs!442798 (not (= lambda!78643 lambda!78640))))

(declare-fun bs!442799 () Bool)

(assert (= bs!442799 (and b!2123069 b!2122881)))

(assert (=> bs!442799 (not (= lambda!78643 lambda!78617))))

(assert (=> b!2123069 true))

(declare-fun b!2123059 () Bool)

(declare-fun res!919357 () Bool)

(declare-fun e!1352556 () Bool)

(assert (=> b!2123059 (=> (not res!919357) (not e!1352556))))

(assert (=> b!2123059 (= res!919357 (valid!1934 (_2!13607 lt!795172)))))

(declare-fun b!2123060 () Bool)

(declare-fun e!1352558 () Int)

(assert (=> b!2123060 (= e!1352558 lt!795118)))

(declare-fun res!919361 () Bool)

(assert (=> b!2123061 (=> (not res!919361) (not e!1352556))))

(assert (=> b!2123061 (= res!919361 (forall!4866 (_2!13606 (_1!13607 lt!795172)) lambda!78642))))

(declare-fun lt!795181 () Unit!37602)

(declare-fun lt!795173 () Unit!37602)

(assert (=> b!2123062 (= lt!795181 lt!795173)))

(declare-fun call!128697 () Bool)

(assert (=> b!2123062 call!128697))

(declare-fun call!128699 () Unit!37602)

(assert (=> b!2123062 (= lt!795173 call!128699)))

(declare-fun lt!795180 () Unit!37602)

(declare-fun Unit!37606 () Unit!37602)

(assert (=> b!2123062 (= lt!795180 Unit!37606)))

(declare-fun call!128698 () Bool)

(assert (=> b!2123062 call!128698))

(declare-fun e!1352555 () tuple3!2924)

(assert (=> b!2123062 (= e!1352555 (tuple3!2925 (tuple2!23349 e!1352431 Nil!23727) cacheUp!991 cacheDown!1110))))

(declare-fun b!2123063 () Bool)

(declare-fun res!919358 () Bool)

(assert (=> b!2123063 (=> (not res!919358) (not e!1352556))))

(assert (=> b!2123063 (= res!919358 (valid!1936 cacheFurthestNullable!130))))

(declare-fun b!2123064 () Bool)

(declare-fun e!1352557 () tuple3!2924)

(assert (=> b!2123064 (= e!1352557 e!1352555)))

(declare-fun res!919359 () Bool)

(assert (=> b!2123064 (= res!919359 (= lt!795118 lt!795117))))

(declare-fun e!1352559 () Bool)

(assert (=> b!2123064 (=> res!919359 e!1352559)))

(declare-fun c!339812 () Bool)

(assert (=> b!2123064 (= c!339812 e!1352559)))

(declare-fun b!2123065 () Bool)

(assert (=> b!2123065 (= e!1352558 e!1352431)))

(declare-datatypes ((tuple3!2928 0))(
  ( (tuple3!2929 (_1!13611 (InoxSet Context!2478)) (_2!13611 CacheUp!1646) (_3!1934 CacheDown!1632)) )
))
(declare-fun lt!795177 () tuple3!2928)

(declare-fun lt!795175 () tuple3!2924)

(declare-fun lt!795184 () Int)

(assert (=> b!2123066 (= lt!795175 (furthestNullablePositionStackMem!11 (_1!13611 lt!795177) (+ lt!795118 1) totalInput!886 lt!795117 lt!795184 (Cons!23727 (StackFrame!51 z!3883 lt!795118 e!1352431 lt!795174 totalInput!886) Nil!23727) (_2!13611 lt!795177) (_3!1934 lt!795177) cacheFurthestNullable!130))))

(declare-fun lt!795176 () Unit!37602)

(declare-fun lt!795182 () Unit!37602)

(assert (=> b!2123066 (= lt!795176 lt!795182)))

(assert (=> b!2123066 call!128697))

(assert (=> b!2123066 (= lt!795182 call!128699)))

(declare-fun lt!795179 () Unit!37602)

(declare-fun Unit!37607 () Unit!37602)

(assert (=> b!2123066 (= lt!795179 Unit!37607)))

(assert (=> b!2123066 call!128698))

(declare-fun furthestNullablePosition!10 ((InoxSet Context!2478) Int BalanceConc!15376 Int Int) Int)

(assert (=> b!2123066 (= lt!795185 (furthestNullablePosition!10 (_1!13611 lt!795177) (+ lt!795118 1) totalInput!886 (size!18546 totalInput!886) lt!795184))))

(assert (=> b!2123066 (= lt!795184 e!1352558)))

(declare-fun c!339813 () Bool)

(assert (=> b!2123066 (= c!339813 (nullableZipper!66 (_1!13611 lt!795177)))))

(declare-fun derivationStepZipperMem!17 ((InoxSet Context!2478) C!11484 CacheUp!1646 CacheDown!1632) tuple3!2928)

(declare-fun apply!5911 (BalanceConc!15376 Int) C!11484)

(assert (=> b!2123066 (= lt!795177 (derivationStepZipperMem!17 z!3883 (apply!5911 totalInput!886 lt!795118) cacheUp!991 cacheDown!1110))))

(assert (=> b!2123066 (= e!1352555 (tuple3!2925 (_1!13607 lt!795175) (_2!13607 lt!795175) (_3!1932 lt!795175)))))

(declare-fun b!2123067 () Bool)

(declare-fun res!919360 () Bool)

(assert (=> b!2123067 (=> (not res!919360) (not e!1352556))))

(assert (=> b!2123067 (= res!919360 (valid!1935 (_3!1932 lt!795172)))))

(declare-fun bm!128692 () Bool)

(assert (=> bm!128692 (= call!128697 (forall!4866 Nil!23727 (ite c!339812 lambda!78640 lambda!78641)))))

(assert (=> d!643576 e!1352556))

(declare-fun res!919356 () Bool)

(assert (=> d!643576 (=> (not res!919356) (not e!1352556))))

(assert (=> d!643576 (= res!919356 (= (_1!13606 (_1!13607 lt!795172)) (furthestNullablePosition!10 z!3883 lt!795118 totalInput!886 lt!795117 e!1352431)))))

(assert (=> d!643576 (= lt!795172 e!1352557)))

(declare-fun c!339811 () Bool)

(declare-datatypes ((Option!4869 0))(
  ( (None!4868) (Some!4868 (v!28259 Int)) )
))
(declare-fun lt!795178 () Option!4869)

(assert (=> d!643576 (= c!339811 ((_ is Some!4868) lt!795178))))

(declare-fun get!7313 (CacheFurthestNullable!594 (InoxSet Context!2478) Int Int) Option!4869)

(assert (=> d!643576 (= lt!795178 (get!7313 cacheFurthestNullable!130 z!3883 lt!795118 e!1352431))))

(declare-fun lt!795183 () Unit!37602)

(declare-fun Unit!37608 () Unit!37602)

(assert (=> d!643576 (= lt!795183 Unit!37608)))

(assert (=> d!643576 (forall!4866 Nil!23727 lambda!78639)))

(assert (=> d!643576 (= lt!795174 (furthestNullablePosition!10 z!3883 lt!795118 totalInput!886 (size!18546 totalInput!886) e!1352431))))

(assert (=> d!643576 (and (>= lt!795118 0) (<= lt!795118 lt!795117))))

(assert (=> d!643576 (= (furthestNullablePositionStackMem!11 z!3883 lt!795118 totalInput!886 lt!795117 e!1352431 Nil!23727 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130) lt!795172)))

(declare-fun bm!128693 () Bool)

(declare-fun lemmaStackPreservesForEqualRes!6 (List!23811 Int Int) Unit!37602)

(assert (=> bm!128693 (= call!128699 (lemmaStackPreservesForEqualRes!6 Nil!23727 lt!795174 (ite c!339812 e!1352431 lt!795185)))))

(declare-fun b!2123068 () Bool)

(assert (=> b!2123068 (= e!1352557 (tuple3!2925 (tuple2!23349 (v!28259 lt!795178) Nil!23727) cacheUp!991 cacheDown!1110))))

(declare-fun bm!128694 () Bool)

(assert (=> bm!128694 (= call!128698 (forall!4866 Nil!23727 (ite c!339812 lambda!78639 lambda!78639)))))

(assert (=> b!2123069 (= e!1352556 (forall!4866 (_2!13606 (_1!13607 lt!795172)) lambda!78643))))

(declare-fun b!2123070 () Bool)

(declare-fun lostCauseZipper!57 ((InoxSet Context!2478)) Bool)

(assert (=> b!2123070 (= e!1352559 (lostCauseZipper!57 z!3883))))

(declare-fun b!2123071 () Bool)

(declare-fun res!919355 () Bool)

(assert (=> b!2123071 (=> (not res!919355) (not e!1352556))))

(assert (=> b!2123071 (= res!919355 (= (totalInput!2916 cacheFurthestNullable!130) totalInput!886))))

(assert (= (and d!643576 c!339811) b!2123068))

(assert (= (and d!643576 (not c!339811)) b!2123064))

(assert (= (and b!2123064 (not res!919359)) b!2123070))

(assert (= (and b!2123064 c!339812) b!2123062))

(assert (= (and b!2123064 (not c!339812)) b!2123066))

(assert (= (and b!2123066 c!339813) b!2123060))

(assert (= (and b!2123066 (not c!339813)) b!2123065))

(assert (= (or b!2123062 b!2123066) bm!128694))

(assert (= (or b!2123062 b!2123066) bm!128692))

(assert (= (or b!2123062 b!2123066) bm!128693))

(assert (= (and d!643576 res!919356) b!2123061))

(assert (= (and b!2123061 res!919361) b!2123059))

(assert (= (and b!2123059 res!919357) b!2123067))

(assert (= (and b!2123067 res!919360) b!2123063))

(assert (= (and b!2123063 res!919358) b!2123071))

(assert (= (and b!2123071 res!919355) b!2123069))

(declare-fun m!2576109 () Bool)

(assert (=> bm!128692 m!2576109))

(declare-fun m!2576111 () Bool)

(assert (=> b!2123067 m!2576111))

(assert (=> d!643576 m!2575989))

(declare-fun m!2576113 () Bool)

(assert (=> d!643576 m!2576113))

(declare-fun m!2576115 () Bool)

(assert (=> d!643576 m!2576115))

(assert (=> d!643576 m!2575989))

(declare-fun m!2576117 () Bool)

(assert (=> d!643576 m!2576117))

(declare-fun m!2576119 () Bool)

(assert (=> d!643576 m!2576119))

(declare-fun m!2576121 () Bool)

(assert (=> b!2123069 m!2576121))

(declare-fun m!2576123 () Bool)

(assert (=> b!2123059 m!2576123))

(assert (=> b!2123066 m!2575989))

(declare-fun m!2576125 () Bool)

(assert (=> b!2123066 m!2576125))

(declare-fun m!2576127 () Bool)

(assert (=> b!2123066 m!2576127))

(assert (=> b!2123066 m!2575989))

(declare-fun m!2576129 () Bool)

(assert (=> b!2123066 m!2576129))

(assert (=> b!2123066 m!2576127))

(declare-fun m!2576131 () Bool)

(assert (=> b!2123066 m!2576131))

(declare-fun m!2576133 () Bool)

(assert (=> b!2123066 m!2576133))

(declare-fun m!2576135 () Bool)

(assert (=> b!2123061 m!2576135))

(declare-fun m!2576137 () Bool)

(assert (=> bm!128693 m!2576137))

(declare-fun m!2576139 () Bool)

(assert (=> bm!128694 m!2576139))

(assert (=> b!2123063 m!2575977))

(declare-fun m!2576141 () Bool)

(assert (=> b!2123070 m!2576141))

(assert (=> b!2122881 d!643576))

(declare-fun d!643578 () Bool)

(declare-fun lt!795188 () Int)

(assert (=> d!643578 (= lt!795188 (size!18547 (list!9530 totalInput!886)))))

(assert (=> d!643578 (= lt!795188 (size!18548 (c!339791 totalInput!886)))))

(assert (=> d!643578 (= (size!18546 totalInput!886) lt!795188)))

(declare-fun bs!442800 () Bool)

(assert (= bs!442800 d!643578))

(assert (=> bs!442800 m!2576007))

(assert (=> bs!442800 m!2576007))

(assert (=> bs!442800 m!2576051))

(declare-fun m!2576143 () Bool)

(assert (=> bs!442800 m!2576143))

(assert (=> b!2122881 d!643578))

(declare-fun b!2123098 () Bool)

(declare-fun tp!650199 () Bool)

(declare-fun tp!650200 () Bool)

(declare-fun e!1352580 () Bool)

(assert (=> b!2123098 (= e!1352580 (and (inv!31319 (left!18350 (c!339791 (totalInput!2916 cacheFurthestNullable!130)))) tp!650199 (inv!31319 (right!18680 (c!339791 (totalInput!2916 cacheFurthestNullable!130)))) tp!650200))))

(declare-fun b!2123100 () Bool)

(declare-fun e!1352581 () Bool)

(declare-fun tp!650201 () Bool)

(assert (=> b!2123100 (= e!1352581 tp!650201)))

(declare-fun b!2123099 () Bool)

(declare-fun inv!31325 (IArray!15619) Bool)

(assert (=> b!2123099 (= e!1352580 (and (inv!31325 (xs!10749 (c!339791 (totalInput!2916 cacheFurthestNullable!130)))) e!1352581))))

(assert (=> b!2122903 (= tp!650191 (and (inv!31319 (c!339791 (totalInput!2916 cacheFurthestNullable!130))) e!1352580))))

(assert (= (and b!2122903 ((_ is Node!7807) (c!339791 (totalInput!2916 cacheFurthestNullable!130)))) b!2123098))

(assert (= b!2123099 b!2123100))

(assert (= (and b!2122903 ((_ is Leaf!11409) (c!339791 (totalInput!2916 cacheFurthestNullable!130)))) b!2123099))

(declare-fun m!2576145 () Bool)

(assert (=> b!2123098 m!2576145))

(declare-fun m!2576147 () Bool)

(assert (=> b!2123098 m!2576147))

(declare-fun m!2576149 () Bool)

(assert (=> b!2123099 m!2576149))

(assert (=> b!2122903 m!2576023))

(declare-fun e!1352589 () Bool)

(declare-fun b!2123109 () Bool)

(declare-fun tp!650211 () Bool)

(declare-fun e!1352590 () Bool)

(declare-fun setRes!14932 () Bool)

(declare-fun tp_is_empty!9491 () Bool)

(assert (=> b!2123109 (= e!1352590 (and (inv!31318 (_1!13604 (_1!13605 (h!29125 (zeroValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991)))))))))) e!1352589 tp_is_empty!9491 setRes!14932 tp!650211))))

(declare-fun condSetEmpty!14932 () Bool)

(assert (=> b!2123109 (= condSetEmpty!14932 (= (_2!13605 (h!29125 (zeroValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991)))))))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setNonEmpty!14932 () Bool)

(declare-fun e!1352588 () Bool)

(declare-fun setElem!14932 () Context!2478)

(declare-fun tp!650210 () Bool)

(assert (=> setNonEmpty!14932 (= setRes!14932 (and tp!650210 (inv!31318 setElem!14932) e!1352588))))

(declare-fun setRest!14932 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14932 (= (_2!13605 (h!29125 (zeroValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14932 true) setRest!14932))))

(declare-fun b!2123110 () Bool)

(declare-fun tp!650212 () Bool)

(assert (=> b!2123110 (= e!1352588 tp!650212)))

(assert (=> b!2122887 (= tp!650168 e!1352590)))

(declare-fun setIsEmpty!14932 () Bool)

(assert (=> setIsEmpty!14932 setRes!14932))

(declare-fun b!2123111 () Bool)

(declare-fun tp!650213 () Bool)

(assert (=> b!2123111 (= e!1352589 tp!650213)))

(assert (= b!2123109 b!2123111))

(assert (= (and b!2123109 condSetEmpty!14932) setIsEmpty!14932))

(assert (= (and b!2123109 (not condSetEmpty!14932)) setNonEmpty!14932))

(assert (= setNonEmpty!14932 b!2123110))

(assert (= (and b!2122887 ((_ is Cons!23724) (zeroValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991)))))))) b!2123109))

(declare-fun m!2576151 () Bool)

(assert (=> b!2123109 m!2576151))

(declare-fun m!2576153 () Bool)

(assert (=> setNonEmpty!14932 m!2576153))

(declare-fun setRes!14933 () Bool)

(declare-fun tp!650215 () Bool)

(declare-fun b!2123112 () Bool)

(declare-fun e!1352593 () Bool)

(declare-fun e!1352592 () Bool)

(assert (=> b!2123112 (= e!1352593 (and (inv!31318 (_1!13604 (_1!13605 (h!29125 (minValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991)))))))))) e!1352592 tp_is_empty!9491 setRes!14933 tp!650215))))

(declare-fun condSetEmpty!14933 () Bool)

(assert (=> b!2123112 (= condSetEmpty!14933 (= (_2!13605 (h!29125 (minValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991)))))))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun e!1352591 () Bool)

(declare-fun setElem!14933 () Context!2478)

(declare-fun setNonEmpty!14933 () Bool)

(declare-fun tp!650214 () Bool)

(assert (=> setNonEmpty!14933 (= setRes!14933 (and tp!650214 (inv!31318 setElem!14933) e!1352591))))

(declare-fun setRest!14933 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14933 (= (_2!13605 (h!29125 (minValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14933 true) setRest!14933))))

(declare-fun b!2123113 () Bool)

(declare-fun tp!650216 () Bool)

(assert (=> b!2123113 (= e!1352591 tp!650216)))

(assert (=> b!2122887 (= tp!650177 e!1352593)))

(declare-fun setIsEmpty!14933 () Bool)

(assert (=> setIsEmpty!14933 setRes!14933))

(declare-fun b!2123114 () Bool)

(declare-fun tp!650217 () Bool)

(assert (=> b!2123114 (= e!1352592 tp!650217)))

(assert (= b!2123112 b!2123114))

(assert (= (and b!2123112 condSetEmpty!14933) setIsEmpty!14933))

(assert (= (and b!2123112 (not condSetEmpty!14933)) setNonEmpty!14933))

(assert (= setNonEmpty!14933 b!2123113))

(assert (= (and b!2122887 ((_ is Cons!23724) (minValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 cacheUp!991)))))))) b!2123112))

(declare-fun m!2576155 () Bool)

(assert (=> b!2123112 m!2576155))

(declare-fun m!2576157 () Bool)

(assert (=> setNonEmpty!14933 m!2576157))

(declare-fun setIsEmpty!14938 () Bool)

(declare-fun setRes!14938 () Bool)

(assert (=> setIsEmpty!14938 setRes!14938))

(declare-fun b!2123121 () Bool)

(declare-fun e!1352598 () Bool)

(declare-fun setRes!14939 () Bool)

(assert (=> b!2123121 (= e!1352598 setRes!14939)))

(declare-fun condSetEmpty!14939 () Bool)

(declare-fun mapValue!11971 () List!23809)

(assert (=> b!2123121 (= condSetEmpty!14939 (= (_2!13603 (h!29126 mapValue!11971)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun condMapEmpty!11971 () Bool)

(declare-fun mapDefault!11971 () List!23809)

(assert (=> mapNonEmpty!11966 (= condMapEmpty!11971 (= mapRest!11965 ((as const (Array (_ BitVec 32) List!23809)) mapDefault!11971)))))

(declare-fun e!1352599 () Bool)

(declare-fun mapRes!11971 () Bool)

(assert (=> mapNonEmpty!11966 (and e!1352599 mapRes!11971)))

(declare-fun b!2123122 () Bool)

(assert (=> b!2123122 (= e!1352599 setRes!14938)))

(declare-fun condSetEmpty!14938 () Bool)

(assert (=> b!2123122 (= condSetEmpty!14938 (= (_2!13603 (h!29126 mapDefault!11971)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setNonEmpty!14938 () Bool)

(assert (=> setNonEmpty!14938 (= setRes!14939 true)))

(declare-fun setElem!14938 () Context!2478)

(declare-fun setRest!14938 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14938 (= (_2!13603 (h!29126 mapValue!11971)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14938 true) setRest!14938))))

(declare-fun mapNonEmpty!11971 () Bool)

(assert (=> mapNonEmpty!11971 (= mapRes!11971 e!1352598)))

(declare-fun mapKey!11971 () (_ BitVec 32))

(declare-fun mapRest!11971 () (Array (_ BitVec 32) List!23809))

(assert (=> mapNonEmpty!11971 (= mapRest!11965 (store mapRest!11971 mapKey!11971 mapValue!11971))))

(declare-fun setIsEmpty!14939 () Bool)

(assert (=> setIsEmpty!14939 setRes!14939))

(declare-fun mapIsEmpty!11971 () Bool)

(assert (=> mapIsEmpty!11971 mapRes!11971))

(declare-fun setNonEmpty!14939 () Bool)

(assert (=> setNonEmpty!14939 (= setRes!14938 true)))

(declare-fun setElem!14939 () Context!2478)

(declare-fun setRest!14939 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14939 (= (_2!13603 (h!29126 mapDefault!11971)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14939 true) setRest!14939))))

(assert (= (and mapNonEmpty!11966 condMapEmpty!11971) mapIsEmpty!11971))

(assert (= (and mapNonEmpty!11966 (not condMapEmpty!11971)) mapNonEmpty!11971))

(assert (= (and b!2123121 condSetEmpty!14939) setIsEmpty!14939))

(assert (= (and b!2123121 (not condSetEmpty!14939)) setNonEmpty!14938))

(assert (= (and mapNonEmpty!11971 ((_ is Cons!23725) mapValue!11971)) b!2123121))

(assert (= (and b!2123122 condSetEmpty!14938) setIsEmpty!14938))

(assert (= (and b!2123122 (not condSetEmpty!14938)) setNonEmpty!14939))

(assert (= (and mapNonEmpty!11966 ((_ is Cons!23725) mapDefault!11971)) b!2123122))

(declare-fun m!2576159 () Bool)

(assert (=> mapNonEmpty!11971 m!2576159))

(declare-fun b!2123127 () Bool)

(declare-fun e!1352602 () Bool)

(declare-fun setRes!14942 () Bool)

(assert (=> b!2123127 (= e!1352602 setRes!14942)))

(declare-fun condSetEmpty!14942 () Bool)

(assert (=> b!2123127 (= condSetEmpty!14942 (= (_2!13603 (h!29126 mapValue!11965)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14942 () Bool)

(assert (=> setIsEmpty!14942 setRes!14942))

(declare-fun setNonEmpty!14942 () Bool)

(assert (=> setNonEmpty!14942 (= setRes!14942 true)))

(declare-fun setElem!14942 () Context!2478)

(declare-fun setRest!14942 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14942 (= (_2!13603 (h!29126 mapValue!11965)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14942 true) setRest!14942))))

(assert (=> mapNonEmpty!11966 e!1352602))

(assert (= (and b!2123127 condSetEmpty!14942) setIsEmpty!14942))

(assert (= (and b!2123127 (not condSetEmpty!14942)) setNonEmpty!14942))

(assert (= (and mapNonEmpty!11966 ((_ is Cons!23725) mapValue!11965)) b!2123127))

(declare-fun b!2123136 () Bool)

(declare-fun e!1352610 () Bool)

(declare-fun tp!650232 () Bool)

(assert (=> b!2123136 (= e!1352610 tp!650232)))

(declare-fun setNonEmpty!14945 () Bool)

(declare-fun setRes!14945 () Bool)

(declare-fun setElem!14945 () Context!2478)

(declare-fun e!1352609 () Bool)

(declare-fun tp!650230 () Bool)

(assert (=> setNonEmpty!14945 (= setRes!14945 (and tp!650230 (inv!31318 setElem!14945) e!1352609))))

(declare-fun setRest!14945 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14945 (= (_2!13603 (h!29126 (zeroValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14945 true) setRest!14945))))

(declare-fun e!1352611 () Bool)

(assert (=> b!2122904 (= tp!650178 e!1352611)))

(declare-fun b!2123137 () Bool)

(declare-fun tp!650228 () Bool)

(assert (=> b!2123137 (= e!1352609 tp!650228)))

(declare-fun b!2123138 () Bool)

(declare-fun tp!650231 () Bool)

(declare-fun tp!650229 () Bool)

(assert (=> b!2123138 (= e!1352611 (and tp!650229 (inv!31318 (_2!13602 (_1!13603 (h!29126 (zeroValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110)))))))))) e!1352610 tp_is_empty!9491 setRes!14945 tp!650231))))

(declare-fun condSetEmpty!14945 () Bool)

(assert (=> b!2123138 (= condSetEmpty!14945 (= (_2!13603 (h!29126 (zeroValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110)))))))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14945 () Bool)

(assert (=> setIsEmpty!14945 setRes!14945))

(assert (= b!2123138 b!2123136))

(assert (= (and b!2123138 condSetEmpty!14945) setIsEmpty!14945))

(assert (= (and b!2123138 (not condSetEmpty!14945)) setNonEmpty!14945))

(assert (= setNonEmpty!14945 b!2123137))

(assert (= (and b!2122904 ((_ is Cons!23725) (zeroValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110)))))))) b!2123138))

(declare-fun m!2576161 () Bool)

(assert (=> setNonEmpty!14945 m!2576161))

(declare-fun m!2576163 () Bool)

(assert (=> b!2123138 m!2576163))

(declare-fun b!2123139 () Bool)

(declare-fun e!1352613 () Bool)

(declare-fun tp!650237 () Bool)

(assert (=> b!2123139 (= e!1352613 tp!650237)))

(declare-fun tp!650235 () Bool)

(declare-fun setElem!14946 () Context!2478)

(declare-fun e!1352612 () Bool)

(declare-fun setNonEmpty!14946 () Bool)

(declare-fun setRes!14946 () Bool)

(assert (=> setNonEmpty!14946 (= setRes!14946 (and tp!650235 (inv!31318 setElem!14946) e!1352612))))

(declare-fun setRest!14946 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14946 (= (_2!13603 (h!29126 (minValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14946 true) setRest!14946))))

(declare-fun e!1352614 () Bool)

(assert (=> b!2122904 (= tp!650183 e!1352614)))

(declare-fun b!2123140 () Bool)

(declare-fun tp!650233 () Bool)

(assert (=> b!2123140 (= e!1352612 tp!650233)))

(declare-fun tp!650236 () Bool)

(declare-fun tp!650234 () Bool)

(declare-fun b!2123141 () Bool)

(assert (=> b!2123141 (= e!1352614 (and tp!650234 (inv!31318 (_2!13602 (_1!13603 (h!29126 (minValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110)))))))))) e!1352613 tp_is_empty!9491 setRes!14946 tp!650236))))

(declare-fun condSetEmpty!14946 () Bool)

(assert (=> b!2123141 (= condSetEmpty!14946 (= (_2!13603 (h!29126 (minValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110)))))))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14946 () Bool)

(assert (=> setIsEmpty!14946 setRes!14946))

(assert (= b!2123141 b!2123139))

(assert (= (and b!2123141 condSetEmpty!14946) setIsEmpty!14946))

(assert (= (and b!2123141 (not condSetEmpty!14946)) setNonEmpty!14946))

(assert (= setNonEmpty!14946 b!2123140))

(assert (= (and b!2122904 ((_ is Cons!23725) (minValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 cacheDown!1110)))))))) b!2123141))

(declare-fun m!2576165 () Bool)

(assert (=> setNonEmpty!14946 m!2576165))

(declare-fun m!2576167 () Bool)

(assert (=> b!2123141 m!2576167))

(declare-fun mapIsEmpty!11974 () Bool)

(declare-fun mapRes!11974 () Bool)

(assert (=> mapIsEmpty!11974 mapRes!11974))

(declare-fun b!2123152 () Bool)

(declare-fun e!1352626 () Bool)

(declare-fun tp!650258 () Bool)

(assert (=> b!2123152 (= e!1352626 tp!650258)))

(declare-fun b!2123153 () Bool)

(declare-fun e!1352625 () Bool)

(declare-fun setRes!14951 () Bool)

(declare-fun tp!650255 () Bool)

(assert (=> b!2123153 (= e!1352625 (and setRes!14951 tp!650255))))

(declare-fun condSetEmpty!14951 () Bool)

(declare-fun mapValue!11974 () List!23812)

(assert (=> b!2123153 (= condSetEmpty!14951 (= (_1!13608 (_1!13609 (h!29129 mapValue!11974))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun e!1352624 () Bool)

(declare-fun tp!650257 () Bool)

(declare-fun setNonEmpty!14951 () Bool)

(declare-fun setElem!14951 () Context!2478)

(assert (=> setNonEmpty!14951 (= setRes!14951 (and tp!650257 (inv!31318 setElem!14951) e!1352624))))

(declare-fun setRest!14952 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14951 (= (_1!13608 (_1!13609 (h!29129 mapValue!11974))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14951 true) setRest!14952))))

(declare-fun b!2123154 () Bool)

(declare-fun e!1352623 () Bool)

(declare-fun setRes!14952 () Bool)

(declare-fun tp!650256 () Bool)

(assert (=> b!2123154 (= e!1352623 (and setRes!14952 tp!650256))))

(declare-fun condSetEmpty!14952 () Bool)

(declare-fun mapDefault!11974 () List!23812)

(assert (=> b!2123154 (= condSetEmpty!14952 (= (_1!13608 (_1!13609 (h!29129 mapDefault!11974))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14951 () Bool)

(assert (=> setIsEmpty!14951 setRes!14952))

(declare-fun mapNonEmpty!11974 () Bool)

(declare-fun tp!650253 () Bool)

(assert (=> mapNonEmpty!11974 (= mapRes!11974 (and tp!650253 e!1352625))))

(declare-fun mapKey!11974 () (_ BitVec 32))

(declare-fun mapRest!11974 () (Array (_ BitVec 32) List!23812))

(assert (=> mapNonEmpty!11974 (= mapRest!11959 (store mapRest!11974 mapKey!11974 mapValue!11974))))

(declare-fun setElem!14952 () Context!2478)

(declare-fun setNonEmpty!14952 () Bool)

(declare-fun tp!650252 () Bool)

(assert (=> setNonEmpty!14952 (= setRes!14952 (and tp!650252 (inv!31318 setElem!14952) e!1352626))))

(declare-fun setRest!14951 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14952 (= (_1!13608 (_1!13609 (h!29129 mapDefault!11974))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14952 true) setRest!14951))))

(declare-fun condMapEmpty!11974 () Bool)

(assert (=> mapNonEmpty!11959 (= condMapEmpty!11974 (= mapRest!11959 ((as const (Array (_ BitVec 32) List!23812)) mapDefault!11974)))))

(assert (=> mapNonEmpty!11959 (= tp!650189 (and e!1352623 mapRes!11974))))

(declare-fun b!2123155 () Bool)

(declare-fun tp!650254 () Bool)

(assert (=> b!2123155 (= e!1352624 tp!650254)))

(declare-fun setIsEmpty!14952 () Bool)

(assert (=> setIsEmpty!14952 setRes!14951))

(assert (= (and mapNonEmpty!11959 condMapEmpty!11974) mapIsEmpty!11974))

(assert (= (and mapNonEmpty!11959 (not condMapEmpty!11974)) mapNonEmpty!11974))

(assert (= (and b!2123153 condSetEmpty!14951) setIsEmpty!14952))

(assert (= (and b!2123153 (not condSetEmpty!14951)) setNonEmpty!14951))

(assert (= setNonEmpty!14951 b!2123155))

(assert (= (and mapNonEmpty!11974 ((_ is Cons!23728) mapValue!11974)) b!2123153))

(assert (= (and b!2123154 condSetEmpty!14952) setIsEmpty!14951))

(assert (= (and b!2123154 (not condSetEmpty!14952)) setNonEmpty!14952))

(assert (= setNonEmpty!14952 b!2123152))

(assert (= (and mapNonEmpty!11959 ((_ is Cons!23728) mapDefault!11974)) b!2123154))

(declare-fun m!2576169 () Bool)

(assert (=> setNonEmpty!14951 m!2576169))

(declare-fun m!2576171 () Bool)

(assert (=> mapNonEmpty!11974 m!2576171))

(declare-fun m!2576173 () Bool)

(assert (=> setNonEmpty!14952 m!2576173))

(declare-fun setNonEmpty!14955 () Bool)

(declare-fun tp!650267 () Bool)

(declare-fun setRes!14955 () Bool)

(declare-fun e!1352631 () Bool)

(declare-fun setElem!14955 () Context!2478)

(assert (=> setNonEmpty!14955 (= setRes!14955 (and tp!650267 (inv!31318 setElem!14955) e!1352631))))

(declare-fun setRest!14955 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14955 (= (_1!13608 (_1!13609 (h!29129 mapValue!11959))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14955 true) setRest!14955))))

(declare-fun b!2123162 () Bool)

(declare-fun e!1352632 () Bool)

(declare-fun tp!650266 () Bool)

(assert (=> b!2123162 (= e!1352632 (and setRes!14955 tp!650266))))

(declare-fun condSetEmpty!14955 () Bool)

(assert (=> b!2123162 (= condSetEmpty!14955 (= (_1!13608 (_1!13609 (h!29129 mapValue!11959))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun b!2123163 () Bool)

(declare-fun tp!650265 () Bool)

(assert (=> b!2123163 (= e!1352631 tp!650265)))

(assert (=> mapNonEmpty!11959 (= tp!650179 e!1352632)))

(declare-fun setIsEmpty!14955 () Bool)

(assert (=> setIsEmpty!14955 setRes!14955))

(assert (= (and b!2123162 condSetEmpty!14955) setIsEmpty!14955))

(assert (= (and b!2123162 (not condSetEmpty!14955)) setNonEmpty!14955))

(assert (= setNonEmpty!14955 b!2123163))

(assert (= (and mapNonEmpty!11959 ((_ is Cons!23728) mapValue!11959)) b!2123162))

(declare-fun m!2576175 () Bool)

(assert (=> setNonEmpty!14955 m!2576175))

(declare-fun b!2123178 () Bool)

(declare-fun e!1352649 () Bool)

(declare-fun tp!650291 () Bool)

(assert (=> b!2123178 (= e!1352649 tp!650291)))

(declare-fun mapIsEmpty!11977 () Bool)

(declare-fun mapRes!11977 () Bool)

(assert (=> mapIsEmpty!11977 mapRes!11977))

(declare-fun b!2123179 () Bool)

(declare-fun e!1352645 () Bool)

(declare-fun tp!650290 () Bool)

(assert (=> b!2123179 (= e!1352645 tp!650290)))

(declare-fun tp!650289 () Bool)

(declare-fun mapValue!11977 () List!23808)

(declare-fun setRes!14960 () Bool)

(declare-fun e!1352646 () Bool)

(declare-fun b!2123181 () Bool)

(assert (=> b!2123181 (= e!1352646 (and (inv!31318 (_1!13604 (_1!13605 (h!29125 mapValue!11977)))) e!1352645 tp_is_empty!9491 setRes!14960 tp!650289))))

(declare-fun condSetEmpty!14961 () Bool)

(assert (=> b!2123181 (= condSetEmpty!14961 (= (_2!13605 (h!29125 mapValue!11977)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun mapNonEmpty!11977 () Bool)

(declare-fun tp!650286 () Bool)

(assert (=> mapNonEmpty!11977 (= mapRes!11977 (and tp!650286 e!1352646))))

(declare-fun mapKey!11977 () (_ BitVec 32))

(declare-fun mapRest!11977 () (Array (_ BitVec 32) List!23808))

(assert (=> mapNonEmpty!11977 (= mapRest!11958 (store mapRest!11977 mapKey!11977 mapValue!11977))))

(declare-fun setIsEmpty!14960 () Bool)

(declare-fun setRes!14961 () Bool)

(assert (=> setIsEmpty!14960 setRes!14961))

(declare-fun b!2123180 () Bool)

(declare-fun e!1352650 () Bool)

(declare-fun tp!650294 () Bool)

(assert (=> b!2123180 (= e!1352650 tp!650294)))

(declare-fun condMapEmpty!11977 () Bool)

(declare-fun mapDefault!11977 () List!23808)

(assert (=> mapNonEmpty!11958 (= condMapEmpty!11977 (= mapRest!11958 ((as const (Array (_ BitVec 32) List!23808)) mapDefault!11977)))))

(declare-fun e!1352647 () Bool)

(assert (=> mapNonEmpty!11958 (= tp!650172 (and e!1352647 mapRes!11977))))

(declare-fun setNonEmpty!14960 () Bool)

(declare-fun e!1352648 () Bool)

(declare-fun setElem!14960 () Context!2478)

(declare-fun tp!650287 () Bool)

(assert (=> setNonEmpty!14960 (= setRes!14961 (and tp!650287 (inv!31318 setElem!14960) e!1352648))))

(declare-fun setRest!14961 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14960 (= (_2!13605 (h!29125 mapDefault!11977)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14960 true) setRest!14961))))

(declare-fun setIsEmpty!14961 () Bool)

(assert (=> setIsEmpty!14961 setRes!14960))

(declare-fun b!2123182 () Bool)

(declare-fun tp!650288 () Bool)

(assert (=> b!2123182 (= e!1352647 (and (inv!31318 (_1!13604 (_1!13605 (h!29125 mapDefault!11977)))) e!1352650 tp_is_empty!9491 setRes!14961 tp!650288))))

(declare-fun condSetEmpty!14960 () Bool)

(assert (=> b!2123182 (= condSetEmpty!14960 (= (_2!13605 (h!29125 mapDefault!11977)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun b!2123183 () Bool)

(declare-fun tp!650292 () Bool)

(assert (=> b!2123183 (= e!1352648 tp!650292)))

(declare-fun tp!650293 () Bool)

(declare-fun setElem!14961 () Context!2478)

(declare-fun setNonEmpty!14961 () Bool)

(assert (=> setNonEmpty!14961 (= setRes!14960 (and tp!650293 (inv!31318 setElem!14961) e!1352649))))

(declare-fun setRest!14960 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14961 (= (_2!13605 (h!29125 mapValue!11977)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14961 true) setRest!14960))))

(assert (= (and mapNonEmpty!11958 condMapEmpty!11977) mapIsEmpty!11977))

(assert (= (and mapNonEmpty!11958 (not condMapEmpty!11977)) mapNonEmpty!11977))

(assert (= b!2123181 b!2123179))

(assert (= (and b!2123181 condSetEmpty!14961) setIsEmpty!14961))

(assert (= (and b!2123181 (not condSetEmpty!14961)) setNonEmpty!14961))

(assert (= setNonEmpty!14961 b!2123178))

(assert (= (and mapNonEmpty!11977 ((_ is Cons!23724) mapValue!11977)) b!2123181))

(assert (= b!2123182 b!2123180))

(assert (= (and b!2123182 condSetEmpty!14960) setIsEmpty!14960))

(assert (= (and b!2123182 (not condSetEmpty!14960)) setNonEmpty!14960))

(assert (= setNonEmpty!14960 b!2123183))

(assert (= (and mapNonEmpty!11958 ((_ is Cons!23724) mapDefault!11977)) b!2123182))

(declare-fun m!2576177 () Bool)

(assert (=> setNonEmpty!14960 m!2576177))

(declare-fun m!2576179 () Bool)

(assert (=> b!2123182 m!2576179))

(declare-fun m!2576181 () Bool)

(assert (=> mapNonEmpty!11977 m!2576181))

(declare-fun m!2576183 () Bool)

(assert (=> setNonEmpty!14961 m!2576183))

(declare-fun m!2576185 () Bool)

(assert (=> b!2123181 m!2576185))

(declare-fun setRes!14962 () Bool)

(declare-fun e!1352652 () Bool)

(declare-fun e!1352653 () Bool)

(declare-fun b!2123184 () Bool)

(declare-fun tp!650296 () Bool)

(assert (=> b!2123184 (= e!1352653 (and (inv!31318 (_1!13604 (_1!13605 (h!29125 mapValue!11960)))) e!1352652 tp_is_empty!9491 setRes!14962 tp!650296))))

(declare-fun condSetEmpty!14962 () Bool)

(assert (=> b!2123184 (= condSetEmpty!14962 (= (_2!13605 (h!29125 mapValue!11960)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setNonEmpty!14962 () Bool)

(declare-fun setElem!14962 () Context!2478)

(declare-fun e!1352651 () Bool)

(declare-fun tp!650295 () Bool)

(assert (=> setNonEmpty!14962 (= setRes!14962 (and tp!650295 (inv!31318 setElem!14962) e!1352651))))

(declare-fun setRest!14962 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14962 (= (_2!13605 (h!29125 mapValue!11960)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14962 true) setRest!14962))))

(declare-fun b!2123185 () Bool)

(declare-fun tp!650297 () Bool)

(assert (=> b!2123185 (= e!1352651 tp!650297)))

(assert (=> mapNonEmpty!11958 (= tp!650186 e!1352653)))

(declare-fun setIsEmpty!14962 () Bool)

(assert (=> setIsEmpty!14962 setRes!14962))

(declare-fun b!2123186 () Bool)

(declare-fun tp!650298 () Bool)

(assert (=> b!2123186 (= e!1352652 tp!650298)))

(assert (= b!2123184 b!2123186))

(assert (= (and b!2123184 condSetEmpty!14962) setIsEmpty!14962))

(assert (= (and b!2123184 (not condSetEmpty!14962)) setNonEmpty!14962))

(assert (= setNonEmpty!14962 b!2123185))

(assert (= (and mapNonEmpty!11958 ((_ is Cons!23724) mapValue!11960)) b!2123184))

(declare-fun m!2576187 () Bool)

(assert (=> b!2123184 m!2576187))

(declare-fun m!2576189 () Bool)

(assert (=> setNonEmpty!14962 m!2576189))

(declare-fun b!2123187 () Bool)

(declare-fun e!1352654 () Bool)

(declare-fun setRes!14963 () Bool)

(assert (=> b!2123187 (= e!1352654 setRes!14963)))

(declare-fun condSetEmpty!14963 () Bool)

(assert (=> b!2123187 (= condSetEmpty!14963 (= (_2!13603 (h!29126 mapDefault!11966)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14963 () Bool)

(assert (=> setIsEmpty!14963 setRes!14963))

(declare-fun setNonEmpty!14963 () Bool)

(assert (=> setNonEmpty!14963 (= setRes!14963 true)))

(declare-fun setElem!14963 () Context!2478)

(declare-fun setRest!14963 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14963 (= (_2!13603 (h!29126 mapDefault!11966)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14963 true) setRest!14963))))

(assert (=> b!2122956 e!1352654))

(assert (= (and b!2123187 condSetEmpty!14963) setIsEmpty!14963))

(assert (= (and b!2123187 (not condSetEmpty!14963)) setNonEmpty!14963))

(assert (= (and b!2122956 ((_ is Cons!23725) mapDefault!11966)) b!2123187))

(declare-fun condSetEmpty!14966 () Bool)

(assert (=> setNonEmpty!14925 (= condSetEmpty!14966 (= setRest!14925 ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setRes!14966 () Bool)

(assert (=> setNonEmpty!14925 (= tp!650192 setRes!14966)))

(declare-fun setIsEmpty!14966 () Bool)

(assert (=> setIsEmpty!14966 setRes!14966))

(declare-fun tp!650303 () Bool)

(declare-fun setElem!14966 () Context!2478)

(declare-fun e!1352657 () Bool)

(declare-fun setNonEmpty!14966 () Bool)

(assert (=> setNonEmpty!14966 (= setRes!14966 (and tp!650303 (inv!31318 setElem!14966) e!1352657))))

(declare-fun setRest!14966 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14966 (= setRest!14925 ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14966 true) setRest!14966))))

(declare-fun b!2123192 () Bool)

(declare-fun tp!650304 () Bool)

(assert (=> b!2123192 (= e!1352657 tp!650304)))

(assert (= (and setNonEmpty!14925 condSetEmpty!14966) setIsEmpty!14966))

(assert (= (and setNonEmpty!14925 (not condSetEmpty!14966)) setNonEmpty!14966))

(assert (= setNonEmpty!14966 b!2123192))

(declare-fun m!2576191 () Bool)

(assert (=> setNonEmpty!14966 m!2576191))

(declare-fun b!2123197 () Bool)

(declare-fun e!1352660 () Bool)

(declare-fun setRes!14969 () Bool)

(assert (=> b!2123197 (= e!1352660 setRes!14969)))

(declare-fun condSetEmpty!14969 () Bool)

(assert (=> b!2123197 (= condSetEmpty!14969 (= (_2!13605 (h!29125 mapDefault!11965)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14969 () Bool)

(assert (=> setIsEmpty!14969 setRes!14969))

(declare-fun setNonEmpty!14969 () Bool)

(assert (=> setNonEmpty!14969 (= setRes!14969 true)))

(declare-fun setElem!14969 () Context!2478)

(declare-fun setRest!14969 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14969 (= (_2!13605 (h!29125 mapDefault!11965)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14969 true) setRest!14969))))

(assert (=> b!2122954 e!1352660))

(assert (= (and b!2123197 condSetEmpty!14969) setIsEmpty!14969))

(assert (= (and b!2123197 (not condSetEmpty!14969)) setNonEmpty!14969))

(assert (= (and b!2122954 ((_ is Cons!23724) mapDefault!11965)) b!2123197))

(declare-fun mapValue!11980 () List!23809)

(declare-fun b!2123212 () Bool)

(declare-fun setRes!14975 () Bool)

(declare-fun tp!650332 () Bool)

(declare-fun e!1352675 () Bool)

(declare-fun tp!650337 () Bool)

(declare-fun e!1352678 () Bool)

(assert (=> b!2123212 (= e!1352675 (and tp!650332 (inv!31318 (_2!13602 (_1!13603 (h!29126 mapValue!11980)))) e!1352678 tp_is_empty!9491 setRes!14975 tp!650337))))

(declare-fun condSetEmpty!14975 () Bool)

(assert (=> b!2123212 (= condSetEmpty!14975 (= (_2!13603 (h!29126 mapValue!11980)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun b!2123213 () Bool)

(declare-fun e!1352676 () Bool)

(declare-fun tp!650330 () Bool)

(assert (=> b!2123213 (= e!1352676 tp!650330)))

(declare-fun b!2123214 () Bool)

(declare-fun e!1352673 () Bool)

(declare-fun tp!650333 () Bool)

(assert (=> b!2123214 (= e!1352673 tp!650333)))

(declare-fun setElem!14974 () Context!2478)

(declare-fun setNonEmpty!14974 () Bool)

(declare-fun tp!650336 () Bool)

(assert (=> setNonEmpty!14974 (= setRes!14975 (and tp!650336 (inv!31318 setElem!14974) e!1352673))))

(declare-fun setRest!14975 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14974 (= (_2!13603 (h!29126 mapValue!11980)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14974 true) setRest!14975))))

(declare-fun condMapEmpty!11980 () Bool)

(declare-fun mapDefault!11980 () List!23809)

(assert (=> mapNonEmpty!11960 (= condMapEmpty!11980 (= mapRest!11960 ((as const (Array (_ BitVec 32) List!23809)) mapDefault!11980)))))

(declare-fun e!1352674 () Bool)

(declare-fun mapRes!11980 () Bool)

(assert (=> mapNonEmpty!11960 (= tp!650167 (and e!1352674 mapRes!11980))))

(declare-fun mapNonEmpty!11980 () Bool)

(declare-fun tp!650328 () Bool)

(assert (=> mapNonEmpty!11980 (= mapRes!11980 (and tp!650328 e!1352675))))

(declare-fun mapRest!11980 () (Array (_ BitVec 32) List!23809))

(declare-fun mapKey!11980 () (_ BitVec 32))

(assert (=> mapNonEmpty!11980 (= mapRest!11960 (store mapRest!11980 mapKey!11980 mapValue!11980))))

(declare-fun setRes!14974 () Bool)

(declare-fun tp!650331 () Bool)

(declare-fun tp!650335 () Bool)

(declare-fun b!2123215 () Bool)

(assert (=> b!2123215 (= e!1352674 (and tp!650331 (inv!31318 (_2!13602 (_1!13603 (h!29126 mapDefault!11980)))) e!1352676 tp_is_empty!9491 setRes!14974 tp!650335))))

(declare-fun condSetEmpty!14974 () Bool)

(assert (=> b!2123215 (= condSetEmpty!14974 (= (_2!13603 (h!29126 mapDefault!11980)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun b!2123216 () Bool)

(declare-fun e!1352677 () Bool)

(declare-fun tp!650327 () Bool)

(assert (=> b!2123216 (= e!1352677 tp!650327)))

(declare-fun setIsEmpty!14974 () Bool)

(assert (=> setIsEmpty!14974 setRes!14975))

(declare-fun setElem!14975 () Context!2478)

(declare-fun tp!650334 () Bool)

(declare-fun setNonEmpty!14975 () Bool)

(assert (=> setNonEmpty!14975 (= setRes!14974 (and tp!650334 (inv!31318 setElem!14975) e!1352677))))

(declare-fun setRest!14974 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14975 (= (_2!13603 (h!29126 mapDefault!11980)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14975 true) setRest!14974))))

(declare-fun mapIsEmpty!11980 () Bool)

(assert (=> mapIsEmpty!11980 mapRes!11980))

(declare-fun b!2123217 () Bool)

(declare-fun tp!650329 () Bool)

(assert (=> b!2123217 (= e!1352678 tp!650329)))

(declare-fun setIsEmpty!14975 () Bool)

(assert (=> setIsEmpty!14975 setRes!14974))

(assert (= (and mapNonEmpty!11960 condMapEmpty!11980) mapIsEmpty!11980))

(assert (= (and mapNonEmpty!11960 (not condMapEmpty!11980)) mapNonEmpty!11980))

(assert (= b!2123212 b!2123217))

(assert (= (and b!2123212 condSetEmpty!14975) setIsEmpty!14974))

(assert (= (and b!2123212 (not condSetEmpty!14975)) setNonEmpty!14974))

(assert (= setNonEmpty!14974 b!2123214))

(assert (= (and mapNonEmpty!11980 ((_ is Cons!23725) mapValue!11980)) b!2123212))

(assert (= b!2123215 b!2123213))

(assert (= (and b!2123215 condSetEmpty!14974) setIsEmpty!14975))

(assert (= (and b!2123215 (not condSetEmpty!14974)) setNonEmpty!14975))

(assert (= setNonEmpty!14975 b!2123216))

(assert (= (and mapNonEmpty!11960 ((_ is Cons!23725) mapDefault!11980)) b!2123215))

(declare-fun m!2576193 () Bool)

(assert (=> b!2123212 m!2576193))

(declare-fun m!2576195 () Bool)

(assert (=> setNonEmpty!14974 m!2576195))

(declare-fun m!2576197 () Bool)

(assert (=> setNonEmpty!14975 m!2576197))

(declare-fun m!2576199 () Bool)

(assert (=> b!2123215 m!2576199))

(declare-fun m!2576201 () Bool)

(assert (=> mapNonEmpty!11980 m!2576201))

(declare-fun b!2123218 () Bool)

(declare-fun e!1352680 () Bool)

(declare-fun tp!650342 () Bool)

(assert (=> b!2123218 (= e!1352680 tp!650342)))

(declare-fun setRes!14976 () Bool)

(declare-fun tp!650340 () Bool)

(declare-fun e!1352679 () Bool)

(declare-fun setElem!14976 () Context!2478)

(declare-fun setNonEmpty!14976 () Bool)

(assert (=> setNonEmpty!14976 (= setRes!14976 (and tp!650340 (inv!31318 setElem!14976) e!1352679))))

(declare-fun setRest!14976 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14976 (= (_2!13603 (h!29126 mapValue!11958)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14976 true) setRest!14976))))

(declare-fun e!1352681 () Bool)

(assert (=> mapNonEmpty!11960 (= tp!650185 e!1352681)))

(declare-fun b!2123219 () Bool)

(declare-fun tp!650338 () Bool)

(assert (=> b!2123219 (= e!1352679 tp!650338)))

(declare-fun b!2123220 () Bool)

(declare-fun tp!650341 () Bool)

(declare-fun tp!650339 () Bool)

(assert (=> b!2123220 (= e!1352681 (and tp!650339 (inv!31318 (_2!13602 (_1!13603 (h!29126 mapValue!11958)))) e!1352680 tp_is_empty!9491 setRes!14976 tp!650341))))

(declare-fun condSetEmpty!14976 () Bool)

(assert (=> b!2123220 (= condSetEmpty!14976 (= (_2!13603 (h!29126 mapValue!11958)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14976 () Bool)

(assert (=> setIsEmpty!14976 setRes!14976))

(assert (= b!2123220 b!2123218))

(assert (= (and b!2123220 condSetEmpty!14976) setIsEmpty!14976))

(assert (= (and b!2123220 (not condSetEmpty!14976)) setNonEmpty!14976))

(assert (= setNonEmpty!14976 b!2123219))

(assert (= (and mapNonEmpty!11960 ((_ is Cons!23725) mapValue!11958)) b!2123220))

(declare-fun m!2576203 () Bool)

(assert (=> setNonEmpty!14976 m!2576203))

(declare-fun m!2576205 () Bool)

(assert (=> b!2123220 m!2576205))

(declare-fun b!2123221 () Bool)

(declare-fun e!1352682 () Bool)

(declare-fun setRes!14977 () Bool)

(assert (=> b!2123221 (= e!1352682 setRes!14977)))

(declare-fun condSetEmpty!14977 () Bool)

(assert (=> b!2123221 (= condSetEmpty!14977 (= (_2!13605 (h!29125 (zeroValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795115))))))))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14977 () Bool)

(assert (=> setIsEmpty!14977 setRes!14977))

(declare-fun setNonEmpty!14977 () Bool)

(assert (=> setNonEmpty!14977 (= setRes!14977 true)))

(declare-fun setElem!14977 () Context!2478)

(declare-fun setRest!14977 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14977 (= (_2!13605 (h!29125 (zeroValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795115))))))))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14977 true) setRest!14977))))

(assert (=> b!2122955 e!1352682))

(assert (= (and b!2123221 condSetEmpty!14977) setIsEmpty!14977))

(assert (= (and b!2123221 (not condSetEmpty!14977)) setNonEmpty!14977))

(assert (= (and b!2122955 ((_ is Cons!23724) (zeroValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795115))))))))) b!2123221))

(declare-fun b!2123222 () Bool)

(declare-fun e!1352683 () Bool)

(declare-fun setRes!14978 () Bool)

(assert (=> b!2123222 (= e!1352683 setRes!14978)))

(declare-fun condSetEmpty!14978 () Bool)

(assert (=> b!2123222 (= condSetEmpty!14978 (= (_2!13605 (h!29125 (minValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795115))))))))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14978 () Bool)

(assert (=> setIsEmpty!14978 setRes!14978))

(declare-fun setNonEmpty!14978 () Bool)

(assert (=> setNonEmpty!14978 (= setRes!14978 true)))

(declare-fun setElem!14978 () Context!2478)

(declare-fun setRest!14978 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14978 (= (_2!13605 (h!29125 (minValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795115))))))))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14978 true) setRest!14978))))

(assert (=> b!2122955 e!1352683))

(assert (= (and b!2123222 condSetEmpty!14978) setIsEmpty!14978))

(assert (= (and b!2123222 (not condSetEmpty!14978)) setNonEmpty!14978))

(assert (= (and b!2122955 ((_ is Cons!23724) (minValue!2719 (v!28255 (underlying!5116 (v!28256 (underlying!5117 (cache!2755 (_2!13607 lt!795115))))))))) b!2123222))

(declare-fun b!2123223 () Bool)

(declare-fun e!1352684 () Bool)

(declare-fun setRes!14979 () Bool)

(assert (=> b!2123223 (= e!1352684 setRes!14979)))

(declare-fun condSetEmpty!14979 () Bool)

(assert (=> b!2123223 (= condSetEmpty!14979 (= (_2!13603 (h!29126 (zeroValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795115))))))))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14979 () Bool)

(assert (=> setIsEmpty!14979 setRes!14979))

(declare-fun setNonEmpty!14979 () Bool)

(assert (=> setNonEmpty!14979 (= setRes!14979 true)))

(declare-fun setElem!14979 () Context!2478)

(declare-fun setRest!14979 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14979 (= (_2!13603 (h!29126 (zeroValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795115))))))))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14979 true) setRest!14979))))

(assert (=> b!2122947 e!1352684))

(assert (= (and b!2123223 condSetEmpty!14979) setIsEmpty!14979))

(assert (= (and b!2123223 (not condSetEmpty!14979)) setNonEmpty!14979))

(assert (= (and b!2122947 ((_ is Cons!23725) (zeroValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795115))))))))) b!2123223))

(declare-fun b!2123224 () Bool)

(declare-fun e!1352685 () Bool)

(declare-fun setRes!14980 () Bool)

(assert (=> b!2123224 (= e!1352685 setRes!14980)))

(declare-fun condSetEmpty!14980 () Bool)

(assert (=> b!2123224 (= condSetEmpty!14980 (= (_2!13603 (h!29126 (minValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795115))))))))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14980 () Bool)

(assert (=> setIsEmpty!14980 setRes!14980))

(declare-fun setNonEmpty!14980 () Bool)

(assert (=> setNonEmpty!14980 (= setRes!14980 true)))

(declare-fun setElem!14980 () Context!2478)

(declare-fun setRest!14980 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14980 (= (_2!13603 (h!29126 (minValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795115))))))))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14980 true) setRest!14980))))

(assert (=> b!2122947 e!1352685))

(assert (= (and b!2123224 condSetEmpty!14980) setIsEmpty!14980))

(assert (= (and b!2123224 (not condSetEmpty!14980)) setNonEmpty!14980))

(assert (= (and b!2122947 ((_ is Cons!23725) (minValue!2718 (v!28253 (underlying!5115 (v!28254 (underlying!5118 (cache!2756 (_3!1932 lt!795115))))))))) b!2123224))

(declare-fun setNonEmpty!14981 () Bool)

(declare-fun tp!650345 () Bool)

(declare-fun setRes!14981 () Bool)

(declare-fun e!1352686 () Bool)

(declare-fun setElem!14981 () Context!2478)

(assert (=> setNonEmpty!14981 (= setRes!14981 (and tp!650345 (inv!31318 setElem!14981) e!1352686))))

(declare-fun setRest!14981 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14981 (= (_1!13608 (_1!13609 (h!29129 (zeroValue!2720 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14981 true) setRest!14981))))

(declare-fun b!2123225 () Bool)

(declare-fun e!1352687 () Bool)

(declare-fun tp!650344 () Bool)

(assert (=> b!2123225 (= e!1352687 (and setRes!14981 tp!650344))))

(declare-fun condSetEmpty!14981 () Bool)

(assert (=> b!2123225 (= condSetEmpty!14981 (= (_1!13608 (_1!13609 (h!29129 (zeroValue!2720 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))))))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun b!2123226 () Bool)

(declare-fun tp!650343 () Bool)

(assert (=> b!2123226 (= e!1352686 tp!650343)))

(assert (=> b!2122912 (= tp!650174 e!1352687)))

(declare-fun setIsEmpty!14981 () Bool)

(assert (=> setIsEmpty!14981 setRes!14981))

(assert (= (and b!2123225 condSetEmpty!14981) setIsEmpty!14981))

(assert (= (and b!2123225 (not condSetEmpty!14981)) setNonEmpty!14981))

(assert (= setNonEmpty!14981 b!2123226))

(assert (= (and b!2122912 ((_ is Cons!23728) (zeroValue!2720 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130)))))))) b!2123225))

(declare-fun m!2576207 () Bool)

(assert (=> setNonEmpty!14981 m!2576207))

(declare-fun setNonEmpty!14982 () Bool)

(declare-fun setRes!14982 () Bool)

(declare-fun tp!650348 () Bool)

(declare-fun setElem!14982 () Context!2478)

(declare-fun e!1352688 () Bool)

(assert (=> setNonEmpty!14982 (= setRes!14982 (and tp!650348 (inv!31318 setElem!14982) e!1352688))))

(declare-fun setRest!14982 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14982 (= (_1!13608 (_1!13609 (h!29129 (minValue!2720 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14982 true) setRest!14982))))

(declare-fun b!2123227 () Bool)

(declare-fun e!1352689 () Bool)

(declare-fun tp!650347 () Bool)

(assert (=> b!2123227 (= e!1352689 (and setRes!14982 tp!650347))))

(declare-fun condSetEmpty!14982 () Bool)

(assert (=> b!2123227 (= condSetEmpty!14982 (= (_1!13608 (_1!13609 (h!29129 (minValue!2720 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130))))))))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun b!2123228 () Bool)

(declare-fun tp!650346 () Bool)

(assert (=> b!2123228 (= e!1352688 tp!650346)))

(assert (=> b!2122912 (= tp!650187 e!1352689)))

(declare-fun setIsEmpty!14982 () Bool)

(assert (=> setIsEmpty!14982 setRes!14982))

(assert (= (and b!2123227 condSetEmpty!14982) setIsEmpty!14982))

(assert (= (and b!2123227 (not condSetEmpty!14982)) setNonEmpty!14982))

(assert (= setNonEmpty!14982 b!2123228))

(assert (= (and b!2122912 ((_ is Cons!23728) (minValue!2720 (v!28257 (underlying!5119 (v!28258 (underlying!5120 (cache!2757 cacheFurthestNullable!130)))))))) b!2123227))

(declare-fun m!2576209 () Bool)

(assert (=> setNonEmpty!14982 m!2576209))

(declare-fun tp!650350 () Bool)

(declare-fun e!1352690 () Bool)

(declare-fun tp!650349 () Bool)

(declare-fun b!2123229 () Bool)

(assert (=> b!2123229 (= e!1352690 (and (inv!31319 (left!18350 (c!339791 input!5507))) tp!650349 (inv!31319 (right!18680 (c!339791 input!5507))) tp!650350))))

(declare-fun b!2123231 () Bool)

(declare-fun e!1352691 () Bool)

(declare-fun tp!650351 () Bool)

(assert (=> b!2123231 (= e!1352691 tp!650351)))

(declare-fun b!2123230 () Bool)

(assert (=> b!2123230 (= e!1352690 (and (inv!31325 (xs!10749 (c!339791 input!5507))) e!1352691))))

(assert (=> b!2122910 (= tp!650169 (and (inv!31319 (c!339791 input!5507)) e!1352690))))

(assert (= (and b!2122910 ((_ is Node!7807) (c!339791 input!5507))) b!2123229))

(assert (= b!2123230 b!2123231))

(assert (= (and b!2122910 ((_ is Leaf!11409) (c!339791 input!5507))) b!2123230))

(declare-fun m!2576211 () Bool)

(assert (=> b!2123229 m!2576211))

(declare-fun m!2576213 () Bool)

(assert (=> b!2123229 m!2576213))

(declare-fun m!2576215 () Bool)

(assert (=> b!2123230 m!2576215))

(assert (=> b!2122910 m!2575975))

(declare-fun b!2123236 () Bool)

(declare-fun e!1352694 () Bool)

(declare-fun tp!650356 () Bool)

(declare-fun tp!650357 () Bool)

(assert (=> b!2123236 (= e!1352694 (and tp!650356 tp!650357))))

(assert (=> b!2122894 (= tp!650180 e!1352694)))

(assert (= (and b!2122894 ((_ is Cons!23723) (exprs!1739 setElem!14925))) b!2123236))

(declare-fun setRes!14983 () Bool)

(declare-fun e!1352696 () Bool)

(declare-fun tp!650359 () Bool)

(declare-fun e!1352697 () Bool)

(declare-fun b!2123237 () Bool)

(assert (=> b!2123237 (= e!1352697 (and (inv!31318 (_1!13604 (_1!13605 (h!29125 mapDefault!11960)))) e!1352696 tp_is_empty!9491 setRes!14983 tp!650359))))

(declare-fun condSetEmpty!14983 () Bool)

(assert (=> b!2123237 (= condSetEmpty!14983 (= (_2!13605 (h!29125 mapDefault!11960)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setElem!14983 () Context!2478)

(declare-fun setNonEmpty!14983 () Bool)

(declare-fun e!1352695 () Bool)

(declare-fun tp!650358 () Bool)

(assert (=> setNonEmpty!14983 (= setRes!14983 (and tp!650358 (inv!31318 setElem!14983) e!1352695))))

(declare-fun setRest!14983 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14983 (= (_2!13605 (h!29125 mapDefault!11960)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14983 true) setRest!14983))))

(declare-fun b!2123238 () Bool)

(declare-fun tp!650360 () Bool)

(assert (=> b!2123238 (= e!1352695 tp!650360)))

(assert (=> b!2122893 (= tp!650173 e!1352697)))

(declare-fun setIsEmpty!14983 () Bool)

(assert (=> setIsEmpty!14983 setRes!14983))

(declare-fun b!2123239 () Bool)

(declare-fun tp!650361 () Bool)

(assert (=> b!2123239 (= e!1352696 tp!650361)))

(assert (= b!2123237 b!2123239))

(assert (= (and b!2123237 condSetEmpty!14983) setIsEmpty!14983))

(assert (= (and b!2123237 (not condSetEmpty!14983)) setNonEmpty!14983))

(assert (= setNonEmpty!14983 b!2123238))

(assert (= (and b!2122893 ((_ is Cons!23724) mapDefault!11960)) b!2123237))

(declare-fun m!2576217 () Bool)

(assert (=> b!2123237 m!2576217))

(declare-fun m!2576219 () Bool)

(assert (=> setNonEmpty!14983 m!2576219))

(declare-fun setRes!14984 () Bool)

(declare-fun tp!650364 () Bool)

(declare-fun setElem!14984 () Context!2478)

(declare-fun setNonEmpty!14984 () Bool)

(declare-fun e!1352698 () Bool)

(assert (=> setNonEmpty!14984 (= setRes!14984 (and tp!650364 (inv!31318 setElem!14984) e!1352698))))

(declare-fun setRest!14984 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14984 (= (_1!13608 (_1!13609 (h!29129 mapDefault!11959))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14984 true) setRest!14984))))

(declare-fun b!2123240 () Bool)

(declare-fun e!1352699 () Bool)

(declare-fun tp!650363 () Bool)

(assert (=> b!2123240 (= e!1352699 (and setRes!14984 tp!650363))))

(declare-fun condSetEmpty!14984 () Bool)

(assert (=> b!2123240 (= condSetEmpty!14984 (= (_1!13608 (_1!13609 (h!29129 mapDefault!11959))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun b!2123241 () Bool)

(declare-fun tp!650362 () Bool)

(assert (=> b!2123241 (= e!1352698 tp!650362)))

(assert (=> b!2122898 (= tp!650170 e!1352699)))

(declare-fun setIsEmpty!14984 () Bool)

(assert (=> setIsEmpty!14984 setRes!14984))

(assert (= (and b!2123240 condSetEmpty!14984) setIsEmpty!14984))

(assert (= (and b!2123240 (not condSetEmpty!14984)) setNonEmpty!14984))

(assert (= setNonEmpty!14984 b!2123241))

(assert (= (and b!2122898 ((_ is Cons!23728) mapDefault!11959)) b!2123240))

(declare-fun m!2576221 () Bool)

(assert (=> setNonEmpty!14984 m!2576221))

(declare-fun mapNonEmpty!11983 () Bool)

(declare-fun mapRes!11983 () Bool)

(declare-fun e!1352705 () Bool)

(assert (=> mapNonEmpty!11983 (= mapRes!11983 e!1352705)))

(declare-fun mapKey!11983 () (_ BitVec 32))

(declare-fun mapValue!11983 () List!23808)

(declare-fun mapRest!11983 () (Array (_ BitVec 32) List!23808))

(assert (=> mapNonEmpty!11983 (= mapRest!11966 (store mapRest!11983 mapKey!11983 mapValue!11983))))

(declare-fun b!2123248 () Bool)

(declare-fun e!1352704 () Bool)

(declare-fun setRes!14990 () Bool)

(assert (=> b!2123248 (= e!1352704 setRes!14990)))

(declare-fun condSetEmpty!14990 () Bool)

(declare-fun mapDefault!11983 () List!23808)

(assert (=> b!2123248 (= condSetEmpty!14990 (= (_2!13605 (h!29125 mapDefault!11983)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14989 () Bool)

(declare-fun setRes!14989 () Bool)

(assert (=> setIsEmpty!14989 setRes!14989))

(declare-fun setNonEmpty!14989 () Bool)

(assert (=> setNonEmpty!14989 (= setRes!14990 true)))

(declare-fun setElem!14989 () Context!2478)

(declare-fun setRest!14990 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14989 (= (_2!13605 (h!29125 mapDefault!11983)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14989 true) setRest!14990))))

(declare-fun mapIsEmpty!11983 () Bool)

(assert (=> mapIsEmpty!11983 mapRes!11983))

(declare-fun condMapEmpty!11983 () Bool)

(assert (=> mapNonEmpty!11965 (= condMapEmpty!11983 (= mapRest!11966 ((as const (Array (_ BitVec 32) List!23808)) mapDefault!11983)))))

(assert (=> mapNonEmpty!11965 (and e!1352704 mapRes!11983)))

(declare-fun b!2123249 () Bool)

(assert (=> b!2123249 (= e!1352705 setRes!14989)))

(declare-fun condSetEmpty!14989 () Bool)

(assert (=> b!2123249 (= condSetEmpty!14989 (= (_2!13605 (h!29125 mapValue!11983)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setNonEmpty!14990 () Bool)

(assert (=> setNonEmpty!14990 (= setRes!14989 true)))

(declare-fun setElem!14990 () Context!2478)

(declare-fun setRest!14989 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14990 (= (_2!13605 (h!29125 mapValue!11983)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14990 true) setRest!14989))))

(declare-fun setIsEmpty!14990 () Bool)

(assert (=> setIsEmpty!14990 setRes!14990))

(assert (= (and mapNonEmpty!11965 condMapEmpty!11983) mapIsEmpty!11983))

(assert (= (and mapNonEmpty!11965 (not condMapEmpty!11983)) mapNonEmpty!11983))

(assert (= (and b!2123249 condSetEmpty!14989) setIsEmpty!14989))

(assert (= (and b!2123249 (not condSetEmpty!14989)) setNonEmpty!14990))

(assert (= (and mapNonEmpty!11983 ((_ is Cons!23724) mapValue!11983)) b!2123249))

(assert (= (and b!2123248 condSetEmpty!14990) setIsEmpty!14990))

(assert (= (and b!2123248 (not condSetEmpty!14990)) setNonEmpty!14989))

(assert (= (and mapNonEmpty!11965 ((_ is Cons!23724) mapDefault!11983)) b!2123248))

(declare-fun m!2576223 () Bool)

(assert (=> mapNonEmpty!11983 m!2576223))

(declare-fun b!2123250 () Bool)

(declare-fun e!1352706 () Bool)

(declare-fun setRes!14991 () Bool)

(assert (=> b!2123250 (= e!1352706 setRes!14991)))

(declare-fun condSetEmpty!14991 () Bool)

(assert (=> b!2123250 (= condSetEmpty!14991 (= (_2!13605 (h!29125 mapValue!11966)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14991 () Bool)

(assert (=> setIsEmpty!14991 setRes!14991))

(declare-fun setNonEmpty!14991 () Bool)

(assert (=> setNonEmpty!14991 (= setRes!14991 true)))

(declare-fun setElem!14991 () Context!2478)

(declare-fun setRest!14991 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14991 (= (_2!13605 (h!29125 mapValue!11966)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14991 true) setRest!14991))))

(assert (=> mapNonEmpty!11965 e!1352706))

(assert (= (and b!2123250 condSetEmpty!14991) setIsEmpty!14991))

(assert (= (and b!2123250 (not condSetEmpty!14991)) setNonEmpty!14991))

(assert (= (and mapNonEmpty!11965 ((_ is Cons!23724) mapValue!11966)) b!2123250))

(declare-fun tp!650365 () Bool)

(declare-fun e!1352707 () Bool)

(declare-fun tp!650366 () Bool)

(declare-fun b!2123251 () Bool)

(assert (=> b!2123251 (= e!1352707 (and (inv!31319 (left!18350 (c!339791 totalInput!886))) tp!650365 (inv!31319 (right!18680 (c!339791 totalInput!886))) tp!650366))))

(declare-fun b!2123253 () Bool)

(declare-fun e!1352708 () Bool)

(declare-fun tp!650367 () Bool)

(assert (=> b!2123253 (= e!1352708 tp!650367)))

(declare-fun b!2123252 () Bool)

(assert (=> b!2123252 (= e!1352707 (and (inv!31325 (xs!10749 (c!339791 totalInput!886))) e!1352708))))

(assert (=> b!2122895 (= tp!650188 (and (inv!31319 (c!339791 totalInput!886)) e!1352707))))

(assert (= (and b!2122895 ((_ is Node!7807) (c!339791 totalInput!886))) b!2123251))

(assert (= b!2123252 b!2123253))

(assert (= (and b!2122895 ((_ is Leaf!11409) (c!339791 totalInput!886))) b!2123252))

(declare-fun m!2576225 () Bool)

(assert (=> b!2123251 m!2576225))

(declare-fun m!2576227 () Bool)

(assert (=> b!2123251 m!2576227))

(declare-fun m!2576229 () Bool)

(assert (=> b!2123252 m!2576229))

(assert (=> b!2122895 m!2575973))

(declare-fun setNonEmpty!14994 () Bool)

(declare-fun setRes!14994 () Bool)

(assert (=> setNonEmpty!14994 (= setRes!14994 true)))

(declare-fun setElem!14994 () Context!2478)

(declare-fun setRest!14994 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14994 (= (z!5731 (h!29128 (t!196329 (_2!13606 (_1!13607 lt!795115))))) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14994 true) setRest!14994))))

(declare-fun b!2123261 () Bool)

(declare-fun e!1352714 () Bool)

(assert (=> b!2123261 (= e!1352714 setRes!14994)))

(declare-fun condSetEmpty!14994 () Bool)

(assert (=> b!2123261 (= condSetEmpty!14994 (= (z!5731 (h!29128 (t!196329 (_2!13606 (_1!13607 lt!795115))))) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14994 () Bool)

(assert (=> setIsEmpty!14994 setRes!14994))

(declare-fun e!1352713 () Bool)

(assert (=> b!2122949 e!1352713))

(declare-fun b!2123260 () Bool)

(assert (=> b!2123260 (= e!1352713 e!1352714)))

(assert (= (and b!2123261 condSetEmpty!14994) setIsEmpty!14994))

(assert (= (and b!2123261 (not condSetEmpty!14994)) setNonEmpty!14994))

(assert (= b!2123260 b!2123261))

(assert (= (and b!2122949 ((_ is Cons!23727) (t!196329 (_2!13606 (_1!13607 lt!795115))))) b!2123260))

(declare-fun b!2123262 () Bool)

(declare-fun e!1352716 () Bool)

(declare-fun tp!650372 () Bool)

(assert (=> b!2123262 (= e!1352716 tp!650372)))

(declare-fun setNonEmpty!14995 () Bool)

(declare-fun setElem!14995 () Context!2478)

(declare-fun setRes!14995 () Bool)

(declare-fun e!1352715 () Bool)

(declare-fun tp!650370 () Bool)

(assert (=> setNonEmpty!14995 (= setRes!14995 (and tp!650370 (inv!31318 setElem!14995) e!1352715))))

(declare-fun setRest!14995 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14995 (= (_2!13603 (h!29126 mapDefault!11958)) ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14995 true) setRest!14995))))

(declare-fun e!1352717 () Bool)

(assert (=> b!2122897 (= tp!650176 e!1352717)))

(declare-fun b!2123263 () Bool)

(declare-fun tp!650368 () Bool)

(assert (=> b!2123263 (= e!1352715 tp!650368)))

(declare-fun b!2123264 () Bool)

(declare-fun tp!650371 () Bool)

(declare-fun tp!650369 () Bool)

(assert (=> b!2123264 (= e!1352717 (and tp!650369 (inv!31318 (_2!13602 (_1!13603 (h!29126 mapDefault!11958)))) e!1352716 tp_is_empty!9491 setRes!14995 tp!650371))))

(declare-fun condSetEmpty!14995 () Bool)

(assert (=> b!2123264 (= condSetEmpty!14995 (= (_2!13603 (h!29126 mapDefault!11958)) ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setIsEmpty!14995 () Bool)

(assert (=> setIsEmpty!14995 setRes!14995))

(assert (= b!2123264 b!2123262))

(assert (= (and b!2123264 condSetEmpty!14995) setIsEmpty!14995))

(assert (= (and b!2123264 (not condSetEmpty!14995)) setNonEmpty!14995))

(assert (= setNonEmpty!14995 b!2123263))

(assert (= (and b!2122897 ((_ is Cons!23725) mapDefault!11958)) b!2123264))

(declare-fun m!2576231 () Bool)

(assert (=> setNonEmpty!14995 m!2576231))

(declare-fun m!2576233 () Bool)

(assert (=> b!2123264 m!2576233))

(declare-fun condSetEmpty!14998 () Bool)

(assert (=> setNonEmpty!14928 (= condSetEmpty!14998 (= setRest!14928 ((as const (Array Context!2478 Bool)) false)))))

(declare-fun setRes!14998 () Bool)

(assert (=> setNonEmpty!14928 setRes!14998))

(declare-fun setIsEmpty!14998 () Bool)

(assert (=> setIsEmpty!14998 setRes!14998))

(declare-fun setNonEmpty!14998 () Bool)

(assert (=> setNonEmpty!14998 (= setRes!14998 true)))

(declare-fun setElem!14998 () Context!2478)

(declare-fun setRest!14998 () (InoxSet Context!2478))

(assert (=> setNonEmpty!14998 (= setRest!14928 ((_ map or) (store ((as const (Array Context!2478 Bool)) false) setElem!14998 true) setRest!14998))))

(assert (= (and setNonEmpty!14928 condSetEmpty!14998) setIsEmpty!14998))

(assert (= (and setNonEmpty!14928 (not condSetEmpty!14998)) setNonEmpty!14998))

(declare-fun b_lambda!70477 () Bool)

(assert (= b_lambda!70473 (or b!2122906 b_lambda!70477)))

(declare-fun bs!442801 () Bool)

(declare-fun d!643580 () Bool)

(assert (= bs!442801 (and d!643580 b!2122906)))

(assert (=> bs!442801 (= (dynLambda!11338 lambda!78618 (h!29128 (_2!13606 (_1!13607 lt!795115)))) (= (totalInput!2915 (h!29128 (_2!13606 (_1!13607 lt!795115)))) totalInput!886))))

(assert (=> b!2123014 d!643580))

(declare-fun b_lambda!70479 () Bool)

(assert (= b_lambda!70475 (or b!2122881 b_lambda!70479)))

(declare-fun bs!442802 () Bool)

(declare-fun d!643582 () Bool)

(assert (= bs!442802 (and d!643582 b!2122881)))

(assert (=> bs!442802 (= (dynLambda!11338 lambda!78617 (h!29128 (_2!13606 (_1!13607 lt!795115)))) (= (res!919293 (h!29128 (_2!13606 (_1!13607 lt!795115)))) (_1!13606 (_1!13607 lt!795115))))))

(assert (=> b!2123031 d!643582))

(check-sat (not b!2123111) (not b!2123262) (not setNonEmpty!14975) (not b!2123027) (not d!643522) (not setNonEmpty!14982) (not b!2123163) (not b!2123187) (not b!2123002) (not b!2123220) b_and!171269 (not b!2123186) (not d!643562) (not d!643574) (not setNonEmpty!14942) (not b!2123140) (not b!2122988) (not b!2123241) (not b!2123137) (not b!2123070) (not setNonEmpty!14946) (not setNonEmpty!14966) (not b!2122973) (not b_next!62391) (not b!2123219) tp_is_empty!9491 (not b!2123099) (not b!2123083) (not b!2123192) (not b!2123121) (not setNonEmpty!14984) (not b!2123015) (not b!2123009) (not b!2123218) (not setNonEmpty!14994) (not setNonEmpty!14991) (not b!2123249) (not b!2122983) (not b!2123114) (not b!2123197) (not b!2123063) (not b!2123231) (not setNonEmpty!14995) (not setNonEmpty!14933) (not b!2123069) (not b!2123139) (not setNonEmpty!14976) (not b!2123253) (not b_next!62399) (not b_lambda!70479) (not b!2123006) (not d!643578) (not mapNonEmpty!11983) (not bm!128693) (not d!643520) (not b!2122985) (not b!2123127) (not b!2123238) (not b!2123076) (not setNonEmpty!14951) (not b!2123162) (not setNonEmpty!14945) (not b!2123155) (not setNonEmpty!14963) (not d!643568) (not setNonEmpty!14978) (not b!2123215) (not b!2123003) (not b!2123032) (not b!2122967) (not setNonEmpty!14938) (not setNonEmpty!14929) (not b!2123082) (not d!643556) (not b!2123230) (not b!2123181) (not mapNonEmpty!11968) (not b!2123222) (not b!2123225) (not bm!128692) (not b!2123248) (not setNonEmpty!14960) (not b!2123263) (not setNonEmpty!14955) b_and!171265 (not b!2123109) (not b_next!62389) (not b!2123251) (not b!2123224) (not mapNonEmpty!11971) (not setNonEmpty!14989) (not b!2123185) (not b!2123228) (not d!643558) (not setNonEmpty!14961) (not b!2122986) (not b!2123240) (not setNonEmpty!14979) (not b!2123113) (not setNonEmpty!14977) (not b!2123081) b_and!171273 (not d!643534) (not mapNonEmpty!11980) (not d!643576) (not setNonEmpty!14998) (not b!2123236) (not b!2123029) (not b!2123221) (not b!2123226) (not b!2123182) (not setNonEmpty!14969) (not b!2123136) (not b!2123152) (not b!2123223) (not b!2123007) (not b!2123216) b_and!171267 (not b!2123184) (not d!643570) (not b!2123183) (not b!2123153) (not setNonEmpty!14952) (not setNonEmpty!14981) (not b!2123005) (not b_next!62397) (not b_next!62395) (not b!2123180) (not b!2122970) (not setNonEmpty!14939) (not b!2123179) (not b!2123260) (not b!2123059) (not b!2123004) (not setNonEmpty!14983) (not b!2123264) (not setNonEmpty!14932) (not b!2123074) (not b!2123227) (not b!2122895) (not b!2123112) (not bm!128694) (not d!643524) (not b!2123154) b_and!171271 (not b!2123178) (not b!2123217) (not b!2122910) (not b!2123110) (not b!2123212) (not b!2122903) (not d!643526) (not b_next!62393) (not mapNonEmpty!11974) (not b!2123098) (not setNonEmpty!14990) (not b!2123138) (not b!2123122) (not b_lambda!70477) (not b!2123237) (not b!2123001) (not mapNonEmpty!11977) (not b!2123213) (not b!2123061) (not setNonEmpty!14980) (not b!2123239) (not b!2122976) (not b!2123067) (not b!2123252) (not b!2123229) (not mapNonEmpty!11967) (not setNonEmpty!14962) (not setNonEmpty!14974) (not b!2123250) (not d!643560) b_and!171275 (not b!2123214) (not b!2123066) (not d!643538) (not b!2123141) (not b!2123100))
(check-sat b_and!171269 (not b_next!62391) (not b_next!62399) b_and!171265 (not b_next!62389) b_and!171273 b_and!171267 (not b_next!62397) (not b_next!62395) b_and!171271 (not b_next!62393) b_and!171275)
