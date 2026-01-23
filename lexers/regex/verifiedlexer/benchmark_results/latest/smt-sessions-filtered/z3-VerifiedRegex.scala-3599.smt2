; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207018 () Bool)

(assert start!207018)

(declare-fun b!2121674 () Bool)

(declare-fun b_free!61637 () Bool)

(declare-fun b_next!62341 () Bool)

(assert (=> b!2121674 (= b_free!61637 (not b_next!62341))))

(declare-fun tp!649508 () Bool)

(declare-fun b_and!171217 () Bool)

(assert (=> b!2121674 (= tp!649508 b_and!171217)))

(declare-fun b!2121676 () Bool)

(declare-fun b_free!61639 () Bool)

(declare-fun b_next!62343 () Bool)

(assert (=> b!2121676 (= b_free!61639 (not b_next!62343))))

(declare-fun tp!649500 () Bool)

(declare-fun b_and!171219 () Bool)

(assert (=> b!2121676 (= tp!649500 b_and!171219)))

(declare-fun b!2121672 () Bool)

(declare-fun b_free!61641 () Bool)

(declare-fun b_next!62345 () Bool)

(assert (=> b!2121672 (= b_free!61641 (not b_next!62345))))

(declare-fun tp!649504 () Bool)

(declare-fun b_and!171221 () Bool)

(assert (=> b!2121672 (= tp!649504 b_and!171221)))

(declare-fun b!2121659 () Bool)

(declare-fun b_free!61643 () Bool)

(declare-fun b_next!62347 () Bool)

(assert (=> b!2121659 (= b_free!61643 (not b_next!62347))))

(declare-fun tp!649517 () Bool)

(declare-fun b_and!171223 () Bool)

(assert (=> b!2121659 (= tp!649517 b_and!171223)))

(declare-fun b!2121666 () Bool)

(declare-fun b_free!61645 () Bool)

(declare-fun b_next!62349 () Bool)

(assert (=> b!2121666 (= b_free!61645 (not b_next!62349))))

(declare-fun tp!649501 () Bool)

(declare-fun b_and!171225 () Bool)

(assert (=> b!2121666 (= tp!649501 b_and!171225)))

(declare-fun b!2121665 () Bool)

(declare-fun b_free!61647 () Bool)

(declare-fun b_next!62351 () Bool)

(assert (=> b!2121665 (= b_free!61647 (not b_next!62351))))

(declare-fun tp!649513 () Bool)

(declare-fun b_and!171227 () Bool)

(assert (=> b!2121665 (= tp!649513 b_and!171227)))

(declare-fun b!2121721 () Bool)

(declare-fun e!1351477 () Bool)

(declare-fun e!1351483 () Bool)

(assert (=> b!2121721 (= e!1351477 e!1351483)))

(declare-fun b!2121722 () Bool)

(declare-fun e!1351482 () Bool)

(declare-fun e!1351478 () Bool)

(assert (=> b!2121722 (= e!1351482 e!1351478)))

(declare-fun setIsEmpty!14764 () Bool)

(declare-fun setRes!14764 () Bool)

(assert (=> setIsEmpty!14764 setRes!14764))

(declare-fun mapNonEmpty!11871 () Bool)

(declare-fun mapRes!11872 () Bool)

(assert (=> mapNonEmpty!11871 (= mapRes!11872 true)))

(declare-datatypes ((C!11476 0))(
  ( (C!11477 (val!6724 Int)) )
))
(declare-datatypes ((Regex!5665 0))(
  ( (ElementMatch!5665 (c!339726 C!11476)) (Concat!9967 (regOne!11842 Regex!5665) (regTwo!11842 Regex!5665)) (EmptyExpr!5665) (Star!5665 (reg!5994 Regex!5665)) (EmptyLang!5665) (Union!5665 (regOne!11843 Regex!5665) (regTwo!11843 Regex!5665)) )
))
(declare-datatypes ((List!23785 0))(
  ( (Nil!23701) (Cons!23701 (h!29102 Regex!5665) (t!196301 List!23785)) )
))
(declare-datatypes ((Context!2470 0))(
  ( (Context!2471 (exprs!1735 List!23785)) )
))
(declare-datatypes ((tuple3!2898 0))(
  ( (tuple3!2899 (_1!13570 Regex!5665) (_2!13570 Context!2470) (_3!1919 C!11476)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23302 0))(
  ( (tuple2!23303 (_1!13571 tuple3!2898) (_2!13571 (InoxSet Context!2470))) )
))
(declare-datatypes ((tuple2!23304 0))(
  ( (tuple2!23305 (_1!13572 Context!2470) (_2!13572 C!11476)) )
))
(declare-datatypes ((tuple2!23306 0))(
  ( (tuple2!23307 (_1!13573 tuple2!23304) (_2!13573 (InoxSet Context!2470))) )
))
(declare-datatypes ((List!23786 0))(
  ( (Nil!23702) (Cons!23702 (h!29103 tuple2!23306) (t!196302 List!23786)) )
))
(declare-datatypes ((List!23787 0))(
  ( (Nil!23703) (Cons!23703 (h!29104 tuple2!23302) (t!196303 List!23787)) )
))
(declare-datatypes ((array!8417 0))(
  ( (array!8418 (arr!3736 (Array (_ BitVec 32) (_ BitVec 64))) (size!18522 (_ BitVec 32))) )
))
(declare-datatypes ((array!8419 0))(
  ( (array!8420 (arr!3737 (Array (_ BitVec 32) List!23787)) (size!18523 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4900 0))(
  ( (LongMapFixedSize!4901 (defaultEntry!2815 Int) (mask!6598 (_ BitVec 32)) (extraKeys!2698 (_ BitVec 32)) (zeroValue!2708 List!23787) (minValue!2708 List!23787) (_size!4951 (_ BitVec 32)) (_keys!2747 array!8417) (_values!2730 array!8419) (_vacant!2511 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9625 0))(
  ( (Cell!9626 (v!28231 LongMapFixedSize!4900)) )
))
(declare-datatypes ((MutLongMap!2450 0))(
  ( (LongMap!2450 (underlying!5095 Cell!9625)) (MutLongMapExt!2449 (__x!15526 Int)) )
))
(declare-datatypes ((Cell!9627 0))(
  ( (Cell!9628 (v!28232 MutLongMap!2450)) )
))
(declare-datatypes ((List!23788 0))(
  ( (Nil!23704) (Cons!23704 (h!29105 C!11476) (t!196304 List!23788)) )
))
(declare-datatypes ((IArray!15611 0))(
  ( (IArray!15612 (innerList!7863 List!23788)) )
))
(declare-datatypes ((Hashable!2364 0))(
  ( (HashableExt!2363 (__x!15527 Int)) )
))
(declare-datatypes ((Hashable!2365 0))(
  ( (HashableExt!2364 (__x!15528 Int)) )
))
(declare-datatypes ((array!8421 0))(
  ( (array!8422 (arr!3738 (Array (_ BitVec 32) List!23786)) (size!18524 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4902 0))(
  ( (LongMapFixedSize!4903 (defaultEntry!2816 Int) (mask!6599 (_ BitVec 32)) (extraKeys!2699 (_ BitVec 32)) (zeroValue!2709 List!23786) (minValue!2709 List!23786) (_size!4952 (_ BitVec 32)) (_keys!2748 array!8417) (_values!2731 array!8421) (_vacant!2512 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9629 0))(
  ( (Cell!9630 (v!28233 LongMapFixedSize!4902)) )
))
(declare-datatypes ((MutLongMap!2451 0))(
  ( (LongMap!2451 (underlying!5096 Cell!9629)) (MutLongMapExt!2450 (__x!15529 Int)) )
))
(declare-datatypes ((Cell!9631 0))(
  ( (Cell!9632 (v!28234 MutLongMap!2451)) )
))
(declare-datatypes ((MutableMap!2364 0))(
  ( (MutableMapExt!2363 (__x!15530 Int)) (HashMap!2364 (underlying!5097 Cell!9631) (hashF!4287 Hashable!2365) (_size!4953 (_ BitVec 32)) (defaultValue!2526 Int)) )
))
(declare-datatypes ((CacheUp!1638 0))(
  ( (CacheUp!1639 (cache!2745 MutableMap!2364)) )
))
(declare-datatypes ((Conc!7803 0))(
  ( (Node!7803 (left!18336 Conc!7803) (right!18666 Conc!7803) (csize!15836 Int) (cheight!8014 Int)) (Leaf!11403 (xs!10745 IArray!15611) (csize!15837 Int)) (Empty!7803) )
))
(declare-datatypes ((BalanceConc!15368 0))(
  ( (BalanceConc!15369 (c!339727 Conc!7803)) )
))
(declare-datatypes ((StackFrame!42 0))(
  ( (StackFrame!43 (z!5723 (InoxSet Context!2470)) (from!2621 Int) (lastNullablePos!308 Int) (res!919063 Int) (totalInput!2905 BalanceConc!15368)) )
))
(declare-datatypes ((List!23789 0))(
  ( (Nil!23705) (Cons!23705 (h!29106 StackFrame!42) (t!196305 List!23789)) )
))
(declare-datatypes ((tuple2!23308 0))(
  ( (tuple2!23309 (_1!13574 Int) (_2!13574 List!23789)) )
))
(declare-datatypes ((MutableMap!2365 0))(
  ( (MutableMapExt!2364 (__x!15531 Int)) (HashMap!2365 (underlying!5098 Cell!9627) (hashF!4288 Hashable!2364) (_size!4954 (_ BitVec 32)) (defaultValue!2527 Int)) )
))
(declare-datatypes ((CacheDown!1624 0))(
  ( (CacheDown!1625 (cache!2746 MutableMap!2365)) )
))
(declare-datatypes ((tuple3!2900 0))(
  ( (tuple3!2901 (_1!13575 tuple2!23308) (_2!13575 CacheUp!1638) (_3!1920 CacheDown!1624)) )
))
(declare-fun lt!794879 () tuple3!2900)

(declare-fun mapRest!11871 () (Array (_ BitVec 32) List!23787))

(declare-fun mapKey!11872 () (_ BitVec 32))

(declare-fun mapValue!11871 () List!23787)

(assert (=> mapNonEmpty!11871 (= (arr!3737 (_values!2730 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794879)))))))) (store mapRest!11871 mapKey!11872 mapValue!11871))))

(declare-fun b!2121723 () Bool)

(declare-fun e!1351481 () Bool)

(declare-fun e!1351475 () Bool)

(declare-fun lt!794884 () MutLongMap!2450)

(get-info :version)

(assert (=> b!2121723 (= e!1351481 (and e!1351475 ((_ is LongMap!2450) lt!794884)))))

(assert (=> b!2121723 (= lt!794884 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794879)))))))

(declare-fun b!2121663 () Bool)

(declare-fun e!1351472 () Bool)

(declare-fun e!1351486 () Bool)

(declare-fun e!1351473 () Bool)

(assert (=> b!2121663 (and e!1351472 e!1351486 e!1351473)))

(declare-fun b!2121724 () Bool)

(declare-fun e!1351484 () Bool)

(assert (=> b!2121724 (= e!1351475 e!1351484)))

(declare-fun b!2121725 () Bool)

(declare-fun e!1351487 () Bool)

(assert (=> b!2121725 (= e!1351472 e!1351487)))

(declare-fun b!2121726 () Bool)

(declare-fun e!1351485 () Bool)

(declare-fun lt!794885 () MutLongMap!2451)

(assert (=> b!2121726 (= e!1351483 (and e!1351485 ((_ is LongMap!2451) lt!794885)))))

(assert (=> b!2121726 (= lt!794885 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794879)))))))

(declare-fun b!2121727 () Bool)

(declare-fun e!1351474 () Bool)

(assert (=> b!2121727 (= e!1351474 e!1351481)))

(declare-fun b!2121728 () Bool)

(assert (=> b!2121728 (= e!1351486 e!1351477)))

(declare-fun mapNonEmpty!11872 () Bool)

(declare-fun mapRes!11871 () Bool)

(assert (=> mapNonEmpty!11872 (= mapRes!11871 true)))

(declare-fun mapValue!11872 () List!23786)

(declare-fun mapRest!11872 () (Array (_ BitVec 32) List!23786))

(declare-fun mapKey!11871 () (_ BitVec 32))

(assert (=> mapNonEmpty!11872 (= (arr!3738 (_values!2731 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794879)))))))) (store mapRest!11872 mapKey!11871 mapValue!11872))))

(declare-fun b!2121729 () Bool)

(declare-fun e!1351480 () Bool)

(assert (=> b!2121729 (= e!1351484 e!1351480)))

(declare-fun b!2121730 () Bool)

(declare-fun e!1351479 () Bool)

(assert (=> b!2121730 (= e!1351478 e!1351479)))

(declare-fun b!2121731 () Bool)

(declare-fun e!1351476 () Bool)

(assert (=> b!2121731 (= e!1351480 e!1351476)))

(declare-fun b!2121732 () Bool)

(assert (=> b!2121732 (= e!1351479 mapRes!11871)))

(declare-fun condMapEmpty!11871 () Bool)

(declare-fun mapDefault!11871 () List!23786)

(assert (=> b!2121732 (= condMapEmpty!11871 (= (arr!3738 (_values!2731 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794879)))))))) ((as const (Array (_ BitVec 32) List!23786)) mapDefault!11871)))))

(declare-fun setNonEmpty!14764 () Bool)

(assert (=> setNonEmpty!14764 (= setRes!14764 true)))

(declare-fun setElem!14764 () Context!2470)

(declare-fun setRest!14764 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14764 (= (z!5723 (h!29106 (_2!13574 (_1!13575 lt!794879)))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14764 true) setRest!14764))))

(declare-fun mapIsEmpty!11871 () Bool)

(assert (=> mapIsEmpty!11871 mapRes!11871))

(declare-fun b!2121733 () Bool)

(assert (=> b!2121733 (= e!1351487 setRes!14764)))

(declare-fun condSetEmpty!14764 () Bool)

(assert (=> b!2121733 (= condSetEmpty!14764 (= (z!5723 (h!29106 (_2!13574 (_1!13575 lt!794879)))) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun mapIsEmpty!11872 () Bool)

(assert (=> mapIsEmpty!11872 mapRes!11872))

(declare-fun b!2121734 () Bool)

(assert (=> b!2121734 (= e!1351473 e!1351474)))

(declare-fun b!2121735 () Bool)

(assert (=> b!2121735 (= e!1351485 e!1351482)))

(declare-fun b!2121736 () Bool)

(assert (=> b!2121736 (= e!1351476 mapRes!11872)))

(declare-fun condMapEmpty!11872 () Bool)

(declare-fun mapDefault!11872 () List!23787)

(assert (=> b!2121736 (= condMapEmpty!11872 (= (arr!3737 (_values!2730 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794879)))))))) ((as const (Array (_ BitVec 32) List!23787)) mapDefault!11872)))))

(assert (= (and b!2121733 condSetEmpty!14764) setIsEmpty!14764))

(assert (= (and b!2121733 (not condSetEmpty!14764)) setNonEmpty!14764))

(assert (= b!2121725 b!2121733))

(assert (= (and b!2121663 ((_ is Cons!23705) (_2!13574 (_1!13575 lt!794879)))) b!2121725))

(assert (= (and b!2121732 condMapEmpty!11871) mapIsEmpty!11871))

(assert (= (and b!2121732 (not condMapEmpty!11871)) mapNonEmpty!11872))

(assert (= b!2121730 b!2121732))

(assert (= b!2121722 b!2121730))

(assert (= b!2121735 b!2121722))

(assert (= (and b!2121726 ((_ is LongMap!2451) (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794879)))))) b!2121735))

(assert (= b!2121721 b!2121726))

(assert (= (and b!2121728 ((_ is HashMap!2364) (cache!2745 (_2!13575 lt!794879)))) b!2121721))

(assert (= b!2121663 b!2121728))

(assert (= (and b!2121736 condMapEmpty!11872) mapIsEmpty!11872))

(assert (= (and b!2121736 (not condMapEmpty!11872)) mapNonEmpty!11871))

(assert (= b!2121731 b!2121736))

(assert (= b!2121729 b!2121731))

(assert (= b!2121724 b!2121729))

(assert (= (and b!2121723 ((_ is LongMap!2450) (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794879)))))) b!2121724))

(assert (= b!2121727 b!2121723))

(assert (= (and b!2121734 ((_ is HashMap!2365) (cache!2746 (_3!1920 lt!794879)))) b!2121727))

(assert (= b!2121663 b!2121734))

(declare-fun order!14651 () Int)

(declare-fun lambda!78543 () Int)

(declare-fun order!14649 () Int)

(declare-fun dynLambda!11321 (Int Int) Int)

(declare-fun dynLambda!11322 (Int Int) Int)

(assert (=> b!2121721 (< (dynLambda!11321 order!14649 (defaultValue!2526 (cache!2745 (_2!13575 lt!794879)))) (dynLambda!11322 order!14651 lambda!78543))))

(declare-fun order!14653 () Int)

(declare-fun dynLambda!11323 (Int Int) Int)

(assert (=> b!2121727 (< (dynLambda!11323 order!14653 (defaultValue!2527 (cache!2746 (_3!1920 lt!794879)))) (dynLambda!11322 order!14651 lambda!78543))))

(declare-fun order!14655 () Int)

(declare-fun dynLambda!11324 (Int Int) Int)

(assert (=> b!2121731 (< (dynLambda!11324 order!14655 (defaultEntry!2815 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794879)))))))) (dynLambda!11322 order!14651 lambda!78543))))

(declare-fun order!14657 () Int)

(declare-fun dynLambda!11325 (Int Int) Int)

(assert (=> b!2121730 (< (dynLambda!11325 order!14657 (defaultEntry!2816 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794879)))))))) (dynLambda!11322 order!14651 lambda!78543))))

(declare-fun m!2575297 () Bool)

(assert (=> mapNonEmpty!11871 m!2575297))

(declare-fun m!2575299 () Bool)

(assert (=> mapNonEmpty!11872 m!2575299))

(declare-fun bs!442692 () Bool)

(declare-fun b!2121660 () Bool)

(assert (= bs!442692 (and b!2121660 b!2121663)))

(declare-fun lambda!78544 () Int)

(assert (=> bs!442692 (not (= lambda!78544 lambda!78543))))

(assert (=> b!2121660 true))

(declare-fun b!2121653 () Bool)

(declare-fun e!1351412 () Bool)

(declare-fun input!5507 () BalanceConc!15368)

(declare-fun tp!649510 () Bool)

(declare-fun inv!31293 (Conc!7803) Bool)

(assert (=> b!2121653 (= e!1351412 (and (inv!31293 (c!339727 input!5507)) tp!649510))))

(declare-fun b!2121654 () Bool)

(declare-fun e!1351428 () Bool)

(declare-fun tp!649519 () Bool)

(declare-fun mapRes!11864 () Bool)

(assert (=> b!2121654 (= e!1351428 (and tp!649519 mapRes!11864))))

(declare-fun condMapEmpty!11865 () Bool)

(declare-fun cacheDown!1110 () CacheDown!1624)

(declare-fun mapDefault!11866 () List!23787)

(assert (=> b!2121654 (= condMapEmpty!11865 (= (arr!3737 (_values!2730 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23787)) mapDefault!11866)))))

(declare-fun setIsEmpty!14761 () Bool)

(declare-fun setRes!14761 () Bool)

(assert (=> setIsEmpty!14761 setRes!14761))

(declare-fun b!2121655 () Bool)

(declare-fun e!1351435 () Bool)

(declare-fun isBalanced!2447 (Conc!7803) Bool)

(assert (=> b!2121655 (= e!1351435 (isBalanced!2447 (c!339727 input!5507)))))

(declare-fun b!2121656 () Bool)

(declare-fun res!919056 () Bool)

(declare-fun e!1351439 () Bool)

(assert (=> b!2121656 (=> (not res!919056) (not e!1351439))))

(declare-fun valid!1928 (CacheDown!1624) Bool)

(assert (=> b!2121656 (= res!919056 (valid!1928 cacheDown!1110))))

(declare-fun b!2121657 () Bool)

(declare-fun e!1351433 () Bool)

(declare-fun tp!649506 () Bool)

(assert (=> b!2121657 (= e!1351433 tp!649506)))

(declare-fun b!2121658 () Bool)

(declare-fun e!1351419 () Int)

(declare-fun lt!794873 () Int)

(assert (=> b!2121658 (= e!1351419 (- lt!794873 1))))

(declare-fun e!1351417 () Bool)

(declare-fun e!1351416 () Bool)

(assert (=> b!2121659 (= e!1351417 (and e!1351416 tp!649517))))

(declare-fun res!919058 () Bool)

(assert (=> start!207018 (=> (not res!919058) (not e!1351439))))

(declare-fun totalInput!886 () BalanceConc!15368)

(declare-fun isSuffix!618 (List!23788 List!23788) Bool)

(declare-fun list!9526 (BalanceConc!15368) List!23788)

(assert (=> start!207018 (= res!919058 (isSuffix!618 (list!9526 input!5507) (list!9526 totalInput!886)))))

(assert (=> start!207018 e!1351439))

(declare-datatypes ((Hashable!2366 0))(
  ( (HashableExt!2365 (__x!15532 Int)) )
))
(declare-datatypes ((tuple3!2902 0))(
  ( (tuple3!2903 (_1!13576 (InoxSet Context!2470)) (_2!13576 Int) (_3!1921 Int)) )
))
(declare-datatypes ((tuple2!23310 0))(
  ( (tuple2!23311 (_1!13577 tuple3!2902) (_2!13577 Int)) )
))
(declare-datatypes ((List!23790 0))(
  ( (Nil!23706) (Cons!23706 (h!29107 tuple2!23310) (t!196306 List!23790)) )
))
(declare-datatypes ((array!8423 0))(
  ( (array!8424 (arr!3739 (Array (_ BitVec 32) List!23790)) (size!18525 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4904 0))(
  ( (LongMapFixedSize!4905 (defaultEntry!2817 Int) (mask!6600 (_ BitVec 32)) (extraKeys!2700 (_ BitVec 32)) (zeroValue!2710 List!23790) (minValue!2710 List!23790) (_size!4955 (_ BitVec 32)) (_keys!2749 array!8417) (_values!2732 array!8423) (_vacant!2513 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9633 0))(
  ( (Cell!9634 (v!28235 LongMapFixedSize!4904)) )
))
(declare-datatypes ((MutLongMap!2452 0))(
  ( (LongMap!2452 (underlying!5099 Cell!9633)) (MutLongMapExt!2451 (__x!15533 Int)) )
))
(declare-datatypes ((Cell!9635 0))(
  ( (Cell!9636 (v!28236 MutLongMap!2452)) )
))
(declare-datatypes ((MutableMap!2366 0))(
  ( (MutableMapExt!2365 (__x!15534 Int)) (HashMap!2366 (underlying!5100 Cell!9635) (hashF!4289 Hashable!2366) (_size!4956 (_ BitVec 32)) (defaultValue!2528 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!590 0))(
  ( (CacheFurthestNullable!591 (cache!2747 MutableMap!2366) (totalInput!2906 BalanceConc!15368)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!590)

(declare-fun e!1351420 () Bool)

(declare-fun inv!31294 (CacheFurthestNullable!590) Bool)

(assert (=> start!207018 (and (inv!31294 cacheFurthestNullable!130) e!1351420)))

(declare-fun condSetEmpty!14761 () Bool)

(declare-fun z!3883 () (InoxSet Context!2470))

(assert (=> start!207018 (= condSetEmpty!14761 (= z!3883 ((as const (Array Context!2470 Bool)) false)))))

(assert (=> start!207018 setRes!14761))

(declare-fun inv!31295 (BalanceConc!15368) Bool)

(assert (=> start!207018 (and (inv!31295 input!5507) e!1351412)))

(declare-fun e!1351431 () Bool)

(declare-fun inv!31296 (CacheDown!1624) Bool)

(assert (=> start!207018 (and (inv!31296 cacheDown!1110) e!1351431)))

(declare-fun cacheUp!991 () CacheUp!1638)

(declare-fun e!1351425 () Bool)

(declare-fun inv!31297 (CacheUp!1638) Bool)

(assert (=> start!207018 (and (inv!31297 cacheUp!991) e!1351425)))

(declare-fun e!1351430 () Bool)

(assert (=> start!207018 (and (inv!31295 totalInput!886) e!1351430)))

(declare-fun e!1351410 () Bool)

(declare-fun forall!4862 (List!23789 Int) Bool)

(assert (=> b!2121660 (= e!1351410 (forall!4862 (_2!13574 (_1!13575 lt!794879)) lambda!78544))))

(declare-fun b!2121661 () Bool)

(declare-fun e!1351408 () Bool)

(declare-fun e!1351413 () Bool)

(assert (=> b!2121661 (= e!1351408 e!1351413)))

(declare-fun mapNonEmpty!11864 () Bool)

(declare-fun tp!649507 () Bool)

(declare-fun tp!649515 () Bool)

(assert (=> mapNonEmpty!11864 (= mapRes!11864 (and tp!649507 tp!649515))))

(declare-fun mapRest!11864 () (Array (_ BitVec 32) List!23787))

(declare-fun mapKey!11865 () (_ BitVec 32))

(declare-fun mapValue!11864 () List!23787)

(assert (=> mapNonEmpty!11864 (= (arr!3737 (_values!2730 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110))))))) (store mapRest!11864 mapKey!11865 mapValue!11864))))

(declare-fun b!2121662 () Bool)

(declare-fun e!1351429 () Bool)

(assert (=> b!2121662 (= e!1351413 e!1351429)))

(assert (=> b!2121663 (= e!1351439 (not e!1351435))))

(declare-fun res!919057 () Bool)

(assert (=> b!2121663 (=> res!919057 e!1351435)))

(assert (=> b!2121663 (= res!919057 (>= (+ 1 (- (_1!13574 (_1!13575 lt!794879)) lt!794873)) 0))))

(declare-datatypes ((Unit!37588 0))(
  ( (Unit!37589) )
))
(declare-datatypes ((tuple2!23312 0))(
  ( (tuple2!23313 (_1!13578 Unit!37588) (_2!13578 CacheFurthestNullable!590)) )
))
(declare-fun lt!794877 () tuple2!23312)

(declare-fun lt!794876 () Int)

(declare-fun fillUpCache!6 (List!23789 BalanceConc!15368 Int Int Int CacheFurthestNullable!590) tuple2!23312)

(assert (=> b!2121663 (= lt!794877 (fillUpCache!6 (_2!13574 (_1!13575 lt!794879)) totalInput!886 lt!794876 (_1!13574 (_1!13575 lt!794879)) 0 cacheFurthestNullable!130))))

(assert (=> b!2121663 e!1351410))

(declare-fun res!919061 () Bool)

(assert (=> b!2121663 (=> (not res!919061) (not e!1351410))))

(assert (=> b!2121663 (= res!919061 (forall!4862 (_2!13574 (_1!13575 lt!794879)) lambda!78543))))

(declare-fun furthestNullablePositionStackMem!9 ((InoxSet Context!2470) Int BalanceConc!15368 Int Int List!23789 CacheUp!1638 CacheDown!1624 CacheFurthestNullable!590) tuple3!2900)

(assert (=> b!2121663 (= lt!794879 (furthestNullablePositionStackMem!9 z!3883 lt!794873 totalInput!886 lt!794876 e!1351419 Nil!23705 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))

(declare-fun c!339725 () Bool)

(declare-fun nullableZipper!64 ((InoxSet Context!2470)) Bool)

(assert (=> b!2121663 (= c!339725 (nullableZipper!64 z!3883))))

(declare-fun size!18526 (BalanceConc!15368) Int)

(assert (=> b!2121663 (= lt!794873 (- lt!794876 (size!18526 input!5507)))))

(assert (=> b!2121663 (= lt!794876 (size!18526 totalInput!886))))

(declare-fun b!2121664 () Bool)

(declare-fun e!1351432 () Bool)

(assert (=> b!2121664 (= e!1351420 (and e!1351417 (inv!31295 (totalInput!2906 cacheFurthestNullable!130)) e!1351432))))

(declare-fun tp!649514 () Bool)

(declare-fun e!1351424 () Bool)

(declare-fun e!1351414 () Bool)

(declare-fun tp!649512 () Bool)

(declare-fun array_inv!2676 (array!8417) Bool)

(declare-fun array_inv!2677 (array!8421) Bool)

(assert (=> b!2121665 (= e!1351424 (and tp!649513 tp!649512 tp!649514 (array_inv!2676 (_keys!2748 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991))))))) (array_inv!2677 (_values!2731 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991))))))) e!1351414))))

(declare-fun e!1351422 () Bool)

(declare-fun e!1351421 () Bool)

(assert (=> b!2121666 (= e!1351422 (and e!1351421 tp!649501))))

(declare-fun b!2121667 () Bool)

(declare-fun res!919059 () Bool)

(assert (=> b!2121667 (=> (not res!919059) (not e!1351439))))

(assert (=> b!2121667 (= res!919059 (= (totalInput!2906 cacheFurthestNullable!130) totalInput!886))))

(declare-fun b!2121668 () Bool)

(declare-fun res!919062 () Bool)

(assert (=> b!2121668 (=> (not res!919062) (not e!1351439))))

(declare-fun valid!1929 (CacheFurthestNullable!590) Bool)

(assert (=> b!2121668 (= res!919062 (valid!1929 cacheFurthestNullable!130))))

(declare-fun b!2121669 () Bool)

(declare-fun e!1351427 () Bool)

(declare-fun lt!794874 () MutLongMap!2450)

(assert (=> b!2121669 (= e!1351421 (and e!1351427 ((_ is LongMap!2450) lt!794874)))))

(assert (=> b!2121669 (= lt!794874 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110))))))

(declare-fun b!2121670 () Bool)

(declare-fun tp!649499 () Bool)

(assert (=> b!2121670 (= e!1351430 (and (inv!31293 (c!339727 totalInput!886)) tp!649499))))

(declare-fun b!2121671 () Bool)

(declare-fun tp!649498 () Bool)

(declare-fun mapRes!11865 () Bool)

(assert (=> b!2121671 (= e!1351414 (and tp!649498 mapRes!11865))))

(declare-fun condMapEmpty!11866 () Bool)

(declare-fun mapDefault!11865 () List!23786)

(assert (=> b!2121671 (= condMapEmpty!11866 (= (arr!3738 (_values!2731 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23786)) mapDefault!11865)))))

(declare-fun e!1351411 () Bool)

(declare-fun e!1351415 () Bool)

(assert (=> b!2121672 (= e!1351411 (and e!1351415 tp!649504))))

(declare-fun b!2121673 () Bool)

(declare-fun e!1351409 () Bool)

(declare-fun e!1351418 () Bool)

(assert (=> b!2121673 (= e!1351409 e!1351418)))

(declare-fun tp!649509 () Bool)

(declare-fun e!1351434 () Bool)

(declare-fun tp!649518 () Bool)

(declare-fun array_inv!2678 (array!8423) Bool)

(assert (=> b!2121674 (= e!1351429 (and tp!649508 tp!649509 tp!649518 (array_inv!2676 (_keys!2749 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))))) (array_inv!2678 (_values!2732 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))))) e!1351434))))

(declare-fun b!2121675 () Bool)

(declare-fun e!1351423 () Bool)

(declare-fun e!1351437 () Bool)

(assert (=> b!2121675 (= e!1351423 e!1351437)))

(declare-fun setNonEmpty!14761 () Bool)

(declare-fun tp!649516 () Bool)

(declare-fun setElem!14761 () Context!2470)

(declare-fun inv!31298 (Context!2470) Bool)

(assert (=> setNonEmpty!14761 (= setRes!14761 (and tp!649516 (inv!31298 setElem!14761) e!1351433))))

(declare-fun setRest!14761 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14761 (= z!3883 ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14761 true) setRest!14761))))

(declare-fun mapIsEmpty!11864 () Bool)

(declare-fun mapRes!11866 () Bool)

(assert (=> mapIsEmpty!11864 mapRes!11866))

(declare-fun tp!649505 () Bool)

(declare-fun tp!649497 () Bool)

(declare-fun array_inv!2679 (array!8419) Bool)

(assert (=> b!2121676 (= e!1351418 (and tp!649500 tp!649505 tp!649497 (array_inv!2676 (_keys!2747 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110))))))) (array_inv!2679 (_values!2730 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110))))))) e!1351428))))

(declare-fun b!2121677 () Bool)

(declare-fun res!919060 () Bool)

(assert (=> b!2121677 (=> (not res!919060) (not e!1351439))))

(declare-fun valid!1930 (CacheUp!1638) Bool)

(assert (=> b!2121677 (= res!919060 (valid!1930 cacheUp!991))))

(declare-fun b!2121678 () Bool)

(declare-fun tp!649502 () Bool)

(assert (=> b!2121678 (= e!1351432 (and (inv!31293 (c!339727 (totalInput!2906 cacheFurthestNullable!130))) tp!649502))))

(declare-fun b!2121679 () Bool)

(assert (=> b!2121679 (= e!1351437 e!1351424)))

(declare-fun b!2121680 () Bool)

(declare-fun tp!649495 () Bool)

(assert (=> b!2121680 (= e!1351434 (and tp!649495 mapRes!11866))))

(declare-fun condMapEmpty!11864 () Bool)

(declare-fun mapDefault!11864 () List!23790)

(assert (=> b!2121680 (= condMapEmpty!11864 (= (arr!3739 (_values!2732 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23790)) mapDefault!11864)))))

(declare-fun mapIsEmpty!11865 () Bool)

(assert (=> mapIsEmpty!11865 mapRes!11865))

(declare-fun b!2121681 () Bool)

(declare-fun lt!794878 () MutLongMap!2451)

(assert (=> b!2121681 (= e!1351415 (and e!1351423 ((_ is LongMap!2451) lt!794878)))))

(assert (=> b!2121681 (= lt!794878 (v!28234 (underlying!5097 (cache!2745 cacheUp!991))))))

(declare-fun b!2121682 () Bool)

(assert (=> b!2121682 (= e!1351427 e!1351409)))

(declare-fun b!2121683 () Bool)

(declare-fun lt!794875 () MutLongMap!2452)

(assert (=> b!2121683 (= e!1351416 (and e!1351408 ((_ is LongMap!2452) lt!794875)))))

(assert (=> b!2121683 (= lt!794875 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))))

(declare-fun b!2121684 () Bool)

(assert (=> b!2121684 (= e!1351425 e!1351411)))

(declare-fun b!2121685 () Bool)

(assert (=> b!2121685 (= e!1351431 e!1351422)))

(declare-fun mapIsEmpty!11866 () Bool)

(assert (=> mapIsEmpty!11866 mapRes!11864))

(declare-fun b!2121686 () Bool)

(assert (=> b!2121686 (= e!1351419 (- 1))))

(declare-fun mapNonEmpty!11865 () Bool)

(declare-fun tp!649520 () Bool)

(declare-fun tp!649496 () Bool)

(assert (=> mapNonEmpty!11865 (= mapRes!11866 (and tp!649520 tp!649496))))

(declare-fun mapValue!11866 () List!23790)

(declare-fun mapKey!11866 () (_ BitVec 32))

(declare-fun mapRest!11866 () (Array (_ BitVec 32) List!23790))

(assert (=> mapNonEmpty!11865 (= (arr!3739 (_values!2732 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))))) (store mapRest!11866 mapKey!11866 mapValue!11866))))

(declare-fun mapNonEmpty!11866 () Bool)

(declare-fun tp!649511 () Bool)

(declare-fun tp!649503 () Bool)

(assert (=> mapNonEmpty!11866 (= mapRes!11865 (and tp!649511 tp!649503))))

(declare-fun mapValue!11865 () List!23786)

(declare-fun mapKey!11864 () (_ BitVec 32))

(declare-fun mapRest!11865 () (Array (_ BitVec 32) List!23786))

(assert (=> mapNonEmpty!11866 (= (arr!3738 (_values!2731 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991))))))) (store mapRest!11865 mapKey!11864 mapValue!11865))))

(assert (= (and start!207018 res!919058) b!2121677))

(assert (= (and b!2121677 res!919060) b!2121656))

(assert (= (and b!2121656 res!919056) b!2121668))

(assert (= (and b!2121668 res!919062) b!2121667))

(assert (= (and b!2121667 res!919059) b!2121663))

(assert (= (and b!2121663 c!339725) b!2121658))

(assert (= (and b!2121663 (not c!339725)) b!2121686))

(assert (= (and b!2121663 res!919061) b!2121660))

(assert (= (and b!2121663 (not res!919057)) b!2121655))

(assert (= (and b!2121680 condMapEmpty!11864) mapIsEmpty!11864))

(assert (= (and b!2121680 (not condMapEmpty!11864)) mapNonEmpty!11865))

(assert (= b!2121674 b!2121680))

(assert (= b!2121662 b!2121674))

(assert (= b!2121661 b!2121662))

(assert (= (and b!2121683 ((_ is LongMap!2452) (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))) b!2121661))

(assert (= b!2121659 b!2121683))

(assert (= (and b!2121664 ((_ is HashMap!2366) (cache!2747 cacheFurthestNullable!130))) b!2121659))

(assert (= b!2121664 b!2121678))

(assert (= start!207018 b!2121664))

(assert (= (and start!207018 condSetEmpty!14761) setIsEmpty!14761))

(assert (= (and start!207018 (not condSetEmpty!14761)) setNonEmpty!14761))

(assert (= setNonEmpty!14761 b!2121657))

(assert (= start!207018 b!2121653))

(assert (= (and b!2121654 condMapEmpty!11865) mapIsEmpty!11866))

(assert (= (and b!2121654 (not condMapEmpty!11865)) mapNonEmpty!11864))

(assert (= b!2121676 b!2121654))

(assert (= b!2121673 b!2121676))

(assert (= b!2121682 b!2121673))

(assert (= (and b!2121669 ((_ is LongMap!2450) (v!28232 (underlying!5098 (cache!2746 cacheDown!1110))))) b!2121682))

(assert (= b!2121666 b!2121669))

(assert (= (and b!2121685 ((_ is HashMap!2365) (cache!2746 cacheDown!1110))) b!2121666))

(assert (= start!207018 b!2121685))

(assert (= (and b!2121671 condMapEmpty!11866) mapIsEmpty!11865))

(assert (= (and b!2121671 (not condMapEmpty!11866)) mapNonEmpty!11866))

(assert (= b!2121665 b!2121671))

(assert (= b!2121679 b!2121665))

(assert (= b!2121675 b!2121679))

(assert (= (and b!2121681 ((_ is LongMap!2451) (v!28234 (underlying!5097 (cache!2745 cacheUp!991))))) b!2121675))

(assert (= b!2121672 b!2121681))

(assert (= (and b!2121684 ((_ is HashMap!2364) (cache!2745 cacheUp!991))) b!2121672))

(assert (= start!207018 b!2121684))

(assert (= start!207018 b!2121670))

(declare-fun m!2575301 () Bool)

(assert (=> b!2121660 m!2575301))

(declare-fun m!2575303 () Bool)

(assert (=> setNonEmpty!14761 m!2575303))

(declare-fun m!2575305 () Bool)

(assert (=> b!2121678 m!2575305))

(declare-fun m!2575307 () Bool)

(assert (=> mapNonEmpty!11864 m!2575307))

(declare-fun m!2575309 () Bool)

(assert (=> b!2121676 m!2575309))

(declare-fun m!2575311 () Bool)

(assert (=> b!2121676 m!2575311))

(declare-fun m!2575313 () Bool)

(assert (=> b!2121674 m!2575313))

(declare-fun m!2575315 () Bool)

(assert (=> b!2121674 m!2575315))

(declare-fun m!2575317 () Bool)

(assert (=> b!2121663 m!2575317))

(declare-fun m!2575319 () Bool)

(assert (=> b!2121663 m!2575319))

(declare-fun m!2575321 () Bool)

(assert (=> b!2121663 m!2575321))

(declare-fun m!2575323 () Bool)

(assert (=> b!2121663 m!2575323))

(declare-fun m!2575325 () Bool)

(assert (=> b!2121663 m!2575325))

(declare-fun m!2575327 () Bool)

(assert (=> b!2121663 m!2575327))

(declare-fun m!2575329 () Bool)

(assert (=> b!2121655 m!2575329))

(declare-fun m!2575331 () Bool)

(assert (=> mapNonEmpty!11865 m!2575331))

(declare-fun m!2575333 () Bool)

(assert (=> b!2121653 m!2575333))

(declare-fun m!2575335 () Bool)

(assert (=> start!207018 m!2575335))

(declare-fun m!2575337 () Bool)

(assert (=> start!207018 m!2575337))

(declare-fun m!2575339 () Bool)

(assert (=> start!207018 m!2575339))

(declare-fun m!2575341 () Bool)

(assert (=> start!207018 m!2575341))

(declare-fun m!2575343 () Bool)

(assert (=> start!207018 m!2575343))

(declare-fun m!2575345 () Bool)

(assert (=> start!207018 m!2575345))

(assert (=> start!207018 m!2575341))

(assert (=> start!207018 m!2575335))

(declare-fun m!2575347 () Bool)

(assert (=> start!207018 m!2575347))

(declare-fun m!2575349 () Bool)

(assert (=> start!207018 m!2575349))

(declare-fun m!2575351 () Bool)

(assert (=> b!2121656 m!2575351))

(declare-fun m!2575353 () Bool)

(assert (=> b!2121668 m!2575353))

(declare-fun m!2575355 () Bool)

(assert (=> b!2121665 m!2575355))

(declare-fun m!2575357 () Bool)

(assert (=> b!2121665 m!2575357))

(declare-fun m!2575359 () Bool)

(assert (=> b!2121664 m!2575359))

(declare-fun m!2575361 () Bool)

(assert (=> mapNonEmpty!11866 m!2575361))

(declare-fun m!2575363 () Bool)

(assert (=> b!2121670 m!2575363))

(declare-fun m!2575365 () Bool)

(assert (=> b!2121677 m!2575365))

(check-sat (not b!2121664) (not mapNonEmpty!11865) b_and!171225 b_and!171221 b_and!171219 (not b!2121657) (not mapNonEmpty!11864) (not b!2121732) (not b!2121670) (not b!2121653) (not setNonEmpty!14764) b_and!171227 (not b_next!62351) (not b_next!62341) (not b!2121663) (not b_next!62345) (not b!2121654) (not b!2121656) (not b!2121665) (not b_next!62349) (not mapNonEmpty!11872) (not b!2121668) (not b!2121674) (not b!2121730) (not b!2121731) (not b!2121655) b_and!171217 (not b_next!62347) (not b!2121677) (not mapNonEmpty!11866) (not b!2121676) (not b!2121678) (not mapNonEmpty!11871) (not b!2121660) (not b!2121736) (not setNonEmpty!14761) (not b!2121671) (not b!2121725) (not b!2121680) (not b_next!62343) b_and!171223 (not start!207018))
(check-sat b_and!171225 b_and!171221 b_and!171219 (not b_next!62345) (not b_next!62349) b_and!171227 (not b_next!62343) b_and!171223 (not b_next!62351) (not b_next!62341) b_and!171217 (not b_next!62347))
(get-model)

(declare-fun d!643390 () Bool)

(declare-fun validCacheMapFurthestNullable!93 (MutableMap!2366 BalanceConc!15368) Bool)

(assert (=> d!643390 (= (valid!1929 cacheFurthestNullable!130) (validCacheMapFurthestNullable!93 (cache!2747 cacheFurthestNullable!130) (totalInput!2906 cacheFurthestNullable!130)))))

(declare-fun bs!442693 () Bool)

(assert (= bs!442693 d!643390))

(declare-fun m!2575367 () Bool)

(assert (=> bs!442693 m!2575367))

(assert (=> b!2121668 d!643390))

(declare-fun d!643392 () Bool)

(declare-fun validCacheMapUp!243 (MutableMap!2364) Bool)

(assert (=> d!643392 (= (valid!1930 cacheUp!991) (validCacheMapUp!243 (cache!2745 cacheUp!991)))))

(declare-fun bs!442694 () Bool)

(assert (= bs!442694 d!643392))

(declare-fun m!2575369 () Bool)

(assert (=> bs!442694 m!2575369))

(assert (=> b!2121677 d!643392))

(declare-fun d!643394 () Bool)

(assert (=> d!643394 (= (array_inv!2676 (_keys!2747 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110))))))) (bvsge (size!18522 (_keys!2747 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2121676 d!643394))

(declare-fun d!643396 () Bool)

(assert (=> d!643396 (= (array_inv!2679 (_values!2730 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110))))))) (bvsge (size!18523 (_values!2730 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2121676 d!643396))

(declare-fun d!643398 () Bool)

(declare-fun c!339730 () Bool)

(assert (=> d!643398 (= c!339730 ((_ is Node!7803) (c!339727 (totalInput!2906 cacheFurthestNullable!130))))))

(declare-fun e!1351492 () Bool)

(assert (=> d!643398 (= (inv!31293 (c!339727 (totalInput!2906 cacheFurthestNullable!130))) e!1351492)))

(declare-fun b!2121745 () Bool)

(declare-fun inv!31299 (Conc!7803) Bool)

(assert (=> b!2121745 (= e!1351492 (inv!31299 (c!339727 (totalInput!2906 cacheFurthestNullable!130))))))

(declare-fun b!2121746 () Bool)

(declare-fun e!1351493 () Bool)

(assert (=> b!2121746 (= e!1351492 e!1351493)))

(declare-fun res!919066 () Bool)

(assert (=> b!2121746 (= res!919066 (not ((_ is Leaf!11403) (c!339727 (totalInput!2906 cacheFurthestNullable!130)))))))

(assert (=> b!2121746 (=> res!919066 e!1351493)))

(declare-fun b!2121747 () Bool)

(declare-fun inv!31300 (Conc!7803) Bool)

(assert (=> b!2121747 (= e!1351493 (inv!31300 (c!339727 (totalInput!2906 cacheFurthestNullable!130))))))

(assert (= (and d!643398 c!339730) b!2121745))

(assert (= (and d!643398 (not c!339730)) b!2121746))

(assert (= (and b!2121746 (not res!919066)) b!2121747))

(declare-fun m!2575371 () Bool)

(assert (=> b!2121745 m!2575371))

(declare-fun m!2575373 () Bool)

(assert (=> b!2121747 m!2575373))

(assert (=> b!2121678 d!643398))

(declare-fun d!643400 () Bool)

(declare-fun res!919071 () Bool)

(declare-fun e!1351498 () Bool)

(assert (=> d!643400 (=> res!919071 e!1351498)))

(assert (=> d!643400 (= res!919071 ((_ is Nil!23705) (_2!13574 (_1!13575 lt!794879))))))

(assert (=> d!643400 (= (forall!4862 (_2!13574 (_1!13575 lt!794879)) lambda!78544) e!1351498)))

(declare-fun b!2121752 () Bool)

(declare-fun e!1351499 () Bool)

(assert (=> b!2121752 (= e!1351498 e!1351499)))

(declare-fun res!919072 () Bool)

(assert (=> b!2121752 (=> (not res!919072) (not e!1351499))))

(declare-fun dynLambda!11326 (Int StackFrame!42) Bool)

(assert (=> b!2121752 (= res!919072 (dynLambda!11326 lambda!78544 (h!29106 (_2!13574 (_1!13575 lt!794879)))))))

(declare-fun b!2121753 () Bool)

(assert (=> b!2121753 (= e!1351499 (forall!4862 (t!196305 (_2!13574 (_1!13575 lt!794879))) lambda!78544))))

(assert (= (and d!643400 (not res!919071)) b!2121752))

(assert (= (and b!2121752 res!919072) b!2121753))

(declare-fun b_lambda!70457 () Bool)

(assert (=> (not b_lambda!70457) (not b!2121752)))

(declare-fun m!2575375 () Bool)

(assert (=> b!2121752 m!2575375))

(declare-fun m!2575377 () Bool)

(assert (=> b!2121753 m!2575377))

(assert (=> b!2121660 d!643400))

(declare-fun d!643402 () Bool)

(declare-fun c!339731 () Bool)

(assert (=> d!643402 (= c!339731 ((_ is Node!7803) (c!339727 totalInput!886)))))

(declare-fun e!1351500 () Bool)

(assert (=> d!643402 (= (inv!31293 (c!339727 totalInput!886)) e!1351500)))

(declare-fun b!2121754 () Bool)

(assert (=> b!2121754 (= e!1351500 (inv!31299 (c!339727 totalInput!886)))))

(declare-fun b!2121755 () Bool)

(declare-fun e!1351501 () Bool)

(assert (=> b!2121755 (= e!1351500 e!1351501)))

(declare-fun res!919073 () Bool)

(assert (=> b!2121755 (= res!919073 (not ((_ is Leaf!11403) (c!339727 totalInput!886))))))

(assert (=> b!2121755 (=> res!919073 e!1351501)))

(declare-fun b!2121756 () Bool)

(assert (=> b!2121756 (= e!1351501 (inv!31300 (c!339727 totalInput!886)))))

(assert (= (and d!643402 c!339731) b!2121754))

(assert (= (and d!643402 (not c!339731)) b!2121755))

(assert (= (and b!2121755 (not res!919073)) b!2121756))

(declare-fun m!2575379 () Bool)

(assert (=> b!2121754 m!2575379))

(declare-fun m!2575381 () Bool)

(assert (=> b!2121756 m!2575381))

(assert (=> b!2121670 d!643402))

(declare-fun d!643404 () Bool)

(declare-fun c!339732 () Bool)

(assert (=> d!643404 (= c!339732 ((_ is Node!7803) (c!339727 input!5507)))))

(declare-fun e!1351502 () Bool)

(assert (=> d!643404 (= (inv!31293 (c!339727 input!5507)) e!1351502)))

(declare-fun b!2121757 () Bool)

(assert (=> b!2121757 (= e!1351502 (inv!31299 (c!339727 input!5507)))))

(declare-fun b!2121758 () Bool)

(declare-fun e!1351503 () Bool)

(assert (=> b!2121758 (= e!1351502 e!1351503)))

(declare-fun res!919074 () Bool)

(assert (=> b!2121758 (= res!919074 (not ((_ is Leaf!11403) (c!339727 input!5507))))))

(assert (=> b!2121758 (=> res!919074 e!1351503)))

(declare-fun b!2121759 () Bool)

(assert (=> b!2121759 (= e!1351503 (inv!31300 (c!339727 input!5507)))))

(assert (= (and d!643404 c!339732) b!2121757))

(assert (= (and d!643404 (not c!339732)) b!2121758))

(assert (= (and b!2121758 (not res!919074)) b!2121759))

(declare-fun m!2575383 () Bool)

(assert (=> b!2121757 m!2575383))

(declare-fun m!2575385 () Bool)

(assert (=> b!2121759 m!2575385))

(assert (=> b!2121653 d!643404))

(declare-fun d!643406 () Bool)

(declare-fun list!9527 (Conc!7803) List!23788)

(assert (=> d!643406 (= (list!9526 input!5507) (list!9527 (c!339727 input!5507)))))

(declare-fun bs!442695 () Bool)

(assert (= bs!442695 d!643406))

(declare-fun m!2575387 () Bool)

(assert (=> bs!442695 m!2575387))

(assert (=> start!207018 d!643406))

(declare-fun d!643408 () Bool)

(assert (=> d!643408 (= (inv!31295 totalInput!886) (isBalanced!2447 (c!339727 totalInput!886)))))

(declare-fun bs!442696 () Bool)

(assert (= bs!442696 d!643408))

(declare-fun m!2575389 () Bool)

(assert (=> bs!442696 m!2575389))

(assert (=> start!207018 d!643408))

(declare-fun d!643410 () Bool)

(assert (=> d!643410 (= (inv!31295 input!5507) (isBalanced!2447 (c!339727 input!5507)))))

(declare-fun bs!442697 () Bool)

(assert (= bs!442697 d!643410))

(assert (=> bs!442697 m!2575329))

(assert (=> start!207018 d!643410))

(declare-fun d!643412 () Bool)

(assert (=> d!643412 (= (list!9526 totalInput!886) (list!9527 (c!339727 totalInput!886)))))

(declare-fun bs!442698 () Bool)

(assert (= bs!442698 d!643412))

(declare-fun m!2575391 () Bool)

(assert (=> bs!442698 m!2575391))

(assert (=> start!207018 d!643412))

(declare-fun d!643414 () Bool)

(declare-fun res!919077 () Bool)

(declare-fun e!1351506 () Bool)

(assert (=> d!643414 (=> (not res!919077) (not e!1351506))))

(assert (=> d!643414 (= res!919077 ((_ is HashMap!2364) (cache!2745 cacheUp!991)))))

(assert (=> d!643414 (= (inv!31297 cacheUp!991) e!1351506)))

(declare-fun b!2121762 () Bool)

(assert (=> b!2121762 (= e!1351506 (validCacheMapUp!243 (cache!2745 cacheUp!991)))))

(assert (= (and d!643414 res!919077) b!2121762))

(assert (=> b!2121762 m!2575369))

(assert (=> start!207018 d!643414))

(declare-fun d!643416 () Bool)

(declare-fun res!919080 () Bool)

(declare-fun e!1351509 () Bool)

(assert (=> d!643416 (=> (not res!919080) (not e!1351509))))

(assert (=> d!643416 (= res!919080 ((_ is HashMap!2365) (cache!2746 cacheDown!1110)))))

(assert (=> d!643416 (= (inv!31296 cacheDown!1110) e!1351509)))

(declare-fun b!2121765 () Bool)

(declare-fun validCacheMapDown!241 (MutableMap!2365) Bool)

(assert (=> b!2121765 (= e!1351509 (validCacheMapDown!241 (cache!2746 cacheDown!1110)))))

(assert (= (and d!643416 res!919080) b!2121765))

(declare-fun m!2575393 () Bool)

(assert (=> b!2121765 m!2575393))

(assert (=> start!207018 d!643416))

(declare-fun d!643418 () Bool)

(declare-fun res!919083 () Bool)

(declare-fun e!1351512 () Bool)

(assert (=> d!643418 (=> (not res!919083) (not e!1351512))))

(assert (=> d!643418 (= res!919083 ((_ is HashMap!2366) (cache!2747 cacheFurthestNullable!130)))))

(assert (=> d!643418 (= (inv!31294 cacheFurthestNullable!130) e!1351512)))

(declare-fun b!2121768 () Bool)

(assert (=> b!2121768 (= e!1351512 (validCacheMapFurthestNullable!93 (cache!2747 cacheFurthestNullable!130) (totalInput!2906 cacheFurthestNullable!130)))))

(assert (= (and d!643418 res!919083) b!2121768))

(assert (=> b!2121768 m!2575367))

(assert (=> start!207018 d!643418))

(declare-fun d!643420 () Bool)

(declare-fun e!1351515 () Bool)

(assert (=> d!643420 e!1351515))

(declare-fun res!919086 () Bool)

(assert (=> d!643420 (=> res!919086 e!1351515)))

(declare-fun lt!794888 () Bool)

(assert (=> d!643420 (= res!919086 (not lt!794888))))

(declare-fun drop!1182 (List!23788 Int) List!23788)

(declare-fun size!18527 (List!23788) Int)

(assert (=> d!643420 (= lt!794888 (= (list!9526 input!5507) (drop!1182 (list!9526 totalInput!886) (- (size!18527 (list!9526 totalInput!886)) (size!18527 (list!9526 input!5507))))))))

(assert (=> d!643420 (= (isSuffix!618 (list!9526 input!5507) (list!9526 totalInput!886)) lt!794888)))

(declare-fun b!2121771 () Bool)

(assert (=> b!2121771 (= e!1351515 (>= (size!18527 (list!9526 totalInput!886)) (size!18527 (list!9526 input!5507))))))

(assert (= (and d!643420 (not res!919086)) b!2121771))

(assert (=> d!643420 m!2575335))

(declare-fun m!2575395 () Bool)

(assert (=> d!643420 m!2575395))

(assert (=> d!643420 m!2575341))

(declare-fun m!2575397 () Bool)

(assert (=> d!643420 m!2575397))

(assert (=> d!643420 m!2575335))

(declare-fun m!2575399 () Bool)

(assert (=> d!643420 m!2575399))

(assert (=> b!2121771 m!2575335))

(assert (=> b!2121771 m!2575395))

(assert (=> b!2121771 m!2575341))

(assert (=> b!2121771 m!2575397))

(assert (=> start!207018 d!643420))

(declare-fun b!2121782 () Bool)

(declare-fun e!1351523 () tuple2!23312)

(declare-fun lt!794899 () tuple2!23312)

(assert (=> b!2121782 (= e!1351523 (tuple2!23313 (_1!13578 lt!794899) (_2!13578 lt!794899)))))

(declare-fun c!339737 () Bool)

(assert (=> b!2121782 (= c!339737 (and (> lt!794876 1048576) (not (= (- 0 (* 10 (ite (>= 0 0) (div 0 10) (- (div (- 0) 10))))) 0))))))

(declare-fun e!1351524 () tuple2!23312)

(assert (=> b!2121782 (= lt!794899 (fillUpCache!6 (t!196305 (_2!13574 (_1!13575 lt!794879))) totalInput!886 lt!794876 (_1!13574 (_1!13575 lt!794879)) (+ 0 1) (_2!13578 e!1351524)))))

(declare-fun b!2121783 () Bool)

(declare-fun Unit!37590 () Unit!37588)

(assert (=> b!2121783 (= e!1351523 (tuple2!23313 Unit!37590 cacheFurthestNullable!130))))

(declare-fun b!2121784 () Bool)

(declare-fun Unit!37591 () Unit!37588)

(assert (=> b!2121784 (= e!1351524 (tuple2!23313 Unit!37591 cacheFurthestNullable!130))))

(declare-fun d!643422 () Bool)

(declare-fun e!1351522 () Bool)

(assert (=> d!643422 e!1351522))

(declare-fun res!919090 () Bool)

(assert (=> d!643422 (=> (not res!919090) (not e!1351522))))

(declare-fun lt!794897 () tuple2!23312)

(assert (=> d!643422 (= res!919090 (valid!1929 (_2!13578 lt!794897)))))

(assert (=> d!643422 (= lt!794897 e!1351523)))

(declare-fun c!339738 () Bool)

(assert (=> d!643422 (= c!339738 ((_ is Nil!23705) (_2!13574 (_1!13575 lt!794879))))))

(assert (=> d!643422 (valid!1929 cacheFurthestNullable!130)))

(assert (=> d!643422 (= (fillUpCache!6 (_2!13574 (_1!13575 lt!794879)) totalInput!886 lt!794876 (_1!13574 (_1!13575 lt!794879)) 0 cacheFurthestNullable!130) lt!794897)))

(declare-fun b!2121785 () Bool)

(assert (=> b!2121785 (= e!1351522 (= (totalInput!2906 (_2!13578 lt!794897)) totalInput!886))))

(declare-fun b!2121786 () Bool)

(declare-fun lt!794898 () tuple2!23312)

(declare-fun update!85 (CacheFurthestNullable!590 (InoxSet Context!2470) Int Int Int BalanceConc!15368) tuple2!23312)

(assert (=> b!2121786 (= lt!794898 (update!85 cacheFurthestNullable!130 (z!5723 (h!29106 (_2!13574 (_1!13575 lt!794879)))) (from!2621 (h!29106 (_2!13574 (_1!13575 lt!794879)))) (lastNullablePos!308 (h!29106 (_2!13574 (_1!13575 lt!794879)))) (_1!13574 (_1!13575 lt!794879)) totalInput!886))))

(declare-fun lt!794900 () Unit!37588)

(declare-fun lemmaInvariant!379 (CacheFurthestNullable!590) Unit!37588)

(assert (=> b!2121786 (= lt!794900 (lemmaInvariant!379 cacheFurthestNullable!130))))

(assert (=> b!2121786 (= e!1351524 (tuple2!23313 (_1!13578 lt!794898) (_2!13578 lt!794898)))))

(assert (= (and d!643422 c!339738) b!2121783))

(assert (= (and d!643422 (not c!339738)) b!2121782))

(assert (= (and b!2121782 c!339737) b!2121784))

(assert (= (and b!2121782 (not c!339737)) b!2121786))

(assert (= (and d!643422 res!919090) b!2121785))

(declare-fun m!2575401 () Bool)

(assert (=> b!2121782 m!2575401))

(declare-fun m!2575403 () Bool)

(assert (=> d!643422 m!2575403))

(assert (=> d!643422 m!2575353))

(declare-fun m!2575405 () Bool)

(assert (=> b!2121786 m!2575405))

(declare-fun m!2575407 () Bool)

(assert (=> b!2121786 m!2575407))

(assert (=> b!2121663 d!643422))

(declare-fun d!643424 () Bool)

(declare-fun lt!794903 () Int)

(assert (=> d!643424 (= lt!794903 (size!18527 (list!9526 input!5507)))))

(declare-fun size!18528 (Conc!7803) Int)

(assert (=> d!643424 (= lt!794903 (size!18528 (c!339727 input!5507)))))

(assert (=> d!643424 (= (size!18526 input!5507) lt!794903)))

(declare-fun bs!442699 () Bool)

(assert (= bs!442699 d!643424))

(assert (=> bs!442699 m!2575341))

(assert (=> bs!442699 m!2575341))

(assert (=> bs!442699 m!2575397))

(declare-fun m!2575409 () Bool)

(assert (=> bs!442699 m!2575409))

(assert (=> b!2121663 d!643424))

(declare-fun d!643426 () Bool)

(declare-fun lambda!78547 () Int)

(declare-fun exists!691 ((InoxSet Context!2470) Int) Bool)

(assert (=> d!643426 (= (nullableZipper!64 z!3883) (exists!691 z!3883 lambda!78547))))

(declare-fun bs!442700 () Bool)

(assert (= bs!442700 d!643426))

(declare-fun m!2575411 () Bool)

(assert (=> bs!442700 m!2575411))

(assert (=> b!2121663 d!643426))

(declare-fun bs!442701 () Bool)

(declare-fun d!643428 () Bool)

(assert (= bs!442701 (and d!643428 b!2121663)))

(declare-fun lambda!78562 () Int)

(declare-fun lt!794943 () Int)

(assert (=> bs!442701 (= (= lt!794943 (_1!13574 (_1!13575 lt!794879))) (= lambda!78562 lambda!78543))))

(declare-fun bs!442702 () Bool)

(assert (= bs!442702 (and d!643428 b!2121660)))

(assert (=> bs!442702 (not (= lambda!78562 lambda!78544))))

(assert (=> d!643428 true))

(declare-fun bs!442703 () Bool)

(declare-fun b!2121823 () Bool)

(assert (= bs!442703 (and b!2121823 b!2121663)))

(declare-fun lambda!78563 () Int)

(assert (=> bs!442703 (= (= e!1351419 (_1!13574 (_1!13575 lt!794879))) (= lambda!78563 lambda!78543))))

(declare-fun bs!442704 () Bool)

(assert (= bs!442704 (and b!2121823 b!2121660)))

(assert (=> bs!442704 (not (= lambda!78563 lambda!78544))))

(declare-fun bs!442705 () Bool)

(assert (= bs!442705 (and b!2121823 d!643428)))

(assert (=> bs!442705 (= (= e!1351419 lt!794943) (= lambda!78563 lambda!78562))))

(assert (=> b!2121823 true))

(declare-fun bs!442706 () Bool)

(declare-fun b!2121819 () Bool)

(assert (= bs!442706 (and b!2121819 b!2121663)))

(declare-fun lambda!78564 () Int)

(declare-fun lt!794935 () Int)

(assert (=> bs!442706 (= (= lt!794935 (_1!13574 (_1!13575 lt!794879))) (= lambda!78564 lambda!78543))))

(declare-fun bs!442707 () Bool)

(assert (= bs!442707 (and b!2121819 b!2121660)))

(assert (=> bs!442707 (not (= lambda!78564 lambda!78544))))

(declare-fun bs!442708 () Bool)

(assert (= bs!442708 (and b!2121819 d!643428)))

(assert (=> bs!442708 (= (= lt!794935 lt!794943) (= lambda!78564 lambda!78562))))

(declare-fun bs!442709 () Bool)

(assert (= bs!442709 (and b!2121819 b!2121823)))

(assert (=> bs!442709 (= (= lt!794935 e!1351419) (= lambda!78564 lambda!78563))))

(assert (=> b!2121819 true))

(declare-fun bs!442710 () Bool)

(declare-fun b!2121817 () Bool)

(assert (= bs!442710 (and b!2121817 b!2121660)))

(declare-fun lambda!78565 () Int)

(assert (=> bs!442710 (not (= lambda!78565 lambda!78544))))

(declare-fun bs!442711 () Bool)

(assert (= bs!442711 (and b!2121817 b!2121823)))

(declare-fun lt!794945 () tuple3!2900)

(assert (=> bs!442711 (= (= (_1!13574 (_1!13575 lt!794945)) e!1351419) (= lambda!78565 lambda!78563))))

(declare-fun bs!442712 () Bool)

(assert (= bs!442712 (and b!2121817 b!2121819)))

(assert (=> bs!442712 (= (= (_1!13574 (_1!13575 lt!794945)) lt!794935) (= lambda!78565 lambda!78564))))

(declare-fun bs!442713 () Bool)

(assert (= bs!442713 (and b!2121817 d!643428)))

(assert (=> bs!442713 (= (= (_1!13574 (_1!13575 lt!794945)) lt!794943) (= lambda!78565 lambda!78562))))

(declare-fun bs!442714 () Bool)

(assert (= bs!442714 (and b!2121817 b!2121663)))

(assert (=> bs!442714 (= (= (_1!13574 (_1!13575 lt!794945)) (_1!13574 (_1!13575 lt!794879))) (= lambda!78565 lambda!78543))))

(declare-fun b!2121828 () Bool)

(declare-fun e!1351545 () Bool)

(declare-fun e!1351551 () Bool)

(assert (=> b!2121828 (= e!1351545 e!1351551)))

(declare-fun b!2121829 () Bool)

(declare-fun e!1351550 () Bool)

(declare-fun e!1351546 () Bool)

(assert (=> b!2121829 (= e!1351550 e!1351546)))

(declare-fun setIsEmpty!14765 () Bool)

(declare-fun setRes!14765 () Bool)

(assert (=> setIsEmpty!14765 setRes!14765))

(declare-fun mapNonEmpty!11873 () Bool)

(declare-fun mapRes!11874 () Bool)

(assert (=> mapNonEmpty!11873 (= mapRes!11874 true)))

(declare-fun mapKey!11874 () (_ BitVec 32))

(declare-fun mapRest!11873 () (Array (_ BitVec 32) List!23787))

(declare-fun mapValue!11873 () List!23787)

(assert (=> mapNonEmpty!11873 (= (arr!3737 (_values!2730 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794945)))))))) (store mapRest!11873 mapKey!11874 mapValue!11873))))

(declare-fun b!2121830 () Bool)

(declare-fun e!1351549 () Bool)

(declare-fun e!1351543 () Bool)

(declare-fun lt!794946 () MutLongMap!2450)

(assert (=> b!2121830 (= e!1351549 (and e!1351543 ((_ is LongMap!2450) lt!794946)))))

(assert (=> b!2121830 (= lt!794946 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794945)))))))

(declare-fun e!1351540 () Bool)

(declare-fun e!1351554 () Bool)

(declare-fun e!1351541 () Bool)

(assert (=> b!2121817 (and e!1351540 e!1351554 e!1351541)))

(declare-fun b!2121831 () Bool)

(declare-fun e!1351552 () Bool)

(assert (=> b!2121831 (= e!1351543 e!1351552)))

(declare-fun b!2121832 () Bool)

(declare-fun e!1351555 () Bool)

(assert (=> b!2121832 (= e!1351540 e!1351555)))

(declare-fun b!2121833 () Bool)

(declare-fun e!1351553 () Bool)

(declare-fun lt!794947 () MutLongMap!2451)

(assert (=> b!2121833 (= e!1351551 (and e!1351553 ((_ is LongMap!2451) lt!794947)))))

(assert (=> b!2121833 (= lt!794947 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794945)))))))

(declare-fun b!2121834 () Bool)

(declare-fun e!1351542 () Bool)

(assert (=> b!2121834 (= e!1351542 e!1351549)))

(declare-fun b!2121835 () Bool)

(assert (=> b!2121835 (= e!1351554 e!1351545)))

(declare-fun mapNonEmpty!11874 () Bool)

(declare-fun mapRes!11873 () Bool)

(assert (=> mapNonEmpty!11874 (= mapRes!11873 true)))

(declare-fun mapValue!11874 () List!23786)

(declare-fun mapKey!11873 () (_ BitVec 32))

(declare-fun mapRest!11874 () (Array (_ BitVec 32) List!23786))

(assert (=> mapNonEmpty!11874 (= (arr!3738 (_values!2731 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794945)))))))) (store mapRest!11874 mapKey!11873 mapValue!11874))))

(declare-fun b!2121836 () Bool)

(declare-fun e!1351548 () Bool)

(assert (=> b!2121836 (= e!1351552 e!1351548)))

(declare-fun b!2121837 () Bool)

(declare-fun e!1351547 () Bool)

(assert (=> b!2121837 (= e!1351546 e!1351547)))

(declare-fun b!2121838 () Bool)

(declare-fun e!1351544 () Bool)

(assert (=> b!2121838 (= e!1351548 e!1351544)))

(declare-fun b!2121839 () Bool)

(assert (=> b!2121839 (= e!1351547 mapRes!11873)))

(declare-fun condMapEmpty!11873 () Bool)

(declare-fun mapDefault!11873 () List!23786)

(assert (=> b!2121839 (= condMapEmpty!11873 (= (arr!3738 (_values!2731 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794945)))))))) ((as const (Array (_ BitVec 32) List!23786)) mapDefault!11873)))))

(declare-fun setNonEmpty!14765 () Bool)

(assert (=> setNonEmpty!14765 (= setRes!14765 true)))

(declare-fun setElem!14765 () Context!2470)

(declare-fun setRest!14765 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14765 (= (z!5723 (h!29106 (_2!13574 (_1!13575 lt!794945)))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14765 true) setRest!14765))))

(declare-fun mapIsEmpty!11873 () Bool)

(assert (=> mapIsEmpty!11873 mapRes!11873))

(declare-fun b!2121840 () Bool)

(assert (=> b!2121840 (= e!1351555 setRes!14765)))

(declare-fun condSetEmpty!14765 () Bool)

(assert (=> b!2121840 (= condSetEmpty!14765 (= (z!5723 (h!29106 (_2!13574 (_1!13575 lt!794945)))) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun mapIsEmpty!11874 () Bool)

(assert (=> mapIsEmpty!11874 mapRes!11874))

(declare-fun b!2121841 () Bool)

(assert (=> b!2121841 (= e!1351541 e!1351542)))

(declare-fun b!2121842 () Bool)

(assert (=> b!2121842 (= e!1351553 e!1351550)))

(declare-fun b!2121843 () Bool)

(assert (=> b!2121843 (= e!1351544 mapRes!11874)))

(declare-fun condMapEmpty!11874 () Bool)

(declare-fun mapDefault!11874 () List!23787)

(assert (=> b!2121843 (= condMapEmpty!11874 (= (arr!3737 (_values!2730 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794945)))))))) ((as const (Array (_ BitVec 32) List!23787)) mapDefault!11874)))))

(assert (= (and b!2121840 condSetEmpty!14765) setIsEmpty!14765))

(assert (= (and b!2121840 (not condSetEmpty!14765)) setNonEmpty!14765))

(assert (= b!2121832 b!2121840))

(assert (= (and b!2121817 ((_ is Cons!23705) (_2!13574 (_1!13575 lt!794945)))) b!2121832))

(assert (= (and b!2121839 condMapEmpty!11873) mapIsEmpty!11873))

(assert (= (and b!2121839 (not condMapEmpty!11873)) mapNonEmpty!11874))

(assert (= b!2121837 b!2121839))

(assert (= b!2121829 b!2121837))

(assert (= b!2121842 b!2121829))

(assert (= (and b!2121833 ((_ is LongMap!2451) (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794945)))))) b!2121842))

(assert (= b!2121828 b!2121833))

(assert (= (and b!2121835 ((_ is HashMap!2364) (cache!2745 (_2!13575 lt!794945)))) b!2121828))

(assert (= b!2121817 b!2121835))

(assert (= (and b!2121843 condMapEmpty!11874) mapIsEmpty!11874))

(assert (= (and b!2121843 (not condMapEmpty!11874)) mapNonEmpty!11873))

(assert (= b!2121838 b!2121843))

(assert (= b!2121836 b!2121838))

(assert (= b!2121831 b!2121836))

(assert (= (and b!2121830 ((_ is LongMap!2450) (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794945)))))) b!2121831))

(assert (= b!2121834 b!2121830))

(assert (= (and b!2121841 ((_ is HashMap!2365) (cache!2746 (_3!1920 lt!794945)))) b!2121834))

(assert (= b!2121817 b!2121841))

(assert (=> b!2121828 (< (dynLambda!11321 order!14649 (defaultValue!2526 (cache!2745 (_2!13575 lt!794945)))) (dynLambda!11322 order!14651 lambda!78565))))

(assert (=> b!2121834 (< (dynLambda!11323 order!14653 (defaultValue!2527 (cache!2746 (_3!1920 lt!794945)))) (dynLambda!11322 order!14651 lambda!78565))))

(assert (=> b!2121838 (< (dynLambda!11324 order!14655 (defaultEntry!2815 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794945)))))))) (dynLambda!11322 order!14651 lambda!78565))))

(assert (=> b!2121837 (< (dynLambda!11325 order!14657 (defaultEntry!2816 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794945)))))))) (dynLambda!11322 order!14651 lambda!78565))))

(declare-fun m!2575413 () Bool)

(assert (=> mapNonEmpty!11873 m!2575413))

(declare-fun m!2575415 () Bool)

(assert (=> mapNonEmpty!11874 m!2575415))

(declare-fun bs!442715 () Bool)

(declare-fun b!2121814 () Bool)

(assert (= bs!442715 (and b!2121814 b!2121660)))

(declare-fun lambda!78566 () Int)

(assert (=> bs!442715 (= lambda!78566 lambda!78544)))

(declare-fun bs!442716 () Bool)

(assert (= bs!442716 (and b!2121814 b!2121823)))

(assert (=> bs!442716 (not (= lambda!78566 lambda!78563))))

(declare-fun bs!442717 () Bool)

(assert (= bs!442717 (and b!2121814 b!2121819)))

(assert (=> bs!442717 (not (= lambda!78566 lambda!78564))))

(declare-fun bs!442718 () Bool)

(assert (= bs!442718 (and b!2121814 d!643428)))

(assert (=> bs!442718 (not (= lambda!78566 lambda!78562))))

(declare-fun bs!442719 () Bool)

(assert (= bs!442719 (and b!2121814 b!2121817)))

(assert (=> bs!442719 (not (= lambda!78566 lambda!78565))))

(declare-fun bs!442720 () Bool)

(assert (= bs!442720 (and b!2121814 b!2121663)))

(assert (=> bs!442720 (not (= lambda!78566 lambda!78543))))

(assert (=> b!2121814 true))

(declare-fun e!1351538 () Bool)

(assert (=> d!643428 e!1351538))

(declare-fun res!919110 () Bool)

(assert (=> d!643428 (=> (not res!919110) (not e!1351538))))

(declare-fun furthestNullablePosition!8 ((InoxSet Context!2470) Int BalanceConc!15368 Int Int) Int)

(assert (=> d!643428 (= res!919110 (= (_1!13574 (_1!13575 lt!794945)) (furthestNullablePosition!8 z!3883 lt!794873 totalInput!886 lt!794876 e!1351419)))))

(declare-fun e!1351537 () tuple3!2900)

(assert (=> d!643428 (= lt!794945 e!1351537)))

(declare-fun c!339749 () Bool)

(declare-datatypes ((Option!4867 0))(
  ( (None!4866) (Some!4866 (v!28237 Int)) )
))
(declare-fun lt!794938 () Option!4867)

(assert (=> d!643428 (= c!339749 ((_ is Some!4866) lt!794938))))

(declare-fun get!7309 (CacheFurthestNullable!590 (InoxSet Context!2470) Int Int) Option!4867)

(assert (=> d!643428 (= lt!794938 (get!7309 cacheFurthestNullable!130 z!3883 lt!794873 e!1351419))))

(declare-fun lt!794937 () Unit!37588)

(declare-fun Unit!37592 () Unit!37588)

(assert (=> d!643428 (= lt!794937 Unit!37592)))

(assert (=> d!643428 (forall!4862 Nil!23705 lambda!78562)))

(assert (=> d!643428 (= lt!794943 (furthestNullablePosition!8 z!3883 lt!794873 totalInput!886 (size!18526 totalInput!886) e!1351419))))

(assert (=> d!643428 (and (>= lt!794873 0) (<= lt!794873 lt!794876))))

(assert (=> d!643428 (= (furthestNullablePositionStackMem!9 z!3883 lt!794873 totalInput!886 lt!794876 e!1351419 Nil!23705 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130) lt!794945)))

(declare-fun b!2121813 () Bool)

(declare-fun e!1351535 () Int)

(assert (=> b!2121813 (= e!1351535 e!1351419)))

(assert (=> b!2121814 (= e!1351538 (forall!4862 (_2!13574 (_1!13575 lt!794945)) lambda!78566))))

(declare-fun b!2121815 () Bool)

(declare-fun res!919109 () Bool)

(assert (=> b!2121815 (=> (not res!919109) (not e!1351538))))

(assert (=> b!2121815 (= res!919109 (= (totalInput!2906 cacheFurthestNullable!130) totalInput!886))))

(declare-fun b!2121816 () Bool)

(declare-fun e!1351539 () Bool)

(declare-fun lostCauseZipper!55 ((InoxSet Context!2470)) Bool)

(assert (=> b!2121816 (= e!1351539 (lostCauseZipper!55 z!3883))))

(declare-fun res!919108 () Bool)

(assert (=> b!2121817 (=> (not res!919108) (not e!1351538))))

(assert (=> b!2121817 (= res!919108 (forall!4862 (_2!13574 (_1!13575 lt!794945)) lambda!78565))))

(declare-fun b!2121818 () Bool)

(declare-fun res!919107 () Bool)

(assert (=> b!2121818 (=> (not res!919107) (not e!1351538))))

(assert (=> b!2121818 (= res!919107 (valid!1929 cacheFurthestNullable!130))))

(declare-fun lt!794939 () tuple3!2900)

(declare-datatypes ((tuple3!2904 0))(
  ( (tuple3!2905 (_1!13579 (InoxSet Context!2470)) (_2!13579 CacheUp!1638) (_3!1922 CacheDown!1624)) )
))
(declare-fun lt!794942 () tuple3!2904)

(declare-fun lt!794933 () Int)

(assert (=> b!2121819 (= lt!794939 (furthestNullablePositionStackMem!9 (_1!13579 lt!794942) (+ lt!794873 1) totalInput!886 lt!794876 lt!794933 (Cons!23705 (StackFrame!43 z!3883 lt!794873 e!1351419 lt!794943 totalInput!886) Nil!23705) (_2!13579 lt!794942) (_3!1922 lt!794942) cacheFurthestNullable!130))))

(declare-fun lt!794932 () Unit!37588)

(declare-fun lt!794941 () Unit!37588)

(assert (=> b!2121819 (= lt!794932 lt!794941)))

(declare-fun call!128680 () Bool)

(assert (=> b!2121819 call!128680))

(declare-fun call!128679 () Unit!37588)

(assert (=> b!2121819 (= lt!794941 call!128679)))

(declare-fun lt!794944 () Unit!37588)

(declare-fun Unit!37593 () Unit!37588)

(assert (=> b!2121819 (= lt!794944 Unit!37593)))

(declare-fun call!128681 () Bool)

(assert (=> b!2121819 call!128681))

(assert (=> b!2121819 (= lt!794935 (furthestNullablePosition!8 (_1!13579 lt!794942) (+ lt!794873 1) totalInput!886 (size!18526 totalInput!886) lt!794933))))

(assert (=> b!2121819 (= lt!794933 e!1351535)))

(declare-fun c!339747 () Bool)

(assert (=> b!2121819 (= c!339747 (nullableZipper!64 (_1!13579 lt!794942)))))

(declare-fun derivationStepZipperMem!15 ((InoxSet Context!2470) C!11476 CacheUp!1638 CacheDown!1624) tuple3!2904)

(declare-fun apply!5909 (BalanceConc!15368 Int) C!11476)

(assert (=> b!2121819 (= lt!794942 (derivationStepZipperMem!15 z!3883 (apply!5909 totalInput!886 lt!794873) cacheUp!991 cacheDown!1110))))

(declare-fun e!1351536 () tuple3!2900)

(assert (=> b!2121819 (= e!1351536 (tuple3!2901 (_1!13575 lt!794939) (_2!13575 lt!794939) (_3!1920 lt!794939)))))

(declare-fun b!2121820 () Bool)

(declare-fun res!919105 () Bool)

(assert (=> b!2121820 (=> (not res!919105) (not e!1351538))))

(assert (=> b!2121820 (= res!919105 (valid!1928 (_3!1920 lt!794945)))))

(declare-fun c!339748 () Bool)

(declare-fun bm!128674 () Bool)

(declare-fun lemmaStackPreservesForEqualRes!4 (List!23789 Int Int) Unit!37588)

(assert (=> bm!128674 (= call!128679 (lemmaStackPreservesForEqualRes!4 Nil!23705 lt!794943 (ite c!339748 e!1351419 lt!794935)))))

(declare-fun b!2121821 () Bool)

(assert (=> b!2121821 (= e!1351535 lt!794873)))

(declare-fun b!2121822 () Bool)

(assert (=> b!2121822 (= e!1351537 (tuple3!2901 (tuple2!23309 (v!28237 lt!794938) Nil!23705) cacheUp!991 cacheDown!1110))))

(declare-fun lt!794936 () Unit!37588)

(declare-fun lt!794934 () Unit!37588)

(assert (=> b!2121823 (= lt!794936 lt!794934)))

(assert (=> b!2121823 call!128680))

(assert (=> b!2121823 (= lt!794934 call!128679)))

(declare-fun lt!794940 () Unit!37588)

(declare-fun Unit!37594 () Unit!37588)

(assert (=> b!2121823 (= lt!794940 Unit!37594)))

(assert (=> b!2121823 call!128681))

(assert (=> b!2121823 (= e!1351536 (tuple3!2901 (tuple2!23309 e!1351419 Nil!23705) cacheUp!991 cacheDown!1110))))

(declare-fun b!2121824 () Bool)

(assert (=> b!2121824 (= e!1351537 e!1351536)))

(declare-fun res!919106 () Bool)

(assert (=> b!2121824 (= res!919106 (= lt!794873 lt!794876))))

(assert (=> b!2121824 (=> res!919106 e!1351539)))

(assert (=> b!2121824 (= c!339748 e!1351539)))

(declare-fun bm!128675 () Bool)

(assert (=> bm!128675 (= call!128681 (forall!4862 Nil!23705 (ite c!339748 lambda!78562 lambda!78562)))))

(declare-fun b!2121825 () Bool)

(declare-fun res!919111 () Bool)

(assert (=> b!2121825 (=> (not res!919111) (not e!1351538))))

(assert (=> b!2121825 (= res!919111 (valid!1930 (_2!13575 lt!794945)))))

(declare-fun bm!128676 () Bool)

(assert (=> bm!128676 (= call!128680 (forall!4862 Nil!23705 (ite c!339748 lambda!78563 lambda!78564)))))

(assert (= (and d!643428 c!339749) b!2121822))

(assert (= (and d!643428 (not c!339749)) b!2121824))

(assert (= (and b!2121824 (not res!919106)) b!2121816))

(assert (= (and b!2121824 c!339748) b!2121823))

(assert (= (and b!2121824 (not c!339748)) b!2121819))

(assert (= (and b!2121819 c!339747) b!2121821))

(assert (= (and b!2121819 (not c!339747)) b!2121813))

(assert (= (or b!2121823 b!2121819) bm!128676))

(assert (= (or b!2121823 b!2121819) bm!128675))

(assert (= (or b!2121823 b!2121819) bm!128674))

(assert (= (and d!643428 res!919110) b!2121817))

(assert (= (and b!2121817 res!919108) b!2121825))

(assert (= (and b!2121825 res!919111) b!2121820))

(assert (= (and b!2121820 res!919105) b!2121818))

(assert (= (and b!2121818 res!919107) b!2121815))

(assert (= (and b!2121815 res!919109) b!2121814))

(declare-fun m!2575417 () Bool)

(assert (=> bm!128676 m!2575417))

(declare-fun m!2575419 () Bool)

(assert (=> bm!128675 m!2575419))

(declare-fun m!2575421 () Bool)

(assert (=> d!643428 m!2575421))

(assert (=> d!643428 m!2575323))

(declare-fun m!2575423 () Bool)

(assert (=> d!643428 m!2575423))

(declare-fun m!2575425 () Bool)

(assert (=> d!643428 m!2575425))

(assert (=> d!643428 m!2575323))

(declare-fun m!2575427 () Bool)

(assert (=> d!643428 m!2575427))

(declare-fun m!2575429 () Bool)

(assert (=> b!2121816 m!2575429))

(declare-fun m!2575431 () Bool)

(assert (=> b!2121819 m!2575431))

(declare-fun m!2575433 () Bool)

(assert (=> b!2121819 m!2575433))

(declare-fun m!2575435 () Bool)

(assert (=> b!2121819 m!2575435))

(assert (=> b!2121819 m!2575323))

(declare-fun m!2575437 () Bool)

(assert (=> b!2121819 m!2575437))

(declare-fun m!2575439 () Bool)

(assert (=> b!2121819 m!2575439))

(assert (=> b!2121819 m!2575323))

(assert (=> b!2121819 m!2575433))

(declare-fun m!2575441 () Bool)

(assert (=> b!2121820 m!2575441))

(declare-fun m!2575443 () Bool)

(assert (=> b!2121825 m!2575443))

(declare-fun m!2575445 () Bool)

(assert (=> b!2121817 m!2575445))

(declare-fun m!2575447 () Bool)

(assert (=> b!2121814 m!2575447))

(declare-fun m!2575449 () Bool)

(assert (=> bm!128674 m!2575449))

(assert (=> b!2121818 m!2575353))

(assert (=> b!2121663 d!643428))

(declare-fun d!643430 () Bool)

(declare-fun res!919112 () Bool)

(declare-fun e!1351556 () Bool)

(assert (=> d!643430 (=> res!919112 e!1351556)))

(assert (=> d!643430 (= res!919112 ((_ is Nil!23705) (_2!13574 (_1!13575 lt!794879))))))

(assert (=> d!643430 (= (forall!4862 (_2!13574 (_1!13575 lt!794879)) lambda!78543) e!1351556)))

(declare-fun b!2121844 () Bool)

(declare-fun e!1351557 () Bool)

(assert (=> b!2121844 (= e!1351556 e!1351557)))

(declare-fun res!919113 () Bool)

(assert (=> b!2121844 (=> (not res!919113) (not e!1351557))))

(assert (=> b!2121844 (= res!919113 (dynLambda!11326 lambda!78543 (h!29106 (_2!13574 (_1!13575 lt!794879)))))))

(declare-fun b!2121845 () Bool)

(assert (=> b!2121845 (= e!1351557 (forall!4862 (t!196305 (_2!13574 (_1!13575 lt!794879))) lambda!78543))))

(assert (= (and d!643430 (not res!919112)) b!2121844))

(assert (= (and b!2121844 res!919113) b!2121845))

(declare-fun b_lambda!70459 () Bool)

(assert (=> (not b_lambda!70459) (not b!2121844)))

(declare-fun m!2575451 () Bool)

(assert (=> b!2121844 m!2575451))

(declare-fun m!2575453 () Bool)

(assert (=> b!2121845 m!2575453))

(assert (=> b!2121663 d!643430))

(declare-fun d!643432 () Bool)

(declare-fun lt!794948 () Int)

(assert (=> d!643432 (= lt!794948 (size!18527 (list!9526 totalInput!886)))))

(assert (=> d!643432 (= lt!794948 (size!18528 (c!339727 totalInput!886)))))

(assert (=> d!643432 (= (size!18526 totalInput!886) lt!794948)))

(declare-fun bs!442721 () Bool)

(assert (= bs!442721 d!643432))

(assert (=> bs!442721 m!2575335))

(assert (=> bs!442721 m!2575335))

(assert (=> bs!442721 m!2575395))

(declare-fun m!2575455 () Bool)

(assert (=> bs!442721 m!2575455))

(assert (=> b!2121663 d!643432))

(declare-fun d!643434 () Bool)

(assert (=> d!643434 (= (inv!31295 (totalInput!2906 cacheFurthestNullable!130)) (isBalanced!2447 (c!339727 (totalInput!2906 cacheFurthestNullable!130))))))

(declare-fun bs!442722 () Bool)

(assert (= bs!442722 d!643434))

(declare-fun m!2575457 () Bool)

(assert (=> bs!442722 m!2575457))

(assert (=> b!2121664 d!643434))

(declare-fun d!643436 () Bool)

(assert (=> d!643436 (= (array_inv!2676 (_keys!2749 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))))) (bvsge (size!18522 (_keys!2749 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2121674 d!643436))

(declare-fun d!643438 () Bool)

(assert (=> d!643438 (= (array_inv!2678 (_values!2732 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))))) (bvsge (size!18525 (_values!2732 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2121674 d!643438))

(declare-fun d!643440 () Bool)

(declare-fun lambda!78569 () Int)

(declare-fun forall!4863 (List!23785 Int) Bool)

(assert (=> d!643440 (= (inv!31298 setElem!14761) (forall!4863 (exprs!1735 setElem!14761) lambda!78569))))

(declare-fun bs!442723 () Bool)

(assert (= bs!442723 d!643440))

(declare-fun m!2575459 () Bool)

(assert (=> bs!442723 m!2575459))

(assert (=> setNonEmpty!14761 d!643440))

(declare-fun d!643442 () Bool)

(assert (=> d!643442 (= (valid!1928 cacheDown!1110) (validCacheMapDown!241 (cache!2746 cacheDown!1110)))))

(declare-fun bs!442724 () Bool)

(assert (= bs!442724 d!643442))

(assert (=> bs!442724 m!2575393))

(assert (=> b!2121656 d!643442))

(declare-fun b!2121858 () Bool)

(declare-fun res!919128 () Bool)

(declare-fun e!1351562 () Bool)

(assert (=> b!2121858 (=> (not res!919128) (not e!1351562))))

(declare-fun height!1232 (Conc!7803) Int)

(assert (=> b!2121858 (= res!919128 (<= (- (height!1232 (left!18336 (c!339727 input!5507))) (height!1232 (right!18666 (c!339727 input!5507)))) 1))))

(declare-fun b!2121859 () Bool)

(declare-fun isEmpty!14310 (Conc!7803) Bool)

(assert (=> b!2121859 (= e!1351562 (not (isEmpty!14310 (right!18666 (c!339727 input!5507)))))))

(declare-fun b!2121860 () Bool)

(declare-fun e!1351563 () Bool)

(assert (=> b!2121860 (= e!1351563 e!1351562)))

(declare-fun res!919126 () Bool)

(assert (=> b!2121860 (=> (not res!919126) (not e!1351562))))

(assert (=> b!2121860 (= res!919126 (<= (- 1) (- (height!1232 (left!18336 (c!339727 input!5507))) (height!1232 (right!18666 (c!339727 input!5507))))))))

(declare-fun d!643444 () Bool)

(declare-fun res!919131 () Bool)

(assert (=> d!643444 (=> res!919131 e!1351563)))

(assert (=> d!643444 (= res!919131 (not ((_ is Node!7803) (c!339727 input!5507))))))

(assert (=> d!643444 (= (isBalanced!2447 (c!339727 input!5507)) e!1351563)))

(declare-fun b!2121861 () Bool)

(declare-fun res!919130 () Bool)

(assert (=> b!2121861 (=> (not res!919130) (not e!1351562))))

(assert (=> b!2121861 (= res!919130 (isBalanced!2447 (left!18336 (c!339727 input!5507))))))

(declare-fun b!2121862 () Bool)

(declare-fun res!919127 () Bool)

(assert (=> b!2121862 (=> (not res!919127) (not e!1351562))))

(assert (=> b!2121862 (= res!919127 (not (isEmpty!14310 (left!18336 (c!339727 input!5507)))))))

(declare-fun b!2121863 () Bool)

(declare-fun res!919129 () Bool)

(assert (=> b!2121863 (=> (not res!919129) (not e!1351562))))

(assert (=> b!2121863 (= res!919129 (isBalanced!2447 (right!18666 (c!339727 input!5507))))))

(assert (= (and d!643444 (not res!919131)) b!2121860))

(assert (= (and b!2121860 res!919126) b!2121858))

(assert (= (and b!2121858 res!919128) b!2121861))

(assert (= (and b!2121861 res!919130) b!2121863))

(assert (= (and b!2121863 res!919129) b!2121862))

(assert (= (and b!2121862 res!919127) b!2121859))

(declare-fun m!2575461 () Bool)

(assert (=> b!2121858 m!2575461))

(declare-fun m!2575463 () Bool)

(assert (=> b!2121858 m!2575463))

(declare-fun m!2575465 () Bool)

(assert (=> b!2121862 m!2575465))

(declare-fun m!2575467 () Bool)

(assert (=> b!2121863 m!2575467))

(assert (=> b!2121860 m!2575461))

(assert (=> b!2121860 m!2575463))

(declare-fun m!2575469 () Bool)

(assert (=> b!2121861 m!2575469))

(declare-fun m!2575471 () Bool)

(assert (=> b!2121859 m!2575471))

(assert (=> b!2121655 d!643444))

(declare-fun d!643446 () Bool)

(assert (=> d!643446 (= (array_inv!2676 (_keys!2748 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991))))))) (bvsge (size!18522 (_keys!2748 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2121665 d!643446))

(declare-fun d!643448 () Bool)

(assert (=> d!643448 (= (array_inv!2677 (_values!2731 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991))))))) (bvsge (size!18524 (_values!2731 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2121665 d!643448))

(declare-fun b!2121874 () Bool)

(declare-fun e!1351574 () Bool)

(declare-fun setRes!14771 () Bool)

(declare-fun tp!649539 () Bool)

(assert (=> b!2121874 (= e!1351574 (and setRes!14771 tp!649539))))

(declare-fun condSetEmpty!14770 () Bool)

(declare-fun mapValue!11877 () List!23790)

(assert (=> b!2121874 (= condSetEmpty!14770 (= (_1!13576 (_1!13577 (h!29107 mapValue!11877))) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun mapIsEmpty!11877 () Bool)

(declare-fun mapRes!11877 () Bool)

(assert (=> mapIsEmpty!11877 mapRes!11877))

(declare-fun b!2121875 () Bool)

(declare-fun e!1351573 () Bool)

(declare-fun tp!649535 () Bool)

(assert (=> b!2121875 (= e!1351573 tp!649535)))

(declare-fun setNonEmpty!14770 () Bool)

(declare-fun setElem!14770 () Context!2470)

(declare-fun tp!649537 () Bool)

(assert (=> setNonEmpty!14770 (= setRes!14771 (and tp!649537 (inv!31298 setElem!14770) e!1351573))))

(declare-fun setRest!14771 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14770 (= (_1!13576 (_1!13577 (h!29107 mapValue!11877))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14770 true) setRest!14771))))

(declare-fun setIsEmpty!14770 () Bool)

(declare-fun setRes!14770 () Bool)

(assert (=> setIsEmpty!14770 setRes!14770))

(declare-fun b!2121876 () Bool)

(declare-fun e!1351575 () Bool)

(declare-fun tp!649536 () Bool)

(assert (=> b!2121876 (= e!1351575 (and setRes!14770 tp!649536))))

(declare-fun condSetEmpty!14771 () Bool)

(declare-fun mapDefault!11877 () List!23790)

(assert (=> b!2121876 (= condSetEmpty!14771 (= (_1!13576 (_1!13577 (h!29107 mapDefault!11877))) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun condMapEmpty!11877 () Bool)

(assert (=> mapNonEmpty!11865 (= condMapEmpty!11877 (= mapRest!11866 ((as const (Array (_ BitVec 32) List!23790)) mapDefault!11877)))))

(assert (=> mapNonEmpty!11865 (= tp!649520 (and e!1351575 mapRes!11877))))

(declare-fun setElem!14771 () Context!2470)

(declare-fun tp!649540 () Bool)

(declare-fun e!1351572 () Bool)

(declare-fun setNonEmpty!14771 () Bool)

(assert (=> setNonEmpty!14771 (= setRes!14770 (and tp!649540 (inv!31298 setElem!14771) e!1351572))))

(declare-fun setRest!14770 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14771 (= (_1!13576 (_1!13577 (h!29107 mapDefault!11877))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14771 true) setRest!14770))))

(declare-fun mapNonEmpty!11877 () Bool)

(declare-fun tp!649538 () Bool)

(assert (=> mapNonEmpty!11877 (= mapRes!11877 (and tp!649538 e!1351574))))

(declare-fun mapRest!11877 () (Array (_ BitVec 32) List!23790))

(declare-fun mapKey!11877 () (_ BitVec 32))

(assert (=> mapNonEmpty!11877 (= mapRest!11866 (store mapRest!11877 mapKey!11877 mapValue!11877))))

(declare-fun b!2121877 () Bool)

(declare-fun tp!649541 () Bool)

(assert (=> b!2121877 (= e!1351572 tp!649541)))

(declare-fun setIsEmpty!14771 () Bool)

(assert (=> setIsEmpty!14771 setRes!14771))

(assert (= (and mapNonEmpty!11865 condMapEmpty!11877) mapIsEmpty!11877))

(assert (= (and mapNonEmpty!11865 (not condMapEmpty!11877)) mapNonEmpty!11877))

(assert (= (and b!2121874 condSetEmpty!14770) setIsEmpty!14771))

(assert (= (and b!2121874 (not condSetEmpty!14770)) setNonEmpty!14770))

(assert (= setNonEmpty!14770 b!2121875))

(assert (= (and mapNonEmpty!11877 ((_ is Cons!23706) mapValue!11877)) b!2121874))

(assert (= (and b!2121876 condSetEmpty!14771) setIsEmpty!14770))

(assert (= (and b!2121876 (not condSetEmpty!14771)) setNonEmpty!14771))

(assert (= setNonEmpty!14771 b!2121877))

(assert (= (and mapNonEmpty!11865 ((_ is Cons!23706) mapDefault!11877)) b!2121876))

(declare-fun m!2575473 () Bool)

(assert (=> setNonEmpty!14770 m!2575473))

(declare-fun m!2575475 () Bool)

(assert (=> setNonEmpty!14771 m!2575475))

(declare-fun m!2575477 () Bool)

(assert (=> mapNonEmpty!11877 m!2575477))

(declare-fun setIsEmpty!14774 () Bool)

(declare-fun setRes!14774 () Bool)

(assert (=> setIsEmpty!14774 setRes!14774))

(declare-fun e!1351581 () Bool)

(declare-fun tp!649550 () Bool)

(declare-fun setElem!14774 () Context!2470)

(declare-fun setNonEmpty!14774 () Bool)

(assert (=> setNonEmpty!14774 (= setRes!14774 (and tp!649550 (inv!31298 setElem!14774) e!1351581))))

(declare-fun setRest!14774 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14774 (= (_1!13576 (_1!13577 (h!29107 mapValue!11866))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14774 true) setRest!14774))))

(declare-fun b!2121885 () Bool)

(declare-fun tp!649549 () Bool)

(assert (=> b!2121885 (= e!1351581 tp!649549)))

(declare-fun e!1351580 () Bool)

(assert (=> mapNonEmpty!11865 (= tp!649496 e!1351580)))

(declare-fun b!2121884 () Bool)

(declare-fun tp!649548 () Bool)

(assert (=> b!2121884 (= e!1351580 (and setRes!14774 tp!649548))))

(declare-fun condSetEmpty!14774 () Bool)

(assert (=> b!2121884 (= condSetEmpty!14774 (= (_1!13576 (_1!13577 (h!29107 mapValue!11866))) ((as const (Array Context!2470 Bool)) false)))))

(assert (= (and b!2121884 condSetEmpty!14774) setIsEmpty!14774))

(assert (= (and b!2121884 (not condSetEmpty!14774)) setNonEmpty!14774))

(assert (= setNonEmpty!14774 b!2121885))

(assert (= (and mapNonEmpty!11865 ((_ is Cons!23706) mapValue!11866)) b!2121884))

(declare-fun m!2575479 () Bool)

(assert (=> setNonEmpty!14774 m!2575479))

(declare-fun e!1351594 () Bool)

(declare-fun tp!649572 () Bool)

(declare-fun setElem!14779 () Context!2470)

(declare-fun setNonEmpty!14779 () Bool)

(declare-fun setRes!14780 () Bool)

(assert (=> setNonEmpty!14779 (= setRes!14780 (and tp!649572 (inv!31298 setElem!14779) e!1351594))))

(declare-fun mapValue!11880 () List!23786)

(declare-fun setRest!14779 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14779 (= (_2!13573 (h!29103 mapValue!11880)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14779 true) setRest!14779))))

(declare-fun mapNonEmpty!11880 () Bool)

(declare-fun mapRes!11880 () Bool)

(declare-fun tp!649571 () Bool)

(declare-fun e!1351598 () Bool)

(assert (=> mapNonEmpty!11880 (= mapRes!11880 (and tp!649571 e!1351598))))

(declare-fun mapRest!11880 () (Array (_ BitVec 32) List!23786))

(declare-fun mapKey!11880 () (_ BitVec 32))

(assert (=> mapNonEmpty!11880 (= mapRest!11865 (store mapRest!11880 mapKey!11880 mapValue!11880))))

(declare-fun tp!649577 () Bool)

(declare-fun tp_is_empty!9487 () Bool)

(declare-fun e!1351599 () Bool)

(declare-fun e!1351597 () Bool)

(declare-fun b!2121900 () Bool)

(declare-fun mapDefault!11880 () List!23786)

(declare-fun setRes!14779 () Bool)

(assert (=> b!2121900 (= e!1351597 (and (inv!31298 (_1!13572 (_1!13573 (h!29103 mapDefault!11880)))) e!1351599 tp_is_empty!9487 setRes!14779 tp!649577))))

(declare-fun condSetEmpty!14780 () Bool)

(assert (=> b!2121900 (= condSetEmpty!14780 (= (_2!13573 (h!29103 mapDefault!11880)) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14779 () Bool)

(assert (=> setIsEmpty!14779 setRes!14779))

(declare-fun setIsEmpty!14780 () Bool)

(assert (=> setIsEmpty!14780 setRes!14780))

(declare-fun condMapEmpty!11880 () Bool)

(assert (=> mapNonEmpty!11866 (= condMapEmpty!11880 (= mapRest!11865 ((as const (Array (_ BitVec 32) List!23786)) mapDefault!11880)))))

(assert (=> mapNonEmpty!11866 (= tp!649511 (and e!1351597 mapRes!11880))))

(declare-fun b!2121901 () Bool)

(declare-fun e!1351596 () Bool)

(declare-fun tp!649576 () Bool)

(assert (=> b!2121901 (= e!1351596 tp!649576)))

(declare-fun b!2121902 () Bool)

(declare-fun tp!649569 () Bool)

(assert (=> b!2121902 (= e!1351599 tp!649569)))

(declare-fun mapIsEmpty!11880 () Bool)

(assert (=> mapIsEmpty!11880 mapRes!11880))

(declare-fun tp!649575 () Bool)

(declare-fun e!1351595 () Bool)

(declare-fun b!2121903 () Bool)

(assert (=> b!2121903 (= e!1351598 (and (inv!31298 (_1!13572 (_1!13573 (h!29103 mapValue!11880)))) e!1351595 tp_is_empty!9487 setRes!14780 tp!649575))))

(declare-fun condSetEmpty!14779 () Bool)

(assert (=> b!2121903 (= condSetEmpty!14779 (= (_2!13573 (h!29103 mapValue!11880)) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun b!2121904 () Bool)

(declare-fun tp!649573 () Bool)

(assert (=> b!2121904 (= e!1351595 tp!649573)))

(declare-fun setNonEmpty!14780 () Bool)

(declare-fun setElem!14780 () Context!2470)

(declare-fun tp!649570 () Bool)

(assert (=> setNonEmpty!14780 (= setRes!14779 (and tp!649570 (inv!31298 setElem!14780) e!1351596))))

(declare-fun setRest!14780 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14780 (= (_2!13573 (h!29103 mapDefault!11880)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14780 true) setRest!14780))))

(declare-fun b!2121905 () Bool)

(declare-fun tp!649574 () Bool)

(assert (=> b!2121905 (= e!1351594 tp!649574)))

(assert (= (and mapNonEmpty!11866 condMapEmpty!11880) mapIsEmpty!11880))

(assert (= (and mapNonEmpty!11866 (not condMapEmpty!11880)) mapNonEmpty!11880))

(assert (= b!2121903 b!2121904))

(assert (= (and b!2121903 condSetEmpty!14779) setIsEmpty!14780))

(assert (= (and b!2121903 (not condSetEmpty!14779)) setNonEmpty!14779))

(assert (= setNonEmpty!14779 b!2121905))

(assert (= (and mapNonEmpty!11880 ((_ is Cons!23702) mapValue!11880)) b!2121903))

(assert (= b!2121900 b!2121902))

(assert (= (and b!2121900 condSetEmpty!14780) setIsEmpty!14779))

(assert (= (and b!2121900 (not condSetEmpty!14780)) setNonEmpty!14780))

(assert (= setNonEmpty!14780 b!2121901))

(assert (= (and mapNonEmpty!11866 ((_ is Cons!23702) mapDefault!11880)) b!2121900))

(declare-fun m!2575481 () Bool)

(assert (=> mapNonEmpty!11880 m!2575481))

(declare-fun m!2575483 () Bool)

(assert (=> b!2121900 m!2575483))

(declare-fun m!2575485 () Bool)

(assert (=> setNonEmpty!14780 m!2575485))

(declare-fun m!2575487 () Bool)

(assert (=> setNonEmpty!14779 m!2575487))

(declare-fun m!2575489 () Bool)

(assert (=> b!2121903 m!2575489))

(declare-fun b!2121914 () Bool)

(declare-fun e!1351607 () Bool)

(declare-fun tp!649589 () Bool)

(assert (=> b!2121914 (= e!1351607 tp!649589)))

(declare-fun setElem!14783 () Context!2470)

(declare-fun tp!649586 () Bool)

(declare-fun setNonEmpty!14783 () Bool)

(declare-fun setRes!14783 () Bool)

(declare-fun e!1351608 () Bool)

(assert (=> setNonEmpty!14783 (= setRes!14783 (and tp!649586 (inv!31298 setElem!14783) e!1351608))))

(declare-fun setRest!14783 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14783 (= (_2!13573 (h!29103 mapValue!11865)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14783 true) setRest!14783))))

(declare-fun b!2121916 () Bool)

(declare-fun tp!649588 () Bool)

(declare-fun e!1351606 () Bool)

(assert (=> b!2121916 (= e!1351606 (and (inv!31298 (_1!13572 (_1!13573 (h!29103 mapValue!11865)))) e!1351607 tp_is_empty!9487 setRes!14783 tp!649588))))

(declare-fun condSetEmpty!14783 () Bool)

(assert (=> b!2121916 (= condSetEmpty!14783 (= (_2!13573 (h!29103 mapValue!11865)) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14783 () Bool)

(assert (=> setIsEmpty!14783 setRes!14783))

(assert (=> mapNonEmpty!11866 (= tp!649503 e!1351606)))

(declare-fun b!2121915 () Bool)

(declare-fun tp!649587 () Bool)

(assert (=> b!2121915 (= e!1351608 tp!649587)))

(assert (= b!2121916 b!2121914))

(assert (= (and b!2121916 condSetEmpty!14783) setIsEmpty!14783))

(assert (= (and b!2121916 (not condSetEmpty!14783)) setNonEmpty!14783))

(assert (= setNonEmpty!14783 b!2121915))

(assert (= (and mapNonEmpty!11866 ((_ is Cons!23702) mapValue!11865)) b!2121916))

(declare-fun m!2575491 () Bool)

(assert (=> setNonEmpty!14783 m!2575491))

(declare-fun m!2575493 () Bool)

(assert (=> b!2121916 m!2575493))

(declare-fun b!2121917 () Bool)

(declare-fun e!1351610 () Bool)

(declare-fun tp!649593 () Bool)

(assert (=> b!2121917 (= e!1351610 tp!649593)))

(declare-fun e!1351611 () Bool)

(declare-fun setRes!14784 () Bool)

(declare-fun tp!649590 () Bool)

(declare-fun setElem!14784 () Context!2470)

(declare-fun setNonEmpty!14784 () Bool)

(assert (=> setNonEmpty!14784 (= setRes!14784 (and tp!649590 (inv!31298 setElem!14784) e!1351611))))

(declare-fun setRest!14784 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14784 (= (_2!13573 (h!29103 mapDefault!11865)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14784 true) setRest!14784))))

(declare-fun b!2121919 () Bool)

(declare-fun tp!649592 () Bool)

(declare-fun e!1351609 () Bool)

(assert (=> b!2121919 (= e!1351609 (and (inv!31298 (_1!13572 (_1!13573 (h!29103 mapDefault!11865)))) e!1351610 tp_is_empty!9487 setRes!14784 tp!649592))))

(declare-fun condSetEmpty!14784 () Bool)

(assert (=> b!2121919 (= condSetEmpty!14784 (= (_2!13573 (h!29103 mapDefault!11865)) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14784 () Bool)

(assert (=> setIsEmpty!14784 setRes!14784))

(assert (=> b!2121671 (= tp!649498 e!1351609)))

(declare-fun b!2121918 () Bool)

(declare-fun tp!649591 () Bool)

(assert (=> b!2121918 (= e!1351611 tp!649591)))

(assert (= b!2121919 b!2121917))

(assert (= (and b!2121919 condSetEmpty!14784) setIsEmpty!14784))

(assert (= (and b!2121919 (not condSetEmpty!14784)) setNonEmpty!14784))

(assert (= setNonEmpty!14784 b!2121918))

(assert (= (and b!2121671 ((_ is Cons!23702) mapDefault!11865)) b!2121919))

(declare-fun m!2575495 () Bool)

(assert (=> setNonEmpty!14784 m!2575495))

(declare-fun m!2575497 () Bool)

(assert (=> b!2121919 m!2575497))

(declare-fun e!1351617 () Bool)

(declare-fun b!2121928 () Bool)

(declare-fun tp!649602 () Bool)

(declare-fun tp!649601 () Bool)

(assert (=> b!2121928 (= e!1351617 (and (inv!31293 (left!18336 (c!339727 totalInput!886))) tp!649601 (inv!31293 (right!18666 (c!339727 totalInput!886))) tp!649602))))

(declare-fun b!2121930 () Bool)

(declare-fun e!1351616 () Bool)

(declare-fun tp!649600 () Bool)

(assert (=> b!2121930 (= e!1351616 tp!649600)))

(declare-fun b!2121929 () Bool)

(declare-fun inv!31301 (IArray!15611) Bool)

(assert (=> b!2121929 (= e!1351617 (and (inv!31301 (xs!10745 (c!339727 totalInput!886))) e!1351616))))

(assert (=> b!2121670 (= tp!649499 (and (inv!31293 (c!339727 totalInput!886)) e!1351617))))

(assert (= (and b!2121670 ((_ is Node!7803) (c!339727 totalInput!886))) b!2121928))

(assert (= b!2121929 b!2121930))

(assert (= (and b!2121670 ((_ is Leaf!11403) (c!339727 totalInput!886))) b!2121929))

(declare-fun m!2575499 () Bool)

(assert (=> b!2121928 m!2575499))

(declare-fun m!2575501 () Bool)

(assert (=> b!2121928 m!2575501))

(declare-fun m!2575503 () Bool)

(assert (=> b!2121929 m!2575503))

(assert (=> b!2121670 m!2575363))

(declare-fun b!2121935 () Bool)

(declare-fun e!1351620 () Bool)

(declare-fun setRes!14787 () Bool)

(assert (=> b!2121935 (= e!1351620 setRes!14787)))

(declare-fun condSetEmpty!14787 () Bool)

(assert (=> b!2121935 (= condSetEmpty!14787 (= (_2!13571 (h!29104 mapDefault!11872)) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14787 () Bool)

(assert (=> setIsEmpty!14787 setRes!14787))

(declare-fun setNonEmpty!14787 () Bool)

(assert (=> setNonEmpty!14787 (= setRes!14787 true)))

(declare-fun setElem!14787 () Context!2470)

(declare-fun setRest!14787 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14787 (= (_2!13571 (h!29104 mapDefault!11872)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14787 true) setRest!14787))))

(assert (=> b!2121736 e!1351620))

(assert (= (and b!2121935 condSetEmpty!14787) setIsEmpty!14787))

(assert (= (and b!2121935 (not condSetEmpty!14787)) setNonEmpty!14787))

(assert (= (and b!2121736 ((_ is Cons!23703) mapDefault!11872)) b!2121935))

(declare-fun setIsEmpty!14788 () Bool)

(declare-fun setRes!14788 () Bool)

(assert (=> setIsEmpty!14788 setRes!14788))

(declare-fun setElem!14788 () Context!2470)

(declare-fun tp!649605 () Bool)

(declare-fun e!1351622 () Bool)

(declare-fun setNonEmpty!14788 () Bool)

(assert (=> setNonEmpty!14788 (= setRes!14788 (and tp!649605 (inv!31298 setElem!14788) e!1351622))))

(declare-fun setRest!14788 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14788 (= (_1!13576 (_1!13577 (h!29107 mapDefault!11864))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14788 true) setRest!14788))))

(declare-fun b!2121937 () Bool)

(declare-fun tp!649604 () Bool)

(assert (=> b!2121937 (= e!1351622 tp!649604)))

(declare-fun e!1351621 () Bool)

(assert (=> b!2121680 (= tp!649495 e!1351621)))

(declare-fun b!2121936 () Bool)

(declare-fun tp!649603 () Bool)

(assert (=> b!2121936 (= e!1351621 (and setRes!14788 tp!649603))))

(declare-fun condSetEmpty!14788 () Bool)

(assert (=> b!2121936 (= condSetEmpty!14788 (= (_1!13576 (_1!13577 (h!29107 mapDefault!11864))) ((as const (Array Context!2470 Bool)) false)))))

(assert (= (and b!2121936 condSetEmpty!14788) setIsEmpty!14788))

(assert (= (and b!2121936 (not condSetEmpty!14788)) setNonEmpty!14788))

(assert (= setNonEmpty!14788 b!2121937))

(assert (= (and b!2121680 ((_ is Cons!23706) mapDefault!11864)) b!2121936))

(declare-fun m!2575505 () Bool)

(assert (=> setNonEmpty!14788 m!2575505))

(declare-fun mapDefault!11883 () List!23787)

(declare-fun tp!649628 () Bool)

(declare-fun b!2121952 () Bool)

(declare-fun tp!649637 () Bool)

(declare-fun setRes!14793 () Bool)

(declare-fun e!1351639 () Bool)

(declare-fun e!1351637 () Bool)

(assert (=> b!2121952 (= e!1351637 (and tp!649637 (inv!31298 (_2!13570 (_1!13571 (h!29104 mapDefault!11883)))) e!1351639 tp_is_empty!9487 setRes!14793 tp!649628))))

(declare-fun condSetEmpty!14793 () Bool)

(assert (=> b!2121952 (= condSetEmpty!14793 (= (_2!13571 (h!29104 mapDefault!11883)) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14793 () Bool)

(assert (=> setIsEmpty!14793 setRes!14793))

(declare-fun b!2121953 () Bool)

(declare-fun e!1351636 () Bool)

(declare-fun tp!649630 () Bool)

(assert (=> b!2121953 (= e!1351636 tp!649630)))

(declare-fun tp!649629 () Bool)

(declare-fun setNonEmpty!14793 () Bool)

(declare-fun setElem!14793 () Context!2470)

(assert (=> setNonEmpty!14793 (= setRes!14793 (and tp!649629 (inv!31298 setElem!14793) e!1351636))))

(declare-fun setRest!14794 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14793 (= (_2!13571 (h!29104 mapDefault!11883)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14793 true) setRest!14794))))

(declare-fun condMapEmpty!11883 () Bool)

(assert (=> mapNonEmpty!11864 (= condMapEmpty!11883 (= mapRest!11864 ((as const (Array (_ BitVec 32) List!23787)) mapDefault!11883)))))

(declare-fun mapRes!11883 () Bool)

(assert (=> mapNonEmpty!11864 (= tp!649507 (and e!1351637 mapRes!11883))))

(declare-fun b!2121954 () Bool)

(declare-fun e!1351635 () Bool)

(declare-fun tp!649632 () Bool)

(assert (=> b!2121954 (= e!1351635 tp!649632)))

(declare-fun b!2121955 () Bool)

(declare-fun e!1351640 () Bool)

(declare-fun tp!649636 () Bool)

(assert (=> b!2121955 (= e!1351640 tp!649636)))

(declare-fun mapIsEmpty!11883 () Bool)

(assert (=> mapIsEmpty!11883 mapRes!11883))

(declare-fun tp!649638 () Bool)

(declare-fun e!1351638 () Bool)

(declare-fun tp!649635 () Bool)

(declare-fun mapValue!11883 () List!23787)

(declare-fun setRes!14794 () Bool)

(declare-fun b!2121956 () Bool)

(assert (=> b!2121956 (= e!1351638 (and tp!649638 (inv!31298 (_2!13570 (_1!13571 (h!29104 mapValue!11883)))) e!1351640 tp_is_empty!9487 setRes!14794 tp!649635))))

(declare-fun condSetEmpty!14794 () Bool)

(assert (=> b!2121956 (= condSetEmpty!14794 (= (_2!13571 (h!29104 mapValue!11883)) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun b!2121957 () Bool)

(declare-fun tp!649633 () Bool)

(assert (=> b!2121957 (= e!1351639 tp!649633)))

(declare-fun setIsEmpty!14794 () Bool)

(assert (=> setIsEmpty!14794 setRes!14794))

(declare-fun tp!649631 () Bool)

(declare-fun setElem!14794 () Context!2470)

(declare-fun setNonEmpty!14794 () Bool)

(assert (=> setNonEmpty!14794 (= setRes!14794 (and tp!649631 (inv!31298 setElem!14794) e!1351635))))

(declare-fun setRest!14793 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14794 (= (_2!13571 (h!29104 mapValue!11883)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14794 true) setRest!14793))))

(declare-fun mapNonEmpty!11883 () Bool)

(declare-fun tp!649634 () Bool)

(assert (=> mapNonEmpty!11883 (= mapRes!11883 (and tp!649634 e!1351638))))

(declare-fun mapRest!11883 () (Array (_ BitVec 32) List!23787))

(declare-fun mapKey!11883 () (_ BitVec 32))

(assert (=> mapNonEmpty!11883 (= mapRest!11864 (store mapRest!11883 mapKey!11883 mapValue!11883))))

(assert (= (and mapNonEmpty!11864 condMapEmpty!11883) mapIsEmpty!11883))

(assert (= (and mapNonEmpty!11864 (not condMapEmpty!11883)) mapNonEmpty!11883))

(assert (= b!2121956 b!2121955))

(assert (= (and b!2121956 condSetEmpty!14794) setIsEmpty!14794))

(assert (= (and b!2121956 (not condSetEmpty!14794)) setNonEmpty!14794))

(assert (= setNonEmpty!14794 b!2121954))

(assert (= (and mapNonEmpty!11883 ((_ is Cons!23703) mapValue!11883)) b!2121956))

(assert (= b!2121952 b!2121957))

(assert (= (and b!2121952 condSetEmpty!14793) setIsEmpty!14793))

(assert (= (and b!2121952 (not condSetEmpty!14793)) setNonEmpty!14793))

(assert (= setNonEmpty!14793 b!2121953))

(assert (= (and mapNonEmpty!11864 ((_ is Cons!23703) mapDefault!11883)) b!2121952))

(declare-fun m!2575507 () Bool)

(assert (=> b!2121956 m!2575507))

(declare-fun m!2575509 () Bool)

(assert (=> mapNonEmpty!11883 m!2575509))

(declare-fun m!2575511 () Bool)

(assert (=> setNonEmpty!14794 m!2575511))

(declare-fun m!2575513 () Bool)

(assert (=> b!2121952 m!2575513))

(declare-fun m!2575515 () Bool)

(assert (=> setNonEmpty!14793 m!2575515))

(declare-fun setRes!14797 () Bool)

(declare-fun tp!649653 () Bool)

(declare-fun setElem!14797 () Context!2470)

(declare-fun e!1351649 () Bool)

(declare-fun setNonEmpty!14797 () Bool)

(assert (=> setNonEmpty!14797 (= setRes!14797 (and tp!649653 (inv!31298 setElem!14797) e!1351649))))

(declare-fun setRest!14797 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14797 (= (_2!13571 (h!29104 mapValue!11864)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14797 true) setRest!14797))))

(declare-fun b!2121966 () Bool)

(declare-fun tp!649649 () Bool)

(assert (=> b!2121966 (= e!1351649 tp!649649)))

(declare-fun b!2121967 () Bool)

(declare-fun e!1351648 () Bool)

(declare-fun tp!649652 () Bool)

(assert (=> b!2121967 (= e!1351648 tp!649652)))

(declare-fun setIsEmpty!14797 () Bool)

(assert (=> setIsEmpty!14797 setRes!14797))

(declare-fun e!1351647 () Bool)

(assert (=> mapNonEmpty!11864 (= tp!649515 e!1351647)))

(declare-fun tp!649650 () Bool)

(declare-fun tp!649651 () Bool)

(declare-fun b!2121968 () Bool)

(assert (=> b!2121968 (= e!1351647 (and tp!649651 (inv!31298 (_2!13570 (_1!13571 (h!29104 mapValue!11864)))) e!1351648 tp_is_empty!9487 setRes!14797 tp!649650))))

(declare-fun condSetEmpty!14797 () Bool)

(assert (=> b!2121968 (= condSetEmpty!14797 (= (_2!13571 (h!29104 mapValue!11864)) ((as const (Array Context!2470 Bool)) false)))))

(assert (= b!2121968 b!2121967))

(assert (= (and b!2121968 condSetEmpty!14797) setIsEmpty!14797))

(assert (= (and b!2121968 (not condSetEmpty!14797)) setNonEmpty!14797))

(assert (= setNonEmpty!14797 b!2121966))

(assert (= (and mapNonEmpty!11864 ((_ is Cons!23703) mapValue!11864)) b!2121968))

(declare-fun m!2575517 () Bool)

(assert (=> setNonEmpty!14797 m!2575517))

(declare-fun m!2575519 () Bool)

(assert (=> b!2121968 m!2575519))

(declare-fun b!2121973 () Bool)

(declare-fun e!1351652 () Bool)

(declare-fun setRes!14800 () Bool)

(assert (=> b!2121973 (= e!1351652 setRes!14800)))

(declare-fun condSetEmpty!14800 () Bool)

(assert (=> b!2121973 (= condSetEmpty!14800 (= (_2!13573 (h!29103 (zeroValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794879))))))))) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14800 () Bool)

(assert (=> setIsEmpty!14800 setRes!14800))

(declare-fun setNonEmpty!14800 () Bool)

(assert (=> setNonEmpty!14800 (= setRes!14800 true)))

(declare-fun setElem!14800 () Context!2470)

(declare-fun setRest!14800 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14800 (= (_2!13573 (h!29103 (zeroValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794879))))))))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14800 true) setRest!14800))))

(assert (=> b!2121730 e!1351652))

(assert (= (and b!2121973 condSetEmpty!14800) setIsEmpty!14800))

(assert (= (and b!2121973 (not condSetEmpty!14800)) setNonEmpty!14800))

(assert (= (and b!2121730 ((_ is Cons!23702) (zeroValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794879))))))))) b!2121973))

(declare-fun b!2121974 () Bool)

(declare-fun e!1351653 () Bool)

(declare-fun setRes!14801 () Bool)

(assert (=> b!2121974 (= e!1351653 setRes!14801)))

(declare-fun condSetEmpty!14801 () Bool)

(assert (=> b!2121974 (= condSetEmpty!14801 (= (_2!13573 (h!29103 (minValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794879))))))))) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14801 () Bool)

(assert (=> setIsEmpty!14801 setRes!14801))

(declare-fun setNonEmpty!14801 () Bool)

(assert (=> setNonEmpty!14801 (= setRes!14801 true)))

(declare-fun setElem!14801 () Context!2470)

(declare-fun setRest!14801 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14801 (= (_2!13573 (h!29103 (minValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794879))))))))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14801 true) setRest!14801))))

(assert (=> b!2121730 e!1351653))

(assert (= (and b!2121974 condSetEmpty!14801) setIsEmpty!14801))

(assert (= (and b!2121974 (not condSetEmpty!14801)) setNonEmpty!14801))

(assert (= (and b!2121730 ((_ is Cons!23702) (minValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 (_2!13575 lt!794879))))))))) b!2121974))

(declare-fun b!2121975 () Bool)

(declare-fun e!1351654 () Bool)

(declare-fun setRes!14802 () Bool)

(assert (=> b!2121975 (= e!1351654 setRes!14802)))

(declare-fun condSetEmpty!14802 () Bool)

(assert (=> b!2121975 (= condSetEmpty!14802 (= (_2!13571 (h!29104 (zeroValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794879))))))))) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14802 () Bool)

(assert (=> setIsEmpty!14802 setRes!14802))

(declare-fun setNonEmpty!14802 () Bool)

(assert (=> setNonEmpty!14802 (= setRes!14802 true)))

(declare-fun setElem!14802 () Context!2470)

(declare-fun setRest!14802 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14802 (= (_2!13571 (h!29104 (zeroValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794879))))))))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14802 true) setRest!14802))))

(assert (=> b!2121731 e!1351654))

(assert (= (and b!2121975 condSetEmpty!14802) setIsEmpty!14802))

(assert (= (and b!2121975 (not condSetEmpty!14802)) setNonEmpty!14802))

(assert (= (and b!2121731 ((_ is Cons!23703) (zeroValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794879))))))))) b!2121975))

(declare-fun b!2121976 () Bool)

(declare-fun e!1351655 () Bool)

(declare-fun setRes!14803 () Bool)

(assert (=> b!2121976 (= e!1351655 setRes!14803)))

(declare-fun condSetEmpty!14803 () Bool)

(assert (=> b!2121976 (= condSetEmpty!14803 (= (_2!13571 (h!29104 (minValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794879))))))))) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14803 () Bool)

(assert (=> setIsEmpty!14803 setRes!14803))

(declare-fun setNonEmpty!14803 () Bool)

(assert (=> setNonEmpty!14803 (= setRes!14803 true)))

(declare-fun setElem!14803 () Context!2470)

(declare-fun setRest!14803 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14803 (= (_2!13571 (h!29104 (minValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794879))))))))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14803 true) setRest!14803))))

(assert (=> b!2121731 e!1351655))

(assert (= (and b!2121976 condSetEmpty!14803) setIsEmpty!14803))

(assert (= (and b!2121976 (not condSetEmpty!14803)) setNonEmpty!14803))

(assert (= (and b!2121731 ((_ is Cons!23703) (minValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 (_3!1920 lt!794879))))))))) b!2121976))

(declare-fun b!2121977 () Bool)

(declare-fun e!1351656 () Bool)

(declare-fun setRes!14804 () Bool)

(assert (=> b!2121977 (= e!1351656 setRes!14804)))

(declare-fun condSetEmpty!14804 () Bool)

(assert (=> b!2121977 (= condSetEmpty!14804 (= (_2!13573 (h!29103 mapDefault!11871)) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14804 () Bool)

(assert (=> setIsEmpty!14804 setRes!14804))

(declare-fun setNonEmpty!14804 () Bool)

(assert (=> setNonEmpty!14804 (= setRes!14804 true)))

(declare-fun setElem!14804 () Context!2470)

(declare-fun setRest!14804 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14804 (= (_2!13573 (h!29103 mapDefault!11871)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14804 true) setRest!14804))))

(assert (=> b!2121732 e!1351656))

(assert (= (and b!2121977 condSetEmpty!14804) setIsEmpty!14804))

(assert (= (and b!2121977 (not condSetEmpty!14804)) setNonEmpty!14804))

(assert (= (and b!2121732 ((_ is Cons!23702) mapDefault!11871)) b!2121977))

(declare-fun condSetEmpty!14807 () Bool)

(assert (=> setNonEmpty!14764 (= condSetEmpty!14807 (= setRest!14764 ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setRes!14807 () Bool)

(assert (=> setNonEmpty!14764 setRes!14807))

(declare-fun setIsEmpty!14807 () Bool)

(assert (=> setIsEmpty!14807 setRes!14807))

(declare-fun setNonEmpty!14807 () Bool)

(assert (=> setNonEmpty!14807 (= setRes!14807 true)))

(declare-fun setElem!14807 () Context!2470)

(declare-fun setRest!14807 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14807 (= setRest!14764 ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14807 true) setRest!14807))))

(assert (= (and setNonEmpty!14764 condSetEmpty!14807) setIsEmpty!14807))

(assert (= (and setNonEmpty!14764 (not condSetEmpty!14807)) setNonEmpty!14807))

(declare-fun b!2121980 () Bool)

(declare-fun e!1351658 () Bool)

(declare-fun tp!649657 () Bool)

(assert (=> b!2121980 (= e!1351658 tp!649657)))

(declare-fun setNonEmpty!14808 () Bool)

(declare-fun setElem!14808 () Context!2470)

(declare-fun setRes!14808 () Bool)

(declare-fun e!1351659 () Bool)

(declare-fun tp!649654 () Bool)

(assert (=> setNonEmpty!14808 (= setRes!14808 (and tp!649654 (inv!31298 setElem!14808) e!1351659))))

(declare-fun setRest!14808 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14808 (= (_2!13573 (h!29103 (zeroValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14808 true) setRest!14808))))

(declare-fun e!1351657 () Bool)

(declare-fun b!2121982 () Bool)

(declare-fun tp!649656 () Bool)

(assert (=> b!2121982 (= e!1351657 (and (inv!31298 (_1!13572 (_1!13573 (h!29103 (zeroValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991)))))))))) e!1351658 tp_is_empty!9487 setRes!14808 tp!649656))))

(declare-fun condSetEmpty!14808 () Bool)

(assert (=> b!2121982 (= condSetEmpty!14808 (= (_2!13573 (h!29103 (zeroValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991)))))))) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14808 () Bool)

(assert (=> setIsEmpty!14808 setRes!14808))

(assert (=> b!2121665 (= tp!649512 e!1351657)))

(declare-fun b!2121981 () Bool)

(declare-fun tp!649655 () Bool)

(assert (=> b!2121981 (= e!1351659 tp!649655)))

(assert (= b!2121982 b!2121980))

(assert (= (and b!2121982 condSetEmpty!14808) setIsEmpty!14808))

(assert (= (and b!2121982 (not condSetEmpty!14808)) setNonEmpty!14808))

(assert (= setNonEmpty!14808 b!2121981))

(assert (= (and b!2121665 ((_ is Cons!23702) (zeroValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991)))))))) b!2121982))

(declare-fun m!2575521 () Bool)

(assert (=> setNonEmpty!14808 m!2575521))

(declare-fun m!2575523 () Bool)

(assert (=> b!2121982 m!2575523))

(declare-fun b!2121983 () Bool)

(declare-fun e!1351661 () Bool)

(declare-fun tp!649661 () Bool)

(assert (=> b!2121983 (= e!1351661 tp!649661)))

(declare-fun setRes!14809 () Bool)

(declare-fun setNonEmpty!14809 () Bool)

(declare-fun setElem!14809 () Context!2470)

(declare-fun e!1351662 () Bool)

(declare-fun tp!649658 () Bool)

(assert (=> setNonEmpty!14809 (= setRes!14809 (and tp!649658 (inv!31298 setElem!14809) e!1351662))))

(declare-fun setRest!14809 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14809 (= (_2!13573 (h!29103 (minValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14809 true) setRest!14809))))

(declare-fun b!2121985 () Bool)

(declare-fun tp!649660 () Bool)

(declare-fun e!1351660 () Bool)

(assert (=> b!2121985 (= e!1351660 (and (inv!31298 (_1!13572 (_1!13573 (h!29103 (minValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991)))))))))) e!1351661 tp_is_empty!9487 setRes!14809 tp!649660))))

(declare-fun condSetEmpty!14809 () Bool)

(assert (=> b!2121985 (= condSetEmpty!14809 (= (_2!13573 (h!29103 (minValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991)))))))) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14809 () Bool)

(assert (=> setIsEmpty!14809 setRes!14809))

(assert (=> b!2121665 (= tp!649514 e!1351660)))

(declare-fun b!2121984 () Bool)

(declare-fun tp!649659 () Bool)

(assert (=> b!2121984 (= e!1351662 tp!649659)))

(assert (= b!2121985 b!2121983))

(assert (= (and b!2121985 condSetEmpty!14809) setIsEmpty!14809))

(assert (= (and b!2121985 (not condSetEmpty!14809)) setNonEmpty!14809))

(assert (= setNonEmpty!14809 b!2121984))

(assert (= (and b!2121665 ((_ is Cons!23702) (minValue!2709 (v!28233 (underlying!5096 (v!28234 (underlying!5097 (cache!2745 cacheUp!991)))))))) b!2121985))

(declare-fun m!2575525 () Bool)

(assert (=> setNonEmpty!14809 m!2575525))

(declare-fun m!2575527 () Bool)

(assert (=> b!2121985 m!2575527))

(declare-fun b!2121990 () Bool)

(declare-fun e!1351665 () Bool)

(declare-fun tp!649666 () Bool)

(declare-fun tp!649667 () Bool)

(assert (=> b!2121990 (= e!1351665 (and tp!649666 tp!649667))))

(assert (=> b!2121657 (= tp!649506 e!1351665)))

(assert (= (and b!2121657 ((_ is Cons!23701) (exprs!1735 setElem!14761))) b!2121990))

(declare-fun setNonEmpty!14812 () Bool)

(declare-fun setRes!14812 () Bool)

(assert (=> setNonEmpty!14812 (= setRes!14812 true)))

(declare-fun setElem!14812 () Context!2470)

(declare-fun setRest!14812 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14812 (= (z!5723 (h!29106 (t!196305 (_2!13574 (_1!13575 lt!794879))))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14812 true) setRest!14812))))

(declare-fun b!2121997 () Bool)

(declare-fun e!1351670 () Bool)

(declare-fun e!1351671 () Bool)

(assert (=> b!2121997 (= e!1351670 e!1351671)))

(declare-fun b!2121998 () Bool)

(assert (=> b!2121998 (= e!1351671 setRes!14812)))

(declare-fun condSetEmpty!14812 () Bool)

(assert (=> b!2121998 (= condSetEmpty!14812 (= (z!5723 (h!29106 (t!196305 (_2!13574 (_1!13575 lt!794879))))) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14812 () Bool)

(assert (=> setIsEmpty!14812 setRes!14812))

(assert (=> b!2121725 e!1351670))

(assert (= (and b!2121998 condSetEmpty!14812) setIsEmpty!14812))

(assert (= (and b!2121998 (not condSetEmpty!14812)) setNonEmpty!14812))

(assert (= b!2121997 b!2121998))

(assert (= (and b!2121725 ((_ is Cons!23705) (t!196305 (_2!13574 (_1!13575 lt!794879))))) b!2121997))

(declare-fun setElem!14813 () Context!2470)

(declare-fun e!1351674 () Bool)

(declare-fun setNonEmpty!14813 () Bool)

(declare-fun tp!649672 () Bool)

(declare-fun setRes!14813 () Bool)

(assert (=> setNonEmpty!14813 (= setRes!14813 (and tp!649672 (inv!31298 setElem!14813) e!1351674))))

(declare-fun setRest!14813 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14813 (= (_2!13571 (h!29104 (zeroValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14813 true) setRest!14813))))

(declare-fun b!2121999 () Bool)

(declare-fun tp!649668 () Bool)

(assert (=> b!2121999 (= e!1351674 tp!649668)))

(declare-fun b!2122000 () Bool)

(declare-fun e!1351673 () Bool)

(declare-fun tp!649671 () Bool)

(assert (=> b!2122000 (= e!1351673 tp!649671)))

(declare-fun setIsEmpty!14813 () Bool)

(assert (=> setIsEmpty!14813 setRes!14813))

(declare-fun e!1351672 () Bool)

(assert (=> b!2121676 (= tp!649505 e!1351672)))

(declare-fun tp!649669 () Bool)

(declare-fun tp!649670 () Bool)

(declare-fun b!2122001 () Bool)

(assert (=> b!2122001 (= e!1351672 (and tp!649670 (inv!31298 (_2!13570 (_1!13571 (h!29104 (zeroValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110)))))))))) e!1351673 tp_is_empty!9487 setRes!14813 tp!649669))))

(declare-fun condSetEmpty!14813 () Bool)

(assert (=> b!2122001 (= condSetEmpty!14813 (= (_2!13571 (h!29104 (zeroValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110)))))))) ((as const (Array Context!2470 Bool)) false)))))

(assert (= b!2122001 b!2122000))

(assert (= (and b!2122001 condSetEmpty!14813) setIsEmpty!14813))

(assert (= (and b!2122001 (not condSetEmpty!14813)) setNonEmpty!14813))

(assert (= setNonEmpty!14813 b!2121999))

(assert (= (and b!2121676 ((_ is Cons!23703) (zeroValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110)))))))) b!2122001))

(declare-fun m!2575529 () Bool)

(assert (=> setNonEmpty!14813 m!2575529))

(declare-fun m!2575531 () Bool)

(assert (=> b!2122001 m!2575531))

(declare-fun setNonEmpty!14814 () Bool)

(declare-fun setRes!14814 () Bool)

(declare-fun e!1351677 () Bool)

(declare-fun setElem!14814 () Context!2470)

(declare-fun tp!649677 () Bool)

(assert (=> setNonEmpty!14814 (= setRes!14814 (and tp!649677 (inv!31298 setElem!14814) e!1351677))))

(declare-fun setRest!14814 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14814 (= (_2!13571 (h!29104 (minValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14814 true) setRest!14814))))

(declare-fun b!2122002 () Bool)

(declare-fun tp!649673 () Bool)

(assert (=> b!2122002 (= e!1351677 tp!649673)))

(declare-fun b!2122003 () Bool)

(declare-fun e!1351676 () Bool)

(declare-fun tp!649676 () Bool)

(assert (=> b!2122003 (= e!1351676 tp!649676)))

(declare-fun setIsEmpty!14814 () Bool)

(assert (=> setIsEmpty!14814 setRes!14814))

(declare-fun e!1351675 () Bool)

(assert (=> b!2121676 (= tp!649497 e!1351675)))

(declare-fun tp!649674 () Bool)

(declare-fun tp!649675 () Bool)

(declare-fun b!2122004 () Bool)

(assert (=> b!2122004 (= e!1351675 (and tp!649675 (inv!31298 (_2!13570 (_1!13571 (h!29104 (minValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110)))))))))) e!1351676 tp_is_empty!9487 setRes!14814 tp!649674))))

(declare-fun condSetEmpty!14814 () Bool)

(assert (=> b!2122004 (= condSetEmpty!14814 (= (_2!13571 (h!29104 (minValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110)))))))) ((as const (Array Context!2470 Bool)) false)))))

(assert (= b!2122004 b!2122003))

(assert (= (and b!2122004 condSetEmpty!14814) setIsEmpty!14814))

(assert (= (and b!2122004 (not condSetEmpty!14814)) setNonEmpty!14814))

(assert (= setNonEmpty!14814 b!2122002))

(assert (= (and b!2121676 ((_ is Cons!23703) (minValue!2708 (v!28231 (underlying!5095 (v!28232 (underlying!5098 (cache!2746 cacheDown!1110)))))))) b!2122004))

(declare-fun m!2575533 () Bool)

(assert (=> setNonEmpty!14814 m!2575533))

(declare-fun m!2575535 () Bool)

(assert (=> b!2122004 m!2575535))

(declare-fun tp!649679 () Bool)

(declare-fun tp!649680 () Bool)

(declare-fun b!2122005 () Bool)

(declare-fun e!1351679 () Bool)

(assert (=> b!2122005 (= e!1351679 (and (inv!31293 (left!18336 (c!339727 (totalInput!2906 cacheFurthestNullable!130)))) tp!649679 (inv!31293 (right!18666 (c!339727 (totalInput!2906 cacheFurthestNullable!130)))) tp!649680))))

(declare-fun b!2122007 () Bool)

(declare-fun e!1351678 () Bool)

(declare-fun tp!649678 () Bool)

(assert (=> b!2122007 (= e!1351678 tp!649678)))

(declare-fun b!2122006 () Bool)

(assert (=> b!2122006 (= e!1351679 (and (inv!31301 (xs!10745 (c!339727 (totalInput!2906 cacheFurthestNullable!130)))) e!1351678))))

(assert (=> b!2121678 (= tp!649502 (and (inv!31293 (c!339727 (totalInput!2906 cacheFurthestNullable!130))) e!1351679))))

(assert (= (and b!2121678 ((_ is Node!7803) (c!339727 (totalInput!2906 cacheFurthestNullable!130)))) b!2122005))

(assert (= b!2122006 b!2122007))

(assert (= (and b!2121678 ((_ is Leaf!11403) (c!339727 (totalInput!2906 cacheFurthestNullable!130)))) b!2122006))

(declare-fun m!2575537 () Bool)

(assert (=> b!2122005 m!2575537))

(declare-fun m!2575539 () Bool)

(assert (=> b!2122005 m!2575539))

(declare-fun m!2575541 () Bool)

(assert (=> b!2122006 m!2575541))

(assert (=> b!2121678 m!2575305))

(declare-fun b!2122014 () Bool)

(declare-fun e!1351685 () Bool)

(declare-fun setRes!14820 () Bool)

(assert (=> b!2122014 (= e!1351685 setRes!14820)))

(declare-fun condSetEmpty!14820 () Bool)

(declare-fun mapValue!11886 () List!23786)

(assert (=> b!2122014 (= condSetEmpty!14820 (= (_2!13573 (h!29103 mapValue!11886)) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setNonEmpty!14819 () Bool)

(declare-fun setRes!14819 () Bool)

(assert (=> setNonEmpty!14819 (= setRes!14819 true)))

(declare-fun mapDefault!11886 () List!23786)

(declare-fun setElem!14820 () Context!2470)

(declare-fun setRest!14819 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14819 (= (_2!13573 (h!29103 mapDefault!11886)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14820 true) setRest!14819))))

(declare-fun setNonEmpty!14820 () Bool)

(assert (=> setNonEmpty!14820 (= setRes!14820 true)))

(declare-fun setElem!14819 () Context!2470)

(declare-fun setRest!14820 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14820 (= (_2!13573 (h!29103 mapValue!11886)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14819 true) setRest!14820))))

(declare-fun setIsEmpty!14819 () Bool)

(assert (=> setIsEmpty!14819 setRes!14820))

(declare-fun condMapEmpty!11886 () Bool)

(assert (=> mapNonEmpty!11872 (= condMapEmpty!11886 (= mapRest!11872 ((as const (Array (_ BitVec 32) List!23786)) mapDefault!11886)))))

(declare-fun e!1351684 () Bool)

(declare-fun mapRes!11886 () Bool)

(assert (=> mapNonEmpty!11872 (and e!1351684 mapRes!11886)))

(declare-fun setIsEmpty!14820 () Bool)

(assert (=> setIsEmpty!14820 setRes!14819))

(declare-fun b!2122015 () Bool)

(assert (=> b!2122015 (= e!1351684 setRes!14819)))

(declare-fun condSetEmpty!14819 () Bool)

(assert (=> b!2122015 (= condSetEmpty!14819 (= (_2!13573 (h!29103 mapDefault!11886)) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun mapIsEmpty!11886 () Bool)

(assert (=> mapIsEmpty!11886 mapRes!11886))

(declare-fun mapNonEmpty!11886 () Bool)

(assert (=> mapNonEmpty!11886 (= mapRes!11886 e!1351685)))

(declare-fun mapKey!11886 () (_ BitVec 32))

(declare-fun mapRest!11886 () (Array (_ BitVec 32) List!23786))

(assert (=> mapNonEmpty!11886 (= mapRest!11872 (store mapRest!11886 mapKey!11886 mapValue!11886))))

(assert (= (and mapNonEmpty!11872 condMapEmpty!11886) mapIsEmpty!11886))

(assert (= (and mapNonEmpty!11872 (not condMapEmpty!11886)) mapNonEmpty!11886))

(assert (= (and b!2122014 condSetEmpty!14820) setIsEmpty!14819))

(assert (= (and b!2122014 (not condSetEmpty!14820)) setNonEmpty!14820))

(assert (= (and mapNonEmpty!11886 ((_ is Cons!23702) mapValue!11886)) b!2122014))

(assert (= (and b!2122015 condSetEmpty!14819) setIsEmpty!14820))

(assert (= (and b!2122015 (not condSetEmpty!14819)) setNonEmpty!14819))

(assert (= (and mapNonEmpty!11872 ((_ is Cons!23702) mapDefault!11886)) b!2122015))

(declare-fun m!2575543 () Bool)

(assert (=> mapNonEmpty!11886 m!2575543))

(declare-fun b!2122016 () Bool)

(declare-fun e!1351686 () Bool)

(declare-fun setRes!14821 () Bool)

(assert (=> b!2122016 (= e!1351686 setRes!14821)))

(declare-fun condSetEmpty!14821 () Bool)

(assert (=> b!2122016 (= condSetEmpty!14821 (= (_2!13573 (h!29103 mapValue!11872)) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14821 () Bool)

(assert (=> setIsEmpty!14821 setRes!14821))

(declare-fun setNonEmpty!14821 () Bool)

(assert (=> setNonEmpty!14821 (= setRes!14821 true)))

(declare-fun setElem!14821 () Context!2470)

(declare-fun setRest!14821 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14821 (= (_2!13573 (h!29103 mapValue!11872)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14821 true) setRest!14821))))

(assert (=> mapNonEmpty!11872 e!1351686))

(assert (= (and b!2122016 condSetEmpty!14821) setIsEmpty!14821))

(assert (= (and b!2122016 (not condSetEmpty!14821)) setNonEmpty!14821))

(assert (= (and mapNonEmpty!11872 ((_ is Cons!23702) mapValue!11872)) b!2122016))

(declare-fun tp!649682 () Bool)

(declare-fun tp!649683 () Bool)

(declare-fun b!2122017 () Bool)

(declare-fun e!1351688 () Bool)

(assert (=> b!2122017 (= e!1351688 (and (inv!31293 (left!18336 (c!339727 input!5507))) tp!649682 (inv!31293 (right!18666 (c!339727 input!5507))) tp!649683))))

(declare-fun b!2122019 () Bool)

(declare-fun e!1351687 () Bool)

(declare-fun tp!649681 () Bool)

(assert (=> b!2122019 (= e!1351687 tp!649681)))

(declare-fun b!2122018 () Bool)

(assert (=> b!2122018 (= e!1351688 (and (inv!31301 (xs!10745 (c!339727 input!5507))) e!1351687))))

(assert (=> b!2121653 (= tp!649510 (and (inv!31293 (c!339727 input!5507)) e!1351688))))

(assert (= (and b!2121653 ((_ is Node!7803) (c!339727 input!5507))) b!2122017))

(assert (= b!2122018 b!2122019))

(assert (= (and b!2121653 ((_ is Leaf!11403) (c!339727 input!5507))) b!2122018))

(declare-fun m!2575545 () Bool)

(assert (=> b!2122017 m!2575545))

(declare-fun m!2575547 () Bool)

(assert (=> b!2122017 m!2575547))

(declare-fun m!2575549 () Bool)

(assert (=> b!2122018 m!2575549))

(assert (=> b!2121653 m!2575333))

(declare-fun tp!649688 () Bool)

(declare-fun setRes!14822 () Bool)

(declare-fun setNonEmpty!14822 () Bool)

(declare-fun setElem!14822 () Context!2470)

(declare-fun e!1351691 () Bool)

(assert (=> setNonEmpty!14822 (= setRes!14822 (and tp!649688 (inv!31298 setElem!14822) e!1351691))))

(declare-fun setRest!14822 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14822 (= (_2!13571 (h!29104 mapDefault!11866)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14822 true) setRest!14822))))

(declare-fun b!2122020 () Bool)

(declare-fun tp!649684 () Bool)

(assert (=> b!2122020 (= e!1351691 tp!649684)))

(declare-fun b!2122021 () Bool)

(declare-fun e!1351690 () Bool)

(declare-fun tp!649687 () Bool)

(assert (=> b!2122021 (= e!1351690 tp!649687)))

(declare-fun setIsEmpty!14822 () Bool)

(assert (=> setIsEmpty!14822 setRes!14822))

(declare-fun e!1351689 () Bool)

(assert (=> b!2121654 (= tp!649519 e!1351689)))

(declare-fun tp!649685 () Bool)

(declare-fun b!2122022 () Bool)

(declare-fun tp!649686 () Bool)

(assert (=> b!2122022 (= e!1351689 (and tp!649686 (inv!31298 (_2!13570 (_1!13571 (h!29104 mapDefault!11866)))) e!1351690 tp_is_empty!9487 setRes!14822 tp!649685))))

(declare-fun condSetEmpty!14822 () Bool)

(assert (=> b!2122022 (= condSetEmpty!14822 (= (_2!13571 (h!29104 mapDefault!11866)) ((as const (Array Context!2470 Bool)) false)))))

(assert (= b!2122022 b!2122021))

(assert (= (and b!2122022 condSetEmpty!14822) setIsEmpty!14822))

(assert (= (and b!2122022 (not condSetEmpty!14822)) setNonEmpty!14822))

(assert (= setNonEmpty!14822 b!2122020))

(assert (= (and b!2121654 ((_ is Cons!23703) mapDefault!11866)) b!2122022))

(declare-fun m!2575551 () Bool)

(assert (=> setNonEmpty!14822 m!2575551))

(declare-fun m!2575553 () Bool)

(assert (=> b!2122022 m!2575553))

(declare-fun setIsEmpty!14827 () Bool)

(declare-fun setRes!14827 () Bool)

(assert (=> setIsEmpty!14827 setRes!14827))

(declare-fun mapIsEmpty!11889 () Bool)

(declare-fun mapRes!11889 () Bool)

(assert (=> mapIsEmpty!11889 mapRes!11889))

(declare-fun b!2122029 () Bool)

(declare-fun e!1351697 () Bool)

(declare-fun setRes!14828 () Bool)

(assert (=> b!2122029 (= e!1351697 setRes!14828)))

(declare-fun condSetEmpty!14828 () Bool)

(declare-fun mapValue!11889 () List!23787)

(assert (=> b!2122029 (= condSetEmpty!14828 (= (_2!13571 (h!29104 mapValue!11889)) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun mapNonEmpty!11889 () Bool)

(assert (=> mapNonEmpty!11889 (= mapRes!11889 e!1351697)))

(declare-fun mapKey!11889 () (_ BitVec 32))

(declare-fun mapRest!11889 () (Array (_ BitVec 32) List!23787))

(assert (=> mapNonEmpty!11889 (= mapRest!11871 (store mapRest!11889 mapKey!11889 mapValue!11889))))

(declare-fun setNonEmpty!14827 () Bool)

(assert (=> setNonEmpty!14827 (= setRes!14827 true)))

(declare-fun mapDefault!11889 () List!23787)

(declare-fun setElem!14828 () Context!2470)

(declare-fun setRest!14827 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14827 (= (_2!13571 (h!29104 mapDefault!11889)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14828 true) setRest!14827))))

(declare-fun condMapEmpty!11889 () Bool)

(assert (=> mapNonEmpty!11871 (= condMapEmpty!11889 (= mapRest!11871 ((as const (Array (_ BitVec 32) List!23787)) mapDefault!11889)))))

(declare-fun e!1351696 () Bool)

(assert (=> mapNonEmpty!11871 (and e!1351696 mapRes!11889)))

(declare-fun setIsEmpty!14828 () Bool)

(assert (=> setIsEmpty!14828 setRes!14828))

(declare-fun setNonEmpty!14828 () Bool)

(assert (=> setNonEmpty!14828 (= setRes!14828 true)))

(declare-fun setElem!14827 () Context!2470)

(declare-fun setRest!14828 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14828 (= (_2!13571 (h!29104 mapValue!11889)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14827 true) setRest!14828))))

(declare-fun b!2122030 () Bool)

(assert (=> b!2122030 (= e!1351696 setRes!14827)))

(declare-fun condSetEmpty!14827 () Bool)

(assert (=> b!2122030 (= condSetEmpty!14827 (= (_2!13571 (h!29104 mapDefault!11889)) ((as const (Array Context!2470 Bool)) false)))))

(assert (= (and mapNonEmpty!11871 condMapEmpty!11889) mapIsEmpty!11889))

(assert (= (and mapNonEmpty!11871 (not condMapEmpty!11889)) mapNonEmpty!11889))

(assert (= (and b!2122029 condSetEmpty!14828) setIsEmpty!14828))

(assert (= (and b!2122029 (not condSetEmpty!14828)) setNonEmpty!14828))

(assert (= (and mapNonEmpty!11889 ((_ is Cons!23703) mapValue!11889)) b!2122029))

(assert (= (and b!2122030 condSetEmpty!14827) setIsEmpty!14827))

(assert (= (and b!2122030 (not condSetEmpty!14827)) setNonEmpty!14827))

(assert (= (and mapNonEmpty!11871 ((_ is Cons!23703) mapDefault!11889)) b!2122030))

(declare-fun m!2575555 () Bool)

(assert (=> mapNonEmpty!11889 m!2575555))

(declare-fun b!2122031 () Bool)

(declare-fun e!1351698 () Bool)

(declare-fun setRes!14829 () Bool)

(assert (=> b!2122031 (= e!1351698 setRes!14829)))

(declare-fun condSetEmpty!14829 () Bool)

(assert (=> b!2122031 (= condSetEmpty!14829 (= (_2!13571 (h!29104 mapValue!11871)) ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setIsEmpty!14829 () Bool)

(assert (=> setIsEmpty!14829 setRes!14829))

(declare-fun setNonEmpty!14829 () Bool)

(assert (=> setNonEmpty!14829 (= setRes!14829 true)))

(declare-fun setElem!14829 () Context!2470)

(declare-fun setRest!14829 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14829 (= (_2!13571 (h!29104 mapValue!11871)) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14829 true) setRest!14829))))

(assert (=> mapNonEmpty!11871 e!1351698))

(assert (= (and b!2122031 condSetEmpty!14829) setIsEmpty!14829))

(assert (= (and b!2122031 (not condSetEmpty!14829)) setNonEmpty!14829))

(assert (= (and mapNonEmpty!11871 ((_ is Cons!23703) mapValue!11871)) b!2122031))

(declare-fun setIsEmpty!14830 () Bool)

(declare-fun setRes!14830 () Bool)

(assert (=> setIsEmpty!14830 setRes!14830))

(declare-fun e!1351700 () Bool)

(declare-fun setNonEmpty!14830 () Bool)

(declare-fun tp!649691 () Bool)

(declare-fun setElem!14830 () Context!2470)

(assert (=> setNonEmpty!14830 (= setRes!14830 (and tp!649691 (inv!31298 setElem!14830) e!1351700))))

(declare-fun setRest!14830 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14830 (= (_1!13576 (_1!13577 (h!29107 (zeroValue!2710 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14830 true) setRest!14830))))

(declare-fun b!2122033 () Bool)

(declare-fun tp!649690 () Bool)

(assert (=> b!2122033 (= e!1351700 tp!649690)))

(declare-fun e!1351699 () Bool)

(assert (=> b!2121674 (= tp!649509 e!1351699)))

(declare-fun b!2122032 () Bool)

(declare-fun tp!649689 () Bool)

(assert (=> b!2122032 (= e!1351699 (and setRes!14830 tp!649689))))

(declare-fun condSetEmpty!14830 () Bool)

(assert (=> b!2122032 (= condSetEmpty!14830 (= (_1!13576 (_1!13577 (h!29107 (zeroValue!2710 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))))))) ((as const (Array Context!2470 Bool)) false)))))

(assert (= (and b!2122032 condSetEmpty!14830) setIsEmpty!14830))

(assert (= (and b!2122032 (not condSetEmpty!14830)) setNonEmpty!14830))

(assert (= setNonEmpty!14830 b!2122033))

(assert (= (and b!2121674 ((_ is Cons!23706) (zeroValue!2710 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130)))))))) b!2122032))

(declare-fun m!2575557 () Bool)

(assert (=> setNonEmpty!14830 m!2575557))

(declare-fun setIsEmpty!14831 () Bool)

(declare-fun setRes!14831 () Bool)

(assert (=> setIsEmpty!14831 setRes!14831))

(declare-fun tp!649694 () Bool)

(declare-fun setElem!14831 () Context!2470)

(declare-fun setNonEmpty!14831 () Bool)

(declare-fun e!1351702 () Bool)

(assert (=> setNonEmpty!14831 (= setRes!14831 (and tp!649694 (inv!31298 setElem!14831) e!1351702))))

(declare-fun setRest!14831 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14831 (= (_1!13576 (_1!13577 (h!29107 (minValue!2710 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14831 true) setRest!14831))))

(declare-fun b!2122035 () Bool)

(declare-fun tp!649693 () Bool)

(assert (=> b!2122035 (= e!1351702 tp!649693)))

(declare-fun e!1351701 () Bool)

(assert (=> b!2121674 (= tp!649518 e!1351701)))

(declare-fun b!2122034 () Bool)

(declare-fun tp!649692 () Bool)

(assert (=> b!2122034 (= e!1351701 (and setRes!14831 tp!649692))))

(declare-fun condSetEmpty!14831 () Bool)

(assert (=> b!2122034 (= condSetEmpty!14831 (= (_1!13576 (_1!13577 (h!29107 (minValue!2710 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130))))))))) ((as const (Array Context!2470 Bool)) false)))))

(assert (= (and b!2122034 condSetEmpty!14831) setIsEmpty!14831))

(assert (= (and b!2122034 (not condSetEmpty!14831)) setNonEmpty!14831))

(assert (= setNonEmpty!14831 b!2122035))

(assert (= (and b!2121674 ((_ is Cons!23706) (minValue!2710 (v!28235 (underlying!5099 (v!28236 (underlying!5100 (cache!2747 cacheFurthestNullable!130)))))))) b!2122034))

(declare-fun m!2575559 () Bool)

(assert (=> setNonEmpty!14831 m!2575559))

(declare-fun condSetEmpty!14834 () Bool)

(assert (=> setNonEmpty!14761 (= condSetEmpty!14834 (= setRest!14761 ((as const (Array Context!2470 Bool)) false)))))

(declare-fun setRes!14834 () Bool)

(assert (=> setNonEmpty!14761 (= tp!649516 setRes!14834)))

(declare-fun setIsEmpty!14834 () Bool)

(assert (=> setIsEmpty!14834 setRes!14834))

(declare-fun tp!649699 () Bool)

(declare-fun setNonEmpty!14834 () Bool)

(declare-fun e!1351705 () Bool)

(declare-fun setElem!14834 () Context!2470)

(assert (=> setNonEmpty!14834 (= setRes!14834 (and tp!649699 (inv!31298 setElem!14834) e!1351705))))

(declare-fun setRest!14834 () (InoxSet Context!2470))

(assert (=> setNonEmpty!14834 (= setRest!14761 ((_ map or) (store ((as const (Array Context!2470 Bool)) false) setElem!14834 true) setRest!14834))))

(declare-fun b!2122040 () Bool)

(declare-fun tp!649700 () Bool)

(assert (=> b!2122040 (= e!1351705 tp!649700)))

(assert (= (and setNonEmpty!14761 condSetEmpty!14834) setIsEmpty!14834))

(assert (= (and setNonEmpty!14761 (not condSetEmpty!14834)) setNonEmpty!14834))

(assert (= setNonEmpty!14834 b!2122040))

(declare-fun m!2575561 () Bool)

(assert (=> setNonEmpty!14834 m!2575561))

(declare-fun b_lambda!70461 () Bool)

(assert (= b_lambda!70459 (or b!2121663 b_lambda!70461)))

(declare-fun bs!442725 () Bool)

(declare-fun d!643450 () Bool)

(assert (= bs!442725 (and d!643450 b!2121663)))

(assert (=> bs!442725 (= (dynLambda!11326 lambda!78543 (h!29106 (_2!13574 (_1!13575 lt!794879)))) (= (res!919063 (h!29106 (_2!13574 (_1!13575 lt!794879)))) (_1!13574 (_1!13575 lt!794879))))))

(assert (=> b!2121844 d!643450))

(declare-fun b_lambda!70463 () Bool)

(assert (= b_lambda!70457 (or b!2121660 b_lambda!70463)))

(declare-fun bs!442726 () Bool)

(declare-fun d!643452 () Bool)

(assert (= bs!442726 (and d!643452 b!2121660)))

(assert (=> bs!442726 (= (dynLambda!11326 lambda!78544 (h!29106 (_2!13574 (_1!13575 lt!794879)))) (= (totalInput!2905 (h!29106 (_2!13574 (_1!13575 lt!794879)))) totalInput!886))))

(assert (=> b!2121752 d!643452))

(check-sat (not b!2121917) (not setNonEmpty!14771) (not b_next!62351) (not b_next!62341) (not b!2121918) (not setNonEmpty!14801) (not b!2121980) (not b!2121902) (not b!2122016) (not b!2122032) (not bm!128674) (not b!2121762) (not b!2121862) (not b!2121771) (not b!2122017) (not d!643426) (not b!2122035) (not b_lambda!70463) (not b!2122029) (not setNonEmpty!14807) (not d!643432) (not setNonEmpty!14800) b_and!171225 (not d!643428) (not setNonEmpty!14813) (not b!2121936) (not setNonEmpty!14804) (not b!2122001) (not b!2121838) (not b!2122031) (not b!2122030) (not b!2121905) (not b!2121982) (not b!2121997) (not setNonEmpty!14780) (not setNonEmpty!14808) b_and!171221 (not b!2122020) (not b!2121974) (not d!643412) (not b!2121953) (not b!2121839) (not setNonEmpty!14819) (not mapNonEmpty!11889) (not b!2121884) tp_is_empty!9487 (not b!2121928) b_and!171219 (not b!2121903) (not setNonEmpty!14802) (not d!643422) (not d!643390) (not b!2121976) (not b!2122003) (not b_next!62345) (not b!2121973) (not b!2121825) (not b!2121937) (not b!2121860) (not b!2121756) (not b!2121968) (not b!2121820) (not b!2121915) (not b!2121757) (not d!643420) (not setNonEmpty!14803) (not setNonEmpty!14821) (not b!2121843) (not b!2122014) (not b!2121845) (not b!2121904) (not d!643440) (not b_next!62349) (not setNonEmpty!14794) (not b!2122006) (not b!2122005) (not b!2121754) (not b!2121954) (not setNonEmpty!14820) (not setNonEmpty!14814) (not b!2122007) (not mapNonEmpty!11883) (not b!2122022) (not b!2121952) (not setNonEmpty!14831) (not b!2121957) (not b!2121875) (not setNonEmpty!14770) (not d!643424) (not d!643406) (not b!2121816) (not b!2121901) (not b!2121782) (not b!2121861) (not b!2121935) (not b!2121984) (not b!2121832) (not b!2121874) (not b!2121966) (not d!643392) (not setNonEmpty!14797) (not setNonEmpty!14829) (not b!2121859) (not setNonEmpty!14779) (not b!2122040) (not mapNonEmpty!11874) (not setNonEmpty!14774) (not b!2121765) (not setNonEmpty!14812) (not b!2121670) (not b!2122034) (not setNonEmpty!14765) (not b!2121977) (not b!2122018) (not b!2121858) (not b!2122019) (not b!2121745) (not b!2121967) (not b!2121753) (not b!2122004) (not b!2121653) (not b!2121747) (not setNonEmpty!14828) (not b!2121885) (not setNonEmpty!14830) (not setNonEmpty!14827) (not b!2121759) (not b!2121981) (not mapNonEmpty!11880) (not b!2121956) (not d!643434) (not setNonEmpty!14784) (not b!2121900) (not setNonEmpty!14788) (not b!2121837) b_and!171217 (not b_next!62347) (not bm!128675) (not b!2121863) (not mapNonEmpty!11873) (not b!2121678) (not b!2121975) (not setNonEmpty!14787) (not b!2121929) (not d!643408) (not d!643410) (not b!2121877) (not mapNonEmpty!11886) (not setNonEmpty!14793) (not b!2122000) (not b!2122002) (not b!2121983) (not b!2121955) (not b!2121814) (not b!2121919) (not b_lambda!70461) (not b!2121985) (not b!2121786) (not setNonEmpty!14822) (not b!2122021) (not setNonEmpty!14809) (not b!2121999) (not b!2121916) b_and!171227 (not setNonEmpty!14783) (not b!2121990) (not b!2121768) (not b!2121914) (not b!2122015) (not b!2121817) (not mapNonEmpty!11877) (not b!2122033) (not bm!128676) (not b!2121818) (not b_next!62343) (not d!643442) (not b!2121876) (not b!2121930) (not setNonEmpty!14834) b_and!171223 (not b!2121819))
(check-sat b_and!171225 b_and!171221 b_and!171219 (not b_next!62345) (not b_next!62349) b_and!171227 (not b_next!62343) b_and!171223 (not b_next!62351) (not b_next!62341) b_and!171217 (not b_next!62347))
