; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207246 () Bool)

(assert start!207246)

(declare-fun b!2124599 () Bool)

(declare-fun b_free!61733 () Bool)

(declare-fun b_next!62437 () Bool)

(assert (=> b!2124599 (= b_free!61733 (not b_next!62437))))

(declare-fun tp!651118 () Bool)

(declare-fun b_and!171313 () Bool)

(assert (=> b!2124599 (= tp!651118 b_and!171313)))

(declare-fun b!2124596 () Bool)

(declare-fun b_free!61735 () Bool)

(declare-fun b_next!62439 () Bool)

(assert (=> b!2124596 (= b_free!61735 (not b_next!62439))))

(declare-fun tp!651128 () Bool)

(declare-fun b_and!171315 () Bool)

(assert (=> b!2124596 (= tp!651128 b_and!171315)))

(declare-fun b!2124575 () Bool)

(declare-fun b_free!61737 () Bool)

(declare-fun b_next!62441 () Bool)

(assert (=> b!2124575 (= b_free!61737 (not b_next!62441))))

(declare-fun tp!651120 () Bool)

(declare-fun b_and!171317 () Bool)

(assert (=> b!2124575 (= tp!651120 b_and!171317)))

(declare-fun b!2124578 () Bool)

(declare-fun b_free!61739 () Bool)

(declare-fun b_next!62443 () Bool)

(assert (=> b!2124578 (= b_free!61739 (not b_next!62443))))

(declare-fun tp!651132 () Bool)

(declare-fun b_and!171319 () Bool)

(assert (=> b!2124578 (= tp!651132 b_and!171319)))

(declare-fun b!2124580 () Bool)

(declare-fun b_free!61741 () Bool)

(declare-fun b_next!62445 () Bool)

(assert (=> b!2124580 (= b_free!61741 (not b_next!62445))))

(declare-fun tp!651113 () Bool)

(declare-fun b_and!171321 () Bool)

(assert (=> b!2124580 (= tp!651113 b_and!171321)))

(declare-fun b!2124577 () Bool)

(declare-fun b_free!61743 () Bool)

(declare-fun b_next!62447 () Bool)

(assert (=> b!2124577 (= b_free!61743 (not b_next!62447))))

(declare-fun tp!651129 () Bool)

(declare-fun b_and!171323 () Bool)

(assert (=> b!2124577 (= tp!651129 b_and!171323)))

(declare-fun setNonEmpty!15181 () Bool)

(declare-fun setRes!15181 () Bool)

(assert (=> setNonEmpty!15181 (= setRes!15181 true)))

(declare-datatypes ((C!11492 0))(
  ( (C!11493 (val!6732 Int)) )
))
(declare-datatypes ((Regex!5673 0))(
  ( (ElementMatch!5673 (c!339910 C!11492)) (Concat!9975 (regOne!11858 Regex!5673) (regTwo!11858 Regex!5673)) (EmptyExpr!5673) (Star!5673 (reg!6002 Regex!5673)) (EmptyLang!5673) (Union!5673 (regOne!11859 Regex!5673) (regTwo!11859 Regex!5673)) )
))
(declare-datatypes ((List!23830 0))(
  ( (Nil!23746) (Cons!23746 (h!29147 Regex!5673) (t!196354 List!23830)) )
))
(declare-datatypes ((Context!2486 0))(
  ( (Context!2487 (exprs!1743 List!23830)) )
))
(declare-datatypes ((tuple3!2946 0))(
  ( (tuple3!2947 (_1!13634 Regex!5673) (_2!13634 Context!2486) (_3!1943 C!11492)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23382 0))(
  ( (tuple2!23383 (_1!13635 tuple3!2946) (_2!13635 (InoxSet Context!2486))) )
))
(declare-datatypes ((tuple2!23384 0))(
  ( (tuple2!23385 (_1!13636 Context!2486) (_2!13636 C!11492)) )
))
(declare-datatypes ((tuple2!23386 0))(
  ( (tuple2!23387 (_1!13637 tuple2!23384) (_2!13637 (InoxSet Context!2486))) )
))
(declare-datatypes ((List!23831 0))(
  ( (Nil!23747) (Cons!23747 (h!29148 tuple2!23386) (t!196355 List!23831)) )
))
(declare-datatypes ((List!23832 0))(
  ( (Nil!23748) (Cons!23748 (h!29149 tuple2!23382) (t!196356 List!23832)) )
))
(declare-datatypes ((array!8489 0))(
  ( (array!8490 (arr!3764 (Array (_ BitVec 32) (_ BitVec 64))) (size!18562 (_ BitVec 32))) )
))
(declare-datatypes ((array!8491 0))(
  ( (array!8492 (arr!3765 (Array (_ BitVec 32) List!23832)) (size!18563 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4940 0))(
  ( (LongMapFixedSize!4941 (defaultEntry!2835 Int) (mask!6622 (_ BitVec 32)) (extraKeys!2718 (_ BitVec 32)) (zeroValue!2728 List!23832) (minValue!2728 List!23832) (_size!4991 (_ BitVec 32)) (_keys!2767 array!8489) (_values!2750 array!8491) (_vacant!2531 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9705 0))(
  ( (Cell!9706 (v!28276 LongMapFixedSize!4940)) )
))
(declare-datatypes ((MutLongMap!2470 0))(
  ( (LongMap!2470 (underlying!5135 Cell!9705)) (MutLongMapExt!2469 (__x!15586 Int)) )
))
(declare-datatypes ((Cell!9707 0))(
  ( (Cell!9708 (v!28277 MutLongMap!2470)) )
))
(declare-datatypes ((List!23833 0))(
  ( (Nil!23749) (Cons!23749 (h!29150 C!11492) (t!196357 List!23833)) )
))
(declare-datatypes ((IArray!15627 0))(
  ( (IArray!15628 (innerList!7871 List!23833)) )
))
(declare-datatypes ((Hashable!2384 0))(
  ( (HashableExt!2383 (__x!15587 Int)) )
))
(declare-datatypes ((Hashable!2385 0))(
  ( (HashableExt!2384 (__x!15588 Int)) )
))
(declare-datatypes ((array!8493 0))(
  ( (array!8494 (arr!3766 (Array (_ BitVec 32) List!23831)) (size!18564 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4942 0))(
  ( (LongMapFixedSize!4943 (defaultEntry!2836 Int) (mask!6623 (_ BitVec 32)) (extraKeys!2719 (_ BitVec 32)) (zeroValue!2729 List!23831) (minValue!2729 List!23831) (_size!4992 (_ BitVec 32)) (_keys!2768 array!8489) (_values!2751 array!8493) (_vacant!2532 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9709 0))(
  ( (Cell!9710 (v!28278 LongMapFixedSize!4942)) )
))
(declare-datatypes ((MutLongMap!2471 0))(
  ( (LongMap!2471 (underlying!5136 Cell!9709)) (MutLongMapExt!2470 (__x!15589 Int)) )
))
(declare-datatypes ((Cell!9711 0))(
  ( (Cell!9712 (v!28279 MutLongMap!2471)) )
))
(declare-datatypes ((MutableMap!2384 0))(
  ( (MutableMapExt!2383 (__x!15590 Int)) (HashMap!2384 (underlying!5137 Cell!9711) (hashF!4307 Hashable!2385) (_size!4993 (_ BitVec 32)) (defaultValue!2546 Int)) )
))
(declare-datatypes ((CacheUp!1654 0))(
  ( (CacheUp!1655 (cache!2765 MutableMap!2384)) )
))
(declare-datatypes ((Conc!7811 0))(
  ( (Node!7811 (left!18364 Conc!7811) (right!18694 Conc!7811) (csize!15852 Int) (cheight!8022 Int)) (Leaf!11415 (xs!10753 IArray!15627) (csize!15853 Int)) (Empty!7811) )
))
(declare-datatypes ((BalanceConc!15384 0))(
  ( (BalanceConc!15385 (c!339911 Conc!7811)) )
))
(declare-datatypes ((StackFrame!58 0))(
  ( (StackFrame!59 (z!5744 (InoxSet Context!2486)) (from!2636 Int) (lastNullablePos!323 Int) (res!919638 Int) (totalInput!2927 BalanceConc!15384)) )
))
(declare-datatypes ((List!23834 0))(
  ( (Nil!23750) (Cons!23750 (h!29151 StackFrame!58) (t!196358 List!23834)) )
))
(declare-datatypes ((tuple2!23388 0))(
  ( (tuple2!23389 (_1!13638 Int) (_2!13638 List!23834)) )
))
(declare-datatypes ((MutableMap!2385 0))(
  ( (MutableMapExt!2384 (__x!15591 Int)) (HashMap!2385 (underlying!5138 Cell!9707) (hashF!4308 Hashable!2384) (_size!4994 (_ BitVec 32)) (defaultValue!2547 Int)) )
))
(declare-datatypes ((CacheDown!1640 0))(
  ( (CacheDown!1641 (cache!2766 MutableMap!2385)) )
))
(declare-datatypes ((tuple3!2948 0))(
  ( (tuple3!2949 (_1!13639 tuple2!23388) (_2!13639 CacheUp!1654) (_3!1944 CacheDown!1640)) )
))
(declare-fun lt!795453 () tuple3!2948)

(declare-fun setElem!15181 () Context!2486)

(declare-fun setRest!15181 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15181 (= (z!5744 (h!29151 (_2!13638 (_1!13639 lt!795453)))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15181 true) setRest!15181))))

(declare-fun b!2124640 () Bool)

(declare-fun e!1353834 () Bool)

(declare-fun e!1353833 () Bool)

(assert (=> b!2124640 (= e!1353834 e!1353833)))

(declare-fun b!2124641 () Bool)

(declare-fun e!1353844 () Bool)

(declare-fun e!1353830 () Bool)

(assert (=> b!2124641 (= e!1353844 e!1353830)))

(declare-fun b!2124642 () Bool)

(declare-fun e!1353836 () Bool)

(declare-fun e!1353841 () Bool)

(assert (=> b!2124642 (= e!1353836 e!1353841)))

(declare-fun b!2124643 () Bool)

(declare-fun e!1353831 () Bool)

(declare-fun e!1353845 () Bool)

(assert (=> b!2124643 (= e!1353831 e!1353845)))

(declare-fun b!2124644 () Bool)

(declare-fun e!1353840 () Bool)

(declare-fun mapRes!12068 () Bool)

(assert (=> b!2124644 (= e!1353840 mapRes!12068)))

(declare-fun condMapEmpty!12069 () Bool)

(declare-fun mapDefault!12068 () List!23831)

(assert (=> b!2124644 (= condMapEmpty!12069 (= (arr!3766 (_values!2751 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795453)))))))) ((as const (Array (_ BitVec 32) List!23831)) mapDefault!12068)))))

(declare-fun b!2124645 () Bool)

(declare-fun e!1353843 () Bool)

(declare-fun e!1353839 () Bool)

(assert (=> b!2124645 (= e!1353843 e!1353839)))

(declare-fun b!2124646 () Bool)

(declare-fun e!1353837 () Bool)

(assert (=> b!2124646 (= e!1353837 e!1353844)))

(declare-fun mapNonEmpty!12068 () Bool)

(assert (=> mapNonEmpty!12068 (= mapRes!12068 true)))

(declare-fun mapKey!12068 () (_ BitVec 32))

(declare-fun mapValue!12068 () List!23831)

(declare-fun mapRest!12069 () (Array (_ BitVec 32) List!23831))

(assert (=> mapNonEmpty!12068 (= (arr!3766 (_values!2751 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795453)))))))) (store mapRest!12069 mapKey!12068 mapValue!12068))))

(declare-fun b!2124647 () Bool)

(declare-fun lt!795461 () MutLongMap!2471)

(get-info :version)

(assert (=> b!2124647 (= e!1353833 (and e!1353837 ((_ is LongMap!2471) lt!795461)))))

(assert (=> b!2124647 (= lt!795461 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795453)))))))

(declare-fun mapIsEmpty!12069 () Bool)

(assert (=> mapIsEmpty!12069 mapRes!12068))

(declare-fun b!2124648 () Bool)

(declare-fun e!1353832 () Bool)

(assert (=> b!2124648 (= e!1353845 e!1353832)))

(declare-fun b!2124649 () Bool)

(assert (=> b!2124649 (= e!1353839 e!1353836)))

(declare-fun b!2124650 () Bool)

(declare-fun e!1353835 () Bool)

(declare-fun e!1353838 () Bool)

(assert (=> b!2124650 (= e!1353835 e!1353838)))

(declare-fun b!2124651 () Bool)

(declare-fun lt!795460 () MutLongMap!2470)

(assert (=> b!2124651 (= e!1353832 (and e!1353843 ((_ is LongMap!2470) lt!795460)))))

(assert (=> b!2124651 (= lt!795460 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795453)))))))

(declare-fun b!2124602 () Bool)

(declare-fun e!1353842 () Bool)

(assert (=> b!2124602 (and e!1353835 e!1353842 e!1353831)))

(declare-fun mapIsEmpty!12068 () Bool)

(declare-fun mapRes!12069 () Bool)

(assert (=> mapIsEmpty!12068 mapRes!12069))

(declare-fun b!2124652 () Bool)

(assert (=> b!2124652 (= e!1353841 mapRes!12069)))

(declare-fun condMapEmpty!12068 () Bool)

(declare-fun mapDefault!12069 () List!23832)

(assert (=> b!2124652 (= condMapEmpty!12068 (= (arr!3765 (_values!2750 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795453)))))))) ((as const (Array (_ BitVec 32) List!23832)) mapDefault!12069)))))

(declare-fun mapNonEmpty!12069 () Bool)

(assert (=> mapNonEmpty!12069 (= mapRes!12069 true)))

(declare-fun mapRest!12068 () (Array (_ BitVec 32) List!23832))

(declare-fun mapValue!12069 () List!23832)

(declare-fun mapKey!12069 () (_ BitVec 32))

(assert (=> mapNonEmpty!12069 (= (arr!3765 (_values!2750 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795453)))))))) (store mapRest!12068 mapKey!12069 mapValue!12069))))

(declare-fun b!2124653 () Bool)

(assert (=> b!2124653 (= e!1353838 setRes!15181)))

(declare-fun condSetEmpty!15181 () Bool)

(assert (=> b!2124653 (= condSetEmpty!15181 (= (z!5744 (h!29151 (_2!13638 (_1!13639 lt!795453)))) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setIsEmpty!15181 () Bool)

(assert (=> setIsEmpty!15181 setRes!15181))

(declare-fun b!2124654 () Bool)

(assert (=> b!2124654 (= e!1353830 e!1353840)))

(declare-fun b!2124655 () Bool)

(assert (=> b!2124655 (= e!1353842 e!1353834)))

(assert (= (and b!2124653 condSetEmpty!15181) setIsEmpty!15181))

(assert (= (and b!2124653 (not condSetEmpty!15181)) setNonEmpty!15181))

(assert (= b!2124650 b!2124653))

(assert (= (and b!2124602 ((_ is Cons!23750) (_2!13638 (_1!13639 lt!795453)))) b!2124650))

(assert (= (and b!2124644 condMapEmpty!12069) mapIsEmpty!12069))

(assert (= (and b!2124644 (not condMapEmpty!12069)) mapNonEmpty!12068))

(assert (= b!2124654 b!2124644))

(assert (= b!2124641 b!2124654))

(assert (= b!2124646 b!2124641))

(assert (= (and b!2124647 ((_ is LongMap!2471) (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795453)))))) b!2124646))

(assert (= b!2124640 b!2124647))

(assert (= (and b!2124655 ((_ is HashMap!2384) (cache!2765 (_2!13639 lt!795453)))) b!2124640))

(assert (= b!2124602 b!2124655))

(assert (= (and b!2124652 condMapEmpty!12068) mapIsEmpty!12068))

(assert (= (and b!2124652 (not condMapEmpty!12068)) mapNonEmpty!12069))

(assert (= b!2124642 b!2124652))

(assert (= b!2124649 b!2124642))

(assert (= b!2124645 b!2124649))

(assert (= (and b!2124651 ((_ is LongMap!2470) (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795453)))))) b!2124645))

(assert (= b!2124648 b!2124651))

(assert (= (and b!2124643 ((_ is HashMap!2385) (cache!2766 (_3!1944 lt!795453)))) b!2124648))

(assert (= b!2124602 b!2124643))

(declare-fun lambda!78753 () Int)

(declare-fun order!14729 () Int)

(declare-fun order!14731 () Int)

(declare-fun dynLambda!11346 (Int Int) Int)

(declare-fun dynLambda!11347 (Int Int) Int)

(assert (=> b!2124648 (< (dynLambda!11346 order!14729 (defaultValue!2547 (cache!2766 (_3!1944 lt!795453)))) (dynLambda!11347 order!14731 lambda!78753))))

(declare-fun order!14733 () Int)

(declare-fun dynLambda!11348 (Int Int) Int)

(assert (=> b!2124654 (< (dynLambda!11348 order!14733 (defaultEntry!2836 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795453)))))))) (dynLambda!11347 order!14731 lambda!78753))))

(declare-fun order!14735 () Int)

(declare-fun dynLambda!11349 (Int Int) Int)

(assert (=> b!2124640 (< (dynLambda!11349 order!14735 (defaultValue!2546 (cache!2765 (_2!13639 lt!795453)))) (dynLambda!11347 order!14731 lambda!78753))))

(declare-fun order!14737 () Int)

(declare-fun dynLambda!11350 (Int Int) Int)

(assert (=> b!2124642 (< (dynLambda!11350 order!14737 (defaultEntry!2835 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795453)))))))) (dynLambda!11347 order!14731 lambda!78753))))

(declare-fun m!2577184 () Bool)

(assert (=> mapNonEmpty!12068 m!2577184))

(declare-fun m!2577186 () Bool)

(assert (=> mapNonEmpty!12069 m!2577186))

(declare-fun b!2124574 () Bool)

(declare-fun res!919635 () Bool)

(declare-fun e!1353785 () Bool)

(assert (=> b!2124574 (=> (not res!919635) (not e!1353785))))

(declare-datatypes ((Hashable!2386 0))(
  ( (HashableExt!2385 (__x!15592 Int)) )
))
(declare-datatypes ((tuple3!2950 0))(
  ( (tuple3!2951 (_1!13640 (InoxSet Context!2486)) (_2!13640 Int) (_3!1945 Int)) )
))
(declare-datatypes ((tuple2!23390 0))(
  ( (tuple2!23391 (_1!13641 tuple3!2950) (_2!13641 Int)) )
))
(declare-datatypes ((List!23835 0))(
  ( (Nil!23751) (Cons!23751 (h!29152 tuple2!23390) (t!196359 List!23835)) )
))
(declare-datatypes ((array!8495 0))(
  ( (array!8496 (arr!3767 (Array (_ BitVec 32) List!23835)) (size!18565 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4944 0))(
  ( (LongMapFixedSize!4945 (defaultEntry!2837 Int) (mask!6624 (_ BitVec 32)) (extraKeys!2720 (_ BitVec 32)) (zeroValue!2730 List!23835) (minValue!2730 List!23835) (_size!4995 (_ BitVec 32)) (_keys!2769 array!8489) (_values!2752 array!8495) (_vacant!2533 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9713 0))(
  ( (Cell!9714 (v!28280 LongMapFixedSize!4944)) )
))
(declare-datatypes ((MutLongMap!2472 0))(
  ( (LongMap!2472 (underlying!5139 Cell!9713)) (MutLongMapExt!2471 (__x!15593 Int)) )
))
(declare-datatypes ((Cell!9715 0))(
  ( (Cell!9716 (v!28281 MutLongMap!2472)) )
))
(declare-datatypes ((MutableMap!2386 0))(
  ( (MutableMapExt!2385 (__x!15594 Int)) (HashMap!2386 (underlying!5140 Cell!9715) (hashF!4309 Hashable!2386) (_size!4996 (_ BitVec 32)) (defaultValue!2548 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!598 0))(
  ( (CacheFurthestNullable!599 (cache!2767 MutableMap!2386) (totalInput!2928 BalanceConc!15384)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!598)

(declare-fun totalInput!886 () BalanceConc!15384)

(assert (=> b!2124574 (= res!919635 (= (totalInput!2928 cacheFurthestNullable!130) totalInput!886))))

(declare-fun e!1353797 () Bool)

(declare-fun tp!651124 () Bool)

(declare-fun tp!651114 () Bool)

(declare-fun e!1353789 () Bool)

(declare-fun cacheDown!1110 () CacheDown!1640)

(declare-fun array_inv!2692 (array!8489) Bool)

(declare-fun array_inv!2693 (array!8491) Bool)

(assert (=> b!2124575 (= e!1353789 (and tp!651120 tp!651124 tp!651114 (array_inv!2692 (_keys!2767 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110))))))) (array_inv!2693 (_values!2750 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110))))))) e!1353797))))

(declare-fun b!2124576 () Bool)

(declare-fun res!919633 () Bool)

(assert (=> b!2124576 (=> (not res!919633) (not e!1353785))))

(declare-fun valid!1943 (CacheDown!1640) Bool)

(assert (=> b!2124576 (= res!919633 (valid!1943 cacheDown!1110))))

(declare-fun mapIsEmpty!12061 () Bool)

(declare-fun mapRes!12062 () Bool)

(assert (=> mapIsEmpty!12061 mapRes!12062))

(declare-fun e!1353786 () Bool)

(declare-fun e!1353784 () Bool)

(assert (=> b!2124577 (= e!1353786 (and e!1353784 tp!651129))))

(declare-fun e!1353768 () Bool)

(declare-fun e!1353793 () Bool)

(assert (=> b!2124578 (= e!1353768 (and e!1353793 tp!651132))))

(declare-fun mapNonEmpty!12061 () Bool)

(declare-fun mapRes!12063 () Bool)

(declare-fun tp!651127 () Bool)

(declare-fun tp!651123 () Bool)

(assert (=> mapNonEmpty!12061 (= mapRes!12063 (and tp!651127 tp!651123))))

(declare-fun mapKey!12063 () (_ BitVec 32))

(declare-fun mapRest!12062 () (Array (_ BitVec 32) List!23835))

(declare-fun mapValue!12061 () List!23835)

(assert (=> mapNonEmpty!12061 (= (arr!3767 (_values!2752 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))))) (store mapRest!12062 mapKey!12063 mapValue!12061))))

(declare-fun mapIsEmpty!12062 () Bool)

(assert (=> mapIsEmpty!12062 mapRes!12063))

(declare-fun b!2124579 () Bool)

(declare-fun e!1353782 () Bool)

(declare-fun input!5507 () BalanceConc!15384)

(declare-fun tp!651111 () Bool)

(declare-fun inv!31341 (Conc!7811) Bool)

(assert (=> b!2124579 (= e!1353782 (and (inv!31341 (c!339911 input!5507)) tp!651111))))

(declare-fun e!1353781 () Bool)

(declare-fun e!1353776 () Bool)

(declare-fun tp!651126 () Bool)

(declare-fun tp!651115 () Bool)

(declare-fun cacheUp!991 () CacheUp!1654)

(declare-fun array_inv!2694 (array!8493) Bool)

(assert (=> b!2124580 (= e!1353776 (and tp!651113 tp!651115 tp!651126 (array_inv!2692 (_keys!2768 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991))))))) (array_inv!2694 (_values!2751 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991))))))) e!1353781))))

(declare-fun b!2124581 () Bool)

(declare-fun e!1353787 () Bool)

(declare-fun tp!651108 () Bool)

(assert (=> b!2124581 (= e!1353787 (and (inv!31341 (c!339911 totalInput!886)) tp!651108))))

(declare-fun b!2124582 () Bool)

(declare-fun e!1353778 () Bool)

(declare-fun lt!795450 () MutLongMap!2470)

(assert (=> b!2124582 (= e!1353793 (and e!1353778 ((_ is LongMap!2470) lt!795450)))))

(assert (=> b!2124582 (= lt!795450 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110))))))

(declare-fun b!2124583 () Bool)

(declare-fun e!1353775 () Bool)

(declare-fun tp!651133 () Bool)

(assert (=> b!2124583 (= e!1353775 tp!651133)))

(declare-fun mapIsEmpty!12063 () Bool)

(declare-fun mapRes!12061 () Bool)

(assert (=> mapIsEmpty!12063 mapRes!12061))

(declare-fun b!2124584 () Bool)

(declare-fun e!1353783 () Bool)

(declare-fun e!1353773 () Bool)

(declare-fun lt!795454 () MutLongMap!2472)

(assert (=> b!2124584 (= e!1353783 (and e!1353773 ((_ is LongMap!2472) lt!795454)))))

(assert (=> b!2124584 (= lt!795454 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))))

(declare-fun b!2124585 () Bool)

(declare-fun res!919637 () Bool)

(assert (=> b!2124585 (=> (not res!919637) (not e!1353785))))

(declare-fun valid!1944 (CacheUp!1654) Bool)

(assert (=> b!2124585 (= res!919637 (valid!1944 cacheUp!991))))

(declare-fun b!2124586 () Bool)

(declare-fun tp!651130 () Bool)

(assert (=> b!2124586 (= e!1353797 (and tp!651130 mapRes!12062))))

(declare-fun condMapEmpty!12063 () Bool)

(declare-fun mapDefault!12061 () List!23832)

(assert (=> b!2124586 (= condMapEmpty!12063 (= (arr!3765 (_values!2750 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23832)) mapDefault!12061)))))

(declare-fun b!2124587 () Bool)

(declare-fun e!1353774 () Int)

(assert (=> b!2124587 (= e!1353774 (- 1))))

(declare-fun b!2124588 () Bool)

(declare-fun e!1353792 () Bool)

(assert (=> b!2124588 (= e!1353792 e!1353786)))

(declare-fun e!1353794 () Bool)

(declare-fun e!1353779 () Bool)

(declare-fun e!1353795 () Bool)

(declare-fun b!2124589 () Bool)

(declare-fun inv!31342 (BalanceConc!15384) Bool)

(assert (=> b!2124589 (= e!1353779 (and e!1353794 (inv!31342 (totalInput!2928 cacheFurthestNullable!130)) e!1353795))))

(declare-fun b!2124590 () Bool)

(declare-fun lt!795455 () Int)

(assert (=> b!2124590 (= e!1353774 (- lt!795455 1))))

(declare-fun b!2124591 () Bool)

(declare-fun e!1353788 () Bool)

(declare-fun e!1353771 () Bool)

(assert (=> b!2124591 (= e!1353788 e!1353771)))

(declare-fun b!2124592 () Bool)

(declare-fun res!919634 () Bool)

(assert (=> b!2124592 (=> (not res!919634) (not e!1353785))))

(declare-fun valid!1945 (CacheFurthestNullable!598) Bool)

(assert (=> b!2124592 (= res!919634 (valid!1945 cacheFurthestNullable!130))))

(declare-fun b!2124593 () Bool)

(assert (=> b!2124593 (= e!1353771 e!1353776)))

(declare-fun b!2124594 () Bool)

(declare-fun e!1353791 () Bool)

(assert (=> b!2124594 (= e!1353791 e!1353789)))

(declare-fun b!2124595 () Bool)

(declare-fun tp!651109 () Bool)

(assert (=> b!2124595 (= e!1353795 (and (inv!31341 (c!339911 (totalInput!2928 cacheFurthestNullable!130))) tp!651109))))

(declare-fun tp!651110 () Bool)

(declare-fun e!1353772 () Bool)

(declare-fun tp!651131 () Bool)

(declare-fun e!1353769 () Bool)

(declare-fun array_inv!2695 (array!8495) Bool)

(assert (=> b!2124596 (= e!1353772 (and tp!651128 tp!651110 tp!651131 (array_inv!2692 (_keys!2769 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))))) (array_inv!2695 (_values!2752 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))))) e!1353769))))

(declare-fun b!2124597 () Bool)

(declare-fun e!1353777 () Bool)

(assert (=> b!2124597 (= e!1353773 e!1353777)))

(declare-fun b!2124598 () Bool)

(declare-fun tp!651116 () Bool)

(assert (=> b!2124598 (= e!1353781 (and tp!651116 mapRes!12061))))

(declare-fun condMapEmpty!12061 () Bool)

(declare-fun mapDefault!12063 () List!23831)

(assert (=> b!2124598 (= condMapEmpty!12061 (= (arr!3766 (_values!2751 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23831)) mapDefault!12063)))))

(assert (=> b!2124599 (= e!1353794 (and e!1353783 tp!651118))))

(declare-fun b!2124600 () Bool)

(assert (=> b!2124600 (= e!1353777 e!1353772)))

(declare-fun res!919636 () Bool)

(assert (=> start!207246 (=> (not res!919636) (not e!1353785))))

(declare-fun isSuffix!622 (List!23833 List!23833) Bool)

(declare-fun list!9535 (BalanceConc!15384) List!23833)

(assert (=> start!207246 (= res!919636 (isSuffix!622 (list!9535 input!5507) (list!9535 totalInput!886)))))

(assert (=> start!207246 e!1353785))

(declare-fun inv!31343 (CacheFurthestNullable!598) Bool)

(assert (=> start!207246 (and (inv!31343 cacheFurthestNullable!130) e!1353779)))

(declare-fun condSetEmpty!15178 () Bool)

(declare-fun z!3883 () (InoxSet Context!2486))

(assert (=> start!207246 (= condSetEmpty!15178 (= z!3883 ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setRes!15178 () Bool)

(assert (=> start!207246 setRes!15178))

(assert (=> start!207246 (and (inv!31342 input!5507) e!1353782)))

(declare-fun e!1353770 () Bool)

(declare-fun inv!31344 (CacheDown!1640) Bool)

(assert (=> start!207246 (and (inv!31344 cacheDown!1110) e!1353770)))

(declare-fun inv!31345 (CacheUp!1654) Bool)

(assert (=> start!207246 (and (inv!31345 cacheUp!991) e!1353792)))

(assert (=> start!207246 (and (inv!31342 totalInput!886) e!1353787)))

(declare-fun tp!651121 () Bool)

(declare-fun setNonEmpty!15178 () Bool)

(declare-fun setElem!15178 () Context!2486)

(declare-fun inv!31346 (Context!2486) Bool)

(assert (=> setNonEmpty!15178 (= setRes!15178 (and tp!651121 (inv!31346 setElem!15178) e!1353775))))

(declare-fun setRest!15178 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15178 (= z!3883 ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15178 true) setRest!15178))))

(declare-fun b!2124601 () Bool)

(declare-fun lt!795451 () MutLongMap!2471)

(assert (=> b!2124601 (= e!1353784 (and e!1353788 ((_ is LongMap!2471) lt!795451)))))

(assert (=> b!2124601 (= lt!795451 (v!28279 (underlying!5137 (cache!2765 cacheUp!991))))))

(declare-fun forall!4874 (List!23834 Int) Bool)

(assert (=> b!2124602 (= e!1353785 (not (forall!4874 (_2!13638 (_1!13639 lt!795453)) lambda!78753)))))

(declare-fun lt!795452 () Int)

(declare-fun furthestNullablePositionStackMem!13 ((InoxSet Context!2486) Int BalanceConc!15384 Int Int List!23834 CacheUp!1654 CacheDown!1640 CacheFurthestNullable!598) tuple3!2948)

(assert (=> b!2124602 (= lt!795453 (furthestNullablePositionStackMem!13 z!3883 lt!795455 totalInput!886 lt!795452 e!1353774 Nil!23750 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))

(declare-fun c!339909 () Bool)

(declare-fun nullableZipper!68 ((InoxSet Context!2486)) Bool)

(assert (=> b!2124602 (= c!339909 (nullableZipper!68 z!3883))))

(declare-fun size!18566 (BalanceConc!15384) Int)

(assert (=> b!2124602 (= lt!795455 (- lt!795452 (size!18566 input!5507)))))

(assert (=> b!2124602 (= lt!795452 (size!18566 totalInput!886))))

(declare-fun mapNonEmpty!12062 () Bool)

(declare-fun tp!651119 () Bool)

(declare-fun tp!651125 () Bool)

(assert (=> mapNonEmpty!12062 (= mapRes!12061 (and tp!651119 tp!651125))))

(declare-fun mapKey!12061 () (_ BitVec 32))

(declare-fun mapRest!12063 () (Array (_ BitVec 32) List!23831))

(declare-fun mapValue!12062 () List!23831)

(assert (=> mapNonEmpty!12062 (= (arr!3766 (_values!2751 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991))))))) (store mapRest!12063 mapKey!12061 mapValue!12062))))

(declare-fun b!2124603 () Bool)

(declare-fun tp!651117 () Bool)

(assert (=> b!2124603 (= e!1353769 (and tp!651117 mapRes!12063))))

(declare-fun condMapEmpty!12062 () Bool)

(declare-fun mapDefault!12062 () List!23835)

(assert (=> b!2124603 (= condMapEmpty!12062 (= (arr!3767 (_values!2752 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23835)) mapDefault!12062)))))

(declare-fun b!2124604 () Bool)

(assert (=> b!2124604 (= e!1353778 e!1353791)))

(declare-fun mapNonEmpty!12063 () Bool)

(declare-fun tp!651122 () Bool)

(declare-fun tp!651112 () Bool)

(assert (=> mapNonEmpty!12063 (= mapRes!12062 (and tp!651122 tp!651112))))

(declare-fun mapRest!12061 () (Array (_ BitVec 32) List!23832))

(declare-fun mapValue!12063 () List!23832)

(declare-fun mapKey!12062 () (_ BitVec 32))

(assert (=> mapNonEmpty!12063 (= (arr!3765 (_values!2750 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110))))))) (store mapRest!12061 mapKey!12062 mapValue!12063))))

(declare-fun b!2124605 () Bool)

(assert (=> b!2124605 (= e!1353770 e!1353768)))

(declare-fun setIsEmpty!15178 () Bool)

(assert (=> setIsEmpty!15178 setRes!15178))

(assert (= (and start!207246 res!919636) b!2124585))

(assert (= (and b!2124585 res!919637) b!2124576))

(assert (= (and b!2124576 res!919633) b!2124592))

(assert (= (and b!2124592 res!919634) b!2124574))

(assert (= (and b!2124574 res!919635) b!2124602))

(assert (= (and b!2124602 c!339909) b!2124590))

(assert (= (and b!2124602 (not c!339909)) b!2124587))

(assert (= (and b!2124603 condMapEmpty!12062) mapIsEmpty!12062))

(assert (= (and b!2124603 (not condMapEmpty!12062)) mapNonEmpty!12061))

(assert (= b!2124596 b!2124603))

(assert (= b!2124600 b!2124596))

(assert (= b!2124597 b!2124600))

(assert (= (and b!2124584 ((_ is LongMap!2472) (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))) b!2124597))

(assert (= b!2124599 b!2124584))

(assert (= (and b!2124589 ((_ is HashMap!2386) (cache!2767 cacheFurthestNullable!130))) b!2124599))

(assert (= b!2124589 b!2124595))

(assert (= start!207246 b!2124589))

(assert (= (and start!207246 condSetEmpty!15178) setIsEmpty!15178))

(assert (= (and start!207246 (not condSetEmpty!15178)) setNonEmpty!15178))

(assert (= setNonEmpty!15178 b!2124583))

(assert (= start!207246 b!2124579))

(assert (= (and b!2124586 condMapEmpty!12063) mapIsEmpty!12061))

(assert (= (and b!2124586 (not condMapEmpty!12063)) mapNonEmpty!12063))

(assert (= b!2124575 b!2124586))

(assert (= b!2124594 b!2124575))

(assert (= b!2124604 b!2124594))

(assert (= (and b!2124582 ((_ is LongMap!2470) (v!28277 (underlying!5138 (cache!2766 cacheDown!1110))))) b!2124604))

(assert (= b!2124578 b!2124582))

(assert (= (and b!2124605 ((_ is HashMap!2385) (cache!2766 cacheDown!1110))) b!2124578))

(assert (= start!207246 b!2124605))

(assert (= (and b!2124598 condMapEmpty!12061) mapIsEmpty!12063))

(assert (= (and b!2124598 (not condMapEmpty!12061)) mapNonEmpty!12062))

(assert (= b!2124580 b!2124598))

(assert (= b!2124593 b!2124580))

(assert (= b!2124591 b!2124593))

(assert (= (and b!2124601 ((_ is LongMap!2471) (v!28279 (underlying!5137 (cache!2765 cacheUp!991))))) b!2124591))

(assert (= b!2124577 b!2124601))

(assert (= (and b!2124588 ((_ is HashMap!2384) (cache!2765 cacheUp!991))) b!2124577))

(assert (= start!207246 b!2124588))

(assert (= start!207246 b!2124581))

(declare-fun m!2577188 () Bool)

(assert (=> b!2124580 m!2577188))

(declare-fun m!2577190 () Bool)

(assert (=> b!2124580 m!2577190))

(declare-fun m!2577192 () Bool)

(assert (=> b!2124581 m!2577192))

(declare-fun m!2577194 () Bool)

(assert (=> b!2124596 m!2577194))

(declare-fun m!2577196 () Bool)

(assert (=> b!2124596 m!2577196))

(declare-fun m!2577198 () Bool)

(assert (=> b!2124592 m!2577198))

(declare-fun m!2577200 () Bool)

(assert (=> b!2124589 m!2577200))

(declare-fun m!2577202 () Bool)

(assert (=> setNonEmpty!15178 m!2577202))

(declare-fun m!2577204 () Bool)

(assert (=> mapNonEmpty!12061 m!2577204))

(declare-fun m!2577206 () Bool)

(assert (=> b!2124585 m!2577206))

(declare-fun m!2577208 () Bool)

(assert (=> b!2124595 m!2577208))

(declare-fun m!2577210 () Bool)

(assert (=> mapNonEmpty!12063 m!2577210))

(declare-fun m!2577212 () Bool)

(assert (=> start!207246 m!2577212))

(declare-fun m!2577214 () Bool)

(assert (=> start!207246 m!2577214))

(declare-fun m!2577216 () Bool)

(assert (=> start!207246 m!2577216))

(declare-fun m!2577218 () Bool)

(assert (=> start!207246 m!2577218))

(declare-fun m!2577220 () Bool)

(assert (=> start!207246 m!2577220))

(declare-fun m!2577222 () Bool)

(assert (=> start!207246 m!2577222))

(assert (=> start!207246 m!2577218))

(assert (=> start!207246 m!2577212))

(declare-fun m!2577224 () Bool)

(assert (=> start!207246 m!2577224))

(declare-fun m!2577226 () Bool)

(assert (=> start!207246 m!2577226))

(declare-fun m!2577228 () Bool)

(assert (=> b!2124575 m!2577228))

(declare-fun m!2577230 () Bool)

(assert (=> b!2124575 m!2577230))

(declare-fun m!2577232 () Bool)

(assert (=> b!2124576 m!2577232))

(declare-fun m!2577234 () Bool)

(assert (=> b!2124602 m!2577234))

(declare-fun m!2577236 () Bool)

(assert (=> b!2124602 m!2577236))

(declare-fun m!2577238 () Bool)

(assert (=> b!2124602 m!2577238))

(declare-fun m!2577240 () Bool)

(assert (=> b!2124602 m!2577240))

(declare-fun m!2577242 () Bool)

(assert (=> b!2124602 m!2577242))

(declare-fun m!2577244 () Bool)

(assert (=> b!2124579 m!2577244))

(declare-fun m!2577246 () Bool)

(assert (=> mapNonEmpty!12062 m!2577246))

(check-sat (not setNonEmpty!15181) (not b!2124644) (not b!2124596) (not mapNonEmpty!12061) (not b!2124642) b_and!171317 (not b!2124583) b_and!171319 (not b_next!62441) (not b_next!62443) (not b!2124650) (not mapNonEmpty!12062) b_and!171315 (not b!2124602) (not b!2124586) (not b_next!62445) (not b!2124580) b_and!171313 (not b!2124576) (not b!2124575) (not b!2124595) (not b!2124592) (not mapNonEmpty!12068) (not b!2124603) (not b!2124581) (not b!2124585) (not b!2124579) b_and!171321 (not start!207246) (not b!2124589) (not mapNonEmpty!12069) (not b!2124654) (not b_next!62439) (not b!2124652) (not b_next!62447) (not b_next!62437) (not b!2124598) (not setNonEmpty!15178) b_and!171323 (not mapNonEmpty!12063))
(check-sat b_and!171317 b_and!171319 (not b_next!62441) (not b_next!62443) b_and!171321 b_and!171315 (not b_next!62439) (not b_next!62447) (not b_next!62445) b_and!171313 (not b_next!62437) b_and!171323)
(get-model)

(declare-fun d!643840 () Bool)

(assert (=> d!643840 (= (array_inv!2692 (_keys!2769 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))))) (bvsge (size!18562 (_keys!2769 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2124596 d!643840))

(declare-fun d!643842 () Bool)

(assert (=> d!643842 (= (array_inv!2695 (_values!2752 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))))) (bvsge (size!18565 (_values!2752 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2124596 d!643842))

(declare-fun d!643844 () Bool)

(declare-fun validCacheMapUp!247 (MutableMap!2384) Bool)

(assert (=> d!643844 (= (valid!1944 cacheUp!991) (validCacheMapUp!247 (cache!2765 cacheUp!991)))))

(declare-fun bs!443457 () Bool)

(assert (= bs!443457 d!643844))

(declare-fun m!2577248 () Bool)

(assert (=> bs!443457 m!2577248))

(assert (=> b!2124585 d!643844))

(declare-fun d!643846 () Bool)

(declare-fun c!339914 () Bool)

(assert (=> d!643846 (= c!339914 ((_ is Node!7811) (c!339911 (totalInput!2928 cacheFurthestNullable!130))))))

(declare-fun e!1353850 () Bool)

(assert (=> d!643846 (= (inv!31341 (c!339911 (totalInput!2928 cacheFurthestNullable!130))) e!1353850)))

(declare-fun b!2124662 () Bool)

(declare-fun inv!31347 (Conc!7811) Bool)

(assert (=> b!2124662 (= e!1353850 (inv!31347 (c!339911 (totalInput!2928 cacheFurthestNullable!130))))))

(declare-fun b!2124663 () Bool)

(declare-fun e!1353851 () Bool)

(assert (=> b!2124663 (= e!1353850 e!1353851)))

(declare-fun res!919641 () Bool)

(assert (=> b!2124663 (= res!919641 (not ((_ is Leaf!11415) (c!339911 (totalInput!2928 cacheFurthestNullable!130)))))))

(assert (=> b!2124663 (=> res!919641 e!1353851)))

(declare-fun b!2124664 () Bool)

(declare-fun inv!31348 (Conc!7811) Bool)

(assert (=> b!2124664 (= e!1353851 (inv!31348 (c!339911 (totalInput!2928 cacheFurthestNullable!130))))))

(assert (= (and d!643846 c!339914) b!2124662))

(assert (= (and d!643846 (not c!339914)) b!2124663))

(assert (= (and b!2124663 (not res!919641)) b!2124664))

(declare-fun m!2577250 () Bool)

(assert (=> b!2124662 m!2577250))

(declare-fun m!2577252 () Bool)

(assert (=> b!2124664 m!2577252))

(assert (=> b!2124595 d!643846))

(declare-fun d!643848 () Bool)

(declare-fun list!9536 (Conc!7811) List!23833)

(assert (=> d!643848 (= (list!9535 input!5507) (list!9536 (c!339911 input!5507)))))

(declare-fun bs!443458 () Bool)

(assert (= bs!443458 d!643848))

(declare-fun m!2577254 () Bool)

(assert (=> bs!443458 m!2577254))

(assert (=> start!207246 d!643848))

(declare-fun d!643850 () Bool)

(declare-fun isBalanced!2451 (Conc!7811) Bool)

(assert (=> d!643850 (= (inv!31342 totalInput!886) (isBalanced!2451 (c!339911 totalInput!886)))))

(declare-fun bs!443459 () Bool)

(assert (= bs!443459 d!643850))

(declare-fun m!2577256 () Bool)

(assert (=> bs!443459 m!2577256))

(assert (=> start!207246 d!643850))

(declare-fun d!643852 () Bool)

(assert (=> d!643852 (= (inv!31342 input!5507) (isBalanced!2451 (c!339911 input!5507)))))

(declare-fun bs!443460 () Bool)

(assert (= bs!443460 d!643852))

(declare-fun m!2577258 () Bool)

(assert (=> bs!443460 m!2577258))

(assert (=> start!207246 d!643852))

(declare-fun d!643854 () Bool)

(assert (=> d!643854 (= (list!9535 totalInput!886) (list!9536 (c!339911 totalInput!886)))))

(declare-fun bs!443461 () Bool)

(assert (= bs!443461 d!643854))

(declare-fun m!2577260 () Bool)

(assert (=> bs!443461 m!2577260))

(assert (=> start!207246 d!643854))

(declare-fun d!643856 () Bool)

(declare-fun res!919644 () Bool)

(declare-fun e!1353854 () Bool)

(assert (=> d!643856 (=> (not res!919644) (not e!1353854))))

(assert (=> d!643856 (= res!919644 ((_ is HashMap!2384) (cache!2765 cacheUp!991)))))

(assert (=> d!643856 (= (inv!31345 cacheUp!991) e!1353854)))

(declare-fun b!2124667 () Bool)

(assert (=> b!2124667 (= e!1353854 (validCacheMapUp!247 (cache!2765 cacheUp!991)))))

(assert (= (and d!643856 res!919644) b!2124667))

(assert (=> b!2124667 m!2577248))

(assert (=> start!207246 d!643856))

(declare-fun d!643858 () Bool)

(declare-fun res!919647 () Bool)

(declare-fun e!1353857 () Bool)

(assert (=> d!643858 (=> (not res!919647) (not e!1353857))))

(assert (=> d!643858 (= res!919647 ((_ is HashMap!2385) (cache!2766 cacheDown!1110)))))

(assert (=> d!643858 (= (inv!31344 cacheDown!1110) e!1353857)))

(declare-fun b!2124670 () Bool)

(declare-fun validCacheMapDown!245 (MutableMap!2385) Bool)

(assert (=> b!2124670 (= e!1353857 (validCacheMapDown!245 (cache!2766 cacheDown!1110)))))

(assert (= (and d!643858 res!919647) b!2124670))

(declare-fun m!2577262 () Bool)

(assert (=> b!2124670 m!2577262))

(assert (=> start!207246 d!643858))

(declare-fun d!643860 () Bool)

(declare-fun res!919650 () Bool)

(declare-fun e!1353860 () Bool)

(assert (=> d!643860 (=> (not res!919650) (not e!1353860))))

(assert (=> d!643860 (= res!919650 ((_ is HashMap!2386) (cache!2767 cacheFurthestNullable!130)))))

(assert (=> d!643860 (= (inv!31343 cacheFurthestNullable!130) e!1353860)))

(declare-fun b!2124673 () Bool)

(declare-fun validCacheMapFurthestNullable!97 (MutableMap!2386 BalanceConc!15384) Bool)

(assert (=> b!2124673 (= e!1353860 (validCacheMapFurthestNullable!97 (cache!2767 cacheFurthestNullable!130) (totalInput!2928 cacheFurthestNullable!130)))))

(assert (= (and d!643860 res!919650) b!2124673))

(declare-fun m!2577264 () Bool)

(assert (=> b!2124673 m!2577264))

(assert (=> start!207246 d!643860))

(declare-fun d!643862 () Bool)

(declare-fun e!1353863 () Bool)

(assert (=> d!643862 e!1353863))

(declare-fun res!919653 () Bool)

(assert (=> d!643862 (=> res!919653 e!1353863)))

(declare-fun lt!795464 () Bool)

(assert (=> d!643862 (= res!919653 (not lt!795464))))

(declare-fun drop!1186 (List!23833 Int) List!23833)

(declare-fun size!18567 (List!23833) Int)

(assert (=> d!643862 (= lt!795464 (= (list!9535 input!5507) (drop!1186 (list!9535 totalInput!886) (- (size!18567 (list!9535 totalInput!886)) (size!18567 (list!9535 input!5507))))))))

(assert (=> d!643862 (= (isSuffix!622 (list!9535 input!5507) (list!9535 totalInput!886)) lt!795464)))

(declare-fun b!2124676 () Bool)

(assert (=> b!2124676 (= e!1353863 (>= (size!18567 (list!9535 totalInput!886)) (size!18567 (list!9535 input!5507))))))

(assert (= (and d!643862 (not res!919653)) b!2124676))

(assert (=> d!643862 m!2577212))

(declare-fun m!2577266 () Bool)

(assert (=> d!643862 m!2577266))

(assert (=> d!643862 m!2577218))

(declare-fun m!2577268 () Bool)

(assert (=> d!643862 m!2577268))

(assert (=> d!643862 m!2577212))

(declare-fun m!2577270 () Bool)

(assert (=> d!643862 m!2577270))

(assert (=> b!2124676 m!2577212))

(assert (=> b!2124676 m!2577266))

(assert (=> b!2124676 m!2577218))

(assert (=> b!2124676 m!2577268))

(assert (=> start!207246 d!643862))

(declare-fun d!643864 () Bool)

(assert (=> d!643864 (= (valid!1943 cacheDown!1110) (validCacheMapDown!245 (cache!2766 cacheDown!1110)))))

(declare-fun bs!443462 () Bool)

(assert (= bs!443462 d!643864))

(assert (=> bs!443462 m!2577262))

(assert (=> b!2124576 d!643864))

(declare-fun d!643866 () Bool)

(declare-fun lambda!78756 () Int)

(declare-fun exists!696 ((InoxSet Context!2486) Int) Bool)

(assert (=> d!643866 (= (nullableZipper!68 z!3883) (exists!696 z!3883 lambda!78756))))

(declare-fun bs!443463 () Bool)

(assert (= bs!443463 d!643866))

(declare-fun m!2577272 () Bool)

(assert (=> bs!443463 m!2577272))

(assert (=> b!2124602 d!643866))

(declare-fun d!643868 () Bool)

(declare-fun lt!795467 () Int)

(assert (=> d!643868 (= lt!795467 (size!18567 (list!9535 totalInput!886)))))

(declare-fun size!18568 (Conc!7811) Int)

(assert (=> d!643868 (= lt!795467 (size!18568 (c!339911 totalInput!886)))))

(assert (=> d!643868 (= (size!18566 totalInput!886) lt!795467)))

(declare-fun bs!443464 () Bool)

(assert (= bs!443464 d!643868))

(assert (=> bs!443464 m!2577212))

(assert (=> bs!443464 m!2577212))

(assert (=> bs!443464 m!2577266))

(declare-fun m!2577274 () Bool)

(assert (=> bs!443464 m!2577274))

(assert (=> b!2124602 d!643868))

(declare-fun d!643870 () Bool)

(declare-fun res!919658 () Bool)

(declare-fun e!1353868 () Bool)

(assert (=> d!643870 (=> res!919658 e!1353868)))

(assert (=> d!643870 (= res!919658 ((_ is Nil!23750) (_2!13638 (_1!13639 lt!795453))))))

(assert (=> d!643870 (= (forall!4874 (_2!13638 (_1!13639 lt!795453)) lambda!78753) e!1353868)))

(declare-fun b!2124681 () Bool)

(declare-fun e!1353869 () Bool)

(assert (=> b!2124681 (= e!1353868 e!1353869)))

(declare-fun res!919659 () Bool)

(assert (=> b!2124681 (=> (not res!919659) (not e!1353869))))

(declare-fun dynLambda!11351 (Int StackFrame!58) Bool)

(assert (=> b!2124681 (= res!919659 (dynLambda!11351 lambda!78753 (h!29151 (_2!13638 (_1!13639 lt!795453)))))))

(declare-fun b!2124682 () Bool)

(assert (=> b!2124682 (= e!1353869 (forall!4874 (t!196358 (_2!13638 (_1!13639 lt!795453))) lambda!78753))))

(assert (= (and d!643870 (not res!919658)) b!2124681))

(assert (= (and b!2124681 res!919659) b!2124682))

(declare-fun b_lambda!70517 () Bool)

(assert (=> (not b_lambda!70517) (not b!2124681)))

(declare-fun m!2577276 () Bool)

(assert (=> b!2124681 m!2577276))

(declare-fun m!2577278 () Bool)

(assert (=> b!2124682 m!2577278))

(assert (=> b!2124602 d!643870))

(declare-fun d!643872 () Bool)

(declare-fun lt!795468 () Int)

(assert (=> d!643872 (= lt!795468 (size!18567 (list!9535 input!5507)))))

(assert (=> d!643872 (= lt!795468 (size!18568 (c!339911 input!5507)))))

(assert (=> d!643872 (= (size!18566 input!5507) lt!795468)))

(declare-fun bs!443465 () Bool)

(assert (= bs!443465 d!643872))

(assert (=> bs!443465 m!2577218))

(assert (=> bs!443465 m!2577218))

(assert (=> bs!443465 m!2577268))

(declare-fun m!2577280 () Bool)

(assert (=> bs!443465 m!2577280))

(assert (=> b!2124602 d!643872))

(declare-fun bs!443466 () Bool)

(declare-fun d!643874 () Bool)

(assert (= bs!443466 (and d!643874 b!2124602)))

(declare-fun lt!795506 () Int)

(declare-fun lambda!78771 () Int)

(assert (=> bs!443466 (= (= lt!795506 (_1!13638 (_1!13639 lt!795453))) (= lambda!78771 lambda!78753))))

(assert (=> d!643874 true))

(declare-fun bs!443467 () Bool)

(declare-fun b!2124713 () Bool)

(assert (= bs!443467 (and b!2124713 b!2124602)))

(declare-fun lambda!78772 () Int)

(assert (=> bs!443467 (= (= e!1353774 (_1!13638 (_1!13639 lt!795453))) (= lambda!78772 lambda!78753))))

(declare-fun bs!443468 () Bool)

(assert (= bs!443468 (and b!2124713 d!643874)))

(assert (=> bs!443468 (= (= e!1353774 lt!795506) (= lambda!78772 lambda!78771))))

(assert (=> b!2124713 true))

(declare-fun bs!443469 () Bool)

(declare-fun b!2124710 () Bool)

(assert (= bs!443469 (and b!2124710 b!2124602)))

(declare-fun lambda!78773 () Int)

(declare-fun lt!795500 () Int)

(assert (=> bs!443469 (= (= lt!795500 (_1!13638 (_1!13639 lt!795453))) (= lambda!78773 lambda!78753))))

(declare-fun bs!443470 () Bool)

(assert (= bs!443470 (and b!2124710 d!643874)))

(assert (=> bs!443470 (= (= lt!795500 lt!795506) (= lambda!78773 lambda!78771))))

(declare-fun bs!443471 () Bool)

(assert (= bs!443471 (and b!2124710 b!2124713)))

(assert (=> bs!443471 (= (= lt!795500 e!1353774) (= lambda!78773 lambda!78772))))

(assert (=> b!2124710 true))

(declare-fun bs!443472 () Bool)

(declare-fun b!2124709 () Bool)

(assert (= bs!443472 (and b!2124709 b!2124602)))

(declare-fun lambda!78774 () Int)

(declare-fun lt!795497 () tuple3!2948)

(assert (=> bs!443472 (= (= (_1!13638 (_1!13639 lt!795497)) (_1!13638 (_1!13639 lt!795453))) (= lambda!78774 lambda!78753))))

(declare-fun bs!443473 () Bool)

(assert (= bs!443473 (and b!2124709 d!643874)))

(assert (=> bs!443473 (= (= (_1!13638 (_1!13639 lt!795497)) lt!795506) (= lambda!78774 lambda!78771))))

(declare-fun bs!443474 () Bool)

(assert (= bs!443474 (and b!2124709 b!2124713)))

(assert (=> bs!443474 (= (= (_1!13638 (_1!13639 lt!795497)) e!1353774) (= lambda!78774 lambda!78772))))

(declare-fun bs!443475 () Bool)

(assert (= bs!443475 (and b!2124709 b!2124710)))

(assert (=> bs!443475 (= (= (_1!13638 (_1!13639 lt!795497)) lt!795500) (= lambda!78774 lambda!78773))))

(declare-fun setNonEmpty!15182 () Bool)

(declare-fun setRes!15182 () Bool)

(assert (=> setNonEmpty!15182 (= setRes!15182 true)))

(declare-fun setElem!15182 () Context!2486)

(declare-fun setRest!15182 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15182 (= (z!5744 (h!29151 (_2!13638 (_1!13639 lt!795497)))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15182 true) setRest!15182))))

(declare-fun b!2124724 () Bool)

(declare-fun e!1353889 () Bool)

(declare-fun e!1353888 () Bool)

(assert (=> b!2124724 (= e!1353889 e!1353888)))

(declare-fun b!2124725 () Bool)

(declare-fun e!1353899 () Bool)

(declare-fun e!1353885 () Bool)

(assert (=> b!2124725 (= e!1353899 e!1353885)))

(declare-fun b!2124726 () Bool)

(declare-fun e!1353891 () Bool)

(declare-fun e!1353896 () Bool)

(assert (=> b!2124726 (= e!1353891 e!1353896)))

(declare-fun b!2124727 () Bool)

(declare-fun e!1353886 () Bool)

(declare-fun e!1353900 () Bool)

(assert (=> b!2124727 (= e!1353886 e!1353900)))

(declare-fun b!2124728 () Bool)

(declare-fun e!1353895 () Bool)

(declare-fun mapRes!12070 () Bool)

(assert (=> b!2124728 (= e!1353895 mapRes!12070)))

(declare-fun condMapEmpty!12071 () Bool)

(declare-fun mapDefault!12070 () List!23831)

(assert (=> b!2124728 (= condMapEmpty!12071 (= (arr!3766 (_values!2751 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795497)))))))) ((as const (Array (_ BitVec 32) List!23831)) mapDefault!12070)))))

(declare-fun b!2124729 () Bool)

(declare-fun e!1353898 () Bool)

(declare-fun e!1353894 () Bool)

(assert (=> b!2124729 (= e!1353898 e!1353894)))

(declare-fun b!2124730 () Bool)

(declare-fun e!1353892 () Bool)

(assert (=> b!2124730 (= e!1353892 e!1353899)))

(declare-fun mapNonEmpty!12070 () Bool)

(assert (=> mapNonEmpty!12070 (= mapRes!12070 true)))

(declare-fun mapValue!12070 () List!23831)

(declare-fun mapRest!12071 () (Array (_ BitVec 32) List!23831))

(declare-fun mapKey!12070 () (_ BitVec 32))

(assert (=> mapNonEmpty!12070 (= (arr!3766 (_values!2751 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795497)))))))) (store mapRest!12071 mapKey!12070 mapValue!12070))))

(declare-fun b!2124731 () Bool)

(declare-fun lt!795512 () MutLongMap!2471)

(assert (=> b!2124731 (= e!1353888 (and e!1353892 ((_ is LongMap!2471) lt!795512)))))

(assert (=> b!2124731 (= lt!795512 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795497)))))))

(declare-fun mapIsEmpty!12071 () Bool)

(assert (=> mapIsEmpty!12071 mapRes!12070))

(declare-fun b!2124732 () Bool)

(declare-fun e!1353887 () Bool)

(assert (=> b!2124732 (= e!1353900 e!1353887)))

(declare-fun b!2124733 () Bool)

(assert (=> b!2124733 (= e!1353894 e!1353891)))

(declare-fun b!2124734 () Bool)

(declare-fun e!1353890 () Bool)

(declare-fun e!1353893 () Bool)

(assert (=> b!2124734 (= e!1353890 e!1353893)))

(declare-fun b!2124735 () Bool)

(declare-fun lt!795511 () MutLongMap!2470)

(assert (=> b!2124735 (= e!1353887 (and e!1353898 ((_ is LongMap!2470) lt!795511)))))

(assert (=> b!2124735 (= lt!795511 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795497)))))))

(declare-fun e!1353897 () Bool)

(assert (=> b!2124709 (and e!1353890 e!1353897 e!1353886)))

(declare-fun mapIsEmpty!12070 () Bool)

(declare-fun mapRes!12071 () Bool)

(assert (=> mapIsEmpty!12070 mapRes!12071))

(declare-fun b!2124736 () Bool)

(assert (=> b!2124736 (= e!1353896 mapRes!12071)))

(declare-fun condMapEmpty!12070 () Bool)

(declare-fun mapDefault!12071 () List!23832)

(assert (=> b!2124736 (= condMapEmpty!12070 (= (arr!3765 (_values!2750 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795497)))))))) ((as const (Array (_ BitVec 32) List!23832)) mapDefault!12071)))))

(declare-fun mapNonEmpty!12071 () Bool)

(assert (=> mapNonEmpty!12071 (= mapRes!12071 true)))

(declare-fun mapValue!12071 () List!23832)

(declare-fun mapKey!12071 () (_ BitVec 32))

(declare-fun mapRest!12070 () (Array (_ BitVec 32) List!23832))

(assert (=> mapNonEmpty!12071 (= (arr!3765 (_values!2750 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795497)))))))) (store mapRest!12070 mapKey!12071 mapValue!12071))))

(declare-fun b!2124737 () Bool)

(assert (=> b!2124737 (= e!1353893 setRes!15182)))

(declare-fun condSetEmpty!15182 () Bool)

(assert (=> b!2124737 (= condSetEmpty!15182 (= (z!5744 (h!29151 (_2!13638 (_1!13639 lt!795497)))) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setIsEmpty!15182 () Bool)

(assert (=> setIsEmpty!15182 setRes!15182))

(declare-fun b!2124738 () Bool)

(assert (=> b!2124738 (= e!1353885 e!1353895)))

(declare-fun b!2124739 () Bool)

(assert (=> b!2124739 (= e!1353897 e!1353889)))

(assert (= (and b!2124737 condSetEmpty!15182) setIsEmpty!15182))

(assert (= (and b!2124737 (not condSetEmpty!15182)) setNonEmpty!15182))

(assert (= b!2124734 b!2124737))

(assert (= (and b!2124709 ((_ is Cons!23750) (_2!13638 (_1!13639 lt!795497)))) b!2124734))

(assert (= (and b!2124728 condMapEmpty!12071) mapIsEmpty!12071))

(assert (= (and b!2124728 (not condMapEmpty!12071)) mapNonEmpty!12070))

(assert (= b!2124738 b!2124728))

(assert (= b!2124725 b!2124738))

(assert (= b!2124730 b!2124725))

(assert (= (and b!2124731 ((_ is LongMap!2471) (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795497)))))) b!2124730))

(assert (= b!2124724 b!2124731))

(assert (= (and b!2124739 ((_ is HashMap!2384) (cache!2765 (_2!13639 lt!795497)))) b!2124724))

(assert (= b!2124709 b!2124739))

(assert (= (and b!2124736 condMapEmpty!12070) mapIsEmpty!12070))

(assert (= (and b!2124736 (not condMapEmpty!12070)) mapNonEmpty!12071))

(assert (= b!2124726 b!2124736))

(assert (= b!2124733 b!2124726))

(assert (= b!2124729 b!2124733))

(assert (= (and b!2124735 ((_ is LongMap!2470) (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795497)))))) b!2124729))

(assert (= b!2124732 b!2124735))

(assert (= (and b!2124727 ((_ is HashMap!2385) (cache!2766 (_3!1944 lt!795497)))) b!2124732))

(assert (= b!2124709 b!2124727))

(assert (=> b!2124732 (< (dynLambda!11346 order!14729 (defaultValue!2547 (cache!2766 (_3!1944 lt!795497)))) (dynLambda!11347 order!14731 lambda!78774))))

(assert (=> b!2124738 (< (dynLambda!11348 order!14733 (defaultEntry!2836 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795497)))))))) (dynLambda!11347 order!14731 lambda!78774))))

(assert (=> b!2124724 (< (dynLambda!11349 order!14735 (defaultValue!2546 (cache!2765 (_2!13639 lt!795497)))) (dynLambda!11347 order!14731 lambda!78774))))

(assert (=> b!2124726 (< (dynLambda!11350 order!14737 (defaultEntry!2835 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795497)))))))) (dynLambda!11347 order!14731 lambda!78774))))

(declare-fun m!2577282 () Bool)

(assert (=> mapNonEmpty!12070 m!2577282))

(declare-fun m!2577284 () Bool)

(assert (=> mapNonEmpty!12071 m!2577284))

(declare-fun bs!443476 () Bool)

(declare-fun b!2124714 () Bool)

(assert (= bs!443476 (and b!2124714 b!2124713)))

(declare-fun lambda!78775 () Int)

(assert (=> bs!443476 (not (= lambda!78775 lambda!78772))))

(declare-fun bs!443477 () Bool)

(assert (= bs!443477 (and b!2124714 b!2124710)))

(assert (=> bs!443477 (not (= lambda!78775 lambda!78773))))

(declare-fun bs!443478 () Bool)

(assert (= bs!443478 (and b!2124714 d!643874)))

(assert (=> bs!443478 (not (= lambda!78775 lambda!78771))))

(declare-fun bs!443479 () Bool)

(assert (= bs!443479 (and b!2124714 b!2124709)))

(assert (=> bs!443479 (not (= lambda!78775 lambda!78774))))

(declare-fun bs!443480 () Bool)

(assert (= bs!443480 (and b!2124714 b!2124602)))

(assert (=> bs!443480 (not (= lambda!78775 lambda!78753))))

(assert (=> b!2124714 true))

(declare-fun res!919679 () Bool)

(declare-fun e!1353882 () Bool)

(assert (=> b!2124709 (=> (not res!919679) (not e!1353882))))

(assert (=> b!2124709 (= res!919679 (forall!4874 (_2!13638 (_1!13639 lt!795497)) lambda!78774))))

(declare-fun lt!795498 () Int)

(declare-fun lt!795503 () tuple3!2948)

(declare-datatypes ((tuple3!2952 0))(
  ( (tuple3!2953 (_1!13642 (InoxSet Context!2486)) (_2!13642 CacheUp!1654) (_3!1946 CacheDown!1640)) )
))
(declare-fun lt!795505 () tuple3!2952)

(assert (=> b!2124710 (= lt!795503 (furthestNullablePositionStackMem!13 (_1!13642 lt!795505) (+ lt!795455 1) totalInput!886 lt!795452 lt!795498 (Cons!23750 (StackFrame!59 z!3883 lt!795455 e!1353774 lt!795506 totalInput!886) Nil!23750) (_2!13642 lt!795505) (_3!1946 lt!795505) cacheFurthestNullable!130))))

(declare-datatypes ((Unit!37624 0))(
  ( (Unit!37625) )
))
(declare-fun lt!795510 () Unit!37624)

(declare-fun lt!795507 () Unit!37624)

(assert (=> b!2124710 (= lt!795510 lt!795507)))

(declare-fun call!128727 () Bool)

(assert (=> b!2124710 call!128727))

(declare-fun call!128728 () Unit!37624)

(assert (=> b!2124710 (= lt!795507 call!128728)))

(declare-fun lt!795504 () Unit!37624)

(declare-fun Unit!37626 () Unit!37624)

(assert (=> b!2124710 (= lt!795504 Unit!37626)))

(declare-fun call!128729 () Bool)

(assert (=> b!2124710 call!128729))

(declare-fun furthestNullablePosition!12 ((InoxSet Context!2486) Int BalanceConc!15384 Int Int) Int)

(assert (=> b!2124710 (= lt!795500 (furthestNullablePosition!12 (_1!13642 lt!795505) (+ lt!795455 1) totalInput!886 (size!18566 totalInput!886) lt!795498))))

(declare-fun e!1353880 () Int)

(assert (=> b!2124710 (= lt!795498 e!1353880)))

(declare-fun c!339923 () Bool)

(assert (=> b!2124710 (= c!339923 (nullableZipper!68 (_1!13642 lt!795505)))))

(declare-fun derivationStepZipperMem!19 ((InoxSet Context!2486) C!11492 CacheUp!1654 CacheDown!1640) tuple3!2952)

(declare-fun apply!5915 (BalanceConc!15384 Int) C!11492)

(assert (=> b!2124710 (= lt!795505 (derivationStepZipperMem!19 z!3883 (apply!5915 totalInput!886 lt!795455) cacheUp!991 cacheDown!1110))))

(declare-fun e!1353881 () tuple3!2948)

(assert (=> b!2124710 (= e!1353881 (tuple3!2949 (_1!13639 lt!795503) (_2!13639 lt!795503) (_3!1944 lt!795503)))))

(declare-fun b!2124711 () Bool)

(declare-fun res!919675 () Bool)

(assert (=> b!2124711 (=> (not res!919675) (not e!1353882))))

(assert (=> b!2124711 (= res!919675 (valid!1945 cacheFurthestNullable!130))))

(declare-fun b!2124712 () Bool)

(declare-fun res!919680 () Bool)

(assert (=> b!2124712 (=> (not res!919680) (not e!1353882))))

(assert (=> b!2124712 (= res!919680 (= (totalInput!2928 cacheFurthestNullable!130) totalInput!886))))

(assert (=> d!643874 e!1353882))

(declare-fun res!919678 () Bool)

(assert (=> d!643874 (=> (not res!919678) (not e!1353882))))

(assert (=> d!643874 (= res!919678 (= (_1!13638 (_1!13639 lt!795497)) (furthestNullablePosition!12 z!3883 lt!795455 totalInput!886 lt!795452 e!1353774)))))

(declare-fun e!1353884 () tuple3!2948)

(assert (=> d!643874 (= lt!795497 e!1353884)))

(declare-fun c!339925 () Bool)

(declare-datatypes ((Option!4872 0))(
  ( (None!4871) (Some!4871 (v!28282 Int)) )
))
(declare-fun lt!795499 () Option!4872)

(assert (=> d!643874 (= c!339925 ((_ is Some!4871) lt!795499))))

(declare-fun get!7318 (CacheFurthestNullable!598 (InoxSet Context!2486) Int Int) Option!4872)

(assert (=> d!643874 (= lt!795499 (get!7318 cacheFurthestNullable!130 z!3883 lt!795455 e!1353774))))

(declare-fun lt!795502 () Unit!37624)

(declare-fun Unit!37627 () Unit!37624)

(assert (=> d!643874 (= lt!795502 Unit!37627)))

(assert (=> d!643874 (forall!4874 Nil!23750 lambda!78771)))

(assert (=> d!643874 (= lt!795506 (furthestNullablePosition!12 z!3883 lt!795455 totalInput!886 (size!18566 totalInput!886) e!1353774))))

(assert (=> d!643874 (and (>= lt!795455 0) (<= lt!795455 lt!795452))))

(assert (=> d!643874 (= (furthestNullablePositionStackMem!13 z!3883 lt!795455 totalInput!886 lt!795452 e!1353774 Nil!23750 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130) lt!795497)))

(declare-fun lt!795508 () Unit!37624)

(declare-fun lt!795501 () Unit!37624)

(assert (=> b!2124713 (= lt!795508 lt!795501)))

(assert (=> b!2124713 call!128729))

(assert (=> b!2124713 (= lt!795501 call!128728)))

(declare-fun lt!795509 () Unit!37624)

(declare-fun Unit!37628 () Unit!37624)

(assert (=> b!2124713 (= lt!795509 Unit!37628)))

(assert (=> b!2124713 call!128727))

(assert (=> b!2124713 (= e!1353881 (tuple3!2949 (tuple2!23389 e!1353774 Nil!23750) cacheUp!991 cacheDown!1110))))

(assert (=> b!2124714 (= e!1353882 (forall!4874 (_2!13638 (_1!13639 lt!795497)) lambda!78775))))

(declare-fun b!2124715 () Bool)

(declare-fun res!919677 () Bool)

(assert (=> b!2124715 (=> (not res!919677) (not e!1353882))))

(assert (=> b!2124715 (= res!919677 (valid!1943 (_3!1944 lt!795497)))))

(declare-fun b!2124716 () Bool)

(declare-fun e!1353883 () Bool)

(declare-fun lostCauseZipper!59 ((InoxSet Context!2486)) Bool)

(assert (=> b!2124716 (= e!1353883 (lostCauseZipper!59 z!3883))))

(declare-fun bm!128722 () Bool)

(declare-fun c!339924 () Bool)

(declare-fun lemmaStackPreservesForEqualRes!8 (List!23834 Int Int) Unit!37624)

(assert (=> bm!128722 (= call!128728 (lemmaStackPreservesForEqualRes!8 Nil!23750 lt!795506 (ite c!339924 e!1353774 lt!795500)))))

(declare-fun bm!128723 () Bool)

(assert (=> bm!128723 (= call!128727 (forall!4874 Nil!23750 (ite c!339924 lambda!78771 lambda!78773)))))

(declare-fun b!2124717 () Bool)

(assert (=> b!2124717 (= e!1353884 (tuple3!2949 (tuple2!23389 (v!28282 lt!795499) Nil!23750) cacheUp!991 cacheDown!1110))))

(declare-fun b!2124718 () Bool)

(assert (=> b!2124718 (= e!1353880 e!1353774)))

(declare-fun bm!128724 () Bool)

(assert (=> bm!128724 (= call!128729 (forall!4874 Nil!23750 (ite c!339924 lambda!78772 lambda!78771)))))

(declare-fun b!2124719 () Bool)

(declare-fun res!919674 () Bool)

(assert (=> b!2124719 (=> (not res!919674) (not e!1353882))))

(assert (=> b!2124719 (= res!919674 (valid!1944 (_2!13639 lt!795497)))))

(declare-fun b!2124720 () Bool)

(assert (=> b!2124720 (= e!1353880 lt!795455)))

(declare-fun b!2124721 () Bool)

(assert (=> b!2124721 (= e!1353884 e!1353881)))

(declare-fun res!919676 () Bool)

(assert (=> b!2124721 (= res!919676 (= lt!795455 lt!795452))))

(assert (=> b!2124721 (=> res!919676 e!1353883)))

(assert (=> b!2124721 (= c!339924 e!1353883)))

(assert (= (and d!643874 c!339925) b!2124717))

(assert (= (and d!643874 (not c!339925)) b!2124721))

(assert (= (and b!2124721 (not res!919676)) b!2124716))

(assert (= (and b!2124721 c!339924) b!2124713))

(assert (= (and b!2124721 (not c!339924)) b!2124710))

(assert (= (and b!2124710 c!339923) b!2124720))

(assert (= (and b!2124710 (not c!339923)) b!2124718))

(assert (= (or b!2124713 b!2124710) bm!128724))

(assert (= (or b!2124713 b!2124710) bm!128723))

(assert (= (or b!2124713 b!2124710) bm!128722))

(assert (= (and d!643874 res!919678) b!2124709))

(assert (= (and b!2124709 res!919679) b!2124719))

(assert (= (and b!2124719 res!919674) b!2124715))

(assert (= (and b!2124715 res!919677) b!2124711))

(assert (= (and b!2124711 res!919675) b!2124712))

(assert (= (and b!2124712 res!919680) b!2124714))

(declare-fun m!2577286 () Bool)

(assert (=> b!2124714 m!2577286))

(declare-fun m!2577288 () Bool)

(assert (=> b!2124716 m!2577288))

(declare-fun m!2577290 () Bool)

(assert (=> bm!128724 m!2577290))

(declare-fun m!2577292 () Bool)

(assert (=> b!2124715 m!2577292))

(declare-fun m!2577294 () Bool)

(assert (=> b!2124710 m!2577294))

(declare-fun m!2577296 () Bool)

(assert (=> b!2124710 m!2577296))

(assert (=> b!2124710 m!2577238))

(declare-fun m!2577298 () Bool)

(assert (=> b!2124710 m!2577298))

(assert (=> b!2124710 m!2577238))

(declare-fun m!2577300 () Bool)

(assert (=> b!2124710 m!2577300))

(declare-fun m!2577302 () Bool)

(assert (=> b!2124710 m!2577302))

(assert (=> b!2124710 m!2577294))

(declare-fun m!2577304 () Bool)

(assert (=> b!2124709 m!2577304))

(declare-fun m!2577306 () Bool)

(assert (=> bm!128722 m!2577306))

(assert (=> b!2124711 m!2577198))

(declare-fun m!2577308 () Bool)

(assert (=> b!2124719 m!2577308))

(assert (=> d!643874 m!2577238))

(declare-fun m!2577310 () Bool)

(assert (=> d!643874 m!2577310))

(assert (=> d!643874 m!2577238))

(declare-fun m!2577312 () Bool)

(assert (=> d!643874 m!2577312))

(declare-fun m!2577314 () Bool)

(assert (=> d!643874 m!2577314))

(declare-fun m!2577316 () Bool)

(assert (=> d!643874 m!2577316))

(declare-fun m!2577318 () Bool)

(assert (=> bm!128723 m!2577318))

(assert (=> b!2124602 d!643874))

(declare-fun d!643876 () Bool)

(assert (=> d!643876 (= (array_inv!2692 (_keys!2767 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110))))))) (bvsge (size!18562 (_keys!2767 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2124575 d!643876))

(declare-fun d!643878 () Bool)

(assert (=> d!643878 (= (array_inv!2693 (_values!2750 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110))))))) (bvsge (size!18563 (_values!2750 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2124575 d!643878))

(declare-fun d!643880 () Bool)

(assert (=> d!643880 (= (valid!1945 cacheFurthestNullable!130) (validCacheMapFurthestNullable!97 (cache!2767 cacheFurthestNullable!130) (totalInput!2928 cacheFurthestNullable!130)))))

(declare-fun bs!443481 () Bool)

(assert (= bs!443481 d!643880))

(assert (=> bs!443481 m!2577264))

(assert (=> b!2124592 d!643880))

(declare-fun d!643882 () Bool)

(declare-fun c!339926 () Bool)

(assert (=> d!643882 (= c!339926 ((_ is Node!7811) (c!339911 totalInput!886)))))

(declare-fun e!1353901 () Bool)

(assert (=> d!643882 (= (inv!31341 (c!339911 totalInput!886)) e!1353901)))

(declare-fun b!2124742 () Bool)

(assert (=> b!2124742 (= e!1353901 (inv!31347 (c!339911 totalInput!886)))))

(declare-fun b!2124743 () Bool)

(declare-fun e!1353902 () Bool)

(assert (=> b!2124743 (= e!1353901 e!1353902)))

(declare-fun res!919681 () Bool)

(assert (=> b!2124743 (= res!919681 (not ((_ is Leaf!11415) (c!339911 totalInput!886))))))

(assert (=> b!2124743 (=> res!919681 e!1353902)))

(declare-fun b!2124744 () Bool)

(assert (=> b!2124744 (= e!1353902 (inv!31348 (c!339911 totalInput!886)))))

(assert (= (and d!643882 c!339926) b!2124742))

(assert (= (and d!643882 (not c!339926)) b!2124743))

(assert (= (and b!2124743 (not res!919681)) b!2124744))

(declare-fun m!2577320 () Bool)

(assert (=> b!2124742 m!2577320))

(declare-fun m!2577322 () Bool)

(assert (=> b!2124744 m!2577322))

(assert (=> b!2124581 d!643882))

(declare-fun d!643884 () Bool)

(declare-fun lambda!78778 () Int)

(declare-fun forall!4875 (List!23830 Int) Bool)

(assert (=> d!643884 (= (inv!31346 setElem!15178) (forall!4875 (exprs!1743 setElem!15178) lambda!78778))))

(declare-fun bs!443482 () Bool)

(assert (= bs!443482 d!643884))

(declare-fun m!2577324 () Bool)

(assert (=> bs!443482 m!2577324))

(assert (=> setNonEmpty!15178 d!643884))

(declare-fun d!643886 () Bool)

(assert (=> d!643886 (= (array_inv!2692 (_keys!2768 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991))))))) (bvsge (size!18562 (_keys!2768 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2124580 d!643886))

(declare-fun d!643888 () Bool)

(assert (=> d!643888 (= (array_inv!2694 (_values!2751 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991))))))) (bvsge (size!18564 (_values!2751 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2124580 d!643888))

(declare-fun d!643890 () Bool)

(assert (=> d!643890 (= (inv!31342 (totalInput!2928 cacheFurthestNullable!130)) (isBalanced!2451 (c!339911 (totalInput!2928 cacheFurthestNullable!130))))))

(declare-fun bs!443483 () Bool)

(assert (= bs!443483 d!643890))

(declare-fun m!2577326 () Bool)

(assert (=> bs!443483 m!2577326))

(assert (=> b!2124589 d!643890))

(declare-fun d!643892 () Bool)

(declare-fun c!339927 () Bool)

(assert (=> d!643892 (= c!339927 ((_ is Node!7811) (c!339911 input!5507)))))

(declare-fun e!1353903 () Bool)

(assert (=> d!643892 (= (inv!31341 (c!339911 input!5507)) e!1353903)))

(declare-fun b!2124745 () Bool)

(assert (=> b!2124745 (= e!1353903 (inv!31347 (c!339911 input!5507)))))

(declare-fun b!2124746 () Bool)

(declare-fun e!1353904 () Bool)

(assert (=> b!2124746 (= e!1353903 e!1353904)))

(declare-fun res!919682 () Bool)

(assert (=> b!2124746 (= res!919682 (not ((_ is Leaf!11415) (c!339911 input!5507))))))

(assert (=> b!2124746 (=> res!919682 e!1353904)))

(declare-fun b!2124747 () Bool)

(assert (=> b!2124747 (= e!1353904 (inv!31348 (c!339911 input!5507)))))

(assert (= (and d!643892 c!339927) b!2124745))

(assert (= (and d!643892 (not c!339927)) b!2124746))

(assert (= (and b!2124746 (not res!919682)) b!2124747))

(declare-fun m!2577328 () Bool)

(assert (=> b!2124745 m!2577328))

(declare-fun m!2577330 () Bool)

(assert (=> b!2124747 m!2577330))

(assert (=> b!2124579 d!643892))

(declare-fun setNonEmpty!15187 () Bool)

(declare-fun setElem!15187 () Context!2486)

(declare-fun e!1353916 () Bool)

(declare-fun setRes!15187 () Bool)

(declare-fun tp!651149 () Bool)

(assert (=> setNonEmpty!15187 (= setRes!15187 (and tp!651149 (inv!31346 setElem!15187) e!1353916))))

(declare-fun mapDefault!12074 () List!23835)

(declare-fun setRest!15187 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15187 (= (_1!13640 (_1!13641 (h!29152 mapDefault!12074))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15187 true) setRest!15187))))

(declare-fun b!2124758 () Bool)

(declare-fun e!1353913 () Bool)

(declare-fun setRes!15188 () Bool)

(declare-fun tp!651154 () Bool)

(assert (=> b!2124758 (= e!1353913 (and setRes!15188 tp!651154))))

(declare-fun condSetEmpty!15188 () Bool)

(declare-fun mapValue!12074 () List!23835)

(assert (=> b!2124758 (= condSetEmpty!15188 (= (_1!13640 (_1!13641 (h!29152 mapValue!12074))) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun mapIsEmpty!12074 () Bool)

(declare-fun mapRes!12074 () Bool)

(assert (=> mapIsEmpty!12074 mapRes!12074))

(declare-fun setIsEmpty!15187 () Bool)

(assert (=> setIsEmpty!15187 setRes!15188))

(declare-fun mapNonEmpty!12074 () Bool)

(declare-fun tp!651151 () Bool)

(assert (=> mapNonEmpty!12074 (= mapRes!12074 (and tp!651151 e!1353913))))

(declare-fun mapKey!12074 () (_ BitVec 32))

(declare-fun mapRest!12074 () (Array (_ BitVec 32) List!23835))

(assert (=> mapNonEmpty!12074 (= mapRest!12062 (store mapRest!12074 mapKey!12074 mapValue!12074))))

(declare-fun b!2124760 () Bool)

(declare-fun e!1353915 () Bool)

(declare-fun tp!651148 () Bool)

(assert (=> b!2124760 (= e!1353915 tp!651148)))

(declare-fun setElem!15188 () Context!2486)

(declare-fun tp!651152 () Bool)

(declare-fun setNonEmpty!15188 () Bool)

(assert (=> setNonEmpty!15188 (= setRes!15188 (and tp!651152 (inv!31346 setElem!15188) e!1353915))))

(declare-fun setRest!15188 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15188 (= (_1!13640 (_1!13641 (h!29152 mapValue!12074))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15188 true) setRest!15188))))

(declare-fun setIsEmpty!15188 () Bool)

(assert (=> setIsEmpty!15188 setRes!15187))

(declare-fun b!2124761 () Bool)

(declare-fun tp!651153 () Bool)

(assert (=> b!2124761 (= e!1353916 tp!651153)))

(declare-fun condMapEmpty!12074 () Bool)

(assert (=> mapNonEmpty!12061 (= condMapEmpty!12074 (= mapRest!12062 ((as const (Array (_ BitVec 32) List!23835)) mapDefault!12074)))))

(declare-fun e!1353914 () Bool)

(assert (=> mapNonEmpty!12061 (= tp!651127 (and e!1353914 mapRes!12074))))

(declare-fun b!2124759 () Bool)

(declare-fun tp!651150 () Bool)

(assert (=> b!2124759 (= e!1353914 (and setRes!15187 tp!651150))))

(declare-fun condSetEmpty!15187 () Bool)

(assert (=> b!2124759 (= condSetEmpty!15187 (= (_1!13640 (_1!13641 (h!29152 mapDefault!12074))) ((as const (Array Context!2486 Bool)) false)))))

(assert (= (and mapNonEmpty!12061 condMapEmpty!12074) mapIsEmpty!12074))

(assert (= (and mapNonEmpty!12061 (not condMapEmpty!12074)) mapNonEmpty!12074))

(assert (= (and b!2124758 condSetEmpty!15188) setIsEmpty!15187))

(assert (= (and b!2124758 (not condSetEmpty!15188)) setNonEmpty!15188))

(assert (= setNonEmpty!15188 b!2124760))

(assert (= (and mapNonEmpty!12074 ((_ is Cons!23751) mapValue!12074)) b!2124758))

(assert (= (and b!2124759 condSetEmpty!15187) setIsEmpty!15188))

(assert (= (and b!2124759 (not condSetEmpty!15187)) setNonEmpty!15187))

(assert (= setNonEmpty!15187 b!2124761))

(assert (= (and mapNonEmpty!12061 ((_ is Cons!23751) mapDefault!12074)) b!2124759))

(declare-fun m!2577332 () Bool)

(assert (=> setNonEmpty!15187 m!2577332))

(declare-fun m!2577334 () Bool)

(assert (=> mapNonEmpty!12074 m!2577334))

(declare-fun m!2577336 () Bool)

(assert (=> setNonEmpty!15188 m!2577336))

(declare-fun b!2124769 () Bool)

(declare-fun e!1353922 () Bool)

(declare-fun tp!651161 () Bool)

(assert (=> b!2124769 (= e!1353922 tp!651161)))

(declare-fun e!1353921 () Bool)

(assert (=> mapNonEmpty!12061 (= tp!651123 e!1353921)))

(declare-fun setElem!15191 () Context!2486)

(declare-fun setRes!15191 () Bool)

(declare-fun setNonEmpty!15191 () Bool)

(declare-fun tp!651162 () Bool)

(assert (=> setNonEmpty!15191 (= setRes!15191 (and tp!651162 (inv!31346 setElem!15191) e!1353922))))

(declare-fun setRest!15191 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15191 (= (_1!13640 (_1!13641 (h!29152 mapValue!12061))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15191 true) setRest!15191))))

(declare-fun setIsEmpty!15191 () Bool)

(assert (=> setIsEmpty!15191 setRes!15191))

(declare-fun b!2124768 () Bool)

(declare-fun tp!651163 () Bool)

(assert (=> b!2124768 (= e!1353921 (and setRes!15191 tp!651163))))

(declare-fun condSetEmpty!15191 () Bool)

(assert (=> b!2124768 (= condSetEmpty!15191 (= (_1!13640 (_1!13641 (h!29152 mapValue!12061))) ((as const (Array Context!2486 Bool)) false)))))

(assert (= (and b!2124768 condSetEmpty!15191) setIsEmpty!15191))

(assert (= (and b!2124768 (not condSetEmpty!15191)) setNonEmpty!15191))

(assert (= setNonEmpty!15191 b!2124769))

(assert (= (and mapNonEmpty!12061 ((_ is Cons!23751) mapValue!12061)) b!2124768))

(declare-fun m!2577338 () Bool)

(assert (=> setNonEmpty!15191 m!2577338))

(declare-fun setIsEmpty!15196 () Bool)

(declare-fun setRes!15197 () Bool)

(assert (=> setIsEmpty!15196 setRes!15197))

(declare-fun mapIsEmpty!12077 () Bool)

(declare-fun mapRes!12077 () Bool)

(assert (=> mapIsEmpty!12077 mapRes!12077))

(declare-fun mapNonEmpty!12077 () Bool)

(declare-fun e!1353928 () Bool)

(assert (=> mapNonEmpty!12077 (= mapRes!12077 e!1353928)))

(declare-fun mapRest!12077 () (Array (_ BitVec 32) List!23831))

(declare-fun mapKey!12077 () (_ BitVec 32))

(declare-fun mapValue!12077 () List!23831)

(assert (=> mapNonEmpty!12077 (= mapRest!12069 (store mapRest!12077 mapKey!12077 mapValue!12077))))

(declare-fun b!2124776 () Bool)

(declare-fun e!1353927 () Bool)

(assert (=> b!2124776 (= e!1353927 setRes!15197)))

(declare-fun condSetEmpty!15196 () Bool)

(declare-fun mapDefault!12077 () List!23831)

(assert (=> b!2124776 (= condSetEmpty!15196 (= (_2!13637 (h!29148 mapDefault!12077)) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setIsEmpty!15197 () Bool)

(declare-fun setRes!15196 () Bool)

(assert (=> setIsEmpty!15197 setRes!15196))

(declare-fun condMapEmpty!12077 () Bool)

(assert (=> mapNonEmpty!12068 (= condMapEmpty!12077 (= mapRest!12069 ((as const (Array (_ BitVec 32) List!23831)) mapDefault!12077)))))

(assert (=> mapNonEmpty!12068 (and e!1353927 mapRes!12077)))

(declare-fun setNonEmpty!15196 () Bool)

(assert (=> setNonEmpty!15196 (= setRes!15197 true)))

(declare-fun setElem!15196 () Context!2486)

(declare-fun setRest!15197 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15196 (= (_2!13637 (h!29148 mapDefault!12077)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15196 true) setRest!15197))))

(declare-fun setNonEmpty!15197 () Bool)

(assert (=> setNonEmpty!15197 (= setRes!15196 true)))

(declare-fun setElem!15197 () Context!2486)

(declare-fun setRest!15196 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15197 (= (_2!13637 (h!29148 mapValue!12077)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15197 true) setRest!15196))))

(declare-fun b!2124777 () Bool)

(assert (=> b!2124777 (= e!1353928 setRes!15196)))

(declare-fun condSetEmpty!15197 () Bool)

(assert (=> b!2124777 (= condSetEmpty!15197 (= (_2!13637 (h!29148 mapValue!12077)) ((as const (Array Context!2486 Bool)) false)))))

(assert (= (and mapNonEmpty!12068 condMapEmpty!12077) mapIsEmpty!12077))

(assert (= (and mapNonEmpty!12068 (not condMapEmpty!12077)) mapNonEmpty!12077))

(assert (= (and b!2124777 condSetEmpty!15197) setIsEmpty!15197))

(assert (= (and b!2124777 (not condSetEmpty!15197)) setNonEmpty!15197))

(assert (= (and mapNonEmpty!12077 ((_ is Cons!23747) mapValue!12077)) b!2124777))

(assert (= (and b!2124776 condSetEmpty!15196) setIsEmpty!15196))

(assert (= (and b!2124776 (not condSetEmpty!15196)) setNonEmpty!15196))

(assert (= (and mapNonEmpty!12068 ((_ is Cons!23747) mapDefault!12077)) b!2124776))

(declare-fun m!2577340 () Bool)

(assert (=> mapNonEmpty!12077 m!2577340))

(declare-fun b!2124782 () Bool)

(declare-fun e!1353931 () Bool)

(declare-fun setRes!15200 () Bool)

(assert (=> b!2124782 (= e!1353931 setRes!15200)))

(declare-fun condSetEmpty!15200 () Bool)

(assert (=> b!2124782 (= condSetEmpty!15200 (= (_2!13637 (h!29148 mapValue!12068)) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setIsEmpty!15200 () Bool)

(assert (=> setIsEmpty!15200 setRes!15200))

(declare-fun setNonEmpty!15200 () Bool)

(assert (=> setNonEmpty!15200 (= setRes!15200 true)))

(declare-fun setElem!15200 () Context!2486)

(declare-fun setRest!15200 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15200 (= (_2!13637 (h!29148 mapValue!12068)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15200 true) setRest!15200))))

(assert (=> mapNonEmpty!12068 e!1353931))

(assert (= (and b!2124782 condSetEmpty!15200) setIsEmpty!15200))

(assert (= (and b!2124782 (not condSetEmpty!15200)) setNonEmpty!15200))

(assert (= (and mapNonEmpty!12068 ((_ is Cons!23747) mapValue!12068)) b!2124782))

(declare-fun b!2124784 () Bool)

(declare-fun e!1353933 () Bool)

(declare-fun tp!651164 () Bool)

(assert (=> b!2124784 (= e!1353933 tp!651164)))

(declare-fun e!1353932 () Bool)

(assert (=> b!2124596 (= tp!651110 e!1353932)))

(declare-fun setRes!15201 () Bool)

(declare-fun setNonEmpty!15201 () Bool)

(declare-fun tp!651165 () Bool)

(declare-fun setElem!15201 () Context!2486)

(assert (=> setNonEmpty!15201 (= setRes!15201 (and tp!651165 (inv!31346 setElem!15201) e!1353933))))

(declare-fun setRest!15201 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15201 (= (_1!13640 (_1!13641 (h!29152 (zeroValue!2730 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15201 true) setRest!15201))))

(declare-fun setIsEmpty!15201 () Bool)

(assert (=> setIsEmpty!15201 setRes!15201))

(declare-fun b!2124783 () Bool)

(declare-fun tp!651166 () Bool)

(assert (=> b!2124783 (= e!1353932 (and setRes!15201 tp!651166))))

(declare-fun condSetEmpty!15201 () Bool)

(assert (=> b!2124783 (= condSetEmpty!15201 (= (_1!13640 (_1!13641 (h!29152 (zeroValue!2730 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))))))) ((as const (Array Context!2486 Bool)) false)))))

(assert (= (and b!2124783 condSetEmpty!15201) setIsEmpty!15201))

(assert (= (and b!2124783 (not condSetEmpty!15201)) setNonEmpty!15201))

(assert (= setNonEmpty!15201 b!2124784))

(assert (= (and b!2124596 ((_ is Cons!23751) (zeroValue!2730 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130)))))))) b!2124783))

(declare-fun m!2577342 () Bool)

(assert (=> setNonEmpty!15201 m!2577342))

(declare-fun b!2124786 () Bool)

(declare-fun e!1353935 () Bool)

(declare-fun tp!651167 () Bool)

(assert (=> b!2124786 (= e!1353935 tp!651167)))

(declare-fun e!1353934 () Bool)

(assert (=> b!2124596 (= tp!651131 e!1353934)))

(declare-fun tp!651168 () Bool)

(declare-fun setRes!15202 () Bool)

(declare-fun setNonEmpty!15202 () Bool)

(declare-fun setElem!15202 () Context!2486)

(assert (=> setNonEmpty!15202 (= setRes!15202 (and tp!651168 (inv!31346 setElem!15202) e!1353935))))

(declare-fun setRest!15202 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15202 (= (_1!13640 (_1!13641 (h!29152 (minValue!2730 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15202 true) setRest!15202))))

(declare-fun setIsEmpty!15202 () Bool)

(assert (=> setIsEmpty!15202 setRes!15202))

(declare-fun b!2124785 () Bool)

(declare-fun tp!651169 () Bool)

(assert (=> b!2124785 (= e!1353934 (and setRes!15202 tp!651169))))

(declare-fun condSetEmpty!15202 () Bool)

(assert (=> b!2124785 (= condSetEmpty!15202 (= (_1!13640 (_1!13641 (h!29152 (minValue!2730 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130))))))))) ((as const (Array Context!2486 Bool)) false)))))

(assert (= (and b!2124785 condSetEmpty!15202) setIsEmpty!15202))

(assert (= (and b!2124785 (not condSetEmpty!15202)) setNonEmpty!15202))

(assert (= setNonEmpty!15202 b!2124786))

(assert (= (and b!2124596 ((_ is Cons!23751) (minValue!2730 (v!28280 (underlying!5139 (v!28281 (underlying!5140 (cache!2767 cacheFurthestNullable!130)))))))) b!2124785))

(declare-fun m!2577344 () Bool)

(assert (=> setNonEmpty!15202 m!2577344))

(declare-fun tp!651176 () Bool)

(declare-fun e!1353941 () Bool)

(declare-fun b!2124795 () Bool)

(declare-fun tp!651178 () Bool)

(assert (=> b!2124795 (= e!1353941 (and (inv!31341 (left!18364 (c!339911 (totalInput!2928 cacheFurthestNullable!130)))) tp!651176 (inv!31341 (right!18694 (c!339911 (totalInput!2928 cacheFurthestNullable!130)))) tp!651178))))

(declare-fun b!2124797 () Bool)

(declare-fun e!1353940 () Bool)

(declare-fun tp!651177 () Bool)

(assert (=> b!2124797 (= e!1353940 tp!651177)))

(declare-fun b!2124796 () Bool)

(declare-fun inv!31349 (IArray!15627) Bool)

(assert (=> b!2124796 (= e!1353941 (and (inv!31349 (xs!10753 (c!339911 (totalInput!2928 cacheFurthestNullable!130)))) e!1353940))))

(assert (=> b!2124595 (= tp!651109 (and (inv!31341 (c!339911 (totalInput!2928 cacheFurthestNullable!130))) e!1353941))))

(assert (= (and b!2124595 ((_ is Node!7811) (c!339911 (totalInput!2928 cacheFurthestNullable!130)))) b!2124795))

(assert (= b!2124796 b!2124797))

(assert (= (and b!2124595 ((_ is Leaf!11415) (c!339911 (totalInput!2928 cacheFurthestNullable!130)))) b!2124796))

(declare-fun m!2577346 () Bool)

(assert (=> b!2124795 m!2577346))

(declare-fun m!2577348 () Bool)

(assert (=> b!2124795 m!2577348))

(declare-fun m!2577350 () Bool)

(assert (=> b!2124796 m!2577350))

(assert (=> b!2124595 m!2577208))

(declare-fun b!2124798 () Bool)

(declare-fun e!1353942 () Bool)

(declare-fun setRes!15203 () Bool)

(assert (=> b!2124798 (= e!1353942 setRes!15203)))

(declare-fun condSetEmpty!15203 () Bool)

(assert (=> b!2124798 (= condSetEmpty!15203 (= (_2!13637 (h!29148 mapDefault!12068)) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setIsEmpty!15203 () Bool)

(assert (=> setIsEmpty!15203 setRes!15203))

(declare-fun setNonEmpty!15203 () Bool)

(assert (=> setNonEmpty!15203 (= setRes!15203 true)))

(declare-fun setElem!15203 () Context!2486)

(declare-fun setRest!15203 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15203 (= (_2!13637 (h!29148 mapDefault!12068)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15203 true) setRest!15203))))

(assert (=> b!2124644 e!1353942))

(assert (= (and b!2124798 condSetEmpty!15203) setIsEmpty!15203))

(assert (= (and b!2124798 (not condSetEmpty!15203)) setNonEmpty!15203))

(assert (= (and b!2124644 ((_ is Cons!23747) mapDefault!12068)) b!2124798))

(declare-fun setIsEmpty!15206 () Bool)

(declare-fun setRes!15206 () Bool)

(assert (=> setIsEmpty!15206 setRes!15206))

(declare-fun e!1353950 () Bool)

(assert (=> b!2124575 (= tp!651124 e!1353950)))

(declare-fun setNonEmpty!15206 () Bool)

(declare-fun tp!651189 () Bool)

(declare-fun setElem!15206 () Context!2486)

(declare-fun e!1353951 () Bool)

(assert (=> setNonEmpty!15206 (= setRes!15206 (and tp!651189 (inv!31346 setElem!15206) e!1353951))))

(declare-fun setRest!15206 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15206 (= (_2!13635 (h!29149 (zeroValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15206 true) setRest!15206))))

(declare-fun b!2124807 () Bool)

(declare-fun tp!651191 () Bool)

(assert (=> b!2124807 (= e!1353951 tp!651191)))

(declare-fun tp!651193 () Bool)

(declare-fun tp_is_empty!9495 () Bool)

(declare-fun b!2124808 () Bool)

(declare-fun tp!651190 () Bool)

(declare-fun e!1353949 () Bool)

(assert (=> b!2124808 (= e!1353950 (and tp!651190 (inv!31346 (_2!13634 (_1!13635 (h!29149 (zeroValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110)))))))))) e!1353949 tp_is_empty!9495 setRes!15206 tp!651193))))

(declare-fun condSetEmpty!15206 () Bool)

(assert (=> b!2124808 (= condSetEmpty!15206 (= (_2!13635 (h!29149 (zeroValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110)))))))) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun b!2124809 () Bool)

(declare-fun tp!651192 () Bool)

(assert (=> b!2124809 (= e!1353949 tp!651192)))

(assert (= b!2124808 b!2124809))

(assert (= (and b!2124808 condSetEmpty!15206) setIsEmpty!15206))

(assert (= (and b!2124808 (not condSetEmpty!15206)) setNonEmpty!15206))

(assert (= setNonEmpty!15206 b!2124807))

(assert (= (and b!2124575 ((_ is Cons!23748) (zeroValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110)))))))) b!2124808))

(declare-fun m!2577352 () Bool)

(assert (=> setNonEmpty!15206 m!2577352))

(declare-fun m!2577354 () Bool)

(assert (=> b!2124808 m!2577354))

(declare-fun setIsEmpty!15207 () Bool)

(declare-fun setRes!15207 () Bool)

(assert (=> setIsEmpty!15207 setRes!15207))

(declare-fun e!1353953 () Bool)

(assert (=> b!2124575 (= tp!651114 e!1353953)))

(declare-fun setNonEmpty!15207 () Bool)

(declare-fun setElem!15207 () Context!2486)

(declare-fun e!1353954 () Bool)

(declare-fun tp!651194 () Bool)

(assert (=> setNonEmpty!15207 (= setRes!15207 (and tp!651194 (inv!31346 setElem!15207) e!1353954))))

(declare-fun setRest!15207 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15207 (= (_2!13635 (h!29149 (minValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15207 true) setRest!15207))))

(declare-fun b!2124810 () Bool)

(declare-fun tp!651196 () Bool)

(assert (=> b!2124810 (= e!1353954 tp!651196)))

(declare-fun b!2124811 () Bool)

(declare-fun e!1353952 () Bool)

(declare-fun tp!651195 () Bool)

(declare-fun tp!651198 () Bool)

(assert (=> b!2124811 (= e!1353953 (and tp!651195 (inv!31346 (_2!13634 (_1!13635 (h!29149 (minValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110)))))))))) e!1353952 tp_is_empty!9495 setRes!15207 tp!651198))))

(declare-fun condSetEmpty!15207 () Bool)

(assert (=> b!2124811 (= condSetEmpty!15207 (= (_2!13635 (h!29149 (minValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110)))))))) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun b!2124812 () Bool)

(declare-fun tp!651197 () Bool)

(assert (=> b!2124812 (= e!1353952 tp!651197)))

(assert (= b!2124811 b!2124812))

(assert (= (and b!2124811 condSetEmpty!15207) setIsEmpty!15207))

(assert (= (and b!2124811 (not condSetEmpty!15207)) setNonEmpty!15207))

(assert (= setNonEmpty!15207 b!2124810))

(assert (= (and b!2124575 ((_ is Cons!23748) (minValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 cacheDown!1110)))))))) b!2124811))

(declare-fun m!2577356 () Bool)

(assert (=> setNonEmpty!15207 m!2577356))

(declare-fun m!2577358 () Bool)

(assert (=> b!2124811 m!2577358))

(declare-fun b!2124817 () Bool)

(declare-fun e!1353957 () Bool)

(declare-fun setRes!15210 () Bool)

(assert (=> b!2124817 (= e!1353957 setRes!15210)))

(declare-fun condSetEmpty!15210 () Bool)

(assert (=> b!2124817 (= condSetEmpty!15210 (= (_2!13635 (h!29149 (zeroValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795453))))))))) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setIsEmpty!15210 () Bool)

(assert (=> setIsEmpty!15210 setRes!15210))

(declare-fun setNonEmpty!15210 () Bool)

(assert (=> setNonEmpty!15210 (= setRes!15210 true)))

(declare-fun setElem!15210 () Context!2486)

(declare-fun setRest!15210 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15210 (= (_2!13635 (h!29149 (zeroValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795453))))))))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15210 true) setRest!15210))))

(assert (=> b!2124642 e!1353957))

(assert (= (and b!2124817 condSetEmpty!15210) setIsEmpty!15210))

(assert (= (and b!2124817 (not condSetEmpty!15210)) setNonEmpty!15210))

(assert (= (and b!2124642 ((_ is Cons!23748) (zeroValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795453))))))))) b!2124817))

(declare-fun b!2124818 () Bool)

(declare-fun e!1353958 () Bool)

(declare-fun setRes!15211 () Bool)

(assert (=> b!2124818 (= e!1353958 setRes!15211)))

(declare-fun condSetEmpty!15211 () Bool)

(assert (=> b!2124818 (= condSetEmpty!15211 (= (_2!13635 (h!29149 (minValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795453))))))))) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setIsEmpty!15211 () Bool)

(assert (=> setIsEmpty!15211 setRes!15211))

(declare-fun setNonEmpty!15211 () Bool)

(assert (=> setNonEmpty!15211 (= setRes!15211 true)))

(declare-fun setElem!15211 () Context!2486)

(declare-fun setRest!15211 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15211 (= (_2!13635 (h!29149 (minValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795453))))))))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15211 true) setRest!15211))))

(assert (=> b!2124642 e!1353958))

(assert (= (and b!2124818 condSetEmpty!15211) setIsEmpty!15211))

(assert (= (and b!2124818 (not condSetEmpty!15211)) setNonEmpty!15211))

(assert (= (and b!2124642 ((_ is Cons!23748) (minValue!2728 (v!28276 (underlying!5135 (v!28277 (underlying!5138 (cache!2766 (_3!1944 lt!795453))))))))) b!2124818))

(declare-fun condSetEmpty!15214 () Bool)

(assert (=> setNonEmpty!15181 (= condSetEmpty!15214 (= setRest!15181 ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setRes!15214 () Bool)

(assert (=> setNonEmpty!15181 setRes!15214))

(declare-fun setIsEmpty!15214 () Bool)

(assert (=> setIsEmpty!15214 setRes!15214))

(declare-fun setNonEmpty!15214 () Bool)

(assert (=> setNonEmpty!15214 (= setRes!15214 true)))

(declare-fun setElem!15214 () Context!2486)

(declare-fun setRest!15214 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15214 (= setRest!15181 ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15214 true) setRest!15214))))

(assert (= (and setNonEmpty!15181 condSetEmpty!15214) setIsEmpty!15214))

(assert (= (and setNonEmpty!15181 (not condSetEmpty!15214)) setNonEmpty!15214))

(declare-fun b!2124821 () Bool)

(declare-fun e!1353959 () Bool)

(declare-fun setRes!15215 () Bool)

(assert (=> b!2124821 (= e!1353959 setRes!15215)))

(declare-fun condSetEmpty!15215 () Bool)

(assert (=> b!2124821 (= condSetEmpty!15215 (= (_2!13637 (h!29148 (zeroValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795453))))))))) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setIsEmpty!15215 () Bool)

(assert (=> setIsEmpty!15215 setRes!15215))

(declare-fun setNonEmpty!15215 () Bool)

(assert (=> setNonEmpty!15215 (= setRes!15215 true)))

(declare-fun setElem!15215 () Context!2486)

(declare-fun setRest!15215 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15215 (= (_2!13637 (h!29148 (zeroValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795453))))))))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15215 true) setRest!15215))))

(assert (=> b!2124654 e!1353959))

(assert (= (and b!2124821 condSetEmpty!15215) setIsEmpty!15215))

(assert (= (and b!2124821 (not condSetEmpty!15215)) setNonEmpty!15215))

(assert (= (and b!2124654 ((_ is Cons!23747) (zeroValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795453))))))))) b!2124821))

(declare-fun b!2124822 () Bool)

(declare-fun e!1353960 () Bool)

(declare-fun setRes!15216 () Bool)

(assert (=> b!2124822 (= e!1353960 setRes!15216)))

(declare-fun condSetEmpty!15216 () Bool)

(assert (=> b!2124822 (= condSetEmpty!15216 (= (_2!13637 (h!29148 (minValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795453))))))))) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setIsEmpty!15216 () Bool)

(assert (=> setIsEmpty!15216 setRes!15216))

(declare-fun setNonEmpty!15216 () Bool)

(assert (=> setNonEmpty!15216 (= setRes!15216 true)))

(declare-fun setElem!15216 () Context!2486)

(declare-fun setRest!15216 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15216 (= (_2!13637 (h!29148 (minValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795453))))))))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15216 true) setRest!15216))))

(assert (=> b!2124654 e!1353960))

(assert (= (and b!2124822 condSetEmpty!15216) setIsEmpty!15216))

(assert (= (and b!2124822 (not condSetEmpty!15216)) setNonEmpty!15216))

(assert (= (and b!2124654 ((_ is Cons!23747) (minValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 (_2!13639 lt!795453))))))))) b!2124822))

(declare-fun setIsEmpty!15217 () Bool)

(declare-fun setRes!15217 () Bool)

(assert (=> setIsEmpty!15217 setRes!15217))

(declare-fun e!1353962 () Bool)

(assert (=> b!2124586 (= tp!651130 e!1353962)))

(declare-fun setNonEmpty!15217 () Bool)

(declare-fun e!1353963 () Bool)

(declare-fun tp!651199 () Bool)

(declare-fun setElem!15217 () Context!2486)

(assert (=> setNonEmpty!15217 (= setRes!15217 (and tp!651199 (inv!31346 setElem!15217) e!1353963))))

(declare-fun setRest!15217 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15217 (= (_2!13635 (h!29149 mapDefault!12061)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15217 true) setRest!15217))))

(declare-fun b!2124823 () Bool)

(declare-fun tp!651201 () Bool)

(assert (=> b!2124823 (= e!1353963 tp!651201)))

(declare-fun tp!651200 () Bool)

(declare-fun e!1353961 () Bool)

(declare-fun b!2124824 () Bool)

(declare-fun tp!651203 () Bool)

(assert (=> b!2124824 (= e!1353962 (and tp!651200 (inv!31346 (_2!13634 (_1!13635 (h!29149 mapDefault!12061)))) e!1353961 tp_is_empty!9495 setRes!15217 tp!651203))))

(declare-fun condSetEmpty!15217 () Bool)

(assert (=> b!2124824 (= condSetEmpty!15217 (= (_2!13635 (h!29149 mapDefault!12061)) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun b!2124825 () Bool)

(declare-fun tp!651202 () Bool)

(assert (=> b!2124825 (= e!1353961 tp!651202)))

(assert (= b!2124824 b!2124825))

(assert (= (and b!2124824 condSetEmpty!15217) setIsEmpty!15217))

(assert (= (and b!2124824 (not condSetEmpty!15217)) setNonEmpty!15217))

(assert (= setNonEmpty!15217 b!2124823))

(assert (= (and b!2124586 ((_ is Cons!23748) mapDefault!12061)) b!2124824))

(declare-fun m!2577360 () Bool)

(assert (=> setNonEmpty!15217 m!2577360))

(declare-fun m!2577362 () Bool)

(assert (=> b!2124824 m!2577362))

(declare-fun condMapEmpty!12080 () Bool)

(declare-fun mapDefault!12080 () List!23832)

(assert (=> mapNonEmpty!12063 (= condMapEmpty!12080 (= mapRest!12061 ((as const (Array (_ BitVec 32) List!23832)) mapDefault!12080)))))

(declare-fun e!1353981 () Bool)

(declare-fun mapRes!12080 () Bool)

(assert (=> mapNonEmpty!12063 (= tp!651122 (and e!1353981 mapRes!12080))))

(declare-fun tp!651229 () Bool)

(declare-fun e!1353977 () Bool)

(declare-fun setRes!15222 () Bool)

(declare-fun b!2124840 () Bool)

(declare-fun tp!651227 () Bool)

(assert (=> b!2124840 (= e!1353981 (and tp!651227 (inv!31346 (_2!13634 (_1!13635 (h!29149 mapDefault!12080)))) e!1353977 tp_is_empty!9495 setRes!15222 tp!651229))))

(declare-fun condSetEmpty!15222 () Bool)

(assert (=> b!2124840 (= condSetEmpty!15222 (= (_2!13635 (h!29149 mapDefault!12080)) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun b!2124841 () Bool)

(declare-fun e!1353980 () Bool)

(declare-fun tp!651236 () Bool)

(assert (=> b!2124841 (= e!1353980 tp!651236)))

(declare-fun mapNonEmpty!12080 () Bool)

(declare-fun tp!651230 () Bool)

(declare-fun e!1353979 () Bool)

(assert (=> mapNonEmpty!12080 (= mapRes!12080 (and tp!651230 e!1353979))))

(declare-fun mapKey!12080 () (_ BitVec 32))

(declare-fun mapValue!12080 () List!23832)

(declare-fun mapRest!12080 () (Array (_ BitVec 32) List!23832))

(assert (=> mapNonEmpty!12080 (= mapRest!12061 (store mapRest!12080 mapKey!12080 mapValue!12080))))

(declare-fun setIsEmpty!15222 () Bool)

(declare-fun setRes!15223 () Bool)

(assert (=> setIsEmpty!15222 setRes!15223))

(declare-fun e!1353976 () Bool)

(declare-fun setElem!15223 () Context!2486)

(declare-fun setNonEmpty!15222 () Bool)

(declare-fun tp!651231 () Bool)

(assert (=> setNonEmpty!15222 (= setRes!15222 (and tp!651231 (inv!31346 setElem!15223) e!1353976))))

(declare-fun setRest!15223 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15222 (= (_2!13635 (h!29149 mapDefault!12080)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15223 true) setRest!15223))))

(declare-fun b!2124842 () Bool)

(declare-fun tp!651232 () Bool)

(assert (=> b!2124842 (= e!1353977 tp!651232)))

(declare-fun tp!651234 () Bool)

(declare-fun setElem!15222 () Context!2486)

(declare-fun setNonEmpty!15223 () Bool)

(assert (=> setNonEmpty!15223 (= setRes!15223 (and tp!651234 (inv!31346 setElem!15222) e!1353980))))

(declare-fun setRest!15222 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15223 (= (_2!13635 (h!29149 mapValue!12080)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15222 true) setRest!15222))))

(declare-fun mapIsEmpty!12080 () Bool)

(assert (=> mapIsEmpty!12080 mapRes!12080))

(declare-fun setIsEmpty!15223 () Bool)

(assert (=> setIsEmpty!15223 setRes!15222))

(declare-fun b!2124843 () Bool)

(declare-fun e!1353978 () Bool)

(declare-fun tp!651235 () Bool)

(assert (=> b!2124843 (= e!1353978 tp!651235)))

(declare-fun b!2124844 () Bool)

(declare-fun tp!651228 () Bool)

(assert (=> b!2124844 (= e!1353976 tp!651228)))

(declare-fun tp!651226 () Bool)

(declare-fun tp!651233 () Bool)

(declare-fun b!2124845 () Bool)

(assert (=> b!2124845 (= e!1353979 (and tp!651226 (inv!31346 (_2!13634 (_1!13635 (h!29149 mapValue!12080)))) e!1353978 tp_is_empty!9495 setRes!15223 tp!651233))))

(declare-fun condSetEmpty!15223 () Bool)

(assert (=> b!2124845 (= condSetEmpty!15223 (= (_2!13635 (h!29149 mapValue!12080)) ((as const (Array Context!2486 Bool)) false)))))

(assert (= (and mapNonEmpty!12063 condMapEmpty!12080) mapIsEmpty!12080))

(assert (= (and mapNonEmpty!12063 (not condMapEmpty!12080)) mapNonEmpty!12080))

(assert (= b!2124845 b!2124843))

(assert (= (and b!2124845 condSetEmpty!15223) setIsEmpty!15222))

(assert (= (and b!2124845 (not condSetEmpty!15223)) setNonEmpty!15223))

(assert (= setNonEmpty!15223 b!2124841))

(assert (= (and mapNonEmpty!12080 ((_ is Cons!23748) mapValue!12080)) b!2124845))

(assert (= b!2124840 b!2124842))

(assert (= (and b!2124840 condSetEmpty!15222) setIsEmpty!15223))

(assert (= (and b!2124840 (not condSetEmpty!15222)) setNonEmpty!15222))

(assert (= setNonEmpty!15222 b!2124844))

(assert (= (and mapNonEmpty!12063 ((_ is Cons!23748) mapDefault!12080)) b!2124840))

(declare-fun m!2577364 () Bool)

(assert (=> setNonEmpty!15222 m!2577364))

(declare-fun m!2577366 () Bool)

(assert (=> b!2124840 m!2577366))

(declare-fun m!2577368 () Bool)

(assert (=> mapNonEmpty!12080 m!2577368))

(declare-fun m!2577370 () Bool)

(assert (=> setNonEmpty!15223 m!2577370))

(declare-fun m!2577372 () Bool)

(assert (=> b!2124845 m!2577372))

(declare-fun setIsEmpty!15224 () Bool)

(declare-fun setRes!15224 () Bool)

(assert (=> setIsEmpty!15224 setRes!15224))

(declare-fun e!1353983 () Bool)

(assert (=> mapNonEmpty!12063 (= tp!651112 e!1353983)))

(declare-fun e!1353984 () Bool)

(declare-fun setNonEmpty!15224 () Bool)

(declare-fun tp!651237 () Bool)

(declare-fun setElem!15224 () Context!2486)

(assert (=> setNonEmpty!15224 (= setRes!15224 (and tp!651237 (inv!31346 setElem!15224) e!1353984))))

(declare-fun setRest!15224 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15224 (= (_2!13635 (h!29149 mapValue!12063)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15224 true) setRest!15224))))

(declare-fun b!2124846 () Bool)

(declare-fun tp!651239 () Bool)

(assert (=> b!2124846 (= e!1353984 tp!651239)))

(declare-fun e!1353982 () Bool)

(declare-fun b!2124847 () Bool)

(declare-fun tp!651238 () Bool)

(declare-fun tp!651241 () Bool)

(assert (=> b!2124847 (= e!1353983 (and tp!651238 (inv!31346 (_2!13634 (_1!13635 (h!29149 mapValue!12063)))) e!1353982 tp_is_empty!9495 setRes!15224 tp!651241))))

(declare-fun condSetEmpty!15224 () Bool)

(assert (=> b!2124847 (= condSetEmpty!15224 (= (_2!13635 (h!29149 mapValue!12063)) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun b!2124848 () Bool)

(declare-fun tp!651240 () Bool)

(assert (=> b!2124848 (= e!1353982 tp!651240)))

(assert (= b!2124847 b!2124848))

(assert (= (and b!2124847 condSetEmpty!15224) setIsEmpty!15224))

(assert (= (and b!2124847 (not condSetEmpty!15224)) setNonEmpty!15224))

(assert (= setNonEmpty!15224 b!2124846))

(assert (= (and mapNonEmpty!12063 ((_ is Cons!23748) mapValue!12063)) b!2124847))

(declare-fun m!2577374 () Bool)

(assert (=> setNonEmpty!15224 m!2577374))

(declare-fun m!2577376 () Bool)

(assert (=> b!2124847 m!2577376))

(declare-fun setIsEmpty!15229 () Bool)

(declare-fun setRes!15230 () Bool)

(assert (=> setIsEmpty!15229 setRes!15230))

(declare-fun mapNonEmpty!12083 () Bool)

(declare-fun mapRes!12083 () Bool)

(declare-fun e!1353990 () Bool)

(assert (=> mapNonEmpty!12083 (= mapRes!12083 e!1353990)))

(declare-fun mapKey!12083 () (_ BitVec 32))

(declare-fun mapValue!12083 () List!23832)

(declare-fun mapRest!12083 () (Array (_ BitVec 32) List!23832))

(assert (=> mapNonEmpty!12083 (= mapRest!12068 (store mapRest!12083 mapKey!12083 mapValue!12083))))

(declare-fun b!2124855 () Bool)

(declare-fun setRes!15229 () Bool)

(assert (=> b!2124855 (= e!1353990 setRes!15229)))

(declare-fun condSetEmpty!15230 () Bool)

(assert (=> b!2124855 (= condSetEmpty!15230 (= (_2!13635 (h!29149 mapValue!12083)) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setNonEmpty!15229 () Bool)

(assert (=> setNonEmpty!15229 (= setRes!15230 true)))

(declare-fun mapDefault!12083 () List!23832)

(declare-fun setElem!15230 () Context!2486)

(declare-fun setRest!15229 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15229 (= (_2!13635 (h!29149 mapDefault!12083)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15230 true) setRest!15229))))

(declare-fun mapIsEmpty!12083 () Bool)

(assert (=> mapIsEmpty!12083 mapRes!12083))

(declare-fun setIsEmpty!15230 () Bool)

(assert (=> setIsEmpty!15230 setRes!15229))

(declare-fun condMapEmpty!12083 () Bool)

(assert (=> mapNonEmpty!12069 (= condMapEmpty!12083 (= mapRest!12068 ((as const (Array (_ BitVec 32) List!23832)) mapDefault!12083)))))

(declare-fun e!1353989 () Bool)

(assert (=> mapNonEmpty!12069 (and e!1353989 mapRes!12083)))

(declare-fun b!2124856 () Bool)

(assert (=> b!2124856 (= e!1353989 setRes!15230)))

(declare-fun condSetEmpty!15229 () Bool)

(assert (=> b!2124856 (= condSetEmpty!15229 (= (_2!13635 (h!29149 mapDefault!12083)) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setNonEmpty!15230 () Bool)

(assert (=> setNonEmpty!15230 (= setRes!15229 true)))

(declare-fun setElem!15229 () Context!2486)

(declare-fun setRest!15230 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15230 (= (_2!13635 (h!29149 mapValue!12083)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15229 true) setRest!15230))))

(assert (= (and mapNonEmpty!12069 condMapEmpty!12083) mapIsEmpty!12083))

(assert (= (and mapNonEmpty!12069 (not condMapEmpty!12083)) mapNonEmpty!12083))

(assert (= (and b!2124855 condSetEmpty!15230) setIsEmpty!15230))

(assert (= (and b!2124855 (not condSetEmpty!15230)) setNonEmpty!15230))

(assert (= (and mapNonEmpty!12083 ((_ is Cons!23748) mapValue!12083)) b!2124855))

(assert (= (and b!2124856 condSetEmpty!15229) setIsEmpty!15229))

(assert (= (and b!2124856 (not condSetEmpty!15229)) setNonEmpty!15229))

(assert (= (and mapNonEmpty!12069 ((_ is Cons!23748) mapDefault!12083)) b!2124856))

(declare-fun m!2577378 () Bool)

(assert (=> mapNonEmpty!12083 m!2577378))

(declare-fun b!2124857 () Bool)

(declare-fun e!1353991 () Bool)

(declare-fun setRes!15231 () Bool)

(assert (=> b!2124857 (= e!1353991 setRes!15231)))

(declare-fun condSetEmpty!15231 () Bool)

(assert (=> b!2124857 (= condSetEmpty!15231 (= (_2!13635 (h!29149 mapValue!12069)) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setIsEmpty!15231 () Bool)

(assert (=> setIsEmpty!15231 setRes!15231))

(declare-fun setNonEmpty!15231 () Bool)

(assert (=> setNonEmpty!15231 (= setRes!15231 true)))

(declare-fun setElem!15231 () Context!2486)

(declare-fun setRest!15231 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15231 (= (_2!13635 (h!29149 mapValue!12069)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15231 true) setRest!15231))))

(assert (=> mapNonEmpty!12069 e!1353991))

(assert (= (and b!2124857 condSetEmpty!15231) setIsEmpty!15231))

(assert (= (and b!2124857 (not condSetEmpty!15231)) setNonEmpty!15231))

(assert (= (and mapNonEmpty!12069 ((_ is Cons!23748) mapValue!12069)) b!2124857))

(declare-fun b!2124859 () Bool)

(declare-fun e!1353993 () Bool)

(declare-fun tp!651242 () Bool)

(assert (=> b!2124859 (= e!1353993 tp!651242)))

(declare-fun e!1353992 () Bool)

(assert (=> b!2124603 (= tp!651117 e!1353992)))

(declare-fun setNonEmpty!15232 () Bool)

(declare-fun tp!651243 () Bool)

(declare-fun setRes!15232 () Bool)

(declare-fun setElem!15232 () Context!2486)

(assert (=> setNonEmpty!15232 (= setRes!15232 (and tp!651243 (inv!31346 setElem!15232) e!1353993))))

(declare-fun setRest!15232 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15232 (= (_1!13640 (_1!13641 (h!29152 mapDefault!12062))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15232 true) setRest!15232))))

(declare-fun setIsEmpty!15232 () Bool)

(assert (=> setIsEmpty!15232 setRes!15232))

(declare-fun b!2124858 () Bool)

(declare-fun tp!651244 () Bool)

(assert (=> b!2124858 (= e!1353992 (and setRes!15232 tp!651244))))

(declare-fun condSetEmpty!15232 () Bool)

(assert (=> b!2124858 (= condSetEmpty!15232 (= (_1!13640 (_1!13641 (h!29152 mapDefault!12062))) ((as const (Array Context!2486 Bool)) false)))))

(assert (= (and b!2124858 condSetEmpty!15232) setIsEmpty!15232))

(assert (= (and b!2124858 (not condSetEmpty!15232)) setNonEmpty!15232))

(assert (= setNonEmpty!15232 b!2124859))

(assert (= (and b!2124603 ((_ is Cons!23751) mapDefault!12062)) b!2124858))

(declare-fun m!2577380 () Bool)

(assert (=> setNonEmpty!15232 m!2577380))

(declare-fun b!2124860 () Bool)

(declare-fun e!1353994 () Bool)

(declare-fun setRes!15233 () Bool)

(assert (=> b!2124860 (= e!1353994 setRes!15233)))

(declare-fun condSetEmpty!15233 () Bool)

(assert (=> b!2124860 (= condSetEmpty!15233 (= (_2!13635 (h!29149 mapDefault!12069)) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setIsEmpty!15233 () Bool)

(assert (=> setIsEmpty!15233 setRes!15233))

(declare-fun setNonEmpty!15233 () Bool)

(assert (=> setNonEmpty!15233 (= setRes!15233 true)))

(declare-fun setElem!15233 () Context!2486)

(declare-fun setRest!15233 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15233 (= (_2!13635 (h!29149 mapDefault!12069)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15233 true) setRest!15233))))

(assert (=> b!2124652 e!1353994))

(assert (= (and b!2124860 condSetEmpty!15233) setIsEmpty!15233))

(assert (= (and b!2124860 (not condSetEmpty!15233)) setNonEmpty!15233))

(assert (= (and b!2124652 ((_ is Cons!23748) mapDefault!12069)) b!2124860))

(declare-fun tp!651268 () Bool)

(declare-fun e!1354008 () Bool)

(declare-fun mapDefault!12086 () List!23831)

(declare-fun b!2124875 () Bool)

(declare-fun e!1354007 () Bool)

(declare-fun setRes!15239 () Bool)

(assert (=> b!2124875 (= e!1354007 (and (inv!31346 (_1!13636 (_1!13637 (h!29148 mapDefault!12086)))) e!1354008 tp_is_empty!9495 setRes!15239 tp!651268))))

(declare-fun condSetEmpty!15239 () Bool)

(assert (=> b!2124875 (= condSetEmpty!15239 (= (_2!13637 (h!29148 mapDefault!12086)) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setElem!15239 () Context!2486)

(declare-fun setNonEmpty!15238 () Bool)

(declare-fun tp!651265 () Bool)

(declare-fun e!1354009 () Bool)

(assert (=> setNonEmpty!15238 (= setRes!15239 (and tp!651265 (inv!31346 setElem!15239) e!1354009))))

(declare-fun setRest!15239 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15238 (= (_2!13637 (h!29148 mapDefault!12086)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15239 true) setRest!15239))))

(declare-fun tp!651267 () Bool)

(declare-fun setNonEmpty!15239 () Bool)

(declare-fun e!1354010 () Bool)

(declare-fun setRes!15238 () Bool)

(declare-fun setElem!15238 () Context!2486)

(assert (=> setNonEmpty!15239 (= setRes!15238 (and tp!651267 (inv!31346 setElem!15238) e!1354010))))

(declare-fun mapValue!12086 () List!23831)

(declare-fun setRest!15238 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15239 (= (_2!13637 (h!29148 mapValue!12086)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15238 true) setRest!15238))))

(declare-fun b!2124876 () Bool)

(declare-fun tp!651271 () Bool)

(assert (=> b!2124876 (= e!1354010 tp!651271)))

(declare-fun b!2124877 () Bool)

(declare-fun e!1354012 () Bool)

(declare-fun tp!651263 () Bool)

(assert (=> b!2124877 (= e!1354012 tp!651263)))

(declare-fun setIsEmpty!15238 () Bool)

(assert (=> setIsEmpty!15238 setRes!15239))

(declare-fun condMapEmpty!12086 () Bool)

(assert (=> mapNonEmpty!12062 (= condMapEmpty!12086 (= mapRest!12063 ((as const (Array (_ BitVec 32) List!23831)) mapDefault!12086)))))

(declare-fun mapRes!12086 () Bool)

(assert (=> mapNonEmpty!12062 (= tp!651119 (and e!1354007 mapRes!12086))))

(declare-fun setIsEmpty!15239 () Bool)

(assert (=> setIsEmpty!15239 setRes!15238))

(declare-fun b!2124878 () Bool)

(declare-fun tp!651270 () Bool)

(assert (=> b!2124878 (= e!1354008 tp!651270)))

(declare-fun b!2124879 () Bool)

(declare-fun tp!651266 () Bool)

(assert (=> b!2124879 (= e!1354009 tp!651266)))

(declare-fun mapNonEmpty!12086 () Bool)

(declare-fun tp!651264 () Bool)

(declare-fun e!1354011 () Bool)

(assert (=> mapNonEmpty!12086 (= mapRes!12086 (and tp!651264 e!1354011))))

(declare-fun mapKey!12086 () (_ BitVec 32))

(declare-fun mapRest!12086 () (Array (_ BitVec 32) List!23831))

(assert (=> mapNonEmpty!12086 (= mapRest!12063 (store mapRest!12086 mapKey!12086 mapValue!12086))))

(declare-fun mapIsEmpty!12086 () Bool)

(assert (=> mapIsEmpty!12086 mapRes!12086))

(declare-fun b!2124880 () Bool)

(declare-fun tp!651269 () Bool)

(assert (=> b!2124880 (= e!1354011 (and (inv!31346 (_1!13636 (_1!13637 (h!29148 mapValue!12086)))) e!1354012 tp_is_empty!9495 setRes!15238 tp!651269))))

(declare-fun condSetEmpty!15238 () Bool)

(assert (=> b!2124880 (= condSetEmpty!15238 (= (_2!13637 (h!29148 mapValue!12086)) ((as const (Array Context!2486 Bool)) false)))))

(assert (= (and mapNonEmpty!12062 condMapEmpty!12086) mapIsEmpty!12086))

(assert (= (and mapNonEmpty!12062 (not condMapEmpty!12086)) mapNonEmpty!12086))

(assert (= b!2124880 b!2124877))

(assert (= (and b!2124880 condSetEmpty!15238) setIsEmpty!15239))

(assert (= (and b!2124880 (not condSetEmpty!15238)) setNonEmpty!15239))

(assert (= setNonEmpty!15239 b!2124876))

(assert (= (and mapNonEmpty!12086 ((_ is Cons!23747) mapValue!12086)) b!2124880))

(assert (= b!2124875 b!2124878))

(assert (= (and b!2124875 condSetEmpty!15239) setIsEmpty!15238))

(assert (= (and b!2124875 (not condSetEmpty!15239)) setNonEmpty!15238))

(assert (= setNonEmpty!15238 b!2124879))

(assert (= (and mapNonEmpty!12062 ((_ is Cons!23747) mapDefault!12086)) b!2124875))

(declare-fun m!2577382 () Bool)

(assert (=> setNonEmpty!15239 m!2577382))

(declare-fun m!2577384 () Bool)

(assert (=> setNonEmpty!15238 m!2577384))

(declare-fun m!2577386 () Bool)

(assert (=> mapNonEmpty!12086 m!2577386))

(declare-fun m!2577388 () Bool)

(assert (=> b!2124880 m!2577388))

(declare-fun m!2577390 () Bool)

(assert (=> b!2124875 m!2577390))

(declare-fun e!1354021 () Bool)

(declare-fun tp!651280 () Bool)

(declare-fun setElem!15242 () Context!2486)

(declare-fun setNonEmpty!15242 () Bool)

(declare-fun setRes!15242 () Bool)

(assert (=> setNonEmpty!15242 (= setRes!15242 (and tp!651280 (inv!31346 setElem!15242) e!1354021))))

(declare-fun setRest!15242 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15242 (= (_2!13637 (h!29148 mapValue!12062)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15242 true) setRest!15242))))

(declare-fun b!2124889 () Bool)

(declare-fun tp!651282 () Bool)

(assert (=> b!2124889 (= e!1354021 tp!651282)))

(declare-fun e!1354019 () Bool)

(assert (=> mapNonEmpty!12062 (= tp!651125 e!1354019)))

(declare-fun setIsEmpty!15242 () Bool)

(assert (=> setIsEmpty!15242 setRes!15242))

(declare-fun tp!651281 () Bool)

(declare-fun b!2124890 () Bool)

(declare-fun e!1354020 () Bool)

(assert (=> b!2124890 (= e!1354019 (and (inv!31346 (_1!13636 (_1!13637 (h!29148 mapValue!12062)))) e!1354020 tp_is_empty!9495 setRes!15242 tp!651281))))

(declare-fun condSetEmpty!15242 () Bool)

(assert (=> b!2124890 (= condSetEmpty!15242 (= (_2!13637 (h!29148 mapValue!12062)) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun b!2124891 () Bool)

(declare-fun tp!651283 () Bool)

(assert (=> b!2124891 (= e!1354020 tp!651283)))

(assert (= b!2124890 b!2124891))

(assert (= (and b!2124890 condSetEmpty!15242) setIsEmpty!15242))

(assert (= (and b!2124890 (not condSetEmpty!15242)) setNonEmpty!15242))

(assert (= setNonEmpty!15242 b!2124889))

(assert (= (and mapNonEmpty!12062 ((_ is Cons!23747) mapValue!12062)) b!2124890))

(declare-fun m!2577392 () Bool)

(assert (=> setNonEmpty!15242 m!2577392))

(declare-fun m!2577394 () Bool)

(assert (=> b!2124890 m!2577394))

(declare-fun b!2124896 () Bool)

(declare-fun e!1354024 () Bool)

(declare-fun tp!651288 () Bool)

(declare-fun tp!651289 () Bool)

(assert (=> b!2124896 (= e!1354024 (and tp!651288 tp!651289))))

(assert (=> b!2124583 (= tp!651133 e!1354024)))

(assert (= (and b!2124583 ((_ is Cons!23746) (exprs!1743 setElem!15178))) b!2124896))

(declare-fun setNonEmpty!15245 () Bool)

(declare-fun setRes!15245 () Bool)

(assert (=> setNonEmpty!15245 (= setRes!15245 true)))

(declare-fun setElem!15245 () Context!2486)

(declare-fun setRest!15245 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15245 (= (z!5744 (h!29151 (t!196358 (_2!13638 (_1!13639 lt!795453))))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15245 true) setRest!15245))))

(declare-fun b!2124904 () Bool)

(declare-fun e!1354030 () Bool)

(assert (=> b!2124904 (= e!1354030 setRes!15245)))

(declare-fun condSetEmpty!15245 () Bool)

(assert (=> b!2124904 (= condSetEmpty!15245 (= (z!5744 (h!29151 (t!196358 (_2!13638 (_1!13639 lt!795453))))) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun e!1354029 () Bool)

(assert (=> b!2124650 e!1354029))

(declare-fun b!2124903 () Bool)

(assert (=> b!2124903 (= e!1354029 e!1354030)))

(declare-fun setIsEmpty!15245 () Bool)

(assert (=> setIsEmpty!15245 setRes!15245))

(assert (= (and b!2124904 condSetEmpty!15245) setIsEmpty!15245))

(assert (= (and b!2124904 (not condSetEmpty!15245)) setNonEmpty!15245))

(assert (= b!2124903 b!2124904))

(assert (= (and b!2124650 ((_ is Cons!23750) (t!196358 (_2!13638 (_1!13639 lt!795453))))) b!2124903))

(declare-fun b!2124905 () Bool)

(declare-fun tp!651290 () Bool)

(declare-fun tp!651292 () Bool)

(declare-fun e!1354032 () Bool)

(assert (=> b!2124905 (= e!1354032 (and (inv!31341 (left!18364 (c!339911 totalInput!886))) tp!651290 (inv!31341 (right!18694 (c!339911 totalInput!886))) tp!651292))))

(declare-fun b!2124907 () Bool)

(declare-fun e!1354031 () Bool)

(declare-fun tp!651291 () Bool)

(assert (=> b!2124907 (= e!1354031 tp!651291)))

(declare-fun b!2124906 () Bool)

(assert (=> b!2124906 (= e!1354032 (and (inv!31349 (xs!10753 (c!339911 totalInput!886))) e!1354031))))

(assert (=> b!2124581 (= tp!651108 (and (inv!31341 (c!339911 totalInput!886)) e!1354032))))

(assert (= (and b!2124581 ((_ is Node!7811) (c!339911 totalInput!886))) b!2124905))

(assert (= b!2124906 b!2124907))

(assert (= (and b!2124581 ((_ is Leaf!11415) (c!339911 totalInput!886))) b!2124906))

(declare-fun m!2577396 () Bool)

(assert (=> b!2124905 m!2577396))

(declare-fun m!2577398 () Bool)

(assert (=> b!2124905 m!2577398))

(declare-fun m!2577400 () Bool)

(assert (=> b!2124906 m!2577400))

(assert (=> b!2124581 m!2577192))

(declare-fun condSetEmpty!15248 () Bool)

(assert (=> setNonEmpty!15178 (= condSetEmpty!15248 (= setRest!15178 ((as const (Array Context!2486 Bool)) false)))))

(declare-fun setRes!15248 () Bool)

(assert (=> setNonEmpty!15178 (= tp!651121 setRes!15248)))

(declare-fun setIsEmpty!15248 () Bool)

(assert (=> setIsEmpty!15248 setRes!15248))

(declare-fun e!1354035 () Bool)

(declare-fun setNonEmpty!15248 () Bool)

(declare-fun setElem!15248 () Context!2486)

(declare-fun tp!651297 () Bool)

(assert (=> setNonEmpty!15248 (= setRes!15248 (and tp!651297 (inv!31346 setElem!15248) e!1354035))))

(declare-fun setRest!15248 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15248 (= setRest!15178 ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15248 true) setRest!15248))))

(declare-fun b!2124912 () Bool)

(declare-fun tp!651298 () Bool)

(assert (=> b!2124912 (= e!1354035 tp!651298)))

(assert (= (and setNonEmpty!15178 condSetEmpty!15248) setIsEmpty!15248))

(assert (= (and setNonEmpty!15178 (not condSetEmpty!15248)) setNonEmpty!15248))

(assert (= setNonEmpty!15248 b!2124912))

(declare-fun m!2577402 () Bool)

(assert (=> setNonEmpty!15248 m!2577402))

(declare-fun setElem!15249 () Context!2486)

(declare-fun setRes!15249 () Bool)

(declare-fun setNonEmpty!15249 () Bool)

(declare-fun tp!651299 () Bool)

(declare-fun e!1354038 () Bool)

(assert (=> setNonEmpty!15249 (= setRes!15249 (and tp!651299 (inv!31346 setElem!15249) e!1354038))))

(declare-fun setRest!15249 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15249 (= (_2!13637 (h!29148 (zeroValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15249 true) setRest!15249))))

(declare-fun b!2124913 () Bool)

(declare-fun tp!651301 () Bool)

(assert (=> b!2124913 (= e!1354038 tp!651301)))

(declare-fun e!1354036 () Bool)

(assert (=> b!2124580 (= tp!651115 e!1354036)))

(declare-fun setIsEmpty!15249 () Bool)

(assert (=> setIsEmpty!15249 setRes!15249))

(declare-fun e!1354037 () Bool)

(declare-fun b!2124914 () Bool)

(declare-fun tp!651300 () Bool)

(assert (=> b!2124914 (= e!1354036 (and (inv!31346 (_1!13636 (_1!13637 (h!29148 (zeroValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991)))))))))) e!1354037 tp_is_empty!9495 setRes!15249 tp!651300))))

(declare-fun condSetEmpty!15249 () Bool)

(assert (=> b!2124914 (= condSetEmpty!15249 (= (_2!13637 (h!29148 (zeroValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991)))))))) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun b!2124915 () Bool)

(declare-fun tp!651302 () Bool)

(assert (=> b!2124915 (= e!1354037 tp!651302)))

(assert (= b!2124914 b!2124915))

(assert (= (and b!2124914 condSetEmpty!15249) setIsEmpty!15249))

(assert (= (and b!2124914 (not condSetEmpty!15249)) setNonEmpty!15249))

(assert (= setNonEmpty!15249 b!2124913))

(assert (= (and b!2124580 ((_ is Cons!23747) (zeroValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991)))))))) b!2124914))

(declare-fun m!2577404 () Bool)

(assert (=> setNonEmpty!15249 m!2577404))

(declare-fun m!2577406 () Bool)

(assert (=> b!2124914 m!2577406))

(declare-fun setNonEmpty!15250 () Bool)

(declare-fun tp!651303 () Bool)

(declare-fun setElem!15250 () Context!2486)

(declare-fun setRes!15250 () Bool)

(declare-fun e!1354041 () Bool)

(assert (=> setNonEmpty!15250 (= setRes!15250 (and tp!651303 (inv!31346 setElem!15250) e!1354041))))

(declare-fun setRest!15250 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15250 (= (_2!13637 (h!29148 (minValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15250 true) setRest!15250))))

(declare-fun b!2124916 () Bool)

(declare-fun tp!651305 () Bool)

(assert (=> b!2124916 (= e!1354041 tp!651305)))

(declare-fun e!1354039 () Bool)

(assert (=> b!2124580 (= tp!651126 e!1354039)))

(declare-fun setIsEmpty!15250 () Bool)

(assert (=> setIsEmpty!15250 setRes!15250))

(declare-fun b!2124917 () Bool)

(declare-fun e!1354040 () Bool)

(declare-fun tp!651304 () Bool)

(assert (=> b!2124917 (= e!1354039 (and (inv!31346 (_1!13636 (_1!13637 (h!29148 (minValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991)))))))))) e!1354040 tp_is_empty!9495 setRes!15250 tp!651304))))

(declare-fun condSetEmpty!15250 () Bool)

(assert (=> b!2124917 (= condSetEmpty!15250 (= (_2!13637 (h!29148 (minValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991)))))))) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun b!2124918 () Bool)

(declare-fun tp!651306 () Bool)

(assert (=> b!2124918 (= e!1354040 tp!651306)))

(assert (= b!2124917 b!2124918))

(assert (= (and b!2124917 condSetEmpty!15250) setIsEmpty!15250))

(assert (= (and b!2124917 (not condSetEmpty!15250)) setNonEmpty!15250))

(assert (= setNonEmpty!15250 b!2124916))

(assert (= (and b!2124580 ((_ is Cons!23747) (minValue!2729 (v!28278 (underlying!5136 (v!28279 (underlying!5137 (cache!2765 cacheUp!991)))))))) b!2124917))

(declare-fun m!2577408 () Bool)

(assert (=> setNonEmpty!15250 m!2577408))

(declare-fun m!2577410 () Bool)

(assert (=> b!2124917 m!2577410))

(declare-fun b!2124919 () Bool)

(declare-fun tp!651309 () Bool)

(declare-fun e!1354043 () Bool)

(declare-fun tp!651307 () Bool)

(assert (=> b!2124919 (= e!1354043 (and (inv!31341 (left!18364 (c!339911 input!5507))) tp!651307 (inv!31341 (right!18694 (c!339911 input!5507))) tp!651309))))

(declare-fun b!2124921 () Bool)

(declare-fun e!1354042 () Bool)

(declare-fun tp!651308 () Bool)

(assert (=> b!2124921 (= e!1354042 tp!651308)))

(declare-fun b!2124920 () Bool)

(assert (=> b!2124920 (= e!1354043 (and (inv!31349 (xs!10753 (c!339911 input!5507))) e!1354042))))

(assert (=> b!2124579 (= tp!651111 (and (inv!31341 (c!339911 input!5507)) e!1354043))))

(assert (= (and b!2124579 ((_ is Node!7811) (c!339911 input!5507))) b!2124919))

(assert (= b!2124920 b!2124921))

(assert (= (and b!2124579 ((_ is Leaf!11415) (c!339911 input!5507))) b!2124920))

(declare-fun m!2577412 () Bool)

(assert (=> b!2124919 m!2577412))

(declare-fun m!2577414 () Bool)

(assert (=> b!2124919 m!2577414))

(declare-fun m!2577416 () Bool)

(assert (=> b!2124920 m!2577416))

(assert (=> b!2124579 m!2577244))

(declare-fun setElem!15251 () Context!2486)

(declare-fun setRes!15251 () Bool)

(declare-fun tp!651310 () Bool)

(declare-fun setNonEmpty!15251 () Bool)

(declare-fun e!1354046 () Bool)

(assert (=> setNonEmpty!15251 (= setRes!15251 (and tp!651310 (inv!31346 setElem!15251) e!1354046))))

(declare-fun setRest!15251 () (InoxSet Context!2486))

(assert (=> setNonEmpty!15251 (= (_2!13637 (h!29148 mapDefault!12063)) ((_ map or) (store ((as const (Array Context!2486 Bool)) false) setElem!15251 true) setRest!15251))))

(declare-fun b!2124922 () Bool)

(declare-fun tp!651312 () Bool)

(assert (=> b!2124922 (= e!1354046 tp!651312)))

(declare-fun e!1354044 () Bool)

(assert (=> b!2124598 (= tp!651116 e!1354044)))

(declare-fun setIsEmpty!15251 () Bool)

(assert (=> setIsEmpty!15251 setRes!15251))

(declare-fun tp!651311 () Bool)

(declare-fun e!1354045 () Bool)

(declare-fun b!2124923 () Bool)

(assert (=> b!2124923 (= e!1354044 (and (inv!31346 (_1!13636 (_1!13637 (h!29148 mapDefault!12063)))) e!1354045 tp_is_empty!9495 setRes!15251 tp!651311))))

(declare-fun condSetEmpty!15251 () Bool)

(assert (=> b!2124923 (= condSetEmpty!15251 (= (_2!13637 (h!29148 mapDefault!12063)) ((as const (Array Context!2486 Bool)) false)))))

(declare-fun b!2124924 () Bool)

(declare-fun tp!651313 () Bool)

(assert (=> b!2124924 (= e!1354045 tp!651313)))

(assert (= b!2124923 b!2124924))

(assert (= (and b!2124923 condSetEmpty!15251) setIsEmpty!15251))

(assert (= (and b!2124923 (not condSetEmpty!15251)) setNonEmpty!15251))

(assert (= setNonEmpty!15251 b!2124922))

(assert (= (and b!2124598 ((_ is Cons!23747) mapDefault!12063)) b!2124923))

(declare-fun m!2577418 () Bool)

(assert (=> setNonEmpty!15251 m!2577418))

(declare-fun m!2577420 () Bool)

(assert (=> b!2124923 m!2577420))

(declare-fun b_lambda!70519 () Bool)

(assert (= b_lambda!70517 (or b!2124602 b_lambda!70519)))

(declare-fun bs!443484 () Bool)

(declare-fun d!643894 () Bool)

(assert (= bs!443484 (and d!643894 b!2124602)))

(assert (=> bs!443484 (= (dynLambda!11351 lambda!78753 (h!29151 (_2!13638 (_1!13639 lt!795453)))) (= (res!919638 (h!29151 (_2!13638 (_1!13639 lt!795453)))) (_1!13638 (_1!13639 lt!795453))))))

(assert (=> b!2124681 d!643894))

(check-sat (not mapNonEmpty!12071) (not b!2124844) (not b!2124812) (not b!2124847) (not b!2124742) (not setNonEmpty!15239) (not b!2124796) (not b!2124710) (not setNonEmpty!15245) (not b!2124840) (not bm!128724) (not b!2124858) (not setNonEmpty!15250) (not d!643854) (not d!643884) (not setNonEmpty!15201) (not setNonEmpty!15249) (not b!2124795) (not b!2124736) (not b!2124876) (not b!2124846) (not d!643868) (not b!2124784) (not b!2124711) (not setNonEmpty!15224) (not b!2124856) (not b!2124918) (not b!2124922) (not setNonEmpty!15214) (not b!2124860) (not b!2124595) (not b!2124823) (not b!2124662) (not b!2124912) (not d!643874) (not b_lambda!70519) (not b!2124769) (not b!2124906) (not b!2124848) (not d!643844) (not d!643862) (not setNonEmpty!15223) (not b!2124809) (not b!2124824) (not b!2124842) (not b!2124916) (not b!2124797) (not b!2124716) (not b!2124709) (not b!2124761) (not b!2124915) (not b!2124891) (not b!2124581) (not b!2124719) (not setNonEmpty!15233) (not bm!128723) (not setNonEmpty!15216) (not b!2124579) (not b!2124715) (not mapNonEmpty!12070) (not b!2124920) (not setNonEmpty!15200) (not setNonEmpty!15203) (not b!2124875) b_and!171317 (not b!2124857) tp_is_empty!9495 (not setNonEmpty!15187) (not setNonEmpty!15197) (not setNonEmpty!15217) (not b!2124843) (not b!2124907) b_and!171319 (not b!2124845) (not b!2124786) (not b!2124676) (not b!2124879) (not setNonEmpty!15211) (not b!2124841) (not b_next!62441) (not setNonEmpty!15251) (not b!2124859) (not mapNonEmpty!12074) (not d!643852) (not b_next!62443) (not setNonEmpty!15182) (not mapNonEmpty!12077) (not b!2124919) (not d!643848) (not setNonEmpty!15188) (not b!2124810) (not b!2124747) (not setNonEmpty!15206) b_and!171321 (not b!2124783) (not setNonEmpty!15191) (not b!2124673) (not b!2124821) (not b!2124913) (not setNonEmpty!15210) (not b!2124714) (not b!2124664) (not b!2124667) (not b!2124924) (not setNonEmpty!15229) (not b!2124768) (not b!2124807) (not b!2124905) (not b!2124682) (not mapNonEmpty!12083) (not d!643866) b_and!171315 (not d!643850) (not d!643890) (not b!2124744) (not b!2124889) (not b!2124880) (not b!2124759) (not b!2124877) (not b!2124817) (not mapNonEmpty!12086) (not b!2124782) (not setNonEmpty!15248) (not setNonEmpty!15231) (not b_next!62439) (not b!2124818) (not setNonEmpty!15232) (not setNonEmpty!15207) (not setNonEmpty!15196) (not bm!128722) (not b!2124798) (not b_next!62447) (not setNonEmpty!15238) (not mapNonEmpty!12080) (not b!2124728) (not b_next!62445) (not b!2124785) (not b!2124917) (not b!2124890) (not b!2124808) (not setNonEmpty!15202) (not b!2124914) (not setNonEmpty!15230) (not b!2124738) (not d!643864) (not b!2124921) b_and!171313 (not b!2124726) (not b!2124825) (not b!2124878) (not b!2124745) (not b!2124760) (not setNonEmpty!15222) (not b!2124903) (not b!2124822) (not d!643872) (not b_next!62437) (not b!2124670) (not b!2124734) (not b!2124855) (not b!2124923) (not setNonEmpty!15242) (not b!2124776) (not setNonEmpty!15215) (not b!2124811) (not b!2124896) b_and!171323 (not d!643880) (not b!2124758) (not b!2124777))
(check-sat b_and!171317 b_and!171319 (not b_next!62441) (not b_next!62443) b_and!171321 b_and!171315 (not b_next!62439) (not b_next!62447) (not b_next!62445) b_and!171313 (not b_next!62437) b_and!171323)
