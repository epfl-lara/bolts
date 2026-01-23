; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206530 () Bool)

(assert start!206530)

(declare-fun b!2114507 () Bool)

(declare-fun b_free!61277 () Bool)

(declare-fun b_next!61981 () Bool)

(assert (=> b!2114507 (= b_free!61277 (not b_next!61981))))

(declare-fun tp!645061 () Bool)

(declare-fun b_and!170857 () Bool)

(assert (=> b!2114507 (= tp!645061 b_and!170857)))

(declare-fun b!2114498 () Bool)

(declare-fun b_free!61279 () Bool)

(declare-fun b_next!61983 () Bool)

(assert (=> b!2114498 (= b_free!61279 (not b_next!61983))))

(declare-fun tp!645060 () Bool)

(declare-fun b_and!170859 () Bool)

(assert (=> b!2114498 (= tp!645060 b_and!170859)))

(declare-fun b!2114505 () Bool)

(declare-fun b_free!61281 () Bool)

(declare-fun b_next!61985 () Bool)

(assert (=> b!2114505 (= b_free!61281 (not b_next!61985))))

(declare-fun tp!645077 () Bool)

(declare-fun b_and!170861 () Bool)

(assert (=> b!2114505 (= tp!645077 b_and!170861)))

(declare-fun b!2114522 () Bool)

(declare-fun b_free!61283 () Bool)

(declare-fun b_next!61987 () Bool)

(assert (=> b!2114522 (= b_free!61283 (not b_next!61987))))

(declare-fun tp!645056 () Bool)

(declare-fun b_and!170863 () Bool)

(assert (=> b!2114522 (= tp!645056 b_and!170863)))

(declare-fun b!2114484 () Bool)

(declare-fun b_free!61285 () Bool)

(declare-fun b_next!61989 () Bool)

(assert (=> b!2114484 (= b_free!61285 (not b_next!61989))))

(declare-fun tp!645076 () Bool)

(declare-fun b_and!170865 () Bool)

(assert (=> b!2114484 (= tp!645076 b_and!170865)))

(declare-fun b!2114494 () Bool)

(declare-fun b_free!61287 () Bool)

(declare-fun b_next!61991 () Bool)

(assert (=> b!2114494 (= b_free!61287 (not b_next!61991))))

(declare-fun tp!645071 () Bool)

(declare-fun b_and!170867 () Bool)

(assert (=> b!2114494 (= tp!645071 b_and!170867)))

(declare-fun b!2114561 () Bool)

(declare-fun e!1345688 () Bool)

(declare-fun e!1345685 () Bool)

(assert (=> b!2114561 (= e!1345688 e!1345685)))

(declare-fun mapNonEmpty!11402 () Bool)

(declare-fun mapRes!11403 () Bool)

(assert (=> mapNonEmpty!11402 (= mapRes!11403 true)))

(declare-datatypes ((C!11416 0))(
  ( (C!11417 (val!6694 Int)) )
))
(declare-datatypes ((Regex!5635 0))(
  ( (ElementMatch!5635 (c!339229 C!11416)) (Concat!9937 (regOne!11782 Regex!5635) (regTwo!11782 Regex!5635)) (EmptyExpr!5635) (Star!5635 (reg!5964 Regex!5635)) (EmptyLang!5635) (Union!5635 (regOne!11783 Regex!5635) (regTwo!11783 Regex!5635)) )
))
(declare-datatypes ((List!23630 0))(
  ( (Nil!23546) (Cons!23546 (h!28947 Regex!5635) (t!196139 List!23630)) )
))
(declare-datatypes ((Context!2410 0))(
  ( (Context!2411 (exprs!1705 List!23630)) )
))
(declare-datatypes ((tuple3!2770 0))(
  ( (tuple3!2771 (_1!13366 Regex!5635) (_2!13366 Context!2410) (_3!1851 C!11416)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23030 0))(
  ( (tuple2!23031 (_1!13367 tuple3!2770) (_2!13367 (InoxSet Context!2410))) )
))
(declare-datatypes ((List!23631 0))(
  ( (Nil!23547) (Cons!23547 (h!28948 tuple2!23030) (t!196140 List!23631)) )
))
(declare-datatypes ((array!8175 0))(
  ( (array!8176 (arr!3629 (Array (_ BitVec 32) (_ BitVec 64))) (size!18386 (_ BitVec 32))) )
))
(declare-datatypes ((array!8177 0))(
  ( (array!8178 (arr!3630 (Array (_ BitVec 32) List!23631)) (size!18387 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4746 0))(
  ( (LongMapFixedSize!4747 (defaultEntry!2738 Int) (mask!6506 (_ BitVec 32)) (extraKeys!2621 (_ BitVec 32)) (zeroValue!2631 List!23631) (minValue!2631 List!23631) (_size!4797 (_ BitVec 32)) (_keys!2670 array!8175) (_values!2653 array!8177) (_vacant!2434 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9317 0))(
  ( (Cell!9318 (v!28073 LongMapFixedSize!4746)) )
))
(declare-datatypes ((MutLongMap!2373 0))(
  ( (LongMap!2373 (underlying!4941 Cell!9317)) (MutLongMapExt!2372 (__x!15295 Int)) )
))
(declare-datatypes ((List!23632 0))(
  ( (Nil!23548) (Cons!23548 (h!28949 C!11416) (t!196141 List!23632)) )
))
(declare-datatypes ((IArray!15557 0))(
  ( (IArray!15558 (innerList!7836 List!23632)) )
))
(declare-datatypes ((Conc!7776 0))(
  ( (Node!7776 (left!18256 Conc!7776) (right!18586 Conc!7776) (csize!15782 Int) (cheight!7987 Int)) (Leaf!11361 (xs!10718 IArray!15557) (csize!15783 Int)) (Empty!7776) )
))
(declare-datatypes ((BalanceConc!15314 0))(
  ( (BalanceConc!15315 (c!339230 Conc!7776)) )
))
(declare-datatypes ((Hashable!2287 0))(
  ( (HashableExt!2286 (__x!15296 Int)) )
))
(declare-datatypes ((tuple2!23032 0))(
  ( (tuple2!23033 (_1!13368 Context!2410) (_2!13368 C!11416)) )
))
(declare-datatypes ((tuple2!23034 0))(
  ( (tuple2!23035 (_1!13369 tuple2!23032) (_2!13369 (InoxSet Context!2410))) )
))
(declare-datatypes ((List!23633 0))(
  ( (Nil!23549) (Cons!23549 (h!28950 tuple2!23034) (t!196142 List!23633)) )
))
(declare-datatypes ((array!8179 0))(
  ( (array!8180 (arr!3631 (Array (_ BitVec 32) List!23633)) (size!18388 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4748 0))(
  ( (LongMapFixedSize!4749 (defaultEntry!2739 Int) (mask!6507 (_ BitVec 32)) (extraKeys!2622 (_ BitVec 32)) (zeroValue!2632 List!23633) (minValue!2632 List!23633) (_size!4798 (_ BitVec 32)) (_keys!2671 array!8175) (_values!2654 array!8179) (_vacant!2435 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9319 0))(
  ( (Cell!9320 (v!28074 LongMapFixedSize!4748)) )
))
(declare-datatypes ((MutLongMap!2374 0))(
  ( (LongMap!2374 (underlying!4942 Cell!9319)) (MutLongMapExt!2373 (__x!15297 Int)) )
))
(declare-datatypes ((Cell!9321 0))(
  ( (Cell!9322 (v!28075 MutLongMap!2374)) )
))
(declare-datatypes ((StackFrame!10 0))(
  ( (StackFrame!11 (z!5673 (InoxSet Context!2410)) (from!2596 Int) (lastNullablePos!284 Int) (res!917699 Int) (totalInput!2835 BalanceConc!15314)) )
))
(declare-datatypes ((List!23634 0))(
  ( (Nil!23550) (Cons!23550 (h!28951 StackFrame!10) (t!196143 List!23634)) )
))
(declare-datatypes ((Hashable!2288 0))(
  ( (HashableExt!2287 (__x!15298 Int)) )
))
(declare-datatypes ((tuple2!23036 0))(
  ( (tuple2!23037 (_1!13370 Int) (_2!13370 List!23634)) )
))
(declare-datatypes ((MutableMap!2287 0))(
  ( (MutableMapExt!2286 (__x!15299 Int)) (HashMap!2287 (underlying!4943 Cell!9321) (hashF!4210 Hashable!2287) (_size!4799 (_ BitVec 32)) (defaultValue!2449 Int)) )
))
(declare-datatypes ((CacheUp!1578 0))(
  ( (CacheUp!1579 (cache!2668 MutableMap!2287)) )
))
(declare-datatypes ((Cell!9323 0))(
  ( (Cell!9324 (v!28076 MutLongMap!2373)) )
))
(declare-datatypes ((MutableMap!2288 0))(
  ( (MutableMapExt!2287 (__x!15300 Int)) (HashMap!2288 (underlying!4944 Cell!9323) (hashF!4211 Hashable!2288) (_size!4800 (_ BitVec 32)) (defaultValue!2450 Int)) )
))
(declare-datatypes ((CacheDown!1570 0))(
  ( (CacheDown!1571 (cache!2669 MutableMap!2288)) )
))
(declare-datatypes ((tuple3!2772 0))(
  ( (tuple3!2773 (_1!13371 tuple2!23036) (_2!13371 CacheUp!1578) (_3!1852 CacheDown!1570)) )
))
(declare-fun lt!793211 () tuple3!2772)

(declare-fun mapKey!11402 () (_ BitVec 32))

(declare-fun mapRest!11402 () (Array (_ BitVec 32) List!23631))

(declare-fun mapValue!11403 () List!23631)

(assert (=> mapNonEmpty!11402 (= (arr!3630 (_values!2653 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793211)))))))) (store mapRest!11402 mapKey!11402 mapValue!11403))))

(declare-fun b!2114562 () Bool)

(declare-fun e!1345686 () Bool)

(declare-fun e!1345675 () Bool)

(declare-fun lt!793229 () MutLongMap!2374)

(get-info :version)

(assert (=> b!2114562 (= e!1345686 (and e!1345675 ((_ is LongMap!2374) lt!793229)))))

(assert (=> b!2114562 (= lt!793229 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793211)))))))

(declare-fun b!2114564 () Bool)

(declare-fun e!1345684 () Bool)

(declare-fun e!1345677 () Bool)

(assert (=> b!2114564 (= e!1345684 e!1345677)))

(declare-fun mapIsEmpty!11402 () Bool)

(assert (=> mapIsEmpty!11402 mapRes!11403))

(declare-fun b!2114565 () Bool)

(declare-fun e!1345683 () Bool)

(declare-fun e!1345687 () Bool)

(assert (=> b!2114565 (= e!1345683 e!1345687)))

(declare-fun b!2114566 () Bool)

(declare-fun e!1345678 () Bool)

(assert (=> b!2114566 (= e!1345687 e!1345678)))

(declare-fun mapNonEmpty!11403 () Bool)

(declare-fun mapRes!11402 () Bool)

(assert (=> mapNonEmpty!11403 (= mapRes!11402 true)))

(declare-fun mapValue!11402 () List!23633)

(declare-fun mapRest!11403 () (Array (_ BitVec 32) List!23633))

(declare-fun mapKey!11403 () (_ BitVec 32))

(assert (=> mapNonEmpty!11403 (= (arr!3631 (_values!2654 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793211)))))))) (store mapRest!11403 mapKey!11403 mapValue!11402))))

(declare-fun setIsEmpty!14141 () Bool)

(declare-fun setRes!14141 () Bool)

(assert (=> setIsEmpty!14141 setRes!14141))

(declare-fun b!2114567 () Bool)

(declare-fun e!1345681 () Bool)

(declare-fun e!1345674 () Bool)

(assert (=> b!2114567 (= e!1345681 e!1345674)))

(declare-fun b!2114568 () Bool)

(declare-fun e!1345679 () Bool)

(assert (=> b!2114568 (= e!1345679 mapRes!11403)))

(declare-fun condMapEmpty!11402 () Bool)

(declare-fun mapDefault!11403 () List!23631)

(assert (=> b!2114568 (= condMapEmpty!11402 (= (arr!3630 (_values!2653 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793211)))))))) ((as const (Array (_ BitVec 32) List!23631)) mapDefault!11403)))))

(declare-fun b!2114569 () Bool)

(declare-fun e!1345682 () Bool)

(assert (=> b!2114569 (= e!1345675 e!1345682)))

(declare-fun b!2114570 () Bool)

(assert (=> b!2114570 (= e!1345677 mapRes!11402)))

(declare-fun condMapEmpty!11403 () Bool)

(declare-fun mapDefault!11402 () List!23633)

(assert (=> b!2114570 (= condMapEmpty!11403 (= (arr!3631 (_values!2654 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793211)))))))) ((as const (Array (_ BitVec 32) List!23633)) mapDefault!11402)))))

(declare-fun mapIsEmpty!11403 () Bool)

(assert (=> mapIsEmpty!11403 mapRes!11402))

(declare-fun b!2114514 () Bool)

(declare-fun e!1345673 () Bool)

(assert (=> b!2114514 (and e!1345681 e!1345673 e!1345688)))

(declare-fun b!2114563 () Bool)

(declare-fun e!1345676 () Bool)

(declare-fun lt!793228 () MutLongMap!2373)

(assert (=> b!2114563 (= e!1345676 (and e!1345683 ((_ is LongMap!2373) lt!793228)))))

(assert (=> b!2114563 (= lt!793228 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793211)))))))

(declare-fun setNonEmpty!14141 () Bool)

(assert (=> setNonEmpty!14141 (= setRes!14141 true)))

(declare-fun setElem!14141 () Context!2410)

(declare-fun setRest!14141 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14141 (= (z!5673 (h!28951 (_2!13370 (_1!13371 lt!793211)))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14141 true) setRest!14141))))

(declare-fun b!2114571 () Bool)

(declare-fun e!1345680 () Bool)

(assert (=> b!2114571 (= e!1345680 e!1345686)))

(declare-fun b!2114572 () Bool)

(assert (=> b!2114572 (= e!1345678 e!1345679)))

(declare-fun b!2114573 () Bool)

(assert (=> b!2114573 (= e!1345682 e!1345684)))

(declare-fun b!2114574 () Bool)

(assert (=> b!2114574 (= e!1345673 e!1345680)))

(declare-fun b!2114575 () Bool)

(assert (=> b!2114575 (= e!1345685 e!1345676)))

(declare-fun b!2114576 () Bool)

(assert (=> b!2114576 (= e!1345674 setRes!14141)))

(declare-fun condSetEmpty!14141 () Bool)

(assert (=> b!2114576 (= condSetEmpty!14141 (= (z!5673 (h!28951 (_2!13370 (_1!13371 lt!793211)))) ((as const (Array Context!2410 Bool)) false)))))

(assert (= (and b!2114576 condSetEmpty!14141) setIsEmpty!14141))

(assert (= (and b!2114576 (not condSetEmpty!14141)) setNonEmpty!14141))

(assert (= b!2114567 b!2114576))

(assert (= (and b!2114514 ((_ is Cons!23550) (_2!13370 (_1!13371 lt!793211)))) b!2114567))

(assert (= (and b!2114570 condMapEmpty!11403) mapIsEmpty!11403))

(assert (= (and b!2114570 (not condMapEmpty!11403)) mapNonEmpty!11403))

(assert (= b!2114564 b!2114570))

(assert (= b!2114573 b!2114564))

(assert (= b!2114569 b!2114573))

(assert (= (and b!2114562 ((_ is LongMap!2374) (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793211)))))) b!2114569))

(assert (= b!2114571 b!2114562))

(assert (= (and b!2114574 ((_ is HashMap!2287) (cache!2668 (_2!13371 lt!793211)))) b!2114571))

(assert (= b!2114514 b!2114574))

(assert (= (and b!2114568 condMapEmpty!11402) mapIsEmpty!11402))

(assert (= (and b!2114568 (not condMapEmpty!11402)) mapNonEmpty!11402))

(assert (= b!2114572 b!2114568))

(assert (= b!2114566 b!2114572))

(assert (= b!2114565 b!2114566))

(assert (= (and b!2114563 ((_ is LongMap!2373) (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793211)))))) b!2114565))

(assert (= b!2114575 b!2114563))

(assert (= (and b!2114561 ((_ is HashMap!2288) (cache!2669 (_3!1852 lt!793211)))) b!2114575))

(assert (= b!2114514 b!2114561))

(declare-fun order!14509 () Int)

(declare-fun order!14511 () Int)

(declare-fun lambda!78200 () Int)

(declare-fun dynLambda!11280 (Int Int) Int)

(declare-fun dynLambda!11281 (Int Int) Int)

(assert (=> b!2114575 (< (dynLambda!11280 order!14509 (defaultValue!2450 (cache!2669 (_3!1852 lt!793211)))) (dynLambda!11281 order!14511 lambda!78200))))

(declare-fun order!14513 () Int)

(declare-fun dynLambda!11282 (Int Int) Int)

(assert (=> b!2114564 (< (dynLambda!11282 order!14513 (defaultEntry!2739 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793211)))))))) (dynLambda!11281 order!14511 lambda!78200))))

(declare-fun order!14515 () Int)

(declare-fun dynLambda!11283 (Int Int) Int)

(assert (=> b!2114572 (< (dynLambda!11283 order!14515 (defaultEntry!2738 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793211)))))))) (dynLambda!11281 order!14511 lambda!78200))))

(declare-fun order!14517 () Int)

(declare-fun dynLambda!11284 (Int Int) Int)

(assert (=> b!2114571 (< (dynLambda!11284 order!14517 (defaultValue!2449 (cache!2668 (_2!13371 lt!793211)))) (dynLambda!11281 order!14511 lambda!78200))))

(declare-fun m!2570229 () Bool)

(assert (=> mapNonEmpty!11402 m!2570229))

(declare-fun m!2570231 () Bool)

(assert (=> mapNonEmpty!11403 m!2570231))

(declare-fun bs!441116 () Bool)

(declare-fun b!2114499 () Bool)

(assert (= bs!441116 (and b!2114499 b!2114514)))

(declare-fun lambda!78201 () Int)

(assert (=> bs!441116 (not (= lambda!78201 lambda!78200))))

(assert (=> b!2114499 true))

(declare-fun b!2114482 () Bool)

(declare-fun e!1345607 () Bool)

(declare-fun input!6660 () BalanceConc!15314)

(declare-fun tp!645065 () Bool)

(declare-fun inv!31123 (Conc!7776) Bool)

(assert (=> b!2114482 (= e!1345607 (and (inv!31123 (c!339230 input!6660)) tp!645065))))

(declare-fun b!2114483 () Bool)

(declare-fun e!1345633 () Bool)

(declare-fun e!1345614 () Bool)

(assert (=> b!2114483 (= e!1345633 e!1345614)))

(declare-fun cacheUp!1110 () CacheUp!1578)

(declare-fun tp!645079 () Bool)

(declare-fun e!1345626 () Bool)

(declare-fun tp!645057 () Bool)

(declare-fun e!1345620 () Bool)

(declare-fun array_inv!2607 (array!8175) Bool)

(declare-fun array_inv!2608 (array!8179) Bool)

(assert (=> b!2114484 (= e!1345620 (and tp!645076 tp!645057 tp!645079 (array_inv!2607 (_keys!2671 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110))))))) (array_inv!2608 (_values!2654 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110))))))) e!1345626))))

(declare-fun b!2114485 () Bool)

(declare-fun res!917688 () Bool)

(declare-fun e!1345636 () Bool)

(assert (=> b!2114485 (=> (not res!917688) (not e!1345636))))

(declare-fun cacheDown!1229 () CacheDown!1570)

(declare-fun valid!1870 (CacheDown!1570) Bool)

(assert (=> b!2114485 (= res!917688 (valid!1870 cacheDown!1229))))

(declare-fun b!2114486 () Bool)

(declare-fun e!1345621 () Bool)

(declare-datatypes ((Hashable!2289 0))(
  ( (HashableExt!2288 (__x!15301 Int)) )
))
(declare-datatypes ((tuple3!2774 0))(
  ( (tuple3!2775 (_1!13372 (InoxSet Context!2410)) (_2!13372 Int) (_3!1853 Int)) )
))
(declare-datatypes ((tuple2!23038 0))(
  ( (tuple2!23039 (_1!13373 tuple3!2774) (_2!13373 Int)) )
))
(declare-datatypes ((List!23635 0))(
  ( (Nil!23551) (Cons!23551 (h!28952 tuple2!23038) (t!196144 List!23635)) )
))
(declare-datatypes ((array!8181 0))(
  ( (array!8182 (arr!3632 (Array (_ BitVec 32) List!23635)) (size!18389 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4750 0))(
  ( (LongMapFixedSize!4751 (defaultEntry!2740 Int) (mask!6508 (_ BitVec 32)) (extraKeys!2623 (_ BitVec 32)) (zeroValue!2633 List!23635) (minValue!2633 List!23635) (_size!4801 (_ BitVec 32)) (_keys!2672 array!8175) (_values!2655 array!8181) (_vacant!2436 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9325 0))(
  ( (Cell!9326 (v!28077 LongMapFixedSize!4750)) )
))
(declare-datatypes ((MutLongMap!2375 0))(
  ( (LongMap!2375 (underlying!4945 Cell!9325)) (MutLongMapExt!2374 (__x!15302 Int)) )
))
(declare-datatypes ((Cell!9327 0))(
  ( (Cell!9328 (v!28078 MutLongMap!2375)) )
))
(declare-datatypes ((MutableMap!2289 0))(
  ( (MutableMapExt!2288 (__x!15303 Int)) (HashMap!2289 (underlying!4946 Cell!9327) (hashF!4212 Hashable!2289) (_size!4802 (_ BitVec 32)) (defaultValue!2451 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!550 0))(
  ( (CacheFurthestNullable!551 (cache!2670 MutableMap!2289) (totalInput!2836 BalanceConc!15314)) )
))
(declare-fun cacheFurthestNullable!141 () CacheFurthestNullable!550)

(declare-fun tp!645082 () Bool)

(assert (=> b!2114486 (= e!1345621 (and (inv!31123 (c!339230 (totalInput!2836 cacheFurthestNullable!141))) tp!645082))))

(declare-fun b!2114487 () Bool)

(declare-fun e!1345605 () Bool)

(declare-fun e!1345609 () Bool)

(assert (=> b!2114487 (= e!1345605 e!1345609)))

(declare-fun b!2114488 () Bool)

(declare-datatypes ((tuple2!23040 0))(
  ( (tuple2!23041 (_1!13374 BalanceConc!15314) (_2!13374 BalanceConc!15314)) )
))
(declare-fun e!1345624 () tuple2!23040)

(declare-fun call!128503 () tuple2!23040)

(assert (=> b!2114488 (= e!1345624 call!128503)))

(declare-fun b!2114490 () Bool)

(declare-fun e!1345630 () Bool)

(assert (=> b!2114490 (= e!1345609 e!1345630)))

(declare-fun b!2114491 () Bool)

(declare-fun e!1345631 () Bool)

(declare-fun e!1345606 () Bool)

(declare-fun lt!793213 () MutLongMap!2374)

(assert (=> b!2114491 (= e!1345631 (and e!1345606 ((_ is LongMap!2374) lt!793213)))))

(assert (=> b!2114491 (= lt!793213 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110))))))

(declare-fun b!2114492 () Bool)

(declare-fun e!1345634 () Bool)

(assert (=> b!2114492 (= e!1345636 e!1345634)))

(declare-fun res!917697 () Bool)

(assert (=> b!2114492 (=> (not res!917697) (not e!1345634))))

(declare-fun lt!793223 () List!23632)

(declare-fun totalInput!1306 () BalanceConc!15314)

(declare-fun isSuffix!600 (List!23632 List!23632) Bool)

(declare-fun list!9499 (BalanceConc!15314) List!23632)

(assert (=> b!2114492 (= res!917697 (isSuffix!600 lt!793223 (list!9499 totalInput!1306)))))

(assert (=> b!2114492 (= lt!793223 (list!9499 input!6660))))

(declare-fun b!2114493 () Bool)

(declare-fun e!1345613 () Bool)

(declare-fun lt!793221 () tuple2!23040)

(declare-datatypes ((tuple2!23042 0))(
  ( (tuple2!23043 (_1!13375 List!23632) (_2!13375 List!23632)) )
))
(declare-fun lt!793212 () tuple2!23042)

(assert (=> b!2114493 (= e!1345613 (= (list!9499 (_2!13374 lt!793221)) (_2!13375 lt!793212)))))

(declare-fun e!1345623 () Bool)

(declare-fun e!1345639 () Bool)

(assert (=> b!2114494 (= e!1345623 (and e!1345639 tp!645071))))

(declare-fun b!2114495 () Bool)

(declare-fun e!1345612 () Bool)

(declare-fun tp!645058 () Bool)

(assert (=> b!2114495 (= e!1345612 tp!645058)))

(declare-fun b!2114496 () Bool)

(declare-fun res!917695 () Bool)

(assert (=> b!2114496 (=> (not res!917695) (not e!1345636))))

(assert (=> b!2114496 (= res!917695 (= (totalInput!2836 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun b!2114497 () Bool)

(declare-fun lt!793218 () MutLongMap!2373)

(assert (=> b!2114497 (= e!1345639 (and e!1345605 ((_ is LongMap!2373) lt!793218)))))

(assert (=> b!2114497 (= lt!793218 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229))))))

(declare-fun e!1345640 () Bool)

(declare-fun e!1345632 () Bool)

(assert (=> b!2114498 (= e!1345640 (and e!1345632 tp!645060))))

(declare-fun mapIsEmpty!11395 () Bool)

(declare-fun mapRes!11397 () Bool)

(assert (=> mapIsEmpty!11395 mapRes!11397))

(declare-fun mapNonEmpty!11395 () Bool)

(declare-fun mapRes!11396 () Bool)

(declare-fun tp!645067 () Bool)

(declare-fun tp!645078 () Bool)

(assert (=> mapNonEmpty!11395 (= mapRes!11396 (and tp!645067 tp!645078))))

(declare-fun mapRest!11396 () (Array (_ BitVec 32) List!23633))

(declare-fun mapValue!11397 () List!23633)

(declare-fun mapKey!11396 () (_ BitVec 32))

(assert (=> mapNonEmpty!11395 (= (arr!3631 (_values!2654 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110))))))) (store mapRest!11396 mapKey!11396 mapValue!11397))))

(declare-fun res!917687 () Bool)

(declare-fun e!1345628 () Bool)

(assert (=> b!2114499 (=> (not res!917687) (not e!1345628))))

(declare-fun forall!4842 (List!23634 Int) Bool)

(assert (=> b!2114499 (= res!917687 (forall!4842 (_2!13370 (_1!13371 lt!793211)) lambda!78201))))

(declare-fun b!2114500 () Bool)

(declare-fun e!1345619 () Bool)

(assert (=> b!2114500 (= e!1345619 e!1345620)))

(declare-fun b!2114501 () Bool)

(declare-fun res!917689 () Bool)

(declare-fun e!1345637 () Bool)

(assert (=> b!2114501 (=> (not res!917689) (not e!1345637))))

(declare-datatypes ((tuple4!932 0))(
  ( (tuple4!933 (_1!13376 tuple2!23040) (_2!13376 CacheUp!1578) (_3!1854 CacheDown!1570) (_4!466 CacheFurthestNullable!550)) )
))
(declare-fun lt!793217 () tuple4!932)

(assert (=> b!2114501 (= res!917689 (valid!1870 (_3!1854 lt!793217)))))

(declare-fun b!2114502 () Bool)

(declare-fun valid!1871 (CacheFurthestNullable!550) Bool)

(assert (=> b!2114502 (= e!1345637 (valid!1871 (_4!466 lt!793217)))))

(declare-fun lt!793216 () Int)

(declare-fun c!339227 () Bool)

(declare-fun bm!128498 () Bool)

(declare-fun splitAt!10 (BalanceConc!15314 Int) tuple2!23040)

(assert (=> bm!128498 (= call!128503 (splitAt!10 input!6660 (ite c!339227 0 lt!793216)))))

(declare-fun b!2114503 () Bool)

(declare-fun e!1345627 () Bool)

(declare-fun inv!31124 (BalanceConc!15314) Bool)

(assert (=> b!2114503 (= e!1345627 (and e!1345640 (inv!31124 (totalInput!2836 cacheFurthestNullable!141)) e!1345621))))

(declare-fun b!2114504 () Bool)

(declare-fun res!917698 () Bool)

(assert (=> b!2114504 (=> (not res!917698) (not e!1345636))))

(assert (=> b!2114504 (= res!917698 (valid!1871 cacheFurthestNullable!141))))

(declare-fun b!2114489 () Bool)

(assert (=> b!2114489 (= e!1345624 call!128503)))

(declare-fun res!917692 () Bool)

(assert (=> start!206530 (=> (not res!917692) (not e!1345636))))

(declare-fun r!15373 () Regex!5635)

(declare-fun validRegex!2224 (Regex!5635) Bool)

(assert (=> start!206530 (= res!917692 (validRegex!2224 r!15373))))

(assert (=> start!206530 e!1345636))

(declare-fun e!1345625 () Bool)

(declare-fun inv!31125 (CacheDown!1570) Bool)

(assert (=> start!206530 (and (inv!31125 cacheDown!1229) e!1345625)))

(assert (=> start!206530 e!1345612))

(declare-fun e!1345611 () Bool)

(declare-fun inv!31126 (CacheUp!1578) Bool)

(assert (=> start!206530 (and (inv!31126 cacheUp!1110) e!1345611)))

(assert (=> start!206530 (and (inv!31124 input!6660) e!1345607)))

(declare-fun e!1345608 () Bool)

(assert (=> start!206530 (and (inv!31124 totalInput!1306) e!1345608)))

(declare-fun inv!31127 (CacheFurthestNullable!550) Bool)

(assert (=> start!206530 (and (inv!31127 cacheFurthestNullable!141) e!1345627)))

(declare-fun e!1345615 () Bool)

(assert (=> b!2114505 (= e!1345615 (and e!1345631 tp!645077))))

(declare-fun b!2114506 () Bool)

(assert (=> b!2114506 (= e!1345611 e!1345615)))

(declare-fun tp!645074 () Bool)

(declare-fun tp!645068 () Bool)

(declare-fun e!1345635 () Bool)

(declare-fun array_inv!2609 (array!8177) Bool)

(assert (=> b!2114507 (= e!1345630 (and tp!645061 tp!645068 tp!645074 (array_inv!2607 (_keys!2670 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229))))))) (array_inv!2609 (_values!2653 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229))))))) e!1345635))))

(declare-fun b!2114508 () Bool)

(declare-fun lt!793214 () tuple2!23040)

(declare-fun e!1345622 () Bool)

(declare-fun findLongestMatchWithZipperSequenceV2!79 (Regex!5635 BalanceConc!15314 BalanceConc!15314) tuple2!23040)

(assert (=> b!2114508 (= e!1345622 (= (findLongestMatchWithZipperSequenceV2!79 r!15373 input!6660 totalInput!1306) lt!793214))))

(declare-fun mapIsEmpty!11396 () Bool)

(assert (=> mapIsEmpty!11396 mapRes!11396))

(declare-fun b!2114509 () Bool)

(declare-fun e!1345618 () Bool)

(assert (=> b!2114509 (= e!1345614 e!1345618)))

(declare-fun mapNonEmpty!11396 () Bool)

(declare-fun mapRes!11395 () Bool)

(declare-fun tp!645081 () Bool)

(declare-fun tp!645075 () Bool)

(assert (=> mapNonEmpty!11396 (= mapRes!11395 (and tp!645081 tp!645075))))

(declare-fun mapRest!11397 () (Array (_ BitVec 32) List!23631))

(declare-fun mapValue!11395 () List!23631)

(declare-fun mapKey!11397 () (_ BitVec 32))

(assert (=> mapNonEmpty!11396 (= (arr!3630 (_values!2653 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229))))))) (store mapRest!11397 mapKey!11397 mapValue!11395))))

(declare-fun lt!793220 () Int)

(declare-fun b!2114510 () Bool)

(declare-datatypes ((Unit!37536 0))(
  ( (Unit!37537) )
))
(declare-datatypes ((tuple2!23044 0))(
  ( (tuple2!23045 (_1!13377 Unit!37536) (_2!13377 CacheFurthestNullable!550)) )
))
(declare-fun fillUpCache!2 (List!23634 BalanceConc!15314 Int Int Int CacheFurthestNullable!550) tuple2!23044)

(assert (=> b!2114510 (= e!1345628 (= lt!793217 (tuple4!933 e!1345624 (_2!13371 lt!793211) (_3!1852 lt!793211) (_2!13377 (fillUpCache!2 (_2!13370 (_1!13371 lt!793211)) totalInput!1306 lt!793220 (_1!13370 (_1!13371 lt!793211)) 0 cacheFurthestNullable!141)))))))

(assert (=> b!2114510 (= c!339227 (< lt!793216 0))))

(declare-fun mapNonEmpty!11397 () Bool)

(declare-fun tp!645072 () Bool)

(declare-fun tp!645055 () Bool)

(assert (=> mapNonEmpty!11397 (= mapRes!11397 (and tp!645072 tp!645055))))

(declare-fun mapKey!11395 () (_ BitVec 32))

(declare-fun mapRest!11395 () (Array (_ BitVec 32) List!23635))

(declare-fun mapValue!11396 () List!23635)

(assert (=> mapNonEmpty!11397 (= (arr!3632 (_values!2655 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))))) (store mapRest!11395 mapKey!11395 mapValue!11396))))

(declare-fun b!2114511 () Bool)

(declare-fun lt!793209 () MutLongMap!2375)

(assert (=> b!2114511 (= e!1345632 (and e!1345633 ((_ is LongMap!2375) lt!793209)))))

(assert (=> b!2114511 (= lt!793209 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))))

(declare-fun b!2114512 () Bool)

(declare-fun tp!645062 () Bool)

(assert (=> b!2114512 (= e!1345635 (and tp!645062 mapRes!11395))))

(declare-fun condMapEmpty!11396 () Bool)

(declare-fun mapDefault!11397 () List!23631)

(assert (=> b!2114512 (= condMapEmpty!11396 (= (arr!3630 (_values!2653 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229))))))) ((as const (Array (_ BitVec 32) List!23631)) mapDefault!11397)))))

(declare-fun b!2114513 () Bool)

(declare-fun res!917686 () Bool)

(assert (=> b!2114513 (=> (not res!917686) (not e!1345622))))

(assert (=> b!2114513 (= res!917686 (= (list!9499 (_2!13374 lt!793214)) (_2!13375 lt!793212)))))

(assert (=> b!2114514 (= e!1345634 (not e!1345637))))

(declare-fun res!917694 () Bool)

(assert (=> b!2114514 (=> (not res!917694) (not e!1345637))))

(declare-fun valid!1872 (CacheUp!1578) Bool)

(assert (=> b!2114514 (= res!917694 (valid!1872 (_2!13376 lt!793217)))))

(assert (=> b!2114514 e!1345628))

(declare-fun res!917690 () Bool)

(assert (=> b!2114514 (=> (not res!917690) (not e!1345628))))

(assert (=> b!2114514 (= res!917690 (forall!4842 (_2!13370 (_1!13371 lt!793211)) lambda!78200))))

(declare-fun lt!793208 () Int)

(assert (=> b!2114514 (= lt!793216 (+ 1 (- (_1!13370 (_1!13371 lt!793211)) lt!793208)))))

(declare-fun lt!793219 () (InoxSet Context!2410))

(declare-fun e!1345629 () Int)

(declare-fun furthestNullablePositionStackMem!2 ((InoxSet Context!2410) Int BalanceConc!15314 Int Int List!23634 CacheUp!1578 CacheDown!1570 CacheFurthestNullable!550) tuple3!2772)

(assert (=> b!2114514 (= lt!793211 (furthestNullablePositionStackMem!2 lt!793219 lt!793208 totalInput!1306 lt!793220 e!1345629 Nil!23550 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(declare-fun c!339228 () Bool)

(declare-fun nullableZipper!49 ((InoxSet Context!2410)) Bool)

(assert (=> b!2114514 (= c!339228 (nullableZipper!49 lt!793219))))

(declare-fun size!18390 (BalanceConc!15314) Int)

(assert (=> b!2114514 (= lt!793208 (- lt!793220 (size!18390 input!6660)))))

(assert (=> b!2114514 (= lt!793220 (size!18390 totalInput!1306))))

(declare-fun findLongestMatchZipperSequenceV3Mem!3 ((InoxSet Context!2410) BalanceConc!15314 BalanceConc!15314 CacheUp!1578 CacheDown!1570 CacheFurthestNullable!550) tuple4!932)

(assert (=> b!2114514 (= lt!793217 (findLongestMatchZipperSequenceV3Mem!3 lt!793219 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(assert (=> b!2114514 e!1345622))

(declare-fun res!917696 () Bool)

(assert (=> b!2114514 (=> (not res!917696) (not e!1345622))))

(assert (=> b!2114514 (= res!917696 (= (list!9499 (_1!13374 lt!793214)) (_1!13375 lt!793212)))))

(declare-fun findLongestMatchZipperFastV2!10 ((InoxSet Context!2410) BalanceConc!15314 BalanceConc!15314) tuple2!23040)

(assert (=> b!2114514 (= lt!793214 (findLongestMatchZipperFastV2!10 lt!793219 input!6660 totalInput!1306))))

(declare-fun lt!793210 () Unit!37536)

(declare-fun longestMatchV2SameAsRegex!10 (Regex!5635 (InoxSet Context!2410) BalanceConc!15314 BalanceConc!15314) Unit!37536)

(assert (=> b!2114514 (= lt!793210 (longestMatchV2SameAsRegex!10 r!15373 lt!793219 input!6660 totalInput!1306))))

(declare-fun sizeTr!95 (List!23632 Int) Int)

(declare-fun size!18391 (List!23632) Int)

(assert (=> b!2114514 (= (sizeTr!95 lt!793223 0) (size!18391 lt!793223))))

(declare-fun lt!793215 () Unit!37536)

(declare-fun lemmaSizeTrEqualsSize!95 (List!23632 Int) Unit!37536)

(assert (=> b!2114514 (= lt!793215 (lemmaSizeTrEqualsSize!95 lt!793223 0))))

(assert (=> b!2114514 e!1345613))

(declare-fun res!917691 () Bool)

(assert (=> b!2114514 (=> (not res!917691) (not e!1345613))))

(assert (=> b!2114514 (= res!917691 (= (list!9499 (_1!13374 lt!793221)) (_1!13375 lt!793212)))))

(declare-fun findLongestMatch!512 (Regex!5635 List!23632) tuple2!23042)

(assert (=> b!2114514 (= lt!793212 (findLongestMatch!512 r!15373 lt!793223))))

(declare-fun findLongestMatchZipperSequenceV3!5 ((InoxSet Context!2410) BalanceConc!15314 BalanceConc!15314) tuple2!23040)

(assert (=> b!2114514 (= lt!793221 (findLongestMatchZipperSequenceV3!5 lt!793219 input!6660 totalInput!1306))))

(declare-fun lt!793222 () Unit!37536)

(declare-fun longestMatchV3SameAsRegex!5 (Regex!5635 (InoxSet Context!2410) BalanceConc!15314 BalanceConc!15314) Unit!37536)

(assert (=> b!2114514 (= lt!793222 (longestMatchV3SameAsRegex!5 r!15373 lt!793219 input!6660 totalInput!1306))))

(declare-fun focus!272 (Regex!5635) (InoxSet Context!2410))

(assert (=> b!2114514 (= lt!793219 (focus!272 r!15373))))

(declare-fun b!2114515 () Bool)

(declare-fun tp!645064 () Bool)

(declare-fun tp!645073 () Bool)

(assert (=> b!2114515 (= e!1345612 (and tp!645064 tp!645073))))

(declare-fun b!2114516 () Bool)

(assert (=> b!2114516 (= e!1345629 (- lt!793208 1))))

(declare-fun b!2114517 () Bool)

(declare-fun tp!645070 () Bool)

(declare-fun tp!645059 () Bool)

(assert (=> b!2114517 (= e!1345612 (and tp!645070 tp!645059))))

(declare-fun b!2114518 () Bool)

(declare-fun tp!645069 () Bool)

(assert (=> b!2114518 (= e!1345626 (and tp!645069 mapRes!11396))))

(declare-fun condMapEmpty!11395 () Bool)

(declare-fun mapDefault!11395 () List!23633)

(assert (=> b!2114518 (= condMapEmpty!11395 (= (arr!3631 (_values!2654 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110))))))) ((as const (Array (_ BitVec 32) List!23633)) mapDefault!11395)))))

(declare-fun b!2114519 () Bool)

(assert (=> b!2114519 (= e!1345606 e!1345619)))

(declare-fun b!2114520 () Bool)

(declare-fun e!1345638 () Bool)

(declare-fun tp!645080 () Bool)

(assert (=> b!2114520 (= e!1345638 (and tp!645080 mapRes!11397))))

(declare-fun condMapEmpty!11397 () Bool)

(declare-fun mapDefault!11396 () List!23635)

(assert (=> b!2114520 (= condMapEmpty!11397 (= (arr!3632 (_values!2655 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))))) ((as const (Array (_ BitVec 32) List!23635)) mapDefault!11396)))))

(declare-fun b!2114521 () Bool)

(assert (=> b!2114521 (= e!1345625 e!1345623)))

(declare-fun tp!645054 () Bool)

(declare-fun tp!645066 () Bool)

(declare-fun array_inv!2610 (array!8181) Bool)

(assert (=> b!2114522 (= e!1345618 (and tp!645056 tp!645066 tp!645054 (array_inv!2607 (_keys!2672 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))))) (array_inv!2610 (_values!2655 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))))) e!1345638))))

(declare-fun b!2114523 () Bool)

(declare-fun res!917693 () Bool)

(assert (=> b!2114523 (=> (not res!917693) (not e!1345636))))

(assert (=> b!2114523 (= res!917693 (valid!1872 cacheUp!1110))))

(declare-fun b!2114524 () Bool)

(assert (=> b!2114524 (= e!1345629 (- 1))))

(declare-fun mapIsEmpty!11397 () Bool)

(assert (=> mapIsEmpty!11397 mapRes!11395))

(declare-fun b!2114525 () Bool)

(declare-fun tp_is_empty!9459 () Bool)

(assert (=> b!2114525 (= e!1345612 tp_is_empty!9459)))

(declare-fun b!2114526 () Bool)

(declare-fun tp!645063 () Bool)

(assert (=> b!2114526 (= e!1345608 (and (inv!31123 (c!339230 totalInput!1306)) tp!645063))))

(assert (= (and start!206530 res!917692) b!2114523))

(assert (= (and b!2114523 res!917693) b!2114485))

(assert (= (and b!2114485 res!917688) b!2114504))

(assert (= (and b!2114504 res!917698) b!2114496))

(assert (= (and b!2114496 res!917695) b!2114492))

(assert (= (and b!2114492 res!917697) b!2114514))

(assert (= (and b!2114514 res!917691) b!2114493))

(assert (= (and b!2114514 res!917696) b!2114513))

(assert (= (and b!2114513 res!917686) b!2114508))

(assert (= (and b!2114514 c!339228) b!2114516))

(assert (= (and b!2114514 (not c!339228)) b!2114524))

(assert (= (and b!2114514 res!917690) b!2114499))

(assert (= (and b!2114499 res!917687) b!2114510))

(assert (= (and b!2114510 c!339227) b!2114488))

(assert (= (and b!2114510 (not c!339227)) b!2114489))

(assert (= (or b!2114488 b!2114489) bm!128498))

(assert (= (and b!2114514 res!917694) b!2114501))

(assert (= (and b!2114501 res!917689) b!2114502))

(assert (= (and b!2114512 condMapEmpty!11396) mapIsEmpty!11397))

(assert (= (and b!2114512 (not condMapEmpty!11396)) mapNonEmpty!11396))

(assert (= b!2114507 b!2114512))

(assert (= b!2114490 b!2114507))

(assert (= b!2114487 b!2114490))

(assert (= (and b!2114497 ((_ is LongMap!2373) (v!28076 (underlying!4944 (cache!2669 cacheDown!1229))))) b!2114487))

(assert (= b!2114494 b!2114497))

(assert (= (and b!2114521 ((_ is HashMap!2288) (cache!2669 cacheDown!1229))) b!2114494))

(assert (= start!206530 b!2114521))

(assert (= (and start!206530 ((_ is ElementMatch!5635) r!15373)) b!2114525))

(assert (= (and start!206530 ((_ is Concat!9937) r!15373)) b!2114515))

(assert (= (and start!206530 ((_ is Star!5635) r!15373)) b!2114495))

(assert (= (and start!206530 ((_ is Union!5635) r!15373)) b!2114517))

(assert (= (and b!2114518 condMapEmpty!11395) mapIsEmpty!11396))

(assert (= (and b!2114518 (not condMapEmpty!11395)) mapNonEmpty!11395))

(assert (= b!2114484 b!2114518))

(assert (= b!2114500 b!2114484))

(assert (= b!2114519 b!2114500))

(assert (= (and b!2114491 ((_ is LongMap!2374) (v!28075 (underlying!4943 (cache!2668 cacheUp!1110))))) b!2114519))

(assert (= b!2114505 b!2114491))

(assert (= (and b!2114506 ((_ is HashMap!2287) (cache!2668 cacheUp!1110))) b!2114505))

(assert (= start!206530 b!2114506))

(assert (= start!206530 b!2114482))

(assert (= start!206530 b!2114526))

(assert (= (and b!2114520 condMapEmpty!11397) mapIsEmpty!11395))

(assert (= (and b!2114520 (not condMapEmpty!11397)) mapNonEmpty!11397))

(assert (= b!2114522 b!2114520))

(assert (= b!2114509 b!2114522))

(assert (= b!2114483 b!2114509))

(assert (= (and b!2114511 ((_ is LongMap!2375) (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))) b!2114483))

(assert (= b!2114498 b!2114511))

(assert (= (and b!2114503 ((_ is HashMap!2289) (cache!2670 cacheFurthestNullable!141))) b!2114498))

(assert (= b!2114503 b!2114486))

(assert (= start!206530 b!2114503))

(declare-fun m!2570233 () Bool)

(assert (=> b!2114503 m!2570233))

(declare-fun m!2570235 () Bool)

(assert (=> b!2114522 m!2570235))

(declare-fun m!2570237 () Bool)

(assert (=> b!2114522 m!2570237))

(declare-fun m!2570239 () Bool)

(assert (=> b!2114499 m!2570239))

(declare-fun m!2570241 () Bool)

(assert (=> b!2114526 m!2570241))

(declare-fun m!2570243 () Bool)

(assert (=> b!2114501 m!2570243))

(declare-fun m!2570245 () Bool)

(assert (=> mapNonEmpty!11396 m!2570245))

(declare-fun m!2570247 () Bool)

(assert (=> b!2114523 m!2570247))

(declare-fun m!2570249 () Bool)

(assert (=> b!2114510 m!2570249))

(declare-fun m!2570251 () Bool)

(assert (=> b!2114504 m!2570251))

(declare-fun m!2570253 () Bool)

(assert (=> b!2114492 m!2570253))

(assert (=> b!2114492 m!2570253))

(declare-fun m!2570255 () Bool)

(assert (=> b!2114492 m!2570255))

(declare-fun m!2570257 () Bool)

(assert (=> b!2114492 m!2570257))

(declare-fun m!2570259 () Bool)

(assert (=> b!2114482 m!2570259))

(declare-fun m!2570261 () Bool)

(assert (=> bm!128498 m!2570261))

(declare-fun m!2570263 () Bool)

(assert (=> b!2114514 m!2570263))

(declare-fun m!2570265 () Bool)

(assert (=> b!2114514 m!2570265))

(declare-fun m!2570267 () Bool)

(assert (=> b!2114514 m!2570267))

(declare-fun m!2570269 () Bool)

(assert (=> b!2114514 m!2570269))

(declare-fun m!2570271 () Bool)

(assert (=> b!2114514 m!2570271))

(declare-fun m!2570273 () Bool)

(assert (=> b!2114514 m!2570273))

(declare-fun m!2570275 () Bool)

(assert (=> b!2114514 m!2570275))

(declare-fun m!2570277 () Bool)

(assert (=> b!2114514 m!2570277))

(declare-fun m!2570279 () Bool)

(assert (=> b!2114514 m!2570279))

(declare-fun m!2570281 () Bool)

(assert (=> b!2114514 m!2570281))

(declare-fun m!2570283 () Bool)

(assert (=> b!2114514 m!2570283))

(declare-fun m!2570285 () Bool)

(assert (=> b!2114514 m!2570285))

(declare-fun m!2570287 () Bool)

(assert (=> b!2114514 m!2570287))

(declare-fun m!2570289 () Bool)

(assert (=> b!2114514 m!2570289))

(declare-fun m!2570291 () Bool)

(assert (=> b!2114514 m!2570291))

(declare-fun m!2570293 () Bool)

(assert (=> b!2114514 m!2570293))

(declare-fun m!2570295 () Bool)

(assert (=> b!2114514 m!2570295))

(declare-fun m!2570297 () Bool)

(assert (=> b!2114514 m!2570297))

(declare-fun m!2570299 () Bool)

(assert (=> b!2114486 m!2570299))

(declare-fun m!2570301 () Bool)

(assert (=> mapNonEmpty!11395 m!2570301))

(declare-fun m!2570303 () Bool)

(assert (=> b!2114502 m!2570303))

(declare-fun m!2570305 () Bool)

(assert (=> b!2114513 m!2570305))

(declare-fun m!2570307 () Bool)

(assert (=> b!2114507 m!2570307))

(declare-fun m!2570309 () Bool)

(assert (=> b!2114507 m!2570309))

(declare-fun m!2570311 () Bool)

(assert (=> mapNonEmpty!11397 m!2570311))

(declare-fun m!2570313 () Bool)

(assert (=> start!206530 m!2570313))

(declare-fun m!2570315 () Bool)

(assert (=> start!206530 m!2570315))

(declare-fun m!2570317 () Bool)

(assert (=> start!206530 m!2570317))

(declare-fun m!2570319 () Bool)

(assert (=> start!206530 m!2570319))

(declare-fun m!2570321 () Bool)

(assert (=> start!206530 m!2570321))

(declare-fun m!2570323 () Bool)

(assert (=> start!206530 m!2570323))

(declare-fun m!2570325 () Bool)

(assert (=> b!2114484 m!2570325))

(declare-fun m!2570327 () Bool)

(assert (=> b!2114484 m!2570327))

(declare-fun m!2570329 () Bool)

(assert (=> b!2114493 m!2570329))

(declare-fun m!2570331 () Bool)

(assert (=> b!2114508 m!2570331))

(declare-fun m!2570333 () Bool)

(assert (=> b!2114485 m!2570333))

(check-sat (not b!2114523) (not b!2114501) (not mapNonEmpty!11395) (not b!2114502) (not mapNonEmpty!11396) (not b!2114515) (not start!206530) (not b!2114572) (not b!2114493) (not mapNonEmpty!11402) b_and!170857 (not b!2114520) (not b!2114570) (not b_next!61989) (not b!2114564) (not b!2114514) (not b_next!61987) (not b!2114508) (not b!2114518) (not b!2114485) (not b_next!61983) (not b!2114507) (not b!2114482) b_and!170863 (not b_next!61981) b_and!170867 (not b_next!61991) (not b_next!61985) tp_is_empty!9459 (not b!2114512) b_and!170865 (not b!2114510) (not b!2114492) b_and!170861 (not b!2114522) (not b!2114504) (not b!2114486) (not setNonEmpty!14141) (not bm!128498) (not mapNonEmpty!11403) (not b!2114526) (not b!2114513) (not mapNonEmpty!11397) (not b!2114495) (not b!2114503) (not b!2114517) (not b!2114484) b_and!170859 (not b!2114499) (not b!2114568) (not b!2114567))
(check-sat b_and!170857 (not b_next!61989) (not b_next!61987) (not b_next!61983) (not b_next!61985) b_and!170859 b_and!170863 (not b_next!61981) b_and!170867 (not b_next!61991) b_and!170865 b_and!170861)
(get-model)

(declare-fun b!2114589 () Bool)

(declare-fun e!1345696 () tuple2!23044)

(declare-fun Unit!37538 () Unit!37536)

(assert (=> b!2114589 (= e!1345696 (tuple2!23045 Unit!37538 cacheFurthestNullable!141))))

(declare-fun d!642413 () Bool)

(declare-fun e!1345695 () Bool)

(assert (=> d!642413 e!1345695))

(declare-fun res!917703 () Bool)

(assert (=> d!642413 (=> (not res!917703) (not e!1345695))))

(declare-fun lt!793239 () tuple2!23044)

(assert (=> d!642413 (= res!917703 (valid!1871 (_2!13377 lt!793239)))))

(assert (=> d!642413 (= lt!793239 e!1345696)))

(declare-fun c!339235 () Bool)

(assert (=> d!642413 (= c!339235 ((_ is Nil!23550) (_2!13370 (_1!13371 lt!793211))))))

(assert (=> d!642413 (valid!1871 cacheFurthestNullable!141)))

(assert (=> d!642413 (= (fillUpCache!2 (_2!13370 (_1!13371 lt!793211)) totalInput!1306 lt!793220 (_1!13370 (_1!13371 lt!793211)) 0 cacheFurthestNullable!141) lt!793239)))

(declare-fun b!2114590 () Bool)

(declare-fun e!1345697 () tuple2!23044)

(declare-fun Unit!37539 () Unit!37536)

(assert (=> b!2114590 (= e!1345697 (tuple2!23045 Unit!37539 cacheFurthestNullable!141))))

(declare-fun b!2114591 () Bool)

(declare-fun lt!793240 () tuple2!23044)

(assert (=> b!2114591 (= e!1345696 (tuple2!23045 (_1!13377 lt!793240) (_2!13377 lt!793240)))))

(declare-fun c!339236 () Bool)

(assert (=> b!2114591 (= c!339236 (and (> lt!793220 1048576) (not (= (- 0 (* 10 (ite (>= 0 0) (div 0 10) (- (div (- 0) 10))))) 0))))))

(assert (=> b!2114591 (= lt!793240 (fillUpCache!2 (t!196143 (_2!13370 (_1!13371 lt!793211))) totalInput!1306 lt!793220 (_1!13370 (_1!13371 lt!793211)) (+ 0 1) (_2!13377 e!1345697)))))

(declare-fun b!2114592 () Bool)

(assert (=> b!2114592 (= e!1345695 (= (totalInput!2836 (_2!13377 lt!793239)) totalInput!1306))))

(declare-fun b!2114593 () Bool)

(declare-fun lt!793238 () tuple2!23044)

(declare-fun update!82 (CacheFurthestNullable!550 (InoxSet Context!2410) Int Int Int BalanceConc!15314) tuple2!23044)

(assert (=> b!2114593 (= lt!793238 (update!82 cacheFurthestNullable!141 (z!5673 (h!28951 (_2!13370 (_1!13371 lt!793211)))) (from!2596 (h!28951 (_2!13370 (_1!13371 lt!793211)))) (lastNullablePos!284 (h!28951 (_2!13370 (_1!13371 lt!793211)))) (_1!13370 (_1!13371 lt!793211)) totalInput!1306))))

(declare-fun lt!793241 () Unit!37536)

(declare-fun lemmaInvariant!376 (CacheFurthestNullable!550) Unit!37536)

(assert (=> b!2114593 (= lt!793241 (lemmaInvariant!376 cacheFurthestNullable!141))))

(assert (=> b!2114593 (= e!1345697 (tuple2!23045 (_1!13377 lt!793238) (_2!13377 lt!793238)))))

(assert (= (and d!642413 c!339235) b!2114589))

(assert (= (and d!642413 (not c!339235)) b!2114591))

(assert (= (and b!2114591 c!339236) b!2114590))

(assert (= (and b!2114591 (not c!339236)) b!2114593))

(assert (= (and d!642413 res!917703) b!2114592))

(declare-fun m!2570335 () Bool)

(assert (=> d!642413 m!2570335))

(assert (=> d!642413 m!2570251))

(declare-fun m!2570337 () Bool)

(assert (=> b!2114591 m!2570337))

(declare-fun m!2570339 () Bool)

(assert (=> b!2114593 m!2570339))

(declare-fun m!2570341 () Bool)

(assert (=> b!2114593 m!2570341))

(assert (=> b!2114510 d!642413))

(declare-fun d!642415 () Bool)

(declare-fun res!917706 () Bool)

(declare-fun e!1345700 () Bool)

(assert (=> d!642415 (=> (not res!917706) (not e!1345700))))

(assert (=> d!642415 (= res!917706 ((_ is HashMap!2289) (cache!2670 cacheFurthestNullable!141)))))

(assert (=> d!642415 (= (inv!31127 cacheFurthestNullable!141) e!1345700)))

(declare-fun b!2114596 () Bool)

(declare-fun validCacheMapFurthestNullable!86 (MutableMap!2289 BalanceConc!15314) Bool)

(assert (=> b!2114596 (= e!1345700 (validCacheMapFurthestNullable!86 (cache!2670 cacheFurthestNullable!141) (totalInput!2836 cacheFurthestNullable!141)))))

(assert (= (and d!642415 res!917706) b!2114596))

(declare-fun m!2570343 () Bool)

(assert (=> b!2114596 m!2570343))

(assert (=> start!206530 d!642415))

(declare-fun d!642417 () Bool)

(declare-fun res!917709 () Bool)

(declare-fun e!1345703 () Bool)

(assert (=> d!642417 (=> (not res!917709) (not e!1345703))))

(assert (=> d!642417 (= res!917709 ((_ is HashMap!2287) (cache!2668 cacheUp!1110)))))

(assert (=> d!642417 (= (inv!31126 cacheUp!1110) e!1345703)))

(declare-fun b!2114599 () Bool)

(declare-fun validCacheMapUp!236 (MutableMap!2287) Bool)

(assert (=> b!2114599 (= e!1345703 (validCacheMapUp!236 (cache!2668 cacheUp!1110)))))

(assert (= (and d!642417 res!917709) b!2114599))

(declare-fun m!2570345 () Bool)

(assert (=> b!2114599 m!2570345))

(assert (=> start!206530 d!642417))

(declare-fun b!2114618 () Bool)

(declare-fun e!1345724 () Bool)

(declare-fun call!128511 () Bool)

(assert (=> b!2114618 (= e!1345724 call!128511)))

(declare-fun b!2114619 () Bool)

(declare-fun e!1345722 () Bool)

(assert (=> b!2114619 (= e!1345722 call!128511)))

(declare-fun b!2114621 () Bool)

(declare-fun e!1345720 () Bool)

(assert (=> b!2114621 (= e!1345720 e!1345722)))

(declare-fun res!917723 () Bool)

(assert (=> b!2114621 (=> (not res!917723) (not e!1345722))))

(declare-fun call!128512 () Bool)

(assert (=> b!2114621 (= res!917723 call!128512)))

(declare-fun b!2114622 () Bool)

(declare-fun e!1345721 () Bool)

(declare-fun call!128510 () Bool)

(assert (=> b!2114622 (= e!1345721 call!128510)))

(declare-fun b!2114623 () Bool)

(declare-fun e!1345718 () Bool)

(declare-fun e!1345719 () Bool)

(assert (=> b!2114623 (= e!1345718 e!1345719)))

(declare-fun c!339242 () Bool)

(assert (=> b!2114623 (= c!339242 ((_ is Star!5635) r!15373))))

(declare-fun b!2114624 () Bool)

(assert (=> b!2114624 (= e!1345719 e!1345721)))

(declare-fun res!917722 () Bool)

(declare-fun nullable!1679 (Regex!5635) Bool)

(assert (=> b!2114624 (= res!917722 (not (nullable!1679 (reg!5964 r!15373))))))

(assert (=> b!2114624 (=> (not res!917722) (not e!1345721))))

(declare-fun bm!128505 () Bool)

(declare-fun c!339241 () Bool)

(assert (=> bm!128505 (= call!128510 (validRegex!2224 (ite c!339242 (reg!5964 r!15373) (ite c!339241 (regOne!11783 r!15373) (regOne!11782 r!15373)))))))

(declare-fun b!2114625 () Bool)

(declare-fun e!1345723 () Bool)

(assert (=> b!2114625 (= e!1345719 e!1345723)))

(assert (=> b!2114625 (= c!339241 ((_ is Union!5635) r!15373))))

(declare-fun bm!128506 () Bool)

(assert (=> bm!128506 (= call!128511 (validRegex!2224 (ite c!339241 (regTwo!11783 r!15373) (regTwo!11782 r!15373))))))

(declare-fun d!642419 () Bool)

(declare-fun res!917720 () Bool)

(assert (=> d!642419 (=> res!917720 e!1345718)))

(assert (=> d!642419 (= res!917720 ((_ is ElementMatch!5635) r!15373))))

(assert (=> d!642419 (= (validRegex!2224 r!15373) e!1345718)))

(declare-fun b!2114620 () Bool)

(declare-fun res!917721 () Bool)

(assert (=> b!2114620 (=> res!917721 e!1345720)))

(assert (=> b!2114620 (= res!917721 (not ((_ is Concat!9937) r!15373)))))

(assert (=> b!2114620 (= e!1345723 e!1345720)))

(declare-fun b!2114626 () Bool)

(declare-fun res!917724 () Bool)

(assert (=> b!2114626 (=> (not res!917724) (not e!1345724))))

(assert (=> b!2114626 (= res!917724 call!128512)))

(assert (=> b!2114626 (= e!1345723 e!1345724)))

(declare-fun bm!128507 () Bool)

(assert (=> bm!128507 (= call!128512 call!128510)))

(assert (= (and d!642419 (not res!917720)) b!2114623))

(assert (= (and b!2114623 c!339242) b!2114624))

(assert (= (and b!2114623 (not c!339242)) b!2114625))

(assert (= (and b!2114624 res!917722) b!2114622))

(assert (= (and b!2114625 c!339241) b!2114626))

(assert (= (and b!2114625 (not c!339241)) b!2114620))

(assert (= (and b!2114626 res!917724) b!2114618))

(assert (= (and b!2114620 (not res!917721)) b!2114621))

(assert (= (and b!2114621 res!917723) b!2114619))

(assert (= (or b!2114618 b!2114619) bm!128506))

(assert (= (or b!2114626 b!2114621) bm!128507))

(assert (= (or b!2114622 bm!128507) bm!128505))

(declare-fun m!2570347 () Bool)

(assert (=> b!2114624 m!2570347))

(declare-fun m!2570349 () Bool)

(assert (=> bm!128505 m!2570349))

(declare-fun m!2570351 () Bool)

(assert (=> bm!128506 m!2570351))

(assert (=> start!206530 d!642419))

(declare-fun d!642421 () Bool)

(declare-fun isBalanced!2440 (Conc!7776) Bool)

(assert (=> d!642421 (= (inv!31124 input!6660) (isBalanced!2440 (c!339230 input!6660)))))

(declare-fun bs!441117 () Bool)

(assert (= bs!441117 d!642421))

(declare-fun m!2570353 () Bool)

(assert (=> bs!441117 m!2570353))

(assert (=> start!206530 d!642421))

(declare-fun d!642423 () Bool)

(assert (=> d!642423 (= (inv!31124 totalInput!1306) (isBalanced!2440 (c!339230 totalInput!1306)))))

(declare-fun bs!441118 () Bool)

(assert (= bs!441118 d!642423))

(declare-fun m!2570355 () Bool)

(assert (=> bs!441118 m!2570355))

(assert (=> start!206530 d!642423))

(declare-fun d!642425 () Bool)

(declare-fun res!917727 () Bool)

(declare-fun e!1345727 () Bool)

(assert (=> d!642425 (=> (not res!917727) (not e!1345727))))

(assert (=> d!642425 (= res!917727 ((_ is HashMap!2288) (cache!2669 cacheDown!1229)))))

(assert (=> d!642425 (= (inv!31125 cacheDown!1229) e!1345727)))

(declare-fun b!2114629 () Bool)

(declare-fun validCacheMapDown!234 (MutableMap!2288) Bool)

(assert (=> b!2114629 (= e!1345727 (validCacheMapDown!234 (cache!2669 cacheDown!1229)))))

(assert (= (and d!642425 res!917727) b!2114629))

(declare-fun m!2570357 () Bool)

(assert (=> b!2114629 m!2570357))

(assert (=> start!206530 d!642425))

(declare-fun d!642427 () Bool)

(assert (=> d!642427 (= (valid!1871 (_4!466 lt!793217)) (validCacheMapFurthestNullable!86 (cache!2670 (_4!466 lt!793217)) (totalInput!2836 (_4!466 lt!793217))))))

(declare-fun bs!441119 () Bool)

(assert (= bs!441119 d!642427))

(declare-fun m!2570359 () Bool)

(assert (=> bs!441119 m!2570359))

(assert (=> b!2114502 d!642427))

(declare-fun d!642429 () Bool)

(declare-fun list!9500 (Conc!7776) List!23632)

(assert (=> d!642429 (= (list!9499 (_2!13374 lt!793221)) (list!9500 (c!339230 (_2!13374 lt!793221))))))

(declare-fun bs!441120 () Bool)

(assert (= bs!441120 d!642429))

(declare-fun m!2570361 () Bool)

(assert (=> bs!441120 m!2570361))

(assert (=> b!2114493 d!642429))

(declare-fun d!642431 () Bool)

(declare-fun c!339245 () Bool)

(assert (=> d!642431 (= c!339245 ((_ is Node!7776) (c!339230 input!6660)))))

(declare-fun e!1345732 () Bool)

(assert (=> d!642431 (= (inv!31123 (c!339230 input!6660)) e!1345732)))

(declare-fun b!2114636 () Bool)

(declare-fun inv!31128 (Conc!7776) Bool)

(assert (=> b!2114636 (= e!1345732 (inv!31128 (c!339230 input!6660)))))

(declare-fun b!2114637 () Bool)

(declare-fun e!1345733 () Bool)

(assert (=> b!2114637 (= e!1345732 e!1345733)))

(declare-fun res!917730 () Bool)

(assert (=> b!2114637 (= res!917730 (not ((_ is Leaf!11361) (c!339230 input!6660))))))

(assert (=> b!2114637 (=> res!917730 e!1345733)))

(declare-fun b!2114638 () Bool)

(declare-fun inv!31129 (Conc!7776) Bool)

(assert (=> b!2114638 (= e!1345733 (inv!31129 (c!339230 input!6660)))))

(assert (= (and d!642431 c!339245) b!2114636))

(assert (= (and d!642431 (not c!339245)) b!2114637))

(assert (= (and b!2114637 (not res!917730)) b!2114638))

(declare-fun m!2570363 () Bool)

(assert (=> b!2114636 m!2570363))

(declare-fun m!2570365 () Bool)

(assert (=> b!2114638 m!2570365))

(assert (=> b!2114482 d!642431))

(declare-fun d!642433 () Bool)

(assert (=> d!642433 (= (valid!1870 (_3!1854 lt!793217)) (validCacheMapDown!234 (cache!2669 (_3!1854 lt!793217))))))

(declare-fun bs!441121 () Bool)

(assert (= bs!441121 d!642433))

(declare-fun m!2570367 () Bool)

(assert (=> bs!441121 m!2570367))

(assert (=> b!2114501 d!642433))

(declare-fun d!642435 () Bool)

(declare-fun e!1345736 () Bool)

(assert (=> d!642435 e!1345736))

(declare-fun res!917733 () Bool)

(assert (=> d!642435 (=> res!917733 e!1345736)))

(declare-fun lt!793244 () Bool)

(assert (=> d!642435 (= res!917733 (not lt!793244))))

(declare-fun drop!1175 (List!23632 Int) List!23632)

(assert (=> d!642435 (= lt!793244 (= lt!793223 (drop!1175 (list!9499 totalInput!1306) (- (size!18391 (list!9499 totalInput!1306)) (size!18391 lt!793223)))))))

(assert (=> d!642435 (= (isSuffix!600 lt!793223 (list!9499 totalInput!1306)) lt!793244)))

(declare-fun b!2114641 () Bool)

(assert (=> b!2114641 (= e!1345736 (>= (size!18391 (list!9499 totalInput!1306)) (size!18391 lt!793223)))))

(assert (= (and d!642435 (not res!917733)) b!2114641))

(assert (=> d!642435 m!2570253))

(declare-fun m!2570369 () Bool)

(assert (=> d!642435 m!2570369))

(assert (=> d!642435 m!2570267))

(assert (=> d!642435 m!2570253))

(declare-fun m!2570371 () Bool)

(assert (=> d!642435 m!2570371))

(assert (=> b!2114641 m!2570253))

(assert (=> b!2114641 m!2570369))

(assert (=> b!2114641 m!2570267))

(assert (=> b!2114492 d!642435))

(declare-fun d!642437 () Bool)

(assert (=> d!642437 (= (list!9499 totalInput!1306) (list!9500 (c!339230 totalInput!1306)))))

(declare-fun bs!441122 () Bool)

(assert (= bs!441122 d!642437))

(declare-fun m!2570373 () Bool)

(assert (=> bs!441122 m!2570373))

(assert (=> b!2114492 d!642437))

(declare-fun d!642439 () Bool)

(assert (=> d!642439 (= (list!9499 input!6660) (list!9500 (c!339230 input!6660)))))

(declare-fun bs!441123 () Bool)

(assert (= bs!441123 d!642439))

(declare-fun m!2570375 () Bool)

(assert (=> bs!441123 m!2570375))

(assert (=> b!2114492 d!642439))

(declare-fun d!642441 () Bool)

(declare-fun res!917738 () Bool)

(declare-fun e!1345741 () Bool)

(assert (=> d!642441 (=> res!917738 e!1345741)))

(assert (=> d!642441 (= res!917738 ((_ is Nil!23550) (_2!13370 (_1!13371 lt!793211))))))

(assert (=> d!642441 (= (forall!4842 (_2!13370 (_1!13371 lt!793211)) lambda!78201) e!1345741)))

(declare-fun b!2114646 () Bool)

(declare-fun e!1345742 () Bool)

(assert (=> b!2114646 (= e!1345741 e!1345742)))

(declare-fun res!917739 () Bool)

(assert (=> b!2114646 (=> (not res!917739) (not e!1345742))))

(declare-fun dynLambda!11285 (Int StackFrame!10) Bool)

(assert (=> b!2114646 (= res!917739 (dynLambda!11285 lambda!78201 (h!28951 (_2!13370 (_1!13371 lt!793211)))))))

(declare-fun b!2114647 () Bool)

(assert (=> b!2114647 (= e!1345742 (forall!4842 (t!196143 (_2!13370 (_1!13371 lt!793211))) lambda!78201))))

(assert (= (and d!642441 (not res!917738)) b!2114646))

(assert (= (and b!2114646 res!917739) b!2114647))

(declare-fun b_lambda!70377 () Bool)

(assert (=> (not b_lambda!70377) (not b!2114646)))

(declare-fun m!2570377 () Bool)

(assert (=> b!2114646 m!2570377))

(declare-fun m!2570379 () Bool)

(assert (=> b!2114647 m!2570379))

(assert (=> b!2114499 d!642441))

(declare-fun d!642443 () Bool)

(declare-fun c!339246 () Bool)

(assert (=> d!642443 (= c!339246 ((_ is Node!7776) (c!339230 totalInput!1306)))))

(declare-fun e!1345743 () Bool)

(assert (=> d!642443 (= (inv!31123 (c!339230 totalInput!1306)) e!1345743)))

(declare-fun b!2114648 () Bool)

(assert (=> b!2114648 (= e!1345743 (inv!31128 (c!339230 totalInput!1306)))))

(declare-fun b!2114649 () Bool)

(declare-fun e!1345744 () Bool)

(assert (=> b!2114649 (= e!1345743 e!1345744)))

(declare-fun res!917740 () Bool)

(assert (=> b!2114649 (= res!917740 (not ((_ is Leaf!11361) (c!339230 totalInput!1306))))))

(assert (=> b!2114649 (=> res!917740 e!1345744)))

(declare-fun b!2114650 () Bool)

(assert (=> b!2114650 (= e!1345744 (inv!31129 (c!339230 totalInput!1306)))))

(assert (= (and d!642443 c!339246) b!2114648))

(assert (= (and d!642443 (not c!339246)) b!2114649))

(assert (= (and b!2114649 (not res!917740)) b!2114650))

(declare-fun m!2570381 () Bool)

(assert (=> b!2114648 m!2570381))

(declare-fun m!2570383 () Bool)

(assert (=> b!2114650 m!2570383))

(assert (=> b!2114526 d!642443))

(declare-fun d!642445 () Bool)

(declare-fun lt!793247 () tuple2!23040)

(assert (=> d!642445 (= (tuple2!23043 (list!9499 (_1!13374 lt!793247)) (list!9499 (_2!13374 lt!793247))) (findLongestMatch!512 r!15373 (list!9499 input!6660)))))

(declare-fun choose!12646 (Regex!5635 BalanceConc!15314 BalanceConc!15314) tuple2!23040)

(assert (=> d!642445 (= lt!793247 (choose!12646 r!15373 input!6660 totalInput!1306))))

(assert (=> d!642445 (validRegex!2224 r!15373)))

(assert (=> d!642445 (= (findLongestMatchWithZipperSequenceV2!79 r!15373 input!6660 totalInput!1306) lt!793247)))

(declare-fun bs!441124 () Bool)

(assert (= bs!441124 d!642445))

(declare-fun m!2570385 () Bool)

(assert (=> bs!441124 m!2570385))

(assert (=> bs!441124 m!2570313))

(assert (=> bs!441124 m!2570257))

(assert (=> bs!441124 m!2570257))

(declare-fun m!2570387 () Bool)

(assert (=> bs!441124 m!2570387))

(declare-fun m!2570389 () Bool)

(assert (=> bs!441124 m!2570389))

(declare-fun m!2570391 () Bool)

(assert (=> bs!441124 m!2570391))

(assert (=> b!2114508 d!642445))

(declare-fun d!642447 () Bool)

(assert (=> d!642447 (= (array_inv!2607 (_keys!2670 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229))))))) (bvsge (size!18386 (_keys!2670 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229))))))) #b00000000000000000000000000000000))))

(assert (=> b!2114507 d!642447))

(declare-fun d!642449 () Bool)

(assert (=> d!642449 (= (array_inv!2609 (_values!2653 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229))))))) (bvsge (size!18387 (_values!2653 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229))))))) #b00000000000000000000000000000000))))

(assert (=> b!2114507 d!642449))

(declare-fun d!642451 () Bool)

(declare-fun e!1345747 () Bool)

(assert (=> d!642451 e!1345747))

(declare-fun res!917743 () Bool)

(assert (=> d!642451 (=> (not res!917743) (not e!1345747))))

(assert (=> d!642451 (= res!917743 (= (list!9499 (_1!13374 (findLongestMatchZipperFastV2!10 lt!793219 input!6660 totalInput!1306))) (_1!13375 (findLongestMatch!512 r!15373 (list!9499 input!6660)))))))

(declare-fun lt!793250 () Unit!37536)

(declare-fun choose!12647 (Regex!5635 (InoxSet Context!2410) BalanceConc!15314 BalanceConc!15314) Unit!37536)

(assert (=> d!642451 (= lt!793250 (choose!12647 r!15373 lt!793219 input!6660 totalInput!1306))))

(assert (=> d!642451 (validRegex!2224 r!15373)))

(assert (=> d!642451 (= (longestMatchV2SameAsRegex!10 r!15373 lt!793219 input!6660 totalInput!1306) lt!793250)))

(declare-fun b!2114653 () Bool)

(assert (=> b!2114653 (= e!1345747 (= (list!9499 (_2!13374 (findLongestMatchZipperFastV2!10 lt!793219 input!6660 totalInput!1306))) (_2!13375 (findLongestMatch!512 r!15373 (list!9499 input!6660)))))))

(assert (= (and d!642451 res!917743) b!2114653))

(declare-fun m!2570393 () Bool)

(assert (=> d!642451 m!2570393))

(assert (=> d!642451 m!2570313))

(assert (=> d!642451 m!2570257))

(assert (=> d!642451 m!2570387))

(assert (=> d!642451 m!2570257))

(declare-fun m!2570395 () Bool)

(assert (=> d!642451 m!2570395))

(assert (=> d!642451 m!2570293))

(assert (=> b!2114653 m!2570293))

(declare-fun m!2570397 () Bool)

(assert (=> b!2114653 m!2570397))

(assert (=> b!2114653 m!2570257))

(assert (=> b!2114653 m!2570257))

(assert (=> b!2114653 m!2570387))

(assert (=> b!2114514 d!642451))

(declare-fun bs!441125 () Bool)

(declare-fun d!642453 () Bool)

(assert (= bs!441125 (and d!642453 b!2114514)))

(declare-fun lt!793291 () Int)

(declare-fun lambda!78216 () Int)

(assert (=> bs!441125 (= (= lt!793291 (_1!13370 (_1!13371 lt!793211))) (= lambda!78216 lambda!78200))))

(declare-fun bs!441126 () Bool)

(assert (= bs!441126 (and d!642453 b!2114499)))

(assert (=> bs!441126 (not (= lambda!78216 lambda!78201))))

(assert (=> d!642453 true))

(declare-fun bs!441127 () Bool)

(declare-fun b!2114689 () Bool)

(assert (= bs!441127 (and b!2114689 b!2114514)))

(declare-fun lambda!78217 () Int)

(assert (=> bs!441127 (= (= e!1345629 (_1!13370 (_1!13371 lt!793211))) (= lambda!78217 lambda!78200))))

(declare-fun bs!441128 () Bool)

(assert (= bs!441128 (and b!2114689 b!2114499)))

(assert (=> bs!441128 (not (= lambda!78217 lambda!78201))))

(declare-fun bs!441129 () Bool)

(assert (= bs!441129 (and b!2114689 d!642453)))

(assert (=> bs!441129 (= (= e!1345629 lt!793291) (= lambda!78217 lambda!78216))))

(assert (=> b!2114689 true))

(declare-fun bs!441130 () Bool)

(declare-fun b!2114687 () Bool)

(assert (= bs!441130 (and b!2114687 b!2114514)))

(declare-fun lt!793284 () Int)

(declare-fun lambda!78218 () Int)

(assert (=> bs!441130 (= (= lt!793284 (_1!13370 (_1!13371 lt!793211))) (= lambda!78218 lambda!78200))))

(declare-fun bs!441131 () Bool)

(assert (= bs!441131 (and b!2114687 b!2114499)))

(assert (=> bs!441131 (not (= lambda!78218 lambda!78201))))

(declare-fun bs!441132 () Bool)

(assert (= bs!441132 (and b!2114687 d!642453)))

(assert (=> bs!441132 (= (= lt!793284 lt!793291) (= lambda!78218 lambda!78216))))

(declare-fun bs!441133 () Bool)

(assert (= bs!441133 (and b!2114687 b!2114689)))

(assert (=> bs!441133 (= (= lt!793284 e!1345629) (= lambda!78218 lambda!78217))))

(assert (=> b!2114687 true))

(declare-fun bs!441134 () Bool)

(declare-fun b!2114683 () Bool)

(assert (= bs!441134 (and b!2114683 b!2114499)))

(declare-fun lambda!78219 () Int)

(assert (=> bs!441134 (not (= lambda!78219 lambda!78201))))

(declare-fun bs!441135 () Bool)

(assert (= bs!441135 (and b!2114683 b!2114687)))

(declare-fun lt!793290 () tuple3!2772)

(assert (=> bs!441135 (= (= (_1!13370 (_1!13371 lt!793290)) lt!793284) (= lambda!78219 lambda!78218))))

(declare-fun bs!441136 () Bool)

(assert (= bs!441136 (and b!2114683 b!2114514)))

(assert (=> bs!441136 (= (= (_1!13370 (_1!13371 lt!793290)) (_1!13370 (_1!13371 lt!793211))) (= lambda!78219 lambda!78200))))

(declare-fun bs!441137 () Bool)

(assert (= bs!441137 (and b!2114683 d!642453)))

(assert (=> bs!441137 (= (= (_1!13370 (_1!13371 lt!793290)) lt!793291) (= lambda!78219 lambda!78216))))

(declare-fun bs!441138 () Bool)

(assert (= bs!441138 (and b!2114683 b!2114689)))

(assert (=> bs!441138 (= (= (_1!13370 (_1!13371 lt!793290)) e!1345629) (= lambda!78219 lambda!78217))))

(declare-fun b!2114695 () Bool)

(declare-fun e!1345778 () Bool)

(declare-fun e!1345775 () Bool)

(assert (=> b!2114695 (= e!1345778 e!1345775)))

(declare-fun mapNonEmpty!11404 () Bool)

(declare-fun mapRes!11405 () Bool)

(assert (=> mapNonEmpty!11404 (= mapRes!11405 true)))

(declare-fun mapKey!11404 () (_ BitVec 32))

(declare-fun mapValue!11405 () List!23631)

(declare-fun mapRest!11404 () (Array (_ BitVec 32) List!23631))

(assert (=> mapNonEmpty!11404 (= (arr!3630 (_values!2653 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793290)))))))) (store mapRest!11404 mapKey!11404 mapValue!11405))))

(declare-fun b!2114696 () Bool)

(declare-fun e!1345776 () Bool)

(declare-fun e!1345765 () Bool)

(declare-fun lt!793294 () MutLongMap!2374)

(assert (=> b!2114696 (= e!1345776 (and e!1345765 ((_ is LongMap!2374) lt!793294)))))

(assert (=> b!2114696 (= lt!793294 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793290)))))))

(declare-fun b!2114698 () Bool)

(declare-fun e!1345774 () Bool)

(declare-fun e!1345767 () Bool)

(assert (=> b!2114698 (= e!1345774 e!1345767)))

(declare-fun mapIsEmpty!11404 () Bool)

(assert (=> mapIsEmpty!11404 mapRes!11405))

(declare-fun b!2114699 () Bool)

(declare-fun e!1345773 () Bool)

(declare-fun e!1345777 () Bool)

(assert (=> b!2114699 (= e!1345773 e!1345777)))

(declare-fun b!2114700 () Bool)

(declare-fun e!1345768 () Bool)

(assert (=> b!2114700 (= e!1345777 e!1345768)))

(declare-fun mapNonEmpty!11405 () Bool)

(declare-fun mapRes!11404 () Bool)

(assert (=> mapNonEmpty!11405 (= mapRes!11404 true)))

(declare-fun mapValue!11404 () List!23633)

(declare-fun mapKey!11405 () (_ BitVec 32))

(declare-fun mapRest!11405 () (Array (_ BitVec 32) List!23633))

(assert (=> mapNonEmpty!11405 (= (arr!3631 (_values!2654 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793290)))))))) (store mapRest!11405 mapKey!11405 mapValue!11404))))

(declare-fun setIsEmpty!14142 () Bool)

(declare-fun setRes!14142 () Bool)

(assert (=> setIsEmpty!14142 setRes!14142))

(declare-fun b!2114701 () Bool)

(declare-fun e!1345771 () Bool)

(declare-fun e!1345764 () Bool)

(assert (=> b!2114701 (= e!1345771 e!1345764)))

(declare-fun b!2114702 () Bool)

(declare-fun e!1345769 () Bool)

(assert (=> b!2114702 (= e!1345769 mapRes!11405)))

(declare-fun condMapEmpty!11404 () Bool)

(declare-fun mapDefault!11405 () List!23631)

(assert (=> b!2114702 (= condMapEmpty!11404 (= (arr!3630 (_values!2653 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793290)))))))) ((as const (Array (_ BitVec 32) List!23631)) mapDefault!11405)))))

(declare-fun b!2114703 () Bool)

(declare-fun e!1345772 () Bool)

(assert (=> b!2114703 (= e!1345765 e!1345772)))

(declare-fun b!2114704 () Bool)

(assert (=> b!2114704 (= e!1345767 mapRes!11404)))

(declare-fun condMapEmpty!11405 () Bool)

(declare-fun mapDefault!11404 () List!23633)

(assert (=> b!2114704 (= condMapEmpty!11405 (= (arr!3631 (_values!2654 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793290)))))))) ((as const (Array (_ BitVec 32) List!23633)) mapDefault!11404)))))

(declare-fun mapIsEmpty!11405 () Bool)

(assert (=> mapIsEmpty!11405 mapRes!11404))

(declare-fun e!1345763 () Bool)

(assert (=> b!2114683 (and e!1345771 e!1345763 e!1345778)))

(declare-fun b!2114697 () Bool)

(declare-fun e!1345766 () Bool)

(declare-fun lt!793293 () MutLongMap!2373)

(assert (=> b!2114697 (= e!1345766 (and e!1345773 ((_ is LongMap!2373) lt!793293)))))

(assert (=> b!2114697 (= lt!793293 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793290)))))))

(declare-fun setNonEmpty!14142 () Bool)

(assert (=> setNonEmpty!14142 (= setRes!14142 true)))

(declare-fun setElem!14142 () Context!2410)

(declare-fun setRest!14142 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14142 (= (z!5673 (h!28951 (_2!13370 (_1!13371 lt!793290)))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14142 true) setRest!14142))))

(declare-fun b!2114705 () Bool)

(declare-fun e!1345770 () Bool)

(assert (=> b!2114705 (= e!1345770 e!1345776)))

(declare-fun b!2114706 () Bool)

(assert (=> b!2114706 (= e!1345768 e!1345769)))

(declare-fun b!2114707 () Bool)

(assert (=> b!2114707 (= e!1345772 e!1345774)))

(declare-fun b!2114708 () Bool)

(assert (=> b!2114708 (= e!1345763 e!1345770)))

(declare-fun b!2114709 () Bool)

(assert (=> b!2114709 (= e!1345775 e!1345766)))

(declare-fun b!2114710 () Bool)

(assert (=> b!2114710 (= e!1345764 setRes!14142)))

(declare-fun condSetEmpty!14142 () Bool)

(assert (=> b!2114710 (= condSetEmpty!14142 (= (z!5673 (h!28951 (_2!13370 (_1!13371 lt!793290)))) ((as const (Array Context!2410 Bool)) false)))))

(assert (= (and b!2114710 condSetEmpty!14142) setIsEmpty!14142))

(assert (= (and b!2114710 (not condSetEmpty!14142)) setNonEmpty!14142))

(assert (= b!2114701 b!2114710))

(assert (= (and b!2114683 ((_ is Cons!23550) (_2!13370 (_1!13371 lt!793290)))) b!2114701))

(assert (= (and b!2114704 condMapEmpty!11405) mapIsEmpty!11405))

(assert (= (and b!2114704 (not condMapEmpty!11405)) mapNonEmpty!11405))

(assert (= b!2114698 b!2114704))

(assert (= b!2114707 b!2114698))

(assert (= b!2114703 b!2114707))

(assert (= (and b!2114696 ((_ is LongMap!2374) (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793290)))))) b!2114703))

(assert (= b!2114705 b!2114696))

(assert (= (and b!2114708 ((_ is HashMap!2287) (cache!2668 (_2!13371 lt!793290)))) b!2114705))

(assert (= b!2114683 b!2114708))

(assert (= (and b!2114702 condMapEmpty!11404) mapIsEmpty!11404))

(assert (= (and b!2114702 (not condMapEmpty!11404)) mapNonEmpty!11404))

(assert (= b!2114706 b!2114702))

(assert (= b!2114700 b!2114706))

(assert (= b!2114699 b!2114700))

(assert (= (and b!2114697 ((_ is LongMap!2373) (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793290)))))) b!2114699))

(assert (= b!2114709 b!2114697))

(assert (= (and b!2114695 ((_ is HashMap!2288) (cache!2669 (_3!1852 lt!793290)))) b!2114709))

(assert (= b!2114683 b!2114695))

(assert (=> b!2114709 (< (dynLambda!11280 order!14509 (defaultValue!2450 (cache!2669 (_3!1852 lt!793290)))) (dynLambda!11281 order!14511 lambda!78219))))

(assert (=> b!2114698 (< (dynLambda!11282 order!14513 (defaultEntry!2739 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793290)))))))) (dynLambda!11281 order!14511 lambda!78219))))

(assert (=> b!2114706 (< (dynLambda!11283 order!14515 (defaultEntry!2738 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793290)))))))) (dynLambda!11281 order!14511 lambda!78219))))

(assert (=> b!2114705 (< (dynLambda!11284 order!14517 (defaultValue!2449 (cache!2668 (_2!13371 lt!793290)))) (dynLambda!11281 order!14511 lambda!78219))))

(declare-fun m!2570399 () Bool)

(assert (=> mapNonEmpty!11404 m!2570399))

(declare-fun m!2570401 () Bool)

(assert (=> mapNonEmpty!11405 m!2570401))

(declare-fun bs!441139 () Bool)

(declare-fun b!2114682 () Bool)

(assert (= bs!441139 (and b!2114682 b!2114499)))

(declare-fun lambda!78220 () Int)

(assert (=> bs!441139 (= lambda!78220 lambda!78201)))

(declare-fun bs!441140 () Bool)

(assert (= bs!441140 (and b!2114682 b!2114687)))

(assert (=> bs!441140 (not (= lambda!78220 lambda!78218))))

(declare-fun bs!441141 () Bool)

(assert (= bs!441141 (and b!2114682 d!642453)))

(assert (=> bs!441141 (not (= lambda!78220 lambda!78216))))

(declare-fun bs!441142 () Bool)

(assert (= bs!441142 (and b!2114682 b!2114689)))

(assert (=> bs!441142 (not (= lambda!78220 lambda!78217))))

(declare-fun bs!441143 () Bool)

(assert (= bs!441143 (and b!2114682 b!2114683)))

(assert (=> bs!441143 (not (= lambda!78220 lambda!78219))))

(declare-fun bs!441144 () Bool)

(assert (= bs!441144 (and b!2114682 b!2114514)))

(assert (=> bs!441144 (not (= lambda!78220 lambda!78200))))

(assert (=> b!2114682 true))

(declare-fun b!2114680 () Bool)

(declare-fun res!917764 () Bool)

(declare-fun e!1345760 () Bool)

(assert (=> b!2114680 (=> (not res!917764) (not e!1345760))))

(assert (=> b!2114680 (= res!917764 (valid!1870 (_3!1852 lt!793290)))))

(declare-fun bm!128514 () Bool)

(declare-fun call!128519 () Bool)

(declare-fun c!339254 () Bool)

(assert (=> bm!128514 (= call!128519 (forall!4842 Nil!23550 (ite c!339254 lambda!78216 lambda!78216)))))

(declare-fun b!2114681 () Bool)

(declare-fun res!917759 () Bool)

(assert (=> b!2114681 (=> (not res!917759) (not e!1345760))))

(assert (=> b!2114681 (= res!917759 (= (totalInput!2836 cacheFurthestNullable!141) totalInput!1306))))

(assert (=> b!2114682 (= e!1345760 (forall!4842 (_2!13370 (_1!13371 lt!793290)) lambda!78220))))

(declare-fun res!917762 () Bool)

(assert (=> b!2114683 (=> (not res!917762) (not e!1345760))))

(assert (=> b!2114683 (= res!917762 (forall!4842 (_2!13370 (_1!13371 lt!793290)) lambda!78219))))

(declare-fun b!2114684 () Bool)

(declare-fun e!1345762 () tuple3!2772)

(declare-datatypes ((Option!4863 0))(
  ( (None!4862) (Some!4862 (v!28079 Int)) )
))
(declare-fun lt!793288 () Option!4863)

(assert (=> b!2114684 (= e!1345762 (tuple3!2773 (tuple2!23037 (v!28079 lt!793288) Nil!23550) cacheUp!1110 cacheDown!1229))))

(declare-fun b!2114685 () Bool)

(declare-fun e!1345758 () Int)

(assert (=> b!2114685 (= e!1345758 lt!793208)))

(declare-fun call!128520 () Unit!37536)

(declare-fun bm!128515 () Bool)

(declare-fun lemmaStackPreservesForEqualRes!1 (List!23634 Int Int) Unit!37536)

(assert (=> bm!128515 (= call!128520 (lemmaStackPreservesForEqualRes!1 Nil!23550 lt!793291 (ite c!339254 e!1345629 lt!793284)))))

(declare-fun b!2114686 () Bool)

(declare-fun e!1345759 () tuple3!2772)

(assert (=> b!2114686 (= e!1345762 e!1345759)))

(declare-fun res!917761 () Bool)

(assert (=> b!2114686 (= res!917761 (= lt!793208 lt!793220))))

(declare-fun e!1345761 () Bool)

(assert (=> b!2114686 (=> res!917761 e!1345761)))

(assert (=> b!2114686 (= c!339254 e!1345761)))

(declare-fun lt!793280 () tuple3!2772)

(declare-datatypes ((tuple3!2776 0))(
  ( (tuple3!2777 (_1!13378 (InoxSet Context!2410)) (_2!13378 CacheUp!1578) (_3!1855 CacheDown!1570)) )
))
(declare-fun lt!793286 () tuple3!2776)

(declare-fun lt!793287 () Int)

(assert (=> b!2114687 (= lt!793280 (furthestNullablePositionStackMem!2 (_1!13378 lt!793286) (+ lt!793208 1) totalInput!1306 lt!793220 lt!793287 (Cons!23550 (StackFrame!11 lt!793219 lt!793208 e!1345629 lt!793291 totalInput!1306) Nil!23550) (_2!13378 lt!793286) (_3!1855 lt!793286) cacheFurthestNullable!141))))

(declare-fun lt!793283 () Unit!37536)

(declare-fun lt!793289 () Unit!37536)

(assert (=> b!2114687 (= lt!793283 lt!793289)))

(declare-fun call!128521 () Bool)

(assert (=> b!2114687 call!128521))

(assert (=> b!2114687 (= lt!793289 call!128520)))

(declare-fun lt!793281 () Unit!37536)

(declare-fun Unit!37540 () Unit!37536)

(assert (=> b!2114687 (= lt!793281 Unit!37540)))

(assert (=> b!2114687 call!128519))

(declare-fun furthestNullablePosition!3 ((InoxSet Context!2410) Int BalanceConc!15314 Int Int) Int)

(assert (=> b!2114687 (= lt!793284 (furthestNullablePosition!3 (_1!13378 lt!793286) (+ lt!793208 1) totalInput!1306 (size!18390 totalInput!1306) lt!793287))))

(assert (=> b!2114687 (= lt!793287 e!1345758)))

(declare-fun c!339255 () Bool)

(assert (=> b!2114687 (= c!339255 (nullableZipper!49 (_1!13378 lt!793286)))))

(declare-fun derivationStepZipperMem!12 ((InoxSet Context!2410) C!11416 CacheUp!1578 CacheDown!1570) tuple3!2776)

(declare-fun apply!5902 (BalanceConc!15314 Int) C!11416)

(assert (=> b!2114687 (= lt!793286 (derivationStepZipperMem!12 lt!793219 (apply!5902 totalInput!1306 lt!793208) cacheUp!1110 cacheDown!1229))))

(assert (=> b!2114687 (= e!1345759 (tuple3!2773 (_1!13371 lt!793280) (_2!13371 lt!793280) (_3!1852 lt!793280)))))

(declare-fun b!2114688 () Bool)

(declare-fun res!917763 () Bool)

(assert (=> b!2114688 (=> (not res!917763) (not e!1345760))))

(assert (=> b!2114688 (= res!917763 (valid!1872 (_2!13371 lt!793290)))))

(declare-fun lt!793285 () Unit!37536)

(declare-fun lt!793279 () Unit!37536)

(assert (=> b!2114689 (= lt!793285 lt!793279)))

(assert (=> b!2114689 call!128521))

(assert (=> b!2114689 (= lt!793279 call!128520)))

(declare-fun lt!793292 () Unit!37536)

(declare-fun Unit!37541 () Unit!37536)

(assert (=> b!2114689 (= lt!793292 Unit!37541)))

(assert (=> b!2114689 call!128519))

(assert (=> b!2114689 (= e!1345759 (tuple3!2773 (tuple2!23037 e!1345629 Nil!23550) cacheUp!1110 cacheDown!1229))))

(declare-fun b!2114690 () Bool)

(assert (=> b!2114690 (= e!1345758 e!1345629)))

(declare-fun b!2114691 () Bool)

(declare-fun lostCauseZipper!50 ((InoxSet Context!2410)) Bool)

(assert (=> b!2114691 (= e!1345761 (lostCauseZipper!50 lt!793219))))

(declare-fun bm!128516 () Bool)

(assert (=> bm!128516 (= call!128521 (forall!4842 Nil!23550 (ite c!339254 lambda!78217 lambda!78218)))))

(declare-fun b!2114692 () Bool)

(declare-fun res!917758 () Bool)

(assert (=> b!2114692 (=> (not res!917758) (not e!1345760))))

(assert (=> b!2114692 (= res!917758 (valid!1871 cacheFurthestNullable!141))))

(assert (=> d!642453 e!1345760))

(declare-fun res!917760 () Bool)

(assert (=> d!642453 (=> (not res!917760) (not e!1345760))))

(assert (=> d!642453 (= res!917760 (= (_1!13370 (_1!13371 lt!793290)) (furthestNullablePosition!3 lt!793219 lt!793208 totalInput!1306 lt!793220 e!1345629)))))

(assert (=> d!642453 (= lt!793290 e!1345762)))

(declare-fun c!339253 () Bool)

(assert (=> d!642453 (= c!339253 ((_ is Some!4862) lt!793288))))

(declare-fun get!7290 (CacheFurthestNullable!550 (InoxSet Context!2410) Int Int) Option!4863)

(assert (=> d!642453 (= lt!793288 (get!7290 cacheFurthestNullable!141 lt!793219 lt!793208 e!1345629))))

(declare-fun lt!793282 () Unit!37536)

(declare-fun Unit!37542 () Unit!37536)

(assert (=> d!642453 (= lt!793282 Unit!37542)))

(assert (=> d!642453 (forall!4842 Nil!23550 lambda!78216)))

(assert (=> d!642453 (= lt!793291 (furthestNullablePosition!3 lt!793219 lt!793208 totalInput!1306 (size!18390 totalInput!1306) e!1345629))))

(assert (=> d!642453 (and (>= lt!793208 0) (<= lt!793208 lt!793220))))

(assert (=> d!642453 (= (furthestNullablePositionStackMem!2 lt!793219 lt!793208 totalInput!1306 lt!793220 e!1345629 Nil!23550 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141) lt!793290)))

(assert (= (and d!642453 c!339253) b!2114684))

(assert (= (and d!642453 (not c!339253)) b!2114686))

(assert (= (and b!2114686 (not res!917761)) b!2114691))

(assert (= (and b!2114686 c!339254) b!2114689))

(assert (= (and b!2114686 (not c!339254)) b!2114687))

(assert (= (and b!2114687 c!339255) b!2114685))

(assert (= (and b!2114687 (not c!339255)) b!2114690))

(assert (= (or b!2114689 b!2114687) bm!128515))

(assert (= (or b!2114689 b!2114687) bm!128516))

(assert (= (or b!2114689 b!2114687) bm!128514))

(assert (= (and d!642453 res!917760) b!2114683))

(assert (= (and b!2114683 res!917762) b!2114688))

(assert (= (and b!2114688 res!917763) b!2114680))

(assert (= (and b!2114680 res!917764) b!2114692))

(assert (= (and b!2114692 res!917758) b!2114681))

(assert (= (and b!2114681 res!917759) b!2114682))

(declare-fun m!2570403 () Bool)

(assert (=> d!642453 m!2570403))

(declare-fun m!2570405 () Bool)

(assert (=> d!642453 m!2570405))

(assert (=> d!642453 m!2570279))

(declare-fun m!2570407 () Bool)

(assert (=> d!642453 m!2570407))

(declare-fun m!2570409 () Bool)

(assert (=> d!642453 m!2570409))

(assert (=> d!642453 m!2570279))

(declare-fun m!2570411 () Bool)

(assert (=> b!2114680 m!2570411))

(declare-fun m!2570413 () Bool)

(assert (=> b!2114683 m!2570413))

(declare-fun m!2570415 () Bool)

(assert (=> b!2114691 m!2570415))

(declare-fun m!2570417 () Bool)

(assert (=> b!2114688 m!2570417))

(declare-fun m!2570419 () Bool)

(assert (=> bm!128514 m!2570419))

(declare-fun m!2570421 () Bool)

(assert (=> bm!128516 m!2570421))

(declare-fun m!2570423 () Bool)

(assert (=> bm!128515 m!2570423))

(declare-fun m!2570425 () Bool)

(assert (=> b!2114687 m!2570425))

(declare-fun m!2570427 () Bool)

(assert (=> b!2114687 m!2570427))

(declare-fun m!2570429 () Bool)

(assert (=> b!2114687 m!2570429))

(declare-fun m!2570431 () Bool)

(assert (=> b!2114687 m!2570431))

(assert (=> b!2114687 m!2570279))

(declare-fun m!2570433 () Bool)

(assert (=> b!2114687 m!2570433))

(assert (=> b!2114687 m!2570279))

(assert (=> b!2114687 m!2570425))

(assert (=> b!2114692 m!2570251))

(declare-fun m!2570435 () Bool)

(assert (=> b!2114682 m!2570435))

(assert (=> b!2114514 d!642453))

(declare-fun d!642455 () Bool)

(declare-fun lt!793303 () tuple2!23040)

(declare-fun ++!6311 (List!23632 List!23632) List!23632)

(assert (=> d!642455 (= (++!6311 (list!9499 (_1!13374 lt!793303)) (list!9499 (_2!13374 lt!793303))) (list!9499 input!6660))))

(declare-fun e!1345783 () tuple2!23040)

(assert (=> d!642455 (= lt!793303 e!1345783)))

(declare-fun c!339260 () Bool)

(declare-fun lt!793304 () Int)

(assert (=> d!642455 (= c!339260 (< lt!793304 0))))

(declare-fun e!1345784 () Int)

(declare-fun lt!793306 () Int)

(declare-fun lt!793305 () Int)

(assert (=> d!642455 (= lt!793304 (+ (- (furthestNullablePosition!3 lt!793219 lt!793305 totalInput!1306 lt!793306 e!1345784) lt!793305) 1))))

(declare-fun c!339261 () Bool)

(assert (=> d!642455 (= c!339261 (nullableZipper!49 lt!793219))))

(assert (=> d!642455 (= lt!793305 (- lt!793306 (size!18390 input!6660)))))

(assert (=> d!642455 (= lt!793306 (size!18390 totalInput!1306))))

(assert (=> d!642455 (isSuffix!600 (list!9499 input!6660) (list!9499 totalInput!1306))))

(assert (=> d!642455 (= (findLongestMatchZipperSequenceV3!5 lt!793219 input!6660 totalInput!1306) lt!793303)))

(declare-fun b!2114719 () Bool)

(assert (=> b!2114719 (= e!1345784 (- 1))))

(declare-fun call!128524 () tuple2!23040)

(declare-fun bm!128519 () Bool)

(assert (=> bm!128519 (= call!128524 (splitAt!10 input!6660 (ite c!339260 0 lt!793304)))))

(declare-fun b!2114720 () Bool)

(assert (=> b!2114720 (= e!1345783 call!128524)))

(declare-fun b!2114721 () Bool)

(assert (=> b!2114721 (= e!1345783 call!128524)))

(declare-fun b!2114722 () Bool)

(assert (=> b!2114722 (= e!1345784 (- lt!793305 1))))

(assert (= (and d!642455 c!339261) b!2114722))

(assert (= (and d!642455 (not c!339261)) b!2114719))

(assert (= (and d!642455 c!339260) b!2114720))

(assert (= (and d!642455 (not c!339260)) b!2114721))

(assert (= (or b!2114720 b!2114721) bm!128519))

(assert (=> d!642455 m!2570275))

(declare-fun m!2570437 () Bool)

(assert (=> d!642455 m!2570437))

(declare-fun m!2570439 () Bool)

(assert (=> d!642455 m!2570439))

(declare-fun m!2570441 () Bool)

(assert (=> d!642455 m!2570441))

(assert (=> d!642455 m!2570257))

(assert (=> d!642455 m!2570253))

(declare-fun m!2570443 () Bool)

(assert (=> d!642455 m!2570443))

(declare-fun m!2570445 () Bool)

(assert (=> d!642455 m!2570445))

(assert (=> d!642455 m!2570271))

(assert (=> d!642455 m!2570437))

(assert (=> d!642455 m!2570257))

(assert (=> d!642455 m!2570279))

(assert (=> d!642455 m!2570253))

(assert (=> d!642455 m!2570439))

(declare-fun m!2570447 () Bool)

(assert (=> bm!128519 m!2570447))

(assert (=> b!2114514 d!642455))

(declare-fun d!642457 () Bool)

(declare-fun e!1345787 () Bool)

(assert (=> d!642457 e!1345787))

(declare-fun res!917767 () Bool)

(assert (=> d!642457 (=> (not res!917767) (not e!1345787))))

(assert (=> d!642457 (= res!917767 (= (list!9499 (_1!13374 (findLongestMatchZipperSequenceV3!5 lt!793219 input!6660 totalInput!1306))) (_1!13375 (findLongestMatch!512 r!15373 (list!9499 input!6660)))))))

(declare-fun lt!793309 () Unit!37536)

(declare-fun choose!12648 (Regex!5635 (InoxSet Context!2410) BalanceConc!15314 BalanceConc!15314) Unit!37536)

(assert (=> d!642457 (= lt!793309 (choose!12648 r!15373 lt!793219 input!6660 totalInput!1306))))

(assert (=> d!642457 (validRegex!2224 r!15373)))

(assert (=> d!642457 (= (longestMatchV3SameAsRegex!5 r!15373 lt!793219 input!6660 totalInput!1306) lt!793309)))

(declare-fun b!2114725 () Bool)

(assert (=> b!2114725 (= e!1345787 (= (list!9499 (_2!13374 (findLongestMatchZipperSequenceV3!5 lt!793219 input!6660 totalInput!1306))) (_2!13375 (findLongestMatch!512 r!15373 (list!9499 input!6660)))))))

(assert (= (and d!642457 res!917767) b!2114725))

(assert (=> d!642457 m!2570257))

(assert (=> d!642457 m!2570257))

(assert (=> d!642457 m!2570387))

(declare-fun m!2570449 () Bool)

(assert (=> d!642457 m!2570449))

(declare-fun m!2570451 () Bool)

(assert (=> d!642457 m!2570451))

(assert (=> d!642457 m!2570313))

(assert (=> d!642457 m!2570289))

(assert (=> b!2114725 m!2570289))

(declare-fun m!2570453 () Bool)

(assert (=> b!2114725 m!2570453))

(assert (=> b!2114725 m!2570257))

(assert (=> b!2114725 m!2570257))

(assert (=> b!2114725 m!2570387))

(assert (=> b!2114514 d!642457))

(declare-fun d!642459 () Bool)

(declare-fun lt!793332 () tuple2!23042)

(assert (=> d!642459 (= (++!6311 (_1!13375 lt!793332) (_2!13375 lt!793332)) lt!793223)))

(declare-fun findLongestMatchInner!594 (Regex!5635 List!23632 Int List!23632 List!23632 Int) tuple2!23042)

(assert (=> d!642459 (= lt!793332 (findLongestMatchInner!594 r!15373 Nil!23548 0 lt!793223 lt!793223 (sizeTr!95 lt!793223 0)))))

(declare-fun lt!793333 () Unit!37536)

(declare-fun lt!793327 () Unit!37536)

(assert (=> d!642459 (= lt!793333 lt!793327)))

(declare-fun lt!793328 () List!23632)

(declare-fun lt!793331 () Int)

(assert (=> d!642459 (= (sizeTr!95 lt!793328 lt!793331) (+ (size!18391 lt!793328) lt!793331))))

(assert (=> d!642459 (= lt!793327 (lemmaSizeTrEqualsSize!95 lt!793328 lt!793331))))

(assert (=> d!642459 (= lt!793331 0)))

(assert (=> d!642459 (= lt!793328 Nil!23548)))

(declare-fun lt!793330 () Unit!37536)

(declare-fun lt!793326 () Unit!37536)

(assert (=> d!642459 (= lt!793330 lt!793326)))

(declare-fun lt!793329 () Int)

(assert (=> d!642459 (= (sizeTr!95 lt!793223 lt!793329) (+ (size!18391 lt!793223) lt!793329))))

(assert (=> d!642459 (= lt!793326 (lemmaSizeTrEqualsSize!95 lt!793223 lt!793329))))

(assert (=> d!642459 (= lt!793329 0)))

(assert (=> d!642459 (validRegex!2224 r!15373)))

(assert (=> d!642459 (= (findLongestMatch!512 r!15373 lt!793223) lt!793332)))

(declare-fun bs!441145 () Bool)

(assert (= bs!441145 d!642459))

(assert (=> bs!441145 m!2570267))

(assert (=> bs!441145 m!2570313))

(declare-fun m!2570455 () Bool)

(assert (=> bs!441145 m!2570455))

(declare-fun m!2570457 () Bool)

(assert (=> bs!441145 m!2570457))

(assert (=> bs!441145 m!2570295))

(declare-fun m!2570459 () Bool)

(assert (=> bs!441145 m!2570459))

(declare-fun m!2570461 () Bool)

(assert (=> bs!441145 m!2570461))

(assert (=> bs!441145 m!2570295))

(declare-fun m!2570463 () Bool)

(assert (=> bs!441145 m!2570463))

(declare-fun m!2570465 () Bool)

(assert (=> bs!441145 m!2570465))

(declare-fun m!2570467 () Bool)

(assert (=> bs!441145 m!2570467))

(assert (=> b!2114514 d!642459))

(declare-fun d!642461 () Bool)

(declare-fun lt!793336 () Int)

(assert (=> d!642461 (>= lt!793336 0)))

(declare-fun e!1345790 () Int)

(assert (=> d!642461 (= lt!793336 e!1345790)))

(declare-fun c!339264 () Bool)

(assert (=> d!642461 (= c!339264 ((_ is Nil!23548) lt!793223))))

(assert (=> d!642461 (= (size!18391 lt!793223) lt!793336)))

(declare-fun b!2114730 () Bool)

(assert (=> b!2114730 (= e!1345790 0)))

(declare-fun b!2114731 () Bool)

(assert (=> b!2114731 (= e!1345790 (+ 1 (size!18391 (t!196141 lt!793223))))))

(assert (= (and d!642461 c!339264) b!2114730))

(assert (= (and d!642461 (not c!339264)) b!2114731))

(declare-fun m!2570469 () Bool)

(assert (=> b!2114731 m!2570469))

(assert (=> b!2114514 d!642461))

(declare-fun d!642463 () Bool)

(declare-fun lt!793339 () Int)

(assert (=> d!642463 (= lt!793339 (size!18391 (list!9499 input!6660)))))

(declare-fun size!18392 (Conc!7776) Int)

(assert (=> d!642463 (= lt!793339 (size!18392 (c!339230 input!6660)))))

(assert (=> d!642463 (= (size!18390 input!6660) lt!793339)))

(declare-fun bs!441146 () Bool)

(assert (= bs!441146 d!642463))

(assert (=> bs!441146 m!2570257))

(assert (=> bs!441146 m!2570257))

(declare-fun m!2570471 () Bool)

(assert (=> bs!441146 m!2570471))

(declare-fun m!2570473 () Bool)

(assert (=> bs!441146 m!2570473))

(assert (=> b!2114514 d!642463))

(declare-fun d!642465 () Bool)

(assert (=> d!642465 (= (list!9499 (_1!13374 lt!793221)) (list!9500 (c!339230 (_1!13374 lt!793221))))))

(declare-fun bs!441147 () Bool)

(assert (= bs!441147 d!642465))

(declare-fun m!2570475 () Bool)

(assert (=> bs!441147 m!2570475))

(assert (=> b!2114514 d!642465))

(declare-fun d!642467 () Bool)

(assert (=> d!642467 (= (list!9499 (_1!13374 lt!793214)) (list!9500 (c!339230 (_1!13374 lt!793214))))))

(declare-fun bs!441148 () Bool)

(assert (= bs!441148 d!642467))

(declare-fun m!2570477 () Bool)

(assert (=> bs!441148 m!2570477))

(assert (=> b!2114514 d!642467))

(declare-fun d!642469 () Bool)

(declare-fun lambda!78223 () Int)

(declare-fun exists!683 ((InoxSet Context!2410) Int) Bool)

(assert (=> d!642469 (= (nullableZipper!49 lt!793219) (exists!683 lt!793219 lambda!78223))))

(declare-fun bs!441149 () Bool)

(assert (= bs!441149 d!642469))

(declare-fun m!2570479 () Bool)

(assert (=> bs!441149 m!2570479))

(assert (=> b!2114514 d!642469))

(declare-fun d!642471 () Bool)

(assert (=> d!642471 (= (sizeTr!95 lt!793223 0) (+ (size!18391 lt!793223) 0))))

(declare-fun lt!793342 () Unit!37536)

(declare-fun choose!12649 (List!23632 Int) Unit!37536)

(assert (=> d!642471 (= lt!793342 (choose!12649 lt!793223 0))))

(assert (=> d!642471 (= (lemmaSizeTrEqualsSize!95 lt!793223 0) lt!793342)))

(declare-fun bs!441150 () Bool)

(assert (= bs!441150 d!642471))

(assert (=> bs!441150 m!2570295))

(assert (=> bs!441150 m!2570267))

(declare-fun m!2570481 () Bool)

(assert (=> bs!441150 m!2570481))

(assert (=> b!2114514 d!642471))

(declare-fun d!642473 () Bool)

(declare-fun e!1345793 () Bool)

(assert (=> d!642473 e!1345793))

(declare-fun res!917771 () Bool)

(assert (=> d!642473 (=> (not res!917771) (not e!1345793))))

(assert (=> d!642473 (= res!917771 (validRegex!2224 r!15373))))

(assert (=> d!642473 (= (focus!272 r!15373) (store ((as const (Array Context!2410 Bool)) false) (Context!2411 (Cons!23546 r!15373 Nil!23546)) true))))

(declare-fun b!2114734 () Bool)

(declare-datatypes ((List!23636 0))(
  ( (Nil!23552) (Cons!23552 (h!28953 Context!2410) (t!196145 List!23636)) )
))
(declare-fun unfocusZipper!61 (List!23636) Regex!5635)

(declare-fun toList!1053 ((InoxSet Context!2410)) List!23636)

(assert (=> b!2114734 (= e!1345793 (= (unfocusZipper!61 (toList!1053 (store ((as const (Array Context!2410 Bool)) false) (Context!2411 (Cons!23546 r!15373 Nil!23546)) true))) r!15373))))

(assert (= (and d!642473 res!917771) b!2114734))

(assert (=> d!642473 m!2570313))

(declare-fun m!2570483 () Bool)

(assert (=> d!642473 m!2570483))

(assert (=> b!2114734 m!2570483))

(assert (=> b!2114734 m!2570483))

(declare-fun m!2570485 () Bool)

(assert (=> b!2114734 m!2570485))

(assert (=> b!2114734 m!2570485))

(declare-fun m!2570487 () Bool)

(assert (=> b!2114734 m!2570487))

(assert (=> b!2114514 d!642473))

(declare-fun d!642475 () Bool)

(declare-fun lt!793343 () Int)

(assert (=> d!642475 (= lt!793343 (size!18391 (list!9499 totalInput!1306)))))

(assert (=> d!642475 (= lt!793343 (size!18392 (c!339230 totalInput!1306)))))

(assert (=> d!642475 (= (size!18390 totalInput!1306) lt!793343)))

(declare-fun bs!441151 () Bool)

(assert (= bs!441151 d!642475))

(assert (=> bs!441151 m!2570253))

(assert (=> bs!441151 m!2570253))

(assert (=> bs!441151 m!2570369))

(declare-fun m!2570489 () Bool)

(assert (=> bs!441151 m!2570489))

(assert (=> b!2114514 d!642475))

(declare-fun d!642477 () Bool)

(assert (=> d!642477 (= (valid!1872 (_2!13376 lt!793217)) (validCacheMapUp!236 (cache!2668 (_2!13376 lt!793217))))))

(declare-fun bs!441152 () Bool)

(assert (= bs!441152 d!642477))

(declare-fun m!2570491 () Bool)

(assert (=> bs!441152 m!2570491))

(assert (=> b!2114514 d!642477))

(declare-fun d!642479 () Bool)

(declare-fun lt!793348 () tuple2!23040)

(assert (=> d!642479 (= (++!6311 (list!9499 (_1!13374 lt!793348)) (list!9499 (_2!13374 lt!793348))) (list!9499 input!6660))))

(declare-fun lt!793349 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!4 ((InoxSet Context!2410) Int BalanceConc!15314 Int) Int)

(assert (=> d!642479 (= lt!793348 (splitAt!10 input!6660 (findLongestMatchInnerZipperFastV2!4 lt!793219 (- lt!793349 (size!18390 input!6660)) totalInput!1306 lt!793349)))))

(assert (=> d!642479 (= lt!793349 (size!18390 totalInput!1306))))

(assert (=> d!642479 (isSuffix!600 (list!9499 input!6660) (list!9499 totalInput!1306))))

(assert (=> d!642479 (= (findLongestMatchZipperFastV2!10 lt!793219 input!6660 totalInput!1306) lt!793348)))

(declare-fun bs!441153 () Bool)

(assert (= bs!441153 d!642479))

(assert (=> bs!441153 m!2570257))

(assert (=> bs!441153 m!2570253))

(assert (=> bs!441153 m!2570443))

(assert (=> bs!441153 m!2570271))

(declare-fun m!2570493 () Bool)

(assert (=> bs!441153 m!2570493))

(declare-fun m!2570495 () Bool)

(assert (=> bs!441153 m!2570495))

(declare-fun m!2570497 () Bool)

(assert (=> bs!441153 m!2570497))

(declare-fun m!2570499 () Bool)

(assert (=> bs!441153 m!2570499))

(assert (=> bs!441153 m!2570257))

(assert (=> bs!441153 m!2570279))

(assert (=> bs!441153 m!2570493))

(declare-fun m!2570501 () Bool)

(assert (=> bs!441153 m!2570501))

(assert (=> bs!441153 m!2570497))

(assert (=> bs!441153 m!2570495))

(assert (=> bs!441153 m!2570253))

(assert (=> b!2114514 d!642479))

(declare-fun d!642481 () Bool)

(declare-fun res!917772 () Bool)

(declare-fun e!1345794 () Bool)

(assert (=> d!642481 (=> res!917772 e!1345794)))

(assert (=> d!642481 (= res!917772 ((_ is Nil!23550) (_2!13370 (_1!13371 lt!793211))))))

(assert (=> d!642481 (= (forall!4842 (_2!13370 (_1!13371 lt!793211)) lambda!78200) e!1345794)))

(declare-fun b!2114735 () Bool)

(declare-fun e!1345795 () Bool)

(assert (=> b!2114735 (= e!1345794 e!1345795)))

(declare-fun res!917773 () Bool)

(assert (=> b!2114735 (=> (not res!917773) (not e!1345795))))

(assert (=> b!2114735 (= res!917773 (dynLambda!11285 lambda!78200 (h!28951 (_2!13370 (_1!13371 lt!793211)))))))

(declare-fun b!2114736 () Bool)

(assert (=> b!2114736 (= e!1345795 (forall!4842 (t!196143 (_2!13370 (_1!13371 lt!793211))) lambda!78200))))

(assert (= (and d!642481 (not res!917772)) b!2114735))

(assert (= (and b!2114735 res!917773) b!2114736))

(declare-fun b_lambda!70379 () Bool)

(assert (=> (not b_lambda!70379) (not b!2114735)))

(declare-fun m!2570503 () Bool)

(assert (=> b!2114735 m!2570503))

(declare-fun m!2570505 () Bool)

(assert (=> b!2114736 m!2570505))

(assert (=> b!2114514 d!642481))

(declare-fun bs!441154 () Bool)

(declare-fun d!642483 () Bool)

(assert (= bs!441154 (and d!642483 b!2114499)))

(declare-fun lambda!78228 () Int)

(assert (=> bs!441154 (not (= lambda!78228 lambda!78201))))

(declare-fun bs!441155 () Bool)

(assert (= bs!441155 (and d!642483 b!2114687)))

(declare-fun lt!793367 () tuple3!2772)

(assert (=> bs!441155 (= (= (_1!13370 (_1!13371 lt!793367)) lt!793284) (= lambda!78228 lambda!78218))))

(declare-fun bs!441156 () Bool)

(assert (= bs!441156 (and d!642483 b!2114682)))

(assert (=> bs!441156 (not (= lambda!78228 lambda!78220))))

(declare-fun bs!441157 () Bool)

(assert (= bs!441157 (and d!642483 d!642453)))

(assert (=> bs!441157 (= (= (_1!13370 (_1!13371 lt!793367)) lt!793291) (= lambda!78228 lambda!78216))))

(declare-fun bs!441158 () Bool)

(assert (= bs!441158 (and d!642483 b!2114689)))

(assert (=> bs!441158 (= (= (_1!13370 (_1!13371 lt!793367)) e!1345629) (= lambda!78228 lambda!78217))))

(declare-fun bs!441159 () Bool)

(assert (= bs!441159 (and d!642483 b!2114683)))

(assert (=> bs!441159 (= (= (_1!13370 (_1!13371 lt!793367)) (_1!13370 (_1!13371 lt!793290))) (= lambda!78228 lambda!78219))))

(declare-fun bs!441160 () Bool)

(assert (= bs!441160 (and d!642483 b!2114514)))

(assert (=> bs!441160 (= (= (_1!13370 (_1!13371 lt!793367)) (_1!13370 (_1!13371 lt!793211))) (= lambda!78228 lambda!78200))))

(declare-fun b!2114749 () Bool)

(declare-fun e!1345817 () Bool)

(declare-fun e!1345814 () Bool)

(assert (=> b!2114749 (= e!1345817 e!1345814)))

(declare-fun mapNonEmpty!11406 () Bool)

(declare-fun mapRes!11407 () Bool)

(assert (=> mapNonEmpty!11406 (= mapRes!11407 true)))

(declare-fun mapValue!11407 () List!23631)

(declare-fun mapRest!11406 () (Array (_ BitVec 32) List!23631))

(declare-fun mapKey!11406 () (_ BitVec 32))

(assert (=> mapNonEmpty!11406 (= (arr!3630 (_values!2653 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793367)))))))) (store mapRest!11406 mapKey!11406 mapValue!11407))))

(declare-fun b!2114750 () Bool)

(declare-fun e!1345815 () Bool)

(declare-fun e!1345804 () Bool)

(declare-fun lt!793372 () MutLongMap!2374)

(assert (=> b!2114750 (= e!1345815 (and e!1345804 ((_ is LongMap!2374) lt!793372)))))

(assert (=> b!2114750 (= lt!793372 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793367)))))))

(declare-fun b!2114752 () Bool)

(declare-fun e!1345813 () Bool)

(declare-fun e!1345806 () Bool)

(assert (=> b!2114752 (= e!1345813 e!1345806)))

(declare-fun mapIsEmpty!11406 () Bool)

(assert (=> mapIsEmpty!11406 mapRes!11407))

(declare-fun b!2114753 () Bool)

(declare-fun e!1345812 () Bool)

(declare-fun e!1345816 () Bool)

(assert (=> b!2114753 (= e!1345812 e!1345816)))

(declare-fun b!2114754 () Bool)

(declare-fun e!1345807 () Bool)

(assert (=> b!2114754 (= e!1345816 e!1345807)))

(declare-fun mapNonEmpty!11407 () Bool)

(declare-fun mapRes!11406 () Bool)

(assert (=> mapNonEmpty!11407 (= mapRes!11406 true)))

(declare-fun mapRest!11407 () (Array (_ BitVec 32) List!23633))

(declare-fun mapKey!11407 () (_ BitVec 32))

(declare-fun mapValue!11406 () List!23633)

(assert (=> mapNonEmpty!11407 (= (arr!3631 (_values!2654 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793367)))))))) (store mapRest!11407 mapKey!11407 mapValue!11406))))

(declare-fun setIsEmpty!14143 () Bool)

(declare-fun setRes!14143 () Bool)

(assert (=> setIsEmpty!14143 setRes!14143))

(declare-fun b!2114755 () Bool)

(declare-fun e!1345810 () Bool)

(declare-fun e!1345803 () Bool)

(assert (=> b!2114755 (= e!1345810 e!1345803)))

(declare-fun b!2114756 () Bool)

(declare-fun e!1345808 () Bool)

(assert (=> b!2114756 (= e!1345808 mapRes!11407)))

(declare-fun condMapEmpty!11406 () Bool)

(declare-fun mapDefault!11407 () List!23631)

(assert (=> b!2114756 (= condMapEmpty!11406 (= (arr!3630 (_values!2653 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793367)))))))) ((as const (Array (_ BitVec 32) List!23631)) mapDefault!11407)))))

(declare-fun b!2114757 () Bool)

(declare-fun e!1345811 () Bool)

(assert (=> b!2114757 (= e!1345804 e!1345811)))

(declare-fun b!2114758 () Bool)

(assert (=> b!2114758 (= e!1345806 mapRes!11406)))

(declare-fun condMapEmpty!11407 () Bool)

(declare-fun mapDefault!11406 () List!23633)

(assert (=> b!2114758 (= condMapEmpty!11407 (= (arr!3631 (_values!2654 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793367)))))))) ((as const (Array (_ BitVec 32) List!23633)) mapDefault!11406)))))

(declare-fun mapIsEmpty!11407 () Bool)

(assert (=> mapIsEmpty!11407 mapRes!11406))

(declare-fun e!1345802 () Bool)

(assert (=> d!642483 (and e!1345810 e!1345802 e!1345817)))

(declare-fun b!2114751 () Bool)

(declare-fun e!1345805 () Bool)

(declare-fun lt!793371 () MutLongMap!2373)

(assert (=> b!2114751 (= e!1345805 (and e!1345812 ((_ is LongMap!2373) lt!793371)))))

(assert (=> b!2114751 (= lt!793371 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793367)))))))

(declare-fun setNonEmpty!14143 () Bool)

(assert (=> setNonEmpty!14143 (= setRes!14143 true)))

(declare-fun setElem!14143 () Context!2410)

(declare-fun setRest!14143 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14143 (= (z!5673 (h!28951 (_2!13370 (_1!13371 lt!793367)))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14143 true) setRest!14143))))

(declare-fun b!2114759 () Bool)

(declare-fun e!1345809 () Bool)

(assert (=> b!2114759 (= e!1345809 e!1345815)))

(declare-fun b!2114760 () Bool)

(assert (=> b!2114760 (= e!1345807 e!1345808)))

(declare-fun b!2114761 () Bool)

(assert (=> b!2114761 (= e!1345811 e!1345813)))

(declare-fun b!2114762 () Bool)

(assert (=> b!2114762 (= e!1345802 e!1345809)))

(declare-fun b!2114763 () Bool)

(assert (=> b!2114763 (= e!1345814 e!1345805)))

(declare-fun b!2114764 () Bool)

(assert (=> b!2114764 (= e!1345803 setRes!14143)))

(declare-fun condSetEmpty!14143 () Bool)

(assert (=> b!2114764 (= condSetEmpty!14143 (= (z!5673 (h!28951 (_2!13370 (_1!13371 lt!793367)))) ((as const (Array Context!2410 Bool)) false)))))

(assert (= (and b!2114764 condSetEmpty!14143) setIsEmpty!14143))

(assert (= (and b!2114764 (not condSetEmpty!14143)) setNonEmpty!14143))

(assert (= b!2114755 b!2114764))

(assert (= (and d!642483 ((_ is Cons!23550) (_2!13370 (_1!13371 lt!793367)))) b!2114755))

(assert (= (and b!2114758 condMapEmpty!11407) mapIsEmpty!11407))

(assert (= (and b!2114758 (not condMapEmpty!11407)) mapNonEmpty!11407))

(assert (= b!2114752 b!2114758))

(assert (= b!2114761 b!2114752))

(assert (= b!2114757 b!2114761))

(assert (= (and b!2114750 ((_ is LongMap!2374) (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793367)))))) b!2114757))

(assert (= b!2114759 b!2114750))

(assert (= (and b!2114762 ((_ is HashMap!2287) (cache!2668 (_2!13371 lt!793367)))) b!2114759))

(assert (= d!642483 b!2114762))

(assert (= (and b!2114756 condMapEmpty!11406) mapIsEmpty!11406))

(assert (= (and b!2114756 (not condMapEmpty!11406)) mapNonEmpty!11406))

(assert (= b!2114760 b!2114756))

(assert (= b!2114754 b!2114760))

(assert (= b!2114753 b!2114754))

(assert (= (and b!2114751 ((_ is LongMap!2373) (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793367)))))) b!2114753))

(assert (= b!2114763 b!2114751))

(assert (= (and b!2114749 ((_ is HashMap!2288) (cache!2669 (_3!1852 lt!793367)))) b!2114763))

(assert (= d!642483 b!2114749))

(assert (=> b!2114763 (< (dynLambda!11280 order!14509 (defaultValue!2450 (cache!2669 (_3!1852 lt!793367)))) (dynLambda!11281 order!14511 lambda!78228))))

(assert (=> b!2114752 (< (dynLambda!11282 order!14513 (defaultEntry!2739 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793367)))))))) (dynLambda!11281 order!14511 lambda!78228))))

(assert (=> b!2114760 (< (dynLambda!11283 order!14515 (defaultEntry!2738 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793367)))))))) (dynLambda!11281 order!14511 lambda!78228))))

(assert (=> b!2114759 (< (dynLambda!11284 order!14517 (defaultValue!2449 (cache!2668 (_2!13371 lt!793367)))) (dynLambda!11281 order!14511 lambda!78228))))

(declare-fun m!2570507 () Bool)

(assert (=> mapNonEmpty!11406 m!2570507))

(declare-fun m!2570509 () Bool)

(assert (=> mapNonEmpty!11407 m!2570509))

(declare-fun lambda!78229 () Int)

(assert (=> d!642483 (not (= lambda!78229 lambda!78228))))

(assert (=> bs!441154 (= lambda!78229 lambda!78201)))

(assert (=> bs!441155 (not (= lambda!78229 lambda!78218))))

(assert (=> bs!441156 (= lambda!78229 lambda!78220)))

(assert (=> bs!441157 (not (= lambda!78229 lambda!78216))))

(assert (=> bs!441158 (not (= lambda!78229 lambda!78217))))

(assert (=> bs!441159 (not (= lambda!78229 lambda!78219))))

(assert (=> bs!441160 (not (= lambda!78229 lambda!78200))))

(assert (=> d!642483 true))

(declare-fun b!2114745 () Bool)

(declare-fun e!1345800 () Int)

(declare-fun lt!793365 () Int)

(assert (=> b!2114745 (= e!1345800 (- lt!793365 1))))

(declare-fun b!2114746 () Bool)

(assert (=> b!2114746 (= e!1345800 (- 1))))

(declare-fun b!2114747 () Bool)

(declare-fun e!1345801 () tuple2!23040)

(declare-fun call!128527 () tuple2!23040)

(assert (=> b!2114747 (= e!1345801 call!128527)))

(declare-fun b!2114748 () Bool)

(assert (=> b!2114748 (= e!1345801 call!128527)))

(declare-fun lt!793366 () Int)

(declare-fun c!339272 () Bool)

(declare-fun bm!128522 () Bool)

(assert (=> bm!128522 (= call!128527 (splitAt!10 input!6660 (ite c!339272 0 lt!793366)))))

(declare-fun lt!793364 () tuple4!932)

(assert (=> d!642483 (= (++!6311 (list!9499 (_1!13374 (_1!13376 lt!793364))) (list!9499 (_2!13374 (_1!13376 lt!793364)))) (list!9499 input!6660))))

(declare-fun lt!793370 () Int)

(assert (=> d!642483 (= lt!793364 (tuple4!933 e!1345801 (_2!13371 lt!793367) (_3!1852 lt!793367) (_2!13377 (fillUpCache!2 (_2!13370 (_1!13371 lt!793367)) totalInput!1306 lt!793370 (_1!13370 (_1!13371 lt!793367)) 0 cacheFurthestNullable!141))))))

(assert (=> d!642483 (= c!339272 (< lt!793366 0))))

(declare-fun lt!793369 () Unit!37536)

(declare-fun Unit!37543 () Unit!37536)

(assert (=> d!642483 (= lt!793369 Unit!37543)))

(assert (=> d!642483 (forall!4842 (_2!13370 (_1!13371 lt!793367)) lambda!78229)))

(declare-fun lt!793368 () Unit!37536)

(declare-fun Unit!37544 () Unit!37536)

(assert (=> d!642483 (= lt!793368 Unit!37544)))

(assert (=> d!642483 (forall!4842 (_2!13370 (_1!13371 lt!793367)) lambda!78228)))

(assert (=> d!642483 (= lt!793366 (+ (- (_1!13370 (_1!13371 lt!793367)) lt!793365) 1))))

(assert (=> d!642483 (= lt!793367 (furthestNullablePositionStackMem!2 lt!793219 lt!793365 totalInput!1306 lt!793370 e!1345800 Nil!23550 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(declare-fun c!339271 () Bool)

(assert (=> d!642483 (= c!339271 (nullableZipper!49 lt!793219))))

(assert (=> d!642483 (= lt!793365 (- lt!793370 (size!18390 input!6660)))))

(assert (=> d!642483 (= lt!793370 (size!18390 totalInput!1306))))

(assert (=> d!642483 (isSuffix!600 (list!9499 input!6660) (list!9499 totalInput!1306))))

(assert (=> d!642483 (= (findLongestMatchZipperSequenceV3Mem!3 lt!793219 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141) lt!793364)))

(assert (= (and d!642483 c!339271) b!2114745))

(assert (= (and d!642483 (not c!339271)) b!2114746))

(assert (= (and d!642483 c!339272) b!2114747))

(assert (= (and d!642483 (not c!339272)) b!2114748))

(assert (= (or b!2114747 b!2114748) bm!128522))

(declare-fun m!2570511 () Bool)

(assert (=> bm!128522 m!2570511))

(assert (=> d!642483 m!2570271))

(assert (=> d!642483 m!2570253))

(declare-fun m!2570513 () Bool)

(assert (=> d!642483 m!2570513))

(declare-fun m!2570515 () Bool)

(assert (=> d!642483 m!2570515))

(assert (=> d!642483 m!2570257))

(declare-fun m!2570517 () Bool)

(assert (=> d!642483 m!2570517))

(declare-fun m!2570519 () Bool)

(assert (=> d!642483 m!2570519))

(assert (=> d!642483 m!2570257))

(assert (=> d!642483 m!2570253))

(assert (=> d!642483 m!2570443))

(assert (=> d!642483 m!2570275))

(declare-fun m!2570521 () Bool)

(assert (=> d!642483 m!2570521))

(declare-fun m!2570523 () Bool)

(assert (=> d!642483 m!2570523))

(assert (=> d!642483 m!2570279))

(assert (=> d!642483 m!2570521))

(assert (=> d!642483 m!2570523))

(declare-fun m!2570525 () Bool)

(assert (=> d!642483 m!2570525))

(assert (=> b!2114514 d!642483))

(declare-fun d!642485 () Bool)

(declare-fun c!339275 () Bool)

(assert (=> d!642485 (= c!339275 ((_ is Nil!23548) lt!793223))))

(declare-fun e!1345820 () Int)

(assert (=> d!642485 (= (sizeTr!95 lt!793223 0) e!1345820)))

(declare-fun b!2114769 () Bool)

(assert (=> b!2114769 (= e!1345820 0)))

(declare-fun b!2114770 () Bool)

(assert (=> b!2114770 (= e!1345820 (sizeTr!95 (t!196141 lt!793223) (+ 0 1)))))

(assert (= (and d!642485 c!339275) b!2114769))

(assert (= (and d!642485 (not c!339275)) b!2114770))

(declare-fun m!2570527 () Bool)

(assert (=> b!2114770 m!2570527))

(assert (=> b!2114514 d!642485))

(declare-fun d!642487 () Bool)

(assert (=> d!642487 (= (list!9499 (_2!13374 lt!793214)) (list!9500 (c!339230 (_2!13374 lt!793214))))))

(declare-fun bs!441161 () Bool)

(assert (= bs!441161 d!642487))

(declare-fun m!2570529 () Bool)

(assert (=> bs!441161 m!2570529))

(assert (=> b!2114513 d!642487))

(declare-fun d!642489 () Bool)

(assert (=> d!642489 (= (valid!1872 cacheUp!1110) (validCacheMapUp!236 (cache!2668 cacheUp!1110)))))

(declare-fun bs!441162 () Bool)

(assert (= bs!441162 d!642489))

(assert (=> bs!441162 m!2570345))

(assert (=> b!2114523 d!642489))

(declare-fun d!642491 () Bool)

(declare-fun c!339276 () Bool)

(assert (=> d!642491 (= c!339276 ((_ is Node!7776) (c!339230 (totalInput!2836 cacheFurthestNullable!141))))))

(declare-fun e!1345821 () Bool)

(assert (=> d!642491 (= (inv!31123 (c!339230 (totalInput!2836 cacheFurthestNullable!141))) e!1345821)))

(declare-fun b!2114771 () Bool)

(assert (=> b!2114771 (= e!1345821 (inv!31128 (c!339230 (totalInput!2836 cacheFurthestNullable!141))))))

(declare-fun b!2114772 () Bool)

(declare-fun e!1345822 () Bool)

(assert (=> b!2114772 (= e!1345821 e!1345822)))

(declare-fun res!917774 () Bool)

(assert (=> b!2114772 (= res!917774 (not ((_ is Leaf!11361) (c!339230 (totalInput!2836 cacheFurthestNullable!141)))))))

(assert (=> b!2114772 (=> res!917774 e!1345822)))

(declare-fun b!2114773 () Bool)

(assert (=> b!2114773 (= e!1345822 (inv!31129 (c!339230 (totalInput!2836 cacheFurthestNullable!141))))))

(assert (= (and d!642491 c!339276) b!2114771))

(assert (= (and d!642491 (not c!339276)) b!2114772))

(assert (= (and b!2114772 (not res!917774)) b!2114773))

(declare-fun m!2570531 () Bool)

(assert (=> b!2114771 m!2570531))

(declare-fun m!2570533 () Bool)

(assert (=> b!2114773 m!2570533))

(assert (=> b!2114486 d!642491))

(declare-fun d!642493 () Bool)

(assert (=> d!642493 (= (valid!1871 cacheFurthestNullable!141) (validCacheMapFurthestNullable!86 (cache!2670 cacheFurthestNullable!141) (totalInput!2836 cacheFurthestNullable!141)))))

(declare-fun bs!441163 () Bool)

(assert (= bs!441163 d!642493))

(assert (=> bs!441163 m!2570343))

(assert (=> b!2114504 d!642493))

(declare-fun d!642495 () Bool)

(assert (=> d!642495 (= (array_inv!2607 (_keys!2672 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))))) (bvsge (size!18386 (_keys!2672 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))))) #b00000000000000000000000000000000))))

(assert (=> b!2114522 d!642495))

(declare-fun d!642497 () Bool)

(assert (=> d!642497 (= (array_inv!2610 (_values!2655 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))))) (bvsge (size!18389 (_values!2655 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))))) #b00000000000000000000000000000000))))

(assert (=> b!2114522 d!642497))

(declare-fun d!642499 () Bool)

(assert (=> d!642499 (= (valid!1870 cacheDown!1229) (validCacheMapDown!234 (cache!2669 cacheDown!1229)))))

(declare-fun bs!441164 () Bool)

(assert (= bs!441164 d!642499))

(assert (=> bs!441164 m!2570357))

(assert (=> b!2114485 d!642499))

(declare-fun d!642501 () Bool)

(assert (=> d!642501 (= (inv!31124 (totalInput!2836 cacheFurthestNullable!141)) (isBalanced!2440 (c!339230 (totalInput!2836 cacheFurthestNullable!141))))))

(declare-fun bs!441165 () Bool)

(assert (= bs!441165 d!642501))

(declare-fun m!2570535 () Bool)

(assert (=> bs!441165 m!2570535))

(assert (=> b!2114503 d!642501))

(declare-fun d!642503 () Bool)

(assert (=> d!642503 (= (array_inv!2607 (_keys!2671 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110))))))) (bvsge (size!18386 (_keys!2671 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2114484 d!642503))

(declare-fun d!642505 () Bool)

(assert (=> d!642505 (= (array_inv!2608 (_values!2654 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110))))))) (bvsge (size!18388 (_values!2654 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2114484 d!642505))

(declare-fun d!642507 () Bool)

(declare-fun e!1345825 () Bool)

(assert (=> d!642507 e!1345825))

(declare-fun res!917779 () Bool)

(assert (=> d!642507 (=> (not res!917779) (not e!1345825))))

(declare-fun lt!793378 () tuple2!23040)

(assert (=> d!642507 (= res!917779 (isBalanced!2440 (c!339230 (_1!13374 lt!793378))))))

(declare-datatypes ((tuple2!23046 0))(
  ( (tuple2!23047 (_1!13379 Conc!7776) (_2!13379 Conc!7776)) )
))
(declare-fun lt!793377 () tuple2!23046)

(assert (=> d!642507 (= lt!793378 (tuple2!23041 (BalanceConc!15315 (_1!13379 lt!793377)) (BalanceConc!15315 (_2!13379 lt!793377))))))

(declare-fun splitAt!11 (Conc!7776 Int) tuple2!23046)

(assert (=> d!642507 (= lt!793377 (splitAt!11 (c!339230 input!6660) (ite c!339227 0 lt!793216)))))

(assert (=> d!642507 (isBalanced!2440 (c!339230 input!6660))))

(assert (=> d!642507 (= (splitAt!10 input!6660 (ite c!339227 0 lt!793216)) lt!793378)))

(declare-fun b!2114778 () Bool)

(declare-fun res!917780 () Bool)

(assert (=> b!2114778 (=> (not res!917780) (not e!1345825))))

(assert (=> b!2114778 (= res!917780 (isBalanced!2440 (c!339230 (_2!13374 lt!793378))))))

(declare-fun b!2114779 () Bool)

(declare-fun splitAtIndex!19 (List!23632 Int) tuple2!23042)

(assert (=> b!2114779 (= e!1345825 (= (tuple2!23043 (list!9499 (_1!13374 lt!793378)) (list!9499 (_2!13374 lt!793378))) (splitAtIndex!19 (list!9499 input!6660) (ite c!339227 0 lt!793216))))))

(assert (= (and d!642507 res!917779) b!2114778))

(assert (= (and b!2114778 res!917780) b!2114779))

(declare-fun m!2570537 () Bool)

(assert (=> d!642507 m!2570537))

(declare-fun m!2570539 () Bool)

(assert (=> d!642507 m!2570539))

(assert (=> d!642507 m!2570353))

(declare-fun m!2570541 () Bool)

(assert (=> b!2114778 m!2570541))

(declare-fun m!2570543 () Bool)

(assert (=> b!2114779 m!2570543))

(declare-fun m!2570545 () Bool)

(assert (=> b!2114779 m!2570545))

(assert (=> b!2114779 m!2570257))

(assert (=> b!2114779 m!2570257))

(declare-fun m!2570547 () Bool)

(assert (=> b!2114779 m!2570547))

(assert (=> bm!128498 d!642507))

(declare-fun e!1345831 () Bool)

(assert (=> b!2114520 (= tp!645080 e!1345831)))

(declare-fun setIsEmpty!14146 () Bool)

(declare-fun setRes!14146 () Bool)

(assert (=> setIsEmpty!14146 setRes!14146))

(declare-fun b!2114787 () Bool)

(declare-fun e!1345830 () Bool)

(declare-fun tp!645090 () Bool)

(assert (=> b!2114787 (= e!1345830 tp!645090)))

(declare-fun b!2114786 () Bool)

(declare-fun tp!645091 () Bool)

(assert (=> b!2114786 (= e!1345831 (and setRes!14146 tp!645091))))

(declare-fun condSetEmpty!14146 () Bool)

(assert (=> b!2114786 (= condSetEmpty!14146 (= (_1!13372 (_1!13373 (h!28952 mapDefault!11396))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setElem!14146 () Context!2410)

(declare-fun tp!645089 () Bool)

(declare-fun setNonEmpty!14146 () Bool)

(declare-fun inv!31130 (Context!2410) Bool)

(assert (=> setNonEmpty!14146 (= setRes!14146 (and tp!645089 (inv!31130 setElem!14146) e!1345830))))

(declare-fun setRest!14146 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14146 (= (_1!13372 (_1!13373 (h!28952 mapDefault!11396))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14146 true) setRest!14146))))

(assert (= (and b!2114786 condSetEmpty!14146) setIsEmpty!14146))

(assert (= (and b!2114786 (not condSetEmpty!14146)) setNonEmpty!14146))

(assert (= setNonEmpty!14146 b!2114787))

(assert (= (and b!2114520 ((_ is Cons!23551) mapDefault!11396)) b!2114786))

(declare-fun m!2570549 () Bool)

(assert (=> setNonEmpty!14146 m!2570549))

(declare-fun b!2114792 () Bool)

(declare-fun e!1345834 () Bool)

(declare-fun setRes!14149 () Bool)

(assert (=> b!2114792 (= e!1345834 setRes!14149)))

(declare-fun condSetEmpty!14149 () Bool)

(assert (=> b!2114792 (= condSetEmpty!14149 (= (_2!13369 (h!28950 mapDefault!11402)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14149 () Bool)

(assert (=> setIsEmpty!14149 setRes!14149))

(declare-fun setNonEmpty!14149 () Bool)

(assert (=> setNonEmpty!14149 (= setRes!14149 true)))

(declare-fun setElem!14149 () Context!2410)

(declare-fun setRest!14149 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14149 (= (_2!13369 (h!28950 mapDefault!11402)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14149 true) setRest!14149))))

(assert (=> b!2114570 e!1345834))

(assert (= (and b!2114792 condSetEmpty!14149) setIsEmpty!14149))

(assert (= (and b!2114792 (not condSetEmpty!14149)) setNonEmpty!14149))

(assert (= (and b!2114570 ((_ is Cons!23549) mapDefault!11402)) b!2114792))

(declare-fun b!2114801 () Bool)

(declare-fun tp!645100 () Bool)

(declare-fun tp!645099 () Bool)

(declare-fun e!1345840 () Bool)

(assert (=> b!2114801 (= e!1345840 (and (inv!31123 (left!18256 (c!339230 input!6660))) tp!645099 (inv!31123 (right!18586 (c!339230 input!6660))) tp!645100))))

(declare-fun b!2114803 () Bool)

(declare-fun e!1345839 () Bool)

(declare-fun tp!645098 () Bool)

(assert (=> b!2114803 (= e!1345839 tp!645098)))

(declare-fun b!2114802 () Bool)

(declare-fun inv!31131 (IArray!15557) Bool)

(assert (=> b!2114802 (= e!1345840 (and (inv!31131 (xs!10718 (c!339230 input!6660))) e!1345839))))

(assert (=> b!2114482 (= tp!645065 (and (inv!31123 (c!339230 input!6660)) e!1345840))))

(assert (= (and b!2114482 ((_ is Node!7776) (c!339230 input!6660))) b!2114801))

(assert (= b!2114802 b!2114803))

(assert (= (and b!2114482 ((_ is Leaf!11361) (c!339230 input!6660))) b!2114802))

(declare-fun m!2570551 () Bool)

(assert (=> b!2114801 m!2570551))

(declare-fun m!2570553 () Bool)

(assert (=> b!2114801 m!2570553))

(declare-fun m!2570555 () Bool)

(assert (=> b!2114802 m!2570555))

(assert (=> b!2114482 m!2570259))

(declare-fun e!1345847 () Bool)

(assert (=> b!2114518 (= tp!645069 e!1345847)))

(declare-fun b!2114812 () Bool)

(declare-fun setRes!14152 () Bool)

(declare-fun tp!645112 () Bool)

(declare-fun e!1345848 () Bool)

(assert (=> b!2114812 (= e!1345847 (and (inv!31130 (_1!13368 (_1!13369 (h!28950 mapDefault!11395)))) e!1345848 tp_is_empty!9459 setRes!14152 tp!645112))))

(declare-fun condSetEmpty!14152 () Bool)

(assert (=> b!2114812 (= condSetEmpty!14152 (= (_2!13369 (h!28950 mapDefault!11395)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun tp!645111 () Bool)

(declare-fun e!1345849 () Bool)

(declare-fun setElem!14152 () Context!2410)

(declare-fun setNonEmpty!14152 () Bool)

(assert (=> setNonEmpty!14152 (= setRes!14152 (and tp!645111 (inv!31130 setElem!14152) e!1345849))))

(declare-fun setRest!14152 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14152 (= (_2!13369 (h!28950 mapDefault!11395)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14152 true) setRest!14152))))

(declare-fun b!2114813 () Bool)

(declare-fun tp!645110 () Bool)

(assert (=> b!2114813 (= e!1345849 tp!645110)))

(declare-fun setIsEmpty!14152 () Bool)

(assert (=> setIsEmpty!14152 setRes!14152))

(declare-fun b!2114814 () Bool)

(declare-fun tp!645109 () Bool)

(assert (=> b!2114814 (= e!1345848 tp!645109)))

(assert (= b!2114812 b!2114814))

(assert (= (and b!2114812 condSetEmpty!14152) setIsEmpty!14152))

(assert (= (and b!2114812 (not condSetEmpty!14152)) setNonEmpty!14152))

(assert (= setNonEmpty!14152 b!2114813))

(assert (= (and b!2114518 ((_ is Cons!23549) mapDefault!11395)) b!2114812))

(declare-fun m!2570557 () Bool)

(assert (=> b!2114812 m!2570557))

(declare-fun m!2570559 () Bool)

(assert (=> setNonEmpty!14152 m!2570559))

(declare-fun b!2114819 () Bool)

(declare-fun e!1345852 () Bool)

(declare-fun setRes!14155 () Bool)

(assert (=> b!2114819 (= e!1345852 setRes!14155)))

(declare-fun condSetEmpty!14155 () Bool)

(assert (=> b!2114819 (= condSetEmpty!14155 (= (_2!13367 (h!28948 mapDefault!11403)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14155 () Bool)

(assert (=> setIsEmpty!14155 setRes!14155))

(declare-fun setNonEmpty!14155 () Bool)

(assert (=> setNonEmpty!14155 (= setRes!14155 true)))

(declare-fun setElem!14155 () Context!2410)

(declare-fun setRest!14155 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14155 (= (_2!13367 (h!28948 mapDefault!11403)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14155 true) setRest!14155))))

(assert (=> b!2114568 e!1345852))

(assert (= (and b!2114819 condSetEmpty!14155) setIsEmpty!14155))

(assert (= (and b!2114819 (not condSetEmpty!14155)) setNonEmpty!14155))

(assert (= (and b!2114568 ((_ is Cons!23547) mapDefault!11403)) b!2114819))

(declare-fun b!2114833 () Bool)

(declare-fun e!1345855 () Bool)

(declare-fun tp!645125 () Bool)

(declare-fun tp!645123 () Bool)

(assert (=> b!2114833 (= e!1345855 (and tp!645125 tp!645123))))

(declare-fun b!2114831 () Bool)

(declare-fun tp!645127 () Bool)

(declare-fun tp!645124 () Bool)

(assert (=> b!2114831 (= e!1345855 (and tp!645127 tp!645124))))

(declare-fun b!2114830 () Bool)

(assert (=> b!2114830 (= e!1345855 tp_is_empty!9459)))

(assert (=> b!2114517 (= tp!645070 e!1345855)))

(declare-fun b!2114832 () Bool)

(declare-fun tp!645126 () Bool)

(assert (=> b!2114832 (= e!1345855 tp!645126)))

(assert (= (and b!2114517 ((_ is ElementMatch!5635) (regOne!11783 r!15373))) b!2114830))

(assert (= (and b!2114517 ((_ is Concat!9937) (regOne!11783 r!15373))) b!2114831))

(assert (= (and b!2114517 ((_ is Star!5635) (regOne!11783 r!15373))) b!2114832))

(assert (= (and b!2114517 ((_ is Union!5635) (regOne!11783 r!15373))) b!2114833))

(declare-fun b!2114837 () Bool)

(declare-fun e!1345856 () Bool)

(declare-fun tp!645130 () Bool)

(declare-fun tp!645128 () Bool)

(assert (=> b!2114837 (= e!1345856 (and tp!645130 tp!645128))))

(declare-fun b!2114835 () Bool)

(declare-fun tp!645132 () Bool)

(declare-fun tp!645129 () Bool)

(assert (=> b!2114835 (= e!1345856 (and tp!645132 tp!645129))))

(declare-fun b!2114834 () Bool)

(assert (=> b!2114834 (= e!1345856 tp_is_empty!9459)))

(assert (=> b!2114517 (= tp!645059 e!1345856)))

(declare-fun b!2114836 () Bool)

(declare-fun tp!645131 () Bool)

(assert (=> b!2114836 (= e!1345856 tp!645131)))

(assert (= (and b!2114517 ((_ is ElementMatch!5635) (regTwo!11783 r!15373))) b!2114834))

(assert (= (and b!2114517 ((_ is Concat!9937) (regTwo!11783 r!15373))) b!2114835))

(assert (= (and b!2114517 ((_ is Star!5635) (regTwo!11783 r!15373))) b!2114836))

(assert (= (and b!2114517 ((_ is Union!5635) (regTwo!11783 r!15373))) b!2114837))

(declare-fun setNonEmpty!14158 () Bool)

(declare-fun setRes!14158 () Bool)

(assert (=> setNonEmpty!14158 (= setRes!14158 true)))

(declare-fun setElem!14158 () Context!2410)

(declare-fun setRest!14158 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14158 (= (z!5673 (h!28951 (t!196143 (_2!13370 (_1!13371 lt!793211))))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14158 true) setRest!14158))))

(declare-fun setIsEmpty!14158 () Bool)

(assert (=> setIsEmpty!14158 setRes!14158))

(declare-fun b!2114845 () Bool)

(declare-fun e!1345862 () Bool)

(assert (=> b!2114845 (= e!1345862 setRes!14158)))

(declare-fun condSetEmpty!14158 () Bool)

(assert (=> b!2114845 (= condSetEmpty!14158 (= (z!5673 (h!28951 (t!196143 (_2!13370 (_1!13371 lt!793211))))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun e!1345861 () Bool)

(assert (=> b!2114567 e!1345861))

(declare-fun b!2114844 () Bool)

(assert (=> b!2114844 (= e!1345861 e!1345862)))

(assert (= (and b!2114845 condSetEmpty!14158) setIsEmpty!14158))

(assert (= (and b!2114845 (not condSetEmpty!14158)) setNonEmpty!14158))

(assert (= b!2114844 b!2114845))

(assert (= (and b!2114567 ((_ is Cons!23550) (t!196143 (_2!13370 (_1!13371 lt!793211))))) b!2114844))

(declare-fun b!2114860 () Bool)

(declare-fun e!1345875 () Bool)

(declare-fun tp!645156 () Bool)

(assert (=> b!2114860 (= e!1345875 tp!645156)))

(declare-fun mapNonEmpty!11410 () Bool)

(declare-fun mapRes!11410 () Bool)

(declare-fun tp!645151 () Bool)

(declare-fun e!1345879 () Bool)

(assert (=> mapNonEmpty!11410 (= mapRes!11410 (and tp!645151 e!1345879))))

(declare-fun mapKey!11410 () (_ BitVec 32))

(declare-fun mapRest!11410 () (Array (_ BitVec 32) List!23633))

(declare-fun mapValue!11410 () List!23633)

(assert (=> mapNonEmpty!11410 (= mapRest!11396 (store mapRest!11410 mapKey!11410 mapValue!11410))))

(declare-fun setIsEmpty!14163 () Bool)

(declare-fun setRes!14164 () Bool)

(assert (=> setIsEmpty!14163 setRes!14164))

(declare-fun setIsEmpty!14164 () Bool)

(declare-fun setRes!14163 () Bool)

(assert (=> setIsEmpty!14164 setRes!14163))

(declare-fun b!2114861 () Bool)

(declare-fun e!1345880 () Bool)

(declare-fun tp!645158 () Bool)

(assert (=> b!2114861 (= e!1345880 tp!645158)))

(declare-fun tp!645159 () Bool)

(declare-fun setNonEmpty!14163 () Bool)

(declare-fun setElem!14164 () Context!2410)

(assert (=> setNonEmpty!14163 (= setRes!14164 (and tp!645159 (inv!31130 setElem!14164) e!1345880))))

(declare-fun mapDefault!11410 () List!23633)

(declare-fun setRest!14163 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14163 (= (_2!13369 (h!28950 mapDefault!11410)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14164 true) setRest!14163))))

(declare-fun b!2114862 () Bool)

(declare-fun e!1345876 () Bool)

(declare-fun tp!645157 () Bool)

(assert (=> b!2114862 (= e!1345876 (and (inv!31130 (_1!13368 (_1!13369 (h!28950 mapDefault!11410)))) e!1345875 tp_is_empty!9459 setRes!14164 tp!645157))))

(declare-fun condSetEmpty!14163 () Bool)

(assert (=> b!2114862 (= condSetEmpty!14163 (= (_2!13369 (h!28950 mapDefault!11410)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun tp!645155 () Bool)

(declare-fun setNonEmpty!14164 () Bool)

(declare-fun setElem!14163 () Context!2410)

(declare-fun e!1345878 () Bool)

(assert (=> setNonEmpty!14164 (= setRes!14163 (and tp!645155 (inv!31130 setElem!14163) e!1345878))))

(declare-fun setRest!14164 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14164 (= (_2!13369 (h!28950 mapValue!11410)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14163 true) setRest!14164))))

(declare-fun condMapEmpty!11410 () Bool)

(assert (=> mapNonEmpty!11395 (= condMapEmpty!11410 (= mapRest!11396 ((as const (Array (_ BitVec 32) List!23633)) mapDefault!11410)))))

(assert (=> mapNonEmpty!11395 (= tp!645067 (and e!1345876 mapRes!11410))))

(declare-fun mapIsEmpty!11410 () Bool)

(assert (=> mapIsEmpty!11410 mapRes!11410))

(declare-fun b!2114863 () Bool)

(declare-fun e!1345877 () Bool)

(declare-fun tp!645153 () Bool)

(assert (=> b!2114863 (= e!1345877 tp!645153)))

(declare-fun b!2114864 () Bool)

(declare-fun tp!645152 () Bool)

(assert (=> b!2114864 (= e!1345878 tp!645152)))

(declare-fun tp!645154 () Bool)

(declare-fun b!2114865 () Bool)

(assert (=> b!2114865 (= e!1345879 (and (inv!31130 (_1!13368 (_1!13369 (h!28950 mapValue!11410)))) e!1345877 tp_is_empty!9459 setRes!14163 tp!645154))))

(declare-fun condSetEmpty!14164 () Bool)

(assert (=> b!2114865 (= condSetEmpty!14164 (= (_2!13369 (h!28950 mapValue!11410)) ((as const (Array Context!2410 Bool)) false)))))

(assert (= (and mapNonEmpty!11395 condMapEmpty!11410) mapIsEmpty!11410))

(assert (= (and mapNonEmpty!11395 (not condMapEmpty!11410)) mapNonEmpty!11410))

(assert (= b!2114865 b!2114863))

(assert (= (and b!2114865 condSetEmpty!14164) setIsEmpty!14164))

(assert (= (and b!2114865 (not condSetEmpty!14164)) setNonEmpty!14164))

(assert (= setNonEmpty!14164 b!2114864))

(assert (= (and mapNonEmpty!11410 ((_ is Cons!23549) mapValue!11410)) b!2114865))

(assert (= b!2114862 b!2114860))

(assert (= (and b!2114862 condSetEmpty!14163) setIsEmpty!14163))

(assert (= (and b!2114862 (not condSetEmpty!14163)) setNonEmpty!14163))

(assert (= setNonEmpty!14163 b!2114861))

(assert (= (and mapNonEmpty!11395 ((_ is Cons!23549) mapDefault!11410)) b!2114862))

(declare-fun m!2570561 () Bool)

(assert (=> b!2114862 m!2570561))

(declare-fun m!2570563 () Bool)

(assert (=> setNonEmpty!14163 m!2570563))

(declare-fun m!2570565 () Bool)

(assert (=> setNonEmpty!14164 m!2570565))

(declare-fun m!2570567 () Bool)

(assert (=> mapNonEmpty!11410 m!2570567))

(declare-fun m!2570569 () Bool)

(assert (=> b!2114865 m!2570569))

(declare-fun e!1345881 () Bool)

(assert (=> mapNonEmpty!11395 (= tp!645078 e!1345881)))

(declare-fun setRes!14165 () Bool)

(declare-fun e!1345882 () Bool)

(declare-fun b!2114866 () Bool)

(declare-fun tp!645163 () Bool)

(assert (=> b!2114866 (= e!1345881 (and (inv!31130 (_1!13368 (_1!13369 (h!28950 mapValue!11397)))) e!1345882 tp_is_empty!9459 setRes!14165 tp!645163))))

(declare-fun condSetEmpty!14165 () Bool)

(assert (=> b!2114866 (= condSetEmpty!14165 (= (_2!13369 (h!28950 mapValue!11397)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setNonEmpty!14165 () Bool)

(declare-fun tp!645162 () Bool)

(declare-fun setElem!14165 () Context!2410)

(declare-fun e!1345883 () Bool)

(assert (=> setNonEmpty!14165 (= setRes!14165 (and tp!645162 (inv!31130 setElem!14165) e!1345883))))

(declare-fun setRest!14165 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14165 (= (_2!13369 (h!28950 mapValue!11397)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14165 true) setRest!14165))))

(declare-fun b!2114867 () Bool)

(declare-fun tp!645161 () Bool)

(assert (=> b!2114867 (= e!1345883 tp!645161)))

(declare-fun setIsEmpty!14165 () Bool)

(assert (=> setIsEmpty!14165 setRes!14165))

(declare-fun b!2114868 () Bool)

(declare-fun tp!645160 () Bool)

(assert (=> b!2114868 (= e!1345882 tp!645160)))

(assert (= b!2114866 b!2114868))

(assert (= (and b!2114866 condSetEmpty!14165) setIsEmpty!14165))

(assert (= (and b!2114866 (not condSetEmpty!14165)) setNonEmpty!14165))

(assert (= setNonEmpty!14165 b!2114867))

(assert (= (and mapNonEmpty!11395 ((_ is Cons!23549) mapValue!11397)) b!2114866))

(declare-fun m!2570571 () Bool)

(assert (=> b!2114866 m!2570571))

(declare-fun m!2570573 () Bool)

(assert (=> setNonEmpty!14165 m!2570573))

(declare-fun b!2114872 () Bool)

(declare-fun e!1345884 () Bool)

(declare-fun tp!645166 () Bool)

(declare-fun tp!645164 () Bool)

(assert (=> b!2114872 (= e!1345884 (and tp!645166 tp!645164))))

(declare-fun b!2114870 () Bool)

(declare-fun tp!645168 () Bool)

(declare-fun tp!645165 () Bool)

(assert (=> b!2114870 (= e!1345884 (and tp!645168 tp!645165))))

(declare-fun b!2114869 () Bool)

(assert (=> b!2114869 (= e!1345884 tp_is_empty!9459)))

(assert (=> b!2114515 (= tp!645064 e!1345884)))

(declare-fun b!2114871 () Bool)

(declare-fun tp!645167 () Bool)

(assert (=> b!2114871 (= e!1345884 tp!645167)))

(assert (= (and b!2114515 ((_ is ElementMatch!5635) (regOne!11782 r!15373))) b!2114869))

(assert (= (and b!2114515 ((_ is Concat!9937) (regOne!11782 r!15373))) b!2114870))

(assert (= (and b!2114515 ((_ is Star!5635) (regOne!11782 r!15373))) b!2114871))

(assert (= (and b!2114515 ((_ is Union!5635) (regOne!11782 r!15373))) b!2114872))

(declare-fun b!2114876 () Bool)

(declare-fun e!1345885 () Bool)

(declare-fun tp!645171 () Bool)

(declare-fun tp!645169 () Bool)

(assert (=> b!2114876 (= e!1345885 (and tp!645171 tp!645169))))

(declare-fun b!2114874 () Bool)

(declare-fun tp!645173 () Bool)

(declare-fun tp!645170 () Bool)

(assert (=> b!2114874 (= e!1345885 (and tp!645173 tp!645170))))

(declare-fun b!2114873 () Bool)

(assert (=> b!2114873 (= e!1345885 tp_is_empty!9459)))

(assert (=> b!2114515 (= tp!645073 e!1345885)))

(declare-fun b!2114875 () Bool)

(declare-fun tp!645172 () Bool)

(assert (=> b!2114875 (= e!1345885 tp!645172)))

(assert (= (and b!2114515 ((_ is ElementMatch!5635) (regTwo!11782 r!15373))) b!2114873))

(assert (= (and b!2114515 ((_ is Concat!9937) (regTwo!11782 r!15373))) b!2114874))

(assert (= (and b!2114515 ((_ is Star!5635) (regTwo!11782 r!15373))) b!2114875))

(assert (= (and b!2114515 ((_ is Union!5635) (regTwo!11782 r!15373))) b!2114876))

(declare-fun setIsEmpty!14170 () Bool)

(declare-fun setRes!14171 () Bool)

(assert (=> setIsEmpty!14170 setRes!14171))

(declare-fun mapIsEmpty!11413 () Bool)

(declare-fun mapRes!11413 () Bool)

(assert (=> mapIsEmpty!11413 mapRes!11413))

(declare-fun condMapEmpty!11413 () Bool)

(declare-fun mapDefault!11413 () List!23633)

(assert (=> mapNonEmpty!11403 (= condMapEmpty!11413 (= mapRest!11403 ((as const (Array (_ BitVec 32) List!23633)) mapDefault!11413)))))

(declare-fun e!1345890 () Bool)

(assert (=> mapNonEmpty!11403 (and e!1345890 mapRes!11413)))

(declare-fun setIsEmpty!14171 () Bool)

(declare-fun setRes!14170 () Bool)

(assert (=> setIsEmpty!14171 setRes!14170))

(declare-fun setNonEmpty!14170 () Bool)

(assert (=> setNonEmpty!14170 (= setRes!14170 true)))

(declare-fun mapValue!11413 () List!23633)

(declare-fun setElem!14171 () Context!2410)

(declare-fun setRest!14171 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14170 (= (_2!13369 (h!28950 mapValue!11413)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14171 true) setRest!14171))))

(declare-fun b!2114883 () Bool)

(declare-fun e!1345891 () Bool)

(assert (=> b!2114883 (= e!1345891 setRes!14170)))

(declare-fun condSetEmpty!14171 () Bool)

(assert (=> b!2114883 (= condSetEmpty!14171 (= (_2!13369 (h!28950 mapValue!11413)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun b!2114884 () Bool)

(assert (=> b!2114884 (= e!1345890 setRes!14171)))

(declare-fun condSetEmpty!14170 () Bool)

(assert (=> b!2114884 (= condSetEmpty!14170 (= (_2!13369 (h!28950 mapDefault!11413)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setNonEmpty!14171 () Bool)

(assert (=> setNonEmpty!14171 (= setRes!14171 true)))

(declare-fun setElem!14170 () Context!2410)

(declare-fun setRest!14170 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14171 (= (_2!13369 (h!28950 mapDefault!11413)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14170 true) setRest!14170))))

(declare-fun mapNonEmpty!11413 () Bool)

(assert (=> mapNonEmpty!11413 (= mapRes!11413 e!1345891)))

(declare-fun mapKey!11413 () (_ BitVec 32))

(declare-fun mapRest!11413 () (Array (_ BitVec 32) List!23633))

(assert (=> mapNonEmpty!11413 (= mapRest!11403 (store mapRest!11413 mapKey!11413 mapValue!11413))))

(assert (= (and mapNonEmpty!11403 condMapEmpty!11413) mapIsEmpty!11413))

(assert (= (and mapNonEmpty!11403 (not condMapEmpty!11413)) mapNonEmpty!11413))

(assert (= (and b!2114883 condSetEmpty!14171) setIsEmpty!14171))

(assert (= (and b!2114883 (not condSetEmpty!14171)) setNonEmpty!14170))

(assert (= (and mapNonEmpty!11413 ((_ is Cons!23549) mapValue!11413)) b!2114883))

(assert (= (and b!2114884 condSetEmpty!14170) setIsEmpty!14170))

(assert (= (and b!2114884 (not condSetEmpty!14170)) setNonEmpty!14171))

(assert (= (and mapNonEmpty!11403 ((_ is Cons!23549) mapDefault!11413)) b!2114884))

(declare-fun m!2570575 () Bool)

(assert (=> mapNonEmpty!11413 m!2570575))

(declare-fun b!2114885 () Bool)

(declare-fun e!1345892 () Bool)

(declare-fun setRes!14172 () Bool)

(assert (=> b!2114885 (= e!1345892 setRes!14172)))

(declare-fun condSetEmpty!14172 () Bool)

(assert (=> b!2114885 (= condSetEmpty!14172 (= (_2!13369 (h!28950 mapValue!11402)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14172 () Bool)

(assert (=> setIsEmpty!14172 setRes!14172))

(declare-fun setNonEmpty!14172 () Bool)

(assert (=> setNonEmpty!14172 (= setRes!14172 true)))

(declare-fun setElem!14172 () Context!2410)

(declare-fun setRest!14172 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14172 (= (_2!13369 (h!28950 mapValue!11402)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14172 true) setRest!14172))))

(assert (=> mapNonEmpty!11403 e!1345892))

(assert (= (and b!2114885 condSetEmpty!14172) setIsEmpty!14172))

(assert (= (and b!2114885 (not condSetEmpty!14172)) setNonEmpty!14172))

(assert (= (and mapNonEmpty!11403 ((_ is Cons!23549) mapValue!11402)) b!2114885))

(declare-fun b!2114894 () Bool)

(declare-fun e!1345899 () Bool)

(declare-fun tp!645185 () Bool)

(assert (=> b!2114894 (= e!1345899 tp!645185)))

(declare-fun tp!645187 () Bool)

(declare-fun tp!645186 () Bool)

(declare-fun setRes!14175 () Bool)

(declare-fun e!1345900 () Bool)

(declare-fun b!2114895 () Bool)

(declare-fun e!1345901 () Bool)

(assert (=> b!2114895 (= e!1345901 (and tp!645187 (inv!31130 (_2!13366 (_1!13367 (h!28948 mapDefault!11397)))) e!1345900 tp_is_empty!9459 setRes!14175 tp!645186))))

(declare-fun condSetEmpty!14175 () Bool)

(assert (=> b!2114895 (= condSetEmpty!14175 (= (_2!13367 (h!28948 mapDefault!11397)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14175 () Bool)

(assert (=> setIsEmpty!14175 setRes!14175))

(declare-fun b!2114896 () Bool)

(declare-fun tp!645188 () Bool)

(assert (=> b!2114896 (= e!1345900 tp!645188)))

(assert (=> b!2114512 (= tp!645062 e!1345901)))

(declare-fun setElem!14175 () Context!2410)

(declare-fun tp!645184 () Bool)

(declare-fun setNonEmpty!14175 () Bool)

(assert (=> setNonEmpty!14175 (= setRes!14175 (and tp!645184 (inv!31130 setElem!14175) e!1345899))))

(declare-fun setRest!14175 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14175 (= (_2!13367 (h!28948 mapDefault!11397)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14175 true) setRest!14175))))

(assert (= b!2114895 b!2114896))

(assert (= (and b!2114895 condSetEmpty!14175) setIsEmpty!14175))

(assert (= (and b!2114895 (not condSetEmpty!14175)) setNonEmpty!14175))

(assert (= setNonEmpty!14175 b!2114894))

(assert (= (and b!2114512 ((_ is Cons!23547) mapDefault!11397)) b!2114895))

(declare-fun m!2570577 () Bool)

(assert (=> b!2114895 m!2570577))

(declare-fun m!2570579 () Bool)

(assert (=> setNonEmpty!14175 m!2570579))

(declare-fun b!2114900 () Bool)

(declare-fun e!1345902 () Bool)

(declare-fun tp!645191 () Bool)

(declare-fun tp!645189 () Bool)

(assert (=> b!2114900 (= e!1345902 (and tp!645191 tp!645189))))

(declare-fun b!2114898 () Bool)

(declare-fun tp!645193 () Bool)

(declare-fun tp!645190 () Bool)

(assert (=> b!2114898 (= e!1345902 (and tp!645193 tp!645190))))

(declare-fun b!2114897 () Bool)

(assert (=> b!2114897 (= e!1345902 tp_is_empty!9459)))

(assert (=> b!2114495 (= tp!645058 e!1345902)))

(declare-fun b!2114899 () Bool)

(declare-fun tp!645192 () Bool)

(assert (=> b!2114899 (= e!1345902 tp!645192)))

(assert (= (and b!2114495 ((_ is ElementMatch!5635) (reg!5964 r!15373))) b!2114897))

(assert (= (and b!2114495 ((_ is Concat!9937) (reg!5964 r!15373))) b!2114898))

(assert (= (and b!2114495 ((_ is Star!5635) (reg!5964 r!15373))) b!2114899))

(assert (= (and b!2114495 ((_ is Union!5635) (reg!5964 r!15373))) b!2114900))

(declare-fun b!2114901 () Bool)

(declare-fun e!1345903 () Bool)

(declare-fun setRes!14176 () Bool)

(assert (=> b!2114901 (= e!1345903 setRes!14176)))

(declare-fun condSetEmpty!14176 () Bool)

(assert (=> b!2114901 (= condSetEmpty!14176 (= (_2!13369 (h!28950 (zeroValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793211))))))))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14176 () Bool)

(assert (=> setIsEmpty!14176 setRes!14176))

(declare-fun setNonEmpty!14176 () Bool)

(assert (=> setNonEmpty!14176 (= setRes!14176 true)))

(declare-fun setElem!14176 () Context!2410)

(declare-fun setRest!14176 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14176 (= (_2!13369 (h!28950 (zeroValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793211))))))))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14176 true) setRest!14176))))

(assert (=> b!2114564 e!1345903))

(assert (= (and b!2114901 condSetEmpty!14176) setIsEmpty!14176))

(assert (= (and b!2114901 (not condSetEmpty!14176)) setNonEmpty!14176))

(assert (= (and b!2114564 ((_ is Cons!23549) (zeroValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793211))))))))) b!2114901))

(declare-fun b!2114902 () Bool)

(declare-fun e!1345904 () Bool)

(declare-fun setRes!14177 () Bool)

(assert (=> b!2114902 (= e!1345904 setRes!14177)))

(declare-fun condSetEmpty!14177 () Bool)

(assert (=> b!2114902 (= condSetEmpty!14177 (= (_2!13369 (h!28950 (minValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793211))))))))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14177 () Bool)

(assert (=> setIsEmpty!14177 setRes!14177))

(declare-fun setNonEmpty!14177 () Bool)

(assert (=> setNonEmpty!14177 (= setRes!14177 true)))

(declare-fun setElem!14177 () Context!2410)

(declare-fun setRest!14177 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14177 (= (_2!13369 (h!28950 (minValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793211))))))))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14177 true) setRest!14177))))

(assert (=> b!2114564 e!1345904))

(assert (= (and b!2114902 condSetEmpty!14177) setIsEmpty!14177))

(assert (= (and b!2114902 (not condSetEmpty!14177)) setNonEmpty!14177))

(assert (= (and b!2114564 ((_ is Cons!23549) (minValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 (_2!13371 lt!793211))))))))) b!2114902))

(declare-fun mapIsEmpty!11416 () Bool)

(declare-fun mapRes!11416 () Bool)

(assert (=> mapIsEmpty!11416 mapRes!11416))

(declare-fun setRes!14183 () Bool)

(declare-fun tp!645210 () Bool)

(declare-fun e!1345915 () Bool)

(declare-fun setNonEmpty!14182 () Bool)

(declare-fun setElem!14182 () Context!2410)

(assert (=> setNonEmpty!14182 (= setRes!14183 (and tp!645210 (inv!31130 setElem!14182) e!1345915))))

(declare-fun mapDefault!11416 () List!23635)

(declare-fun setRest!14182 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14182 (= (_1!13372 (_1!13373 (h!28952 mapDefault!11416))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14182 true) setRest!14182))))

(declare-fun b!2114913 () Bool)

(declare-fun e!1345916 () Bool)

(declare-fun setRes!14182 () Bool)

(declare-fun tp!645213 () Bool)

(assert (=> b!2114913 (= e!1345916 (and setRes!14182 tp!645213))))

(declare-fun condSetEmpty!14182 () Bool)

(declare-fun mapValue!11416 () List!23635)

(assert (=> b!2114913 (= condSetEmpty!14182 (= (_1!13372 (_1!13373 (h!28952 mapValue!11416))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14182 () Bool)

(assert (=> setIsEmpty!14182 setRes!14183))

(declare-fun mapNonEmpty!11416 () Bool)

(declare-fun tp!645208 () Bool)

(assert (=> mapNonEmpty!11416 (= mapRes!11416 (and tp!645208 e!1345916))))

(declare-fun mapRest!11416 () (Array (_ BitVec 32) List!23635))

(declare-fun mapKey!11416 () (_ BitVec 32))

(assert (=> mapNonEmpty!11416 (= mapRest!11395 (store mapRest!11416 mapKey!11416 mapValue!11416))))

(declare-fun b!2114914 () Bool)

(declare-fun e!1345913 () Bool)

(declare-fun tp!645211 () Bool)

(assert (=> b!2114914 (= e!1345913 tp!645211)))

(declare-fun setElem!14183 () Context!2410)

(declare-fun tp!645209 () Bool)

(declare-fun setNonEmpty!14183 () Bool)

(assert (=> setNonEmpty!14183 (= setRes!14182 (and tp!645209 (inv!31130 setElem!14183) e!1345913))))

(declare-fun setRest!14183 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14183 (= (_1!13372 (_1!13373 (h!28952 mapValue!11416))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14183 true) setRest!14183))))

(declare-fun b!2114915 () Bool)

(declare-fun tp!645214 () Bool)

(assert (=> b!2114915 (= e!1345915 tp!645214)))

(declare-fun setIsEmpty!14183 () Bool)

(assert (=> setIsEmpty!14183 setRes!14182))

(declare-fun b!2114916 () Bool)

(declare-fun e!1345914 () Bool)

(declare-fun tp!645212 () Bool)

(assert (=> b!2114916 (= e!1345914 (and setRes!14183 tp!645212))))

(declare-fun condSetEmpty!14183 () Bool)

(assert (=> b!2114916 (= condSetEmpty!14183 (= (_1!13372 (_1!13373 (h!28952 mapDefault!11416))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun condMapEmpty!11416 () Bool)

(assert (=> mapNonEmpty!11397 (= condMapEmpty!11416 (= mapRest!11395 ((as const (Array (_ BitVec 32) List!23635)) mapDefault!11416)))))

(assert (=> mapNonEmpty!11397 (= tp!645072 (and e!1345914 mapRes!11416))))

(assert (= (and mapNonEmpty!11397 condMapEmpty!11416) mapIsEmpty!11416))

(assert (= (and mapNonEmpty!11397 (not condMapEmpty!11416)) mapNonEmpty!11416))

(assert (= (and b!2114913 condSetEmpty!14182) setIsEmpty!14183))

(assert (= (and b!2114913 (not condSetEmpty!14182)) setNonEmpty!14183))

(assert (= setNonEmpty!14183 b!2114914))

(assert (= (and mapNonEmpty!11416 ((_ is Cons!23551) mapValue!11416)) b!2114913))

(assert (= (and b!2114916 condSetEmpty!14183) setIsEmpty!14182))

(assert (= (and b!2114916 (not condSetEmpty!14183)) setNonEmpty!14182))

(assert (= setNonEmpty!14182 b!2114915))

(assert (= (and mapNonEmpty!11397 ((_ is Cons!23551) mapDefault!11416)) b!2114916))

(declare-fun m!2570581 () Bool)

(assert (=> setNonEmpty!14182 m!2570581))

(declare-fun m!2570583 () Bool)

(assert (=> mapNonEmpty!11416 m!2570583))

(declare-fun m!2570585 () Bool)

(assert (=> setNonEmpty!14183 m!2570585))

(declare-fun e!1345918 () Bool)

(assert (=> mapNonEmpty!11397 (= tp!645055 e!1345918)))

(declare-fun setIsEmpty!14184 () Bool)

(declare-fun setRes!14184 () Bool)

(assert (=> setIsEmpty!14184 setRes!14184))

(declare-fun b!2114918 () Bool)

(declare-fun e!1345917 () Bool)

(declare-fun tp!645216 () Bool)

(assert (=> b!2114918 (= e!1345917 tp!645216)))

(declare-fun b!2114917 () Bool)

(declare-fun tp!645217 () Bool)

(assert (=> b!2114917 (= e!1345918 (and setRes!14184 tp!645217))))

(declare-fun condSetEmpty!14184 () Bool)

(assert (=> b!2114917 (= condSetEmpty!14184 (= (_1!13372 (_1!13373 (h!28952 mapValue!11396))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setElem!14184 () Context!2410)

(declare-fun tp!645215 () Bool)

(declare-fun setNonEmpty!14184 () Bool)

(assert (=> setNonEmpty!14184 (= setRes!14184 (and tp!645215 (inv!31130 setElem!14184) e!1345917))))

(declare-fun setRest!14184 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14184 (= (_1!13372 (_1!13373 (h!28952 mapValue!11396))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14184 true) setRest!14184))))

(assert (= (and b!2114917 condSetEmpty!14184) setIsEmpty!14184))

(assert (= (and b!2114917 (not condSetEmpty!14184)) setNonEmpty!14184))

(assert (= setNonEmpty!14184 b!2114918))

(assert (= (and mapNonEmpty!11397 ((_ is Cons!23551) mapValue!11396)) b!2114917))

(declare-fun m!2570587 () Bool)

(assert (=> setNonEmpty!14184 m!2570587))

(declare-fun mapIsEmpty!11419 () Bool)

(declare-fun mapRes!11419 () Bool)

(assert (=> mapIsEmpty!11419 mapRes!11419))

(declare-fun b!2114933 () Bool)

(declare-fun e!1345932 () Bool)

(declare-fun tp!645248 () Bool)

(assert (=> b!2114933 (= e!1345932 tp!645248)))

(declare-fun condMapEmpty!11419 () Bool)

(declare-fun mapDefault!11419 () List!23631)

(assert (=> mapNonEmpty!11396 (= condMapEmpty!11419 (= mapRest!11397 ((as const (Array (_ BitVec 32) List!23631)) mapDefault!11419)))))

(declare-fun e!1345931 () Bool)

(assert (=> mapNonEmpty!11396 (= tp!645081 (and e!1345931 mapRes!11419))))

(declare-fun mapNonEmpty!11419 () Bool)

(declare-fun tp!645250 () Bool)

(declare-fun e!1345935 () Bool)

(assert (=> mapNonEmpty!11419 (= mapRes!11419 (and tp!645250 e!1345935))))

(declare-fun mapRest!11419 () (Array (_ BitVec 32) List!23631))

(declare-fun mapKey!11419 () (_ BitVec 32))

(declare-fun mapValue!11419 () List!23631)

(assert (=> mapNonEmpty!11419 (= mapRest!11397 (store mapRest!11419 mapKey!11419 mapValue!11419))))

(declare-fun setIsEmpty!14189 () Bool)

(declare-fun setRes!14189 () Bool)

(assert (=> setIsEmpty!14189 setRes!14189))

(declare-fun setRes!14190 () Bool)

(declare-fun setElem!14189 () Context!2410)

(declare-fun tp!645240 () Bool)

(declare-fun setNonEmpty!14189 () Bool)

(assert (=> setNonEmpty!14189 (= setRes!14190 (and tp!645240 (inv!31130 setElem!14189) e!1345932))))

(declare-fun setRest!14189 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14189 (= (_2!13367 (h!28948 mapDefault!11419)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14189 true) setRest!14189))))

(declare-fun b!2114934 () Bool)

(declare-fun e!1345936 () Bool)

(declare-fun tp!645241 () Bool)

(assert (=> b!2114934 (= e!1345936 tp!645241)))

(declare-fun tp!645242 () Bool)

(declare-fun e!1345934 () Bool)

(declare-fun b!2114935 () Bool)

(declare-fun tp!645244 () Bool)

(assert (=> b!2114935 (= e!1345931 (and tp!645242 (inv!31130 (_2!13366 (_1!13367 (h!28948 mapDefault!11419)))) e!1345934 tp_is_empty!9459 setRes!14190 tp!645244))))

(declare-fun condSetEmpty!14189 () Bool)

(assert (=> b!2114935 (= condSetEmpty!14189 (= (_2!13367 (h!28948 mapDefault!11419)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun b!2114936 () Bool)

(declare-fun e!1345933 () Bool)

(declare-fun tp!645246 () Bool)

(assert (=> b!2114936 (= e!1345933 tp!645246)))

(declare-fun setIsEmpty!14190 () Bool)

(assert (=> setIsEmpty!14190 setRes!14190))

(declare-fun setNonEmpty!14190 () Bool)

(declare-fun tp!645247 () Bool)

(declare-fun setElem!14190 () Context!2410)

(assert (=> setNonEmpty!14190 (= setRes!14189 (and tp!645247 (inv!31130 setElem!14190) e!1345936))))

(declare-fun setRest!14190 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14190 (= (_2!13367 (h!28948 mapValue!11419)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14190 true) setRest!14190))))

(declare-fun tp!645243 () Bool)

(declare-fun b!2114937 () Bool)

(declare-fun tp!645249 () Bool)

(assert (=> b!2114937 (= e!1345935 (and tp!645243 (inv!31130 (_2!13366 (_1!13367 (h!28948 mapValue!11419)))) e!1345933 tp_is_empty!9459 setRes!14189 tp!645249))))

(declare-fun condSetEmpty!14190 () Bool)

(assert (=> b!2114937 (= condSetEmpty!14190 (= (_2!13367 (h!28948 mapValue!11419)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun b!2114938 () Bool)

(declare-fun tp!645245 () Bool)

(assert (=> b!2114938 (= e!1345934 tp!645245)))

(assert (= (and mapNonEmpty!11396 condMapEmpty!11419) mapIsEmpty!11419))

(assert (= (and mapNonEmpty!11396 (not condMapEmpty!11419)) mapNonEmpty!11419))

(assert (= b!2114937 b!2114936))

(assert (= (and b!2114937 condSetEmpty!14190) setIsEmpty!14189))

(assert (= (and b!2114937 (not condSetEmpty!14190)) setNonEmpty!14190))

(assert (= setNonEmpty!14190 b!2114934))

(assert (= (and mapNonEmpty!11419 ((_ is Cons!23547) mapValue!11419)) b!2114937))

(assert (= b!2114935 b!2114938))

(assert (= (and b!2114935 condSetEmpty!14189) setIsEmpty!14190))

(assert (= (and b!2114935 (not condSetEmpty!14189)) setNonEmpty!14189))

(assert (= setNonEmpty!14189 b!2114933))

(assert (= (and mapNonEmpty!11396 ((_ is Cons!23547) mapDefault!11419)) b!2114935))

(declare-fun m!2570589 () Bool)

(assert (=> setNonEmpty!14190 m!2570589))

(declare-fun m!2570591 () Bool)

(assert (=> setNonEmpty!14189 m!2570591))

(declare-fun m!2570593 () Bool)

(assert (=> b!2114937 m!2570593))

(declare-fun m!2570595 () Bool)

(assert (=> b!2114935 m!2570595))

(declare-fun m!2570597 () Bool)

(assert (=> mapNonEmpty!11419 m!2570597))

(declare-fun b!2114939 () Bool)

(declare-fun e!1345937 () Bool)

(declare-fun tp!645252 () Bool)

(assert (=> b!2114939 (= e!1345937 tp!645252)))

(declare-fun b!2114940 () Bool)

(declare-fun e!1345939 () Bool)

(declare-fun setRes!14191 () Bool)

(declare-fun e!1345938 () Bool)

(declare-fun tp!645253 () Bool)

(declare-fun tp!645254 () Bool)

(assert (=> b!2114940 (= e!1345939 (and tp!645254 (inv!31130 (_2!13366 (_1!13367 (h!28948 mapValue!11395)))) e!1345938 tp_is_empty!9459 setRes!14191 tp!645253))))

(declare-fun condSetEmpty!14191 () Bool)

(assert (=> b!2114940 (= condSetEmpty!14191 (= (_2!13367 (h!28948 mapValue!11395)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14191 () Bool)

(assert (=> setIsEmpty!14191 setRes!14191))

(declare-fun b!2114941 () Bool)

(declare-fun tp!645255 () Bool)

(assert (=> b!2114941 (= e!1345938 tp!645255)))

(assert (=> mapNonEmpty!11396 (= tp!645075 e!1345939)))

(declare-fun setElem!14191 () Context!2410)

(declare-fun setNonEmpty!14191 () Bool)

(declare-fun tp!645251 () Bool)

(assert (=> setNonEmpty!14191 (= setRes!14191 (and tp!645251 (inv!31130 setElem!14191) e!1345937))))

(declare-fun setRest!14191 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14191 (= (_2!13367 (h!28948 mapValue!11395)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14191 true) setRest!14191))))

(assert (= b!2114940 b!2114941))

(assert (= (and b!2114940 condSetEmpty!14191) setIsEmpty!14191))

(assert (= (and b!2114940 (not condSetEmpty!14191)) setNonEmpty!14191))

(assert (= setNonEmpty!14191 b!2114939))

(assert (= (and mapNonEmpty!11396 ((_ is Cons!23547) mapValue!11395)) b!2114940))

(declare-fun m!2570599 () Bool)

(assert (=> b!2114940 m!2570599))

(declare-fun m!2570601 () Bool)

(assert (=> setNonEmpty!14191 m!2570601))

(declare-fun mapIsEmpty!11422 () Bool)

(declare-fun mapRes!11422 () Bool)

(assert (=> mapIsEmpty!11422 mapRes!11422))

(declare-fun mapNonEmpty!11422 () Bool)

(declare-fun e!1345944 () Bool)

(assert (=> mapNonEmpty!11422 (= mapRes!11422 e!1345944)))

(declare-fun mapRest!11422 () (Array (_ BitVec 32) List!23631))

(declare-fun mapKey!11422 () (_ BitVec 32))

(declare-fun mapValue!11422 () List!23631)

(assert (=> mapNonEmpty!11422 (= mapRest!11402 (store mapRest!11422 mapKey!11422 mapValue!11422))))

(declare-fun setNonEmpty!14196 () Bool)

(declare-fun setRes!14196 () Bool)

(assert (=> setNonEmpty!14196 (= setRes!14196 true)))

(declare-fun mapDefault!11422 () List!23631)

(declare-fun setElem!14197 () Context!2410)

(declare-fun setRest!14196 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14196 (= (_2!13367 (h!28948 mapDefault!11422)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14197 true) setRest!14196))))

(declare-fun b!2114948 () Bool)

(declare-fun setRes!14197 () Bool)

(assert (=> b!2114948 (= e!1345944 setRes!14197)))

(declare-fun condSetEmpty!14197 () Bool)

(assert (=> b!2114948 (= condSetEmpty!14197 (= (_2!13367 (h!28948 mapValue!11422)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14196 () Bool)

(assert (=> setIsEmpty!14196 setRes!14196))

(declare-fun b!2114949 () Bool)

(declare-fun e!1345945 () Bool)

(assert (=> b!2114949 (= e!1345945 setRes!14196)))

(declare-fun condSetEmpty!14196 () Bool)

(assert (=> b!2114949 (= condSetEmpty!14196 (= (_2!13367 (h!28948 mapDefault!11422)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14197 () Bool)

(assert (=> setIsEmpty!14197 setRes!14197))

(declare-fun condMapEmpty!11422 () Bool)

(assert (=> mapNonEmpty!11402 (= condMapEmpty!11422 (= mapRest!11402 ((as const (Array (_ BitVec 32) List!23631)) mapDefault!11422)))))

(assert (=> mapNonEmpty!11402 (and e!1345945 mapRes!11422)))

(declare-fun setNonEmpty!14197 () Bool)

(assert (=> setNonEmpty!14197 (= setRes!14197 true)))

(declare-fun setElem!14196 () Context!2410)

(declare-fun setRest!14197 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14197 (= (_2!13367 (h!28948 mapValue!11422)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14196 true) setRest!14197))))

(assert (= (and mapNonEmpty!11402 condMapEmpty!11422) mapIsEmpty!11422))

(assert (= (and mapNonEmpty!11402 (not condMapEmpty!11422)) mapNonEmpty!11422))

(assert (= (and b!2114948 condSetEmpty!14197) setIsEmpty!14197))

(assert (= (and b!2114948 (not condSetEmpty!14197)) setNonEmpty!14197))

(assert (= (and mapNonEmpty!11422 ((_ is Cons!23547) mapValue!11422)) b!2114948))

(assert (= (and b!2114949 condSetEmpty!14196) setIsEmpty!14196))

(assert (= (and b!2114949 (not condSetEmpty!14196)) setNonEmpty!14196))

(assert (= (and mapNonEmpty!11402 ((_ is Cons!23547) mapDefault!11422)) b!2114949))

(declare-fun m!2570603 () Bool)

(assert (=> mapNonEmpty!11422 m!2570603))

(declare-fun b!2114950 () Bool)

(declare-fun e!1345946 () Bool)

(declare-fun setRes!14198 () Bool)

(assert (=> b!2114950 (= e!1345946 setRes!14198)))

(declare-fun condSetEmpty!14198 () Bool)

(assert (=> b!2114950 (= condSetEmpty!14198 (= (_2!13367 (h!28948 mapValue!11403)) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14198 () Bool)

(assert (=> setIsEmpty!14198 setRes!14198))

(declare-fun setNonEmpty!14198 () Bool)

(assert (=> setNonEmpty!14198 (= setRes!14198 true)))

(declare-fun setElem!14198 () Context!2410)

(declare-fun setRest!14198 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14198 (= (_2!13367 (h!28948 mapValue!11403)) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14198 true) setRest!14198))))

(assert (=> mapNonEmpty!11402 e!1345946))

(assert (= (and b!2114950 condSetEmpty!14198) setIsEmpty!14198))

(assert (= (and b!2114950 (not condSetEmpty!14198)) setNonEmpty!14198))

(assert (= (and mapNonEmpty!11402 ((_ is Cons!23547) mapValue!11403)) b!2114950))

(declare-fun e!1345948 () Bool)

(declare-fun tp!645257 () Bool)

(declare-fun b!2114951 () Bool)

(declare-fun tp!645258 () Bool)

(assert (=> b!2114951 (= e!1345948 (and (inv!31123 (left!18256 (c!339230 totalInput!1306))) tp!645257 (inv!31123 (right!18586 (c!339230 totalInput!1306))) tp!645258))))

(declare-fun b!2114953 () Bool)

(declare-fun e!1345947 () Bool)

(declare-fun tp!645256 () Bool)

(assert (=> b!2114953 (= e!1345947 tp!645256)))

(declare-fun b!2114952 () Bool)

(assert (=> b!2114952 (= e!1345948 (and (inv!31131 (xs!10718 (c!339230 totalInput!1306))) e!1345947))))

(assert (=> b!2114526 (= tp!645063 (and (inv!31123 (c!339230 totalInput!1306)) e!1345948))))

(assert (= (and b!2114526 ((_ is Node!7776) (c!339230 totalInput!1306))) b!2114951))

(assert (= b!2114952 b!2114953))

(assert (= (and b!2114526 ((_ is Leaf!11361) (c!339230 totalInput!1306))) b!2114952))

(declare-fun m!2570605 () Bool)

(assert (=> b!2114951 m!2570605))

(declare-fun m!2570607 () Bool)

(assert (=> b!2114951 m!2570607))

(declare-fun m!2570609 () Bool)

(assert (=> b!2114952 m!2570609))

(assert (=> b!2114526 m!2570241))

(declare-fun b!2114954 () Bool)

(declare-fun e!1345949 () Bool)

(declare-fun tp!645260 () Bool)

(assert (=> b!2114954 (= e!1345949 tp!645260)))

(declare-fun tp!645261 () Bool)

(declare-fun e!1345951 () Bool)

(declare-fun tp!645262 () Bool)

(declare-fun b!2114955 () Bool)

(declare-fun setRes!14199 () Bool)

(declare-fun e!1345950 () Bool)

(assert (=> b!2114955 (= e!1345951 (and tp!645262 (inv!31130 (_2!13366 (_1!13367 (h!28948 (zeroValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229)))))))))) e!1345950 tp_is_empty!9459 setRes!14199 tp!645261))))

(declare-fun condSetEmpty!14199 () Bool)

(assert (=> b!2114955 (= condSetEmpty!14199 (= (_2!13367 (h!28948 (zeroValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229)))))))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14199 () Bool)

(assert (=> setIsEmpty!14199 setRes!14199))

(declare-fun b!2114956 () Bool)

(declare-fun tp!645263 () Bool)

(assert (=> b!2114956 (= e!1345950 tp!645263)))

(assert (=> b!2114507 (= tp!645068 e!1345951)))

(declare-fun setElem!14199 () Context!2410)

(declare-fun setNonEmpty!14199 () Bool)

(declare-fun tp!645259 () Bool)

(assert (=> setNonEmpty!14199 (= setRes!14199 (and tp!645259 (inv!31130 setElem!14199) e!1345949))))

(declare-fun setRest!14199 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14199 (= (_2!13367 (h!28948 (zeroValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229)))))))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14199 true) setRest!14199))))

(assert (= b!2114955 b!2114956))

(assert (= (and b!2114955 condSetEmpty!14199) setIsEmpty!14199))

(assert (= (and b!2114955 (not condSetEmpty!14199)) setNonEmpty!14199))

(assert (= setNonEmpty!14199 b!2114954))

(assert (= (and b!2114507 ((_ is Cons!23547) (zeroValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229)))))))) b!2114955))

(declare-fun m!2570611 () Bool)

(assert (=> b!2114955 m!2570611))

(declare-fun m!2570613 () Bool)

(assert (=> setNonEmpty!14199 m!2570613))

(declare-fun b!2114957 () Bool)

(declare-fun e!1345952 () Bool)

(declare-fun tp!645265 () Bool)

(assert (=> b!2114957 (= e!1345952 tp!645265)))

(declare-fun tp!645267 () Bool)

(declare-fun setRes!14200 () Bool)

(declare-fun e!1345954 () Bool)

(declare-fun tp!645266 () Bool)

(declare-fun e!1345953 () Bool)

(declare-fun b!2114958 () Bool)

(assert (=> b!2114958 (= e!1345954 (and tp!645267 (inv!31130 (_2!13366 (_1!13367 (h!28948 (minValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229)))))))))) e!1345953 tp_is_empty!9459 setRes!14200 tp!645266))))

(declare-fun condSetEmpty!14200 () Bool)

(assert (=> b!2114958 (= condSetEmpty!14200 (= (_2!13367 (h!28948 (minValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229)))))))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14200 () Bool)

(assert (=> setIsEmpty!14200 setRes!14200))

(declare-fun b!2114959 () Bool)

(declare-fun tp!645268 () Bool)

(assert (=> b!2114959 (= e!1345953 tp!645268)))

(assert (=> b!2114507 (= tp!645074 e!1345954)))

(declare-fun tp!645264 () Bool)

(declare-fun setNonEmpty!14200 () Bool)

(declare-fun setElem!14200 () Context!2410)

(assert (=> setNonEmpty!14200 (= setRes!14200 (and tp!645264 (inv!31130 setElem!14200) e!1345952))))

(declare-fun setRest!14200 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14200 (= (_2!13367 (h!28948 (minValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229)))))))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14200 true) setRest!14200))))

(assert (= b!2114958 b!2114959))

(assert (= (and b!2114958 condSetEmpty!14200) setIsEmpty!14200))

(assert (= (and b!2114958 (not condSetEmpty!14200)) setNonEmpty!14200))

(assert (= setNonEmpty!14200 b!2114957))

(assert (= (and b!2114507 ((_ is Cons!23547) (minValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 cacheDown!1229)))))))) b!2114958))

(declare-fun m!2570615 () Bool)

(assert (=> b!2114958 m!2570615))

(declare-fun m!2570617 () Bool)

(assert (=> setNonEmpty!14200 m!2570617))

(declare-fun b!2114960 () Bool)

(declare-fun e!1345955 () Bool)

(declare-fun setRes!14201 () Bool)

(assert (=> b!2114960 (= e!1345955 setRes!14201)))

(declare-fun condSetEmpty!14201 () Bool)

(assert (=> b!2114960 (= condSetEmpty!14201 (= (_2!13367 (h!28948 (zeroValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793211))))))))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14201 () Bool)

(assert (=> setIsEmpty!14201 setRes!14201))

(declare-fun setNonEmpty!14201 () Bool)

(assert (=> setNonEmpty!14201 (= setRes!14201 true)))

(declare-fun setElem!14201 () Context!2410)

(declare-fun setRest!14201 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14201 (= (_2!13367 (h!28948 (zeroValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793211))))))))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14201 true) setRest!14201))))

(assert (=> b!2114572 e!1345955))

(assert (= (and b!2114960 condSetEmpty!14201) setIsEmpty!14201))

(assert (= (and b!2114960 (not condSetEmpty!14201)) setNonEmpty!14201))

(assert (= (and b!2114572 ((_ is Cons!23547) (zeroValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793211))))))))) b!2114960))

(declare-fun b!2114961 () Bool)

(declare-fun e!1345956 () Bool)

(declare-fun setRes!14202 () Bool)

(assert (=> b!2114961 (= e!1345956 setRes!14202)))

(declare-fun condSetEmpty!14202 () Bool)

(assert (=> b!2114961 (= condSetEmpty!14202 (= (_2!13367 (h!28948 (minValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793211))))))))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setIsEmpty!14202 () Bool)

(assert (=> setIsEmpty!14202 setRes!14202))

(declare-fun setNonEmpty!14202 () Bool)

(assert (=> setNonEmpty!14202 (= setRes!14202 true)))

(declare-fun setElem!14202 () Context!2410)

(declare-fun setRest!14202 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14202 (= (_2!13367 (h!28948 (minValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793211))))))))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14202 true) setRest!14202))))

(assert (=> b!2114572 e!1345956))

(assert (= (and b!2114961 condSetEmpty!14202) setIsEmpty!14202))

(assert (= (and b!2114961 (not condSetEmpty!14202)) setNonEmpty!14202))

(assert (= (and b!2114572 ((_ is Cons!23547) (minValue!2631 (v!28073 (underlying!4941 (v!28076 (underlying!4944 (cache!2669 (_3!1852 lt!793211))))))))) b!2114961))

(declare-fun tp!645270 () Bool)

(declare-fun e!1345958 () Bool)

(declare-fun tp!645271 () Bool)

(declare-fun b!2114962 () Bool)

(assert (=> b!2114962 (= e!1345958 (and (inv!31123 (left!18256 (c!339230 (totalInput!2836 cacheFurthestNullable!141)))) tp!645270 (inv!31123 (right!18586 (c!339230 (totalInput!2836 cacheFurthestNullable!141)))) tp!645271))))

(declare-fun b!2114964 () Bool)

(declare-fun e!1345957 () Bool)

(declare-fun tp!645269 () Bool)

(assert (=> b!2114964 (= e!1345957 tp!645269)))

(declare-fun b!2114963 () Bool)

(assert (=> b!2114963 (= e!1345958 (and (inv!31131 (xs!10718 (c!339230 (totalInput!2836 cacheFurthestNullable!141)))) e!1345957))))

(assert (=> b!2114486 (= tp!645082 (and (inv!31123 (c!339230 (totalInput!2836 cacheFurthestNullable!141))) e!1345958))))

(assert (= (and b!2114486 ((_ is Node!7776) (c!339230 (totalInput!2836 cacheFurthestNullable!141)))) b!2114962))

(assert (= b!2114963 b!2114964))

(assert (= (and b!2114486 ((_ is Leaf!11361) (c!339230 (totalInput!2836 cacheFurthestNullable!141)))) b!2114963))

(declare-fun m!2570619 () Bool)

(assert (=> b!2114962 m!2570619))

(declare-fun m!2570621 () Bool)

(assert (=> b!2114962 m!2570621))

(declare-fun m!2570623 () Bool)

(assert (=> b!2114963 m!2570623))

(assert (=> b!2114486 m!2570299))

(declare-fun e!1345960 () Bool)

(assert (=> b!2114522 (= tp!645066 e!1345960)))

(declare-fun setIsEmpty!14203 () Bool)

(declare-fun setRes!14203 () Bool)

(assert (=> setIsEmpty!14203 setRes!14203))

(declare-fun b!2114966 () Bool)

(declare-fun e!1345959 () Bool)

(declare-fun tp!645273 () Bool)

(assert (=> b!2114966 (= e!1345959 tp!645273)))

(declare-fun b!2114965 () Bool)

(declare-fun tp!645274 () Bool)

(assert (=> b!2114965 (= e!1345960 (and setRes!14203 tp!645274))))

(declare-fun condSetEmpty!14203 () Bool)

(assert (=> b!2114965 (= condSetEmpty!14203 (= (_1!13372 (_1!13373 (h!28952 (zeroValue!2633 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))))))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setElem!14203 () Context!2410)

(declare-fun tp!645272 () Bool)

(declare-fun setNonEmpty!14203 () Bool)

(assert (=> setNonEmpty!14203 (= setRes!14203 (and tp!645272 (inv!31130 setElem!14203) e!1345959))))

(declare-fun setRest!14203 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14203 (= (_1!13372 (_1!13373 (h!28952 (zeroValue!2633 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))))))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14203 true) setRest!14203))))

(assert (= (and b!2114965 condSetEmpty!14203) setIsEmpty!14203))

(assert (= (and b!2114965 (not condSetEmpty!14203)) setNonEmpty!14203))

(assert (= setNonEmpty!14203 b!2114966))

(assert (= (and b!2114522 ((_ is Cons!23551) (zeroValue!2633 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141)))))))) b!2114965))

(declare-fun m!2570625 () Bool)

(assert (=> setNonEmpty!14203 m!2570625))

(declare-fun e!1345962 () Bool)

(assert (=> b!2114522 (= tp!645054 e!1345962)))

(declare-fun setIsEmpty!14204 () Bool)

(declare-fun setRes!14204 () Bool)

(assert (=> setIsEmpty!14204 setRes!14204))

(declare-fun b!2114968 () Bool)

(declare-fun e!1345961 () Bool)

(declare-fun tp!645276 () Bool)

(assert (=> b!2114968 (= e!1345961 tp!645276)))

(declare-fun b!2114967 () Bool)

(declare-fun tp!645277 () Bool)

(assert (=> b!2114967 (= e!1345962 (and setRes!14204 tp!645277))))

(declare-fun condSetEmpty!14204 () Bool)

(assert (=> b!2114967 (= condSetEmpty!14204 (= (_1!13372 (_1!13373 (h!28952 (minValue!2633 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))))))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun tp!645275 () Bool)

(declare-fun setNonEmpty!14204 () Bool)

(declare-fun setElem!14204 () Context!2410)

(assert (=> setNonEmpty!14204 (= setRes!14204 (and tp!645275 (inv!31130 setElem!14204) e!1345961))))

(declare-fun setRest!14204 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14204 (= (_1!13372 (_1!13373 (h!28952 (minValue!2633 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141))))))))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14204 true) setRest!14204))))

(assert (= (and b!2114967 condSetEmpty!14204) setIsEmpty!14204))

(assert (= (and b!2114967 (not condSetEmpty!14204)) setNonEmpty!14204))

(assert (= setNonEmpty!14204 b!2114968))

(assert (= (and b!2114522 ((_ is Cons!23551) (minValue!2633 (v!28077 (underlying!4945 (v!28078 (underlying!4946 (cache!2670 cacheFurthestNullable!141)))))))) b!2114967))

(declare-fun m!2570627 () Bool)

(assert (=> setNonEmpty!14204 m!2570627))

(declare-fun condSetEmpty!14207 () Bool)

(assert (=> setNonEmpty!14141 (= condSetEmpty!14207 (= setRest!14141 ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setRes!14207 () Bool)

(assert (=> setNonEmpty!14141 setRes!14207))

(declare-fun setIsEmpty!14207 () Bool)

(assert (=> setIsEmpty!14207 setRes!14207))

(declare-fun setNonEmpty!14207 () Bool)

(assert (=> setNonEmpty!14207 (= setRes!14207 true)))

(declare-fun setElem!14207 () Context!2410)

(declare-fun setRest!14207 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14207 (= setRest!14141 ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14207 true) setRest!14207))))

(assert (= (and setNonEmpty!14141 condSetEmpty!14207) setIsEmpty!14207))

(assert (= (and setNonEmpty!14141 (not condSetEmpty!14207)) setNonEmpty!14207))

(declare-fun e!1345963 () Bool)

(assert (=> b!2114484 (= tp!645057 e!1345963)))

(declare-fun b!2114971 () Bool)

(declare-fun e!1345964 () Bool)

(declare-fun tp!645281 () Bool)

(declare-fun setRes!14208 () Bool)

(assert (=> b!2114971 (= e!1345963 (and (inv!31130 (_1!13368 (_1!13369 (h!28950 (zeroValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110)))))))))) e!1345964 tp_is_empty!9459 setRes!14208 tp!645281))))

(declare-fun condSetEmpty!14208 () Bool)

(assert (=> b!2114971 (= condSetEmpty!14208 (= (_2!13369 (h!28950 (zeroValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110)))))))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setNonEmpty!14208 () Bool)

(declare-fun setElem!14208 () Context!2410)

(declare-fun tp!645280 () Bool)

(declare-fun e!1345965 () Bool)

(assert (=> setNonEmpty!14208 (= setRes!14208 (and tp!645280 (inv!31130 setElem!14208) e!1345965))))

(declare-fun setRest!14208 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14208 (= (_2!13369 (h!28950 (zeroValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110)))))))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14208 true) setRest!14208))))

(declare-fun b!2114972 () Bool)

(declare-fun tp!645279 () Bool)

(assert (=> b!2114972 (= e!1345965 tp!645279)))

(declare-fun setIsEmpty!14208 () Bool)

(assert (=> setIsEmpty!14208 setRes!14208))

(declare-fun b!2114973 () Bool)

(declare-fun tp!645278 () Bool)

(assert (=> b!2114973 (= e!1345964 tp!645278)))

(assert (= b!2114971 b!2114973))

(assert (= (and b!2114971 condSetEmpty!14208) setIsEmpty!14208))

(assert (= (and b!2114971 (not condSetEmpty!14208)) setNonEmpty!14208))

(assert (= setNonEmpty!14208 b!2114972))

(assert (= (and b!2114484 ((_ is Cons!23549) (zeroValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110)))))))) b!2114971))

(declare-fun m!2570629 () Bool)

(assert (=> b!2114971 m!2570629))

(declare-fun m!2570631 () Bool)

(assert (=> setNonEmpty!14208 m!2570631))

(declare-fun e!1345966 () Bool)

(assert (=> b!2114484 (= tp!645079 e!1345966)))

(declare-fun b!2114974 () Bool)

(declare-fun tp!645285 () Bool)

(declare-fun e!1345967 () Bool)

(declare-fun setRes!14209 () Bool)

(assert (=> b!2114974 (= e!1345966 (and (inv!31130 (_1!13368 (_1!13369 (h!28950 (minValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110)))))))))) e!1345967 tp_is_empty!9459 setRes!14209 tp!645285))))

(declare-fun condSetEmpty!14209 () Bool)

(assert (=> b!2114974 (= condSetEmpty!14209 (= (_2!13369 (h!28950 (minValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110)))))))) ((as const (Array Context!2410 Bool)) false)))))

(declare-fun setNonEmpty!14209 () Bool)

(declare-fun e!1345968 () Bool)

(declare-fun setElem!14209 () Context!2410)

(declare-fun tp!645284 () Bool)

(assert (=> setNonEmpty!14209 (= setRes!14209 (and tp!645284 (inv!31130 setElem!14209) e!1345968))))

(declare-fun setRest!14209 () (InoxSet Context!2410))

(assert (=> setNonEmpty!14209 (= (_2!13369 (h!28950 (minValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110)))))))) ((_ map or) (store ((as const (Array Context!2410 Bool)) false) setElem!14209 true) setRest!14209))))

(declare-fun b!2114975 () Bool)

(declare-fun tp!645283 () Bool)

(assert (=> b!2114975 (= e!1345968 tp!645283)))

(declare-fun setIsEmpty!14209 () Bool)

(assert (=> setIsEmpty!14209 setRes!14209))

(declare-fun b!2114976 () Bool)

(declare-fun tp!645282 () Bool)

(assert (=> b!2114976 (= e!1345967 tp!645282)))

(assert (= b!2114974 b!2114976))

(assert (= (and b!2114974 condSetEmpty!14209) setIsEmpty!14209))

(assert (= (and b!2114974 (not condSetEmpty!14209)) setNonEmpty!14209))

(assert (= setNonEmpty!14209 b!2114975))

(assert (= (and b!2114484 ((_ is Cons!23549) (minValue!2632 (v!28074 (underlying!4942 (v!28075 (underlying!4943 (cache!2668 cacheUp!1110)))))))) b!2114974))

(declare-fun m!2570633 () Bool)

(assert (=> b!2114974 m!2570633))

(declare-fun m!2570635 () Bool)

(assert (=> setNonEmpty!14209 m!2570635))

(declare-fun b_lambda!70381 () Bool)

(assert (= b_lambda!70379 (or b!2114514 b_lambda!70381)))

(declare-fun bs!441166 () Bool)

(declare-fun d!642509 () Bool)

(assert (= bs!441166 (and d!642509 b!2114514)))

(assert (=> bs!441166 (= (dynLambda!11285 lambda!78200 (h!28951 (_2!13370 (_1!13371 lt!793211)))) (= (res!917699 (h!28951 (_2!13370 (_1!13371 lt!793211)))) (_1!13370 (_1!13371 lt!793211))))))

(assert (=> b!2114735 d!642509))

(declare-fun b_lambda!70383 () Bool)

(assert (= b_lambda!70377 (or b!2114499 b_lambda!70383)))

(declare-fun bs!441167 () Bool)

(declare-fun d!642511 () Bool)

(assert (= bs!441167 (and d!642511 b!2114499)))

(assert (=> bs!441167 (= (dynLambda!11285 lambda!78201 (h!28951 (_2!13370 (_1!13371 lt!793211)))) (= (totalInput!2835 (h!28951 (_2!13370 (_1!13371 lt!793211)))) totalInput!1306))))

(assert (=> b!2114646 d!642511))

(check-sat (not b!2114680) (not b!2114871) b_and!170857 (not d!642467) (not setNonEmpty!14201) (not bm!128522) (not b!2114936) (not b!2114916) (not b!2114872) (not b!2114734) (not mapNonEmpty!11405) (not setNonEmpty!14149) (not b!2114683) (not bm!128516) (not b!2114778) (not d!642471) (not b!2114787) (not b!2114704) (not b!2114864) (not d!642465) (not b_next!61989) (not setNonEmpty!14190) (not setNonEmpty!14197) (not b!2114692) (not b!2114894) (not setNonEmpty!14170) (not b_next!61987) (not b!2114682) (not d!642469) (not setNonEmpty!14146) (not setNonEmpty!14158) (not bm!128514) (not setNonEmpty!14182) (not b_next!61983) (not b!2114863) (not b!2114939) (not b!2114964) (not b!2114832) (not b!2114803) (not b!2114482) (not setNonEmpty!14155) (not b!2114638) b_and!170863 (not b!2114951) (not setNonEmpty!14142) (not b!2114913) (not b_next!61981) (not b!2114953) (not d!642463) (not b!2114867) (not b!2114687) (not b!2114901) (not b!2114641) (not b!2114955) (not bm!128506) (not b!2114973) (not b!2114876) (not d!642475) (not b!2114770) (not d!642435) (not b!2114624) (not b!2114844) (not d!642459) (not setNonEmpty!14208) (not b!2114975) (not b!2114636) (not b!2114875) b_and!170867 (not b!2114831) (not b!2114965) (not d!642473) (not b!2114792) (not b!2114650) (not b_next!61991) (not setNonEmpty!14198) (not b!2114866) (not b!2114862) (not b!2114962) (not b_next!61985) (not b!2114935) tp_is_empty!9459 (not mapNonEmpty!11406) (not d!642437) (not b!2114752) (not b!2114952) (not setNonEmpty!14175) b_and!170865 (not setNonEmpty!14163) (not b!2114966) (not b_lambda!70383) (not bm!128515) b_and!170861 (not setNonEmpty!14184) (not mapNonEmpty!11419) (not setNonEmpty!14196) (not d!642501) (not d!642421) (not mapNonEmpty!11404) (not b!2114814) (not b!2114937) (not b!2114902) (not b!2114801) (not b!2114486) (not b!2114967) (not setNonEmpty!14203) (not b!2114883) (not b!2114860) (not setNonEmpty!14164) (not d!642493) (not b!2114756) (not setNonEmpty!14177) (not b!2114971) (not bm!128519) (not b!2114896) (not b!2114706) (not d!642477) (not b!2114957) (not setNonEmpty!14204) (not setNonEmpty!14165) (not b!2114899) (not b!2114960) (not b!2114526) (not b!2114596) (not setNonEmpty!14202) (not d!642489) (not b!2114915) (not setNonEmpty!14189) (not b!2114898) (not b!2114819) (not setNonEmpty!14172) (not b!2114648) (not d!642433) (not b!2114653) (not b!2114802) (not b!2114938) (not b!2114591) (not setNonEmpty!14143) (not b!2114702) (not b!2114885) (not setNonEmpty!14207) (not b!2114933) (not b!2114941) (not d!642427) (not b!2114868) (not mapNonEmpty!11410) (not d!642455) (not b!2114914) (not bm!128505) (not d!642439) (not b!2114833) (not b!2114959) (not d!642487) (not b!2114917) (not d!642451) (not b!2114698) (not b_lambda!70381) (not b!2114836) (not setNonEmpty!14176) (not d!642453) (not b!2114865) (not b!2114954) (not b!2114870) (not setNonEmpty!14209) (not setNonEmpty!14191) (not mapNonEmpty!11422) (not d!642429) (not b!2114629) (not b!2114948) (not b!2114974) (not b!2114900) (not b!2114895) (not setNonEmpty!14171) (not b!2114949) (not b!2114813) (not mapNonEmpty!11416) (not setNonEmpty!14199) (not b!2114773) (not d!642479) (not b!2114861) (not d!642423) (not b!2114958) (not d!642507) (not mapNonEmpty!11413) (not b!2114812) (not b!2114691) b_and!170859 (not b!2114731) (not b!2114950) (not b!2114688) (not d!642445) (not b!2114837) (not b!2114976) (not b!2114593) (not b!2114961) (not b!2114725) (not b!2114647) (not b!2114884) (not b!2114786) (not d!642457) (not b!2114963) (not setNonEmpty!14152) (not b!2114874) (not b!2114760) (not b!2114755) (not b!2114758) (not d!642413) (not b!2114956) (not mapNonEmpty!11407) (not b!2114972) (not b!2114771) (not setNonEmpty!14200) (not b!2114940) (not b!2114918) (not b!2114779) (not d!642499) (not d!642483) (not b!2114968) (not b!2114934) (not b!2114701) (not b!2114835) (not setNonEmpty!14183) (not b!2114736) (not b!2114599))
(check-sat b_and!170857 (not b_next!61989) (not b_next!61987) (not b_next!61983) (not b_next!61985) b_and!170859 b_and!170863 (not b_next!61981) b_and!170867 (not b_next!61991) b_and!170865 b_and!170861)
