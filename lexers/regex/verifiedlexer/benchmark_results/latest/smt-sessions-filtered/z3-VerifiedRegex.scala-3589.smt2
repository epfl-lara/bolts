; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206714 () Bool)

(assert start!206714)

(declare-fun b!2117028 () Bool)

(declare-fun b_free!61397 () Bool)

(declare-fun b_next!62101 () Bool)

(assert (=> b!2117028 (= b_free!61397 (not b_next!62101))))

(declare-fun tp!646546 () Bool)

(declare-fun b_and!170977 () Bool)

(assert (=> b!2117028 (= tp!646546 b_and!170977)))

(declare-fun b!2117048 () Bool)

(declare-fun b_free!61399 () Bool)

(declare-fun b_next!62103 () Bool)

(assert (=> b!2117048 (= b_free!61399 (not b_next!62103))))

(declare-fun tp!646552 () Bool)

(declare-fun b_and!170979 () Bool)

(assert (=> b!2117048 (= tp!646552 b_and!170979)))

(declare-fun b!2117058 () Bool)

(declare-fun b_free!61401 () Bool)

(declare-fun b_next!62105 () Bool)

(assert (=> b!2117058 (= b_free!61401 (not b_next!62105))))

(declare-fun tp!646547 () Bool)

(declare-fun b_and!170981 () Bool)

(assert (=> b!2117058 (= tp!646547 b_and!170981)))

(declare-fun b!2117055 () Bool)

(declare-fun b_free!61403 () Bool)

(declare-fun b_next!62107 () Bool)

(assert (=> b!2117055 (= b_free!61403 (not b_next!62107))))

(declare-fun tp!646545 () Bool)

(declare-fun b_and!170983 () Bool)

(assert (=> b!2117055 (= tp!646545 b_and!170983)))

(declare-fun b!2117035 () Bool)

(declare-fun b_free!61405 () Bool)

(declare-fun b_next!62109 () Bool)

(assert (=> b!2117035 (= b_free!61405 (not b_next!62109))))

(declare-fun tp!646560 () Bool)

(declare-fun b_and!170985 () Bool)

(assert (=> b!2117035 (= tp!646560 b_and!170985)))

(declare-fun b!2117054 () Bool)

(declare-fun b_free!61407 () Bool)

(declare-fun b_next!62111 () Bool)

(assert (=> b!2117054 (= b_free!61407 (not b_next!62111))))

(declare-fun tp!646536 () Bool)

(declare-fun b_and!170987 () Bool)

(assert (=> b!2117054 (= tp!646536 b_and!170987)))

(declare-fun b!2117108 () Bool)

(declare-fun e!1347688 () Bool)

(declare-fun mapRes!11575 () Bool)

(assert (=> b!2117108 (= e!1347688 mapRes!11575)))

(declare-fun condMapEmpty!11576 () Bool)

(declare-datatypes ((C!11436 0))(
  ( (C!11437 (val!6704 Int)) )
))
(declare-datatypes ((Regex!5645 0))(
  ( (ElementMatch!5645 (c!339386 C!11436)) (Concat!9947 (regOne!11802 Regex!5645) (regTwo!11802 Regex!5645)) (EmptyExpr!5645) (Star!5645 (reg!5974 Regex!5645)) (EmptyLang!5645) (Union!5645 (regOne!11803 Regex!5645) (regTwo!11803 Regex!5645)) )
))
(declare-datatypes ((List!23680 0))(
  ( (Nil!23596) (Cons!23596 (h!28997 Regex!5645) (t!196189 List!23680)) )
))
(declare-datatypes ((Context!2430 0))(
  ( (Context!2431 (exprs!1715 List!23680)) )
))
(declare-datatypes ((tuple3!2812 0))(
  ( (tuple3!2813 (_1!13440 Regex!5645) (_2!13440 Context!2430) (_3!1875 C!11436)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23130 0))(
  ( (tuple2!23131 (_1!13441 tuple3!2812) (_2!13441 (InoxSet Context!2430))) )
))
(declare-datatypes ((List!23681 0))(
  ( (Nil!23597) (Cons!23597 (h!28998 tuple2!23130) (t!196190 List!23681)) )
))
(declare-datatypes ((array!8253 0))(
  ( (array!8254 (arr!3662 (Array (_ BitVec 32) (_ BitVec 64))) (size!18428 (_ BitVec 32))) )
))
(declare-datatypes ((array!8255 0))(
  ( (array!8256 (arr!3663 (Array (_ BitVec 32) List!23681)) (size!18429 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4792 0))(
  ( (LongMapFixedSize!4793 (defaultEntry!2761 Int) (mask!6534 (_ BitVec 32)) (extraKeys!2644 (_ BitVec 32)) (zeroValue!2654 List!23681) (minValue!2654 List!23681) (_size!4843 (_ BitVec 32)) (_keys!2693 array!8253) (_values!2676 array!8255) (_vacant!2457 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9409 0))(
  ( (Cell!9410 (v!28121 LongMapFixedSize!4792)) )
))
(declare-datatypes ((MutLongMap!2396 0))(
  ( (LongMap!2396 (underlying!4987 Cell!9409)) (MutLongMapExt!2395 (__x!15364 Int)) )
))
(declare-datatypes ((List!23682 0))(
  ( (Nil!23598) (Cons!23598 (h!28999 C!11436) (t!196191 List!23682)) )
))
(declare-datatypes ((IArray!15573 0))(
  ( (IArray!15574 (innerList!7844 List!23682)) )
))
(declare-datatypes ((Conc!7784 0))(
  ( (Node!7784 (left!18281 Conc!7784) (right!18611 Conc!7784) (csize!15798 Int) (cheight!7995 Int)) (Leaf!11374 (xs!10726 IArray!15573) (csize!15799 Int)) (Empty!7784) )
))
(declare-datatypes ((BalanceConc!15330 0))(
  ( (BalanceConc!15331 (c!339387 Conc!7784)) )
))
(declare-datatypes ((Hashable!2310 0))(
  ( (HashableExt!2309 (__x!15365 Int)) )
))
(declare-datatypes ((tuple2!23132 0))(
  ( (tuple2!23133 (_1!13442 Context!2430) (_2!13442 C!11436)) )
))
(declare-datatypes ((tuple2!23134 0))(
  ( (tuple2!23135 (_1!13443 tuple2!23132) (_2!13443 (InoxSet Context!2430))) )
))
(declare-datatypes ((List!23683 0))(
  ( (Nil!23599) (Cons!23599 (h!29000 tuple2!23134) (t!196192 List!23683)) )
))
(declare-datatypes ((array!8257 0))(
  ( (array!8258 (arr!3664 (Array (_ BitVec 32) List!23683)) (size!18430 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4794 0))(
  ( (LongMapFixedSize!4795 (defaultEntry!2762 Int) (mask!6535 (_ BitVec 32)) (extraKeys!2645 (_ BitVec 32)) (zeroValue!2655 List!23683) (minValue!2655 List!23683) (_size!4844 (_ BitVec 32)) (_keys!2694 array!8253) (_values!2677 array!8257) (_vacant!2458 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9411 0))(
  ( (Cell!9412 (v!28122 LongMapFixedSize!4794)) )
))
(declare-datatypes ((MutLongMap!2397 0))(
  ( (LongMap!2397 (underlying!4988 Cell!9411)) (MutLongMapExt!2396 (__x!15366 Int)) )
))
(declare-datatypes ((Cell!9413 0))(
  ( (Cell!9414 (v!28123 MutLongMap!2397)) )
))
(declare-datatypes ((StackFrame!22 0))(
  ( (StackFrame!23 (z!5693 (InoxSet Context!2430)) (from!2604 Int) (lastNullablePos!292 Int) (res!918218 Int) (totalInput!2862 BalanceConc!15330)) )
))
(declare-datatypes ((List!23684 0))(
  ( (Nil!23600) (Cons!23600 (h!29001 StackFrame!22) (t!196193 List!23684)) )
))
(declare-datatypes ((Hashable!2311 0))(
  ( (HashableExt!2310 (__x!15367 Int)) )
))
(declare-datatypes ((tuple2!23136 0))(
  ( (tuple2!23137 (_1!13444 Int) (_2!13444 List!23684)) )
))
(declare-datatypes ((MutableMap!2310 0))(
  ( (MutableMapExt!2309 (__x!15368 Int)) (HashMap!2310 (underlying!4989 Cell!9413) (hashF!4233 Hashable!2310) (_size!4845 (_ BitVec 32)) (defaultValue!2472 Int)) )
))
(declare-datatypes ((CacheUp!1598 0))(
  ( (CacheUp!1599 (cache!2691 MutableMap!2310)) )
))
(declare-datatypes ((Cell!9415 0))(
  ( (Cell!9416 (v!28124 MutLongMap!2396)) )
))
(declare-datatypes ((MutableMap!2311 0))(
  ( (MutableMapExt!2310 (__x!15369 Int)) (HashMap!2311 (underlying!4990 Cell!9415) (hashF!4234 Hashable!2311) (_size!4846 (_ BitVec 32)) (defaultValue!2473 Int)) )
))
(declare-datatypes ((CacheDown!1586 0))(
  ( (CacheDown!1587 (cache!2692 MutableMap!2311)) )
))
(declare-datatypes ((tuple3!2814 0))(
  ( (tuple3!2815 (_1!13445 tuple2!23136) (_2!13445 CacheUp!1598) (_3!1876 CacheDown!1586)) )
))
(declare-fun lt!793905 () tuple3!2814)

(declare-fun mapDefault!11576 () List!23681)

(assert (=> b!2117108 (= condMapEmpty!11576 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905)))))))) ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11576)))))

(declare-fun b!2117109 () Bool)

(declare-fun e!1347687 () Bool)

(declare-fun e!1347678 () Bool)

(assert (=> b!2117109 (= e!1347687 e!1347678)))

(declare-fun b!2117110 () Bool)

(declare-fun e!1347680 () Bool)

(declare-fun e!1347679 () Bool)

(assert (=> b!2117110 (= e!1347680 e!1347679)))

(declare-fun b!2117111 () Bool)

(assert (=> b!2117111 (= e!1347679 e!1347688)))

(declare-fun mapIsEmpty!11575 () Bool)

(declare-fun mapRes!11576 () Bool)

(assert (=> mapIsEmpty!11575 mapRes!11576))

(declare-fun mapNonEmpty!11575 () Bool)

(assert (=> mapNonEmpty!11575 (= mapRes!11575 true)))

(declare-fun mapValue!11575 () List!23681)

(declare-fun mapKey!11575 () (_ BitVec 32))

(declare-fun mapRest!11575 () (Array (_ BitVec 32) List!23681))

(assert (=> mapNonEmpty!11575 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905)))))))) (store mapRest!11575 mapKey!11575 mapValue!11575))))

(declare-fun b!2117112 () Bool)

(declare-fun e!1347686 () Bool)

(assert (=> b!2117112 (= e!1347678 e!1347686)))

(declare-fun b!2117113 () Bool)

(declare-fun e!1347681 () Bool)

(declare-fun e!1347684 () Bool)

(assert (=> b!2117113 (= e!1347681 e!1347684)))

(declare-fun b!2117114 () Bool)

(declare-fun e!1347683 () Bool)

(assert (=> b!2117114 (= e!1347683 e!1347681)))

(declare-fun b!2117115 () Bool)

(declare-fun e!1347673 () Bool)

(declare-fun lt!793913 () MutLongMap!2397)

(get-info :version)

(assert (=> b!2117115 (= e!1347673 (and e!1347683 ((_ is LongMap!2397) lt!793913)))))

(assert (=> b!2117115 (= lt!793913 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905)))))))

(declare-fun b!2117116 () Bool)

(declare-fun e!1347675 () Bool)

(assert (=> b!2117116 (= e!1347675 mapRes!11576)))

(declare-fun condMapEmpty!11575 () Bool)

(declare-fun mapDefault!11575 () List!23683)

(assert (=> b!2117116 (= condMapEmpty!11575 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905)))))))) ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11575)))))

(declare-fun b!2117117 () Bool)

(declare-fun e!1347676 () Bool)

(declare-fun e!1347685 () Bool)

(assert (=> b!2117117 (= e!1347676 e!1347685)))

(declare-fun b!2117119 () Bool)

(declare-fun e!1347682 () Bool)

(declare-fun lt!793914 () MutLongMap!2396)

(assert (=> b!2117119 (= e!1347686 (and e!1347682 ((_ is LongMap!2396) lt!793914)))))

(assert (=> b!2117119 (= lt!793914 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905)))))))

(declare-fun setNonEmpty!14331 () Bool)

(declare-fun setRes!14331 () Bool)

(assert (=> setNonEmpty!14331 (= setRes!14331 true)))

(declare-fun setElem!14331 () Context!2430)

(declare-fun setRest!14331 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14331 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!793905)))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14331 true) setRest!14331))))

(declare-fun b!2117120 () Bool)

(assert (=> b!2117120 (= e!1347682 e!1347680)))

(declare-fun mapIsEmpty!11576 () Bool)

(assert (=> mapIsEmpty!11576 mapRes!11575))

(declare-fun setIsEmpty!14331 () Bool)

(assert (=> setIsEmpty!14331 setRes!14331))

(declare-fun b!2117121 () Bool)

(declare-fun e!1347674 () Bool)

(assert (=> b!2117121 (= e!1347674 e!1347673)))

(declare-fun b!2117122 () Bool)

(assert (=> b!2117122 (= e!1347685 setRes!14331)))

(declare-fun condSetEmpty!14331 () Bool)

(assert (=> b!2117122 (= condSetEmpty!14331 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!793905)))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117118 () Bool)

(declare-fun e!1347677 () Bool)

(assert (=> b!2117118 (= e!1347677 e!1347674)))

(declare-fun b!2117069 () Bool)

(assert (=> b!2117069 (and e!1347676 e!1347677 e!1347687)))

(declare-fun b!2117123 () Bool)

(assert (=> b!2117123 (= e!1347684 e!1347675)))

(declare-fun mapNonEmpty!11576 () Bool)

(assert (=> mapNonEmpty!11576 (= mapRes!11576 true)))

(declare-fun mapValue!11576 () List!23683)

(declare-fun mapRest!11576 () (Array (_ BitVec 32) List!23683))

(declare-fun mapKey!11576 () (_ BitVec 32))

(assert (=> mapNonEmpty!11576 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905)))))))) (store mapRest!11576 mapKey!11576 mapValue!11576))))

(assert (= (and b!2117122 condSetEmpty!14331) setIsEmpty!14331))

(assert (= (and b!2117122 (not condSetEmpty!14331)) setNonEmpty!14331))

(assert (= b!2117117 b!2117122))

(assert (= (and b!2117069 ((_ is Cons!23600) (_2!13444 (_1!13445 lt!793905)))) b!2117117))

(assert (= (and b!2117116 condMapEmpty!11575) mapIsEmpty!11575))

(assert (= (and b!2117116 (not condMapEmpty!11575)) mapNonEmpty!11576))

(assert (= b!2117123 b!2117116))

(assert (= b!2117113 b!2117123))

(assert (= b!2117114 b!2117113))

(assert (= (and b!2117115 ((_ is LongMap!2397) (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905)))))) b!2117114))

(assert (= b!2117121 b!2117115))

(assert (= (and b!2117118 ((_ is HashMap!2310) (cache!2691 (_2!13445 lt!793905)))) b!2117121))

(assert (= b!2117069 b!2117118))

(assert (= (and b!2117108 condMapEmpty!11576) mapIsEmpty!11576))

(assert (= (and b!2117108 (not condMapEmpty!11576)) mapNonEmpty!11575))

(assert (= b!2117111 b!2117108))

(assert (= b!2117110 b!2117111))

(assert (= b!2117120 b!2117110))

(assert (= (and b!2117119 ((_ is LongMap!2396) (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905)))))) b!2117120))

(assert (= b!2117112 b!2117119))

(assert (= (and b!2117109 ((_ is HashMap!2311) (cache!2692 (_3!1876 lt!793905)))) b!2117112))

(assert (= b!2117069 b!2117109))

(declare-fun lambda!78292 () Int)

(declare-fun order!14569 () Int)

(declare-fun order!14571 () Int)

(declare-fun dynLambda!11297 (Int Int) Int)

(declare-fun dynLambda!11298 (Int Int) Int)

(assert (=> b!2117111 (< (dynLambda!11297 order!14569 (defaultEntry!2761 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905)))))))) (dynLambda!11298 order!14571 lambda!78292))))

(declare-fun order!14573 () Int)

(declare-fun dynLambda!11299 (Int Int) Int)

(assert (=> b!2117112 (< (dynLambda!11299 order!14573 (defaultValue!2473 (cache!2692 (_3!1876 lt!793905)))) (dynLambda!11298 order!14571 lambda!78292))))

(declare-fun order!14575 () Int)

(declare-fun dynLambda!11300 (Int Int) Int)

(assert (=> b!2117123 (< (dynLambda!11300 order!14575 (defaultEntry!2762 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905)))))))) (dynLambda!11298 order!14571 lambda!78292))))

(declare-fun order!14577 () Int)

(declare-fun dynLambda!11301 (Int Int) Int)

(assert (=> b!2117121 (< (dynLambda!11301 order!14577 (defaultValue!2472 (cache!2691 (_2!13445 lt!793905)))) (dynLambda!11298 order!14571 lambda!78292))))

(declare-fun m!2571825 () Bool)

(assert (=> mapNonEmpty!11575 m!2571825))

(declare-fun m!2571827 () Bool)

(assert (=> mapNonEmpty!11576 m!2571827))

(declare-fun bs!441243 () Bool)

(declare-fun b!2117039 () Bool)

(assert (= bs!441243 (and b!2117039 b!2117069)))

(declare-fun lambda!78293 () Int)

(assert (=> bs!441243 (not (= lambda!78293 lambda!78292))))

(assert (=> b!2117039 true))

(declare-fun bm!128573 () Bool)

(declare-datatypes ((tuple2!23138 0))(
  ( (tuple2!23139 (_1!13446 BalanceConc!15330) (_2!13446 BalanceConc!15330)) )
))
(declare-fun call!128578 () tuple2!23138)

(declare-fun c!339385 () Bool)

(declare-fun lt!793904 () Int)

(declare-fun input!6660 () BalanceConc!15330)

(declare-fun splitAt!15 (BalanceConc!15330 Int) tuple2!23138)

(assert (=> bm!128573 (= call!128578 (splitAt!15 input!6660 (ite c!339385 0 lt!793904)))))

(declare-fun b!2117027 () Bool)

(declare-fun e!1347619 () Bool)

(declare-fun tp!646555 () Bool)

(declare-fun inv!31175 (Conc!7784) Bool)

(assert (=> b!2117027 (= e!1347619 (and (inv!31175 (c!339387 input!6660)) tp!646555))))

(declare-fun e!1347624 () Bool)

(declare-fun e!1347635 () Bool)

(assert (=> b!2117028 (= e!1347624 (and e!1347635 tp!646546))))

(declare-fun b!2117029 () Bool)

(declare-fun e!1347606 () Bool)

(declare-fun lt!793902 () MutLongMap!2397)

(assert (=> b!2117029 (= e!1347635 (and e!1347606 ((_ is LongMap!2397) lt!793902)))))

(declare-fun cacheUp!1110 () CacheUp!1598)

(assert (=> b!2117029 (= lt!793902 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))

(declare-fun b!2117030 () Bool)

(declare-fun e!1347640 () tuple2!23138)

(assert (=> b!2117030 (= e!1347640 call!128578)))

(declare-fun b!2117031 () Bool)

(declare-fun e!1347615 () Bool)

(declare-fun e!1347634 () Bool)

(assert (=> b!2117031 (= e!1347615 e!1347634)))

(declare-fun res!918216 () Bool)

(assert (=> b!2117031 (=> (not res!918216) (not e!1347634))))

(declare-fun lt!793897 () List!23682)

(declare-fun totalInput!1306 () BalanceConc!15330)

(declare-fun isSuffix!605 (List!23682 List!23682) Bool)

(declare-fun list!9507 (BalanceConc!15330) List!23682)

(assert (=> b!2117031 (= res!918216 (isSuffix!605 lt!793897 (list!9507 totalInput!1306)))))

(assert (=> b!2117031 (= lt!793897 (list!9507 input!6660))))

(declare-fun b!2117032 () Bool)

(declare-fun e!1347613 () Bool)

(declare-datatypes ((Hashable!2312 0))(
  ( (HashableExt!2311 (__x!15370 Int)) )
))
(declare-datatypes ((tuple3!2816 0))(
  ( (tuple3!2817 (_1!13447 (InoxSet Context!2430)) (_2!13447 Int) (_3!1877 Int)) )
))
(declare-datatypes ((tuple2!23140 0))(
  ( (tuple2!23141 (_1!13448 tuple3!2816) (_2!13448 Int)) )
))
(declare-datatypes ((List!23685 0))(
  ( (Nil!23601) (Cons!23601 (h!29002 tuple2!23140) (t!196194 List!23685)) )
))
(declare-datatypes ((array!8259 0))(
  ( (array!8260 (arr!3665 (Array (_ BitVec 32) List!23685)) (size!18431 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4796 0))(
  ( (LongMapFixedSize!4797 (defaultEntry!2763 Int) (mask!6536 (_ BitVec 32)) (extraKeys!2646 (_ BitVec 32)) (zeroValue!2656 List!23685) (minValue!2656 List!23685) (_size!4847 (_ BitVec 32)) (_keys!2695 array!8253) (_values!2678 array!8259) (_vacant!2459 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9417 0))(
  ( (Cell!9418 (v!28125 LongMapFixedSize!4796)) )
))
(declare-datatypes ((MutLongMap!2398 0))(
  ( (LongMap!2398 (underlying!4991 Cell!9417)) (MutLongMapExt!2397 (__x!15371 Int)) )
))
(declare-datatypes ((Cell!9419 0))(
  ( (Cell!9420 (v!28126 MutLongMap!2398)) )
))
(declare-datatypes ((MutableMap!2312 0))(
  ( (MutableMapExt!2311 (__x!15372 Int)) (HashMap!2312 (underlying!4992 Cell!9419) (hashF!4235 Hashable!2312) (_size!4848 (_ BitVec 32)) (defaultValue!2474 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!560 0))(
  ( (CacheFurthestNullable!561 (cache!2693 MutableMap!2312) (totalInput!2863 BalanceConc!15330)) )
))
(declare-fun cacheFurthestNullable!141 () CacheFurthestNullable!560)

(declare-fun tp!646540 () Bool)

(assert (=> b!2117032 (= e!1347613 (and (inv!31175 (c!339387 (totalInput!2863 cacheFurthestNullable!141))) tp!646540))))

(declare-fun mapIsEmpty!11568 () Bool)

(declare-fun mapRes!11570 () Bool)

(assert (=> mapIsEmpty!11568 mapRes!11570))

(declare-fun b!2117033 () Bool)

(declare-fun e!1347607 () Bool)

(declare-fun e!1347610 () Bool)

(assert (=> b!2117033 (= e!1347607 e!1347610)))

(declare-fun b!2117034 () Bool)

(declare-fun res!918208 () Bool)

(assert (=> b!2117034 (=> (not res!918208) (not e!1347615))))

(declare-fun valid!1885 (CacheFurthestNullable!560) Bool)

(assert (=> b!2117034 (= res!918208 (valid!1885 cacheFurthestNullable!141))))

(declare-fun cacheDown!1229 () CacheDown!1586)

(declare-fun tp!646550 () Bool)

(declare-fun e!1347616 () Bool)

(declare-fun tp!646539 () Bool)

(declare-fun e!1347627 () Bool)

(declare-fun array_inv!2627 (array!8253) Bool)

(declare-fun array_inv!2628 (array!8255) Bool)

(assert (=> b!2117035 (= e!1347627 (and tp!646560 tp!646539 tp!646550 (array_inv!2627 (_keys!2693 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))) (array_inv!2628 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))) e!1347616))))

(declare-fun b!2117036 () Bool)

(declare-fun e!1347630 () Bool)

(declare-fun e!1347611 () Bool)

(assert (=> b!2117036 (= e!1347630 e!1347611)))

(declare-fun b!2117037 () Bool)

(declare-fun e!1347626 () Bool)

(declare-fun tp!646542 () Bool)

(assert (=> b!2117037 (= e!1347626 (and (inv!31175 (c!339387 totalInput!1306)) tp!646542))))

(declare-fun b!2117038 () Bool)

(declare-fun e!1347632 () Bool)

(declare-fun e!1347633 () Bool)

(assert (=> b!2117038 (= e!1347632 e!1347633)))

(declare-fun res!918210 () Bool)

(declare-fun e!1347614 () Bool)

(assert (=> b!2117039 (=> (not res!918210) (not e!1347614))))

(declare-fun forall!4845 (List!23684 Int) Bool)

(assert (=> b!2117039 (= res!918210 (forall!4845 (_2!13444 (_1!13445 lt!793905)) lambda!78293))))

(declare-fun b!2117040 () Bool)

(declare-fun res!918212 () Bool)

(assert (=> b!2117040 (=> (not res!918212) (not e!1347615))))

(declare-fun valid!1886 (CacheUp!1598) Bool)

(assert (=> b!2117040 (= res!918212 (valid!1886 cacheUp!1110))))

(declare-fun b!2117041 () Bool)

(declare-fun e!1347608 () Bool)

(declare-fun lt!793899 () tuple2!23138)

(declare-datatypes ((tuple2!23142 0))(
  ( (tuple2!23143 (_1!13449 List!23682) (_2!13449 List!23682)) )
))
(declare-fun lt!793908 () tuple2!23142)

(assert (=> b!2117041 (= e!1347608 (= (list!9507 (_2!13446 lt!793899)) (_2!13449 lt!793908)))))

(declare-fun b!2117042 () Bool)

(declare-fun e!1347622 () Bool)

(assert (=> b!2117042 (= e!1347610 e!1347622)))

(declare-fun b!2117043 () Bool)

(declare-fun e!1347636 () Int)

(declare-fun lt!793907 () Int)

(assert (=> b!2117043 (= e!1347636 (- lt!793907 1))))

(declare-fun b!2117044 () Bool)

(declare-fun e!1347623 () Bool)

(assert (=> b!2117044 (= e!1347623 e!1347624)))

(declare-fun b!2117045 () Bool)

(declare-fun e!1347629 () Bool)

(declare-fun lt!793896 () MutLongMap!2398)

(assert (=> b!2117045 (= e!1347629 (and e!1347607 ((_ is LongMap!2398) lt!793896)))))

(assert (=> b!2117045 (= lt!793896 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))

(declare-fun mapIsEmpty!11570 () Bool)

(declare-fun mapRes!11568 () Bool)

(assert (=> mapIsEmpty!11570 mapRes!11568))

(declare-fun lt!793906 () Int)

(declare-fun b!2117046 () Bool)

(declare-datatypes ((tuple4!938 0))(
  ( (tuple4!939 (_1!13450 tuple2!23138) (_2!13450 CacheUp!1598) (_3!1878 CacheDown!1586) (_4!469 CacheFurthestNullable!560)) )
))
(declare-fun lt!793903 () tuple4!938)

(declare-datatypes ((Unit!37556 0))(
  ( (Unit!37557) )
))
(declare-datatypes ((tuple2!23144 0))(
  ( (tuple2!23145 (_1!13451 Unit!37556) (_2!13451 CacheFurthestNullable!560)) )
))
(declare-fun fillUpCache!5 (List!23684 BalanceConc!15330 Int Int Int CacheFurthestNullable!560) tuple2!23144)

(assert (=> b!2117046 (= e!1347614 (= lt!793903 (tuple4!939 e!1347640 (_2!13445 lt!793905) (_3!1876 lt!793905) (_2!13451 (fillUpCache!5 (_2!13444 (_1!13445 lt!793905)) totalInput!1306 lt!793906 (_1!13444 (_1!13445 lt!793905)) 0 cacheFurthestNullable!141)))))))

(assert (=> b!2117046 (= c!339385 (< lt!793904 0))))

(declare-fun b!2117047 () Bool)

(declare-fun e!1347621 () Bool)

(declare-fun tp!646549 () Bool)

(declare-fun tp!646548 () Bool)

(assert (=> b!2117047 (= e!1347621 (and tp!646549 tp!646548))))

(declare-fun e!1347631 () Bool)

(assert (=> b!2117048 (= e!1347631 (and e!1347629 tp!646552))))

(declare-fun b!2117049 () Bool)

(declare-fun tp!646556 () Bool)

(declare-fun tp!646544 () Bool)

(assert (=> b!2117049 (= e!1347621 (and tp!646556 tp!646544))))

(declare-fun b!2117050 () Bool)

(declare-fun e!1347637 () Bool)

(assert (=> b!2117050 (= e!1347606 e!1347637)))

(declare-fun b!2117051 () Bool)

(declare-fun e!1347618 () Bool)

(declare-fun lt!793895 () MutLongMap!2396)

(assert (=> b!2117051 (= e!1347618 (and e!1347630 ((_ is LongMap!2396) lt!793895)))))

(assert (=> b!2117051 (= lt!793895 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))

(declare-fun b!2117052 () Bool)

(declare-fun res!918215 () Bool)

(declare-fun e!1347625 () Bool)

(assert (=> b!2117052 (=> (not res!918215) (not e!1347625))))

(declare-fun lt!793892 () tuple4!938)

(declare-fun valid!1887 (CacheDown!1586) Bool)

(assert (=> b!2117052 (= res!918215 (valid!1887 (_3!1878 lt!793892)))))

(declare-fun b!2117053 () Bool)

(declare-fun e!1347628 () Bool)

(assert (=> b!2117053 (= e!1347637 e!1347628)))

(assert (=> b!2117054 (= e!1347633 (and e!1347618 tp!646536))))

(declare-fun e!1347609 () Bool)

(declare-fun tp!646541 () Bool)

(declare-fun tp!646537 () Bool)

(declare-fun array_inv!2629 (array!8259) Bool)

(assert (=> b!2117055 (= e!1347622 (and tp!646545 tp!646541 tp!646537 (array_inv!2627 (_keys!2695 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))) (array_inv!2629 (_values!2678 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))) e!1347609))))

(declare-fun b!2117056 () Bool)

(declare-fun res!918209 () Bool)

(declare-fun e!1347620 () Bool)

(assert (=> b!2117056 (=> (not res!918209) (not e!1347620))))

(declare-fun lt!793900 () tuple2!23138)

(assert (=> b!2117056 (= res!918209 (= (list!9507 (_2!13446 lt!793900)) (_2!13449 lt!793908)))))

(declare-fun b!2117057 () Bool)

(declare-fun tp_is_empty!9479 () Bool)

(assert (=> b!2117057 (= e!1347621 tp_is_empty!9479)))

(declare-fun e!1347639 () Bool)

(declare-fun tp!646558 () Bool)

(declare-fun tp!646554 () Bool)

(declare-fun array_inv!2630 (array!8257) Bool)

(assert (=> b!2117058 (= e!1347628 (and tp!646547 tp!646554 tp!646558 (array_inv!2627 (_keys!2694 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))) (array_inv!2630 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))) e!1347639))))

(declare-fun b!2117059 () Bool)

(declare-fun res!918206 () Bool)

(assert (=> b!2117059 (=> (not res!918206) (not e!1347625))))

(assert (=> b!2117059 (= res!918206 (valid!1886 (_2!13450 lt!793892)))))

(declare-fun mapNonEmpty!11568 () Bool)

(declare-fun mapRes!11569 () Bool)

(declare-fun tp!646551 () Bool)

(declare-fun tp!646559 () Bool)

(assert (=> mapNonEmpty!11568 (= mapRes!11569 (and tp!646551 tp!646559))))

(declare-fun mapValue!11568 () List!23685)

(declare-fun mapRest!11569 () (Array (_ BitVec 32) List!23685))

(declare-fun mapKey!11568 () (_ BitVec 32))

(assert (=> mapNonEmpty!11568 (= (arr!3665 (_values!2678 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))) (store mapRest!11569 mapKey!11568 mapValue!11568))))

(declare-fun mapNonEmpty!11569 () Bool)

(declare-fun tp!646538 () Bool)

(declare-fun tp!646543 () Bool)

(assert (=> mapNonEmpty!11569 (= mapRes!11570 (and tp!646538 tp!646543))))

(declare-fun mapRest!11570 () (Array (_ BitVec 32) List!23683))

(declare-fun mapKey!11570 () (_ BitVec 32))

(declare-fun mapValue!11569 () List!23683)

(assert (=> mapNonEmpty!11569 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))) (store mapRest!11570 mapKey!11570 mapValue!11569))))

(declare-fun b!2117060 () Bool)

(declare-fun res!918205 () Bool)

(assert (=> b!2117060 (=> (not res!918205) (not e!1347615))))

(assert (=> b!2117060 (= res!918205 (valid!1887 cacheDown!1229))))

(declare-fun b!2117061 () Bool)

(assert (=> b!2117061 (= e!1347636 (- 1))))

(declare-fun b!2117062 () Bool)

(assert (=> b!2117062 (= e!1347625 (= (totalInput!2863 (_4!469 lt!793892)) totalInput!1306))))

(declare-fun b!2117063 () Bool)

(declare-fun e!1347612 () Bool)

(declare-fun inv!31176 (BalanceConc!15330) Bool)

(assert (=> b!2117063 (= e!1347612 (and e!1347631 (inv!31176 (totalInput!2863 cacheFurthestNullable!141)) e!1347613))))

(declare-fun b!2117064 () Bool)

(assert (=> b!2117064 (= e!1347640 call!128578)))

(declare-fun b!2117065 () Bool)

(declare-fun res!918211 () Bool)

(assert (=> b!2117065 (=> (not res!918211) (not e!1347615))))

(assert (=> b!2117065 (= res!918211 (= (totalInput!2863 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun mapNonEmpty!11570 () Bool)

(declare-fun tp!646557 () Bool)

(declare-fun tp!646534 () Bool)

(assert (=> mapNonEmpty!11570 (= mapRes!11568 (and tp!646557 tp!646534))))

(declare-fun mapKey!11569 () (_ BitVec 32))

(declare-fun mapValue!11570 () List!23681)

(declare-fun mapRest!11568 () (Array (_ BitVec 32) List!23681))

(assert (=> mapNonEmpty!11570 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))) (store mapRest!11568 mapKey!11569 mapValue!11570))))

(declare-fun b!2117066 () Bool)

(declare-fun tp!646553 () Bool)

(assert (=> b!2117066 (= e!1347639 (and tp!646553 mapRes!11570))))

(declare-fun condMapEmpty!11568 () Bool)

(declare-fun mapDefault!11569 () List!23683)

(assert (=> b!2117066 (= condMapEmpty!11568 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))) ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11569)))))

(declare-fun b!2117067 () Bool)

(declare-fun tp!646535 () Bool)

(assert (=> b!2117067 (= e!1347609 (and tp!646535 mapRes!11569))))

(declare-fun condMapEmpty!11570 () Bool)

(declare-fun mapDefault!11568 () List!23685)

(assert (=> b!2117067 (= condMapEmpty!11570 (= (arr!3665 (_values!2678 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))) ((as const (Array (_ BitVec 32) List!23685)) mapDefault!11568)))))

(declare-fun b!2117068 () Bool)

(declare-fun tp!646561 () Bool)

(assert (=> b!2117068 (= e!1347616 (and tp!646561 mapRes!11568))))

(declare-fun condMapEmpty!11569 () Bool)

(declare-fun mapDefault!11570 () List!23681)

(assert (=> b!2117068 (= condMapEmpty!11569 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))) ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11570)))))

(assert (=> b!2117069 (= e!1347634 (not e!1347625))))

(declare-fun res!918203 () Bool)

(assert (=> b!2117069 (=> (not res!918203) (not e!1347625))))

(assert (=> b!2117069 (= res!918203 (= (tuple2!23143 (list!9507 (_1!13446 (_1!13450 lt!793892))) (list!9507 (_2!13446 (_1!13450 lt!793892)))) lt!793908))))

(declare-fun lt!793898 () (InoxSet Context!2430))

(declare-fun findLongestMatchZipperSequenceV3Mem!6 ((InoxSet Context!2430) BalanceConc!15330 BalanceConc!15330 CacheUp!1598 CacheDown!1586 CacheFurthestNullable!560) tuple4!938)

(assert (=> b!2117069 (= lt!793892 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 (_2!13450 lt!793903) (_3!1878 lt!793903) (_4!469 lt!793903)))))

(assert (=> b!2117069 e!1347614))

(declare-fun res!918204 () Bool)

(assert (=> b!2117069 (=> (not res!918204) (not e!1347614))))

(assert (=> b!2117069 (= res!918204 (forall!4845 (_2!13444 (_1!13445 lt!793905)) lambda!78292))))

(assert (=> b!2117069 (= lt!793904 (+ 1 (- (_1!13444 (_1!13445 lt!793905)) lt!793907)))))

(declare-fun furthestNullablePositionStackMem!5 ((InoxSet Context!2430) Int BalanceConc!15330 Int Int List!23684 CacheUp!1598 CacheDown!1586 CacheFurthestNullable!560) tuple3!2814)

(assert (=> b!2117069 (= lt!793905 (furthestNullablePositionStackMem!5 lt!793898 lt!793907 totalInput!1306 lt!793906 e!1347636 Nil!23600 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(declare-fun c!339384 () Bool)

(declare-fun nullableZipper!52 ((InoxSet Context!2430)) Bool)

(assert (=> b!2117069 (= c!339384 (nullableZipper!52 lt!793898))))

(declare-fun size!18432 (BalanceConc!15330) Int)

(assert (=> b!2117069 (= lt!793907 (- lt!793906 (size!18432 input!6660)))))

(assert (=> b!2117069 (= lt!793906 (size!18432 totalInput!1306))))

(assert (=> b!2117069 (= lt!793903 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(assert (=> b!2117069 e!1347620))

(declare-fun res!918207 () Bool)

(assert (=> b!2117069 (=> (not res!918207) (not e!1347620))))

(assert (=> b!2117069 (= res!918207 (= (list!9507 (_1!13446 lt!793900)) (_1!13449 lt!793908)))))

(declare-fun findLongestMatchZipperFastV2!13 ((InoxSet Context!2430) BalanceConc!15330 BalanceConc!15330) tuple2!23138)

(assert (=> b!2117069 (= lt!793900 (findLongestMatchZipperFastV2!13 lt!793898 input!6660 totalInput!1306))))

(declare-fun lt!793893 () Unit!37556)

(declare-fun r!15373 () Regex!5645)

(declare-fun longestMatchV2SameAsRegex!13 (Regex!5645 (InoxSet Context!2430) BalanceConc!15330 BalanceConc!15330) Unit!37556)

(assert (=> b!2117069 (= lt!793893 (longestMatchV2SameAsRegex!13 r!15373 lt!793898 input!6660 totalInput!1306))))

(declare-fun sizeTr!98 (List!23682 Int) Int)

(declare-fun size!18433 (List!23682) Int)

(assert (=> b!2117069 (= (sizeTr!98 lt!793897 0) (size!18433 lt!793897))))

(declare-fun lt!793894 () Unit!37556)

(declare-fun lemmaSizeTrEqualsSize!98 (List!23682 Int) Unit!37556)

(assert (=> b!2117069 (= lt!793894 (lemmaSizeTrEqualsSize!98 lt!793897 0))))

(assert (=> b!2117069 e!1347608))

(declare-fun res!918214 () Bool)

(assert (=> b!2117069 (=> (not res!918214) (not e!1347608))))

(assert (=> b!2117069 (= res!918214 (= (list!9507 (_1!13446 lt!793899)) (_1!13449 lt!793908)))))

(declare-fun findLongestMatch!515 (Regex!5645 List!23682) tuple2!23142)

(assert (=> b!2117069 (= lt!793908 (findLongestMatch!515 r!15373 lt!793897))))

(declare-fun findLongestMatchZipperSequenceV3!8 ((InoxSet Context!2430) BalanceConc!15330 BalanceConc!15330) tuple2!23138)

(assert (=> b!2117069 (= lt!793899 (findLongestMatchZipperSequenceV3!8 lt!793898 input!6660 totalInput!1306))))

(declare-fun lt!793901 () Unit!37556)

(declare-fun longestMatchV3SameAsRegex!8 (Regex!5645 (InoxSet Context!2430) BalanceConc!15330 BalanceConc!15330) Unit!37556)

(assert (=> b!2117069 (= lt!793901 (longestMatchV3SameAsRegex!8 r!15373 lt!793898 input!6660 totalInput!1306))))

(declare-fun focus!277 (Regex!5645) (InoxSet Context!2430))

(assert (=> b!2117069 (= lt!793898 (focus!277 r!15373))))

(declare-fun b!2117070 () Bool)

(declare-fun findLongestMatchWithZipperSequenceV2!82 (Regex!5645 BalanceConc!15330 BalanceConc!15330) tuple2!23138)

(assert (=> b!2117070 (= e!1347620 (= (findLongestMatchWithZipperSequenceV2!82 r!15373 input!6660 totalInput!1306) lt!793900))))

(declare-fun b!2117071 () Bool)

(declare-fun tp!646533 () Bool)

(assert (=> b!2117071 (= e!1347621 tp!646533)))

(declare-fun b!2117072 () Bool)

(declare-fun res!918213 () Bool)

(assert (=> b!2117072 (=> (not res!918213) (not e!1347625))))

(assert (=> b!2117072 (= res!918213 (valid!1885 (_4!469 lt!793892)))))

(declare-fun b!2117073 () Bool)

(assert (=> b!2117073 (= e!1347611 e!1347627)))

(declare-fun res!918217 () Bool)

(assert (=> start!206714 (=> (not res!918217) (not e!1347615))))

(declare-fun validRegex!2229 (Regex!5645) Bool)

(assert (=> start!206714 (= res!918217 (validRegex!2229 r!15373))))

(assert (=> start!206714 e!1347615))

(declare-fun inv!31177 (CacheDown!1586) Bool)

(assert (=> start!206714 (and (inv!31177 cacheDown!1229) e!1347632)))

(assert (=> start!206714 e!1347621))

(declare-fun inv!31178 (CacheUp!1598) Bool)

(assert (=> start!206714 (and (inv!31178 cacheUp!1110) e!1347623)))

(assert (=> start!206714 (and (inv!31176 input!6660) e!1347619)))

(assert (=> start!206714 (and (inv!31176 totalInput!1306) e!1347626)))

(declare-fun inv!31179 (CacheFurthestNullable!560) Bool)

(assert (=> start!206714 (and (inv!31179 cacheFurthestNullable!141) e!1347612)))

(declare-fun mapIsEmpty!11569 () Bool)

(assert (=> mapIsEmpty!11569 mapRes!11569))

(assert (= (and start!206714 res!918217) b!2117040))

(assert (= (and b!2117040 res!918212) b!2117060))

(assert (= (and b!2117060 res!918205) b!2117034))

(assert (= (and b!2117034 res!918208) b!2117065))

(assert (= (and b!2117065 res!918211) b!2117031))

(assert (= (and b!2117031 res!918216) b!2117069))

(assert (= (and b!2117069 res!918214) b!2117041))

(assert (= (and b!2117069 res!918207) b!2117056))

(assert (= (and b!2117056 res!918209) b!2117070))

(assert (= (and b!2117069 c!339384) b!2117043))

(assert (= (and b!2117069 (not c!339384)) b!2117061))

(assert (= (and b!2117069 res!918204) b!2117039))

(assert (= (and b!2117039 res!918210) b!2117046))

(assert (= (and b!2117046 c!339385) b!2117030))

(assert (= (and b!2117046 (not c!339385)) b!2117064))

(assert (= (or b!2117030 b!2117064) bm!128573))

(assert (= (and b!2117069 res!918203) b!2117052))

(assert (= (and b!2117052 res!918215) b!2117059))

(assert (= (and b!2117059 res!918206) b!2117072))

(assert (= (and b!2117072 res!918213) b!2117062))

(assert (= (and b!2117068 condMapEmpty!11569) mapIsEmpty!11570))

(assert (= (and b!2117068 (not condMapEmpty!11569)) mapNonEmpty!11570))

(assert (= b!2117035 b!2117068))

(assert (= b!2117073 b!2117035))

(assert (= b!2117036 b!2117073))

(assert (= (and b!2117051 ((_ is LongMap!2396) (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))) b!2117036))

(assert (= b!2117054 b!2117051))

(assert (= (and b!2117038 ((_ is HashMap!2311) (cache!2692 cacheDown!1229))) b!2117054))

(assert (= start!206714 b!2117038))

(assert (= (and start!206714 ((_ is ElementMatch!5645) r!15373)) b!2117057))

(assert (= (and start!206714 ((_ is Concat!9947) r!15373)) b!2117049))

(assert (= (and start!206714 ((_ is Star!5645) r!15373)) b!2117071))

(assert (= (and start!206714 ((_ is Union!5645) r!15373)) b!2117047))

(assert (= (and b!2117066 condMapEmpty!11568) mapIsEmpty!11568))

(assert (= (and b!2117066 (not condMapEmpty!11568)) mapNonEmpty!11569))

(assert (= b!2117058 b!2117066))

(assert (= b!2117053 b!2117058))

(assert (= b!2117050 b!2117053))

(assert (= (and b!2117029 ((_ is LongMap!2397) (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))) b!2117050))

(assert (= b!2117028 b!2117029))

(assert (= (and b!2117044 ((_ is HashMap!2310) (cache!2691 cacheUp!1110))) b!2117028))

(assert (= start!206714 b!2117044))

(assert (= start!206714 b!2117027))

(assert (= start!206714 b!2117037))

(assert (= (and b!2117067 condMapEmpty!11570) mapIsEmpty!11569))

(assert (= (and b!2117067 (not condMapEmpty!11570)) mapNonEmpty!11568))

(assert (= b!2117055 b!2117067))

(assert (= b!2117042 b!2117055))

(assert (= b!2117033 b!2117042))

(assert (= (and b!2117045 ((_ is LongMap!2398) (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))) b!2117033))

(assert (= b!2117048 b!2117045))

(assert (= (and b!2117063 ((_ is HashMap!2312) (cache!2693 cacheFurthestNullable!141))) b!2117048))

(assert (= b!2117063 b!2117032))

(assert (= start!206714 b!2117063))

(declare-fun m!2571829 () Bool)

(assert (=> mapNonEmpty!11569 m!2571829))

(declare-fun m!2571831 () Bool)

(assert (=> b!2117035 m!2571831))

(declare-fun m!2571833 () Bool)

(assert (=> b!2117035 m!2571833))

(declare-fun m!2571835 () Bool)

(assert (=> b!2117069 m!2571835))

(declare-fun m!2571837 () Bool)

(assert (=> b!2117069 m!2571837))

(declare-fun m!2571839 () Bool)

(assert (=> b!2117069 m!2571839))

(declare-fun m!2571841 () Bool)

(assert (=> b!2117069 m!2571841))

(declare-fun m!2571843 () Bool)

(assert (=> b!2117069 m!2571843))

(declare-fun m!2571845 () Bool)

(assert (=> b!2117069 m!2571845))

(declare-fun m!2571847 () Bool)

(assert (=> b!2117069 m!2571847))

(declare-fun m!2571849 () Bool)

(assert (=> b!2117069 m!2571849))

(declare-fun m!2571851 () Bool)

(assert (=> b!2117069 m!2571851))

(declare-fun m!2571853 () Bool)

(assert (=> b!2117069 m!2571853))

(declare-fun m!2571855 () Bool)

(assert (=> b!2117069 m!2571855))

(declare-fun m!2571857 () Bool)

(assert (=> b!2117069 m!2571857))

(declare-fun m!2571859 () Bool)

(assert (=> b!2117069 m!2571859))

(declare-fun m!2571861 () Bool)

(assert (=> b!2117069 m!2571861))

(declare-fun m!2571863 () Bool)

(assert (=> b!2117069 m!2571863))

(declare-fun m!2571865 () Bool)

(assert (=> b!2117069 m!2571865))

(declare-fun m!2571867 () Bool)

(assert (=> b!2117069 m!2571867))

(declare-fun m!2571869 () Bool)

(assert (=> b!2117069 m!2571869))

(declare-fun m!2571871 () Bool)

(assert (=> b!2117069 m!2571871))

(declare-fun m!2571873 () Bool)

(assert (=> b!2117069 m!2571873))

(declare-fun m!2571875 () Bool)

(assert (=> b!2117039 m!2571875))

(declare-fun m!2571877 () Bool)

(assert (=> b!2117040 m!2571877))

(declare-fun m!2571879 () Bool)

(assert (=> mapNonEmpty!11568 m!2571879))

(declare-fun m!2571881 () Bool)

(assert (=> b!2117052 m!2571881))

(declare-fun m!2571883 () Bool)

(assert (=> b!2117063 m!2571883))

(declare-fun m!2571885 () Bool)

(assert (=> b!2117060 m!2571885))

(declare-fun m!2571887 () Bool)

(assert (=> start!206714 m!2571887))

(declare-fun m!2571889 () Bool)

(assert (=> start!206714 m!2571889))

(declare-fun m!2571891 () Bool)

(assert (=> start!206714 m!2571891))

(declare-fun m!2571893 () Bool)

(assert (=> start!206714 m!2571893))

(declare-fun m!2571895 () Bool)

(assert (=> start!206714 m!2571895))

(declare-fun m!2571897 () Bool)

(assert (=> start!206714 m!2571897))

(declare-fun m!2571899 () Bool)

(assert (=> b!2117058 m!2571899))

(declare-fun m!2571901 () Bool)

(assert (=> b!2117058 m!2571901))

(declare-fun m!2571903 () Bool)

(assert (=> b!2117031 m!2571903))

(assert (=> b!2117031 m!2571903))

(declare-fun m!2571905 () Bool)

(assert (=> b!2117031 m!2571905))

(declare-fun m!2571907 () Bool)

(assert (=> b!2117031 m!2571907))

(declare-fun m!2571909 () Bool)

(assert (=> b!2117070 m!2571909))

(declare-fun m!2571911 () Bool)

(assert (=> b!2117041 m!2571911))

(declare-fun m!2571913 () Bool)

(assert (=> b!2117072 m!2571913))

(declare-fun m!2571915 () Bool)

(assert (=> b!2117037 m!2571915))

(declare-fun m!2571917 () Bool)

(assert (=> b!2117046 m!2571917))

(declare-fun m!2571919 () Bool)

(assert (=> b!2117055 m!2571919))

(declare-fun m!2571921 () Bool)

(assert (=> b!2117055 m!2571921))

(declare-fun m!2571923 () Bool)

(assert (=> b!2117032 m!2571923))

(declare-fun m!2571925 () Bool)

(assert (=> bm!128573 m!2571925))

(declare-fun m!2571927 () Bool)

(assert (=> mapNonEmpty!11570 m!2571927))

(declare-fun m!2571929 () Bool)

(assert (=> b!2117059 m!2571929))

(declare-fun m!2571931 () Bool)

(assert (=> b!2117034 m!2571931))

(declare-fun m!2571933 () Bool)

(assert (=> b!2117056 m!2571933))

(declare-fun m!2571935 () Bool)

(assert (=> b!2117027 m!2571935))

(check-sat (not b!2117066) (not b_next!62107) (not b!2117031) (not b!2117060) (not bm!128573) (not mapNonEmpty!11569) (not b!2117069) (not setNonEmpty!14331) tp_is_empty!9479 (not b!2117049) (not b!2117055) (not b!2117058) (not b!2117063) (not b!2117041) (not b!2117034) b_and!170985 (not b!2117071) (not b!2117027) (not b_next!62101) (not b!2117116) (not b!2117032) (not b!2117123) (not mapNonEmpty!11570) (not b!2117072) (not b!2117117) (not mapNonEmpty!11575) (not b!2117059) b_and!170977 (not mapNonEmpty!11576) (not b_next!62103) b_and!170979 (not b!2117035) (not b!2117039) (not b_next!62109) b_and!170983 (not b!2117070) (not b!2117037) b_and!170981 (not mapNonEmpty!11568) (not start!206714) (not b!2117046) (not b!2117108) (not b_next!62111) (not b_next!62105) (not b!2117040) (not b!2117067) b_and!170987 (not b!2117047) (not b!2117068) (not b!2117111) (not b!2117056) (not b!2117052))
(check-sat b_and!170985 (not b_next!62101) (not b_next!62107) b_and!170977 b_and!170981 b_and!170987 (not b_next!62103) b_and!170979 (not b_next!62109) b_and!170983 (not b_next!62111) (not b_next!62105))
(get-model)

(declare-fun d!642668 () Bool)

(declare-fun c!339390 () Bool)

(assert (=> d!642668 (= c!339390 ((_ is Node!7784) (c!339387 (totalInput!2863 cacheFurthestNullable!141))))))

(declare-fun e!1347693 () Bool)

(assert (=> d!642668 (= (inv!31175 (c!339387 (totalInput!2863 cacheFurthestNullable!141))) e!1347693)))

(declare-fun b!2117132 () Bool)

(declare-fun inv!31180 (Conc!7784) Bool)

(assert (=> b!2117132 (= e!1347693 (inv!31180 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))))

(declare-fun b!2117133 () Bool)

(declare-fun e!1347694 () Bool)

(assert (=> b!2117133 (= e!1347693 e!1347694)))

(declare-fun res!918221 () Bool)

(assert (=> b!2117133 (= res!918221 (not ((_ is Leaf!11374) (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))

(assert (=> b!2117133 (=> res!918221 e!1347694)))

(declare-fun b!2117134 () Bool)

(declare-fun inv!31181 (Conc!7784) Bool)

(assert (=> b!2117134 (= e!1347694 (inv!31181 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))))

(assert (= (and d!642668 c!339390) b!2117132))

(assert (= (and d!642668 (not c!339390)) b!2117133))

(assert (= (and b!2117133 (not res!918221)) b!2117134))

(declare-fun m!2571937 () Bool)

(assert (=> b!2117132 m!2571937))

(declare-fun m!2571939 () Bool)

(assert (=> b!2117134 m!2571939))

(assert (=> b!2117032 d!642668))

(declare-fun d!642670 () Bool)

(declare-fun list!9508 (Conc!7784) List!23682)

(assert (=> d!642670 (= (list!9507 (_2!13446 lt!793899)) (list!9508 (c!339387 (_2!13446 lt!793899))))))

(declare-fun bs!441244 () Bool)

(assert (= bs!441244 d!642670))

(declare-fun m!2571941 () Bool)

(assert (=> bs!441244 m!2571941))

(assert (=> b!2117041 d!642670))

(declare-fun bs!441245 () Bool)

(declare-fun d!642672 () Bool)

(assert (= bs!441245 (and d!642672 b!2117069)))

(declare-fun lt!793929 () tuple3!2814)

(declare-fun lambda!78298 () Int)

(assert (=> bs!441245 (= (= (_1!13444 (_1!13445 lt!793929)) (_1!13444 (_1!13445 lt!793905))) (= lambda!78298 lambda!78292))))

(declare-fun bs!441246 () Bool)

(assert (= bs!441246 (and d!642672 b!2117039)))

(assert (=> bs!441246 (not (= lambda!78298 lambda!78293))))

(declare-fun b!2117147 () Bool)

(declare-fun e!1347716 () Bool)

(declare-fun mapRes!11577 () Bool)

(assert (=> b!2117147 (= e!1347716 mapRes!11577)))

(declare-fun condMapEmpty!11578 () Bool)

(declare-fun mapDefault!11578 () List!23681)

(assert (=> b!2117147 (= condMapEmpty!11578 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793929)))))))) ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11578)))))

(declare-fun b!2117148 () Bool)

(declare-fun e!1347715 () Bool)

(declare-fun e!1347706 () Bool)

(assert (=> b!2117148 (= e!1347715 e!1347706)))

(declare-fun b!2117149 () Bool)

(declare-fun e!1347708 () Bool)

(declare-fun e!1347707 () Bool)

(assert (=> b!2117149 (= e!1347708 e!1347707)))

(declare-fun b!2117150 () Bool)

(assert (=> b!2117150 (= e!1347707 e!1347716)))

(declare-fun mapIsEmpty!11577 () Bool)

(declare-fun mapRes!11578 () Bool)

(assert (=> mapIsEmpty!11577 mapRes!11578))

(declare-fun mapNonEmpty!11577 () Bool)

(assert (=> mapNonEmpty!11577 (= mapRes!11577 true)))

(declare-fun mapKey!11577 () (_ BitVec 32))

(declare-fun mapValue!11577 () List!23681)

(declare-fun mapRest!11577 () (Array (_ BitVec 32) List!23681))

(assert (=> mapNonEmpty!11577 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793929)))))))) (store mapRest!11577 mapKey!11577 mapValue!11577))))

(declare-fun b!2117151 () Bool)

(declare-fun e!1347714 () Bool)

(assert (=> b!2117151 (= e!1347706 e!1347714)))

(declare-fun b!2117152 () Bool)

(declare-fun e!1347709 () Bool)

(declare-fun e!1347712 () Bool)

(assert (=> b!2117152 (= e!1347709 e!1347712)))

(declare-fun b!2117153 () Bool)

(declare-fun e!1347711 () Bool)

(assert (=> b!2117153 (= e!1347711 e!1347709)))

(declare-fun b!2117154 () Bool)

(declare-fun e!1347701 () Bool)

(declare-fun lt!793936 () MutLongMap!2397)

(assert (=> b!2117154 (= e!1347701 (and e!1347711 ((_ is LongMap!2397) lt!793936)))))

(assert (=> b!2117154 (= lt!793936 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793929)))))))

(declare-fun b!2117155 () Bool)

(declare-fun e!1347703 () Bool)

(assert (=> b!2117155 (= e!1347703 mapRes!11578)))

(declare-fun condMapEmpty!11577 () Bool)

(declare-fun mapDefault!11577 () List!23683)

(assert (=> b!2117155 (= condMapEmpty!11577 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793929)))))))) ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11577)))))

(declare-fun b!2117156 () Bool)

(declare-fun e!1347704 () Bool)

(declare-fun e!1347713 () Bool)

(assert (=> b!2117156 (= e!1347704 e!1347713)))

(declare-fun b!2117158 () Bool)

(declare-fun e!1347710 () Bool)

(declare-fun lt!793937 () MutLongMap!2396)

(assert (=> b!2117158 (= e!1347714 (and e!1347710 ((_ is LongMap!2396) lt!793937)))))

(assert (=> b!2117158 (= lt!793937 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793929)))))))

(declare-fun setNonEmpty!14332 () Bool)

(declare-fun setRes!14332 () Bool)

(assert (=> setNonEmpty!14332 (= setRes!14332 true)))

(declare-fun setElem!14332 () Context!2430)

(declare-fun setRest!14332 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14332 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!793929)))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14332 true) setRest!14332))))

(declare-fun b!2117159 () Bool)

(assert (=> b!2117159 (= e!1347710 e!1347708)))

(declare-fun mapIsEmpty!11578 () Bool)

(assert (=> mapIsEmpty!11578 mapRes!11577))

(declare-fun setIsEmpty!14332 () Bool)

(assert (=> setIsEmpty!14332 setRes!14332))

(declare-fun b!2117160 () Bool)

(declare-fun e!1347702 () Bool)

(assert (=> b!2117160 (= e!1347702 e!1347701)))

(declare-fun b!2117161 () Bool)

(assert (=> b!2117161 (= e!1347713 setRes!14332)))

(declare-fun condSetEmpty!14332 () Bool)

(assert (=> b!2117161 (= condSetEmpty!14332 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!793929)))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117157 () Bool)

(declare-fun e!1347705 () Bool)

(assert (=> b!2117157 (= e!1347705 e!1347702)))

(assert (=> d!642672 (and e!1347704 e!1347705 e!1347715)))

(declare-fun b!2117162 () Bool)

(assert (=> b!2117162 (= e!1347712 e!1347703)))

(declare-fun mapNonEmpty!11578 () Bool)

(assert (=> mapNonEmpty!11578 (= mapRes!11578 true)))

(declare-fun mapRest!11578 () (Array (_ BitVec 32) List!23683))

(declare-fun mapKey!11578 () (_ BitVec 32))

(declare-fun mapValue!11578 () List!23683)

(assert (=> mapNonEmpty!11578 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793929)))))))) (store mapRest!11578 mapKey!11578 mapValue!11578))))

(assert (= (and b!2117161 condSetEmpty!14332) setIsEmpty!14332))

(assert (= (and b!2117161 (not condSetEmpty!14332)) setNonEmpty!14332))

(assert (= b!2117156 b!2117161))

(assert (= (and d!642672 ((_ is Cons!23600) (_2!13444 (_1!13445 lt!793929)))) b!2117156))

(assert (= (and b!2117155 condMapEmpty!11577) mapIsEmpty!11577))

(assert (= (and b!2117155 (not condMapEmpty!11577)) mapNonEmpty!11578))

(assert (= b!2117162 b!2117155))

(assert (= b!2117152 b!2117162))

(assert (= b!2117153 b!2117152))

(assert (= (and b!2117154 ((_ is LongMap!2397) (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793929)))))) b!2117153))

(assert (= b!2117160 b!2117154))

(assert (= (and b!2117157 ((_ is HashMap!2310) (cache!2691 (_2!13445 lt!793929)))) b!2117160))

(assert (= d!642672 b!2117157))

(assert (= (and b!2117147 condMapEmpty!11578) mapIsEmpty!11578))

(assert (= (and b!2117147 (not condMapEmpty!11578)) mapNonEmpty!11577))

(assert (= b!2117150 b!2117147))

(assert (= b!2117149 b!2117150))

(assert (= b!2117159 b!2117149))

(assert (= (and b!2117158 ((_ is LongMap!2396) (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793929)))))) b!2117159))

(assert (= b!2117151 b!2117158))

(assert (= (and b!2117148 ((_ is HashMap!2311) (cache!2692 (_3!1876 lt!793929)))) b!2117151))

(assert (= d!642672 b!2117148))

(assert (=> b!2117150 (< (dynLambda!11297 order!14569 (defaultEntry!2761 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793929)))))))) (dynLambda!11298 order!14571 lambda!78298))))

(assert (=> b!2117151 (< (dynLambda!11299 order!14573 (defaultValue!2473 (cache!2692 (_3!1876 lt!793929)))) (dynLambda!11298 order!14571 lambda!78298))))

(assert (=> b!2117162 (< (dynLambda!11300 order!14575 (defaultEntry!2762 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793929)))))))) (dynLambda!11298 order!14571 lambda!78298))))

(assert (=> b!2117160 (< (dynLambda!11301 order!14577 (defaultValue!2472 (cache!2691 (_2!13445 lt!793929)))) (dynLambda!11298 order!14571 lambda!78298))))

(declare-fun m!2571943 () Bool)

(assert (=> mapNonEmpty!11577 m!2571943))

(declare-fun m!2571945 () Bool)

(assert (=> mapNonEmpty!11578 m!2571945))

(declare-fun lambda!78299 () Int)

(assert (=> bs!441245 (not (= lambda!78299 lambda!78292))))

(assert (=> bs!441246 (= lambda!78299 lambda!78293)))

(assert (=> d!642672 (not (= lambda!78299 lambda!78298))))

(assert (=> d!642672 true))

(declare-fun b!2117143 () Bool)

(declare-fun e!1347699 () Int)

(declare-fun lt!793931 () Int)

(assert (=> b!2117143 (= e!1347699 (- lt!793931 1))))

(declare-fun b!2117144 () Bool)

(assert (=> b!2117144 (= e!1347699 (- 1))))

(declare-fun b!2117145 () Bool)

(declare-fun e!1347700 () tuple2!23138)

(declare-fun call!128581 () tuple2!23138)

(assert (=> b!2117145 (= e!1347700 call!128581)))

(declare-fun lt!793935 () tuple4!938)

(declare-fun ++!6313 (List!23682 List!23682) List!23682)

(assert (=> d!642672 (= (++!6313 (list!9507 (_1!13446 (_1!13450 lt!793935))) (list!9507 (_2!13446 (_1!13450 lt!793935)))) (list!9507 input!6660))))

(declare-fun lt!793932 () Int)

(assert (=> d!642672 (= lt!793935 (tuple4!939 e!1347700 (_2!13445 lt!793929) (_3!1876 lt!793929) (_2!13451 (fillUpCache!5 (_2!13444 (_1!13445 lt!793929)) totalInput!1306 lt!793932 (_1!13444 (_1!13445 lt!793929)) 0 cacheFurthestNullable!141))))))

(declare-fun c!339395 () Bool)

(declare-fun lt!793933 () Int)

(assert (=> d!642672 (= c!339395 (< lt!793933 0))))

(declare-fun lt!793934 () Unit!37556)

(declare-fun Unit!37558 () Unit!37556)

(assert (=> d!642672 (= lt!793934 Unit!37558)))

(assert (=> d!642672 (forall!4845 (_2!13444 (_1!13445 lt!793929)) lambda!78299)))

(declare-fun lt!793930 () Unit!37556)

(declare-fun Unit!37559 () Unit!37556)

(assert (=> d!642672 (= lt!793930 Unit!37559)))

(assert (=> d!642672 (forall!4845 (_2!13444 (_1!13445 lt!793929)) lambda!78298)))

(assert (=> d!642672 (= lt!793933 (+ (- (_1!13444 (_1!13445 lt!793929)) lt!793931) 1))))

(assert (=> d!642672 (= lt!793929 (furthestNullablePositionStackMem!5 lt!793898 lt!793931 totalInput!1306 lt!793932 e!1347699 Nil!23600 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(declare-fun c!339396 () Bool)

(assert (=> d!642672 (= c!339396 (nullableZipper!52 lt!793898))))

(assert (=> d!642672 (= lt!793931 (- lt!793932 (size!18432 input!6660)))))

(assert (=> d!642672 (= lt!793932 (size!18432 totalInput!1306))))

(assert (=> d!642672 (isSuffix!605 (list!9507 input!6660) (list!9507 totalInput!1306))))

(assert (=> d!642672 (= (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141) lt!793935)))

(declare-fun b!2117146 () Bool)

(assert (=> b!2117146 (= e!1347700 call!128581)))

(declare-fun bm!128576 () Bool)

(assert (=> bm!128576 (= call!128581 (splitAt!15 input!6660 (ite c!339395 0 lt!793933)))))

(assert (= (and d!642672 c!339396) b!2117143))

(assert (= (and d!642672 (not c!339396)) b!2117144))

(assert (= (and d!642672 c!339395) b!2117146))

(assert (= (and d!642672 (not c!339395)) b!2117145))

(assert (= (or b!2117146 b!2117145) bm!128576))

(assert (=> d!642672 m!2571837))

(declare-fun m!2571947 () Bool)

(assert (=> d!642672 m!2571947))

(assert (=> d!642672 m!2571873))

(assert (=> d!642672 m!2571907))

(assert (=> d!642672 m!2571903))

(declare-fun m!2571949 () Bool)

(assert (=> d!642672 m!2571949))

(declare-fun m!2571951 () Bool)

(assert (=> d!642672 m!2571951))

(declare-fun m!2571953 () Bool)

(assert (=> d!642672 m!2571953))

(declare-fun m!2571955 () Bool)

(assert (=> d!642672 m!2571955))

(assert (=> d!642672 m!2571903))

(declare-fun m!2571957 () Bool)

(assert (=> d!642672 m!2571957))

(assert (=> d!642672 m!2571947))

(assert (=> d!642672 m!2571955))

(declare-fun m!2571959 () Bool)

(assert (=> d!642672 m!2571959))

(assert (=> d!642672 m!2571907))

(assert (=> d!642672 m!2571843))

(declare-fun m!2571961 () Bool)

(assert (=> d!642672 m!2571961))

(declare-fun m!2571963 () Bool)

(assert (=> bm!128576 m!2571963))

(assert (=> b!2117069 d!642672))

(declare-fun d!642674 () Bool)

(declare-fun c!339399 () Bool)

(assert (=> d!642674 (= c!339399 ((_ is Nil!23598) lt!793897))))

(declare-fun e!1347719 () Int)

(assert (=> d!642674 (= (sizeTr!98 lt!793897 0) e!1347719)))

(declare-fun b!2117167 () Bool)

(assert (=> b!2117167 (= e!1347719 0)))

(declare-fun b!2117168 () Bool)

(assert (=> b!2117168 (= e!1347719 (sizeTr!98 (t!196191 lt!793897) (+ 0 1)))))

(assert (= (and d!642674 c!339399) b!2117167))

(assert (= (and d!642674 (not c!339399)) b!2117168))

(declare-fun m!2571965 () Bool)

(assert (=> b!2117168 m!2571965))

(assert (=> b!2117069 d!642674))

(declare-fun d!642676 () Bool)

(declare-fun lt!793940 () Int)

(assert (=> d!642676 (= lt!793940 (size!18433 (list!9507 totalInput!1306)))))

(declare-fun size!18434 (Conc!7784) Int)

(assert (=> d!642676 (= lt!793940 (size!18434 (c!339387 totalInput!1306)))))

(assert (=> d!642676 (= (size!18432 totalInput!1306) lt!793940)))

(declare-fun bs!441247 () Bool)

(assert (= bs!441247 d!642676))

(assert (=> bs!441247 m!2571903))

(assert (=> bs!441247 m!2571903))

(declare-fun m!2571967 () Bool)

(assert (=> bs!441247 m!2571967))

(declare-fun m!2571969 () Bool)

(assert (=> bs!441247 m!2571969))

(assert (=> b!2117069 d!642676))

(declare-fun d!642678 () Bool)

(declare-fun e!1347722 () Bool)

(assert (=> d!642678 e!1347722))

(declare-fun res!918224 () Bool)

(assert (=> d!642678 (=> (not res!918224) (not e!1347722))))

(assert (=> d!642678 (= res!918224 (= (list!9507 (_1!13446 (findLongestMatchZipperFastV2!13 lt!793898 input!6660 totalInput!1306))) (_1!13449 (findLongestMatch!515 r!15373 (list!9507 input!6660)))))))

(declare-fun lt!793943 () Unit!37556)

(declare-fun choose!12655 (Regex!5645 (InoxSet Context!2430) BalanceConc!15330 BalanceConc!15330) Unit!37556)

(assert (=> d!642678 (= lt!793943 (choose!12655 r!15373 lt!793898 input!6660 totalInput!1306))))

(assert (=> d!642678 (validRegex!2229 r!15373)))

(assert (=> d!642678 (= (longestMatchV2SameAsRegex!13 r!15373 lt!793898 input!6660 totalInput!1306) lt!793943)))

(declare-fun b!2117171 () Bool)

(assert (=> b!2117171 (= e!1347722 (= (list!9507 (_2!13446 (findLongestMatchZipperFastV2!13 lt!793898 input!6660 totalInput!1306))) (_2!13449 (findLongestMatch!515 r!15373 (list!9507 input!6660)))))))

(assert (= (and d!642678 res!918224) b!2117171))

(declare-fun m!2571971 () Bool)

(assert (=> d!642678 m!2571971))

(assert (=> d!642678 m!2571887))

(assert (=> d!642678 m!2571845))

(assert (=> d!642678 m!2571907))

(declare-fun m!2571973 () Bool)

(assert (=> d!642678 m!2571973))

(declare-fun m!2571975 () Bool)

(assert (=> d!642678 m!2571975))

(assert (=> d!642678 m!2571907))

(assert (=> b!2117171 m!2571845))

(declare-fun m!2571977 () Bool)

(assert (=> b!2117171 m!2571977))

(assert (=> b!2117171 m!2571907))

(assert (=> b!2117171 m!2571907))

(assert (=> b!2117171 m!2571973))

(assert (=> b!2117069 d!642678))

(declare-fun d!642680 () Bool)

(assert (=> d!642680 (= (list!9507 (_1!13446 lt!793899)) (list!9508 (c!339387 (_1!13446 lt!793899))))))

(declare-fun bs!441248 () Bool)

(assert (= bs!441248 d!642680))

(declare-fun m!2571979 () Bool)

(assert (=> bs!441248 m!2571979))

(assert (=> b!2117069 d!642680))

(declare-fun bs!441249 () Bool)

(declare-fun d!642682 () Bool)

(assert (= bs!441249 (and d!642682 b!2117069)))

(declare-fun lambda!78314 () Int)

(declare-fun lt!793980 () Int)

(assert (=> bs!441249 (= (= lt!793980 (_1!13444 (_1!13445 lt!793905))) (= lambda!78314 lambda!78292))))

(declare-fun bs!441250 () Bool)

(assert (= bs!441250 (and d!642682 b!2117039)))

(assert (=> bs!441250 (not (= lambda!78314 lambda!78293))))

(declare-fun bs!441251 () Bool)

(assert (= bs!441251 (and d!642682 d!642672)))

(assert (=> bs!441251 (= (= lt!793980 (_1!13444 (_1!13445 lt!793929))) (= lambda!78314 lambda!78298))))

(assert (=> bs!441251 (not (= lambda!78314 lambda!78299))))

(assert (=> d!642682 true))

(declare-fun bs!441252 () Bool)

(declare-fun b!2117203 () Bool)

(assert (= bs!441252 (and b!2117203 b!2117069)))

(declare-fun lambda!78315 () Int)

(assert (=> bs!441252 (= (= e!1347636 (_1!13444 (_1!13445 lt!793905))) (= lambda!78315 lambda!78292))))

(declare-fun bs!441253 () Bool)

(assert (= bs!441253 (and b!2117203 d!642672)))

(assert (=> bs!441253 (not (= lambda!78315 lambda!78299))))

(declare-fun bs!441254 () Bool)

(assert (= bs!441254 (and b!2117203 b!2117039)))

(assert (=> bs!441254 (not (= lambda!78315 lambda!78293))))

(assert (=> bs!441253 (= (= e!1347636 (_1!13444 (_1!13445 lt!793929))) (= lambda!78315 lambda!78298))))

(declare-fun bs!441255 () Bool)

(assert (= bs!441255 (and b!2117203 d!642682)))

(assert (=> bs!441255 (= (= e!1347636 lt!793980) (= lambda!78315 lambda!78314))))

(assert (=> b!2117203 true))

(declare-fun bs!441256 () Bool)

(declare-fun b!2117201 () Bool)

(assert (= bs!441256 (and b!2117201 b!2117069)))

(declare-fun lt!793973 () Int)

(declare-fun lambda!78316 () Int)

(assert (=> bs!441256 (= (= lt!793973 (_1!13444 (_1!13445 lt!793905))) (= lambda!78316 lambda!78292))))

(declare-fun bs!441257 () Bool)

(assert (= bs!441257 (and b!2117201 d!642672)))

(assert (=> bs!441257 (not (= lambda!78316 lambda!78299))))

(declare-fun bs!441258 () Bool)

(assert (= bs!441258 (and b!2117201 b!2117039)))

(assert (=> bs!441258 (not (= lambda!78316 lambda!78293))))

(declare-fun bs!441259 () Bool)

(assert (= bs!441259 (and b!2117201 b!2117203)))

(assert (=> bs!441259 (= (= lt!793973 e!1347636) (= lambda!78316 lambda!78315))))

(assert (=> bs!441257 (= (= lt!793973 (_1!13444 (_1!13445 lt!793929))) (= lambda!78316 lambda!78298))))

(declare-fun bs!441260 () Bool)

(assert (= bs!441260 (and b!2117201 d!642682)))

(assert (=> bs!441260 (= (= lt!793973 lt!793980) (= lambda!78316 lambda!78314))))

(assert (=> b!2117201 true))

(declare-fun bs!441261 () Bool)

(declare-fun b!2117209 () Bool)

(assert (= bs!441261 (and b!2117209 b!2117069)))

(declare-fun lt!793984 () tuple3!2814)

(declare-fun lambda!78317 () Int)

(assert (=> bs!441261 (= (= (_1!13444 (_1!13445 lt!793984)) (_1!13444 (_1!13445 lt!793905))) (= lambda!78317 lambda!78292))))

(declare-fun bs!441262 () Bool)

(assert (= bs!441262 (and b!2117209 d!642672)))

(assert (=> bs!441262 (not (= lambda!78317 lambda!78299))))

(declare-fun bs!441263 () Bool)

(assert (= bs!441263 (and b!2117209 b!2117039)))

(assert (=> bs!441263 (not (= lambda!78317 lambda!78293))))

(declare-fun bs!441264 () Bool)

(assert (= bs!441264 (and b!2117209 b!2117203)))

(assert (=> bs!441264 (= (= (_1!13444 (_1!13445 lt!793984)) e!1347636) (= lambda!78317 lambda!78315))))

(assert (=> bs!441262 (= (= (_1!13444 (_1!13445 lt!793984)) (_1!13444 (_1!13445 lt!793929))) (= lambda!78317 lambda!78298))))

(declare-fun bs!441265 () Bool)

(assert (= bs!441265 (and b!2117209 b!2117201)))

(assert (=> bs!441265 (= (= (_1!13444 (_1!13445 lt!793984)) lt!793973) (= lambda!78317 lambda!78316))))

(declare-fun bs!441266 () Bool)

(assert (= bs!441266 (and b!2117209 d!642682)))

(assert (=> bs!441266 (= (= (_1!13444 (_1!13445 lt!793984)) lt!793980) (= lambda!78317 lambda!78314))))

(declare-fun b!2117213 () Bool)

(declare-fun e!1347753 () Bool)

(declare-fun mapRes!11579 () Bool)

(assert (=> b!2117213 (= e!1347753 mapRes!11579)))

(declare-fun condMapEmpty!11580 () Bool)

(declare-fun mapDefault!11580 () List!23681)

(assert (=> b!2117213 (= condMapEmpty!11580 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793984)))))))) ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11580)))))

(declare-fun b!2117214 () Bool)

(declare-fun e!1347752 () Bool)

(declare-fun e!1347743 () Bool)

(assert (=> b!2117214 (= e!1347752 e!1347743)))

(declare-fun b!2117215 () Bool)

(declare-fun e!1347745 () Bool)

(declare-fun e!1347744 () Bool)

(assert (=> b!2117215 (= e!1347745 e!1347744)))

(declare-fun b!2117216 () Bool)

(assert (=> b!2117216 (= e!1347744 e!1347753)))

(declare-fun mapIsEmpty!11579 () Bool)

(declare-fun mapRes!11580 () Bool)

(assert (=> mapIsEmpty!11579 mapRes!11580))

(declare-fun mapNonEmpty!11579 () Bool)

(assert (=> mapNonEmpty!11579 (= mapRes!11579 true)))

(declare-fun mapKey!11579 () (_ BitVec 32))

(declare-fun mapRest!11579 () (Array (_ BitVec 32) List!23681))

(declare-fun mapValue!11579 () List!23681)

(assert (=> mapNonEmpty!11579 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793984)))))))) (store mapRest!11579 mapKey!11579 mapValue!11579))))

(declare-fun b!2117217 () Bool)

(declare-fun e!1347751 () Bool)

(assert (=> b!2117217 (= e!1347743 e!1347751)))

(declare-fun b!2117218 () Bool)

(declare-fun e!1347746 () Bool)

(declare-fun e!1347749 () Bool)

(assert (=> b!2117218 (= e!1347746 e!1347749)))

(declare-fun b!2117219 () Bool)

(declare-fun e!1347748 () Bool)

(assert (=> b!2117219 (= e!1347748 e!1347746)))

(declare-fun b!2117220 () Bool)

(declare-fun e!1347738 () Bool)

(declare-fun lt!793986 () MutLongMap!2397)

(assert (=> b!2117220 (= e!1347738 (and e!1347748 ((_ is LongMap!2397) lt!793986)))))

(assert (=> b!2117220 (= lt!793986 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793984)))))))

(declare-fun b!2117221 () Bool)

(declare-fun e!1347740 () Bool)

(assert (=> b!2117221 (= e!1347740 mapRes!11580)))

(declare-fun condMapEmpty!11579 () Bool)

(declare-fun mapDefault!11579 () List!23683)

(assert (=> b!2117221 (= condMapEmpty!11579 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793984)))))))) ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11579)))))

(declare-fun b!2117222 () Bool)

(declare-fun e!1347741 () Bool)

(declare-fun e!1347750 () Bool)

(assert (=> b!2117222 (= e!1347741 e!1347750)))

(declare-fun b!2117224 () Bool)

(declare-fun e!1347747 () Bool)

(declare-fun lt!793987 () MutLongMap!2396)

(assert (=> b!2117224 (= e!1347751 (and e!1347747 ((_ is LongMap!2396) lt!793987)))))

(assert (=> b!2117224 (= lt!793987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793984)))))))

(declare-fun setNonEmpty!14333 () Bool)

(declare-fun setRes!14333 () Bool)

(assert (=> setNonEmpty!14333 (= setRes!14333 true)))

(declare-fun setElem!14333 () Context!2430)

(declare-fun setRest!14333 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14333 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!793984)))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14333 true) setRest!14333))))

(declare-fun b!2117225 () Bool)

(assert (=> b!2117225 (= e!1347747 e!1347745)))

(declare-fun mapIsEmpty!11580 () Bool)

(assert (=> mapIsEmpty!11580 mapRes!11579))

(declare-fun setIsEmpty!14333 () Bool)

(assert (=> setIsEmpty!14333 setRes!14333))

(declare-fun b!2117226 () Bool)

(declare-fun e!1347739 () Bool)

(assert (=> b!2117226 (= e!1347739 e!1347738)))

(declare-fun b!2117227 () Bool)

(assert (=> b!2117227 (= e!1347750 setRes!14333)))

(declare-fun condSetEmpty!14333 () Bool)

(assert (=> b!2117227 (= condSetEmpty!14333 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!793984)))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117223 () Bool)

(declare-fun e!1347742 () Bool)

(assert (=> b!2117223 (= e!1347742 e!1347739)))

(assert (=> b!2117209 (and e!1347741 e!1347742 e!1347752)))

(declare-fun b!2117228 () Bool)

(assert (=> b!2117228 (= e!1347749 e!1347740)))

(declare-fun mapNonEmpty!11580 () Bool)

(assert (=> mapNonEmpty!11580 (= mapRes!11580 true)))

(declare-fun mapValue!11580 () List!23683)

(declare-fun mapKey!11580 () (_ BitVec 32))

(declare-fun mapRest!11580 () (Array (_ BitVec 32) List!23683))

(assert (=> mapNonEmpty!11580 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793984)))))))) (store mapRest!11580 mapKey!11580 mapValue!11580))))

(assert (= (and b!2117227 condSetEmpty!14333) setIsEmpty!14333))

(assert (= (and b!2117227 (not condSetEmpty!14333)) setNonEmpty!14333))

(assert (= b!2117222 b!2117227))

(assert (= (and b!2117209 ((_ is Cons!23600) (_2!13444 (_1!13445 lt!793984)))) b!2117222))

(assert (= (and b!2117221 condMapEmpty!11579) mapIsEmpty!11579))

(assert (= (and b!2117221 (not condMapEmpty!11579)) mapNonEmpty!11580))

(assert (= b!2117228 b!2117221))

(assert (= b!2117218 b!2117228))

(assert (= b!2117219 b!2117218))

(assert (= (and b!2117220 ((_ is LongMap!2397) (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793984)))))) b!2117219))

(assert (= b!2117226 b!2117220))

(assert (= (and b!2117223 ((_ is HashMap!2310) (cache!2691 (_2!13445 lt!793984)))) b!2117226))

(assert (= b!2117209 b!2117223))

(assert (= (and b!2117213 condMapEmpty!11580) mapIsEmpty!11580))

(assert (= (and b!2117213 (not condMapEmpty!11580)) mapNonEmpty!11579))

(assert (= b!2117216 b!2117213))

(assert (= b!2117215 b!2117216))

(assert (= b!2117225 b!2117215))

(assert (= (and b!2117224 ((_ is LongMap!2396) (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793984)))))) b!2117225))

(assert (= b!2117217 b!2117224))

(assert (= (and b!2117214 ((_ is HashMap!2311) (cache!2692 (_3!1876 lt!793984)))) b!2117217))

(assert (= b!2117209 b!2117214))

(assert (=> b!2117216 (< (dynLambda!11297 order!14569 (defaultEntry!2761 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793984)))))))) (dynLambda!11298 order!14571 lambda!78317))))

(assert (=> b!2117217 (< (dynLambda!11299 order!14573 (defaultValue!2473 (cache!2692 (_3!1876 lt!793984)))) (dynLambda!11298 order!14571 lambda!78317))))

(assert (=> b!2117228 (< (dynLambda!11300 order!14575 (defaultEntry!2762 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793984)))))))) (dynLambda!11298 order!14571 lambda!78317))))

(assert (=> b!2117226 (< (dynLambda!11301 order!14577 (defaultValue!2472 (cache!2691 (_2!13445 lt!793984)))) (dynLambda!11298 order!14571 lambda!78317))))

(declare-fun m!2571981 () Bool)

(assert (=> mapNonEmpty!11579 m!2571981))

(declare-fun m!2571983 () Bool)

(assert (=> mapNonEmpty!11580 m!2571983))

(declare-fun bs!441267 () Bool)

(declare-fun b!2117207 () Bool)

(assert (= bs!441267 (and b!2117207 b!2117069)))

(declare-fun lambda!78318 () Int)

(assert (=> bs!441267 (not (= lambda!78318 lambda!78292))))

(declare-fun bs!441268 () Bool)

(assert (= bs!441268 (and b!2117207 d!642672)))

(assert (=> bs!441268 (= lambda!78318 lambda!78299)))

(declare-fun bs!441269 () Bool)

(assert (= bs!441269 (and b!2117207 b!2117209)))

(assert (=> bs!441269 (not (= lambda!78318 lambda!78317))))

(declare-fun bs!441270 () Bool)

(assert (= bs!441270 (and b!2117207 b!2117039)))

(assert (=> bs!441270 (= lambda!78318 lambda!78293)))

(declare-fun bs!441271 () Bool)

(assert (= bs!441271 (and b!2117207 b!2117203)))

(assert (=> bs!441271 (not (= lambda!78318 lambda!78315))))

(assert (=> bs!441268 (not (= lambda!78318 lambda!78298))))

(declare-fun bs!441272 () Bool)

(assert (= bs!441272 (and b!2117207 b!2117201)))

(assert (=> bs!441272 (not (= lambda!78318 lambda!78316))))

(declare-fun bs!441273 () Bool)

(assert (= bs!441273 (and b!2117207 d!642682)))

(assert (=> bs!441273 (not (= lambda!78318 lambda!78314))))

(assert (=> b!2117207 true))

(declare-fun b!2117198 () Bool)

(declare-fun e!1347737 () Bool)

(declare-fun lostCauseZipper!52 ((InoxSet Context!2430)) Bool)

(assert (=> b!2117198 (= e!1347737 (lostCauseZipper!52 lt!793898))))

(declare-fun b!2117199 () Bool)

(declare-fun e!1347734 () Int)

(assert (=> b!2117199 (= e!1347734 e!1347636)))

(declare-fun c!339406 () Bool)

(declare-fun bm!128583 () Bool)

(declare-fun call!128590 () Bool)

(assert (=> bm!128583 (= call!128590 (forall!4845 Nil!23600 (ite c!339406 lambda!78315 lambda!78314)))))

(declare-fun b!2117200 () Bool)

(declare-fun res!918245 () Bool)

(declare-fun e!1347736 () Bool)

(assert (=> b!2117200 (=> (not res!918245) (not e!1347736))))

(assert (=> b!2117200 (= res!918245 (= (totalInput!2863 cacheFurthestNullable!141) totalInput!1306))))

(declare-datatypes ((tuple3!2818 0))(
  ( (tuple3!2819 (_1!13452 (InoxSet Context!2430)) (_2!13452 CacheUp!1598) (_3!1879 CacheDown!1586)) )
))
(declare-fun lt!793983 () tuple3!2818)

(declare-fun lt!793975 () tuple3!2814)

(declare-fun lt!793985 () Int)

(assert (=> b!2117201 (= lt!793975 (furthestNullablePositionStackMem!5 (_1!13452 lt!793983) (+ lt!793907 1) totalInput!1306 lt!793906 lt!793985 (Cons!23600 (StackFrame!23 lt!793898 lt!793907 e!1347636 lt!793980 totalInput!1306) Nil!23600) (_2!13452 lt!793983) (_3!1879 lt!793983) cacheFurthestNullable!141))))

(declare-fun lt!793974 () Unit!37556)

(declare-fun lt!793981 () Unit!37556)

(assert (=> b!2117201 (= lt!793974 lt!793981)))

(declare-fun call!128589 () Bool)

(assert (=> b!2117201 call!128589))

(declare-fun call!128588 () Unit!37556)

(assert (=> b!2117201 (= lt!793981 call!128588)))

(declare-fun lt!793972 () Unit!37556)

(declare-fun Unit!37560 () Unit!37556)

(assert (=> b!2117201 (= lt!793972 Unit!37560)))

(assert (=> b!2117201 call!128590))

(declare-fun furthestNullablePosition!5 ((InoxSet Context!2430) Int BalanceConc!15330 Int Int) Int)

(assert (=> b!2117201 (= lt!793973 (furthestNullablePosition!5 (_1!13452 lt!793983) (+ lt!793907 1) totalInput!1306 (size!18432 totalInput!1306) lt!793985))))

(assert (=> b!2117201 (= lt!793985 e!1347734)))

(declare-fun c!339408 () Bool)

(assert (=> b!2117201 (= c!339408 (nullableZipper!52 (_1!13452 lt!793983)))))

(declare-fun derivationStepZipperMem!14 ((InoxSet Context!2430) C!11436 CacheUp!1598 CacheDown!1586) tuple3!2818)

(declare-fun apply!5904 (BalanceConc!15330 Int) C!11436)

(assert (=> b!2117201 (= lt!793983 (derivationStepZipperMem!14 lt!793898 (apply!5904 totalInput!1306 lt!793907) cacheUp!1110 cacheDown!1229))))

(declare-fun e!1347733 () tuple3!2814)

(assert (=> b!2117201 (= e!1347733 (tuple3!2815 (_1!13445 lt!793975) (_2!13445 lt!793975) (_3!1876 lt!793975)))))

(declare-fun b!2117202 () Bool)

(declare-fun res!918243 () Bool)

(assert (=> b!2117202 (=> (not res!918243) (not e!1347736))))

(assert (=> b!2117202 (= res!918243 (valid!1885 cacheFurthestNullable!141))))

(assert (=> d!642682 e!1347736))

(declare-fun res!918241 () Bool)

(assert (=> d!642682 (=> (not res!918241) (not e!1347736))))

(assert (=> d!642682 (= res!918241 (= (_1!13444 (_1!13445 lt!793984)) (furthestNullablePosition!5 lt!793898 lt!793907 totalInput!1306 lt!793906 e!1347636)))))

(declare-fun e!1347735 () tuple3!2814)

(assert (=> d!642682 (= lt!793984 e!1347735)))

(declare-fun c!339407 () Bool)

(declare-datatypes ((Option!4865 0))(
  ( (None!4864) (Some!4864 (v!28127 Int)) )
))
(declare-fun lt!793978 () Option!4865)

(assert (=> d!642682 (= c!339407 ((_ is Some!4864) lt!793978))))

(declare-fun get!7297 (CacheFurthestNullable!560 (InoxSet Context!2430) Int Int) Option!4865)

(assert (=> d!642682 (= lt!793978 (get!7297 cacheFurthestNullable!141 lt!793898 lt!793907 e!1347636))))

(declare-fun lt!793976 () Unit!37556)

(declare-fun Unit!37561 () Unit!37556)

(assert (=> d!642682 (= lt!793976 Unit!37561)))

(assert (=> d!642682 (forall!4845 Nil!23600 lambda!78314)))

(assert (=> d!642682 (= lt!793980 (furthestNullablePosition!5 lt!793898 lt!793907 totalInput!1306 (size!18432 totalInput!1306) e!1347636))))

(assert (=> d!642682 (and (>= lt!793907 0) (<= lt!793907 lt!793906))))

(assert (=> d!642682 (= (furthestNullablePositionStackMem!5 lt!793898 lt!793907 totalInput!1306 lt!793906 e!1347636 Nil!23600 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141) lt!793984)))

(declare-fun lt!793979 () Unit!37556)

(declare-fun lt!793977 () Unit!37556)

(assert (=> b!2117203 (= lt!793979 lt!793977)))

(assert (=> b!2117203 call!128590))

(assert (=> b!2117203 (= lt!793977 call!128588)))

(declare-fun lt!793982 () Unit!37556)

(declare-fun Unit!37562 () Unit!37556)

(assert (=> b!2117203 (= lt!793982 Unit!37562)))

(assert (=> b!2117203 call!128589))

(assert (=> b!2117203 (= e!1347733 (tuple3!2815 (tuple2!23137 e!1347636 Nil!23600) cacheUp!1110 cacheDown!1229))))

(declare-fun b!2117204 () Bool)

(assert (=> b!2117204 (= e!1347735 (tuple3!2815 (tuple2!23137 (v!28127 lt!793978) Nil!23600) cacheUp!1110 cacheDown!1229))))

(declare-fun b!2117205 () Bool)

(assert (=> b!2117205 (= e!1347735 e!1347733)))

(declare-fun res!918242 () Bool)

(assert (=> b!2117205 (= res!918242 (= lt!793907 lt!793906))))

(assert (=> b!2117205 (=> res!918242 e!1347737)))

(assert (=> b!2117205 (= c!339406 e!1347737)))

(declare-fun bm!128584 () Bool)

(assert (=> bm!128584 (= call!128589 (forall!4845 Nil!23600 (ite c!339406 lambda!78314 lambda!78316)))))

(declare-fun b!2117206 () Bool)

(declare-fun res!918240 () Bool)

(assert (=> b!2117206 (=> (not res!918240) (not e!1347736))))

(assert (=> b!2117206 (= res!918240 (valid!1887 (_3!1876 lt!793984)))))

(declare-fun bm!128585 () Bool)

(declare-fun lemmaStackPreservesForEqualRes!3 (List!23684 Int Int) Unit!37556)

(assert (=> bm!128585 (= call!128588 (lemmaStackPreservesForEqualRes!3 Nil!23600 lt!793980 (ite c!339406 e!1347636 lt!793973)))))

(assert (=> b!2117207 (= e!1347736 (forall!4845 (_2!13444 (_1!13445 lt!793984)) lambda!78318))))

(declare-fun b!2117208 () Bool)

(declare-fun res!918244 () Bool)

(assert (=> b!2117208 (=> (not res!918244) (not e!1347736))))

(assert (=> b!2117208 (= res!918244 (valid!1886 (_2!13445 lt!793984)))))

(declare-fun res!918239 () Bool)

(assert (=> b!2117209 (=> (not res!918239) (not e!1347736))))

(assert (=> b!2117209 (= res!918239 (forall!4845 (_2!13444 (_1!13445 lt!793984)) lambda!78317))))

(declare-fun b!2117210 () Bool)

(assert (=> b!2117210 (= e!1347734 lt!793907)))

(assert (= (and d!642682 c!339407) b!2117204))

(assert (= (and d!642682 (not c!339407)) b!2117205))

(assert (= (and b!2117205 (not res!918242)) b!2117198))

(assert (= (and b!2117205 c!339406) b!2117203))

(assert (= (and b!2117205 (not c!339406)) b!2117201))

(assert (= (and b!2117201 c!339408) b!2117210))

(assert (= (and b!2117201 (not c!339408)) b!2117199))

(assert (= (or b!2117203 b!2117201) bm!128585))

(assert (= (or b!2117203 b!2117201) bm!128583))

(assert (= (or b!2117203 b!2117201) bm!128584))

(assert (= (and d!642682 res!918241) b!2117209))

(assert (= (and b!2117209 res!918239) b!2117208))

(assert (= (and b!2117208 res!918244) b!2117206))

(assert (= (and b!2117206 res!918240) b!2117202))

(assert (= (and b!2117202 res!918243) b!2117200))

(assert (= (and b!2117200 res!918245) b!2117207))

(declare-fun m!2571985 () Bool)

(assert (=> b!2117206 m!2571985))

(declare-fun m!2571987 () Bool)

(assert (=> b!2117198 m!2571987))

(declare-fun m!2571989 () Bool)

(assert (=> b!2117208 m!2571989))

(declare-fun m!2571991 () Bool)

(assert (=> bm!128585 m!2571991))

(declare-fun m!2571993 () Bool)

(assert (=> b!2117207 m!2571993))

(declare-fun m!2571995 () Bool)

(assert (=> b!2117209 m!2571995))

(declare-fun m!2571997 () Bool)

(assert (=> bm!128583 m!2571997))

(assert (=> b!2117202 m!2571931))

(declare-fun m!2571999 () Bool)

(assert (=> b!2117201 m!2571999))

(declare-fun m!2572001 () Bool)

(assert (=> b!2117201 m!2572001))

(assert (=> b!2117201 m!2571837))

(assert (=> b!2117201 m!2571999))

(declare-fun m!2572003 () Bool)

(assert (=> b!2117201 m!2572003))

(declare-fun m!2572005 () Bool)

(assert (=> b!2117201 m!2572005))

(assert (=> b!2117201 m!2571837))

(declare-fun m!2572007 () Bool)

(assert (=> b!2117201 m!2572007))

(declare-fun m!2572009 () Bool)

(assert (=> d!642682 m!2572009))

(declare-fun m!2572011 () Bool)

(assert (=> d!642682 m!2572011))

(assert (=> d!642682 m!2571837))

(declare-fun m!2572013 () Bool)

(assert (=> d!642682 m!2572013))

(assert (=> d!642682 m!2571837))

(declare-fun m!2572015 () Bool)

(assert (=> d!642682 m!2572015))

(declare-fun m!2572017 () Bool)

(assert (=> bm!128584 m!2572017))

(assert (=> b!2117069 d!642682))

(declare-fun bs!441274 () Bool)

(declare-fun d!642684 () Bool)

(assert (= bs!441274 (and d!642684 b!2117069)))

(declare-fun lt!793988 () tuple3!2814)

(declare-fun lambda!78319 () Int)

(assert (=> bs!441274 (= (= (_1!13444 (_1!13445 lt!793988)) (_1!13444 (_1!13445 lt!793905))) (= lambda!78319 lambda!78292))))

(declare-fun bs!441275 () Bool)

(assert (= bs!441275 (and d!642684 d!642672)))

(assert (=> bs!441275 (not (= lambda!78319 lambda!78299))))

(declare-fun bs!441276 () Bool)

(assert (= bs!441276 (and d!642684 b!2117207)))

(assert (=> bs!441276 (not (= lambda!78319 lambda!78318))))

(declare-fun bs!441277 () Bool)

(assert (= bs!441277 (and d!642684 b!2117209)))

(assert (=> bs!441277 (= (= (_1!13444 (_1!13445 lt!793988)) (_1!13444 (_1!13445 lt!793984))) (= lambda!78319 lambda!78317))))

(declare-fun bs!441278 () Bool)

(assert (= bs!441278 (and d!642684 b!2117039)))

(assert (=> bs!441278 (not (= lambda!78319 lambda!78293))))

(declare-fun bs!441279 () Bool)

(assert (= bs!441279 (and d!642684 b!2117203)))

(assert (=> bs!441279 (= (= (_1!13444 (_1!13445 lt!793988)) e!1347636) (= lambda!78319 lambda!78315))))

(assert (=> bs!441275 (= (= (_1!13444 (_1!13445 lt!793988)) (_1!13444 (_1!13445 lt!793929))) (= lambda!78319 lambda!78298))))

(declare-fun bs!441280 () Bool)

(assert (= bs!441280 (and d!642684 b!2117201)))

(assert (=> bs!441280 (= (= (_1!13444 (_1!13445 lt!793988)) lt!793973) (= lambda!78319 lambda!78316))))

(declare-fun bs!441281 () Bool)

(assert (= bs!441281 (and d!642684 d!642682)))

(assert (=> bs!441281 (= (= (_1!13444 (_1!13445 lt!793988)) lt!793980) (= lambda!78319 lambda!78314))))

(declare-fun b!2117233 () Bool)

(declare-fun e!1347771 () Bool)

(declare-fun mapRes!11581 () Bool)

(assert (=> b!2117233 (= e!1347771 mapRes!11581)))

(declare-fun condMapEmpty!11582 () Bool)

(declare-fun mapDefault!11582 () List!23681)

(assert (=> b!2117233 (= condMapEmpty!11582 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793988)))))))) ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11582)))))

(declare-fun b!2117234 () Bool)

(declare-fun e!1347770 () Bool)

(declare-fun e!1347761 () Bool)

(assert (=> b!2117234 (= e!1347770 e!1347761)))

(declare-fun b!2117235 () Bool)

(declare-fun e!1347763 () Bool)

(declare-fun e!1347762 () Bool)

(assert (=> b!2117235 (= e!1347763 e!1347762)))

(declare-fun b!2117236 () Bool)

(assert (=> b!2117236 (= e!1347762 e!1347771)))

(declare-fun mapIsEmpty!11581 () Bool)

(declare-fun mapRes!11582 () Bool)

(assert (=> mapIsEmpty!11581 mapRes!11582))

(declare-fun mapNonEmpty!11581 () Bool)

(assert (=> mapNonEmpty!11581 (= mapRes!11581 true)))

(declare-fun mapRest!11581 () (Array (_ BitVec 32) List!23681))

(declare-fun mapKey!11581 () (_ BitVec 32))

(declare-fun mapValue!11581 () List!23681)

(assert (=> mapNonEmpty!11581 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793988)))))))) (store mapRest!11581 mapKey!11581 mapValue!11581))))

(declare-fun b!2117237 () Bool)

(declare-fun e!1347769 () Bool)

(assert (=> b!2117237 (= e!1347761 e!1347769)))

(declare-fun b!2117238 () Bool)

(declare-fun e!1347764 () Bool)

(declare-fun e!1347767 () Bool)

(assert (=> b!2117238 (= e!1347764 e!1347767)))

(declare-fun b!2117239 () Bool)

(declare-fun e!1347766 () Bool)

(assert (=> b!2117239 (= e!1347766 e!1347764)))

(declare-fun b!2117240 () Bool)

(declare-fun e!1347756 () Bool)

(declare-fun lt!793995 () MutLongMap!2397)

(assert (=> b!2117240 (= e!1347756 (and e!1347766 ((_ is LongMap!2397) lt!793995)))))

(assert (=> b!2117240 (= lt!793995 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793988)))))))

(declare-fun b!2117241 () Bool)

(declare-fun e!1347758 () Bool)

(assert (=> b!2117241 (= e!1347758 mapRes!11582)))

(declare-fun condMapEmpty!11581 () Bool)

(declare-fun mapDefault!11581 () List!23683)

(assert (=> b!2117241 (= condMapEmpty!11581 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793988)))))))) ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11581)))))

(declare-fun b!2117242 () Bool)

(declare-fun e!1347759 () Bool)

(declare-fun e!1347768 () Bool)

(assert (=> b!2117242 (= e!1347759 e!1347768)))

(declare-fun b!2117244 () Bool)

(declare-fun e!1347765 () Bool)

(declare-fun lt!793996 () MutLongMap!2396)

(assert (=> b!2117244 (= e!1347769 (and e!1347765 ((_ is LongMap!2396) lt!793996)))))

(assert (=> b!2117244 (= lt!793996 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793988)))))))

(declare-fun setNonEmpty!14334 () Bool)

(declare-fun setRes!14334 () Bool)

(assert (=> setNonEmpty!14334 (= setRes!14334 true)))

(declare-fun setElem!14334 () Context!2430)

(declare-fun setRest!14334 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14334 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!793988)))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14334 true) setRest!14334))))

(declare-fun b!2117245 () Bool)

(assert (=> b!2117245 (= e!1347765 e!1347763)))

(declare-fun mapIsEmpty!11582 () Bool)

(assert (=> mapIsEmpty!11582 mapRes!11581))

(declare-fun setIsEmpty!14334 () Bool)

(assert (=> setIsEmpty!14334 setRes!14334))

(declare-fun b!2117246 () Bool)

(declare-fun e!1347757 () Bool)

(assert (=> b!2117246 (= e!1347757 e!1347756)))

(declare-fun b!2117247 () Bool)

(assert (=> b!2117247 (= e!1347768 setRes!14334)))

(declare-fun condSetEmpty!14334 () Bool)

(assert (=> b!2117247 (= condSetEmpty!14334 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!793988)))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117243 () Bool)

(declare-fun e!1347760 () Bool)

(assert (=> b!2117243 (= e!1347760 e!1347757)))

(assert (=> d!642684 (and e!1347759 e!1347760 e!1347770)))

(declare-fun b!2117248 () Bool)

(assert (=> b!2117248 (= e!1347767 e!1347758)))

(declare-fun mapNonEmpty!11582 () Bool)

(assert (=> mapNonEmpty!11582 (= mapRes!11582 true)))

(declare-fun mapKey!11582 () (_ BitVec 32))

(declare-fun mapRest!11582 () (Array (_ BitVec 32) List!23683))

(declare-fun mapValue!11582 () List!23683)

(assert (=> mapNonEmpty!11582 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793988)))))))) (store mapRest!11582 mapKey!11582 mapValue!11582))))

(assert (= (and b!2117247 condSetEmpty!14334) setIsEmpty!14334))

(assert (= (and b!2117247 (not condSetEmpty!14334)) setNonEmpty!14334))

(assert (= b!2117242 b!2117247))

(assert (= (and d!642684 ((_ is Cons!23600) (_2!13444 (_1!13445 lt!793988)))) b!2117242))

(assert (= (and b!2117241 condMapEmpty!11581) mapIsEmpty!11581))

(assert (= (and b!2117241 (not condMapEmpty!11581)) mapNonEmpty!11582))

(assert (= b!2117248 b!2117241))

(assert (= b!2117238 b!2117248))

(assert (= b!2117239 b!2117238))

(assert (= (and b!2117240 ((_ is LongMap!2397) (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793988)))))) b!2117239))

(assert (= b!2117246 b!2117240))

(assert (= (and b!2117243 ((_ is HashMap!2310) (cache!2691 (_2!13445 lt!793988)))) b!2117246))

(assert (= d!642684 b!2117243))

(assert (= (and b!2117233 condMapEmpty!11582) mapIsEmpty!11582))

(assert (= (and b!2117233 (not condMapEmpty!11582)) mapNonEmpty!11581))

(assert (= b!2117236 b!2117233))

(assert (= b!2117235 b!2117236))

(assert (= b!2117245 b!2117235))

(assert (= (and b!2117244 ((_ is LongMap!2396) (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793988)))))) b!2117245))

(assert (= b!2117237 b!2117244))

(assert (= (and b!2117234 ((_ is HashMap!2311) (cache!2692 (_3!1876 lt!793988)))) b!2117237))

(assert (= d!642684 b!2117234))

(assert (=> b!2117236 (< (dynLambda!11297 order!14569 (defaultEntry!2761 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793988)))))))) (dynLambda!11298 order!14571 lambda!78319))))

(assert (=> b!2117237 (< (dynLambda!11299 order!14573 (defaultValue!2473 (cache!2692 (_3!1876 lt!793988)))) (dynLambda!11298 order!14571 lambda!78319))))

(assert (=> b!2117248 (< (dynLambda!11300 order!14575 (defaultEntry!2762 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793988)))))))) (dynLambda!11298 order!14571 lambda!78319))))

(assert (=> b!2117246 (< (dynLambda!11301 order!14577 (defaultValue!2472 (cache!2691 (_2!13445 lt!793988)))) (dynLambda!11298 order!14571 lambda!78319))))

(declare-fun m!2572019 () Bool)

(assert (=> mapNonEmpty!11581 m!2572019))

(declare-fun m!2572021 () Bool)

(assert (=> mapNonEmpty!11582 m!2572021))

(declare-fun lambda!78320 () Int)

(assert (=> bs!441274 (not (= lambda!78320 lambda!78292))))

(assert (=> bs!441275 (= lambda!78320 lambda!78299)))

(assert (=> bs!441276 (= lambda!78320 lambda!78318)))

(assert (=> bs!441277 (not (= lambda!78320 lambda!78317))))

(assert (=> bs!441278 (= lambda!78320 lambda!78293)))

(assert (=> d!642684 (not (= lambda!78320 lambda!78319))))

(assert (=> bs!441279 (not (= lambda!78320 lambda!78315))))

(assert (=> bs!441275 (not (= lambda!78320 lambda!78298))))

(assert (=> bs!441280 (not (= lambda!78320 lambda!78316))))

(assert (=> bs!441281 (not (= lambda!78320 lambda!78314))))

(assert (=> d!642684 true))

(declare-fun b!2117229 () Bool)

(declare-fun e!1347754 () Int)

(declare-fun lt!793990 () Int)

(assert (=> b!2117229 (= e!1347754 (- lt!793990 1))))

(declare-fun b!2117230 () Bool)

(assert (=> b!2117230 (= e!1347754 (- 1))))

(declare-fun b!2117231 () Bool)

(declare-fun e!1347755 () tuple2!23138)

(declare-fun call!128591 () tuple2!23138)

(assert (=> b!2117231 (= e!1347755 call!128591)))

(declare-fun lt!793994 () tuple4!938)

(assert (=> d!642684 (= (++!6313 (list!9507 (_1!13446 (_1!13450 lt!793994))) (list!9507 (_2!13446 (_1!13450 lt!793994)))) (list!9507 input!6660))))

(declare-fun lt!793991 () Int)

(assert (=> d!642684 (= lt!793994 (tuple4!939 e!1347755 (_2!13445 lt!793988) (_3!1876 lt!793988) (_2!13451 (fillUpCache!5 (_2!13444 (_1!13445 lt!793988)) totalInput!1306 lt!793991 (_1!13444 (_1!13445 lt!793988)) 0 (_4!469 lt!793903)))))))

(declare-fun c!339409 () Bool)

(declare-fun lt!793992 () Int)

(assert (=> d!642684 (= c!339409 (< lt!793992 0))))

(declare-fun lt!793993 () Unit!37556)

(declare-fun Unit!37563 () Unit!37556)

(assert (=> d!642684 (= lt!793993 Unit!37563)))

(assert (=> d!642684 (forall!4845 (_2!13444 (_1!13445 lt!793988)) lambda!78320)))

(declare-fun lt!793989 () Unit!37556)

(declare-fun Unit!37564 () Unit!37556)

(assert (=> d!642684 (= lt!793989 Unit!37564)))

(assert (=> d!642684 (forall!4845 (_2!13444 (_1!13445 lt!793988)) lambda!78319)))

(assert (=> d!642684 (= lt!793992 (+ (- (_1!13444 (_1!13445 lt!793988)) lt!793990) 1))))

(assert (=> d!642684 (= lt!793988 (furthestNullablePositionStackMem!5 lt!793898 lt!793990 totalInput!1306 lt!793991 e!1347754 Nil!23600 (_2!13450 lt!793903) (_3!1878 lt!793903) (_4!469 lt!793903)))))

(declare-fun c!339410 () Bool)

(assert (=> d!642684 (= c!339410 (nullableZipper!52 lt!793898))))

(assert (=> d!642684 (= lt!793990 (- lt!793991 (size!18432 input!6660)))))

(assert (=> d!642684 (= lt!793991 (size!18432 totalInput!1306))))

(assert (=> d!642684 (isSuffix!605 (list!9507 input!6660) (list!9507 totalInput!1306))))

(assert (=> d!642684 (= (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 (_2!13450 lt!793903) (_3!1878 lt!793903) (_4!469 lt!793903)) lt!793994)))

(declare-fun b!2117232 () Bool)

(assert (=> b!2117232 (= e!1347755 call!128591)))

(declare-fun bm!128586 () Bool)

(assert (=> bm!128586 (= call!128591 (splitAt!15 input!6660 (ite c!339409 0 lt!793992)))))

(assert (= (and d!642684 c!339410) b!2117229))

(assert (= (and d!642684 (not c!339410)) b!2117230))

(assert (= (and d!642684 c!339409) b!2117232))

(assert (= (and d!642684 (not c!339409)) b!2117231))

(assert (= (or b!2117232 b!2117231) bm!128586))

(assert (=> d!642684 m!2571837))

(declare-fun m!2572023 () Bool)

(assert (=> d!642684 m!2572023))

(assert (=> d!642684 m!2571873))

(assert (=> d!642684 m!2571907))

(assert (=> d!642684 m!2571903))

(assert (=> d!642684 m!2571949))

(declare-fun m!2572025 () Bool)

(assert (=> d!642684 m!2572025))

(declare-fun m!2572027 () Bool)

(assert (=> d!642684 m!2572027))

(declare-fun m!2572029 () Bool)

(assert (=> d!642684 m!2572029))

(assert (=> d!642684 m!2571903))

(declare-fun m!2572031 () Bool)

(assert (=> d!642684 m!2572031))

(assert (=> d!642684 m!2572023))

(assert (=> d!642684 m!2572029))

(declare-fun m!2572033 () Bool)

(assert (=> d!642684 m!2572033))

(assert (=> d!642684 m!2571907))

(assert (=> d!642684 m!2571843))

(declare-fun m!2572035 () Bool)

(assert (=> d!642684 m!2572035))

(declare-fun m!2572037 () Bool)

(assert (=> bm!128586 m!2572037))

(assert (=> b!2117069 d!642684))

(declare-fun d!642686 () Bool)

(declare-fun e!1347774 () Bool)

(assert (=> d!642686 e!1347774))

(declare-fun res!918248 () Bool)

(assert (=> d!642686 (=> (not res!918248) (not e!1347774))))

(assert (=> d!642686 (= res!918248 (= (list!9507 (_1!13446 (findLongestMatchZipperSequenceV3!8 lt!793898 input!6660 totalInput!1306))) (_1!13449 (findLongestMatch!515 r!15373 (list!9507 input!6660)))))))

(declare-fun lt!793999 () Unit!37556)

(declare-fun choose!12656 (Regex!5645 (InoxSet Context!2430) BalanceConc!15330 BalanceConc!15330) Unit!37556)

(assert (=> d!642686 (= lt!793999 (choose!12656 r!15373 lt!793898 input!6660 totalInput!1306))))

(assert (=> d!642686 (validRegex!2229 r!15373)))

(assert (=> d!642686 (= (longestMatchV3SameAsRegex!8 r!15373 lt!793898 input!6660 totalInput!1306) lt!793999)))

(declare-fun b!2117251 () Bool)

(assert (=> b!2117251 (= e!1347774 (= (list!9507 (_2!13446 (findLongestMatchZipperSequenceV3!8 lt!793898 input!6660 totalInput!1306))) (_2!13449 (findLongestMatch!515 r!15373 (list!9507 input!6660)))))))

(assert (= (and d!642686 res!918248) b!2117251))

(assert (=> d!642686 m!2571867))

(declare-fun m!2572039 () Bool)

(assert (=> d!642686 m!2572039))

(assert (=> d!642686 m!2571907))

(assert (=> d!642686 m!2571907))

(assert (=> d!642686 m!2571973))

(declare-fun m!2572041 () Bool)

(assert (=> d!642686 m!2572041))

(assert (=> d!642686 m!2571887))

(assert (=> b!2117251 m!2571867))

(declare-fun m!2572043 () Bool)

(assert (=> b!2117251 m!2572043))

(assert (=> b!2117251 m!2571907))

(assert (=> b!2117251 m!2571907))

(assert (=> b!2117251 m!2571973))

(assert (=> b!2117069 d!642686))

(declare-fun d!642688 () Bool)

(assert (=> d!642688 (= (list!9507 (_1!13446 (_1!13450 lt!793892))) (list!9508 (c!339387 (_1!13446 (_1!13450 lt!793892)))))))

(declare-fun bs!441282 () Bool)

(assert (= bs!441282 d!642688))

(declare-fun m!2572045 () Bool)

(assert (=> bs!441282 m!2572045))

(assert (=> b!2117069 d!642688))

(declare-fun d!642690 () Bool)

(assert (=> d!642690 (= (list!9507 (_2!13446 (_1!13450 lt!793892))) (list!9508 (c!339387 (_2!13446 (_1!13450 lt!793892)))))))

(declare-fun bs!441283 () Bool)

(assert (= bs!441283 d!642690))

(declare-fun m!2572047 () Bool)

(assert (=> bs!441283 m!2572047))

(assert (=> b!2117069 d!642690))

(declare-fun d!642692 () Bool)

(declare-fun e!1347777 () Bool)

(assert (=> d!642692 e!1347777))

(declare-fun res!918252 () Bool)

(assert (=> d!642692 (=> (not res!918252) (not e!1347777))))

(assert (=> d!642692 (= res!918252 (validRegex!2229 r!15373))))

(assert (=> d!642692 (= (focus!277 r!15373) (store ((as const (Array Context!2430 Bool)) false) (Context!2431 (Cons!23596 r!15373 Nil!23596)) true))))

(declare-fun b!2117254 () Bool)

(declare-datatypes ((List!23686 0))(
  ( (Nil!23602) (Cons!23602 (h!29003 Context!2430) (t!196195 List!23686)) )
))
(declare-fun unfocusZipper!64 (List!23686) Regex!5645)

(declare-fun toList!1056 ((InoxSet Context!2430)) List!23686)

(assert (=> b!2117254 (= e!1347777 (= (unfocusZipper!64 (toList!1056 (store ((as const (Array Context!2430 Bool)) false) (Context!2431 (Cons!23596 r!15373 Nil!23596)) true))) r!15373))))

(assert (= (and d!642692 res!918252) b!2117254))

(assert (=> d!642692 m!2571887))

(declare-fun m!2572049 () Bool)

(assert (=> d!642692 m!2572049))

(assert (=> b!2117254 m!2572049))

(assert (=> b!2117254 m!2572049))

(declare-fun m!2572051 () Bool)

(assert (=> b!2117254 m!2572051))

(assert (=> b!2117254 m!2572051))

(declare-fun m!2572053 () Bool)

(assert (=> b!2117254 m!2572053))

(assert (=> b!2117069 d!642692))

(declare-fun d!642694 () Bool)

(declare-fun lt!794002 () Int)

(assert (=> d!642694 (>= lt!794002 0)))

(declare-fun e!1347780 () Int)

(assert (=> d!642694 (= lt!794002 e!1347780)))

(declare-fun c!339413 () Bool)

(assert (=> d!642694 (= c!339413 ((_ is Nil!23598) lt!793897))))

(assert (=> d!642694 (= (size!18433 lt!793897) lt!794002)))

(declare-fun b!2117259 () Bool)

(assert (=> b!2117259 (= e!1347780 0)))

(declare-fun b!2117260 () Bool)

(assert (=> b!2117260 (= e!1347780 (+ 1 (size!18433 (t!196191 lt!793897))))))

(assert (= (and d!642694 c!339413) b!2117259))

(assert (= (and d!642694 (not c!339413)) b!2117260))

(declare-fun m!2572055 () Bool)

(assert (=> b!2117260 m!2572055))

(assert (=> b!2117069 d!642694))

(declare-fun d!642696 () Bool)

(declare-fun lt!794007 () tuple2!23138)

(assert (=> d!642696 (= (++!6313 (list!9507 (_1!13446 lt!794007)) (list!9507 (_2!13446 lt!794007))) (list!9507 input!6660))))

(declare-fun lt!794008 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!6 ((InoxSet Context!2430) Int BalanceConc!15330 Int) Int)

(assert (=> d!642696 (= lt!794007 (splitAt!15 input!6660 (findLongestMatchInnerZipperFastV2!6 lt!793898 (- lt!794008 (size!18432 input!6660)) totalInput!1306 lt!794008)))))

(assert (=> d!642696 (= lt!794008 (size!18432 totalInput!1306))))

(assert (=> d!642696 (isSuffix!605 (list!9507 input!6660) (list!9507 totalInput!1306))))

(assert (=> d!642696 (= (findLongestMatchZipperFastV2!13 lt!793898 input!6660 totalInput!1306) lt!794007)))

(declare-fun bs!441284 () Bool)

(assert (= bs!441284 d!642696))

(declare-fun m!2572057 () Bool)

(assert (=> bs!441284 m!2572057))

(declare-fun m!2572059 () Bool)

(assert (=> bs!441284 m!2572059))

(assert (=> bs!441284 m!2572057))

(declare-fun m!2572061 () Bool)

(assert (=> bs!441284 m!2572061))

(declare-fun m!2572063 () Bool)

(assert (=> bs!441284 m!2572063))

(declare-fun m!2572065 () Bool)

(assert (=> bs!441284 m!2572065))

(assert (=> bs!441284 m!2572063))

(assert (=> bs!441284 m!2572059))

(assert (=> bs!441284 m!2571907))

(assert (=> bs!441284 m!2571903))

(assert (=> bs!441284 m!2571949))

(assert (=> bs!441284 m!2571903))

(assert (=> bs!441284 m!2571873))

(assert (=> bs!441284 m!2571837))

(assert (=> bs!441284 m!2571907))

(assert (=> b!2117069 d!642696))

(declare-fun d!642698 () Bool)

(declare-fun res!918257 () Bool)

(declare-fun e!1347785 () Bool)

(assert (=> d!642698 (=> res!918257 e!1347785)))

(assert (=> d!642698 (= res!918257 ((_ is Nil!23600) (_2!13444 (_1!13445 lt!793905))))))

(assert (=> d!642698 (= (forall!4845 (_2!13444 (_1!13445 lt!793905)) lambda!78292) e!1347785)))

(declare-fun b!2117265 () Bool)

(declare-fun e!1347786 () Bool)

(assert (=> b!2117265 (= e!1347785 e!1347786)))

(declare-fun res!918258 () Bool)

(assert (=> b!2117265 (=> (not res!918258) (not e!1347786))))

(declare-fun dynLambda!11302 (Int StackFrame!22) Bool)

(assert (=> b!2117265 (= res!918258 (dynLambda!11302 lambda!78292 (h!29001 (_2!13444 (_1!13445 lt!793905)))))))

(declare-fun b!2117266 () Bool)

(assert (=> b!2117266 (= e!1347786 (forall!4845 (t!196193 (_2!13444 (_1!13445 lt!793905))) lambda!78292))))

(assert (= (and d!642698 (not res!918257)) b!2117265))

(assert (= (and b!2117265 res!918258) b!2117266))

(declare-fun b_lambda!70393 () Bool)

(assert (=> (not b_lambda!70393) (not b!2117265)))

(declare-fun m!2572067 () Bool)

(assert (=> b!2117265 m!2572067))

(declare-fun m!2572069 () Bool)

(assert (=> b!2117266 m!2572069))

(assert (=> b!2117069 d!642698))

(declare-fun d!642700 () Bool)

(declare-fun lt!794009 () Int)

(assert (=> d!642700 (= lt!794009 (size!18433 (list!9507 input!6660)))))

(assert (=> d!642700 (= lt!794009 (size!18434 (c!339387 input!6660)))))

(assert (=> d!642700 (= (size!18432 input!6660) lt!794009)))

(declare-fun bs!441285 () Bool)

(assert (= bs!441285 d!642700))

(assert (=> bs!441285 m!2571907))

(assert (=> bs!441285 m!2571907))

(declare-fun m!2572071 () Bool)

(assert (=> bs!441285 m!2572071))

(declare-fun m!2572073 () Bool)

(assert (=> bs!441285 m!2572073))

(assert (=> b!2117069 d!642700))

(declare-fun d!642702 () Bool)

(assert (=> d!642702 (= (sizeTr!98 lt!793897 0) (+ (size!18433 lt!793897) 0))))

(declare-fun lt!794012 () Unit!37556)

(declare-fun choose!12657 (List!23682 Int) Unit!37556)

(assert (=> d!642702 (= lt!794012 (choose!12657 lt!793897 0))))

(assert (=> d!642702 (= (lemmaSizeTrEqualsSize!98 lt!793897 0) lt!794012)))

(declare-fun bs!441286 () Bool)

(assert (= bs!441286 d!642702))

(assert (=> bs!441286 m!2571855))

(assert (=> bs!441286 m!2571859))

(declare-fun m!2572075 () Bool)

(assert (=> bs!441286 m!2572075))

(assert (=> b!2117069 d!642702))

(declare-fun d!642704 () Bool)

(declare-fun lt!794021 () tuple2!23138)

(assert (=> d!642704 (= (++!6313 (list!9507 (_1!13446 lt!794021)) (list!9507 (_2!13446 lt!794021))) (list!9507 input!6660))))

(declare-fun e!1347791 () tuple2!23138)

(assert (=> d!642704 (= lt!794021 e!1347791)))

(declare-fun c!339419 () Bool)

(declare-fun lt!794022 () Int)

(assert (=> d!642704 (= c!339419 (< lt!794022 0))))

(declare-fun lt!794024 () Int)

(declare-fun lt!794023 () Int)

(declare-fun e!1347792 () Int)

(assert (=> d!642704 (= lt!794022 (+ (- (furthestNullablePosition!5 lt!793898 lt!794023 totalInput!1306 lt!794024 e!1347792) lt!794023) 1))))

(declare-fun c!339418 () Bool)

(assert (=> d!642704 (= c!339418 (nullableZipper!52 lt!793898))))

(assert (=> d!642704 (= lt!794023 (- lt!794024 (size!18432 input!6660)))))

(assert (=> d!642704 (= lt!794024 (size!18432 totalInput!1306))))

(assert (=> d!642704 (isSuffix!605 (list!9507 input!6660) (list!9507 totalInput!1306))))

(assert (=> d!642704 (= (findLongestMatchZipperSequenceV3!8 lt!793898 input!6660 totalInput!1306) lt!794021)))

(declare-fun b!2117275 () Bool)

(declare-fun call!128594 () tuple2!23138)

(assert (=> b!2117275 (= e!1347791 call!128594)))

(declare-fun b!2117276 () Bool)

(assert (=> b!2117276 (= e!1347792 (- lt!794023 1))))

(declare-fun b!2117277 () Bool)

(assert (=> b!2117277 (= e!1347792 (- 1))))

(declare-fun b!2117278 () Bool)

(assert (=> b!2117278 (= e!1347791 call!128594)))

(declare-fun bm!128589 () Bool)

(assert (=> bm!128589 (= call!128594 (splitAt!15 input!6660 (ite c!339419 0 lt!794022)))))

(assert (= (and d!642704 c!339418) b!2117276))

(assert (= (and d!642704 (not c!339418)) b!2117277))

(assert (= (and d!642704 c!339419) b!2117278))

(assert (= (and d!642704 (not c!339419)) b!2117275))

(assert (= (or b!2117278 b!2117275) bm!128589))

(assert (=> d!642704 m!2571907))

(assert (=> d!642704 m!2571903))

(assert (=> d!642704 m!2571843))

(declare-fun m!2572077 () Bool)

(assert (=> d!642704 m!2572077))

(declare-fun m!2572079 () Bool)

(assert (=> d!642704 m!2572079))

(assert (=> d!642704 m!2571907))

(assert (=> d!642704 m!2571903))

(assert (=> d!642704 m!2571949))

(declare-fun m!2572081 () Bool)

(assert (=> d!642704 m!2572081))

(assert (=> d!642704 m!2571837))

(assert (=> d!642704 m!2572081))

(assert (=> d!642704 m!2572077))

(declare-fun m!2572083 () Bool)

(assert (=> d!642704 m!2572083))

(assert (=> d!642704 m!2571873))

(declare-fun m!2572085 () Bool)

(assert (=> bm!128589 m!2572085))

(assert (=> b!2117069 d!642704))

(declare-fun d!642706 () Bool)

(declare-fun lambda!78323 () Int)

(declare-fun exists!685 ((InoxSet Context!2430) Int) Bool)

(assert (=> d!642706 (= (nullableZipper!52 lt!793898) (exists!685 lt!793898 lambda!78323))))

(declare-fun bs!441287 () Bool)

(assert (= bs!441287 d!642706))

(declare-fun m!2572087 () Bool)

(assert (=> bs!441287 m!2572087))

(assert (=> b!2117069 d!642706))

(declare-fun d!642708 () Bool)

(declare-fun lt!794041 () tuple2!23142)

(assert (=> d!642708 (= (++!6313 (_1!13449 lt!794041) (_2!13449 lt!794041)) lt!793897)))

(declare-fun findLongestMatchInner!596 (Regex!5645 List!23682 Int List!23682 List!23682 Int) tuple2!23142)

(assert (=> d!642708 (= lt!794041 (findLongestMatchInner!596 r!15373 Nil!23598 0 lt!793897 lt!793897 (sizeTr!98 lt!793897 0)))))

(declare-fun lt!794043 () Unit!37556)

(declare-fun lt!794042 () Unit!37556)

(assert (=> d!642708 (= lt!794043 lt!794042)))

(declare-fun lt!794047 () List!23682)

(declare-fun lt!794048 () Int)

(assert (=> d!642708 (= (sizeTr!98 lt!794047 lt!794048) (+ (size!18433 lt!794047) lt!794048))))

(assert (=> d!642708 (= lt!794042 (lemmaSizeTrEqualsSize!98 lt!794047 lt!794048))))

(assert (=> d!642708 (= lt!794048 0)))

(assert (=> d!642708 (= lt!794047 Nil!23598)))

(declare-fun lt!794044 () Unit!37556)

(declare-fun lt!794045 () Unit!37556)

(assert (=> d!642708 (= lt!794044 lt!794045)))

(declare-fun lt!794046 () Int)

(assert (=> d!642708 (= (sizeTr!98 lt!793897 lt!794046) (+ (size!18433 lt!793897) lt!794046))))

(assert (=> d!642708 (= lt!794045 (lemmaSizeTrEqualsSize!98 lt!793897 lt!794046))))

(assert (=> d!642708 (= lt!794046 0)))

(assert (=> d!642708 (validRegex!2229 r!15373)))

(assert (=> d!642708 (= (findLongestMatch!515 r!15373 lt!793897) lt!794041)))

(declare-fun bs!441288 () Bool)

(assert (= bs!441288 d!642708))

(declare-fun m!2572089 () Bool)

(assert (=> bs!441288 m!2572089))

(declare-fun m!2572091 () Bool)

(assert (=> bs!441288 m!2572091))

(assert (=> bs!441288 m!2571887))

(assert (=> bs!441288 m!2571859))

(declare-fun m!2572093 () Bool)

(assert (=> bs!441288 m!2572093))

(declare-fun m!2572095 () Bool)

(assert (=> bs!441288 m!2572095))

(declare-fun m!2572097 () Bool)

(assert (=> bs!441288 m!2572097))

(assert (=> bs!441288 m!2571855))

(declare-fun m!2572099 () Bool)

(assert (=> bs!441288 m!2572099))

(assert (=> bs!441288 m!2571855))

(declare-fun m!2572101 () Bool)

(assert (=> bs!441288 m!2572101))

(assert (=> b!2117069 d!642708))

(declare-fun d!642710 () Bool)

(assert (=> d!642710 (= (list!9507 (_1!13446 lt!793900)) (list!9508 (c!339387 (_1!13446 lt!793900))))))

(declare-fun bs!441289 () Bool)

(assert (= bs!441289 d!642710))

(declare-fun m!2572103 () Bool)

(assert (=> bs!441289 m!2572103))

(assert (=> b!2117069 d!642710))

(declare-fun d!642712 () Bool)

(declare-fun validCacheMapDown!237 (MutableMap!2311) Bool)

(assert (=> d!642712 (= (valid!1887 cacheDown!1229) (validCacheMapDown!237 (cache!2692 cacheDown!1229)))))

(declare-fun bs!441290 () Bool)

(assert (= bs!441290 d!642712))

(declare-fun m!2572105 () Bool)

(assert (=> bs!441290 m!2572105))

(assert (=> b!2117060 d!642712))

(declare-fun d!642714 () Bool)

(declare-fun lt!794051 () tuple2!23138)

(assert (=> d!642714 (= (tuple2!23143 (list!9507 (_1!13446 lt!794051)) (list!9507 (_2!13446 lt!794051))) (findLongestMatch!515 r!15373 (list!9507 input!6660)))))

(declare-fun choose!12658 (Regex!5645 BalanceConc!15330 BalanceConc!15330) tuple2!23138)

(assert (=> d!642714 (= lt!794051 (choose!12658 r!15373 input!6660 totalInput!1306))))

(assert (=> d!642714 (validRegex!2229 r!15373)))

(assert (=> d!642714 (= (findLongestMatchWithZipperSequenceV2!82 r!15373 input!6660 totalInput!1306) lt!794051)))

(declare-fun bs!441291 () Bool)

(assert (= bs!441291 d!642714))

(declare-fun m!2572107 () Bool)

(assert (=> bs!441291 m!2572107))

(declare-fun m!2572109 () Bool)

(assert (=> bs!441291 m!2572109))

(declare-fun m!2572111 () Bool)

(assert (=> bs!441291 m!2572111))

(assert (=> bs!441291 m!2571887))

(assert (=> bs!441291 m!2571907))

(assert (=> bs!441291 m!2571973))

(assert (=> bs!441291 m!2571907))

(assert (=> b!2117070 d!642714))

(declare-fun d!642716 () Bool)

(assert (=> d!642716 (= (valid!1887 (_3!1878 lt!793892)) (validCacheMapDown!237 (cache!2692 (_3!1878 lt!793892))))))

(declare-fun bs!441292 () Bool)

(assert (= bs!441292 d!642716))

(declare-fun m!2572113 () Bool)

(assert (=> bs!441292 m!2572113))

(assert (=> b!2117052 d!642716))

(declare-fun d!642718 () Bool)

(declare-fun validCacheMapFurthestNullable!89 (MutableMap!2312 BalanceConc!15330) Bool)

(assert (=> d!642718 (= (valid!1885 cacheFurthestNullable!141) (validCacheMapFurthestNullable!89 (cache!2693 cacheFurthestNullable!141) (totalInput!2863 cacheFurthestNullable!141)))))

(declare-fun bs!441293 () Bool)

(assert (= bs!441293 d!642718))

(declare-fun m!2572115 () Bool)

(assert (=> bs!441293 m!2572115))

(assert (=> b!2117034 d!642718))

(declare-fun d!642720 () Bool)

(assert (=> d!642720 (= (valid!1885 (_4!469 lt!793892)) (validCacheMapFurthestNullable!89 (cache!2693 (_4!469 lt!793892)) (totalInput!2863 (_4!469 lt!793892))))))

(declare-fun bs!441294 () Bool)

(assert (= bs!441294 d!642720))

(declare-fun m!2572117 () Bool)

(assert (=> bs!441294 m!2572117))

(assert (=> b!2117072 d!642720))

(declare-fun d!642722 () Bool)

(declare-fun isBalanced!2443 (Conc!7784) Bool)

(assert (=> d!642722 (= (inv!31176 (totalInput!2863 cacheFurthestNullable!141)) (isBalanced!2443 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))))

(declare-fun bs!441295 () Bool)

(assert (= bs!441295 d!642722))

(declare-fun m!2572119 () Bool)

(assert (=> bs!441295 m!2572119))

(assert (=> b!2117063 d!642722))

(declare-fun d!642724 () Bool)

(declare-fun res!918261 () Bool)

(declare-fun e!1347795 () Bool)

(assert (=> d!642724 (=> (not res!918261) (not e!1347795))))

(assert (=> d!642724 (= res!918261 ((_ is HashMap!2312) (cache!2693 cacheFurthestNullable!141)))))

(assert (=> d!642724 (= (inv!31179 cacheFurthestNullable!141) e!1347795)))

(declare-fun b!2117281 () Bool)

(assert (=> b!2117281 (= e!1347795 (validCacheMapFurthestNullable!89 (cache!2693 cacheFurthestNullable!141) (totalInput!2863 cacheFurthestNullable!141)))))

(assert (= (and d!642724 res!918261) b!2117281))

(assert (=> b!2117281 m!2572115))

(assert (=> start!206714 d!642724))

(declare-fun d!642726 () Bool)

(declare-fun res!918264 () Bool)

(declare-fun e!1347798 () Bool)

(assert (=> d!642726 (=> (not res!918264) (not e!1347798))))

(assert (=> d!642726 (= res!918264 ((_ is HashMap!2310) (cache!2691 cacheUp!1110)))))

(assert (=> d!642726 (= (inv!31178 cacheUp!1110) e!1347798)))

(declare-fun b!2117284 () Bool)

(declare-fun validCacheMapUp!239 (MutableMap!2310) Bool)

(assert (=> b!2117284 (= e!1347798 (validCacheMapUp!239 (cache!2691 cacheUp!1110)))))

(assert (= (and d!642726 res!918264) b!2117284))

(declare-fun m!2572121 () Bool)

(assert (=> b!2117284 m!2572121))

(assert (=> start!206714 d!642726))

(declare-fun b!2117303 () Bool)

(declare-fun res!918279 () Bool)

(declare-fun e!1347817 () Bool)

(assert (=> b!2117303 (=> (not res!918279) (not e!1347817))))

(declare-fun call!128603 () Bool)

(assert (=> b!2117303 (= res!918279 call!128603)))

(declare-fun e!1347813 () Bool)

(assert (=> b!2117303 (= e!1347813 e!1347817)))

(declare-fun d!642728 () Bool)

(declare-fun res!918277 () Bool)

(declare-fun e!1347815 () Bool)

(assert (=> d!642728 (=> res!918277 e!1347815)))

(assert (=> d!642728 (= res!918277 ((_ is ElementMatch!5645) r!15373))))

(assert (=> d!642728 (= (validRegex!2229 r!15373) e!1347815)))

(declare-fun bm!128596 () Bool)

(declare-fun call!128602 () Bool)

(declare-fun c!339426 () Bool)

(assert (=> bm!128596 (= call!128602 (validRegex!2229 (ite c!339426 (regTwo!11803 r!15373) (regTwo!11802 r!15373))))))

(declare-fun b!2117304 () Bool)

(declare-fun e!1347816 () Bool)

(declare-fun e!1347814 () Bool)

(assert (=> b!2117304 (= e!1347816 e!1347814)))

(declare-fun res!918276 () Bool)

(declare-fun nullable!1682 (Regex!5645) Bool)

(assert (=> b!2117304 (= res!918276 (not (nullable!1682 (reg!5974 r!15373))))))

(assert (=> b!2117304 (=> (not res!918276) (not e!1347814))))

(declare-fun b!2117305 () Bool)

(assert (=> b!2117305 (= e!1347815 e!1347816)))

(declare-fun c!339427 () Bool)

(assert (=> b!2117305 (= c!339427 ((_ is Star!5645) r!15373))))

(declare-fun b!2117306 () Bool)

(assert (=> b!2117306 (= e!1347816 e!1347813)))

(assert (=> b!2117306 (= c!339426 ((_ is Union!5645) r!15373))))

(declare-fun b!2117307 () Bool)

(declare-fun e!1347818 () Bool)

(assert (=> b!2117307 (= e!1347818 call!128602)))

(declare-fun b!2117308 () Bool)

(declare-fun e!1347819 () Bool)

(assert (=> b!2117308 (= e!1347819 e!1347818)))

(declare-fun res!918278 () Bool)

(assert (=> b!2117308 (=> (not res!918278) (not e!1347818))))

(assert (=> b!2117308 (= res!918278 call!128603)))

(declare-fun b!2117309 () Bool)

(declare-fun res!918275 () Bool)

(assert (=> b!2117309 (=> res!918275 e!1347819)))

(assert (=> b!2117309 (= res!918275 (not ((_ is Concat!9947) r!15373)))))

(assert (=> b!2117309 (= e!1347813 e!1347819)))

(declare-fun bm!128597 () Bool)

(declare-fun call!128601 () Bool)

(assert (=> bm!128597 (= call!128603 call!128601)))

(declare-fun bm!128598 () Bool)

(assert (=> bm!128598 (= call!128601 (validRegex!2229 (ite c!339427 (reg!5974 r!15373) (ite c!339426 (regOne!11803 r!15373) (regOne!11802 r!15373)))))))

(declare-fun b!2117310 () Bool)

(assert (=> b!2117310 (= e!1347814 call!128601)))

(declare-fun b!2117311 () Bool)

(assert (=> b!2117311 (= e!1347817 call!128602)))

(assert (= (and d!642728 (not res!918277)) b!2117305))

(assert (= (and b!2117305 c!339427) b!2117304))

(assert (= (and b!2117305 (not c!339427)) b!2117306))

(assert (= (and b!2117304 res!918276) b!2117310))

(assert (= (and b!2117306 c!339426) b!2117303))

(assert (= (and b!2117306 (not c!339426)) b!2117309))

(assert (= (and b!2117303 res!918279) b!2117311))

(assert (= (and b!2117309 (not res!918275)) b!2117308))

(assert (= (and b!2117308 res!918278) b!2117307))

(assert (= (or b!2117311 b!2117307) bm!128596))

(assert (= (or b!2117303 b!2117308) bm!128597))

(assert (= (or b!2117310 bm!128597) bm!128598))

(declare-fun m!2572123 () Bool)

(assert (=> bm!128596 m!2572123))

(declare-fun m!2572125 () Bool)

(assert (=> b!2117304 m!2572125))

(declare-fun m!2572127 () Bool)

(assert (=> bm!128598 m!2572127))

(assert (=> start!206714 d!642728))

(declare-fun d!642730 () Bool)

(assert (=> d!642730 (= (inv!31176 input!6660) (isBalanced!2443 (c!339387 input!6660)))))

(declare-fun bs!441296 () Bool)

(assert (= bs!441296 d!642730))

(declare-fun m!2572129 () Bool)

(assert (=> bs!441296 m!2572129))

(assert (=> start!206714 d!642730))

(declare-fun d!642732 () Bool)

(assert (=> d!642732 (= (inv!31176 totalInput!1306) (isBalanced!2443 (c!339387 totalInput!1306)))))

(declare-fun bs!441297 () Bool)

(assert (= bs!441297 d!642732))

(declare-fun m!2572131 () Bool)

(assert (=> bs!441297 m!2572131))

(assert (=> start!206714 d!642732))

(declare-fun d!642734 () Bool)

(declare-fun res!918282 () Bool)

(declare-fun e!1347822 () Bool)

(assert (=> d!642734 (=> (not res!918282) (not e!1347822))))

(assert (=> d!642734 (= res!918282 ((_ is HashMap!2311) (cache!2692 cacheDown!1229)))))

(assert (=> d!642734 (= (inv!31177 cacheDown!1229) e!1347822)))

(declare-fun b!2117314 () Bool)

(assert (=> b!2117314 (= e!1347822 (validCacheMapDown!237 (cache!2692 cacheDown!1229)))))

(assert (= (and d!642734 res!918282) b!2117314))

(assert (=> b!2117314 m!2572105))

(assert (=> start!206714 d!642734))

(declare-fun d!642736 () Bool)

(assert (=> d!642736 (= (array_inv!2627 (_keys!2695 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))) (bvsge (size!18428 (_keys!2695 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))) #b00000000000000000000000000000000))))

(assert (=> b!2117055 d!642736))

(declare-fun d!642738 () Bool)

(assert (=> d!642738 (= (array_inv!2629 (_values!2678 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))) (bvsge (size!18431 (_values!2678 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))) #b00000000000000000000000000000000))))

(assert (=> b!2117055 d!642738))

(declare-fun d!642740 () Bool)

(declare-fun e!1347825 () Bool)

(assert (=> d!642740 e!1347825))

(declare-fun res!918287 () Bool)

(assert (=> d!642740 (=> (not res!918287) (not e!1347825))))

(declare-fun lt!794057 () tuple2!23138)

(assert (=> d!642740 (= res!918287 (isBalanced!2443 (c!339387 (_1!13446 lt!794057))))))

(declare-datatypes ((tuple2!23146 0))(
  ( (tuple2!23147 (_1!13453 Conc!7784) (_2!13453 Conc!7784)) )
))
(declare-fun lt!794056 () tuple2!23146)

(assert (=> d!642740 (= lt!794057 (tuple2!23139 (BalanceConc!15331 (_1!13453 lt!794056)) (BalanceConc!15331 (_2!13453 lt!794056))))))

(declare-fun splitAt!16 (Conc!7784 Int) tuple2!23146)

(assert (=> d!642740 (= lt!794056 (splitAt!16 (c!339387 input!6660) (ite c!339385 0 lt!793904)))))

(assert (=> d!642740 (isBalanced!2443 (c!339387 input!6660))))

(assert (=> d!642740 (= (splitAt!15 input!6660 (ite c!339385 0 lt!793904)) lt!794057)))

(declare-fun b!2117319 () Bool)

(declare-fun res!918288 () Bool)

(assert (=> b!2117319 (=> (not res!918288) (not e!1347825))))

(assert (=> b!2117319 (= res!918288 (isBalanced!2443 (c!339387 (_2!13446 lt!794057))))))

(declare-fun b!2117320 () Bool)

(declare-fun splitAtIndex!21 (List!23682 Int) tuple2!23142)

(assert (=> b!2117320 (= e!1347825 (= (tuple2!23143 (list!9507 (_1!13446 lt!794057)) (list!9507 (_2!13446 lt!794057))) (splitAtIndex!21 (list!9507 input!6660) (ite c!339385 0 lt!793904))))))

(assert (= (and d!642740 res!918287) b!2117319))

(assert (= (and b!2117319 res!918288) b!2117320))

(declare-fun m!2572133 () Bool)

(assert (=> d!642740 m!2572133))

(declare-fun m!2572135 () Bool)

(assert (=> d!642740 m!2572135))

(assert (=> d!642740 m!2572129))

(declare-fun m!2572137 () Bool)

(assert (=> b!2117319 m!2572137))

(declare-fun m!2572139 () Bool)

(assert (=> b!2117320 m!2572139))

(declare-fun m!2572141 () Bool)

(assert (=> b!2117320 m!2572141))

(assert (=> b!2117320 m!2571907))

(assert (=> b!2117320 m!2571907))

(declare-fun m!2572143 () Bool)

(assert (=> b!2117320 m!2572143))

(assert (=> bm!128573 d!642740))

(declare-fun d!642742 () Bool)

(assert (=> d!642742 (= (array_inv!2627 (_keys!2693 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))) (bvsge (size!18428 (_keys!2693 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))) #b00000000000000000000000000000000))))

(assert (=> b!2117035 d!642742))

(declare-fun d!642744 () Bool)

(assert (=> d!642744 (= (array_inv!2628 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))) (bvsge (size!18429 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))) #b00000000000000000000000000000000))))

(assert (=> b!2117035 d!642744))

(declare-fun d!642746 () Bool)

(assert (=> d!642746 (= (list!9507 (_2!13446 lt!793900)) (list!9508 (c!339387 (_2!13446 lt!793900))))))

(declare-fun bs!441298 () Bool)

(assert (= bs!441298 d!642746))

(declare-fun m!2572145 () Bool)

(assert (=> bs!441298 m!2572145))

(assert (=> b!2117056 d!642746))

(declare-fun d!642748 () Bool)

(declare-fun c!339428 () Bool)

(assert (=> d!642748 (= c!339428 ((_ is Node!7784) (c!339387 input!6660)))))

(declare-fun e!1347826 () Bool)

(assert (=> d!642748 (= (inv!31175 (c!339387 input!6660)) e!1347826)))

(declare-fun b!2117321 () Bool)

(assert (=> b!2117321 (= e!1347826 (inv!31180 (c!339387 input!6660)))))

(declare-fun b!2117322 () Bool)

(declare-fun e!1347827 () Bool)

(assert (=> b!2117322 (= e!1347826 e!1347827)))

(declare-fun res!918289 () Bool)

(assert (=> b!2117322 (= res!918289 (not ((_ is Leaf!11374) (c!339387 input!6660))))))

(assert (=> b!2117322 (=> res!918289 e!1347827)))

(declare-fun b!2117323 () Bool)

(assert (=> b!2117323 (= e!1347827 (inv!31181 (c!339387 input!6660)))))

(assert (= (and d!642748 c!339428) b!2117321))

(assert (= (and d!642748 (not c!339428)) b!2117322))

(assert (= (and b!2117322 (not res!918289)) b!2117323))

(declare-fun m!2572147 () Bool)

(assert (=> b!2117321 m!2572147))

(declare-fun m!2572149 () Bool)

(assert (=> b!2117323 m!2572149))

(assert (=> b!2117027 d!642748))

(declare-fun b!2117334 () Bool)

(declare-fun e!1347834 () tuple2!23144)

(declare-fun Unit!37565 () Unit!37556)

(assert (=> b!2117334 (= e!1347834 (tuple2!23145 Unit!37565 cacheFurthestNullable!141))))

(declare-fun lt!794069 () tuple2!23144)

(declare-fun b!2117335 () Bool)

(declare-fun update!84 (CacheFurthestNullable!560 (InoxSet Context!2430) Int Int Int BalanceConc!15330) tuple2!23144)

(assert (=> b!2117335 (= lt!794069 (update!84 cacheFurthestNullable!141 (z!5693 (h!29001 (_2!13444 (_1!13445 lt!793905)))) (from!2604 (h!29001 (_2!13444 (_1!13445 lt!793905)))) (lastNullablePos!292 (h!29001 (_2!13444 (_1!13445 lt!793905)))) (_1!13444 (_1!13445 lt!793905)) totalInput!1306))))

(declare-fun lt!794067 () Unit!37556)

(declare-fun lemmaInvariant!378 (CacheFurthestNullable!560) Unit!37556)

(assert (=> b!2117335 (= lt!794067 (lemmaInvariant!378 cacheFurthestNullable!141))))

(assert (=> b!2117335 (= e!1347834 (tuple2!23145 (_1!13451 lt!794069) (_2!13451 lt!794069)))))

(declare-fun b!2117336 () Bool)

(declare-fun e!1347836 () Bool)

(declare-fun lt!794066 () tuple2!23144)

(assert (=> b!2117336 (= e!1347836 (= (totalInput!2863 (_2!13451 lt!794066)) totalInput!1306))))

(declare-fun b!2117337 () Bool)

(declare-fun e!1347835 () tuple2!23144)

(declare-fun lt!794068 () tuple2!23144)

(assert (=> b!2117337 (= e!1347835 (tuple2!23145 (_1!13451 lt!794068) (_2!13451 lt!794068)))))

(declare-fun c!339433 () Bool)

(assert (=> b!2117337 (= c!339433 (and (> lt!793906 1048576) (not (= (- 0 (* 10 (ite (>= 0 0) (div 0 10) (- (div (- 0) 10))))) 0))))))

(assert (=> b!2117337 (= lt!794068 (fillUpCache!5 (t!196193 (_2!13444 (_1!13445 lt!793905))) totalInput!1306 lt!793906 (_1!13444 (_1!13445 lt!793905)) (+ 0 1) (_2!13451 e!1347834)))))

(declare-fun d!642750 () Bool)

(assert (=> d!642750 e!1347836))

(declare-fun res!918293 () Bool)

(assert (=> d!642750 (=> (not res!918293) (not e!1347836))))

(assert (=> d!642750 (= res!918293 (valid!1885 (_2!13451 lt!794066)))))

(assert (=> d!642750 (= lt!794066 e!1347835)))

(declare-fun c!339434 () Bool)

(assert (=> d!642750 (= c!339434 ((_ is Nil!23600) (_2!13444 (_1!13445 lt!793905))))))

(assert (=> d!642750 (valid!1885 cacheFurthestNullable!141)))

(assert (=> d!642750 (= (fillUpCache!5 (_2!13444 (_1!13445 lt!793905)) totalInput!1306 lt!793906 (_1!13444 (_1!13445 lt!793905)) 0 cacheFurthestNullable!141) lt!794066)))

(declare-fun b!2117338 () Bool)

(declare-fun Unit!37566 () Unit!37556)

(assert (=> b!2117338 (= e!1347835 (tuple2!23145 Unit!37566 cacheFurthestNullable!141))))

(assert (= (and d!642750 c!339434) b!2117338))

(assert (= (and d!642750 (not c!339434)) b!2117337))

(assert (= (and b!2117337 c!339433) b!2117334))

(assert (= (and b!2117337 (not c!339433)) b!2117335))

(assert (= (and d!642750 res!918293) b!2117336))

(declare-fun m!2572151 () Bool)

(assert (=> b!2117335 m!2572151))

(declare-fun m!2572153 () Bool)

(assert (=> b!2117335 m!2572153))

(declare-fun m!2572155 () Bool)

(assert (=> b!2117337 m!2572155))

(declare-fun m!2572157 () Bool)

(assert (=> d!642750 m!2572157))

(assert (=> d!642750 m!2571931))

(assert (=> b!2117046 d!642750))

(declare-fun d!642752 () Bool)

(declare-fun c!339435 () Bool)

(assert (=> d!642752 (= c!339435 ((_ is Node!7784) (c!339387 totalInput!1306)))))

(declare-fun e!1347837 () Bool)

(assert (=> d!642752 (= (inv!31175 (c!339387 totalInput!1306)) e!1347837)))

(declare-fun b!2117339 () Bool)

(assert (=> b!2117339 (= e!1347837 (inv!31180 (c!339387 totalInput!1306)))))

(declare-fun b!2117340 () Bool)

(declare-fun e!1347838 () Bool)

(assert (=> b!2117340 (= e!1347837 e!1347838)))

(declare-fun res!918294 () Bool)

(assert (=> b!2117340 (= res!918294 (not ((_ is Leaf!11374) (c!339387 totalInput!1306))))))

(assert (=> b!2117340 (=> res!918294 e!1347838)))

(declare-fun b!2117341 () Bool)

(assert (=> b!2117341 (= e!1347838 (inv!31181 (c!339387 totalInput!1306)))))

(assert (= (and d!642752 c!339435) b!2117339))

(assert (= (and d!642752 (not c!339435)) b!2117340))

(assert (= (and b!2117340 (not res!918294)) b!2117341))

(declare-fun m!2572159 () Bool)

(assert (=> b!2117339 m!2572159))

(declare-fun m!2572161 () Bool)

(assert (=> b!2117341 m!2572161))

(assert (=> b!2117037 d!642752))

(declare-fun d!642754 () Bool)

(assert (=> d!642754 (= (array_inv!2627 (_keys!2694 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))) (bvsge (size!18428 (_keys!2694 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2117058 d!642754))

(declare-fun d!642756 () Bool)

(assert (=> d!642756 (= (array_inv!2630 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))) (bvsge (size!18430 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2117058 d!642756))

(declare-fun d!642758 () Bool)

(assert (=> d!642758 (= (valid!1886 (_2!13450 lt!793892)) (validCacheMapUp!239 (cache!2691 (_2!13450 lt!793892))))))

(declare-fun bs!441299 () Bool)

(assert (= bs!441299 d!642758))

(declare-fun m!2572163 () Bool)

(assert (=> bs!441299 m!2572163))

(assert (=> b!2117059 d!642758))

(declare-fun d!642760 () Bool)

(declare-fun res!918295 () Bool)

(declare-fun e!1347839 () Bool)

(assert (=> d!642760 (=> res!918295 e!1347839)))

(assert (=> d!642760 (= res!918295 ((_ is Nil!23600) (_2!13444 (_1!13445 lt!793905))))))

(assert (=> d!642760 (= (forall!4845 (_2!13444 (_1!13445 lt!793905)) lambda!78293) e!1347839)))

(declare-fun b!2117342 () Bool)

(declare-fun e!1347840 () Bool)

(assert (=> b!2117342 (= e!1347839 e!1347840)))

(declare-fun res!918296 () Bool)

(assert (=> b!2117342 (=> (not res!918296) (not e!1347840))))

(assert (=> b!2117342 (= res!918296 (dynLambda!11302 lambda!78293 (h!29001 (_2!13444 (_1!13445 lt!793905)))))))

(declare-fun b!2117343 () Bool)

(assert (=> b!2117343 (= e!1347840 (forall!4845 (t!196193 (_2!13444 (_1!13445 lt!793905))) lambda!78293))))

(assert (= (and d!642760 (not res!918295)) b!2117342))

(assert (= (and b!2117342 res!918296) b!2117343))

(declare-fun b_lambda!70395 () Bool)

(assert (=> (not b_lambda!70395) (not b!2117342)))

(declare-fun m!2572165 () Bool)

(assert (=> b!2117342 m!2572165))

(declare-fun m!2572167 () Bool)

(assert (=> b!2117343 m!2572167))

(assert (=> b!2117039 d!642760))

(declare-fun d!642762 () Bool)

(declare-fun e!1347843 () Bool)

(assert (=> d!642762 e!1347843))

(declare-fun res!918299 () Bool)

(assert (=> d!642762 (=> res!918299 e!1347843)))

(declare-fun lt!794072 () Bool)

(assert (=> d!642762 (= res!918299 (not lt!794072))))

(declare-fun drop!1178 (List!23682 Int) List!23682)

(assert (=> d!642762 (= lt!794072 (= lt!793897 (drop!1178 (list!9507 totalInput!1306) (- (size!18433 (list!9507 totalInput!1306)) (size!18433 lt!793897)))))))

(assert (=> d!642762 (= (isSuffix!605 lt!793897 (list!9507 totalInput!1306)) lt!794072)))

(declare-fun b!2117346 () Bool)

(assert (=> b!2117346 (= e!1347843 (>= (size!18433 (list!9507 totalInput!1306)) (size!18433 lt!793897)))))

(assert (= (and d!642762 (not res!918299)) b!2117346))

(assert (=> d!642762 m!2571903))

(assert (=> d!642762 m!2571967))

(assert (=> d!642762 m!2571859))

(assert (=> d!642762 m!2571903))

(declare-fun m!2572169 () Bool)

(assert (=> d!642762 m!2572169))

(assert (=> b!2117346 m!2571903))

(assert (=> b!2117346 m!2571967))

(assert (=> b!2117346 m!2571859))

(assert (=> b!2117031 d!642762))

(declare-fun d!642764 () Bool)

(assert (=> d!642764 (= (list!9507 totalInput!1306) (list!9508 (c!339387 totalInput!1306)))))

(declare-fun bs!441300 () Bool)

(assert (= bs!441300 d!642764))

(declare-fun m!2572171 () Bool)

(assert (=> bs!441300 m!2572171))

(assert (=> b!2117031 d!642764))

(declare-fun d!642766 () Bool)

(assert (=> d!642766 (= (list!9507 input!6660) (list!9508 (c!339387 input!6660)))))

(declare-fun bs!441301 () Bool)

(assert (= bs!441301 d!642766))

(declare-fun m!2572173 () Bool)

(assert (=> bs!441301 m!2572173))

(assert (=> b!2117031 d!642766))

(declare-fun d!642768 () Bool)

(assert (=> d!642768 (= (valid!1886 cacheUp!1110) (validCacheMapUp!239 (cache!2691 cacheUp!1110)))))

(declare-fun bs!441302 () Bool)

(assert (= bs!441302 d!642768))

(assert (=> bs!441302 m!2572121))

(assert (=> b!2117040 d!642768))

(declare-fun setIsEmpty!14339 () Bool)

(declare-fun setRes!14339 () Bool)

(assert (=> setIsEmpty!14339 setRes!14339))

(declare-fun b!2117361 () Bool)

(declare-fun e!1347860 () Bool)

(declare-fun tp!646586 () Bool)

(assert (=> b!2117361 (= e!1347860 tp!646586)))

(declare-fun b!2117362 () Bool)

(declare-fun e!1347856 () Bool)

(declare-fun tp!646585 () Bool)

(assert (=> b!2117362 (= e!1347856 tp!646585)))

(declare-fun b!2117363 () Bool)

(declare-fun e!1347857 () Bool)

(declare-fun tp!646588 () Bool)

(assert (=> b!2117363 (= e!1347857 tp!646588)))

(declare-fun mapNonEmpty!11585 () Bool)

(declare-fun mapRes!11585 () Bool)

(declare-fun tp!646583 () Bool)

(declare-fun e!1347858 () Bool)

(assert (=> mapNonEmpty!11585 (= mapRes!11585 (and tp!646583 e!1347858))))

(declare-fun mapRest!11585 () (Array (_ BitVec 32) List!23683))

(declare-fun mapKey!11585 () (_ BitVec 32))

(declare-fun mapValue!11585 () List!23683)

(assert (=> mapNonEmpty!11585 (= mapRest!11570 (store mapRest!11585 mapKey!11585 mapValue!11585))))

(declare-fun setIsEmpty!14340 () Bool)

(declare-fun setRes!14340 () Bool)

(assert (=> setIsEmpty!14340 setRes!14340))

(declare-fun b!2117365 () Bool)

(declare-fun tp!646587 () Bool)

(declare-fun inv!31182 (Context!2430) Bool)

(assert (=> b!2117365 (= e!1347858 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 mapValue!11585)))) e!1347856 tp_is_empty!9479 setRes!14339 tp!646587))))

(declare-fun condSetEmpty!14340 () Bool)

(assert (=> b!2117365 (= condSetEmpty!14340 (= (_2!13443 (h!29000 mapValue!11585)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setNonEmpty!14339 () Bool)

(declare-fun tp!646580 () Bool)

(declare-fun setElem!14339 () Context!2430)

(assert (=> setNonEmpty!14339 (= setRes!14339 (and tp!646580 (inv!31182 setElem!14339) e!1347857))))

(declare-fun setRest!14339 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14339 (= (_2!13443 (h!29000 mapValue!11585)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14339 true) setRest!14339))))

(declare-fun mapIsEmpty!11585 () Bool)

(assert (=> mapIsEmpty!11585 mapRes!11585))

(declare-fun tp!646581 () Bool)

(declare-fun e!1347861 () Bool)

(declare-fun b!2117364 () Bool)

(declare-fun mapDefault!11585 () List!23683)

(assert (=> b!2117364 (= e!1347861 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 mapDefault!11585)))) e!1347860 tp_is_empty!9479 setRes!14340 tp!646581))))

(declare-fun condSetEmpty!14339 () Bool)

(assert (=> b!2117364 (= condSetEmpty!14339 (= (_2!13443 (h!29000 mapDefault!11585)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun condMapEmpty!11585 () Bool)

(assert (=> mapNonEmpty!11569 (= condMapEmpty!11585 (= mapRest!11570 ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11585)))))

(assert (=> mapNonEmpty!11569 (= tp!646538 (and e!1347861 mapRes!11585))))

(declare-fun b!2117366 () Bool)

(declare-fun e!1347859 () Bool)

(declare-fun tp!646582 () Bool)

(assert (=> b!2117366 (= e!1347859 tp!646582)))

(declare-fun setNonEmpty!14340 () Bool)

(declare-fun tp!646584 () Bool)

(declare-fun setElem!14340 () Context!2430)

(assert (=> setNonEmpty!14340 (= setRes!14340 (and tp!646584 (inv!31182 setElem!14340) e!1347859))))

(declare-fun setRest!14340 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14340 (= (_2!13443 (h!29000 mapDefault!11585)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14340 true) setRest!14340))))

(assert (= (and mapNonEmpty!11569 condMapEmpty!11585) mapIsEmpty!11585))

(assert (= (and mapNonEmpty!11569 (not condMapEmpty!11585)) mapNonEmpty!11585))

(assert (= b!2117365 b!2117362))

(assert (= (and b!2117365 condSetEmpty!14340) setIsEmpty!14339))

(assert (= (and b!2117365 (not condSetEmpty!14340)) setNonEmpty!14339))

(assert (= setNonEmpty!14339 b!2117363))

(assert (= (and mapNonEmpty!11585 ((_ is Cons!23599) mapValue!11585)) b!2117365))

(assert (= b!2117364 b!2117361))

(assert (= (and b!2117364 condSetEmpty!14339) setIsEmpty!14340))

(assert (= (and b!2117364 (not condSetEmpty!14339)) setNonEmpty!14340))

(assert (= setNonEmpty!14340 b!2117366))

(assert (= (and mapNonEmpty!11569 ((_ is Cons!23599) mapDefault!11585)) b!2117364))

(declare-fun m!2572175 () Bool)

(assert (=> setNonEmpty!14340 m!2572175))

(declare-fun m!2572177 () Bool)

(assert (=> mapNonEmpty!11585 m!2572177))

(declare-fun m!2572179 () Bool)

(assert (=> b!2117364 m!2572179))

(declare-fun m!2572181 () Bool)

(assert (=> b!2117365 m!2572181))

(declare-fun m!2572183 () Bool)

(assert (=> setNonEmpty!14339 m!2572183))

(declare-fun b!2117375 () Bool)

(declare-fun e!1347870 () Bool)

(declare-fun tp!646597 () Bool)

(assert (=> b!2117375 (= e!1347870 tp!646597)))

(declare-fun b!2117376 () Bool)

(declare-fun tp!646600 () Bool)

(declare-fun e!1347868 () Bool)

(declare-fun e!1347869 () Bool)

(declare-fun setRes!14343 () Bool)

(assert (=> b!2117376 (= e!1347868 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 mapValue!11569)))) e!1347869 tp_is_empty!9479 setRes!14343 tp!646600))))

(declare-fun condSetEmpty!14343 () Bool)

(assert (=> b!2117376 (= condSetEmpty!14343 (= (_2!13443 (h!29000 mapValue!11569)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117377 () Bool)

(declare-fun tp!646598 () Bool)

(assert (=> b!2117377 (= e!1347869 tp!646598)))

(declare-fun setElem!14343 () Context!2430)

(declare-fun setNonEmpty!14343 () Bool)

(declare-fun tp!646599 () Bool)

(assert (=> setNonEmpty!14343 (= setRes!14343 (and tp!646599 (inv!31182 setElem!14343) e!1347870))))

(declare-fun setRest!14343 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14343 (= (_2!13443 (h!29000 mapValue!11569)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14343 true) setRest!14343))))

(assert (=> mapNonEmpty!11569 (= tp!646543 e!1347868)))

(declare-fun setIsEmpty!14343 () Bool)

(assert (=> setIsEmpty!14343 setRes!14343))

(assert (= b!2117376 b!2117377))

(assert (= (and b!2117376 condSetEmpty!14343) setIsEmpty!14343))

(assert (= (and b!2117376 (not condSetEmpty!14343)) setNonEmpty!14343))

(assert (= setNonEmpty!14343 b!2117375))

(assert (= (and mapNonEmpty!11569 ((_ is Cons!23599) mapValue!11569)) b!2117376))

(declare-fun m!2572185 () Bool)

(assert (=> b!2117376 m!2572185))

(declare-fun m!2572187 () Bool)

(assert (=> setNonEmpty!14343 m!2572187))

(declare-fun b!2117382 () Bool)

(declare-fun e!1347873 () Bool)

(declare-fun setRes!14346 () Bool)

(assert (=> b!2117382 (= e!1347873 setRes!14346)))

(declare-fun condSetEmpty!14346 () Bool)

(assert (=> b!2117382 (= condSetEmpty!14346 (= (_2!13443 (h!29000 mapDefault!11575)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14346 () Bool)

(assert (=> setIsEmpty!14346 setRes!14346))

(declare-fun setNonEmpty!14346 () Bool)

(assert (=> setNonEmpty!14346 (= setRes!14346 true)))

(declare-fun setElem!14346 () Context!2430)

(declare-fun setRest!14346 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14346 (= (_2!13443 (h!29000 mapDefault!11575)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14346 true) setRest!14346))))

(assert (=> b!2117116 e!1347873))

(assert (= (and b!2117382 condSetEmpty!14346) setIsEmpty!14346))

(assert (= (and b!2117382 (not condSetEmpty!14346)) setNonEmpty!14346))

(assert (= (and b!2117116 ((_ is Cons!23599) mapDefault!11575)) b!2117382))

(declare-fun e!1347881 () Bool)

(assert (=> b!2117035 (= tp!646539 e!1347881)))

(declare-fun setElem!14349 () Context!2430)

(declare-fun setNonEmpty!14349 () Bool)

(declare-fun setRes!14349 () Bool)

(declare-fun e!1347880 () Bool)

(declare-fun tp!646612 () Bool)

(assert (=> setNonEmpty!14349 (= setRes!14349 (and tp!646612 (inv!31182 setElem!14349) e!1347880))))

(declare-fun setRest!14349 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14349 (= (_2!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14349 true) setRest!14349))))

(declare-fun e!1347882 () Bool)

(declare-fun b!2117391 () Bool)

(declare-fun tp!646614 () Bool)

(declare-fun tp!646611 () Bool)

(assert (=> b!2117391 (= e!1347881 (and tp!646611 (inv!31182 (_2!13440 (_1!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))))) e!1347882 tp_is_empty!9479 setRes!14349 tp!646614))))

(declare-fun condSetEmpty!14349 () Bool)

(assert (=> b!2117391 (= condSetEmpty!14349 (= (_2!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14349 () Bool)

(assert (=> setIsEmpty!14349 setRes!14349))

(declare-fun b!2117392 () Bool)

(declare-fun tp!646613 () Bool)

(assert (=> b!2117392 (= e!1347880 tp!646613)))

(declare-fun b!2117393 () Bool)

(declare-fun tp!646615 () Bool)

(assert (=> b!2117393 (= e!1347882 tp!646615)))

(assert (= b!2117391 b!2117393))

(assert (= (and b!2117391 condSetEmpty!14349) setIsEmpty!14349))

(assert (= (and b!2117391 (not condSetEmpty!14349)) setNonEmpty!14349))

(assert (= setNonEmpty!14349 b!2117392))

(assert (= (and b!2117035 ((_ is Cons!23597) (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))) b!2117391))

(declare-fun m!2572189 () Bool)

(assert (=> setNonEmpty!14349 m!2572189))

(declare-fun m!2572191 () Bool)

(assert (=> b!2117391 m!2572191))

(declare-fun e!1347884 () Bool)

(assert (=> b!2117035 (= tp!646550 e!1347884)))

(declare-fun setElem!14350 () Context!2430)

(declare-fun tp!646617 () Bool)

(declare-fun setNonEmpty!14350 () Bool)

(declare-fun setRes!14350 () Bool)

(declare-fun e!1347883 () Bool)

(assert (=> setNonEmpty!14350 (= setRes!14350 (and tp!646617 (inv!31182 setElem!14350) e!1347883))))

(declare-fun setRest!14350 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14350 (= (_2!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14350 true) setRest!14350))))

(declare-fun b!2117394 () Bool)

(declare-fun tp!646619 () Bool)

(declare-fun tp!646616 () Bool)

(declare-fun e!1347885 () Bool)

(assert (=> b!2117394 (= e!1347884 (and tp!646616 (inv!31182 (_2!13440 (_1!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))))) e!1347885 tp_is_empty!9479 setRes!14350 tp!646619))))

(declare-fun condSetEmpty!14350 () Bool)

(assert (=> b!2117394 (= condSetEmpty!14350 (= (_2!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14350 () Bool)

(assert (=> setIsEmpty!14350 setRes!14350))

(declare-fun b!2117395 () Bool)

(declare-fun tp!646618 () Bool)

(assert (=> b!2117395 (= e!1347883 tp!646618)))

(declare-fun b!2117396 () Bool)

(declare-fun tp!646620 () Bool)

(assert (=> b!2117396 (= e!1347885 tp!646620)))

(assert (= b!2117394 b!2117396))

(assert (= (and b!2117394 condSetEmpty!14350) setIsEmpty!14350))

(assert (= (and b!2117394 (not condSetEmpty!14350)) setNonEmpty!14350))

(assert (= setNonEmpty!14350 b!2117395))

(assert (= (and b!2117035 ((_ is Cons!23597) (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))) b!2117394))

(declare-fun m!2572193 () Bool)

(assert (=> setNonEmpty!14350 m!2572193))

(declare-fun m!2572195 () Bool)

(assert (=> b!2117394 m!2572195))

(declare-fun b!2117401 () Bool)

(declare-fun e!1347888 () Bool)

(declare-fun setRes!14353 () Bool)

(assert (=> b!2117401 (= e!1347888 setRes!14353)))

(declare-fun condSetEmpty!14353 () Bool)

(assert (=> b!2117401 (= condSetEmpty!14353 (= (_2!13441 (h!28998 mapDefault!11576)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14353 () Bool)

(assert (=> setIsEmpty!14353 setRes!14353))

(declare-fun setNonEmpty!14353 () Bool)

(assert (=> setNonEmpty!14353 (= setRes!14353 true)))

(declare-fun setElem!14353 () Context!2430)

(declare-fun setRest!14353 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14353 (= (_2!13441 (h!28998 mapDefault!11576)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14353 true) setRest!14353))))

(assert (=> b!2117108 e!1347888))

(assert (= (and b!2117401 condSetEmpty!14353) setIsEmpty!14353))

(assert (= (and b!2117401 (not condSetEmpty!14353)) setNonEmpty!14353))

(assert (= (and b!2117108 ((_ is Cons!23597) mapDefault!11576)) b!2117401))

(declare-fun b!2117410 () Bool)

(declare-fun tp!646628 () Bool)

(declare-fun e!1347894 () Bool)

(declare-fun tp!646629 () Bool)

(assert (=> b!2117410 (= e!1347894 (and (inv!31175 (left!18281 (c!339387 totalInput!1306))) tp!646629 (inv!31175 (right!18611 (c!339387 totalInput!1306))) tp!646628))))

(declare-fun b!2117412 () Bool)

(declare-fun e!1347893 () Bool)

(declare-fun tp!646627 () Bool)

(assert (=> b!2117412 (= e!1347893 tp!646627)))

(declare-fun b!2117411 () Bool)

(declare-fun inv!31183 (IArray!15573) Bool)

(assert (=> b!2117411 (= e!1347894 (and (inv!31183 (xs!10726 (c!339387 totalInput!1306))) e!1347893))))

(assert (=> b!2117037 (= tp!646542 (and (inv!31175 (c!339387 totalInput!1306)) e!1347894))))

(assert (= (and b!2117037 ((_ is Node!7784) (c!339387 totalInput!1306))) b!2117410))

(assert (= b!2117411 b!2117412))

(assert (= (and b!2117037 ((_ is Leaf!11374) (c!339387 totalInput!1306))) b!2117411))

(declare-fun m!2572197 () Bool)

(assert (=> b!2117410 m!2572197))

(declare-fun m!2572199 () Bool)

(assert (=> b!2117410 m!2572199))

(declare-fun m!2572201 () Bool)

(assert (=> b!2117411 m!2572201))

(assert (=> b!2117037 m!2571915))

(declare-fun b!2117425 () Bool)

(declare-fun e!1347897 () Bool)

(declare-fun tp!646640 () Bool)

(assert (=> b!2117425 (= e!1347897 tp!646640)))

(declare-fun b!2117426 () Bool)

(declare-fun tp!646642 () Bool)

(declare-fun tp!646644 () Bool)

(assert (=> b!2117426 (= e!1347897 (and tp!646642 tp!646644))))

(assert (=> b!2117071 (= tp!646533 e!1347897)))

(declare-fun b!2117424 () Bool)

(declare-fun tp!646643 () Bool)

(declare-fun tp!646641 () Bool)

(assert (=> b!2117424 (= e!1347897 (and tp!646643 tp!646641))))

(declare-fun b!2117423 () Bool)

(assert (=> b!2117423 (= e!1347897 tp_is_empty!9479)))

(assert (= (and b!2117071 ((_ is ElementMatch!5645) (reg!5974 r!15373))) b!2117423))

(assert (= (and b!2117071 ((_ is Concat!9947) (reg!5974 r!15373))) b!2117424))

(assert (= (and b!2117071 ((_ is Star!5645) (reg!5974 r!15373))) b!2117425))

(assert (= (and b!2117071 ((_ is Union!5645) (reg!5974 r!15373))) b!2117426))

(declare-fun b!2117434 () Bool)

(declare-fun e!1347902 () Bool)

(declare-fun tp!646653 () Bool)

(assert (=> b!2117434 (= e!1347902 tp!646653)))

(declare-fun e!1347903 () Bool)

(assert (=> b!2117055 (= tp!646541 e!1347903)))

(declare-fun setIsEmpty!14356 () Bool)

(declare-fun setRes!14356 () Bool)

(assert (=> setIsEmpty!14356 setRes!14356))

(declare-fun setNonEmpty!14356 () Bool)

(declare-fun tp!646651 () Bool)

(declare-fun setElem!14356 () Context!2430)

(assert (=> setNonEmpty!14356 (= setRes!14356 (and tp!646651 (inv!31182 setElem!14356) e!1347902))))

(declare-fun setRest!14356 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14356 (= (_1!13447 (_1!13448 (h!29002 (zeroValue!2656 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14356 true) setRest!14356))))

(declare-fun b!2117433 () Bool)

(declare-fun tp!646652 () Bool)

(assert (=> b!2117433 (= e!1347903 (and setRes!14356 tp!646652))))

(declare-fun condSetEmpty!14356 () Bool)

(assert (=> b!2117433 (= condSetEmpty!14356 (= (_1!13447 (_1!13448 (h!29002 (zeroValue!2656 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))))) ((as const (Array Context!2430 Bool)) false)))))

(assert (= (and b!2117433 condSetEmpty!14356) setIsEmpty!14356))

(assert (= (and b!2117433 (not condSetEmpty!14356)) setNonEmpty!14356))

(assert (= setNonEmpty!14356 b!2117434))

(assert (= (and b!2117055 ((_ is Cons!23601) (zeroValue!2656 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141)))))))) b!2117433))

(declare-fun m!2572203 () Bool)

(assert (=> setNonEmpty!14356 m!2572203))

(declare-fun b!2117436 () Bool)

(declare-fun e!1347904 () Bool)

(declare-fun tp!646656 () Bool)

(assert (=> b!2117436 (= e!1347904 tp!646656)))

(declare-fun e!1347905 () Bool)

(assert (=> b!2117055 (= tp!646537 e!1347905)))

(declare-fun setIsEmpty!14357 () Bool)

(declare-fun setRes!14357 () Bool)

(assert (=> setIsEmpty!14357 setRes!14357))

(declare-fun tp!646654 () Bool)

(declare-fun setNonEmpty!14357 () Bool)

(declare-fun setElem!14357 () Context!2430)

(assert (=> setNonEmpty!14357 (= setRes!14357 (and tp!646654 (inv!31182 setElem!14357) e!1347904))))

(declare-fun setRest!14357 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14357 (= (_1!13447 (_1!13448 (h!29002 (minValue!2656 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14357 true) setRest!14357))))

(declare-fun b!2117435 () Bool)

(declare-fun tp!646655 () Bool)

(assert (=> b!2117435 (= e!1347905 (and setRes!14357 tp!646655))))

(declare-fun condSetEmpty!14357 () Bool)

(assert (=> b!2117435 (= condSetEmpty!14357 (= (_1!13447 (_1!13448 (h!29002 (minValue!2656 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))))) ((as const (Array Context!2430 Bool)) false)))))

(assert (= (and b!2117435 condSetEmpty!14357) setIsEmpty!14357))

(assert (= (and b!2117435 (not condSetEmpty!14357)) setNonEmpty!14357))

(assert (= setNonEmpty!14357 b!2117436))

(assert (= (and b!2117055 ((_ is Cons!23601) (minValue!2656 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141)))))))) b!2117435))

(declare-fun m!2572205 () Bool)

(assert (=> setNonEmpty!14357 m!2572205))

(declare-fun setNonEmpty!14362 () Bool)

(declare-fun setRes!14362 () Bool)

(assert (=> setNonEmpty!14362 (= setRes!14362 true)))

(declare-fun mapDefault!11588 () List!23683)

(declare-fun setElem!14363 () Context!2430)

(declare-fun setRest!14363 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14362 (= (_2!13443 (h!29000 mapDefault!11588)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14363 true) setRest!14363))))

(declare-fun setNonEmpty!14363 () Bool)

(declare-fun setRes!14363 () Bool)

(assert (=> setNonEmpty!14363 (= setRes!14363 true)))

(declare-fun mapValue!11588 () List!23683)

(declare-fun setElem!14362 () Context!2430)

(declare-fun setRest!14362 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14363 (= (_2!13443 (h!29000 mapValue!11588)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14362 true) setRest!14362))))

(declare-fun b!2117443 () Bool)

(declare-fun e!1347911 () Bool)

(assert (=> b!2117443 (= e!1347911 setRes!14363)))

(declare-fun condSetEmpty!14363 () Bool)

(assert (=> b!2117443 (= condSetEmpty!14363 (= (_2!13443 (h!29000 mapValue!11588)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117444 () Bool)

(declare-fun e!1347910 () Bool)

(assert (=> b!2117444 (= e!1347910 setRes!14362)))

(declare-fun condSetEmpty!14362 () Bool)

(assert (=> b!2117444 (= condSetEmpty!14362 (= (_2!13443 (h!29000 mapDefault!11588)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14363 () Bool)

(assert (=> setIsEmpty!14363 setRes!14362))

(declare-fun mapNonEmpty!11588 () Bool)

(declare-fun mapRes!11588 () Bool)

(assert (=> mapNonEmpty!11588 (= mapRes!11588 e!1347911)))

(declare-fun mapRest!11588 () (Array (_ BitVec 32) List!23683))

(declare-fun mapKey!11588 () (_ BitVec 32))

(assert (=> mapNonEmpty!11588 (= mapRest!11576 (store mapRest!11588 mapKey!11588 mapValue!11588))))

(declare-fun mapIsEmpty!11588 () Bool)

(assert (=> mapIsEmpty!11588 mapRes!11588))

(declare-fun setIsEmpty!14362 () Bool)

(assert (=> setIsEmpty!14362 setRes!14363))

(declare-fun condMapEmpty!11588 () Bool)

(assert (=> mapNonEmpty!11576 (= condMapEmpty!11588 (= mapRest!11576 ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11588)))))

(assert (=> mapNonEmpty!11576 (and e!1347910 mapRes!11588)))

(assert (= (and mapNonEmpty!11576 condMapEmpty!11588) mapIsEmpty!11588))

(assert (= (and mapNonEmpty!11576 (not condMapEmpty!11588)) mapNonEmpty!11588))

(assert (= (and b!2117443 condSetEmpty!14363) setIsEmpty!14362))

(assert (= (and b!2117443 (not condSetEmpty!14363)) setNonEmpty!14363))

(assert (= (and mapNonEmpty!11588 ((_ is Cons!23599) mapValue!11588)) b!2117443))

(assert (= (and b!2117444 condSetEmpty!14362) setIsEmpty!14363))

(assert (= (and b!2117444 (not condSetEmpty!14362)) setNonEmpty!14362))

(assert (= (and mapNonEmpty!11576 ((_ is Cons!23599) mapDefault!11588)) b!2117444))

(declare-fun m!2572207 () Bool)

(assert (=> mapNonEmpty!11588 m!2572207))

(declare-fun b!2117445 () Bool)

(declare-fun e!1347912 () Bool)

(declare-fun setRes!14364 () Bool)

(assert (=> b!2117445 (= e!1347912 setRes!14364)))

(declare-fun condSetEmpty!14364 () Bool)

(assert (=> b!2117445 (= condSetEmpty!14364 (= (_2!13443 (h!29000 mapValue!11576)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14364 () Bool)

(assert (=> setIsEmpty!14364 setRes!14364))

(declare-fun setNonEmpty!14364 () Bool)

(assert (=> setNonEmpty!14364 (= setRes!14364 true)))

(declare-fun setElem!14364 () Context!2430)

(declare-fun setRest!14364 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14364 (= (_2!13443 (h!29000 mapValue!11576)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14364 true) setRest!14364))))

(assert (=> mapNonEmpty!11576 e!1347912))

(assert (= (and b!2117445 condSetEmpty!14364) setIsEmpty!14364))

(assert (= (and b!2117445 (not condSetEmpty!14364)) setNonEmpty!14364))

(assert (= (and mapNonEmpty!11576 ((_ is Cons!23599) mapValue!11576)) b!2117445))

(declare-fun e!1347917 () Bool)

(assert (=> b!2117117 e!1347917))

(declare-fun setIsEmpty!14367 () Bool)

(declare-fun setRes!14367 () Bool)

(assert (=> setIsEmpty!14367 setRes!14367))

(declare-fun setNonEmpty!14367 () Bool)

(assert (=> setNonEmpty!14367 (= setRes!14367 true)))

(declare-fun setElem!14367 () Context!2430)

(declare-fun setRest!14367 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14367 (= (z!5693 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793905))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14367 true) setRest!14367))))

(declare-fun b!2117453 () Bool)

(declare-fun e!1347918 () Bool)

(assert (=> b!2117453 (= e!1347918 setRes!14367)))

(declare-fun condSetEmpty!14367 () Bool)

(assert (=> b!2117453 (= condSetEmpty!14367 (= (z!5693 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793905))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117452 () Bool)

(assert (=> b!2117452 (= e!1347917 e!1347918)))

(assert (= (and b!2117453 condSetEmpty!14367) setIsEmpty!14367))

(assert (= (and b!2117453 (not condSetEmpty!14367)) setNonEmpty!14367))

(assert (= b!2117452 b!2117453))

(assert (= (and b!2117117 ((_ is Cons!23600) (t!196193 (_2!13444 (_1!13445 lt!793905))))) b!2117452))

(declare-fun tp!646658 () Bool)

(declare-fun tp!646659 () Bool)

(declare-fun b!2117454 () Bool)

(declare-fun e!1347920 () Bool)

(assert (=> b!2117454 (= e!1347920 (and (inv!31175 (left!18281 (c!339387 input!6660))) tp!646659 (inv!31175 (right!18611 (c!339387 input!6660))) tp!646658))))

(declare-fun b!2117456 () Bool)

(declare-fun e!1347919 () Bool)

(declare-fun tp!646657 () Bool)

(assert (=> b!2117456 (= e!1347919 tp!646657)))

(declare-fun b!2117455 () Bool)

(assert (=> b!2117455 (= e!1347920 (and (inv!31183 (xs!10726 (c!339387 input!6660))) e!1347919))))

(assert (=> b!2117027 (= tp!646555 (and (inv!31175 (c!339387 input!6660)) e!1347920))))

(assert (= (and b!2117027 ((_ is Node!7784) (c!339387 input!6660))) b!2117454))

(assert (= b!2117455 b!2117456))

(assert (= (and b!2117027 ((_ is Leaf!11374) (c!339387 input!6660))) b!2117455))

(declare-fun m!2572209 () Bool)

(assert (=> b!2117454 m!2572209))

(declare-fun m!2572211 () Bool)

(assert (=> b!2117454 m!2572211))

(declare-fun m!2572213 () Bool)

(assert (=> b!2117455 m!2572213))

(assert (=> b!2117027 m!2571935))

(declare-fun tp!646684 () Bool)

(declare-fun setRes!14372 () Bool)

(declare-fun setNonEmpty!14372 () Bool)

(declare-fun setElem!14372 () Context!2430)

(declare-fun e!1347936 () Bool)

(assert (=> setNonEmpty!14372 (= setRes!14372 (and tp!646684 (inv!31182 setElem!14372) e!1347936))))

(declare-fun mapDefault!11591 () List!23681)

(declare-fun setRest!14373 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14372 (= (_2!13441 (h!28998 mapDefault!11591)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14372 true) setRest!14373))))

(declare-fun condMapEmpty!11591 () Bool)

(assert (=> mapNonEmpty!11570 (= condMapEmpty!11591 (= mapRest!11568 ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11591)))))

(declare-fun e!1347938 () Bool)

(declare-fun mapRes!11591 () Bool)

(assert (=> mapNonEmpty!11570 (= tp!646557 (and e!1347938 mapRes!11591))))

(declare-fun setIsEmpty!14372 () Bool)

(assert (=> setIsEmpty!14372 setRes!14372))

(declare-fun b!2117471 () Bool)

(declare-fun e!1347937 () Bool)

(declare-fun tp!646683 () Bool)

(assert (=> b!2117471 (= e!1347937 tp!646683)))

(declare-fun tp!646685 () Bool)

(declare-fun b!2117472 () Bool)

(declare-fun tp!646687 () Bool)

(assert (=> b!2117472 (= e!1347938 (and tp!646685 (inv!31182 (_2!13440 (_1!13441 (h!28998 mapDefault!11591)))) e!1347937 tp_is_empty!9479 setRes!14372 tp!646687))))

(declare-fun condSetEmpty!14372 () Bool)

(assert (=> b!2117472 (= condSetEmpty!14372 (= (_2!13441 (h!28998 mapDefault!11591)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun mapNonEmpty!11591 () Bool)

(declare-fun tp!646691 () Bool)

(declare-fun e!1347933 () Bool)

(assert (=> mapNonEmpty!11591 (= mapRes!11591 (and tp!646691 e!1347933))))

(declare-fun mapRest!11591 () (Array (_ BitVec 32) List!23681))

(declare-fun mapValue!11591 () List!23681)

(declare-fun mapKey!11591 () (_ BitVec 32))

(assert (=> mapNonEmpty!11591 (= mapRest!11568 (store mapRest!11591 mapKey!11591 mapValue!11591))))

(declare-fun setIsEmpty!14373 () Bool)

(declare-fun setRes!14373 () Bool)

(assert (=> setIsEmpty!14373 setRes!14373))

(declare-fun b!2117473 () Bool)

(declare-fun e!1347935 () Bool)

(declare-fun tp!646688 () Bool)

(assert (=> b!2117473 (= e!1347935 tp!646688)))

(declare-fun b!2117474 () Bool)

(declare-fun e!1347934 () Bool)

(declare-fun tp!646692 () Bool)

(assert (=> b!2117474 (= e!1347934 tp!646692)))

(declare-fun mapIsEmpty!11591 () Bool)

(assert (=> mapIsEmpty!11591 mapRes!11591))

(declare-fun b!2117475 () Bool)

(declare-fun tp!646690 () Bool)

(assert (=> b!2117475 (= e!1347936 tp!646690)))

(declare-fun setElem!14373 () Context!2430)

(declare-fun setNonEmpty!14373 () Bool)

(declare-fun tp!646686 () Bool)

(assert (=> setNonEmpty!14373 (= setRes!14373 (and tp!646686 (inv!31182 setElem!14373) e!1347934))))

(declare-fun setRest!14372 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14373 (= (_2!13441 (h!28998 mapValue!11591)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14373 true) setRest!14372))))

(declare-fun tp!646689 () Bool)

(declare-fun tp!646682 () Bool)

(declare-fun b!2117476 () Bool)

(assert (=> b!2117476 (= e!1347933 (and tp!646689 (inv!31182 (_2!13440 (_1!13441 (h!28998 mapValue!11591)))) e!1347935 tp_is_empty!9479 setRes!14373 tp!646682))))

(declare-fun condSetEmpty!14373 () Bool)

(assert (=> b!2117476 (= condSetEmpty!14373 (= (_2!13441 (h!28998 mapValue!11591)) ((as const (Array Context!2430 Bool)) false)))))

(assert (= (and mapNonEmpty!11570 condMapEmpty!11591) mapIsEmpty!11591))

(assert (= (and mapNonEmpty!11570 (not condMapEmpty!11591)) mapNonEmpty!11591))

(assert (= b!2117476 b!2117473))

(assert (= (and b!2117476 condSetEmpty!14373) setIsEmpty!14373))

(assert (= (and b!2117476 (not condSetEmpty!14373)) setNonEmpty!14373))

(assert (= setNonEmpty!14373 b!2117474))

(assert (= (and mapNonEmpty!11591 ((_ is Cons!23597) mapValue!11591)) b!2117476))

(assert (= b!2117472 b!2117471))

(assert (= (and b!2117472 condSetEmpty!14372) setIsEmpty!14372))

(assert (= (and b!2117472 (not condSetEmpty!14372)) setNonEmpty!14372))

(assert (= setNonEmpty!14372 b!2117475))

(assert (= (and mapNonEmpty!11570 ((_ is Cons!23597) mapDefault!11591)) b!2117472))

(declare-fun m!2572215 () Bool)

(assert (=> setNonEmpty!14372 m!2572215))

(declare-fun m!2572217 () Bool)

(assert (=> setNonEmpty!14373 m!2572217))

(declare-fun m!2572219 () Bool)

(assert (=> b!2117472 m!2572219))

(declare-fun m!2572221 () Bool)

(assert (=> b!2117476 m!2572221))

(declare-fun m!2572223 () Bool)

(assert (=> mapNonEmpty!11591 m!2572223))

(declare-fun e!1347940 () Bool)

(assert (=> mapNonEmpty!11570 (= tp!646534 e!1347940)))

(declare-fun e!1347939 () Bool)

(declare-fun setNonEmpty!14374 () Bool)

(declare-fun setElem!14374 () Context!2430)

(declare-fun setRes!14374 () Bool)

(declare-fun tp!646694 () Bool)

(assert (=> setNonEmpty!14374 (= setRes!14374 (and tp!646694 (inv!31182 setElem!14374) e!1347939))))

(declare-fun setRest!14374 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14374 (= (_2!13441 (h!28998 mapValue!11570)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14374 true) setRest!14374))))

(declare-fun e!1347941 () Bool)

(declare-fun tp!646696 () Bool)

(declare-fun b!2117477 () Bool)

(declare-fun tp!646693 () Bool)

(assert (=> b!2117477 (= e!1347940 (and tp!646693 (inv!31182 (_2!13440 (_1!13441 (h!28998 mapValue!11570)))) e!1347941 tp_is_empty!9479 setRes!14374 tp!646696))))

(declare-fun condSetEmpty!14374 () Bool)

(assert (=> b!2117477 (= condSetEmpty!14374 (= (_2!13441 (h!28998 mapValue!11570)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14374 () Bool)

(assert (=> setIsEmpty!14374 setRes!14374))

(declare-fun b!2117478 () Bool)

(declare-fun tp!646695 () Bool)

(assert (=> b!2117478 (= e!1347939 tp!646695)))

(declare-fun b!2117479 () Bool)

(declare-fun tp!646697 () Bool)

(assert (=> b!2117479 (= e!1347941 tp!646697)))

(assert (= b!2117477 b!2117479))

(assert (= (and b!2117477 condSetEmpty!14374) setIsEmpty!14374))

(assert (= (and b!2117477 (not condSetEmpty!14374)) setNonEmpty!14374))

(assert (= setNonEmpty!14374 b!2117478))

(assert (= (and mapNonEmpty!11570 ((_ is Cons!23597) mapValue!11570)) b!2117477))

(declare-fun m!2572225 () Bool)

(assert (=> setNonEmpty!14374 m!2572225))

(declare-fun m!2572227 () Bool)

(assert (=> b!2117477 m!2572227))

(declare-fun b!2117482 () Bool)

(declare-fun e!1347942 () Bool)

(declare-fun tp!646698 () Bool)

(assert (=> b!2117482 (= e!1347942 tp!646698)))

(declare-fun b!2117483 () Bool)

(declare-fun tp!646700 () Bool)

(declare-fun tp!646702 () Bool)

(assert (=> b!2117483 (= e!1347942 (and tp!646700 tp!646702))))

(assert (=> b!2117047 (= tp!646549 e!1347942)))

(declare-fun b!2117481 () Bool)

(declare-fun tp!646701 () Bool)

(declare-fun tp!646699 () Bool)

(assert (=> b!2117481 (= e!1347942 (and tp!646701 tp!646699))))

(declare-fun b!2117480 () Bool)

(assert (=> b!2117480 (= e!1347942 tp_is_empty!9479)))

(assert (= (and b!2117047 ((_ is ElementMatch!5645) (regOne!11803 r!15373))) b!2117480))

(assert (= (and b!2117047 ((_ is Concat!9947) (regOne!11803 r!15373))) b!2117481))

(assert (= (and b!2117047 ((_ is Star!5645) (regOne!11803 r!15373))) b!2117482))

(assert (= (and b!2117047 ((_ is Union!5645) (regOne!11803 r!15373))) b!2117483))

(declare-fun b!2117486 () Bool)

(declare-fun e!1347943 () Bool)

(declare-fun tp!646703 () Bool)

(assert (=> b!2117486 (= e!1347943 tp!646703)))

(declare-fun b!2117487 () Bool)

(declare-fun tp!646705 () Bool)

(declare-fun tp!646707 () Bool)

(assert (=> b!2117487 (= e!1347943 (and tp!646705 tp!646707))))

(assert (=> b!2117047 (= tp!646548 e!1347943)))

(declare-fun b!2117485 () Bool)

(declare-fun tp!646706 () Bool)

(declare-fun tp!646704 () Bool)

(assert (=> b!2117485 (= e!1347943 (and tp!646706 tp!646704))))

(declare-fun b!2117484 () Bool)

(assert (=> b!2117484 (= e!1347943 tp_is_empty!9479)))

(assert (= (and b!2117047 ((_ is ElementMatch!5645) (regTwo!11803 r!15373))) b!2117484))

(assert (= (and b!2117047 ((_ is Concat!9947) (regTwo!11803 r!15373))) b!2117485))

(assert (= (and b!2117047 ((_ is Star!5645) (regTwo!11803 r!15373))) b!2117486))

(assert (= (and b!2117047 ((_ is Union!5645) (regTwo!11803 r!15373))) b!2117487))

(declare-fun b!2117489 () Bool)

(declare-fun e!1347944 () Bool)

(declare-fun tp!646710 () Bool)

(assert (=> b!2117489 (= e!1347944 tp!646710)))

(declare-fun e!1347945 () Bool)

(assert (=> b!2117067 (= tp!646535 e!1347945)))

(declare-fun setIsEmpty!14375 () Bool)

(declare-fun setRes!14375 () Bool)

(assert (=> setIsEmpty!14375 setRes!14375))

(declare-fun setNonEmpty!14375 () Bool)

(declare-fun setElem!14375 () Context!2430)

(declare-fun tp!646708 () Bool)

(assert (=> setNonEmpty!14375 (= setRes!14375 (and tp!646708 (inv!31182 setElem!14375) e!1347944))))

(declare-fun setRest!14375 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14375 (= (_1!13447 (_1!13448 (h!29002 mapDefault!11568))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14375 true) setRest!14375))))

(declare-fun b!2117488 () Bool)

(declare-fun tp!646709 () Bool)

(assert (=> b!2117488 (= e!1347945 (and setRes!14375 tp!646709))))

(declare-fun condSetEmpty!14375 () Bool)

(assert (=> b!2117488 (= condSetEmpty!14375 (= (_1!13447 (_1!13448 (h!29002 mapDefault!11568))) ((as const (Array Context!2430 Bool)) false)))))

(assert (= (and b!2117488 condSetEmpty!14375) setIsEmpty!14375))

(assert (= (and b!2117488 (not condSetEmpty!14375)) setNonEmpty!14375))

(assert (= setNonEmpty!14375 b!2117489))

(assert (= (and b!2117067 ((_ is Cons!23601) mapDefault!11568)) b!2117488))

(declare-fun m!2572229 () Bool)

(assert (=> setNonEmpty!14375 m!2572229))

(declare-fun b!2117492 () Bool)

(declare-fun e!1347946 () Bool)

(declare-fun tp!646711 () Bool)

(assert (=> b!2117492 (= e!1347946 tp!646711)))

(declare-fun b!2117493 () Bool)

(declare-fun tp!646713 () Bool)

(declare-fun tp!646715 () Bool)

(assert (=> b!2117493 (= e!1347946 (and tp!646713 tp!646715))))

(assert (=> b!2117049 (= tp!646556 e!1347946)))

(declare-fun b!2117491 () Bool)

(declare-fun tp!646714 () Bool)

(declare-fun tp!646712 () Bool)

(assert (=> b!2117491 (= e!1347946 (and tp!646714 tp!646712))))

(declare-fun b!2117490 () Bool)

(assert (=> b!2117490 (= e!1347946 tp_is_empty!9479)))

(assert (= (and b!2117049 ((_ is ElementMatch!5645) (regOne!11802 r!15373))) b!2117490))

(assert (= (and b!2117049 ((_ is Concat!9947) (regOne!11802 r!15373))) b!2117491))

(assert (= (and b!2117049 ((_ is Star!5645) (regOne!11802 r!15373))) b!2117492))

(assert (= (and b!2117049 ((_ is Union!5645) (regOne!11802 r!15373))) b!2117493))

(declare-fun b!2117496 () Bool)

(declare-fun e!1347947 () Bool)

(declare-fun tp!646716 () Bool)

(assert (=> b!2117496 (= e!1347947 tp!646716)))

(declare-fun b!2117497 () Bool)

(declare-fun tp!646718 () Bool)

(declare-fun tp!646720 () Bool)

(assert (=> b!2117497 (= e!1347947 (and tp!646718 tp!646720))))

(assert (=> b!2117049 (= tp!646544 e!1347947)))

(declare-fun b!2117495 () Bool)

(declare-fun tp!646719 () Bool)

(declare-fun tp!646717 () Bool)

(assert (=> b!2117495 (= e!1347947 (and tp!646719 tp!646717))))

(declare-fun b!2117494 () Bool)

(assert (=> b!2117494 (= e!1347947 tp_is_empty!9479)))

(assert (= (and b!2117049 ((_ is ElementMatch!5645) (regTwo!11802 r!15373))) b!2117494))

(assert (= (and b!2117049 ((_ is Concat!9947) (regTwo!11802 r!15373))) b!2117495))

(assert (= (and b!2117049 ((_ is Star!5645) (regTwo!11802 r!15373))) b!2117496))

(assert (= (and b!2117049 ((_ is Union!5645) (regTwo!11802 r!15373))) b!2117497))

(declare-fun b!2117498 () Bool)

(declare-fun e!1347950 () Bool)

(declare-fun tp!646721 () Bool)

(assert (=> b!2117498 (= e!1347950 tp!646721)))

(declare-fun tp!646724 () Bool)

(declare-fun e!1347948 () Bool)

(declare-fun b!2117499 () Bool)

(declare-fun setRes!14376 () Bool)

(declare-fun e!1347949 () Bool)

(assert (=> b!2117499 (= e!1347948 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))))) e!1347949 tp_is_empty!9479 setRes!14376 tp!646724))))

(declare-fun condSetEmpty!14376 () Bool)

(assert (=> b!2117499 (= condSetEmpty!14376 (= (_2!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117500 () Bool)

(declare-fun tp!646722 () Bool)

(assert (=> b!2117500 (= e!1347949 tp!646722)))

(declare-fun setElem!14376 () Context!2430)

(declare-fun tp!646723 () Bool)

(declare-fun setNonEmpty!14376 () Bool)

(assert (=> setNonEmpty!14376 (= setRes!14376 (and tp!646723 (inv!31182 setElem!14376) e!1347950))))

(declare-fun setRest!14376 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14376 (= (_2!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14376 true) setRest!14376))))

(assert (=> b!2117058 (= tp!646554 e!1347948)))

(declare-fun setIsEmpty!14376 () Bool)

(assert (=> setIsEmpty!14376 setRes!14376))

(assert (= b!2117499 b!2117500))

(assert (= (and b!2117499 condSetEmpty!14376) setIsEmpty!14376))

(assert (= (and b!2117499 (not condSetEmpty!14376)) setNonEmpty!14376))

(assert (= setNonEmpty!14376 b!2117498))

(assert (= (and b!2117058 ((_ is Cons!23599) (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))) b!2117499))

(declare-fun m!2572231 () Bool)

(assert (=> b!2117499 m!2572231))

(declare-fun m!2572233 () Bool)

(assert (=> setNonEmpty!14376 m!2572233))

(declare-fun b!2117501 () Bool)

(declare-fun e!1347953 () Bool)

(declare-fun tp!646725 () Bool)

(assert (=> b!2117501 (= e!1347953 tp!646725)))

(declare-fun tp!646728 () Bool)

(declare-fun setRes!14377 () Bool)

(declare-fun e!1347951 () Bool)

(declare-fun b!2117502 () Bool)

(declare-fun e!1347952 () Bool)

(assert (=> b!2117502 (= e!1347951 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))))) e!1347952 tp_is_empty!9479 setRes!14377 tp!646728))))

(declare-fun condSetEmpty!14377 () Bool)

(assert (=> b!2117502 (= condSetEmpty!14377 (= (_2!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117503 () Bool)

(declare-fun tp!646726 () Bool)

(assert (=> b!2117503 (= e!1347952 tp!646726)))

(declare-fun setNonEmpty!14377 () Bool)

(declare-fun tp!646727 () Bool)

(declare-fun setElem!14377 () Context!2430)

(assert (=> setNonEmpty!14377 (= setRes!14377 (and tp!646727 (inv!31182 setElem!14377) e!1347953))))

(declare-fun setRest!14377 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14377 (= (_2!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14377 true) setRest!14377))))

(assert (=> b!2117058 (= tp!646558 e!1347951)))

(declare-fun setIsEmpty!14377 () Bool)

(assert (=> setIsEmpty!14377 setRes!14377))

(assert (= b!2117502 b!2117503))

(assert (= (and b!2117502 condSetEmpty!14377) setIsEmpty!14377))

(assert (= (and b!2117502 (not condSetEmpty!14377)) setNonEmpty!14377))

(assert (= setNonEmpty!14377 b!2117501))

(assert (= (and b!2117058 ((_ is Cons!23599) (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))) b!2117502))

(declare-fun m!2572235 () Bool)

(assert (=> b!2117502 m!2572235))

(declare-fun m!2572237 () Bool)

(assert (=> setNonEmpty!14377 m!2572237))

(declare-fun b!2117504 () Bool)

(declare-fun e!1347954 () Bool)

(declare-fun setRes!14378 () Bool)

(assert (=> b!2117504 (= e!1347954 setRes!14378)))

(declare-fun condSetEmpty!14378 () Bool)

(assert (=> b!2117504 (= condSetEmpty!14378 (= (_2!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14378 () Bool)

(assert (=> setIsEmpty!14378 setRes!14378))

(declare-fun setNonEmpty!14378 () Bool)

(assert (=> setNonEmpty!14378 (= setRes!14378 true)))

(declare-fun setElem!14378 () Context!2430)

(declare-fun setRest!14378 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14378 (= (_2!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14378 true) setRest!14378))))

(assert (=> b!2117111 e!1347954))

(assert (= (and b!2117504 condSetEmpty!14378) setIsEmpty!14378))

(assert (= (and b!2117504 (not condSetEmpty!14378)) setNonEmpty!14378))

(assert (= (and b!2117111 ((_ is Cons!23597) (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905))))))))) b!2117504))

(declare-fun b!2117505 () Bool)

(declare-fun e!1347955 () Bool)

(declare-fun setRes!14379 () Bool)

(assert (=> b!2117505 (= e!1347955 setRes!14379)))

(declare-fun condSetEmpty!14379 () Bool)

(assert (=> b!2117505 (= condSetEmpty!14379 (= (_2!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14379 () Bool)

(assert (=> setIsEmpty!14379 setRes!14379))

(declare-fun setNonEmpty!14379 () Bool)

(assert (=> setNonEmpty!14379 (= setRes!14379 true)))

(declare-fun setElem!14379 () Context!2430)

(declare-fun setRest!14379 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14379 (= (_2!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14379 true) setRest!14379))))

(assert (=> b!2117111 e!1347955))

(assert (= (and b!2117505 condSetEmpty!14379) setIsEmpty!14379))

(assert (= (and b!2117505 (not condSetEmpty!14379)) setNonEmpty!14379))

(assert (= (and b!2117111 ((_ is Cons!23597) (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905))))))))) b!2117505))

(declare-fun e!1347964 () Bool)

(declare-fun setElem!14385 () Context!2430)

(declare-fun tp!646746 () Bool)

(declare-fun setNonEmpty!14384 () Bool)

(declare-fun setRes!14385 () Bool)

(assert (=> setNonEmpty!14384 (= setRes!14385 (and tp!646746 (inv!31182 setElem!14385) e!1347964))))

(declare-fun mapDefault!11594 () List!23685)

(declare-fun setRest!14385 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14384 (= (_1!13447 (_1!13448 (h!29002 mapDefault!11594))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14385 true) setRest!14385))))

(declare-fun mapNonEmpty!11594 () Bool)

(declare-fun mapRes!11594 () Bool)

(declare-fun tp!646747 () Bool)

(declare-fun e!1347967 () Bool)

(assert (=> mapNonEmpty!11594 (= mapRes!11594 (and tp!646747 e!1347967))))

(declare-fun mapValue!11594 () List!23685)

(declare-fun mapKey!11594 () (_ BitVec 32))

(declare-fun mapRest!11594 () (Array (_ BitVec 32) List!23685))

(assert (=> mapNonEmpty!11594 (= mapRest!11569 (store mapRest!11594 mapKey!11594 mapValue!11594))))

(declare-fun b!2117516 () Bool)

(declare-fun e!1347965 () Bool)

(declare-fun tp!646748 () Bool)

(assert (=> b!2117516 (= e!1347965 tp!646748)))

(declare-fun setIsEmpty!14385 () Bool)

(declare-fun setRes!14384 () Bool)

(assert (=> setIsEmpty!14385 setRes!14384))

(declare-fun setElem!14384 () Context!2430)

(declare-fun tp!646749 () Bool)

(declare-fun setNonEmpty!14385 () Bool)

(assert (=> setNonEmpty!14385 (= setRes!14384 (and tp!646749 (inv!31182 setElem!14384) e!1347965))))

(declare-fun setRest!14384 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14385 (= (_1!13447 (_1!13448 (h!29002 mapValue!11594))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14384 true) setRest!14384))))

(declare-fun b!2117517 () Bool)

(declare-fun e!1347966 () Bool)

(declare-fun tp!646744 () Bool)

(assert (=> b!2117517 (= e!1347966 (and setRes!14385 tp!646744))))

(declare-fun condSetEmpty!14385 () Bool)

(assert (=> b!2117517 (= condSetEmpty!14385 (= (_1!13447 (_1!13448 (h!29002 mapDefault!11594))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117518 () Bool)

(declare-fun tp!646745 () Bool)

(assert (=> b!2117518 (= e!1347967 (and setRes!14384 tp!646745))))

(declare-fun condSetEmpty!14384 () Bool)

(assert (=> b!2117518 (= condSetEmpty!14384 (= (_1!13447 (_1!13448 (h!29002 mapValue!11594))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117519 () Bool)

(declare-fun tp!646743 () Bool)

(assert (=> b!2117519 (= e!1347964 tp!646743)))

(declare-fun mapIsEmpty!11594 () Bool)

(assert (=> mapIsEmpty!11594 mapRes!11594))

(declare-fun setIsEmpty!14384 () Bool)

(assert (=> setIsEmpty!14384 setRes!14385))

(declare-fun condMapEmpty!11594 () Bool)

(assert (=> mapNonEmpty!11568 (= condMapEmpty!11594 (= mapRest!11569 ((as const (Array (_ BitVec 32) List!23685)) mapDefault!11594)))))

(assert (=> mapNonEmpty!11568 (= tp!646551 (and e!1347966 mapRes!11594))))

(assert (= (and mapNonEmpty!11568 condMapEmpty!11594) mapIsEmpty!11594))

(assert (= (and mapNonEmpty!11568 (not condMapEmpty!11594)) mapNonEmpty!11594))

(assert (= (and b!2117518 condSetEmpty!14384) setIsEmpty!14385))

(assert (= (and b!2117518 (not condSetEmpty!14384)) setNonEmpty!14385))

(assert (= setNonEmpty!14385 b!2117516))

(assert (= (and mapNonEmpty!11594 ((_ is Cons!23601) mapValue!11594)) b!2117518))

(assert (= (and b!2117517 condSetEmpty!14385) setIsEmpty!14384))

(assert (= (and b!2117517 (not condSetEmpty!14385)) setNonEmpty!14384))

(assert (= setNonEmpty!14384 b!2117519))

(assert (= (and mapNonEmpty!11568 ((_ is Cons!23601) mapDefault!11594)) b!2117517))

(declare-fun m!2572239 () Bool)

(assert (=> setNonEmpty!14384 m!2572239))

(declare-fun m!2572241 () Bool)

(assert (=> mapNonEmpty!11594 m!2572241))

(declare-fun m!2572243 () Bool)

(assert (=> setNonEmpty!14385 m!2572243))

(declare-fun b!2117521 () Bool)

(declare-fun e!1347968 () Bool)

(declare-fun tp!646752 () Bool)

(assert (=> b!2117521 (= e!1347968 tp!646752)))

(declare-fun e!1347969 () Bool)

(assert (=> mapNonEmpty!11568 (= tp!646559 e!1347969)))

(declare-fun setIsEmpty!14386 () Bool)

(declare-fun setRes!14386 () Bool)

(assert (=> setIsEmpty!14386 setRes!14386))

(declare-fun setNonEmpty!14386 () Bool)

(declare-fun setElem!14386 () Context!2430)

(declare-fun tp!646750 () Bool)

(assert (=> setNonEmpty!14386 (= setRes!14386 (and tp!646750 (inv!31182 setElem!14386) e!1347968))))

(declare-fun setRest!14386 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14386 (= (_1!13447 (_1!13448 (h!29002 mapValue!11568))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14386 true) setRest!14386))))

(declare-fun b!2117520 () Bool)

(declare-fun tp!646751 () Bool)

(assert (=> b!2117520 (= e!1347969 (and setRes!14386 tp!646751))))

(declare-fun condSetEmpty!14386 () Bool)

(assert (=> b!2117520 (= condSetEmpty!14386 (= (_1!13447 (_1!13448 (h!29002 mapValue!11568))) ((as const (Array Context!2430 Bool)) false)))))

(assert (= (and b!2117520 condSetEmpty!14386) setIsEmpty!14386))

(assert (= (and b!2117520 (not condSetEmpty!14386)) setNonEmpty!14386))

(assert (= setNonEmpty!14386 b!2117521))

(assert (= (and mapNonEmpty!11568 ((_ is Cons!23601) mapValue!11568)) b!2117520))

(declare-fun m!2572245 () Bool)

(assert (=> setNonEmpty!14386 m!2572245))

(declare-fun b!2117528 () Bool)

(declare-fun e!1347974 () Bool)

(declare-fun setRes!14392 () Bool)

(assert (=> b!2117528 (= e!1347974 setRes!14392)))

(declare-fun condSetEmpty!14392 () Bool)

(declare-fun mapDefault!11597 () List!23681)

(assert (=> b!2117528 (= condSetEmpty!14392 (= (_2!13441 (h!28998 mapDefault!11597)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117529 () Bool)

(declare-fun e!1347975 () Bool)

(declare-fun setRes!14391 () Bool)

(assert (=> b!2117529 (= e!1347975 setRes!14391)))

(declare-fun condSetEmpty!14391 () Bool)

(declare-fun mapValue!11597 () List!23681)

(assert (=> b!2117529 (= condSetEmpty!14391 (= (_2!13441 (h!28998 mapValue!11597)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14391 () Bool)

(assert (=> setIsEmpty!14391 setRes!14391))

(declare-fun mapNonEmpty!11597 () Bool)

(declare-fun mapRes!11597 () Bool)

(assert (=> mapNonEmpty!11597 (= mapRes!11597 e!1347975)))

(declare-fun mapKey!11597 () (_ BitVec 32))

(declare-fun mapRest!11597 () (Array (_ BitVec 32) List!23681))

(assert (=> mapNonEmpty!11597 (= mapRest!11575 (store mapRest!11597 mapKey!11597 mapValue!11597))))

(declare-fun setNonEmpty!14391 () Bool)

(assert (=> setNonEmpty!14391 (= setRes!14392 true)))

(declare-fun setElem!14392 () Context!2430)

(declare-fun setRest!14392 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14391 (= (_2!13441 (h!28998 mapDefault!11597)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14392 true) setRest!14392))))

(declare-fun mapIsEmpty!11597 () Bool)

(assert (=> mapIsEmpty!11597 mapRes!11597))

(declare-fun setNonEmpty!14392 () Bool)

(assert (=> setNonEmpty!14392 (= setRes!14391 true)))

(declare-fun setElem!14391 () Context!2430)

(declare-fun setRest!14391 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14392 (= (_2!13441 (h!28998 mapValue!11597)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14391 true) setRest!14391))))

(declare-fun setIsEmpty!14392 () Bool)

(assert (=> setIsEmpty!14392 setRes!14392))

(declare-fun condMapEmpty!11597 () Bool)

(assert (=> mapNonEmpty!11575 (= condMapEmpty!11597 (= mapRest!11575 ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11597)))))

(assert (=> mapNonEmpty!11575 (and e!1347974 mapRes!11597)))

(assert (= (and mapNonEmpty!11575 condMapEmpty!11597) mapIsEmpty!11597))

(assert (= (and mapNonEmpty!11575 (not condMapEmpty!11597)) mapNonEmpty!11597))

(assert (= (and b!2117529 condSetEmpty!14391) setIsEmpty!14391))

(assert (= (and b!2117529 (not condSetEmpty!14391)) setNonEmpty!14392))

(assert (= (and mapNonEmpty!11597 ((_ is Cons!23597) mapValue!11597)) b!2117529))

(assert (= (and b!2117528 condSetEmpty!14392) setIsEmpty!14392))

(assert (= (and b!2117528 (not condSetEmpty!14392)) setNonEmpty!14391))

(assert (= (and mapNonEmpty!11575 ((_ is Cons!23597) mapDefault!11597)) b!2117528))

(declare-fun m!2572247 () Bool)

(assert (=> mapNonEmpty!11597 m!2572247))

(declare-fun b!2117530 () Bool)

(declare-fun e!1347976 () Bool)

(declare-fun setRes!14393 () Bool)

(assert (=> b!2117530 (= e!1347976 setRes!14393)))

(declare-fun condSetEmpty!14393 () Bool)

(assert (=> b!2117530 (= condSetEmpty!14393 (= (_2!13441 (h!28998 mapValue!11575)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14393 () Bool)

(assert (=> setIsEmpty!14393 setRes!14393))

(declare-fun setNonEmpty!14393 () Bool)

(assert (=> setNonEmpty!14393 (= setRes!14393 true)))

(declare-fun setElem!14393 () Context!2430)

(declare-fun setRest!14393 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14393 (= (_2!13441 (h!28998 mapValue!11575)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14393 true) setRest!14393))))

(assert (=> mapNonEmpty!11575 e!1347976))

(assert (= (and b!2117530 condSetEmpty!14393) setIsEmpty!14393))

(assert (= (and b!2117530 (not condSetEmpty!14393)) setNonEmpty!14393))

(assert (= (and mapNonEmpty!11575 ((_ is Cons!23597) mapValue!11575)) b!2117530))

(declare-fun b!2117531 () Bool)

(declare-fun tp!646755 () Bool)

(declare-fun tp!646754 () Bool)

(declare-fun e!1347978 () Bool)

(assert (=> b!2117531 (= e!1347978 (and (inv!31175 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) tp!646755 (inv!31175 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) tp!646754))))

(declare-fun b!2117533 () Bool)

(declare-fun e!1347977 () Bool)

(declare-fun tp!646753 () Bool)

(assert (=> b!2117533 (= e!1347977 tp!646753)))

(declare-fun b!2117532 () Bool)

(assert (=> b!2117532 (= e!1347978 (and (inv!31183 (xs!10726 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) e!1347977))))

(assert (=> b!2117032 (= tp!646540 (and (inv!31175 (c!339387 (totalInput!2863 cacheFurthestNullable!141))) e!1347978))))

(assert (= (and b!2117032 ((_ is Node!7784) (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) b!2117531))

(assert (= b!2117532 b!2117533))

(assert (= (and b!2117032 ((_ is Leaf!11374) (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) b!2117532))

(declare-fun m!2572249 () Bool)

(assert (=> b!2117531 m!2572249))

(declare-fun m!2572251 () Bool)

(assert (=> b!2117531 m!2572251))

(declare-fun m!2572253 () Bool)

(assert (=> b!2117532 m!2572253))

(assert (=> b!2117032 m!2571923))

(declare-fun b!2117534 () Bool)

(declare-fun e!1347979 () Bool)

(declare-fun setRes!14394 () Bool)

(assert (=> b!2117534 (= e!1347979 setRes!14394)))

(declare-fun condSetEmpty!14394 () Bool)

(assert (=> b!2117534 (= condSetEmpty!14394 (= (_2!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14394 () Bool)

(assert (=> setIsEmpty!14394 setRes!14394))

(declare-fun setNonEmpty!14394 () Bool)

(assert (=> setNonEmpty!14394 (= setRes!14394 true)))

(declare-fun setElem!14394 () Context!2430)

(declare-fun setRest!14394 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14394 (= (_2!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14394 true) setRest!14394))))

(assert (=> b!2117123 e!1347979))

(assert (= (and b!2117534 condSetEmpty!14394) setIsEmpty!14394))

(assert (= (and b!2117534 (not condSetEmpty!14394)) setNonEmpty!14394))

(assert (= (and b!2117123 ((_ is Cons!23599) (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905))))))))) b!2117534))

(declare-fun b!2117535 () Bool)

(declare-fun e!1347980 () Bool)

(declare-fun setRes!14395 () Bool)

(assert (=> b!2117535 (= e!1347980 setRes!14395)))

(declare-fun condSetEmpty!14395 () Bool)

(assert (=> b!2117535 (= condSetEmpty!14395 (= (_2!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14395 () Bool)

(assert (=> setIsEmpty!14395 setRes!14395))

(declare-fun setNonEmpty!14395 () Bool)

(assert (=> setNonEmpty!14395 (= setRes!14395 true)))

(declare-fun setElem!14395 () Context!2430)

(declare-fun setRest!14395 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14395 (= (_2!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14395 true) setRest!14395))))

(assert (=> b!2117123 e!1347980))

(assert (= (and b!2117535 condSetEmpty!14395) setIsEmpty!14395))

(assert (= (and b!2117535 (not condSetEmpty!14395)) setNonEmpty!14395))

(assert (= (and b!2117123 ((_ is Cons!23599) (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905))))))))) b!2117535))

(declare-fun b!2117536 () Bool)

(declare-fun e!1347983 () Bool)

(declare-fun tp!646756 () Bool)

(assert (=> b!2117536 (= e!1347983 tp!646756)))

(declare-fun b!2117537 () Bool)

(declare-fun setRes!14396 () Bool)

(declare-fun e!1347981 () Bool)

(declare-fun e!1347982 () Bool)

(declare-fun tp!646759 () Bool)

(assert (=> b!2117537 (= e!1347981 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 mapDefault!11569)))) e!1347982 tp_is_empty!9479 setRes!14396 tp!646759))))

(declare-fun condSetEmpty!14396 () Bool)

(assert (=> b!2117537 (= condSetEmpty!14396 (= (_2!13443 (h!29000 mapDefault!11569)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117538 () Bool)

(declare-fun tp!646757 () Bool)

(assert (=> b!2117538 (= e!1347982 tp!646757)))

(declare-fun setNonEmpty!14396 () Bool)

(declare-fun setElem!14396 () Context!2430)

(declare-fun tp!646758 () Bool)

(assert (=> setNonEmpty!14396 (= setRes!14396 (and tp!646758 (inv!31182 setElem!14396) e!1347983))))

(declare-fun setRest!14396 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14396 (= (_2!13443 (h!29000 mapDefault!11569)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14396 true) setRest!14396))))

(assert (=> b!2117066 (= tp!646553 e!1347981)))

(declare-fun setIsEmpty!14396 () Bool)

(assert (=> setIsEmpty!14396 setRes!14396))

(assert (= b!2117537 b!2117538))

(assert (= (and b!2117537 condSetEmpty!14396) setIsEmpty!14396))

(assert (= (and b!2117537 (not condSetEmpty!14396)) setNonEmpty!14396))

(assert (= setNonEmpty!14396 b!2117536))

(assert (= (and b!2117066 ((_ is Cons!23599) mapDefault!11569)) b!2117537))

(declare-fun m!2572255 () Bool)

(assert (=> b!2117537 m!2572255))

(declare-fun m!2572257 () Bool)

(assert (=> setNonEmpty!14396 m!2572257))

(declare-fun condSetEmpty!14399 () Bool)

(assert (=> setNonEmpty!14331 (= condSetEmpty!14399 (= setRest!14331 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14399 () Bool)

(assert (=> setNonEmpty!14331 setRes!14399))

(declare-fun setIsEmpty!14399 () Bool)

(assert (=> setIsEmpty!14399 setRes!14399))

(declare-fun setNonEmpty!14399 () Bool)

(assert (=> setNonEmpty!14399 (= setRes!14399 true)))

(declare-fun setElem!14399 () Context!2430)

(declare-fun setRest!14399 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14399 (= setRest!14331 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14399 true) setRest!14399))))

(assert (= (and setNonEmpty!14331 condSetEmpty!14399) setIsEmpty!14399))

(assert (= (and setNonEmpty!14331 (not condSetEmpty!14399)) setNonEmpty!14399))

(declare-fun e!1347985 () Bool)

(assert (=> b!2117068 (= tp!646561 e!1347985)))

(declare-fun tp!646761 () Bool)

(declare-fun setElem!14400 () Context!2430)

(declare-fun setNonEmpty!14400 () Bool)

(declare-fun e!1347984 () Bool)

(declare-fun setRes!14400 () Bool)

(assert (=> setNonEmpty!14400 (= setRes!14400 (and tp!646761 (inv!31182 setElem!14400) e!1347984))))

(declare-fun setRest!14400 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14400 (= (_2!13441 (h!28998 mapDefault!11570)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14400 true) setRest!14400))))

(declare-fun tp!646763 () Bool)

(declare-fun tp!646760 () Bool)

(declare-fun b!2117541 () Bool)

(declare-fun e!1347986 () Bool)

(assert (=> b!2117541 (= e!1347985 (and tp!646760 (inv!31182 (_2!13440 (_1!13441 (h!28998 mapDefault!11570)))) e!1347986 tp_is_empty!9479 setRes!14400 tp!646763))))

(declare-fun condSetEmpty!14400 () Bool)

(assert (=> b!2117541 (= condSetEmpty!14400 (= (_2!13441 (h!28998 mapDefault!11570)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14400 () Bool)

(assert (=> setIsEmpty!14400 setRes!14400))

(declare-fun b!2117542 () Bool)

(declare-fun tp!646762 () Bool)

(assert (=> b!2117542 (= e!1347984 tp!646762)))

(declare-fun b!2117543 () Bool)

(declare-fun tp!646764 () Bool)

(assert (=> b!2117543 (= e!1347986 tp!646764)))

(assert (= b!2117541 b!2117543))

(assert (= (and b!2117541 condSetEmpty!14400) setIsEmpty!14400))

(assert (= (and b!2117541 (not condSetEmpty!14400)) setNonEmpty!14400))

(assert (= setNonEmpty!14400 b!2117542))

(assert (= (and b!2117068 ((_ is Cons!23597) mapDefault!11570)) b!2117541))

(declare-fun m!2572259 () Bool)

(assert (=> setNonEmpty!14400 m!2572259))

(declare-fun m!2572261 () Bool)

(assert (=> b!2117541 m!2572261))

(declare-fun b_lambda!70397 () Bool)

(assert (= b_lambda!70395 (or b!2117039 b_lambda!70397)))

(declare-fun bs!441303 () Bool)

(declare-fun d!642770 () Bool)

(assert (= bs!441303 (and d!642770 b!2117039)))

(assert (=> bs!441303 (= (dynLambda!11302 lambda!78293 (h!29001 (_2!13444 (_1!13445 lt!793905)))) (= (totalInput!2862 (h!29001 (_2!13444 (_1!13445 lt!793905)))) totalInput!1306))))

(assert (=> b!2117342 d!642770))

(declare-fun b_lambda!70399 () Bool)

(assert (= b_lambda!70393 (or b!2117069 b_lambda!70399)))

(declare-fun bs!441304 () Bool)

(declare-fun d!642772 () Bool)

(assert (= bs!441304 (and d!642772 b!2117069)))

(assert (=> bs!441304 (= (dynLambda!11302 lambda!78292 (h!29001 (_2!13444 (_1!13445 lt!793905)))) (= (res!918218 (h!29001 (_2!13444 (_1!13445 lt!793905)))) (_1!13444 (_1!13445 lt!793905))))))

(assert (=> b!2117265 d!642772))

(check-sat (not setNonEmpty!14364) (not b!2117236) (not d!642692) (not b!2117162) (not setNonEmpty!14343) (not setNonEmpty!14399) (not b!2117366) (not b!2117363) (not bm!128586) (not setNonEmpty!14394) (not b!2117531) (not b!2117520) (not d!642676) (not b!2117536) b_and!170985 (not b!2117456) (not d!642680) (not b!2117472) (not b!2117335) (not d!642758) (not b_next!62101) (not d!642762) (not b!2117518) (not b!2117032) (not b!2117493) (not setNonEmpty!14391) (not b!2117027) (not d!642710) (not setNonEmpty!14334) (not setNonEmpty!14372) (not b!2117489) (not b!2117396) (not b!2117213) (not b!2117222) (not b!2117362) (not b!2117284) (not setNonEmpty!14349) (not b_next!62107) (not setNonEmpty!14395) (not d!642714) (not b!2117481) (not b!2117221) (not setNonEmpty!14333) (not b!2117377) (not mapNonEmpty!11580) (not b!2117496) (not b!2117533) (not d!642686) (not b!2117452) (not b!2117241) (not b!2117443) (not b!2117401) (not bm!128584) (not d!642712) (not mapNonEmpty!11579) (not b!2117156) (not b!2117517) (not b!2117394) (not d!642708) (not b!2117209) (not b!2117304) (not d!642682) (not b!2117411) b_and!170977 (not b!2117500) (not b!2117434) (not b!2117346) (not b!2117445) (not b_next!62103) (not b!2117486) (not b!2117228) (not setNonEmpty!14376) (not bm!128598) b_and!170979 (not b!2117435) (not b!2117534) (not b!2117424) (not b_next!62109) (not d!642768) (not b!2117037) b_and!170983 (not setNonEmpty!14386) (not setNonEmpty!14367) (not b!2117168) (not b!2117206) (not b!2117505) (not b!2117485) (not b!2117155) (not d!642750) (not setNonEmpty!14346) (not b!2117395) (not d!642702) (not b!2117537) (not b!2117454) (not b!2117365) (not b!2117503) (not b!2117479) (not setNonEmpty!14385) (not b!2117474) (not d!642764) (not mapNonEmpty!11597) (not bm!128585) (not b!2117444) (not b!2117491) (not b!2117433) (not b!2117266) (not b!2117504) (not b!2117147) (not b!2117321) (not d!642720) (not b!2117497) (not setNonEmpty!14363) (not b!2117132) (not b!2117202) (not b!2117412) (not b!2117323) (not b!2117242) (not b!2117473) (not setNonEmpty!14384) (not b!2117319) (not mapNonEmpty!11594) (not b!2117529) (not b!2117391) (not b!2117499) (not d!642740) (not b!2117171) (not setNonEmpty!14350) (not b!2117502) (not b!2117248) (not mapNonEmpty!11585) (not setNonEmpty!14356) (not b!2117281) (not b!2117314) (not setNonEmpty!14332) (not b!2117376) (not b!2117528) b_and!170981 (not setNonEmpty!14375) (not d!642718) (not setNonEmpty!14377) (not b!2117393) (not mapNonEmpty!11588) (not d!642706) (not d!642688) (not b!2117478) (not b!2117495) (not b!2117208) (not b!2117532) (not setNonEmpty!14353) (not setNonEmpty!14378) (not setNonEmpty!14362) (not bm!128576) (not d!642684) (not b!2117530) (not b!2117320) (not b!2117201) (not b!2117134) (not b!2117425) (not b!2117150) (not b!2117543) (not b!2117455) (not b!2117542) (not b!2117207) (not b!2117426) (not b!2117477) (not b!2117516) (not b!2117251) (not b!2117436) (not d!642732) (not d!642716) (not d!642700) (not b!2117392) (not mapNonEmpty!11581) (not b!2117482) (not b_next!62111) (not b!2117198) (not b!2117339) (not d!642690) (not b!2117260) (not b!2117337) (not d!642678) (not b_lambda!70397) (not b_next!62105) (not setNonEmpty!14340) (not b!2117538) (not b!2117492) b_and!170987 (not d!642672) (not setNonEmpty!14392) (not mapNonEmpty!11577) (not b!2117233) (not b!2117541) (not setNonEmpty!14379) (not bm!128596) (not b!2117519) (not b!2117501) (not d!642704) (not b!2117521) (not setNonEmpty!14339) tp_is_empty!9479 (not b_lambda!70399) (not b!2117364) (not d!642670) (not b!2117343) (not d!642730) (not d!642722) (not setNonEmpty!14400) (not b!2117498) (not b!2117410) (not bm!128589) (not setNonEmpty!14374) (not setNonEmpty!14373) (not b!2117535) (not d!642766) (not b!2117216) (not b!2117361) (not setNonEmpty!14393) (not b!2117341) (not b!2117487) (not mapNonEmpty!11591) (not b!2117483) (not b!2117375) (not b!2117488) (not b!2117476) (not d!642746) (not setNonEmpty!14396) (not mapNonEmpty!11578) (not b!2117475) (not b!2117254) (not b!2117471) (not bm!128583) (not mapNonEmpty!11582) (not b!2117382) (not setNonEmpty!14357) (not d!642696))
(check-sat b_and!170985 (not b_next!62101) (not b_next!62107) b_and!170977 b_and!170981 b_and!170987 (not b_next!62103) b_and!170979 (not b_next!62109) b_and!170983 (not b_next!62111) (not b_next!62105))
(get-model)

(declare-fun d!642774 () Bool)

(declare-fun nullableFct!385 (Regex!5645) Bool)

(assert (=> d!642774 (= (nullable!1682 (reg!5974 r!15373)) (nullableFct!385 (reg!5974 r!15373)))))

(declare-fun bs!441305 () Bool)

(assert (= bs!441305 d!642774))

(declare-fun m!2572263 () Bool)

(assert (=> bs!441305 m!2572263))

(assert (=> b!2117304 d!642774))

(declare-fun d!642776 () Bool)

(declare-fun lambda!78326 () Int)

(declare-fun forall!4846 (List!23680 Int) Bool)

(assert (=> d!642776 (= (inv!31182 setElem!14386) (forall!4846 (exprs!1715 setElem!14386) lambda!78326))))

(declare-fun bs!441306 () Bool)

(assert (= bs!441306 d!642776))

(declare-fun m!2572265 () Bool)

(assert (=> bs!441306 m!2572265))

(assert (=> setNonEmpty!14386 d!642776))

(declare-fun d!642778 () Bool)

(declare-fun res!918300 () Bool)

(declare-fun e!1347987 () Bool)

(assert (=> d!642778 (=> res!918300 e!1347987)))

(assert (=> d!642778 (= res!918300 ((_ is Nil!23600) Nil!23600))))

(assert (=> d!642778 (= (forall!4845 Nil!23600 (ite c!339406 lambda!78314 lambda!78316)) e!1347987)))

(declare-fun b!2117544 () Bool)

(declare-fun e!1347988 () Bool)

(assert (=> b!2117544 (= e!1347987 e!1347988)))

(declare-fun res!918301 () Bool)

(assert (=> b!2117544 (=> (not res!918301) (not e!1347988))))

(assert (=> b!2117544 (= res!918301 (dynLambda!11302 (ite c!339406 lambda!78314 lambda!78316) (h!29001 Nil!23600)))))

(declare-fun b!2117545 () Bool)

(assert (=> b!2117545 (= e!1347988 (forall!4845 (t!196193 Nil!23600) (ite c!339406 lambda!78314 lambda!78316)))))

(assert (= (and d!642778 (not res!918300)) b!2117544))

(assert (= (and b!2117544 res!918301) b!2117545))

(declare-fun b_lambda!70401 () Bool)

(assert (=> (not b_lambda!70401) (not b!2117544)))

(declare-fun m!2572267 () Bool)

(assert (=> b!2117544 m!2572267))

(declare-fun m!2572269 () Bool)

(assert (=> b!2117545 m!2572269))

(assert (=> bm!128584 d!642778))

(declare-fun d!642780 () Bool)

(declare-fun e!1347991 () Bool)

(assert (=> d!642780 e!1347991))

(declare-fun res!918304 () Bool)

(assert (=> d!642780 (=> (not res!918304) (not e!1347991))))

(assert (=> d!642780 (= res!918304 (= (list!9507 (_1!13446 (findLongestMatchZipperFastV2!13 lt!793898 input!6660 totalInput!1306))) (_1!13449 (findLongestMatch!515 r!15373 (list!9507 input!6660)))))))

(assert (=> d!642780 true))

(declare-fun _$73!160 () Unit!37556)

(assert (=> d!642780 (= (choose!12655 r!15373 lt!793898 input!6660 totalInput!1306) _$73!160)))

(declare-fun b!2117548 () Bool)

(assert (=> b!2117548 (= e!1347991 (= (list!9507 (_2!13446 (findLongestMatchZipperFastV2!13 lt!793898 input!6660 totalInput!1306))) (_2!13449 (findLongestMatch!515 r!15373 (list!9507 input!6660)))))))

(assert (= (and d!642780 res!918304) b!2117548))

(assert (=> d!642780 m!2571845))

(assert (=> d!642780 m!2571971))

(assert (=> d!642780 m!2571907))

(assert (=> d!642780 m!2571907))

(assert (=> d!642780 m!2571973))

(assert (=> b!2117548 m!2571845))

(assert (=> b!2117548 m!2571977))

(assert (=> b!2117548 m!2571907))

(assert (=> b!2117548 m!2571907))

(assert (=> b!2117548 m!2571973))

(assert (=> d!642678 d!642780))

(assert (=> d!642678 d!642728))

(assert (=> d!642678 d!642766))

(assert (=> d!642678 d!642696))

(declare-fun d!642782 () Bool)

(declare-fun lt!794073 () tuple2!23142)

(assert (=> d!642782 (= (++!6313 (_1!13449 lt!794073) (_2!13449 lt!794073)) (list!9507 input!6660))))

(assert (=> d!642782 (= lt!794073 (findLongestMatchInner!596 r!15373 Nil!23598 0 (list!9507 input!6660) (list!9507 input!6660) (sizeTr!98 (list!9507 input!6660) 0)))))

(declare-fun lt!794075 () Unit!37556)

(declare-fun lt!794074 () Unit!37556)

(assert (=> d!642782 (= lt!794075 lt!794074)))

(declare-fun lt!794079 () List!23682)

(declare-fun lt!794080 () Int)

(assert (=> d!642782 (= (sizeTr!98 lt!794079 lt!794080) (+ (size!18433 lt!794079) lt!794080))))

(assert (=> d!642782 (= lt!794074 (lemmaSizeTrEqualsSize!98 lt!794079 lt!794080))))

(assert (=> d!642782 (= lt!794080 0)))

(assert (=> d!642782 (= lt!794079 Nil!23598)))

(declare-fun lt!794076 () Unit!37556)

(declare-fun lt!794077 () Unit!37556)

(assert (=> d!642782 (= lt!794076 lt!794077)))

(declare-fun lt!794078 () Int)

(assert (=> d!642782 (= (sizeTr!98 (list!9507 input!6660) lt!794078) (+ (size!18433 (list!9507 input!6660)) lt!794078))))

(assert (=> d!642782 (= lt!794077 (lemmaSizeTrEqualsSize!98 (list!9507 input!6660) lt!794078))))

(assert (=> d!642782 (= lt!794078 0)))

(assert (=> d!642782 (validRegex!2229 r!15373)))

(assert (=> d!642782 (= (findLongestMatch!515 r!15373 (list!9507 input!6660)) lt!794073)))

(declare-fun bs!441307 () Bool)

(assert (= bs!441307 d!642782))

(declare-fun m!2572271 () Bool)

(assert (=> bs!441307 m!2572271))

(declare-fun m!2572273 () Bool)

(assert (=> bs!441307 m!2572273))

(assert (=> bs!441307 m!2571887))

(assert (=> bs!441307 m!2571907))

(assert (=> bs!441307 m!2572071))

(declare-fun m!2572275 () Bool)

(assert (=> bs!441307 m!2572275))

(assert (=> bs!441307 m!2571907))

(declare-fun m!2572277 () Bool)

(assert (=> bs!441307 m!2572277))

(assert (=> bs!441307 m!2571907))

(declare-fun m!2572279 () Bool)

(assert (=> bs!441307 m!2572279))

(assert (=> bs!441307 m!2571907))

(assert (=> bs!441307 m!2571907))

(declare-fun m!2572281 () Bool)

(assert (=> bs!441307 m!2572281))

(declare-fun m!2572283 () Bool)

(assert (=> bs!441307 m!2572283))

(assert (=> bs!441307 m!2571907))

(assert (=> bs!441307 m!2572281))

(declare-fun m!2572285 () Bool)

(assert (=> bs!441307 m!2572285))

(assert (=> d!642678 d!642782))

(declare-fun d!642784 () Bool)

(assert (=> d!642784 (= (list!9507 (_1!13446 (findLongestMatchZipperFastV2!13 lt!793898 input!6660 totalInput!1306))) (list!9508 (c!339387 (_1!13446 (findLongestMatchZipperFastV2!13 lt!793898 input!6660 totalInput!1306)))))))

(declare-fun bs!441308 () Bool)

(assert (= bs!441308 d!642784))

(declare-fun m!2572287 () Bool)

(assert (=> bs!441308 m!2572287))

(assert (=> d!642678 d!642784))

(declare-fun bs!441309 () Bool)

(declare-fun d!642786 () Bool)

(assert (= bs!441309 (and d!642786 d!642776)))

(declare-fun lambda!78327 () Int)

(assert (=> bs!441309 (= lambda!78327 lambda!78326)))

(assert (=> d!642786 (= (inv!31182 (_1!13442 (_1!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))))) (forall!4846 (exprs!1715 (_1!13442 (_1!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))))) lambda!78327))))

(declare-fun bs!441310 () Bool)

(assert (= bs!441310 d!642786))

(declare-fun m!2572289 () Bool)

(assert (=> bs!441310 m!2572289))

(assert (=> b!2117499 d!642786))

(declare-fun d!642788 () Bool)

(declare-fun res!918311 () Bool)

(declare-fun e!1347994 () Bool)

(assert (=> d!642788 (=> (not res!918311) (not e!1347994))))

(assert (=> d!642788 (= res!918311 (= (csize!15798 (c!339387 (totalInput!2863 cacheFurthestNullable!141))) (+ (size!18434 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) (size!18434 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))))

(assert (=> d!642788 (= (inv!31180 (c!339387 (totalInput!2863 cacheFurthestNullable!141))) e!1347994)))

(declare-fun b!2117555 () Bool)

(declare-fun res!918312 () Bool)

(assert (=> b!2117555 (=> (not res!918312) (not e!1347994))))

(assert (=> b!2117555 (= res!918312 (and (not (= (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141))) Empty!7784)) (not (= (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141))) Empty!7784))))))

(declare-fun b!2117556 () Bool)

(declare-fun res!918313 () Bool)

(assert (=> b!2117556 (=> (not res!918313) (not e!1347994))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1230 (Conc!7784) Int)

(assert (=> b!2117556 (= res!918313 (= (cheight!7995 (c!339387 (totalInput!2863 cacheFurthestNullable!141))) (+ (max!0 (height!1230 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) (height!1230 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) 1)))))

(declare-fun b!2117557 () Bool)

(assert (=> b!2117557 (= e!1347994 (<= 0 (cheight!7995 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))

(assert (= (and d!642788 res!918311) b!2117555))

(assert (= (and b!2117555 res!918312) b!2117556))

(assert (= (and b!2117556 res!918313) b!2117557))

(declare-fun m!2572291 () Bool)

(assert (=> d!642788 m!2572291))

(declare-fun m!2572293 () Bool)

(assert (=> d!642788 m!2572293))

(declare-fun m!2572295 () Bool)

(assert (=> b!2117556 m!2572295))

(declare-fun m!2572297 () Bool)

(assert (=> b!2117556 m!2572297))

(assert (=> b!2117556 m!2572295))

(assert (=> b!2117556 m!2572297))

(declare-fun m!2572299 () Bool)

(assert (=> b!2117556 m!2572299))

(assert (=> b!2117132 d!642788))

(declare-fun d!642790 () Bool)

(declare-fun res!918318 () Bool)

(declare-fun e!1347997 () Bool)

(assert (=> d!642790 (=> (not res!918318) (not e!1347997))))

(declare-fun valid!1888 (MutableMap!2310) Bool)

(assert (=> d!642790 (= res!918318 (valid!1888 (cache!2691 (_2!13450 lt!793892))))))

(assert (=> d!642790 (= (validCacheMapUp!239 (cache!2691 (_2!13450 lt!793892))) e!1347997)))

(declare-fun b!2117562 () Bool)

(declare-fun res!918319 () Bool)

(assert (=> b!2117562 (=> (not res!918319) (not e!1347997))))

(declare-fun invariantList!295 (List!23683) Bool)

(declare-datatypes ((ListMap!639 0))(
  ( (ListMap!640 (toList!1057 List!23683)) )
))
(declare-fun map!4817 (MutableMap!2310) ListMap!639)

(assert (=> b!2117562 (= res!918319 (invariantList!295 (toList!1057 (map!4817 (cache!2691 (_2!13450 lt!793892))))))))

(declare-fun b!2117563 () Bool)

(declare-fun lambda!78330 () Int)

(declare-fun forall!4847 (List!23683 Int) Bool)

(assert (=> b!2117563 (= e!1347997 (forall!4847 (toList!1057 (map!4817 (cache!2691 (_2!13450 lt!793892)))) lambda!78330))))

(assert (= (and d!642790 res!918318) b!2117562))

(assert (= (and b!2117562 res!918319) b!2117563))

(declare-fun m!2572302 () Bool)

(assert (=> d!642790 m!2572302))

(declare-fun m!2572304 () Bool)

(assert (=> b!2117562 m!2572304))

(declare-fun m!2572306 () Bool)

(assert (=> b!2117562 m!2572306))

(assert (=> b!2117563 m!2572304))

(declare-fun m!2572308 () Bool)

(assert (=> b!2117563 m!2572308))

(assert (=> d!642758 d!642790))

(declare-fun d!642792 () Bool)

(assert (=> d!642792 (= (list!9507 (_1!13446 (findLongestMatchZipperSequenceV3!8 lt!793898 input!6660 totalInput!1306))) (list!9508 (c!339387 (_1!13446 (findLongestMatchZipperSequenceV3!8 lt!793898 input!6660 totalInput!1306)))))))

(declare-fun bs!441311 () Bool)

(assert (= bs!441311 d!642792))

(declare-fun m!2572310 () Bool)

(assert (=> bs!441311 m!2572310))

(assert (=> d!642686 d!642792))

(assert (=> d!642686 d!642728))

(declare-fun d!642794 () Bool)

(declare-fun e!1348000 () Bool)

(assert (=> d!642794 e!1348000))

(declare-fun res!918322 () Bool)

(assert (=> d!642794 (=> (not res!918322) (not e!1348000))))

(assert (=> d!642794 (= res!918322 (= (list!9507 (_1!13446 (findLongestMatchZipperSequenceV3!8 lt!793898 input!6660 totalInput!1306))) (_1!13449 (findLongestMatch!515 r!15373 (list!9507 input!6660)))))))

(assert (=> d!642794 true))

(declare-fun _$72!66 () Unit!37556)

(assert (=> d!642794 (= (choose!12656 r!15373 lt!793898 input!6660 totalInput!1306) _$72!66)))

(declare-fun b!2117566 () Bool)

(assert (=> b!2117566 (= e!1348000 (= (list!9507 (_2!13446 (findLongestMatchZipperSequenceV3!8 lt!793898 input!6660 totalInput!1306))) (_2!13449 (findLongestMatch!515 r!15373 (list!9507 input!6660)))))))

(assert (= (and d!642794 res!918322) b!2117566))

(assert (=> d!642794 m!2571867))

(assert (=> d!642794 m!2572041))

(assert (=> d!642794 m!2571907))

(assert (=> d!642794 m!2571907))

(assert (=> d!642794 m!2571973))

(assert (=> b!2117566 m!2571867))

(assert (=> b!2117566 m!2572043))

(assert (=> b!2117566 m!2571907))

(assert (=> b!2117566 m!2571907))

(assert (=> b!2117566 m!2571973))

(assert (=> d!642686 d!642794))

(assert (=> d!642686 d!642766))

(assert (=> d!642686 d!642704))

(assert (=> d!642686 d!642782))

(declare-fun d!642796 () Bool)

(declare-fun lt!794081 () Int)

(assert (=> d!642796 (>= lt!794081 0)))

(declare-fun e!1348001 () Int)

(assert (=> d!642796 (= lt!794081 e!1348001)))

(declare-fun c!339436 () Bool)

(assert (=> d!642796 (= c!339436 ((_ is Nil!23598) (list!9507 totalInput!1306)))))

(assert (=> d!642796 (= (size!18433 (list!9507 totalInput!1306)) lt!794081)))

(declare-fun b!2117567 () Bool)

(assert (=> b!2117567 (= e!1348001 0)))

(declare-fun b!2117568 () Bool)

(assert (=> b!2117568 (= e!1348001 (+ 1 (size!18433 (t!196191 (list!9507 totalInput!1306)))))))

(assert (= (and d!642796 c!339436) b!2117567))

(assert (= (and d!642796 (not c!339436)) b!2117568))

(declare-fun m!2572312 () Bool)

(assert (=> b!2117568 m!2572312))

(assert (=> d!642676 d!642796))

(assert (=> d!642676 d!642764))

(declare-fun d!642798 () Bool)

(declare-fun lt!794084 () Int)

(assert (=> d!642798 (= lt!794084 (size!18433 (list!9508 (c!339387 totalInput!1306))))))

(assert (=> d!642798 (= lt!794084 (ite ((_ is Empty!7784) (c!339387 totalInput!1306)) 0 (ite ((_ is Leaf!11374) (c!339387 totalInput!1306)) (csize!15799 (c!339387 totalInput!1306)) (csize!15798 (c!339387 totalInput!1306)))))))

(assert (=> d!642798 (= (size!18434 (c!339387 totalInput!1306)) lt!794084)))

(declare-fun bs!441312 () Bool)

(assert (= bs!441312 d!642798))

(assert (=> bs!441312 m!2572171))

(assert (=> bs!441312 m!2572171))

(declare-fun m!2572314 () Bool)

(assert (=> bs!441312 m!2572314))

(assert (=> d!642676 d!642798))

(declare-fun bs!441313 () Bool)

(declare-fun d!642800 () Bool)

(assert (= bs!441313 (and d!642800 d!642776)))

(declare-fun lambda!78331 () Int)

(assert (=> bs!441313 (= lambda!78331 lambda!78326)))

(declare-fun bs!441314 () Bool)

(assert (= bs!441314 (and d!642800 d!642786)))

(assert (=> bs!441314 (= lambda!78331 lambda!78327)))

(assert (=> d!642800 (= (inv!31182 (_1!13442 (_1!13443 (h!29000 mapDefault!11569)))) (forall!4846 (exprs!1715 (_1!13442 (_1!13443 (h!29000 mapDefault!11569)))) lambda!78331))))

(declare-fun bs!441315 () Bool)

(assert (= bs!441315 d!642800))

(declare-fun m!2572316 () Bool)

(assert (=> bs!441315 m!2572316))

(assert (=> b!2117537 d!642800))

(declare-fun b!2117580 () Bool)

(declare-fun e!1348007 () List!23682)

(assert (=> b!2117580 (= e!1348007 (++!6313 (list!9508 (left!18281 (c!339387 (_2!13446 lt!793899)))) (list!9508 (right!18611 (c!339387 (_2!13446 lt!793899))))))))

(declare-fun b!2117579 () Bool)

(declare-fun list!9509 (IArray!15573) List!23682)

(assert (=> b!2117579 (= e!1348007 (list!9509 (xs!10726 (c!339387 (_2!13446 lt!793899)))))))

(declare-fun b!2117578 () Bool)

(declare-fun e!1348006 () List!23682)

(assert (=> b!2117578 (= e!1348006 e!1348007)))

(declare-fun c!339442 () Bool)

(assert (=> b!2117578 (= c!339442 ((_ is Leaf!11374) (c!339387 (_2!13446 lt!793899))))))

(declare-fun b!2117577 () Bool)

(assert (=> b!2117577 (= e!1348006 Nil!23598)))

(declare-fun d!642802 () Bool)

(declare-fun c!339441 () Bool)

(assert (=> d!642802 (= c!339441 ((_ is Empty!7784) (c!339387 (_2!13446 lt!793899))))))

(assert (=> d!642802 (= (list!9508 (c!339387 (_2!13446 lt!793899))) e!1348006)))

(assert (= (and d!642802 c!339441) b!2117577))

(assert (= (and d!642802 (not c!339441)) b!2117578))

(assert (= (and b!2117578 c!339442) b!2117579))

(assert (= (and b!2117578 (not c!339442)) b!2117580))

(declare-fun m!2572318 () Bool)

(assert (=> b!2117580 m!2572318))

(declare-fun m!2572320 () Bool)

(assert (=> b!2117580 m!2572320))

(assert (=> b!2117580 m!2572318))

(assert (=> b!2117580 m!2572320))

(declare-fun m!2572322 () Bool)

(assert (=> b!2117580 m!2572322))

(declare-fun m!2572324 () Bool)

(assert (=> b!2117579 m!2572324))

(assert (=> d!642670 d!642802))

(assert (=> b!2117037 d!642752))

(declare-fun d!642804 () Bool)

(declare-fun res!918327 () Bool)

(declare-fun e!1348010 () Bool)

(assert (=> d!642804 (=> (not res!918327) (not e!1348010))))

(assert (=> d!642804 (= res!918327 (<= (size!18433 (list!9509 (xs!10726 (c!339387 totalInput!1306)))) 512))))

(assert (=> d!642804 (= (inv!31181 (c!339387 totalInput!1306)) e!1348010)))

(declare-fun b!2117585 () Bool)

(declare-fun res!918328 () Bool)

(assert (=> b!2117585 (=> (not res!918328) (not e!1348010))))

(assert (=> b!2117585 (= res!918328 (= (csize!15799 (c!339387 totalInput!1306)) (size!18433 (list!9509 (xs!10726 (c!339387 totalInput!1306))))))))

(declare-fun b!2117586 () Bool)

(assert (=> b!2117586 (= e!1348010 (and (> (csize!15799 (c!339387 totalInput!1306)) 0) (<= (csize!15799 (c!339387 totalInput!1306)) 512)))))

(assert (= (and d!642804 res!918327) b!2117585))

(assert (= (and b!2117585 res!918328) b!2117586))

(declare-fun m!2572326 () Bool)

(assert (=> d!642804 m!2572326))

(assert (=> d!642804 m!2572326))

(declare-fun m!2572328 () Bool)

(assert (=> d!642804 m!2572328))

(assert (=> b!2117585 m!2572326))

(assert (=> b!2117585 m!2572326))

(assert (=> b!2117585 m!2572328))

(assert (=> b!2117341 d!642804))

(declare-fun bs!441316 () Bool)

(declare-fun d!642806 () Bool)

(assert (= bs!441316 (and d!642806 d!642776)))

(declare-fun lambda!78332 () Int)

(assert (=> bs!441316 (= lambda!78332 lambda!78326)))

(declare-fun bs!441317 () Bool)

(assert (= bs!441317 (and d!642806 d!642786)))

(assert (=> bs!441317 (= lambda!78332 lambda!78327)))

(declare-fun bs!441318 () Bool)

(assert (= bs!441318 (and d!642806 d!642800)))

(assert (=> bs!441318 (= lambda!78332 lambda!78331)))

(assert (=> d!642806 (= (inv!31182 (_1!13442 (_1!13443 (h!29000 mapValue!11569)))) (forall!4846 (exprs!1715 (_1!13442 (_1!13443 (h!29000 mapValue!11569)))) lambda!78332))))

(declare-fun bs!441319 () Bool)

(assert (= bs!441319 d!642806))

(declare-fun m!2572330 () Bool)

(assert (=> bs!441319 m!2572330))

(assert (=> b!2117376 d!642806))

(declare-fun d!642808 () Bool)

(declare-fun e!1348011 () Bool)

(assert (=> d!642808 e!1348011))

(declare-fun res!918329 () Bool)

(assert (=> d!642808 (=> (not res!918329) (not e!1348011))))

(declare-fun lt!794086 () tuple2!23138)

(assert (=> d!642808 (= res!918329 (isBalanced!2443 (c!339387 (_1!13446 lt!794086))))))

(declare-fun lt!794085 () tuple2!23146)

(assert (=> d!642808 (= lt!794086 (tuple2!23139 (BalanceConc!15331 (_1!13453 lt!794085)) (BalanceConc!15331 (_2!13453 lt!794085))))))

(assert (=> d!642808 (= lt!794085 (splitAt!16 (c!339387 input!6660) (ite c!339409 0 lt!793992)))))

(assert (=> d!642808 (isBalanced!2443 (c!339387 input!6660))))

(assert (=> d!642808 (= (splitAt!15 input!6660 (ite c!339409 0 lt!793992)) lt!794086)))

(declare-fun b!2117587 () Bool)

(declare-fun res!918330 () Bool)

(assert (=> b!2117587 (=> (not res!918330) (not e!1348011))))

(assert (=> b!2117587 (= res!918330 (isBalanced!2443 (c!339387 (_2!13446 lt!794086))))))

(declare-fun b!2117588 () Bool)

(assert (=> b!2117588 (= e!1348011 (= (tuple2!23143 (list!9507 (_1!13446 lt!794086)) (list!9507 (_2!13446 lt!794086))) (splitAtIndex!21 (list!9507 input!6660) (ite c!339409 0 lt!793992))))))

(assert (= (and d!642808 res!918329) b!2117587))

(assert (= (and b!2117587 res!918330) b!2117588))

(declare-fun m!2572332 () Bool)

(assert (=> d!642808 m!2572332))

(declare-fun m!2572334 () Bool)

(assert (=> d!642808 m!2572334))

(assert (=> d!642808 m!2572129))

(declare-fun m!2572336 () Bool)

(assert (=> b!2117587 m!2572336))

(declare-fun m!2572338 () Bool)

(assert (=> b!2117588 m!2572338))

(declare-fun m!2572340 () Bool)

(assert (=> b!2117588 m!2572340))

(assert (=> b!2117588 m!2571907))

(assert (=> b!2117588 m!2571907))

(declare-fun m!2572342 () Bool)

(assert (=> b!2117588 m!2572342))

(assert (=> bm!128586 d!642808))

(declare-fun d!642810 () Bool)

(declare-fun c!339443 () Bool)

(assert (=> d!642810 (= c!339443 ((_ is Nil!23598) (t!196191 lt!793897)))))

(declare-fun e!1348012 () Int)

(assert (=> d!642810 (= (sizeTr!98 (t!196191 lt!793897) (+ 0 1)) e!1348012)))

(declare-fun b!2117589 () Bool)

(assert (=> b!2117589 (= e!1348012 (+ 0 1))))

(declare-fun b!2117590 () Bool)

(assert (=> b!2117590 (= e!1348012 (sizeTr!98 (t!196191 (t!196191 lt!793897)) (+ 0 1 1)))))

(assert (= (and d!642810 c!339443) b!2117589))

(assert (= (and d!642810 (not c!339443)) b!2117590))

(declare-fun m!2572344 () Bool)

(assert (=> b!2117590 m!2572344))

(assert (=> b!2117168 d!642810))

(declare-fun d!642812 () Bool)

(assert (=> d!642812 (= (valid!1886 (_2!13445 lt!793984)) (validCacheMapUp!239 (cache!2691 (_2!13445 lt!793984))))))

(declare-fun bs!441320 () Bool)

(assert (= bs!441320 d!642812))

(declare-fun m!2572346 () Bool)

(assert (=> bs!441320 m!2572346))

(assert (=> b!2117208 d!642812))

(declare-fun bs!441321 () Bool)

(declare-fun d!642814 () Bool)

(assert (= bs!441321 (and d!642814 d!642776)))

(declare-fun lambda!78333 () Int)

(assert (=> bs!441321 (= lambda!78333 lambda!78326)))

(declare-fun bs!441322 () Bool)

(assert (= bs!441322 (and d!642814 d!642786)))

(assert (=> bs!441322 (= lambda!78333 lambda!78327)))

(declare-fun bs!441323 () Bool)

(assert (= bs!441323 (and d!642814 d!642800)))

(assert (=> bs!441323 (= lambda!78333 lambda!78331)))

(declare-fun bs!441324 () Bool)

(assert (= bs!441324 (and d!642814 d!642806)))

(assert (=> bs!441324 (= lambda!78333 lambda!78332)))

(assert (=> d!642814 (= (inv!31182 (_1!13442 (_1!13443 (h!29000 mapDefault!11585)))) (forall!4846 (exprs!1715 (_1!13442 (_1!13443 (h!29000 mapDefault!11585)))) lambda!78333))))

(declare-fun bs!441325 () Bool)

(assert (= bs!441325 d!642814))

(declare-fun m!2572348 () Bool)

(assert (=> bs!441325 m!2572348))

(assert (=> b!2117364 d!642814))

(declare-fun d!642816 () Bool)

(declare-fun res!918331 () Bool)

(declare-fun e!1348013 () Bool)

(assert (=> d!642816 (=> (not res!918331) (not e!1348013))))

(assert (=> d!642816 (= res!918331 (<= (size!18433 (list!9509 (xs!10726 (c!339387 input!6660)))) 512))))

(assert (=> d!642816 (= (inv!31181 (c!339387 input!6660)) e!1348013)))

(declare-fun b!2117591 () Bool)

(declare-fun res!918332 () Bool)

(assert (=> b!2117591 (=> (not res!918332) (not e!1348013))))

(assert (=> b!2117591 (= res!918332 (= (csize!15799 (c!339387 input!6660)) (size!18433 (list!9509 (xs!10726 (c!339387 input!6660))))))))

(declare-fun b!2117592 () Bool)

(assert (=> b!2117592 (= e!1348013 (and (> (csize!15799 (c!339387 input!6660)) 0) (<= (csize!15799 (c!339387 input!6660)) 512)))))

(assert (= (and d!642816 res!918331) b!2117591))

(assert (= (and b!2117591 res!918332) b!2117592))

(declare-fun m!2572350 () Bool)

(assert (=> d!642816 m!2572350))

(assert (=> d!642816 m!2572350))

(declare-fun m!2572352 () Bool)

(assert (=> d!642816 m!2572352))

(assert (=> b!2117591 m!2572350))

(assert (=> b!2117591 m!2572350))

(assert (=> b!2117591 m!2572352))

(assert (=> b!2117323 d!642816))

(declare-fun d!642818 () Bool)

(assert (=> d!642818 (= (list!9507 (_1!13446 lt!794057)) (list!9508 (c!339387 (_1!13446 lt!794057))))))

(declare-fun bs!441326 () Bool)

(assert (= bs!441326 d!642818))

(declare-fun m!2572354 () Bool)

(assert (=> bs!441326 m!2572354))

(assert (=> b!2117320 d!642818))

(declare-fun d!642820 () Bool)

(assert (=> d!642820 (= (list!9507 (_2!13446 lt!794057)) (list!9508 (c!339387 (_2!13446 lt!794057))))))

(declare-fun bs!441327 () Bool)

(assert (= bs!441327 d!642820))

(declare-fun m!2572356 () Bool)

(assert (=> bs!441327 m!2572356))

(assert (=> b!2117320 d!642820))

(declare-fun b!2117605 () Bool)

(declare-fun e!1348022 () tuple2!23142)

(assert (=> b!2117605 (= e!1348022 (tuple2!23143 Nil!23598 (list!9507 input!6660)))))

(declare-fun b!2117606 () Bool)

(declare-fun e!1348021 () tuple2!23142)

(assert (=> b!2117606 (= e!1348021 (tuple2!23143 Nil!23598 Nil!23598))))

(declare-fun d!642822 () Bool)

(declare-fun e!1348020 () Bool)

(assert (=> d!642822 e!1348020))

(declare-fun res!918338 () Bool)

(assert (=> d!642822 (=> (not res!918338) (not e!1348020))))

(declare-fun lt!794091 () tuple2!23142)

(assert (=> d!642822 (= res!918338 (= (++!6313 (_1!13449 lt!794091) (_2!13449 lt!794091)) (list!9507 input!6660)))))

(assert (=> d!642822 (= lt!794091 e!1348021)))

(declare-fun c!339449 () Bool)

(assert (=> d!642822 (= c!339449 ((_ is Nil!23598) (list!9507 input!6660)))))

(assert (=> d!642822 (= (splitAtIndex!21 (list!9507 input!6660) (ite c!339385 0 lt!793904)) lt!794091)))

(declare-fun b!2117607 () Bool)

(assert (=> b!2117607 (= e!1348021 e!1348022)))

(declare-fun c!339448 () Bool)

(assert (=> b!2117607 (= c!339448 (<= (ite c!339385 0 lt!793904) 0))))

(declare-fun b!2117608 () Bool)

(assert (=> b!2117608 (= e!1348020 (= (_2!13449 lt!794091) (drop!1178 (list!9507 input!6660) (ite c!339385 0 lt!793904))))))

(declare-fun b!2117609 () Bool)

(declare-fun lt!794092 () tuple2!23142)

(assert (=> b!2117609 (= lt!794092 (splitAtIndex!21 (t!196191 (list!9507 input!6660)) (- (ite c!339385 0 lt!793904) 1)))))

(assert (=> b!2117609 (= e!1348022 (tuple2!23143 (Cons!23598 (h!28999 (list!9507 input!6660)) (_1!13449 lt!794092)) (_2!13449 lt!794092)))))

(declare-fun b!2117610 () Bool)

(declare-fun res!918337 () Bool)

(assert (=> b!2117610 (=> (not res!918337) (not e!1348020))))

(declare-fun take!176 (List!23682 Int) List!23682)

(assert (=> b!2117610 (= res!918337 (= (_1!13449 lt!794091) (take!176 (list!9507 input!6660) (ite c!339385 0 lt!793904))))))

(assert (= (and d!642822 c!339449) b!2117606))

(assert (= (and d!642822 (not c!339449)) b!2117607))

(assert (= (and b!2117607 c!339448) b!2117605))

(assert (= (and b!2117607 (not c!339448)) b!2117609))

(assert (= (and d!642822 res!918338) b!2117610))

(assert (= (and b!2117610 res!918337) b!2117608))

(declare-fun m!2572358 () Bool)

(assert (=> d!642822 m!2572358))

(assert (=> b!2117608 m!2571907))

(declare-fun m!2572360 () Bool)

(assert (=> b!2117608 m!2572360))

(declare-fun m!2572362 () Bool)

(assert (=> b!2117609 m!2572362))

(assert (=> b!2117610 m!2571907))

(declare-fun m!2572364 () Bool)

(assert (=> b!2117610 m!2572364))

(assert (=> b!2117320 d!642822))

(assert (=> b!2117320 d!642766))

(declare-fun d!642824 () Bool)

(declare-fun c!339450 () Bool)

(assert (=> d!642824 (= c!339450 ((_ is Node!7784) (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))

(declare-fun e!1348023 () Bool)

(assert (=> d!642824 (= (inv!31175 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) e!1348023)))

(declare-fun b!2117611 () Bool)

(assert (=> b!2117611 (= e!1348023 (inv!31180 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))

(declare-fun b!2117612 () Bool)

(declare-fun e!1348024 () Bool)

(assert (=> b!2117612 (= e!1348023 e!1348024)))

(declare-fun res!918339 () Bool)

(assert (=> b!2117612 (= res!918339 (not ((_ is Leaf!11374) (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))))))

(assert (=> b!2117612 (=> res!918339 e!1348024)))

(declare-fun b!2117613 () Bool)

(assert (=> b!2117613 (= e!1348024 (inv!31181 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))

(assert (= (and d!642824 c!339450) b!2117611))

(assert (= (and d!642824 (not c!339450)) b!2117612))

(assert (= (and b!2117612 (not res!918339)) b!2117613))

(declare-fun m!2572366 () Bool)

(assert (=> b!2117611 m!2572366))

(declare-fun m!2572368 () Bool)

(assert (=> b!2117613 m!2572368))

(assert (=> b!2117531 d!642824))

(declare-fun d!642826 () Bool)

(declare-fun c!339451 () Bool)

(assert (=> d!642826 (= c!339451 ((_ is Node!7784) (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))

(declare-fun e!1348025 () Bool)

(assert (=> d!642826 (= (inv!31175 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) e!1348025)))

(declare-fun b!2117614 () Bool)

(assert (=> b!2117614 (= e!1348025 (inv!31180 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))

(declare-fun b!2117615 () Bool)

(declare-fun e!1348026 () Bool)

(assert (=> b!2117615 (= e!1348025 e!1348026)))

(declare-fun res!918340 () Bool)

(assert (=> b!2117615 (= res!918340 (not ((_ is Leaf!11374) (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))))))

(assert (=> b!2117615 (=> res!918340 e!1348026)))

(declare-fun b!2117616 () Bool)

(assert (=> b!2117616 (= e!1348026 (inv!31181 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))

(assert (= (and d!642826 c!339451) b!2117614))

(assert (= (and d!642826 (not c!339451)) b!2117615))

(assert (= (and b!2117615 (not res!918340)) b!2117616))

(declare-fun m!2572370 () Bool)

(assert (=> b!2117614 m!2572370))

(declare-fun m!2572372 () Bool)

(assert (=> b!2117616 m!2572372))

(assert (=> b!2117531 d!642826))

(declare-fun b!2117620 () Bool)

(declare-fun e!1348028 () List!23682)

(assert (=> b!2117620 (= e!1348028 (++!6313 (list!9508 (left!18281 (c!339387 (_1!13446 (_1!13450 lt!793892))))) (list!9508 (right!18611 (c!339387 (_1!13446 (_1!13450 lt!793892)))))))))

(declare-fun b!2117619 () Bool)

(assert (=> b!2117619 (= e!1348028 (list!9509 (xs!10726 (c!339387 (_1!13446 (_1!13450 lt!793892))))))))

(declare-fun b!2117618 () Bool)

(declare-fun e!1348027 () List!23682)

(assert (=> b!2117618 (= e!1348027 e!1348028)))

(declare-fun c!339453 () Bool)

(assert (=> b!2117618 (= c!339453 ((_ is Leaf!11374) (c!339387 (_1!13446 (_1!13450 lt!793892)))))))

(declare-fun b!2117617 () Bool)

(assert (=> b!2117617 (= e!1348027 Nil!23598)))

(declare-fun d!642828 () Bool)

(declare-fun c!339452 () Bool)

(assert (=> d!642828 (= c!339452 ((_ is Empty!7784) (c!339387 (_1!13446 (_1!13450 lt!793892)))))))

(assert (=> d!642828 (= (list!9508 (c!339387 (_1!13446 (_1!13450 lt!793892)))) e!1348027)))

(assert (= (and d!642828 c!339452) b!2117617))

(assert (= (and d!642828 (not c!339452)) b!2117618))

(assert (= (and b!2117618 c!339453) b!2117619))

(assert (= (and b!2117618 (not c!339453)) b!2117620))

(declare-fun m!2572374 () Bool)

(assert (=> b!2117620 m!2572374))

(declare-fun m!2572376 () Bool)

(assert (=> b!2117620 m!2572376))

(assert (=> b!2117620 m!2572374))

(assert (=> b!2117620 m!2572376))

(declare-fun m!2572378 () Bool)

(assert (=> b!2117620 m!2572378))

(declare-fun m!2572380 () Bool)

(assert (=> b!2117619 m!2572380))

(assert (=> d!642688 d!642828))

(declare-fun d!642830 () Bool)

(declare-fun c!339454 () Bool)

(assert (=> d!642830 (= c!339454 ((_ is Node!7784) (left!18281 (c!339387 totalInput!1306))))))

(declare-fun e!1348029 () Bool)

(assert (=> d!642830 (= (inv!31175 (left!18281 (c!339387 totalInput!1306))) e!1348029)))

(declare-fun b!2117621 () Bool)

(assert (=> b!2117621 (= e!1348029 (inv!31180 (left!18281 (c!339387 totalInput!1306))))))

(declare-fun b!2117622 () Bool)

(declare-fun e!1348030 () Bool)

(assert (=> b!2117622 (= e!1348029 e!1348030)))

(declare-fun res!918341 () Bool)

(assert (=> b!2117622 (= res!918341 (not ((_ is Leaf!11374) (left!18281 (c!339387 totalInput!1306)))))))

(assert (=> b!2117622 (=> res!918341 e!1348030)))

(declare-fun b!2117623 () Bool)

(assert (=> b!2117623 (= e!1348030 (inv!31181 (left!18281 (c!339387 totalInput!1306))))))

(assert (= (and d!642830 c!339454) b!2117621))

(assert (= (and d!642830 (not c!339454)) b!2117622))

(assert (= (and b!2117622 (not res!918341)) b!2117623))

(declare-fun m!2572382 () Bool)

(assert (=> b!2117621 m!2572382))

(declare-fun m!2572384 () Bool)

(assert (=> b!2117623 m!2572384))

(assert (=> b!2117410 d!642830))

(declare-fun d!642832 () Bool)

(declare-fun c!339455 () Bool)

(assert (=> d!642832 (= c!339455 ((_ is Node!7784) (right!18611 (c!339387 totalInput!1306))))))

(declare-fun e!1348031 () Bool)

(assert (=> d!642832 (= (inv!31175 (right!18611 (c!339387 totalInput!1306))) e!1348031)))

(declare-fun b!2117624 () Bool)

(assert (=> b!2117624 (= e!1348031 (inv!31180 (right!18611 (c!339387 totalInput!1306))))))

(declare-fun b!2117625 () Bool)

(declare-fun e!1348032 () Bool)

(assert (=> b!2117625 (= e!1348031 e!1348032)))

(declare-fun res!918342 () Bool)

(assert (=> b!2117625 (= res!918342 (not ((_ is Leaf!11374) (right!18611 (c!339387 totalInput!1306)))))))

(assert (=> b!2117625 (=> res!918342 e!1348032)))

(declare-fun b!2117626 () Bool)

(assert (=> b!2117626 (= e!1348032 (inv!31181 (right!18611 (c!339387 totalInput!1306))))))

(assert (= (and d!642832 c!339455) b!2117624))

(assert (= (and d!642832 (not c!339455)) b!2117625))

(assert (= (and b!2117625 (not res!918342)) b!2117626))

(declare-fun m!2572386 () Bool)

(assert (=> b!2117624 m!2572386))

(declare-fun m!2572388 () Bool)

(assert (=> b!2117626 m!2572388))

(assert (=> b!2117410 d!642832))

(declare-fun b!2117630 () Bool)

(declare-fun e!1348034 () List!23682)

(assert (=> b!2117630 (= e!1348034 (++!6313 (list!9508 (left!18281 (c!339387 (_2!13446 lt!793900)))) (list!9508 (right!18611 (c!339387 (_2!13446 lt!793900))))))))

(declare-fun b!2117629 () Bool)

(assert (=> b!2117629 (= e!1348034 (list!9509 (xs!10726 (c!339387 (_2!13446 lt!793900)))))))

(declare-fun b!2117628 () Bool)

(declare-fun e!1348033 () List!23682)

(assert (=> b!2117628 (= e!1348033 e!1348034)))

(declare-fun c!339457 () Bool)

(assert (=> b!2117628 (= c!339457 ((_ is Leaf!11374) (c!339387 (_2!13446 lt!793900))))))

(declare-fun b!2117627 () Bool)

(assert (=> b!2117627 (= e!1348033 Nil!23598)))

(declare-fun d!642834 () Bool)

(declare-fun c!339456 () Bool)

(assert (=> d!642834 (= c!339456 ((_ is Empty!7784) (c!339387 (_2!13446 lt!793900))))))

(assert (=> d!642834 (= (list!9508 (c!339387 (_2!13446 lt!793900))) e!1348033)))

(assert (= (and d!642834 c!339456) b!2117627))

(assert (= (and d!642834 (not c!339456)) b!2117628))

(assert (= (and b!2117628 c!339457) b!2117629))

(assert (= (and b!2117628 (not c!339457)) b!2117630))

(declare-fun m!2572390 () Bool)

(assert (=> b!2117630 m!2572390))

(declare-fun m!2572392 () Bool)

(assert (=> b!2117630 m!2572392))

(assert (=> b!2117630 m!2572390))

(assert (=> b!2117630 m!2572392))

(declare-fun m!2572394 () Bool)

(assert (=> b!2117630 m!2572394))

(declare-fun m!2572396 () Bool)

(assert (=> b!2117629 m!2572396))

(assert (=> d!642746 d!642834))

(declare-fun bs!441328 () Bool)

(declare-fun d!642836 () Bool)

(assert (= bs!441328 (and d!642836 d!642776)))

(declare-fun lambda!78334 () Int)

(assert (=> bs!441328 (= lambda!78334 lambda!78326)))

(declare-fun bs!441329 () Bool)

(assert (= bs!441329 (and d!642836 d!642800)))

(assert (=> bs!441329 (= lambda!78334 lambda!78331)))

(declare-fun bs!441330 () Bool)

(assert (= bs!441330 (and d!642836 d!642814)))

(assert (=> bs!441330 (= lambda!78334 lambda!78333)))

(declare-fun bs!441331 () Bool)

(assert (= bs!441331 (and d!642836 d!642786)))

(assert (=> bs!441331 (= lambda!78334 lambda!78327)))

(declare-fun bs!441332 () Bool)

(assert (= bs!441332 (and d!642836 d!642806)))

(assert (=> bs!441332 (= lambda!78334 lambda!78332)))

(assert (=> d!642836 (= (inv!31182 (_2!13440 (_1!13441 (h!28998 mapValue!11570)))) (forall!4846 (exprs!1715 (_2!13440 (_1!13441 (h!28998 mapValue!11570)))) lambda!78334))))

(declare-fun bs!441333 () Bool)

(assert (= bs!441333 d!642836))

(declare-fun m!2572398 () Bool)

(assert (=> bs!441333 m!2572398))

(assert (=> b!2117477 d!642836))

(declare-fun d!642838 () Bool)

(declare-fun e!1348035 () Bool)

(assert (=> d!642838 e!1348035))

(declare-fun res!918343 () Bool)

(assert (=> d!642838 (=> (not res!918343) (not e!1348035))))

(declare-fun lt!794094 () tuple2!23138)

(assert (=> d!642838 (= res!918343 (isBalanced!2443 (c!339387 (_1!13446 lt!794094))))))

(declare-fun lt!794093 () tuple2!23146)

(assert (=> d!642838 (= lt!794094 (tuple2!23139 (BalanceConc!15331 (_1!13453 lt!794093)) (BalanceConc!15331 (_2!13453 lt!794093))))))

(assert (=> d!642838 (= lt!794093 (splitAt!16 (c!339387 input!6660) (ite c!339395 0 lt!793933)))))

(assert (=> d!642838 (isBalanced!2443 (c!339387 input!6660))))

(assert (=> d!642838 (= (splitAt!15 input!6660 (ite c!339395 0 lt!793933)) lt!794094)))

(declare-fun b!2117631 () Bool)

(declare-fun res!918344 () Bool)

(assert (=> b!2117631 (=> (not res!918344) (not e!1348035))))

(assert (=> b!2117631 (= res!918344 (isBalanced!2443 (c!339387 (_2!13446 lt!794094))))))

(declare-fun b!2117632 () Bool)

(assert (=> b!2117632 (= e!1348035 (= (tuple2!23143 (list!9507 (_1!13446 lt!794094)) (list!9507 (_2!13446 lt!794094))) (splitAtIndex!21 (list!9507 input!6660) (ite c!339395 0 lt!793933))))))

(assert (= (and d!642838 res!918343) b!2117631))

(assert (= (and b!2117631 res!918344) b!2117632))

(declare-fun m!2572400 () Bool)

(assert (=> d!642838 m!2572400))

(declare-fun m!2572402 () Bool)

(assert (=> d!642838 m!2572402))

(assert (=> d!642838 m!2572129))

(declare-fun m!2572404 () Bool)

(assert (=> b!2117631 m!2572404))

(declare-fun m!2572406 () Bool)

(assert (=> b!2117632 m!2572406))

(declare-fun m!2572408 () Bool)

(assert (=> b!2117632 m!2572408))

(assert (=> b!2117632 m!2571907))

(assert (=> b!2117632 m!2571907))

(declare-fun m!2572410 () Bool)

(assert (=> b!2117632 m!2572410))

(assert (=> bm!128576 d!642838))

(declare-fun b!2117645 () Bool)

(declare-fun res!918362 () Bool)

(declare-fun e!1348040 () Bool)

(assert (=> b!2117645 (=> (not res!918362) (not e!1348040))))

(declare-fun isEmpty!14305 (Conc!7784) Bool)

(assert (=> b!2117645 (= res!918362 (not (isEmpty!14305 (left!18281 (c!339387 (_1!13446 lt!794057))))))))

(declare-fun b!2117646 () Bool)

(assert (=> b!2117646 (= e!1348040 (not (isEmpty!14305 (right!18611 (c!339387 (_1!13446 lt!794057))))))))

(declare-fun d!642840 () Bool)

(declare-fun res!918359 () Bool)

(declare-fun e!1348041 () Bool)

(assert (=> d!642840 (=> res!918359 e!1348041)))

(assert (=> d!642840 (= res!918359 (not ((_ is Node!7784) (c!339387 (_1!13446 lt!794057)))))))

(assert (=> d!642840 (= (isBalanced!2443 (c!339387 (_1!13446 lt!794057))) e!1348041)))

(declare-fun b!2117647 () Bool)

(declare-fun res!918361 () Bool)

(assert (=> b!2117647 (=> (not res!918361) (not e!1348040))))

(assert (=> b!2117647 (= res!918361 (<= (- (height!1230 (left!18281 (c!339387 (_1!13446 lt!794057)))) (height!1230 (right!18611 (c!339387 (_1!13446 lt!794057))))) 1))))

(declare-fun b!2117648 () Bool)

(declare-fun res!918360 () Bool)

(assert (=> b!2117648 (=> (not res!918360) (not e!1348040))))

(assert (=> b!2117648 (= res!918360 (isBalanced!2443 (left!18281 (c!339387 (_1!13446 lt!794057)))))))

(declare-fun b!2117649 () Bool)

(assert (=> b!2117649 (= e!1348041 e!1348040)))

(declare-fun res!918357 () Bool)

(assert (=> b!2117649 (=> (not res!918357) (not e!1348040))))

(assert (=> b!2117649 (= res!918357 (<= (- 1) (- (height!1230 (left!18281 (c!339387 (_1!13446 lt!794057)))) (height!1230 (right!18611 (c!339387 (_1!13446 lt!794057)))))))))

(declare-fun b!2117650 () Bool)

(declare-fun res!918358 () Bool)

(assert (=> b!2117650 (=> (not res!918358) (not e!1348040))))

(assert (=> b!2117650 (= res!918358 (isBalanced!2443 (right!18611 (c!339387 (_1!13446 lt!794057)))))))

(assert (= (and d!642840 (not res!918359)) b!2117649))

(assert (= (and b!2117649 res!918357) b!2117647))

(assert (= (and b!2117647 res!918361) b!2117648))

(assert (= (and b!2117648 res!918360) b!2117650))

(assert (= (and b!2117650 res!918358) b!2117645))

(assert (= (and b!2117645 res!918362) b!2117646))

(declare-fun m!2572412 () Bool)

(assert (=> b!2117650 m!2572412))

(declare-fun m!2572414 () Bool)

(assert (=> b!2117649 m!2572414))

(declare-fun m!2572416 () Bool)

(assert (=> b!2117649 m!2572416))

(declare-fun m!2572418 () Bool)

(assert (=> b!2117648 m!2572418))

(assert (=> b!2117647 m!2572414))

(assert (=> b!2117647 m!2572416))

(declare-fun m!2572420 () Bool)

(assert (=> b!2117646 m!2572420))

(declare-fun m!2572422 () Bool)

(assert (=> b!2117645 m!2572422))

(assert (=> d!642740 d!642840))

(declare-fun b!2117699 () Bool)

(declare-fun e!1348067 () tuple2!23146)

(assert (=> b!2117699 (= e!1348067 (tuple2!23147 (c!339387 input!6660) (c!339387 input!6660)))))

(declare-fun call!128620 () Int)

(declare-fun e!1348072 () Int)

(declare-fun b!2117700 () Bool)

(assert (=> b!2117700 (= e!1348072 (- (ite c!339385 0 lt!793904) call!128620))))

(declare-fun call!128618 () Conc!7784)

(declare-fun c!339481 () Bool)

(declare-fun lt!794122 () tuple2!23146)

(declare-fun lt!794123 () tuple2!23146)

(declare-fun bm!128611 () Bool)

(declare-fun ++!6314 (Conc!7784 Conc!7784) Conc!7784)

(assert (=> bm!128611 (= call!128618 (++!6314 (ite c!339481 (_2!13453 lt!794122) (left!18281 (c!339387 input!6660))) (ite c!339481 (right!18611 (c!339387 input!6660)) (_1!13453 lt!794123))))))

(declare-fun b!2117701 () Bool)

(declare-fun e!1348075 () tuple2!23146)

(assert (=> b!2117701 (= e!1348075 (tuple2!23147 (c!339387 input!6660) Empty!7784))))

(declare-fun b!2117702 () Bool)

(declare-fun e!1348071 () tuple2!23142)

(declare-fun lt!794131 () List!23682)

(declare-fun lt!794132 () List!23682)

(assert (=> b!2117702 (= e!1348071 (tuple2!23143 lt!794131 lt!794132))))

(declare-fun b!2117703 () Bool)

(declare-fun lt!794130 () Unit!37556)

(declare-fun lt!794128 () Unit!37556)

(assert (=> b!2117703 (= lt!794130 lt!794128)))

(declare-fun lt!794129 () List!23682)

(declare-fun slice!610 (List!23682 Int Int) List!23682)

(assert (=> b!2117703 (= (drop!1178 lt!794129 (ite c!339385 0 lt!793904)) (slice!610 lt!794129 (ite c!339385 0 lt!793904) call!128620))))

(declare-fun dropLemma!1 (List!23682 Int) Unit!37556)

(assert (=> b!2117703 (= lt!794128 (dropLemma!1 lt!794129 (ite c!339385 0 lt!793904)))))

(assert (=> b!2117703 (= lt!794129 (list!9509 (xs!10726 (c!339387 input!6660))))))

(declare-fun lt!794125 () tuple2!23142)

(declare-fun call!128621 () tuple2!23142)

(assert (=> b!2117703 (= lt!794125 call!128621)))

(declare-fun slice!611 (IArray!15573 Int Int) IArray!15573)

(assert (=> b!2117703 (= e!1348075 (tuple2!23147 (Leaf!11374 (slice!611 (xs!10726 (c!339387 input!6660)) 0 (ite c!339385 0 lt!793904)) (ite c!339385 0 lt!793904)) (Leaf!11374 (slice!611 (xs!10726 (c!339387 input!6660)) (ite c!339385 0 lt!793904) (csize!15799 (c!339387 input!6660))) (- (csize!15799 (c!339387 input!6660)) (ite c!339385 0 lt!793904)))))))

(declare-fun c!339485 () Bool)

(declare-fun b!2117704 () Bool)

(assert (=> b!2117704 (= c!339485 (= (size!18434 (left!18281 (c!339387 input!6660))) (ite c!339385 0 lt!793904)))))

(declare-fun lt!794124 () Unit!37556)

(declare-fun lt!794121 () Unit!37556)

(assert (=> b!2117704 (= lt!794124 lt!794121)))

(assert (=> b!2117704 (= (splitAtIndex!21 (++!6313 lt!794131 lt!794132) (ite c!339385 0 lt!793904)) e!1348071)))

(declare-fun c!339490 () Bool)

(assert (=> b!2117704 (= c!339490 (= call!128620 (ite c!339385 0 lt!793904)))))

(declare-fun splitAtLemma!1 (List!23682 List!23682 Int) Unit!37556)

(assert (=> b!2117704 (= lt!794121 (splitAtLemma!1 lt!794131 lt!794132 (ite c!339385 0 lt!793904)))))

(assert (=> b!2117704 (= lt!794132 (list!9508 (right!18611 (c!339387 input!6660))))))

(assert (=> b!2117704 (= lt!794131 (list!9508 (left!18281 (c!339387 input!6660))))))

(declare-fun e!1348066 () tuple2!23146)

(declare-fun e!1348073 () tuple2!23146)

(assert (=> b!2117704 (= e!1348066 e!1348073)))

(declare-fun b!2117705 () Bool)

(declare-fun e!1348074 () tuple2!23146)

(assert (=> b!2117705 (= e!1348074 (tuple2!23147 Empty!7784 (c!339387 input!6660)))))

(declare-fun bm!128612 () Bool)

(declare-fun c!339487 () Bool)

(assert (=> bm!128612 (= call!128620 (size!18433 (ite c!339487 lt!794129 lt!794131)))))

(declare-fun b!2117707 () Bool)

(assert (=> b!2117707 (= e!1348074 e!1348075)))

(declare-fun c!339486 () Bool)

(assert (=> b!2117707 (= c!339486 (= (ite c!339385 0 lt!793904) (csize!15799 (c!339387 input!6660))))))

(declare-fun bm!128613 () Bool)

(declare-fun c!339489 () Bool)

(assert (=> bm!128613 (= c!339489 c!339487)))

(declare-fun e!1348077 () List!23682)

(assert (=> bm!128613 (= call!128621 (splitAtIndex!21 e!1348077 (ite c!339487 (ite c!339385 0 lt!793904) e!1348072)))))

(declare-fun b!2117708 () Bool)

(declare-fun call!128616 () tuple2!23146)

(assert (=> b!2117708 (= lt!794123 call!128616)))

(declare-fun e!1348070 () tuple2!23146)

(assert (=> b!2117708 (= e!1348070 (tuple2!23147 call!128618 (_2!13453 lt!794123)))))

(declare-fun b!2117709 () Bool)

(assert (=> b!2117709 (= lt!794122 call!128616)))

(assert (=> b!2117709 (= e!1348070 (tuple2!23147 (_1!13453 lt!794122) call!128618))))

(declare-fun e!1348068 () Int)

(declare-fun b!2117710 () Bool)

(assert (=> b!2117710 (= e!1348068 (- (ite c!339385 0 lt!793904) (size!18434 (left!18281 (c!339387 input!6660)))))))

(declare-fun b!2117711 () Bool)

(declare-fun res!918367 () Bool)

(declare-fun e!1348076 () Bool)

(assert (=> b!2117711 (=> (not res!918367) (not e!1348076))))

(declare-fun lt!794126 () tuple2!23146)

(assert (=> b!2117711 (= res!918367 (isBalanced!2443 (_2!13453 lt!794126)))))

(declare-fun b!2117712 () Bool)

(assert (=> b!2117712 (= e!1348067 e!1348066)))

(assert (=> b!2117712 (= c!339487 ((_ is Leaf!11374) (c!339387 input!6660)))))

(declare-fun b!2117713 () Bool)

(declare-fun c!339482 () Bool)

(assert (=> b!2117713 (= c!339482 (<= (ite c!339385 0 lt!793904) 0))))

(assert (=> b!2117713 (= e!1348066 e!1348074)))

(declare-fun bm!128614 () Bool)

(declare-fun c!339483 () Bool)

(declare-fun c!339488 () Bool)

(assert (=> bm!128614 (= c!339483 c!339488)))

(declare-fun call!128617 () tuple2!23142)

(assert (=> bm!128614 (= call!128617 call!128621)))

(declare-fun b!2117714 () Bool)

(assert (=> b!2117714 (= e!1348076 (= (tuple2!23143 (list!9508 (_1!13453 lt!794126)) (list!9508 (_2!13453 lt!794126))) (splitAtIndex!21 (list!9508 (c!339387 input!6660)) (ite c!339385 0 lt!793904))))))

(declare-fun b!2117715 () Bool)

(assert (=> b!2117715 (= e!1348073 (tuple2!23147 (left!18281 (c!339387 input!6660)) (right!18611 (c!339387 input!6660))))))

(declare-fun b!2117716 () Bool)

(declare-fun e!1348069 () tuple2!23142)

(assert (=> b!2117716 (= e!1348071 e!1348069)))

(assert (=> b!2117716 (= c!339488 (< (ite c!339385 0 lt!793904) call!128620))))

(declare-fun b!2117717 () Bool)

(assert (=> b!2117717 (= e!1348072 (ite c!339385 0 lt!793904))))

(declare-fun b!2117718 () Bool)

(assert (=> b!2117718 (= e!1348073 e!1348070)))

(assert (=> b!2117718 (= c!339481 (< (ite c!339385 0 lt!793904) (size!18434 (left!18281 (c!339387 input!6660)))))))

(declare-fun call!128619 () List!23682)

(declare-fun lt!794133 () tuple2!23142)

(declare-fun lt!794127 () tuple2!23142)

(declare-fun bm!128615 () Bool)

(assert (=> bm!128615 (= call!128619 (++!6313 (ite c!339488 (_2!13449 lt!794133) lt!794131) (ite c!339488 lt!794132 (_1!13449 lt!794127))))))

(declare-fun b!2117719 () Bool)

(assert (=> b!2117719 (= e!1348077 (ite c!339488 lt!794131 lt!794132))))

(declare-fun b!2117720 () Bool)

(assert (=> b!2117720 (= e!1348068 (ite c!339385 0 lt!793904))))

(declare-fun b!2117721 () Bool)

(assert (=> b!2117721 (= e!1348077 (list!9509 (xs!10726 (c!339387 input!6660))))))

(declare-fun b!2117722 () Bool)

(assert (=> b!2117722 (= lt!794127 call!128617)))

(assert (=> b!2117722 (= e!1348069 (tuple2!23143 call!128619 (_2!13449 lt!794127)))))

(declare-fun bm!128616 () Bool)

(declare-fun c!339480 () Bool)

(assert (=> bm!128616 (= c!339480 c!339481)))

(assert (=> bm!128616 (= call!128616 (splitAt!16 (ite c!339481 (left!18281 (c!339387 input!6660)) (right!18611 (c!339387 input!6660))) e!1348068))))

(declare-fun b!2117706 () Bool)

(assert (=> b!2117706 (= lt!794133 call!128617)))

(assert (=> b!2117706 (= e!1348069 (tuple2!23143 (_1!13449 lt!794133) call!128619))))

(declare-fun d!642842 () Bool)

(assert (=> d!642842 e!1348076))

(declare-fun res!918368 () Bool)

(assert (=> d!642842 (=> (not res!918368) (not e!1348076))))

(assert (=> d!642842 (= res!918368 (isBalanced!2443 (_1!13453 lt!794126)))))

(assert (=> d!642842 (= lt!794126 e!1348067)))

(declare-fun c!339484 () Bool)

(assert (=> d!642842 (= c!339484 ((_ is Empty!7784) (c!339387 input!6660)))))

(assert (=> d!642842 (isBalanced!2443 (c!339387 input!6660))))

(assert (=> d!642842 (= (splitAt!16 (c!339387 input!6660) (ite c!339385 0 lt!793904)) lt!794126)))

(assert (= (and d!642842 c!339484) b!2117699))

(assert (= (and d!642842 (not c!339484)) b!2117712))

(assert (= (and b!2117712 c!339487) b!2117713))

(assert (= (and b!2117712 (not c!339487)) b!2117704))

(assert (= (and b!2117713 c!339482) b!2117705))

(assert (= (and b!2117713 (not c!339482)) b!2117707))

(assert (= (and b!2117707 c!339486) b!2117701))

(assert (= (and b!2117707 (not c!339486)) b!2117703))

(assert (= (and b!2117704 c!339490) b!2117702))

(assert (= (and b!2117704 (not c!339490)) b!2117716))

(assert (= (and b!2117716 c!339488) b!2117706))

(assert (= (and b!2117716 (not c!339488)) b!2117722))

(assert (= (or b!2117706 b!2117722) bm!128615))

(assert (= (or b!2117706 b!2117722) bm!128614))

(assert (= (and bm!128614 c!339483) b!2117717))

(assert (= (and bm!128614 (not c!339483)) b!2117700))

(assert (= (and b!2117704 c!339485) b!2117715))

(assert (= (and b!2117704 (not c!339485)) b!2117718))

(assert (= (and b!2117718 c!339481) b!2117709))

(assert (= (and b!2117718 (not c!339481)) b!2117708))

(assert (= (or b!2117709 b!2117708) bm!128611))

(assert (= (or b!2117709 b!2117708) bm!128616))

(assert (= (and bm!128616 c!339480) b!2117720))

(assert (= (and bm!128616 (not c!339480)) b!2117710))

(assert (= (or b!2117703 b!2117700 b!2117704 b!2117716) bm!128612))

(assert (= (or b!2117703 bm!128614) bm!128613))

(assert (= (and bm!128613 c!339489) b!2117721))

(assert (= (and bm!128613 (not c!339489)) b!2117719))

(assert (= (and d!642842 res!918368) b!2117711))

(assert (= (and b!2117711 res!918367) b!2117714))

(declare-fun m!2572424 () Bool)

(assert (=> bm!128616 m!2572424))

(declare-fun m!2572426 () Bool)

(assert (=> b!2117711 m!2572426))

(declare-fun m!2572428 () Bool)

(assert (=> bm!128615 m!2572428))

(declare-fun m!2572430 () Bool)

(assert (=> bm!128611 m!2572430))

(declare-fun m!2572432 () Bool)

(assert (=> d!642842 m!2572432))

(assert (=> d!642842 m!2572129))

(declare-fun m!2572434 () Bool)

(assert (=> b!2117704 m!2572434))

(declare-fun m!2572436 () Bool)

(assert (=> b!2117704 m!2572436))

(declare-fun m!2572438 () Bool)

(assert (=> b!2117704 m!2572438))

(declare-fun m!2572440 () Bool)

(assert (=> b!2117704 m!2572440))

(declare-fun m!2572442 () Bool)

(assert (=> b!2117704 m!2572442))

(assert (=> b!2117704 m!2572434))

(declare-fun m!2572444 () Bool)

(assert (=> b!2117704 m!2572444))

(declare-fun m!2572446 () Bool)

(assert (=> b!2117703 m!2572446))

(declare-fun m!2572448 () Bool)

(assert (=> b!2117703 m!2572448))

(declare-fun m!2572450 () Bool)

(assert (=> b!2117703 m!2572450))

(assert (=> b!2117703 m!2572350))

(declare-fun m!2572452 () Bool)

(assert (=> b!2117703 m!2572452))

(declare-fun m!2572454 () Bool)

(assert (=> b!2117703 m!2572454))

(assert (=> b!2117710 m!2572436))

(assert (=> b!2117721 m!2572350))

(declare-fun m!2572456 () Bool)

(assert (=> bm!128613 m!2572456))

(declare-fun m!2572458 () Bool)

(assert (=> b!2117714 m!2572458))

(declare-fun m!2572460 () Bool)

(assert (=> b!2117714 m!2572460))

(assert (=> b!2117714 m!2572173))

(assert (=> b!2117714 m!2572173))

(declare-fun m!2572462 () Bool)

(assert (=> b!2117714 m!2572462))

(assert (=> b!2117718 m!2572436))

(declare-fun m!2572464 () Bool)

(assert (=> bm!128612 m!2572464))

(assert (=> d!642740 d!642842))

(declare-fun b!2117723 () Bool)

(declare-fun res!918374 () Bool)

(declare-fun e!1348078 () Bool)

(assert (=> b!2117723 (=> (not res!918374) (not e!1348078))))

(assert (=> b!2117723 (= res!918374 (not (isEmpty!14305 (left!18281 (c!339387 input!6660)))))))

(declare-fun b!2117724 () Bool)

(assert (=> b!2117724 (= e!1348078 (not (isEmpty!14305 (right!18611 (c!339387 input!6660)))))))

(declare-fun d!642844 () Bool)

(declare-fun res!918371 () Bool)

(declare-fun e!1348079 () Bool)

(assert (=> d!642844 (=> res!918371 e!1348079)))

(assert (=> d!642844 (= res!918371 (not ((_ is Node!7784) (c!339387 input!6660))))))

(assert (=> d!642844 (= (isBalanced!2443 (c!339387 input!6660)) e!1348079)))

(declare-fun b!2117725 () Bool)

(declare-fun res!918373 () Bool)

(assert (=> b!2117725 (=> (not res!918373) (not e!1348078))))

(assert (=> b!2117725 (= res!918373 (<= (- (height!1230 (left!18281 (c!339387 input!6660))) (height!1230 (right!18611 (c!339387 input!6660)))) 1))))

(declare-fun b!2117726 () Bool)

(declare-fun res!918372 () Bool)

(assert (=> b!2117726 (=> (not res!918372) (not e!1348078))))

(assert (=> b!2117726 (= res!918372 (isBalanced!2443 (left!18281 (c!339387 input!6660))))))

(declare-fun b!2117727 () Bool)

(assert (=> b!2117727 (= e!1348079 e!1348078)))

(declare-fun res!918369 () Bool)

(assert (=> b!2117727 (=> (not res!918369) (not e!1348078))))

(assert (=> b!2117727 (= res!918369 (<= (- 1) (- (height!1230 (left!18281 (c!339387 input!6660))) (height!1230 (right!18611 (c!339387 input!6660))))))))

(declare-fun b!2117728 () Bool)

(declare-fun res!918370 () Bool)

(assert (=> b!2117728 (=> (not res!918370) (not e!1348078))))

(assert (=> b!2117728 (= res!918370 (isBalanced!2443 (right!18611 (c!339387 input!6660))))))

(assert (= (and d!642844 (not res!918371)) b!2117727))

(assert (= (and b!2117727 res!918369) b!2117725))

(assert (= (and b!2117725 res!918373) b!2117726))

(assert (= (and b!2117726 res!918372) b!2117728))

(assert (= (and b!2117728 res!918370) b!2117723))

(assert (= (and b!2117723 res!918374) b!2117724))

(declare-fun m!2572466 () Bool)

(assert (=> b!2117728 m!2572466))

(declare-fun m!2572468 () Bool)

(assert (=> b!2117727 m!2572468))

(declare-fun m!2572470 () Bool)

(assert (=> b!2117727 m!2572470))

(declare-fun m!2572472 () Bool)

(assert (=> b!2117726 m!2572472))

(assert (=> b!2117725 m!2572468))

(assert (=> b!2117725 m!2572470))

(declare-fun m!2572474 () Bool)

(assert (=> b!2117724 m!2572474))

(declare-fun m!2572476 () Bool)

(assert (=> b!2117723 m!2572476))

(assert (=> d!642740 d!642844))

(declare-fun b!2117732 () Bool)

(declare-fun e!1348081 () List!23682)

(assert (=> b!2117732 (= e!1348081 (++!6313 (list!9508 (left!18281 (c!339387 totalInput!1306))) (list!9508 (right!18611 (c!339387 totalInput!1306)))))))

(declare-fun b!2117731 () Bool)

(assert (=> b!2117731 (= e!1348081 (list!9509 (xs!10726 (c!339387 totalInput!1306))))))

(declare-fun b!2117730 () Bool)

(declare-fun e!1348080 () List!23682)

(assert (=> b!2117730 (= e!1348080 e!1348081)))

(declare-fun c!339492 () Bool)

(assert (=> b!2117730 (= c!339492 ((_ is Leaf!11374) (c!339387 totalInput!1306)))))

(declare-fun b!2117729 () Bool)

(assert (=> b!2117729 (= e!1348080 Nil!23598)))

(declare-fun d!642846 () Bool)

(declare-fun c!339491 () Bool)

(assert (=> d!642846 (= c!339491 ((_ is Empty!7784) (c!339387 totalInput!1306)))))

(assert (=> d!642846 (= (list!9508 (c!339387 totalInput!1306)) e!1348080)))

(assert (= (and d!642846 c!339491) b!2117729))

(assert (= (and d!642846 (not c!339491)) b!2117730))

(assert (= (and b!2117730 c!339492) b!2117731))

(assert (= (and b!2117730 (not c!339492)) b!2117732))

(declare-fun m!2572478 () Bool)

(assert (=> b!2117732 m!2572478))

(declare-fun m!2572480 () Bool)

(assert (=> b!2117732 m!2572480))

(assert (=> b!2117732 m!2572478))

(assert (=> b!2117732 m!2572480))

(declare-fun m!2572482 () Bool)

(assert (=> b!2117732 m!2572482))

(assert (=> b!2117731 m!2572326))

(assert (=> d!642764 d!642846))

(assert (=> b!2117027 d!642748))

(assert (=> d!642730 d!642844))

(assert (=> b!2117202 d!642718))

(declare-fun bs!441334 () Bool)

(declare-fun d!642848 () Bool)

(assert (= bs!441334 (and d!642848 d!642776)))

(declare-fun lambda!78335 () Int)

(assert (=> bs!441334 (= lambda!78335 lambda!78326)))

(declare-fun bs!441335 () Bool)

(assert (= bs!441335 (and d!642848 d!642800)))

(assert (=> bs!441335 (= lambda!78335 lambda!78331)))

(declare-fun bs!441336 () Bool)

(assert (= bs!441336 (and d!642848 d!642814)))

(assert (=> bs!441336 (= lambda!78335 lambda!78333)))

(declare-fun bs!441337 () Bool)

(assert (= bs!441337 (and d!642848 d!642836)))

(assert (=> bs!441337 (= lambda!78335 lambda!78334)))

(declare-fun bs!441338 () Bool)

(assert (= bs!441338 (and d!642848 d!642786)))

(assert (=> bs!441338 (= lambda!78335 lambda!78327)))

(declare-fun bs!441339 () Bool)

(assert (= bs!441339 (and d!642848 d!642806)))

(assert (=> bs!441339 (= lambda!78335 lambda!78332)))

(assert (=> d!642848 (= (inv!31182 setElem!14356) (forall!4846 (exprs!1715 setElem!14356) lambda!78335))))

(declare-fun bs!441340 () Bool)

(assert (= bs!441340 d!642848))

(declare-fun m!2572484 () Bool)

(assert (=> bs!441340 m!2572484))

(assert (=> setNonEmpty!14356 d!642848))

(assert (=> b!2117346 d!642796))

(assert (=> b!2117346 d!642694))

(declare-fun d!642850 () Bool)

(declare-fun res!918375 () Bool)

(declare-fun e!1348082 () Bool)

(assert (=> d!642850 (=> res!918375 e!1348082)))

(assert (=> d!642850 (= res!918375 ((_ is Nil!23600) (_2!13444 (_1!13445 lt!793984))))))

(assert (=> d!642850 (= (forall!4845 (_2!13444 (_1!13445 lt!793984)) lambda!78318) e!1348082)))

(declare-fun b!2117733 () Bool)

(declare-fun e!1348083 () Bool)

(assert (=> b!2117733 (= e!1348082 e!1348083)))

(declare-fun res!918376 () Bool)

(assert (=> b!2117733 (=> (not res!918376) (not e!1348083))))

(assert (=> b!2117733 (= res!918376 (dynLambda!11302 lambda!78318 (h!29001 (_2!13444 (_1!13445 lt!793984)))))))

(declare-fun b!2117734 () Bool)

(assert (=> b!2117734 (= e!1348083 (forall!4845 (t!196193 (_2!13444 (_1!13445 lt!793984))) lambda!78318))))

(assert (= (and d!642850 (not res!918375)) b!2117733))

(assert (= (and b!2117733 res!918376) b!2117734))

(declare-fun b_lambda!70403 () Bool)

(assert (=> (not b_lambda!70403) (not b!2117733)))

(declare-fun m!2572486 () Bool)

(assert (=> b!2117733 m!2572486))

(declare-fun m!2572488 () Bool)

(assert (=> b!2117734 m!2572488))

(assert (=> b!2117207 d!642850))

(assert (=> d!642696 d!642676))

(declare-fun b!2117744 () Bool)

(declare-fun e!1348088 () List!23682)

(assert (=> b!2117744 (= e!1348088 (Cons!23598 (h!28999 (list!9507 (_1!13446 lt!794007))) (++!6313 (t!196191 (list!9507 (_1!13446 lt!794007))) (list!9507 (_2!13446 lt!794007)))))))

(declare-fun d!642852 () Bool)

(declare-fun e!1348089 () Bool)

(assert (=> d!642852 e!1348089))

(declare-fun res!918382 () Bool)

(assert (=> d!642852 (=> (not res!918382) (not e!1348089))))

(declare-fun lt!794136 () List!23682)

(declare-fun content!3387 (List!23682) (InoxSet C!11436))

(assert (=> d!642852 (= res!918382 (= (content!3387 lt!794136) ((_ map or) (content!3387 (list!9507 (_1!13446 lt!794007))) (content!3387 (list!9507 (_2!13446 lt!794007))))))))

(assert (=> d!642852 (= lt!794136 e!1348088)))

(declare-fun c!339495 () Bool)

(assert (=> d!642852 (= c!339495 ((_ is Nil!23598) (list!9507 (_1!13446 lt!794007))))))

(assert (=> d!642852 (= (++!6313 (list!9507 (_1!13446 lt!794007)) (list!9507 (_2!13446 lt!794007))) lt!794136)))

(declare-fun b!2117746 () Bool)

(assert (=> b!2117746 (= e!1348089 (or (not (= (list!9507 (_2!13446 lt!794007)) Nil!23598)) (= lt!794136 (list!9507 (_1!13446 lt!794007)))))))

(declare-fun b!2117745 () Bool)

(declare-fun res!918381 () Bool)

(assert (=> b!2117745 (=> (not res!918381) (not e!1348089))))

(assert (=> b!2117745 (= res!918381 (= (size!18433 lt!794136) (+ (size!18433 (list!9507 (_1!13446 lt!794007))) (size!18433 (list!9507 (_2!13446 lt!794007))))))))

(declare-fun b!2117743 () Bool)

(assert (=> b!2117743 (= e!1348088 (list!9507 (_2!13446 lt!794007)))))

(assert (= (and d!642852 c!339495) b!2117743))

(assert (= (and d!642852 (not c!339495)) b!2117744))

(assert (= (and d!642852 res!918382) b!2117745))

(assert (= (and b!2117745 res!918381) b!2117746))

(assert (=> b!2117744 m!2572057))

(declare-fun m!2572490 () Bool)

(assert (=> b!2117744 m!2572490))

(declare-fun m!2572492 () Bool)

(assert (=> d!642852 m!2572492))

(assert (=> d!642852 m!2572059))

(declare-fun m!2572494 () Bool)

(assert (=> d!642852 m!2572494))

(assert (=> d!642852 m!2572057))

(declare-fun m!2572496 () Bool)

(assert (=> d!642852 m!2572496))

(declare-fun m!2572498 () Bool)

(assert (=> b!2117745 m!2572498))

(assert (=> b!2117745 m!2572059))

(declare-fun m!2572500 () Bool)

(assert (=> b!2117745 m!2572500))

(assert (=> b!2117745 m!2572057))

(declare-fun m!2572502 () Bool)

(assert (=> b!2117745 m!2572502))

(assert (=> d!642696 d!642852))

(assert (=> d!642696 d!642766))

(declare-fun d!642854 () Bool)

(declare-fun e!1348090 () Bool)

(assert (=> d!642854 e!1348090))

(declare-fun res!918383 () Bool)

(assert (=> d!642854 (=> (not res!918383) (not e!1348090))))

(declare-fun lt!794138 () tuple2!23138)

(assert (=> d!642854 (= res!918383 (isBalanced!2443 (c!339387 (_1!13446 lt!794138))))))

(declare-fun lt!794137 () tuple2!23146)

(assert (=> d!642854 (= lt!794138 (tuple2!23139 (BalanceConc!15331 (_1!13453 lt!794137)) (BalanceConc!15331 (_2!13453 lt!794137))))))

(assert (=> d!642854 (= lt!794137 (splitAt!16 (c!339387 input!6660) (findLongestMatchInnerZipperFastV2!6 lt!793898 (- lt!794008 (size!18432 input!6660)) totalInput!1306 lt!794008)))))

(assert (=> d!642854 (isBalanced!2443 (c!339387 input!6660))))

(assert (=> d!642854 (= (splitAt!15 input!6660 (findLongestMatchInnerZipperFastV2!6 lt!793898 (- lt!794008 (size!18432 input!6660)) totalInput!1306 lt!794008)) lt!794138)))

(declare-fun b!2117747 () Bool)

(declare-fun res!918384 () Bool)

(assert (=> b!2117747 (=> (not res!918384) (not e!1348090))))

(assert (=> b!2117747 (= res!918384 (isBalanced!2443 (c!339387 (_2!13446 lt!794138))))))

(declare-fun b!2117748 () Bool)

(assert (=> b!2117748 (= e!1348090 (= (tuple2!23143 (list!9507 (_1!13446 lt!794138)) (list!9507 (_2!13446 lt!794138))) (splitAtIndex!21 (list!9507 input!6660) (findLongestMatchInnerZipperFastV2!6 lt!793898 (- lt!794008 (size!18432 input!6660)) totalInput!1306 lt!794008))))))

(assert (= (and d!642854 res!918383) b!2117747))

(assert (= (and b!2117747 res!918384) b!2117748))

(declare-fun m!2572504 () Bool)

(assert (=> d!642854 m!2572504))

(assert (=> d!642854 m!2572063))

(declare-fun m!2572506 () Bool)

(assert (=> d!642854 m!2572506))

(assert (=> d!642854 m!2572129))

(declare-fun m!2572508 () Bool)

(assert (=> b!2117747 m!2572508))

(declare-fun m!2572510 () Bool)

(assert (=> b!2117748 m!2572510))

(declare-fun m!2572512 () Bool)

(assert (=> b!2117748 m!2572512))

(assert (=> b!2117748 m!2571907))

(assert (=> b!2117748 m!2571907))

(assert (=> b!2117748 m!2572063))

(declare-fun m!2572514 () Bool)

(assert (=> b!2117748 m!2572514))

(assert (=> d!642696 d!642854))

(assert (=> d!642696 d!642764))

(declare-fun b!2117765 () Bool)

(declare-fun e!1348101 () Bool)

(assert (=> b!2117765 (= e!1348101 (lostCauseZipper!52 lt!793898))))

(declare-fun b!2117766 () Bool)

(declare-fun e!1348105 () Int)

(declare-fun e!1348102 () Int)

(assert (=> b!2117766 (= e!1348105 e!1348102)))

(declare-fun lt!794147 () (InoxSet Context!2430))

(declare-fun derivationStepZipper!84 ((InoxSet Context!2430) C!11436) (InoxSet Context!2430))

(assert (=> b!2117766 (= lt!794147 (derivationStepZipper!84 lt!793898 (apply!5904 totalInput!1306 (- lt!794008 (size!18432 input!6660)))))))

(declare-fun lt!794146 () Int)

(assert (=> b!2117766 (= lt!794146 (findLongestMatchInnerZipperFastV2!6 lt!794147 (+ (- lt!794008 (size!18432 input!6660)) 1) totalInput!1306 lt!794008))))

(declare-fun c!339502 () Bool)

(assert (=> b!2117766 (= c!339502 (> lt!794146 0))))

(declare-fun d!642856 () Bool)

(declare-fun lt!794145 () Int)

(assert (=> d!642856 (and (>= lt!794145 0) (<= lt!794145 (- lt!794008 (- lt!794008 (size!18432 input!6660)))))))

(assert (=> d!642856 (= lt!794145 e!1348105)))

(declare-fun c!339503 () Bool)

(assert (=> d!642856 (= c!339503 e!1348101)))

(declare-fun res!918389 () Bool)

(assert (=> d!642856 (=> res!918389 e!1348101)))

(assert (=> d!642856 (= res!918389 (= (- lt!794008 (size!18432 input!6660)) lt!794008))))

(declare-fun e!1348103 () Bool)

(assert (=> d!642856 e!1348103))

(declare-fun res!918390 () Bool)

(assert (=> d!642856 (=> (not res!918390) (not e!1348103))))

(assert (=> d!642856 (= res!918390 (>= (- lt!794008 (size!18432 input!6660)) 0))))

(assert (=> d!642856 (= (findLongestMatchInnerZipperFastV2!6 lt!793898 (- lt!794008 (size!18432 input!6660)) totalInput!1306 lt!794008) lt!794145)))

(declare-fun b!2117767 () Bool)

(assert (=> b!2117767 (= e!1348105 0)))

(declare-fun b!2117768 () Bool)

(assert (=> b!2117768 (= e!1348103 (<= (- lt!794008 (size!18432 input!6660)) (size!18432 totalInput!1306)))))

(declare-fun b!2117769 () Bool)

(declare-fun e!1348104 () Int)

(assert (=> b!2117769 (= e!1348104 0)))

(declare-fun b!2117770 () Bool)

(assert (=> b!2117770 (= e!1348102 (+ 1 lt!794146))))

(declare-fun b!2117771 () Bool)

(assert (=> b!2117771 (= e!1348104 1)))

(declare-fun b!2117772 () Bool)

(declare-fun c!339504 () Bool)

(assert (=> b!2117772 (= c!339504 (nullableZipper!52 lt!794147))))

(assert (=> b!2117772 (= e!1348102 e!1348104)))

(assert (= (and d!642856 res!918390) b!2117768))

(assert (= (and d!642856 (not res!918389)) b!2117765))

(assert (= (and d!642856 c!339503) b!2117767))

(assert (= (and d!642856 (not c!339503)) b!2117766))

(assert (= (and b!2117766 c!339502) b!2117770))

(assert (= (and b!2117766 (not c!339502)) b!2117772))

(assert (= (and b!2117772 c!339504) b!2117771))

(assert (= (and b!2117772 (not c!339504)) b!2117769))

(assert (=> b!2117765 m!2571987))

(declare-fun m!2572516 () Bool)

(assert (=> b!2117766 m!2572516))

(assert (=> b!2117766 m!2572516))

(declare-fun m!2572518 () Bool)

(assert (=> b!2117766 m!2572518))

(declare-fun m!2572520 () Bool)

(assert (=> b!2117766 m!2572520))

(assert (=> b!2117768 m!2571837))

(declare-fun m!2572522 () Bool)

(assert (=> b!2117772 m!2572522))

(assert (=> d!642696 d!642856))

(declare-fun d!642858 () Bool)

(declare-fun e!1348106 () Bool)

(assert (=> d!642858 e!1348106))

(declare-fun res!918391 () Bool)

(assert (=> d!642858 (=> res!918391 e!1348106)))

(declare-fun lt!794148 () Bool)

(assert (=> d!642858 (= res!918391 (not lt!794148))))

(assert (=> d!642858 (= lt!794148 (= (list!9507 input!6660) (drop!1178 (list!9507 totalInput!1306) (- (size!18433 (list!9507 totalInput!1306)) (size!18433 (list!9507 input!6660))))))))

(assert (=> d!642858 (= (isSuffix!605 (list!9507 input!6660) (list!9507 totalInput!1306)) lt!794148)))

(declare-fun b!2117773 () Bool)

(assert (=> b!2117773 (= e!1348106 (>= (size!18433 (list!9507 totalInput!1306)) (size!18433 (list!9507 input!6660))))))

(assert (= (and d!642858 (not res!918391)) b!2117773))

(assert (=> d!642858 m!2571903))

(assert (=> d!642858 m!2571967))

(assert (=> d!642858 m!2571907))

(assert (=> d!642858 m!2572071))

(assert (=> d!642858 m!2571903))

(declare-fun m!2572524 () Bool)

(assert (=> d!642858 m!2572524))

(assert (=> b!2117773 m!2571903))

(assert (=> b!2117773 m!2571967))

(assert (=> b!2117773 m!2571907))

(assert (=> b!2117773 m!2572071))

(assert (=> d!642696 d!642858))

(declare-fun d!642860 () Bool)

(assert (=> d!642860 (= (list!9507 (_1!13446 lt!794007)) (list!9508 (c!339387 (_1!13446 lt!794007))))))

(declare-fun bs!441341 () Bool)

(assert (= bs!441341 d!642860))

(declare-fun m!2572526 () Bool)

(assert (=> bs!441341 m!2572526))

(assert (=> d!642696 d!642860))

(assert (=> d!642696 d!642700))

(declare-fun d!642862 () Bool)

(assert (=> d!642862 (= (list!9507 (_2!13446 lt!794007)) (list!9508 (c!339387 (_2!13446 lt!794007))))))

(declare-fun bs!441342 () Bool)

(assert (= bs!441342 d!642862))

(declare-fun m!2572528 () Bool)

(assert (=> bs!441342 m!2572528))

(assert (=> d!642696 d!642862))

(declare-fun bs!441343 () Bool)

(declare-fun b!2117775 () Bool)

(assert (= bs!441343 (and b!2117775 b!2117563)))

(declare-fun lambda!78336 () Int)

(assert (=> bs!441343 (= lambda!78336 lambda!78330)))

(declare-fun d!642864 () Bool)

(declare-fun res!918392 () Bool)

(declare-fun e!1348107 () Bool)

(assert (=> d!642864 (=> (not res!918392) (not e!1348107))))

(assert (=> d!642864 (= res!918392 (valid!1888 (cache!2691 cacheUp!1110)))))

(assert (=> d!642864 (= (validCacheMapUp!239 (cache!2691 cacheUp!1110)) e!1348107)))

(declare-fun b!2117774 () Bool)

(declare-fun res!918393 () Bool)

(assert (=> b!2117774 (=> (not res!918393) (not e!1348107))))

(assert (=> b!2117774 (= res!918393 (invariantList!295 (toList!1057 (map!4817 (cache!2691 cacheUp!1110)))))))

(assert (=> b!2117775 (= e!1348107 (forall!4847 (toList!1057 (map!4817 (cache!2691 cacheUp!1110))) lambda!78336))))

(assert (= (and d!642864 res!918392) b!2117774))

(assert (= (and b!2117774 res!918393) b!2117775))

(declare-fun m!2572530 () Bool)

(assert (=> d!642864 m!2572530))

(declare-fun m!2572532 () Bool)

(assert (=> b!2117774 m!2572532))

(declare-fun m!2572534 () Bool)

(assert (=> b!2117774 m!2572534))

(assert (=> b!2117775 m!2572532))

(declare-fun m!2572536 () Bool)

(assert (=> b!2117775 m!2572536))

(assert (=> b!2117284 d!642864))

(declare-fun bs!441344 () Bool)

(declare-fun d!642866 () Bool)

(assert (= bs!441344 (and d!642866 d!642848)))

(declare-fun lambda!78337 () Int)

(assert (=> bs!441344 (= lambda!78337 lambda!78335)))

(declare-fun bs!441345 () Bool)

(assert (= bs!441345 (and d!642866 d!642776)))

(assert (=> bs!441345 (= lambda!78337 lambda!78326)))

(declare-fun bs!441346 () Bool)

(assert (= bs!441346 (and d!642866 d!642800)))

(assert (=> bs!441346 (= lambda!78337 lambda!78331)))

(declare-fun bs!441347 () Bool)

(assert (= bs!441347 (and d!642866 d!642814)))

(assert (=> bs!441347 (= lambda!78337 lambda!78333)))

(declare-fun bs!441348 () Bool)

(assert (= bs!441348 (and d!642866 d!642836)))

(assert (=> bs!441348 (= lambda!78337 lambda!78334)))

(declare-fun bs!441349 () Bool)

(assert (= bs!441349 (and d!642866 d!642786)))

(assert (=> bs!441349 (= lambda!78337 lambda!78327)))

(declare-fun bs!441350 () Bool)

(assert (= bs!441350 (and d!642866 d!642806)))

(assert (=> bs!441350 (= lambda!78337 lambda!78332)))

(assert (=> d!642866 (= (inv!31182 setElem!14384) (forall!4846 (exprs!1715 setElem!14384) lambda!78337))))

(declare-fun bs!441351 () Bool)

(assert (= bs!441351 d!642866))

(declare-fun m!2572538 () Bool)

(assert (=> bs!441351 m!2572538))

(assert (=> setNonEmpty!14385 d!642866))

(declare-fun b!2117776 () Bool)

(declare-fun res!918398 () Bool)

(declare-fun e!1348112 () Bool)

(assert (=> b!2117776 (=> (not res!918398) (not e!1348112))))

(declare-fun call!128624 () Bool)

(assert (=> b!2117776 (= res!918398 call!128624)))

(declare-fun e!1348108 () Bool)

(assert (=> b!2117776 (= e!1348108 e!1348112)))

(declare-fun d!642868 () Bool)

(declare-fun res!918396 () Bool)

(declare-fun e!1348110 () Bool)

(assert (=> d!642868 (=> res!918396 e!1348110)))

(assert (=> d!642868 (= res!918396 ((_ is ElementMatch!5645) (ite c!339426 (regTwo!11803 r!15373) (regTwo!11802 r!15373))))))

(assert (=> d!642868 (= (validRegex!2229 (ite c!339426 (regTwo!11803 r!15373) (regTwo!11802 r!15373))) e!1348110)))

(declare-fun c!339505 () Bool)

(declare-fun call!128623 () Bool)

(declare-fun bm!128617 () Bool)

(assert (=> bm!128617 (= call!128623 (validRegex!2229 (ite c!339505 (regTwo!11803 (ite c!339426 (regTwo!11803 r!15373) (regTwo!11802 r!15373))) (regTwo!11802 (ite c!339426 (regTwo!11803 r!15373) (regTwo!11802 r!15373))))))))

(declare-fun b!2117777 () Bool)

(declare-fun e!1348111 () Bool)

(declare-fun e!1348109 () Bool)

(assert (=> b!2117777 (= e!1348111 e!1348109)))

(declare-fun res!918395 () Bool)

(assert (=> b!2117777 (= res!918395 (not (nullable!1682 (reg!5974 (ite c!339426 (regTwo!11803 r!15373) (regTwo!11802 r!15373))))))))

(assert (=> b!2117777 (=> (not res!918395) (not e!1348109))))

(declare-fun b!2117778 () Bool)

(assert (=> b!2117778 (= e!1348110 e!1348111)))

(declare-fun c!339506 () Bool)

(assert (=> b!2117778 (= c!339506 ((_ is Star!5645) (ite c!339426 (regTwo!11803 r!15373) (regTwo!11802 r!15373))))))

(declare-fun b!2117779 () Bool)

(assert (=> b!2117779 (= e!1348111 e!1348108)))

(assert (=> b!2117779 (= c!339505 ((_ is Union!5645) (ite c!339426 (regTwo!11803 r!15373) (regTwo!11802 r!15373))))))

(declare-fun b!2117780 () Bool)

(declare-fun e!1348113 () Bool)

(assert (=> b!2117780 (= e!1348113 call!128623)))

(declare-fun b!2117781 () Bool)

(declare-fun e!1348114 () Bool)

(assert (=> b!2117781 (= e!1348114 e!1348113)))

(declare-fun res!918397 () Bool)

(assert (=> b!2117781 (=> (not res!918397) (not e!1348113))))

(assert (=> b!2117781 (= res!918397 call!128624)))

(declare-fun b!2117782 () Bool)

(declare-fun res!918394 () Bool)

(assert (=> b!2117782 (=> res!918394 e!1348114)))

(assert (=> b!2117782 (= res!918394 (not ((_ is Concat!9947) (ite c!339426 (regTwo!11803 r!15373) (regTwo!11802 r!15373)))))))

(assert (=> b!2117782 (= e!1348108 e!1348114)))

(declare-fun bm!128618 () Bool)

(declare-fun call!128622 () Bool)

(assert (=> bm!128618 (= call!128624 call!128622)))

(declare-fun bm!128619 () Bool)

(assert (=> bm!128619 (= call!128622 (validRegex!2229 (ite c!339506 (reg!5974 (ite c!339426 (regTwo!11803 r!15373) (regTwo!11802 r!15373))) (ite c!339505 (regOne!11803 (ite c!339426 (regTwo!11803 r!15373) (regTwo!11802 r!15373))) (regOne!11802 (ite c!339426 (regTwo!11803 r!15373) (regTwo!11802 r!15373)))))))))

(declare-fun b!2117783 () Bool)

(assert (=> b!2117783 (= e!1348109 call!128622)))

(declare-fun b!2117784 () Bool)

(assert (=> b!2117784 (= e!1348112 call!128623)))

(assert (= (and d!642868 (not res!918396)) b!2117778))

(assert (= (and b!2117778 c!339506) b!2117777))

(assert (= (and b!2117778 (not c!339506)) b!2117779))

(assert (= (and b!2117777 res!918395) b!2117783))

(assert (= (and b!2117779 c!339505) b!2117776))

(assert (= (and b!2117779 (not c!339505)) b!2117782))

(assert (= (and b!2117776 res!918398) b!2117784))

(assert (= (and b!2117782 (not res!918394)) b!2117781))

(assert (= (and b!2117781 res!918397) b!2117780))

(assert (= (or b!2117784 b!2117780) bm!128617))

(assert (= (or b!2117776 b!2117781) bm!128618))

(assert (= (or b!2117783 bm!128618) bm!128619))

(declare-fun m!2572540 () Bool)

(assert (=> bm!128617 m!2572540))

(declare-fun m!2572542 () Bool)

(assert (=> b!2117777 m!2572542))

(declare-fun m!2572544 () Bool)

(assert (=> bm!128619 m!2572544))

(assert (=> bm!128596 d!642868))

(declare-fun d!642870 () Bool)

(declare-fun lt!794149 () Int)

(assert (=> d!642870 (>= lt!794149 0)))

(declare-fun e!1348115 () Int)

(assert (=> d!642870 (= lt!794149 e!1348115)))

(declare-fun c!339507 () Bool)

(assert (=> d!642870 (= c!339507 ((_ is Nil!23598) (t!196191 lt!793897)))))

(assert (=> d!642870 (= (size!18433 (t!196191 lt!793897)) lt!794149)))

(declare-fun b!2117785 () Bool)

(assert (=> b!2117785 (= e!1348115 0)))

(declare-fun b!2117786 () Bool)

(assert (=> b!2117786 (= e!1348115 (+ 1 (size!18433 (t!196191 (t!196191 lt!793897)))))))

(assert (= (and d!642870 c!339507) b!2117785))

(assert (= (and d!642870 (not c!339507)) b!2117786))

(declare-fun m!2572546 () Bool)

(assert (=> b!2117786 m!2572546))

(assert (=> b!2117260 d!642870))

(declare-fun bs!441352 () Bool)

(declare-fun d!642872 () Bool)

(assert (= bs!441352 (and d!642872 d!642848)))

(declare-fun lambda!78338 () Int)

(assert (=> bs!441352 (= lambda!78338 lambda!78335)))

(declare-fun bs!441353 () Bool)

(assert (= bs!441353 (and d!642872 d!642776)))

(assert (=> bs!441353 (= lambda!78338 lambda!78326)))

(declare-fun bs!441354 () Bool)

(assert (= bs!441354 (and d!642872 d!642800)))

(assert (=> bs!441354 (= lambda!78338 lambda!78331)))

(declare-fun bs!441355 () Bool)

(assert (= bs!441355 (and d!642872 d!642866)))

(assert (=> bs!441355 (= lambda!78338 lambda!78337)))

(declare-fun bs!441356 () Bool)

(assert (= bs!441356 (and d!642872 d!642814)))

(assert (=> bs!441356 (= lambda!78338 lambda!78333)))

(declare-fun bs!441357 () Bool)

(assert (= bs!441357 (and d!642872 d!642836)))

(assert (=> bs!441357 (= lambda!78338 lambda!78334)))

(declare-fun bs!441358 () Bool)

(assert (= bs!441358 (and d!642872 d!642786)))

(assert (=> bs!441358 (= lambda!78338 lambda!78327)))

(declare-fun bs!441359 () Bool)

(assert (= bs!441359 (and d!642872 d!642806)))

(assert (=> bs!441359 (= lambda!78338 lambda!78332)))

(assert (=> d!642872 (= (inv!31182 (_1!13442 (_1!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))))) (forall!4846 (exprs!1715 (_1!13442 (_1!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))))) lambda!78338))))

(declare-fun bs!441360 () Bool)

(assert (= bs!441360 d!642872))

(declare-fun m!2572548 () Bool)

(assert (=> bs!441360 m!2572548))

(assert (=> b!2117502 d!642872))

(declare-fun b!2117787 () Bool)

(declare-fun res!918403 () Bool)

(declare-fun e!1348120 () Bool)

(assert (=> b!2117787 (=> (not res!918403) (not e!1348120))))

(declare-fun call!128627 () Bool)

(assert (=> b!2117787 (= res!918403 call!128627)))

(declare-fun e!1348116 () Bool)

(assert (=> b!2117787 (= e!1348116 e!1348120)))

(declare-fun d!642874 () Bool)

(declare-fun res!918401 () Bool)

(declare-fun e!1348118 () Bool)

(assert (=> d!642874 (=> res!918401 e!1348118)))

(assert (=> d!642874 (= res!918401 ((_ is ElementMatch!5645) (ite c!339427 (reg!5974 r!15373) (ite c!339426 (regOne!11803 r!15373) (regOne!11802 r!15373)))))))

(assert (=> d!642874 (= (validRegex!2229 (ite c!339427 (reg!5974 r!15373) (ite c!339426 (regOne!11803 r!15373) (regOne!11802 r!15373)))) e!1348118)))

(declare-fun bm!128620 () Bool)

(declare-fun c!339508 () Bool)

(declare-fun call!128626 () Bool)

(assert (=> bm!128620 (= call!128626 (validRegex!2229 (ite c!339508 (regTwo!11803 (ite c!339427 (reg!5974 r!15373) (ite c!339426 (regOne!11803 r!15373) (regOne!11802 r!15373)))) (regTwo!11802 (ite c!339427 (reg!5974 r!15373) (ite c!339426 (regOne!11803 r!15373) (regOne!11802 r!15373)))))))))

(declare-fun b!2117788 () Bool)

(declare-fun e!1348119 () Bool)

(declare-fun e!1348117 () Bool)

(assert (=> b!2117788 (= e!1348119 e!1348117)))

(declare-fun res!918400 () Bool)

(assert (=> b!2117788 (= res!918400 (not (nullable!1682 (reg!5974 (ite c!339427 (reg!5974 r!15373) (ite c!339426 (regOne!11803 r!15373) (regOne!11802 r!15373)))))))))

(assert (=> b!2117788 (=> (not res!918400) (not e!1348117))))

(declare-fun b!2117789 () Bool)

(assert (=> b!2117789 (= e!1348118 e!1348119)))

(declare-fun c!339509 () Bool)

(assert (=> b!2117789 (= c!339509 ((_ is Star!5645) (ite c!339427 (reg!5974 r!15373) (ite c!339426 (regOne!11803 r!15373) (regOne!11802 r!15373)))))))

(declare-fun b!2117790 () Bool)

(assert (=> b!2117790 (= e!1348119 e!1348116)))

(assert (=> b!2117790 (= c!339508 ((_ is Union!5645) (ite c!339427 (reg!5974 r!15373) (ite c!339426 (regOne!11803 r!15373) (regOne!11802 r!15373)))))))

(declare-fun b!2117791 () Bool)

(declare-fun e!1348121 () Bool)

(assert (=> b!2117791 (= e!1348121 call!128626)))

(declare-fun b!2117792 () Bool)

(declare-fun e!1348122 () Bool)

(assert (=> b!2117792 (= e!1348122 e!1348121)))

(declare-fun res!918402 () Bool)

(assert (=> b!2117792 (=> (not res!918402) (not e!1348121))))

(assert (=> b!2117792 (= res!918402 call!128627)))

(declare-fun b!2117793 () Bool)

(declare-fun res!918399 () Bool)

(assert (=> b!2117793 (=> res!918399 e!1348122)))

(assert (=> b!2117793 (= res!918399 (not ((_ is Concat!9947) (ite c!339427 (reg!5974 r!15373) (ite c!339426 (regOne!11803 r!15373) (regOne!11802 r!15373))))))))

(assert (=> b!2117793 (= e!1348116 e!1348122)))

(declare-fun bm!128621 () Bool)

(declare-fun call!128625 () Bool)

(assert (=> bm!128621 (= call!128627 call!128625)))

(declare-fun bm!128622 () Bool)

(assert (=> bm!128622 (= call!128625 (validRegex!2229 (ite c!339509 (reg!5974 (ite c!339427 (reg!5974 r!15373) (ite c!339426 (regOne!11803 r!15373) (regOne!11802 r!15373)))) (ite c!339508 (regOne!11803 (ite c!339427 (reg!5974 r!15373) (ite c!339426 (regOne!11803 r!15373) (regOne!11802 r!15373)))) (regOne!11802 (ite c!339427 (reg!5974 r!15373) (ite c!339426 (regOne!11803 r!15373) (regOne!11802 r!15373))))))))))

(declare-fun b!2117794 () Bool)

(assert (=> b!2117794 (= e!1348117 call!128625)))

(declare-fun b!2117795 () Bool)

(assert (=> b!2117795 (= e!1348120 call!128626)))

(assert (= (and d!642874 (not res!918401)) b!2117789))

(assert (= (and b!2117789 c!339509) b!2117788))

(assert (= (and b!2117789 (not c!339509)) b!2117790))

(assert (= (and b!2117788 res!918400) b!2117794))

(assert (= (and b!2117790 c!339508) b!2117787))

(assert (= (and b!2117790 (not c!339508)) b!2117793))

(assert (= (and b!2117787 res!918403) b!2117795))

(assert (= (and b!2117793 (not res!918399)) b!2117792))

(assert (= (and b!2117792 res!918402) b!2117791))

(assert (= (or b!2117795 b!2117791) bm!128620))

(assert (= (or b!2117787 b!2117792) bm!128621))

(assert (= (or b!2117794 bm!128621) bm!128622))

(declare-fun m!2572550 () Bool)

(assert (=> bm!128620 m!2572550))

(declare-fun m!2572552 () Bool)

(assert (=> b!2117788 m!2572552))

(declare-fun m!2572554 () Bool)

(assert (=> bm!128622 m!2572554))

(assert (=> bm!128598 d!642874))

(declare-fun b!2117799 () Bool)

(declare-fun e!1348124 () List!23682)

(assert (=> b!2117799 (= e!1348124 (++!6313 (list!9508 (left!18281 (c!339387 (_1!13446 lt!793899)))) (list!9508 (right!18611 (c!339387 (_1!13446 lt!793899))))))))

(declare-fun b!2117798 () Bool)

(assert (=> b!2117798 (= e!1348124 (list!9509 (xs!10726 (c!339387 (_1!13446 lt!793899)))))))

(declare-fun b!2117797 () Bool)

(declare-fun e!1348123 () List!23682)

(assert (=> b!2117797 (= e!1348123 e!1348124)))

(declare-fun c!339511 () Bool)

(assert (=> b!2117797 (= c!339511 ((_ is Leaf!11374) (c!339387 (_1!13446 lt!793899))))))

(declare-fun b!2117796 () Bool)

(assert (=> b!2117796 (= e!1348123 Nil!23598)))

(declare-fun d!642876 () Bool)

(declare-fun c!339510 () Bool)

(assert (=> d!642876 (= c!339510 ((_ is Empty!7784) (c!339387 (_1!13446 lt!793899))))))

(assert (=> d!642876 (= (list!9508 (c!339387 (_1!13446 lt!793899))) e!1348123)))

(assert (= (and d!642876 c!339510) b!2117796))

(assert (= (and d!642876 (not c!339510)) b!2117797))

(assert (= (and b!2117797 c!339511) b!2117798))

(assert (= (and b!2117797 (not c!339511)) b!2117799))

(declare-fun m!2572556 () Bool)

(assert (=> b!2117799 m!2572556))

(declare-fun m!2572558 () Bool)

(assert (=> b!2117799 m!2572558))

(assert (=> b!2117799 m!2572556))

(assert (=> b!2117799 m!2572558))

(declare-fun m!2572560 () Bool)

(assert (=> b!2117799 m!2572560))

(declare-fun m!2572562 () Bool)

(assert (=> b!2117798 m!2572562))

(assert (=> d!642680 d!642876))

(declare-fun bs!441361 () Bool)

(declare-fun d!642878 () Bool)

(assert (= bs!441361 (and d!642878 d!642848)))

(declare-fun lambda!78339 () Int)

(assert (=> bs!441361 (= lambda!78339 lambda!78335)))

(declare-fun bs!441362 () Bool)

(assert (= bs!441362 (and d!642878 d!642776)))

(assert (=> bs!441362 (= lambda!78339 lambda!78326)))

(declare-fun bs!441363 () Bool)

(assert (= bs!441363 (and d!642878 d!642872)))

(assert (=> bs!441363 (= lambda!78339 lambda!78338)))

(declare-fun bs!441364 () Bool)

(assert (= bs!441364 (and d!642878 d!642800)))

(assert (=> bs!441364 (= lambda!78339 lambda!78331)))

(declare-fun bs!441365 () Bool)

(assert (= bs!441365 (and d!642878 d!642866)))

(assert (=> bs!441365 (= lambda!78339 lambda!78337)))

(declare-fun bs!441366 () Bool)

(assert (= bs!441366 (and d!642878 d!642814)))

(assert (=> bs!441366 (= lambda!78339 lambda!78333)))

(declare-fun bs!441367 () Bool)

(assert (= bs!441367 (and d!642878 d!642836)))

(assert (=> bs!441367 (= lambda!78339 lambda!78334)))

(declare-fun bs!441368 () Bool)

(assert (= bs!441368 (and d!642878 d!642786)))

(assert (=> bs!441368 (= lambda!78339 lambda!78327)))

(declare-fun bs!441369 () Bool)

(assert (= bs!441369 (and d!642878 d!642806)))

(assert (=> bs!441369 (= lambda!78339 lambda!78332)))

(assert (=> d!642878 (= (inv!31182 setElem!14339) (forall!4846 (exprs!1715 setElem!14339) lambda!78339))))

(declare-fun bs!441370 () Bool)

(assert (= bs!441370 d!642878))

(declare-fun m!2572564 () Bool)

(assert (=> bs!441370 m!2572564))

(assert (=> setNonEmpty!14339 d!642878))

(declare-fun d!642880 () Bool)

(declare-fun res!918404 () Bool)

(declare-fun e!1348125 () Bool)

(assert (=> d!642880 (=> res!918404 e!1348125)))

(assert (=> d!642880 (= res!918404 ((_ is Nil!23600) (t!196193 (_2!13444 (_1!13445 lt!793905)))))))

(assert (=> d!642880 (= (forall!4845 (t!196193 (_2!13444 (_1!13445 lt!793905))) lambda!78292) e!1348125)))

(declare-fun b!2117800 () Bool)

(declare-fun e!1348126 () Bool)

(assert (=> b!2117800 (= e!1348125 e!1348126)))

(declare-fun res!918405 () Bool)

(assert (=> b!2117800 (=> (not res!918405) (not e!1348126))))

(assert (=> b!2117800 (= res!918405 (dynLambda!11302 lambda!78292 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793905))))))))

(declare-fun b!2117801 () Bool)

(assert (=> b!2117801 (= e!1348126 (forall!4845 (t!196193 (t!196193 (_2!13444 (_1!13445 lt!793905)))) lambda!78292))))

(assert (= (and d!642880 (not res!918404)) b!2117800))

(assert (= (and b!2117800 res!918405) b!2117801))

(declare-fun b_lambda!70405 () Bool)

(assert (=> (not b_lambda!70405) (not b!2117800)))

(declare-fun m!2572566 () Bool)

(assert (=> b!2117800 m!2572566))

(declare-fun m!2572568 () Bool)

(assert (=> b!2117801 m!2572568))

(assert (=> b!2117266 d!642880))

(declare-fun bs!441371 () Bool)

(declare-fun d!642882 () Bool)

(assert (= bs!441371 (and d!642882 d!642706)))

(declare-fun lambda!78352 () Int)

(assert (=> bs!441371 (not (= lambda!78352 lambda!78323))))

(declare-fun bs!441372 () Bool)

(declare-fun b!2117806 () Bool)

(assert (= bs!441372 (and b!2117806 d!642706)))

(declare-fun lambda!78353 () Int)

(assert (=> bs!441372 (not (= lambda!78353 lambda!78323))))

(declare-fun bs!441373 () Bool)

(assert (= bs!441373 (and b!2117806 d!642882)))

(assert (=> bs!441373 (not (= lambda!78353 lambda!78352))))

(declare-fun bs!441374 () Bool)

(declare-fun b!2117807 () Bool)

(assert (= bs!441374 (and b!2117807 d!642706)))

(declare-fun lambda!78354 () Int)

(assert (=> bs!441374 (not (= lambda!78354 lambda!78323))))

(declare-fun bs!441375 () Bool)

(assert (= bs!441375 (and b!2117807 d!642882)))

(assert (=> bs!441375 (not (= lambda!78354 lambda!78352))))

(declare-fun bs!441376 () Bool)

(assert (= bs!441376 (and b!2117807 b!2117806)))

(assert (=> bs!441376 (= lambda!78354 lambda!78353)))

(declare-fun bm!128627 () Bool)

(declare-fun call!128633 () List!23686)

(assert (=> bm!128627 (= call!128633 (toList!1056 lt!793898))))

(declare-fun lt!794169 () Bool)

(declare-datatypes ((Option!4866 0))(
  ( (None!4865) (Some!4865 (v!28128 List!23682)) )
))
(declare-fun isEmpty!14306 (Option!4866) Bool)

(declare-fun getLanguageWitness!98 ((InoxSet Context!2430)) Option!4866)

(assert (=> d!642882 (= lt!794169 (isEmpty!14306 (getLanguageWitness!98 lt!793898)))))

(declare-fun forall!4848 ((InoxSet Context!2430) Int) Bool)

(assert (=> d!642882 (= lt!794169 (forall!4848 lt!793898 lambda!78352))))

(declare-fun lt!794170 () Unit!37556)

(declare-fun e!1348133 () Unit!37556)

(assert (=> d!642882 (= lt!794170 e!1348133)))

(declare-fun c!339522 () Bool)

(assert (=> d!642882 (= c!339522 (not (forall!4848 lt!793898 lambda!78352)))))

(assert (=> d!642882 (= (lostCauseZipper!52 lt!793898) lt!794169)))

(declare-fun call!128632 () Bool)

(declare-fun bm!128628 () Bool)

(declare-fun lt!794172 () List!23686)

(declare-fun lt!794173 () List!23686)

(declare-fun exists!686 (List!23686 Int) Bool)

(assert (=> bm!128628 (= call!128632 (exists!686 (ite c!339522 lt!794173 lt!794172) (ite c!339522 lambda!78353 lambda!78354)))))

(declare-fun Unit!37567 () Unit!37556)

(assert (=> b!2117807 (= e!1348133 Unit!37567)))

(assert (=> b!2117807 (= lt!794172 call!128633)))

(declare-fun lt!794168 () Unit!37556)

(declare-fun lemmaForallThenNotExists!13 (List!23686 Int) Unit!37556)

(assert (=> b!2117807 (= lt!794168 (lemmaForallThenNotExists!13 lt!794172 lambda!78352))))

(assert (=> b!2117807 (not call!128632)))

(declare-fun lt!794166 () Unit!37556)

(assert (=> b!2117807 (= lt!794166 lt!794168)))

(declare-fun Unit!37568 () Unit!37556)

(assert (=> b!2117806 (= e!1348133 Unit!37568)))

(assert (=> b!2117806 (= lt!794173 call!128633)))

(declare-fun lt!794167 () Unit!37556)

(declare-fun lemmaNotForallThenExists!13 (List!23686 Int) Unit!37556)

(assert (=> b!2117806 (= lt!794167 (lemmaNotForallThenExists!13 lt!794173 lambda!78352))))

(assert (=> b!2117806 call!128632))

(declare-fun lt!794171 () Unit!37556)

(assert (=> b!2117806 (= lt!794171 lt!794167)))

(assert (= (and d!642882 c!339522) b!2117806))

(assert (= (and d!642882 (not c!339522)) b!2117807))

(assert (= (or b!2117806 b!2117807) bm!128627))

(assert (= (or b!2117806 b!2117807) bm!128628))

(declare-fun m!2572570 () Bool)

(assert (=> bm!128627 m!2572570))

(declare-fun m!2572572 () Bool)

(assert (=> bm!128628 m!2572572))

(declare-fun m!2572574 () Bool)

(assert (=> b!2117807 m!2572574))

(declare-fun m!2572576 () Bool)

(assert (=> d!642882 m!2572576))

(assert (=> d!642882 m!2572576))

(declare-fun m!2572578 () Bool)

(assert (=> d!642882 m!2572578))

(declare-fun m!2572580 () Bool)

(assert (=> d!642882 m!2572580))

(assert (=> d!642882 m!2572580))

(declare-fun m!2572582 () Bool)

(assert (=> b!2117806 m!2572582))

(assert (=> b!2117198 d!642882))

(declare-fun b!2117808 () Bool)

(declare-fun res!918411 () Bool)

(declare-fun e!1348134 () Bool)

(assert (=> b!2117808 (=> (not res!918411) (not e!1348134))))

(assert (=> b!2117808 (= res!918411 (not (isEmpty!14305 (left!18281 (c!339387 (_2!13446 lt!794057))))))))

(declare-fun b!2117809 () Bool)

(assert (=> b!2117809 (= e!1348134 (not (isEmpty!14305 (right!18611 (c!339387 (_2!13446 lt!794057))))))))

(declare-fun d!642884 () Bool)

(declare-fun res!918408 () Bool)

(declare-fun e!1348135 () Bool)

(assert (=> d!642884 (=> res!918408 e!1348135)))

(assert (=> d!642884 (= res!918408 (not ((_ is Node!7784) (c!339387 (_2!13446 lt!794057)))))))

(assert (=> d!642884 (= (isBalanced!2443 (c!339387 (_2!13446 lt!794057))) e!1348135)))

(declare-fun b!2117810 () Bool)

(declare-fun res!918410 () Bool)

(assert (=> b!2117810 (=> (not res!918410) (not e!1348134))))

(assert (=> b!2117810 (= res!918410 (<= (- (height!1230 (left!18281 (c!339387 (_2!13446 lt!794057)))) (height!1230 (right!18611 (c!339387 (_2!13446 lt!794057))))) 1))))

(declare-fun b!2117811 () Bool)

(declare-fun res!918409 () Bool)

(assert (=> b!2117811 (=> (not res!918409) (not e!1348134))))

(assert (=> b!2117811 (= res!918409 (isBalanced!2443 (left!18281 (c!339387 (_2!13446 lt!794057)))))))

(declare-fun b!2117812 () Bool)

(assert (=> b!2117812 (= e!1348135 e!1348134)))

(declare-fun res!918406 () Bool)

(assert (=> b!2117812 (=> (not res!918406) (not e!1348134))))

(assert (=> b!2117812 (= res!918406 (<= (- 1) (- (height!1230 (left!18281 (c!339387 (_2!13446 lt!794057)))) (height!1230 (right!18611 (c!339387 (_2!13446 lt!794057)))))))))

(declare-fun b!2117813 () Bool)

(declare-fun res!918407 () Bool)

(assert (=> b!2117813 (=> (not res!918407) (not e!1348134))))

(assert (=> b!2117813 (= res!918407 (isBalanced!2443 (right!18611 (c!339387 (_2!13446 lt!794057)))))))

(assert (= (and d!642884 (not res!918408)) b!2117812))

(assert (= (and b!2117812 res!918406) b!2117810))

(assert (= (and b!2117810 res!918410) b!2117811))

(assert (= (and b!2117811 res!918409) b!2117813))

(assert (= (and b!2117813 res!918407) b!2117808))

(assert (= (and b!2117808 res!918411) b!2117809))

(declare-fun m!2572584 () Bool)

(assert (=> b!2117813 m!2572584))

(declare-fun m!2572586 () Bool)

(assert (=> b!2117812 m!2572586))

(declare-fun m!2572588 () Bool)

(assert (=> b!2117812 m!2572588))

(declare-fun m!2572590 () Bool)

(assert (=> b!2117811 m!2572590))

(assert (=> b!2117810 m!2572586))

(assert (=> b!2117810 m!2572588))

(declare-fun m!2572592 () Bool)

(assert (=> b!2117809 m!2572592))

(declare-fun m!2572594 () Bool)

(assert (=> b!2117808 m!2572594))

(assert (=> b!2117319 d!642884))

(declare-fun d!642886 () Bool)

(declare-fun e!1348138 () Bool)

(assert (=> d!642886 e!1348138))

(declare-fun res!918414 () Bool)

(assert (=> d!642886 (=> res!918414 e!1348138)))

(declare-fun lt!794176 () Option!4865)

(declare-fun isEmpty!14307 (Option!4865) Bool)

(assert (=> d!642886 (= res!918414 (isEmpty!14307 lt!794176))))

(declare-fun choose!12659 (CacheFurthestNullable!560 (InoxSet Context!2430) Int Int) Option!4865)

(assert (=> d!642886 (= lt!794176 (choose!12659 cacheFurthestNullable!141 lt!793898 lt!793907 e!1347636))))

(assert (=> d!642886 (and (>= e!1347636 (- 1)) (< e!1347636 lt!793907))))

(assert (=> d!642886 (= (get!7297 cacheFurthestNullable!141 lt!793898 lt!793907 e!1347636) lt!794176)))

(declare-fun b!2117816 () Bool)

(declare-fun get!7298 (Option!4865) Int)

(assert (=> b!2117816 (= e!1348138 (= (get!7298 lt!794176) (furthestNullablePosition!5 lt!793898 lt!793907 (totalInput!2863 cacheFurthestNullable!141) (size!18432 (totalInput!2863 cacheFurthestNullable!141)) e!1347636)))))

(assert (= (and d!642886 (not res!918414)) b!2117816))

(declare-fun m!2572596 () Bool)

(assert (=> d!642886 m!2572596))

(declare-fun m!2572598 () Bool)

(assert (=> d!642886 m!2572598))

(declare-fun m!2572600 () Bool)

(assert (=> b!2117816 m!2572600))

(declare-fun m!2572602 () Bool)

(assert (=> b!2117816 m!2572602))

(assert (=> b!2117816 m!2572602))

(declare-fun m!2572604 () Bool)

(assert (=> b!2117816 m!2572604))

(assert (=> d!642682 d!642886))

(declare-fun b!2117827 () Bool)

(declare-fun e!1348146 () Bool)

(assert (=> b!2117827 (= e!1348146 (lostCauseZipper!52 lt!793898))))

(declare-fun b!2117828 () Bool)

(declare-fun e!1348145 () Int)

(assert (=> b!2117828 (= e!1348145 e!1347636)))

(declare-fun d!642888 () Bool)

(declare-fun lt!794182 () Int)

(assert (=> d!642888 (and (>= lt!794182 (- 1)) (< lt!794182 (size!18432 totalInput!1306)) (>= lt!794182 e!1347636) (or (= lt!794182 e!1347636) (>= lt!794182 lt!793907)))))

(assert (=> d!642888 (= lt!794182 e!1348145)))

(declare-fun c!339528 () Bool)

(assert (=> d!642888 (= c!339528 e!1348146)))

(declare-fun res!918417 () Bool)

(assert (=> d!642888 (=> res!918417 e!1348146)))

(assert (=> d!642888 (= res!918417 (= lt!793907 (size!18432 totalInput!1306)))))

(assert (=> d!642888 (and (>= lt!793907 0) (<= lt!793907 (size!18432 totalInput!1306)))))

(assert (=> d!642888 (= (furthestNullablePosition!5 lt!793898 lt!793907 totalInput!1306 (size!18432 totalInput!1306) e!1347636) lt!794182)))

(declare-fun b!2117829 () Bool)

(declare-fun e!1348147 () Int)

(assert (=> b!2117829 (= e!1348147 lt!793907)))

(declare-fun b!2117830 () Bool)

(assert (=> b!2117830 (= e!1348147 e!1347636)))

(declare-fun b!2117831 () Bool)

(declare-fun lt!794181 () (InoxSet Context!2430))

(assert (=> b!2117831 (= e!1348145 (furthestNullablePosition!5 lt!794181 (+ lt!793907 1) totalInput!1306 (size!18432 totalInput!1306) e!1348147))))

(assert (=> b!2117831 (= lt!794181 (derivationStepZipper!84 lt!793898 (apply!5904 totalInput!1306 lt!793907)))))

(declare-fun c!339527 () Bool)

(assert (=> b!2117831 (= c!339527 (nullableZipper!52 lt!794181))))

(assert (= (and d!642888 (not res!918417)) b!2117827))

(assert (= (and d!642888 c!339528) b!2117828))

(assert (= (and d!642888 (not c!339528)) b!2117831))

(assert (= (and b!2117831 c!339527) b!2117829))

(assert (= (and b!2117831 (not c!339527)) b!2117830))

(assert (=> b!2117827 m!2571987))

(assert (=> b!2117831 m!2571837))

(declare-fun m!2572606 () Bool)

(assert (=> b!2117831 m!2572606))

(assert (=> b!2117831 m!2571999))

(assert (=> b!2117831 m!2571999))

(declare-fun m!2572608 () Bool)

(assert (=> b!2117831 m!2572608))

(declare-fun m!2572610 () Bool)

(assert (=> b!2117831 m!2572610))

(assert (=> d!642682 d!642888))

(assert (=> d!642682 d!642676))

(declare-fun b!2117832 () Bool)

(declare-fun e!1348149 () Bool)

(assert (=> b!2117832 (= e!1348149 (lostCauseZipper!52 lt!793898))))

(declare-fun b!2117833 () Bool)

(declare-fun e!1348148 () Int)

(assert (=> b!2117833 (= e!1348148 e!1347636)))

(declare-fun lt!794184 () Int)

(declare-fun d!642890 () Bool)

(assert (=> d!642890 (and (>= lt!794184 (- 1)) (< lt!794184 lt!793906) (>= lt!794184 e!1347636) (or (= lt!794184 e!1347636) (>= lt!794184 lt!793907)))))

(assert (=> d!642890 (= lt!794184 e!1348148)))

(declare-fun c!339530 () Bool)

(assert (=> d!642890 (= c!339530 e!1348149)))

(declare-fun res!918418 () Bool)

(assert (=> d!642890 (=> res!918418 e!1348149)))

(assert (=> d!642890 (= res!918418 (= lt!793907 lt!793906))))

(assert (=> d!642890 (and (>= lt!793907 0) (<= lt!793907 lt!793906))))

(assert (=> d!642890 (= (furthestNullablePosition!5 lt!793898 lt!793907 totalInput!1306 lt!793906 e!1347636) lt!794184)))

(declare-fun b!2117834 () Bool)

(declare-fun e!1348150 () Int)

(assert (=> b!2117834 (= e!1348150 lt!793907)))

(declare-fun b!2117835 () Bool)

(assert (=> b!2117835 (= e!1348150 e!1347636)))

(declare-fun b!2117836 () Bool)

(declare-fun lt!794183 () (InoxSet Context!2430))

(assert (=> b!2117836 (= e!1348148 (furthestNullablePosition!5 lt!794183 (+ lt!793907 1) totalInput!1306 lt!793906 e!1348150))))

(assert (=> b!2117836 (= lt!794183 (derivationStepZipper!84 lt!793898 (apply!5904 totalInput!1306 lt!793907)))))

(declare-fun c!339529 () Bool)

(assert (=> b!2117836 (= c!339529 (nullableZipper!52 lt!794183))))

(assert (= (and d!642890 (not res!918418)) b!2117832))

(assert (= (and d!642890 c!339530) b!2117833))

(assert (= (and d!642890 (not c!339530)) b!2117836))

(assert (= (and b!2117836 c!339529) b!2117834))

(assert (= (and b!2117836 (not c!339529)) b!2117835))

(assert (=> b!2117832 m!2571987))

(declare-fun m!2572612 () Bool)

(assert (=> b!2117836 m!2572612))

(assert (=> b!2117836 m!2571999))

(assert (=> b!2117836 m!2571999))

(assert (=> b!2117836 m!2572608))

(declare-fun m!2572614 () Bool)

(assert (=> b!2117836 m!2572614))

(assert (=> d!642682 d!642890))

(declare-fun d!642892 () Bool)

(declare-fun res!918419 () Bool)

(declare-fun e!1348151 () Bool)

(assert (=> d!642892 (=> res!918419 e!1348151)))

(assert (=> d!642892 (= res!918419 ((_ is Nil!23600) Nil!23600))))

(assert (=> d!642892 (= (forall!4845 Nil!23600 lambda!78314) e!1348151)))

(declare-fun b!2117837 () Bool)

(declare-fun e!1348152 () Bool)

(assert (=> b!2117837 (= e!1348151 e!1348152)))

(declare-fun res!918420 () Bool)

(assert (=> b!2117837 (=> (not res!918420) (not e!1348152))))

(assert (=> b!2117837 (= res!918420 (dynLambda!11302 lambda!78314 (h!29001 Nil!23600)))))

(declare-fun b!2117838 () Bool)

(assert (=> b!2117838 (= e!1348152 (forall!4845 (t!196193 Nil!23600) lambda!78314))))

(assert (= (and d!642892 (not res!918419)) b!2117837))

(assert (= (and b!2117837 res!918420) b!2117838))

(declare-fun b_lambda!70407 () Bool)

(assert (=> (not b_lambda!70407) (not b!2117837)))

(declare-fun m!2572616 () Bool)

(assert (=> b!2117837 m!2572616))

(declare-fun m!2572618 () Bool)

(assert (=> b!2117838 m!2572618))

(assert (=> d!642682 d!642892))

(declare-fun d!642894 () Bool)

(declare-fun res!918421 () Bool)

(declare-fun e!1348153 () Bool)

(assert (=> d!642894 (=> res!918421 e!1348153)))

(assert (=> d!642894 (= res!918421 ((_ is Nil!23600) (_2!13444 (_1!13445 lt!793988))))))

(assert (=> d!642894 (= (forall!4845 (_2!13444 (_1!13445 lt!793988)) lambda!78320) e!1348153)))

(declare-fun b!2117839 () Bool)

(declare-fun e!1348154 () Bool)

(assert (=> b!2117839 (= e!1348153 e!1348154)))

(declare-fun res!918422 () Bool)

(assert (=> b!2117839 (=> (not res!918422) (not e!1348154))))

(assert (=> b!2117839 (= res!918422 (dynLambda!11302 lambda!78320 (h!29001 (_2!13444 (_1!13445 lt!793988)))))))

(declare-fun b!2117840 () Bool)

(assert (=> b!2117840 (= e!1348154 (forall!4845 (t!196193 (_2!13444 (_1!13445 lt!793988))) lambda!78320))))

(assert (= (and d!642894 (not res!918421)) b!2117839))

(assert (= (and b!2117839 res!918422) b!2117840))

(declare-fun b_lambda!70409 () Bool)

(assert (=> (not b_lambda!70409) (not b!2117839)))

(declare-fun m!2572620 () Bool)

(assert (=> b!2117839 m!2572620))

(declare-fun m!2572622 () Bool)

(assert (=> b!2117840 m!2572622))

(assert (=> d!642684 d!642894))

(assert (=> d!642684 d!642676))

(declare-fun d!642896 () Bool)

(assert (=> d!642896 (= (list!9507 (_2!13446 (_1!13450 lt!793994))) (list!9508 (c!339387 (_2!13446 (_1!13450 lt!793994)))))))

(declare-fun bs!441377 () Bool)

(assert (= bs!441377 d!642896))

(declare-fun m!2572624 () Bool)

(assert (=> bs!441377 m!2572624))

(assert (=> d!642684 d!642896))

(assert (=> d!642684 d!642766))

(declare-fun d!642898 () Bool)

(declare-fun res!918423 () Bool)

(declare-fun e!1348155 () Bool)

(assert (=> d!642898 (=> res!918423 e!1348155)))

(assert (=> d!642898 (= res!918423 ((_ is Nil!23600) (_2!13444 (_1!13445 lt!793988))))))

(assert (=> d!642898 (= (forall!4845 (_2!13444 (_1!13445 lt!793988)) lambda!78319) e!1348155)))

(declare-fun b!2117841 () Bool)

(declare-fun e!1348156 () Bool)

(assert (=> b!2117841 (= e!1348155 e!1348156)))

(declare-fun res!918424 () Bool)

(assert (=> b!2117841 (=> (not res!918424) (not e!1348156))))

(assert (=> b!2117841 (= res!918424 (dynLambda!11302 lambda!78319 (h!29001 (_2!13444 (_1!13445 lt!793988)))))))

(declare-fun b!2117842 () Bool)

(assert (=> b!2117842 (= e!1348156 (forall!4845 (t!196193 (_2!13444 (_1!13445 lt!793988))) lambda!78319))))

(assert (= (and d!642898 (not res!918423)) b!2117841))

(assert (= (and b!2117841 res!918424) b!2117842))

(declare-fun b_lambda!70411 () Bool)

(assert (=> (not b_lambda!70411) (not b!2117841)))

(declare-fun m!2572626 () Bool)

(assert (=> b!2117841 m!2572626))

(declare-fun m!2572628 () Bool)

(assert (=> b!2117842 m!2572628))

(assert (=> d!642684 d!642898))

(declare-fun d!642900 () Bool)

(assert (=> d!642900 (= (list!9507 (_1!13446 (_1!13450 lt!793994))) (list!9508 (c!339387 (_1!13446 (_1!13450 lt!793994)))))))

(declare-fun bs!441378 () Bool)

(assert (= bs!441378 d!642900))

(declare-fun m!2572630 () Bool)

(assert (=> bs!441378 m!2572630))

(assert (=> d!642684 d!642900))

(assert (=> d!642684 d!642700))

(assert (=> d!642684 d!642706))

(declare-fun b!2117843 () Bool)

(declare-fun e!1348157 () tuple2!23144)

(declare-fun Unit!37569 () Unit!37556)

(assert (=> b!2117843 (= e!1348157 (tuple2!23145 Unit!37569 (_4!469 lt!793903)))))

(declare-fun b!2117844 () Bool)

(declare-fun lt!794188 () tuple2!23144)

(assert (=> b!2117844 (= lt!794188 (update!84 (_4!469 lt!793903) (z!5693 (h!29001 (_2!13444 (_1!13445 lt!793988)))) (from!2604 (h!29001 (_2!13444 (_1!13445 lt!793988)))) (lastNullablePos!292 (h!29001 (_2!13444 (_1!13445 lt!793988)))) (_1!13444 (_1!13445 lt!793988)) totalInput!1306))))

(declare-fun lt!794186 () Unit!37556)

(assert (=> b!2117844 (= lt!794186 (lemmaInvariant!378 (_4!469 lt!793903)))))

(assert (=> b!2117844 (= e!1348157 (tuple2!23145 (_1!13451 lt!794188) (_2!13451 lt!794188)))))

(declare-fun b!2117845 () Bool)

(declare-fun e!1348159 () Bool)

(declare-fun lt!794185 () tuple2!23144)

(assert (=> b!2117845 (= e!1348159 (= (totalInput!2863 (_2!13451 lt!794185)) totalInput!1306))))

(declare-fun b!2117846 () Bool)

(declare-fun e!1348158 () tuple2!23144)

(declare-fun lt!794187 () tuple2!23144)

(assert (=> b!2117846 (= e!1348158 (tuple2!23145 (_1!13451 lt!794187) (_2!13451 lt!794187)))))

(declare-fun c!339531 () Bool)

(assert (=> b!2117846 (= c!339531 (and (> lt!793991 1048576) (not (= (- 0 (* 10 (ite (>= 0 0) (div 0 10) (- (div (- 0) 10))))) 0))))))

(assert (=> b!2117846 (= lt!794187 (fillUpCache!5 (t!196193 (_2!13444 (_1!13445 lt!793988))) totalInput!1306 lt!793991 (_1!13444 (_1!13445 lt!793988)) (+ 0 1) (_2!13451 e!1348157)))))

(declare-fun d!642902 () Bool)

(assert (=> d!642902 e!1348159))

(declare-fun res!918425 () Bool)

(assert (=> d!642902 (=> (not res!918425) (not e!1348159))))

(assert (=> d!642902 (= res!918425 (valid!1885 (_2!13451 lt!794185)))))

(assert (=> d!642902 (= lt!794185 e!1348158)))

(declare-fun c!339532 () Bool)

(assert (=> d!642902 (= c!339532 ((_ is Nil!23600) (_2!13444 (_1!13445 lt!793988))))))

(assert (=> d!642902 (valid!1885 (_4!469 lt!793903))))

(assert (=> d!642902 (= (fillUpCache!5 (_2!13444 (_1!13445 lt!793988)) totalInput!1306 lt!793991 (_1!13444 (_1!13445 lt!793988)) 0 (_4!469 lt!793903)) lt!794185)))

(declare-fun b!2117847 () Bool)

(declare-fun Unit!37570 () Unit!37556)

(assert (=> b!2117847 (= e!1348158 (tuple2!23145 Unit!37570 (_4!469 lt!793903)))))

(assert (= (and d!642902 c!339532) b!2117847))

(assert (= (and d!642902 (not c!339532)) b!2117846))

(assert (= (and b!2117846 c!339531) b!2117843))

(assert (= (and b!2117846 (not c!339531)) b!2117844))

(assert (= (and d!642902 res!918425) b!2117845))

(declare-fun m!2572632 () Bool)

(assert (=> b!2117844 m!2572632))

(declare-fun m!2572634 () Bool)

(assert (=> b!2117844 m!2572634))

(declare-fun m!2572636 () Bool)

(assert (=> b!2117846 m!2572636))

(declare-fun m!2572638 () Bool)

(assert (=> d!642902 m!2572638))

(declare-fun m!2572640 () Bool)

(assert (=> d!642902 m!2572640))

(assert (=> d!642684 d!642902))

(assert (=> d!642684 d!642858))

(declare-fun bs!441379 () Bool)

(declare-fun d!642904 () Bool)

(assert (= bs!441379 (and d!642904 d!642672)))

(declare-fun lambda!78355 () Int)

(assert (=> bs!441379 (not (= lambda!78355 lambda!78299))))

(declare-fun bs!441380 () Bool)

(assert (= bs!441380 (and d!642904 b!2117207)))

(assert (=> bs!441380 (not (= lambda!78355 lambda!78318))))

(declare-fun bs!441381 () Bool)

(assert (= bs!441381 (and d!642904 b!2117209)))

(declare-fun lt!794197 () Int)

(assert (=> bs!441381 (= (= lt!794197 (_1!13444 (_1!13445 lt!793984))) (= lambda!78355 lambda!78317))))

(declare-fun bs!441382 () Bool)

(assert (= bs!441382 (and d!642904 b!2117039)))

(assert (=> bs!441382 (not (= lambda!78355 lambda!78293))))

(declare-fun bs!441383 () Bool)

(assert (= bs!441383 (and d!642904 d!642684)))

(assert (=> bs!441383 (= (= lt!794197 (_1!13444 (_1!13445 lt!793988))) (= lambda!78355 lambda!78319))))

(declare-fun bs!441384 () Bool)

(assert (= bs!441384 (and d!642904 b!2117203)))

(assert (=> bs!441384 (= (= lt!794197 e!1347636) (= lambda!78355 lambda!78315))))

(assert (=> bs!441379 (= (= lt!794197 (_1!13444 (_1!13445 lt!793929))) (= lambda!78355 lambda!78298))))

(declare-fun bs!441385 () Bool)

(assert (= bs!441385 (and d!642904 b!2117201)))

(assert (=> bs!441385 (= (= lt!794197 lt!793973) (= lambda!78355 lambda!78316))))

(declare-fun bs!441386 () Bool)

(assert (= bs!441386 (and d!642904 d!642682)))

(assert (=> bs!441386 (= (= lt!794197 lt!793980) (= lambda!78355 lambda!78314))))

(assert (=> bs!441383 (not (= lambda!78355 lambda!78320))))

(declare-fun bs!441387 () Bool)

(assert (= bs!441387 (and d!642904 b!2117069)))

(assert (=> bs!441387 (= (= lt!794197 (_1!13444 (_1!13445 lt!793905))) (= lambda!78355 lambda!78292))))

(assert (=> d!642904 true))

(declare-fun bs!441388 () Bool)

(declare-fun b!2117853 () Bool)

(assert (= bs!441388 (and b!2117853 d!642672)))

(declare-fun lambda!78356 () Int)

(assert (=> bs!441388 (not (= lambda!78356 lambda!78299))))

(declare-fun bs!441389 () Bool)

(assert (= bs!441389 (and b!2117853 b!2117207)))

(assert (=> bs!441389 (not (= lambda!78356 lambda!78318))))

(declare-fun bs!441390 () Bool)

(assert (= bs!441390 (and b!2117853 b!2117209)))

(assert (=> bs!441390 (= (= e!1347754 (_1!13444 (_1!13445 lt!793984))) (= lambda!78356 lambda!78317))))

(declare-fun bs!441391 () Bool)

(assert (= bs!441391 (and b!2117853 b!2117039)))

(assert (=> bs!441391 (not (= lambda!78356 lambda!78293))))

(declare-fun bs!441392 () Bool)

(assert (= bs!441392 (and b!2117853 d!642684)))

(assert (=> bs!441392 (= (= e!1347754 (_1!13444 (_1!13445 lt!793988))) (= lambda!78356 lambda!78319))))

(declare-fun bs!441393 () Bool)

(assert (= bs!441393 (and b!2117853 b!2117203)))

(assert (=> bs!441393 (= (= e!1347754 e!1347636) (= lambda!78356 lambda!78315))))

(assert (=> bs!441388 (= (= e!1347754 (_1!13444 (_1!13445 lt!793929))) (= lambda!78356 lambda!78298))))

(declare-fun bs!441394 () Bool)

(assert (= bs!441394 (and b!2117853 b!2117201)))

(assert (=> bs!441394 (= (= e!1347754 lt!793973) (= lambda!78356 lambda!78316))))

(declare-fun bs!441395 () Bool)

(assert (= bs!441395 (and b!2117853 d!642904)))

(assert (=> bs!441395 (= (= e!1347754 lt!794197) (= lambda!78356 lambda!78355))))

(declare-fun bs!441396 () Bool)

(assert (= bs!441396 (and b!2117853 d!642682)))

(assert (=> bs!441396 (= (= e!1347754 lt!793980) (= lambda!78356 lambda!78314))))

(assert (=> bs!441392 (not (= lambda!78356 lambda!78320))))

(declare-fun bs!441397 () Bool)

(assert (= bs!441397 (and b!2117853 b!2117069)))

(assert (=> bs!441397 (= (= e!1347754 (_1!13444 (_1!13445 lt!793905))) (= lambda!78356 lambda!78292))))

(assert (=> b!2117853 true))

(declare-fun bs!441398 () Bool)

(declare-fun b!2117851 () Bool)

(assert (= bs!441398 (and b!2117851 b!2117207)))

(declare-fun lambda!78357 () Int)

(assert (=> bs!441398 (not (= lambda!78357 lambda!78318))))

(declare-fun bs!441399 () Bool)

(assert (= bs!441399 (and b!2117851 b!2117209)))

(declare-fun lt!794190 () Int)

(assert (=> bs!441399 (= (= lt!794190 (_1!13444 (_1!13445 lt!793984))) (= lambda!78357 lambda!78317))))

(declare-fun bs!441400 () Bool)

(assert (= bs!441400 (and b!2117851 b!2117039)))

(assert (=> bs!441400 (not (= lambda!78357 lambda!78293))))

(declare-fun bs!441401 () Bool)

(assert (= bs!441401 (and b!2117851 d!642684)))

(assert (=> bs!441401 (= (= lt!794190 (_1!13444 (_1!13445 lt!793988))) (= lambda!78357 lambda!78319))))

(declare-fun bs!441402 () Bool)

(assert (= bs!441402 (and b!2117851 b!2117203)))

(assert (=> bs!441402 (= (= lt!794190 e!1347636) (= lambda!78357 lambda!78315))))

(declare-fun bs!441403 () Bool)

(assert (= bs!441403 (and b!2117851 d!642672)))

(assert (=> bs!441403 (= (= lt!794190 (_1!13444 (_1!13445 lt!793929))) (= lambda!78357 lambda!78298))))

(declare-fun bs!441404 () Bool)

(assert (= bs!441404 (and b!2117851 b!2117201)))

(assert (=> bs!441404 (= (= lt!794190 lt!793973) (= lambda!78357 lambda!78316))))

(declare-fun bs!441405 () Bool)

(assert (= bs!441405 (and b!2117851 d!642904)))

(assert (=> bs!441405 (= (= lt!794190 lt!794197) (= lambda!78357 lambda!78355))))

(declare-fun bs!441406 () Bool)

(assert (= bs!441406 (and b!2117851 d!642682)))

(assert (=> bs!441406 (= (= lt!794190 lt!793980) (= lambda!78357 lambda!78314))))

(assert (=> bs!441401 (not (= lambda!78357 lambda!78320))))

(declare-fun bs!441407 () Bool)

(assert (= bs!441407 (and b!2117851 b!2117069)))

(assert (=> bs!441407 (= (= lt!794190 (_1!13444 (_1!13445 lt!793905))) (= lambda!78357 lambda!78292))))

(assert (=> bs!441403 (not (= lambda!78357 lambda!78299))))

(declare-fun bs!441408 () Bool)

(assert (= bs!441408 (and b!2117851 b!2117853)))

(assert (=> bs!441408 (= (= lt!794190 e!1347754) (= lambda!78357 lambda!78356))))

(assert (=> b!2117851 true))

(declare-fun bs!441409 () Bool)

(declare-fun b!2117859 () Bool)

(assert (= bs!441409 (and b!2117859 b!2117207)))

(declare-fun lambda!78358 () Int)

(assert (=> bs!441409 (not (= lambda!78358 lambda!78318))))

(declare-fun bs!441410 () Bool)

(assert (= bs!441410 (and b!2117859 b!2117209)))

(declare-fun lt!794201 () tuple3!2814)

(assert (=> bs!441410 (= (= (_1!13444 (_1!13445 lt!794201)) (_1!13444 (_1!13445 lt!793984))) (= lambda!78358 lambda!78317))))

(declare-fun bs!441411 () Bool)

(assert (= bs!441411 (and b!2117859 b!2117039)))

(assert (=> bs!441411 (not (= lambda!78358 lambda!78293))))

(declare-fun bs!441412 () Bool)

(assert (= bs!441412 (and b!2117859 d!642684)))

(assert (=> bs!441412 (= (= (_1!13444 (_1!13445 lt!794201)) (_1!13444 (_1!13445 lt!793988))) (= lambda!78358 lambda!78319))))

(declare-fun bs!441413 () Bool)

(assert (= bs!441413 (and b!2117859 b!2117203)))

(assert (=> bs!441413 (= (= (_1!13444 (_1!13445 lt!794201)) e!1347636) (= lambda!78358 lambda!78315))))

(declare-fun bs!441414 () Bool)

(assert (= bs!441414 (and b!2117859 b!2117201)))

(assert (=> bs!441414 (= (= (_1!13444 (_1!13445 lt!794201)) lt!793973) (= lambda!78358 lambda!78316))))

(declare-fun bs!441415 () Bool)

(assert (= bs!441415 (and b!2117859 d!642904)))

(assert (=> bs!441415 (= (= (_1!13444 (_1!13445 lt!794201)) lt!794197) (= lambda!78358 lambda!78355))))

(declare-fun bs!441416 () Bool)

(assert (= bs!441416 (and b!2117859 d!642682)))

(assert (=> bs!441416 (= (= (_1!13444 (_1!13445 lt!794201)) lt!793980) (= lambda!78358 lambda!78314))))

(assert (=> bs!441412 (not (= lambda!78358 lambda!78320))))

(declare-fun bs!441417 () Bool)

(assert (= bs!441417 (and b!2117859 b!2117069)))

(assert (=> bs!441417 (= (= (_1!13444 (_1!13445 lt!794201)) (_1!13444 (_1!13445 lt!793905))) (= lambda!78358 lambda!78292))))

(declare-fun bs!441418 () Bool)

(assert (= bs!441418 (and b!2117859 d!642672)))

(assert (=> bs!441418 (not (= lambda!78358 lambda!78299))))

(declare-fun bs!441419 () Bool)

(assert (= bs!441419 (and b!2117859 b!2117853)))

(assert (=> bs!441419 (= (= (_1!13444 (_1!13445 lt!794201)) e!1347754) (= lambda!78358 lambda!78356))))

(declare-fun bs!441420 () Bool)

(assert (= bs!441420 (and b!2117859 b!2117851)))

(assert (=> bs!441420 (= (= (_1!13444 (_1!13445 lt!794201)) lt!794190) (= lambda!78358 lambda!78357))))

(assert (=> bs!441418 (= (= (_1!13444 (_1!13445 lt!794201)) (_1!13444 (_1!13445 lt!793929))) (= lambda!78358 lambda!78298))))

(declare-fun b!2117861 () Bool)

(declare-fun e!1348180 () Bool)

(declare-fun mapRes!11598 () Bool)

(assert (=> b!2117861 (= e!1348180 mapRes!11598)))

(declare-fun condMapEmpty!11599 () Bool)

(declare-fun mapDefault!11599 () List!23681)

(assert (=> b!2117861 (= condMapEmpty!11599 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794201)))))))) ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11599)))))

(declare-fun b!2117862 () Bool)

(declare-fun e!1348179 () Bool)

(declare-fun e!1348170 () Bool)

(assert (=> b!2117862 (= e!1348179 e!1348170)))

(declare-fun b!2117863 () Bool)

(declare-fun e!1348172 () Bool)

(declare-fun e!1348171 () Bool)

(assert (=> b!2117863 (= e!1348172 e!1348171)))

(declare-fun b!2117864 () Bool)

(assert (=> b!2117864 (= e!1348171 e!1348180)))

(declare-fun mapIsEmpty!11598 () Bool)

(declare-fun mapRes!11599 () Bool)

(assert (=> mapIsEmpty!11598 mapRes!11599))

(declare-fun mapNonEmpty!11598 () Bool)

(assert (=> mapNonEmpty!11598 (= mapRes!11598 true)))

(declare-fun mapValue!11598 () List!23681)

(declare-fun mapRest!11598 () (Array (_ BitVec 32) List!23681))

(declare-fun mapKey!11598 () (_ BitVec 32))

(assert (=> mapNonEmpty!11598 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794201)))))))) (store mapRest!11598 mapKey!11598 mapValue!11598))))

(declare-fun b!2117865 () Bool)

(declare-fun e!1348178 () Bool)

(assert (=> b!2117865 (= e!1348170 e!1348178)))

(declare-fun b!2117866 () Bool)

(declare-fun e!1348173 () Bool)

(declare-fun e!1348176 () Bool)

(assert (=> b!2117866 (= e!1348173 e!1348176)))

(declare-fun b!2117867 () Bool)

(declare-fun e!1348175 () Bool)

(assert (=> b!2117867 (= e!1348175 e!1348173)))

(declare-fun b!2117868 () Bool)

(declare-fun e!1348165 () Bool)

(declare-fun lt!794203 () MutLongMap!2397)

(assert (=> b!2117868 (= e!1348165 (and e!1348175 ((_ is LongMap!2397) lt!794203)))))

(assert (=> b!2117868 (= lt!794203 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794201)))))))

(declare-fun b!2117869 () Bool)

(declare-fun e!1348167 () Bool)

(assert (=> b!2117869 (= e!1348167 mapRes!11599)))

(declare-fun condMapEmpty!11598 () Bool)

(declare-fun mapDefault!11598 () List!23683)

(assert (=> b!2117869 (= condMapEmpty!11598 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794201)))))))) ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11598)))))

(declare-fun b!2117870 () Bool)

(declare-fun e!1348168 () Bool)

(declare-fun e!1348177 () Bool)

(assert (=> b!2117870 (= e!1348168 e!1348177)))

(declare-fun b!2117872 () Bool)

(declare-fun e!1348174 () Bool)

(declare-fun lt!794204 () MutLongMap!2396)

(assert (=> b!2117872 (= e!1348178 (and e!1348174 ((_ is LongMap!2396) lt!794204)))))

(assert (=> b!2117872 (= lt!794204 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794201)))))))

(declare-fun setNonEmpty!14401 () Bool)

(declare-fun setRes!14401 () Bool)

(assert (=> setNonEmpty!14401 (= setRes!14401 true)))

(declare-fun setElem!14401 () Context!2430)

(declare-fun setRest!14401 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14401 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!794201)))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14401 true) setRest!14401))))

(declare-fun b!2117873 () Bool)

(assert (=> b!2117873 (= e!1348174 e!1348172)))

(declare-fun mapIsEmpty!11599 () Bool)

(assert (=> mapIsEmpty!11599 mapRes!11598))

(declare-fun setIsEmpty!14401 () Bool)

(assert (=> setIsEmpty!14401 setRes!14401))

(declare-fun b!2117874 () Bool)

(declare-fun e!1348166 () Bool)

(assert (=> b!2117874 (= e!1348166 e!1348165)))

(declare-fun b!2117875 () Bool)

(assert (=> b!2117875 (= e!1348177 setRes!14401)))

(declare-fun condSetEmpty!14401 () Bool)

(assert (=> b!2117875 (= condSetEmpty!14401 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!794201)))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117871 () Bool)

(declare-fun e!1348169 () Bool)

(assert (=> b!2117871 (= e!1348169 e!1348166)))

(assert (=> b!2117859 (and e!1348168 e!1348169 e!1348179)))

(declare-fun b!2117876 () Bool)

(assert (=> b!2117876 (= e!1348176 e!1348167)))

(declare-fun mapNonEmpty!11599 () Bool)

(assert (=> mapNonEmpty!11599 (= mapRes!11599 true)))

(declare-fun mapKey!11599 () (_ BitVec 32))

(declare-fun mapRest!11599 () (Array (_ BitVec 32) List!23683))

(declare-fun mapValue!11599 () List!23683)

(assert (=> mapNonEmpty!11599 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794201)))))))) (store mapRest!11599 mapKey!11599 mapValue!11599))))

(assert (= (and b!2117875 condSetEmpty!14401) setIsEmpty!14401))

(assert (= (and b!2117875 (not condSetEmpty!14401)) setNonEmpty!14401))

(assert (= b!2117870 b!2117875))

(assert (= (and b!2117859 ((_ is Cons!23600) (_2!13444 (_1!13445 lt!794201)))) b!2117870))

(assert (= (and b!2117869 condMapEmpty!11598) mapIsEmpty!11598))

(assert (= (and b!2117869 (not condMapEmpty!11598)) mapNonEmpty!11599))

(assert (= b!2117876 b!2117869))

(assert (= b!2117866 b!2117876))

(assert (= b!2117867 b!2117866))

(assert (= (and b!2117868 ((_ is LongMap!2397) (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794201)))))) b!2117867))

(assert (= b!2117874 b!2117868))

(assert (= (and b!2117871 ((_ is HashMap!2310) (cache!2691 (_2!13445 lt!794201)))) b!2117874))

(assert (= b!2117859 b!2117871))

(assert (= (and b!2117861 condMapEmpty!11599) mapIsEmpty!11599))

(assert (= (and b!2117861 (not condMapEmpty!11599)) mapNonEmpty!11598))

(assert (= b!2117864 b!2117861))

(assert (= b!2117863 b!2117864))

(assert (= b!2117873 b!2117863))

(assert (= (and b!2117872 ((_ is LongMap!2396) (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794201)))))) b!2117873))

(assert (= b!2117865 b!2117872))

(assert (= (and b!2117862 ((_ is HashMap!2311) (cache!2692 (_3!1876 lt!794201)))) b!2117865))

(assert (= b!2117859 b!2117862))

(assert (=> b!2117864 (< (dynLambda!11297 order!14569 (defaultEntry!2761 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794201)))))))) (dynLambda!11298 order!14571 lambda!78358))))

(assert (=> b!2117865 (< (dynLambda!11299 order!14573 (defaultValue!2473 (cache!2692 (_3!1876 lt!794201)))) (dynLambda!11298 order!14571 lambda!78358))))

(assert (=> b!2117876 (< (dynLambda!11300 order!14575 (defaultEntry!2762 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794201)))))))) (dynLambda!11298 order!14571 lambda!78358))))

(assert (=> b!2117874 (< (dynLambda!11301 order!14577 (defaultValue!2472 (cache!2691 (_2!13445 lt!794201)))) (dynLambda!11298 order!14571 lambda!78358))))

(declare-fun m!2572642 () Bool)

(assert (=> mapNonEmpty!11598 m!2572642))

(declare-fun m!2572644 () Bool)

(assert (=> mapNonEmpty!11599 m!2572644))

(declare-fun bs!441421 () Bool)

(declare-fun b!2117857 () Bool)

(assert (= bs!441421 (and b!2117857 b!2117207)))

(declare-fun lambda!78359 () Int)

(assert (=> bs!441421 (= lambda!78359 lambda!78318)))

(declare-fun bs!441422 () Bool)

(assert (= bs!441422 (and b!2117857 b!2117209)))

(assert (=> bs!441422 (not (= lambda!78359 lambda!78317))))

(declare-fun bs!441423 () Bool)

(assert (= bs!441423 (and b!2117857 b!2117859)))

(assert (=> bs!441423 (not (= lambda!78359 lambda!78358))))

(declare-fun bs!441424 () Bool)

(assert (= bs!441424 (and b!2117857 b!2117039)))

(assert (=> bs!441424 (= lambda!78359 lambda!78293)))

(declare-fun bs!441425 () Bool)

(assert (= bs!441425 (and b!2117857 d!642684)))

(assert (=> bs!441425 (not (= lambda!78359 lambda!78319))))

(declare-fun bs!441426 () Bool)

(assert (= bs!441426 (and b!2117857 b!2117203)))

(assert (=> bs!441426 (not (= lambda!78359 lambda!78315))))

(declare-fun bs!441427 () Bool)

(assert (= bs!441427 (and b!2117857 b!2117201)))

(assert (=> bs!441427 (not (= lambda!78359 lambda!78316))))

(declare-fun bs!441428 () Bool)

(assert (= bs!441428 (and b!2117857 d!642904)))

(assert (=> bs!441428 (not (= lambda!78359 lambda!78355))))

(declare-fun bs!441429 () Bool)

(assert (= bs!441429 (and b!2117857 d!642682)))

(assert (=> bs!441429 (not (= lambda!78359 lambda!78314))))

(assert (=> bs!441425 (= lambda!78359 lambda!78320)))

(declare-fun bs!441430 () Bool)

(assert (= bs!441430 (and b!2117857 b!2117069)))

(assert (=> bs!441430 (not (= lambda!78359 lambda!78292))))

(declare-fun bs!441431 () Bool)

(assert (= bs!441431 (and b!2117857 d!642672)))

(assert (=> bs!441431 (= lambda!78359 lambda!78299)))

(declare-fun bs!441432 () Bool)

(assert (= bs!441432 (and b!2117857 b!2117853)))

(assert (=> bs!441432 (not (= lambda!78359 lambda!78356))))

(declare-fun bs!441433 () Bool)

(assert (= bs!441433 (and b!2117857 b!2117851)))

(assert (=> bs!441433 (not (= lambda!78359 lambda!78357))))

(assert (=> bs!441431 (not (= lambda!78359 lambda!78298))))

(assert (=> b!2117857 true))

(declare-fun b!2117848 () Bool)

(declare-fun e!1348164 () Bool)

(assert (=> b!2117848 (= e!1348164 (lostCauseZipper!52 lt!793898))))

(declare-fun b!2117849 () Bool)

(declare-fun e!1348161 () Int)

(assert (=> b!2117849 (= e!1348161 e!1347754)))

(declare-fun bm!128629 () Bool)

(declare-fun c!339533 () Bool)

(declare-fun call!128636 () Bool)

(assert (=> bm!128629 (= call!128636 (forall!4845 Nil!23600 (ite c!339533 lambda!78356 lambda!78355)))))

(declare-fun b!2117850 () Bool)

(declare-fun res!918432 () Bool)

(declare-fun e!1348163 () Bool)

(assert (=> b!2117850 (=> (not res!918432) (not e!1348163))))

(assert (=> b!2117850 (= res!918432 (= (totalInput!2863 (_4!469 lt!793903)) totalInput!1306))))

(declare-fun lt!794200 () tuple3!2818)

(declare-fun lt!794192 () tuple3!2814)

(declare-fun lt!794202 () Int)

(assert (=> b!2117851 (= lt!794192 (furthestNullablePositionStackMem!5 (_1!13452 lt!794200) (+ lt!793990 1) totalInput!1306 lt!793991 lt!794202 (Cons!23600 (StackFrame!23 lt!793898 lt!793990 e!1347754 lt!794197 totalInput!1306) Nil!23600) (_2!13452 lt!794200) (_3!1879 lt!794200) (_4!469 lt!793903)))))

(declare-fun lt!794191 () Unit!37556)

(declare-fun lt!794198 () Unit!37556)

(assert (=> b!2117851 (= lt!794191 lt!794198)))

(declare-fun call!128635 () Bool)

(assert (=> b!2117851 call!128635))

(declare-fun call!128634 () Unit!37556)

(assert (=> b!2117851 (= lt!794198 call!128634)))

(declare-fun lt!794189 () Unit!37556)

(declare-fun Unit!37571 () Unit!37556)

(assert (=> b!2117851 (= lt!794189 Unit!37571)))

(assert (=> b!2117851 call!128636))

(assert (=> b!2117851 (= lt!794190 (furthestNullablePosition!5 (_1!13452 lt!794200) (+ lt!793990 1) totalInput!1306 (size!18432 totalInput!1306) lt!794202))))

(assert (=> b!2117851 (= lt!794202 e!1348161)))

(declare-fun c!339535 () Bool)

(assert (=> b!2117851 (= c!339535 (nullableZipper!52 (_1!13452 lt!794200)))))

(assert (=> b!2117851 (= lt!794200 (derivationStepZipperMem!14 lt!793898 (apply!5904 totalInput!1306 lt!793990) (_2!13450 lt!793903) (_3!1878 lt!793903)))))

(declare-fun e!1348160 () tuple3!2814)

(assert (=> b!2117851 (= e!1348160 (tuple3!2815 (_1!13445 lt!794192) (_2!13445 lt!794192) (_3!1876 lt!794192)))))

(declare-fun b!2117852 () Bool)

(declare-fun res!918430 () Bool)

(assert (=> b!2117852 (=> (not res!918430) (not e!1348163))))

(assert (=> b!2117852 (= res!918430 (valid!1885 (_4!469 lt!793903)))))

(assert (=> d!642904 e!1348163))

(declare-fun res!918428 () Bool)

(assert (=> d!642904 (=> (not res!918428) (not e!1348163))))

(assert (=> d!642904 (= res!918428 (= (_1!13444 (_1!13445 lt!794201)) (furthestNullablePosition!5 lt!793898 lt!793990 totalInput!1306 lt!793991 e!1347754)))))

(declare-fun e!1348162 () tuple3!2814)

(assert (=> d!642904 (= lt!794201 e!1348162)))

(declare-fun c!339534 () Bool)

(declare-fun lt!794195 () Option!4865)

(assert (=> d!642904 (= c!339534 ((_ is Some!4864) lt!794195))))

(assert (=> d!642904 (= lt!794195 (get!7297 (_4!469 lt!793903) lt!793898 lt!793990 e!1347754))))

(declare-fun lt!794193 () Unit!37556)

(declare-fun Unit!37572 () Unit!37556)

(assert (=> d!642904 (= lt!794193 Unit!37572)))

(assert (=> d!642904 (forall!4845 Nil!23600 lambda!78355)))

(assert (=> d!642904 (= lt!794197 (furthestNullablePosition!5 lt!793898 lt!793990 totalInput!1306 (size!18432 totalInput!1306) e!1347754))))

(assert (=> d!642904 (and (>= lt!793990 0) (<= lt!793990 lt!793991))))

(assert (=> d!642904 (= (furthestNullablePositionStackMem!5 lt!793898 lt!793990 totalInput!1306 lt!793991 e!1347754 Nil!23600 (_2!13450 lt!793903) (_3!1878 lt!793903) (_4!469 lt!793903)) lt!794201)))

(declare-fun lt!794196 () Unit!37556)

(declare-fun lt!794194 () Unit!37556)

(assert (=> b!2117853 (= lt!794196 lt!794194)))

(assert (=> b!2117853 call!128636))

(assert (=> b!2117853 (= lt!794194 call!128634)))

(declare-fun lt!794199 () Unit!37556)

(declare-fun Unit!37573 () Unit!37556)

(assert (=> b!2117853 (= lt!794199 Unit!37573)))

(assert (=> b!2117853 call!128635))

(assert (=> b!2117853 (= e!1348160 (tuple3!2815 (tuple2!23137 e!1347754 Nil!23600) (_2!13450 lt!793903) (_3!1878 lt!793903)))))

(declare-fun b!2117854 () Bool)

(assert (=> b!2117854 (= e!1348162 (tuple3!2815 (tuple2!23137 (v!28127 lt!794195) Nil!23600) (_2!13450 lt!793903) (_3!1878 lt!793903)))))

(declare-fun b!2117855 () Bool)

(assert (=> b!2117855 (= e!1348162 e!1348160)))

(declare-fun res!918429 () Bool)

(assert (=> b!2117855 (= res!918429 (= lt!793990 lt!793991))))

(assert (=> b!2117855 (=> res!918429 e!1348164)))

(assert (=> b!2117855 (= c!339533 e!1348164)))

(declare-fun bm!128630 () Bool)

(assert (=> bm!128630 (= call!128635 (forall!4845 Nil!23600 (ite c!339533 lambda!78355 lambda!78357)))))

(declare-fun b!2117856 () Bool)

(declare-fun res!918427 () Bool)

(assert (=> b!2117856 (=> (not res!918427) (not e!1348163))))

(assert (=> b!2117856 (= res!918427 (valid!1887 (_3!1876 lt!794201)))))

(declare-fun bm!128631 () Bool)

(assert (=> bm!128631 (= call!128634 (lemmaStackPreservesForEqualRes!3 Nil!23600 lt!794197 (ite c!339533 e!1347754 lt!794190)))))

(assert (=> b!2117857 (= e!1348163 (forall!4845 (_2!13444 (_1!13445 lt!794201)) lambda!78359))))

(declare-fun b!2117858 () Bool)

(declare-fun res!918431 () Bool)

(assert (=> b!2117858 (=> (not res!918431) (not e!1348163))))

(assert (=> b!2117858 (= res!918431 (valid!1886 (_2!13445 lt!794201)))))

(declare-fun res!918426 () Bool)

(assert (=> b!2117859 (=> (not res!918426) (not e!1348163))))

(assert (=> b!2117859 (= res!918426 (forall!4845 (_2!13444 (_1!13445 lt!794201)) lambda!78358))))

(declare-fun b!2117860 () Bool)

(assert (=> b!2117860 (= e!1348161 lt!793990)))

(assert (= (and d!642904 c!339534) b!2117854))

(assert (= (and d!642904 (not c!339534)) b!2117855))

(assert (= (and b!2117855 (not res!918429)) b!2117848))

(assert (= (and b!2117855 c!339533) b!2117853))

(assert (= (and b!2117855 (not c!339533)) b!2117851))

(assert (= (and b!2117851 c!339535) b!2117860))

(assert (= (and b!2117851 (not c!339535)) b!2117849))

(assert (= (or b!2117853 b!2117851) bm!128631))

(assert (= (or b!2117853 b!2117851) bm!128629))

(assert (= (or b!2117853 b!2117851) bm!128630))

(assert (= (and d!642904 res!918428) b!2117859))

(assert (= (and b!2117859 res!918426) b!2117858))

(assert (= (and b!2117858 res!918431) b!2117856))

(assert (= (and b!2117856 res!918427) b!2117852))

(assert (= (and b!2117852 res!918430) b!2117850))

(assert (= (and b!2117850 res!918432) b!2117857))

(declare-fun m!2572646 () Bool)

(assert (=> b!2117856 m!2572646))

(assert (=> b!2117848 m!2571987))

(declare-fun m!2572648 () Bool)

(assert (=> b!2117858 m!2572648))

(declare-fun m!2572650 () Bool)

(assert (=> bm!128631 m!2572650))

(declare-fun m!2572652 () Bool)

(assert (=> b!2117857 m!2572652))

(declare-fun m!2572654 () Bool)

(assert (=> b!2117859 m!2572654))

(declare-fun m!2572656 () Bool)

(assert (=> bm!128629 m!2572656))

(assert (=> b!2117852 m!2572640))

(declare-fun m!2572658 () Bool)

(assert (=> b!2117851 m!2572658))

(declare-fun m!2572660 () Bool)

(assert (=> b!2117851 m!2572660))

(assert (=> b!2117851 m!2571837))

(assert (=> b!2117851 m!2572658))

(declare-fun m!2572662 () Bool)

(assert (=> b!2117851 m!2572662))

(declare-fun m!2572664 () Bool)

(assert (=> b!2117851 m!2572664))

(assert (=> b!2117851 m!2571837))

(declare-fun m!2572666 () Bool)

(assert (=> b!2117851 m!2572666))

(declare-fun m!2572668 () Bool)

(assert (=> d!642904 m!2572668))

(declare-fun m!2572670 () Bool)

(assert (=> d!642904 m!2572670))

(assert (=> d!642904 m!2571837))

(declare-fun m!2572672 () Bool)

(assert (=> d!642904 m!2572672))

(assert (=> d!642904 m!2571837))

(declare-fun m!2572674 () Bool)

(assert (=> d!642904 m!2572674))

(declare-fun m!2572676 () Bool)

(assert (=> bm!128630 m!2572676))

(assert (=> d!642684 d!642904))

(declare-fun b!2117878 () Bool)

(declare-fun e!1348181 () List!23682)

(assert (=> b!2117878 (= e!1348181 (Cons!23598 (h!28999 (list!9507 (_1!13446 (_1!13450 lt!793994)))) (++!6313 (t!196191 (list!9507 (_1!13446 (_1!13450 lt!793994)))) (list!9507 (_2!13446 (_1!13450 lt!793994))))))))

(declare-fun d!642906 () Bool)

(declare-fun e!1348182 () Bool)

(assert (=> d!642906 e!1348182))

(declare-fun res!918434 () Bool)

(assert (=> d!642906 (=> (not res!918434) (not e!1348182))))

(declare-fun lt!794205 () List!23682)

(assert (=> d!642906 (= res!918434 (= (content!3387 lt!794205) ((_ map or) (content!3387 (list!9507 (_1!13446 (_1!13450 lt!793994)))) (content!3387 (list!9507 (_2!13446 (_1!13450 lt!793994)))))))))

(assert (=> d!642906 (= lt!794205 e!1348181)))

(declare-fun c!339536 () Bool)

(assert (=> d!642906 (= c!339536 ((_ is Nil!23598) (list!9507 (_1!13446 (_1!13450 lt!793994)))))))

(assert (=> d!642906 (= (++!6313 (list!9507 (_1!13446 (_1!13450 lt!793994))) (list!9507 (_2!13446 (_1!13450 lt!793994)))) lt!794205)))

(declare-fun b!2117880 () Bool)

(assert (=> b!2117880 (= e!1348182 (or (not (= (list!9507 (_2!13446 (_1!13450 lt!793994))) Nil!23598)) (= lt!794205 (list!9507 (_1!13446 (_1!13450 lt!793994))))))))

(declare-fun b!2117879 () Bool)

(declare-fun res!918433 () Bool)

(assert (=> b!2117879 (=> (not res!918433) (not e!1348182))))

(assert (=> b!2117879 (= res!918433 (= (size!18433 lt!794205) (+ (size!18433 (list!9507 (_1!13446 (_1!13450 lt!793994)))) (size!18433 (list!9507 (_2!13446 (_1!13450 lt!793994)))))))))

(declare-fun b!2117877 () Bool)

(assert (=> b!2117877 (= e!1348181 (list!9507 (_2!13446 (_1!13450 lt!793994))))))

(assert (= (and d!642906 c!339536) b!2117877))

(assert (= (and d!642906 (not c!339536)) b!2117878))

(assert (= (and d!642906 res!918434) b!2117879))

(assert (= (and b!2117879 res!918433) b!2117880))

(assert (=> b!2117878 m!2572029))

(declare-fun m!2572678 () Bool)

(assert (=> b!2117878 m!2572678))

(declare-fun m!2572680 () Bool)

(assert (=> d!642906 m!2572680))

(assert (=> d!642906 m!2572023))

(declare-fun m!2572682 () Bool)

(assert (=> d!642906 m!2572682))

(assert (=> d!642906 m!2572029))

(declare-fun m!2572684 () Bool)

(assert (=> d!642906 m!2572684))

(declare-fun m!2572686 () Bool)

(assert (=> b!2117879 m!2572686))

(assert (=> b!2117879 m!2572023))

(declare-fun m!2572688 () Bool)

(assert (=> b!2117879 m!2572688))

(assert (=> b!2117879 m!2572029))

(declare-fun m!2572690 () Bool)

(assert (=> b!2117879 m!2572690))

(assert (=> d!642684 d!642906))

(assert (=> d!642684 d!642764))

(declare-fun bs!441434 () Bool)

(declare-fun d!642908 () Bool)

(assert (= bs!441434 (and d!642908 d!642848)))

(declare-fun lambda!78360 () Int)

(assert (=> bs!441434 (= lambda!78360 lambda!78335)))

(declare-fun bs!441435 () Bool)

(assert (= bs!441435 (and d!642908 d!642776)))

(assert (=> bs!441435 (= lambda!78360 lambda!78326)))

(declare-fun bs!441436 () Bool)

(assert (= bs!441436 (and d!642908 d!642872)))

(assert (=> bs!441436 (= lambda!78360 lambda!78338)))

(declare-fun bs!441437 () Bool)

(assert (= bs!441437 (and d!642908 d!642800)))

(assert (=> bs!441437 (= lambda!78360 lambda!78331)))

(declare-fun bs!441438 () Bool)

(assert (= bs!441438 (and d!642908 d!642878)))

(assert (=> bs!441438 (= lambda!78360 lambda!78339)))

(declare-fun bs!441439 () Bool)

(assert (= bs!441439 (and d!642908 d!642866)))

(assert (=> bs!441439 (= lambda!78360 lambda!78337)))

(declare-fun bs!441440 () Bool)

(assert (= bs!441440 (and d!642908 d!642814)))

(assert (=> bs!441440 (= lambda!78360 lambda!78333)))

(declare-fun bs!441441 () Bool)

(assert (= bs!441441 (and d!642908 d!642836)))

(assert (=> bs!441441 (= lambda!78360 lambda!78334)))

(declare-fun bs!441442 () Bool)

(assert (= bs!441442 (and d!642908 d!642786)))

(assert (=> bs!441442 (= lambda!78360 lambda!78327)))

(declare-fun bs!441443 () Bool)

(assert (= bs!441443 (and d!642908 d!642806)))

(assert (=> bs!441443 (= lambda!78360 lambda!78332)))

(assert (=> d!642908 (= (inv!31182 setElem!14374) (forall!4846 (exprs!1715 setElem!14374) lambda!78360))))

(declare-fun bs!441444 () Bool)

(assert (= bs!441444 d!642908))

(declare-fun m!2572692 () Bool)

(assert (=> bs!441444 m!2572692))

(assert (=> setNonEmpty!14374 d!642908))

(declare-fun bs!441445 () Bool)

(declare-fun d!642910 () Bool)

(assert (= bs!441445 (and d!642910 d!642848)))

(declare-fun lambda!78361 () Int)

(assert (=> bs!441445 (= lambda!78361 lambda!78335)))

(declare-fun bs!441446 () Bool)

(assert (= bs!441446 (and d!642910 d!642776)))

(assert (=> bs!441446 (= lambda!78361 lambda!78326)))

(declare-fun bs!441447 () Bool)

(assert (= bs!441447 (and d!642910 d!642872)))

(assert (=> bs!441447 (= lambda!78361 lambda!78338)))

(declare-fun bs!441448 () Bool)

(assert (= bs!441448 (and d!642910 d!642800)))

(assert (=> bs!441448 (= lambda!78361 lambda!78331)))

(declare-fun bs!441449 () Bool)

(assert (= bs!441449 (and d!642910 d!642878)))

(assert (=> bs!441449 (= lambda!78361 lambda!78339)))

(declare-fun bs!441450 () Bool)

(assert (= bs!441450 (and d!642910 d!642866)))

(assert (=> bs!441450 (= lambda!78361 lambda!78337)))

(declare-fun bs!441451 () Bool)

(assert (= bs!441451 (and d!642910 d!642836)))

(assert (=> bs!441451 (= lambda!78361 lambda!78334)))

(declare-fun bs!441452 () Bool)

(assert (= bs!441452 (and d!642910 d!642786)))

(assert (=> bs!441452 (= lambda!78361 lambda!78327)))

(declare-fun bs!441453 () Bool)

(assert (= bs!441453 (and d!642910 d!642806)))

(assert (=> bs!441453 (= lambda!78361 lambda!78332)))

(declare-fun bs!441454 () Bool)

(assert (= bs!441454 (and d!642910 d!642908)))

(assert (=> bs!441454 (= lambda!78361 lambda!78360)))

(declare-fun bs!441455 () Bool)

(assert (= bs!441455 (and d!642910 d!642814)))

(assert (=> bs!441455 (= lambda!78361 lambda!78333)))

(assert (=> d!642910 (= (inv!31182 setElem!14372) (forall!4846 (exprs!1715 setElem!14372) lambda!78361))))

(declare-fun bs!441456 () Bool)

(assert (= bs!441456 d!642910))

(declare-fun m!2572694 () Bool)

(assert (=> bs!441456 m!2572694))

(assert (=> setNonEmpty!14372 d!642910))

(declare-fun bs!441457 () Bool)

(declare-fun d!642912 () Bool)

(assert (= bs!441457 (and d!642912 b!2117207)))

(declare-fun lambda!78362 () Int)

(assert (=> bs!441457 (not (= lambda!78362 lambda!78318))))

(declare-fun bs!441458 () Bool)

(assert (= bs!441458 (and d!642912 b!2117209)))

(declare-fun lt!794214 () Int)

(assert (=> bs!441458 (= (= lt!794214 (_1!13444 (_1!13445 lt!793984))) (= lambda!78362 lambda!78317))))

(declare-fun bs!441459 () Bool)

(assert (= bs!441459 (and d!642912 b!2117859)))

(assert (=> bs!441459 (= (= lt!794214 (_1!13444 (_1!13445 lt!794201))) (= lambda!78362 lambda!78358))))

(declare-fun bs!441460 () Bool)

(assert (= bs!441460 (and d!642912 b!2117039)))

(assert (=> bs!441460 (not (= lambda!78362 lambda!78293))))

(declare-fun bs!441461 () Bool)

(assert (= bs!441461 (and d!642912 d!642684)))

(assert (=> bs!441461 (= (= lt!794214 (_1!13444 (_1!13445 lt!793988))) (= lambda!78362 lambda!78319))))

(declare-fun bs!441462 () Bool)

(assert (= bs!441462 (and d!642912 b!2117857)))

(assert (=> bs!441462 (not (= lambda!78362 lambda!78359))))

(declare-fun bs!441463 () Bool)

(assert (= bs!441463 (and d!642912 b!2117203)))

(assert (=> bs!441463 (= (= lt!794214 e!1347636) (= lambda!78362 lambda!78315))))

(declare-fun bs!441464 () Bool)

(assert (= bs!441464 (and d!642912 b!2117201)))

(assert (=> bs!441464 (= (= lt!794214 lt!793973) (= lambda!78362 lambda!78316))))

(declare-fun bs!441465 () Bool)

(assert (= bs!441465 (and d!642912 d!642904)))

(assert (=> bs!441465 (= (= lt!794214 lt!794197) (= lambda!78362 lambda!78355))))

(declare-fun bs!441466 () Bool)

(assert (= bs!441466 (and d!642912 d!642682)))

(assert (=> bs!441466 (= (= lt!794214 lt!793980) (= lambda!78362 lambda!78314))))

(assert (=> bs!441461 (not (= lambda!78362 lambda!78320))))

(declare-fun bs!441467 () Bool)

(assert (= bs!441467 (and d!642912 b!2117069)))

(assert (=> bs!441467 (= (= lt!794214 (_1!13444 (_1!13445 lt!793905))) (= lambda!78362 lambda!78292))))

(declare-fun bs!441468 () Bool)

(assert (= bs!441468 (and d!642912 d!642672)))

(assert (=> bs!441468 (not (= lambda!78362 lambda!78299))))

(declare-fun bs!441469 () Bool)

(assert (= bs!441469 (and d!642912 b!2117853)))

(assert (=> bs!441469 (= (= lt!794214 e!1347754) (= lambda!78362 lambda!78356))))

(declare-fun bs!441470 () Bool)

(assert (= bs!441470 (and d!642912 b!2117851)))

(assert (=> bs!441470 (= (= lt!794214 lt!794190) (= lambda!78362 lambda!78357))))

(assert (=> bs!441468 (= (= lt!794214 (_1!13444 (_1!13445 lt!793929))) (= lambda!78362 lambda!78298))))

(assert (=> d!642912 true))

(declare-fun bs!441471 () Bool)

(declare-fun b!2117886 () Bool)

(assert (= bs!441471 (and b!2117886 b!2117207)))

(declare-fun lambda!78363 () Int)

(assert (=> bs!441471 (not (= lambda!78363 lambda!78318))))

(declare-fun bs!441472 () Bool)

(assert (= bs!441472 (and b!2117886 b!2117209)))

(assert (=> bs!441472 (= (= lt!793985 (_1!13444 (_1!13445 lt!793984))) (= lambda!78363 lambda!78317))))

(declare-fun bs!441473 () Bool)

(assert (= bs!441473 (and b!2117886 b!2117859)))

(assert (=> bs!441473 (= (= lt!793985 (_1!13444 (_1!13445 lt!794201))) (= lambda!78363 lambda!78358))))

(declare-fun bs!441474 () Bool)

(assert (= bs!441474 (and b!2117886 b!2117039)))

(assert (=> bs!441474 (not (= lambda!78363 lambda!78293))))

(declare-fun bs!441475 () Bool)

(assert (= bs!441475 (and b!2117886 d!642912)))

(assert (=> bs!441475 (= (= lt!793985 lt!794214) (= lambda!78363 lambda!78362))))

(declare-fun bs!441476 () Bool)

(assert (= bs!441476 (and b!2117886 d!642684)))

(assert (=> bs!441476 (= (= lt!793985 (_1!13444 (_1!13445 lt!793988))) (= lambda!78363 lambda!78319))))

(declare-fun bs!441477 () Bool)

(assert (= bs!441477 (and b!2117886 b!2117857)))

(assert (=> bs!441477 (not (= lambda!78363 lambda!78359))))

(declare-fun bs!441478 () Bool)

(assert (= bs!441478 (and b!2117886 b!2117203)))

(assert (=> bs!441478 (= (= lt!793985 e!1347636) (= lambda!78363 lambda!78315))))

(declare-fun bs!441479 () Bool)

(assert (= bs!441479 (and b!2117886 b!2117201)))

(assert (=> bs!441479 (= (= lt!793985 lt!793973) (= lambda!78363 lambda!78316))))

(declare-fun bs!441480 () Bool)

(assert (= bs!441480 (and b!2117886 d!642904)))

(assert (=> bs!441480 (= (= lt!793985 lt!794197) (= lambda!78363 lambda!78355))))

(declare-fun bs!441481 () Bool)

(assert (= bs!441481 (and b!2117886 d!642682)))

(assert (=> bs!441481 (= (= lt!793985 lt!793980) (= lambda!78363 lambda!78314))))

(assert (=> bs!441476 (not (= lambda!78363 lambda!78320))))

(declare-fun bs!441482 () Bool)

(assert (= bs!441482 (and b!2117886 b!2117069)))

(assert (=> bs!441482 (= (= lt!793985 (_1!13444 (_1!13445 lt!793905))) (= lambda!78363 lambda!78292))))

(declare-fun bs!441483 () Bool)

(assert (= bs!441483 (and b!2117886 d!642672)))

(assert (=> bs!441483 (not (= lambda!78363 lambda!78299))))

(declare-fun bs!441484 () Bool)

(assert (= bs!441484 (and b!2117886 b!2117853)))

(assert (=> bs!441484 (= (= lt!793985 e!1347754) (= lambda!78363 lambda!78356))))

(declare-fun bs!441485 () Bool)

(assert (= bs!441485 (and b!2117886 b!2117851)))

(assert (=> bs!441485 (= (= lt!793985 lt!794190) (= lambda!78363 lambda!78357))))

(assert (=> bs!441483 (= (= lt!793985 (_1!13444 (_1!13445 lt!793929))) (= lambda!78363 lambda!78298))))

(assert (=> b!2117886 true))

(declare-fun bs!441486 () Bool)

(declare-fun b!2117884 () Bool)

(assert (= bs!441486 (and b!2117884 b!2117886)))

(declare-fun lambda!78364 () Int)

(declare-fun lt!794207 () Int)

(assert (=> bs!441486 (= (= lt!794207 lt!793985) (= lambda!78364 lambda!78363))))

(declare-fun bs!441487 () Bool)

(assert (= bs!441487 (and b!2117884 b!2117207)))

(assert (=> bs!441487 (not (= lambda!78364 lambda!78318))))

(declare-fun bs!441488 () Bool)

(assert (= bs!441488 (and b!2117884 b!2117209)))

(assert (=> bs!441488 (= (= lt!794207 (_1!13444 (_1!13445 lt!793984))) (= lambda!78364 lambda!78317))))

(declare-fun bs!441489 () Bool)

(assert (= bs!441489 (and b!2117884 b!2117859)))

(assert (=> bs!441489 (= (= lt!794207 (_1!13444 (_1!13445 lt!794201))) (= lambda!78364 lambda!78358))))

(declare-fun bs!441490 () Bool)

(assert (= bs!441490 (and b!2117884 b!2117039)))

(assert (=> bs!441490 (not (= lambda!78364 lambda!78293))))

(declare-fun bs!441491 () Bool)

(assert (= bs!441491 (and b!2117884 d!642912)))

(assert (=> bs!441491 (= (= lt!794207 lt!794214) (= lambda!78364 lambda!78362))))

(declare-fun bs!441492 () Bool)

(assert (= bs!441492 (and b!2117884 d!642684)))

(assert (=> bs!441492 (= (= lt!794207 (_1!13444 (_1!13445 lt!793988))) (= lambda!78364 lambda!78319))))

(declare-fun bs!441493 () Bool)

(assert (= bs!441493 (and b!2117884 b!2117857)))

(assert (=> bs!441493 (not (= lambda!78364 lambda!78359))))

(declare-fun bs!441494 () Bool)

(assert (= bs!441494 (and b!2117884 b!2117203)))

(assert (=> bs!441494 (= (= lt!794207 e!1347636) (= lambda!78364 lambda!78315))))

(declare-fun bs!441495 () Bool)

(assert (= bs!441495 (and b!2117884 b!2117201)))

(assert (=> bs!441495 (= (= lt!794207 lt!793973) (= lambda!78364 lambda!78316))))

(declare-fun bs!441496 () Bool)

(assert (= bs!441496 (and b!2117884 d!642904)))

(assert (=> bs!441496 (= (= lt!794207 lt!794197) (= lambda!78364 lambda!78355))))

(declare-fun bs!441497 () Bool)

(assert (= bs!441497 (and b!2117884 d!642682)))

(assert (=> bs!441497 (= (= lt!794207 lt!793980) (= lambda!78364 lambda!78314))))

(assert (=> bs!441492 (not (= lambda!78364 lambda!78320))))

(declare-fun bs!441498 () Bool)

(assert (= bs!441498 (and b!2117884 b!2117069)))

(assert (=> bs!441498 (= (= lt!794207 (_1!13444 (_1!13445 lt!793905))) (= lambda!78364 lambda!78292))))

(declare-fun bs!441499 () Bool)

(assert (= bs!441499 (and b!2117884 d!642672)))

(assert (=> bs!441499 (not (= lambda!78364 lambda!78299))))

(declare-fun bs!441500 () Bool)

(assert (= bs!441500 (and b!2117884 b!2117853)))

(assert (=> bs!441500 (= (= lt!794207 e!1347754) (= lambda!78364 lambda!78356))))

(declare-fun bs!441501 () Bool)

(assert (= bs!441501 (and b!2117884 b!2117851)))

(assert (=> bs!441501 (= (= lt!794207 lt!794190) (= lambda!78364 lambda!78357))))

(assert (=> bs!441499 (= (= lt!794207 (_1!13444 (_1!13445 lt!793929))) (= lambda!78364 lambda!78298))))

(assert (=> b!2117884 true))

(declare-fun bs!441502 () Bool)

(declare-fun b!2117892 () Bool)

(assert (= bs!441502 (and b!2117892 b!2117886)))

(declare-fun lt!794218 () tuple3!2814)

(declare-fun lambda!78365 () Int)

(assert (=> bs!441502 (= (= (_1!13444 (_1!13445 lt!794218)) lt!793985) (= lambda!78365 lambda!78363))))

(declare-fun bs!441503 () Bool)

(assert (= bs!441503 (and b!2117892 b!2117207)))

(assert (=> bs!441503 (not (= lambda!78365 lambda!78318))))

(declare-fun bs!441504 () Bool)

(assert (= bs!441504 (and b!2117892 b!2117884)))

(assert (=> bs!441504 (= (= (_1!13444 (_1!13445 lt!794218)) lt!794207) (= lambda!78365 lambda!78364))))

(declare-fun bs!441505 () Bool)

(assert (= bs!441505 (and b!2117892 b!2117209)))

(assert (=> bs!441505 (= (= (_1!13444 (_1!13445 lt!794218)) (_1!13444 (_1!13445 lt!793984))) (= lambda!78365 lambda!78317))))

(declare-fun bs!441506 () Bool)

(assert (= bs!441506 (and b!2117892 b!2117859)))

(assert (=> bs!441506 (= (= (_1!13444 (_1!13445 lt!794218)) (_1!13444 (_1!13445 lt!794201))) (= lambda!78365 lambda!78358))))

(declare-fun bs!441507 () Bool)

(assert (= bs!441507 (and b!2117892 b!2117039)))

(assert (=> bs!441507 (not (= lambda!78365 lambda!78293))))

(declare-fun bs!441508 () Bool)

(assert (= bs!441508 (and b!2117892 d!642912)))

(assert (=> bs!441508 (= (= (_1!13444 (_1!13445 lt!794218)) lt!794214) (= lambda!78365 lambda!78362))))

(declare-fun bs!441509 () Bool)

(assert (= bs!441509 (and b!2117892 d!642684)))

(assert (=> bs!441509 (= (= (_1!13444 (_1!13445 lt!794218)) (_1!13444 (_1!13445 lt!793988))) (= lambda!78365 lambda!78319))))

(declare-fun bs!441510 () Bool)

(assert (= bs!441510 (and b!2117892 b!2117857)))

(assert (=> bs!441510 (not (= lambda!78365 lambda!78359))))

(declare-fun bs!441511 () Bool)

(assert (= bs!441511 (and b!2117892 b!2117203)))

(assert (=> bs!441511 (= (= (_1!13444 (_1!13445 lt!794218)) e!1347636) (= lambda!78365 lambda!78315))))

(declare-fun bs!441512 () Bool)

(assert (= bs!441512 (and b!2117892 b!2117201)))

(assert (=> bs!441512 (= (= (_1!13444 (_1!13445 lt!794218)) lt!793973) (= lambda!78365 lambda!78316))))

(declare-fun bs!441513 () Bool)

(assert (= bs!441513 (and b!2117892 d!642904)))

(assert (=> bs!441513 (= (= (_1!13444 (_1!13445 lt!794218)) lt!794197) (= lambda!78365 lambda!78355))))

(declare-fun bs!441514 () Bool)

(assert (= bs!441514 (and b!2117892 d!642682)))

(assert (=> bs!441514 (= (= (_1!13444 (_1!13445 lt!794218)) lt!793980) (= lambda!78365 lambda!78314))))

(assert (=> bs!441509 (not (= lambda!78365 lambda!78320))))

(declare-fun bs!441515 () Bool)

(assert (= bs!441515 (and b!2117892 b!2117069)))

(assert (=> bs!441515 (= (= (_1!13444 (_1!13445 lt!794218)) (_1!13444 (_1!13445 lt!793905))) (= lambda!78365 lambda!78292))))

(declare-fun bs!441516 () Bool)

(assert (= bs!441516 (and b!2117892 d!642672)))

(assert (=> bs!441516 (not (= lambda!78365 lambda!78299))))

(declare-fun bs!441517 () Bool)

(assert (= bs!441517 (and b!2117892 b!2117853)))

(assert (=> bs!441517 (= (= (_1!13444 (_1!13445 lt!794218)) e!1347754) (= lambda!78365 lambda!78356))))

(declare-fun bs!441518 () Bool)

(assert (= bs!441518 (and b!2117892 b!2117851)))

(assert (=> bs!441518 (= (= (_1!13444 (_1!13445 lt!794218)) lt!794190) (= lambda!78365 lambda!78357))))

(assert (=> bs!441516 (= (= (_1!13444 (_1!13445 lt!794218)) (_1!13444 (_1!13445 lt!793929))) (= lambda!78365 lambda!78298))))

(declare-fun b!2117894 () Bool)

(declare-fun e!1348203 () Bool)

(declare-fun mapRes!11600 () Bool)

(assert (=> b!2117894 (= e!1348203 mapRes!11600)))

(declare-fun condMapEmpty!11601 () Bool)

(declare-fun mapDefault!11601 () List!23681)

(assert (=> b!2117894 (= condMapEmpty!11601 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794218)))))))) ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11601)))))

(declare-fun b!2117895 () Bool)

(declare-fun e!1348202 () Bool)

(declare-fun e!1348193 () Bool)

(assert (=> b!2117895 (= e!1348202 e!1348193)))

(declare-fun b!2117896 () Bool)

(declare-fun e!1348195 () Bool)

(declare-fun e!1348194 () Bool)

(assert (=> b!2117896 (= e!1348195 e!1348194)))

(declare-fun b!2117897 () Bool)

(assert (=> b!2117897 (= e!1348194 e!1348203)))

(declare-fun mapIsEmpty!11600 () Bool)

(declare-fun mapRes!11601 () Bool)

(assert (=> mapIsEmpty!11600 mapRes!11601))

(declare-fun mapNonEmpty!11600 () Bool)

(assert (=> mapNonEmpty!11600 (= mapRes!11600 true)))

(declare-fun mapKey!11600 () (_ BitVec 32))

(declare-fun mapValue!11600 () List!23681)

(declare-fun mapRest!11600 () (Array (_ BitVec 32) List!23681))

(assert (=> mapNonEmpty!11600 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794218)))))))) (store mapRest!11600 mapKey!11600 mapValue!11600))))

(declare-fun b!2117898 () Bool)

(declare-fun e!1348201 () Bool)

(assert (=> b!2117898 (= e!1348193 e!1348201)))

(declare-fun b!2117899 () Bool)

(declare-fun e!1348196 () Bool)

(declare-fun e!1348199 () Bool)

(assert (=> b!2117899 (= e!1348196 e!1348199)))

(declare-fun b!2117900 () Bool)

(declare-fun e!1348198 () Bool)

(assert (=> b!2117900 (= e!1348198 e!1348196)))

(declare-fun b!2117901 () Bool)

(declare-fun e!1348188 () Bool)

(declare-fun lt!794220 () MutLongMap!2397)

(assert (=> b!2117901 (= e!1348188 (and e!1348198 ((_ is LongMap!2397) lt!794220)))))

(assert (=> b!2117901 (= lt!794220 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794218)))))))

(declare-fun b!2117902 () Bool)

(declare-fun e!1348190 () Bool)

(assert (=> b!2117902 (= e!1348190 mapRes!11601)))

(declare-fun condMapEmpty!11600 () Bool)

(declare-fun mapDefault!11600 () List!23683)

(assert (=> b!2117902 (= condMapEmpty!11600 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794218)))))))) ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11600)))))

(declare-fun b!2117903 () Bool)

(declare-fun e!1348191 () Bool)

(declare-fun e!1348200 () Bool)

(assert (=> b!2117903 (= e!1348191 e!1348200)))

(declare-fun b!2117905 () Bool)

(declare-fun e!1348197 () Bool)

(declare-fun lt!794221 () MutLongMap!2396)

(assert (=> b!2117905 (= e!1348201 (and e!1348197 ((_ is LongMap!2396) lt!794221)))))

(assert (=> b!2117905 (= lt!794221 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794218)))))))

(declare-fun setNonEmpty!14402 () Bool)

(declare-fun setRes!14402 () Bool)

(assert (=> setNonEmpty!14402 (= setRes!14402 true)))

(declare-fun setElem!14402 () Context!2430)

(declare-fun setRest!14402 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14402 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!794218)))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14402 true) setRest!14402))))

(declare-fun b!2117906 () Bool)

(assert (=> b!2117906 (= e!1348197 e!1348195)))

(declare-fun mapIsEmpty!11601 () Bool)

(assert (=> mapIsEmpty!11601 mapRes!11600))

(declare-fun setIsEmpty!14402 () Bool)

(assert (=> setIsEmpty!14402 setRes!14402))

(declare-fun b!2117907 () Bool)

(declare-fun e!1348189 () Bool)

(assert (=> b!2117907 (= e!1348189 e!1348188)))

(declare-fun b!2117908 () Bool)

(assert (=> b!2117908 (= e!1348200 setRes!14402)))

(declare-fun condSetEmpty!14402 () Bool)

(assert (=> b!2117908 (= condSetEmpty!14402 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!794218)))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117904 () Bool)

(declare-fun e!1348192 () Bool)

(assert (=> b!2117904 (= e!1348192 e!1348189)))

(assert (=> b!2117892 (and e!1348191 e!1348192 e!1348202)))

(declare-fun b!2117909 () Bool)

(assert (=> b!2117909 (= e!1348199 e!1348190)))

(declare-fun mapNonEmpty!11601 () Bool)

(assert (=> mapNonEmpty!11601 (= mapRes!11601 true)))

(declare-fun mapRest!11601 () (Array (_ BitVec 32) List!23683))

(declare-fun mapKey!11601 () (_ BitVec 32))

(declare-fun mapValue!11601 () List!23683)

(assert (=> mapNonEmpty!11601 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794218)))))))) (store mapRest!11601 mapKey!11601 mapValue!11601))))

(assert (= (and b!2117908 condSetEmpty!14402) setIsEmpty!14402))

(assert (= (and b!2117908 (not condSetEmpty!14402)) setNonEmpty!14402))

(assert (= b!2117903 b!2117908))

(assert (= (and b!2117892 ((_ is Cons!23600) (_2!13444 (_1!13445 lt!794218)))) b!2117903))

(assert (= (and b!2117902 condMapEmpty!11600) mapIsEmpty!11600))

(assert (= (and b!2117902 (not condMapEmpty!11600)) mapNonEmpty!11601))

(assert (= b!2117909 b!2117902))

(assert (= b!2117899 b!2117909))

(assert (= b!2117900 b!2117899))

(assert (= (and b!2117901 ((_ is LongMap!2397) (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794218)))))) b!2117900))

(assert (= b!2117907 b!2117901))

(assert (= (and b!2117904 ((_ is HashMap!2310) (cache!2691 (_2!13445 lt!794218)))) b!2117907))

(assert (= b!2117892 b!2117904))

(assert (= (and b!2117894 condMapEmpty!11601) mapIsEmpty!11601))

(assert (= (and b!2117894 (not condMapEmpty!11601)) mapNonEmpty!11600))

(assert (= b!2117897 b!2117894))

(assert (= b!2117896 b!2117897))

(assert (= b!2117906 b!2117896))

(assert (= (and b!2117905 ((_ is LongMap!2396) (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794218)))))) b!2117906))

(assert (= b!2117898 b!2117905))

(assert (= (and b!2117895 ((_ is HashMap!2311) (cache!2692 (_3!1876 lt!794218)))) b!2117898))

(assert (= b!2117892 b!2117895))

(assert (=> b!2117897 (< (dynLambda!11297 order!14569 (defaultEntry!2761 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794218)))))))) (dynLambda!11298 order!14571 lambda!78365))))

(assert (=> b!2117898 (< (dynLambda!11299 order!14573 (defaultValue!2473 (cache!2692 (_3!1876 lt!794218)))) (dynLambda!11298 order!14571 lambda!78365))))

(assert (=> b!2117909 (< (dynLambda!11300 order!14575 (defaultEntry!2762 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794218)))))))) (dynLambda!11298 order!14571 lambda!78365))))

(assert (=> b!2117907 (< (dynLambda!11301 order!14577 (defaultValue!2472 (cache!2691 (_2!13445 lt!794218)))) (dynLambda!11298 order!14571 lambda!78365))))

(declare-fun m!2572696 () Bool)

(assert (=> mapNonEmpty!11600 m!2572696))

(declare-fun m!2572698 () Bool)

(assert (=> mapNonEmpty!11601 m!2572698))

(declare-fun bs!441519 () Bool)

(declare-fun b!2117890 () Bool)

(assert (= bs!441519 (and b!2117890 b!2117886)))

(declare-fun lambda!78366 () Int)

(assert (=> bs!441519 (not (= lambda!78366 lambda!78363))))

(declare-fun bs!441520 () Bool)

(assert (= bs!441520 (and b!2117890 b!2117207)))

(assert (=> bs!441520 (= lambda!78366 lambda!78318)))

(declare-fun bs!441521 () Bool)

(assert (= bs!441521 (and b!2117890 b!2117884)))

(assert (=> bs!441521 (not (= lambda!78366 lambda!78364))))

(declare-fun bs!441522 () Bool)

(assert (= bs!441522 (and b!2117890 b!2117209)))

(assert (=> bs!441522 (not (= lambda!78366 lambda!78317))))

(declare-fun bs!441523 () Bool)

(assert (= bs!441523 (and b!2117890 b!2117892)))

(assert (=> bs!441523 (not (= lambda!78366 lambda!78365))))

(declare-fun bs!441524 () Bool)

(assert (= bs!441524 (and b!2117890 b!2117859)))

(assert (=> bs!441524 (not (= lambda!78366 lambda!78358))))

(declare-fun bs!441525 () Bool)

(assert (= bs!441525 (and b!2117890 b!2117039)))

(assert (=> bs!441525 (= lambda!78366 lambda!78293)))

(declare-fun bs!441526 () Bool)

(assert (= bs!441526 (and b!2117890 d!642912)))

(assert (=> bs!441526 (not (= lambda!78366 lambda!78362))))

(declare-fun bs!441527 () Bool)

(assert (= bs!441527 (and b!2117890 d!642684)))

(assert (=> bs!441527 (not (= lambda!78366 lambda!78319))))

(declare-fun bs!441528 () Bool)

(assert (= bs!441528 (and b!2117890 b!2117857)))

(assert (=> bs!441528 (= lambda!78366 lambda!78359)))

(declare-fun bs!441529 () Bool)

(assert (= bs!441529 (and b!2117890 b!2117203)))

(assert (=> bs!441529 (not (= lambda!78366 lambda!78315))))

(declare-fun bs!441530 () Bool)

(assert (= bs!441530 (and b!2117890 b!2117201)))

(assert (=> bs!441530 (not (= lambda!78366 lambda!78316))))

(declare-fun bs!441531 () Bool)

(assert (= bs!441531 (and b!2117890 d!642904)))

(assert (=> bs!441531 (not (= lambda!78366 lambda!78355))))

(declare-fun bs!441532 () Bool)

(assert (= bs!441532 (and b!2117890 d!642682)))

(assert (=> bs!441532 (not (= lambda!78366 lambda!78314))))

(assert (=> bs!441527 (= lambda!78366 lambda!78320)))

(declare-fun bs!441533 () Bool)

(assert (= bs!441533 (and b!2117890 b!2117069)))

(assert (=> bs!441533 (not (= lambda!78366 lambda!78292))))

(declare-fun bs!441534 () Bool)

(assert (= bs!441534 (and b!2117890 d!642672)))

(assert (=> bs!441534 (= lambda!78366 lambda!78299)))

(declare-fun bs!441535 () Bool)

(assert (= bs!441535 (and b!2117890 b!2117853)))

(assert (=> bs!441535 (not (= lambda!78366 lambda!78356))))

(declare-fun bs!441536 () Bool)

(assert (= bs!441536 (and b!2117890 b!2117851)))

(assert (=> bs!441536 (not (= lambda!78366 lambda!78357))))

(assert (=> bs!441534 (not (= lambda!78366 lambda!78298))))

(assert (=> b!2117890 true))

(declare-fun b!2117881 () Bool)

(declare-fun e!1348187 () Bool)

(assert (=> b!2117881 (= e!1348187 (lostCauseZipper!52 (_1!13452 lt!793983)))))

(declare-fun b!2117882 () Bool)

(declare-fun e!1348184 () Int)

(assert (=> b!2117882 (= e!1348184 lt!793985)))

(declare-fun bm!128632 () Bool)

(declare-fun call!128639 () Bool)

(declare-fun c!339537 () Bool)

(assert (=> bm!128632 (= call!128639 (forall!4845 (Cons!23600 (StackFrame!23 lt!793898 lt!793907 e!1347636 lt!793980 totalInput!1306) Nil!23600) (ite c!339537 lambda!78363 lambda!78362)))))

(declare-fun b!2117883 () Bool)

(declare-fun res!918441 () Bool)

(declare-fun e!1348186 () Bool)

(assert (=> b!2117883 (=> (not res!918441) (not e!1348186))))

(assert (=> b!2117883 (= res!918441 (= (totalInput!2863 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun lt!794219 () Int)

(declare-fun lt!794209 () tuple3!2814)

(declare-fun lt!794217 () tuple3!2818)

(assert (=> b!2117884 (= lt!794209 (furthestNullablePositionStackMem!5 (_1!13452 lt!794217) (+ lt!793907 1 1) totalInput!1306 lt!793906 lt!794219 (Cons!23600 (StackFrame!23 (_1!13452 lt!793983) (+ lt!793907 1) lt!793985 lt!794214 totalInput!1306) (Cons!23600 (StackFrame!23 lt!793898 lt!793907 e!1347636 lt!793980 totalInput!1306) Nil!23600)) (_2!13452 lt!794217) (_3!1879 lt!794217) cacheFurthestNullable!141))))

(declare-fun lt!794208 () Unit!37556)

(declare-fun lt!794215 () Unit!37556)

(assert (=> b!2117884 (= lt!794208 lt!794215)))

(declare-fun call!128638 () Bool)

(assert (=> b!2117884 call!128638))

(declare-fun call!128637 () Unit!37556)

(assert (=> b!2117884 (= lt!794215 call!128637)))

(declare-fun lt!794206 () Unit!37556)

(declare-fun Unit!37574 () Unit!37556)

(assert (=> b!2117884 (= lt!794206 Unit!37574)))

(assert (=> b!2117884 call!128639))

(assert (=> b!2117884 (= lt!794207 (furthestNullablePosition!5 (_1!13452 lt!794217) (+ lt!793907 1 1) totalInput!1306 (size!18432 totalInput!1306) lt!794219))))

(assert (=> b!2117884 (= lt!794219 e!1348184)))

(declare-fun c!339539 () Bool)

(assert (=> b!2117884 (= c!339539 (nullableZipper!52 (_1!13452 lt!794217)))))

(assert (=> b!2117884 (= lt!794217 (derivationStepZipperMem!14 (_1!13452 lt!793983) (apply!5904 totalInput!1306 (+ lt!793907 1)) (_2!13452 lt!793983) (_3!1879 lt!793983)))))

(declare-fun e!1348183 () tuple3!2814)

(assert (=> b!2117884 (= e!1348183 (tuple3!2815 (_1!13445 lt!794209) (_2!13445 lt!794209) (_3!1876 lt!794209)))))

(declare-fun b!2117885 () Bool)

(declare-fun res!918439 () Bool)

(assert (=> b!2117885 (=> (not res!918439) (not e!1348186))))

(assert (=> b!2117885 (= res!918439 (valid!1885 cacheFurthestNullable!141))))

(assert (=> d!642912 e!1348186))

(declare-fun res!918437 () Bool)

(assert (=> d!642912 (=> (not res!918437) (not e!1348186))))

(assert (=> d!642912 (= res!918437 (= (_1!13444 (_1!13445 lt!794218)) (furthestNullablePosition!5 (_1!13452 lt!793983) (+ lt!793907 1) totalInput!1306 lt!793906 lt!793985)))))

(declare-fun e!1348185 () tuple3!2814)

(assert (=> d!642912 (= lt!794218 e!1348185)))

(declare-fun c!339538 () Bool)

(declare-fun lt!794212 () Option!4865)

(assert (=> d!642912 (= c!339538 ((_ is Some!4864) lt!794212))))

(assert (=> d!642912 (= lt!794212 (get!7297 cacheFurthestNullable!141 (_1!13452 lt!793983) (+ lt!793907 1) lt!793985))))

(declare-fun lt!794210 () Unit!37556)

(declare-fun Unit!37575 () Unit!37556)

(assert (=> d!642912 (= lt!794210 Unit!37575)))

(assert (=> d!642912 (forall!4845 (Cons!23600 (StackFrame!23 lt!793898 lt!793907 e!1347636 lt!793980 totalInput!1306) Nil!23600) lambda!78362)))

(assert (=> d!642912 (= lt!794214 (furthestNullablePosition!5 (_1!13452 lt!793983) (+ lt!793907 1) totalInput!1306 (size!18432 totalInput!1306) lt!793985))))

(assert (=> d!642912 (and (>= (+ lt!793907 1) 0) (<= (+ lt!793907 1) lt!793906))))

(assert (=> d!642912 (= (furthestNullablePositionStackMem!5 (_1!13452 lt!793983) (+ lt!793907 1) totalInput!1306 lt!793906 lt!793985 (Cons!23600 (StackFrame!23 lt!793898 lt!793907 e!1347636 lt!793980 totalInput!1306) Nil!23600) (_2!13452 lt!793983) (_3!1879 lt!793983) cacheFurthestNullable!141) lt!794218)))

(declare-fun lt!794213 () Unit!37556)

(declare-fun lt!794211 () Unit!37556)

(assert (=> b!2117886 (= lt!794213 lt!794211)))

(assert (=> b!2117886 call!128639))

(assert (=> b!2117886 (= lt!794211 call!128637)))

(declare-fun lt!794216 () Unit!37556)

(declare-fun Unit!37576 () Unit!37556)

(assert (=> b!2117886 (= lt!794216 Unit!37576)))

(assert (=> b!2117886 call!128638))

(assert (=> b!2117886 (= e!1348183 (tuple3!2815 (tuple2!23137 lt!793985 (Cons!23600 (StackFrame!23 lt!793898 lt!793907 e!1347636 lt!793980 totalInput!1306) Nil!23600)) (_2!13452 lt!793983) (_3!1879 lt!793983)))))

(declare-fun b!2117887 () Bool)

(assert (=> b!2117887 (= e!1348185 (tuple3!2815 (tuple2!23137 (v!28127 lt!794212) Nil!23600) (_2!13452 lt!793983) (_3!1879 lt!793983)))))

(declare-fun b!2117888 () Bool)

(assert (=> b!2117888 (= e!1348185 e!1348183)))

(declare-fun res!918438 () Bool)

(assert (=> b!2117888 (= res!918438 (= (+ lt!793907 1) lt!793906))))

(assert (=> b!2117888 (=> res!918438 e!1348187)))

(assert (=> b!2117888 (= c!339537 e!1348187)))

(declare-fun bm!128633 () Bool)

(assert (=> bm!128633 (= call!128638 (forall!4845 (Cons!23600 (StackFrame!23 lt!793898 lt!793907 e!1347636 lt!793980 totalInput!1306) Nil!23600) (ite c!339537 lambda!78362 lambda!78364)))))

(declare-fun b!2117889 () Bool)

(declare-fun res!918436 () Bool)

(assert (=> b!2117889 (=> (not res!918436) (not e!1348186))))

(assert (=> b!2117889 (= res!918436 (valid!1887 (_3!1876 lt!794218)))))

(declare-fun bm!128634 () Bool)

(assert (=> bm!128634 (= call!128637 (lemmaStackPreservesForEqualRes!3 (Cons!23600 (StackFrame!23 lt!793898 lt!793907 e!1347636 lt!793980 totalInput!1306) Nil!23600) lt!794214 (ite c!339537 lt!793985 lt!794207)))))

(assert (=> b!2117890 (= e!1348186 (forall!4845 (_2!13444 (_1!13445 lt!794218)) lambda!78366))))

(declare-fun b!2117891 () Bool)

(declare-fun res!918440 () Bool)

(assert (=> b!2117891 (=> (not res!918440) (not e!1348186))))

(assert (=> b!2117891 (= res!918440 (valid!1886 (_2!13445 lt!794218)))))

(declare-fun res!918435 () Bool)

(assert (=> b!2117892 (=> (not res!918435) (not e!1348186))))

(assert (=> b!2117892 (= res!918435 (forall!4845 (_2!13444 (_1!13445 lt!794218)) lambda!78365))))

(declare-fun b!2117893 () Bool)

(assert (=> b!2117893 (= e!1348184 (+ lt!793907 1))))

(assert (= (and d!642912 c!339538) b!2117887))

(assert (= (and d!642912 (not c!339538)) b!2117888))

(assert (= (and b!2117888 (not res!918438)) b!2117881))

(assert (= (and b!2117888 c!339537) b!2117886))

(assert (= (and b!2117888 (not c!339537)) b!2117884))

(assert (= (and b!2117884 c!339539) b!2117893))

(assert (= (and b!2117884 (not c!339539)) b!2117882))

(assert (= (or b!2117886 b!2117884) bm!128634))

(assert (= (or b!2117886 b!2117884) bm!128632))

(assert (= (or b!2117886 b!2117884) bm!128633))

(assert (= (and d!642912 res!918437) b!2117892))

(assert (= (and b!2117892 res!918435) b!2117891))

(assert (= (and b!2117891 res!918440) b!2117889))

(assert (= (and b!2117889 res!918436) b!2117885))

(assert (= (and b!2117885 res!918439) b!2117883))

(assert (= (and b!2117883 res!918441) b!2117890))

(declare-fun m!2572700 () Bool)

(assert (=> b!2117889 m!2572700))

(declare-fun m!2572702 () Bool)

(assert (=> b!2117881 m!2572702))

(declare-fun m!2572704 () Bool)

(assert (=> b!2117891 m!2572704))

(declare-fun m!2572706 () Bool)

(assert (=> bm!128634 m!2572706))

(declare-fun m!2572708 () Bool)

(assert (=> b!2117890 m!2572708))

(declare-fun m!2572710 () Bool)

(assert (=> b!2117892 m!2572710))

(declare-fun m!2572712 () Bool)

(assert (=> bm!128632 m!2572712))

(assert (=> b!2117885 m!2571931))

(declare-fun m!2572714 () Bool)

(assert (=> b!2117884 m!2572714))

(declare-fun m!2572716 () Bool)

(assert (=> b!2117884 m!2572716))

(assert (=> b!2117884 m!2571837))

(assert (=> b!2117884 m!2572714))

(declare-fun m!2572718 () Bool)

(assert (=> b!2117884 m!2572718))

(declare-fun m!2572720 () Bool)

(assert (=> b!2117884 m!2572720))

(assert (=> b!2117884 m!2571837))

(declare-fun m!2572722 () Bool)

(assert (=> b!2117884 m!2572722))

(declare-fun m!2572724 () Bool)

(assert (=> d!642912 m!2572724))

(declare-fun m!2572726 () Bool)

(assert (=> d!642912 m!2572726))

(assert (=> d!642912 m!2571837))

(assert (=> d!642912 m!2572007))

(assert (=> d!642912 m!2571837))

(declare-fun m!2572728 () Bool)

(assert (=> d!642912 m!2572728))

(declare-fun m!2572730 () Bool)

(assert (=> bm!128633 m!2572730))

(assert (=> b!2117201 d!642912))

(assert (=> b!2117201 d!642676))

(declare-fun bs!441537 () Bool)

(declare-fun d!642914 () Bool)

(assert (= bs!441537 (and d!642914 d!642706)))

(declare-fun lambda!78367 () Int)

(assert (=> bs!441537 (= lambda!78367 lambda!78323)))

(declare-fun bs!441538 () Bool)

(assert (= bs!441538 (and d!642914 d!642882)))

(assert (=> bs!441538 (not (= lambda!78367 lambda!78352))))

(declare-fun bs!441539 () Bool)

(assert (= bs!441539 (and d!642914 b!2117806)))

(assert (=> bs!441539 (not (= lambda!78367 lambda!78353))))

(declare-fun bs!441540 () Bool)

(assert (= bs!441540 (and d!642914 b!2117807)))

(assert (=> bs!441540 (not (= lambda!78367 lambda!78354))))

(assert (=> d!642914 (= (nullableZipper!52 (_1!13452 lt!793983)) (exists!685 (_1!13452 lt!793983) lambda!78367))))

(declare-fun bs!441541 () Bool)

(assert (= bs!441541 d!642914))

(declare-fun m!2572732 () Bool)

(assert (=> bs!441541 m!2572732))

(assert (=> b!2117201 d!642914))

(declare-fun d!642916 () Bool)

(declare-fun lt!794224 () C!11436)

(declare-fun apply!5905 (List!23682 Int) C!11436)

(assert (=> d!642916 (= lt!794224 (apply!5905 (list!9507 totalInput!1306) lt!793907))))

(declare-fun apply!5906 (Conc!7784 Int) C!11436)

(assert (=> d!642916 (= lt!794224 (apply!5906 (c!339387 totalInput!1306) lt!793907))))

(declare-fun e!1348206 () Bool)

(assert (=> d!642916 e!1348206))

(declare-fun res!918444 () Bool)

(assert (=> d!642916 (=> (not res!918444) (not e!1348206))))

(assert (=> d!642916 (= res!918444 (<= 0 lt!793907))))

(assert (=> d!642916 (= (apply!5904 totalInput!1306 lt!793907) lt!794224)))

(declare-fun b!2117912 () Bool)

(assert (=> b!2117912 (= e!1348206 (< lt!793907 (size!18432 totalInput!1306)))))

(assert (= (and d!642916 res!918444) b!2117912))

(assert (=> d!642916 m!2571903))

(assert (=> d!642916 m!2571903))

(declare-fun m!2572734 () Bool)

(assert (=> d!642916 m!2572734))

(declare-fun m!2572736 () Bool)

(assert (=> d!642916 m!2572736))

(assert (=> b!2117912 m!2571837))

(assert (=> b!2117201 d!642916))

(declare-fun b!2117913 () Bool)

(declare-fun e!1348208 () Bool)

(assert (=> b!2117913 (= e!1348208 (lostCauseZipper!52 (_1!13452 lt!793983)))))

(declare-fun b!2117914 () Bool)

(declare-fun e!1348207 () Int)

(assert (=> b!2117914 (= e!1348207 lt!793985)))

(declare-fun lt!794226 () Int)

(declare-fun d!642918 () Bool)

(assert (=> d!642918 (and (>= lt!794226 (- 1)) (< lt!794226 (size!18432 totalInput!1306)) (>= lt!794226 lt!793985) (or (= lt!794226 lt!793985) (>= lt!794226 (+ lt!793907 1))))))

(assert (=> d!642918 (= lt!794226 e!1348207)))

(declare-fun c!339541 () Bool)

(assert (=> d!642918 (= c!339541 e!1348208)))

(declare-fun res!918445 () Bool)

(assert (=> d!642918 (=> res!918445 e!1348208)))

(assert (=> d!642918 (= res!918445 (= (+ lt!793907 1) (size!18432 totalInput!1306)))))

(assert (=> d!642918 (and (>= (+ lt!793907 1) 0) (<= (+ lt!793907 1) (size!18432 totalInput!1306)))))

(assert (=> d!642918 (= (furthestNullablePosition!5 (_1!13452 lt!793983) (+ lt!793907 1) totalInput!1306 (size!18432 totalInput!1306) lt!793985) lt!794226)))

(declare-fun b!2117915 () Bool)

(declare-fun e!1348209 () Int)

(assert (=> b!2117915 (= e!1348209 (+ lt!793907 1))))

(declare-fun b!2117916 () Bool)

(assert (=> b!2117916 (= e!1348209 lt!793985)))

(declare-fun lt!794225 () (InoxSet Context!2430))

(declare-fun b!2117917 () Bool)

(assert (=> b!2117917 (= e!1348207 (furthestNullablePosition!5 lt!794225 (+ lt!793907 1 1) totalInput!1306 (size!18432 totalInput!1306) e!1348209))))

(assert (=> b!2117917 (= lt!794225 (derivationStepZipper!84 (_1!13452 lt!793983) (apply!5904 totalInput!1306 (+ lt!793907 1))))))

(declare-fun c!339540 () Bool)

(assert (=> b!2117917 (= c!339540 (nullableZipper!52 lt!794225))))

(assert (= (and d!642918 (not res!918445)) b!2117913))

(assert (= (and d!642918 c!339541) b!2117914))

(assert (= (and d!642918 (not c!339541)) b!2117917))

(assert (= (and b!2117917 c!339540) b!2117915))

(assert (= (and b!2117917 (not c!339540)) b!2117916))

(assert (=> b!2117913 m!2572702))

(assert (=> b!2117917 m!2571837))

(declare-fun m!2572738 () Bool)

(assert (=> b!2117917 m!2572738))

(assert (=> b!2117917 m!2572714))

(assert (=> b!2117917 m!2572714))

(declare-fun m!2572740 () Bool)

(assert (=> b!2117917 m!2572740))

(declare-fun m!2572742 () Bool)

(assert (=> b!2117917 m!2572742))

(assert (=> b!2117201 d!642918))

(declare-fun d!642920 () Bool)

(declare-fun e!1348212 () Bool)

(assert (=> d!642920 e!1348212))

(declare-fun res!918450 () Bool)

(assert (=> d!642920 (=> (not res!918450) (not e!1348212))))

(declare-fun lt!794229 () tuple3!2818)

(assert (=> d!642920 (= res!918450 (= (_1!13452 lt!794229) (derivationStepZipper!84 lt!793898 (apply!5904 totalInput!1306 lt!793907))))))

(declare-fun choose!12660 ((InoxSet Context!2430) C!11436 CacheUp!1598 CacheDown!1586) tuple3!2818)

(assert (=> d!642920 (= lt!794229 (choose!12660 lt!793898 (apply!5904 totalInput!1306 lt!793907) cacheUp!1110 cacheDown!1229))))

(assert (=> d!642920 (= (derivationStepZipperMem!14 lt!793898 (apply!5904 totalInput!1306 lt!793907) cacheUp!1110 cacheDown!1229) lt!794229)))

(declare-fun b!2117922 () Bool)

(declare-fun res!918451 () Bool)

(assert (=> b!2117922 (=> (not res!918451) (not e!1348212))))

(assert (=> b!2117922 (= res!918451 (valid!1886 (_2!13452 lt!794229)))))

(declare-fun b!2117923 () Bool)

(assert (=> b!2117923 (= e!1348212 (valid!1887 (_3!1879 lt!794229)))))

(assert (= (and d!642920 res!918450) b!2117922))

(assert (= (and b!2117922 res!918451) b!2117923))

(assert (=> d!642920 m!2571999))

(assert (=> d!642920 m!2572608))

(assert (=> d!642920 m!2571999))

(declare-fun m!2572744 () Bool)

(assert (=> d!642920 m!2572744))

(declare-fun m!2572746 () Bool)

(assert (=> b!2117922 m!2572746))

(declare-fun m!2572748 () Bool)

(assert (=> b!2117923 m!2572748))

(assert (=> b!2117201 d!642920))

(assert (=> d!642672 d!642858))

(declare-fun b!2117925 () Bool)

(declare-fun e!1348213 () List!23682)

(assert (=> b!2117925 (= e!1348213 (Cons!23598 (h!28999 (list!9507 (_1!13446 (_1!13450 lt!793935)))) (++!6313 (t!196191 (list!9507 (_1!13446 (_1!13450 lt!793935)))) (list!9507 (_2!13446 (_1!13450 lt!793935))))))))

(declare-fun d!642922 () Bool)

(declare-fun e!1348214 () Bool)

(assert (=> d!642922 e!1348214))

(declare-fun res!918453 () Bool)

(assert (=> d!642922 (=> (not res!918453) (not e!1348214))))

(declare-fun lt!794230 () List!23682)

(assert (=> d!642922 (= res!918453 (= (content!3387 lt!794230) ((_ map or) (content!3387 (list!9507 (_1!13446 (_1!13450 lt!793935)))) (content!3387 (list!9507 (_2!13446 (_1!13450 lt!793935)))))))))

(assert (=> d!642922 (= lt!794230 e!1348213)))

(declare-fun c!339542 () Bool)

(assert (=> d!642922 (= c!339542 ((_ is Nil!23598) (list!9507 (_1!13446 (_1!13450 lt!793935)))))))

(assert (=> d!642922 (= (++!6313 (list!9507 (_1!13446 (_1!13450 lt!793935))) (list!9507 (_2!13446 (_1!13450 lt!793935)))) lt!794230)))

(declare-fun b!2117927 () Bool)

(assert (=> b!2117927 (= e!1348214 (or (not (= (list!9507 (_2!13446 (_1!13450 lt!793935))) Nil!23598)) (= lt!794230 (list!9507 (_1!13446 (_1!13450 lt!793935))))))))

(declare-fun b!2117926 () Bool)

(declare-fun res!918452 () Bool)

(assert (=> b!2117926 (=> (not res!918452) (not e!1348214))))

(assert (=> b!2117926 (= res!918452 (= (size!18433 lt!794230) (+ (size!18433 (list!9507 (_1!13446 (_1!13450 lt!793935)))) (size!18433 (list!9507 (_2!13446 (_1!13450 lt!793935)))))))))

(declare-fun b!2117924 () Bool)

(assert (=> b!2117924 (= e!1348213 (list!9507 (_2!13446 (_1!13450 lt!793935))))))

(assert (= (and d!642922 c!339542) b!2117924))

(assert (= (and d!642922 (not c!339542)) b!2117925))

(assert (= (and d!642922 res!918453) b!2117926))

(assert (= (and b!2117926 res!918452) b!2117927))

(assert (=> b!2117925 m!2571955))

(declare-fun m!2572750 () Bool)

(assert (=> b!2117925 m!2572750))

(declare-fun m!2572752 () Bool)

(assert (=> d!642922 m!2572752))

(assert (=> d!642922 m!2571947))

(declare-fun m!2572754 () Bool)

(assert (=> d!642922 m!2572754))

(assert (=> d!642922 m!2571955))

(declare-fun m!2572756 () Bool)

(assert (=> d!642922 m!2572756))

(declare-fun m!2572758 () Bool)

(assert (=> b!2117926 m!2572758))

(assert (=> b!2117926 m!2571947))

(declare-fun m!2572760 () Bool)

(assert (=> b!2117926 m!2572760))

(assert (=> b!2117926 m!2571955))

(declare-fun m!2572762 () Bool)

(assert (=> b!2117926 m!2572762))

(assert (=> d!642672 d!642922))

(declare-fun d!642924 () Bool)

(declare-fun res!918454 () Bool)

(declare-fun e!1348215 () Bool)

(assert (=> d!642924 (=> res!918454 e!1348215)))

(assert (=> d!642924 (= res!918454 ((_ is Nil!23600) (_2!13444 (_1!13445 lt!793929))))))

(assert (=> d!642924 (= (forall!4845 (_2!13444 (_1!13445 lt!793929)) lambda!78298) e!1348215)))

(declare-fun b!2117928 () Bool)

(declare-fun e!1348216 () Bool)

(assert (=> b!2117928 (= e!1348215 e!1348216)))

(declare-fun res!918455 () Bool)

(assert (=> b!2117928 (=> (not res!918455) (not e!1348216))))

(assert (=> b!2117928 (= res!918455 (dynLambda!11302 lambda!78298 (h!29001 (_2!13444 (_1!13445 lt!793929)))))))

(declare-fun b!2117929 () Bool)

(assert (=> b!2117929 (= e!1348216 (forall!4845 (t!196193 (_2!13444 (_1!13445 lt!793929))) lambda!78298))))

(assert (= (and d!642924 (not res!918454)) b!2117928))

(assert (= (and b!2117928 res!918455) b!2117929))

(declare-fun b_lambda!70413 () Bool)

(assert (=> (not b_lambda!70413) (not b!2117928)))

(declare-fun m!2572764 () Bool)

(assert (=> b!2117928 m!2572764))

(declare-fun m!2572766 () Bool)

(assert (=> b!2117929 m!2572766))

(assert (=> d!642672 d!642924))

(declare-fun d!642926 () Bool)

(assert (=> d!642926 (= (list!9507 (_2!13446 (_1!13450 lt!793935))) (list!9508 (c!339387 (_2!13446 (_1!13450 lt!793935)))))))

(declare-fun bs!441542 () Bool)

(assert (= bs!441542 d!642926))

(declare-fun m!2572768 () Bool)

(assert (=> bs!441542 m!2572768))

(assert (=> d!642672 d!642926))

(assert (=> d!642672 d!642766))

(assert (=> d!642672 d!642706))

(assert (=> d!642672 d!642764))

(declare-fun b!2117930 () Bool)

(declare-fun e!1348217 () tuple2!23144)

(declare-fun Unit!37577 () Unit!37556)

(assert (=> b!2117930 (= e!1348217 (tuple2!23145 Unit!37577 cacheFurthestNullable!141))))

(declare-fun b!2117931 () Bool)

(declare-fun lt!794234 () tuple2!23144)

(assert (=> b!2117931 (= lt!794234 (update!84 cacheFurthestNullable!141 (z!5693 (h!29001 (_2!13444 (_1!13445 lt!793929)))) (from!2604 (h!29001 (_2!13444 (_1!13445 lt!793929)))) (lastNullablePos!292 (h!29001 (_2!13444 (_1!13445 lt!793929)))) (_1!13444 (_1!13445 lt!793929)) totalInput!1306))))

(declare-fun lt!794232 () Unit!37556)

(assert (=> b!2117931 (= lt!794232 (lemmaInvariant!378 cacheFurthestNullable!141))))

(assert (=> b!2117931 (= e!1348217 (tuple2!23145 (_1!13451 lt!794234) (_2!13451 lt!794234)))))

(declare-fun b!2117932 () Bool)

(declare-fun e!1348219 () Bool)

(declare-fun lt!794231 () tuple2!23144)

(assert (=> b!2117932 (= e!1348219 (= (totalInput!2863 (_2!13451 lt!794231)) totalInput!1306))))

(declare-fun b!2117933 () Bool)

(declare-fun e!1348218 () tuple2!23144)

(declare-fun lt!794233 () tuple2!23144)

(assert (=> b!2117933 (= e!1348218 (tuple2!23145 (_1!13451 lt!794233) (_2!13451 lt!794233)))))

(declare-fun c!339543 () Bool)

(assert (=> b!2117933 (= c!339543 (and (> lt!793932 1048576) (not (= (- 0 (* 10 (ite (>= 0 0) (div 0 10) (- (div (- 0) 10))))) 0))))))

(assert (=> b!2117933 (= lt!794233 (fillUpCache!5 (t!196193 (_2!13444 (_1!13445 lt!793929))) totalInput!1306 lt!793932 (_1!13444 (_1!13445 lt!793929)) (+ 0 1) (_2!13451 e!1348217)))))

(declare-fun d!642928 () Bool)

(assert (=> d!642928 e!1348219))

(declare-fun res!918456 () Bool)

(assert (=> d!642928 (=> (not res!918456) (not e!1348219))))

(assert (=> d!642928 (= res!918456 (valid!1885 (_2!13451 lt!794231)))))

(assert (=> d!642928 (= lt!794231 e!1348218)))

(declare-fun c!339544 () Bool)

(assert (=> d!642928 (= c!339544 ((_ is Nil!23600) (_2!13444 (_1!13445 lt!793929))))))

(assert (=> d!642928 (valid!1885 cacheFurthestNullable!141)))

(assert (=> d!642928 (= (fillUpCache!5 (_2!13444 (_1!13445 lt!793929)) totalInput!1306 lt!793932 (_1!13444 (_1!13445 lt!793929)) 0 cacheFurthestNullable!141) lt!794231)))

(declare-fun b!2117934 () Bool)

(declare-fun Unit!37578 () Unit!37556)

(assert (=> b!2117934 (= e!1348218 (tuple2!23145 Unit!37578 cacheFurthestNullable!141))))

(assert (= (and d!642928 c!339544) b!2117934))

(assert (= (and d!642928 (not c!339544)) b!2117933))

(assert (= (and b!2117933 c!339543) b!2117930))

(assert (= (and b!2117933 (not c!339543)) b!2117931))

(assert (= (and d!642928 res!918456) b!2117932))

(declare-fun m!2572770 () Bool)

(assert (=> b!2117931 m!2572770))

(assert (=> b!2117931 m!2572153))

(declare-fun m!2572772 () Bool)

(assert (=> b!2117933 m!2572772))

(declare-fun m!2572774 () Bool)

(assert (=> d!642928 m!2572774))

(assert (=> d!642928 m!2571931))

(assert (=> d!642672 d!642928))

(assert (=> d!642672 d!642676))

(declare-fun d!642930 () Bool)

(assert (=> d!642930 (= (list!9507 (_1!13446 (_1!13450 lt!793935))) (list!9508 (c!339387 (_1!13446 (_1!13450 lt!793935)))))))

(declare-fun bs!441543 () Bool)

(assert (= bs!441543 d!642930))

(declare-fun m!2572776 () Bool)

(assert (=> bs!441543 m!2572776))

(assert (=> d!642672 d!642930))

(declare-fun d!642932 () Bool)

(declare-fun res!918457 () Bool)

(declare-fun e!1348220 () Bool)

(assert (=> d!642932 (=> res!918457 e!1348220)))

(assert (=> d!642932 (= res!918457 ((_ is Nil!23600) (_2!13444 (_1!13445 lt!793929))))))

(assert (=> d!642932 (= (forall!4845 (_2!13444 (_1!13445 lt!793929)) lambda!78299) e!1348220)))

(declare-fun b!2117935 () Bool)

(declare-fun e!1348221 () Bool)

(assert (=> b!2117935 (= e!1348220 e!1348221)))

(declare-fun res!918458 () Bool)

(assert (=> b!2117935 (=> (not res!918458) (not e!1348221))))

(assert (=> b!2117935 (= res!918458 (dynLambda!11302 lambda!78299 (h!29001 (_2!13444 (_1!13445 lt!793929)))))))

(declare-fun b!2117936 () Bool)

(assert (=> b!2117936 (= e!1348221 (forall!4845 (t!196193 (_2!13444 (_1!13445 lt!793929))) lambda!78299))))

(assert (= (and d!642932 (not res!918457)) b!2117935))

(assert (= (and b!2117935 res!918458) b!2117936))

(declare-fun b_lambda!70415 () Bool)

(assert (=> (not b_lambda!70415) (not b!2117935)))

(declare-fun m!2572778 () Bool)

(assert (=> b!2117935 m!2572778))

(declare-fun m!2572780 () Bool)

(assert (=> b!2117936 m!2572780))

(assert (=> d!642672 d!642932))

(assert (=> d!642672 d!642700))

(declare-fun bs!441544 () Bool)

(declare-fun d!642934 () Bool)

(assert (= bs!441544 (and d!642934 b!2117886)))

(declare-fun lambda!78368 () Int)

(declare-fun lt!794243 () Int)

(assert (=> bs!441544 (= (= lt!794243 lt!793985) (= lambda!78368 lambda!78363))))

(declare-fun bs!441545 () Bool)

(assert (= bs!441545 (and d!642934 b!2117207)))

(assert (=> bs!441545 (not (= lambda!78368 lambda!78318))))

(declare-fun bs!441546 () Bool)

(assert (= bs!441546 (and d!642934 b!2117884)))

(assert (=> bs!441546 (= (= lt!794243 lt!794207) (= lambda!78368 lambda!78364))))

(declare-fun bs!441547 () Bool)

(assert (= bs!441547 (and d!642934 b!2117209)))

(assert (=> bs!441547 (= (= lt!794243 (_1!13444 (_1!13445 lt!793984))) (= lambda!78368 lambda!78317))))

(declare-fun bs!441548 () Bool)

(assert (= bs!441548 (and d!642934 b!2117892)))

(assert (=> bs!441548 (= (= lt!794243 (_1!13444 (_1!13445 lt!794218))) (= lambda!78368 lambda!78365))))

(declare-fun bs!441549 () Bool)

(assert (= bs!441549 (and d!642934 b!2117890)))

(assert (=> bs!441549 (not (= lambda!78368 lambda!78366))))

(declare-fun bs!441550 () Bool)

(assert (= bs!441550 (and d!642934 b!2117859)))

(assert (=> bs!441550 (= (= lt!794243 (_1!13444 (_1!13445 lt!794201))) (= lambda!78368 lambda!78358))))

(declare-fun bs!441551 () Bool)

(assert (= bs!441551 (and d!642934 b!2117039)))

(assert (=> bs!441551 (not (= lambda!78368 lambda!78293))))

(declare-fun bs!441552 () Bool)

(assert (= bs!441552 (and d!642934 d!642912)))

(assert (=> bs!441552 (= (= lt!794243 lt!794214) (= lambda!78368 lambda!78362))))

(declare-fun bs!441553 () Bool)

(assert (= bs!441553 (and d!642934 d!642684)))

(assert (=> bs!441553 (= (= lt!794243 (_1!13444 (_1!13445 lt!793988))) (= lambda!78368 lambda!78319))))

(declare-fun bs!441554 () Bool)

(assert (= bs!441554 (and d!642934 b!2117857)))

(assert (=> bs!441554 (not (= lambda!78368 lambda!78359))))

(declare-fun bs!441555 () Bool)

(assert (= bs!441555 (and d!642934 b!2117203)))

(assert (=> bs!441555 (= (= lt!794243 e!1347636) (= lambda!78368 lambda!78315))))

(declare-fun bs!441556 () Bool)

(assert (= bs!441556 (and d!642934 b!2117201)))

(assert (=> bs!441556 (= (= lt!794243 lt!793973) (= lambda!78368 lambda!78316))))

(declare-fun bs!441557 () Bool)

(assert (= bs!441557 (and d!642934 d!642904)))

(assert (=> bs!441557 (= (= lt!794243 lt!794197) (= lambda!78368 lambda!78355))))

(declare-fun bs!441558 () Bool)

(assert (= bs!441558 (and d!642934 d!642682)))

(assert (=> bs!441558 (= (= lt!794243 lt!793980) (= lambda!78368 lambda!78314))))

(assert (=> bs!441553 (not (= lambda!78368 lambda!78320))))

(declare-fun bs!441559 () Bool)

(assert (= bs!441559 (and d!642934 b!2117069)))

(assert (=> bs!441559 (= (= lt!794243 (_1!13444 (_1!13445 lt!793905))) (= lambda!78368 lambda!78292))))

(declare-fun bs!441560 () Bool)

(assert (= bs!441560 (and d!642934 d!642672)))

(assert (=> bs!441560 (not (= lambda!78368 lambda!78299))))

(declare-fun bs!441561 () Bool)

(assert (= bs!441561 (and d!642934 b!2117853)))

(assert (=> bs!441561 (= (= lt!794243 e!1347754) (= lambda!78368 lambda!78356))))

(declare-fun bs!441562 () Bool)

(assert (= bs!441562 (and d!642934 b!2117851)))

(assert (=> bs!441562 (= (= lt!794243 lt!794190) (= lambda!78368 lambda!78357))))

(assert (=> bs!441560 (= (= lt!794243 (_1!13444 (_1!13445 lt!793929))) (= lambda!78368 lambda!78298))))

(assert (=> d!642934 true))

(declare-fun bs!441563 () Bool)

(declare-fun b!2117942 () Bool)

(assert (= bs!441563 (and b!2117942 b!2117886)))

(declare-fun lambda!78369 () Int)

(assert (=> bs!441563 (= (= e!1347699 lt!793985) (= lambda!78369 lambda!78363))))

(declare-fun bs!441564 () Bool)

(assert (= bs!441564 (and b!2117942 d!642934)))

(assert (=> bs!441564 (= (= e!1347699 lt!794243) (= lambda!78369 lambda!78368))))

(declare-fun bs!441565 () Bool)

(assert (= bs!441565 (and b!2117942 b!2117207)))

(assert (=> bs!441565 (not (= lambda!78369 lambda!78318))))

(declare-fun bs!441566 () Bool)

(assert (= bs!441566 (and b!2117942 b!2117884)))

(assert (=> bs!441566 (= (= e!1347699 lt!794207) (= lambda!78369 lambda!78364))))

(declare-fun bs!441567 () Bool)

(assert (= bs!441567 (and b!2117942 b!2117209)))

(assert (=> bs!441567 (= (= e!1347699 (_1!13444 (_1!13445 lt!793984))) (= lambda!78369 lambda!78317))))

(declare-fun bs!441568 () Bool)

(assert (= bs!441568 (and b!2117942 b!2117892)))

(assert (=> bs!441568 (= (= e!1347699 (_1!13444 (_1!13445 lt!794218))) (= lambda!78369 lambda!78365))))

(declare-fun bs!441569 () Bool)

(assert (= bs!441569 (and b!2117942 b!2117890)))

(assert (=> bs!441569 (not (= lambda!78369 lambda!78366))))

(declare-fun bs!441570 () Bool)

(assert (= bs!441570 (and b!2117942 b!2117859)))

(assert (=> bs!441570 (= (= e!1347699 (_1!13444 (_1!13445 lt!794201))) (= lambda!78369 lambda!78358))))

(declare-fun bs!441571 () Bool)

(assert (= bs!441571 (and b!2117942 b!2117039)))

(assert (=> bs!441571 (not (= lambda!78369 lambda!78293))))

(declare-fun bs!441572 () Bool)

(assert (= bs!441572 (and b!2117942 d!642912)))

(assert (=> bs!441572 (= (= e!1347699 lt!794214) (= lambda!78369 lambda!78362))))

(declare-fun bs!441573 () Bool)

(assert (= bs!441573 (and b!2117942 d!642684)))

(assert (=> bs!441573 (= (= e!1347699 (_1!13444 (_1!13445 lt!793988))) (= lambda!78369 lambda!78319))))

(declare-fun bs!441574 () Bool)

(assert (= bs!441574 (and b!2117942 b!2117857)))

(assert (=> bs!441574 (not (= lambda!78369 lambda!78359))))

(declare-fun bs!441575 () Bool)

(assert (= bs!441575 (and b!2117942 b!2117203)))

(assert (=> bs!441575 (= (= e!1347699 e!1347636) (= lambda!78369 lambda!78315))))

(declare-fun bs!441576 () Bool)

(assert (= bs!441576 (and b!2117942 b!2117201)))

(assert (=> bs!441576 (= (= e!1347699 lt!793973) (= lambda!78369 lambda!78316))))

(declare-fun bs!441577 () Bool)

(assert (= bs!441577 (and b!2117942 d!642904)))

(assert (=> bs!441577 (= (= e!1347699 lt!794197) (= lambda!78369 lambda!78355))))

(declare-fun bs!441578 () Bool)

(assert (= bs!441578 (and b!2117942 d!642682)))

(assert (=> bs!441578 (= (= e!1347699 lt!793980) (= lambda!78369 lambda!78314))))

(assert (=> bs!441573 (not (= lambda!78369 lambda!78320))))

(declare-fun bs!441579 () Bool)

(assert (= bs!441579 (and b!2117942 b!2117069)))

(assert (=> bs!441579 (= (= e!1347699 (_1!13444 (_1!13445 lt!793905))) (= lambda!78369 lambda!78292))))

(declare-fun bs!441580 () Bool)

(assert (= bs!441580 (and b!2117942 d!642672)))

(assert (=> bs!441580 (not (= lambda!78369 lambda!78299))))

(declare-fun bs!441581 () Bool)

(assert (= bs!441581 (and b!2117942 b!2117853)))

(assert (=> bs!441581 (= (= e!1347699 e!1347754) (= lambda!78369 lambda!78356))))

(declare-fun bs!441582 () Bool)

(assert (= bs!441582 (and b!2117942 b!2117851)))

(assert (=> bs!441582 (= (= e!1347699 lt!794190) (= lambda!78369 lambda!78357))))

(assert (=> bs!441580 (= (= e!1347699 (_1!13444 (_1!13445 lt!793929))) (= lambda!78369 lambda!78298))))

(assert (=> b!2117942 true))

(declare-fun bs!441583 () Bool)

(declare-fun b!2117940 () Bool)

(assert (= bs!441583 (and b!2117940 b!2117942)))

(declare-fun lambda!78370 () Int)

(declare-fun lt!794236 () Int)

(assert (=> bs!441583 (= (= lt!794236 e!1347699) (= lambda!78370 lambda!78369))))

(declare-fun bs!441584 () Bool)

(assert (= bs!441584 (and b!2117940 b!2117886)))

(assert (=> bs!441584 (= (= lt!794236 lt!793985) (= lambda!78370 lambda!78363))))

(declare-fun bs!441585 () Bool)

(assert (= bs!441585 (and b!2117940 d!642934)))

(assert (=> bs!441585 (= (= lt!794236 lt!794243) (= lambda!78370 lambda!78368))))

(declare-fun bs!441586 () Bool)

(assert (= bs!441586 (and b!2117940 b!2117207)))

(assert (=> bs!441586 (not (= lambda!78370 lambda!78318))))

(declare-fun bs!441587 () Bool)

(assert (= bs!441587 (and b!2117940 b!2117884)))

(assert (=> bs!441587 (= (= lt!794236 lt!794207) (= lambda!78370 lambda!78364))))

(declare-fun bs!441588 () Bool)

(assert (= bs!441588 (and b!2117940 b!2117209)))

(assert (=> bs!441588 (= (= lt!794236 (_1!13444 (_1!13445 lt!793984))) (= lambda!78370 lambda!78317))))

(declare-fun bs!441589 () Bool)

(assert (= bs!441589 (and b!2117940 b!2117892)))

(assert (=> bs!441589 (= (= lt!794236 (_1!13444 (_1!13445 lt!794218))) (= lambda!78370 lambda!78365))))

(declare-fun bs!441590 () Bool)

(assert (= bs!441590 (and b!2117940 b!2117890)))

(assert (=> bs!441590 (not (= lambda!78370 lambda!78366))))

(declare-fun bs!441591 () Bool)

(assert (= bs!441591 (and b!2117940 b!2117859)))

(assert (=> bs!441591 (= (= lt!794236 (_1!13444 (_1!13445 lt!794201))) (= lambda!78370 lambda!78358))))

(declare-fun bs!441592 () Bool)

(assert (= bs!441592 (and b!2117940 b!2117039)))

(assert (=> bs!441592 (not (= lambda!78370 lambda!78293))))

(declare-fun bs!441593 () Bool)

(assert (= bs!441593 (and b!2117940 d!642912)))

(assert (=> bs!441593 (= (= lt!794236 lt!794214) (= lambda!78370 lambda!78362))))

(declare-fun bs!441594 () Bool)

(assert (= bs!441594 (and b!2117940 d!642684)))

(assert (=> bs!441594 (= (= lt!794236 (_1!13444 (_1!13445 lt!793988))) (= lambda!78370 lambda!78319))))

(declare-fun bs!441595 () Bool)

(assert (= bs!441595 (and b!2117940 b!2117857)))

(assert (=> bs!441595 (not (= lambda!78370 lambda!78359))))

(declare-fun bs!441596 () Bool)

(assert (= bs!441596 (and b!2117940 b!2117203)))

(assert (=> bs!441596 (= (= lt!794236 e!1347636) (= lambda!78370 lambda!78315))))

(declare-fun bs!441597 () Bool)

(assert (= bs!441597 (and b!2117940 b!2117201)))

(assert (=> bs!441597 (= (= lt!794236 lt!793973) (= lambda!78370 lambda!78316))))

(declare-fun bs!441598 () Bool)

(assert (= bs!441598 (and b!2117940 d!642904)))

(assert (=> bs!441598 (= (= lt!794236 lt!794197) (= lambda!78370 lambda!78355))))

(declare-fun bs!441599 () Bool)

(assert (= bs!441599 (and b!2117940 d!642682)))

(assert (=> bs!441599 (= (= lt!794236 lt!793980) (= lambda!78370 lambda!78314))))

(assert (=> bs!441594 (not (= lambda!78370 lambda!78320))))

(declare-fun bs!441600 () Bool)

(assert (= bs!441600 (and b!2117940 b!2117069)))

(assert (=> bs!441600 (= (= lt!794236 (_1!13444 (_1!13445 lt!793905))) (= lambda!78370 lambda!78292))))

(declare-fun bs!441601 () Bool)

(assert (= bs!441601 (and b!2117940 d!642672)))

(assert (=> bs!441601 (not (= lambda!78370 lambda!78299))))

(declare-fun bs!441602 () Bool)

(assert (= bs!441602 (and b!2117940 b!2117853)))

(assert (=> bs!441602 (= (= lt!794236 e!1347754) (= lambda!78370 lambda!78356))))

(declare-fun bs!441603 () Bool)

(assert (= bs!441603 (and b!2117940 b!2117851)))

(assert (=> bs!441603 (= (= lt!794236 lt!794190) (= lambda!78370 lambda!78357))))

(assert (=> bs!441601 (= (= lt!794236 (_1!13444 (_1!13445 lt!793929))) (= lambda!78370 lambda!78298))))

(assert (=> b!2117940 true))

(declare-fun bs!441604 () Bool)

(declare-fun b!2117948 () Bool)

(assert (= bs!441604 (and b!2117948 b!2117942)))

(declare-fun lambda!78371 () Int)

(declare-fun lt!794247 () tuple3!2814)

(assert (=> bs!441604 (= (= (_1!13444 (_1!13445 lt!794247)) e!1347699) (= lambda!78371 lambda!78369))))

(declare-fun bs!441605 () Bool)

(assert (= bs!441605 (and b!2117948 b!2117886)))

(assert (=> bs!441605 (= (= (_1!13444 (_1!13445 lt!794247)) lt!793985) (= lambda!78371 lambda!78363))))

(declare-fun bs!441606 () Bool)

(assert (= bs!441606 (and b!2117948 d!642934)))

(assert (=> bs!441606 (= (= (_1!13444 (_1!13445 lt!794247)) lt!794243) (= lambda!78371 lambda!78368))))

(declare-fun bs!441607 () Bool)

(assert (= bs!441607 (and b!2117948 b!2117207)))

(assert (=> bs!441607 (not (= lambda!78371 lambda!78318))))

(declare-fun bs!441608 () Bool)

(assert (= bs!441608 (and b!2117948 b!2117884)))

(assert (=> bs!441608 (= (= (_1!13444 (_1!13445 lt!794247)) lt!794207) (= lambda!78371 lambda!78364))))

(declare-fun bs!441609 () Bool)

(assert (= bs!441609 (and b!2117948 b!2117209)))

(assert (=> bs!441609 (= (= (_1!13444 (_1!13445 lt!794247)) (_1!13444 (_1!13445 lt!793984))) (= lambda!78371 lambda!78317))))

(declare-fun bs!441610 () Bool)

(assert (= bs!441610 (and b!2117948 b!2117892)))

(assert (=> bs!441610 (= (= (_1!13444 (_1!13445 lt!794247)) (_1!13444 (_1!13445 lt!794218))) (= lambda!78371 lambda!78365))))

(declare-fun bs!441611 () Bool)

(assert (= bs!441611 (and b!2117948 b!2117890)))

(assert (=> bs!441611 (not (= lambda!78371 lambda!78366))))

(declare-fun bs!441612 () Bool)

(assert (= bs!441612 (and b!2117948 b!2117859)))

(assert (=> bs!441612 (= (= (_1!13444 (_1!13445 lt!794247)) (_1!13444 (_1!13445 lt!794201))) (= lambda!78371 lambda!78358))))

(declare-fun bs!441613 () Bool)

(assert (= bs!441613 (and b!2117948 b!2117039)))

(assert (=> bs!441613 (not (= lambda!78371 lambda!78293))))

(declare-fun bs!441614 () Bool)

(assert (= bs!441614 (and b!2117948 d!642912)))

(assert (=> bs!441614 (= (= (_1!13444 (_1!13445 lt!794247)) lt!794214) (= lambda!78371 lambda!78362))))

(declare-fun bs!441615 () Bool)

(assert (= bs!441615 (and b!2117948 d!642684)))

(assert (=> bs!441615 (= (= (_1!13444 (_1!13445 lt!794247)) (_1!13444 (_1!13445 lt!793988))) (= lambda!78371 lambda!78319))))

(declare-fun bs!441616 () Bool)

(assert (= bs!441616 (and b!2117948 b!2117857)))

(assert (=> bs!441616 (not (= lambda!78371 lambda!78359))))

(declare-fun bs!441617 () Bool)

(assert (= bs!441617 (and b!2117948 b!2117203)))

(assert (=> bs!441617 (= (= (_1!13444 (_1!13445 lt!794247)) e!1347636) (= lambda!78371 lambda!78315))))

(declare-fun bs!441618 () Bool)

(assert (= bs!441618 (and b!2117948 b!2117940)))

(assert (=> bs!441618 (= (= (_1!13444 (_1!13445 lt!794247)) lt!794236) (= lambda!78371 lambda!78370))))

(declare-fun bs!441619 () Bool)

(assert (= bs!441619 (and b!2117948 b!2117201)))

(assert (=> bs!441619 (= (= (_1!13444 (_1!13445 lt!794247)) lt!793973) (= lambda!78371 lambda!78316))))

(declare-fun bs!441620 () Bool)

(assert (= bs!441620 (and b!2117948 d!642904)))

(assert (=> bs!441620 (= (= (_1!13444 (_1!13445 lt!794247)) lt!794197) (= lambda!78371 lambda!78355))))

(declare-fun bs!441621 () Bool)

(assert (= bs!441621 (and b!2117948 d!642682)))

(assert (=> bs!441621 (= (= (_1!13444 (_1!13445 lt!794247)) lt!793980) (= lambda!78371 lambda!78314))))

(assert (=> bs!441615 (not (= lambda!78371 lambda!78320))))

(declare-fun bs!441622 () Bool)

(assert (= bs!441622 (and b!2117948 b!2117069)))

(assert (=> bs!441622 (= (= (_1!13444 (_1!13445 lt!794247)) (_1!13444 (_1!13445 lt!793905))) (= lambda!78371 lambda!78292))))

(declare-fun bs!441623 () Bool)

(assert (= bs!441623 (and b!2117948 d!642672)))

(assert (=> bs!441623 (not (= lambda!78371 lambda!78299))))

(declare-fun bs!441624 () Bool)

(assert (= bs!441624 (and b!2117948 b!2117853)))

(assert (=> bs!441624 (= (= (_1!13444 (_1!13445 lt!794247)) e!1347754) (= lambda!78371 lambda!78356))))

(declare-fun bs!441625 () Bool)

(assert (= bs!441625 (and b!2117948 b!2117851)))

(assert (=> bs!441625 (= (= (_1!13444 (_1!13445 lt!794247)) lt!794190) (= lambda!78371 lambda!78357))))

(assert (=> bs!441623 (= (= (_1!13444 (_1!13445 lt!794247)) (_1!13444 (_1!13445 lt!793929))) (= lambda!78371 lambda!78298))))

(declare-fun b!2117950 () Bool)

(declare-fun e!1348242 () Bool)

(declare-fun mapRes!11602 () Bool)

(assert (=> b!2117950 (= e!1348242 mapRes!11602)))

(declare-fun condMapEmpty!11603 () Bool)

(declare-fun mapDefault!11603 () List!23681)

(assert (=> b!2117950 (= condMapEmpty!11603 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794247)))))))) ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11603)))))

(declare-fun b!2117951 () Bool)

(declare-fun e!1348241 () Bool)

(declare-fun e!1348232 () Bool)

(assert (=> b!2117951 (= e!1348241 e!1348232)))

(declare-fun b!2117952 () Bool)

(declare-fun e!1348234 () Bool)

(declare-fun e!1348233 () Bool)

(assert (=> b!2117952 (= e!1348234 e!1348233)))

(declare-fun b!2117953 () Bool)

(assert (=> b!2117953 (= e!1348233 e!1348242)))

(declare-fun mapIsEmpty!11602 () Bool)

(declare-fun mapRes!11603 () Bool)

(assert (=> mapIsEmpty!11602 mapRes!11603))

(declare-fun mapNonEmpty!11602 () Bool)

(assert (=> mapNonEmpty!11602 (= mapRes!11602 true)))

(declare-fun mapValue!11602 () List!23681)

(declare-fun mapRest!11602 () (Array (_ BitVec 32) List!23681))

(declare-fun mapKey!11602 () (_ BitVec 32))

(assert (=> mapNonEmpty!11602 (= (arr!3663 (_values!2676 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794247)))))))) (store mapRest!11602 mapKey!11602 mapValue!11602))))

(declare-fun b!2117954 () Bool)

(declare-fun e!1348240 () Bool)

(assert (=> b!2117954 (= e!1348232 e!1348240)))

(declare-fun b!2117955 () Bool)

(declare-fun e!1348235 () Bool)

(declare-fun e!1348238 () Bool)

(assert (=> b!2117955 (= e!1348235 e!1348238)))

(declare-fun b!2117956 () Bool)

(declare-fun e!1348237 () Bool)

(assert (=> b!2117956 (= e!1348237 e!1348235)))

(declare-fun b!2117957 () Bool)

(declare-fun e!1348227 () Bool)

(declare-fun lt!794249 () MutLongMap!2397)

(assert (=> b!2117957 (= e!1348227 (and e!1348237 ((_ is LongMap!2397) lt!794249)))))

(assert (=> b!2117957 (= lt!794249 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794247)))))))

(declare-fun b!2117958 () Bool)

(declare-fun e!1348229 () Bool)

(assert (=> b!2117958 (= e!1348229 mapRes!11603)))

(declare-fun condMapEmpty!11602 () Bool)

(declare-fun mapDefault!11602 () List!23683)

(assert (=> b!2117958 (= condMapEmpty!11602 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794247)))))))) ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11602)))))

(declare-fun b!2117959 () Bool)

(declare-fun e!1348230 () Bool)

(declare-fun e!1348239 () Bool)

(assert (=> b!2117959 (= e!1348230 e!1348239)))

(declare-fun b!2117961 () Bool)

(declare-fun e!1348236 () Bool)

(declare-fun lt!794250 () MutLongMap!2396)

(assert (=> b!2117961 (= e!1348240 (and e!1348236 ((_ is LongMap!2396) lt!794250)))))

(assert (=> b!2117961 (= lt!794250 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794247)))))))

(declare-fun setNonEmpty!14403 () Bool)

(declare-fun setRes!14403 () Bool)

(assert (=> setNonEmpty!14403 (= setRes!14403 true)))

(declare-fun setElem!14403 () Context!2430)

(declare-fun setRest!14403 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14403 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!794247)))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14403 true) setRest!14403))))

(declare-fun b!2117962 () Bool)

(assert (=> b!2117962 (= e!1348236 e!1348234)))

(declare-fun mapIsEmpty!11603 () Bool)

(assert (=> mapIsEmpty!11603 mapRes!11602))

(declare-fun setIsEmpty!14403 () Bool)

(assert (=> setIsEmpty!14403 setRes!14403))

(declare-fun b!2117963 () Bool)

(declare-fun e!1348228 () Bool)

(assert (=> b!2117963 (= e!1348228 e!1348227)))

(declare-fun b!2117964 () Bool)

(assert (=> b!2117964 (= e!1348239 setRes!14403)))

(declare-fun condSetEmpty!14403 () Bool)

(assert (=> b!2117964 (= condSetEmpty!14403 (= (z!5693 (h!29001 (_2!13444 (_1!13445 lt!794247)))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2117960 () Bool)

(declare-fun e!1348231 () Bool)

(assert (=> b!2117960 (= e!1348231 e!1348228)))

(assert (=> b!2117948 (and e!1348230 e!1348231 e!1348241)))

(declare-fun b!2117965 () Bool)

(assert (=> b!2117965 (= e!1348238 e!1348229)))

(declare-fun mapNonEmpty!11603 () Bool)

(assert (=> mapNonEmpty!11603 (= mapRes!11603 true)))

(declare-fun mapValue!11603 () List!23683)

(declare-fun mapKey!11603 () (_ BitVec 32))

(declare-fun mapRest!11603 () (Array (_ BitVec 32) List!23683))

(assert (=> mapNonEmpty!11603 (= (arr!3664 (_values!2677 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794247)))))))) (store mapRest!11603 mapKey!11603 mapValue!11603))))

(assert (= (and b!2117964 condSetEmpty!14403) setIsEmpty!14403))

(assert (= (and b!2117964 (not condSetEmpty!14403)) setNonEmpty!14403))

(assert (= b!2117959 b!2117964))

(assert (= (and b!2117948 ((_ is Cons!23600) (_2!13444 (_1!13445 lt!794247)))) b!2117959))

(assert (= (and b!2117958 condMapEmpty!11602) mapIsEmpty!11602))

(assert (= (and b!2117958 (not condMapEmpty!11602)) mapNonEmpty!11603))

(assert (= b!2117965 b!2117958))

(assert (= b!2117955 b!2117965))

(assert (= b!2117956 b!2117955))

(assert (= (and b!2117957 ((_ is LongMap!2397) (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794247)))))) b!2117956))

(assert (= b!2117963 b!2117957))

(assert (= (and b!2117960 ((_ is HashMap!2310) (cache!2691 (_2!13445 lt!794247)))) b!2117963))

(assert (= b!2117948 b!2117960))

(assert (= (and b!2117950 condMapEmpty!11603) mapIsEmpty!11603))

(assert (= (and b!2117950 (not condMapEmpty!11603)) mapNonEmpty!11602))

(assert (= b!2117953 b!2117950))

(assert (= b!2117952 b!2117953))

(assert (= b!2117962 b!2117952))

(assert (= (and b!2117961 ((_ is LongMap!2396) (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794247)))))) b!2117962))

(assert (= b!2117954 b!2117961))

(assert (= (and b!2117951 ((_ is HashMap!2311) (cache!2692 (_3!1876 lt!794247)))) b!2117954))

(assert (= b!2117948 b!2117951))

(assert (=> b!2117953 (< (dynLambda!11297 order!14569 (defaultEntry!2761 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!794247)))))))) (dynLambda!11298 order!14571 lambda!78371))))

(assert (=> b!2117954 (< (dynLambda!11299 order!14573 (defaultValue!2473 (cache!2692 (_3!1876 lt!794247)))) (dynLambda!11298 order!14571 lambda!78371))))

(assert (=> b!2117965 (< (dynLambda!11300 order!14575 (defaultEntry!2762 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!794247)))))))) (dynLambda!11298 order!14571 lambda!78371))))

(assert (=> b!2117963 (< (dynLambda!11301 order!14577 (defaultValue!2472 (cache!2691 (_2!13445 lt!794247)))) (dynLambda!11298 order!14571 lambda!78371))))

(declare-fun m!2572782 () Bool)

(assert (=> mapNonEmpty!11602 m!2572782))

(declare-fun m!2572784 () Bool)

(assert (=> mapNonEmpty!11603 m!2572784))

(declare-fun bs!441626 () Bool)

(declare-fun b!2117946 () Bool)

(assert (= bs!441626 (and b!2117946 b!2117942)))

(declare-fun lambda!78372 () Int)

(assert (=> bs!441626 (not (= lambda!78372 lambda!78369))))

(declare-fun bs!441627 () Bool)

(assert (= bs!441627 (and b!2117946 b!2117886)))

(assert (=> bs!441627 (not (= lambda!78372 lambda!78363))))

(declare-fun bs!441628 () Bool)

(assert (= bs!441628 (and b!2117946 d!642934)))

(assert (=> bs!441628 (not (= lambda!78372 lambda!78368))))

(declare-fun bs!441629 () Bool)

(assert (= bs!441629 (and b!2117946 b!2117207)))

(assert (=> bs!441629 (= lambda!78372 lambda!78318)))

(declare-fun bs!441630 () Bool)

(assert (= bs!441630 (and b!2117946 b!2117884)))

(assert (=> bs!441630 (not (= lambda!78372 lambda!78364))))

(declare-fun bs!441631 () Bool)

(assert (= bs!441631 (and b!2117946 b!2117209)))

(assert (=> bs!441631 (not (= lambda!78372 lambda!78317))))

(declare-fun bs!441632 () Bool)

(assert (= bs!441632 (and b!2117946 b!2117892)))

(assert (=> bs!441632 (not (= lambda!78372 lambda!78365))))

(declare-fun bs!441633 () Bool)

(assert (= bs!441633 (and b!2117946 b!2117890)))

(assert (=> bs!441633 (= lambda!78372 lambda!78366)))

(declare-fun bs!441634 () Bool)

(assert (= bs!441634 (and b!2117946 b!2117859)))

(assert (=> bs!441634 (not (= lambda!78372 lambda!78358))))

(declare-fun bs!441635 () Bool)

(assert (= bs!441635 (and b!2117946 b!2117039)))

(assert (=> bs!441635 (= lambda!78372 lambda!78293)))

(declare-fun bs!441636 () Bool)

(assert (= bs!441636 (and b!2117946 d!642912)))

(assert (=> bs!441636 (not (= lambda!78372 lambda!78362))))

(declare-fun bs!441637 () Bool)

(assert (= bs!441637 (and b!2117946 d!642684)))

(assert (=> bs!441637 (not (= lambda!78372 lambda!78319))))

(declare-fun bs!441638 () Bool)

(assert (= bs!441638 (and b!2117946 b!2117857)))

(assert (=> bs!441638 (= lambda!78372 lambda!78359)))

(declare-fun bs!441639 () Bool)

(assert (= bs!441639 (and b!2117946 b!2117940)))

(assert (=> bs!441639 (not (= lambda!78372 lambda!78370))))

(declare-fun bs!441640 () Bool)

(assert (= bs!441640 (and b!2117946 b!2117201)))

(assert (=> bs!441640 (not (= lambda!78372 lambda!78316))))

(declare-fun bs!441641 () Bool)

(assert (= bs!441641 (and b!2117946 d!642904)))

(assert (=> bs!441641 (not (= lambda!78372 lambda!78355))))

(declare-fun bs!441642 () Bool)

(assert (= bs!441642 (and b!2117946 d!642682)))

(assert (=> bs!441642 (not (= lambda!78372 lambda!78314))))

(assert (=> bs!441637 (= lambda!78372 lambda!78320)))

(declare-fun bs!441643 () Bool)

(assert (= bs!441643 (and b!2117946 b!2117069)))

(assert (=> bs!441643 (not (= lambda!78372 lambda!78292))))

(declare-fun bs!441644 () Bool)

(assert (= bs!441644 (and b!2117946 d!642672)))

(assert (=> bs!441644 (= lambda!78372 lambda!78299)))

(declare-fun bs!441645 () Bool)

(assert (= bs!441645 (and b!2117946 b!2117853)))

(assert (=> bs!441645 (not (= lambda!78372 lambda!78356))))

(declare-fun bs!441646 () Bool)

(assert (= bs!441646 (and b!2117946 b!2117203)))

(assert (=> bs!441646 (not (= lambda!78372 lambda!78315))))

(declare-fun bs!441647 () Bool)

(assert (= bs!441647 (and b!2117946 b!2117948)))

(assert (=> bs!441647 (not (= lambda!78372 lambda!78371))))

(declare-fun bs!441648 () Bool)

(assert (= bs!441648 (and b!2117946 b!2117851)))

(assert (=> bs!441648 (not (= lambda!78372 lambda!78357))))

(assert (=> bs!441644 (not (= lambda!78372 lambda!78298))))

(assert (=> b!2117946 true))

(declare-fun b!2117937 () Bool)

(declare-fun e!1348226 () Bool)

(assert (=> b!2117937 (= e!1348226 (lostCauseZipper!52 lt!793898))))

(declare-fun b!2117938 () Bool)

(declare-fun e!1348223 () Int)

(assert (=> b!2117938 (= e!1348223 e!1347699)))

(declare-fun c!339545 () Bool)

(declare-fun call!128642 () Bool)

(declare-fun bm!128635 () Bool)

(assert (=> bm!128635 (= call!128642 (forall!4845 Nil!23600 (ite c!339545 lambda!78369 lambda!78368)))))

(declare-fun b!2117939 () Bool)

(declare-fun res!918465 () Bool)

(declare-fun e!1348225 () Bool)

(assert (=> b!2117939 (=> (not res!918465) (not e!1348225))))

(assert (=> b!2117939 (= res!918465 (= (totalInput!2863 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun lt!794248 () Int)

(declare-fun lt!794238 () tuple3!2814)

(declare-fun lt!794246 () tuple3!2818)

(assert (=> b!2117940 (= lt!794238 (furthestNullablePositionStackMem!5 (_1!13452 lt!794246) (+ lt!793931 1) totalInput!1306 lt!793932 lt!794248 (Cons!23600 (StackFrame!23 lt!793898 lt!793931 e!1347699 lt!794243 totalInput!1306) Nil!23600) (_2!13452 lt!794246) (_3!1879 lt!794246) cacheFurthestNullable!141))))

(declare-fun lt!794237 () Unit!37556)

(declare-fun lt!794244 () Unit!37556)

(assert (=> b!2117940 (= lt!794237 lt!794244)))

(declare-fun call!128641 () Bool)

(assert (=> b!2117940 call!128641))

(declare-fun call!128640 () Unit!37556)

(assert (=> b!2117940 (= lt!794244 call!128640)))

(declare-fun lt!794235 () Unit!37556)

(declare-fun Unit!37579 () Unit!37556)

(assert (=> b!2117940 (= lt!794235 Unit!37579)))

(assert (=> b!2117940 call!128642))

(assert (=> b!2117940 (= lt!794236 (furthestNullablePosition!5 (_1!13452 lt!794246) (+ lt!793931 1) totalInput!1306 (size!18432 totalInput!1306) lt!794248))))

(assert (=> b!2117940 (= lt!794248 e!1348223)))

(declare-fun c!339547 () Bool)

(assert (=> b!2117940 (= c!339547 (nullableZipper!52 (_1!13452 lt!794246)))))

(assert (=> b!2117940 (= lt!794246 (derivationStepZipperMem!14 lt!793898 (apply!5904 totalInput!1306 lt!793931) cacheUp!1110 cacheDown!1229))))

(declare-fun e!1348222 () tuple3!2814)

(assert (=> b!2117940 (= e!1348222 (tuple3!2815 (_1!13445 lt!794238) (_2!13445 lt!794238) (_3!1876 lt!794238)))))

(declare-fun b!2117941 () Bool)

(declare-fun res!918463 () Bool)

(assert (=> b!2117941 (=> (not res!918463) (not e!1348225))))

(assert (=> b!2117941 (= res!918463 (valid!1885 cacheFurthestNullable!141))))

(assert (=> d!642934 e!1348225))

(declare-fun res!918461 () Bool)

(assert (=> d!642934 (=> (not res!918461) (not e!1348225))))

(assert (=> d!642934 (= res!918461 (= (_1!13444 (_1!13445 lt!794247)) (furthestNullablePosition!5 lt!793898 lt!793931 totalInput!1306 lt!793932 e!1347699)))))

(declare-fun e!1348224 () tuple3!2814)

(assert (=> d!642934 (= lt!794247 e!1348224)))

(declare-fun c!339546 () Bool)

(declare-fun lt!794241 () Option!4865)

(assert (=> d!642934 (= c!339546 ((_ is Some!4864) lt!794241))))

(assert (=> d!642934 (= lt!794241 (get!7297 cacheFurthestNullable!141 lt!793898 lt!793931 e!1347699))))

(declare-fun lt!794239 () Unit!37556)

(declare-fun Unit!37580 () Unit!37556)

(assert (=> d!642934 (= lt!794239 Unit!37580)))

(assert (=> d!642934 (forall!4845 Nil!23600 lambda!78368)))

(assert (=> d!642934 (= lt!794243 (furthestNullablePosition!5 lt!793898 lt!793931 totalInput!1306 (size!18432 totalInput!1306) e!1347699))))

(assert (=> d!642934 (and (>= lt!793931 0) (<= lt!793931 lt!793932))))

(assert (=> d!642934 (= (furthestNullablePositionStackMem!5 lt!793898 lt!793931 totalInput!1306 lt!793932 e!1347699 Nil!23600 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141) lt!794247)))

(declare-fun lt!794242 () Unit!37556)

(declare-fun lt!794240 () Unit!37556)

(assert (=> b!2117942 (= lt!794242 lt!794240)))

(assert (=> b!2117942 call!128642))

(assert (=> b!2117942 (= lt!794240 call!128640)))

(declare-fun lt!794245 () Unit!37556)

(declare-fun Unit!37581 () Unit!37556)

(assert (=> b!2117942 (= lt!794245 Unit!37581)))

(assert (=> b!2117942 call!128641))

(assert (=> b!2117942 (= e!1348222 (tuple3!2815 (tuple2!23137 e!1347699 Nil!23600) cacheUp!1110 cacheDown!1229))))

(declare-fun b!2117943 () Bool)

(assert (=> b!2117943 (= e!1348224 (tuple3!2815 (tuple2!23137 (v!28127 lt!794241) Nil!23600) cacheUp!1110 cacheDown!1229))))

(declare-fun b!2117944 () Bool)

(assert (=> b!2117944 (= e!1348224 e!1348222)))

(declare-fun res!918462 () Bool)

(assert (=> b!2117944 (= res!918462 (= lt!793931 lt!793932))))

(assert (=> b!2117944 (=> res!918462 e!1348226)))

(assert (=> b!2117944 (= c!339545 e!1348226)))

(declare-fun bm!128636 () Bool)

(assert (=> bm!128636 (= call!128641 (forall!4845 Nil!23600 (ite c!339545 lambda!78368 lambda!78370)))))

(declare-fun b!2117945 () Bool)

(declare-fun res!918460 () Bool)

(assert (=> b!2117945 (=> (not res!918460) (not e!1348225))))

(assert (=> b!2117945 (= res!918460 (valid!1887 (_3!1876 lt!794247)))))

(declare-fun bm!128637 () Bool)

(assert (=> bm!128637 (= call!128640 (lemmaStackPreservesForEqualRes!3 Nil!23600 lt!794243 (ite c!339545 e!1347699 lt!794236)))))

(assert (=> b!2117946 (= e!1348225 (forall!4845 (_2!13444 (_1!13445 lt!794247)) lambda!78372))))

(declare-fun b!2117947 () Bool)

(declare-fun res!918464 () Bool)

(assert (=> b!2117947 (=> (not res!918464) (not e!1348225))))

(assert (=> b!2117947 (= res!918464 (valid!1886 (_2!13445 lt!794247)))))

(declare-fun res!918459 () Bool)

(assert (=> b!2117948 (=> (not res!918459) (not e!1348225))))

(assert (=> b!2117948 (= res!918459 (forall!4845 (_2!13444 (_1!13445 lt!794247)) lambda!78371))))

(declare-fun b!2117949 () Bool)

(assert (=> b!2117949 (= e!1348223 lt!793931)))

(assert (= (and d!642934 c!339546) b!2117943))

(assert (= (and d!642934 (not c!339546)) b!2117944))

(assert (= (and b!2117944 (not res!918462)) b!2117937))

(assert (= (and b!2117944 c!339545) b!2117942))

(assert (= (and b!2117944 (not c!339545)) b!2117940))

(assert (= (and b!2117940 c!339547) b!2117949))

(assert (= (and b!2117940 (not c!339547)) b!2117938))

(assert (= (or b!2117942 b!2117940) bm!128637))

(assert (= (or b!2117942 b!2117940) bm!128635))

(assert (= (or b!2117942 b!2117940) bm!128636))

(assert (= (and d!642934 res!918461) b!2117948))

(assert (= (and b!2117948 res!918459) b!2117947))

(assert (= (and b!2117947 res!918464) b!2117945))

(assert (= (and b!2117945 res!918460) b!2117941))

(assert (= (and b!2117941 res!918463) b!2117939))

(assert (= (and b!2117939 res!918465) b!2117946))

(declare-fun m!2572786 () Bool)

(assert (=> b!2117945 m!2572786))

(assert (=> b!2117937 m!2571987))

(declare-fun m!2572788 () Bool)

(assert (=> b!2117947 m!2572788))

(declare-fun m!2572790 () Bool)

(assert (=> bm!128637 m!2572790))

(declare-fun m!2572792 () Bool)

(assert (=> b!2117946 m!2572792))

(declare-fun m!2572794 () Bool)

(assert (=> b!2117948 m!2572794))

(declare-fun m!2572796 () Bool)

(assert (=> bm!128635 m!2572796))

(assert (=> b!2117941 m!2571931))

(declare-fun m!2572798 () Bool)

(assert (=> b!2117940 m!2572798))

(declare-fun m!2572800 () Bool)

(assert (=> b!2117940 m!2572800))

(assert (=> b!2117940 m!2571837))

(assert (=> b!2117940 m!2572798))

(declare-fun m!2572802 () Bool)

(assert (=> b!2117940 m!2572802))

(declare-fun m!2572804 () Bool)

(assert (=> b!2117940 m!2572804))

(assert (=> b!2117940 m!2571837))

(declare-fun m!2572806 () Bool)

(assert (=> b!2117940 m!2572806))

(declare-fun m!2572808 () Bool)

(assert (=> d!642934 m!2572808))

(declare-fun m!2572810 () Bool)

(assert (=> d!642934 m!2572810))

(assert (=> d!642934 m!2571837))

(declare-fun m!2572812 () Bool)

(assert (=> d!642934 m!2572812))

(assert (=> d!642934 m!2571837))

(declare-fun m!2572814 () Bool)

(assert (=> d!642934 m!2572814))

(declare-fun m!2572816 () Bool)

(assert (=> bm!128636 m!2572816))

(assert (=> d!642672 d!642934))

(assert (=> d!642708 d!642694))

(declare-fun b!2117994 () Bool)

(declare-fun e!1348262 () Unit!37556)

(declare-fun Unit!37582 () Unit!37556)

(assert (=> b!2117994 (= e!1348262 Unit!37582)))

(declare-fun lt!794310 () Unit!37556)

(declare-fun call!128663 () Unit!37556)

(assert (=> b!2117994 (= lt!794310 call!128663)))

(declare-fun call!128662 () Bool)

(assert (=> b!2117994 call!128662))

(declare-fun lt!794307 () Unit!37556)

(assert (=> b!2117994 (= lt!794307 lt!794310)))

(declare-fun lt!794312 () Unit!37556)

(declare-fun call!128666 () Unit!37556)

(assert (=> b!2117994 (= lt!794312 call!128666)))

(assert (=> b!2117994 (= lt!793897 Nil!23598)))

(declare-fun lt!794314 () Unit!37556)

(assert (=> b!2117994 (= lt!794314 lt!794312)))

(assert (=> b!2117994 false))

(declare-fun b!2117995 () Bool)

(declare-fun e!1348264 () tuple2!23142)

(declare-fun e!1348266 () tuple2!23142)

(assert (=> b!2117995 (= e!1348264 e!1348266)))

(declare-fun c!339563 () Bool)

(assert (=> b!2117995 (= c!339563 (= 0 (sizeTr!98 lt!793897 0)))))

(declare-fun b!2117996 () Bool)

(declare-fun e!1348261 () tuple2!23142)

(declare-fun call!128659 () tuple2!23142)

(assert (=> b!2117996 (= e!1348261 call!128659)))

(declare-fun b!2117997 () Bool)

(declare-fun e!1348263 () tuple2!23142)

(declare-fun lt!794308 () tuple2!23142)

(assert (=> b!2117997 (= e!1348263 lt!794308)))

(declare-fun b!2117998 () Bool)

(declare-fun e!1348260 () tuple2!23142)

(assert (=> b!2117998 (= e!1348260 (tuple2!23143 Nil!23598 lt!793897))))

(declare-fun bm!128655 () Bool)

(declare-fun call!128661 () List!23682)

(declare-fun tail!3106 (List!23682) List!23682)

(assert (=> bm!128655 (= call!128661 (tail!3106 lt!793897))))

(declare-fun bm!128656 () Bool)

(declare-fun lemmaIsPrefixRefl!1399 (List!23682 List!23682) Unit!37556)

(assert (=> bm!128656 (= call!128663 (lemmaIsPrefixRefl!1399 lt!793897 lt!793897))))

(declare-fun b!2117999 () Bool)

(declare-fun e!1348259 () Bool)

(declare-fun lt!794328 () tuple2!23142)

(assert (=> b!2117999 (= e!1348259 (>= (size!18433 (_1!13449 lt!794328)) (size!18433 Nil!23598)))))

(declare-fun bm!128657 () Bool)

(declare-fun call!128660 () Regex!5645)

(declare-fun call!128664 () C!11436)

(declare-fun derivativeStep!1430 (Regex!5645 C!11436) Regex!5645)

(assert (=> bm!128657 (= call!128660 (derivativeStep!1430 r!15373 call!128664))))

(declare-fun b!2118000 () Bool)

(declare-fun Unit!37583 () Unit!37556)

(assert (=> b!2118000 (= e!1348262 Unit!37583)))

(declare-fun bm!128658 () Bool)

(declare-fun call!128665 () Bool)

(assert (=> bm!128658 (= call!128665 (nullable!1682 r!15373))))

(declare-fun b!2118001 () Bool)

(declare-fun c!339565 () Bool)

(assert (=> b!2118001 (= c!339565 call!128665)))

(declare-fun lt!794316 () Unit!37556)

(declare-fun lt!794331 () Unit!37556)

(assert (=> b!2118001 (= lt!794316 lt!794331)))

(assert (=> b!2118001 (= lt!793897 Nil!23598)))

(assert (=> b!2118001 (= lt!794331 call!128666)))

(declare-fun lt!794320 () Unit!37556)

(declare-fun lt!794332 () Unit!37556)

(assert (=> b!2118001 (= lt!794320 lt!794332)))

(assert (=> b!2118001 call!128662))

(assert (=> b!2118001 (= lt!794332 call!128663)))

(assert (=> b!2118001 (= e!1348266 e!1348260)))

(declare-fun bm!128659 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!329 (List!23682 List!23682 List!23682) Unit!37556)

(assert (=> bm!128659 (= call!128666 (lemmaIsPrefixSameLengthThenSameList!329 lt!793897 Nil!23598 lt!793897))))

(declare-fun b!2118002 () Bool)

(assert (=> b!2118002 (= e!1348263 (tuple2!23143 Nil!23598 lt!793897))))

(declare-fun b!2118003 () Bool)

(declare-fun e!1348265 () Bool)

(assert (=> b!2118003 (= e!1348265 e!1348259)))

(declare-fun res!918470 () Bool)

(assert (=> b!2118003 (=> res!918470 e!1348259)))

(declare-fun isEmpty!14308 (List!23682) Bool)

(assert (=> b!2118003 (= res!918470 (isEmpty!14308 (_1!13449 lt!794328)))))

(declare-fun b!2118004 () Bool)

(declare-fun c!339560 () Bool)

(assert (=> b!2118004 (= c!339560 call!128665)))

(declare-fun lt!794325 () Unit!37556)

(declare-fun lt!794323 () Unit!37556)

(assert (=> b!2118004 (= lt!794325 lt!794323)))

(declare-fun lt!794334 () C!11436)

(declare-fun lt!794315 () List!23682)

(assert (=> b!2118004 (= (++!6313 (++!6313 Nil!23598 (Cons!23598 lt!794334 Nil!23598)) lt!794315) lt!793897)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!497 (List!23682 C!11436 List!23682 List!23682) Unit!37556)

(assert (=> b!2118004 (= lt!794323 (lemmaMoveElementToOtherListKeepsConcatEq!497 Nil!23598 lt!794334 lt!794315 lt!793897))))

(assert (=> b!2118004 (= lt!794315 (tail!3106 lt!793897))))

(declare-fun head!4634 (List!23682) C!11436)

(assert (=> b!2118004 (= lt!794334 (head!4634 lt!793897))))

(declare-fun lt!794321 () Unit!37556)

(declare-fun lt!794322 () Unit!37556)

(assert (=> b!2118004 (= lt!794321 lt!794322)))

(declare-fun isPrefix!2081 (List!23682 List!23682) Bool)

(declare-fun getSuffix!1024 (List!23682 List!23682) List!23682)

(assert (=> b!2118004 (isPrefix!2081 (++!6313 Nil!23598 (Cons!23598 (head!4634 (getSuffix!1024 lt!793897 Nil!23598)) Nil!23598)) lt!793897)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!369 (List!23682 List!23682) Unit!37556)

(assert (=> b!2118004 (= lt!794322 (lemmaAddHeadSuffixToPrefixStillPrefix!369 Nil!23598 lt!793897))))

(declare-fun lt!794330 () Unit!37556)

(declare-fun lt!794317 () Unit!37556)

(assert (=> b!2118004 (= lt!794330 lt!794317)))

(assert (=> b!2118004 (= lt!794317 (lemmaAddHeadSuffixToPrefixStillPrefix!369 Nil!23598 lt!793897))))

(declare-fun lt!794327 () List!23682)

(assert (=> b!2118004 (= lt!794327 (++!6313 Nil!23598 (Cons!23598 (head!4634 lt!793897) Nil!23598)))))

(declare-fun lt!794313 () Unit!37556)

(assert (=> b!2118004 (= lt!794313 e!1348262)))

(declare-fun c!339564 () Bool)

(assert (=> b!2118004 (= c!339564 (= (size!18433 Nil!23598) (size!18433 lt!793897)))))

(declare-fun lt!794333 () Unit!37556)

(declare-fun lt!794318 () Unit!37556)

(assert (=> b!2118004 (= lt!794333 lt!794318)))

(assert (=> b!2118004 (<= (size!18433 Nil!23598) (size!18433 lt!793897))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!172 (List!23682 List!23682) Unit!37556)

(assert (=> b!2118004 (= lt!794318 (lemmaIsPrefixThenSmallerEqSize!172 Nil!23598 lt!793897))))

(assert (=> b!2118004 (= e!1348266 e!1348261)))

(declare-fun b!2118005 () Bool)

(assert (=> b!2118005 (= e!1348260 (tuple2!23143 Nil!23598 Nil!23598))))

(declare-fun b!2118006 () Bool)

(assert (=> b!2118006 (= e!1348264 (tuple2!23143 Nil!23598 lt!793897))))

(declare-fun bm!128660 () Bool)

(assert (=> bm!128660 (= call!128664 (head!4634 lt!793897))))

(declare-fun d!642936 () Bool)

(assert (=> d!642936 e!1348265))

(declare-fun res!918471 () Bool)

(assert (=> d!642936 (=> (not res!918471) (not e!1348265))))

(assert (=> d!642936 (= res!918471 (= (++!6313 (_1!13449 lt!794328) (_2!13449 lt!794328)) lt!793897))))

(assert (=> d!642936 (= lt!794328 e!1348264)))

(declare-fun c!339561 () Bool)

(declare-fun lostCause!659 (Regex!5645) Bool)

(assert (=> d!642936 (= c!339561 (lostCause!659 r!15373))))

(declare-fun lt!794311 () Unit!37556)

(declare-fun Unit!37584 () Unit!37556)

(assert (=> d!642936 (= lt!794311 Unit!37584)))

(assert (=> d!642936 (= (getSuffix!1024 lt!793897 Nil!23598) lt!793897)))

(declare-fun lt!794329 () Unit!37556)

(declare-fun lt!794324 () Unit!37556)

(assert (=> d!642936 (= lt!794329 lt!794324)))

(declare-fun lt!794326 () List!23682)

(assert (=> d!642936 (= lt!793897 lt!794326)))

(declare-fun lemmaSamePrefixThenSameSuffix!944 (List!23682 List!23682 List!23682 List!23682 List!23682) Unit!37556)

(assert (=> d!642936 (= lt!794324 (lemmaSamePrefixThenSameSuffix!944 Nil!23598 lt!793897 Nil!23598 lt!794326 lt!793897))))

(assert (=> d!642936 (= lt!794326 (getSuffix!1024 lt!793897 Nil!23598))))

(declare-fun lt!794309 () Unit!37556)

(declare-fun lt!794319 () Unit!37556)

(assert (=> d!642936 (= lt!794309 lt!794319)))

(assert (=> d!642936 (isPrefix!2081 Nil!23598 (++!6313 Nil!23598 lt!793897))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1364 (List!23682 List!23682) Unit!37556)

(assert (=> d!642936 (= lt!794319 (lemmaConcatTwoListThenFirstIsPrefix!1364 Nil!23598 lt!793897))))

(assert (=> d!642936 (validRegex!2229 r!15373)))

(assert (=> d!642936 (= (findLongestMatchInner!596 r!15373 Nil!23598 0 lt!793897 lt!793897 (sizeTr!98 lt!793897 0)) lt!794328)))

(declare-fun bm!128654 () Bool)

(assert (=> bm!128654 (= call!128659 (findLongestMatchInner!596 call!128660 lt!794327 (+ 0 1) call!128661 lt!793897 (sizeTr!98 lt!793897 0)))))

(declare-fun bm!128661 () Bool)

(assert (=> bm!128661 (= call!128662 (isPrefix!2081 lt!793897 lt!793897))))

(declare-fun b!2118007 () Bool)

(assert (=> b!2118007 (= e!1348261 e!1348263)))

(assert (=> b!2118007 (= lt!794308 call!128659)))

(declare-fun c!339562 () Bool)

(assert (=> b!2118007 (= c!339562 (isEmpty!14308 (_1!13449 lt!794308)))))

(assert (= (and d!642936 c!339561) b!2118006))

(assert (= (and d!642936 (not c!339561)) b!2117995))

(assert (= (and b!2117995 c!339563) b!2118001))

(assert (= (and b!2117995 (not c!339563)) b!2118004))

(assert (= (and b!2118001 c!339565) b!2118005))

(assert (= (and b!2118001 (not c!339565)) b!2117998))

(assert (= (and b!2118004 c!339564) b!2117994))

(assert (= (and b!2118004 (not c!339564)) b!2118000))

(assert (= (and b!2118004 c!339560) b!2118007))

(assert (= (and b!2118004 (not c!339560)) b!2117996))

(assert (= (and b!2118007 c!339562) b!2118002))

(assert (= (and b!2118007 (not c!339562)) b!2117997))

(assert (= (or b!2118007 b!2117996) bm!128655))

(assert (= (or b!2118007 b!2117996) bm!128660))

(assert (= (or b!2118007 b!2117996) bm!128657))

(assert (= (or b!2118007 b!2117996) bm!128654))

(assert (= (or b!2118001 b!2117994) bm!128656))

(assert (= (or b!2118001 b!2117994) bm!128659))

(assert (= (or b!2118001 b!2118004) bm!128658))

(assert (= (or b!2118001 b!2117994) bm!128661))

(assert (= (and d!642936 res!918471) b!2118003))

(assert (= (and b!2118003 (not res!918470)) b!2117999))

(declare-fun m!2572818 () Bool)

(assert (=> b!2118007 m!2572818))

(declare-fun m!2572820 () Bool)

(assert (=> bm!128659 m!2572820))

(declare-fun m!2572822 () Bool)

(assert (=> bm!128655 m!2572822))

(declare-fun m!2572824 () Bool)

(assert (=> d!642936 m!2572824))

(declare-fun m!2572826 () Bool)

(assert (=> d!642936 m!2572826))

(declare-fun m!2572828 () Bool)

(assert (=> d!642936 m!2572828))

(declare-fun m!2572830 () Bool)

(assert (=> d!642936 m!2572830))

(declare-fun m!2572832 () Bool)

(assert (=> d!642936 m!2572832))

(assert (=> d!642936 m!2571887))

(declare-fun m!2572834 () Bool)

(assert (=> d!642936 m!2572834))

(declare-fun m!2572836 () Bool)

(assert (=> d!642936 m!2572836))

(assert (=> d!642936 m!2572834))

(declare-fun m!2572838 () Bool)

(assert (=> b!2118004 m!2572838))

(declare-fun m!2572840 () Bool)

(assert (=> b!2118004 m!2572840))

(declare-fun m!2572842 () Bool)

(assert (=> b!2118004 m!2572842))

(declare-fun m!2572844 () Bool)

(assert (=> b!2118004 m!2572844))

(assert (=> b!2118004 m!2572830))

(declare-fun m!2572846 () Bool)

(assert (=> b!2118004 m!2572846))

(assert (=> b!2118004 m!2572830))

(declare-fun m!2572848 () Bool)

(assert (=> b!2118004 m!2572848))

(assert (=> b!2118004 m!2572822))

(declare-fun m!2572850 () Bool)

(assert (=> b!2118004 m!2572850))

(declare-fun m!2572852 () Bool)

(assert (=> b!2118004 m!2572852))

(assert (=> b!2118004 m!2572850))

(declare-fun m!2572854 () Bool)

(assert (=> b!2118004 m!2572854))

(assert (=> b!2118004 m!2571859))

(declare-fun m!2572856 () Bool)

(assert (=> b!2118004 m!2572856))

(assert (=> b!2118004 m!2572840))

(declare-fun m!2572858 () Bool)

(assert (=> b!2118004 m!2572858))

(assert (=> bm!128654 m!2571855))

(declare-fun m!2572860 () Bool)

(assert (=> bm!128654 m!2572860))

(assert (=> bm!128660 m!2572852))

(declare-fun m!2572862 () Bool)

(assert (=> bm!128657 m!2572862))

(declare-fun m!2572864 () Bool)

(assert (=> bm!128658 m!2572864))

(declare-fun m!2572866 () Bool)

(assert (=> b!2118003 m!2572866))

(declare-fun m!2572868 () Bool)

(assert (=> bm!128661 m!2572868))

(declare-fun m!2572870 () Bool)

(assert (=> b!2117999 m!2572870))

(assert (=> b!2117999 m!2572838))

(declare-fun m!2572872 () Bool)

(assert (=> bm!128656 m!2572872))

(assert (=> d!642708 d!642936))

(declare-fun d!642938 () Bool)

(declare-fun c!339566 () Bool)

(assert (=> d!642938 (= c!339566 ((_ is Nil!23598) lt!794047))))

(declare-fun e!1348267 () Int)

(assert (=> d!642938 (= (sizeTr!98 lt!794047 lt!794048) e!1348267)))

(declare-fun b!2118008 () Bool)

(assert (=> b!2118008 (= e!1348267 lt!794048)))

(declare-fun b!2118009 () Bool)

(assert (=> b!2118009 (= e!1348267 (sizeTr!98 (t!196191 lt!794047) (+ lt!794048 1)))))

(assert (= (and d!642938 c!339566) b!2118008))

(assert (= (and d!642938 (not c!339566)) b!2118009))

(declare-fun m!2572874 () Bool)

(assert (=> b!2118009 m!2572874))

(assert (=> d!642708 d!642938))

(assert (=> d!642708 d!642728))

(declare-fun d!642940 () Bool)

(declare-fun c!339567 () Bool)

(assert (=> d!642940 (= c!339567 ((_ is Nil!23598) lt!793897))))

(declare-fun e!1348268 () Int)

(assert (=> d!642940 (= (sizeTr!98 lt!793897 lt!794046) e!1348268)))

(declare-fun b!2118010 () Bool)

(assert (=> b!2118010 (= e!1348268 lt!794046)))

(declare-fun b!2118011 () Bool)

(assert (=> b!2118011 (= e!1348268 (sizeTr!98 (t!196191 lt!793897) (+ lt!794046 1)))))

(assert (= (and d!642940 c!339567) b!2118010))

(assert (= (and d!642940 (not c!339567)) b!2118011))

(declare-fun m!2572876 () Bool)

(assert (=> b!2118011 m!2572876))

(assert (=> d!642708 d!642940))

(declare-fun d!642942 () Bool)

(assert (=> d!642942 (= (sizeTr!98 lt!794047 lt!794048) (+ (size!18433 lt!794047) lt!794048))))

(declare-fun lt!794335 () Unit!37556)

(assert (=> d!642942 (= lt!794335 (choose!12657 lt!794047 lt!794048))))

(assert (=> d!642942 (= (lemmaSizeTrEqualsSize!98 lt!794047 lt!794048) lt!794335)))

(declare-fun bs!441649 () Bool)

(assert (= bs!441649 d!642942))

(assert (=> bs!441649 m!2572089))

(assert (=> bs!441649 m!2572093))

(declare-fun m!2572878 () Bool)

(assert (=> bs!441649 m!2572878))

(assert (=> d!642708 d!642942))

(declare-fun b!2118013 () Bool)

(declare-fun e!1348269 () List!23682)

(assert (=> b!2118013 (= e!1348269 (Cons!23598 (h!28999 (_1!13449 lt!794041)) (++!6313 (t!196191 (_1!13449 lt!794041)) (_2!13449 lt!794041))))))

(declare-fun d!642944 () Bool)

(declare-fun e!1348270 () Bool)

(assert (=> d!642944 e!1348270))

(declare-fun res!918473 () Bool)

(assert (=> d!642944 (=> (not res!918473) (not e!1348270))))

(declare-fun lt!794336 () List!23682)

(assert (=> d!642944 (= res!918473 (= (content!3387 lt!794336) ((_ map or) (content!3387 (_1!13449 lt!794041)) (content!3387 (_2!13449 lt!794041)))))))

(assert (=> d!642944 (= lt!794336 e!1348269)))

(declare-fun c!339568 () Bool)

(assert (=> d!642944 (= c!339568 ((_ is Nil!23598) (_1!13449 lt!794041)))))

(assert (=> d!642944 (= (++!6313 (_1!13449 lt!794041) (_2!13449 lt!794041)) lt!794336)))

(declare-fun b!2118015 () Bool)

(assert (=> b!2118015 (= e!1348270 (or (not (= (_2!13449 lt!794041) Nil!23598)) (= lt!794336 (_1!13449 lt!794041))))))

(declare-fun b!2118014 () Bool)

(declare-fun res!918472 () Bool)

(assert (=> b!2118014 (=> (not res!918472) (not e!1348270))))

(assert (=> b!2118014 (= res!918472 (= (size!18433 lt!794336) (+ (size!18433 (_1!13449 lt!794041)) (size!18433 (_2!13449 lt!794041)))))))

(declare-fun b!2118012 () Bool)

(assert (=> b!2118012 (= e!1348269 (_2!13449 lt!794041))))

(assert (= (and d!642944 c!339568) b!2118012))

(assert (= (and d!642944 (not c!339568)) b!2118013))

(assert (= (and d!642944 res!918473) b!2118014))

(assert (= (and b!2118014 res!918472) b!2118015))

(declare-fun m!2572880 () Bool)

(assert (=> b!2118013 m!2572880))

(declare-fun m!2572882 () Bool)

(assert (=> d!642944 m!2572882))

(declare-fun m!2572884 () Bool)

(assert (=> d!642944 m!2572884))

(declare-fun m!2572886 () Bool)

(assert (=> d!642944 m!2572886))

(declare-fun m!2572888 () Bool)

(assert (=> b!2118014 m!2572888))

(declare-fun m!2572890 () Bool)

(assert (=> b!2118014 m!2572890))

(declare-fun m!2572892 () Bool)

(assert (=> b!2118014 m!2572892))

(assert (=> d!642708 d!642944))

(declare-fun d!642946 () Bool)

(assert (=> d!642946 (= (sizeTr!98 lt!793897 lt!794046) (+ (size!18433 lt!793897) lt!794046))))

(declare-fun lt!794337 () Unit!37556)

(assert (=> d!642946 (= lt!794337 (choose!12657 lt!793897 lt!794046))))

(assert (=> d!642946 (= (lemmaSizeTrEqualsSize!98 lt!793897 lt!794046) lt!794337)))

(declare-fun bs!441650 () Bool)

(assert (= bs!441650 d!642946))

(assert (=> bs!441650 m!2572097))

(assert (=> bs!441650 m!2571859))

(declare-fun m!2572894 () Bool)

(assert (=> bs!441650 m!2572894))

(assert (=> d!642708 d!642946))

(assert (=> d!642708 d!642674))

(declare-fun d!642948 () Bool)

(declare-fun lt!794338 () Int)

(assert (=> d!642948 (>= lt!794338 0)))

(declare-fun e!1348271 () Int)

(assert (=> d!642948 (= lt!794338 e!1348271)))

(declare-fun c!339569 () Bool)

(assert (=> d!642948 (= c!339569 ((_ is Nil!23598) lt!794047))))

(assert (=> d!642948 (= (size!18433 lt!794047) lt!794338)))

(declare-fun b!2118016 () Bool)

(assert (=> b!2118016 (= e!1348271 0)))

(declare-fun b!2118017 () Bool)

(assert (=> b!2118017 (= e!1348271 (+ 1 (size!18433 (t!196191 lt!794047))))))

(assert (= (and d!642948 c!339569) b!2118016))

(assert (= (and d!642948 (not c!339569)) b!2118017))

(declare-fun m!2572896 () Bool)

(assert (=> b!2118017 m!2572896))

(assert (=> d!642708 d!642948))

(declare-fun bs!441651 () Bool)

(declare-fun d!642950 () Bool)

(assert (= bs!441651 (and d!642950 d!642848)))

(declare-fun lambda!78373 () Int)

(assert (=> bs!441651 (= lambda!78373 lambda!78335)))

(declare-fun bs!441652 () Bool)

(assert (= bs!441652 (and d!642950 d!642776)))

(assert (=> bs!441652 (= lambda!78373 lambda!78326)))

(declare-fun bs!441653 () Bool)

(assert (= bs!441653 (and d!642950 d!642872)))

(assert (=> bs!441653 (= lambda!78373 lambda!78338)))

(declare-fun bs!441654 () Bool)

(assert (= bs!441654 (and d!642950 d!642800)))

(assert (=> bs!441654 (= lambda!78373 lambda!78331)))

(declare-fun bs!441655 () Bool)

(assert (= bs!441655 (and d!642950 d!642910)))

(assert (=> bs!441655 (= lambda!78373 lambda!78361)))

(declare-fun bs!441656 () Bool)

(assert (= bs!441656 (and d!642950 d!642878)))

(assert (=> bs!441656 (= lambda!78373 lambda!78339)))

(declare-fun bs!441657 () Bool)

(assert (= bs!441657 (and d!642950 d!642866)))

(assert (=> bs!441657 (= lambda!78373 lambda!78337)))

(declare-fun bs!441658 () Bool)

(assert (= bs!441658 (and d!642950 d!642836)))

(assert (=> bs!441658 (= lambda!78373 lambda!78334)))

(declare-fun bs!441659 () Bool)

(assert (= bs!441659 (and d!642950 d!642786)))

(assert (=> bs!441659 (= lambda!78373 lambda!78327)))

(declare-fun bs!441660 () Bool)

(assert (= bs!441660 (and d!642950 d!642806)))

(assert (=> bs!441660 (= lambda!78373 lambda!78332)))

(declare-fun bs!441661 () Bool)

(assert (= bs!441661 (and d!642950 d!642908)))

(assert (=> bs!441661 (= lambda!78373 lambda!78360)))

(declare-fun bs!441662 () Bool)

(assert (= bs!441662 (and d!642950 d!642814)))

(assert (=> bs!441662 (= lambda!78373 lambda!78333)))

(assert (=> d!642950 (= (inv!31182 setElem!14376) (forall!4846 (exprs!1715 setElem!14376) lambda!78373))))

(declare-fun bs!441663 () Bool)

(assert (= bs!441663 d!642950))

(declare-fun m!2572898 () Bool)

(assert (=> bs!441663 m!2572898))

(assert (=> setNonEmpty!14376 d!642950))

(declare-fun bs!441664 () Bool)

(declare-fun d!642952 () Bool)

(assert (= bs!441664 (and d!642952 b!2117942)))

(declare-fun lambda!78378 () Int)

(assert (=> bs!441664 (= (= lt!793980 e!1347699) (= lambda!78378 lambda!78369))))

(declare-fun bs!441665 () Bool)

(assert (= bs!441665 (and d!642952 b!2117886)))

(assert (=> bs!441665 (= (= lt!793980 lt!793985) (= lambda!78378 lambda!78363))))

(declare-fun bs!441666 () Bool)

(assert (= bs!441666 (and d!642952 d!642934)))

(assert (=> bs!441666 (= (= lt!793980 lt!794243) (= lambda!78378 lambda!78368))))

(declare-fun bs!441667 () Bool)

(assert (= bs!441667 (and d!642952 b!2117207)))

(assert (=> bs!441667 (not (= lambda!78378 lambda!78318))))

(declare-fun bs!441668 () Bool)

(assert (= bs!441668 (and d!642952 b!2117884)))

(assert (=> bs!441668 (= (= lt!793980 lt!794207) (= lambda!78378 lambda!78364))))

(declare-fun bs!441669 () Bool)

(assert (= bs!441669 (and d!642952 b!2117209)))

(assert (=> bs!441669 (= (= lt!793980 (_1!13444 (_1!13445 lt!793984))) (= lambda!78378 lambda!78317))))

(declare-fun bs!441670 () Bool)

(assert (= bs!441670 (and d!642952 b!2117892)))

(assert (=> bs!441670 (= (= lt!793980 (_1!13444 (_1!13445 lt!794218))) (= lambda!78378 lambda!78365))))

(declare-fun bs!441671 () Bool)

(assert (= bs!441671 (and d!642952 b!2117890)))

(assert (=> bs!441671 (not (= lambda!78378 lambda!78366))))

(declare-fun bs!441672 () Bool)

(assert (= bs!441672 (and d!642952 b!2117946)))

(assert (=> bs!441672 (not (= lambda!78378 lambda!78372))))

(declare-fun bs!441673 () Bool)

(assert (= bs!441673 (and d!642952 b!2117859)))

(assert (=> bs!441673 (= (= lt!793980 (_1!13444 (_1!13445 lt!794201))) (= lambda!78378 lambda!78358))))

(declare-fun bs!441674 () Bool)

(assert (= bs!441674 (and d!642952 b!2117039)))

(assert (=> bs!441674 (not (= lambda!78378 lambda!78293))))

(declare-fun bs!441675 () Bool)

(assert (= bs!441675 (and d!642952 d!642912)))

(assert (=> bs!441675 (= (= lt!793980 lt!794214) (= lambda!78378 lambda!78362))))

(declare-fun bs!441676 () Bool)

(assert (= bs!441676 (and d!642952 d!642684)))

(assert (=> bs!441676 (= (= lt!793980 (_1!13444 (_1!13445 lt!793988))) (= lambda!78378 lambda!78319))))

(declare-fun bs!441677 () Bool)

(assert (= bs!441677 (and d!642952 b!2117857)))

(assert (=> bs!441677 (not (= lambda!78378 lambda!78359))))

(declare-fun bs!441678 () Bool)

(assert (= bs!441678 (and d!642952 b!2117940)))

(assert (=> bs!441678 (= (= lt!793980 lt!794236) (= lambda!78378 lambda!78370))))

(declare-fun bs!441679 () Bool)

(assert (= bs!441679 (and d!642952 b!2117201)))

(assert (=> bs!441679 (= (= lt!793980 lt!793973) (= lambda!78378 lambda!78316))))

(declare-fun bs!441680 () Bool)

(assert (= bs!441680 (and d!642952 d!642904)))

(assert (=> bs!441680 (= (= lt!793980 lt!794197) (= lambda!78378 lambda!78355))))

(declare-fun bs!441681 () Bool)

(assert (= bs!441681 (and d!642952 d!642682)))

(assert (=> bs!441681 (= lambda!78378 lambda!78314)))

(assert (=> bs!441676 (not (= lambda!78378 lambda!78320))))

(declare-fun bs!441682 () Bool)

(assert (= bs!441682 (and d!642952 b!2117069)))

(assert (=> bs!441682 (= (= lt!793980 (_1!13444 (_1!13445 lt!793905))) (= lambda!78378 lambda!78292))))

(declare-fun bs!441683 () Bool)

(assert (= bs!441683 (and d!642952 d!642672)))

(assert (=> bs!441683 (not (= lambda!78378 lambda!78299))))

(declare-fun bs!441684 () Bool)

(assert (= bs!441684 (and d!642952 b!2117853)))

(assert (=> bs!441684 (= (= lt!793980 e!1347754) (= lambda!78378 lambda!78356))))

(declare-fun bs!441685 () Bool)

(assert (= bs!441685 (and d!642952 b!2117203)))

(assert (=> bs!441685 (= (= lt!793980 e!1347636) (= lambda!78378 lambda!78315))))

(declare-fun bs!441686 () Bool)

(assert (= bs!441686 (and d!642952 b!2117948)))

(assert (=> bs!441686 (= (= lt!793980 (_1!13444 (_1!13445 lt!794247))) (= lambda!78378 lambda!78371))))

(declare-fun bs!441687 () Bool)

(assert (= bs!441687 (and d!642952 b!2117851)))

(assert (=> bs!441687 (= (= lt!793980 lt!794190) (= lambda!78378 lambda!78357))))

(assert (=> bs!441683 (= (= lt!793980 (_1!13444 (_1!13445 lt!793929))) (= lambda!78378 lambda!78298))))

(assert (=> d!642952 true))

(declare-fun lambda!78379 () Int)

(assert (=> bs!441664 (= (= (ite c!339406 e!1347636 lt!793973) e!1347699) (= lambda!78379 lambda!78369))))

(assert (=> bs!441665 (= (= (ite c!339406 e!1347636 lt!793973) lt!793985) (= lambda!78379 lambda!78363))))

(assert (=> bs!441666 (= (= (ite c!339406 e!1347636 lt!793973) lt!794243) (= lambda!78379 lambda!78368))))

(assert (=> bs!441667 (not (= lambda!78379 lambda!78318))))

(assert (=> bs!441668 (= (= (ite c!339406 e!1347636 lt!793973) lt!794207) (= lambda!78379 lambda!78364))))

(assert (=> bs!441669 (= (= (ite c!339406 e!1347636 lt!793973) (_1!13444 (_1!13445 lt!793984))) (= lambda!78379 lambda!78317))))

(assert (=> bs!441670 (= (= (ite c!339406 e!1347636 lt!793973) (_1!13444 (_1!13445 lt!794218))) (= lambda!78379 lambda!78365))))

(assert (=> bs!441671 (not (= lambda!78379 lambda!78366))))

(assert (=> bs!441672 (not (= lambda!78379 lambda!78372))))

(assert (=> bs!441673 (= (= (ite c!339406 e!1347636 lt!793973) (_1!13444 (_1!13445 lt!794201))) (= lambda!78379 lambda!78358))))

(assert (=> bs!441674 (not (= lambda!78379 lambda!78293))))

(assert (=> bs!441675 (= (= (ite c!339406 e!1347636 lt!793973) lt!794214) (= lambda!78379 lambda!78362))))

(assert (=> bs!441676 (= (= (ite c!339406 e!1347636 lt!793973) (_1!13444 (_1!13445 lt!793988))) (= lambda!78379 lambda!78319))))

(assert (=> bs!441677 (not (= lambda!78379 lambda!78359))))

(assert (=> bs!441678 (= (= (ite c!339406 e!1347636 lt!793973) lt!794236) (= lambda!78379 lambda!78370))))

(declare-fun bs!441688 () Bool)

(assert (= bs!441688 d!642952))

(assert (=> bs!441688 (= (= (ite c!339406 e!1347636 lt!793973) lt!793980) (= lambda!78379 lambda!78378))))

(assert (=> bs!441679 (= (= (ite c!339406 e!1347636 lt!793973) lt!793973) (= lambda!78379 lambda!78316))))

(assert (=> bs!441680 (= (= (ite c!339406 e!1347636 lt!793973) lt!794197) (= lambda!78379 lambda!78355))))

(assert (=> bs!441681 (= (= (ite c!339406 e!1347636 lt!793973) lt!793980) (= lambda!78379 lambda!78314))))

(assert (=> bs!441676 (not (= lambda!78379 lambda!78320))))

(assert (=> bs!441682 (= (= (ite c!339406 e!1347636 lt!793973) (_1!13444 (_1!13445 lt!793905))) (= lambda!78379 lambda!78292))))

(assert (=> bs!441683 (not (= lambda!78379 lambda!78299))))

(assert (=> bs!441684 (= (= (ite c!339406 e!1347636 lt!793973) e!1347754) (= lambda!78379 lambda!78356))))

(assert (=> bs!441685 (= (= (ite c!339406 e!1347636 lt!793973) e!1347636) (= lambda!78379 lambda!78315))))

(assert (=> bs!441686 (= (= (ite c!339406 e!1347636 lt!793973) (_1!13444 (_1!13445 lt!794247))) (= lambda!78379 lambda!78371))))

(assert (=> bs!441687 (= (= (ite c!339406 e!1347636 lt!793973) lt!794190) (= lambda!78379 lambda!78357))))

(assert (=> bs!441683 (= (= (ite c!339406 e!1347636 lt!793973) (_1!13444 (_1!13445 lt!793929))) (= lambda!78379 lambda!78298))))

(assert (=> d!642952 true))

(assert (=> d!642952 (forall!4845 Nil!23600 lambda!78379)))

(declare-fun lt!794341 () Unit!37556)

(declare-fun choose!12661 (List!23684 Int Int) Unit!37556)

(assert (=> d!642952 (= lt!794341 (choose!12661 Nil!23600 lt!793980 (ite c!339406 e!1347636 lt!793973)))))

(assert (=> d!642952 (forall!4845 Nil!23600 lambda!78378)))

(assert (=> d!642952 (= (lemmaStackPreservesForEqualRes!3 Nil!23600 lt!793980 (ite c!339406 e!1347636 lt!793973)) lt!794341)))

(declare-fun m!2572900 () Bool)

(assert (=> bs!441688 m!2572900))

(declare-fun m!2572902 () Bool)

(assert (=> bs!441688 m!2572902))

(declare-fun m!2572904 () Bool)

(assert (=> bs!441688 m!2572904))

(assert (=> bm!128585 d!642952))

(assert (=> d!642692 d!642728))

(declare-fun d!642954 () Bool)

(declare-fun res!918474 () Bool)

(declare-fun e!1348272 () Bool)

(assert (=> d!642954 (=> (not res!918474) (not e!1348272))))

(assert (=> d!642954 (= res!918474 (= (csize!15798 (c!339387 input!6660)) (+ (size!18434 (left!18281 (c!339387 input!6660))) (size!18434 (right!18611 (c!339387 input!6660))))))))

(assert (=> d!642954 (= (inv!31180 (c!339387 input!6660)) e!1348272)))

(declare-fun b!2118018 () Bool)

(declare-fun res!918475 () Bool)

(assert (=> b!2118018 (=> (not res!918475) (not e!1348272))))

(assert (=> b!2118018 (= res!918475 (and (not (= (left!18281 (c!339387 input!6660)) Empty!7784)) (not (= (right!18611 (c!339387 input!6660)) Empty!7784))))))

(declare-fun b!2118019 () Bool)

(declare-fun res!918476 () Bool)

(assert (=> b!2118019 (=> (not res!918476) (not e!1348272))))

(assert (=> b!2118019 (= res!918476 (= (cheight!7995 (c!339387 input!6660)) (+ (max!0 (height!1230 (left!18281 (c!339387 input!6660))) (height!1230 (right!18611 (c!339387 input!6660)))) 1)))))

(declare-fun b!2118020 () Bool)

(assert (=> b!2118020 (= e!1348272 (<= 0 (cheight!7995 (c!339387 input!6660))))))

(assert (= (and d!642954 res!918474) b!2118018))

(assert (= (and b!2118018 res!918475) b!2118019))

(assert (= (and b!2118019 res!918476) b!2118020))

(assert (=> d!642954 m!2572436))

(declare-fun m!2572906 () Bool)

(assert (=> d!642954 m!2572906))

(assert (=> b!2118019 m!2572468))

(assert (=> b!2118019 m!2572470))

(assert (=> b!2118019 m!2572468))

(assert (=> b!2118019 m!2572470))

(declare-fun m!2572908 () Bool)

(assert (=> b!2118019 m!2572908))

(assert (=> b!2117321 d!642954))

(declare-fun d!642956 () Bool)

(declare-fun res!918477 () Bool)

(declare-fun e!1348273 () Bool)

(assert (=> d!642956 (=> (not res!918477) (not e!1348273))))

(assert (=> d!642956 (= res!918477 (<= (size!18433 (list!9509 (xs!10726 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) 512))))

(assert (=> d!642956 (= (inv!31181 (c!339387 (totalInput!2863 cacheFurthestNullable!141))) e!1348273)))

(declare-fun b!2118021 () Bool)

(declare-fun res!918478 () Bool)

(assert (=> b!2118021 (=> (not res!918478) (not e!1348273))))

(assert (=> b!2118021 (= res!918478 (= (csize!15799 (c!339387 (totalInput!2863 cacheFurthestNullable!141))) (size!18433 (list!9509 (xs!10726 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))))

(declare-fun b!2118022 () Bool)

(assert (=> b!2118022 (= e!1348273 (and (> (csize!15799 (c!339387 (totalInput!2863 cacheFurthestNullable!141))) 0) (<= (csize!15799 (c!339387 (totalInput!2863 cacheFurthestNullable!141))) 512)))))

(assert (= (and d!642956 res!918477) b!2118021))

(assert (= (and b!2118021 res!918478) b!2118022))

(declare-fun m!2572910 () Bool)

(assert (=> d!642956 m!2572910))

(assert (=> d!642956 m!2572910))

(declare-fun m!2572912 () Bool)

(assert (=> d!642956 m!2572912))

(assert (=> b!2118021 m!2572910))

(assert (=> b!2118021 m!2572910))

(assert (=> b!2118021 m!2572912))

(assert (=> b!2117134 d!642956))

(declare-fun bs!441689 () Bool)

(declare-fun d!642958 () Bool)

(assert (= bs!441689 (and d!642958 d!642848)))

(declare-fun lambda!78380 () Int)

(assert (=> bs!441689 (= lambda!78380 lambda!78335)))

(declare-fun bs!441690 () Bool)

(assert (= bs!441690 (and d!642958 d!642776)))

(assert (=> bs!441690 (= lambda!78380 lambda!78326)))

(declare-fun bs!441691 () Bool)

(assert (= bs!441691 (and d!642958 d!642872)))

(assert (=> bs!441691 (= lambda!78380 lambda!78338)))

(declare-fun bs!441692 () Bool)

(assert (= bs!441692 (and d!642958 d!642800)))

(assert (=> bs!441692 (= lambda!78380 lambda!78331)))

(declare-fun bs!441693 () Bool)

(assert (= bs!441693 (and d!642958 d!642910)))

(assert (=> bs!441693 (= lambda!78380 lambda!78361)))

(declare-fun bs!441694 () Bool)

(assert (= bs!441694 (and d!642958 d!642950)))

(assert (=> bs!441694 (= lambda!78380 lambda!78373)))

(declare-fun bs!441695 () Bool)

(assert (= bs!441695 (and d!642958 d!642878)))

(assert (=> bs!441695 (= lambda!78380 lambda!78339)))

(declare-fun bs!441696 () Bool)

(assert (= bs!441696 (and d!642958 d!642866)))

(assert (=> bs!441696 (= lambda!78380 lambda!78337)))

(declare-fun bs!441697 () Bool)

(assert (= bs!441697 (and d!642958 d!642836)))

(assert (=> bs!441697 (= lambda!78380 lambda!78334)))

(declare-fun bs!441698 () Bool)

(assert (= bs!441698 (and d!642958 d!642786)))

(assert (=> bs!441698 (= lambda!78380 lambda!78327)))

(declare-fun bs!441699 () Bool)

(assert (= bs!441699 (and d!642958 d!642806)))

(assert (=> bs!441699 (= lambda!78380 lambda!78332)))

(declare-fun bs!441700 () Bool)

(assert (= bs!441700 (and d!642958 d!642908)))

(assert (=> bs!441700 (= lambda!78380 lambda!78360)))

(declare-fun bs!441701 () Bool)

(assert (= bs!441701 (and d!642958 d!642814)))

(assert (=> bs!441701 (= lambda!78380 lambda!78333)))

(assert (=> d!642958 (= (inv!31182 (_2!13440 (_1!13441 (h!28998 mapDefault!11591)))) (forall!4846 (exprs!1715 (_2!13440 (_1!13441 (h!28998 mapDefault!11591)))) lambda!78380))))

(declare-fun bs!441702 () Bool)

(assert (= bs!441702 d!642958))

(declare-fun m!2572914 () Bool)

(assert (=> bs!441702 m!2572914))

(assert (=> b!2117472 d!642958))

(assert (=> d!642702 d!642674))

(assert (=> d!642702 d!642694))

(declare-fun d!642960 () Bool)

(assert (=> d!642960 (= (sizeTr!98 lt!793897 0) (+ (size!18433 lt!793897) 0))))

(assert (=> d!642960 true))

(declare-fun _$32!411 () Unit!37556)

(assert (=> d!642960 (= (choose!12657 lt!793897 0) _$32!411)))

(declare-fun bs!441703 () Bool)

(assert (= bs!441703 d!642960))

(assert (=> bs!441703 m!2571855))

(assert (=> bs!441703 m!2571859))

(assert (=> d!642702 d!642960))

(declare-fun bs!441704 () Bool)

(declare-fun d!642962 () Bool)

(assert (= bs!441704 (and d!642962 d!642848)))

(declare-fun lambda!78381 () Int)

(assert (=> bs!441704 (= lambda!78381 lambda!78335)))

(declare-fun bs!441705 () Bool)

(assert (= bs!441705 (and d!642962 d!642776)))

(assert (=> bs!441705 (= lambda!78381 lambda!78326)))

(declare-fun bs!441706 () Bool)

(assert (= bs!441706 (and d!642962 d!642872)))

(assert (=> bs!441706 (= lambda!78381 lambda!78338)))

(declare-fun bs!441707 () Bool)

(assert (= bs!441707 (and d!642962 d!642800)))

(assert (=> bs!441707 (= lambda!78381 lambda!78331)))

(declare-fun bs!441708 () Bool)

(assert (= bs!441708 (and d!642962 d!642910)))

(assert (=> bs!441708 (= lambda!78381 lambda!78361)))

(declare-fun bs!441709 () Bool)

(assert (= bs!441709 (and d!642962 d!642950)))

(assert (=> bs!441709 (= lambda!78381 lambda!78373)))

(declare-fun bs!441710 () Bool)

(assert (= bs!441710 (and d!642962 d!642878)))

(assert (=> bs!441710 (= lambda!78381 lambda!78339)))

(declare-fun bs!441711 () Bool)

(assert (= bs!441711 (and d!642962 d!642958)))

(assert (=> bs!441711 (= lambda!78381 lambda!78380)))

(declare-fun bs!441712 () Bool)

(assert (= bs!441712 (and d!642962 d!642866)))

(assert (=> bs!441712 (= lambda!78381 lambda!78337)))

(declare-fun bs!441713 () Bool)

(assert (= bs!441713 (and d!642962 d!642836)))

(assert (=> bs!441713 (= lambda!78381 lambda!78334)))

(declare-fun bs!441714 () Bool)

(assert (= bs!441714 (and d!642962 d!642786)))

(assert (=> bs!441714 (= lambda!78381 lambda!78327)))

(declare-fun bs!441715 () Bool)

(assert (= bs!441715 (and d!642962 d!642806)))

(assert (=> bs!441715 (= lambda!78381 lambda!78332)))

(declare-fun bs!441716 () Bool)

(assert (= bs!441716 (and d!642962 d!642908)))

(assert (=> bs!441716 (= lambda!78381 lambda!78360)))

(declare-fun bs!441717 () Bool)

(assert (= bs!441717 (and d!642962 d!642814)))

(assert (=> bs!441717 (= lambda!78381 lambda!78333)))

(assert (=> d!642962 (= (inv!31182 (_2!13440 (_1!13441 (h!28998 mapValue!11591)))) (forall!4846 (exprs!1715 (_2!13440 (_1!13441 (h!28998 mapValue!11591)))) lambda!78381))))

(declare-fun bs!441718 () Bool)

(assert (= bs!441718 d!642962))

(declare-fun m!2572916 () Bool)

(assert (=> bs!441718 m!2572916))

(assert (=> b!2117476 d!642962))

(declare-fun bs!441719 () Bool)

(declare-fun d!642964 () Bool)

(assert (= bs!441719 (and d!642964 d!642848)))

(declare-fun lambda!78382 () Int)

(assert (=> bs!441719 (= lambda!78382 lambda!78335)))

(declare-fun bs!441720 () Bool)

(assert (= bs!441720 (and d!642964 d!642776)))

(assert (=> bs!441720 (= lambda!78382 lambda!78326)))

(declare-fun bs!441721 () Bool)

(assert (= bs!441721 (and d!642964 d!642872)))

(assert (=> bs!441721 (= lambda!78382 lambda!78338)))

(declare-fun bs!441722 () Bool)

(assert (= bs!441722 (and d!642964 d!642800)))

(assert (=> bs!441722 (= lambda!78382 lambda!78331)))

(declare-fun bs!441723 () Bool)

(assert (= bs!441723 (and d!642964 d!642910)))

(assert (=> bs!441723 (= lambda!78382 lambda!78361)))

(declare-fun bs!441724 () Bool)

(assert (= bs!441724 (and d!642964 d!642950)))

(assert (=> bs!441724 (= lambda!78382 lambda!78373)))

(declare-fun bs!441725 () Bool)

(assert (= bs!441725 (and d!642964 d!642878)))

(assert (=> bs!441725 (= lambda!78382 lambda!78339)))

(declare-fun bs!441726 () Bool)

(assert (= bs!441726 (and d!642964 d!642958)))

(assert (=> bs!441726 (= lambda!78382 lambda!78380)))

(declare-fun bs!441727 () Bool)

(assert (= bs!441727 (and d!642964 d!642866)))

(assert (=> bs!441727 (= lambda!78382 lambda!78337)))

(declare-fun bs!441728 () Bool)

(assert (= bs!441728 (and d!642964 d!642962)))

(assert (=> bs!441728 (= lambda!78382 lambda!78381)))

(declare-fun bs!441729 () Bool)

(assert (= bs!441729 (and d!642964 d!642836)))

(assert (=> bs!441729 (= lambda!78382 lambda!78334)))

(declare-fun bs!441730 () Bool)

(assert (= bs!441730 (and d!642964 d!642786)))

(assert (=> bs!441730 (= lambda!78382 lambda!78327)))

(declare-fun bs!441731 () Bool)

(assert (= bs!441731 (and d!642964 d!642806)))

(assert (=> bs!441731 (= lambda!78382 lambda!78332)))

(declare-fun bs!441732 () Bool)

(assert (= bs!441732 (and d!642964 d!642908)))

(assert (=> bs!441732 (= lambda!78382 lambda!78360)))

(declare-fun bs!441733 () Bool)

(assert (= bs!441733 (and d!642964 d!642814)))

(assert (=> bs!441733 (= lambda!78382 lambda!78333)))

(assert (=> d!642964 (= (inv!31182 setElem!14343) (forall!4846 (exprs!1715 setElem!14343) lambda!78382))))

(declare-fun bs!441734 () Bool)

(assert (= bs!441734 d!642964))

(declare-fun m!2572918 () Bool)

(assert (=> bs!441734 m!2572918))

(assert (=> setNonEmpty!14343 d!642964))

(assert (=> d!642768 d!642864))

(declare-fun d!642966 () Bool)

(declare-fun lt!794344 () Bool)

(assert (=> d!642966 (= lt!794344 (exists!686 (toList!1056 lt!793898) lambda!78323))))

(declare-fun choose!12662 ((InoxSet Context!2430) Int) Bool)

(assert (=> d!642966 (= lt!794344 (choose!12662 lt!793898 lambda!78323))))

(assert (=> d!642966 (= (exists!685 lt!793898 lambda!78323) lt!794344)))

(declare-fun bs!441735 () Bool)

(assert (= bs!441735 d!642966))

(assert (=> bs!441735 m!2572570))

(assert (=> bs!441735 m!2572570))

(declare-fun m!2572920 () Bool)

(assert (=> bs!441735 m!2572920))

(declare-fun m!2572922 () Bool)

(assert (=> bs!441735 m!2572922))

(assert (=> d!642706 d!642966))

(declare-fun bs!441736 () Bool)

(declare-fun d!642968 () Bool)

(assert (= bs!441736 (and d!642968 d!642964)))

(declare-fun lambda!78383 () Int)

(assert (=> bs!441736 (= lambda!78383 lambda!78382)))

(declare-fun bs!441737 () Bool)

(assert (= bs!441737 (and d!642968 d!642848)))

(assert (=> bs!441737 (= lambda!78383 lambda!78335)))

(declare-fun bs!441738 () Bool)

(assert (= bs!441738 (and d!642968 d!642776)))

(assert (=> bs!441738 (= lambda!78383 lambda!78326)))

(declare-fun bs!441739 () Bool)

(assert (= bs!441739 (and d!642968 d!642872)))

(assert (=> bs!441739 (= lambda!78383 lambda!78338)))

(declare-fun bs!441740 () Bool)

(assert (= bs!441740 (and d!642968 d!642800)))

(assert (=> bs!441740 (= lambda!78383 lambda!78331)))

(declare-fun bs!441741 () Bool)

(assert (= bs!441741 (and d!642968 d!642910)))

(assert (=> bs!441741 (= lambda!78383 lambda!78361)))

(declare-fun bs!441742 () Bool)

(assert (= bs!441742 (and d!642968 d!642950)))

(assert (=> bs!441742 (= lambda!78383 lambda!78373)))

(declare-fun bs!441743 () Bool)

(assert (= bs!441743 (and d!642968 d!642878)))

(assert (=> bs!441743 (= lambda!78383 lambda!78339)))

(declare-fun bs!441744 () Bool)

(assert (= bs!441744 (and d!642968 d!642958)))

(assert (=> bs!441744 (= lambda!78383 lambda!78380)))

(declare-fun bs!441745 () Bool)

(assert (= bs!441745 (and d!642968 d!642866)))

(assert (=> bs!441745 (= lambda!78383 lambda!78337)))

(declare-fun bs!441746 () Bool)

(assert (= bs!441746 (and d!642968 d!642962)))

(assert (=> bs!441746 (= lambda!78383 lambda!78381)))

(declare-fun bs!441747 () Bool)

(assert (= bs!441747 (and d!642968 d!642836)))

(assert (=> bs!441747 (= lambda!78383 lambda!78334)))

(declare-fun bs!441748 () Bool)

(assert (= bs!441748 (and d!642968 d!642786)))

(assert (=> bs!441748 (= lambda!78383 lambda!78327)))

(declare-fun bs!441749 () Bool)

(assert (= bs!441749 (and d!642968 d!642806)))

(assert (=> bs!441749 (= lambda!78383 lambda!78332)))

(declare-fun bs!441750 () Bool)

(assert (= bs!441750 (and d!642968 d!642908)))

(assert (=> bs!441750 (= lambda!78383 lambda!78360)))

(declare-fun bs!441751 () Bool)

(assert (= bs!441751 (and d!642968 d!642814)))

(assert (=> bs!441751 (= lambda!78383 lambda!78333)))

(assert (=> d!642968 (= (inv!31182 setElem!14375) (forall!4846 (exprs!1715 setElem!14375) lambda!78383))))

(declare-fun bs!441752 () Bool)

(assert (= bs!441752 d!642968))

(declare-fun m!2572924 () Bool)

(assert (=> bs!441752 m!2572924))

(assert (=> setNonEmpty!14375 d!642968))

(declare-fun b!2118028 () Bool)

(assert (=> b!2118028 true))

(declare-fun d!642970 () Bool)

(declare-fun res!918483 () Bool)

(declare-fun e!1348276 () Bool)

(assert (=> d!642970 (=> (not res!918483) (not e!1348276))))

(declare-fun valid!1889 (MutableMap!2312) Bool)

(assert (=> d!642970 (= res!918483 (valid!1889 (cache!2693 (_4!469 lt!793892))))))

(assert (=> d!642970 (= (validCacheMapFurthestNullable!89 (cache!2693 (_4!469 lt!793892)) (totalInput!2863 (_4!469 lt!793892))) e!1348276)))

(declare-fun b!2118027 () Bool)

(declare-fun res!918484 () Bool)

(assert (=> b!2118027 (=> (not res!918484) (not e!1348276))))

(declare-fun invariantList!296 (List!23685) Bool)

(declare-datatypes ((ListMap!641 0))(
  ( (ListMap!642 (toList!1058 List!23685)) )
))
(declare-fun map!4818 (MutableMap!2312) ListMap!641)

(assert (=> b!2118027 (= res!918484 (invariantList!296 (toList!1058 (map!4818 (cache!2693 (_4!469 lt!793892))))))))

(declare-fun lambda!78386 () Int)

(declare-fun forall!4849 (List!23685 Int) Bool)

(assert (=> b!2118028 (= e!1348276 (forall!4849 (toList!1058 (map!4818 (cache!2693 (_4!469 lt!793892)))) lambda!78386))))

(assert (= (and d!642970 res!918483) b!2118027))

(assert (= (and b!2118027 res!918484) b!2118028))

(declare-fun m!2572927 () Bool)

(assert (=> d!642970 m!2572927))

(declare-fun m!2572929 () Bool)

(assert (=> b!2118027 m!2572929))

(declare-fun m!2572931 () Bool)

(assert (=> b!2118027 m!2572931))

(assert (=> b!2118028 m!2572929))

(declare-fun m!2572933 () Bool)

(assert (=> b!2118028 m!2572933))

(assert (=> d!642720 d!642970))

(declare-fun bs!441753 () Bool)

(declare-fun d!642972 () Bool)

(assert (= bs!441753 (and d!642972 d!642964)))

(declare-fun lambda!78387 () Int)

(assert (=> bs!441753 (= lambda!78387 lambda!78382)))

(declare-fun bs!441754 () Bool)

(assert (= bs!441754 (and d!642972 d!642848)))

(assert (=> bs!441754 (= lambda!78387 lambda!78335)))

(declare-fun bs!441755 () Bool)

(assert (= bs!441755 (and d!642972 d!642776)))

(assert (=> bs!441755 (= lambda!78387 lambda!78326)))

(declare-fun bs!441756 () Bool)

(assert (= bs!441756 (and d!642972 d!642872)))

(assert (=> bs!441756 (= lambda!78387 lambda!78338)))

(declare-fun bs!441757 () Bool)

(assert (= bs!441757 (and d!642972 d!642800)))

(assert (=> bs!441757 (= lambda!78387 lambda!78331)))

(declare-fun bs!441758 () Bool)

(assert (= bs!441758 (and d!642972 d!642910)))

(assert (=> bs!441758 (= lambda!78387 lambda!78361)))

(declare-fun bs!441759 () Bool)

(assert (= bs!441759 (and d!642972 d!642950)))

(assert (=> bs!441759 (= lambda!78387 lambda!78373)))

(declare-fun bs!441760 () Bool)

(assert (= bs!441760 (and d!642972 d!642878)))

(assert (=> bs!441760 (= lambda!78387 lambda!78339)))

(declare-fun bs!441761 () Bool)

(assert (= bs!441761 (and d!642972 d!642958)))

(assert (=> bs!441761 (= lambda!78387 lambda!78380)))

(declare-fun bs!441762 () Bool)

(assert (= bs!441762 (and d!642972 d!642962)))

(assert (=> bs!441762 (= lambda!78387 lambda!78381)))

(declare-fun bs!441763 () Bool)

(assert (= bs!441763 (and d!642972 d!642836)))

(assert (=> bs!441763 (= lambda!78387 lambda!78334)))

(declare-fun bs!441764 () Bool)

(assert (= bs!441764 (and d!642972 d!642786)))

(assert (=> bs!441764 (= lambda!78387 lambda!78327)))

(declare-fun bs!441765 () Bool)

(assert (= bs!441765 (and d!642972 d!642806)))

(assert (=> bs!441765 (= lambda!78387 lambda!78332)))

(declare-fun bs!441766 () Bool)

(assert (= bs!441766 (and d!642972 d!642866)))

(assert (=> bs!441766 (= lambda!78387 lambda!78337)))

(declare-fun bs!441767 () Bool)

(assert (= bs!441767 (and d!642972 d!642968)))

(assert (=> bs!441767 (= lambda!78387 lambda!78383)))

(declare-fun bs!441768 () Bool)

(assert (= bs!441768 (and d!642972 d!642908)))

(assert (=> bs!441768 (= lambda!78387 lambda!78360)))

(declare-fun bs!441769 () Bool)

(assert (= bs!441769 (and d!642972 d!642814)))

(assert (=> bs!441769 (= lambda!78387 lambda!78333)))

(assert (=> d!642972 (= (inv!31182 (_1!13442 (_1!13443 (h!29000 mapValue!11585)))) (forall!4846 (exprs!1715 (_1!13442 (_1!13443 (h!29000 mapValue!11585)))) lambda!78387))))

(declare-fun bs!441770 () Bool)

(assert (= bs!441770 d!642972))

(declare-fun m!2572935 () Bool)

(assert (=> bs!441770 m!2572935))

(assert (=> b!2117365 d!642972))

(declare-fun d!642974 () Bool)

(declare-fun res!918485 () Bool)

(declare-fun e!1348277 () Bool)

(assert (=> d!642974 (=> (not res!918485) (not e!1348277))))

(assert (=> d!642974 (= res!918485 (= (csize!15798 (c!339387 totalInput!1306)) (+ (size!18434 (left!18281 (c!339387 totalInput!1306))) (size!18434 (right!18611 (c!339387 totalInput!1306))))))))

(assert (=> d!642974 (= (inv!31180 (c!339387 totalInput!1306)) e!1348277)))

(declare-fun b!2118031 () Bool)

(declare-fun res!918486 () Bool)

(assert (=> b!2118031 (=> (not res!918486) (not e!1348277))))

(assert (=> b!2118031 (= res!918486 (and (not (= (left!18281 (c!339387 totalInput!1306)) Empty!7784)) (not (= (right!18611 (c!339387 totalInput!1306)) Empty!7784))))))

(declare-fun b!2118032 () Bool)

(declare-fun res!918487 () Bool)

(assert (=> b!2118032 (=> (not res!918487) (not e!1348277))))

(assert (=> b!2118032 (= res!918487 (= (cheight!7995 (c!339387 totalInput!1306)) (+ (max!0 (height!1230 (left!18281 (c!339387 totalInput!1306))) (height!1230 (right!18611 (c!339387 totalInput!1306)))) 1)))))

(declare-fun b!2118033 () Bool)

(assert (=> b!2118033 (= e!1348277 (<= 0 (cheight!7995 (c!339387 totalInput!1306))))))

(assert (= (and d!642974 res!918485) b!2118031))

(assert (= (and b!2118031 res!918486) b!2118032))

(assert (= (and b!2118032 res!918487) b!2118033))

(declare-fun m!2572937 () Bool)

(assert (=> d!642974 m!2572937))

(declare-fun m!2572939 () Bool)

(assert (=> d!642974 m!2572939))

(declare-fun m!2572941 () Bool)

(assert (=> b!2118032 m!2572941))

(declare-fun m!2572943 () Bool)

(assert (=> b!2118032 m!2572943))

(assert (=> b!2118032 m!2572941))

(assert (=> b!2118032 m!2572943))

(declare-fun m!2572945 () Bool)

(assert (=> b!2118032 m!2572945))

(assert (=> b!2117339 d!642974))

(declare-fun d!642976 () Bool)

(declare-fun lt!794345 () Int)

(assert (=> d!642976 (>= lt!794345 0)))

(declare-fun e!1348278 () Int)

(assert (=> d!642976 (= lt!794345 e!1348278)))

(declare-fun c!339570 () Bool)

(assert (=> d!642976 (= c!339570 ((_ is Nil!23598) (list!9507 input!6660)))))

(assert (=> d!642976 (= (size!18433 (list!9507 input!6660)) lt!794345)))

(declare-fun b!2118034 () Bool)

(assert (=> b!2118034 (= e!1348278 0)))

(declare-fun b!2118035 () Bool)

(assert (=> b!2118035 (= e!1348278 (+ 1 (size!18433 (t!196191 (list!9507 input!6660)))))))

(assert (= (and d!642976 c!339570) b!2118034))

(assert (= (and d!642976 (not c!339570)) b!2118035))

(declare-fun m!2572947 () Bool)

(assert (=> b!2118035 m!2572947))

(assert (=> d!642700 d!642976))

(assert (=> d!642700 d!642766))

(declare-fun d!642978 () Bool)

(declare-fun lt!794346 () Int)

(assert (=> d!642978 (= lt!794346 (size!18433 (list!9508 (c!339387 input!6660))))))

(assert (=> d!642978 (= lt!794346 (ite ((_ is Empty!7784) (c!339387 input!6660)) 0 (ite ((_ is Leaf!11374) (c!339387 input!6660)) (csize!15799 (c!339387 input!6660)) (csize!15798 (c!339387 input!6660)))))))

(assert (=> d!642978 (= (size!18434 (c!339387 input!6660)) lt!794346)))

(declare-fun bs!441771 () Bool)

(assert (= bs!441771 d!642978))

(assert (=> bs!441771 m!2572173))

(assert (=> bs!441771 m!2572173))

(declare-fun m!2572949 () Bool)

(assert (=> bs!441771 m!2572949))

(assert (=> d!642700 d!642978))

(declare-fun bs!441772 () Bool)

(declare-fun d!642980 () Bool)

(assert (= bs!441772 (and d!642980 d!642964)))

(declare-fun lambda!78388 () Int)

(assert (=> bs!441772 (= lambda!78388 lambda!78382)))

(declare-fun bs!441773 () Bool)

(assert (= bs!441773 (and d!642980 d!642848)))

(assert (=> bs!441773 (= lambda!78388 lambda!78335)))

(declare-fun bs!441774 () Bool)

(assert (= bs!441774 (and d!642980 d!642776)))

(assert (=> bs!441774 (= lambda!78388 lambda!78326)))

(declare-fun bs!441775 () Bool)

(assert (= bs!441775 (and d!642980 d!642872)))

(assert (=> bs!441775 (= lambda!78388 lambda!78338)))

(declare-fun bs!441776 () Bool)

(assert (= bs!441776 (and d!642980 d!642910)))

(assert (=> bs!441776 (= lambda!78388 lambda!78361)))

(declare-fun bs!441777 () Bool)

(assert (= bs!441777 (and d!642980 d!642950)))

(assert (=> bs!441777 (= lambda!78388 lambda!78373)))

(declare-fun bs!441778 () Bool)

(assert (= bs!441778 (and d!642980 d!642878)))

(assert (=> bs!441778 (= lambda!78388 lambda!78339)))

(declare-fun bs!441779 () Bool)

(assert (= bs!441779 (and d!642980 d!642958)))

(assert (=> bs!441779 (= lambda!78388 lambda!78380)))

(declare-fun bs!441780 () Bool)

(assert (= bs!441780 (and d!642980 d!642962)))

(assert (=> bs!441780 (= lambda!78388 lambda!78381)))

(declare-fun bs!441781 () Bool)

(assert (= bs!441781 (and d!642980 d!642836)))

(assert (=> bs!441781 (= lambda!78388 lambda!78334)))

(declare-fun bs!441782 () Bool)

(assert (= bs!441782 (and d!642980 d!642786)))

(assert (=> bs!441782 (= lambda!78388 lambda!78327)))

(declare-fun bs!441783 () Bool)

(assert (= bs!441783 (and d!642980 d!642806)))

(assert (=> bs!441783 (= lambda!78388 lambda!78332)))

(declare-fun bs!441784 () Bool)

(assert (= bs!441784 (and d!642980 d!642800)))

(assert (=> bs!441784 (= lambda!78388 lambda!78331)))

(declare-fun bs!441785 () Bool)

(assert (= bs!441785 (and d!642980 d!642972)))

(assert (=> bs!441785 (= lambda!78388 lambda!78387)))

(declare-fun bs!441786 () Bool)

(assert (= bs!441786 (and d!642980 d!642866)))

(assert (=> bs!441786 (= lambda!78388 lambda!78337)))

(declare-fun bs!441787 () Bool)

(assert (= bs!441787 (and d!642980 d!642968)))

(assert (=> bs!441787 (= lambda!78388 lambda!78383)))

(declare-fun bs!441788 () Bool)

(assert (= bs!441788 (and d!642980 d!642908)))

(assert (=> bs!441788 (= lambda!78388 lambda!78360)))

(declare-fun bs!441789 () Bool)

(assert (= bs!441789 (and d!642980 d!642814)))

(assert (=> bs!441789 (= lambda!78388 lambda!78333)))

(assert (=> d!642980 (= (inv!31182 (_2!13440 (_1!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))))) (forall!4846 (exprs!1715 (_2!13440 (_1!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))))) lambda!78388))))

(declare-fun bs!441790 () Bool)

(assert (= bs!441790 d!642980))

(declare-fun m!2572951 () Bool)

(assert (=> bs!441790 m!2572951))

(assert (=> b!2117391 d!642980))

(declare-fun bs!441791 () Bool)

(declare-fun d!642982 () Bool)

(assert (= bs!441791 (and d!642982 d!642964)))

(declare-fun lambda!78389 () Int)

(assert (=> bs!441791 (= lambda!78389 lambda!78382)))

(declare-fun bs!441792 () Bool)

(assert (= bs!441792 (and d!642982 d!642848)))

(assert (=> bs!441792 (= lambda!78389 lambda!78335)))

(declare-fun bs!441793 () Bool)

(assert (= bs!441793 (and d!642982 d!642776)))

(assert (=> bs!441793 (= lambda!78389 lambda!78326)))

(declare-fun bs!441794 () Bool)

(assert (= bs!441794 (and d!642982 d!642872)))

(assert (=> bs!441794 (= lambda!78389 lambda!78338)))

(declare-fun bs!441795 () Bool)

(assert (= bs!441795 (and d!642982 d!642910)))

(assert (=> bs!441795 (= lambda!78389 lambda!78361)))

(declare-fun bs!441796 () Bool)

(assert (= bs!441796 (and d!642982 d!642950)))

(assert (=> bs!441796 (= lambda!78389 lambda!78373)))

(declare-fun bs!441797 () Bool)

(assert (= bs!441797 (and d!642982 d!642980)))

(assert (=> bs!441797 (= lambda!78389 lambda!78388)))

(declare-fun bs!441798 () Bool)

(assert (= bs!441798 (and d!642982 d!642878)))

(assert (=> bs!441798 (= lambda!78389 lambda!78339)))

(declare-fun bs!441799 () Bool)

(assert (= bs!441799 (and d!642982 d!642958)))

(assert (=> bs!441799 (= lambda!78389 lambda!78380)))

(declare-fun bs!441800 () Bool)

(assert (= bs!441800 (and d!642982 d!642962)))

(assert (=> bs!441800 (= lambda!78389 lambda!78381)))

(declare-fun bs!441801 () Bool)

(assert (= bs!441801 (and d!642982 d!642836)))

(assert (=> bs!441801 (= lambda!78389 lambda!78334)))

(declare-fun bs!441802 () Bool)

(assert (= bs!441802 (and d!642982 d!642786)))

(assert (=> bs!441802 (= lambda!78389 lambda!78327)))

(declare-fun bs!441803 () Bool)

(assert (= bs!441803 (and d!642982 d!642806)))

(assert (=> bs!441803 (= lambda!78389 lambda!78332)))

(declare-fun bs!441804 () Bool)

(assert (= bs!441804 (and d!642982 d!642800)))

(assert (=> bs!441804 (= lambda!78389 lambda!78331)))

(declare-fun bs!441805 () Bool)

(assert (= bs!441805 (and d!642982 d!642972)))

(assert (=> bs!441805 (= lambda!78389 lambda!78387)))

(declare-fun bs!441806 () Bool)

(assert (= bs!441806 (and d!642982 d!642866)))

(assert (=> bs!441806 (= lambda!78389 lambda!78337)))

(declare-fun bs!441807 () Bool)

(assert (= bs!441807 (and d!642982 d!642968)))

(assert (=> bs!441807 (= lambda!78389 lambda!78383)))

(declare-fun bs!441808 () Bool)

(assert (= bs!441808 (and d!642982 d!642908)))

(assert (=> bs!441808 (= lambda!78389 lambda!78360)))

(declare-fun bs!441809 () Bool)

(assert (= bs!441809 (and d!642982 d!642814)))

(assert (=> bs!441809 (= lambda!78389 lambda!78333)))

(assert (=> d!642982 (= (inv!31182 (_2!13440 (_1!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))))) (forall!4846 (exprs!1715 (_2!13440 (_1!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))))) lambda!78389))))

(declare-fun bs!441810 () Bool)

(assert (= bs!441810 d!642982))

(declare-fun m!2572953 () Bool)

(assert (=> bs!441810 m!2572953))

(assert (=> b!2117394 d!642982))

(declare-fun b!2118036 () Bool)

(declare-fun res!918493 () Bool)

(declare-fun e!1348279 () Bool)

(assert (=> b!2118036 (=> (not res!918493) (not e!1348279))))

(assert (=> b!2118036 (= res!918493 (not (isEmpty!14305 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))))))

(declare-fun b!2118037 () Bool)

(assert (=> b!2118037 (= e!1348279 (not (isEmpty!14305 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))))))

(declare-fun d!642984 () Bool)

(declare-fun res!918490 () Bool)

(declare-fun e!1348280 () Bool)

(assert (=> d!642984 (=> res!918490 e!1348280)))

(assert (=> d!642984 (= res!918490 (not ((_ is Node!7784) (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))

(assert (=> d!642984 (= (isBalanced!2443 (c!339387 (totalInput!2863 cacheFurthestNullable!141))) e!1348280)))

(declare-fun b!2118038 () Bool)

(declare-fun res!918492 () Bool)

(assert (=> b!2118038 (=> (not res!918492) (not e!1348279))))

(assert (=> b!2118038 (= res!918492 (<= (- (height!1230 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) (height!1230 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) 1))))

(declare-fun b!2118039 () Bool)

(declare-fun res!918491 () Bool)

(assert (=> b!2118039 (=> (not res!918491) (not e!1348279))))

(assert (=> b!2118039 (= res!918491 (isBalanced!2443 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))

(declare-fun b!2118040 () Bool)

(assert (=> b!2118040 (= e!1348280 e!1348279)))

(declare-fun res!918488 () Bool)

(assert (=> b!2118040 (=> (not res!918488) (not e!1348279))))

(assert (=> b!2118040 (= res!918488 (<= (- 1) (- (height!1230 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) (height!1230 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))))

(declare-fun b!2118041 () Bool)

(declare-fun res!918489 () Bool)

(assert (=> b!2118041 (=> (not res!918489) (not e!1348279))))

(assert (=> b!2118041 (= res!918489 (isBalanced!2443 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))))

(assert (= (and d!642984 (not res!918490)) b!2118040))

(assert (= (and b!2118040 res!918488) b!2118038))

(assert (= (and b!2118038 res!918492) b!2118039))

(assert (= (and b!2118039 res!918491) b!2118041))

(assert (= (and b!2118041 res!918489) b!2118036))

(assert (= (and b!2118036 res!918493) b!2118037))

(declare-fun m!2572955 () Bool)

(assert (=> b!2118041 m!2572955))

(assert (=> b!2118040 m!2572295))

(assert (=> b!2118040 m!2572297))

(declare-fun m!2572957 () Bool)

(assert (=> b!2118039 m!2572957))

(assert (=> b!2118038 m!2572295))

(assert (=> b!2118038 m!2572297))

(declare-fun m!2572959 () Bool)

(assert (=> b!2118037 m!2572959))

(declare-fun m!2572961 () Bool)

(assert (=> b!2118036 m!2572961))

(assert (=> d!642722 d!642984))

(declare-fun b!2118042 () Bool)

(declare-fun e!1348281 () tuple2!23144)

(declare-fun Unit!37585 () Unit!37556)

(assert (=> b!2118042 (= e!1348281 (tuple2!23145 Unit!37585 (_2!13451 e!1347834)))))

(declare-fun b!2118043 () Bool)

(declare-fun lt!794350 () tuple2!23144)

(assert (=> b!2118043 (= lt!794350 (update!84 (_2!13451 e!1347834) (z!5693 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793905))))) (from!2604 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793905))))) (lastNullablePos!292 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793905))))) (_1!13444 (_1!13445 lt!793905)) totalInput!1306))))

(declare-fun lt!794348 () Unit!37556)

(assert (=> b!2118043 (= lt!794348 (lemmaInvariant!378 (_2!13451 e!1347834)))))

(assert (=> b!2118043 (= e!1348281 (tuple2!23145 (_1!13451 lt!794350) (_2!13451 lt!794350)))))

(declare-fun b!2118044 () Bool)

(declare-fun e!1348283 () Bool)

(declare-fun lt!794347 () tuple2!23144)

(assert (=> b!2118044 (= e!1348283 (= (totalInput!2863 (_2!13451 lt!794347)) totalInput!1306))))

(declare-fun b!2118045 () Bool)

(declare-fun e!1348282 () tuple2!23144)

(declare-fun lt!794349 () tuple2!23144)

(assert (=> b!2118045 (= e!1348282 (tuple2!23145 (_1!13451 lt!794349) (_2!13451 lt!794349)))))

(declare-fun c!339571 () Bool)

(assert (=> b!2118045 (= c!339571 (and (> lt!793906 1048576) (not (= (- (+ 0 1) (* 10 (ite (>= (+ 0 1) 0) (div (+ 0 1) 10) (- (div (- (+ 0 1)) 10))))) 0))))))

(assert (=> b!2118045 (= lt!794349 (fillUpCache!5 (t!196193 (t!196193 (_2!13444 (_1!13445 lt!793905)))) totalInput!1306 lt!793906 (_1!13444 (_1!13445 lt!793905)) (+ 0 1 1) (_2!13451 e!1348281)))))

(declare-fun d!642986 () Bool)

(assert (=> d!642986 e!1348283))

(declare-fun res!918494 () Bool)

(assert (=> d!642986 (=> (not res!918494) (not e!1348283))))

(assert (=> d!642986 (= res!918494 (valid!1885 (_2!13451 lt!794347)))))

(assert (=> d!642986 (= lt!794347 e!1348282)))

(declare-fun c!339572 () Bool)

(assert (=> d!642986 (= c!339572 ((_ is Nil!23600) (t!196193 (_2!13444 (_1!13445 lt!793905)))))))

(assert (=> d!642986 (valid!1885 (_2!13451 e!1347834))))

(assert (=> d!642986 (= (fillUpCache!5 (t!196193 (_2!13444 (_1!13445 lt!793905))) totalInput!1306 lt!793906 (_1!13444 (_1!13445 lt!793905)) (+ 0 1) (_2!13451 e!1347834)) lt!794347)))

(declare-fun b!2118046 () Bool)

(declare-fun Unit!37586 () Unit!37556)

(assert (=> b!2118046 (= e!1348282 (tuple2!23145 Unit!37586 (_2!13451 e!1347834)))))

(assert (= (and d!642986 c!339572) b!2118046))

(assert (= (and d!642986 (not c!339572)) b!2118045))

(assert (= (and b!2118045 c!339571) b!2118042))

(assert (= (and b!2118045 (not c!339571)) b!2118043))

(assert (= (and d!642986 res!918494) b!2118044))

(declare-fun m!2572963 () Bool)

(assert (=> b!2118043 m!2572963))

(declare-fun m!2572965 () Bool)

(assert (=> b!2118043 m!2572965))

(declare-fun m!2572967 () Bool)

(assert (=> b!2118045 m!2572967))

(declare-fun m!2572969 () Bool)

(assert (=> d!642986 m!2572969))

(declare-fun m!2572971 () Bool)

(assert (=> d!642986 m!2572971))

(assert (=> b!2117337 d!642986))

(declare-fun bs!441811 () Bool)

(declare-fun d!642988 () Bool)

(assert (= bs!441811 (and d!642988 d!642964)))

(declare-fun lambda!78390 () Int)

(assert (=> bs!441811 (= lambda!78390 lambda!78382)))

(declare-fun bs!441812 () Bool)

(assert (= bs!441812 (and d!642988 d!642848)))

(assert (=> bs!441812 (= lambda!78390 lambda!78335)))

(declare-fun bs!441813 () Bool)

(assert (= bs!441813 (and d!642988 d!642776)))

(assert (=> bs!441813 (= lambda!78390 lambda!78326)))

(declare-fun bs!441814 () Bool)

(assert (= bs!441814 (and d!642988 d!642872)))

(assert (=> bs!441814 (= lambda!78390 lambda!78338)))

(declare-fun bs!441815 () Bool)

(assert (= bs!441815 (and d!642988 d!642982)))

(assert (=> bs!441815 (= lambda!78390 lambda!78389)))

(declare-fun bs!441816 () Bool)

(assert (= bs!441816 (and d!642988 d!642910)))

(assert (=> bs!441816 (= lambda!78390 lambda!78361)))

(declare-fun bs!441817 () Bool)

(assert (= bs!441817 (and d!642988 d!642950)))

(assert (=> bs!441817 (= lambda!78390 lambda!78373)))

(declare-fun bs!441818 () Bool)

(assert (= bs!441818 (and d!642988 d!642980)))

(assert (=> bs!441818 (= lambda!78390 lambda!78388)))

(declare-fun bs!441819 () Bool)

(assert (= bs!441819 (and d!642988 d!642878)))

(assert (=> bs!441819 (= lambda!78390 lambda!78339)))

(declare-fun bs!441820 () Bool)

(assert (= bs!441820 (and d!642988 d!642958)))

(assert (=> bs!441820 (= lambda!78390 lambda!78380)))

(declare-fun bs!441821 () Bool)

(assert (= bs!441821 (and d!642988 d!642962)))

(assert (=> bs!441821 (= lambda!78390 lambda!78381)))

(declare-fun bs!441822 () Bool)

(assert (= bs!441822 (and d!642988 d!642836)))

(assert (=> bs!441822 (= lambda!78390 lambda!78334)))

(declare-fun bs!441823 () Bool)

(assert (= bs!441823 (and d!642988 d!642786)))

(assert (=> bs!441823 (= lambda!78390 lambda!78327)))

(declare-fun bs!441824 () Bool)

(assert (= bs!441824 (and d!642988 d!642806)))

(assert (=> bs!441824 (= lambda!78390 lambda!78332)))

(declare-fun bs!441825 () Bool)

(assert (= bs!441825 (and d!642988 d!642800)))

(assert (=> bs!441825 (= lambda!78390 lambda!78331)))

(declare-fun bs!441826 () Bool)

(assert (= bs!441826 (and d!642988 d!642972)))

(assert (=> bs!441826 (= lambda!78390 lambda!78387)))

(declare-fun bs!441827 () Bool)

(assert (= bs!441827 (and d!642988 d!642866)))

(assert (=> bs!441827 (= lambda!78390 lambda!78337)))

(declare-fun bs!441828 () Bool)

(assert (= bs!441828 (and d!642988 d!642968)))

(assert (=> bs!441828 (= lambda!78390 lambda!78383)))

(declare-fun bs!441829 () Bool)

(assert (= bs!441829 (and d!642988 d!642908)))

(assert (=> bs!441829 (= lambda!78390 lambda!78360)))

(declare-fun bs!441830 () Bool)

(assert (= bs!441830 (and d!642988 d!642814)))

(assert (=> bs!441830 (= lambda!78390 lambda!78333)))

(assert (=> d!642988 (= (inv!31182 (_2!13440 (_1!13441 (h!28998 mapDefault!11570)))) (forall!4846 (exprs!1715 (_2!13440 (_1!13441 (h!28998 mapDefault!11570)))) lambda!78390))))

(declare-fun bs!441831 () Bool)

(assert (= bs!441831 d!642988))

(declare-fun m!2572973 () Bool)

(assert (=> bs!441831 m!2572973))

(assert (=> b!2117541 d!642988))

(declare-fun bs!441832 () Bool)

(declare-fun d!642990 () Bool)

(assert (= bs!441832 (and d!642990 d!642964)))

(declare-fun lambda!78391 () Int)

(assert (=> bs!441832 (= lambda!78391 lambda!78382)))

(declare-fun bs!441833 () Bool)

(assert (= bs!441833 (and d!642990 d!642848)))

(assert (=> bs!441833 (= lambda!78391 lambda!78335)))

(declare-fun bs!441834 () Bool)

(assert (= bs!441834 (and d!642990 d!642776)))

(assert (=> bs!441834 (= lambda!78391 lambda!78326)))

(declare-fun bs!441835 () Bool)

(assert (= bs!441835 (and d!642990 d!642982)))

(assert (=> bs!441835 (= lambda!78391 lambda!78389)))

(declare-fun bs!441836 () Bool)

(assert (= bs!441836 (and d!642990 d!642910)))

(assert (=> bs!441836 (= lambda!78391 lambda!78361)))

(declare-fun bs!441837 () Bool)

(assert (= bs!441837 (and d!642990 d!642950)))

(assert (=> bs!441837 (= lambda!78391 lambda!78373)))

(declare-fun bs!441838 () Bool)

(assert (= bs!441838 (and d!642990 d!642980)))

(assert (=> bs!441838 (= lambda!78391 lambda!78388)))

(declare-fun bs!441839 () Bool)

(assert (= bs!441839 (and d!642990 d!642878)))

(assert (=> bs!441839 (= lambda!78391 lambda!78339)))

(declare-fun bs!441840 () Bool)

(assert (= bs!441840 (and d!642990 d!642958)))

(assert (=> bs!441840 (= lambda!78391 lambda!78380)))

(declare-fun bs!441841 () Bool)

(assert (= bs!441841 (and d!642990 d!642962)))

(assert (=> bs!441841 (= lambda!78391 lambda!78381)))

(declare-fun bs!441842 () Bool)

(assert (= bs!441842 (and d!642990 d!642836)))

(assert (=> bs!441842 (= lambda!78391 lambda!78334)))

(declare-fun bs!441843 () Bool)

(assert (= bs!441843 (and d!642990 d!642786)))

(assert (=> bs!441843 (= lambda!78391 lambda!78327)))

(declare-fun bs!441844 () Bool)

(assert (= bs!441844 (and d!642990 d!642806)))

(assert (=> bs!441844 (= lambda!78391 lambda!78332)))

(declare-fun bs!441845 () Bool)

(assert (= bs!441845 (and d!642990 d!642988)))

(assert (=> bs!441845 (= lambda!78391 lambda!78390)))

(declare-fun bs!441846 () Bool)

(assert (= bs!441846 (and d!642990 d!642872)))

(assert (=> bs!441846 (= lambda!78391 lambda!78338)))

(declare-fun bs!441847 () Bool)

(assert (= bs!441847 (and d!642990 d!642800)))

(assert (=> bs!441847 (= lambda!78391 lambda!78331)))

(declare-fun bs!441848 () Bool)

(assert (= bs!441848 (and d!642990 d!642972)))

(assert (=> bs!441848 (= lambda!78391 lambda!78387)))

(declare-fun bs!441849 () Bool)

(assert (= bs!441849 (and d!642990 d!642866)))

(assert (=> bs!441849 (= lambda!78391 lambda!78337)))

(declare-fun bs!441850 () Bool)

(assert (= bs!441850 (and d!642990 d!642968)))

(assert (=> bs!441850 (= lambda!78391 lambda!78383)))

(declare-fun bs!441851 () Bool)

(assert (= bs!441851 (and d!642990 d!642908)))

(assert (=> bs!441851 (= lambda!78391 lambda!78360)))

(declare-fun bs!441852 () Bool)

(assert (= bs!441852 (and d!642990 d!642814)))

(assert (=> bs!441852 (= lambda!78391 lambda!78333)))

(assert (=> d!642990 (= (inv!31182 setElem!14357) (forall!4846 (exprs!1715 setElem!14357) lambda!78391))))

(declare-fun bs!441853 () Bool)

(assert (= bs!441853 d!642990))

(declare-fun m!2572975 () Bool)

(assert (=> bs!441853 m!2572975))

(assert (=> setNonEmpty!14357 d!642990))

(declare-fun bs!441854 () Bool)

(declare-fun b!2118048 () Bool)

(assert (= bs!441854 (and b!2118048 b!2118028)))

(declare-fun lambda!78392 () Int)

(assert (=> bs!441854 (= (= (totalInput!2863 cacheFurthestNullable!141) (totalInput!2863 (_4!469 lt!793892))) (= lambda!78392 lambda!78386))))

(assert (=> b!2118048 true))

(declare-fun d!642992 () Bool)

(declare-fun res!918495 () Bool)

(declare-fun e!1348284 () Bool)

(assert (=> d!642992 (=> (not res!918495) (not e!1348284))))

(assert (=> d!642992 (= res!918495 (valid!1889 (cache!2693 cacheFurthestNullable!141)))))

(assert (=> d!642992 (= (validCacheMapFurthestNullable!89 (cache!2693 cacheFurthestNullable!141) (totalInput!2863 cacheFurthestNullable!141)) e!1348284)))

(declare-fun b!2118047 () Bool)

(declare-fun res!918496 () Bool)

(assert (=> b!2118047 (=> (not res!918496) (not e!1348284))))

(assert (=> b!2118047 (= res!918496 (invariantList!296 (toList!1058 (map!4818 (cache!2693 cacheFurthestNullable!141)))))))

(assert (=> b!2118048 (= e!1348284 (forall!4849 (toList!1058 (map!4818 (cache!2693 cacheFurthestNullable!141))) lambda!78392))))

(assert (= (and d!642992 res!918495) b!2118047))

(assert (= (and b!2118047 res!918496) b!2118048))

(declare-fun m!2572977 () Bool)

(assert (=> d!642992 m!2572977))

(declare-fun m!2572979 () Bool)

(assert (=> b!2118047 m!2572979))

(declare-fun m!2572981 () Bool)

(assert (=> b!2118047 m!2572981))

(assert (=> b!2118048 m!2572979))

(declare-fun m!2572983 () Bool)

(assert (=> b!2118048 m!2572983))

(assert (=> d!642718 d!642992))

(declare-fun bs!441855 () Bool)

(declare-fun d!642994 () Bool)

(assert (= bs!441855 (and d!642994 d!642964)))

(declare-fun lambda!78393 () Int)

(assert (=> bs!441855 (= lambda!78393 lambda!78382)))

(declare-fun bs!441856 () Bool)

(assert (= bs!441856 (and d!642994 d!642848)))

(assert (=> bs!441856 (= lambda!78393 lambda!78335)))

(declare-fun bs!441857 () Bool)

(assert (= bs!441857 (and d!642994 d!642776)))

(assert (=> bs!441857 (= lambda!78393 lambda!78326)))

(declare-fun bs!441858 () Bool)

(assert (= bs!441858 (and d!642994 d!642982)))

(assert (=> bs!441858 (= lambda!78393 lambda!78389)))

(declare-fun bs!441859 () Bool)

(assert (= bs!441859 (and d!642994 d!642910)))

(assert (=> bs!441859 (= lambda!78393 lambda!78361)))

(declare-fun bs!441860 () Bool)

(assert (= bs!441860 (and d!642994 d!642980)))

(assert (=> bs!441860 (= lambda!78393 lambda!78388)))

(declare-fun bs!441861 () Bool)

(assert (= bs!441861 (and d!642994 d!642878)))

(assert (=> bs!441861 (= lambda!78393 lambda!78339)))

(declare-fun bs!441862 () Bool)

(assert (= bs!441862 (and d!642994 d!642958)))

(assert (=> bs!441862 (= lambda!78393 lambda!78380)))

(declare-fun bs!441863 () Bool)

(assert (= bs!441863 (and d!642994 d!642962)))

(assert (=> bs!441863 (= lambda!78393 lambda!78381)))

(declare-fun bs!441864 () Bool)

(assert (= bs!441864 (and d!642994 d!642836)))

(assert (=> bs!441864 (= lambda!78393 lambda!78334)))

(declare-fun bs!441865 () Bool)

(assert (= bs!441865 (and d!642994 d!642786)))

(assert (=> bs!441865 (= lambda!78393 lambda!78327)))

(declare-fun bs!441866 () Bool)

(assert (= bs!441866 (and d!642994 d!642806)))

(assert (=> bs!441866 (= lambda!78393 lambda!78332)))

(declare-fun bs!441867 () Bool)

(assert (= bs!441867 (and d!642994 d!642988)))

(assert (=> bs!441867 (= lambda!78393 lambda!78390)))

(declare-fun bs!441868 () Bool)

(assert (= bs!441868 (and d!642994 d!642872)))

(assert (=> bs!441868 (= lambda!78393 lambda!78338)))

(declare-fun bs!441869 () Bool)

(assert (= bs!441869 (and d!642994 d!642800)))

(assert (=> bs!441869 (= lambda!78393 lambda!78331)))

(declare-fun bs!441870 () Bool)

(assert (= bs!441870 (and d!642994 d!642972)))

(assert (=> bs!441870 (= lambda!78393 lambda!78387)))

(declare-fun bs!441871 () Bool)

(assert (= bs!441871 (and d!642994 d!642950)))

(assert (=> bs!441871 (= lambda!78393 lambda!78373)))

(declare-fun bs!441872 () Bool)

(assert (= bs!441872 (and d!642994 d!642990)))

(assert (=> bs!441872 (= lambda!78393 lambda!78391)))

(declare-fun bs!441873 () Bool)

(assert (= bs!441873 (and d!642994 d!642866)))

(assert (=> bs!441873 (= lambda!78393 lambda!78337)))

(declare-fun bs!441874 () Bool)

(assert (= bs!441874 (and d!642994 d!642968)))

(assert (=> bs!441874 (= lambda!78393 lambda!78383)))

(declare-fun bs!441875 () Bool)

(assert (= bs!441875 (and d!642994 d!642908)))

(assert (=> bs!441875 (= lambda!78393 lambda!78360)))

(declare-fun bs!441876 () Bool)

(assert (= bs!441876 (and d!642994 d!642814)))

(assert (=> bs!441876 (= lambda!78393 lambda!78333)))

(assert (=> d!642994 (= (inv!31182 setElem!14385) (forall!4846 (exprs!1715 setElem!14385) lambda!78393))))

(declare-fun bs!441877 () Bool)

(assert (= bs!441877 d!642994))

(declare-fun m!2572985 () Bool)

(assert (=> bs!441877 m!2572985))

(assert (=> setNonEmpty!14384 d!642994))

(declare-fun d!642996 () Bool)

(declare-fun e!1348285 () Bool)

(assert (=> d!642996 e!1348285))

(declare-fun res!918497 () Bool)

(assert (=> d!642996 (=> (not res!918497) (not e!1348285))))

(declare-fun lt!794352 () tuple2!23138)

(assert (=> d!642996 (= res!918497 (isBalanced!2443 (c!339387 (_1!13446 lt!794352))))))

(declare-fun lt!794351 () tuple2!23146)

(assert (=> d!642996 (= lt!794352 (tuple2!23139 (BalanceConc!15331 (_1!13453 lt!794351)) (BalanceConc!15331 (_2!13453 lt!794351))))))

(assert (=> d!642996 (= lt!794351 (splitAt!16 (c!339387 input!6660) (ite c!339419 0 lt!794022)))))

(assert (=> d!642996 (isBalanced!2443 (c!339387 input!6660))))

(assert (=> d!642996 (= (splitAt!15 input!6660 (ite c!339419 0 lt!794022)) lt!794352)))

(declare-fun b!2118049 () Bool)

(declare-fun res!918498 () Bool)

(assert (=> b!2118049 (=> (not res!918498) (not e!1348285))))

(assert (=> b!2118049 (= res!918498 (isBalanced!2443 (c!339387 (_2!13446 lt!794352))))))

(declare-fun b!2118050 () Bool)

(assert (=> b!2118050 (= e!1348285 (= (tuple2!23143 (list!9507 (_1!13446 lt!794352)) (list!9507 (_2!13446 lt!794352))) (splitAtIndex!21 (list!9507 input!6660) (ite c!339419 0 lt!794022))))))

(assert (= (and d!642996 res!918497) b!2118049))

(assert (= (and b!2118049 res!918498) b!2118050))

(declare-fun m!2572987 () Bool)

(assert (=> d!642996 m!2572987))

(declare-fun m!2572989 () Bool)

(assert (=> d!642996 m!2572989))

(assert (=> d!642996 m!2572129))

(declare-fun m!2572991 () Bool)

(assert (=> b!2118049 m!2572991))

(declare-fun m!2572993 () Bool)

(assert (=> b!2118050 m!2572993))

(declare-fun m!2572995 () Bool)

(assert (=> b!2118050 m!2572995))

(assert (=> b!2118050 m!2571907))

(assert (=> b!2118050 m!2571907))

(declare-fun m!2572997 () Bool)

(assert (=> b!2118050 m!2572997))

(assert (=> bm!128589 d!642996))

(declare-fun d!642998 () Bool)

(declare-fun lt!794355 () Regex!5645)

(assert (=> d!642998 (validRegex!2229 lt!794355)))

(declare-fun generalisedUnion!498 (List!23680) Regex!5645)

(declare-fun unfocusZipperList!22 (List!23686) List!23680)

(assert (=> d!642998 (= lt!794355 (generalisedUnion!498 (unfocusZipperList!22 (toList!1056 (store ((as const (Array Context!2430 Bool)) false) (Context!2431 (Cons!23596 r!15373 Nil!23596)) true)))))))

(assert (=> d!642998 (= (unfocusZipper!64 (toList!1056 (store ((as const (Array Context!2430 Bool)) false) (Context!2431 (Cons!23596 r!15373 Nil!23596)) true))) lt!794355)))

(declare-fun bs!441878 () Bool)

(assert (= bs!441878 d!642998))

(declare-fun m!2572999 () Bool)

(assert (=> bs!441878 m!2572999))

(assert (=> bs!441878 m!2572051))

(declare-fun m!2573001 () Bool)

(assert (=> bs!441878 m!2573001))

(assert (=> bs!441878 m!2573001))

(declare-fun m!2573003 () Bool)

(assert (=> bs!441878 m!2573003))

(assert (=> b!2117254 d!642998))

(declare-fun d!643000 () Bool)

(declare-fun e!1348288 () Bool)

(assert (=> d!643000 e!1348288))

(declare-fun res!918501 () Bool)

(assert (=> d!643000 (=> (not res!918501) (not e!1348288))))

(declare-fun lt!794358 () List!23686)

(declare-fun noDuplicate!275 (List!23686) Bool)

(assert (=> d!643000 (= res!918501 (noDuplicate!275 lt!794358))))

(declare-fun choose!12663 ((InoxSet Context!2430)) List!23686)

(assert (=> d!643000 (= lt!794358 (choose!12663 (store ((as const (Array Context!2430 Bool)) false) (Context!2431 (Cons!23596 r!15373 Nil!23596)) true)))))

(assert (=> d!643000 (= (toList!1056 (store ((as const (Array Context!2430 Bool)) false) (Context!2431 (Cons!23596 r!15373 Nil!23596)) true)) lt!794358)))

(declare-fun b!2118053 () Bool)

(declare-fun content!3388 (List!23686) (InoxSet Context!2430))

(assert (=> b!2118053 (= e!1348288 (= (content!3388 lt!794358) (store ((as const (Array Context!2430 Bool)) false) (Context!2431 (Cons!23596 r!15373 Nil!23596)) true)))))

(assert (= (and d!643000 res!918501) b!2118053))

(declare-fun m!2573005 () Bool)

(assert (=> d!643000 m!2573005))

(assert (=> d!643000 m!2572049))

(declare-fun m!2573007 () Bool)

(assert (=> d!643000 m!2573007))

(declare-fun m!2573009 () Bool)

(assert (=> b!2118053 m!2573009))

(assert (=> b!2117254 d!643000))

(declare-fun d!643002 () Bool)

(assert (=> d!643002 (= (inv!31183 (xs!10726 (c!339387 input!6660))) (<= (size!18433 (innerList!7844 (xs!10726 (c!339387 input!6660)))) 2147483647))))

(declare-fun bs!441879 () Bool)

(assert (= bs!441879 d!643002))

(declare-fun m!2573011 () Bool)

(assert (=> bs!441879 m!2573011))

(assert (=> b!2117455 d!643002))

(declare-fun b!2118054 () Bool)

(declare-fun res!918507 () Bool)

(declare-fun e!1348289 () Bool)

(assert (=> b!2118054 (=> (not res!918507) (not e!1348289))))

(assert (=> b!2118054 (= res!918507 (not (isEmpty!14305 (left!18281 (c!339387 totalInput!1306)))))))

(declare-fun b!2118055 () Bool)

(assert (=> b!2118055 (= e!1348289 (not (isEmpty!14305 (right!18611 (c!339387 totalInput!1306)))))))

(declare-fun d!643004 () Bool)

(declare-fun res!918504 () Bool)

(declare-fun e!1348290 () Bool)

(assert (=> d!643004 (=> res!918504 e!1348290)))

(assert (=> d!643004 (= res!918504 (not ((_ is Node!7784) (c!339387 totalInput!1306))))))

(assert (=> d!643004 (= (isBalanced!2443 (c!339387 totalInput!1306)) e!1348290)))

(declare-fun b!2118056 () Bool)

(declare-fun res!918506 () Bool)

(assert (=> b!2118056 (=> (not res!918506) (not e!1348289))))

(assert (=> b!2118056 (= res!918506 (<= (- (height!1230 (left!18281 (c!339387 totalInput!1306))) (height!1230 (right!18611 (c!339387 totalInput!1306)))) 1))))

(declare-fun b!2118057 () Bool)

(declare-fun res!918505 () Bool)

(assert (=> b!2118057 (=> (not res!918505) (not e!1348289))))

(assert (=> b!2118057 (= res!918505 (isBalanced!2443 (left!18281 (c!339387 totalInput!1306))))))

(declare-fun b!2118058 () Bool)

(assert (=> b!2118058 (= e!1348290 e!1348289)))

(declare-fun res!918502 () Bool)

(assert (=> b!2118058 (=> (not res!918502) (not e!1348289))))

(assert (=> b!2118058 (= res!918502 (<= (- 1) (- (height!1230 (left!18281 (c!339387 totalInput!1306))) (height!1230 (right!18611 (c!339387 totalInput!1306))))))))

(declare-fun b!2118059 () Bool)

(declare-fun res!918503 () Bool)

(assert (=> b!2118059 (=> (not res!918503) (not e!1348289))))

(assert (=> b!2118059 (= res!918503 (isBalanced!2443 (right!18611 (c!339387 totalInput!1306))))))

(assert (= (and d!643004 (not res!918504)) b!2118058))

(assert (= (and b!2118058 res!918502) b!2118056))

(assert (= (and b!2118056 res!918506) b!2118057))

(assert (= (and b!2118057 res!918505) b!2118059))

(assert (= (and b!2118059 res!918503) b!2118054))

(assert (= (and b!2118054 res!918507) b!2118055))

(declare-fun m!2573013 () Bool)

(assert (=> b!2118059 m!2573013))

(assert (=> b!2118058 m!2572941))

(assert (=> b!2118058 m!2572943))

(declare-fun m!2573015 () Bool)

(assert (=> b!2118057 m!2573015))

(assert (=> b!2118056 m!2572941))

(assert (=> b!2118056 m!2572943))

(declare-fun m!2573017 () Bool)

(assert (=> b!2118055 m!2573017))

(declare-fun m!2573019 () Bool)

(assert (=> b!2118054 m!2573019))

(assert (=> d!642732 d!643004))

(declare-fun b!2118063 () Bool)

(declare-fun e!1348292 () List!23682)

(assert (=> b!2118063 (= e!1348292 (++!6313 (list!9508 (left!18281 (c!339387 input!6660))) (list!9508 (right!18611 (c!339387 input!6660)))))))

(declare-fun b!2118062 () Bool)

(assert (=> b!2118062 (= e!1348292 (list!9509 (xs!10726 (c!339387 input!6660))))))

(declare-fun b!2118061 () Bool)

(declare-fun e!1348291 () List!23682)

(assert (=> b!2118061 (= e!1348291 e!1348292)))

(declare-fun c!339574 () Bool)

(assert (=> b!2118061 (= c!339574 ((_ is Leaf!11374) (c!339387 input!6660)))))

(declare-fun b!2118060 () Bool)

(assert (=> b!2118060 (= e!1348291 Nil!23598)))

(declare-fun d!643006 () Bool)

(declare-fun c!339573 () Bool)

(assert (=> d!643006 (= c!339573 ((_ is Empty!7784) (c!339387 input!6660)))))

(assert (=> d!643006 (= (list!9508 (c!339387 input!6660)) e!1348291)))

(assert (= (and d!643006 c!339573) b!2118060))

(assert (= (and d!643006 (not c!339573)) b!2118061))

(assert (= (and b!2118061 c!339574) b!2118062))

(assert (= (and b!2118061 (not c!339574)) b!2118063))

(assert (=> b!2118063 m!2572440))

(assert (=> b!2118063 m!2572438))

(assert (=> b!2118063 m!2572440))

(assert (=> b!2118063 m!2572438))

(declare-fun m!2573021 () Bool)

(assert (=> b!2118063 m!2573021))

(assert (=> b!2118062 m!2572350))

(assert (=> d!642766 d!643006))

(declare-fun bs!441880 () Bool)

(declare-fun d!643008 () Bool)

(assert (= bs!441880 (and d!643008 d!642964)))

(declare-fun lambda!78394 () Int)

(assert (=> bs!441880 (= lambda!78394 lambda!78382)))

(declare-fun bs!441881 () Bool)

(assert (= bs!441881 (and d!643008 d!642848)))

(assert (=> bs!441881 (= lambda!78394 lambda!78335)))

(declare-fun bs!441882 () Bool)

(assert (= bs!441882 (and d!643008 d!642776)))

(assert (=> bs!441882 (= lambda!78394 lambda!78326)))

(declare-fun bs!441883 () Bool)

(assert (= bs!441883 (and d!643008 d!642982)))

(assert (=> bs!441883 (= lambda!78394 lambda!78389)))

(declare-fun bs!441884 () Bool)

(assert (= bs!441884 (and d!643008 d!642910)))

(assert (=> bs!441884 (= lambda!78394 lambda!78361)))

(declare-fun bs!441885 () Bool)

(assert (= bs!441885 (and d!643008 d!642980)))

(assert (=> bs!441885 (= lambda!78394 lambda!78388)))

(declare-fun bs!441886 () Bool)

(assert (= bs!441886 (and d!643008 d!642878)))

(assert (=> bs!441886 (= lambda!78394 lambda!78339)))

(declare-fun bs!441887 () Bool)

(assert (= bs!441887 (and d!643008 d!642958)))

(assert (=> bs!441887 (= lambda!78394 lambda!78380)))

(declare-fun bs!441888 () Bool)

(assert (= bs!441888 (and d!643008 d!642962)))

(assert (=> bs!441888 (= lambda!78394 lambda!78381)))

(declare-fun bs!441889 () Bool)

(assert (= bs!441889 (and d!643008 d!642836)))

(assert (=> bs!441889 (= lambda!78394 lambda!78334)))

(declare-fun bs!441890 () Bool)

(assert (= bs!441890 (and d!643008 d!642786)))

(assert (=> bs!441890 (= lambda!78394 lambda!78327)))

(declare-fun bs!441891 () Bool)

(assert (= bs!441891 (and d!643008 d!642806)))

(assert (=> bs!441891 (= lambda!78394 lambda!78332)))

(declare-fun bs!441892 () Bool)

(assert (= bs!441892 (and d!643008 d!642988)))

(assert (=> bs!441892 (= lambda!78394 lambda!78390)))

(declare-fun bs!441893 () Bool)

(assert (= bs!441893 (and d!643008 d!642872)))

(assert (=> bs!441893 (= lambda!78394 lambda!78338)))

(declare-fun bs!441894 () Bool)

(assert (= bs!441894 (and d!643008 d!642800)))

(assert (=> bs!441894 (= lambda!78394 lambda!78331)))

(declare-fun bs!441895 () Bool)

(assert (= bs!441895 (and d!643008 d!642972)))

(assert (=> bs!441895 (= lambda!78394 lambda!78387)))

(declare-fun bs!441896 () Bool)

(assert (= bs!441896 (and d!643008 d!642950)))

(assert (=> bs!441896 (= lambda!78394 lambda!78373)))

(declare-fun bs!441897 () Bool)

(assert (= bs!441897 (and d!643008 d!642990)))

(assert (=> bs!441897 (= lambda!78394 lambda!78391)))

(declare-fun bs!441898 () Bool)

(assert (= bs!441898 (and d!643008 d!642866)))

(assert (=> bs!441898 (= lambda!78394 lambda!78337)))

(declare-fun bs!441899 () Bool)

(assert (= bs!441899 (and d!643008 d!642968)))

(assert (=> bs!441899 (= lambda!78394 lambda!78383)))

(declare-fun bs!441900 () Bool)

(assert (= bs!441900 (and d!643008 d!642994)))

(assert (=> bs!441900 (= lambda!78394 lambda!78393)))

(declare-fun bs!441901 () Bool)

(assert (= bs!441901 (and d!643008 d!642908)))

(assert (=> bs!441901 (= lambda!78394 lambda!78360)))

(declare-fun bs!441902 () Bool)

(assert (= bs!441902 (and d!643008 d!642814)))

(assert (=> bs!441902 (= lambda!78394 lambda!78333)))

(assert (=> d!643008 (= (inv!31182 setElem!14377) (forall!4846 (exprs!1715 setElem!14377) lambda!78394))))

(declare-fun bs!441903 () Bool)

(assert (= bs!441903 d!643008))

(declare-fun m!2573023 () Bool)

(assert (=> bs!441903 m!2573023))

(assert (=> setNonEmpty!14377 d!643008))

(declare-fun d!643010 () Bool)

(assert (=> d!643010 (= (valid!1887 (_3!1876 lt!793984)) (validCacheMapDown!237 (cache!2692 (_3!1876 lt!793984))))))

(declare-fun bs!441904 () Bool)

(assert (= bs!441904 d!643010))

(declare-fun m!2573025 () Bool)

(assert (=> bs!441904 m!2573025))

(assert (=> b!2117206 d!643010))

(declare-fun d!643012 () Bool)

(declare-fun e!1348307 () Bool)

(assert (=> d!643012 e!1348307))

(declare-fun res!918510 () Bool)

(assert (=> d!643012 (=> (not res!918510) (not e!1348307))))

(declare-fun lt!794361 () List!23682)

(assert (=> d!643012 (= res!918510 (= ((_ map implies) (content!3387 lt!794361) (content!3387 (list!9507 totalInput!1306))) ((as const (InoxSet C!11436)) true)))))

(declare-fun e!1348304 () List!23682)

(assert (=> d!643012 (= lt!794361 e!1348304)))

(declare-fun c!339586 () Bool)

(assert (=> d!643012 (= c!339586 ((_ is Nil!23598) (list!9507 totalInput!1306)))))

(assert (=> d!643012 (= (drop!1178 (list!9507 totalInput!1306) (- (size!18433 (list!9507 totalInput!1306)) (size!18433 lt!793897))) lt!794361)))

(declare-fun b!2118082 () Bool)

(declare-fun e!1348306 () Int)

(assert (=> b!2118082 (= e!1348306 0)))

(declare-fun b!2118083 () Bool)

(declare-fun e!1348305 () List!23682)

(assert (=> b!2118083 (= e!1348305 (drop!1178 (t!196191 (list!9507 totalInput!1306)) (- (- (size!18433 (list!9507 totalInput!1306)) (size!18433 lt!793897)) 1)))))

(declare-fun bm!128664 () Bool)

(declare-fun call!128669 () Int)

(assert (=> bm!128664 (= call!128669 (size!18433 (list!9507 totalInput!1306)))))

(declare-fun b!2118084 () Bool)

(declare-fun e!1348303 () Int)

(assert (=> b!2118084 (= e!1348303 e!1348306)))

(declare-fun c!339583 () Bool)

(assert (=> b!2118084 (= c!339583 (>= (- (size!18433 (list!9507 totalInput!1306)) (size!18433 lt!793897)) call!128669))))

(declare-fun b!2118085 () Bool)

(assert (=> b!2118085 (= e!1348303 call!128669)))

(declare-fun b!2118086 () Bool)

(assert (=> b!2118086 (= e!1348304 Nil!23598)))

(declare-fun b!2118087 () Bool)

(assert (=> b!2118087 (= e!1348304 e!1348305)))

(declare-fun c!339584 () Bool)

(assert (=> b!2118087 (= c!339584 (<= (- (size!18433 (list!9507 totalInput!1306)) (size!18433 lt!793897)) 0))))

(declare-fun b!2118088 () Bool)

(assert (=> b!2118088 (= e!1348306 (- call!128669 (- (size!18433 (list!9507 totalInput!1306)) (size!18433 lt!793897))))))

(declare-fun b!2118089 () Bool)

(assert (=> b!2118089 (= e!1348307 (= (size!18433 lt!794361) e!1348303))))

(declare-fun c!339585 () Bool)

(assert (=> b!2118089 (= c!339585 (<= (- (size!18433 (list!9507 totalInput!1306)) (size!18433 lt!793897)) 0))))

(declare-fun b!2118090 () Bool)

(assert (=> b!2118090 (= e!1348305 (list!9507 totalInput!1306))))

(assert (= (and d!643012 c!339586) b!2118086))

(assert (= (and d!643012 (not c!339586)) b!2118087))

(assert (= (and b!2118087 c!339584) b!2118090))

(assert (= (and b!2118087 (not c!339584)) b!2118083))

(assert (= (and d!643012 res!918510) b!2118089))

(assert (= (and b!2118089 c!339585) b!2118085))

(assert (= (and b!2118089 (not c!339585)) b!2118084))

(assert (= (and b!2118084 c!339583) b!2118082))

(assert (= (and b!2118084 (not c!339583)) b!2118088))

(assert (= (or b!2118085 b!2118084 b!2118088) bm!128664))

(declare-fun m!2573027 () Bool)

(assert (=> d!643012 m!2573027))

(assert (=> d!643012 m!2571903))

(declare-fun m!2573029 () Bool)

(assert (=> d!643012 m!2573029))

(declare-fun m!2573031 () Bool)

(assert (=> b!2118083 m!2573031))

(assert (=> bm!128664 m!2571903))

(assert (=> bm!128664 m!2571967))

(declare-fun m!2573033 () Bool)

(assert (=> b!2118089 m!2573033))

(assert (=> d!642762 d!643012))

(assert (=> d!642762 d!642796))

(assert (=> d!642762 d!642694))

(declare-fun d!643014 () Bool)

(declare-fun e!1348310 () Bool)

(assert (=> d!643014 e!1348310))

(declare-fun res!918514 () Bool)

(assert (=> d!643014 (=> (not res!918514) (not e!1348310))))

(declare-fun lt!794364 () tuple2!23144)

(assert (=> d!643014 (= res!918514 (validCacheMapFurthestNullable!89 (cache!2693 (_2!13451 lt!794364)) (totalInput!2863 (_2!13451 lt!794364))))))

(declare-fun choose!12664 (CacheFurthestNullable!560 (InoxSet Context!2430) Int Int Int BalanceConc!15330) tuple2!23144)

(assert (=> d!643014 (= lt!794364 (choose!12664 cacheFurthestNullable!141 (z!5693 (h!29001 (_2!13444 (_1!13445 lt!793905)))) (from!2604 (h!29001 (_2!13444 (_1!13445 lt!793905)))) (lastNullablePos!292 (h!29001 (_2!13444 (_1!13445 lt!793905)))) (_1!13444 (_1!13445 lt!793905)) totalInput!1306))))

(assert (=> d!643014 (= totalInput!1306 (totalInput!2863 cacheFurthestNullable!141))))

(assert (=> d!643014 (= (update!84 cacheFurthestNullable!141 (z!5693 (h!29001 (_2!13444 (_1!13445 lt!793905)))) (from!2604 (h!29001 (_2!13444 (_1!13445 lt!793905)))) (lastNullablePos!292 (h!29001 (_2!13444 (_1!13445 lt!793905)))) (_1!13444 (_1!13445 lt!793905)) totalInput!1306) lt!794364)))

(declare-fun b!2118093 () Bool)

(assert (=> b!2118093 (= e!1348310 (= (totalInput!2863 (_2!13451 lt!794364)) totalInput!1306))))

(assert (= (and d!643014 res!918514) b!2118093))

(declare-fun m!2573035 () Bool)

(assert (=> d!643014 m!2573035))

(declare-fun m!2573037 () Bool)

(assert (=> d!643014 m!2573037))

(assert (=> b!2117335 d!643014))

(declare-fun d!643016 () Bool)

(assert (=> d!643016 (valid!1885 cacheFurthestNullable!141)))

(declare-fun Unit!37587 () Unit!37556)

(assert (=> d!643016 (= (lemmaInvariant!378 cacheFurthestNullable!141) Unit!37587)))

(declare-fun bs!441905 () Bool)

(assert (= bs!441905 d!643016))

(assert (=> bs!441905 m!2571931))

(assert (=> b!2117335 d!643016))

(declare-fun bs!441906 () Bool)

(declare-fun d!643018 () Bool)

(assert (= bs!441906 (and d!643018 d!642964)))

(declare-fun lambda!78395 () Int)

(assert (=> bs!441906 (= lambda!78395 lambda!78382)))

(declare-fun bs!441907 () Bool)

(assert (= bs!441907 (and d!643018 d!642848)))

(assert (=> bs!441907 (= lambda!78395 lambda!78335)))

(declare-fun bs!441908 () Bool)

(assert (= bs!441908 (and d!643018 d!642776)))

(assert (=> bs!441908 (= lambda!78395 lambda!78326)))

(declare-fun bs!441909 () Bool)

(assert (= bs!441909 (and d!643018 d!642982)))

(assert (=> bs!441909 (= lambda!78395 lambda!78389)))

(declare-fun bs!441910 () Bool)

(assert (= bs!441910 (and d!643018 d!642910)))

(assert (=> bs!441910 (= lambda!78395 lambda!78361)))

(declare-fun bs!441911 () Bool)

(assert (= bs!441911 (and d!643018 d!642980)))

(assert (=> bs!441911 (= lambda!78395 lambda!78388)))

(declare-fun bs!441912 () Bool)

(assert (= bs!441912 (and d!643018 d!642878)))

(assert (=> bs!441912 (= lambda!78395 lambda!78339)))

(declare-fun bs!441913 () Bool)

(assert (= bs!441913 (and d!643018 d!643008)))

(assert (=> bs!441913 (= lambda!78395 lambda!78394)))

(declare-fun bs!441914 () Bool)

(assert (= bs!441914 (and d!643018 d!642958)))

(assert (=> bs!441914 (= lambda!78395 lambda!78380)))

(declare-fun bs!441915 () Bool)

(assert (= bs!441915 (and d!643018 d!642962)))

(assert (=> bs!441915 (= lambda!78395 lambda!78381)))

(declare-fun bs!441916 () Bool)

(assert (= bs!441916 (and d!643018 d!642836)))

(assert (=> bs!441916 (= lambda!78395 lambda!78334)))

(declare-fun bs!441917 () Bool)

(assert (= bs!441917 (and d!643018 d!642786)))

(assert (=> bs!441917 (= lambda!78395 lambda!78327)))

(declare-fun bs!441918 () Bool)

(assert (= bs!441918 (and d!643018 d!642806)))

(assert (=> bs!441918 (= lambda!78395 lambda!78332)))

(declare-fun bs!441919 () Bool)

(assert (= bs!441919 (and d!643018 d!642988)))

(assert (=> bs!441919 (= lambda!78395 lambda!78390)))

(declare-fun bs!441920 () Bool)

(assert (= bs!441920 (and d!643018 d!642872)))

(assert (=> bs!441920 (= lambda!78395 lambda!78338)))

(declare-fun bs!441921 () Bool)

(assert (= bs!441921 (and d!643018 d!642800)))

(assert (=> bs!441921 (= lambda!78395 lambda!78331)))

(declare-fun bs!441922 () Bool)

(assert (= bs!441922 (and d!643018 d!642972)))

(assert (=> bs!441922 (= lambda!78395 lambda!78387)))

(declare-fun bs!441923 () Bool)

(assert (= bs!441923 (and d!643018 d!642950)))

(assert (=> bs!441923 (= lambda!78395 lambda!78373)))

(declare-fun bs!441924 () Bool)

(assert (= bs!441924 (and d!643018 d!642990)))

(assert (=> bs!441924 (= lambda!78395 lambda!78391)))

(declare-fun bs!441925 () Bool)

(assert (= bs!441925 (and d!643018 d!642866)))

(assert (=> bs!441925 (= lambda!78395 lambda!78337)))

(declare-fun bs!441926 () Bool)

(assert (= bs!441926 (and d!643018 d!642968)))

(assert (=> bs!441926 (= lambda!78395 lambda!78383)))

(declare-fun bs!441927 () Bool)

(assert (= bs!441927 (and d!643018 d!642994)))

(assert (=> bs!441927 (= lambda!78395 lambda!78393)))

(declare-fun bs!441928 () Bool)

(assert (= bs!441928 (and d!643018 d!642908)))

(assert (=> bs!441928 (= lambda!78395 lambda!78360)))

(declare-fun bs!441929 () Bool)

(assert (= bs!441929 (and d!643018 d!642814)))

(assert (=> bs!441929 (= lambda!78395 lambda!78333)))

(assert (=> d!643018 (= (inv!31182 setElem!14373) (forall!4846 (exprs!1715 setElem!14373) lambda!78395))))

(declare-fun bs!441930 () Bool)

(assert (= bs!441930 d!643018))

(declare-fun m!2573039 () Bool)

(assert (=> bs!441930 m!2573039))

(assert (=> setNonEmpty!14373 d!643018))

(declare-fun d!643020 () Bool)

(declare-fun res!918515 () Bool)

(declare-fun e!1348311 () Bool)

(assert (=> d!643020 (=> res!918515 e!1348311)))

(assert (=> d!643020 (= res!918515 ((_ is Nil!23600) (_2!13444 (_1!13445 lt!793984))))))

(assert (=> d!643020 (= (forall!4845 (_2!13444 (_1!13445 lt!793984)) lambda!78317) e!1348311)))

(declare-fun b!2118094 () Bool)

(declare-fun e!1348312 () Bool)

(assert (=> b!2118094 (= e!1348311 e!1348312)))

(declare-fun res!918516 () Bool)

(assert (=> b!2118094 (=> (not res!918516) (not e!1348312))))

(assert (=> b!2118094 (= res!918516 (dynLambda!11302 lambda!78317 (h!29001 (_2!13444 (_1!13445 lt!793984)))))))

(declare-fun b!2118095 () Bool)

(assert (=> b!2118095 (= e!1348312 (forall!4845 (t!196193 (_2!13444 (_1!13445 lt!793984))) lambda!78317))))

(assert (= (and d!643020 (not res!918515)) b!2118094))

(assert (= (and b!2118094 res!918516) b!2118095))

(declare-fun b_lambda!70417 () Bool)

(assert (=> (not b_lambda!70417) (not b!2118094)))

(declare-fun m!2573041 () Bool)

(assert (=> b!2118094 m!2573041))

(declare-fun m!2573043 () Bool)

(assert (=> b!2118095 m!2573043))

(assert (=> b!2117209 d!643020))

(declare-fun d!643022 () Bool)

(assert (=> d!643022 (= (list!9507 (_2!13446 (findLongestMatchZipperSequenceV3!8 lt!793898 input!6660 totalInput!1306))) (list!9508 (c!339387 (_2!13446 (findLongestMatchZipperSequenceV3!8 lt!793898 input!6660 totalInput!1306)))))))

(declare-fun bs!441931 () Bool)

(assert (= bs!441931 d!643022))

(declare-fun m!2573045 () Bool)

(assert (=> bs!441931 m!2573045))

(assert (=> b!2117251 d!643022))

(assert (=> b!2117251 d!642704))

(assert (=> b!2117251 d!642782))

(assert (=> b!2117251 d!642766))

(declare-fun b!2118099 () Bool)

(declare-fun e!1348314 () List!23682)

(assert (=> b!2118099 (= e!1348314 (++!6313 (list!9508 (left!18281 (c!339387 (_1!13446 lt!793900)))) (list!9508 (right!18611 (c!339387 (_1!13446 lt!793900))))))))

(declare-fun b!2118098 () Bool)

(assert (=> b!2118098 (= e!1348314 (list!9509 (xs!10726 (c!339387 (_1!13446 lt!793900)))))))

(declare-fun b!2118097 () Bool)

(declare-fun e!1348313 () List!23682)

(assert (=> b!2118097 (= e!1348313 e!1348314)))

(declare-fun c!339588 () Bool)

(assert (=> b!2118097 (= c!339588 ((_ is Leaf!11374) (c!339387 (_1!13446 lt!793900))))))

(declare-fun b!2118096 () Bool)

(assert (=> b!2118096 (= e!1348313 Nil!23598)))

(declare-fun d!643024 () Bool)

(declare-fun c!339587 () Bool)

(assert (=> d!643024 (= c!339587 ((_ is Empty!7784) (c!339387 (_1!13446 lt!793900))))))

(assert (=> d!643024 (= (list!9508 (c!339387 (_1!13446 lt!793900))) e!1348313)))

(assert (= (and d!643024 c!339587) b!2118096))

(assert (= (and d!643024 (not c!339587)) b!2118097))

(assert (= (and b!2118097 c!339588) b!2118098))

(assert (= (and b!2118097 (not c!339588)) b!2118099))

(declare-fun m!2573047 () Bool)

(assert (=> b!2118099 m!2573047))

(declare-fun m!2573049 () Bool)

(assert (=> b!2118099 m!2573049))

(assert (=> b!2118099 m!2573047))

(assert (=> b!2118099 m!2573049))

(declare-fun m!2573051 () Bool)

(assert (=> b!2118099 m!2573051))

(declare-fun m!2573053 () Bool)

(assert (=> b!2118098 m!2573053))

(assert (=> d!642710 d!643024))

(assert (=> b!2117032 d!642668))

(declare-fun d!643026 () Bool)

(declare-fun res!918523 () Bool)

(declare-fun e!1348319 () Bool)

(assert (=> d!643026 (=> (not res!918523) (not e!1348319))))

(declare-fun valid!1890 (MutableMap!2311) Bool)

(assert (=> d!643026 (= res!918523 (valid!1890 (cache!2692 (_3!1878 lt!793892))))))

(assert (=> d!643026 (= (validCacheMapDown!237 (cache!2692 (_3!1878 lt!793892))) e!1348319)))

(declare-fun b!2118106 () Bool)

(declare-fun res!918524 () Bool)

(assert (=> b!2118106 (=> (not res!918524) (not e!1348319))))

(declare-fun invariantList!297 (List!23681) Bool)

(declare-datatypes ((ListMap!643 0))(
  ( (ListMap!644 (toList!1059 List!23681)) )
))
(declare-fun map!4819 (MutableMap!2311) ListMap!643)

(assert (=> b!2118106 (= res!918524 (invariantList!297 (toList!1059 (map!4819 (cache!2692 (_3!1878 lt!793892))))))))

(declare-fun b!2118107 () Bool)

(declare-fun lambda!78398 () Int)

(declare-fun forall!4850 (List!23681 Int) Bool)

(assert (=> b!2118107 (= e!1348319 (forall!4850 (toList!1059 (map!4819 (cache!2692 (_3!1878 lt!793892)))) lambda!78398))))

(assert (= (and d!643026 res!918523) b!2118106))

(assert (= (and b!2118106 res!918524) b!2118107))

(declare-fun m!2573056 () Bool)

(assert (=> d!643026 m!2573056))

(declare-fun m!2573058 () Bool)

(assert (=> b!2118106 m!2573058))

(declare-fun m!2573060 () Bool)

(assert (=> b!2118106 m!2573060))

(assert (=> b!2118107 m!2573058))

(declare-fun m!2573062 () Bool)

(assert (=> b!2118107 m!2573062))

(assert (=> d!642716 d!643026))

(declare-fun d!643028 () Bool)

(assert (=> d!643028 (= (inv!31183 (xs!10726 (c!339387 totalInput!1306))) (<= (size!18433 (innerList!7844 (xs!10726 (c!339387 totalInput!1306)))) 2147483647))))

(declare-fun bs!441932 () Bool)

(assert (= bs!441932 d!643028))

(declare-fun m!2573064 () Bool)

(assert (=> bs!441932 m!2573064))

(assert (=> b!2117411 d!643028))

(declare-fun d!643030 () Bool)

(declare-fun res!918525 () Bool)

(declare-fun e!1348320 () Bool)

(assert (=> d!643030 (=> res!918525 e!1348320)))

(assert (=> d!643030 (= res!918525 ((_ is Nil!23600) (t!196193 (_2!13444 (_1!13445 lt!793905)))))))

(assert (=> d!643030 (= (forall!4845 (t!196193 (_2!13444 (_1!13445 lt!793905))) lambda!78293) e!1348320)))

(declare-fun b!2118108 () Bool)

(declare-fun e!1348321 () Bool)

(assert (=> b!2118108 (= e!1348320 e!1348321)))

(declare-fun res!918526 () Bool)

(assert (=> b!2118108 (=> (not res!918526) (not e!1348321))))

(assert (=> b!2118108 (= res!918526 (dynLambda!11302 lambda!78293 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793905))))))))

(declare-fun b!2118109 () Bool)

(assert (=> b!2118109 (= e!1348321 (forall!4845 (t!196193 (t!196193 (_2!13444 (_1!13445 lt!793905)))) lambda!78293))))

(assert (= (and d!643030 (not res!918525)) b!2118108))

(assert (= (and b!2118108 res!918526) b!2118109))

(declare-fun b_lambda!70419 () Bool)

(assert (=> (not b_lambda!70419) (not b!2118108)))

(declare-fun m!2573066 () Bool)

(assert (=> b!2118108 m!2573066))

(declare-fun m!2573068 () Bool)

(assert (=> b!2118109 m!2573068))

(assert (=> b!2117343 d!643030))

(declare-fun b!2118110 () Bool)

(declare-fun e!1348323 () Bool)

(assert (=> b!2118110 (= e!1348323 (lostCauseZipper!52 lt!793898))))

(declare-fun b!2118111 () Bool)

(declare-fun e!1348322 () Int)

(assert (=> b!2118111 (= e!1348322 e!1347792)))

(declare-fun d!643032 () Bool)

(declare-fun lt!794366 () Int)

(assert (=> d!643032 (and (>= lt!794366 (- 1)) (< lt!794366 lt!794024) (>= lt!794366 e!1347792) (or (= lt!794366 e!1347792) (>= lt!794366 lt!794023)))))

(assert (=> d!643032 (= lt!794366 e!1348322)))

(declare-fun c!339590 () Bool)

(assert (=> d!643032 (= c!339590 e!1348323)))

(declare-fun res!918527 () Bool)

(assert (=> d!643032 (=> res!918527 e!1348323)))

(assert (=> d!643032 (= res!918527 (= lt!794023 lt!794024))))

(assert (=> d!643032 (and (>= lt!794023 0) (<= lt!794023 lt!794024))))

(assert (=> d!643032 (= (furthestNullablePosition!5 lt!793898 lt!794023 totalInput!1306 lt!794024 e!1347792) lt!794366)))

(declare-fun b!2118112 () Bool)

(declare-fun e!1348324 () Int)

(assert (=> b!2118112 (= e!1348324 lt!794023)))

(declare-fun b!2118113 () Bool)

(assert (=> b!2118113 (= e!1348324 e!1347792)))

(declare-fun b!2118114 () Bool)

(declare-fun lt!794365 () (InoxSet Context!2430))

(assert (=> b!2118114 (= e!1348322 (furthestNullablePosition!5 lt!794365 (+ lt!794023 1) totalInput!1306 lt!794024 e!1348324))))

(assert (=> b!2118114 (= lt!794365 (derivationStepZipper!84 lt!793898 (apply!5904 totalInput!1306 lt!794023)))))

(declare-fun c!339589 () Bool)

(assert (=> b!2118114 (= c!339589 (nullableZipper!52 lt!794365))))

(assert (= (and d!643032 (not res!918527)) b!2118110))

(assert (= (and d!643032 c!339590) b!2118111))

(assert (= (and d!643032 (not c!339590)) b!2118114))

(assert (= (and b!2118114 c!339589) b!2118112))

(assert (= (and b!2118114 (not c!339589)) b!2118113))

(assert (=> b!2118110 m!2571987))

(declare-fun m!2573070 () Bool)

(assert (=> b!2118114 m!2573070))

(declare-fun m!2573072 () Bool)

(assert (=> b!2118114 m!2573072))

(assert (=> b!2118114 m!2573072))

(declare-fun m!2573074 () Bool)

(assert (=> b!2118114 m!2573074))

(declare-fun m!2573076 () Bool)

(assert (=> b!2118114 m!2573076))

(assert (=> d!642704 d!643032))

(declare-fun d!643034 () Bool)

(assert (=> d!643034 (= (list!9507 (_2!13446 lt!794021)) (list!9508 (c!339387 (_2!13446 lt!794021))))))

(declare-fun bs!441933 () Bool)

(assert (= bs!441933 d!643034))

(declare-fun m!2573078 () Bool)

(assert (=> bs!441933 m!2573078))

(assert (=> d!642704 d!643034))

(assert (=> d!642704 d!642676))

(assert (=> d!642704 d!642858))

(declare-fun d!643036 () Bool)

(assert (=> d!643036 (= (list!9507 (_1!13446 lt!794021)) (list!9508 (c!339387 (_1!13446 lt!794021))))))

(declare-fun bs!441934 () Bool)

(assert (= bs!441934 d!643036))

(declare-fun m!2573080 () Bool)

(assert (=> bs!441934 m!2573080))

(assert (=> d!642704 d!643036))

(assert (=> d!642704 d!642700))

(assert (=> d!642704 d!642706))

(assert (=> d!642704 d!642764))

(declare-fun b!2118116 () Bool)

(declare-fun e!1348325 () List!23682)

(assert (=> b!2118116 (= e!1348325 (Cons!23598 (h!28999 (list!9507 (_1!13446 lt!794021))) (++!6313 (t!196191 (list!9507 (_1!13446 lt!794021))) (list!9507 (_2!13446 lt!794021)))))))

(declare-fun d!643038 () Bool)

(declare-fun e!1348326 () Bool)

(assert (=> d!643038 e!1348326))

(declare-fun res!918529 () Bool)

(assert (=> d!643038 (=> (not res!918529) (not e!1348326))))

(declare-fun lt!794367 () List!23682)

(assert (=> d!643038 (= res!918529 (= (content!3387 lt!794367) ((_ map or) (content!3387 (list!9507 (_1!13446 lt!794021))) (content!3387 (list!9507 (_2!13446 lt!794021))))))))

(assert (=> d!643038 (= lt!794367 e!1348325)))

(declare-fun c!339591 () Bool)

(assert (=> d!643038 (= c!339591 ((_ is Nil!23598) (list!9507 (_1!13446 lt!794021))))))

(assert (=> d!643038 (= (++!6313 (list!9507 (_1!13446 lt!794021)) (list!9507 (_2!13446 lt!794021))) lt!794367)))

(declare-fun b!2118118 () Bool)

(assert (=> b!2118118 (= e!1348326 (or (not (= (list!9507 (_2!13446 lt!794021)) Nil!23598)) (= lt!794367 (list!9507 (_1!13446 lt!794021)))))))

(declare-fun b!2118117 () Bool)

(declare-fun res!918528 () Bool)

(assert (=> b!2118117 (=> (not res!918528) (not e!1348326))))

(assert (=> b!2118117 (= res!918528 (= (size!18433 lt!794367) (+ (size!18433 (list!9507 (_1!13446 lt!794021))) (size!18433 (list!9507 (_2!13446 lt!794021))))))))

(declare-fun b!2118115 () Bool)

(assert (=> b!2118115 (= e!1348325 (list!9507 (_2!13446 lt!794021)))))

(assert (= (and d!643038 c!339591) b!2118115))

(assert (= (and d!643038 (not c!339591)) b!2118116))

(assert (= (and d!643038 res!918529) b!2118117))

(assert (= (and b!2118117 res!918528) b!2118118))

(assert (=> b!2118116 m!2572077))

(declare-fun m!2573082 () Bool)

(assert (=> b!2118116 m!2573082))

(declare-fun m!2573084 () Bool)

(assert (=> d!643038 m!2573084))

(assert (=> d!643038 m!2572081))

(declare-fun m!2573086 () Bool)

(assert (=> d!643038 m!2573086))

(assert (=> d!643038 m!2572077))

(declare-fun m!2573088 () Bool)

(assert (=> d!643038 m!2573088))

(declare-fun m!2573090 () Bool)

(assert (=> b!2118117 m!2573090))

(assert (=> b!2118117 m!2572081))

(declare-fun m!2573092 () Bool)

(assert (=> b!2118117 m!2573092))

(assert (=> b!2118117 m!2572077))

(declare-fun m!2573094 () Bool)

(assert (=> b!2118117 m!2573094))

(assert (=> d!642704 d!643038))

(assert (=> d!642704 d!642766))

(declare-fun bs!441935 () Bool)

(declare-fun d!643040 () Bool)

(assert (= bs!441935 (and d!643040 d!642964)))

(declare-fun lambda!78399 () Int)

(assert (=> bs!441935 (= lambda!78399 lambda!78382)))

(declare-fun bs!441936 () Bool)

(assert (= bs!441936 (and d!643040 d!642848)))

(assert (=> bs!441936 (= lambda!78399 lambda!78335)))

(declare-fun bs!441937 () Bool)

(assert (= bs!441937 (and d!643040 d!642776)))

(assert (=> bs!441937 (= lambda!78399 lambda!78326)))

(declare-fun bs!441938 () Bool)

(assert (= bs!441938 (and d!643040 d!642982)))

(assert (=> bs!441938 (= lambda!78399 lambda!78389)))

(declare-fun bs!441939 () Bool)

(assert (= bs!441939 (and d!643040 d!642910)))

(assert (=> bs!441939 (= lambda!78399 lambda!78361)))

(declare-fun bs!441940 () Bool)

(assert (= bs!441940 (and d!643040 d!642980)))

(assert (=> bs!441940 (= lambda!78399 lambda!78388)))

(declare-fun bs!441941 () Bool)

(assert (= bs!441941 (and d!643040 d!642878)))

(assert (=> bs!441941 (= lambda!78399 lambda!78339)))

(declare-fun bs!441942 () Bool)

(assert (= bs!441942 (and d!643040 d!643008)))

(assert (=> bs!441942 (= lambda!78399 lambda!78394)))

(declare-fun bs!441943 () Bool)

(assert (= bs!441943 (and d!643040 d!642958)))

(assert (=> bs!441943 (= lambda!78399 lambda!78380)))

(declare-fun bs!441944 () Bool)

(assert (= bs!441944 (and d!643040 d!642962)))

(assert (=> bs!441944 (= lambda!78399 lambda!78381)))

(declare-fun bs!441945 () Bool)

(assert (= bs!441945 (and d!643040 d!642786)))

(assert (=> bs!441945 (= lambda!78399 lambda!78327)))

(declare-fun bs!441946 () Bool)

(assert (= bs!441946 (and d!643040 d!642806)))

(assert (=> bs!441946 (= lambda!78399 lambda!78332)))

(declare-fun bs!441947 () Bool)

(assert (= bs!441947 (and d!643040 d!642988)))

(assert (=> bs!441947 (= lambda!78399 lambda!78390)))

(declare-fun bs!441948 () Bool)

(assert (= bs!441948 (and d!643040 d!642872)))

(assert (=> bs!441948 (= lambda!78399 lambda!78338)))

(declare-fun bs!441949 () Bool)

(assert (= bs!441949 (and d!643040 d!642800)))

(assert (=> bs!441949 (= lambda!78399 lambda!78331)))

(declare-fun bs!441950 () Bool)

(assert (= bs!441950 (and d!643040 d!642972)))

(assert (=> bs!441950 (= lambda!78399 lambda!78387)))

(declare-fun bs!441951 () Bool)

(assert (= bs!441951 (and d!643040 d!642950)))

(assert (=> bs!441951 (= lambda!78399 lambda!78373)))

(declare-fun bs!441952 () Bool)

(assert (= bs!441952 (and d!643040 d!642990)))

(assert (=> bs!441952 (= lambda!78399 lambda!78391)))

(declare-fun bs!441953 () Bool)

(assert (= bs!441953 (and d!643040 d!642866)))

(assert (=> bs!441953 (= lambda!78399 lambda!78337)))

(declare-fun bs!441954 () Bool)

(assert (= bs!441954 (and d!643040 d!642968)))

(assert (=> bs!441954 (= lambda!78399 lambda!78383)))

(declare-fun bs!441955 () Bool)

(assert (= bs!441955 (and d!643040 d!642994)))

(assert (=> bs!441955 (= lambda!78399 lambda!78393)))

(declare-fun bs!441956 () Bool)

(assert (= bs!441956 (and d!643040 d!642908)))

(assert (=> bs!441956 (= lambda!78399 lambda!78360)))

(declare-fun bs!441957 () Bool)

(assert (= bs!441957 (and d!643040 d!642814)))

(assert (=> bs!441957 (= lambda!78399 lambda!78333)))

(declare-fun bs!441958 () Bool)

(assert (= bs!441958 (and d!643040 d!642836)))

(assert (=> bs!441958 (= lambda!78399 lambda!78334)))

(declare-fun bs!441959 () Bool)

(assert (= bs!441959 (and d!643040 d!643018)))

(assert (=> bs!441959 (= lambda!78399 lambda!78395)))

(assert (=> d!643040 (= (inv!31182 setElem!14350) (forall!4846 (exprs!1715 setElem!14350) lambda!78399))))

(declare-fun bs!441960 () Bool)

(assert (= bs!441960 d!643040))

(declare-fun m!2573096 () Bool)

(assert (=> bs!441960 m!2573096))

(assert (=> setNonEmpty!14350 d!643040))

(declare-fun bs!441961 () Bool)

(declare-fun d!643042 () Bool)

(assert (= bs!441961 (and d!643042 d!642964)))

(declare-fun lambda!78400 () Int)

(assert (=> bs!441961 (= lambda!78400 lambda!78382)))

(declare-fun bs!441962 () Bool)

(assert (= bs!441962 (and d!643042 d!642848)))

(assert (=> bs!441962 (= lambda!78400 lambda!78335)))

(declare-fun bs!441963 () Bool)

(assert (= bs!441963 (and d!643042 d!642776)))

(assert (=> bs!441963 (= lambda!78400 lambda!78326)))

(declare-fun bs!441964 () Bool)

(assert (= bs!441964 (and d!643042 d!642982)))

(assert (=> bs!441964 (= lambda!78400 lambda!78389)))

(declare-fun bs!441965 () Bool)

(assert (= bs!441965 (and d!643042 d!642910)))

(assert (=> bs!441965 (= lambda!78400 lambda!78361)))

(declare-fun bs!441966 () Bool)

(assert (= bs!441966 (and d!643042 d!642980)))

(assert (=> bs!441966 (= lambda!78400 lambda!78388)))

(declare-fun bs!441967 () Bool)

(assert (= bs!441967 (and d!643042 d!642878)))

(assert (=> bs!441967 (= lambda!78400 lambda!78339)))

(declare-fun bs!441968 () Bool)

(assert (= bs!441968 (and d!643042 d!643008)))

(assert (=> bs!441968 (= lambda!78400 lambda!78394)))

(declare-fun bs!441969 () Bool)

(assert (= bs!441969 (and d!643042 d!642958)))

(assert (=> bs!441969 (= lambda!78400 lambda!78380)))

(declare-fun bs!441970 () Bool)

(assert (= bs!441970 (and d!643042 d!642962)))

(assert (=> bs!441970 (= lambda!78400 lambda!78381)))

(declare-fun bs!441971 () Bool)

(assert (= bs!441971 (and d!643042 d!642786)))

(assert (=> bs!441971 (= lambda!78400 lambda!78327)))

(declare-fun bs!441972 () Bool)

(assert (= bs!441972 (and d!643042 d!643040)))

(assert (=> bs!441972 (= lambda!78400 lambda!78399)))

(declare-fun bs!441973 () Bool)

(assert (= bs!441973 (and d!643042 d!642806)))

(assert (=> bs!441973 (= lambda!78400 lambda!78332)))

(declare-fun bs!441974 () Bool)

(assert (= bs!441974 (and d!643042 d!642988)))

(assert (=> bs!441974 (= lambda!78400 lambda!78390)))

(declare-fun bs!441975 () Bool)

(assert (= bs!441975 (and d!643042 d!642872)))

(assert (=> bs!441975 (= lambda!78400 lambda!78338)))

(declare-fun bs!441976 () Bool)

(assert (= bs!441976 (and d!643042 d!642800)))

(assert (=> bs!441976 (= lambda!78400 lambda!78331)))

(declare-fun bs!441977 () Bool)

(assert (= bs!441977 (and d!643042 d!642972)))

(assert (=> bs!441977 (= lambda!78400 lambda!78387)))

(declare-fun bs!441978 () Bool)

(assert (= bs!441978 (and d!643042 d!642950)))

(assert (=> bs!441978 (= lambda!78400 lambda!78373)))

(declare-fun bs!441979 () Bool)

(assert (= bs!441979 (and d!643042 d!642990)))

(assert (=> bs!441979 (= lambda!78400 lambda!78391)))

(declare-fun bs!441980 () Bool)

(assert (= bs!441980 (and d!643042 d!642866)))

(assert (=> bs!441980 (= lambda!78400 lambda!78337)))

(declare-fun bs!441981 () Bool)

(assert (= bs!441981 (and d!643042 d!642968)))

(assert (=> bs!441981 (= lambda!78400 lambda!78383)))

(declare-fun bs!441982 () Bool)

(assert (= bs!441982 (and d!643042 d!642994)))

(assert (=> bs!441982 (= lambda!78400 lambda!78393)))

(declare-fun bs!441983 () Bool)

(assert (= bs!441983 (and d!643042 d!642908)))

(assert (=> bs!441983 (= lambda!78400 lambda!78360)))

(declare-fun bs!441984 () Bool)

(assert (= bs!441984 (and d!643042 d!642814)))

(assert (=> bs!441984 (= lambda!78400 lambda!78333)))

(declare-fun bs!441985 () Bool)

(assert (= bs!441985 (and d!643042 d!642836)))

(assert (=> bs!441985 (= lambda!78400 lambda!78334)))

(declare-fun bs!441986 () Bool)

(assert (= bs!441986 (and d!643042 d!643018)))

(assert (=> bs!441986 (= lambda!78400 lambda!78395)))

(assert (=> d!643042 (= (inv!31182 setElem!14349) (forall!4846 (exprs!1715 setElem!14349) lambda!78400))))

(declare-fun bs!441987 () Bool)

(assert (= bs!441987 d!643042))

(declare-fun m!2573098 () Bool)

(assert (=> bs!441987 m!2573098))

(assert (=> setNonEmpty!14349 d!643042))

(declare-fun bs!441988 () Bool)

(declare-fun b!2118120 () Bool)

(assert (= bs!441988 (and b!2118120 b!2118107)))

(declare-fun lambda!78401 () Int)

(assert (=> bs!441988 (= lambda!78401 lambda!78398)))

(declare-fun d!643044 () Bool)

(declare-fun res!918530 () Bool)

(declare-fun e!1348327 () Bool)

(assert (=> d!643044 (=> (not res!918530) (not e!1348327))))

(assert (=> d!643044 (= res!918530 (valid!1890 (cache!2692 cacheDown!1229)))))

(assert (=> d!643044 (= (validCacheMapDown!237 (cache!2692 cacheDown!1229)) e!1348327)))

(declare-fun b!2118119 () Bool)

(declare-fun res!918531 () Bool)

(assert (=> b!2118119 (=> (not res!918531) (not e!1348327))))

(assert (=> b!2118119 (= res!918531 (invariantList!297 (toList!1059 (map!4819 (cache!2692 cacheDown!1229)))))))

(assert (=> b!2118120 (= e!1348327 (forall!4850 (toList!1059 (map!4819 (cache!2692 cacheDown!1229))) lambda!78401))))

(assert (= (and d!643044 res!918530) b!2118119))

(assert (= (and b!2118119 res!918531) b!2118120))

(declare-fun m!2573100 () Bool)

(assert (=> d!643044 m!2573100))

(declare-fun m!2573102 () Bool)

(assert (=> b!2118119 m!2573102))

(declare-fun m!2573104 () Bool)

(assert (=> b!2118119 m!2573104))

(assert (=> b!2118120 m!2573102))

(declare-fun m!2573106 () Bool)

(assert (=> b!2118120 m!2573106))

(assert (=> d!642712 d!643044))

(declare-fun bs!441989 () Bool)

(declare-fun d!643046 () Bool)

(assert (= bs!441989 (and d!643046 d!642964)))

(declare-fun lambda!78402 () Int)

(assert (=> bs!441989 (= lambda!78402 lambda!78382)))

(declare-fun bs!441990 () Bool)

(assert (= bs!441990 (and d!643046 d!642848)))

(assert (=> bs!441990 (= lambda!78402 lambda!78335)))

(declare-fun bs!441991 () Bool)

(assert (= bs!441991 (and d!643046 d!642776)))

(assert (=> bs!441991 (= lambda!78402 lambda!78326)))

(declare-fun bs!441992 () Bool)

(assert (= bs!441992 (and d!643046 d!642982)))

(assert (=> bs!441992 (= lambda!78402 lambda!78389)))

(declare-fun bs!441993 () Bool)

(assert (= bs!441993 (and d!643046 d!642910)))

(assert (=> bs!441993 (= lambda!78402 lambda!78361)))

(declare-fun bs!441994 () Bool)

(assert (= bs!441994 (and d!643046 d!642980)))

(assert (=> bs!441994 (= lambda!78402 lambda!78388)))

(declare-fun bs!441995 () Bool)

(assert (= bs!441995 (and d!643046 d!642878)))

(assert (=> bs!441995 (= lambda!78402 lambda!78339)))

(declare-fun bs!441996 () Bool)

(assert (= bs!441996 (and d!643046 d!643008)))

(assert (=> bs!441996 (= lambda!78402 lambda!78394)))

(declare-fun bs!441997 () Bool)

(assert (= bs!441997 (and d!643046 d!642958)))

(assert (=> bs!441997 (= lambda!78402 lambda!78380)))

(declare-fun bs!441998 () Bool)

(assert (= bs!441998 (and d!643046 d!642962)))

(assert (=> bs!441998 (= lambda!78402 lambda!78381)))

(declare-fun bs!441999 () Bool)

(assert (= bs!441999 (and d!643046 d!642786)))

(assert (=> bs!441999 (= lambda!78402 lambda!78327)))

(declare-fun bs!442000 () Bool)

(assert (= bs!442000 (and d!643046 d!643040)))

(assert (=> bs!442000 (= lambda!78402 lambda!78399)))

(declare-fun bs!442001 () Bool)

(assert (= bs!442001 (and d!643046 d!642806)))

(assert (=> bs!442001 (= lambda!78402 lambda!78332)))

(declare-fun bs!442002 () Bool)

(assert (= bs!442002 (and d!643046 d!642988)))

(assert (=> bs!442002 (= lambda!78402 lambda!78390)))

(declare-fun bs!442003 () Bool)

(assert (= bs!442003 (and d!643046 d!642872)))

(assert (=> bs!442003 (= lambda!78402 lambda!78338)))

(declare-fun bs!442004 () Bool)

(assert (= bs!442004 (and d!643046 d!642800)))

(assert (=> bs!442004 (= lambda!78402 lambda!78331)))

(declare-fun bs!442005 () Bool)

(assert (= bs!442005 (and d!643046 d!642972)))

(assert (=> bs!442005 (= lambda!78402 lambda!78387)))

(declare-fun bs!442006 () Bool)

(assert (= bs!442006 (and d!643046 d!642950)))

(assert (=> bs!442006 (= lambda!78402 lambda!78373)))

(declare-fun bs!442007 () Bool)

(assert (= bs!442007 (and d!643046 d!642990)))

(assert (=> bs!442007 (= lambda!78402 lambda!78391)))

(declare-fun bs!442008 () Bool)

(assert (= bs!442008 (and d!643046 d!642866)))

(assert (=> bs!442008 (= lambda!78402 lambda!78337)))

(declare-fun bs!442009 () Bool)

(assert (= bs!442009 (and d!643046 d!642968)))

(assert (=> bs!442009 (= lambda!78402 lambda!78383)))

(declare-fun bs!442010 () Bool)

(assert (= bs!442010 (and d!643046 d!642994)))

(assert (=> bs!442010 (= lambda!78402 lambda!78393)))

(declare-fun bs!442011 () Bool)

(assert (= bs!442011 (and d!643046 d!642908)))

(assert (=> bs!442011 (= lambda!78402 lambda!78360)))

(declare-fun bs!442012 () Bool)

(assert (= bs!442012 (and d!643046 d!642814)))

(assert (=> bs!442012 (= lambda!78402 lambda!78333)))

(declare-fun bs!442013 () Bool)

(assert (= bs!442013 (and d!643046 d!643042)))

(assert (=> bs!442013 (= lambda!78402 lambda!78400)))

(declare-fun bs!442014 () Bool)

(assert (= bs!442014 (and d!643046 d!642836)))

(assert (=> bs!442014 (= lambda!78402 lambda!78334)))

(declare-fun bs!442015 () Bool)

(assert (= bs!442015 (and d!643046 d!643018)))

(assert (=> bs!442015 (= lambda!78402 lambda!78395)))

(assert (=> d!643046 (= (inv!31182 setElem!14340) (forall!4846 (exprs!1715 setElem!14340) lambda!78402))))

(declare-fun bs!442016 () Bool)

(assert (= bs!442016 d!643046))

(declare-fun m!2573108 () Bool)

(assert (=> bs!442016 m!2573108))

(assert (=> setNonEmpty!14340 d!643046))

(declare-fun d!643048 () Bool)

(assert (=> d!643048 (= (valid!1885 (_2!13451 lt!794066)) (validCacheMapFurthestNullable!89 (cache!2693 (_2!13451 lt!794066)) (totalInput!2863 (_2!13451 lt!794066))))))

(declare-fun bs!442017 () Bool)

(assert (= bs!442017 d!643048))

(declare-fun m!2573110 () Bool)

(assert (=> bs!442017 m!2573110))

(assert (=> d!642750 d!643048))

(assert (=> d!642750 d!642718))

(declare-fun bs!442018 () Bool)

(declare-fun d!643050 () Bool)

(assert (= bs!442018 (and d!643050 d!642964)))

(declare-fun lambda!78403 () Int)

(assert (=> bs!442018 (= lambda!78403 lambda!78382)))

(declare-fun bs!442019 () Bool)

(assert (= bs!442019 (and d!643050 d!642848)))

(assert (=> bs!442019 (= lambda!78403 lambda!78335)))

(declare-fun bs!442020 () Bool)

(assert (= bs!442020 (and d!643050 d!642776)))

(assert (=> bs!442020 (= lambda!78403 lambda!78326)))

(declare-fun bs!442021 () Bool)

(assert (= bs!442021 (and d!643050 d!642982)))

(assert (=> bs!442021 (= lambda!78403 lambda!78389)))

(declare-fun bs!442022 () Bool)

(assert (= bs!442022 (and d!643050 d!642910)))

(assert (=> bs!442022 (= lambda!78403 lambda!78361)))

(declare-fun bs!442023 () Bool)

(assert (= bs!442023 (and d!643050 d!642878)))

(assert (=> bs!442023 (= lambda!78403 lambda!78339)))

(declare-fun bs!442024 () Bool)

(assert (= bs!442024 (and d!643050 d!643008)))

(assert (=> bs!442024 (= lambda!78403 lambda!78394)))

(declare-fun bs!442025 () Bool)

(assert (= bs!442025 (and d!643050 d!642958)))

(assert (=> bs!442025 (= lambda!78403 lambda!78380)))

(declare-fun bs!442026 () Bool)

(assert (= bs!442026 (and d!643050 d!642962)))

(assert (=> bs!442026 (= lambda!78403 lambda!78381)))

(declare-fun bs!442027 () Bool)

(assert (= bs!442027 (and d!643050 d!642786)))

(assert (=> bs!442027 (= lambda!78403 lambda!78327)))

(declare-fun bs!442028 () Bool)

(assert (= bs!442028 (and d!643050 d!643040)))

(assert (=> bs!442028 (= lambda!78403 lambda!78399)))

(declare-fun bs!442029 () Bool)

(assert (= bs!442029 (and d!643050 d!642806)))

(assert (=> bs!442029 (= lambda!78403 lambda!78332)))

(declare-fun bs!442030 () Bool)

(assert (= bs!442030 (and d!643050 d!642988)))

(assert (=> bs!442030 (= lambda!78403 lambda!78390)))

(declare-fun bs!442031 () Bool)

(assert (= bs!442031 (and d!643050 d!642872)))

(assert (=> bs!442031 (= lambda!78403 lambda!78338)))

(declare-fun bs!442032 () Bool)

(assert (= bs!442032 (and d!643050 d!642800)))

(assert (=> bs!442032 (= lambda!78403 lambda!78331)))

(declare-fun bs!442033 () Bool)

(assert (= bs!442033 (and d!643050 d!642972)))

(assert (=> bs!442033 (= lambda!78403 lambda!78387)))

(declare-fun bs!442034 () Bool)

(assert (= bs!442034 (and d!643050 d!642950)))

(assert (=> bs!442034 (= lambda!78403 lambda!78373)))

(declare-fun bs!442035 () Bool)

(assert (= bs!442035 (and d!643050 d!642990)))

(assert (=> bs!442035 (= lambda!78403 lambda!78391)))

(declare-fun bs!442036 () Bool)

(assert (= bs!442036 (and d!643050 d!642980)))

(assert (=> bs!442036 (= lambda!78403 lambda!78388)))

(declare-fun bs!442037 () Bool)

(assert (= bs!442037 (and d!643050 d!643046)))

(assert (=> bs!442037 (= lambda!78403 lambda!78402)))

(declare-fun bs!442038 () Bool)

(assert (= bs!442038 (and d!643050 d!642866)))

(assert (=> bs!442038 (= lambda!78403 lambda!78337)))

(declare-fun bs!442039 () Bool)

(assert (= bs!442039 (and d!643050 d!642968)))

(assert (=> bs!442039 (= lambda!78403 lambda!78383)))

(declare-fun bs!442040 () Bool)

(assert (= bs!442040 (and d!643050 d!642994)))

(assert (=> bs!442040 (= lambda!78403 lambda!78393)))

(declare-fun bs!442041 () Bool)

(assert (= bs!442041 (and d!643050 d!642908)))

(assert (=> bs!442041 (= lambda!78403 lambda!78360)))

(declare-fun bs!442042 () Bool)

(assert (= bs!442042 (and d!643050 d!642814)))

(assert (=> bs!442042 (= lambda!78403 lambda!78333)))

(declare-fun bs!442043 () Bool)

(assert (= bs!442043 (and d!643050 d!643042)))

(assert (=> bs!442043 (= lambda!78403 lambda!78400)))

(declare-fun bs!442044 () Bool)

(assert (= bs!442044 (and d!643050 d!642836)))

(assert (=> bs!442044 (= lambda!78403 lambda!78334)))

(declare-fun bs!442045 () Bool)

(assert (= bs!442045 (and d!643050 d!643018)))

(assert (=> bs!442045 (= lambda!78403 lambda!78395)))

(assert (=> d!643050 (= (inv!31182 setElem!14400) (forall!4846 (exprs!1715 setElem!14400) lambda!78403))))

(declare-fun bs!442046 () Bool)

(assert (= bs!442046 d!643050))

(declare-fun m!2573112 () Bool)

(assert (=> bs!442046 m!2573112))

(assert (=> setNonEmpty!14400 d!643050))

(assert (=> b!2117281 d!642992))

(declare-fun bs!442047 () Bool)

(declare-fun d!643052 () Bool)

(assert (= bs!442047 (and d!643052 d!642964)))

(declare-fun lambda!78404 () Int)

(assert (=> bs!442047 (= lambda!78404 lambda!78382)))

(declare-fun bs!442048 () Bool)

(assert (= bs!442048 (and d!643052 d!642848)))

(assert (=> bs!442048 (= lambda!78404 lambda!78335)))

(declare-fun bs!442049 () Bool)

(assert (= bs!442049 (and d!643052 d!642776)))

(assert (=> bs!442049 (= lambda!78404 lambda!78326)))

(declare-fun bs!442050 () Bool)

(assert (= bs!442050 (and d!643052 d!642982)))

(assert (=> bs!442050 (= lambda!78404 lambda!78389)))

(declare-fun bs!442051 () Bool)

(assert (= bs!442051 (and d!643052 d!642910)))

(assert (=> bs!442051 (= lambda!78404 lambda!78361)))

(declare-fun bs!442052 () Bool)

(assert (= bs!442052 (and d!643052 d!642878)))

(assert (=> bs!442052 (= lambda!78404 lambda!78339)))

(declare-fun bs!442053 () Bool)

(assert (= bs!442053 (and d!643052 d!643008)))

(assert (=> bs!442053 (= lambda!78404 lambda!78394)))

(declare-fun bs!442054 () Bool)

(assert (= bs!442054 (and d!643052 d!642958)))

(assert (=> bs!442054 (= lambda!78404 lambda!78380)))

(declare-fun bs!442055 () Bool)

(assert (= bs!442055 (and d!643052 d!642962)))

(assert (=> bs!442055 (= lambda!78404 lambda!78381)))

(declare-fun bs!442056 () Bool)

(assert (= bs!442056 (and d!643052 d!643050)))

(assert (=> bs!442056 (= lambda!78404 lambda!78403)))

(declare-fun bs!442057 () Bool)

(assert (= bs!442057 (and d!643052 d!642786)))

(assert (=> bs!442057 (= lambda!78404 lambda!78327)))

(declare-fun bs!442058 () Bool)

(assert (= bs!442058 (and d!643052 d!643040)))

(assert (=> bs!442058 (= lambda!78404 lambda!78399)))

(declare-fun bs!442059 () Bool)

(assert (= bs!442059 (and d!643052 d!642806)))

(assert (=> bs!442059 (= lambda!78404 lambda!78332)))

(declare-fun bs!442060 () Bool)

(assert (= bs!442060 (and d!643052 d!642988)))

(assert (=> bs!442060 (= lambda!78404 lambda!78390)))

(declare-fun bs!442061 () Bool)

(assert (= bs!442061 (and d!643052 d!642872)))

(assert (=> bs!442061 (= lambda!78404 lambda!78338)))

(declare-fun bs!442062 () Bool)

(assert (= bs!442062 (and d!643052 d!642800)))

(assert (=> bs!442062 (= lambda!78404 lambda!78331)))

(declare-fun bs!442063 () Bool)

(assert (= bs!442063 (and d!643052 d!642972)))

(assert (=> bs!442063 (= lambda!78404 lambda!78387)))

(declare-fun bs!442064 () Bool)

(assert (= bs!442064 (and d!643052 d!642950)))

(assert (=> bs!442064 (= lambda!78404 lambda!78373)))

(declare-fun bs!442065 () Bool)

(assert (= bs!442065 (and d!643052 d!642990)))

(assert (=> bs!442065 (= lambda!78404 lambda!78391)))

(declare-fun bs!442066 () Bool)

(assert (= bs!442066 (and d!643052 d!642980)))

(assert (=> bs!442066 (= lambda!78404 lambda!78388)))

(declare-fun bs!442067 () Bool)

(assert (= bs!442067 (and d!643052 d!643046)))

(assert (=> bs!442067 (= lambda!78404 lambda!78402)))

(declare-fun bs!442068 () Bool)

(assert (= bs!442068 (and d!643052 d!642866)))

(assert (=> bs!442068 (= lambda!78404 lambda!78337)))

(declare-fun bs!442069 () Bool)

(assert (= bs!442069 (and d!643052 d!642968)))

(assert (=> bs!442069 (= lambda!78404 lambda!78383)))

(declare-fun bs!442070 () Bool)

(assert (= bs!442070 (and d!643052 d!642994)))

(assert (=> bs!442070 (= lambda!78404 lambda!78393)))

(declare-fun bs!442071 () Bool)

(assert (= bs!442071 (and d!643052 d!642908)))

(assert (=> bs!442071 (= lambda!78404 lambda!78360)))

(declare-fun bs!442072 () Bool)

(assert (= bs!442072 (and d!643052 d!642814)))

(assert (=> bs!442072 (= lambda!78404 lambda!78333)))

(declare-fun bs!442073 () Bool)

(assert (= bs!442073 (and d!643052 d!643042)))

(assert (=> bs!442073 (= lambda!78404 lambda!78400)))

(declare-fun bs!442074 () Bool)

(assert (= bs!442074 (and d!643052 d!642836)))

(assert (=> bs!442074 (= lambda!78404 lambda!78334)))

(declare-fun bs!442075 () Bool)

(assert (= bs!442075 (and d!643052 d!643018)))

(assert (=> bs!442075 (= lambda!78404 lambda!78395)))

(assert (=> d!643052 (= (inv!31182 setElem!14396) (forall!4846 (exprs!1715 setElem!14396) lambda!78404))))

(declare-fun bs!442076 () Bool)

(assert (= bs!442076 d!643052))

(declare-fun m!2573114 () Bool)

(assert (=> bs!442076 m!2573114))

(assert (=> setNonEmpty!14396 d!643052))

(assert (=> b!2117314 d!643044))

(declare-fun d!643054 () Bool)

(assert (=> d!643054 (= (list!9507 (_1!13446 lt!794051)) (list!9508 (c!339387 (_1!13446 lt!794051))))))

(declare-fun bs!442077 () Bool)

(assert (= bs!442077 d!643054))

(declare-fun m!2573116 () Bool)

(assert (=> bs!442077 m!2573116))

(assert (=> d!642714 d!643054))

(declare-fun d!643056 () Bool)

(declare-fun res!918534 () tuple2!23138)

(assert (=> d!643056 (= (tuple2!23143 (list!9507 (_1!13446 res!918534)) (list!9507 (_2!13446 res!918534))) (findLongestMatch!515 r!15373 (list!9507 input!6660)))))

(declare-fun e!1348332 () Bool)

(declare-fun e!1348333 () Bool)

(assert (=> d!643056 (and (inv!31176 (_1!13446 res!918534)) e!1348332 (inv!31176 (_2!13446 res!918534)) e!1348333)))

(assert (=> d!643056 (= (choose!12658 r!15373 input!6660 totalInput!1306) res!918534)))

(declare-fun b!2118125 () Bool)

(declare-fun tp!646769 () Bool)

(assert (=> b!2118125 (= e!1348332 (and (inv!31175 (c!339387 (_1!13446 res!918534))) tp!646769))))

(declare-fun b!2118126 () Bool)

(declare-fun tp!646770 () Bool)

(assert (=> b!2118126 (= e!1348333 (and (inv!31175 (c!339387 (_2!13446 res!918534))) tp!646770))))

(assert (= d!643056 b!2118125))

(assert (= d!643056 b!2118126))

(declare-fun m!2573118 () Bool)

(assert (=> d!643056 m!2573118))

(declare-fun m!2573120 () Bool)

(assert (=> d!643056 m!2573120))

(assert (=> d!643056 m!2571907))

(assert (=> d!643056 m!2571973))

(assert (=> d!643056 m!2571907))

(declare-fun m!2573122 () Bool)

(assert (=> d!643056 m!2573122))

(declare-fun m!2573124 () Bool)

(assert (=> d!643056 m!2573124))

(declare-fun m!2573126 () Bool)

(assert (=> b!2118125 m!2573126))

(declare-fun m!2573128 () Bool)

(assert (=> b!2118126 m!2573128))

(assert (=> d!642714 d!643056))

(assert (=> d!642714 d!642728))

(assert (=> d!642714 d!642766))

(declare-fun d!643058 () Bool)

(assert (=> d!643058 (= (list!9507 (_2!13446 lt!794051)) (list!9508 (c!339387 (_2!13446 lt!794051))))))

(declare-fun bs!442078 () Bool)

(assert (= bs!442078 d!643058))

(declare-fun m!2573130 () Bool)

(assert (=> bs!442078 m!2573130))

(assert (=> d!642714 d!643058))

(assert (=> d!642714 d!642782))

(declare-fun b!2118130 () Bool)

(declare-fun e!1348335 () List!23682)

(assert (=> b!2118130 (= e!1348335 (++!6313 (list!9508 (left!18281 (c!339387 (_2!13446 (_1!13450 lt!793892))))) (list!9508 (right!18611 (c!339387 (_2!13446 (_1!13450 lt!793892)))))))))

(declare-fun b!2118129 () Bool)

(assert (=> b!2118129 (= e!1348335 (list!9509 (xs!10726 (c!339387 (_2!13446 (_1!13450 lt!793892))))))))

(declare-fun b!2118128 () Bool)

(declare-fun e!1348334 () List!23682)

(assert (=> b!2118128 (= e!1348334 e!1348335)))

(declare-fun c!339593 () Bool)

(assert (=> b!2118128 (= c!339593 ((_ is Leaf!11374) (c!339387 (_2!13446 (_1!13450 lt!793892)))))))

(declare-fun b!2118127 () Bool)

(assert (=> b!2118127 (= e!1348334 Nil!23598)))

(declare-fun d!643060 () Bool)

(declare-fun c!339592 () Bool)

(assert (=> d!643060 (= c!339592 ((_ is Empty!7784) (c!339387 (_2!13446 (_1!13450 lt!793892)))))))

(assert (=> d!643060 (= (list!9508 (c!339387 (_2!13446 (_1!13450 lt!793892)))) e!1348334)))

(assert (= (and d!643060 c!339592) b!2118127))

(assert (= (and d!643060 (not c!339592)) b!2118128))

(assert (= (and b!2118128 c!339593) b!2118129))

(assert (= (and b!2118128 (not c!339593)) b!2118130))

(declare-fun m!2573132 () Bool)

(assert (=> b!2118130 m!2573132))

(declare-fun m!2573134 () Bool)

(assert (=> b!2118130 m!2573134))

(assert (=> b!2118130 m!2573132))

(assert (=> b!2118130 m!2573134))

(declare-fun m!2573136 () Bool)

(assert (=> b!2118130 m!2573136))

(declare-fun m!2573138 () Bool)

(assert (=> b!2118129 m!2573138))

(assert (=> d!642690 d!643060))

(declare-fun d!643062 () Bool)

(assert (=> d!643062 (= (list!9507 (_2!13446 (findLongestMatchZipperFastV2!13 lt!793898 input!6660 totalInput!1306))) (list!9508 (c!339387 (_2!13446 (findLongestMatchZipperFastV2!13 lt!793898 input!6660 totalInput!1306)))))))

(declare-fun bs!442079 () Bool)

(assert (= bs!442079 d!643062))

(declare-fun m!2573140 () Bool)

(assert (=> bs!442079 m!2573140))

(assert (=> b!2117171 d!643062))

(assert (=> b!2117171 d!642696))

(assert (=> b!2117171 d!642782))

(assert (=> b!2117171 d!642766))

(declare-fun d!643064 () Bool)

(assert (=> d!643064 (= (inv!31183 (xs!10726 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) (<= (size!18433 (innerList!7844 (xs!10726 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) 2147483647))))

(declare-fun bs!442080 () Bool)

(assert (= bs!442080 d!643064))

(declare-fun m!2573142 () Bool)

(assert (=> bs!442080 m!2573142))

(assert (=> b!2117532 d!643064))

(declare-fun d!643066 () Bool)

(declare-fun res!918535 () Bool)

(declare-fun e!1348336 () Bool)

(assert (=> d!643066 (=> res!918535 e!1348336)))

(assert (=> d!643066 (= res!918535 ((_ is Nil!23600) Nil!23600))))

(assert (=> d!643066 (= (forall!4845 Nil!23600 (ite c!339406 lambda!78315 lambda!78314)) e!1348336)))

(declare-fun b!2118131 () Bool)

(declare-fun e!1348337 () Bool)

(assert (=> b!2118131 (= e!1348336 e!1348337)))

(declare-fun res!918536 () Bool)

(assert (=> b!2118131 (=> (not res!918536) (not e!1348337))))

(assert (=> b!2118131 (= res!918536 (dynLambda!11302 (ite c!339406 lambda!78315 lambda!78314) (h!29001 Nil!23600)))))

(declare-fun b!2118132 () Bool)

(assert (=> b!2118132 (= e!1348337 (forall!4845 (t!196193 Nil!23600) (ite c!339406 lambda!78315 lambda!78314)))))

(assert (= (and d!643066 (not res!918535)) b!2118131))

(assert (= (and b!2118131 res!918536) b!2118132))

(declare-fun b_lambda!70421 () Bool)

(assert (=> (not b_lambda!70421) (not b!2118131)))

(declare-fun m!2573144 () Bool)

(assert (=> b!2118131 m!2573144))

(declare-fun m!2573146 () Bool)

(assert (=> b!2118132 m!2573146))

(assert (=> bm!128583 d!643066))

(declare-fun d!643068 () Bool)

(declare-fun c!339594 () Bool)

(assert (=> d!643068 (= c!339594 ((_ is Node!7784) (left!18281 (c!339387 input!6660))))))

(declare-fun e!1348338 () Bool)

(assert (=> d!643068 (= (inv!31175 (left!18281 (c!339387 input!6660))) e!1348338)))

(declare-fun b!2118133 () Bool)

(assert (=> b!2118133 (= e!1348338 (inv!31180 (left!18281 (c!339387 input!6660))))))

(declare-fun b!2118134 () Bool)

(declare-fun e!1348339 () Bool)

(assert (=> b!2118134 (= e!1348338 e!1348339)))

(declare-fun res!918537 () Bool)

(assert (=> b!2118134 (= res!918537 (not ((_ is Leaf!11374) (left!18281 (c!339387 input!6660)))))))

(assert (=> b!2118134 (=> res!918537 e!1348339)))

(declare-fun b!2118135 () Bool)

(assert (=> b!2118135 (= e!1348339 (inv!31181 (left!18281 (c!339387 input!6660))))))

(assert (= (and d!643068 c!339594) b!2118133))

(assert (= (and d!643068 (not c!339594)) b!2118134))

(assert (= (and b!2118134 (not res!918537)) b!2118135))

(declare-fun m!2573148 () Bool)

(assert (=> b!2118133 m!2573148))

(declare-fun m!2573150 () Bool)

(assert (=> b!2118135 m!2573150))

(assert (=> b!2117454 d!643068))

(declare-fun d!643070 () Bool)

(declare-fun c!339595 () Bool)

(assert (=> d!643070 (= c!339595 ((_ is Node!7784) (right!18611 (c!339387 input!6660))))))

(declare-fun e!1348340 () Bool)

(assert (=> d!643070 (= (inv!31175 (right!18611 (c!339387 input!6660))) e!1348340)))

(declare-fun b!2118136 () Bool)

(assert (=> b!2118136 (= e!1348340 (inv!31180 (right!18611 (c!339387 input!6660))))))

(declare-fun b!2118137 () Bool)

(declare-fun e!1348341 () Bool)

(assert (=> b!2118137 (= e!1348340 e!1348341)))

(declare-fun res!918538 () Bool)

(assert (=> b!2118137 (= res!918538 (not ((_ is Leaf!11374) (right!18611 (c!339387 input!6660)))))))

(assert (=> b!2118137 (=> res!918538 e!1348341)))

(declare-fun b!2118138 () Bool)

(assert (=> b!2118138 (= e!1348341 (inv!31181 (right!18611 (c!339387 input!6660))))))

(assert (= (and d!643070 c!339595) b!2118136))

(assert (= (and d!643070 (not c!339595)) b!2118137))

(assert (= (and b!2118137 (not res!918538)) b!2118138))

(declare-fun m!2573152 () Bool)

(assert (=> b!2118136 m!2573152))

(declare-fun m!2573154 () Bool)

(assert (=> b!2118138 m!2573154))

(assert (=> b!2117454 d!643070))

(declare-fun b!2118140 () Bool)

(declare-fun e!1348342 () Bool)

(declare-fun tp!646773 () Bool)

(assert (=> b!2118140 (= e!1348342 tp!646773)))

(declare-fun e!1348343 () Bool)

(assert (=> b!2117517 (= tp!646744 e!1348343)))

(declare-fun setIsEmpty!14404 () Bool)

(declare-fun setRes!14404 () Bool)

(assert (=> setIsEmpty!14404 setRes!14404))

(declare-fun setElem!14404 () Context!2430)

(declare-fun setNonEmpty!14404 () Bool)

(declare-fun tp!646771 () Bool)

(assert (=> setNonEmpty!14404 (= setRes!14404 (and tp!646771 (inv!31182 setElem!14404) e!1348342))))

(declare-fun setRest!14404 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14404 (= (_1!13447 (_1!13448 (h!29002 (t!196194 mapDefault!11594)))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14404 true) setRest!14404))))

(declare-fun b!2118139 () Bool)

(declare-fun tp!646772 () Bool)

(assert (=> b!2118139 (= e!1348343 (and setRes!14404 tp!646772))))

(declare-fun condSetEmpty!14404 () Bool)

(assert (=> b!2118139 (= condSetEmpty!14404 (= (_1!13447 (_1!13448 (h!29002 (t!196194 mapDefault!11594)))) ((as const (Array Context!2430 Bool)) false)))))

(assert (= (and b!2118139 condSetEmpty!14404) setIsEmpty!14404))

(assert (= (and b!2118139 (not condSetEmpty!14404)) setNonEmpty!14404))

(assert (= setNonEmpty!14404 b!2118140))

(assert (= (and b!2117517 ((_ is Cons!23601) (t!196194 mapDefault!11594))) b!2118139))

(declare-fun m!2573156 () Bool)

(assert (=> setNonEmpty!14404 m!2573156))

(declare-fun condSetEmpty!14407 () Bool)

(assert (=> setNonEmpty!14386 (= condSetEmpty!14407 (= setRest!14386 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14407 () Bool)

(assert (=> setNonEmpty!14386 (= tp!646750 setRes!14407)))

(declare-fun setIsEmpty!14407 () Bool)

(assert (=> setIsEmpty!14407 setRes!14407))

(declare-fun tp!646778 () Bool)

(declare-fun e!1348346 () Bool)

(declare-fun setNonEmpty!14407 () Bool)

(declare-fun setElem!14407 () Context!2430)

(assert (=> setNonEmpty!14407 (= setRes!14407 (and tp!646778 (inv!31182 setElem!14407) e!1348346))))

(declare-fun setRest!14407 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14407 (= setRest!14386 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14407 true) setRest!14407))))

(declare-fun b!2118145 () Bool)

(declare-fun tp!646779 () Bool)

(assert (=> b!2118145 (= e!1348346 tp!646779)))

(assert (= (and setNonEmpty!14386 condSetEmpty!14407) setIsEmpty!14407))

(assert (= (and setNonEmpty!14386 (not condSetEmpty!14407)) setNonEmpty!14407))

(assert (= setNonEmpty!14407 b!2118145))

(declare-fun m!2573158 () Bool)

(assert (=> setNonEmpty!14407 m!2573158))

(declare-fun b!2118150 () Bool)

(declare-fun e!1348349 () Bool)

(declare-fun tp!646784 () Bool)

(declare-fun tp!646785 () Bool)

(assert (=> b!2118150 (= e!1348349 (and tp!646784 tp!646785))))

(assert (=> b!2117503 (= tp!646726 e!1348349)))

(assert (= (and b!2117503 ((_ is Cons!23596) (exprs!1715 (_1!13442 (_1!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))))))) b!2118150))

(declare-fun b!2118151 () Bool)

(declare-fun e!1348350 () Bool)

(declare-fun tp!646786 () Bool)

(declare-fun tp!646787 () Bool)

(assert (=> b!2118151 (= e!1348350 (and tp!646786 tp!646787))))

(assert (=> b!2117361 (= tp!646586 e!1348350)))

(assert (= (and b!2117361 ((_ is Cons!23596) (exprs!1715 (_1!13442 (_1!13443 (h!29000 mapDefault!11585)))))) b!2118151))

(declare-fun b!2118152 () Bool)

(declare-fun e!1348353 () Bool)

(declare-fun tp!646788 () Bool)

(assert (=> b!2118152 (= e!1348353 tp!646788)))

(declare-fun tp!646791 () Bool)

(declare-fun e!1348351 () Bool)

(declare-fun setRes!14408 () Bool)

(declare-fun b!2118153 () Bool)

(declare-fun e!1348352 () Bool)

(assert (=> b!2118153 (= e!1348351 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 (t!196192 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))))))) e!1348352 tp_is_empty!9479 setRes!14408 tp!646791))))

(declare-fun condSetEmpty!14408 () Bool)

(assert (=> b!2118153 (= condSetEmpty!14408 (= (_2!13443 (h!29000 (t!196192 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118154 () Bool)

(declare-fun tp!646789 () Bool)

(assert (=> b!2118154 (= e!1348352 tp!646789)))

(declare-fun setElem!14408 () Context!2430)

(declare-fun setNonEmpty!14408 () Bool)

(declare-fun tp!646790 () Bool)

(assert (=> setNonEmpty!14408 (= setRes!14408 (and tp!646790 (inv!31182 setElem!14408) e!1348353))))

(declare-fun setRest!14408 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14408 (= (_2!13443 (h!29000 (t!196192 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14408 true) setRest!14408))))

(assert (=> b!2117499 (= tp!646724 e!1348351)))

(declare-fun setIsEmpty!14408 () Bool)

(assert (=> setIsEmpty!14408 setRes!14408))

(assert (= b!2118153 b!2118154))

(assert (= (and b!2118153 condSetEmpty!14408) setIsEmpty!14408))

(assert (= (and b!2118153 (not condSetEmpty!14408)) setNonEmpty!14408))

(assert (= setNonEmpty!14408 b!2118152))

(assert (= (and b!2117499 ((_ is Cons!23599) (t!196192 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))))) b!2118153))

(declare-fun m!2573160 () Bool)

(assert (=> b!2118153 m!2573160))

(declare-fun m!2573162 () Bool)

(assert (=> setNonEmpty!14408 m!2573162))

(declare-fun b!2118155 () Bool)

(declare-fun e!1348354 () Bool)

(declare-fun setRes!14409 () Bool)

(assert (=> b!2118155 (= e!1348354 setRes!14409)))

(declare-fun condSetEmpty!14409 () Bool)

(assert (=> b!2118155 (= condSetEmpty!14409 (= (_2!13441 (h!28998 mapDefault!11580)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14409 () Bool)

(assert (=> setIsEmpty!14409 setRes!14409))

(declare-fun setNonEmpty!14409 () Bool)

(assert (=> setNonEmpty!14409 (= setRes!14409 true)))

(declare-fun setElem!14409 () Context!2430)

(declare-fun setRest!14409 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14409 (= (_2!13441 (h!28998 mapDefault!11580)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14409 true) setRest!14409))))

(assert (=> b!2117213 e!1348354))

(assert (= (and b!2118155 condSetEmpty!14409) setIsEmpty!14409))

(assert (= (and b!2118155 (not condSetEmpty!14409)) setNonEmpty!14409))

(assert (= (and b!2117213 ((_ is Cons!23597) mapDefault!11580)) b!2118155))

(declare-fun setNonEmpty!14410 () Bool)

(declare-fun setRes!14410 () Bool)

(assert (=> setNonEmpty!14410 (= setRes!14410 true)))

(declare-fun mapDefault!11604 () List!23683)

(declare-fun setElem!14411 () Context!2430)

(declare-fun setRest!14411 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14410 (= (_2!13443 (h!29000 mapDefault!11604)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14411 true) setRest!14411))))

(declare-fun setNonEmpty!14411 () Bool)

(declare-fun setRes!14411 () Bool)

(assert (=> setNonEmpty!14411 (= setRes!14411 true)))

(declare-fun mapValue!11604 () List!23683)

(declare-fun setElem!14410 () Context!2430)

(declare-fun setRest!14410 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14411 (= (_2!13443 (h!29000 mapValue!11604)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14410 true) setRest!14410))))

(declare-fun b!2118156 () Bool)

(declare-fun e!1348356 () Bool)

(assert (=> b!2118156 (= e!1348356 setRes!14411)))

(declare-fun condSetEmpty!14411 () Bool)

(assert (=> b!2118156 (= condSetEmpty!14411 (= (_2!13443 (h!29000 mapValue!11604)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118157 () Bool)

(declare-fun e!1348355 () Bool)

(assert (=> b!2118157 (= e!1348355 setRes!14410)))

(declare-fun condSetEmpty!14410 () Bool)

(assert (=> b!2118157 (= condSetEmpty!14410 (= (_2!13443 (h!29000 mapDefault!11604)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14411 () Bool)

(assert (=> setIsEmpty!14411 setRes!14410))

(declare-fun mapNonEmpty!11604 () Bool)

(declare-fun mapRes!11604 () Bool)

(assert (=> mapNonEmpty!11604 (= mapRes!11604 e!1348356)))

(declare-fun mapRest!11604 () (Array (_ BitVec 32) List!23683))

(declare-fun mapKey!11604 () (_ BitVec 32))

(assert (=> mapNonEmpty!11604 (= mapRest!11580 (store mapRest!11604 mapKey!11604 mapValue!11604))))

(declare-fun mapIsEmpty!11604 () Bool)

(assert (=> mapIsEmpty!11604 mapRes!11604))

(declare-fun setIsEmpty!14410 () Bool)

(assert (=> setIsEmpty!14410 setRes!14411))

(declare-fun condMapEmpty!11604 () Bool)

(assert (=> mapNonEmpty!11580 (= condMapEmpty!11604 (= mapRest!11580 ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11604)))))

(assert (=> mapNonEmpty!11580 (and e!1348355 mapRes!11604)))

(assert (= (and mapNonEmpty!11580 condMapEmpty!11604) mapIsEmpty!11604))

(assert (= (and mapNonEmpty!11580 (not condMapEmpty!11604)) mapNonEmpty!11604))

(assert (= (and b!2118156 condSetEmpty!14411) setIsEmpty!14410))

(assert (= (and b!2118156 (not condSetEmpty!14411)) setNonEmpty!14411))

(assert (= (and mapNonEmpty!11604 ((_ is Cons!23599) mapValue!11604)) b!2118156))

(assert (= (and b!2118157 condSetEmpty!14410) setIsEmpty!14411))

(assert (= (and b!2118157 (not condSetEmpty!14410)) setNonEmpty!14410))

(assert (= (and mapNonEmpty!11580 ((_ is Cons!23599) mapDefault!11604)) b!2118157))

(declare-fun m!2573164 () Bool)

(assert (=> mapNonEmpty!11604 m!2573164))

(declare-fun b!2118158 () Bool)

(declare-fun e!1348357 () Bool)

(declare-fun setRes!14412 () Bool)

(assert (=> b!2118158 (= e!1348357 setRes!14412)))

(declare-fun condSetEmpty!14412 () Bool)

(assert (=> b!2118158 (= condSetEmpty!14412 (= (_2!13443 (h!29000 mapValue!11580)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14412 () Bool)

(assert (=> setIsEmpty!14412 setRes!14412))

(declare-fun setNonEmpty!14412 () Bool)

(assert (=> setNonEmpty!14412 (= setRes!14412 true)))

(declare-fun setElem!14412 () Context!2430)

(declare-fun setRest!14412 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14412 (= (_2!13443 (h!29000 mapValue!11580)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14412 true) setRest!14412))))

(assert (=> mapNonEmpty!11580 e!1348357))

(assert (= (and b!2118158 condSetEmpty!14412) setIsEmpty!14412))

(assert (= (and b!2118158 (not condSetEmpty!14412)) setNonEmpty!14412))

(assert (= (and mapNonEmpty!11580 ((_ is Cons!23599) mapValue!11580)) b!2118158))

(declare-fun condSetEmpty!14413 () Bool)

(assert (=> setNonEmpty!14367 (= condSetEmpty!14413 (= setRest!14367 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14413 () Bool)

(assert (=> setNonEmpty!14367 setRes!14413))

(declare-fun setIsEmpty!14413 () Bool)

(assert (=> setIsEmpty!14413 setRes!14413))

(declare-fun setNonEmpty!14413 () Bool)

(assert (=> setNonEmpty!14413 (= setRes!14413 true)))

(declare-fun setElem!14413 () Context!2430)

(declare-fun setRest!14413 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14413 (= setRest!14367 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14413 true) setRest!14413))))

(assert (= (and setNonEmpty!14367 condSetEmpty!14413) setIsEmpty!14413))

(assert (= (and setNonEmpty!14367 (not condSetEmpty!14413)) setNonEmpty!14413))

(declare-fun condSetEmpty!14414 () Bool)

(assert (=> setNonEmpty!14394 (= condSetEmpty!14414 (= setRest!14394 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14414 () Bool)

(assert (=> setNonEmpty!14394 setRes!14414))

(declare-fun setIsEmpty!14414 () Bool)

(assert (=> setIsEmpty!14414 setRes!14414))

(declare-fun setNonEmpty!14414 () Bool)

(assert (=> setNonEmpty!14414 (= setRes!14414 true)))

(declare-fun setElem!14414 () Context!2430)

(declare-fun setRest!14414 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14414 (= setRest!14394 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14414 true) setRest!14414))))

(assert (= (and setNonEmpty!14394 condSetEmpty!14414) setIsEmpty!14414))

(assert (= (and setNonEmpty!14394 (not condSetEmpty!14414)) setNonEmpty!14414))

(declare-fun b!2118159 () Bool)

(declare-fun e!1348360 () Bool)

(declare-fun tp!646792 () Bool)

(assert (=> b!2118159 (= e!1348360 tp!646792)))

(declare-fun setRes!14415 () Bool)

(declare-fun e!1348359 () Bool)

(declare-fun e!1348358 () Bool)

(declare-fun tp!646795 () Bool)

(declare-fun b!2118160 () Bool)

(assert (=> b!2118160 (= e!1348358 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 (t!196192 mapDefault!11569))))) e!1348359 tp_is_empty!9479 setRes!14415 tp!646795))))

(declare-fun condSetEmpty!14415 () Bool)

(assert (=> b!2118160 (= condSetEmpty!14415 (= (_2!13443 (h!29000 (t!196192 mapDefault!11569))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118161 () Bool)

(declare-fun tp!646793 () Bool)

(assert (=> b!2118161 (= e!1348359 tp!646793)))

(declare-fun setNonEmpty!14415 () Bool)

(declare-fun setElem!14415 () Context!2430)

(declare-fun tp!646794 () Bool)

(assert (=> setNonEmpty!14415 (= setRes!14415 (and tp!646794 (inv!31182 setElem!14415) e!1348360))))

(declare-fun setRest!14415 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14415 (= (_2!13443 (h!29000 (t!196192 mapDefault!11569))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14415 true) setRest!14415))))

(assert (=> b!2117537 (= tp!646759 e!1348358)))

(declare-fun setIsEmpty!14415 () Bool)

(assert (=> setIsEmpty!14415 setRes!14415))

(assert (= b!2118160 b!2118161))

(assert (= (and b!2118160 condSetEmpty!14415) setIsEmpty!14415))

(assert (= (and b!2118160 (not condSetEmpty!14415)) setNonEmpty!14415))

(assert (= setNonEmpty!14415 b!2118159))

(assert (= (and b!2117537 ((_ is Cons!23599) (t!196192 mapDefault!11569))) b!2118160))

(declare-fun m!2573166 () Bool)

(assert (=> b!2118160 m!2573166))

(declare-fun m!2573168 () Bool)

(assert (=> setNonEmpty!14415 m!2573168))

(declare-fun b!2118164 () Bool)

(declare-fun e!1348361 () Bool)

(declare-fun tp!646796 () Bool)

(assert (=> b!2118164 (= e!1348361 tp!646796)))

(declare-fun b!2118165 () Bool)

(declare-fun tp!646798 () Bool)

(declare-fun tp!646800 () Bool)

(assert (=> b!2118165 (= e!1348361 (and tp!646798 tp!646800))))

(assert (=> b!2117497 (= tp!646718 e!1348361)))

(declare-fun b!2118163 () Bool)

(declare-fun tp!646799 () Bool)

(declare-fun tp!646797 () Bool)

(assert (=> b!2118163 (= e!1348361 (and tp!646799 tp!646797))))

(declare-fun b!2118162 () Bool)

(assert (=> b!2118162 (= e!1348361 tp_is_empty!9479)))

(assert (= (and b!2117497 ((_ is ElementMatch!5645) (regOne!11803 (regTwo!11802 r!15373)))) b!2118162))

(assert (= (and b!2117497 ((_ is Concat!9947) (regOne!11803 (regTwo!11802 r!15373)))) b!2118163))

(assert (= (and b!2117497 ((_ is Star!5645) (regOne!11803 (regTwo!11802 r!15373)))) b!2118164))

(assert (= (and b!2117497 ((_ is Union!5645) (regOne!11803 (regTwo!11802 r!15373)))) b!2118165))

(declare-fun b!2118168 () Bool)

(declare-fun e!1348362 () Bool)

(declare-fun tp!646801 () Bool)

(assert (=> b!2118168 (= e!1348362 tp!646801)))

(declare-fun b!2118169 () Bool)

(declare-fun tp!646803 () Bool)

(declare-fun tp!646805 () Bool)

(assert (=> b!2118169 (= e!1348362 (and tp!646803 tp!646805))))

(assert (=> b!2117497 (= tp!646720 e!1348362)))

(declare-fun b!2118167 () Bool)

(declare-fun tp!646804 () Bool)

(declare-fun tp!646802 () Bool)

(assert (=> b!2118167 (= e!1348362 (and tp!646804 tp!646802))))

(declare-fun b!2118166 () Bool)

(assert (=> b!2118166 (= e!1348362 tp_is_empty!9479)))

(assert (= (and b!2117497 ((_ is ElementMatch!5645) (regTwo!11803 (regTwo!11802 r!15373)))) b!2118166))

(assert (= (and b!2117497 ((_ is Concat!9947) (regTwo!11803 (regTwo!11802 r!15373)))) b!2118167))

(assert (= (and b!2117497 ((_ is Star!5645) (regTwo!11803 (regTwo!11802 r!15373)))) b!2118168))

(assert (= (and b!2117497 ((_ is Union!5645) (regTwo!11803 (regTwo!11802 r!15373)))) b!2118169))

(declare-fun b!2118170 () Bool)

(declare-fun e!1348365 () Bool)

(declare-fun tp!646806 () Bool)

(assert (=> b!2118170 (= e!1348365 tp!646806)))

(declare-fun setRes!14416 () Bool)

(declare-fun tp!646809 () Bool)

(declare-fun e!1348363 () Bool)

(declare-fun b!2118171 () Bool)

(declare-fun e!1348364 () Bool)

(assert (=> b!2118171 (= e!1348363 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 (t!196192 mapValue!11569))))) e!1348364 tp_is_empty!9479 setRes!14416 tp!646809))))

(declare-fun condSetEmpty!14416 () Bool)

(assert (=> b!2118171 (= condSetEmpty!14416 (= (_2!13443 (h!29000 (t!196192 mapValue!11569))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118172 () Bool)

(declare-fun tp!646807 () Bool)

(assert (=> b!2118172 (= e!1348364 tp!646807)))

(declare-fun setElem!14416 () Context!2430)

(declare-fun tp!646808 () Bool)

(declare-fun setNonEmpty!14416 () Bool)

(assert (=> setNonEmpty!14416 (= setRes!14416 (and tp!646808 (inv!31182 setElem!14416) e!1348365))))

(declare-fun setRest!14416 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14416 (= (_2!13443 (h!29000 (t!196192 mapValue!11569))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14416 true) setRest!14416))))

(assert (=> b!2117376 (= tp!646600 e!1348363)))

(declare-fun setIsEmpty!14416 () Bool)

(assert (=> setIsEmpty!14416 setRes!14416))

(assert (= b!2118171 b!2118172))

(assert (= (and b!2118171 condSetEmpty!14416) setIsEmpty!14416))

(assert (= (and b!2118171 (not condSetEmpty!14416)) setNonEmpty!14416))

(assert (= setNonEmpty!14416 b!2118170))

(assert (= (and b!2117376 ((_ is Cons!23599) (t!196192 mapValue!11569))) b!2118171))

(declare-fun m!2573170 () Bool)

(assert (=> b!2118171 m!2573170))

(declare-fun m!2573172 () Bool)

(assert (=> setNonEmpty!14416 m!2573172))

(declare-fun b!2118175 () Bool)

(declare-fun e!1348366 () Bool)

(declare-fun tp!646810 () Bool)

(assert (=> b!2118175 (= e!1348366 tp!646810)))

(declare-fun b!2118176 () Bool)

(declare-fun tp!646812 () Bool)

(declare-fun tp!646814 () Bool)

(assert (=> b!2118176 (= e!1348366 (and tp!646812 tp!646814))))

(assert (=> b!2117482 (= tp!646698 e!1348366)))

(declare-fun b!2118174 () Bool)

(declare-fun tp!646813 () Bool)

(declare-fun tp!646811 () Bool)

(assert (=> b!2118174 (= e!1348366 (and tp!646813 tp!646811))))

(declare-fun b!2118173 () Bool)

(assert (=> b!2118173 (= e!1348366 tp_is_empty!9479)))

(assert (= (and b!2117482 ((_ is ElementMatch!5645) (reg!5974 (regOne!11803 r!15373)))) b!2118173))

(assert (= (and b!2117482 ((_ is Concat!9947) (reg!5974 (regOne!11803 r!15373)))) b!2118174))

(assert (= (and b!2117482 ((_ is Star!5645) (reg!5974 (regOne!11803 r!15373)))) b!2118175))

(assert (= (and b!2117482 ((_ is Union!5645) (reg!5974 (regOne!11803 r!15373)))) b!2118176))

(declare-fun b!2118178 () Bool)

(declare-fun e!1348367 () Bool)

(declare-fun tp!646817 () Bool)

(assert (=> b!2118178 (= e!1348367 tp!646817)))

(declare-fun e!1348368 () Bool)

(assert (=> b!2117488 (= tp!646709 e!1348368)))

(declare-fun setIsEmpty!14417 () Bool)

(declare-fun setRes!14417 () Bool)

(assert (=> setIsEmpty!14417 setRes!14417))

(declare-fun tp!646815 () Bool)

(declare-fun setNonEmpty!14417 () Bool)

(declare-fun setElem!14417 () Context!2430)

(assert (=> setNonEmpty!14417 (= setRes!14417 (and tp!646815 (inv!31182 setElem!14417) e!1348367))))

(declare-fun setRest!14417 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14417 (= (_1!13447 (_1!13448 (h!29002 (t!196194 mapDefault!11568)))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14417 true) setRest!14417))))

(declare-fun b!2118177 () Bool)

(declare-fun tp!646816 () Bool)

(assert (=> b!2118177 (= e!1348368 (and setRes!14417 tp!646816))))

(declare-fun condSetEmpty!14417 () Bool)

(assert (=> b!2118177 (= condSetEmpty!14417 (= (_1!13447 (_1!13448 (h!29002 (t!196194 mapDefault!11568)))) ((as const (Array Context!2430 Bool)) false)))))

(assert (= (and b!2118177 condSetEmpty!14417) setIsEmpty!14417))

(assert (= (and b!2118177 (not condSetEmpty!14417)) setNonEmpty!14417))

(assert (= setNonEmpty!14417 b!2118178))

(assert (= (and b!2117488 ((_ is Cons!23601) (t!196194 mapDefault!11568))) b!2118177))

(declare-fun m!2573174 () Bool)

(assert (=> setNonEmpty!14417 m!2573174))

(declare-fun b!2118179 () Bool)

(declare-fun e!1348369 () Bool)

(declare-fun tp!646818 () Bool)

(declare-fun tp!646819 () Bool)

(assert (=> b!2118179 (= e!1348369 (and tp!646818 tp!646819))))

(assert (=> b!2117475 (= tp!646690 e!1348369)))

(assert (= (and b!2117475 ((_ is Cons!23596) (exprs!1715 setElem!14372))) b!2118179))

(declare-fun b!2118180 () Bool)

(declare-fun e!1348370 () Bool)

(declare-fun setRes!14418 () Bool)

(assert (=> b!2118180 (= e!1348370 setRes!14418)))

(declare-fun condSetEmpty!14418 () Bool)

(assert (=> b!2118180 (= condSetEmpty!14418 (= (_2!13441 (h!28998 (t!196190 mapDefault!11576))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14418 () Bool)

(assert (=> setIsEmpty!14418 setRes!14418))

(declare-fun setNonEmpty!14418 () Bool)

(assert (=> setNonEmpty!14418 (= setRes!14418 true)))

(declare-fun setElem!14418 () Context!2430)

(declare-fun setRest!14418 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14418 (= (_2!13441 (h!28998 (t!196190 mapDefault!11576))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14418 true) setRest!14418))))

(assert (=> b!2117401 e!1348370))

(assert (= (and b!2118180 condSetEmpty!14418) setIsEmpty!14418))

(assert (= (and b!2118180 (not condSetEmpty!14418)) setNonEmpty!14418))

(assert (= (and b!2117401 ((_ is Cons!23597) (t!196190 mapDefault!11576))) b!2118180))

(declare-fun b!2118181 () Bool)

(declare-fun e!1348373 () Bool)

(declare-fun tp!646820 () Bool)

(assert (=> b!2118181 (= e!1348373 tp!646820)))

(declare-fun tp!646823 () Bool)

(declare-fun b!2118182 () Bool)

(declare-fun e!1348371 () Bool)

(declare-fun e!1348372 () Bool)

(declare-fun setRes!14419 () Bool)

(assert (=> b!2118182 (= e!1348371 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 (t!196192 mapDefault!11585))))) e!1348372 tp_is_empty!9479 setRes!14419 tp!646823))))

(declare-fun condSetEmpty!14419 () Bool)

(assert (=> b!2118182 (= condSetEmpty!14419 (= (_2!13443 (h!29000 (t!196192 mapDefault!11585))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118183 () Bool)

(declare-fun tp!646821 () Bool)

(assert (=> b!2118183 (= e!1348372 tp!646821)))

(declare-fun tp!646822 () Bool)

(declare-fun setNonEmpty!14419 () Bool)

(declare-fun setElem!14419 () Context!2430)

(assert (=> setNonEmpty!14419 (= setRes!14419 (and tp!646822 (inv!31182 setElem!14419) e!1348373))))

(declare-fun setRest!14419 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14419 (= (_2!13443 (h!29000 (t!196192 mapDefault!11585))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14419 true) setRest!14419))))

(assert (=> b!2117364 (= tp!646581 e!1348371)))

(declare-fun setIsEmpty!14419 () Bool)

(assert (=> setIsEmpty!14419 setRes!14419))

(assert (= b!2118182 b!2118183))

(assert (= (and b!2118182 condSetEmpty!14419) setIsEmpty!14419))

(assert (= (and b!2118182 (not condSetEmpty!14419)) setNonEmpty!14419))

(assert (= setNonEmpty!14419 b!2118181))

(assert (= (and b!2117364 ((_ is Cons!23599) (t!196192 mapDefault!11585))) b!2118182))

(declare-fun m!2573176 () Bool)

(assert (=> b!2118182 m!2573176))

(declare-fun m!2573178 () Bool)

(assert (=> setNonEmpty!14419 m!2573178))

(declare-fun tp!646825 () Bool)

(declare-fun b!2118184 () Bool)

(declare-fun e!1348375 () Bool)

(declare-fun tp!646826 () Bool)

(assert (=> b!2118184 (= e!1348375 (and (inv!31175 (left!18281 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) tp!646826 (inv!31175 (right!18611 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) tp!646825))))

(declare-fun b!2118186 () Bool)

(declare-fun e!1348374 () Bool)

(declare-fun tp!646824 () Bool)

(assert (=> b!2118186 (= e!1348374 tp!646824)))

(declare-fun b!2118185 () Bool)

(assert (=> b!2118185 (= e!1348375 (and (inv!31183 (xs!10726 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) e!1348374))))

(assert (=> b!2117531 (= tp!646755 (and (inv!31175 (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) e!1348375))))

(assert (= (and b!2117531 ((_ is Node!7784) (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) b!2118184))

(assert (= b!2118185 b!2118186))

(assert (= (and b!2117531 ((_ is Leaf!11374) (left!18281 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) b!2118185))

(declare-fun m!2573180 () Bool)

(assert (=> b!2118184 m!2573180))

(declare-fun m!2573182 () Bool)

(assert (=> b!2118184 m!2573182))

(declare-fun m!2573184 () Bool)

(assert (=> b!2118185 m!2573184))

(assert (=> b!2117531 m!2572249))

(declare-fun tp!646828 () Bool)

(declare-fun b!2118187 () Bool)

(declare-fun e!1348377 () Bool)

(declare-fun tp!646829 () Bool)

(assert (=> b!2118187 (= e!1348377 (and (inv!31175 (left!18281 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) tp!646829 (inv!31175 (right!18611 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) tp!646828))))

(declare-fun b!2118189 () Bool)

(declare-fun e!1348376 () Bool)

(declare-fun tp!646827 () Bool)

(assert (=> b!2118189 (= e!1348376 tp!646827)))

(declare-fun b!2118188 () Bool)

(assert (=> b!2118188 (= e!1348377 (and (inv!31183 (xs!10726 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) e!1348376))))

(assert (=> b!2117531 (= tp!646754 (and (inv!31175 (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))) e!1348377))))

(assert (= (and b!2117531 ((_ is Node!7784) (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) b!2118187))

(assert (= b!2118188 b!2118189))

(assert (= (and b!2117531 ((_ is Leaf!11374) (right!18611 (c!339387 (totalInput!2863 cacheFurthestNullable!141))))) b!2118188))

(declare-fun m!2573186 () Bool)

(assert (=> b!2118187 m!2573186))

(declare-fun m!2573188 () Bool)

(assert (=> b!2118187 m!2573188))

(declare-fun m!2573190 () Bool)

(assert (=> b!2118188 m!2573190))

(assert (=> b!2117531 m!2572251))

(declare-fun b!2118190 () Bool)

(declare-fun e!1348378 () Bool)

(declare-fun tp!646830 () Bool)

(declare-fun tp!646831 () Bool)

(assert (=> b!2118190 (= e!1348378 (and tp!646830 tp!646831))))

(assert (=> b!2117395 (= tp!646618 e!1348378)))

(assert (= (and b!2117395 ((_ is Cons!23596) (exprs!1715 setElem!14350))) b!2118190))

(declare-fun b!2118191 () Bool)

(declare-fun e!1348380 () Bool)

(declare-fun tp!646834 () Bool)

(declare-fun tp!646833 () Bool)

(assert (=> b!2118191 (= e!1348380 (and (inv!31175 (left!18281 (left!18281 (c!339387 totalInput!1306)))) tp!646834 (inv!31175 (right!18611 (left!18281 (c!339387 totalInput!1306)))) tp!646833))))

(declare-fun b!2118193 () Bool)

(declare-fun e!1348379 () Bool)

(declare-fun tp!646832 () Bool)

(assert (=> b!2118193 (= e!1348379 tp!646832)))

(declare-fun b!2118192 () Bool)

(assert (=> b!2118192 (= e!1348380 (and (inv!31183 (xs!10726 (left!18281 (c!339387 totalInput!1306)))) e!1348379))))

(assert (=> b!2117410 (= tp!646629 (and (inv!31175 (left!18281 (c!339387 totalInput!1306))) e!1348380))))

(assert (= (and b!2117410 ((_ is Node!7784) (left!18281 (c!339387 totalInput!1306)))) b!2118191))

(assert (= b!2118192 b!2118193))

(assert (= (and b!2117410 ((_ is Leaf!11374) (left!18281 (c!339387 totalInput!1306)))) b!2118192))

(declare-fun m!2573192 () Bool)

(assert (=> b!2118191 m!2573192))

(declare-fun m!2573194 () Bool)

(assert (=> b!2118191 m!2573194))

(declare-fun m!2573196 () Bool)

(assert (=> b!2118192 m!2573196))

(assert (=> b!2117410 m!2572197))

(declare-fun tp!646837 () Bool)

(declare-fun e!1348382 () Bool)

(declare-fun b!2118194 () Bool)

(declare-fun tp!646836 () Bool)

(assert (=> b!2118194 (= e!1348382 (and (inv!31175 (left!18281 (right!18611 (c!339387 totalInput!1306)))) tp!646837 (inv!31175 (right!18611 (right!18611 (c!339387 totalInput!1306)))) tp!646836))))

(declare-fun b!2118196 () Bool)

(declare-fun e!1348381 () Bool)

(declare-fun tp!646835 () Bool)

(assert (=> b!2118196 (= e!1348381 tp!646835)))

(declare-fun b!2118195 () Bool)

(assert (=> b!2118195 (= e!1348382 (and (inv!31183 (xs!10726 (right!18611 (c!339387 totalInput!1306)))) e!1348381))))

(assert (=> b!2117410 (= tp!646628 (and (inv!31175 (right!18611 (c!339387 totalInput!1306))) e!1348382))))

(assert (= (and b!2117410 ((_ is Node!7784) (right!18611 (c!339387 totalInput!1306)))) b!2118194))

(assert (= b!2118195 b!2118196))

(assert (= (and b!2117410 ((_ is Leaf!11374) (right!18611 (c!339387 totalInput!1306)))) b!2118195))

(declare-fun m!2573198 () Bool)

(assert (=> b!2118194 m!2573198))

(declare-fun m!2573200 () Bool)

(assert (=> b!2118194 m!2573200))

(declare-fun m!2573202 () Bool)

(assert (=> b!2118195 m!2573202))

(assert (=> b!2117410 m!2572199))

(declare-fun b!2118199 () Bool)

(declare-fun e!1348383 () Bool)

(declare-fun tp!646838 () Bool)

(assert (=> b!2118199 (= e!1348383 tp!646838)))

(declare-fun b!2118200 () Bool)

(declare-fun tp!646840 () Bool)

(declare-fun tp!646842 () Bool)

(assert (=> b!2118200 (= e!1348383 (and tp!646840 tp!646842))))

(assert (=> b!2117424 (= tp!646643 e!1348383)))

(declare-fun b!2118198 () Bool)

(declare-fun tp!646841 () Bool)

(declare-fun tp!646839 () Bool)

(assert (=> b!2118198 (= e!1348383 (and tp!646841 tp!646839))))

(declare-fun b!2118197 () Bool)

(assert (=> b!2118197 (= e!1348383 tp_is_empty!9479)))

(assert (= (and b!2117424 ((_ is ElementMatch!5645) (regOne!11802 (reg!5974 r!15373)))) b!2118197))

(assert (= (and b!2117424 ((_ is Concat!9947) (regOne!11802 (reg!5974 r!15373)))) b!2118198))

(assert (= (and b!2117424 ((_ is Star!5645) (regOne!11802 (reg!5974 r!15373)))) b!2118199))

(assert (= (and b!2117424 ((_ is Union!5645) (regOne!11802 (reg!5974 r!15373)))) b!2118200))

(declare-fun b!2118203 () Bool)

(declare-fun e!1348384 () Bool)

(declare-fun tp!646843 () Bool)

(assert (=> b!2118203 (= e!1348384 tp!646843)))

(declare-fun b!2118204 () Bool)

(declare-fun tp!646845 () Bool)

(declare-fun tp!646847 () Bool)

(assert (=> b!2118204 (= e!1348384 (and tp!646845 tp!646847))))

(assert (=> b!2117424 (= tp!646641 e!1348384)))

(declare-fun b!2118202 () Bool)

(declare-fun tp!646846 () Bool)

(declare-fun tp!646844 () Bool)

(assert (=> b!2118202 (= e!1348384 (and tp!646846 tp!646844))))

(declare-fun b!2118201 () Bool)

(assert (=> b!2118201 (= e!1348384 tp_is_empty!9479)))

(assert (= (and b!2117424 ((_ is ElementMatch!5645) (regTwo!11802 (reg!5974 r!15373)))) b!2118201))

(assert (= (and b!2117424 ((_ is Concat!9947) (regTwo!11802 (reg!5974 r!15373)))) b!2118202))

(assert (= (and b!2117424 ((_ is Star!5645) (regTwo!11802 (reg!5974 r!15373)))) b!2118203))

(assert (= (and b!2117424 ((_ is Union!5645) (regTwo!11802 (reg!5974 r!15373)))) b!2118204))

(declare-fun b!2118205 () Bool)

(declare-fun e!1348385 () Bool)

(declare-fun tp!646848 () Bool)

(declare-fun tp!646849 () Bool)

(assert (=> b!2118205 (= e!1348385 (and tp!646848 tp!646849))))

(assert (=> b!2117542 (= tp!646762 e!1348385)))

(assert (= (and b!2117542 ((_ is Cons!23596) (exprs!1715 setElem!14400))) b!2118205))

(declare-fun b!2118208 () Bool)

(declare-fun e!1348386 () Bool)

(declare-fun tp!646850 () Bool)

(assert (=> b!2118208 (= e!1348386 tp!646850)))

(declare-fun b!2118209 () Bool)

(declare-fun tp!646852 () Bool)

(declare-fun tp!646854 () Bool)

(assert (=> b!2118209 (= e!1348386 (and tp!646852 tp!646854))))

(assert (=> b!2117477 (= tp!646693 e!1348386)))

(declare-fun b!2118207 () Bool)

(declare-fun tp!646853 () Bool)

(declare-fun tp!646851 () Bool)

(assert (=> b!2118207 (= e!1348386 (and tp!646853 tp!646851))))

(declare-fun b!2118206 () Bool)

(assert (=> b!2118206 (= e!1348386 tp_is_empty!9479)))

(assert (= (and b!2117477 ((_ is ElementMatch!5645) (_1!13440 (_1!13441 (h!28998 mapValue!11570))))) b!2118206))

(assert (= (and b!2117477 ((_ is Concat!9947) (_1!13440 (_1!13441 (h!28998 mapValue!11570))))) b!2118207))

(assert (= (and b!2117477 ((_ is Star!5645) (_1!13440 (_1!13441 (h!28998 mapValue!11570))))) b!2118208))

(assert (= (and b!2117477 ((_ is Union!5645) (_1!13440 (_1!13441 (h!28998 mapValue!11570))))) b!2118209))

(declare-fun e!1348388 () Bool)

(assert (=> b!2117477 (= tp!646696 e!1348388)))

(declare-fun setRes!14420 () Bool)

(declare-fun e!1348387 () Bool)

(declare-fun tp!646856 () Bool)

(declare-fun setNonEmpty!14420 () Bool)

(declare-fun setElem!14420 () Context!2430)

(assert (=> setNonEmpty!14420 (= setRes!14420 (and tp!646856 (inv!31182 setElem!14420) e!1348387))))

(declare-fun setRest!14420 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14420 (= (_2!13441 (h!28998 (t!196190 mapValue!11570))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14420 true) setRest!14420))))

(declare-fun tp!646858 () Bool)

(declare-fun tp!646855 () Bool)

(declare-fun e!1348389 () Bool)

(declare-fun b!2118210 () Bool)

(assert (=> b!2118210 (= e!1348388 (and tp!646855 (inv!31182 (_2!13440 (_1!13441 (h!28998 (t!196190 mapValue!11570))))) e!1348389 tp_is_empty!9479 setRes!14420 tp!646858))))

(declare-fun condSetEmpty!14420 () Bool)

(assert (=> b!2118210 (= condSetEmpty!14420 (= (_2!13441 (h!28998 (t!196190 mapValue!11570))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14420 () Bool)

(assert (=> setIsEmpty!14420 setRes!14420))

(declare-fun b!2118211 () Bool)

(declare-fun tp!646857 () Bool)

(assert (=> b!2118211 (= e!1348387 tp!646857)))

(declare-fun b!2118212 () Bool)

(declare-fun tp!646859 () Bool)

(assert (=> b!2118212 (= e!1348389 tp!646859)))

(assert (= b!2118210 b!2118212))

(assert (= (and b!2118210 condSetEmpty!14420) setIsEmpty!14420))

(assert (= (and b!2118210 (not condSetEmpty!14420)) setNonEmpty!14420))

(assert (= setNonEmpty!14420 b!2118211))

(assert (= (and b!2117477 ((_ is Cons!23597) (t!196190 mapValue!11570))) b!2118210))

(declare-fun m!2573204 () Bool)

(assert (=> setNonEmpty!14420 m!2573204))

(declare-fun m!2573206 () Bool)

(assert (=> b!2118210 m!2573206))

(declare-fun e!1348390 () Bool)

(assert (=> b!2117242 e!1348390))

(declare-fun setIsEmpty!14421 () Bool)

(declare-fun setRes!14421 () Bool)

(assert (=> setIsEmpty!14421 setRes!14421))

(declare-fun setNonEmpty!14421 () Bool)

(assert (=> setNonEmpty!14421 (= setRes!14421 true)))

(declare-fun setElem!14421 () Context!2430)

(declare-fun setRest!14421 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14421 (= (z!5693 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793988))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14421 true) setRest!14421))))

(declare-fun b!2118214 () Bool)

(declare-fun e!1348391 () Bool)

(assert (=> b!2118214 (= e!1348391 setRes!14421)))

(declare-fun condSetEmpty!14421 () Bool)

(assert (=> b!2118214 (= condSetEmpty!14421 (= (z!5693 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793988))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118213 () Bool)

(assert (=> b!2118213 (= e!1348390 e!1348391)))

(assert (= (and b!2118214 condSetEmpty!14421) setIsEmpty!14421))

(assert (= (and b!2118214 (not condSetEmpty!14421)) setNonEmpty!14421))

(assert (= b!2118213 b!2118214))

(assert (= (and b!2117242 ((_ is Cons!23600) (t!196193 (_2!13444 (_1!13445 lt!793988))))) b!2118213))

(declare-fun condSetEmpty!14422 () Bool)

(assert (=> setNonEmpty!14332 (= condSetEmpty!14422 (= setRest!14332 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14422 () Bool)

(assert (=> setNonEmpty!14332 setRes!14422))

(declare-fun setIsEmpty!14422 () Bool)

(assert (=> setIsEmpty!14422 setRes!14422))

(declare-fun setNonEmpty!14422 () Bool)

(assert (=> setNonEmpty!14422 (= setRes!14422 true)))

(declare-fun setElem!14422 () Context!2430)

(declare-fun setRest!14422 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14422 (= setRest!14332 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14422 true) setRest!14422))))

(assert (= (and setNonEmpty!14332 condSetEmpty!14422) setIsEmpty!14422))

(assert (= (and setNonEmpty!14332 (not condSetEmpty!14422)) setNonEmpty!14422))

(declare-fun b!2118217 () Bool)

(declare-fun e!1348392 () Bool)

(declare-fun tp!646860 () Bool)

(assert (=> b!2118217 (= e!1348392 tp!646860)))

(declare-fun b!2118218 () Bool)

(declare-fun tp!646862 () Bool)

(declare-fun tp!646864 () Bool)

(assert (=> b!2118218 (= e!1348392 (and tp!646862 tp!646864))))

(assert (=> b!2117491 (= tp!646714 e!1348392)))

(declare-fun b!2118216 () Bool)

(declare-fun tp!646863 () Bool)

(declare-fun tp!646861 () Bool)

(assert (=> b!2118216 (= e!1348392 (and tp!646863 tp!646861))))

(declare-fun b!2118215 () Bool)

(assert (=> b!2118215 (= e!1348392 tp_is_empty!9479)))

(assert (= (and b!2117491 ((_ is ElementMatch!5645) (regOne!11802 (regOne!11802 r!15373)))) b!2118215))

(assert (= (and b!2117491 ((_ is Concat!9947) (regOne!11802 (regOne!11802 r!15373)))) b!2118216))

(assert (= (and b!2117491 ((_ is Star!5645) (regOne!11802 (regOne!11802 r!15373)))) b!2118217))

(assert (= (and b!2117491 ((_ is Union!5645) (regOne!11802 (regOne!11802 r!15373)))) b!2118218))

(declare-fun b!2118221 () Bool)

(declare-fun e!1348393 () Bool)

(declare-fun tp!646865 () Bool)

(assert (=> b!2118221 (= e!1348393 tp!646865)))

(declare-fun b!2118222 () Bool)

(declare-fun tp!646867 () Bool)

(declare-fun tp!646869 () Bool)

(assert (=> b!2118222 (= e!1348393 (and tp!646867 tp!646869))))

(assert (=> b!2117491 (= tp!646712 e!1348393)))

(declare-fun b!2118220 () Bool)

(declare-fun tp!646868 () Bool)

(declare-fun tp!646866 () Bool)

(assert (=> b!2118220 (= e!1348393 (and tp!646868 tp!646866))))

(declare-fun b!2118219 () Bool)

(assert (=> b!2118219 (= e!1348393 tp_is_empty!9479)))

(assert (= (and b!2117491 ((_ is ElementMatch!5645) (regTwo!11802 (regOne!11802 r!15373)))) b!2118219))

(assert (= (and b!2117491 ((_ is Concat!9947) (regTwo!11802 (regOne!11802 r!15373)))) b!2118220))

(assert (= (and b!2117491 ((_ is Star!5645) (regTwo!11802 (regOne!11802 r!15373)))) b!2118221))

(assert (= (and b!2117491 ((_ is Union!5645) (regTwo!11802 (regOne!11802 r!15373)))) b!2118222))

(declare-fun condSetEmpty!14423 () Bool)

(assert (=> setNonEmpty!14392 (= condSetEmpty!14423 (= setRest!14391 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14423 () Bool)

(assert (=> setNonEmpty!14392 setRes!14423))

(declare-fun setIsEmpty!14423 () Bool)

(assert (=> setIsEmpty!14423 setRes!14423))

(declare-fun setNonEmpty!14423 () Bool)

(assert (=> setNonEmpty!14423 (= setRes!14423 true)))

(declare-fun setElem!14423 () Context!2430)

(declare-fun setRest!14423 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14423 (= setRest!14391 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14423 true) setRest!14423))))

(assert (= (and setNonEmpty!14392 condSetEmpty!14423) setIsEmpty!14423))

(assert (= (and setNonEmpty!14392 (not condSetEmpty!14423)) setNonEmpty!14423))

(declare-fun condSetEmpty!14424 () Bool)

(assert (=> setNonEmpty!14356 (= condSetEmpty!14424 (= setRest!14356 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14424 () Bool)

(assert (=> setNonEmpty!14356 (= tp!646651 setRes!14424)))

(declare-fun setIsEmpty!14424 () Bool)

(assert (=> setIsEmpty!14424 setRes!14424))

(declare-fun setNonEmpty!14424 () Bool)

(declare-fun e!1348394 () Bool)

(declare-fun tp!646870 () Bool)

(declare-fun setElem!14424 () Context!2430)

(assert (=> setNonEmpty!14424 (= setRes!14424 (and tp!646870 (inv!31182 setElem!14424) e!1348394))))

(declare-fun setRest!14424 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14424 (= setRest!14356 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14424 true) setRest!14424))))

(declare-fun b!2118223 () Bool)

(declare-fun tp!646871 () Bool)

(assert (=> b!2118223 (= e!1348394 tp!646871)))

(assert (= (and setNonEmpty!14356 condSetEmpty!14424) setIsEmpty!14424))

(assert (= (and setNonEmpty!14356 (not condSetEmpty!14424)) setNonEmpty!14424))

(assert (= setNonEmpty!14424 b!2118223))

(declare-fun m!2573208 () Bool)

(assert (=> setNonEmpty!14424 m!2573208))

(declare-fun b!2118226 () Bool)

(declare-fun e!1348395 () Bool)

(declare-fun tp!646872 () Bool)

(assert (=> b!2118226 (= e!1348395 tp!646872)))

(declare-fun b!2118227 () Bool)

(declare-fun tp!646874 () Bool)

(declare-fun tp!646876 () Bool)

(assert (=> b!2118227 (= e!1348395 (and tp!646874 tp!646876))))

(assert (=> b!2117485 (= tp!646706 e!1348395)))

(declare-fun b!2118225 () Bool)

(declare-fun tp!646875 () Bool)

(declare-fun tp!646873 () Bool)

(assert (=> b!2118225 (= e!1348395 (and tp!646875 tp!646873))))

(declare-fun b!2118224 () Bool)

(assert (=> b!2118224 (= e!1348395 tp_is_empty!9479)))

(assert (= (and b!2117485 ((_ is ElementMatch!5645) (regOne!11802 (regTwo!11803 r!15373)))) b!2118224))

(assert (= (and b!2117485 ((_ is Concat!9947) (regOne!11802 (regTwo!11803 r!15373)))) b!2118225))

(assert (= (and b!2117485 ((_ is Star!5645) (regOne!11802 (regTwo!11803 r!15373)))) b!2118226))

(assert (= (and b!2117485 ((_ is Union!5645) (regOne!11802 (regTwo!11803 r!15373)))) b!2118227))

(declare-fun b!2118230 () Bool)

(declare-fun e!1348396 () Bool)

(declare-fun tp!646877 () Bool)

(assert (=> b!2118230 (= e!1348396 tp!646877)))

(declare-fun b!2118231 () Bool)

(declare-fun tp!646879 () Bool)

(declare-fun tp!646881 () Bool)

(assert (=> b!2118231 (= e!1348396 (and tp!646879 tp!646881))))

(assert (=> b!2117485 (= tp!646704 e!1348396)))

(declare-fun b!2118229 () Bool)

(declare-fun tp!646880 () Bool)

(declare-fun tp!646878 () Bool)

(assert (=> b!2118229 (= e!1348396 (and tp!646880 tp!646878))))

(declare-fun b!2118228 () Bool)

(assert (=> b!2118228 (= e!1348396 tp_is_empty!9479)))

(assert (= (and b!2117485 ((_ is ElementMatch!5645) (regTwo!11802 (regTwo!11803 r!15373)))) b!2118228))

(assert (= (and b!2117485 ((_ is Concat!9947) (regTwo!11802 (regTwo!11803 r!15373)))) b!2118229))

(assert (= (and b!2117485 ((_ is Star!5645) (regTwo!11802 (regTwo!11803 r!15373)))) b!2118230))

(assert (= (and b!2117485 ((_ is Union!5645) (regTwo!11802 (regTwo!11803 r!15373)))) b!2118231))

(declare-fun b!2118232 () Bool)

(declare-fun e!1348397 () Bool)

(declare-fun tp!646882 () Bool)

(declare-fun tp!646883 () Bool)

(assert (=> b!2118232 (= e!1348397 (and tp!646882 tp!646883))))

(assert (=> b!2117392 (= tp!646613 e!1348397)))

(assert (= (and b!2117392 ((_ is Cons!23596) (exprs!1715 setElem!14349))) b!2118232))

(declare-fun b!2118233 () Bool)

(declare-fun e!1348398 () Bool)

(declare-fun setRes!14425 () Bool)

(assert (=> b!2118233 (= e!1348398 setRes!14425)))

(declare-fun condSetEmpty!14425 () Bool)

(assert (=> b!2118233 (= condSetEmpty!14425 (= (_2!13443 (h!29000 mapDefault!11577)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14425 () Bool)

(assert (=> setIsEmpty!14425 setRes!14425))

(declare-fun setNonEmpty!14425 () Bool)

(assert (=> setNonEmpty!14425 (= setRes!14425 true)))

(declare-fun setElem!14425 () Context!2430)

(declare-fun setRest!14425 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14425 (= (_2!13443 (h!29000 mapDefault!11577)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14425 true) setRest!14425))))

(assert (=> b!2117155 e!1348398))

(assert (= (and b!2118233 condSetEmpty!14425) setIsEmpty!14425))

(assert (= (and b!2118233 (not condSetEmpty!14425)) setNonEmpty!14425))

(assert (= (and b!2117155 ((_ is Cons!23599) mapDefault!11577)) b!2118233))

(declare-fun b!2118234 () Bool)

(declare-fun e!1348399 () Bool)

(declare-fun setRes!14426 () Bool)

(assert (=> b!2118234 (= e!1348399 setRes!14426)))

(declare-fun condSetEmpty!14426 () Bool)

(assert (=> b!2118234 (= condSetEmpty!14426 (= (_2!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793984))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14426 () Bool)

(assert (=> setIsEmpty!14426 setRes!14426))

(declare-fun setNonEmpty!14426 () Bool)

(assert (=> setNonEmpty!14426 (= setRes!14426 true)))

(declare-fun setElem!14426 () Context!2430)

(declare-fun setRest!14426 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14426 (= (_2!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793984))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14426 true) setRest!14426))))

(assert (=> b!2117216 e!1348399))

(assert (= (and b!2118234 condSetEmpty!14426) setIsEmpty!14426))

(assert (= (and b!2118234 (not condSetEmpty!14426)) setNonEmpty!14426))

(assert (= (and b!2117216 ((_ is Cons!23597) (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793984))))))))) b!2118234))

(declare-fun b!2118235 () Bool)

(declare-fun e!1348400 () Bool)

(declare-fun setRes!14427 () Bool)

(assert (=> b!2118235 (= e!1348400 setRes!14427)))

(declare-fun condSetEmpty!14427 () Bool)

(assert (=> b!2118235 (= condSetEmpty!14427 (= (_2!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793984))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14427 () Bool)

(assert (=> setIsEmpty!14427 setRes!14427))

(declare-fun setNonEmpty!14427 () Bool)

(assert (=> setNonEmpty!14427 (= setRes!14427 true)))

(declare-fun setElem!14427 () Context!2430)

(declare-fun setRest!14427 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14427 (= (_2!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793984))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14427 true) setRest!14427))))

(assert (=> b!2117216 e!1348400))

(assert (= (and b!2118235 condSetEmpty!14427) setIsEmpty!14427))

(assert (= (and b!2118235 (not condSetEmpty!14427)) setNonEmpty!14427))

(assert (= (and b!2117216 ((_ is Cons!23597) (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793984))))))))) b!2118235))

(declare-fun setIsEmpty!14428 () Bool)

(declare-fun setRes!14428 () Bool)

(assert (=> setIsEmpty!14428 setRes!14428))

(declare-fun b!2118236 () Bool)

(declare-fun e!1348405 () Bool)

(declare-fun tp!646890 () Bool)

(assert (=> b!2118236 (= e!1348405 tp!646890)))

(declare-fun b!2118237 () Bool)

(declare-fun e!1348401 () Bool)

(declare-fun tp!646889 () Bool)

(assert (=> b!2118237 (= e!1348401 tp!646889)))

(declare-fun b!2118238 () Bool)

(declare-fun e!1348402 () Bool)

(declare-fun tp!646892 () Bool)

(assert (=> b!2118238 (= e!1348402 tp!646892)))

(declare-fun mapNonEmpty!11605 () Bool)

(declare-fun mapRes!11605 () Bool)

(declare-fun tp!646887 () Bool)

(declare-fun e!1348403 () Bool)

(assert (=> mapNonEmpty!11605 (= mapRes!11605 (and tp!646887 e!1348403))))

(declare-fun mapRest!11605 () (Array (_ BitVec 32) List!23683))

(declare-fun mapValue!11605 () List!23683)

(declare-fun mapKey!11605 () (_ BitVec 32))

(assert (=> mapNonEmpty!11605 (= mapRest!11585 (store mapRest!11605 mapKey!11605 mapValue!11605))))

(declare-fun setIsEmpty!14429 () Bool)

(declare-fun setRes!14429 () Bool)

(assert (=> setIsEmpty!14429 setRes!14429))

(declare-fun tp!646891 () Bool)

(declare-fun b!2118240 () Bool)

(assert (=> b!2118240 (= e!1348403 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 mapValue!11605)))) e!1348401 tp_is_empty!9479 setRes!14428 tp!646891))))

(declare-fun condSetEmpty!14429 () Bool)

(assert (=> b!2118240 (= condSetEmpty!14429 (= (_2!13443 (h!29000 mapValue!11605)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setNonEmpty!14428 () Bool)

(declare-fun tp!646884 () Bool)

(declare-fun setElem!14428 () Context!2430)

(assert (=> setNonEmpty!14428 (= setRes!14428 (and tp!646884 (inv!31182 setElem!14428) e!1348402))))

(declare-fun setRest!14428 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14428 (= (_2!13443 (h!29000 mapValue!11605)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14428 true) setRest!14428))))

(declare-fun mapIsEmpty!11605 () Bool)

(assert (=> mapIsEmpty!11605 mapRes!11605))

(declare-fun tp!646885 () Bool)

(declare-fun mapDefault!11605 () List!23683)

(declare-fun e!1348406 () Bool)

(declare-fun b!2118239 () Bool)

(assert (=> b!2118239 (= e!1348406 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 mapDefault!11605)))) e!1348405 tp_is_empty!9479 setRes!14429 tp!646885))))

(declare-fun condSetEmpty!14428 () Bool)

(assert (=> b!2118239 (= condSetEmpty!14428 (= (_2!13443 (h!29000 mapDefault!11605)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun condMapEmpty!11605 () Bool)

(assert (=> mapNonEmpty!11585 (= condMapEmpty!11605 (= mapRest!11585 ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11605)))))

(assert (=> mapNonEmpty!11585 (= tp!646583 (and e!1348406 mapRes!11605))))

(declare-fun b!2118241 () Bool)

(declare-fun e!1348404 () Bool)

(declare-fun tp!646886 () Bool)

(assert (=> b!2118241 (= e!1348404 tp!646886)))

(declare-fun setElem!14429 () Context!2430)

(declare-fun setNonEmpty!14429 () Bool)

(declare-fun tp!646888 () Bool)

(assert (=> setNonEmpty!14429 (= setRes!14429 (and tp!646888 (inv!31182 setElem!14429) e!1348404))))

(declare-fun setRest!14429 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14429 (= (_2!13443 (h!29000 mapDefault!11605)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14429 true) setRest!14429))))

(assert (= (and mapNonEmpty!11585 condMapEmpty!11605) mapIsEmpty!11605))

(assert (= (and mapNonEmpty!11585 (not condMapEmpty!11605)) mapNonEmpty!11605))

(assert (= b!2118240 b!2118237))

(assert (= (and b!2118240 condSetEmpty!14429) setIsEmpty!14428))

(assert (= (and b!2118240 (not condSetEmpty!14429)) setNonEmpty!14428))

(assert (= setNonEmpty!14428 b!2118238))

(assert (= (and mapNonEmpty!11605 ((_ is Cons!23599) mapValue!11605)) b!2118240))

(assert (= b!2118239 b!2118236))

(assert (= (and b!2118239 condSetEmpty!14428) setIsEmpty!14429))

(assert (= (and b!2118239 (not condSetEmpty!14428)) setNonEmpty!14429))

(assert (= setNonEmpty!14429 b!2118241))

(assert (= (and mapNonEmpty!11585 ((_ is Cons!23599) mapDefault!11605)) b!2118239))

(declare-fun m!2573210 () Bool)

(assert (=> setNonEmpty!14429 m!2573210))

(declare-fun m!2573212 () Bool)

(assert (=> mapNonEmpty!11605 m!2573212))

(declare-fun m!2573214 () Bool)

(assert (=> b!2118239 m!2573214))

(declare-fun m!2573216 () Bool)

(assert (=> b!2118240 m!2573216))

(declare-fun m!2573218 () Bool)

(assert (=> setNonEmpty!14428 m!2573218))

(declare-fun tp!646895 () Bool)

(declare-fun setElem!14430 () Context!2430)

(declare-fun setNonEmpty!14430 () Bool)

(declare-fun e!1348410 () Bool)

(declare-fun setRes!14430 () Bool)

(assert (=> setNonEmpty!14430 (= setRes!14430 (and tp!646895 (inv!31182 setElem!14430) e!1348410))))

(declare-fun mapDefault!11606 () List!23681)

(declare-fun setRest!14431 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14430 (= (_2!13441 (h!28998 mapDefault!11606)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14430 true) setRest!14431))))

(declare-fun condMapEmpty!11606 () Bool)

(assert (=> mapNonEmpty!11591 (= condMapEmpty!11606 (= mapRest!11591 ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11606)))))

(declare-fun e!1348412 () Bool)

(declare-fun mapRes!11606 () Bool)

(assert (=> mapNonEmpty!11591 (= tp!646691 (and e!1348412 mapRes!11606))))

(declare-fun setIsEmpty!14430 () Bool)

(assert (=> setIsEmpty!14430 setRes!14430))

(declare-fun b!2118242 () Bool)

(declare-fun e!1348411 () Bool)

(declare-fun tp!646894 () Bool)

(assert (=> b!2118242 (= e!1348411 tp!646894)))

(declare-fun b!2118243 () Bool)

(declare-fun tp!646898 () Bool)

(declare-fun tp!646896 () Bool)

(assert (=> b!2118243 (= e!1348412 (and tp!646896 (inv!31182 (_2!13440 (_1!13441 (h!28998 mapDefault!11606)))) e!1348411 tp_is_empty!9479 setRes!14430 tp!646898))))

(declare-fun condSetEmpty!14430 () Bool)

(assert (=> b!2118243 (= condSetEmpty!14430 (= (_2!13441 (h!28998 mapDefault!11606)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun mapNonEmpty!11606 () Bool)

(declare-fun tp!646902 () Bool)

(declare-fun e!1348407 () Bool)

(assert (=> mapNonEmpty!11606 (= mapRes!11606 (and tp!646902 e!1348407))))

(declare-fun mapValue!11606 () List!23681)

(declare-fun mapKey!11606 () (_ BitVec 32))

(declare-fun mapRest!11606 () (Array (_ BitVec 32) List!23681))

(assert (=> mapNonEmpty!11606 (= mapRest!11591 (store mapRest!11606 mapKey!11606 mapValue!11606))))

(declare-fun setIsEmpty!14431 () Bool)

(declare-fun setRes!14431 () Bool)

(assert (=> setIsEmpty!14431 setRes!14431))

(declare-fun b!2118244 () Bool)

(declare-fun e!1348409 () Bool)

(declare-fun tp!646899 () Bool)

(assert (=> b!2118244 (= e!1348409 tp!646899)))

(declare-fun b!2118245 () Bool)

(declare-fun e!1348408 () Bool)

(declare-fun tp!646903 () Bool)

(assert (=> b!2118245 (= e!1348408 tp!646903)))

(declare-fun mapIsEmpty!11606 () Bool)

(assert (=> mapIsEmpty!11606 mapRes!11606))

(declare-fun b!2118246 () Bool)

(declare-fun tp!646901 () Bool)

(assert (=> b!2118246 (= e!1348410 tp!646901)))

(declare-fun setElem!14431 () Context!2430)

(declare-fun tp!646897 () Bool)

(declare-fun setNonEmpty!14431 () Bool)

(assert (=> setNonEmpty!14431 (= setRes!14431 (and tp!646897 (inv!31182 setElem!14431) e!1348408))))

(declare-fun setRest!14430 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14431 (= (_2!13441 (h!28998 mapValue!11606)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14431 true) setRest!14430))))

(declare-fun b!2118247 () Bool)

(declare-fun tp!646900 () Bool)

(declare-fun tp!646893 () Bool)

(assert (=> b!2118247 (= e!1348407 (and tp!646900 (inv!31182 (_2!13440 (_1!13441 (h!28998 mapValue!11606)))) e!1348409 tp_is_empty!9479 setRes!14431 tp!646893))))

(declare-fun condSetEmpty!14431 () Bool)

(assert (=> b!2118247 (= condSetEmpty!14431 (= (_2!13441 (h!28998 mapValue!11606)) ((as const (Array Context!2430 Bool)) false)))))

(assert (= (and mapNonEmpty!11591 condMapEmpty!11606) mapIsEmpty!11606))

(assert (= (and mapNonEmpty!11591 (not condMapEmpty!11606)) mapNonEmpty!11606))

(assert (= b!2118247 b!2118244))

(assert (= (and b!2118247 condSetEmpty!14431) setIsEmpty!14431))

(assert (= (and b!2118247 (not condSetEmpty!14431)) setNonEmpty!14431))

(assert (= setNonEmpty!14431 b!2118245))

(assert (= (and mapNonEmpty!11606 ((_ is Cons!23597) mapValue!11606)) b!2118247))

(assert (= b!2118243 b!2118242))

(assert (= (and b!2118243 condSetEmpty!14430) setIsEmpty!14430))

(assert (= (and b!2118243 (not condSetEmpty!14430)) setNonEmpty!14430))

(assert (= setNonEmpty!14430 b!2118246))

(assert (= (and mapNonEmpty!11591 ((_ is Cons!23597) mapDefault!11606)) b!2118243))

(declare-fun m!2573220 () Bool)

(assert (=> setNonEmpty!14430 m!2573220))

(declare-fun m!2573222 () Bool)

(assert (=> setNonEmpty!14431 m!2573222))

(declare-fun m!2573224 () Bool)

(assert (=> b!2118243 m!2573224))

(declare-fun m!2573226 () Bool)

(assert (=> b!2118247 m!2573226))

(declare-fun m!2573228 () Bool)

(assert (=> mapNonEmpty!11606 m!2573228))

(declare-fun condSetEmpty!14432 () Bool)

(assert (=> setNonEmpty!14385 (= condSetEmpty!14432 (= setRest!14384 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14432 () Bool)

(assert (=> setNonEmpty!14385 (= tp!646749 setRes!14432)))

(declare-fun setIsEmpty!14432 () Bool)

(assert (=> setIsEmpty!14432 setRes!14432))

(declare-fun setNonEmpty!14432 () Bool)

(declare-fun tp!646904 () Bool)

(declare-fun setElem!14432 () Context!2430)

(declare-fun e!1348413 () Bool)

(assert (=> setNonEmpty!14432 (= setRes!14432 (and tp!646904 (inv!31182 setElem!14432) e!1348413))))

(declare-fun setRest!14432 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14432 (= setRest!14384 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14432 true) setRest!14432))))

(declare-fun b!2118248 () Bool)

(declare-fun tp!646905 () Bool)

(assert (=> b!2118248 (= e!1348413 tp!646905)))

(assert (= (and setNonEmpty!14385 condSetEmpty!14432) setIsEmpty!14432))

(assert (= (and setNonEmpty!14385 (not condSetEmpty!14432)) setNonEmpty!14432))

(assert (= setNonEmpty!14432 b!2118248))

(declare-fun m!2573230 () Bool)

(assert (=> setNonEmpty!14432 m!2573230))

(declare-fun condSetEmpty!14433 () Bool)

(assert (=> setNonEmpty!14346 (= condSetEmpty!14433 (= setRest!14346 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14433 () Bool)

(assert (=> setNonEmpty!14346 setRes!14433))

(declare-fun setIsEmpty!14433 () Bool)

(assert (=> setIsEmpty!14433 setRes!14433))

(declare-fun setNonEmpty!14433 () Bool)

(assert (=> setNonEmpty!14433 (= setRes!14433 true)))

(declare-fun setElem!14433 () Context!2430)

(declare-fun setRest!14433 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14433 (= setRest!14346 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14433 true) setRest!14433))))

(assert (= (and setNonEmpty!14346 condSetEmpty!14433) setIsEmpty!14433))

(assert (= (and setNonEmpty!14346 (not condSetEmpty!14433)) setNonEmpty!14433))

(declare-fun b!2118249 () Bool)

(declare-fun e!1348414 () Bool)

(declare-fun setRes!14434 () Bool)

(assert (=> b!2118249 (= e!1348414 setRes!14434)))

(declare-fun condSetEmpty!14434 () Bool)

(assert (=> b!2118249 (= condSetEmpty!14434 (= (_2!13443 (h!29000 (t!196192 mapValue!11588))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14434 () Bool)

(assert (=> setIsEmpty!14434 setRes!14434))

(declare-fun setNonEmpty!14434 () Bool)

(assert (=> setNonEmpty!14434 (= setRes!14434 true)))

(declare-fun setElem!14434 () Context!2430)

(declare-fun setRest!14434 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14434 (= (_2!13443 (h!29000 (t!196192 mapValue!11588))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14434 true) setRest!14434))))

(assert (=> b!2117443 e!1348414))

(assert (= (and b!2118249 condSetEmpty!14434) setIsEmpty!14434))

(assert (= (and b!2118249 (not condSetEmpty!14434)) setNonEmpty!14434))

(assert (= (and b!2117443 ((_ is Cons!23599) (t!196192 mapValue!11588))) b!2118249))

(declare-fun b!2118250 () Bool)

(declare-fun e!1348415 () Bool)

(declare-fun setRes!14435 () Bool)

(assert (=> b!2118250 (= e!1348415 setRes!14435)))

(declare-fun condSetEmpty!14435 () Bool)

(assert (=> b!2118250 (= condSetEmpty!14435 (= (_2!13441 (h!28998 (t!196190 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905)))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14435 () Bool)

(assert (=> setIsEmpty!14435 setRes!14435))

(declare-fun setNonEmpty!14435 () Bool)

(assert (=> setNonEmpty!14435 (= setRes!14435 true)))

(declare-fun setElem!14435 () Context!2430)

(declare-fun setRest!14435 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14435 (= (_2!13441 (h!28998 (t!196190 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905)))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14435 true) setRest!14435))))

(assert (=> b!2117505 e!1348415))

(assert (= (and b!2118250 condSetEmpty!14435) setIsEmpty!14435))

(assert (= (and b!2118250 (not condSetEmpty!14435)) setNonEmpty!14435))

(assert (= (and b!2117505 ((_ is Cons!23597) (t!196190 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905)))))))))) b!2118250))

(declare-fun b!2118251 () Bool)

(declare-fun e!1348416 () Bool)

(declare-fun tp!646906 () Bool)

(declare-fun tp!646907 () Bool)

(assert (=> b!2118251 (= e!1348416 (and tp!646906 tp!646907))))

(assert (=> b!2117498 (= tp!646721 e!1348416)))

(assert (= (and b!2117498 ((_ is Cons!23596) (exprs!1715 setElem!14376))) b!2118251))

(declare-fun b!2118252 () Bool)

(declare-fun e!1348419 () Bool)

(declare-fun tp!646908 () Bool)

(assert (=> b!2118252 (= e!1348419 tp!646908)))

(declare-fun e!1348417 () Bool)

(declare-fun e!1348418 () Bool)

(declare-fun b!2118253 () Bool)

(declare-fun setRes!14436 () Bool)

(declare-fun tp!646911 () Bool)

(assert (=> b!2118253 (= e!1348417 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 (t!196192 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))))))) e!1348418 tp_is_empty!9479 setRes!14436 tp!646911))))

(declare-fun condSetEmpty!14436 () Bool)

(assert (=> b!2118253 (= condSetEmpty!14436 (= (_2!13443 (h!29000 (t!196192 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118254 () Bool)

(declare-fun tp!646909 () Bool)

(assert (=> b!2118254 (= e!1348418 tp!646909)))

(declare-fun setNonEmpty!14436 () Bool)

(declare-fun tp!646910 () Bool)

(declare-fun setElem!14436 () Context!2430)

(assert (=> setNonEmpty!14436 (= setRes!14436 (and tp!646910 (inv!31182 setElem!14436) e!1348419))))

(declare-fun setRest!14436 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14436 (= (_2!13443 (h!29000 (t!196192 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14436 true) setRest!14436))))

(assert (=> b!2117502 (= tp!646728 e!1348417)))

(declare-fun setIsEmpty!14436 () Bool)

(assert (=> setIsEmpty!14436 setRes!14436))

(assert (= b!2118253 b!2118254))

(assert (= (and b!2118253 condSetEmpty!14436) setIsEmpty!14436))

(assert (= (and b!2118253 (not condSetEmpty!14436)) setNonEmpty!14436))

(assert (= setNonEmpty!14436 b!2118252))

(assert (= (and b!2117502 ((_ is Cons!23599) (t!196192 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110))))))))) b!2118253))

(declare-fun m!2573232 () Bool)

(assert (=> b!2118253 m!2573232))

(declare-fun m!2573234 () Bool)

(assert (=> setNonEmpty!14436 m!2573234))

(declare-fun b!2118255 () Bool)

(declare-fun e!1348420 () Bool)

(declare-fun tp!646912 () Bool)

(declare-fun tp!646913 () Bool)

(assert (=> b!2118255 (= e!1348420 (and tp!646912 tp!646913))))

(assert (=> b!2117489 (= tp!646710 e!1348420)))

(assert (= (and b!2117489 ((_ is Cons!23596) (exprs!1715 setElem!14375))) b!2118255))

(declare-fun b!2118258 () Bool)

(declare-fun e!1348421 () Bool)

(declare-fun tp!646914 () Bool)

(assert (=> b!2118258 (= e!1348421 tp!646914)))

(declare-fun b!2118259 () Bool)

(declare-fun tp!646916 () Bool)

(declare-fun tp!646918 () Bool)

(assert (=> b!2118259 (= e!1348421 (and tp!646916 tp!646918))))

(assert (=> b!2117496 (= tp!646716 e!1348421)))

(declare-fun b!2118257 () Bool)

(declare-fun tp!646917 () Bool)

(declare-fun tp!646915 () Bool)

(assert (=> b!2118257 (= e!1348421 (and tp!646917 tp!646915))))

(declare-fun b!2118256 () Bool)

(assert (=> b!2118256 (= e!1348421 tp_is_empty!9479)))

(assert (= (and b!2117496 ((_ is ElementMatch!5645) (reg!5974 (regTwo!11802 r!15373)))) b!2118256))

(assert (= (and b!2117496 ((_ is Concat!9947) (reg!5974 (regTwo!11802 r!15373)))) b!2118257))

(assert (= (and b!2117496 ((_ is Star!5645) (reg!5974 (regTwo!11802 r!15373)))) b!2118258))

(assert (= (and b!2117496 ((_ is Union!5645) (reg!5974 (regTwo!11802 r!15373)))) b!2118259))

(declare-fun b!2118260 () Bool)

(declare-fun e!1348422 () Bool)

(declare-fun tp!646919 () Bool)

(declare-fun tp!646920 () Bool)

(assert (=> b!2118260 (= e!1348422 (and tp!646919 tp!646920))))

(assert (=> b!2117536 (= tp!646756 e!1348422)))

(assert (= (and b!2117536 ((_ is Cons!23596) (exprs!1715 setElem!14396))) b!2118260))

(declare-fun condSetEmpty!14437 () Bool)

(assert (=> setNonEmpty!14393 (= condSetEmpty!14437 (= setRest!14393 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14437 () Bool)

(assert (=> setNonEmpty!14393 setRes!14437))

(declare-fun setIsEmpty!14437 () Bool)

(assert (=> setIsEmpty!14437 setRes!14437))

(declare-fun setNonEmpty!14437 () Bool)

(assert (=> setNonEmpty!14437 (= setRes!14437 true)))

(declare-fun setElem!14437 () Context!2430)

(declare-fun setRest!14437 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14437 (= setRest!14393 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14437 true) setRest!14437))))

(assert (= (and setNonEmpty!14393 condSetEmpty!14437) setIsEmpty!14437))

(assert (= (and setNonEmpty!14393 (not condSetEmpty!14437)) setNonEmpty!14437))

(declare-fun condSetEmpty!14438 () Bool)

(assert (=> setNonEmpty!14339 (= condSetEmpty!14438 (= setRest!14339 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14438 () Bool)

(assert (=> setNonEmpty!14339 (= tp!646580 setRes!14438)))

(declare-fun setIsEmpty!14438 () Bool)

(assert (=> setIsEmpty!14438 setRes!14438))

(declare-fun setNonEmpty!14438 () Bool)

(declare-fun e!1348423 () Bool)

(declare-fun setElem!14438 () Context!2430)

(declare-fun tp!646921 () Bool)

(assert (=> setNonEmpty!14438 (= setRes!14438 (and tp!646921 (inv!31182 setElem!14438) e!1348423))))

(declare-fun setRest!14438 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14438 (= setRest!14339 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14438 true) setRest!14438))))

(declare-fun b!2118261 () Bool)

(declare-fun tp!646922 () Bool)

(assert (=> b!2118261 (= e!1348423 tp!646922)))

(assert (= (and setNonEmpty!14339 condSetEmpty!14438) setIsEmpty!14438))

(assert (= (and setNonEmpty!14339 (not condSetEmpty!14438)) setNonEmpty!14438))

(assert (= setNonEmpty!14438 b!2118261))

(declare-fun m!2573236 () Bool)

(assert (=> setNonEmpty!14438 m!2573236))

(declare-fun b!2118262 () Bool)

(declare-fun e!1348424 () Bool)

(declare-fun tp!646923 () Bool)

(declare-fun tp!646924 () Bool)

(assert (=> b!2118262 (= e!1348424 (and tp!646923 tp!646924))))

(assert (=> b!2117375 (= tp!646597 e!1348424)))

(assert (= (and b!2117375 ((_ is Cons!23596) (exprs!1715 setElem!14343))) b!2118262))

(declare-fun b!2118263 () Bool)

(declare-fun e!1348425 () Bool)

(declare-fun setRes!14439 () Bool)

(assert (=> b!2118263 (= e!1348425 setRes!14439)))

(declare-fun condSetEmpty!14439 () Bool)

(assert (=> b!2118263 (= condSetEmpty!14439 (= (_2!13441 (h!28998 mapDefault!11578)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14439 () Bool)

(assert (=> setIsEmpty!14439 setRes!14439))

(declare-fun setNonEmpty!14439 () Bool)

(assert (=> setNonEmpty!14439 (= setRes!14439 true)))

(declare-fun setElem!14439 () Context!2430)

(declare-fun setRest!14439 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14439 (= (_2!13441 (h!28998 mapDefault!11578)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14439 true) setRest!14439))))

(assert (=> b!2117147 e!1348425))

(assert (= (and b!2118263 condSetEmpty!14439) setIsEmpty!14439))

(assert (= (and b!2118263 (not condSetEmpty!14439)) setNonEmpty!14439))

(assert (= (and b!2117147 ((_ is Cons!23597) mapDefault!11578)) b!2118263))

(declare-fun b!2118264 () Bool)

(declare-fun e!1348426 () Bool)

(declare-fun setRes!14441 () Bool)

(assert (=> b!2118264 (= e!1348426 setRes!14441)))

(declare-fun condSetEmpty!14441 () Bool)

(declare-fun mapDefault!11607 () List!23681)

(assert (=> b!2118264 (= condSetEmpty!14441 (= (_2!13441 (h!28998 mapDefault!11607)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118265 () Bool)

(declare-fun e!1348427 () Bool)

(declare-fun setRes!14440 () Bool)

(assert (=> b!2118265 (= e!1348427 setRes!14440)))

(declare-fun condSetEmpty!14440 () Bool)

(declare-fun mapValue!11607 () List!23681)

(assert (=> b!2118265 (= condSetEmpty!14440 (= (_2!13441 (h!28998 mapValue!11607)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14440 () Bool)

(assert (=> setIsEmpty!14440 setRes!14440))

(declare-fun mapNonEmpty!11607 () Bool)

(declare-fun mapRes!11607 () Bool)

(assert (=> mapNonEmpty!11607 (= mapRes!11607 e!1348427)))

(declare-fun mapKey!11607 () (_ BitVec 32))

(declare-fun mapRest!11607 () (Array (_ BitVec 32) List!23681))

(assert (=> mapNonEmpty!11607 (= mapRest!11581 (store mapRest!11607 mapKey!11607 mapValue!11607))))

(declare-fun setNonEmpty!14440 () Bool)

(assert (=> setNonEmpty!14440 (= setRes!14441 true)))

(declare-fun setElem!14441 () Context!2430)

(declare-fun setRest!14441 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14440 (= (_2!13441 (h!28998 mapDefault!11607)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14441 true) setRest!14441))))

(declare-fun mapIsEmpty!11607 () Bool)

(assert (=> mapIsEmpty!11607 mapRes!11607))

(declare-fun setNonEmpty!14441 () Bool)

(assert (=> setNonEmpty!14441 (= setRes!14440 true)))

(declare-fun setElem!14440 () Context!2430)

(declare-fun setRest!14440 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14441 (= (_2!13441 (h!28998 mapValue!11607)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14440 true) setRest!14440))))

(declare-fun setIsEmpty!14441 () Bool)

(assert (=> setIsEmpty!14441 setRes!14441))

(declare-fun condMapEmpty!11607 () Bool)

(assert (=> mapNonEmpty!11581 (= condMapEmpty!11607 (= mapRest!11581 ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11607)))))

(assert (=> mapNonEmpty!11581 (and e!1348426 mapRes!11607)))

(assert (= (and mapNonEmpty!11581 condMapEmpty!11607) mapIsEmpty!11607))

(assert (= (and mapNonEmpty!11581 (not condMapEmpty!11607)) mapNonEmpty!11607))

(assert (= (and b!2118265 condSetEmpty!14440) setIsEmpty!14440))

(assert (= (and b!2118265 (not condSetEmpty!14440)) setNonEmpty!14441))

(assert (= (and mapNonEmpty!11607 ((_ is Cons!23597) mapValue!11607)) b!2118265))

(assert (= (and b!2118264 condSetEmpty!14441) setIsEmpty!14441))

(assert (= (and b!2118264 (not condSetEmpty!14441)) setNonEmpty!14440))

(assert (= (and mapNonEmpty!11581 ((_ is Cons!23597) mapDefault!11607)) b!2118264))

(declare-fun m!2573238 () Bool)

(assert (=> mapNonEmpty!11607 m!2573238))

(declare-fun b!2118266 () Bool)

(declare-fun e!1348428 () Bool)

(declare-fun setRes!14442 () Bool)

(assert (=> b!2118266 (= e!1348428 setRes!14442)))

(declare-fun condSetEmpty!14442 () Bool)

(assert (=> b!2118266 (= condSetEmpty!14442 (= (_2!13441 (h!28998 mapValue!11581)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14442 () Bool)

(assert (=> setIsEmpty!14442 setRes!14442))

(declare-fun setNonEmpty!14442 () Bool)

(assert (=> setNonEmpty!14442 (= setRes!14442 true)))

(declare-fun setElem!14442 () Context!2430)

(declare-fun setRest!14442 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14442 (= (_2!13441 (h!28998 mapValue!11581)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14442 true) setRest!14442))))

(assert (=> mapNonEmpty!11581 e!1348428))

(assert (= (and b!2118266 condSetEmpty!14442) setIsEmpty!14442))

(assert (= (and b!2118266 (not condSetEmpty!14442)) setNonEmpty!14442))

(assert (= (and mapNonEmpty!11581 ((_ is Cons!23597) mapValue!11581)) b!2118266))

(declare-fun setNonEmpty!14443 () Bool)

(declare-fun setRes!14443 () Bool)

(assert (=> setNonEmpty!14443 (= setRes!14443 true)))

(declare-fun mapDefault!11608 () List!23683)

(declare-fun setElem!14444 () Context!2430)

(declare-fun setRest!14444 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14443 (= (_2!13443 (h!29000 mapDefault!11608)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14444 true) setRest!14444))))

(declare-fun setNonEmpty!14444 () Bool)

(declare-fun setRes!14444 () Bool)

(assert (=> setNonEmpty!14444 (= setRes!14444 true)))

(declare-fun mapValue!11608 () List!23683)

(declare-fun setElem!14443 () Context!2430)

(declare-fun setRest!14443 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14444 (= (_2!13443 (h!29000 mapValue!11608)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14443 true) setRest!14443))))

(declare-fun b!2118267 () Bool)

(declare-fun e!1348430 () Bool)

(assert (=> b!2118267 (= e!1348430 setRes!14444)))

(declare-fun condSetEmpty!14444 () Bool)

(assert (=> b!2118267 (= condSetEmpty!14444 (= (_2!13443 (h!29000 mapValue!11608)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118268 () Bool)

(declare-fun e!1348429 () Bool)

(assert (=> b!2118268 (= e!1348429 setRes!14443)))

(declare-fun condSetEmpty!14443 () Bool)

(assert (=> b!2118268 (= condSetEmpty!14443 (= (_2!13443 (h!29000 mapDefault!11608)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14444 () Bool)

(assert (=> setIsEmpty!14444 setRes!14443))

(declare-fun mapNonEmpty!11608 () Bool)

(declare-fun mapRes!11608 () Bool)

(assert (=> mapNonEmpty!11608 (= mapRes!11608 e!1348430)))

(declare-fun mapRest!11608 () (Array (_ BitVec 32) List!23683))

(declare-fun mapKey!11608 () (_ BitVec 32))

(assert (=> mapNonEmpty!11608 (= mapRest!11578 (store mapRest!11608 mapKey!11608 mapValue!11608))))

(declare-fun mapIsEmpty!11608 () Bool)

(assert (=> mapIsEmpty!11608 mapRes!11608))

(declare-fun setIsEmpty!14443 () Bool)

(assert (=> setIsEmpty!14443 setRes!14444))

(declare-fun condMapEmpty!11608 () Bool)

(assert (=> mapNonEmpty!11578 (= condMapEmpty!11608 (= mapRest!11578 ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11608)))))

(assert (=> mapNonEmpty!11578 (and e!1348429 mapRes!11608)))

(assert (= (and mapNonEmpty!11578 condMapEmpty!11608) mapIsEmpty!11608))

(assert (= (and mapNonEmpty!11578 (not condMapEmpty!11608)) mapNonEmpty!11608))

(assert (= (and b!2118267 condSetEmpty!14444) setIsEmpty!14443))

(assert (= (and b!2118267 (not condSetEmpty!14444)) setNonEmpty!14444))

(assert (= (and mapNonEmpty!11608 ((_ is Cons!23599) mapValue!11608)) b!2118267))

(assert (= (and b!2118268 condSetEmpty!14443) setIsEmpty!14444))

(assert (= (and b!2118268 (not condSetEmpty!14443)) setNonEmpty!14443))

(assert (= (and mapNonEmpty!11578 ((_ is Cons!23599) mapDefault!11608)) b!2118268))

(declare-fun m!2573240 () Bool)

(assert (=> mapNonEmpty!11608 m!2573240))

(declare-fun b!2118269 () Bool)

(declare-fun e!1348431 () Bool)

(declare-fun setRes!14445 () Bool)

(assert (=> b!2118269 (= e!1348431 setRes!14445)))

(declare-fun condSetEmpty!14445 () Bool)

(assert (=> b!2118269 (= condSetEmpty!14445 (= (_2!13443 (h!29000 mapValue!11578)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14445 () Bool)

(assert (=> setIsEmpty!14445 setRes!14445))

(declare-fun setNonEmpty!14445 () Bool)

(assert (=> setNonEmpty!14445 (= setRes!14445 true)))

(declare-fun setElem!14445 () Context!2430)

(declare-fun setRest!14445 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14445 (= (_2!13443 (h!29000 mapValue!11578)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14445 true) setRest!14445))))

(assert (=> mapNonEmpty!11578 e!1348431))

(assert (= (and b!2118269 condSetEmpty!14445) setIsEmpty!14445))

(assert (= (and b!2118269 (not condSetEmpty!14445)) setNonEmpty!14445))

(assert (= (and mapNonEmpty!11578 ((_ is Cons!23599) mapValue!11578)) b!2118269))

(declare-fun setNonEmpty!14446 () Bool)

(declare-fun setRes!14446 () Bool)

(assert (=> setNonEmpty!14446 (= setRes!14446 true)))

(declare-fun mapDefault!11609 () List!23683)

(declare-fun setElem!14447 () Context!2430)

(declare-fun setRest!14447 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14446 (= (_2!13443 (h!29000 mapDefault!11609)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14447 true) setRest!14447))))

(declare-fun setNonEmpty!14447 () Bool)

(declare-fun setRes!14447 () Bool)

(assert (=> setNonEmpty!14447 (= setRes!14447 true)))

(declare-fun mapValue!11609 () List!23683)

(declare-fun setElem!14446 () Context!2430)

(declare-fun setRest!14446 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14447 (= (_2!13443 (h!29000 mapValue!11609)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14446 true) setRest!14446))))

(declare-fun b!2118270 () Bool)

(declare-fun e!1348433 () Bool)

(assert (=> b!2118270 (= e!1348433 setRes!14447)))

(declare-fun condSetEmpty!14447 () Bool)

(assert (=> b!2118270 (= condSetEmpty!14447 (= (_2!13443 (h!29000 mapValue!11609)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118271 () Bool)

(declare-fun e!1348432 () Bool)

(assert (=> b!2118271 (= e!1348432 setRes!14446)))

(declare-fun condSetEmpty!14446 () Bool)

(assert (=> b!2118271 (= condSetEmpty!14446 (= (_2!13443 (h!29000 mapDefault!11609)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14447 () Bool)

(assert (=> setIsEmpty!14447 setRes!14446))

(declare-fun mapNonEmpty!11609 () Bool)

(declare-fun mapRes!11609 () Bool)

(assert (=> mapNonEmpty!11609 (= mapRes!11609 e!1348433)))

(declare-fun mapRest!11609 () (Array (_ BitVec 32) List!23683))

(declare-fun mapKey!11609 () (_ BitVec 32))

(assert (=> mapNonEmpty!11609 (= mapRest!11588 (store mapRest!11609 mapKey!11609 mapValue!11609))))

(declare-fun mapIsEmpty!11609 () Bool)

(assert (=> mapIsEmpty!11609 mapRes!11609))

(declare-fun setIsEmpty!14446 () Bool)

(assert (=> setIsEmpty!14446 setRes!14447))

(declare-fun condMapEmpty!11609 () Bool)

(assert (=> mapNonEmpty!11588 (= condMapEmpty!11609 (= mapRest!11588 ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11609)))))

(assert (=> mapNonEmpty!11588 (and e!1348432 mapRes!11609)))

(assert (= (and mapNonEmpty!11588 condMapEmpty!11609) mapIsEmpty!11609))

(assert (= (and mapNonEmpty!11588 (not condMapEmpty!11609)) mapNonEmpty!11609))

(assert (= (and b!2118270 condSetEmpty!14447) setIsEmpty!14446))

(assert (= (and b!2118270 (not condSetEmpty!14447)) setNonEmpty!14447))

(assert (= (and mapNonEmpty!11609 ((_ is Cons!23599) mapValue!11609)) b!2118270))

(assert (= (and b!2118271 condSetEmpty!14446) setIsEmpty!14447))

(assert (= (and b!2118271 (not condSetEmpty!14446)) setNonEmpty!14446))

(assert (= (and mapNonEmpty!11588 ((_ is Cons!23599) mapDefault!11609)) b!2118271))

(declare-fun m!2573242 () Bool)

(assert (=> mapNonEmpty!11609 m!2573242))

(declare-fun b!2118274 () Bool)

(declare-fun e!1348434 () Bool)

(declare-fun tp!646925 () Bool)

(assert (=> b!2118274 (= e!1348434 tp!646925)))

(declare-fun b!2118275 () Bool)

(declare-fun tp!646927 () Bool)

(declare-fun tp!646929 () Bool)

(assert (=> b!2118275 (= e!1348434 (and tp!646927 tp!646929))))

(assert (=> b!2117481 (= tp!646701 e!1348434)))

(declare-fun b!2118273 () Bool)

(declare-fun tp!646928 () Bool)

(declare-fun tp!646926 () Bool)

(assert (=> b!2118273 (= e!1348434 (and tp!646928 tp!646926))))

(declare-fun b!2118272 () Bool)

(assert (=> b!2118272 (= e!1348434 tp_is_empty!9479)))

(assert (= (and b!2117481 ((_ is ElementMatch!5645) (regOne!11802 (regOne!11803 r!15373)))) b!2118272))

(assert (= (and b!2117481 ((_ is Concat!9947) (regOne!11802 (regOne!11803 r!15373)))) b!2118273))

(assert (= (and b!2117481 ((_ is Star!5645) (regOne!11802 (regOne!11803 r!15373)))) b!2118274))

(assert (= (and b!2117481 ((_ is Union!5645) (regOne!11802 (regOne!11803 r!15373)))) b!2118275))

(declare-fun b!2118278 () Bool)

(declare-fun e!1348435 () Bool)

(declare-fun tp!646930 () Bool)

(assert (=> b!2118278 (= e!1348435 tp!646930)))

(declare-fun b!2118279 () Bool)

(declare-fun tp!646932 () Bool)

(declare-fun tp!646934 () Bool)

(assert (=> b!2118279 (= e!1348435 (and tp!646932 tp!646934))))

(assert (=> b!2117481 (= tp!646699 e!1348435)))

(declare-fun b!2118277 () Bool)

(declare-fun tp!646933 () Bool)

(declare-fun tp!646931 () Bool)

(assert (=> b!2118277 (= e!1348435 (and tp!646933 tp!646931))))

(declare-fun b!2118276 () Bool)

(assert (=> b!2118276 (= e!1348435 tp_is_empty!9479)))

(assert (= (and b!2117481 ((_ is ElementMatch!5645) (regTwo!11802 (regOne!11803 r!15373)))) b!2118276))

(assert (= (and b!2117481 ((_ is Concat!9947) (regTwo!11802 (regOne!11803 r!15373)))) b!2118277))

(assert (= (and b!2117481 ((_ is Star!5645) (regTwo!11802 (regOne!11803 r!15373)))) b!2118278))

(assert (= (and b!2117481 ((_ is Union!5645) (regTwo!11802 (regOne!11803 r!15373)))) b!2118279))

(declare-fun condSetEmpty!14448 () Bool)

(assert (=> setNonEmpty!14334 (= condSetEmpty!14448 (= setRest!14334 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14448 () Bool)

(assert (=> setNonEmpty!14334 setRes!14448))

(declare-fun setIsEmpty!14448 () Bool)

(assert (=> setIsEmpty!14448 setRes!14448))

(declare-fun setNonEmpty!14448 () Bool)

(assert (=> setNonEmpty!14448 (= setRes!14448 true)))

(declare-fun setElem!14448 () Context!2430)

(declare-fun setRest!14448 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14448 (= setRest!14334 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14448 true) setRest!14448))))

(assert (= (and setNonEmpty!14334 condSetEmpty!14448) setIsEmpty!14448))

(assert (= (and setNonEmpty!14334 (not condSetEmpty!14448)) setNonEmpty!14448))

(declare-fun b!2118280 () Bool)

(declare-fun e!1348436 () Bool)

(declare-fun setRes!14449 () Bool)

(assert (=> b!2118280 (= e!1348436 setRes!14449)))

(declare-fun condSetEmpty!14449 () Bool)

(assert (=> b!2118280 (= condSetEmpty!14449 (= (_2!13443 (h!29000 (t!196192 mapValue!11576))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14449 () Bool)

(assert (=> setIsEmpty!14449 setRes!14449))

(declare-fun setNonEmpty!14449 () Bool)

(assert (=> setNonEmpty!14449 (= setRes!14449 true)))

(declare-fun setElem!14449 () Context!2430)

(declare-fun setRest!14449 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14449 (= (_2!13443 (h!29000 (t!196192 mapValue!11576))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14449 true) setRest!14449))))

(assert (=> b!2117445 e!1348436))

(assert (= (and b!2118280 condSetEmpty!14449) setIsEmpty!14449))

(assert (= (and b!2118280 (not condSetEmpty!14449)) setNonEmpty!14449))

(assert (= (and b!2117445 ((_ is Cons!23599) (t!196192 mapValue!11576))) b!2118280))

(declare-fun b!2118281 () Bool)

(declare-fun e!1348437 () Bool)

(declare-fun tp!646935 () Bool)

(declare-fun tp!646936 () Bool)

(assert (=> b!2118281 (= e!1348437 (and tp!646935 tp!646936))))

(assert (=> b!2117479 (= tp!646697 e!1348437)))

(assert (= (and b!2117479 ((_ is Cons!23596) (exprs!1715 (_2!13440 (_1!13441 (h!28998 mapValue!11570)))))) b!2118281))

(declare-fun b!2118282 () Bool)

(declare-fun e!1348438 () Bool)

(declare-fun setRes!14450 () Bool)

(assert (=> b!2118282 (= e!1348438 setRes!14450)))

(declare-fun condSetEmpty!14450 () Bool)

(assert (=> b!2118282 (= condSetEmpty!14450 (= (_2!13441 (h!28998 (t!196190 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905)))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14450 () Bool)

(assert (=> setIsEmpty!14450 setRes!14450))

(declare-fun setNonEmpty!14450 () Bool)

(assert (=> setNonEmpty!14450 (= setRes!14450 true)))

(declare-fun setElem!14450 () Context!2430)

(declare-fun setRest!14450 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14450 (= (_2!13441 (h!28998 (t!196190 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905)))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14450 true) setRest!14450))))

(assert (=> b!2117504 e!1348438))

(assert (= (and b!2118282 condSetEmpty!14450) setIsEmpty!14450))

(assert (= (and b!2118282 (not condSetEmpty!14450)) setNonEmpty!14450))

(assert (= (and b!2117504 ((_ is Cons!23597) (t!196190 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793905)))))))))) b!2118282))

(declare-fun b!2118283 () Bool)

(declare-fun e!1348439 () Bool)

(declare-fun setRes!14451 () Bool)

(assert (=> b!2118283 (= e!1348439 setRes!14451)))

(declare-fun condSetEmpty!14451 () Bool)

(assert (=> b!2118283 (= condSetEmpty!14451 (= (_2!13441 (h!28998 (t!196190 mapValue!11597))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14451 () Bool)

(assert (=> setIsEmpty!14451 setRes!14451))

(declare-fun setNonEmpty!14451 () Bool)

(assert (=> setNonEmpty!14451 (= setRes!14451 true)))

(declare-fun setElem!14451 () Context!2430)

(declare-fun setRest!14451 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14451 (= (_2!13441 (h!28998 (t!196190 mapValue!11597))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14451 true) setRest!14451))))

(assert (=> b!2117529 e!1348439))

(assert (= (and b!2118283 condSetEmpty!14451) setIsEmpty!14451))

(assert (= (and b!2118283 (not condSetEmpty!14451)) setNonEmpty!14451))

(assert (= (and b!2117529 ((_ is Cons!23597) (t!196190 mapValue!11597))) b!2118283))

(declare-fun b!2118298 () Bool)

(declare-fun e!1348452 () Bool)

(declare-fun e!1348457 () Bool)

(assert (=> b!2118298 (= e!1348452 e!1348457)))

(declare-fun b!2118299 () Bool)

(declare-fun e!1348453 () Bool)

(assert (=> b!2118299 (= e!1348453 e!1348452)))

(declare-fun b!2118300 () Bool)

(declare-fun e!1348456 () Bool)

(declare-fun lt!794372 () MutLongMap!2397)

(assert (=> b!2118300 (= e!1348456 ((_ is LongMap!2397) lt!794372))))

(assert (=> b!2118300 (= lt!794372 (v!28123 (underlying!4989 (cache!2691 (_2!13445 (furthestNullablePositionStackMem!5 lt!793898 lt!793907 totalInput!1306 lt!793906 e!1347636 Nil!23600 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))))))

(declare-fun b!2118301 () Bool)

(declare-fun e!1348455 () Bool)

(assert (=> b!2118301 (= e!1348455 e!1348456)))

(declare-fun e!1348454 () Bool)

(assert (=> d!642682 (= true (and e!1348454 e!1348453))))

(declare-fun b!2118302 () Bool)

(declare-fun lt!794373 () MutLongMap!2396)

(assert (=> b!2118302 (= e!1348457 ((_ is LongMap!2396) lt!794373))))

(assert (=> b!2118302 (= lt!794373 (v!28124 (underlying!4990 (cache!2692 (_3!1876 (furthestNullablePositionStackMem!5 lt!793898 lt!793907 totalInput!1306 lt!793906 e!1347636 Nil!23600 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))))))

(declare-fun b!2118303 () Bool)

(assert (=> b!2118303 (= e!1348454 e!1348455)))

(assert (= b!2118301 b!2118300))

(assert (= (and b!2118303 ((_ is HashMap!2310) (cache!2691 (_2!13445 (furthestNullablePositionStackMem!5 lt!793898 lt!793907 totalInput!1306 lt!793906 e!1347636 Nil!23600 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))) b!2118301))

(assert (= d!642682 b!2118303))

(assert (= b!2118298 b!2118302))

(assert (= (and b!2118299 ((_ is HashMap!2311) (cache!2692 (_3!1876 (furthestNullablePositionStackMem!5 lt!793898 lt!793907 totalInput!1306 lt!793906 e!1347636 Nil!23600 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))) b!2118298))

(assert (= d!642682 b!2118299))

(declare-fun b!2118304 () Bool)

(declare-fun e!1348458 () Bool)

(declare-fun tp!646937 () Bool)

(declare-fun tp!646938 () Bool)

(assert (=> b!2118304 (= e!1348458 (and tp!646937 tp!646938))))

(assert (=> b!2117436 (= tp!646656 e!1348458)))

(assert (= (and b!2117436 ((_ is Cons!23596) (exprs!1715 setElem!14357))) b!2118304))

(declare-fun b!2118325 () Bool)

(declare-fun e!1348477 () Bool)

(declare-fun lt!794382 () MutLongMap!2396)

(assert (=> b!2118325 (= e!1348477 ((_ is LongMap!2396) lt!794382))))

(assert (=> b!2118325 (= lt!794382 (v!28124 (underlying!4990 (cache!2692 (_3!1878 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 (_2!13450 lt!793903) (_3!1878 lt!793903) (_4!469 lt!793903)))))))))

(declare-fun b!2118326 () Bool)

(declare-fun e!1348478 () Bool)

(declare-fun lt!794380 () MutLongMap!2398)

(assert (=> b!2118326 (= e!1348478 ((_ is LongMap!2398) lt!794380))))

(assert (=> b!2118326 (= lt!794380 (v!28126 (underlying!4992 (cache!2693 (_4!469 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 (_2!13450 lt!793903) (_3!1878 lt!793903) (_4!469 lt!793903)))))))))

(declare-fun b!2118327 () Bool)

(declare-fun e!1348484 () Bool)

(declare-fun e!1348483 () Bool)

(assert (=> b!2118327 (= e!1348484 e!1348483)))

(declare-fun b!2118328 () Bool)

(declare-fun lt!794381 () MutLongMap!2397)

(assert (=> b!2118328 (= e!1348483 ((_ is LongMap!2397) lt!794381))))

(assert (=> b!2118328 (= lt!794381 (v!28123 (underlying!4989 (cache!2691 (_2!13450 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 (_2!13450 lt!793903) (_3!1878 lt!793903) (_4!469 lt!793903)))))))))

(declare-fun b!2118329 () Bool)

(declare-fun e!1348482 () Bool)

(declare-fun e!1348485 () Bool)

(assert (=> b!2118329 (= e!1348482 e!1348485)))

(declare-fun b!2118330 () Bool)

(declare-fun e!1348479 () Bool)

(assert (=> b!2118330 (= e!1348479 e!1348478)))

(declare-fun e!1348481 () Bool)

(declare-fun e!1348480 () Bool)

(assert (=> d!642684 (= true (and e!1348481 e!1348482 e!1348480))))

(declare-fun b!2118331 () Bool)

(assert (=> b!2118331 (= e!1348480 e!1348479)))

(declare-fun b!2118332 () Bool)

(assert (=> b!2118332 (= e!1348485 e!1348477)))

(declare-fun b!2118333 () Bool)

(assert (=> b!2118333 (= e!1348481 e!1348484)))

(assert (= b!2118327 b!2118328))

(assert (= (and b!2118333 ((_ is HashMap!2310) (cache!2691 (_2!13450 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 (_2!13450 lt!793903) (_3!1878 lt!793903) (_4!469 lt!793903)))))) b!2118327))

(assert (= d!642684 b!2118333))

(assert (= b!2118332 b!2118325))

(assert (= (and b!2118329 ((_ is HashMap!2311) (cache!2692 (_3!1878 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 (_2!13450 lt!793903) (_3!1878 lt!793903) (_4!469 lt!793903)))))) b!2118332))

(assert (= d!642684 b!2118329))

(assert (= b!2118330 b!2118326))

(assert (= (and b!2118331 ((_ is HashMap!2312) (cache!2693 (_4!469 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 (_2!13450 lt!793903) (_3!1878 lt!793903) (_4!469 lt!793903)))))) b!2118330))

(assert (= d!642684 b!2118331))

(declare-fun b!2118334 () Bool)

(declare-fun e!1348486 () Bool)

(declare-fun setRes!14453 () Bool)

(assert (=> b!2118334 (= e!1348486 setRes!14453)))

(declare-fun condSetEmpty!14453 () Bool)

(declare-fun mapDefault!11610 () List!23681)

(assert (=> b!2118334 (= condSetEmpty!14453 (= (_2!13441 (h!28998 mapDefault!11610)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118335 () Bool)

(declare-fun e!1348487 () Bool)

(declare-fun setRes!14452 () Bool)

(assert (=> b!2118335 (= e!1348487 setRes!14452)))

(declare-fun condSetEmpty!14452 () Bool)

(declare-fun mapValue!11610 () List!23681)

(assert (=> b!2118335 (= condSetEmpty!14452 (= (_2!13441 (h!28998 mapValue!11610)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14452 () Bool)

(assert (=> setIsEmpty!14452 setRes!14452))

(declare-fun mapNonEmpty!11610 () Bool)

(declare-fun mapRes!11610 () Bool)

(assert (=> mapNonEmpty!11610 (= mapRes!11610 e!1348487)))

(declare-fun mapKey!11610 () (_ BitVec 32))

(declare-fun mapRest!11610 () (Array (_ BitVec 32) List!23681))

(assert (=> mapNonEmpty!11610 (= mapRest!11577 (store mapRest!11610 mapKey!11610 mapValue!11610))))

(declare-fun setNonEmpty!14452 () Bool)

(assert (=> setNonEmpty!14452 (= setRes!14453 true)))

(declare-fun setElem!14453 () Context!2430)

(declare-fun setRest!14453 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14452 (= (_2!13441 (h!28998 mapDefault!11610)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14453 true) setRest!14453))))

(declare-fun mapIsEmpty!11610 () Bool)

(assert (=> mapIsEmpty!11610 mapRes!11610))

(declare-fun setNonEmpty!14453 () Bool)

(assert (=> setNonEmpty!14453 (= setRes!14452 true)))

(declare-fun setElem!14452 () Context!2430)

(declare-fun setRest!14452 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14453 (= (_2!13441 (h!28998 mapValue!11610)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14452 true) setRest!14452))))

(declare-fun setIsEmpty!14453 () Bool)

(assert (=> setIsEmpty!14453 setRes!14453))

(declare-fun condMapEmpty!11610 () Bool)

(assert (=> mapNonEmpty!11577 (= condMapEmpty!11610 (= mapRest!11577 ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11610)))))

(assert (=> mapNonEmpty!11577 (and e!1348486 mapRes!11610)))

(assert (= (and mapNonEmpty!11577 condMapEmpty!11610) mapIsEmpty!11610))

(assert (= (and mapNonEmpty!11577 (not condMapEmpty!11610)) mapNonEmpty!11610))

(assert (= (and b!2118335 condSetEmpty!14452) setIsEmpty!14452))

(assert (= (and b!2118335 (not condSetEmpty!14452)) setNonEmpty!14453))

(assert (= (and mapNonEmpty!11610 ((_ is Cons!23597) mapValue!11610)) b!2118335))

(assert (= (and b!2118334 condSetEmpty!14453) setIsEmpty!14453))

(assert (= (and b!2118334 (not condSetEmpty!14453)) setNonEmpty!14452))

(assert (= (and mapNonEmpty!11577 ((_ is Cons!23597) mapDefault!11610)) b!2118334))

(declare-fun m!2573244 () Bool)

(assert (=> mapNonEmpty!11610 m!2573244))

(declare-fun b!2118336 () Bool)

(declare-fun e!1348488 () Bool)

(declare-fun setRes!14454 () Bool)

(assert (=> b!2118336 (= e!1348488 setRes!14454)))

(declare-fun condSetEmpty!14454 () Bool)

(assert (=> b!2118336 (= condSetEmpty!14454 (= (_2!13441 (h!28998 mapValue!11577)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14454 () Bool)

(assert (=> setIsEmpty!14454 setRes!14454))

(declare-fun setNonEmpty!14454 () Bool)

(assert (=> setNonEmpty!14454 (= setRes!14454 true)))

(declare-fun setElem!14454 () Context!2430)

(declare-fun setRest!14454 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14454 (= (_2!13441 (h!28998 mapValue!11577)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14454 true) setRest!14454))))

(assert (=> mapNonEmpty!11577 e!1348488))

(assert (= (and b!2118336 condSetEmpty!14454) setIsEmpty!14454))

(assert (= (and b!2118336 (not condSetEmpty!14454)) setNonEmpty!14454))

(assert (= (and mapNonEmpty!11577 ((_ is Cons!23597) mapValue!11577)) b!2118336))

(declare-fun b!2118337 () Bool)

(declare-fun e!1348489 () Bool)

(declare-fun setRes!14455 () Bool)

(assert (=> b!2118337 (= e!1348489 setRes!14455)))

(declare-fun condSetEmpty!14455 () Bool)

(assert (=> b!2118337 (= condSetEmpty!14455 (= (_2!13443 (h!29000 mapDefault!11581)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14455 () Bool)

(assert (=> setIsEmpty!14455 setRes!14455))

(declare-fun setNonEmpty!14455 () Bool)

(assert (=> setNonEmpty!14455 (= setRes!14455 true)))

(declare-fun setElem!14455 () Context!2430)

(declare-fun setRest!14455 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14455 (= (_2!13443 (h!29000 mapDefault!11581)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14455 true) setRest!14455))))

(assert (=> b!2117241 e!1348489))

(assert (= (and b!2118337 condSetEmpty!14455) setIsEmpty!14455))

(assert (= (and b!2118337 (not condSetEmpty!14455)) setNonEmpty!14455))

(assert (= (and b!2117241 ((_ is Cons!23599) mapDefault!11581)) b!2118337))

(declare-fun condSetEmpty!14456 () Bool)

(assert (=> setNonEmpty!14374 (= condSetEmpty!14456 (= setRest!14374 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14456 () Bool)

(assert (=> setNonEmpty!14374 (= tp!646694 setRes!14456)))

(declare-fun setIsEmpty!14456 () Bool)

(assert (=> setIsEmpty!14456 setRes!14456))

(declare-fun e!1348490 () Bool)

(declare-fun setElem!14456 () Context!2430)

(declare-fun setNonEmpty!14456 () Bool)

(declare-fun tp!646939 () Bool)

(assert (=> setNonEmpty!14456 (= setRes!14456 (and tp!646939 (inv!31182 setElem!14456) e!1348490))))

(declare-fun setRest!14456 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14456 (= setRest!14374 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14456 true) setRest!14456))))

(declare-fun b!2118338 () Bool)

(declare-fun tp!646940 () Bool)

(assert (=> b!2118338 (= e!1348490 tp!646940)))

(assert (= (and setNonEmpty!14374 condSetEmpty!14456) setIsEmpty!14456))

(assert (= (and setNonEmpty!14374 (not condSetEmpty!14456)) setNonEmpty!14456))

(assert (= setNonEmpty!14456 b!2118338))

(declare-fun m!2573246 () Bool)

(assert (=> setNonEmpty!14456 m!2573246))

(declare-fun b!2118339 () Bool)

(declare-fun e!1348491 () Bool)

(declare-fun setRes!14457 () Bool)

(assert (=> b!2118339 (= e!1348491 setRes!14457)))

(declare-fun condSetEmpty!14457 () Bool)

(assert (=> b!2118339 (= condSetEmpty!14457 (= (_2!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793984))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14457 () Bool)

(assert (=> setIsEmpty!14457 setRes!14457))

(declare-fun setNonEmpty!14457 () Bool)

(assert (=> setNonEmpty!14457 (= setRes!14457 true)))

(declare-fun setElem!14457 () Context!2430)

(declare-fun setRest!14457 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14457 (= (_2!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793984))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14457 true) setRest!14457))))

(assert (=> b!2117228 e!1348491))

(assert (= (and b!2118339 condSetEmpty!14457) setIsEmpty!14457))

(assert (= (and b!2118339 (not condSetEmpty!14457)) setNonEmpty!14457))

(assert (= (and b!2117228 ((_ is Cons!23599) (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793984))))))))) b!2118339))

(declare-fun b!2118340 () Bool)

(declare-fun e!1348492 () Bool)

(declare-fun setRes!14458 () Bool)

(assert (=> b!2118340 (= e!1348492 setRes!14458)))

(declare-fun condSetEmpty!14458 () Bool)

(assert (=> b!2118340 (= condSetEmpty!14458 (= (_2!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793984))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14458 () Bool)

(assert (=> setIsEmpty!14458 setRes!14458))

(declare-fun setNonEmpty!14458 () Bool)

(assert (=> setNonEmpty!14458 (= setRes!14458 true)))

(declare-fun setElem!14458 () Context!2430)

(declare-fun setRest!14458 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14458 (= (_2!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793984))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14458 true) setRest!14458))))

(assert (=> b!2117228 e!1348492))

(assert (= (and b!2118340 condSetEmpty!14458) setIsEmpty!14458))

(assert (= (and b!2118340 (not condSetEmpty!14458)) setNonEmpty!14458))

(assert (= (and b!2117228 ((_ is Cons!23599) (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793984))))))))) b!2118340))

(declare-fun condSetEmpty!14459 () Bool)

(assert (=> setNonEmpty!14372 (= condSetEmpty!14459 (= setRest!14373 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14459 () Bool)

(assert (=> setNonEmpty!14372 (= tp!646684 setRes!14459)))

(declare-fun setIsEmpty!14459 () Bool)

(assert (=> setIsEmpty!14459 setRes!14459))

(declare-fun setElem!14459 () Context!2430)

(declare-fun setNonEmpty!14459 () Bool)

(declare-fun e!1348493 () Bool)

(declare-fun tp!646941 () Bool)

(assert (=> setNonEmpty!14459 (= setRes!14459 (and tp!646941 (inv!31182 setElem!14459) e!1348493))))

(declare-fun setRest!14459 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14459 (= setRest!14373 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14459 true) setRest!14459))))

(declare-fun b!2118341 () Bool)

(declare-fun tp!646942 () Bool)

(assert (=> b!2118341 (= e!1348493 tp!646942)))

(assert (= (and setNonEmpty!14372 condSetEmpty!14459) setIsEmpty!14459))

(assert (= (and setNonEmpty!14372 (not condSetEmpty!14459)) setNonEmpty!14459))

(assert (= setNonEmpty!14459 b!2118341))

(declare-fun m!2573248 () Bool)

(assert (=> setNonEmpty!14459 m!2573248))

(declare-fun tp!646946 () Bool)

(declare-fun setElem!14461 () Context!2430)

(declare-fun setNonEmpty!14460 () Bool)

(declare-fun setRes!14461 () Bool)

(declare-fun e!1348494 () Bool)

(assert (=> setNonEmpty!14460 (= setRes!14461 (and tp!646946 (inv!31182 setElem!14461) e!1348494))))

(declare-fun mapDefault!11611 () List!23685)

(declare-fun setRest!14461 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14460 (= (_1!13447 (_1!13448 (h!29002 mapDefault!11611))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14461 true) setRest!14461))))

(declare-fun mapNonEmpty!11611 () Bool)

(declare-fun mapRes!11611 () Bool)

(declare-fun tp!646947 () Bool)

(declare-fun e!1348497 () Bool)

(assert (=> mapNonEmpty!11611 (= mapRes!11611 (and tp!646947 e!1348497))))

(declare-fun mapKey!11611 () (_ BitVec 32))

(declare-fun mapRest!11611 () (Array (_ BitVec 32) List!23685))

(declare-fun mapValue!11611 () List!23685)

(assert (=> mapNonEmpty!11611 (= mapRest!11594 (store mapRest!11611 mapKey!11611 mapValue!11611))))

(declare-fun b!2118342 () Bool)

(declare-fun e!1348495 () Bool)

(declare-fun tp!646948 () Bool)

(assert (=> b!2118342 (= e!1348495 tp!646948)))

(declare-fun setIsEmpty!14461 () Bool)

(declare-fun setRes!14460 () Bool)

(assert (=> setIsEmpty!14461 setRes!14460))

(declare-fun setNonEmpty!14461 () Bool)

(declare-fun setElem!14460 () Context!2430)

(declare-fun tp!646949 () Bool)

(assert (=> setNonEmpty!14461 (= setRes!14460 (and tp!646949 (inv!31182 setElem!14460) e!1348495))))

(declare-fun setRest!14460 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14461 (= (_1!13447 (_1!13448 (h!29002 mapValue!11611))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14460 true) setRest!14460))))

(declare-fun b!2118343 () Bool)

(declare-fun e!1348496 () Bool)

(declare-fun tp!646944 () Bool)

(assert (=> b!2118343 (= e!1348496 (and setRes!14461 tp!646944))))

(declare-fun condSetEmpty!14461 () Bool)

(assert (=> b!2118343 (= condSetEmpty!14461 (= (_1!13447 (_1!13448 (h!29002 mapDefault!11611))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118344 () Bool)

(declare-fun tp!646945 () Bool)

(assert (=> b!2118344 (= e!1348497 (and setRes!14460 tp!646945))))

(declare-fun condSetEmpty!14460 () Bool)

(assert (=> b!2118344 (= condSetEmpty!14460 (= (_1!13447 (_1!13448 (h!29002 mapValue!11611))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118345 () Bool)

(declare-fun tp!646943 () Bool)

(assert (=> b!2118345 (= e!1348494 tp!646943)))

(declare-fun mapIsEmpty!11611 () Bool)

(assert (=> mapIsEmpty!11611 mapRes!11611))

(declare-fun setIsEmpty!14460 () Bool)

(assert (=> setIsEmpty!14460 setRes!14461))

(declare-fun condMapEmpty!11611 () Bool)

(assert (=> mapNonEmpty!11594 (= condMapEmpty!11611 (= mapRest!11594 ((as const (Array (_ BitVec 32) List!23685)) mapDefault!11611)))))

(assert (=> mapNonEmpty!11594 (= tp!646747 (and e!1348496 mapRes!11611))))

(assert (= (and mapNonEmpty!11594 condMapEmpty!11611) mapIsEmpty!11611))

(assert (= (and mapNonEmpty!11594 (not condMapEmpty!11611)) mapNonEmpty!11611))

(assert (= (and b!2118344 condSetEmpty!14460) setIsEmpty!14461))

(assert (= (and b!2118344 (not condSetEmpty!14460)) setNonEmpty!14461))

(assert (= setNonEmpty!14461 b!2118342))

(assert (= (and mapNonEmpty!11611 ((_ is Cons!23601) mapValue!11611)) b!2118344))

(assert (= (and b!2118343 condSetEmpty!14461) setIsEmpty!14460))

(assert (= (and b!2118343 (not condSetEmpty!14461)) setNonEmpty!14460))

(assert (= setNonEmpty!14460 b!2118345))

(assert (= (and mapNonEmpty!11594 ((_ is Cons!23601) mapDefault!11611)) b!2118343))

(declare-fun m!2573250 () Bool)

(assert (=> setNonEmpty!14460 m!2573250))

(declare-fun m!2573252 () Bool)

(assert (=> mapNonEmpty!11611 m!2573252))

(declare-fun m!2573254 () Bool)

(assert (=> setNonEmpty!14461 m!2573254))

(declare-fun b!2118350 () Bool)

(declare-fun e!1348500 () Bool)

(declare-fun tp!646952 () Bool)

(assert (=> b!2118350 (= e!1348500 (and tp_is_empty!9479 tp!646952))))

(assert (=> b!2117456 (= tp!646657 e!1348500)))

(assert (= (and b!2117456 ((_ is Cons!23598) (innerList!7844 (xs!10726 (c!339387 input!6660))))) b!2118350))

(declare-fun condSetEmpty!14462 () Bool)

(assert (=> setNonEmpty!14395 (= condSetEmpty!14462 (= setRest!14395 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14462 () Bool)

(assert (=> setNonEmpty!14395 setRes!14462))

(declare-fun setIsEmpty!14462 () Bool)

(assert (=> setIsEmpty!14462 setRes!14462))

(declare-fun setNonEmpty!14462 () Bool)

(assert (=> setNonEmpty!14462 (= setRes!14462 true)))

(declare-fun setElem!14462 () Context!2430)

(declare-fun setRest!14462 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14462 (= setRest!14395 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14462 true) setRest!14462))))

(assert (= (and setNonEmpty!14395 condSetEmpty!14462) setIsEmpty!14462))

(assert (= (and setNonEmpty!14395 (not condSetEmpty!14462)) setNonEmpty!14462))

(declare-fun b!2118351 () Bool)

(declare-fun e!1348501 () Bool)

(declare-fun lt!794385 () MutLongMap!2396)

(assert (=> b!2118351 (= e!1348501 ((_ is LongMap!2396) lt!794385))))

(assert (=> b!2118351 (= lt!794385 (v!28124 (underlying!4990 (cache!2692 (_3!1878 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))))))

(declare-fun b!2118352 () Bool)

(declare-fun e!1348502 () Bool)

(declare-fun lt!794383 () MutLongMap!2398)

(assert (=> b!2118352 (= e!1348502 ((_ is LongMap!2398) lt!794383))))

(assert (=> b!2118352 (= lt!794383 (v!28126 (underlying!4992 (cache!2693 (_4!469 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))))))

(declare-fun b!2118353 () Bool)

(declare-fun e!1348508 () Bool)

(declare-fun e!1348507 () Bool)

(assert (=> b!2118353 (= e!1348508 e!1348507)))

(declare-fun b!2118354 () Bool)

(declare-fun lt!794384 () MutLongMap!2397)

(assert (=> b!2118354 (= e!1348507 ((_ is LongMap!2397) lt!794384))))

(assert (=> b!2118354 (= lt!794384 (v!28123 (underlying!4989 (cache!2691 (_2!13450 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))))))

(declare-fun b!2118355 () Bool)

(declare-fun e!1348506 () Bool)

(declare-fun e!1348509 () Bool)

(assert (=> b!2118355 (= e!1348506 e!1348509)))

(declare-fun b!2118356 () Bool)

(declare-fun e!1348503 () Bool)

(assert (=> b!2118356 (= e!1348503 e!1348502)))

(declare-fun e!1348505 () Bool)

(declare-fun e!1348504 () Bool)

(assert (=> d!642672 (= true (and e!1348505 e!1348506 e!1348504))))

(declare-fun b!2118357 () Bool)

(assert (=> b!2118357 (= e!1348504 e!1348503)))

(declare-fun b!2118358 () Bool)

(assert (=> b!2118358 (= e!1348509 e!1348501)))

(declare-fun b!2118359 () Bool)

(assert (=> b!2118359 (= e!1348505 e!1348508)))

(assert (= b!2118353 b!2118354))

(assert (= (and b!2118359 ((_ is HashMap!2310) (cache!2691 (_2!13450 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))) b!2118353))

(assert (= d!642672 b!2118359))

(assert (= b!2118358 b!2118351))

(assert (= (and b!2118355 ((_ is HashMap!2311) (cache!2692 (_3!1878 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))) b!2118358))

(assert (= d!642672 b!2118355))

(assert (= b!2118356 b!2118352))

(assert (= (and b!2118357 ((_ is HashMap!2312) (cache!2693 (_4!469 (findLongestMatchZipperSequenceV3Mem!6 lt!793898 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))) b!2118356))

(assert (= d!642672 b!2118357))

(declare-fun b!2118360 () Bool)

(declare-fun e!1348510 () Bool)

(declare-fun setRes!14463 () Bool)

(assert (=> b!2118360 (= e!1348510 setRes!14463)))

(declare-fun condSetEmpty!14463 () Bool)

(assert (=> b!2118360 (= condSetEmpty!14463 (= (_2!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793929))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14463 () Bool)

(assert (=> setIsEmpty!14463 setRes!14463))

(declare-fun setNonEmpty!14463 () Bool)

(assert (=> setNonEmpty!14463 (= setRes!14463 true)))

(declare-fun setElem!14463 () Context!2430)

(declare-fun setRest!14463 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14463 (= (_2!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793929))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14463 true) setRest!14463))))

(assert (=> b!2117162 e!1348510))

(assert (= (and b!2118360 condSetEmpty!14463) setIsEmpty!14463))

(assert (= (and b!2118360 (not condSetEmpty!14463)) setNonEmpty!14463))

(assert (= (and b!2117162 ((_ is Cons!23599) (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793929))))))))) b!2118360))

(declare-fun b!2118361 () Bool)

(declare-fun e!1348511 () Bool)

(declare-fun setRes!14464 () Bool)

(assert (=> b!2118361 (= e!1348511 setRes!14464)))

(declare-fun condSetEmpty!14464 () Bool)

(assert (=> b!2118361 (= condSetEmpty!14464 (= (_2!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793929))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14464 () Bool)

(assert (=> setIsEmpty!14464 setRes!14464))

(declare-fun setNonEmpty!14464 () Bool)

(assert (=> setNonEmpty!14464 (= setRes!14464 true)))

(declare-fun setElem!14464 () Context!2430)

(declare-fun setRest!14464 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14464 (= (_2!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793929))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14464 true) setRest!14464))))

(assert (=> b!2117162 e!1348511))

(assert (= (and b!2118361 condSetEmpty!14464) setIsEmpty!14464))

(assert (= (and b!2118361 (not condSetEmpty!14464)) setNonEmpty!14464))

(assert (= (and b!2117162 ((_ is Cons!23599) (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793929))))))))) b!2118361))

(declare-fun condSetEmpty!14465 () Bool)

(assert (=> setNonEmpty!14376 (= condSetEmpty!14465 (= setRest!14376 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14465 () Bool)

(assert (=> setNonEmpty!14376 (= tp!646723 setRes!14465)))

(declare-fun setIsEmpty!14465 () Bool)

(assert (=> setIsEmpty!14465 setRes!14465))

(declare-fun setNonEmpty!14465 () Bool)

(declare-fun tp!646953 () Bool)

(declare-fun e!1348512 () Bool)

(declare-fun setElem!14465 () Context!2430)

(assert (=> setNonEmpty!14465 (= setRes!14465 (and tp!646953 (inv!31182 setElem!14465) e!1348512))))

(declare-fun setRest!14465 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14465 (= setRest!14376 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14465 true) setRest!14465))))

(declare-fun b!2118362 () Bool)

(declare-fun tp!646954 () Bool)

(assert (=> b!2118362 (= e!1348512 tp!646954)))

(assert (= (and setNonEmpty!14376 condSetEmpty!14465) setIsEmpty!14465))

(assert (= (and setNonEmpty!14376 (not condSetEmpty!14465)) setNonEmpty!14465))

(assert (= setNonEmpty!14465 b!2118362))

(declare-fun m!2573256 () Bool)

(assert (=> setNonEmpty!14465 m!2573256))

(declare-fun b!2118363 () Bool)

(declare-fun e!1348513 () Bool)

(declare-fun tp!646955 () Bool)

(declare-fun tp!646956 () Bool)

(assert (=> b!2118363 (= e!1348513 (and tp!646955 tp!646956))))

(assert (=> b!2117363 (= tp!646588 e!1348513)))

(assert (= (and b!2117363 ((_ is Cons!23596) (exprs!1715 setElem!14339))) b!2118363))

(declare-fun b!2118366 () Bool)

(declare-fun e!1348514 () Bool)

(declare-fun tp!646957 () Bool)

(assert (=> b!2118366 (= e!1348514 tp!646957)))

(declare-fun b!2118367 () Bool)

(declare-fun tp!646959 () Bool)

(declare-fun tp!646961 () Bool)

(assert (=> b!2118367 (= e!1348514 (and tp!646959 tp!646961))))

(assert (=> b!2117472 (= tp!646685 e!1348514)))

(declare-fun b!2118365 () Bool)

(declare-fun tp!646960 () Bool)

(declare-fun tp!646958 () Bool)

(assert (=> b!2118365 (= e!1348514 (and tp!646960 tp!646958))))

(declare-fun b!2118364 () Bool)

(assert (=> b!2118364 (= e!1348514 tp_is_empty!9479)))

(assert (= (and b!2117472 ((_ is ElementMatch!5645) (_1!13440 (_1!13441 (h!28998 mapDefault!11591))))) b!2118364))

(assert (= (and b!2117472 ((_ is Concat!9947) (_1!13440 (_1!13441 (h!28998 mapDefault!11591))))) b!2118365))

(assert (= (and b!2117472 ((_ is Star!5645) (_1!13440 (_1!13441 (h!28998 mapDefault!11591))))) b!2118366))

(assert (= (and b!2117472 ((_ is Union!5645) (_1!13440 (_1!13441 (h!28998 mapDefault!11591))))) b!2118367))

(declare-fun e!1348516 () Bool)

(assert (=> b!2117472 (= tp!646687 e!1348516)))

(declare-fun e!1348515 () Bool)

(declare-fun tp!646963 () Bool)

(declare-fun setNonEmpty!14466 () Bool)

(declare-fun setRes!14466 () Bool)

(declare-fun setElem!14466 () Context!2430)

(assert (=> setNonEmpty!14466 (= setRes!14466 (and tp!646963 (inv!31182 setElem!14466) e!1348515))))

(declare-fun setRest!14466 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14466 (= (_2!13441 (h!28998 (t!196190 mapDefault!11591))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14466 true) setRest!14466))))

(declare-fun tp!646965 () Bool)

(declare-fun e!1348517 () Bool)

(declare-fun b!2118368 () Bool)

(declare-fun tp!646962 () Bool)

(assert (=> b!2118368 (= e!1348516 (and tp!646962 (inv!31182 (_2!13440 (_1!13441 (h!28998 (t!196190 mapDefault!11591))))) e!1348517 tp_is_empty!9479 setRes!14466 tp!646965))))

(declare-fun condSetEmpty!14466 () Bool)

(assert (=> b!2118368 (= condSetEmpty!14466 (= (_2!13441 (h!28998 (t!196190 mapDefault!11591))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14466 () Bool)

(assert (=> setIsEmpty!14466 setRes!14466))

(declare-fun b!2118369 () Bool)

(declare-fun tp!646964 () Bool)

(assert (=> b!2118369 (= e!1348515 tp!646964)))

(declare-fun b!2118370 () Bool)

(declare-fun tp!646966 () Bool)

(assert (=> b!2118370 (= e!1348517 tp!646966)))

(assert (= b!2118368 b!2118370))

(assert (= (and b!2118368 condSetEmpty!14466) setIsEmpty!14466))

(assert (= (and b!2118368 (not condSetEmpty!14466)) setNonEmpty!14466))

(assert (= setNonEmpty!14466 b!2118369))

(assert (= (and b!2117472 ((_ is Cons!23597) (t!196190 mapDefault!11591))) b!2118368))

(declare-fun m!2573258 () Bool)

(assert (=> setNonEmpty!14466 m!2573258))

(declare-fun m!2573260 () Bool)

(assert (=> b!2118368 m!2573260))

(declare-fun b!2118372 () Bool)

(declare-fun e!1348518 () Bool)

(declare-fun tp!646969 () Bool)

(assert (=> b!2118372 (= e!1348518 tp!646969)))

(declare-fun e!1348519 () Bool)

(assert (=> b!2117520 (= tp!646751 e!1348519)))

(declare-fun setIsEmpty!14467 () Bool)

(declare-fun setRes!14467 () Bool)

(assert (=> setIsEmpty!14467 setRes!14467))

(declare-fun setElem!14467 () Context!2430)

(declare-fun tp!646967 () Bool)

(declare-fun setNonEmpty!14467 () Bool)

(assert (=> setNonEmpty!14467 (= setRes!14467 (and tp!646967 (inv!31182 setElem!14467) e!1348518))))

(declare-fun setRest!14467 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14467 (= (_1!13447 (_1!13448 (h!29002 (t!196194 mapValue!11568)))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14467 true) setRest!14467))))

(declare-fun b!2118371 () Bool)

(declare-fun tp!646968 () Bool)

(assert (=> b!2118371 (= e!1348519 (and setRes!14467 tp!646968))))

(declare-fun condSetEmpty!14467 () Bool)

(assert (=> b!2118371 (= condSetEmpty!14467 (= (_1!13447 (_1!13448 (h!29002 (t!196194 mapValue!11568)))) ((as const (Array Context!2430 Bool)) false)))))

(assert (= (and b!2118371 condSetEmpty!14467) setIsEmpty!14467))

(assert (= (and b!2118371 (not condSetEmpty!14467)) setNonEmpty!14467))

(assert (= setNonEmpty!14467 b!2118372))

(assert (= (and b!2117520 ((_ is Cons!23601) (t!196194 mapValue!11568))) b!2118371))

(declare-fun m!2573262 () Bool)

(assert (=> setNonEmpty!14467 m!2573262))

(declare-fun b!2118373 () Bool)

(declare-fun e!1348520 () Bool)

(declare-fun setRes!14468 () Bool)

(assert (=> b!2118373 (= e!1348520 setRes!14468)))

(declare-fun condSetEmpty!14468 () Bool)

(assert (=> b!2118373 (= condSetEmpty!14468 (= (_2!13441 (h!28998 mapDefault!11582)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14468 () Bool)

(assert (=> setIsEmpty!14468 setRes!14468))

(declare-fun setNonEmpty!14468 () Bool)

(assert (=> setNonEmpty!14468 (= setRes!14468 true)))

(declare-fun setElem!14468 () Context!2430)

(declare-fun setRest!14468 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14468 (= (_2!13441 (h!28998 mapDefault!11582)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14468 true) setRest!14468))))

(assert (=> b!2117233 e!1348520))

(assert (= (and b!2118373 condSetEmpty!14468) setIsEmpty!14468))

(assert (= (and b!2118373 (not condSetEmpty!14468)) setNonEmpty!14468))

(assert (= (and b!2117233 ((_ is Cons!23597) mapDefault!11582)) b!2118373))

(declare-fun condSetEmpty!14469 () Bool)

(assert (=> setNonEmpty!14363 (= condSetEmpty!14469 (= setRest!14362 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14469 () Bool)

(assert (=> setNonEmpty!14363 setRes!14469))

(declare-fun setIsEmpty!14469 () Bool)

(assert (=> setIsEmpty!14469 setRes!14469))

(declare-fun setNonEmpty!14469 () Bool)

(assert (=> setNonEmpty!14469 (= setRes!14469 true)))

(declare-fun setElem!14469 () Context!2430)

(declare-fun setRest!14469 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14469 (= setRest!14362 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14469 true) setRest!14469))))

(assert (= (and setNonEmpty!14363 condSetEmpty!14469) setIsEmpty!14469))

(assert (= (and setNonEmpty!14363 (not condSetEmpty!14469)) setNonEmpty!14469))

(declare-fun b!2118376 () Bool)

(declare-fun e!1348521 () Bool)

(declare-fun tp!646970 () Bool)

(assert (=> b!2118376 (= e!1348521 tp!646970)))

(declare-fun b!2118377 () Bool)

(declare-fun tp!646972 () Bool)

(declare-fun tp!646974 () Bool)

(assert (=> b!2118377 (= e!1348521 (and tp!646972 tp!646974))))

(assert (=> b!2117493 (= tp!646713 e!1348521)))

(declare-fun b!2118375 () Bool)

(declare-fun tp!646973 () Bool)

(declare-fun tp!646971 () Bool)

(assert (=> b!2118375 (= e!1348521 (and tp!646973 tp!646971))))

(declare-fun b!2118374 () Bool)

(assert (=> b!2118374 (= e!1348521 tp_is_empty!9479)))

(assert (= (and b!2117493 ((_ is ElementMatch!5645) (regOne!11803 (regOne!11802 r!15373)))) b!2118374))

(assert (= (and b!2117493 ((_ is Concat!9947) (regOne!11803 (regOne!11802 r!15373)))) b!2118375))

(assert (= (and b!2117493 ((_ is Star!5645) (regOne!11803 (regOne!11802 r!15373)))) b!2118376))

(assert (= (and b!2117493 ((_ is Union!5645) (regOne!11803 (regOne!11802 r!15373)))) b!2118377))

(declare-fun b!2118380 () Bool)

(declare-fun e!1348522 () Bool)

(declare-fun tp!646975 () Bool)

(assert (=> b!2118380 (= e!1348522 tp!646975)))

(declare-fun b!2118381 () Bool)

(declare-fun tp!646977 () Bool)

(declare-fun tp!646979 () Bool)

(assert (=> b!2118381 (= e!1348522 (and tp!646977 tp!646979))))

(assert (=> b!2117493 (= tp!646715 e!1348522)))

(declare-fun b!2118379 () Bool)

(declare-fun tp!646978 () Bool)

(declare-fun tp!646976 () Bool)

(assert (=> b!2118379 (= e!1348522 (and tp!646978 tp!646976))))

(declare-fun b!2118378 () Bool)

(assert (=> b!2118378 (= e!1348522 tp_is_empty!9479)))

(assert (= (and b!2117493 ((_ is ElementMatch!5645) (regTwo!11803 (regOne!11802 r!15373)))) b!2118378))

(assert (= (and b!2117493 ((_ is Concat!9947) (regTwo!11803 (regOne!11802 r!15373)))) b!2118379))

(assert (= (and b!2117493 ((_ is Star!5645) (regTwo!11803 (regOne!11802 r!15373)))) b!2118380))

(assert (= (and b!2117493 ((_ is Union!5645) (regTwo!11803 (regOne!11802 r!15373)))) b!2118381))

(declare-fun setNonEmpty!14470 () Bool)

(declare-fun setRes!14470 () Bool)

(assert (=> setNonEmpty!14470 (= setRes!14470 true)))

(declare-fun mapDefault!11612 () List!23683)

(declare-fun setElem!14471 () Context!2430)

(declare-fun setRest!14471 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14470 (= (_2!13443 (h!29000 mapDefault!11612)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14471 true) setRest!14471))))

(declare-fun setNonEmpty!14471 () Bool)

(declare-fun setRes!14471 () Bool)

(assert (=> setNonEmpty!14471 (= setRes!14471 true)))

(declare-fun mapValue!11612 () List!23683)

(declare-fun setElem!14470 () Context!2430)

(declare-fun setRest!14470 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14471 (= (_2!13443 (h!29000 mapValue!11612)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14470 true) setRest!14470))))

(declare-fun b!2118382 () Bool)

(declare-fun e!1348524 () Bool)

(assert (=> b!2118382 (= e!1348524 setRes!14471)))

(declare-fun condSetEmpty!14471 () Bool)

(assert (=> b!2118382 (= condSetEmpty!14471 (= (_2!13443 (h!29000 mapValue!11612)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118383 () Bool)

(declare-fun e!1348523 () Bool)

(assert (=> b!2118383 (= e!1348523 setRes!14470)))

(declare-fun condSetEmpty!14470 () Bool)

(assert (=> b!2118383 (= condSetEmpty!14470 (= (_2!13443 (h!29000 mapDefault!11612)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14471 () Bool)

(assert (=> setIsEmpty!14471 setRes!14470))

(declare-fun mapNonEmpty!11612 () Bool)

(declare-fun mapRes!11612 () Bool)

(assert (=> mapNonEmpty!11612 (= mapRes!11612 e!1348524)))

(declare-fun mapRest!11612 () (Array (_ BitVec 32) List!23683))

(declare-fun mapKey!11612 () (_ BitVec 32))

(assert (=> mapNonEmpty!11612 (= mapRest!11582 (store mapRest!11612 mapKey!11612 mapValue!11612))))

(declare-fun mapIsEmpty!11612 () Bool)

(assert (=> mapIsEmpty!11612 mapRes!11612))

(declare-fun setIsEmpty!14470 () Bool)

(assert (=> setIsEmpty!14470 setRes!14471))

(declare-fun condMapEmpty!11612 () Bool)

(assert (=> mapNonEmpty!11582 (= condMapEmpty!11612 (= mapRest!11582 ((as const (Array (_ BitVec 32) List!23683)) mapDefault!11612)))))

(assert (=> mapNonEmpty!11582 (and e!1348523 mapRes!11612)))

(assert (= (and mapNonEmpty!11582 condMapEmpty!11612) mapIsEmpty!11612))

(assert (= (and mapNonEmpty!11582 (not condMapEmpty!11612)) mapNonEmpty!11612))

(assert (= (and b!2118382 condSetEmpty!14471) setIsEmpty!14470))

(assert (= (and b!2118382 (not condSetEmpty!14471)) setNonEmpty!14471))

(assert (= (and mapNonEmpty!11612 ((_ is Cons!23599) mapValue!11612)) b!2118382))

(assert (= (and b!2118383 condSetEmpty!14470) setIsEmpty!14471))

(assert (= (and b!2118383 (not condSetEmpty!14470)) setNonEmpty!14470))

(assert (= (and mapNonEmpty!11582 ((_ is Cons!23599) mapDefault!11612)) b!2118383))

(declare-fun m!2573264 () Bool)

(assert (=> mapNonEmpty!11612 m!2573264))

(declare-fun b!2118384 () Bool)

(declare-fun e!1348525 () Bool)

(declare-fun setRes!14472 () Bool)

(assert (=> b!2118384 (= e!1348525 setRes!14472)))

(declare-fun condSetEmpty!14472 () Bool)

(assert (=> b!2118384 (= condSetEmpty!14472 (= (_2!13443 (h!29000 mapValue!11582)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14472 () Bool)

(assert (=> setIsEmpty!14472 setRes!14472))

(declare-fun setNonEmpty!14472 () Bool)

(assert (=> setNonEmpty!14472 (= setRes!14472 true)))

(declare-fun setElem!14472 () Context!2430)

(declare-fun setRest!14472 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14472 (= (_2!13443 (h!29000 mapValue!11582)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14472 true) setRest!14472))))

(assert (=> mapNonEmpty!11582 e!1348525))

(assert (= (and b!2118384 condSetEmpty!14472) setIsEmpty!14472))

(assert (= (and b!2118384 (not condSetEmpty!14472)) setNonEmpty!14472))

(assert (= (and mapNonEmpty!11582 ((_ is Cons!23599) mapValue!11582)) b!2118384))

(declare-fun b!2118387 () Bool)

(declare-fun e!1348526 () Bool)

(declare-fun tp!646980 () Bool)

(assert (=> b!2118387 (= e!1348526 tp!646980)))

(declare-fun b!2118388 () Bool)

(declare-fun tp!646982 () Bool)

(declare-fun tp!646984 () Bool)

(assert (=> b!2118388 (= e!1348526 (and tp!646982 tp!646984))))

(assert (=> b!2117476 (= tp!646689 e!1348526)))

(declare-fun b!2118386 () Bool)

(declare-fun tp!646983 () Bool)

(declare-fun tp!646981 () Bool)

(assert (=> b!2118386 (= e!1348526 (and tp!646983 tp!646981))))

(declare-fun b!2118385 () Bool)

(assert (=> b!2118385 (= e!1348526 tp_is_empty!9479)))

(assert (= (and b!2117476 ((_ is ElementMatch!5645) (_1!13440 (_1!13441 (h!28998 mapValue!11591))))) b!2118385))

(assert (= (and b!2117476 ((_ is Concat!9947) (_1!13440 (_1!13441 (h!28998 mapValue!11591))))) b!2118386))

(assert (= (and b!2117476 ((_ is Star!5645) (_1!13440 (_1!13441 (h!28998 mapValue!11591))))) b!2118387))

(assert (= (and b!2117476 ((_ is Union!5645) (_1!13440 (_1!13441 (h!28998 mapValue!11591))))) b!2118388))

(declare-fun e!1348528 () Bool)

(assert (=> b!2117476 (= tp!646682 e!1348528)))

(declare-fun tp!646986 () Bool)

(declare-fun e!1348527 () Bool)

(declare-fun setNonEmpty!14473 () Bool)

(declare-fun setElem!14473 () Context!2430)

(declare-fun setRes!14473 () Bool)

(assert (=> setNonEmpty!14473 (= setRes!14473 (and tp!646986 (inv!31182 setElem!14473) e!1348527))))

(declare-fun setRest!14473 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14473 (= (_2!13441 (h!28998 (t!196190 mapValue!11591))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14473 true) setRest!14473))))

(declare-fun tp!646988 () Bool)

(declare-fun e!1348529 () Bool)

(declare-fun tp!646985 () Bool)

(declare-fun b!2118389 () Bool)

(assert (=> b!2118389 (= e!1348528 (and tp!646985 (inv!31182 (_2!13440 (_1!13441 (h!28998 (t!196190 mapValue!11591))))) e!1348529 tp_is_empty!9479 setRes!14473 tp!646988))))

(declare-fun condSetEmpty!14473 () Bool)

(assert (=> b!2118389 (= condSetEmpty!14473 (= (_2!13441 (h!28998 (t!196190 mapValue!11591))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14473 () Bool)

(assert (=> setIsEmpty!14473 setRes!14473))

(declare-fun b!2118390 () Bool)

(declare-fun tp!646987 () Bool)

(assert (=> b!2118390 (= e!1348527 tp!646987)))

(declare-fun b!2118391 () Bool)

(declare-fun tp!646989 () Bool)

(assert (=> b!2118391 (= e!1348529 tp!646989)))

(assert (= b!2118389 b!2118391))

(assert (= (and b!2118389 condSetEmpty!14473) setIsEmpty!14473))

(assert (= (and b!2118389 (not condSetEmpty!14473)) setNonEmpty!14473))

(assert (= setNonEmpty!14473 b!2118390))

(assert (= (and b!2117476 ((_ is Cons!23597) (t!196190 mapValue!11591))) b!2118389))

(declare-fun m!2573266 () Bool)

(assert (=> setNonEmpty!14473 m!2573266))

(declare-fun m!2573268 () Bool)

(assert (=> b!2118389 m!2573268))

(declare-fun condSetEmpty!14474 () Bool)

(assert (=> setNonEmpty!14343 (= condSetEmpty!14474 (= setRest!14343 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14474 () Bool)

(assert (=> setNonEmpty!14343 (= tp!646599 setRes!14474)))

(declare-fun setIsEmpty!14474 () Bool)

(assert (=> setIsEmpty!14474 setRes!14474))

(declare-fun e!1348530 () Bool)

(declare-fun setNonEmpty!14474 () Bool)

(declare-fun setElem!14474 () Context!2430)

(declare-fun tp!646990 () Bool)

(assert (=> setNonEmpty!14474 (= setRes!14474 (and tp!646990 (inv!31182 setElem!14474) e!1348530))))

(declare-fun setRest!14474 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14474 (= setRest!14343 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14474 true) setRest!14474))))

(declare-fun b!2118392 () Bool)

(declare-fun tp!646991 () Bool)

(assert (=> b!2118392 (= e!1348530 tp!646991)))

(assert (= (and setNonEmpty!14343 condSetEmpty!14474) setIsEmpty!14474))

(assert (= (and setNonEmpty!14343 (not condSetEmpty!14474)) setNonEmpty!14474))

(assert (= setNonEmpty!14474 b!2118392))

(declare-fun m!2573270 () Bool)

(assert (=> setNonEmpty!14474 m!2573270))

(declare-fun b!2118393 () Bool)

(declare-fun e!1348531 () Bool)

(declare-fun setRes!14475 () Bool)

(assert (=> b!2118393 (= e!1348531 setRes!14475)))

(declare-fun condSetEmpty!14475 () Bool)

(assert (=> b!2118393 (= condSetEmpty!14475 (= (_2!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793929))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14475 () Bool)

(assert (=> setIsEmpty!14475 setRes!14475))

(declare-fun setNonEmpty!14475 () Bool)

(assert (=> setNonEmpty!14475 (= setRes!14475 true)))

(declare-fun setElem!14475 () Context!2430)

(declare-fun setRest!14475 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14475 (= (_2!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793929))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14475 true) setRest!14475))))

(assert (=> b!2117150 e!1348531))

(assert (= (and b!2118393 condSetEmpty!14475) setIsEmpty!14475))

(assert (= (and b!2118393 (not condSetEmpty!14475)) setNonEmpty!14475))

(assert (= (and b!2117150 ((_ is Cons!23597) (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793929))))))))) b!2118393))

(declare-fun b!2118394 () Bool)

(declare-fun e!1348532 () Bool)

(declare-fun setRes!14476 () Bool)

(assert (=> b!2118394 (= e!1348532 setRes!14476)))

(declare-fun condSetEmpty!14476 () Bool)

(assert (=> b!2118394 (= condSetEmpty!14476 (= (_2!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793929))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14476 () Bool)

(assert (=> setIsEmpty!14476 setRes!14476))

(declare-fun setNonEmpty!14476 () Bool)

(assert (=> setNonEmpty!14476 (= setRes!14476 true)))

(declare-fun setElem!14476 () Context!2430)

(declare-fun setRest!14476 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14476 (= (_2!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793929))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14476 true) setRest!14476))))

(assert (=> b!2117150 e!1348532))

(assert (= (and b!2118394 condSetEmpty!14476) setIsEmpty!14476))

(assert (= (and b!2118394 (not condSetEmpty!14476)) setNonEmpty!14476))

(assert (= (and b!2117150 ((_ is Cons!23597) (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793929))))))))) b!2118394))

(declare-fun b!2118397 () Bool)

(declare-fun e!1348533 () Bool)

(declare-fun tp!646992 () Bool)

(assert (=> b!2118397 (= e!1348533 tp!646992)))

(declare-fun b!2118398 () Bool)

(declare-fun tp!646994 () Bool)

(declare-fun tp!646996 () Bool)

(assert (=> b!2118398 (= e!1348533 (and tp!646994 tp!646996))))

(assert (=> b!2117495 (= tp!646719 e!1348533)))

(declare-fun b!2118396 () Bool)

(declare-fun tp!646995 () Bool)

(declare-fun tp!646993 () Bool)

(assert (=> b!2118396 (= e!1348533 (and tp!646995 tp!646993))))

(declare-fun b!2118395 () Bool)

(assert (=> b!2118395 (= e!1348533 tp_is_empty!9479)))

(assert (= (and b!2117495 ((_ is ElementMatch!5645) (regOne!11802 (regTwo!11802 r!15373)))) b!2118395))

(assert (= (and b!2117495 ((_ is Concat!9947) (regOne!11802 (regTwo!11802 r!15373)))) b!2118396))

(assert (= (and b!2117495 ((_ is Star!5645) (regOne!11802 (regTwo!11802 r!15373)))) b!2118397))

(assert (= (and b!2117495 ((_ is Union!5645) (regOne!11802 (regTwo!11802 r!15373)))) b!2118398))

(declare-fun b!2118401 () Bool)

(declare-fun e!1348534 () Bool)

(declare-fun tp!646997 () Bool)

(assert (=> b!2118401 (= e!1348534 tp!646997)))

(declare-fun b!2118402 () Bool)

(declare-fun tp!646999 () Bool)

(declare-fun tp!647001 () Bool)

(assert (=> b!2118402 (= e!1348534 (and tp!646999 tp!647001))))

(assert (=> b!2117495 (= tp!646717 e!1348534)))

(declare-fun b!2118400 () Bool)

(declare-fun tp!647000 () Bool)

(declare-fun tp!646998 () Bool)

(assert (=> b!2118400 (= e!1348534 (and tp!647000 tp!646998))))

(declare-fun b!2118399 () Bool)

(assert (=> b!2118399 (= e!1348534 tp_is_empty!9479)))

(assert (= (and b!2117495 ((_ is ElementMatch!5645) (regTwo!11802 (regTwo!11802 r!15373)))) b!2118399))

(assert (= (and b!2117495 ((_ is Concat!9947) (regTwo!11802 (regTwo!11802 r!15373)))) b!2118400))

(assert (= (and b!2117495 ((_ is Star!5645) (regTwo!11802 (regTwo!11802 r!15373)))) b!2118401))

(assert (= (and b!2117495 ((_ is Union!5645) (regTwo!11802 (regTwo!11802 r!15373)))) b!2118402))

(declare-fun condSetEmpty!14477 () Bool)

(assert (=> setNonEmpty!14353 (= condSetEmpty!14477 (= setRest!14353 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14477 () Bool)

(assert (=> setNonEmpty!14353 setRes!14477))

(declare-fun setIsEmpty!14477 () Bool)

(assert (=> setIsEmpty!14477 setRes!14477))

(declare-fun setNonEmpty!14477 () Bool)

(assert (=> setNonEmpty!14477 (= setRes!14477 true)))

(declare-fun setElem!14477 () Context!2430)

(declare-fun setRest!14477 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14477 (= setRest!14353 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14477 true) setRest!14477))))

(assert (= (and setNonEmpty!14353 condSetEmpty!14477) setIsEmpty!14477))

(assert (= (and setNonEmpty!14353 (not condSetEmpty!14477)) setNonEmpty!14477))

(declare-fun condSetEmpty!14478 () Bool)

(assert (=> setNonEmpty!14375 (= condSetEmpty!14478 (= setRest!14375 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14478 () Bool)

(assert (=> setNonEmpty!14375 (= tp!646708 setRes!14478)))

(declare-fun setIsEmpty!14478 () Bool)

(assert (=> setIsEmpty!14478 setRes!14478))

(declare-fun setNonEmpty!14478 () Bool)

(declare-fun setElem!14478 () Context!2430)

(declare-fun tp!647002 () Bool)

(declare-fun e!1348535 () Bool)

(assert (=> setNonEmpty!14478 (= setRes!14478 (and tp!647002 (inv!31182 setElem!14478) e!1348535))))

(declare-fun setRest!14478 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14478 (= setRest!14375 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14478 true) setRest!14478))))

(declare-fun b!2118403 () Bool)

(declare-fun tp!647003 () Bool)

(assert (=> b!2118403 (= e!1348535 tp!647003)))

(assert (= (and setNonEmpty!14375 condSetEmpty!14478) setIsEmpty!14478))

(assert (= (and setNonEmpty!14375 (not condSetEmpty!14478)) setNonEmpty!14478))

(assert (= setNonEmpty!14478 b!2118403))

(declare-fun m!2573272 () Bool)

(assert (=> setNonEmpty!14478 m!2573272))

(declare-fun b!2118404 () Bool)

(declare-fun e!1348538 () Bool)

(declare-fun tp!647004 () Bool)

(assert (=> b!2118404 (= e!1348538 tp!647004)))

(declare-fun e!1348536 () Bool)

(declare-fun e!1348537 () Bool)

(declare-fun b!2118405 () Bool)

(declare-fun tp!647007 () Bool)

(declare-fun setRes!14479 () Bool)

(assert (=> b!2118405 (= e!1348536 (and (inv!31182 (_1!13442 (_1!13443 (h!29000 (t!196192 mapValue!11585))))) e!1348537 tp_is_empty!9479 setRes!14479 tp!647007))))

(declare-fun condSetEmpty!14479 () Bool)

(assert (=> b!2118405 (= condSetEmpty!14479 (= (_2!13443 (h!29000 (t!196192 mapValue!11585))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118406 () Bool)

(declare-fun tp!647005 () Bool)

(assert (=> b!2118406 (= e!1348537 tp!647005)))

(declare-fun tp!647006 () Bool)

(declare-fun setElem!14479 () Context!2430)

(declare-fun setNonEmpty!14479 () Bool)

(assert (=> setNonEmpty!14479 (= setRes!14479 (and tp!647006 (inv!31182 setElem!14479) e!1348538))))

(declare-fun setRest!14479 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14479 (= (_2!13443 (h!29000 (t!196192 mapValue!11585))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14479 true) setRest!14479))))

(assert (=> b!2117365 (= tp!646587 e!1348536)))

(declare-fun setIsEmpty!14479 () Bool)

(assert (=> setIsEmpty!14479 setRes!14479))

(assert (= b!2118405 b!2118406))

(assert (= (and b!2118405 condSetEmpty!14479) setIsEmpty!14479))

(assert (= (and b!2118405 (not condSetEmpty!14479)) setNonEmpty!14479))

(assert (= setNonEmpty!14479 b!2118404))

(assert (= (and b!2117365 ((_ is Cons!23599) (t!196192 mapValue!11585))) b!2118405))

(declare-fun m!2573274 () Bool)

(assert (=> b!2118405 m!2573274))

(declare-fun m!2573276 () Bool)

(assert (=> setNonEmpty!14479 m!2573276))

(declare-fun b!2118407 () Bool)

(declare-fun e!1348539 () Bool)

(declare-fun setRes!14480 () Bool)

(assert (=> b!2118407 (= e!1348539 setRes!14480)))

(declare-fun condSetEmpty!14480 () Bool)

(assert (=> b!2118407 (= condSetEmpty!14480 (= (_2!13443 (h!29000 (t!196192 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905)))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14480 () Bool)

(assert (=> setIsEmpty!14480 setRes!14480))

(declare-fun setNonEmpty!14480 () Bool)

(assert (=> setNonEmpty!14480 (= setRes!14480 true)))

(declare-fun setElem!14480 () Context!2430)

(declare-fun setRest!14480 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14480 (= (_2!13443 (h!29000 (t!196192 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905)))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14480 true) setRest!14480))))

(assert (=> b!2117534 e!1348539))

(assert (= (and b!2118407 condSetEmpty!14480) setIsEmpty!14480))

(assert (= (and b!2118407 (not condSetEmpty!14480)) setNonEmpty!14480))

(assert (= (and b!2117534 ((_ is Cons!23599) (t!196192 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905)))))))))) b!2118407))

(declare-fun b!2118408 () Bool)

(declare-fun e!1348540 () Bool)

(declare-fun tp!647008 () Bool)

(declare-fun tp!647009 () Bool)

(assert (=> b!2118408 (= e!1348540 (and tp!647008 tp!647009))))

(assert (=> b!2117474 (= tp!646692 e!1348540)))

(assert (= (and b!2117474 ((_ is Cons!23596) (exprs!1715 setElem!14373))) b!2118408))

(declare-fun b!2118409 () Bool)

(declare-fun e!1348541 () Bool)

(declare-fun tp!647010 () Bool)

(declare-fun tp!647011 () Bool)

(assert (=> b!2118409 (= e!1348541 (and tp!647010 tp!647011))))

(assert (=> b!2117519 (= tp!646743 e!1348541)))

(assert (= (and b!2117519 ((_ is Cons!23596) (exprs!1715 setElem!14385))) b!2118409))

(declare-fun b!2118411 () Bool)

(declare-fun e!1348542 () Bool)

(declare-fun tp!647014 () Bool)

(assert (=> b!2118411 (= e!1348542 tp!647014)))

(declare-fun e!1348543 () Bool)

(assert (=> b!2117433 (= tp!646652 e!1348543)))

(declare-fun setIsEmpty!14481 () Bool)

(declare-fun setRes!14481 () Bool)

(assert (=> setIsEmpty!14481 setRes!14481))

(declare-fun setNonEmpty!14481 () Bool)

(declare-fun tp!647012 () Bool)

(declare-fun setElem!14481 () Context!2430)

(assert (=> setNonEmpty!14481 (= setRes!14481 (and tp!647012 (inv!31182 setElem!14481) e!1348542))))

(declare-fun setRest!14481 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14481 (= (_1!13447 (_1!13448 (h!29002 (t!196194 (zeroValue!2656 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141)))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14481 true) setRest!14481))))

(declare-fun b!2118410 () Bool)

(declare-fun tp!647013 () Bool)

(assert (=> b!2118410 (= e!1348543 (and setRes!14481 tp!647013))))

(declare-fun condSetEmpty!14481 () Bool)

(assert (=> b!2118410 (= condSetEmpty!14481 (= (_1!13447 (_1!13448 (h!29002 (t!196194 (zeroValue!2656 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141)))))))))) ((as const (Array Context!2430 Bool)) false)))))

(assert (= (and b!2118410 condSetEmpty!14481) setIsEmpty!14481))

(assert (= (and b!2118410 (not condSetEmpty!14481)) setNonEmpty!14481))

(assert (= setNonEmpty!14481 b!2118411))

(assert (= (and b!2117433 ((_ is Cons!23601) (t!196194 (zeroValue!2656 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))))) b!2118410))

(declare-fun m!2573278 () Bool)

(assert (=> setNonEmpty!14481 m!2573278))

(declare-fun b!2118414 () Bool)

(declare-fun e!1348544 () Bool)

(declare-fun tp!647015 () Bool)

(assert (=> b!2118414 (= e!1348544 tp!647015)))

(declare-fun b!2118415 () Bool)

(declare-fun tp!647017 () Bool)

(declare-fun tp!647019 () Bool)

(assert (=> b!2118415 (= e!1348544 (and tp!647017 tp!647019))))

(assert (=> b!2117391 (= tp!646611 e!1348544)))

(declare-fun b!2118413 () Bool)

(declare-fun tp!647018 () Bool)

(declare-fun tp!647016 () Bool)

(assert (=> b!2118413 (= e!1348544 (and tp!647018 tp!647016))))

(declare-fun b!2118412 () Bool)

(assert (=> b!2118412 (= e!1348544 tp_is_empty!9479)))

(assert (= (and b!2117391 ((_ is ElementMatch!5645) (_1!13440 (_1!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))))) b!2118412))

(assert (= (and b!2117391 ((_ is Concat!9947) (_1!13440 (_1!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))))) b!2118413))

(assert (= (and b!2117391 ((_ is Star!5645) (_1!13440 (_1!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))))) b!2118414))

(assert (= (and b!2117391 ((_ is Union!5645) (_1!13440 (_1!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))))) b!2118415))

(declare-fun e!1348546 () Bool)

(assert (=> b!2117391 (= tp!646614 e!1348546)))

(declare-fun setRes!14482 () Bool)

(declare-fun e!1348545 () Bool)

(declare-fun tp!647021 () Bool)

(declare-fun setNonEmpty!14482 () Bool)

(declare-fun setElem!14482 () Context!2430)

(assert (=> setNonEmpty!14482 (= setRes!14482 (and tp!647021 (inv!31182 setElem!14482) e!1348545))))

(declare-fun setRest!14482 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14482 (= (_2!13441 (h!28998 (t!196190 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14482 true) setRest!14482))))

(declare-fun tp!647020 () Bool)

(declare-fun e!1348547 () Bool)

(declare-fun tp!647023 () Bool)

(declare-fun b!2118416 () Bool)

(assert (=> b!2118416 (= e!1348546 (and tp!647020 (inv!31182 (_2!13440 (_1!13441 (h!28998 (t!196190 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))))) e!1348547 tp_is_empty!9479 setRes!14482 tp!647023))))

(declare-fun condSetEmpty!14482 () Bool)

(assert (=> b!2118416 (= condSetEmpty!14482 (= (_2!13441 (h!28998 (t!196190 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14482 () Bool)

(assert (=> setIsEmpty!14482 setRes!14482))

(declare-fun b!2118417 () Bool)

(declare-fun tp!647022 () Bool)

(assert (=> b!2118417 (= e!1348545 tp!647022)))

(declare-fun b!2118418 () Bool)

(declare-fun tp!647024 () Bool)

(assert (=> b!2118418 (= e!1348547 tp!647024)))

(assert (= b!2118416 b!2118418))

(assert (= (and b!2118416 condSetEmpty!14482) setIsEmpty!14482))

(assert (= (and b!2118416 (not condSetEmpty!14482)) setNonEmpty!14482))

(assert (= setNonEmpty!14482 b!2118417))

(assert (= (and b!2117391 ((_ is Cons!23597) (t!196190 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))) b!2118416))

(declare-fun m!2573280 () Bool)

(assert (=> setNonEmpty!14482 m!2573280))

(declare-fun m!2573282 () Bool)

(assert (=> b!2118416 m!2573282))

(declare-fun b!2118419 () Bool)

(declare-fun e!1348548 () Bool)

(declare-fun setRes!14483 () Bool)

(assert (=> b!2118419 (= e!1348548 setRes!14483)))

(declare-fun condSetEmpty!14483 () Bool)

(assert (=> b!2118419 (= condSetEmpty!14483 (= (_2!13441 (h!28998 (t!196190 mapDefault!11597))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14483 () Bool)

(assert (=> setIsEmpty!14483 setRes!14483))

(declare-fun setNonEmpty!14483 () Bool)

(assert (=> setNonEmpty!14483 (= setRes!14483 true)))

(declare-fun setElem!14483 () Context!2430)

(declare-fun setRest!14483 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14483 (= (_2!13441 (h!28998 (t!196190 mapDefault!11597))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14483 true) setRest!14483))))

(assert (=> b!2117528 e!1348548))

(assert (= (and b!2118419 condSetEmpty!14483) setIsEmpty!14483))

(assert (= (and b!2118419 (not condSetEmpty!14483)) setNonEmpty!14483))

(assert (= (and b!2117528 ((_ is Cons!23597) (t!196190 mapDefault!11597))) b!2118419))

(declare-fun b!2118420 () Bool)

(declare-fun e!1348549 () Bool)

(declare-fun tp!647025 () Bool)

(declare-fun tp!647026 () Bool)

(assert (=> b!2118420 (= e!1348549 (and tp!647025 tp!647026))))

(assert (=> b!2117478 (= tp!646695 e!1348549)))

(assert (= (and b!2117478 ((_ is Cons!23596) (exprs!1715 setElem!14374))) b!2118420))

(declare-fun b!2118423 () Bool)

(declare-fun e!1348550 () Bool)

(declare-fun tp!647027 () Bool)

(assert (=> b!2118423 (= e!1348550 tp!647027)))

(declare-fun b!2118424 () Bool)

(declare-fun tp!647029 () Bool)

(declare-fun tp!647031 () Bool)

(assert (=> b!2118424 (= e!1348550 (and tp!647029 tp!647031))))

(assert (=> b!2117394 (= tp!646616 e!1348550)))

(declare-fun b!2118422 () Bool)

(declare-fun tp!647030 () Bool)

(declare-fun tp!647028 () Bool)

(assert (=> b!2118422 (= e!1348550 (and tp!647030 tp!647028))))

(declare-fun b!2118421 () Bool)

(assert (=> b!2118421 (= e!1348550 tp_is_empty!9479)))

(assert (= (and b!2117394 ((_ is ElementMatch!5645) (_1!13440 (_1!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))))) b!2118421))

(assert (= (and b!2117394 ((_ is Concat!9947) (_1!13440 (_1!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))))) b!2118422))

(assert (= (and b!2117394 ((_ is Star!5645) (_1!13440 (_1!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))))) b!2118423))

(assert (= (and b!2117394 ((_ is Union!5645) (_1!13440 (_1!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))))) b!2118424))

(declare-fun e!1348552 () Bool)

(assert (=> b!2117394 (= tp!646619 e!1348552)))

(declare-fun tp!647033 () Bool)

(declare-fun setElem!14484 () Context!2430)

(declare-fun setNonEmpty!14484 () Bool)

(declare-fun e!1348551 () Bool)

(declare-fun setRes!14484 () Bool)

(assert (=> setNonEmpty!14484 (= setRes!14484 (and tp!647033 (inv!31182 setElem!14484) e!1348551))))

(declare-fun setRest!14484 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14484 (= (_2!13441 (h!28998 (t!196190 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14484 true) setRest!14484))))

(declare-fun e!1348553 () Bool)

(declare-fun b!2118425 () Bool)

(declare-fun tp!647035 () Bool)

(declare-fun tp!647032 () Bool)

(assert (=> b!2118425 (= e!1348552 (and tp!647032 (inv!31182 (_2!13440 (_1!13441 (h!28998 (t!196190 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))))) e!1348553 tp_is_empty!9479 setRes!14484 tp!647035))))

(declare-fun condSetEmpty!14484 () Bool)

(assert (=> b!2118425 (= condSetEmpty!14484 (= (_2!13441 (h!28998 (t!196190 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14484 () Bool)

(assert (=> setIsEmpty!14484 setRes!14484))

(declare-fun b!2118426 () Bool)

(declare-fun tp!647034 () Bool)

(assert (=> b!2118426 (= e!1348551 tp!647034)))

(declare-fun b!2118427 () Bool)

(declare-fun tp!647036 () Bool)

(assert (=> b!2118427 (= e!1348553 tp!647036)))

(assert (= b!2118425 b!2118427))

(assert (= (and b!2118425 condSetEmpty!14484) setIsEmpty!14484))

(assert (= (and b!2118425 (not condSetEmpty!14484)) setNonEmpty!14484))

(assert (= setNonEmpty!14484 b!2118426))

(assert (= (and b!2117394 ((_ is Cons!23597) (t!196190 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229))))))))) b!2118425))

(declare-fun m!2573284 () Bool)

(assert (=> setNonEmpty!14484 m!2573284))

(declare-fun m!2573286 () Bool)

(assert (=> b!2118425 m!2573286))

(declare-fun e!1348554 () Bool)

(assert (=> b!2117222 e!1348554))

(declare-fun setIsEmpty!14485 () Bool)

(declare-fun setRes!14485 () Bool)

(assert (=> setIsEmpty!14485 setRes!14485))

(declare-fun setNonEmpty!14485 () Bool)

(assert (=> setNonEmpty!14485 (= setRes!14485 true)))

(declare-fun setElem!14485 () Context!2430)

(declare-fun setRest!14485 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14485 (= (z!5693 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793984))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14485 true) setRest!14485))))

(declare-fun b!2118429 () Bool)

(declare-fun e!1348555 () Bool)

(assert (=> b!2118429 (= e!1348555 setRes!14485)))

(declare-fun condSetEmpty!14485 () Bool)

(assert (=> b!2118429 (= condSetEmpty!14485 (= (z!5693 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793984))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118428 () Bool)

(assert (=> b!2118428 (= e!1348554 e!1348555)))

(assert (= (and b!2118429 condSetEmpty!14485) setIsEmpty!14485))

(assert (= (and b!2118429 (not condSetEmpty!14485)) setNonEmpty!14485))

(assert (= b!2118428 b!2118429))

(assert (= (and b!2117222 ((_ is Cons!23600) (t!196193 (_2!13444 (_1!13445 lt!793984))))) b!2118428))

(declare-fun b!2118432 () Bool)

(declare-fun e!1348556 () Bool)

(declare-fun tp!647037 () Bool)

(assert (=> b!2118432 (= e!1348556 tp!647037)))

(declare-fun b!2118433 () Bool)

(declare-fun tp!647039 () Bool)

(declare-fun tp!647041 () Bool)

(assert (=> b!2118433 (= e!1348556 (and tp!647039 tp!647041))))

(assert (=> b!2117541 (= tp!646760 e!1348556)))

(declare-fun b!2118431 () Bool)

(declare-fun tp!647040 () Bool)

(declare-fun tp!647038 () Bool)

(assert (=> b!2118431 (= e!1348556 (and tp!647040 tp!647038))))

(declare-fun b!2118430 () Bool)

(assert (=> b!2118430 (= e!1348556 tp_is_empty!9479)))

(assert (= (and b!2117541 ((_ is ElementMatch!5645) (_1!13440 (_1!13441 (h!28998 mapDefault!11570))))) b!2118430))

(assert (= (and b!2117541 ((_ is Concat!9947) (_1!13440 (_1!13441 (h!28998 mapDefault!11570))))) b!2118431))

(assert (= (and b!2117541 ((_ is Star!5645) (_1!13440 (_1!13441 (h!28998 mapDefault!11570))))) b!2118432))

(assert (= (and b!2117541 ((_ is Union!5645) (_1!13440 (_1!13441 (h!28998 mapDefault!11570))))) b!2118433))

(declare-fun e!1348558 () Bool)

(assert (=> b!2117541 (= tp!646763 e!1348558)))

(declare-fun tp!647043 () Bool)

(declare-fun setNonEmpty!14486 () Bool)

(declare-fun setElem!14486 () Context!2430)

(declare-fun e!1348557 () Bool)

(declare-fun setRes!14486 () Bool)

(assert (=> setNonEmpty!14486 (= setRes!14486 (and tp!647043 (inv!31182 setElem!14486) e!1348557))))

(declare-fun setRest!14486 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14486 (= (_2!13441 (h!28998 (t!196190 mapDefault!11570))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14486 true) setRest!14486))))

(declare-fun b!2118434 () Bool)

(declare-fun e!1348559 () Bool)

(declare-fun tp!647045 () Bool)

(declare-fun tp!647042 () Bool)

(assert (=> b!2118434 (= e!1348558 (and tp!647042 (inv!31182 (_2!13440 (_1!13441 (h!28998 (t!196190 mapDefault!11570))))) e!1348559 tp_is_empty!9479 setRes!14486 tp!647045))))

(declare-fun condSetEmpty!14486 () Bool)

(assert (=> b!2118434 (= condSetEmpty!14486 (= (_2!13441 (h!28998 (t!196190 mapDefault!11570))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14486 () Bool)

(assert (=> setIsEmpty!14486 setRes!14486))

(declare-fun b!2118435 () Bool)

(declare-fun tp!647044 () Bool)

(assert (=> b!2118435 (= e!1348557 tp!647044)))

(declare-fun b!2118436 () Bool)

(declare-fun tp!647046 () Bool)

(assert (=> b!2118436 (= e!1348559 tp!647046)))

(assert (= b!2118434 b!2118436))

(assert (= (and b!2118434 condSetEmpty!14486) setIsEmpty!14486))

(assert (= (and b!2118434 (not condSetEmpty!14486)) setNonEmpty!14486))

(assert (= setNonEmpty!14486 b!2118435))

(assert (= (and b!2117541 ((_ is Cons!23597) (t!196190 mapDefault!11570))) b!2118434))

(declare-fun m!2573288 () Bool)

(assert (=> setNonEmpty!14486 m!2573288))

(declare-fun m!2573290 () Bool)

(assert (=> b!2118434 m!2573290))

(declare-fun condSetEmpty!14487 () Bool)

(assert (=> setNonEmpty!14357 (= condSetEmpty!14487 (= setRest!14357 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14487 () Bool)

(assert (=> setNonEmpty!14357 (= tp!646654 setRes!14487)))

(declare-fun setIsEmpty!14487 () Bool)

(assert (=> setIsEmpty!14487 setRes!14487))

(declare-fun tp!647047 () Bool)

(declare-fun setElem!14487 () Context!2430)

(declare-fun e!1348560 () Bool)

(declare-fun setNonEmpty!14487 () Bool)

(assert (=> setNonEmpty!14487 (= setRes!14487 (and tp!647047 (inv!31182 setElem!14487) e!1348560))))

(declare-fun setRest!14487 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14487 (= setRest!14357 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14487 true) setRest!14487))))

(declare-fun b!2118437 () Bool)

(declare-fun tp!647048 () Bool)

(assert (=> b!2118437 (= e!1348560 tp!647048)))

(assert (= (and setNonEmpty!14357 condSetEmpty!14487) setIsEmpty!14487))

(assert (= (and setNonEmpty!14357 (not condSetEmpty!14487)) setNonEmpty!14487))

(assert (= setNonEmpty!14487 b!2118437))

(declare-fun m!2573292 () Bool)

(assert (=> setNonEmpty!14487 m!2573292))

(declare-fun b!2118438 () Bool)

(declare-fun e!1348561 () Bool)

(declare-fun tp!647049 () Bool)

(declare-fun tp!647050 () Bool)

(assert (=> b!2118438 (= e!1348561 (and tp!647049 tp!647050))))

(assert (=> b!2117501 (= tp!646725 e!1348561)))

(assert (= (and b!2117501 ((_ is Cons!23596) (exprs!1715 setElem!14377))) b!2118438))

(declare-fun condSetEmpty!14488 () Bool)

(assert (=> setNonEmpty!14384 (= condSetEmpty!14488 (= setRest!14385 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14488 () Bool)

(assert (=> setNonEmpty!14384 (= tp!646746 setRes!14488)))

(declare-fun setIsEmpty!14488 () Bool)

(assert (=> setIsEmpty!14488 setRes!14488))

(declare-fun setElem!14488 () Context!2430)

(declare-fun e!1348562 () Bool)

(declare-fun setNonEmpty!14488 () Bool)

(declare-fun tp!647051 () Bool)

(assert (=> setNonEmpty!14488 (= setRes!14488 (and tp!647051 (inv!31182 setElem!14488) e!1348562))))

(declare-fun setRest!14488 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14488 (= setRest!14385 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14488 true) setRest!14488))))

(declare-fun b!2118439 () Bool)

(declare-fun tp!647052 () Bool)

(assert (=> b!2118439 (= e!1348562 tp!647052)))

(assert (= (and setNonEmpty!14384 condSetEmpty!14488) setIsEmpty!14488))

(assert (= (and setNonEmpty!14384 (not condSetEmpty!14488)) setNonEmpty!14488))

(assert (= setNonEmpty!14488 b!2118439))

(declare-fun m!2573294 () Bool)

(assert (=> setNonEmpty!14488 m!2573294))

(declare-fun condSetEmpty!14489 () Bool)

(assert (=> setNonEmpty!14391 (= condSetEmpty!14489 (= setRest!14392 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14489 () Bool)

(assert (=> setNonEmpty!14391 setRes!14489))

(declare-fun setIsEmpty!14489 () Bool)

(assert (=> setIsEmpty!14489 setRes!14489))

(declare-fun setNonEmpty!14489 () Bool)

(assert (=> setNonEmpty!14489 (= setRes!14489 true)))

(declare-fun setElem!14489 () Context!2430)

(declare-fun setRest!14489 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14489 (= setRest!14392 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14489 true) setRest!14489))))

(assert (= (and setNonEmpty!14391 condSetEmpty!14489) setIsEmpty!14489))

(assert (= (and setNonEmpty!14391 (not condSetEmpty!14489)) setNonEmpty!14489))

(declare-fun b!2118442 () Bool)

(declare-fun e!1348563 () Bool)

(declare-fun tp!647053 () Bool)

(assert (=> b!2118442 (= e!1348563 tp!647053)))

(declare-fun b!2118443 () Bool)

(declare-fun tp!647055 () Bool)

(declare-fun tp!647057 () Bool)

(assert (=> b!2118443 (= e!1348563 (and tp!647055 tp!647057))))

(assert (=> b!2117487 (= tp!646705 e!1348563)))

(declare-fun b!2118441 () Bool)

(declare-fun tp!647056 () Bool)

(declare-fun tp!647054 () Bool)

(assert (=> b!2118441 (= e!1348563 (and tp!647056 tp!647054))))

(declare-fun b!2118440 () Bool)

(assert (=> b!2118440 (= e!1348563 tp_is_empty!9479)))

(assert (= (and b!2117487 ((_ is ElementMatch!5645) (regOne!11803 (regTwo!11803 r!15373)))) b!2118440))

(assert (= (and b!2117487 ((_ is Concat!9947) (regOne!11803 (regTwo!11803 r!15373)))) b!2118441))

(assert (= (and b!2117487 ((_ is Star!5645) (regOne!11803 (regTwo!11803 r!15373)))) b!2118442))

(assert (= (and b!2117487 ((_ is Union!5645) (regOne!11803 (regTwo!11803 r!15373)))) b!2118443))

(declare-fun b!2118446 () Bool)

(declare-fun e!1348564 () Bool)

(declare-fun tp!647058 () Bool)

(assert (=> b!2118446 (= e!1348564 tp!647058)))

(declare-fun b!2118447 () Bool)

(declare-fun tp!647060 () Bool)

(declare-fun tp!647062 () Bool)

(assert (=> b!2118447 (= e!1348564 (and tp!647060 tp!647062))))

(assert (=> b!2117487 (= tp!646707 e!1348564)))

(declare-fun b!2118445 () Bool)

(declare-fun tp!647061 () Bool)

(declare-fun tp!647059 () Bool)

(assert (=> b!2118445 (= e!1348564 (and tp!647061 tp!647059))))

(declare-fun b!2118444 () Bool)

(assert (=> b!2118444 (= e!1348564 tp_is_empty!9479)))

(assert (= (and b!2117487 ((_ is ElementMatch!5645) (regTwo!11803 (regTwo!11803 r!15373)))) b!2118444))

(assert (= (and b!2117487 ((_ is Concat!9947) (regTwo!11803 (regTwo!11803 r!15373)))) b!2118445))

(assert (= (and b!2117487 ((_ is Star!5645) (regTwo!11803 (regTwo!11803 r!15373)))) b!2118446))

(assert (= (and b!2117487 ((_ is Union!5645) (regTwo!11803 (regTwo!11803 r!15373)))) b!2118447))

(declare-fun b!2118448 () Bool)

(declare-fun e!1348565 () Bool)

(declare-fun tp!647063 () Bool)

(assert (=> b!2118448 (= e!1348565 (and tp_is_empty!9479 tp!647063))))

(assert (=> b!2117412 (= tp!646627 e!1348565)))

(assert (= (and b!2117412 ((_ is Cons!23598) (innerList!7844 (xs!10726 (c!339387 totalInput!1306))))) b!2118448))

(declare-fun b!2118451 () Bool)

(declare-fun e!1348566 () Bool)

(declare-fun tp!647064 () Bool)

(assert (=> b!2118451 (= e!1348566 tp!647064)))

(declare-fun b!2118452 () Bool)

(declare-fun tp!647066 () Bool)

(declare-fun tp!647068 () Bool)

(assert (=> b!2118452 (= e!1348566 (and tp!647066 tp!647068))))

(assert (=> b!2117426 (= tp!646642 e!1348566)))

(declare-fun b!2118450 () Bool)

(declare-fun tp!647067 () Bool)

(declare-fun tp!647065 () Bool)

(assert (=> b!2118450 (= e!1348566 (and tp!647067 tp!647065))))

(declare-fun b!2118449 () Bool)

(assert (=> b!2118449 (= e!1348566 tp_is_empty!9479)))

(assert (= (and b!2117426 ((_ is ElementMatch!5645) (regOne!11803 (reg!5974 r!15373)))) b!2118449))

(assert (= (and b!2117426 ((_ is Concat!9947) (regOne!11803 (reg!5974 r!15373)))) b!2118450))

(assert (= (and b!2117426 ((_ is Star!5645) (regOne!11803 (reg!5974 r!15373)))) b!2118451))

(assert (= (and b!2117426 ((_ is Union!5645) (regOne!11803 (reg!5974 r!15373)))) b!2118452))

(declare-fun b!2118455 () Bool)

(declare-fun e!1348567 () Bool)

(declare-fun tp!647069 () Bool)

(assert (=> b!2118455 (= e!1348567 tp!647069)))

(declare-fun b!2118456 () Bool)

(declare-fun tp!647071 () Bool)

(declare-fun tp!647073 () Bool)

(assert (=> b!2118456 (= e!1348567 (and tp!647071 tp!647073))))

(assert (=> b!2117426 (= tp!646644 e!1348567)))

(declare-fun b!2118454 () Bool)

(declare-fun tp!647072 () Bool)

(declare-fun tp!647070 () Bool)

(assert (=> b!2118454 (= e!1348567 (and tp!647072 tp!647070))))

(declare-fun b!2118453 () Bool)

(assert (=> b!2118453 (= e!1348567 tp_is_empty!9479)))

(assert (= (and b!2117426 ((_ is ElementMatch!5645) (regTwo!11803 (reg!5974 r!15373)))) b!2118453))

(assert (= (and b!2117426 ((_ is Concat!9947) (regTwo!11803 (reg!5974 r!15373)))) b!2118454))

(assert (= (and b!2117426 ((_ is Star!5645) (regTwo!11803 (reg!5974 r!15373)))) b!2118455))

(assert (= (and b!2117426 ((_ is Union!5645) (regTwo!11803 (reg!5974 r!15373)))) b!2118456))

(declare-fun b!2118457 () Bool)

(declare-fun e!1348568 () Bool)

(declare-fun tp!647074 () Bool)

(assert (=> b!2118457 (= e!1348568 (and tp_is_empty!9479 tp!647074))))

(assert (=> b!2117533 (= tp!646753 e!1348568)))

(assert (= (and b!2117533 ((_ is Cons!23598) (innerList!7844 (xs!10726 (c!339387 (totalInput!2863 cacheFurthestNullable!141)))))) b!2118457))

(declare-fun b!2118458 () Bool)

(declare-fun e!1348569 () Bool)

(declare-fun tp!647075 () Bool)

(declare-fun tp!647076 () Bool)

(assert (=> b!2118458 (= e!1348569 (and tp!647075 tp!647076))))

(assert (=> b!2117521 (= tp!646752 e!1348569)))

(assert (= (and b!2117521 ((_ is Cons!23596) (exprs!1715 setElem!14386))) b!2118458))

(declare-fun b!2118459 () Bool)

(declare-fun e!1348570 () Bool)

(declare-fun setRes!14490 () Bool)

(assert (=> b!2118459 (= e!1348570 setRes!14490)))

(declare-fun condSetEmpty!14490 () Bool)

(assert (=> b!2118459 (= condSetEmpty!14490 (= (_2!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793988))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14490 () Bool)

(assert (=> setIsEmpty!14490 setRes!14490))

(declare-fun setNonEmpty!14490 () Bool)

(assert (=> setNonEmpty!14490 (= setRes!14490 true)))

(declare-fun setElem!14490 () Context!2430)

(declare-fun setRest!14490 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14490 (= (_2!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793988))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14490 true) setRest!14490))))

(assert (=> b!2117236 e!1348570))

(assert (= (and b!2118459 condSetEmpty!14490) setIsEmpty!14490))

(assert (= (and b!2118459 (not condSetEmpty!14490)) setNonEmpty!14490))

(assert (= (and b!2117236 ((_ is Cons!23597) (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793988))))))))) b!2118459))

(declare-fun b!2118460 () Bool)

(declare-fun e!1348571 () Bool)

(declare-fun setRes!14491 () Bool)

(assert (=> b!2118460 (= e!1348571 setRes!14491)))

(declare-fun condSetEmpty!14491 () Bool)

(assert (=> b!2118460 (= condSetEmpty!14491 (= (_2!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793988))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14491 () Bool)

(assert (=> setIsEmpty!14491 setRes!14491))

(declare-fun setNonEmpty!14491 () Bool)

(assert (=> setNonEmpty!14491 (= setRes!14491 true)))

(declare-fun setElem!14491 () Context!2430)

(declare-fun setRest!14491 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14491 (= (_2!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793988))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14491 true) setRest!14491))))

(assert (=> b!2117236 e!1348571))

(assert (= (and b!2118460 condSetEmpty!14491) setIsEmpty!14491))

(assert (= (and b!2118460 (not condSetEmpty!14491)) setNonEmpty!14491))

(assert (= (and b!2117236 ((_ is Cons!23597) (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 (_3!1876 lt!793988))))))))) b!2118460))

(declare-fun b!2118461 () Bool)

(declare-fun e!1348572 () Bool)

(declare-fun tp!647077 () Bool)

(declare-fun tp!647078 () Bool)

(assert (=> b!2118461 (= e!1348572 (and tp!647077 tp!647078))))

(assert (=> b!2117473 (= tp!646688 e!1348572)))

(assert (= (and b!2117473 ((_ is Cons!23596) (exprs!1715 (_2!13440 (_1!13441 (h!28998 mapValue!11591)))))) b!2118461))

(declare-fun b!2118463 () Bool)

(declare-fun e!1348573 () Bool)

(declare-fun tp!647081 () Bool)

(assert (=> b!2118463 (= e!1348573 tp!647081)))

(declare-fun e!1348574 () Bool)

(assert (=> b!2117518 (= tp!646745 e!1348574)))

(declare-fun setIsEmpty!14492 () Bool)

(declare-fun setRes!14492 () Bool)

(assert (=> setIsEmpty!14492 setRes!14492))

(declare-fun setNonEmpty!14492 () Bool)

(declare-fun setElem!14492 () Context!2430)

(declare-fun tp!647079 () Bool)

(assert (=> setNonEmpty!14492 (= setRes!14492 (and tp!647079 (inv!31182 setElem!14492) e!1348573))))

(declare-fun setRest!14492 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14492 (= (_1!13447 (_1!13448 (h!29002 (t!196194 mapValue!11594)))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14492 true) setRest!14492))))

(declare-fun b!2118462 () Bool)

(declare-fun tp!647080 () Bool)

(assert (=> b!2118462 (= e!1348574 (and setRes!14492 tp!647080))))

(declare-fun condSetEmpty!14492 () Bool)

(assert (=> b!2118462 (= condSetEmpty!14492 (= (_1!13447 (_1!13448 (h!29002 (t!196194 mapValue!11594)))) ((as const (Array Context!2430 Bool)) false)))))

(assert (= (and b!2118462 condSetEmpty!14492) setIsEmpty!14492))

(assert (= (and b!2118462 (not condSetEmpty!14492)) setNonEmpty!14492))

(assert (= setNonEmpty!14492 b!2118463))

(assert (= (and b!2117518 ((_ is Cons!23601) (t!196194 mapValue!11594))) b!2118462))

(declare-fun m!2573296 () Bool)

(assert (=> setNonEmpty!14492 m!2573296))

(declare-fun b!2118464 () Bool)

(declare-fun e!1348575 () Bool)

(declare-fun tp!647082 () Bool)

(declare-fun tp!647083 () Bool)

(assert (=> b!2118464 (= e!1348575 (and tp!647082 tp!647083))))

(assert (=> b!2117500 (= tp!646722 e!1348575)))

(assert (= (and b!2117500 ((_ is Cons!23596) (exprs!1715 (_1!13442 (_1!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 cacheUp!1110)))))))))))) b!2118464))

(declare-fun b!2118465 () Bool)

(declare-fun e!1348576 () Bool)

(declare-fun setRes!14493 () Bool)

(assert (=> b!2118465 (= e!1348576 setRes!14493)))

(declare-fun condSetEmpty!14493 () Bool)

(assert (=> b!2118465 (= condSetEmpty!14493 (= (_2!13443 (h!29000 (t!196192 mapDefault!11588))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14493 () Bool)

(assert (=> setIsEmpty!14493 setRes!14493))

(declare-fun setNonEmpty!14493 () Bool)

(assert (=> setNonEmpty!14493 (= setRes!14493 true)))

(declare-fun setElem!14493 () Context!2430)

(declare-fun setRest!14493 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14493 (= (_2!13443 (h!29000 (t!196192 mapDefault!11588))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14493 true) setRest!14493))))

(assert (=> b!2117444 e!1348576))

(assert (= (and b!2118465 condSetEmpty!14493) setIsEmpty!14493))

(assert (= (and b!2118465 (not condSetEmpty!14493)) setNonEmpty!14493))

(assert (= (and b!2117444 ((_ is Cons!23599) (t!196192 mapDefault!11588))) b!2118465))

(declare-fun condSetEmpty!14494 () Bool)

(assert (=> setNonEmpty!14377 (= condSetEmpty!14494 (= setRest!14377 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14494 () Bool)

(assert (=> setNonEmpty!14377 (= tp!646727 setRes!14494)))

(declare-fun setIsEmpty!14494 () Bool)

(assert (=> setIsEmpty!14494 setRes!14494))

(declare-fun tp!647084 () Bool)

(declare-fun setNonEmpty!14494 () Bool)

(declare-fun setElem!14494 () Context!2430)

(declare-fun e!1348577 () Bool)

(assert (=> setNonEmpty!14494 (= setRes!14494 (and tp!647084 (inv!31182 setElem!14494) e!1348577))))

(declare-fun setRest!14494 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14494 (= setRest!14377 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14494 true) setRest!14494))))

(declare-fun b!2118466 () Bool)

(declare-fun tp!647085 () Bool)

(assert (=> b!2118466 (= e!1348577 tp!647085)))

(assert (= (and setNonEmpty!14377 condSetEmpty!14494) setIsEmpty!14494))

(assert (= (and setNonEmpty!14377 (not condSetEmpty!14494)) setNonEmpty!14494))

(assert (= setNonEmpty!14494 b!2118466))

(declare-fun m!2573298 () Bool)

(assert (=> setNonEmpty!14494 m!2573298))

(declare-fun b!2118467 () Bool)

(declare-fun e!1348578 () Bool)

(declare-fun tp!647086 () Bool)

(declare-fun tp!647087 () Bool)

(assert (=> b!2118467 (= e!1348578 (and tp!647086 tp!647087))))

(assert (=> b!2117362 (= tp!646585 e!1348578)))

(assert (= (and b!2117362 ((_ is Cons!23596) (exprs!1715 (_1!13442 (_1!13443 (h!29000 mapValue!11585)))))) b!2118467))

(declare-fun condSetEmpty!14495 () Bool)

(assert (=> setNonEmpty!14379 (= condSetEmpty!14495 (= setRest!14379 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14495 () Bool)

(assert (=> setNonEmpty!14379 setRes!14495))

(declare-fun setIsEmpty!14495 () Bool)

(assert (=> setIsEmpty!14495 setRes!14495))

(declare-fun setNonEmpty!14495 () Bool)

(assert (=> setNonEmpty!14495 (= setRes!14495 true)))

(declare-fun setElem!14495 () Context!2430)

(declare-fun setRest!14495 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14495 (= setRest!14379 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14495 true) setRest!14495))))

(assert (= (and setNonEmpty!14379 condSetEmpty!14495) setIsEmpty!14495))

(assert (= (and setNonEmpty!14379 (not condSetEmpty!14495)) setNonEmpty!14495))

(declare-fun b!2118468 () Bool)

(declare-fun e!1348579 () Bool)

(declare-fun setRes!14496 () Bool)

(assert (=> b!2118468 (= e!1348579 setRes!14496)))

(declare-fun condSetEmpty!14496 () Bool)

(assert (=> b!2118468 (= condSetEmpty!14496 (= (_2!13443 (h!29000 (t!196192 mapDefault!11575))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14496 () Bool)

(assert (=> setIsEmpty!14496 setRes!14496))

(declare-fun setNonEmpty!14496 () Bool)

(assert (=> setNonEmpty!14496 (= setRes!14496 true)))

(declare-fun setElem!14496 () Context!2430)

(declare-fun setRest!14496 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14496 (= (_2!13443 (h!29000 (t!196192 mapDefault!11575))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14496 true) setRest!14496))))

(assert (=> b!2117382 e!1348579))

(assert (= (and b!2118468 condSetEmpty!14496) setIsEmpty!14496))

(assert (= (and b!2118468 (not condSetEmpty!14496)) setNonEmpty!14496))

(assert (= (and b!2117382 ((_ is Cons!23599) (t!196192 mapDefault!11575))) b!2118468))

(declare-fun b!2118469 () Bool)

(declare-fun e!1348580 () Bool)

(declare-fun tp!647088 () Bool)

(declare-fun tp!647089 () Bool)

(assert (=> b!2118469 (= e!1348580 (and tp!647088 tp!647089))))

(assert (=> b!2117471 (= tp!646683 e!1348580)))

(assert (= (and b!2117471 ((_ is Cons!23596) (exprs!1715 (_2!13440 (_1!13441 (h!28998 mapDefault!11591)))))) b!2118469))

(declare-fun b!2118470 () Bool)

(declare-fun e!1348581 () Bool)

(declare-fun tp!647090 () Bool)

(declare-fun tp!647091 () Bool)

(assert (=> b!2118470 (= e!1348581 (and tp!647090 tp!647091))))

(assert (=> b!2117516 (= tp!646748 e!1348581)))

(assert (= (and b!2117516 ((_ is Cons!23596) (exprs!1715 setElem!14384))) b!2118470))

(declare-fun b!2118471 () Bool)

(declare-fun e!1348582 () Bool)

(declare-fun tp!647092 () Bool)

(declare-fun tp!647093 () Bool)

(assert (=> b!2118471 (= e!1348582 (and tp!647092 tp!647093))))

(assert (=> b!2117366 (= tp!646582 e!1348582)))

(assert (= (and b!2117366 ((_ is Cons!23596) (exprs!1715 setElem!14340))) b!2118471))

(declare-fun b!2118472 () Bool)

(declare-fun e!1348583 () Bool)

(declare-fun tp!647094 () Bool)

(declare-fun tp!647095 () Bool)

(assert (=> b!2118472 (= e!1348583 (and tp!647094 tp!647095))))

(assert (=> b!2117377 (= tp!646598 e!1348583)))

(assert (= (and b!2117377 ((_ is Cons!23596) (exprs!1715 (_1!13442 (_1!13443 (h!29000 mapValue!11569)))))) b!2118472))

(declare-fun b!2118473 () Bool)

(declare-fun e!1348584 () Bool)

(declare-fun tp!647096 () Bool)

(declare-fun tp!647097 () Bool)

(assert (=> b!2118473 (= e!1348584 (and tp!647096 tp!647097))))

(assert (=> b!2117538 (= tp!646757 e!1348584)))

(assert (= (and b!2117538 ((_ is Cons!23596) (exprs!1715 (_1!13442 (_1!13443 (h!29000 mapDefault!11569)))))) b!2118473))

(declare-fun b!2118475 () Bool)

(declare-fun e!1348585 () Bool)

(declare-fun tp!647100 () Bool)

(assert (=> b!2118475 (= e!1348585 tp!647100)))

(declare-fun e!1348586 () Bool)

(assert (=> b!2117435 (= tp!646655 e!1348586)))

(declare-fun setIsEmpty!14497 () Bool)

(declare-fun setRes!14497 () Bool)

(assert (=> setIsEmpty!14497 setRes!14497))

(declare-fun setElem!14497 () Context!2430)

(declare-fun tp!647098 () Bool)

(declare-fun setNonEmpty!14497 () Bool)

(assert (=> setNonEmpty!14497 (= setRes!14497 (and tp!647098 (inv!31182 setElem!14497) e!1348585))))

(declare-fun setRest!14497 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14497 (= (_1!13447 (_1!13448 (h!29002 (t!196194 (minValue!2656 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141)))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14497 true) setRest!14497))))

(declare-fun b!2118474 () Bool)

(declare-fun tp!647099 () Bool)

(assert (=> b!2118474 (= e!1348586 (and setRes!14497 tp!647099))))

(declare-fun condSetEmpty!14497 () Bool)

(assert (=> b!2118474 (= condSetEmpty!14497 (= (_1!13447 (_1!13448 (h!29002 (t!196194 (minValue!2656 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141)))))))))) ((as const (Array Context!2430 Bool)) false)))))

(assert (= (and b!2118474 condSetEmpty!14497) setIsEmpty!14497))

(assert (= (and b!2118474 (not condSetEmpty!14497)) setNonEmpty!14497))

(assert (= setNonEmpty!14497 b!2118475))

(assert (= (and b!2117435 ((_ is Cons!23601) (t!196194 (minValue!2656 (v!28125 (underlying!4991 (v!28126 (underlying!4992 (cache!2693 cacheFurthestNullable!141))))))))) b!2118474))

(declare-fun m!2573300 () Bool)

(assert (=> setNonEmpty!14497 m!2573300))

(declare-fun b!2118478 () Bool)

(declare-fun e!1348587 () Bool)

(declare-fun tp!647101 () Bool)

(assert (=> b!2118478 (= e!1348587 tp!647101)))

(declare-fun b!2118479 () Bool)

(declare-fun tp!647103 () Bool)

(declare-fun tp!647105 () Bool)

(assert (=> b!2118479 (= e!1348587 (and tp!647103 tp!647105))))

(assert (=> b!2117483 (= tp!646700 e!1348587)))

(declare-fun b!2118477 () Bool)

(declare-fun tp!647104 () Bool)

(declare-fun tp!647102 () Bool)

(assert (=> b!2118477 (= e!1348587 (and tp!647104 tp!647102))))

(declare-fun b!2118476 () Bool)

(assert (=> b!2118476 (= e!1348587 tp_is_empty!9479)))

(assert (= (and b!2117483 ((_ is ElementMatch!5645) (regOne!11803 (regOne!11803 r!15373)))) b!2118476))

(assert (= (and b!2117483 ((_ is Concat!9947) (regOne!11803 (regOne!11803 r!15373)))) b!2118477))

(assert (= (and b!2117483 ((_ is Star!5645) (regOne!11803 (regOne!11803 r!15373)))) b!2118478))

(assert (= (and b!2117483 ((_ is Union!5645) (regOne!11803 (regOne!11803 r!15373)))) b!2118479))

(declare-fun b!2118482 () Bool)

(declare-fun e!1348588 () Bool)

(declare-fun tp!647106 () Bool)

(assert (=> b!2118482 (= e!1348588 tp!647106)))

(declare-fun b!2118483 () Bool)

(declare-fun tp!647108 () Bool)

(declare-fun tp!647110 () Bool)

(assert (=> b!2118483 (= e!1348588 (and tp!647108 tp!647110))))

(assert (=> b!2117483 (= tp!646702 e!1348588)))

(declare-fun b!2118481 () Bool)

(declare-fun tp!647109 () Bool)

(declare-fun tp!647107 () Bool)

(assert (=> b!2118481 (= e!1348588 (and tp!647109 tp!647107))))

(declare-fun b!2118480 () Bool)

(assert (=> b!2118480 (= e!1348588 tp_is_empty!9479)))

(assert (= (and b!2117483 ((_ is ElementMatch!5645) (regTwo!11803 (regOne!11803 r!15373)))) b!2118480))

(assert (= (and b!2117483 ((_ is Concat!9947) (regTwo!11803 (regOne!11803 r!15373)))) b!2118481))

(assert (= (and b!2117483 ((_ is Star!5645) (regTwo!11803 (regOne!11803 r!15373)))) b!2118482))

(assert (= (and b!2117483 ((_ is Union!5645) (regTwo!11803 (regOne!11803 r!15373)))) b!2118483))

(declare-fun condSetEmpty!14498 () Bool)

(assert (=> setNonEmpty!14373 (= condSetEmpty!14498 (= setRest!14372 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14498 () Bool)

(assert (=> setNonEmpty!14373 (= tp!646686 setRes!14498)))

(declare-fun setIsEmpty!14498 () Bool)

(assert (=> setIsEmpty!14498 setRes!14498))

(declare-fun setNonEmpty!14498 () Bool)

(declare-fun tp!647111 () Bool)

(declare-fun setElem!14498 () Context!2430)

(declare-fun e!1348589 () Bool)

(assert (=> setNonEmpty!14498 (= setRes!14498 (and tp!647111 (inv!31182 setElem!14498) e!1348589))))

(declare-fun setRest!14498 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14498 (= setRest!14372 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14498 true) setRest!14498))))

(declare-fun b!2118484 () Bool)

(declare-fun tp!647112 () Bool)

(assert (=> b!2118484 (= e!1348589 tp!647112)))

(assert (= (and setNonEmpty!14373 condSetEmpty!14498) setIsEmpty!14498))

(assert (= (and setNonEmpty!14373 (not condSetEmpty!14498)) setNonEmpty!14498))

(assert (= setNonEmpty!14498 b!2118484))

(declare-fun m!2573302 () Bool)

(assert (=> setNonEmpty!14498 m!2573302))

(declare-fun b!2118485 () Bool)

(declare-fun e!1348590 () Bool)

(declare-fun setRes!14499 () Bool)

(assert (=> b!2118485 (= e!1348590 setRes!14499)))

(declare-fun condSetEmpty!14499 () Bool)

(assert (=> b!2118485 (= condSetEmpty!14499 (= (_2!13441 (h!28998 (t!196190 mapValue!11575))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14499 () Bool)

(assert (=> setIsEmpty!14499 setRes!14499))

(declare-fun setNonEmpty!14499 () Bool)

(assert (=> setNonEmpty!14499 (= setRes!14499 true)))

(declare-fun setElem!14499 () Context!2430)

(declare-fun setRest!14499 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14499 (= (_2!13441 (h!28998 (t!196190 mapValue!11575))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14499 true) setRest!14499))))

(assert (=> b!2117530 e!1348590))

(assert (= (and b!2118485 condSetEmpty!14499) setIsEmpty!14499))

(assert (= (and b!2118485 (not condSetEmpty!14499)) setNonEmpty!14499))

(assert (= (and b!2117530 ((_ is Cons!23597) (t!196190 mapValue!11575))) b!2118485))

(declare-fun e!1348591 () Bool)

(assert (=> b!2117452 e!1348591))

(declare-fun setIsEmpty!14500 () Bool)

(declare-fun setRes!14500 () Bool)

(assert (=> setIsEmpty!14500 setRes!14500))

(declare-fun setNonEmpty!14500 () Bool)

(assert (=> setNonEmpty!14500 (= setRes!14500 true)))

(declare-fun setElem!14500 () Context!2430)

(declare-fun setRest!14500 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14500 (= (z!5693 (h!29001 (t!196193 (t!196193 (_2!13444 (_1!13445 lt!793905)))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14500 true) setRest!14500))))

(declare-fun b!2118487 () Bool)

(declare-fun e!1348592 () Bool)

(assert (=> b!2118487 (= e!1348592 setRes!14500)))

(declare-fun condSetEmpty!14500 () Bool)

(assert (=> b!2118487 (= condSetEmpty!14500 (= (z!5693 (h!29001 (t!196193 (t!196193 (_2!13444 (_1!13445 lt!793905)))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118486 () Bool)

(assert (=> b!2118486 (= e!1348591 e!1348592)))

(assert (= (and b!2118487 condSetEmpty!14500) setIsEmpty!14500))

(assert (= (and b!2118487 (not condSetEmpty!14500)) setNonEmpty!14500))

(assert (= b!2118486 b!2118487))

(assert (= (and b!2117452 ((_ is Cons!23600) (t!196193 (t!196193 (_2!13444 (_1!13445 lt!793905)))))) b!2118486))

(declare-fun b!2118488 () Bool)

(declare-fun e!1348593 () Bool)

(declare-fun setRes!14502 () Bool)

(assert (=> b!2118488 (= e!1348593 setRes!14502)))

(declare-fun condSetEmpty!14502 () Bool)

(declare-fun mapDefault!11613 () List!23681)

(assert (=> b!2118488 (= condSetEmpty!14502 (= (_2!13441 (h!28998 mapDefault!11613)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118489 () Bool)

(declare-fun e!1348594 () Bool)

(declare-fun setRes!14501 () Bool)

(assert (=> b!2118489 (= e!1348594 setRes!14501)))

(declare-fun condSetEmpty!14501 () Bool)

(declare-fun mapValue!11613 () List!23681)

(assert (=> b!2118489 (= condSetEmpty!14501 (= (_2!13441 (h!28998 mapValue!11613)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14501 () Bool)

(assert (=> setIsEmpty!14501 setRes!14501))

(declare-fun mapNonEmpty!11613 () Bool)

(declare-fun mapRes!11613 () Bool)

(assert (=> mapNonEmpty!11613 (= mapRes!11613 e!1348594)))

(declare-fun mapKey!11613 () (_ BitVec 32))

(declare-fun mapRest!11613 () (Array (_ BitVec 32) List!23681))

(assert (=> mapNonEmpty!11613 (= mapRest!11579 (store mapRest!11613 mapKey!11613 mapValue!11613))))

(declare-fun setNonEmpty!14501 () Bool)

(assert (=> setNonEmpty!14501 (= setRes!14502 true)))

(declare-fun setElem!14502 () Context!2430)

(declare-fun setRest!14502 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14501 (= (_2!13441 (h!28998 mapDefault!11613)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14502 true) setRest!14502))))

(declare-fun mapIsEmpty!11613 () Bool)

(assert (=> mapIsEmpty!11613 mapRes!11613))

(declare-fun setNonEmpty!14502 () Bool)

(assert (=> setNonEmpty!14502 (= setRes!14501 true)))

(declare-fun setElem!14501 () Context!2430)

(declare-fun setRest!14501 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14502 (= (_2!13441 (h!28998 mapValue!11613)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14501 true) setRest!14501))))

(declare-fun setIsEmpty!14502 () Bool)

(assert (=> setIsEmpty!14502 setRes!14502))

(declare-fun condMapEmpty!11613 () Bool)

(assert (=> mapNonEmpty!11579 (= condMapEmpty!11613 (= mapRest!11579 ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11613)))))

(assert (=> mapNonEmpty!11579 (and e!1348593 mapRes!11613)))

(assert (= (and mapNonEmpty!11579 condMapEmpty!11613) mapIsEmpty!11613))

(assert (= (and mapNonEmpty!11579 (not condMapEmpty!11613)) mapNonEmpty!11613))

(assert (= (and b!2118489 condSetEmpty!14501) setIsEmpty!14501))

(assert (= (and b!2118489 (not condSetEmpty!14501)) setNonEmpty!14502))

(assert (= (and mapNonEmpty!11613 ((_ is Cons!23597) mapValue!11613)) b!2118489))

(assert (= (and b!2118488 condSetEmpty!14502) setIsEmpty!14502))

(assert (= (and b!2118488 (not condSetEmpty!14502)) setNonEmpty!14501))

(assert (= (and mapNonEmpty!11579 ((_ is Cons!23597) mapDefault!11613)) b!2118488))

(declare-fun m!2573304 () Bool)

(assert (=> mapNonEmpty!11613 m!2573304))

(declare-fun b!2118490 () Bool)

(declare-fun e!1348595 () Bool)

(declare-fun setRes!14503 () Bool)

(assert (=> b!2118490 (= e!1348595 setRes!14503)))

(declare-fun condSetEmpty!14503 () Bool)

(assert (=> b!2118490 (= condSetEmpty!14503 (= (_2!13441 (h!28998 mapValue!11579)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14503 () Bool)

(assert (=> setIsEmpty!14503 setRes!14503))

(declare-fun setNonEmpty!14503 () Bool)

(assert (=> setNonEmpty!14503 (= setRes!14503 true)))

(declare-fun setElem!14503 () Context!2430)

(declare-fun setRest!14503 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14503 (= (_2!13441 (h!28998 mapValue!11579)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14503 true) setRest!14503))))

(assert (=> mapNonEmpty!11579 e!1348595))

(assert (= (and b!2118490 condSetEmpty!14503) setIsEmpty!14503))

(assert (= (and b!2118490 (not condSetEmpty!14503)) setNonEmpty!14503))

(assert (= (and mapNonEmpty!11579 ((_ is Cons!23597) mapValue!11579)) b!2118490))

(declare-fun b!2118491 () Bool)

(declare-fun e!1348596 () Bool)

(declare-fun tp!647113 () Bool)

(declare-fun tp!647114 () Bool)

(assert (=> b!2118491 (= e!1348596 (and tp!647113 tp!647114))))

(assert (=> b!2117543 (= tp!646764 e!1348596)))

(assert (= (and b!2117543 ((_ is Cons!23596) (exprs!1715 (_2!13440 (_1!13441 (h!28998 mapDefault!11570)))))) b!2118491))

(declare-fun condSetEmpty!14504 () Bool)

(assert (=> setNonEmpty!14333 (= condSetEmpty!14504 (= setRest!14333 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14504 () Bool)

(assert (=> setNonEmpty!14333 setRes!14504))

(declare-fun setIsEmpty!14504 () Bool)

(assert (=> setIsEmpty!14504 setRes!14504))

(declare-fun setNonEmpty!14504 () Bool)

(assert (=> setNonEmpty!14504 (= setRes!14504 true)))

(declare-fun setElem!14504 () Context!2430)

(declare-fun setRest!14504 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14504 (= setRest!14333 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14504 true) setRest!14504))))

(assert (= (and setNonEmpty!14333 condSetEmpty!14504) setIsEmpty!14504))

(assert (= (and setNonEmpty!14333 (not condSetEmpty!14504)) setNonEmpty!14504))

(declare-fun condSetEmpty!14505 () Bool)

(assert (=> setNonEmpty!14378 (= condSetEmpty!14505 (= setRest!14378 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14505 () Bool)

(assert (=> setNonEmpty!14378 setRes!14505))

(declare-fun setIsEmpty!14505 () Bool)

(assert (=> setIsEmpty!14505 setRes!14505))

(declare-fun setNonEmpty!14505 () Bool)

(assert (=> setNonEmpty!14505 (= setRes!14505 true)))

(declare-fun setElem!14505 () Context!2430)

(declare-fun setRest!14505 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14505 (= setRest!14378 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14505 true) setRest!14505))))

(assert (= (and setNonEmpty!14378 condSetEmpty!14505) setIsEmpty!14505))

(assert (= (and setNonEmpty!14378 (not condSetEmpty!14505)) setNonEmpty!14505))

(declare-fun b!2118492 () Bool)

(declare-fun e!1348597 () Bool)

(declare-fun setRes!14506 () Bool)

(assert (=> b!2118492 (= e!1348597 setRes!14506)))

(declare-fun condSetEmpty!14506 () Bool)

(assert (=> b!2118492 (= condSetEmpty!14506 (= (_2!13443 (h!29000 (t!196192 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905)))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14506 () Bool)

(assert (=> setIsEmpty!14506 setRes!14506))

(declare-fun setNonEmpty!14506 () Bool)

(assert (=> setNonEmpty!14506 (= setRes!14506 true)))

(declare-fun setElem!14506 () Context!2430)

(declare-fun setRest!14506 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14506 (= (_2!13443 (h!29000 (t!196192 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905)))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14506 true) setRest!14506))))

(assert (=> b!2117535 e!1348597))

(assert (= (and b!2118492 condSetEmpty!14506) setIsEmpty!14506))

(assert (= (and b!2118492 (not condSetEmpty!14506)) setNonEmpty!14506))

(assert (= (and b!2117535 ((_ is Cons!23599) (t!196192 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793905)))))))))) b!2118492))

(declare-fun b!2118495 () Bool)

(declare-fun e!1348598 () Bool)

(declare-fun tp!647115 () Bool)

(assert (=> b!2118495 (= e!1348598 tp!647115)))

(declare-fun b!2118496 () Bool)

(declare-fun tp!647117 () Bool)

(declare-fun tp!647119 () Bool)

(assert (=> b!2118496 (= e!1348598 (and tp!647117 tp!647119))))

(assert (=> b!2117425 (= tp!646640 e!1348598)))

(declare-fun b!2118494 () Bool)

(declare-fun tp!647118 () Bool)

(declare-fun tp!647116 () Bool)

(assert (=> b!2118494 (= e!1348598 (and tp!647118 tp!647116))))

(declare-fun b!2118493 () Bool)

(assert (=> b!2118493 (= e!1348598 tp_is_empty!9479)))

(assert (= (and b!2117425 ((_ is ElementMatch!5645) (reg!5974 (reg!5974 r!15373)))) b!2118493))

(assert (= (and b!2117425 ((_ is Concat!9947) (reg!5974 (reg!5974 r!15373)))) b!2118494))

(assert (= (and b!2117425 ((_ is Star!5645) (reg!5974 (reg!5974 r!15373)))) b!2118495))

(assert (= (and b!2117425 ((_ is Union!5645) (reg!5974 (reg!5974 r!15373)))) b!2118496))

(declare-fun condSetEmpty!14507 () Bool)

(assert (=> setNonEmpty!14350 (= condSetEmpty!14507 (= setRest!14350 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14507 () Bool)

(assert (=> setNonEmpty!14350 (= tp!646617 setRes!14507)))

(declare-fun setIsEmpty!14507 () Bool)

(assert (=> setIsEmpty!14507 setRes!14507))

(declare-fun setNonEmpty!14507 () Bool)

(declare-fun tp!647120 () Bool)

(declare-fun setElem!14507 () Context!2430)

(declare-fun e!1348599 () Bool)

(assert (=> setNonEmpty!14507 (= setRes!14507 (and tp!647120 (inv!31182 setElem!14507) e!1348599))))

(declare-fun setRest!14507 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14507 (= setRest!14350 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14507 true) setRest!14507))))

(declare-fun b!2118497 () Bool)

(declare-fun tp!647121 () Bool)

(assert (=> b!2118497 (= e!1348599 tp!647121)))

(assert (= (and setNonEmpty!14350 condSetEmpty!14507) setIsEmpty!14507))

(assert (= (and setNonEmpty!14350 (not condSetEmpty!14507)) setNonEmpty!14507))

(assert (= setNonEmpty!14507 b!2118497))

(declare-fun m!2573306 () Bool)

(assert (=> setNonEmpty!14507 m!2573306))

(declare-fun condSetEmpty!14508 () Bool)

(assert (=> setNonEmpty!14349 (= condSetEmpty!14508 (= setRest!14349 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14508 () Bool)

(assert (=> setNonEmpty!14349 (= tp!646612 setRes!14508)))

(declare-fun setIsEmpty!14508 () Bool)

(assert (=> setIsEmpty!14508 setRes!14508))

(declare-fun setElem!14508 () Context!2430)

(declare-fun e!1348600 () Bool)

(declare-fun tp!647122 () Bool)

(declare-fun setNonEmpty!14508 () Bool)

(assert (=> setNonEmpty!14508 (= setRes!14508 (and tp!647122 (inv!31182 setElem!14508) e!1348600))))

(declare-fun setRest!14508 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14508 (= setRest!14349 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14508 true) setRest!14508))))

(declare-fun b!2118498 () Bool)

(declare-fun tp!647123 () Bool)

(assert (=> b!2118498 (= e!1348600 tp!647123)))

(assert (= (and setNonEmpty!14349 condSetEmpty!14508) setIsEmpty!14508))

(assert (= (and setNonEmpty!14349 (not condSetEmpty!14508)) setNonEmpty!14508))

(assert (= setNonEmpty!14508 b!2118498))

(declare-fun m!2573308 () Bool)

(assert (=> setNonEmpty!14508 m!2573308))

(declare-fun condSetEmpty!14509 () Bool)

(assert (=> setNonEmpty!14340 (= condSetEmpty!14509 (= setRest!14340 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14509 () Bool)

(assert (=> setNonEmpty!14340 (= tp!646584 setRes!14509)))

(declare-fun setIsEmpty!14509 () Bool)

(assert (=> setIsEmpty!14509 setRes!14509))

(declare-fun setNonEmpty!14509 () Bool)

(declare-fun tp!647124 () Bool)

(declare-fun setElem!14509 () Context!2430)

(declare-fun e!1348601 () Bool)

(assert (=> setNonEmpty!14509 (= setRes!14509 (and tp!647124 (inv!31182 setElem!14509) e!1348601))))

(declare-fun setRest!14509 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14509 (= setRest!14340 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14509 true) setRest!14509))))

(declare-fun b!2118499 () Bool)

(declare-fun tp!647125 () Bool)

(assert (=> b!2118499 (= e!1348601 tp!647125)))

(assert (= (and setNonEmpty!14340 condSetEmpty!14509) setIsEmpty!14509))

(assert (= (and setNonEmpty!14340 (not condSetEmpty!14509)) setNonEmpty!14509))

(assert (= setNonEmpty!14509 b!2118499))

(declare-fun m!2573310 () Bool)

(assert (=> setNonEmpty!14509 m!2573310))

(declare-fun b!2118510 () Bool)

(declare-fun e!1348610 () Bool)

(declare-fun lt!794388 () MutLongMap!2398)

(assert (=> b!2118510 (= e!1348610 ((_ is LongMap!2398) lt!794388))))

(assert (=> b!2118510 (= lt!794388 (v!28126 (underlying!4992 (cache!2693 (_2!13451 (fillUpCache!5 (_2!13444 (_1!13445 lt!793905)) totalInput!1306 lt!793906 (_1!13444 (_1!13445 lt!793905)) 0 cacheFurthestNullable!141))))))))

(declare-fun b!2118509 () Bool)

(declare-fun e!1348609 () Bool)

(assert (=> b!2118509 (= e!1348609 e!1348610)))

(declare-fun b!2118508 () Bool)

(declare-fun e!1348608 () Bool)

(assert (=> b!2118508 (= e!1348608 e!1348609)))

(assert (=> d!642750 (= true e!1348608)))

(assert (= b!2118509 b!2118510))

(assert (= (and b!2118508 ((_ is HashMap!2312) (cache!2693 (_2!13451 (fillUpCache!5 (_2!13444 (_1!13445 lt!793905)) totalInput!1306 lt!793906 (_1!13444 (_1!13445 lt!793905)) 0 cacheFurthestNullable!141))))) b!2118509))

(assert (= d!642750 b!2118508))

(declare-fun condSetEmpty!14510 () Bool)

(assert (=> setNonEmpty!14400 (= condSetEmpty!14510 (= setRest!14400 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14510 () Bool)

(assert (=> setNonEmpty!14400 (= tp!646761 setRes!14510)))

(declare-fun setIsEmpty!14510 () Bool)

(assert (=> setIsEmpty!14510 setRes!14510))

(declare-fun setElem!14510 () Context!2430)

(declare-fun tp!647126 () Bool)

(declare-fun setNonEmpty!14510 () Bool)

(declare-fun e!1348611 () Bool)

(assert (=> setNonEmpty!14510 (= setRes!14510 (and tp!647126 (inv!31182 setElem!14510) e!1348611))))

(declare-fun setRest!14510 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14510 (= setRest!14400 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14510 true) setRest!14510))))

(declare-fun b!2118511 () Bool)

(declare-fun tp!647127 () Bool)

(assert (=> b!2118511 (= e!1348611 tp!647127)))

(assert (= (and setNonEmpty!14400 condSetEmpty!14510) setIsEmpty!14510))

(assert (= (and setNonEmpty!14400 (not condSetEmpty!14510)) setNonEmpty!14510))

(assert (= setNonEmpty!14510 b!2118511))

(declare-fun m!2573312 () Bool)

(assert (=> setNonEmpty!14510 m!2573312))

(declare-fun b!2118512 () Bool)

(declare-fun e!1348612 () Bool)

(declare-fun setRes!14511 () Bool)

(assert (=> b!2118512 (= e!1348612 setRes!14511)))

(declare-fun condSetEmpty!14511 () Bool)

(assert (=> b!2118512 (= condSetEmpty!14511 (= (_2!13443 (h!29000 mapDefault!11579)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14511 () Bool)

(assert (=> setIsEmpty!14511 setRes!14511))

(declare-fun setNonEmpty!14511 () Bool)

(assert (=> setNonEmpty!14511 (= setRes!14511 true)))

(declare-fun setElem!14511 () Context!2430)

(declare-fun setRest!14511 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14511 (= (_2!13443 (h!29000 mapDefault!11579)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14511 true) setRest!14511))))

(assert (=> b!2117221 e!1348612))

(assert (= (and b!2118512 condSetEmpty!14511) setIsEmpty!14511))

(assert (= (and b!2118512 (not condSetEmpty!14511)) setNonEmpty!14511))

(assert (= (and b!2117221 ((_ is Cons!23599) mapDefault!11579)) b!2118512))

(declare-fun condSetEmpty!14512 () Bool)

(assert (=> setNonEmpty!14396 (= condSetEmpty!14512 (= setRest!14396 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14512 () Bool)

(assert (=> setNonEmpty!14396 (= tp!646758 setRes!14512)))

(declare-fun setIsEmpty!14512 () Bool)

(assert (=> setIsEmpty!14512 setRes!14512))

(declare-fun setElem!14512 () Context!2430)

(declare-fun tp!647128 () Bool)

(declare-fun setNonEmpty!14512 () Bool)

(declare-fun e!1348613 () Bool)

(assert (=> setNonEmpty!14512 (= setRes!14512 (and tp!647128 (inv!31182 setElem!14512) e!1348613))))

(declare-fun setRest!14512 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14512 (= setRest!14396 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14512 true) setRest!14512))))

(declare-fun b!2118513 () Bool)

(declare-fun tp!647129 () Bool)

(assert (=> b!2118513 (= e!1348613 tp!647129)))

(assert (= (and setNonEmpty!14396 condSetEmpty!14512) setIsEmpty!14512))

(assert (= (and setNonEmpty!14396 (not condSetEmpty!14512)) setNonEmpty!14512))

(assert (= setNonEmpty!14512 b!2118513))

(declare-fun m!2573314 () Bool)

(assert (=> setNonEmpty!14512 m!2573314))

(declare-fun b!2118514 () Bool)

(declare-fun e!1348614 () Bool)

(declare-fun setRes!14513 () Bool)

(assert (=> b!2118514 (= e!1348614 setRes!14513)))

(declare-fun condSetEmpty!14513 () Bool)

(assert (=> b!2118514 (= condSetEmpty!14513 (= (_2!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793988))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14513 () Bool)

(assert (=> setIsEmpty!14513 setRes!14513))

(declare-fun setNonEmpty!14513 () Bool)

(assert (=> setNonEmpty!14513 (= setRes!14513 true)))

(declare-fun setElem!14513 () Context!2430)

(declare-fun setRest!14513 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14513 (= (_2!13443 (h!29000 (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793988))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14513 true) setRest!14513))))

(assert (=> b!2117248 e!1348614))

(assert (= (and b!2118514 condSetEmpty!14513) setIsEmpty!14513))

(assert (= (and b!2118514 (not condSetEmpty!14513)) setNonEmpty!14513))

(assert (= (and b!2117248 ((_ is Cons!23599) (zeroValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793988))))))))) b!2118514))

(declare-fun b!2118515 () Bool)

(declare-fun e!1348615 () Bool)

(declare-fun setRes!14514 () Bool)

(assert (=> b!2118515 (= e!1348615 setRes!14514)))

(declare-fun condSetEmpty!14514 () Bool)

(assert (=> b!2118515 (= condSetEmpty!14514 (= (_2!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793988))))))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14514 () Bool)

(assert (=> setIsEmpty!14514 setRes!14514))

(declare-fun setNonEmpty!14514 () Bool)

(assert (=> setNonEmpty!14514 (= setRes!14514 true)))

(declare-fun setElem!14514 () Context!2430)

(declare-fun setRest!14514 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14514 (= (_2!13443 (h!29000 (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793988))))))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14514 true) setRest!14514))))

(assert (=> b!2117248 e!1348615))

(assert (= (and b!2118515 condSetEmpty!14514) setIsEmpty!14514))

(assert (= (and b!2118515 (not condSetEmpty!14514)) setNonEmpty!14514))

(assert (= (and b!2117248 ((_ is Cons!23599) (minValue!2655 (v!28122 (underlying!4988 (v!28123 (underlying!4989 (cache!2691 (_2!13445 lt!793988))))))))) b!2118515))

(declare-fun condSetEmpty!14515 () Bool)

(assert (=> setNonEmpty!14362 (= condSetEmpty!14515 (= setRest!14363 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14515 () Bool)

(assert (=> setNonEmpty!14362 setRes!14515))

(declare-fun setIsEmpty!14515 () Bool)

(assert (=> setIsEmpty!14515 setRes!14515))

(declare-fun setNonEmpty!14515 () Bool)

(assert (=> setNonEmpty!14515 (= setRes!14515 true)))

(declare-fun setElem!14515 () Context!2430)

(declare-fun setRest!14515 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14515 (= setRest!14363 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14515 true) setRest!14515))))

(assert (= (and setNonEmpty!14362 condSetEmpty!14515) setIsEmpty!14515))

(assert (= (and setNonEmpty!14362 (not condSetEmpty!14515)) setNonEmpty!14515))

(declare-fun b!2118518 () Bool)

(declare-fun e!1348616 () Bool)

(declare-fun tp!647130 () Bool)

(assert (=> b!2118518 (= e!1348616 tp!647130)))

(declare-fun b!2118519 () Bool)

(declare-fun tp!647132 () Bool)

(declare-fun tp!647134 () Bool)

(assert (=> b!2118519 (= e!1348616 (and tp!647132 tp!647134))))

(assert (=> b!2117492 (= tp!646711 e!1348616)))

(declare-fun b!2118517 () Bool)

(declare-fun tp!647133 () Bool)

(declare-fun tp!647131 () Bool)

(assert (=> b!2118517 (= e!1348616 (and tp!647133 tp!647131))))

(declare-fun b!2118516 () Bool)

(assert (=> b!2118516 (= e!1348616 tp_is_empty!9479)))

(assert (= (and b!2117492 ((_ is ElementMatch!5645) (reg!5974 (regOne!11802 r!15373)))) b!2118516))

(assert (= (and b!2117492 ((_ is Concat!9947) (reg!5974 (regOne!11802 r!15373)))) b!2118517))

(assert (= (and b!2117492 ((_ is Star!5645) (reg!5974 (regOne!11802 r!15373)))) b!2118518))

(assert (= (and b!2117492 ((_ is Union!5645) (reg!5974 (regOne!11802 r!15373)))) b!2118519))

(declare-fun condSetEmpty!14516 () Bool)

(assert (=> setNonEmpty!14399 (= condSetEmpty!14516 (= setRest!14399 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14516 () Bool)

(assert (=> setNonEmpty!14399 setRes!14516))

(declare-fun setIsEmpty!14516 () Bool)

(assert (=> setIsEmpty!14516 setRes!14516))

(declare-fun setNonEmpty!14516 () Bool)

(assert (=> setNonEmpty!14516 (= setRes!14516 true)))

(declare-fun setElem!14516 () Context!2430)

(declare-fun setRest!14516 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14516 (= setRest!14399 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14516 true) setRest!14516))))

(assert (= (and setNonEmpty!14399 condSetEmpty!14516) setIsEmpty!14516))

(assert (= (and setNonEmpty!14399 (not condSetEmpty!14516)) setNonEmpty!14516))

(declare-fun b!2118520 () Bool)

(declare-fun e!1348617 () Bool)

(declare-fun tp!647135 () Bool)

(declare-fun tp!647136 () Bool)

(assert (=> b!2118520 (= e!1348617 (and tp!647135 tp!647136))))

(assert (=> b!2117434 (= tp!646653 e!1348617)))

(assert (= (and b!2117434 ((_ is Cons!23596) (exprs!1715 setElem!14356))) b!2118520))

(declare-fun e!1348618 () Bool)

(assert (=> b!2117156 e!1348618))

(declare-fun setIsEmpty!14517 () Bool)

(declare-fun setRes!14517 () Bool)

(assert (=> setIsEmpty!14517 setRes!14517))

(declare-fun setNonEmpty!14517 () Bool)

(assert (=> setNonEmpty!14517 (= setRes!14517 true)))

(declare-fun setElem!14517 () Context!2430)

(declare-fun setRest!14517 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14517 (= (z!5693 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793929))))) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14517 true) setRest!14517))))

(declare-fun b!2118522 () Bool)

(declare-fun e!1348619 () Bool)

(assert (=> b!2118522 (= e!1348619 setRes!14517)))

(declare-fun condSetEmpty!14517 () Bool)

(assert (=> b!2118522 (= condSetEmpty!14517 (= (z!5693 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793929))))) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118521 () Bool)

(assert (=> b!2118521 (= e!1348618 e!1348619)))

(assert (= (and b!2118522 condSetEmpty!14517) setIsEmpty!14517))

(assert (= (and b!2118522 (not condSetEmpty!14517)) setNonEmpty!14517))

(assert (= b!2118521 b!2118522))

(assert (= (and b!2117156 ((_ is Cons!23600) (t!196193 (_2!13444 (_1!13445 lt!793929))))) b!2118521))

(declare-fun b!2118523 () Bool)

(declare-fun e!1348620 () Bool)

(declare-fun tp!647137 () Bool)

(declare-fun tp!647138 () Bool)

(assert (=> b!2118523 (= e!1348620 (and tp!647137 tp!647138))))

(assert (=> b!2117396 (= tp!646620 e!1348620)))

(assert (= (and b!2117396 ((_ is Cons!23596) (exprs!1715 (_2!13440 (_1!13441 (h!28998 (minValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))))))) b!2118523))

(declare-fun condSetEmpty!14518 () Bool)

(assert (=> setNonEmpty!14364 (= condSetEmpty!14518 (= setRest!14364 ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setRes!14518 () Bool)

(assert (=> setNonEmpty!14364 setRes!14518))

(declare-fun setIsEmpty!14518 () Bool)

(assert (=> setIsEmpty!14518 setRes!14518))

(declare-fun setNonEmpty!14518 () Bool)

(assert (=> setNonEmpty!14518 (= setRes!14518 true)))

(declare-fun setElem!14518 () Context!2430)

(declare-fun setRest!14518 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14518 (= setRest!14364 ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14518 true) setRest!14518))))

(assert (= (and setNonEmpty!14364 condSetEmpty!14518) setIsEmpty!14518))

(assert (= (and setNonEmpty!14364 (not condSetEmpty!14518)) setNonEmpty!14518))

(declare-fun b!2118524 () Bool)

(declare-fun e!1348621 () Bool)

(declare-fun setRes!14520 () Bool)

(assert (=> b!2118524 (= e!1348621 setRes!14520)))

(declare-fun condSetEmpty!14520 () Bool)

(declare-fun mapDefault!11614 () List!23681)

(assert (=> b!2118524 (= condSetEmpty!14520 (= (_2!13441 (h!28998 mapDefault!11614)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun b!2118525 () Bool)

(declare-fun e!1348622 () Bool)

(declare-fun setRes!14519 () Bool)

(assert (=> b!2118525 (= e!1348622 setRes!14519)))

(declare-fun condSetEmpty!14519 () Bool)

(declare-fun mapValue!11614 () List!23681)

(assert (=> b!2118525 (= condSetEmpty!14519 (= (_2!13441 (h!28998 mapValue!11614)) ((as const (Array Context!2430 Bool)) false)))))

(declare-fun setIsEmpty!14519 () Bool)

(assert (=> setIsEmpty!14519 setRes!14519))

(declare-fun mapNonEmpty!11614 () Bool)

(declare-fun mapRes!11614 () Bool)

(assert (=> mapNonEmpty!11614 (= mapRes!11614 e!1348622)))

(declare-fun mapKey!11614 () (_ BitVec 32))

(declare-fun mapRest!11614 () (Array (_ BitVec 32) List!23681))

(assert (=> mapNonEmpty!11614 (= mapRest!11597 (store mapRest!11614 mapKey!11614 mapValue!11614))))

(declare-fun setNonEmpty!14519 () Bool)

(assert (=> setNonEmpty!14519 (= setRes!14520 true)))

(declare-fun setElem!14520 () Context!2430)

(declare-fun setRest!14520 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14519 (= (_2!13441 (h!28998 mapDefault!11614)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14520 true) setRest!14520))))

(declare-fun mapIsEmpty!11614 () Bool)

(assert (=> mapIsEmpty!11614 mapRes!11614))

(declare-fun setNonEmpty!14520 () Bool)

(assert (=> setNonEmpty!14520 (= setRes!14519 true)))

(declare-fun setElem!14519 () Context!2430)

(declare-fun setRest!14519 () (InoxSet Context!2430))

(assert (=> setNonEmpty!14520 (= (_2!13441 (h!28998 mapValue!11614)) ((_ map or) (store ((as const (Array Context!2430 Bool)) false) setElem!14519 true) setRest!14519))))

(declare-fun setIsEmpty!14520 () Bool)

(assert (=> setIsEmpty!14520 setRes!14520))

(declare-fun condMapEmpty!11614 () Bool)

(assert (=> mapNonEmpty!11597 (= condMapEmpty!11614 (= mapRest!11597 ((as const (Array (_ BitVec 32) List!23681)) mapDefault!11614)))))

(assert (=> mapNonEmpty!11597 (and e!1348621 mapRes!11614)))

(assert (= (and mapNonEmpty!11597 condMapEmpty!11614) mapIsEmpty!11614))

(assert (= (and mapNonEmpty!11597 (not condMapEmpty!11614)) mapNonEmpty!11614))

(assert (= (and b!2118525 condSetEmpty!14519) setIsEmpty!14519))

(assert (= (and b!2118525 (not condSetEmpty!14519)) setNonEmpty!14520))

(assert (= (and mapNonEmpty!11614 ((_ is Cons!23597) mapValue!11614)) b!2118525))

(assert (= (and b!2118524 condSetEmpty!14520) setIsEmpty!14520))

(assert (= (and b!2118524 (not condSetEmpty!14520)) setNonEmpty!14519))

(assert (= (and mapNonEmpty!11597 ((_ is Cons!23597) mapDefault!11614)) b!2118524))

(declare-fun m!2573316 () Bool)

(assert (=> mapNonEmpty!11614 m!2573316))

(declare-fun b!2118526 () Bool)

(declare-fun e!1348623 () Bool)

(declare-fun tp!647139 () Bool)

(declare-fun tp!647140 () Bool)

(assert (=> b!2118526 (= e!1348623 (and tp!647139 tp!647140))))

(assert (=> b!2117393 (= tp!646615 e!1348623)))

(assert (= (and b!2117393 ((_ is Cons!23596) (exprs!1715 (_2!13440 (_1!13441 (h!28998 (zeroValue!2654 (v!28121 (underlying!4987 (v!28124 (underlying!4990 (cache!2692 cacheDown!1229)))))))))))) b!2118526))

(declare-fun tp!647142 () Bool)

(declare-fun b!2118527 () Bool)

(declare-fun e!1348625 () Bool)

(declare-fun tp!647143 () Bool)

(assert (=> b!2118527 (= e!1348625 (and (inv!31175 (left!18281 (left!18281 (c!339387 input!6660)))) tp!647143 (inv!31175 (right!18611 (left!18281 (c!339387 input!6660)))) tp!647142))))

(declare-fun b!2118529 () Bool)

(declare-fun e!1348624 () Bool)

(declare-fun tp!647141 () Bool)

(assert (=> b!2118529 (= e!1348624 tp!647141)))

(declare-fun b!2118528 () Bool)

(assert (=> b!2118528 (= e!1348625 (and (inv!31183 (xs!10726 (left!18281 (c!339387 input!6660)))) e!1348624))))

(assert (=> b!2117454 (= tp!646659 (and (inv!31175 (left!18281 (c!339387 input!6660))) e!1348625))))

(assert (= (and b!2117454 ((_ is Node!7784) (left!18281 (c!339387 input!6660)))) b!2118527))

(assert (= b!2118528 b!2118529))

(assert (= (and b!2117454 ((_ is Leaf!11374) (left!18281 (c!339387 input!6660)))) b!2118528))

(declare-fun m!2573318 () Bool)

(assert (=> b!2118527 m!2573318))

(declare-fun m!2573320 () Bool)

(assert (=> b!2118527 m!2573320))

(declare-fun m!2573322 () Bool)

(assert (=> b!2118528 m!2573322))

(assert (=> b!2117454 m!2572209))

(declare-fun b!2118530 () Bool)

(declare-fun tp!647145 () Bool)

(declare-fun e!1348627 () Bool)

(declare-fun tp!647146 () Bool)

(assert (=> b!2118530 (= e!1348627 (and (inv!31175 (left!18281 (right!18611 (c!339387 input!6660)))) tp!647146 (inv!31175 (right!18611 (right!18611 (c!339387 input!6660)))) tp!647145))))

(declare-fun b!2118532 () Bool)

(declare-fun e!1348626 () Bool)

(declare-fun tp!647144 () Bool)

(assert (=> b!2118532 (= e!1348626 tp!647144)))

(declare-fun b!2118531 () Bool)

(assert (=> b!2118531 (= e!1348627 (and (inv!31183 (xs!10726 (right!18611 (c!339387 input!6660)))) e!1348626))))

(assert (=> b!2117454 (= tp!646658 (and (inv!31175 (right!18611 (c!339387 input!6660))) e!1348627))))

(assert (= (and b!2117454 ((_ is Node!7784) (right!18611 (c!339387 input!6660)))) b!2118530))

(assert (= b!2118531 b!2118532))

(assert (= (and b!2117454 ((_ is Leaf!11374) (right!18611 (c!339387 input!6660)))) b!2118531))

(declare-fun m!2573324 () Bool)

(assert (=> b!2118530 m!2573324))

(declare-fun m!2573326 () Bool)

(assert (=> b!2118530 m!2573326))

(declare-fun m!2573328 () Bool)

(assert (=> b!2118531 m!2573328))

(assert (=> b!2117454 m!2572211))

(declare-fun b!2118535 () Bool)

(declare-fun e!1348628 () Bool)

(declare-fun tp!647147 () Bool)

(assert (=> b!2118535 (= e!1348628 tp!647147)))

(declare-fun b!2118536 () Bool)

(declare-fun tp!647149 () Bool)

(declare-fun tp!647151 () Bool)

(assert (=> b!2118536 (= e!1348628 (and tp!647149 tp!647151))))

(assert (=> b!2117486 (= tp!646703 e!1348628)))

(declare-fun b!2118534 () Bool)

(declare-fun tp!647150 () Bool)

(declare-fun tp!647148 () Bool)

(assert (=> b!2118534 (= e!1348628 (and tp!647150 tp!647148))))

(declare-fun b!2118533 () Bool)

(assert (=> b!2118533 (= e!1348628 tp_is_empty!9479)))

(assert (= (and b!2117486 ((_ is ElementMatch!5645) (reg!5974 (regTwo!11803 r!15373)))) b!2118533))

(assert (= (and b!2117486 ((_ is Concat!9947) (reg!5974 (regTwo!11803 r!15373)))) b!2118534))

(assert (= (and b!2117486 ((_ is Star!5645) (reg!5974 (regTwo!11803 r!15373)))) b!2118535))

(assert (= (and b!2117486 ((_ is Union!5645) (reg!5974 (regTwo!11803 r!15373)))) b!2118536))

(declare-fun b_lambda!70423 () Bool)

(assert (= b_lambda!70407 (or d!642682 b_lambda!70423)))

(declare-fun bs!442081 () Bool)

(declare-fun d!643072 () Bool)

(assert (= bs!442081 (and d!643072 d!642682)))

(assert (=> bs!442081 (= (dynLambda!11302 lambda!78314 (h!29001 Nil!23600)) (= (res!918218 (h!29001 Nil!23600)) lt!793980))))

(assert (=> b!2117837 d!643072))

(declare-fun b_lambda!70425 () Bool)

(assert (= b_lambda!70409 (or d!642684 b_lambda!70425)))

(declare-fun bs!442082 () Bool)

(declare-fun d!643074 () Bool)

(assert (= bs!442082 (and d!643074 d!642684)))

(assert (=> bs!442082 (= (dynLambda!11302 lambda!78320 (h!29001 (_2!13444 (_1!13445 lt!793988)))) (= (totalInput!2862 (h!29001 (_2!13444 (_1!13445 lt!793988)))) totalInput!1306))))

(assert (=> b!2117839 d!643074))

(declare-fun b_lambda!70427 () Bool)

(assert (= b_lambda!70403 (or b!2117207 b_lambda!70427)))

(declare-fun bs!442083 () Bool)

(declare-fun d!643076 () Bool)

(assert (= bs!442083 (and d!643076 b!2117207)))

(assert (=> bs!442083 (= (dynLambda!11302 lambda!78318 (h!29001 (_2!13444 (_1!13445 lt!793984)))) (= (totalInput!2862 (h!29001 (_2!13444 (_1!13445 lt!793984)))) totalInput!1306))))

(assert (=> b!2117733 d!643076))

(declare-fun b_lambda!70429 () Bool)

(assert (= b_lambda!70417 (or b!2117209 b_lambda!70429)))

(declare-fun bs!442084 () Bool)

(declare-fun d!643078 () Bool)

(assert (= bs!442084 (and d!643078 b!2117209)))

(assert (=> bs!442084 (= (dynLambda!11302 lambda!78317 (h!29001 (_2!13444 (_1!13445 lt!793984)))) (= (res!918218 (h!29001 (_2!13444 (_1!13445 lt!793984)))) (_1!13444 (_1!13445 lt!793984))))))

(assert (=> b!2118094 d!643078))

(declare-fun b_lambda!70431 () Bool)

(assert (= b_lambda!70419 (or b!2117039 b_lambda!70431)))

(declare-fun bs!442085 () Bool)

(declare-fun d!643080 () Bool)

(assert (= bs!442085 (and d!643080 b!2117039)))

(assert (=> bs!442085 (= (dynLambda!11302 lambda!78293 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793905))))) (= (totalInput!2862 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793905))))) totalInput!1306))))

(assert (=> b!2118108 d!643080))

(declare-fun b_lambda!70433 () Bool)

(assert (= b_lambda!70415 (or d!642672 b_lambda!70433)))

(declare-fun bs!442086 () Bool)

(declare-fun d!643082 () Bool)

(assert (= bs!442086 (and d!643082 d!642672)))

(assert (=> bs!442086 (= (dynLambda!11302 lambda!78299 (h!29001 (_2!13444 (_1!13445 lt!793929)))) (= (totalInput!2862 (h!29001 (_2!13444 (_1!13445 lt!793929)))) totalInput!1306))))

(assert (=> b!2117935 d!643082))

(declare-fun b_lambda!70435 () Bool)

(assert (= b_lambda!70405 (or b!2117069 b_lambda!70435)))

(declare-fun bs!442087 () Bool)

(declare-fun d!643084 () Bool)

(assert (= bs!442087 (and d!643084 b!2117069)))

(assert (=> bs!442087 (= (dynLambda!11302 lambda!78292 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793905))))) (= (res!918218 (h!29001 (t!196193 (_2!13444 (_1!13445 lt!793905))))) (_1!13444 (_1!13445 lt!793905))))))

(assert (=> b!2117800 d!643084))

(declare-fun b_lambda!70437 () Bool)

(assert (= b_lambda!70411 (or d!642684 b_lambda!70437)))

(declare-fun bs!442088 () Bool)

(declare-fun d!643086 () Bool)

(assert (= bs!442088 (and d!643086 d!642684)))

(assert (=> bs!442088 (= (dynLambda!11302 lambda!78319 (h!29001 (_2!13444 (_1!13445 lt!793988)))) (= (res!918218 (h!29001 (_2!13444 (_1!13445 lt!793988)))) (_1!13444 (_1!13445 lt!793988))))))

(assert (=> b!2117841 d!643086))

(declare-fun b_lambda!70439 () Bool)

(assert (= b_lambda!70413 (or d!642672 b_lambda!70439)))

(declare-fun bs!442089 () Bool)

(declare-fun d!643088 () Bool)

(assert (= bs!442089 (and d!643088 d!642672)))

(assert (=> bs!442089 (= (dynLambda!11302 lambda!78298 (h!29001 (_2!13444 (_1!13445 lt!793929)))) (= (res!918218 (h!29001 (_2!13444 (_1!13445 lt!793929)))) (_1!13444 (_1!13445 lt!793929))))))

(assert (=> b!2117928 d!643088))

(check-sat (not b!2118462) (not b!2117548) (not d!642860) (not setNonEmpty!14444) (not b!2118269) (not setNonEmpty!14483) (not setNonEmpty!14414) (not b!2118447) (not setNonEmpty!14403) (not setNonEmpty!14432) (not b!2117566) (not b!2118129) (not setNonEmpty!14471) (not b!2118371) (not b!2118099) (not d!642786) (not d!643046) (not b!2118483) (not d!643008) (not b!2118406) (not b!2118384) (not b_lambda!70427) (not setNonEmpty!14415) (not d!643014) (not b!2117912) (not b!2118019) (not b!2117812) (not setNonEmpty!14439) (not d!643022) (not setNonEmpty!14516) (not b!2118059) (not b!2118424) (not bm!128637) (not b!2117768) b_and!170985 (not d!642988) (not b!2117725) (not b!2117913) (not b!2118107) (not b!2118426) (not b!2117531) (not b!2117616) (not d!643044) (not bm!128658) (not b!2118187) (not b!2118130) (not b!2118473) (not b!2118496) (not b!2118414) (not b!2118511) (not b!2118387) (not b!2118110) (not setNonEmpty!14425) (not setNonEmpty!14490) (not setNonEmpty!14503) (not b!2118182) (not b!2118183) (not b!2118495) (not b_next!62101) (not b!2118465) (not b!2118200) (not b!2118036) (not d!642816) (not b!2117897) (not b!2118482) (not b!2118053) (not b!2117848) (not d!643034) (not setNonEmpty!14475) (not b!2118155) (not b!2118223) (not d!642908) (not b!2118114) (not b!2118227) (not bm!128656) (not b!2118369) (not setNonEmpty!14515) (not b!2118362) (not bm!128635) (not b!2117734) (not setNonEmpty!14513) (not d!643040) (not mapNonEmpty!11605) (not mapNonEmpty!11599) (not b!2118234) (not b!2118474) (not d!642972) (not setNonEmpty!14421) (not b!2118190) (not b!2117926) (not b!2118535) (not b!2118365) (not setNonEmpty!14455) (not b!2118363) (not b!2117711) (not b!2117766) (not b!2118267) (not b!2118524) (not d!642848) (not setNonEmpty!14489) (not b!2118479) (not b!2118367) (not b!2118160) (not setNonEmpty!14498) (not b!2118475) (not setNonEmpty!14441) (not b!2118252) (not b!2117806) (not bm!128611) (not setNonEmpty!14401) (not b_next!62107) (not b!2118468) (not b!2118334) (not b!2118461) (not b!2117556) (not b!2118038) (not b!2118338) (not b!2118281) (not b!2118013) (not b!2118345) (not b!2118394) (not setNonEmpty!14422) (not mapNonEmpty!11610) (not b!2118233) (not b!2117950) (not b!2118045) (not d!642852) (not b!2117879) (not b!2117941) (not b!2118512) (not b!2118049) (not b!2117727) (not b!2118257) (not d!643052) (not d!642902) (not b!2118391) (not b!2118232) (not d!642854) (not b!2118057) (not b!2118035) (not d!643064) (not bm!128636) (not setNonEmpty!14440) (not setNonEmpty!14457) (not b!2118337) (not setNonEmpty!14492) (not d!642928) (not d!642896) (not b!2118040) (not b!2118443) (not b!2117629) (not mapNonEmpty!11600) (not b!2117965) (not mapNonEmpty!11607) (not b!2118513) (not d!643018) (not b!2118373) (not setNonEmpty!14449) (not d!643016) (not b!2117798) (not b!2118048) (not b!2118459) (not bm!128613) (not b!2118282) (not b!2117999) (not b!2118195) (not b!2118125) (not b!2117632) (not b!2117844) (not bm!128630) (not setNonEmpty!14506) (not b!2117650) (not b!2117626) (not b!2118054) (not d!642958) (not b!2118058) (not b!2117917) (not d!642950) (not b!2118274) (not setNonEmpty!14487) (not b!2118095) (not d!642842) (not b!2118174) (not b!2118098) (not d!642914) (not b!2117631) (not b!2118488) (not b!2118203) (not b!2118245) (not b!2118153) (not d!642800) (not b!2118526) (not b!2118261) (not b!2118239) (not b!2118403) (not mapNonEmpty!11614) (not b!2118514) (not d!643028) (not b!2118433) (not b!2118055) (not b!2118454) (not b!2117731) (not b!2117903) (not b!2118410) (not d!642886) (not b!2118519) (not b!2117923) (not b!2117958) (not b!2118009) (not b!2117857) (not b!2117909) (not setNonEmpty!14470) (not b!2118428) (not b!2118438) (not d!643036) (not b!2118270) b_and!170977 (not b!2118408) (not b!2118486) (not b!2118341) (not setNonEmpty!14420) (not b!2118458) (not b!2118439) (not b!2118050) (not d!643054) (not b!2118248) (not b!2118167) (not b!2118490) (not b!2118366) (not bm!128633) (not b!2117831) (not b!2118209) (not b!2118198) (not b!2117623) (not bm!128619) (not d!642920) (not d!643058) (not b!2118109) (not b!2117777) (not b!2118472) (not setNonEmpty!14500) (not b!2117870) (not b_next!62103) (not setNonEmpty!14409) (not setNonEmpty!14496) (not b!2118518) (not b!2118339) b_and!170979 (not setNonEmpty!14486) (not b!2117613) (not b!2118393) (not d!642804) (not b!2118177) (not b!2118432) (not b!2118171) (not d!642962) (not b!2118418) (not b!2118456) (not d!642966) (not mapNonEmpty!11601) (not b!2118523) (not b!2117885) b_and!170983 (not setNonEmpty!14460) (not b!2118268) (not b!2117614) (not b!2118027) (not b!2117609) (not d!643056) (not b!2118525) (not d!642906) (not d!642838) (not b!2118492) (not b!2117816) (not b!2118529) (not setNonEmpty!14454) (not d!642936) (not setNonEmpty!14418) (not d!642866) (not b_next!62109) (not bm!128660) (not b!2118247) (not b!2118150) (not b!2117813) (not setNonEmpty!14484) (not mapNonEmpty!11598) (not b!2118431) (not b!2118250) (not d!642996) (not b!2117772) (not b!2118427) (not b!2118397) (not setNonEmpty!14410) (not b!2118407) (not d!642990) (not b!2118241) (not d!642878) (not b!2118164) (not setNonEmpty!14480) (not b!2117858) (not setNonEmpty!14424) (not d!642982) (not b!2118205) (not b!2117747) (not setNonEmpty!14509) (not setNonEmpty!14478) (not d!642968) (not d!642912) (not b!2118401) (not b!2117807) (not b!2118336) (not b!2118416) (not setNonEmpty!14445) (not b!2118342) (not setNonEmpty!14474) (not setNonEmpty!14423) (not b!2118169) (not b!2118398) (not b!2117723) (not b!2117946) (not b!2118491) (not b!2118534) (not setNonEmpty!14431) (not b!2117710) (not b!2118350) (not setNonEmpty!14504) (not b!2117621) (not d!643042) (not d!642776) (not b!2118260) (not d!642900) (not setNonEmpty!14412) (not b!2118184) (not setNonEmpty!14479) (not setNonEmpty!14465) (not b!2118396) (not bm!128654) (not b!2117454) (not b!2118047) (not b!2117718) (not b!2118258) (not setNonEmpty!14520) (not mapNonEmpty!11604) (not setNonEmpty!14442) (not b!2118196) (not b!2118368) (not b!2117842) (not b!2118163) (not b!2117587) (not d!642798) (not setNonEmpty!14462) (not b!2118264) (not setNonEmpty!14467) (not setNonEmpty!14429) (not b!2118273) (not b!2118172) (not d!642814) (not b!2117562) (not setNonEmpty!14456) (not b!2118275) (not b!2117846) (not b!2118415) (not b!2118186) (not b!2117852) (not setNonEmpty!14473) (not setNonEmpty!14518) (not setNonEmpty!14447) (not setNonEmpty!14436) (not b!2118527) (not bm!128659) (not mapNonEmpty!11611) (not b_lambda!70433) (not setNonEmpty!14433) (not b_lambda!70435) (not b!2118404) (not setNonEmpty!14404) (not b!2117936) (not b!2117840) (not b!2118481) (not b!2117649) (not setNonEmpty!14438) (not b!2118335) (not b!2117748) (not b!2118420) (not b!2118484) (not b!2117948) (not b!2118043) (not setNonEmpty!14416) (not d!642808) (not b!2118126) (not b!2118531) (not b!2117608) (not b!2118262) (not b!2117937) (not b!2117646) (not setNonEmpty!14443) (not b!2117890) (not b!2118441) (not setNonEmpty!14434) (not setNonEmpty!14417) (not b!2118230) (not b!2117773) (not b!2117775) (not b!2118185) (not b!2118372) (not b!2118450) (not b!2117774) (not b!2118251) (not b!2118062) (not setNonEmpty!14419) (not b!2117836) (not b!2117856) (not b!2118382) (not bm!128620) (not bm!128664) (not setNonEmpty!14508) (not d!642970) (not setNonEmpty!14519) (not d!642822) (not b!2118437) (not b!2117931) (not b!2117801) (not b!2118194) (not b!2118221) (not b!2118218) (not b!2118413) (not d!642922) (not d!642942) (not b!2117563) (not b!2118405) (not b!2117869) (not b!2118455) (not b!2118202) (not b!2118238) (not setNonEmpty!14485) b_and!170981 (not b!2118089) (not b!2118243) (not d!642974) (not b!2118471) (not mapNonEmpty!11608) (not b!2118435) (not b!2118003) (not d!642980) (not setNonEmpty!14481) (not b!2117568) (not setNonEmpty!14468) (not b!2117838) (not b!2118528) (not setNonEmpty!14512) (not d!643048) (not b!2118041) (not mapNonEmpty!11609) (not b!2118145) (not d!642862) (not d!642820) (not bm!128655) (not setNonEmpty!14450) (not setNonEmpty!14494) (not b!2117590) (not b!2117765) (not b!2117953) (not setNonEmpty!14451) (not b!2118409) (not d!642864) (not b!2118120) (not b!2117645) (not b!2118237) (not setNonEmpty!14469) (not b!2117811) (not b!2118158) (not b!2118181) (not b!2117945) (not b!2118376) (not d!642872) (not b!2118530) (not b!2118140) (not b!2117889) (not d!642952) (not b!2118265) (not b!2118235) (not setNonEmpty!14407) (not b!2118379) (not b!2118244) (not b!2118467) (not b!2118304) (not b!2118225) (not b!2118497) (not d!642812) (not setNonEmpty!14482) (not b!2117786) (not b!2118263) (not setNonEmpty!14477) (not mapNonEmpty!11613) (not b!2118388) (not b!2117892) (not setNonEmpty!14472) (not b!2118240) (not bm!128629) (not b!2118485) (not b!2117902) (not b!2118191) (not b!2117726) (not setNonEmpty!14505) (not b!2118176) (not d!642960) (not setNonEmpty!14493) (not d!642956) (not b!2117827) (not b!2117959) (not b!2118436) (not bm!128627) (not b!2118138) (not b!2118063) (not b!2117745) (not b!2117630) (not b!2118278) (not d!642954) (not b!2118521) (not d!643000) (not b!2118139) (not b_lambda!70439) (not b!2118199) (not b!2117724) (not setNonEmpty!14408) (not b!2118271) (not b!2118132) (not d!642964) (not b!2118217) (not b!2118236) (not setNonEmpty!14428) (not b_lambda!70437) (not setNonEmpty!14507) (not b!2118159) (not b!2117647) (not b!2117619) (not setNonEmpty!14491) (not setNonEmpty!14448) (not setNonEmpty!14426) (not bm!128657) (not b!2118249) (not b!2118017) (not d!643038) (not setNonEmpty!14501) (not d!642916) (not bm!128631) (not b!2118266) (not b!2118464) (not b!2117876) (not setNonEmpty!14510) (not b!2118021) (not b!2118277) (not b!2118226) (not b!2118207) (not d!642910) (not d!642992) (not setNonEmpty!14511) (not b!2118119) (not b_next!62111) (not b!2118039) (not b_next!62105) (not b!2118452) (not bm!128622) (not b!2118193) (not b_lambda!70429) (not b!2118400) (not b!2118419) (not b!2117940) (not d!642904) (not b!2118220) (not b!2118383) (not setNonEmpty!14446) (not d!642926) (not d!642944) (not b!2118242) (not b!2118168) (not b!2117929) (not b!2118478) (not b!2117808) (not b!2118212) (not b!2118344) (not d!642774) (not b_lambda!70397) (not b!2118210) (not b!2118189) (not b!2118489) (not d!642858) (not d!642792) (not mapNonEmpty!11606) (not setNonEmpty!14459) (not setNonEmpty!14488) (not b!2118392) (not b_lambda!70421) (not b!2118375) (not b!2118360) (not b!2117851) (not b!2118457) b_and!170987 (not b!2118460) (not b!2118032) (not setNonEmpty!14430) (not setNonEmpty!14497) (not d!642978) (not b!2117744) (not b!2117891) (not b!2118381) (not b!2118451) (not b!2118494) (not b!2117947) (not b!2118211) (not b!2117861) (not setNonEmpty!14413) (not b!2118180) (not b!2117864) (not setNonEmpty!14514) (not setNonEmpty!14435) (not b!2118011) (not b!2118466) (not b!2117585) (not setNonEmpty!14452) (not b!2118204) (not b!2118014) (not b!2118208) (not b!2118253) (not bm!128617) (not d!642882) (not d!642930) (not b!2118037) (not b!2118175) (not setNonEmpty!14502) (not b!2118532) (not b!2117810) (not b!2118498) (not b!2118178) (not d!643050) (not d!642998) (not b_lambda!70425) (not b!2117624) (not setNonEmpty!14495) (not mapNonEmpty!11602) (not b!2118192) (not d!642806) (not b!2118515) (not b!2117611) (not b!2118283) (not b!2118165) (not setNonEmpty!14499) (not b!2117732) (not d!642818) (not b!2117894) (not d!642794) (not b!2118446) (not b!2117648) (not b!2117925) (not d!643010) (not b!2118389) tp_is_empty!9479 (not b!2117704) (not b_lambda!70399) (not b!2118157) (not b!2118469) (not b!2118417) (not b!2118216) (not b!2117799) (not b!2118028) (not setNonEmpty!14476) (not b!2118151) (not bm!128632) (not bm!128634) (not bm!128628) (not b!2118152) (not b!2118170) (not b_lambda!70423) (not b!2118361) (not b!2118231) (not b!2118222) (not b!2118386) (not b!2118402) (not b!2117878) (not b!2117728) (not b!2117410) (not b!2118004) (not b!2117832) (not b_lambda!70401) (not setNonEmpty!14517) (not b!2118477) (not b!2118007) (not b!2118279) (not b!2118117) (not d!642946) (not d!642934) (not d!642986) (not d!642836) (not b!2117579) (not b!2118470) (not b!2118161) (not b!2118154) (not b!2118370) (not b!2117788) (not b!2117620) (not bm!128615) (not b!2118254) (not b_lambda!70431) (not b!2118520) (not b!2118136) (not setNonEmpty!14453) (not b!2117881) (not bm!128616) (not b!2118463) (not b!2118434) (not b!2118056) (not b!2118116) (not d!642782) (not d!643002) (not b!2118390) (not b!2118156) (not b!2118255) (not b!2118422) (not b!2118106) (not setNonEmpty!14437) (not b!2118280) (not b!2118377) (not setNonEmpty!14402) (not b!2118259) (not b!2118340) (not b!2118425) (not d!643062) (not bm!128612) (not d!642780) (not b!2117933) (not b!2117714) (not mapNonEmpty!11603) (not b!2118411) (not b!2117922) (not b!2117721) (not setNonEmpty!14461) (not b!2117809) (not b!2118423) (not d!642788) (not b!2118442) (not b!2118229) (not mapNonEmpty!11612) (not b!2118083) (not b!2118135) (not b!2118179) (not d!642790) (not b!2118133) (not b!2118445) (not b!2118517) (not b!2117545) (not b!2117580) (not b!2118246) (not setNonEmpty!14463) (not b!2118499) (not b!2117884) (not d!642784) (not d!643012) (not b!2118536) (not b!2118380) (not b!2118213) (not setNonEmpty!14466) (not b!2117859) (not setNonEmpty!14411) (not b!2118343) (not d!642994) (not bm!128661) (not b!2118188) (not setNonEmpty!14458) (not setNonEmpty!14464) (not d!643026) (not b!2117591) (not b!2117610) (not b!2118448) (not setNonEmpty!14427) (not b!2117588) (not b!2117703))
(check-sat b_and!170985 (not b_next!62101) (not b_next!62107) b_and!170977 b_and!170981 b_and!170987 (not b_next!62103) b_and!170979 (not b_next!62109) b_and!170983 (not b_next!62111) (not b_next!62105))
