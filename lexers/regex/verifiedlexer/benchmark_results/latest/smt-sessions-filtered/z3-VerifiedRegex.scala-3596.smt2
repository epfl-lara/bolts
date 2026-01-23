; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207006 () Bool)

(assert start!207006)

(declare-fun b!2120741 () Bool)

(declare-fun b_free!61565 () Bool)

(declare-fun b_next!62269 () Bool)

(assert (=> b!2120741 (= b_free!61565 (not b_next!62269))))

(declare-fun tp!649033 () Bool)

(declare-fun b_and!171145 () Bool)

(assert (=> b!2120741 (= tp!649033 b_and!171145)))

(declare-fun b!2120746 () Bool)

(declare-fun b_free!61567 () Bool)

(declare-fun b_next!62271 () Bool)

(assert (=> b!2120746 (= b_free!61567 (not b_next!62271))))

(declare-fun tp!649052 () Bool)

(declare-fun b_and!171147 () Bool)

(assert (=> b!2120746 (= tp!649052 b_and!171147)))

(declare-fun b!2120761 () Bool)

(declare-fun b_free!61569 () Bool)

(declare-fun b_next!62273 () Bool)

(assert (=> b!2120761 (= b_free!61569 (not b_next!62273))))

(declare-fun tp!649040 () Bool)

(declare-fun b_and!171149 () Bool)

(assert (=> b!2120761 (= tp!649040 b_and!171149)))

(declare-fun b!2120744 () Bool)

(declare-fun b_free!61571 () Bool)

(declare-fun b_next!62275 () Bool)

(assert (=> b!2120744 (= b_free!61571 (not b_next!62275))))

(declare-fun tp!649044 () Bool)

(declare-fun b_and!171151 () Bool)

(assert (=> b!2120744 (= tp!649044 b_and!171151)))

(declare-fun b!2120760 () Bool)

(declare-fun b_free!61573 () Bool)

(declare-fun b_next!62277 () Bool)

(assert (=> b!2120760 (= b_free!61573 (not b_next!62277))))

(declare-fun tp!649043 () Bool)

(declare-fun b_and!171153 () Bool)

(assert (=> b!2120760 (= tp!649043 b_and!171153)))

(declare-fun b!2120759 () Bool)

(declare-fun b_free!61575 () Bool)

(declare-fun b_next!62279 () Bool)

(assert (=> b!2120759 (= b_free!61575 (not b_next!62279))))

(declare-fun tp!649038 () Bool)

(declare-fun b_and!171155 () Bool)

(assert (=> b!2120759 (= tp!649038 b_and!171155)))

(declare-fun mapNonEmpty!11781 () Bool)

(declare-fun mapRes!11781 () Bool)

(assert (=> mapNonEmpty!11781 (= mapRes!11781 true)))

(declare-fun mapKey!11781 () (_ BitVec 32))

(declare-datatypes ((C!11464 0))(
  ( (C!11465 (val!6718 Int)) )
))
(declare-datatypes ((Regex!5659 0))(
  ( (ElementMatch!5659 (c!339696 C!11464)) (Concat!9961 (regOne!11830 Regex!5659) (regTwo!11830 Regex!5659)) (EmptyExpr!5659) (Star!5659 (reg!5988 Regex!5659)) (EmptyLang!5659) (Union!5659 (regOne!11831 Regex!5659) (regTwo!11831 Regex!5659)) )
))
(declare-datatypes ((List!23752 0))(
  ( (Nil!23668) (Cons!23668 (h!29069 Regex!5659) (t!196268 List!23752)) )
))
(declare-datatypes ((Context!2458 0))(
  ( (Context!2459 (exprs!1729 List!23752)) )
))
(declare-datatypes ((tuple3!2868 0))(
  ( (tuple3!2869 (_1!13528 Regex!5659) (_2!13528 Context!2458) (_3!1904 C!11464)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23248 0))(
  ( (tuple2!23249 (_1!13529 tuple3!2868) (_2!13529 (InoxSet Context!2458))) )
))
(declare-datatypes ((List!23753 0))(
  ( (Nil!23669) (Cons!23669 (h!29070 tuple2!23248) (t!196269 List!23753)) )
))
(declare-fun mapValue!11782 () List!23753)

(declare-datatypes ((tuple2!23250 0))(
  ( (tuple2!23251 (_1!13530 Context!2458) (_2!13530 C!11464)) )
))
(declare-datatypes ((tuple2!23252 0))(
  ( (tuple2!23253 (_1!13531 tuple2!23250) (_2!13531 (InoxSet Context!2458))) )
))
(declare-datatypes ((List!23754 0))(
  ( (Nil!23670) (Cons!23670 (h!29071 tuple2!23252) (t!196270 List!23754)) )
))
(declare-datatypes ((array!8375 0))(
  ( (array!8376 (arr!3715 (Array (_ BitVec 32) (_ BitVec 64))) (size!18498 (_ BitVec 32))) )
))
(declare-datatypes ((array!8377 0))(
  ( (array!8378 (arr!3716 (Array (_ BitVec 32) List!23753)) (size!18499 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4870 0))(
  ( (LongMapFixedSize!4871 (defaultEntry!2800 Int) (mask!6580 (_ BitVec 32)) (extraKeys!2683 (_ BitVec 32)) (zeroValue!2693 List!23753) (minValue!2693 List!23753) (_size!4921 (_ BitVec 32)) (_keys!2732 array!8375) (_values!2715 array!8377) (_vacant!2496 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9565 0))(
  ( (Cell!9566 (v!28201 LongMapFixedSize!4870)) )
))
(declare-datatypes ((MutLongMap!2435 0))(
  ( (LongMap!2435 (underlying!5065 Cell!9565)) (MutLongMapExt!2434 (__x!15481 Int)) )
))
(declare-datatypes ((Cell!9567 0))(
  ( (Cell!9568 (v!28202 MutLongMap!2435)) )
))
(declare-datatypes ((List!23755 0))(
  ( (Nil!23671) (Cons!23671 (h!29072 C!11464) (t!196271 List!23755)) )
))
(declare-datatypes ((IArray!15599 0))(
  ( (IArray!15600 (innerList!7857 List!23755)) )
))
(declare-datatypes ((Hashable!2349 0))(
  ( (HashableExt!2348 (__x!15482 Int)) )
))
(declare-datatypes ((Hashable!2350 0))(
  ( (HashableExt!2349 (__x!15483 Int)) )
))
(declare-datatypes ((array!8379 0))(
  ( (array!8380 (arr!3717 (Array (_ BitVec 32) List!23754)) (size!18500 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4872 0))(
  ( (LongMapFixedSize!4873 (defaultEntry!2801 Int) (mask!6581 (_ BitVec 32)) (extraKeys!2684 (_ BitVec 32)) (zeroValue!2694 List!23754) (minValue!2694 List!23754) (_size!4922 (_ BitVec 32)) (_keys!2733 array!8375) (_values!2716 array!8379) (_vacant!2497 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9569 0))(
  ( (Cell!9570 (v!28203 LongMapFixedSize!4872)) )
))
(declare-datatypes ((MutLongMap!2436 0))(
  ( (LongMap!2436 (underlying!5066 Cell!9569)) (MutLongMapExt!2435 (__x!15484 Int)) )
))
(declare-datatypes ((Cell!9571 0))(
  ( (Cell!9572 (v!28204 MutLongMap!2436)) )
))
(declare-datatypes ((MutableMap!2349 0))(
  ( (MutableMapExt!2348 (__x!15485 Int)) (HashMap!2349 (underlying!5067 Cell!9571) (hashF!4272 Hashable!2350) (_size!4923 (_ BitVec 32)) (defaultValue!2511 Int)) )
))
(declare-datatypes ((CacheUp!1626 0))(
  ( (CacheUp!1627 (cache!2730 MutableMap!2349)) )
))
(declare-datatypes ((Conc!7797 0))(
  ( (Node!7797 (left!18315 Conc!7797) (right!18645 Conc!7797) (csize!15824 Int) (cheight!8008 Int)) (Leaf!11394 (xs!10739 IArray!15599) (csize!15825 Int)) (Empty!7797) )
))
(declare-datatypes ((BalanceConc!15356 0))(
  ( (BalanceConc!15357 (c!339697 Conc!7797)) )
))
(declare-datatypes ((StackFrame!30 0))(
  ( (StackFrame!31 (z!5717 (InoxSet Context!2458)) (from!2615 Int) (lastNullablePos!302 Int) (res!918937 Int) (totalInput!2896 BalanceConc!15356)) )
))
(declare-datatypes ((List!23756 0))(
  ( (Nil!23672) (Cons!23672 (h!29073 StackFrame!30) (t!196272 List!23756)) )
))
(declare-datatypes ((tuple2!23254 0))(
  ( (tuple2!23255 (_1!13532 Int) (_2!13532 List!23756)) )
))
(declare-datatypes ((MutableMap!2350 0))(
  ( (MutableMapExt!2349 (__x!15486 Int)) (HashMap!2350 (underlying!5068 Cell!9567) (hashF!4273 Hashable!2349) (_size!4924 (_ BitVec 32)) (defaultValue!2512 Int)) )
))
(declare-datatypes ((CacheDown!1612 0))(
  ( (CacheDown!1613 (cache!2731 MutableMap!2350)) )
))
(declare-datatypes ((tuple3!2870 0))(
  ( (tuple3!2871 (_1!13533 tuple2!23254) (_2!13533 CacheUp!1626) (_3!1905 CacheDown!1612)) )
))
(declare-fun lt!794729 () tuple3!2870)

(declare-fun mapRest!11781 () (Array (_ BitVec 32) List!23753))

(assert (=> mapNonEmpty!11781 (= (arr!3716 (_values!2715 (v!28201 (underlying!5065 (v!28202 (underlying!5068 (cache!2731 (_3!1905 lt!794729)))))))) (store mapRest!11781 mapKey!11781 mapValue!11782))))

(declare-fun mapIsEmpty!11781 () Bool)

(assert (=> mapIsEmpty!11781 mapRes!11781))

(declare-fun b!2120803 () Bool)

(declare-fun e!1350618 () Bool)

(declare-fun e!1350629 () Bool)

(declare-fun lt!794734 () MutLongMap!2435)

(get-info :version)

(assert (=> b!2120803 (= e!1350618 (and e!1350629 ((_ is LongMap!2435) lt!794734)))))

(assert (=> b!2120803 (= lt!794734 (v!28202 (underlying!5068 (cache!2731 (_3!1905 lt!794729)))))))

(declare-fun b!2120804 () Bool)

(declare-fun e!1350616 () Bool)

(declare-fun e!1350625 () Bool)

(assert (=> b!2120804 (= e!1350616 e!1350625)))

(declare-fun b!2120805 () Bool)

(declare-fun e!1350623 () Bool)

(declare-fun lt!794735 () MutLongMap!2436)

(assert (=> b!2120805 (= e!1350625 (and e!1350623 ((_ is LongMap!2436) lt!794735)))))

(assert (=> b!2120805 (= lt!794735 (v!28204 (underlying!5067 (cache!2730 (_2!13533 lt!794729)))))))

(declare-fun b!2120806 () Bool)

(declare-fun e!1350626 () Bool)

(declare-fun e!1350621 () Bool)

(assert (=> b!2120806 (= e!1350626 e!1350621)))

(declare-fun b!2120807 () Bool)

(declare-fun e!1350615 () Bool)

(assert (=> b!2120807 (= e!1350623 e!1350615)))

(declare-fun mapNonEmpty!11782 () Bool)

(declare-fun mapRes!11782 () Bool)

(assert (=> mapNonEmpty!11782 (= mapRes!11782 true)))

(declare-fun mapKey!11782 () (_ BitVec 32))

(declare-fun mapValue!11781 () List!23754)

(declare-fun mapRest!11782 () (Array (_ BitVec 32) List!23754))

(assert (=> mapNonEmpty!11782 (= (arr!3717 (_values!2716 (v!28203 (underlying!5066 (v!28204 (underlying!5067 (cache!2730 (_2!13533 lt!794729)))))))) (store mapRest!11782 mapKey!11782 mapValue!11781))))

(declare-fun b!2120808 () Bool)

(declare-fun e!1350617 () Bool)

(declare-fun setRes!14728 () Bool)

(assert (=> b!2120808 (= e!1350617 setRes!14728)))

(declare-fun condSetEmpty!14728 () Bool)

(assert (=> b!2120808 (= condSetEmpty!14728 (= (z!5717 (h!29073 (_2!13532 (_1!13533 lt!794729)))) ((as const (Array Context!2458 Bool)) false)))))

(declare-fun b!2120809 () Bool)

(declare-fun e!1350619 () Bool)

(declare-fun e!1350624 () Bool)

(assert (=> b!2120809 (= e!1350619 e!1350624)))

(declare-fun b!2120810 () Bool)

(declare-fun e!1350614 () Bool)

(declare-fun e!1350620 () Bool)

(assert (=> b!2120810 (= e!1350614 e!1350620)))

(declare-fun setNonEmpty!14728 () Bool)

(assert (=> setNonEmpty!14728 (= setRes!14728 true)))

(declare-fun setElem!14728 () Context!2458)

(declare-fun setRest!14728 () (InoxSet Context!2458))

(assert (=> setNonEmpty!14728 (= (z!5717 (h!29073 (_2!13532 (_1!13533 lt!794729)))) ((_ map or) (store ((as const (Array Context!2458 Bool)) false) setElem!14728 true) setRest!14728))))

(declare-fun b!2120811 () Bool)

(declare-fun e!1350628 () Bool)

(assert (=> b!2120811 (= e!1350628 e!1350614)))

(declare-fun b!2120812 () Bool)

(assert (=> b!2120812 (= e!1350629 e!1350628)))

(declare-fun b!2120813 () Bool)

(assert (=> b!2120813 (= e!1350624 mapRes!11782)))

(declare-fun condMapEmpty!11782 () Bool)

(declare-fun mapDefault!11782 () List!23754)

(assert (=> b!2120813 (= condMapEmpty!11782 (= (arr!3717 (_values!2716 (v!28203 (underlying!5066 (v!28204 (underlying!5067 (cache!2730 (_2!13533 lt!794729)))))))) ((as const (Array (_ BitVec 32) List!23754)) mapDefault!11782)))))

(declare-fun b!2120814 () Bool)

(assert (=> b!2120814 (= e!1350620 mapRes!11781)))

(declare-fun condMapEmpty!11781 () Bool)

(declare-fun mapDefault!11781 () List!23753)

(assert (=> b!2120814 (= condMapEmpty!11781 (= (arr!3716 (_values!2715 (v!28201 (underlying!5065 (v!28202 (underlying!5068 (cache!2731 (_3!1905 lt!794729)))))))) ((as const (Array (_ BitVec 32) List!23753)) mapDefault!11781)))))

(declare-fun b!2120815 () Bool)

(declare-fun e!1350627 () Bool)

(assert (=> b!2120815 (= e!1350627 e!1350616)))

(declare-fun b!2120816 () Bool)

(assert (=> b!2120816 (= e!1350621 e!1350618)))

(declare-fun b!2120817 () Bool)

(assert (=> b!2120817 (= e!1350615 e!1350619)))

(declare-fun b!2120754 () Bool)

(declare-fun e!1350622 () Bool)

(assert (=> b!2120754 (and e!1350622 e!1350627 e!1350626)))

(declare-fun mapIsEmpty!11782 () Bool)

(assert (=> mapIsEmpty!11782 mapRes!11782))

(declare-fun setIsEmpty!14728 () Bool)

(assert (=> setIsEmpty!14728 setRes!14728))

(declare-fun b!2120818 () Bool)

(assert (=> b!2120818 (= e!1350622 e!1350617)))

(assert (= (and b!2120808 condSetEmpty!14728) setIsEmpty!14728))

(assert (= (and b!2120808 (not condSetEmpty!14728)) setNonEmpty!14728))

(assert (= b!2120818 b!2120808))

(assert (= (and b!2120754 ((_ is Cons!23672) (_2!13532 (_1!13533 lt!794729)))) b!2120818))

(assert (= (and b!2120813 condMapEmpty!11782) mapIsEmpty!11782))

(assert (= (and b!2120813 (not condMapEmpty!11782)) mapNonEmpty!11782))

(assert (= b!2120809 b!2120813))

(assert (= b!2120817 b!2120809))

(assert (= b!2120807 b!2120817))

(assert (= (and b!2120805 ((_ is LongMap!2436) (v!28204 (underlying!5067 (cache!2730 (_2!13533 lt!794729)))))) b!2120807))

(assert (= b!2120804 b!2120805))

(assert (= (and b!2120815 ((_ is HashMap!2349) (cache!2730 (_2!13533 lt!794729)))) b!2120804))

(assert (= b!2120754 b!2120815))

(assert (= (and b!2120814 condMapEmpty!11781) mapIsEmpty!11781))

(assert (= (and b!2120814 (not condMapEmpty!11781)) mapNonEmpty!11781))

(assert (= b!2120810 b!2120814))

(assert (= b!2120811 b!2120810))

(assert (= b!2120812 b!2120811))

(assert (= (and b!2120803 ((_ is LongMap!2435) (v!28202 (underlying!5068 (cache!2731 (_3!1905 lt!794729)))))) b!2120812))

(assert (= b!2120816 b!2120803))

(assert (= (and b!2120806 ((_ is HashMap!2350) (cache!2731 (_3!1905 lt!794729)))) b!2120816))

(assert (= b!2120754 b!2120806))

(declare-fun lambda!78491 () Int)

(declare-fun order!14589 () Int)

(declare-fun order!14591 () Int)

(declare-fun dynLambda!11306 (Int Int) Int)

(declare-fun dynLambda!11307 (Int Int) Int)

(assert (=> b!2120816 (< (dynLambda!11306 order!14589 (defaultValue!2512 (cache!2731 (_3!1905 lt!794729)))) (dynLambda!11307 order!14591 lambda!78491))))

(declare-fun order!14593 () Int)

(declare-fun dynLambda!11308 (Int Int) Int)

(assert (=> b!2120810 (< (dynLambda!11308 order!14593 (defaultEntry!2800 (v!28201 (underlying!5065 (v!28202 (underlying!5068 (cache!2731 (_3!1905 lt!794729)))))))) (dynLambda!11307 order!14591 lambda!78491))))

(declare-fun order!14595 () Int)

(declare-fun dynLambda!11309 (Int Int) Int)

(assert (=> b!2120804 (< (dynLambda!11309 order!14595 (defaultValue!2511 (cache!2730 (_2!13533 lt!794729)))) (dynLambda!11307 order!14591 lambda!78491))))

(declare-fun order!14597 () Int)

(declare-fun dynLambda!11310 (Int Int) Int)

(assert (=> b!2120809 (< (dynLambda!11310 order!14597 (defaultEntry!2801 (v!28203 (underlying!5066 (v!28204 (underlying!5067 (cache!2730 (_2!13533 lt!794729)))))))) (dynLambda!11307 order!14591 lambda!78491))))

(declare-fun m!2574889 () Bool)

(assert (=> mapNonEmpty!11781 m!2574889))

(declare-fun m!2574891 () Bool)

(assert (=> mapNonEmpty!11782 m!2574891))

(declare-fun bs!442680 () Bool)

(declare-fun b!2120757 () Bool)

(assert (= bs!442680 (and b!2120757 b!2120754)))

(declare-fun lambda!78492 () Int)

(assert (=> bs!442680 (not (= lambda!78492 lambda!78491))))

(assert (=> b!2120757 true))

(declare-fun b!2120736 () Bool)

(declare-fun e!1350579 () Bool)

(declare-fun e!1350573 () Bool)

(declare-fun lt!794727 () MutLongMap!2435)

(assert (=> b!2120736 (= e!1350579 (and e!1350573 ((_ is LongMap!2435) lt!794727)))))

(declare-fun cacheDown!1110 () CacheDown!1612)

(assert (=> b!2120736 (= lt!794727 (v!28202 (underlying!5068 (cache!2731 cacheDown!1110))))))

(declare-fun b!2120737 () Bool)

(declare-fun e!1350558 () Int)

(declare-fun lt!794726 () Int)

(assert (=> b!2120737 (= e!1350558 (- lt!794726 1))))

(declare-fun b!2120738 () Bool)

(declare-fun e!1350557 () Bool)

(declare-fun e!1350567 () Bool)

(assert (=> b!2120738 (= e!1350557 e!1350567)))

(declare-fun e!1350564 () Bool)

(declare-datatypes ((Hashable!2351 0))(
  ( (HashableExt!2350 (__x!15487 Int)) )
))
(declare-datatypes ((tuple3!2872 0))(
  ( (tuple3!2873 (_1!13534 (InoxSet Context!2458)) (_2!13534 Int) (_3!1906 Int)) )
))
(declare-datatypes ((tuple2!23256 0))(
  ( (tuple2!23257 (_1!13535 tuple3!2872) (_2!13535 Int)) )
))
(declare-datatypes ((List!23757 0))(
  ( (Nil!23673) (Cons!23673 (h!29074 tuple2!23256) (t!196273 List!23757)) )
))
(declare-datatypes ((array!8381 0))(
  ( (array!8382 (arr!3718 (Array (_ BitVec 32) List!23757)) (size!18501 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4874 0))(
  ( (LongMapFixedSize!4875 (defaultEntry!2802 Int) (mask!6582 (_ BitVec 32)) (extraKeys!2685 (_ BitVec 32)) (zeroValue!2695 List!23757) (minValue!2695 List!23757) (_size!4925 (_ BitVec 32)) (_keys!2734 array!8375) (_values!2717 array!8381) (_vacant!2498 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9573 0))(
  ( (Cell!9574 (v!28205 LongMapFixedSize!4874)) )
))
(declare-datatypes ((MutLongMap!2437 0))(
  ( (LongMap!2437 (underlying!5069 Cell!9573)) (MutLongMapExt!2436 (__x!15488 Int)) )
))
(declare-datatypes ((Cell!9575 0))(
  ( (Cell!9576 (v!28206 MutLongMap!2437)) )
))
(declare-datatypes ((MutableMap!2351 0))(
  ( (MutableMapExt!2350 (__x!15489 Int)) (HashMap!2351 (underlying!5070 Cell!9575) (hashF!4274 Hashable!2351) (_size!4926 (_ BitVec 32)) (defaultValue!2513 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!584 0))(
  ( (CacheFurthestNullable!585 (cache!2732 MutableMap!2351) (totalInput!2897 BalanceConc!15356)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!584)

(declare-fun e!1350554 () Bool)

(declare-fun b!2120739 () Bool)

(declare-fun e!1350556 () Bool)

(declare-fun inv!31266 (BalanceConc!15356) Bool)

(assert (=> b!2120739 (= e!1350554 (and e!1350556 (inv!31266 (totalInput!2897 cacheFurthestNullable!130)) e!1350564))))

(declare-fun b!2120740 () Bool)

(declare-fun e!1350575 () Bool)

(declare-fun e!1350570 () Bool)

(assert (=> b!2120740 (= e!1350575 e!1350570)))

(declare-fun e!1350577 () Bool)

(assert (=> b!2120741 (= e!1350577 (and e!1350579 tp!649033))))

(declare-fun b!2120742 () Bool)

(assert (=> b!2120742 (= e!1350573 e!1350557)))

(declare-fun b!2120743 () Bool)

(declare-fun e!1350555 () Bool)

(declare-fun e!1350571 () Bool)

(assert (=> b!2120743 (= e!1350555 e!1350571)))

(declare-fun tp!649051 () Bool)

(declare-fun e!1350572 () Bool)

(declare-fun e!1350563 () Bool)

(declare-fun cacheUp!991 () CacheUp!1626)

(declare-fun tp!649036 () Bool)

(declare-fun array_inv!2664 (array!8375) Bool)

(declare-fun array_inv!2665 (array!8379) Bool)

(assert (=> b!2120744 (= e!1350563 (and tp!649044 tp!649051 tp!649036 (array_inv!2664 (_keys!2733 (v!28203 (underlying!5066 (v!28204 (underlying!5067 (cache!2730 cacheUp!991))))))) (array_inv!2665 (_values!2716 (v!28203 (underlying!5066 (v!28204 (underlying!5067 (cache!2730 cacheUp!991))))))) e!1350572))))

(declare-fun setNonEmpty!14725 () Bool)

(declare-fun setRes!14725 () Bool)

(declare-fun e!1350566 () Bool)

(declare-fun tp!649027 () Bool)

(declare-fun setElem!14725 () Context!2458)

(declare-fun inv!31267 (Context!2458) Bool)

(assert (=> setNonEmpty!14725 (= setRes!14725 (and tp!649027 (inv!31267 setElem!14725) e!1350566))))

(declare-fun z!3883 () (InoxSet Context!2458))

(declare-fun setRest!14725 () (InoxSet Context!2458))

(assert (=> setNonEmpty!14725 (= z!3883 ((_ map or) (store ((as const (Array Context!2458 Bool)) false) setElem!14725 true) setRest!14725))))

(declare-fun b!2120745 () Bool)

(declare-fun e!1350560 () Bool)

(declare-fun e!1350569 () Bool)

(assert (=> b!2120745 (= e!1350560 e!1350569)))

(declare-fun mapNonEmpty!11774 () Bool)

(declare-fun mapRes!11775 () Bool)

(declare-fun tp!649042 () Bool)

(declare-fun tp!649045 () Bool)

(assert (=> mapNonEmpty!11774 (= mapRes!11775 (and tp!649042 tp!649045))))

(declare-fun mapRest!11775 () (Array (_ BitVec 32) List!23757))

(declare-fun mapValue!11774 () List!23757)

(declare-fun mapKey!11776 () (_ BitVec 32))

(assert (=> mapNonEmpty!11774 (= (arr!3718 (_values!2717 (v!28205 (underlying!5069 (v!28206 (underlying!5070 (cache!2732 cacheFurthestNullable!130))))))) (store mapRest!11775 mapKey!11776 mapValue!11774))))

(declare-fun setIsEmpty!14725 () Bool)

(assert (=> setIsEmpty!14725 setRes!14725))

(declare-fun res!918933 () Bool)

(declare-fun e!1350562 () Bool)

(assert (=> start!207006 (=> (not res!918933) (not e!1350562))))

(declare-fun input!5507 () BalanceConc!15356)

(declare-fun totalInput!886 () BalanceConc!15356)

(declare-fun isSuffix!615 (List!23755 List!23755) Bool)

(declare-fun list!9523 (BalanceConc!15356) List!23755)

(assert (=> start!207006 (= res!918933 (isSuffix!615 (list!9523 input!5507) (list!9523 totalInput!886)))))

(assert (=> start!207006 e!1350562))

(declare-fun inv!31268 (CacheFurthestNullable!584) Bool)

(assert (=> start!207006 (and (inv!31268 cacheFurthestNullable!130) e!1350554)))

(declare-fun condSetEmpty!14725 () Bool)

(assert (=> start!207006 (= condSetEmpty!14725 (= z!3883 ((as const (Array Context!2458 Bool)) false)))))

(assert (=> start!207006 setRes!14725))

(declare-fun e!1350581 () Bool)

(assert (=> start!207006 (and (inv!31266 input!5507) e!1350581)))

(declare-fun e!1350568 () Bool)

(declare-fun inv!31269 (CacheDown!1612) Bool)

(assert (=> start!207006 (and (inv!31269 cacheDown!1110) e!1350568)))

(declare-fun inv!31270 (CacheUp!1626) Bool)

(assert (=> start!207006 (and (inv!31270 cacheUp!991) e!1350575)))

(declare-fun e!1350565 () Bool)

(assert (=> start!207006 (and (inv!31266 totalInput!886) e!1350565)))

(declare-fun e!1350552 () Bool)

(declare-fun tp!649047 () Bool)

(declare-fun tp!649035 () Bool)

(declare-fun array_inv!2666 (array!8377) Bool)

(assert (=> b!2120746 (= e!1350567 (and tp!649052 tp!649035 tp!649047 (array_inv!2664 (_keys!2732 (v!28201 (underlying!5065 (v!28202 (underlying!5068 (cache!2731 cacheDown!1110))))))) (array_inv!2666 (_values!2715 (v!28201 (underlying!5065 (v!28202 (underlying!5068 (cache!2731 cacheDown!1110))))))) e!1350552))))

(declare-fun b!2120747 () Bool)

(declare-fun res!918934 () Bool)

(assert (=> b!2120747 (=> (not res!918934) (not e!1350562))))

(declare-fun valid!1919 (CacheFurthestNullable!584) Bool)

(assert (=> b!2120747 (= res!918934 (valid!1919 cacheFurthestNullable!130))))

(declare-fun b!2120748 () Bool)

(declare-fun e!1350553 () Bool)

(declare-fun tp!649037 () Bool)

(assert (=> b!2120748 (= e!1350553 (and tp!649037 mapRes!11775))))

(declare-fun condMapEmpty!11774 () Bool)

(declare-fun mapDefault!11776 () List!23757)

(assert (=> b!2120748 (= condMapEmpty!11774 (= (arr!3718 (_values!2717 (v!28205 (underlying!5069 (v!28206 (underlying!5070 (cache!2732 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23757)) mapDefault!11776)))))

(declare-fun b!2120749 () Bool)

(declare-fun tp!649046 () Bool)

(declare-fun inv!31271 (Conc!7797) Bool)

(assert (=> b!2120749 (= e!1350581 (and (inv!31271 (c!339697 input!5507)) tp!649046))))

(declare-fun b!2120750 () Bool)

(declare-fun res!918936 () Bool)

(assert (=> b!2120750 (=> (not res!918936) (not e!1350562))))

(assert (=> b!2120750 (= res!918936 (= (totalInput!2897 cacheFurthestNullable!130) totalInput!886))))

(declare-fun mapNonEmpty!11775 () Bool)

(declare-fun mapRes!11776 () Bool)

(declare-fun tp!649050 () Bool)

(declare-fun tp!649031 () Bool)

(assert (=> mapNonEmpty!11775 (= mapRes!11776 (and tp!649050 tp!649031))))

(declare-fun mapRest!11774 () (Array (_ BitVec 32) List!23754))

(declare-fun mapKey!11775 () (_ BitVec 32))

(declare-fun mapValue!11776 () List!23754)

(assert (=> mapNonEmpty!11775 (= (arr!3717 (_values!2716 (v!28203 (underlying!5066 (v!28204 (underlying!5067 (cache!2730 cacheUp!991))))))) (store mapRest!11774 mapKey!11775 mapValue!11776))))

(declare-fun b!2120751 () Bool)

(assert (=> b!2120751 (= e!1350558 (- 1))))

(declare-fun b!2120752 () Bool)

(declare-fun res!918935 () Bool)

(assert (=> b!2120752 (=> (not res!918935) (not e!1350562))))

(declare-fun valid!1920 (CacheUp!1626) Bool)

(assert (=> b!2120752 (= res!918935 (valid!1920 cacheUp!991))))

(declare-fun b!2120753 () Bool)

(declare-fun tp!649029 () Bool)

(declare-fun mapRes!11774 () Bool)

(assert (=> b!2120753 (= e!1350552 (and tp!649029 mapRes!11774))))

(declare-fun condMapEmpty!11775 () Bool)

(declare-fun mapDefault!11774 () List!23753)

(assert (=> b!2120753 (= condMapEmpty!11775 (= (arr!3716 (_values!2715 (v!28201 (underlying!5065 (v!28202 (underlying!5068 (cache!2731 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23753)) mapDefault!11774)))))

(assert (=> b!2120754 (= e!1350562 (not true))))

(declare-fun e!1350551 () Bool)

(assert (=> b!2120754 e!1350551))

(declare-fun res!918931 () Bool)

(assert (=> b!2120754 (=> (not res!918931) (not e!1350551))))

(declare-fun forall!4859 (List!23756 Int) Bool)

(assert (=> b!2120754 (= res!918931 (forall!4859 (_2!13532 (_1!13533 lt!794729)) lambda!78491))))

(declare-fun lt!794724 () Int)

(declare-fun furthestNullablePositionStackMem!6 ((InoxSet Context!2458) Int BalanceConc!15356 Int Int List!23756 CacheUp!1626 CacheDown!1612 CacheFurthestNullable!584) tuple3!2870)

(assert (=> b!2120754 (= lt!794729 (furthestNullablePositionStackMem!6 z!3883 lt!794726 totalInput!886 lt!794724 e!1350558 Nil!23672 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))

(declare-fun c!339695 () Bool)

(declare-fun nullableZipper!61 ((InoxSet Context!2458)) Bool)

(assert (=> b!2120754 (= c!339695 (nullableZipper!61 z!3883))))

(declare-fun size!18502 (BalanceConc!15356) Int)

(assert (=> b!2120754 (= lt!794726 (- lt!794724 (size!18502 input!5507)))))

(assert (=> b!2120754 (= lt!794724 (size!18502 totalInput!886))))

(declare-fun b!2120755 () Bool)

(declare-fun tp!649028 () Bool)

(assert (=> b!2120755 (= e!1350572 (and tp!649028 mapRes!11776))))

(declare-fun condMapEmpty!11776 () Bool)

(declare-fun mapDefault!11775 () List!23754)

(assert (=> b!2120755 (= condMapEmpty!11776 (= (arr!3717 (_values!2716 (v!28203 (underlying!5066 (v!28204 (underlying!5067 (cache!2730 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23754)) mapDefault!11775)))))

(declare-fun b!2120756 () Bool)

(declare-fun tp!649034 () Bool)

(assert (=> b!2120756 (= e!1350566 tp!649034)))

(assert (=> b!2120757 (= e!1350551 (forall!4859 (_2!13532 (_1!13533 lt!794729)) lambda!78492))))

(declare-fun mapNonEmpty!11776 () Bool)

(declare-fun tp!649032 () Bool)

(declare-fun tp!649041 () Bool)

(assert (=> mapNonEmpty!11776 (= mapRes!11774 (and tp!649032 tp!649041))))

(declare-fun mapKey!11774 () (_ BitVec 32))

(declare-fun mapValue!11775 () List!23753)

(declare-fun mapRest!11776 () (Array (_ BitVec 32) List!23753))

(assert (=> mapNonEmpty!11776 (= (arr!3716 (_values!2715 (v!28201 (underlying!5065 (v!28202 (underlying!5068 (cache!2731 cacheDown!1110))))))) (store mapRest!11776 mapKey!11774 mapValue!11775))))

(declare-fun b!2120758 () Bool)

(assert (=> b!2120758 (= e!1350571 e!1350563)))

(declare-fun tp!649039 () Bool)

(declare-fun tp!649048 () Bool)

(declare-fun array_inv!2667 (array!8381) Bool)

(assert (=> b!2120759 (= e!1350569 (and tp!649038 tp!649039 tp!649048 (array_inv!2664 (_keys!2734 (v!28205 (underlying!5069 (v!28206 (underlying!5070 (cache!2732 cacheFurthestNullable!130))))))) (array_inv!2667 (_values!2717 (v!28205 (underlying!5069 (v!28206 (underlying!5070 (cache!2732 cacheFurthestNullable!130))))))) e!1350553))))

(declare-fun e!1350559 () Bool)

(assert (=> b!2120760 (= e!1350570 (and e!1350559 tp!649043))))

(declare-fun e!1350580 () Bool)

(assert (=> b!2120761 (= e!1350556 (and e!1350580 tp!649040))))

(declare-fun b!2120762 () Bool)

(assert (=> b!2120762 (= e!1350568 e!1350577)))

(declare-fun b!2120763 () Bool)

(declare-fun tp!649049 () Bool)

(assert (=> b!2120763 (= e!1350565 (and (inv!31271 (c!339697 totalInput!886)) tp!649049))))

(declare-fun mapIsEmpty!11774 () Bool)

(assert (=> mapIsEmpty!11774 mapRes!11775))

(declare-fun mapIsEmpty!11775 () Bool)

(assert (=> mapIsEmpty!11775 mapRes!11774))

(declare-fun b!2120764 () Bool)

(declare-fun e!1350561 () Bool)

(assert (=> b!2120764 (= e!1350561 e!1350560)))

(declare-fun mapIsEmpty!11776 () Bool)

(assert (=> mapIsEmpty!11776 mapRes!11776))

(declare-fun b!2120765 () Bool)

(declare-fun lt!794728 () MutLongMap!2437)

(assert (=> b!2120765 (= e!1350580 (and e!1350561 ((_ is LongMap!2437) lt!794728)))))

(assert (=> b!2120765 (= lt!794728 (v!28206 (underlying!5070 (cache!2732 cacheFurthestNullable!130))))))

(declare-fun b!2120766 () Bool)

(declare-fun tp!649030 () Bool)

(assert (=> b!2120766 (= e!1350564 (and (inv!31271 (c!339697 (totalInput!2897 cacheFurthestNullable!130))) tp!649030))))

(declare-fun b!2120767 () Bool)

(declare-fun res!918932 () Bool)

(assert (=> b!2120767 (=> (not res!918932) (not e!1350562))))

(declare-fun valid!1921 (CacheDown!1612) Bool)

(assert (=> b!2120767 (= res!918932 (valid!1921 cacheDown!1110))))

(declare-fun b!2120768 () Bool)

(declare-fun lt!794725 () MutLongMap!2436)

(assert (=> b!2120768 (= e!1350559 (and e!1350555 ((_ is LongMap!2436) lt!794725)))))

(assert (=> b!2120768 (= lt!794725 (v!28204 (underlying!5067 (cache!2730 cacheUp!991))))))

(assert (= (and start!207006 res!918933) b!2120752))

(assert (= (and b!2120752 res!918935) b!2120767))

(assert (= (and b!2120767 res!918932) b!2120747))

(assert (= (and b!2120747 res!918934) b!2120750))

(assert (= (and b!2120750 res!918936) b!2120754))

(assert (= (and b!2120754 c!339695) b!2120737))

(assert (= (and b!2120754 (not c!339695)) b!2120751))

(assert (= (and b!2120754 res!918931) b!2120757))

(assert (= (and b!2120748 condMapEmpty!11774) mapIsEmpty!11774))

(assert (= (and b!2120748 (not condMapEmpty!11774)) mapNonEmpty!11774))

(assert (= b!2120759 b!2120748))

(assert (= b!2120745 b!2120759))

(assert (= b!2120764 b!2120745))

(assert (= (and b!2120765 ((_ is LongMap!2437) (v!28206 (underlying!5070 (cache!2732 cacheFurthestNullable!130))))) b!2120764))

(assert (= b!2120761 b!2120765))

(assert (= (and b!2120739 ((_ is HashMap!2351) (cache!2732 cacheFurthestNullable!130))) b!2120761))

(assert (= b!2120739 b!2120766))

(assert (= start!207006 b!2120739))

(assert (= (and start!207006 condSetEmpty!14725) setIsEmpty!14725))

(assert (= (and start!207006 (not condSetEmpty!14725)) setNonEmpty!14725))

(assert (= setNonEmpty!14725 b!2120756))

(assert (= start!207006 b!2120749))

(assert (= (and b!2120753 condMapEmpty!11775) mapIsEmpty!11775))

(assert (= (and b!2120753 (not condMapEmpty!11775)) mapNonEmpty!11776))

(assert (= b!2120746 b!2120753))

(assert (= b!2120738 b!2120746))

(assert (= b!2120742 b!2120738))

(assert (= (and b!2120736 ((_ is LongMap!2435) (v!28202 (underlying!5068 (cache!2731 cacheDown!1110))))) b!2120742))

(assert (= b!2120741 b!2120736))

(assert (= (and b!2120762 ((_ is HashMap!2350) (cache!2731 cacheDown!1110))) b!2120741))

(assert (= start!207006 b!2120762))

(assert (= (and b!2120755 condMapEmpty!11776) mapIsEmpty!11776))

(assert (= (and b!2120755 (not condMapEmpty!11776)) mapNonEmpty!11775))

(assert (= b!2120744 b!2120755))

(assert (= b!2120758 b!2120744))

(assert (= b!2120743 b!2120758))

(assert (= (and b!2120768 ((_ is LongMap!2436) (v!28204 (underlying!5067 (cache!2730 cacheUp!991))))) b!2120743))

(assert (= b!2120760 b!2120768))

(assert (= (and b!2120740 ((_ is HashMap!2349) (cache!2730 cacheUp!991))) b!2120760))

(assert (= start!207006 b!2120740))

(assert (= start!207006 b!2120763))

(declare-fun m!2574893 () Bool)

(assert (=> b!2120759 m!2574893))

(declare-fun m!2574895 () Bool)

(assert (=> b!2120759 m!2574895))

(declare-fun m!2574897 () Bool)

(assert (=> b!2120747 m!2574897))

(declare-fun m!2574899 () Bool)

(assert (=> mapNonEmpty!11774 m!2574899))

(declare-fun m!2574901 () Bool)

(assert (=> b!2120744 m!2574901))

(declare-fun m!2574903 () Bool)

(assert (=> b!2120744 m!2574903))

(declare-fun m!2574905 () Bool)

(assert (=> b!2120746 m!2574905))

(declare-fun m!2574907 () Bool)

(assert (=> b!2120746 m!2574907))

(declare-fun m!2574909 () Bool)

(assert (=> b!2120767 m!2574909))

(declare-fun m!2574911 () Bool)

(assert (=> setNonEmpty!14725 m!2574911))

(declare-fun m!2574913 () Bool)

(assert (=> start!207006 m!2574913))

(declare-fun m!2574915 () Bool)

(assert (=> start!207006 m!2574915))

(declare-fun m!2574917 () Bool)

(assert (=> start!207006 m!2574917))

(declare-fun m!2574919 () Bool)

(assert (=> start!207006 m!2574919))

(declare-fun m!2574921 () Bool)

(assert (=> start!207006 m!2574921))

(declare-fun m!2574923 () Bool)

(assert (=> start!207006 m!2574923))

(assert (=> start!207006 m!2574919))

(assert (=> start!207006 m!2574913))

(declare-fun m!2574925 () Bool)

(assert (=> start!207006 m!2574925))

(declare-fun m!2574927 () Bool)

(assert (=> start!207006 m!2574927))

(declare-fun m!2574929 () Bool)

(assert (=> b!2120763 m!2574929))

(declare-fun m!2574931 () Bool)

(assert (=> mapNonEmpty!11776 m!2574931))

(declare-fun m!2574933 () Bool)

(assert (=> b!2120757 m!2574933))

(declare-fun m!2574935 () Bool)

(assert (=> b!2120766 m!2574935))

(declare-fun m!2574937 () Bool)

(assert (=> b!2120749 m!2574937))

(declare-fun m!2574939 () Bool)

(assert (=> mapNonEmpty!11775 m!2574939))

(declare-fun m!2574941 () Bool)

(assert (=> b!2120739 m!2574941))

(declare-fun m!2574943 () Bool)

(assert (=> b!2120752 m!2574943))

(declare-fun m!2574945 () Bool)

(assert (=> b!2120754 m!2574945))

(declare-fun m!2574947 () Bool)

(assert (=> b!2120754 m!2574947))

(declare-fun m!2574949 () Bool)

(assert (=> b!2120754 m!2574949))

(declare-fun m!2574951 () Bool)

(assert (=> b!2120754 m!2574951))

(declare-fun m!2574953 () Bool)

(assert (=> b!2120754 m!2574953))

(check-sat (not b!2120754) (not mapNonEmpty!11776) b_and!171149 (not b!2120755) (not start!207006) (not b!2120818) (not b_next!62275) (not b!2120746) (not b!2120747) (not b!2120813) (not b!2120766) (not b_next!62269) (not b!2120810) (not setNonEmpty!14728) b_and!171153 (not b!2120767) b_and!171145 (not mapNonEmpty!11781) (not b!2120749) (not b!2120809) (not b!2120757) (not b_next!62271) (not b!2120759) (not b!2120748) (not b!2120739) (not b!2120763) (not b!2120756) b_and!171147 b_and!171155 (not b!2120752) (not mapNonEmpty!11774) (not mapNonEmpty!11775) (not b!2120744) (not b!2120753) (not b_next!62273) (not setNonEmpty!14725) (not mapNonEmpty!11782) b_and!171151 (not b_next!62279) (not b_next!62277) (not b!2120814))
(check-sat (not b_next!62269) b_and!171153 b_and!171145 (not b_next!62271) b_and!171147 b_and!171155 (not b_next!62273) b_and!171149 (not b_next!62277) (not b_next!62275) b_and!171151 (not b_next!62279))
