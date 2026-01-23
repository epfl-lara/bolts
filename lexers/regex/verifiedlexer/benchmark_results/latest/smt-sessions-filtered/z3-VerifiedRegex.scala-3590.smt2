; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206846 () Bool)

(assert start!206846)

(declare-fun b!2118713 () Bool)

(declare-fun b_free!61421 () Bool)

(declare-fun b_next!62125 () Bool)

(assert (=> b!2118713 (= b_free!61421 (not b_next!62125))))

(declare-fun tp!647296 () Bool)

(declare-fun b_and!171001 () Bool)

(assert (=> b!2118713 (= tp!647296 b_and!171001)))

(declare-fun b!2118701 () Bool)

(declare-fun b_free!61423 () Bool)

(declare-fun b_next!62127 () Bool)

(assert (=> b!2118701 (= b_free!61423 (not b_next!62127))))

(declare-fun tp!647293 () Bool)

(declare-fun b_and!171003 () Bool)

(assert (=> b!2118701 (= tp!647293 b_and!171003)))

(declare-fun b!2118714 () Bool)

(declare-fun b_free!61425 () Bool)

(declare-fun b_next!62129 () Bool)

(assert (=> b!2118714 (= b_free!61425 (not b_next!62129))))

(declare-fun tp!647292 () Bool)

(declare-fun b_and!171005 () Bool)

(assert (=> b!2118714 (= tp!647292 b_and!171005)))

(declare-fun b!2118709 () Bool)

(declare-fun b_free!61427 () Bool)

(declare-fun b_next!62131 () Bool)

(assert (=> b!2118709 (= b_free!61427 (not b_next!62131))))

(declare-fun tp!647305 () Bool)

(declare-fun b_and!171007 () Bool)

(assert (=> b!2118709 (= tp!647305 b_and!171007)))

(declare-fun b!2118694 () Bool)

(declare-fun b_free!61429 () Bool)

(declare-fun b_next!62133 () Bool)

(assert (=> b!2118694 (= b_free!61429 (not b_next!62133))))

(declare-fun tp!647303 () Bool)

(declare-fun b_and!171009 () Bool)

(assert (=> b!2118694 (= tp!647303 b_and!171009)))

(declare-fun b!2118696 () Bool)

(declare-fun b_free!61431 () Bool)

(declare-fun b_next!62135 () Bool)

(assert (=> b!2118696 (= b_free!61431 (not b_next!62135))))

(declare-fun tp!647291 () Bool)

(declare-fun b_and!171011 () Bool)

(assert (=> b!2118696 (= tp!647291 b_and!171011)))

(declare-fun mapNonEmpty!11630 () Bool)

(declare-fun mapRes!11632 () Bool)

(declare-fun tp!647287 () Bool)

(declare-fun tp!647304 () Bool)

(assert (=> mapNonEmpty!11630 (= mapRes!11632 (and tp!647287 tp!647304))))

(declare-fun mapKey!11630 () (_ BitVec 32))

(declare-datatypes ((C!11440 0))(
  ( (C!11441 (val!6706 Int)) )
))
(declare-datatypes ((Regex!5647 0))(
  ( (ElementMatch!5647 (c!339598 C!11440)) (Concat!9949 (regOne!11806 Regex!5647) (regTwo!11806 Regex!5647)) (EmptyExpr!5647) (Star!5647 (reg!5976 Regex!5647)) (EmptyLang!5647) (Union!5647 (regOne!11807 Regex!5647) (regTwo!11807 Regex!5647)) )
))
(declare-datatypes ((List!23692 0))(
  ( (Nil!23608) (Cons!23608 (h!29009 Regex!5647) (t!196205 List!23692)) )
))
(declare-datatypes ((Context!2434 0))(
  ( (Context!2435 (exprs!1717 List!23692)) )
))
(declare-datatypes ((tuple2!23156 0))(
  ( (tuple2!23157 (_1!13460 Context!2434) (_2!13460 C!11440)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23158 0))(
  ( (tuple2!23159 (_1!13461 tuple2!23156) (_2!13461 (InoxSet Context!2434))) )
))
(declare-datatypes ((List!23693 0))(
  ( (Nil!23609) (Cons!23609 (h!29010 tuple2!23158) (t!196206 List!23693)) )
))
(declare-fun mapValue!11630 () List!23693)

(declare-datatypes ((array!8273 0))(
  ( (array!8274 (arr!3670 (Array (_ BitVec 32) (_ BitVec 64))) (size!18439 (_ BitVec 32))) )
))
(declare-datatypes ((array!8275 0))(
  ( (array!8276 (arr!3671 (Array (_ BitVec 32) List!23693)) (size!18440 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4804 0))(
  ( (LongMapFixedSize!4805 (defaultEntry!2767 Int) (mask!6541 (_ BitVec 32)) (extraKeys!2650 (_ BitVec 32)) (zeroValue!2660 List!23693) (minValue!2660 List!23693) (_size!4855 (_ BitVec 32)) (_keys!2699 array!8273) (_values!2682 array!8275) (_vacant!2463 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9433 0))(
  ( (Cell!9434 (v!28135 LongMapFixedSize!4804)) )
))
(declare-datatypes ((Hashable!2316 0))(
  ( (HashableExt!2315 (__x!15382 Int)) )
))
(declare-datatypes ((MutLongMap!2402 0))(
  ( (LongMap!2402 (underlying!4999 Cell!9433)) (MutLongMapExt!2401 (__x!15383 Int)) )
))
(declare-datatypes ((Cell!9435 0))(
  ( (Cell!9436 (v!28136 MutLongMap!2402)) )
))
(declare-datatypes ((MutableMap!2316 0))(
  ( (MutableMapExt!2315 (__x!15384 Int)) (HashMap!2316 (underlying!5000 Cell!9435) (hashF!4239 Hashable!2316) (_size!4856 (_ BitVec 32)) (defaultValue!2478 Int)) )
))
(declare-datatypes ((CacheUp!1602 0))(
  ( (CacheUp!1603 (cache!2697 MutableMap!2316)) )
))
(declare-fun cacheUp!991 () CacheUp!1602)

(declare-fun mapRest!11630 () (Array (_ BitVec 32) List!23693))

(assert (=> mapNonEmpty!11630 (= (arr!3671 (_values!2682 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))) (store mapRest!11630 mapKey!11630 mapValue!11630))))

(declare-fun setNonEmpty!14526 () Bool)

(declare-fun e!1348787 () Bool)

(declare-fun setElem!14526 () Context!2434)

(declare-fun tp!647286 () Bool)

(declare-fun setRes!14526 () Bool)

(declare-fun inv!31192 (Context!2434) Bool)

(assert (=> setNonEmpty!14526 (= setRes!14526 (and tp!647286 (inv!31192 setElem!14526) e!1348787))))

(declare-fun z!3883 () (InoxSet Context!2434))

(declare-fun setRest!14526 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14526 (= z!3883 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14526 true) setRest!14526))))

(declare-fun b!2118687 () Bool)

(declare-fun e!1348800 () Bool)

(declare-fun e!1348778 () Bool)

(declare-fun lt!794421 () MutLongMap!2402)

(get-info :version)

(assert (=> b!2118687 (= e!1348800 (and e!1348778 ((_ is LongMap!2402) lt!794421)))))

(assert (=> b!2118687 (= lt!794421 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))

(declare-fun b!2118688 () Bool)

(declare-fun e!1348798 () Bool)

(declare-fun e!1348777 () Bool)

(assert (=> b!2118688 (= e!1348798 e!1348777)))

(declare-fun b!2118690 () Bool)

(declare-fun res!918564 () Bool)

(declare-fun e!1348779 () Bool)

(assert (=> b!2118690 (=> (not res!918564) (not e!1348779))))

(declare-datatypes ((Hashable!2317 0))(
  ( (HashableExt!2316 (__x!15385 Int)) )
))
(declare-datatypes ((tuple3!2824 0))(
  ( (tuple3!2825 (_1!13462 (InoxSet Context!2434)) (_2!13462 Int) (_3!1882 Int)) )
))
(declare-datatypes ((tuple2!23160 0))(
  ( (tuple2!23161 (_1!13463 tuple3!2824) (_2!13463 Int)) )
))
(declare-datatypes ((List!23694 0))(
  ( (Nil!23610) (Cons!23610 (h!29011 tuple2!23160) (t!196207 List!23694)) )
))
(declare-datatypes ((array!8277 0))(
  ( (array!8278 (arr!3672 (Array (_ BitVec 32) List!23694)) (size!18441 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4806 0))(
  ( (LongMapFixedSize!4807 (defaultEntry!2768 Int) (mask!6542 (_ BitVec 32)) (extraKeys!2651 (_ BitVec 32)) (zeroValue!2661 List!23694) (minValue!2661 List!23694) (_size!4857 (_ BitVec 32)) (_keys!2700 array!8273) (_values!2683 array!8277) (_vacant!2464 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9437 0))(
  ( (Cell!9438 (v!28137 LongMapFixedSize!4806)) )
))
(declare-datatypes ((List!23695 0))(
  ( (Nil!23611) (Cons!23611 (h!29012 C!11440) (t!196208 List!23695)) )
))
(declare-datatypes ((IArray!15577 0))(
  ( (IArray!15578 (innerList!7846 List!23695)) )
))
(declare-datatypes ((MutLongMap!2403 0))(
  ( (LongMap!2403 (underlying!5001 Cell!9437)) (MutLongMapExt!2402 (__x!15386 Int)) )
))
(declare-datatypes ((Cell!9439 0))(
  ( (Cell!9440 (v!28138 MutLongMap!2403)) )
))
(declare-datatypes ((Conc!7786 0))(
  ( (Node!7786 (left!18284 Conc!7786) (right!18614 Conc!7786) (csize!15802 Int) (cheight!7997 Int)) (Leaf!11377 (xs!10728 IArray!15577) (csize!15803 Int)) (Empty!7786) )
))
(declare-datatypes ((BalanceConc!15334 0))(
  ( (BalanceConc!15335 (c!339599 Conc!7786)) )
))
(declare-datatypes ((MutableMap!2317 0))(
  ( (MutableMapExt!2316 (__x!15387 Int)) (HashMap!2317 (underlying!5002 Cell!9439) (hashF!4240 Hashable!2317) (_size!4858 (_ BitVec 32)) (defaultValue!2479 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!564 0))(
  ( (CacheFurthestNullable!565 (cache!2698 MutableMap!2317) (totalInput!2880 BalanceConc!15334)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!564)

(declare-fun valid!1891 (CacheFurthestNullable!564) Bool)

(assert (=> b!2118690 (= res!918564 (valid!1891 cacheFurthestNullable!130))))

(declare-fun b!2118691 () Bool)

(declare-fun e!1348788 () Bool)

(declare-fun e!1348776 () Bool)

(assert (=> b!2118691 (= e!1348788 e!1348776)))

(declare-fun b!2118692 () Bool)

(declare-fun e!1348780 () Bool)

(declare-fun e!1348786 () Bool)

(assert (=> b!2118692 (= e!1348780 e!1348786)))

(declare-fun b!2118693 () Bool)

(declare-fun e!1348793 () Bool)

(declare-fun tp!647288 () Bool)

(declare-fun mapRes!11631 () Bool)

(assert (=> b!2118693 (= e!1348793 (and tp!647288 mapRes!11631))))

(declare-fun condMapEmpty!11632 () Bool)

(declare-datatypes ((tuple3!2826 0))(
  ( (tuple3!2827 (_1!13464 Regex!5647) (_2!13464 Context!2434) (_3!1883 C!11440)) )
))
(declare-datatypes ((tuple2!23162 0))(
  ( (tuple2!23163 (_1!13465 tuple3!2826) (_2!13465 (InoxSet Context!2434))) )
))
(declare-datatypes ((List!23696 0))(
  ( (Nil!23612) (Cons!23612 (h!29013 tuple2!23162) (t!196209 List!23696)) )
))
(declare-datatypes ((array!8279 0))(
  ( (array!8280 (arr!3673 (Array (_ BitVec 32) List!23696)) (size!18442 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4808 0))(
  ( (LongMapFixedSize!4809 (defaultEntry!2769 Int) (mask!6543 (_ BitVec 32)) (extraKeys!2652 (_ BitVec 32)) (zeroValue!2662 List!23696) (minValue!2662 List!23696) (_size!4859 (_ BitVec 32)) (_keys!2701 array!8273) (_values!2684 array!8279) (_vacant!2465 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9441 0))(
  ( (Cell!9442 (v!28139 LongMapFixedSize!4808)) )
))
(declare-datatypes ((MutLongMap!2404 0))(
  ( (LongMap!2404 (underlying!5003 Cell!9441)) (MutLongMapExt!2403 (__x!15388 Int)) )
))
(declare-datatypes ((Cell!9443 0))(
  ( (Cell!9444 (v!28140 MutLongMap!2404)) )
))
(declare-datatypes ((Hashable!2318 0))(
  ( (HashableExt!2317 (__x!15389 Int)) )
))
(declare-datatypes ((MutableMap!2318 0))(
  ( (MutableMapExt!2317 (__x!15390 Int)) (HashMap!2318 (underlying!5004 Cell!9443) (hashF!4241 Hashable!2318) (_size!4860 (_ BitVec 32)) (defaultValue!2480 Int)) )
))
(declare-datatypes ((CacheDown!1590 0))(
  ( (CacheDown!1591 (cache!2699 MutableMap!2318)) )
))
(declare-fun cacheDown!1110 () CacheDown!1590)

(declare-fun mapDefault!11632 () List!23696)

(assert (=> b!2118693 (= condMapEmpty!11632 (= (arr!3673 (_values!2684 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23696)) mapDefault!11632)))))

(declare-fun tp!647301 () Bool)

(declare-fun e!1348796 () Bool)

(declare-fun e!1348794 () Bool)

(declare-fun tp!647300 () Bool)

(declare-fun array_inv!2633 (array!8273) Bool)

(declare-fun array_inv!2634 (array!8277) Bool)

(assert (=> b!2118694 (= e!1348794 (and tp!647303 tp!647301 tp!647300 (array_inv!2633 (_keys!2700 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))) (array_inv!2634 (_values!2683 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))) e!1348796))))

(declare-fun b!2118695 () Bool)

(declare-fun tp!647306 () Bool)

(declare-fun mapRes!11630 () Bool)

(assert (=> b!2118695 (= e!1348796 (and tp!647306 mapRes!11630))))

(declare-fun condMapEmpty!11631 () Bool)

(declare-fun mapDefault!11631 () List!23694)

(assert (=> b!2118695 (= condMapEmpty!11631 (= (arr!3672 (_values!2683 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23694)) mapDefault!11631)))))

(declare-fun tp!647289 () Bool)

(declare-fun e!1348795 () Bool)

(declare-fun e!1348785 () Bool)

(declare-fun tp!647283 () Bool)

(declare-fun array_inv!2635 (array!8275) Bool)

(assert (=> b!2118696 (= e!1348785 (and tp!647291 tp!647289 tp!647283 (array_inv!2633 (_keys!2699 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))) (array_inv!2635 (_values!2682 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))) e!1348795))))

(declare-fun b!2118697 () Bool)

(declare-fun res!918566 () Bool)

(assert (=> b!2118697 (=> (not res!918566) (not e!1348779))))

(declare-fun valid!1892 (CacheUp!1602) Bool)

(assert (=> b!2118697 (= res!918566 (valid!1892 cacheUp!991))))

(declare-fun b!2118698 () Bool)

(declare-fun e!1348775 () Bool)

(declare-fun input!5507 () BalanceConc!15334)

(declare-fun tp!647284 () Bool)

(declare-fun inv!31193 (Conc!7786) Bool)

(assert (=> b!2118698 (= e!1348775 (and (inv!31193 (c!339599 input!5507)) tp!647284))))

(declare-fun b!2118699 () Bool)

(declare-fun e!1348801 () Bool)

(declare-fun e!1348774 () Bool)

(declare-fun lt!794419 () MutLongMap!2404)

(assert (=> b!2118699 (= e!1348801 (and e!1348774 ((_ is LongMap!2404) lt!794419)))))

(assert (=> b!2118699 (= lt!794419 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))

(declare-fun b!2118700 () Bool)

(declare-fun res!918568 () Bool)

(assert (=> b!2118700 (=> (not res!918568) (not e!1348779))))

(declare-fun valid!1893 (CacheDown!1590) Bool)

(assert (=> b!2118700 (= res!918568 (valid!1893 cacheDown!1110))))

(declare-fun setIsEmpty!14526 () Bool)

(assert (=> setIsEmpty!14526 setRes!14526))

(assert (=> b!2118701 (= e!1348776 (and e!1348801 tp!647293))))

(declare-fun b!2118702 () Bool)

(declare-fun e!1348783 () Bool)

(declare-fun tp!647297 () Bool)

(assert (=> b!2118702 (= e!1348783 (and (inv!31193 (c!339599 (totalInput!2880 cacheFurthestNullable!130))) tp!647297))))

(declare-fun mapNonEmpty!11631 () Bool)

(declare-fun tp!647307 () Bool)

(declare-fun tp!647299 () Bool)

(assert (=> mapNonEmpty!11631 (= mapRes!11630 (and tp!647307 tp!647299))))

(declare-fun mapValue!11632 () List!23694)

(declare-fun mapKey!11631 () (_ BitVec 32))

(declare-fun mapRest!11632 () (Array (_ BitVec 32) List!23694))

(assert (=> mapNonEmpty!11631 (= (arr!3672 (_values!2683 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))) (store mapRest!11632 mapKey!11631 mapValue!11632))))

(declare-fun b!2118703 () Bool)

(declare-fun e!1348781 () Bool)

(assert (=> b!2118703 (= e!1348774 e!1348781)))

(declare-fun mapIsEmpty!11630 () Bool)

(assert (=> mapIsEmpty!11630 mapRes!11631))

(declare-fun e!1348797 () Bool)

(declare-fun b!2118689 () Bool)

(declare-fun e!1348782 () Bool)

(declare-fun inv!31194 (BalanceConc!15334) Bool)

(assert (=> b!2118689 (= e!1348797 (and e!1348782 (inv!31194 (totalInput!2880 cacheFurthestNullable!130)) e!1348783))))

(declare-fun res!918567 () Bool)

(assert (=> start!206846 (=> (not res!918567) (not e!1348779))))

(declare-fun totalInput!886 () BalanceConc!15334)

(declare-fun isSuffix!607 (List!23695 List!23695) Bool)

(declare-fun list!9511 (BalanceConc!15334) List!23695)

(assert (=> start!206846 (= res!918567 (isSuffix!607 (list!9511 input!5507) (list!9511 totalInput!886)))))

(assert (=> start!206846 e!1348779))

(declare-fun inv!31195 (CacheFurthestNullable!564) Bool)

(assert (=> start!206846 (and (inv!31195 cacheFurthestNullable!130) e!1348797)))

(declare-fun condSetEmpty!14526 () Bool)

(assert (=> start!206846 (= condSetEmpty!14526 (= z!3883 ((as const (Array Context!2434 Bool)) false)))))

(assert (=> start!206846 setRes!14526))

(assert (=> start!206846 (and (inv!31194 input!5507) e!1348775)))

(declare-fun inv!31196 (CacheDown!1590) Bool)

(assert (=> start!206846 (and (inv!31196 cacheDown!1110) e!1348788)))

(declare-fun inv!31197 (CacheUp!1602) Bool)

(assert (=> start!206846 (and (inv!31197 cacheUp!991) e!1348798)))

(declare-fun e!1348802 () Bool)

(assert (=> start!206846 (and (inv!31194 totalInput!886) e!1348802)))

(declare-fun b!2118704 () Bool)

(declare-fun e!1348789 () Bool)

(declare-fun lt!794422 () MutLongMap!2403)

(assert (=> b!2118704 (= e!1348789 (and e!1348780 ((_ is LongMap!2403) lt!794422)))))

(assert (=> b!2118704 (= lt!794422 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))

(declare-fun b!2118705 () Bool)

(declare-fun tp!647298 () Bool)

(assert (=> b!2118705 (= e!1348802 (and (inv!31193 (c!339599 totalInput!886)) tp!647298))))

(declare-fun b!2118706 () Bool)

(declare-fun e!1348784 () Bool)

(assert (=> b!2118706 (= e!1348781 e!1348784)))

(declare-fun mapNonEmpty!11632 () Bool)

(declare-fun tp!647282 () Bool)

(declare-fun tp!647295 () Bool)

(assert (=> mapNonEmpty!11632 (= mapRes!11631 (and tp!647282 tp!647295))))

(declare-fun mapKey!11632 () (_ BitVec 32))

(declare-fun mapValue!11631 () List!23696)

(declare-fun mapRest!11631 () (Array (_ BitVec 32) List!23696))

(assert (=> mapNonEmpty!11632 (= (arr!3673 (_values!2684 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))) (store mapRest!11631 mapKey!11632 mapValue!11631))))

(declare-fun b!2118707 () Bool)

(declare-fun tp!647294 () Bool)

(assert (=> b!2118707 (= e!1348795 (and tp!647294 mapRes!11632))))

(declare-fun condMapEmpty!11630 () Bool)

(declare-fun mapDefault!11630 () List!23693)

(assert (=> b!2118707 (= condMapEmpty!11630 (= (arr!3671 (_values!2682 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23693)) mapDefault!11630)))))

(declare-fun mapIsEmpty!11631 () Bool)

(assert (=> mapIsEmpty!11631 mapRes!11632))

(declare-fun b!2118708 () Bool)

(declare-fun res!918565 () Bool)

(assert (=> b!2118708 (=> (not res!918565) (not e!1348779))))

(assert (=> b!2118708 (= res!918565 (= (totalInput!2880 cacheFurthestNullable!130) totalInput!886))))

(declare-fun mapIsEmpty!11632 () Bool)

(assert (=> mapIsEmpty!11632 mapRes!11630))

(assert (=> b!2118709 (= e!1348782 (and e!1348789 tp!647305))))

(declare-fun b!2118710 () Bool)

(declare-fun e!1348792 () Bool)

(assert (=> b!2118710 (= e!1348778 e!1348792)))

(declare-fun b!2118711 () Bool)

(assert (=> b!2118711 (= e!1348792 e!1348785)))

(declare-fun b!2118712 () Bool)

(declare-fun lt!794423 () Int)

(declare-fun lt!794424 () Int)

(assert (=> b!2118712 (= e!1348779 (or (< lt!794423 0) (> lt!794423 lt!794424)))))

(declare-fun lt!794420 () Bool)

(declare-fun nullableZipper!53 ((InoxSet Context!2434)) Bool)

(assert (=> b!2118712 (= lt!794420 (nullableZipper!53 z!3883))))

(declare-fun size!18443 (BalanceConc!15334) Int)

(assert (=> b!2118712 (= lt!794423 (- lt!794424 (size!18443 input!5507)))))

(assert (=> b!2118712 (= lt!794424 (size!18443 totalInput!886))))

(assert (=> b!2118713 (= e!1348777 (and e!1348800 tp!647296))))

(declare-fun tp!647285 () Bool)

(declare-fun tp!647290 () Bool)

(declare-fun array_inv!2636 (array!8279) Bool)

(assert (=> b!2118714 (= e!1348784 (and tp!647292 tp!647290 tp!647285 (array_inv!2633 (_keys!2701 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))) (array_inv!2636 (_values!2684 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))) e!1348793))))

(declare-fun b!2118715 () Bool)

(declare-fun tp!647302 () Bool)

(assert (=> b!2118715 (= e!1348787 tp!647302)))

(declare-fun b!2118716 () Bool)

(assert (=> b!2118716 (= e!1348786 e!1348794)))

(assert (= (and start!206846 res!918567) b!2118697))

(assert (= (and b!2118697 res!918566) b!2118700))

(assert (= (and b!2118700 res!918568) b!2118690))

(assert (= (and b!2118690 res!918564) b!2118708))

(assert (= (and b!2118708 res!918565) b!2118712))

(assert (= (and b!2118695 condMapEmpty!11631) mapIsEmpty!11632))

(assert (= (and b!2118695 (not condMapEmpty!11631)) mapNonEmpty!11631))

(assert (= b!2118694 b!2118695))

(assert (= b!2118716 b!2118694))

(assert (= b!2118692 b!2118716))

(assert (= (and b!2118704 ((_ is LongMap!2403) (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))) b!2118692))

(assert (= b!2118709 b!2118704))

(assert (= (and b!2118689 ((_ is HashMap!2317) (cache!2698 cacheFurthestNullable!130))) b!2118709))

(assert (= b!2118689 b!2118702))

(assert (= start!206846 b!2118689))

(assert (= (and start!206846 condSetEmpty!14526) setIsEmpty!14526))

(assert (= (and start!206846 (not condSetEmpty!14526)) setNonEmpty!14526))

(assert (= setNonEmpty!14526 b!2118715))

(assert (= start!206846 b!2118698))

(assert (= (and b!2118693 condMapEmpty!11632) mapIsEmpty!11630))

(assert (= (and b!2118693 (not condMapEmpty!11632)) mapNonEmpty!11632))

(assert (= b!2118714 b!2118693))

(assert (= b!2118706 b!2118714))

(assert (= b!2118703 b!2118706))

(assert (= (and b!2118699 ((_ is LongMap!2404) (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))) b!2118703))

(assert (= b!2118701 b!2118699))

(assert (= (and b!2118691 ((_ is HashMap!2318) (cache!2699 cacheDown!1110))) b!2118701))

(assert (= start!206846 b!2118691))

(assert (= (and b!2118707 condMapEmpty!11630) mapIsEmpty!11631))

(assert (= (and b!2118707 (not condMapEmpty!11630)) mapNonEmpty!11630))

(assert (= b!2118696 b!2118707))

(assert (= b!2118711 b!2118696))

(assert (= b!2118710 b!2118711))

(assert (= (and b!2118687 ((_ is LongMap!2402) (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))) b!2118710))

(assert (= b!2118713 b!2118687))

(assert (= (and b!2118688 ((_ is HashMap!2316) (cache!2697 cacheUp!991))) b!2118713))

(assert (= start!206846 b!2118688))

(assert (= start!206846 b!2118705))

(declare-fun m!2573386 () Bool)

(assert (=> b!2118696 m!2573386))

(declare-fun m!2573388 () Bool)

(assert (=> b!2118696 m!2573388))

(declare-fun m!2573390 () Bool)

(assert (=> b!2118702 m!2573390))

(declare-fun m!2573392 () Bool)

(assert (=> mapNonEmpty!11630 m!2573392))

(declare-fun m!2573394 () Bool)

(assert (=> b!2118697 m!2573394))

(declare-fun m!2573396 () Bool)

(assert (=> b!2118694 m!2573396))

(declare-fun m!2573398 () Bool)

(assert (=> b!2118694 m!2573398))

(declare-fun m!2573400 () Bool)

(assert (=> b!2118689 m!2573400))

(declare-fun m!2573402 () Bool)

(assert (=> setNonEmpty!14526 m!2573402))

(declare-fun m!2573404 () Bool)

(assert (=> b!2118714 m!2573404))

(declare-fun m!2573406 () Bool)

(assert (=> b!2118714 m!2573406))

(declare-fun m!2573408 () Bool)

(assert (=> start!206846 m!2573408))

(declare-fun m!2573410 () Bool)

(assert (=> start!206846 m!2573410))

(declare-fun m!2573412 () Bool)

(assert (=> start!206846 m!2573412))

(declare-fun m!2573414 () Bool)

(assert (=> start!206846 m!2573414))

(declare-fun m!2573416 () Bool)

(assert (=> start!206846 m!2573416))

(declare-fun m!2573418 () Bool)

(assert (=> start!206846 m!2573418))

(assert (=> start!206846 m!2573414))

(assert (=> start!206846 m!2573408))

(declare-fun m!2573420 () Bool)

(assert (=> start!206846 m!2573420))

(declare-fun m!2573422 () Bool)

(assert (=> start!206846 m!2573422))

(declare-fun m!2573424 () Bool)

(assert (=> mapNonEmpty!11631 m!2573424))

(declare-fun m!2573426 () Bool)

(assert (=> b!2118700 m!2573426))

(declare-fun m!2573428 () Bool)

(assert (=> b!2118698 m!2573428))

(declare-fun m!2573430 () Bool)

(assert (=> b!2118712 m!2573430))

(declare-fun m!2573432 () Bool)

(assert (=> b!2118712 m!2573432))

(declare-fun m!2573434 () Bool)

(assert (=> b!2118712 m!2573434))

(declare-fun m!2573436 () Bool)

(assert (=> mapNonEmpty!11632 m!2573436))

(declare-fun m!2573438 () Bool)

(assert (=> b!2118690 m!2573438))

(declare-fun m!2573440 () Bool)

(assert (=> b!2118705 m!2573440))

(check-sat (not b!2118695) (not b_next!62125) (not b_next!62131) b_and!171009 (not b!2118690) (not setNonEmpty!14526) (not b!2118696) (not b!2118694) (not b!2118697) (not b_next!62127) (not b!2118702) (not b!2118700) (not b!2118715) b_and!171003 b_and!171011 (not mapNonEmpty!11630) b_and!171005 (not b_next!62135) b_and!171007 (not b!2118707) (not start!206846) (not b!2118705) (not b!2118698) (not b!2118689) (not mapNonEmpty!11631) (not mapNonEmpty!11632) (not b_next!62129) (not b_next!62133) (not b!2118712) (not b!2118714) (not b!2118693) b_and!171001)
(check-sat (not b_next!62125) b_and!171005 (not b_next!62131) b_and!171009 (not b_next!62129) (not b_next!62133) b_and!171001 (not b_next!62127) b_and!171003 b_and!171011 (not b_next!62135) b_and!171007)
(get-model)

(declare-fun d!643091 () Bool)

(assert (=> d!643091 (= (array_inv!2633 (_keys!2701 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))) (bvsge (size!18439 (_keys!2701 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2118714 d!643091))

(declare-fun d!643093 () Bool)

(assert (=> d!643093 (= (array_inv!2636 (_values!2684 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))) (bvsge (size!18442 (_values!2684 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2118714 d!643093))

(declare-fun d!643095 () Bool)

(declare-fun c!339602 () Bool)

(assert (=> d!643095 (= c!339602 ((_ is Node!7786) (c!339599 input!5507)))))

(declare-fun e!1348807 () Bool)

(assert (=> d!643095 (= (inv!31193 (c!339599 input!5507)) e!1348807)))

(declare-fun b!2118723 () Bool)

(declare-fun inv!31198 (Conc!7786) Bool)

(assert (=> b!2118723 (= e!1348807 (inv!31198 (c!339599 input!5507)))))

(declare-fun b!2118724 () Bool)

(declare-fun e!1348808 () Bool)

(assert (=> b!2118724 (= e!1348807 e!1348808)))

(declare-fun res!918571 () Bool)

(assert (=> b!2118724 (= res!918571 (not ((_ is Leaf!11377) (c!339599 input!5507))))))

(assert (=> b!2118724 (=> res!918571 e!1348808)))

(declare-fun b!2118725 () Bool)

(declare-fun inv!31199 (Conc!7786) Bool)

(assert (=> b!2118725 (= e!1348808 (inv!31199 (c!339599 input!5507)))))

(assert (= (and d!643095 c!339602) b!2118723))

(assert (= (and d!643095 (not c!339602)) b!2118724))

(assert (= (and b!2118724 (not res!918571)) b!2118725))

(declare-fun m!2573442 () Bool)

(assert (=> b!2118723 m!2573442))

(declare-fun m!2573444 () Bool)

(assert (=> b!2118725 m!2573444))

(assert (=> b!2118698 d!643095))

(declare-fun d!643097 () Bool)

(declare-fun validCacheMapUp!240 (MutableMap!2316) Bool)

(assert (=> d!643097 (= (valid!1892 cacheUp!991) (validCacheMapUp!240 (cache!2697 cacheUp!991)))))

(declare-fun bs!442092 () Bool)

(assert (= bs!442092 d!643097))

(declare-fun m!2573446 () Bool)

(assert (=> bs!442092 m!2573446))

(assert (=> b!2118697 d!643097))

(declare-fun d!643099 () Bool)

(declare-fun lambda!78407 () Int)

(declare-fun exists!687 ((InoxSet Context!2434) Int) Bool)

(assert (=> d!643099 (= (nullableZipper!53 z!3883) (exists!687 z!3883 lambda!78407))))

(declare-fun bs!442093 () Bool)

(assert (= bs!442093 d!643099))

(declare-fun m!2573448 () Bool)

(assert (=> bs!442093 m!2573448))

(assert (=> b!2118712 d!643099))

(declare-fun d!643101 () Bool)

(declare-fun lt!794427 () Int)

(declare-fun size!18444 (List!23695) Int)

(assert (=> d!643101 (= lt!794427 (size!18444 (list!9511 input!5507)))))

(declare-fun size!18445 (Conc!7786) Int)

(assert (=> d!643101 (= lt!794427 (size!18445 (c!339599 input!5507)))))

(assert (=> d!643101 (= (size!18443 input!5507) lt!794427)))

(declare-fun bs!442094 () Bool)

(assert (= bs!442094 d!643101))

(assert (=> bs!442094 m!2573414))

(assert (=> bs!442094 m!2573414))

(declare-fun m!2573450 () Bool)

(assert (=> bs!442094 m!2573450))

(declare-fun m!2573452 () Bool)

(assert (=> bs!442094 m!2573452))

(assert (=> b!2118712 d!643101))

(declare-fun d!643103 () Bool)

(declare-fun lt!794428 () Int)

(assert (=> d!643103 (= lt!794428 (size!18444 (list!9511 totalInput!886)))))

(assert (=> d!643103 (= lt!794428 (size!18445 (c!339599 totalInput!886)))))

(assert (=> d!643103 (= (size!18443 totalInput!886) lt!794428)))

(declare-fun bs!442095 () Bool)

(assert (= bs!442095 d!643103))

(assert (=> bs!442095 m!2573408))

(assert (=> bs!442095 m!2573408))

(declare-fun m!2573454 () Bool)

(assert (=> bs!442095 m!2573454))

(declare-fun m!2573456 () Bool)

(assert (=> bs!442095 m!2573456))

(assert (=> b!2118712 d!643103))

(declare-fun d!643105 () Bool)

(declare-fun c!339605 () Bool)

(assert (=> d!643105 (= c!339605 ((_ is Node!7786) (c!339599 totalInput!886)))))

(declare-fun e!1348809 () Bool)

(assert (=> d!643105 (= (inv!31193 (c!339599 totalInput!886)) e!1348809)))

(declare-fun b!2118726 () Bool)

(assert (=> b!2118726 (= e!1348809 (inv!31198 (c!339599 totalInput!886)))))

(declare-fun b!2118727 () Bool)

(declare-fun e!1348810 () Bool)

(assert (=> b!2118727 (= e!1348809 e!1348810)))

(declare-fun res!918572 () Bool)

(assert (=> b!2118727 (= res!918572 (not ((_ is Leaf!11377) (c!339599 totalInput!886))))))

(assert (=> b!2118727 (=> res!918572 e!1348810)))

(declare-fun b!2118728 () Bool)

(assert (=> b!2118728 (= e!1348810 (inv!31199 (c!339599 totalInput!886)))))

(assert (= (and d!643105 c!339605) b!2118726))

(assert (= (and d!643105 (not c!339605)) b!2118727))

(assert (= (and b!2118727 (not res!918572)) b!2118728))

(declare-fun m!2573458 () Bool)

(assert (=> b!2118726 m!2573458))

(declare-fun m!2573460 () Bool)

(assert (=> b!2118728 m!2573460))

(assert (=> b!2118705 d!643105))

(declare-fun d!643107 () Bool)

(declare-fun lambda!78410 () Int)

(declare-fun forall!4851 (List!23692 Int) Bool)

(assert (=> d!643107 (= (inv!31192 setElem!14526) (forall!4851 (exprs!1717 setElem!14526) lambda!78410))))

(declare-fun bs!442096 () Bool)

(assert (= bs!442096 d!643107))

(declare-fun m!2573462 () Bool)

(assert (=> bs!442096 m!2573462))

(assert (=> setNonEmpty!14526 d!643107))

(declare-fun d!643109 () Bool)

(declare-fun validCacheMapFurthestNullable!90 (MutableMap!2317 BalanceConc!15334) Bool)

(assert (=> d!643109 (= (valid!1891 cacheFurthestNullable!130) (validCacheMapFurthestNullable!90 (cache!2698 cacheFurthestNullable!130) (totalInput!2880 cacheFurthestNullable!130)))))

(declare-fun bs!442097 () Bool)

(assert (= bs!442097 d!643109))

(declare-fun m!2573464 () Bool)

(assert (=> bs!442097 m!2573464))

(assert (=> b!2118690 d!643109))

(declare-fun d!643111 () Bool)

(declare-fun isBalanced!2444 (Conc!7786) Bool)

(assert (=> d!643111 (= (inv!31194 (totalInput!2880 cacheFurthestNullable!130)) (isBalanced!2444 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))))

(declare-fun bs!442098 () Bool)

(assert (= bs!442098 d!643111))

(declare-fun m!2573466 () Bool)

(assert (=> bs!442098 m!2573466))

(assert (=> b!2118689 d!643111))

(declare-fun d!643113 () Bool)

(declare-fun validCacheMapDown!238 (MutableMap!2318) Bool)

(assert (=> d!643113 (= (valid!1893 cacheDown!1110) (validCacheMapDown!238 (cache!2699 cacheDown!1110)))))

(declare-fun bs!442099 () Bool)

(assert (= bs!442099 d!643113))

(declare-fun m!2573468 () Bool)

(assert (=> bs!442099 m!2573468))

(assert (=> b!2118700 d!643113))

(declare-fun d!643115 () Bool)

(declare-fun c!339606 () Bool)

(assert (=> d!643115 (= c!339606 ((_ is Node!7786) (c!339599 (totalInput!2880 cacheFurthestNullable!130))))))

(declare-fun e!1348811 () Bool)

(assert (=> d!643115 (= (inv!31193 (c!339599 (totalInput!2880 cacheFurthestNullable!130))) e!1348811)))

(declare-fun b!2118729 () Bool)

(assert (=> b!2118729 (= e!1348811 (inv!31198 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))))

(declare-fun b!2118730 () Bool)

(declare-fun e!1348812 () Bool)

(assert (=> b!2118730 (= e!1348811 e!1348812)))

(declare-fun res!918573 () Bool)

(assert (=> b!2118730 (= res!918573 (not ((_ is Leaf!11377) (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))

(assert (=> b!2118730 (=> res!918573 e!1348812)))

(declare-fun b!2118731 () Bool)

(assert (=> b!2118731 (= e!1348812 (inv!31199 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))))

(assert (= (and d!643115 c!339606) b!2118729))

(assert (= (and d!643115 (not c!339606)) b!2118730))

(assert (= (and b!2118730 (not res!918573)) b!2118731))

(declare-fun m!2573470 () Bool)

(assert (=> b!2118729 m!2573470))

(declare-fun m!2573472 () Bool)

(assert (=> b!2118731 m!2573472))

(assert (=> b!2118702 d!643115))

(declare-fun d!643117 () Bool)

(declare-fun list!9512 (Conc!7786) List!23695)

(assert (=> d!643117 (= (list!9511 input!5507) (list!9512 (c!339599 input!5507)))))

(declare-fun bs!442100 () Bool)

(assert (= bs!442100 d!643117))

(declare-fun m!2573474 () Bool)

(assert (=> bs!442100 m!2573474))

(assert (=> start!206846 d!643117))

(declare-fun d!643119 () Bool)

(assert (=> d!643119 (= (inv!31194 totalInput!886) (isBalanced!2444 (c!339599 totalInput!886)))))

(declare-fun bs!442101 () Bool)

(assert (= bs!442101 d!643119))

(declare-fun m!2573476 () Bool)

(assert (=> bs!442101 m!2573476))

(assert (=> start!206846 d!643119))

(declare-fun d!643121 () Bool)

(assert (=> d!643121 (= (inv!31194 input!5507) (isBalanced!2444 (c!339599 input!5507)))))

(declare-fun bs!442102 () Bool)

(assert (= bs!442102 d!643121))

(declare-fun m!2573478 () Bool)

(assert (=> bs!442102 m!2573478))

(assert (=> start!206846 d!643121))

(declare-fun d!643123 () Bool)

(assert (=> d!643123 (= (list!9511 totalInput!886) (list!9512 (c!339599 totalInput!886)))))

(declare-fun bs!442103 () Bool)

(assert (= bs!442103 d!643123))

(declare-fun m!2573480 () Bool)

(assert (=> bs!442103 m!2573480))

(assert (=> start!206846 d!643123))

(declare-fun d!643125 () Bool)

(declare-fun res!918576 () Bool)

(declare-fun e!1348815 () Bool)

(assert (=> d!643125 (=> (not res!918576) (not e!1348815))))

(assert (=> d!643125 (= res!918576 ((_ is HashMap!2316) (cache!2697 cacheUp!991)))))

(assert (=> d!643125 (= (inv!31197 cacheUp!991) e!1348815)))

(declare-fun b!2118734 () Bool)

(assert (=> b!2118734 (= e!1348815 (validCacheMapUp!240 (cache!2697 cacheUp!991)))))

(assert (= (and d!643125 res!918576) b!2118734))

(assert (=> b!2118734 m!2573446))

(assert (=> start!206846 d!643125))

(declare-fun d!643127 () Bool)

(declare-fun res!918579 () Bool)

(declare-fun e!1348818 () Bool)

(assert (=> d!643127 (=> (not res!918579) (not e!1348818))))

(assert (=> d!643127 (= res!918579 ((_ is HashMap!2318) (cache!2699 cacheDown!1110)))))

(assert (=> d!643127 (= (inv!31196 cacheDown!1110) e!1348818)))

(declare-fun b!2118737 () Bool)

(assert (=> b!2118737 (= e!1348818 (validCacheMapDown!238 (cache!2699 cacheDown!1110)))))

(assert (= (and d!643127 res!918579) b!2118737))

(assert (=> b!2118737 m!2573468))

(assert (=> start!206846 d!643127))

(declare-fun d!643129 () Bool)

(declare-fun res!918582 () Bool)

(declare-fun e!1348821 () Bool)

(assert (=> d!643129 (=> (not res!918582) (not e!1348821))))

(assert (=> d!643129 (= res!918582 ((_ is HashMap!2317) (cache!2698 cacheFurthestNullable!130)))))

(assert (=> d!643129 (= (inv!31195 cacheFurthestNullable!130) e!1348821)))

(declare-fun b!2118740 () Bool)

(assert (=> b!2118740 (= e!1348821 (validCacheMapFurthestNullable!90 (cache!2698 cacheFurthestNullable!130) (totalInput!2880 cacheFurthestNullable!130)))))

(assert (= (and d!643129 res!918582) b!2118740))

(assert (=> b!2118740 m!2573464))

(assert (=> start!206846 d!643129))

(declare-fun d!643131 () Bool)

(declare-fun e!1348824 () Bool)

(assert (=> d!643131 e!1348824))

(declare-fun res!918585 () Bool)

(assert (=> d!643131 (=> res!918585 e!1348824)))

(declare-fun lt!794431 () Bool)

(assert (=> d!643131 (= res!918585 (not lt!794431))))

(declare-fun drop!1179 (List!23695 Int) List!23695)

(assert (=> d!643131 (= lt!794431 (= (list!9511 input!5507) (drop!1179 (list!9511 totalInput!886) (- (size!18444 (list!9511 totalInput!886)) (size!18444 (list!9511 input!5507))))))))

(assert (=> d!643131 (= (isSuffix!607 (list!9511 input!5507) (list!9511 totalInput!886)) lt!794431)))

(declare-fun b!2118743 () Bool)

(assert (=> b!2118743 (= e!1348824 (>= (size!18444 (list!9511 totalInput!886)) (size!18444 (list!9511 input!5507))))))

(assert (= (and d!643131 (not res!918585)) b!2118743))

(assert (=> d!643131 m!2573408))

(assert (=> d!643131 m!2573454))

(assert (=> d!643131 m!2573414))

(assert (=> d!643131 m!2573450))

(assert (=> d!643131 m!2573408))

(declare-fun m!2573482 () Bool)

(assert (=> d!643131 m!2573482))

(assert (=> b!2118743 m!2573408))

(assert (=> b!2118743 m!2573454))

(assert (=> b!2118743 m!2573414))

(assert (=> b!2118743 m!2573450))

(assert (=> start!206846 d!643131))

(declare-fun d!643133 () Bool)

(assert (=> d!643133 (= (array_inv!2633 (_keys!2699 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))) (bvsge (size!18439 (_keys!2699 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2118696 d!643133))

(declare-fun d!643135 () Bool)

(assert (=> d!643135 (= (array_inv!2635 (_values!2682 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))) (bvsge (size!18440 (_values!2682 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2118696 d!643135))

(declare-fun d!643137 () Bool)

(assert (=> d!643137 (= (array_inv!2633 (_keys!2700 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))) (bvsge (size!18439 (_keys!2700 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2118694 d!643137))

(declare-fun d!643139 () Bool)

(assert (=> d!643139 (= (array_inv!2634 (_values!2683 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))) (bvsge (size!18441 (_values!2683 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2118694 d!643139))

(declare-fun b!2118752 () Bool)

(declare-fun e!1348832 () Bool)

(declare-fun tp!647319 () Bool)

(assert (=> b!2118752 (= e!1348832 tp!647319)))

(declare-fun e!1348831 () Bool)

(declare-fun setElem!14529 () Context!2434)

(declare-fun setNonEmpty!14529 () Bool)

(declare-fun tp!647320 () Bool)

(declare-fun setRes!14529 () Bool)

(assert (=> setNonEmpty!14529 (= setRes!14529 (and tp!647320 (inv!31192 setElem!14529) e!1348831))))

(declare-fun setRest!14529 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14529 (= (_2!13465 (h!29013 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14529 true) setRest!14529))))

(declare-fun tp!647318 () Bool)

(declare-fun tp_is_empty!9481 () Bool)

(declare-fun tp!647322 () Bool)

(declare-fun b!2118753 () Bool)

(declare-fun e!1348833 () Bool)

(assert (=> b!2118753 (= e!1348833 (and tp!647322 (inv!31192 (_2!13464 (_1!13465 (h!29013 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))))) e!1348832 tp_is_empty!9481 setRes!14529 tp!647318))))

(declare-fun condSetEmpty!14529 () Bool)

(assert (=> b!2118753 (= condSetEmpty!14529 (= (_2!13465 (h!29013 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2118754 () Bool)

(declare-fun tp!647321 () Bool)

(assert (=> b!2118754 (= e!1348831 tp!647321)))

(declare-fun setIsEmpty!14529 () Bool)

(assert (=> setIsEmpty!14529 setRes!14529))

(assert (=> b!2118714 (= tp!647290 e!1348833)))

(assert (= b!2118753 b!2118752))

(assert (= (and b!2118753 condSetEmpty!14529) setIsEmpty!14529))

(assert (= (and b!2118753 (not condSetEmpty!14529)) setNonEmpty!14529))

(assert (= setNonEmpty!14529 b!2118754))

(assert (= (and b!2118714 ((_ is Cons!23612) (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))) b!2118753))

(declare-fun m!2573484 () Bool)

(assert (=> setNonEmpty!14529 m!2573484))

(declare-fun m!2573486 () Bool)

(assert (=> b!2118753 m!2573486))

(declare-fun b!2118755 () Bool)

(declare-fun e!1348835 () Bool)

(declare-fun tp!647324 () Bool)

(assert (=> b!2118755 (= e!1348835 tp!647324)))

(declare-fun setNonEmpty!14530 () Bool)

(declare-fun e!1348834 () Bool)

(declare-fun tp!647325 () Bool)

(declare-fun setElem!14530 () Context!2434)

(declare-fun setRes!14530 () Bool)

(assert (=> setNonEmpty!14530 (= setRes!14530 (and tp!647325 (inv!31192 setElem!14530) e!1348834))))

(declare-fun setRest!14530 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14530 (= (_2!13465 (h!29013 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14530 true) setRest!14530))))

(declare-fun tp!647327 () Bool)

(declare-fun tp!647323 () Bool)

(declare-fun b!2118756 () Bool)

(declare-fun e!1348836 () Bool)

(assert (=> b!2118756 (= e!1348836 (and tp!647327 (inv!31192 (_2!13464 (_1!13465 (h!29013 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))))) e!1348835 tp_is_empty!9481 setRes!14530 tp!647323))))

(declare-fun condSetEmpty!14530 () Bool)

(assert (=> b!2118756 (= condSetEmpty!14530 (= (_2!13465 (h!29013 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2118757 () Bool)

(declare-fun tp!647326 () Bool)

(assert (=> b!2118757 (= e!1348834 tp!647326)))

(declare-fun setIsEmpty!14530 () Bool)

(assert (=> setIsEmpty!14530 setRes!14530))

(assert (=> b!2118714 (= tp!647285 e!1348836)))

(assert (= b!2118756 b!2118755))

(assert (= (and b!2118756 condSetEmpty!14530) setIsEmpty!14530))

(assert (= (and b!2118756 (not condSetEmpty!14530)) setNonEmpty!14530))

(assert (= setNonEmpty!14530 b!2118757))

(assert (= (and b!2118714 ((_ is Cons!23612) (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))) b!2118756))

(declare-fun m!2573488 () Bool)

(assert (=> setNonEmpty!14530 m!2573488))

(declare-fun m!2573490 () Bool)

(assert (=> b!2118756 m!2573490))

(declare-fun b!2118766 () Bool)

(declare-fun tp!647334 () Bool)

(declare-fun tp!647336 () Bool)

(declare-fun e!1348841 () Bool)

(assert (=> b!2118766 (= e!1348841 (and (inv!31193 (left!18284 (c!339599 input!5507))) tp!647336 (inv!31193 (right!18614 (c!339599 input!5507))) tp!647334))))

(declare-fun b!2118768 () Bool)

(declare-fun e!1348842 () Bool)

(declare-fun tp!647335 () Bool)

(assert (=> b!2118768 (= e!1348842 tp!647335)))

(declare-fun b!2118767 () Bool)

(declare-fun inv!31200 (IArray!15577) Bool)

(assert (=> b!2118767 (= e!1348841 (and (inv!31200 (xs!10728 (c!339599 input!5507))) e!1348842))))

(assert (=> b!2118698 (= tp!647284 (and (inv!31193 (c!339599 input!5507)) e!1348841))))

(assert (= (and b!2118698 ((_ is Node!7786) (c!339599 input!5507))) b!2118766))

(assert (= b!2118767 b!2118768))

(assert (= (and b!2118698 ((_ is Leaf!11377) (c!339599 input!5507))) b!2118767))

(declare-fun m!2573492 () Bool)

(assert (=> b!2118766 m!2573492))

(declare-fun m!2573494 () Bool)

(assert (=> b!2118766 m!2573494))

(declare-fun m!2573496 () Bool)

(assert (=> b!2118767 m!2573496))

(assert (=> b!2118698 m!2573428))

(declare-fun tp!647337 () Bool)

(declare-fun b!2118769 () Bool)

(declare-fun e!1348843 () Bool)

(declare-fun tp!647339 () Bool)

(assert (=> b!2118769 (= e!1348843 (and (inv!31193 (left!18284 (c!339599 totalInput!886))) tp!647339 (inv!31193 (right!18614 (c!339599 totalInput!886))) tp!647337))))

(declare-fun b!2118771 () Bool)

(declare-fun e!1348844 () Bool)

(declare-fun tp!647338 () Bool)

(assert (=> b!2118771 (= e!1348844 tp!647338)))

(declare-fun b!2118770 () Bool)

(assert (=> b!2118770 (= e!1348843 (and (inv!31200 (xs!10728 (c!339599 totalInput!886))) e!1348844))))

(assert (=> b!2118705 (= tp!647298 (and (inv!31193 (c!339599 totalInput!886)) e!1348843))))

(assert (= (and b!2118705 ((_ is Node!7786) (c!339599 totalInput!886))) b!2118769))

(assert (= b!2118770 b!2118771))

(assert (= (and b!2118705 ((_ is Leaf!11377) (c!339599 totalInput!886))) b!2118770))

(declare-fun m!2573498 () Bool)

(assert (=> b!2118769 m!2573498))

(declare-fun m!2573500 () Bool)

(assert (=> b!2118769 m!2573500))

(declare-fun m!2573502 () Bool)

(assert (=> b!2118770 m!2573502))

(assert (=> b!2118705 m!2573440))

(declare-fun condSetEmpty!14533 () Bool)

(assert (=> setNonEmpty!14526 (= condSetEmpty!14533 (= setRest!14526 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14533 () Bool)

(assert (=> setNonEmpty!14526 (= tp!647286 setRes!14533)))

(declare-fun setIsEmpty!14533 () Bool)

(assert (=> setIsEmpty!14533 setRes!14533))

(declare-fun tp!647344 () Bool)

(declare-fun setElem!14533 () Context!2434)

(declare-fun e!1348847 () Bool)

(declare-fun setNonEmpty!14533 () Bool)

(assert (=> setNonEmpty!14533 (= setRes!14533 (and tp!647344 (inv!31192 setElem!14533) e!1348847))))

(declare-fun setRest!14533 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14533 (= setRest!14526 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14533 true) setRest!14533))))

(declare-fun b!2118776 () Bool)

(declare-fun tp!647345 () Bool)

(assert (=> b!2118776 (= e!1348847 tp!647345)))

(assert (= (and setNonEmpty!14526 condSetEmpty!14533) setIsEmpty!14533))

(assert (= (and setNonEmpty!14526 (not condSetEmpty!14533)) setNonEmpty!14533))

(assert (= setNonEmpty!14533 b!2118776))

(declare-fun m!2573504 () Bool)

(assert (=> setNonEmpty!14533 m!2573504))

(declare-fun b!2118785 () Bool)

(declare-fun setRes!14536 () Bool)

(declare-fun tp!647357 () Bool)

(declare-fun e!1348856 () Bool)

(declare-fun e!1348855 () Bool)

(assert (=> b!2118785 (= e!1348856 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 mapDefault!11630)))) e!1348855 tp_is_empty!9481 setRes!14536 tp!647357))))

(declare-fun condSetEmpty!14536 () Bool)

(assert (=> b!2118785 (= condSetEmpty!14536 (= (_2!13461 (h!29010 mapDefault!11630)) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14536 () Bool)

(assert (=> setIsEmpty!14536 setRes!14536))

(declare-fun b!2118786 () Bool)

(declare-fun tp!647356 () Bool)

(assert (=> b!2118786 (= e!1348855 tp!647356)))

(declare-fun b!2118787 () Bool)

(declare-fun e!1348854 () Bool)

(declare-fun tp!647355 () Bool)

(assert (=> b!2118787 (= e!1348854 tp!647355)))

(assert (=> b!2118707 (= tp!647294 e!1348856)))

(declare-fun setNonEmpty!14536 () Bool)

(declare-fun setElem!14536 () Context!2434)

(declare-fun tp!647354 () Bool)

(assert (=> setNonEmpty!14536 (= setRes!14536 (and tp!647354 (inv!31192 setElem!14536) e!1348854))))

(declare-fun setRest!14536 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14536 (= (_2!13461 (h!29010 mapDefault!11630)) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14536 true) setRest!14536))))

(assert (= b!2118785 b!2118786))

(assert (= (and b!2118785 condSetEmpty!14536) setIsEmpty!14536))

(assert (= (and b!2118785 (not condSetEmpty!14536)) setNonEmpty!14536))

(assert (= setNonEmpty!14536 b!2118787))

(assert (= (and b!2118707 ((_ is Cons!23609) mapDefault!11630)) b!2118785))

(declare-fun m!2573506 () Bool)

(assert (=> b!2118785 m!2573506))

(declare-fun m!2573508 () Bool)

(assert (=> setNonEmpty!14536 m!2573508))

(declare-fun setIsEmpty!14541 () Bool)

(declare-fun setRes!14541 () Bool)

(assert (=> setIsEmpty!14541 setRes!14541))

(declare-fun tp!647381 () Bool)

(declare-fun e!1348872 () Bool)

(declare-fun tp!647382 () Bool)

(declare-fun mapValue!11635 () List!23696)

(declare-fun b!2118802 () Bool)

(declare-fun e!1348870 () Bool)

(assert (=> b!2118802 (= e!1348872 (and tp!647381 (inv!31192 (_2!13464 (_1!13465 (h!29013 mapValue!11635)))) e!1348870 tp_is_empty!9481 setRes!14541 tp!647382))))

(declare-fun condSetEmpty!14542 () Bool)

(assert (=> b!2118802 (= condSetEmpty!14542 (= (_2!13465 (h!29013 mapValue!11635)) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2118803 () Bool)

(declare-fun tp!647383 () Bool)

(assert (=> b!2118803 (= e!1348870 tp!647383)))

(declare-fun mapIsEmpty!11635 () Bool)

(declare-fun mapRes!11635 () Bool)

(assert (=> mapIsEmpty!11635 mapRes!11635))

(declare-fun b!2118804 () Bool)

(declare-fun e!1348871 () Bool)

(declare-fun tp!647385 () Bool)

(assert (=> b!2118804 (= e!1348871 tp!647385)))

(declare-fun b!2118805 () Bool)

(declare-fun e!1348869 () Bool)

(declare-fun tp!647384 () Bool)

(assert (=> b!2118805 (= e!1348869 tp!647384)))

(declare-fun setNonEmpty!14541 () Bool)

(declare-fun tp!647390 () Bool)

(declare-fun setRes!14542 () Bool)

(declare-fun setElem!14541 () Context!2434)

(assert (=> setNonEmpty!14541 (= setRes!14542 (and tp!647390 (inv!31192 setElem!14541) e!1348869))))

(declare-fun mapDefault!11635 () List!23696)

(declare-fun setRest!14541 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14541 (= (_2!13465 (h!29013 mapDefault!11635)) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14541 true) setRest!14541))))

(declare-fun b!2118806 () Bool)

(declare-fun e!1348874 () Bool)

(declare-fun tp!647387 () Bool)

(assert (=> b!2118806 (= e!1348874 tp!647387)))

(declare-fun condMapEmpty!11635 () Bool)

(assert (=> mapNonEmpty!11632 (= condMapEmpty!11635 (= mapRest!11631 ((as const (Array (_ BitVec 32) List!23696)) mapDefault!11635)))))

(declare-fun e!1348873 () Bool)

(assert (=> mapNonEmpty!11632 (= tp!647282 (and e!1348873 mapRes!11635))))

(declare-fun setElem!14542 () Context!2434)

(declare-fun tp!647388 () Bool)

(declare-fun setNonEmpty!14542 () Bool)

(assert (=> setNonEmpty!14542 (= setRes!14541 (and tp!647388 (inv!31192 setElem!14542) e!1348874))))

(declare-fun setRest!14542 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14542 (= (_2!13465 (h!29013 mapValue!11635)) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14542 true) setRest!14542))))

(declare-fun mapNonEmpty!11635 () Bool)

(declare-fun tp!647380 () Bool)

(assert (=> mapNonEmpty!11635 (= mapRes!11635 (and tp!647380 e!1348872))))

(declare-fun mapRest!11635 () (Array (_ BitVec 32) List!23696))

(declare-fun mapKey!11635 () (_ BitVec 32))

(assert (=> mapNonEmpty!11635 (= mapRest!11631 (store mapRest!11635 mapKey!11635 mapValue!11635))))

(declare-fun tp!647386 () Bool)

(declare-fun tp!647389 () Bool)

(declare-fun b!2118807 () Bool)

(assert (=> b!2118807 (= e!1348873 (and tp!647386 (inv!31192 (_2!13464 (_1!13465 (h!29013 mapDefault!11635)))) e!1348871 tp_is_empty!9481 setRes!14542 tp!647389))))

(declare-fun condSetEmpty!14541 () Bool)

(assert (=> b!2118807 (= condSetEmpty!14541 (= (_2!13465 (h!29013 mapDefault!11635)) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14542 () Bool)

(assert (=> setIsEmpty!14542 setRes!14542))

(assert (= (and mapNonEmpty!11632 condMapEmpty!11635) mapIsEmpty!11635))

(assert (= (and mapNonEmpty!11632 (not condMapEmpty!11635)) mapNonEmpty!11635))

(assert (= b!2118802 b!2118803))

(assert (= (and b!2118802 condSetEmpty!14542) setIsEmpty!14541))

(assert (= (and b!2118802 (not condSetEmpty!14542)) setNonEmpty!14542))

(assert (= setNonEmpty!14542 b!2118806))

(assert (= (and mapNonEmpty!11635 ((_ is Cons!23612) mapValue!11635)) b!2118802))

(assert (= b!2118807 b!2118804))

(assert (= (and b!2118807 condSetEmpty!14541) setIsEmpty!14542))

(assert (= (and b!2118807 (not condSetEmpty!14541)) setNonEmpty!14541))

(assert (= setNonEmpty!14541 b!2118805))

(assert (= (and mapNonEmpty!11632 ((_ is Cons!23612) mapDefault!11635)) b!2118807))

(declare-fun m!2573510 () Bool)

(assert (=> setNonEmpty!14541 m!2573510))

(declare-fun m!2573512 () Bool)

(assert (=> b!2118802 m!2573512))

(declare-fun m!2573514 () Bool)

(assert (=> b!2118807 m!2573514))

(declare-fun m!2573516 () Bool)

(assert (=> setNonEmpty!14542 m!2573516))

(declare-fun m!2573518 () Bool)

(assert (=> mapNonEmpty!11635 m!2573518))

(declare-fun b!2118808 () Bool)

(declare-fun e!1348876 () Bool)

(declare-fun tp!647392 () Bool)

(assert (=> b!2118808 (= e!1348876 tp!647392)))

(declare-fun setNonEmpty!14543 () Bool)

(declare-fun setRes!14543 () Bool)

(declare-fun e!1348875 () Bool)

(declare-fun tp!647393 () Bool)

(declare-fun setElem!14543 () Context!2434)

(assert (=> setNonEmpty!14543 (= setRes!14543 (and tp!647393 (inv!31192 setElem!14543) e!1348875))))

(declare-fun setRest!14543 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14543 (= (_2!13465 (h!29013 mapValue!11631)) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14543 true) setRest!14543))))

(declare-fun tp!647391 () Bool)

(declare-fun tp!647395 () Bool)

(declare-fun b!2118809 () Bool)

(declare-fun e!1348877 () Bool)

(assert (=> b!2118809 (= e!1348877 (and tp!647395 (inv!31192 (_2!13464 (_1!13465 (h!29013 mapValue!11631)))) e!1348876 tp_is_empty!9481 setRes!14543 tp!647391))))

(declare-fun condSetEmpty!14543 () Bool)

(assert (=> b!2118809 (= condSetEmpty!14543 (= (_2!13465 (h!29013 mapValue!11631)) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2118810 () Bool)

(declare-fun tp!647394 () Bool)

(assert (=> b!2118810 (= e!1348875 tp!647394)))

(declare-fun setIsEmpty!14543 () Bool)

(assert (=> setIsEmpty!14543 setRes!14543))

(assert (=> mapNonEmpty!11632 (= tp!647295 e!1348877)))

(assert (= b!2118809 b!2118808))

(assert (= (and b!2118809 condSetEmpty!14543) setIsEmpty!14543))

(assert (= (and b!2118809 (not condSetEmpty!14543)) setNonEmpty!14543))

(assert (= setNonEmpty!14543 b!2118810))

(assert (= (and mapNonEmpty!11632 ((_ is Cons!23612) mapValue!11631)) b!2118809))

(declare-fun m!2573520 () Bool)

(assert (=> setNonEmpty!14543 m!2573520))

(declare-fun m!2573522 () Bool)

(assert (=> b!2118809 m!2573522))

(declare-fun b!2118815 () Bool)

(declare-fun e!1348880 () Bool)

(declare-fun tp!647400 () Bool)

(declare-fun tp!647401 () Bool)

(assert (=> b!2118815 (= e!1348880 (and tp!647400 tp!647401))))

(assert (=> b!2118715 (= tp!647302 e!1348880)))

(assert (= (and b!2118715 ((_ is Cons!23608) (exprs!1717 setElem!14526))) b!2118815))

(declare-fun b!2118816 () Bool)

(declare-fun e!1348882 () Bool)

(declare-fun tp!647403 () Bool)

(assert (=> b!2118816 (= e!1348882 tp!647403)))

(declare-fun setRes!14544 () Bool)

(declare-fun tp!647404 () Bool)

(declare-fun e!1348881 () Bool)

(declare-fun setNonEmpty!14544 () Bool)

(declare-fun setElem!14544 () Context!2434)

(assert (=> setNonEmpty!14544 (= setRes!14544 (and tp!647404 (inv!31192 setElem!14544) e!1348881))))

(declare-fun setRest!14544 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14544 (= (_2!13465 (h!29013 mapDefault!11632)) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14544 true) setRest!14544))))

(declare-fun b!2118817 () Bool)

(declare-fun tp!647402 () Bool)

(declare-fun tp!647406 () Bool)

(declare-fun e!1348883 () Bool)

(assert (=> b!2118817 (= e!1348883 (and tp!647406 (inv!31192 (_2!13464 (_1!13465 (h!29013 mapDefault!11632)))) e!1348882 tp_is_empty!9481 setRes!14544 tp!647402))))

(declare-fun condSetEmpty!14544 () Bool)

(assert (=> b!2118817 (= condSetEmpty!14544 (= (_2!13465 (h!29013 mapDefault!11632)) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2118818 () Bool)

(declare-fun tp!647405 () Bool)

(assert (=> b!2118818 (= e!1348881 tp!647405)))

(declare-fun setIsEmpty!14544 () Bool)

(assert (=> setIsEmpty!14544 setRes!14544))

(assert (=> b!2118693 (= tp!647288 e!1348883)))

(assert (= b!2118817 b!2118816))

(assert (= (and b!2118817 condSetEmpty!14544) setIsEmpty!14544))

(assert (= (and b!2118817 (not condSetEmpty!14544)) setNonEmpty!14544))

(assert (= setNonEmpty!14544 b!2118818))

(assert (= (and b!2118693 ((_ is Cons!23612) mapDefault!11632)) b!2118817))

(declare-fun m!2573524 () Bool)

(assert (=> setNonEmpty!14544 m!2573524))

(declare-fun m!2573526 () Bool)

(assert (=> b!2118817 m!2573526))

(declare-fun tp!647409 () Bool)

(declare-fun b!2118819 () Bool)

(declare-fun e!1348884 () Bool)

(declare-fun tp!647407 () Bool)

(assert (=> b!2118819 (= e!1348884 (and (inv!31193 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) tp!647409 (inv!31193 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) tp!647407))))

(declare-fun b!2118821 () Bool)

(declare-fun e!1348885 () Bool)

(declare-fun tp!647408 () Bool)

(assert (=> b!2118821 (= e!1348885 tp!647408)))

(declare-fun b!2118820 () Bool)

(assert (=> b!2118820 (= e!1348884 (and (inv!31200 (xs!10728 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) e!1348885))))

(assert (=> b!2118702 (= tp!647297 (and (inv!31193 (c!339599 (totalInput!2880 cacheFurthestNullable!130))) e!1348884))))

(assert (= (and b!2118702 ((_ is Node!7786) (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) b!2118819))

(assert (= b!2118820 b!2118821))

(assert (= (and b!2118702 ((_ is Leaf!11377) (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) b!2118820))

(declare-fun m!2573528 () Bool)

(assert (=> b!2118819 m!2573528))

(declare-fun m!2573530 () Bool)

(assert (=> b!2118819 m!2573530))

(declare-fun m!2573532 () Bool)

(assert (=> b!2118820 m!2573532))

(assert (=> b!2118702 m!2573390))

(declare-fun b!2118832 () Bool)

(declare-fun e!1348894 () Bool)

(declare-fun setRes!14549 () Bool)

(declare-fun tp!647424 () Bool)

(assert (=> b!2118832 (= e!1348894 (and setRes!14549 tp!647424))))

(declare-fun condSetEmpty!14549 () Bool)

(declare-fun mapValue!11638 () List!23694)

(assert (=> b!2118832 (= condSetEmpty!14549 (= (_1!13462 (_1!13463 (h!29011 mapValue!11638))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2118833 () Bool)

(declare-fun e!1348895 () Bool)

(declare-fun tp!647426 () Bool)

(assert (=> b!2118833 (= e!1348895 tp!647426)))

(declare-fun b!2118834 () Bool)

(declare-fun e!1348896 () Bool)

(declare-fun tp!647430 () Bool)

(assert (=> b!2118834 (= e!1348896 tp!647430)))

(declare-fun setElem!14550 () Context!2434)

(declare-fun setNonEmpty!14549 () Bool)

(declare-fun tp!647425 () Bool)

(declare-fun setRes!14550 () Bool)

(assert (=> setNonEmpty!14549 (= setRes!14550 (and tp!647425 (inv!31192 setElem!14550) e!1348895))))

(declare-fun mapDefault!11638 () List!23694)

(declare-fun setRest!14550 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14549 (= (_1!13462 (_1!13463 (h!29011 mapDefault!11638))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14550 true) setRest!14550))))

(declare-fun b!2118835 () Bool)

(declare-fun e!1348897 () Bool)

(declare-fun tp!647427 () Bool)

(assert (=> b!2118835 (= e!1348897 (and setRes!14550 tp!647427))))

(declare-fun condSetEmpty!14550 () Bool)

(assert (=> b!2118835 (= condSetEmpty!14550 (= (_1!13462 (_1!13463 (h!29011 mapDefault!11638))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14550 () Bool)

(assert (=> setIsEmpty!14550 setRes!14550))

(declare-fun mapIsEmpty!11638 () Bool)

(declare-fun mapRes!11638 () Bool)

(assert (=> mapIsEmpty!11638 mapRes!11638))

(declare-fun mapNonEmpty!11638 () Bool)

(declare-fun tp!647429 () Bool)

(assert (=> mapNonEmpty!11638 (= mapRes!11638 (and tp!647429 e!1348894))))

(declare-fun mapKey!11638 () (_ BitVec 32))

(declare-fun mapRest!11638 () (Array (_ BitVec 32) List!23694))

(assert (=> mapNonEmpty!11638 (= mapRest!11632 (store mapRest!11638 mapKey!11638 mapValue!11638))))

(declare-fun setNonEmpty!14550 () Bool)

(declare-fun setElem!14549 () Context!2434)

(declare-fun tp!647428 () Bool)

(assert (=> setNonEmpty!14550 (= setRes!14549 (and tp!647428 (inv!31192 setElem!14549) e!1348896))))

(declare-fun setRest!14549 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14550 (= (_1!13462 (_1!13463 (h!29011 mapValue!11638))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14549 true) setRest!14549))))

(declare-fun condMapEmpty!11638 () Bool)

(assert (=> mapNonEmpty!11631 (= condMapEmpty!11638 (= mapRest!11632 ((as const (Array (_ BitVec 32) List!23694)) mapDefault!11638)))))

(assert (=> mapNonEmpty!11631 (= tp!647307 (and e!1348897 mapRes!11638))))

(declare-fun setIsEmpty!14549 () Bool)

(assert (=> setIsEmpty!14549 setRes!14549))

(assert (= (and mapNonEmpty!11631 condMapEmpty!11638) mapIsEmpty!11638))

(assert (= (and mapNonEmpty!11631 (not condMapEmpty!11638)) mapNonEmpty!11638))

(assert (= (and b!2118832 condSetEmpty!14549) setIsEmpty!14549))

(assert (= (and b!2118832 (not condSetEmpty!14549)) setNonEmpty!14550))

(assert (= setNonEmpty!14550 b!2118834))

(assert (= (and mapNonEmpty!11638 ((_ is Cons!23610) mapValue!11638)) b!2118832))

(assert (= (and b!2118835 condSetEmpty!14550) setIsEmpty!14550))

(assert (= (and b!2118835 (not condSetEmpty!14550)) setNonEmpty!14549))

(assert (= setNonEmpty!14549 b!2118833))

(assert (= (and mapNonEmpty!11631 ((_ is Cons!23610) mapDefault!11638)) b!2118835))

(declare-fun m!2573534 () Bool)

(assert (=> setNonEmpty!14549 m!2573534))

(declare-fun m!2573536 () Bool)

(assert (=> mapNonEmpty!11638 m!2573536))

(declare-fun m!2573538 () Bool)

(assert (=> setNonEmpty!14550 m!2573538))

(declare-fun b!2118843 () Bool)

(declare-fun e!1348902 () Bool)

(declare-fun tp!647438 () Bool)

(assert (=> b!2118843 (= e!1348902 tp!647438)))

(declare-fun e!1348903 () Bool)

(assert (=> mapNonEmpty!11631 (= tp!647299 e!1348903)))

(declare-fun setIsEmpty!14553 () Bool)

(declare-fun setRes!14553 () Bool)

(assert (=> setIsEmpty!14553 setRes!14553))

(declare-fun b!2118842 () Bool)

(declare-fun tp!647437 () Bool)

(assert (=> b!2118842 (= e!1348903 (and setRes!14553 tp!647437))))

(declare-fun condSetEmpty!14553 () Bool)

(assert (=> b!2118842 (= condSetEmpty!14553 (= (_1!13462 (_1!13463 (h!29011 mapValue!11632))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setElem!14553 () Context!2434)

(declare-fun tp!647439 () Bool)

(declare-fun setNonEmpty!14553 () Bool)

(assert (=> setNonEmpty!14553 (= setRes!14553 (and tp!647439 (inv!31192 setElem!14553) e!1348902))))

(declare-fun setRest!14553 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14553 (= (_1!13462 (_1!13463 (h!29011 mapValue!11632))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14553 true) setRest!14553))))

(assert (= (and b!2118842 condSetEmpty!14553) setIsEmpty!14553))

(assert (= (and b!2118842 (not condSetEmpty!14553)) setNonEmpty!14553))

(assert (= setNonEmpty!14553 b!2118843))

(assert (= (and mapNonEmpty!11631 ((_ is Cons!23610) mapValue!11632)) b!2118842))

(declare-fun m!2573540 () Bool)

(assert (=> setNonEmpty!14553 m!2573540))

(declare-fun b!2118858 () Bool)

(declare-fun e!1348916 () Bool)

(declare-fun tp!647463 () Bool)

(assert (=> b!2118858 (= e!1348916 tp!647463)))

(declare-fun b!2118859 () Bool)

(declare-fun e!1348919 () Bool)

(declare-fun tp!647466 () Bool)

(assert (=> b!2118859 (= e!1348919 tp!647466)))

(declare-fun setNonEmpty!14558 () Bool)

(declare-fun setRes!14558 () Bool)

(declare-fun tp!647462 () Bool)

(declare-fun e!1348920 () Bool)

(declare-fun setElem!14559 () Context!2434)

(assert (=> setNonEmpty!14558 (= setRes!14558 (and tp!647462 (inv!31192 setElem!14559) e!1348920))))

(declare-fun mapValue!11641 () List!23693)

(declare-fun setRest!14559 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14558 (= (_2!13461 (h!29010 mapValue!11641)) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14559 true) setRest!14559))))

(declare-fun tp!647460 () Bool)

(declare-fun mapDefault!11641 () List!23693)

(declare-fun e!1348918 () Bool)

(declare-fun b!2118860 () Bool)

(declare-fun e!1348917 () Bool)

(declare-fun setRes!14559 () Bool)

(assert (=> b!2118860 (= e!1348917 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 mapDefault!11641)))) e!1348918 tp_is_empty!9481 setRes!14559 tp!647460))))

(declare-fun condSetEmpty!14558 () Bool)

(assert (=> b!2118860 (= condSetEmpty!14558 (= (_2!13461 (h!29010 mapDefault!11641)) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun tp!647458 () Bool)

(declare-fun b!2118861 () Bool)

(declare-fun e!1348921 () Bool)

(assert (=> b!2118861 (= e!1348921 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 mapValue!11641)))) e!1348916 tp_is_empty!9481 setRes!14558 tp!647458))))

(declare-fun condSetEmpty!14559 () Bool)

(assert (=> b!2118861 (= condSetEmpty!14559 (= (_2!13461 (h!29010 mapValue!11641)) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14558 () Bool)

(assert (=> setIsEmpty!14558 setRes!14559))

(declare-fun condMapEmpty!11641 () Bool)

(assert (=> mapNonEmpty!11630 (= condMapEmpty!11641 (= mapRest!11630 ((as const (Array (_ BitVec 32) List!23693)) mapDefault!11641)))))

(declare-fun mapRes!11641 () Bool)

(assert (=> mapNonEmpty!11630 (= tp!647287 (and e!1348917 mapRes!11641))))

(declare-fun setIsEmpty!14559 () Bool)

(assert (=> setIsEmpty!14559 setRes!14558))

(declare-fun mapIsEmpty!11641 () Bool)

(assert (=> mapIsEmpty!11641 mapRes!11641))

(declare-fun b!2118862 () Bool)

(declare-fun tp!647465 () Bool)

(assert (=> b!2118862 (= e!1348918 tp!647465)))

(declare-fun b!2118863 () Bool)

(declare-fun tp!647464 () Bool)

(assert (=> b!2118863 (= e!1348920 tp!647464)))

(declare-fun mapNonEmpty!11641 () Bool)

(declare-fun tp!647459 () Bool)

(assert (=> mapNonEmpty!11641 (= mapRes!11641 (and tp!647459 e!1348921))))

(declare-fun mapKey!11641 () (_ BitVec 32))

(declare-fun mapRest!11641 () (Array (_ BitVec 32) List!23693))

(assert (=> mapNonEmpty!11641 (= mapRest!11630 (store mapRest!11641 mapKey!11641 mapValue!11641))))

(declare-fun tp!647461 () Bool)

(declare-fun setElem!14558 () Context!2434)

(declare-fun setNonEmpty!14559 () Bool)

(assert (=> setNonEmpty!14559 (= setRes!14559 (and tp!647461 (inv!31192 setElem!14558) e!1348919))))

(declare-fun setRest!14558 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14559 (= (_2!13461 (h!29010 mapDefault!11641)) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14558 true) setRest!14558))))

(assert (= (and mapNonEmpty!11630 condMapEmpty!11641) mapIsEmpty!11641))

(assert (= (and mapNonEmpty!11630 (not condMapEmpty!11641)) mapNonEmpty!11641))

(assert (= b!2118861 b!2118858))

(assert (= (and b!2118861 condSetEmpty!14559) setIsEmpty!14559))

(assert (= (and b!2118861 (not condSetEmpty!14559)) setNonEmpty!14558))

(assert (= setNonEmpty!14558 b!2118863))

(assert (= (and mapNonEmpty!11641 ((_ is Cons!23609) mapValue!11641)) b!2118861))

(assert (= b!2118860 b!2118862))

(assert (= (and b!2118860 condSetEmpty!14558) setIsEmpty!14558))

(assert (= (and b!2118860 (not condSetEmpty!14558)) setNonEmpty!14559))

(assert (= setNonEmpty!14559 b!2118859))

(assert (= (and mapNonEmpty!11630 ((_ is Cons!23609) mapDefault!11641)) b!2118860))

(declare-fun m!2573542 () Bool)

(assert (=> setNonEmpty!14559 m!2573542))

(declare-fun m!2573544 () Bool)

(assert (=> b!2118860 m!2573544))

(declare-fun m!2573546 () Bool)

(assert (=> mapNonEmpty!11641 m!2573546))

(declare-fun m!2573548 () Bool)

(assert (=> b!2118861 m!2573548))

(declare-fun m!2573550 () Bool)

(assert (=> setNonEmpty!14558 m!2573550))

(declare-fun tp!647470 () Bool)

(declare-fun e!1348924 () Bool)

(declare-fun setRes!14560 () Bool)

(declare-fun e!1348923 () Bool)

(declare-fun b!2118864 () Bool)

(assert (=> b!2118864 (= e!1348924 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 mapValue!11630)))) e!1348923 tp_is_empty!9481 setRes!14560 tp!647470))))

(declare-fun condSetEmpty!14560 () Bool)

(assert (=> b!2118864 (= condSetEmpty!14560 (= (_2!13461 (h!29010 mapValue!11630)) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14560 () Bool)

(assert (=> setIsEmpty!14560 setRes!14560))

(declare-fun b!2118865 () Bool)

(declare-fun tp!647469 () Bool)

(assert (=> b!2118865 (= e!1348923 tp!647469)))

(declare-fun b!2118866 () Bool)

(declare-fun e!1348922 () Bool)

(declare-fun tp!647468 () Bool)

(assert (=> b!2118866 (= e!1348922 tp!647468)))

(assert (=> mapNonEmpty!11630 (= tp!647304 e!1348924)))

(declare-fun tp!647467 () Bool)

(declare-fun setNonEmpty!14560 () Bool)

(declare-fun setElem!14560 () Context!2434)

(assert (=> setNonEmpty!14560 (= setRes!14560 (and tp!647467 (inv!31192 setElem!14560) e!1348922))))

(declare-fun setRest!14560 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14560 (= (_2!13461 (h!29010 mapValue!11630)) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14560 true) setRest!14560))))

(assert (= b!2118864 b!2118865))

(assert (= (and b!2118864 condSetEmpty!14560) setIsEmpty!14560))

(assert (= (and b!2118864 (not condSetEmpty!14560)) setNonEmpty!14560))

(assert (= setNonEmpty!14560 b!2118866))

(assert (= (and mapNonEmpty!11630 ((_ is Cons!23609) mapValue!11630)) b!2118864))

(declare-fun m!2573552 () Bool)

(assert (=> b!2118864 m!2573552))

(declare-fun m!2573554 () Bool)

(assert (=> setNonEmpty!14560 m!2573554))

(declare-fun e!1348927 () Bool)

(declare-fun setRes!14561 () Bool)

(declare-fun b!2118867 () Bool)

(declare-fun e!1348926 () Bool)

(declare-fun tp!647474 () Bool)

(assert (=> b!2118867 (= e!1348927 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 (zeroValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))))) e!1348926 tp_is_empty!9481 setRes!14561 tp!647474))))

(declare-fun condSetEmpty!14561 () Bool)

(assert (=> b!2118867 (= condSetEmpty!14561 (= (_2!13461 (h!29010 (zeroValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14561 () Bool)

(assert (=> setIsEmpty!14561 setRes!14561))

(declare-fun b!2118868 () Bool)

(declare-fun tp!647473 () Bool)

(assert (=> b!2118868 (= e!1348926 tp!647473)))

(declare-fun b!2118869 () Bool)

(declare-fun e!1348925 () Bool)

(declare-fun tp!647472 () Bool)

(assert (=> b!2118869 (= e!1348925 tp!647472)))

(assert (=> b!2118696 (= tp!647289 e!1348927)))

(declare-fun setElem!14561 () Context!2434)

(declare-fun tp!647471 () Bool)

(declare-fun setNonEmpty!14561 () Bool)

(assert (=> setNonEmpty!14561 (= setRes!14561 (and tp!647471 (inv!31192 setElem!14561) e!1348925))))

(declare-fun setRest!14561 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14561 (= (_2!13461 (h!29010 (zeroValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14561 true) setRest!14561))))

(assert (= b!2118867 b!2118868))

(assert (= (and b!2118867 condSetEmpty!14561) setIsEmpty!14561))

(assert (= (and b!2118867 (not condSetEmpty!14561)) setNonEmpty!14561))

(assert (= setNonEmpty!14561 b!2118869))

(assert (= (and b!2118696 ((_ is Cons!23609) (zeroValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))) b!2118867))

(declare-fun m!2573556 () Bool)

(assert (=> b!2118867 m!2573556))

(declare-fun m!2573558 () Bool)

(assert (=> setNonEmpty!14561 m!2573558))

(declare-fun b!2118870 () Bool)

(declare-fun setRes!14562 () Bool)

(declare-fun tp!647478 () Bool)

(declare-fun e!1348930 () Bool)

(declare-fun e!1348929 () Bool)

(assert (=> b!2118870 (= e!1348930 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 (minValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))))) e!1348929 tp_is_empty!9481 setRes!14562 tp!647478))))

(declare-fun condSetEmpty!14562 () Bool)

(assert (=> b!2118870 (= condSetEmpty!14562 (= (_2!13461 (h!29010 (minValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14562 () Bool)

(assert (=> setIsEmpty!14562 setRes!14562))

(declare-fun b!2118871 () Bool)

(declare-fun tp!647477 () Bool)

(assert (=> b!2118871 (= e!1348929 tp!647477)))

(declare-fun b!2118872 () Bool)

(declare-fun e!1348928 () Bool)

(declare-fun tp!647476 () Bool)

(assert (=> b!2118872 (= e!1348928 tp!647476)))

(assert (=> b!2118696 (= tp!647283 e!1348930)))

(declare-fun tp!647475 () Bool)

(declare-fun setElem!14562 () Context!2434)

(declare-fun setNonEmpty!14562 () Bool)

(assert (=> setNonEmpty!14562 (= setRes!14562 (and tp!647475 (inv!31192 setElem!14562) e!1348928))))

(declare-fun setRest!14562 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14562 (= (_2!13461 (h!29010 (minValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14562 true) setRest!14562))))

(assert (= b!2118870 b!2118871))

(assert (= (and b!2118870 condSetEmpty!14562) setIsEmpty!14562))

(assert (= (and b!2118870 (not condSetEmpty!14562)) setNonEmpty!14562))

(assert (= setNonEmpty!14562 b!2118872))

(assert (= (and b!2118696 ((_ is Cons!23609) (minValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))) b!2118870))

(declare-fun m!2573560 () Bool)

(assert (=> b!2118870 m!2573560))

(declare-fun m!2573562 () Bool)

(assert (=> setNonEmpty!14562 m!2573562))

(declare-fun b!2118874 () Bool)

(declare-fun e!1348931 () Bool)

(declare-fun tp!647480 () Bool)

(assert (=> b!2118874 (= e!1348931 tp!647480)))

(declare-fun e!1348932 () Bool)

(assert (=> b!2118695 (= tp!647306 e!1348932)))

(declare-fun setIsEmpty!14563 () Bool)

(declare-fun setRes!14563 () Bool)

(assert (=> setIsEmpty!14563 setRes!14563))

(declare-fun b!2118873 () Bool)

(declare-fun tp!647479 () Bool)

(assert (=> b!2118873 (= e!1348932 (and setRes!14563 tp!647479))))

(declare-fun condSetEmpty!14563 () Bool)

(assert (=> b!2118873 (= condSetEmpty!14563 (= (_1!13462 (_1!13463 (h!29011 mapDefault!11631))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setNonEmpty!14563 () Bool)

(declare-fun setElem!14563 () Context!2434)

(declare-fun tp!647481 () Bool)

(assert (=> setNonEmpty!14563 (= setRes!14563 (and tp!647481 (inv!31192 setElem!14563) e!1348931))))

(declare-fun setRest!14563 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14563 (= (_1!13462 (_1!13463 (h!29011 mapDefault!11631))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14563 true) setRest!14563))))

(assert (= (and b!2118873 condSetEmpty!14563) setIsEmpty!14563))

(assert (= (and b!2118873 (not condSetEmpty!14563)) setNonEmpty!14563))

(assert (= setNonEmpty!14563 b!2118874))

(assert (= (and b!2118695 ((_ is Cons!23610) mapDefault!11631)) b!2118873))

(declare-fun m!2573564 () Bool)

(assert (=> setNonEmpty!14563 m!2573564))

(declare-fun b!2118876 () Bool)

(declare-fun e!1348933 () Bool)

(declare-fun tp!647483 () Bool)

(assert (=> b!2118876 (= e!1348933 tp!647483)))

(declare-fun e!1348934 () Bool)

(assert (=> b!2118694 (= tp!647301 e!1348934)))

(declare-fun setIsEmpty!14564 () Bool)

(declare-fun setRes!14564 () Bool)

(assert (=> setIsEmpty!14564 setRes!14564))

(declare-fun b!2118875 () Bool)

(declare-fun tp!647482 () Bool)

(assert (=> b!2118875 (= e!1348934 (and setRes!14564 tp!647482))))

(declare-fun condSetEmpty!14564 () Bool)

(assert (=> b!2118875 (= condSetEmpty!14564 (= (_1!13462 (_1!13463 (h!29011 (zeroValue!2661 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setElem!14564 () Context!2434)

(declare-fun tp!647484 () Bool)

(declare-fun setNonEmpty!14564 () Bool)

(assert (=> setNonEmpty!14564 (= setRes!14564 (and tp!647484 (inv!31192 setElem!14564) e!1348933))))

(declare-fun setRest!14564 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14564 (= (_1!13462 (_1!13463 (h!29011 (zeroValue!2661 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14564 true) setRest!14564))))

(assert (= (and b!2118875 condSetEmpty!14564) setIsEmpty!14564))

(assert (= (and b!2118875 (not condSetEmpty!14564)) setNonEmpty!14564))

(assert (= setNonEmpty!14564 b!2118876))

(assert (= (and b!2118694 ((_ is Cons!23610) (zeroValue!2661 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130)))))))) b!2118875))

(declare-fun m!2573566 () Bool)

(assert (=> setNonEmpty!14564 m!2573566))

(declare-fun b!2118878 () Bool)

(declare-fun e!1348935 () Bool)

(declare-fun tp!647486 () Bool)

(assert (=> b!2118878 (= e!1348935 tp!647486)))

(declare-fun e!1348936 () Bool)

(assert (=> b!2118694 (= tp!647300 e!1348936)))

(declare-fun setIsEmpty!14565 () Bool)

(declare-fun setRes!14565 () Bool)

(assert (=> setIsEmpty!14565 setRes!14565))

(declare-fun b!2118877 () Bool)

(declare-fun tp!647485 () Bool)

(assert (=> b!2118877 (= e!1348936 (and setRes!14565 tp!647485))))

(declare-fun condSetEmpty!14565 () Bool)

(assert (=> b!2118877 (= condSetEmpty!14565 (= (_1!13462 (_1!13463 (h!29011 (minValue!2661 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setNonEmpty!14565 () Bool)

(declare-fun setElem!14565 () Context!2434)

(declare-fun tp!647487 () Bool)

(assert (=> setNonEmpty!14565 (= setRes!14565 (and tp!647487 (inv!31192 setElem!14565) e!1348935))))

(declare-fun setRest!14565 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14565 (= (_1!13462 (_1!13463 (h!29011 (minValue!2661 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14565 true) setRest!14565))))

(assert (= (and b!2118877 condSetEmpty!14565) setIsEmpty!14565))

(assert (= (and b!2118877 (not condSetEmpty!14565)) setNonEmpty!14565))

(assert (= setNonEmpty!14565 b!2118878))

(assert (= (and b!2118694 ((_ is Cons!23610) (minValue!2661 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130)))))))) b!2118877))

(declare-fun m!2573568 () Bool)

(assert (=> setNonEmpty!14565 m!2573568))

(check-sat (not b!2118729) (not b!2118858) (not d!643111) (not d!643109) (not b!2118787) (not b!2118786) (not b!2118867) (not b!2118860) (not setNonEmpty!14536) (not b!2118876) (not b!2118728) (not mapNonEmpty!11638) (not d!643113) (not b!2118803) (not b!2118731) b_and!171003 (not d!643117) b_and!171011 (not b!2118771) (not b!2118752) (not b!2118861) (not b!2118756) (not setNonEmpty!14530) tp_is_empty!9481 (not setNonEmpty!14558) (not b_next!62125) (not b!2118864) (not b!2118819) (not b!2118807) b_and!171005 (not b!2118874) (not b!2118859) (not b_next!62135) b_and!171007 (not setNonEmpty!14562) (not b!2118743) (not b!2118815) (not b!2118757) (not b!2118821) (not b!2118833) (not setNonEmpty!14553) (not b!2118809) (not b!2118698) (not b!2118766) (not setNonEmpty!14549) (not b!2118705) (not b!2118869) (not b_next!62131) (not b!2118842) (not setNonEmpty!14565) (not b!2118872) b_and!171009 (not b!2118808) (not b!2118776) (not b!2118737) (not b!2118740) (not b_next!62129) (not mapNonEmpty!11641) (not setNonEmpty!14561) (not b!2118866) (not d!643123) (not b!2118877) (not b!2118785) (not setNonEmpty!14550) (not b!2118734) (not b!2118726) (not b!2118767) (not b!2118754) (not mapNonEmpty!11635) (not setNonEmpty!14559) (not d!643101) (not d!643131) (not b!2118834) (not d!643119) (not b!2118820) (not b!2118818) (not b!2118753) (not d!643099) (not b!2118817) (not b_next!62133) (not b!2118873) (not b!2118868) (not d!643121) (not setNonEmpty!14542) b_and!171001 (not setNonEmpty!14563) (not b!2118810) (not d!643107) (not b!2118802) (not b!2118832) (not b!2118816) (not b!2118865) (not setNonEmpty!14544) (not setNonEmpty!14541) (not b!2118805) (not setNonEmpty!14564) (not b!2118843) (not b!2118725) (not b!2118723) (not b!2118770) (not setNonEmpty!14529) (not b!2118862) (not b!2118755) (not setNonEmpty!14533) (not b!2118875) (not b!2118835) (not d!643097) (not b!2118769) (not b!2118863) (not setNonEmpty!14543) (not setNonEmpty!14560) (not b!2118870) (not b!2118871) (not b!2118806) (not b_next!62127) (not b!2118804) (not d!643103) (not b!2118878) (not b!2118768) (not b!2118702))
(check-sat (not b_next!62125) b_and!171005 (not b_next!62131) b_and!171009 (not b_next!62129) (not b_next!62133) b_and!171001 (not b_next!62127) b_and!171003 b_and!171011 (not b_next!62135) b_and!171007)
(get-model)

(declare-fun bs!442104 () Bool)

(declare-fun d!643141 () Bool)

(assert (= bs!442104 (and d!643141 d!643107)))

(declare-fun lambda!78411 () Int)

(assert (=> bs!442104 (= lambda!78411 lambda!78410)))

(assert (=> d!643141 (= (inv!31192 setElem!14536) (forall!4851 (exprs!1717 setElem!14536) lambda!78411))))

(declare-fun bs!442105 () Bool)

(assert (= bs!442105 d!643141))

(declare-fun m!2573570 () Bool)

(assert (=> bs!442105 m!2573570))

(assert (=> setNonEmpty!14536 d!643141))

(declare-fun bs!442106 () Bool)

(declare-fun d!643143 () Bool)

(assert (= bs!442106 (and d!643143 d!643107)))

(declare-fun lambda!78412 () Int)

(assert (=> bs!442106 (= lambda!78412 lambda!78410)))

(declare-fun bs!442107 () Bool)

(assert (= bs!442107 (and d!643143 d!643141)))

(assert (=> bs!442107 (= lambda!78412 lambda!78411)))

(assert (=> d!643143 (= (inv!31192 setElem!14553) (forall!4851 (exprs!1717 setElem!14553) lambda!78412))))

(declare-fun bs!442108 () Bool)

(assert (= bs!442108 d!643143))

(declare-fun m!2573572 () Bool)

(assert (=> bs!442108 m!2573572))

(assert (=> setNonEmpty!14553 d!643143))

(declare-fun bm!128667 () Bool)

(declare-fun call!128672 () Int)

(assert (=> bm!128667 (= call!128672 (size!18444 (list!9511 totalInput!886)))))

(declare-fun b!2118897 () Bool)

(declare-fun e!1348949 () Int)

(assert (=> b!2118897 (= e!1348949 (- call!128672 (- (size!18444 (list!9511 totalInput!886)) (size!18444 (list!9511 input!5507)))))))

(declare-fun b!2118898 () Bool)

(declare-fun e!1348947 () List!23695)

(assert (=> b!2118898 (= e!1348947 (list!9511 totalInput!886))))

(declare-fun b!2118899 () Bool)

(assert (=> b!2118899 (= e!1348949 0)))

(declare-fun d!643145 () Bool)

(declare-fun e!1348948 () Bool)

(assert (=> d!643145 e!1348948))

(declare-fun res!918588 () Bool)

(assert (=> d!643145 (=> (not res!918588) (not e!1348948))))

(declare-fun lt!794434 () List!23695)

(declare-fun content!3389 (List!23695) (InoxSet C!11440))

(assert (=> d!643145 (= res!918588 (= ((_ map implies) (content!3389 lt!794434) (content!3389 (list!9511 totalInput!886))) ((as const (InoxSet C!11440)) true)))))

(declare-fun e!1348950 () List!23695)

(assert (=> d!643145 (= lt!794434 e!1348950)))

(declare-fun c!339618 () Bool)

(assert (=> d!643145 (= c!339618 ((_ is Nil!23611) (list!9511 totalInput!886)))))

(assert (=> d!643145 (= (drop!1179 (list!9511 totalInput!886) (- (size!18444 (list!9511 totalInput!886)) (size!18444 (list!9511 input!5507)))) lt!794434)))

(declare-fun b!2118900 () Bool)

(assert (=> b!2118900 (= e!1348950 Nil!23611)))

(declare-fun b!2118901 () Bool)

(declare-fun e!1348951 () Int)

(assert (=> b!2118901 (= e!1348951 call!128672)))

(declare-fun b!2118902 () Bool)

(assert (=> b!2118902 (= e!1348951 e!1348949)))

(declare-fun c!339615 () Bool)

(assert (=> b!2118902 (= c!339615 (>= (- (size!18444 (list!9511 totalInput!886)) (size!18444 (list!9511 input!5507))) call!128672))))

(declare-fun b!2118903 () Bool)

(assert (=> b!2118903 (= e!1348947 (drop!1179 (t!196208 (list!9511 totalInput!886)) (- (- (size!18444 (list!9511 totalInput!886)) (size!18444 (list!9511 input!5507))) 1)))))

(declare-fun b!2118904 () Bool)

(assert (=> b!2118904 (= e!1348948 (= (size!18444 lt!794434) e!1348951))))

(declare-fun c!339616 () Bool)

(assert (=> b!2118904 (= c!339616 (<= (- (size!18444 (list!9511 totalInput!886)) (size!18444 (list!9511 input!5507))) 0))))

(declare-fun b!2118905 () Bool)

(assert (=> b!2118905 (= e!1348950 e!1348947)))

(declare-fun c!339617 () Bool)

(assert (=> b!2118905 (= c!339617 (<= (- (size!18444 (list!9511 totalInput!886)) (size!18444 (list!9511 input!5507))) 0))))

(assert (= (and d!643145 c!339618) b!2118900))

(assert (= (and d!643145 (not c!339618)) b!2118905))

(assert (= (and b!2118905 c!339617) b!2118898))

(assert (= (and b!2118905 (not c!339617)) b!2118903))

(assert (= (and d!643145 res!918588) b!2118904))

(assert (= (and b!2118904 c!339616) b!2118901))

(assert (= (and b!2118904 (not c!339616)) b!2118902))

(assert (= (and b!2118902 c!339615) b!2118899))

(assert (= (and b!2118902 (not c!339615)) b!2118897))

(assert (= (or b!2118901 b!2118902 b!2118897) bm!128667))

(assert (=> bm!128667 m!2573408))

(assert (=> bm!128667 m!2573454))

(declare-fun m!2573574 () Bool)

(assert (=> d!643145 m!2573574))

(assert (=> d!643145 m!2573408))

(declare-fun m!2573576 () Bool)

(assert (=> d!643145 m!2573576))

(declare-fun m!2573578 () Bool)

(assert (=> b!2118903 m!2573578))

(declare-fun m!2573580 () Bool)

(assert (=> b!2118904 m!2573580))

(assert (=> d!643131 d!643145))

(declare-fun d!643147 () Bool)

(declare-fun lt!794437 () Int)

(assert (=> d!643147 (>= lt!794437 0)))

(declare-fun e!1348954 () Int)

(assert (=> d!643147 (= lt!794437 e!1348954)))

(declare-fun c!339621 () Bool)

(assert (=> d!643147 (= c!339621 ((_ is Nil!23611) (list!9511 totalInput!886)))))

(assert (=> d!643147 (= (size!18444 (list!9511 totalInput!886)) lt!794437)))

(declare-fun b!2118910 () Bool)

(assert (=> b!2118910 (= e!1348954 0)))

(declare-fun b!2118911 () Bool)

(assert (=> b!2118911 (= e!1348954 (+ 1 (size!18444 (t!196208 (list!9511 totalInput!886)))))))

(assert (= (and d!643147 c!339621) b!2118910))

(assert (= (and d!643147 (not c!339621)) b!2118911))

(declare-fun m!2573582 () Bool)

(assert (=> b!2118911 m!2573582))

(assert (=> d!643131 d!643147))

(declare-fun d!643149 () Bool)

(declare-fun lt!794438 () Int)

(assert (=> d!643149 (>= lt!794438 0)))

(declare-fun e!1348955 () Int)

(assert (=> d!643149 (= lt!794438 e!1348955)))

(declare-fun c!339622 () Bool)

(assert (=> d!643149 (= c!339622 ((_ is Nil!23611) (list!9511 input!5507)))))

(assert (=> d!643149 (= (size!18444 (list!9511 input!5507)) lt!794438)))

(declare-fun b!2118912 () Bool)

(assert (=> b!2118912 (= e!1348955 0)))

(declare-fun b!2118913 () Bool)

(assert (=> b!2118913 (= e!1348955 (+ 1 (size!18444 (t!196208 (list!9511 input!5507)))))))

(assert (= (and d!643149 c!339622) b!2118912))

(assert (= (and d!643149 (not c!339622)) b!2118913))

(declare-fun m!2573584 () Bool)

(assert (=> b!2118913 m!2573584))

(assert (=> d!643131 d!643149))

(assert (=> b!2118705 d!643105))

(declare-fun d!643151 () Bool)

(declare-fun lt!794441 () Bool)

(declare-datatypes ((List!23697 0))(
  ( (Nil!23613) (Cons!23613 (h!29014 Context!2434) (t!196213 List!23697)) )
))
(declare-fun exists!688 (List!23697 Int) Bool)

(declare-fun toList!1060 ((InoxSet Context!2434)) List!23697)

(assert (=> d!643151 (= lt!794441 (exists!688 (toList!1060 z!3883) lambda!78407))))

(declare-fun choose!12665 ((InoxSet Context!2434) Int) Bool)

(assert (=> d!643151 (= lt!794441 (choose!12665 z!3883 lambda!78407))))

(assert (=> d!643151 (= (exists!687 z!3883 lambda!78407) lt!794441)))

(declare-fun bs!442109 () Bool)

(assert (= bs!442109 d!643151))

(declare-fun m!2573586 () Bool)

(assert (=> bs!442109 m!2573586))

(assert (=> bs!442109 m!2573586))

(declare-fun m!2573588 () Bool)

(assert (=> bs!442109 m!2573588))

(declare-fun m!2573590 () Bool)

(assert (=> bs!442109 m!2573590))

(assert (=> d!643099 d!643151))

(declare-fun d!643153 () Bool)

(assert (=> d!643153 (= (inv!31200 (xs!10728 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) (<= (size!18444 (innerList!7846 (xs!10728 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) 2147483647))))

(declare-fun bs!442110 () Bool)

(assert (= bs!442110 d!643153))

(declare-fun m!2573592 () Bool)

(assert (=> bs!442110 m!2573592))

(assert (=> b!2118820 d!643153))

(declare-fun bs!442111 () Bool)

(declare-fun d!643155 () Bool)

(assert (= bs!442111 (and d!643155 d!643107)))

(declare-fun lambda!78413 () Int)

(assert (=> bs!442111 (= lambda!78413 lambda!78410)))

(declare-fun bs!442112 () Bool)

(assert (= bs!442112 (and d!643155 d!643141)))

(assert (=> bs!442112 (= lambda!78413 lambda!78411)))

(declare-fun bs!442113 () Bool)

(assert (= bs!442113 (and d!643155 d!643143)))

(assert (=> bs!442113 (= lambda!78413 lambda!78412)))

(assert (=> d!643155 (= (inv!31192 setElem!14529) (forall!4851 (exprs!1717 setElem!14529) lambda!78413))))

(declare-fun bs!442114 () Bool)

(assert (= bs!442114 d!643155))

(declare-fun m!2573594 () Bool)

(assert (=> bs!442114 m!2573594))

(assert (=> setNonEmpty!14529 d!643155))

(declare-fun bs!442115 () Bool)

(declare-fun d!643157 () Bool)

(assert (= bs!442115 (and d!643157 d!643107)))

(declare-fun lambda!78414 () Int)

(assert (=> bs!442115 (= lambda!78414 lambda!78410)))

(declare-fun bs!442116 () Bool)

(assert (= bs!442116 (and d!643157 d!643141)))

(assert (=> bs!442116 (= lambda!78414 lambda!78411)))

(declare-fun bs!442117 () Bool)

(assert (= bs!442117 (and d!643157 d!643143)))

(assert (=> bs!442117 (= lambda!78414 lambda!78412)))

(declare-fun bs!442118 () Bool)

(assert (= bs!442118 (and d!643157 d!643155)))

(assert (=> bs!442118 (= lambda!78414 lambda!78413)))

(assert (=> d!643157 (= (inv!31192 setElem!14530) (forall!4851 (exprs!1717 setElem!14530) lambda!78414))))

(declare-fun bs!442119 () Bool)

(assert (= bs!442119 d!643157))

(declare-fun m!2573596 () Bool)

(assert (=> bs!442119 m!2573596))

(assert (=> setNonEmpty!14530 d!643157))

(declare-fun bs!442120 () Bool)

(declare-fun d!643159 () Bool)

(assert (= bs!442120 (and d!643159 d!643107)))

(declare-fun lambda!78415 () Int)

(assert (=> bs!442120 (= lambda!78415 lambda!78410)))

(declare-fun bs!442121 () Bool)

(assert (= bs!442121 (and d!643159 d!643143)))

(assert (=> bs!442121 (= lambda!78415 lambda!78412)))

(declare-fun bs!442122 () Bool)

(assert (= bs!442122 (and d!643159 d!643141)))

(assert (=> bs!442122 (= lambda!78415 lambda!78411)))

(declare-fun bs!442123 () Bool)

(assert (= bs!442123 (and d!643159 d!643155)))

(assert (=> bs!442123 (= lambda!78415 lambda!78413)))

(declare-fun bs!442124 () Bool)

(assert (= bs!442124 (and d!643159 d!643157)))

(assert (=> bs!442124 (= lambda!78415 lambda!78414)))

(assert (=> d!643159 (= (inv!31192 setElem!14563) (forall!4851 (exprs!1717 setElem!14563) lambda!78415))))

(declare-fun bs!442125 () Bool)

(assert (= bs!442125 d!643159))

(declare-fun m!2573598 () Bool)

(assert (=> bs!442125 m!2573598))

(assert (=> setNonEmpty!14563 d!643159))

(declare-fun b!2118926 () Bool)

(declare-fun e!1348961 () Bool)

(declare-fun isEmpty!14309 (Conc!7786) Bool)

(assert (=> b!2118926 (= e!1348961 (not (isEmpty!14309 (right!18614 (c!339599 totalInput!886)))))))

(declare-fun b!2118927 () Bool)

(declare-fun res!918603 () Bool)

(assert (=> b!2118927 (=> (not res!918603) (not e!1348961))))

(assert (=> b!2118927 (= res!918603 (not (isEmpty!14309 (left!18284 (c!339599 totalInput!886)))))))

(declare-fun b!2118928 () Bool)

(declare-fun res!918606 () Bool)

(assert (=> b!2118928 (=> (not res!918606) (not e!1348961))))

(assert (=> b!2118928 (= res!918606 (isBalanced!2444 (left!18284 (c!339599 totalInput!886))))))

(declare-fun b!2118929 () Bool)

(declare-fun res!918602 () Bool)

(assert (=> b!2118929 (=> (not res!918602) (not e!1348961))))

(assert (=> b!2118929 (= res!918602 (isBalanced!2444 (right!18614 (c!339599 totalInput!886))))))

(declare-fun b!2118930 () Bool)

(declare-fun res!918605 () Bool)

(assert (=> b!2118930 (=> (not res!918605) (not e!1348961))))

(declare-fun height!1231 (Conc!7786) Int)

(assert (=> b!2118930 (= res!918605 (<= (- (height!1231 (left!18284 (c!339599 totalInput!886))) (height!1231 (right!18614 (c!339599 totalInput!886)))) 1))))

(declare-fun b!2118931 () Bool)

(declare-fun e!1348960 () Bool)

(assert (=> b!2118931 (= e!1348960 e!1348961)))

(declare-fun res!918601 () Bool)

(assert (=> b!2118931 (=> (not res!918601) (not e!1348961))))

(assert (=> b!2118931 (= res!918601 (<= (- 1) (- (height!1231 (left!18284 (c!339599 totalInput!886))) (height!1231 (right!18614 (c!339599 totalInput!886))))))))

(declare-fun d!643161 () Bool)

(declare-fun res!918604 () Bool)

(assert (=> d!643161 (=> res!918604 e!1348960)))

(assert (=> d!643161 (= res!918604 (not ((_ is Node!7786) (c!339599 totalInput!886))))))

(assert (=> d!643161 (= (isBalanced!2444 (c!339599 totalInput!886)) e!1348960)))

(assert (= (and d!643161 (not res!918604)) b!2118931))

(assert (= (and b!2118931 res!918601) b!2118930))

(assert (= (and b!2118930 res!918605) b!2118928))

(assert (= (and b!2118928 res!918606) b!2118929))

(assert (= (and b!2118929 res!918602) b!2118927))

(assert (= (and b!2118927 res!918603) b!2118926))

(declare-fun m!2573600 () Bool)

(assert (=> b!2118929 m!2573600))

(declare-fun m!2573602 () Bool)

(assert (=> b!2118930 m!2573602))

(declare-fun m!2573604 () Bool)

(assert (=> b!2118930 m!2573604))

(assert (=> b!2118931 m!2573602))

(assert (=> b!2118931 m!2573604))

(declare-fun m!2573606 () Bool)

(assert (=> b!2118928 m!2573606))

(declare-fun m!2573608 () Bool)

(assert (=> b!2118926 m!2573608))

(declare-fun m!2573610 () Bool)

(assert (=> b!2118927 m!2573610))

(assert (=> d!643119 d!643161))

(declare-fun bs!442126 () Bool)

(declare-fun d!643163 () Bool)

(assert (= bs!442126 (and d!643163 d!643107)))

(declare-fun lambda!78416 () Int)

(assert (=> bs!442126 (= lambda!78416 lambda!78410)))

(declare-fun bs!442127 () Bool)

(assert (= bs!442127 (and d!643163 d!643159)))

(assert (=> bs!442127 (= lambda!78416 lambda!78415)))

(declare-fun bs!442128 () Bool)

(assert (= bs!442128 (and d!643163 d!643143)))

(assert (=> bs!442128 (= lambda!78416 lambda!78412)))

(declare-fun bs!442129 () Bool)

(assert (= bs!442129 (and d!643163 d!643141)))

(assert (=> bs!442129 (= lambda!78416 lambda!78411)))

(declare-fun bs!442130 () Bool)

(assert (= bs!442130 (and d!643163 d!643155)))

(assert (=> bs!442130 (= lambda!78416 lambda!78413)))

(declare-fun bs!442131 () Bool)

(assert (= bs!442131 (and d!643163 d!643157)))

(assert (=> bs!442131 (= lambda!78416 lambda!78414)))

(assert (=> d!643163 (= (inv!31192 (_1!13460 (_1!13461 (h!29010 (zeroValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))))) (forall!4851 (exprs!1717 (_1!13460 (_1!13461 (h!29010 (zeroValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))))) lambda!78416))))

(declare-fun bs!442132 () Bool)

(assert (= bs!442132 d!643163))

(declare-fun m!2573612 () Bool)

(assert (=> bs!442132 m!2573612))

(assert (=> b!2118867 d!643163))

(declare-fun bs!442133 () Bool)

(declare-fun d!643165 () Bool)

(assert (= bs!442133 (and d!643165 d!643107)))

(declare-fun lambda!78417 () Int)

(assert (=> bs!442133 (= lambda!78417 lambda!78410)))

(declare-fun bs!442134 () Bool)

(assert (= bs!442134 (and d!643165 d!643159)))

(assert (=> bs!442134 (= lambda!78417 lambda!78415)))

(declare-fun bs!442135 () Bool)

(assert (= bs!442135 (and d!643165 d!643163)))

(assert (=> bs!442135 (= lambda!78417 lambda!78416)))

(declare-fun bs!442136 () Bool)

(assert (= bs!442136 (and d!643165 d!643143)))

(assert (=> bs!442136 (= lambda!78417 lambda!78412)))

(declare-fun bs!442137 () Bool)

(assert (= bs!442137 (and d!643165 d!643141)))

(assert (=> bs!442137 (= lambda!78417 lambda!78411)))

(declare-fun bs!442138 () Bool)

(assert (= bs!442138 (and d!643165 d!643155)))

(assert (=> bs!442138 (= lambda!78417 lambda!78413)))

(declare-fun bs!442139 () Bool)

(assert (= bs!442139 (and d!643165 d!643157)))

(assert (=> bs!442139 (= lambda!78417 lambda!78414)))

(assert (=> d!643165 (= (inv!31192 setElem!14558) (forall!4851 (exprs!1717 setElem!14558) lambda!78417))))

(declare-fun bs!442140 () Bool)

(assert (= bs!442140 d!643165))

(declare-fun m!2573614 () Bool)

(assert (=> bs!442140 m!2573614))

(assert (=> setNonEmpty!14559 d!643165))

(declare-fun bs!442141 () Bool)

(declare-fun d!643167 () Bool)

(assert (= bs!442141 (and d!643167 d!643107)))

(declare-fun lambda!78418 () Int)

(assert (=> bs!442141 (= lambda!78418 lambda!78410)))

(declare-fun bs!442142 () Bool)

(assert (= bs!442142 (and d!643167 d!643159)))

(assert (=> bs!442142 (= lambda!78418 lambda!78415)))

(declare-fun bs!442143 () Bool)

(assert (= bs!442143 (and d!643167 d!643163)))

(assert (=> bs!442143 (= lambda!78418 lambda!78416)))

(declare-fun bs!442144 () Bool)

(assert (= bs!442144 (and d!643167 d!643143)))

(assert (=> bs!442144 (= lambda!78418 lambda!78412)))

(declare-fun bs!442145 () Bool)

(assert (= bs!442145 (and d!643167 d!643165)))

(assert (=> bs!442145 (= lambda!78418 lambda!78417)))

(declare-fun bs!442146 () Bool)

(assert (= bs!442146 (and d!643167 d!643141)))

(assert (=> bs!442146 (= lambda!78418 lambda!78411)))

(declare-fun bs!442147 () Bool)

(assert (= bs!442147 (and d!643167 d!643155)))

(assert (=> bs!442147 (= lambda!78418 lambda!78413)))

(declare-fun bs!442148 () Bool)

(assert (= bs!442148 (and d!643167 d!643157)))

(assert (=> bs!442148 (= lambda!78418 lambda!78414)))

(assert (=> d!643167 (= (inv!31192 setElem!14533) (forall!4851 (exprs!1717 setElem!14533) lambda!78418))))

(declare-fun bs!442149 () Bool)

(assert (= bs!442149 d!643167))

(declare-fun m!2573616 () Bool)

(assert (=> bs!442149 m!2573616))

(assert (=> setNonEmpty!14533 d!643167))

(declare-fun bs!442150 () Bool)

(declare-fun d!643169 () Bool)

(assert (= bs!442150 (and d!643169 d!643107)))

(declare-fun lambda!78419 () Int)

(assert (=> bs!442150 (= lambda!78419 lambda!78410)))

(declare-fun bs!442151 () Bool)

(assert (= bs!442151 (and d!643169 d!643159)))

(assert (=> bs!442151 (= lambda!78419 lambda!78415)))

(declare-fun bs!442152 () Bool)

(assert (= bs!442152 (and d!643169 d!643167)))

(assert (=> bs!442152 (= lambda!78419 lambda!78418)))

(declare-fun bs!442153 () Bool)

(assert (= bs!442153 (and d!643169 d!643163)))

(assert (=> bs!442153 (= lambda!78419 lambda!78416)))

(declare-fun bs!442154 () Bool)

(assert (= bs!442154 (and d!643169 d!643143)))

(assert (=> bs!442154 (= lambda!78419 lambda!78412)))

(declare-fun bs!442155 () Bool)

(assert (= bs!442155 (and d!643169 d!643165)))

(assert (=> bs!442155 (= lambda!78419 lambda!78417)))

(declare-fun bs!442156 () Bool)

(assert (= bs!442156 (and d!643169 d!643141)))

(assert (=> bs!442156 (= lambda!78419 lambda!78411)))

(declare-fun bs!442157 () Bool)

(assert (= bs!442157 (and d!643169 d!643155)))

(assert (=> bs!442157 (= lambda!78419 lambda!78413)))

(declare-fun bs!442158 () Bool)

(assert (= bs!442158 (and d!643169 d!643157)))

(assert (=> bs!442158 (= lambda!78419 lambda!78414)))

(assert (=> d!643169 (= (inv!31192 setElem!14561) (forall!4851 (exprs!1717 setElem!14561) lambda!78419))))

(declare-fun bs!442159 () Bool)

(assert (= bs!442159 d!643169))

(declare-fun m!2573618 () Bool)

(assert (=> bs!442159 m!2573618))

(assert (=> setNonEmpty!14561 d!643169))

(declare-fun bs!442160 () Bool)

(declare-fun d!643171 () Bool)

(assert (= bs!442160 (and d!643171 d!643107)))

(declare-fun lambda!78420 () Int)

(assert (=> bs!442160 (= lambda!78420 lambda!78410)))

(declare-fun bs!442161 () Bool)

(assert (= bs!442161 (and d!643171 d!643159)))

(assert (=> bs!442161 (= lambda!78420 lambda!78415)))

(declare-fun bs!442162 () Bool)

(assert (= bs!442162 (and d!643171 d!643163)))

(assert (=> bs!442162 (= lambda!78420 lambda!78416)))

(declare-fun bs!442163 () Bool)

(assert (= bs!442163 (and d!643171 d!643143)))

(assert (=> bs!442163 (= lambda!78420 lambda!78412)))

(declare-fun bs!442164 () Bool)

(assert (= bs!442164 (and d!643171 d!643165)))

(assert (=> bs!442164 (= lambda!78420 lambda!78417)))

(declare-fun bs!442165 () Bool)

(assert (= bs!442165 (and d!643171 d!643141)))

(assert (=> bs!442165 (= lambda!78420 lambda!78411)))

(declare-fun bs!442166 () Bool)

(assert (= bs!442166 (and d!643171 d!643155)))

(assert (=> bs!442166 (= lambda!78420 lambda!78413)))

(declare-fun bs!442167 () Bool)

(assert (= bs!442167 (and d!643171 d!643157)))

(assert (=> bs!442167 (= lambda!78420 lambda!78414)))

(declare-fun bs!442168 () Bool)

(assert (= bs!442168 (and d!643171 d!643169)))

(assert (=> bs!442168 (= lambda!78420 lambda!78419)))

(declare-fun bs!442169 () Bool)

(assert (= bs!442169 (and d!643171 d!643167)))

(assert (=> bs!442169 (= lambda!78420 lambda!78418)))

(assert (=> d!643171 (= (inv!31192 setElem!14542) (forall!4851 (exprs!1717 setElem!14542) lambda!78420))))

(declare-fun bs!442170 () Bool)

(assert (= bs!442170 d!643171))

(declare-fun m!2573620 () Bool)

(assert (=> bs!442170 m!2573620))

(assert (=> setNonEmpty!14542 d!643171))

(declare-fun d!643173 () Bool)

(assert (=> d!643173 (= (inv!31200 (xs!10728 (c!339599 totalInput!886))) (<= (size!18444 (innerList!7846 (xs!10728 (c!339599 totalInput!886)))) 2147483647))))

(declare-fun bs!442171 () Bool)

(assert (= bs!442171 d!643173))

(declare-fun m!2573622 () Bool)

(assert (=> bs!442171 m!2573622))

(assert (=> b!2118770 d!643173))

(declare-fun bs!442172 () Bool)

(declare-fun d!643175 () Bool)

(assert (= bs!442172 (and d!643175 d!643107)))

(declare-fun lambda!78421 () Int)

(assert (=> bs!442172 (= lambda!78421 lambda!78410)))

(declare-fun bs!442173 () Bool)

(assert (= bs!442173 (and d!643175 d!643159)))

(assert (=> bs!442173 (= lambda!78421 lambda!78415)))

(declare-fun bs!442174 () Bool)

(assert (= bs!442174 (and d!643175 d!643163)))

(assert (=> bs!442174 (= lambda!78421 lambda!78416)))

(declare-fun bs!442175 () Bool)

(assert (= bs!442175 (and d!643175 d!643171)))

(assert (=> bs!442175 (= lambda!78421 lambda!78420)))

(declare-fun bs!442176 () Bool)

(assert (= bs!442176 (and d!643175 d!643143)))

(assert (=> bs!442176 (= lambda!78421 lambda!78412)))

(declare-fun bs!442177 () Bool)

(assert (= bs!442177 (and d!643175 d!643165)))

(assert (=> bs!442177 (= lambda!78421 lambda!78417)))

(declare-fun bs!442178 () Bool)

(assert (= bs!442178 (and d!643175 d!643141)))

(assert (=> bs!442178 (= lambda!78421 lambda!78411)))

(declare-fun bs!442179 () Bool)

(assert (= bs!442179 (and d!643175 d!643155)))

(assert (=> bs!442179 (= lambda!78421 lambda!78413)))

(declare-fun bs!442180 () Bool)

(assert (= bs!442180 (and d!643175 d!643157)))

(assert (=> bs!442180 (= lambda!78421 lambda!78414)))

(declare-fun bs!442181 () Bool)

(assert (= bs!442181 (and d!643175 d!643169)))

(assert (=> bs!442181 (= lambda!78421 lambda!78419)))

(declare-fun bs!442182 () Bool)

(assert (= bs!442182 (and d!643175 d!643167)))

(assert (=> bs!442182 (= lambda!78421 lambda!78418)))

(assert (=> d!643175 (= (inv!31192 setElem!14541) (forall!4851 (exprs!1717 setElem!14541) lambda!78421))))

(declare-fun bs!442183 () Bool)

(assert (= bs!442183 d!643175))

(declare-fun m!2573624 () Bool)

(assert (=> bs!442183 m!2573624))

(assert (=> setNonEmpty!14541 d!643175))

(declare-fun b!2118932 () Bool)

(declare-fun e!1348963 () Bool)

(assert (=> b!2118932 (= e!1348963 (not (isEmpty!14309 (right!18614 (c!339599 input!5507)))))))

(declare-fun b!2118933 () Bool)

(declare-fun res!918609 () Bool)

(assert (=> b!2118933 (=> (not res!918609) (not e!1348963))))

(assert (=> b!2118933 (= res!918609 (not (isEmpty!14309 (left!18284 (c!339599 input!5507)))))))

(declare-fun b!2118934 () Bool)

(declare-fun res!918612 () Bool)

(assert (=> b!2118934 (=> (not res!918612) (not e!1348963))))

(assert (=> b!2118934 (= res!918612 (isBalanced!2444 (left!18284 (c!339599 input!5507))))))

(declare-fun b!2118935 () Bool)

(declare-fun res!918608 () Bool)

(assert (=> b!2118935 (=> (not res!918608) (not e!1348963))))

(assert (=> b!2118935 (= res!918608 (isBalanced!2444 (right!18614 (c!339599 input!5507))))))

(declare-fun b!2118936 () Bool)

(declare-fun res!918611 () Bool)

(assert (=> b!2118936 (=> (not res!918611) (not e!1348963))))

(assert (=> b!2118936 (= res!918611 (<= (- (height!1231 (left!18284 (c!339599 input!5507))) (height!1231 (right!18614 (c!339599 input!5507)))) 1))))

(declare-fun b!2118937 () Bool)

(declare-fun e!1348962 () Bool)

(assert (=> b!2118937 (= e!1348962 e!1348963)))

(declare-fun res!918607 () Bool)

(assert (=> b!2118937 (=> (not res!918607) (not e!1348963))))

(assert (=> b!2118937 (= res!918607 (<= (- 1) (- (height!1231 (left!18284 (c!339599 input!5507))) (height!1231 (right!18614 (c!339599 input!5507))))))))

(declare-fun d!643177 () Bool)

(declare-fun res!918610 () Bool)

(assert (=> d!643177 (=> res!918610 e!1348962)))

(assert (=> d!643177 (= res!918610 (not ((_ is Node!7786) (c!339599 input!5507))))))

(assert (=> d!643177 (= (isBalanced!2444 (c!339599 input!5507)) e!1348962)))

(assert (= (and d!643177 (not res!918610)) b!2118937))

(assert (= (and b!2118937 res!918607) b!2118936))

(assert (= (and b!2118936 res!918611) b!2118934))

(assert (= (and b!2118934 res!918612) b!2118935))

(assert (= (and b!2118935 res!918608) b!2118933))

(assert (= (and b!2118933 res!918609) b!2118932))

(declare-fun m!2573626 () Bool)

(assert (=> b!2118935 m!2573626))

(declare-fun m!2573628 () Bool)

(assert (=> b!2118936 m!2573628))

(declare-fun m!2573630 () Bool)

(assert (=> b!2118936 m!2573630))

(assert (=> b!2118937 m!2573628))

(assert (=> b!2118937 m!2573630))

(declare-fun m!2573632 () Bool)

(assert (=> b!2118934 m!2573632))

(declare-fun m!2573634 () Bool)

(assert (=> b!2118932 m!2573634))

(declare-fun m!2573636 () Bool)

(assert (=> b!2118933 m!2573636))

(assert (=> d!643121 d!643177))

(declare-fun bs!442184 () Bool)

(declare-fun d!643179 () Bool)

(assert (= bs!442184 (and d!643179 d!643107)))

(declare-fun lambda!78422 () Int)

(assert (=> bs!442184 (= lambda!78422 lambda!78410)))

(declare-fun bs!442185 () Bool)

(assert (= bs!442185 (and d!643179 d!643159)))

(assert (=> bs!442185 (= lambda!78422 lambda!78415)))

(declare-fun bs!442186 () Bool)

(assert (= bs!442186 (and d!643179 d!643163)))

(assert (=> bs!442186 (= lambda!78422 lambda!78416)))

(declare-fun bs!442187 () Bool)

(assert (= bs!442187 (and d!643179 d!643171)))

(assert (=> bs!442187 (= lambda!78422 lambda!78420)))

(declare-fun bs!442188 () Bool)

(assert (= bs!442188 (and d!643179 d!643143)))

(assert (=> bs!442188 (= lambda!78422 lambda!78412)))

(declare-fun bs!442189 () Bool)

(assert (= bs!442189 (and d!643179 d!643165)))

(assert (=> bs!442189 (= lambda!78422 lambda!78417)))

(declare-fun bs!442190 () Bool)

(assert (= bs!442190 (and d!643179 d!643175)))

(assert (=> bs!442190 (= lambda!78422 lambda!78421)))

(declare-fun bs!442191 () Bool)

(assert (= bs!442191 (and d!643179 d!643141)))

(assert (=> bs!442191 (= lambda!78422 lambda!78411)))

(declare-fun bs!442192 () Bool)

(assert (= bs!442192 (and d!643179 d!643155)))

(assert (=> bs!442192 (= lambda!78422 lambda!78413)))

(declare-fun bs!442193 () Bool)

(assert (= bs!442193 (and d!643179 d!643157)))

(assert (=> bs!442193 (= lambda!78422 lambda!78414)))

(declare-fun bs!442194 () Bool)

(assert (= bs!442194 (and d!643179 d!643169)))

(assert (=> bs!442194 (= lambda!78422 lambda!78419)))

(declare-fun bs!442195 () Bool)

(assert (= bs!442195 (and d!643179 d!643167)))

(assert (=> bs!442195 (= lambda!78422 lambda!78418)))

(assert (=> d!643179 (= (inv!31192 setElem!14544) (forall!4851 (exprs!1717 setElem!14544) lambda!78422))))

(declare-fun bs!442196 () Bool)

(assert (= bs!442196 d!643179))

(declare-fun m!2573638 () Bool)

(assert (=> bs!442196 m!2573638))

(assert (=> setNonEmpty!14544 d!643179))

(declare-fun b!2118938 () Bool)

(declare-fun e!1348965 () Bool)

(assert (=> b!2118938 (= e!1348965 (not (isEmpty!14309 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))))))

(declare-fun b!2118939 () Bool)

(declare-fun res!918615 () Bool)

(assert (=> b!2118939 (=> (not res!918615) (not e!1348965))))

(assert (=> b!2118939 (= res!918615 (not (isEmpty!14309 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))))))

(declare-fun b!2118940 () Bool)

(declare-fun res!918618 () Bool)

(assert (=> b!2118940 (=> (not res!918618) (not e!1348965))))

(assert (=> b!2118940 (= res!918618 (isBalanced!2444 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))

(declare-fun b!2118941 () Bool)

(declare-fun res!918614 () Bool)

(assert (=> b!2118941 (=> (not res!918614) (not e!1348965))))

(assert (=> b!2118941 (= res!918614 (isBalanced!2444 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))

(declare-fun b!2118942 () Bool)

(declare-fun res!918617 () Bool)

(assert (=> b!2118942 (=> (not res!918617) (not e!1348965))))

(assert (=> b!2118942 (= res!918617 (<= (- (height!1231 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) (height!1231 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) 1))))

(declare-fun b!2118943 () Bool)

(declare-fun e!1348964 () Bool)

(assert (=> b!2118943 (= e!1348964 e!1348965)))

(declare-fun res!918613 () Bool)

(assert (=> b!2118943 (=> (not res!918613) (not e!1348965))))

(assert (=> b!2118943 (= res!918613 (<= (- 1) (- (height!1231 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) (height!1231 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))))

(declare-fun d!643181 () Bool)

(declare-fun res!918616 () Bool)

(assert (=> d!643181 (=> res!918616 e!1348964)))

(assert (=> d!643181 (= res!918616 (not ((_ is Node!7786) (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))

(assert (=> d!643181 (= (isBalanced!2444 (c!339599 (totalInput!2880 cacheFurthestNullable!130))) e!1348964)))

(assert (= (and d!643181 (not res!918616)) b!2118943))

(assert (= (and b!2118943 res!918613) b!2118942))

(assert (= (and b!2118942 res!918617) b!2118940))

(assert (= (and b!2118940 res!918618) b!2118941))

(assert (= (and b!2118941 res!918614) b!2118939))

(assert (= (and b!2118939 res!918615) b!2118938))

(declare-fun m!2573640 () Bool)

(assert (=> b!2118941 m!2573640))

(declare-fun m!2573642 () Bool)

(assert (=> b!2118942 m!2573642))

(declare-fun m!2573644 () Bool)

(assert (=> b!2118942 m!2573644))

(assert (=> b!2118943 m!2573642))

(assert (=> b!2118943 m!2573644))

(declare-fun m!2573646 () Bool)

(assert (=> b!2118940 m!2573646))

(declare-fun m!2573648 () Bool)

(assert (=> b!2118938 m!2573648))

(declare-fun m!2573650 () Bool)

(assert (=> b!2118939 m!2573650))

(assert (=> d!643111 d!643181))

(assert (=> b!2118698 d!643095))

(declare-fun d!643183 () Bool)

(declare-fun res!918625 () Bool)

(declare-fun e!1348968 () Bool)

(assert (=> d!643183 (=> (not res!918625) (not e!1348968))))

(assert (=> d!643183 (= res!918625 (= (csize!15802 (c!339599 (totalInput!2880 cacheFurthestNullable!130))) (+ (size!18445 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) (size!18445 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))))

(assert (=> d!643183 (= (inv!31198 (c!339599 (totalInput!2880 cacheFurthestNullable!130))) e!1348968)))

(declare-fun b!2118950 () Bool)

(declare-fun res!918626 () Bool)

(assert (=> b!2118950 (=> (not res!918626) (not e!1348968))))

(assert (=> b!2118950 (= res!918626 (and (not (= (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130))) Empty!7786)) (not (= (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130))) Empty!7786))))))

(declare-fun b!2118951 () Bool)

(declare-fun res!918627 () Bool)

(assert (=> b!2118951 (=> (not res!918627) (not e!1348968))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2118951 (= res!918627 (= (cheight!7997 (c!339599 (totalInput!2880 cacheFurthestNullable!130))) (+ (max!0 (height!1231 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) (height!1231 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) 1)))))

(declare-fun b!2118952 () Bool)

(assert (=> b!2118952 (= e!1348968 (<= 0 (cheight!7997 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))

(assert (= (and d!643183 res!918625) b!2118950))

(assert (= (and b!2118950 res!918626) b!2118951))

(assert (= (and b!2118951 res!918627) b!2118952))

(declare-fun m!2573652 () Bool)

(assert (=> d!643183 m!2573652))

(declare-fun m!2573654 () Bool)

(assert (=> d!643183 m!2573654))

(assert (=> b!2118951 m!2573642))

(assert (=> b!2118951 m!2573644))

(assert (=> b!2118951 m!2573642))

(assert (=> b!2118951 m!2573644))

(declare-fun m!2573656 () Bool)

(assert (=> b!2118951 m!2573656))

(assert (=> b!2118729 d!643183))

(declare-fun bs!442197 () Bool)

(declare-fun d!643185 () Bool)

(assert (= bs!442197 (and d!643185 d!643159)))

(declare-fun lambda!78423 () Int)

(assert (=> bs!442197 (= lambda!78423 lambda!78415)))

(declare-fun bs!442198 () Bool)

(assert (= bs!442198 (and d!643185 d!643163)))

(assert (=> bs!442198 (= lambda!78423 lambda!78416)))

(declare-fun bs!442199 () Bool)

(assert (= bs!442199 (and d!643185 d!643171)))

(assert (=> bs!442199 (= lambda!78423 lambda!78420)))

(declare-fun bs!442200 () Bool)

(assert (= bs!442200 (and d!643185 d!643143)))

(assert (=> bs!442200 (= lambda!78423 lambda!78412)))

(declare-fun bs!442201 () Bool)

(assert (= bs!442201 (and d!643185 d!643165)))

(assert (=> bs!442201 (= lambda!78423 lambda!78417)))

(declare-fun bs!442202 () Bool)

(assert (= bs!442202 (and d!643185 d!643175)))

(assert (=> bs!442202 (= lambda!78423 lambda!78421)))

(declare-fun bs!442203 () Bool)

(assert (= bs!442203 (and d!643185 d!643141)))

(assert (=> bs!442203 (= lambda!78423 lambda!78411)))

(declare-fun bs!442204 () Bool)

(assert (= bs!442204 (and d!643185 d!643155)))

(assert (=> bs!442204 (= lambda!78423 lambda!78413)))

(declare-fun bs!442205 () Bool)

(assert (= bs!442205 (and d!643185 d!643157)))

(assert (=> bs!442205 (= lambda!78423 lambda!78414)))

(declare-fun bs!442206 () Bool)

(assert (= bs!442206 (and d!643185 d!643179)))

(assert (=> bs!442206 (= lambda!78423 lambda!78422)))

(declare-fun bs!442207 () Bool)

(assert (= bs!442207 (and d!643185 d!643107)))

(assert (=> bs!442207 (= lambda!78423 lambda!78410)))

(declare-fun bs!442208 () Bool)

(assert (= bs!442208 (and d!643185 d!643169)))

(assert (=> bs!442208 (= lambda!78423 lambda!78419)))

(declare-fun bs!442209 () Bool)

(assert (= bs!442209 (and d!643185 d!643167)))

(assert (=> bs!442209 (= lambda!78423 lambda!78418)))

(assert (=> d!643185 (= (inv!31192 setElem!14560) (forall!4851 (exprs!1717 setElem!14560) lambda!78423))))

(declare-fun bs!442210 () Bool)

(assert (= bs!442210 d!643185))

(declare-fun m!2573658 () Bool)

(assert (=> bs!442210 m!2573658))

(assert (=> setNonEmpty!14560 d!643185))

(declare-fun bs!442211 () Bool)

(declare-fun d!643187 () Bool)

(assert (= bs!442211 (and d!643187 d!643159)))

(declare-fun lambda!78424 () Int)

(assert (=> bs!442211 (= lambda!78424 lambda!78415)))

(declare-fun bs!442212 () Bool)

(assert (= bs!442212 (and d!643187 d!643163)))

(assert (=> bs!442212 (= lambda!78424 lambda!78416)))

(declare-fun bs!442213 () Bool)

(assert (= bs!442213 (and d!643187 d!643171)))

(assert (=> bs!442213 (= lambda!78424 lambda!78420)))

(declare-fun bs!442214 () Bool)

(assert (= bs!442214 (and d!643187 d!643143)))

(assert (=> bs!442214 (= lambda!78424 lambda!78412)))

(declare-fun bs!442215 () Bool)

(assert (= bs!442215 (and d!643187 d!643165)))

(assert (=> bs!442215 (= lambda!78424 lambda!78417)))

(declare-fun bs!442216 () Bool)

(assert (= bs!442216 (and d!643187 d!643175)))

(assert (=> bs!442216 (= lambda!78424 lambda!78421)))

(declare-fun bs!442217 () Bool)

(assert (= bs!442217 (and d!643187 d!643141)))

(assert (=> bs!442217 (= lambda!78424 lambda!78411)))

(declare-fun bs!442218 () Bool)

(assert (= bs!442218 (and d!643187 d!643155)))

(assert (=> bs!442218 (= lambda!78424 lambda!78413)))

(declare-fun bs!442219 () Bool)

(assert (= bs!442219 (and d!643187 d!643157)))

(assert (=> bs!442219 (= lambda!78424 lambda!78414)))

(declare-fun bs!442220 () Bool)

(assert (= bs!442220 (and d!643187 d!643185)))

(assert (=> bs!442220 (= lambda!78424 lambda!78423)))

(declare-fun bs!442221 () Bool)

(assert (= bs!442221 (and d!643187 d!643179)))

(assert (=> bs!442221 (= lambda!78424 lambda!78422)))

(declare-fun bs!442222 () Bool)

(assert (= bs!442222 (and d!643187 d!643107)))

(assert (=> bs!442222 (= lambda!78424 lambda!78410)))

(declare-fun bs!442223 () Bool)

(assert (= bs!442223 (and d!643187 d!643169)))

(assert (=> bs!442223 (= lambda!78424 lambda!78419)))

(declare-fun bs!442224 () Bool)

(assert (= bs!442224 (and d!643187 d!643167)))

(assert (=> bs!442224 (= lambda!78424 lambda!78418)))

(assert (=> d!643187 (= (inv!31192 setElem!14565) (forall!4851 (exprs!1717 setElem!14565) lambda!78424))))

(declare-fun bs!442225 () Bool)

(assert (= bs!442225 d!643187))

(declare-fun m!2573660 () Bool)

(assert (=> bs!442225 m!2573660))

(assert (=> setNonEmpty!14565 d!643187))

(declare-fun d!643189 () Bool)

(declare-fun res!918632 () Bool)

(declare-fun e!1348971 () Bool)

(assert (=> d!643189 (=> (not res!918632) (not e!1348971))))

(declare-fun list!9513 (IArray!15577) List!23695)

(assert (=> d!643189 (= res!918632 (<= (size!18444 (list!9513 (xs!10728 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) 512))))

(assert (=> d!643189 (= (inv!31199 (c!339599 (totalInput!2880 cacheFurthestNullable!130))) e!1348971)))

(declare-fun b!2118957 () Bool)

(declare-fun res!918633 () Bool)

(assert (=> b!2118957 (=> (not res!918633) (not e!1348971))))

(assert (=> b!2118957 (= res!918633 (= (csize!15803 (c!339599 (totalInput!2880 cacheFurthestNullable!130))) (size!18444 (list!9513 (xs!10728 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))))

(declare-fun b!2118958 () Bool)

(assert (=> b!2118958 (= e!1348971 (and (> (csize!15803 (c!339599 (totalInput!2880 cacheFurthestNullable!130))) 0) (<= (csize!15803 (c!339599 (totalInput!2880 cacheFurthestNullable!130))) 512)))))

(assert (= (and d!643189 res!918632) b!2118957))

(assert (= (and b!2118957 res!918633) b!2118958))

(declare-fun m!2573662 () Bool)

(assert (=> d!643189 m!2573662))

(assert (=> d!643189 m!2573662))

(declare-fun m!2573664 () Bool)

(assert (=> d!643189 m!2573664))

(assert (=> b!2118957 m!2573662))

(assert (=> b!2118957 m!2573662))

(assert (=> b!2118957 m!2573664))

(assert (=> b!2118731 d!643189))

(declare-fun d!643191 () Bool)

(declare-fun res!918638 () Bool)

(declare-fun e!1348974 () Bool)

(assert (=> d!643191 (=> (not res!918638) (not e!1348974))))

(declare-fun valid!1894 (MutableMap!2316) Bool)

(assert (=> d!643191 (= res!918638 (valid!1894 (cache!2697 cacheUp!991)))))

(assert (=> d!643191 (= (validCacheMapUp!240 (cache!2697 cacheUp!991)) e!1348974)))

(declare-fun b!2118963 () Bool)

(declare-fun res!918639 () Bool)

(assert (=> b!2118963 (=> (not res!918639) (not e!1348974))))

(declare-fun invariantList!298 (List!23693) Bool)

(declare-datatypes ((ListMap!645 0))(
  ( (ListMap!646 (toList!1061 List!23693)) )
))
(declare-fun map!4821 (MutableMap!2316) ListMap!645)

(assert (=> b!2118963 (= res!918639 (invariantList!298 (toList!1061 (map!4821 (cache!2697 cacheUp!991)))))))

(declare-fun b!2118964 () Bool)

(declare-fun lambda!78427 () Int)

(declare-fun forall!4852 (List!23693 Int) Bool)

(assert (=> b!2118964 (= e!1348974 (forall!4852 (toList!1061 (map!4821 (cache!2697 cacheUp!991))) lambda!78427))))

(assert (= (and d!643191 res!918638) b!2118963))

(assert (= (and b!2118963 res!918639) b!2118964))

(declare-fun m!2573667 () Bool)

(assert (=> d!643191 m!2573667))

(declare-fun m!2573669 () Bool)

(assert (=> b!2118963 m!2573669))

(declare-fun m!2573671 () Bool)

(assert (=> b!2118963 m!2573671))

(assert (=> b!2118964 m!2573669))

(declare-fun m!2573673 () Bool)

(assert (=> b!2118964 m!2573673))

(assert (=> d!643097 d!643191))

(declare-fun d!643193 () Bool)

(assert (=> d!643193 (= (inv!31200 (xs!10728 (c!339599 input!5507))) (<= (size!18444 (innerList!7846 (xs!10728 (c!339599 input!5507)))) 2147483647))))

(declare-fun bs!442226 () Bool)

(assert (= bs!442226 d!643193))

(declare-fun m!2573675 () Bool)

(assert (=> bs!442226 m!2573675))

(assert (=> b!2118767 d!643193))

(declare-fun bs!442227 () Bool)

(declare-fun d!643195 () Bool)

(assert (= bs!442227 (and d!643195 d!643159)))

(declare-fun lambda!78428 () Int)

(assert (=> bs!442227 (= lambda!78428 lambda!78415)))

(declare-fun bs!442228 () Bool)

(assert (= bs!442228 (and d!643195 d!643163)))

(assert (=> bs!442228 (= lambda!78428 lambda!78416)))

(declare-fun bs!442229 () Bool)

(assert (= bs!442229 (and d!643195 d!643171)))

(assert (=> bs!442229 (= lambda!78428 lambda!78420)))

(declare-fun bs!442230 () Bool)

(assert (= bs!442230 (and d!643195 d!643143)))

(assert (=> bs!442230 (= lambda!78428 lambda!78412)))

(declare-fun bs!442231 () Bool)

(assert (= bs!442231 (and d!643195 d!643165)))

(assert (=> bs!442231 (= lambda!78428 lambda!78417)))

(declare-fun bs!442232 () Bool)

(assert (= bs!442232 (and d!643195 d!643175)))

(assert (=> bs!442232 (= lambda!78428 lambda!78421)))

(declare-fun bs!442233 () Bool)

(assert (= bs!442233 (and d!643195 d!643141)))

(assert (=> bs!442233 (= lambda!78428 lambda!78411)))

(declare-fun bs!442234 () Bool)

(assert (= bs!442234 (and d!643195 d!643155)))

(assert (=> bs!442234 (= lambda!78428 lambda!78413)))

(declare-fun bs!442235 () Bool)

(assert (= bs!442235 (and d!643195 d!643157)))

(assert (=> bs!442235 (= lambda!78428 lambda!78414)))

(declare-fun bs!442236 () Bool)

(assert (= bs!442236 (and d!643195 d!643179)))

(assert (=> bs!442236 (= lambda!78428 lambda!78422)))

(declare-fun bs!442237 () Bool)

(assert (= bs!442237 (and d!643195 d!643107)))

(assert (=> bs!442237 (= lambda!78428 lambda!78410)))

(declare-fun bs!442238 () Bool)

(assert (= bs!442238 (and d!643195 d!643169)))

(assert (=> bs!442238 (= lambda!78428 lambda!78419)))

(declare-fun bs!442239 () Bool)

(assert (= bs!442239 (and d!643195 d!643167)))

(assert (=> bs!442239 (= lambda!78428 lambda!78418)))

(declare-fun bs!442240 () Bool)

(assert (= bs!442240 (and d!643195 d!643185)))

(assert (=> bs!442240 (= lambda!78428 lambda!78423)))

(declare-fun bs!442241 () Bool)

(assert (= bs!442241 (and d!643195 d!643187)))

(assert (=> bs!442241 (= lambda!78428 lambda!78424)))

(assert (=> d!643195 (= (inv!31192 setElem!14564) (forall!4851 (exprs!1717 setElem!14564) lambda!78428))))

(declare-fun bs!442242 () Bool)

(assert (= bs!442242 d!643195))

(declare-fun m!2573677 () Bool)

(assert (=> bs!442242 m!2573677))

(assert (=> setNonEmpty!14564 d!643195))

(assert (=> d!643101 d!643149))

(assert (=> d!643101 d!643117))

(declare-fun d!643197 () Bool)

(declare-fun lt!794444 () Int)

(assert (=> d!643197 (= lt!794444 (size!18444 (list!9512 (c!339599 input!5507))))))

(assert (=> d!643197 (= lt!794444 (ite ((_ is Empty!7786) (c!339599 input!5507)) 0 (ite ((_ is Leaf!11377) (c!339599 input!5507)) (csize!15803 (c!339599 input!5507)) (csize!15802 (c!339599 input!5507)))))))

(assert (=> d!643197 (= (size!18445 (c!339599 input!5507)) lt!794444)))

(declare-fun bs!442243 () Bool)

(assert (= bs!442243 d!643197))

(assert (=> bs!442243 m!2573474))

(assert (=> bs!442243 m!2573474))

(declare-fun m!2573679 () Bool)

(assert (=> bs!442243 m!2573679))

(assert (=> d!643101 d!643197))

(declare-fun bs!442244 () Bool)

(declare-fun d!643199 () Bool)

(assert (= bs!442244 (and d!643199 d!643159)))

(declare-fun lambda!78429 () Int)

(assert (=> bs!442244 (= lambda!78429 lambda!78415)))

(declare-fun bs!442245 () Bool)

(assert (= bs!442245 (and d!643199 d!643163)))

(assert (=> bs!442245 (= lambda!78429 lambda!78416)))

(declare-fun bs!442246 () Bool)

(assert (= bs!442246 (and d!643199 d!643171)))

(assert (=> bs!442246 (= lambda!78429 lambda!78420)))

(declare-fun bs!442247 () Bool)

(assert (= bs!442247 (and d!643199 d!643143)))

(assert (=> bs!442247 (= lambda!78429 lambda!78412)))

(declare-fun bs!442248 () Bool)

(assert (= bs!442248 (and d!643199 d!643165)))

(assert (=> bs!442248 (= lambda!78429 lambda!78417)))

(declare-fun bs!442249 () Bool)

(assert (= bs!442249 (and d!643199 d!643175)))

(assert (=> bs!442249 (= lambda!78429 lambda!78421)))

(declare-fun bs!442250 () Bool)

(assert (= bs!442250 (and d!643199 d!643141)))

(assert (=> bs!442250 (= lambda!78429 lambda!78411)))

(declare-fun bs!442251 () Bool)

(assert (= bs!442251 (and d!643199 d!643155)))

(assert (=> bs!442251 (= lambda!78429 lambda!78413)))

(declare-fun bs!442252 () Bool)

(assert (= bs!442252 (and d!643199 d!643157)))

(assert (=> bs!442252 (= lambda!78429 lambda!78414)))

(declare-fun bs!442253 () Bool)

(assert (= bs!442253 (and d!643199 d!643179)))

(assert (=> bs!442253 (= lambda!78429 lambda!78422)))

(declare-fun bs!442254 () Bool)

(assert (= bs!442254 (and d!643199 d!643107)))

(assert (=> bs!442254 (= lambda!78429 lambda!78410)))

(declare-fun bs!442255 () Bool)

(assert (= bs!442255 (and d!643199 d!643195)))

(assert (=> bs!442255 (= lambda!78429 lambda!78428)))

(declare-fun bs!442256 () Bool)

(assert (= bs!442256 (and d!643199 d!643169)))

(assert (=> bs!442256 (= lambda!78429 lambda!78419)))

(declare-fun bs!442257 () Bool)

(assert (= bs!442257 (and d!643199 d!643167)))

(assert (=> bs!442257 (= lambda!78429 lambda!78418)))

(declare-fun bs!442258 () Bool)

(assert (= bs!442258 (and d!643199 d!643185)))

(assert (=> bs!442258 (= lambda!78429 lambda!78423)))

(declare-fun bs!442259 () Bool)

(assert (= bs!442259 (and d!643199 d!643187)))

(assert (=> bs!442259 (= lambda!78429 lambda!78424)))

(assert (=> d!643199 (= (inv!31192 setElem!14549) (forall!4851 (exprs!1717 setElem!14549) lambda!78429))))

(declare-fun bs!442260 () Bool)

(assert (= bs!442260 d!643199))

(declare-fun m!2573681 () Bool)

(assert (=> bs!442260 m!2573681))

(assert (=> setNonEmpty!14550 d!643199))

(declare-fun bs!442261 () Bool)

(declare-fun d!643201 () Bool)

(assert (= bs!442261 (and d!643201 d!643159)))

(declare-fun lambda!78430 () Int)

(assert (=> bs!442261 (= lambda!78430 lambda!78415)))

(declare-fun bs!442262 () Bool)

(assert (= bs!442262 (and d!643201 d!643199)))

(assert (=> bs!442262 (= lambda!78430 lambda!78429)))

(declare-fun bs!442263 () Bool)

(assert (= bs!442263 (and d!643201 d!643163)))

(assert (=> bs!442263 (= lambda!78430 lambda!78416)))

(declare-fun bs!442264 () Bool)

(assert (= bs!442264 (and d!643201 d!643171)))

(assert (=> bs!442264 (= lambda!78430 lambda!78420)))

(declare-fun bs!442265 () Bool)

(assert (= bs!442265 (and d!643201 d!643143)))

(assert (=> bs!442265 (= lambda!78430 lambda!78412)))

(declare-fun bs!442266 () Bool)

(assert (= bs!442266 (and d!643201 d!643165)))

(assert (=> bs!442266 (= lambda!78430 lambda!78417)))

(declare-fun bs!442267 () Bool)

(assert (= bs!442267 (and d!643201 d!643175)))

(assert (=> bs!442267 (= lambda!78430 lambda!78421)))

(declare-fun bs!442268 () Bool)

(assert (= bs!442268 (and d!643201 d!643141)))

(assert (=> bs!442268 (= lambda!78430 lambda!78411)))

(declare-fun bs!442269 () Bool)

(assert (= bs!442269 (and d!643201 d!643155)))

(assert (=> bs!442269 (= lambda!78430 lambda!78413)))

(declare-fun bs!442270 () Bool)

(assert (= bs!442270 (and d!643201 d!643157)))

(assert (=> bs!442270 (= lambda!78430 lambda!78414)))

(declare-fun bs!442271 () Bool)

(assert (= bs!442271 (and d!643201 d!643179)))

(assert (=> bs!442271 (= lambda!78430 lambda!78422)))

(declare-fun bs!442272 () Bool)

(assert (= bs!442272 (and d!643201 d!643107)))

(assert (=> bs!442272 (= lambda!78430 lambda!78410)))

(declare-fun bs!442273 () Bool)

(assert (= bs!442273 (and d!643201 d!643195)))

(assert (=> bs!442273 (= lambda!78430 lambda!78428)))

(declare-fun bs!442274 () Bool)

(assert (= bs!442274 (and d!643201 d!643169)))

(assert (=> bs!442274 (= lambda!78430 lambda!78419)))

(declare-fun bs!442275 () Bool)

(assert (= bs!442275 (and d!643201 d!643167)))

(assert (=> bs!442275 (= lambda!78430 lambda!78418)))

(declare-fun bs!442276 () Bool)

(assert (= bs!442276 (and d!643201 d!643185)))

(assert (=> bs!442276 (= lambda!78430 lambda!78423)))

(declare-fun bs!442277 () Bool)

(assert (= bs!442277 (and d!643201 d!643187)))

(assert (=> bs!442277 (= lambda!78430 lambda!78424)))

(assert (=> d!643201 (= (inv!31192 (_2!13464 (_1!13465 (h!29013 mapValue!11631)))) (forall!4851 (exprs!1717 (_2!13464 (_1!13465 (h!29013 mapValue!11631)))) lambda!78430))))

(declare-fun bs!442278 () Bool)

(assert (= bs!442278 d!643201))

(declare-fun m!2573683 () Bool)

(assert (=> bs!442278 m!2573683))

(assert (=> b!2118809 d!643201))

(declare-fun d!643203 () Bool)

(declare-fun res!918646 () Bool)

(declare-fun e!1348979 () Bool)

(assert (=> d!643203 (=> (not res!918646) (not e!1348979))))

(declare-fun valid!1895 (MutableMap!2318) Bool)

(assert (=> d!643203 (= res!918646 (valid!1895 (cache!2699 cacheDown!1110)))))

(assert (=> d!643203 (= (validCacheMapDown!238 (cache!2699 cacheDown!1110)) e!1348979)))

(declare-fun b!2118971 () Bool)

(declare-fun res!918647 () Bool)

(assert (=> b!2118971 (=> (not res!918647) (not e!1348979))))

(declare-fun invariantList!299 (List!23696) Bool)

(declare-datatypes ((ListMap!647 0))(
  ( (ListMap!648 (toList!1062 List!23696)) )
))
(declare-fun map!4822 (MutableMap!2318) ListMap!647)

(assert (=> b!2118971 (= res!918647 (invariantList!299 (toList!1062 (map!4822 (cache!2699 cacheDown!1110)))))))

(declare-fun b!2118972 () Bool)

(declare-fun lambda!78433 () Int)

(declare-fun forall!4853 (List!23696 Int) Bool)

(assert (=> b!2118972 (= e!1348979 (forall!4853 (toList!1062 (map!4822 (cache!2699 cacheDown!1110))) lambda!78433))))

(assert (= (and d!643203 res!918646) b!2118971))

(assert (= (and b!2118971 res!918647) b!2118972))

(declare-fun m!2573686 () Bool)

(assert (=> d!643203 m!2573686))

(declare-fun m!2573688 () Bool)

(assert (=> b!2118971 m!2573688))

(declare-fun m!2573690 () Bool)

(assert (=> b!2118971 m!2573690))

(assert (=> b!2118972 m!2573688))

(declare-fun m!2573692 () Bool)

(assert (=> b!2118972 m!2573692))

(assert (=> d!643113 d!643203))

(declare-fun d!643205 () Bool)

(declare-fun c!339627 () Bool)

(assert (=> d!643205 (= c!339627 ((_ is Empty!7786) (c!339599 input!5507)))))

(declare-fun e!1348984 () List!23695)

(assert (=> d!643205 (= (list!9512 (c!339599 input!5507)) e!1348984)))

(declare-fun b!2118982 () Bool)

(declare-fun e!1348985 () List!23695)

(assert (=> b!2118982 (= e!1348984 e!1348985)))

(declare-fun c!339628 () Bool)

(assert (=> b!2118982 (= c!339628 ((_ is Leaf!11377) (c!339599 input!5507)))))

(declare-fun b!2118983 () Bool)

(assert (=> b!2118983 (= e!1348985 (list!9513 (xs!10728 (c!339599 input!5507))))))

(declare-fun b!2118984 () Bool)

(declare-fun ++!6315 (List!23695 List!23695) List!23695)

(assert (=> b!2118984 (= e!1348985 (++!6315 (list!9512 (left!18284 (c!339599 input!5507))) (list!9512 (right!18614 (c!339599 input!5507)))))))

(declare-fun b!2118981 () Bool)

(assert (=> b!2118981 (= e!1348984 Nil!23611)))

(assert (= (and d!643205 c!339627) b!2118981))

(assert (= (and d!643205 (not c!339627)) b!2118982))

(assert (= (and b!2118982 c!339628) b!2118983))

(assert (= (and b!2118982 (not c!339628)) b!2118984))

(declare-fun m!2573694 () Bool)

(assert (=> b!2118983 m!2573694))

(declare-fun m!2573696 () Bool)

(assert (=> b!2118984 m!2573696))

(declare-fun m!2573698 () Bool)

(assert (=> b!2118984 m!2573698))

(assert (=> b!2118984 m!2573696))

(assert (=> b!2118984 m!2573698))

(declare-fun m!2573700 () Bool)

(assert (=> b!2118984 m!2573700))

(assert (=> d!643117 d!643205))

(declare-fun b!2118990 () Bool)

(assert (=> b!2118990 true))

(declare-fun d!643207 () Bool)

(declare-fun res!918652 () Bool)

(declare-fun e!1348988 () Bool)

(assert (=> d!643207 (=> (not res!918652) (not e!1348988))))

(declare-fun valid!1896 (MutableMap!2317) Bool)

(assert (=> d!643207 (= res!918652 (valid!1896 (cache!2698 cacheFurthestNullable!130)))))

(assert (=> d!643207 (= (validCacheMapFurthestNullable!90 (cache!2698 cacheFurthestNullable!130) (totalInput!2880 cacheFurthestNullable!130)) e!1348988)))

(declare-fun b!2118989 () Bool)

(declare-fun res!918653 () Bool)

(assert (=> b!2118989 (=> (not res!918653) (not e!1348988))))

(declare-fun invariantList!300 (List!23694) Bool)

(declare-datatypes ((ListMap!649 0))(
  ( (ListMap!650 (toList!1063 List!23694)) )
))
(declare-fun map!4823 (MutableMap!2317) ListMap!649)

(assert (=> b!2118989 (= res!918653 (invariantList!300 (toList!1063 (map!4823 (cache!2698 cacheFurthestNullable!130)))))))

(declare-fun lambda!78436 () Int)

(declare-fun forall!4854 (List!23694 Int) Bool)

(assert (=> b!2118990 (= e!1348988 (forall!4854 (toList!1063 (map!4823 (cache!2698 cacheFurthestNullable!130))) lambda!78436))))

(assert (= (and d!643207 res!918652) b!2118989))

(assert (= (and b!2118989 res!918653) b!2118990))

(declare-fun m!2573703 () Bool)

(assert (=> d!643207 m!2573703))

(declare-fun m!2573705 () Bool)

(assert (=> b!2118989 m!2573705))

(declare-fun m!2573707 () Bool)

(assert (=> b!2118989 m!2573707))

(assert (=> b!2118990 m!2573705))

(declare-fun m!2573709 () Bool)

(assert (=> b!2118990 m!2573709))

(assert (=> b!2118740 d!643207))

(declare-fun bs!442279 () Bool)

(declare-fun d!643209 () Bool)

(assert (= bs!442279 (and d!643209 d!643159)))

(declare-fun lambda!78437 () Int)

(assert (=> bs!442279 (= lambda!78437 lambda!78415)))

(declare-fun bs!442280 () Bool)

(assert (= bs!442280 (and d!643209 d!643199)))

(assert (=> bs!442280 (= lambda!78437 lambda!78429)))

(declare-fun bs!442281 () Bool)

(assert (= bs!442281 (and d!643209 d!643163)))

(assert (=> bs!442281 (= lambda!78437 lambda!78416)))

(declare-fun bs!442282 () Bool)

(assert (= bs!442282 (and d!643209 d!643171)))

(assert (=> bs!442282 (= lambda!78437 lambda!78420)))

(declare-fun bs!442283 () Bool)

(assert (= bs!442283 (and d!643209 d!643201)))

(assert (=> bs!442283 (= lambda!78437 lambda!78430)))

(declare-fun bs!442284 () Bool)

(assert (= bs!442284 (and d!643209 d!643143)))

(assert (=> bs!442284 (= lambda!78437 lambda!78412)))

(declare-fun bs!442285 () Bool)

(assert (= bs!442285 (and d!643209 d!643165)))

(assert (=> bs!442285 (= lambda!78437 lambda!78417)))

(declare-fun bs!442286 () Bool)

(assert (= bs!442286 (and d!643209 d!643175)))

(assert (=> bs!442286 (= lambda!78437 lambda!78421)))

(declare-fun bs!442287 () Bool)

(assert (= bs!442287 (and d!643209 d!643141)))

(assert (=> bs!442287 (= lambda!78437 lambda!78411)))

(declare-fun bs!442288 () Bool)

(assert (= bs!442288 (and d!643209 d!643155)))

(assert (=> bs!442288 (= lambda!78437 lambda!78413)))

(declare-fun bs!442289 () Bool)

(assert (= bs!442289 (and d!643209 d!643157)))

(assert (=> bs!442289 (= lambda!78437 lambda!78414)))

(declare-fun bs!442290 () Bool)

(assert (= bs!442290 (and d!643209 d!643179)))

(assert (=> bs!442290 (= lambda!78437 lambda!78422)))

(declare-fun bs!442291 () Bool)

(assert (= bs!442291 (and d!643209 d!643107)))

(assert (=> bs!442291 (= lambda!78437 lambda!78410)))

(declare-fun bs!442292 () Bool)

(assert (= bs!442292 (and d!643209 d!643195)))

(assert (=> bs!442292 (= lambda!78437 lambda!78428)))

(declare-fun bs!442293 () Bool)

(assert (= bs!442293 (and d!643209 d!643169)))

(assert (=> bs!442293 (= lambda!78437 lambda!78419)))

(declare-fun bs!442294 () Bool)

(assert (= bs!442294 (and d!643209 d!643167)))

(assert (=> bs!442294 (= lambda!78437 lambda!78418)))

(declare-fun bs!442295 () Bool)

(assert (= bs!442295 (and d!643209 d!643185)))

(assert (=> bs!442295 (= lambda!78437 lambda!78423)))

(declare-fun bs!442296 () Bool)

(assert (= bs!442296 (and d!643209 d!643187)))

(assert (=> bs!442296 (= lambda!78437 lambda!78424)))

(assert (=> d!643209 (= (inv!31192 (_1!13460 (_1!13461 (h!29010 mapDefault!11630)))) (forall!4851 (exprs!1717 (_1!13460 (_1!13461 (h!29010 mapDefault!11630)))) lambda!78437))))

(declare-fun bs!442297 () Bool)

(assert (= bs!442297 d!643209))

(declare-fun m!2573711 () Bool)

(assert (=> bs!442297 m!2573711))

(assert (=> b!2118785 d!643209))

(declare-fun bs!442298 () Bool)

(declare-fun d!643211 () Bool)

(assert (= bs!442298 (and d!643211 d!643159)))

(declare-fun lambda!78438 () Int)

(assert (=> bs!442298 (= lambda!78438 lambda!78415)))

(declare-fun bs!442299 () Bool)

(assert (= bs!442299 (and d!643211 d!643199)))

(assert (=> bs!442299 (= lambda!78438 lambda!78429)))

(declare-fun bs!442300 () Bool)

(assert (= bs!442300 (and d!643211 d!643163)))

(assert (=> bs!442300 (= lambda!78438 lambda!78416)))

(declare-fun bs!442301 () Bool)

(assert (= bs!442301 (and d!643211 d!643171)))

(assert (=> bs!442301 (= lambda!78438 lambda!78420)))

(declare-fun bs!442302 () Bool)

(assert (= bs!442302 (and d!643211 d!643201)))

(assert (=> bs!442302 (= lambda!78438 lambda!78430)))

(declare-fun bs!442303 () Bool)

(assert (= bs!442303 (and d!643211 d!643165)))

(assert (=> bs!442303 (= lambda!78438 lambda!78417)))

(declare-fun bs!442304 () Bool)

(assert (= bs!442304 (and d!643211 d!643175)))

(assert (=> bs!442304 (= lambda!78438 lambda!78421)))

(declare-fun bs!442305 () Bool)

(assert (= bs!442305 (and d!643211 d!643141)))

(assert (=> bs!442305 (= lambda!78438 lambda!78411)))

(declare-fun bs!442306 () Bool)

(assert (= bs!442306 (and d!643211 d!643155)))

(assert (=> bs!442306 (= lambda!78438 lambda!78413)))

(declare-fun bs!442307 () Bool)

(assert (= bs!442307 (and d!643211 d!643157)))

(assert (=> bs!442307 (= lambda!78438 lambda!78414)))

(declare-fun bs!442308 () Bool)

(assert (= bs!442308 (and d!643211 d!643179)))

(assert (=> bs!442308 (= lambda!78438 lambda!78422)))

(declare-fun bs!442309 () Bool)

(assert (= bs!442309 (and d!643211 d!643107)))

(assert (=> bs!442309 (= lambda!78438 lambda!78410)))

(declare-fun bs!442310 () Bool)

(assert (= bs!442310 (and d!643211 d!643195)))

(assert (=> bs!442310 (= lambda!78438 lambda!78428)))

(declare-fun bs!442311 () Bool)

(assert (= bs!442311 (and d!643211 d!643169)))

(assert (=> bs!442311 (= lambda!78438 lambda!78419)))

(declare-fun bs!442312 () Bool)

(assert (= bs!442312 (and d!643211 d!643167)))

(assert (=> bs!442312 (= lambda!78438 lambda!78418)))

(declare-fun bs!442313 () Bool)

(assert (= bs!442313 (and d!643211 d!643143)))

(assert (=> bs!442313 (= lambda!78438 lambda!78412)))

(declare-fun bs!442314 () Bool)

(assert (= bs!442314 (and d!643211 d!643209)))

(assert (=> bs!442314 (= lambda!78438 lambda!78437)))

(declare-fun bs!442315 () Bool)

(assert (= bs!442315 (and d!643211 d!643185)))

(assert (=> bs!442315 (= lambda!78438 lambda!78423)))

(declare-fun bs!442316 () Bool)

(assert (= bs!442316 (and d!643211 d!643187)))

(assert (=> bs!442316 (= lambda!78438 lambda!78424)))

(assert (=> d!643211 (= (inv!31192 (_1!13460 (_1!13461 (h!29010 mapDefault!11641)))) (forall!4851 (exprs!1717 (_1!13460 (_1!13461 (h!29010 mapDefault!11641)))) lambda!78438))))

(declare-fun bs!442317 () Bool)

(assert (= bs!442317 d!643211))

(declare-fun m!2573713 () Bool)

(assert (=> bs!442317 m!2573713))

(assert (=> b!2118860 d!643211))

(declare-fun d!643213 () Bool)

(declare-fun res!918654 () Bool)

(declare-fun e!1348989 () Bool)

(assert (=> d!643213 (=> (not res!918654) (not e!1348989))))

(assert (=> d!643213 (= res!918654 (= (csize!15802 (c!339599 totalInput!886)) (+ (size!18445 (left!18284 (c!339599 totalInput!886))) (size!18445 (right!18614 (c!339599 totalInput!886))))))))

(assert (=> d!643213 (= (inv!31198 (c!339599 totalInput!886)) e!1348989)))

(declare-fun b!2118993 () Bool)

(declare-fun res!918655 () Bool)

(assert (=> b!2118993 (=> (not res!918655) (not e!1348989))))

(assert (=> b!2118993 (= res!918655 (and (not (= (left!18284 (c!339599 totalInput!886)) Empty!7786)) (not (= (right!18614 (c!339599 totalInput!886)) Empty!7786))))))

(declare-fun b!2118994 () Bool)

(declare-fun res!918656 () Bool)

(assert (=> b!2118994 (=> (not res!918656) (not e!1348989))))

(assert (=> b!2118994 (= res!918656 (= (cheight!7997 (c!339599 totalInput!886)) (+ (max!0 (height!1231 (left!18284 (c!339599 totalInput!886))) (height!1231 (right!18614 (c!339599 totalInput!886)))) 1)))))

(declare-fun b!2118995 () Bool)

(assert (=> b!2118995 (= e!1348989 (<= 0 (cheight!7997 (c!339599 totalInput!886))))))

(assert (= (and d!643213 res!918654) b!2118993))

(assert (= (and b!2118993 res!918655) b!2118994))

(assert (= (and b!2118994 res!918656) b!2118995))

(declare-fun m!2573715 () Bool)

(assert (=> d!643213 m!2573715))

(declare-fun m!2573717 () Bool)

(assert (=> d!643213 m!2573717))

(assert (=> b!2118994 m!2573602))

(assert (=> b!2118994 m!2573604))

(assert (=> b!2118994 m!2573602))

(assert (=> b!2118994 m!2573604))

(declare-fun m!2573719 () Bool)

(assert (=> b!2118994 m!2573719))

(assert (=> b!2118726 d!643213))

(declare-fun bs!442318 () Bool)

(declare-fun d!643215 () Bool)

(assert (= bs!442318 (and d!643215 d!643159)))

(declare-fun lambda!78439 () Int)

(assert (=> bs!442318 (= lambda!78439 lambda!78415)))

(declare-fun bs!442319 () Bool)

(assert (= bs!442319 (and d!643215 d!643199)))

(assert (=> bs!442319 (= lambda!78439 lambda!78429)))

(declare-fun bs!442320 () Bool)

(assert (= bs!442320 (and d!643215 d!643163)))

(assert (=> bs!442320 (= lambda!78439 lambda!78416)))

(declare-fun bs!442321 () Bool)

(assert (= bs!442321 (and d!643215 d!643171)))

(assert (=> bs!442321 (= lambda!78439 lambda!78420)))

(declare-fun bs!442322 () Bool)

(assert (= bs!442322 (and d!643215 d!643201)))

(assert (=> bs!442322 (= lambda!78439 lambda!78430)))

(declare-fun bs!442323 () Bool)

(assert (= bs!442323 (and d!643215 d!643165)))

(assert (=> bs!442323 (= lambda!78439 lambda!78417)))

(declare-fun bs!442324 () Bool)

(assert (= bs!442324 (and d!643215 d!643175)))

(assert (=> bs!442324 (= lambda!78439 lambda!78421)))

(declare-fun bs!442325 () Bool)

(assert (= bs!442325 (and d!643215 d!643141)))

(assert (=> bs!442325 (= lambda!78439 lambda!78411)))

(declare-fun bs!442326 () Bool)

(assert (= bs!442326 (and d!643215 d!643155)))

(assert (=> bs!442326 (= lambda!78439 lambda!78413)))

(declare-fun bs!442327 () Bool)

(assert (= bs!442327 (and d!643215 d!643157)))

(assert (=> bs!442327 (= lambda!78439 lambda!78414)))

(declare-fun bs!442328 () Bool)

(assert (= bs!442328 (and d!643215 d!643179)))

(assert (=> bs!442328 (= lambda!78439 lambda!78422)))

(declare-fun bs!442329 () Bool)

(assert (= bs!442329 (and d!643215 d!643107)))

(assert (=> bs!442329 (= lambda!78439 lambda!78410)))

(declare-fun bs!442330 () Bool)

(assert (= bs!442330 (and d!643215 d!643195)))

(assert (=> bs!442330 (= lambda!78439 lambda!78428)))

(declare-fun bs!442331 () Bool)

(assert (= bs!442331 (and d!643215 d!643169)))

(assert (=> bs!442331 (= lambda!78439 lambda!78419)))

(declare-fun bs!442332 () Bool)

(assert (= bs!442332 (and d!643215 d!643211)))

(assert (=> bs!442332 (= lambda!78439 lambda!78438)))

(declare-fun bs!442333 () Bool)

(assert (= bs!442333 (and d!643215 d!643167)))

(assert (=> bs!442333 (= lambda!78439 lambda!78418)))

(declare-fun bs!442334 () Bool)

(assert (= bs!442334 (and d!643215 d!643143)))

(assert (=> bs!442334 (= lambda!78439 lambda!78412)))

(declare-fun bs!442335 () Bool)

(assert (= bs!442335 (and d!643215 d!643209)))

(assert (=> bs!442335 (= lambda!78439 lambda!78437)))

(declare-fun bs!442336 () Bool)

(assert (= bs!442336 (and d!643215 d!643185)))

(assert (=> bs!442336 (= lambda!78439 lambda!78423)))

(declare-fun bs!442337 () Bool)

(assert (= bs!442337 (and d!643215 d!643187)))

(assert (=> bs!442337 (= lambda!78439 lambda!78424)))

(assert (=> d!643215 (= (inv!31192 (_2!13464 (_1!13465 (h!29013 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))))) (forall!4851 (exprs!1717 (_2!13464 (_1!13465 (h!29013 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))))) lambda!78439))))

(declare-fun bs!442338 () Bool)

(assert (= bs!442338 d!643215))

(declare-fun m!2573721 () Bool)

(assert (=> bs!442338 m!2573721))

(assert (=> b!2118753 d!643215))

(declare-fun d!643217 () Bool)

(declare-fun c!339629 () Bool)

(assert (=> d!643217 (= c!339629 ((_ is Node!7786) (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))

(declare-fun e!1348990 () Bool)

(assert (=> d!643217 (= (inv!31193 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) e!1348990)))

(declare-fun b!2118996 () Bool)

(assert (=> b!2118996 (= e!1348990 (inv!31198 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))

(declare-fun b!2118997 () Bool)

(declare-fun e!1348991 () Bool)

(assert (=> b!2118997 (= e!1348990 e!1348991)))

(declare-fun res!918657 () Bool)

(assert (=> b!2118997 (= res!918657 (not ((_ is Leaf!11377) (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))))))

(assert (=> b!2118997 (=> res!918657 e!1348991)))

(declare-fun b!2118998 () Bool)

(assert (=> b!2118998 (= e!1348991 (inv!31199 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))

(assert (= (and d!643217 c!339629) b!2118996))

(assert (= (and d!643217 (not c!339629)) b!2118997))

(assert (= (and b!2118997 (not res!918657)) b!2118998))

(declare-fun m!2573723 () Bool)

(assert (=> b!2118996 m!2573723))

(declare-fun m!2573725 () Bool)

(assert (=> b!2118998 m!2573725))

(assert (=> b!2118819 d!643217))

(declare-fun d!643219 () Bool)

(declare-fun c!339630 () Bool)

(assert (=> d!643219 (= c!339630 ((_ is Node!7786) (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))

(declare-fun e!1348992 () Bool)

(assert (=> d!643219 (= (inv!31193 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) e!1348992)))

(declare-fun b!2118999 () Bool)

(assert (=> b!2118999 (= e!1348992 (inv!31198 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))

(declare-fun b!2119000 () Bool)

(declare-fun e!1348993 () Bool)

(assert (=> b!2119000 (= e!1348992 e!1348993)))

(declare-fun res!918658 () Bool)

(assert (=> b!2119000 (= res!918658 (not ((_ is Leaf!11377) (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))))))

(assert (=> b!2119000 (=> res!918658 e!1348993)))

(declare-fun b!2119001 () Bool)

(assert (=> b!2119001 (= e!1348993 (inv!31199 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))))

(assert (= (and d!643219 c!339630) b!2118999))

(assert (= (and d!643219 (not c!339630)) b!2119000))

(assert (= (and b!2119000 (not res!918658)) b!2119001))

(declare-fun m!2573727 () Bool)

(assert (=> b!2118999 m!2573727))

(declare-fun m!2573729 () Bool)

(assert (=> b!2119001 m!2573729))

(assert (=> b!2118819 d!643219))

(declare-fun bs!442339 () Bool)

(declare-fun d!643221 () Bool)

(assert (= bs!442339 (and d!643221 d!643159)))

(declare-fun lambda!78440 () Int)

(assert (=> bs!442339 (= lambda!78440 lambda!78415)))

(declare-fun bs!442340 () Bool)

(assert (= bs!442340 (and d!643221 d!643199)))

(assert (=> bs!442340 (= lambda!78440 lambda!78429)))

(declare-fun bs!442341 () Bool)

(assert (= bs!442341 (and d!643221 d!643163)))

(assert (=> bs!442341 (= lambda!78440 lambda!78416)))

(declare-fun bs!442342 () Bool)

(assert (= bs!442342 (and d!643221 d!643171)))

(assert (=> bs!442342 (= lambda!78440 lambda!78420)))

(declare-fun bs!442343 () Bool)

(assert (= bs!442343 (and d!643221 d!643201)))

(assert (=> bs!442343 (= lambda!78440 lambda!78430)))

(declare-fun bs!442344 () Bool)

(assert (= bs!442344 (and d!643221 d!643165)))

(assert (=> bs!442344 (= lambda!78440 lambda!78417)))

(declare-fun bs!442345 () Bool)

(assert (= bs!442345 (and d!643221 d!643175)))

(assert (=> bs!442345 (= lambda!78440 lambda!78421)))

(declare-fun bs!442346 () Bool)

(assert (= bs!442346 (and d!643221 d!643141)))

(assert (=> bs!442346 (= lambda!78440 lambda!78411)))

(declare-fun bs!442347 () Bool)

(assert (= bs!442347 (and d!643221 d!643155)))

(assert (=> bs!442347 (= lambda!78440 lambda!78413)))

(declare-fun bs!442348 () Bool)

(assert (= bs!442348 (and d!643221 d!643215)))

(assert (=> bs!442348 (= lambda!78440 lambda!78439)))

(declare-fun bs!442349 () Bool)

(assert (= bs!442349 (and d!643221 d!643157)))

(assert (=> bs!442349 (= lambda!78440 lambda!78414)))

(declare-fun bs!442350 () Bool)

(assert (= bs!442350 (and d!643221 d!643179)))

(assert (=> bs!442350 (= lambda!78440 lambda!78422)))

(declare-fun bs!442351 () Bool)

(assert (= bs!442351 (and d!643221 d!643107)))

(assert (=> bs!442351 (= lambda!78440 lambda!78410)))

(declare-fun bs!442352 () Bool)

(assert (= bs!442352 (and d!643221 d!643195)))

(assert (=> bs!442352 (= lambda!78440 lambda!78428)))

(declare-fun bs!442353 () Bool)

(assert (= bs!442353 (and d!643221 d!643169)))

(assert (=> bs!442353 (= lambda!78440 lambda!78419)))

(declare-fun bs!442354 () Bool)

(assert (= bs!442354 (and d!643221 d!643211)))

(assert (=> bs!442354 (= lambda!78440 lambda!78438)))

(declare-fun bs!442355 () Bool)

(assert (= bs!442355 (and d!643221 d!643167)))

(assert (=> bs!442355 (= lambda!78440 lambda!78418)))

(declare-fun bs!442356 () Bool)

(assert (= bs!442356 (and d!643221 d!643143)))

(assert (=> bs!442356 (= lambda!78440 lambda!78412)))

(declare-fun bs!442357 () Bool)

(assert (= bs!442357 (and d!643221 d!643209)))

(assert (=> bs!442357 (= lambda!78440 lambda!78437)))

(declare-fun bs!442358 () Bool)

(assert (= bs!442358 (and d!643221 d!643185)))

(assert (=> bs!442358 (= lambda!78440 lambda!78423)))

(declare-fun bs!442359 () Bool)

(assert (= bs!442359 (and d!643221 d!643187)))

(assert (=> bs!442359 (= lambda!78440 lambda!78424)))

(assert (=> d!643221 (= (inv!31192 (_1!13460 (_1!13461 (h!29010 (minValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))))) (forall!4851 (exprs!1717 (_1!13460 (_1!13461 (h!29010 (minValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))))) lambda!78440))))

(declare-fun bs!442360 () Bool)

(assert (= bs!442360 d!643221))

(declare-fun m!2573731 () Bool)

(assert (=> bs!442360 m!2573731))

(assert (=> b!2118870 d!643221))

(assert (=> d!643109 d!643207))

(declare-fun bs!442361 () Bool)

(declare-fun d!643223 () Bool)

(assert (= bs!442361 (and d!643223 d!643221)))

(declare-fun lambda!78441 () Int)

(assert (=> bs!442361 (= lambda!78441 lambda!78440)))

(declare-fun bs!442362 () Bool)

(assert (= bs!442362 (and d!643223 d!643159)))

(assert (=> bs!442362 (= lambda!78441 lambda!78415)))

(declare-fun bs!442363 () Bool)

(assert (= bs!442363 (and d!643223 d!643199)))

(assert (=> bs!442363 (= lambda!78441 lambda!78429)))

(declare-fun bs!442364 () Bool)

(assert (= bs!442364 (and d!643223 d!643163)))

(assert (=> bs!442364 (= lambda!78441 lambda!78416)))

(declare-fun bs!442365 () Bool)

(assert (= bs!442365 (and d!643223 d!643171)))

(assert (=> bs!442365 (= lambda!78441 lambda!78420)))

(declare-fun bs!442366 () Bool)

(assert (= bs!442366 (and d!643223 d!643201)))

(assert (=> bs!442366 (= lambda!78441 lambda!78430)))

(declare-fun bs!442367 () Bool)

(assert (= bs!442367 (and d!643223 d!643165)))

(assert (=> bs!442367 (= lambda!78441 lambda!78417)))

(declare-fun bs!442368 () Bool)

(assert (= bs!442368 (and d!643223 d!643175)))

(assert (=> bs!442368 (= lambda!78441 lambda!78421)))

(declare-fun bs!442369 () Bool)

(assert (= bs!442369 (and d!643223 d!643141)))

(assert (=> bs!442369 (= lambda!78441 lambda!78411)))

(declare-fun bs!442370 () Bool)

(assert (= bs!442370 (and d!643223 d!643155)))

(assert (=> bs!442370 (= lambda!78441 lambda!78413)))

(declare-fun bs!442371 () Bool)

(assert (= bs!442371 (and d!643223 d!643215)))

(assert (=> bs!442371 (= lambda!78441 lambda!78439)))

(declare-fun bs!442372 () Bool)

(assert (= bs!442372 (and d!643223 d!643157)))

(assert (=> bs!442372 (= lambda!78441 lambda!78414)))

(declare-fun bs!442373 () Bool)

(assert (= bs!442373 (and d!643223 d!643179)))

(assert (=> bs!442373 (= lambda!78441 lambda!78422)))

(declare-fun bs!442374 () Bool)

(assert (= bs!442374 (and d!643223 d!643107)))

(assert (=> bs!442374 (= lambda!78441 lambda!78410)))

(declare-fun bs!442375 () Bool)

(assert (= bs!442375 (and d!643223 d!643195)))

(assert (=> bs!442375 (= lambda!78441 lambda!78428)))

(declare-fun bs!442376 () Bool)

(assert (= bs!442376 (and d!643223 d!643169)))

(assert (=> bs!442376 (= lambda!78441 lambda!78419)))

(declare-fun bs!442377 () Bool)

(assert (= bs!442377 (and d!643223 d!643211)))

(assert (=> bs!442377 (= lambda!78441 lambda!78438)))

(declare-fun bs!442378 () Bool)

(assert (= bs!442378 (and d!643223 d!643167)))

(assert (=> bs!442378 (= lambda!78441 lambda!78418)))

(declare-fun bs!442379 () Bool)

(assert (= bs!442379 (and d!643223 d!643143)))

(assert (=> bs!442379 (= lambda!78441 lambda!78412)))

(declare-fun bs!442380 () Bool)

(assert (= bs!442380 (and d!643223 d!643209)))

(assert (=> bs!442380 (= lambda!78441 lambda!78437)))

(declare-fun bs!442381 () Bool)

(assert (= bs!442381 (and d!643223 d!643185)))

(assert (=> bs!442381 (= lambda!78441 lambda!78423)))

(declare-fun bs!442382 () Bool)

(assert (= bs!442382 (and d!643223 d!643187)))

(assert (=> bs!442382 (= lambda!78441 lambda!78424)))

(assert (=> d!643223 (= (inv!31192 (_2!13464 (_1!13465 (h!29013 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))))) (forall!4851 (exprs!1717 (_2!13464 (_1!13465 (h!29013 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))))) lambda!78441))))

(declare-fun bs!442383 () Bool)

(assert (= bs!442383 d!643223))

(declare-fun m!2573733 () Bool)

(assert (=> bs!442383 m!2573733))

(assert (=> b!2118756 d!643223))

(declare-fun d!643225 () Bool)

(declare-fun res!918659 () Bool)

(declare-fun e!1348994 () Bool)

(assert (=> d!643225 (=> (not res!918659) (not e!1348994))))

(assert (=> d!643225 (= res!918659 (<= (size!18444 (list!9513 (xs!10728 (c!339599 totalInput!886)))) 512))))

(assert (=> d!643225 (= (inv!31199 (c!339599 totalInput!886)) e!1348994)))

(declare-fun b!2119002 () Bool)

(declare-fun res!918660 () Bool)

(assert (=> b!2119002 (=> (not res!918660) (not e!1348994))))

(assert (=> b!2119002 (= res!918660 (= (csize!15803 (c!339599 totalInput!886)) (size!18444 (list!9513 (xs!10728 (c!339599 totalInput!886))))))))

(declare-fun b!2119003 () Bool)

(assert (=> b!2119003 (= e!1348994 (and (> (csize!15803 (c!339599 totalInput!886)) 0) (<= (csize!15803 (c!339599 totalInput!886)) 512)))))

(assert (= (and d!643225 res!918659) b!2119002))

(assert (= (and b!2119002 res!918660) b!2119003))

(declare-fun m!2573735 () Bool)

(assert (=> d!643225 m!2573735))

(assert (=> d!643225 m!2573735))

(declare-fun m!2573737 () Bool)

(assert (=> d!643225 m!2573737))

(assert (=> b!2119002 m!2573735))

(assert (=> b!2119002 m!2573735))

(assert (=> b!2119002 m!2573737))

(assert (=> b!2118728 d!643225))

(declare-fun bs!442384 () Bool)

(declare-fun d!643227 () Bool)

(assert (= bs!442384 (and d!643227 d!643221)))

(declare-fun lambda!78442 () Int)

(assert (=> bs!442384 (= lambda!78442 lambda!78440)))

(declare-fun bs!442385 () Bool)

(assert (= bs!442385 (and d!643227 d!643159)))

(assert (=> bs!442385 (= lambda!78442 lambda!78415)))

(declare-fun bs!442386 () Bool)

(assert (= bs!442386 (and d!643227 d!643199)))

(assert (=> bs!442386 (= lambda!78442 lambda!78429)))

(declare-fun bs!442387 () Bool)

(assert (= bs!442387 (and d!643227 d!643163)))

(assert (=> bs!442387 (= lambda!78442 lambda!78416)))

(declare-fun bs!442388 () Bool)

(assert (= bs!442388 (and d!643227 d!643171)))

(assert (=> bs!442388 (= lambda!78442 lambda!78420)))

(declare-fun bs!442389 () Bool)

(assert (= bs!442389 (and d!643227 d!643201)))

(assert (=> bs!442389 (= lambda!78442 lambda!78430)))

(declare-fun bs!442390 () Bool)

(assert (= bs!442390 (and d!643227 d!643165)))

(assert (=> bs!442390 (= lambda!78442 lambda!78417)))

(declare-fun bs!442391 () Bool)

(assert (= bs!442391 (and d!643227 d!643141)))

(assert (=> bs!442391 (= lambda!78442 lambda!78411)))

(declare-fun bs!442392 () Bool)

(assert (= bs!442392 (and d!643227 d!643155)))

(assert (=> bs!442392 (= lambda!78442 lambda!78413)))

(declare-fun bs!442393 () Bool)

(assert (= bs!442393 (and d!643227 d!643215)))

(assert (=> bs!442393 (= lambda!78442 lambda!78439)))

(declare-fun bs!442394 () Bool)

(assert (= bs!442394 (and d!643227 d!643157)))

(assert (=> bs!442394 (= lambda!78442 lambda!78414)))

(declare-fun bs!442395 () Bool)

(assert (= bs!442395 (and d!643227 d!643179)))

(assert (=> bs!442395 (= lambda!78442 lambda!78422)))

(declare-fun bs!442396 () Bool)

(assert (= bs!442396 (and d!643227 d!643107)))

(assert (=> bs!442396 (= lambda!78442 lambda!78410)))

(declare-fun bs!442397 () Bool)

(assert (= bs!442397 (and d!643227 d!643195)))

(assert (=> bs!442397 (= lambda!78442 lambda!78428)))

(declare-fun bs!442398 () Bool)

(assert (= bs!442398 (and d!643227 d!643169)))

(assert (=> bs!442398 (= lambda!78442 lambda!78419)))

(declare-fun bs!442399 () Bool)

(assert (= bs!442399 (and d!643227 d!643211)))

(assert (=> bs!442399 (= lambda!78442 lambda!78438)))

(declare-fun bs!442400 () Bool)

(assert (= bs!442400 (and d!643227 d!643167)))

(assert (=> bs!442400 (= lambda!78442 lambda!78418)))

(declare-fun bs!442401 () Bool)

(assert (= bs!442401 (and d!643227 d!643143)))

(assert (=> bs!442401 (= lambda!78442 lambda!78412)))

(declare-fun bs!442402 () Bool)

(assert (= bs!442402 (and d!643227 d!643209)))

(assert (=> bs!442402 (= lambda!78442 lambda!78437)))

(declare-fun bs!442403 () Bool)

(assert (= bs!442403 (and d!643227 d!643175)))

(assert (=> bs!442403 (= lambda!78442 lambda!78421)))

(declare-fun bs!442404 () Bool)

(assert (= bs!442404 (and d!643227 d!643223)))

(assert (=> bs!442404 (= lambda!78442 lambda!78441)))

(declare-fun bs!442405 () Bool)

(assert (= bs!442405 (and d!643227 d!643185)))

(assert (=> bs!442405 (= lambda!78442 lambda!78423)))

(declare-fun bs!442406 () Bool)

(assert (= bs!442406 (and d!643227 d!643187)))

(assert (=> bs!442406 (= lambda!78442 lambda!78424)))

(assert (=> d!643227 (= (inv!31192 (_2!13464 (_1!13465 (h!29013 mapValue!11635)))) (forall!4851 (exprs!1717 (_2!13464 (_1!13465 (h!29013 mapValue!11635)))) lambda!78442))))

(declare-fun bs!442407 () Bool)

(assert (= bs!442407 d!643227))

(declare-fun m!2573739 () Bool)

(assert (=> bs!442407 m!2573739))

(assert (=> b!2118802 d!643227))

(declare-fun bs!442408 () Bool)

(declare-fun d!643229 () Bool)

(assert (= bs!442408 (and d!643229 d!643221)))

(declare-fun lambda!78443 () Int)

(assert (=> bs!442408 (= lambda!78443 lambda!78440)))

(declare-fun bs!442409 () Bool)

(assert (= bs!442409 (and d!643229 d!643159)))

(assert (=> bs!442409 (= lambda!78443 lambda!78415)))

(declare-fun bs!442410 () Bool)

(assert (= bs!442410 (and d!643229 d!643199)))

(assert (=> bs!442410 (= lambda!78443 lambda!78429)))

(declare-fun bs!442411 () Bool)

(assert (= bs!442411 (and d!643229 d!643163)))

(assert (=> bs!442411 (= lambda!78443 lambda!78416)))

(declare-fun bs!442412 () Bool)

(assert (= bs!442412 (and d!643229 d!643227)))

(assert (=> bs!442412 (= lambda!78443 lambda!78442)))

(declare-fun bs!442413 () Bool)

(assert (= bs!442413 (and d!643229 d!643171)))

(assert (=> bs!442413 (= lambda!78443 lambda!78420)))

(declare-fun bs!442414 () Bool)

(assert (= bs!442414 (and d!643229 d!643201)))

(assert (=> bs!442414 (= lambda!78443 lambda!78430)))

(declare-fun bs!442415 () Bool)

(assert (= bs!442415 (and d!643229 d!643165)))

(assert (=> bs!442415 (= lambda!78443 lambda!78417)))

(declare-fun bs!442416 () Bool)

(assert (= bs!442416 (and d!643229 d!643141)))

(assert (=> bs!442416 (= lambda!78443 lambda!78411)))

(declare-fun bs!442417 () Bool)

(assert (= bs!442417 (and d!643229 d!643155)))

(assert (=> bs!442417 (= lambda!78443 lambda!78413)))

(declare-fun bs!442418 () Bool)

(assert (= bs!442418 (and d!643229 d!643215)))

(assert (=> bs!442418 (= lambda!78443 lambda!78439)))

(declare-fun bs!442419 () Bool)

(assert (= bs!442419 (and d!643229 d!643157)))

(assert (=> bs!442419 (= lambda!78443 lambda!78414)))

(declare-fun bs!442420 () Bool)

(assert (= bs!442420 (and d!643229 d!643179)))

(assert (=> bs!442420 (= lambda!78443 lambda!78422)))

(declare-fun bs!442421 () Bool)

(assert (= bs!442421 (and d!643229 d!643107)))

(assert (=> bs!442421 (= lambda!78443 lambda!78410)))

(declare-fun bs!442422 () Bool)

(assert (= bs!442422 (and d!643229 d!643195)))

(assert (=> bs!442422 (= lambda!78443 lambda!78428)))

(declare-fun bs!442423 () Bool)

(assert (= bs!442423 (and d!643229 d!643169)))

(assert (=> bs!442423 (= lambda!78443 lambda!78419)))

(declare-fun bs!442424 () Bool)

(assert (= bs!442424 (and d!643229 d!643211)))

(assert (=> bs!442424 (= lambda!78443 lambda!78438)))

(declare-fun bs!442425 () Bool)

(assert (= bs!442425 (and d!643229 d!643167)))

(assert (=> bs!442425 (= lambda!78443 lambda!78418)))

(declare-fun bs!442426 () Bool)

(assert (= bs!442426 (and d!643229 d!643143)))

(assert (=> bs!442426 (= lambda!78443 lambda!78412)))

(declare-fun bs!442427 () Bool)

(assert (= bs!442427 (and d!643229 d!643209)))

(assert (=> bs!442427 (= lambda!78443 lambda!78437)))

(declare-fun bs!442428 () Bool)

(assert (= bs!442428 (and d!643229 d!643175)))

(assert (=> bs!442428 (= lambda!78443 lambda!78421)))

(declare-fun bs!442429 () Bool)

(assert (= bs!442429 (and d!643229 d!643223)))

(assert (=> bs!442429 (= lambda!78443 lambda!78441)))

(declare-fun bs!442430 () Bool)

(assert (= bs!442430 (and d!643229 d!643185)))

(assert (=> bs!442430 (= lambda!78443 lambda!78423)))

(declare-fun bs!442431 () Bool)

(assert (= bs!442431 (and d!643229 d!643187)))

(assert (=> bs!442431 (= lambda!78443 lambda!78424)))

(assert (=> d!643229 (= (inv!31192 (_1!13460 (_1!13461 (h!29010 mapValue!11630)))) (forall!4851 (exprs!1717 (_1!13460 (_1!13461 (h!29010 mapValue!11630)))) lambda!78443))))

(declare-fun bs!442432 () Bool)

(assert (= bs!442432 d!643229))

(declare-fun m!2573741 () Bool)

(assert (=> bs!442432 m!2573741))

(assert (=> b!2118864 d!643229))

(assert (=> b!2118737 d!643203))

(declare-fun d!643231 () Bool)

(declare-fun res!918661 () Bool)

(declare-fun e!1348995 () Bool)

(assert (=> d!643231 (=> (not res!918661) (not e!1348995))))

(assert (=> d!643231 (= res!918661 (= (csize!15802 (c!339599 input!5507)) (+ (size!18445 (left!18284 (c!339599 input!5507))) (size!18445 (right!18614 (c!339599 input!5507))))))))

(assert (=> d!643231 (= (inv!31198 (c!339599 input!5507)) e!1348995)))

(declare-fun b!2119004 () Bool)

(declare-fun res!918662 () Bool)

(assert (=> b!2119004 (=> (not res!918662) (not e!1348995))))

(assert (=> b!2119004 (= res!918662 (and (not (= (left!18284 (c!339599 input!5507)) Empty!7786)) (not (= (right!18614 (c!339599 input!5507)) Empty!7786))))))

(declare-fun b!2119005 () Bool)

(declare-fun res!918663 () Bool)

(assert (=> b!2119005 (=> (not res!918663) (not e!1348995))))

(assert (=> b!2119005 (= res!918663 (= (cheight!7997 (c!339599 input!5507)) (+ (max!0 (height!1231 (left!18284 (c!339599 input!5507))) (height!1231 (right!18614 (c!339599 input!5507)))) 1)))))

(declare-fun b!2119006 () Bool)

(assert (=> b!2119006 (= e!1348995 (<= 0 (cheight!7997 (c!339599 input!5507))))))

(assert (= (and d!643231 res!918661) b!2119004))

(assert (= (and b!2119004 res!918662) b!2119005))

(assert (= (and b!2119005 res!918663) b!2119006))

(declare-fun m!2573743 () Bool)

(assert (=> d!643231 m!2573743))

(declare-fun m!2573745 () Bool)

(assert (=> d!643231 m!2573745))

(assert (=> b!2119005 m!2573628))

(assert (=> b!2119005 m!2573630))

(assert (=> b!2119005 m!2573628))

(assert (=> b!2119005 m!2573630))

(declare-fun m!2573747 () Bool)

(assert (=> b!2119005 m!2573747))

(assert (=> b!2118723 d!643231))

(assert (=> d!643103 d!643147))

(assert (=> d!643103 d!643123))

(declare-fun d!643233 () Bool)

(declare-fun lt!794445 () Int)

(assert (=> d!643233 (= lt!794445 (size!18444 (list!9512 (c!339599 totalInput!886))))))

(assert (=> d!643233 (= lt!794445 (ite ((_ is Empty!7786) (c!339599 totalInput!886)) 0 (ite ((_ is Leaf!11377) (c!339599 totalInput!886)) (csize!15803 (c!339599 totalInput!886)) (csize!15802 (c!339599 totalInput!886)))))))

(assert (=> d!643233 (= (size!18445 (c!339599 totalInput!886)) lt!794445)))

(declare-fun bs!442433 () Bool)

(assert (= bs!442433 d!643233))

(assert (=> bs!442433 m!2573480))

(assert (=> bs!442433 m!2573480))

(declare-fun m!2573749 () Bool)

(assert (=> bs!442433 m!2573749))

(assert (=> d!643103 d!643233))

(declare-fun d!643235 () Bool)

(declare-fun res!918668 () Bool)

(declare-fun e!1349000 () Bool)

(assert (=> d!643235 (=> res!918668 e!1349000)))

(assert (=> d!643235 (= res!918668 ((_ is Nil!23608) (exprs!1717 setElem!14526)))))

(assert (=> d!643235 (= (forall!4851 (exprs!1717 setElem!14526) lambda!78410) e!1349000)))

(declare-fun b!2119011 () Bool)

(declare-fun e!1349001 () Bool)

(assert (=> b!2119011 (= e!1349000 e!1349001)))

(declare-fun res!918669 () Bool)

(assert (=> b!2119011 (=> (not res!918669) (not e!1349001))))

(declare-fun dynLambda!11303 (Int Regex!5647) Bool)

(assert (=> b!2119011 (= res!918669 (dynLambda!11303 lambda!78410 (h!29009 (exprs!1717 setElem!14526))))))

(declare-fun b!2119012 () Bool)

(assert (=> b!2119012 (= e!1349001 (forall!4851 (t!196205 (exprs!1717 setElem!14526)) lambda!78410))))

(assert (= (and d!643235 (not res!918668)) b!2119011))

(assert (= (and b!2119011 res!918669) b!2119012))

(declare-fun b_lambda!70441 () Bool)

(assert (=> (not b_lambda!70441) (not b!2119011)))

(declare-fun m!2573751 () Bool)

(assert (=> b!2119011 m!2573751))

(declare-fun m!2573753 () Bool)

(assert (=> b!2119012 m!2573753))

(assert (=> d!643107 d!643235))

(declare-fun bs!442434 () Bool)

(declare-fun d!643237 () Bool)

(assert (= bs!442434 (and d!643237 d!643221)))

(declare-fun lambda!78444 () Int)

(assert (=> bs!442434 (= lambda!78444 lambda!78440)))

(declare-fun bs!442435 () Bool)

(assert (= bs!442435 (and d!643237 d!643159)))

(assert (=> bs!442435 (= lambda!78444 lambda!78415)))

(declare-fun bs!442436 () Bool)

(assert (= bs!442436 (and d!643237 d!643199)))

(assert (=> bs!442436 (= lambda!78444 lambda!78429)))

(declare-fun bs!442437 () Bool)

(assert (= bs!442437 (and d!643237 d!643163)))

(assert (=> bs!442437 (= lambda!78444 lambda!78416)))

(declare-fun bs!442438 () Bool)

(assert (= bs!442438 (and d!643237 d!643227)))

(assert (=> bs!442438 (= lambda!78444 lambda!78442)))

(declare-fun bs!442439 () Bool)

(assert (= bs!442439 (and d!643237 d!643171)))

(assert (=> bs!442439 (= lambda!78444 lambda!78420)))

(declare-fun bs!442440 () Bool)

(assert (= bs!442440 (and d!643237 d!643201)))

(assert (=> bs!442440 (= lambda!78444 lambda!78430)))

(declare-fun bs!442441 () Bool)

(assert (= bs!442441 (and d!643237 d!643165)))

(assert (=> bs!442441 (= lambda!78444 lambda!78417)))

(declare-fun bs!442442 () Bool)

(assert (= bs!442442 (and d!643237 d!643229)))

(assert (=> bs!442442 (= lambda!78444 lambda!78443)))

(declare-fun bs!442443 () Bool)

(assert (= bs!442443 (and d!643237 d!643141)))

(assert (=> bs!442443 (= lambda!78444 lambda!78411)))

(declare-fun bs!442444 () Bool)

(assert (= bs!442444 (and d!643237 d!643155)))

(assert (=> bs!442444 (= lambda!78444 lambda!78413)))

(declare-fun bs!442445 () Bool)

(assert (= bs!442445 (and d!643237 d!643215)))

(assert (=> bs!442445 (= lambda!78444 lambda!78439)))

(declare-fun bs!442446 () Bool)

(assert (= bs!442446 (and d!643237 d!643157)))

(assert (=> bs!442446 (= lambda!78444 lambda!78414)))

(declare-fun bs!442447 () Bool)

(assert (= bs!442447 (and d!643237 d!643179)))

(assert (=> bs!442447 (= lambda!78444 lambda!78422)))

(declare-fun bs!442448 () Bool)

(assert (= bs!442448 (and d!643237 d!643107)))

(assert (=> bs!442448 (= lambda!78444 lambda!78410)))

(declare-fun bs!442449 () Bool)

(assert (= bs!442449 (and d!643237 d!643195)))

(assert (=> bs!442449 (= lambda!78444 lambda!78428)))

(declare-fun bs!442450 () Bool)

(assert (= bs!442450 (and d!643237 d!643169)))

(assert (=> bs!442450 (= lambda!78444 lambda!78419)))

(declare-fun bs!442451 () Bool)

(assert (= bs!442451 (and d!643237 d!643211)))

(assert (=> bs!442451 (= lambda!78444 lambda!78438)))

(declare-fun bs!442452 () Bool)

(assert (= bs!442452 (and d!643237 d!643167)))

(assert (=> bs!442452 (= lambda!78444 lambda!78418)))

(declare-fun bs!442453 () Bool)

(assert (= bs!442453 (and d!643237 d!643143)))

(assert (=> bs!442453 (= lambda!78444 lambda!78412)))

(declare-fun bs!442454 () Bool)

(assert (= bs!442454 (and d!643237 d!643209)))

(assert (=> bs!442454 (= lambda!78444 lambda!78437)))

(declare-fun bs!442455 () Bool)

(assert (= bs!442455 (and d!643237 d!643175)))

(assert (=> bs!442455 (= lambda!78444 lambda!78421)))

(declare-fun bs!442456 () Bool)

(assert (= bs!442456 (and d!643237 d!643223)))

(assert (=> bs!442456 (= lambda!78444 lambda!78441)))

(declare-fun bs!442457 () Bool)

(assert (= bs!442457 (and d!643237 d!643185)))

(assert (=> bs!442457 (= lambda!78444 lambda!78423)))

(declare-fun bs!442458 () Bool)

(assert (= bs!442458 (and d!643237 d!643187)))

(assert (=> bs!442458 (= lambda!78444 lambda!78424)))

(assert (=> d!643237 (= (inv!31192 setElem!14550) (forall!4851 (exprs!1717 setElem!14550) lambda!78444))))

(declare-fun bs!442459 () Bool)

(assert (= bs!442459 d!643237))

(declare-fun m!2573755 () Bool)

(assert (=> bs!442459 m!2573755))

(assert (=> setNonEmpty!14549 d!643237))

(declare-fun d!643239 () Bool)

(declare-fun res!918670 () Bool)

(declare-fun e!1349002 () Bool)

(assert (=> d!643239 (=> (not res!918670) (not e!1349002))))

(assert (=> d!643239 (= res!918670 (<= (size!18444 (list!9513 (xs!10728 (c!339599 input!5507)))) 512))))

(assert (=> d!643239 (= (inv!31199 (c!339599 input!5507)) e!1349002)))

(declare-fun b!2119013 () Bool)

(declare-fun res!918671 () Bool)

(assert (=> b!2119013 (=> (not res!918671) (not e!1349002))))

(assert (=> b!2119013 (= res!918671 (= (csize!15803 (c!339599 input!5507)) (size!18444 (list!9513 (xs!10728 (c!339599 input!5507))))))))

(declare-fun b!2119014 () Bool)

(assert (=> b!2119014 (= e!1349002 (and (> (csize!15803 (c!339599 input!5507)) 0) (<= (csize!15803 (c!339599 input!5507)) 512)))))

(assert (= (and d!643239 res!918670) b!2119013))

(assert (= (and b!2119013 res!918671) b!2119014))

(assert (=> d!643239 m!2573694))

(assert (=> d!643239 m!2573694))

(declare-fun m!2573757 () Bool)

(assert (=> d!643239 m!2573757))

(assert (=> b!2119013 m!2573694))

(assert (=> b!2119013 m!2573694))

(assert (=> b!2119013 m!2573757))

(assert (=> b!2118725 d!643239))

(declare-fun bs!442460 () Bool)

(declare-fun d!643241 () Bool)

(assert (= bs!442460 (and d!643241 d!643221)))

(declare-fun lambda!78445 () Int)

(assert (=> bs!442460 (= lambda!78445 lambda!78440)))

(declare-fun bs!442461 () Bool)

(assert (= bs!442461 (and d!643241 d!643159)))

(assert (=> bs!442461 (= lambda!78445 lambda!78415)))

(declare-fun bs!442462 () Bool)

(assert (= bs!442462 (and d!643241 d!643163)))

(assert (=> bs!442462 (= lambda!78445 lambda!78416)))

(declare-fun bs!442463 () Bool)

(assert (= bs!442463 (and d!643241 d!643227)))

(assert (=> bs!442463 (= lambda!78445 lambda!78442)))

(declare-fun bs!442464 () Bool)

(assert (= bs!442464 (and d!643241 d!643171)))

(assert (=> bs!442464 (= lambda!78445 lambda!78420)))

(declare-fun bs!442465 () Bool)

(assert (= bs!442465 (and d!643241 d!643201)))

(assert (=> bs!442465 (= lambda!78445 lambda!78430)))

(declare-fun bs!442466 () Bool)

(assert (= bs!442466 (and d!643241 d!643165)))

(assert (=> bs!442466 (= lambda!78445 lambda!78417)))

(declare-fun bs!442467 () Bool)

(assert (= bs!442467 (and d!643241 d!643229)))

(assert (=> bs!442467 (= lambda!78445 lambda!78443)))

(declare-fun bs!442468 () Bool)

(assert (= bs!442468 (and d!643241 d!643141)))

(assert (=> bs!442468 (= lambda!78445 lambda!78411)))

(declare-fun bs!442469 () Bool)

(assert (= bs!442469 (and d!643241 d!643155)))

(assert (=> bs!442469 (= lambda!78445 lambda!78413)))

(declare-fun bs!442470 () Bool)

(assert (= bs!442470 (and d!643241 d!643215)))

(assert (=> bs!442470 (= lambda!78445 lambda!78439)))

(declare-fun bs!442471 () Bool)

(assert (= bs!442471 (and d!643241 d!643157)))

(assert (=> bs!442471 (= lambda!78445 lambda!78414)))

(declare-fun bs!442472 () Bool)

(assert (= bs!442472 (and d!643241 d!643179)))

(assert (=> bs!442472 (= lambda!78445 lambda!78422)))

(declare-fun bs!442473 () Bool)

(assert (= bs!442473 (and d!643241 d!643107)))

(assert (=> bs!442473 (= lambda!78445 lambda!78410)))

(declare-fun bs!442474 () Bool)

(assert (= bs!442474 (and d!643241 d!643199)))

(assert (=> bs!442474 (= lambda!78445 lambda!78429)))

(declare-fun bs!442475 () Bool)

(assert (= bs!442475 (and d!643241 d!643237)))

(assert (=> bs!442475 (= lambda!78445 lambda!78444)))

(declare-fun bs!442476 () Bool)

(assert (= bs!442476 (and d!643241 d!643195)))

(assert (=> bs!442476 (= lambda!78445 lambda!78428)))

(declare-fun bs!442477 () Bool)

(assert (= bs!442477 (and d!643241 d!643169)))

(assert (=> bs!442477 (= lambda!78445 lambda!78419)))

(declare-fun bs!442478 () Bool)

(assert (= bs!442478 (and d!643241 d!643211)))

(assert (=> bs!442478 (= lambda!78445 lambda!78438)))

(declare-fun bs!442479 () Bool)

(assert (= bs!442479 (and d!643241 d!643167)))

(assert (=> bs!442479 (= lambda!78445 lambda!78418)))

(declare-fun bs!442480 () Bool)

(assert (= bs!442480 (and d!643241 d!643143)))

(assert (=> bs!442480 (= lambda!78445 lambda!78412)))

(declare-fun bs!442481 () Bool)

(assert (= bs!442481 (and d!643241 d!643209)))

(assert (=> bs!442481 (= lambda!78445 lambda!78437)))

(declare-fun bs!442482 () Bool)

(assert (= bs!442482 (and d!643241 d!643175)))

(assert (=> bs!442482 (= lambda!78445 lambda!78421)))

(declare-fun bs!442483 () Bool)

(assert (= bs!442483 (and d!643241 d!643223)))

(assert (=> bs!442483 (= lambda!78445 lambda!78441)))

(declare-fun bs!442484 () Bool)

(assert (= bs!442484 (and d!643241 d!643185)))

(assert (=> bs!442484 (= lambda!78445 lambda!78423)))

(declare-fun bs!442485 () Bool)

(assert (= bs!442485 (and d!643241 d!643187)))

(assert (=> bs!442485 (= lambda!78445 lambda!78424)))

(assert (=> d!643241 (= (inv!31192 setElem!14562) (forall!4851 (exprs!1717 setElem!14562) lambda!78445))))

(declare-fun bs!442486 () Bool)

(assert (= bs!442486 d!643241))

(declare-fun m!2573759 () Bool)

(assert (=> bs!442486 m!2573759))

(assert (=> setNonEmpty!14562 d!643241))

(declare-fun d!643243 () Bool)

(declare-fun c!339631 () Bool)

(assert (=> d!643243 (= c!339631 ((_ is Node!7786) (left!18284 (c!339599 totalInput!886))))))

(declare-fun e!1349003 () Bool)

(assert (=> d!643243 (= (inv!31193 (left!18284 (c!339599 totalInput!886))) e!1349003)))

(declare-fun b!2119015 () Bool)

(assert (=> b!2119015 (= e!1349003 (inv!31198 (left!18284 (c!339599 totalInput!886))))))

(declare-fun b!2119016 () Bool)

(declare-fun e!1349004 () Bool)

(assert (=> b!2119016 (= e!1349003 e!1349004)))

(declare-fun res!918672 () Bool)

(assert (=> b!2119016 (= res!918672 (not ((_ is Leaf!11377) (left!18284 (c!339599 totalInput!886)))))))

(assert (=> b!2119016 (=> res!918672 e!1349004)))

(declare-fun b!2119017 () Bool)

(assert (=> b!2119017 (= e!1349004 (inv!31199 (left!18284 (c!339599 totalInput!886))))))

(assert (= (and d!643243 c!339631) b!2119015))

(assert (= (and d!643243 (not c!339631)) b!2119016))

(assert (= (and b!2119016 (not res!918672)) b!2119017))

(declare-fun m!2573761 () Bool)

(assert (=> b!2119015 m!2573761))

(declare-fun m!2573763 () Bool)

(assert (=> b!2119017 m!2573763))

(assert (=> b!2118769 d!643243))

(declare-fun d!643245 () Bool)

(declare-fun c!339632 () Bool)

(assert (=> d!643245 (= c!339632 ((_ is Node!7786) (right!18614 (c!339599 totalInput!886))))))

(declare-fun e!1349005 () Bool)

(assert (=> d!643245 (= (inv!31193 (right!18614 (c!339599 totalInput!886))) e!1349005)))

(declare-fun b!2119018 () Bool)

(assert (=> b!2119018 (= e!1349005 (inv!31198 (right!18614 (c!339599 totalInput!886))))))

(declare-fun b!2119019 () Bool)

(declare-fun e!1349006 () Bool)

(assert (=> b!2119019 (= e!1349005 e!1349006)))

(declare-fun res!918673 () Bool)

(assert (=> b!2119019 (= res!918673 (not ((_ is Leaf!11377) (right!18614 (c!339599 totalInput!886)))))))

(assert (=> b!2119019 (=> res!918673 e!1349006)))

(declare-fun b!2119020 () Bool)

(assert (=> b!2119020 (= e!1349006 (inv!31199 (right!18614 (c!339599 totalInput!886))))))

(assert (= (and d!643245 c!339632) b!2119018))

(assert (= (and d!643245 (not c!339632)) b!2119019))

(assert (= (and b!2119019 (not res!918673)) b!2119020))

(declare-fun m!2573765 () Bool)

(assert (=> b!2119018 m!2573765))

(declare-fun m!2573767 () Bool)

(assert (=> b!2119020 m!2573767))

(assert (=> b!2118769 d!643245))

(declare-fun bs!442487 () Bool)

(declare-fun d!643247 () Bool)

(assert (= bs!442487 (and d!643247 d!643221)))

(declare-fun lambda!78446 () Int)

(assert (=> bs!442487 (= lambda!78446 lambda!78440)))

(declare-fun bs!442488 () Bool)

(assert (= bs!442488 (and d!643247 d!643159)))

(assert (=> bs!442488 (= lambda!78446 lambda!78415)))

(declare-fun bs!442489 () Bool)

(assert (= bs!442489 (and d!643247 d!643163)))

(assert (=> bs!442489 (= lambda!78446 lambda!78416)))

(declare-fun bs!442490 () Bool)

(assert (= bs!442490 (and d!643247 d!643227)))

(assert (=> bs!442490 (= lambda!78446 lambda!78442)))

(declare-fun bs!442491 () Bool)

(assert (= bs!442491 (and d!643247 d!643171)))

(assert (=> bs!442491 (= lambda!78446 lambda!78420)))

(declare-fun bs!442492 () Bool)

(assert (= bs!442492 (and d!643247 d!643201)))

(assert (=> bs!442492 (= lambda!78446 lambda!78430)))

(declare-fun bs!442493 () Bool)

(assert (= bs!442493 (and d!643247 d!643165)))

(assert (=> bs!442493 (= lambda!78446 lambda!78417)))

(declare-fun bs!442494 () Bool)

(assert (= bs!442494 (and d!643247 d!643229)))

(assert (=> bs!442494 (= lambda!78446 lambda!78443)))

(declare-fun bs!442495 () Bool)

(assert (= bs!442495 (and d!643247 d!643155)))

(assert (=> bs!442495 (= lambda!78446 lambda!78413)))

(declare-fun bs!442496 () Bool)

(assert (= bs!442496 (and d!643247 d!643215)))

(assert (=> bs!442496 (= lambda!78446 lambda!78439)))

(declare-fun bs!442497 () Bool)

(assert (= bs!442497 (and d!643247 d!643157)))

(assert (=> bs!442497 (= lambda!78446 lambda!78414)))

(declare-fun bs!442498 () Bool)

(assert (= bs!442498 (and d!643247 d!643179)))

(assert (=> bs!442498 (= lambda!78446 lambda!78422)))

(declare-fun bs!442499 () Bool)

(assert (= bs!442499 (and d!643247 d!643107)))

(assert (=> bs!442499 (= lambda!78446 lambda!78410)))

(declare-fun bs!442500 () Bool)

(assert (= bs!442500 (and d!643247 d!643199)))

(assert (=> bs!442500 (= lambda!78446 lambda!78429)))

(declare-fun bs!442501 () Bool)

(assert (= bs!442501 (and d!643247 d!643237)))

(assert (=> bs!442501 (= lambda!78446 lambda!78444)))

(declare-fun bs!442502 () Bool)

(assert (= bs!442502 (and d!643247 d!643195)))

(assert (=> bs!442502 (= lambda!78446 lambda!78428)))

(declare-fun bs!442503 () Bool)

(assert (= bs!442503 (and d!643247 d!643169)))

(assert (=> bs!442503 (= lambda!78446 lambda!78419)))

(declare-fun bs!442504 () Bool)

(assert (= bs!442504 (and d!643247 d!643211)))

(assert (=> bs!442504 (= lambda!78446 lambda!78438)))

(declare-fun bs!442505 () Bool)

(assert (= bs!442505 (and d!643247 d!643167)))

(assert (=> bs!442505 (= lambda!78446 lambda!78418)))

(declare-fun bs!442506 () Bool)

(assert (= bs!442506 (and d!643247 d!643143)))

(assert (=> bs!442506 (= lambda!78446 lambda!78412)))

(declare-fun bs!442507 () Bool)

(assert (= bs!442507 (and d!643247 d!643209)))

(assert (=> bs!442507 (= lambda!78446 lambda!78437)))

(declare-fun bs!442508 () Bool)

(assert (= bs!442508 (and d!643247 d!643175)))

(assert (=> bs!442508 (= lambda!78446 lambda!78421)))

(declare-fun bs!442509 () Bool)

(assert (= bs!442509 (and d!643247 d!643223)))

(assert (=> bs!442509 (= lambda!78446 lambda!78441)))

(declare-fun bs!442510 () Bool)

(assert (= bs!442510 (and d!643247 d!643241)))

(assert (=> bs!442510 (= lambda!78446 lambda!78445)))

(declare-fun bs!442511 () Bool)

(assert (= bs!442511 (and d!643247 d!643141)))

(assert (=> bs!442511 (= lambda!78446 lambda!78411)))

(declare-fun bs!442512 () Bool)

(assert (= bs!442512 (and d!643247 d!643185)))

(assert (=> bs!442512 (= lambda!78446 lambda!78423)))

(declare-fun bs!442513 () Bool)

(assert (= bs!442513 (and d!643247 d!643187)))

(assert (=> bs!442513 (= lambda!78446 lambda!78424)))

(assert (=> d!643247 (= (inv!31192 (_2!13464 (_1!13465 (h!29013 mapDefault!11635)))) (forall!4851 (exprs!1717 (_2!13464 (_1!13465 (h!29013 mapDefault!11635)))) lambda!78446))))

(declare-fun bs!442514 () Bool)

(assert (= bs!442514 d!643247))

(declare-fun m!2573769 () Bool)

(assert (=> bs!442514 m!2573769))

(assert (=> b!2118807 d!643247))

(assert (=> b!2118734 d!643191))

(declare-fun bs!442515 () Bool)

(declare-fun d!643249 () Bool)

(assert (= bs!442515 (and d!643249 d!643221)))

(declare-fun lambda!78447 () Int)

(assert (=> bs!442515 (= lambda!78447 lambda!78440)))

(declare-fun bs!442516 () Bool)

(assert (= bs!442516 (and d!643249 d!643159)))

(assert (=> bs!442516 (= lambda!78447 lambda!78415)))

(declare-fun bs!442517 () Bool)

(assert (= bs!442517 (and d!643249 d!643247)))

(assert (=> bs!442517 (= lambda!78447 lambda!78446)))

(declare-fun bs!442518 () Bool)

(assert (= bs!442518 (and d!643249 d!643163)))

(assert (=> bs!442518 (= lambda!78447 lambda!78416)))

(declare-fun bs!442519 () Bool)

(assert (= bs!442519 (and d!643249 d!643227)))

(assert (=> bs!442519 (= lambda!78447 lambda!78442)))

(declare-fun bs!442520 () Bool)

(assert (= bs!442520 (and d!643249 d!643171)))

(assert (=> bs!442520 (= lambda!78447 lambda!78420)))

(declare-fun bs!442521 () Bool)

(assert (= bs!442521 (and d!643249 d!643201)))

(assert (=> bs!442521 (= lambda!78447 lambda!78430)))

(declare-fun bs!442522 () Bool)

(assert (= bs!442522 (and d!643249 d!643165)))

(assert (=> bs!442522 (= lambda!78447 lambda!78417)))

(declare-fun bs!442523 () Bool)

(assert (= bs!442523 (and d!643249 d!643229)))

(assert (=> bs!442523 (= lambda!78447 lambda!78443)))

(declare-fun bs!442524 () Bool)

(assert (= bs!442524 (and d!643249 d!643155)))

(assert (=> bs!442524 (= lambda!78447 lambda!78413)))

(declare-fun bs!442525 () Bool)

(assert (= bs!442525 (and d!643249 d!643215)))

(assert (=> bs!442525 (= lambda!78447 lambda!78439)))

(declare-fun bs!442526 () Bool)

(assert (= bs!442526 (and d!643249 d!643157)))

(assert (=> bs!442526 (= lambda!78447 lambda!78414)))

(declare-fun bs!442527 () Bool)

(assert (= bs!442527 (and d!643249 d!643179)))

(assert (=> bs!442527 (= lambda!78447 lambda!78422)))

(declare-fun bs!442528 () Bool)

(assert (= bs!442528 (and d!643249 d!643107)))

(assert (=> bs!442528 (= lambda!78447 lambda!78410)))

(declare-fun bs!442529 () Bool)

(assert (= bs!442529 (and d!643249 d!643199)))

(assert (=> bs!442529 (= lambda!78447 lambda!78429)))

(declare-fun bs!442530 () Bool)

(assert (= bs!442530 (and d!643249 d!643237)))

(assert (=> bs!442530 (= lambda!78447 lambda!78444)))

(declare-fun bs!442531 () Bool)

(assert (= bs!442531 (and d!643249 d!643195)))

(assert (=> bs!442531 (= lambda!78447 lambda!78428)))

(declare-fun bs!442532 () Bool)

(assert (= bs!442532 (and d!643249 d!643169)))

(assert (=> bs!442532 (= lambda!78447 lambda!78419)))

(declare-fun bs!442533 () Bool)

(assert (= bs!442533 (and d!643249 d!643211)))

(assert (=> bs!442533 (= lambda!78447 lambda!78438)))

(declare-fun bs!442534 () Bool)

(assert (= bs!442534 (and d!643249 d!643167)))

(assert (=> bs!442534 (= lambda!78447 lambda!78418)))

(declare-fun bs!442535 () Bool)

(assert (= bs!442535 (and d!643249 d!643143)))

(assert (=> bs!442535 (= lambda!78447 lambda!78412)))

(declare-fun bs!442536 () Bool)

(assert (= bs!442536 (and d!643249 d!643209)))

(assert (=> bs!442536 (= lambda!78447 lambda!78437)))

(declare-fun bs!442537 () Bool)

(assert (= bs!442537 (and d!643249 d!643175)))

(assert (=> bs!442537 (= lambda!78447 lambda!78421)))

(declare-fun bs!442538 () Bool)

(assert (= bs!442538 (and d!643249 d!643223)))

(assert (=> bs!442538 (= lambda!78447 lambda!78441)))

(declare-fun bs!442539 () Bool)

(assert (= bs!442539 (and d!643249 d!643241)))

(assert (=> bs!442539 (= lambda!78447 lambda!78445)))

(declare-fun bs!442540 () Bool)

(assert (= bs!442540 (and d!643249 d!643141)))

(assert (=> bs!442540 (= lambda!78447 lambda!78411)))

(declare-fun bs!442541 () Bool)

(assert (= bs!442541 (and d!643249 d!643185)))

(assert (=> bs!442541 (= lambda!78447 lambda!78423)))

(declare-fun bs!442542 () Bool)

(assert (= bs!442542 (and d!643249 d!643187)))

(assert (=> bs!442542 (= lambda!78447 lambda!78424)))

(assert (=> d!643249 (= (inv!31192 (_2!13464 (_1!13465 (h!29013 mapDefault!11632)))) (forall!4851 (exprs!1717 (_2!13464 (_1!13465 (h!29013 mapDefault!11632)))) lambda!78447))))

(declare-fun bs!442543 () Bool)

(assert (= bs!442543 d!643249))

(declare-fun m!2573771 () Bool)

(assert (=> bs!442543 m!2573771))

(assert (=> b!2118817 d!643249))

(assert (=> b!2118702 d!643115))

(declare-fun d!643251 () Bool)

(declare-fun c!339633 () Bool)

(assert (=> d!643251 (= c!339633 ((_ is Empty!7786) (c!339599 totalInput!886)))))

(declare-fun e!1349007 () List!23695)

(assert (=> d!643251 (= (list!9512 (c!339599 totalInput!886)) e!1349007)))

(declare-fun b!2119022 () Bool)

(declare-fun e!1349008 () List!23695)

(assert (=> b!2119022 (= e!1349007 e!1349008)))

(declare-fun c!339634 () Bool)

(assert (=> b!2119022 (= c!339634 ((_ is Leaf!11377) (c!339599 totalInput!886)))))

(declare-fun b!2119023 () Bool)

(assert (=> b!2119023 (= e!1349008 (list!9513 (xs!10728 (c!339599 totalInput!886))))))

(declare-fun b!2119024 () Bool)

(assert (=> b!2119024 (= e!1349008 (++!6315 (list!9512 (left!18284 (c!339599 totalInput!886))) (list!9512 (right!18614 (c!339599 totalInput!886)))))))

(declare-fun b!2119021 () Bool)

(assert (=> b!2119021 (= e!1349007 Nil!23611)))

(assert (= (and d!643251 c!339633) b!2119021))

(assert (= (and d!643251 (not c!339633)) b!2119022))

(assert (= (and b!2119022 c!339634) b!2119023))

(assert (= (and b!2119022 (not c!339634)) b!2119024))

(assert (=> b!2119023 m!2573735))

(declare-fun m!2573773 () Bool)

(assert (=> b!2119024 m!2573773))

(declare-fun m!2573775 () Bool)

(assert (=> b!2119024 m!2573775))

(assert (=> b!2119024 m!2573773))

(assert (=> b!2119024 m!2573775))

(declare-fun m!2573777 () Bool)

(assert (=> b!2119024 m!2573777))

(assert (=> d!643123 d!643251))

(assert (=> b!2118743 d!643147))

(assert (=> b!2118743 d!643149))

(declare-fun d!643253 () Bool)

(declare-fun c!339635 () Bool)

(assert (=> d!643253 (= c!339635 ((_ is Node!7786) (left!18284 (c!339599 input!5507))))))

(declare-fun e!1349009 () Bool)

(assert (=> d!643253 (= (inv!31193 (left!18284 (c!339599 input!5507))) e!1349009)))

(declare-fun b!2119025 () Bool)

(assert (=> b!2119025 (= e!1349009 (inv!31198 (left!18284 (c!339599 input!5507))))))

(declare-fun b!2119026 () Bool)

(declare-fun e!1349010 () Bool)

(assert (=> b!2119026 (= e!1349009 e!1349010)))

(declare-fun res!918674 () Bool)

(assert (=> b!2119026 (= res!918674 (not ((_ is Leaf!11377) (left!18284 (c!339599 input!5507)))))))

(assert (=> b!2119026 (=> res!918674 e!1349010)))

(declare-fun b!2119027 () Bool)

(assert (=> b!2119027 (= e!1349010 (inv!31199 (left!18284 (c!339599 input!5507))))))

(assert (= (and d!643253 c!339635) b!2119025))

(assert (= (and d!643253 (not c!339635)) b!2119026))

(assert (= (and b!2119026 (not res!918674)) b!2119027))

(declare-fun m!2573779 () Bool)

(assert (=> b!2119025 m!2573779))

(declare-fun m!2573781 () Bool)

(assert (=> b!2119027 m!2573781))

(assert (=> b!2118766 d!643253))

(declare-fun d!643255 () Bool)

(declare-fun c!339636 () Bool)

(assert (=> d!643255 (= c!339636 ((_ is Node!7786) (right!18614 (c!339599 input!5507))))))

(declare-fun e!1349011 () Bool)

(assert (=> d!643255 (= (inv!31193 (right!18614 (c!339599 input!5507))) e!1349011)))

(declare-fun b!2119028 () Bool)

(assert (=> b!2119028 (= e!1349011 (inv!31198 (right!18614 (c!339599 input!5507))))))

(declare-fun b!2119029 () Bool)

(declare-fun e!1349012 () Bool)

(assert (=> b!2119029 (= e!1349011 e!1349012)))

(declare-fun res!918675 () Bool)

(assert (=> b!2119029 (= res!918675 (not ((_ is Leaf!11377) (right!18614 (c!339599 input!5507)))))))

(assert (=> b!2119029 (=> res!918675 e!1349012)))

(declare-fun b!2119030 () Bool)

(assert (=> b!2119030 (= e!1349012 (inv!31199 (right!18614 (c!339599 input!5507))))))

(assert (= (and d!643255 c!339636) b!2119028))

(assert (= (and d!643255 (not c!339636)) b!2119029))

(assert (= (and b!2119029 (not res!918675)) b!2119030))

(declare-fun m!2573783 () Bool)

(assert (=> b!2119028 m!2573783))

(declare-fun m!2573785 () Bool)

(assert (=> b!2119030 m!2573785))

(assert (=> b!2118766 d!643255))

(declare-fun bs!442544 () Bool)

(declare-fun d!643257 () Bool)

(assert (= bs!442544 (and d!643257 d!643221)))

(declare-fun lambda!78448 () Int)

(assert (=> bs!442544 (= lambda!78448 lambda!78440)))

(declare-fun bs!442545 () Bool)

(assert (= bs!442545 (and d!643257 d!643159)))

(assert (=> bs!442545 (= lambda!78448 lambda!78415)))

(declare-fun bs!442546 () Bool)

(assert (= bs!442546 (and d!643257 d!643247)))

(assert (=> bs!442546 (= lambda!78448 lambda!78446)))

(declare-fun bs!442547 () Bool)

(assert (= bs!442547 (and d!643257 d!643163)))

(assert (=> bs!442547 (= lambda!78448 lambda!78416)))

(declare-fun bs!442548 () Bool)

(assert (= bs!442548 (and d!643257 d!643227)))

(assert (=> bs!442548 (= lambda!78448 lambda!78442)))

(declare-fun bs!442549 () Bool)

(assert (= bs!442549 (and d!643257 d!643171)))

(assert (=> bs!442549 (= lambda!78448 lambda!78420)))

(declare-fun bs!442550 () Bool)

(assert (= bs!442550 (and d!643257 d!643201)))

(assert (=> bs!442550 (= lambda!78448 lambda!78430)))

(declare-fun bs!442551 () Bool)

(assert (= bs!442551 (and d!643257 d!643165)))

(assert (=> bs!442551 (= lambda!78448 lambda!78417)))

(declare-fun bs!442552 () Bool)

(assert (= bs!442552 (and d!643257 d!643249)))

(assert (=> bs!442552 (= lambda!78448 lambda!78447)))

(declare-fun bs!442553 () Bool)

(assert (= bs!442553 (and d!643257 d!643229)))

(assert (=> bs!442553 (= lambda!78448 lambda!78443)))

(declare-fun bs!442554 () Bool)

(assert (= bs!442554 (and d!643257 d!643155)))

(assert (=> bs!442554 (= lambda!78448 lambda!78413)))

(declare-fun bs!442555 () Bool)

(assert (= bs!442555 (and d!643257 d!643215)))

(assert (=> bs!442555 (= lambda!78448 lambda!78439)))

(declare-fun bs!442556 () Bool)

(assert (= bs!442556 (and d!643257 d!643157)))

(assert (=> bs!442556 (= lambda!78448 lambda!78414)))

(declare-fun bs!442557 () Bool)

(assert (= bs!442557 (and d!643257 d!643179)))

(assert (=> bs!442557 (= lambda!78448 lambda!78422)))

(declare-fun bs!442558 () Bool)

(assert (= bs!442558 (and d!643257 d!643107)))

(assert (=> bs!442558 (= lambda!78448 lambda!78410)))

(declare-fun bs!442559 () Bool)

(assert (= bs!442559 (and d!643257 d!643199)))

(assert (=> bs!442559 (= lambda!78448 lambda!78429)))

(declare-fun bs!442560 () Bool)

(assert (= bs!442560 (and d!643257 d!643237)))

(assert (=> bs!442560 (= lambda!78448 lambda!78444)))

(declare-fun bs!442561 () Bool)

(assert (= bs!442561 (and d!643257 d!643195)))

(assert (=> bs!442561 (= lambda!78448 lambda!78428)))

(declare-fun bs!442562 () Bool)

(assert (= bs!442562 (and d!643257 d!643169)))

(assert (=> bs!442562 (= lambda!78448 lambda!78419)))

(declare-fun bs!442563 () Bool)

(assert (= bs!442563 (and d!643257 d!643211)))

(assert (=> bs!442563 (= lambda!78448 lambda!78438)))

(declare-fun bs!442564 () Bool)

(assert (= bs!442564 (and d!643257 d!643167)))

(assert (=> bs!442564 (= lambda!78448 lambda!78418)))

(declare-fun bs!442565 () Bool)

(assert (= bs!442565 (and d!643257 d!643143)))

(assert (=> bs!442565 (= lambda!78448 lambda!78412)))

(declare-fun bs!442566 () Bool)

(assert (= bs!442566 (and d!643257 d!643209)))

(assert (=> bs!442566 (= lambda!78448 lambda!78437)))

(declare-fun bs!442567 () Bool)

(assert (= bs!442567 (and d!643257 d!643175)))

(assert (=> bs!442567 (= lambda!78448 lambda!78421)))

(declare-fun bs!442568 () Bool)

(assert (= bs!442568 (and d!643257 d!643223)))

(assert (=> bs!442568 (= lambda!78448 lambda!78441)))

(declare-fun bs!442569 () Bool)

(assert (= bs!442569 (and d!643257 d!643241)))

(assert (=> bs!442569 (= lambda!78448 lambda!78445)))

(declare-fun bs!442570 () Bool)

(assert (= bs!442570 (and d!643257 d!643141)))

(assert (=> bs!442570 (= lambda!78448 lambda!78411)))

(declare-fun bs!442571 () Bool)

(assert (= bs!442571 (and d!643257 d!643185)))

(assert (=> bs!442571 (= lambda!78448 lambda!78423)))

(declare-fun bs!442572 () Bool)

(assert (= bs!442572 (and d!643257 d!643187)))

(assert (=> bs!442572 (= lambda!78448 lambda!78424)))

(assert (=> d!643257 (= (inv!31192 setElem!14543) (forall!4851 (exprs!1717 setElem!14543) lambda!78448))))

(declare-fun bs!442573 () Bool)

(assert (= bs!442573 d!643257))

(declare-fun m!2573787 () Bool)

(assert (=> bs!442573 m!2573787))

(assert (=> setNonEmpty!14543 d!643257))

(declare-fun bs!442574 () Bool)

(declare-fun d!643259 () Bool)

(assert (= bs!442574 (and d!643259 d!643221)))

(declare-fun lambda!78449 () Int)

(assert (=> bs!442574 (= lambda!78449 lambda!78440)))

(declare-fun bs!442575 () Bool)

(assert (= bs!442575 (and d!643259 d!643159)))

(assert (=> bs!442575 (= lambda!78449 lambda!78415)))

(declare-fun bs!442576 () Bool)

(assert (= bs!442576 (and d!643259 d!643247)))

(assert (=> bs!442576 (= lambda!78449 lambda!78446)))

(declare-fun bs!442577 () Bool)

(assert (= bs!442577 (and d!643259 d!643163)))

(assert (=> bs!442577 (= lambda!78449 lambda!78416)))

(declare-fun bs!442578 () Bool)

(assert (= bs!442578 (and d!643259 d!643257)))

(assert (=> bs!442578 (= lambda!78449 lambda!78448)))

(declare-fun bs!442579 () Bool)

(assert (= bs!442579 (and d!643259 d!643227)))

(assert (=> bs!442579 (= lambda!78449 lambda!78442)))

(declare-fun bs!442580 () Bool)

(assert (= bs!442580 (and d!643259 d!643171)))

(assert (=> bs!442580 (= lambda!78449 lambda!78420)))

(declare-fun bs!442581 () Bool)

(assert (= bs!442581 (and d!643259 d!643201)))

(assert (=> bs!442581 (= lambda!78449 lambda!78430)))

(declare-fun bs!442582 () Bool)

(assert (= bs!442582 (and d!643259 d!643165)))

(assert (=> bs!442582 (= lambda!78449 lambda!78417)))

(declare-fun bs!442583 () Bool)

(assert (= bs!442583 (and d!643259 d!643249)))

(assert (=> bs!442583 (= lambda!78449 lambda!78447)))

(declare-fun bs!442584 () Bool)

(assert (= bs!442584 (and d!643259 d!643229)))

(assert (=> bs!442584 (= lambda!78449 lambda!78443)))

(declare-fun bs!442585 () Bool)

(assert (= bs!442585 (and d!643259 d!643155)))

(assert (=> bs!442585 (= lambda!78449 lambda!78413)))

(declare-fun bs!442586 () Bool)

(assert (= bs!442586 (and d!643259 d!643215)))

(assert (=> bs!442586 (= lambda!78449 lambda!78439)))

(declare-fun bs!442587 () Bool)

(assert (= bs!442587 (and d!643259 d!643157)))

(assert (=> bs!442587 (= lambda!78449 lambda!78414)))

(declare-fun bs!442588 () Bool)

(assert (= bs!442588 (and d!643259 d!643179)))

(assert (=> bs!442588 (= lambda!78449 lambda!78422)))

(declare-fun bs!442589 () Bool)

(assert (= bs!442589 (and d!643259 d!643107)))

(assert (=> bs!442589 (= lambda!78449 lambda!78410)))

(declare-fun bs!442590 () Bool)

(assert (= bs!442590 (and d!643259 d!643199)))

(assert (=> bs!442590 (= lambda!78449 lambda!78429)))

(declare-fun bs!442591 () Bool)

(assert (= bs!442591 (and d!643259 d!643237)))

(assert (=> bs!442591 (= lambda!78449 lambda!78444)))

(declare-fun bs!442592 () Bool)

(assert (= bs!442592 (and d!643259 d!643195)))

(assert (=> bs!442592 (= lambda!78449 lambda!78428)))

(declare-fun bs!442593 () Bool)

(assert (= bs!442593 (and d!643259 d!643169)))

(assert (=> bs!442593 (= lambda!78449 lambda!78419)))

(declare-fun bs!442594 () Bool)

(assert (= bs!442594 (and d!643259 d!643211)))

(assert (=> bs!442594 (= lambda!78449 lambda!78438)))

(declare-fun bs!442595 () Bool)

(assert (= bs!442595 (and d!643259 d!643167)))

(assert (=> bs!442595 (= lambda!78449 lambda!78418)))

(declare-fun bs!442596 () Bool)

(assert (= bs!442596 (and d!643259 d!643143)))

(assert (=> bs!442596 (= lambda!78449 lambda!78412)))

(declare-fun bs!442597 () Bool)

(assert (= bs!442597 (and d!643259 d!643209)))

(assert (=> bs!442597 (= lambda!78449 lambda!78437)))

(declare-fun bs!442598 () Bool)

(assert (= bs!442598 (and d!643259 d!643175)))

(assert (=> bs!442598 (= lambda!78449 lambda!78421)))

(declare-fun bs!442599 () Bool)

(assert (= bs!442599 (and d!643259 d!643223)))

(assert (=> bs!442599 (= lambda!78449 lambda!78441)))

(declare-fun bs!442600 () Bool)

(assert (= bs!442600 (and d!643259 d!643241)))

(assert (=> bs!442600 (= lambda!78449 lambda!78445)))

(declare-fun bs!442601 () Bool)

(assert (= bs!442601 (and d!643259 d!643141)))

(assert (=> bs!442601 (= lambda!78449 lambda!78411)))

(declare-fun bs!442602 () Bool)

(assert (= bs!442602 (and d!643259 d!643185)))

(assert (=> bs!442602 (= lambda!78449 lambda!78423)))

(declare-fun bs!442603 () Bool)

(assert (= bs!442603 (and d!643259 d!643187)))

(assert (=> bs!442603 (= lambda!78449 lambda!78424)))

(assert (=> d!643259 (= (inv!31192 (_1!13460 (_1!13461 (h!29010 mapValue!11641)))) (forall!4851 (exprs!1717 (_1!13460 (_1!13461 (h!29010 mapValue!11641)))) lambda!78449))))

(declare-fun bs!442604 () Bool)

(assert (= bs!442604 d!643259))

(declare-fun m!2573789 () Bool)

(assert (=> bs!442604 m!2573789))

(assert (=> b!2118861 d!643259))

(declare-fun bs!442605 () Bool)

(declare-fun d!643261 () Bool)

(assert (= bs!442605 (and d!643261 d!643221)))

(declare-fun lambda!78450 () Int)

(assert (=> bs!442605 (= lambda!78450 lambda!78440)))

(declare-fun bs!442606 () Bool)

(assert (= bs!442606 (and d!643261 d!643159)))

(assert (=> bs!442606 (= lambda!78450 lambda!78415)))

(declare-fun bs!442607 () Bool)

(assert (= bs!442607 (and d!643261 d!643247)))

(assert (=> bs!442607 (= lambda!78450 lambda!78446)))

(declare-fun bs!442608 () Bool)

(assert (= bs!442608 (and d!643261 d!643163)))

(assert (=> bs!442608 (= lambda!78450 lambda!78416)))

(declare-fun bs!442609 () Bool)

(assert (= bs!442609 (and d!643261 d!643227)))

(assert (=> bs!442609 (= lambda!78450 lambda!78442)))

(declare-fun bs!442610 () Bool)

(assert (= bs!442610 (and d!643261 d!643171)))

(assert (=> bs!442610 (= lambda!78450 lambda!78420)))

(declare-fun bs!442611 () Bool)

(assert (= bs!442611 (and d!643261 d!643201)))

(assert (=> bs!442611 (= lambda!78450 lambda!78430)))

(declare-fun bs!442612 () Bool)

(assert (= bs!442612 (and d!643261 d!643165)))

(assert (=> bs!442612 (= lambda!78450 lambda!78417)))

(declare-fun bs!442613 () Bool)

(assert (= bs!442613 (and d!643261 d!643249)))

(assert (=> bs!442613 (= lambda!78450 lambda!78447)))

(declare-fun bs!442614 () Bool)

(assert (= bs!442614 (and d!643261 d!643229)))

(assert (=> bs!442614 (= lambda!78450 lambda!78443)))

(declare-fun bs!442615 () Bool)

(assert (= bs!442615 (and d!643261 d!643155)))

(assert (=> bs!442615 (= lambda!78450 lambda!78413)))

(declare-fun bs!442616 () Bool)

(assert (= bs!442616 (and d!643261 d!643215)))

(assert (=> bs!442616 (= lambda!78450 lambda!78439)))

(declare-fun bs!442617 () Bool)

(assert (= bs!442617 (and d!643261 d!643157)))

(assert (=> bs!442617 (= lambda!78450 lambda!78414)))

(declare-fun bs!442618 () Bool)

(assert (= bs!442618 (and d!643261 d!643179)))

(assert (=> bs!442618 (= lambda!78450 lambda!78422)))

(declare-fun bs!442619 () Bool)

(assert (= bs!442619 (and d!643261 d!643107)))

(assert (=> bs!442619 (= lambda!78450 lambda!78410)))

(declare-fun bs!442620 () Bool)

(assert (= bs!442620 (and d!643261 d!643199)))

(assert (=> bs!442620 (= lambda!78450 lambda!78429)))

(declare-fun bs!442621 () Bool)

(assert (= bs!442621 (and d!643261 d!643237)))

(assert (=> bs!442621 (= lambda!78450 lambda!78444)))

(declare-fun bs!442622 () Bool)

(assert (= bs!442622 (and d!643261 d!643195)))

(assert (=> bs!442622 (= lambda!78450 lambda!78428)))

(declare-fun bs!442623 () Bool)

(assert (= bs!442623 (and d!643261 d!643169)))

(assert (=> bs!442623 (= lambda!78450 lambda!78419)))

(declare-fun bs!442624 () Bool)

(assert (= bs!442624 (and d!643261 d!643211)))

(assert (=> bs!442624 (= lambda!78450 lambda!78438)))

(declare-fun bs!442625 () Bool)

(assert (= bs!442625 (and d!643261 d!643167)))

(assert (=> bs!442625 (= lambda!78450 lambda!78418)))

(declare-fun bs!442626 () Bool)

(assert (= bs!442626 (and d!643261 d!643259)))

(assert (=> bs!442626 (= lambda!78450 lambda!78449)))

(declare-fun bs!442627 () Bool)

(assert (= bs!442627 (and d!643261 d!643257)))

(assert (=> bs!442627 (= lambda!78450 lambda!78448)))

(declare-fun bs!442628 () Bool)

(assert (= bs!442628 (and d!643261 d!643143)))

(assert (=> bs!442628 (= lambda!78450 lambda!78412)))

(declare-fun bs!442629 () Bool)

(assert (= bs!442629 (and d!643261 d!643209)))

(assert (=> bs!442629 (= lambda!78450 lambda!78437)))

(declare-fun bs!442630 () Bool)

(assert (= bs!442630 (and d!643261 d!643175)))

(assert (=> bs!442630 (= lambda!78450 lambda!78421)))

(declare-fun bs!442631 () Bool)

(assert (= bs!442631 (and d!643261 d!643223)))

(assert (=> bs!442631 (= lambda!78450 lambda!78441)))

(declare-fun bs!442632 () Bool)

(assert (= bs!442632 (and d!643261 d!643241)))

(assert (=> bs!442632 (= lambda!78450 lambda!78445)))

(declare-fun bs!442633 () Bool)

(assert (= bs!442633 (and d!643261 d!643141)))

(assert (=> bs!442633 (= lambda!78450 lambda!78411)))

(declare-fun bs!442634 () Bool)

(assert (= bs!442634 (and d!643261 d!643185)))

(assert (=> bs!442634 (= lambda!78450 lambda!78423)))

(declare-fun bs!442635 () Bool)

(assert (= bs!442635 (and d!643261 d!643187)))

(assert (=> bs!442635 (= lambda!78450 lambda!78424)))

(assert (=> d!643261 (= (inv!31192 setElem!14559) (forall!4851 (exprs!1717 setElem!14559) lambda!78450))))

(declare-fun bs!442636 () Bool)

(assert (= bs!442636 d!643261))

(declare-fun m!2573791 () Bool)

(assert (=> bs!442636 m!2573791))

(assert (=> setNonEmpty!14558 d!643261))

(declare-fun condSetEmpty!14566 () Bool)

(assert (=> setNonEmpty!14536 (= condSetEmpty!14566 (= setRest!14536 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14566 () Bool)

(assert (=> setNonEmpty!14536 (= tp!647354 setRes!14566)))

(declare-fun setIsEmpty!14566 () Bool)

(assert (=> setIsEmpty!14566 setRes!14566))

(declare-fun setNonEmpty!14566 () Bool)

(declare-fun setElem!14566 () Context!2434)

(declare-fun tp!647488 () Bool)

(declare-fun e!1349013 () Bool)

(assert (=> setNonEmpty!14566 (= setRes!14566 (and tp!647488 (inv!31192 setElem!14566) e!1349013))))

(declare-fun setRest!14566 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14566 (= setRest!14536 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14566 true) setRest!14566))))

(declare-fun b!2119031 () Bool)

(declare-fun tp!647489 () Bool)

(assert (=> b!2119031 (= e!1349013 tp!647489)))

(assert (= (and setNonEmpty!14536 condSetEmpty!14566) setIsEmpty!14566))

(assert (= (and setNonEmpty!14536 (not condSetEmpty!14566)) setNonEmpty!14566))

(assert (= setNonEmpty!14566 b!2119031))

(declare-fun m!2573793 () Bool)

(assert (=> setNonEmpty!14566 m!2573793))

(declare-fun condSetEmpty!14567 () Bool)

(assert (=> setNonEmpty!14553 (= condSetEmpty!14567 (= setRest!14553 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14567 () Bool)

(assert (=> setNonEmpty!14553 (= tp!647439 setRes!14567)))

(declare-fun setIsEmpty!14567 () Bool)

(assert (=> setIsEmpty!14567 setRes!14567))

(declare-fun tp!647490 () Bool)

(declare-fun setElem!14567 () Context!2434)

(declare-fun e!1349014 () Bool)

(declare-fun setNonEmpty!14567 () Bool)

(assert (=> setNonEmpty!14567 (= setRes!14567 (and tp!647490 (inv!31192 setElem!14567) e!1349014))))

(declare-fun setRest!14567 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14567 (= setRest!14553 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14567 true) setRest!14567))))

(declare-fun b!2119032 () Bool)

(declare-fun tp!647491 () Bool)

(assert (=> b!2119032 (= e!1349014 tp!647491)))

(assert (= (and setNonEmpty!14553 condSetEmpty!14567) setIsEmpty!14567))

(assert (= (and setNonEmpty!14553 (not condSetEmpty!14567)) setNonEmpty!14567))

(assert (= setNonEmpty!14567 b!2119032))

(declare-fun m!2573795 () Bool)

(assert (=> setNonEmpty!14567 m!2573795))

(declare-fun b!2119033 () Bool)

(declare-fun e!1349015 () Bool)

(declare-fun tp!647492 () Bool)

(declare-fun tp!647493 () Bool)

(assert (=> b!2119033 (= e!1349015 (and tp!647492 tp!647493))))

(assert (=> b!2118786 (= tp!647356 e!1349015)))

(assert (= (and b!2118786 ((_ is Cons!23608) (exprs!1717 (_1!13460 (_1!13461 (h!29010 mapDefault!11630)))))) b!2119033))

(declare-fun b!2119035 () Bool)

(declare-fun e!1349016 () Bool)

(declare-fun tp!647495 () Bool)

(assert (=> b!2119035 (= e!1349016 tp!647495)))

(declare-fun e!1349017 () Bool)

(assert (=> b!2118842 (= tp!647437 e!1349017)))

(declare-fun setIsEmpty!14568 () Bool)

(declare-fun setRes!14568 () Bool)

(assert (=> setIsEmpty!14568 setRes!14568))

(declare-fun b!2119034 () Bool)

(declare-fun tp!647494 () Bool)

(assert (=> b!2119034 (= e!1349017 (and setRes!14568 tp!647494))))

(declare-fun condSetEmpty!14568 () Bool)

(assert (=> b!2119034 (= condSetEmpty!14568 (= (_1!13462 (_1!13463 (h!29011 (t!196207 mapValue!11632)))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setNonEmpty!14568 () Bool)

(declare-fun tp!647496 () Bool)

(declare-fun setElem!14568 () Context!2434)

(assert (=> setNonEmpty!14568 (= setRes!14568 (and tp!647496 (inv!31192 setElem!14568) e!1349016))))

(declare-fun setRest!14568 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14568 (= (_1!13462 (_1!13463 (h!29011 (t!196207 mapValue!11632)))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14568 true) setRest!14568))))

(assert (= (and b!2119034 condSetEmpty!14568) setIsEmpty!14568))

(assert (= (and b!2119034 (not condSetEmpty!14568)) setNonEmpty!14568))

(assert (= setNonEmpty!14568 b!2119035))

(assert (= (and b!2118842 ((_ is Cons!23610) (t!196207 mapValue!11632))) b!2119034))

(declare-fun m!2573797 () Bool)

(assert (=> setNonEmpty!14568 m!2573797))

(declare-fun b!2119037 () Bool)

(declare-fun e!1349018 () Bool)

(declare-fun tp!647498 () Bool)

(assert (=> b!2119037 (= e!1349018 tp!647498)))

(declare-fun e!1349019 () Bool)

(assert (=> b!2118873 (= tp!647479 e!1349019)))

(declare-fun setIsEmpty!14569 () Bool)

(declare-fun setRes!14569 () Bool)

(assert (=> setIsEmpty!14569 setRes!14569))

(declare-fun b!2119036 () Bool)

(declare-fun tp!647497 () Bool)

(assert (=> b!2119036 (= e!1349019 (and setRes!14569 tp!647497))))

(declare-fun condSetEmpty!14569 () Bool)

(assert (=> b!2119036 (= condSetEmpty!14569 (= (_1!13462 (_1!13463 (h!29011 (t!196207 mapDefault!11631)))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun tp!647499 () Bool)

(declare-fun setNonEmpty!14569 () Bool)

(declare-fun setElem!14569 () Context!2434)

(assert (=> setNonEmpty!14569 (= setRes!14569 (and tp!647499 (inv!31192 setElem!14569) e!1349018))))

(declare-fun setRest!14569 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14569 (= (_1!13462 (_1!13463 (h!29011 (t!196207 mapDefault!11631)))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14569 true) setRest!14569))))

(assert (= (and b!2119036 condSetEmpty!14569) setIsEmpty!14569))

(assert (= (and b!2119036 (not condSetEmpty!14569)) setNonEmpty!14569))

(assert (= setNonEmpty!14569 b!2119037))

(assert (= (and b!2118873 ((_ is Cons!23610) (t!196207 mapDefault!11631))) b!2119036))

(declare-fun m!2573799 () Bool)

(assert (=> setNonEmpty!14569 m!2573799))

(declare-fun b!2119038 () Bool)

(declare-fun e!1349020 () Bool)

(declare-fun tp!647500 () Bool)

(declare-fun tp!647501 () Bool)

(assert (=> b!2119038 (= e!1349020 (and tp!647500 tp!647501))))

(assert (=> b!2118803 (= tp!647383 e!1349020)))

(assert (= (and b!2118803 ((_ is Cons!23608) (exprs!1717 (_2!13464 (_1!13465 (h!29013 mapValue!11635)))))) b!2119038))

(declare-fun b!2119039 () Bool)

(declare-fun e!1349021 () Bool)

(declare-fun tp!647502 () Bool)

(declare-fun tp!647503 () Bool)

(assert (=> b!2119039 (= e!1349021 (and tp!647502 tp!647503))))

(assert (=> b!2118863 (= tp!647464 e!1349021)))

(assert (= (and b!2118863 ((_ is Cons!23608) (exprs!1717 setElem!14559))) b!2119039))

(declare-fun b!2119040 () Bool)

(declare-fun e!1349022 () Bool)

(declare-fun tp!647504 () Bool)

(declare-fun tp!647505 () Bool)

(assert (=> b!2119040 (= e!1349022 (and tp!647504 tp!647505))))

(assert (=> b!2118754 (= tp!647321 e!1349022)))

(assert (= (and b!2118754 ((_ is Cons!23608) (exprs!1717 setElem!14529))) b!2119040))

(declare-fun b!2119041 () Bool)

(declare-fun e!1349023 () Bool)

(declare-fun tp!647506 () Bool)

(declare-fun tp!647507 () Bool)

(assert (=> b!2119041 (= e!1349023 (and tp!647506 tp!647507))))

(assert (=> b!2118757 (= tp!647326 e!1349023)))

(assert (= (and b!2118757 ((_ is Cons!23608) (exprs!1717 setElem!14530))) b!2119041))

(declare-fun condSetEmpty!14570 () Bool)

(assert (=> setNonEmpty!14529 (= condSetEmpty!14570 (= setRest!14529 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14570 () Bool)

(assert (=> setNonEmpty!14529 (= tp!647320 setRes!14570)))

(declare-fun setIsEmpty!14570 () Bool)

(assert (=> setIsEmpty!14570 setRes!14570))

(declare-fun e!1349024 () Bool)

(declare-fun setElem!14570 () Context!2434)

(declare-fun setNonEmpty!14570 () Bool)

(declare-fun tp!647508 () Bool)

(assert (=> setNonEmpty!14570 (= setRes!14570 (and tp!647508 (inv!31192 setElem!14570) e!1349024))))

(declare-fun setRest!14570 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14570 (= setRest!14529 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14570 true) setRest!14570))))

(declare-fun b!2119042 () Bool)

(declare-fun tp!647509 () Bool)

(assert (=> b!2119042 (= e!1349024 tp!647509)))

(assert (= (and setNonEmpty!14529 condSetEmpty!14570) setIsEmpty!14570))

(assert (= (and setNonEmpty!14529 (not condSetEmpty!14570)) setNonEmpty!14570))

(assert (= setNonEmpty!14570 b!2119042))

(declare-fun m!2573801 () Bool)

(assert (=> setNonEmpty!14570 m!2573801))

(declare-fun condSetEmpty!14571 () Bool)

(assert (=> setNonEmpty!14530 (= condSetEmpty!14571 (= setRest!14530 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14571 () Bool)

(assert (=> setNonEmpty!14530 (= tp!647325 setRes!14571)))

(declare-fun setIsEmpty!14571 () Bool)

(assert (=> setIsEmpty!14571 setRes!14571))

(declare-fun setElem!14571 () Context!2434)

(declare-fun setNonEmpty!14571 () Bool)

(declare-fun tp!647510 () Bool)

(declare-fun e!1349025 () Bool)

(assert (=> setNonEmpty!14571 (= setRes!14571 (and tp!647510 (inv!31192 setElem!14571) e!1349025))))

(declare-fun setRest!14571 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14571 (= setRest!14530 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14571 true) setRest!14571))))

(declare-fun b!2119043 () Bool)

(declare-fun tp!647511 () Bool)

(assert (=> b!2119043 (= e!1349025 tp!647511)))

(assert (= (and setNonEmpty!14530 condSetEmpty!14571) setIsEmpty!14571))

(assert (= (and setNonEmpty!14530 (not condSetEmpty!14571)) setNonEmpty!14571))

(assert (= setNonEmpty!14571 b!2119043))

(declare-fun m!2573803 () Bool)

(assert (=> setNonEmpty!14571 m!2573803))

(declare-fun condSetEmpty!14572 () Bool)

(assert (=> setNonEmpty!14563 (= condSetEmpty!14572 (= setRest!14563 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14572 () Bool)

(assert (=> setNonEmpty!14563 (= tp!647481 setRes!14572)))

(declare-fun setIsEmpty!14572 () Bool)

(assert (=> setIsEmpty!14572 setRes!14572))

(declare-fun setElem!14572 () Context!2434)

(declare-fun tp!647512 () Bool)

(declare-fun e!1349026 () Bool)

(declare-fun setNonEmpty!14572 () Bool)

(assert (=> setNonEmpty!14572 (= setRes!14572 (and tp!647512 (inv!31192 setElem!14572) e!1349026))))

(declare-fun setRest!14572 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14572 (= setRest!14563 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14572 true) setRest!14572))))

(declare-fun b!2119044 () Bool)

(declare-fun tp!647513 () Bool)

(assert (=> b!2119044 (= e!1349026 tp!647513)))

(assert (= (and setNonEmpty!14563 condSetEmpty!14572) setIsEmpty!14572))

(assert (= (and setNonEmpty!14563 (not condSetEmpty!14572)) setNonEmpty!14572))

(assert (= setNonEmpty!14572 b!2119044))

(declare-fun m!2573805 () Bool)

(assert (=> setNonEmpty!14572 m!2573805))

(declare-fun b!2119046 () Bool)

(declare-fun e!1349027 () Bool)

(declare-fun tp!647515 () Bool)

(assert (=> b!2119046 (= e!1349027 tp!647515)))

(declare-fun e!1349028 () Bool)

(assert (=> b!2118832 (= tp!647424 e!1349028)))

(declare-fun setIsEmpty!14573 () Bool)

(declare-fun setRes!14573 () Bool)

(assert (=> setIsEmpty!14573 setRes!14573))

(declare-fun b!2119045 () Bool)

(declare-fun tp!647514 () Bool)

(assert (=> b!2119045 (= e!1349028 (and setRes!14573 tp!647514))))

(declare-fun condSetEmpty!14573 () Bool)

(assert (=> b!2119045 (= condSetEmpty!14573 (= (_1!13462 (_1!13463 (h!29011 (t!196207 mapValue!11638)))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setNonEmpty!14573 () Bool)

(declare-fun setElem!14573 () Context!2434)

(declare-fun tp!647516 () Bool)

(assert (=> setNonEmpty!14573 (= setRes!14573 (and tp!647516 (inv!31192 setElem!14573) e!1349027))))

(declare-fun setRest!14573 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14573 (= (_1!13462 (_1!13463 (h!29011 (t!196207 mapValue!11638)))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14573 true) setRest!14573))))

(assert (= (and b!2119045 condSetEmpty!14573) setIsEmpty!14573))

(assert (= (and b!2119045 (not condSetEmpty!14573)) setNonEmpty!14573))

(assert (= setNonEmpty!14573 b!2119046))

(assert (= (and b!2118832 ((_ is Cons!23610) (t!196207 mapValue!11638))) b!2119045))

(declare-fun m!2573807 () Bool)

(assert (=> setNonEmpty!14573 m!2573807))

(declare-fun b!2119047 () Bool)

(declare-fun e!1349029 () Bool)

(declare-fun tp!647517 () Bool)

(declare-fun tp!647518 () Bool)

(assert (=> b!2119047 (= e!1349029 (and tp!647517 tp!647518))))

(assert (=> b!2118872 (= tp!647476 e!1349029)))

(assert (= (and b!2118872 ((_ is Cons!23608) (exprs!1717 setElem!14562))) b!2119047))

(declare-fun b!2119048 () Bool)

(declare-fun e!1349030 () Bool)

(declare-fun tp!647519 () Bool)

(declare-fun tp!647520 () Bool)

(assert (=> b!2119048 (= e!1349030 (and tp!647519 tp!647520))))

(assert (=> b!2118868 (= tp!647473 e!1349030)))

(assert (= (and b!2118868 ((_ is Cons!23608) (exprs!1717 (_1!13460 (_1!13461 (h!29010 (zeroValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))))))) b!2119048))

(declare-fun b!2119049 () Bool)

(declare-fun e!1349033 () Bool)

(declare-fun tp!647524 () Bool)

(declare-fun e!1349032 () Bool)

(declare-fun setRes!14574 () Bool)

(assert (=> b!2119049 (= e!1349033 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 (t!196206 (zeroValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))))))) e!1349032 tp_is_empty!9481 setRes!14574 tp!647524))))

(declare-fun condSetEmpty!14574 () Bool)

(assert (=> b!2119049 (= condSetEmpty!14574 (= (_2!13461 (h!29010 (t!196206 (zeroValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14574 () Bool)

(assert (=> setIsEmpty!14574 setRes!14574))

(declare-fun b!2119050 () Bool)

(declare-fun tp!647523 () Bool)

(assert (=> b!2119050 (= e!1349032 tp!647523)))

(declare-fun b!2119051 () Bool)

(declare-fun e!1349031 () Bool)

(declare-fun tp!647522 () Bool)

(assert (=> b!2119051 (= e!1349031 tp!647522)))

(assert (=> b!2118867 (= tp!647474 e!1349033)))

(declare-fun setElem!14574 () Context!2434)

(declare-fun setNonEmpty!14574 () Bool)

(declare-fun tp!647521 () Bool)

(assert (=> setNonEmpty!14574 (= setRes!14574 (and tp!647521 (inv!31192 setElem!14574) e!1349031))))

(declare-fun setRest!14574 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14574 (= (_2!13461 (h!29010 (t!196206 (zeroValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14574 true) setRest!14574))))

(assert (= b!2119049 b!2119050))

(assert (= (and b!2119049 condSetEmpty!14574) setIsEmpty!14574))

(assert (= (and b!2119049 (not condSetEmpty!14574)) setNonEmpty!14574))

(assert (= setNonEmpty!14574 b!2119051))

(assert (= (and b!2118867 ((_ is Cons!23609) (t!196206 (zeroValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))))) b!2119049))

(declare-fun m!2573809 () Bool)

(assert (=> b!2119049 m!2573809))

(declare-fun m!2573811 () Bool)

(assert (=> setNonEmpty!14574 m!2573811))

(declare-fun b!2119052 () Bool)

(declare-fun e!1349034 () Bool)

(declare-fun tp!647525 () Bool)

(declare-fun tp!647526 () Bool)

(assert (=> b!2119052 (= e!1349034 (and tp!647525 tp!647526))))

(assert (=> b!2118804 (= tp!647385 e!1349034)))

(assert (= (and b!2118804 ((_ is Cons!23608) (exprs!1717 (_2!13464 (_1!13465 (h!29013 mapDefault!11635)))))) b!2119052))

(declare-fun condSetEmpty!14575 () Bool)

(assert (=> setNonEmpty!14559 (= condSetEmpty!14575 (= setRest!14558 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14575 () Bool)

(assert (=> setNonEmpty!14559 (= tp!647461 setRes!14575)))

(declare-fun setIsEmpty!14575 () Bool)

(assert (=> setIsEmpty!14575 setRes!14575))

(declare-fun setElem!14575 () Context!2434)

(declare-fun e!1349035 () Bool)

(declare-fun tp!647527 () Bool)

(declare-fun setNonEmpty!14575 () Bool)

(assert (=> setNonEmpty!14575 (= setRes!14575 (and tp!647527 (inv!31192 setElem!14575) e!1349035))))

(declare-fun setRest!14575 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14575 (= setRest!14558 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14575 true) setRest!14575))))

(declare-fun b!2119053 () Bool)

(declare-fun tp!647528 () Bool)

(assert (=> b!2119053 (= e!1349035 tp!647528)))

(assert (= (and setNonEmpty!14559 condSetEmpty!14575) setIsEmpty!14575))

(assert (= (and setNonEmpty!14559 (not condSetEmpty!14575)) setNonEmpty!14575))

(assert (= setNonEmpty!14575 b!2119053))

(declare-fun m!2573813 () Bool)

(assert (=> setNonEmpty!14575 m!2573813))

(declare-fun b!2119054 () Bool)

(declare-fun e!1349036 () Bool)

(declare-fun tp!647529 () Bool)

(declare-fun tp!647530 () Bool)

(assert (=> b!2119054 (= e!1349036 (and tp!647529 tp!647530))))

(assert (=> b!2118834 (= tp!647430 e!1349036)))

(assert (= (and b!2118834 ((_ is Cons!23608) (exprs!1717 setElem!14549))) b!2119054))

(declare-fun condSetEmpty!14576 () Bool)

(assert (=> setNonEmpty!14533 (= condSetEmpty!14576 (= setRest!14533 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14576 () Bool)

(assert (=> setNonEmpty!14533 (= tp!647344 setRes!14576)))

(declare-fun setIsEmpty!14576 () Bool)

(assert (=> setIsEmpty!14576 setRes!14576))

(declare-fun tp!647531 () Bool)

(declare-fun e!1349037 () Bool)

(declare-fun setNonEmpty!14576 () Bool)

(declare-fun setElem!14576 () Context!2434)

(assert (=> setNonEmpty!14576 (= setRes!14576 (and tp!647531 (inv!31192 setElem!14576) e!1349037))))

(declare-fun setRest!14576 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14576 (= setRest!14533 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14576 true) setRest!14576))))

(declare-fun b!2119055 () Bool)

(declare-fun tp!647532 () Bool)

(assert (=> b!2119055 (= e!1349037 tp!647532)))

(assert (= (and setNonEmpty!14533 condSetEmpty!14576) setIsEmpty!14576))

(assert (= (and setNonEmpty!14533 (not condSetEmpty!14576)) setNonEmpty!14576))

(assert (= setNonEmpty!14576 b!2119055))

(declare-fun m!2573815 () Bool)

(assert (=> setNonEmpty!14576 m!2573815))

(declare-fun condSetEmpty!14577 () Bool)

(assert (=> setNonEmpty!14561 (= condSetEmpty!14577 (= setRest!14561 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14577 () Bool)

(assert (=> setNonEmpty!14561 (= tp!647471 setRes!14577)))

(declare-fun setIsEmpty!14577 () Bool)

(assert (=> setIsEmpty!14577 setRes!14577))

(declare-fun tp!647533 () Bool)

(declare-fun e!1349038 () Bool)

(declare-fun setNonEmpty!14577 () Bool)

(declare-fun setElem!14577 () Context!2434)

(assert (=> setNonEmpty!14577 (= setRes!14577 (and tp!647533 (inv!31192 setElem!14577) e!1349038))))

(declare-fun setRest!14577 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14577 (= setRest!14561 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14577 true) setRest!14577))))

(declare-fun b!2119056 () Bool)

(declare-fun tp!647534 () Bool)

(assert (=> b!2119056 (= e!1349038 tp!647534)))

(assert (= (and setNonEmpty!14561 condSetEmpty!14577) setIsEmpty!14577))

(assert (= (and setNonEmpty!14561 (not condSetEmpty!14577)) setNonEmpty!14577))

(assert (= setNonEmpty!14577 b!2119056))

(declare-fun m!2573817 () Bool)

(assert (=> setNonEmpty!14577 m!2573817))

(declare-fun condSetEmpty!14578 () Bool)

(assert (=> setNonEmpty!14542 (= condSetEmpty!14578 (= setRest!14542 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14578 () Bool)

(assert (=> setNonEmpty!14542 (= tp!647388 setRes!14578)))

(declare-fun setIsEmpty!14578 () Bool)

(assert (=> setIsEmpty!14578 setRes!14578))

(declare-fun tp!647535 () Bool)

(declare-fun setElem!14578 () Context!2434)

(declare-fun setNonEmpty!14578 () Bool)

(declare-fun e!1349039 () Bool)

(assert (=> setNonEmpty!14578 (= setRes!14578 (and tp!647535 (inv!31192 setElem!14578) e!1349039))))

(declare-fun setRest!14578 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14578 (= setRest!14542 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14578 true) setRest!14578))))

(declare-fun b!2119057 () Bool)

(declare-fun tp!647536 () Bool)

(assert (=> b!2119057 (= e!1349039 tp!647536)))

(assert (= (and setNonEmpty!14542 condSetEmpty!14578) setIsEmpty!14578))

(assert (= (and setNonEmpty!14542 (not condSetEmpty!14578)) setNonEmpty!14578))

(assert (= setNonEmpty!14578 b!2119057))

(declare-fun m!2573819 () Bool)

(assert (=> setNonEmpty!14578 m!2573819))

(declare-fun b!2119058 () Bool)

(declare-fun e!1349040 () Bool)

(declare-fun tp!647537 () Bool)

(declare-fun tp!647538 () Bool)

(assert (=> b!2119058 (= e!1349040 (and tp!647537 tp!647538))))

(assert (=> b!2118866 (= tp!647468 e!1349040)))

(assert (= (and b!2118866 ((_ is Cons!23608) (exprs!1717 setElem!14560))) b!2119058))

(declare-fun condSetEmpty!14579 () Bool)

(assert (=> setNonEmpty!14541 (= condSetEmpty!14579 (= setRest!14541 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14579 () Bool)

(assert (=> setNonEmpty!14541 (= tp!647390 setRes!14579)))

(declare-fun setIsEmpty!14579 () Bool)

(assert (=> setIsEmpty!14579 setRes!14579))

(declare-fun e!1349041 () Bool)

(declare-fun setNonEmpty!14579 () Bool)

(declare-fun setElem!14579 () Context!2434)

(declare-fun tp!647539 () Bool)

(assert (=> setNonEmpty!14579 (= setRes!14579 (and tp!647539 (inv!31192 setElem!14579) e!1349041))))

(declare-fun setRest!14579 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14579 (= setRest!14541 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14579 true) setRest!14579))))

(declare-fun b!2119059 () Bool)

(declare-fun tp!647540 () Bool)

(assert (=> b!2119059 (= e!1349041 tp!647540)))

(assert (= (and setNonEmpty!14541 condSetEmpty!14579) setIsEmpty!14579))

(assert (= (and setNonEmpty!14541 (not condSetEmpty!14579)) setNonEmpty!14579))

(assert (= setNonEmpty!14579 b!2119059))

(declare-fun m!2573821 () Bool)

(assert (=> setNonEmpty!14579 m!2573821))

(declare-fun condSetEmpty!14580 () Bool)

(assert (=> setNonEmpty!14544 (= condSetEmpty!14580 (= setRest!14544 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14580 () Bool)

(assert (=> setNonEmpty!14544 (= tp!647404 setRes!14580)))

(declare-fun setIsEmpty!14580 () Bool)

(assert (=> setIsEmpty!14580 setRes!14580))

(declare-fun tp!647541 () Bool)

(declare-fun setElem!14580 () Context!2434)

(declare-fun e!1349042 () Bool)

(declare-fun setNonEmpty!14580 () Bool)

(assert (=> setNonEmpty!14580 (= setRes!14580 (and tp!647541 (inv!31192 setElem!14580) e!1349042))))

(declare-fun setRest!14580 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14580 (= setRest!14544 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14580 true) setRest!14580))))

(declare-fun b!2119060 () Bool)

(declare-fun tp!647542 () Bool)

(assert (=> b!2119060 (= e!1349042 tp!647542)))

(assert (= (and setNonEmpty!14544 condSetEmpty!14580) setIsEmpty!14580))

(assert (= (and setNonEmpty!14544 (not condSetEmpty!14580)) setNonEmpty!14580))

(assert (= setNonEmpty!14580 b!2119060))

(declare-fun m!2573823 () Bool)

(assert (=> setNonEmpty!14580 m!2573823))

(declare-fun b!2119062 () Bool)

(declare-fun e!1349043 () Bool)

(declare-fun tp!647544 () Bool)

(assert (=> b!2119062 (= e!1349043 tp!647544)))

(declare-fun e!1349044 () Bool)

(assert (=> b!2118835 (= tp!647427 e!1349044)))

(declare-fun setIsEmpty!14581 () Bool)

(declare-fun setRes!14581 () Bool)

(assert (=> setIsEmpty!14581 setRes!14581))

(declare-fun b!2119061 () Bool)

(declare-fun tp!647543 () Bool)

(assert (=> b!2119061 (= e!1349044 (and setRes!14581 tp!647543))))

(declare-fun condSetEmpty!14581 () Bool)

(assert (=> b!2119061 (= condSetEmpty!14581 (= (_1!13462 (_1!13463 (h!29011 (t!196207 mapDefault!11638)))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun tp!647545 () Bool)

(declare-fun setNonEmpty!14581 () Bool)

(declare-fun setElem!14581 () Context!2434)

(assert (=> setNonEmpty!14581 (= setRes!14581 (and tp!647545 (inv!31192 setElem!14581) e!1349043))))

(declare-fun setRest!14581 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14581 (= (_1!13462 (_1!13463 (h!29011 (t!196207 mapDefault!11638)))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14581 true) setRest!14581))))

(assert (= (and b!2119061 condSetEmpty!14581) setIsEmpty!14581))

(assert (= (and b!2119061 (not condSetEmpty!14581)) setNonEmpty!14581))

(assert (= setNonEmpty!14581 b!2119062))

(assert (= (and b!2118835 ((_ is Cons!23610) (t!196207 mapDefault!11638))) b!2119061))

(declare-fun m!2573825 () Bool)

(assert (=> setNonEmpty!14581 m!2573825))

(declare-fun b!2119067 () Bool)

(declare-fun e!1349047 () Bool)

(declare-fun tp!647548 () Bool)

(assert (=> b!2119067 (= e!1349047 (and tp_is_empty!9481 tp!647548))))

(assert (=> b!2118771 (= tp!647338 e!1349047)))

(assert (= (and b!2118771 ((_ is Cons!23611) (innerList!7846 (xs!10728 (c!339599 totalInput!886))))) b!2119067))

(declare-fun condSetEmpty!14582 () Bool)

(assert (=> setNonEmpty!14560 (= condSetEmpty!14582 (= setRest!14560 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14582 () Bool)

(assert (=> setNonEmpty!14560 (= tp!647467 setRes!14582)))

(declare-fun setIsEmpty!14582 () Bool)

(assert (=> setIsEmpty!14582 setRes!14582))

(declare-fun setElem!14582 () Context!2434)

(declare-fun tp!647549 () Bool)

(declare-fun setNonEmpty!14582 () Bool)

(declare-fun e!1349048 () Bool)

(assert (=> setNonEmpty!14582 (= setRes!14582 (and tp!647549 (inv!31192 setElem!14582) e!1349048))))

(declare-fun setRest!14582 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14582 (= setRest!14560 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14582 true) setRest!14582))))

(declare-fun b!2119068 () Bool)

(declare-fun tp!647550 () Bool)

(assert (=> b!2119068 (= e!1349048 tp!647550)))

(assert (= (and setNonEmpty!14560 condSetEmpty!14582) setIsEmpty!14582))

(assert (= (and setNonEmpty!14560 (not condSetEmpty!14582)) setNonEmpty!14582))

(assert (= setNonEmpty!14582 b!2119068))

(declare-fun m!2573827 () Bool)

(assert (=> setNonEmpty!14582 m!2573827))

(declare-fun setIsEmpty!14583 () Bool)

(declare-fun setRes!14583 () Bool)

(assert (=> setIsEmpty!14583 setRes!14583))

(declare-fun tp!647553 () Bool)

(declare-fun tp!647552 () Bool)

(declare-fun e!1349052 () Bool)

(declare-fun e!1349050 () Bool)

(declare-fun b!2119069 () Bool)

(declare-fun mapValue!11642 () List!23696)

(assert (=> b!2119069 (= e!1349052 (and tp!647552 (inv!31192 (_2!13464 (_1!13465 (h!29013 mapValue!11642)))) e!1349050 tp_is_empty!9481 setRes!14583 tp!647553))))

(declare-fun condSetEmpty!14584 () Bool)

(assert (=> b!2119069 (= condSetEmpty!14584 (= (_2!13465 (h!29013 mapValue!11642)) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2119070 () Bool)

(declare-fun tp!647554 () Bool)

(assert (=> b!2119070 (= e!1349050 tp!647554)))

(declare-fun mapIsEmpty!11642 () Bool)

(declare-fun mapRes!11642 () Bool)

(assert (=> mapIsEmpty!11642 mapRes!11642))

(declare-fun b!2119071 () Bool)

(declare-fun e!1349051 () Bool)

(declare-fun tp!647556 () Bool)

(assert (=> b!2119071 (= e!1349051 tp!647556)))

(declare-fun b!2119072 () Bool)

(declare-fun e!1349049 () Bool)

(declare-fun tp!647555 () Bool)

(assert (=> b!2119072 (= e!1349049 tp!647555)))

(declare-fun setElem!14583 () Context!2434)

(declare-fun tp!647561 () Bool)

(declare-fun setRes!14584 () Bool)

(declare-fun setNonEmpty!14583 () Bool)

(assert (=> setNonEmpty!14583 (= setRes!14584 (and tp!647561 (inv!31192 setElem!14583) e!1349049))))

(declare-fun mapDefault!11642 () List!23696)

(declare-fun setRest!14583 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14583 (= (_2!13465 (h!29013 mapDefault!11642)) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14583 true) setRest!14583))))

(declare-fun b!2119073 () Bool)

(declare-fun e!1349054 () Bool)

(declare-fun tp!647558 () Bool)

(assert (=> b!2119073 (= e!1349054 tp!647558)))

(declare-fun condMapEmpty!11642 () Bool)

(assert (=> mapNonEmpty!11635 (= condMapEmpty!11642 (= mapRest!11635 ((as const (Array (_ BitVec 32) List!23696)) mapDefault!11642)))))

(declare-fun e!1349053 () Bool)

(assert (=> mapNonEmpty!11635 (= tp!647380 (and e!1349053 mapRes!11642))))

(declare-fun setNonEmpty!14584 () Bool)

(declare-fun setElem!14584 () Context!2434)

(declare-fun tp!647559 () Bool)

(assert (=> setNonEmpty!14584 (= setRes!14583 (and tp!647559 (inv!31192 setElem!14584) e!1349054))))

(declare-fun setRest!14584 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14584 (= (_2!13465 (h!29013 mapValue!11642)) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14584 true) setRest!14584))))

(declare-fun mapNonEmpty!11642 () Bool)

(declare-fun tp!647551 () Bool)

(assert (=> mapNonEmpty!11642 (= mapRes!11642 (and tp!647551 e!1349052))))

(declare-fun mapKey!11642 () (_ BitVec 32))

(declare-fun mapRest!11642 () (Array (_ BitVec 32) List!23696))

(assert (=> mapNonEmpty!11642 (= mapRest!11635 (store mapRest!11642 mapKey!11642 mapValue!11642))))

(declare-fun tp!647560 () Bool)

(declare-fun tp!647557 () Bool)

(declare-fun b!2119074 () Bool)

(assert (=> b!2119074 (= e!1349053 (and tp!647557 (inv!31192 (_2!13464 (_1!13465 (h!29013 mapDefault!11642)))) e!1349051 tp_is_empty!9481 setRes!14584 tp!647560))))

(declare-fun condSetEmpty!14583 () Bool)

(assert (=> b!2119074 (= condSetEmpty!14583 (= (_2!13465 (h!29013 mapDefault!11642)) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14584 () Bool)

(assert (=> setIsEmpty!14584 setRes!14584))

(assert (= (and mapNonEmpty!11635 condMapEmpty!11642) mapIsEmpty!11642))

(assert (= (and mapNonEmpty!11635 (not condMapEmpty!11642)) mapNonEmpty!11642))

(assert (= b!2119069 b!2119070))

(assert (= (and b!2119069 condSetEmpty!14584) setIsEmpty!14583))

(assert (= (and b!2119069 (not condSetEmpty!14584)) setNonEmpty!14584))

(assert (= setNonEmpty!14584 b!2119073))

(assert (= (and mapNonEmpty!11642 ((_ is Cons!23612) mapValue!11642)) b!2119069))

(assert (= b!2119074 b!2119071))

(assert (= (and b!2119074 condSetEmpty!14583) setIsEmpty!14584))

(assert (= (and b!2119074 (not condSetEmpty!14583)) setNonEmpty!14583))

(assert (= setNonEmpty!14583 b!2119072))

(assert (= (and mapNonEmpty!11635 ((_ is Cons!23612) mapDefault!11642)) b!2119074))

(declare-fun m!2573829 () Bool)

(assert (=> setNonEmpty!14583 m!2573829))

(declare-fun m!2573831 () Bool)

(assert (=> b!2119069 m!2573831))

(declare-fun m!2573833 () Bool)

(assert (=> b!2119074 m!2573833))

(declare-fun m!2573835 () Bool)

(assert (=> setNonEmpty!14584 m!2573835))

(declare-fun m!2573837 () Bool)

(assert (=> mapNonEmpty!11642 m!2573837))

(declare-fun condSetEmpty!14585 () Bool)

(assert (=> setNonEmpty!14565 (= condSetEmpty!14585 (= setRest!14565 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14585 () Bool)

(assert (=> setNonEmpty!14565 (= tp!647487 setRes!14585)))

(declare-fun setIsEmpty!14585 () Bool)

(assert (=> setIsEmpty!14585 setRes!14585))

(declare-fun tp!647562 () Bool)

(declare-fun setElem!14585 () Context!2434)

(declare-fun e!1349055 () Bool)

(declare-fun setNonEmpty!14585 () Bool)

(assert (=> setNonEmpty!14585 (= setRes!14585 (and tp!647562 (inv!31192 setElem!14585) e!1349055))))

(declare-fun setRest!14585 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14585 (= setRest!14565 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14585 true) setRest!14585))))

(declare-fun b!2119075 () Bool)

(declare-fun tp!647563 () Bool)

(assert (=> b!2119075 (= e!1349055 tp!647563)))

(assert (= (and setNonEmpty!14565 condSetEmpty!14585) setIsEmpty!14585))

(assert (= (and setNonEmpty!14565 (not condSetEmpty!14585)) setNonEmpty!14585))

(assert (= setNonEmpty!14585 b!2119075))

(declare-fun m!2573839 () Bool)

(assert (=> setNonEmpty!14585 m!2573839))

(declare-fun b!2119076 () Bool)

(declare-fun e!1349056 () Bool)

(declare-fun tp!647564 () Bool)

(declare-fun tp!647565 () Bool)

(assert (=> b!2119076 (= e!1349056 (and tp!647564 tp!647565))))

(assert (=> b!2118808 (= tp!647392 e!1349056)))

(assert (= (and b!2118808 ((_ is Cons!23608) (exprs!1717 (_2!13464 (_1!13465 (h!29013 mapValue!11631)))))) b!2119076))

(declare-fun b!2119077 () Bool)

(declare-fun e!1349057 () Bool)

(declare-fun tp!647566 () Bool)

(declare-fun tp!647567 () Bool)

(assert (=> b!2119077 (= e!1349057 (and tp!647566 tp!647567))))

(assert (=> b!2118818 (= tp!647405 e!1349057)))

(assert (= (and b!2118818 ((_ is Cons!23608) (exprs!1717 setElem!14544))) b!2119077))

(declare-fun b!2119078 () Bool)

(declare-fun e!1349058 () Bool)

(declare-fun tp!647568 () Bool)

(declare-fun tp!647569 () Bool)

(assert (=> b!2119078 (= e!1349058 (and tp!647568 tp!647569))))

(assert (=> b!2118859 (= tp!647466 e!1349058)))

(assert (= (and b!2118859 ((_ is Cons!23608) (exprs!1717 setElem!14558))) b!2119078))

(declare-fun condSetEmpty!14586 () Bool)

(assert (=> setNonEmpty!14564 (= condSetEmpty!14586 (= setRest!14564 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14586 () Bool)

(assert (=> setNonEmpty!14564 (= tp!647484 setRes!14586)))

(declare-fun setIsEmpty!14586 () Bool)

(assert (=> setIsEmpty!14586 setRes!14586))

(declare-fun tp!647570 () Bool)

(declare-fun setNonEmpty!14586 () Bool)

(declare-fun e!1349059 () Bool)

(declare-fun setElem!14586 () Context!2434)

(assert (=> setNonEmpty!14586 (= setRes!14586 (and tp!647570 (inv!31192 setElem!14586) e!1349059))))

(declare-fun setRest!14586 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14586 (= setRest!14564 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14586 true) setRest!14586))))

(declare-fun b!2119079 () Bool)

(declare-fun tp!647571 () Bool)

(assert (=> b!2119079 (= e!1349059 tp!647571)))

(assert (= (and setNonEmpty!14564 condSetEmpty!14586) setIsEmpty!14586))

(assert (= (and setNonEmpty!14564 (not condSetEmpty!14586)) setNonEmpty!14586))

(assert (= setNonEmpty!14586 b!2119079))

(declare-fun m!2573841 () Bool)

(assert (=> setNonEmpty!14586 m!2573841))

(declare-fun b!2119081 () Bool)

(declare-fun e!1349060 () Bool)

(declare-fun tp!647573 () Bool)

(assert (=> b!2119081 (= e!1349060 tp!647573)))

(declare-fun e!1349061 () Bool)

(assert (=> b!2118875 (= tp!647482 e!1349061)))

(declare-fun setIsEmpty!14587 () Bool)

(declare-fun setRes!14587 () Bool)

(assert (=> setIsEmpty!14587 setRes!14587))

(declare-fun b!2119080 () Bool)

(declare-fun tp!647572 () Bool)

(assert (=> b!2119080 (= e!1349061 (and setRes!14587 tp!647572))))

(declare-fun condSetEmpty!14587 () Bool)

(assert (=> b!2119080 (= condSetEmpty!14587 (= (_1!13462 (_1!13463 (h!29011 (t!196207 (zeroValue!2661 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130)))))))))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun tp!647574 () Bool)

(declare-fun setElem!14587 () Context!2434)

(declare-fun setNonEmpty!14587 () Bool)

(assert (=> setNonEmpty!14587 (= setRes!14587 (and tp!647574 (inv!31192 setElem!14587) e!1349060))))

(declare-fun setRest!14587 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14587 (= (_1!13462 (_1!13463 (h!29011 (t!196207 (zeroValue!2661 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130)))))))))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14587 true) setRest!14587))))

(assert (= (and b!2119080 condSetEmpty!14587) setIsEmpty!14587))

(assert (= (and b!2119080 (not condSetEmpty!14587)) setNonEmpty!14587))

(assert (= setNonEmpty!14587 b!2119081))

(assert (= (and b!2118875 ((_ is Cons!23610) (t!196207 (zeroValue!2661 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))))) b!2119080))

(declare-fun m!2573843 () Bool)

(assert (=> setNonEmpty!14587 m!2573843))

(declare-fun condSetEmpty!14588 () Bool)

(assert (=> setNonEmpty!14550 (= condSetEmpty!14588 (= setRest!14549 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14588 () Bool)

(assert (=> setNonEmpty!14550 (= tp!647428 setRes!14588)))

(declare-fun setIsEmpty!14588 () Bool)

(assert (=> setIsEmpty!14588 setRes!14588))

(declare-fun e!1349062 () Bool)

(declare-fun setNonEmpty!14588 () Bool)

(declare-fun setElem!14588 () Context!2434)

(declare-fun tp!647575 () Bool)

(assert (=> setNonEmpty!14588 (= setRes!14588 (and tp!647575 (inv!31192 setElem!14588) e!1349062))))

(declare-fun setRest!14588 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14588 (= setRest!14549 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14588 true) setRest!14588))))

(declare-fun b!2119082 () Bool)

(declare-fun tp!647576 () Bool)

(assert (=> b!2119082 (= e!1349062 tp!647576)))

(assert (= (and setNonEmpty!14550 condSetEmpty!14588) setIsEmpty!14588))

(assert (= (and setNonEmpty!14550 (not condSetEmpty!14588)) setNonEmpty!14588))

(assert (= setNonEmpty!14588 b!2119082))

(declare-fun m!2573845 () Bool)

(assert (=> setNonEmpty!14588 m!2573845))

(declare-fun b!2119094 () Bool)

(declare-fun e!1349065 () Bool)

(declare-fun tp!647587 () Bool)

(declare-fun tp!647591 () Bool)

(assert (=> b!2119094 (= e!1349065 (and tp!647587 tp!647591))))

(declare-fun b!2119095 () Bool)

(declare-fun tp!647589 () Bool)

(assert (=> b!2119095 (= e!1349065 tp!647589)))

(assert (=> b!2118809 (= tp!647395 e!1349065)))

(declare-fun b!2119096 () Bool)

(declare-fun tp!647590 () Bool)

(declare-fun tp!647588 () Bool)

(assert (=> b!2119096 (= e!1349065 (and tp!647590 tp!647588))))

(declare-fun b!2119093 () Bool)

(assert (=> b!2119093 (= e!1349065 tp_is_empty!9481)))

(assert (= (and b!2118809 ((_ is ElementMatch!5647) (_1!13464 (_1!13465 (h!29013 mapValue!11631))))) b!2119093))

(assert (= (and b!2118809 ((_ is Concat!9949) (_1!13464 (_1!13465 (h!29013 mapValue!11631))))) b!2119094))

(assert (= (and b!2118809 ((_ is Star!5647) (_1!13464 (_1!13465 (h!29013 mapValue!11631))))) b!2119095))

(assert (= (and b!2118809 ((_ is Union!5647) (_1!13464 (_1!13465 (h!29013 mapValue!11631))))) b!2119096))

(declare-fun b!2119097 () Bool)

(declare-fun e!1349067 () Bool)

(declare-fun tp!647593 () Bool)

(assert (=> b!2119097 (= e!1349067 tp!647593)))

(declare-fun e!1349066 () Bool)

(declare-fun tp!647594 () Bool)

(declare-fun setNonEmpty!14589 () Bool)

(declare-fun setElem!14589 () Context!2434)

(declare-fun setRes!14589 () Bool)

(assert (=> setNonEmpty!14589 (= setRes!14589 (and tp!647594 (inv!31192 setElem!14589) e!1349066))))

(declare-fun setRest!14589 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14589 (= (_2!13465 (h!29013 (t!196209 mapValue!11631))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14589 true) setRest!14589))))

(declare-fun e!1349068 () Bool)

(declare-fun tp!647596 () Bool)

(declare-fun tp!647592 () Bool)

(declare-fun b!2119098 () Bool)

(assert (=> b!2119098 (= e!1349068 (and tp!647596 (inv!31192 (_2!13464 (_1!13465 (h!29013 (t!196209 mapValue!11631))))) e!1349067 tp_is_empty!9481 setRes!14589 tp!647592))))

(declare-fun condSetEmpty!14589 () Bool)

(assert (=> b!2119098 (= condSetEmpty!14589 (= (_2!13465 (h!29013 (t!196209 mapValue!11631))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2119099 () Bool)

(declare-fun tp!647595 () Bool)

(assert (=> b!2119099 (= e!1349066 tp!647595)))

(declare-fun setIsEmpty!14589 () Bool)

(assert (=> setIsEmpty!14589 setRes!14589))

(assert (=> b!2118809 (= tp!647391 e!1349068)))

(assert (= b!2119098 b!2119097))

(assert (= (and b!2119098 condSetEmpty!14589) setIsEmpty!14589))

(assert (= (and b!2119098 (not condSetEmpty!14589)) setNonEmpty!14589))

(assert (= setNonEmpty!14589 b!2119099))

(assert (= (and b!2118809 ((_ is Cons!23612) (t!196209 mapValue!11631))) b!2119098))

(declare-fun m!2573847 () Bool)

(assert (=> setNonEmpty!14589 m!2573847))

(declare-fun m!2573849 () Bool)

(assert (=> b!2119098 m!2573849))

(declare-fun e!1349070 () Bool)

(declare-fun setRes!14590 () Bool)

(declare-fun b!2119100 () Bool)

(declare-fun tp!647600 () Bool)

(declare-fun e!1349071 () Bool)

(assert (=> b!2119100 (= e!1349071 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 (t!196206 mapDefault!11630))))) e!1349070 tp_is_empty!9481 setRes!14590 tp!647600))))

(declare-fun condSetEmpty!14590 () Bool)

(assert (=> b!2119100 (= condSetEmpty!14590 (= (_2!13461 (h!29010 (t!196206 mapDefault!11630))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14590 () Bool)

(assert (=> setIsEmpty!14590 setRes!14590))

(declare-fun b!2119101 () Bool)

(declare-fun tp!647599 () Bool)

(assert (=> b!2119101 (= e!1349070 tp!647599)))

(declare-fun b!2119102 () Bool)

(declare-fun e!1349069 () Bool)

(declare-fun tp!647598 () Bool)

(assert (=> b!2119102 (= e!1349069 tp!647598)))

(assert (=> b!2118785 (= tp!647357 e!1349071)))

(declare-fun setNonEmpty!14590 () Bool)

(declare-fun setElem!14590 () Context!2434)

(declare-fun tp!647597 () Bool)

(assert (=> setNonEmpty!14590 (= setRes!14590 (and tp!647597 (inv!31192 setElem!14590) e!1349069))))

(declare-fun setRest!14590 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14590 (= (_2!13461 (h!29010 (t!196206 mapDefault!11630))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14590 true) setRest!14590))))

(assert (= b!2119100 b!2119101))

(assert (= (and b!2119100 condSetEmpty!14590) setIsEmpty!14590))

(assert (= (and b!2119100 (not condSetEmpty!14590)) setNonEmpty!14590))

(assert (= setNonEmpty!14590 b!2119102))

(assert (= (and b!2118785 ((_ is Cons!23609) (t!196206 mapDefault!11630))) b!2119100))

(declare-fun m!2573851 () Bool)

(assert (=> b!2119100 m!2573851))

(declare-fun m!2573853 () Bool)

(assert (=> setNonEmpty!14590 m!2573853))

(declare-fun setRes!14591 () Bool)

(declare-fun tp!647604 () Bool)

(declare-fun e!1349073 () Bool)

(declare-fun b!2119103 () Bool)

(declare-fun e!1349074 () Bool)

(assert (=> b!2119103 (= e!1349074 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 (t!196206 mapDefault!11641))))) e!1349073 tp_is_empty!9481 setRes!14591 tp!647604))))

(declare-fun condSetEmpty!14591 () Bool)

(assert (=> b!2119103 (= condSetEmpty!14591 (= (_2!13461 (h!29010 (t!196206 mapDefault!11641))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14591 () Bool)

(assert (=> setIsEmpty!14591 setRes!14591))

(declare-fun b!2119104 () Bool)

(declare-fun tp!647603 () Bool)

(assert (=> b!2119104 (= e!1349073 tp!647603)))

(declare-fun b!2119105 () Bool)

(declare-fun e!1349072 () Bool)

(declare-fun tp!647602 () Bool)

(assert (=> b!2119105 (= e!1349072 tp!647602)))

(assert (=> b!2118860 (= tp!647460 e!1349074)))

(declare-fun setNonEmpty!14591 () Bool)

(declare-fun setElem!14591 () Context!2434)

(declare-fun tp!647601 () Bool)

(assert (=> setNonEmpty!14591 (= setRes!14591 (and tp!647601 (inv!31192 setElem!14591) e!1349072))))

(declare-fun setRest!14591 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14591 (= (_2!13461 (h!29010 (t!196206 mapDefault!11641))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14591 true) setRest!14591))))

(assert (= b!2119103 b!2119104))

(assert (= (and b!2119103 condSetEmpty!14591) setIsEmpty!14591))

(assert (= (and b!2119103 (not condSetEmpty!14591)) setNonEmpty!14591))

(assert (= setNonEmpty!14591 b!2119105))

(assert (= (and b!2118860 ((_ is Cons!23609) (t!196206 mapDefault!11641))) b!2119103))

(declare-fun m!2573855 () Bool)

(assert (=> b!2119103 m!2573855))

(declare-fun m!2573857 () Bool)

(assert (=> setNonEmpty!14591 m!2573857))

(declare-fun b!2119106 () Bool)

(declare-fun e!1349075 () Bool)

(declare-fun tp!647605 () Bool)

(declare-fun tp!647606 () Bool)

(assert (=> b!2119106 (= e!1349075 (and tp!647605 tp!647606))))

(assert (=> b!2118755 (= tp!647324 e!1349075)))

(assert (= (and b!2118755 ((_ is Cons!23608) (exprs!1717 (_2!13464 (_1!13465 (h!29013 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))))))) b!2119106))

(declare-fun b!2119107 () Bool)

(declare-fun e!1349076 () Bool)

(declare-fun tp!647607 () Bool)

(declare-fun tp!647608 () Bool)

(assert (=> b!2119107 (= e!1349076 (and tp!647607 tp!647608))))

(assert (=> b!2118787 (= tp!647355 e!1349076)))

(assert (= (and b!2118787 ((_ is Cons!23608) (exprs!1717 setElem!14536))) b!2119107))

(declare-fun b!2119108 () Bool)

(declare-fun e!1349077 () Bool)

(declare-fun tp!647609 () Bool)

(declare-fun tp!647610 () Bool)

(assert (=> b!2119108 (= e!1349077 (and tp!647609 tp!647610))))

(assert (=> b!2118752 (= tp!647319 e!1349077)))

(assert (= (and b!2118752 ((_ is Cons!23608) (exprs!1717 (_2!13464 (_1!13465 (h!29013 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110)))))))))))) b!2119108))

(declare-fun b!2119109 () Bool)

(declare-fun e!1349078 () Bool)

(declare-fun tp!647611 () Bool)

(declare-fun tp!647612 () Bool)

(assert (=> b!2119109 (= e!1349078 (and tp!647611 tp!647612))))

(assert (=> b!2118874 (= tp!647480 e!1349078)))

(assert (= (and b!2118874 ((_ is Cons!23608) (exprs!1717 setElem!14563))) b!2119109))

(declare-fun b!2119111 () Bool)

(declare-fun e!1349079 () Bool)

(declare-fun tp!647613 () Bool)

(declare-fun tp!647617 () Bool)

(assert (=> b!2119111 (= e!1349079 (and tp!647613 tp!647617))))

(declare-fun b!2119112 () Bool)

(declare-fun tp!647615 () Bool)

(assert (=> b!2119112 (= e!1349079 tp!647615)))

(assert (=> b!2118753 (= tp!647322 e!1349079)))

(declare-fun b!2119113 () Bool)

(declare-fun tp!647616 () Bool)

(declare-fun tp!647614 () Bool)

(assert (=> b!2119113 (= e!1349079 (and tp!647616 tp!647614))))

(declare-fun b!2119110 () Bool)

(assert (=> b!2119110 (= e!1349079 tp_is_empty!9481)))

(assert (= (and b!2118753 ((_ is ElementMatch!5647) (_1!13464 (_1!13465 (h!29013 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))))) b!2119110))

(assert (= (and b!2118753 ((_ is Concat!9949) (_1!13464 (_1!13465 (h!29013 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))))) b!2119111))

(assert (= (and b!2118753 ((_ is Star!5647) (_1!13464 (_1!13465 (h!29013 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))))) b!2119112))

(assert (= (and b!2118753 ((_ is Union!5647) (_1!13464 (_1!13465 (h!29013 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))))) b!2119113))

(declare-fun b!2119114 () Bool)

(declare-fun e!1349081 () Bool)

(declare-fun tp!647619 () Bool)

(assert (=> b!2119114 (= e!1349081 tp!647619)))

(declare-fun setElem!14592 () Context!2434)

(declare-fun tp!647620 () Bool)

(declare-fun setNonEmpty!14592 () Bool)

(declare-fun e!1349080 () Bool)

(declare-fun setRes!14592 () Bool)

(assert (=> setNonEmpty!14592 (= setRes!14592 (and tp!647620 (inv!31192 setElem!14592) e!1349080))))

(declare-fun setRest!14592 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14592 (= (_2!13465 (h!29013 (t!196209 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14592 true) setRest!14592))))

(declare-fun tp!647618 () Bool)

(declare-fun e!1349082 () Bool)

(declare-fun b!2119115 () Bool)

(declare-fun tp!647622 () Bool)

(assert (=> b!2119115 (= e!1349082 (and tp!647622 (inv!31192 (_2!13464 (_1!13465 (h!29013 (t!196209 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))))) e!1349081 tp_is_empty!9481 setRes!14592 tp!647618))))

(declare-fun condSetEmpty!14592 () Bool)

(assert (=> b!2119115 (= condSetEmpty!14592 (= (_2!13465 (h!29013 (t!196209 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2119116 () Bool)

(declare-fun tp!647621 () Bool)

(assert (=> b!2119116 (= e!1349080 tp!647621)))

(declare-fun setIsEmpty!14592 () Bool)

(assert (=> setIsEmpty!14592 setRes!14592))

(assert (=> b!2118753 (= tp!647318 e!1349082)))

(assert (= b!2119115 b!2119114))

(assert (= (and b!2119115 condSetEmpty!14592) setIsEmpty!14592))

(assert (= (and b!2119115 (not condSetEmpty!14592)) setNonEmpty!14592))

(assert (= setNonEmpty!14592 b!2119116))

(assert (= (and b!2118753 ((_ is Cons!23612) (t!196209 (zeroValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))) b!2119115))

(declare-fun m!2573859 () Bool)

(assert (=> setNonEmpty!14592 m!2573859))

(declare-fun m!2573861 () Bool)

(assert (=> b!2119115 m!2573861))

(declare-fun b!2119117 () Bool)

(declare-fun e!1349083 () Bool)

(declare-fun tp!647623 () Bool)

(declare-fun tp!647625 () Bool)

(assert (=> b!2119117 (= e!1349083 (and (inv!31193 (left!18284 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) tp!647625 (inv!31193 (right!18614 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) tp!647623))))

(declare-fun b!2119119 () Bool)

(declare-fun e!1349084 () Bool)

(declare-fun tp!647624 () Bool)

(assert (=> b!2119119 (= e!1349084 tp!647624)))

(declare-fun b!2119118 () Bool)

(assert (=> b!2119118 (= e!1349083 (and (inv!31200 (xs!10728 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) e!1349084))))

(assert (=> b!2118819 (= tp!647409 (and (inv!31193 (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) e!1349083))))

(assert (= (and b!2118819 ((_ is Node!7786) (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) b!2119117))

(assert (= b!2119118 b!2119119))

(assert (= (and b!2118819 ((_ is Leaf!11377) (left!18284 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) b!2119118))

(declare-fun m!2573863 () Bool)

(assert (=> b!2119117 m!2573863))

(declare-fun m!2573865 () Bool)

(assert (=> b!2119117 m!2573865))

(declare-fun m!2573867 () Bool)

(assert (=> b!2119118 m!2573867))

(assert (=> b!2118819 m!2573528))

(declare-fun e!1349085 () Bool)

(declare-fun b!2119120 () Bool)

(declare-fun tp!647626 () Bool)

(declare-fun tp!647628 () Bool)

(assert (=> b!2119120 (= e!1349085 (and (inv!31193 (left!18284 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) tp!647628 (inv!31193 (right!18614 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) tp!647626))))

(declare-fun b!2119122 () Bool)

(declare-fun e!1349086 () Bool)

(declare-fun tp!647627 () Bool)

(assert (=> b!2119122 (= e!1349086 tp!647627)))

(declare-fun b!2119121 () Bool)

(assert (=> b!2119121 (= e!1349085 (and (inv!31200 (xs!10728 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) e!1349086))))

(assert (=> b!2118819 (= tp!647407 (and (inv!31193 (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))) e!1349085))))

(assert (= (and b!2118819 ((_ is Node!7786) (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) b!2119120))

(assert (= b!2119121 b!2119122))

(assert (= (and b!2118819 ((_ is Leaf!11377) (right!18614 (c!339599 (totalInput!2880 cacheFurthestNullable!130))))) b!2119121))

(declare-fun m!2573869 () Bool)

(assert (=> b!2119120 m!2573869))

(declare-fun m!2573871 () Bool)

(assert (=> b!2119120 m!2573871))

(declare-fun m!2573873 () Bool)

(assert (=> b!2119121 m!2573873))

(assert (=> b!2118819 m!2573530))

(declare-fun e!1349089 () Bool)

(declare-fun b!2119123 () Bool)

(declare-fun setRes!14593 () Bool)

(declare-fun tp!647632 () Bool)

(declare-fun e!1349088 () Bool)

(assert (=> b!2119123 (= e!1349089 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 (t!196206 (minValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))))))) e!1349088 tp_is_empty!9481 setRes!14593 tp!647632))))

(declare-fun condSetEmpty!14593 () Bool)

(assert (=> b!2119123 (= condSetEmpty!14593 (= (_2!13461 (h!29010 (t!196206 (minValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14593 () Bool)

(assert (=> setIsEmpty!14593 setRes!14593))

(declare-fun b!2119124 () Bool)

(declare-fun tp!647631 () Bool)

(assert (=> b!2119124 (= e!1349088 tp!647631)))

(declare-fun b!2119125 () Bool)

(declare-fun e!1349087 () Bool)

(declare-fun tp!647630 () Bool)

(assert (=> b!2119125 (= e!1349087 tp!647630)))

(assert (=> b!2118870 (= tp!647478 e!1349089)))

(declare-fun tp!647629 () Bool)

(declare-fun setElem!14593 () Context!2434)

(declare-fun setNonEmpty!14593 () Bool)

(assert (=> setNonEmpty!14593 (= setRes!14593 (and tp!647629 (inv!31192 setElem!14593) e!1349087))))

(declare-fun setRest!14593 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14593 (= (_2!13461 (h!29010 (t!196206 (minValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14593 true) setRest!14593))))

(assert (= b!2119123 b!2119124))

(assert (= (and b!2119123 condSetEmpty!14593) setIsEmpty!14593))

(assert (= (and b!2119123 (not condSetEmpty!14593)) setNonEmpty!14593))

(assert (= setNonEmpty!14593 b!2119125))

(assert (= (and b!2118870 ((_ is Cons!23609) (t!196206 (minValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991))))))))) b!2119123))

(declare-fun m!2573875 () Bool)

(assert (=> b!2119123 m!2573875))

(declare-fun m!2573877 () Bool)

(assert (=> setNonEmpty!14593 m!2573877))

(declare-fun b!2119127 () Bool)

(declare-fun e!1349090 () Bool)

(declare-fun tp!647633 () Bool)

(declare-fun tp!647637 () Bool)

(assert (=> b!2119127 (= e!1349090 (and tp!647633 tp!647637))))

(declare-fun b!2119128 () Bool)

(declare-fun tp!647635 () Bool)

(assert (=> b!2119128 (= e!1349090 tp!647635)))

(assert (=> b!2118756 (= tp!647327 e!1349090)))

(declare-fun b!2119129 () Bool)

(declare-fun tp!647636 () Bool)

(declare-fun tp!647634 () Bool)

(assert (=> b!2119129 (= e!1349090 (and tp!647636 tp!647634))))

(declare-fun b!2119126 () Bool)

(assert (=> b!2119126 (= e!1349090 tp_is_empty!9481)))

(assert (= (and b!2118756 ((_ is ElementMatch!5647) (_1!13464 (_1!13465 (h!29013 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))))) b!2119126))

(assert (= (and b!2118756 ((_ is Concat!9949) (_1!13464 (_1!13465 (h!29013 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))))) b!2119127))

(assert (= (and b!2118756 ((_ is Star!5647) (_1!13464 (_1!13465 (h!29013 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))))) b!2119128))

(assert (= (and b!2118756 ((_ is Union!5647) (_1!13464 (_1!13465 (h!29013 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))))) b!2119129))

(declare-fun b!2119130 () Bool)

(declare-fun e!1349092 () Bool)

(declare-fun tp!647639 () Bool)

(assert (=> b!2119130 (= e!1349092 tp!647639)))

(declare-fun setNonEmpty!14594 () Bool)

(declare-fun setElem!14594 () Context!2434)

(declare-fun e!1349091 () Bool)

(declare-fun setRes!14594 () Bool)

(declare-fun tp!647640 () Bool)

(assert (=> setNonEmpty!14594 (= setRes!14594 (and tp!647640 (inv!31192 setElem!14594) e!1349091))))

(declare-fun setRest!14594 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14594 (= (_2!13465 (h!29013 (t!196209 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14594 true) setRest!14594))))

(declare-fun tp!647638 () Bool)

(declare-fun b!2119131 () Bool)

(declare-fun e!1349093 () Bool)

(declare-fun tp!647642 () Bool)

(assert (=> b!2119131 (= e!1349093 (and tp!647642 (inv!31192 (_2!13464 (_1!13465 (h!29013 (t!196209 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))))) e!1349092 tp_is_empty!9481 setRes!14594 tp!647638))))

(declare-fun condSetEmpty!14594 () Bool)

(assert (=> b!2119131 (= condSetEmpty!14594 (= (_2!13465 (h!29013 (t!196209 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2119132 () Bool)

(declare-fun tp!647641 () Bool)

(assert (=> b!2119132 (= e!1349091 tp!647641)))

(declare-fun setIsEmpty!14594 () Bool)

(assert (=> setIsEmpty!14594 setRes!14594))

(assert (=> b!2118756 (= tp!647323 e!1349093)))

(assert (= b!2119131 b!2119130))

(assert (= (and b!2119131 condSetEmpty!14594) setIsEmpty!14594))

(assert (= (and b!2119131 (not condSetEmpty!14594)) setNonEmpty!14594))

(assert (= setNonEmpty!14594 b!2119132))

(assert (= (and b!2118756 ((_ is Cons!23612) (t!196209 (minValue!2662 (v!28139 (underlying!5003 (v!28140 (underlying!5004 (cache!2699 cacheDown!1110))))))))) b!2119131))

(declare-fun m!2573879 () Bool)

(assert (=> setNonEmpty!14594 m!2573879))

(declare-fun m!2573881 () Bool)

(assert (=> b!2119131 m!2573881))

(declare-fun b!2119133 () Bool)

(declare-fun e!1349094 () Bool)

(declare-fun tp!647643 () Bool)

(declare-fun tp!647644 () Bool)

(assert (=> b!2119133 (= e!1349094 (and tp!647643 tp!647644))))

(assert (=> b!2118843 (= tp!647438 e!1349094)))

(assert (= (and b!2118843 ((_ is Cons!23608) (exprs!1717 setElem!14553))) b!2119133))

(declare-fun b!2119134 () Bool)

(declare-fun e!1349095 () Bool)

(declare-fun tp!647645 () Bool)

(declare-fun tp!647646 () Bool)

(assert (=> b!2119134 (= e!1349095 (and tp!647645 tp!647646))))

(assert (=> b!2118862 (= tp!647465 e!1349095)))

(assert (= (and b!2118862 ((_ is Cons!23608) (exprs!1717 (_1!13460 (_1!13461 (h!29010 mapDefault!11641)))))) b!2119134))

(declare-fun b!2119136 () Bool)

(declare-fun e!1349096 () Bool)

(declare-fun tp!647647 () Bool)

(declare-fun tp!647651 () Bool)

(assert (=> b!2119136 (= e!1349096 (and tp!647647 tp!647651))))

(declare-fun b!2119137 () Bool)

(declare-fun tp!647649 () Bool)

(assert (=> b!2119137 (= e!1349096 tp!647649)))

(assert (=> b!2118802 (= tp!647381 e!1349096)))

(declare-fun b!2119138 () Bool)

(declare-fun tp!647650 () Bool)

(declare-fun tp!647648 () Bool)

(assert (=> b!2119138 (= e!1349096 (and tp!647650 tp!647648))))

(declare-fun b!2119135 () Bool)

(assert (=> b!2119135 (= e!1349096 tp_is_empty!9481)))

(assert (= (and b!2118802 ((_ is ElementMatch!5647) (_1!13464 (_1!13465 (h!29013 mapValue!11635))))) b!2119135))

(assert (= (and b!2118802 ((_ is Concat!9949) (_1!13464 (_1!13465 (h!29013 mapValue!11635))))) b!2119136))

(assert (= (and b!2118802 ((_ is Star!5647) (_1!13464 (_1!13465 (h!29013 mapValue!11635))))) b!2119137))

(assert (= (and b!2118802 ((_ is Union!5647) (_1!13464 (_1!13465 (h!29013 mapValue!11635))))) b!2119138))

(declare-fun b!2119139 () Bool)

(declare-fun e!1349098 () Bool)

(declare-fun tp!647653 () Bool)

(assert (=> b!2119139 (= e!1349098 tp!647653)))

(declare-fun setNonEmpty!14595 () Bool)

(declare-fun e!1349097 () Bool)

(declare-fun setRes!14595 () Bool)

(declare-fun tp!647654 () Bool)

(declare-fun setElem!14595 () Context!2434)

(assert (=> setNonEmpty!14595 (= setRes!14595 (and tp!647654 (inv!31192 setElem!14595) e!1349097))))

(declare-fun setRest!14595 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14595 (= (_2!13465 (h!29013 (t!196209 mapValue!11635))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14595 true) setRest!14595))))

(declare-fun tp!647652 () Bool)

(declare-fun b!2119140 () Bool)

(declare-fun tp!647656 () Bool)

(declare-fun e!1349099 () Bool)

(assert (=> b!2119140 (= e!1349099 (and tp!647656 (inv!31192 (_2!13464 (_1!13465 (h!29013 (t!196209 mapValue!11635))))) e!1349098 tp_is_empty!9481 setRes!14595 tp!647652))))

(declare-fun condSetEmpty!14595 () Bool)

(assert (=> b!2119140 (= condSetEmpty!14595 (= (_2!13465 (h!29013 (t!196209 mapValue!11635))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2119141 () Bool)

(declare-fun tp!647655 () Bool)

(assert (=> b!2119141 (= e!1349097 tp!647655)))

(declare-fun setIsEmpty!14595 () Bool)

(assert (=> setIsEmpty!14595 setRes!14595))

(assert (=> b!2118802 (= tp!647382 e!1349099)))

(assert (= b!2119140 b!2119139))

(assert (= (and b!2119140 condSetEmpty!14595) setIsEmpty!14595))

(assert (= (and b!2119140 (not condSetEmpty!14595)) setNonEmpty!14595))

(assert (= setNonEmpty!14595 b!2119141))

(assert (= (and b!2118802 ((_ is Cons!23612) (t!196209 mapValue!11635))) b!2119140))

(declare-fun m!2573883 () Bool)

(assert (=> setNonEmpty!14595 m!2573883))

(declare-fun m!2573885 () Bool)

(assert (=> b!2119140 m!2573885))

(declare-fun e!1349102 () Bool)

(declare-fun b!2119142 () Bool)

(declare-fun tp!647660 () Bool)

(declare-fun e!1349101 () Bool)

(declare-fun setRes!14596 () Bool)

(assert (=> b!2119142 (= e!1349102 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 (t!196206 mapValue!11630))))) e!1349101 tp_is_empty!9481 setRes!14596 tp!647660))))

(declare-fun condSetEmpty!14596 () Bool)

(assert (=> b!2119142 (= condSetEmpty!14596 (= (_2!13461 (h!29010 (t!196206 mapValue!11630))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14596 () Bool)

(assert (=> setIsEmpty!14596 setRes!14596))

(declare-fun b!2119143 () Bool)

(declare-fun tp!647659 () Bool)

(assert (=> b!2119143 (= e!1349101 tp!647659)))

(declare-fun b!2119144 () Bool)

(declare-fun e!1349100 () Bool)

(declare-fun tp!647658 () Bool)

(assert (=> b!2119144 (= e!1349100 tp!647658)))

(assert (=> b!2118864 (= tp!647470 e!1349102)))

(declare-fun tp!647657 () Bool)

(declare-fun setElem!14596 () Context!2434)

(declare-fun setNonEmpty!14596 () Bool)

(assert (=> setNonEmpty!14596 (= setRes!14596 (and tp!647657 (inv!31192 setElem!14596) e!1349100))))

(declare-fun setRest!14596 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14596 (= (_2!13461 (h!29010 (t!196206 mapValue!11630))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14596 true) setRest!14596))))

(assert (= b!2119142 b!2119143))

(assert (= (and b!2119142 condSetEmpty!14596) setIsEmpty!14596))

(assert (= (and b!2119142 (not condSetEmpty!14596)) setNonEmpty!14596))

(assert (= setNonEmpty!14596 b!2119144))

(assert (= (and b!2118864 ((_ is Cons!23609) (t!196206 mapValue!11630))) b!2119142))

(declare-fun m!2573887 () Bool)

(assert (=> b!2119142 m!2573887))

(declare-fun m!2573889 () Bool)

(assert (=> setNonEmpty!14596 m!2573889))

(declare-fun b!2119145 () Bool)

(declare-fun e!1349103 () Bool)

(declare-fun tp!647661 () Bool)

(declare-fun tp!647662 () Bool)

(assert (=> b!2119145 (= e!1349103 (and tp!647661 tp!647662))))

(assert (=> b!2118805 (= tp!647384 e!1349103)))

(assert (= (and b!2118805 ((_ is Cons!23608) (exprs!1717 setElem!14541))) b!2119145))

(declare-fun b!2119146 () Bool)

(declare-fun e!1349104 () Bool)

(declare-fun tp!647668 () Bool)

(assert (=> b!2119146 (= e!1349104 tp!647668)))

(declare-fun b!2119147 () Bool)

(declare-fun e!1349107 () Bool)

(declare-fun tp!647671 () Bool)

(assert (=> b!2119147 (= e!1349107 tp!647671)))

(declare-fun setNonEmpty!14597 () Bool)

(declare-fun setElem!14598 () Context!2434)

(declare-fun e!1349108 () Bool)

(declare-fun tp!647667 () Bool)

(declare-fun setRes!14597 () Bool)

(assert (=> setNonEmpty!14597 (= setRes!14597 (and tp!647667 (inv!31192 setElem!14598) e!1349108))))

(declare-fun mapValue!11643 () List!23693)

(declare-fun setRest!14598 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14597 (= (_2!13461 (h!29010 mapValue!11643)) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14598 true) setRest!14598))))

(declare-fun mapDefault!11643 () List!23693)

(declare-fun b!2119148 () Bool)

(declare-fun setRes!14598 () Bool)

(declare-fun e!1349105 () Bool)

(declare-fun tp!647665 () Bool)

(declare-fun e!1349106 () Bool)

(assert (=> b!2119148 (= e!1349105 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 mapDefault!11643)))) e!1349106 tp_is_empty!9481 setRes!14598 tp!647665))))

(declare-fun condSetEmpty!14597 () Bool)

(assert (=> b!2119148 (= condSetEmpty!14597 (= (_2!13461 (h!29010 mapDefault!11643)) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun e!1349109 () Bool)

(declare-fun tp!647663 () Bool)

(declare-fun b!2119149 () Bool)

(assert (=> b!2119149 (= e!1349109 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 mapValue!11643)))) e!1349104 tp_is_empty!9481 setRes!14597 tp!647663))))

(declare-fun condSetEmpty!14598 () Bool)

(assert (=> b!2119149 (= condSetEmpty!14598 (= (_2!13461 (h!29010 mapValue!11643)) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14597 () Bool)

(assert (=> setIsEmpty!14597 setRes!14598))

(declare-fun condMapEmpty!11643 () Bool)

(assert (=> mapNonEmpty!11641 (= condMapEmpty!11643 (= mapRest!11641 ((as const (Array (_ BitVec 32) List!23693)) mapDefault!11643)))))

(declare-fun mapRes!11643 () Bool)

(assert (=> mapNonEmpty!11641 (= tp!647459 (and e!1349105 mapRes!11643))))

(declare-fun setIsEmpty!14598 () Bool)

(assert (=> setIsEmpty!14598 setRes!14597))

(declare-fun mapIsEmpty!11643 () Bool)

(assert (=> mapIsEmpty!11643 mapRes!11643))

(declare-fun b!2119150 () Bool)

(declare-fun tp!647670 () Bool)

(assert (=> b!2119150 (= e!1349106 tp!647670)))

(declare-fun b!2119151 () Bool)

(declare-fun tp!647669 () Bool)

(assert (=> b!2119151 (= e!1349108 tp!647669)))

(declare-fun mapNonEmpty!11643 () Bool)

(declare-fun tp!647664 () Bool)

(assert (=> mapNonEmpty!11643 (= mapRes!11643 (and tp!647664 e!1349109))))

(declare-fun mapKey!11643 () (_ BitVec 32))

(declare-fun mapRest!11643 () (Array (_ BitVec 32) List!23693))

(assert (=> mapNonEmpty!11643 (= mapRest!11641 (store mapRest!11643 mapKey!11643 mapValue!11643))))

(declare-fun tp!647666 () Bool)

(declare-fun setElem!14597 () Context!2434)

(declare-fun setNonEmpty!14598 () Bool)

(assert (=> setNonEmpty!14598 (= setRes!14598 (and tp!647666 (inv!31192 setElem!14597) e!1349107))))

(declare-fun setRest!14597 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14598 (= (_2!13461 (h!29010 mapDefault!11643)) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14597 true) setRest!14597))))

(assert (= (and mapNonEmpty!11641 condMapEmpty!11643) mapIsEmpty!11643))

(assert (= (and mapNonEmpty!11641 (not condMapEmpty!11643)) mapNonEmpty!11643))

(assert (= b!2119149 b!2119146))

(assert (= (and b!2119149 condSetEmpty!14598) setIsEmpty!14598))

(assert (= (and b!2119149 (not condSetEmpty!14598)) setNonEmpty!14597))

(assert (= setNonEmpty!14597 b!2119151))

(assert (= (and mapNonEmpty!11643 ((_ is Cons!23609) mapValue!11643)) b!2119149))

(assert (= b!2119148 b!2119150))

(assert (= (and b!2119148 condSetEmpty!14597) setIsEmpty!14597))

(assert (= (and b!2119148 (not condSetEmpty!14597)) setNonEmpty!14598))

(assert (= setNonEmpty!14598 b!2119147))

(assert (= (and mapNonEmpty!11641 ((_ is Cons!23609) mapDefault!11643)) b!2119148))

(declare-fun m!2573891 () Bool)

(assert (=> setNonEmpty!14598 m!2573891))

(declare-fun m!2573893 () Bool)

(assert (=> b!2119148 m!2573893))

(declare-fun m!2573895 () Bool)

(assert (=> mapNonEmpty!11643 m!2573895))

(declare-fun m!2573897 () Bool)

(assert (=> b!2119149 m!2573897))

(declare-fun m!2573899 () Bool)

(assert (=> setNonEmpty!14597 m!2573899))

(declare-fun b!2119152 () Bool)

(declare-fun e!1349110 () Bool)

(declare-fun tp!647672 () Bool)

(assert (=> b!2119152 (= e!1349110 (and tp_is_empty!9481 tp!647672))))

(assert (=> b!2118821 (= tp!647408 e!1349110)))

(assert (= (and b!2118821 ((_ is Cons!23611) (innerList!7846 (xs!10728 (c!339599 (totalInput!2880 cacheFurthestNullable!130)))))) b!2119152))

(declare-fun b!2119153 () Bool)

(declare-fun e!1349111 () Bool)

(declare-fun tp!647673 () Bool)

(declare-fun tp!647674 () Bool)

(assert (=> b!2119153 (= e!1349111 (and tp!647673 tp!647674))))

(assert (=> b!2118871 (= tp!647477 e!1349111)))

(assert (= (and b!2118871 ((_ is Cons!23608) (exprs!1717 (_1!13460 (_1!13461 (h!29010 (minValue!2660 (v!28135 (underlying!4999 (v!28136 (underlying!5000 (cache!2697 cacheUp!991)))))))))))) b!2119153))

(declare-fun b!2119154 () Bool)

(declare-fun e!1349112 () Bool)

(declare-fun tp!647675 () Bool)

(declare-fun tp!647676 () Bool)

(assert (=> b!2119154 (= e!1349112 (and tp!647675 tp!647676))))

(assert (=> b!2118806 (= tp!647387 e!1349112)))

(assert (= (and b!2118806 ((_ is Cons!23608) (exprs!1717 setElem!14542))) b!2119154))

(declare-fun b!2119156 () Bool)

(declare-fun e!1349113 () Bool)

(declare-fun tp!647678 () Bool)

(assert (=> b!2119156 (= e!1349113 tp!647678)))

(declare-fun e!1349114 () Bool)

(assert (=> b!2118877 (= tp!647485 e!1349114)))

(declare-fun setIsEmpty!14599 () Bool)

(declare-fun setRes!14599 () Bool)

(assert (=> setIsEmpty!14599 setRes!14599))

(declare-fun b!2119155 () Bool)

(declare-fun tp!647677 () Bool)

(assert (=> b!2119155 (= e!1349114 (and setRes!14599 tp!647677))))

(declare-fun condSetEmpty!14599 () Bool)

(assert (=> b!2119155 (= condSetEmpty!14599 (= (_1!13462 (_1!13463 (h!29011 (t!196207 (minValue!2661 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130)))))))))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setElem!14599 () Context!2434)

(declare-fun tp!647679 () Bool)

(declare-fun setNonEmpty!14599 () Bool)

(assert (=> setNonEmpty!14599 (= setRes!14599 (and tp!647679 (inv!31192 setElem!14599) e!1349113))))

(declare-fun setRest!14599 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14599 (= (_1!13462 (_1!13463 (h!29011 (t!196207 (minValue!2661 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130)))))))))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14599 true) setRest!14599))))

(assert (= (and b!2119155 condSetEmpty!14599) setIsEmpty!14599))

(assert (= (and b!2119155 (not condSetEmpty!14599)) setNonEmpty!14599))

(assert (= setNonEmpty!14599 b!2119156))

(assert (= (and b!2118877 ((_ is Cons!23610) (t!196207 (minValue!2661 (v!28137 (underlying!5001 (v!28138 (underlying!5002 (cache!2698 cacheFurthestNullable!130))))))))) b!2119155))

(declare-fun m!2573901 () Bool)

(assert (=> setNonEmpty!14599 m!2573901))

(declare-fun b!2119157 () Bool)

(declare-fun e!1349115 () Bool)

(declare-fun tp!647680 () Bool)

(declare-fun tp!647681 () Bool)

(assert (=> b!2119157 (= e!1349115 (and tp!647680 tp!647681))))

(assert (=> b!2118776 (= tp!647345 e!1349115)))

(assert (= (and b!2118776 ((_ is Cons!23608) (exprs!1717 setElem!14533))) b!2119157))

(declare-fun condSetEmpty!14600 () Bool)

(assert (=> setNonEmpty!14549 (= condSetEmpty!14600 (= setRest!14550 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14600 () Bool)

(assert (=> setNonEmpty!14549 (= tp!647425 setRes!14600)))

(declare-fun setIsEmpty!14600 () Bool)

(assert (=> setIsEmpty!14600 setRes!14600))

(declare-fun tp!647682 () Bool)

(declare-fun setNonEmpty!14600 () Bool)

(declare-fun e!1349116 () Bool)

(declare-fun setElem!14600 () Context!2434)

(assert (=> setNonEmpty!14600 (= setRes!14600 (and tp!647682 (inv!31192 setElem!14600) e!1349116))))

(declare-fun setRest!14600 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14600 (= setRest!14550 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14600 true) setRest!14600))))

(declare-fun b!2119158 () Bool)

(declare-fun tp!647683 () Bool)

(assert (=> b!2119158 (= e!1349116 tp!647683)))

(assert (= (and setNonEmpty!14549 condSetEmpty!14600) setIsEmpty!14600))

(assert (= (and setNonEmpty!14549 (not condSetEmpty!14600)) setNonEmpty!14600))

(assert (= setNonEmpty!14600 b!2119158))

(declare-fun m!2573903 () Bool)

(assert (=> setNonEmpty!14600 m!2573903))

(declare-fun b!2119159 () Bool)

(declare-fun e!1349117 () Bool)

(declare-fun tp!647684 () Bool)

(declare-fun tp!647685 () Bool)

(assert (=> b!2119159 (= e!1349117 (and tp!647684 tp!647685))))

(assert (=> b!2118833 (= tp!647426 e!1349117)))

(assert (= (and b!2118833 ((_ is Cons!23608) (exprs!1717 setElem!14550))) b!2119159))

(declare-fun condSetEmpty!14601 () Bool)

(assert (=> setNonEmpty!14562 (= condSetEmpty!14601 (= setRest!14562 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14601 () Bool)

(assert (=> setNonEmpty!14562 (= tp!647475 setRes!14601)))

(declare-fun setIsEmpty!14601 () Bool)

(assert (=> setIsEmpty!14601 setRes!14601))

(declare-fun setElem!14601 () Context!2434)

(declare-fun setNonEmpty!14601 () Bool)

(declare-fun e!1349118 () Bool)

(declare-fun tp!647686 () Bool)

(assert (=> setNonEmpty!14601 (= setRes!14601 (and tp!647686 (inv!31192 setElem!14601) e!1349118))))

(declare-fun setRest!14601 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14601 (= setRest!14562 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14601 true) setRest!14601))))

(declare-fun b!2119160 () Bool)

(declare-fun tp!647687 () Bool)

(assert (=> b!2119160 (= e!1349118 tp!647687)))

(assert (= (and setNonEmpty!14562 condSetEmpty!14601) setIsEmpty!14601))

(assert (= (and setNonEmpty!14562 (not condSetEmpty!14601)) setNonEmpty!14601))

(assert (= setNonEmpty!14601 b!2119160))

(declare-fun m!2573905 () Bool)

(assert (=> setNonEmpty!14601 m!2573905))

(declare-fun tp!647688 () Bool)

(declare-fun e!1349119 () Bool)

(declare-fun b!2119161 () Bool)

(declare-fun tp!647690 () Bool)

(assert (=> b!2119161 (= e!1349119 (and (inv!31193 (left!18284 (left!18284 (c!339599 totalInput!886)))) tp!647690 (inv!31193 (right!18614 (left!18284 (c!339599 totalInput!886)))) tp!647688))))

(declare-fun b!2119163 () Bool)

(declare-fun e!1349120 () Bool)

(declare-fun tp!647689 () Bool)

(assert (=> b!2119163 (= e!1349120 tp!647689)))

(declare-fun b!2119162 () Bool)

(assert (=> b!2119162 (= e!1349119 (and (inv!31200 (xs!10728 (left!18284 (c!339599 totalInput!886)))) e!1349120))))

(assert (=> b!2118769 (= tp!647339 (and (inv!31193 (left!18284 (c!339599 totalInput!886))) e!1349119))))

(assert (= (and b!2118769 ((_ is Node!7786) (left!18284 (c!339599 totalInput!886)))) b!2119161))

(assert (= b!2119162 b!2119163))

(assert (= (and b!2118769 ((_ is Leaf!11377) (left!18284 (c!339599 totalInput!886)))) b!2119162))

(declare-fun m!2573907 () Bool)

(assert (=> b!2119161 m!2573907))

(declare-fun m!2573909 () Bool)

(assert (=> b!2119161 m!2573909))

(declare-fun m!2573911 () Bool)

(assert (=> b!2119162 m!2573911))

(assert (=> b!2118769 m!2573498))

(declare-fun e!1349121 () Bool)

(declare-fun tp!647691 () Bool)

(declare-fun tp!647693 () Bool)

(declare-fun b!2119164 () Bool)

(assert (=> b!2119164 (= e!1349121 (and (inv!31193 (left!18284 (right!18614 (c!339599 totalInput!886)))) tp!647693 (inv!31193 (right!18614 (right!18614 (c!339599 totalInput!886)))) tp!647691))))

(declare-fun b!2119166 () Bool)

(declare-fun e!1349122 () Bool)

(declare-fun tp!647692 () Bool)

(assert (=> b!2119166 (= e!1349122 tp!647692)))

(declare-fun b!2119165 () Bool)

(assert (=> b!2119165 (= e!1349121 (and (inv!31200 (xs!10728 (right!18614 (c!339599 totalInput!886)))) e!1349122))))

(assert (=> b!2118769 (= tp!647337 (and (inv!31193 (right!18614 (c!339599 totalInput!886))) e!1349121))))

(assert (= (and b!2118769 ((_ is Node!7786) (right!18614 (c!339599 totalInput!886)))) b!2119164))

(assert (= b!2119165 b!2119166))

(assert (= (and b!2118769 ((_ is Leaf!11377) (right!18614 (c!339599 totalInput!886)))) b!2119165))

(declare-fun m!2573913 () Bool)

(assert (=> b!2119164 m!2573913))

(declare-fun m!2573915 () Bool)

(assert (=> b!2119164 m!2573915))

(declare-fun m!2573917 () Bool)

(assert (=> b!2119165 m!2573917))

(assert (=> b!2118769 m!2573500))

(declare-fun b!2119167 () Bool)

(declare-fun e!1349123 () Bool)

(declare-fun tp!647694 () Bool)

(declare-fun tp!647695 () Bool)

(assert (=> b!2119167 (= e!1349123 (and tp!647694 tp!647695))))

(assert (=> b!2118869 (= tp!647472 e!1349123)))

(assert (= (and b!2118869 ((_ is Cons!23608) (exprs!1717 setElem!14561))) b!2119167))

(declare-fun b!2119168 () Bool)

(declare-fun e!1349124 () Bool)

(declare-fun tp!647696 () Bool)

(declare-fun tp!647697 () Bool)

(assert (=> b!2119168 (= e!1349124 (and tp!647696 tp!647697))))

(assert (=> b!2118865 (= tp!647469 e!1349124)))

(assert (= (and b!2118865 ((_ is Cons!23608) (exprs!1717 (_1!13460 (_1!13461 (h!29010 mapValue!11630)))))) b!2119168))

(declare-fun b!2119170 () Bool)

(declare-fun e!1349125 () Bool)

(declare-fun tp!647698 () Bool)

(declare-fun tp!647702 () Bool)

(assert (=> b!2119170 (= e!1349125 (and tp!647698 tp!647702))))

(declare-fun b!2119171 () Bool)

(declare-fun tp!647700 () Bool)

(assert (=> b!2119171 (= e!1349125 tp!647700)))

(assert (=> b!2118807 (= tp!647386 e!1349125)))

(declare-fun b!2119172 () Bool)

(declare-fun tp!647701 () Bool)

(declare-fun tp!647699 () Bool)

(assert (=> b!2119172 (= e!1349125 (and tp!647701 tp!647699))))

(declare-fun b!2119169 () Bool)

(assert (=> b!2119169 (= e!1349125 tp_is_empty!9481)))

(assert (= (and b!2118807 ((_ is ElementMatch!5647) (_1!13464 (_1!13465 (h!29013 mapDefault!11635))))) b!2119169))

(assert (= (and b!2118807 ((_ is Concat!9949) (_1!13464 (_1!13465 (h!29013 mapDefault!11635))))) b!2119170))

(assert (= (and b!2118807 ((_ is Star!5647) (_1!13464 (_1!13465 (h!29013 mapDefault!11635))))) b!2119171))

(assert (= (and b!2118807 ((_ is Union!5647) (_1!13464 (_1!13465 (h!29013 mapDefault!11635))))) b!2119172))

(declare-fun b!2119173 () Bool)

(declare-fun e!1349127 () Bool)

(declare-fun tp!647704 () Bool)

(assert (=> b!2119173 (= e!1349127 tp!647704)))

(declare-fun setRes!14602 () Bool)

(declare-fun e!1349126 () Bool)

(declare-fun setElem!14602 () Context!2434)

(declare-fun tp!647705 () Bool)

(declare-fun setNonEmpty!14602 () Bool)

(assert (=> setNonEmpty!14602 (= setRes!14602 (and tp!647705 (inv!31192 setElem!14602) e!1349126))))

(declare-fun setRest!14602 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14602 (= (_2!13465 (h!29013 (t!196209 mapDefault!11635))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14602 true) setRest!14602))))

(declare-fun b!2119174 () Bool)

(declare-fun tp!647707 () Bool)

(declare-fun tp!647703 () Bool)

(declare-fun e!1349128 () Bool)

(assert (=> b!2119174 (= e!1349128 (and tp!647707 (inv!31192 (_2!13464 (_1!13465 (h!29013 (t!196209 mapDefault!11635))))) e!1349127 tp_is_empty!9481 setRes!14602 tp!647703))))

(declare-fun condSetEmpty!14602 () Bool)

(assert (=> b!2119174 (= condSetEmpty!14602 (= (_2!13465 (h!29013 (t!196209 mapDefault!11635))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2119175 () Bool)

(declare-fun tp!647706 () Bool)

(assert (=> b!2119175 (= e!1349126 tp!647706)))

(declare-fun setIsEmpty!14602 () Bool)

(assert (=> setIsEmpty!14602 setRes!14602))

(assert (=> b!2118807 (= tp!647389 e!1349128)))

(assert (= b!2119174 b!2119173))

(assert (= (and b!2119174 condSetEmpty!14602) setIsEmpty!14602))

(assert (= (and b!2119174 (not condSetEmpty!14602)) setNonEmpty!14602))

(assert (= setNonEmpty!14602 b!2119175))

(assert (= (and b!2118807 ((_ is Cons!23612) (t!196209 mapDefault!11635))) b!2119174))

(declare-fun m!2573919 () Bool)

(assert (=> setNonEmpty!14602 m!2573919))

(declare-fun m!2573921 () Bool)

(assert (=> b!2119174 m!2573921))

(declare-fun b!2119176 () Bool)

(declare-fun e!1349129 () Bool)

(declare-fun tp!647708 () Bool)

(declare-fun tp!647709 () Bool)

(assert (=> b!2119176 (= e!1349129 (and tp!647708 tp!647709))))

(assert (=> b!2118878 (= tp!647486 e!1349129)))

(assert (= (and b!2118878 ((_ is Cons!23608) (exprs!1717 setElem!14565))) b!2119176))

(declare-fun b!2119177 () Bool)

(declare-fun e!1349130 () Bool)

(declare-fun tp!647710 () Bool)

(declare-fun tp!647711 () Bool)

(assert (=> b!2119177 (= e!1349130 (and tp!647710 tp!647711))))

(assert (=> b!2118816 (= tp!647403 e!1349130)))

(assert (= (and b!2118816 ((_ is Cons!23608) (exprs!1717 (_2!13464 (_1!13465 (h!29013 mapDefault!11632)))))) b!2119177))

(declare-fun b!2119178 () Bool)

(declare-fun e!1349131 () Bool)

(declare-fun setRes!14603 () Bool)

(declare-fun tp!647712 () Bool)

(assert (=> b!2119178 (= e!1349131 (and setRes!14603 tp!647712))))

(declare-fun condSetEmpty!14603 () Bool)

(declare-fun mapValue!11644 () List!23694)

(assert (=> b!2119178 (= condSetEmpty!14603 (= (_1!13462 (_1!13463 (h!29011 mapValue!11644))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2119179 () Bool)

(declare-fun e!1349132 () Bool)

(declare-fun tp!647714 () Bool)

(assert (=> b!2119179 (= e!1349132 tp!647714)))

(declare-fun b!2119180 () Bool)

(declare-fun e!1349133 () Bool)

(declare-fun tp!647718 () Bool)

(assert (=> b!2119180 (= e!1349133 tp!647718)))

(declare-fun tp!647713 () Bool)

(declare-fun setNonEmpty!14603 () Bool)

(declare-fun setRes!14604 () Bool)

(declare-fun setElem!14604 () Context!2434)

(assert (=> setNonEmpty!14603 (= setRes!14604 (and tp!647713 (inv!31192 setElem!14604) e!1349132))))

(declare-fun mapDefault!11644 () List!23694)

(declare-fun setRest!14604 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14603 (= (_1!13462 (_1!13463 (h!29011 mapDefault!11644))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14604 true) setRest!14604))))

(declare-fun b!2119181 () Bool)

(declare-fun e!1349134 () Bool)

(declare-fun tp!647715 () Bool)

(assert (=> b!2119181 (= e!1349134 (and setRes!14604 tp!647715))))

(declare-fun condSetEmpty!14604 () Bool)

(assert (=> b!2119181 (= condSetEmpty!14604 (= (_1!13462 (_1!13463 (h!29011 mapDefault!11644))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14604 () Bool)

(assert (=> setIsEmpty!14604 setRes!14604))

(declare-fun mapIsEmpty!11644 () Bool)

(declare-fun mapRes!11644 () Bool)

(assert (=> mapIsEmpty!11644 mapRes!11644))

(declare-fun mapNonEmpty!11644 () Bool)

(declare-fun tp!647717 () Bool)

(assert (=> mapNonEmpty!11644 (= mapRes!11644 (and tp!647717 e!1349131))))

(declare-fun mapRest!11644 () (Array (_ BitVec 32) List!23694))

(declare-fun mapKey!11644 () (_ BitVec 32))

(assert (=> mapNonEmpty!11644 (= mapRest!11638 (store mapRest!11644 mapKey!11644 mapValue!11644))))

(declare-fun setNonEmpty!14604 () Bool)

(declare-fun tp!647716 () Bool)

(declare-fun setElem!14603 () Context!2434)

(assert (=> setNonEmpty!14604 (= setRes!14603 (and tp!647716 (inv!31192 setElem!14603) e!1349133))))

(declare-fun setRest!14603 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14604 (= (_1!13462 (_1!13463 (h!29011 mapValue!11644))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14603 true) setRest!14603))))

(declare-fun condMapEmpty!11644 () Bool)

(assert (=> mapNonEmpty!11638 (= condMapEmpty!11644 (= mapRest!11638 ((as const (Array (_ BitVec 32) List!23694)) mapDefault!11644)))))

(assert (=> mapNonEmpty!11638 (= tp!647429 (and e!1349134 mapRes!11644))))

(declare-fun setIsEmpty!14603 () Bool)

(assert (=> setIsEmpty!14603 setRes!14603))

(assert (= (and mapNonEmpty!11638 condMapEmpty!11644) mapIsEmpty!11644))

(assert (= (and mapNonEmpty!11638 (not condMapEmpty!11644)) mapNonEmpty!11644))

(assert (= (and b!2119178 condSetEmpty!14603) setIsEmpty!14603))

(assert (= (and b!2119178 (not condSetEmpty!14603)) setNonEmpty!14604))

(assert (= setNonEmpty!14604 b!2119180))

(assert (= (and mapNonEmpty!11644 ((_ is Cons!23610) mapValue!11644)) b!2119178))

(assert (= (and b!2119181 condSetEmpty!14604) setIsEmpty!14604))

(assert (= (and b!2119181 (not condSetEmpty!14604)) setNonEmpty!14603))

(assert (= setNonEmpty!14603 b!2119179))

(assert (= (and mapNonEmpty!11638 ((_ is Cons!23610) mapDefault!11644)) b!2119181))

(declare-fun m!2573923 () Bool)

(assert (=> setNonEmpty!14603 m!2573923))

(declare-fun m!2573925 () Bool)

(assert (=> mapNonEmpty!11644 m!2573925))

(declare-fun m!2573927 () Bool)

(assert (=> setNonEmpty!14604 m!2573927))

(declare-fun b!2119183 () Bool)

(declare-fun e!1349135 () Bool)

(declare-fun tp!647719 () Bool)

(declare-fun tp!647723 () Bool)

(assert (=> b!2119183 (= e!1349135 (and tp!647719 tp!647723))))

(declare-fun b!2119184 () Bool)

(declare-fun tp!647721 () Bool)

(assert (=> b!2119184 (= e!1349135 tp!647721)))

(assert (=> b!2118817 (= tp!647406 e!1349135)))

(declare-fun b!2119185 () Bool)

(declare-fun tp!647722 () Bool)

(declare-fun tp!647720 () Bool)

(assert (=> b!2119185 (= e!1349135 (and tp!647722 tp!647720))))

(declare-fun b!2119182 () Bool)

(assert (=> b!2119182 (= e!1349135 tp_is_empty!9481)))

(assert (= (and b!2118817 ((_ is ElementMatch!5647) (_1!13464 (_1!13465 (h!29013 mapDefault!11632))))) b!2119182))

(assert (= (and b!2118817 ((_ is Concat!9949) (_1!13464 (_1!13465 (h!29013 mapDefault!11632))))) b!2119183))

(assert (= (and b!2118817 ((_ is Star!5647) (_1!13464 (_1!13465 (h!29013 mapDefault!11632))))) b!2119184))

(assert (= (and b!2118817 ((_ is Union!5647) (_1!13464 (_1!13465 (h!29013 mapDefault!11632))))) b!2119185))

(declare-fun b!2119186 () Bool)

(declare-fun e!1349137 () Bool)

(declare-fun tp!647725 () Bool)

(assert (=> b!2119186 (= e!1349137 tp!647725)))

(declare-fun setElem!14605 () Context!2434)

(declare-fun setNonEmpty!14605 () Bool)

(declare-fun tp!647726 () Bool)

(declare-fun e!1349136 () Bool)

(declare-fun setRes!14605 () Bool)

(assert (=> setNonEmpty!14605 (= setRes!14605 (and tp!647726 (inv!31192 setElem!14605) e!1349136))))

(declare-fun setRest!14605 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14605 (= (_2!13465 (h!29013 (t!196209 mapDefault!11632))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14605 true) setRest!14605))))

(declare-fun tp!647728 () Bool)

(declare-fun b!2119187 () Bool)

(declare-fun e!1349138 () Bool)

(declare-fun tp!647724 () Bool)

(assert (=> b!2119187 (= e!1349138 (and tp!647728 (inv!31192 (_2!13464 (_1!13465 (h!29013 (t!196209 mapDefault!11632))))) e!1349137 tp_is_empty!9481 setRes!14605 tp!647724))))

(declare-fun condSetEmpty!14605 () Bool)

(assert (=> b!2119187 (= condSetEmpty!14605 (= (_2!13465 (h!29013 (t!196209 mapDefault!11632))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun b!2119188 () Bool)

(declare-fun tp!647727 () Bool)

(assert (=> b!2119188 (= e!1349136 tp!647727)))

(declare-fun setIsEmpty!14605 () Bool)

(assert (=> setIsEmpty!14605 setRes!14605))

(assert (=> b!2118817 (= tp!647402 e!1349138)))

(assert (= b!2119187 b!2119186))

(assert (= (and b!2119187 condSetEmpty!14605) setIsEmpty!14605))

(assert (= (and b!2119187 (not condSetEmpty!14605)) setNonEmpty!14605))

(assert (= setNonEmpty!14605 b!2119188))

(assert (= (and b!2118817 ((_ is Cons!23612) (t!196209 mapDefault!11632))) b!2119187))

(declare-fun m!2573929 () Bool)

(assert (=> setNonEmpty!14605 m!2573929))

(declare-fun m!2573931 () Bool)

(assert (=> b!2119187 m!2573931))

(declare-fun b!2119189 () Bool)

(declare-fun e!1349139 () Bool)

(declare-fun tp!647729 () Bool)

(assert (=> b!2119189 (= e!1349139 (and tp_is_empty!9481 tp!647729))))

(assert (=> b!2118768 (= tp!647335 e!1349139)))

(assert (= (and b!2118768 ((_ is Cons!23611) (innerList!7846 (xs!10728 (c!339599 input!5507))))) b!2119189))

(declare-fun b!2119190 () Bool)

(declare-fun e!1349140 () Bool)

(declare-fun tp!647730 () Bool)

(declare-fun tp!647731 () Bool)

(assert (=> b!2119190 (= e!1349140 (and tp!647730 tp!647731))))

(assert (=> b!2118810 (= tp!647394 e!1349140)))

(assert (= (and b!2118810 ((_ is Cons!23608) (exprs!1717 setElem!14543))) b!2119190))

(declare-fun tp!647734 () Bool)

(declare-fun b!2119191 () Bool)

(declare-fun e!1349141 () Bool)

(declare-fun tp!647732 () Bool)

(assert (=> b!2119191 (= e!1349141 (and (inv!31193 (left!18284 (left!18284 (c!339599 input!5507)))) tp!647734 (inv!31193 (right!18614 (left!18284 (c!339599 input!5507)))) tp!647732))))

(declare-fun b!2119193 () Bool)

(declare-fun e!1349142 () Bool)

(declare-fun tp!647733 () Bool)

(assert (=> b!2119193 (= e!1349142 tp!647733)))

(declare-fun b!2119192 () Bool)

(assert (=> b!2119192 (= e!1349141 (and (inv!31200 (xs!10728 (left!18284 (c!339599 input!5507)))) e!1349142))))

(assert (=> b!2118766 (= tp!647336 (and (inv!31193 (left!18284 (c!339599 input!5507))) e!1349141))))

(assert (= (and b!2118766 ((_ is Node!7786) (left!18284 (c!339599 input!5507)))) b!2119191))

(assert (= b!2119192 b!2119193))

(assert (= (and b!2118766 ((_ is Leaf!11377) (left!18284 (c!339599 input!5507)))) b!2119192))

(declare-fun m!2573933 () Bool)

(assert (=> b!2119191 m!2573933))

(declare-fun m!2573935 () Bool)

(assert (=> b!2119191 m!2573935))

(declare-fun m!2573937 () Bool)

(assert (=> b!2119192 m!2573937))

(assert (=> b!2118766 m!2573492))

(declare-fun e!1349143 () Bool)

(declare-fun tp!647735 () Bool)

(declare-fun b!2119194 () Bool)

(declare-fun tp!647737 () Bool)

(assert (=> b!2119194 (= e!1349143 (and (inv!31193 (left!18284 (right!18614 (c!339599 input!5507)))) tp!647737 (inv!31193 (right!18614 (right!18614 (c!339599 input!5507)))) tp!647735))))

(declare-fun b!2119196 () Bool)

(declare-fun e!1349144 () Bool)

(declare-fun tp!647736 () Bool)

(assert (=> b!2119196 (= e!1349144 tp!647736)))

(declare-fun b!2119195 () Bool)

(assert (=> b!2119195 (= e!1349143 (and (inv!31200 (xs!10728 (right!18614 (c!339599 input!5507)))) e!1349144))))

(assert (=> b!2118766 (= tp!647334 (and (inv!31193 (right!18614 (c!339599 input!5507))) e!1349143))))

(assert (= (and b!2118766 ((_ is Node!7786) (right!18614 (c!339599 input!5507)))) b!2119194))

(assert (= b!2119195 b!2119196))

(assert (= (and b!2118766 ((_ is Leaf!11377) (right!18614 (c!339599 input!5507)))) b!2119195))

(declare-fun m!2573939 () Bool)

(assert (=> b!2119194 m!2573939))

(declare-fun m!2573941 () Bool)

(assert (=> b!2119194 m!2573941))

(declare-fun m!2573943 () Bool)

(assert (=> b!2119195 m!2573943))

(assert (=> b!2118766 m!2573494))

(declare-fun condSetEmpty!14606 () Bool)

(assert (=> setNonEmpty!14543 (= condSetEmpty!14606 (= setRest!14543 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14606 () Bool)

(assert (=> setNonEmpty!14543 (= tp!647393 setRes!14606)))

(declare-fun setIsEmpty!14606 () Bool)

(assert (=> setIsEmpty!14606 setRes!14606))

(declare-fun setNonEmpty!14606 () Bool)

(declare-fun tp!647738 () Bool)

(declare-fun setElem!14606 () Context!2434)

(declare-fun e!1349145 () Bool)

(assert (=> setNonEmpty!14606 (= setRes!14606 (and tp!647738 (inv!31192 setElem!14606) e!1349145))))

(declare-fun setRest!14606 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14606 (= setRest!14543 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14606 true) setRest!14606))))

(declare-fun b!2119197 () Bool)

(declare-fun tp!647739 () Bool)

(assert (=> b!2119197 (= e!1349145 tp!647739)))

(assert (= (and setNonEmpty!14543 condSetEmpty!14606) setIsEmpty!14606))

(assert (= (and setNonEmpty!14543 (not condSetEmpty!14606)) setNonEmpty!14606))

(assert (= setNonEmpty!14606 b!2119197))

(declare-fun m!2573945 () Bool)

(assert (=> setNonEmpty!14606 m!2573945))

(declare-fun b!2119198 () Bool)

(declare-fun e!1349146 () Bool)

(declare-fun tp!647740 () Bool)

(declare-fun tp!647741 () Bool)

(assert (=> b!2119198 (= e!1349146 (and tp!647740 tp!647741))))

(assert (=> b!2118858 (= tp!647463 e!1349146)))

(assert (= (and b!2118858 ((_ is Cons!23608) (exprs!1717 (_1!13460 (_1!13461 (h!29010 mapValue!11641)))))) b!2119198))

(declare-fun e!1349148 () Bool)

(declare-fun tp!647745 () Bool)

(declare-fun e!1349149 () Bool)

(declare-fun b!2119199 () Bool)

(declare-fun setRes!14607 () Bool)

(assert (=> b!2119199 (= e!1349149 (and (inv!31192 (_1!13460 (_1!13461 (h!29010 (t!196206 mapValue!11641))))) e!1349148 tp_is_empty!9481 setRes!14607 tp!647745))))

(declare-fun condSetEmpty!14607 () Bool)

(assert (=> b!2119199 (= condSetEmpty!14607 (= (_2!13461 (h!29010 (t!196206 mapValue!11641))) ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setIsEmpty!14607 () Bool)

(assert (=> setIsEmpty!14607 setRes!14607))

(declare-fun b!2119200 () Bool)

(declare-fun tp!647744 () Bool)

(assert (=> b!2119200 (= e!1349148 tp!647744)))

(declare-fun b!2119201 () Bool)

(declare-fun e!1349147 () Bool)

(declare-fun tp!647743 () Bool)

(assert (=> b!2119201 (= e!1349147 tp!647743)))

(assert (=> b!2118861 (= tp!647458 e!1349149)))

(declare-fun tp!647742 () Bool)

(declare-fun setNonEmpty!14607 () Bool)

(declare-fun setElem!14607 () Context!2434)

(assert (=> setNonEmpty!14607 (= setRes!14607 (and tp!647742 (inv!31192 setElem!14607) e!1349147))))

(declare-fun setRest!14607 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14607 (= (_2!13461 (h!29010 (t!196206 mapValue!11641))) ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14607 true) setRest!14607))))

(assert (= b!2119199 b!2119200))

(assert (= (and b!2119199 condSetEmpty!14607) setIsEmpty!14607))

(assert (= (and b!2119199 (not condSetEmpty!14607)) setNonEmpty!14607))

(assert (= setNonEmpty!14607 b!2119201))

(assert (= (and b!2118861 ((_ is Cons!23609) (t!196206 mapValue!11641))) b!2119199))

(declare-fun m!2573947 () Bool)

(assert (=> b!2119199 m!2573947))

(declare-fun m!2573949 () Bool)

(assert (=> setNonEmpty!14607 m!2573949))

(declare-fun condSetEmpty!14608 () Bool)

(assert (=> setNonEmpty!14558 (= condSetEmpty!14608 (= setRest!14559 ((as const (Array Context!2434 Bool)) false)))))

(declare-fun setRes!14608 () Bool)

(assert (=> setNonEmpty!14558 (= tp!647462 setRes!14608)))

(declare-fun setIsEmpty!14608 () Bool)

(assert (=> setIsEmpty!14608 setRes!14608))

(declare-fun setNonEmpty!14608 () Bool)

(declare-fun setElem!14608 () Context!2434)

(declare-fun e!1349150 () Bool)

(declare-fun tp!647746 () Bool)

(assert (=> setNonEmpty!14608 (= setRes!14608 (and tp!647746 (inv!31192 setElem!14608) e!1349150))))

(declare-fun setRest!14608 () (InoxSet Context!2434))

(assert (=> setNonEmpty!14608 (= setRest!14559 ((_ map or) (store ((as const (Array Context!2434 Bool)) false) setElem!14608 true) setRest!14608))))

(declare-fun b!2119202 () Bool)

(declare-fun tp!647747 () Bool)

(assert (=> b!2119202 (= e!1349150 tp!647747)))

(assert (= (and setNonEmpty!14558 condSetEmpty!14608) setIsEmpty!14608))

(assert (= (and setNonEmpty!14558 (not condSetEmpty!14608)) setNonEmpty!14608))

(assert (= setNonEmpty!14608 b!2119202))

(declare-fun m!2573951 () Bool)

(assert (=> setNonEmpty!14608 m!2573951))

(declare-fun b!2119203 () Bool)

(declare-fun e!1349151 () Bool)

(declare-fun tp!647748 () Bool)

(declare-fun tp!647749 () Bool)

(assert (=> b!2119203 (= e!1349151 (and tp!647748 tp!647749))))

(assert (=> b!2118876 (= tp!647483 e!1349151)))

(assert (= (and b!2118876 ((_ is Cons!23608) (exprs!1717 setElem!14564))) b!2119203))

(declare-fun b!2119205 () Bool)

(declare-fun e!1349152 () Bool)

(declare-fun tp!647750 () Bool)

(declare-fun tp!647754 () Bool)

(assert (=> b!2119205 (= e!1349152 (and tp!647750 tp!647754))))

(declare-fun b!2119206 () Bool)

(declare-fun tp!647752 () Bool)

(assert (=> b!2119206 (= e!1349152 tp!647752)))

(assert (=> b!2118815 (= tp!647400 e!1349152)))

(declare-fun b!2119207 () Bool)

(declare-fun tp!647753 () Bool)

(declare-fun tp!647751 () Bool)

(assert (=> b!2119207 (= e!1349152 (and tp!647753 tp!647751))))

(declare-fun b!2119204 () Bool)

(assert (=> b!2119204 (= e!1349152 tp_is_empty!9481)))

(assert (= (and b!2118815 ((_ is ElementMatch!5647) (h!29009 (exprs!1717 setElem!14526)))) b!2119204))

(assert (= (and b!2118815 ((_ is Concat!9949) (h!29009 (exprs!1717 setElem!14526)))) b!2119205))

(assert (= (and b!2118815 ((_ is Star!5647) (h!29009 (exprs!1717 setElem!14526)))) b!2119206))

(assert (= (and b!2118815 ((_ is Union!5647) (h!29009 (exprs!1717 setElem!14526)))) b!2119207))

(declare-fun b!2119208 () Bool)

(declare-fun e!1349153 () Bool)

(declare-fun tp!647755 () Bool)

(declare-fun tp!647756 () Bool)

(assert (=> b!2119208 (= e!1349153 (and tp!647755 tp!647756))))

(assert (=> b!2118815 (= tp!647401 e!1349153)))

(assert (= (and b!2118815 ((_ is Cons!23608) (t!196205 (exprs!1717 setElem!14526)))) b!2119208))

(declare-fun b_lambda!70443 () Bool)

(assert (= b_lambda!70441 (or d!643107 b_lambda!70443)))

(declare-fun bs!442637 () Bool)

(declare-fun d!643263 () Bool)

(assert (= bs!442637 (and d!643263 d!643107)))

(declare-fun validRegex!2230 (Regex!5647) Bool)

(assert (=> bs!442637 (= (dynLambda!11303 lambda!78410 (h!29009 (exprs!1717 setElem!14526))) (validRegex!2230 (h!29009 (exprs!1717 setElem!14526))))))

(declare-fun m!2573953 () Bool)

(assert (=> bs!442637 m!2573953))

(assert (=> b!2119011 d!643263))

(check-sat (not b!2119047) (not b!2119196) (not b!2119140) (not b!2119067) (not d!643199) (not d!643191) (not b!2119103) (not b!2119073) (not setNonEmpty!14566) (not d!643175) (not b!2119166) (not d!643183) (not b!2118972) (not d!643211) (not b!2119186) (not b!2119190) (not b!2119155) (not b!2119112) (not setNonEmpty!14580) (not b!2119170) (not b!2119149) (not b!2119130) (not b!2119041) (not b!2119128) (not b!2119077) (not b!2119122) (not d!643207) (not b!2119053) (not d!643179) (not b!2119137) b_and!171003 b_and!171011 (not b!2119153) (not b!2119127) (not d!643151) (not d!643201) (not d!643195) (not b!2119154) (not b!2119121) (not b!2119206) (not b!2118911) tp_is_empty!9481 (not b!2119057) (not b!2119054) (not b!2119146) (not b!2119175) (not b!2119145) (not b!2119104) (not b!2119052) (not b!2118819) (not b!2119114) (not b!2119078) (not b_next!62125) (not b!2119165) (not b!2119005) (not b!2119082) b_and!171005 (not b!2119045) (not b!2119076) (not d!643141) (not d!643165) (not b!2119031) (not b!2119079) (not d!643223) (not b!2119179) (not b!2119161) (not b!2118963) (not b_next!62135) (not b!2119123) b_and!171007 (not b!2119060) (not b!2119035) (not b!2118904) (not b_lambda!70443) (not b!2119033) (not setNonEmpty!14572) (not b!2118957) (not b!2119055) (not b!2119163) (not setNonEmpty!14577) (not d!643171) (not b!2119132) (not b!2119030) (not b!2119013) (not b!2119023) (not b!2119027) (not b!2119185) (not b!2119172) (not setNonEmpty!14576) (not setNonEmpty!14594) (not b!2119167) (not b!2119046) (not b!2119168) (not mapNonEmpty!11644) (not b!2118983) (not setNonEmpty!14598) (not b!2119178) (not d!643167) (not b!2119099) (not setNonEmpty!14593) (not d!643143) (not b!2119062) (not b!2119136) (not b!2119125) (not b!2118942) (not b!2119144) (not setNonEmpty!14573) (not b!2119134) (not b!2118766) (not b!2119028) (not setNonEmpty!14590) (not setNonEmpty!14584) (not b!2118932) (not b!2119117) (not setNonEmpty!14603) (not b!2119107) (not b!2119203) (not b!2119036) (not b!2118926) (not setNonEmpty!14592) (not b_next!62131) (not setNonEmpty!14601) (not setNonEmpty!14606) (not b!2119152) (not b!2119173) (not b!2119034) (not b!2119101) (not d!643233) (not b!2119120) (not setNonEmpty!14578) (not d!643145) b_and!171009 (not b!2119147) (not b!2118937) (not b!2119108) (not d!643237) (not d!643203) (not d!643259) (not b!2119044) (not setNonEmpty!14602) (not b!2119119) (not b!2119174) (not b!2119159) (not b!2119198) (not setNonEmpty!14575) (not b!2119051) (not setNonEmpty!14586) (not b!2119129) (not b!2119164) (not mapNonEmpty!11643) (not b!2118984) (not b!2118928) (not b_next!62129) (not b!2119148) (not b!2119141) (not b!2119069) (not setNonEmpty!14608) (not b!2119180) (not setNonEmpty!14605) (not b!2119193) (not d!643225) (not b!2118903) (not b!2119102) (not b!2119187) (not b!2119024) (not setNonEmpty!14604) (not d!643187) (not b!2119197) (not b!2118998) (not b!2119096) (not setNonEmpty!14579) (not b!2119050) (not setNonEmpty!14569) (not b!2119025) (not b!2119058) (not b!2119194) (not b!2119131) (not b!2119183) (not b!2119018) (not b!2118989) (not setNonEmpty!14582) (not b!2119158) (not b!2119040) (not b!2119032) (not b!2118996) (not d!643153) (not b!2119109) (not setNonEmpty!14589) (not b!2119038) (not b!2118934) (not b!2119074) (not b!2118964) (not d!643249) (not bm!128667) (not d!643193) (not d!643197) (not d!643159) (not b!2119094) (not b!2119184) (not setNonEmpty!14588) (not b!2119072) (not b!2119116) (not b!2119097) (not setNonEmpty!14581) (not b_next!62133) (not b!2119118) (not b!2119070) (not b!2119015) (not setNonEmpty!14568) (not d!643229) (not b!2118936) (not b!2119039) (not b!2119061) (not b!2119056) (not b!2119001) (not b!2119171) (not b!2118929) b_and!171001 (not b!2119059) (not b!2119037) (not b!2119191) (not b!2119142) (not b!2118943) (not d!643213) (not d!643185) (not b!2118927) (not b!2119151) (not b!2119106) (not setNonEmpty!14596) (not setNonEmpty!14607) (not setNonEmpty!14574) (not b!2119177) (not b!2119100) (not setNonEmpty!14591) (not d!643261) (not d!643189) (not b!2119205) (not setNonEmpty!14583) (not b!2119020) (not b!2118941) (not d!643155) (not b!2119189) (not b!2118990) (not b!2119138) (not b!2119105) (not b!2118933) (not b!2118951) (not b!2119143) (not b!2118913) (not b!2119202) (not d!643209) (not b!2118940) (not b!2119042) (not d!643215) (not setNonEmpty!14571) (not b!2119012) (not b!2119207) (not b!2119081) (not d!643257) (not setNonEmpty!14585) (not b!2119098) (not b!2119181) (not b!2119208) (not bs!442637) (not b!2119176) (not d!643247) (not setNonEmpty!14600) (not b!2118999) (not d!643169) (not b!2119139) (not b!2119049) (not b!2119192) (not d!643157) (not b!2119188) (not b!2119124) (not b!2119201) (not b!2119113) (not b!2119195) (not b!2119200) (not d!643173) (not b!2119002) (not setNonEmpty!14567) (not b!2119150) (not setNonEmpty!14595) (not b!2119160) (not b!2119095) (not b!2118938) (not d!643163) (not b!2118931) (not d!643241) (not b!2119075) (not b!2118769) (not b!2118930) (not b!2119111) (not b!2118935) (not b!2118994) (not setNonEmpty!14599) (not b!2119071) (not d!643231) (not b!2118971) (not b!2119068) (not b!2118939) (not d!643239) (not b_next!62127) (not b!2119115) (not b!2119162) (not setNonEmpty!14587) (not b!2119017) (not b!2119080) (not d!643227) (not d!643221) (not mapNonEmpty!11642) (not b!2119157) (not b!2119199) (not b!2119048) (not b!2119133) (not setNonEmpty!14570) (not b!2119156) (not setNonEmpty!14597) (not b!2119043))
(check-sat (not b_next!62125) b_and!171005 (not b_next!62131) b_and!171009 (not b_next!62129) (not b_next!62133) b_and!171001 (not b_next!62127) b_and!171003 b_and!171011 (not b_next!62135) b_and!171007)
