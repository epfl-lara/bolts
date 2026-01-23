; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207330 () Bool)

(assert start!207330)

(declare-fun b!2125727 () Bool)

(declare-fun b_free!61781 () Bool)

(declare-fun b_next!62485 () Bool)

(assert (=> b!2125727 (= b_free!61781 (not b_next!62485))))

(declare-fun tp!651799 () Bool)

(declare-fun b_and!171361 () Bool)

(assert (=> b!2125727 (= tp!651799 b_and!171361)))

(declare-fun b!2125738 () Bool)

(declare-fun b_free!61783 () Bool)

(declare-fun b_next!62487 () Bool)

(assert (=> b!2125738 (= b_free!61783 (not b_next!62487))))

(declare-fun tp!651794 () Bool)

(declare-fun b_and!171363 () Bool)

(assert (=> b!2125738 (= tp!651794 b_and!171363)))

(declare-fun b!2125751 () Bool)

(declare-fun b_free!61785 () Bool)

(declare-fun b_next!62489 () Bool)

(assert (=> b!2125751 (= b_free!61785 (not b_next!62489))))

(declare-fun tp!651786 () Bool)

(declare-fun b_and!171365 () Bool)

(assert (=> b!2125751 (= tp!651786 b_and!171365)))

(declare-fun b!2125728 () Bool)

(declare-fun b_free!61787 () Bool)

(declare-fun b_next!62491 () Bool)

(assert (=> b!2125728 (= b_free!61787 (not b_next!62491))))

(declare-fun tp!651791 () Bool)

(declare-fun b_and!171367 () Bool)

(assert (=> b!2125728 (= tp!651791 b_and!171367)))

(declare-fun b!2125733 () Bool)

(declare-fun b_free!61789 () Bool)

(declare-fun b_next!62493 () Bool)

(assert (=> b!2125733 (= b_free!61789 (not b_next!62493))))

(declare-fun tp!651783 () Bool)

(declare-fun b_and!171369 () Bool)

(assert (=> b!2125733 (= tp!651783 b_and!171369)))

(declare-fun b!2125731 () Bool)

(declare-fun b_free!61791 () Bool)

(declare-fun b_next!62495 () Bool)

(assert (=> b!2125731 (= b_free!61791 (not b_next!62495))))

(declare-fun tp!651780 () Bool)

(declare-fun b_and!171371 () Bool)

(assert (=> b!2125731 (= tp!651780 b_and!171371)))

(declare-fun b!2125786 () Bool)

(declare-fun e!1354811 () Bool)

(declare-fun e!1354802 () Bool)

(assert (=> b!2125786 (= e!1354811 e!1354802)))

(declare-fun mapIsEmpty!12162 () Bool)

(declare-fun mapRes!12162 () Bool)

(assert (=> mapIsEmpty!12162 mapRes!12162))

(declare-fun setNonEmpty!15345 () Bool)

(declare-fun setRes!15345 () Bool)

(assert (=> setNonEmpty!15345 (= setRes!15345 true)))

(declare-datatypes ((C!11500 0))(
  ( (C!11501 (val!6736 Int)) )
))
(declare-datatypes ((Regex!5677 0))(
  ( (ElementMatch!5677 (c!339968 C!11500)) (Concat!9979 (regOne!11866 Regex!5677) (regTwo!11866 Regex!5677)) (EmptyExpr!5677) (Star!5677 (reg!6006 Regex!5677)) (EmptyLang!5677) (Union!5677 (regOne!11867 Regex!5677) (regTwo!11867 Regex!5677)) )
))
(declare-datatypes ((List!23852 0))(
  ( (Nil!23768) (Cons!23768 (h!29169 Regex!5677) (t!196376 List!23852)) )
))
(declare-datatypes ((Context!2494 0))(
  ( (Context!2495 (exprs!1747 List!23852)) )
))
(declare-datatypes ((tuple3!2970 0))(
  ( (tuple3!2971 (_1!13664 Regex!5677) (_2!13664 Context!2494) (_3!1955 C!11500)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23418 0))(
  ( (tuple2!23419 (_1!13665 tuple3!2970) (_2!13665 (InoxSet Context!2494))) )
))
(declare-datatypes ((tuple2!23420 0))(
  ( (tuple2!23421 (_1!13666 Context!2494) (_2!13666 C!11500)) )
))
(declare-datatypes ((tuple2!23422 0))(
  ( (tuple2!23423 (_1!13667 tuple2!23420) (_2!13667 (InoxSet Context!2494))) )
))
(declare-datatypes ((List!23853 0))(
  ( (Nil!23769) (Cons!23769 (h!29170 tuple2!23422) (t!196377 List!23853)) )
))
(declare-datatypes ((List!23854 0))(
  ( (Nil!23770) (Cons!23770 (h!29171 tuple2!23418) (t!196378 List!23854)) )
))
(declare-datatypes ((array!8525 0))(
  ( (array!8526 (arr!3778 (Array (_ BitVec 32) (_ BitVec 64))) (size!18582 (_ BitVec 32))) )
))
(declare-datatypes ((array!8527 0))(
  ( (array!8528 (arr!3779 (Array (_ BitVec 32) List!23854)) (size!18583 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4960 0))(
  ( (LongMapFixedSize!4961 (defaultEntry!2845 Int) (mask!6634 (_ BitVec 32)) (extraKeys!2728 (_ BitVec 32)) (zeroValue!2738 List!23854) (minValue!2738 List!23854) (_size!5011 (_ BitVec 32)) (_keys!2777 array!8525) (_values!2760 array!8527) (_vacant!2541 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9745 0))(
  ( (Cell!9746 (v!28298 LongMapFixedSize!4960)) )
))
(declare-datatypes ((MutLongMap!2480 0))(
  ( (LongMap!2480 (underlying!5155 Cell!9745)) (MutLongMapExt!2479 (__x!15616 Int)) )
))
(declare-datatypes ((Cell!9747 0))(
  ( (Cell!9748 (v!28299 MutLongMap!2480)) )
))
(declare-datatypes ((List!23855 0))(
  ( (Nil!23771) (Cons!23771 (h!29172 C!11500) (t!196379 List!23855)) )
))
(declare-datatypes ((IArray!15635 0))(
  ( (IArray!15636 (innerList!7875 List!23855)) )
))
(declare-datatypes ((Hashable!2394 0))(
  ( (HashableExt!2393 (__x!15617 Int)) )
))
(declare-datatypes ((Hashable!2395 0))(
  ( (HashableExt!2394 (__x!15618 Int)) )
))
(declare-datatypes ((array!8529 0))(
  ( (array!8530 (arr!3780 (Array (_ BitVec 32) List!23853)) (size!18584 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4962 0))(
  ( (LongMapFixedSize!4963 (defaultEntry!2846 Int) (mask!6635 (_ BitVec 32)) (extraKeys!2729 (_ BitVec 32)) (zeroValue!2739 List!23853) (minValue!2739 List!23853) (_size!5012 (_ BitVec 32)) (_keys!2778 array!8525) (_values!2761 array!8529) (_vacant!2542 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9749 0))(
  ( (Cell!9750 (v!28300 LongMapFixedSize!4962)) )
))
(declare-datatypes ((MutLongMap!2481 0))(
  ( (LongMap!2481 (underlying!5156 Cell!9749)) (MutLongMapExt!2480 (__x!15619 Int)) )
))
(declare-datatypes ((Cell!9751 0))(
  ( (Cell!9752 (v!28301 MutLongMap!2481)) )
))
(declare-datatypes ((MutableMap!2394 0))(
  ( (MutableMapExt!2393 (__x!15620 Int)) (HashMap!2394 (underlying!5157 Cell!9751) (hashF!4317 Hashable!2395) (_size!5013 (_ BitVec 32)) (defaultValue!2556 Int)) )
))
(declare-datatypes ((CacheUp!1662 0))(
  ( (CacheUp!1663 (cache!2775 MutableMap!2394)) )
))
(declare-datatypes ((Conc!7815 0))(
  ( (Node!7815 (left!18378 Conc!7815) (right!18708 Conc!7815) (csize!15860 Int) (cheight!8026 Int)) (Leaf!11421 (xs!10757 IArray!15635) (csize!15861 Int)) (Empty!7815) )
))
(declare-datatypes ((BalanceConc!15392 0))(
  ( (BalanceConc!15393 (c!339969 Conc!7815)) )
))
(declare-datatypes ((StackFrame!66 0))(
  ( (StackFrame!67 (z!5752 (InoxSet Context!2494)) (from!2642 Int) (lastNullablePos!329 Int) (res!919798 Int) (totalInput!2935 BalanceConc!15392)) )
))
(declare-datatypes ((List!23856 0))(
  ( (Nil!23772) (Cons!23772 (h!29173 StackFrame!66) (t!196380 List!23856)) )
))
(declare-datatypes ((tuple2!23424 0))(
  ( (tuple2!23425 (_1!13668 Int) (_2!13668 List!23856)) )
))
(declare-datatypes ((MutableMap!2395 0))(
  ( (MutableMapExt!2394 (__x!15621 Int)) (HashMap!2395 (underlying!5158 Cell!9747) (hashF!4318 Hashable!2394) (_size!5014 (_ BitVec 32)) (defaultValue!2557 Int)) )
))
(declare-datatypes ((CacheDown!1648 0))(
  ( (CacheDown!1649 (cache!2776 MutableMap!2395)) )
))
(declare-datatypes ((tuple3!2972 0))(
  ( (tuple3!2973 (_1!13669 tuple2!23424) (_2!13669 CacheUp!1662) (_3!1956 CacheDown!1648)) )
))
(declare-fun lt!795672 () tuple3!2972)

(declare-fun setElem!15345 () Context!2494)

(declare-fun setRest!15345 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15345 (= (z!5752 (h!29173 (_2!13668 (_1!13669 lt!795672)))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15345 true) setRest!15345))))

(declare-fun mapNonEmpty!12162 () Bool)

(assert (=> mapNonEmpty!12162 (= mapRes!12162 true)))

(declare-fun mapKey!12162 () (_ BitVec 32))

(declare-fun mapValue!12163 () List!23853)

(declare-fun mapRest!12162 () (Array (_ BitVec 32) List!23853))

(assert (=> mapNonEmpty!12162 (= (arr!3780 (_values!2761 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672)))))))) (store mapRest!12162 mapKey!12162 mapValue!12163))))

(declare-fun b!2125787 () Bool)

(declare-fun e!1354803 () Bool)

(declare-fun e!1354799 () Bool)

(assert (=> b!2125787 (= e!1354803 e!1354799)))

(declare-fun b!2125788 () Bool)

(declare-fun e!1354801 () Bool)

(declare-fun e!1354807 () Bool)

(assert (=> b!2125788 (= e!1354801 e!1354807)))

(declare-fun b!2125789 () Bool)

(declare-fun e!1354812 () Bool)

(declare-fun e!1354798 () Bool)

(assert (=> b!2125789 (= e!1354812 e!1354798)))

(declare-fun mapNonEmpty!12163 () Bool)

(declare-fun mapRes!12163 () Bool)

(assert (=> mapNonEmpty!12163 (= mapRes!12163 true)))

(declare-fun mapRest!12163 () (Array (_ BitVec 32) List!23854))

(declare-fun mapValue!12162 () List!23854)

(declare-fun mapKey!12163 () (_ BitVec 32))

(assert (=> mapNonEmpty!12163 (= (arr!3779 (_values!2760 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672)))))))) (store mapRest!12163 mapKey!12163 mapValue!12162))))

(declare-fun b!2125791 () Bool)

(declare-fun e!1354809 () Bool)

(assert (=> b!2125791 (= e!1354809 e!1354811)))

(declare-fun b!2125792 () Bool)

(declare-fun e!1354808 () Bool)

(declare-fun e!1354800 () Bool)

(assert (=> b!2125792 (= e!1354808 e!1354800)))

(declare-fun b!2125793 () Bool)

(declare-fun e!1354810 () Bool)

(assert (=> b!2125793 (= e!1354810 e!1354801)))

(declare-fun b!2125794 () Bool)

(assert (=> b!2125794 (= e!1354798 e!1354803)))

(declare-fun b!2125795 () Bool)

(declare-fun e!1354804 () Bool)

(assert (=> b!2125795 (= e!1354804 setRes!15345)))

(declare-fun condSetEmpty!15345 () Bool)

(assert (=> b!2125795 (= condSetEmpty!15345 (= (z!5752 (h!29173 (_2!13668 (_1!13669 lt!795672)))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun b!2125796 () Bool)

(assert (=> b!2125796 (= e!1354800 mapRes!12162)))

(declare-fun condMapEmpty!12163 () Bool)

(declare-fun mapDefault!12162 () List!23853)

(assert (=> b!2125796 (= condMapEmpty!12163 (= (arr!3780 (_values!2761 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672)))))))) ((as const (Array (_ BitVec 32) List!23853)) mapDefault!12162)))))

(declare-fun mapIsEmpty!12163 () Bool)

(assert (=> mapIsEmpty!12163 mapRes!12163))

(declare-fun b!2125797 () Bool)

(declare-fun e!1354806 () Bool)

(assert (=> b!2125797 (= e!1354806 e!1354808)))

(declare-fun b!2125798 () Bool)

(assert (=> b!2125798 (= e!1354799 mapRes!12163)))

(declare-fun condMapEmpty!12162 () Bool)

(declare-fun mapDefault!12163 () List!23854)

(assert (=> b!2125798 (= condMapEmpty!12162 (= (arr!3779 (_values!2760 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672)))))))) ((as const (Array (_ BitVec 32) List!23854)) mapDefault!12163)))))

(declare-fun b!2125799 () Bool)

(declare-fun e!1354805 () Bool)

(declare-fun lt!795683 () MutLongMap!2481)

(get-info :version)

(assert (=> b!2125799 (= e!1354807 (and e!1354805 ((_ is LongMap!2481) lt!795683)))))

(assert (=> b!2125799 (= lt!795683 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672)))))))

(declare-fun b!2125800 () Bool)

(assert (=> b!2125800 (= e!1354805 e!1354806)))

(declare-fun b!2125790 () Bool)

(declare-fun lt!795682 () MutLongMap!2480)

(assert (=> b!2125790 (= e!1354802 (and e!1354812 ((_ is LongMap!2480) lt!795682)))))

(assert (=> b!2125790 (= lt!795682 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672)))))))

(declare-fun b!2125723 () Bool)

(declare-fun e!1354813 () Bool)

(assert (=> b!2125723 (and e!1354813 e!1354810 e!1354809)))

(declare-fun b!2125801 () Bool)

(assert (=> b!2125801 (= e!1354813 e!1354804)))

(declare-fun setIsEmpty!15345 () Bool)

(assert (=> setIsEmpty!15345 setRes!15345))

(assert (= (and b!2125795 condSetEmpty!15345) setIsEmpty!15345))

(assert (= (and b!2125795 (not condSetEmpty!15345)) setNonEmpty!15345))

(assert (= b!2125801 b!2125795))

(assert (= (and b!2125723 ((_ is Cons!23772) (_2!13668 (_1!13669 lt!795672)))) b!2125801))

(assert (= (and b!2125796 condMapEmpty!12163) mapIsEmpty!12162))

(assert (= (and b!2125796 (not condMapEmpty!12163)) mapNonEmpty!12162))

(assert (= b!2125792 b!2125796))

(assert (= b!2125797 b!2125792))

(assert (= b!2125800 b!2125797))

(assert (= (and b!2125799 ((_ is LongMap!2481) (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672)))))) b!2125800))

(assert (= b!2125788 b!2125799))

(assert (= (and b!2125793 ((_ is HashMap!2394) (cache!2775 (_2!13669 lt!795672)))) b!2125788))

(assert (= b!2125723 b!2125793))

(assert (= (and b!2125798 condMapEmpty!12162) mapIsEmpty!12163))

(assert (= (and b!2125798 (not condMapEmpty!12162)) mapNonEmpty!12163))

(assert (= b!2125787 b!2125798))

(assert (= b!2125794 b!2125787))

(assert (= b!2125789 b!2125794))

(assert (= (and b!2125790 ((_ is LongMap!2480) (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672)))))) b!2125789))

(assert (= b!2125786 b!2125790))

(assert (= (and b!2125791 ((_ is HashMap!2395) (cache!2776 (_3!1956 lt!795672)))) b!2125786))

(assert (= b!2125723 b!2125791))

(declare-fun lambda!78826 () Int)

(declare-fun order!14769 () Int)

(declare-fun order!14771 () Int)

(declare-fun dynLambda!11358 (Int Int) Int)

(declare-fun dynLambda!11359 (Int Int) Int)

(assert (=> b!2125788 (< (dynLambda!11358 order!14769 (defaultValue!2556 (cache!2775 (_2!13669 lt!795672)))) (dynLambda!11359 order!14771 lambda!78826))))

(declare-fun order!14773 () Int)

(declare-fun dynLambda!11360 (Int Int) Int)

(assert (=> b!2125787 (< (dynLambda!11360 order!14773 (defaultEntry!2845 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672)))))))) (dynLambda!11359 order!14771 lambda!78826))))

(declare-fun order!14775 () Int)

(declare-fun dynLambda!11361 (Int Int) Int)

(assert (=> b!2125792 (< (dynLambda!11361 order!14775 (defaultEntry!2846 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672)))))))) (dynLambda!11359 order!14771 lambda!78826))))

(declare-fun order!14777 () Int)

(declare-fun dynLambda!11362 (Int Int) Int)

(assert (=> b!2125786 (< (dynLambda!11362 order!14777 (defaultValue!2557 (cache!2776 (_3!1956 lt!795672)))) (dynLambda!11359 order!14771 lambda!78826))))

(declare-fun m!2577808 () Bool)

(assert (=> mapNonEmpty!12162 m!2577808))

(declare-fun m!2577810 () Bool)

(assert (=> mapNonEmpty!12163 m!2577810))

(declare-fun bs!443519 () Bool)

(declare-fun b!2125730 () Bool)

(assert (= bs!443519 (and b!2125730 b!2125723)))

(declare-fun lambda!78827 () Int)

(assert (=> bs!443519 (not (= lambda!78827 lambda!78826))))

(assert (=> b!2125730 true))

(declare-fun tp!651805 () Bool)

(declare-fun setRes!15342 () Bool)

(declare-fun setNonEmpty!15342 () Bool)

(declare-fun setElem!15342 () Context!2494)

(declare-fun e!1354765 () Bool)

(declare-fun inv!31365 (Context!2494) Bool)

(assert (=> setNonEmpty!15342 (= setRes!15342 (and tp!651805 (inv!31365 setElem!15342) e!1354765))))

(declare-fun z!3883 () (InoxSet Context!2494))

(declare-fun setRest!15342 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15342 (= z!3883 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15342 true) setRest!15342))))

(declare-fun b!2125717 () Bool)

(declare-fun e!1354747 () Bool)

(declare-fun e!1354763 () Bool)

(assert (=> b!2125717 (= e!1354747 e!1354763)))

(declare-fun b!2125718 () Bool)

(declare-fun e!1354735 () Bool)

(declare-datatypes ((Hashable!2396 0))(
  ( (HashableExt!2395 (__x!15622 Int)) )
))
(declare-datatypes ((tuple3!2974 0))(
  ( (tuple3!2975 (_1!13670 (InoxSet Context!2494)) (_2!13670 Int) (_3!1957 Int)) )
))
(declare-datatypes ((tuple2!23426 0))(
  ( (tuple2!23427 (_1!13671 tuple3!2974) (_2!13671 Int)) )
))
(declare-datatypes ((List!23857 0))(
  ( (Nil!23773) (Cons!23773 (h!29174 tuple2!23426) (t!196381 List!23857)) )
))
(declare-datatypes ((array!8531 0))(
  ( (array!8532 (arr!3781 (Array (_ BitVec 32) List!23857)) (size!18585 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4964 0))(
  ( (LongMapFixedSize!4965 (defaultEntry!2847 Int) (mask!6636 (_ BitVec 32)) (extraKeys!2730 (_ BitVec 32)) (zeroValue!2740 List!23857) (minValue!2740 List!23857) (_size!5015 (_ BitVec 32)) (_keys!2779 array!8525) (_values!2762 array!8531) (_vacant!2543 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9753 0))(
  ( (Cell!9754 (v!28302 LongMapFixedSize!4964)) )
))
(declare-datatypes ((MutLongMap!2482 0))(
  ( (LongMap!2482 (underlying!5159 Cell!9753)) (MutLongMapExt!2481 (__x!15623 Int)) )
))
(declare-datatypes ((Cell!9755 0))(
  ( (Cell!9756 (v!28303 MutLongMap!2482)) )
))
(declare-datatypes ((MutableMap!2396 0))(
  ( (MutableMapExt!2395 (__x!15624 Int)) (HashMap!2396 (underlying!5160 Cell!9755) (hashF!4319 Hashable!2396) (_size!5016 (_ BitVec 32)) (defaultValue!2558 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!602 0))(
  ( (CacheFurthestNullable!603 (cache!2777 MutableMap!2396) (totalInput!2936 BalanceConc!15392)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!602)

(declare-fun tp!651802 () Bool)

(declare-fun inv!31366 (Conc!7815) Bool)

(assert (=> b!2125718 (= e!1354735 (and (inv!31366 (c!339969 (totalInput!2936 cacheFurthestNullable!130))) tp!651802))))

(declare-fun b!2125719 () Bool)

(declare-fun e!1354738 () Bool)

(declare-fun e!1354743 () Bool)

(declare-fun lt!795677 () MutLongMap!2481)

(assert (=> b!2125719 (= e!1354738 (and e!1354743 ((_ is LongMap!2481) lt!795677)))))

(declare-fun cacheUp!991 () CacheUp!1662)

(assert (=> b!2125719 (= lt!795677 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))

(declare-fun b!2125720 () Bool)

(declare-fun e!1354760 () Bool)

(declare-fun e!1354739 () Bool)

(assert (=> b!2125720 (= e!1354760 e!1354739)))

(declare-fun b!2125721 () Bool)

(declare-fun e!1354757 () Bool)

(declare-fun lt!795674 () MutLongMap!2482)

(assert (=> b!2125721 (= e!1354757 (and e!1354747 ((_ is LongMap!2482) lt!795674)))))

(assert (=> b!2125721 (= lt!795674 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))

(declare-fun b!2125722 () Bool)

(declare-fun e!1354740 () Bool)

(assert (=> b!2125722 (= e!1354743 e!1354740)))

(declare-fun e!1354764 () Bool)

(declare-datatypes ((tuple2!23428 0))(
  ( (tuple2!23429 (_1!13672 BalanceConc!15392) (_2!13672 BalanceConc!15392)) )
))
(declare-fun lt!795669 () tuple2!23428)

(declare-fun lt!795675 () List!23855)

(declare-fun ++!6317 (List!23855 List!23855) List!23855)

(declare-fun list!9539 (BalanceConc!15392) List!23855)

(assert (=> b!2125723 (= e!1354764 (not (= (++!6317 (list!9539 (_1!13672 lt!795669)) (list!9539 (_2!13672 lt!795669))) lt!795675)))))

(declare-fun e!1354742 () tuple2!23428)

(assert (=> b!2125723 (= lt!795669 e!1354742)))

(declare-fun c!339966 () Bool)

(declare-fun lt!795676 () Int)

(assert (=> b!2125723 (= c!339966 (< lt!795676 0))))

(declare-datatypes ((Unit!37634 0))(
  ( (Unit!37635) )
))
(declare-datatypes ((tuple2!23430 0))(
  ( (tuple2!23431 (_1!13673 Unit!37634) (_2!13673 CacheFurthestNullable!602)) )
))
(declare-fun lt!795668 () tuple2!23430)

(declare-fun lt!795670 () Int)

(declare-fun totalInput!886 () BalanceConc!15392)

(declare-fun fillUpCache!10 (List!23856 BalanceConc!15392 Int Int Int CacheFurthestNullable!602) tuple2!23430)

(assert (=> b!2125723 (= lt!795668 (fillUpCache!10 (_2!13668 (_1!13669 lt!795672)) totalInput!886 lt!795670 (_1!13668 (_1!13669 lt!795672)) 0 cacheFurthestNullable!130))))

(declare-fun e!1354756 () Bool)

(assert (=> b!2125723 e!1354756))

(declare-fun res!919792 () Bool)

(assert (=> b!2125723 (=> (not res!919792) (not e!1354756))))

(declare-fun forall!4878 (List!23856 Int) Bool)

(assert (=> b!2125723 (= res!919792 (forall!4878 (_2!13668 (_1!13669 lt!795672)) lambda!78826))))

(declare-fun lt!795671 () Int)

(assert (=> b!2125723 (= lt!795676 (+ 1 (- (_1!13668 (_1!13669 lt!795672)) lt!795671)))))

(declare-fun e!1354761 () Int)

(declare-fun cacheDown!1110 () CacheDown!1648)

(declare-fun furthestNullablePositionStackMem!15 ((InoxSet Context!2494) Int BalanceConc!15392 Int Int List!23856 CacheUp!1662 CacheDown!1648 CacheFurthestNullable!602) tuple3!2972)

(assert (=> b!2125723 (= lt!795672 (furthestNullablePositionStackMem!15 z!3883 lt!795671 totalInput!886 lt!795670 e!1354761 Nil!23772 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))

(declare-fun c!339967 () Bool)

(declare-fun nullableZipper!70 ((InoxSet Context!2494)) Bool)

(assert (=> b!2125723 (= c!339967 (nullableZipper!70 z!3883))))

(declare-fun input!5507 () BalanceConc!15392)

(declare-fun size!18586 (BalanceConc!15392) Int)

(assert (=> b!2125723 (= lt!795671 (- lt!795670 (size!18586 input!5507)))))

(assert (=> b!2125723 (= lt!795670 (size!18586 totalInput!886))))

(declare-fun b!2125724 () Bool)

(declare-fun e!1354750 () Bool)

(declare-fun tp!651797 () Bool)

(declare-fun mapRes!12156 () Bool)

(assert (=> b!2125724 (= e!1354750 (and tp!651797 mapRes!12156))))

(declare-fun condMapEmpty!12155 () Bool)

(declare-fun mapDefault!12155 () List!23857)

(assert (=> b!2125724 (= condMapEmpty!12155 (= (arr!3781 (_values!2762 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23857)) mapDefault!12155)))))

(declare-fun b!2125725 () Bool)

(declare-fun res!919793 () Bool)

(assert (=> b!2125725 (=> (not res!919793) (not e!1354764))))

(declare-fun valid!1949 (CacheDown!1648) Bool)

(assert (=> b!2125725 (= res!919793 (valid!1949 cacheDown!1110))))

(declare-fun b!2125726 () Bool)

(declare-fun res!919794 () Bool)

(assert (=> b!2125726 (=> (not res!919794) (not e!1354764))))

(assert (=> b!2125726 (= res!919794 (= (totalInput!2936 cacheFurthestNullable!130) totalInput!886))))

(declare-fun tp!651801 () Bool)

(declare-fun e!1354748 () Bool)

(declare-fun tp!651798 () Bool)

(declare-fun array_inv!2700 (array!8525) Bool)

(declare-fun array_inv!2701 (array!8527) Bool)

(assert (=> b!2125727 (= e!1354739 (and tp!651799 tp!651798 tp!651801 (array_inv!2700 (_keys!2777 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))) (array_inv!2701 (_values!2760 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))) e!1354748))))

(declare-fun e!1354752 () Bool)

(assert (=> b!2125728 (= e!1354752 (and e!1354738 tp!651791))))

(declare-fun b!2125729 () Bool)

(declare-fun e!1354737 () Bool)

(assert (=> b!2125729 (= e!1354740 e!1354737)))

(assert (=> b!2125730 (= e!1354756 (forall!4878 (_2!13668 (_1!13669 lt!795672)) lambda!78827))))

(declare-fun mapNonEmpty!12155 () Bool)

(declare-fun tp!651781 () Bool)

(declare-fun tp!651785 () Bool)

(assert (=> mapNonEmpty!12155 (= mapRes!12156 (and tp!651781 tp!651785))))

(declare-fun mapRest!12157 () (Array (_ BitVec 32) List!23857))

(declare-fun mapKey!12155 () (_ BitVec 32))

(declare-fun mapValue!12157 () List!23857)

(assert (=> mapNonEmpty!12155 (= (arr!3781 (_values!2762 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))) (store mapRest!12157 mapKey!12155 mapValue!12157))))

(declare-fun res!919797 () Bool)

(assert (=> start!207330 (=> (not res!919797) (not e!1354764))))

(declare-fun isSuffix!624 (List!23855 List!23855) Bool)

(assert (=> start!207330 (= res!919797 (isSuffix!624 lt!795675 (list!9539 totalInput!886)))))

(assert (=> start!207330 (= lt!795675 (list!9539 input!5507))))

(assert (=> start!207330 e!1354764))

(declare-fun e!1354755 () Bool)

(declare-fun inv!31367 (CacheFurthestNullable!602) Bool)

(assert (=> start!207330 (and (inv!31367 cacheFurthestNullable!130) e!1354755)))

(declare-fun condSetEmpty!15342 () Bool)

(assert (=> start!207330 (= condSetEmpty!15342 (= z!3883 ((as const (Array Context!2494 Bool)) false)))))

(assert (=> start!207330 setRes!15342))

(declare-fun e!1354762 () Bool)

(declare-fun inv!31368 (BalanceConc!15392) Bool)

(assert (=> start!207330 (and (inv!31368 input!5507) e!1354762)))

(declare-fun e!1354754 () Bool)

(declare-fun inv!31369 (CacheDown!1648) Bool)

(assert (=> start!207330 (and (inv!31369 cacheDown!1110) e!1354754)))

(declare-fun e!1354751 () Bool)

(declare-fun inv!31370 (CacheUp!1662) Bool)

(assert (=> start!207330 (and (inv!31370 cacheUp!991) e!1354751)))

(declare-fun e!1354741 () Bool)

(assert (=> start!207330 (and (inv!31368 totalInput!886) e!1354741)))

(declare-fun e!1354745 () Bool)

(declare-fun e!1354759 () Bool)

(assert (=> b!2125731 (= e!1354745 (and e!1354759 tp!651780))))

(declare-fun mapIsEmpty!12155 () Bool)

(declare-fun mapRes!12155 () Bool)

(assert (=> mapIsEmpty!12155 mapRes!12155))

(declare-fun b!2125732 () Bool)

(declare-fun e!1354753 () Bool)

(assert (=> b!2125732 (= e!1354753 e!1354760)))

(declare-fun e!1354758 () Bool)

(assert (=> b!2125733 (= e!1354758 (and e!1354757 tp!651783))))

(declare-fun mapIsEmpty!12156 () Bool)

(assert (=> mapIsEmpty!12156 mapRes!12156))

(declare-fun mapIsEmpty!12157 () Bool)

(declare-fun mapRes!12157 () Bool)

(assert (=> mapIsEmpty!12157 mapRes!12157))

(declare-fun mapNonEmpty!12156 () Bool)

(declare-fun tp!651784 () Bool)

(declare-fun tp!651790 () Bool)

(assert (=> mapNonEmpty!12156 (= mapRes!12155 (and tp!651784 tp!651790))))

(declare-fun mapKey!12156 () (_ BitVec 32))

(declare-fun mapRest!12156 () (Array (_ BitVec 32) List!23853))

(declare-fun mapValue!12156 () List!23853)

(assert (=> mapNonEmpty!12156 (= (arr!3780 (_values!2761 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))) (store mapRest!12156 mapKey!12156 mapValue!12156))))

(declare-fun b!2125734 () Bool)

(assert (=> b!2125734 (= e!1354755 (and e!1354758 (inv!31368 (totalInput!2936 cacheFurthestNullable!130)) e!1354735))))

(declare-fun b!2125735 () Bool)

(declare-fun res!919796 () Bool)

(assert (=> b!2125735 (=> (not res!919796) (not e!1354764))))

(declare-fun valid!1950 (CacheUp!1662) Bool)

(assert (=> b!2125735 (= res!919796 (valid!1950 cacheUp!991))))

(declare-fun b!2125736 () Bool)

(declare-fun tp!651795 () Bool)

(assert (=> b!2125736 (= e!1354748 (and tp!651795 mapRes!12157))))

(declare-fun condMapEmpty!12157 () Bool)

(declare-fun mapDefault!12156 () List!23854)

(assert (=> b!2125736 (= condMapEmpty!12157 (= (arr!3779 (_values!2760 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23854)) mapDefault!12156)))))

(declare-fun b!2125737 () Bool)

(assert (=> b!2125737 (= e!1354761 (- 1))))

(declare-fun mapNonEmpty!12157 () Bool)

(declare-fun tp!651782 () Bool)

(declare-fun tp!651793 () Bool)

(assert (=> mapNonEmpty!12157 (= mapRes!12157 (and tp!651782 tp!651793))))

(declare-fun mapRest!12155 () (Array (_ BitVec 32) List!23854))

(declare-fun mapKey!12157 () (_ BitVec 32))

(declare-fun mapValue!12155 () List!23854)

(assert (=> mapNonEmpty!12157 (= (arr!3779 (_values!2760 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))) (store mapRest!12155 mapKey!12157 mapValue!12155))))

(declare-fun e!1354744 () Bool)

(declare-fun tp!651804 () Bool)

(declare-fun tp!651792 () Bool)

(declare-fun array_inv!2702 (array!8529) Bool)

(assert (=> b!2125738 (= e!1354737 (and tp!651794 tp!651804 tp!651792 (array_inv!2700 (_keys!2778 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))) (array_inv!2702 (_values!2761 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))) e!1354744))))

(declare-fun setIsEmpty!15342 () Bool)

(assert (=> setIsEmpty!15342 setRes!15342))

(declare-fun b!2125739 () Bool)

(assert (=> b!2125739 (= e!1354754 e!1354745)))

(declare-fun b!2125740 () Bool)

(declare-fun call!128744 () tuple2!23428)

(assert (=> b!2125740 (= e!1354742 call!128744)))

(declare-fun b!2125741 () Bool)

(assert (=> b!2125741 (= e!1354742 call!128744)))

(declare-fun b!2125742 () Bool)

(declare-fun res!919795 () Bool)

(assert (=> b!2125742 (=> (not res!919795) (not e!1354764))))

(declare-fun valid!1951 (CacheFurthestNullable!602) Bool)

(assert (=> b!2125742 (= res!919795 (valid!1951 cacheFurthestNullable!130))))

(declare-fun b!2125743 () Bool)

(declare-fun tp!651796 () Bool)

(assert (=> b!2125743 (= e!1354762 (and (inv!31366 (c!339969 input!5507)) tp!651796))))

(declare-fun b!2125744 () Bool)

(declare-fun e!1354746 () Bool)

(assert (=> b!2125744 (= e!1354763 e!1354746)))

(declare-fun b!2125745 () Bool)

(assert (=> b!2125745 (= e!1354761 (- lt!795671 1))))

(declare-fun b!2125746 () Bool)

(declare-fun tp!651803 () Bool)

(assert (=> b!2125746 (= e!1354744 (and tp!651803 mapRes!12155))))

(declare-fun condMapEmpty!12156 () Bool)

(declare-fun mapDefault!12157 () List!23853)

(assert (=> b!2125746 (= condMapEmpty!12156 (= (arr!3780 (_values!2761 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23853)) mapDefault!12157)))))

(declare-fun b!2125747 () Bool)

(declare-fun tp!651800 () Bool)

(assert (=> b!2125747 (= e!1354765 tp!651800)))

(declare-fun b!2125748 () Bool)

(declare-fun tp!651789 () Bool)

(assert (=> b!2125748 (= e!1354741 (and (inv!31366 (c!339969 totalInput!886)) tp!651789))))

(declare-fun b!2125749 () Bool)

(assert (=> b!2125749 (= e!1354751 e!1354752)))

(declare-fun bm!128739 () Bool)

(declare-fun splitAt!17 (BalanceConc!15392 Int) tuple2!23428)

(assert (=> bm!128739 (= call!128744 (splitAt!17 input!5507 (ite c!339966 0 lt!795676)))))

(declare-fun b!2125750 () Bool)

(declare-fun lt!795673 () MutLongMap!2480)

(assert (=> b!2125750 (= e!1354759 (and e!1354753 ((_ is LongMap!2480) lt!795673)))))

(assert (=> b!2125750 (= lt!795673 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))

(declare-fun tp!651787 () Bool)

(declare-fun tp!651788 () Bool)

(declare-fun array_inv!2703 (array!8531) Bool)

(assert (=> b!2125751 (= e!1354746 (and tp!651786 tp!651788 tp!651787 (array_inv!2700 (_keys!2779 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))) (array_inv!2703 (_values!2762 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))) e!1354750))))

(assert (= (and start!207330 res!919797) b!2125735))

(assert (= (and b!2125735 res!919796) b!2125725))

(assert (= (and b!2125725 res!919793) b!2125742))

(assert (= (and b!2125742 res!919795) b!2125726))

(assert (= (and b!2125726 res!919794) b!2125723))

(assert (= (and b!2125723 c!339967) b!2125745))

(assert (= (and b!2125723 (not c!339967)) b!2125737))

(assert (= (and b!2125723 res!919792) b!2125730))

(assert (= (and b!2125723 c!339966) b!2125740))

(assert (= (and b!2125723 (not c!339966)) b!2125741))

(assert (= (or b!2125740 b!2125741) bm!128739))

(assert (= (and b!2125724 condMapEmpty!12155) mapIsEmpty!12156))

(assert (= (and b!2125724 (not condMapEmpty!12155)) mapNonEmpty!12155))

(assert (= b!2125751 b!2125724))

(assert (= b!2125744 b!2125751))

(assert (= b!2125717 b!2125744))

(assert (= (and b!2125721 ((_ is LongMap!2482) (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))) b!2125717))

(assert (= b!2125733 b!2125721))

(assert (= (and b!2125734 ((_ is HashMap!2396) (cache!2777 cacheFurthestNullable!130))) b!2125733))

(assert (= b!2125734 b!2125718))

(assert (= start!207330 b!2125734))

(assert (= (and start!207330 condSetEmpty!15342) setIsEmpty!15342))

(assert (= (and start!207330 (not condSetEmpty!15342)) setNonEmpty!15342))

(assert (= setNonEmpty!15342 b!2125747))

(assert (= start!207330 b!2125743))

(assert (= (and b!2125736 condMapEmpty!12157) mapIsEmpty!12157))

(assert (= (and b!2125736 (not condMapEmpty!12157)) mapNonEmpty!12157))

(assert (= b!2125727 b!2125736))

(assert (= b!2125720 b!2125727))

(assert (= b!2125732 b!2125720))

(assert (= (and b!2125750 ((_ is LongMap!2480) (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))) b!2125732))

(assert (= b!2125731 b!2125750))

(assert (= (and b!2125739 ((_ is HashMap!2395) (cache!2776 cacheDown!1110))) b!2125731))

(assert (= start!207330 b!2125739))

(assert (= (and b!2125746 condMapEmpty!12156) mapIsEmpty!12155))

(assert (= (and b!2125746 (not condMapEmpty!12156)) mapNonEmpty!12156))

(assert (= b!2125738 b!2125746))

(assert (= b!2125729 b!2125738))

(assert (= b!2125722 b!2125729))

(assert (= (and b!2125719 ((_ is LongMap!2481) (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))) b!2125722))

(assert (= b!2125728 b!2125719))

(assert (= (and b!2125749 ((_ is HashMap!2394) (cache!2775 cacheUp!991))) b!2125728))

(assert (= start!207330 b!2125749))

(assert (= start!207330 b!2125748))

(declare-fun m!2577812 () Bool)

(assert (=> b!2125735 m!2577812))

(declare-fun m!2577814 () Bool)

(assert (=> setNonEmpty!15342 m!2577814))

(declare-fun m!2577816 () Bool)

(assert (=> b!2125738 m!2577816))

(declare-fun m!2577818 () Bool)

(assert (=> b!2125738 m!2577818))

(declare-fun m!2577820 () Bool)

(assert (=> b!2125748 m!2577820))

(declare-fun m!2577822 () Bool)

(assert (=> b!2125742 m!2577822))

(declare-fun m!2577824 () Bool)

(assert (=> mapNonEmpty!12157 m!2577824))

(declare-fun m!2577826 () Bool)

(assert (=> b!2125727 m!2577826))

(declare-fun m!2577828 () Bool)

(assert (=> b!2125727 m!2577828))

(declare-fun m!2577830 () Bool)

(assert (=> start!207330 m!2577830))

(declare-fun m!2577832 () Bool)

(assert (=> start!207330 m!2577832))

(assert (=> start!207330 m!2577830))

(declare-fun m!2577834 () Bool)

(assert (=> start!207330 m!2577834))

(declare-fun m!2577836 () Bool)

(assert (=> start!207330 m!2577836))

(declare-fun m!2577838 () Bool)

(assert (=> start!207330 m!2577838))

(declare-fun m!2577840 () Bool)

(assert (=> start!207330 m!2577840))

(declare-fun m!2577842 () Bool)

(assert (=> start!207330 m!2577842))

(declare-fun m!2577844 () Bool)

(assert (=> start!207330 m!2577844))

(declare-fun m!2577846 () Bool)

(assert (=> b!2125730 m!2577846))

(declare-fun m!2577848 () Bool)

(assert (=> b!2125734 m!2577848))

(declare-fun m!2577850 () Bool)

(assert (=> bm!128739 m!2577850))

(declare-fun m!2577852 () Bool)

(assert (=> b!2125751 m!2577852))

(declare-fun m!2577854 () Bool)

(assert (=> b!2125751 m!2577854))

(declare-fun m!2577856 () Bool)

(assert (=> mapNonEmpty!12156 m!2577856))

(declare-fun m!2577858 () Bool)

(assert (=> mapNonEmpty!12155 m!2577858))

(declare-fun m!2577860 () Bool)

(assert (=> b!2125725 m!2577860))

(declare-fun m!2577862 () Bool)

(assert (=> b!2125718 m!2577862))

(declare-fun m!2577864 () Bool)

(assert (=> b!2125743 m!2577864))

(declare-fun m!2577866 () Bool)

(assert (=> b!2125723 m!2577866))

(declare-fun m!2577868 () Bool)

(assert (=> b!2125723 m!2577868))

(declare-fun m!2577870 () Bool)

(assert (=> b!2125723 m!2577870))

(declare-fun m!2577872 () Bool)

(assert (=> b!2125723 m!2577872))

(declare-fun m!2577874 () Bool)

(assert (=> b!2125723 m!2577874))

(declare-fun m!2577876 () Bool)

(assert (=> b!2125723 m!2577876))

(declare-fun m!2577878 () Bool)

(assert (=> b!2125723 m!2577878))

(declare-fun m!2577880 () Bool)

(assert (=> b!2125723 m!2577880))

(assert (=> b!2125723 m!2577872))

(assert (=> b!2125723 m!2577870))

(declare-fun m!2577882 () Bool)

(assert (=> b!2125723 m!2577882))

(check-sat (not b!2125748) (not mapNonEmpty!12157) (not bm!128739) (not b!2125801) b_and!171363 (not mapNonEmpty!12162) (not mapNonEmpty!12163) (not b!2125787) (not mapNonEmpty!12156) (not b!2125730) b_and!171371 (not b!2125724) (not b!2125742) (not b!2125792) (not b!2125796) (not b_next!62485) (not b!2125747) (not b!2125735) b_and!171365 (not b!2125734) (not b_next!62493) (not b!2125751) (not b_next!62495) (not setNonEmpty!15345) (not setNonEmpty!15342) (not b!2125743) (not b!2125727) (not start!207330) (not b_next!62491) (not b!2125736) (not mapNonEmpty!12155) (not b_next!62489) (not b!2125718) (not b!2125723) (not b!2125725) (not b!2125746) b_and!171369 (not b!2125738) (not b!2125798) b_and!171361 (not b_next!62487) b_and!171367)
(check-sat b_and!171363 (not b_next!62485) b_and!171365 (not b_next!62491) (not b_next!62489) b_and!171369 b_and!171371 (not b_next!62493) (not b_next!62495) b_and!171361 (not b_next!62487) b_and!171367)
(get-model)

(declare-fun d!643958 () Bool)

(declare-fun c!339972 () Bool)

(assert (=> d!643958 (= c!339972 ((_ is Node!7815) (c!339969 input!5507)))))

(declare-fun e!1354818 () Bool)

(assert (=> d!643958 (= (inv!31366 (c!339969 input!5507)) e!1354818)))

(declare-fun b!2125810 () Bool)

(declare-fun inv!31371 (Conc!7815) Bool)

(assert (=> b!2125810 (= e!1354818 (inv!31371 (c!339969 input!5507)))))

(declare-fun b!2125811 () Bool)

(declare-fun e!1354819 () Bool)

(assert (=> b!2125811 (= e!1354818 e!1354819)))

(declare-fun res!919801 () Bool)

(assert (=> b!2125811 (= res!919801 (not ((_ is Leaf!11421) (c!339969 input!5507))))))

(assert (=> b!2125811 (=> res!919801 e!1354819)))

(declare-fun b!2125812 () Bool)

(declare-fun inv!31372 (Conc!7815) Bool)

(assert (=> b!2125812 (= e!1354819 (inv!31372 (c!339969 input!5507)))))

(assert (= (and d!643958 c!339972) b!2125810))

(assert (= (and d!643958 (not c!339972)) b!2125811))

(assert (= (and b!2125811 (not res!919801)) b!2125812))

(declare-fun m!2577884 () Bool)

(assert (=> b!2125810 m!2577884))

(declare-fun m!2577886 () Bool)

(assert (=> b!2125812 m!2577886))

(assert (=> b!2125743 d!643958))

(declare-fun d!643960 () Bool)

(declare-fun isBalanced!2453 (Conc!7815) Bool)

(assert (=> d!643960 (= (inv!31368 (totalInput!2936 cacheFurthestNullable!130)) (isBalanced!2453 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))))

(declare-fun bs!443520 () Bool)

(assert (= bs!443520 d!643960))

(declare-fun m!2577888 () Bool)

(assert (=> bs!443520 m!2577888))

(assert (=> b!2125734 d!643960))

(declare-fun d!643962 () Bool)

(declare-fun validCacheMapFurthestNullable!99 (MutableMap!2396 BalanceConc!15392) Bool)

(assert (=> d!643962 (= (valid!1951 cacheFurthestNullable!130) (validCacheMapFurthestNullable!99 (cache!2777 cacheFurthestNullable!130) (totalInput!2936 cacheFurthestNullable!130)))))

(declare-fun bs!443521 () Bool)

(assert (= bs!443521 d!643962))

(declare-fun m!2577890 () Bool)

(assert (=> bs!443521 m!2577890))

(assert (=> b!2125742 d!643962))

(declare-fun d!643964 () Bool)

(assert (=> d!643964 (= (array_inv!2700 (_keys!2779 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))) (bvsge (size!18582 (_keys!2779 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2125751 d!643964))

(declare-fun d!643966 () Bool)

(assert (=> d!643966 (= (array_inv!2703 (_values!2762 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))) (bvsge (size!18585 (_values!2762 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2125751 d!643966))

(declare-fun d!643968 () Bool)

(declare-fun e!1354822 () Bool)

(assert (=> d!643968 e!1354822))

(declare-fun res!919804 () Bool)

(assert (=> d!643968 (=> res!919804 e!1354822)))

(declare-fun lt!795686 () Bool)

(assert (=> d!643968 (= res!919804 (not lt!795686))))

(declare-fun drop!1188 (List!23855 Int) List!23855)

(declare-fun size!18587 (List!23855) Int)

(assert (=> d!643968 (= lt!795686 (= lt!795675 (drop!1188 (list!9539 totalInput!886) (- (size!18587 (list!9539 totalInput!886)) (size!18587 lt!795675)))))))

(assert (=> d!643968 (= (isSuffix!624 lt!795675 (list!9539 totalInput!886)) lt!795686)))

(declare-fun b!2125815 () Bool)

(assert (=> b!2125815 (= e!1354822 (>= (size!18587 (list!9539 totalInput!886)) (size!18587 lt!795675)))))

(assert (= (and d!643968 (not res!919804)) b!2125815))

(assert (=> d!643968 m!2577830))

(declare-fun m!2577892 () Bool)

(assert (=> d!643968 m!2577892))

(declare-fun m!2577894 () Bool)

(assert (=> d!643968 m!2577894))

(assert (=> d!643968 m!2577830))

(declare-fun m!2577896 () Bool)

(assert (=> d!643968 m!2577896))

(assert (=> b!2125815 m!2577830))

(assert (=> b!2125815 m!2577892))

(assert (=> b!2125815 m!2577894))

(assert (=> start!207330 d!643968))

(declare-fun d!643970 () Bool)

(declare-fun list!9540 (Conc!7815) List!23855)

(assert (=> d!643970 (= (list!9539 input!5507) (list!9540 (c!339969 input!5507)))))

(declare-fun bs!443522 () Bool)

(assert (= bs!443522 d!643970))

(declare-fun m!2577898 () Bool)

(assert (=> bs!443522 m!2577898))

(assert (=> start!207330 d!643970))

(declare-fun d!643972 () Bool)

(assert (=> d!643972 (= (inv!31368 totalInput!886) (isBalanced!2453 (c!339969 totalInput!886)))))

(declare-fun bs!443523 () Bool)

(assert (= bs!443523 d!643972))

(declare-fun m!2577900 () Bool)

(assert (=> bs!443523 m!2577900))

(assert (=> start!207330 d!643972))

(declare-fun d!643974 () Bool)

(assert (=> d!643974 (= (inv!31368 input!5507) (isBalanced!2453 (c!339969 input!5507)))))

(declare-fun bs!443524 () Bool)

(assert (= bs!443524 d!643974))

(declare-fun m!2577902 () Bool)

(assert (=> bs!443524 m!2577902))

(assert (=> start!207330 d!643974))

(declare-fun d!643976 () Bool)

(assert (=> d!643976 (= (list!9539 totalInput!886) (list!9540 (c!339969 totalInput!886)))))

(declare-fun bs!443525 () Bool)

(assert (= bs!443525 d!643976))

(declare-fun m!2577904 () Bool)

(assert (=> bs!443525 m!2577904))

(assert (=> start!207330 d!643976))

(declare-fun d!643978 () Bool)

(declare-fun res!919807 () Bool)

(declare-fun e!1354825 () Bool)

(assert (=> d!643978 (=> (not res!919807) (not e!1354825))))

(assert (=> d!643978 (= res!919807 ((_ is HashMap!2394) (cache!2775 cacheUp!991)))))

(assert (=> d!643978 (= (inv!31370 cacheUp!991) e!1354825)))

(declare-fun b!2125818 () Bool)

(declare-fun validCacheMapUp!249 (MutableMap!2394) Bool)

(assert (=> b!2125818 (= e!1354825 (validCacheMapUp!249 (cache!2775 cacheUp!991)))))

(assert (= (and d!643978 res!919807) b!2125818))

(declare-fun m!2577906 () Bool)

(assert (=> b!2125818 m!2577906))

(assert (=> start!207330 d!643978))

(declare-fun d!643980 () Bool)

(declare-fun res!919810 () Bool)

(declare-fun e!1354828 () Bool)

(assert (=> d!643980 (=> (not res!919810) (not e!1354828))))

(assert (=> d!643980 (= res!919810 ((_ is HashMap!2395) (cache!2776 cacheDown!1110)))))

(assert (=> d!643980 (= (inv!31369 cacheDown!1110) e!1354828)))

(declare-fun b!2125821 () Bool)

(declare-fun validCacheMapDown!247 (MutableMap!2395) Bool)

(assert (=> b!2125821 (= e!1354828 (validCacheMapDown!247 (cache!2776 cacheDown!1110)))))

(assert (= (and d!643980 res!919810) b!2125821))

(declare-fun m!2577908 () Bool)

(assert (=> b!2125821 m!2577908))

(assert (=> start!207330 d!643980))

(declare-fun d!643982 () Bool)

(declare-fun res!919813 () Bool)

(declare-fun e!1354831 () Bool)

(assert (=> d!643982 (=> (not res!919813) (not e!1354831))))

(assert (=> d!643982 (= res!919813 ((_ is HashMap!2396) (cache!2777 cacheFurthestNullable!130)))))

(assert (=> d!643982 (= (inv!31367 cacheFurthestNullable!130) e!1354831)))

(declare-fun b!2125824 () Bool)

(assert (=> b!2125824 (= e!1354831 (validCacheMapFurthestNullable!99 (cache!2777 cacheFurthestNullable!130) (totalInput!2936 cacheFurthestNullable!130)))))

(assert (= (and d!643982 res!919813) b!2125824))

(assert (=> b!2125824 m!2577890))

(assert (=> start!207330 d!643982))

(declare-fun d!643984 () Bool)

(declare-fun lambda!78830 () Int)

(declare-fun forall!4879 (List!23852 Int) Bool)

(assert (=> d!643984 (= (inv!31365 setElem!15342) (forall!4879 (exprs!1747 setElem!15342) lambda!78830))))

(declare-fun bs!443526 () Bool)

(assert (= bs!443526 d!643984))

(declare-fun m!2577910 () Bool)

(assert (=> bs!443526 m!2577910))

(assert (=> setNonEmpty!15342 d!643984))

(declare-fun d!643986 () Bool)

(assert (=> d!643986 (= (array_inv!2700 (_keys!2777 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))) (bvsge (size!18582 (_keys!2777 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2125727 d!643986))

(declare-fun d!643988 () Bool)

(assert (=> d!643988 (= (array_inv!2701 (_values!2760 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))) (bvsge (size!18583 (_values!2760 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2125727 d!643988))

(declare-fun d!643990 () Bool)

(declare-fun res!919818 () Bool)

(declare-fun e!1354836 () Bool)

(assert (=> d!643990 (=> res!919818 e!1354836)))

(assert (=> d!643990 (= res!919818 ((_ is Nil!23772) (_2!13668 (_1!13669 lt!795672))))))

(assert (=> d!643990 (= (forall!4878 (_2!13668 (_1!13669 lt!795672)) lambda!78827) e!1354836)))

(declare-fun b!2125829 () Bool)

(declare-fun e!1354837 () Bool)

(assert (=> b!2125829 (= e!1354836 e!1354837)))

(declare-fun res!919819 () Bool)

(assert (=> b!2125829 (=> (not res!919819) (not e!1354837))))

(declare-fun dynLambda!11363 (Int StackFrame!66) Bool)

(assert (=> b!2125829 (= res!919819 (dynLambda!11363 lambda!78827 (h!29173 (_2!13668 (_1!13669 lt!795672)))))))

(declare-fun b!2125830 () Bool)

(assert (=> b!2125830 (= e!1354837 (forall!4878 (t!196380 (_2!13668 (_1!13669 lt!795672))) lambda!78827))))

(assert (= (and d!643990 (not res!919818)) b!2125829))

(assert (= (and b!2125829 res!919819) b!2125830))

(declare-fun b_lambda!70529 () Bool)

(assert (=> (not b_lambda!70529) (not b!2125829)))

(declare-fun m!2577912 () Bool)

(assert (=> b!2125829 m!2577912))

(declare-fun m!2577914 () Bool)

(assert (=> b!2125830 m!2577914))

(assert (=> b!2125730 d!643990))

(declare-fun d!643992 () Bool)

(assert (=> d!643992 (= (valid!1950 cacheUp!991) (validCacheMapUp!249 (cache!2775 cacheUp!991)))))

(declare-fun bs!443527 () Bool)

(assert (= bs!443527 d!643992))

(assert (=> bs!443527 m!2577906))

(assert (=> b!2125735 d!643992))

(declare-fun d!643994 () Bool)

(declare-fun c!339973 () Bool)

(assert (=> d!643994 (= c!339973 ((_ is Node!7815) (c!339969 (totalInput!2936 cacheFurthestNullable!130))))))

(declare-fun e!1354838 () Bool)

(assert (=> d!643994 (= (inv!31366 (c!339969 (totalInput!2936 cacheFurthestNullable!130))) e!1354838)))

(declare-fun b!2125831 () Bool)

(assert (=> b!2125831 (= e!1354838 (inv!31371 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))))

(declare-fun b!2125832 () Bool)

(declare-fun e!1354839 () Bool)

(assert (=> b!2125832 (= e!1354838 e!1354839)))

(declare-fun res!919820 () Bool)

(assert (=> b!2125832 (= res!919820 (not ((_ is Leaf!11421) (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))

(assert (=> b!2125832 (=> res!919820 e!1354839)))

(declare-fun b!2125833 () Bool)

(assert (=> b!2125833 (= e!1354839 (inv!31372 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))))

(assert (= (and d!643994 c!339973) b!2125831))

(assert (= (and d!643994 (not c!339973)) b!2125832))

(assert (= (and b!2125832 (not res!919820)) b!2125833))

(declare-fun m!2577916 () Bool)

(assert (=> b!2125831 m!2577916))

(declare-fun m!2577918 () Bool)

(assert (=> b!2125833 m!2577918))

(assert (=> b!2125718 d!643994))

(declare-fun d!643996 () Bool)

(declare-fun c!339974 () Bool)

(assert (=> d!643996 (= c!339974 ((_ is Node!7815) (c!339969 totalInput!886)))))

(declare-fun e!1354840 () Bool)

(assert (=> d!643996 (= (inv!31366 (c!339969 totalInput!886)) e!1354840)))

(declare-fun b!2125834 () Bool)

(assert (=> b!2125834 (= e!1354840 (inv!31371 (c!339969 totalInput!886)))))

(declare-fun b!2125835 () Bool)

(declare-fun e!1354841 () Bool)

(assert (=> b!2125835 (= e!1354840 e!1354841)))

(declare-fun res!919821 () Bool)

(assert (=> b!2125835 (= res!919821 (not ((_ is Leaf!11421) (c!339969 totalInput!886))))))

(assert (=> b!2125835 (=> res!919821 e!1354841)))

(declare-fun b!2125836 () Bool)

(assert (=> b!2125836 (= e!1354841 (inv!31372 (c!339969 totalInput!886)))))

(assert (= (and d!643996 c!339974) b!2125834))

(assert (= (and d!643996 (not c!339974)) b!2125835))

(assert (= (and b!2125835 (not res!919821)) b!2125836))

(declare-fun m!2577920 () Bool)

(assert (=> b!2125834 m!2577920))

(declare-fun m!2577922 () Bool)

(assert (=> b!2125836 m!2577922))

(assert (=> b!2125748 d!643996))

(declare-fun d!643998 () Bool)

(assert (=> d!643998 (= (array_inv!2700 (_keys!2778 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))) (bvsge (size!18582 (_keys!2778 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2125738 d!643998))

(declare-fun d!644000 () Bool)

(assert (=> d!644000 (= (array_inv!2702 (_values!2761 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))) (bvsge (size!18584 (_values!2761 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2125738 d!644000))

(declare-fun d!644002 () Bool)

(assert (=> d!644002 (= (valid!1949 cacheDown!1110) (validCacheMapDown!247 (cache!2776 cacheDown!1110)))))

(declare-fun bs!443528 () Bool)

(assert (= bs!443528 d!644002))

(assert (=> bs!443528 m!2577908))

(assert (=> b!2125725 d!644002))

(declare-fun d!644004 () Bool)

(declare-fun e!1354844 () Bool)

(assert (=> d!644004 e!1354844))

(declare-fun res!919826 () Bool)

(assert (=> d!644004 (=> (not res!919826) (not e!1354844))))

(declare-fun lt!795692 () tuple2!23428)

(assert (=> d!644004 (= res!919826 (isBalanced!2453 (c!339969 (_1!13672 lt!795692))))))

(declare-datatypes ((tuple2!23432 0))(
  ( (tuple2!23433 (_1!13674 Conc!7815) (_2!13674 Conc!7815)) )
))
(declare-fun lt!795691 () tuple2!23432)

(assert (=> d!644004 (= lt!795692 (tuple2!23429 (BalanceConc!15393 (_1!13674 lt!795691)) (BalanceConc!15393 (_2!13674 lt!795691))))))

(declare-fun splitAt!18 (Conc!7815 Int) tuple2!23432)

(assert (=> d!644004 (= lt!795691 (splitAt!18 (c!339969 input!5507) (ite c!339966 0 lt!795676)))))

(assert (=> d!644004 (isBalanced!2453 (c!339969 input!5507))))

(assert (=> d!644004 (= (splitAt!17 input!5507 (ite c!339966 0 lt!795676)) lt!795692)))

(declare-fun b!2125841 () Bool)

(declare-fun res!919827 () Bool)

(assert (=> b!2125841 (=> (not res!919827) (not e!1354844))))

(assert (=> b!2125841 (= res!919827 (isBalanced!2453 (c!339969 (_2!13672 lt!795692))))))

(declare-fun b!2125842 () Bool)

(declare-datatypes ((tuple2!23434 0))(
  ( (tuple2!23435 (_1!13675 List!23855) (_2!13675 List!23855)) )
))
(declare-fun splitAtIndex!22 (List!23855 Int) tuple2!23434)

(assert (=> b!2125842 (= e!1354844 (= (tuple2!23435 (list!9539 (_1!13672 lt!795692)) (list!9539 (_2!13672 lt!795692))) (splitAtIndex!22 (list!9539 input!5507) (ite c!339966 0 lt!795676))))))

(assert (= (and d!644004 res!919826) b!2125841))

(assert (= (and b!2125841 res!919827) b!2125842))

(declare-fun m!2577924 () Bool)

(assert (=> d!644004 m!2577924))

(declare-fun m!2577926 () Bool)

(assert (=> d!644004 m!2577926))

(assert (=> d!644004 m!2577902))

(declare-fun m!2577928 () Bool)

(assert (=> b!2125841 m!2577928))

(declare-fun m!2577930 () Bool)

(assert (=> b!2125842 m!2577930))

(declare-fun m!2577932 () Bool)

(assert (=> b!2125842 m!2577932))

(assert (=> b!2125842 m!2577838))

(assert (=> b!2125842 m!2577838))

(declare-fun m!2577934 () Bool)

(assert (=> b!2125842 m!2577934))

(assert (=> bm!128739 d!644004))

(declare-fun d!644006 () Bool)

(declare-fun lambda!78833 () Int)

(declare-fun exists!698 ((InoxSet Context!2494) Int) Bool)

(assert (=> d!644006 (= (nullableZipper!70 z!3883) (exists!698 z!3883 lambda!78833))))

(declare-fun bs!443529 () Bool)

(assert (= bs!443529 d!644006))

(declare-fun m!2577936 () Bool)

(assert (=> bs!443529 m!2577936))

(assert (=> b!2125723 d!644006))

(declare-fun b!2125853 () Bool)

(declare-fun e!1354851 () tuple2!23430)

(declare-fun Unit!37636 () Unit!37634)

(assert (=> b!2125853 (= e!1354851 (tuple2!23431 Unit!37636 cacheFurthestNullable!130))))

(declare-fun b!2125854 () Bool)

(declare-fun e!1354852 () tuple2!23430)

(declare-fun Unit!37637 () Unit!37634)

(assert (=> b!2125854 (= e!1354852 (tuple2!23431 Unit!37637 cacheFurthestNullable!130))))

(declare-fun b!2125855 () Bool)

(declare-fun lt!795701 () tuple2!23430)

(assert (=> b!2125855 (= e!1354852 (tuple2!23431 (_1!13673 lt!795701) (_2!13673 lt!795701)))))

(declare-fun c!339982 () Bool)

(assert (=> b!2125855 (= c!339982 (and (> lt!795670 1048576) (not (= (- 0 (* 10 (ite (>= 0 0) (div 0 10) (- (div (- 0) 10))))) 0))))))

(assert (=> b!2125855 (= lt!795701 (fillUpCache!10 (t!196380 (_2!13668 (_1!13669 lt!795672))) totalInput!886 lt!795670 (_1!13668 (_1!13669 lt!795672)) (+ 0 1) (_2!13673 e!1354851)))))

(declare-fun b!2125856 () Bool)

(declare-fun e!1354853 () Bool)

(declare-fun lt!795704 () tuple2!23430)

(assert (=> b!2125856 (= e!1354853 (= (totalInput!2936 (_2!13673 lt!795704)) totalInput!886))))

(declare-fun d!644008 () Bool)

(assert (=> d!644008 e!1354853))

(declare-fun res!919831 () Bool)

(assert (=> d!644008 (=> (not res!919831) (not e!1354853))))

(assert (=> d!644008 (= res!919831 (valid!1951 (_2!13673 lt!795704)))))

(assert (=> d!644008 (= lt!795704 e!1354852)))

(declare-fun c!339981 () Bool)

(assert (=> d!644008 (= c!339981 ((_ is Nil!23772) (_2!13668 (_1!13669 lt!795672))))))

(assert (=> d!644008 (valid!1951 cacheFurthestNullable!130)))

(assert (=> d!644008 (= (fillUpCache!10 (_2!13668 (_1!13669 lt!795672)) totalInput!886 lt!795670 (_1!13668 (_1!13669 lt!795672)) 0 cacheFurthestNullable!130) lt!795704)))

(declare-fun b!2125857 () Bool)

(declare-fun lt!795702 () tuple2!23430)

(declare-fun update!89 (CacheFurthestNullable!602 (InoxSet Context!2494) Int Int Int BalanceConc!15392) tuple2!23430)

(assert (=> b!2125857 (= lt!795702 (update!89 cacheFurthestNullable!130 (z!5752 (h!29173 (_2!13668 (_1!13669 lt!795672)))) (from!2642 (h!29173 (_2!13668 (_1!13669 lt!795672)))) (lastNullablePos!329 (h!29173 (_2!13668 (_1!13669 lt!795672)))) (_1!13668 (_1!13669 lt!795672)) totalInput!886))))

(declare-fun lt!795703 () Unit!37634)

(declare-fun lemmaInvariant!383 (CacheFurthestNullable!602) Unit!37634)

(assert (=> b!2125857 (= lt!795703 (lemmaInvariant!383 cacheFurthestNullable!130))))

(assert (=> b!2125857 (= e!1354851 (tuple2!23431 (_1!13673 lt!795702) (_2!13673 lt!795702)))))

(assert (= (and d!644008 c!339981) b!2125854))

(assert (= (and d!644008 (not c!339981)) b!2125855))

(assert (= (and b!2125855 c!339982) b!2125853))

(assert (= (and b!2125855 (not c!339982)) b!2125857))

(assert (= (and d!644008 res!919831) b!2125856))

(declare-fun m!2577938 () Bool)

(assert (=> b!2125855 m!2577938))

(declare-fun m!2577940 () Bool)

(assert (=> d!644008 m!2577940))

(assert (=> d!644008 m!2577822))

(declare-fun m!2577942 () Bool)

(assert (=> b!2125857 m!2577942))

(declare-fun m!2577944 () Bool)

(assert (=> b!2125857 m!2577944))

(assert (=> b!2125723 d!644008))

(declare-fun bs!443530 () Bool)

(declare-fun d!644010 () Bool)

(assert (= bs!443530 (and d!644010 b!2125723)))

(declare-fun lt!795736 () Int)

(declare-fun lambda!78848 () Int)

(assert (=> bs!443530 (= (= lt!795736 (_1!13668 (_1!13669 lt!795672))) (= lambda!78848 lambda!78826))))

(declare-fun bs!443531 () Bool)

(assert (= bs!443531 (and d!644010 b!2125730)))

(assert (=> bs!443531 (not (= lambda!78848 lambda!78827))))

(assert (=> d!644010 true))

(declare-fun bs!443532 () Bool)

(declare-fun b!2125889 () Bool)

(assert (= bs!443532 (and b!2125889 b!2125723)))

(declare-fun lambda!78849 () Int)

(assert (=> bs!443532 (= (= e!1354761 (_1!13668 (_1!13669 lt!795672))) (= lambda!78849 lambda!78826))))

(declare-fun bs!443533 () Bool)

(assert (= bs!443533 (and b!2125889 b!2125730)))

(assert (=> bs!443533 (not (= lambda!78849 lambda!78827))))

(declare-fun bs!443534 () Bool)

(assert (= bs!443534 (and b!2125889 d!644010)))

(assert (=> bs!443534 (= (= e!1354761 lt!795736) (= lambda!78849 lambda!78848))))

(assert (=> b!2125889 true))

(declare-fun bs!443535 () Bool)

(declare-fun b!2125892 () Bool)

(assert (= bs!443535 (and b!2125892 b!2125723)))

(declare-fun lt!795744 () Int)

(declare-fun lambda!78850 () Int)

(assert (=> bs!443535 (= (= lt!795744 (_1!13668 (_1!13669 lt!795672))) (= lambda!78850 lambda!78826))))

(declare-fun bs!443536 () Bool)

(assert (= bs!443536 (and b!2125892 b!2125730)))

(assert (=> bs!443536 (not (= lambda!78850 lambda!78827))))

(declare-fun bs!443537 () Bool)

(assert (= bs!443537 (and b!2125892 d!644010)))

(assert (=> bs!443537 (= (= lt!795744 lt!795736) (= lambda!78850 lambda!78848))))

(declare-fun bs!443538 () Bool)

(assert (= bs!443538 (and b!2125892 b!2125889)))

(assert (=> bs!443538 (= (= lt!795744 e!1354761) (= lambda!78850 lambda!78849))))

(assert (=> b!2125892 true))

(declare-fun bs!443539 () Bool)

(declare-fun b!2125894 () Bool)

(assert (= bs!443539 (and b!2125894 b!2125889)))

(declare-fun lt!795733 () tuple3!2972)

(declare-fun lambda!78851 () Int)

(assert (=> bs!443539 (= (= (_1!13668 (_1!13669 lt!795733)) e!1354761) (= lambda!78851 lambda!78849))))

(declare-fun bs!443540 () Bool)

(assert (= bs!443540 (and b!2125894 b!2125723)))

(assert (=> bs!443540 (= (= (_1!13668 (_1!13669 lt!795733)) (_1!13668 (_1!13669 lt!795672))) (= lambda!78851 lambda!78826))))

(declare-fun bs!443541 () Bool)

(assert (= bs!443541 (and b!2125894 d!644010)))

(assert (=> bs!443541 (= (= (_1!13668 (_1!13669 lt!795733)) lt!795736) (= lambda!78851 lambda!78848))))

(declare-fun bs!443542 () Bool)

(assert (= bs!443542 (and b!2125894 b!2125730)))

(assert (=> bs!443542 (not (= lambda!78851 lambda!78827))))

(declare-fun bs!443543 () Bool)

(assert (= bs!443543 (and b!2125894 b!2125892)))

(assert (=> bs!443543 (= (= (_1!13668 (_1!13669 lt!795733)) lt!795744) (= lambda!78851 lambda!78850))))

(declare-fun b!2125899 () Bool)

(declare-fun e!1354882 () Bool)

(declare-fun e!1354873 () Bool)

(assert (=> b!2125899 (= e!1354882 e!1354873)))

(declare-fun mapIsEmpty!12164 () Bool)

(declare-fun mapRes!12164 () Bool)

(assert (=> mapIsEmpty!12164 mapRes!12164))

(declare-fun setNonEmpty!15346 () Bool)

(declare-fun setRes!15346 () Bool)

(assert (=> setNonEmpty!15346 (= setRes!15346 true)))

(declare-fun setElem!15346 () Context!2494)

(declare-fun setRest!15346 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15346 (= (z!5752 (h!29173 (_2!13668 (_1!13669 lt!795733)))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15346 true) setRest!15346))))

(declare-fun mapNonEmpty!12164 () Bool)

(assert (=> mapNonEmpty!12164 (= mapRes!12164 true)))

(declare-fun mapValue!12165 () List!23853)

(declare-fun mapKey!12164 () (_ BitVec 32))

(declare-fun mapRest!12164 () (Array (_ BitVec 32) List!23853))

(assert (=> mapNonEmpty!12164 (= (arr!3780 (_values!2761 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795733)))))))) (store mapRest!12164 mapKey!12164 mapValue!12165))))

(declare-fun b!2125900 () Bool)

(declare-fun e!1354874 () Bool)

(declare-fun e!1354870 () Bool)

(assert (=> b!2125900 (= e!1354874 e!1354870)))

(declare-fun b!2125901 () Bool)

(declare-fun e!1354872 () Bool)

(declare-fun e!1354878 () Bool)

(assert (=> b!2125901 (= e!1354872 e!1354878)))

(declare-fun b!2125902 () Bool)

(declare-fun e!1354883 () Bool)

(declare-fun e!1354869 () Bool)

(assert (=> b!2125902 (= e!1354883 e!1354869)))

(declare-fun mapNonEmpty!12165 () Bool)

(declare-fun mapRes!12165 () Bool)

(assert (=> mapNonEmpty!12165 (= mapRes!12165 true)))

(declare-fun mapValue!12164 () List!23854)

(declare-fun mapKey!12165 () (_ BitVec 32))

(declare-fun mapRest!12165 () (Array (_ BitVec 32) List!23854))

(assert (=> mapNonEmpty!12165 (= (arr!3779 (_values!2760 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795733)))))))) (store mapRest!12165 mapKey!12165 mapValue!12164))))

(declare-fun b!2125904 () Bool)

(declare-fun e!1354880 () Bool)

(assert (=> b!2125904 (= e!1354880 e!1354882)))

(declare-fun b!2125905 () Bool)

(declare-fun e!1354879 () Bool)

(declare-fun e!1354871 () Bool)

(assert (=> b!2125905 (= e!1354879 e!1354871)))

(declare-fun b!2125906 () Bool)

(declare-fun e!1354881 () Bool)

(assert (=> b!2125906 (= e!1354881 e!1354872)))

(declare-fun b!2125907 () Bool)

(assert (=> b!2125907 (= e!1354869 e!1354874)))

(declare-fun b!2125908 () Bool)

(declare-fun e!1354875 () Bool)

(assert (=> b!2125908 (= e!1354875 setRes!15346)))

(declare-fun condSetEmpty!15346 () Bool)

(assert (=> b!2125908 (= condSetEmpty!15346 (= (z!5752 (h!29173 (_2!13668 (_1!13669 lt!795733)))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun b!2125909 () Bool)

(assert (=> b!2125909 (= e!1354871 mapRes!12164)))

(declare-fun condMapEmpty!12165 () Bool)

(declare-fun mapDefault!12164 () List!23853)

(assert (=> b!2125909 (= condMapEmpty!12165 (= (arr!3780 (_values!2761 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795733)))))))) ((as const (Array (_ BitVec 32) List!23853)) mapDefault!12164)))))

(declare-fun mapIsEmpty!12165 () Bool)

(assert (=> mapIsEmpty!12165 mapRes!12165))

(declare-fun b!2125910 () Bool)

(declare-fun e!1354877 () Bool)

(assert (=> b!2125910 (= e!1354877 e!1354879)))

(declare-fun b!2125911 () Bool)

(assert (=> b!2125911 (= e!1354870 mapRes!12165)))

(declare-fun condMapEmpty!12164 () Bool)

(declare-fun mapDefault!12165 () List!23854)

(assert (=> b!2125911 (= condMapEmpty!12164 (= (arr!3779 (_values!2760 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795733)))))))) ((as const (Array (_ BitVec 32) List!23854)) mapDefault!12165)))))

(declare-fun b!2125912 () Bool)

(declare-fun e!1354876 () Bool)

(declare-fun lt!795748 () MutLongMap!2481)

(assert (=> b!2125912 (= e!1354878 (and e!1354876 ((_ is LongMap!2481) lt!795748)))))

(assert (=> b!2125912 (= lt!795748 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795733)))))))

(declare-fun b!2125913 () Bool)

(assert (=> b!2125913 (= e!1354876 e!1354877)))

(declare-fun b!2125903 () Bool)

(declare-fun lt!795747 () MutLongMap!2480)

(assert (=> b!2125903 (= e!1354873 (and e!1354883 ((_ is LongMap!2480) lt!795747)))))

(assert (=> b!2125903 (= lt!795747 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795733)))))))

(declare-fun e!1354884 () Bool)

(assert (=> b!2125894 (and e!1354884 e!1354881 e!1354880)))

(declare-fun b!2125914 () Bool)

(assert (=> b!2125914 (= e!1354884 e!1354875)))

(declare-fun setIsEmpty!15346 () Bool)

(assert (=> setIsEmpty!15346 setRes!15346))

(assert (= (and b!2125908 condSetEmpty!15346) setIsEmpty!15346))

(assert (= (and b!2125908 (not condSetEmpty!15346)) setNonEmpty!15346))

(assert (= b!2125914 b!2125908))

(assert (= (and b!2125894 ((_ is Cons!23772) (_2!13668 (_1!13669 lt!795733)))) b!2125914))

(assert (= (and b!2125909 condMapEmpty!12165) mapIsEmpty!12164))

(assert (= (and b!2125909 (not condMapEmpty!12165)) mapNonEmpty!12164))

(assert (= b!2125905 b!2125909))

(assert (= b!2125910 b!2125905))

(assert (= b!2125913 b!2125910))

(assert (= (and b!2125912 ((_ is LongMap!2481) (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795733)))))) b!2125913))

(assert (= b!2125901 b!2125912))

(assert (= (and b!2125906 ((_ is HashMap!2394) (cache!2775 (_2!13669 lt!795733)))) b!2125901))

(assert (= b!2125894 b!2125906))

(assert (= (and b!2125911 condMapEmpty!12164) mapIsEmpty!12165))

(assert (= (and b!2125911 (not condMapEmpty!12164)) mapNonEmpty!12165))

(assert (= b!2125900 b!2125911))

(assert (= b!2125907 b!2125900))

(assert (= b!2125902 b!2125907))

(assert (= (and b!2125903 ((_ is LongMap!2480) (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795733)))))) b!2125902))

(assert (= b!2125899 b!2125903))

(assert (= (and b!2125904 ((_ is HashMap!2395) (cache!2776 (_3!1956 lt!795733)))) b!2125899))

(assert (= b!2125894 b!2125904))

(assert (=> b!2125901 (< (dynLambda!11358 order!14769 (defaultValue!2556 (cache!2775 (_2!13669 lt!795733)))) (dynLambda!11359 order!14771 lambda!78851))))

(assert (=> b!2125900 (< (dynLambda!11360 order!14773 (defaultEntry!2845 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795733)))))))) (dynLambda!11359 order!14771 lambda!78851))))

(assert (=> b!2125905 (< (dynLambda!11361 order!14775 (defaultEntry!2846 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795733)))))))) (dynLambda!11359 order!14771 lambda!78851))))

(assert (=> b!2125899 (< (dynLambda!11362 order!14777 (defaultValue!2557 (cache!2776 (_3!1956 lt!795733)))) (dynLambda!11359 order!14771 lambda!78851))))

(declare-fun m!2577946 () Bool)

(assert (=> mapNonEmpty!12164 m!2577946))

(declare-fun m!2577948 () Bool)

(assert (=> mapNonEmpty!12165 m!2577948))

(declare-fun bs!443544 () Bool)

(declare-fun b!2125896 () Bool)

(assert (= bs!443544 (and b!2125896 b!2125889)))

(declare-fun lambda!78852 () Int)

(assert (=> bs!443544 (not (= lambda!78852 lambda!78849))))

(declare-fun bs!443545 () Bool)

(assert (= bs!443545 (and b!2125896 b!2125723)))

(assert (=> bs!443545 (not (= lambda!78852 lambda!78826))))

(declare-fun bs!443546 () Bool)

(assert (= bs!443546 (and b!2125896 d!644010)))

(assert (=> bs!443546 (not (= lambda!78852 lambda!78848))))

(declare-fun bs!443547 () Bool)

(assert (= bs!443547 (and b!2125896 b!2125730)))

(assert (=> bs!443547 (= lambda!78852 lambda!78827)))

(declare-fun bs!443548 () Bool)

(assert (= bs!443548 (and b!2125896 b!2125892)))

(assert (=> bs!443548 (not (= lambda!78852 lambda!78850))))

(declare-fun bs!443549 () Bool)

(assert (= bs!443549 (and b!2125896 b!2125894)))

(assert (=> bs!443549 (not (= lambda!78852 lambda!78851))))

(assert (=> b!2125896 true))

(declare-fun b!2125884 () Bool)

(declare-fun e!1354868 () Int)

(assert (=> b!2125884 (= e!1354868 lt!795671)))

(declare-fun b!2125885 () Bool)

(assert (=> b!2125885 (= e!1354868 e!1354761)))

(declare-fun e!1354864 () Bool)

(assert (=> d!644010 e!1354864))

(declare-fun res!919846 () Bool)

(assert (=> d!644010 (=> (not res!919846) (not e!1354864))))

(declare-fun furthestNullablePosition!14 ((InoxSet Context!2494) Int BalanceConc!15392 Int Int) Int)

(assert (=> d!644010 (= res!919846 (= (_1!13668 (_1!13669 lt!795733)) (furthestNullablePosition!14 z!3883 lt!795671 totalInput!886 lt!795670 e!1354761)))))

(declare-fun e!1354865 () tuple3!2972)

(assert (=> d!644010 (= lt!795733 e!1354865)))

(declare-fun c!339991 () Bool)

(declare-datatypes ((Option!4874 0))(
  ( (None!4873) (Some!4873 (v!28304 Int)) )
))
(declare-fun lt!795745 () Option!4874)

(assert (=> d!644010 (= c!339991 ((_ is Some!4873) lt!795745))))

(declare-fun get!7322 (CacheFurthestNullable!602 (InoxSet Context!2494) Int Int) Option!4874)

(assert (=> d!644010 (= lt!795745 (get!7322 cacheFurthestNullable!130 z!3883 lt!795671 e!1354761))))

(declare-fun lt!795737 () Unit!37634)

(declare-fun Unit!37638 () Unit!37634)

(assert (=> d!644010 (= lt!795737 Unit!37638)))

(assert (=> d!644010 (forall!4878 Nil!23772 lambda!78848)))

(assert (=> d!644010 (= lt!795736 (furthestNullablePosition!14 z!3883 lt!795671 totalInput!886 (size!18586 totalInput!886) e!1354761))))

(assert (=> d!644010 (and (>= lt!795671 0) (<= lt!795671 lt!795670))))

(assert (=> d!644010 (= (furthestNullablePositionStackMem!15 z!3883 lt!795671 totalInput!886 lt!795670 e!1354761 Nil!23772 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130) lt!795733)))

(declare-fun b!2125886 () Bool)

(declare-fun res!919852 () Bool)

(assert (=> b!2125886 (=> (not res!919852) (not e!1354864))))

(assert (=> b!2125886 (= res!919852 (valid!1949 (_3!1956 lt!795733)))))

(declare-fun c!339990 () Bool)

(declare-fun call!128751 () Bool)

(declare-fun bm!128746 () Bool)

(assert (=> bm!128746 (= call!128751 (forall!4878 Nil!23772 (ite c!339990 lambda!78848 lambda!78850)))))

(declare-fun call!128752 () Bool)

(declare-fun bm!128747 () Bool)

(assert (=> bm!128747 (= call!128752 (forall!4878 Nil!23772 (ite c!339990 lambda!78849 lambda!78848)))))

(declare-fun b!2125887 () Bool)

(declare-fun res!919850 () Bool)

(assert (=> b!2125887 (=> (not res!919850) (not e!1354864))))

(assert (=> b!2125887 (= res!919850 (valid!1950 (_2!13669 lt!795733)))))

(declare-fun b!2125888 () Bool)

(declare-fun e!1354867 () tuple3!2972)

(assert (=> b!2125888 (= e!1354865 e!1354867)))

(declare-fun res!919851 () Bool)

(assert (=> b!2125888 (= res!919851 (= lt!795671 lt!795670))))

(declare-fun e!1354866 () Bool)

(assert (=> b!2125888 (=> res!919851 e!1354866)))

(assert (=> b!2125888 (= c!339990 e!1354866)))

(declare-fun lt!795734 () Unit!37634)

(declare-fun lt!795738 () Unit!37634)

(assert (=> b!2125889 (= lt!795734 lt!795738)))

(assert (=> b!2125889 call!128752))

(declare-fun call!128753 () Unit!37634)

(assert (=> b!2125889 (= lt!795738 call!128753)))

(declare-fun lt!795742 () Unit!37634)

(declare-fun Unit!37639 () Unit!37634)

(assert (=> b!2125889 (= lt!795742 Unit!37639)))

(assert (=> b!2125889 call!128751))

(assert (=> b!2125889 (= e!1354867 (tuple3!2973 (tuple2!23425 e!1354761 Nil!23772) cacheUp!991 cacheDown!1110))))

(declare-fun b!2125890 () Bool)

(declare-fun lostCauseZipper!61 ((InoxSet Context!2494)) Bool)

(assert (=> b!2125890 (= e!1354866 (lostCauseZipper!61 z!3883))))

(declare-fun b!2125891 () Bool)

(declare-fun res!919847 () Bool)

(assert (=> b!2125891 (=> (not res!919847) (not e!1354864))))

(assert (=> b!2125891 (= res!919847 (valid!1951 cacheFurthestNullable!130))))

(declare-fun lt!795740 () tuple3!2972)

(declare-datatypes ((tuple3!2976 0))(
  ( (tuple3!2977 (_1!13676 (InoxSet Context!2494)) (_2!13676 CacheUp!1662) (_3!1958 CacheDown!1648)) )
))
(declare-fun lt!795746 () tuple3!2976)

(declare-fun lt!795735 () Int)

(assert (=> b!2125892 (= lt!795740 (furthestNullablePositionStackMem!15 (_1!13676 lt!795746) (+ lt!795671 1) totalInput!886 lt!795670 lt!795735 (Cons!23772 (StackFrame!67 z!3883 lt!795671 e!1354761 lt!795736 totalInput!886) Nil!23772) (_2!13676 lt!795746) (_3!1958 lt!795746) cacheFurthestNullable!130))))

(declare-fun lt!795739 () Unit!37634)

(declare-fun lt!795743 () Unit!37634)

(assert (=> b!2125892 (= lt!795739 lt!795743)))

(assert (=> b!2125892 call!128751))

(assert (=> b!2125892 (= lt!795743 call!128753)))

(declare-fun lt!795741 () Unit!37634)

(declare-fun Unit!37640 () Unit!37634)

(assert (=> b!2125892 (= lt!795741 Unit!37640)))

(assert (=> b!2125892 call!128752))

(assert (=> b!2125892 (= lt!795744 (furthestNullablePosition!14 (_1!13676 lt!795746) (+ lt!795671 1) totalInput!886 (size!18586 totalInput!886) lt!795735))))

(assert (=> b!2125892 (= lt!795735 e!1354868)))

(declare-fun c!339989 () Bool)

(assert (=> b!2125892 (= c!339989 (nullableZipper!70 (_1!13676 lt!795746)))))

(declare-fun derivationStepZipperMem!21 ((InoxSet Context!2494) C!11500 CacheUp!1662 CacheDown!1648) tuple3!2976)

(declare-fun apply!5917 (BalanceConc!15392 Int) C!11500)

(assert (=> b!2125892 (= lt!795746 (derivationStepZipperMem!21 z!3883 (apply!5917 totalInput!886 lt!795671) cacheUp!991 cacheDown!1110))))

(assert (=> b!2125892 (= e!1354867 (tuple3!2973 (_1!13669 lt!795740) (_2!13669 lt!795740) (_3!1956 lt!795740)))))

(declare-fun b!2125893 () Bool)

(assert (=> b!2125893 (= e!1354865 (tuple3!2973 (tuple2!23425 (v!28304 lt!795745) Nil!23772) cacheUp!991 cacheDown!1110))))

(declare-fun res!919849 () Bool)

(assert (=> b!2125894 (=> (not res!919849) (not e!1354864))))

(assert (=> b!2125894 (= res!919849 (forall!4878 (_2!13668 (_1!13669 lt!795733)) lambda!78851))))

(declare-fun b!2125895 () Bool)

(declare-fun res!919848 () Bool)

(assert (=> b!2125895 (=> (not res!919848) (not e!1354864))))

(assert (=> b!2125895 (= res!919848 (= (totalInput!2936 cacheFurthestNullable!130) totalInput!886))))

(assert (=> b!2125896 (= e!1354864 (forall!4878 (_2!13668 (_1!13669 lt!795733)) lambda!78852))))

(declare-fun bm!128748 () Bool)

(declare-fun lemmaStackPreservesForEqualRes!10 (List!23856 Int Int) Unit!37634)

(assert (=> bm!128748 (= call!128753 (lemmaStackPreservesForEqualRes!10 Nil!23772 lt!795736 (ite c!339990 e!1354761 lt!795744)))))

(assert (= (and d!644010 c!339991) b!2125893))

(assert (= (and d!644010 (not c!339991)) b!2125888))

(assert (= (and b!2125888 (not res!919851)) b!2125890))

(assert (= (and b!2125888 c!339990) b!2125889))

(assert (= (and b!2125888 (not c!339990)) b!2125892))

(assert (= (and b!2125892 c!339989) b!2125884))

(assert (= (and b!2125892 (not c!339989)) b!2125885))

(assert (= (or b!2125889 b!2125892) bm!128747))

(assert (= (or b!2125889 b!2125892) bm!128746))

(assert (= (or b!2125889 b!2125892) bm!128748))

(assert (= (and d!644010 res!919846) b!2125894))

(assert (= (and b!2125894 res!919849) b!2125887))

(assert (= (and b!2125887 res!919850) b!2125886))

(assert (= (and b!2125886 res!919852) b!2125891))

(assert (= (and b!2125891 res!919847) b!2125895))

(assert (= (and b!2125895 res!919848) b!2125896))

(declare-fun m!2577950 () Bool)

(assert (=> b!2125887 m!2577950))

(declare-fun m!2577952 () Bool)

(assert (=> b!2125896 m!2577952))

(declare-fun m!2577954 () Bool)

(assert (=> bm!128748 m!2577954))

(declare-fun m!2577956 () Bool)

(assert (=> b!2125890 m!2577956))

(declare-fun m!2577958 () Bool)

(assert (=> d!644010 m!2577958))

(assert (=> d!644010 m!2577878))

(declare-fun m!2577960 () Bool)

(assert (=> d!644010 m!2577960))

(declare-fun m!2577962 () Bool)

(assert (=> d!644010 m!2577962))

(assert (=> d!644010 m!2577878))

(declare-fun m!2577964 () Bool)

(assert (=> d!644010 m!2577964))

(declare-fun m!2577966 () Bool)

(assert (=> bm!128746 m!2577966))

(declare-fun m!2577968 () Bool)

(assert (=> b!2125886 m!2577968))

(declare-fun m!2577970 () Bool)

(assert (=> b!2125892 m!2577970))

(declare-fun m!2577972 () Bool)

(assert (=> b!2125892 m!2577972))

(assert (=> b!2125892 m!2577878))

(declare-fun m!2577974 () Bool)

(assert (=> b!2125892 m!2577974))

(assert (=> b!2125892 m!2577970))

(assert (=> b!2125892 m!2577878))

(declare-fun m!2577976 () Bool)

(assert (=> b!2125892 m!2577976))

(declare-fun m!2577978 () Bool)

(assert (=> b!2125892 m!2577978))

(assert (=> b!2125891 m!2577822))

(declare-fun m!2577980 () Bool)

(assert (=> b!2125894 m!2577980))

(declare-fun m!2577982 () Bool)

(assert (=> bm!128747 m!2577982))

(assert (=> b!2125723 d!644010))

(declare-fun d!644012 () Bool)

(declare-fun lt!795751 () Int)

(assert (=> d!644012 (= lt!795751 (size!18587 (list!9539 totalInput!886)))))

(declare-fun size!18588 (Conc!7815) Int)

(assert (=> d!644012 (= lt!795751 (size!18588 (c!339969 totalInput!886)))))

(assert (=> d!644012 (= (size!18586 totalInput!886) lt!795751)))

(declare-fun bs!443550 () Bool)

(assert (= bs!443550 d!644012))

(assert (=> bs!443550 m!2577830))

(assert (=> bs!443550 m!2577830))

(assert (=> bs!443550 m!2577892))

(declare-fun m!2577984 () Bool)

(assert (=> bs!443550 m!2577984))

(assert (=> b!2125723 d!644012))

(declare-fun d!644014 () Bool)

(declare-fun res!919853 () Bool)

(declare-fun e!1354885 () Bool)

(assert (=> d!644014 (=> res!919853 e!1354885)))

(assert (=> d!644014 (= res!919853 ((_ is Nil!23772) (_2!13668 (_1!13669 lt!795672))))))

(assert (=> d!644014 (= (forall!4878 (_2!13668 (_1!13669 lt!795672)) lambda!78826) e!1354885)))

(declare-fun b!2125915 () Bool)

(declare-fun e!1354886 () Bool)

(assert (=> b!2125915 (= e!1354885 e!1354886)))

(declare-fun res!919854 () Bool)

(assert (=> b!2125915 (=> (not res!919854) (not e!1354886))))

(assert (=> b!2125915 (= res!919854 (dynLambda!11363 lambda!78826 (h!29173 (_2!13668 (_1!13669 lt!795672)))))))

(declare-fun b!2125916 () Bool)

(assert (=> b!2125916 (= e!1354886 (forall!4878 (t!196380 (_2!13668 (_1!13669 lt!795672))) lambda!78826))))

(assert (= (and d!644014 (not res!919853)) b!2125915))

(assert (= (and b!2125915 res!919854) b!2125916))

(declare-fun b_lambda!70531 () Bool)

(assert (=> (not b_lambda!70531) (not b!2125915)))

(declare-fun m!2577986 () Bool)

(assert (=> b!2125915 m!2577986))

(declare-fun m!2577988 () Bool)

(assert (=> b!2125916 m!2577988))

(assert (=> b!2125723 d!644014))

(declare-fun d!644016 () Bool)

(assert (=> d!644016 (= (list!9539 (_1!13672 lt!795669)) (list!9540 (c!339969 (_1!13672 lt!795669))))))

(declare-fun bs!443551 () Bool)

(assert (= bs!443551 d!644016))

(declare-fun m!2577990 () Bool)

(assert (=> bs!443551 m!2577990))

(assert (=> b!2125723 d!644016))

(declare-fun d!644018 () Bool)

(declare-fun lt!795752 () Int)

(assert (=> d!644018 (= lt!795752 (size!18587 (list!9539 input!5507)))))

(assert (=> d!644018 (= lt!795752 (size!18588 (c!339969 input!5507)))))

(assert (=> d!644018 (= (size!18586 input!5507) lt!795752)))

(declare-fun bs!443552 () Bool)

(assert (= bs!443552 d!644018))

(assert (=> bs!443552 m!2577838))

(assert (=> bs!443552 m!2577838))

(declare-fun m!2577992 () Bool)

(assert (=> bs!443552 m!2577992))

(declare-fun m!2577994 () Bool)

(assert (=> bs!443552 m!2577994))

(assert (=> b!2125723 d!644018))

(declare-fun d!644020 () Bool)

(assert (=> d!644020 (= (list!9539 (_2!13672 lt!795669)) (list!9540 (c!339969 (_2!13672 lt!795669))))))

(declare-fun bs!443553 () Bool)

(assert (= bs!443553 d!644020))

(declare-fun m!2577996 () Bool)

(assert (=> bs!443553 m!2577996))

(assert (=> b!2125723 d!644020))

(declare-fun b!2125926 () Bool)

(declare-fun e!1354892 () List!23855)

(assert (=> b!2125926 (= e!1354892 (Cons!23771 (h!29172 (list!9539 (_1!13672 lt!795669))) (++!6317 (t!196379 (list!9539 (_1!13672 lt!795669))) (list!9539 (_2!13672 lt!795669)))))))

(declare-fun b!2125928 () Bool)

(declare-fun e!1354891 () Bool)

(declare-fun lt!795755 () List!23855)

(assert (=> b!2125928 (= e!1354891 (or (not (= (list!9539 (_2!13672 lt!795669)) Nil!23771)) (= lt!795755 (list!9539 (_1!13672 lt!795669)))))))

(declare-fun d!644022 () Bool)

(assert (=> d!644022 e!1354891))

(declare-fun res!919859 () Bool)

(assert (=> d!644022 (=> (not res!919859) (not e!1354891))))

(declare-fun content!3391 (List!23855) (InoxSet C!11500))

(assert (=> d!644022 (= res!919859 (= (content!3391 lt!795755) ((_ map or) (content!3391 (list!9539 (_1!13672 lt!795669))) (content!3391 (list!9539 (_2!13672 lt!795669))))))))

(assert (=> d!644022 (= lt!795755 e!1354892)))

(declare-fun c!339994 () Bool)

(assert (=> d!644022 (= c!339994 ((_ is Nil!23771) (list!9539 (_1!13672 lt!795669))))))

(assert (=> d!644022 (= (++!6317 (list!9539 (_1!13672 lt!795669)) (list!9539 (_2!13672 lt!795669))) lt!795755)))

(declare-fun b!2125925 () Bool)

(assert (=> b!2125925 (= e!1354892 (list!9539 (_2!13672 lt!795669)))))

(declare-fun b!2125927 () Bool)

(declare-fun res!919860 () Bool)

(assert (=> b!2125927 (=> (not res!919860) (not e!1354891))))

(assert (=> b!2125927 (= res!919860 (= (size!18587 lt!795755) (+ (size!18587 (list!9539 (_1!13672 lt!795669))) (size!18587 (list!9539 (_2!13672 lt!795669))))))))

(assert (= (and d!644022 c!339994) b!2125925))

(assert (= (and d!644022 (not c!339994)) b!2125926))

(assert (= (and d!644022 res!919859) b!2125927))

(assert (= (and b!2125927 res!919860) b!2125928))

(assert (=> b!2125926 m!2577870))

(declare-fun m!2577998 () Bool)

(assert (=> b!2125926 m!2577998))

(declare-fun m!2578000 () Bool)

(assert (=> d!644022 m!2578000))

(assert (=> d!644022 m!2577872))

(declare-fun m!2578002 () Bool)

(assert (=> d!644022 m!2578002))

(assert (=> d!644022 m!2577870))

(declare-fun m!2578004 () Bool)

(assert (=> d!644022 m!2578004))

(declare-fun m!2578006 () Bool)

(assert (=> b!2125927 m!2578006))

(assert (=> b!2125927 m!2577872))

(declare-fun m!2578008 () Bool)

(assert (=> b!2125927 m!2578008))

(assert (=> b!2125927 m!2577870))

(declare-fun m!2578010 () Bool)

(assert (=> b!2125927 m!2578010))

(assert (=> b!2125723 d!644022))

(declare-fun tp!651812 () Bool)

(declare-fun e!1354897 () Bool)

(declare-fun b!2125937 () Bool)

(declare-fun tp!651814 () Bool)

(assert (=> b!2125937 (= e!1354897 (and (inv!31366 (left!18378 (c!339969 input!5507))) tp!651814 (inv!31366 (right!18708 (c!339969 input!5507))) tp!651812))))

(declare-fun b!2125939 () Bool)

(declare-fun e!1354898 () Bool)

(declare-fun tp!651813 () Bool)

(assert (=> b!2125939 (= e!1354898 tp!651813)))

(declare-fun b!2125938 () Bool)

(declare-fun inv!31373 (IArray!15635) Bool)

(assert (=> b!2125938 (= e!1354897 (and (inv!31373 (xs!10757 (c!339969 input!5507))) e!1354898))))

(assert (=> b!2125743 (= tp!651796 (and (inv!31366 (c!339969 input!5507)) e!1354897))))

(assert (= (and b!2125743 ((_ is Node!7815) (c!339969 input!5507))) b!2125937))

(assert (= b!2125938 b!2125939))

(assert (= (and b!2125743 ((_ is Leaf!11421) (c!339969 input!5507))) b!2125938))

(declare-fun m!2578012 () Bool)

(assert (=> b!2125937 m!2578012))

(declare-fun m!2578014 () Bool)

(assert (=> b!2125937 m!2578014))

(declare-fun m!2578016 () Bool)

(assert (=> b!2125938 m!2578016))

(assert (=> b!2125743 m!2577864))

(declare-fun b!2125944 () Bool)

(declare-fun e!1354901 () Bool)

(declare-fun setRes!15349 () Bool)

(assert (=> b!2125944 (= e!1354901 setRes!15349)))

(declare-fun condSetEmpty!15349 () Bool)

(assert (=> b!2125944 (= condSetEmpty!15349 (= (_2!13667 (h!29170 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15349 () Bool)

(assert (=> setIsEmpty!15349 setRes!15349))

(declare-fun setNonEmpty!15349 () Bool)

(assert (=> setNonEmpty!15349 (= setRes!15349 true)))

(declare-fun setElem!15349 () Context!2494)

(declare-fun setRest!15349 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15349 (= (_2!13667 (h!29170 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15349 true) setRest!15349))))

(assert (=> b!2125792 e!1354901))

(assert (= (and b!2125944 condSetEmpty!15349) setIsEmpty!15349))

(assert (= (and b!2125944 (not condSetEmpty!15349)) setNonEmpty!15349))

(assert (= (and b!2125792 ((_ is Cons!23769) (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672))))))))) b!2125944))

(declare-fun b!2125945 () Bool)

(declare-fun e!1354902 () Bool)

(declare-fun setRes!15350 () Bool)

(assert (=> b!2125945 (= e!1354902 setRes!15350)))

(declare-fun condSetEmpty!15350 () Bool)

(assert (=> b!2125945 (= condSetEmpty!15350 (= (_2!13667 (h!29170 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15350 () Bool)

(assert (=> setIsEmpty!15350 setRes!15350))

(declare-fun setNonEmpty!15350 () Bool)

(assert (=> setNonEmpty!15350 (= setRes!15350 true)))

(declare-fun setElem!15350 () Context!2494)

(declare-fun setRest!15350 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15350 (= (_2!13667 (h!29170 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15350 true) setRest!15350))))

(assert (=> b!2125792 e!1354902))

(assert (= (and b!2125945 condSetEmpty!15350) setIsEmpty!15350))

(assert (= (and b!2125945 (not condSetEmpty!15350)) setNonEmpty!15350))

(assert (= (and b!2125792 ((_ is Cons!23769) (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672))))))))) b!2125945))

(declare-fun b!2125956 () Bool)

(declare-fun e!1354912 () Bool)

(declare-fun setRes!15355 () Bool)

(declare-fun tp!651829 () Bool)

(assert (=> b!2125956 (= e!1354912 (and setRes!15355 tp!651829))))

(declare-fun condSetEmpty!15356 () Bool)

(declare-fun mapValue!12168 () List!23857)

(assert (=> b!2125956 (= condSetEmpty!15356 (= (_1!13670 (_1!13671 (h!29174 mapValue!12168))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun tp!651831 () Bool)

(declare-fun setRes!15356 () Bool)

(declare-fun setNonEmpty!15355 () Bool)

(declare-fun e!1354914 () Bool)

(declare-fun setElem!15356 () Context!2494)

(assert (=> setNonEmpty!15355 (= setRes!15356 (and tp!651831 (inv!31365 setElem!15356) e!1354914))))

(declare-fun mapDefault!12168 () List!23857)

(declare-fun setRest!15355 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15355 (= (_1!13670 (_1!13671 (h!29174 mapDefault!12168))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15356 true) setRest!15355))))

(declare-fun setIsEmpty!15355 () Bool)

(assert (=> setIsEmpty!15355 setRes!15355))

(declare-fun setIsEmpty!15356 () Bool)

(assert (=> setIsEmpty!15356 setRes!15356))

(declare-fun b!2125957 () Bool)

(declare-fun e!1354911 () Bool)

(declare-fun tp!651832 () Bool)

(assert (=> b!2125957 (= e!1354911 tp!651832)))

(declare-fun mapIsEmpty!12168 () Bool)

(declare-fun mapRes!12168 () Bool)

(assert (=> mapIsEmpty!12168 mapRes!12168))

(declare-fun b!2125959 () Bool)

(declare-fun e!1354913 () Bool)

(declare-fun tp!651834 () Bool)

(assert (=> b!2125959 (= e!1354913 (and setRes!15356 tp!651834))))

(declare-fun condSetEmpty!15355 () Bool)

(assert (=> b!2125959 (= condSetEmpty!15355 (= (_1!13670 (_1!13671 (h!29174 mapDefault!12168))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setNonEmpty!15356 () Bool)

(declare-fun tp!651830 () Bool)

(declare-fun setElem!15355 () Context!2494)

(assert (=> setNonEmpty!15356 (= setRes!15355 (and tp!651830 (inv!31365 setElem!15355) e!1354911))))

(declare-fun setRest!15356 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15356 (= (_1!13670 (_1!13671 (h!29174 mapValue!12168))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15355 true) setRest!15356))))

(declare-fun mapNonEmpty!12168 () Bool)

(declare-fun tp!651835 () Bool)

(assert (=> mapNonEmpty!12168 (= mapRes!12168 (and tp!651835 e!1354912))))

(declare-fun mapRest!12168 () (Array (_ BitVec 32) List!23857))

(declare-fun mapKey!12168 () (_ BitVec 32))

(assert (=> mapNonEmpty!12168 (= mapRest!12157 (store mapRest!12168 mapKey!12168 mapValue!12168))))

(declare-fun b!2125958 () Bool)

(declare-fun tp!651833 () Bool)

(assert (=> b!2125958 (= e!1354914 tp!651833)))

(declare-fun condMapEmpty!12168 () Bool)

(assert (=> mapNonEmpty!12155 (= condMapEmpty!12168 (= mapRest!12157 ((as const (Array (_ BitVec 32) List!23857)) mapDefault!12168)))))

(assert (=> mapNonEmpty!12155 (= tp!651781 (and e!1354913 mapRes!12168))))

(assert (= (and mapNonEmpty!12155 condMapEmpty!12168) mapIsEmpty!12168))

(assert (= (and mapNonEmpty!12155 (not condMapEmpty!12168)) mapNonEmpty!12168))

(assert (= (and b!2125956 condSetEmpty!15356) setIsEmpty!15355))

(assert (= (and b!2125956 (not condSetEmpty!15356)) setNonEmpty!15356))

(assert (= setNonEmpty!15356 b!2125957))

(assert (= (and mapNonEmpty!12168 ((_ is Cons!23773) mapValue!12168)) b!2125956))

(assert (= (and b!2125959 condSetEmpty!15355) setIsEmpty!15356))

(assert (= (and b!2125959 (not condSetEmpty!15355)) setNonEmpty!15355))

(assert (= setNonEmpty!15355 b!2125958))

(assert (= (and mapNonEmpty!12155 ((_ is Cons!23773) mapDefault!12168)) b!2125959))

(declare-fun m!2578018 () Bool)

(assert (=> setNonEmpty!15355 m!2578018))

(declare-fun m!2578020 () Bool)

(assert (=> setNonEmpty!15356 m!2578020))

(declare-fun m!2578022 () Bool)

(assert (=> mapNonEmpty!12168 m!2578022))

(declare-fun setIsEmpty!15359 () Bool)

(declare-fun setRes!15359 () Bool)

(assert (=> setIsEmpty!15359 setRes!15359))

(declare-fun b!2125967 () Bool)

(declare-fun e!1354920 () Bool)

(declare-fun tp!651842 () Bool)

(assert (=> b!2125967 (= e!1354920 tp!651842)))

(declare-fun e!1354919 () Bool)

(assert (=> mapNonEmpty!12155 (= tp!651785 e!1354919)))

(declare-fun b!2125966 () Bool)

(declare-fun tp!651843 () Bool)

(assert (=> b!2125966 (= e!1354919 (and setRes!15359 tp!651843))))

(declare-fun condSetEmpty!15359 () Bool)

(assert (=> b!2125966 (= condSetEmpty!15359 (= (_1!13670 (_1!13671 (h!29174 mapValue!12157))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setNonEmpty!15359 () Bool)

(declare-fun tp!651844 () Bool)

(declare-fun setElem!15359 () Context!2494)

(assert (=> setNonEmpty!15359 (= setRes!15359 (and tp!651844 (inv!31365 setElem!15359) e!1354920))))

(declare-fun setRest!15359 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15359 (= (_1!13670 (_1!13671 (h!29174 mapValue!12157))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15359 true) setRest!15359))))

(assert (= (and b!2125966 condSetEmpty!15359) setIsEmpty!15359))

(assert (= (and b!2125966 (not condSetEmpty!15359)) setNonEmpty!15359))

(assert (= setNonEmpty!15359 b!2125967))

(assert (= (and mapNonEmpty!12155 ((_ is Cons!23773) mapValue!12157)) b!2125966))

(declare-fun m!2578024 () Bool)

(assert (=> setNonEmpty!15359 m!2578024))

(declare-fun b!2125968 () Bool)

(declare-fun e!1354921 () Bool)

(declare-fun setRes!15360 () Bool)

(assert (=> b!2125968 (= e!1354921 setRes!15360)))

(declare-fun condSetEmpty!15360 () Bool)

(assert (=> b!2125968 (= condSetEmpty!15360 (= (_2!13667 (h!29170 mapDefault!12162)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15360 () Bool)

(assert (=> setIsEmpty!15360 setRes!15360))

(declare-fun setNonEmpty!15360 () Bool)

(assert (=> setNonEmpty!15360 (= setRes!15360 true)))

(declare-fun setElem!15360 () Context!2494)

(declare-fun setRest!15360 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15360 (= (_2!13667 (h!29170 mapDefault!12162)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15360 true) setRest!15360))))

(assert (=> b!2125796 e!1354921))

(assert (= (and b!2125968 condSetEmpty!15360) setIsEmpty!15360))

(assert (= (and b!2125968 (not condSetEmpty!15360)) setNonEmpty!15360))

(assert (= (and b!2125796 ((_ is Cons!23769) mapDefault!12162)) b!2125968))

(declare-fun setIsEmpty!15363 () Bool)

(declare-fun setRes!15363 () Bool)

(assert (=> setIsEmpty!15363 setRes!15363))

(declare-fun e!1354928 () Bool)

(declare-fun b!2125977 () Bool)

(declare-fun e!1354930 () Bool)

(declare-fun tp!651859 () Bool)

(declare-fun tp_is_empty!9499 () Bool)

(declare-fun tp!651857 () Bool)

(assert (=> b!2125977 (= e!1354930 (and tp!651857 (inv!31365 (_2!13664 (_1!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))))) e!1354928 tp_is_empty!9499 setRes!15363 tp!651859))))

(declare-fun condSetEmpty!15363 () Bool)

(assert (=> b!2125977 (= condSetEmpty!15363 (= (_2!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2125727 (= tp!651798 e!1354930)))

(declare-fun b!2125978 () Bool)

(declare-fun tp!651858 () Bool)

(assert (=> b!2125978 (= e!1354928 tp!651858)))

(declare-fun tp!651856 () Bool)

(declare-fun setElem!15363 () Context!2494)

(declare-fun e!1354929 () Bool)

(declare-fun setNonEmpty!15363 () Bool)

(assert (=> setNonEmpty!15363 (= setRes!15363 (and tp!651856 (inv!31365 setElem!15363) e!1354929))))

(declare-fun setRest!15363 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15363 (= (_2!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15363 true) setRest!15363))))

(declare-fun b!2125979 () Bool)

(declare-fun tp!651855 () Bool)

(assert (=> b!2125979 (= e!1354929 tp!651855)))

(assert (= b!2125977 b!2125978))

(assert (= (and b!2125977 condSetEmpty!15363) setIsEmpty!15363))

(assert (= (and b!2125977 (not condSetEmpty!15363)) setNonEmpty!15363))

(assert (= setNonEmpty!15363 b!2125979))

(assert (= (and b!2125727 ((_ is Cons!23770) (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))) b!2125977))

(declare-fun m!2578026 () Bool)

(assert (=> b!2125977 m!2578026))

(declare-fun m!2578028 () Bool)

(assert (=> setNonEmpty!15363 m!2578028))

(declare-fun setIsEmpty!15364 () Bool)

(declare-fun setRes!15364 () Bool)

(assert (=> setIsEmpty!15364 setRes!15364))

(declare-fun e!1354931 () Bool)

(declare-fun tp!651862 () Bool)

(declare-fun b!2125980 () Bool)

(declare-fun e!1354933 () Bool)

(declare-fun tp!651864 () Bool)

(assert (=> b!2125980 (= e!1354933 (and tp!651862 (inv!31365 (_2!13664 (_1!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))))) e!1354931 tp_is_empty!9499 setRes!15364 tp!651864))))

(declare-fun condSetEmpty!15364 () Bool)

(assert (=> b!2125980 (= condSetEmpty!15364 (= (_2!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2125727 (= tp!651801 e!1354933)))

(declare-fun b!2125981 () Bool)

(declare-fun tp!651863 () Bool)

(assert (=> b!2125981 (= e!1354931 tp!651863)))

(declare-fun tp!651861 () Bool)

(declare-fun setElem!15364 () Context!2494)

(declare-fun setNonEmpty!15364 () Bool)

(declare-fun e!1354932 () Bool)

(assert (=> setNonEmpty!15364 (= setRes!15364 (and tp!651861 (inv!31365 setElem!15364) e!1354932))))

(declare-fun setRest!15364 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15364 (= (_2!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15364 true) setRest!15364))))

(declare-fun b!2125982 () Bool)

(declare-fun tp!651860 () Bool)

(assert (=> b!2125982 (= e!1354932 tp!651860)))

(assert (= b!2125980 b!2125981))

(assert (= (and b!2125980 condSetEmpty!15364) setIsEmpty!15364))

(assert (= (and b!2125980 (not condSetEmpty!15364)) setNonEmpty!15364))

(assert (= setNonEmpty!15364 b!2125982))

(assert (= (and b!2125727 ((_ is Cons!23770) (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))) b!2125980))

(declare-fun m!2578030 () Bool)

(assert (=> b!2125980 m!2578030))

(declare-fun m!2578032 () Bool)

(assert (=> setNonEmpty!15364 m!2578032))

(declare-fun setIsEmpty!15365 () Bool)

(declare-fun setRes!15365 () Bool)

(assert (=> setIsEmpty!15365 setRes!15365))

(declare-fun b!2125984 () Bool)

(declare-fun e!1354935 () Bool)

(declare-fun tp!651865 () Bool)

(assert (=> b!2125984 (= e!1354935 tp!651865)))

(declare-fun e!1354934 () Bool)

(assert (=> b!2125724 (= tp!651797 e!1354934)))

(declare-fun b!2125983 () Bool)

(declare-fun tp!651866 () Bool)

(assert (=> b!2125983 (= e!1354934 (and setRes!15365 tp!651866))))

(declare-fun condSetEmpty!15365 () Bool)

(assert (=> b!2125983 (= condSetEmpty!15365 (= (_1!13670 (_1!13671 (h!29174 mapDefault!12155))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setElem!15365 () Context!2494)

(declare-fun setNonEmpty!15365 () Bool)

(declare-fun tp!651867 () Bool)

(assert (=> setNonEmpty!15365 (= setRes!15365 (and tp!651867 (inv!31365 setElem!15365) e!1354935))))

(declare-fun setRest!15365 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15365 (= (_1!13670 (_1!13671 (h!29174 mapDefault!12155))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15365 true) setRest!15365))))

(assert (= (and b!2125983 condSetEmpty!15365) setIsEmpty!15365))

(assert (= (and b!2125983 (not condSetEmpty!15365)) setNonEmpty!15365))

(assert (= setNonEmpty!15365 b!2125984))

(assert (= (and b!2125724 ((_ is Cons!23773) mapDefault!12155)) b!2125983))

(declare-fun m!2578034 () Bool)

(assert (=> setNonEmpty!15365 m!2578034))

(declare-fun setRes!15368 () Bool)

(declare-fun b!2125993 () Bool)

(declare-fun e!1354942 () Bool)

(declare-fun tp!651878 () Bool)

(declare-fun e!1354944 () Bool)

(assert (=> b!2125993 (= e!1354944 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))))) e!1354942 tp_is_empty!9499 setRes!15368 tp!651878))))

(declare-fun condSetEmpty!15368 () Bool)

(assert (=> b!2125993 (= condSetEmpty!15368 (= (_2!13667 (h!29170 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2125738 (= tp!651804 e!1354944)))

(declare-fun setIsEmpty!15368 () Bool)

(assert (=> setIsEmpty!15368 setRes!15368))

(declare-fun b!2125994 () Bool)

(declare-fun e!1354943 () Bool)

(declare-fun tp!651879 () Bool)

(assert (=> b!2125994 (= e!1354943 tp!651879)))

(declare-fun setElem!15368 () Context!2494)

(declare-fun setNonEmpty!15368 () Bool)

(declare-fun tp!651877 () Bool)

(assert (=> setNonEmpty!15368 (= setRes!15368 (and tp!651877 (inv!31365 setElem!15368) e!1354943))))

(declare-fun setRest!15368 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15368 (= (_2!13667 (h!29170 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15368 true) setRest!15368))))

(declare-fun b!2125995 () Bool)

(declare-fun tp!651876 () Bool)

(assert (=> b!2125995 (= e!1354942 tp!651876)))

(assert (= b!2125993 b!2125995))

(assert (= (and b!2125993 condSetEmpty!15368) setIsEmpty!15368))

(assert (= (and b!2125993 (not condSetEmpty!15368)) setNonEmpty!15368))

(assert (= setNonEmpty!15368 b!2125994))

(assert (= (and b!2125738 ((_ is Cons!23769) (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))) b!2125993))

(declare-fun m!2578036 () Bool)

(assert (=> b!2125993 m!2578036))

(declare-fun m!2578038 () Bool)

(assert (=> setNonEmpty!15368 m!2578038))

(declare-fun e!1354945 () Bool)

(declare-fun b!2125996 () Bool)

(declare-fun e!1354947 () Bool)

(declare-fun setRes!15369 () Bool)

(declare-fun tp!651882 () Bool)

(assert (=> b!2125996 (= e!1354947 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))))) e!1354945 tp_is_empty!9499 setRes!15369 tp!651882))))

(declare-fun condSetEmpty!15369 () Bool)

(assert (=> b!2125996 (= condSetEmpty!15369 (= (_2!13667 (h!29170 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2125738 (= tp!651792 e!1354947)))

(declare-fun setIsEmpty!15369 () Bool)

(assert (=> setIsEmpty!15369 setRes!15369))

(declare-fun b!2125997 () Bool)

(declare-fun e!1354946 () Bool)

(declare-fun tp!651883 () Bool)

(assert (=> b!2125997 (= e!1354946 tp!651883)))

(declare-fun tp!651881 () Bool)

(declare-fun setElem!15369 () Context!2494)

(declare-fun setNonEmpty!15369 () Bool)

(assert (=> setNonEmpty!15369 (= setRes!15369 (and tp!651881 (inv!31365 setElem!15369) e!1354946))))

(declare-fun setRest!15369 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15369 (= (_2!13667 (h!29170 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15369 true) setRest!15369))))

(declare-fun b!2125998 () Bool)

(declare-fun tp!651880 () Bool)

(assert (=> b!2125998 (= e!1354945 tp!651880)))

(assert (= b!2125996 b!2125998))

(assert (= (and b!2125996 condSetEmpty!15369) setIsEmpty!15369))

(assert (= (and b!2125996 (not condSetEmpty!15369)) setNonEmpty!15369))

(assert (= setNonEmpty!15369 b!2125997))

(assert (= (and b!2125738 ((_ is Cons!23769) (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))) b!2125996))

(declare-fun m!2578040 () Bool)

(assert (=> b!2125996 m!2578040))

(declare-fun m!2578042 () Bool)

(assert (=> setNonEmpty!15369 m!2578042))

(declare-fun setIsEmpty!15374 () Bool)

(declare-fun setRes!15375 () Bool)

(assert (=> setIsEmpty!15374 setRes!15375))

(declare-fun b!2126013 () Bool)

(declare-fun e!1354960 () Bool)

(declare-fun tp!651907 () Bool)

(assert (=> b!2126013 (= e!1354960 tp!651907)))

(declare-fun b!2126014 () Bool)

(declare-fun e!1354964 () Bool)

(declare-fun tp!651912 () Bool)

(assert (=> b!2126014 (= e!1354964 tp!651912)))

(declare-fun tp!651911 () Bool)

(declare-fun tp!651913 () Bool)

(declare-fun mapValue!12171 () List!23854)

(declare-fun e!1354961 () Bool)

(declare-fun b!2126015 () Bool)

(declare-fun e!1354962 () Bool)

(assert (=> b!2126015 (= e!1354961 (and tp!651911 (inv!31365 (_2!13664 (_1!13665 (h!29171 mapValue!12171)))) e!1354962 tp_is_empty!9499 setRes!15375 tp!651913))))

(declare-fun condSetEmpty!15375 () Bool)

(assert (=> b!2126015 (= condSetEmpty!15375 (= (_2!13665 (h!29171 mapValue!12171)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun condMapEmpty!12171 () Bool)

(declare-fun mapDefault!12171 () List!23854)

(assert (=> mapNonEmpty!12157 (= condMapEmpty!12171 (= mapRest!12155 ((as const (Array (_ BitVec 32) List!23854)) mapDefault!12171)))))

(declare-fun e!1354963 () Bool)

(declare-fun mapRes!12171 () Bool)

(assert (=> mapNonEmpty!12157 (= tp!651782 (and e!1354963 mapRes!12171))))

(declare-fun e!1354965 () Bool)

(declare-fun tp!651909 () Bool)

(declare-fun setElem!15374 () Context!2494)

(declare-fun setNonEmpty!15374 () Bool)

(assert (=> setNonEmpty!15374 (= setRes!15375 (and tp!651909 (inv!31365 setElem!15374) e!1354965))))

(declare-fun setRest!15375 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15374 (= (_2!13665 (h!29171 mapValue!12171)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15374 true) setRest!15375))))

(declare-fun b!2126016 () Bool)

(declare-fun tp!651910 () Bool)

(assert (=> b!2126016 (= e!1354965 tp!651910)))

(declare-fun mapNonEmpty!12171 () Bool)

(declare-fun tp!651915 () Bool)

(assert (=> mapNonEmpty!12171 (= mapRes!12171 (and tp!651915 e!1354961))))

(declare-fun mapKey!12171 () (_ BitVec 32))

(declare-fun mapRest!12171 () (Array (_ BitVec 32) List!23854))

(assert (=> mapNonEmpty!12171 (= mapRest!12155 (store mapRest!12171 mapKey!12171 mapValue!12171))))

(declare-fun mapIsEmpty!12171 () Bool)

(assert (=> mapIsEmpty!12171 mapRes!12171))

(declare-fun setIsEmpty!15375 () Bool)

(declare-fun setRes!15374 () Bool)

(assert (=> setIsEmpty!15375 setRes!15374))

(declare-fun setNonEmpty!15375 () Bool)

(declare-fun tp!651916 () Bool)

(declare-fun setElem!15375 () Context!2494)

(assert (=> setNonEmpty!15375 (= setRes!15374 (and tp!651916 (inv!31365 setElem!15375) e!1354960))))

(declare-fun setRest!15374 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15375 (= (_2!13665 (h!29171 mapDefault!12171)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15375 true) setRest!15374))))

(declare-fun b!2126017 () Bool)

(declare-fun tp!651906 () Bool)

(assert (=> b!2126017 (= e!1354962 tp!651906)))

(declare-fun tp!651908 () Bool)

(declare-fun b!2126018 () Bool)

(declare-fun tp!651914 () Bool)

(assert (=> b!2126018 (= e!1354963 (and tp!651908 (inv!31365 (_2!13664 (_1!13665 (h!29171 mapDefault!12171)))) e!1354964 tp_is_empty!9499 setRes!15374 tp!651914))))

(declare-fun condSetEmpty!15374 () Bool)

(assert (=> b!2126018 (= condSetEmpty!15374 (= (_2!13665 (h!29171 mapDefault!12171)) ((as const (Array Context!2494 Bool)) false)))))

(assert (= (and mapNonEmpty!12157 condMapEmpty!12171) mapIsEmpty!12171))

(assert (= (and mapNonEmpty!12157 (not condMapEmpty!12171)) mapNonEmpty!12171))

(assert (= b!2126015 b!2126017))

(assert (= (and b!2126015 condSetEmpty!15375) setIsEmpty!15374))

(assert (= (and b!2126015 (not condSetEmpty!15375)) setNonEmpty!15374))

(assert (= setNonEmpty!15374 b!2126016))

(assert (= (and mapNonEmpty!12171 ((_ is Cons!23770) mapValue!12171)) b!2126015))

(assert (= b!2126018 b!2126014))

(assert (= (and b!2126018 condSetEmpty!15374) setIsEmpty!15375))

(assert (= (and b!2126018 (not condSetEmpty!15374)) setNonEmpty!15375))

(assert (= setNonEmpty!15375 b!2126013))

(assert (= (and mapNonEmpty!12157 ((_ is Cons!23770) mapDefault!12171)) b!2126018))

(declare-fun m!2578044 () Bool)

(assert (=> b!2126015 m!2578044))

(declare-fun m!2578046 () Bool)

(assert (=> setNonEmpty!15375 m!2578046))

(declare-fun m!2578048 () Bool)

(assert (=> b!2126018 m!2578048))

(declare-fun m!2578050 () Bool)

(assert (=> mapNonEmpty!12171 m!2578050))

(declare-fun m!2578052 () Bool)

(assert (=> setNonEmpty!15374 m!2578052))

(declare-fun setIsEmpty!15376 () Bool)

(declare-fun setRes!15376 () Bool)

(assert (=> setIsEmpty!15376 setRes!15376))

(declare-fun e!1354966 () Bool)

(declare-fun tp!651921 () Bool)

(declare-fun e!1354968 () Bool)

(declare-fun b!2126019 () Bool)

(declare-fun tp!651919 () Bool)

(assert (=> b!2126019 (= e!1354968 (and tp!651919 (inv!31365 (_2!13664 (_1!13665 (h!29171 mapValue!12155)))) e!1354966 tp_is_empty!9499 setRes!15376 tp!651921))))

(declare-fun condSetEmpty!15376 () Bool)

(assert (=> b!2126019 (= condSetEmpty!15376 (= (_2!13665 (h!29171 mapValue!12155)) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> mapNonEmpty!12157 (= tp!651793 e!1354968)))

(declare-fun b!2126020 () Bool)

(declare-fun tp!651920 () Bool)

(assert (=> b!2126020 (= e!1354966 tp!651920)))

(declare-fun setElem!15376 () Context!2494)

(declare-fun setNonEmpty!15376 () Bool)

(declare-fun e!1354967 () Bool)

(declare-fun tp!651918 () Bool)

(assert (=> setNonEmpty!15376 (= setRes!15376 (and tp!651918 (inv!31365 setElem!15376) e!1354967))))

(declare-fun setRest!15376 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15376 (= (_2!13665 (h!29171 mapValue!12155)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15376 true) setRest!15376))))

(declare-fun b!2126021 () Bool)

(declare-fun tp!651917 () Bool)

(assert (=> b!2126021 (= e!1354967 tp!651917)))

(assert (= b!2126019 b!2126020))

(assert (= (and b!2126019 condSetEmpty!15376) setIsEmpty!15376))

(assert (= (and b!2126019 (not condSetEmpty!15376)) setNonEmpty!15376))

(assert (= setNonEmpty!15376 b!2126021))

(assert (= (and mapNonEmpty!12157 ((_ is Cons!23770) mapValue!12155)) b!2126019))

(declare-fun m!2578054 () Bool)

(assert (=> b!2126019 m!2578054))

(declare-fun m!2578056 () Bool)

(assert (=> setNonEmpty!15376 m!2578056))

(declare-fun b!2126026 () Bool)

(declare-fun e!1354971 () Bool)

(declare-fun setRes!15379 () Bool)

(assert (=> b!2126026 (= e!1354971 setRes!15379)))

(declare-fun condSetEmpty!15379 () Bool)

(assert (=> b!2126026 (= condSetEmpty!15379 (= (_2!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15379 () Bool)

(assert (=> setIsEmpty!15379 setRes!15379))

(declare-fun setNonEmpty!15379 () Bool)

(assert (=> setNonEmpty!15379 (= setRes!15379 true)))

(declare-fun setElem!15379 () Context!2494)

(declare-fun setRest!15379 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15379 (= (_2!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15379 true) setRest!15379))))

(assert (=> b!2125787 e!1354971))

(assert (= (and b!2126026 condSetEmpty!15379) setIsEmpty!15379))

(assert (= (and b!2126026 (not condSetEmpty!15379)) setNonEmpty!15379))

(assert (= (and b!2125787 ((_ is Cons!23770) (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672))))))))) b!2126026))

(declare-fun b!2126027 () Bool)

(declare-fun e!1354972 () Bool)

(declare-fun setRes!15380 () Bool)

(assert (=> b!2126027 (= e!1354972 setRes!15380)))

(declare-fun condSetEmpty!15380 () Bool)

(assert (=> b!2126027 (= condSetEmpty!15380 (= (_2!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15380 () Bool)

(assert (=> setIsEmpty!15380 setRes!15380))

(declare-fun setNonEmpty!15380 () Bool)

(assert (=> setNonEmpty!15380 (= setRes!15380 true)))

(declare-fun setElem!15380 () Context!2494)

(declare-fun setRest!15380 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15380 (= (_2!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15380 true) setRest!15380))))

(assert (=> b!2125787 e!1354972))

(assert (= (and b!2126027 condSetEmpty!15380) setIsEmpty!15380))

(assert (= (and b!2126027 (not condSetEmpty!15380)) setNonEmpty!15380))

(assert (= (and b!2125787 ((_ is Cons!23770) (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672))))))))) b!2126027))

(declare-fun mapNonEmpty!12174 () Bool)

(declare-fun mapRes!12174 () Bool)

(declare-fun e!1354978 () Bool)

(assert (=> mapNonEmpty!12174 (= mapRes!12174 e!1354978)))

(declare-fun mapValue!12174 () List!23854)

(declare-fun mapRest!12174 () (Array (_ BitVec 32) List!23854))

(declare-fun mapKey!12174 () (_ BitVec 32))

(assert (=> mapNonEmpty!12174 (= mapRest!12163 (store mapRest!12174 mapKey!12174 mapValue!12174))))

(declare-fun b!2126034 () Bool)

(declare-fun e!1354977 () Bool)

(declare-fun setRes!15385 () Bool)

(assert (=> b!2126034 (= e!1354977 setRes!15385)))

(declare-fun condSetEmpty!15385 () Bool)

(declare-fun mapDefault!12174 () List!23854)

(assert (=> b!2126034 (= condSetEmpty!15385 (= (_2!13665 (h!29171 mapDefault!12174)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15385 () Bool)

(declare-fun setRes!15386 () Bool)

(assert (=> setIsEmpty!15385 setRes!15386))

(declare-fun setNonEmpty!15385 () Bool)

(assert (=> setNonEmpty!15385 (= setRes!15385 true)))

(declare-fun setElem!15385 () Context!2494)

(declare-fun setRest!15386 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15385 (= (_2!13665 (h!29171 mapDefault!12174)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15385 true) setRest!15386))))

(declare-fun mapIsEmpty!12174 () Bool)

(assert (=> mapIsEmpty!12174 mapRes!12174))

(declare-fun setNonEmpty!15386 () Bool)

(assert (=> setNonEmpty!15386 (= setRes!15386 true)))

(declare-fun setElem!15386 () Context!2494)

(declare-fun setRest!15385 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15386 (= (_2!13665 (h!29171 mapValue!12174)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15386 true) setRest!15385))))

(declare-fun condMapEmpty!12174 () Bool)

(assert (=> mapNonEmpty!12163 (= condMapEmpty!12174 (= mapRest!12163 ((as const (Array (_ BitVec 32) List!23854)) mapDefault!12174)))))

(assert (=> mapNonEmpty!12163 (and e!1354977 mapRes!12174)))

(declare-fun b!2126035 () Bool)

(assert (=> b!2126035 (= e!1354978 setRes!15386)))

(declare-fun condSetEmpty!15386 () Bool)

(assert (=> b!2126035 (= condSetEmpty!15386 (= (_2!13665 (h!29171 mapValue!12174)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15386 () Bool)

(assert (=> setIsEmpty!15386 setRes!15385))

(assert (= (and mapNonEmpty!12163 condMapEmpty!12174) mapIsEmpty!12174))

(assert (= (and mapNonEmpty!12163 (not condMapEmpty!12174)) mapNonEmpty!12174))

(assert (= (and b!2126035 condSetEmpty!15386) setIsEmpty!15385))

(assert (= (and b!2126035 (not condSetEmpty!15386)) setNonEmpty!15386))

(assert (= (and mapNonEmpty!12174 ((_ is Cons!23770) mapValue!12174)) b!2126035))

(assert (= (and b!2126034 condSetEmpty!15385) setIsEmpty!15386))

(assert (= (and b!2126034 (not condSetEmpty!15385)) setNonEmpty!15385))

(assert (= (and mapNonEmpty!12163 ((_ is Cons!23770) mapDefault!12174)) b!2126034))

(declare-fun m!2578058 () Bool)

(assert (=> mapNonEmpty!12174 m!2578058))

(declare-fun b!2126036 () Bool)

(declare-fun e!1354979 () Bool)

(declare-fun setRes!15387 () Bool)

(assert (=> b!2126036 (= e!1354979 setRes!15387)))

(declare-fun condSetEmpty!15387 () Bool)

(assert (=> b!2126036 (= condSetEmpty!15387 (= (_2!13665 (h!29171 mapValue!12162)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15387 () Bool)

(assert (=> setIsEmpty!15387 setRes!15387))

(declare-fun setNonEmpty!15387 () Bool)

(assert (=> setNonEmpty!15387 (= setRes!15387 true)))

(declare-fun setElem!15387 () Context!2494)

(declare-fun setRest!15387 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15387 (= (_2!13665 (h!29171 mapValue!12162)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15387 true) setRest!15387))))

(assert (=> mapNonEmpty!12163 e!1354979))

(assert (= (and b!2126036 condSetEmpty!15387) setIsEmpty!15387))

(assert (= (and b!2126036 (not condSetEmpty!15387)) setNonEmpty!15387))

(assert (= (and mapNonEmpty!12163 ((_ is Cons!23770) mapValue!12162)) b!2126036))

(declare-fun setIsEmpty!15392 () Bool)

(declare-fun setRes!15392 () Bool)

(assert (=> setIsEmpty!15392 setRes!15392))

(declare-fun b!2126051 () Bool)

(declare-fun e!1354992 () Bool)

(declare-fun tp!651942 () Bool)

(assert (=> b!2126051 (= e!1354992 tp!651942)))

(declare-fun e!1354996 () Bool)

(declare-fun mapDefault!12177 () List!23853)

(declare-fun tp!651943 () Bool)

(declare-fun b!2126052 () Bool)

(declare-fun setRes!15393 () Bool)

(assert (=> b!2126052 (= e!1354996 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 mapDefault!12177)))) e!1354992 tp_is_empty!9499 setRes!15393 tp!651943))))

(declare-fun condSetEmpty!15393 () Bool)

(assert (=> b!2126052 (= condSetEmpty!15393 (= (_2!13667 (h!29170 mapDefault!12177)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun b!2126053 () Bool)

(declare-fun e!1354997 () Bool)

(declare-fun tp!651945 () Bool)

(assert (=> b!2126053 (= e!1354997 tp!651945)))

(declare-fun e!1354993 () Bool)

(declare-fun b!2126054 () Bool)

(declare-fun mapValue!12177 () List!23853)

(declare-fun tp!651948 () Bool)

(assert (=> b!2126054 (= e!1354993 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 mapValue!12177)))) e!1354997 tp_is_empty!9499 setRes!15392 tp!651948))))

(declare-fun condSetEmpty!15392 () Bool)

(assert (=> b!2126054 (= condSetEmpty!15392 (= (_2!13667 (h!29170 mapValue!12177)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun condMapEmpty!12177 () Bool)

(assert (=> mapNonEmpty!12156 (= condMapEmpty!12177 (= mapRest!12156 ((as const (Array (_ BitVec 32) List!23853)) mapDefault!12177)))))

(declare-fun mapRes!12177 () Bool)

(assert (=> mapNonEmpty!12156 (= tp!651784 (and e!1354996 mapRes!12177))))

(declare-fun b!2126055 () Bool)

(declare-fun e!1354994 () Bool)

(declare-fun tp!651941 () Bool)

(assert (=> b!2126055 (= e!1354994 tp!651941)))

(declare-fun setIsEmpty!15393 () Bool)

(assert (=> setIsEmpty!15393 setRes!15393))

(declare-fun setNonEmpty!15392 () Bool)

(declare-fun setElem!15392 () Context!2494)

(declare-fun tp!651940 () Bool)

(assert (=> setNonEmpty!15392 (= setRes!15392 (and tp!651940 (inv!31365 setElem!15392) e!1354994))))

(declare-fun setRest!15393 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15392 (= (_2!13667 (h!29170 mapValue!12177)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15392 true) setRest!15393))))

(declare-fun b!2126056 () Bool)

(declare-fun e!1354995 () Bool)

(declare-fun tp!651944 () Bool)

(assert (=> b!2126056 (= e!1354995 tp!651944)))

(declare-fun mapNonEmpty!12177 () Bool)

(declare-fun tp!651947 () Bool)

(assert (=> mapNonEmpty!12177 (= mapRes!12177 (and tp!651947 e!1354993))))

(declare-fun mapRest!12177 () (Array (_ BitVec 32) List!23853))

(declare-fun mapKey!12177 () (_ BitVec 32))

(assert (=> mapNonEmpty!12177 (= mapRest!12156 (store mapRest!12177 mapKey!12177 mapValue!12177))))

(declare-fun setNonEmpty!15393 () Bool)

(declare-fun tp!651946 () Bool)

(declare-fun setElem!15393 () Context!2494)

(assert (=> setNonEmpty!15393 (= setRes!15393 (and tp!651946 (inv!31365 setElem!15393) e!1354995))))

(declare-fun setRest!15392 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15393 (= (_2!13667 (h!29170 mapDefault!12177)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15393 true) setRest!15392))))

(declare-fun mapIsEmpty!12177 () Bool)

(assert (=> mapIsEmpty!12177 mapRes!12177))

(assert (= (and mapNonEmpty!12156 condMapEmpty!12177) mapIsEmpty!12177))

(assert (= (and mapNonEmpty!12156 (not condMapEmpty!12177)) mapNonEmpty!12177))

(assert (= b!2126054 b!2126053))

(assert (= (and b!2126054 condSetEmpty!15392) setIsEmpty!15392))

(assert (= (and b!2126054 (not condSetEmpty!15392)) setNonEmpty!15392))

(assert (= setNonEmpty!15392 b!2126055))

(assert (= (and mapNonEmpty!12177 ((_ is Cons!23769) mapValue!12177)) b!2126054))

(assert (= b!2126052 b!2126051))

(assert (= (and b!2126052 condSetEmpty!15393) setIsEmpty!15393))

(assert (= (and b!2126052 (not condSetEmpty!15393)) setNonEmpty!15393))

(assert (= setNonEmpty!15393 b!2126056))

(assert (= (and mapNonEmpty!12156 ((_ is Cons!23769) mapDefault!12177)) b!2126052))

(declare-fun m!2578060 () Bool)

(assert (=> b!2126054 m!2578060))

(declare-fun m!2578062 () Bool)

(assert (=> b!2126052 m!2578062))

(declare-fun m!2578064 () Bool)

(assert (=> setNonEmpty!15393 m!2578064))

(declare-fun m!2578066 () Bool)

(assert (=> mapNonEmpty!12177 m!2578066))

(declare-fun m!2578068 () Bool)

(assert (=> setNonEmpty!15392 m!2578068))

(declare-fun setRes!15394 () Bool)

(declare-fun e!1355000 () Bool)

(declare-fun e!1354998 () Bool)

(declare-fun tp!651951 () Bool)

(declare-fun b!2126057 () Bool)

(assert (=> b!2126057 (= e!1355000 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 mapValue!12156)))) e!1354998 tp_is_empty!9499 setRes!15394 tp!651951))))

(declare-fun condSetEmpty!15394 () Bool)

(assert (=> b!2126057 (= condSetEmpty!15394 (= (_2!13667 (h!29170 mapValue!12156)) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> mapNonEmpty!12156 (= tp!651790 e!1355000)))

(declare-fun setIsEmpty!15394 () Bool)

(assert (=> setIsEmpty!15394 setRes!15394))

(declare-fun b!2126058 () Bool)

(declare-fun e!1354999 () Bool)

(declare-fun tp!651952 () Bool)

(assert (=> b!2126058 (= e!1354999 tp!651952)))

(declare-fun setElem!15394 () Context!2494)

(declare-fun setNonEmpty!15394 () Bool)

(declare-fun tp!651950 () Bool)

(assert (=> setNonEmpty!15394 (= setRes!15394 (and tp!651950 (inv!31365 setElem!15394) e!1354999))))

(declare-fun setRest!15394 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15394 (= (_2!13667 (h!29170 mapValue!12156)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15394 true) setRest!15394))))

(declare-fun b!2126059 () Bool)

(declare-fun tp!651949 () Bool)

(assert (=> b!2126059 (= e!1354998 tp!651949)))

(assert (= b!2126057 b!2126059))

(assert (= (and b!2126057 condSetEmpty!15394) setIsEmpty!15394))

(assert (= (and b!2126057 (not condSetEmpty!15394)) setNonEmpty!15394))

(assert (= setNonEmpty!15394 b!2126058))

(assert (= (and mapNonEmpty!12156 ((_ is Cons!23769) mapValue!12156)) b!2126057))

(declare-fun m!2578070 () Bool)

(assert (=> b!2126057 m!2578070))

(declare-fun m!2578072 () Bool)

(assert (=> setNonEmpty!15394 m!2578072))

(declare-fun setIsEmpty!15395 () Bool)

(declare-fun setRes!15395 () Bool)

(assert (=> setIsEmpty!15395 setRes!15395))

(declare-fun b!2126061 () Bool)

(declare-fun e!1355002 () Bool)

(declare-fun tp!651953 () Bool)

(assert (=> b!2126061 (= e!1355002 tp!651953)))

(declare-fun e!1355001 () Bool)

(assert (=> b!2125751 (= tp!651788 e!1355001)))

(declare-fun b!2126060 () Bool)

(declare-fun tp!651954 () Bool)

(assert (=> b!2126060 (= e!1355001 (and setRes!15395 tp!651954))))

(declare-fun condSetEmpty!15395 () Bool)

(assert (=> b!2126060 (= condSetEmpty!15395 (= (_1!13670 (_1!13671 (h!29174 (zeroValue!2740 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setNonEmpty!15395 () Bool)

(declare-fun tp!651955 () Bool)

(declare-fun setElem!15395 () Context!2494)

(assert (=> setNonEmpty!15395 (= setRes!15395 (and tp!651955 (inv!31365 setElem!15395) e!1355002))))

(declare-fun setRest!15395 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15395 (= (_1!13670 (_1!13671 (h!29174 (zeroValue!2740 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15395 true) setRest!15395))))

(assert (= (and b!2126060 condSetEmpty!15395) setIsEmpty!15395))

(assert (= (and b!2126060 (not condSetEmpty!15395)) setNonEmpty!15395))

(assert (= setNonEmpty!15395 b!2126061))

(assert (= (and b!2125751 ((_ is Cons!23773) (zeroValue!2740 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130)))))))) b!2126060))

(declare-fun m!2578074 () Bool)

(assert (=> setNonEmpty!15395 m!2578074))

(declare-fun setIsEmpty!15396 () Bool)

(declare-fun setRes!15396 () Bool)

(assert (=> setIsEmpty!15396 setRes!15396))

(declare-fun b!2126063 () Bool)

(declare-fun e!1355004 () Bool)

(declare-fun tp!651956 () Bool)

(assert (=> b!2126063 (= e!1355004 tp!651956)))

(declare-fun e!1355003 () Bool)

(assert (=> b!2125751 (= tp!651787 e!1355003)))

(declare-fun b!2126062 () Bool)

(declare-fun tp!651957 () Bool)

(assert (=> b!2126062 (= e!1355003 (and setRes!15396 tp!651957))))

(declare-fun condSetEmpty!15396 () Bool)

(assert (=> b!2126062 (= condSetEmpty!15396 (= (_1!13670 (_1!13671 (h!29174 (minValue!2740 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun tp!651958 () Bool)

(declare-fun setNonEmpty!15396 () Bool)

(declare-fun setElem!15396 () Context!2494)

(assert (=> setNonEmpty!15396 (= setRes!15396 (and tp!651958 (inv!31365 setElem!15396) e!1355004))))

(declare-fun setRest!15396 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15396 (= (_1!13670 (_1!13671 (h!29174 (minValue!2740 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15396 true) setRest!15396))))

(assert (= (and b!2126062 condSetEmpty!15396) setIsEmpty!15396))

(assert (= (and b!2126062 (not condSetEmpty!15396)) setNonEmpty!15396))

(assert (= setNonEmpty!15396 b!2126063))

(assert (= (and b!2125751 ((_ is Cons!23773) (minValue!2740 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130)))))))) b!2126062))

(declare-fun m!2578076 () Bool)

(assert (=> setNonEmpty!15396 m!2578076))

(declare-fun b!2126070 () Bool)

(declare-fun e!1355009 () Bool)

(declare-fun e!1355010 () Bool)

(assert (=> b!2126070 (= e!1355009 e!1355010)))

(declare-fun b!2126071 () Bool)

(declare-fun setRes!15399 () Bool)

(assert (=> b!2126071 (= e!1355010 setRes!15399)))

(declare-fun condSetEmpty!15399 () Bool)

(assert (=> b!2126071 (= condSetEmpty!15399 (= (z!5752 (h!29173 (t!196380 (_2!13668 (_1!13669 lt!795672))))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2125801 e!1355009))

(declare-fun setIsEmpty!15399 () Bool)

(assert (=> setIsEmpty!15399 setRes!15399))

(declare-fun setNonEmpty!15399 () Bool)

(assert (=> setNonEmpty!15399 (= setRes!15399 true)))

(declare-fun setElem!15399 () Context!2494)

(declare-fun setRest!15399 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15399 (= (z!5752 (h!29173 (t!196380 (_2!13668 (_1!13669 lt!795672))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15399 true) setRest!15399))))

(assert (= (and b!2126071 condSetEmpty!15399) setIsEmpty!15399))

(assert (= (and b!2126071 (not condSetEmpty!15399)) setNonEmpty!15399))

(assert (= b!2126070 b!2126071))

(assert (= (and b!2125801 ((_ is Cons!23772) (t!196380 (_2!13668 (_1!13669 lt!795672))))) b!2126070))

(declare-fun condSetEmpty!15402 () Bool)

(assert (=> setNonEmpty!15342 (= condSetEmpty!15402 (= setRest!15342 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15402 () Bool)

(assert (=> setNonEmpty!15342 (= tp!651805 setRes!15402)))

(declare-fun setIsEmpty!15402 () Bool)

(assert (=> setIsEmpty!15402 setRes!15402))

(declare-fun setElem!15402 () Context!2494)

(declare-fun e!1355013 () Bool)

(declare-fun setNonEmpty!15402 () Bool)

(declare-fun tp!651963 () Bool)

(assert (=> setNonEmpty!15402 (= setRes!15402 (and tp!651963 (inv!31365 setElem!15402) e!1355013))))

(declare-fun setRest!15402 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15402 (= setRest!15342 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15402 true) setRest!15402))))

(declare-fun b!2126076 () Bool)

(declare-fun tp!651964 () Bool)

(assert (=> b!2126076 (= e!1355013 tp!651964)))

(assert (= (and setNonEmpty!15342 condSetEmpty!15402) setIsEmpty!15402))

(assert (= (and setNonEmpty!15342 (not condSetEmpty!15402)) setNonEmpty!15402))

(assert (= setNonEmpty!15402 b!2126076))

(declare-fun m!2578078 () Bool)

(assert (=> setNonEmpty!15402 m!2578078))

(declare-fun setNonEmpty!15407 () Bool)

(declare-fun setRes!15407 () Bool)

(assert (=> setNonEmpty!15407 (= setRes!15407 true)))

(declare-fun mapDefault!12180 () List!23853)

(declare-fun setElem!15408 () Context!2494)

(declare-fun setRest!15408 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15407 (= (_2!13667 (h!29170 mapDefault!12180)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15408 true) setRest!15408))))

(declare-fun b!2126083 () Bool)

(declare-fun e!1355018 () Bool)

(assert (=> b!2126083 (= e!1355018 setRes!15407)))

(declare-fun condSetEmpty!15408 () Bool)

(assert (=> b!2126083 (= condSetEmpty!15408 (= (_2!13667 (h!29170 mapDefault!12180)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15407 () Bool)

(assert (=> setIsEmpty!15407 setRes!15407))

(declare-fun mapIsEmpty!12180 () Bool)

(declare-fun mapRes!12180 () Bool)

(assert (=> mapIsEmpty!12180 mapRes!12180))

(declare-fun b!2126084 () Bool)

(declare-fun e!1355019 () Bool)

(declare-fun setRes!15408 () Bool)

(assert (=> b!2126084 (= e!1355019 setRes!15408)))

(declare-fun condSetEmpty!15407 () Bool)

(declare-fun mapValue!12180 () List!23853)

(assert (=> b!2126084 (= condSetEmpty!15407 (= (_2!13667 (h!29170 mapValue!12180)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15408 () Bool)

(assert (=> setIsEmpty!15408 setRes!15408))

(declare-fun condMapEmpty!12180 () Bool)

(assert (=> mapNonEmpty!12162 (= condMapEmpty!12180 (= mapRest!12162 ((as const (Array (_ BitVec 32) List!23853)) mapDefault!12180)))))

(assert (=> mapNonEmpty!12162 (and e!1355018 mapRes!12180)))

(declare-fun setNonEmpty!15408 () Bool)

(assert (=> setNonEmpty!15408 (= setRes!15408 true)))

(declare-fun setElem!15407 () Context!2494)

(declare-fun setRest!15407 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15408 (= (_2!13667 (h!29170 mapValue!12180)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15407 true) setRest!15407))))

(declare-fun mapNonEmpty!12180 () Bool)

(assert (=> mapNonEmpty!12180 (= mapRes!12180 e!1355019)))

(declare-fun mapRest!12180 () (Array (_ BitVec 32) List!23853))

(declare-fun mapKey!12180 () (_ BitVec 32))

(assert (=> mapNonEmpty!12180 (= mapRest!12162 (store mapRest!12180 mapKey!12180 mapValue!12180))))

(assert (= (and mapNonEmpty!12162 condMapEmpty!12180) mapIsEmpty!12180))

(assert (= (and mapNonEmpty!12162 (not condMapEmpty!12180)) mapNonEmpty!12180))

(assert (= (and b!2126084 condSetEmpty!15407) setIsEmpty!15408))

(assert (= (and b!2126084 (not condSetEmpty!15407)) setNonEmpty!15408))

(assert (= (and mapNonEmpty!12180 ((_ is Cons!23769) mapValue!12180)) b!2126084))

(assert (= (and b!2126083 condSetEmpty!15408) setIsEmpty!15407))

(assert (= (and b!2126083 (not condSetEmpty!15408)) setNonEmpty!15407))

(assert (= (and mapNonEmpty!12162 ((_ is Cons!23769) mapDefault!12180)) b!2126083))

(declare-fun m!2578080 () Bool)

(assert (=> mapNonEmpty!12180 m!2578080))

(declare-fun b!2126085 () Bool)

(declare-fun e!1355020 () Bool)

(declare-fun setRes!15409 () Bool)

(assert (=> b!2126085 (= e!1355020 setRes!15409)))

(declare-fun condSetEmpty!15409 () Bool)

(assert (=> b!2126085 (= condSetEmpty!15409 (= (_2!13667 (h!29170 mapValue!12163)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15409 () Bool)

(assert (=> setIsEmpty!15409 setRes!15409))

(declare-fun setNonEmpty!15409 () Bool)

(assert (=> setNonEmpty!15409 (= setRes!15409 true)))

(declare-fun setElem!15409 () Context!2494)

(declare-fun setRest!15409 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15409 (= (_2!13667 (h!29170 mapValue!12163)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15409 true) setRest!15409))))

(assert (=> mapNonEmpty!12162 e!1355020))

(assert (= (and b!2126085 condSetEmpty!15409) setIsEmpty!15409))

(assert (= (and b!2126085 (not condSetEmpty!15409)) setNonEmpty!15409))

(assert (= (and mapNonEmpty!12162 ((_ is Cons!23769) mapValue!12163)) b!2126085))

(declare-fun setIsEmpty!15410 () Bool)

(declare-fun setRes!15410 () Bool)

(assert (=> setIsEmpty!15410 setRes!15410))

(declare-fun e!1355023 () Bool)

(declare-fun b!2126086 () Bool)

(declare-fun tp!651969 () Bool)

(declare-fun e!1355021 () Bool)

(declare-fun tp!651967 () Bool)

(assert (=> b!2126086 (= e!1355023 (and tp!651967 (inv!31365 (_2!13664 (_1!13665 (h!29171 mapDefault!12156)))) e!1355021 tp_is_empty!9499 setRes!15410 tp!651969))))

(declare-fun condSetEmpty!15410 () Bool)

(assert (=> b!2126086 (= condSetEmpty!15410 (= (_2!13665 (h!29171 mapDefault!12156)) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2125736 (= tp!651795 e!1355023)))

(declare-fun b!2126087 () Bool)

(declare-fun tp!651968 () Bool)

(assert (=> b!2126087 (= e!1355021 tp!651968)))

(declare-fun setElem!15410 () Context!2494)

(declare-fun tp!651966 () Bool)

(declare-fun e!1355022 () Bool)

(declare-fun setNonEmpty!15410 () Bool)

(assert (=> setNonEmpty!15410 (= setRes!15410 (and tp!651966 (inv!31365 setElem!15410) e!1355022))))

(declare-fun setRest!15410 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15410 (= (_2!13665 (h!29171 mapDefault!12156)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15410 true) setRest!15410))))

(declare-fun b!2126088 () Bool)

(declare-fun tp!651965 () Bool)

(assert (=> b!2126088 (= e!1355022 tp!651965)))

(assert (= b!2126086 b!2126087))

(assert (= (and b!2126086 condSetEmpty!15410) setIsEmpty!15410))

(assert (= (and b!2126086 (not condSetEmpty!15410)) setNonEmpty!15410))

(assert (= setNonEmpty!15410 b!2126088))

(assert (= (and b!2125736 ((_ is Cons!23770) mapDefault!12156)) b!2126086))

(declare-fun m!2578082 () Bool)

(assert (=> b!2126086 m!2578082))

(declare-fun m!2578084 () Bool)

(assert (=> setNonEmpty!15410 m!2578084))

(declare-fun condSetEmpty!15413 () Bool)

(assert (=> setNonEmpty!15345 (= condSetEmpty!15413 (= setRest!15345 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15413 () Bool)

(assert (=> setNonEmpty!15345 setRes!15413))

(declare-fun setIsEmpty!15413 () Bool)

(assert (=> setIsEmpty!15413 setRes!15413))

(declare-fun setNonEmpty!15413 () Bool)

(assert (=> setNonEmpty!15413 (= setRes!15413 true)))

(declare-fun setElem!15413 () Context!2494)

(declare-fun setRest!15413 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15413 (= setRest!15345 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15413 true) setRest!15413))))

(assert (= (and setNonEmpty!15345 condSetEmpty!15413) setIsEmpty!15413))

(assert (= (and setNonEmpty!15345 (not condSetEmpty!15413)) setNonEmpty!15413))

(declare-fun b!2126091 () Bool)

(declare-fun tp!651972 () Bool)

(declare-fun tp!651970 () Bool)

(declare-fun e!1355024 () Bool)

(assert (=> b!2126091 (= e!1355024 (and (inv!31366 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) tp!651972 (inv!31366 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) tp!651970))))

(declare-fun b!2126093 () Bool)

(declare-fun e!1355025 () Bool)

(declare-fun tp!651971 () Bool)

(assert (=> b!2126093 (= e!1355025 tp!651971)))

(declare-fun b!2126092 () Bool)

(assert (=> b!2126092 (= e!1355024 (and (inv!31373 (xs!10757 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) e!1355025))))

(assert (=> b!2125718 (= tp!651802 (and (inv!31366 (c!339969 (totalInput!2936 cacheFurthestNullable!130))) e!1355024))))

(assert (= (and b!2125718 ((_ is Node!7815) (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) b!2126091))

(assert (= b!2126092 b!2126093))

(assert (= (and b!2125718 ((_ is Leaf!11421) (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) b!2126092))

(declare-fun m!2578086 () Bool)

(assert (=> b!2126091 m!2578086))

(declare-fun m!2578088 () Bool)

(assert (=> b!2126091 m!2578088))

(declare-fun m!2578090 () Bool)

(assert (=> b!2126092 m!2578090))

(assert (=> b!2125718 m!2577862))

(declare-fun b!2126094 () Bool)

(declare-fun e!1355026 () Bool)

(declare-fun setRes!15414 () Bool)

(assert (=> b!2126094 (= e!1355026 setRes!15414)))

(declare-fun condSetEmpty!15414 () Bool)

(assert (=> b!2126094 (= condSetEmpty!15414 (= (_2!13665 (h!29171 mapDefault!12163)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15414 () Bool)

(assert (=> setIsEmpty!15414 setRes!15414))

(declare-fun setNonEmpty!15414 () Bool)

(assert (=> setNonEmpty!15414 (= setRes!15414 true)))

(declare-fun setElem!15414 () Context!2494)

(declare-fun setRest!15414 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15414 (= (_2!13665 (h!29171 mapDefault!12163)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15414 true) setRest!15414))))

(assert (=> b!2125798 e!1355026))

(assert (= (and b!2126094 condSetEmpty!15414) setIsEmpty!15414))

(assert (= (and b!2126094 (not condSetEmpty!15414)) setNonEmpty!15414))

(assert (= (and b!2125798 ((_ is Cons!23770) mapDefault!12163)) b!2126094))

(declare-fun b!2126095 () Bool)

(declare-fun tp!651975 () Bool)

(declare-fun e!1355027 () Bool)

(declare-fun tp!651973 () Bool)

(assert (=> b!2126095 (= e!1355027 (and (inv!31366 (left!18378 (c!339969 totalInput!886))) tp!651975 (inv!31366 (right!18708 (c!339969 totalInput!886))) tp!651973))))

(declare-fun b!2126097 () Bool)

(declare-fun e!1355028 () Bool)

(declare-fun tp!651974 () Bool)

(assert (=> b!2126097 (= e!1355028 tp!651974)))

(declare-fun b!2126096 () Bool)

(assert (=> b!2126096 (= e!1355027 (and (inv!31373 (xs!10757 (c!339969 totalInput!886))) e!1355028))))

(assert (=> b!2125748 (= tp!651789 (and (inv!31366 (c!339969 totalInput!886)) e!1355027))))

(assert (= (and b!2125748 ((_ is Node!7815) (c!339969 totalInput!886))) b!2126095))

(assert (= b!2126096 b!2126097))

(assert (= (and b!2125748 ((_ is Leaf!11421) (c!339969 totalInput!886))) b!2126096))

(declare-fun m!2578092 () Bool)

(assert (=> b!2126095 m!2578092))

(declare-fun m!2578094 () Bool)

(assert (=> b!2126095 m!2578094))

(declare-fun m!2578096 () Bool)

(assert (=> b!2126096 m!2578096))

(assert (=> b!2125748 m!2577820))

(declare-fun b!2126102 () Bool)

(declare-fun e!1355031 () Bool)

(declare-fun tp!651980 () Bool)

(declare-fun tp!651981 () Bool)

(assert (=> b!2126102 (= e!1355031 (and tp!651980 tp!651981))))

(assert (=> b!2125747 (= tp!651800 e!1355031)))

(assert (= (and b!2125747 ((_ is Cons!23768) (exprs!1747 setElem!15342))) b!2126102))

(declare-fun e!1355032 () Bool)

(declare-fun e!1355034 () Bool)

(declare-fun tp!651984 () Bool)

(declare-fun b!2126103 () Bool)

(declare-fun setRes!15415 () Bool)

(assert (=> b!2126103 (= e!1355034 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 mapDefault!12157)))) e!1355032 tp_is_empty!9499 setRes!15415 tp!651984))))

(declare-fun condSetEmpty!15415 () Bool)

(assert (=> b!2126103 (= condSetEmpty!15415 (= (_2!13667 (h!29170 mapDefault!12157)) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2125746 (= tp!651803 e!1355034)))

(declare-fun setIsEmpty!15415 () Bool)

(assert (=> setIsEmpty!15415 setRes!15415))

(declare-fun b!2126104 () Bool)

(declare-fun e!1355033 () Bool)

(declare-fun tp!651985 () Bool)

(assert (=> b!2126104 (= e!1355033 tp!651985)))

(declare-fun setElem!15415 () Context!2494)

(declare-fun tp!651983 () Bool)

(declare-fun setNonEmpty!15415 () Bool)

(assert (=> setNonEmpty!15415 (= setRes!15415 (and tp!651983 (inv!31365 setElem!15415) e!1355033))))

(declare-fun setRest!15415 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15415 (= (_2!13667 (h!29170 mapDefault!12157)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15415 true) setRest!15415))))

(declare-fun b!2126105 () Bool)

(declare-fun tp!651982 () Bool)

(assert (=> b!2126105 (= e!1355032 tp!651982)))

(assert (= b!2126103 b!2126105))

(assert (= (and b!2126103 condSetEmpty!15415) setIsEmpty!15415))

(assert (= (and b!2126103 (not condSetEmpty!15415)) setNonEmpty!15415))

(assert (= setNonEmpty!15415 b!2126104))

(assert (= (and b!2125746 ((_ is Cons!23769) mapDefault!12157)) b!2126103))

(declare-fun m!2578098 () Bool)

(assert (=> b!2126103 m!2578098))

(declare-fun m!2578100 () Bool)

(assert (=> setNonEmpty!15415 m!2578100))

(declare-fun b_lambda!70533 () Bool)

(assert (= b_lambda!70531 (or b!2125723 b_lambda!70533)))

(declare-fun bs!443554 () Bool)

(declare-fun d!644024 () Bool)

(assert (= bs!443554 (and d!644024 b!2125723)))

(assert (=> bs!443554 (= (dynLambda!11363 lambda!78826 (h!29173 (_2!13668 (_1!13669 lt!795672)))) (= (res!919798 (h!29173 (_2!13668 (_1!13669 lt!795672)))) (_1!13668 (_1!13669 lt!795672))))))

(assert (=> b!2125915 d!644024))

(declare-fun b_lambda!70535 () Bool)

(assert (= b_lambda!70529 (or b!2125730 b_lambda!70535)))

(declare-fun bs!443555 () Bool)

(declare-fun d!644026 () Bool)

(assert (= bs!443555 (and d!644026 b!2125730)))

(assert (=> bs!443555 (= (dynLambda!11363 lambda!78827 (h!29173 (_2!13668 (_1!13669 lt!795672)))) (= (totalInput!2935 (h!29173 (_2!13668 (_1!13669 lt!795672)))) totalInput!886))))

(assert (=> b!2125829 d!644026))

(check-sat (not setNonEmpty!15387) (not d!644022) (not b!2125748) (not b!2125887) (not setNonEmpty!15386) (not setNonEmpty!15363) (not b!2126035) (not b!2125821) (not b!2126070) (not b!2125983) (not d!643976) (not b!2126084) (not setNonEmpty!15356) (not bm!128747) (not setNonEmpty!15374) (not setNonEmpty!15360) (not b!2125937) (not b!2125984) (not b!2126091) (not b!2125892) (not b!2125945) (not setNonEmpty!15349) (not b!2125900) (not b!2126104) (not setNonEmpty!15407) (not b!2125836) (not b!2125886) b_and!171363 (not b!2125841) (not mapNonEmpty!12177) (not setNonEmpty!15393) (not b!2125994) (not b!2126088) (not d!644010) (not b!2125842) (not b_lambda!70535) (not b!2125855) (not b_next!62485) (not b!2126053) (not b!2126103) (not setNonEmpty!15395) (not b!2126086) (not b!2125982) (not b!2125831) b_and!171365 (not b!2126097) (not b!2126018) (not b!2126062) (not b!2125959) (not b_next!62493) (not b!2126017) (not b!2126059) (not b_next!62495) (not b!2125998) (not b!2126056) (not setNonEmpty!15350) (not b!2126105) (not b!2125956) (not d!643974) (not setNonEmpty!15409) (not b!2126083) (not b!2125981) (not b!2125824) (not setNonEmpty!15368) (not b!2126036) (not b!2125905) (not b!2125927) (not b!2125996) (not setNonEmpty!15375) (not b!2126051) (not b!2125830) (not b!2125995) (not setNonEmpty!15414) (not b!2126102) (not b!2125896) (not b!2126087) (not d!644018) (not setNonEmpty!15402) (not setNonEmpty!15408) (not b!2126076) (not b!2126019) (not b!2125891) (not b!2125939) (not setNonEmpty!15364) (not b!2126092) (not b!2125978) (not b!2125743) (not b!2125938) (not b!2126061) (not setNonEmpty!15365) (not b!2125833) (not b!2126058) (not b!2125957) (not b!2125857) (not b!2126054) (not b_next!62491) (not b!2125812) (not b!2125944) (not setNonEmpty!15415) (not b!2126095) (not b!2126093) (not b!2125979) (not b!2126063) (not b!2125834) (not b!2125909) (not mapNonEmpty!12180) (not setNonEmpty!15346) (not b!2126013) (not setNonEmpty!15399) (not b!2125916) (not b_next!62489) (not d!644002) (not setNonEmpty!15413) (not b!2125890) (not setNonEmpty!15369) (not b!2125958) (not b!2126034) (not b!2126020) (not setNonEmpty!15380) (not b!2126094) (not bm!128746) (not b!2125894) (not b!2126015) (not b!2125815) (not mapNonEmpty!12165) (not b!2125911) (not b_lambda!70533) (not d!644008) (not d!643972) (not b!2126021) (not b!2125718) (not setNonEmpty!15359) (not b!2125810) (not b!2126085) (not d!644016) (not b!2126027) (not b!2125818) (not b!2126057) (not d!643992) (not d!643962) b_and!171369 (not d!644020) (not d!643970) tp_is_empty!9499 (not b!2125966) (not b!2126026) (not d!643984) (not b!2125914) b_and!171371 (not b!2126016) (not setNonEmpty!15394) (not b!2126052) (not b!2125977) (not b!2126055) (not b!2125968) (not mapNonEmpty!12171) (not d!643960) (not b!2126014) (not b!2125967) (not d!644012) (not setNonEmpty!15385) (not setNonEmpty!15379) (not mapNonEmpty!12164) (not b!2125997) (not setNonEmpty!15396) (not b!2126060) (not b!2125926) (not d!643968) (not b!2125993) (not setNonEmpty!15392) (not mapNonEmpty!12174) (not b!2126096) (not b!2125980) (not d!644006) (not setNonEmpty!15376) (not mapNonEmpty!12168) b_and!171361 (not b_next!62487) (not d!644004) (not setNonEmpty!15355) b_and!171367 (not setNonEmpty!15410) (not bm!128748))
(check-sat b_and!171363 (not b_next!62485) b_and!171365 (not b_next!62491) (not b_next!62489) b_and!171369 b_and!171371 (not b_next!62493) (not b_next!62495) b_and!171361 (not b_next!62487) b_and!171367)
(get-model)

(assert (=> b!2125743 d!643958))

(declare-fun bs!443556 () Bool)

(declare-fun d!644028 () Bool)

(assert (= bs!443556 (and d!644028 d!643984)))

(declare-fun lambda!78853 () Int)

(assert (=> bs!443556 (= lambda!78853 lambda!78830)))

(assert (=> d!644028 (= (inv!31365 setElem!15363) (forall!4879 (exprs!1747 setElem!15363) lambda!78853))))

(declare-fun bs!443557 () Bool)

(assert (= bs!443557 d!644028))

(declare-fun m!2578102 () Bool)

(assert (=> bs!443557 m!2578102))

(assert (=> setNonEmpty!15363 d!644028))

(declare-fun bs!443558 () Bool)

(declare-fun d!644030 () Bool)

(assert (= bs!443558 (and d!644030 d!643984)))

(declare-fun lambda!78854 () Int)

(assert (=> bs!443558 (= lambda!78854 lambda!78830)))

(declare-fun bs!443559 () Bool)

(assert (= bs!443559 (and d!644030 d!644028)))

(assert (=> bs!443559 (= lambda!78854 lambda!78853)))

(assert (=> d!644030 (= (inv!31365 (_1!13666 (_1!13667 (h!29170 mapValue!12177)))) (forall!4879 (exprs!1747 (_1!13666 (_1!13667 (h!29170 mapValue!12177)))) lambda!78854))))

(declare-fun bs!443560 () Bool)

(assert (= bs!443560 d!644030))

(declare-fun m!2578104 () Bool)

(assert (=> bs!443560 m!2578104))

(assert (=> b!2126054 d!644030))

(declare-fun d!644032 () Bool)

(declare-fun res!919861 () Bool)

(declare-fun e!1355035 () Bool)

(assert (=> d!644032 (=> res!919861 e!1355035)))

(assert (=> d!644032 (= res!919861 ((_ is Nil!23772) Nil!23772))))

(assert (=> d!644032 (= (forall!4878 Nil!23772 (ite c!339990 lambda!78849 lambda!78848)) e!1355035)))

(declare-fun b!2126106 () Bool)

(declare-fun e!1355036 () Bool)

(assert (=> b!2126106 (= e!1355035 e!1355036)))

(declare-fun res!919862 () Bool)

(assert (=> b!2126106 (=> (not res!919862) (not e!1355036))))

(assert (=> b!2126106 (= res!919862 (dynLambda!11363 (ite c!339990 lambda!78849 lambda!78848) (h!29173 Nil!23772)))))

(declare-fun b!2126107 () Bool)

(assert (=> b!2126107 (= e!1355036 (forall!4878 (t!196380 Nil!23772) (ite c!339990 lambda!78849 lambda!78848)))))

(assert (= (and d!644032 (not res!919861)) b!2126106))

(assert (= (and b!2126106 res!919862) b!2126107))

(declare-fun b_lambda!70537 () Bool)

(assert (=> (not b_lambda!70537) (not b!2126106)))

(declare-fun m!2578106 () Bool)

(assert (=> b!2126106 m!2578106))

(declare-fun m!2578108 () Bool)

(assert (=> b!2126107 m!2578108))

(assert (=> bm!128747 d!644032))

(declare-fun bs!443561 () Bool)

(declare-fun d!644034 () Bool)

(assert (= bs!443561 (and d!644034 d!643984)))

(declare-fun lambda!78855 () Int)

(assert (=> bs!443561 (= lambda!78855 lambda!78830)))

(declare-fun bs!443562 () Bool)

(assert (= bs!443562 (and d!644034 d!644028)))

(assert (=> bs!443562 (= lambda!78855 lambda!78853)))

(declare-fun bs!443563 () Bool)

(assert (= bs!443563 (and d!644034 d!644030)))

(assert (=> bs!443563 (= lambda!78855 lambda!78854)))

(assert (=> d!644034 (= (inv!31365 setElem!15364) (forall!4879 (exprs!1747 setElem!15364) lambda!78855))))

(declare-fun bs!443564 () Bool)

(assert (= bs!443564 d!644034))

(declare-fun m!2578110 () Bool)

(assert (=> bs!443564 m!2578110))

(assert (=> setNonEmpty!15364 d!644034))

(declare-fun bs!443565 () Bool)

(declare-fun d!644036 () Bool)

(assert (= bs!443565 (and d!644036 d!643984)))

(declare-fun lambda!78856 () Int)

(assert (=> bs!443565 (= lambda!78856 lambda!78830)))

(declare-fun bs!443566 () Bool)

(assert (= bs!443566 (and d!644036 d!644028)))

(assert (=> bs!443566 (= lambda!78856 lambda!78853)))

(declare-fun bs!443567 () Bool)

(assert (= bs!443567 (and d!644036 d!644030)))

(assert (=> bs!443567 (= lambda!78856 lambda!78854)))

(declare-fun bs!443568 () Bool)

(assert (= bs!443568 (and d!644036 d!644034)))

(assert (=> bs!443568 (= lambda!78856 lambda!78855)))

(assert (=> d!644036 (= (inv!31365 (_1!13666 (_1!13667 (h!29170 mapDefault!12157)))) (forall!4879 (exprs!1747 (_1!13666 (_1!13667 (h!29170 mapDefault!12157)))) lambda!78856))))

(declare-fun bs!443569 () Bool)

(assert (= bs!443569 d!644036))

(declare-fun m!2578112 () Bool)

(assert (=> bs!443569 m!2578112))

(assert (=> b!2126103 d!644036))

(declare-fun bs!443570 () Bool)

(declare-fun d!644038 () Bool)

(assert (= bs!443570 (and d!644038 d!644028)))

(declare-fun lambda!78857 () Int)

(assert (=> bs!443570 (= lambda!78857 lambda!78853)))

(declare-fun bs!443571 () Bool)

(assert (= bs!443571 (and d!644038 d!644034)))

(assert (=> bs!443571 (= lambda!78857 lambda!78855)))

(declare-fun bs!443572 () Bool)

(assert (= bs!443572 (and d!644038 d!644036)))

(assert (=> bs!443572 (= lambda!78857 lambda!78856)))

(declare-fun bs!443573 () Bool)

(assert (= bs!443573 (and d!644038 d!644030)))

(assert (=> bs!443573 (= lambda!78857 lambda!78854)))

(declare-fun bs!443574 () Bool)

(assert (= bs!443574 (and d!644038 d!643984)))

(assert (=> bs!443574 (= lambda!78857 lambda!78830)))

(assert (=> d!644038 (= (inv!31365 (_2!13664 (_1!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))))) (forall!4879 (exprs!1747 (_2!13664 (_1!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))))) lambda!78857))))

(declare-fun bs!443575 () Bool)

(assert (= bs!443575 d!644038))

(declare-fun m!2578114 () Bool)

(assert (=> bs!443575 m!2578114))

(assert (=> b!2125977 d!644038))

(declare-fun bs!443576 () Bool)

(declare-fun d!644040 () Bool)

(assert (= bs!443576 (and d!644040 d!644028)))

(declare-fun lambda!78858 () Int)

(assert (=> bs!443576 (= lambda!78858 lambda!78853)))

(declare-fun bs!443577 () Bool)

(assert (= bs!443577 (and d!644040 d!644034)))

(assert (=> bs!443577 (= lambda!78858 lambda!78855)))

(declare-fun bs!443578 () Bool)

(assert (= bs!443578 (and d!644040 d!644036)))

(assert (=> bs!443578 (= lambda!78858 lambda!78856)))

(declare-fun bs!443579 () Bool)

(assert (= bs!443579 (and d!644040 d!644030)))

(assert (=> bs!443579 (= lambda!78858 lambda!78854)))

(declare-fun bs!443580 () Bool)

(assert (= bs!443580 (and d!644040 d!644038)))

(assert (=> bs!443580 (= lambda!78858 lambda!78857)))

(declare-fun bs!443581 () Bool)

(assert (= bs!443581 (and d!644040 d!643984)))

(assert (=> bs!443581 (= lambda!78858 lambda!78830)))

(assert (=> d!644040 (= (inv!31365 (_2!13664 (_1!13665 (h!29171 mapDefault!12171)))) (forall!4879 (exprs!1747 (_2!13664 (_1!13665 (h!29171 mapDefault!12171)))) lambda!78858))))

(declare-fun bs!443582 () Bool)

(assert (= bs!443582 d!644040))

(declare-fun m!2578116 () Bool)

(assert (=> bs!443582 m!2578116))

(assert (=> b!2126018 d!644040))

(declare-fun d!644042 () Bool)

(assert (=> d!644042 (= (valid!1949 (_3!1956 lt!795733)) (validCacheMapDown!247 (cache!2776 (_3!1956 lt!795733))))))

(declare-fun bs!443583 () Bool)

(assert (= bs!443583 d!644042))

(declare-fun m!2578118 () Bool)

(assert (=> bs!443583 m!2578118))

(assert (=> b!2125886 d!644042))

(declare-fun d!644044 () Bool)

(declare-fun res!919867 () Bool)

(declare-fun e!1355039 () Bool)

(assert (=> d!644044 (=> (not res!919867) (not e!1355039))))

(declare-fun list!9541 (IArray!15635) List!23855)

(assert (=> d!644044 (= res!919867 (<= (size!18587 (list!9541 (xs!10757 (c!339969 input!5507)))) 512))))

(assert (=> d!644044 (= (inv!31372 (c!339969 input!5507)) e!1355039)))

(declare-fun b!2126112 () Bool)

(declare-fun res!919868 () Bool)

(assert (=> b!2126112 (=> (not res!919868) (not e!1355039))))

(assert (=> b!2126112 (= res!919868 (= (csize!15861 (c!339969 input!5507)) (size!18587 (list!9541 (xs!10757 (c!339969 input!5507))))))))

(declare-fun b!2126113 () Bool)

(assert (=> b!2126113 (= e!1355039 (and (> (csize!15861 (c!339969 input!5507)) 0) (<= (csize!15861 (c!339969 input!5507)) 512)))))

(assert (= (and d!644044 res!919867) b!2126112))

(assert (= (and b!2126112 res!919868) b!2126113))

(declare-fun m!2578120 () Bool)

(assert (=> d!644044 m!2578120))

(assert (=> d!644044 m!2578120))

(declare-fun m!2578122 () Bool)

(assert (=> d!644044 m!2578122))

(assert (=> b!2126112 m!2578120))

(assert (=> b!2126112 m!2578120))

(assert (=> b!2126112 m!2578122))

(assert (=> b!2125812 d!644044))

(declare-fun d!644046 () Bool)

(declare-fun c!339995 () Bool)

(assert (=> d!644046 (= c!339995 ((_ is Node!7815) (left!18378 (c!339969 totalInput!886))))))

(declare-fun e!1355040 () Bool)

(assert (=> d!644046 (= (inv!31366 (left!18378 (c!339969 totalInput!886))) e!1355040)))

(declare-fun b!2126114 () Bool)

(assert (=> b!2126114 (= e!1355040 (inv!31371 (left!18378 (c!339969 totalInput!886))))))

(declare-fun b!2126115 () Bool)

(declare-fun e!1355041 () Bool)

(assert (=> b!2126115 (= e!1355040 e!1355041)))

(declare-fun res!919869 () Bool)

(assert (=> b!2126115 (= res!919869 (not ((_ is Leaf!11421) (left!18378 (c!339969 totalInput!886)))))))

(assert (=> b!2126115 (=> res!919869 e!1355041)))

(declare-fun b!2126116 () Bool)

(assert (=> b!2126116 (= e!1355041 (inv!31372 (left!18378 (c!339969 totalInput!886))))))

(assert (= (and d!644046 c!339995) b!2126114))

(assert (= (and d!644046 (not c!339995)) b!2126115))

(assert (= (and b!2126115 (not res!919869)) b!2126116))

(declare-fun m!2578124 () Bool)

(assert (=> b!2126114 m!2578124))

(declare-fun m!2578126 () Bool)

(assert (=> b!2126116 m!2578126))

(assert (=> b!2126095 d!644046))

(declare-fun d!644048 () Bool)

(declare-fun c!339996 () Bool)

(assert (=> d!644048 (= c!339996 ((_ is Node!7815) (right!18708 (c!339969 totalInput!886))))))

(declare-fun e!1355042 () Bool)

(assert (=> d!644048 (= (inv!31366 (right!18708 (c!339969 totalInput!886))) e!1355042)))

(declare-fun b!2126117 () Bool)

(assert (=> b!2126117 (= e!1355042 (inv!31371 (right!18708 (c!339969 totalInput!886))))))

(declare-fun b!2126118 () Bool)

(declare-fun e!1355043 () Bool)

(assert (=> b!2126118 (= e!1355042 e!1355043)))

(declare-fun res!919870 () Bool)

(assert (=> b!2126118 (= res!919870 (not ((_ is Leaf!11421) (right!18708 (c!339969 totalInput!886)))))))

(assert (=> b!2126118 (=> res!919870 e!1355043)))

(declare-fun b!2126119 () Bool)

(assert (=> b!2126119 (= e!1355043 (inv!31372 (right!18708 (c!339969 totalInput!886))))))

(assert (= (and d!644048 c!339996) b!2126117))

(assert (= (and d!644048 (not c!339996)) b!2126118))

(assert (= (and b!2126118 (not res!919870)) b!2126119))

(declare-fun m!2578128 () Bool)

(assert (=> b!2126117 m!2578128))

(declare-fun m!2578130 () Bool)

(assert (=> b!2126119 m!2578130))

(assert (=> b!2126095 d!644048))

(declare-fun d!644050 () Bool)

(assert (=> d!644050 (= (inv!31373 (xs!10757 (c!339969 input!5507))) (<= (size!18587 (innerList!7875 (xs!10757 (c!339969 input!5507)))) 2147483647))))

(declare-fun bs!443584 () Bool)

(assert (= bs!443584 d!644050))

(declare-fun m!2578132 () Bool)

(assert (=> bs!443584 m!2578132))

(assert (=> b!2125938 d!644050))

(declare-fun d!644052 () Bool)

(declare-fun res!919877 () Bool)

(declare-fun e!1355046 () Bool)

(assert (=> d!644052 (=> (not res!919877) (not e!1355046))))

(assert (=> d!644052 (= res!919877 (= (csize!15860 (c!339969 input!5507)) (+ (size!18588 (left!18378 (c!339969 input!5507))) (size!18588 (right!18708 (c!339969 input!5507))))))))

(assert (=> d!644052 (= (inv!31371 (c!339969 input!5507)) e!1355046)))

(declare-fun b!2126126 () Bool)

(declare-fun res!919878 () Bool)

(assert (=> b!2126126 (=> (not res!919878) (not e!1355046))))

(assert (=> b!2126126 (= res!919878 (and (not (= (left!18378 (c!339969 input!5507)) Empty!7815)) (not (= (right!18708 (c!339969 input!5507)) Empty!7815))))))

(declare-fun b!2126127 () Bool)

(declare-fun res!919879 () Bool)

(assert (=> b!2126127 (=> (not res!919879) (not e!1355046))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1236 (Conc!7815) Int)

(assert (=> b!2126127 (= res!919879 (= (cheight!8026 (c!339969 input!5507)) (+ (max!0 (height!1236 (left!18378 (c!339969 input!5507))) (height!1236 (right!18708 (c!339969 input!5507)))) 1)))))

(declare-fun b!2126128 () Bool)

(assert (=> b!2126128 (= e!1355046 (<= 0 (cheight!8026 (c!339969 input!5507))))))

(assert (= (and d!644052 res!919877) b!2126126))

(assert (= (and b!2126126 res!919878) b!2126127))

(assert (= (and b!2126127 res!919879) b!2126128))

(declare-fun m!2578134 () Bool)

(assert (=> d!644052 m!2578134))

(declare-fun m!2578136 () Bool)

(assert (=> d!644052 m!2578136))

(declare-fun m!2578138 () Bool)

(assert (=> b!2126127 m!2578138))

(declare-fun m!2578140 () Bool)

(assert (=> b!2126127 m!2578140))

(assert (=> b!2126127 m!2578138))

(assert (=> b!2126127 m!2578140))

(declare-fun m!2578142 () Bool)

(assert (=> b!2126127 m!2578142))

(assert (=> b!2125810 d!644052))

(declare-fun d!644054 () Bool)

(declare-fun lt!795758 () Int)

(assert (=> d!644054 (>= lt!795758 0)))

(declare-fun e!1355049 () Int)

(assert (=> d!644054 (= lt!795758 e!1355049)))

(declare-fun c!339999 () Bool)

(assert (=> d!644054 (= c!339999 ((_ is Nil!23771) lt!795755))))

(assert (=> d!644054 (= (size!18587 lt!795755) lt!795758)))

(declare-fun b!2126133 () Bool)

(assert (=> b!2126133 (= e!1355049 0)))

(declare-fun b!2126134 () Bool)

(assert (=> b!2126134 (= e!1355049 (+ 1 (size!18587 (t!196379 lt!795755))))))

(assert (= (and d!644054 c!339999) b!2126133))

(assert (= (and d!644054 (not c!339999)) b!2126134))

(declare-fun m!2578144 () Bool)

(assert (=> b!2126134 m!2578144))

(assert (=> b!2125927 d!644054))

(declare-fun d!644056 () Bool)

(declare-fun lt!795759 () Int)

(assert (=> d!644056 (>= lt!795759 0)))

(declare-fun e!1355050 () Int)

(assert (=> d!644056 (= lt!795759 e!1355050)))

(declare-fun c!340000 () Bool)

(assert (=> d!644056 (= c!340000 ((_ is Nil!23771) (list!9539 (_1!13672 lt!795669))))))

(assert (=> d!644056 (= (size!18587 (list!9539 (_1!13672 lt!795669))) lt!795759)))

(declare-fun b!2126135 () Bool)

(assert (=> b!2126135 (= e!1355050 0)))

(declare-fun b!2126136 () Bool)

(assert (=> b!2126136 (= e!1355050 (+ 1 (size!18587 (t!196379 (list!9539 (_1!13672 lt!795669))))))))

(assert (= (and d!644056 c!340000) b!2126135))

(assert (= (and d!644056 (not c!340000)) b!2126136))

(declare-fun m!2578146 () Bool)

(assert (=> b!2126136 m!2578146))

(assert (=> b!2125927 d!644056))

(declare-fun d!644058 () Bool)

(declare-fun lt!795760 () Int)

(assert (=> d!644058 (>= lt!795760 0)))

(declare-fun e!1355051 () Int)

(assert (=> d!644058 (= lt!795760 e!1355051)))

(declare-fun c!340001 () Bool)

(assert (=> d!644058 (= c!340001 ((_ is Nil!23771) (list!9539 (_2!13672 lt!795669))))))

(assert (=> d!644058 (= (size!18587 (list!9539 (_2!13672 lt!795669))) lt!795760)))

(declare-fun b!2126137 () Bool)

(assert (=> b!2126137 (= e!1355051 0)))

(declare-fun b!2126138 () Bool)

(assert (=> b!2126138 (= e!1355051 (+ 1 (size!18587 (t!196379 (list!9539 (_2!13672 lt!795669))))))))

(assert (= (and d!644058 c!340001) b!2126137))

(assert (= (and d!644058 (not c!340001)) b!2126138))

(declare-fun m!2578148 () Bool)

(assert (=> b!2126138 m!2578148))

(assert (=> b!2125927 d!644058))

(declare-fun b!2126151 () Bool)

(declare-fun res!919892 () Bool)

(declare-fun e!1355056 () Bool)

(assert (=> b!2126151 (=> (not res!919892) (not e!1355056))))

(assert (=> b!2126151 (= res!919892 (isBalanced!2453 (right!18708 (c!339969 (_2!13672 lt!795692)))))))

(declare-fun b!2126152 () Bool)

(declare-fun res!919894 () Bool)

(assert (=> b!2126152 (=> (not res!919894) (not e!1355056))))

(assert (=> b!2126152 (= res!919894 (isBalanced!2453 (left!18378 (c!339969 (_2!13672 lt!795692)))))))

(declare-fun b!2126154 () Bool)

(declare-fun isEmpty!14317 (Conc!7815) Bool)

(assert (=> b!2126154 (= e!1355056 (not (isEmpty!14317 (right!18708 (c!339969 (_2!13672 lt!795692))))))))

(declare-fun b!2126155 () Bool)

(declare-fun res!919895 () Bool)

(assert (=> b!2126155 (=> (not res!919895) (not e!1355056))))

(assert (=> b!2126155 (= res!919895 (<= (- (height!1236 (left!18378 (c!339969 (_2!13672 lt!795692)))) (height!1236 (right!18708 (c!339969 (_2!13672 lt!795692))))) 1))))

(declare-fun b!2126156 () Bool)

(declare-fun e!1355057 () Bool)

(assert (=> b!2126156 (= e!1355057 e!1355056)))

(declare-fun res!919897 () Bool)

(assert (=> b!2126156 (=> (not res!919897) (not e!1355056))))

(assert (=> b!2126156 (= res!919897 (<= (- 1) (- (height!1236 (left!18378 (c!339969 (_2!13672 lt!795692)))) (height!1236 (right!18708 (c!339969 (_2!13672 lt!795692)))))))))

(declare-fun d!644060 () Bool)

(declare-fun res!919896 () Bool)

(assert (=> d!644060 (=> res!919896 e!1355057)))

(assert (=> d!644060 (= res!919896 (not ((_ is Node!7815) (c!339969 (_2!13672 lt!795692)))))))

(assert (=> d!644060 (= (isBalanced!2453 (c!339969 (_2!13672 lt!795692))) e!1355057)))

(declare-fun b!2126153 () Bool)

(declare-fun res!919893 () Bool)

(assert (=> b!2126153 (=> (not res!919893) (not e!1355056))))

(assert (=> b!2126153 (= res!919893 (not (isEmpty!14317 (left!18378 (c!339969 (_2!13672 lt!795692))))))))

(assert (= (and d!644060 (not res!919896)) b!2126156))

(assert (= (and b!2126156 res!919897) b!2126155))

(assert (= (and b!2126155 res!919895) b!2126152))

(assert (= (and b!2126152 res!919894) b!2126151))

(assert (= (and b!2126151 res!919892) b!2126153))

(assert (= (and b!2126153 res!919893) b!2126154))

(declare-fun m!2578150 () Bool)

(assert (=> b!2126152 m!2578150))

(declare-fun m!2578152 () Bool)

(assert (=> b!2126155 m!2578152))

(declare-fun m!2578154 () Bool)

(assert (=> b!2126155 m!2578154))

(declare-fun m!2578156 () Bool)

(assert (=> b!2126151 m!2578156))

(assert (=> b!2126156 m!2578152))

(assert (=> b!2126156 m!2578154))

(declare-fun m!2578158 () Bool)

(assert (=> b!2126153 m!2578158))

(declare-fun m!2578160 () Bool)

(assert (=> b!2126154 m!2578160))

(assert (=> b!2125841 d!644060))

(declare-fun bs!443585 () Bool)

(declare-fun d!644062 () Bool)

(assert (= bs!443585 (and d!644062 d!644028)))

(declare-fun lambda!78859 () Int)

(assert (=> bs!443585 (= lambda!78859 lambda!78853)))

(declare-fun bs!443586 () Bool)

(assert (= bs!443586 (and d!644062 d!644034)))

(assert (=> bs!443586 (= lambda!78859 lambda!78855)))

(declare-fun bs!443587 () Bool)

(assert (= bs!443587 (and d!644062 d!644040)))

(assert (=> bs!443587 (= lambda!78859 lambda!78858)))

(declare-fun bs!443588 () Bool)

(assert (= bs!443588 (and d!644062 d!644036)))

(assert (=> bs!443588 (= lambda!78859 lambda!78856)))

(declare-fun bs!443589 () Bool)

(assert (= bs!443589 (and d!644062 d!644030)))

(assert (=> bs!443589 (= lambda!78859 lambda!78854)))

(declare-fun bs!443590 () Bool)

(assert (= bs!443590 (and d!644062 d!644038)))

(assert (=> bs!443590 (= lambda!78859 lambda!78857)))

(declare-fun bs!443591 () Bool)

(assert (= bs!443591 (and d!644062 d!643984)))

(assert (=> bs!443591 (= lambda!78859 lambda!78830)))

(assert (=> d!644062 (= (inv!31365 setElem!15359) (forall!4879 (exprs!1747 setElem!15359) lambda!78859))))

(declare-fun bs!443592 () Bool)

(assert (= bs!443592 d!644062))

(declare-fun m!2578162 () Bool)

(assert (=> bs!443592 m!2578162))

(assert (=> setNonEmpty!15359 d!644062))

(declare-fun d!644064 () Bool)

(declare-fun lt!795761 () Int)

(assert (=> d!644064 (>= lt!795761 0)))

(declare-fun e!1355058 () Int)

(assert (=> d!644064 (= lt!795761 e!1355058)))

(declare-fun c!340002 () Bool)

(assert (=> d!644064 (= c!340002 ((_ is Nil!23771) (list!9539 input!5507)))))

(assert (=> d!644064 (= (size!18587 (list!9539 input!5507)) lt!795761)))

(declare-fun b!2126157 () Bool)

(assert (=> b!2126157 (= e!1355058 0)))

(declare-fun b!2126158 () Bool)

(assert (=> b!2126158 (= e!1355058 (+ 1 (size!18587 (t!196379 (list!9539 input!5507)))))))

(assert (= (and d!644064 c!340002) b!2126157))

(assert (= (and d!644064 (not c!340002)) b!2126158))

(declare-fun m!2578164 () Bool)

(assert (=> b!2126158 m!2578164))

(assert (=> d!644018 d!644064))

(assert (=> d!644018 d!643970))

(declare-fun d!644066 () Bool)

(declare-fun lt!795764 () Int)

(assert (=> d!644066 (= lt!795764 (size!18587 (list!9540 (c!339969 input!5507))))))

(assert (=> d!644066 (= lt!795764 (ite ((_ is Empty!7815) (c!339969 input!5507)) 0 (ite ((_ is Leaf!11421) (c!339969 input!5507)) (csize!15861 (c!339969 input!5507)) (csize!15860 (c!339969 input!5507)))))))

(assert (=> d!644066 (= (size!18588 (c!339969 input!5507)) lt!795764)))

(declare-fun bs!443593 () Bool)

(assert (= bs!443593 d!644066))

(assert (=> bs!443593 m!2577898))

(assert (=> bs!443593 m!2577898))

(declare-fun m!2578166 () Bool)

(assert (=> bs!443593 m!2578166))

(assert (=> d!644018 d!644066))

(declare-fun bs!443594 () Bool)

(declare-fun d!644068 () Bool)

(assert (= bs!443594 (and d!644068 d!644028)))

(declare-fun lambda!78860 () Int)

(assert (=> bs!443594 (= lambda!78860 lambda!78853)))

(declare-fun bs!443595 () Bool)

(assert (= bs!443595 (and d!644068 d!644034)))

(assert (=> bs!443595 (= lambda!78860 lambda!78855)))

(declare-fun bs!443596 () Bool)

(assert (= bs!443596 (and d!644068 d!644040)))

(assert (=> bs!443596 (= lambda!78860 lambda!78858)))

(declare-fun bs!443597 () Bool)

(assert (= bs!443597 (and d!644068 d!644036)))

(assert (=> bs!443597 (= lambda!78860 lambda!78856)))

(declare-fun bs!443598 () Bool)

(assert (= bs!443598 (and d!644068 d!644030)))

(assert (=> bs!443598 (= lambda!78860 lambda!78854)))

(declare-fun bs!443599 () Bool)

(assert (= bs!443599 (and d!644068 d!644038)))

(assert (=> bs!443599 (= lambda!78860 lambda!78857)))

(declare-fun bs!443600 () Bool)

(assert (= bs!443600 (and d!644068 d!644062)))

(assert (=> bs!443600 (= lambda!78860 lambda!78859)))

(declare-fun bs!443601 () Bool)

(assert (= bs!443601 (and d!644068 d!643984)))

(assert (=> bs!443601 (= lambda!78860 lambda!78830)))

(assert (=> d!644068 (= (inv!31365 (_2!13664 (_1!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))))) (forall!4879 (exprs!1747 (_2!13664 (_1!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))))) lambda!78860))))

(declare-fun bs!443602 () Bool)

(assert (= bs!443602 d!644068))

(declare-fun m!2578168 () Bool)

(assert (=> bs!443602 m!2578168))

(assert (=> b!2125980 d!644068))

(declare-fun bs!443603 () Bool)

(declare-fun d!644070 () Bool)

(assert (= bs!443603 (and d!644070 d!644028)))

(declare-fun lambda!78861 () Int)

(assert (=> bs!443603 (= lambda!78861 lambda!78853)))

(declare-fun bs!443604 () Bool)

(assert (= bs!443604 (and d!644070 d!644034)))

(assert (=> bs!443604 (= lambda!78861 lambda!78855)))

(declare-fun bs!443605 () Bool)

(assert (= bs!443605 (and d!644070 d!644040)))

(assert (=> bs!443605 (= lambda!78861 lambda!78858)))

(declare-fun bs!443606 () Bool)

(assert (= bs!443606 (and d!644070 d!644036)))

(assert (=> bs!443606 (= lambda!78861 lambda!78856)))

(declare-fun bs!443607 () Bool)

(assert (= bs!443607 (and d!644070 d!644030)))

(assert (=> bs!443607 (= lambda!78861 lambda!78854)))

(declare-fun bs!443608 () Bool)

(assert (= bs!443608 (and d!644070 d!644062)))

(assert (=> bs!443608 (= lambda!78861 lambda!78859)))

(declare-fun bs!443609 () Bool)

(assert (= bs!443609 (and d!644070 d!643984)))

(assert (=> bs!443609 (= lambda!78861 lambda!78830)))

(declare-fun bs!443610 () Bool)

(assert (= bs!443610 (and d!644070 d!644038)))

(assert (=> bs!443610 (= lambda!78861 lambda!78857)))

(declare-fun bs!443611 () Bool)

(assert (= bs!443611 (and d!644070 d!644068)))

(assert (=> bs!443611 (= lambda!78861 lambda!78860)))

(assert (=> d!644070 (= (inv!31365 (_1!13666 (_1!13667 (h!29170 mapDefault!12177)))) (forall!4879 (exprs!1747 (_1!13666 (_1!13667 (h!29170 mapDefault!12177)))) lambda!78861))))

(declare-fun bs!443612 () Bool)

(assert (= bs!443612 d!644070))

(declare-fun m!2578170 () Bool)

(assert (=> bs!443612 m!2578170))

(assert (=> b!2126052 d!644070))

(declare-fun bs!443613 () Bool)

(declare-fun d!644072 () Bool)

(assert (= bs!443613 (and d!644072 d!644028)))

(declare-fun lambda!78862 () Int)

(assert (=> bs!443613 (= lambda!78862 lambda!78853)))

(declare-fun bs!443614 () Bool)

(assert (= bs!443614 (and d!644072 d!644034)))

(assert (=> bs!443614 (= lambda!78862 lambda!78855)))

(declare-fun bs!443615 () Bool)

(assert (= bs!443615 (and d!644072 d!644040)))

(assert (=> bs!443615 (= lambda!78862 lambda!78858)))

(declare-fun bs!443616 () Bool)

(assert (= bs!443616 (and d!644072 d!644030)))

(assert (=> bs!443616 (= lambda!78862 lambda!78854)))

(declare-fun bs!443617 () Bool)

(assert (= bs!443617 (and d!644072 d!644062)))

(assert (=> bs!443617 (= lambda!78862 lambda!78859)))

(declare-fun bs!443618 () Bool)

(assert (= bs!443618 (and d!644072 d!643984)))

(assert (=> bs!443618 (= lambda!78862 lambda!78830)))

(declare-fun bs!443619 () Bool)

(assert (= bs!443619 (and d!644072 d!644036)))

(assert (=> bs!443619 (= lambda!78862 lambda!78856)))

(declare-fun bs!443620 () Bool)

(assert (= bs!443620 (and d!644072 d!644070)))

(assert (=> bs!443620 (= lambda!78862 lambda!78861)))

(declare-fun bs!443621 () Bool)

(assert (= bs!443621 (and d!644072 d!644038)))

(assert (=> bs!443621 (= lambda!78862 lambda!78857)))

(declare-fun bs!443622 () Bool)

(assert (= bs!443622 (and d!644072 d!644068)))

(assert (=> bs!443622 (= lambda!78862 lambda!78860)))

(assert (=> d!644072 (= (inv!31365 setElem!15375) (forall!4879 (exprs!1747 setElem!15375) lambda!78862))))

(declare-fun bs!443623 () Bool)

(assert (= bs!443623 d!644072))

(declare-fun m!2578172 () Bool)

(assert (=> bs!443623 m!2578172))

(assert (=> setNonEmpty!15375 d!644072))

(declare-fun d!644074 () Bool)

(declare-fun e!1355061 () Bool)

(assert (=> d!644074 e!1355061))

(declare-fun res!919900 () Bool)

(assert (=> d!644074 (=> res!919900 e!1355061)))

(declare-fun lt!795767 () Option!4874)

(declare-fun isEmpty!14318 (Option!4874) Bool)

(assert (=> d!644074 (= res!919900 (isEmpty!14318 lt!795767))))

(declare-fun choose!12671 (CacheFurthestNullable!602 (InoxSet Context!2494) Int Int) Option!4874)

(assert (=> d!644074 (= lt!795767 (choose!12671 cacheFurthestNullable!130 z!3883 lt!795671 e!1354761))))

(assert (=> d!644074 (and (>= e!1354761 (- 1)) (< e!1354761 lt!795671))))

(assert (=> d!644074 (= (get!7322 cacheFurthestNullable!130 z!3883 lt!795671 e!1354761) lt!795767)))

(declare-fun b!2126161 () Bool)

(declare-fun get!7323 (Option!4874) Int)

(assert (=> b!2126161 (= e!1355061 (= (get!7323 lt!795767) (furthestNullablePosition!14 z!3883 lt!795671 (totalInput!2936 cacheFurthestNullable!130) (size!18586 (totalInput!2936 cacheFurthestNullable!130)) e!1354761)))))

(assert (= (and d!644074 (not res!919900)) b!2126161))

(declare-fun m!2578174 () Bool)

(assert (=> d!644074 m!2578174))

(declare-fun m!2578176 () Bool)

(assert (=> d!644074 m!2578176))

(declare-fun m!2578178 () Bool)

(assert (=> b!2126161 m!2578178))

(declare-fun m!2578180 () Bool)

(assert (=> b!2126161 m!2578180))

(assert (=> b!2126161 m!2578180))

(declare-fun m!2578182 () Bool)

(assert (=> b!2126161 m!2578182))

(assert (=> d!644010 d!644074))

(declare-fun b!2126172 () Bool)

(declare-fun e!1355068 () Int)

(assert (=> b!2126172 (= e!1355068 e!1354761)))

(declare-fun b!2126173 () Bool)

(declare-fun e!1355070 () Int)

(assert (=> b!2126173 (= e!1355070 lt!795671)))

(declare-fun b!2126174 () Bool)

(declare-fun e!1355069 () Bool)

(assert (=> b!2126174 (= e!1355069 (lostCauseZipper!61 z!3883))))

(declare-fun lt!795772 () Int)

(declare-fun d!644076 () Bool)

(assert (=> d!644076 (and (>= lt!795772 (- 1)) (< lt!795772 (size!18586 totalInput!886)) (>= lt!795772 e!1354761) (or (= lt!795772 e!1354761) (>= lt!795772 lt!795671)))))

(assert (=> d!644076 (= lt!795772 e!1355068)))

(declare-fun c!340008 () Bool)

(assert (=> d!644076 (= c!340008 e!1355069)))

(declare-fun res!919903 () Bool)

(assert (=> d!644076 (=> res!919903 e!1355069)))

(assert (=> d!644076 (= res!919903 (= lt!795671 (size!18586 totalInput!886)))))

(assert (=> d!644076 (and (>= lt!795671 0) (<= lt!795671 (size!18586 totalInput!886)))))

(assert (=> d!644076 (= (furthestNullablePosition!14 z!3883 lt!795671 totalInput!886 (size!18586 totalInput!886) e!1354761) lt!795772)))

(declare-fun b!2126175 () Bool)

(declare-fun lt!795773 () (InoxSet Context!2494))

(assert (=> b!2126175 (= e!1355068 (furthestNullablePosition!14 lt!795773 (+ lt!795671 1) totalInput!886 (size!18586 totalInput!886) e!1355070))))

(declare-fun derivationStepZipper!88 ((InoxSet Context!2494) C!11500) (InoxSet Context!2494))

(assert (=> b!2126175 (= lt!795773 (derivationStepZipper!88 z!3883 (apply!5917 totalInput!886 lt!795671)))))

(declare-fun c!340007 () Bool)

(assert (=> b!2126175 (= c!340007 (nullableZipper!70 lt!795773))))

(declare-fun b!2126176 () Bool)

(assert (=> b!2126176 (= e!1355070 e!1354761)))

(assert (= (and d!644076 (not res!919903)) b!2126174))

(assert (= (and d!644076 c!340008) b!2126172))

(assert (= (and d!644076 (not c!340008)) b!2126175))

(assert (= (and b!2126175 c!340007) b!2126173))

(assert (= (and b!2126175 (not c!340007)) b!2126176))

(assert (=> b!2126174 m!2577956))

(assert (=> b!2126175 m!2577878))

(declare-fun m!2578184 () Bool)

(assert (=> b!2126175 m!2578184))

(assert (=> b!2126175 m!2577970))

(assert (=> b!2126175 m!2577970))

(declare-fun m!2578186 () Bool)

(assert (=> b!2126175 m!2578186))

(declare-fun m!2578188 () Bool)

(assert (=> b!2126175 m!2578188))

(assert (=> d!644010 d!644076))

(declare-fun b!2126177 () Bool)

(declare-fun e!1355071 () Int)

(assert (=> b!2126177 (= e!1355071 e!1354761)))

(declare-fun b!2126178 () Bool)

(declare-fun e!1355073 () Int)

(assert (=> b!2126178 (= e!1355073 lt!795671)))

(declare-fun b!2126179 () Bool)

(declare-fun e!1355072 () Bool)

(assert (=> b!2126179 (= e!1355072 (lostCauseZipper!61 z!3883))))

(declare-fun d!644078 () Bool)

(declare-fun lt!795774 () Int)

(assert (=> d!644078 (and (>= lt!795774 (- 1)) (< lt!795774 lt!795670) (>= lt!795774 e!1354761) (or (= lt!795774 e!1354761) (>= lt!795774 lt!795671)))))

(assert (=> d!644078 (= lt!795774 e!1355071)))

(declare-fun c!340010 () Bool)

(assert (=> d!644078 (= c!340010 e!1355072)))

(declare-fun res!919904 () Bool)

(assert (=> d!644078 (=> res!919904 e!1355072)))

(assert (=> d!644078 (= res!919904 (= lt!795671 lt!795670))))

(assert (=> d!644078 (and (>= lt!795671 0) (<= lt!795671 lt!795670))))

(assert (=> d!644078 (= (furthestNullablePosition!14 z!3883 lt!795671 totalInput!886 lt!795670 e!1354761) lt!795774)))

(declare-fun lt!795775 () (InoxSet Context!2494))

(declare-fun b!2126180 () Bool)

(assert (=> b!2126180 (= e!1355071 (furthestNullablePosition!14 lt!795775 (+ lt!795671 1) totalInput!886 lt!795670 e!1355073))))

(assert (=> b!2126180 (= lt!795775 (derivationStepZipper!88 z!3883 (apply!5917 totalInput!886 lt!795671)))))

(declare-fun c!340009 () Bool)

(assert (=> b!2126180 (= c!340009 (nullableZipper!70 lt!795775))))

(declare-fun b!2126181 () Bool)

(assert (=> b!2126181 (= e!1355073 e!1354761)))

(assert (= (and d!644078 (not res!919904)) b!2126179))

(assert (= (and d!644078 c!340010) b!2126177))

(assert (= (and d!644078 (not c!340010)) b!2126180))

(assert (= (and b!2126180 c!340009) b!2126178))

(assert (= (and b!2126180 (not c!340009)) b!2126181))

(assert (=> b!2126179 m!2577956))

(declare-fun m!2578190 () Bool)

(assert (=> b!2126180 m!2578190))

(assert (=> b!2126180 m!2577970))

(assert (=> b!2126180 m!2577970))

(assert (=> b!2126180 m!2578186))

(declare-fun m!2578192 () Bool)

(assert (=> b!2126180 m!2578192))

(assert (=> d!644010 d!644078))

(assert (=> d!644010 d!644012))

(declare-fun d!644080 () Bool)

(declare-fun res!919905 () Bool)

(declare-fun e!1355074 () Bool)

(assert (=> d!644080 (=> res!919905 e!1355074)))

(assert (=> d!644080 (= res!919905 ((_ is Nil!23772) Nil!23772))))

(assert (=> d!644080 (= (forall!4878 Nil!23772 lambda!78848) e!1355074)))

(declare-fun b!2126182 () Bool)

(declare-fun e!1355075 () Bool)

(assert (=> b!2126182 (= e!1355074 e!1355075)))

(declare-fun res!919906 () Bool)

(assert (=> b!2126182 (=> (not res!919906) (not e!1355075))))

(assert (=> b!2126182 (= res!919906 (dynLambda!11363 lambda!78848 (h!29173 Nil!23772)))))

(declare-fun b!2126183 () Bool)

(assert (=> b!2126183 (= e!1355075 (forall!4878 (t!196380 Nil!23772) lambda!78848))))

(assert (= (and d!644080 (not res!919905)) b!2126182))

(assert (= (and b!2126182 res!919906) b!2126183))

(declare-fun b_lambda!70539 () Bool)

(assert (=> (not b_lambda!70539) (not b!2126182)))

(declare-fun m!2578194 () Bool)

(assert (=> b!2126182 m!2578194))

(declare-fun m!2578196 () Bool)

(assert (=> b!2126183 m!2578196))

(assert (=> d!644010 d!644080))

(declare-fun bs!443624 () Bool)

(declare-fun d!644082 () Bool)

(assert (= bs!443624 (and d!644082 d!644028)))

(declare-fun lambda!78863 () Int)

(assert (=> bs!443624 (= lambda!78863 lambda!78853)))

(declare-fun bs!443625 () Bool)

(assert (= bs!443625 (and d!644082 d!644034)))

(assert (=> bs!443625 (= lambda!78863 lambda!78855)))

(declare-fun bs!443626 () Bool)

(assert (= bs!443626 (and d!644082 d!644040)))

(assert (=> bs!443626 (= lambda!78863 lambda!78858)))

(declare-fun bs!443627 () Bool)

(assert (= bs!443627 (and d!644082 d!644072)))

(assert (=> bs!443627 (= lambda!78863 lambda!78862)))

(declare-fun bs!443628 () Bool)

(assert (= bs!443628 (and d!644082 d!644030)))

(assert (=> bs!443628 (= lambda!78863 lambda!78854)))

(declare-fun bs!443629 () Bool)

(assert (= bs!443629 (and d!644082 d!644062)))

(assert (=> bs!443629 (= lambda!78863 lambda!78859)))

(declare-fun bs!443630 () Bool)

(assert (= bs!443630 (and d!644082 d!643984)))

(assert (=> bs!443630 (= lambda!78863 lambda!78830)))

(declare-fun bs!443631 () Bool)

(assert (= bs!443631 (and d!644082 d!644036)))

(assert (=> bs!443631 (= lambda!78863 lambda!78856)))

(declare-fun bs!443632 () Bool)

(assert (= bs!443632 (and d!644082 d!644070)))

(assert (=> bs!443632 (= lambda!78863 lambda!78861)))

(declare-fun bs!443633 () Bool)

(assert (= bs!443633 (and d!644082 d!644038)))

(assert (=> bs!443633 (= lambda!78863 lambda!78857)))

(declare-fun bs!443634 () Bool)

(assert (= bs!443634 (and d!644082 d!644068)))

(assert (=> bs!443634 (= lambda!78863 lambda!78860)))

(assert (=> d!644082 (= (inv!31365 setElem!15365) (forall!4879 (exprs!1747 setElem!15365) lambda!78863))))

(declare-fun bs!443635 () Bool)

(assert (= bs!443635 d!644082))

(declare-fun m!2578198 () Bool)

(assert (=> bs!443635 m!2578198))

(assert (=> setNonEmpty!15365 d!644082))

(declare-fun d!644084 () Bool)

(declare-fun c!340013 () Bool)

(assert (=> d!644084 (= c!340013 ((_ is Nil!23771) lt!795755))))

(declare-fun e!1355078 () (InoxSet C!11500))

(assert (=> d!644084 (= (content!3391 lt!795755) e!1355078)))

(declare-fun b!2126188 () Bool)

(assert (=> b!2126188 (= e!1355078 ((as const (Array C!11500 Bool)) false))))

(declare-fun b!2126189 () Bool)

(assert (=> b!2126189 (= e!1355078 ((_ map or) (store ((as const (Array C!11500 Bool)) false) (h!29172 lt!795755) true) (content!3391 (t!196379 lt!795755))))))

(assert (= (and d!644084 c!340013) b!2126188))

(assert (= (and d!644084 (not c!340013)) b!2126189))

(declare-fun m!2578200 () Bool)

(assert (=> b!2126189 m!2578200))

(declare-fun m!2578202 () Bool)

(assert (=> b!2126189 m!2578202))

(assert (=> d!644022 d!644084))

(declare-fun d!644086 () Bool)

(declare-fun c!340014 () Bool)

(assert (=> d!644086 (= c!340014 ((_ is Nil!23771) (list!9539 (_1!13672 lt!795669))))))

(declare-fun e!1355079 () (InoxSet C!11500))

(assert (=> d!644086 (= (content!3391 (list!9539 (_1!13672 lt!795669))) e!1355079)))

(declare-fun b!2126190 () Bool)

(assert (=> b!2126190 (= e!1355079 ((as const (Array C!11500 Bool)) false))))

(declare-fun b!2126191 () Bool)

(assert (=> b!2126191 (= e!1355079 ((_ map or) (store ((as const (Array C!11500 Bool)) false) (h!29172 (list!9539 (_1!13672 lt!795669))) true) (content!3391 (t!196379 (list!9539 (_1!13672 lt!795669))))))))

(assert (= (and d!644086 c!340014) b!2126190))

(assert (= (and d!644086 (not c!340014)) b!2126191))

(declare-fun m!2578204 () Bool)

(assert (=> b!2126191 m!2578204))

(declare-fun m!2578206 () Bool)

(assert (=> b!2126191 m!2578206))

(assert (=> d!644022 d!644086))

(declare-fun d!644088 () Bool)

(declare-fun c!340015 () Bool)

(assert (=> d!644088 (= c!340015 ((_ is Nil!23771) (list!9539 (_2!13672 lt!795669))))))

(declare-fun e!1355080 () (InoxSet C!11500))

(assert (=> d!644088 (= (content!3391 (list!9539 (_2!13672 lt!795669))) e!1355080)))

(declare-fun b!2126192 () Bool)

(assert (=> b!2126192 (= e!1355080 ((as const (Array C!11500 Bool)) false))))

(declare-fun b!2126193 () Bool)

(assert (=> b!2126193 (= e!1355080 ((_ map or) (store ((as const (Array C!11500 Bool)) false) (h!29172 (list!9539 (_2!13672 lt!795669))) true) (content!3391 (t!196379 (list!9539 (_2!13672 lt!795669))))))))

(assert (= (and d!644088 c!340015) b!2126192))

(assert (= (and d!644088 (not c!340015)) b!2126193))

(declare-fun m!2578208 () Bool)

(assert (=> b!2126193 m!2578208))

(declare-fun m!2578210 () Bool)

(assert (=> b!2126193 m!2578210))

(assert (=> d!644022 d!644088))

(declare-fun bs!443636 () Bool)

(declare-fun d!644090 () Bool)

(assert (= bs!443636 (and d!644090 d!644028)))

(declare-fun lambda!78864 () Int)

(assert (=> bs!443636 (= lambda!78864 lambda!78853)))

(declare-fun bs!443637 () Bool)

(assert (= bs!443637 (and d!644090 d!644034)))

(assert (=> bs!443637 (= lambda!78864 lambda!78855)))

(declare-fun bs!443638 () Bool)

(assert (= bs!443638 (and d!644090 d!644040)))

(assert (=> bs!443638 (= lambda!78864 lambda!78858)))

(declare-fun bs!443639 () Bool)

(assert (= bs!443639 (and d!644090 d!644072)))

(assert (=> bs!443639 (= lambda!78864 lambda!78862)))

(declare-fun bs!443640 () Bool)

(assert (= bs!443640 (and d!644090 d!644030)))

(assert (=> bs!443640 (= lambda!78864 lambda!78854)))

(declare-fun bs!443641 () Bool)

(assert (= bs!443641 (and d!644090 d!644062)))

(assert (=> bs!443641 (= lambda!78864 lambda!78859)))

(declare-fun bs!443642 () Bool)

(assert (= bs!443642 (and d!644090 d!643984)))

(assert (=> bs!443642 (= lambda!78864 lambda!78830)))

(declare-fun bs!443643 () Bool)

(assert (= bs!443643 (and d!644090 d!644082)))

(assert (=> bs!443643 (= lambda!78864 lambda!78863)))

(declare-fun bs!443644 () Bool)

(assert (= bs!443644 (and d!644090 d!644036)))

(assert (=> bs!443644 (= lambda!78864 lambda!78856)))

(declare-fun bs!443645 () Bool)

(assert (= bs!443645 (and d!644090 d!644070)))

(assert (=> bs!443645 (= lambda!78864 lambda!78861)))

(declare-fun bs!443646 () Bool)

(assert (= bs!443646 (and d!644090 d!644038)))

(assert (=> bs!443646 (= lambda!78864 lambda!78857)))

(declare-fun bs!443647 () Bool)

(assert (= bs!443647 (and d!644090 d!644068)))

(assert (=> bs!443647 (= lambda!78864 lambda!78860)))

(assert (=> d!644090 (= (inv!31365 setElem!15394) (forall!4879 (exprs!1747 setElem!15394) lambda!78864))))

(declare-fun bs!443648 () Bool)

(assert (= bs!443648 d!644090))

(declare-fun m!2578212 () Bool)

(assert (=> bs!443648 m!2578212))

(assert (=> setNonEmpty!15394 d!644090))

(declare-fun d!644092 () Bool)

(declare-fun lt!795778 () Bool)

(declare-datatypes ((List!23858 0))(
  ( (Nil!23774) (Cons!23774 (h!29175 Context!2494) (t!196386 List!23858)) )
))
(declare-fun exists!699 (List!23858 Int) Bool)

(declare-fun toList!1068 ((InoxSet Context!2494)) List!23858)

(assert (=> d!644092 (= lt!795778 (exists!699 (toList!1068 z!3883) lambda!78833))))

(declare-fun choose!12672 ((InoxSet Context!2494) Int) Bool)

(assert (=> d!644092 (= lt!795778 (choose!12672 z!3883 lambda!78833))))

(assert (=> d!644092 (= (exists!698 z!3883 lambda!78833) lt!795778)))

(declare-fun bs!443649 () Bool)

(assert (= bs!443649 d!644092))

(declare-fun m!2578214 () Bool)

(assert (=> bs!443649 m!2578214))

(assert (=> bs!443649 m!2578214))

(declare-fun m!2578216 () Bool)

(assert (=> bs!443649 m!2578216))

(declare-fun m!2578218 () Bool)

(assert (=> bs!443649 m!2578218))

(assert (=> d!644006 d!644092))

(declare-fun d!644094 () Bool)

(declare-fun res!919911 () Bool)

(declare-fun e!1355083 () Bool)

(assert (=> d!644094 (=> (not res!919911) (not e!1355083))))

(declare-fun valid!1952 (MutableMap!2394) Bool)

(assert (=> d!644094 (= res!919911 (valid!1952 (cache!2775 cacheUp!991)))))

(assert (=> d!644094 (= (validCacheMapUp!249 (cache!2775 cacheUp!991)) e!1355083)))

(declare-fun b!2126198 () Bool)

(declare-fun res!919912 () Bool)

(assert (=> b!2126198 (=> (not res!919912) (not e!1355083))))

(declare-fun invariantList!304 (List!23853) Bool)

(declare-datatypes ((ListMap!657 0))(
  ( (ListMap!658 (toList!1069 List!23853)) )
))
(declare-fun map!4842 (MutableMap!2394) ListMap!657)

(assert (=> b!2126198 (= res!919912 (invariantList!304 (toList!1069 (map!4842 (cache!2775 cacheUp!991)))))))

(declare-fun b!2126199 () Bool)

(declare-fun lambda!78867 () Int)

(declare-fun forall!4880 (List!23853 Int) Bool)

(assert (=> b!2126199 (= e!1355083 (forall!4880 (toList!1069 (map!4842 (cache!2775 cacheUp!991))) lambda!78867))))

(assert (= (and d!644094 res!919911) b!2126198))

(assert (= (and b!2126198 res!919912) b!2126199))

(declare-fun m!2578221 () Bool)

(assert (=> d!644094 m!2578221))

(declare-fun m!2578223 () Bool)

(assert (=> b!2126198 m!2578223))

(declare-fun m!2578225 () Bool)

(assert (=> b!2126198 m!2578225))

(assert (=> b!2126199 m!2578223))

(declare-fun m!2578227 () Bool)

(assert (=> b!2126199 m!2578227))

(assert (=> b!2125818 d!644094))

(declare-fun b!2126218 () Bool)

(declare-fun e!1355094 () Int)

(declare-fun call!128756 () Int)

(assert (=> b!2126218 (= e!1355094 call!128756)))

(declare-fun b!2126219 () Bool)

(declare-fun e!1355095 () Bool)

(declare-fun lt!795781 () List!23855)

(assert (=> b!2126219 (= e!1355095 (= (size!18587 lt!795781) e!1355094))))

(declare-fun c!340026 () Bool)

(assert (=> b!2126219 (= c!340026 (<= (- (size!18587 (list!9539 totalInput!886)) (size!18587 lt!795675)) 0))))

(declare-fun b!2126220 () Bool)

(declare-fun e!1355098 () List!23855)

(assert (=> b!2126220 (= e!1355098 Nil!23771)))

(declare-fun b!2126221 () Bool)

(declare-fun e!1355096 () List!23855)

(assert (=> b!2126221 (= e!1355096 (drop!1188 (t!196379 (list!9539 totalInput!886)) (- (- (size!18587 (list!9539 totalInput!886)) (size!18587 lt!795675)) 1)))))

(declare-fun b!2126222 () Bool)

(assert (=> b!2126222 (= e!1355096 (list!9539 totalInput!886))))

(declare-fun d!644096 () Bool)

(assert (=> d!644096 e!1355095))

(declare-fun res!919915 () Bool)

(assert (=> d!644096 (=> (not res!919915) (not e!1355095))))

(assert (=> d!644096 (= res!919915 (= ((_ map implies) (content!3391 lt!795781) (content!3391 (list!9539 totalInput!886))) ((as const (InoxSet C!11500)) true)))))

(assert (=> d!644096 (= lt!795781 e!1355098)))

(declare-fun c!340027 () Bool)

(assert (=> d!644096 (= c!340027 ((_ is Nil!23771) (list!9539 totalInput!886)))))

(assert (=> d!644096 (= (drop!1188 (list!9539 totalInput!886) (- (size!18587 (list!9539 totalInput!886)) (size!18587 lt!795675))) lt!795781)))

(declare-fun b!2126223 () Bool)

(declare-fun e!1355097 () Int)

(assert (=> b!2126223 (= e!1355094 e!1355097)))

(declare-fun c!340024 () Bool)

(assert (=> b!2126223 (= c!340024 (>= (- (size!18587 (list!9539 totalInput!886)) (size!18587 lt!795675)) call!128756))))

(declare-fun b!2126224 () Bool)

(assert (=> b!2126224 (= e!1355098 e!1355096)))

(declare-fun c!340025 () Bool)

(assert (=> b!2126224 (= c!340025 (<= (- (size!18587 (list!9539 totalInput!886)) (size!18587 lt!795675)) 0))))

(declare-fun b!2126225 () Bool)

(assert (=> b!2126225 (= e!1355097 (- call!128756 (- (size!18587 (list!9539 totalInput!886)) (size!18587 lt!795675))))))

(declare-fun bm!128751 () Bool)

(assert (=> bm!128751 (= call!128756 (size!18587 (list!9539 totalInput!886)))))

(declare-fun b!2126226 () Bool)

(assert (=> b!2126226 (= e!1355097 0)))

(assert (= (and d!644096 c!340027) b!2126220))

(assert (= (and d!644096 (not c!340027)) b!2126224))

(assert (= (and b!2126224 c!340025) b!2126222))

(assert (= (and b!2126224 (not c!340025)) b!2126221))

(assert (= (and d!644096 res!919915) b!2126219))

(assert (= (and b!2126219 c!340026) b!2126218))

(assert (= (and b!2126219 (not c!340026)) b!2126223))

(assert (= (and b!2126223 c!340024) b!2126226))

(assert (= (and b!2126223 (not c!340024)) b!2126225))

(assert (= (or b!2126218 b!2126223 b!2126225) bm!128751))

(declare-fun m!2578229 () Bool)

(assert (=> b!2126219 m!2578229))

(declare-fun m!2578231 () Bool)

(assert (=> b!2126221 m!2578231))

(declare-fun m!2578233 () Bool)

(assert (=> d!644096 m!2578233))

(assert (=> d!644096 m!2577830))

(declare-fun m!2578235 () Bool)

(assert (=> d!644096 m!2578235))

(assert (=> bm!128751 m!2577830))

(assert (=> bm!128751 m!2577892))

(assert (=> d!643968 d!644096))

(declare-fun d!644098 () Bool)

(declare-fun lt!795782 () Int)

(assert (=> d!644098 (>= lt!795782 0)))

(declare-fun e!1355099 () Int)

(assert (=> d!644098 (= lt!795782 e!1355099)))

(declare-fun c!340028 () Bool)

(assert (=> d!644098 (= c!340028 ((_ is Nil!23771) (list!9539 totalInput!886)))))

(assert (=> d!644098 (= (size!18587 (list!9539 totalInput!886)) lt!795782)))

(declare-fun b!2126227 () Bool)

(assert (=> b!2126227 (= e!1355099 0)))

(declare-fun b!2126228 () Bool)

(assert (=> b!2126228 (= e!1355099 (+ 1 (size!18587 (t!196379 (list!9539 totalInput!886)))))))

(assert (= (and d!644098 c!340028) b!2126227))

(assert (= (and d!644098 (not c!340028)) b!2126228))

(declare-fun m!2578237 () Bool)

(assert (=> b!2126228 m!2578237))

(assert (=> d!643968 d!644098))

(declare-fun d!644100 () Bool)

(declare-fun lt!795783 () Int)

(assert (=> d!644100 (>= lt!795783 0)))

(declare-fun e!1355100 () Int)

(assert (=> d!644100 (= lt!795783 e!1355100)))

(declare-fun c!340029 () Bool)

(assert (=> d!644100 (= c!340029 ((_ is Nil!23771) lt!795675))))

(assert (=> d!644100 (= (size!18587 lt!795675) lt!795783)))

(declare-fun b!2126229 () Bool)

(assert (=> b!2126229 (= e!1355100 0)))

(declare-fun b!2126230 () Bool)

(assert (=> b!2126230 (= e!1355100 (+ 1 (size!18587 (t!196379 lt!795675))))))

(assert (= (and d!644100 c!340029) b!2126229))

(assert (= (and d!644100 (not c!340029)) b!2126230))

(declare-fun m!2578239 () Bool)

(assert (=> b!2126230 m!2578239))

(assert (=> d!643968 d!644100))

(declare-fun b!2126239 () Bool)

(declare-fun e!1355105 () List!23855)

(assert (=> b!2126239 (= e!1355105 Nil!23771)))

(declare-fun b!2126242 () Bool)

(declare-fun e!1355106 () List!23855)

(assert (=> b!2126242 (= e!1355106 (++!6317 (list!9540 (left!18378 (c!339969 totalInput!886))) (list!9540 (right!18708 (c!339969 totalInput!886)))))))

(declare-fun d!644102 () Bool)

(declare-fun c!340034 () Bool)

(assert (=> d!644102 (= c!340034 ((_ is Empty!7815) (c!339969 totalInput!886)))))

(assert (=> d!644102 (= (list!9540 (c!339969 totalInput!886)) e!1355105)))

(declare-fun b!2126241 () Bool)

(assert (=> b!2126241 (= e!1355106 (list!9541 (xs!10757 (c!339969 totalInput!886))))))

(declare-fun b!2126240 () Bool)

(assert (=> b!2126240 (= e!1355105 e!1355106)))

(declare-fun c!340035 () Bool)

(assert (=> b!2126240 (= c!340035 ((_ is Leaf!11421) (c!339969 totalInput!886)))))

(assert (= (and d!644102 c!340034) b!2126239))

(assert (= (and d!644102 (not c!340034)) b!2126240))

(assert (= (and b!2126240 c!340035) b!2126241))

(assert (= (and b!2126240 (not c!340035)) b!2126242))

(declare-fun m!2578241 () Bool)

(assert (=> b!2126242 m!2578241))

(declare-fun m!2578243 () Bool)

(assert (=> b!2126242 m!2578243))

(assert (=> b!2126242 m!2578241))

(assert (=> b!2126242 m!2578243))

(declare-fun m!2578245 () Bool)

(assert (=> b!2126242 m!2578245))

(declare-fun m!2578247 () Bool)

(assert (=> b!2126241 m!2578247))

(assert (=> d!643976 d!644102))

(declare-fun bs!443650 () Bool)

(declare-fun d!644104 () Bool)

(assert (= bs!443650 (and d!644104 b!2125889)))

(declare-fun lambda!78872 () Int)

(assert (=> bs!443650 (= (= lt!795736 e!1354761) (= lambda!78872 lambda!78849))))

(declare-fun bs!443651 () Bool)

(assert (= bs!443651 (and d!644104 b!2125723)))

(assert (=> bs!443651 (= (= lt!795736 (_1!13668 (_1!13669 lt!795672))) (= lambda!78872 lambda!78826))))

(declare-fun bs!443652 () Bool)

(assert (= bs!443652 (and d!644104 b!2125896)))

(assert (=> bs!443652 (not (= lambda!78872 lambda!78852))))

(declare-fun bs!443653 () Bool)

(assert (= bs!443653 (and d!644104 d!644010)))

(assert (=> bs!443653 (= lambda!78872 lambda!78848)))

(declare-fun bs!443654 () Bool)

(assert (= bs!443654 (and d!644104 b!2125730)))

(assert (=> bs!443654 (not (= lambda!78872 lambda!78827))))

(declare-fun bs!443655 () Bool)

(assert (= bs!443655 (and d!644104 b!2125892)))

(assert (=> bs!443655 (= (= lt!795736 lt!795744) (= lambda!78872 lambda!78850))))

(declare-fun bs!443656 () Bool)

(assert (= bs!443656 (and d!644104 b!2125894)))

(assert (=> bs!443656 (= (= lt!795736 (_1!13668 (_1!13669 lt!795733))) (= lambda!78872 lambda!78851))))

(assert (=> d!644104 true))

(declare-fun lambda!78873 () Int)

(assert (=> bs!443650 (= (= (ite c!339990 e!1354761 lt!795744) e!1354761) (= lambda!78873 lambda!78849))))

(assert (=> bs!443651 (= (= (ite c!339990 e!1354761 lt!795744) (_1!13668 (_1!13669 lt!795672))) (= lambda!78873 lambda!78826))))

(assert (=> bs!443652 (not (= lambda!78873 lambda!78852))))

(assert (=> bs!443653 (= (= (ite c!339990 e!1354761 lt!795744) lt!795736) (= lambda!78873 lambda!78848))))

(assert (=> bs!443654 (not (= lambda!78873 lambda!78827))))

(assert (=> bs!443656 (= (= (ite c!339990 e!1354761 lt!795744) (_1!13668 (_1!13669 lt!795733))) (= lambda!78873 lambda!78851))))

(declare-fun bs!443657 () Bool)

(assert (= bs!443657 d!644104))

(assert (=> bs!443657 (= (= (ite c!339990 e!1354761 lt!795744) lt!795736) (= lambda!78873 lambda!78872))))

(assert (=> bs!443655 (= (= (ite c!339990 e!1354761 lt!795744) lt!795744) (= lambda!78873 lambda!78850))))

(assert (=> d!644104 true))

(assert (=> d!644104 (forall!4878 Nil!23772 lambda!78873)))

(declare-fun lt!795786 () Unit!37634)

(declare-fun choose!12673 (List!23856 Int Int) Unit!37634)

(assert (=> d!644104 (= lt!795786 (choose!12673 Nil!23772 lt!795736 (ite c!339990 e!1354761 lt!795744)))))

(assert (=> d!644104 (forall!4878 Nil!23772 lambda!78872)))

(assert (=> d!644104 (= (lemmaStackPreservesForEqualRes!10 Nil!23772 lt!795736 (ite c!339990 e!1354761 lt!795744)) lt!795786)))

(declare-fun m!2578249 () Bool)

(assert (=> bs!443657 m!2578249))

(declare-fun m!2578251 () Bool)

(assert (=> bs!443657 m!2578251))

(declare-fun m!2578253 () Bool)

(assert (=> bs!443657 m!2578253))

(assert (=> bm!128748 d!644104))

(declare-fun bs!443658 () Bool)

(declare-fun d!644106 () Bool)

(assert (= bs!443658 (and d!644106 d!644034)))

(declare-fun lambda!78874 () Int)

(assert (=> bs!443658 (= lambda!78874 lambda!78855)))

(declare-fun bs!443659 () Bool)

(assert (= bs!443659 (and d!644106 d!644040)))

(assert (=> bs!443659 (= lambda!78874 lambda!78858)))

(declare-fun bs!443660 () Bool)

(assert (= bs!443660 (and d!644106 d!644072)))

(assert (=> bs!443660 (= lambda!78874 lambda!78862)))

(declare-fun bs!443661 () Bool)

(assert (= bs!443661 (and d!644106 d!644030)))

(assert (=> bs!443661 (= lambda!78874 lambda!78854)))

(declare-fun bs!443662 () Bool)

(assert (= bs!443662 (and d!644106 d!644062)))

(assert (=> bs!443662 (= lambda!78874 lambda!78859)))

(declare-fun bs!443663 () Bool)

(assert (= bs!443663 (and d!644106 d!643984)))

(assert (=> bs!443663 (= lambda!78874 lambda!78830)))

(declare-fun bs!443664 () Bool)

(assert (= bs!443664 (and d!644106 d!644082)))

(assert (=> bs!443664 (= lambda!78874 lambda!78863)))

(declare-fun bs!443665 () Bool)

(assert (= bs!443665 (and d!644106 d!644090)))

(assert (=> bs!443665 (= lambda!78874 lambda!78864)))

(declare-fun bs!443666 () Bool)

(assert (= bs!443666 (and d!644106 d!644028)))

(assert (=> bs!443666 (= lambda!78874 lambda!78853)))

(declare-fun bs!443667 () Bool)

(assert (= bs!443667 (and d!644106 d!644036)))

(assert (=> bs!443667 (= lambda!78874 lambda!78856)))

(declare-fun bs!443668 () Bool)

(assert (= bs!443668 (and d!644106 d!644070)))

(assert (=> bs!443668 (= lambda!78874 lambda!78861)))

(declare-fun bs!443669 () Bool)

(assert (= bs!443669 (and d!644106 d!644038)))

(assert (=> bs!443669 (= lambda!78874 lambda!78857)))

(declare-fun bs!443670 () Bool)

(assert (= bs!443670 (and d!644106 d!644068)))

(assert (=> bs!443670 (= lambda!78874 lambda!78860)))

(assert (=> d!644106 (= (inv!31365 (_2!13664 (_1!13665 (h!29171 mapValue!12171)))) (forall!4879 (exprs!1747 (_2!13664 (_1!13665 (h!29171 mapValue!12171)))) lambda!78874))))

(declare-fun bs!443671 () Bool)

(assert (= bs!443671 d!644106))

(declare-fun m!2578255 () Bool)

(assert (=> bs!443671 m!2578255))

(assert (=> b!2126015 d!644106))

(assert (=> d!643992 d!644094))

(declare-fun d!644108 () Bool)

(assert (=> d!644108 (= (valid!1951 (_2!13673 lt!795704)) (validCacheMapFurthestNullable!99 (cache!2777 (_2!13673 lt!795704)) (totalInput!2936 (_2!13673 lt!795704))))))

(declare-fun bs!443672 () Bool)

(assert (= bs!443672 d!644108))

(declare-fun m!2578257 () Bool)

(assert (=> bs!443672 m!2578257))

(assert (=> d!644008 d!644108))

(assert (=> d!644008 d!643962))

(assert (=> b!2125891 d!643962))

(assert (=> b!2125748 d!643996))

(declare-fun bs!443673 () Bool)

(declare-fun d!644110 () Bool)

(assert (= bs!443673 (and d!644110 d!644034)))

(declare-fun lambda!78875 () Int)

(assert (=> bs!443673 (= lambda!78875 lambda!78855)))

(declare-fun bs!443674 () Bool)

(assert (= bs!443674 (and d!644110 d!644040)))

(assert (=> bs!443674 (= lambda!78875 lambda!78858)))

(declare-fun bs!443675 () Bool)

(assert (= bs!443675 (and d!644110 d!644106)))

(assert (=> bs!443675 (= lambda!78875 lambda!78874)))

(declare-fun bs!443676 () Bool)

(assert (= bs!443676 (and d!644110 d!644072)))

(assert (=> bs!443676 (= lambda!78875 lambda!78862)))

(declare-fun bs!443677 () Bool)

(assert (= bs!443677 (and d!644110 d!644030)))

(assert (=> bs!443677 (= lambda!78875 lambda!78854)))

(declare-fun bs!443678 () Bool)

(assert (= bs!443678 (and d!644110 d!644062)))

(assert (=> bs!443678 (= lambda!78875 lambda!78859)))

(declare-fun bs!443679 () Bool)

(assert (= bs!443679 (and d!644110 d!643984)))

(assert (=> bs!443679 (= lambda!78875 lambda!78830)))

(declare-fun bs!443680 () Bool)

(assert (= bs!443680 (and d!644110 d!644082)))

(assert (=> bs!443680 (= lambda!78875 lambda!78863)))

(declare-fun bs!443681 () Bool)

(assert (= bs!443681 (and d!644110 d!644090)))

(assert (=> bs!443681 (= lambda!78875 lambda!78864)))

(declare-fun bs!443682 () Bool)

(assert (= bs!443682 (and d!644110 d!644028)))

(assert (=> bs!443682 (= lambda!78875 lambda!78853)))

(declare-fun bs!443683 () Bool)

(assert (= bs!443683 (and d!644110 d!644036)))

(assert (=> bs!443683 (= lambda!78875 lambda!78856)))

(declare-fun bs!443684 () Bool)

(assert (= bs!443684 (and d!644110 d!644070)))

(assert (=> bs!443684 (= lambda!78875 lambda!78861)))

(declare-fun bs!443685 () Bool)

(assert (= bs!443685 (and d!644110 d!644038)))

(assert (=> bs!443685 (= lambda!78875 lambda!78857)))

(declare-fun bs!443686 () Bool)

(assert (= bs!443686 (and d!644110 d!644068)))

(assert (=> bs!443686 (= lambda!78875 lambda!78860)))

(assert (=> d!644110 (= (inv!31365 (_1!13666 (_1!13667 (h!29170 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))))) (forall!4879 (exprs!1747 (_1!13666 (_1!13667 (h!29170 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))))) lambda!78875))))

(declare-fun bs!443687 () Bool)

(assert (= bs!443687 d!644110))

(declare-fun m!2578259 () Bool)

(assert (=> bs!443687 m!2578259))

(assert (=> b!2125993 d!644110))

(declare-fun b!2126243 () Bool)

(declare-fun e!1355107 () tuple2!23430)

(declare-fun Unit!37641 () Unit!37634)

(assert (=> b!2126243 (= e!1355107 (tuple2!23431 Unit!37641 (_2!13673 e!1354851)))))

(declare-fun b!2126244 () Bool)

(declare-fun e!1355108 () tuple2!23430)

(declare-fun Unit!37642 () Unit!37634)

(assert (=> b!2126244 (= e!1355108 (tuple2!23431 Unit!37642 (_2!13673 e!1354851)))))

(declare-fun b!2126245 () Bool)

(declare-fun lt!795787 () tuple2!23430)

(assert (=> b!2126245 (= e!1355108 (tuple2!23431 (_1!13673 lt!795787) (_2!13673 lt!795787)))))

(declare-fun c!340037 () Bool)

(assert (=> b!2126245 (= c!340037 (and (> lt!795670 1048576) (not (= (- (+ 0 1) (* 10 (ite (>= (+ 0 1) 0) (div (+ 0 1) 10) (- (div (- (+ 0 1)) 10))))) 0))))))

(assert (=> b!2126245 (= lt!795787 (fillUpCache!10 (t!196380 (t!196380 (_2!13668 (_1!13669 lt!795672)))) totalInput!886 lt!795670 (_1!13668 (_1!13669 lt!795672)) (+ 0 1 1) (_2!13673 e!1355107)))))

(declare-fun b!2126246 () Bool)

(declare-fun e!1355109 () Bool)

(declare-fun lt!795790 () tuple2!23430)

(assert (=> b!2126246 (= e!1355109 (= (totalInput!2936 (_2!13673 lt!795790)) totalInput!886))))

(declare-fun d!644112 () Bool)

(assert (=> d!644112 e!1355109))

(declare-fun res!919916 () Bool)

(assert (=> d!644112 (=> (not res!919916) (not e!1355109))))

(assert (=> d!644112 (= res!919916 (valid!1951 (_2!13673 lt!795790)))))

(assert (=> d!644112 (= lt!795790 e!1355108)))

(declare-fun c!340036 () Bool)

(assert (=> d!644112 (= c!340036 ((_ is Nil!23772) (t!196380 (_2!13668 (_1!13669 lt!795672)))))))

(assert (=> d!644112 (valid!1951 (_2!13673 e!1354851))))

(assert (=> d!644112 (= (fillUpCache!10 (t!196380 (_2!13668 (_1!13669 lt!795672))) totalInput!886 lt!795670 (_1!13668 (_1!13669 lt!795672)) (+ 0 1) (_2!13673 e!1354851)) lt!795790)))

(declare-fun lt!795788 () tuple2!23430)

(declare-fun b!2126247 () Bool)

(assert (=> b!2126247 (= lt!795788 (update!89 (_2!13673 e!1354851) (z!5752 (h!29173 (t!196380 (_2!13668 (_1!13669 lt!795672))))) (from!2642 (h!29173 (t!196380 (_2!13668 (_1!13669 lt!795672))))) (lastNullablePos!329 (h!29173 (t!196380 (_2!13668 (_1!13669 lt!795672))))) (_1!13668 (_1!13669 lt!795672)) totalInput!886))))

(declare-fun lt!795789 () Unit!37634)

(assert (=> b!2126247 (= lt!795789 (lemmaInvariant!383 (_2!13673 e!1354851)))))

(assert (=> b!2126247 (= e!1355107 (tuple2!23431 (_1!13673 lt!795788) (_2!13673 lt!795788)))))

(assert (= (and d!644112 c!340036) b!2126244))

(assert (= (and d!644112 (not c!340036)) b!2126245))

(assert (= (and b!2126245 c!340037) b!2126243))

(assert (= (and b!2126245 (not c!340037)) b!2126247))

(assert (= (and d!644112 res!919916) b!2126246))

(declare-fun m!2578261 () Bool)

(assert (=> b!2126245 m!2578261))

(declare-fun m!2578263 () Bool)

(assert (=> d!644112 m!2578263))

(declare-fun m!2578265 () Bool)

(assert (=> d!644112 m!2578265))

(declare-fun m!2578267 () Bool)

(assert (=> b!2126247 m!2578267))

(declare-fun m!2578269 () Bool)

(assert (=> b!2126247 m!2578269))

(assert (=> b!2125855 d!644112))

(declare-fun d!644114 () Bool)

(declare-fun res!919917 () Bool)

(declare-fun e!1355110 () Bool)

(assert (=> d!644114 (=> res!919917 e!1355110)))

(assert (=> d!644114 (= res!919917 ((_ is Nil!23772) (t!196380 (_2!13668 (_1!13669 lt!795672)))))))

(assert (=> d!644114 (= (forall!4878 (t!196380 (_2!13668 (_1!13669 lt!795672))) lambda!78827) e!1355110)))

(declare-fun b!2126248 () Bool)

(declare-fun e!1355111 () Bool)

(assert (=> b!2126248 (= e!1355110 e!1355111)))

(declare-fun res!919918 () Bool)

(assert (=> b!2126248 (=> (not res!919918) (not e!1355111))))

(assert (=> b!2126248 (= res!919918 (dynLambda!11363 lambda!78827 (h!29173 (t!196380 (_2!13668 (_1!13669 lt!795672))))))))

(declare-fun b!2126249 () Bool)

(assert (=> b!2126249 (= e!1355111 (forall!4878 (t!196380 (t!196380 (_2!13668 (_1!13669 lt!795672)))) lambda!78827))))

(assert (= (and d!644114 (not res!919917)) b!2126248))

(assert (= (and b!2126248 res!919918) b!2126249))

(declare-fun b_lambda!70541 () Bool)

(assert (=> (not b_lambda!70541) (not b!2126248)))

(declare-fun m!2578271 () Bool)

(assert (=> b!2126248 m!2578271))

(declare-fun m!2578273 () Bool)

(assert (=> b!2126249 m!2578273))

(assert (=> b!2125830 d!644114))

(declare-fun d!644116 () Bool)

(assert (=> d!644116 (= (inv!31373 (xs!10757 (c!339969 totalInput!886))) (<= (size!18587 (innerList!7875 (xs!10757 (c!339969 totalInput!886)))) 2147483647))))

(declare-fun bs!443688 () Bool)

(assert (= bs!443688 d!644116))

(declare-fun m!2578275 () Bool)

(assert (=> bs!443688 m!2578275))

(assert (=> b!2126096 d!644116))

(declare-fun bs!443689 () Bool)

(declare-fun d!644118 () Bool)

(assert (= bs!443689 (and d!644118 d!644110)))

(declare-fun lambda!78876 () Int)

(assert (=> bs!443689 (= lambda!78876 lambda!78875)))

(declare-fun bs!443690 () Bool)

(assert (= bs!443690 (and d!644118 d!644034)))

(assert (=> bs!443690 (= lambda!78876 lambda!78855)))

(declare-fun bs!443691 () Bool)

(assert (= bs!443691 (and d!644118 d!644040)))

(assert (=> bs!443691 (= lambda!78876 lambda!78858)))

(declare-fun bs!443692 () Bool)

(assert (= bs!443692 (and d!644118 d!644106)))

(assert (=> bs!443692 (= lambda!78876 lambda!78874)))

(declare-fun bs!443693 () Bool)

(assert (= bs!443693 (and d!644118 d!644072)))

(assert (=> bs!443693 (= lambda!78876 lambda!78862)))

(declare-fun bs!443694 () Bool)

(assert (= bs!443694 (and d!644118 d!644030)))

(assert (=> bs!443694 (= lambda!78876 lambda!78854)))

(declare-fun bs!443695 () Bool)

(assert (= bs!443695 (and d!644118 d!644062)))

(assert (=> bs!443695 (= lambda!78876 lambda!78859)))

(declare-fun bs!443696 () Bool)

(assert (= bs!443696 (and d!644118 d!643984)))

(assert (=> bs!443696 (= lambda!78876 lambda!78830)))

(declare-fun bs!443697 () Bool)

(assert (= bs!443697 (and d!644118 d!644082)))

(assert (=> bs!443697 (= lambda!78876 lambda!78863)))

(declare-fun bs!443698 () Bool)

(assert (= bs!443698 (and d!644118 d!644090)))

(assert (=> bs!443698 (= lambda!78876 lambda!78864)))

(declare-fun bs!443699 () Bool)

(assert (= bs!443699 (and d!644118 d!644028)))

(assert (=> bs!443699 (= lambda!78876 lambda!78853)))

(declare-fun bs!443700 () Bool)

(assert (= bs!443700 (and d!644118 d!644036)))

(assert (=> bs!443700 (= lambda!78876 lambda!78856)))

(declare-fun bs!443701 () Bool)

(assert (= bs!443701 (and d!644118 d!644070)))

(assert (=> bs!443701 (= lambda!78876 lambda!78861)))

(declare-fun bs!443702 () Bool)

(assert (= bs!443702 (and d!644118 d!644038)))

(assert (=> bs!443702 (= lambda!78876 lambda!78857)))

(declare-fun bs!443703 () Bool)

(assert (= bs!443703 (and d!644118 d!644068)))

(assert (=> bs!443703 (= lambda!78876 lambda!78860)))

(assert (=> d!644118 (= (inv!31365 setElem!15369) (forall!4879 (exprs!1747 setElem!15369) lambda!78876))))

(declare-fun bs!443704 () Bool)

(assert (= bs!443704 d!644118))

(declare-fun m!2578277 () Bool)

(assert (=> bs!443704 m!2578277))

(assert (=> setNonEmpty!15369 d!644118))

(declare-fun d!644120 () Bool)

(declare-fun e!1355114 () Bool)

(assert (=> d!644120 e!1355114))

(declare-fun res!919922 () Bool)

(assert (=> d!644120 (=> (not res!919922) (not e!1355114))))

(declare-fun lt!795793 () tuple2!23430)

(assert (=> d!644120 (= res!919922 (validCacheMapFurthestNullable!99 (cache!2777 (_2!13673 lt!795793)) (totalInput!2936 (_2!13673 lt!795793))))))

(declare-fun choose!12674 (CacheFurthestNullable!602 (InoxSet Context!2494) Int Int Int BalanceConc!15392) tuple2!23430)

(assert (=> d!644120 (= lt!795793 (choose!12674 cacheFurthestNullable!130 (z!5752 (h!29173 (_2!13668 (_1!13669 lt!795672)))) (from!2642 (h!29173 (_2!13668 (_1!13669 lt!795672)))) (lastNullablePos!329 (h!29173 (_2!13668 (_1!13669 lt!795672)))) (_1!13668 (_1!13669 lt!795672)) totalInput!886))))

(assert (=> d!644120 (= totalInput!886 (totalInput!2936 cacheFurthestNullable!130))))

(assert (=> d!644120 (= (update!89 cacheFurthestNullable!130 (z!5752 (h!29173 (_2!13668 (_1!13669 lt!795672)))) (from!2642 (h!29173 (_2!13668 (_1!13669 lt!795672)))) (lastNullablePos!329 (h!29173 (_2!13668 (_1!13669 lt!795672)))) (_1!13668 (_1!13669 lt!795672)) totalInput!886) lt!795793)))

(declare-fun b!2126252 () Bool)

(assert (=> b!2126252 (= e!1355114 (= (totalInput!2936 (_2!13673 lt!795793)) totalInput!886))))

(assert (= (and d!644120 res!919922) b!2126252))

(declare-fun m!2578279 () Bool)

(assert (=> d!644120 m!2578279))

(declare-fun m!2578281 () Bool)

(assert (=> d!644120 m!2578281))

(assert (=> b!2125857 d!644120))

(declare-fun d!644122 () Bool)

(assert (=> d!644122 (valid!1951 cacheFurthestNullable!130)))

(declare-fun Unit!37643 () Unit!37634)

(assert (=> d!644122 (= (lemmaInvariant!383 cacheFurthestNullable!130) Unit!37643)))

(declare-fun bs!443705 () Bool)

(assert (= bs!443705 d!644122))

(assert (=> bs!443705 m!2577822))

(assert (=> b!2125857 d!644122))

(declare-fun bs!443706 () Bool)

(declare-fun d!644124 () Bool)

(assert (= bs!443706 (and d!644124 d!644110)))

(declare-fun lambda!78877 () Int)

(assert (=> bs!443706 (= lambda!78877 lambda!78875)))

(declare-fun bs!443707 () Bool)

(assert (= bs!443707 (and d!644124 d!644034)))

(assert (=> bs!443707 (= lambda!78877 lambda!78855)))

(declare-fun bs!443708 () Bool)

(assert (= bs!443708 (and d!644124 d!644040)))

(assert (=> bs!443708 (= lambda!78877 lambda!78858)))

(declare-fun bs!443709 () Bool)

(assert (= bs!443709 (and d!644124 d!644106)))

(assert (=> bs!443709 (= lambda!78877 lambda!78874)))

(declare-fun bs!443710 () Bool)

(assert (= bs!443710 (and d!644124 d!644072)))

(assert (=> bs!443710 (= lambda!78877 lambda!78862)))

(declare-fun bs!443711 () Bool)

(assert (= bs!443711 (and d!644124 d!644030)))

(assert (=> bs!443711 (= lambda!78877 lambda!78854)))

(declare-fun bs!443712 () Bool)

(assert (= bs!443712 (and d!644124 d!644062)))

(assert (=> bs!443712 (= lambda!78877 lambda!78859)))

(declare-fun bs!443713 () Bool)

(assert (= bs!443713 (and d!644124 d!643984)))

(assert (=> bs!443713 (= lambda!78877 lambda!78830)))

(declare-fun bs!443714 () Bool)

(assert (= bs!443714 (and d!644124 d!644118)))

(assert (=> bs!443714 (= lambda!78877 lambda!78876)))

(declare-fun bs!443715 () Bool)

(assert (= bs!443715 (and d!644124 d!644082)))

(assert (=> bs!443715 (= lambda!78877 lambda!78863)))

(declare-fun bs!443716 () Bool)

(assert (= bs!443716 (and d!644124 d!644090)))

(assert (=> bs!443716 (= lambda!78877 lambda!78864)))

(declare-fun bs!443717 () Bool)

(assert (= bs!443717 (and d!644124 d!644028)))

(assert (=> bs!443717 (= lambda!78877 lambda!78853)))

(declare-fun bs!443718 () Bool)

(assert (= bs!443718 (and d!644124 d!644036)))

(assert (=> bs!443718 (= lambda!78877 lambda!78856)))

(declare-fun bs!443719 () Bool)

(assert (= bs!443719 (and d!644124 d!644070)))

(assert (=> bs!443719 (= lambda!78877 lambda!78861)))

(declare-fun bs!443720 () Bool)

(assert (= bs!443720 (and d!644124 d!644038)))

(assert (=> bs!443720 (= lambda!78877 lambda!78857)))

(declare-fun bs!443721 () Bool)

(assert (= bs!443721 (and d!644124 d!644068)))

(assert (=> bs!443721 (= lambda!78877 lambda!78860)))

(assert (=> d!644124 (= (inv!31365 setElem!15395) (forall!4879 (exprs!1747 setElem!15395) lambda!78877))))

(declare-fun bs!443722 () Bool)

(assert (= bs!443722 d!644124))

(declare-fun m!2578283 () Bool)

(assert (=> bs!443722 m!2578283))

(assert (=> setNonEmpty!15395 d!644124))

(declare-fun b!2126254 () Bool)

(declare-fun e!1355116 () List!23855)

(assert (=> b!2126254 (= e!1355116 (Cons!23771 (h!29172 (t!196379 (list!9539 (_1!13672 lt!795669)))) (++!6317 (t!196379 (t!196379 (list!9539 (_1!13672 lt!795669)))) (list!9539 (_2!13672 lt!795669)))))))

(declare-fun b!2126256 () Bool)

(declare-fun e!1355115 () Bool)

(declare-fun lt!795794 () List!23855)

(assert (=> b!2126256 (= e!1355115 (or (not (= (list!9539 (_2!13672 lt!795669)) Nil!23771)) (= lt!795794 (t!196379 (list!9539 (_1!13672 lt!795669))))))))

(declare-fun d!644126 () Bool)

(assert (=> d!644126 e!1355115))

(declare-fun res!919923 () Bool)

(assert (=> d!644126 (=> (not res!919923) (not e!1355115))))

(assert (=> d!644126 (= res!919923 (= (content!3391 lt!795794) ((_ map or) (content!3391 (t!196379 (list!9539 (_1!13672 lt!795669)))) (content!3391 (list!9539 (_2!13672 lt!795669))))))))

(assert (=> d!644126 (= lt!795794 e!1355116)))

(declare-fun c!340038 () Bool)

(assert (=> d!644126 (= c!340038 ((_ is Nil!23771) (t!196379 (list!9539 (_1!13672 lt!795669)))))))

(assert (=> d!644126 (= (++!6317 (t!196379 (list!9539 (_1!13672 lt!795669))) (list!9539 (_2!13672 lt!795669))) lt!795794)))

(declare-fun b!2126253 () Bool)

(assert (=> b!2126253 (= e!1355116 (list!9539 (_2!13672 lt!795669)))))

(declare-fun b!2126255 () Bool)

(declare-fun res!919924 () Bool)

(assert (=> b!2126255 (=> (not res!919924) (not e!1355115))))

(assert (=> b!2126255 (= res!919924 (= (size!18587 lt!795794) (+ (size!18587 (t!196379 (list!9539 (_1!13672 lt!795669)))) (size!18587 (list!9539 (_2!13672 lt!795669))))))))

(assert (= (and d!644126 c!340038) b!2126253))

(assert (= (and d!644126 (not c!340038)) b!2126254))

(assert (= (and d!644126 res!919923) b!2126255))

(assert (= (and b!2126255 res!919924) b!2126256))

(assert (=> b!2126254 m!2577870))

(declare-fun m!2578285 () Bool)

(assert (=> b!2126254 m!2578285))

(declare-fun m!2578287 () Bool)

(assert (=> d!644126 m!2578287))

(assert (=> d!644126 m!2578206))

(assert (=> d!644126 m!2577870))

(assert (=> d!644126 m!2578004))

(declare-fun m!2578289 () Bool)

(assert (=> b!2126255 m!2578289))

(assert (=> b!2126255 m!2578146))

(assert (=> b!2126255 m!2577870))

(assert (=> b!2126255 m!2578010))

(assert (=> b!2125926 d!644126))

(declare-fun bs!443723 () Bool)

(declare-fun d!644128 () Bool)

(assert (= bs!443723 (and d!644128 d!644110)))

(declare-fun lambda!78878 () Int)

(assert (=> bs!443723 (= lambda!78878 lambda!78875)))

(declare-fun bs!443724 () Bool)

(assert (= bs!443724 (and d!644128 d!644034)))

(assert (=> bs!443724 (= lambda!78878 lambda!78855)))

(declare-fun bs!443725 () Bool)

(assert (= bs!443725 (and d!644128 d!644040)))

(assert (=> bs!443725 (= lambda!78878 lambda!78858)))

(declare-fun bs!443726 () Bool)

(assert (= bs!443726 (and d!644128 d!644106)))

(assert (=> bs!443726 (= lambda!78878 lambda!78874)))

(declare-fun bs!443727 () Bool)

(assert (= bs!443727 (and d!644128 d!644072)))

(assert (=> bs!443727 (= lambda!78878 lambda!78862)))

(declare-fun bs!443728 () Bool)

(assert (= bs!443728 (and d!644128 d!644030)))

(assert (=> bs!443728 (= lambda!78878 lambda!78854)))

(declare-fun bs!443729 () Bool)

(assert (= bs!443729 (and d!644128 d!644124)))

(assert (=> bs!443729 (= lambda!78878 lambda!78877)))

(declare-fun bs!443730 () Bool)

(assert (= bs!443730 (and d!644128 d!644062)))

(assert (=> bs!443730 (= lambda!78878 lambda!78859)))

(declare-fun bs!443731 () Bool)

(assert (= bs!443731 (and d!644128 d!643984)))

(assert (=> bs!443731 (= lambda!78878 lambda!78830)))

(declare-fun bs!443732 () Bool)

(assert (= bs!443732 (and d!644128 d!644118)))

(assert (=> bs!443732 (= lambda!78878 lambda!78876)))

(declare-fun bs!443733 () Bool)

(assert (= bs!443733 (and d!644128 d!644082)))

(assert (=> bs!443733 (= lambda!78878 lambda!78863)))

(declare-fun bs!443734 () Bool)

(assert (= bs!443734 (and d!644128 d!644090)))

(assert (=> bs!443734 (= lambda!78878 lambda!78864)))

(declare-fun bs!443735 () Bool)

(assert (= bs!443735 (and d!644128 d!644028)))

(assert (=> bs!443735 (= lambda!78878 lambda!78853)))

(declare-fun bs!443736 () Bool)

(assert (= bs!443736 (and d!644128 d!644036)))

(assert (=> bs!443736 (= lambda!78878 lambda!78856)))

(declare-fun bs!443737 () Bool)

(assert (= bs!443737 (and d!644128 d!644070)))

(assert (=> bs!443737 (= lambda!78878 lambda!78861)))

(declare-fun bs!443738 () Bool)

(assert (= bs!443738 (and d!644128 d!644038)))

(assert (=> bs!443738 (= lambda!78878 lambda!78857)))

(declare-fun bs!443739 () Bool)

(assert (= bs!443739 (and d!644128 d!644068)))

(assert (=> bs!443739 (= lambda!78878 lambda!78860)))

(assert (=> d!644128 (= (inv!31365 setElem!15396) (forall!4879 (exprs!1747 setElem!15396) lambda!78878))))

(declare-fun bs!443740 () Bool)

(assert (= bs!443740 d!644128))

(declare-fun m!2578291 () Bool)

(assert (=> bs!443740 m!2578291))

(assert (=> setNonEmpty!15396 d!644128))

(declare-fun d!644130 () Bool)

(declare-fun res!919929 () Bool)

(declare-fun e!1355121 () Bool)

(assert (=> d!644130 (=> res!919929 e!1355121)))

(assert (=> d!644130 (= res!919929 ((_ is Nil!23768) (exprs!1747 setElem!15342)))))

(assert (=> d!644130 (= (forall!4879 (exprs!1747 setElem!15342) lambda!78830) e!1355121)))

(declare-fun b!2126261 () Bool)

(declare-fun e!1355122 () Bool)

(assert (=> b!2126261 (= e!1355121 e!1355122)))

(declare-fun res!919930 () Bool)

(assert (=> b!2126261 (=> (not res!919930) (not e!1355122))))

(declare-fun dynLambda!11364 (Int Regex!5677) Bool)

(assert (=> b!2126261 (= res!919930 (dynLambda!11364 lambda!78830 (h!29169 (exprs!1747 setElem!15342))))))

(declare-fun b!2126262 () Bool)

(assert (=> b!2126262 (= e!1355122 (forall!4879 (t!196376 (exprs!1747 setElem!15342)) lambda!78830))))

(assert (= (and d!644130 (not res!919929)) b!2126261))

(assert (= (and b!2126261 res!919930) b!2126262))

(declare-fun b_lambda!70543 () Bool)

(assert (=> (not b_lambda!70543) (not b!2126261)))

(declare-fun m!2578293 () Bool)

(assert (=> b!2126261 m!2578293))

(declare-fun m!2578295 () Bool)

(assert (=> b!2126262 m!2578295))

(assert (=> d!643984 d!644130))

(declare-fun d!644132 () Bool)

(declare-fun res!919931 () Bool)

(declare-fun e!1355123 () Bool)

(assert (=> d!644132 (=> res!919931 e!1355123)))

(assert (=> d!644132 (= res!919931 ((_ is Nil!23772) Nil!23772))))

(assert (=> d!644132 (= (forall!4878 Nil!23772 (ite c!339990 lambda!78848 lambda!78850)) e!1355123)))

(declare-fun b!2126263 () Bool)

(declare-fun e!1355124 () Bool)

(assert (=> b!2126263 (= e!1355123 e!1355124)))

(declare-fun res!919932 () Bool)

(assert (=> b!2126263 (=> (not res!919932) (not e!1355124))))

(assert (=> b!2126263 (= res!919932 (dynLambda!11363 (ite c!339990 lambda!78848 lambda!78850) (h!29173 Nil!23772)))))

(declare-fun b!2126264 () Bool)

(assert (=> b!2126264 (= e!1355124 (forall!4878 (t!196380 Nil!23772) (ite c!339990 lambda!78848 lambda!78850)))))

(assert (= (and d!644132 (not res!919931)) b!2126263))

(assert (= (and b!2126263 res!919932) b!2126264))

(declare-fun b_lambda!70545 () Bool)

(assert (=> (not b_lambda!70545) (not b!2126263)))

(declare-fun m!2578297 () Bool)

(assert (=> b!2126263 m!2578297))

(declare-fun m!2578299 () Bool)

(assert (=> b!2126264 m!2578299))

(assert (=> bm!128746 d!644132))

(declare-fun b!2126270 () Bool)

(assert (=> b!2126270 true))

(declare-fun d!644134 () Bool)

(declare-fun res!919937 () Bool)

(declare-fun e!1355127 () Bool)

(assert (=> d!644134 (=> (not res!919937) (not e!1355127))))

(declare-fun valid!1953 (MutableMap!2396) Bool)

(assert (=> d!644134 (= res!919937 (valid!1953 (cache!2777 cacheFurthestNullable!130)))))

(assert (=> d!644134 (= (validCacheMapFurthestNullable!99 (cache!2777 cacheFurthestNullable!130) (totalInput!2936 cacheFurthestNullable!130)) e!1355127)))

(declare-fun b!2126269 () Bool)

(declare-fun res!919938 () Bool)

(assert (=> b!2126269 (=> (not res!919938) (not e!1355127))))

(declare-fun invariantList!305 (List!23857) Bool)

(declare-datatypes ((ListMap!659 0))(
  ( (ListMap!660 (toList!1070 List!23857)) )
))
(declare-fun map!4843 (MutableMap!2396) ListMap!659)

(assert (=> b!2126269 (= res!919938 (invariantList!305 (toList!1070 (map!4843 (cache!2777 cacheFurthestNullable!130)))))))

(declare-fun lambda!78881 () Int)

(declare-fun forall!4881 (List!23857 Int) Bool)

(assert (=> b!2126270 (= e!1355127 (forall!4881 (toList!1070 (map!4843 (cache!2777 cacheFurthestNullable!130))) lambda!78881))))

(assert (= (and d!644134 res!919937) b!2126269))

(assert (= (and b!2126269 res!919938) b!2126270))

(declare-fun m!2578302 () Bool)

(assert (=> d!644134 m!2578302))

(declare-fun m!2578304 () Bool)

(assert (=> b!2126269 m!2578304))

(declare-fun m!2578306 () Bool)

(assert (=> b!2126269 m!2578306))

(assert (=> b!2126270 m!2578304))

(declare-fun m!2578308 () Bool)

(assert (=> b!2126270 m!2578308))

(assert (=> b!2125824 d!644134))

(declare-fun b!2126273 () Bool)

(declare-fun res!919939 () Bool)

(declare-fun e!1355128 () Bool)

(assert (=> b!2126273 (=> (not res!919939) (not e!1355128))))

(assert (=> b!2126273 (= res!919939 (isBalanced!2453 (right!18708 (c!339969 totalInput!886))))))

(declare-fun b!2126274 () Bool)

(declare-fun res!919941 () Bool)

(assert (=> b!2126274 (=> (not res!919941) (not e!1355128))))

(assert (=> b!2126274 (= res!919941 (isBalanced!2453 (left!18378 (c!339969 totalInput!886))))))

(declare-fun b!2126276 () Bool)

(assert (=> b!2126276 (= e!1355128 (not (isEmpty!14317 (right!18708 (c!339969 totalInput!886)))))))

(declare-fun b!2126277 () Bool)

(declare-fun res!919942 () Bool)

(assert (=> b!2126277 (=> (not res!919942) (not e!1355128))))

(assert (=> b!2126277 (= res!919942 (<= (- (height!1236 (left!18378 (c!339969 totalInput!886))) (height!1236 (right!18708 (c!339969 totalInput!886)))) 1))))

(declare-fun b!2126278 () Bool)

(declare-fun e!1355129 () Bool)

(assert (=> b!2126278 (= e!1355129 e!1355128)))

(declare-fun res!919944 () Bool)

(assert (=> b!2126278 (=> (not res!919944) (not e!1355128))))

(assert (=> b!2126278 (= res!919944 (<= (- 1) (- (height!1236 (left!18378 (c!339969 totalInput!886))) (height!1236 (right!18708 (c!339969 totalInput!886))))))))

(declare-fun d!644136 () Bool)

(declare-fun res!919943 () Bool)

(assert (=> d!644136 (=> res!919943 e!1355129)))

(assert (=> d!644136 (= res!919943 (not ((_ is Node!7815) (c!339969 totalInput!886))))))

(assert (=> d!644136 (= (isBalanced!2453 (c!339969 totalInput!886)) e!1355129)))

(declare-fun b!2126275 () Bool)

(declare-fun res!919940 () Bool)

(assert (=> b!2126275 (=> (not res!919940) (not e!1355128))))

(assert (=> b!2126275 (= res!919940 (not (isEmpty!14317 (left!18378 (c!339969 totalInput!886)))))))

(assert (= (and d!644136 (not res!919943)) b!2126278))

(assert (= (and b!2126278 res!919944) b!2126277))

(assert (= (and b!2126277 res!919942) b!2126274))

(assert (= (and b!2126274 res!919941) b!2126273))

(assert (= (and b!2126273 res!919939) b!2126275))

(assert (= (and b!2126275 res!919940) b!2126276))

(declare-fun m!2578310 () Bool)

(assert (=> b!2126274 m!2578310))

(declare-fun m!2578312 () Bool)

(assert (=> b!2126277 m!2578312))

(declare-fun m!2578314 () Bool)

(assert (=> b!2126277 m!2578314))

(declare-fun m!2578316 () Bool)

(assert (=> b!2126273 m!2578316))

(assert (=> b!2126278 m!2578312))

(assert (=> b!2126278 m!2578314))

(declare-fun m!2578318 () Bool)

(assert (=> b!2126275 m!2578318))

(declare-fun m!2578320 () Bool)

(assert (=> b!2126276 m!2578320))

(assert (=> d!643972 d!644136))

(declare-fun d!644138 () Bool)

(declare-fun res!919945 () Bool)

(declare-fun e!1355130 () Bool)

(assert (=> d!644138 (=> (not res!919945) (not e!1355130))))

(assert (=> d!644138 (= res!919945 (<= (size!18587 (list!9541 (xs!10757 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) 512))))

(assert (=> d!644138 (= (inv!31372 (c!339969 (totalInput!2936 cacheFurthestNullable!130))) e!1355130)))

(declare-fun b!2126279 () Bool)

(declare-fun res!919946 () Bool)

(assert (=> b!2126279 (=> (not res!919946) (not e!1355130))))

(assert (=> b!2126279 (= res!919946 (= (csize!15861 (c!339969 (totalInput!2936 cacheFurthestNullable!130))) (size!18587 (list!9541 (xs!10757 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))))

(declare-fun b!2126280 () Bool)

(assert (=> b!2126280 (= e!1355130 (and (> (csize!15861 (c!339969 (totalInput!2936 cacheFurthestNullable!130))) 0) (<= (csize!15861 (c!339969 (totalInput!2936 cacheFurthestNullable!130))) 512)))))

(assert (= (and d!644138 res!919945) b!2126279))

(assert (= (and b!2126279 res!919946) b!2126280))

(declare-fun m!2578322 () Bool)

(assert (=> d!644138 m!2578322))

(assert (=> d!644138 m!2578322))

(declare-fun m!2578324 () Bool)

(assert (=> d!644138 m!2578324))

(assert (=> b!2126279 m!2578322))

(assert (=> b!2126279 m!2578322))

(assert (=> b!2126279 m!2578324))

(assert (=> b!2125833 d!644138))

(declare-fun bs!443741 () Bool)

(declare-fun d!644140 () Bool)

(assert (= bs!443741 (and d!644140 d!644110)))

(declare-fun lambda!78882 () Int)

(assert (=> bs!443741 (= lambda!78882 lambda!78875)))

(declare-fun bs!443742 () Bool)

(assert (= bs!443742 (and d!644140 d!644034)))

(assert (=> bs!443742 (= lambda!78882 lambda!78855)))

(declare-fun bs!443743 () Bool)

(assert (= bs!443743 (and d!644140 d!644040)))

(assert (=> bs!443743 (= lambda!78882 lambda!78858)))

(declare-fun bs!443744 () Bool)

(assert (= bs!443744 (and d!644140 d!644106)))

(assert (=> bs!443744 (= lambda!78882 lambda!78874)))

(declare-fun bs!443745 () Bool)

(assert (= bs!443745 (and d!644140 d!644072)))

(assert (=> bs!443745 (= lambda!78882 lambda!78862)))

(declare-fun bs!443746 () Bool)

(assert (= bs!443746 (and d!644140 d!644128)))

(assert (=> bs!443746 (= lambda!78882 lambda!78878)))

(declare-fun bs!443747 () Bool)

(assert (= bs!443747 (and d!644140 d!644030)))

(assert (=> bs!443747 (= lambda!78882 lambda!78854)))

(declare-fun bs!443748 () Bool)

(assert (= bs!443748 (and d!644140 d!644124)))

(assert (=> bs!443748 (= lambda!78882 lambda!78877)))

(declare-fun bs!443749 () Bool)

(assert (= bs!443749 (and d!644140 d!644062)))

(assert (=> bs!443749 (= lambda!78882 lambda!78859)))

(declare-fun bs!443750 () Bool)

(assert (= bs!443750 (and d!644140 d!643984)))

(assert (=> bs!443750 (= lambda!78882 lambda!78830)))

(declare-fun bs!443751 () Bool)

(assert (= bs!443751 (and d!644140 d!644118)))

(assert (=> bs!443751 (= lambda!78882 lambda!78876)))

(declare-fun bs!443752 () Bool)

(assert (= bs!443752 (and d!644140 d!644082)))

(assert (=> bs!443752 (= lambda!78882 lambda!78863)))

(declare-fun bs!443753 () Bool)

(assert (= bs!443753 (and d!644140 d!644090)))

(assert (=> bs!443753 (= lambda!78882 lambda!78864)))

(declare-fun bs!443754 () Bool)

(assert (= bs!443754 (and d!644140 d!644028)))

(assert (=> bs!443754 (= lambda!78882 lambda!78853)))

(declare-fun bs!443755 () Bool)

(assert (= bs!443755 (and d!644140 d!644036)))

(assert (=> bs!443755 (= lambda!78882 lambda!78856)))

(declare-fun bs!443756 () Bool)

(assert (= bs!443756 (and d!644140 d!644070)))

(assert (=> bs!443756 (= lambda!78882 lambda!78861)))

(declare-fun bs!443757 () Bool)

(assert (= bs!443757 (and d!644140 d!644038)))

(assert (=> bs!443757 (= lambda!78882 lambda!78857)))

(declare-fun bs!443758 () Bool)

(assert (= bs!443758 (and d!644140 d!644068)))

(assert (=> bs!443758 (= lambda!78882 lambda!78860)))

(assert (=> d!644140 (= (inv!31365 setElem!15376) (forall!4879 (exprs!1747 setElem!15376) lambda!78882))))

(declare-fun bs!443759 () Bool)

(assert (= bs!443759 d!644140))

(declare-fun m!2578326 () Bool)

(assert (=> bs!443759 m!2578326))

(assert (=> setNonEmpty!15376 d!644140))

(declare-fun d!644142 () Bool)

(declare-fun c!340039 () Bool)

(assert (=> d!644142 (= c!340039 ((_ is Node!7815) (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))

(declare-fun e!1355131 () Bool)

(assert (=> d!644142 (= (inv!31366 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) e!1355131)))

(declare-fun b!2126281 () Bool)

(assert (=> b!2126281 (= e!1355131 (inv!31371 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))

(declare-fun b!2126282 () Bool)

(declare-fun e!1355132 () Bool)

(assert (=> b!2126282 (= e!1355131 e!1355132)))

(declare-fun res!919947 () Bool)

(assert (=> b!2126282 (= res!919947 (not ((_ is Leaf!11421) (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))))))

(assert (=> b!2126282 (=> res!919947 e!1355132)))

(declare-fun b!2126283 () Bool)

(assert (=> b!2126283 (= e!1355132 (inv!31372 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))

(assert (= (and d!644142 c!340039) b!2126281))

(assert (= (and d!644142 (not c!340039)) b!2126282))

(assert (= (and b!2126282 (not res!919947)) b!2126283))

(declare-fun m!2578328 () Bool)

(assert (=> b!2126281 m!2578328))

(declare-fun m!2578330 () Bool)

(assert (=> b!2126283 m!2578330))

(assert (=> b!2126091 d!644142))

(declare-fun d!644144 () Bool)

(declare-fun c!340040 () Bool)

(assert (=> d!644144 (= c!340040 ((_ is Node!7815) (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))

(declare-fun e!1355133 () Bool)

(assert (=> d!644144 (= (inv!31366 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) e!1355133)))

(declare-fun b!2126284 () Bool)

(assert (=> b!2126284 (= e!1355133 (inv!31371 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))

(declare-fun b!2126285 () Bool)

(declare-fun e!1355134 () Bool)

(assert (=> b!2126285 (= e!1355133 e!1355134)))

(declare-fun res!919948 () Bool)

(assert (=> b!2126285 (= res!919948 (not ((_ is Leaf!11421) (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))))))

(assert (=> b!2126285 (=> res!919948 e!1355134)))

(declare-fun b!2126286 () Bool)

(assert (=> b!2126286 (= e!1355134 (inv!31372 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))

(assert (= (and d!644144 c!340040) b!2126284))

(assert (= (and d!644144 (not c!340040)) b!2126285))

(assert (= (and b!2126285 (not res!919948)) b!2126286))

(declare-fun m!2578332 () Bool)

(assert (=> b!2126284 m!2578332))

(declare-fun m!2578334 () Bool)

(assert (=> b!2126286 m!2578334))

(assert (=> b!2126091 d!644144))

(declare-fun bs!443760 () Bool)

(declare-fun d!644146 () Bool)

(assert (= bs!443760 (and d!644146 d!644110)))

(declare-fun lambda!78883 () Int)

(assert (=> bs!443760 (= lambda!78883 lambda!78875)))

(declare-fun bs!443761 () Bool)

(assert (= bs!443761 (and d!644146 d!644034)))

(assert (=> bs!443761 (= lambda!78883 lambda!78855)))

(declare-fun bs!443762 () Bool)

(assert (= bs!443762 (and d!644146 d!644040)))

(assert (=> bs!443762 (= lambda!78883 lambda!78858)))

(declare-fun bs!443763 () Bool)

(assert (= bs!443763 (and d!644146 d!644106)))

(assert (=> bs!443763 (= lambda!78883 lambda!78874)))

(declare-fun bs!443764 () Bool)

(assert (= bs!443764 (and d!644146 d!644072)))

(assert (=> bs!443764 (= lambda!78883 lambda!78862)))

(declare-fun bs!443765 () Bool)

(assert (= bs!443765 (and d!644146 d!644128)))

(assert (=> bs!443765 (= lambda!78883 lambda!78878)))

(declare-fun bs!443766 () Bool)

(assert (= bs!443766 (and d!644146 d!644030)))

(assert (=> bs!443766 (= lambda!78883 lambda!78854)))

(declare-fun bs!443767 () Bool)

(assert (= bs!443767 (and d!644146 d!644124)))

(assert (=> bs!443767 (= lambda!78883 lambda!78877)))

(declare-fun bs!443768 () Bool)

(assert (= bs!443768 (and d!644146 d!644062)))

(assert (=> bs!443768 (= lambda!78883 lambda!78859)))

(declare-fun bs!443769 () Bool)

(assert (= bs!443769 (and d!644146 d!643984)))

(assert (=> bs!443769 (= lambda!78883 lambda!78830)))

(declare-fun bs!443770 () Bool)

(assert (= bs!443770 (and d!644146 d!644118)))

(assert (=> bs!443770 (= lambda!78883 lambda!78876)))

(declare-fun bs!443771 () Bool)

(assert (= bs!443771 (and d!644146 d!644082)))

(assert (=> bs!443771 (= lambda!78883 lambda!78863)))

(declare-fun bs!443772 () Bool)

(assert (= bs!443772 (and d!644146 d!644090)))

(assert (=> bs!443772 (= lambda!78883 lambda!78864)))

(declare-fun bs!443773 () Bool)

(assert (= bs!443773 (and d!644146 d!644028)))

(assert (=> bs!443773 (= lambda!78883 lambda!78853)))

(declare-fun bs!443774 () Bool)

(assert (= bs!443774 (and d!644146 d!644140)))

(assert (=> bs!443774 (= lambda!78883 lambda!78882)))

(declare-fun bs!443775 () Bool)

(assert (= bs!443775 (and d!644146 d!644036)))

(assert (=> bs!443775 (= lambda!78883 lambda!78856)))

(declare-fun bs!443776 () Bool)

(assert (= bs!443776 (and d!644146 d!644070)))

(assert (=> bs!443776 (= lambda!78883 lambda!78861)))

(declare-fun bs!443777 () Bool)

(assert (= bs!443777 (and d!644146 d!644038)))

(assert (=> bs!443777 (= lambda!78883 lambda!78857)))

(declare-fun bs!443778 () Bool)

(assert (= bs!443778 (and d!644146 d!644068)))

(assert (=> bs!443778 (= lambda!78883 lambda!78860)))

(assert (=> d!644146 (= (inv!31365 setElem!15392) (forall!4879 (exprs!1747 setElem!15392) lambda!78883))))

(declare-fun bs!443779 () Bool)

(assert (= bs!443779 d!644146))

(declare-fun m!2578336 () Bool)

(assert (=> bs!443779 m!2578336))

(assert (=> setNonEmpty!15392 d!644146))

(declare-fun d!644148 () Bool)

(assert (=> d!644148 (= (valid!1950 (_2!13669 lt!795733)) (validCacheMapUp!249 (cache!2775 (_2!13669 lt!795733))))))

(declare-fun bs!443780 () Bool)

(assert (= bs!443780 d!644148))

(declare-fun m!2578338 () Bool)

(assert (=> bs!443780 m!2578338))

(assert (=> b!2125887 d!644148))

(declare-fun d!644150 () Bool)

(declare-fun c!340041 () Bool)

(assert (=> d!644150 (= c!340041 ((_ is Node!7815) (left!18378 (c!339969 input!5507))))))

(declare-fun e!1355135 () Bool)

(assert (=> d!644150 (= (inv!31366 (left!18378 (c!339969 input!5507))) e!1355135)))

(declare-fun b!2126287 () Bool)

(assert (=> b!2126287 (= e!1355135 (inv!31371 (left!18378 (c!339969 input!5507))))))

(declare-fun b!2126288 () Bool)

(declare-fun e!1355136 () Bool)

(assert (=> b!2126288 (= e!1355135 e!1355136)))

(declare-fun res!919949 () Bool)

(assert (=> b!2126288 (= res!919949 (not ((_ is Leaf!11421) (left!18378 (c!339969 input!5507)))))))

(assert (=> b!2126288 (=> res!919949 e!1355136)))

(declare-fun b!2126289 () Bool)

(assert (=> b!2126289 (= e!1355136 (inv!31372 (left!18378 (c!339969 input!5507))))))

(assert (= (and d!644150 c!340041) b!2126287))

(assert (= (and d!644150 (not c!340041)) b!2126288))

(assert (= (and b!2126288 (not res!919949)) b!2126289))

(declare-fun m!2578340 () Bool)

(assert (=> b!2126287 m!2578340))

(declare-fun m!2578342 () Bool)

(assert (=> b!2126289 m!2578342))

(assert (=> b!2125937 d!644150))

(declare-fun d!644152 () Bool)

(declare-fun c!340042 () Bool)

(assert (=> d!644152 (= c!340042 ((_ is Node!7815) (right!18708 (c!339969 input!5507))))))

(declare-fun e!1355137 () Bool)

(assert (=> d!644152 (= (inv!31366 (right!18708 (c!339969 input!5507))) e!1355137)))

(declare-fun b!2126290 () Bool)

(assert (=> b!2126290 (= e!1355137 (inv!31371 (right!18708 (c!339969 input!5507))))))

(declare-fun b!2126291 () Bool)

(declare-fun e!1355138 () Bool)

(assert (=> b!2126291 (= e!1355137 e!1355138)))

(declare-fun res!919950 () Bool)

(assert (=> b!2126291 (= res!919950 (not ((_ is Leaf!11421) (right!18708 (c!339969 input!5507)))))))

(assert (=> b!2126291 (=> res!919950 e!1355138)))

(declare-fun b!2126292 () Bool)

(assert (=> b!2126292 (= e!1355138 (inv!31372 (right!18708 (c!339969 input!5507))))))

(assert (= (and d!644152 c!340042) b!2126290))

(assert (= (and d!644152 (not c!340042)) b!2126291))

(assert (= (and b!2126291 (not res!919950)) b!2126292))

(declare-fun m!2578344 () Bool)

(assert (=> b!2126290 m!2578344))

(declare-fun m!2578346 () Bool)

(assert (=> b!2126292 m!2578346))

(assert (=> b!2125937 d!644152))

(declare-fun d!644154 () Bool)

(declare-fun res!919951 () Bool)

(declare-fun e!1355139 () Bool)

(assert (=> d!644154 (=> (not res!919951) (not e!1355139))))

(assert (=> d!644154 (= res!919951 (= (csize!15860 (c!339969 (totalInput!2936 cacheFurthestNullable!130))) (+ (size!18588 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) (size!18588 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))))

(assert (=> d!644154 (= (inv!31371 (c!339969 (totalInput!2936 cacheFurthestNullable!130))) e!1355139)))

(declare-fun b!2126293 () Bool)

(declare-fun res!919952 () Bool)

(assert (=> b!2126293 (=> (not res!919952) (not e!1355139))))

(assert (=> b!2126293 (= res!919952 (and (not (= (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130))) Empty!7815)) (not (= (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130))) Empty!7815))))))

(declare-fun b!2126294 () Bool)

(declare-fun res!919953 () Bool)

(assert (=> b!2126294 (=> (not res!919953) (not e!1355139))))

(assert (=> b!2126294 (= res!919953 (= (cheight!8026 (c!339969 (totalInput!2936 cacheFurthestNullable!130))) (+ (max!0 (height!1236 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) (height!1236 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) 1)))))

(declare-fun b!2126295 () Bool)

(assert (=> b!2126295 (= e!1355139 (<= 0 (cheight!8026 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))

(assert (= (and d!644154 res!919951) b!2126293))

(assert (= (and b!2126293 res!919952) b!2126294))

(assert (= (and b!2126294 res!919953) b!2126295))

(declare-fun m!2578348 () Bool)

(assert (=> d!644154 m!2578348))

(declare-fun m!2578350 () Bool)

(assert (=> d!644154 m!2578350))

(declare-fun m!2578352 () Bool)

(assert (=> b!2126294 m!2578352))

(declare-fun m!2578354 () Bool)

(assert (=> b!2126294 m!2578354))

(assert (=> b!2126294 m!2578352))

(assert (=> b!2126294 m!2578354))

(declare-fun m!2578356 () Bool)

(assert (=> b!2126294 m!2578356))

(assert (=> b!2125831 d!644154))

(declare-fun bs!443781 () Bool)

(declare-fun d!644156 () Bool)

(assert (= bs!443781 (and d!644156 d!644146)))

(declare-fun lambda!78884 () Int)

(assert (=> bs!443781 (= lambda!78884 lambda!78883)))

(declare-fun bs!443782 () Bool)

(assert (= bs!443782 (and d!644156 d!644110)))

(assert (=> bs!443782 (= lambda!78884 lambda!78875)))

(declare-fun bs!443783 () Bool)

(assert (= bs!443783 (and d!644156 d!644034)))

(assert (=> bs!443783 (= lambda!78884 lambda!78855)))

(declare-fun bs!443784 () Bool)

(assert (= bs!443784 (and d!644156 d!644040)))

(assert (=> bs!443784 (= lambda!78884 lambda!78858)))

(declare-fun bs!443785 () Bool)

(assert (= bs!443785 (and d!644156 d!644106)))

(assert (=> bs!443785 (= lambda!78884 lambda!78874)))

(declare-fun bs!443786 () Bool)

(assert (= bs!443786 (and d!644156 d!644072)))

(assert (=> bs!443786 (= lambda!78884 lambda!78862)))

(declare-fun bs!443787 () Bool)

(assert (= bs!443787 (and d!644156 d!644128)))

(assert (=> bs!443787 (= lambda!78884 lambda!78878)))

(declare-fun bs!443788 () Bool)

(assert (= bs!443788 (and d!644156 d!644030)))

(assert (=> bs!443788 (= lambda!78884 lambda!78854)))

(declare-fun bs!443789 () Bool)

(assert (= bs!443789 (and d!644156 d!644124)))

(assert (=> bs!443789 (= lambda!78884 lambda!78877)))

(declare-fun bs!443790 () Bool)

(assert (= bs!443790 (and d!644156 d!644062)))

(assert (=> bs!443790 (= lambda!78884 lambda!78859)))

(declare-fun bs!443791 () Bool)

(assert (= bs!443791 (and d!644156 d!643984)))

(assert (=> bs!443791 (= lambda!78884 lambda!78830)))

(declare-fun bs!443792 () Bool)

(assert (= bs!443792 (and d!644156 d!644118)))

(assert (=> bs!443792 (= lambda!78884 lambda!78876)))

(declare-fun bs!443793 () Bool)

(assert (= bs!443793 (and d!644156 d!644082)))

(assert (=> bs!443793 (= lambda!78884 lambda!78863)))

(declare-fun bs!443794 () Bool)

(assert (= bs!443794 (and d!644156 d!644090)))

(assert (=> bs!443794 (= lambda!78884 lambda!78864)))

(declare-fun bs!443795 () Bool)

(assert (= bs!443795 (and d!644156 d!644028)))

(assert (=> bs!443795 (= lambda!78884 lambda!78853)))

(declare-fun bs!443796 () Bool)

(assert (= bs!443796 (and d!644156 d!644140)))

(assert (=> bs!443796 (= lambda!78884 lambda!78882)))

(declare-fun bs!443797 () Bool)

(assert (= bs!443797 (and d!644156 d!644036)))

(assert (=> bs!443797 (= lambda!78884 lambda!78856)))

(declare-fun bs!443798 () Bool)

(assert (= bs!443798 (and d!644156 d!644070)))

(assert (=> bs!443798 (= lambda!78884 lambda!78861)))

(declare-fun bs!443799 () Bool)

(assert (= bs!443799 (and d!644156 d!644038)))

(assert (=> bs!443799 (= lambda!78884 lambda!78857)))

(declare-fun bs!443800 () Bool)

(assert (= bs!443800 (and d!644156 d!644068)))

(assert (=> bs!443800 (= lambda!78884 lambda!78860)))

(assert (=> d!644156 (= (inv!31365 (_2!13664 (_1!13665 (h!29171 mapValue!12155)))) (forall!4879 (exprs!1747 (_2!13664 (_1!13665 (h!29171 mapValue!12155)))) lambda!78884))))

(declare-fun bs!443801 () Bool)

(assert (= bs!443801 d!644156))

(declare-fun m!2578358 () Bool)

(assert (=> bs!443801 m!2578358))

(assert (=> b!2126019 d!644156))

(declare-fun bs!443802 () Bool)

(declare-fun d!644158 () Bool)

(assert (= bs!443802 (and d!644158 d!644156)))

(declare-fun lambda!78885 () Int)

(assert (=> bs!443802 (= lambda!78885 lambda!78884)))

(declare-fun bs!443803 () Bool)

(assert (= bs!443803 (and d!644158 d!644146)))

(assert (=> bs!443803 (= lambda!78885 lambda!78883)))

(declare-fun bs!443804 () Bool)

(assert (= bs!443804 (and d!644158 d!644110)))

(assert (=> bs!443804 (= lambda!78885 lambda!78875)))

(declare-fun bs!443805 () Bool)

(assert (= bs!443805 (and d!644158 d!644034)))

(assert (=> bs!443805 (= lambda!78885 lambda!78855)))

(declare-fun bs!443806 () Bool)

(assert (= bs!443806 (and d!644158 d!644040)))

(assert (=> bs!443806 (= lambda!78885 lambda!78858)))

(declare-fun bs!443807 () Bool)

(assert (= bs!443807 (and d!644158 d!644106)))

(assert (=> bs!443807 (= lambda!78885 lambda!78874)))

(declare-fun bs!443808 () Bool)

(assert (= bs!443808 (and d!644158 d!644072)))

(assert (=> bs!443808 (= lambda!78885 lambda!78862)))

(declare-fun bs!443809 () Bool)

(assert (= bs!443809 (and d!644158 d!644128)))

(assert (=> bs!443809 (= lambda!78885 lambda!78878)))

(declare-fun bs!443810 () Bool)

(assert (= bs!443810 (and d!644158 d!644030)))

(assert (=> bs!443810 (= lambda!78885 lambda!78854)))

(declare-fun bs!443811 () Bool)

(assert (= bs!443811 (and d!644158 d!644124)))

(assert (=> bs!443811 (= lambda!78885 lambda!78877)))

(declare-fun bs!443812 () Bool)

(assert (= bs!443812 (and d!644158 d!644062)))

(assert (=> bs!443812 (= lambda!78885 lambda!78859)))

(declare-fun bs!443813 () Bool)

(assert (= bs!443813 (and d!644158 d!643984)))

(assert (=> bs!443813 (= lambda!78885 lambda!78830)))

(declare-fun bs!443814 () Bool)

(assert (= bs!443814 (and d!644158 d!644118)))

(assert (=> bs!443814 (= lambda!78885 lambda!78876)))

(declare-fun bs!443815 () Bool)

(assert (= bs!443815 (and d!644158 d!644082)))

(assert (=> bs!443815 (= lambda!78885 lambda!78863)))

(declare-fun bs!443816 () Bool)

(assert (= bs!443816 (and d!644158 d!644090)))

(assert (=> bs!443816 (= lambda!78885 lambda!78864)))

(declare-fun bs!443817 () Bool)

(assert (= bs!443817 (and d!644158 d!644028)))

(assert (=> bs!443817 (= lambda!78885 lambda!78853)))

(declare-fun bs!443818 () Bool)

(assert (= bs!443818 (and d!644158 d!644140)))

(assert (=> bs!443818 (= lambda!78885 lambda!78882)))

(declare-fun bs!443819 () Bool)

(assert (= bs!443819 (and d!644158 d!644036)))

(assert (=> bs!443819 (= lambda!78885 lambda!78856)))

(declare-fun bs!443820 () Bool)

(assert (= bs!443820 (and d!644158 d!644070)))

(assert (=> bs!443820 (= lambda!78885 lambda!78861)))

(declare-fun bs!443821 () Bool)

(assert (= bs!443821 (and d!644158 d!644038)))

(assert (=> bs!443821 (= lambda!78885 lambda!78857)))

(declare-fun bs!443822 () Bool)

(assert (= bs!443822 (and d!644158 d!644068)))

(assert (=> bs!443822 (= lambda!78885 lambda!78860)))

(assert (=> d!644158 (= (inv!31365 setElem!15356) (forall!4879 (exprs!1747 setElem!15356) lambda!78885))))

(declare-fun bs!443823 () Bool)

(assert (= bs!443823 d!644158))

(declare-fun m!2578360 () Bool)

(assert (=> bs!443823 m!2578360))

(assert (=> setNonEmpty!15355 d!644158))

(declare-fun bs!443824 () Bool)

(declare-fun d!644160 () Bool)

(assert (= bs!443824 (and d!644160 d!644156)))

(declare-fun lambda!78886 () Int)

(assert (=> bs!443824 (= lambda!78886 lambda!78884)))

(declare-fun bs!443825 () Bool)

(assert (= bs!443825 (and d!644160 d!644146)))

(assert (=> bs!443825 (= lambda!78886 lambda!78883)))

(declare-fun bs!443826 () Bool)

(assert (= bs!443826 (and d!644160 d!644110)))

(assert (=> bs!443826 (= lambda!78886 lambda!78875)))

(declare-fun bs!443827 () Bool)

(assert (= bs!443827 (and d!644160 d!644034)))

(assert (=> bs!443827 (= lambda!78886 lambda!78855)))

(declare-fun bs!443828 () Bool)

(assert (= bs!443828 (and d!644160 d!644040)))

(assert (=> bs!443828 (= lambda!78886 lambda!78858)))

(declare-fun bs!443829 () Bool)

(assert (= bs!443829 (and d!644160 d!644106)))

(assert (=> bs!443829 (= lambda!78886 lambda!78874)))

(declare-fun bs!443830 () Bool)

(assert (= bs!443830 (and d!644160 d!644072)))

(assert (=> bs!443830 (= lambda!78886 lambda!78862)))

(declare-fun bs!443831 () Bool)

(assert (= bs!443831 (and d!644160 d!644128)))

(assert (=> bs!443831 (= lambda!78886 lambda!78878)))

(declare-fun bs!443832 () Bool)

(assert (= bs!443832 (and d!644160 d!644030)))

(assert (=> bs!443832 (= lambda!78886 lambda!78854)))

(declare-fun bs!443833 () Bool)

(assert (= bs!443833 (and d!644160 d!644158)))

(assert (=> bs!443833 (= lambda!78886 lambda!78885)))

(declare-fun bs!443834 () Bool)

(assert (= bs!443834 (and d!644160 d!644124)))

(assert (=> bs!443834 (= lambda!78886 lambda!78877)))

(declare-fun bs!443835 () Bool)

(assert (= bs!443835 (and d!644160 d!644062)))

(assert (=> bs!443835 (= lambda!78886 lambda!78859)))

(declare-fun bs!443836 () Bool)

(assert (= bs!443836 (and d!644160 d!643984)))

(assert (=> bs!443836 (= lambda!78886 lambda!78830)))

(declare-fun bs!443837 () Bool)

(assert (= bs!443837 (and d!644160 d!644118)))

(assert (=> bs!443837 (= lambda!78886 lambda!78876)))

(declare-fun bs!443838 () Bool)

(assert (= bs!443838 (and d!644160 d!644082)))

(assert (=> bs!443838 (= lambda!78886 lambda!78863)))

(declare-fun bs!443839 () Bool)

(assert (= bs!443839 (and d!644160 d!644090)))

(assert (=> bs!443839 (= lambda!78886 lambda!78864)))

(declare-fun bs!443840 () Bool)

(assert (= bs!443840 (and d!644160 d!644028)))

(assert (=> bs!443840 (= lambda!78886 lambda!78853)))

(declare-fun bs!443841 () Bool)

(assert (= bs!443841 (and d!644160 d!644140)))

(assert (=> bs!443841 (= lambda!78886 lambda!78882)))

(declare-fun bs!443842 () Bool)

(assert (= bs!443842 (and d!644160 d!644036)))

(assert (=> bs!443842 (= lambda!78886 lambda!78856)))

(declare-fun bs!443843 () Bool)

(assert (= bs!443843 (and d!644160 d!644070)))

(assert (=> bs!443843 (= lambda!78886 lambda!78861)))

(declare-fun bs!443844 () Bool)

(assert (= bs!443844 (and d!644160 d!644038)))

(assert (=> bs!443844 (= lambda!78886 lambda!78857)))

(declare-fun bs!443845 () Bool)

(assert (= bs!443845 (and d!644160 d!644068)))

(assert (=> bs!443845 (= lambda!78886 lambda!78860)))

(assert (=> d!644160 (= (inv!31365 setElem!15415) (forall!4879 (exprs!1747 setElem!15415) lambda!78886))))

(declare-fun bs!443846 () Bool)

(assert (= bs!443846 d!644160))

(declare-fun m!2578362 () Bool)

(assert (=> bs!443846 m!2578362))

(assert (=> setNonEmpty!15415 d!644160))

(declare-fun b!2126296 () Bool)

(declare-fun e!1355140 () List!23855)

(assert (=> b!2126296 (= e!1355140 Nil!23771)))

(declare-fun b!2126299 () Bool)

(declare-fun e!1355141 () List!23855)

(assert (=> b!2126299 (= e!1355141 (++!6317 (list!9540 (left!18378 (c!339969 input!5507))) (list!9540 (right!18708 (c!339969 input!5507)))))))

(declare-fun d!644162 () Bool)

(declare-fun c!340043 () Bool)

(assert (=> d!644162 (= c!340043 ((_ is Empty!7815) (c!339969 input!5507)))))

(assert (=> d!644162 (= (list!9540 (c!339969 input!5507)) e!1355140)))

(declare-fun b!2126298 () Bool)

(assert (=> b!2126298 (= e!1355141 (list!9541 (xs!10757 (c!339969 input!5507))))))

(declare-fun b!2126297 () Bool)

(assert (=> b!2126297 (= e!1355140 e!1355141)))

(declare-fun c!340044 () Bool)

(assert (=> b!2126297 (= c!340044 ((_ is Leaf!11421) (c!339969 input!5507)))))

(assert (= (and d!644162 c!340043) b!2126296))

(assert (= (and d!644162 (not c!340043)) b!2126297))

(assert (= (and b!2126297 c!340044) b!2126298))

(assert (= (and b!2126297 (not c!340044)) b!2126299))

(declare-fun m!2578364 () Bool)

(assert (=> b!2126299 m!2578364))

(declare-fun m!2578366 () Bool)

(assert (=> b!2126299 m!2578366))

(assert (=> b!2126299 m!2578364))

(assert (=> b!2126299 m!2578366))

(declare-fun m!2578368 () Bool)

(assert (=> b!2126299 m!2578368))

(assert (=> b!2126298 m!2578120))

(assert (=> d!643970 d!644162))

(declare-fun d!644164 () Bool)

(declare-fun res!919954 () Bool)

(declare-fun e!1355142 () Bool)

(assert (=> d!644164 (=> (not res!919954) (not e!1355142))))

(assert (=> d!644164 (= res!919954 (<= (size!18587 (list!9541 (xs!10757 (c!339969 totalInput!886)))) 512))))

(assert (=> d!644164 (= (inv!31372 (c!339969 totalInput!886)) e!1355142)))

(declare-fun b!2126300 () Bool)

(declare-fun res!919955 () Bool)

(assert (=> b!2126300 (=> (not res!919955) (not e!1355142))))

(assert (=> b!2126300 (= res!919955 (= (csize!15861 (c!339969 totalInput!886)) (size!18587 (list!9541 (xs!10757 (c!339969 totalInput!886))))))))

(declare-fun b!2126301 () Bool)

(assert (=> b!2126301 (= e!1355142 (and (> (csize!15861 (c!339969 totalInput!886)) 0) (<= (csize!15861 (c!339969 totalInput!886)) 512)))))

(assert (= (and d!644164 res!919954) b!2126300))

(assert (= (and b!2126300 res!919955) b!2126301))

(assert (=> d!644164 m!2578247))

(assert (=> d!644164 m!2578247))

(declare-fun m!2578370 () Bool)

(assert (=> d!644164 m!2578370))

(assert (=> b!2126300 m!2578247))

(assert (=> b!2126300 m!2578247))

(assert (=> b!2126300 m!2578370))

(assert (=> b!2125836 d!644164))

(declare-fun b!2126302 () Bool)

(declare-fun e!1355143 () List!23855)

(assert (=> b!2126302 (= e!1355143 Nil!23771)))

(declare-fun b!2126305 () Bool)

(declare-fun e!1355144 () List!23855)

(assert (=> b!2126305 (= e!1355144 (++!6317 (list!9540 (left!18378 (c!339969 (_1!13672 lt!795669)))) (list!9540 (right!18708 (c!339969 (_1!13672 lt!795669))))))))

(declare-fun d!644166 () Bool)

(declare-fun c!340045 () Bool)

(assert (=> d!644166 (= c!340045 ((_ is Empty!7815) (c!339969 (_1!13672 lt!795669))))))

(assert (=> d!644166 (= (list!9540 (c!339969 (_1!13672 lt!795669))) e!1355143)))

(declare-fun b!2126304 () Bool)

(assert (=> b!2126304 (= e!1355144 (list!9541 (xs!10757 (c!339969 (_1!13672 lt!795669)))))))

(declare-fun b!2126303 () Bool)

(assert (=> b!2126303 (= e!1355143 e!1355144)))

(declare-fun c!340046 () Bool)

(assert (=> b!2126303 (= c!340046 ((_ is Leaf!11421) (c!339969 (_1!13672 lt!795669))))))

(assert (= (and d!644166 c!340045) b!2126302))

(assert (= (and d!644166 (not c!340045)) b!2126303))

(assert (= (and b!2126303 c!340046) b!2126304))

(assert (= (and b!2126303 (not c!340046)) b!2126305))

(declare-fun m!2578372 () Bool)

(assert (=> b!2126305 m!2578372))

(declare-fun m!2578374 () Bool)

(assert (=> b!2126305 m!2578374))

(assert (=> b!2126305 m!2578372))

(assert (=> b!2126305 m!2578374))

(declare-fun m!2578376 () Bool)

(assert (=> b!2126305 m!2578376))

(declare-fun m!2578378 () Bool)

(assert (=> b!2126304 m!2578378))

(assert (=> d!644016 d!644166))

(declare-fun d!644168 () Bool)

(declare-fun res!919956 () Bool)

(declare-fun e!1355145 () Bool)

(assert (=> d!644168 (=> (not res!919956) (not e!1355145))))

(assert (=> d!644168 (= res!919956 (= (csize!15860 (c!339969 totalInput!886)) (+ (size!18588 (left!18378 (c!339969 totalInput!886))) (size!18588 (right!18708 (c!339969 totalInput!886))))))))

(assert (=> d!644168 (= (inv!31371 (c!339969 totalInput!886)) e!1355145)))

(declare-fun b!2126306 () Bool)

(declare-fun res!919957 () Bool)

(assert (=> b!2126306 (=> (not res!919957) (not e!1355145))))

(assert (=> b!2126306 (= res!919957 (and (not (= (left!18378 (c!339969 totalInput!886)) Empty!7815)) (not (= (right!18708 (c!339969 totalInput!886)) Empty!7815))))))

(declare-fun b!2126307 () Bool)

(declare-fun res!919958 () Bool)

(assert (=> b!2126307 (=> (not res!919958) (not e!1355145))))

(assert (=> b!2126307 (= res!919958 (= (cheight!8026 (c!339969 totalInput!886)) (+ (max!0 (height!1236 (left!18378 (c!339969 totalInput!886))) (height!1236 (right!18708 (c!339969 totalInput!886)))) 1)))))

(declare-fun b!2126308 () Bool)

(assert (=> b!2126308 (= e!1355145 (<= 0 (cheight!8026 (c!339969 totalInput!886))))))

(assert (= (and d!644168 res!919956) b!2126306))

(assert (= (and b!2126306 res!919957) b!2126307))

(assert (= (and b!2126307 res!919958) b!2126308))

(declare-fun m!2578380 () Bool)

(assert (=> d!644168 m!2578380))

(declare-fun m!2578382 () Bool)

(assert (=> d!644168 m!2578382))

(assert (=> b!2126307 m!2578312))

(assert (=> b!2126307 m!2578314))

(assert (=> b!2126307 m!2578312))

(assert (=> b!2126307 m!2578314))

(declare-fun m!2578384 () Bool)

(assert (=> b!2126307 m!2578384))

(assert (=> b!2125834 d!644168))

(declare-fun d!644170 () Bool)

(assert (=> d!644170 (= (list!9539 (_1!13672 lt!795692)) (list!9540 (c!339969 (_1!13672 lt!795692))))))

(declare-fun bs!443847 () Bool)

(assert (= bs!443847 d!644170))

(declare-fun m!2578386 () Bool)

(assert (=> bs!443847 m!2578386))

(assert (=> b!2125842 d!644170))

(declare-fun d!644172 () Bool)

(assert (=> d!644172 (= (list!9539 (_2!13672 lt!795692)) (list!9540 (c!339969 (_2!13672 lt!795692))))))

(declare-fun bs!443848 () Bool)

(assert (= bs!443848 d!644172))

(declare-fun m!2578388 () Bool)

(assert (=> bs!443848 m!2578388))

(assert (=> b!2125842 d!644172))

(declare-fun b!2126321 () Bool)

(declare-fun e!1355154 () tuple2!23434)

(assert (=> b!2126321 (= e!1355154 (tuple2!23435 Nil!23771 (list!9539 input!5507)))))

(declare-fun b!2126322 () Bool)

(declare-fun e!1355153 () Bool)

(declare-fun lt!795800 () tuple2!23434)

(assert (=> b!2126322 (= e!1355153 (= (_2!13675 lt!795800) (drop!1188 (list!9539 input!5507) (ite c!339966 0 lt!795676))))))

(declare-fun b!2126323 () Bool)

(declare-fun e!1355152 () tuple2!23434)

(assert (=> b!2126323 (= e!1355152 e!1355154)))

(declare-fun c!340051 () Bool)

(assert (=> b!2126323 (= c!340051 (<= (ite c!339966 0 lt!795676) 0))))

(declare-fun d!644174 () Bool)

(assert (=> d!644174 e!1355153))

(declare-fun res!919964 () Bool)

(assert (=> d!644174 (=> (not res!919964) (not e!1355153))))

(assert (=> d!644174 (= res!919964 (= (++!6317 (_1!13675 lt!795800) (_2!13675 lt!795800)) (list!9539 input!5507)))))

(assert (=> d!644174 (= lt!795800 e!1355152)))

(declare-fun c!340052 () Bool)

(assert (=> d!644174 (= c!340052 ((_ is Nil!23771) (list!9539 input!5507)))))

(assert (=> d!644174 (= (splitAtIndex!22 (list!9539 input!5507) (ite c!339966 0 lt!795676)) lt!795800)))

(declare-fun b!2126324 () Bool)

(assert (=> b!2126324 (= e!1355152 (tuple2!23435 Nil!23771 Nil!23771))))

(declare-fun b!2126325 () Bool)

(declare-fun res!919963 () Bool)

(assert (=> b!2126325 (=> (not res!919963) (not e!1355153))))

(declare-fun take!177 (List!23855 Int) List!23855)

(assert (=> b!2126325 (= res!919963 (= (_1!13675 lt!795800) (take!177 (list!9539 input!5507) (ite c!339966 0 lt!795676))))))

(declare-fun lt!795799 () tuple2!23434)

(declare-fun b!2126326 () Bool)

(assert (=> b!2126326 (= lt!795799 (splitAtIndex!22 (t!196379 (list!9539 input!5507)) (- (ite c!339966 0 lt!795676) 1)))))

(assert (=> b!2126326 (= e!1355154 (tuple2!23435 (Cons!23771 (h!29172 (list!9539 input!5507)) (_1!13675 lt!795799)) (_2!13675 lt!795799)))))

(assert (= (and d!644174 c!340052) b!2126324))

(assert (= (and d!644174 (not c!340052)) b!2126323))

(assert (= (and b!2126323 c!340051) b!2126321))

(assert (= (and b!2126323 (not c!340051)) b!2126326))

(assert (= (and d!644174 res!919964) b!2126325))

(assert (= (and b!2126325 res!919963) b!2126322))

(assert (=> b!2126322 m!2577838))

(declare-fun m!2578390 () Bool)

(assert (=> b!2126322 m!2578390))

(declare-fun m!2578392 () Bool)

(assert (=> d!644174 m!2578392))

(assert (=> b!2126325 m!2577838))

(declare-fun m!2578394 () Bool)

(assert (=> b!2126325 m!2578394))

(declare-fun m!2578396 () Bool)

(assert (=> b!2126326 m!2578396))

(assert (=> b!2125842 d!644174))

(assert (=> b!2125842 d!643970))

(assert (=> d!643962 d!644134))

(declare-fun bs!443849 () Bool)

(declare-fun d!644176 () Bool)

(assert (= bs!443849 (and d!644176 d!644156)))

(declare-fun lambda!78887 () Int)

(assert (=> bs!443849 (= lambda!78887 lambda!78884)))

(declare-fun bs!443850 () Bool)

(assert (= bs!443850 (and d!644176 d!644146)))

(assert (=> bs!443850 (= lambda!78887 lambda!78883)))

(declare-fun bs!443851 () Bool)

(assert (= bs!443851 (and d!644176 d!644110)))

(assert (=> bs!443851 (= lambda!78887 lambda!78875)))

(declare-fun bs!443852 () Bool)

(assert (= bs!443852 (and d!644176 d!644034)))

(assert (=> bs!443852 (= lambda!78887 lambda!78855)))

(declare-fun bs!443853 () Bool)

(assert (= bs!443853 (and d!644176 d!644040)))

(assert (=> bs!443853 (= lambda!78887 lambda!78858)))

(declare-fun bs!443854 () Bool)

(assert (= bs!443854 (and d!644176 d!644106)))

(assert (=> bs!443854 (= lambda!78887 lambda!78874)))

(declare-fun bs!443855 () Bool)

(assert (= bs!443855 (and d!644176 d!644072)))

(assert (=> bs!443855 (= lambda!78887 lambda!78862)))

(declare-fun bs!443856 () Bool)

(assert (= bs!443856 (and d!644176 d!644128)))

(assert (=> bs!443856 (= lambda!78887 lambda!78878)))

(declare-fun bs!443857 () Bool)

(assert (= bs!443857 (and d!644176 d!644030)))

(assert (=> bs!443857 (= lambda!78887 lambda!78854)))

(declare-fun bs!443858 () Bool)

(assert (= bs!443858 (and d!644176 d!644158)))

(assert (=> bs!443858 (= lambda!78887 lambda!78885)))

(declare-fun bs!443859 () Bool)

(assert (= bs!443859 (and d!644176 d!644124)))

(assert (=> bs!443859 (= lambda!78887 lambda!78877)))

(declare-fun bs!443860 () Bool)

(assert (= bs!443860 (and d!644176 d!644062)))

(assert (=> bs!443860 (= lambda!78887 lambda!78859)))

(declare-fun bs!443861 () Bool)

(assert (= bs!443861 (and d!644176 d!643984)))

(assert (=> bs!443861 (= lambda!78887 lambda!78830)))

(declare-fun bs!443862 () Bool)

(assert (= bs!443862 (and d!644176 d!644118)))

(assert (=> bs!443862 (= lambda!78887 lambda!78876)))

(declare-fun bs!443863 () Bool)

(assert (= bs!443863 (and d!644176 d!644160)))

(assert (=> bs!443863 (= lambda!78887 lambda!78886)))

(declare-fun bs!443864 () Bool)

(assert (= bs!443864 (and d!644176 d!644082)))

(assert (=> bs!443864 (= lambda!78887 lambda!78863)))

(declare-fun bs!443865 () Bool)

(assert (= bs!443865 (and d!644176 d!644090)))

(assert (=> bs!443865 (= lambda!78887 lambda!78864)))

(declare-fun bs!443866 () Bool)

(assert (= bs!443866 (and d!644176 d!644028)))

(assert (=> bs!443866 (= lambda!78887 lambda!78853)))

(declare-fun bs!443867 () Bool)

(assert (= bs!443867 (and d!644176 d!644140)))

(assert (=> bs!443867 (= lambda!78887 lambda!78882)))

(declare-fun bs!443868 () Bool)

(assert (= bs!443868 (and d!644176 d!644036)))

(assert (=> bs!443868 (= lambda!78887 lambda!78856)))

(declare-fun bs!443869 () Bool)

(assert (= bs!443869 (and d!644176 d!644070)))

(assert (=> bs!443869 (= lambda!78887 lambda!78861)))

(declare-fun bs!443870 () Bool)

(assert (= bs!443870 (and d!644176 d!644038)))

(assert (=> bs!443870 (= lambda!78887 lambda!78857)))

(declare-fun bs!443871 () Bool)

(assert (= bs!443871 (and d!644176 d!644068)))

(assert (=> bs!443871 (= lambda!78887 lambda!78860)))

(assert (=> d!644176 (= (inv!31365 setElem!15410) (forall!4879 (exprs!1747 setElem!15410) lambda!78887))))

(declare-fun bs!443872 () Bool)

(assert (= bs!443872 d!644176))

(declare-fun m!2578398 () Bool)

(assert (=> bs!443872 m!2578398))

(assert (=> setNonEmpty!15410 d!644176))

(declare-fun d!644178 () Bool)

(declare-fun res!919965 () Bool)

(declare-fun e!1355155 () Bool)

(assert (=> d!644178 (=> res!919965 e!1355155)))

(assert (=> d!644178 (= res!919965 ((_ is Nil!23772) (_2!13668 (_1!13669 lt!795733))))))

(assert (=> d!644178 (= (forall!4878 (_2!13668 (_1!13669 lt!795733)) lambda!78852) e!1355155)))

(declare-fun b!2126327 () Bool)

(declare-fun e!1355156 () Bool)

(assert (=> b!2126327 (= e!1355155 e!1355156)))

(declare-fun res!919966 () Bool)

(assert (=> b!2126327 (=> (not res!919966) (not e!1355156))))

(assert (=> b!2126327 (= res!919966 (dynLambda!11363 lambda!78852 (h!29173 (_2!13668 (_1!13669 lt!795733)))))))

(declare-fun b!2126328 () Bool)

(assert (=> b!2126328 (= e!1355156 (forall!4878 (t!196380 (_2!13668 (_1!13669 lt!795733))) lambda!78852))))

(assert (= (and d!644178 (not res!919965)) b!2126327))

(assert (= (and b!2126327 res!919966) b!2126328))

(declare-fun b_lambda!70547 () Bool)

(assert (=> (not b_lambda!70547) (not b!2126327)))

(declare-fun m!2578400 () Bool)

(assert (=> b!2126327 m!2578400))

(declare-fun m!2578402 () Bool)

(assert (=> b!2126328 m!2578402))

(assert (=> b!2125896 d!644178))

(assert (=> d!644012 d!644098))

(assert (=> d!644012 d!643976))

(declare-fun d!644180 () Bool)

(declare-fun lt!795801 () Int)

(assert (=> d!644180 (= lt!795801 (size!18587 (list!9540 (c!339969 totalInput!886))))))

(assert (=> d!644180 (= lt!795801 (ite ((_ is Empty!7815) (c!339969 totalInput!886)) 0 (ite ((_ is Leaf!11421) (c!339969 totalInput!886)) (csize!15861 (c!339969 totalInput!886)) (csize!15860 (c!339969 totalInput!886)))))))

(assert (=> d!644180 (= (size!18588 (c!339969 totalInput!886)) lt!795801)))

(declare-fun bs!443873 () Bool)

(assert (= bs!443873 d!644180))

(assert (=> bs!443873 m!2577904))

(assert (=> bs!443873 m!2577904))

(declare-fun m!2578404 () Bool)

(assert (=> bs!443873 m!2578404))

(assert (=> d!644012 d!644180))

(declare-fun b!2126329 () Bool)

(declare-fun res!919967 () Bool)

(declare-fun e!1355157 () Bool)

(assert (=> b!2126329 (=> (not res!919967) (not e!1355157))))

(assert (=> b!2126329 (= res!919967 (isBalanced!2453 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))

(declare-fun b!2126330 () Bool)

(declare-fun res!919969 () Bool)

(assert (=> b!2126330 (=> (not res!919969) (not e!1355157))))

(assert (=> b!2126330 (= res!919969 (isBalanced!2453 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))

(declare-fun b!2126332 () Bool)

(assert (=> b!2126332 (= e!1355157 (not (isEmpty!14317 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))))))

(declare-fun b!2126333 () Bool)

(declare-fun res!919970 () Bool)

(assert (=> b!2126333 (=> (not res!919970) (not e!1355157))))

(assert (=> b!2126333 (= res!919970 (<= (- (height!1236 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) (height!1236 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) 1))))

(declare-fun b!2126334 () Bool)

(declare-fun e!1355158 () Bool)

(assert (=> b!2126334 (= e!1355158 e!1355157)))

(declare-fun res!919972 () Bool)

(assert (=> b!2126334 (=> (not res!919972) (not e!1355157))))

(assert (=> b!2126334 (= res!919972 (<= (- 1) (- (height!1236 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) (height!1236 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))))

(declare-fun d!644182 () Bool)

(declare-fun res!919971 () Bool)

(assert (=> d!644182 (=> res!919971 e!1355158)))

(assert (=> d!644182 (= res!919971 (not ((_ is Node!7815) (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))))

(assert (=> d!644182 (= (isBalanced!2453 (c!339969 (totalInput!2936 cacheFurthestNullable!130))) e!1355158)))

(declare-fun b!2126331 () Bool)

(declare-fun res!919968 () Bool)

(assert (=> b!2126331 (=> (not res!919968) (not e!1355157))))

(assert (=> b!2126331 (= res!919968 (not (isEmpty!14317 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))))))

(assert (= (and d!644182 (not res!919971)) b!2126334))

(assert (= (and b!2126334 res!919972) b!2126333))

(assert (= (and b!2126333 res!919970) b!2126330))

(assert (= (and b!2126330 res!919969) b!2126329))

(assert (= (and b!2126329 res!919967) b!2126331))

(assert (= (and b!2126331 res!919968) b!2126332))

(declare-fun m!2578406 () Bool)

(assert (=> b!2126330 m!2578406))

(assert (=> b!2126333 m!2578352))

(assert (=> b!2126333 m!2578354))

(declare-fun m!2578408 () Bool)

(assert (=> b!2126329 m!2578408))

(assert (=> b!2126334 m!2578352))

(assert (=> b!2126334 m!2578354))

(declare-fun m!2578410 () Bool)

(assert (=> b!2126331 m!2578410))

(declare-fun m!2578412 () Bool)

(assert (=> b!2126332 m!2578412))

(assert (=> d!643960 d!644182))

(declare-fun bs!443874 () Bool)

(declare-fun d!644184 () Bool)

(assert (= bs!443874 (and d!644184 d!644156)))

(declare-fun lambda!78888 () Int)

(assert (=> bs!443874 (= lambda!78888 lambda!78884)))

(declare-fun bs!443875 () Bool)

(assert (= bs!443875 (and d!644184 d!644146)))

(assert (=> bs!443875 (= lambda!78888 lambda!78883)))

(declare-fun bs!443876 () Bool)

(assert (= bs!443876 (and d!644184 d!644110)))

(assert (=> bs!443876 (= lambda!78888 lambda!78875)))

(declare-fun bs!443877 () Bool)

(assert (= bs!443877 (and d!644184 d!644034)))

(assert (=> bs!443877 (= lambda!78888 lambda!78855)))

(declare-fun bs!443878 () Bool)

(assert (= bs!443878 (and d!644184 d!644040)))

(assert (=> bs!443878 (= lambda!78888 lambda!78858)))

(declare-fun bs!443879 () Bool)

(assert (= bs!443879 (and d!644184 d!644106)))

(assert (=> bs!443879 (= lambda!78888 lambda!78874)))

(declare-fun bs!443880 () Bool)

(assert (= bs!443880 (and d!644184 d!644072)))

(assert (=> bs!443880 (= lambda!78888 lambda!78862)))

(declare-fun bs!443881 () Bool)

(assert (= bs!443881 (and d!644184 d!644128)))

(assert (=> bs!443881 (= lambda!78888 lambda!78878)))

(declare-fun bs!443882 () Bool)

(assert (= bs!443882 (and d!644184 d!644030)))

(assert (=> bs!443882 (= lambda!78888 lambda!78854)))

(declare-fun bs!443883 () Bool)

(assert (= bs!443883 (and d!644184 d!644158)))

(assert (=> bs!443883 (= lambda!78888 lambda!78885)))

(declare-fun bs!443884 () Bool)

(assert (= bs!443884 (and d!644184 d!644124)))

(assert (=> bs!443884 (= lambda!78888 lambda!78877)))

(declare-fun bs!443885 () Bool)

(assert (= bs!443885 (and d!644184 d!644062)))

(assert (=> bs!443885 (= lambda!78888 lambda!78859)))

(declare-fun bs!443886 () Bool)

(assert (= bs!443886 (and d!644184 d!643984)))

(assert (=> bs!443886 (= lambda!78888 lambda!78830)))

(declare-fun bs!443887 () Bool)

(assert (= bs!443887 (and d!644184 d!644118)))

(assert (=> bs!443887 (= lambda!78888 lambda!78876)))

(declare-fun bs!443888 () Bool)

(assert (= bs!443888 (and d!644184 d!644160)))

(assert (=> bs!443888 (= lambda!78888 lambda!78886)))

(declare-fun bs!443889 () Bool)

(assert (= bs!443889 (and d!644184 d!644082)))

(assert (=> bs!443889 (= lambda!78888 lambda!78863)))

(declare-fun bs!443890 () Bool)

(assert (= bs!443890 (and d!644184 d!644090)))

(assert (=> bs!443890 (= lambda!78888 lambda!78864)))

(declare-fun bs!443891 () Bool)

(assert (= bs!443891 (and d!644184 d!644028)))

(assert (=> bs!443891 (= lambda!78888 lambda!78853)))

(declare-fun bs!443892 () Bool)

(assert (= bs!443892 (and d!644184 d!644176)))

(assert (=> bs!443892 (= lambda!78888 lambda!78887)))

(declare-fun bs!443893 () Bool)

(assert (= bs!443893 (and d!644184 d!644140)))

(assert (=> bs!443893 (= lambda!78888 lambda!78882)))

(declare-fun bs!443894 () Bool)

(assert (= bs!443894 (and d!644184 d!644036)))

(assert (=> bs!443894 (= lambda!78888 lambda!78856)))

(declare-fun bs!443895 () Bool)

(assert (= bs!443895 (and d!644184 d!644070)))

(assert (=> bs!443895 (= lambda!78888 lambda!78861)))

(declare-fun bs!443896 () Bool)

(assert (= bs!443896 (and d!644184 d!644038)))

(assert (=> bs!443896 (= lambda!78888 lambda!78857)))

(declare-fun bs!443897 () Bool)

(assert (= bs!443897 (and d!644184 d!644068)))

(assert (=> bs!443897 (= lambda!78888 lambda!78860)))

(assert (=> d!644184 (= (inv!31365 setElem!15368) (forall!4879 (exprs!1747 setElem!15368) lambda!78888))))

(declare-fun bs!443898 () Bool)

(assert (= bs!443898 d!644184))

(declare-fun m!2578414 () Bool)

(assert (=> bs!443898 m!2578414))

(assert (=> setNonEmpty!15368 d!644184))

(declare-fun bs!443899 () Bool)

(declare-fun d!644186 () Bool)

(assert (= bs!443899 (and d!644186 d!644156)))

(declare-fun lambda!78889 () Int)

(assert (=> bs!443899 (= lambda!78889 lambda!78884)))

(declare-fun bs!443900 () Bool)

(assert (= bs!443900 (and d!644186 d!644146)))

(assert (=> bs!443900 (= lambda!78889 lambda!78883)))

(declare-fun bs!443901 () Bool)

(assert (= bs!443901 (and d!644186 d!644034)))

(assert (=> bs!443901 (= lambda!78889 lambda!78855)))

(declare-fun bs!443902 () Bool)

(assert (= bs!443902 (and d!644186 d!644040)))

(assert (=> bs!443902 (= lambda!78889 lambda!78858)))

(declare-fun bs!443903 () Bool)

(assert (= bs!443903 (and d!644186 d!644106)))

(assert (=> bs!443903 (= lambda!78889 lambda!78874)))

(declare-fun bs!443904 () Bool)

(assert (= bs!443904 (and d!644186 d!644072)))

(assert (=> bs!443904 (= lambda!78889 lambda!78862)))

(declare-fun bs!443905 () Bool)

(assert (= bs!443905 (and d!644186 d!644128)))

(assert (=> bs!443905 (= lambda!78889 lambda!78878)))

(declare-fun bs!443906 () Bool)

(assert (= bs!443906 (and d!644186 d!644030)))

(assert (=> bs!443906 (= lambda!78889 lambda!78854)))

(declare-fun bs!443907 () Bool)

(assert (= bs!443907 (and d!644186 d!644158)))

(assert (=> bs!443907 (= lambda!78889 lambda!78885)))

(declare-fun bs!443908 () Bool)

(assert (= bs!443908 (and d!644186 d!644124)))

(assert (=> bs!443908 (= lambda!78889 lambda!78877)))

(declare-fun bs!443909 () Bool)

(assert (= bs!443909 (and d!644186 d!644062)))

(assert (=> bs!443909 (= lambda!78889 lambda!78859)))

(declare-fun bs!443910 () Bool)

(assert (= bs!443910 (and d!644186 d!643984)))

(assert (=> bs!443910 (= lambda!78889 lambda!78830)))

(declare-fun bs!443911 () Bool)

(assert (= bs!443911 (and d!644186 d!644118)))

(assert (=> bs!443911 (= lambda!78889 lambda!78876)))

(declare-fun bs!443912 () Bool)

(assert (= bs!443912 (and d!644186 d!644160)))

(assert (=> bs!443912 (= lambda!78889 lambda!78886)))

(declare-fun bs!443913 () Bool)

(assert (= bs!443913 (and d!644186 d!644082)))

(assert (=> bs!443913 (= lambda!78889 lambda!78863)))

(declare-fun bs!443914 () Bool)

(assert (= bs!443914 (and d!644186 d!644090)))

(assert (=> bs!443914 (= lambda!78889 lambda!78864)))

(declare-fun bs!443915 () Bool)

(assert (= bs!443915 (and d!644186 d!644028)))

(assert (=> bs!443915 (= lambda!78889 lambda!78853)))

(declare-fun bs!443916 () Bool)

(assert (= bs!443916 (and d!644186 d!644176)))

(assert (=> bs!443916 (= lambda!78889 lambda!78887)))

(declare-fun bs!443917 () Bool)

(assert (= bs!443917 (and d!644186 d!644140)))

(assert (=> bs!443917 (= lambda!78889 lambda!78882)))

(declare-fun bs!443918 () Bool)

(assert (= bs!443918 (and d!644186 d!644184)))

(assert (=> bs!443918 (= lambda!78889 lambda!78888)))

(declare-fun bs!443919 () Bool)

(assert (= bs!443919 (and d!644186 d!644110)))

(assert (=> bs!443919 (= lambda!78889 lambda!78875)))

(declare-fun bs!443920 () Bool)

(assert (= bs!443920 (and d!644186 d!644036)))

(assert (=> bs!443920 (= lambda!78889 lambda!78856)))

(declare-fun bs!443921 () Bool)

(assert (= bs!443921 (and d!644186 d!644070)))

(assert (=> bs!443921 (= lambda!78889 lambda!78861)))

(declare-fun bs!443922 () Bool)

(assert (= bs!443922 (and d!644186 d!644038)))

(assert (=> bs!443922 (= lambda!78889 lambda!78857)))

(declare-fun bs!443923 () Bool)

(assert (= bs!443923 (and d!644186 d!644068)))

(assert (=> bs!443923 (= lambda!78889 lambda!78860)))

(assert (=> d!644186 (= (inv!31365 setElem!15402) (forall!4879 (exprs!1747 setElem!15402) lambda!78889))))

(declare-fun bs!443924 () Bool)

(assert (= bs!443924 d!644186))

(declare-fun m!2578416 () Bool)

(assert (=> bs!443924 m!2578416))

(assert (=> setNonEmpty!15402 d!644186))

(declare-fun b!2126335 () Bool)

(declare-fun res!919973 () Bool)

(declare-fun e!1355159 () Bool)

(assert (=> b!2126335 (=> (not res!919973) (not e!1355159))))

(assert (=> b!2126335 (= res!919973 (isBalanced!2453 (right!18708 (c!339969 (_1!13672 lt!795692)))))))

(declare-fun b!2126336 () Bool)

(declare-fun res!919975 () Bool)

(assert (=> b!2126336 (=> (not res!919975) (not e!1355159))))

(assert (=> b!2126336 (= res!919975 (isBalanced!2453 (left!18378 (c!339969 (_1!13672 lt!795692)))))))

(declare-fun b!2126338 () Bool)

(assert (=> b!2126338 (= e!1355159 (not (isEmpty!14317 (right!18708 (c!339969 (_1!13672 lt!795692))))))))

(declare-fun b!2126339 () Bool)

(declare-fun res!919976 () Bool)

(assert (=> b!2126339 (=> (not res!919976) (not e!1355159))))

(assert (=> b!2126339 (= res!919976 (<= (- (height!1236 (left!18378 (c!339969 (_1!13672 lt!795692)))) (height!1236 (right!18708 (c!339969 (_1!13672 lt!795692))))) 1))))

(declare-fun b!2126340 () Bool)

(declare-fun e!1355160 () Bool)

(assert (=> b!2126340 (= e!1355160 e!1355159)))

(declare-fun res!919978 () Bool)

(assert (=> b!2126340 (=> (not res!919978) (not e!1355159))))

(assert (=> b!2126340 (= res!919978 (<= (- 1) (- (height!1236 (left!18378 (c!339969 (_1!13672 lt!795692)))) (height!1236 (right!18708 (c!339969 (_1!13672 lt!795692)))))))))

(declare-fun d!644188 () Bool)

(declare-fun res!919977 () Bool)

(assert (=> d!644188 (=> res!919977 e!1355160)))

(assert (=> d!644188 (= res!919977 (not ((_ is Node!7815) (c!339969 (_1!13672 lt!795692)))))))

(assert (=> d!644188 (= (isBalanced!2453 (c!339969 (_1!13672 lt!795692))) e!1355160)))

(declare-fun b!2126337 () Bool)

(declare-fun res!919974 () Bool)

(assert (=> b!2126337 (=> (not res!919974) (not e!1355159))))

(assert (=> b!2126337 (= res!919974 (not (isEmpty!14317 (left!18378 (c!339969 (_1!13672 lt!795692))))))))

(assert (= (and d!644188 (not res!919977)) b!2126340))

(assert (= (and b!2126340 res!919978) b!2126339))

(assert (= (and b!2126339 res!919976) b!2126336))

(assert (= (and b!2126336 res!919975) b!2126335))

(assert (= (and b!2126335 res!919973) b!2126337))

(assert (= (and b!2126337 res!919974) b!2126338))

(declare-fun m!2578418 () Bool)

(assert (=> b!2126336 m!2578418))

(declare-fun m!2578420 () Bool)

(assert (=> b!2126339 m!2578420))

(declare-fun m!2578422 () Bool)

(assert (=> b!2126339 m!2578422))

(declare-fun m!2578424 () Bool)

(assert (=> b!2126335 m!2578424))

(assert (=> b!2126340 m!2578420))

(assert (=> b!2126340 m!2578422))

(declare-fun m!2578426 () Bool)

(assert (=> b!2126337 m!2578426))

(declare-fun m!2578428 () Bool)

(assert (=> b!2126338 m!2578428))

(assert (=> d!644004 d!644188))

(declare-fun b!2126389 () Bool)

(declare-fun lt!795836 () Unit!37634)

(declare-fun lt!795838 () Unit!37634)

(assert (=> b!2126389 (= lt!795836 lt!795838)))

(declare-fun call!128770 () Int)

(declare-fun lt!795833 () List!23855)

(declare-fun slice!612 (List!23855 Int Int) List!23855)

(assert (=> b!2126389 (= (drop!1188 lt!795833 (ite c!339966 0 lt!795676)) (slice!612 lt!795833 (ite c!339966 0 lt!795676) call!128770))))

(declare-fun dropLemma!2 (List!23855 Int) Unit!37634)

(assert (=> b!2126389 (= lt!795838 (dropLemma!2 lt!795833 (ite c!339966 0 lt!795676)))))

(assert (=> b!2126389 (= lt!795833 (list!9541 (xs!10757 (c!339969 input!5507))))))

(declare-fun lt!795831 () tuple2!23434)

(declare-fun call!128773 () tuple2!23434)

(assert (=> b!2126389 (= lt!795831 call!128773)))

(declare-fun e!1355188 () tuple2!23432)

(declare-fun slice!613 (IArray!15635 Int Int) IArray!15635)

(assert (=> b!2126389 (= e!1355188 (tuple2!23433 (Leaf!11421 (slice!613 (xs!10757 (c!339969 input!5507)) 0 (ite c!339966 0 lt!795676)) (ite c!339966 0 lt!795676)) (Leaf!11421 (slice!613 (xs!10757 (c!339969 input!5507)) (ite c!339966 0 lt!795676) (csize!15861 (c!339969 input!5507))) (- (csize!15861 (c!339969 input!5507)) (ite c!339966 0 lt!795676)))))))

(declare-fun b!2126390 () Bool)

(declare-fun e!1355191 () tuple2!23432)

(declare-fun e!1355185 () tuple2!23432)

(assert (=> b!2126390 (= e!1355191 e!1355185)))

(declare-fun c!340077 () Bool)

(assert (=> b!2126390 (= c!340077 ((_ is Leaf!11421) (c!339969 input!5507)))))

(declare-fun b!2126391 () Bool)

(declare-fun lt!795835 () tuple2!23432)

(declare-fun call!128772 () tuple2!23432)

(assert (=> b!2126391 (= lt!795835 call!128772)))

(declare-fun e!1355186 () tuple2!23432)

(declare-fun call!128774 () Conc!7815)

(assert (=> b!2126391 (= e!1355186 (tuple2!23433 (_1!13674 lt!795835) call!128774))))

(declare-fun b!2126392 () Bool)

(declare-fun e!1355189 () tuple2!23434)

(declare-fun lt!795837 () List!23855)

(declare-fun lt!795839 () List!23855)

(assert (=> b!2126392 (= e!1355189 (tuple2!23435 lt!795837 lt!795839))))

(declare-fun bm!128764 () Bool)

(declare-fun c!340080 () Bool)

(assert (=> bm!128764 (= c!340080 c!340077)))

(declare-fun e!1355192 () Int)

(declare-fun e!1355194 () List!23855)

(assert (=> bm!128764 (= call!128773 (splitAtIndex!22 e!1355194 (ite c!340077 (ite c!339966 0 lt!795676) e!1355192)))))

(declare-fun b!2126393 () Bool)

(declare-fun e!1355196 () tuple2!23432)

(assert (=> b!2126393 (= e!1355196 (tuple2!23433 Empty!7815 (c!339969 input!5507)))))

(declare-fun b!2126394 () Bool)

(declare-fun e!1355187 () tuple2!23434)

(assert (=> b!2126394 (= e!1355189 e!1355187)))

(declare-fun c!340083 () Bool)

(assert (=> b!2126394 (= c!340083 (< (ite c!339966 0 lt!795676) call!128770))))

(declare-fun d!644190 () Bool)

(declare-fun e!1355190 () Bool)

(assert (=> d!644190 e!1355190))

(declare-fun res!919983 () Bool)

(assert (=> d!644190 (=> (not res!919983) (not e!1355190))))

(declare-fun lt!795828 () tuple2!23432)

(assert (=> d!644190 (= res!919983 (isBalanced!2453 (_1!13674 lt!795828)))))

(assert (=> d!644190 (= lt!795828 e!1355191)))

(declare-fun c!340079 () Bool)

(assert (=> d!644190 (= c!340079 ((_ is Empty!7815) (c!339969 input!5507)))))

(assert (=> d!644190 (isBalanced!2453 (c!339969 input!5507))))

(assert (=> d!644190 (= (splitAt!18 (c!339969 input!5507) (ite c!339966 0 lt!795676)) lt!795828)))

(declare-fun b!2126395 () Bool)

(declare-fun lt!795840 () tuple2!23432)

(assert (=> b!2126395 (= lt!795840 call!128772)))

(assert (=> b!2126395 (= e!1355186 (tuple2!23433 call!128774 (_2!13674 lt!795840)))))

(declare-fun b!2126396 () Bool)

(assert (=> b!2126396 (= e!1355191 (tuple2!23433 (c!339969 input!5507) (c!339969 input!5507)))))

(declare-fun b!2126397 () Bool)

(declare-fun c!340078 () Bool)

(assert (=> b!2126397 (= c!340078 (<= (ite c!339966 0 lt!795676) 0))))

(assert (=> b!2126397 (= e!1355185 e!1355196)))

(declare-fun b!2126398 () Bool)

(assert (=> b!2126398 (= e!1355194 (list!9541 (xs!10757 (c!339969 input!5507))))))

(declare-fun b!2126399 () Bool)

(declare-fun e!1355193 () Int)

(assert (=> b!2126399 (= e!1355193 (- (ite c!339966 0 lt!795676) (size!18588 (left!18378 (c!339969 input!5507)))))))

(declare-fun b!2126400 () Bool)

(assert (=> b!2126400 (= e!1355192 (- (ite c!339966 0 lt!795676) call!128770))))

(declare-fun call!128771 () List!23855)

(declare-fun bm!128765 () Bool)

(declare-fun lt!795830 () tuple2!23434)

(declare-fun lt!795834 () tuple2!23434)

(assert (=> bm!128765 (= call!128771 (++!6317 (ite c!340083 (_2!13675 lt!795834) lt!795837) (ite c!340083 lt!795839 (_1!13675 lt!795830))))))

(declare-fun b!2126401 () Bool)

(declare-fun call!128769 () tuple2!23434)

(assert (=> b!2126401 (= lt!795834 call!128769)))

(assert (=> b!2126401 (= e!1355187 (tuple2!23435 (_1!13675 lt!795834) call!128771))))

(declare-fun c!340085 () Bool)

(declare-fun b!2126402 () Bool)

(assert (=> b!2126402 (= c!340085 (= (size!18588 (left!18378 (c!339969 input!5507))) (ite c!339966 0 lt!795676)))))

(declare-fun lt!795832 () Unit!37634)

(declare-fun lt!795829 () Unit!37634)

(assert (=> b!2126402 (= lt!795832 lt!795829)))

(assert (=> b!2126402 (= (splitAtIndex!22 (++!6317 lt!795837 lt!795839) (ite c!339966 0 lt!795676)) e!1355189)))

(declare-fun c!340075 () Bool)

(assert (=> b!2126402 (= c!340075 (= call!128770 (ite c!339966 0 lt!795676)))))

(declare-fun splitAtLemma!2 (List!23855 List!23855 Int) Unit!37634)

(assert (=> b!2126402 (= lt!795829 (splitAtLemma!2 lt!795837 lt!795839 (ite c!339966 0 lt!795676)))))

(assert (=> b!2126402 (= lt!795839 (list!9540 (right!18708 (c!339969 input!5507))))))

(assert (=> b!2126402 (= lt!795837 (list!9540 (left!18378 (c!339969 input!5507))))))

(declare-fun e!1355195 () tuple2!23432)

(assert (=> b!2126402 (= e!1355185 e!1355195)))

(declare-fun bm!128766 () Bool)

(assert (=> bm!128766 (= call!128770 (size!18587 (ite c!340077 lt!795833 lt!795837)))))

(declare-fun b!2126403 () Bool)

(assert (=> b!2126403 (= e!1355192 (ite c!339966 0 lt!795676))))

(declare-fun b!2126404 () Bool)

(assert (=> b!2126404 (= e!1355188 (tuple2!23433 (c!339969 input!5507) Empty!7815))))

(declare-fun bm!128767 () Bool)

(declare-fun c!340081 () Bool)

(declare-fun ++!6318 (Conc!7815 Conc!7815) Conc!7815)

(assert (=> bm!128767 (= call!128774 (++!6318 (ite c!340081 (_2!13674 lt!795835) (left!18378 (c!339969 input!5507))) (ite c!340081 (right!18708 (c!339969 input!5507)) (_1!13674 lt!795840))))))

(declare-fun b!2126405 () Bool)

(assert (=> b!2126405 (= lt!795830 call!128769)))

(assert (=> b!2126405 (= e!1355187 (tuple2!23435 call!128771 (_2!13675 lt!795830)))))

(declare-fun b!2126406 () Bool)

(assert (=> b!2126406 (= e!1355195 e!1355186)))

(assert (=> b!2126406 (= c!340081 (< (ite c!339966 0 lt!795676) (size!18588 (left!18378 (c!339969 input!5507)))))))

(declare-fun b!2126407 () Bool)

(assert (=> b!2126407 (= e!1355194 (ite c!340083 lt!795837 lt!795839))))

(declare-fun b!2126408 () Bool)

(assert (=> b!2126408 (= e!1355190 (= (tuple2!23435 (list!9540 (_1!13674 lt!795828)) (list!9540 (_2!13674 lt!795828))) (splitAtIndex!22 (list!9540 (c!339969 input!5507)) (ite c!339966 0 lt!795676))))))

(declare-fun b!2126409 () Bool)

(assert (=> b!2126409 (= e!1355196 e!1355188)))

(declare-fun c!340084 () Bool)

(assert (=> b!2126409 (= c!340084 (= (ite c!339966 0 lt!795676) (csize!15861 (c!339969 input!5507))))))

(declare-fun b!2126410 () Bool)

(assert (=> b!2126410 (= e!1355195 (tuple2!23433 (left!18378 (c!339969 input!5507)) (right!18708 (c!339969 input!5507))))))

(declare-fun bm!128768 () Bool)

(declare-fun c!340082 () Bool)

(assert (=> bm!128768 (= c!340082 c!340081)))

(assert (=> bm!128768 (= call!128772 (splitAt!18 (ite c!340081 (left!18378 (c!339969 input!5507)) (right!18708 (c!339969 input!5507))) e!1355193))))

(declare-fun bm!128769 () Bool)

(declare-fun c!340076 () Bool)

(assert (=> bm!128769 (= c!340076 c!340083)))

(assert (=> bm!128769 (= call!128769 call!128773)))

(declare-fun b!2126411 () Bool)

(declare-fun res!919984 () Bool)

(assert (=> b!2126411 (=> (not res!919984) (not e!1355190))))

(assert (=> b!2126411 (= res!919984 (isBalanced!2453 (_2!13674 lt!795828)))))

(declare-fun b!2126412 () Bool)

(assert (=> b!2126412 (= e!1355193 (ite c!339966 0 lt!795676))))

(assert (= (and d!644190 c!340079) b!2126396))

(assert (= (and d!644190 (not c!340079)) b!2126390))

(assert (= (and b!2126390 c!340077) b!2126397))

(assert (= (and b!2126390 (not c!340077)) b!2126402))

(assert (= (and b!2126397 c!340078) b!2126393))

(assert (= (and b!2126397 (not c!340078)) b!2126409))

(assert (= (and b!2126409 c!340084) b!2126404))

(assert (= (and b!2126409 (not c!340084)) b!2126389))

(assert (= (and b!2126402 c!340075) b!2126392))

(assert (= (and b!2126402 (not c!340075)) b!2126394))

(assert (= (and b!2126394 c!340083) b!2126401))

(assert (= (and b!2126394 (not c!340083)) b!2126405))

(assert (= (or b!2126401 b!2126405) bm!128765))

(assert (= (or b!2126401 b!2126405) bm!128769))

(assert (= (and bm!128769 c!340076) b!2126403))

(assert (= (and bm!128769 (not c!340076)) b!2126400))

(assert (= (and b!2126402 c!340085) b!2126410))

(assert (= (and b!2126402 (not c!340085)) b!2126406))

(assert (= (and b!2126406 c!340081) b!2126391))

(assert (= (and b!2126406 (not c!340081)) b!2126395))

(assert (= (or b!2126391 b!2126395) bm!128767))

(assert (= (or b!2126391 b!2126395) bm!128768))

(assert (= (and bm!128768 c!340082) b!2126412))

(assert (= (and bm!128768 (not c!340082)) b!2126399))

(assert (= (or b!2126389 b!2126394 b!2126400 b!2126402) bm!128766))

(assert (= (or b!2126389 bm!128769) bm!128764))

(assert (= (and bm!128764 c!340080) b!2126398))

(assert (= (and bm!128764 (not c!340080)) b!2126407))

(assert (= (and d!644190 res!919983) b!2126411))

(assert (= (and b!2126411 res!919984) b!2126408))

(declare-fun m!2578430 () Bool)

(assert (=> bm!128764 m!2578430))

(declare-fun m!2578432 () Bool)

(assert (=> bm!128767 m!2578432))

(declare-fun m!2578434 () Bool)

(assert (=> bm!128765 m!2578434))

(declare-fun m!2578436 () Bool)

(assert (=> b!2126411 m!2578436))

(declare-fun m!2578438 () Bool)

(assert (=> b!2126402 m!2578438))

(assert (=> b!2126402 m!2578134))

(assert (=> b!2126402 m!2578366))

(declare-fun m!2578440 () Bool)

(assert (=> b!2126402 m!2578440))

(assert (=> b!2126402 m!2578438))

(declare-fun m!2578442 () Bool)

(assert (=> b!2126402 m!2578442))

(assert (=> b!2126402 m!2578364))

(assert (=> b!2126406 m!2578134))

(declare-fun m!2578444 () Bool)

(assert (=> d!644190 m!2578444))

(assert (=> d!644190 m!2577902))

(declare-fun m!2578446 () Bool)

(assert (=> b!2126389 m!2578446))

(declare-fun m!2578448 () Bool)

(assert (=> b!2126389 m!2578448))

(declare-fun m!2578450 () Bool)

(assert (=> b!2126389 m!2578450))

(declare-fun m!2578452 () Bool)

(assert (=> b!2126389 m!2578452))

(declare-fun m!2578454 () Bool)

(assert (=> b!2126389 m!2578454))

(assert (=> b!2126389 m!2578120))

(declare-fun m!2578456 () Bool)

(assert (=> b!2126408 m!2578456))

(declare-fun m!2578458 () Bool)

(assert (=> b!2126408 m!2578458))

(assert (=> b!2126408 m!2577898))

(assert (=> b!2126408 m!2577898))

(declare-fun m!2578460 () Bool)

(assert (=> b!2126408 m!2578460))

(declare-fun m!2578462 () Bool)

(assert (=> bm!128768 m!2578462))

(declare-fun m!2578464 () Bool)

(assert (=> bm!128766 m!2578464))

(assert (=> b!2126399 m!2578134))

(assert (=> b!2126398 m!2578120))

(assert (=> d!644004 d!644190))

(declare-fun b!2126413 () Bool)

(declare-fun res!919985 () Bool)

(declare-fun e!1355197 () Bool)

(assert (=> b!2126413 (=> (not res!919985) (not e!1355197))))

(assert (=> b!2126413 (= res!919985 (isBalanced!2453 (right!18708 (c!339969 input!5507))))))

(declare-fun b!2126414 () Bool)

(declare-fun res!919987 () Bool)

(assert (=> b!2126414 (=> (not res!919987) (not e!1355197))))

(assert (=> b!2126414 (= res!919987 (isBalanced!2453 (left!18378 (c!339969 input!5507))))))

(declare-fun b!2126416 () Bool)

(assert (=> b!2126416 (= e!1355197 (not (isEmpty!14317 (right!18708 (c!339969 input!5507)))))))

(declare-fun b!2126417 () Bool)

(declare-fun res!919988 () Bool)

(assert (=> b!2126417 (=> (not res!919988) (not e!1355197))))

(assert (=> b!2126417 (= res!919988 (<= (- (height!1236 (left!18378 (c!339969 input!5507))) (height!1236 (right!18708 (c!339969 input!5507)))) 1))))

(declare-fun b!2126418 () Bool)

(declare-fun e!1355198 () Bool)

(assert (=> b!2126418 (= e!1355198 e!1355197)))

(declare-fun res!919990 () Bool)

(assert (=> b!2126418 (=> (not res!919990) (not e!1355197))))

(assert (=> b!2126418 (= res!919990 (<= (- 1) (- (height!1236 (left!18378 (c!339969 input!5507))) (height!1236 (right!18708 (c!339969 input!5507))))))))

(declare-fun d!644192 () Bool)

(declare-fun res!919989 () Bool)

(assert (=> d!644192 (=> res!919989 e!1355198)))

(assert (=> d!644192 (= res!919989 (not ((_ is Node!7815) (c!339969 input!5507))))))

(assert (=> d!644192 (= (isBalanced!2453 (c!339969 input!5507)) e!1355198)))

(declare-fun b!2126415 () Bool)

(declare-fun res!919986 () Bool)

(assert (=> b!2126415 (=> (not res!919986) (not e!1355197))))

(assert (=> b!2126415 (= res!919986 (not (isEmpty!14317 (left!18378 (c!339969 input!5507)))))))

(assert (= (and d!644192 (not res!919989)) b!2126418))

(assert (= (and b!2126418 res!919990) b!2126417))

(assert (= (and b!2126417 res!919988) b!2126414))

(assert (= (and b!2126414 res!919987) b!2126413))

(assert (= (and b!2126413 res!919985) b!2126415))

(assert (= (and b!2126415 res!919986) b!2126416))

(declare-fun m!2578466 () Bool)

(assert (=> b!2126414 m!2578466))

(assert (=> b!2126417 m!2578138))

(assert (=> b!2126417 m!2578140))

(declare-fun m!2578468 () Bool)

(assert (=> b!2126413 m!2578468))

(assert (=> b!2126418 m!2578138))

(assert (=> b!2126418 m!2578140))

(declare-fun m!2578470 () Bool)

(assert (=> b!2126415 m!2578470))

(declare-fun m!2578472 () Bool)

(assert (=> b!2126416 m!2578472))

(assert (=> d!644004 d!644192))

(declare-fun bs!443925 () Bool)

(declare-fun d!644194 () Bool)

(assert (= bs!443925 (and d!644194 d!644156)))

(declare-fun lambda!78890 () Int)

(assert (=> bs!443925 (= lambda!78890 lambda!78884)))

(declare-fun bs!443926 () Bool)

(assert (= bs!443926 (and d!644194 d!644146)))

(assert (=> bs!443926 (= lambda!78890 lambda!78883)))

(declare-fun bs!443927 () Bool)

(assert (= bs!443927 (and d!644194 d!644034)))

(assert (=> bs!443927 (= lambda!78890 lambda!78855)))

(declare-fun bs!443928 () Bool)

(assert (= bs!443928 (and d!644194 d!644040)))

(assert (=> bs!443928 (= lambda!78890 lambda!78858)))

(declare-fun bs!443929 () Bool)

(assert (= bs!443929 (and d!644194 d!644106)))

(assert (=> bs!443929 (= lambda!78890 lambda!78874)))

(declare-fun bs!443930 () Bool)

(assert (= bs!443930 (and d!644194 d!644072)))

(assert (=> bs!443930 (= lambda!78890 lambda!78862)))

(declare-fun bs!443931 () Bool)

(assert (= bs!443931 (and d!644194 d!644030)))

(assert (=> bs!443931 (= lambda!78890 lambda!78854)))

(declare-fun bs!443932 () Bool)

(assert (= bs!443932 (and d!644194 d!644158)))

(assert (=> bs!443932 (= lambda!78890 lambda!78885)))

(declare-fun bs!443933 () Bool)

(assert (= bs!443933 (and d!644194 d!644124)))

(assert (=> bs!443933 (= lambda!78890 lambda!78877)))

(declare-fun bs!443934 () Bool)

(assert (= bs!443934 (and d!644194 d!644062)))

(assert (=> bs!443934 (= lambda!78890 lambda!78859)))

(declare-fun bs!443935 () Bool)

(assert (= bs!443935 (and d!644194 d!643984)))

(assert (=> bs!443935 (= lambda!78890 lambda!78830)))

(declare-fun bs!443936 () Bool)

(assert (= bs!443936 (and d!644194 d!644118)))

(assert (=> bs!443936 (= lambda!78890 lambda!78876)))

(declare-fun bs!443937 () Bool)

(assert (= bs!443937 (and d!644194 d!644160)))

(assert (=> bs!443937 (= lambda!78890 lambda!78886)))

(declare-fun bs!443938 () Bool)

(assert (= bs!443938 (and d!644194 d!644082)))

(assert (=> bs!443938 (= lambda!78890 lambda!78863)))

(declare-fun bs!443939 () Bool)

(assert (= bs!443939 (and d!644194 d!644090)))

(assert (=> bs!443939 (= lambda!78890 lambda!78864)))

(declare-fun bs!443940 () Bool)

(assert (= bs!443940 (and d!644194 d!644028)))

(assert (=> bs!443940 (= lambda!78890 lambda!78853)))

(declare-fun bs!443941 () Bool)

(assert (= bs!443941 (and d!644194 d!644176)))

(assert (=> bs!443941 (= lambda!78890 lambda!78887)))

(declare-fun bs!443942 () Bool)

(assert (= bs!443942 (and d!644194 d!644140)))

(assert (=> bs!443942 (= lambda!78890 lambda!78882)))

(declare-fun bs!443943 () Bool)

(assert (= bs!443943 (and d!644194 d!644184)))

(assert (=> bs!443943 (= lambda!78890 lambda!78888)))

(declare-fun bs!443944 () Bool)

(assert (= bs!443944 (and d!644194 d!644110)))

(assert (=> bs!443944 (= lambda!78890 lambda!78875)))

(declare-fun bs!443945 () Bool)

(assert (= bs!443945 (and d!644194 d!644036)))

(assert (=> bs!443945 (= lambda!78890 lambda!78856)))

(declare-fun bs!443946 () Bool)

(assert (= bs!443946 (and d!644194 d!644070)))

(assert (=> bs!443946 (= lambda!78890 lambda!78861)))

(declare-fun bs!443947 () Bool)

(assert (= bs!443947 (and d!644194 d!644128)))

(assert (=> bs!443947 (= lambda!78890 lambda!78878)))

(declare-fun bs!443948 () Bool)

(assert (= bs!443948 (and d!644194 d!644186)))

(assert (=> bs!443948 (= lambda!78890 lambda!78889)))

(declare-fun bs!443949 () Bool)

(assert (= bs!443949 (and d!644194 d!644038)))

(assert (=> bs!443949 (= lambda!78890 lambda!78857)))

(declare-fun bs!443950 () Bool)

(assert (= bs!443950 (and d!644194 d!644068)))

(assert (=> bs!443950 (= lambda!78890 lambda!78860)))

(assert (=> d!644194 (= (inv!31365 setElem!15374) (forall!4879 (exprs!1747 setElem!15374) lambda!78890))))

(declare-fun bs!443951 () Bool)

(assert (= bs!443951 d!644194))

(declare-fun m!2578474 () Bool)

(assert (=> bs!443951 m!2578474))

(assert (=> setNonEmpty!15374 d!644194))

(assert (=> b!2125718 d!643994))

(declare-fun b!2126419 () Bool)

(declare-fun e!1355199 () List!23855)

(assert (=> b!2126419 (= e!1355199 Nil!23771)))

(declare-fun b!2126422 () Bool)

(declare-fun e!1355200 () List!23855)

(assert (=> b!2126422 (= e!1355200 (++!6317 (list!9540 (left!18378 (c!339969 (_2!13672 lt!795669)))) (list!9540 (right!18708 (c!339969 (_2!13672 lt!795669))))))))

(declare-fun d!644196 () Bool)

(declare-fun c!340086 () Bool)

(assert (=> d!644196 (= c!340086 ((_ is Empty!7815) (c!339969 (_2!13672 lt!795669))))))

(assert (=> d!644196 (= (list!9540 (c!339969 (_2!13672 lt!795669))) e!1355199)))

(declare-fun b!2126421 () Bool)

(assert (=> b!2126421 (= e!1355200 (list!9541 (xs!10757 (c!339969 (_2!13672 lt!795669)))))))

(declare-fun b!2126420 () Bool)

(assert (=> b!2126420 (= e!1355199 e!1355200)))

(declare-fun c!340087 () Bool)

(assert (=> b!2126420 (= c!340087 ((_ is Leaf!11421) (c!339969 (_2!13672 lt!795669))))))

(assert (= (and d!644196 c!340086) b!2126419))

(assert (= (and d!644196 (not c!340086)) b!2126420))

(assert (= (and b!2126420 c!340087) b!2126421))

(assert (= (and b!2126420 (not c!340087)) b!2126422))

(declare-fun m!2578476 () Bool)

(assert (=> b!2126422 m!2578476))

(declare-fun m!2578478 () Bool)

(assert (=> b!2126422 m!2578478))

(assert (=> b!2126422 m!2578476))

(assert (=> b!2126422 m!2578478))

(declare-fun m!2578480 () Bool)

(assert (=> b!2126422 m!2578480))

(declare-fun m!2578482 () Bool)

(assert (=> b!2126421 m!2578482))

(assert (=> d!644020 d!644196))

(declare-fun bs!443952 () Bool)

(declare-fun d!644198 () Bool)

(assert (= bs!443952 (and d!644198 d!644156)))

(declare-fun lambda!78891 () Int)

(assert (=> bs!443952 (= lambda!78891 lambda!78884)))

(declare-fun bs!443953 () Bool)

(assert (= bs!443953 (and d!644198 d!644146)))

(assert (=> bs!443953 (= lambda!78891 lambda!78883)))

(declare-fun bs!443954 () Bool)

(assert (= bs!443954 (and d!644198 d!644034)))

(assert (=> bs!443954 (= lambda!78891 lambda!78855)))

(declare-fun bs!443955 () Bool)

(assert (= bs!443955 (and d!644198 d!644040)))

(assert (=> bs!443955 (= lambda!78891 lambda!78858)))

(declare-fun bs!443956 () Bool)

(assert (= bs!443956 (and d!644198 d!644106)))

(assert (=> bs!443956 (= lambda!78891 lambda!78874)))

(declare-fun bs!443957 () Bool)

(assert (= bs!443957 (and d!644198 d!644072)))

(assert (=> bs!443957 (= lambda!78891 lambda!78862)))

(declare-fun bs!443958 () Bool)

(assert (= bs!443958 (and d!644198 d!644030)))

(assert (=> bs!443958 (= lambda!78891 lambda!78854)))

(declare-fun bs!443959 () Bool)

(assert (= bs!443959 (and d!644198 d!644158)))

(assert (=> bs!443959 (= lambda!78891 lambda!78885)))

(declare-fun bs!443960 () Bool)

(assert (= bs!443960 (and d!644198 d!644124)))

(assert (=> bs!443960 (= lambda!78891 lambda!78877)))

(declare-fun bs!443961 () Bool)

(assert (= bs!443961 (and d!644198 d!644062)))

(assert (=> bs!443961 (= lambda!78891 lambda!78859)))

(declare-fun bs!443962 () Bool)

(assert (= bs!443962 (and d!644198 d!643984)))

(assert (=> bs!443962 (= lambda!78891 lambda!78830)))

(declare-fun bs!443963 () Bool)

(assert (= bs!443963 (and d!644198 d!644194)))

(assert (=> bs!443963 (= lambda!78891 lambda!78890)))

(declare-fun bs!443964 () Bool)

(assert (= bs!443964 (and d!644198 d!644118)))

(assert (=> bs!443964 (= lambda!78891 lambda!78876)))

(declare-fun bs!443965 () Bool)

(assert (= bs!443965 (and d!644198 d!644160)))

(assert (=> bs!443965 (= lambda!78891 lambda!78886)))

(declare-fun bs!443966 () Bool)

(assert (= bs!443966 (and d!644198 d!644082)))

(assert (=> bs!443966 (= lambda!78891 lambda!78863)))

(declare-fun bs!443967 () Bool)

(assert (= bs!443967 (and d!644198 d!644090)))

(assert (=> bs!443967 (= lambda!78891 lambda!78864)))

(declare-fun bs!443968 () Bool)

(assert (= bs!443968 (and d!644198 d!644028)))

(assert (=> bs!443968 (= lambda!78891 lambda!78853)))

(declare-fun bs!443969 () Bool)

(assert (= bs!443969 (and d!644198 d!644176)))

(assert (=> bs!443969 (= lambda!78891 lambda!78887)))

(declare-fun bs!443970 () Bool)

(assert (= bs!443970 (and d!644198 d!644140)))

(assert (=> bs!443970 (= lambda!78891 lambda!78882)))

(declare-fun bs!443971 () Bool)

(assert (= bs!443971 (and d!644198 d!644184)))

(assert (=> bs!443971 (= lambda!78891 lambda!78888)))

(declare-fun bs!443972 () Bool)

(assert (= bs!443972 (and d!644198 d!644110)))

(assert (=> bs!443972 (= lambda!78891 lambda!78875)))

(declare-fun bs!443973 () Bool)

(assert (= bs!443973 (and d!644198 d!644036)))

(assert (=> bs!443973 (= lambda!78891 lambda!78856)))

(declare-fun bs!443974 () Bool)

(assert (= bs!443974 (and d!644198 d!644070)))

(assert (=> bs!443974 (= lambda!78891 lambda!78861)))

(declare-fun bs!443975 () Bool)

(assert (= bs!443975 (and d!644198 d!644128)))

(assert (=> bs!443975 (= lambda!78891 lambda!78878)))

(declare-fun bs!443976 () Bool)

(assert (= bs!443976 (and d!644198 d!644186)))

(assert (=> bs!443976 (= lambda!78891 lambda!78889)))

(declare-fun bs!443977 () Bool)

(assert (= bs!443977 (and d!644198 d!644038)))

(assert (=> bs!443977 (= lambda!78891 lambda!78857)))

(declare-fun bs!443978 () Bool)

(assert (= bs!443978 (and d!644198 d!644068)))

(assert (=> bs!443978 (= lambda!78891 lambda!78860)))

(assert (=> d!644198 (= (inv!31365 setElem!15393) (forall!4879 (exprs!1747 setElem!15393) lambda!78891))))

(declare-fun bs!443979 () Bool)

(assert (= bs!443979 d!644198))

(declare-fun m!2578484 () Bool)

(assert (=> bs!443979 m!2578484))

(assert (=> setNonEmpty!15393 d!644198))

(declare-fun bs!443980 () Bool)

(declare-fun d!644200 () Bool)

(assert (= bs!443980 (and d!644200 d!644006)))

(declare-fun lambda!78904 () Int)

(assert (=> bs!443980 (not (= lambda!78904 lambda!78833))))

(declare-fun bs!443981 () Bool)

(declare-fun b!2126427 () Bool)

(assert (= bs!443981 (and b!2126427 d!644006)))

(declare-fun lambda!78905 () Int)

(assert (=> bs!443981 (not (= lambda!78905 lambda!78833))))

(declare-fun bs!443982 () Bool)

(assert (= bs!443982 (and b!2126427 d!644200)))

(assert (=> bs!443982 (not (= lambda!78905 lambda!78904))))

(declare-fun bs!443983 () Bool)

(declare-fun b!2126428 () Bool)

(assert (= bs!443983 (and b!2126428 d!644006)))

(declare-fun lambda!78906 () Int)

(assert (=> bs!443983 (not (= lambda!78906 lambda!78833))))

(declare-fun bs!443984 () Bool)

(assert (= bs!443984 (and b!2126428 d!644200)))

(assert (=> bs!443984 (not (= lambda!78906 lambda!78904))))

(declare-fun bs!443985 () Bool)

(assert (= bs!443985 (and b!2126428 b!2126427)))

(assert (=> bs!443985 (= lambda!78906 lambda!78905)))

(declare-fun c!340098 () Bool)

(declare-fun lt!795861 () List!23858)

(declare-fun bm!128774 () Bool)

(declare-fun call!128780 () Bool)

(declare-fun lt!795857 () List!23858)

(assert (=> bm!128774 (= call!128780 (exists!699 (ite c!340098 lt!795861 lt!795857) (ite c!340098 lambda!78905 lambda!78906)))))

(declare-fun lt!795860 () Bool)

(declare-datatypes ((Option!4875 0))(
  ( (None!4874) (Some!4874 (v!28305 List!23855)) )
))
(declare-fun isEmpty!14319 (Option!4875) Bool)

(declare-fun getLanguageWitness!100 ((InoxSet Context!2494)) Option!4875)

(assert (=> d!644200 (= lt!795860 (isEmpty!14319 (getLanguageWitness!100 z!3883)))))

(declare-fun forall!4882 ((InoxSet Context!2494) Int) Bool)

(assert (=> d!644200 (= lt!795860 (forall!4882 z!3883 lambda!78904))))

(declare-fun lt!795858 () Unit!37634)

(declare-fun e!1355207 () Unit!37634)

(assert (=> d!644200 (= lt!795858 e!1355207)))

(assert (=> d!644200 (= c!340098 (not (forall!4882 z!3883 lambda!78904)))))

(assert (=> d!644200 (= (lostCauseZipper!61 z!3883) lt!795860)))

(declare-fun Unit!37644 () Unit!37634)

(assert (=> b!2126428 (= e!1355207 Unit!37644)))

(declare-fun call!128779 () List!23858)

(assert (=> b!2126428 (= lt!795857 call!128779)))

(declare-fun lt!795863 () Unit!37634)

(declare-fun lemmaForallThenNotExists!15 (List!23858 Int) Unit!37634)

(assert (=> b!2126428 (= lt!795863 (lemmaForallThenNotExists!15 lt!795857 lambda!78904))))

(assert (=> b!2126428 (not call!128780)))

(declare-fun lt!795859 () Unit!37634)

(assert (=> b!2126428 (= lt!795859 lt!795863)))

(declare-fun bm!128775 () Bool)

(assert (=> bm!128775 (= call!128779 (toList!1068 z!3883))))

(declare-fun Unit!37645 () Unit!37634)

(assert (=> b!2126427 (= e!1355207 Unit!37645)))

(assert (=> b!2126427 (= lt!795861 call!128779)))

(declare-fun lt!795862 () Unit!37634)

(declare-fun lemmaNotForallThenExists!15 (List!23858 Int) Unit!37634)

(assert (=> b!2126427 (= lt!795862 (lemmaNotForallThenExists!15 lt!795861 lambda!78904))))

(assert (=> b!2126427 call!128780))

(declare-fun lt!795864 () Unit!37634)

(assert (=> b!2126427 (= lt!795864 lt!795862)))

(assert (= (and d!644200 c!340098) b!2126427))

(assert (= (and d!644200 (not c!340098)) b!2126428))

(assert (= (or b!2126427 b!2126428) bm!128774))

(assert (= (or b!2126427 b!2126428) bm!128775))

(declare-fun m!2578486 () Bool)

(assert (=> d!644200 m!2578486))

(assert (=> d!644200 m!2578486))

(declare-fun m!2578488 () Bool)

(assert (=> d!644200 m!2578488))

(declare-fun m!2578490 () Bool)

(assert (=> d!644200 m!2578490))

(assert (=> d!644200 m!2578490))

(declare-fun m!2578492 () Bool)

(assert (=> b!2126428 m!2578492))

(declare-fun m!2578494 () Bool)

(assert (=> b!2126427 m!2578494))

(declare-fun m!2578496 () Bool)

(assert (=> bm!128774 m!2578496))

(assert (=> bm!128775 m!2578214))

(assert (=> b!2125890 d!644200))

(declare-fun bs!443986 () Bool)

(declare-fun d!644202 () Bool)

(assert (= bs!443986 (and d!644202 d!644156)))

(declare-fun lambda!78907 () Int)

(assert (=> bs!443986 (= lambda!78907 lambda!78884)))

(declare-fun bs!443987 () Bool)

(assert (= bs!443987 (and d!644202 d!644146)))

(assert (=> bs!443987 (= lambda!78907 lambda!78883)))

(declare-fun bs!443988 () Bool)

(assert (= bs!443988 (and d!644202 d!644034)))

(assert (=> bs!443988 (= lambda!78907 lambda!78855)))

(declare-fun bs!443989 () Bool)

(assert (= bs!443989 (and d!644202 d!644040)))

(assert (=> bs!443989 (= lambda!78907 lambda!78858)))

(declare-fun bs!443990 () Bool)

(assert (= bs!443990 (and d!644202 d!644198)))

(assert (=> bs!443990 (= lambda!78907 lambda!78891)))

(declare-fun bs!443991 () Bool)

(assert (= bs!443991 (and d!644202 d!644106)))

(assert (=> bs!443991 (= lambda!78907 lambda!78874)))

(declare-fun bs!443992 () Bool)

(assert (= bs!443992 (and d!644202 d!644072)))

(assert (=> bs!443992 (= lambda!78907 lambda!78862)))

(declare-fun bs!443993 () Bool)

(assert (= bs!443993 (and d!644202 d!644030)))

(assert (=> bs!443993 (= lambda!78907 lambda!78854)))

(declare-fun bs!443994 () Bool)

(assert (= bs!443994 (and d!644202 d!644158)))

(assert (=> bs!443994 (= lambda!78907 lambda!78885)))

(declare-fun bs!443995 () Bool)

(assert (= bs!443995 (and d!644202 d!644124)))

(assert (=> bs!443995 (= lambda!78907 lambda!78877)))

(declare-fun bs!443996 () Bool)

(assert (= bs!443996 (and d!644202 d!644062)))

(assert (=> bs!443996 (= lambda!78907 lambda!78859)))

(declare-fun bs!443997 () Bool)

(assert (= bs!443997 (and d!644202 d!643984)))

(assert (=> bs!443997 (= lambda!78907 lambda!78830)))

(declare-fun bs!443998 () Bool)

(assert (= bs!443998 (and d!644202 d!644194)))

(assert (=> bs!443998 (= lambda!78907 lambda!78890)))

(declare-fun bs!443999 () Bool)

(assert (= bs!443999 (and d!644202 d!644118)))

(assert (=> bs!443999 (= lambda!78907 lambda!78876)))

(declare-fun bs!444000 () Bool)

(assert (= bs!444000 (and d!644202 d!644160)))

(assert (=> bs!444000 (= lambda!78907 lambda!78886)))

(declare-fun bs!444001 () Bool)

(assert (= bs!444001 (and d!644202 d!644082)))

(assert (=> bs!444001 (= lambda!78907 lambda!78863)))

(declare-fun bs!444002 () Bool)

(assert (= bs!444002 (and d!644202 d!644090)))

(assert (=> bs!444002 (= lambda!78907 lambda!78864)))

(declare-fun bs!444003 () Bool)

(assert (= bs!444003 (and d!644202 d!644028)))

(assert (=> bs!444003 (= lambda!78907 lambda!78853)))

(declare-fun bs!444004 () Bool)

(assert (= bs!444004 (and d!644202 d!644176)))

(assert (=> bs!444004 (= lambda!78907 lambda!78887)))

(declare-fun bs!444005 () Bool)

(assert (= bs!444005 (and d!644202 d!644140)))

(assert (=> bs!444005 (= lambda!78907 lambda!78882)))

(declare-fun bs!444006 () Bool)

(assert (= bs!444006 (and d!644202 d!644184)))

(assert (=> bs!444006 (= lambda!78907 lambda!78888)))

(declare-fun bs!444007 () Bool)

(assert (= bs!444007 (and d!644202 d!644110)))

(assert (=> bs!444007 (= lambda!78907 lambda!78875)))

(declare-fun bs!444008 () Bool)

(assert (= bs!444008 (and d!644202 d!644036)))

(assert (=> bs!444008 (= lambda!78907 lambda!78856)))

(declare-fun bs!444009 () Bool)

(assert (= bs!444009 (and d!644202 d!644070)))

(assert (=> bs!444009 (= lambda!78907 lambda!78861)))

(declare-fun bs!444010 () Bool)

(assert (= bs!444010 (and d!644202 d!644128)))

(assert (=> bs!444010 (= lambda!78907 lambda!78878)))

(declare-fun bs!444011 () Bool)

(assert (= bs!444011 (and d!644202 d!644186)))

(assert (=> bs!444011 (= lambda!78907 lambda!78889)))

(declare-fun bs!444012 () Bool)

(assert (= bs!444012 (and d!644202 d!644038)))

(assert (=> bs!444012 (= lambda!78907 lambda!78857)))

(declare-fun bs!444013 () Bool)

(assert (= bs!444013 (and d!644202 d!644068)))

(assert (=> bs!444013 (= lambda!78907 lambda!78860)))

(assert (=> d!644202 (= (inv!31365 (_1!13666 (_1!13667 (h!29170 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))))) (forall!4879 (exprs!1747 (_1!13666 (_1!13667 (h!29170 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))))) lambda!78907))))

(declare-fun bs!444014 () Bool)

(assert (= bs!444014 d!644202))

(declare-fun m!2578498 () Bool)

(assert (=> bs!444014 m!2578498))

(assert (=> b!2125996 d!644202))

(declare-fun d!644204 () Bool)

(assert (=> d!644204 (= (inv!31373 (xs!10757 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) (<= (size!18587 (innerList!7875 (xs!10757 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) 2147483647))))

(declare-fun bs!444015 () Bool)

(assert (= bs!444015 d!644204))

(declare-fun m!2578500 () Bool)

(assert (=> bs!444015 m!2578500))

(assert (=> b!2126092 d!644204))

(declare-fun d!644206 () Bool)

(declare-fun res!919997 () Bool)

(declare-fun e!1355212 () Bool)

(assert (=> d!644206 (=> (not res!919997) (not e!1355212))))

(declare-fun valid!1954 (MutableMap!2395) Bool)

(assert (=> d!644206 (= res!919997 (valid!1954 (cache!2776 cacheDown!1110)))))

(assert (=> d!644206 (= (validCacheMapDown!247 (cache!2776 cacheDown!1110)) e!1355212)))

(declare-fun b!2126435 () Bool)

(declare-fun res!919998 () Bool)

(assert (=> b!2126435 (=> (not res!919998) (not e!1355212))))

(declare-fun invariantList!306 (List!23854) Bool)

(declare-datatypes ((ListMap!661 0))(
  ( (ListMap!662 (toList!1071 List!23854)) )
))
(declare-fun map!4844 (MutableMap!2395) ListMap!661)

(assert (=> b!2126435 (= res!919998 (invariantList!306 (toList!1071 (map!4844 (cache!2776 cacheDown!1110)))))))

(declare-fun b!2126436 () Bool)

(declare-fun lambda!78910 () Int)

(declare-fun forall!4883 (List!23854 Int) Bool)

(assert (=> b!2126436 (= e!1355212 (forall!4883 (toList!1071 (map!4844 (cache!2776 cacheDown!1110))) lambda!78910))))

(assert (= (and d!644206 res!919997) b!2126435))

(assert (= (and b!2126435 res!919998) b!2126436))

(declare-fun m!2578503 () Bool)

(assert (=> d!644206 m!2578503))

(declare-fun m!2578505 () Bool)

(assert (=> b!2126435 m!2578505))

(declare-fun m!2578507 () Bool)

(assert (=> b!2126435 m!2578507))

(assert (=> b!2126436 m!2578505))

(declare-fun m!2578509 () Bool)

(assert (=> b!2126436 m!2578509))

(assert (=> b!2125821 d!644206))

(assert (=> b!2125815 d!644098))

(assert (=> b!2125815 d!644100))

(declare-fun bs!444016 () Bool)

(declare-fun d!644208 () Bool)

(assert (= bs!444016 (and d!644208 d!644156)))

(declare-fun lambda!78911 () Int)

(assert (=> bs!444016 (= lambda!78911 lambda!78884)))

(declare-fun bs!444017 () Bool)

(assert (= bs!444017 (and d!644208 d!644146)))

(assert (=> bs!444017 (= lambda!78911 lambda!78883)))

(declare-fun bs!444018 () Bool)

(assert (= bs!444018 (and d!644208 d!644034)))

(assert (=> bs!444018 (= lambda!78911 lambda!78855)))

(declare-fun bs!444019 () Bool)

(assert (= bs!444019 (and d!644208 d!644040)))

(assert (=> bs!444019 (= lambda!78911 lambda!78858)))

(declare-fun bs!444020 () Bool)

(assert (= bs!444020 (and d!644208 d!644198)))

(assert (=> bs!444020 (= lambda!78911 lambda!78891)))

(declare-fun bs!444021 () Bool)

(assert (= bs!444021 (and d!644208 d!644106)))

(assert (=> bs!444021 (= lambda!78911 lambda!78874)))

(declare-fun bs!444022 () Bool)

(assert (= bs!444022 (and d!644208 d!644072)))

(assert (=> bs!444022 (= lambda!78911 lambda!78862)))

(declare-fun bs!444023 () Bool)

(assert (= bs!444023 (and d!644208 d!644030)))

(assert (=> bs!444023 (= lambda!78911 lambda!78854)))

(declare-fun bs!444024 () Bool)

(assert (= bs!444024 (and d!644208 d!644158)))

(assert (=> bs!444024 (= lambda!78911 lambda!78885)))

(declare-fun bs!444025 () Bool)

(assert (= bs!444025 (and d!644208 d!644124)))

(assert (=> bs!444025 (= lambda!78911 lambda!78877)))

(declare-fun bs!444026 () Bool)

(assert (= bs!444026 (and d!644208 d!644062)))

(assert (=> bs!444026 (= lambda!78911 lambda!78859)))

(declare-fun bs!444027 () Bool)

(assert (= bs!444027 (and d!644208 d!643984)))

(assert (=> bs!444027 (= lambda!78911 lambda!78830)))

(declare-fun bs!444028 () Bool)

(assert (= bs!444028 (and d!644208 d!644194)))

(assert (=> bs!444028 (= lambda!78911 lambda!78890)))

(declare-fun bs!444029 () Bool)

(assert (= bs!444029 (and d!644208 d!644118)))

(assert (=> bs!444029 (= lambda!78911 lambda!78876)))

(declare-fun bs!444030 () Bool)

(assert (= bs!444030 (and d!644208 d!644160)))

(assert (=> bs!444030 (= lambda!78911 lambda!78886)))

(declare-fun bs!444031 () Bool)

(assert (= bs!444031 (and d!644208 d!644082)))

(assert (=> bs!444031 (= lambda!78911 lambda!78863)))

(declare-fun bs!444032 () Bool)

(assert (= bs!444032 (and d!644208 d!644090)))

(assert (=> bs!444032 (= lambda!78911 lambda!78864)))

(declare-fun bs!444033 () Bool)

(assert (= bs!444033 (and d!644208 d!644028)))

(assert (=> bs!444033 (= lambda!78911 lambda!78853)))

(declare-fun bs!444034 () Bool)

(assert (= bs!444034 (and d!644208 d!644176)))

(assert (=> bs!444034 (= lambda!78911 lambda!78887)))

(declare-fun bs!444035 () Bool)

(assert (= bs!444035 (and d!644208 d!644140)))

(assert (=> bs!444035 (= lambda!78911 lambda!78882)))

(declare-fun bs!444036 () Bool)

(assert (= bs!444036 (and d!644208 d!644184)))

(assert (=> bs!444036 (= lambda!78911 lambda!78888)))

(declare-fun bs!444037 () Bool)

(assert (= bs!444037 (and d!644208 d!644110)))

(assert (=> bs!444037 (= lambda!78911 lambda!78875)))

(declare-fun bs!444038 () Bool)

(assert (= bs!444038 (and d!644208 d!644036)))

(assert (=> bs!444038 (= lambda!78911 lambda!78856)))

(declare-fun bs!444039 () Bool)

(assert (= bs!444039 (and d!644208 d!644202)))

(assert (=> bs!444039 (= lambda!78911 lambda!78907)))

(declare-fun bs!444040 () Bool)

(assert (= bs!444040 (and d!644208 d!644070)))

(assert (=> bs!444040 (= lambda!78911 lambda!78861)))

(declare-fun bs!444041 () Bool)

(assert (= bs!444041 (and d!644208 d!644128)))

(assert (=> bs!444041 (= lambda!78911 lambda!78878)))

(declare-fun bs!444042 () Bool)

(assert (= bs!444042 (and d!644208 d!644186)))

(assert (=> bs!444042 (= lambda!78911 lambda!78889)))

(declare-fun bs!444043 () Bool)

(assert (= bs!444043 (and d!644208 d!644038)))

(assert (=> bs!444043 (= lambda!78911 lambda!78857)))

(declare-fun bs!444044 () Bool)

(assert (= bs!444044 (and d!644208 d!644068)))

(assert (=> bs!444044 (= lambda!78911 lambda!78860)))

(assert (=> d!644208 (= (inv!31365 setElem!15355) (forall!4879 (exprs!1747 setElem!15355) lambda!78911))))

(declare-fun bs!444045 () Bool)

(assert (= bs!444045 d!644208))

(declare-fun m!2578511 () Bool)

(assert (=> bs!444045 m!2578511))

(assert (=> setNonEmpty!15356 d!644208))

(assert (=> d!643974 d!644192))

(declare-fun d!644210 () Bool)

(declare-fun res!919999 () Bool)

(declare-fun e!1355213 () Bool)

(assert (=> d!644210 (=> res!919999 e!1355213)))

(assert (=> d!644210 (= res!919999 ((_ is Nil!23772) (_2!13668 (_1!13669 lt!795733))))))

(assert (=> d!644210 (= (forall!4878 (_2!13668 (_1!13669 lt!795733)) lambda!78851) e!1355213)))

(declare-fun b!2126437 () Bool)

(declare-fun e!1355214 () Bool)

(assert (=> b!2126437 (= e!1355213 e!1355214)))

(declare-fun res!920000 () Bool)

(assert (=> b!2126437 (=> (not res!920000) (not e!1355214))))

(assert (=> b!2126437 (= res!920000 (dynLambda!11363 lambda!78851 (h!29173 (_2!13668 (_1!13669 lt!795733)))))))

(declare-fun b!2126438 () Bool)

(assert (=> b!2126438 (= e!1355214 (forall!4878 (t!196380 (_2!13668 (_1!13669 lt!795733))) lambda!78851))))

(assert (= (and d!644210 (not res!919999)) b!2126437))

(assert (= (and b!2126437 res!920000) b!2126438))

(declare-fun b_lambda!70549 () Bool)

(assert (=> (not b_lambda!70549) (not b!2126437)))

(declare-fun m!2578513 () Bool)

(assert (=> b!2126437 m!2578513))

(declare-fun m!2578515 () Bool)

(assert (=> b!2126438 m!2578515))

(assert (=> b!2125894 d!644210))

(declare-fun bs!444046 () Bool)

(declare-fun d!644212 () Bool)

(assert (= bs!444046 (and d!644212 d!644156)))

(declare-fun lambda!78912 () Int)

(assert (=> bs!444046 (= lambda!78912 lambda!78884)))

(declare-fun bs!444047 () Bool)

(assert (= bs!444047 (and d!644212 d!644146)))

(assert (=> bs!444047 (= lambda!78912 lambda!78883)))

(declare-fun bs!444048 () Bool)

(assert (= bs!444048 (and d!644212 d!644034)))

(assert (=> bs!444048 (= lambda!78912 lambda!78855)))

(declare-fun bs!444049 () Bool)

(assert (= bs!444049 (and d!644212 d!644040)))

(assert (=> bs!444049 (= lambda!78912 lambda!78858)))

(declare-fun bs!444050 () Bool)

(assert (= bs!444050 (and d!644212 d!644198)))

(assert (=> bs!444050 (= lambda!78912 lambda!78891)))

(declare-fun bs!444051 () Bool)

(assert (= bs!444051 (and d!644212 d!644106)))

(assert (=> bs!444051 (= lambda!78912 lambda!78874)))

(declare-fun bs!444052 () Bool)

(assert (= bs!444052 (and d!644212 d!644072)))

(assert (=> bs!444052 (= lambda!78912 lambda!78862)))

(declare-fun bs!444053 () Bool)

(assert (= bs!444053 (and d!644212 d!644030)))

(assert (=> bs!444053 (= lambda!78912 lambda!78854)))

(declare-fun bs!444054 () Bool)

(assert (= bs!444054 (and d!644212 d!644158)))

(assert (=> bs!444054 (= lambda!78912 lambda!78885)))

(declare-fun bs!444055 () Bool)

(assert (= bs!444055 (and d!644212 d!644124)))

(assert (=> bs!444055 (= lambda!78912 lambda!78877)))

(declare-fun bs!444056 () Bool)

(assert (= bs!444056 (and d!644212 d!644062)))

(assert (=> bs!444056 (= lambda!78912 lambda!78859)))

(declare-fun bs!444057 () Bool)

(assert (= bs!444057 (and d!644212 d!644208)))

(assert (=> bs!444057 (= lambda!78912 lambda!78911)))

(declare-fun bs!444058 () Bool)

(assert (= bs!444058 (and d!644212 d!643984)))

(assert (=> bs!444058 (= lambda!78912 lambda!78830)))

(declare-fun bs!444059 () Bool)

(assert (= bs!444059 (and d!644212 d!644194)))

(assert (=> bs!444059 (= lambda!78912 lambda!78890)))

(declare-fun bs!444060 () Bool)

(assert (= bs!444060 (and d!644212 d!644118)))

(assert (=> bs!444060 (= lambda!78912 lambda!78876)))

(declare-fun bs!444061 () Bool)

(assert (= bs!444061 (and d!644212 d!644160)))

(assert (=> bs!444061 (= lambda!78912 lambda!78886)))

(declare-fun bs!444062 () Bool)

(assert (= bs!444062 (and d!644212 d!644082)))

(assert (=> bs!444062 (= lambda!78912 lambda!78863)))

(declare-fun bs!444063 () Bool)

(assert (= bs!444063 (and d!644212 d!644090)))

(assert (=> bs!444063 (= lambda!78912 lambda!78864)))

(declare-fun bs!444064 () Bool)

(assert (= bs!444064 (and d!644212 d!644028)))

(assert (=> bs!444064 (= lambda!78912 lambda!78853)))

(declare-fun bs!444065 () Bool)

(assert (= bs!444065 (and d!644212 d!644176)))

(assert (=> bs!444065 (= lambda!78912 lambda!78887)))

(declare-fun bs!444066 () Bool)

(assert (= bs!444066 (and d!644212 d!644140)))

(assert (=> bs!444066 (= lambda!78912 lambda!78882)))

(declare-fun bs!444067 () Bool)

(assert (= bs!444067 (and d!644212 d!644184)))

(assert (=> bs!444067 (= lambda!78912 lambda!78888)))

(declare-fun bs!444068 () Bool)

(assert (= bs!444068 (and d!644212 d!644110)))

(assert (=> bs!444068 (= lambda!78912 lambda!78875)))

(declare-fun bs!444069 () Bool)

(assert (= bs!444069 (and d!644212 d!644036)))

(assert (=> bs!444069 (= lambda!78912 lambda!78856)))

(declare-fun bs!444070 () Bool)

(assert (= bs!444070 (and d!644212 d!644202)))

(assert (=> bs!444070 (= lambda!78912 lambda!78907)))

(declare-fun bs!444071 () Bool)

(assert (= bs!444071 (and d!644212 d!644070)))

(assert (=> bs!444071 (= lambda!78912 lambda!78861)))

(declare-fun bs!444072 () Bool)

(assert (= bs!444072 (and d!644212 d!644128)))

(assert (=> bs!444072 (= lambda!78912 lambda!78878)))

(declare-fun bs!444073 () Bool)

(assert (= bs!444073 (and d!644212 d!644186)))

(assert (=> bs!444073 (= lambda!78912 lambda!78889)))

(declare-fun bs!444074 () Bool)

(assert (= bs!444074 (and d!644212 d!644038)))

(assert (=> bs!444074 (= lambda!78912 lambda!78857)))

(declare-fun bs!444075 () Bool)

(assert (= bs!444075 (and d!644212 d!644068)))

(assert (=> bs!444075 (= lambda!78912 lambda!78860)))

(assert (=> d!644212 (= (inv!31365 (_1!13666 (_1!13667 (h!29170 mapValue!12156)))) (forall!4879 (exprs!1747 (_1!13666 (_1!13667 (h!29170 mapValue!12156)))) lambda!78912))))

(declare-fun bs!444076 () Bool)

(assert (= bs!444076 d!644212))

(declare-fun m!2578517 () Bool)

(assert (=> bs!444076 m!2578517))

(assert (=> b!2126057 d!644212))

(assert (=> d!644002 d!644206))

(declare-fun bs!444077 () Bool)

(declare-fun d!644214 () Bool)

(assert (= bs!444077 (and d!644214 d!644156)))

(declare-fun lambda!78913 () Int)

(assert (=> bs!444077 (= lambda!78913 lambda!78884)))

(declare-fun bs!444078 () Bool)

(assert (= bs!444078 (and d!644214 d!644146)))

(assert (=> bs!444078 (= lambda!78913 lambda!78883)))

(declare-fun bs!444079 () Bool)

(assert (= bs!444079 (and d!644214 d!644034)))

(assert (=> bs!444079 (= lambda!78913 lambda!78855)))

(declare-fun bs!444080 () Bool)

(assert (= bs!444080 (and d!644214 d!644040)))

(assert (=> bs!444080 (= lambda!78913 lambda!78858)))

(declare-fun bs!444081 () Bool)

(assert (= bs!444081 (and d!644214 d!644198)))

(assert (=> bs!444081 (= lambda!78913 lambda!78891)))

(declare-fun bs!444082 () Bool)

(assert (= bs!444082 (and d!644214 d!644106)))

(assert (=> bs!444082 (= lambda!78913 lambda!78874)))

(declare-fun bs!444083 () Bool)

(assert (= bs!444083 (and d!644214 d!644072)))

(assert (=> bs!444083 (= lambda!78913 lambda!78862)))

(declare-fun bs!444084 () Bool)

(assert (= bs!444084 (and d!644214 d!644212)))

(assert (=> bs!444084 (= lambda!78913 lambda!78912)))

(declare-fun bs!444085 () Bool)

(assert (= bs!444085 (and d!644214 d!644030)))

(assert (=> bs!444085 (= lambda!78913 lambda!78854)))

(declare-fun bs!444086 () Bool)

(assert (= bs!444086 (and d!644214 d!644158)))

(assert (=> bs!444086 (= lambda!78913 lambda!78885)))

(declare-fun bs!444087 () Bool)

(assert (= bs!444087 (and d!644214 d!644124)))

(assert (=> bs!444087 (= lambda!78913 lambda!78877)))

(declare-fun bs!444088 () Bool)

(assert (= bs!444088 (and d!644214 d!644062)))

(assert (=> bs!444088 (= lambda!78913 lambda!78859)))

(declare-fun bs!444089 () Bool)

(assert (= bs!444089 (and d!644214 d!644208)))

(assert (=> bs!444089 (= lambda!78913 lambda!78911)))

(declare-fun bs!444090 () Bool)

(assert (= bs!444090 (and d!644214 d!643984)))

(assert (=> bs!444090 (= lambda!78913 lambda!78830)))

(declare-fun bs!444091 () Bool)

(assert (= bs!444091 (and d!644214 d!644194)))

(assert (=> bs!444091 (= lambda!78913 lambda!78890)))

(declare-fun bs!444092 () Bool)

(assert (= bs!444092 (and d!644214 d!644118)))

(assert (=> bs!444092 (= lambda!78913 lambda!78876)))

(declare-fun bs!444093 () Bool)

(assert (= bs!444093 (and d!644214 d!644160)))

(assert (=> bs!444093 (= lambda!78913 lambda!78886)))

(declare-fun bs!444094 () Bool)

(assert (= bs!444094 (and d!644214 d!644082)))

(assert (=> bs!444094 (= lambda!78913 lambda!78863)))

(declare-fun bs!444095 () Bool)

(assert (= bs!444095 (and d!644214 d!644090)))

(assert (=> bs!444095 (= lambda!78913 lambda!78864)))

(declare-fun bs!444096 () Bool)

(assert (= bs!444096 (and d!644214 d!644028)))

(assert (=> bs!444096 (= lambda!78913 lambda!78853)))

(declare-fun bs!444097 () Bool)

(assert (= bs!444097 (and d!644214 d!644176)))

(assert (=> bs!444097 (= lambda!78913 lambda!78887)))

(declare-fun bs!444098 () Bool)

(assert (= bs!444098 (and d!644214 d!644140)))

(assert (=> bs!444098 (= lambda!78913 lambda!78882)))

(declare-fun bs!444099 () Bool)

(assert (= bs!444099 (and d!644214 d!644184)))

(assert (=> bs!444099 (= lambda!78913 lambda!78888)))

(declare-fun bs!444100 () Bool)

(assert (= bs!444100 (and d!644214 d!644110)))

(assert (=> bs!444100 (= lambda!78913 lambda!78875)))

(declare-fun bs!444101 () Bool)

(assert (= bs!444101 (and d!644214 d!644036)))

(assert (=> bs!444101 (= lambda!78913 lambda!78856)))

(declare-fun bs!444102 () Bool)

(assert (= bs!444102 (and d!644214 d!644202)))

(assert (=> bs!444102 (= lambda!78913 lambda!78907)))

(declare-fun bs!444103 () Bool)

(assert (= bs!444103 (and d!644214 d!644070)))

(assert (=> bs!444103 (= lambda!78913 lambda!78861)))

(declare-fun bs!444104 () Bool)

(assert (= bs!444104 (and d!644214 d!644128)))

(assert (=> bs!444104 (= lambda!78913 lambda!78878)))

(declare-fun bs!444105 () Bool)

(assert (= bs!444105 (and d!644214 d!644186)))

(assert (=> bs!444105 (= lambda!78913 lambda!78889)))

(declare-fun bs!444106 () Bool)

(assert (= bs!444106 (and d!644214 d!644038)))

(assert (=> bs!444106 (= lambda!78913 lambda!78857)))

(declare-fun bs!444107 () Bool)

(assert (= bs!444107 (and d!644214 d!644068)))

(assert (=> bs!444107 (= lambda!78913 lambda!78860)))

(assert (=> d!644214 (= (inv!31365 (_2!13664 (_1!13665 (h!29171 mapDefault!12156)))) (forall!4879 (exprs!1747 (_2!13664 (_1!13665 (h!29171 mapDefault!12156)))) lambda!78913))))

(declare-fun bs!444108 () Bool)

(assert (= bs!444108 d!644214))

(declare-fun m!2578519 () Bool)

(assert (=> bs!444108 m!2578519))

(assert (=> b!2126086 d!644214))

(declare-fun d!644216 () Bool)

(declare-fun res!920001 () Bool)

(declare-fun e!1355215 () Bool)

(assert (=> d!644216 (=> res!920001 e!1355215)))

(assert (=> d!644216 (= res!920001 ((_ is Nil!23772) (t!196380 (_2!13668 (_1!13669 lt!795672)))))))

(assert (=> d!644216 (= (forall!4878 (t!196380 (_2!13668 (_1!13669 lt!795672))) lambda!78826) e!1355215)))

(declare-fun b!2126439 () Bool)

(declare-fun e!1355216 () Bool)

(assert (=> b!2126439 (= e!1355215 e!1355216)))

(declare-fun res!920002 () Bool)

(assert (=> b!2126439 (=> (not res!920002) (not e!1355216))))

(assert (=> b!2126439 (= res!920002 (dynLambda!11363 lambda!78826 (h!29173 (t!196380 (_2!13668 (_1!13669 lt!795672))))))))

(declare-fun b!2126440 () Bool)

(assert (=> b!2126440 (= e!1355216 (forall!4878 (t!196380 (t!196380 (_2!13668 (_1!13669 lt!795672)))) lambda!78826))))

(assert (= (and d!644216 (not res!920001)) b!2126439))

(assert (= (and b!2126439 res!920002) b!2126440))

(declare-fun b_lambda!70551 () Bool)

(assert (=> (not b_lambda!70551) (not b!2126439)))

(declare-fun m!2578521 () Bool)

(assert (=> b!2126439 m!2578521))

(declare-fun m!2578523 () Bool)

(assert (=> b!2126440 m!2578523))

(assert (=> b!2125916 d!644216))

(assert (=> b!2125892 d!644012))

(declare-fun bs!444109 () Bool)

(declare-fun d!644218 () Bool)

(assert (= bs!444109 (and d!644218 d!644006)))

(declare-fun lambda!78914 () Int)

(assert (=> bs!444109 (= lambda!78914 lambda!78833)))

(declare-fun bs!444110 () Bool)

(assert (= bs!444110 (and d!644218 d!644200)))

(assert (=> bs!444110 (not (= lambda!78914 lambda!78904))))

(declare-fun bs!444111 () Bool)

(assert (= bs!444111 (and d!644218 b!2126427)))

(assert (=> bs!444111 (not (= lambda!78914 lambda!78905))))

(declare-fun bs!444112 () Bool)

(assert (= bs!444112 (and d!644218 b!2126428)))

(assert (=> bs!444112 (not (= lambda!78914 lambda!78906))))

(assert (=> d!644218 (= (nullableZipper!70 (_1!13676 lt!795746)) (exists!698 (_1!13676 lt!795746) lambda!78914))))

(declare-fun bs!444113 () Bool)

(assert (= bs!444113 d!644218))

(declare-fun m!2578525 () Bool)

(assert (=> bs!444113 m!2578525))

(assert (=> b!2125892 d!644218))

(declare-fun d!644220 () Bool)

(declare-fun lt!795867 () C!11500)

(declare-fun apply!5918 (List!23855 Int) C!11500)

(assert (=> d!644220 (= lt!795867 (apply!5918 (list!9539 totalInput!886) lt!795671))))

(declare-fun apply!5919 (Conc!7815 Int) C!11500)

(assert (=> d!644220 (= lt!795867 (apply!5919 (c!339969 totalInput!886) lt!795671))))

(declare-fun e!1355219 () Bool)

(assert (=> d!644220 e!1355219))

(declare-fun res!920005 () Bool)

(assert (=> d!644220 (=> (not res!920005) (not e!1355219))))

(assert (=> d!644220 (= res!920005 (<= 0 lt!795671))))

(assert (=> d!644220 (= (apply!5917 totalInput!886 lt!795671) lt!795867)))

(declare-fun b!2126443 () Bool)

(assert (=> b!2126443 (= e!1355219 (< lt!795671 (size!18586 totalInput!886)))))

(assert (= (and d!644220 res!920005) b!2126443))

(assert (=> d!644220 m!2577830))

(assert (=> d!644220 m!2577830))

(declare-fun m!2578527 () Bool)

(assert (=> d!644220 m!2578527))

(declare-fun m!2578529 () Bool)

(assert (=> d!644220 m!2578529))

(assert (=> b!2126443 m!2577878))

(assert (=> b!2125892 d!644220))

(declare-fun bs!444114 () Bool)

(declare-fun d!644222 () Bool)

(assert (= bs!444114 (and d!644222 b!2125889)))

(declare-fun lambda!78915 () Int)

(declare-fun lt!795871 () Int)

(assert (=> bs!444114 (= (= lt!795871 e!1354761) (= lambda!78915 lambda!78849))))

(declare-fun bs!444115 () Bool)

(assert (= bs!444115 (and d!644222 b!2125723)))

(assert (=> bs!444115 (= (= lt!795871 (_1!13668 (_1!13669 lt!795672))) (= lambda!78915 lambda!78826))))

(declare-fun bs!444116 () Bool)

(assert (= bs!444116 (and d!644222 b!2125896)))

(assert (=> bs!444116 (not (= lambda!78915 lambda!78852))))

(declare-fun bs!444117 () Bool)

(assert (= bs!444117 (and d!644222 d!644010)))

(assert (=> bs!444117 (= (= lt!795871 lt!795736) (= lambda!78915 lambda!78848))))

(declare-fun bs!444118 () Bool)

(assert (= bs!444118 (and d!644222 b!2125730)))

(assert (=> bs!444118 (not (= lambda!78915 lambda!78827))))

(declare-fun bs!444119 () Bool)

(assert (= bs!444119 (and d!644222 d!644104)))

(assert (=> bs!444119 (= (= lt!795871 (ite c!339990 e!1354761 lt!795744)) (= lambda!78915 lambda!78873))))

(declare-fun bs!444120 () Bool)

(assert (= bs!444120 (and d!644222 b!2125894)))

(assert (=> bs!444120 (= (= lt!795871 (_1!13668 (_1!13669 lt!795733))) (= lambda!78915 lambda!78851))))

(assert (=> bs!444119 (= (= lt!795871 lt!795736) (= lambda!78915 lambda!78872))))

(declare-fun bs!444121 () Bool)

(assert (= bs!444121 (and d!644222 b!2125892)))

(assert (=> bs!444121 (= (= lt!795871 lt!795744) (= lambda!78915 lambda!78850))))

(assert (=> d!644222 true))

(declare-fun bs!444122 () Bool)

(declare-fun b!2126449 () Bool)

(assert (= bs!444122 (and b!2126449 b!2125889)))

(declare-fun lambda!78916 () Int)

(assert (=> bs!444122 (= (= lt!795735 e!1354761) (= lambda!78916 lambda!78849))))

(declare-fun bs!444123 () Bool)

(assert (= bs!444123 (and b!2126449 b!2125896)))

(assert (=> bs!444123 (not (= lambda!78916 lambda!78852))))

(declare-fun bs!444124 () Bool)

(assert (= bs!444124 (and b!2126449 d!644010)))

(assert (=> bs!444124 (= (= lt!795735 lt!795736) (= lambda!78916 lambda!78848))))

(declare-fun bs!444125 () Bool)

(assert (= bs!444125 (and b!2126449 b!2125730)))

(assert (=> bs!444125 (not (= lambda!78916 lambda!78827))))

(declare-fun bs!444126 () Bool)

(assert (= bs!444126 (and b!2126449 d!644104)))

(assert (=> bs!444126 (= (= lt!795735 (ite c!339990 e!1354761 lt!795744)) (= lambda!78916 lambda!78873))))

(declare-fun bs!444127 () Bool)

(assert (= bs!444127 (and b!2126449 b!2125894)))

(assert (=> bs!444127 (= (= lt!795735 (_1!13668 (_1!13669 lt!795733))) (= lambda!78916 lambda!78851))))

(declare-fun bs!444128 () Bool)

(assert (= bs!444128 (and b!2126449 b!2125723)))

(assert (=> bs!444128 (= (= lt!795735 (_1!13668 (_1!13669 lt!795672))) (= lambda!78916 lambda!78826))))

(declare-fun bs!444129 () Bool)

(assert (= bs!444129 (and b!2126449 d!644222)))

(assert (=> bs!444129 (= (= lt!795735 lt!795871) (= lambda!78916 lambda!78915))))

(assert (=> bs!444126 (= (= lt!795735 lt!795736) (= lambda!78916 lambda!78872))))

(declare-fun bs!444130 () Bool)

(assert (= bs!444130 (and b!2126449 b!2125892)))

(assert (=> bs!444130 (= (= lt!795735 lt!795744) (= lambda!78916 lambda!78850))))

(assert (=> b!2126449 true))

(declare-fun bs!444131 () Bool)

(declare-fun b!2126452 () Bool)

(assert (= bs!444131 (and b!2126452 b!2125889)))

(declare-fun lambda!78917 () Int)

(declare-fun lt!795879 () Int)

(assert (=> bs!444131 (= (= lt!795879 e!1354761) (= lambda!78917 lambda!78849))))

(declare-fun bs!444132 () Bool)

(assert (= bs!444132 (and b!2126452 b!2125896)))

(assert (=> bs!444132 (not (= lambda!78917 lambda!78852))))

(declare-fun bs!444133 () Bool)

(assert (= bs!444133 (and b!2126452 d!644010)))

(assert (=> bs!444133 (= (= lt!795879 lt!795736) (= lambda!78917 lambda!78848))))

(declare-fun bs!444134 () Bool)

(assert (= bs!444134 (and b!2126452 b!2125730)))

(assert (=> bs!444134 (not (= lambda!78917 lambda!78827))))

(declare-fun bs!444135 () Bool)

(assert (= bs!444135 (and b!2126452 b!2126449)))

(assert (=> bs!444135 (= (= lt!795879 lt!795735) (= lambda!78917 lambda!78916))))

(declare-fun bs!444136 () Bool)

(assert (= bs!444136 (and b!2126452 d!644104)))

(assert (=> bs!444136 (= (= lt!795879 (ite c!339990 e!1354761 lt!795744)) (= lambda!78917 lambda!78873))))

(declare-fun bs!444137 () Bool)

(assert (= bs!444137 (and b!2126452 b!2125894)))

(assert (=> bs!444137 (= (= lt!795879 (_1!13668 (_1!13669 lt!795733))) (= lambda!78917 lambda!78851))))

(declare-fun bs!444138 () Bool)

(assert (= bs!444138 (and b!2126452 b!2125723)))

(assert (=> bs!444138 (= (= lt!795879 (_1!13668 (_1!13669 lt!795672))) (= lambda!78917 lambda!78826))))

(declare-fun bs!444139 () Bool)

(assert (= bs!444139 (and b!2126452 d!644222)))

(assert (=> bs!444139 (= (= lt!795879 lt!795871) (= lambda!78917 lambda!78915))))

(assert (=> bs!444136 (= (= lt!795879 lt!795736) (= lambda!78917 lambda!78872))))

(declare-fun bs!444140 () Bool)

(assert (= bs!444140 (and b!2126452 b!2125892)))

(assert (=> bs!444140 (= (= lt!795879 lt!795744) (= lambda!78917 lambda!78850))))

(assert (=> b!2126452 true))

(declare-fun bs!444141 () Bool)

(declare-fun b!2126454 () Bool)

(assert (= bs!444141 (and b!2126454 b!2125889)))

(declare-fun lambda!78918 () Int)

(declare-fun lt!795868 () tuple3!2972)

(assert (=> bs!444141 (= (= (_1!13668 (_1!13669 lt!795868)) e!1354761) (= lambda!78918 lambda!78849))))

(declare-fun bs!444142 () Bool)

(assert (= bs!444142 (and b!2126454 b!2125896)))

(assert (=> bs!444142 (not (= lambda!78918 lambda!78852))))

(declare-fun bs!444143 () Bool)

(assert (= bs!444143 (and b!2126454 d!644010)))

(assert (=> bs!444143 (= (= (_1!13668 (_1!13669 lt!795868)) lt!795736) (= lambda!78918 lambda!78848))))

(declare-fun bs!444144 () Bool)

(assert (= bs!444144 (and b!2126454 b!2125730)))

(assert (=> bs!444144 (not (= lambda!78918 lambda!78827))))

(declare-fun bs!444145 () Bool)

(assert (= bs!444145 (and b!2126454 b!2126449)))

(assert (=> bs!444145 (= (= (_1!13668 (_1!13669 lt!795868)) lt!795735) (= lambda!78918 lambda!78916))))

(declare-fun bs!444146 () Bool)

(assert (= bs!444146 (and b!2126454 b!2126452)))

(assert (=> bs!444146 (= (= (_1!13668 (_1!13669 lt!795868)) lt!795879) (= lambda!78918 lambda!78917))))

(declare-fun bs!444147 () Bool)

(assert (= bs!444147 (and b!2126454 d!644104)))

(assert (=> bs!444147 (= (= (_1!13668 (_1!13669 lt!795868)) (ite c!339990 e!1354761 lt!795744)) (= lambda!78918 lambda!78873))))

(declare-fun bs!444148 () Bool)

(assert (= bs!444148 (and b!2126454 b!2125894)))

(assert (=> bs!444148 (= (= (_1!13668 (_1!13669 lt!795868)) (_1!13668 (_1!13669 lt!795733))) (= lambda!78918 lambda!78851))))

(declare-fun bs!444149 () Bool)

(assert (= bs!444149 (and b!2126454 b!2125723)))

(assert (=> bs!444149 (= (= (_1!13668 (_1!13669 lt!795868)) (_1!13668 (_1!13669 lt!795672))) (= lambda!78918 lambda!78826))))

(declare-fun bs!444150 () Bool)

(assert (= bs!444150 (and b!2126454 d!644222)))

(assert (=> bs!444150 (= (= (_1!13668 (_1!13669 lt!795868)) lt!795871) (= lambda!78918 lambda!78915))))

(assert (=> bs!444147 (= (= (_1!13668 (_1!13669 lt!795868)) lt!795736) (= lambda!78918 lambda!78872))))

(declare-fun bs!444151 () Bool)

(assert (= bs!444151 (and b!2126454 b!2125892)))

(assert (=> bs!444151 (= (= (_1!13668 (_1!13669 lt!795868)) lt!795744) (= lambda!78918 lambda!78850))))

(declare-fun b!2126457 () Bool)

(declare-fun e!1355238 () Bool)

(declare-fun e!1355229 () Bool)

(assert (=> b!2126457 (= e!1355238 e!1355229)))

(declare-fun mapIsEmpty!12181 () Bool)

(declare-fun mapRes!12181 () Bool)

(assert (=> mapIsEmpty!12181 mapRes!12181))

(declare-fun setNonEmpty!15416 () Bool)

(declare-fun setRes!15416 () Bool)

(assert (=> setNonEmpty!15416 (= setRes!15416 true)))

(declare-fun setElem!15416 () Context!2494)

(declare-fun setRest!15416 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15416 (= (z!5752 (h!29173 (_2!13668 (_1!13669 lt!795868)))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15416 true) setRest!15416))))

(declare-fun mapNonEmpty!12181 () Bool)

(assert (=> mapNonEmpty!12181 (= mapRes!12181 true)))

(declare-fun mapKey!12181 () (_ BitVec 32))

(declare-fun mapValue!12182 () List!23853)

(declare-fun mapRest!12181 () (Array (_ BitVec 32) List!23853))

(assert (=> mapNonEmpty!12181 (= (arr!3780 (_values!2761 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795868)))))))) (store mapRest!12181 mapKey!12181 mapValue!12182))))

(declare-fun b!2126458 () Bool)

(declare-fun e!1355230 () Bool)

(declare-fun e!1355226 () Bool)

(assert (=> b!2126458 (= e!1355230 e!1355226)))

(declare-fun b!2126459 () Bool)

(declare-fun e!1355228 () Bool)

(declare-fun e!1355234 () Bool)

(assert (=> b!2126459 (= e!1355228 e!1355234)))

(declare-fun b!2126460 () Bool)

(declare-fun e!1355239 () Bool)

(declare-fun e!1355225 () Bool)

(assert (=> b!2126460 (= e!1355239 e!1355225)))

(declare-fun mapNonEmpty!12182 () Bool)

(declare-fun mapRes!12182 () Bool)

(assert (=> mapNonEmpty!12182 (= mapRes!12182 true)))

(declare-fun mapRest!12182 () (Array (_ BitVec 32) List!23854))

(declare-fun mapValue!12181 () List!23854)

(declare-fun mapKey!12182 () (_ BitVec 32))

(assert (=> mapNonEmpty!12182 (= (arr!3779 (_values!2760 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795868)))))))) (store mapRest!12182 mapKey!12182 mapValue!12181))))

(declare-fun b!2126462 () Bool)

(declare-fun e!1355236 () Bool)

(assert (=> b!2126462 (= e!1355236 e!1355238)))

(declare-fun b!2126463 () Bool)

(declare-fun e!1355235 () Bool)

(declare-fun e!1355227 () Bool)

(assert (=> b!2126463 (= e!1355235 e!1355227)))

(declare-fun b!2126464 () Bool)

(declare-fun e!1355237 () Bool)

(assert (=> b!2126464 (= e!1355237 e!1355228)))

(declare-fun b!2126465 () Bool)

(assert (=> b!2126465 (= e!1355225 e!1355230)))

(declare-fun b!2126466 () Bool)

(declare-fun e!1355231 () Bool)

(assert (=> b!2126466 (= e!1355231 setRes!15416)))

(declare-fun condSetEmpty!15416 () Bool)

(assert (=> b!2126466 (= condSetEmpty!15416 (= (z!5752 (h!29173 (_2!13668 (_1!13669 lt!795868)))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun b!2126467 () Bool)

(assert (=> b!2126467 (= e!1355227 mapRes!12181)))

(declare-fun condMapEmpty!12182 () Bool)

(declare-fun mapDefault!12181 () List!23853)

(assert (=> b!2126467 (= condMapEmpty!12182 (= (arr!3780 (_values!2761 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795868)))))))) ((as const (Array (_ BitVec 32) List!23853)) mapDefault!12181)))))

(declare-fun mapIsEmpty!12182 () Bool)

(assert (=> mapIsEmpty!12182 mapRes!12182))

(declare-fun b!2126468 () Bool)

(declare-fun e!1355233 () Bool)

(assert (=> b!2126468 (= e!1355233 e!1355235)))

(declare-fun b!2126469 () Bool)

(assert (=> b!2126469 (= e!1355226 mapRes!12182)))

(declare-fun condMapEmpty!12181 () Bool)

(declare-fun mapDefault!12182 () List!23854)

(assert (=> b!2126469 (= condMapEmpty!12181 (= (arr!3779 (_values!2760 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795868)))))))) ((as const (Array (_ BitVec 32) List!23854)) mapDefault!12182)))))

(declare-fun b!2126470 () Bool)

(declare-fun e!1355232 () Bool)

(declare-fun lt!795883 () MutLongMap!2481)

(assert (=> b!2126470 (= e!1355234 (and e!1355232 ((_ is LongMap!2481) lt!795883)))))

(assert (=> b!2126470 (= lt!795883 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795868)))))))

(declare-fun b!2126471 () Bool)

(assert (=> b!2126471 (= e!1355232 e!1355233)))

(declare-fun b!2126461 () Bool)

(declare-fun lt!795882 () MutLongMap!2480)

(assert (=> b!2126461 (= e!1355229 (and e!1355239 ((_ is LongMap!2480) lt!795882)))))

(assert (=> b!2126461 (= lt!795882 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795868)))))))

(declare-fun e!1355240 () Bool)

(assert (=> b!2126454 (and e!1355240 e!1355237 e!1355236)))

(declare-fun b!2126472 () Bool)

(assert (=> b!2126472 (= e!1355240 e!1355231)))

(declare-fun setIsEmpty!15416 () Bool)

(assert (=> setIsEmpty!15416 setRes!15416))

(assert (= (and b!2126466 condSetEmpty!15416) setIsEmpty!15416))

(assert (= (and b!2126466 (not condSetEmpty!15416)) setNonEmpty!15416))

(assert (= b!2126472 b!2126466))

(assert (= (and b!2126454 ((_ is Cons!23772) (_2!13668 (_1!13669 lt!795868)))) b!2126472))

(assert (= (and b!2126467 condMapEmpty!12182) mapIsEmpty!12181))

(assert (= (and b!2126467 (not condMapEmpty!12182)) mapNonEmpty!12181))

(assert (= b!2126463 b!2126467))

(assert (= b!2126468 b!2126463))

(assert (= b!2126471 b!2126468))

(assert (= (and b!2126470 ((_ is LongMap!2481) (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795868)))))) b!2126471))

(assert (= b!2126459 b!2126470))

(assert (= (and b!2126464 ((_ is HashMap!2394) (cache!2775 (_2!13669 lt!795868)))) b!2126459))

(assert (= b!2126454 b!2126464))

(assert (= (and b!2126469 condMapEmpty!12181) mapIsEmpty!12182))

(assert (= (and b!2126469 (not condMapEmpty!12181)) mapNonEmpty!12182))

(assert (= b!2126458 b!2126469))

(assert (= b!2126465 b!2126458))

(assert (= b!2126460 b!2126465))

(assert (= (and b!2126461 ((_ is LongMap!2480) (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795868)))))) b!2126460))

(assert (= b!2126457 b!2126461))

(assert (= (and b!2126462 ((_ is HashMap!2395) (cache!2776 (_3!1956 lt!795868)))) b!2126457))

(assert (= b!2126454 b!2126462))

(assert (=> b!2126459 (< (dynLambda!11358 order!14769 (defaultValue!2556 (cache!2775 (_2!13669 lt!795868)))) (dynLambda!11359 order!14771 lambda!78918))))

(assert (=> b!2126458 (< (dynLambda!11360 order!14773 (defaultEntry!2845 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795868)))))))) (dynLambda!11359 order!14771 lambda!78918))))

(assert (=> b!2126463 (< (dynLambda!11361 order!14775 (defaultEntry!2846 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795868)))))))) (dynLambda!11359 order!14771 lambda!78918))))

(assert (=> b!2126457 (< (dynLambda!11362 order!14777 (defaultValue!2557 (cache!2776 (_3!1956 lt!795868)))) (dynLambda!11359 order!14771 lambda!78918))))

(declare-fun m!2578531 () Bool)

(assert (=> mapNonEmpty!12181 m!2578531))

(declare-fun m!2578533 () Bool)

(assert (=> mapNonEmpty!12182 m!2578533))

(declare-fun bs!444152 () Bool)

(declare-fun b!2126456 () Bool)

(assert (= bs!444152 (and b!2126456 b!2125889)))

(declare-fun lambda!78919 () Int)

(assert (=> bs!444152 (not (= lambda!78919 lambda!78849))))

(declare-fun bs!444153 () Bool)

(assert (= bs!444153 (and b!2126456 b!2125896)))

(assert (=> bs!444153 (= lambda!78919 lambda!78852)))

(declare-fun bs!444154 () Bool)

(assert (= bs!444154 (and b!2126456 d!644010)))

(assert (=> bs!444154 (not (= lambda!78919 lambda!78848))))

(declare-fun bs!444155 () Bool)

(assert (= bs!444155 (and b!2126456 b!2125730)))

(assert (=> bs!444155 (= lambda!78919 lambda!78827)))

(declare-fun bs!444156 () Bool)

(assert (= bs!444156 (and b!2126456 b!2126449)))

(assert (=> bs!444156 (not (= lambda!78919 lambda!78916))))

(declare-fun bs!444157 () Bool)

(assert (= bs!444157 (and b!2126456 b!2126454)))

(assert (=> bs!444157 (not (= lambda!78919 lambda!78918))))

(declare-fun bs!444158 () Bool)

(assert (= bs!444158 (and b!2126456 b!2126452)))

(assert (=> bs!444158 (not (= lambda!78919 lambda!78917))))

(declare-fun bs!444159 () Bool)

(assert (= bs!444159 (and b!2126456 d!644104)))

(assert (=> bs!444159 (not (= lambda!78919 lambda!78873))))

(declare-fun bs!444160 () Bool)

(assert (= bs!444160 (and b!2126456 b!2125894)))

(assert (=> bs!444160 (not (= lambda!78919 lambda!78851))))

(declare-fun bs!444161 () Bool)

(assert (= bs!444161 (and b!2126456 b!2125723)))

(assert (=> bs!444161 (not (= lambda!78919 lambda!78826))))

(declare-fun bs!444162 () Bool)

(assert (= bs!444162 (and b!2126456 d!644222)))

(assert (=> bs!444162 (not (= lambda!78919 lambda!78915))))

(assert (=> bs!444159 (not (= lambda!78919 lambda!78872))))

(declare-fun bs!444163 () Bool)

(assert (= bs!444163 (and b!2126456 b!2125892)))

(assert (=> bs!444163 (not (= lambda!78919 lambda!78850))))

(assert (=> b!2126456 true))

(declare-fun b!2126444 () Bool)

(declare-fun e!1355224 () Int)

(assert (=> b!2126444 (= e!1355224 (+ lt!795671 1))))

(declare-fun b!2126445 () Bool)

(assert (=> b!2126445 (= e!1355224 lt!795735)))

(declare-fun e!1355220 () Bool)

(assert (=> d!644222 e!1355220))

(declare-fun res!920006 () Bool)

(assert (=> d!644222 (=> (not res!920006) (not e!1355220))))

(assert (=> d!644222 (= res!920006 (= (_1!13668 (_1!13669 lt!795868)) (furthestNullablePosition!14 (_1!13676 lt!795746) (+ lt!795671 1) totalInput!886 lt!795670 lt!795735)))))

(declare-fun e!1355221 () tuple3!2972)

(assert (=> d!644222 (= lt!795868 e!1355221)))

(declare-fun c!340101 () Bool)

(declare-fun lt!795880 () Option!4874)

(assert (=> d!644222 (= c!340101 ((_ is Some!4873) lt!795880))))

(assert (=> d!644222 (= lt!795880 (get!7322 cacheFurthestNullable!130 (_1!13676 lt!795746) (+ lt!795671 1) lt!795735))))

(declare-fun lt!795872 () Unit!37634)

(declare-fun Unit!37646 () Unit!37634)

(assert (=> d!644222 (= lt!795872 Unit!37646)))

(assert (=> d!644222 (forall!4878 (Cons!23772 (StackFrame!67 z!3883 lt!795671 e!1354761 lt!795736 totalInput!886) Nil!23772) lambda!78915)))

(assert (=> d!644222 (= lt!795871 (furthestNullablePosition!14 (_1!13676 lt!795746) (+ lt!795671 1) totalInput!886 (size!18586 totalInput!886) lt!795735))))

(assert (=> d!644222 (and (>= (+ lt!795671 1) 0) (<= (+ lt!795671 1) lt!795670))))

(assert (=> d!644222 (= (furthestNullablePositionStackMem!15 (_1!13676 lt!795746) (+ lt!795671 1) totalInput!886 lt!795670 lt!795735 (Cons!23772 (StackFrame!67 z!3883 lt!795671 e!1354761 lt!795736 totalInput!886) Nil!23772) (_2!13676 lt!795746) (_3!1958 lt!795746) cacheFurthestNullable!130) lt!795868)))

(declare-fun b!2126446 () Bool)

(declare-fun res!920012 () Bool)

(assert (=> b!2126446 (=> (not res!920012) (not e!1355220))))

(assert (=> b!2126446 (= res!920012 (valid!1949 (_3!1956 lt!795868)))))

(declare-fun call!128781 () Bool)

(declare-fun c!340100 () Bool)

(declare-fun bm!128776 () Bool)

(assert (=> bm!128776 (= call!128781 (forall!4878 (Cons!23772 (StackFrame!67 z!3883 lt!795671 e!1354761 lt!795736 totalInput!886) Nil!23772) (ite c!340100 lambda!78915 lambda!78917)))))

(declare-fun bm!128777 () Bool)

(declare-fun call!128782 () Bool)

(assert (=> bm!128777 (= call!128782 (forall!4878 (Cons!23772 (StackFrame!67 z!3883 lt!795671 e!1354761 lt!795736 totalInput!886) Nil!23772) (ite c!340100 lambda!78916 lambda!78915)))))

(declare-fun b!2126447 () Bool)

(declare-fun res!920010 () Bool)

(assert (=> b!2126447 (=> (not res!920010) (not e!1355220))))

(assert (=> b!2126447 (= res!920010 (valid!1950 (_2!13669 lt!795868)))))

(declare-fun b!2126448 () Bool)

(declare-fun e!1355223 () tuple3!2972)

(assert (=> b!2126448 (= e!1355221 e!1355223)))

(declare-fun res!920011 () Bool)

(assert (=> b!2126448 (= res!920011 (= (+ lt!795671 1) lt!795670))))

(declare-fun e!1355222 () Bool)

(assert (=> b!2126448 (=> res!920011 e!1355222)))

(assert (=> b!2126448 (= c!340100 e!1355222)))

(declare-fun lt!795869 () Unit!37634)

(declare-fun lt!795873 () Unit!37634)

(assert (=> b!2126449 (= lt!795869 lt!795873)))

(assert (=> b!2126449 call!128782))

(declare-fun call!128783 () Unit!37634)

(assert (=> b!2126449 (= lt!795873 call!128783)))

(declare-fun lt!795877 () Unit!37634)

(declare-fun Unit!37647 () Unit!37634)

(assert (=> b!2126449 (= lt!795877 Unit!37647)))

(assert (=> b!2126449 call!128781))

(assert (=> b!2126449 (= e!1355223 (tuple3!2973 (tuple2!23425 lt!795735 (Cons!23772 (StackFrame!67 z!3883 lt!795671 e!1354761 lt!795736 totalInput!886) Nil!23772)) (_2!13676 lt!795746) (_3!1958 lt!795746)))))

(declare-fun b!2126450 () Bool)

(assert (=> b!2126450 (= e!1355222 (lostCauseZipper!61 (_1!13676 lt!795746)))))

(declare-fun b!2126451 () Bool)

(declare-fun res!920007 () Bool)

(assert (=> b!2126451 (=> (not res!920007) (not e!1355220))))

(assert (=> b!2126451 (= res!920007 (valid!1951 cacheFurthestNullable!130))))

(declare-fun lt!795870 () Int)

(declare-fun lt!795875 () tuple3!2972)

(declare-fun lt!795881 () tuple3!2976)

(assert (=> b!2126452 (= lt!795875 (furthestNullablePositionStackMem!15 (_1!13676 lt!795881) (+ lt!795671 1 1) totalInput!886 lt!795670 lt!795870 (Cons!23772 (StackFrame!67 (_1!13676 lt!795746) (+ lt!795671 1) lt!795735 lt!795871 totalInput!886) (Cons!23772 (StackFrame!67 z!3883 lt!795671 e!1354761 lt!795736 totalInput!886) Nil!23772)) (_2!13676 lt!795881) (_3!1958 lt!795881) cacheFurthestNullable!130))))

(declare-fun lt!795874 () Unit!37634)

(declare-fun lt!795878 () Unit!37634)

(assert (=> b!2126452 (= lt!795874 lt!795878)))

(assert (=> b!2126452 call!128781))

(assert (=> b!2126452 (= lt!795878 call!128783)))

(declare-fun lt!795876 () Unit!37634)

(declare-fun Unit!37648 () Unit!37634)

(assert (=> b!2126452 (= lt!795876 Unit!37648)))

(assert (=> b!2126452 call!128782))

(assert (=> b!2126452 (= lt!795879 (furthestNullablePosition!14 (_1!13676 lt!795881) (+ lt!795671 1 1) totalInput!886 (size!18586 totalInput!886) lt!795870))))

(assert (=> b!2126452 (= lt!795870 e!1355224)))

(declare-fun c!340099 () Bool)

(assert (=> b!2126452 (= c!340099 (nullableZipper!70 (_1!13676 lt!795881)))))

(assert (=> b!2126452 (= lt!795881 (derivationStepZipperMem!21 (_1!13676 lt!795746) (apply!5917 totalInput!886 (+ lt!795671 1)) (_2!13676 lt!795746) (_3!1958 lt!795746)))))

(assert (=> b!2126452 (= e!1355223 (tuple3!2973 (_1!13669 lt!795875) (_2!13669 lt!795875) (_3!1956 lt!795875)))))

(declare-fun b!2126453 () Bool)

(assert (=> b!2126453 (= e!1355221 (tuple3!2973 (tuple2!23425 (v!28304 lt!795880) Nil!23772) (_2!13676 lt!795746) (_3!1958 lt!795746)))))

(declare-fun res!920009 () Bool)

(assert (=> b!2126454 (=> (not res!920009) (not e!1355220))))

(assert (=> b!2126454 (= res!920009 (forall!4878 (_2!13668 (_1!13669 lt!795868)) lambda!78918))))

(declare-fun b!2126455 () Bool)

(declare-fun res!920008 () Bool)

(assert (=> b!2126455 (=> (not res!920008) (not e!1355220))))

(assert (=> b!2126455 (= res!920008 (= (totalInput!2936 cacheFurthestNullable!130) totalInput!886))))

(assert (=> b!2126456 (= e!1355220 (forall!4878 (_2!13668 (_1!13669 lt!795868)) lambda!78919))))

(declare-fun bm!128778 () Bool)

(assert (=> bm!128778 (= call!128783 (lemmaStackPreservesForEqualRes!10 (Cons!23772 (StackFrame!67 z!3883 lt!795671 e!1354761 lt!795736 totalInput!886) Nil!23772) lt!795871 (ite c!340100 lt!795735 lt!795879)))))

(assert (= (and d!644222 c!340101) b!2126453))

(assert (= (and d!644222 (not c!340101)) b!2126448))

(assert (= (and b!2126448 (not res!920011)) b!2126450))

(assert (= (and b!2126448 c!340100) b!2126449))

(assert (= (and b!2126448 (not c!340100)) b!2126452))

(assert (= (and b!2126452 c!340099) b!2126444))

(assert (= (and b!2126452 (not c!340099)) b!2126445))

(assert (= (or b!2126449 b!2126452) bm!128777))

(assert (= (or b!2126449 b!2126452) bm!128776))

(assert (= (or b!2126449 b!2126452) bm!128778))

(assert (= (and d!644222 res!920006) b!2126454))

(assert (= (and b!2126454 res!920009) b!2126447))

(assert (= (and b!2126447 res!920010) b!2126446))

(assert (= (and b!2126446 res!920012) b!2126451))

(assert (= (and b!2126451 res!920007) b!2126455))

(assert (= (and b!2126455 res!920008) b!2126456))

(declare-fun m!2578535 () Bool)

(assert (=> b!2126447 m!2578535))

(declare-fun m!2578537 () Bool)

(assert (=> b!2126456 m!2578537))

(declare-fun m!2578539 () Bool)

(assert (=> bm!128778 m!2578539))

(declare-fun m!2578541 () Bool)

(assert (=> b!2126450 m!2578541))

(declare-fun m!2578543 () Bool)

(assert (=> d!644222 m!2578543))

(assert (=> d!644222 m!2577878))

(declare-fun m!2578545 () Bool)

(assert (=> d!644222 m!2578545))

(declare-fun m!2578547 () Bool)

(assert (=> d!644222 m!2578547))

(assert (=> d!644222 m!2577878))

(assert (=> d!644222 m!2577974))

(declare-fun m!2578549 () Bool)

(assert (=> bm!128776 m!2578549))

(declare-fun m!2578551 () Bool)

(assert (=> b!2126446 m!2578551))

(declare-fun m!2578553 () Bool)

(assert (=> b!2126452 m!2578553))

(declare-fun m!2578555 () Bool)

(assert (=> b!2126452 m!2578555))

(assert (=> b!2126452 m!2577878))

(declare-fun m!2578557 () Bool)

(assert (=> b!2126452 m!2578557))

(assert (=> b!2126452 m!2578553))

(assert (=> b!2126452 m!2577878))

(declare-fun m!2578559 () Bool)

(assert (=> b!2126452 m!2578559))

(declare-fun m!2578561 () Bool)

(assert (=> b!2126452 m!2578561))

(assert (=> b!2126451 m!2577822))

(declare-fun m!2578563 () Bool)

(assert (=> b!2126454 m!2578563))

(declare-fun m!2578565 () Bool)

(assert (=> bm!128777 m!2578565))

(assert (=> b!2125892 d!644222))

(declare-fun d!644224 () Bool)

(declare-fun e!1355243 () Bool)

(assert (=> d!644224 e!1355243))

(declare-fun res!920017 () Bool)

(assert (=> d!644224 (=> (not res!920017) (not e!1355243))))

(declare-fun lt!795886 () tuple3!2976)

(assert (=> d!644224 (= res!920017 (= (_1!13676 lt!795886) (derivationStepZipper!88 z!3883 (apply!5917 totalInput!886 lt!795671))))))

(declare-fun choose!12675 ((InoxSet Context!2494) C!11500 CacheUp!1662 CacheDown!1648) tuple3!2976)

(assert (=> d!644224 (= lt!795886 (choose!12675 z!3883 (apply!5917 totalInput!886 lt!795671) cacheUp!991 cacheDown!1110))))

(assert (=> d!644224 (= (derivationStepZipperMem!21 z!3883 (apply!5917 totalInput!886 lt!795671) cacheUp!991 cacheDown!1110) lt!795886)))

(declare-fun b!2126477 () Bool)

(declare-fun res!920018 () Bool)

(assert (=> b!2126477 (=> (not res!920018) (not e!1355243))))

(assert (=> b!2126477 (= res!920018 (valid!1950 (_2!13676 lt!795886)))))

(declare-fun b!2126478 () Bool)

(assert (=> b!2126478 (= e!1355243 (valid!1949 (_3!1958 lt!795886)))))

(assert (= (and d!644224 res!920017) b!2126477))

(assert (= (and b!2126477 res!920018) b!2126478))

(assert (=> d!644224 m!2577970))

(assert (=> d!644224 m!2578186))

(assert (=> d!644224 m!2577970))

(declare-fun m!2578567 () Bool)

(assert (=> d!644224 m!2578567))

(declare-fun m!2578569 () Bool)

(assert (=> b!2126477 m!2578569))

(declare-fun m!2578571 () Bool)

(assert (=> b!2126478 m!2578571))

(assert (=> b!2125892 d!644224))

(declare-fun b!2126479 () Bool)

(declare-fun e!1355244 () Int)

(assert (=> b!2126479 (= e!1355244 lt!795735)))

(declare-fun b!2126480 () Bool)

(declare-fun e!1355246 () Int)

(assert (=> b!2126480 (= e!1355246 (+ lt!795671 1))))

(declare-fun b!2126481 () Bool)

(declare-fun e!1355245 () Bool)

(assert (=> b!2126481 (= e!1355245 (lostCauseZipper!61 (_1!13676 lt!795746)))))

(declare-fun lt!795887 () Int)

(declare-fun d!644226 () Bool)

(assert (=> d!644226 (and (>= lt!795887 (- 1)) (< lt!795887 (size!18586 totalInput!886)) (>= lt!795887 lt!795735) (or (= lt!795887 lt!795735) (>= lt!795887 (+ lt!795671 1))))))

(assert (=> d!644226 (= lt!795887 e!1355244)))

(declare-fun c!340103 () Bool)

(assert (=> d!644226 (= c!340103 e!1355245)))

(declare-fun res!920019 () Bool)

(assert (=> d!644226 (=> res!920019 e!1355245)))

(assert (=> d!644226 (= res!920019 (= (+ lt!795671 1) (size!18586 totalInput!886)))))

(assert (=> d!644226 (and (>= (+ lt!795671 1) 0) (<= (+ lt!795671 1) (size!18586 totalInput!886)))))

(assert (=> d!644226 (= (furthestNullablePosition!14 (_1!13676 lt!795746) (+ lt!795671 1) totalInput!886 (size!18586 totalInput!886) lt!795735) lt!795887)))

(declare-fun b!2126482 () Bool)

(declare-fun lt!795888 () (InoxSet Context!2494))

(assert (=> b!2126482 (= e!1355244 (furthestNullablePosition!14 lt!795888 (+ lt!795671 1 1) totalInput!886 (size!18586 totalInput!886) e!1355246))))

(assert (=> b!2126482 (= lt!795888 (derivationStepZipper!88 (_1!13676 lt!795746) (apply!5917 totalInput!886 (+ lt!795671 1))))))

(declare-fun c!340102 () Bool)

(assert (=> b!2126482 (= c!340102 (nullableZipper!70 lt!795888))))

(declare-fun b!2126483 () Bool)

(assert (=> b!2126483 (= e!1355246 lt!795735)))

(assert (= (and d!644226 (not res!920019)) b!2126481))

(assert (= (and d!644226 c!340103) b!2126479))

(assert (= (and d!644226 (not c!340103)) b!2126482))

(assert (= (and b!2126482 c!340102) b!2126480))

(assert (= (and b!2126482 (not c!340102)) b!2126483))

(assert (=> b!2126481 m!2578541))

(assert (=> b!2126482 m!2577878))

(declare-fun m!2578573 () Bool)

(assert (=> b!2126482 m!2578573))

(assert (=> b!2126482 m!2578553))

(assert (=> b!2126482 m!2578553))

(declare-fun m!2578575 () Bool)

(assert (=> b!2126482 m!2578575))

(declare-fun m!2578577 () Bool)

(assert (=> b!2126482 m!2578577))

(assert (=> b!2125892 d!644226))

(declare-fun condSetEmpty!15417 () Bool)

(assert (=> setNonEmpty!15363 (= condSetEmpty!15417 (= setRest!15363 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15417 () Bool)

(assert (=> setNonEmpty!15363 (= tp!651856 setRes!15417)))

(declare-fun setIsEmpty!15417 () Bool)

(assert (=> setIsEmpty!15417 setRes!15417))

(declare-fun setElem!15417 () Context!2494)

(declare-fun tp!651986 () Bool)

(declare-fun e!1355247 () Bool)

(declare-fun setNonEmpty!15417 () Bool)

(assert (=> setNonEmpty!15417 (= setRes!15417 (and tp!651986 (inv!31365 setElem!15417) e!1355247))))

(declare-fun setRest!15417 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15417 (= setRest!15363 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15417 true) setRest!15417))))

(declare-fun b!2126484 () Bool)

(declare-fun tp!651987 () Bool)

(assert (=> b!2126484 (= e!1355247 tp!651987)))

(assert (= (and setNonEmpty!15363 condSetEmpty!15417) setIsEmpty!15417))

(assert (= (and setNonEmpty!15363 (not condSetEmpty!15417)) setNonEmpty!15417))

(assert (= setNonEmpty!15417 b!2126484))

(declare-fun m!2578579 () Bool)

(assert (=> setNonEmpty!15417 m!2578579))

(declare-fun e!1355250 () Bool)

(declare-fun b!2126485 () Bool)

(declare-fun e!1355248 () Bool)

(declare-fun tp!651990 () Bool)

(declare-fun setRes!15418 () Bool)

(assert (=> b!2126485 (= e!1355250 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 (t!196377 mapValue!12177))))) e!1355248 tp_is_empty!9499 setRes!15418 tp!651990))))

(declare-fun condSetEmpty!15418 () Bool)

(assert (=> b!2126485 (= condSetEmpty!15418 (= (_2!13667 (h!29170 (t!196377 mapValue!12177))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2126054 (= tp!651948 e!1355250)))

(declare-fun setIsEmpty!15418 () Bool)

(assert (=> setIsEmpty!15418 setRes!15418))

(declare-fun b!2126486 () Bool)

(declare-fun e!1355249 () Bool)

(declare-fun tp!651991 () Bool)

(assert (=> b!2126486 (= e!1355249 tp!651991)))

(declare-fun setElem!15418 () Context!2494)

(declare-fun tp!651989 () Bool)

(declare-fun setNonEmpty!15418 () Bool)

(assert (=> setNonEmpty!15418 (= setRes!15418 (and tp!651989 (inv!31365 setElem!15418) e!1355249))))

(declare-fun setRest!15418 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15418 (= (_2!13667 (h!29170 (t!196377 mapValue!12177))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15418 true) setRest!15418))))

(declare-fun b!2126487 () Bool)

(declare-fun tp!651988 () Bool)

(assert (=> b!2126487 (= e!1355248 tp!651988)))

(assert (= b!2126485 b!2126487))

(assert (= (and b!2126485 condSetEmpty!15418) setIsEmpty!15418))

(assert (= (and b!2126485 (not condSetEmpty!15418)) setNonEmpty!15418))

(assert (= setNonEmpty!15418 b!2126486))

(assert (= (and b!2126054 ((_ is Cons!23769) (t!196377 mapValue!12177))) b!2126485))

(declare-fun m!2578581 () Bool)

(assert (=> b!2126485 m!2578581))

(declare-fun m!2578583 () Bool)

(assert (=> setNonEmpty!15418 m!2578583))

(declare-fun condSetEmpty!15419 () Bool)

(assert (=> setNonEmpty!15364 (= condSetEmpty!15419 (= setRest!15364 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15419 () Bool)

(assert (=> setNonEmpty!15364 (= tp!651861 setRes!15419)))

(declare-fun setIsEmpty!15419 () Bool)

(assert (=> setIsEmpty!15419 setRes!15419))

(declare-fun setElem!15419 () Context!2494)

(declare-fun setNonEmpty!15419 () Bool)

(declare-fun tp!651992 () Bool)

(declare-fun e!1355251 () Bool)

(assert (=> setNonEmpty!15419 (= setRes!15419 (and tp!651992 (inv!31365 setElem!15419) e!1355251))))

(declare-fun setRest!15419 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15419 (= setRest!15364 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15419 true) setRest!15419))))

(declare-fun b!2126488 () Bool)

(declare-fun tp!651993 () Bool)

(assert (=> b!2126488 (= e!1355251 tp!651993)))

(assert (= (and setNonEmpty!15364 condSetEmpty!15419) setIsEmpty!15419))

(assert (= (and setNonEmpty!15364 (not condSetEmpty!15419)) setNonEmpty!15419))

(assert (= setNonEmpty!15419 b!2126488))

(declare-fun m!2578585 () Bool)

(assert (=> setNonEmpty!15419 m!2578585))

(declare-fun setRes!15420 () Bool)

(declare-fun tp!651996 () Bool)

(declare-fun e!1355252 () Bool)

(declare-fun e!1355254 () Bool)

(declare-fun b!2126489 () Bool)

(assert (=> b!2126489 (= e!1355254 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 (t!196377 mapDefault!12157))))) e!1355252 tp_is_empty!9499 setRes!15420 tp!651996))))

(declare-fun condSetEmpty!15420 () Bool)

(assert (=> b!2126489 (= condSetEmpty!15420 (= (_2!13667 (h!29170 (t!196377 mapDefault!12157))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2126103 (= tp!651984 e!1355254)))

(declare-fun setIsEmpty!15420 () Bool)

(assert (=> setIsEmpty!15420 setRes!15420))

(declare-fun b!2126490 () Bool)

(declare-fun e!1355253 () Bool)

(declare-fun tp!651997 () Bool)

(assert (=> b!2126490 (= e!1355253 tp!651997)))

(declare-fun tp!651995 () Bool)

(declare-fun setElem!15420 () Context!2494)

(declare-fun setNonEmpty!15420 () Bool)

(assert (=> setNonEmpty!15420 (= setRes!15420 (and tp!651995 (inv!31365 setElem!15420) e!1355253))))

(declare-fun setRest!15420 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15420 (= (_2!13667 (h!29170 (t!196377 mapDefault!12157))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15420 true) setRest!15420))))

(declare-fun b!2126491 () Bool)

(declare-fun tp!651994 () Bool)

(assert (=> b!2126491 (= e!1355252 tp!651994)))

(assert (= b!2126489 b!2126491))

(assert (= (and b!2126489 condSetEmpty!15420) setIsEmpty!15420))

(assert (= (and b!2126489 (not condSetEmpty!15420)) setNonEmpty!15420))

(assert (= setNonEmpty!15420 b!2126490))

(assert (= (and b!2126103 ((_ is Cons!23769) (t!196377 mapDefault!12157))) b!2126489))

(declare-fun m!2578587 () Bool)

(assert (=> b!2126489 m!2578587))

(declare-fun m!2578589 () Bool)

(assert (=> setNonEmpty!15420 m!2578589))

(declare-fun b!2126492 () Bool)

(declare-fun e!1355255 () Bool)

(declare-fun tp!651998 () Bool)

(declare-fun tp!651999 () Bool)

(assert (=> b!2126492 (= e!1355255 (and tp!651998 tp!651999))))

(assert (=> b!2126105 (= tp!651982 e!1355255)))

(assert (= (and b!2126105 ((_ is Cons!23768) (exprs!1747 (_1!13666 (_1!13667 (h!29170 mapDefault!12157)))))) b!2126492))

(declare-fun condSetEmpty!15421 () Bool)

(assert (=> setNonEmpty!15380 (= condSetEmpty!15421 (= setRest!15380 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15421 () Bool)

(assert (=> setNonEmpty!15380 setRes!15421))

(declare-fun setIsEmpty!15421 () Bool)

(assert (=> setIsEmpty!15421 setRes!15421))

(declare-fun setNonEmpty!15421 () Bool)

(assert (=> setNonEmpty!15421 (= setRes!15421 true)))

(declare-fun setElem!15421 () Context!2494)

(declare-fun setRest!15421 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15421 (= setRest!15380 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15421 true) setRest!15421))))

(assert (= (and setNonEmpty!15380 condSetEmpty!15421) setIsEmpty!15421))

(assert (= (and setNonEmpty!15380 (not condSetEmpty!15421)) setNonEmpty!15421))

(declare-fun tp!652000 () Bool)

(declare-fun b!2126493 () Bool)

(declare-fun tp!652002 () Bool)

(declare-fun e!1355256 () Bool)

(assert (=> b!2126493 (= e!1355256 (and (inv!31366 (left!18378 (left!18378 (c!339969 totalInput!886)))) tp!652002 (inv!31366 (right!18708 (left!18378 (c!339969 totalInput!886)))) tp!652000))))

(declare-fun b!2126495 () Bool)

(declare-fun e!1355257 () Bool)

(declare-fun tp!652001 () Bool)

(assert (=> b!2126495 (= e!1355257 tp!652001)))

(declare-fun b!2126494 () Bool)

(assert (=> b!2126494 (= e!1355256 (and (inv!31373 (xs!10757 (left!18378 (c!339969 totalInput!886)))) e!1355257))))

(assert (=> b!2126095 (= tp!651975 (and (inv!31366 (left!18378 (c!339969 totalInput!886))) e!1355256))))

(assert (= (and b!2126095 ((_ is Node!7815) (left!18378 (c!339969 totalInput!886)))) b!2126493))

(assert (= b!2126494 b!2126495))

(assert (= (and b!2126095 ((_ is Leaf!11421) (left!18378 (c!339969 totalInput!886)))) b!2126494))

(declare-fun m!2578591 () Bool)

(assert (=> b!2126493 m!2578591))

(declare-fun m!2578593 () Bool)

(assert (=> b!2126493 m!2578593))

(declare-fun m!2578595 () Bool)

(assert (=> b!2126494 m!2578595))

(assert (=> b!2126095 m!2578092))

(declare-fun tp!652003 () Bool)

(declare-fun e!1355258 () Bool)

(declare-fun tp!652005 () Bool)

(declare-fun b!2126496 () Bool)

(assert (=> b!2126496 (= e!1355258 (and (inv!31366 (left!18378 (right!18708 (c!339969 totalInput!886)))) tp!652005 (inv!31366 (right!18708 (right!18708 (c!339969 totalInput!886)))) tp!652003))))

(declare-fun b!2126498 () Bool)

(declare-fun e!1355259 () Bool)

(declare-fun tp!652004 () Bool)

(assert (=> b!2126498 (= e!1355259 tp!652004)))

(declare-fun b!2126497 () Bool)

(assert (=> b!2126497 (= e!1355258 (and (inv!31373 (xs!10757 (right!18708 (c!339969 totalInput!886)))) e!1355259))))

(assert (=> b!2126095 (= tp!651973 (and (inv!31366 (right!18708 (c!339969 totalInput!886))) e!1355258))))

(assert (= (and b!2126095 ((_ is Node!7815) (right!18708 (c!339969 totalInput!886)))) b!2126496))

(assert (= b!2126497 b!2126498))

(assert (= (and b!2126095 ((_ is Leaf!11421) (right!18708 (c!339969 totalInput!886)))) b!2126497))

(declare-fun m!2578597 () Bool)

(assert (=> b!2126496 m!2578597))

(declare-fun m!2578599 () Bool)

(assert (=> b!2126496 m!2578599))

(declare-fun m!2578601 () Bool)

(assert (=> b!2126497 m!2578601))

(assert (=> b!2126095 m!2578094))

(declare-fun condSetEmpty!15422 () Bool)

(assert (=> setNonEmpty!15379 (= condSetEmpty!15422 (= setRest!15379 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15422 () Bool)

(assert (=> setNonEmpty!15379 setRes!15422))

(declare-fun setIsEmpty!15422 () Bool)

(assert (=> setIsEmpty!15422 setRes!15422))

(declare-fun setNonEmpty!15422 () Bool)

(assert (=> setNonEmpty!15422 (= setRes!15422 true)))

(declare-fun setElem!15422 () Context!2494)

(declare-fun setRest!15422 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15422 (= setRest!15379 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15422 true) setRest!15422))))

(assert (= (and setNonEmpty!15379 condSetEmpty!15422) setIsEmpty!15422))

(assert (= (and setNonEmpty!15379 (not condSetEmpty!15422)) setNonEmpty!15422))

(declare-fun b!2126499 () Bool)

(declare-fun e!1355260 () Bool)

(declare-fun setRes!15423 () Bool)

(assert (=> b!2126499 (= e!1355260 setRes!15423)))

(declare-fun condSetEmpty!15423 () Bool)

(assert (=> b!2126499 (= condSetEmpty!15423 (= (_2!13665 (h!29171 (t!196378 mapDefault!12163))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15423 () Bool)

(assert (=> setIsEmpty!15423 setRes!15423))

(declare-fun setNonEmpty!15423 () Bool)

(assert (=> setNonEmpty!15423 (= setRes!15423 true)))

(declare-fun setElem!15423 () Context!2494)

(declare-fun setRest!15423 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15423 (= (_2!13665 (h!29171 (t!196378 mapDefault!12163))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15423 true) setRest!15423))))

(assert (=> b!2126094 e!1355260))

(assert (= (and b!2126499 condSetEmpty!15423) setIsEmpty!15423))

(assert (= (and b!2126499 (not condSetEmpty!15423)) setNonEmpty!15423))

(assert (= (and b!2126094 ((_ is Cons!23770) (t!196378 mapDefault!12163))) b!2126499))

(declare-fun condSetEmpty!15424 () Bool)

(assert (=> setNonEmpty!15386 (= condSetEmpty!15424 (= setRest!15385 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15424 () Bool)

(assert (=> setNonEmpty!15386 setRes!15424))

(declare-fun setIsEmpty!15424 () Bool)

(assert (=> setIsEmpty!15424 setRes!15424))

(declare-fun setNonEmpty!15424 () Bool)

(assert (=> setNonEmpty!15424 (= setRes!15424 true)))

(declare-fun setElem!15424 () Context!2494)

(declare-fun setRest!15424 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15424 (= setRest!15385 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15424 true) setRest!15424))))

(assert (= (and setNonEmpty!15386 condSetEmpty!15424) setIsEmpty!15424))

(assert (= (and setNonEmpty!15386 (not condSetEmpty!15424)) setNonEmpty!15424))

(declare-fun setIsEmpty!15425 () Bool)

(declare-fun setRes!15425 () Bool)

(assert (=> setIsEmpty!15425 setRes!15425))

(declare-fun b!2126501 () Bool)

(declare-fun e!1355262 () Bool)

(declare-fun tp!652006 () Bool)

(assert (=> b!2126501 (= e!1355262 tp!652006)))

(declare-fun e!1355261 () Bool)

(assert (=> b!2125966 (= tp!651843 e!1355261)))

(declare-fun b!2126500 () Bool)

(declare-fun tp!652007 () Bool)

(assert (=> b!2126500 (= e!1355261 (and setRes!15425 tp!652007))))

(declare-fun condSetEmpty!15425 () Bool)

(assert (=> b!2126500 (= condSetEmpty!15425 (= (_1!13670 (_1!13671 (h!29174 (t!196381 mapValue!12157)))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setElem!15425 () Context!2494)

(declare-fun tp!652008 () Bool)

(declare-fun setNonEmpty!15425 () Bool)

(assert (=> setNonEmpty!15425 (= setRes!15425 (and tp!652008 (inv!31365 setElem!15425) e!1355262))))

(declare-fun setRest!15425 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15425 (= (_1!13670 (_1!13671 (h!29174 (t!196381 mapValue!12157)))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15425 true) setRest!15425))))

(assert (= (and b!2126500 condSetEmpty!15425) setIsEmpty!15425))

(assert (= (and b!2126500 (not condSetEmpty!15425)) setNonEmpty!15425))

(assert (= setNonEmpty!15425 b!2126501))

(assert (= (and b!2125966 ((_ is Cons!23773) (t!196381 mapValue!12157))) b!2126500))

(declare-fun m!2578603 () Bool)

(assert (=> setNonEmpty!15425 m!2578603))

(declare-fun condSetEmpty!15426 () Bool)

(assert (=> setNonEmpty!15375 (= condSetEmpty!15426 (= setRest!15374 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15426 () Bool)

(assert (=> setNonEmpty!15375 (= tp!651916 setRes!15426)))

(declare-fun setIsEmpty!15426 () Bool)

(assert (=> setIsEmpty!15426 setRes!15426))

(declare-fun e!1355263 () Bool)

(declare-fun setElem!15426 () Context!2494)

(declare-fun tp!652009 () Bool)

(declare-fun setNonEmpty!15426 () Bool)

(assert (=> setNonEmpty!15426 (= setRes!15426 (and tp!652009 (inv!31365 setElem!15426) e!1355263))))

(declare-fun setRest!15426 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15426 (= setRest!15374 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15426 true) setRest!15426))))

(declare-fun b!2126502 () Bool)

(declare-fun tp!652010 () Bool)

(assert (=> b!2126502 (= e!1355263 tp!652010)))

(assert (= (and setNonEmpty!15375 condSetEmpty!15426) setIsEmpty!15426))

(assert (= (and setNonEmpty!15375 (not condSetEmpty!15426)) setNonEmpty!15426))

(assert (= setNonEmpty!15426 b!2126502))

(declare-fun m!2578605 () Bool)

(assert (=> setNonEmpty!15426 m!2578605))

(declare-fun b!2126517 () Bool)

(declare-fun e!1355276 () Bool)

(declare-fun lt!795894 () MutLongMap!2480)

(assert (=> b!2126517 (= e!1355276 ((_ is LongMap!2480) lt!795894))))

(assert (=> b!2126517 (= lt!795894 (v!28299 (underlying!5158 (cache!2776 (_3!1956 (furthestNullablePositionStackMem!15 z!3883 lt!795671 totalInput!886 lt!795670 e!1354761 Nil!23772 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))))))

(declare-fun e!1355278 () Bool)

(declare-fun e!1355279 () Bool)

(assert (=> d!644010 (= true (and e!1355278 e!1355279))))

(declare-fun b!2126518 () Bool)

(declare-fun e!1355281 () Bool)

(declare-fun lt!795893 () MutLongMap!2481)

(assert (=> b!2126518 (= e!1355281 ((_ is LongMap!2481) lt!795893))))

(assert (=> b!2126518 (= lt!795893 (v!28301 (underlying!5157 (cache!2775 (_2!13669 (furthestNullablePositionStackMem!15 z!3883 lt!795671 totalInput!886 lt!795670 e!1354761 Nil!23772 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))))))

(declare-fun b!2126519 () Bool)

(declare-fun e!1355277 () Bool)

(assert (=> b!2126519 (= e!1355279 e!1355277)))

(declare-fun b!2126520 () Bool)

(declare-fun e!1355280 () Bool)

(assert (=> b!2126520 (= e!1355280 e!1355281)))

(declare-fun b!2126521 () Bool)

(assert (=> b!2126521 (= e!1355277 e!1355276)))

(declare-fun b!2126522 () Bool)

(assert (=> b!2126522 (= e!1355278 e!1355280)))

(assert (= b!2126520 b!2126518))

(assert (= (and b!2126522 ((_ is HashMap!2394) (cache!2775 (_2!13669 (furthestNullablePositionStackMem!15 z!3883 lt!795671 totalInput!886 lt!795670 e!1354761 Nil!23772 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))) b!2126520))

(assert (= d!644010 b!2126522))

(assert (= b!2126521 b!2126517))

(assert (= (and b!2126519 ((_ is HashMap!2395) (cache!2776 (_3!1956 (furthestNullablePositionStackMem!15 z!3883 lt!795671 totalInput!886 lt!795670 e!1354761 Nil!23772 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))) b!2126521))

(assert (= d!644010 b!2126519))

(declare-fun condSetEmpty!15427 () Bool)

(assert (=> setNonEmpty!15365 (= condSetEmpty!15427 (= setRest!15365 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15427 () Bool)

(assert (=> setNonEmpty!15365 (= tp!651867 setRes!15427)))

(declare-fun setIsEmpty!15427 () Bool)

(assert (=> setIsEmpty!15427 setRes!15427))

(declare-fun tp!652011 () Bool)

(declare-fun e!1355282 () Bool)

(declare-fun setElem!15427 () Context!2494)

(declare-fun setNonEmpty!15427 () Bool)

(assert (=> setNonEmpty!15427 (= setRes!15427 (and tp!652011 (inv!31365 setElem!15427) e!1355282))))

(declare-fun setRest!15427 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15427 (= setRest!15365 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15427 true) setRest!15427))))

(declare-fun b!2126523 () Bool)

(declare-fun tp!652012 () Bool)

(assert (=> b!2126523 (= e!1355282 tp!652012)))

(assert (= (and setNonEmpty!15365 condSetEmpty!15427) setIsEmpty!15427))

(assert (= (and setNonEmpty!15365 (not condSetEmpty!15427)) setNonEmpty!15427))

(assert (= setNonEmpty!15427 b!2126523))

(declare-fun m!2578607 () Bool)

(assert (=> setNonEmpty!15427 m!2578607))

(declare-fun b!2126524 () Bool)

(declare-fun e!1355283 () Bool)

(declare-fun setRes!15428 () Bool)

(assert (=> b!2126524 (= e!1355283 setRes!15428)))

(declare-fun condSetEmpty!15428 () Bool)

(assert (=> b!2126524 (= condSetEmpty!15428 (= (_2!13665 (h!29171 (t!196378 mapDefault!12174))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15428 () Bool)

(assert (=> setIsEmpty!15428 setRes!15428))

(declare-fun setNonEmpty!15428 () Bool)

(assert (=> setNonEmpty!15428 (= setRes!15428 true)))

(declare-fun setElem!15428 () Context!2494)

(declare-fun setRest!15428 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15428 (= (_2!13665 (h!29171 (t!196378 mapDefault!12174))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15428 true) setRest!15428))))

(assert (=> b!2126034 e!1355283))

(assert (= (and b!2126524 condSetEmpty!15428) setIsEmpty!15428))

(assert (= (and b!2126524 (not condSetEmpty!15428)) setNonEmpty!15428))

(assert (= (and b!2126034 ((_ is Cons!23770) (t!196378 mapDefault!12174))) b!2126524))

(declare-fun b!2126525 () Bool)

(declare-fun e!1355284 () Bool)

(declare-fun tp!652013 () Bool)

(declare-fun tp!652014 () Bool)

(assert (=> b!2126525 (= e!1355284 (and tp!652013 tp!652014))))

(assert (=> b!2126076 (= tp!651964 e!1355284)))

(assert (= (and b!2126076 ((_ is Cons!23768) (exprs!1747 setElem!15402))) b!2126525))

(declare-fun b!2126526 () Bool)

(declare-fun e!1355285 () Bool)

(declare-fun tp!652015 () Bool)

(declare-fun tp!652016 () Bool)

(assert (=> b!2126526 (= e!1355285 (and tp!652015 tp!652016))))

(assert (=> b!2126013 (= tp!651907 e!1355285)))

(assert (= (and b!2126013 ((_ is Cons!23768) (exprs!1747 setElem!15375))) b!2126526))

(declare-fun b!2126527 () Bool)

(declare-fun e!1355286 () Bool)

(declare-fun tp!652017 () Bool)

(declare-fun tp!652018 () Bool)

(assert (=> b!2126527 (= e!1355286 (and tp!652017 tp!652018))))

(assert (=> b!2126087 (= tp!651968 e!1355286)))

(assert (= (and b!2126087 ((_ is Cons!23768) (exprs!1747 (_2!13664 (_1!13665 (h!29171 mapDefault!12156)))))) b!2126527))

(declare-fun b!2126528 () Bool)

(declare-fun e!1355287 () Bool)

(declare-fun tp!652019 () Bool)

(declare-fun tp!652020 () Bool)

(assert (=> b!2126528 (= e!1355287 (and tp!652019 tp!652020))))

(assert (=> b!2126016 (= tp!651910 e!1355287)))

(assert (= (and b!2126016 ((_ is Cons!23768) (exprs!1747 setElem!15374))) b!2126528))

(declare-fun b!2126529 () Bool)

(declare-fun e!1355288 () Bool)

(declare-fun setRes!15429 () Bool)

(assert (=> b!2126529 (= e!1355288 setRes!15429)))

(declare-fun condSetEmpty!15429 () Bool)

(assert (=> b!2126529 (= condSetEmpty!15429 (= (_2!13667 (h!29170 (t!196377 mapValue!12163))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15429 () Bool)

(assert (=> setIsEmpty!15429 setRes!15429))

(declare-fun setNonEmpty!15429 () Bool)

(assert (=> setNonEmpty!15429 (= setRes!15429 true)))

(declare-fun setElem!15429 () Context!2494)

(declare-fun setRest!15429 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15429 (= (_2!13667 (h!29170 (t!196377 mapValue!12163))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15429 true) setRest!15429))))

(assert (=> b!2126085 e!1355288))

(assert (= (and b!2126529 condSetEmpty!15429) setIsEmpty!15429))

(assert (= (and b!2126529 (not condSetEmpty!15429)) setNonEmpty!15429))

(assert (= (and b!2126085 ((_ is Cons!23769) (t!196377 mapValue!12163))) b!2126529))

(declare-fun b!2126540 () Bool)

(declare-fun e!1355297 () Bool)

(declare-fun lt!795897 () MutLongMap!2482)

(assert (=> b!2126540 (= e!1355297 ((_ is LongMap!2482) lt!795897))))

(assert (=> b!2126540 (= lt!795897 (v!28303 (underlying!5160 (cache!2777 (_2!13673 (fillUpCache!10 (_2!13668 (_1!13669 lt!795672)) totalInput!886 lt!795670 (_1!13668 (_1!13669 lt!795672)) 0 cacheFurthestNullable!130))))))))

(declare-fun b!2126539 () Bool)

(declare-fun e!1355296 () Bool)

(assert (=> b!2126539 (= e!1355296 e!1355297)))

(declare-fun b!2126538 () Bool)

(declare-fun e!1355295 () Bool)

(assert (=> b!2126538 (= e!1355295 e!1355296)))

(assert (=> d!644008 (= true e!1355295)))

(assert (= b!2126539 b!2126540))

(assert (= (and b!2126538 ((_ is HashMap!2396) (cache!2777 (_2!13673 (fillUpCache!10 (_2!13668 (_1!13669 lt!795672)) totalInput!886 lt!795670 (_1!13668 (_1!13669 lt!795672)) 0 cacheFurthestNullable!130))))) b!2126539))

(assert (= d!644008 b!2126538))

(declare-fun setIsEmpty!15430 () Bool)

(declare-fun setRes!15430 () Bool)

(assert (=> setIsEmpty!15430 setRes!15430))

(declare-fun b!2126541 () Bool)

(declare-fun e!1355298 () Bool)

(declare-fun tp!652023 () Bool)

(assert (=> b!2126541 (= e!1355298 tp!652023)))

(declare-fun e!1355302 () Bool)

(declare-fun setRes!15431 () Bool)

(declare-fun mapDefault!12183 () List!23853)

(declare-fun tp!652024 () Bool)

(declare-fun b!2126542 () Bool)

(assert (=> b!2126542 (= e!1355302 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 mapDefault!12183)))) e!1355298 tp_is_empty!9499 setRes!15431 tp!652024))))

(declare-fun condSetEmpty!15431 () Bool)

(assert (=> b!2126542 (= condSetEmpty!15431 (= (_2!13667 (h!29170 mapDefault!12183)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun b!2126543 () Bool)

(declare-fun e!1355303 () Bool)

(declare-fun tp!652026 () Bool)

(assert (=> b!2126543 (= e!1355303 tp!652026)))

(declare-fun b!2126544 () Bool)

(declare-fun tp!652029 () Bool)

(declare-fun e!1355299 () Bool)

(declare-fun mapValue!12183 () List!23853)

(assert (=> b!2126544 (= e!1355299 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 mapValue!12183)))) e!1355303 tp_is_empty!9499 setRes!15430 tp!652029))))

(declare-fun condSetEmpty!15430 () Bool)

(assert (=> b!2126544 (= condSetEmpty!15430 (= (_2!13667 (h!29170 mapValue!12183)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun condMapEmpty!12183 () Bool)

(assert (=> mapNonEmpty!12177 (= condMapEmpty!12183 (= mapRest!12177 ((as const (Array (_ BitVec 32) List!23853)) mapDefault!12183)))))

(declare-fun mapRes!12183 () Bool)

(assert (=> mapNonEmpty!12177 (= tp!651947 (and e!1355302 mapRes!12183))))

(declare-fun b!2126545 () Bool)

(declare-fun e!1355300 () Bool)

(declare-fun tp!652022 () Bool)

(assert (=> b!2126545 (= e!1355300 tp!652022)))

(declare-fun setIsEmpty!15431 () Bool)

(assert (=> setIsEmpty!15431 setRes!15431))

(declare-fun setElem!15430 () Context!2494)

(declare-fun setNonEmpty!15430 () Bool)

(declare-fun tp!652021 () Bool)

(assert (=> setNonEmpty!15430 (= setRes!15430 (and tp!652021 (inv!31365 setElem!15430) e!1355300))))

(declare-fun setRest!15431 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15430 (= (_2!13667 (h!29170 mapValue!12183)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15430 true) setRest!15431))))

(declare-fun b!2126546 () Bool)

(declare-fun e!1355301 () Bool)

(declare-fun tp!652025 () Bool)

(assert (=> b!2126546 (= e!1355301 tp!652025)))

(declare-fun mapNonEmpty!12183 () Bool)

(declare-fun tp!652028 () Bool)

(assert (=> mapNonEmpty!12183 (= mapRes!12183 (and tp!652028 e!1355299))))

(declare-fun mapKey!12183 () (_ BitVec 32))

(declare-fun mapRest!12183 () (Array (_ BitVec 32) List!23853))

(assert (=> mapNonEmpty!12183 (= mapRest!12177 (store mapRest!12183 mapKey!12183 mapValue!12183))))

(declare-fun setNonEmpty!15431 () Bool)

(declare-fun tp!652027 () Bool)

(declare-fun setElem!15431 () Context!2494)

(assert (=> setNonEmpty!15431 (= setRes!15431 (and tp!652027 (inv!31365 setElem!15431) e!1355301))))

(declare-fun setRest!15430 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15431 (= (_2!13667 (h!29170 mapDefault!12183)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15431 true) setRest!15430))))

(declare-fun mapIsEmpty!12183 () Bool)

(assert (=> mapIsEmpty!12183 mapRes!12183))

(assert (= (and mapNonEmpty!12177 condMapEmpty!12183) mapIsEmpty!12183))

(assert (= (and mapNonEmpty!12177 (not condMapEmpty!12183)) mapNonEmpty!12183))

(assert (= b!2126544 b!2126543))

(assert (= (and b!2126544 condSetEmpty!15430) setIsEmpty!15430))

(assert (= (and b!2126544 (not condSetEmpty!15430)) setNonEmpty!15430))

(assert (= setNonEmpty!15430 b!2126545))

(assert (= (and mapNonEmpty!12183 ((_ is Cons!23769) mapValue!12183)) b!2126544))

(assert (= b!2126542 b!2126541))

(assert (= (and b!2126542 condSetEmpty!15431) setIsEmpty!15431))

(assert (= (and b!2126542 (not condSetEmpty!15431)) setNonEmpty!15431))

(assert (= setNonEmpty!15431 b!2126546))

(assert (= (and mapNonEmpty!12177 ((_ is Cons!23769) mapDefault!12183)) b!2126542))

(declare-fun m!2578609 () Bool)

(assert (=> b!2126544 m!2578609))

(declare-fun m!2578611 () Bool)

(assert (=> b!2126542 m!2578611))

(declare-fun m!2578613 () Bool)

(assert (=> setNonEmpty!15431 m!2578613))

(declare-fun m!2578615 () Bool)

(assert (=> mapNonEmpty!12183 m!2578615))

(declare-fun m!2578617 () Bool)

(assert (=> setNonEmpty!15430 m!2578617))

(declare-fun condSetEmpty!15432 () Bool)

(assert (=> setNonEmpty!15350 (= condSetEmpty!15432 (= setRest!15350 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15432 () Bool)

(assert (=> setNonEmpty!15350 setRes!15432))

(declare-fun setIsEmpty!15432 () Bool)

(assert (=> setIsEmpty!15432 setRes!15432))

(declare-fun setNonEmpty!15432 () Bool)

(assert (=> setNonEmpty!15432 (= setRes!15432 true)))

(declare-fun setElem!15432 () Context!2494)

(declare-fun setRest!15432 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15432 (= setRest!15350 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15432 true) setRest!15432))))

(assert (= (and setNonEmpty!15350 condSetEmpty!15432) setIsEmpty!15432))

(assert (= (and setNonEmpty!15350 (not condSetEmpty!15432)) setNonEmpty!15432))

(declare-fun setNonEmpty!15433 () Bool)

(declare-fun setRes!15433 () Bool)

(assert (=> setNonEmpty!15433 (= setRes!15433 true)))

(declare-fun mapDefault!12184 () List!23853)

(declare-fun setElem!15434 () Context!2494)

(declare-fun setRest!15434 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15433 (= (_2!13667 (h!29170 mapDefault!12184)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15434 true) setRest!15434))))

(declare-fun b!2126547 () Bool)

(declare-fun e!1355304 () Bool)

(assert (=> b!2126547 (= e!1355304 setRes!15433)))

(declare-fun condSetEmpty!15434 () Bool)

(assert (=> b!2126547 (= condSetEmpty!15434 (= (_2!13667 (h!29170 mapDefault!12184)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15433 () Bool)

(assert (=> setIsEmpty!15433 setRes!15433))

(declare-fun mapIsEmpty!12184 () Bool)

(declare-fun mapRes!12184 () Bool)

(assert (=> mapIsEmpty!12184 mapRes!12184))

(declare-fun b!2126548 () Bool)

(declare-fun e!1355305 () Bool)

(declare-fun setRes!15434 () Bool)

(assert (=> b!2126548 (= e!1355305 setRes!15434)))

(declare-fun condSetEmpty!15433 () Bool)

(declare-fun mapValue!12184 () List!23853)

(assert (=> b!2126548 (= condSetEmpty!15433 (= (_2!13667 (h!29170 mapValue!12184)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15434 () Bool)

(assert (=> setIsEmpty!15434 setRes!15434))

(declare-fun condMapEmpty!12184 () Bool)

(assert (=> mapNonEmpty!12180 (= condMapEmpty!12184 (= mapRest!12180 ((as const (Array (_ BitVec 32) List!23853)) mapDefault!12184)))))

(assert (=> mapNonEmpty!12180 (and e!1355304 mapRes!12184)))

(declare-fun setNonEmpty!15434 () Bool)

(assert (=> setNonEmpty!15434 (= setRes!15434 true)))

(declare-fun setElem!15433 () Context!2494)

(declare-fun setRest!15433 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15434 (= (_2!13667 (h!29170 mapValue!12184)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15433 true) setRest!15433))))

(declare-fun mapNonEmpty!12184 () Bool)

(assert (=> mapNonEmpty!12184 (= mapRes!12184 e!1355305)))

(declare-fun mapKey!12184 () (_ BitVec 32))

(declare-fun mapRest!12184 () (Array (_ BitVec 32) List!23853))

(assert (=> mapNonEmpty!12184 (= mapRest!12180 (store mapRest!12184 mapKey!12184 mapValue!12184))))

(assert (= (and mapNonEmpty!12180 condMapEmpty!12184) mapIsEmpty!12184))

(assert (= (and mapNonEmpty!12180 (not condMapEmpty!12184)) mapNonEmpty!12184))

(assert (= (and b!2126548 condSetEmpty!15433) setIsEmpty!15434))

(assert (= (and b!2126548 (not condSetEmpty!15433)) setNonEmpty!15434))

(assert (= (and mapNonEmpty!12184 ((_ is Cons!23769) mapValue!12184)) b!2126548))

(assert (= (and b!2126547 condSetEmpty!15434) setIsEmpty!15433))

(assert (= (and b!2126547 (not condSetEmpty!15434)) setNonEmpty!15433))

(assert (= (and mapNonEmpty!12180 ((_ is Cons!23769) mapDefault!12184)) b!2126547))

(declare-fun m!2578619 () Bool)

(assert (=> mapNonEmpty!12184 m!2578619))

(declare-fun setNonEmpty!15435 () Bool)

(declare-fun setRes!15435 () Bool)

(assert (=> setNonEmpty!15435 (= setRes!15435 true)))

(declare-fun mapDefault!12185 () List!23853)

(declare-fun setElem!15436 () Context!2494)

(declare-fun setRest!15436 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15435 (= (_2!13667 (h!29170 mapDefault!12185)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15436 true) setRest!15436))))

(declare-fun b!2126549 () Bool)

(declare-fun e!1355306 () Bool)

(assert (=> b!2126549 (= e!1355306 setRes!15435)))

(declare-fun condSetEmpty!15436 () Bool)

(assert (=> b!2126549 (= condSetEmpty!15436 (= (_2!13667 (h!29170 mapDefault!12185)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15435 () Bool)

(assert (=> setIsEmpty!15435 setRes!15435))

(declare-fun mapIsEmpty!12185 () Bool)

(declare-fun mapRes!12185 () Bool)

(assert (=> mapIsEmpty!12185 mapRes!12185))

(declare-fun b!2126550 () Bool)

(declare-fun e!1355307 () Bool)

(declare-fun setRes!15436 () Bool)

(assert (=> b!2126550 (= e!1355307 setRes!15436)))

(declare-fun condSetEmpty!15435 () Bool)

(declare-fun mapValue!12185 () List!23853)

(assert (=> b!2126550 (= condSetEmpty!15435 (= (_2!13667 (h!29170 mapValue!12185)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15436 () Bool)

(assert (=> setIsEmpty!15436 setRes!15436))

(declare-fun condMapEmpty!12185 () Bool)

(assert (=> mapNonEmpty!12164 (= condMapEmpty!12185 (= mapRest!12164 ((as const (Array (_ BitVec 32) List!23853)) mapDefault!12185)))))

(assert (=> mapNonEmpty!12164 (and e!1355306 mapRes!12185)))

(declare-fun setNonEmpty!15436 () Bool)

(assert (=> setNonEmpty!15436 (= setRes!15436 true)))

(declare-fun setElem!15435 () Context!2494)

(declare-fun setRest!15435 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15436 (= (_2!13667 (h!29170 mapValue!12185)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15435 true) setRest!15435))))

(declare-fun mapNonEmpty!12185 () Bool)

(assert (=> mapNonEmpty!12185 (= mapRes!12185 e!1355307)))

(declare-fun mapRest!12185 () (Array (_ BitVec 32) List!23853))

(declare-fun mapKey!12185 () (_ BitVec 32))

(assert (=> mapNonEmpty!12185 (= mapRest!12164 (store mapRest!12185 mapKey!12185 mapValue!12185))))

(assert (= (and mapNonEmpty!12164 condMapEmpty!12185) mapIsEmpty!12185))

(assert (= (and mapNonEmpty!12164 (not condMapEmpty!12185)) mapNonEmpty!12185))

(assert (= (and b!2126550 condSetEmpty!15435) setIsEmpty!15436))

(assert (= (and b!2126550 (not condSetEmpty!15435)) setNonEmpty!15436))

(assert (= (and mapNonEmpty!12185 ((_ is Cons!23769) mapValue!12185)) b!2126550))

(assert (= (and b!2126549 condSetEmpty!15436) setIsEmpty!15435))

(assert (= (and b!2126549 (not condSetEmpty!15436)) setNonEmpty!15435))

(assert (= (and mapNonEmpty!12164 ((_ is Cons!23769) mapDefault!12185)) b!2126549))

(declare-fun m!2578621 () Bool)

(assert (=> mapNonEmpty!12185 m!2578621))

(declare-fun b!2126551 () Bool)

(declare-fun e!1355308 () Bool)

(declare-fun setRes!15437 () Bool)

(assert (=> b!2126551 (= e!1355308 setRes!15437)))

(declare-fun condSetEmpty!15437 () Bool)

(assert (=> b!2126551 (= condSetEmpty!15437 (= (_2!13667 (h!29170 mapValue!12165)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15437 () Bool)

(assert (=> setIsEmpty!15437 setRes!15437))

(declare-fun setNonEmpty!15437 () Bool)

(assert (=> setNonEmpty!15437 (= setRes!15437 true)))

(declare-fun setElem!15437 () Context!2494)

(declare-fun setRest!15437 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15437 (= (_2!13667 (h!29170 mapValue!12165)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15437 true) setRest!15437))))

(assert (=> mapNonEmpty!12164 e!1355308))

(assert (= (and b!2126551 condSetEmpty!15437) setIsEmpty!15437))

(assert (= (and b!2126551 (not condSetEmpty!15437)) setNonEmpty!15437))

(assert (= (and mapNonEmpty!12164 ((_ is Cons!23769) mapValue!12165)) b!2126551))

(declare-fun b!2126556 () Bool)

(declare-fun e!1355311 () Bool)

(declare-fun tp!652032 () Bool)

(assert (=> b!2126556 (= e!1355311 (and tp_is_empty!9499 tp!652032))))

(assert (=> b!2126093 (= tp!651971 e!1355311)))

(assert (= (and b!2126093 ((_ is Cons!23771) (innerList!7875 (xs!10757 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))))) b!2126556))

(declare-fun setIsEmpty!15438 () Bool)

(declare-fun setRes!15438 () Bool)

(assert (=> setIsEmpty!15438 setRes!15438))

(declare-fun b!2126558 () Bool)

(declare-fun e!1355313 () Bool)

(declare-fun tp!652033 () Bool)

(assert (=> b!2126558 (= e!1355313 tp!652033)))

(declare-fun e!1355312 () Bool)

(assert (=> b!2126060 (= tp!651954 e!1355312)))

(declare-fun b!2126557 () Bool)

(declare-fun tp!652034 () Bool)

(assert (=> b!2126557 (= e!1355312 (and setRes!15438 tp!652034))))

(declare-fun condSetEmpty!15438 () Bool)

(assert (=> b!2126557 (= condSetEmpty!15438 (= (_1!13670 (_1!13671 (h!29174 (t!196381 (zeroValue!2740 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130)))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun tp!652035 () Bool)

(declare-fun setNonEmpty!15438 () Bool)

(declare-fun setElem!15438 () Context!2494)

(assert (=> setNonEmpty!15438 (= setRes!15438 (and tp!652035 (inv!31365 setElem!15438) e!1355313))))

(declare-fun setRest!15438 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15438 (= (_1!13670 (_1!13671 (h!29174 (t!196381 (zeroValue!2740 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130)))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15438 true) setRest!15438))))

(assert (= (and b!2126557 condSetEmpty!15438) setIsEmpty!15438))

(assert (= (and b!2126557 (not condSetEmpty!15438)) setNonEmpty!15438))

(assert (= setNonEmpty!15438 b!2126558))

(assert (= (and b!2126060 ((_ is Cons!23773) (t!196381 (zeroValue!2740 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))))) b!2126557))

(declare-fun m!2578623 () Bool)

(assert (=> setNonEmpty!15438 m!2578623))

(declare-fun e!1355316 () Bool)

(assert (=> b!2126102 (= tp!651980 e!1355316)))

(declare-fun b!2126572 () Bool)

(declare-fun tp!652048 () Bool)

(declare-fun tp!652050 () Bool)

(assert (=> b!2126572 (= e!1355316 (and tp!652048 tp!652050))))

(declare-fun b!2126569 () Bool)

(assert (=> b!2126569 (= e!1355316 tp_is_empty!9499)))

(declare-fun b!2126570 () Bool)

(declare-fun tp!652047 () Bool)

(declare-fun tp!652046 () Bool)

(assert (=> b!2126570 (= e!1355316 (and tp!652047 tp!652046))))

(declare-fun b!2126571 () Bool)

(declare-fun tp!652049 () Bool)

(assert (=> b!2126571 (= e!1355316 tp!652049)))

(assert (= (and b!2126102 ((_ is ElementMatch!5677) (h!29169 (exprs!1747 setElem!15342)))) b!2126569))

(assert (= (and b!2126102 ((_ is Concat!9979) (h!29169 (exprs!1747 setElem!15342)))) b!2126570))

(assert (= (and b!2126102 ((_ is Star!5677) (h!29169 (exprs!1747 setElem!15342)))) b!2126571))

(assert (= (and b!2126102 ((_ is Union!5677) (h!29169 (exprs!1747 setElem!15342)))) b!2126572))

(declare-fun b!2126573 () Bool)

(declare-fun e!1355317 () Bool)

(declare-fun tp!652051 () Bool)

(declare-fun tp!652052 () Bool)

(assert (=> b!2126573 (= e!1355317 (and tp!652051 tp!652052))))

(assert (=> b!2126102 (= tp!651981 e!1355317)))

(assert (= (and b!2126102 ((_ is Cons!23768) (t!196376 (exprs!1747 setElem!15342)))) b!2126573))

(declare-fun condSetEmpty!15439 () Bool)

(assert (=> setNonEmpty!15369 (= condSetEmpty!15439 (= setRest!15369 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15439 () Bool)

(assert (=> setNonEmpty!15369 (= tp!651881 setRes!15439)))

(declare-fun setIsEmpty!15439 () Bool)

(assert (=> setIsEmpty!15439 setRes!15439))

(declare-fun setNonEmpty!15439 () Bool)

(declare-fun setElem!15439 () Context!2494)

(declare-fun e!1355318 () Bool)

(declare-fun tp!652053 () Bool)

(assert (=> setNonEmpty!15439 (= setRes!15439 (and tp!652053 (inv!31365 setElem!15439) e!1355318))))

(declare-fun setRest!15439 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15439 (= setRest!15369 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15439 true) setRest!15439))))

(declare-fun b!2126574 () Bool)

(declare-fun tp!652054 () Bool)

(assert (=> b!2126574 (= e!1355318 tp!652054)))

(assert (= (and setNonEmpty!15369 condSetEmpty!15439) setIsEmpty!15439))

(assert (= (and setNonEmpty!15369 (not condSetEmpty!15439)) setNonEmpty!15439))

(assert (= setNonEmpty!15439 b!2126574))

(declare-fun m!2578625 () Bool)

(assert (=> setNonEmpty!15439 m!2578625))

(declare-fun b!2126575 () Bool)

(declare-fun e!1355319 () Bool)

(declare-fun tp!652055 () Bool)

(declare-fun tp!652056 () Bool)

(assert (=> b!2126575 (= e!1355319 (and tp!652055 tp!652056))))

(assert (=> b!2125994 (= tp!651879 e!1355319)))

(assert (= (and b!2125994 ((_ is Cons!23768) (exprs!1747 setElem!15368))) b!2126575))

(declare-fun setIsEmpty!15440 () Bool)

(declare-fun setRes!15440 () Bool)

(assert (=> setIsEmpty!15440 setRes!15440))

(declare-fun b!2126577 () Bool)

(declare-fun e!1355321 () Bool)

(declare-fun tp!652057 () Bool)

(assert (=> b!2126577 (= e!1355321 tp!652057)))

(declare-fun e!1355320 () Bool)

(assert (=> b!2125959 (= tp!651834 e!1355320)))

(declare-fun b!2126576 () Bool)

(declare-fun tp!652058 () Bool)

(assert (=> b!2126576 (= e!1355320 (and setRes!15440 tp!652058))))

(declare-fun condSetEmpty!15440 () Bool)

(assert (=> b!2126576 (= condSetEmpty!15440 (= (_1!13670 (_1!13671 (h!29174 (t!196381 mapDefault!12168)))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setNonEmpty!15440 () Bool)

(declare-fun setElem!15440 () Context!2494)

(declare-fun tp!652059 () Bool)

(assert (=> setNonEmpty!15440 (= setRes!15440 (and tp!652059 (inv!31365 setElem!15440) e!1355321))))

(declare-fun setRest!15440 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15440 (= (_1!13670 (_1!13671 (h!29174 (t!196381 mapDefault!12168)))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15440 true) setRest!15440))))

(assert (= (and b!2126576 condSetEmpty!15440) setIsEmpty!15440))

(assert (= (and b!2126576 (not condSetEmpty!15440)) setNonEmpty!15440))

(assert (= setNonEmpty!15440 b!2126577))

(assert (= (and b!2125959 ((_ is Cons!23773) (t!196381 mapDefault!12168))) b!2126576))

(declare-fun m!2578627 () Bool)

(assert (=> setNonEmpty!15440 m!2578627))

(declare-fun condSetEmpty!15441 () Bool)

(assert (=> setNonEmpty!15360 (= condSetEmpty!15441 (= setRest!15360 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15441 () Bool)

(assert (=> setNonEmpty!15360 setRes!15441))

(declare-fun setIsEmpty!15441 () Bool)

(assert (=> setIsEmpty!15441 setRes!15441))

(declare-fun setNonEmpty!15441 () Bool)

(assert (=> setNonEmpty!15441 (= setRes!15441 true)))

(declare-fun setElem!15441 () Context!2494)

(declare-fun setRest!15441 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15441 (= setRest!15360 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15441 true) setRest!15441))))

(assert (= (and setNonEmpty!15360 condSetEmpty!15441) setIsEmpty!15441))

(assert (= (and setNonEmpty!15360 (not condSetEmpty!15441)) setNonEmpty!15441))

(declare-fun b!2126578 () Bool)

(declare-fun e!1355322 () Bool)

(declare-fun e!1355323 () Bool)

(assert (=> b!2126578 (= e!1355322 e!1355323)))

(declare-fun b!2126579 () Bool)

(declare-fun setRes!15442 () Bool)

(assert (=> b!2126579 (= e!1355323 setRes!15442)))

(declare-fun condSetEmpty!15442 () Bool)

(assert (=> b!2126579 (= condSetEmpty!15442 (= (z!5752 (h!29173 (t!196380 (_2!13668 (_1!13669 lt!795733))))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2125914 e!1355322))

(declare-fun setIsEmpty!15442 () Bool)

(assert (=> setIsEmpty!15442 setRes!15442))

(declare-fun setNonEmpty!15442 () Bool)

(assert (=> setNonEmpty!15442 (= setRes!15442 true)))

(declare-fun setElem!15442 () Context!2494)

(declare-fun setRest!15442 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15442 (= (z!5752 (h!29173 (t!196380 (_2!13668 (_1!13669 lt!795733))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15442 true) setRest!15442))))

(assert (= (and b!2126579 condSetEmpty!15442) setIsEmpty!15442))

(assert (= (and b!2126579 (not condSetEmpty!15442)) setNonEmpty!15442))

(assert (= b!2126578 b!2126579))

(assert (= (and b!2125914 ((_ is Cons!23772) (t!196380 (_2!13668 (_1!13669 lt!795733))))) b!2126578))

(declare-fun condSetEmpty!15443 () Bool)

(assert (=> setNonEmpty!15396 (= condSetEmpty!15443 (= setRest!15396 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15443 () Bool)

(assert (=> setNonEmpty!15396 (= tp!651958 setRes!15443)))

(declare-fun setIsEmpty!15443 () Bool)

(assert (=> setIsEmpty!15443 setRes!15443))

(declare-fun setElem!15443 () Context!2494)

(declare-fun tp!652060 () Bool)

(declare-fun e!1355324 () Bool)

(declare-fun setNonEmpty!15443 () Bool)

(assert (=> setNonEmpty!15443 (= setRes!15443 (and tp!652060 (inv!31365 setElem!15443) e!1355324))))

(declare-fun setRest!15443 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15443 (= setRest!15396 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15443 true) setRest!15443))))

(declare-fun b!2126580 () Bool)

(declare-fun tp!652061 () Bool)

(assert (=> b!2126580 (= e!1355324 tp!652061)))

(assert (= (and setNonEmpty!15396 condSetEmpty!15443) setIsEmpty!15443))

(assert (= (and setNonEmpty!15396 (not condSetEmpty!15443)) setNonEmpty!15443))

(assert (= setNonEmpty!15443 b!2126580))

(declare-fun m!2578629 () Bool)

(assert (=> setNonEmpty!15443 m!2578629))

(declare-fun tp!652062 () Bool)

(declare-fun e!1355325 () Bool)

(declare-fun tp!652064 () Bool)

(declare-fun b!2126581 () Bool)

(assert (=> b!2126581 (= e!1355325 (and (inv!31366 (left!18378 (left!18378 (c!339969 input!5507)))) tp!652064 (inv!31366 (right!18708 (left!18378 (c!339969 input!5507)))) tp!652062))))

(declare-fun b!2126583 () Bool)

(declare-fun e!1355326 () Bool)

(declare-fun tp!652063 () Bool)

(assert (=> b!2126583 (= e!1355326 tp!652063)))

(declare-fun b!2126582 () Bool)

(assert (=> b!2126582 (= e!1355325 (and (inv!31373 (xs!10757 (left!18378 (c!339969 input!5507)))) e!1355326))))

(assert (=> b!2125937 (= tp!651814 (and (inv!31366 (left!18378 (c!339969 input!5507))) e!1355325))))

(assert (= (and b!2125937 ((_ is Node!7815) (left!18378 (c!339969 input!5507)))) b!2126581))

(assert (= b!2126582 b!2126583))

(assert (= (and b!2125937 ((_ is Leaf!11421) (left!18378 (c!339969 input!5507)))) b!2126582))

(declare-fun m!2578631 () Bool)

(assert (=> b!2126581 m!2578631))

(declare-fun m!2578633 () Bool)

(assert (=> b!2126581 m!2578633))

(declare-fun m!2578635 () Bool)

(assert (=> b!2126582 m!2578635))

(assert (=> b!2125937 m!2578012))

(declare-fun b!2126584 () Bool)

(declare-fun e!1355327 () Bool)

(declare-fun tp!652067 () Bool)

(declare-fun tp!652065 () Bool)

(assert (=> b!2126584 (= e!1355327 (and (inv!31366 (left!18378 (right!18708 (c!339969 input!5507)))) tp!652067 (inv!31366 (right!18708 (right!18708 (c!339969 input!5507)))) tp!652065))))

(declare-fun b!2126586 () Bool)

(declare-fun e!1355328 () Bool)

(declare-fun tp!652066 () Bool)

(assert (=> b!2126586 (= e!1355328 tp!652066)))

(declare-fun b!2126585 () Bool)

(assert (=> b!2126585 (= e!1355327 (and (inv!31373 (xs!10757 (right!18708 (c!339969 input!5507)))) e!1355328))))

(assert (=> b!2125937 (= tp!651812 (and (inv!31366 (right!18708 (c!339969 input!5507))) e!1355327))))

(assert (= (and b!2125937 ((_ is Node!7815) (right!18708 (c!339969 input!5507)))) b!2126584))

(assert (= b!2126585 b!2126586))

(assert (= (and b!2125937 ((_ is Leaf!11421) (right!18708 (c!339969 input!5507)))) b!2126585))

(declare-fun m!2578637 () Bool)

(assert (=> b!2126584 m!2578637))

(declare-fun m!2578639 () Bool)

(assert (=> b!2126584 m!2578639))

(declare-fun m!2578641 () Bool)

(assert (=> b!2126585 m!2578641))

(assert (=> b!2125937 m!2578014))

(declare-fun b!2126587 () Bool)

(declare-fun e!1355329 () Bool)

(declare-fun tp!652068 () Bool)

(declare-fun tp!652069 () Bool)

(assert (=> b!2126587 (= e!1355329 (and tp!652068 tp!652069))))

(assert (=> b!2126055 (= tp!651941 e!1355329)))

(assert (= (and b!2126055 ((_ is Cons!23768) (exprs!1747 setElem!15392))) b!2126587))

(declare-fun b!2126588 () Bool)

(declare-fun e!1355330 () Bool)

(declare-fun tp!652070 () Bool)

(declare-fun tp!652071 () Bool)

(assert (=> b!2126588 (= e!1355330 (and tp!652070 tp!652071))))

(assert (=> b!2125982 (= tp!651860 e!1355330)))

(assert (= (and b!2125982 ((_ is Cons!23768) (exprs!1747 setElem!15364))) b!2126588))

(declare-fun e!1355331 () Bool)

(assert (=> b!2126019 (= tp!651919 e!1355331)))

(declare-fun b!2126592 () Bool)

(declare-fun tp!652074 () Bool)

(declare-fun tp!652076 () Bool)

(assert (=> b!2126592 (= e!1355331 (and tp!652074 tp!652076))))

(declare-fun b!2126589 () Bool)

(assert (=> b!2126589 (= e!1355331 tp_is_empty!9499)))

(declare-fun b!2126590 () Bool)

(declare-fun tp!652073 () Bool)

(declare-fun tp!652072 () Bool)

(assert (=> b!2126590 (= e!1355331 (and tp!652073 tp!652072))))

(declare-fun b!2126591 () Bool)

(declare-fun tp!652075 () Bool)

(assert (=> b!2126591 (= e!1355331 tp!652075)))

(assert (= (and b!2126019 ((_ is ElementMatch!5677) (_1!13664 (_1!13665 (h!29171 mapValue!12155))))) b!2126589))

(assert (= (and b!2126019 ((_ is Concat!9979) (_1!13664 (_1!13665 (h!29171 mapValue!12155))))) b!2126590))

(assert (= (and b!2126019 ((_ is Star!5677) (_1!13664 (_1!13665 (h!29171 mapValue!12155))))) b!2126591))

(assert (= (and b!2126019 ((_ is Union!5677) (_1!13664 (_1!13665 (h!29171 mapValue!12155))))) b!2126592))

(declare-fun setIsEmpty!15444 () Bool)

(declare-fun setRes!15444 () Bool)

(assert (=> setIsEmpty!15444 setRes!15444))

(declare-fun e!1355334 () Bool)

(declare-fun tp!652079 () Bool)

(declare-fun b!2126593 () Bool)

(declare-fun tp!652081 () Bool)

(declare-fun e!1355332 () Bool)

(assert (=> b!2126593 (= e!1355334 (and tp!652079 (inv!31365 (_2!13664 (_1!13665 (h!29171 (t!196378 mapValue!12155))))) e!1355332 tp_is_empty!9499 setRes!15444 tp!652081))))

(declare-fun condSetEmpty!15444 () Bool)

(assert (=> b!2126593 (= condSetEmpty!15444 (= (_2!13665 (h!29171 (t!196378 mapValue!12155))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2126019 (= tp!651921 e!1355334)))

(declare-fun b!2126594 () Bool)

(declare-fun tp!652080 () Bool)

(assert (=> b!2126594 (= e!1355332 tp!652080)))

(declare-fun e!1355333 () Bool)

(declare-fun setNonEmpty!15444 () Bool)

(declare-fun setElem!15444 () Context!2494)

(declare-fun tp!652078 () Bool)

(assert (=> setNonEmpty!15444 (= setRes!15444 (and tp!652078 (inv!31365 setElem!15444) e!1355333))))

(declare-fun setRest!15444 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15444 (= (_2!13665 (h!29171 (t!196378 mapValue!12155))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15444 true) setRest!15444))))

(declare-fun b!2126595 () Bool)

(declare-fun tp!652077 () Bool)

(assert (=> b!2126595 (= e!1355333 tp!652077)))

(assert (= b!2126593 b!2126594))

(assert (= (and b!2126593 condSetEmpty!15444) setIsEmpty!15444))

(assert (= (and b!2126593 (not condSetEmpty!15444)) setNonEmpty!15444))

(assert (= setNonEmpty!15444 b!2126595))

(assert (= (and b!2126019 ((_ is Cons!23770) (t!196378 mapValue!12155))) b!2126593))

(declare-fun m!2578643 () Bool)

(assert (=> b!2126593 m!2578643))

(declare-fun m!2578645 () Bool)

(assert (=> setNonEmpty!15444 m!2578645))

(declare-fun b!2126596 () Bool)

(declare-fun e!1355335 () Bool)

(declare-fun tp!652082 () Bool)

(declare-fun tp!652083 () Bool)

(assert (=> b!2126596 (= e!1355335 (and tp!652082 tp!652083))))

(assert (=> b!2125979 (= tp!651855 e!1355335)))

(assert (= (and b!2125979 ((_ is Cons!23768) (exprs!1747 setElem!15363))) b!2126596))

(declare-fun b!2126597 () Bool)

(declare-fun e!1355336 () Bool)

(declare-fun setRes!15445 () Bool)

(assert (=> b!2126597 (= e!1355336 setRes!15445)))

(declare-fun condSetEmpty!15445 () Bool)

(assert (=> b!2126597 (= condSetEmpty!15445 (= (_2!13665 (h!29171 (t!196378 mapValue!12174))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15445 () Bool)

(assert (=> setIsEmpty!15445 setRes!15445))

(declare-fun setNonEmpty!15445 () Bool)

(assert (=> setNonEmpty!15445 (= setRes!15445 true)))

(declare-fun setElem!15445 () Context!2494)

(declare-fun setRest!15445 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15445 (= (_2!13665 (h!29171 (t!196378 mapValue!12174))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15445 true) setRest!15445))))

(assert (=> b!2126035 e!1355336))

(assert (= (and b!2126597 condSetEmpty!15445) setIsEmpty!15445))

(assert (= (and b!2126597 (not condSetEmpty!15445)) setNonEmpty!15445))

(assert (= (and b!2126035 ((_ is Cons!23770) (t!196378 mapValue!12174))) b!2126597))

(declare-fun setIsEmpty!15446 () Bool)

(declare-fun setRes!15447 () Bool)

(assert (=> setIsEmpty!15446 setRes!15447))

(declare-fun b!2126598 () Bool)

(declare-fun e!1355337 () Bool)

(declare-fun tp!652085 () Bool)

(assert (=> b!2126598 (= e!1355337 tp!652085)))

(declare-fun b!2126599 () Bool)

(declare-fun e!1355341 () Bool)

(declare-fun tp!652090 () Bool)

(assert (=> b!2126599 (= e!1355341 tp!652090)))

(declare-fun b!2126600 () Bool)

(declare-fun tp!652089 () Bool)

(declare-fun tp!652091 () Bool)

(declare-fun e!1355338 () Bool)

(declare-fun e!1355339 () Bool)

(declare-fun mapValue!12186 () List!23854)

(assert (=> b!2126600 (= e!1355338 (and tp!652089 (inv!31365 (_2!13664 (_1!13665 (h!29171 mapValue!12186)))) e!1355339 tp_is_empty!9499 setRes!15447 tp!652091))))

(declare-fun condSetEmpty!15447 () Bool)

(assert (=> b!2126600 (= condSetEmpty!15447 (= (_2!13665 (h!29171 mapValue!12186)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun condMapEmpty!12186 () Bool)

(declare-fun mapDefault!12186 () List!23854)

(assert (=> mapNonEmpty!12171 (= condMapEmpty!12186 (= mapRest!12171 ((as const (Array (_ BitVec 32) List!23854)) mapDefault!12186)))))

(declare-fun e!1355340 () Bool)

(declare-fun mapRes!12186 () Bool)

(assert (=> mapNonEmpty!12171 (= tp!651915 (and e!1355340 mapRes!12186))))

(declare-fun setNonEmpty!15446 () Bool)

(declare-fun setElem!15446 () Context!2494)

(declare-fun tp!652087 () Bool)

(declare-fun e!1355342 () Bool)

(assert (=> setNonEmpty!15446 (= setRes!15447 (and tp!652087 (inv!31365 setElem!15446) e!1355342))))

(declare-fun setRest!15447 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15446 (= (_2!13665 (h!29171 mapValue!12186)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15446 true) setRest!15447))))

(declare-fun b!2126601 () Bool)

(declare-fun tp!652088 () Bool)

(assert (=> b!2126601 (= e!1355342 tp!652088)))

(declare-fun mapNonEmpty!12186 () Bool)

(declare-fun tp!652093 () Bool)

(assert (=> mapNonEmpty!12186 (= mapRes!12186 (and tp!652093 e!1355338))))

(declare-fun mapKey!12186 () (_ BitVec 32))

(declare-fun mapRest!12186 () (Array (_ BitVec 32) List!23854))

(assert (=> mapNonEmpty!12186 (= mapRest!12171 (store mapRest!12186 mapKey!12186 mapValue!12186))))

(declare-fun mapIsEmpty!12186 () Bool)

(assert (=> mapIsEmpty!12186 mapRes!12186))

(declare-fun setIsEmpty!15447 () Bool)

(declare-fun setRes!15446 () Bool)

(assert (=> setIsEmpty!15447 setRes!15446))

(declare-fun tp!652094 () Bool)

(declare-fun setElem!15447 () Context!2494)

(declare-fun setNonEmpty!15447 () Bool)

(assert (=> setNonEmpty!15447 (= setRes!15446 (and tp!652094 (inv!31365 setElem!15447) e!1355337))))

(declare-fun setRest!15446 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15447 (= (_2!13665 (h!29171 mapDefault!12186)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15447 true) setRest!15446))))

(declare-fun b!2126602 () Bool)

(declare-fun tp!652084 () Bool)

(assert (=> b!2126602 (= e!1355339 tp!652084)))

(declare-fun b!2126603 () Bool)

(declare-fun tp!652092 () Bool)

(declare-fun tp!652086 () Bool)

(assert (=> b!2126603 (= e!1355340 (and tp!652086 (inv!31365 (_2!13664 (_1!13665 (h!29171 mapDefault!12186)))) e!1355341 tp_is_empty!9499 setRes!15446 tp!652092))))

(declare-fun condSetEmpty!15446 () Bool)

(assert (=> b!2126603 (= condSetEmpty!15446 (= (_2!13665 (h!29171 mapDefault!12186)) ((as const (Array Context!2494 Bool)) false)))))

(assert (= (and mapNonEmpty!12171 condMapEmpty!12186) mapIsEmpty!12186))

(assert (= (and mapNonEmpty!12171 (not condMapEmpty!12186)) mapNonEmpty!12186))

(assert (= b!2126600 b!2126602))

(assert (= (and b!2126600 condSetEmpty!15447) setIsEmpty!15446))

(assert (= (and b!2126600 (not condSetEmpty!15447)) setNonEmpty!15446))

(assert (= setNonEmpty!15446 b!2126601))

(assert (= (and mapNonEmpty!12186 ((_ is Cons!23770) mapValue!12186)) b!2126600))

(assert (= b!2126603 b!2126599))

(assert (= (and b!2126603 condSetEmpty!15446) setIsEmpty!15447))

(assert (= (and b!2126603 (not condSetEmpty!15446)) setNonEmpty!15447))

(assert (= setNonEmpty!15447 b!2126598))

(assert (= (and mapNonEmpty!12171 ((_ is Cons!23770) mapDefault!12186)) b!2126603))

(declare-fun m!2578647 () Bool)

(assert (=> b!2126600 m!2578647))

(declare-fun m!2578649 () Bool)

(assert (=> setNonEmpty!15447 m!2578649))

(declare-fun m!2578651 () Bool)

(assert (=> b!2126603 m!2578651))

(declare-fun m!2578653 () Bool)

(assert (=> mapNonEmpty!12186 m!2578653))

(declare-fun m!2578655 () Bool)

(assert (=> setNonEmpty!15446 m!2578655))

(declare-fun b!2126604 () Bool)

(declare-fun e!1355343 () Bool)

(declare-fun tp!652095 () Bool)

(declare-fun tp!652096 () Bool)

(assert (=> b!2126604 (= e!1355343 (and tp!652095 tp!652096))))

(assert (=> b!2126051 (= tp!651942 e!1355343)))

(assert (= (and b!2126051 ((_ is Cons!23768) (exprs!1747 (_1!13666 (_1!13667 (h!29170 mapDefault!12177)))))) b!2126604))

(declare-fun condSetEmpty!15448 () Bool)

(assert (=> setNonEmpty!15349 (= condSetEmpty!15448 (= setRest!15349 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15448 () Bool)

(assert (=> setNonEmpty!15349 setRes!15448))

(declare-fun setIsEmpty!15448 () Bool)

(assert (=> setIsEmpty!15448 setRes!15448))

(declare-fun setNonEmpty!15448 () Bool)

(assert (=> setNonEmpty!15448 (= setRes!15448 true)))

(declare-fun setElem!15448 () Context!2494)

(declare-fun setRest!15448 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15448 (= setRest!15349 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15448 true) setRest!15448))))

(assert (= (and setNonEmpty!15349 condSetEmpty!15448) setIsEmpty!15448))

(assert (= (and setNonEmpty!15349 (not condSetEmpty!15448)) setNonEmpty!15448))

(declare-fun b!2126605 () Bool)

(declare-fun e!1355344 () Bool)

(declare-fun tp!652097 () Bool)

(declare-fun tp!652098 () Bool)

(assert (=> b!2126605 (= e!1355344 (and tp!652097 tp!652098))))

(assert (=> b!2126017 (= tp!651906 e!1355344)))

(assert (= (and b!2126017 ((_ is Cons!23768) (exprs!1747 (_2!13664 (_1!13665 (h!29171 mapValue!12171)))))) b!2126605))

(declare-fun b!2126606 () Bool)

(declare-fun e!1355345 () Bool)

(declare-fun tp!652099 () Bool)

(declare-fun tp!652100 () Bool)

(assert (=> b!2126606 (= e!1355345 (and tp!652099 tp!652100))))

(assert (=> b!2125984 (= tp!651865 e!1355345)))

(assert (= (and b!2125984 ((_ is Cons!23768) (exprs!1747 setElem!15365))) b!2126606))

(declare-fun condSetEmpty!15449 () Bool)

(assert (=> setNonEmpty!15413 (= condSetEmpty!15449 (= setRest!15413 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15449 () Bool)

(assert (=> setNonEmpty!15413 setRes!15449))

(declare-fun setIsEmpty!15449 () Bool)

(assert (=> setIsEmpty!15449 setRes!15449))

(declare-fun setNonEmpty!15449 () Bool)

(assert (=> setNonEmpty!15449 (= setRes!15449 true)))

(declare-fun setElem!15449 () Context!2494)

(declare-fun setRest!15449 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15449 (= setRest!15413 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15449 true) setRest!15449))))

(assert (= (and setNonEmpty!15413 condSetEmpty!15449) setIsEmpty!15449))

(assert (= (and setNonEmpty!15413 (not condSetEmpty!15449)) setNonEmpty!15449))

(declare-fun condSetEmpty!15450 () Bool)

(assert (=> setNonEmpty!15410 (= condSetEmpty!15450 (= setRest!15410 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15450 () Bool)

(assert (=> setNonEmpty!15410 (= tp!651966 setRes!15450)))

(declare-fun setIsEmpty!15450 () Bool)

(assert (=> setIsEmpty!15450 setRes!15450))

(declare-fun e!1355346 () Bool)

(declare-fun setNonEmpty!15450 () Bool)

(declare-fun tp!652101 () Bool)

(declare-fun setElem!15450 () Context!2494)

(assert (=> setNonEmpty!15450 (= setRes!15450 (and tp!652101 (inv!31365 setElem!15450) e!1355346))))

(declare-fun setRest!15450 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15450 (= setRest!15410 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15450 true) setRest!15450))))

(declare-fun b!2126607 () Bool)

(declare-fun tp!652102 () Bool)

(assert (=> b!2126607 (= e!1355346 tp!652102)))

(assert (= (and setNonEmpty!15410 condSetEmpty!15450) setIsEmpty!15450))

(assert (= (and setNonEmpty!15410 (not condSetEmpty!15450)) setNonEmpty!15450))

(assert (= setNonEmpty!15450 b!2126607))

(declare-fun m!2578657 () Bool)

(assert (=> setNonEmpty!15450 m!2578657))

(declare-fun b!2126608 () Bool)

(declare-fun e!1355347 () Bool)

(declare-fun tp!652103 () Bool)

(declare-fun tp!652104 () Bool)

(assert (=> b!2126608 (= e!1355347 (and tp!652103 tp!652104))))

(assert (=> b!2126014 (= tp!651912 e!1355347)))

(assert (= (and b!2126014 ((_ is Cons!23768) (exprs!1747 (_2!13664 (_1!13665 (h!29171 mapDefault!12171)))))) b!2126608))

(declare-fun mapNonEmpty!12187 () Bool)

(declare-fun mapRes!12187 () Bool)

(declare-fun e!1355349 () Bool)

(assert (=> mapNonEmpty!12187 (= mapRes!12187 e!1355349)))

(declare-fun mapKey!12187 () (_ BitVec 32))

(declare-fun mapRest!12187 () (Array (_ BitVec 32) List!23854))

(declare-fun mapValue!12187 () List!23854)

(assert (=> mapNonEmpty!12187 (= mapRest!12165 (store mapRest!12187 mapKey!12187 mapValue!12187))))

(declare-fun b!2126609 () Bool)

(declare-fun e!1355348 () Bool)

(declare-fun setRes!15451 () Bool)

(assert (=> b!2126609 (= e!1355348 setRes!15451)))

(declare-fun condSetEmpty!15451 () Bool)

(declare-fun mapDefault!12187 () List!23854)

(assert (=> b!2126609 (= condSetEmpty!15451 (= (_2!13665 (h!29171 mapDefault!12187)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15451 () Bool)

(declare-fun setRes!15452 () Bool)

(assert (=> setIsEmpty!15451 setRes!15452))

(declare-fun setNonEmpty!15451 () Bool)

(assert (=> setNonEmpty!15451 (= setRes!15451 true)))

(declare-fun setElem!15451 () Context!2494)

(declare-fun setRest!15452 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15451 (= (_2!13665 (h!29171 mapDefault!12187)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15451 true) setRest!15452))))

(declare-fun mapIsEmpty!12187 () Bool)

(assert (=> mapIsEmpty!12187 mapRes!12187))

(declare-fun setNonEmpty!15452 () Bool)

(assert (=> setNonEmpty!15452 (= setRes!15452 true)))

(declare-fun setElem!15452 () Context!2494)

(declare-fun setRest!15451 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15452 (= (_2!13665 (h!29171 mapValue!12187)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15452 true) setRest!15451))))

(declare-fun condMapEmpty!12187 () Bool)

(assert (=> mapNonEmpty!12165 (= condMapEmpty!12187 (= mapRest!12165 ((as const (Array (_ BitVec 32) List!23854)) mapDefault!12187)))))

(assert (=> mapNonEmpty!12165 (and e!1355348 mapRes!12187)))

(declare-fun b!2126610 () Bool)

(assert (=> b!2126610 (= e!1355349 setRes!15452)))

(declare-fun condSetEmpty!15452 () Bool)

(assert (=> b!2126610 (= condSetEmpty!15452 (= (_2!13665 (h!29171 mapValue!12187)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15452 () Bool)

(assert (=> setIsEmpty!15452 setRes!15451))

(assert (= (and mapNonEmpty!12165 condMapEmpty!12187) mapIsEmpty!12187))

(assert (= (and mapNonEmpty!12165 (not condMapEmpty!12187)) mapNonEmpty!12187))

(assert (= (and b!2126610 condSetEmpty!15452) setIsEmpty!15451))

(assert (= (and b!2126610 (not condSetEmpty!15452)) setNonEmpty!15452))

(assert (= (and mapNonEmpty!12187 ((_ is Cons!23770) mapValue!12187)) b!2126610))

(assert (= (and b!2126609 condSetEmpty!15451) setIsEmpty!15452))

(assert (= (and b!2126609 (not condSetEmpty!15451)) setNonEmpty!15451))

(assert (= (and mapNonEmpty!12165 ((_ is Cons!23770) mapDefault!12187)) b!2126609))

(declare-fun m!2578659 () Bool)

(assert (=> mapNonEmpty!12187 m!2578659))

(declare-fun b!2126611 () Bool)

(declare-fun e!1355350 () Bool)

(declare-fun setRes!15453 () Bool)

(assert (=> b!2126611 (= e!1355350 setRes!15453)))

(declare-fun condSetEmpty!15453 () Bool)

(assert (=> b!2126611 (= condSetEmpty!15453 (= (_2!13665 (h!29171 mapValue!12164)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15453 () Bool)

(assert (=> setIsEmpty!15453 setRes!15453))

(declare-fun setNonEmpty!15453 () Bool)

(assert (=> setNonEmpty!15453 (= setRes!15453 true)))

(declare-fun setElem!15453 () Context!2494)

(declare-fun setRest!15453 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15453 (= (_2!13665 (h!29171 mapValue!12164)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15453 true) setRest!15453))))

(assert (=> mapNonEmpty!12165 e!1355350))

(assert (= (and b!2126611 condSetEmpty!15453) setIsEmpty!15453))

(assert (= (and b!2126611 (not condSetEmpty!15453)) setNonEmpty!15453))

(assert (= (and mapNonEmpty!12165 ((_ is Cons!23770) mapValue!12164)) b!2126611))

(declare-fun condSetEmpty!15454 () Bool)

(assert (=> setNonEmpty!15368 (= condSetEmpty!15454 (= setRest!15368 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15454 () Bool)

(assert (=> setNonEmpty!15368 (= tp!651877 setRes!15454)))

(declare-fun setIsEmpty!15454 () Bool)

(assert (=> setIsEmpty!15454 setRes!15454))

(declare-fun tp!652105 () Bool)

(declare-fun setElem!15454 () Context!2494)

(declare-fun setNonEmpty!15454 () Bool)

(declare-fun e!1355351 () Bool)

(assert (=> setNonEmpty!15454 (= setRes!15454 (and tp!652105 (inv!31365 setElem!15454) e!1355351))))

(declare-fun setRest!15454 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15454 (= setRest!15368 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15454 true) setRest!15454))))

(declare-fun b!2126612 () Bool)

(declare-fun tp!652106 () Bool)

(assert (=> b!2126612 (= e!1355351 tp!652106)))

(assert (= (and setNonEmpty!15368 condSetEmpty!15454) setIsEmpty!15454))

(assert (= (and setNonEmpty!15368 (not condSetEmpty!15454)) setNonEmpty!15454))

(assert (= setNonEmpty!15454 b!2126612))

(declare-fun m!2578661 () Bool)

(assert (=> setNonEmpty!15454 m!2578661))

(declare-fun b!2126613 () Bool)

(declare-fun e!1355352 () Bool)

(declare-fun tp!652107 () Bool)

(declare-fun tp!652108 () Bool)

(assert (=> b!2126613 (= e!1355352 (and tp!652107 tp!652108))))

(assert (=> b!2126058 (= tp!651952 e!1355352)))

(assert (= (and b!2126058 ((_ is Cons!23768) (exprs!1747 setElem!15394))) b!2126613))

(declare-fun b!2126614 () Bool)

(declare-fun e!1355353 () Bool)

(declare-fun setRes!15455 () Bool)

(assert (=> b!2126614 (= e!1355353 setRes!15455)))

(declare-fun condSetEmpty!15455 () Bool)

(assert (=> b!2126614 (= condSetEmpty!15455 (= (_2!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795733))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15455 () Bool)

(assert (=> setIsEmpty!15455 setRes!15455))

(declare-fun setNonEmpty!15455 () Bool)

(assert (=> setNonEmpty!15455 (= setRes!15455 true)))

(declare-fun setElem!15455 () Context!2494)

(declare-fun setRest!15455 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15455 (= (_2!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795733))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15455 true) setRest!15455))))

(assert (=> b!2125900 e!1355353))

(assert (= (and b!2126614 condSetEmpty!15455) setIsEmpty!15455))

(assert (= (and b!2126614 (not condSetEmpty!15455)) setNonEmpty!15455))

(assert (= (and b!2125900 ((_ is Cons!23770) (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795733))))))))) b!2126614))

(declare-fun b!2126615 () Bool)

(declare-fun e!1355354 () Bool)

(declare-fun setRes!15456 () Bool)

(assert (=> b!2126615 (= e!1355354 setRes!15456)))

(declare-fun condSetEmpty!15456 () Bool)

(assert (=> b!2126615 (= condSetEmpty!15456 (= (_2!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795733))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15456 () Bool)

(assert (=> setIsEmpty!15456 setRes!15456))

(declare-fun setNonEmpty!15456 () Bool)

(assert (=> setNonEmpty!15456 (= setRes!15456 true)))

(declare-fun setElem!15456 () Context!2494)

(declare-fun setRest!15456 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15456 (= (_2!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795733))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15456 true) setRest!15456))))

(assert (=> b!2125900 e!1355354))

(assert (= (and b!2126615 condSetEmpty!15456) setIsEmpty!15456))

(assert (= (and b!2126615 (not condSetEmpty!15456)) setNonEmpty!15456))

(assert (= (and b!2125900 ((_ is Cons!23770) (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795733))))))))) b!2126615))

(declare-fun b!2126616 () Bool)

(declare-fun e!1355355 () Bool)

(declare-fun tp!652109 () Bool)

(assert (=> b!2126616 (= e!1355355 (and tp_is_empty!9499 tp!652109))))

(assert (=> b!2126097 (= tp!651974 e!1355355)))

(assert (= (and b!2126097 ((_ is Cons!23771) (innerList!7875 (xs!10757 (c!339969 totalInput!886))))) b!2126616))

(declare-fun condSetEmpty!15457 () Bool)

(assert (=> setNonEmpty!15393 (= condSetEmpty!15457 (= setRest!15392 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15457 () Bool)

(assert (=> setNonEmpty!15393 (= tp!651946 setRes!15457)))

(declare-fun setIsEmpty!15457 () Bool)

(assert (=> setIsEmpty!15457 setRes!15457))

(declare-fun setElem!15457 () Context!2494)

(declare-fun setNonEmpty!15457 () Bool)

(declare-fun e!1355356 () Bool)

(declare-fun tp!652110 () Bool)

(assert (=> setNonEmpty!15457 (= setRes!15457 (and tp!652110 (inv!31365 setElem!15457) e!1355356))))

(declare-fun setRest!15457 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15457 (= setRest!15392 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15457 true) setRest!15457))))

(declare-fun b!2126617 () Bool)

(declare-fun tp!652111 () Bool)

(assert (=> b!2126617 (= e!1355356 tp!652111)))

(assert (= (and setNonEmpty!15393 condSetEmpty!15457) setIsEmpty!15457))

(assert (= (and setNonEmpty!15393 (not condSetEmpty!15457)) setNonEmpty!15457))

(assert (= setNonEmpty!15457 b!2126617))

(declare-fun m!2578663 () Bool)

(assert (=> setNonEmpty!15457 m!2578663))

(declare-fun b!2126618 () Bool)

(declare-fun e!1355357 () Bool)

(declare-fun tp!652112 () Bool)

(declare-fun tp!652113 () Bool)

(assert (=> b!2126618 (= e!1355357 (and tp!652112 tp!652113))))

(assert (=> b!2125957 (= tp!651832 e!1355357)))

(assert (= (and b!2125957 ((_ is Cons!23768) (exprs!1747 setElem!15355))) b!2126618))

(declare-fun b!2126619 () Bool)

(declare-fun e!1355358 () Bool)

(declare-fun setRes!15458 () Bool)

(assert (=> b!2126619 (= e!1355358 setRes!15458)))

(declare-fun condSetEmpty!15458 () Bool)

(assert (=> b!2126619 (= condSetEmpty!15458 (= (_2!13665 (h!29171 (t!196378 mapValue!12162))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15458 () Bool)

(assert (=> setIsEmpty!15458 setRes!15458))

(declare-fun setNonEmpty!15458 () Bool)

(assert (=> setNonEmpty!15458 (= setRes!15458 true)))

(declare-fun setElem!15458 () Context!2494)

(declare-fun setRest!15458 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15458 (= (_2!13665 (h!29171 (t!196378 mapValue!12162))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15458 true) setRest!15458))))

(assert (=> b!2126036 e!1355358))

(assert (= (and b!2126619 condSetEmpty!15458) setIsEmpty!15458))

(assert (= (and b!2126619 (not condSetEmpty!15458)) setNonEmpty!15458))

(assert (= (and b!2126036 ((_ is Cons!23770) (t!196378 mapValue!12162))) b!2126619))

(declare-fun setRes!15459 () Bool)

(declare-fun tp!652116 () Bool)

(declare-fun e!1355361 () Bool)

(declare-fun e!1355359 () Bool)

(declare-fun b!2126620 () Bool)

(assert (=> b!2126620 (= e!1355361 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 (t!196377 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))))))) e!1355359 tp_is_empty!9499 setRes!15459 tp!652116))))

(declare-fun condSetEmpty!15459 () Bool)

(assert (=> b!2126620 (= condSetEmpty!15459 (= (_2!13667 (h!29170 (t!196377 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2125996 (= tp!651882 e!1355361)))

(declare-fun setIsEmpty!15459 () Bool)

(assert (=> setIsEmpty!15459 setRes!15459))

(declare-fun b!2126621 () Bool)

(declare-fun e!1355360 () Bool)

(declare-fun tp!652117 () Bool)

(assert (=> b!2126621 (= e!1355360 tp!652117)))

(declare-fun setElem!15459 () Context!2494)

(declare-fun setNonEmpty!15459 () Bool)

(declare-fun tp!652115 () Bool)

(assert (=> setNonEmpty!15459 (= setRes!15459 (and tp!652115 (inv!31365 setElem!15459) e!1355360))))

(declare-fun setRest!15459 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15459 (= (_2!13667 (h!29170 (t!196377 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15459 true) setRest!15459))))

(declare-fun b!2126622 () Bool)

(declare-fun tp!652114 () Bool)

(assert (=> b!2126622 (= e!1355359 tp!652114)))

(assert (= b!2126620 b!2126622))

(assert (= (and b!2126620 condSetEmpty!15459) setIsEmpty!15459))

(assert (= (and b!2126620 (not condSetEmpty!15459)) setNonEmpty!15459))

(assert (= setNonEmpty!15459 b!2126621))

(assert (= (and b!2125996 ((_ is Cons!23769) (t!196377 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))))) b!2126620))

(declare-fun m!2578665 () Bool)

(assert (=> b!2126620 m!2578665))

(declare-fun m!2578667 () Bool)

(assert (=> setNonEmpty!15459 m!2578667))

(declare-fun condSetEmpty!15460 () Bool)

(assert (=> setNonEmpty!15356 (= condSetEmpty!15460 (= setRest!15356 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15460 () Bool)

(assert (=> setNonEmpty!15356 (= tp!651830 setRes!15460)))

(declare-fun setIsEmpty!15460 () Bool)

(assert (=> setIsEmpty!15460 setRes!15460))

(declare-fun tp!652118 () Bool)

(declare-fun setNonEmpty!15460 () Bool)

(declare-fun setElem!15460 () Context!2494)

(declare-fun e!1355362 () Bool)

(assert (=> setNonEmpty!15460 (= setRes!15460 (and tp!652118 (inv!31365 setElem!15460) e!1355362))))

(declare-fun setRest!15460 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15460 (= setRest!15356 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15460 true) setRest!15460))))

(declare-fun b!2126623 () Bool)

(declare-fun tp!652119 () Bool)

(assert (=> b!2126623 (= e!1355362 tp!652119)))

(assert (= (and setNonEmpty!15356 condSetEmpty!15460) setIsEmpty!15460))

(assert (= (and setNonEmpty!15356 (not condSetEmpty!15460)) setNonEmpty!15460))

(assert (= setNonEmpty!15460 b!2126623))

(declare-fun m!2578669 () Bool)

(assert (=> setNonEmpty!15460 m!2578669))

(declare-fun b!2126624 () Bool)

(declare-fun e!1355363 () Bool)

(declare-fun tp!652120 () Bool)

(declare-fun tp!652121 () Bool)

(assert (=> b!2126624 (= e!1355363 (and tp!652120 tp!652121))))

(assert (=> b!2125998 (= tp!651880 e!1355363)))

(assert (= (and b!2125998 ((_ is Cons!23768) (exprs!1747 (_1!13666 (_1!13667 (h!29170 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))))))) b!2126624))

(declare-fun setIsEmpty!15461 () Bool)

(declare-fun setRes!15461 () Bool)

(assert (=> setIsEmpty!15461 setRes!15461))

(declare-fun b!2126626 () Bool)

(declare-fun e!1355365 () Bool)

(declare-fun tp!652122 () Bool)

(assert (=> b!2126626 (= e!1355365 tp!652122)))

(declare-fun e!1355364 () Bool)

(assert (=> b!2125956 (= tp!651829 e!1355364)))

(declare-fun b!2126625 () Bool)

(declare-fun tp!652123 () Bool)

(assert (=> b!2126625 (= e!1355364 (and setRes!15461 tp!652123))))

(declare-fun condSetEmpty!15461 () Bool)

(assert (=> b!2126625 (= condSetEmpty!15461 (= (_1!13670 (_1!13671 (h!29174 (t!196381 mapValue!12168)))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun tp!652124 () Bool)

(declare-fun setElem!15461 () Context!2494)

(declare-fun setNonEmpty!15461 () Bool)

(assert (=> setNonEmpty!15461 (= setRes!15461 (and tp!652124 (inv!31365 setElem!15461) e!1355365))))

(declare-fun setRest!15461 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15461 (= (_1!13670 (_1!13671 (h!29174 (t!196381 mapValue!12168)))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15461 true) setRest!15461))))

(assert (= (and b!2126625 condSetEmpty!15461) setIsEmpty!15461))

(assert (= (and b!2126625 (not condSetEmpty!15461)) setNonEmpty!15461))

(assert (= setNonEmpty!15461 b!2126626))

(assert (= (and b!2125956 ((_ is Cons!23773) (t!196381 mapValue!12168))) b!2126625))

(declare-fun m!2578671 () Bool)

(assert (=> setNonEmpty!15461 m!2578671))

(declare-fun b!2126627 () Bool)

(declare-fun e!1355366 () Bool)

(declare-fun tp!652125 () Bool)

(declare-fun tp!652126 () Bool)

(assert (=> b!2126627 (= e!1355366 (and tp!652125 tp!652126))))

(assert (=> b!2126104 (= tp!651985 e!1355366)))

(assert (= (and b!2126104 ((_ is Cons!23768) (exprs!1747 setElem!15415))) b!2126627))

(declare-fun condSetEmpty!15462 () Bool)

(assert (=> setNonEmpty!15407 (= condSetEmpty!15462 (= setRest!15408 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15462 () Bool)

(assert (=> setNonEmpty!15407 setRes!15462))

(declare-fun setIsEmpty!15462 () Bool)

(assert (=> setIsEmpty!15462 setRes!15462))

(declare-fun setNonEmpty!15462 () Bool)

(assert (=> setNonEmpty!15462 (= setRes!15462 true)))

(declare-fun setElem!15462 () Context!2494)

(declare-fun setRest!15462 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15462 (= setRest!15408 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15462 true) setRest!15462))))

(assert (= (and setNonEmpty!15407 condSetEmpty!15462) setIsEmpty!15462))

(assert (= (and setNonEmpty!15407 (not condSetEmpty!15462)) setNonEmpty!15462))

(declare-fun e!1355367 () Bool)

(assert (=> b!2125977 (= tp!651857 e!1355367)))

(declare-fun b!2126631 () Bool)

(declare-fun tp!652129 () Bool)

(declare-fun tp!652131 () Bool)

(assert (=> b!2126631 (= e!1355367 (and tp!652129 tp!652131))))

(declare-fun b!2126628 () Bool)

(assert (=> b!2126628 (= e!1355367 tp_is_empty!9499)))

(declare-fun b!2126629 () Bool)

(declare-fun tp!652128 () Bool)

(declare-fun tp!652127 () Bool)

(assert (=> b!2126629 (= e!1355367 (and tp!652128 tp!652127))))

(declare-fun b!2126630 () Bool)

(declare-fun tp!652130 () Bool)

(assert (=> b!2126630 (= e!1355367 tp!652130)))

(assert (= (and b!2125977 ((_ is ElementMatch!5677) (_1!13664 (_1!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))))) b!2126628))

(assert (= (and b!2125977 ((_ is Concat!9979) (_1!13664 (_1!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))))) b!2126629))

(assert (= (and b!2125977 ((_ is Star!5677) (_1!13664 (_1!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))))) b!2126630))

(assert (= (and b!2125977 ((_ is Union!5677) (_1!13664 (_1!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))))) b!2126631))

(declare-fun setIsEmpty!15463 () Bool)

(declare-fun setRes!15463 () Bool)

(assert (=> setIsEmpty!15463 setRes!15463))

(declare-fun b!2126632 () Bool)

(declare-fun tp!652134 () Bool)

(declare-fun e!1355368 () Bool)

(declare-fun tp!652136 () Bool)

(declare-fun e!1355370 () Bool)

(assert (=> b!2126632 (= e!1355370 (and tp!652134 (inv!31365 (_2!13664 (_1!13665 (h!29171 (t!196378 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))))) e!1355368 tp_is_empty!9499 setRes!15463 tp!652136))))

(declare-fun condSetEmpty!15463 () Bool)

(assert (=> b!2126632 (= condSetEmpty!15463 (= (_2!13665 (h!29171 (t!196378 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2125977 (= tp!651859 e!1355370)))

(declare-fun b!2126633 () Bool)

(declare-fun tp!652135 () Bool)

(assert (=> b!2126633 (= e!1355368 tp!652135)))

(declare-fun setNonEmpty!15463 () Bool)

(declare-fun setElem!15463 () Context!2494)

(declare-fun e!1355369 () Bool)

(declare-fun tp!652133 () Bool)

(assert (=> setNonEmpty!15463 (= setRes!15463 (and tp!652133 (inv!31365 setElem!15463) e!1355369))))

(declare-fun setRest!15463 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15463 (= (_2!13665 (h!29171 (t!196378 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15463 true) setRest!15463))))

(declare-fun b!2126634 () Bool)

(declare-fun tp!652132 () Bool)

(assert (=> b!2126634 (= e!1355369 tp!652132)))

(assert (= b!2126632 b!2126633))

(assert (= (and b!2126632 condSetEmpty!15463) setIsEmpty!15463))

(assert (= (and b!2126632 (not condSetEmpty!15463)) setNonEmpty!15463))

(assert (= setNonEmpty!15463 b!2126634))

(assert (= (and b!2125977 ((_ is Cons!23770) (t!196378 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))) b!2126632))

(declare-fun m!2578673 () Bool)

(assert (=> b!2126632 m!2578673))

(declare-fun m!2578675 () Bool)

(assert (=> setNonEmpty!15463 m!2578675))

(declare-fun e!1355371 () Bool)

(assert (=> b!2126018 (= tp!651908 e!1355371)))

(declare-fun b!2126638 () Bool)

(declare-fun tp!652139 () Bool)

(declare-fun tp!652141 () Bool)

(assert (=> b!2126638 (= e!1355371 (and tp!652139 tp!652141))))

(declare-fun b!2126635 () Bool)

(assert (=> b!2126635 (= e!1355371 tp_is_empty!9499)))

(declare-fun b!2126636 () Bool)

(declare-fun tp!652138 () Bool)

(declare-fun tp!652137 () Bool)

(assert (=> b!2126636 (= e!1355371 (and tp!652138 tp!652137))))

(declare-fun b!2126637 () Bool)

(declare-fun tp!652140 () Bool)

(assert (=> b!2126637 (= e!1355371 tp!652140)))

(assert (= (and b!2126018 ((_ is ElementMatch!5677) (_1!13664 (_1!13665 (h!29171 mapDefault!12171))))) b!2126635))

(assert (= (and b!2126018 ((_ is Concat!9979) (_1!13664 (_1!13665 (h!29171 mapDefault!12171))))) b!2126636))

(assert (= (and b!2126018 ((_ is Star!5677) (_1!13664 (_1!13665 (h!29171 mapDefault!12171))))) b!2126637))

(assert (= (and b!2126018 ((_ is Union!5677) (_1!13664 (_1!13665 (h!29171 mapDefault!12171))))) b!2126638))

(declare-fun setIsEmpty!15464 () Bool)

(declare-fun setRes!15464 () Bool)

(assert (=> setIsEmpty!15464 setRes!15464))

(declare-fun b!2126639 () Bool)

(declare-fun e!1355372 () Bool)

(declare-fun e!1355374 () Bool)

(declare-fun tp!652144 () Bool)

(declare-fun tp!652146 () Bool)

(assert (=> b!2126639 (= e!1355374 (and tp!652144 (inv!31365 (_2!13664 (_1!13665 (h!29171 (t!196378 mapDefault!12171))))) e!1355372 tp_is_empty!9499 setRes!15464 tp!652146))))

(declare-fun condSetEmpty!15464 () Bool)

(assert (=> b!2126639 (= condSetEmpty!15464 (= (_2!13665 (h!29171 (t!196378 mapDefault!12171))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2126018 (= tp!651914 e!1355374)))

(declare-fun b!2126640 () Bool)

(declare-fun tp!652145 () Bool)

(assert (=> b!2126640 (= e!1355372 tp!652145)))

(declare-fun tp!652143 () Bool)

(declare-fun setNonEmpty!15464 () Bool)

(declare-fun e!1355373 () Bool)

(declare-fun setElem!15464 () Context!2494)

(assert (=> setNonEmpty!15464 (= setRes!15464 (and tp!652143 (inv!31365 setElem!15464) e!1355373))))

(declare-fun setRest!15464 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15464 (= (_2!13665 (h!29171 (t!196378 mapDefault!12171))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15464 true) setRest!15464))))

(declare-fun b!2126641 () Bool)

(declare-fun tp!652142 () Bool)

(assert (=> b!2126641 (= e!1355373 tp!652142)))

(assert (= b!2126639 b!2126640))

(assert (= (and b!2126639 condSetEmpty!15464) setIsEmpty!15464))

(assert (= (and b!2126639 (not condSetEmpty!15464)) setNonEmpty!15464))

(assert (= setNonEmpty!15464 b!2126641))

(assert (= (and b!2126018 ((_ is Cons!23770) (t!196378 mapDefault!12171))) b!2126639))

(declare-fun m!2578677 () Bool)

(assert (=> b!2126639 m!2578677))

(declare-fun m!2578679 () Bool)

(assert (=> setNonEmpty!15464 m!2578679))

(declare-fun b!2126642 () Bool)

(declare-fun e!1355375 () Bool)

(declare-fun setRes!15465 () Bool)

(assert (=> b!2126642 (= e!1355375 setRes!15465)))

(declare-fun condSetEmpty!15465 () Bool)

(assert (=> b!2126642 (= condSetEmpty!15465 (= (_2!13667 (h!29170 (t!196377 mapValue!12180))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15465 () Bool)

(assert (=> setIsEmpty!15465 setRes!15465))

(declare-fun setNonEmpty!15465 () Bool)

(assert (=> setNonEmpty!15465 (= setRes!15465 true)))

(declare-fun setElem!15465 () Context!2494)

(declare-fun setRest!15465 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15465 (= (_2!13667 (h!29170 (t!196377 mapValue!12180))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15465 true) setRest!15465))))

(assert (=> b!2126084 e!1355375))

(assert (= (and b!2126642 condSetEmpty!15465) setIsEmpty!15465))

(assert (= (and b!2126642 (not condSetEmpty!15465)) setNonEmpty!15465))

(assert (= (and b!2126084 ((_ is Cons!23769) (t!196377 mapValue!12180))) b!2126642))

(declare-fun b!2126643 () Bool)

(declare-fun e!1355376 () Bool)

(declare-fun setRes!15466 () Bool)

(assert (=> b!2126643 (= e!1355376 setRes!15466)))

(declare-fun condSetEmpty!15466 () Bool)

(assert (=> b!2126643 (= condSetEmpty!15466 (= (_2!13665 (h!29171 (t!196378 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672)))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15466 () Bool)

(assert (=> setIsEmpty!15466 setRes!15466))

(declare-fun setNonEmpty!15466 () Bool)

(assert (=> setNonEmpty!15466 (= setRes!15466 true)))

(declare-fun setElem!15466 () Context!2494)

(declare-fun setRest!15466 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15466 (= (_2!13665 (h!29171 (t!196378 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672)))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15466 true) setRest!15466))))

(assert (=> b!2126027 e!1355376))

(assert (= (and b!2126643 condSetEmpty!15466) setIsEmpty!15466))

(assert (= (and b!2126643 (not condSetEmpty!15466)) setNonEmpty!15466))

(assert (= (and b!2126027 ((_ is Cons!23770) (t!196378 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672)))))))))) b!2126643))

(declare-fun b!2126644 () Bool)

(declare-fun e!1355377 () Bool)

(declare-fun tp!652147 () Bool)

(declare-fun tp!652148 () Bool)

(assert (=> b!2126644 (= e!1355377 (and tp!652147 tp!652148))))

(assert (=> b!2126020 (= tp!651920 e!1355377)))

(assert (= (and b!2126020 ((_ is Cons!23768) (exprs!1747 (_2!13664 (_1!13665 (h!29171 mapValue!12155)))))) b!2126644))

(declare-fun b!2126645 () Bool)

(declare-fun e!1355378 () Bool)

(declare-fun tp!652149 () Bool)

(declare-fun tp!652150 () Bool)

(assert (=> b!2126645 (= e!1355378 (and tp!652149 tp!652150))))

(assert (=> b!2126063 (= tp!651956 e!1355378)))

(assert (= (and b!2126063 ((_ is Cons!23768) (exprs!1747 setElem!15396))) b!2126645))

(declare-fun condSetEmpty!15467 () Bool)

(assert (=> setNonEmpty!15359 (= condSetEmpty!15467 (= setRest!15359 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15467 () Bool)

(assert (=> setNonEmpty!15359 (= tp!651844 setRes!15467)))

(declare-fun setIsEmpty!15467 () Bool)

(assert (=> setIsEmpty!15467 setRes!15467))

(declare-fun e!1355379 () Bool)

(declare-fun setNonEmpty!15467 () Bool)

(declare-fun tp!652151 () Bool)

(declare-fun setElem!15467 () Context!2494)

(assert (=> setNonEmpty!15467 (= setRes!15467 (and tp!652151 (inv!31365 setElem!15467) e!1355379))))

(declare-fun setRest!15467 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15467 (= setRest!15359 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15467 true) setRest!15467))))

(declare-fun b!2126646 () Bool)

(declare-fun tp!652152 () Bool)

(assert (=> b!2126646 (= e!1355379 tp!652152)))

(assert (= (and setNonEmpty!15359 condSetEmpty!15467) setIsEmpty!15467))

(assert (= (and setNonEmpty!15359 (not condSetEmpty!15467)) setNonEmpty!15467))

(assert (= setNonEmpty!15467 b!2126646))

(declare-fun m!2578681 () Bool)

(assert (=> setNonEmpty!15467 m!2578681))

(declare-fun condSetEmpty!15468 () Bool)

(assert (=> setNonEmpty!15409 (= condSetEmpty!15468 (= setRest!15409 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15468 () Bool)

(assert (=> setNonEmpty!15409 setRes!15468))

(declare-fun setIsEmpty!15468 () Bool)

(assert (=> setIsEmpty!15468 setRes!15468))

(declare-fun setNonEmpty!15468 () Bool)

(assert (=> setNonEmpty!15468 (= setRes!15468 true)))

(declare-fun setElem!15468 () Context!2494)

(declare-fun setRest!15468 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15468 (= setRest!15409 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15468 true) setRest!15468))))

(assert (= (and setNonEmpty!15409 condSetEmpty!15468) setIsEmpty!15468))

(assert (= (and setNonEmpty!15409 (not condSetEmpty!15468)) setNonEmpty!15468))

(declare-fun setIsEmpty!15469 () Bool)

(declare-fun setRes!15469 () Bool)

(assert (=> setIsEmpty!15469 setRes!15469))

(declare-fun b!2126648 () Bool)

(declare-fun e!1355381 () Bool)

(declare-fun tp!652153 () Bool)

(assert (=> b!2126648 (= e!1355381 tp!652153)))

(declare-fun e!1355380 () Bool)

(assert (=> b!2125983 (= tp!651866 e!1355380)))

(declare-fun b!2126647 () Bool)

(declare-fun tp!652154 () Bool)

(assert (=> b!2126647 (= e!1355380 (and setRes!15469 tp!652154))))

(declare-fun condSetEmpty!15469 () Bool)

(assert (=> b!2126647 (= condSetEmpty!15469 (= (_1!13670 (_1!13671 (h!29174 (t!196381 mapDefault!12155)))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setElem!15469 () Context!2494)

(declare-fun tp!652155 () Bool)

(declare-fun setNonEmpty!15469 () Bool)

(assert (=> setNonEmpty!15469 (= setRes!15469 (and tp!652155 (inv!31365 setElem!15469) e!1355381))))

(declare-fun setRest!15469 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15469 (= (_1!13670 (_1!13671 (h!29174 (t!196381 mapDefault!12155)))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15469 true) setRest!15469))))

(assert (= (and b!2126647 condSetEmpty!15469) setIsEmpty!15469))

(assert (= (and b!2126647 (not condSetEmpty!15469)) setNonEmpty!15469))

(assert (= setNonEmpty!15469 b!2126648))

(assert (= (and b!2125983 ((_ is Cons!23773) (t!196381 mapDefault!12155))) b!2126647))

(declare-fun m!2578683 () Bool)

(assert (=> setNonEmpty!15469 m!2578683))

(declare-fun b!2126649 () Bool)

(declare-fun e!1355382 () Bool)

(declare-fun setRes!15470 () Bool)

(assert (=> b!2126649 (= e!1355382 setRes!15470)))

(declare-fun condSetEmpty!15470 () Bool)

(assert (=> b!2126649 (= condSetEmpty!15470 (= (_2!13665 (h!29171 (t!196378 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672)))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15470 () Bool)

(assert (=> setIsEmpty!15470 setRes!15470))

(declare-fun setNonEmpty!15470 () Bool)

(assert (=> setNonEmpty!15470 (= setRes!15470 true)))

(declare-fun setElem!15470 () Context!2494)

(declare-fun setRest!15470 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15470 (= (_2!13665 (h!29171 (t!196378 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672)))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15470 true) setRest!15470))))

(assert (=> b!2126026 e!1355382))

(assert (= (and b!2126649 condSetEmpty!15470) setIsEmpty!15470))

(assert (= (and b!2126649 (not condSetEmpty!15470)) setNonEmpty!15470))

(assert (= (and b!2126026 ((_ is Cons!23770) (t!196378 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 (_3!1956 lt!795672)))))))))) b!2126649))

(declare-fun condSetEmpty!15471 () Bool)

(assert (=> setNonEmpty!15414 (= condSetEmpty!15471 (= setRest!15414 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15471 () Bool)

(assert (=> setNonEmpty!15414 setRes!15471))

(declare-fun setIsEmpty!15471 () Bool)

(assert (=> setIsEmpty!15471 setRes!15471))

(declare-fun setNonEmpty!15471 () Bool)

(assert (=> setNonEmpty!15471 (= setRes!15471 true)))

(declare-fun setElem!15471 () Context!2494)

(declare-fun setRest!15471 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15471 (= setRest!15414 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15471 true) setRest!15471))))

(assert (= (and setNonEmpty!15414 condSetEmpty!15471) setIsEmpty!15471))

(assert (= (and setNonEmpty!15414 (not condSetEmpty!15471)) setNonEmpty!15471))

(declare-fun e!1355383 () Bool)

(assert (=> b!2125980 (= tp!651862 e!1355383)))

(declare-fun b!2126653 () Bool)

(declare-fun tp!652158 () Bool)

(declare-fun tp!652160 () Bool)

(assert (=> b!2126653 (= e!1355383 (and tp!652158 tp!652160))))

(declare-fun b!2126650 () Bool)

(assert (=> b!2126650 (= e!1355383 tp_is_empty!9499)))

(declare-fun b!2126651 () Bool)

(declare-fun tp!652157 () Bool)

(declare-fun tp!652156 () Bool)

(assert (=> b!2126651 (= e!1355383 (and tp!652157 tp!652156))))

(declare-fun b!2126652 () Bool)

(declare-fun tp!652159 () Bool)

(assert (=> b!2126652 (= e!1355383 tp!652159)))

(assert (= (and b!2125980 ((_ is ElementMatch!5677) (_1!13664 (_1!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))))) b!2126650))

(assert (= (and b!2125980 ((_ is Concat!9979) (_1!13664 (_1!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))))) b!2126651))

(assert (= (and b!2125980 ((_ is Star!5677) (_1!13664 (_1!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))))) b!2126652))

(assert (= (and b!2125980 ((_ is Union!5677) (_1!13664 (_1!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))))) b!2126653))

(declare-fun setIsEmpty!15472 () Bool)

(declare-fun setRes!15472 () Bool)

(assert (=> setIsEmpty!15472 setRes!15472))

(declare-fun tp!652163 () Bool)

(declare-fun tp!652165 () Bool)

(declare-fun e!1355384 () Bool)

(declare-fun e!1355386 () Bool)

(declare-fun b!2126654 () Bool)

(assert (=> b!2126654 (= e!1355386 (and tp!652163 (inv!31365 (_2!13664 (_1!13665 (h!29171 (t!196378 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))))) e!1355384 tp_is_empty!9499 setRes!15472 tp!652165))))

(declare-fun condSetEmpty!15472 () Bool)

(assert (=> b!2126654 (= condSetEmpty!15472 (= (_2!13665 (h!29171 (t!196378 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2125980 (= tp!651864 e!1355386)))

(declare-fun b!2126655 () Bool)

(declare-fun tp!652164 () Bool)

(assert (=> b!2126655 (= e!1355384 tp!652164)))

(declare-fun setElem!15472 () Context!2494)

(declare-fun tp!652162 () Bool)

(declare-fun e!1355385 () Bool)

(declare-fun setNonEmpty!15472 () Bool)

(assert (=> setNonEmpty!15472 (= setRes!15472 (and tp!652162 (inv!31365 setElem!15472) e!1355385))))

(declare-fun setRest!15472 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15472 (= (_2!13665 (h!29171 (t!196378 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15472 true) setRest!15472))))

(declare-fun b!2126656 () Bool)

(declare-fun tp!652161 () Bool)

(assert (=> b!2126656 (= e!1355385 tp!652161)))

(assert (= b!2126654 b!2126655))

(assert (= (and b!2126654 condSetEmpty!15472) setIsEmpty!15472))

(assert (= (and b!2126654 (not condSetEmpty!15472)) setNonEmpty!15472))

(assert (= setNonEmpty!15472 b!2126656))

(assert (= (and b!2125980 ((_ is Cons!23770) (t!196378 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110))))))))) b!2126654))

(declare-fun m!2578685 () Bool)

(assert (=> b!2126654 m!2578685))

(declare-fun m!2578687 () Bool)

(assert (=> setNonEmpty!15472 m!2578687))

(declare-fun e!1355389 () Bool)

(declare-fun tp!652168 () Bool)

(declare-fun setRes!15473 () Bool)

(declare-fun b!2126657 () Bool)

(declare-fun e!1355387 () Bool)

(assert (=> b!2126657 (= e!1355389 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 (t!196377 mapDefault!12177))))) e!1355387 tp_is_empty!9499 setRes!15473 tp!652168))))

(declare-fun condSetEmpty!15473 () Bool)

(assert (=> b!2126657 (= condSetEmpty!15473 (= (_2!13667 (h!29170 (t!196377 mapDefault!12177))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2126052 (= tp!651943 e!1355389)))

(declare-fun setIsEmpty!15473 () Bool)

(assert (=> setIsEmpty!15473 setRes!15473))

(declare-fun b!2126658 () Bool)

(declare-fun e!1355388 () Bool)

(declare-fun tp!652169 () Bool)

(assert (=> b!2126658 (= e!1355388 tp!652169)))

(declare-fun tp!652167 () Bool)

(declare-fun setNonEmpty!15473 () Bool)

(declare-fun setElem!15473 () Context!2494)

(assert (=> setNonEmpty!15473 (= setRes!15473 (and tp!652167 (inv!31365 setElem!15473) e!1355388))))

(declare-fun setRest!15473 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15473 (= (_2!13667 (h!29170 (t!196377 mapDefault!12177))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15473 true) setRest!15473))))

(declare-fun b!2126659 () Bool)

(declare-fun tp!652166 () Bool)

(assert (=> b!2126659 (= e!1355387 tp!652166)))

(assert (= b!2126657 b!2126659))

(assert (= (and b!2126657 condSetEmpty!15473) setIsEmpty!15473))

(assert (= (and b!2126657 (not condSetEmpty!15473)) setNonEmpty!15473))

(assert (= setNonEmpty!15473 b!2126658))

(assert (= (and b!2126052 ((_ is Cons!23769) (t!196377 mapDefault!12177))) b!2126657))

(declare-fun m!2578689 () Bool)

(assert (=> b!2126657 m!2578689))

(declare-fun m!2578691 () Bool)

(assert (=> setNonEmpty!15473 m!2578691))

(declare-fun b!2126660 () Bool)

(declare-fun e!1355390 () Bool)

(declare-fun setRes!15474 () Bool)

(assert (=> b!2126660 (= e!1355390 setRes!15474)))

(declare-fun condSetEmpty!15474 () Bool)

(assert (=> b!2126660 (= condSetEmpty!15474 (= (_2!13665 (h!29171 mapDefault!12165)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15474 () Bool)

(assert (=> setIsEmpty!15474 setRes!15474))

(declare-fun setNonEmpty!15474 () Bool)

(assert (=> setNonEmpty!15474 (= setRes!15474 true)))

(declare-fun setElem!15474 () Context!2494)

(declare-fun setRest!15474 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15474 (= (_2!13665 (h!29171 mapDefault!12165)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15474 true) setRest!15474))))

(assert (=> b!2125911 e!1355390))

(assert (= (and b!2126660 condSetEmpty!15474) setIsEmpty!15474))

(assert (= (and b!2126660 (not condSetEmpty!15474)) setNonEmpty!15474))

(assert (= (and b!2125911 ((_ is Cons!23770) mapDefault!12165)) b!2126660))

(declare-fun condSetEmpty!15475 () Bool)

(assert (=> setNonEmpty!15399 (= condSetEmpty!15475 (= setRest!15399 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15475 () Bool)

(assert (=> setNonEmpty!15399 setRes!15475))

(declare-fun setIsEmpty!15475 () Bool)

(assert (=> setIsEmpty!15475 setRes!15475))

(declare-fun setNonEmpty!15475 () Bool)

(assert (=> setNonEmpty!15475 (= setRes!15475 true)))

(declare-fun setElem!15475 () Context!2494)

(declare-fun setRest!15475 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15475 (= setRest!15399 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15475 true) setRest!15475))))

(assert (= (and setNonEmpty!15399 condSetEmpty!15475) setIsEmpty!15475))

(assert (= (and setNonEmpty!15399 (not condSetEmpty!15475)) setNonEmpty!15475))

(declare-fun condSetEmpty!15476 () Bool)

(assert (=> setNonEmpty!15394 (= condSetEmpty!15476 (= setRest!15394 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15476 () Bool)

(assert (=> setNonEmpty!15394 (= tp!651950 setRes!15476)))

(declare-fun setIsEmpty!15476 () Bool)

(assert (=> setIsEmpty!15476 setRes!15476))

(declare-fun setNonEmpty!15476 () Bool)

(declare-fun setElem!15476 () Context!2494)

(declare-fun tp!652170 () Bool)

(declare-fun e!1355391 () Bool)

(assert (=> setNonEmpty!15476 (= setRes!15476 (and tp!652170 (inv!31365 setElem!15476) e!1355391))))

(declare-fun setRest!15476 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15476 (= setRest!15394 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15476 true) setRest!15476))))

(declare-fun b!2126661 () Bool)

(declare-fun tp!652171 () Bool)

(assert (=> b!2126661 (= e!1355391 tp!652171)))

(assert (= (and setNonEmpty!15394 condSetEmpty!15476) setIsEmpty!15476))

(assert (= (and setNonEmpty!15394 (not condSetEmpty!15476)) setNonEmpty!15476))

(assert (= setNonEmpty!15476 b!2126661))

(declare-fun m!2578693 () Bool)

(assert (=> setNonEmpty!15476 m!2578693))

(declare-fun b!2126662 () Bool)

(declare-fun e!1355392 () Bool)

(declare-fun tp!652172 () Bool)

(declare-fun tp!652173 () Bool)

(assert (=> b!2126662 (= e!1355392 (and tp!652172 tp!652173))))

(assert (=> b!2126088 (= tp!651965 e!1355392)))

(assert (= (and b!2126088 ((_ is Cons!23768) (exprs!1747 setElem!15410))) b!2126662))

(declare-fun b!2126663 () Bool)

(declare-fun e!1355393 () Bool)

(declare-fun tp!652174 () Bool)

(declare-fun tp!652175 () Bool)

(assert (=> b!2126663 (= e!1355393 (and tp!652174 tp!652175))))

(assert (=> b!2125995 (= tp!651876 e!1355393)))

(assert (= (and b!2125995 ((_ is Cons!23768) (exprs!1747 (_1!13666 (_1!13667 (h!29170 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991)))))))))))) b!2126663))

(declare-fun b!2126664 () Bool)

(declare-fun e!1355395 () Bool)

(declare-fun setRes!15477 () Bool)

(declare-fun tp!652176 () Bool)

(assert (=> b!2126664 (= e!1355395 (and setRes!15477 tp!652176))))

(declare-fun condSetEmpty!15478 () Bool)

(declare-fun mapValue!12188 () List!23857)

(assert (=> b!2126664 (= condSetEmpty!15478 (= (_1!13670 (_1!13671 (h!29174 mapValue!12188))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setElem!15478 () Context!2494)

(declare-fun setRes!15478 () Bool)

(declare-fun e!1355397 () Bool)

(declare-fun tp!652178 () Bool)

(declare-fun setNonEmpty!15477 () Bool)

(assert (=> setNonEmpty!15477 (= setRes!15478 (and tp!652178 (inv!31365 setElem!15478) e!1355397))))

(declare-fun mapDefault!12188 () List!23857)

(declare-fun setRest!15477 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15477 (= (_1!13670 (_1!13671 (h!29174 mapDefault!12188))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15478 true) setRest!15477))))

(declare-fun setIsEmpty!15477 () Bool)

(assert (=> setIsEmpty!15477 setRes!15477))

(declare-fun setIsEmpty!15478 () Bool)

(assert (=> setIsEmpty!15478 setRes!15478))

(declare-fun b!2126665 () Bool)

(declare-fun e!1355394 () Bool)

(declare-fun tp!652179 () Bool)

(assert (=> b!2126665 (= e!1355394 tp!652179)))

(declare-fun mapIsEmpty!12188 () Bool)

(declare-fun mapRes!12188 () Bool)

(assert (=> mapIsEmpty!12188 mapRes!12188))

(declare-fun b!2126667 () Bool)

(declare-fun e!1355396 () Bool)

(declare-fun tp!652181 () Bool)

(assert (=> b!2126667 (= e!1355396 (and setRes!15478 tp!652181))))

(declare-fun condSetEmpty!15477 () Bool)

(assert (=> b!2126667 (= condSetEmpty!15477 (= (_1!13670 (_1!13671 (h!29174 mapDefault!12188))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setNonEmpty!15478 () Bool)

(declare-fun setElem!15477 () Context!2494)

(declare-fun tp!652177 () Bool)

(assert (=> setNonEmpty!15478 (= setRes!15477 (and tp!652177 (inv!31365 setElem!15477) e!1355394))))

(declare-fun setRest!15478 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15478 (= (_1!13670 (_1!13671 (h!29174 mapValue!12188))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15477 true) setRest!15478))))

(declare-fun mapNonEmpty!12188 () Bool)

(declare-fun tp!652182 () Bool)

(assert (=> mapNonEmpty!12188 (= mapRes!12188 (and tp!652182 e!1355395))))

(declare-fun mapKey!12188 () (_ BitVec 32))

(declare-fun mapRest!12188 () (Array (_ BitVec 32) List!23857))

(assert (=> mapNonEmpty!12188 (= mapRest!12168 (store mapRest!12188 mapKey!12188 mapValue!12188))))

(declare-fun b!2126666 () Bool)

(declare-fun tp!652180 () Bool)

(assert (=> b!2126666 (= e!1355397 tp!652180)))

(declare-fun condMapEmpty!12188 () Bool)

(assert (=> mapNonEmpty!12168 (= condMapEmpty!12188 (= mapRest!12168 ((as const (Array (_ BitVec 32) List!23857)) mapDefault!12188)))))

(assert (=> mapNonEmpty!12168 (= tp!651835 (and e!1355396 mapRes!12188))))

(assert (= (and mapNonEmpty!12168 condMapEmpty!12188) mapIsEmpty!12188))

(assert (= (and mapNonEmpty!12168 (not condMapEmpty!12188)) mapNonEmpty!12188))

(assert (= (and b!2126664 condSetEmpty!15478) setIsEmpty!15477))

(assert (= (and b!2126664 (not condSetEmpty!15478)) setNonEmpty!15478))

(assert (= setNonEmpty!15478 b!2126665))

(assert (= (and mapNonEmpty!12188 ((_ is Cons!23773) mapValue!12188)) b!2126664))

(assert (= (and b!2126667 condSetEmpty!15477) setIsEmpty!15478))

(assert (= (and b!2126667 (not condSetEmpty!15477)) setNonEmpty!15477))

(assert (= setNonEmpty!15477 b!2126666))

(assert (= (and mapNonEmpty!12168 ((_ is Cons!23773) mapDefault!12188)) b!2126667))

(declare-fun m!2578695 () Bool)

(assert (=> setNonEmpty!15477 m!2578695))

(declare-fun m!2578697 () Bool)

(assert (=> setNonEmpty!15478 m!2578697))

(declare-fun m!2578699 () Bool)

(assert (=> mapNonEmpty!12188 m!2578699))

(declare-fun condSetEmpty!15479 () Bool)

(assert (=> setNonEmpty!15385 (= condSetEmpty!15479 (= setRest!15386 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15479 () Bool)

(assert (=> setNonEmpty!15385 setRes!15479))

(declare-fun setIsEmpty!15479 () Bool)

(assert (=> setIsEmpty!15479 setRes!15479))

(declare-fun setNonEmpty!15479 () Bool)

(assert (=> setNonEmpty!15479 (= setRes!15479 true)))

(declare-fun setElem!15479 () Context!2494)

(declare-fun setRest!15479 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15479 (= setRest!15386 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15479 true) setRest!15479))))

(assert (= (and setNonEmpty!15385 condSetEmpty!15479) setIsEmpty!15479))

(assert (= (and setNonEmpty!15385 (not condSetEmpty!15479)) setNonEmpty!15479))

(declare-fun e!1355398 () Bool)

(assert (=> b!2126015 (= tp!651911 e!1355398)))

(declare-fun b!2126671 () Bool)

(declare-fun tp!652185 () Bool)

(declare-fun tp!652187 () Bool)

(assert (=> b!2126671 (= e!1355398 (and tp!652185 tp!652187))))

(declare-fun b!2126668 () Bool)

(assert (=> b!2126668 (= e!1355398 tp_is_empty!9499)))

(declare-fun b!2126669 () Bool)

(declare-fun tp!652184 () Bool)

(declare-fun tp!652183 () Bool)

(assert (=> b!2126669 (= e!1355398 (and tp!652184 tp!652183))))

(declare-fun b!2126670 () Bool)

(declare-fun tp!652186 () Bool)

(assert (=> b!2126670 (= e!1355398 tp!652186)))

(assert (= (and b!2126015 ((_ is ElementMatch!5677) (_1!13664 (_1!13665 (h!29171 mapValue!12171))))) b!2126668))

(assert (= (and b!2126015 ((_ is Concat!9979) (_1!13664 (_1!13665 (h!29171 mapValue!12171))))) b!2126669))

(assert (= (and b!2126015 ((_ is Star!5677) (_1!13664 (_1!13665 (h!29171 mapValue!12171))))) b!2126670))

(assert (= (and b!2126015 ((_ is Union!5677) (_1!13664 (_1!13665 (h!29171 mapValue!12171))))) b!2126671))

(declare-fun setIsEmpty!15480 () Bool)

(declare-fun setRes!15480 () Bool)

(assert (=> setIsEmpty!15480 setRes!15480))

(declare-fun e!1355401 () Bool)

(declare-fun b!2126672 () Bool)

(declare-fun tp!652192 () Bool)

(declare-fun e!1355399 () Bool)

(declare-fun tp!652190 () Bool)

(assert (=> b!2126672 (= e!1355401 (and tp!652190 (inv!31365 (_2!13664 (_1!13665 (h!29171 (t!196378 mapValue!12171))))) e!1355399 tp_is_empty!9499 setRes!15480 tp!652192))))

(declare-fun condSetEmpty!15480 () Bool)

(assert (=> b!2126672 (= condSetEmpty!15480 (= (_2!13665 (h!29171 (t!196378 mapValue!12171))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2126015 (= tp!651913 e!1355401)))

(declare-fun b!2126673 () Bool)

(declare-fun tp!652191 () Bool)

(assert (=> b!2126673 (= e!1355399 tp!652191)))

(declare-fun tp!652189 () Bool)

(declare-fun e!1355400 () Bool)

(declare-fun setNonEmpty!15480 () Bool)

(declare-fun setElem!15480 () Context!2494)

(assert (=> setNonEmpty!15480 (= setRes!15480 (and tp!652189 (inv!31365 setElem!15480) e!1355400))))

(declare-fun setRest!15480 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15480 (= (_2!13665 (h!29171 (t!196378 mapValue!12171))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15480 true) setRest!15480))))

(declare-fun b!2126674 () Bool)

(declare-fun tp!652188 () Bool)

(assert (=> b!2126674 (= e!1355400 tp!652188)))

(assert (= b!2126672 b!2126673))

(assert (= (and b!2126672 condSetEmpty!15480) setIsEmpty!15480))

(assert (= (and b!2126672 (not condSetEmpty!15480)) setNonEmpty!15480))

(assert (= setNonEmpty!15480 b!2126674))

(assert (= (and b!2126015 ((_ is Cons!23770) (t!196378 mapValue!12171))) b!2126672))

(declare-fun m!2578701 () Bool)

(assert (=> b!2126672 m!2578701))

(declare-fun m!2578703 () Bool)

(assert (=> setNonEmpty!15480 m!2578703))

(declare-fun b!2126675 () Bool)

(declare-fun e!1355404 () Bool)

(declare-fun tp!652195 () Bool)

(declare-fun e!1355402 () Bool)

(declare-fun setRes!15481 () Bool)

(assert (=> b!2126675 (= e!1355404 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 (t!196377 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))))))) e!1355402 tp_is_empty!9499 setRes!15481 tp!652195))))

(declare-fun condSetEmpty!15481 () Bool)

(assert (=> b!2126675 (= condSetEmpty!15481 (= (_2!13667 (h!29170 (t!196377 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2125993 (= tp!651878 e!1355404)))

(declare-fun setIsEmpty!15481 () Bool)

(assert (=> setIsEmpty!15481 setRes!15481))

(declare-fun b!2126676 () Bool)

(declare-fun e!1355403 () Bool)

(declare-fun tp!652196 () Bool)

(assert (=> b!2126676 (= e!1355403 tp!652196)))

(declare-fun setNonEmpty!15481 () Bool)

(declare-fun tp!652194 () Bool)

(declare-fun setElem!15481 () Context!2494)

(assert (=> setNonEmpty!15481 (= setRes!15481 (and tp!652194 (inv!31365 setElem!15481) e!1355403))))

(declare-fun setRest!15481 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15481 (= (_2!13667 (h!29170 (t!196377 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15481 true) setRest!15481))))

(declare-fun b!2126677 () Bool)

(declare-fun tp!652193 () Bool)

(assert (=> b!2126677 (= e!1355402 tp!652193)))

(assert (= b!2126675 b!2126677))

(assert (= (and b!2126675 condSetEmpty!15481) setIsEmpty!15481))

(assert (= (and b!2126675 (not condSetEmpty!15481)) setNonEmpty!15481))

(assert (= setNonEmpty!15481 b!2126676))

(assert (= (and b!2125993 ((_ is Cons!23769) (t!196377 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 cacheUp!991))))))))) b!2126675))

(declare-fun m!2578705 () Bool)

(assert (=> b!2126675 m!2578705))

(declare-fun m!2578707 () Bool)

(assert (=> setNonEmpty!15481 m!2578707))

(declare-fun b!2126678 () Bool)

(declare-fun e!1355405 () Bool)

(declare-fun tp!652197 () Bool)

(declare-fun tp!652198 () Bool)

(assert (=> b!2126678 (= e!1355405 (and tp!652197 tp!652198))))

(assert (=> b!2125958 (= tp!651833 e!1355405)))

(assert (= (and b!2125958 ((_ is Cons!23768) (exprs!1747 setElem!15356))) b!2126678))

(declare-fun b!2126679 () Bool)

(declare-fun e!1355406 () Bool)

(declare-fun setRes!15482 () Bool)

(assert (=> b!2126679 (= e!1355406 setRes!15482)))

(declare-fun condSetEmpty!15482 () Bool)

(assert (=> b!2126679 (= condSetEmpty!15482 (= (_2!13667 (h!29170 (t!196377 mapDefault!12162))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15482 () Bool)

(assert (=> setIsEmpty!15482 setRes!15482))

(declare-fun setNonEmpty!15482 () Bool)

(assert (=> setNonEmpty!15482 (= setRes!15482 true)))

(declare-fun setElem!15482 () Context!2494)

(declare-fun setRest!15482 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15482 (= (_2!13667 (h!29170 (t!196377 mapDefault!12162))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15482 true) setRest!15482))))

(assert (=> b!2125968 e!1355406))

(assert (= (and b!2126679 condSetEmpty!15482) setIsEmpty!15482))

(assert (= (and b!2126679 (not condSetEmpty!15482)) setNonEmpty!15482))

(assert (= (and b!2125968 ((_ is Cons!23769) (t!196377 mapDefault!12162))) b!2126679))

(declare-fun b!2126680 () Bool)

(declare-fun e!1355407 () Bool)

(declare-fun tp!652199 () Bool)

(assert (=> b!2126680 (= e!1355407 (and tp_is_empty!9499 tp!652199))))

(assert (=> b!2125939 (= tp!651813 e!1355407)))

(assert (= (and b!2125939 ((_ is Cons!23771) (innerList!7875 (xs!10757 (c!339969 input!5507))))) b!2126680))

(declare-fun condSetEmpty!15483 () Bool)

(assert (=> setNonEmpty!15395 (= condSetEmpty!15483 (= setRest!15395 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15483 () Bool)

(assert (=> setNonEmpty!15395 (= tp!651955 setRes!15483)))

(declare-fun setIsEmpty!15483 () Bool)

(assert (=> setIsEmpty!15483 setRes!15483))

(declare-fun setNonEmpty!15483 () Bool)

(declare-fun e!1355408 () Bool)

(declare-fun setElem!15483 () Context!2494)

(declare-fun tp!652200 () Bool)

(assert (=> setNonEmpty!15483 (= setRes!15483 (and tp!652200 (inv!31365 setElem!15483) e!1355408))))

(declare-fun setRest!15483 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15483 (= setRest!15395 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15483 true) setRest!15483))))

(declare-fun b!2126681 () Bool)

(declare-fun tp!652201 () Bool)

(assert (=> b!2126681 (= e!1355408 tp!652201)))

(assert (= (and setNonEmpty!15395 condSetEmpty!15483) setIsEmpty!15483))

(assert (= (and setNonEmpty!15395 (not condSetEmpty!15483)) setNonEmpty!15483))

(assert (= setNonEmpty!15483 b!2126681))

(declare-fun m!2578709 () Bool)

(assert (=> setNonEmpty!15483 m!2578709))

(declare-fun b!2126682 () Bool)

(declare-fun e!1355409 () Bool)

(declare-fun setRes!15484 () Bool)

(assert (=> b!2126682 (= e!1355409 setRes!15484)))

(declare-fun condSetEmpty!15484 () Bool)

(assert (=> b!2126682 (= condSetEmpty!15484 (= (_2!13667 (h!29170 (t!196377 mapDefault!12180))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15484 () Bool)

(assert (=> setIsEmpty!15484 setRes!15484))

(declare-fun setNonEmpty!15484 () Bool)

(assert (=> setNonEmpty!15484 (= setRes!15484 true)))

(declare-fun setElem!15484 () Context!2494)

(declare-fun setRest!15484 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15484 (= (_2!13667 (h!29170 (t!196377 mapDefault!12180))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15484 true) setRest!15484))))

(assert (=> b!2126083 e!1355409))

(assert (= (and b!2126682 condSetEmpty!15484) setIsEmpty!15484))

(assert (= (and b!2126682 (not condSetEmpty!15484)) setNonEmpty!15484))

(assert (= (and b!2126083 ((_ is Cons!23769) (t!196377 mapDefault!12180))) b!2126682))

(declare-fun b!2126683 () Bool)

(declare-fun e!1355410 () Bool)

(declare-fun tp!652202 () Bool)

(declare-fun tp!652203 () Bool)

(assert (=> b!2126683 (= e!1355410 (and tp!652202 tp!652203))))

(assert (=> b!2125981 (= tp!651863 e!1355410)))

(assert (= (and b!2125981 ((_ is Cons!23768) (exprs!1747 (_2!13664 (_1!13665 (h!29171 (minValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))))))) b!2126683))

(declare-fun b!2126684 () Bool)

(declare-fun e!1355411 () Bool)

(declare-fun tp!652204 () Bool)

(declare-fun tp!652205 () Bool)

(assert (=> b!2126684 (= e!1355411 (and tp!652204 tp!652205))))

(assert (=> b!2125978 (= tp!651858 e!1355411)))

(assert (= (and b!2125978 ((_ is Cons!23768) (exprs!1747 (_2!13664 (_1!13665 (h!29171 (zeroValue!2738 (v!28298 (underlying!5155 (v!28299 (underlying!5158 (cache!2776 cacheDown!1110)))))))))))) b!2126684))

(declare-fun b!2126685 () Bool)

(declare-fun e!1355412 () Bool)

(declare-fun tp!652206 () Bool)

(declare-fun tp!652207 () Bool)

(assert (=> b!2126685 (= e!1355412 (and tp!652206 tp!652207))))

(assert (=> b!2126053 (= tp!651945 e!1355412)))

(assert (= (and b!2126053 ((_ is Cons!23768) (exprs!1747 (_1!13666 (_1!13667 (h!29170 mapValue!12177)))))) b!2126685))

(declare-fun b!2126686 () Bool)

(declare-fun e!1355413 () Bool)

(declare-fun setRes!15485 () Bool)

(assert (=> b!2126686 (= e!1355413 setRes!15485)))

(declare-fun condSetEmpty!15485 () Bool)

(assert (=> b!2126686 (= condSetEmpty!15485 (= (_2!13667 (h!29170 (t!196377 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672)))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15485 () Bool)

(assert (=> setIsEmpty!15485 setRes!15485))

(declare-fun setNonEmpty!15485 () Bool)

(assert (=> setNonEmpty!15485 (= setRes!15485 true)))

(declare-fun setElem!15485 () Context!2494)

(declare-fun setRest!15485 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15485 (= (_2!13667 (h!29170 (t!196377 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672)))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15485 true) setRest!15485))))

(assert (=> b!2125945 e!1355413))

(assert (= (and b!2126686 condSetEmpty!15485) setIsEmpty!15485))

(assert (= (and b!2126686 (not condSetEmpty!15485)) setNonEmpty!15485))

(assert (= (and b!2125945 ((_ is Cons!23769) (t!196377 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672)))))))))) b!2126686))

(declare-fun condSetEmpty!15486 () Bool)

(assert (=> setNonEmpty!15376 (= condSetEmpty!15486 (= setRest!15376 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15486 () Bool)

(assert (=> setNonEmpty!15376 (= tp!651918 setRes!15486)))

(declare-fun setIsEmpty!15486 () Bool)

(assert (=> setIsEmpty!15486 setRes!15486))

(declare-fun e!1355414 () Bool)

(declare-fun tp!652208 () Bool)

(declare-fun setElem!15486 () Context!2494)

(declare-fun setNonEmpty!15486 () Bool)

(assert (=> setNonEmpty!15486 (= setRes!15486 (and tp!652208 (inv!31365 setElem!15486) e!1355414))))

(declare-fun setRest!15486 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15486 (= setRest!15376 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15486 true) setRest!15486))))

(declare-fun b!2126687 () Bool)

(declare-fun tp!652209 () Bool)

(assert (=> b!2126687 (= e!1355414 tp!652209)))

(assert (= (and setNonEmpty!15376 condSetEmpty!15486) setIsEmpty!15486))

(assert (= (and setNonEmpty!15376 (not condSetEmpty!15486)) setNonEmpty!15486))

(assert (= setNonEmpty!15486 b!2126687))

(declare-fun m!2578711 () Bool)

(assert (=> setNonEmpty!15486 m!2578711))

(declare-fun e!1355415 () Bool)

(declare-fun tp!652210 () Bool)

(declare-fun tp!652212 () Bool)

(declare-fun b!2126688 () Bool)

(assert (=> b!2126688 (= e!1355415 (and (inv!31366 (left!18378 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) tp!652212 (inv!31366 (right!18708 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) tp!652210))))

(declare-fun b!2126690 () Bool)

(declare-fun e!1355416 () Bool)

(declare-fun tp!652211 () Bool)

(assert (=> b!2126690 (= e!1355416 tp!652211)))

(declare-fun b!2126689 () Bool)

(assert (=> b!2126689 (= e!1355415 (and (inv!31373 (xs!10757 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) e!1355416))))

(assert (=> b!2126091 (= tp!651972 (and (inv!31366 (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) e!1355415))))

(assert (= (and b!2126091 ((_ is Node!7815) (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) b!2126688))

(assert (= b!2126689 b!2126690))

(assert (= (and b!2126091 ((_ is Leaf!11421) (left!18378 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) b!2126689))

(declare-fun m!2578713 () Bool)

(assert (=> b!2126688 m!2578713))

(declare-fun m!2578715 () Bool)

(assert (=> b!2126688 m!2578715))

(declare-fun m!2578717 () Bool)

(assert (=> b!2126689 m!2578717))

(assert (=> b!2126091 m!2578086))

(declare-fun tp!652213 () Bool)

(declare-fun e!1355417 () Bool)

(declare-fun b!2126691 () Bool)

(declare-fun tp!652215 () Bool)

(assert (=> b!2126691 (= e!1355417 (and (inv!31366 (left!18378 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) tp!652215 (inv!31366 (right!18708 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) tp!652213))))

(declare-fun b!2126693 () Bool)

(declare-fun e!1355418 () Bool)

(declare-fun tp!652214 () Bool)

(assert (=> b!2126693 (= e!1355418 tp!652214)))

(declare-fun b!2126692 () Bool)

(assert (=> b!2126692 (= e!1355417 (and (inv!31373 (xs!10757 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) e!1355418))))

(assert (=> b!2126091 (= tp!651970 (and (inv!31366 (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130)))) e!1355417))))

(assert (= (and b!2126091 ((_ is Node!7815) (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) b!2126691))

(assert (= b!2126692 b!2126693))

(assert (= (and b!2126091 ((_ is Leaf!11421) (right!18708 (c!339969 (totalInput!2936 cacheFurthestNullable!130))))) b!2126692))

(declare-fun m!2578719 () Bool)

(assert (=> b!2126691 m!2578719))

(declare-fun m!2578721 () Bool)

(assert (=> b!2126691 m!2578721))

(declare-fun m!2578723 () Bool)

(assert (=> b!2126692 m!2578723))

(assert (=> b!2126091 m!2578088))

(declare-fun condSetEmpty!15487 () Bool)

(assert (=> setNonEmpty!15392 (= condSetEmpty!15487 (= setRest!15393 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15487 () Bool)

(assert (=> setNonEmpty!15392 (= tp!651940 setRes!15487)))

(declare-fun setIsEmpty!15487 () Bool)

(assert (=> setIsEmpty!15487 setRes!15487))

(declare-fun setElem!15487 () Context!2494)

(declare-fun e!1355419 () Bool)

(declare-fun tp!652216 () Bool)

(declare-fun setNonEmpty!15487 () Bool)

(assert (=> setNonEmpty!15487 (= setRes!15487 (and tp!652216 (inv!31365 setElem!15487) e!1355419))))

(declare-fun setRest!15487 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15487 (= setRest!15393 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15487 true) setRest!15487))))

(declare-fun b!2126694 () Bool)

(declare-fun tp!652217 () Bool)

(assert (=> b!2126694 (= e!1355419 tp!652217)))

(assert (= (and setNonEmpty!15392 condSetEmpty!15487) setIsEmpty!15487))

(assert (= (and setNonEmpty!15392 (not condSetEmpty!15487)) setNonEmpty!15487))

(assert (= setNonEmpty!15487 b!2126694))

(declare-fun m!2578725 () Bool)

(assert (=> setNonEmpty!15487 m!2578725))

(declare-fun condSetEmpty!15488 () Bool)

(assert (=> setNonEmpty!15355 (= condSetEmpty!15488 (= setRest!15355 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15488 () Bool)

(assert (=> setNonEmpty!15355 (= tp!651831 setRes!15488)))

(declare-fun setIsEmpty!15488 () Bool)

(assert (=> setIsEmpty!15488 setRes!15488))

(declare-fun tp!652218 () Bool)

(declare-fun setElem!15488 () Context!2494)

(declare-fun e!1355420 () Bool)

(declare-fun setNonEmpty!15488 () Bool)

(assert (=> setNonEmpty!15488 (= setRes!15488 (and tp!652218 (inv!31365 setElem!15488) e!1355420))))

(declare-fun setRest!15488 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15488 (= setRest!15355 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15488 true) setRest!15488))))

(declare-fun b!2126695 () Bool)

(declare-fun tp!652219 () Bool)

(assert (=> b!2126695 (= e!1355420 tp!652219)))

(assert (= (and setNonEmpty!15355 condSetEmpty!15488) setIsEmpty!15488))

(assert (= (and setNonEmpty!15355 (not condSetEmpty!15488)) setNonEmpty!15488))

(assert (= setNonEmpty!15488 b!2126695))

(declare-fun m!2578727 () Bool)

(assert (=> setNonEmpty!15488 m!2578727))

(declare-fun condSetEmpty!15489 () Bool)

(assert (=> setNonEmpty!15415 (= condSetEmpty!15489 (= setRest!15415 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15489 () Bool)

(assert (=> setNonEmpty!15415 (= tp!651983 setRes!15489)))

(declare-fun setIsEmpty!15489 () Bool)

(assert (=> setIsEmpty!15489 setRes!15489))

(declare-fun setNonEmpty!15489 () Bool)

(declare-fun setElem!15489 () Context!2494)

(declare-fun e!1355421 () Bool)

(declare-fun tp!652220 () Bool)

(assert (=> setNonEmpty!15489 (= setRes!15489 (and tp!652220 (inv!31365 setElem!15489) e!1355421))))

(declare-fun setRest!15489 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15489 (= setRest!15415 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15489 true) setRest!15489))))

(declare-fun b!2126696 () Bool)

(declare-fun tp!652221 () Bool)

(assert (=> b!2126696 (= e!1355421 tp!652221)))

(assert (= (and setNonEmpty!15415 condSetEmpty!15489) setIsEmpty!15489))

(assert (= (and setNonEmpty!15415 (not condSetEmpty!15489)) setNonEmpty!15489))

(assert (= setNonEmpty!15489 b!2126696))

(declare-fun m!2578729 () Bool)

(assert (=> setNonEmpty!15489 m!2578729))

(declare-fun b!2126697 () Bool)

(declare-fun e!1355422 () Bool)

(declare-fun setRes!15490 () Bool)

(assert (=> b!2126697 (= e!1355422 setRes!15490)))

(declare-fun condSetEmpty!15490 () Bool)

(assert (=> b!2126697 (= condSetEmpty!15490 (= (_2!13667 (h!29170 (t!196377 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672)))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15490 () Bool)

(assert (=> setIsEmpty!15490 setRes!15490))

(declare-fun setNonEmpty!15490 () Bool)

(assert (=> setNonEmpty!15490 (= setRes!15490 true)))

(declare-fun setElem!15490 () Context!2494)

(declare-fun setRest!15490 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15490 (= (_2!13667 (h!29170 (t!196377 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672)))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15490 true) setRest!15490))))

(assert (=> b!2125944 e!1355422))

(assert (= (and b!2126697 condSetEmpty!15490) setIsEmpty!15490))

(assert (= (and b!2126697 (not condSetEmpty!15490)) setNonEmpty!15490))

(assert (= (and b!2125944 ((_ is Cons!23769) (t!196377 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795672)))))))))) b!2126697))

(declare-fun b!2126698 () Bool)

(declare-fun e!1355423 () Bool)

(declare-fun setRes!15491 () Bool)

(assert (=> b!2126698 (= e!1355423 setRes!15491)))

(declare-fun condSetEmpty!15491 () Bool)

(assert (=> b!2126698 (= condSetEmpty!15491 (= (_2!13667 (h!29170 mapDefault!12164)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15491 () Bool)

(assert (=> setIsEmpty!15491 setRes!15491))

(declare-fun setNonEmpty!15491 () Bool)

(assert (=> setNonEmpty!15491 (= setRes!15491 true)))

(declare-fun setElem!15491 () Context!2494)

(declare-fun setRest!15491 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15491 (= (_2!13667 (h!29170 mapDefault!12164)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15491 true) setRest!15491))))

(assert (=> b!2125909 e!1355423))

(assert (= (and b!2126698 condSetEmpty!15491) setIsEmpty!15491))

(assert (= (and b!2126698 (not condSetEmpty!15491)) setNonEmpty!15491))

(assert (= (and b!2125909 ((_ is Cons!23769) mapDefault!12164)) b!2126698))

(declare-fun b!2126699 () Bool)

(declare-fun e!1355424 () Bool)

(declare-fun e!1355425 () Bool)

(assert (=> b!2126699 (= e!1355424 e!1355425)))

(declare-fun b!2126700 () Bool)

(declare-fun setRes!15492 () Bool)

(assert (=> b!2126700 (= e!1355425 setRes!15492)))

(declare-fun condSetEmpty!15492 () Bool)

(assert (=> b!2126700 (= condSetEmpty!15492 (= (z!5752 (h!29173 (t!196380 (t!196380 (_2!13668 (_1!13669 lt!795672)))))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2126070 e!1355424))

(declare-fun setIsEmpty!15492 () Bool)

(assert (=> setIsEmpty!15492 setRes!15492))

(declare-fun setNonEmpty!15492 () Bool)

(assert (=> setNonEmpty!15492 (= setRes!15492 true)))

(declare-fun setElem!15492 () Context!2494)

(declare-fun setRest!15492 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15492 (= (z!5752 (h!29173 (t!196380 (t!196380 (_2!13668 (_1!13669 lt!795672)))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15492 true) setRest!15492))))

(assert (= (and b!2126700 condSetEmpty!15492) setIsEmpty!15492))

(assert (= (and b!2126700 (not condSetEmpty!15492)) setNonEmpty!15492))

(assert (= b!2126699 b!2126700))

(assert (= (and b!2126070 ((_ is Cons!23772) (t!196380 (t!196380 (_2!13668 (_1!13669 lt!795672)))))) b!2126699))

(declare-fun setIsEmpty!15493 () Bool)

(declare-fun setRes!15493 () Bool)

(assert (=> setIsEmpty!15493 setRes!15493))

(declare-fun b!2126702 () Bool)

(declare-fun e!1355427 () Bool)

(declare-fun tp!652222 () Bool)

(assert (=> b!2126702 (= e!1355427 tp!652222)))

(declare-fun e!1355426 () Bool)

(assert (=> b!2126062 (= tp!651957 e!1355426)))

(declare-fun b!2126701 () Bool)

(declare-fun tp!652223 () Bool)

(assert (=> b!2126701 (= e!1355426 (and setRes!15493 tp!652223))))

(declare-fun condSetEmpty!15493 () Bool)

(assert (=> b!2126701 (= condSetEmpty!15493 (= (_1!13670 (_1!13671 (h!29174 (t!196381 (minValue!2740 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130)))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun tp!652224 () Bool)

(declare-fun setElem!15493 () Context!2494)

(declare-fun setNonEmpty!15493 () Bool)

(assert (=> setNonEmpty!15493 (= setRes!15493 (and tp!652224 (inv!31365 setElem!15493) e!1355427))))

(declare-fun setRest!15493 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15493 (= (_1!13670 (_1!13671 (h!29174 (t!196381 (minValue!2740 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130)))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15493 true) setRest!15493))))

(assert (= (and b!2126701 condSetEmpty!15493) setIsEmpty!15493))

(assert (= (and b!2126701 (not condSetEmpty!15493)) setNonEmpty!15493))

(assert (= setNonEmpty!15493 b!2126702))

(assert (= (and b!2126062 ((_ is Cons!23773) (t!196381 (minValue!2740 (v!28302 (underlying!5159 (v!28303 (underlying!5160 (cache!2777 cacheFurthestNullable!130))))))))) b!2126701))

(declare-fun m!2578731 () Bool)

(assert (=> setNonEmpty!15493 m!2578731))

(declare-fun b!2126703 () Bool)

(declare-fun e!1355428 () Bool)

(declare-fun tp!652225 () Bool)

(declare-fun tp!652226 () Bool)

(assert (=> b!2126703 (= e!1355428 (and tp!652225 tp!652226))))

(assert (=> b!2125967 (= tp!651842 e!1355428)))

(assert (= (and b!2125967 ((_ is Cons!23768) (exprs!1747 setElem!15359))) b!2126703))

(declare-fun mapNonEmpty!12189 () Bool)

(declare-fun mapRes!12189 () Bool)

(declare-fun e!1355430 () Bool)

(assert (=> mapNonEmpty!12189 (= mapRes!12189 e!1355430)))

(declare-fun mapRest!12189 () (Array (_ BitVec 32) List!23854))

(declare-fun mapValue!12189 () List!23854)

(declare-fun mapKey!12189 () (_ BitVec 32))

(assert (=> mapNonEmpty!12189 (= mapRest!12174 (store mapRest!12189 mapKey!12189 mapValue!12189))))

(declare-fun b!2126704 () Bool)

(declare-fun e!1355429 () Bool)

(declare-fun setRes!15494 () Bool)

(assert (=> b!2126704 (= e!1355429 setRes!15494)))

(declare-fun condSetEmpty!15494 () Bool)

(declare-fun mapDefault!12189 () List!23854)

(assert (=> b!2126704 (= condSetEmpty!15494 (= (_2!13665 (h!29171 mapDefault!12189)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15494 () Bool)

(declare-fun setRes!15495 () Bool)

(assert (=> setIsEmpty!15494 setRes!15495))

(declare-fun setNonEmpty!15494 () Bool)

(assert (=> setNonEmpty!15494 (= setRes!15494 true)))

(declare-fun setElem!15494 () Context!2494)

(declare-fun setRest!15495 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15494 (= (_2!13665 (h!29171 mapDefault!12189)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15494 true) setRest!15495))))

(declare-fun mapIsEmpty!12189 () Bool)

(assert (=> mapIsEmpty!12189 mapRes!12189))

(declare-fun setNonEmpty!15495 () Bool)

(assert (=> setNonEmpty!15495 (= setRes!15495 true)))

(declare-fun setElem!15495 () Context!2494)

(declare-fun setRest!15494 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15495 (= (_2!13665 (h!29171 mapValue!12189)) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15495 true) setRest!15494))))

(declare-fun condMapEmpty!12189 () Bool)

(assert (=> mapNonEmpty!12174 (= condMapEmpty!12189 (= mapRest!12174 ((as const (Array (_ BitVec 32) List!23854)) mapDefault!12189)))))

(assert (=> mapNonEmpty!12174 (and e!1355429 mapRes!12189)))

(declare-fun b!2126705 () Bool)

(assert (=> b!2126705 (= e!1355430 setRes!15495)))

(declare-fun condSetEmpty!15495 () Bool)

(assert (=> b!2126705 (= condSetEmpty!15495 (= (_2!13665 (h!29171 mapValue!12189)) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15495 () Bool)

(assert (=> setIsEmpty!15495 setRes!15494))

(assert (= (and mapNonEmpty!12174 condMapEmpty!12189) mapIsEmpty!12189))

(assert (= (and mapNonEmpty!12174 (not condMapEmpty!12189)) mapNonEmpty!12189))

(assert (= (and b!2126705 condSetEmpty!15495) setIsEmpty!15494))

(assert (= (and b!2126705 (not condSetEmpty!15495)) setNonEmpty!15495))

(assert (= (and mapNonEmpty!12189 ((_ is Cons!23770) mapValue!12189)) b!2126705))

(assert (= (and b!2126704 condSetEmpty!15494) setIsEmpty!15495))

(assert (= (and b!2126704 (not condSetEmpty!15494)) setNonEmpty!15494))

(assert (= (and mapNonEmpty!12174 ((_ is Cons!23770) mapDefault!12189)) b!2126704))

(declare-fun m!2578733 () Bool)

(assert (=> mapNonEmpty!12189 m!2578733))

(declare-fun condSetEmpty!15496 () Bool)

(assert (=> setNonEmpty!15402 (= condSetEmpty!15496 (= setRest!15402 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15496 () Bool)

(assert (=> setNonEmpty!15402 (= tp!651963 setRes!15496)))

(declare-fun setIsEmpty!15496 () Bool)

(assert (=> setIsEmpty!15496 setRes!15496))

(declare-fun setElem!15496 () Context!2494)

(declare-fun setNonEmpty!15496 () Bool)

(declare-fun tp!652227 () Bool)

(declare-fun e!1355431 () Bool)

(assert (=> setNonEmpty!15496 (= setRes!15496 (and tp!652227 (inv!31365 setElem!15496) e!1355431))))

(declare-fun setRest!15496 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15496 (= setRest!15402 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15496 true) setRest!15496))))

(declare-fun b!2126706 () Bool)

(declare-fun tp!652228 () Bool)

(assert (=> b!2126706 (= e!1355431 tp!652228)))

(assert (= (and setNonEmpty!15402 condSetEmpty!15496) setIsEmpty!15496))

(assert (= (and setNonEmpty!15402 (not condSetEmpty!15496)) setNonEmpty!15496))

(assert (= setNonEmpty!15496 b!2126706))

(declare-fun m!2578735 () Bool)

(assert (=> setNonEmpty!15496 m!2578735))

(declare-fun condSetEmpty!15497 () Bool)

(assert (=> setNonEmpty!15374 (= condSetEmpty!15497 (= setRest!15375 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15497 () Bool)

(assert (=> setNonEmpty!15374 (= tp!651909 setRes!15497)))

(declare-fun setIsEmpty!15497 () Bool)

(assert (=> setIsEmpty!15497 setRes!15497))

(declare-fun e!1355432 () Bool)

(declare-fun tp!652229 () Bool)

(declare-fun setElem!15497 () Context!2494)

(declare-fun setNonEmpty!15497 () Bool)

(assert (=> setNonEmpty!15497 (= setRes!15497 (and tp!652229 (inv!31365 setElem!15497) e!1355432))))

(declare-fun setRest!15497 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15497 (= setRest!15375 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15497 true) setRest!15497))))

(declare-fun b!2126707 () Bool)

(declare-fun tp!652230 () Bool)

(assert (=> b!2126707 (= e!1355432 tp!652230)))

(assert (= (and setNonEmpty!15374 condSetEmpty!15497) setIsEmpty!15497))

(assert (= (and setNonEmpty!15374 (not condSetEmpty!15497)) setNonEmpty!15497))

(assert (= setNonEmpty!15497 b!2126707))

(declare-fun m!2578737 () Bool)

(assert (=> setNonEmpty!15497 m!2578737))

(declare-fun b!2126708 () Bool)

(declare-fun e!1355433 () Bool)

(declare-fun tp!652231 () Bool)

(declare-fun tp!652232 () Bool)

(assert (=> b!2126708 (= e!1355433 (and tp!652231 tp!652232))))

(assert (=> b!2126059 (= tp!651949 e!1355433)))

(assert (= (and b!2126059 ((_ is Cons!23768) (exprs!1747 (_1!13666 (_1!13667 (h!29170 mapValue!12156)))))) b!2126708))

(declare-fun b!2126709 () Bool)

(declare-fun e!1355434 () Bool)

(declare-fun setRes!15498 () Bool)

(assert (=> b!2126709 (= e!1355434 setRes!15498)))

(declare-fun condSetEmpty!15498 () Bool)

(assert (=> b!2126709 (= condSetEmpty!15498 (= (_2!13667 (h!29170 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795733))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15498 () Bool)

(assert (=> setIsEmpty!15498 setRes!15498))

(declare-fun setNonEmpty!15498 () Bool)

(assert (=> setNonEmpty!15498 (= setRes!15498 true)))

(declare-fun setElem!15498 () Context!2494)

(declare-fun setRest!15498 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15498 (= (_2!13667 (h!29170 (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795733))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15498 true) setRest!15498))))

(assert (=> b!2125905 e!1355434))

(assert (= (and b!2126709 condSetEmpty!15498) setIsEmpty!15498))

(assert (= (and b!2126709 (not condSetEmpty!15498)) setNonEmpty!15498))

(assert (= (and b!2125905 ((_ is Cons!23769) (zeroValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795733))))))))) b!2126709))

(declare-fun b!2126710 () Bool)

(declare-fun e!1355435 () Bool)

(declare-fun setRes!15499 () Bool)

(assert (=> b!2126710 (= e!1355435 setRes!15499)))

(declare-fun condSetEmpty!15499 () Bool)

(assert (=> b!2126710 (= condSetEmpty!15499 (= (_2!13667 (h!29170 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795733))))))))) ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setIsEmpty!15499 () Bool)

(assert (=> setIsEmpty!15499 setRes!15499))

(declare-fun setNonEmpty!15499 () Bool)

(assert (=> setNonEmpty!15499 (= setRes!15499 true)))

(declare-fun setElem!15499 () Context!2494)

(declare-fun setRest!15499 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15499 (= (_2!13667 (h!29170 (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795733))))))))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15499 true) setRest!15499))))

(assert (=> b!2125905 e!1355435))

(assert (= (and b!2126710 condSetEmpty!15499) setIsEmpty!15499))

(assert (= (and b!2126710 (not condSetEmpty!15499)) setNonEmpty!15499))

(assert (= (and b!2125905 ((_ is Cons!23769) (minValue!2739 (v!28300 (underlying!5156 (v!28301 (underlying!5157 (cache!2775 (_2!13669 lt!795733))))))))) b!2126710))

(declare-fun condSetEmpty!15500 () Bool)

(assert (=> setNonEmpty!15387 (= condSetEmpty!15500 (= setRest!15387 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15500 () Bool)

(assert (=> setNonEmpty!15387 setRes!15500))

(declare-fun setIsEmpty!15500 () Bool)

(assert (=> setIsEmpty!15500 setRes!15500))

(declare-fun setNonEmpty!15500 () Bool)

(assert (=> setNonEmpty!15500 (= setRes!15500 true)))

(declare-fun setElem!15500 () Context!2494)

(declare-fun setRest!15500 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15500 (= setRest!15387 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15500 true) setRest!15500))))

(assert (= (and setNonEmpty!15387 condSetEmpty!15500) setIsEmpty!15500))

(assert (= (and setNonEmpty!15387 (not condSetEmpty!15500)) setNonEmpty!15500))

(declare-fun b!2126711 () Bool)

(declare-fun e!1355436 () Bool)

(declare-fun tp!652233 () Bool)

(declare-fun tp!652234 () Bool)

(assert (=> b!2126711 (= e!1355436 (and tp!652233 tp!652234))))

(assert (=> b!2126056 (= tp!651944 e!1355436)))

(assert (= (and b!2126056 ((_ is Cons!23768) (exprs!1747 setElem!15393))) b!2126711))

(declare-fun condSetEmpty!15501 () Bool)

(assert (=> setNonEmpty!15346 (= condSetEmpty!15501 (= setRest!15346 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15501 () Bool)

(assert (=> setNonEmpty!15346 setRes!15501))

(declare-fun setIsEmpty!15501 () Bool)

(assert (=> setIsEmpty!15501 setRes!15501))

(declare-fun setNonEmpty!15501 () Bool)

(assert (=> setNonEmpty!15501 (= setRes!15501 true)))

(declare-fun setElem!15501 () Context!2494)

(declare-fun setRest!15501 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15501 (= setRest!15346 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15501 true) setRest!15501))))

(assert (= (and setNonEmpty!15346 condSetEmpty!15501) setIsEmpty!15501))

(assert (= (and setNonEmpty!15346 (not condSetEmpty!15501)) setNonEmpty!15501))

(declare-fun condSetEmpty!15502 () Bool)

(assert (=> setNonEmpty!15408 (= condSetEmpty!15502 (= setRest!15407 ((as const (Array Context!2494 Bool)) false)))))

(declare-fun setRes!15502 () Bool)

(assert (=> setNonEmpty!15408 setRes!15502))

(declare-fun setIsEmpty!15502 () Bool)

(assert (=> setIsEmpty!15502 setRes!15502))

(declare-fun setNonEmpty!15502 () Bool)

(assert (=> setNonEmpty!15502 (= setRes!15502 true)))

(declare-fun setElem!15502 () Context!2494)

(declare-fun setRest!15502 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15502 (= setRest!15407 ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15502 true) setRest!15502))))

(assert (= (and setNonEmpty!15408 condSetEmpty!15502) setIsEmpty!15502))

(assert (= (and setNonEmpty!15408 (not condSetEmpty!15502)) setNonEmpty!15502))

(declare-fun b!2126712 () Bool)

(declare-fun e!1355437 () Bool)

(declare-fun tp!652235 () Bool)

(declare-fun tp!652236 () Bool)

(assert (=> b!2126712 (= e!1355437 (and tp!652235 tp!652236))))

(assert (=> b!2126021 (= tp!651917 e!1355437)))

(assert (= (and b!2126021 ((_ is Cons!23768) (exprs!1747 setElem!15376))) b!2126712))

(declare-fun setRes!15503 () Bool)

(declare-fun b!2126713 () Bool)

(declare-fun e!1355440 () Bool)

(declare-fun tp!652239 () Bool)

(declare-fun e!1355438 () Bool)

(assert (=> b!2126713 (= e!1355440 (and (inv!31365 (_1!13666 (_1!13667 (h!29170 (t!196377 mapValue!12156))))) e!1355438 tp_is_empty!9499 setRes!15503 tp!652239))))

(declare-fun condSetEmpty!15503 () Bool)

(assert (=> b!2126713 (= condSetEmpty!15503 (= (_2!13667 (h!29170 (t!196377 mapValue!12156))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2126057 (= tp!651951 e!1355440)))

(declare-fun setIsEmpty!15503 () Bool)

(assert (=> setIsEmpty!15503 setRes!15503))

(declare-fun b!2126714 () Bool)

(declare-fun e!1355439 () Bool)

(declare-fun tp!652240 () Bool)

(assert (=> b!2126714 (= e!1355439 tp!652240)))

(declare-fun setNonEmpty!15503 () Bool)

(declare-fun tp!652238 () Bool)

(declare-fun setElem!15503 () Context!2494)

(assert (=> setNonEmpty!15503 (= setRes!15503 (and tp!652238 (inv!31365 setElem!15503) e!1355439))))

(declare-fun setRest!15503 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15503 (= (_2!13667 (h!29170 (t!196377 mapValue!12156))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15503 true) setRest!15503))))

(declare-fun b!2126715 () Bool)

(declare-fun tp!652237 () Bool)

(assert (=> b!2126715 (= e!1355438 tp!652237)))

(assert (= b!2126713 b!2126715))

(assert (= (and b!2126713 condSetEmpty!15503) setIsEmpty!15503))

(assert (= (and b!2126713 (not condSetEmpty!15503)) setNonEmpty!15503))

(assert (= setNonEmpty!15503 b!2126714))

(assert (= (and b!2126057 ((_ is Cons!23769) (t!196377 mapValue!12156))) b!2126713))

(declare-fun m!2578739 () Bool)

(assert (=> b!2126713 m!2578739))

(declare-fun m!2578741 () Bool)

(assert (=> setNonEmpty!15503 m!2578741))

(declare-fun e!1355441 () Bool)

(assert (=> b!2126086 (= tp!651967 e!1355441)))

(declare-fun b!2126719 () Bool)

(declare-fun tp!652243 () Bool)

(declare-fun tp!652245 () Bool)

(assert (=> b!2126719 (= e!1355441 (and tp!652243 tp!652245))))

(declare-fun b!2126716 () Bool)

(assert (=> b!2126716 (= e!1355441 tp_is_empty!9499)))

(declare-fun b!2126717 () Bool)

(declare-fun tp!652242 () Bool)

(declare-fun tp!652241 () Bool)

(assert (=> b!2126717 (= e!1355441 (and tp!652242 tp!652241))))

(declare-fun b!2126718 () Bool)

(declare-fun tp!652244 () Bool)

(assert (=> b!2126718 (= e!1355441 tp!652244)))

(assert (= (and b!2126086 ((_ is ElementMatch!5677) (_1!13664 (_1!13665 (h!29171 mapDefault!12156))))) b!2126716))

(assert (= (and b!2126086 ((_ is Concat!9979) (_1!13664 (_1!13665 (h!29171 mapDefault!12156))))) b!2126717))

(assert (= (and b!2126086 ((_ is Star!5677) (_1!13664 (_1!13665 (h!29171 mapDefault!12156))))) b!2126718))

(assert (= (and b!2126086 ((_ is Union!5677) (_1!13664 (_1!13665 (h!29171 mapDefault!12156))))) b!2126719))

(declare-fun setIsEmpty!15504 () Bool)

(declare-fun setRes!15504 () Bool)

(assert (=> setIsEmpty!15504 setRes!15504))

(declare-fun tp!652248 () Bool)

(declare-fun e!1355442 () Bool)

(declare-fun e!1355444 () Bool)

(declare-fun b!2126720 () Bool)

(declare-fun tp!652250 () Bool)

(assert (=> b!2126720 (= e!1355444 (and tp!652248 (inv!31365 (_2!13664 (_1!13665 (h!29171 (t!196378 mapDefault!12156))))) e!1355442 tp_is_empty!9499 setRes!15504 tp!652250))))

(declare-fun condSetEmpty!15504 () Bool)

(assert (=> b!2126720 (= condSetEmpty!15504 (= (_2!13665 (h!29171 (t!196378 mapDefault!12156))) ((as const (Array Context!2494 Bool)) false)))))

(assert (=> b!2126086 (= tp!651969 e!1355444)))

(declare-fun b!2126721 () Bool)

(declare-fun tp!652249 () Bool)

(assert (=> b!2126721 (= e!1355442 tp!652249)))

(declare-fun e!1355443 () Bool)

(declare-fun tp!652247 () Bool)

(declare-fun setElem!15504 () Context!2494)

(declare-fun setNonEmpty!15504 () Bool)

(assert (=> setNonEmpty!15504 (= setRes!15504 (and tp!652247 (inv!31365 setElem!15504) e!1355443))))

(declare-fun setRest!15504 () (InoxSet Context!2494))

(assert (=> setNonEmpty!15504 (= (_2!13665 (h!29171 (t!196378 mapDefault!12156))) ((_ map or) (store ((as const (Array Context!2494 Bool)) false) setElem!15504 true) setRest!15504))))

(declare-fun b!2126722 () Bool)

(declare-fun tp!652246 () Bool)

(assert (=> b!2126722 (= e!1355443 tp!652246)))

(assert (= b!2126720 b!2126721))

(assert (= (and b!2126720 condSetEmpty!15504) setIsEmpty!15504))

(assert (= (and b!2126720 (not condSetEmpty!15504)) setNonEmpty!15504))

(assert (= setNonEmpty!15504 b!2126722))

(assert (= (and b!2126086 ((_ is Cons!23770) (t!196378 mapDefault!12156))) b!2126720))

(declare-fun m!2578743 () Bool)

(assert (=> b!2126720 m!2578743))

(declare-fun m!2578745 () Bool)

(assert (=> setNonEmpty!15504 m!2578745))

(declare-fun b!2126723 () Bool)

(declare-fun e!1355445 () Bool)

(declare-fun tp!652251 () Bool)

(declare-fun tp!652252 () Bool)

(assert (=> b!2126723 (= e!1355445 (and tp!652251 tp!652252))))

(assert (=> b!2126061 (= tp!651953 e!1355445)))

(assert (= (and b!2126061 ((_ is Cons!23768) (exprs!1747 setElem!15395))) b!2126723))

(declare-fun b!2126724 () Bool)

(declare-fun e!1355446 () Bool)

(declare-fun tp!652253 () Bool)

(declare-fun tp!652254 () Bool)

(assert (=> b!2126724 (= e!1355446 (and tp!652253 tp!652254))))

(assert (=> b!2125997 (= tp!651883 e!1355446)))

(assert (= (and b!2125997 ((_ is Cons!23768) (exprs!1747 setElem!15369))) b!2126724))

(declare-fun b_lambda!70553 () Bool)

(assert (= b_lambda!70547 (or b!2125896 b_lambda!70553)))

(declare-fun bs!444164 () Bool)

(declare-fun d!644228 () Bool)

(assert (= bs!444164 (and d!644228 b!2125896)))

(assert (=> bs!444164 (= (dynLambda!11363 lambda!78852 (h!29173 (_2!13668 (_1!13669 lt!795733)))) (= (totalInput!2935 (h!29173 (_2!13668 (_1!13669 lt!795733)))) totalInput!886))))

(assert (=> b!2126327 d!644228))

(declare-fun b_lambda!70555 () Bool)

(assert (= b_lambda!70543 (or d!643984 b_lambda!70555)))

(declare-fun bs!444165 () Bool)

(declare-fun d!644230 () Bool)

(assert (= bs!444165 (and d!644230 d!643984)))

(declare-fun validRegex!2232 (Regex!5677) Bool)

(assert (=> bs!444165 (= (dynLambda!11364 lambda!78830 (h!29169 (exprs!1747 setElem!15342))) (validRegex!2232 (h!29169 (exprs!1747 setElem!15342))))))

(declare-fun m!2578747 () Bool)

(assert (=> bs!444165 m!2578747))

(assert (=> b!2126261 d!644230))

(declare-fun b_lambda!70557 () Bool)

(assert (= b_lambda!70551 (or b!2125723 b_lambda!70557)))

(declare-fun bs!444166 () Bool)

(declare-fun d!644232 () Bool)

(assert (= bs!444166 (and d!644232 b!2125723)))

(assert (=> bs!444166 (= (dynLambda!11363 lambda!78826 (h!29173 (t!196380 (_2!13668 (_1!13669 lt!795672))))) (= (res!919798 (h!29173 (t!196380 (_2!13668 (_1!13669 lt!795672))))) (_1!13668 (_1!13669 lt!795672))))))

(assert (=> b!2126439 d!644232))

(declare-fun b_lambda!70559 () Bool)

(assert (= b_lambda!70541 (or b!2125730 b_lambda!70559)))

(declare-fun bs!444167 () Bool)

(declare-fun d!644234 () Bool)

(assert (= bs!444167 (and d!644234 b!2125730)))

(assert (=> bs!444167 (= (dynLambda!11363 lambda!78827 (h!29173 (t!196380 (_2!13668 (_1!13669 lt!795672))))) (= (totalInput!2935 (h!29173 (t!196380 (_2!13668 (_1!13669 lt!795672))))) totalInput!886))))

(assert (=> b!2126248 d!644234))

(declare-fun b_lambda!70561 () Bool)

(assert (= b_lambda!70549 (or b!2125894 b_lambda!70561)))

(declare-fun bs!444168 () Bool)

(declare-fun d!644236 () Bool)

(assert (= bs!444168 (and d!644236 b!2125894)))

(assert (=> bs!444168 (= (dynLambda!11363 lambda!78851 (h!29173 (_2!13668 (_1!13669 lt!795733)))) (= (res!919798 (h!29173 (_2!13668 (_1!13669 lt!795733)))) (_1!13668 (_1!13669 lt!795733))))))

(assert (=> b!2126437 d!644236))

(declare-fun b_lambda!70563 () Bool)

(assert (= b_lambda!70539 (or d!644010 b_lambda!70563)))

(declare-fun bs!444169 () Bool)

(declare-fun d!644238 () Bool)

(assert (= bs!444169 (and d!644238 d!644010)))

(assert (=> bs!444169 (= (dynLambda!11363 lambda!78848 (h!29173 Nil!23772)) (= (res!919798 (h!29173 Nil!23772)) lt!795736))))

(assert (=> b!2126182 d!644238))

(check-sat (not d!644118) (not b!2126697) (not setNonEmpty!15502) (not b!2126612) (not mapNonEmpty!12181) (not b!2126671) (not b!2126333) (not d!644194) (not b!2126652) (not d!644066) (not b!2126620) (not b_lambda!70559) (not setNonEmpty!15435) (not bm!128767) (not b!2126670) (not b!2126639) (not d!644156) (not b!2126292) (not b!2126245) (not b!2126454) (not b!2126618) (not setNonEmpty!15417) (not d!644146) (not b!2126625) (not b!2126255) (not b!2126273) (not b!2126623) (not b!2126638) (not b!2126631) (not d!644040) (not setNonEmpty!15493) (not b_lambda!70561) (not setNonEmpty!15485) (not b!2125937) (not b!2126698) (not d!644140) (not b!2126585) (not setNonEmpty!15455) (not b!2126091) (not setNonEmpty!15492) (not b!2126693) (not b!2126230) (not setNonEmpty!15450) (not b!2126276) (not b!2126545) (not b!2126180) (not b!2126636) (not setNonEmpty!15500) (not b!2126679) (not d!644160) (not bm!128778) (not b!2126247) (not d!644190) (not b!2126701) (not b!2126669) (not setNonEmpty!15458) (not b!2126484) (not b!2126690) (not setNonEmpty!15491) (not b!2126492) (not b!2126633) (not b!2126134) (not b!2126485) (not b!2126581) (not b!2126664) (not b!2126666) (not b!2126682) b_and!171363 (not b!2126603) (not b!2126305) (not b!2126422) (not b!2126525) (not b!2126689) (not d!644126) (not b!2126632) (not b!2126544) (not b!2126458) (not setNonEmpty!15457) (not b!2126691) (not b!2126443) (not d!644122) (not b!2126274) (not b!2126724) (not b!2126330) (not b!2126527) (not setNonEmpty!15452) (not b_lambda!70535) (not setNonEmpty!15477) (not b!2126705) (not b_next!62485) (not b!2126326) (not b!2126710) (not d!644208) (not setNonEmpty!15423) (not b!2126592) (not setNonEmpty!15448) (not setNonEmpty!15432) (not b!2126653) (not b!2126112) (not b!2126278) (not b!2126398) (not b!2126495) (not b!2126624) (not d!644176) (not d!644106) (not b!2126469) (not b!2126634) (not b!2126487) (not setNonEmpty!15466) (not d!644154) (not b!2126591) (not d!644034) (not setNonEmpty!15478) (not b!2126179) b_and!171365 (not d!644164) (not b!2126577) (not setNonEmpty!15442) (not setNonEmpty!15431) (not b!2126546) (not b!2126329) (not b!2126331) (not b!2126191) (not d!644072) (not b_next!62493) (not b!2126709) (not b!2126573) (not setNonEmpty!15499) (not b_next!62495) (not b!2126541) (not setNonEmpty!15420) (not b!2126249) (not b!2126717) (not b!2126490) (not b!2126590) (not b!2126198) (not b!2126158) (not setNonEmpty!15496) (not b!2126417) (not b!2126450) (not b_lambda!70553) (not b!2126647) (not b!2126270) (not b!2126657) (not b!2126262) (not setNonEmpty!15430) (not b!2126605) (not setNonEmpty!15422) (not b!2126615) (not mapNonEmpty!12182) (not setNonEmpty!15487) (not b!2126322) (not setNonEmpty!15459) (not d!644116) (not b!2126708) (not b!2126621) (not b!2126542) (not b!2126436) (not b!2126193) (not d!644092) (not setNonEmpty!15440) (not b!2126595) (not setNonEmpty!15472) (not b!2126438) (not d!644172) (not b!2126645) (not b!2126598) (not d!644036) (not b!2126642) (not b!2126719) (not d!644220) (not b!2126574) (not b!2126242) (not b!2126284) (not setNonEmpty!15454) (not b!2126597) (not b!2126699) (not b!2126648) (not b!2126558) (not b!2126658) (not d!644214) (not b!2126667) (not b!2126692) (not b!2126269) (not b!2126665) (not setNonEmpty!15425) (not d!644180) (not b!2126599) (not b!2126467) (not b!2126572) (not setNonEmpty!15489) (not setNonEmpty!15427) (not d!644218) (not b!2126151) (not setNonEmpty!15498) (not b!2126286) (not b!2126325) (not b!2126548) (not b!2126277) (not b_lambda!70563) (not b!2126687) (not b!2126275) (not d!644174) (not b!2126617) (not b!2126646) (not b!2126332) (not b!2126281) (not setNonEmpty!15488) (not d!644138) (not d!644028) (not b!2126107) (not b!2126452) (not b!2126155) (not setNonEmpty!15494) (not b!2126174) (not b!2126610) (not b!2126602) (not setNonEmpty!15470) (not b!2126199) (not b!2126582) (not setNonEmpty!15418) (not setNonEmpty!15445) (not setNonEmpty!15416) (not setNonEmpty!15436) (not d!644030) (not d!644148) (not b!2126496) (not b!2126712) (not setNonEmpty!15464) (not b!2126660) (not b!2126307) (not b!2126604) (not b!2126630) (not b!2126491) (not setNonEmpty!15419) (not mapNonEmpty!12186) (not setNonEmpty!15453) (not b!2126338) (not b!2126662) (not d!644222) (not setNonEmpty!15441) (not d!644090) (not b!2126421) (not mapNonEmpty!12189) (not b!2126556) (not b!2126488) (not b!2126674) (not b!2126299) (not b!2126643) (not b!2126550) (not b_lambda!70545) (not setNonEmpty!15480) (not b!2126413) (not b!2126575) (not b!2126095) (not b!2126402) (not setNonEmpty!15474) (not d!644108) (not b_next!62491) (not b!2126721) (not b!2126686) (not setNonEmpty!15463) (not setNonEmpty!15424) (not b!2126418) (not bm!128766) (not b!2126706) (not d!644082) (not b!2126408) (not b!2126713) (not b!2126478) (not b!2126183) (not b!2126649) (not b!2126677) (not b!2126718) (not d!644198) (not setNonEmpty!15479) (not b!2126601) (not b!2126328) (not b!2126594) (not b!2126626) (not d!644184) (not bm!128775) (not b!2126629) (not d!644094) (not setNonEmpty!15469) (not b!2126493) (not d!644110) (not b_next!62489) (not setNonEmpty!15481) (not b!2126711) (not b!2126502) (not b!2126136) (not b!2126161) (not b!2126584) (not b!2126616) (not setNonEmpty!15484) (not d!644062) (not setNonEmpty!15434) (not setNonEmpty!15447) (not b!2126593) (not b!2126283) (not b!2126714) (not b!2126138) (not b!2126339) (not d!644128) (not d!644112) (not b!2126337) (not b!2126411) (not b!2126499) (not b!2126654) (not mapNonEmpty!12184) (not b!2126614) (not setNonEmpty!15504) (not setNonEmpty!15438) (not b!2126680) (not b!2126152) (not b!2126723) (not b!2126304) (not b!2126607) (not setNonEmpty!15468) (not d!644120) (not b!2126335) (not b!2126526) (not b!2126586) (not setNonEmpty!15503) (not bm!128768) (not b!2126447) (not d!644202) (not b!2126606) (not b!2126481) (not d!644200) (not b!2126290) (not b!2126613) (not b!2126641) (not b!2126524) (not b!2126529) (not b!2126685) (not b!2126655) (not b!2126608) (not b_lambda!70557) (not b!2126627) (not b_lambda!70533) (not b!2126254) (not b!2126451) (not b!2126678) (not d!644104) (not b!2126416) (not d!644158) (not d!644050) (not b!2126576) (not setNonEmpty!15428) (not b!2126661) (not bm!128765) (not setNonEmpty!15426) (not b!2126116) (not b!2126440) (not d!644074) (not b!2126336) (not b!2126622) (not b!2126175) (not b!2126500) (not b!2126675) (not b!2126477) (not b!2126578) (not d!644186) (not setNonEmpty!15490) (not setNonEmpty!15449) (not bm!128777) (not d!644096) (not setNonEmpty!15461) (not b!2126300) (not d!644170) (not b!2126696) (not b!2126722) (not setNonEmpty!15475) (not b!2126489) (not b!2126154) (not d!644042) (not b!2126715) (not b!2126600) (not b!2126694) (not b!2126580) (not setNonEmpty!15462) (not setNonEmpty!15444) (not b!2126673) (not b_lambda!70537) (not bm!128774) (not b!2126406) (not d!644134) (not b!2126684) (not b!2126340) (not setNonEmpty!15443) (not b!2126428) (not bm!128764) (not b!2126334) (not d!644038) (not b!2126688) (not setNonEmpty!15439) (not d!644044) (not b!2126219) (not setNonEmpty!15460) (not b!2126587) b_and!171369 tp_is_empty!9499 (not mapNonEmpty!12185) (not setNonEmpty!15501) (not b!2126588) (not b!2126683) (not b!2126707) (not setNonEmpty!15421) (not setNonEmpty!15437) (not b!2126241) (not b_lambda!70555) (not b!2126571) (not b!2126415) (not b!2126543) (not setNonEmpty!15446) (not b!2126228) (not b!2126663) (not b!2126298) (not b!2126557) (not mapNonEmpty!12188) (not b!2126659) (not d!644052) (not setNonEmpty!15497) b_and!171371 (not d!644070) (not setNonEmpty!15495) (not mapNonEmpty!12183) (not b!2126119) (not setNonEmpty!15433) (not b!2126501) (not b!2126619) (not b!2126702) (not b!2126704) (not d!644204) (not d!644168) (not b!2126611) (not setNonEmpty!15476) (not b!2126456) (not setNonEmpty!15451) (not b!2126695) (not b!2126720) (not b!2126644) (not b!2126656) (not setNonEmpty!15482) (not b!2126463) (not b!2126640) (not setNonEmpty!15471) (not b!2126523) (not b!2126551) (not b!2126127) (not b!2126676) (not b!2126289) (not b!2126472) (not b!2126264) (not setNonEmpty!15473) (not b!2126294) (not d!644206) (not setNonEmpty!15456) (not mapNonEmpty!12187) (not setNonEmpty!15429) (not b!2126153) (not b!2126156) (not setNonEmpty!15467) (not b!2126221) (not b!2126389) (not setNonEmpty!15483) (not b!2126414) (not b!2126596) (not b!2126494) (not b!2126681) (not b!2126446) (not b!2126528) (not b!2126114) (not b!2126570) (not b!2126498) (not d!644212) (not d!644224) (not b!2126435) (not d!644068) (not b!2126287) (not b!2126583) (not b!2126482) (not b!2126117) (not b!2126189) (not b!2126497) (not b!2126427) (not bm!128776) b_and!171361 (not b!2126609) (not b_next!62487) (not setNonEmpty!15486) (not b!2126672) (not b!2126703) (not b!2126279) (not setNonEmpty!15465) (not b!2126399) (not bm!128751) b_and!171367 (not b!2126549) (not b!2126651) (not b!2126486) (not b!2126637) (not b!2126547) (not d!644124) (not bs!444165))
(check-sat b_and!171363 (not b_next!62485) b_and!171365 (not b_next!62491) (not b_next!62489) b_and!171369 b_and!171371 (not b_next!62493) (not b_next!62495) b_and!171361 (not b_next!62487) b_and!171367)
