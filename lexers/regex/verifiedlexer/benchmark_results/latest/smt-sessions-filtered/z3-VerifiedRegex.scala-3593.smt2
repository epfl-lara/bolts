; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206918 () Bool)

(assert start!206918)

(declare-fun b!2119747 () Bool)

(declare-fun b_free!61493 () Bool)

(declare-fun b_next!62197 () Bool)

(assert (=> b!2119747 (= b_free!61493 (not b_next!62197))))

(declare-fun tp!648209 () Bool)

(declare-fun b_and!171073 () Bool)

(assert (=> b!2119747 (= tp!648209 b_and!171073)))

(declare-fun b!2119733 () Bool)

(declare-fun b_free!61495 () Bool)

(declare-fun b_next!62199 () Bool)

(assert (=> b!2119733 (= b_free!61495 (not b_next!62199))))

(declare-fun tp!648212 () Bool)

(declare-fun b_and!171075 () Bool)

(assert (=> b!2119733 (= tp!648212 b_and!171075)))

(declare-fun b!2119757 () Bool)

(declare-fun b_free!61497 () Bool)

(declare-fun b_next!62201 () Bool)

(assert (=> b!2119757 (= b_free!61497 (not b_next!62201))))

(declare-fun tp!648215 () Bool)

(declare-fun b_and!171077 () Bool)

(assert (=> b!2119757 (= tp!648215 b_and!171077)))

(declare-fun b!2119744 () Bool)

(declare-fun b_free!61499 () Bool)

(declare-fun b_next!62203 () Bool)

(assert (=> b!2119744 (= b_free!61499 (not b_next!62203))))

(declare-fun tp!648224 () Bool)

(declare-fun b_and!171079 () Bool)

(assert (=> b!2119744 (= tp!648224 b_and!171079)))

(declare-fun b!2119738 () Bool)

(declare-fun b_free!61501 () Bool)

(declare-fun b_next!62205 () Bool)

(assert (=> b!2119738 (= b_free!61501 (not b_next!62205))))

(declare-fun tp!648211 () Bool)

(declare-fun b_and!171081 () Bool)

(assert (=> b!2119738 (= tp!648211 b_and!171081)))

(declare-fun b!2119759 () Bool)

(declare-fun b_free!61503 () Bool)

(declare-fun b_next!62207 () Bool)

(assert (=> b!2119759 (= b_free!61503 (not b_next!62207))))

(declare-fun tp!648214 () Bool)

(declare-fun b_and!171083 () Bool)

(assert (=> b!2119759 (= tp!648214 b_and!171083)))

(declare-fun e!1349667 () Bool)

(declare-fun b!2119731 () Bool)

(declare-fun lt!794553 () Int)

(declare-fun lt!794554 () Bool)

(declare-fun lt!794558 () Int)

(declare-fun lt!794555 () Int)

(assert (=> b!2119731 (= e!1349667 (and (>= lt!794558 0) (<= lt!794558 lt!794555) (>= lt!794553 (- 1)) (< lt!794553 lt!794558) lt!794554 (not (= lt!794553 (- lt!794558 1)))))))

(assert (=> b!2119731 (= lt!794553 (ite lt!794554 (- lt!794558 1) (- 1)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!11452 0))(
  ( (C!11453 (val!6712 Int)) )
))
(declare-datatypes ((Regex!5653 0))(
  ( (ElementMatch!5653 (c!339653 C!11452)) (Concat!9955 (regOne!11818 Regex!5653) (regTwo!11818 Regex!5653)) (EmptyExpr!5653) (Star!5653 (reg!5982 Regex!5653)) (EmptyLang!5653) (Union!5653 (regOne!11819 Regex!5653) (regTwo!11819 Regex!5653)) )
))
(declare-datatypes ((List!23723 0))(
  ( (Nil!23639) (Cons!23639 (h!29040 Regex!5653) (t!196239 List!23723)) )
))
(declare-datatypes ((Context!2446 0))(
  ( (Context!2447 (exprs!1723 List!23723)) )
))
(declare-fun z!3883 () (InoxSet Context!2446))

(declare-fun nullableZipper!58 ((InoxSet Context!2446)) Bool)

(assert (=> b!2119731 (= lt!794554 (nullableZipper!58 z!3883))))

(declare-datatypes ((List!23724 0))(
  ( (Nil!23640) (Cons!23640 (h!29041 C!11452) (t!196240 List!23724)) )
))
(declare-datatypes ((IArray!15589 0))(
  ( (IArray!15590 (innerList!7852 List!23724)) )
))
(declare-datatypes ((Conc!7792 0))(
  ( (Node!7792 (left!18295 Conc!7792) (right!18625 Conc!7792) (csize!15814 Int) (cheight!8003 Int)) (Leaf!11386 (xs!10734 IArray!15589) (csize!15815 Int)) (Empty!7792) )
))
(declare-datatypes ((BalanceConc!15346 0))(
  ( (BalanceConc!15347 (c!339654 Conc!7792)) )
))
(declare-fun input!5507 () BalanceConc!15346)

(declare-fun size!18470 (BalanceConc!15346) Int)

(assert (=> b!2119731 (= lt!794558 (- lt!794555 (size!18470 input!5507)))))

(declare-fun totalInput!886 () BalanceConc!15346)

(assert (=> b!2119731 (= lt!794555 (size!18470 totalInput!886))))

(declare-fun setIsEmpty!14626 () Bool)

(declare-fun setRes!14626 () Bool)

(assert (=> setIsEmpty!14626 setRes!14626))

(declare-fun b!2119732 () Bool)

(declare-fun e!1349669 () Bool)

(declare-fun tp!648201 () Bool)

(declare-fun inv!31232 (Conc!7792) Bool)

(assert (=> b!2119732 (= e!1349669 (and (inv!31232 (c!339654 input!5507)) tp!648201))))

(declare-fun mapIsEmpty!11696 () Bool)

(declare-fun mapRes!11696 () Bool)

(assert (=> mapIsEmpty!11696 mapRes!11696))

(declare-fun e!1349661 () Bool)

(declare-fun e!1349665 () Bool)

(assert (=> b!2119733 (= e!1349661 (and e!1349665 tp!648212))))

(declare-fun mapIsEmpty!11697 () Bool)

(declare-fun mapRes!11697 () Bool)

(assert (=> mapIsEmpty!11697 mapRes!11697))

(declare-fun b!2119734 () Bool)

(declare-fun e!1349671 () Bool)

(declare-fun e!1349654 () Bool)

(assert (=> b!2119734 (= e!1349671 e!1349654)))

(declare-fun b!2119735 () Bool)

(declare-fun e!1349677 () Bool)

(declare-fun e!1349659 () Bool)

(declare-datatypes ((tuple2!23204 0))(
  ( (tuple2!23205 (_1!13496 Context!2446) (_2!13496 C!11452)) )
))
(declare-datatypes ((tuple2!23206 0))(
  ( (tuple2!23207 (_1!13497 tuple2!23204) (_2!13497 (InoxSet Context!2446))) )
))
(declare-datatypes ((List!23725 0))(
  ( (Nil!23641) (Cons!23641 (h!29042 tuple2!23206) (t!196241 List!23725)) )
))
(declare-datatypes ((array!8325 0))(
  ( (array!8326 (arr!3694 (Array (_ BitVec 32) (_ BitVec 64))) (size!18471 (_ BitVec 32))) )
))
(declare-datatypes ((array!8327 0))(
  ( (array!8328 (arr!3695 (Array (_ BitVec 32) List!23725)) (size!18472 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4840 0))(
  ( (LongMapFixedSize!4841 (defaultEntry!2785 Int) (mask!6562 (_ BitVec 32)) (extraKeys!2668 (_ BitVec 32)) (zeroValue!2678 List!23725) (minValue!2678 List!23725) (_size!4891 (_ BitVec 32)) (_keys!2717 array!8325) (_values!2700 array!8327) (_vacant!2481 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9505 0))(
  ( (Cell!9506 (v!28171 LongMapFixedSize!4840)) )
))
(declare-datatypes ((MutLongMap!2420 0))(
  ( (LongMap!2420 (underlying!5035 Cell!9505)) (MutLongMapExt!2419 (__x!15436 Int)) )
))
(declare-fun lt!794556 () MutLongMap!2420)

(get-info :version)

(assert (=> b!2119735 (= e!1349677 (and e!1349659 ((_ is LongMap!2420) lt!794556)))))

(declare-datatypes ((Hashable!2334 0))(
  ( (HashableExt!2333 (__x!15437 Int)) )
))
(declare-datatypes ((Cell!9507 0))(
  ( (Cell!9508 (v!28172 MutLongMap!2420)) )
))
(declare-datatypes ((MutableMap!2334 0))(
  ( (MutableMapExt!2333 (__x!15438 Int)) (HashMap!2334 (underlying!5036 Cell!9507) (hashF!4257 Hashable!2334) (_size!4892 (_ BitVec 32)) (defaultValue!2496 Int)) )
))
(declare-datatypes ((CacheUp!1614 0))(
  ( (CacheUp!1615 (cache!2715 MutableMap!2334)) )
))
(declare-fun cacheUp!991 () CacheUp!1614)

(assert (=> b!2119735 (= lt!794556 (v!28172 (underlying!5036 (cache!2715 cacheUp!991))))))

(declare-fun b!2119736 () Bool)

(declare-fun res!918764 () Bool)

(assert (=> b!2119736 (=> (not res!918764) (not e!1349667))))

(declare-fun valid!1909 (CacheUp!1614) Bool)

(assert (=> b!2119736 (= res!918764 (valid!1909 cacheUp!991))))

(declare-fun res!918762 () Bool)

(assert (=> start!206918 (=> (not res!918762) (not e!1349667))))

(declare-fun isSuffix!612 (List!23724 List!23724) Bool)

(declare-fun list!9518 (BalanceConc!15346) List!23724)

(assert (=> start!206918 (= res!918762 (isSuffix!612 (list!9518 input!5507) (list!9518 totalInput!886)))))

(assert (=> start!206918 e!1349667))

(declare-datatypes ((Hashable!2335 0))(
  ( (HashableExt!2334 (__x!15439 Int)) )
))
(declare-datatypes ((tuple3!2848 0))(
  ( (tuple3!2849 (_1!13498 (InoxSet Context!2446)) (_2!13498 Int) (_3!1894 Int)) )
))
(declare-datatypes ((tuple2!23208 0))(
  ( (tuple2!23209 (_1!13499 tuple3!2848) (_2!13499 Int)) )
))
(declare-datatypes ((List!23726 0))(
  ( (Nil!23642) (Cons!23642 (h!29043 tuple2!23208) (t!196242 List!23726)) )
))
(declare-datatypes ((array!8329 0))(
  ( (array!8330 (arr!3696 (Array (_ BitVec 32) List!23726)) (size!18473 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4842 0))(
  ( (LongMapFixedSize!4843 (defaultEntry!2786 Int) (mask!6563 (_ BitVec 32)) (extraKeys!2669 (_ BitVec 32)) (zeroValue!2679 List!23726) (minValue!2679 List!23726) (_size!4893 (_ BitVec 32)) (_keys!2718 array!8325) (_values!2701 array!8329) (_vacant!2482 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9509 0))(
  ( (Cell!9510 (v!28173 LongMapFixedSize!4842)) )
))
(declare-datatypes ((MutLongMap!2421 0))(
  ( (LongMap!2421 (underlying!5037 Cell!9509)) (MutLongMapExt!2420 (__x!15440 Int)) )
))
(declare-datatypes ((Cell!9511 0))(
  ( (Cell!9512 (v!28174 MutLongMap!2421)) )
))
(declare-datatypes ((MutableMap!2335 0))(
  ( (MutableMapExt!2334 (__x!15441 Int)) (HashMap!2335 (underlying!5038 Cell!9511) (hashF!4258 Hashable!2335) (_size!4894 (_ BitVec 32)) (defaultValue!2497 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!576 0))(
  ( (CacheFurthestNullable!577 (cache!2716 MutableMap!2335) (totalInput!2887 BalanceConc!15346)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!576)

(declare-fun e!1349673 () Bool)

(declare-fun inv!31233 (CacheFurthestNullable!576) Bool)

(assert (=> start!206918 (and (inv!31233 cacheFurthestNullable!130) e!1349673)))

(declare-fun condSetEmpty!14626 () Bool)

(assert (=> start!206918 (= condSetEmpty!14626 (= z!3883 ((as const (Array Context!2446 Bool)) false)))))

(assert (=> start!206918 setRes!14626))

(declare-fun inv!31234 (BalanceConc!15346) Bool)

(assert (=> start!206918 (and (inv!31234 input!5507) e!1349669)))

(declare-datatypes ((tuple3!2850 0))(
  ( (tuple3!2851 (_1!13500 Regex!5653) (_2!13500 Context!2446) (_3!1895 C!11452)) )
))
(declare-datatypes ((tuple2!23210 0))(
  ( (tuple2!23211 (_1!13501 tuple3!2850) (_2!13501 (InoxSet Context!2446))) )
))
(declare-datatypes ((List!23727 0))(
  ( (Nil!23643) (Cons!23643 (h!29044 tuple2!23210) (t!196243 List!23727)) )
))
(declare-datatypes ((array!8331 0))(
  ( (array!8332 (arr!3697 (Array (_ BitVec 32) List!23727)) (size!18474 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4844 0))(
  ( (LongMapFixedSize!4845 (defaultEntry!2787 Int) (mask!6564 (_ BitVec 32)) (extraKeys!2670 (_ BitVec 32)) (zeroValue!2680 List!23727) (minValue!2680 List!23727) (_size!4895 (_ BitVec 32)) (_keys!2719 array!8325) (_values!2702 array!8331) (_vacant!2483 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9513 0))(
  ( (Cell!9514 (v!28175 LongMapFixedSize!4844)) )
))
(declare-datatypes ((MutLongMap!2422 0))(
  ( (LongMap!2422 (underlying!5039 Cell!9513)) (MutLongMapExt!2421 (__x!15442 Int)) )
))
(declare-datatypes ((Cell!9515 0))(
  ( (Cell!9516 (v!28176 MutLongMap!2422)) )
))
(declare-datatypes ((Hashable!2336 0))(
  ( (HashableExt!2335 (__x!15443 Int)) )
))
(declare-datatypes ((MutableMap!2336 0))(
  ( (MutableMapExt!2335 (__x!15444 Int)) (HashMap!2336 (underlying!5040 Cell!9515) (hashF!4259 Hashable!2336) (_size!4896 (_ BitVec 32)) (defaultValue!2498 Int)) )
))
(declare-datatypes ((CacheDown!1602 0))(
  ( (CacheDown!1603 (cache!2717 MutableMap!2336)) )
))
(declare-fun cacheDown!1110 () CacheDown!1602)

(declare-fun inv!31235 (CacheDown!1602) Bool)

(assert (=> start!206918 (and (inv!31235 cacheDown!1110) e!1349671)))

(declare-fun e!1349675 () Bool)

(declare-fun inv!31236 (CacheUp!1614) Bool)

(assert (=> start!206918 (and (inv!31236 cacheUp!991) e!1349675)))

(declare-fun e!1349679 () Bool)

(assert (=> start!206918 (and (inv!31234 totalInput!886) e!1349679)))

(declare-fun b!2119737 () Bool)

(declare-fun e!1349658 () Bool)

(declare-fun e!1349657 () Bool)

(assert (=> b!2119737 (= e!1349658 e!1349657)))

(declare-fun e!1349678 () Bool)

(assert (=> b!2119738 (= e!1349654 (and e!1349678 tp!648211))))

(declare-fun b!2119739 () Bool)

(declare-fun e!1349655 () Bool)

(declare-fun lt!794557 () MutLongMap!2422)

(assert (=> b!2119739 (= e!1349678 (and e!1349655 ((_ is LongMap!2422) lt!794557)))))

(assert (=> b!2119739 (= lt!794557 (v!28176 (underlying!5040 (cache!2717 cacheDown!1110))))))

(declare-fun b!2119740 () Bool)

(declare-fun e!1349672 () Bool)

(assert (=> b!2119740 (= e!1349659 e!1349672)))

(declare-fun b!2119741 () Bool)

(declare-fun res!918761 () Bool)

(assert (=> b!2119741 (=> (not res!918761) (not e!1349667))))

(declare-fun valid!1910 (CacheFurthestNullable!576) Bool)

(assert (=> b!2119741 (= res!918761 (valid!1910 cacheFurthestNullable!130))))

(declare-fun tp!648199 () Bool)

(declare-fun e!1349662 () Bool)

(declare-fun setElem!14626 () Context!2446)

(declare-fun setNonEmpty!14626 () Bool)

(declare-fun inv!31237 (Context!2446) Bool)

(assert (=> setNonEmpty!14626 (= setRes!14626 (and tp!648199 (inv!31237 setElem!14626) e!1349662))))

(declare-fun setRest!14626 () (InoxSet Context!2446))

(assert (=> setNonEmpty!14626 (= z!3883 ((_ map or) (store ((as const (Array Context!2446 Bool)) false) setElem!14626 true) setRest!14626))))

(declare-fun b!2119742 () Bool)

(declare-fun e!1349681 () Bool)

(assert (=> b!2119742 (= e!1349675 e!1349681)))

(declare-fun b!2119743 () Bool)

(declare-fun res!918765 () Bool)

(assert (=> b!2119743 (=> (not res!918765) (not e!1349667))))

(assert (=> b!2119743 (= res!918765 (= (totalInput!2887 cacheFurthestNullable!130) totalInput!886))))

(declare-fun tp!648208 () Bool)

(declare-fun e!1349670 () Bool)

(declare-fun tp!648216 () Bool)

(declare-fun array_inv!2652 (array!8325) Bool)

(declare-fun array_inv!2653 (array!8329) Bool)

(assert (=> b!2119744 (= e!1349657 (and tp!648224 tp!648216 tp!648208 (array_inv!2652 (_keys!2718 (v!28173 (underlying!5037 (v!28174 (underlying!5038 (cache!2716 cacheFurthestNullable!130))))))) (array_inv!2653 (_values!2701 (v!28173 (underlying!5037 (v!28174 (underlying!5038 (cache!2716 cacheFurthestNullable!130))))))) e!1349670))))

(declare-fun b!2119745 () Bool)

(declare-fun res!918763 () Bool)

(assert (=> b!2119745 (=> (not res!918763) (not e!1349667))))

(declare-fun valid!1911 (CacheDown!1602) Bool)

(assert (=> b!2119745 (= res!918763 (valid!1911 cacheDown!1110))))

(declare-fun b!2119746 () Bool)

(declare-fun e!1349660 () Bool)

(assert (=> b!2119746 (= e!1349655 e!1349660)))

(declare-fun e!1349676 () Bool)

(declare-fun e!1349663 () Bool)

(declare-fun tp!648207 () Bool)

(declare-fun tp!648200 () Bool)

(declare-fun array_inv!2654 (array!8331) Bool)

(assert (=> b!2119747 (= e!1349663 (and tp!648209 tp!648200 tp!648207 (array_inv!2652 (_keys!2719 (v!28175 (underlying!5039 (v!28176 (underlying!5040 (cache!2717 cacheDown!1110))))))) (array_inv!2654 (_values!2702 (v!28175 (underlying!5039 (v!28176 (underlying!5040 (cache!2717 cacheDown!1110))))))) e!1349676))))

(declare-fun b!2119748 () Bool)

(declare-fun e!1349680 () Bool)

(assert (=> b!2119748 (= e!1349680 e!1349658)))

(declare-fun mapNonEmpty!11696 () Bool)

(declare-fun tp!648220 () Bool)

(declare-fun tp!648222 () Bool)

(assert (=> mapNonEmpty!11696 (= mapRes!11696 (and tp!648220 tp!648222))))

(declare-fun mapKey!11697 () (_ BitVec 32))

(declare-fun mapValue!11696 () List!23727)

(declare-fun mapRest!11697 () (Array (_ BitVec 32) List!23727))

(assert (=> mapNonEmpty!11696 (= (arr!3697 (_values!2702 (v!28175 (underlying!5039 (v!28176 (underlying!5040 (cache!2717 cacheDown!1110))))))) (store mapRest!11697 mapKey!11697 mapValue!11696))))

(declare-fun b!2119749 () Bool)

(declare-fun tp!648221 () Bool)

(assert (=> b!2119749 (= e!1349670 (and tp!648221 mapRes!11697))))

(declare-fun condMapEmpty!11697 () Bool)

(declare-fun mapDefault!11696 () List!23726)

(assert (=> b!2119749 (= condMapEmpty!11697 (= (arr!3696 (_values!2701 (v!28173 (underlying!5037 (v!28174 (underlying!5038 (cache!2716 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23726)) mapDefault!11696)))))

(declare-fun b!2119750 () Bool)

(assert (=> b!2119750 (= e!1349660 e!1349663)))

(declare-fun b!2119751 () Bool)

(declare-fun tp!648206 () Bool)

(assert (=> b!2119751 (= e!1349679 (and (inv!31232 (c!339654 totalInput!886)) tp!648206))))

(declare-fun b!2119752 () Bool)

(declare-fun e!1349656 () Bool)

(declare-fun tp!648213 () Bool)

(assert (=> b!2119752 (= e!1349656 (and (inv!31232 (c!339654 (totalInput!2887 cacheFurthestNullable!130))) tp!648213))))

(declare-fun b!2119753 () Bool)

(declare-fun tp!648204 () Bool)

(assert (=> b!2119753 (= e!1349676 (and tp!648204 mapRes!11696))))

(declare-fun condMapEmpty!11698 () Bool)

(declare-fun mapDefault!11698 () List!23727)

(assert (=> b!2119753 (= condMapEmpty!11698 (= (arr!3697 (_values!2702 (v!28175 (underlying!5039 (v!28176 (underlying!5040 (cache!2717 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23727)) mapDefault!11698)))))

(declare-fun mapNonEmpty!11697 () Bool)

(declare-fun tp!648217 () Bool)

(declare-fun tp!648218 () Bool)

(assert (=> mapNonEmpty!11697 (= mapRes!11697 (and tp!648217 tp!648218))))

(declare-fun mapKey!11698 () (_ BitVec 32))

(declare-fun mapValue!11697 () List!23726)

(declare-fun mapRest!11698 () (Array (_ BitVec 32) List!23726))

(assert (=> mapNonEmpty!11697 (= (arr!3696 (_values!2701 (v!28173 (underlying!5037 (v!28174 (underlying!5038 (cache!2716 cacheFurthestNullable!130))))))) (store mapRest!11698 mapKey!11698 mapValue!11697))))

(declare-fun b!2119754 () Bool)

(declare-fun lt!794559 () MutLongMap!2421)

(assert (=> b!2119754 (= e!1349665 (and e!1349680 ((_ is LongMap!2421) lt!794559)))))

(assert (=> b!2119754 (= lt!794559 (v!28174 (underlying!5038 (cache!2716 cacheFurthestNullable!130))))))

(declare-fun mapIsEmpty!11698 () Bool)

(declare-fun mapRes!11698 () Bool)

(assert (=> mapIsEmpty!11698 mapRes!11698))

(declare-fun b!2119755 () Bool)

(declare-fun e!1349664 () Bool)

(assert (=> b!2119755 (= e!1349672 e!1349664)))

(declare-fun b!2119756 () Bool)

(assert (=> b!2119756 (= e!1349673 (and e!1349661 (inv!31234 (totalInput!2887 cacheFurthestNullable!130)) e!1349656))))

(declare-fun tp!648202 () Bool)

(declare-fun tp!648205 () Bool)

(declare-fun e!1349668 () Bool)

(declare-fun array_inv!2655 (array!8327) Bool)

(assert (=> b!2119757 (= e!1349664 (and tp!648215 tp!648202 tp!648205 (array_inv!2652 (_keys!2717 (v!28171 (underlying!5035 (v!28172 (underlying!5036 (cache!2715 cacheUp!991))))))) (array_inv!2655 (_values!2700 (v!28171 (underlying!5035 (v!28172 (underlying!5036 (cache!2715 cacheUp!991))))))) e!1349668))))

(declare-fun b!2119758 () Bool)

(declare-fun tp!648210 () Bool)

(assert (=> b!2119758 (= e!1349668 (and tp!648210 mapRes!11698))))

(declare-fun condMapEmpty!11696 () Bool)

(declare-fun mapDefault!11697 () List!23725)

(assert (=> b!2119758 (= condMapEmpty!11696 (= (arr!3695 (_values!2700 (v!28171 (underlying!5035 (v!28172 (underlying!5036 (cache!2715 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23725)) mapDefault!11697)))))

(assert (=> b!2119759 (= e!1349681 (and e!1349677 tp!648214))))

(declare-fun b!2119760 () Bool)

(declare-fun tp!648223 () Bool)

(assert (=> b!2119760 (= e!1349662 tp!648223)))

(declare-fun mapNonEmpty!11698 () Bool)

(declare-fun tp!648203 () Bool)

(declare-fun tp!648219 () Bool)

(assert (=> mapNonEmpty!11698 (= mapRes!11698 (and tp!648203 tp!648219))))

(declare-fun mapValue!11698 () List!23725)

(declare-fun mapKey!11696 () (_ BitVec 32))

(declare-fun mapRest!11696 () (Array (_ BitVec 32) List!23725))

(assert (=> mapNonEmpty!11698 (= (arr!3695 (_values!2700 (v!28171 (underlying!5035 (v!28172 (underlying!5036 (cache!2715 cacheUp!991))))))) (store mapRest!11696 mapKey!11696 mapValue!11698))))

(assert (= (and start!206918 res!918762) b!2119736))

(assert (= (and b!2119736 res!918764) b!2119745))

(assert (= (and b!2119745 res!918763) b!2119741))

(assert (= (and b!2119741 res!918761) b!2119743))

(assert (= (and b!2119743 res!918765) b!2119731))

(assert (= (and b!2119749 condMapEmpty!11697) mapIsEmpty!11697))

(assert (= (and b!2119749 (not condMapEmpty!11697)) mapNonEmpty!11697))

(assert (= b!2119744 b!2119749))

(assert (= b!2119737 b!2119744))

(assert (= b!2119748 b!2119737))

(assert (= (and b!2119754 ((_ is LongMap!2421) (v!28174 (underlying!5038 (cache!2716 cacheFurthestNullable!130))))) b!2119748))

(assert (= b!2119733 b!2119754))

(assert (= (and b!2119756 ((_ is HashMap!2335) (cache!2716 cacheFurthestNullable!130))) b!2119733))

(assert (= b!2119756 b!2119752))

(assert (= start!206918 b!2119756))

(assert (= (and start!206918 condSetEmpty!14626) setIsEmpty!14626))

(assert (= (and start!206918 (not condSetEmpty!14626)) setNonEmpty!14626))

(assert (= setNonEmpty!14626 b!2119760))

(assert (= start!206918 b!2119732))

(assert (= (and b!2119753 condMapEmpty!11698) mapIsEmpty!11696))

(assert (= (and b!2119753 (not condMapEmpty!11698)) mapNonEmpty!11696))

(assert (= b!2119747 b!2119753))

(assert (= b!2119750 b!2119747))

(assert (= b!2119746 b!2119750))

(assert (= (and b!2119739 ((_ is LongMap!2422) (v!28176 (underlying!5040 (cache!2717 cacheDown!1110))))) b!2119746))

(assert (= b!2119738 b!2119739))

(assert (= (and b!2119734 ((_ is HashMap!2336) (cache!2717 cacheDown!1110))) b!2119738))

(assert (= start!206918 b!2119734))

(assert (= (and b!2119758 condMapEmpty!11696) mapIsEmpty!11698))

(assert (= (and b!2119758 (not condMapEmpty!11696)) mapNonEmpty!11698))

(assert (= b!2119757 b!2119758))

(assert (= b!2119755 b!2119757))

(assert (= b!2119740 b!2119755))

(assert (= (and b!2119735 ((_ is LongMap!2420) (v!28172 (underlying!5036 (cache!2715 cacheUp!991))))) b!2119740))

(assert (= b!2119759 b!2119735))

(assert (= (and b!2119742 ((_ is HashMap!2334) (cache!2715 cacheUp!991))) b!2119759))

(assert (= start!206918 b!2119742))

(assert (= start!206918 b!2119751))

(declare-fun m!2574235 () Bool)

(assert (=> b!2119757 m!2574235))

(declare-fun m!2574237 () Bool)

(assert (=> b!2119757 m!2574237))

(declare-fun m!2574239 () Bool)

(assert (=> mapNonEmpty!11698 m!2574239))

(declare-fun m!2574241 () Bool)

(assert (=> b!2119744 m!2574241))

(declare-fun m!2574243 () Bool)

(assert (=> b!2119744 m!2574243))

(declare-fun m!2574245 () Bool)

(assert (=> start!206918 m!2574245))

(declare-fun m!2574247 () Bool)

(assert (=> start!206918 m!2574247))

(declare-fun m!2574249 () Bool)

(assert (=> start!206918 m!2574249))

(declare-fun m!2574251 () Bool)

(assert (=> start!206918 m!2574251))

(declare-fun m!2574253 () Bool)

(assert (=> start!206918 m!2574253))

(declare-fun m!2574255 () Bool)

(assert (=> start!206918 m!2574255))

(assert (=> start!206918 m!2574251))

(assert (=> start!206918 m!2574245))

(declare-fun m!2574257 () Bool)

(assert (=> start!206918 m!2574257))

(declare-fun m!2574259 () Bool)

(assert (=> start!206918 m!2574259))

(declare-fun m!2574261 () Bool)

(assert (=> b!2119752 m!2574261))

(declare-fun m!2574263 () Bool)

(assert (=> b!2119751 m!2574263))

(declare-fun m!2574265 () Bool)

(assert (=> b!2119756 m!2574265))

(declare-fun m!2574267 () Bool)

(assert (=> b!2119747 m!2574267))

(declare-fun m!2574269 () Bool)

(assert (=> b!2119747 m!2574269))

(declare-fun m!2574271 () Bool)

(assert (=> mapNonEmpty!11697 m!2574271))

(declare-fun m!2574273 () Bool)

(assert (=> b!2119741 m!2574273))

(declare-fun m!2574275 () Bool)

(assert (=> b!2119732 m!2574275))

(declare-fun m!2574277 () Bool)

(assert (=> b!2119736 m!2574277))

(declare-fun m!2574279 () Bool)

(assert (=> mapNonEmpty!11696 m!2574279))

(declare-fun m!2574281 () Bool)

(assert (=> setNonEmpty!14626 m!2574281))

(declare-fun m!2574283 () Bool)

(assert (=> b!2119731 m!2574283))

(declare-fun m!2574285 () Bool)

(assert (=> b!2119731 m!2574285))

(declare-fun m!2574287 () Bool)

(assert (=> b!2119731 m!2574287))

(declare-fun m!2574289 () Bool)

(assert (=> b!2119745 m!2574289))

(check-sat (not mapNonEmpty!11697) (not b!2119745) (not b!2119757) b_and!171075 (not b!2119758) b_and!171077 (not b!2119731) (not b!2119736) (not b_next!62199) (not mapNonEmpty!11698) (not b!2119747) (not b_next!62197) (not mapNonEmpty!11696) (not b_next!62201) (not b!2119749) b_and!171073 (not b!2119732) (not b!2119753) (not start!206918) b_and!171079 (not b!2119760) (not b_next!62203) b_and!171083 (not b_next!62207) b_and!171081 (not setNonEmpty!14626) (not b!2119751) (not b_next!62205) (not b!2119744) (not b!2119756) (not b!2119741) (not b!2119752))
(check-sat b_and!171075 b_and!171077 (not b_next!62199) (not b_next!62205) (not b_next!62197) (not b_next!62201) b_and!171073 b_and!171079 (not b_next!62203) b_and!171083 (not b_next!62207) b_and!171081)
