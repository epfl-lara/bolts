; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206666 () Bool)

(assert start!206666)

(declare-fun b!2116035 () Bool)

(declare-fun b_free!61325 () Bool)

(declare-fun b_next!62029 () Bool)

(assert (=> b!2116035 (= b_free!61325 (not b_next!62029))))

(declare-fun tp!645832 () Bool)

(declare-fun b_and!170905 () Bool)

(assert (=> b!2116035 (= tp!645832 b_and!170905)))

(declare-fun b!2116038 () Bool)

(declare-fun b_free!61327 () Bool)

(declare-fun b_next!62031 () Bool)

(assert (=> b!2116038 (= b_free!61327 (not b_next!62031))))

(declare-fun tp!645826 () Bool)

(declare-fun b_and!170907 () Bool)

(assert (=> b!2116038 (= tp!645826 b_and!170907)))

(declare-fun b!2116045 () Bool)

(declare-fun b_free!61329 () Bool)

(declare-fun b_next!62033 () Bool)

(assert (=> b!2116045 (= b_free!61329 (not b_next!62033))))

(declare-fun tp!645810 () Bool)

(declare-fun b_and!170909 () Bool)

(assert (=> b!2116045 (= tp!645810 b_and!170909)))

(declare-fun b!2116039 () Bool)

(declare-fun b_free!61331 () Bool)

(declare-fun b_next!62035 () Bool)

(assert (=> b!2116039 (= b_free!61331 (not b_next!62035))))

(declare-fun tp!645813 () Bool)

(declare-fun b_and!170911 () Bool)

(assert (=> b!2116039 (= tp!645813 b_and!170911)))

(declare-fun b!2116025 () Bool)

(declare-fun b_free!61333 () Bool)

(declare-fun b_next!62037 () Bool)

(assert (=> b!2116025 (= b_free!61333 (not b_next!62037))))

(declare-fun tp!645823 () Bool)

(declare-fun b_and!170913 () Bool)

(assert (=> b!2116025 (= tp!645823 b_and!170913)))

(declare-fun b!2116052 () Bool)

(declare-fun b_free!61335 () Bool)

(declare-fun b_next!62039 () Bool)

(assert (=> b!2116052 (= b_free!61335 (not b_next!62039))))

(declare-fun tp!645830 () Bool)

(declare-fun b_and!170915 () Bool)

(assert (=> b!2116052 (= tp!645830 b_and!170915)))

(declare-fun b!2116099 () Bool)

(declare-fun e!1346856 () Bool)

(declare-fun e!1346860 () Bool)

(assert (=> b!2116099 (= e!1346856 e!1346860)))

(declare-fun b!2116031 () Bool)

(declare-fun e!1346863 () Bool)

(declare-fun e!1346861 () Bool)

(declare-fun e!1346864 () Bool)

(assert (=> b!2116031 (and e!1346863 e!1346861 e!1346864)))

(declare-fun setIsEmpty!14289 () Bool)

(declare-fun setRes!14289 () Bool)

(assert (=> setIsEmpty!14289 setRes!14289))

(declare-fun b!2116100 () Bool)

(declare-fun e!1346854 () Bool)

(declare-fun e!1346853 () Bool)

(assert (=> b!2116100 (= e!1346854 e!1346853)))

(declare-fun b!2116101 () Bool)

(assert (=> b!2116101 (= e!1346853 e!1346856)))

(declare-fun b!2116102 () Bool)

(declare-fun e!1346859 () Bool)

(declare-datatypes ((C!11424 0))(
  ( (C!11425 (val!6698 Int)) )
))
(declare-datatypes ((Regex!5639 0))(
  ( (ElementMatch!5639 (c!339353 C!11424)) (Concat!9941 (regOne!11790 Regex!5639) (regTwo!11790 Regex!5639)) (EmptyExpr!5639) (Star!5639 (reg!5968 Regex!5639)) (EmptyLang!5639) (Union!5639 (regOne!11791 Regex!5639) (regTwo!11791 Regex!5639)) )
))
(declare-datatypes ((List!23654 0))(
  ( (Nil!23570) (Cons!23570 (h!28971 Regex!5639) (t!196163 List!23654)) )
))
(declare-datatypes ((Context!2418 0))(
  ( (Context!2419 (exprs!1709 List!23654)) )
))
(declare-datatypes ((tuple2!23082 0))(
  ( (tuple2!23083 (_1!13406 Context!2418) (_2!13406 C!11424)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23084 0))(
  ( (tuple2!23085 (_1!13407 tuple2!23082) (_2!13407 (InoxSet Context!2418))) )
))
(declare-datatypes ((List!23655 0))(
  ( (Nil!23571) (Cons!23571 (h!28972 tuple2!23084) (t!196164 List!23655)) )
))
(declare-datatypes ((array!8211 0))(
  ( (array!8212 (arr!3643 (Array (_ BitVec 32) List!23655)) (size!18406 (_ BitVec 32))) )
))
(declare-datatypes ((array!8213 0))(
  ( (array!8214 (arr!3644 (Array (_ BitVec 32) (_ BitVec 64))) (size!18407 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4766 0))(
  ( (LongMapFixedSize!4767 (defaultEntry!2748 Int) (mask!6518 (_ BitVec 32)) (extraKeys!2631 (_ BitVec 32)) (zeroValue!2641 List!23655) (minValue!2641 List!23655) (_size!4817 (_ BitVec 32)) (_keys!2680 array!8213) (_values!2663 array!8211) (_vacant!2444 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9357 0))(
  ( (Cell!9358 (v!28095 LongMapFixedSize!4766)) )
))
(declare-datatypes ((MutLongMap!2383 0))(
  ( (LongMap!2383 (underlying!4961 Cell!9357)) (MutLongMapExt!2382 (__x!15325 Int)) )
))
(declare-fun lt!793749 () MutLongMap!2383)

(get-info :version)

(assert (=> b!2116102 (= e!1346859 (and e!1346854 ((_ is LongMap!2383) lt!793749)))))

(declare-datatypes ((tuple3!2794 0))(
  ( (tuple3!2795 (_1!13408 Regex!5639) (_2!13408 Context!2418) (_3!1865 C!11424)) )
))
(declare-datatypes ((tuple2!23086 0))(
  ( (tuple2!23087 (_1!13409 tuple3!2794) (_2!13409 (InoxSet Context!2418))) )
))
(declare-datatypes ((List!23656 0))(
  ( (Nil!23572) (Cons!23572 (h!28973 tuple2!23086) (t!196165 List!23656)) )
))
(declare-datatypes ((array!8215 0))(
  ( (array!8216 (arr!3645 (Array (_ BitVec 32) List!23656)) (size!18408 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4768 0))(
  ( (LongMapFixedSize!4769 (defaultEntry!2749 Int) (mask!6519 (_ BitVec 32)) (extraKeys!2632 (_ BitVec 32)) (zeroValue!2642 List!23656) (minValue!2642 List!23656) (_size!4818 (_ BitVec 32)) (_keys!2681 array!8213) (_values!2664 array!8215) (_vacant!2445 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9359 0))(
  ( (Cell!9360 (v!28096 LongMapFixedSize!4768)) )
))
(declare-datatypes ((MutLongMap!2384 0))(
  ( (LongMap!2384 (underlying!4962 Cell!9359)) (MutLongMapExt!2383 (__x!15326 Int)) )
))
(declare-datatypes ((List!23657 0))(
  ( (Nil!23573) (Cons!23573 (h!28974 C!11424) (t!196166 List!23657)) )
))
(declare-datatypes ((IArray!15565 0))(
  ( (IArray!15566 (innerList!7840 List!23657)) )
))
(declare-datatypes ((Conc!7780 0))(
  ( (Node!7780 (left!18270 Conc!7780) (right!18600 Conc!7780) (csize!15790 Int) (cheight!7991 Int)) (Leaf!11367 (xs!10722 IArray!15565) (csize!15791 Int)) (Empty!7780) )
))
(declare-datatypes ((BalanceConc!15322 0))(
  ( (BalanceConc!15323 (c!339354 Conc!7780)) )
))
(declare-datatypes ((Hashable!2297 0))(
  ( (HashableExt!2296 (__x!15327 Int)) )
))
(declare-datatypes ((Cell!9361 0))(
  ( (Cell!9362 (v!28097 MutLongMap!2383)) )
))
(declare-datatypes ((StackFrame!18 0))(
  ( (StackFrame!19 (z!5691 (InoxSet Context!2418)) (from!2602 Int) (lastNullablePos!290 Int) (res!918015 Int) (totalInput!2857 BalanceConc!15322)) )
))
(declare-datatypes ((List!23658 0))(
  ( (Nil!23574) (Cons!23574 (h!28975 StackFrame!18) (t!196167 List!23658)) )
))
(declare-datatypes ((Hashable!2298 0))(
  ( (HashableExt!2297 (__x!15328 Int)) )
))
(declare-datatypes ((tuple2!23088 0))(
  ( (tuple2!23089 (_1!13410 Int) (_2!13410 List!23658)) )
))
(declare-datatypes ((MutableMap!2297 0))(
  ( (MutableMapExt!2296 (__x!15329 Int)) (HashMap!2297 (underlying!4963 Cell!9361) (hashF!4220 Hashable!2297) (_size!4819 (_ BitVec 32)) (defaultValue!2459 Int)) )
))
(declare-datatypes ((CacheUp!1586 0))(
  ( (CacheUp!1587 (cache!2678 MutableMap!2297)) )
))
(declare-datatypes ((Cell!9363 0))(
  ( (Cell!9364 (v!28098 MutLongMap!2384)) )
))
(declare-datatypes ((MutableMap!2298 0))(
  ( (MutableMapExt!2297 (__x!15330 Int)) (HashMap!2298 (underlying!4964 Cell!9363) (hashF!4221 Hashable!2298) (_size!4820 (_ BitVec 32)) (defaultValue!2460 Int)) )
))
(declare-datatypes ((CacheDown!1578 0))(
  ( (CacheDown!1579 (cache!2679 MutableMap!2298)) )
))
(declare-datatypes ((tuple3!2796 0))(
  ( (tuple3!2797 (_1!13411 tuple2!23088) (_2!13411 CacheUp!1586) (_3!1866 CacheDown!1578)) )
))
(declare-fun lt!793739 () tuple3!2796)

(assert (=> b!2116102 (= lt!793749 (v!28097 (underlying!4963 (cache!2678 (_2!13411 lt!793739)))))))

(declare-fun b!2116103 () Bool)

(declare-fun e!1346865 () Bool)

(declare-fun e!1346858 () Bool)

(assert (=> b!2116103 (= e!1346865 e!1346858)))

(declare-fun b!2116104 () Bool)

(declare-fun e!1346852 () Bool)

(assert (=> b!2116104 (= e!1346852 e!1346865)))

(declare-fun b!2116105 () Bool)

(declare-fun e!1346862 () Bool)

(assert (=> b!2116105 (= e!1346862 e!1346852)))

(declare-fun b!2116106 () Bool)

(declare-fun e!1346866 () Bool)

(assert (=> b!2116106 (= e!1346864 e!1346866)))

(declare-fun mapNonEmpty!11500 () Bool)

(declare-fun mapRes!11500 () Bool)

(assert (=> mapNonEmpty!11500 (= mapRes!11500 true)))

(declare-fun mapKey!11501 () (_ BitVec 32))

(declare-fun mapValue!11500 () List!23656)

(declare-fun mapRest!11501 () (Array (_ BitVec 32) List!23656))

(assert (=> mapNonEmpty!11500 (= (arr!3645 (_values!2664 (v!28096 (underlying!4962 (v!28098 (underlying!4964 (cache!2679 (_3!1866 lt!793739)))))))) (store mapRest!11501 mapKey!11501 mapValue!11500))))

(declare-fun b!2116107 () Bool)

(declare-fun mapRes!11501 () Bool)

(assert (=> b!2116107 (= e!1346860 mapRes!11501)))

(declare-fun condMapEmpty!11501 () Bool)

(declare-fun mapDefault!11500 () List!23655)

(assert (=> b!2116107 (= condMapEmpty!11501 (= (arr!3643 (_values!2663 (v!28095 (underlying!4961 (v!28097 (underlying!4963 (cache!2678 (_2!13411 lt!793739)))))))) ((as const (Array (_ BitVec 32) List!23655)) mapDefault!11500)))))

(declare-fun mapNonEmpty!11501 () Bool)

(assert (=> mapNonEmpty!11501 (= mapRes!11501 true)))

(declare-fun mapKey!11500 () (_ BitVec 32))

(declare-fun mapRest!11500 () (Array (_ BitVec 32) List!23655))

(declare-fun mapValue!11501 () List!23655)

(assert (=> mapNonEmpty!11501 (= (arr!3643 (_values!2663 (v!28095 (underlying!4961 (v!28097 (underlying!4963 (cache!2678 (_2!13411 lt!793739)))))))) (store mapRest!11500 mapKey!11500 mapValue!11501))))

(declare-fun setNonEmpty!14289 () Bool)

(assert (=> setNonEmpty!14289 (= setRes!14289 true)))

(declare-fun setElem!14289 () Context!2418)

(declare-fun setRest!14289 () (InoxSet Context!2418))

(assert (=> setNonEmpty!14289 (= (z!5691 (h!28975 (_2!13410 (_1!13411 lt!793739)))) ((_ map or) (store ((as const (Array Context!2418 Bool)) false) setElem!14289 true) setRest!14289))))

(declare-fun b!2116108 () Bool)

(assert (=> b!2116108 (= e!1346858 mapRes!11500)))

(declare-fun condMapEmpty!11500 () Bool)

(declare-fun mapDefault!11501 () List!23656)

(assert (=> b!2116108 (= condMapEmpty!11500 (= (arr!3645 (_values!2664 (v!28096 (underlying!4962 (v!28098 (underlying!4964 (cache!2679 (_3!1866 lt!793739)))))))) ((as const (Array (_ BitVec 32) List!23656)) mapDefault!11501)))))

(declare-fun mapIsEmpty!11500 () Bool)

(assert (=> mapIsEmpty!11500 mapRes!11501))

(declare-fun b!2116109 () Bool)

(declare-fun e!1346857 () Bool)

(assert (=> b!2116109 (= e!1346866 e!1346857)))

(declare-fun b!2116110 () Bool)

(declare-fun e!1346855 () Bool)

(assert (=> b!2116110 (= e!1346861 e!1346855)))

(declare-fun b!2116111 () Bool)

(declare-fun e!1346851 () Bool)

(assert (=> b!2116111 (= e!1346863 e!1346851)))

(declare-fun b!2116112 () Bool)

(assert (=> b!2116112 (= e!1346855 e!1346859)))

(declare-fun b!2116113 () Bool)

(assert (=> b!2116113 (= e!1346851 setRes!14289)))

(declare-fun condSetEmpty!14289 () Bool)

(assert (=> b!2116113 (= condSetEmpty!14289 (= (z!5691 (h!28975 (_2!13410 (_1!13411 lt!793739)))) ((as const (Array Context!2418 Bool)) false)))))

(declare-fun mapIsEmpty!11501 () Bool)

(assert (=> mapIsEmpty!11501 mapRes!11500))

(declare-fun b!2116114 () Bool)

(declare-fun lt!793748 () MutLongMap!2384)

(assert (=> b!2116114 (= e!1346857 (and e!1346862 ((_ is LongMap!2384) lt!793748)))))

(assert (=> b!2116114 (= lt!793748 (v!28098 (underlying!4964 (cache!2679 (_3!1866 lt!793739)))))))

(assert (= (and b!2116113 condSetEmpty!14289) setIsEmpty!14289))

(assert (= (and b!2116113 (not condSetEmpty!14289)) setNonEmpty!14289))

(assert (= b!2116111 b!2116113))

(assert (= (and b!2116031 ((_ is Cons!23574) (_2!13410 (_1!13411 lt!793739)))) b!2116111))

(assert (= (and b!2116107 condMapEmpty!11501) mapIsEmpty!11500))

(assert (= (and b!2116107 (not condMapEmpty!11501)) mapNonEmpty!11501))

(assert (= b!2116099 b!2116107))

(assert (= b!2116101 b!2116099))

(assert (= b!2116100 b!2116101))

(assert (= (and b!2116102 ((_ is LongMap!2383) (v!28097 (underlying!4963 (cache!2678 (_2!13411 lt!793739)))))) b!2116100))

(assert (= b!2116112 b!2116102))

(assert (= (and b!2116110 ((_ is HashMap!2297) (cache!2678 (_2!13411 lt!793739)))) b!2116112))

(assert (= b!2116031 b!2116110))

(assert (= (and b!2116108 condMapEmpty!11500) mapIsEmpty!11501))

(assert (= (and b!2116108 (not condMapEmpty!11500)) mapNonEmpty!11500))

(assert (= b!2116103 b!2116108))

(assert (= b!2116104 b!2116103))

(assert (= b!2116105 b!2116104))

(assert (= (and b!2116114 ((_ is LongMap!2384) (v!28098 (underlying!4964 (cache!2679 (_3!1866 lt!793739)))))) b!2116105))

(assert (= b!2116109 b!2116114))

(assert (= (and b!2116106 ((_ is HashMap!2298) (cache!2679 (_3!1866 lt!793739)))) b!2116109))

(assert (= b!2116031 b!2116106))

(declare-fun order!14549 () Int)

(declare-fun order!14551 () Int)

(declare-fun lambda!78280 () Int)

(declare-fun dynLambda!11292 (Int Int) Int)

(declare-fun dynLambda!11293 (Int Int) Int)

(assert (=> b!2116109 (< (dynLambda!11292 order!14549 (defaultValue!2460 (cache!2679 (_3!1866 lt!793739)))) (dynLambda!11293 order!14551 lambda!78280))))

(declare-fun order!14553 () Int)

(declare-fun dynLambda!11294 (Int Int) Int)

(assert (=> b!2116112 (< (dynLambda!11294 order!14553 (defaultValue!2459 (cache!2678 (_2!13411 lt!793739)))) (dynLambda!11293 order!14551 lambda!78280))))

(declare-fun order!14555 () Int)

(declare-fun dynLambda!11295 (Int Int) Int)

(assert (=> b!2116099 (< (dynLambda!11295 order!14555 (defaultEntry!2748 (v!28095 (underlying!4961 (v!28097 (underlying!4963 (cache!2678 (_2!13411 lt!793739)))))))) (dynLambda!11293 order!14551 lambda!78280))))

(declare-fun order!14557 () Int)

(declare-fun dynLambda!11296 (Int Int) Int)

(assert (=> b!2116103 (< (dynLambda!11296 order!14557 (defaultEntry!2749 (v!28096 (underlying!4962 (v!28098 (underlying!4964 (cache!2679 (_3!1866 lt!793739)))))))) (dynLambda!11293 order!14551 lambda!78280))))

(declare-fun m!2571253 () Bool)

(assert (=> mapNonEmpty!11500 m!2571253))

(declare-fun m!2571255 () Bool)

(assert (=> mapNonEmpty!11501 m!2571255))

(declare-fun bs!441226 () Bool)

(declare-fun b!2116024 () Bool)

(assert (= bs!441226 (and b!2116024 b!2116031)))

(declare-fun lambda!78281 () Int)

(assert (=> bs!441226 (not (= lambda!78281 lambda!78280))))

(assert (=> b!2116024 true))

(declare-fun b!2116022 () Bool)

(declare-fun e!1346789 () Bool)

(declare-fun tp_is_empty!9467 () Bool)

(assert (=> b!2116022 (= e!1346789 tp_is_empty!9467)))

(declare-fun b!2116023 () Bool)

(declare-fun res!918009 () Bool)

(declare-fun e!1346788 () Bool)

(assert (=> b!2116023 (=> (not res!918009) (not e!1346788))))

(declare-fun cacheDown!1229 () CacheDown!1578)

(declare-fun valid!1876 (CacheDown!1578) Bool)

(assert (=> b!2116023 (= res!918009 (valid!1876 cacheDown!1229))))

(declare-fun res!918007 () Bool)

(declare-fun e!1346797 () Bool)

(assert (=> b!2116024 (=> (not res!918007) (not e!1346797))))

(declare-fun forall!4844 (List!23658 Int) Bool)

(assert (=> b!2116024 (= res!918007 (forall!4844 (_2!13410 (_1!13411 lt!793739)) lambda!78281))))

(declare-fun e!1346811 () Bool)

(declare-fun e!1346798 () Bool)

(declare-fun tp!645819 () Bool)

(declare-datatypes ((Hashable!2299 0))(
  ( (HashableExt!2298 (__x!15331 Int)) )
))
(declare-datatypes ((tuple3!2798 0))(
  ( (tuple3!2799 (_1!13412 (InoxSet Context!2418)) (_2!13412 Int) (_3!1867 Int)) )
))
(declare-datatypes ((tuple2!23090 0))(
  ( (tuple2!23091 (_1!13413 tuple3!2798) (_2!13413 Int)) )
))
(declare-datatypes ((List!23659 0))(
  ( (Nil!23575) (Cons!23575 (h!28976 tuple2!23090) (t!196168 List!23659)) )
))
(declare-datatypes ((array!8217 0))(
  ( (array!8218 (arr!3646 (Array (_ BitVec 32) List!23659)) (size!18409 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4770 0))(
  ( (LongMapFixedSize!4771 (defaultEntry!2750 Int) (mask!6520 (_ BitVec 32)) (extraKeys!2633 (_ BitVec 32)) (zeroValue!2643 List!23659) (minValue!2643 List!23659) (_size!4821 (_ BitVec 32)) (_keys!2682 array!8213) (_values!2665 array!8217) (_vacant!2446 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9365 0))(
  ( (Cell!9366 (v!28099 LongMapFixedSize!4770)) )
))
(declare-datatypes ((MutLongMap!2385 0))(
  ( (LongMap!2385 (underlying!4965 Cell!9365)) (MutLongMapExt!2384 (__x!15332 Int)) )
))
(declare-datatypes ((Cell!9367 0))(
  ( (Cell!9368 (v!28100 MutLongMap!2385)) )
))
(declare-datatypes ((MutableMap!2299 0))(
  ( (MutableMapExt!2298 (__x!15333 Int)) (HashMap!2299 (underlying!4966 Cell!9367) (hashF!4222 Hashable!2299) (_size!4822 (_ BitVec 32)) (defaultValue!2461 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!554 0))(
  ( (CacheFurthestNullable!555 (cache!2680 MutableMap!2299) (totalInput!2858 BalanceConc!15322)) )
))
(declare-fun cacheFurthestNullable!141 () CacheFurthestNullable!554)

(declare-fun tp!645825 () Bool)

(declare-fun array_inv!2615 (array!8213) Bool)

(declare-fun array_inv!2616 (array!8217) Bool)

(assert (=> b!2116025 (= e!1346798 (and tp!645823 tp!645819 tp!645825 (array_inv!2615 (_keys!2682 (v!28099 (underlying!4965 (v!28100 (underlying!4966 (cache!2680 cacheFurthestNullable!141))))))) (array_inv!2616 (_values!2665 (v!28099 (underlying!4965 (v!28100 (underlying!4966 (cache!2680 cacheFurthestNullable!141))))))) e!1346811))))

(declare-fun c!339351 () Bool)

(declare-fun lt!793736 () Int)

(declare-fun input!6660 () BalanceConc!15322)

(declare-datatypes ((tuple2!23092 0))(
  ( (tuple2!23093 (_1!13414 BalanceConc!15322) (_2!13414 BalanceConc!15322)) )
))
(declare-fun call!128563 () tuple2!23092)

(declare-fun bm!128558 () Bool)

(declare-fun splitAt!14 (BalanceConc!15322 Int) tuple2!23092)

(assert (=> bm!128558 (= call!128563 (splitAt!14 input!6660 (ite c!339351 0 lt!793736)))))

(declare-fun b!2116026 () Bool)

(declare-fun res!918006 () Bool)

(assert (=> b!2116026 (=> (not res!918006) (not e!1346788))))

(declare-fun cacheUp!1110 () CacheUp!1586)

(declare-fun valid!1877 (CacheUp!1586) Bool)

(assert (=> b!2116026 (= res!918006 (valid!1877 cacheUp!1110))))

(declare-fun b!2116027 () Bool)

(declare-fun e!1346810 () Bool)

(declare-fun e!1346818 () Bool)

(declare-fun lt!793740 () MutLongMap!2384)

(assert (=> b!2116027 (= e!1346810 (and e!1346818 ((_ is LongMap!2384) lt!793740)))))

(assert (=> b!2116027 (= lt!793740 (v!28098 (underlying!4964 (cache!2679 cacheDown!1229))))))

(declare-fun b!2116028 () Bool)

(declare-fun res!918014 () Bool)

(declare-fun e!1346814 () Bool)

(assert (=> b!2116028 (=> (not res!918014) (not e!1346814))))

(declare-fun lt!793741 () tuple2!23092)

(declare-datatypes ((tuple2!23094 0))(
  ( (tuple2!23095 (_1!13415 List!23657) (_2!13415 List!23657)) )
))
(declare-fun lt!793733 () tuple2!23094)

(declare-fun list!9503 (BalanceConc!15322) List!23657)

(assert (=> b!2116028 (= res!918014 (= (list!9503 (_2!13414 lt!793741)) (_2!13415 lt!793733)))))

(declare-fun b!2116029 () Bool)

(declare-fun tp!645815 () Bool)

(declare-fun mapRes!11495 () Bool)

(assert (=> b!2116029 (= e!1346811 (and tp!645815 mapRes!11495))))

(declare-fun condMapEmpty!11494 () Bool)

(declare-fun mapDefault!11495 () List!23659)

(assert (=> b!2116029 (= condMapEmpty!11494 (= (arr!3646 (_values!2665 (v!28099 (underlying!4965 (v!28100 (underlying!4966 (cache!2680 cacheFurthestNullable!141))))))) ((as const (Array (_ BitVec 32) List!23659)) mapDefault!11495)))))

(declare-fun b!2116030 () Bool)

(declare-fun e!1346803 () Bool)

(declare-fun totalInput!1306 () BalanceConc!15322)

(declare-fun tp!645828 () Bool)

(declare-fun inv!31147 (Conc!7780) Bool)

(assert (=> b!2116030 (= e!1346803 (and (inv!31147 (c!339354 totalInput!1306)) tp!645828))))

(declare-fun e!1346804 () Bool)

(assert (=> b!2116031 (= e!1346804 (not true))))

(declare-datatypes ((tuple4!936 0))(
  ( (tuple4!937 (_1!13416 tuple2!23092) (_2!13416 CacheUp!1586) (_3!1868 CacheDown!1578) (_4!468 CacheFurthestNullable!554)) )
))
(declare-fun lt!793742 () tuple4!936)

(declare-fun lt!793731 () tuple4!936)

(declare-fun lt!793734 () (InoxSet Context!2418))

(declare-fun findLongestMatchZipperSequenceV3Mem!5 ((InoxSet Context!2418) BalanceConc!15322 BalanceConc!15322 CacheUp!1586 CacheDown!1578 CacheFurthestNullable!554) tuple4!936)

(assert (=> b!2116031 (= lt!793731 (findLongestMatchZipperSequenceV3Mem!5 lt!793734 input!6660 totalInput!1306 (_2!13416 lt!793742) (_3!1868 lt!793742) (_4!468 lt!793742)))))

(assert (=> b!2116031 e!1346797))

(declare-fun res!918012 () Bool)

(assert (=> b!2116031 (=> (not res!918012) (not e!1346797))))

(assert (=> b!2116031 (= res!918012 (forall!4844 (_2!13410 (_1!13411 lt!793739)) lambda!78280))))

(declare-fun lt!793735 () Int)

(assert (=> b!2116031 (= lt!793736 (+ 1 (- (_1!13410 (_1!13411 lt!793739)) lt!793735)))))

(declare-fun lt!793737 () Int)

(declare-fun e!1346794 () Int)

(declare-fun furthestNullablePositionStackMem!4 ((InoxSet Context!2418) Int BalanceConc!15322 Int Int List!23658 CacheUp!1586 CacheDown!1578 CacheFurthestNullable!554) tuple3!2796)

(assert (=> b!2116031 (= lt!793739 (furthestNullablePositionStackMem!4 lt!793734 lt!793735 totalInput!1306 lt!793737 e!1346794 Nil!23574 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(declare-fun c!339352 () Bool)

(declare-fun nullableZipper!51 ((InoxSet Context!2418)) Bool)

(assert (=> b!2116031 (= c!339352 (nullableZipper!51 lt!793734))))

(declare-fun size!18410 (BalanceConc!15322) Int)

(assert (=> b!2116031 (= lt!793735 (- lt!793737 (size!18410 input!6660)))))

(assert (=> b!2116031 (= lt!793737 (size!18410 totalInput!1306))))

(assert (=> b!2116031 (= lt!793742 (findLongestMatchZipperSequenceV3Mem!5 lt!793734 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(assert (=> b!2116031 e!1346814))

(declare-fun res!918010 () Bool)

(assert (=> b!2116031 (=> (not res!918010) (not e!1346814))))

(assert (=> b!2116031 (= res!918010 (= (list!9503 (_1!13414 lt!793741)) (_1!13415 lt!793733)))))

(declare-fun findLongestMatchZipperFastV2!12 ((InoxSet Context!2418) BalanceConc!15322 BalanceConc!15322) tuple2!23092)

(assert (=> b!2116031 (= lt!793741 (findLongestMatchZipperFastV2!12 lt!793734 input!6660 totalInput!1306))))

(declare-datatypes ((Unit!37554 0))(
  ( (Unit!37555) )
))
(declare-fun lt!793728 () Unit!37554)

(declare-fun r!15373 () Regex!5639)

(declare-fun longestMatchV2SameAsRegex!12 (Regex!5639 (InoxSet Context!2418) BalanceConc!15322 BalanceConc!15322) Unit!37554)

(assert (=> b!2116031 (= lt!793728 (longestMatchV2SameAsRegex!12 r!15373 lt!793734 input!6660 totalInput!1306))))

(declare-fun lt!793730 () List!23657)

(declare-fun sizeTr!97 (List!23657 Int) Int)

(declare-fun size!18411 (List!23657) Int)

(assert (=> b!2116031 (= (sizeTr!97 lt!793730 0) (size!18411 lt!793730))))

(declare-fun lt!793727 () Unit!37554)

(declare-fun lemmaSizeTrEqualsSize!97 (List!23657 Int) Unit!37554)

(assert (=> b!2116031 (= lt!793727 (lemmaSizeTrEqualsSize!97 lt!793730 0))))

(declare-fun e!1346806 () Bool)

(assert (=> b!2116031 e!1346806))

(declare-fun res!918005 () Bool)

(assert (=> b!2116031 (=> (not res!918005) (not e!1346806))))

(declare-fun lt!793729 () tuple2!23092)

(assert (=> b!2116031 (= res!918005 (= (list!9503 (_1!13414 lt!793729)) (_1!13415 lt!793733)))))

(declare-fun findLongestMatch!514 (Regex!5639 List!23657) tuple2!23094)

(assert (=> b!2116031 (= lt!793733 (findLongestMatch!514 r!15373 lt!793730))))

(declare-fun findLongestMatchZipperSequenceV3!7 ((InoxSet Context!2418) BalanceConc!15322 BalanceConc!15322) tuple2!23092)

(assert (=> b!2116031 (= lt!793729 (findLongestMatchZipperSequenceV3!7 lt!793734 input!6660 totalInput!1306))))

(declare-fun lt!793743 () Unit!37554)

(declare-fun longestMatchV3SameAsRegex!7 (Regex!5639 (InoxSet Context!2418) BalanceConc!15322 BalanceConc!15322) Unit!37554)

(assert (=> b!2116031 (= lt!793743 (longestMatchV3SameAsRegex!7 r!15373 lt!793734 input!6660 totalInput!1306))))

(declare-fun focus!274 (Regex!5639) (InoxSet Context!2418))

(assert (=> b!2116031 (= lt!793734 (focus!274 r!15373))))

(declare-fun b!2116032 () Bool)

(declare-fun e!1346791 () Bool)

(declare-fun e!1346787 () Bool)

(declare-fun lt!793738 () MutLongMap!2383)

(assert (=> b!2116032 (= e!1346791 (and e!1346787 ((_ is LongMap!2383) lt!793738)))))

(assert (=> b!2116032 (= lt!793738 (v!28097 (underlying!4963 (cache!2678 cacheUp!1110))))))

(declare-fun e!1346808 () Bool)

(declare-fun e!1346815 () Bool)

(declare-fun e!1346816 () Bool)

(declare-fun b!2116033 () Bool)

(declare-fun inv!31148 (BalanceConc!15322) Bool)

(assert (=> b!2116033 (= e!1346808 (and e!1346816 (inv!31148 (totalInput!2858 cacheFurthestNullable!141)) e!1346815))))

(declare-fun b!2116034 () Bool)

(declare-fun e!1346796 () Bool)

(declare-fun e!1346792 () Bool)

(assert (=> b!2116034 (= e!1346796 e!1346792)))

(declare-fun e!1346812 () Bool)

(assert (=> b!2116035 (= e!1346816 (and e!1346812 tp!645832))))

(declare-fun mapIsEmpty!11493 () Bool)

(declare-fun mapRes!11493 () Bool)

(assert (=> mapIsEmpty!11493 mapRes!11493))

(declare-fun b!2116036 () Bool)

(declare-fun e!1346802 () Bool)

(declare-fun e!1346805 () Bool)

(assert (=> b!2116036 (= e!1346802 e!1346805)))

(declare-fun b!2116037 () Bool)

(declare-fun e!1346799 () tuple2!23092)

(assert (=> b!2116037 (= e!1346799 call!128563)))

(declare-fun mapIsEmpty!11494 () Bool)

(assert (=> mapIsEmpty!11494 mapRes!11495))

(assert (=> b!2116038 (= e!1346792 (and e!1346791 tp!645826))))

(declare-fun tp!645824 () Bool)

(declare-fun tp!645816 () Bool)

(declare-fun e!1346800 () Bool)

(declare-fun e!1346813 () Bool)

(declare-fun array_inv!2617 (array!8215) Bool)

(assert (=> b!2116039 (= e!1346813 (and tp!645813 tp!645824 tp!645816 (array_inv!2615 (_keys!2681 (v!28096 (underlying!4962 (v!28098 (underlying!4964 (cache!2679 cacheDown!1229))))))) (array_inv!2617 (_values!2664 (v!28096 (underlying!4962 (v!28098 (underlying!4964 (cache!2679 cacheDown!1229))))))) e!1346800))))

(declare-fun b!2116040 () Bool)

(declare-fun e!1346790 () Bool)

(declare-fun tp!645811 () Bool)

(assert (=> b!2116040 (= e!1346790 (and tp!645811 mapRes!11493))))

(declare-fun condMapEmpty!11493 () Bool)

(declare-fun mapDefault!11494 () List!23655)

(assert (=> b!2116040 (= condMapEmpty!11493 (= (arr!3643 (_values!2663 (v!28095 (underlying!4961 (v!28097 (underlying!4963 (cache!2678 cacheUp!1110))))))) ((as const (Array (_ BitVec 32) List!23655)) mapDefault!11494)))))

(declare-fun b!2116041 () Bool)

(declare-fun res!918008 () Bool)

(assert (=> b!2116041 (=> (not res!918008) (not e!1346788))))

(assert (=> b!2116041 (= res!918008 (= (totalInput!2858 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun b!2116042 () Bool)

(declare-fun e!1346785 () Bool)

(assert (=> b!2116042 (= e!1346785 e!1346813)))

(declare-fun mapNonEmpty!11493 () Bool)

(declare-fun mapRes!11494 () Bool)

(declare-fun tp!645831 () Bool)

(declare-fun tp!645814 () Bool)

(assert (=> mapNonEmpty!11493 (= mapRes!11494 (and tp!645831 tp!645814))))

(declare-fun mapRest!11493 () (Array (_ BitVec 32) List!23656))

(declare-fun mapValue!11495 () List!23656)

(declare-fun mapKey!11493 () (_ BitVec 32))

(assert (=> mapNonEmpty!11493 (= (arr!3645 (_values!2664 (v!28096 (underlying!4962 (v!28098 (underlying!4964 (cache!2679 cacheDown!1229))))))) (store mapRest!11493 mapKey!11493 mapValue!11495))))

(declare-fun b!2116043 () Bool)

(assert (=> b!2116043 (= e!1346818 e!1346785)))

(declare-fun b!2116044 () Bool)

(assert (=> b!2116044 (= e!1346794 (- lt!793735 1))))

(declare-fun mapNonEmpty!11494 () Bool)

(declare-fun tp!645835 () Bool)

(declare-fun tp!645822 () Bool)

(assert (=> mapNonEmpty!11494 (= mapRes!11493 (and tp!645835 tp!645822))))

(declare-fun mapValue!11493 () List!23655)

(declare-fun mapRest!11495 () (Array (_ BitVec 32) List!23655))

(declare-fun mapKey!11495 () (_ BitVec 32))

(assert (=> mapNonEmpty!11494 (= (arr!3643 (_values!2663 (v!28095 (underlying!4961 (v!28097 (underlying!4963 (cache!2678 cacheUp!1110))))))) (store mapRest!11495 mapKey!11495 mapValue!11493))))

(declare-fun tp!645821 () Bool)

(declare-fun tp!645833 () Bool)

(declare-fun e!1346784 () Bool)

(declare-fun array_inv!2618 (array!8211) Bool)

(assert (=> b!2116045 (= e!1346784 (and tp!645810 tp!645833 tp!645821 (array_inv!2615 (_keys!2680 (v!28095 (underlying!4961 (v!28097 (underlying!4963 (cache!2678 cacheUp!1110))))))) (array_inv!2618 (_values!2663 (v!28095 (underlying!4961 (v!28097 (underlying!4963 (cache!2678 cacheUp!1110))))))) e!1346790))))

(declare-fun b!2116046 () Bool)

(assert (=> b!2116046 (= e!1346788 e!1346804)))

(declare-fun res!918004 () Bool)

(assert (=> b!2116046 (=> (not res!918004) (not e!1346804))))

(declare-fun isSuffix!602 (List!23657 List!23657) Bool)

(assert (=> b!2116046 (= res!918004 (isSuffix!602 lt!793730 (list!9503 totalInput!1306)))))

(assert (=> b!2116046 (= lt!793730 (list!9503 input!6660))))

(declare-fun b!2116047 () Bool)

(declare-fun findLongestMatchWithZipperSequenceV2!81 (Regex!5639 BalanceConc!15322 BalanceConc!15322) tuple2!23092)

(assert (=> b!2116047 (= e!1346814 (= (findLongestMatchWithZipperSequenceV2!81 r!15373 input!6660 totalInput!1306) lt!793741))))

(declare-fun b!2116048 () Bool)

(declare-datatypes ((tuple2!23096 0))(
  ( (tuple2!23097 (_1!13417 Unit!37554) (_2!13417 CacheFurthestNullable!554)) )
))
(declare-fun fillUpCache!4 (List!23658 BalanceConc!15322 Int Int Int CacheFurthestNullable!554) tuple2!23096)

(assert (=> b!2116048 (= e!1346797 (= lt!793742 (tuple4!937 e!1346799 (_2!13411 lt!793739) (_3!1866 lt!793739) (_2!13417 (fillUpCache!4 (_2!13410 (_1!13411 lt!793739)) totalInput!1306 lt!793737 (_1!13410 (_1!13411 lt!793739)) 0 cacheFurthestNullable!141)))))))

(assert (=> b!2116048 (= c!339351 (< lt!793736 0))))

(declare-fun b!2116049 () Bool)

(declare-fun e!1346807 () Bool)

(declare-fun tp!645812 () Bool)

(assert (=> b!2116049 (= e!1346807 (and (inv!31147 (c!339354 input!6660)) tp!645812))))

(declare-fun b!2116050 () Bool)

(declare-fun lt!793732 () MutLongMap!2385)

(assert (=> b!2116050 (= e!1346812 (and e!1346802 ((_ is LongMap!2385) lt!793732)))))

(assert (=> b!2116050 (= lt!793732 (v!28100 (underlying!4966 (cache!2680 cacheFurthestNullable!141))))))

(declare-fun b!2116051 () Bool)

(declare-fun tp!645809 () Bool)

(declare-fun tp!645818 () Bool)

(assert (=> b!2116051 (= e!1346789 (and tp!645809 tp!645818))))

(declare-fun e!1346801 () Bool)

(assert (=> b!2116052 (= e!1346801 (and e!1346810 tp!645830))))

(declare-fun mapNonEmpty!11495 () Bool)

(declare-fun tp!645817 () Bool)

(declare-fun tp!645829 () Bool)

(assert (=> mapNonEmpty!11495 (= mapRes!11495 (and tp!645817 tp!645829))))

(declare-fun mapValue!11494 () List!23659)

(declare-fun mapRest!11494 () (Array (_ BitVec 32) List!23659))

(declare-fun mapKey!11494 () (_ BitVec 32))

(assert (=> mapNonEmpty!11495 (= (arr!3646 (_values!2665 (v!28099 (underlying!4965 (v!28100 (underlying!4966 (cache!2680 cacheFurthestNullable!141))))))) (store mapRest!11494 mapKey!11494 mapValue!11494))))

(declare-fun b!2116053 () Bool)

(assert (=> b!2116053 (= e!1346799 call!128563)))

(declare-fun b!2116054 () Bool)

(declare-fun e!1346793 () Bool)

(assert (=> b!2116054 (= e!1346793 e!1346784)))

(declare-fun res!918011 () Bool)

(assert (=> start!206666 (=> (not res!918011) (not e!1346788))))

(declare-fun validRegex!2226 (Regex!5639) Bool)

(assert (=> start!206666 (= res!918011 (validRegex!2226 r!15373))))

(assert (=> start!206666 e!1346788))

(declare-fun e!1346795 () Bool)

(declare-fun inv!31149 (CacheDown!1578) Bool)

(assert (=> start!206666 (and (inv!31149 cacheDown!1229) e!1346795)))

(assert (=> start!206666 e!1346789))

(declare-fun inv!31150 (CacheUp!1586) Bool)

(assert (=> start!206666 (and (inv!31150 cacheUp!1110) e!1346796)))

(assert (=> start!206666 (and (inv!31148 input!6660) e!1346807)))

(assert (=> start!206666 (and (inv!31148 totalInput!1306) e!1346803)))

(declare-fun inv!31151 (CacheFurthestNullable!554) Bool)

(assert (=> start!206666 (and (inv!31151 cacheFurthestNullable!141) e!1346808)))

(declare-fun b!2116055 () Bool)

(assert (=> b!2116055 (= e!1346805 e!1346798)))

(declare-fun mapIsEmpty!11495 () Bool)

(assert (=> mapIsEmpty!11495 mapRes!11494))

(declare-fun b!2116056 () Bool)

(declare-fun tp!645808 () Bool)

(assert (=> b!2116056 (= e!1346815 (and (inv!31147 (c!339354 (totalInput!2858 cacheFurthestNullable!141))) tp!645808))))

(declare-fun b!2116057 () Bool)

(declare-fun tp!645834 () Bool)

(assert (=> b!2116057 (= e!1346800 (and tp!645834 mapRes!11494))))

(declare-fun condMapEmpty!11495 () Bool)

(declare-fun mapDefault!11493 () List!23656)

(assert (=> b!2116057 (= condMapEmpty!11495 (= (arr!3645 (_values!2664 (v!28096 (underlying!4962 (v!28098 (underlying!4964 (cache!2679 cacheDown!1229))))))) ((as const (Array (_ BitVec 32) List!23656)) mapDefault!11493)))))

(declare-fun b!2116058 () Bool)

(assert (=> b!2116058 (= e!1346795 e!1346801)))

(declare-fun b!2116059 () Bool)

(assert (=> b!2116059 (= e!1346787 e!1346793)))

(declare-fun b!2116060 () Bool)

(assert (=> b!2116060 (= e!1346806 (= (list!9503 (_2!13414 lt!793729)) (_2!13415 lt!793733)))))

(declare-fun b!2116061 () Bool)

(assert (=> b!2116061 (= e!1346794 (- 1))))

(declare-fun b!2116062 () Bool)

(declare-fun res!918013 () Bool)

(assert (=> b!2116062 (=> (not res!918013) (not e!1346788))))

(declare-fun valid!1878 (CacheFurthestNullable!554) Bool)

(assert (=> b!2116062 (= res!918013 (valid!1878 cacheFurthestNullable!141))))

(declare-fun b!2116063 () Bool)

(declare-fun tp!645820 () Bool)

(assert (=> b!2116063 (= e!1346789 tp!645820)))

(declare-fun b!2116064 () Bool)

(declare-fun tp!645827 () Bool)

(declare-fun tp!645836 () Bool)

(assert (=> b!2116064 (= e!1346789 (and tp!645827 tp!645836))))

(assert (= (and start!206666 res!918011) b!2116026))

(assert (= (and b!2116026 res!918006) b!2116023))

(assert (= (and b!2116023 res!918009) b!2116062))

(assert (= (and b!2116062 res!918013) b!2116041))

(assert (= (and b!2116041 res!918008) b!2116046))

(assert (= (and b!2116046 res!918004) b!2116031))

(assert (= (and b!2116031 res!918005) b!2116060))

(assert (= (and b!2116031 res!918010) b!2116028))

(assert (= (and b!2116028 res!918014) b!2116047))

(assert (= (and b!2116031 c!339352) b!2116044))

(assert (= (and b!2116031 (not c!339352)) b!2116061))

(assert (= (and b!2116031 res!918012) b!2116024))

(assert (= (and b!2116024 res!918007) b!2116048))

(assert (= (and b!2116048 c!339351) b!2116037))

(assert (= (and b!2116048 (not c!339351)) b!2116053))

(assert (= (or b!2116037 b!2116053) bm!128558))

(assert (= (and b!2116057 condMapEmpty!11495) mapIsEmpty!11495))

(assert (= (and b!2116057 (not condMapEmpty!11495)) mapNonEmpty!11493))

(assert (= b!2116039 b!2116057))

(assert (= b!2116042 b!2116039))

(assert (= b!2116043 b!2116042))

(assert (= (and b!2116027 ((_ is LongMap!2384) (v!28098 (underlying!4964 (cache!2679 cacheDown!1229))))) b!2116043))

(assert (= b!2116052 b!2116027))

(assert (= (and b!2116058 ((_ is HashMap!2298) (cache!2679 cacheDown!1229))) b!2116052))

(assert (= start!206666 b!2116058))

(assert (= (and start!206666 ((_ is ElementMatch!5639) r!15373)) b!2116022))

(assert (= (and start!206666 ((_ is Concat!9941) r!15373)) b!2116064))

(assert (= (and start!206666 ((_ is Star!5639) r!15373)) b!2116063))

(assert (= (and start!206666 ((_ is Union!5639) r!15373)) b!2116051))

(assert (= (and b!2116040 condMapEmpty!11493) mapIsEmpty!11493))

(assert (= (and b!2116040 (not condMapEmpty!11493)) mapNonEmpty!11494))

(assert (= b!2116045 b!2116040))

(assert (= b!2116054 b!2116045))

(assert (= b!2116059 b!2116054))

(assert (= (and b!2116032 ((_ is LongMap!2383) (v!28097 (underlying!4963 (cache!2678 cacheUp!1110))))) b!2116059))

(assert (= b!2116038 b!2116032))

(assert (= (and b!2116034 ((_ is HashMap!2297) (cache!2678 cacheUp!1110))) b!2116038))

(assert (= start!206666 b!2116034))

(assert (= start!206666 b!2116049))

(assert (= start!206666 b!2116030))

(assert (= (and b!2116029 condMapEmpty!11494) mapIsEmpty!11494))

(assert (= (and b!2116029 (not condMapEmpty!11494)) mapNonEmpty!11495))

(assert (= b!2116025 b!2116029))

(assert (= b!2116055 b!2116025))

(assert (= b!2116036 b!2116055))

(assert (= (and b!2116050 ((_ is LongMap!2385) (v!28100 (underlying!4966 (cache!2680 cacheFurthestNullable!141))))) b!2116036))

(assert (= b!2116035 b!2116050))

(assert (= (and b!2116033 ((_ is HashMap!2299) (cache!2680 cacheFurthestNullable!141))) b!2116035))

(assert (= b!2116033 b!2116056))

(assert (= start!206666 b!2116033))

(declare-fun m!2571257 () Bool)

(assert (=> b!2116025 m!2571257))

(declare-fun m!2571259 () Bool)

(assert (=> b!2116025 m!2571259))

(declare-fun m!2571261 () Bool)

(assert (=> b!2116033 m!2571261))

(declare-fun m!2571263 () Bool)

(assert (=> b!2116049 m!2571263))

(declare-fun m!2571265 () Bool)

(assert (=> b!2116046 m!2571265))

(assert (=> b!2116046 m!2571265))

(declare-fun m!2571267 () Bool)

(assert (=> b!2116046 m!2571267))

(declare-fun m!2571269 () Bool)

(assert (=> b!2116046 m!2571269))

(declare-fun m!2571271 () Bool)

(assert (=> b!2116047 m!2571271))

(declare-fun m!2571273 () Bool)

(assert (=> start!206666 m!2571273))

(declare-fun m!2571275 () Bool)

(assert (=> start!206666 m!2571275))

(declare-fun m!2571277 () Bool)

(assert (=> start!206666 m!2571277))

(declare-fun m!2571279 () Bool)

(assert (=> start!206666 m!2571279))

(declare-fun m!2571281 () Bool)

(assert (=> start!206666 m!2571281))

(declare-fun m!2571283 () Bool)

(assert (=> start!206666 m!2571283))

(declare-fun m!2571285 () Bool)

(assert (=> b!2116060 m!2571285))

(declare-fun m!2571287 () Bool)

(assert (=> b!2116026 m!2571287))

(declare-fun m!2571289 () Bool)

(assert (=> b!2116024 m!2571289))

(declare-fun m!2571291 () Bool)

(assert (=> b!2116045 m!2571291))

(declare-fun m!2571293 () Bool)

(assert (=> b!2116045 m!2571293))

(declare-fun m!2571295 () Bool)

(assert (=> b!2116062 m!2571295))

(declare-fun m!2571297 () Bool)

(assert (=> mapNonEmpty!11493 m!2571297))

(declare-fun m!2571299 () Bool)

(assert (=> b!2116031 m!2571299))

(declare-fun m!2571301 () Bool)

(assert (=> b!2116031 m!2571301))

(declare-fun m!2571303 () Bool)

(assert (=> b!2116031 m!2571303))

(declare-fun m!2571305 () Bool)

(assert (=> b!2116031 m!2571305))

(declare-fun m!2571307 () Bool)

(assert (=> b!2116031 m!2571307))

(declare-fun m!2571309 () Bool)

(assert (=> b!2116031 m!2571309))

(declare-fun m!2571311 () Bool)

(assert (=> b!2116031 m!2571311))

(declare-fun m!2571313 () Bool)

(assert (=> b!2116031 m!2571313))

(declare-fun m!2571315 () Bool)

(assert (=> b!2116031 m!2571315))

(declare-fun m!2571317 () Bool)

(assert (=> b!2116031 m!2571317))

(declare-fun m!2571319 () Bool)

(assert (=> b!2116031 m!2571319))

(declare-fun m!2571321 () Bool)

(assert (=> b!2116031 m!2571321))

(declare-fun m!2571323 () Bool)

(assert (=> b!2116031 m!2571323))

(declare-fun m!2571325 () Bool)

(assert (=> b!2116031 m!2571325))

(declare-fun m!2571327 () Bool)

(assert (=> b!2116031 m!2571327))

(declare-fun m!2571329 () Bool)

(assert (=> b!2116031 m!2571329))

(declare-fun m!2571331 () Bool)

(assert (=> b!2116031 m!2571331))

(declare-fun m!2571333 () Bool)

(assert (=> b!2116031 m!2571333))

(declare-fun m!2571335 () Bool)

(assert (=> mapNonEmpty!11494 m!2571335))

(declare-fun m!2571337 () Bool)

(assert (=> b!2116023 m!2571337))

(declare-fun m!2571339 () Bool)

(assert (=> bm!128558 m!2571339))

(declare-fun m!2571341 () Bool)

(assert (=> mapNonEmpty!11495 m!2571341))

(declare-fun m!2571343 () Bool)

(assert (=> b!2116028 m!2571343))

(declare-fun m!2571345 () Bool)

(assert (=> b!2116056 m!2571345))

(declare-fun m!2571347 () Bool)

(assert (=> b!2116048 m!2571347))

(declare-fun m!2571349 () Bool)

(assert (=> b!2116030 m!2571349))

(declare-fun m!2571351 () Bool)

(assert (=> b!2116039 m!2571351))

(declare-fun m!2571353 () Bool)

(assert (=> b!2116039 m!2571353))

(check-sat b_and!170909 (not b!2116064) (not b!2116023) (not b!2116026) tp_is_empty!9467 (not b!2116047) (not b!2116048) (not b!2116039) (not b!2116040) (not b!2116063) (not mapNonEmpty!11500) (not b!2116046) (not b!2116099) b_and!170905 b_and!170915 (not b!2116060) b_and!170907 (not b!2116057) (not mapNonEmpty!11493) (not mapNonEmpty!11494) (not b!2116030) (not b!2116045) (not bm!128558) (not b_next!62035) (not b_next!62029) (not b!2116062) (not mapNonEmpty!11501) (not b!2116028) (not b_next!62037) (not b!2116031) (not mapNonEmpty!11495) (not b_next!62039) (not setNonEmpty!14289) (not b!2116049) (not b_next!62033) (not b!2116051) (not b!2116111) (not start!206666) b_and!170911 (not b!2116056) (not b!2116033) b_and!170913 (not b_next!62031) (not b!2116107) (not b!2116103) (not b!2116025) (not b!2116108) (not b!2116029) (not b!2116024))
(check-sat b_and!170905 b_and!170915 b_and!170909 b_and!170907 (not b_next!62035) (not b_next!62039) (not b_next!62033) b_and!170911 (not b_next!62029) (not b_next!62037) b_and!170913 (not b_next!62031))
