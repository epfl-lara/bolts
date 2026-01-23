; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208128 () Bool)

(assert start!208128)

(declare-fun b!2145874 () Bool)

(declare-fun b_free!63293 () Bool)

(declare-fun b_next!63997 () Bool)

(assert (=> b!2145874 (= b_free!63293 (not b_next!63997))))

(declare-fun tp!665372 () Bool)

(declare-fun b_and!172873 () Bool)

(assert (=> b!2145874 (= tp!665372 b_and!172873)))

(declare-fun b!2145867 () Bool)

(declare-fun b_free!63295 () Bool)

(declare-fun b_next!63999 () Bool)

(assert (=> b!2145867 (= b_free!63295 (not b_next!63999))))

(declare-fun tp!665383 () Bool)

(declare-fun b_and!172875 () Bool)

(assert (=> b!2145867 (= tp!665383 b_and!172875)))

(declare-fun b!2145869 () Bool)

(declare-fun b_free!63297 () Bool)

(declare-fun b_next!64001 () Bool)

(assert (=> b!2145869 (= b_free!63297 (not b_next!64001))))

(declare-fun tp!665377 () Bool)

(declare-fun b_and!172877 () Bool)

(assert (=> b!2145869 (= tp!665377 b_and!172877)))

(declare-fun b!2145879 () Bool)

(declare-fun b_free!63299 () Bool)

(declare-fun b_next!64003 () Bool)

(assert (=> b!2145879 (= b_free!63299 (not b_next!64003))))

(declare-fun tp!665367 () Bool)

(declare-fun b_and!172879 () Bool)

(assert (=> b!2145879 (= tp!665367 b_and!172879)))

(declare-fun b!2145885 () Bool)

(declare-fun b_free!63301 () Bool)

(declare-fun b_next!64005 () Bool)

(assert (=> b!2145885 (= b_free!63301 (not b_next!64005))))

(declare-fun tp!665374 () Bool)

(declare-fun b_and!172881 () Bool)

(assert (=> b!2145885 (= tp!665374 b_and!172881)))

(declare-fun b!2145858 () Bool)

(declare-fun b_free!63303 () Bool)

(declare-fun b_next!64007 () Bool)

(assert (=> b!2145858 (= b_free!63303 (not b_next!64007))))

(declare-fun tp!665391 () Bool)

(declare-fun b_and!172883 () Bool)

(assert (=> b!2145858 (= tp!665391 b_and!172883)))

(declare-fun b!2145886 () Bool)

(assert (=> b!2145886 true))

(declare-fun bs!445363 () Bool)

(declare-fun b!2145896 () Bool)

(assert (= bs!445363 (and b!2145896 b!2145886)))

(declare-fun lambda!80547 () Int)

(declare-fun lambda!80546 () Int)

(assert (=> bs!445363 (not (= lambda!80547 lambda!80546))))

(assert (=> b!2145896 true))

(declare-fun bs!445364 () Bool)

(declare-fun b!2145872 () Bool)

(assert (= bs!445364 (and b!2145872 b!2145886)))

(declare-fun lt!798840 () Int)

(declare-fun lt!798849 () Int)

(declare-fun lambda!80548 () Int)

(assert (=> bs!445364 (= (= lt!798849 lt!798840) (= lambda!80548 lambda!80546))))

(declare-fun bs!445365 () Bool)

(assert (= bs!445365 (and b!2145872 b!2145896)))

(assert (=> bs!445365 (not (= lambda!80548 lambda!80547))))

(assert (=> b!2145872 true))

(declare-fun bs!445366 () Bool)

(declare-fun b!2145898 () Bool)

(assert (= bs!445366 (and b!2145898 b!2145886)))

(declare-datatypes ((C!11752 0))(
  ( (C!11753 (val!6862 Int)) )
))
(declare-datatypes ((Regex!5803 0))(
  ( (ElementMatch!5803 (c!340743 C!11752)) (Concat!10105 (regOne!12118 Regex!5803) (regTwo!12118 Regex!5803)) (EmptyExpr!5803) (Star!5803 (reg!6132 Regex!5803)) (EmptyLang!5803) (Union!5803 (regOne!12119 Regex!5803) (regTwo!12119 Regex!5803)) )
))
(declare-datatypes ((List!24559 0))(
  ( (Nil!24475) (Cons!24475 (h!29876 Regex!5803) (t!197089 List!24559)) )
))
(declare-datatypes ((Context!2746 0))(
  ( (Context!2747 (exprs!1873 List!24559)) )
))
(declare-datatypes ((tuple3!3532 0))(
  ( (tuple3!3533 (_1!14409 Regex!5803) (_2!14409 Context!2746) (_3!2236 C!11752)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!24346 0))(
  ( (tuple2!24347 (_1!14410 tuple3!3532) (_2!14410 (InoxSet Context!2746))) )
))
(declare-datatypes ((List!24560 0))(
  ( (Nil!24476) (Cons!24476 (h!29877 tuple2!24346) (t!197090 List!24560)) )
))
(declare-datatypes ((List!24561 0))(
  ( (Nil!24477) (Cons!24477 (h!29878 C!11752) (t!197091 List!24561)) )
))
(declare-datatypes ((IArray!15883 0))(
  ( (IArray!15884 (innerList!7999 List!24561)) )
))
(declare-datatypes ((Hashable!2740 0))(
  ( (HashableExt!2739 (__x!16654 Int)) )
))
(declare-datatypes ((Conc!7939 0))(
  ( (Node!7939 (left!18805 Conc!7939) (right!19135 Conc!7939) (csize!16108 Int) (cheight!8150 Int)) (Leaf!11608 (xs!10881 IArray!15883) (csize!16109 Int)) (Empty!7939) )
))
(declare-datatypes ((BalanceConc!15640 0))(
  ( (BalanceConc!15641 (c!340744 Conc!7939)) )
))
(declare-datatypes ((StackFrame!272 0))(
  ( (StackFrame!273 (z!5905 (InoxSet Context!2746)) (from!2769 Int) (lastNullablePos!456 Int) (res!925925 Int) (totalInput!3174 BalanceConc!15640)) )
))
(declare-datatypes ((List!24562 0))(
  ( (Nil!24478) (Cons!24478 (h!29879 StackFrame!272) (t!197092 List!24562)) )
))
(declare-datatypes ((tuple2!24348 0))(
  ( (tuple2!24349 (_1!14411 Int) (_2!14411 List!24562)) )
))
(declare-datatypes ((tuple2!24350 0))(
  ( (tuple2!24351 (_1!14412 Context!2746) (_2!14412 C!11752)) )
))
(declare-datatypes ((tuple2!24352 0))(
  ( (tuple2!24353 (_1!14413 tuple2!24350) (_2!14413 (InoxSet Context!2746))) )
))
(declare-datatypes ((List!24563 0))(
  ( (Nil!24479) (Cons!24479 (h!29880 tuple2!24352) (t!197093 List!24563)) )
))
(declare-datatypes ((array!9513 0))(
  ( (array!9514 (arr!4250 (Array (_ BitVec 32) (_ BitVec 64))) (size!19158 (_ BitVec 32))) )
))
(declare-datatypes ((array!9515 0))(
  ( (array!9516 (arr!4251 (Array (_ BitVec 32) List!24563)) (size!19159 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5652 0))(
  ( (LongMapFixedSize!5653 (defaultEntry!3191 Int) (mask!7043 (_ BitVec 32)) (extraKeys!3074 (_ BitVec 32)) (zeroValue!3084 List!24563) (minValue!3084 List!24563) (_size!5703 (_ BitVec 32)) (_keys!3123 array!9513) (_values!3106 array!9515) (_vacant!2887 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11129 0))(
  ( (Cell!11130 (v!29069 LongMapFixedSize!5652)) )
))
(declare-datatypes ((MutLongMap!2826 0))(
  ( (LongMap!2826 (underlying!5847 Cell!11129)) (MutLongMapExt!2825 (__x!16655 Int)) )
))
(declare-datatypes ((Cell!11131 0))(
  ( (Cell!11132 (v!29070 MutLongMap!2826)) )
))
(declare-datatypes ((Hashable!2741 0))(
  ( (HashableExt!2740 (__x!16656 Int)) )
))
(declare-datatypes ((MutableMap!2740 0))(
  ( (MutableMapExt!2739 (__x!16657 Int)) (HashMap!2740 (underlying!5848 Cell!11131) (hashF!4663 Hashable!2741) (_size!5704 (_ BitVec 32)) (defaultValue!2902 Int)) )
))
(declare-datatypes ((CacheUp!1884 0))(
  ( (CacheUp!1885 (cache!3121 MutableMap!2740)) )
))
(declare-datatypes ((array!9517 0))(
  ( (array!9518 (arr!4252 (Array (_ BitVec 32) List!24560)) (size!19160 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5654 0))(
  ( (LongMapFixedSize!5655 (defaultEntry!3192 Int) (mask!7044 (_ BitVec 32)) (extraKeys!3075 (_ BitVec 32)) (zeroValue!3085 List!24560) (minValue!3085 List!24560) (_size!5705 (_ BitVec 32)) (_keys!3124 array!9513) (_values!3107 array!9517) (_vacant!2888 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11133 0))(
  ( (Cell!11134 (v!29071 LongMapFixedSize!5654)) )
))
(declare-datatypes ((MutLongMap!2827 0))(
  ( (LongMap!2827 (underlying!5849 Cell!11133)) (MutLongMapExt!2826 (__x!16658 Int)) )
))
(declare-datatypes ((Cell!11135 0))(
  ( (Cell!11136 (v!29072 MutLongMap!2827)) )
))
(declare-datatypes ((MutableMap!2741 0))(
  ( (MutableMapExt!2740 (__x!16659 Int)) (HashMap!2741 (underlying!5850 Cell!11135) (hashF!4664 Hashable!2740) (_size!5706 (_ BitVec 32)) (defaultValue!2903 Int)) )
))
(declare-datatypes ((CacheDown!1878 0))(
  ( (CacheDown!1879 (cache!3122 MutableMap!2741)) )
))
(declare-datatypes ((tuple3!3534 0))(
  ( (tuple3!3535 (_1!14414 tuple2!24348) (_2!14414 CacheUp!1884) (_3!2237 CacheDown!1878)) )
))
(declare-fun lt!798843 () tuple3!3534)

(declare-fun lambda!80549 () Int)

(assert (=> bs!445366 (= (= (_1!14411 (_1!14414 lt!798843)) lt!798840) (= lambda!80549 lambda!80546))))

(declare-fun bs!445367 () Bool)

(assert (= bs!445367 (and b!2145898 b!2145896)))

(assert (=> bs!445367 (not (= lambda!80549 lambda!80547))))

(declare-fun bs!445368 () Bool)

(assert (= bs!445368 (and b!2145898 b!2145872)))

(assert (=> bs!445368 (= (= (_1!14411 (_1!14414 lt!798843)) lt!798849) (= lambda!80549 lambda!80548))))

(declare-fun b!2145941 () Bool)

(declare-fun e!1371559 () Bool)

(declare-fun e!1371558 () Bool)

(declare-fun lt!798855 () MutLongMap!2827)

(get-info :version)

(assert (=> b!2145941 (= e!1371559 (and e!1371558 ((_ is LongMap!2827) lt!798855)))))

(assert (=> b!2145941 (= lt!798855 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798843)))))))

(declare-fun b!2145942 () Bool)

(declare-fun e!1371551 () Bool)

(assert (=> b!2145942 (= e!1371558 e!1371551)))

(declare-fun setIsEmpty!16724 () Bool)

(declare-fun setRes!16724 () Bool)

(assert (=> setIsEmpty!16724 setRes!16724))

(declare-fun b!2145943 () Bool)

(declare-fun e!1371564 () Bool)

(declare-fun e!1371552 () Bool)

(assert (=> b!2145943 (= e!1371564 e!1371552)))

(declare-fun b!2145944 () Bool)

(declare-fun e!1371557 () Bool)

(assert (=> b!2145944 (= e!1371557 e!1371559)))

(declare-fun b!2145945 () Bool)

(declare-fun e!1371556 () Bool)

(declare-fun e!1371549 () Bool)

(assert (=> b!2145945 (= e!1371556 e!1371549)))

(declare-fun b!2145946 () Bool)

(declare-fun e!1371560 () Bool)

(declare-fun mapRes!13428 () Bool)

(assert (=> b!2145946 (= e!1371560 mapRes!13428)))

(declare-fun condMapEmpty!13427 () Bool)

(declare-fun mapDefault!13428 () List!24560)

(assert (=> b!2145946 (= condMapEmpty!13427 (= (arr!4252 (_values!3107 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798843)))))))) ((as const (Array (_ BitVec 32) List!24560)) mapDefault!13428)))))

(declare-fun b!2145947 () Bool)

(declare-fun e!1371563 () Bool)

(declare-fun e!1371562 () Bool)

(declare-fun lt!798854 () MutLongMap!2826)

(assert (=> b!2145947 (= e!1371563 (and e!1371562 ((_ is LongMap!2826) lt!798854)))))

(assert (=> b!2145947 (= lt!798854 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798843)))))))

(declare-fun b!2145948 () Bool)

(declare-fun e!1371550 () Bool)

(declare-fun mapRes!13427 () Bool)

(assert (=> b!2145948 (= e!1371550 mapRes!13427)))

(declare-fun condMapEmpty!13428 () Bool)

(declare-fun mapDefault!13427 () List!24563)

(assert (=> b!2145948 (= condMapEmpty!13428 (= (arr!4251 (_values!3106 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798843)))))))) ((as const (Array (_ BitVec 32) List!24563)) mapDefault!13427)))))

(declare-fun mapIsEmpty!13428 () Bool)

(assert (=> mapIsEmpty!13428 mapRes!13427))

(declare-fun setNonEmpty!16724 () Bool)

(assert (=> setNonEmpty!16724 (= setRes!16724 true)))

(declare-fun setElem!16724 () Context!2746)

(declare-fun setRest!16724 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16724 (= (z!5905 (h!29879 (_2!14411 (_1!14414 lt!798843)))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16724 true) setRest!16724))))

(declare-fun b!2145949 () Bool)

(declare-fun e!1371561 () Bool)

(assert (=> b!2145949 (= e!1371561 e!1371563)))

(declare-fun mapNonEmpty!13427 () Bool)

(assert (=> mapNonEmpty!13427 (= mapRes!13427 true)))

(declare-fun mapValue!13428 () List!24563)

(declare-fun mapRest!13427 () (Array (_ BitVec 32) List!24563))

(declare-fun mapKey!13427 () (_ BitVec 32))

(assert (=> mapNonEmpty!13427 (= (arr!4251 (_values!3106 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798843)))))))) (store mapRest!13427 mapKey!13427 mapValue!13428))))

(declare-fun b!2145950 () Bool)

(declare-fun e!1371554 () Bool)

(assert (=> b!2145950 (= e!1371551 e!1371554)))

(declare-fun b!2145951 () Bool)

(assert (=> b!2145951 (= e!1371552 e!1371550)))

(declare-fun b!2145952 () Bool)

(assert (=> b!2145952 (= e!1371562 e!1371564)))

(declare-fun b!2145953 () Bool)

(declare-fun e!1371553 () Bool)

(assert (=> b!2145953 (= e!1371553 e!1371561)))

(declare-fun e!1371555 () Bool)

(assert (=> b!2145898 (and e!1371556 e!1371553 e!1371555)))

(declare-fun mapIsEmpty!13427 () Bool)

(assert (=> mapIsEmpty!13427 mapRes!13428))

(declare-fun b!2145954 () Bool)

(assert (=> b!2145954 (= e!1371554 e!1371560)))

(declare-fun mapNonEmpty!13428 () Bool)

(assert (=> mapNonEmpty!13428 (= mapRes!13428 true)))

(declare-fun mapValue!13427 () List!24560)

(declare-fun mapRest!13428 () (Array (_ BitVec 32) List!24560))

(declare-fun mapKey!13428 () (_ BitVec 32))

(assert (=> mapNonEmpty!13428 (= (arr!4252 (_values!3107 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798843)))))))) (store mapRest!13428 mapKey!13428 mapValue!13427))))

(declare-fun b!2145955 () Bool)

(assert (=> b!2145955 (= e!1371549 setRes!16724)))

(declare-fun condSetEmpty!16724 () Bool)

(assert (=> b!2145955 (= condSetEmpty!16724 (= (z!5905 (h!29879 (_2!14411 (_1!14414 lt!798843)))) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun b!2145956 () Bool)

(assert (=> b!2145956 (= e!1371555 e!1371557)))

(assert (= (and b!2145955 condSetEmpty!16724) setIsEmpty!16724))

(assert (= (and b!2145955 (not condSetEmpty!16724)) setNonEmpty!16724))

(assert (= b!2145945 b!2145955))

(assert (= (and b!2145898 ((_ is Cons!24478) (_2!14411 (_1!14414 lt!798843)))) b!2145945))

(assert (= (and b!2145948 condMapEmpty!13428) mapIsEmpty!13428))

(assert (= (and b!2145948 (not condMapEmpty!13428)) mapNonEmpty!13427))

(assert (= b!2145951 b!2145948))

(assert (= b!2145943 b!2145951))

(assert (= b!2145952 b!2145943))

(assert (= (and b!2145947 ((_ is LongMap!2826) (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798843)))))) b!2145952))

(assert (= b!2145949 b!2145947))

(assert (= (and b!2145953 ((_ is HashMap!2740) (cache!3121 (_2!14414 lt!798843)))) b!2145949))

(assert (= b!2145898 b!2145953))

(assert (= (and b!2145946 condMapEmpty!13427) mapIsEmpty!13427))

(assert (= (and b!2145946 (not condMapEmpty!13427)) mapNonEmpty!13428))

(assert (= b!2145954 b!2145946))

(assert (= b!2145950 b!2145954))

(assert (= b!2145942 b!2145950))

(assert (= (and b!2145941 ((_ is LongMap!2827) (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798843)))))) b!2145942))

(assert (= b!2145944 b!2145941))

(assert (= (and b!2145956 ((_ is HashMap!2741) (cache!3122 (_3!2237 lt!798843)))) b!2145944))

(assert (= b!2145898 b!2145956))

(declare-fun order!14789 () Int)

(declare-fun order!14791 () Int)

(declare-fun dynLambda!11376 (Int Int) Int)

(declare-fun dynLambda!11377 (Int Int) Int)

(assert (=> b!2145951 (< (dynLambda!11376 order!14789 (defaultEntry!3191 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798843)))))))) (dynLambda!11377 order!14791 lambda!80549))))

(declare-fun order!14793 () Int)

(declare-fun dynLambda!11378 (Int Int) Int)

(assert (=> b!2145949 (< (dynLambda!11378 order!14793 (defaultValue!2902 (cache!3121 (_2!14414 lt!798843)))) (dynLambda!11377 order!14791 lambda!80549))))

(declare-fun order!14795 () Int)

(declare-fun dynLambda!11379 (Int Int) Int)

(assert (=> b!2145954 (< (dynLambda!11379 order!14795 (defaultEntry!3192 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798843)))))))) (dynLambda!11377 order!14791 lambda!80549))))

(declare-fun order!14797 () Int)

(declare-fun dynLambda!11380 (Int Int) Int)

(assert (=> b!2145944 (< (dynLambda!11380 order!14797 (defaultValue!2903 (cache!3122 (_3!2237 lt!798843)))) (dynLambda!11377 order!14791 lambda!80549))))

(declare-fun m!2589575 () Bool)

(assert (=> mapNonEmpty!13427 m!2589575))

(declare-fun m!2589577 () Bool)

(assert (=> mapNonEmpty!13428 m!2589577))

(declare-fun mapNonEmpty!13420 () Bool)

(declare-fun mapRes!13420 () Bool)

(declare-fun tp!665373 () Bool)

(declare-fun tp!665390 () Bool)

(assert (=> mapNonEmpty!13420 (= mapRes!13420 (and tp!665373 tp!665390))))

(declare-fun cacheDown!1098 () CacheDown!1878)

(declare-fun mapRest!13420 () (Array (_ BitVec 32) List!24560))

(declare-fun mapKey!13420 () (_ BitVec 32))

(declare-fun mapValue!13422 () List!24560)

(assert (=> mapNonEmpty!13420 (= (arr!4252 (_values!3107 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098))))))) (store mapRest!13420 mapKey!13420 mapValue!13422))))

(declare-fun b!2145853 () Bool)

(declare-fun e!1371506 () Bool)

(declare-fun e!1371478 () Bool)

(assert (=> b!2145853 (= e!1371506 e!1371478)))

(declare-fun res!925918 () Bool)

(assert (=> b!2145853 (=> (not res!925918) (not e!1371478))))

(declare-fun totalInputSize!296 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun from!1043 () Int)

(declare-fun totalInput!851 () BalanceConc!15640)

(declare-fun z!3839 () (InoxSet Context!2746))

(declare-fun furthestNullablePosition!93 ((InoxSet Context!2746) Int BalanceConc!15640 Int Int) Int)

(assert (=> b!2145853 (= res!925918 (= (_1!14411 (_1!14414 lt!798843)) (furthestNullablePosition!93 z!3839 from!1043 totalInput!851 totalInputSize!296 lastNullablePos!123)))))

(declare-datatypes ((tuple3!3536 0))(
  ( (tuple3!3537 (_1!14415 (InoxSet Context!2746)) (_2!14415 Int) (_3!2238 Int)) )
))
(declare-datatypes ((tuple2!24354 0))(
  ( (tuple2!24355 (_1!14416 tuple3!3536) (_2!14416 Int)) )
))
(declare-datatypes ((List!24564 0))(
  ( (Nil!24480) (Cons!24480 (h!29881 tuple2!24354) (t!197094 List!24564)) )
))
(declare-datatypes ((array!9519 0))(
  ( (array!9520 (arr!4253 (Array (_ BitVec 32) List!24564)) (size!19161 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5656 0))(
  ( (LongMapFixedSize!5657 (defaultEntry!3193 Int) (mask!7045 (_ BitVec 32)) (extraKeys!3076 (_ BitVec 32)) (zeroValue!3086 List!24564) (minValue!3086 List!24564) (_size!5707 (_ BitVec 32)) (_keys!3125 array!9513) (_values!3108 array!9519) (_vacant!2889 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11137 0))(
  ( (Cell!11138 (v!29073 LongMapFixedSize!5656)) )
))
(declare-datatypes ((MutLongMap!2828 0))(
  ( (LongMap!2828 (underlying!5851 Cell!11137)) (MutLongMapExt!2827 (__x!16660 Int)) )
))
(declare-datatypes ((Cell!11139 0))(
  ( (Cell!11140 (v!29074 MutLongMap!2828)) )
))
(declare-datatypes ((Hashable!2742 0))(
  ( (HashableExt!2741 (__x!16661 Int)) )
))
(declare-datatypes ((MutableMap!2742 0))(
  ( (MutableMapExt!2741 (__x!16662 Int)) (HashMap!2742 (underlying!5852 Cell!11139) (hashF!4665 Hashable!2742) (_size!5708 (_ BitVec 32)) (defaultValue!2904 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!842 0))(
  ( (CacheFurthestNullable!843 (cache!3123 MutableMap!2742) (totalInput!3175 BalanceConc!15640)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!842)

(declare-fun lt!798845 () List!24562)

(declare-fun lt!798842 () Int)

(declare-datatypes ((tuple3!3538 0))(
  ( (tuple3!3539 (_1!14417 (InoxSet Context!2746)) (_2!14417 CacheUp!1884) (_3!2239 CacheDown!1878)) )
))
(declare-fun lt!798846 () tuple3!3538)

(declare-fun furthestNullablePositionStackMem!17 ((InoxSet Context!2746) Int BalanceConc!15640 Int Int List!24562 CacheUp!1884 CacheDown!1878 CacheFurthestNullable!842) tuple3!3534)

(assert (=> b!2145853 (= lt!798843 (furthestNullablePositionStackMem!17 (_1!14417 lt!798846) (+ 1 from!1043) totalInput!851 totalInputSize!296 lt!798842 lt!798845 (_2!14417 lt!798846) (_3!2239 lt!798846) cacheFurthestNullable!114))))

(declare-fun b!2145854 () Bool)

(declare-fun res!925919 () Bool)

(assert (=> b!2145854 (=> res!925919 e!1371506)))

(declare-fun forall!4995 (List!24562 Int) Bool)

(assert (=> b!2145854 (= res!925919 (not (forall!4995 lt!798845 lambda!80547)))))

(declare-fun b!2145855 () Bool)

(declare-fun e!1371498 () Bool)

(declare-fun e!1371494 () Bool)

(assert (=> b!2145855 (= e!1371498 e!1371494)))

(declare-fun res!925909 () Bool)

(assert (=> b!2145855 (=> (not res!925909) (not e!1371494))))

(declare-fun lt!798841 () Int)

(assert (=> b!2145855 (= res!925909 (and (= totalInputSize!296 lt!798841) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!19162 (BalanceConc!15640) Int)

(assert (=> b!2145855 (= lt!798841 (size!19162 totalInput!851))))

(declare-fun b!2145856 () Bool)

(declare-fun e!1371497 () Bool)

(declare-fun e!1371513 () Bool)

(assert (=> b!2145856 (= e!1371497 e!1371513)))

(declare-fun res!925915 () Bool)

(assert (=> b!2145856 (=> res!925915 e!1371513)))

(assert (=> b!2145856 (= res!925915 (not (= lt!798840 lt!798849)))))

(assert (=> b!2145856 (= lt!798849 (furthestNullablePosition!93 (_1!14417 lt!798846) (+ 1 from!1043) totalInput!851 lt!798841 lt!798842))))

(declare-fun stack!8 () List!24562)

(assert (=> b!2145856 (= lt!798845 (Cons!24478 (StackFrame!273 z!3839 from!1043 lastNullablePos!123 lt!798840 totalInput!851) stack!8))))

(declare-fun e!1371501 () Int)

(assert (=> b!2145856 (= lt!798842 e!1371501)))

(declare-fun c!340742 () Bool)

(declare-fun nullableZipper!155 ((InoxSet Context!2746)) Bool)

(assert (=> b!2145856 (= c!340742 (nullableZipper!155 (_1!14417 lt!798846)))))

(declare-fun cacheUp!979 () CacheUp!1884)

(declare-fun derivationStepZipperMem!64 ((InoxSet Context!2746) C!11752 CacheUp!1884 CacheDown!1878) tuple3!3538)

(declare-fun apply!5979 (BalanceConc!15640 Int) C!11752)

(assert (=> b!2145856 (= lt!798846 (derivationStepZipperMem!64 z!3839 (apply!5979 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun b!2145852 () Bool)

(declare-fun e!1371511 () Bool)

(declare-fun tp!665376 () Bool)

(declare-fun inv!32191 (Conc!7939) Bool)

(assert (=> b!2145852 (= e!1371511 (and (inv!32191 (c!340744 totalInput!851)) tp!665376))))

(declare-fun res!925904 () Bool)

(assert (=> start!208128 (=> (not res!925904) (not e!1371498))))

(assert (=> start!208128 (= res!925904 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!208128 e!1371498))

(declare-fun e!1371487 () Bool)

(declare-fun inv!32192 (CacheFurthestNullable!842) Bool)

(assert (=> start!208128 (and (inv!32192 cacheFurthestNullable!114) e!1371487)))

(assert (=> start!208128 true))

(declare-fun e!1371505 () Bool)

(declare-fun inv!32193 (CacheDown!1878) Bool)

(assert (=> start!208128 (and (inv!32193 cacheDown!1098) e!1371505)))

(declare-fun e!1371488 () Bool)

(declare-fun inv!32194 (CacheUp!1884) Bool)

(assert (=> start!208128 (and (inv!32194 cacheUp!979) e!1371488)))

(declare-fun condSetEmpty!16720 () Bool)

(assert (=> start!208128 (= condSetEmpty!16720 (= z!3839 ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setRes!16721 () Bool)

(assert (=> start!208128 setRes!16721))

(declare-fun inv!32195 (BalanceConc!15640) Bool)

(assert (=> start!208128 (and (inv!32195 totalInput!851) e!1371511)))

(declare-fun e!1371499 () Bool)

(assert (=> start!208128 e!1371499))

(declare-fun b!2145857 () Bool)

(declare-fun e!1371492 () Bool)

(declare-fun e!1371507 () Bool)

(assert (=> b!2145857 (= e!1371492 e!1371507)))

(declare-fun e!1371480 () Bool)

(declare-fun tp!665369 () Bool)

(declare-fun tp!665368 () Bool)

(declare-fun e!1371515 () Bool)

(declare-fun array_inv!3040 (array!9513) Bool)

(declare-fun array_inv!3041 (array!9519) Bool)

(assert (=> b!2145858 (= e!1371515 (and tp!665391 tp!665368 tp!665369 (array_inv!3040 (_keys!3125 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))))) (array_inv!3041 (_values!3108 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))))) e!1371480))))

(declare-fun b!2145859 () Bool)

(declare-fun e!1371500 () Bool)

(declare-fun tp!665370 () Bool)

(assert (=> b!2145859 (= e!1371500 (and (inv!32191 (c!340744 (totalInput!3175 cacheFurthestNullable!114))) tp!665370))))

(declare-fun b!2145860 () Bool)

(declare-fun res!925924 () Bool)

(assert (=> b!2145860 (=> (not res!925924) (not e!1371478))))

(declare-fun valid!2202 (CacheDown!1878) Bool)

(assert (=> b!2145860 (= res!925924 (valid!2202 (_3!2237 lt!798843)))))

(declare-fun mapNonEmpty!13421 () Bool)

(declare-fun mapRes!13421 () Bool)

(declare-fun tp!665375 () Bool)

(declare-fun tp!665387 () Bool)

(assert (=> mapNonEmpty!13421 (= mapRes!13421 (and tp!665375 tp!665387))))

(declare-fun mapKey!13421 () (_ BitVec 32))

(declare-fun mapRest!13422 () (Array (_ BitVec 32) List!24563))

(declare-fun mapValue!13420 () List!24563)

(assert (=> mapNonEmpty!13421 (= (arr!4251 (_values!3106 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979))))))) (store mapRest!13422 mapKey!13421 mapValue!13420))))

(declare-fun b!2145861 () Bool)

(declare-fun e!1371493 () Bool)

(declare-fun e!1371479 () Bool)

(assert (=> b!2145861 (= e!1371493 e!1371479)))

(declare-fun b!2145862 () Bool)

(declare-fun e!1371477 () Bool)

(declare-fun tp!665386 () Bool)

(assert (=> b!2145862 (= e!1371477 tp!665386)))

(declare-fun b!2145863 () Bool)

(declare-fun e!1371490 () Bool)

(declare-fun e!1371504 () Bool)

(declare-fun lt!798848 () MutLongMap!2828)

(assert (=> b!2145863 (= e!1371490 (and e!1371504 ((_ is LongMap!2828) lt!798848)))))

(assert (=> b!2145863 (= lt!798848 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))))

(declare-fun b!2145864 () Bool)

(declare-fun e!1371483 () Bool)

(declare-fun lt!798844 () MutLongMap!2826)

(assert (=> b!2145864 (= e!1371483 (and e!1371492 ((_ is LongMap!2826) lt!798844)))))

(assert (=> b!2145864 (= lt!798844 (v!29070 (underlying!5848 (cache!3121 cacheUp!979))))))

(declare-fun b!2145865 () Bool)

(declare-fun e!1371496 () Bool)

(declare-fun tp!665393 () Bool)

(assert (=> b!2145865 (= e!1371496 (and tp!665393 mapRes!13421))))

(declare-fun condMapEmpty!13420 () Bool)

(declare-fun mapDefault!13420 () List!24563)

(assert (=> b!2145865 (= condMapEmpty!13420 (= (arr!4251 (_values!3106 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24563)) mapDefault!13420)))))

(declare-fun b!2145866 () Bool)

(declare-fun e!1371509 () Bool)

(assert (=> b!2145866 (= e!1371505 e!1371509)))

(declare-fun tp!665392 () Bool)

(declare-fun tp!665388 () Bool)

(declare-fun e!1371486 () Bool)

(declare-fun array_inv!3042 (array!9517) Bool)

(assert (=> b!2145867 (= e!1371479 (and tp!665383 tp!665388 tp!665392 (array_inv!3040 (_keys!3124 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098))))))) (array_inv!3042 (_values!3107 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098))))))) e!1371486))))

(declare-fun b!2145868 () Bool)

(declare-fun e!1371508 () Bool)

(assert (=> b!2145868 (= e!1371504 e!1371508)))

(declare-fun e!1371510 () Bool)

(assert (=> b!2145869 (= e!1371510 (and e!1371483 tp!665377))))

(declare-fun b!2145870 () Bool)

(declare-fun res!925906 () Bool)

(assert (=> b!2145870 (=> res!925906 e!1371497)))

(declare-fun lostCauseZipper!132 ((InoxSet Context!2746)) Bool)

(assert (=> b!2145870 (= res!925906 (lostCauseZipper!132 z!3839))))

(declare-fun b!2145871 () Bool)

(declare-fun res!925911 () Bool)

(assert (=> b!2145871 (=> res!925911 e!1371497)))

(assert (=> b!2145871 (= res!925911 (= from!1043 totalInputSize!296))))

(declare-fun mapIsEmpty!13420 () Bool)

(assert (=> mapIsEmpty!13420 mapRes!13421))

(assert (=> b!2145872 (= e!1371513 e!1371506)))

(declare-fun res!925916 () Bool)

(assert (=> b!2145872 (=> res!925916 e!1371506)))

(assert (=> b!2145872 (= res!925916 (not (forall!4995 stack!8 lambda!80548)))))

(assert (=> b!2145872 (forall!4995 stack!8 lambda!80548)))

(declare-datatypes ((Unit!37715 0))(
  ( (Unit!37716) )
))
(declare-fun lt!798847 () Unit!37715)

(declare-fun lemmaStackPreservesForEqualRes!33 (List!24562 Int Int) Unit!37715)

(assert (=> b!2145872 (= lt!798847 (lemmaStackPreservesForEqualRes!33 stack!8 lt!798840 lt!798849))))

(assert (=> b!2145872 (forall!4995 stack!8 lambda!80546)))

(declare-fun b!2145873 () Bool)

(declare-fun e!1371491 () Bool)

(assert (=> b!2145873 (= e!1371491 e!1371493)))

(declare-fun e!1371495 () Bool)

(assert (=> b!2145874 (= e!1371509 (and e!1371495 tp!665372))))

(declare-fun setElem!16720 () Context!2746)

(declare-fun setNonEmpty!16720 () Bool)

(declare-fun tp!665382 () Bool)

(declare-fun setRes!16720 () Bool)

(declare-fun inv!32196 (Context!2746) Bool)

(assert (=> setNonEmpty!16720 (= setRes!16720 (and tp!665382 (inv!32196 setElem!16720) e!1371477))))

(declare-fun setRest!16720 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16720 (= (z!5905 (h!29879 stack!8)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16720 true) setRest!16720))))

(declare-fun setIsEmpty!16720 () Bool)

(assert (=> setIsEmpty!16720 setRes!16720))

(declare-fun mapIsEmpty!13421 () Bool)

(assert (=> mapIsEmpty!13421 mapRes!13420))

(declare-fun b!2145875 () Bool)

(declare-fun e!1371482 () Bool)

(assert (=> b!2145875 (= e!1371507 e!1371482)))

(declare-fun b!2145876 () Bool)

(declare-fun res!925907 () Bool)

(assert (=> b!2145876 (=> (not res!925907) (not e!1371494))))

(declare-fun e!1371503 () Bool)

(assert (=> b!2145876 (= res!925907 e!1371503)))

(declare-fun res!925922 () Bool)

(assert (=> b!2145876 (=> res!925922 e!1371503)))

(assert (=> b!2145876 (= res!925922 (not (nullableZipper!155 z!3839)))))

(declare-fun b!2145877 () Bool)

(declare-fun lt!798839 () MutLongMap!2827)

(assert (=> b!2145877 (= e!1371495 (and e!1371491 ((_ is LongMap!2827) lt!798839)))))

(assert (=> b!2145877 (= lt!798839 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098))))))

(declare-fun b!2145878 () Bool)

(declare-fun e!1371484 () Bool)

(declare-fun tp!665394 () Bool)

(assert (=> b!2145878 (= e!1371484 (and (inv!32191 (c!340744 (totalInput!3174 (h!29879 stack!8)))) tp!665394))))

(declare-fun tp!665389 () Bool)

(declare-fun tp!665384 () Bool)

(declare-fun array_inv!3043 (array!9515) Bool)

(assert (=> b!2145879 (= e!1371482 (and tp!665367 tp!665384 tp!665389 (array_inv!3040 (_keys!3123 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979))))))) (array_inv!3043 (_values!3106 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979))))))) e!1371496))))

(declare-fun b!2145880 () Bool)

(declare-fun res!925910 () Bool)

(assert (=> b!2145880 (=> (not res!925910) (not e!1371494))))

(declare-fun valid!2203 (CacheFurthestNullable!842) Bool)

(assert (=> b!2145880 (= res!925910 (valid!2203 cacheFurthestNullable!114))))

(declare-fun b!2145881 () Bool)

(assert (=> b!2145881 (= e!1371501 lastNullablePos!123)))

(declare-fun mapNonEmpty!13422 () Bool)

(declare-fun mapRes!13422 () Bool)

(declare-fun tp!665381 () Bool)

(declare-fun tp!665379 () Bool)

(assert (=> mapNonEmpty!13422 (= mapRes!13422 (and tp!665381 tp!665379))))

(declare-fun mapRest!13421 () (Array (_ BitVec 32) List!24564))

(declare-fun mapKey!13422 () (_ BitVec 32))

(declare-fun mapValue!13421 () List!24564)

(assert (=> mapNonEmpty!13422 (= (arr!4253 (_values!3108 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))))) (store mapRest!13421 mapKey!13422 mapValue!13421))))

(declare-fun b!2145882 () Bool)

(assert (=> b!2145882 (= e!1371501 from!1043)))

(declare-fun b!2145883 () Bool)

(declare-fun tp!665378 () Bool)

(assert (=> b!2145883 (= e!1371480 (and tp!665378 mapRes!13422))))

(declare-fun condMapEmpty!13421 () Bool)

(declare-fun mapDefault!13421 () List!24564)

(assert (=> b!2145883 (= condMapEmpty!13421 (= (arr!4253 (_values!3108 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24564)) mapDefault!13421)))))

(declare-fun b!2145884 () Bool)

(declare-fun res!925914 () Bool)

(assert (=> b!2145884 (=> (not res!925914) (not e!1371494))))

(assert (=> b!2145884 (= res!925914 (= (totalInput!3175 cacheFurthestNullable!114) totalInput!851))))

(declare-fun e!1371485 () Bool)

(assert (=> b!2145885 (= e!1371485 (and e!1371490 tp!665374))))

(declare-fun e!1371514 () Bool)

(assert (=> b!2145886 (= e!1371494 e!1371514)))

(declare-fun res!925913 () Bool)

(assert (=> b!2145886 (=> (not res!925913) (not e!1371514))))

(assert (=> b!2145886 (= res!925913 (forall!4995 stack!8 lambda!80546))))

(assert (=> b!2145886 (= lt!798840 (furthestNullablePosition!93 z!3839 from!1043 totalInput!851 lt!798841 lastNullablePos!123))))

(declare-fun b!2145887 () Bool)

(declare-fun tp!665380 () Bool)

(assert (=> b!2145887 (= e!1371486 (and tp!665380 mapRes!13420))))

(declare-fun condMapEmpty!13422 () Bool)

(declare-fun mapDefault!13422 () List!24560)

(assert (=> b!2145887 (= condMapEmpty!13422 (= (arr!4252 (_values!3107 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24560)) mapDefault!13422)))))

(declare-fun b!2145888 () Bool)

(declare-fun res!925920 () Bool)

(assert (=> b!2145888 (=> res!925920 e!1371506)))

(assert (=> b!2145888 (= res!925920 (not (forall!4995 lt!798845 lambda!80548)))))

(declare-fun b!2145889 () Bool)

(declare-fun res!925905 () Bool)

(assert (=> b!2145889 (=> (not res!925905) (not e!1371494))))

(assert (=> b!2145889 (= res!925905 (valid!2202 cacheDown!1098))))

(declare-fun b!2145890 () Bool)

(declare-fun res!925921 () Bool)

(assert (=> b!2145890 (=> (not res!925921) (not e!1371478))))

(declare-fun valid!2204 (CacheUp!1884) Bool)

(assert (=> b!2145890 (= res!925921 (valid!2204 (_2!14414 lt!798843)))))

(declare-fun b!2145891 () Bool)

(assert (=> b!2145891 (= e!1371488 e!1371510)))

(declare-fun b!2145892 () Bool)

(assert (=> b!2145892 (= e!1371514 (not e!1371497))))

(declare-fun res!925908 () Bool)

(assert (=> b!2145892 (=> res!925908 e!1371497)))

(declare-datatypes ((Option!4953 0))(
  ( (None!4952) (Some!4952 (v!29075 Int)) )
))
(declare-fun get!7465 (CacheFurthestNullable!842 (InoxSet Context!2746) Int Int) Option!4953)

(assert (=> b!2145892 (= res!925908 ((_ is Some!4952) (get!7465 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2145892 (forall!4995 stack!8 lambda!80546)))

(declare-fun b!2145893 () Bool)

(declare-fun e!1371502 () Bool)

(assert (=> b!2145893 (= e!1371502 (and setRes!16720 (inv!32195 (totalInput!3174 (h!29879 stack!8))) e!1371484))))

(declare-fun condSetEmpty!16721 () Bool)

(assert (=> b!2145893 (= condSetEmpty!16721 (= (z!5905 (h!29879 stack!8)) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun b!2145894 () Bool)

(declare-fun e!1371481 () Bool)

(declare-fun tp!665371 () Bool)

(assert (=> b!2145894 (= e!1371481 tp!665371)))

(declare-fun b!2145895 () Bool)

(assert (=> b!2145895 (= e!1371487 (and e!1371485 (inv!32195 (totalInput!3175 cacheFurthestNullable!114)) e!1371500))))

(declare-fun res!925923 () Bool)

(assert (=> b!2145896 (=> (not res!925923) (not e!1371514))))

(assert (=> b!2145896 (= res!925923 (forall!4995 stack!8 lambda!80547))))

(declare-fun b!2145897 () Bool)

(assert (=> b!2145897 (= e!1371503 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun res!925917 () Bool)

(assert (=> b!2145898 (=> (not res!925917) (not e!1371478))))

(assert (=> b!2145898 (= res!925917 (forall!4995 (_2!14411 (_1!14414 lt!798843)) lambda!80549))))

(declare-fun setIsEmpty!16721 () Bool)

(assert (=> setIsEmpty!16721 setRes!16721))

(declare-fun mapIsEmpty!13422 () Bool)

(assert (=> mapIsEmpty!13422 mapRes!13422))

(declare-fun b!2145899 () Bool)

(declare-fun res!925912 () Bool)

(assert (=> b!2145899 (=> (not res!925912) (not e!1371494))))

(assert (=> b!2145899 (= res!925912 (valid!2204 cacheUp!979))))

(declare-fun b!2145900 () Bool)

(assert (=> b!2145900 (= e!1371478 (forall!4995 (_2!14411 (_1!14414 lt!798843)) lambda!80547))))

(declare-fun b!2145901 () Bool)

(declare-fun tp!665395 () Bool)

(declare-fun inv!32197 (StackFrame!272) Bool)

(assert (=> b!2145901 (= e!1371499 (and (inv!32197 (h!29879 stack!8)) e!1371502 tp!665395))))

(declare-fun tp!665385 () Bool)

(declare-fun setElem!16721 () Context!2746)

(declare-fun setNonEmpty!16721 () Bool)

(assert (=> setNonEmpty!16721 (= setRes!16721 (and tp!665385 (inv!32196 setElem!16721) e!1371481))))

(declare-fun setRest!16721 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16721 (= z!3839 ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16721 true) setRest!16721))))

(declare-fun b!2145902 () Bool)

(assert (=> b!2145902 (= e!1371508 e!1371515)))

(assert (= (and start!208128 res!925904) b!2145855))

(assert (= (and b!2145855 res!925909) b!2145876))

(assert (= (and b!2145876 (not res!925922)) b!2145897))

(assert (= (and b!2145876 res!925907) b!2145899))

(assert (= (and b!2145899 res!925912) b!2145889))

(assert (= (and b!2145889 res!925905) b!2145880))

(assert (= (and b!2145880 res!925910) b!2145884))

(assert (= (and b!2145884 res!925914) b!2145886))

(assert (= (and b!2145886 res!925913) b!2145896))

(assert (= (and b!2145896 res!925923) b!2145892))

(assert (= (and b!2145892 (not res!925908)) b!2145871))

(assert (= (and b!2145871 (not res!925911)) b!2145870))

(assert (= (and b!2145870 (not res!925906)) b!2145856))

(assert (= (and b!2145856 c!340742) b!2145882))

(assert (= (and b!2145856 (not c!340742)) b!2145881))

(assert (= (and b!2145856 (not res!925915)) b!2145872))

(assert (= (and b!2145872 (not res!925916)) b!2145888))

(assert (= (and b!2145888 (not res!925920)) b!2145854))

(assert (= (and b!2145854 (not res!925919)) b!2145853))

(assert (= (and b!2145853 res!925918) b!2145898))

(assert (= (and b!2145898 res!925917) b!2145890))

(assert (= (and b!2145890 res!925921) b!2145860))

(assert (= (and b!2145860 res!925924) b!2145900))

(assert (= (and b!2145883 condMapEmpty!13421) mapIsEmpty!13422))

(assert (= (and b!2145883 (not condMapEmpty!13421)) mapNonEmpty!13422))

(assert (= b!2145858 b!2145883))

(assert (= b!2145902 b!2145858))

(assert (= b!2145868 b!2145902))

(assert (= (and b!2145863 ((_ is LongMap!2828) (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))) b!2145868))

(assert (= b!2145885 b!2145863))

(assert (= (and b!2145895 ((_ is HashMap!2742) (cache!3123 cacheFurthestNullable!114))) b!2145885))

(assert (= b!2145895 b!2145859))

(assert (= start!208128 b!2145895))

(assert (= (and b!2145887 condMapEmpty!13422) mapIsEmpty!13421))

(assert (= (and b!2145887 (not condMapEmpty!13422)) mapNonEmpty!13420))

(assert (= b!2145867 b!2145887))

(assert (= b!2145861 b!2145867))

(assert (= b!2145873 b!2145861))

(assert (= (and b!2145877 ((_ is LongMap!2827) (v!29072 (underlying!5850 (cache!3122 cacheDown!1098))))) b!2145873))

(assert (= b!2145874 b!2145877))

(assert (= (and b!2145866 ((_ is HashMap!2741) (cache!3122 cacheDown!1098))) b!2145874))

(assert (= start!208128 b!2145866))

(assert (= (and b!2145865 condMapEmpty!13420) mapIsEmpty!13420))

(assert (= (and b!2145865 (not condMapEmpty!13420)) mapNonEmpty!13421))

(assert (= b!2145879 b!2145865))

(assert (= b!2145875 b!2145879))

(assert (= b!2145857 b!2145875))

(assert (= (and b!2145864 ((_ is LongMap!2826) (v!29070 (underlying!5848 (cache!3121 cacheUp!979))))) b!2145857))

(assert (= b!2145869 b!2145864))

(assert (= (and b!2145891 ((_ is HashMap!2740) (cache!3121 cacheUp!979))) b!2145869))

(assert (= start!208128 b!2145891))

(assert (= (and start!208128 condSetEmpty!16720) setIsEmpty!16721))

(assert (= (and start!208128 (not condSetEmpty!16720)) setNonEmpty!16721))

(assert (= setNonEmpty!16721 b!2145894))

(assert (= start!208128 b!2145852))

(assert (= (and b!2145893 condSetEmpty!16721) setIsEmpty!16720))

(assert (= (and b!2145893 (not condSetEmpty!16721)) setNonEmpty!16720))

(assert (= setNonEmpty!16720 b!2145862))

(assert (= b!2145893 b!2145878))

(assert (= b!2145901 b!2145893))

(assert (= (and start!208128 ((_ is Cons!24478) stack!8)) b!2145901))

(declare-fun m!2589579 () Bool)

(assert (=> b!2145899 m!2589579))

(declare-fun m!2589581 () Bool)

(assert (=> mapNonEmpty!13422 m!2589581))

(declare-fun m!2589583 () Bool)

(assert (=> b!2145856 m!2589583))

(declare-fun m!2589585 () Bool)

(assert (=> b!2145856 m!2589585))

(declare-fun m!2589587 () Bool)

(assert (=> b!2145856 m!2589587))

(assert (=> b!2145856 m!2589587))

(declare-fun m!2589589 () Bool)

(assert (=> b!2145856 m!2589589))

(declare-fun m!2589591 () Bool)

(assert (=> b!2145895 m!2589591))

(declare-fun m!2589593 () Bool)

(assert (=> b!2145852 m!2589593))

(declare-fun m!2589595 () Bool)

(assert (=> b!2145890 m!2589595))

(declare-fun m!2589597 () Bool)

(assert (=> b!2145858 m!2589597))

(declare-fun m!2589599 () Bool)

(assert (=> b!2145858 m!2589599))

(declare-fun m!2589601 () Bool)

(assert (=> b!2145879 m!2589601))

(declare-fun m!2589603 () Bool)

(assert (=> b!2145879 m!2589603))

(declare-fun m!2589605 () Bool)

(assert (=> b!2145876 m!2589605))

(declare-fun m!2589607 () Bool)

(assert (=> b!2145854 m!2589607))

(declare-fun m!2589609 () Bool)

(assert (=> b!2145893 m!2589609))

(declare-fun m!2589611 () Bool)

(assert (=> b!2145898 m!2589611))

(declare-fun m!2589613 () Bool)

(assert (=> b!2145855 m!2589613))

(declare-fun m!2589615 () Bool)

(assert (=> b!2145872 m!2589615))

(assert (=> b!2145872 m!2589615))

(declare-fun m!2589617 () Bool)

(assert (=> b!2145872 m!2589617))

(declare-fun m!2589619 () Bool)

(assert (=> b!2145872 m!2589619))

(declare-fun m!2589621 () Bool)

(assert (=> b!2145888 m!2589621))

(declare-fun m!2589623 () Bool)

(assert (=> b!2145892 m!2589623))

(assert (=> b!2145892 m!2589619))

(declare-fun m!2589625 () Bool)

(assert (=> b!2145860 m!2589625))

(declare-fun m!2589627 () Bool)

(assert (=> b!2145880 m!2589627))

(declare-fun m!2589629 () Bool)

(assert (=> b!2145859 m!2589629))

(assert (=> b!2145886 m!2589619))

(declare-fun m!2589631 () Bool)

(assert (=> b!2145886 m!2589631))

(declare-fun m!2589633 () Bool)

(assert (=> b!2145878 m!2589633))

(declare-fun m!2589635 () Bool)

(assert (=> start!208128 m!2589635))

(declare-fun m!2589637 () Bool)

(assert (=> start!208128 m!2589637))

(declare-fun m!2589639 () Bool)

(assert (=> start!208128 m!2589639))

(declare-fun m!2589641 () Bool)

(assert (=> start!208128 m!2589641))

(declare-fun m!2589643 () Bool)

(assert (=> b!2145900 m!2589643))

(declare-fun m!2589645 () Bool)

(assert (=> b!2145896 m!2589645))

(declare-fun m!2589647 () Bool)

(assert (=> mapNonEmpty!13421 m!2589647))

(declare-fun m!2589649 () Bool)

(assert (=> b!2145870 m!2589649))

(declare-fun m!2589651 () Bool)

(assert (=> setNonEmpty!16720 m!2589651))

(declare-fun m!2589653 () Bool)

(assert (=> setNonEmpty!16721 m!2589653))

(declare-fun m!2589655 () Bool)

(assert (=> b!2145901 m!2589655))

(declare-fun m!2589657 () Bool)

(assert (=> mapNonEmpty!13420 m!2589657))

(declare-fun m!2589659 () Bool)

(assert (=> b!2145853 m!2589659))

(declare-fun m!2589661 () Bool)

(assert (=> b!2145853 m!2589661))

(declare-fun m!2589663 () Bool)

(assert (=> b!2145867 m!2589663))

(declare-fun m!2589665 () Bool)

(assert (=> b!2145867 m!2589665))

(declare-fun m!2589667 () Bool)

(assert (=> b!2145889 m!2589667))

(check-sat (not b!2145892) (not b!2145876) (not b!2145888) (not b!2145896) (not b!2145900) (not b!2145901) (not b!2145859) (not b!2145858) (not b_next!63999) (not b_next!64003) (not setNonEmpty!16720) (not b!2145854) (not b!2145880) (not b!2145870) (not b!2145862) (not b_next!64005) (not b!2145865) (not b!2145872) (not b!2145867) (not b!2145951) (not b!2145886) (not b!2145890) (not mapNonEmpty!13420) (not b!2145946) b_and!172879 (not b!2145856) (not b_next!63997) (not b!2145855) (not b!2145948) (not b!2145879) (not b!2145853) (not b_next!64001) (not b!2145954) (not b!2145887) (not mapNonEmpty!13422) (not mapNonEmpty!13428) (not start!208128) b_and!172875 b_and!172883 (not b_next!64007) b_and!172881 b_and!172873 (not b!2145893) (not b!2145894) (not b!2145860) (not b!2145878) (not b!2145898) (not mapNonEmpty!13421) (not b!2145895) (not setNonEmpty!16721) (not mapNonEmpty!13427) (not setNonEmpty!16724) (not b!2145852) (not b!2145899) (not b!2145945) (not b!2145889) (not b!2145883) b_and!172877)
(check-sat (not b_next!64005) (not b_next!64001) (not b_next!63999) (not b_next!64003) b_and!172877 b_and!172879 (not b_next!63997) b_and!172875 b_and!172883 (not b_next!64007) b_and!172881 b_and!172873)
(get-model)

(declare-fun d!645159 () Bool)

(declare-fun res!925930 () Bool)

(declare-fun e!1371569 () Bool)

(assert (=> d!645159 (=> res!925930 e!1371569)))

(assert (=> d!645159 (= res!925930 ((_ is Nil!24478) stack!8))))

(assert (=> d!645159 (= (forall!4995 stack!8 lambda!80548) e!1371569)))

(declare-fun b!2145961 () Bool)

(declare-fun e!1371570 () Bool)

(assert (=> b!2145961 (= e!1371569 e!1371570)))

(declare-fun res!925931 () Bool)

(assert (=> b!2145961 (=> (not res!925931) (not e!1371570))))

(declare-fun dynLambda!11381 (Int StackFrame!272) Bool)

(assert (=> b!2145961 (= res!925931 (dynLambda!11381 lambda!80548 (h!29879 stack!8)))))

(declare-fun b!2145962 () Bool)

(assert (=> b!2145962 (= e!1371570 (forall!4995 (t!197092 stack!8) lambda!80548))))

(assert (= (and d!645159 (not res!925930)) b!2145961))

(assert (= (and b!2145961 res!925931) b!2145962))

(declare-fun b_lambda!70709 () Bool)

(assert (=> (not b_lambda!70709) (not b!2145961)))

(declare-fun m!2589669 () Bool)

(assert (=> b!2145961 m!2589669))

(declare-fun m!2589671 () Bool)

(assert (=> b!2145962 m!2589671))

(assert (=> b!2145872 d!645159))

(declare-fun bs!445369 () Bool)

(declare-fun d!645161 () Bool)

(assert (= bs!445369 (and d!645161 b!2145886)))

(declare-fun lambda!80554 () Int)

(assert (=> bs!445369 (= lambda!80554 lambda!80546)))

(declare-fun bs!445370 () Bool)

(assert (= bs!445370 (and d!645161 b!2145896)))

(assert (=> bs!445370 (not (= lambda!80554 lambda!80547))))

(declare-fun bs!445371 () Bool)

(assert (= bs!445371 (and d!645161 b!2145872)))

(assert (=> bs!445371 (= (= lt!798840 lt!798849) (= lambda!80554 lambda!80548))))

(declare-fun bs!445372 () Bool)

(assert (= bs!445372 (and d!645161 b!2145898)))

(assert (=> bs!445372 (= (= lt!798840 (_1!14411 (_1!14414 lt!798843))) (= lambda!80554 lambda!80549))))

(assert (=> d!645161 true))

(declare-fun lambda!80555 () Int)

(assert (=> bs!445371 (= lambda!80555 lambda!80548)))

(assert (=> bs!445372 (= (= lt!798849 (_1!14411 (_1!14414 lt!798843))) (= lambda!80555 lambda!80549))))

(declare-fun bs!445373 () Bool)

(assert (= bs!445373 d!645161))

(assert (=> bs!445373 (= (= lt!798849 lt!798840) (= lambda!80555 lambda!80554))))

(assert (=> bs!445370 (not (= lambda!80555 lambda!80547))))

(assert (=> bs!445369 (= (= lt!798849 lt!798840) (= lambda!80555 lambda!80546))))

(assert (=> d!645161 true))

(assert (=> d!645161 (forall!4995 stack!8 lambda!80555)))

(declare-fun lt!798858 () Unit!37715)

(declare-fun choose!12694 (List!24562 Int Int) Unit!37715)

(assert (=> d!645161 (= lt!798858 (choose!12694 stack!8 lt!798840 lt!798849))))

(assert (=> d!645161 (forall!4995 stack!8 lambda!80554)))

(assert (=> d!645161 (= (lemmaStackPreservesForEqualRes!33 stack!8 lt!798840 lt!798849) lt!798858)))

(declare-fun m!2589673 () Bool)

(assert (=> bs!445373 m!2589673))

(declare-fun m!2589675 () Bool)

(assert (=> bs!445373 m!2589675))

(declare-fun m!2589677 () Bool)

(assert (=> bs!445373 m!2589677))

(assert (=> b!2145872 d!645161))

(declare-fun d!645163 () Bool)

(declare-fun res!925932 () Bool)

(declare-fun e!1371571 () Bool)

(assert (=> d!645163 (=> res!925932 e!1371571)))

(assert (=> d!645163 (= res!925932 ((_ is Nil!24478) stack!8))))

(assert (=> d!645163 (= (forall!4995 stack!8 lambda!80546) e!1371571)))

(declare-fun b!2145963 () Bool)

(declare-fun e!1371572 () Bool)

(assert (=> b!2145963 (= e!1371571 e!1371572)))

(declare-fun res!925933 () Bool)

(assert (=> b!2145963 (=> (not res!925933) (not e!1371572))))

(assert (=> b!2145963 (= res!925933 (dynLambda!11381 lambda!80546 (h!29879 stack!8)))))

(declare-fun b!2145964 () Bool)

(assert (=> b!2145964 (= e!1371572 (forall!4995 (t!197092 stack!8) lambda!80546))))

(assert (= (and d!645163 (not res!925932)) b!2145963))

(assert (= (and b!2145963 res!925933) b!2145964))

(declare-fun b_lambda!70711 () Bool)

(assert (=> (not b_lambda!70711) (not b!2145963)))

(declare-fun m!2589679 () Bool)

(assert (=> b!2145963 m!2589679))

(declare-fun m!2589681 () Bool)

(assert (=> b!2145964 m!2589681))

(assert (=> b!2145872 d!645163))

(declare-fun d!645165 () Bool)

(declare-fun validCacheMapDown!258 (MutableMap!2741) Bool)

(assert (=> d!645165 (= (valid!2202 cacheDown!1098) (validCacheMapDown!258 (cache!3122 cacheDown!1098)))))

(declare-fun bs!445374 () Bool)

(assert (= bs!445374 d!645165))

(declare-fun m!2589683 () Bool)

(assert (=> bs!445374 m!2589683))

(assert (=> b!2145889 d!645165))

(declare-fun d!645167 () Bool)

(declare-fun validCacheMapUp!260 (MutableMap!2740) Bool)

(assert (=> d!645167 (= (valid!2204 (_2!14414 lt!798843)) (validCacheMapUp!260 (cache!3121 (_2!14414 lt!798843))))))

(declare-fun bs!445375 () Bool)

(assert (= bs!445375 d!645167))

(declare-fun m!2589685 () Bool)

(assert (=> bs!445375 m!2589685))

(assert (=> b!2145890 d!645167))

(declare-fun b!2145975 () Bool)

(declare-fun e!1371580 () Bool)

(assert (=> b!2145975 (= e!1371580 (lostCauseZipper!132 z!3839))))

(declare-fun b!2145976 () Bool)

(declare-fun e!1371579 () Int)

(assert (=> b!2145976 (= e!1371579 from!1043)))

(declare-fun lt!798863 () Int)

(declare-fun d!645169 () Bool)

(assert (=> d!645169 (and (>= lt!798863 (- 1)) (< lt!798863 totalInputSize!296) (>= lt!798863 lastNullablePos!123) (or (= lt!798863 lastNullablePos!123) (>= lt!798863 from!1043)))))

(declare-fun e!1371581 () Int)

(assert (=> d!645169 (= lt!798863 e!1371581)))

(declare-fun c!340750 () Bool)

(assert (=> d!645169 (= c!340750 e!1371580)))

(declare-fun res!925936 () Bool)

(assert (=> d!645169 (=> res!925936 e!1371580)))

(assert (=> d!645169 (= res!925936 (= from!1043 totalInputSize!296))))

(assert (=> d!645169 (and (>= from!1043 0) (<= from!1043 totalInputSize!296))))

(assert (=> d!645169 (= (furthestNullablePosition!93 z!3839 from!1043 totalInput!851 totalInputSize!296 lastNullablePos!123) lt!798863)))

(declare-fun b!2145977 () Bool)

(assert (=> b!2145977 (= e!1371579 lastNullablePos!123)))

(declare-fun lt!798864 () (InoxSet Context!2746))

(declare-fun b!2145978 () Bool)

(assert (=> b!2145978 (= e!1371581 (furthestNullablePosition!93 lt!798864 (+ from!1043 1) totalInput!851 totalInputSize!296 e!1371579))))

(declare-fun derivationStepZipper!99 ((InoxSet Context!2746) C!11752) (InoxSet Context!2746))

(assert (=> b!2145978 (= lt!798864 (derivationStepZipper!99 z!3839 (apply!5979 totalInput!851 from!1043)))))

(declare-fun c!340749 () Bool)

(assert (=> b!2145978 (= c!340749 (nullableZipper!155 lt!798864))))

(declare-fun b!2145979 () Bool)

(assert (=> b!2145979 (= e!1371581 lastNullablePos!123)))

(assert (= (and d!645169 (not res!925936)) b!2145975))

(assert (= (and d!645169 c!340750) b!2145979))

(assert (= (and d!645169 (not c!340750)) b!2145978))

(assert (= (and b!2145978 c!340749) b!2145976))

(assert (= (and b!2145978 (not c!340749)) b!2145977))

(assert (=> b!2145975 m!2589649))

(declare-fun m!2589687 () Bool)

(assert (=> b!2145978 m!2589687))

(assert (=> b!2145978 m!2589587))

(assert (=> b!2145978 m!2589587))

(declare-fun m!2589689 () Bool)

(assert (=> b!2145978 m!2589689))

(declare-fun m!2589691 () Bool)

(assert (=> b!2145978 m!2589691))

(assert (=> b!2145853 d!645169))

(declare-fun bs!445376 () Bool)

(declare-fun d!645171 () Bool)

(assert (= bs!445376 (and d!645171 b!2145872)))

(declare-fun lt!798893 () Int)

(declare-fun lambda!80570 () Int)

(assert (=> bs!445376 (= (= lt!798893 lt!798849) (= lambda!80570 lambda!80548))))

(declare-fun bs!445377 () Bool)

(assert (= bs!445377 (and d!645171 b!2145898)))

(assert (=> bs!445377 (= (= lt!798893 (_1!14411 (_1!14414 lt!798843))) (= lambda!80570 lambda!80549))))

(declare-fun bs!445378 () Bool)

(assert (= bs!445378 (and d!645171 d!645161)))

(assert (=> bs!445378 (= (= lt!798893 lt!798840) (= lambda!80570 lambda!80554))))

(assert (=> bs!445378 (= (= lt!798893 lt!798849) (= lambda!80570 lambda!80555))))

(declare-fun bs!445379 () Bool)

(assert (= bs!445379 (and d!645171 b!2145896)))

(assert (=> bs!445379 (not (= lambda!80570 lambda!80547))))

(declare-fun bs!445380 () Bool)

(assert (= bs!445380 (and d!645171 b!2145886)))

(assert (=> bs!445380 (= (= lt!798893 lt!798840) (= lambda!80570 lambda!80546))))

(assert (=> d!645171 true))

(declare-fun bs!445381 () Bool)

(declare-fun b!2146016 () Bool)

(assert (= bs!445381 (and b!2146016 b!2145872)))

(declare-fun lambda!80571 () Int)

(assert (=> bs!445381 (= (= lt!798842 lt!798849) (= lambda!80571 lambda!80548))))

(declare-fun bs!445382 () Bool)

(assert (= bs!445382 (and b!2146016 b!2145898)))

(assert (=> bs!445382 (= (= lt!798842 (_1!14411 (_1!14414 lt!798843))) (= lambda!80571 lambda!80549))))

(declare-fun bs!445383 () Bool)

(assert (= bs!445383 (and b!2146016 d!645161)))

(assert (=> bs!445383 (= (= lt!798842 lt!798840) (= lambda!80571 lambda!80554))))

(assert (=> bs!445383 (= (= lt!798842 lt!798849) (= lambda!80571 lambda!80555))))

(declare-fun bs!445384 () Bool)

(assert (= bs!445384 (and b!2146016 b!2145896)))

(assert (=> bs!445384 (not (= lambda!80571 lambda!80547))))

(declare-fun bs!445385 () Bool)

(assert (= bs!445385 (and b!2146016 d!645171)))

(assert (=> bs!445385 (= (= lt!798842 lt!798893) (= lambda!80571 lambda!80570))))

(declare-fun bs!445386 () Bool)

(assert (= bs!445386 (and b!2146016 b!2145886)))

(assert (=> bs!445386 (= (= lt!798842 lt!798840) (= lambda!80571 lambda!80546))))

(assert (=> b!2146016 true))

(declare-fun bs!445387 () Bool)

(declare-fun b!2146009 () Bool)

(assert (= bs!445387 (and b!2146009 b!2145872)))

(declare-fun lt!798906 () Int)

(declare-fun lambda!80572 () Int)

(assert (=> bs!445387 (= (= lt!798906 lt!798849) (= lambda!80572 lambda!80548))))

(declare-fun bs!445388 () Bool)

(assert (= bs!445388 (and b!2146009 b!2145898)))

(assert (=> bs!445388 (= (= lt!798906 (_1!14411 (_1!14414 lt!798843))) (= lambda!80572 lambda!80549))))

(declare-fun bs!445389 () Bool)

(assert (= bs!445389 (and b!2146009 d!645161)))

(assert (=> bs!445389 (= (= lt!798906 lt!798840) (= lambda!80572 lambda!80554))))

(assert (=> bs!445389 (= (= lt!798906 lt!798849) (= lambda!80572 lambda!80555))))

(declare-fun bs!445390 () Bool)

(assert (= bs!445390 (and b!2146009 b!2146016)))

(assert (=> bs!445390 (= (= lt!798906 lt!798842) (= lambda!80572 lambda!80571))))

(declare-fun bs!445391 () Bool)

(assert (= bs!445391 (and b!2146009 b!2145896)))

(assert (=> bs!445391 (not (= lambda!80572 lambda!80547))))

(declare-fun bs!445392 () Bool)

(assert (= bs!445392 (and b!2146009 d!645171)))

(assert (=> bs!445392 (= (= lt!798906 lt!798893) (= lambda!80572 lambda!80570))))

(declare-fun bs!445393 () Bool)

(assert (= bs!445393 (and b!2146009 b!2145886)))

(assert (=> bs!445393 (= (= lt!798906 lt!798840) (= lambda!80572 lambda!80546))))

(assert (=> b!2146009 true))

(declare-fun bs!445394 () Bool)

(declare-fun b!2146012 () Bool)

(assert (= bs!445394 (and b!2146012 b!2145872)))

(declare-fun lt!798894 () tuple3!3534)

(declare-fun lambda!80573 () Int)

(assert (=> bs!445394 (= (= (_1!14411 (_1!14414 lt!798894)) lt!798849) (= lambda!80573 lambda!80548))))

(declare-fun bs!445395 () Bool)

(assert (= bs!445395 (and b!2146012 b!2145898)))

(assert (=> bs!445395 (= (= (_1!14411 (_1!14414 lt!798894)) (_1!14411 (_1!14414 lt!798843))) (= lambda!80573 lambda!80549))))

(declare-fun bs!445396 () Bool)

(assert (= bs!445396 (and b!2146012 d!645161)))

(assert (=> bs!445396 (= (= (_1!14411 (_1!14414 lt!798894)) lt!798840) (= lambda!80573 lambda!80554))))

(assert (=> bs!445396 (= (= (_1!14411 (_1!14414 lt!798894)) lt!798849) (= lambda!80573 lambda!80555))))

(declare-fun bs!445397 () Bool)

(assert (= bs!445397 (and b!2146012 b!2146009)))

(assert (=> bs!445397 (= (= (_1!14411 (_1!14414 lt!798894)) lt!798906) (= lambda!80573 lambda!80572))))

(declare-fun bs!445398 () Bool)

(assert (= bs!445398 (and b!2146012 b!2146016)))

(assert (=> bs!445398 (= (= (_1!14411 (_1!14414 lt!798894)) lt!798842) (= lambda!80573 lambda!80571))))

(declare-fun bs!445399 () Bool)

(assert (= bs!445399 (and b!2146012 b!2145896)))

(assert (=> bs!445399 (not (= lambda!80573 lambda!80547))))

(declare-fun bs!445400 () Bool)

(assert (= bs!445400 (and b!2146012 d!645171)))

(assert (=> bs!445400 (= (= (_1!14411 (_1!14414 lt!798894)) lt!798893) (= lambda!80573 lambda!80570))))

(declare-fun bs!445401 () Bool)

(assert (= bs!445401 (and b!2146012 b!2145886)))

(assert (=> bs!445401 (= (= (_1!14411 (_1!14414 lt!798894)) lt!798840) (= lambda!80573 lambda!80546))))

(declare-fun b!2146019 () Bool)

(declare-fun e!1371607 () Bool)

(declare-fun e!1371606 () Bool)

(declare-fun lt!798908 () MutLongMap!2827)

(assert (=> b!2146019 (= e!1371607 (and e!1371606 ((_ is LongMap!2827) lt!798908)))))

(assert (=> b!2146019 (= lt!798908 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798894)))))))

(declare-fun b!2146020 () Bool)

(declare-fun e!1371599 () Bool)

(assert (=> b!2146020 (= e!1371606 e!1371599)))

(declare-fun setIsEmpty!16725 () Bool)

(declare-fun setRes!16725 () Bool)

(assert (=> setIsEmpty!16725 setRes!16725))

(declare-fun b!2146021 () Bool)

(declare-fun e!1371612 () Bool)

(declare-fun e!1371600 () Bool)

(assert (=> b!2146021 (= e!1371612 e!1371600)))

(declare-fun b!2146022 () Bool)

(declare-fun e!1371605 () Bool)

(assert (=> b!2146022 (= e!1371605 e!1371607)))

(declare-fun b!2146023 () Bool)

(declare-fun e!1371604 () Bool)

(declare-fun e!1371597 () Bool)

(assert (=> b!2146023 (= e!1371604 e!1371597)))

(declare-fun b!2146024 () Bool)

(declare-fun e!1371608 () Bool)

(declare-fun mapRes!13430 () Bool)

(assert (=> b!2146024 (= e!1371608 mapRes!13430)))

(declare-fun condMapEmpty!13429 () Bool)

(declare-fun mapDefault!13430 () List!24560)

(assert (=> b!2146024 (= condMapEmpty!13429 (= (arr!4252 (_values!3107 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798894)))))))) ((as const (Array (_ BitVec 32) List!24560)) mapDefault!13430)))))

(declare-fun b!2146025 () Bool)

(declare-fun e!1371611 () Bool)

(declare-fun e!1371610 () Bool)

(declare-fun lt!798907 () MutLongMap!2826)

(assert (=> b!2146025 (= e!1371611 (and e!1371610 ((_ is LongMap!2826) lt!798907)))))

(assert (=> b!2146025 (= lt!798907 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798894)))))))

(declare-fun b!2146026 () Bool)

(declare-fun e!1371598 () Bool)

(declare-fun mapRes!13429 () Bool)

(assert (=> b!2146026 (= e!1371598 mapRes!13429)))

(declare-fun condMapEmpty!13430 () Bool)

(declare-fun mapDefault!13429 () List!24563)

(assert (=> b!2146026 (= condMapEmpty!13430 (= (arr!4251 (_values!3106 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798894)))))))) ((as const (Array (_ BitVec 32) List!24563)) mapDefault!13429)))))

(declare-fun mapIsEmpty!13430 () Bool)

(assert (=> mapIsEmpty!13430 mapRes!13429))

(declare-fun setNonEmpty!16725 () Bool)

(assert (=> setNonEmpty!16725 (= setRes!16725 true)))

(declare-fun setElem!16725 () Context!2746)

(declare-fun setRest!16725 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16725 (= (z!5905 (h!29879 (_2!14411 (_1!14414 lt!798894)))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16725 true) setRest!16725))))

(declare-fun b!2146027 () Bool)

(declare-fun e!1371609 () Bool)

(assert (=> b!2146027 (= e!1371609 e!1371611)))

(declare-fun mapNonEmpty!13429 () Bool)

(assert (=> mapNonEmpty!13429 (= mapRes!13429 true)))

(declare-fun mapKey!13429 () (_ BitVec 32))

(declare-fun mapValue!13430 () List!24563)

(declare-fun mapRest!13429 () (Array (_ BitVec 32) List!24563))

(assert (=> mapNonEmpty!13429 (= (arr!4251 (_values!3106 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798894)))))))) (store mapRest!13429 mapKey!13429 mapValue!13430))))

(declare-fun b!2146028 () Bool)

(declare-fun e!1371602 () Bool)

(assert (=> b!2146028 (= e!1371599 e!1371602)))

(declare-fun b!2146029 () Bool)

(assert (=> b!2146029 (= e!1371600 e!1371598)))

(declare-fun b!2146030 () Bool)

(assert (=> b!2146030 (= e!1371610 e!1371612)))

(declare-fun b!2146031 () Bool)

(declare-fun e!1371601 () Bool)

(assert (=> b!2146031 (= e!1371601 e!1371609)))

(declare-fun e!1371603 () Bool)

(assert (=> b!2146012 (and e!1371604 e!1371601 e!1371603)))

(declare-fun mapIsEmpty!13429 () Bool)

(assert (=> mapIsEmpty!13429 mapRes!13430))

(declare-fun b!2146032 () Bool)

(assert (=> b!2146032 (= e!1371602 e!1371608)))

(declare-fun mapNonEmpty!13430 () Bool)

(assert (=> mapNonEmpty!13430 (= mapRes!13430 true)))

(declare-fun mapRest!13430 () (Array (_ BitVec 32) List!24560))

(declare-fun mapKey!13430 () (_ BitVec 32))

(declare-fun mapValue!13429 () List!24560)

(assert (=> mapNonEmpty!13430 (= (arr!4252 (_values!3107 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798894)))))))) (store mapRest!13430 mapKey!13430 mapValue!13429))))

(declare-fun b!2146033 () Bool)

(assert (=> b!2146033 (= e!1371597 setRes!16725)))

(declare-fun condSetEmpty!16725 () Bool)

(assert (=> b!2146033 (= condSetEmpty!16725 (= (z!5905 (h!29879 (_2!14411 (_1!14414 lt!798894)))) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun b!2146034 () Bool)

(assert (=> b!2146034 (= e!1371603 e!1371605)))

(assert (= (and b!2146033 condSetEmpty!16725) setIsEmpty!16725))

(assert (= (and b!2146033 (not condSetEmpty!16725)) setNonEmpty!16725))

(assert (= b!2146023 b!2146033))

(assert (= (and b!2146012 ((_ is Cons!24478) (_2!14411 (_1!14414 lt!798894)))) b!2146023))

(assert (= (and b!2146026 condMapEmpty!13430) mapIsEmpty!13430))

(assert (= (and b!2146026 (not condMapEmpty!13430)) mapNonEmpty!13429))

(assert (= b!2146029 b!2146026))

(assert (= b!2146021 b!2146029))

(assert (= b!2146030 b!2146021))

(assert (= (and b!2146025 ((_ is LongMap!2826) (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798894)))))) b!2146030))

(assert (= b!2146027 b!2146025))

(assert (= (and b!2146031 ((_ is HashMap!2740) (cache!3121 (_2!14414 lt!798894)))) b!2146027))

(assert (= b!2146012 b!2146031))

(assert (= (and b!2146024 condMapEmpty!13429) mapIsEmpty!13429))

(assert (= (and b!2146024 (not condMapEmpty!13429)) mapNonEmpty!13430))

(assert (= b!2146032 b!2146024))

(assert (= b!2146028 b!2146032))

(assert (= b!2146020 b!2146028))

(assert (= (and b!2146019 ((_ is LongMap!2827) (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798894)))))) b!2146020))

(assert (= b!2146022 b!2146019))

(assert (= (and b!2146034 ((_ is HashMap!2741) (cache!3122 (_3!2237 lt!798894)))) b!2146022))

(assert (= b!2146012 b!2146034))

(assert (=> b!2146029 (< (dynLambda!11376 order!14789 (defaultEntry!3191 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798894)))))))) (dynLambda!11377 order!14791 lambda!80573))))

(assert (=> b!2146027 (< (dynLambda!11378 order!14793 (defaultValue!2902 (cache!3121 (_2!14414 lt!798894)))) (dynLambda!11377 order!14791 lambda!80573))))

(assert (=> b!2146032 (< (dynLambda!11379 order!14795 (defaultEntry!3192 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798894)))))))) (dynLambda!11377 order!14791 lambda!80573))))

(assert (=> b!2146022 (< (dynLambda!11380 order!14797 (defaultValue!2903 (cache!3122 (_3!2237 lt!798894)))) (dynLambda!11377 order!14791 lambda!80573))))

(declare-fun m!2589693 () Bool)

(assert (=> mapNonEmpty!13429 m!2589693))

(declare-fun m!2589695 () Bool)

(assert (=> mapNonEmpty!13430 m!2589695))

(declare-fun bs!445402 () Bool)

(declare-fun b!2146011 () Bool)

(assert (= bs!445402 (and b!2146011 b!2145872)))

(declare-fun lambda!80574 () Int)

(assert (=> bs!445402 (not (= lambda!80574 lambda!80548))))

(declare-fun bs!445403 () Bool)

(assert (= bs!445403 (and b!2146011 b!2145898)))

(assert (=> bs!445403 (not (= lambda!80574 lambda!80549))))

(declare-fun bs!445404 () Bool)

(assert (= bs!445404 (and b!2146011 d!645161)))

(assert (=> bs!445404 (not (= lambda!80574 lambda!80554))))

(assert (=> bs!445404 (not (= lambda!80574 lambda!80555))))

(declare-fun bs!445405 () Bool)

(assert (= bs!445405 (and b!2146011 b!2146009)))

(assert (=> bs!445405 (not (= lambda!80574 lambda!80572))))

(declare-fun bs!445406 () Bool)

(assert (= bs!445406 (and b!2146011 b!2146012)))

(assert (=> bs!445406 (not (= lambda!80574 lambda!80573))))

(declare-fun bs!445407 () Bool)

(assert (= bs!445407 (and b!2146011 b!2146016)))

(assert (=> bs!445407 (not (= lambda!80574 lambda!80571))))

(declare-fun bs!445408 () Bool)

(assert (= bs!445408 (and b!2146011 b!2145896)))

(assert (=> bs!445408 (= lambda!80574 lambda!80547)))

(declare-fun bs!445409 () Bool)

(assert (= bs!445409 (and b!2146011 d!645171)))

(assert (=> bs!445409 (not (= lambda!80574 lambda!80570))))

(declare-fun bs!445410 () Bool)

(assert (= bs!445410 (and b!2146011 b!2145886)))

(assert (=> bs!445410 (not (= lambda!80574 lambda!80546))))

(assert (=> b!2146011 true))

(declare-fun b!2146006 () Bool)

(declare-fun e!1371592 () tuple3!3534)

(declare-fun lt!798905 () Option!4953)

(assert (=> b!2146006 (= e!1371592 (tuple3!3535 (tuple2!24349 (v!29075 lt!798905) Nil!24478) (_2!14417 lt!798846) (_3!2239 lt!798846)))))

(declare-fun b!2146007 () Bool)

(declare-fun e!1371594 () Bool)

(assert (=> b!2146007 (= e!1371594 (lostCauseZipper!132 (_1!14417 lt!798846)))))

(declare-fun b!2146008 () Bool)

(declare-fun res!925954 () Bool)

(declare-fun e!1371595 () Bool)

(assert (=> b!2146008 (=> (not res!925954) (not e!1371595))))

(assert (=> b!2146008 (= res!925954 (valid!2203 cacheFurthestNullable!114))))

(declare-fun lt!798903 () tuple3!3534)

(declare-fun lt!798902 () Int)

(declare-fun lt!798901 () tuple3!3538)

(assert (=> b!2146009 (= lt!798903 (furthestNullablePositionStackMem!17 (_1!14417 lt!798901) (+ 1 from!1043 1) totalInput!851 totalInputSize!296 lt!798902 (Cons!24478 (StackFrame!273 (_1!14417 lt!798846) (+ 1 from!1043) lt!798842 lt!798893 totalInput!851) lt!798845) (_2!14417 lt!798901) (_3!2239 lt!798901) cacheFurthestNullable!114))))

(declare-fun lt!798900 () Unit!37715)

(declare-fun lt!798898 () Unit!37715)

(assert (=> b!2146009 (= lt!798900 lt!798898)))

(declare-fun call!128834 () Bool)

(assert (=> b!2146009 call!128834))

(declare-fun call!128832 () Unit!37715)

(assert (=> b!2146009 (= lt!798898 call!128832)))

(declare-fun lt!798897 () Unit!37715)

(declare-fun Unit!37717 () Unit!37715)

(assert (=> b!2146009 (= lt!798897 Unit!37717)))

(declare-fun call!128833 () Bool)

(assert (=> b!2146009 call!128833))

(assert (=> b!2146009 (= lt!798906 (furthestNullablePosition!93 (_1!14417 lt!798901) (+ 1 from!1043 1) totalInput!851 (size!19162 totalInput!851) lt!798902))))

(declare-fun e!1371596 () Int)

(assert (=> b!2146009 (= lt!798902 e!1371596)))

(declare-fun c!340759 () Bool)

(assert (=> b!2146009 (= c!340759 (nullableZipper!155 (_1!14417 lt!798901)))))

(assert (=> b!2146009 (= lt!798901 (derivationStepZipperMem!64 (_1!14417 lt!798846) (apply!5979 totalInput!851 (+ 1 from!1043)) (_2!14417 lt!798846) (_3!2239 lt!798846)))))

(declare-fun e!1371593 () tuple3!3534)

(assert (=> b!2146009 (= e!1371593 (tuple3!3535 (_1!14414 lt!798903) (_2!14414 lt!798903) (_3!2237 lt!798903)))))

(declare-fun b!2146010 () Bool)

(assert (=> b!2146010 (= e!1371596 lt!798842)))

(declare-fun bm!128827 () Bool)

(declare-fun c!340757 () Bool)

(assert (=> bm!128827 (= call!128834 (forall!4995 lt!798845 (ite c!340757 lambda!80570 lambda!80572)))))

(assert (=> b!2146011 (= e!1371595 (forall!4995 (_2!14411 (_1!14414 lt!798894)) lambda!80574))))

(declare-fun res!925952 () Bool)

(assert (=> b!2146012 (=> (not res!925952) (not e!1371595))))

(assert (=> b!2146012 (= res!925952 (forall!4995 (_2!14411 (_1!14414 lt!798894)) lambda!80573))))

(declare-fun b!2146014 () Bool)

(declare-fun res!925957 () Bool)

(assert (=> b!2146014 (=> (not res!925957) (not e!1371595))))

(assert (=> b!2146014 (= res!925957 (valid!2202 (_3!2237 lt!798894)))))

(declare-fun bm!128828 () Bool)

(assert (=> bm!128828 (= call!128833 (forall!4995 lt!798845 (ite c!340757 lambda!80571 lambda!80570)))))

(declare-fun bm!128829 () Bool)

(assert (=> bm!128829 (= call!128832 (lemmaStackPreservesForEqualRes!33 lt!798845 lt!798893 (ite c!340757 lt!798842 lt!798906)))))

(declare-fun b!2146015 () Bool)

(declare-fun res!925953 () Bool)

(assert (=> b!2146015 (=> (not res!925953) (not e!1371595))))

(assert (=> b!2146015 (= res!925953 (= (totalInput!3175 cacheFurthestNullable!114) totalInput!851))))

(declare-fun lt!798899 () Unit!37715)

(declare-fun lt!798896 () Unit!37715)

(assert (=> b!2146016 (= lt!798899 lt!798896)))

(assert (=> b!2146016 call!128833))

(assert (=> b!2146016 (= lt!798896 call!128832)))

(declare-fun lt!798904 () Unit!37715)

(declare-fun Unit!37718 () Unit!37715)

(assert (=> b!2146016 (= lt!798904 Unit!37718)))

(assert (=> b!2146016 call!128834))

(assert (=> b!2146016 (= e!1371593 (tuple3!3535 (tuple2!24349 lt!798842 lt!798845) (_2!14417 lt!798846) (_3!2239 lt!798846)))))

(declare-fun b!2146013 () Bool)

(assert (=> b!2146013 (= e!1371592 e!1371593)))

(declare-fun res!925955 () Bool)

(assert (=> b!2146013 (= res!925955 (= (+ 1 from!1043) totalInputSize!296))))

(assert (=> b!2146013 (=> res!925955 e!1371594)))

(assert (=> b!2146013 (= c!340757 e!1371594)))

(assert (=> d!645171 e!1371595))

(declare-fun res!925956 () Bool)

(assert (=> d!645171 (=> (not res!925956) (not e!1371595))))

(assert (=> d!645171 (= res!925956 (= (_1!14411 (_1!14414 lt!798894)) (furthestNullablePosition!93 (_1!14417 lt!798846) (+ 1 from!1043) totalInput!851 totalInputSize!296 lt!798842)))))

(assert (=> d!645171 (= lt!798894 e!1371592)))

(declare-fun c!340758 () Bool)

(assert (=> d!645171 (= c!340758 ((_ is Some!4952) lt!798905))))

(assert (=> d!645171 (= lt!798905 (get!7465 cacheFurthestNullable!114 (_1!14417 lt!798846) (+ 1 from!1043) lt!798842))))

(declare-fun lt!798895 () Unit!37715)

(declare-fun Unit!37719 () Unit!37715)

(assert (=> d!645171 (= lt!798895 Unit!37719)))

(assert (=> d!645171 (forall!4995 lt!798845 lambda!80570)))

(assert (=> d!645171 (= lt!798893 (furthestNullablePosition!93 (_1!14417 lt!798846) (+ 1 from!1043) totalInput!851 (size!19162 totalInput!851) lt!798842))))

(assert (=> d!645171 (and (>= (+ 1 from!1043) 0) (<= (+ 1 from!1043) totalInputSize!296))))

(assert (=> d!645171 (= (furthestNullablePositionStackMem!17 (_1!14417 lt!798846) (+ 1 from!1043) totalInput!851 totalInputSize!296 lt!798842 lt!798845 (_2!14417 lt!798846) (_3!2239 lt!798846) cacheFurthestNullable!114) lt!798894)))

(declare-fun b!2146017 () Bool)

(assert (=> b!2146017 (= e!1371596 (+ 1 from!1043))))

(declare-fun b!2146018 () Bool)

(declare-fun res!925951 () Bool)

(assert (=> b!2146018 (=> (not res!925951) (not e!1371595))))

(assert (=> b!2146018 (= res!925951 (valid!2204 (_2!14414 lt!798894)))))

(assert (= (and d!645171 c!340758) b!2146006))

(assert (= (and d!645171 (not c!340758)) b!2146013))

(assert (= (and b!2146013 (not res!925955)) b!2146007))

(assert (= (and b!2146013 c!340757) b!2146016))

(assert (= (and b!2146013 (not c!340757)) b!2146009))

(assert (= (and b!2146009 c!340759) b!2146017))

(assert (= (and b!2146009 (not c!340759)) b!2146010))

(assert (= (or b!2146016 b!2146009) bm!128828))

(assert (= (or b!2146016 b!2146009) bm!128827))

(assert (= (or b!2146016 b!2146009) bm!128829))

(assert (= (and d!645171 res!925956) b!2146012))

(assert (= (and b!2146012 res!925952) b!2146018))

(assert (= (and b!2146018 res!925951) b!2146014))

(assert (= (and b!2146014 res!925957) b!2146008))

(assert (= (and b!2146008 res!925954) b!2146015))

(assert (= (and b!2146015 res!925953) b!2146011))

(declare-fun m!2589697 () Bool)

(assert (=> b!2146018 m!2589697))

(declare-fun m!2589699 () Bool)

(assert (=> bm!128829 m!2589699))

(assert (=> b!2146008 m!2589627))

(declare-fun m!2589701 () Bool)

(assert (=> bm!128828 m!2589701))

(declare-fun m!2589703 () Bool)

(assert (=> b!2146009 m!2589703))

(assert (=> b!2146009 m!2589613))

(declare-fun m!2589705 () Bool)

(assert (=> b!2146009 m!2589705))

(assert (=> b!2146009 m!2589613))

(declare-fun m!2589707 () Bool)

(assert (=> b!2146009 m!2589707))

(assert (=> b!2146009 m!2589707))

(declare-fun m!2589709 () Bool)

(assert (=> b!2146009 m!2589709))

(declare-fun m!2589711 () Bool)

(assert (=> b!2146009 m!2589711))

(declare-fun m!2589713 () Bool)

(assert (=> bm!128827 m!2589713))

(assert (=> d!645171 m!2589613))

(assert (=> d!645171 m!2589613))

(declare-fun m!2589715 () Bool)

(assert (=> d!645171 m!2589715))

(declare-fun m!2589717 () Bool)

(assert (=> d!645171 m!2589717))

(declare-fun m!2589719 () Bool)

(assert (=> d!645171 m!2589719))

(declare-fun m!2589721 () Bool)

(assert (=> d!645171 m!2589721))

(declare-fun m!2589723 () Bool)

(assert (=> b!2146012 m!2589723))

(declare-fun m!2589725 () Bool)

(assert (=> b!2146007 m!2589725))

(declare-fun m!2589727 () Bool)

(assert (=> b!2146014 m!2589727))

(declare-fun m!2589729 () Bool)

(assert (=> b!2146011 m!2589729))

(assert (=> b!2145853 d!645171))

(declare-fun d!645173 () Bool)

(declare-fun res!925958 () Bool)

(declare-fun e!1371613 () Bool)

(assert (=> d!645173 (=> res!925958 e!1371613)))

(assert (=> d!645173 (= res!925958 ((_ is Nil!24478) lt!798845))))

(assert (=> d!645173 (= (forall!4995 lt!798845 lambda!80548) e!1371613)))

(declare-fun b!2146035 () Bool)

(declare-fun e!1371614 () Bool)

(assert (=> b!2146035 (= e!1371613 e!1371614)))

(declare-fun res!925959 () Bool)

(assert (=> b!2146035 (=> (not res!925959) (not e!1371614))))

(assert (=> b!2146035 (= res!925959 (dynLambda!11381 lambda!80548 (h!29879 lt!798845)))))

(declare-fun b!2146036 () Bool)

(assert (=> b!2146036 (= e!1371614 (forall!4995 (t!197092 lt!798845) lambda!80548))))

(assert (= (and d!645173 (not res!925958)) b!2146035))

(assert (= (and b!2146035 res!925959) b!2146036))

(declare-fun b_lambda!70713 () Bool)

(assert (=> (not b_lambda!70713) (not b!2146035)))

(declare-fun m!2589731 () Bool)

(assert (=> b!2146035 m!2589731))

(declare-fun m!2589733 () Bool)

(assert (=> b!2146036 m!2589733))

(assert (=> b!2145888 d!645173))

(declare-fun d!645175 () Bool)

(declare-fun c!340762 () Bool)

(assert (=> d!645175 (= c!340762 ((_ is Node!7939) (c!340744 totalInput!851)))))

(declare-fun e!1371619 () Bool)

(assert (=> d!645175 (= (inv!32191 (c!340744 totalInput!851)) e!1371619)))

(declare-fun b!2146043 () Bool)

(declare-fun inv!32198 (Conc!7939) Bool)

(assert (=> b!2146043 (= e!1371619 (inv!32198 (c!340744 totalInput!851)))))

(declare-fun b!2146044 () Bool)

(declare-fun e!1371620 () Bool)

(assert (=> b!2146044 (= e!1371619 e!1371620)))

(declare-fun res!925962 () Bool)

(assert (=> b!2146044 (= res!925962 (not ((_ is Leaf!11608) (c!340744 totalInput!851))))))

(assert (=> b!2146044 (=> res!925962 e!1371620)))

(declare-fun b!2146045 () Bool)

(declare-fun inv!32199 (Conc!7939) Bool)

(assert (=> b!2146045 (= e!1371620 (inv!32199 (c!340744 totalInput!851)))))

(assert (= (and d!645175 c!340762) b!2146043))

(assert (= (and d!645175 (not c!340762)) b!2146044))

(assert (= (and b!2146044 (not res!925962)) b!2146045))

(declare-fun m!2589735 () Bool)

(assert (=> b!2146043 m!2589735))

(declare-fun m!2589737 () Bool)

(assert (=> b!2146045 m!2589737))

(assert (=> b!2145852 d!645175))

(declare-fun d!645177 () Bool)

(declare-fun e!1371623 () Bool)

(assert (=> d!645177 e!1371623))

(declare-fun res!925965 () Bool)

(assert (=> d!645177 (=> res!925965 e!1371623)))

(declare-fun lt!798911 () Option!4953)

(declare-fun isEmpty!14337 (Option!4953) Bool)

(assert (=> d!645177 (= res!925965 (isEmpty!14337 lt!798911))))

(declare-fun choose!12695 (CacheFurthestNullable!842 (InoxSet Context!2746) Int Int) Option!4953)

(assert (=> d!645177 (= lt!798911 (choose!12695 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))

(assert (=> d!645177 (and (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043))))

(assert (=> d!645177 (= (get!7465 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123) lt!798911)))

(declare-fun b!2146048 () Bool)

(declare-fun get!7466 (Option!4953) Int)

(assert (=> b!2146048 (= e!1371623 (= (get!7466 lt!798911) (furthestNullablePosition!93 z!3839 from!1043 (totalInput!3175 cacheFurthestNullable!114) (size!19162 (totalInput!3175 cacheFurthestNullable!114)) lastNullablePos!123)))))

(assert (= (and d!645177 (not res!925965)) b!2146048))

(declare-fun m!2589739 () Bool)

(assert (=> d!645177 m!2589739))

(declare-fun m!2589741 () Bool)

(assert (=> d!645177 m!2589741))

(declare-fun m!2589743 () Bool)

(assert (=> b!2146048 m!2589743))

(declare-fun m!2589745 () Bool)

(assert (=> b!2146048 m!2589745))

(assert (=> b!2146048 m!2589745))

(declare-fun m!2589747 () Bool)

(assert (=> b!2146048 m!2589747))

(assert (=> b!2145892 d!645177))

(assert (=> b!2145892 d!645163))

(declare-fun d!645179 () Bool)

(declare-fun lt!798914 () Int)

(declare-fun size!19163 (List!24561) Int)

(declare-fun list!9554 (BalanceConc!15640) List!24561)

(assert (=> d!645179 (= lt!798914 (size!19163 (list!9554 totalInput!851)))))

(declare-fun size!19164 (Conc!7939) Int)

(assert (=> d!645179 (= lt!798914 (size!19164 (c!340744 totalInput!851)))))

(assert (=> d!645179 (= (size!19162 totalInput!851) lt!798914)))

(declare-fun bs!445411 () Bool)

(assert (= bs!445411 d!645179))

(declare-fun m!2589749 () Bool)

(assert (=> bs!445411 m!2589749))

(assert (=> bs!445411 m!2589749))

(declare-fun m!2589751 () Bool)

(assert (=> bs!445411 m!2589751))

(declare-fun m!2589753 () Bool)

(assert (=> bs!445411 m!2589753))

(assert (=> b!2145855 d!645179))

(declare-fun b!2146049 () Bool)

(declare-fun e!1371625 () Bool)

(assert (=> b!2146049 (= e!1371625 (lostCauseZipper!132 (_1!14417 lt!798846)))))

(declare-fun b!2146050 () Bool)

(declare-fun e!1371624 () Int)

(assert (=> b!2146050 (= e!1371624 (+ 1 from!1043))))

(declare-fun d!645181 () Bool)

(declare-fun lt!798915 () Int)

(assert (=> d!645181 (and (>= lt!798915 (- 1)) (< lt!798915 lt!798841) (>= lt!798915 lt!798842) (or (= lt!798915 lt!798842) (>= lt!798915 (+ 1 from!1043))))))

(declare-fun e!1371626 () Int)

(assert (=> d!645181 (= lt!798915 e!1371626)))

(declare-fun c!340764 () Bool)

(assert (=> d!645181 (= c!340764 e!1371625)))

(declare-fun res!925966 () Bool)

(assert (=> d!645181 (=> res!925966 e!1371625)))

(assert (=> d!645181 (= res!925966 (= (+ 1 from!1043) lt!798841))))

(assert (=> d!645181 (and (>= (+ 1 from!1043) 0) (<= (+ 1 from!1043) lt!798841))))

(assert (=> d!645181 (= (furthestNullablePosition!93 (_1!14417 lt!798846) (+ 1 from!1043) totalInput!851 lt!798841 lt!798842) lt!798915)))

(declare-fun b!2146051 () Bool)

(assert (=> b!2146051 (= e!1371624 lt!798842)))

(declare-fun b!2146052 () Bool)

(declare-fun lt!798916 () (InoxSet Context!2746))

(assert (=> b!2146052 (= e!1371626 (furthestNullablePosition!93 lt!798916 (+ 1 from!1043 1) totalInput!851 lt!798841 e!1371624))))

(assert (=> b!2146052 (= lt!798916 (derivationStepZipper!99 (_1!14417 lt!798846) (apply!5979 totalInput!851 (+ 1 from!1043))))))

(declare-fun c!340763 () Bool)

(assert (=> b!2146052 (= c!340763 (nullableZipper!155 lt!798916))))

(declare-fun b!2146053 () Bool)

(assert (=> b!2146053 (= e!1371626 lt!798842)))

(assert (= (and d!645181 (not res!925966)) b!2146049))

(assert (= (and d!645181 c!340764) b!2146053))

(assert (= (and d!645181 (not c!340764)) b!2146052))

(assert (= (and b!2146052 c!340763) b!2146050))

(assert (= (and b!2146052 (not c!340763)) b!2146051))

(assert (=> b!2146049 m!2589725))

(declare-fun m!2589755 () Bool)

(assert (=> b!2146052 m!2589755))

(assert (=> b!2146052 m!2589707))

(assert (=> b!2146052 m!2589707))

(declare-fun m!2589757 () Bool)

(assert (=> b!2146052 m!2589757))

(declare-fun m!2589759 () Bool)

(assert (=> b!2146052 m!2589759))

(assert (=> b!2145856 d!645181))

(declare-fun d!645183 () Bool)

(declare-fun lambda!80577 () Int)

(declare-fun exists!717 ((InoxSet Context!2746) Int) Bool)

(assert (=> d!645183 (= (nullableZipper!155 (_1!14417 lt!798846)) (exists!717 (_1!14417 lt!798846) lambda!80577))))

(declare-fun bs!445412 () Bool)

(assert (= bs!445412 d!645183))

(declare-fun m!2589761 () Bool)

(assert (=> bs!445412 m!2589761))

(assert (=> b!2145856 d!645183))

(declare-fun d!645185 () Bool)

(declare-fun e!1371629 () Bool)

(assert (=> d!645185 e!1371629))

(declare-fun res!925971 () Bool)

(assert (=> d!645185 (=> (not res!925971) (not e!1371629))))

(declare-fun lt!798919 () tuple3!3538)

(assert (=> d!645185 (= res!925971 (= (_1!14417 lt!798919) (derivationStepZipper!99 z!3839 (apply!5979 totalInput!851 from!1043))))))

(declare-fun choose!12696 ((InoxSet Context!2746) C!11752 CacheUp!1884 CacheDown!1878) tuple3!3538)

(assert (=> d!645185 (= lt!798919 (choose!12696 z!3839 (apply!5979 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(assert (=> d!645185 (= (derivationStepZipperMem!64 z!3839 (apply!5979 totalInput!851 from!1043) cacheUp!979 cacheDown!1098) lt!798919)))

(declare-fun b!2146058 () Bool)

(declare-fun res!925972 () Bool)

(assert (=> b!2146058 (=> (not res!925972) (not e!1371629))))

(assert (=> b!2146058 (= res!925972 (valid!2204 (_2!14417 lt!798919)))))

(declare-fun b!2146059 () Bool)

(assert (=> b!2146059 (= e!1371629 (valid!2202 (_3!2239 lt!798919)))))

(assert (= (and d!645185 res!925971) b!2146058))

(assert (= (and b!2146058 res!925972) b!2146059))

(assert (=> d!645185 m!2589587))

(assert (=> d!645185 m!2589689))

(assert (=> d!645185 m!2589587))

(declare-fun m!2589763 () Bool)

(assert (=> d!645185 m!2589763))

(declare-fun m!2589765 () Bool)

(assert (=> b!2146058 m!2589765))

(declare-fun m!2589767 () Bool)

(assert (=> b!2146059 m!2589767))

(assert (=> b!2145856 d!645185))

(declare-fun d!645187 () Bool)

(declare-fun lt!798922 () C!11752)

(declare-fun apply!5980 (List!24561 Int) C!11752)

(assert (=> d!645187 (= lt!798922 (apply!5980 (list!9554 totalInput!851) from!1043))))

(declare-fun apply!5981 (Conc!7939 Int) C!11752)

(assert (=> d!645187 (= lt!798922 (apply!5981 (c!340744 totalInput!851) from!1043))))

(declare-fun e!1371632 () Bool)

(assert (=> d!645187 e!1371632))

(declare-fun res!925975 () Bool)

(assert (=> d!645187 (=> (not res!925975) (not e!1371632))))

(assert (=> d!645187 (= res!925975 (<= 0 from!1043))))

(assert (=> d!645187 (= (apply!5979 totalInput!851 from!1043) lt!798922)))

(declare-fun b!2146062 () Bool)

(assert (=> b!2146062 (= e!1371632 (< from!1043 (size!19162 totalInput!851)))))

(assert (= (and d!645187 res!925975) b!2146062))

(assert (=> d!645187 m!2589749))

(assert (=> d!645187 m!2589749))

(declare-fun m!2589769 () Bool)

(assert (=> d!645187 m!2589769))

(declare-fun m!2589771 () Bool)

(assert (=> d!645187 m!2589771))

(assert (=> b!2146062 m!2589613))

(assert (=> b!2145856 d!645187))

(declare-fun d!645189 () Bool)

(declare-fun lambda!80580 () Int)

(declare-fun forall!4996 (List!24559 Int) Bool)

(assert (=> d!645189 (= (inv!32196 setElem!16720) (forall!4996 (exprs!1873 setElem!16720) lambda!80580))))

(declare-fun bs!445413 () Bool)

(assert (= bs!445413 d!645189))

(declare-fun m!2589773 () Bool)

(assert (=> bs!445413 m!2589773))

(assert (=> setNonEmpty!16720 d!645189))

(declare-fun d!645191 () Bool)

(declare-fun res!925976 () Bool)

(declare-fun e!1371633 () Bool)

(assert (=> d!645191 (=> res!925976 e!1371633)))

(assert (=> d!645191 (= res!925976 ((_ is Nil!24478) lt!798845))))

(assert (=> d!645191 (= (forall!4995 lt!798845 lambda!80547) e!1371633)))

(declare-fun b!2146063 () Bool)

(declare-fun e!1371634 () Bool)

(assert (=> b!2146063 (= e!1371633 e!1371634)))

(declare-fun res!925977 () Bool)

(assert (=> b!2146063 (=> (not res!925977) (not e!1371634))))

(assert (=> b!2146063 (= res!925977 (dynLambda!11381 lambda!80547 (h!29879 lt!798845)))))

(declare-fun b!2146064 () Bool)

(assert (=> b!2146064 (= e!1371634 (forall!4995 (t!197092 lt!798845) lambda!80547))))

(assert (= (and d!645191 (not res!925976)) b!2146063))

(assert (= (and b!2146063 res!925977) b!2146064))

(declare-fun b_lambda!70715 () Bool)

(assert (=> (not b_lambda!70715) (not b!2146063)))

(declare-fun m!2589775 () Bool)

(assert (=> b!2146063 m!2589775))

(declare-fun m!2589777 () Bool)

(assert (=> b!2146064 m!2589777))

(assert (=> b!2145854 d!645191))

(declare-fun bs!445414 () Bool)

(declare-fun d!645193 () Bool)

(assert (= bs!445414 (and d!645193 d!645189)))

(declare-fun lambda!80581 () Int)

(assert (=> bs!445414 (= lambda!80581 lambda!80580)))

(assert (=> d!645193 (= (inv!32196 setElem!16721) (forall!4996 (exprs!1873 setElem!16721) lambda!80581))))

(declare-fun bs!445415 () Bool)

(assert (= bs!445415 d!645193))

(declare-fun m!2589779 () Bool)

(assert (=> bs!445415 m!2589779))

(assert (=> setNonEmpty!16721 d!645193))

(declare-fun d!645195 () Bool)

(assert (=> d!645195 (= (array_inv!3040 (_keys!3124 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098))))))) (bvsge (size!19158 (_keys!3124 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2145867 d!645195))

(declare-fun d!645197 () Bool)

(assert (=> d!645197 (= (array_inv!3042 (_values!3107 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098))))))) (bvsge (size!19160 (_values!3107 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098))))))) #b00000000000000000000000000000000))))

(assert (=> b!2145867 d!645197))

(declare-fun bs!445416 () Bool)

(declare-fun d!645199 () Bool)

(assert (= bs!445416 (and d!645199 d!645183)))

(declare-fun lambda!80594 () Int)

(assert (=> bs!445416 (not (= lambda!80594 lambda!80577))))

(declare-fun bs!445417 () Bool)

(declare-fun b!2146069 () Bool)

(assert (= bs!445417 (and b!2146069 d!645183)))

(declare-fun lambda!80595 () Int)

(assert (=> bs!445417 (not (= lambda!80595 lambda!80577))))

(declare-fun bs!445418 () Bool)

(assert (= bs!445418 (and b!2146069 d!645199)))

(assert (=> bs!445418 (not (= lambda!80595 lambda!80594))))

(declare-fun bs!445419 () Bool)

(declare-fun b!2146070 () Bool)

(assert (= bs!445419 (and b!2146070 d!645183)))

(declare-fun lambda!80596 () Int)

(assert (=> bs!445419 (not (= lambda!80596 lambda!80577))))

(declare-fun bs!445420 () Bool)

(assert (= bs!445420 (and b!2146070 d!645199)))

(assert (=> bs!445420 (not (= lambda!80596 lambda!80594))))

(declare-fun bs!445421 () Bool)

(assert (= bs!445421 (and b!2146070 b!2146069)))

(assert (=> bs!445421 (= lambda!80596 lambda!80595)))

(declare-fun e!1371641 () Unit!37715)

(declare-fun Unit!37720 () Unit!37715)

(assert (=> b!2146069 (= e!1371641 Unit!37720)))

(declare-datatypes ((List!24565 0))(
  ( (Nil!24481) (Cons!24481 (h!29882 Context!2746) (t!197095 List!24565)) )
))
(declare-fun lt!798943 () List!24565)

(declare-fun call!128839 () List!24565)

(assert (=> b!2146069 (= lt!798943 call!128839)))

(declare-fun lt!798942 () Unit!37715)

(declare-fun lemmaNotForallThenExists!23 (List!24565 Int) Unit!37715)

(assert (=> b!2146069 (= lt!798942 (lemmaNotForallThenExists!23 lt!798943 lambda!80594))))

(declare-fun call!128840 () Bool)

(assert (=> b!2146069 call!128840))

(declare-fun lt!798939 () Unit!37715)

(assert (=> b!2146069 (= lt!798939 lt!798942)))

(declare-fun lt!798944 () Bool)

(declare-datatypes ((Option!4954 0))(
  ( (None!4953) (Some!4953 (v!29076 List!24561)) )
))
(declare-fun isEmpty!14338 (Option!4954) Bool)

(declare-fun getLanguageWitness!108 ((InoxSet Context!2746)) Option!4954)

(assert (=> d!645199 (= lt!798944 (isEmpty!14338 (getLanguageWitness!108 z!3839)))))

(declare-fun forall!4997 ((InoxSet Context!2746) Int) Bool)

(assert (=> d!645199 (= lt!798944 (forall!4997 z!3839 lambda!80594))))

(declare-fun lt!798945 () Unit!37715)

(assert (=> d!645199 (= lt!798945 e!1371641)))

(declare-fun c!340777 () Bool)

(assert (=> d!645199 (= c!340777 (not (forall!4997 z!3839 lambda!80594)))))

(assert (=> d!645199 (= (lostCauseZipper!132 z!3839) lt!798944)))

(declare-fun Unit!37721 () Unit!37715)

(assert (=> b!2146070 (= e!1371641 Unit!37721)))

(declare-fun lt!798940 () List!24565)

(assert (=> b!2146070 (= lt!798940 call!128839)))

(declare-fun lt!798941 () Unit!37715)

(declare-fun lemmaForallThenNotExists!23 (List!24565 Int) Unit!37715)

(assert (=> b!2146070 (= lt!798941 (lemmaForallThenNotExists!23 lt!798940 lambda!80594))))

(assert (=> b!2146070 (not call!128840)))

(declare-fun lt!798946 () Unit!37715)

(assert (=> b!2146070 (= lt!798946 lt!798941)))

(declare-fun bm!128835 () Bool)

(declare-fun toList!1083 ((InoxSet Context!2746)) List!24565)

(assert (=> bm!128835 (= call!128839 (toList!1083 z!3839))))

(declare-fun bm!128834 () Bool)

(declare-fun exists!718 (List!24565 Int) Bool)

(assert (=> bm!128834 (= call!128840 (exists!718 (ite c!340777 lt!798943 lt!798940) (ite c!340777 lambda!80595 lambda!80596)))))

(assert (= (and d!645199 c!340777) b!2146069))

(assert (= (and d!645199 (not c!340777)) b!2146070))

(assert (= (or b!2146069 b!2146070) bm!128834))

(assert (= (or b!2146069 b!2146070) bm!128835))

(declare-fun m!2589781 () Bool)

(assert (=> bm!128834 m!2589781))

(declare-fun m!2589783 () Bool)

(assert (=> bm!128835 m!2589783))

(declare-fun m!2589785 () Bool)

(assert (=> b!2146069 m!2589785))

(declare-fun m!2589787 () Bool)

(assert (=> b!2146070 m!2589787))

(declare-fun m!2589789 () Bool)

(assert (=> d!645199 m!2589789))

(assert (=> d!645199 m!2589789))

(declare-fun m!2589791 () Bool)

(assert (=> d!645199 m!2589791))

(declare-fun m!2589793 () Bool)

(assert (=> d!645199 m!2589793))

(assert (=> d!645199 m!2589793))

(assert (=> b!2145870 d!645199))

(assert (=> b!2145886 d!645163))

(declare-fun b!2146071 () Bool)

(declare-fun e!1371643 () Bool)

(assert (=> b!2146071 (= e!1371643 (lostCauseZipper!132 z!3839))))

(declare-fun b!2146072 () Bool)

(declare-fun e!1371642 () Int)

(assert (=> b!2146072 (= e!1371642 from!1043)))

(declare-fun lt!798947 () Int)

(declare-fun d!645201 () Bool)

(assert (=> d!645201 (and (>= lt!798947 (- 1)) (< lt!798947 lt!798841) (>= lt!798947 lastNullablePos!123) (or (= lt!798947 lastNullablePos!123) (>= lt!798947 from!1043)))))

(declare-fun e!1371644 () Int)

(assert (=> d!645201 (= lt!798947 e!1371644)))

(declare-fun c!340779 () Bool)

(assert (=> d!645201 (= c!340779 e!1371643)))

(declare-fun res!925978 () Bool)

(assert (=> d!645201 (=> res!925978 e!1371643)))

(assert (=> d!645201 (= res!925978 (= from!1043 lt!798841))))

(assert (=> d!645201 (and (>= from!1043 0) (<= from!1043 lt!798841))))

(assert (=> d!645201 (= (furthestNullablePosition!93 z!3839 from!1043 totalInput!851 lt!798841 lastNullablePos!123) lt!798947)))

(declare-fun b!2146073 () Bool)

(assert (=> b!2146073 (= e!1371642 lastNullablePos!123)))

(declare-fun lt!798948 () (InoxSet Context!2746))

(declare-fun b!2146074 () Bool)

(assert (=> b!2146074 (= e!1371644 (furthestNullablePosition!93 lt!798948 (+ from!1043 1) totalInput!851 lt!798841 e!1371642))))

(assert (=> b!2146074 (= lt!798948 (derivationStepZipper!99 z!3839 (apply!5979 totalInput!851 from!1043)))))

(declare-fun c!340778 () Bool)

(assert (=> b!2146074 (= c!340778 (nullableZipper!155 lt!798948))))

(declare-fun b!2146075 () Bool)

(assert (=> b!2146075 (= e!1371644 lastNullablePos!123)))

(assert (= (and d!645201 (not res!925978)) b!2146071))

(assert (= (and d!645201 c!340779) b!2146075))

(assert (= (and d!645201 (not c!340779)) b!2146074))

(assert (= (and b!2146074 c!340778) b!2146072))

(assert (= (and b!2146074 (not c!340778)) b!2146073))

(assert (=> b!2146071 m!2589649))

(declare-fun m!2589795 () Bool)

(assert (=> b!2146074 m!2589795))

(assert (=> b!2146074 m!2589587))

(assert (=> b!2146074 m!2589587))

(assert (=> b!2146074 m!2589689))

(declare-fun m!2589797 () Bool)

(assert (=> b!2146074 m!2589797))

(assert (=> b!2145886 d!645201))

(declare-fun d!645203 () Bool)

(declare-fun validCacheMapFurthestNullable!110 (MutableMap!2742 BalanceConc!15640) Bool)

(assert (=> d!645203 (= (valid!2203 cacheFurthestNullable!114) (validCacheMapFurthestNullable!110 (cache!3123 cacheFurthestNullable!114) (totalInput!3175 cacheFurthestNullable!114)))))

(declare-fun bs!445422 () Bool)

(assert (= bs!445422 d!645203))

(declare-fun m!2589799 () Bool)

(assert (=> bs!445422 m!2589799))

(assert (=> b!2145880 d!645203))

(declare-fun d!645205 () Bool)

(declare-fun c!340780 () Bool)

(assert (=> d!645205 (= c!340780 ((_ is Node!7939) (c!340744 (totalInput!3174 (h!29879 stack!8)))))))

(declare-fun e!1371645 () Bool)

(assert (=> d!645205 (= (inv!32191 (c!340744 (totalInput!3174 (h!29879 stack!8)))) e!1371645)))

(declare-fun b!2146076 () Bool)

(assert (=> b!2146076 (= e!1371645 (inv!32198 (c!340744 (totalInput!3174 (h!29879 stack!8)))))))

(declare-fun b!2146077 () Bool)

(declare-fun e!1371646 () Bool)

(assert (=> b!2146077 (= e!1371645 e!1371646)))

(declare-fun res!925979 () Bool)

(assert (=> b!2146077 (= res!925979 (not ((_ is Leaf!11608) (c!340744 (totalInput!3174 (h!29879 stack!8))))))))

(assert (=> b!2146077 (=> res!925979 e!1371646)))

(declare-fun b!2146078 () Bool)

(assert (=> b!2146078 (= e!1371646 (inv!32199 (c!340744 (totalInput!3174 (h!29879 stack!8)))))))

(assert (= (and d!645205 c!340780) b!2146076))

(assert (= (and d!645205 (not c!340780)) b!2146077))

(assert (= (and b!2146077 (not res!925979)) b!2146078))

(declare-fun m!2589801 () Bool)

(assert (=> b!2146076 m!2589801))

(declare-fun m!2589803 () Bool)

(assert (=> b!2146078 m!2589803))

(assert (=> b!2145878 d!645205))

(declare-fun d!645207 () Bool)

(assert (=> d!645207 (= (array_inv!3040 (_keys!3123 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979))))))) (bvsge (size!19158 (_keys!3123 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2145879 d!645207))

(declare-fun d!645209 () Bool)

(assert (=> d!645209 (= (array_inv!3043 (_values!3106 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979))))))) (bvsge (size!19159 (_values!3106 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979))))))) #b00000000000000000000000000000000))))

(assert (=> b!2145879 d!645209))

(declare-fun d!645211 () Bool)

(declare-fun res!925982 () Bool)

(declare-fun e!1371649 () Bool)

(assert (=> d!645211 (=> (not res!925982) (not e!1371649))))

(assert (=> d!645211 (= res!925982 ((_ is HashMap!2742) (cache!3123 cacheFurthestNullable!114)))))

(assert (=> d!645211 (= (inv!32192 cacheFurthestNullable!114) e!1371649)))

(declare-fun b!2146081 () Bool)

(assert (=> b!2146081 (= e!1371649 (validCacheMapFurthestNullable!110 (cache!3123 cacheFurthestNullable!114) (totalInput!3175 cacheFurthestNullable!114)))))

(assert (= (and d!645211 res!925982) b!2146081))

(assert (=> b!2146081 m!2589799))

(assert (=> start!208128 d!645211))

(declare-fun d!645213 () Bool)

(declare-fun res!925985 () Bool)

(declare-fun e!1371652 () Bool)

(assert (=> d!645213 (=> (not res!925985) (not e!1371652))))

(assert (=> d!645213 (= res!925985 ((_ is HashMap!2741) (cache!3122 cacheDown!1098)))))

(assert (=> d!645213 (= (inv!32193 cacheDown!1098) e!1371652)))

(declare-fun b!2146084 () Bool)

(assert (=> b!2146084 (= e!1371652 (validCacheMapDown!258 (cache!3122 cacheDown!1098)))))

(assert (= (and d!645213 res!925985) b!2146084))

(assert (=> b!2146084 m!2589683))

(assert (=> start!208128 d!645213))

(declare-fun d!645215 () Bool)

(declare-fun res!925988 () Bool)

(declare-fun e!1371655 () Bool)

(assert (=> d!645215 (=> (not res!925988) (not e!1371655))))

(assert (=> d!645215 (= res!925988 ((_ is HashMap!2740) (cache!3121 cacheUp!979)))))

(assert (=> d!645215 (= (inv!32194 cacheUp!979) e!1371655)))

(declare-fun b!2146087 () Bool)

(assert (=> b!2146087 (= e!1371655 (validCacheMapUp!260 (cache!3121 cacheUp!979)))))

(assert (= (and d!645215 res!925988) b!2146087))

(declare-fun m!2589805 () Bool)

(assert (=> b!2146087 m!2589805))

(assert (=> start!208128 d!645215))

(declare-fun d!645217 () Bool)

(declare-fun isBalanced!2464 (Conc!7939) Bool)

(assert (=> d!645217 (= (inv!32195 totalInput!851) (isBalanced!2464 (c!340744 totalInput!851)))))

(declare-fun bs!445423 () Bool)

(assert (= bs!445423 d!645217))

(declare-fun m!2589807 () Bool)

(assert (=> bs!445423 m!2589807))

(assert (=> start!208128 d!645217))

(declare-fun b!2146100 () Bool)

(declare-fun e!1371660 () Bool)

(assert (=> b!2146100 (= e!1371660 (= (lastNullablePos!456 (h!29879 stack!8)) (- (from!2769 (h!29879 stack!8)) 1)))))

(declare-fun b!2146101 () Bool)

(declare-fun res!926004 () Bool)

(declare-fun e!1371661 () Bool)

(assert (=> b!2146101 (=> (not res!926004) (not e!1371661))))

(assert (=> b!2146101 (= res!926004 (= (size!19162 (totalInput!3174 (h!29879 stack!8))) (size!19162 (totalInput!3174 (h!29879 stack!8)))))))

(declare-fun d!645219 () Bool)

(declare-fun res!926001 () Bool)

(assert (=> d!645219 (=> (not res!926001) (not e!1371661))))

(assert (=> d!645219 (= res!926001 (>= (from!2769 (h!29879 stack!8)) 0))))

(assert (=> d!645219 (= (inv!32197 (h!29879 stack!8)) e!1371661)))

(declare-fun b!2146102 () Bool)

(declare-fun res!926005 () Bool)

(assert (=> b!2146102 (=> (not res!926005) (not e!1371661))))

(assert (=> b!2146102 (= res!926005 e!1371660)))

(declare-fun res!926003 () Bool)

(assert (=> b!2146102 (=> res!926003 e!1371660)))

(assert (=> b!2146102 (= res!926003 (not (nullableZipper!155 (z!5905 (h!29879 stack!8)))))))

(declare-fun b!2146103 () Bool)

(declare-fun res!926006 () Bool)

(assert (=> b!2146103 (=> (not res!926006) (not e!1371661))))

(assert (=> b!2146103 (= res!926006 (<= (from!2769 (h!29879 stack!8)) (size!19162 (totalInput!3174 (h!29879 stack!8)))))))

(declare-fun b!2146104 () Bool)

(assert (=> b!2146104 (= e!1371661 (= (res!925925 (h!29879 stack!8)) (furthestNullablePosition!93 (z!5905 (h!29879 stack!8)) (from!2769 (h!29879 stack!8)) (totalInput!3174 (h!29879 stack!8)) (size!19162 (totalInput!3174 (h!29879 stack!8))) (lastNullablePos!456 (h!29879 stack!8)))))))

(declare-fun b!2146105 () Bool)

(declare-fun res!926002 () Bool)

(assert (=> b!2146105 (=> (not res!926002) (not e!1371661))))

(assert (=> b!2146105 (= res!926002 (and (>= (lastNullablePos!456 (h!29879 stack!8)) (- 1)) (< (lastNullablePos!456 (h!29879 stack!8)) (from!2769 (h!29879 stack!8)))))))

(assert (= (and d!645219 res!926001) b!2146103))

(assert (= (and b!2146103 res!926006) b!2146101))

(assert (= (and b!2146101 res!926004) b!2146105))

(assert (= (and b!2146105 res!926002) b!2146102))

(assert (= (and b!2146102 (not res!926003)) b!2146100))

(assert (= (and b!2146102 res!926005) b!2146104))

(declare-fun m!2589809 () Bool)

(assert (=> b!2146101 m!2589809))

(declare-fun m!2589811 () Bool)

(assert (=> b!2146102 m!2589811))

(assert (=> b!2146103 m!2589809))

(assert (=> b!2146104 m!2589809))

(assert (=> b!2146104 m!2589809))

(declare-fun m!2589813 () Bool)

(assert (=> b!2146104 m!2589813))

(assert (=> b!2145901 d!645219))

(declare-fun d!645221 () Bool)

(assert (=> d!645221 (= (valid!2204 cacheUp!979) (validCacheMapUp!260 (cache!3121 cacheUp!979)))))

(declare-fun bs!445424 () Bool)

(assert (= bs!445424 d!645221))

(assert (=> bs!445424 m!2589805))

(assert (=> b!2145899 d!645221))

(declare-fun d!645223 () Bool)

(declare-fun res!926007 () Bool)

(declare-fun e!1371662 () Bool)

(assert (=> d!645223 (=> res!926007 e!1371662)))

(assert (=> d!645223 (= res!926007 ((_ is Nil!24478) (_2!14411 (_1!14414 lt!798843))))))

(assert (=> d!645223 (= (forall!4995 (_2!14411 (_1!14414 lt!798843)) lambda!80547) e!1371662)))

(declare-fun b!2146106 () Bool)

(declare-fun e!1371663 () Bool)

(assert (=> b!2146106 (= e!1371662 e!1371663)))

(declare-fun res!926008 () Bool)

(assert (=> b!2146106 (=> (not res!926008) (not e!1371663))))

(assert (=> b!2146106 (= res!926008 (dynLambda!11381 lambda!80547 (h!29879 (_2!14411 (_1!14414 lt!798843)))))))

(declare-fun b!2146107 () Bool)

(assert (=> b!2146107 (= e!1371663 (forall!4995 (t!197092 (_2!14411 (_1!14414 lt!798843))) lambda!80547))))

(assert (= (and d!645223 (not res!926007)) b!2146106))

(assert (= (and b!2146106 res!926008) b!2146107))

(declare-fun b_lambda!70717 () Bool)

(assert (=> (not b_lambda!70717) (not b!2146106)))

(declare-fun m!2589815 () Bool)

(assert (=> b!2146106 m!2589815))

(declare-fun m!2589817 () Bool)

(assert (=> b!2146107 m!2589817))

(assert (=> b!2145900 d!645223))

(declare-fun d!645225 () Bool)

(assert (=> d!645225 (= (array_inv!3040 (_keys!3125 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))))) (bvsge (size!19158 (_keys!3125 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2145858 d!645225))

(declare-fun d!645227 () Bool)

(assert (=> d!645227 (= (array_inv!3041 (_values!3108 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))))) (bvsge (size!19161 (_values!3108 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))))) #b00000000000000000000000000000000))))

(assert (=> b!2145858 d!645227))

(declare-fun d!645229 () Bool)

(assert (=> d!645229 (= (inv!32195 (totalInput!3175 cacheFurthestNullable!114)) (isBalanced!2464 (c!340744 (totalInput!3175 cacheFurthestNullable!114))))))

(declare-fun bs!445425 () Bool)

(assert (= bs!445425 d!645229))

(declare-fun m!2589819 () Bool)

(assert (=> bs!445425 m!2589819))

(assert (=> b!2145895 d!645229))

(declare-fun d!645231 () Bool)

(assert (=> d!645231 (= (inv!32195 (totalInput!3174 (h!29879 stack!8))) (isBalanced!2464 (c!340744 (totalInput!3174 (h!29879 stack!8)))))))

(declare-fun bs!445426 () Bool)

(assert (= bs!445426 d!645231))

(declare-fun m!2589821 () Bool)

(assert (=> bs!445426 m!2589821))

(assert (=> b!2145893 d!645231))

(declare-fun d!645233 () Bool)

(declare-fun res!926009 () Bool)

(declare-fun e!1371664 () Bool)

(assert (=> d!645233 (=> res!926009 e!1371664)))

(assert (=> d!645233 (= res!926009 ((_ is Nil!24478) (_2!14411 (_1!14414 lt!798843))))))

(assert (=> d!645233 (= (forall!4995 (_2!14411 (_1!14414 lt!798843)) lambda!80549) e!1371664)))

(declare-fun b!2146108 () Bool)

(declare-fun e!1371665 () Bool)

(assert (=> b!2146108 (= e!1371664 e!1371665)))

(declare-fun res!926010 () Bool)

(assert (=> b!2146108 (=> (not res!926010) (not e!1371665))))

(assert (=> b!2146108 (= res!926010 (dynLambda!11381 lambda!80549 (h!29879 (_2!14411 (_1!14414 lt!798843)))))))

(declare-fun b!2146109 () Bool)

(assert (=> b!2146109 (= e!1371665 (forall!4995 (t!197092 (_2!14411 (_1!14414 lt!798843))) lambda!80549))))

(assert (= (and d!645233 (not res!926009)) b!2146108))

(assert (= (and b!2146108 res!926010) b!2146109))

(declare-fun b_lambda!70719 () Bool)

(assert (=> (not b_lambda!70719) (not b!2146108)))

(declare-fun m!2589823 () Bool)

(assert (=> b!2146108 m!2589823))

(declare-fun m!2589825 () Bool)

(assert (=> b!2146109 m!2589825))

(assert (=> b!2145898 d!645233))

(declare-fun d!645235 () Bool)

(declare-fun res!926011 () Bool)

(declare-fun e!1371666 () Bool)

(assert (=> d!645235 (=> res!926011 e!1371666)))

(assert (=> d!645235 (= res!926011 ((_ is Nil!24478) stack!8))))

(assert (=> d!645235 (= (forall!4995 stack!8 lambda!80547) e!1371666)))

(declare-fun b!2146110 () Bool)

(declare-fun e!1371667 () Bool)

(assert (=> b!2146110 (= e!1371666 e!1371667)))

(declare-fun res!926012 () Bool)

(assert (=> b!2146110 (=> (not res!926012) (not e!1371667))))

(assert (=> b!2146110 (= res!926012 (dynLambda!11381 lambda!80547 (h!29879 stack!8)))))

(declare-fun b!2146111 () Bool)

(assert (=> b!2146111 (= e!1371667 (forall!4995 (t!197092 stack!8) lambda!80547))))

(assert (= (and d!645235 (not res!926011)) b!2146110))

(assert (= (and b!2146110 res!926012) b!2146111))

(declare-fun b_lambda!70721 () Bool)

(assert (=> (not b_lambda!70721) (not b!2146110)))

(declare-fun m!2589827 () Bool)

(assert (=> b!2146110 m!2589827))

(declare-fun m!2589829 () Bool)

(assert (=> b!2146111 m!2589829))

(assert (=> b!2145896 d!645235))

(declare-fun d!645237 () Bool)

(declare-fun c!340781 () Bool)

(assert (=> d!645237 (= c!340781 ((_ is Node!7939) (c!340744 (totalInput!3175 cacheFurthestNullable!114))))))

(declare-fun e!1371668 () Bool)

(assert (=> d!645237 (= (inv!32191 (c!340744 (totalInput!3175 cacheFurthestNullable!114))) e!1371668)))

(declare-fun b!2146112 () Bool)

(assert (=> b!2146112 (= e!1371668 (inv!32198 (c!340744 (totalInput!3175 cacheFurthestNullable!114))))))

(declare-fun b!2146113 () Bool)

(declare-fun e!1371669 () Bool)

(assert (=> b!2146113 (= e!1371668 e!1371669)))

(declare-fun res!926013 () Bool)

(assert (=> b!2146113 (= res!926013 (not ((_ is Leaf!11608) (c!340744 (totalInput!3175 cacheFurthestNullable!114)))))))

(assert (=> b!2146113 (=> res!926013 e!1371669)))

(declare-fun b!2146114 () Bool)

(assert (=> b!2146114 (= e!1371669 (inv!32199 (c!340744 (totalInput!3175 cacheFurthestNullable!114))))))

(assert (= (and d!645237 c!340781) b!2146112))

(assert (= (and d!645237 (not c!340781)) b!2146113))

(assert (= (and b!2146113 (not res!926013)) b!2146114))

(declare-fun m!2589831 () Bool)

(assert (=> b!2146112 m!2589831))

(declare-fun m!2589833 () Bool)

(assert (=> b!2146114 m!2589833))

(assert (=> b!2145859 d!645237))

(declare-fun d!645239 () Bool)

(assert (=> d!645239 (= (valid!2202 (_3!2237 lt!798843)) (validCacheMapDown!258 (cache!3122 (_3!2237 lt!798843))))))

(declare-fun bs!445427 () Bool)

(assert (= bs!445427 d!645239))

(declare-fun m!2589835 () Bool)

(assert (=> bs!445427 m!2589835))

(assert (=> b!2145860 d!645239))

(declare-fun bs!445428 () Bool)

(declare-fun d!645241 () Bool)

(assert (= bs!445428 (and d!645241 d!645183)))

(declare-fun lambda!80597 () Int)

(assert (=> bs!445428 (= lambda!80597 lambda!80577)))

(declare-fun bs!445429 () Bool)

(assert (= bs!445429 (and d!645241 d!645199)))

(assert (=> bs!445429 (not (= lambda!80597 lambda!80594))))

(declare-fun bs!445430 () Bool)

(assert (= bs!445430 (and d!645241 b!2146069)))

(assert (=> bs!445430 (not (= lambda!80597 lambda!80595))))

(declare-fun bs!445431 () Bool)

(assert (= bs!445431 (and d!645241 b!2146070)))

(assert (=> bs!445431 (not (= lambda!80597 lambda!80596))))

(assert (=> d!645241 (= (nullableZipper!155 z!3839) (exists!717 z!3839 lambda!80597))))

(declare-fun bs!445432 () Bool)

(assert (= bs!445432 d!645241))

(declare-fun m!2589837 () Bool)

(assert (=> bs!445432 m!2589837))

(assert (=> b!2145876 d!645241))

(declare-fun b!2146119 () Bool)

(declare-fun e!1371672 () Bool)

(declare-fun setRes!16728 () Bool)

(assert (=> b!2146119 (= e!1371672 setRes!16728)))

(declare-fun condSetEmpty!16728 () Bool)

(assert (=> b!2146119 (= condSetEmpty!16728 (= (_2!14413 (h!29880 mapDefault!13427)) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setIsEmpty!16728 () Bool)

(assert (=> setIsEmpty!16728 setRes!16728))

(declare-fun setNonEmpty!16728 () Bool)

(assert (=> setNonEmpty!16728 (= setRes!16728 true)))

(declare-fun setElem!16728 () Context!2746)

(declare-fun setRest!16728 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16728 (= (_2!14413 (h!29880 mapDefault!13427)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16728 true) setRest!16728))))

(assert (=> b!2145948 e!1371672))

(assert (= (and b!2146119 condSetEmpty!16728) setIsEmpty!16728))

(assert (= (and b!2146119 (not condSetEmpty!16728)) setNonEmpty!16728))

(assert (= (and b!2145948 ((_ is Cons!24479) mapDefault!13427)) b!2146119))

(declare-fun tp!665402 () Bool)

(declare-fun e!1371678 () Bool)

(declare-fun b!2146128 () Bool)

(declare-fun tp!665403 () Bool)

(assert (=> b!2146128 (= e!1371678 (and (inv!32191 (left!18805 (c!340744 totalInput!851))) tp!665403 (inv!32191 (right!19135 (c!340744 totalInput!851))) tp!665402))))

(declare-fun b!2146130 () Bool)

(declare-fun e!1371677 () Bool)

(declare-fun tp!665404 () Bool)

(assert (=> b!2146130 (= e!1371677 tp!665404)))

(declare-fun b!2146129 () Bool)

(declare-fun inv!32200 (IArray!15883) Bool)

(assert (=> b!2146129 (= e!1371678 (and (inv!32200 (xs!10881 (c!340744 totalInput!851))) e!1371677))))

(assert (=> b!2145852 (= tp!665376 (and (inv!32191 (c!340744 totalInput!851)) e!1371678))))

(assert (= (and b!2145852 ((_ is Node!7939) (c!340744 totalInput!851))) b!2146128))

(assert (= b!2146129 b!2146130))

(assert (= (and b!2145852 ((_ is Leaf!11608) (c!340744 totalInput!851))) b!2146129))

(declare-fun m!2589839 () Bool)

(assert (=> b!2146128 m!2589839))

(declare-fun m!2589841 () Bool)

(assert (=> b!2146128 m!2589841))

(declare-fun m!2589843 () Bool)

(assert (=> b!2146129 m!2589843))

(assert (=> b!2145852 m!2589593))

(declare-fun b!2146145 () Bool)

(declare-fun e!1371694 () Bool)

(declare-fun tp!665433 () Bool)

(assert (=> b!2146145 (= e!1371694 tp!665433)))

(declare-fun setIsEmpty!16733 () Bool)

(declare-fun setRes!16734 () Bool)

(assert (=> setIsEmpty!16733 setRes!16734))

(declare-fun setIsEmpty!16734 () Bool)

(declare-fun setRes!16733 () Bool)

(assert (=> setIsEmpty!16734 setRes!16733))

(declare-fun condMapEmpty!13433 () Bool)

(declare-fun mapDefault!13433 () List!24560)

(assert (=> mapNonEmpty!13420 (= condMapEmpty!13433 (= mapRest!13420 ((as const (Array (_ BitVec 32) List!24560)) mapDefault!13433)))))

(declare-fun e!1371691 () Bool)

(declare-fun mapRes!13433 () Bool)

(assert (=> mapNonEmpty!13420 (= tp!665373 (and e!1371691 mapRes!13433))))

(declare-fun tp!665431 () Bool)

(declare-fun setNonEmpty!16733 () Bool)

(declare-fun setElem!16733 () Context!2746)

(assert (=> setNonEmpty!16733 (= setRes!16733 (and tp!665431 (inv!32196 setElem!16733) e!1371694))))

(declare-fun setRest!16734 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16733 (= (_2!14410 (h!29877 mapDefault!13433)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16733 true) setRest!16734))))

(declare-fun b!2146146 () Bool)

(declare-fun e!1371695 () Bool)

(declare-fun tp!665437 () Bool)

(declare-fun mapValue!13433 () List!24560)

(declare-fun e!1371696 () Bool)

(declare-fun tp_is_empty!9521 () Bool)

(declare-fun tp!665427 () Bool)

(assert (=> b!2146146 (= e!1371695 (and tp!665427 (inv!32196 (_2!14409 (_1!14410 (h!29877 mapValue!13433)))) e!1371696 tp_is_empty!9521 setRes!16734 tp!665437))))

(declare-fun condSetEmpty!16734 () Bool)

(assert (=> b!2146146 (= condSetEmpty!16734 (= (_2!14410 (h!29877 mapValue!13433)) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun b!2146147 () Bool)

(declare-fun e!1371693 () Bool)

(declare-fun tp!665432 () Bool)

(assert (=> b!2146147 (= e!1371693 tp!665432)))

(declare-fun setNonEmpty!16734 () Bool)

(declare-fun e!1371692 () Bool)

(declare-fun tp!665429 () Bool)

(declare-fun setElem!16734 () Context!2746)

(assert (=> setNonEmpty!16734 (= setRes!16734 (and tp!665429 (inv!32196 setElem!16734) e!1371692))))

(declare-fun setRest!16733 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16734 (= (_2!14410 (h!29877 mapValue!13433)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16734 true) setRest!16733))))

(declare-fun mapNonEmpty!13433 () Bool)

(declare-fun tp!665436 () Bool)

(assert (=> mapNonEmpty!13433 (= mapRes!13433 (and tp!665436 e!1371695))))

(declare-fun mapKey!13433 () (_ BitVec 32))

(declare-fun mapRest!13433 () (Array (_ BitVec 32) List!24560))

(assert (=> mapNonEmpty!13433 (= mapRest!13420 (store mapRest!13433 mapKey!13433 mapValue!13433))))

(declare-fun b!2146148 () Bool)

(declare-fun tp!665430 () Bool)

(assert (=> b!2146148 (= e!1371696 tp!665430)))

(declare-fun mapIsEmpty!13433 () Bool)

(assert (=> mapIsEmpty!13433 mapRes!13433))

(declare-fun b!2146149 () Bool)

(declare-fun tp!665435 () Bool)

(assert (=> b!2146149 (= e!1371692 tp!665435)))

(declare-fun b!2146150 () Bool)

(declare-fun tp!665428 () Bool)

(declare-fun tp!665434 () Bool)

(assert (=> b!2146150 (= e!1371691 (and tp!665428 (inv!32196 (_2!14409 (_1!14410 (h!29877 mapDefault!13433)))) e!1371693 tp_is_empty!9521 setRes!16733 tp!665434))))

(declare-fun condSetEmpty!16733 () Bool)

(assert (=> b!2146150 (= condSetEmpty!16733 (= (_2!14410 (h!29877 mapDefault!13433)) ((as const (Array Context!2746 Bool)) false)))))

(assert (= (and mapNonEmpty!13420 condMapEmpty!13433) mapIsEmpty!13433))

(assert (= (and mapNonEmpty!13420 (not condMapEmpty!13433)) mapNonEmpty!13433))

(assert (= b!2146146 b!2146148))

(assert (= (and b!2146146 condSetEmpty!16734) setIsEmpty!16733))

(assert (= (and b!2146146 (not condSetEmpty!16734)) setNonEmpty!16734))

(assert (= setNonEmpty!16734 b!2146149))

(assert (= (and mapNonEmpty!13433 ((_ is Cons!24476) mapValue!13433)) b!2146146))

(assert (= b!2146150 b!2146147))

(assert (= (and b!2146150 condSetEmpty!16733) setIsEmpty!16734))

(assert (= (and b!2146150 (not condSetEmpty!16733)) setNonEmpty!16733))

(assert (= setNonEmpty!16733 b!2146145))

(assert (= (and mapNonEmpty!13420 ((_ is Cons!24476) mapDefault!13433)) b!2146150))

(declare-fun m!2589845 () Bool)

(assert (=> setNonEmpty!16734 m!2589845))

(declare-fun m!2589847 () Bool)

(assert (=> mapNonEmpty!13433 m!2589847))

(declare-fun m!2589849 () Bool)

(assert (=> setNonEmpty!16733 m!2589849))

(declare-fun m!2589851 () Bool)

(assert (=> b!2146150 m!2589851))

(declare-fun m!2589853 () Bool)

(assert (=> b!2146146 m!2589853))

(declare-fun e!1371704 () Bool)

(assert (=> mapNonEmpty!13420 (= tp!665390 e!1371704)))

(declare-fun b!2146159 () Bool)

(declare-fun e!1371705 () Bool)

(declare-fun tp!665449 () Bool)

(assert (=> b!2146159 (= e!1371705 tp!665449)))

(declare-fun b!2146160 () Bool)

(declare-fun e!1371703 () Bool)

(declare-fun tp!665450 () Bool)

(assert (=> b!2146160 (= e!1371703 tp!665450)))

(declare-fun tp!665448 () Bool)

(declare-fun setElem!16737 () Context!2746)

(declare-fun setRes!16737 () Bool)

(declare-fun setNonEmpty!16737 () Bool)

(assert (=> setNonEmpty!16737 (= setRes!16737 (and tp!665448 (inv!32196 setElem!16737) e!1371703))))

(declare-fun setRest!16737 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16737 (= (_2!14410 (h!29877 mapValue!13422)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16737 true) setRest!16737))))

(declare-fun setIsEmpty!16737 () Bool)

(assert (=> setIsEmpty!16737 setRes!16737))

(declare-fun tp!665451 () Bool)

(declare-fun tp!665452 () Bool)

(declare-fun b!2146161 () Bool)

(assert (=> b!2146161 (= e!1371704 (and tp!665452 (inv!32196 (_2!14409 (_1!14410 (h!29877 mapValue!13422)))) e!1371705 tp_is_empty!9521 setRes!16737 tp!665451))))

(declare-fun condSetEmpty!16737 () Bool)

(assert (=> b!2146161 (= condSetEmpty!16737 (= (_2!14410 (h!29877 mapValue!13422)) ((as const (Array Context!2746 Bool)) false)))))

(assert (= b!2146161 b!2146159))

(assert (= (and b!2146161 condSetEmpty!16737) setIsEmpty!16737))

(assert (= (and b!2146161 (not condSetEmpty!16737)) setNonEmpty!16737))

(assert (= setNonEmpty!16737 b!2146160))

(assert (= (and mapNonEmpty!13420 ((_ is Cons!24476) mapValue!13422)) b!2146161))

(declare-fun m!2589855 () Bool)

(assert (=> setNonEmpty!16737 m!2589855))

(declare-fun m!2589857 () Bool)

(assert (=> b!2146161 m!2589857))

(declare-fun condSetEmpty!16740 () Bool)

(assert (=> setNonEmpty!16724 (= condSetEmpty!16740 (= setRest!16724 ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setRes!16740 () Bool)

(assert (=> setNonEmpty!16724 setRes!16740))

(declare-fun setIsEmpty!16740 () Bool)

(assert (=> setIsEmpty!16740 setRes!16740))

(declare-fun setNonEmpty!16740 () Bool)

(assert (=> setNonEmpty!16740 (= setRes!16740 true)))

(declare-fun setElem!16740 () Context!2746)

(declare-fun setRest!16740 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16740 (= setRest!16724 ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16740 true) setRest!16740))))

(assert (= (and setNonEmpty!16724 condSetEmpty!16740) setIsEmpty!16740))

(assert (= (and setNonEmpty!16724 (not condSetEmpty!16740)) setNonEmpty!16740))

(declare-fun condSetEmpty!16743 () Bool)

(assert (=> setNonEmpty!16720 (= condSetEmpty!16743 (= setRest!16720 ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setRes!16743 () Bool)

(assert (=> setNonEmpty!16720 (= tp!665382 setRes!16743)))

(declare-fun setIsEmpty!16743 () Bool)

(assert (=> setIsEmpty!16743 setRes!16743))

(declare-fun setElem!16743 () Context!2746)

(declare-fun setNonEmpty!16743 () Bool)

(declare-fun e!1371708 () Bool)

(declare-fun tp!665457 () Bool)

(assert (=> setNonEmpty!16743 (= setRes!16743 (and tp!665457 (inv!32196 setElem!16743) e!1371708))))

(declare-fun setRest!16743 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16743 (= setRest!16720 ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16743 true) setRest!16743))))

(declare-fun b!2146168 () Bool)

(declare-fun tp!665458 () Bool)

(assert (=> b!2146168 (= e!1371708 tp!665458)))

(assert (= (and setNonEmpty!16720 condSetEmpty!16743) setIsEmpty!16743))

(assert (= (and setNonEmpty!16720 (not condSetEmpty!16743)) setNonEmpty!16743))

(assert (= setNonEmpty!16743 b!2146168))

(declare-fun m!2589859 () Bool)

(assert (=> setNonEmpty!16743 m!2589859))

(declare-fun condSetEmpty!16744 () Bool)

(assert (=> setNonEmpty!16721 (= condSetEmpty!16744 (= setRest!16721 ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setRes!16744 () Bool)

(assert (=> setNonEmpty!16721 (= tp!665385 setRes!16744)))

(declare-fun setIsEmpty!16744 () Bool)

(assert (=> setIsEmpty!16744 setRes!16744))

(declare-fun setNonEmpty!16744 () Bool)

(declare-fun tp!665459 () Bool)

(declare-fun e!1371709 () Bool)

(declare-fun setElem!16744 () Context!2746)

(assert (=> setNonEmpty!16744 (= setRes!16744 (and tp!665459 (inv!32196 setElem!16744) e!1371709))))

(declare-fun setRest!16744 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16744 (= setRest!16721 ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16744 true) setRest!16744))))

(declare-fun b!2146169 () Bool)

(declare-fun tp!665460 () Bool)

(assert (=> b!2146169 (= e!1371709 tp!665460)))

(assert (= (and setNonEmpty!16721 condSetEmpty!16744) setIsEmpty!16744))

(assert (= (and setNonEmpty!16721 (not condSetEmpty!16744)) setNonEmpty!16744))

(assert (= setNonEmpty!16744 b!2146169))

(declare-fun m!2589861 () Bool)

(assert (=> setNonEmpty!16744 m!2589861))

(declare-fun e!1371711 () Bool)

(assert (=> b!2145867 (= tp!665388 e!1371711)))

(declare-fun b!2146170 () Bool)

(declare-fun e!1371712 () Bool)

(declare-fun tp!665462 () Bool)

(assert (=> b!2146170 (= e!1371712 tp!665462)))

(declare-fun b!2146171 () Bool)

(declare-fun e!1371710 () Bool)

(declare-fun tp!665463 () Bool)

(assert (=> b!2146171 (= e!1371710 tp!665463)))

(declare-fun setElem!16745 () Context!2746)

(declare-fun setNonEmpty!16745 () Bool)

(declare-fun tp!665461 () Bool)

(declare-fun setRes!16745 () Bool)

(assert (=> setNonEmpty!16745 (= setRes!16745 (and tp!665461 (inv!32196 setElem!16745) e!1371710))))

(declare-fun setRest!16745 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16745 (= (_2!14410 (h!29877 (zeroValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16745 true) setRest!16745))))

(declare-fun setIsEmpty!16745 () Bool)

(assert (=> setIsEmpty!16745 setRes!16745))

(declare-fun b!2146172 () Bool)

(declare-fun tp!665464 () Bool)

(declare-fun tp!665465 () Bool)

(assert (=> b!2146172 (= e!1371711 (and tp!665465 (inv!32196 (_2!14409 (_1!14410 (h!29877 (zeroValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098)))))))))) e!1371712 tp_is_empty!9521 setRes!16745 tp!665464))))

(declare-fun condSetEmpty!16745 () Bool)

(assert (=> b!2146172 (= condSetEmpty!16745 (= (_2!14410 (h!29877 (zeroValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098)))))))) ((as const (Array Context!2746 Bool)) false)))))

(assert (= b!2146172 b!2146170))

(assert (= (and b!2146172 condSetEmpty!16745) setIsEmpty!16745))

(assert (= (and b!2146172 (not condSetEmpty!16745)) setNonEmpty!16745))

(assert (= setNonEmpty!16745 b!2146171))

(assert (= (and b!2145867 ((_ is Cons!24476) (zeroValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098)))))))) b!2146172))

(declare-fun m!2589863 () Bool)

(assert (=> setNonEmpty!16745 m!2589863))

(declare-fun m!2589865 () Bool)

(assert (=> b!2146172 m!2589865))

(declare-fun e!1371714 () Bool)

(assert (=> b!2145867 (= tp!665392 e!1371714)))

(declare-fun b!2146173 () Bool)

(declare-fun e!1371715 () Bool)

(declare-fun tp!665467 () Bool)

(assert (=> b!2146173 (= e!1371715 tp!665467)))

(declare-fun b!2146174 () Bool)

(declare-fun e!1371713 () Bool)

(declare-fun tp!665468 () Bool)

(assert (=> b!2146174 (= e!1371713 tp!665468)))

(declare-fun setRes!16746 () Bool)

(declare-fun setElem!16746 () Context!2746)

(declare-fun tp!665466 () Bool)

(declare-fun setNonEmpty!16746 () Bool)

(assert (=> setNonEmpty!16746 (= setRes!16746 (and tp!665466 (inv!32196 setElem!16746) e!1371713))))

(declare-fun setRest!16746 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16746 (= (_2!14410 (h!29877 (minValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098)))))))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16746 true) setRest!16746))))

(declare-fun setIsEmpty!16746 () Bool)

(assert (=> setIsEmpty!16746 setRes!16746))

(declare-fun b!2146175 () Bool)

(declare-fun tp!665470 () Bool)

(declare-fun tp!665469 () Bool)

(assert (=> b!2146175 (= e!1371714 (and tp!665470 (inv!32196 (_2!14409 (_1!14410 (h!29877 (minValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098)))))))))) e!1371715 tp_is_empty!9521 setRes!16746 tp!665469))))

(declare-fun condSetEmpty!16746 () Bool)

(assert (=> b!2146175 (= condSetEmpty!16746 (= (_2!14410 (h!29877 (minValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098)))))))) ((as const (Array Context!2746 Bool)) false)))))

(assert (= b!2146175 b!2146173))

(assert (= (and b!2146175 condSetEmpty!16746) setIsEmpty!16746))

(assert (= (and b!2146175 (not condSetEmpty!16746)) setNonEmpty!16746))

(assert (= setNonEmpty!16746 b!2146174))

(assert (= (and b!2145867 ((_ is Cons!24476) (minValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 cacheDown!1098)))))))) b!2146175))

(declare-fun m!2589867 () Bool)

(assert (=> setNonEmpty!16746 m!2589867))

(declare-fun m!2589869 () Bool)

(assert (=> b!2146175 m!2589869))

(declare-fun tp!665478 () Bool)

(declare-fun e!1371721 () Bool)

(declare-fun setNonEmpty!16749 () Bool)

(declare-fun setRes!16749 () Bool)

(declare-fun setElem!16749 () Context!2746)

(assert (=> setNonEmpty!16749 (= setRes!16749 (and tp!665478 (inv!32196 setElem!16749) e!1371721))))

(declare-fun setRest!16749 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16749 (= (_1!14415 (_1!14416 (h!29881 mapDefault!13421))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16749 true) setRest!16749))))

(declare-fun b!2146182 () Bool)

(declare-fun e!1371720 () Bool)

(declare-fun tp!665479 () Bool)

(assert (=> b!2146182 (= e!1371720 (and setRes!16749 tp!665479))))

(declare-fun condSetEmpty!16749 () Bool)

(assert (=> b!2146182 (= condSetEmpty!16749 (= (_1!14415 (_1!14416 (h!29881 mapDefault!13421))) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun b!2146183 () Bool)

(declare-fun tp!665477 () Bool)

(assert (=> b!2146183 (= e!1371721 tp!665477)))

(declare-fun setIsEmpty!16749 () Bool)

(assert (=> setIsEmpty!16749 setRes!16749))

(assert (=> b!2145883 (= tp!665378 e!1371720)))

(assert (= (and b!2146182 condSetEmpty!16749) setIsEmpty!16749))

(assert (= (and b!2146182 (not condSetEmpty!16749)) setNonEmpty!16749))

(assert (= setNonEmpty!16749 b!2146183))

(assert (= (and b!2145883 ((_ is Cons!24480) mapDefault!13421)) b!2146182))

(declare-fun m!2589871 () Bool)

(assert (=> setNonEmpty!16749 m!2589871))

(declare-fun e!1371723 () Bool)

(assert (=> b!2145887 (= tp!665380 e!1371723)))

(declare-fun b!2146184 () Bool)

(declare-fun e!1371724 () Bool)

(declare-fun tp!665481 () Bool)

(assert (=> b!2146184 (= e!1371724 tp!665481)))

(declare-fun b!2146185 () Bool)

(declare-fun e!1371722 () Bool)

(declare-fun tp!665482 () Bool)

(assert (=> b!2146185 (= e!1371722 tp!665482)))

(declare-fun tp!665480 () Bool)

(declare-fun setRes!16750 () Bool)

(declare-fun setNonEmpty!16750 () Bool)

(declare-fun setElem!16750 () Context!2746)

(assert (=> setNonEmpty!16750 (= setRes!16750 (and tp!665480 (inv!32196 setElem!16750) e!1371722))))

(declare-fun setRest!16750 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16750 (= (_2!14410 (h!29877 mapDefault!13422)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16750 true) setRest!16750))))

(declare-fun setIsEmpty!16750 () Bool)

(assert (=> setIsEmpty!16750 setRes!16750))

(declare-fun tp!665484 () Bool)

(declare-fun tp!665483 () Bool)

(declare-fun b!2146186 () Bool)

(assert (=> b!2146186 (= e!1371723 (and tp!665484 (inv!32196 (_2!14409 (_1!14410 (h!29877 mapDefault!13422)))) e!1371724 tp_is_empty!9521 setRes!16750 tp!665483))))

(declare-fun condSetEmpty!16750 () Bool)

(assert (=> b!2146186 (= condSetEmpty!16750 (= (_2!14410 (h!29877 mapDefault!13422)) ((as const (Array Context!2746 Bool)) false)))))

(assert (= b!2146186 b!2146184))

(assert (= (and b!2146186 condSetEmpty!16750) setIsEmpty!16750))

(assert (= (and b!2146186 (not condSetEmpty!16750)) setNonEmpty!16750))

(assert (= setNonEmpty!16750 b!2146185))

(assert (= (and b!2145887 ((_ is Cons!24476) mapDefault!13422)) b!2146186))

(declare-fun m!2589873 () Bool)

(assert (=> setNonEmpty!16750 m!2589873))

(declare-fun m!2589875 () Bool)

(assert (=> b!2146186 m!2589875))

(declare-fun b!2146191 () Bool)

(declare-fun e!1371727 () Bool)

(declare-fun setRes!16753 () Bool)

(assert (=> b!2146191 (= e!1371727 setRes!16753)))

(declare-fun condSetEmpty!16753 () Bool)

(assert (=> b!2146191 (= condSetEmpty!16753 (= (_2!14410 (h!29877 mapDefault!13428)) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setIsEmpty!16753 () Bool)

(assert (=> setIsEmpty!16753 setRes!16753))

(declare-fun setNonEmpty!16753 () Bool)

(assert (=> setNonEmpty!16753 (= setRes!16753 true)))

(declare-fun setElem!16753 () Context!2746)

(declare-fun setRest!16753 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16753 (= (_2!14410 (h!29877 mapDefault!13428)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16753 true) setRest!16753))))

(assert (=> b!2145946 e!1371727))

(assert (= (and b!2146191 condSetEmpty!16753) setIsEmpty!16753))

(assert (= (and b!2146191 (not condSetEmpty!16753)) setNonEmpty!16753))

(assert (= (and b!2145946 ((_ is Cons!24476) mapDefault!13428)) b!2146191))

(declare-fun b!2146198 () Bool)

(declare-fun e!1371732 () Bool)

(declare-fun e!1371733 () Bool)

(assert (=> b!2146198 (= e!1371732 e!1371733)))

(declare-fun setNonEmpty!16756 () Bool)

(declare-fun setRes!16756 () Bool)

(assert (=> setNonEmpty!16756 (= setRes!16756 true)))

(declare-fun setElem!16756 () Context!2746)

(declare-fun setRest!16756 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16756 (= (z!5905 (h!29879 (t!197092 (_2!14411 (_1!14414 lt!798843))))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16756 true) setRest!16756))))

(assert (=> b!2145945 e!1371732))

(declare-fun setIsEmpty!16756 () Bool)

(assert (=> setIsEmpty!16756 setRes!16756))

(declare-fun b!2146199 () Bool)

(assert (=> b!2146199 (= e!1371733 setRes!16756)))

(declare-fun condSetEmpty!16756 () Bool)

(assert (=> b!2146199 (= condSetEmpty!16756 (= (z!5905 (h!29879 (t!197092 (_2!14411 (_1!14414 lt!798843))))) ((as const (Array Context!2746 Bool)) false)))))

(assert (= (and b!2146199 condSetEmpty!16756) setIsEmpty!16756))

(assert (= (and b!2146199 (not condSetEmpty!16756)) setNonEmpty!16756))

(assert (= b!2146198 b!2146199))

(assert (= (and b!2145945 ((_ is Cons!24478) (t!197092 (_2!14411 (_1!14414 lt!798843))))) b!2146198))

(declare-fun setNonEmpty!16761 () Bool)

(declare-fun setRes!16762 () Bool)

(assert (=> setNonEmpty!16761 (= setRes!16762 true)))

(declare-fun mapDefault!13436 () List!24560)

(declare-fun setElem!16762 () Context!2746)

(declare-fun setRest!16762 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16761 (= (_2!14410 (h!29877 mapDefault!13436)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16762 true) setRest!16762))))

(declare-fun mapIsEmpty!13436 () Bool)

(declare-fun mapRes!13436 () Bool)

(assert (=> mapIsEmpty!13436 mapRes!13436))

(declare-fun b!2146206 () Bool)

(declare-fun e!1371739 () Bool)

(declare-fun setRes!16761 () Bool)

(assert (=> b!2146206 (= e!1371739 setRes!16761)))

(declare-fun condSetEmpty!16761 () Bool)

(declare-fun mapValue!13436 () List!24560)

(assert (=> b!2146206 (= condSetEmpty!16761 (= (_2!14410 (h!29877 mapValue!13436)) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setIsEmpty!16761 () Bool)

(assert (=> setIsEmpty!16761 setRes!16762))

(declare-fun mapNonEmpty!13436 () Bool)

(assert (=> mapNonEmpty!13436 (= mapRes!13436 e!1371739)))

(declare-fun mapRest!13436 () (Array (_ BitVec 32) List!24560))

(declare-fun mapKey!13436 () (_ BitVec 32))

(assert (=> mapNonEmpty!13436 (= mapRest!13428 (store mapRest!13436 mapKey!13436 mapValue!13436))))

(declare-fun setIsEmpty!16762 () Bool)

(assert (=> setIsEmpty!16762 setRes!16761))

(declare-fun condMapEmpty!13436 () Bool)

(assert (=> mapNonEmpty!13428 (= condMapEmpty!13436 (= mapRest!13428 ((as const (Array (_ BitVec 32) List!24560)) mapDefault!13436)))))

(declare-fun e!1371738 () Bool)

(assert (=> mapNonEmpty!13428 (and e!1371738 mapRes!13436)))

(declare-fun b!2146207 () Bool)

(assert (=> b!2146207 (= e!1371738 setRes!16762)))

(declare-fun condSetEmpty!16762 () Bool)

(assert (=> b!2146207 (= condSetEmpty!16762 (= (_2!14410 (h!29877 mapDefault!13436)) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setNonEmpty!16762 () Bool)

(assert (=> setNonEmpty!16762 (= setRes!16761 true)))

(declare-fun setElem!16761 () Context!2746)

(declare-fun setRest!16761 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16762 (= (_2!14410 (h!29877 mapValue!13436)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16761 true) setRest!16761))))

(assert (= (and mapNonEmpty!13428 condMapEmpty!13436) mapIsEmpty!13436))

(assert (= (and mapNonEmpty!13428 (not condMapEmpty!13436)) mapNonEmpty!13436))

(assert (= (and b!2146206 condSetEmpty!16761) setIsEmpty!16762))

(assert (= (and b!2146206 (not condSetEmpty!16761)) setNonEmpty!16762))

(assert (= (and mapNonEmpty!13436 ((_ is Cons!24476) mapValue!13436)) b!2146206))

(assert (= (and b!2146207 condSetEmpty!16762) setIsEmpty!16761))

(assert (= (and b!2146207 (not condSetEmpty!16762)) setNonEmpty!16761))

(assert (= (and mapNonEmpty!13428 ((_ is Cons!24476) mapDefault!13436)) b!2146207))

(declare-fun m!2589877 () Bool)

(assert (=> mapNonEmpty!13436 m!2589877))

(declare-fun b!2146208 () Bool)

(declare-fun e!1371740 () Bool)

(declare-fun setRes!16763 () Bool)

(assert (=> b!2146208 (= e!1371740 setRes!16763)))

(declare-fun condSetEmpty!16763 () Bool)

(assert (=> b!2146208 (= condSetEmpty!16763 (= (_2!14410 (h!29877 mapValue!13427)) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setIsEmpty!16763 () Bool)

(assert (=> setIsEmpty!16763 setRes!16763))

(declare-fun setNonEmpty!16763 () Bool)

(assert (=> setNonEmpty!16763 (= setRes!16763 true)))

(declare-fun setElem!16763 () Context!2746)

(declare-fun setRest!16763 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16763 (= (_2!14410 (h!29877 mapValue!13427)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16763 true) setRest!16763))))

(assert (=> mapNonEmpty!13428 e!1371740))

(assert (= (and b!2146208 condSetEmpty!16763) setIsEmpty!16763))

(assert (= (and b!2146208 (not condSetEmpty!16763)) setNonEmpty!16763))

(assert (= (and mapNonEmpty!13428 ((_ is Cons!24476) mapValue!13427)) b!2146208))

(declare-fun b!2146213 () Bool)

(declare-fun e!1371743 () Bool)

(declare-fun tp!665489 () Bool)

(declare-fun tp!665490 () Bool)

(assert (=> b!2146213 (= e!1371743 (and tp!665489 tp!665490))))

(assert (=> b!2145862 (= tp!665386 e!1371743)))

(assert (= (and b!2145862 ((_ is Cons!24475) (exprs!1873 setElem!16720))) b!2146213))

(declare-fun b!2146214 () Bool)

(declare-fun e!1371745 () Bool)

(declare-fun tp!665492 () Bool)

(declare-fun tp!665491 () Bool)

(assert (=> b!2146214 (= e!1371745 (and (inv!32191 (left!18805 (c!340744 (totalInput!3174 (h!29879 stack!8))))) tp!665492 (inv!32191 (right!19135 (c!340744 (totalInput!3174 (h!29879 stack!8))))) tp!665491))))

(declare-fun b!2146216 () Bool)

(declare-fun e!1371744 () Bool)

(declare-fun tp!665493 () Bool)

(assert (=> b!2146216 (= e!1371744 tp!665493)))

(declare-fun b!2146215 () Bool)

(assert (=> b!2146215 (= e!1371745 (and (inv!32200 (xs!10881 (c!340744 (totalInput!3174 (h!29879 stack!8))))) e!1371744))))

(assert (=> b!2145878 (= tp!665394 (and (inv!32191 (c!340744 (totalInput!3174 (h!29879 stack!8)))) e!1371745))))

(assert (= (and b!2145878 ((_ is Node!7939) (c!340744 (totalInput!3174 (h!29879 stack!8))))) b!2146214))

(assert (= b!2146215 b!2146216))

(assert (= (and b!2145878 ((_ is Leaf!11608) (c!340744 (totalInput!3174 (h!29879 stack!8))))) b!2146215))

(declare-fun m!2589879 () Bool)

(assert (=> b!2146214 m!2589879))

(declare-fun m!2589881 () Bool)

(assert (=> b!2146214 m!2589881))

(declare-fun m!2589883 () Bool)

(assert (=> b!2146215 m!2589883))

(assert (=> b!2145878 m!2589633))

(declare-fun b!2146225 () Bool)

(declare-fun e!1371753 () Bool)

(declare-fun tp!665504 () Bool)

(assert (=> b!2146225 (= e!1371753 tp!665504)))

(declare-fun setIsEmpty!16766 () Bool)

(declare-fun setRes!16766 () Bool)

(assert (=> setIsEmpty!16766 setRes!16766))

(declare-fun setNonEmpty!16766 () Bool)

(declare-fun setElem!16766 () Context!2746)

(declare-fun e!1371752 () Bool)

(declare-fun tp!665505 () Bool)

(assert (=> setNonEmpty!16766 (= setRes!16766 (and tp!665505 (inv!32196 setElem!16766) e!1371752))))

(declare-fun setRest!16766 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16766 (= (_2!14413 (h!29880 (zeroValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16766 true) setRest!16766))))

(declare-fun e!1371754 () Bool)

(assert (=> b!2145879 (= tp!665384 e!1371754)))

(declare-fun b!2146226 () Bool)

(declare-fun tp!665503 () Bool)

(assert (=> b!2146226 (= e!1371752 tp!665503)))

(declare-fun b!2146227 () Bool)

(declare-fun tp!665502 () Bool)

(assert (=> b!2146227 (= e!1371754 (and (inv!32196 (_1!14412 (_1!14413 (h!29880 (zeroValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979)))))))))) e!1371753 tp_is_empty!9521 setRes!16766 tp!665502))))

(declare-fun condSetEmpty!16766 () Bool)

(assert (=> b!2146227 (= condSetEmpty!16766 (= (_2!14413 (h!29880 (zeroValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979)))))))) ((as const (Array Context!2746 Bool)) false)))))

(assert (= b!2146227 b!2146225))

(assert (= (and b!2146227 condSetEmpty!16766) setIsEmpty!16766))

(assert (= (and b!2146227 (not condSetEmpty!16766)) setNonEmpty!16766))

(assert (= setNonEmpty!16766 b!2146226))

(assert (= (and b!2145879 ((_ is Cons!24479) (zeroValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979)))))))) b!2146227))

(declare-fun m!2589885 () Bool)

(assert (=> setNonEmpty!16766 m!2589885))

(declare-fun m!2589887 () Bool)

(assert (=> b!2146227 m!2589887))

(declare-fun b!2146228 () Bool)

(declare-fun e!1371756 () Bool)

(declare-fun tp!665508 () Bool)

(assert (=> b!2146228 (= e!1371756 tp!665508)))

(declare-fun setIsEmpty!16767 () Bool)

(declare-fun setRes!16767 () Bool)

(assert (=> setIsEmpty!16767 setRes!16767))

(declare-fun e!1371755 () Bool)

(declare-fun setElem!16767 () Context!2746)

(declare-fun tp!665509 () Bool)

(declare-fun setNonEmpty!16767 () Bool)

(assert (=> setNonEmpty!16767 (= setRes!16767 (and tp!665509 (inv!32196 setElem!16767) e!1371755))))

(declare-fun setRest!16767 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16767 (= (_2!14413 (h!29880 (minValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979)))))))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16767 true) setRest!16767))))

(declare-fun e!1371757 () Bool)

(assert (=> b!2145879 (= tp!665389 e!1371757)))

(declare-fun b!2146229 () Bool)

(declare-fun tp!665507 () Bool)

(assert (=> b!2146229 (= e!1371755 tp!665507)))

(declare-fun b!2146230 () Bool)

(declare-fun tp!665506 () Bool)

(assert (=> b!2146230 (= e!1371757 (and (inv!32196 (_1!14412 (_1!14413 (h!29880 (minValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979)))))))))) e!1371756 tp_is_empty!9521 setRes!16767 tp!665506))))

(declare-fun condSetEmpty!16767 () Bool)

(assert (=> b!2146230 (= condSetEmpty!16767 (= (_2!14413 (h!29880 (minValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979)))))))) ((as const (Array Context!2746 Bool)) false)))))

(assert (= b!2146230 b!2146228))

(assert (= (and b!2146230 condSetEmpty!16767) setIsEmpty!16767))

(assert (= (and b!2146230 (not condSetEmpty!16767)) setNonEmpty!16767))

(assert (= setNonEmpty!16767 b!2146229))

(assert (= (and b!2145879 ((_ is Cons!24479) (minValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 cacheUp!979)))))))) b!2146230))

(declare-fun m!2589889 () Bool)

(assert (=> setNonEmpty!16767 m!2589889))

(declare-fun m!2589891 () Bool)

(assert (=> b!2146230 m!2589891))

(declare-fun b!2146231 () Bool)

(declare-fun e!1371758 () Bool)

(declare-fun setRes!16768 () Bool)

(assert (=> b!2146231 (= e!1371758 setRes!16768)))

(declare-fun condSetEmpty!16768 () Bool)

(assert (=> b!2146231 (= condSetEmpty!16768 (= (_2!14410 (h!29877 (zeroValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798843))))))))) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setIsEmpty!16768 () Bool)

(assert (=> setIsEmpty!16768 setRes!16768))

(declare-fun setNonEmpty!16768 () Bool)

(assert (=> setNonEmpty!16768 (= setRes!16768 true)))

(declare-fun setElem!16768 () Context!2746)

(declare-fun setRest!16768 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16768 (= (_2!14410 (h!29877 (zeroValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798843))))))))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16768 true) setRest!16768))))

(assert (=> b!2145954 e!1371758))

(assert (= (and b!2146231 condSetEmpty!16768) setIsEmpty!16768))

(assert (= (and b!2146231 (not condSetEmpty!16768)) setNonEmpty!16768))

(assert (= (and b!2145954 ((_ is Cons!24476) (zeroValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798843))))))))) b!2146231))

(declare-fun b!2146232 () Bool)

(declare-fun e!1371759 () Bool)

(declare-fun setRes!16769 () Bool)

(assert (=> b!2146232 (= e!1371759 setRes!16769)))

(declare-fun condSetEmpty!16769 () Bool)

(assert (=> b!2146232 (= condSetEmpty!16769 (= (_2!14410 (h!29877 (minValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798843))))))))) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setIsEmpty!16769 () Bool)

(assert (=> setIsEmpty!16769 setRes!16769))

(declare-fun setNonEmpty!16769 () Bool)

(assert (=> setNonEmpty!16769 (= setRes!16769 true)))

(declare-fun setElem!16769 () Context!2746)

(declare-fun setRest!16769 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16769 (= (_2!14410 (h!29877 (minValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798843))))))))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16769 true) setRest!16769))))

(assert (=> b!2145954 e!1371759))

(assert (= (and b!2146232 condSetEmpty!16769) setIsEmpty!16769))

(assert (= (and b!2146232 (not condSetEmpty!16769)) setNonEmpty!16769))

(assert (= (and b!2145954 ((_ is Cons!24476) (minValue!3085 (v!29071 (underlying!5849 (v!29072 (underlying!5850 (cache!3122 (_3!2237 lt!798843))))))))) b!2146232))

(declare-fun b!2146233 () Bool)

(declare-fun e!1371761 () Bool)

(declare-fun tp!665512 () Bool)

(assert (=> b!2146233 (= e!1371761 tp!665512)))

(declare-fun setIsEmpty!16770 () Bool)

(declare-fun setRes!16770 () Bool)

(assert (=> setIsEmpty!16770 setRes!16770))

(declare-fun setNonEmpty!16770 () Bool)

(declare-fun setElem!16770 () Context!2746)

(declare-fun e!1371760 () Bool)

(declare-fun tp!665513 () Bool)

(assert (=> setNonEmpty!16770 (= setRes!16770 (and tp!665513 (inv!32196 setElem!16770) e!1371760))))

(declare-fun setRest!16770 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16770 (= (_2!14413 (h!29880 mapDefault!13420)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16770 true) setRest!16770))))

(declare-fun e!1371762 () Bool)

(assert (=> b!2145865 (= tp!665393 e!1371762)))

(declare-fun b!2146234 () Bool)

(declare-fun tp!665511 () Bool)

(assert (=> b!2146234 (= e!1371760 tp!665511)))

(declare-fun tp!665510 () Bool)

(declare-fun b!2146235 () Bool)

(assert (=> b!2146235 (= e!1371762 (and (inv!32196 (_1!14412 (_1!14413 (h!29880 mapDefault!13420)))) e!1371761 tp_is_empty!9521 setRes!16770 tp!665510))))

(declare-fun condSetEmpty!16770 () Bool)

(assert (=> b!2146235 (= condSetEmpty!16770 (= (_2!14413 (h!29880 mapDefault!13420)) ((as const (Array Context!2746 Bool)) false)))))

(assert (= b!2146235 b!2146233))

(assert (= (and b!2146235 condSetEmpty!16770) setIsEmpty!16770))

(assert (= (and b!2146235 (not condSetEmpty!16770)) setNonEmpty!16770))

(assert (= setNonEmpty!16770 b!2146234))

(assert (= (and b!2145865 ((_ is Cons!24479) mapDefault!13420)) b!2146235))

(declare-fun m!2589893 () Bool)

(assert (=> setNonEmpty!16770 m!2589893))

(declare-fun m!2589895 () Bool)

(assert (=> b!2146235 m!2589895))

(declare-fun setRes!16775 () Bool)

(declare-fun e!1371774 () Bool)

(declare-fun setElem!16775 () Context!2746)

(declare-fun tp!665533 () Bool)

(declare-fun setNonEmpty!16775 () Bool)

(assert (=> setNonEmpty!16775 (= setRes!16775 (and tp!665533 (inv!32196 setElem!16775) e!1371774))))

(declare-fun mapValue!13439 () List!24564)

(declare-fun setRest!16776 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16775 (= (_1!14415 (_1!14416 (h!29881 mapValue!13439))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16775 true) setRest!16776))))

(declare-fun setIsEmpty!16775 () Bool)

(declare-fun setRes!16776 () Bool)

(assert (=> setIsEmpty!16775 setRes!16776))

(declare-fun b!2146246 () Bool)

(declare-fun tp!665530 () Bool)

(assert (=> b!2146246 (= e!1371774 tp!665530)))

(declare-fun e!1371773 () Bool)

(declare-fun setElem!16776 () Context!2746)

(declare-fun tp!665534 () Bool)

(declare-fun setNonEmpty!16776 () Bool)

(assert (=> setNonEmpty!16776 (= setRes!16776 (and tp!665534 (inv!32196 setElem!16776) e!1371773))))

(declare-fun mapDefault!13439 () List!24564)

(declare-fun setRest!16775 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16776 (= (_1!14415 (_1!14416 (h!29881 mapDefault!13439))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16776 true) setRest!16775))))

(declare-fun mapIsEmpty!13439 () Bool)

(declare-fun mapRes!13439 () Bool)

(assert (=> mapIsEmpty!13439 mapRes!13439))

(declare-fun b!2146247 () Bool)

(declare-fun e!1371772 () Bool)

(declare-fun tp!665531 () Bool)

(assert (=> b!2146247 (= e!1371772 (and setRes!16776 tp!665531))))

(declare-fun condSetEmpty!16775 () Bool)

(assert (=> b!2146247 (= condSetEmpty!16775 (= (_1!14415 (_1!14416 (h!29881 mapDefault!13439))) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun condMapEmpty!13439 () Bool)

(assert (=> mapNonEmpty!13422 (= condMapEmpty!13439 (= mapRest!13421 ((as const (Array (_ BitVec 32) List!24564)) mapDefault!13439)))))

(assert (=> mapNonEmpty!13422 (= tp!665381 (and e!1371772 mapRes!13439))))

(declare-fun b!2146248 () Bool)

(declare-fun tp!665529 () Bool)

(assert (=> b!2146248 (= e!1371773 tp!665529)))

(declare-fun setIsEmpty!16776 () Bool)

(assert (=> setIsEmpty!16776 setRes!16775))

(declare-fun b!2146249 () Bool)

(declare-fun e!1371771 () Bool)

(declare-fun tp!665528 () Bool)

(assert (=> b!2146249 (= e!1371771 (and setRes!16775 tp!665528))))

(declare-fun condSetEmpty!16776 () Bool)

(assert (=> b!2146249 (= condSetEmpty!16776 (= (_1!14415 (_1!14416 (h!29881 mapValue!13439))) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun mapNonEmpty!13439 () Bool)

(declare-fun tp!665532 () Bool)

(assert (=> mapNonEmpty!13439 (= mapRes!13439 (and tp!665532 e!1371771))))

(declare-fun mapKey!13439 () (_ BitVec 32))

(declare-fun mapRest!13439 () (Array (_ BitVec 32) List!24564))

(assert (=> mapNonEmpty!13439 (= mapRest!13421 (store mapRest!13439 mapKey!13439 mapValue!13439))))

(assert (= (and mapNonEmpty!13422 condMapEmpty!13439) mapIsEmpty!13439))

(assert (= (and mapNonEmpty!13422 (not condMapEmpty!13439)) mapNonEmpty!13439))

(assert (= (and b!2146249 condSetEmpty!16776) setIsEmpty!16776))

(assert (= (and b!2146249 (not condSetEmpty!16776)) setNonEmpty!16775))

(assert (= setNonEmpty!16775 b!2146246))

(assert (= (and mapNonEmpty!13439 ((_ is Cons!24480) mapValue!13439)) b!2146249))

(assert (= (and b!2146247 condSetEmpty!16775) setIsEmpty!16775))

(assert (= (and b!2146247 (not condSetEmpty!16775)) setNonEmpty!16776))

(assert (= setNonEmpty!16776 b!2146248))

(assert (= (and mapNonEmpty!13422 ((_ is Cons!24480) mapDefault!13439)) b!2146247))

(declare-fun m!2589897 () Bool)

(assert (=> setNonEmpty!16775 m!2589897))

(declare-fun m!2589899 () Bool)

(assert (=> setNonEmpty!16776 m!2589899))

(declare-fun m!2589901 () Bool)

(assert (=> mapNonEmpty!13439 m!2589901))

(declare-fun setNonEmpty!16777 () Bool)

(declare-fun tp!665536 () Bool)

(declare-fun setElem!16777 () Context!2746)

(declare-fun setRes!16777 () Bool)

(declare-fun e!1371776 () Bool)

(assert (=> setNonEmpty!16777 (= setRes!16777 (and tp!665536 (inv!32196 setElem!16777) e!1371776))))

(declare-fun setRest!16777 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16777 (= (_1!14415 (_1!14416 (h!29881 mapValue!13421))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16777 true) setRest!16777))))

(declare-fun b!2146250 () Bool)

(declare-fun e!1371775 () Bool)

(declare-fun tp!665537 () Bool)

(assert (=> b!2146250 (= e!1371775 (and setRes!16777 tp!665537))))

(declare-fun condSetEmpty!16777 () Bool)

(assert (=> b!2146250 (= condSetEmpty!16777 (= (_1!14415 (_1!14416 (h!29881 mapValue!13421))) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun b!2146251 () Bool)

(declare-fun tp!665535 () Bool)

(assert (=> b!2146251 (= e!1371776 tp!665535)))

(declare-fun setIsEmpty!16777 () Bool)

(assert (=> setIsEmpty!16777 setRes!16777))

(assert (=> mapNonEmpty!13422 (= tp!665379 e!1371775)))

(assert (= (and b!2146250 condSetEmpty!16777) setIsEmpty!16777))

(assert (= (and b!2146250 (not condSetEmpty!16777)) setNonEmpty!16777))

(assert (= setNonEmpty!16777 b!2146251))

(assert (= (and mapNonEmpty!13422 ((_ is Cons!24480) mapValue!13421)) b!2146250))

(declare-fun m!2589903 () Bool)

(assert (=> setNonEmpty!16777 m!2589903))

(declare-fun b!2146262 () Bool)

(declare-fun e!1371788 () Bool)

(declare-fun tp!665547 () Bool)

(assert (=> b!2146262 (= e!1371788 (and (inv!32191 (c!340744 (totalInput!3174 (h!29879 (t!197092 stack!8))))) tp!665547))))

(declare-fun setElem!16780 () Context!2746)

(declare-fun setNonEmpty!16780 () Bool)

(declare-fun tp!665549 () Bool)

(declare-fun setRes!16780 () Bool)

(declare-fun e!1371786 () Bool)

(assert (=> setNonEmpty!16780 (= setRes!16780 (and tp!665549 (inv!32196 setElem!16780) e!1371786))))

(declare-fun setRest!16780 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16780 (= (z!5905 (h!29879 (t!197092 stack!8))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16780 true) setRest!16780))))

(declare-fun e!1371785 () Bool)

(assert (=> b!2145901 (= tp!665395 e!1371785)))

(declare-fun setIsEmpty!16780 () Bool)

(assert (=> setIsEmpty!16780 setRes!16780))

(declare-fun b!2146263 () Bool)

(declare-fun tp!665548 () Bool)

(assert (=> b!2146263 (= e!1371786 tp!665548)))

(declare-fun e!1371787 () Bool)

(declare-fun b!2146264 () Bool)

(declare-fun tp!665546 () Bool)

(assert (=> b!2146264 (= e!1371785 (and (inv!32197 (h!29879 (t!197092 stack!8))) e!1371787 tp!665546))))

(declare-fun b!2146265 () Bool)

(assert (=> b!2146265 (= e!1371787 (and setRes!16780 (inv!32195 (totalInput!3174 (h!29879 (t!197092 stack!8)))) e!1371788))))

(declare-fun condSetEmpty!16780 () Bool)

(assert (=> b!2146265 (= condSetEmpty!16780 (= (z!5905 (h!29879 (t!197092 stack!8))) ((as const (Array Context!2746 Bool)) false)))))

(assert (= (and b!2146265 condSetEmpty!16780) setIsEmpty!16780))

(assert (= (and b!2146265 (not condSetEmpty!16780)) setNonEmpty!16780))

(assert (= setNonEmpty!16780 b!2146263))

(assert (= b!2146265 b!2146262))

(assert (= b!2146264 b!2146265))

(assert (= (and b!2145901 ((_ is Cons!24478) (t!197092 stack!8))) b!2146264))

(declare-fun m!2589905 () Bool)

(assert (=> b!2146262 m!2589905))

(declare-fun m!2589907 () Bool)

(assert (=> setNonEmpty!16780 m!2589907))

(declare-fun m!2589909 () Bool)

(assert (=> b!2146264 m!2589909))

(declare-fun m!2589911 () Bool)

(assert (=> b!2146265 m!2589911))

(declare-fun setRes!16781 () Bool)

(declare-fun setElem!16781 () Context!2746)

(declare-fun e!1371790 () Bool)

(declare-fun setNonEmpty!16781 () Bool)

(declare-fun tp!665551 () Bool)

(assert (=> setNonEmpty!16781 (= setRes!16781 (and tp!665551 (inv!32196 setElem!16781) e!1371790))))

(declare-fun setRest!16781 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16781 (= (_1!14415 (_1!14416 (h!29881 (zeroValue!3086 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16781 true) setRest!16781))))

(declare-fun b!2146266 () Bool)

(declare-fun e!1371789 () Bool)

(declare-fun tp!665552 () Bool)

(assert (=> b!2146266 (= e!1371789 (and setRes!16781 tp!665552))))

(declare-fun condSetEmpty!16781 () Bool)

(assert (=> b!2146266 (= condSetEmpty!16781 (= (_1!14415 (_1!14416 (h!29881 (zeroValue!3086 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))))))) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun b!2146267 () Bool)

(declare-fun tp!665550 () Bool)

(assert (=> b!2146267 (= e!1371790 tp!665550)))

(declare-fun setIsEmpty!16781 () Bool)

(assert (=> setIsEmpty!16781 setRes!16781))

(assert (=> b!2145858 (= tp!665368 e!1371789)))

(assert (= (and b!2146266 condSetEmpty!16781) setIsEmpty!16781))

(assert (= (and b!2146266 (not condSetEmpty!16781)) setNonEmpty!16781))

(assert (= setNonEmpty!16781 b!2146267))

(assert (= (and b!2145858 ((_ is Cons!24480) (zeroValue!3086 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114)))))))) b!2146266))

(declare-fun m!2589913 () Bool)

(assert (=> setNonEmpty!16781 m!2589913))

(declare-fun setElem!16782 () Context!2746)

(declare-fun setNonEmpty!16782 () Bool)

(declare-fun setRes!16782 () Bool)

(declare-fun tp!665554 () Bool)

(declare-fun e!1371792 () Bool)

(assert (=> setNonEmpty!16782 (= setRes!16782 (and tp!665554 (inv!32196 setElem!16782) e!1371792))))

(declare-fun setRest!16782 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16782 (= (_1!14415 (_1!14416 (h!29881 (minValue!3086 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))))))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16782 true) setRest!16782))))

(declare-fun b!2146268 () Bool)

(declare-fun e!1371791 () Bool)

(declare-fun tp!665555 () Bool)

(assert (=> b!2146268 (= e!1371791 (and setRes!16782 tp!665555))))

(declare-fun condSetEmpty!16782 () Bool)

(assert (=> b!2146268 (= condSetEmpty!16782 (= (_1!14415 (_1!14416 (h!29881 (minValue!3086 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114))))))))) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun b!2146269 () Bool)

(declare-fun tp!665553 () Bool)

(assert (=> b!2146269 (= e!1371792 tp!665553)))

(declare-fun setIsEmpty!16782 () Bool)

(assert (=> setIsEmpty!16782 setRes!16782))

(assert (=> b!2145858 (= tp!665369 e!1371791)))

(assert (= (and b!2146268 condSetEmpty!16782) setIsEmpty!16782))

(assert (= (and b!2146268 (not condSetEmpty!16782)) setNonEmpty!16782))

(assert (= setNonEmpty!16782 b!2146269))

(assert (= (and b!2145858 ((_ is Cons!24480) (minValue!3086 (v!29073 (underlying!5851 (v!29074 (underlying!5852 (cache!3123 cacheFurthestNullable!114)))))))) b!2146268))

(declare-fun m!2589915 () Bool)

(assert (=> setNonEmpty!16782 m!2589915))

(declare-fun b!2146270 () Bool)

(declare-fun e!1371793 () Bool)

(declare-fun tp!665556 () Bool)

(declare-fun tp!665557 () Bool)

(assert (=> b!2146270 (= e!1371793 (and tp!665556 tp!665557))))

(assert (=> b!2145894 (= tp!665371 e!1371793)))

(assert (= (and b!2145894 ((_ is Cons!24475) (exprs!1873 setElem!16721))) b!2146270))

(declare-fun setIsEmpty!16787 () Bool)

(declare-fun setRes!16787 () Bool)

(assert (=> setIsEmpty!16787 setRes!16787))

(declare-fun setNonEmpty!16787 () Bool)

(declare-fun setRes!16788 () Bool)

(assert (=> setNonEmpty!16787 (= setRes!16788 true)))

(declare-fun mapValue!13442 () List!24563)

(declare-fun setElem!16788 () Context!2746)

(declare-fun setRest!16788 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16787 (= (_2!14413 (h!29880 mapValue!13442)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16788 true) setRest!16788))))

(declare-fun condMapEmpty!13442 () Bool)

(declare-fun mapDefault!13442 () List!24563)

(assert (=> mapNonEmpty!13427 (= condMapEmpty!13442 (= mapRest!13427 ((as const (Array (_ BitVec 32) List!24563)) mapDefault!13442)))))

(declare-fun e!1371798 () Bool)

(declare-fun mapRes!13442 () Bool)

(assert (=> mapNonEmpty!13427 (and e!1371798 mapRes!13442)))

(declare-fun mapNonEmpty!13442 () Bool)

(declare-fun e!1371799 () Bool)

(assert (=> mapNonEmpty!13442 (= mapRes!13442 e!1371799)))

(declare-fun mapKey!13442 () (_ BitVec 32))

(declare-fun mapRest!13442 () (Array (_ BitVec 32) List!24563))

(assert (=> mapNonEmpty!13442 (= mapRest!13427 (store mapRest!13442 mapKey!13442 mapValue!13442))))

(declare-fun b!2146277 () Bool)

(assert (=> b!2146277 (= e!1371799 setRes!16788)))

(declare-fun condSetEmpty!16787 () Bool)

(assert (=> b!2146277 (= condSetEmpty!16787 (= (_2!14413 (h!29880 mapValue!13442)) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setIsEmpty!16788 () Bool)

(assert (=> setIsEmpty!16788 setRes!16788))

(declare-fun b!2146278 () Bool)

(assert (=> b!2146278 (= e!1371798 setRes!16787)))

(declare-fun condSetEmpty!16788 () Bool)

(assert (=> b!2146278 (= condSetEmpty!16788 (= (_2!14413 (h!29880 mapDefault!13442)) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setNonEmpty!16788 () Bool)

(assert (=> setNonEmpty!16788 (= setRes!16787 true)))

(declare-fun setElem!16787 () Context!2746)

(declare-fun setRest!16787 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16788 (= (_2!14413 (h!29880 mapDefault!13442)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16787 true) setRest!16787))))

(declare-fun mapIsEmpty!13442 () Bool)

(assert (=> mapIsEmpty!13442 mapRes!13442))

(assert (= (and mapNonEmpty!13427 condMapEmpty!13442) mapIsEmpty!13442))

(assert (= (and mapNonEmpty!13427 (not condMapEmpty!13442)) mapNonEmpty!13442))

(assert (= (and b!2146277 condSetEmpty!16787) setIsEmpty!16788))

(assert (= (and b!2146277 (not condSetEmpty!16787)) setNonEmpty!16787))

(assert (= (and mapNonEmpty!13442 ((_ is Cons!24479) mapValue!13442)) b!2146277))

(assert (= (and b!2146278 condSetEmpty!16788) setIsEmpty!16787))

(assert (= (and b!2146278 (not condSetEmpty!16788)) setNonEmpty!16788))

(assert (= (and mapNonEmpty!13427 ((_ is Cons!24479) mapDefault!13442)) b!2146278))

(declare-fun m!2589917 () Bool)

(assert (=> mapNonEmpty!13442 m!2589917))

(declare-fun b!2146279 () Bool)

(declare-fun e!1371800 () Bool)

(declare-fun setRes!16789 () Bool)

(assert (=> b!2146279 (= e!1371800 setRes!16789)))

(declare-fun condSetEmpty!16789 () Bool)

(assert (=> b!2146279 (= condSetEmpty!16789 (= (_2!14413 (h!29880 mapValue!13428)) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setIsEmpty!16789 () Bool)

(assert (=> setIsEmpty!16789 setRes!16789))

(declare-fun setNonEmpty!16789 () Bool)

(assert (=> setNonEmpty!16789 (= setRes!16789 true)))

(declare-fun setElem!16789 () Context!2746)

(declare-fun setRest!16789 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16789 (= (_2!14413 (h!29880 mapValue!13428)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16789 true) setRest!16789))))

(assert (=> mapNonEmpty!13427 e!1371800))

(assert (= (and b!2146279 condSetEmpty!16789) setIsEmpty!16789))

(assert (= (and b!2146279 (not condSetEmpty!16789)) setNonEmpty!16789))

(assert (= (and mapNonEmpty!13427 ((_ is Cons!24479) mapValue!13428)) b!2146279))

(declare-fun e!1371815 () Bool)

(declare-fun setRes!16795 () Bool)

(declare-fun tp!665584 () Bool)

(declare-fun setNonEmpty!16794 () Bool)

(declare-fun setElem!16795 () Context!2746)

(assert (=> setNonEmpty!16794 (= setRes!16795 (and tp!665584 (inv!32196 setElem!16795) e!1371815))))

(declare-fun mapValue!13445 () List!24563)

(declare-fun setRest!16795 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16794 (= (_2!14413 (h!29880 mapValue!13445)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16795 true) setRest!16795))))

(declare-fun b!2146294 () Bool)

(declare-fun tp!665583 () Bool)

(assert (=> b!2146294 (= e!1371815 tp!665583)))

(declare-fun b!2146295 () Bool)

(declare-fun e!1371813 () Bool)

(declare-fun tp!665577 () Bool)

(assert (=> b!2146295 (= e!1371813 tp!665577)))

(declare-fun b!2146296 () Bool)

(declare-fun e!1371817 () Bool)

(declare-fun tp!665581 () Bool)

(assert (=> b!2146296 (= e!1371817 tp!665581)))

(declare-fun tp!665580 () Bool)

(declare-fun e!1371814 () Bool)

(declare-fun b!2146297 () Bool)

(assert (=> b!2146297 (= e!1371814 (and (inv!32196 (_1!14412 (_1!14413 (h!29880 mapValue!13445)))) e!1371813 tp_is_empty!9521 setRes!16795 tp!665580))))

(declare-fun condSetEmpty!16794 () Bool)

(assert (=> b!2146297 (= condSetEmpty!16794 (= (_2!14413 (h!29880 mapValue!13445)) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun mapIsEmpty!13445 () Bool)

(declare-fun mapRes!13445 () Bool)

(assert (=> mapIsEmpty!13445 mapRes!13445))

(declare-fun setIsEmpty!16794 () Bool)

(assert (=> setIsEmpty!16794 setRes!16795))

(declare-fun tp!665578 () Bool)

(declare-fun setRes!16794 () Bool)

(declare-fun setNonEmpty!16795 () Bool)

(declare-fun setElem!16794 () Context!2746)

(assert (=> setNonEmpty!16795 (= setRes!16794 (and tp!665578 (inv!32196 setElem!16794) e!1371817))))

(declare-fun mapDefault!13445 () List!24563)

(declare-fun setRest!16794 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16795 (= (_2!14413 (h!29880 mapDefault!13445)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16794 true) setRest!16794))))

(declare-fun b!2146298 () Bool)

(declare-fun tp!665579 () Bool)

(declare-fun e!1371818 () Bool)

(declare-fun e!1371816 () Bool)

(assert (=> b!2146298 (= e!1371818 (and (inv!32196 (_1!14412 (_1!14413 (h!29880 mapDefault!13445)))) e!1371816 tp_is_empty!9521 setRes!16794 tp!665579))))

(declare-fun condSetEmpty!16795 () Bool)

(assert (=> b!2146298 (= condSetEmpty!16795 (= (_2!14413 (h!29880 mapDefault!13445)) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun mapNonEmpty!13445 () Bool)

(declare-fun tp!665576 () Bool)

(assert (=> mapNonEmpty!13445 (= mapRes!13445 (and tp!665576 e!1371814))))

(declare-fun mapRest!13445 () (Array (_ BitVec 32) List!24563))

(declare-fun mapKey!13445 () (_ BitVec 32))

(assert (=> mapNonEmpty!13445 (= mapRest!13422 (store mapRest!13445 mapKey!13445 mapValue!13445))))

(declare-fun condMapEmpty!13445 () Bool)

(assert (=> mapNonEmpty!13421 (= condMapEmpty!13445 (= mapRest!13422 ((as const (Array (_ BitVec 32) List!24563)) mapDefault!13445)))))

(assert (=> mapNonEmpty!13421 (= tp!665375 (and e!1371818 mapRes!13445))))

(declare-fun b!2146299 () Bool)

(declare-fun tp!665582 () Bool)

(assert (=> b!2146299 (= e!1371816 tp!665582)))

(declare-fun setIsEmpty!16795 () Bool)

(assert (=> setIsEmpty!16795 setRes!16794))

(assert (= (and mapNonEmpty!13421 condMapEmpty!13445) mapIsEmpty!13445))

(assert (= (and mapNonEmpty!13421 (not condMapEmpty!13445)) mapNonEmpty!13445))

(assert (= b!2146297 b!2146295))

(assert (= (and b!2146297 condSetEmpty!16794) setIsEmpty!16794))

(assert (= (and b!2146297 (not condSetEmpty!16794)) setNonEmpty!16794))

(assert (= setNonEmpty!16794 b!2146294))

(assert (= (and mapNonEmpty!13445 ((_ is Cons!24479) mapValue!13445)) b!2146297))

(assert (= b!2146298 b!2146299))

(assert (= (and b!2146298 condSetEmpty!16795) setIsEmpty!16795))

(assert (= (and b!2146298 (not condSetEmpty!16795)) setNonEmpty!16795))

(assert (= setNonEmpty!16795 b!2146296))

(assert (= (and mapNonEmpty!13421 ((_ is Cons!24479) mapDefault!13445)) b!2146298))

(declare-fun m!2589919 () Bool)

(assert (=> b!2146297 m!2589919))

(declare-fun m!2589921 () Bool)

(assert (=> setNonEmpty!16794 m!2589921))

(declare-fun m!2589923 () Bool)

(assert (=> mapNonEmpty!13445 m!2589923))

(declare-fun m!2589925 () Bool)

(assert (=> b!2146298 m!2589925))

(declare-fun m!2589927 () Bool)

(assert (=> setNonEmpty!16795 m!2589927))

(declare-fun b!2146300 () Bool)

(declare-fun e!1371820 () Bool)

(declare-fun tp!665587 () Bool)

(assert (=> b!2146300 (= e!1371820 tp!665587)))

(declare-fun setIsEmpty!16796 () Bool)

(declare-fun setRes!16796 () Bool)

(assert (=> setIsEmpty!16796 setRes!16796))

(declare-fun tp!665588 () Bool)

(declare-fun setNonEmpty!16796 () Bool)

(declare-fun e!1371819 () Bool)

(declare-fun setElem!16796 () Context!2746)

(assert (=> setNonEmpty!16796 (= setRes!16796 (and tp!665588 (inv!32196 setElem!16796) e!1371819))))

(declare-fun setRest!16796 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16796 (= (_2!14413 (h!29880 mapValue!13420)) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16796 true) setRest!16796))))

(declare-fun e!1371821 () Bool)

(assert (=> mapNonEmpty!13421 (= tp!665387 e!1371821)))

(declare-fun b!2146301 () Bool)

(declare-fun tp!665586 () Bool)

(assert (=> b!2146301 (= e!1371819 tp!665586)))

(declare-fun tp!665585 () Bool)

(declare-fun b!2146302 () Bool)

(assert (=> b!2146302 (= e!1371821 (and (inv!32196 (_1!14412 (_1!14413 (h!29880 mapValue!13420)))) e!1371820 tp_is_empty!9521 setRes!16796 tp!665585))))

(declare-fun condSetEmpty!16796 () Bool)

(assert (=> b!2146302 (= condSetEmpty!16796 (= (_2!14413 (h!29880 mapValue!13420)) ((as const (Array Context!2746 Bool)) false)))))

(assert (= b!2146302 b!2146300))

(assert (= (and b!2146302 condSetEmpty!16796) setIsEmpty!16796))

(assert (= (and b!2146302 (not condSetEmpty!16796)) setNonEmpty!16796))

(assert (= setNonEmpty!16796 b!2146301))

(assert (= (and mapNonEmpty!13421 ((_ is Cons!24479) mapValue!13420)) b!2146302))

(declare-fun m!2589929 () Bool)

(assert (=> setNonEmpty!16796 m!2589929))

(declare-fun m!2589931 () Bool)

(assert (=> b!2146302 m!2589931))

(declare-fun b!2146303 () Bool)

(declare-fun e!1371822 () Bool)

(declare-fun setRes!16797 () Bool)

(assert (=> b!2146303 (= e!1371822 setRes!16797)))

(declare-fun condSetEmpty!16797 () Bool)

(assert (=> b!2146303 (= condSetEmpty!16797 (= (_2!14413 (h!29880 (zeroValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798843))))))))) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setIsEmpty!16797 () Bool)

(assert (=> setIsEmpty!16797 setRes!16797))

(declare-fun setNonEmpty!16797 () Bool)

(assert (=> setNonEmpty!16797 (= setRes!16797 true)))

(declare-fun setElem!16797 () Context!2746)

(declare-fun setRest!16797 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16797 (= (_2!14413 (h!29880 (zeroValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798843))))))))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16797 true) setRest!16797))))

(assert (=> b!2145951 e!1371822))

(assert (= (and b!2146303 condSetEmpty!16797) setIsEmpty!16797))

(assert (= (and b!2146303 (not condSetEmpty!16797)) setNonEmpty!16797))

(assert (= (and b!2145951 ((_ is Cons!24479) (zeroValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798843))))))))) b!2146303))

(declare-fun b!2146304 () Bool)

(declare-fun e!1371823 () Bool)

(declare-fun setRes!16798 () Bool)

(assert (=> b!2146304 (= e!1371823 setRes!16798)))

(declare-fun condSetEmpty!16798 () Bool)

(assert (=> b!2146304 (= condSetEmpty!16798 (= (_2!14413 (h!29880 (minValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798843))))))))) ((as const (Array Context!2746 Bool)) false)))))

(declare-fun setIsEmpty!16798 () Bool)

(assert (=> setIsEmpty!16798 setRes!16798))

(declare-fun setNonEmpty!16798 () Bool)

(assert (=> setNonEmpty!16798 (= setRes!16798 true)))

(declare-fun setElem!16798 () Context!2746)

(declare-fun setRest!16798 () (InoxSet Context!2746))

(assert (=> setNonEmpty!16798 (= (_2!14413 (h!29880 (minValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798843))))))))) ((_ map or) (store ((as const (Array Context!2746 Bool)) false) setElem!16798 true) setRest!16798))))

(assert (=> b!2145951 e!1371823))

(assert (= (and b!2146304 condSetEmpty!16798) setIsEmpty!16798))

(assert (= (and b!2146304 (not condSetEmpty!16798)) setNonEmpty!16798))

(assert (= (and b!2145951 ((_ is Cons!24479) (minValue!3084 (v!29069 (underlying!5847 (v!29070 (underlying!5848 (cache!3121 (_2!14414 lt!798843))))))))) b!2146304))

(declare-fun tp!665590 () Bool)

(declare-fun b!2146305 () Bool)

(declare-fun e!1371825 () Bool)

(declare-fun tp!665589 () Bool)

(assert (=> b!2146305 (= e!1371825 (and (inv!32191 (left!18805 (c!340744 (totalInput!3175 cacheFurthestNullable!114)))) tp!665590 (inv!32191 (right!19135 (c!340744 (totalInput!3175 cacheFurthestNullable!114)))) tp!665589))))

(declare-fun b!2146307 () Bool)

(declare-fun e!1371824 () Bool)

(declare-fun tp!665591 () Bool)

(assert (=> b!2146307 (= e!1371824 tp!665591)))

(declare-fun b!2146306 () Bool)

(assert (=> b!2146306 (= e!1371825 (and (inv!32200 (xs!10881 (c!340744 (totalInput!3175 cacheFurthestNullable!114)))) e!1371824))))

(assert (=> b!2145859 (= tp!665370 (and (inv!32191 (c!340744 (totalInput!3175 cacheFurthestNullable!114))) e!1371825))))

(assert (= (and b!2145859 ((_ is Node!7939) (c!340744 (totalInput!3175 cacheFurthestNullable!114)))) b!2146305))

(assert (= b!2146306 b!2146307))

(assert (= (and b!2145859 ((_ is Leaf!11608) (c!340744 (totalInput!3175 cacheFurthestNullable!114)))) b!2146306))

(declare-fun m!2589933 () Bool)

(assert (=> b!2146305 m!2589933))

(declare-fun m!2589935 () Bool)

(assert (=> b!2146305 m!2589935))

(declare-fun m!2589937 () Bool)

(assert (=> b!2146306 m!2589937))

(assert (=> b!2145859 m!2589629))

(declare-fun b_lambda!70723 () Bool)

(assert (= b_lambda!70715 (or b!2145896 b_lambda!70723)))

(declare-fun bs!445433 () Bool)

(declare-fun d!645243 () Bool)

(assert (= bs!445433 (and d!645243 b!2145896)))

(assert (=> bs!445433 (= (dynLambda!11381 lambda!80547 (h!29879 lt!798845)) (= (totalInput!3174 (h!29879 lt!798845)) totalInput!851))))

(assert (=> b!2146063 d!645243))

(declare-fun b_lambda!70725 () Bool)

(assert (= b_lambda!70711 (or b!2145886 b_lambda!70725)))

(declare-fun bs!445434 () Bool)

(declare-fun d!645245 () Bool)

(assert (= bs!445434 (and d!645245 b!2145886)))

(assert (=> bs!445434 (= (dynLambda!11381 lambda!80546 (h!29879 stack!8)) (= (res!925925 (h!29879 stack!8)) lt!798840))))

(assert (=> b!2145963 d!645245))

(declare-fun b_lambda!70727 () Bool)

(assert (= b_lambda!70709 (or b!2145872 b_lambda!70727)))

(declare-fun bs!445435 () Bool)

(declare-fun d!645247 () Bool)

(assert (= bs!445435 (and d!645247 b!2145872)))

(assert (=> bs!445435 (= (dynLambda!11381 lambda!80548 (h!29879 stack!8)) (= (res!925925 (h!29879 stack!8)) lt!798849))))

(assert (=> b!2145961 d!645247))

(declare-fun b_lambda!70729 () Bool)

(assert (= b_lambda!70717 (or b!2145896 b_lambda!70729)))

(declare-fun bs!445436 () Bool)

(declare-fun d!645249 () Bool)

(assert (= bs!445436 (and d!645249 b!2145896)))

(assert (=> bs!445436 (= (dynLambda!11381 lambda!80547 (h!29879 (_2!14411 (_1!14414 lt!798843)))) (= (totalInput!3174 (h!29879 (_2!14411 (_1!14414 lt!798843)))) totalInput!851))))

(assert (=> b!2146106 d!645249))

(declare-fun b_lambda!70731 () Bool)

(assert (= b_lambda!70719 (or b!2145898 b_lambda!70731)))

(declare-fun bs!445437 () Bool)

(declare-fun d!645251 () Bool)

(assert (= bs!445437 (and d!645251 b!2145898)))

(assert (=> bs!445437 (= (dynLambda!11381 lambda!80549 (h!29879 (_2!14411 (_1!14414 lt!798843)))) (= (res!925925 (h!29879 (_2!14411 (_1!14414 lt!798843)))) (_1!14411 (_1!14414 lt!798843))))))

(assert (=> b!2146108 d!645251))

(declare-fun b_lambda!70733 () Bool)

(assert (= b_lambda!70721 (or b!2145896 b_lambda!70733)))

(declare-fun bs!445438 () Bool)

(declare-fun d!645253 () Bool)

(assert (= bs!445438 (and d!645253 b!2145896)))

(assert (=> bs!445438 (= (dynLambda!11381 lambda!80547 (h!29879 stack!8)) (= (totalInput!3174 (h!29879 stack!8)) totalInput!851))))

(assert (=> b!2146110 d!645253))

(declare-fun b_lambda!70735 () Bool)

(assert (= b_lambda!70713 (or b!2145872 b_lambda!70735)))

(declare-fun bs!445439 () Bool)

(declare-fun d!645255 () Bool)

(assert (= bs!445439 (and d!645255 b!2145872)))

(assert (=> bs!445439 (= (dynLambda!11381 lambda!80548 (h!29879 lt!798845)) (= (res!925925 (h!29879 lt!798845)) lt!798849))))

(assert (=> b!2146035 d!645255))

(check-sat (not b_lambda!70727) (not d!645189) (not b_lambda!70733) (not mapNonEmpty!13429) (not b_lambda!70735) (not b_lambda!70725) (not d!645217) (not b!2146216) tp_is_empty!9521 (not b_next!64005) (not setNonEmpty!16788) (not b!2146130) (not setNonEmpty!16750) (not b!2146052) (not setNonEmpty!16734) (not setNonEmpty!16746) (not setNonEmpty!16745) (not b!2146304) (not b!2146246) (not b!2146264) (not b!2146009) (not b!2146104) (not b!2146305) (not d!645231) (not b!2146296) (not b!2146103) (not b!2146269) (not b!2146084) (not b!2146294) (not b!2146045) (not b!2146043) (not b!2146235) (not b!2146234) (not mapNonEmpty!13442) (not b!2146175) (not b!2146206) (not setNonEmpty!16753) (not mapNonEmpty!13439) (not b!2146087) (not setNonEmpty!16725) (not b!2146062) (not mapNonEmpty!13445) (not b!2146008) (not b!2146248) (not b!2146071) (not setNonEmpty!16737) (not bm!128834) (not b!2146147) (not setNonEmpty!16762) (not b!2146230) (not b!2146032) (not bm!128829) (not b!2146186) (not d!645161) (not b!2146231) (not setNonEmpty!16733) (not setNonEmpty!16780) (not b!2146251) (not d!645203) (not b!2146268) (not setNonEmpty!16769) (not b!2146303) b_and!172879 (not b!2146191) (not b!2146109) (not b!2146161) (not b_next!63997) (not b_lambda!70723) (not b!2146029) (not b!2146232) (not b!2146074) (not b!2145962) (not b!2146295) (not b!2146145) (not setNonEmpty!16756) (not bm!128827) (not setNonEmpty!16796) (not b!2145975) (not setNonEmpty!16740) (not b!2146277) (not b!2146306) (not b!2146128) (not b!2146278) (not b!2146172) (not b!2146064) (not setNonEmpty!16798) (not b!2146101) (not b!2146111) (not b_next!64001) (not b!2146069) (not b!2146299) (not d!645185) (not b!2146279) (not b!2145978) (not d!645177) (not b!2146070) (not b!2146150) (not b!2146018) (not d!645165) (not setNonEmpty!16768) (not b!2146048) (not setNonEmpty!16782) (not b!2146267) (not setNonEmpty!16795) (not bm!128828) (not b!2146007) (not d!645229) (not b!2146227) (not b!2146026) (not setNonEmpty!16789) (not b!2146076) (not b!2146149) (not b!2145859) (not b!2146298) (not b!2146112) (not b!2146102) (not b!2146182) (not bm!128835) (not setNonEmpty!16770) (not b!2146160) (not b!2146169) (not b!2146262) b_and!172883 (not b_next!64007) (not d!645179) (not b!2146302) (not b!2146207) (not b!2146173) b_and!172875 (not b!2146170) (not d!645221) (not b!2146036) (not b!2146171) (not setNonEmpty!16763) (not setNonEmpty!16797) (not setNonEmpty!16749) (not b!2146058) (not b!2146263) (not b!2146270) (not b!2146228) (not b_next!63999) (not b!2146023) (not b!2146168) (not setNonEmpty!16767) (not d!645183) b_and!172881 (not d!645241) (not b!2146300) b_and!172873 (not setNonEmpty!16794) (not b_lambda!70731) (not b!2146081) (not b!2146229) (not b!2146011) (not b_next!64003) (not b!2146226) (not b!2146114) (not b!2146159) (not b!2146301) (not b!2146250) (not setNonEmpty!16775) (not b!2146297) (not setNonEmpty!16776) (not b!2146266) (not b!2146014) (not d!645193) (not b!2145878) (not mapNonEmpty!13430) (not b!2146247) (not b!2145964) (not mapNonEmpty!13433) (not b!2146213) (not b!2146059) (not setNonEmpty!16743) (not d!645187) (not b!2146198) (not b!2146225) (not setNonEmpty!16777) (not b!2146024) (not setNonEmpty!16787) (not b!2146146) (not b!2146249) (not setNonEmpty!16728) (not b!2146148) (not b!2146185) (not d!645167) (not b!2146107) (not d!645171) (not b!2146307) (not b!2146265) (not b!2146012) (not b!2146129) (not b!2146233) (not b!2145852) (not d!645199) (not mapNonEmpty!13436) (not b!2146119) (not b!2146078) (not setNonEmpty!16781) (not d!645239) (not setNonEmpty!16761) (not b!2146183) (not b_lambda!70729) (not b!2146049) (not b!2146214) (not b!2146215) (not b!2146184) (not b!2146208) (not b!2146174) (not setNonEmpty!16744) (not setNonEmpty!16766) b_and!172877)
(check-sat (not b_next!64005) (not b_next!64001) (not b_next!63999) (not b_next!64003) b_and!172877 b_and!172879 (not b_next!63997) b_and!172875 b_and!172883 (not b_next!64007) b_and!172881 b_and!172873)
