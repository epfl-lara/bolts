; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209566 () Bool)

(assert start!209566)

(declare-fun b!2159635 () Bool)

(declare-fun b_free!63821 () Bool)

(declare-fun b_next!64525 () Bool)

(assert (=> b!2159635 (= b_free!63821 (not b_next!64525))))

(declare-fun tp!673405 () Bool)

(declare-fun b_and!173437 () Bool)

(assert (=> b!2159635 (= tp!673405 b_and!173437)))

(declare-fun b!2159633 () Bool)

(declare-fun b_free!63823 () Bool)

(declare-fun b_next!64527 () Bool)

(assert (=> b!2159633 (= b_free!63823 (not b_next!64527))))

(declare-fun tp!673406 () Bool)

(declare-fun b_and!173439 () Bool)

(assert (=> b!2159633 (= tp!673406 b_and!173439)))

(declare-fun b!2159629 () Bool)

(declare-fun e!1381783 () Bool)

(declare-fun e!1381787 () Bool)

(declare-datatypes ((array!10125 0))(
  ( (array!10126 (arr!4512 (Array (_ BitVec 32) (_ BitVec 64))) (size!19553 (_ BitVec 32))) )
))
(declare-datatypes ((C!12060 0))(
  ( (C!12061 (val!7016 Int)) )
))
(declare-datatypes ((Regex!5957 0))(
  ( (ElementMatch!5957 (c!341847 C!12060)) (Concat!10259 (regOne!12426 Regex!5957) (regTwo!12426 Regex!5957)) (EmptyExpr!5957) (Star!5957 (reg!6286 Regex!5957)) (EmptyLang!5957) (Union!5957 (regOne!12427 Regex!5957) (regTwo!12427 Regex!5957)) )
))
(declare-datatypes ((List!25084 0))(
  ( (Nil!25000) (Cons!25000 (h!30401 Regex!5957) (t!197632 List!25084)) )
))
(declare-datatypes ((Context!3054 0))(
  ( (Context!3055 (exprs!2027 List!25084)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3798 0))(
  ( (tuple3!3799 (_1!14723 (InoxSet Context!3054)) (_2!14723 Int) (_3!2369 Int)) )
))
(declare-datatypes ((tuple2!24708 0))(
  ( (tuple2!24709 (_1!14724 tuple3!3798) (_2!14724 Int)) )
))
(declare-datatypes ((List!25085 0))(
  ( (Nil!25001) (Cons!25001 (h!30402 tuple2!24708) (t!197633 List!25085)) )
))
(declare-datatypes ((array!10127 0))(
  ( (array!10128 (arr!4513 (Array (_ BitVec 32) List!25085)) (size!19554 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5916 0))(
  ( (LongMapFixedSize!5917 (defaultEntry!3323 Int) (mask!7252 (_ BitVec 32)) (extraKeys!3206 (_ BitVec 32)) (zeroValue!3216 List!25085) (minValue!3216 List!25085) (_size!5967 (_ BitVec 32)) (_keys!3255 array!10125) (_values!3238 array!10127) (_vacant!3019 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11657 0))(
  ( (Cell!11658 (v!29387 LongMapFixedSize!5916)) )
))
(declare-datatypes ((MutLongMap!2958 0))(
  ( (LongMap!2958 (underlying!6111 Cell!11657)) (MutLongMapExt!2957 (__x!17050 Int)) )
))
(declare-fun lt!802712 () MutLongMap!2958)

(get-info :version)

(assert (=> b!2159629 (= e!1381783 (and e!1381787 ((_ is LongMap!2958) lt!802712)))))

(declare-datatypes ((Cell!11659 0))(
  ( (Cell!11660 (v!29388 MutLongMap!2958)) )
))
(declare-datatypes ((List!25086 0))(
  ( (Nil!25002) (Cons!25002 (h!30403 C!12060) (t!197634 List!25086)) )
))
(declare-datatypes ((IArray!16191 0))(
  ( (IArray!16192 (innerList!8153 List!25086)) )
))
(declare-datatypes ((Conc!8093 0))(
  ( (Node!8093 (left!19250 Conc!8093) (right!19580 Conc!8093) (csize!16416 Int) (cheight!8304 Int)) (Leaf!11839 (xs!11035 IArray!16191) (csize!16417 Int)) (Empty!8093) )
))
(declare-datatypes ((BalanceConc!15948 0))(
  ( (BalanceConc!15949 (c!341848 Conc!8093)) )
))
(declare-datatypes ((Hashable!2872 0))(
  ( (HashableExt!2871 (__x!17051 Int)) )
))
(declare-datatypes ((MutableMap!2872 0))(
  ( (MutableMapExt!2871 (__x!17052 Int)) (HashMap!2872 (underlying!6112 Cell!11659) (hashF!4795 Hashable!2872) (_size!5968 (_ BitVec 32)) (defaultValue!3034 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1102 0))(
  ( (CacheFurthestNullable!1103 (cache!3253 MutableMap!2872) (totalInput!3420 BalanceConc!15948)) )
))
(declare-fun thiss!29105 () CacheFurthestNullable!1102)

(assert (=> b!2159629 (= lt!802712 (v!29388 (underlying!6112 (cache!3253 thiss!29105))))))

(declare-fun valid!2282 (CacheFurthestNullable!1102) Bool)

(assert (=> start!209566 (not (valid!2282 thiss!29105))))

(declare-fun e!1381785 () Bool)

(declare-fun inv!33105 (CacheFurthestNullable!1102) Bool)

(assert (=> start!209566 (and (inv!33105 thiss!29105) e!1381785)))

(declare-fun b!2159630 () Bool)

(declare-fun e!1381788 () Bool)

(declare-fun tp!673409 () Bool)

(declare-fun mapRes!13961 () Bool)

(assert (=> b!2159630 (= e!1381788 (and tp!673409 mapRes!13961))))

(declare-fun condMapEmpty!13961 () Bool)

(declare-fun mapDefault!13961 () List!25085)

(assert (=> b!2159630 (= condMapEmpty!13961 (= (arr!4513 (_values!3238 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105))))))) ((as const (Array (_ BitVec 32) List!25085)) mapDefault!13961)))))

(declare-fun b!2159631 () Bool)

(declare-fun e!1381781 () Bool)

(declare-fun e!1381786 () Bool)

(assert (=> b!2159631 (= e!1381781 e!1381786)))

(declare-fun b!2159632 () Bool)

(declare-fun e!1381784 () Bool)

(declare-fun tp!673410 () Bool)

(declare-fun inv!33106 (Conc!8093) Bool)

(assert (=> b!2159632 (= e!1381784 (and (inv!33106 (c!341848 (totalInput!3420 thiss!29105))) tp!673410))))

(declare-fun tp!673411 () Bool)

(declare-fun tp!673408 () Bool)

(declare-fun array_inv!3238 (array!10125) Bool)

(declare-fun array_inv!3239 (array!10127) Bool)

(assert (=> b!2159633 (= e!1381786 (and tp!673406 tp!673411 tp!673408 (array_inv!3238 (_keys!3255 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105))))))) (array_inv!3239 (_values!3238 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105))))))) e!1381788))))

(declare-fun b!2159634 () Bool)

(declare-fun e!1381780 () Bool)

(declare-fun inv!33107 (BalanceConc!15948) Bool)

(assert (=> b!2159634 (= e!1381785 (and e!1381780 (inv!33107 (totalInput!3420 thiss!29105)) e!1381784))))

(assert (=> b!2159635 (= e!1381780 (and e!1381783 tp!673405))))

(declare-fun mapIsEmpty!13961 () Bool)

(assert (=> mapIsEmpty!13961 mapRes!13961))

(declare-fun mapNonEmpty!13961 () Bool)

(declare-fun tp!673412 () Bool)

(declare-fun tp!673407 () Bool)

(assert (=> mapNonEmpty!13961 (= mapRes!13961 (and tp!673412 tp!673407))))

(declare-fun mapRest!13961 () (Array (_ BitVec 32) List!25085))

(declare-fun mapValue!13961 () List!25085)

(declare-fun mapKey!13961 () (_ BitVec 32))

(assert (=> mapNonEmpty!13961 (= (arr!4513 (_values!3238 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105))))))) (store mapRest!13961 mapKey!13961 mapValue!13961))))

(declare-fun b!2159636 () Bool)

(assert (=> b!2159636 (= e!1381787 e!1381781)))

(assert (= (and b!2159630 condMapEmpty!13961) mapIsEmpty!13961))

(assert (= (and b!2159630 (not condMapEmpty!13961)) mapNonEmpty!13961))

(assert (= b!2159633 b!2159630))

(assert (= b!2159631 b!2159633))

(assert (= b!2159636 b!2159631))

(assert (= (and b!2159629 ((_ is LongMap!2958) (v!29388 (underlying!6112 (cache!3253 thiss!29105))))) b!2159636))

(assert (= b!2159635 b!2159629))

(assert (= (and b!2159634 ((_ is HashMap!2872) (cache!3253 thiss!29105))) b!2159635))

(assert (= b!2159634 b!2159632))

(assert (= start!209566 b!2159634))

(declare-fun m!2599405 () Bool)

(assert (=> b!2159632 m!2599405))

(declare-fun m!2599407 () Bool)

(assert (=> mapNonEmpty!13961 m!2599407))

(declare-fun m!2599409 () Bool)

(assert (=> b!2159633 m!2599409))

(declare-fun m!2599411 () Bool)

(assert (=> b!2159633 m!2599411))

(declare-fun m!2599413 () Bool)

(assert (=> start!209566 m!2599413))

(declare-fun m!2599415 () Bool)

(assert (=> start!209566 m!2599415))

(declare-fun m!2599417 () Bool)

(assert (=> b!2159634 m!2599417))

(check-sat b_and!173439 (not start!209566) b_and!173437 (not b!2159632) (not b!2159633) (not b_next!64525) (not b!2159634) (not mapNonEmpty!13961) (not b!2159630) (not b_next!64527))
(check-sat b_and!173439 b_and!173437 (not b_next!64525) (not b_next!64527))
(get-model)

(declare-fun d!646844 () Bool)

(declare-fun isBalanced!2515 (Conc!8093) Bool)

(assert (=> d!646844 (= (inv!33107 (totalInput!3420 thiss!29105)) (isBalanced!2515 (c!341848 (totalInput!3420 thiss!29105))))))

(declare-fun bs!446015 () Bool)

(assert (= bs!446015 d!646844))

(declare-fun m!2599419 () Bool)

(assert (=> bs!446015 m!2599419))

(assert (=> b!2159634 d!646844))

(declare-fun d!646846 () Bool)

(assert (=> d!646846 (= (array_inv!3238 (_keys!3255 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105))))))) (bvsge (size!19553 (_keys!3255 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105))))))) #b00000000000000000000000000000000))))

(assert (=> b!2159633 d!646846))

(declare-fun d!646848 () Bool)

(assert (=> d!646848 (= (array_inv!3239 (_values!3238 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105))))))) (bvsge (size!19554 (_values!3238 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105))))))) #b00000000000000000000000000000000))))

(assert (=> b!2159633 d!646848))

(declare-fun d!646850 () Bool)

(declare-fun c!341851 () Bool)

(assert (=> d!646850 (= c!341851 ((_ is Node!8093) (c!341848 (totalInput!3420 thiss!29105))))))

(declare-fun e!1381793 () Bool)

(assert (=> d!646850 (= (inv!33106 (c!341848 (totalInput!3420 thiss!29105))) e!1381793)))

(declare-fun b!2159643 () Bool)

(declare-fun inv!33108 (Conc!8093) Bool)

(assert (=> b!2159643 (= e!1381793 (inv!33108 (c!341848 (totalInput!3420 thiss!29105))))))

(declare-fun b!2159644 () Bool)

(declare-fun e!1381794 () Bool)

(assert (=> b!2159644 (= e!1381793 e!1381794)))

(declare-fun res!930562 () Bool)

(assert (=> b!2159644 (= res!930562 (not ((_ is Leaf!11839) (c!341848 (totalInput!3420 thiss!29105)))))))

(assert (=> b!2159644 (=> res!930562 e!1381794)))

(declare-fun b!2159645 () Bool)

(declare-fun inv!33109 (Conc!8093) Bool)

(assert (=> b!2159645 (= e!1381794 (inv!33109 (c!341848 (totalInput!3420 thiss!29105))))))

(assert (= (and d!646850 c!341851) b!2159643))

(assert (= (and d!646850 (not c!341851)) b!2159644))

(assert (= (and b!2159644 (not res!930562)) b!2159645))

(declare-fun m!2599421 () Bool)

(assert (=> b!2159643 m!2599421))

(declare-fun m!2599423 () Bool)

(assert (=> b!2159645 m!2599423))

(assert (=> b!2159632 d!646850))

(declare-fun d!646852 () Bool)

(declare-fun validCacheMapFurthestNullable!194 (MutableMap!2872 BalanceConc!15948) Bool)

(assert (=> d!646852 (= (valid!2282 thiss!29105) (validCacheMapFurthestNullable!194 (cache!3253 thiss!29105) (totalInput!3420 thiss!29105)))))

(declare-fun bs!446016 () Bool)

(assert (= bs!446016 d!646852))

(declare-fun m!2599425 () Bool)

(assert (=> bs!446016 m!2599425))

(assert (=> start!209566 d!646852))

(declare-fun d!646854 () Bool)

(declare-fun res!930565 () Bool)

(declare-fun e!1381797 () Bool)

(assert (=> d!646854 (=> (not res!930565) (not e!1381797))))

(assert (=> d!646854 (= res!930565 ((_ is HashMap!2872) (cache!3253 thiss!29105)))))

(assert (=> d!646854 (= (inv!33105 thiss!29105) e!1381797)))

(declare-fun b!2159648 () Bool)

(assert (=> b!2159648 (= e!1381797 (validCacheMapFurthestNullable!194 (cache!3253 thiss!29105) (totalInput!3420 thiss!29105)))))

(assert (= (and d!646854 res!930565) b!2159648))

(assert (=> b!2159648 m!2599425))

(assert (=> start!209566 d!646854))

(declare-fun setIsEmpty!17971 () Bool)

(declare-fun setRes!17971 () Bool)

(assert (=> setIsEmpty!17971 setRes!17971))

(declare-fun e!1381803 () Bool)

(assert (=> b!2159633 (= tp!673411 e!1381803)))

(declare-fun b!2159655 () Bool)

(declare-fun tp!673421 () Bool)

(assert (=> b!2159655 (= e!1381803 (and setRes!17971 tp!673421))))

(declare-fun condSetEmpty!17971 () Bool)

(assert (=> b!2159655 (= condSetEmpty!17971 (= (_1!14723 (_1!14724 (h!30402 (zeroValue!3216 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105))))))))) ((as const (Array Context!3054 Bool)) false)))))

(declare-fun b!2159656 () Bool)

(declare-fun e!1381802 () Bool)

(declare-fun tp!673420 () Bool)

(assert (=> b!2159656 (= e!1381802 tp!673420)))

(declare-fun tp!673419 () Bool)

(declare-fun setNonEmpty!17971 () Bool)

(declare-fun setElem!17971 () Context!3054)

(declare-fun inv!33110 (Context!3054) Bool)

(assert (=> setNonEmpty!17971 (= setRes!17971 (and tp!673419 (inv!33110 setElem!17971) e!1381802))))

(declare-fun setRest!17971 () (InoxSet Context!3054))

(assert (=> setNonEmpty!17971 (= (_1!14723 (_1!14724 (h!30402 (zeroValue!3216 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105))))))))) ((_ map or) (store ((as const (Array Context!3054 Bool)) false) setElem!17971 true) setRest!17971))))

(assert (= (and b!2159655 condSetEmpty!17971) setIsEmpty!17971))

(assert (= (and b!2159655 (not condSetEmpty!17971)) setNonEmpty!17971))

(assert (= setNonEmpty!17971 b!2159656))

(assert (= (and b!2159633 ((_ is Cons!25001) (zeroValue!3216 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105)))))))) b!2159655))

(declare-fun m!2599427 () Bool)

(assert (=> setNonEmpty!17971 m!2599427))

(declare-fun setIsEmpty!17972 () Bool)

(declare-fun setRes!17972 () Bool)

(assert (=> setIsEmpty!17972 setRes!17972))

(declare-fun e!1381805 () Bool)

(assert (=> b!2159633 (= tp!673408 e!1381805)))

(declare-fun b!2159657 () Bool)

(declare-fun tp!673424 () Bool)

(assert (=> b!2159657 (= e!1381805 (and setRes!17972 tp!673424))))

(declare-fun condSetEmpty!17972 () Bool)

(assert (=> b!2159657 (= condSetEmpty!17972 (= (_1!14723 (_1!14724 (h!30402 (minValue!3216 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105))))))))) ((as const (Array Context!3054 Bool)) false)))))

(declare-fun b!2159658 () Bool)

(declare-fun e!1381804 () Bool)

(declare-fun tp!673423 () Bool)

(assert (=> b!2159658 (= e!1381804 tp!673423)))

(declare-fun setElem!17972 () Context!3054)

(declare-fun tp!673422 () Bool)

(declare-fun setNonEmpty!17972 () Bool)

(assert (=> setNonEmpty!17972 (= setRes!17972 (and tp!673422 (inv!33110 setElem!17972) e!1381804))))

(declare-fun setRest!17972 () (InoxSet Context!3054))

(assert (=> setNonEmpty!17972 (= (_1!14723 (_1!14724 (h!30402 (minValue!3216 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105))))))))) ((_ map or) (store ((as const (Array Context!3054 Bool)) false) setElem!17972 true) setRest!17972))))

(assert (= (and b!2159657 condSetEmpty!17972) setIsEmpty!17972))

(assert (= (and b!2159657 (not condSetEmpty!17972)) setNonEmpty!17972))

(assert (= setNonEmpty!17972 b!2159658))

(assert (= (and b!2159633 ((_ is Cons!25001) (minValue!3216 (v!29387 (underlying!6111 (v!29388 (underlying!6112 (cache!3253 thiss!29105)))))))) b!2159657))

(declare-fun m!2599429 () Bool)

(assert (=> setNonEmpty!17972 m!2599429))

(declare-fun e!1381810 () Bool)

(declare-fun tp!673432 () Bool)

(declare-fun tp!673431 () Bool)

(declare-fun b!2159667 () Bool)

(assert (=> b!2159667 (= e!1381810 (and (inv!33106 (left!19250 (c!341848 (totalInput!3420 thiss!29105)))) tp!673432 (inv!33106 (right!19580 (c!341848 (totalInput!3420 thiss!29105)))) tp!673431))))

(declare-fun b!2159669 () Bool)

(declare-fun e!1381811 () Bool)

(declare-fun tp!673433 () Bool)

(assert (=> b!2159669 (= e!1381811 tp!673433)))

(declare-fun b!2159668 () Bool)

(declare-fun inv!33111 (IArray!16191) Bool)

(assert (=> b!2159668 (= e!1381810 (and (inv!33111 (xs!11035 (c!341848 (totalInput!3420 thiss!29105)))) e!1381811))))

(assert (=> b!2159632 (= tp!673410 (and (inv!33106 (c!341848 (totalInput!3420 thiss!29105))) e!1381810))))

(assert (= (and b!2159632 ((_ is Node!8093) (c!341848 (totalInput!3420 thiss!29105)))) b!2159667))

(assert (= b!2159668 b!2159669))

(assert (= (and b!2159632 ((_ is Leaf!11839) (c!341848 (totalInput!3420 thiss!29105)))) b!2159668))

(declare-fun m!2599431 () Bool)

(assert (=> b!2159667 m!2599431))

(declare-fun m!2599433 () Bool)

(assert (=> b!2159667 m!2599433))

(declare-fun m!2599435 () Bool)

(assert (=> b!2159668 m!2599435))

(assert (=> b!2159632 m!2599405))

(declare-fun b!2159681 () Bool)

(declare-fun e!1381822 () Bool)

(declare-fun setRes!17978 () Bool)

(declare-fun tp!673452 () Bool)

(assert (=> b!2159681 (= e!1381822 (and setRes!17978 tp!673452))))

(declare-fun condSetEmpty!17977 () Bool)

(declare-fun mapDefault!13964 () List!25085)

(assert (=> b!2159681 (= condSetEmpty!17977 (= (_1!14723 (_1!14724 (h!30402 mapDefault!13964))) ((as const (Array Context!3054 Bool)) false)))))

(declare-fun setIsEmpty!17977 () Bool)

(assert (=> setIsEmpty!17977 setRes!17978))

(declare-fun setIsEmpty!17978 () Bool)

(declare-fun setRes!17977 () Bool)

(assert (=> setIsEmpty!17978 setRes!17977))

(declare-fun setElem!17978 () Context!3054)

(declare-fun tp!673451 () Bool)

(declare-fun setNonEmpty!17977 () Bool)

(declare-fun e!1381823 () Bool)

(assert (=> setNonEmpty!17977 (= setRes!17978 (and tp!673451 (inv!33110 setElem!17978) e!1381823))))

(declare-fun setRest!17978 () (InoxSet Context!3054))

(assert (=> setNonEmpty!17977 (= (_1!14723 (_1!14724 (h!30402 mapDefault!13964))) ((_ map or) (store ((as const (Array Context!3054 Bool)) false) setElem!17978 true) setRest!17978))))

(declare-fun tp!673449 () Bool)

(declare-fun e!1381821 () Bool)

(declare-fun setNonEmpty!17978 () Bool)

(declare-fun setElem!17977 () Context!3054)

(assert (=> setNonEmpty!17978 (= setRes!17977 (and tp!673449 (inv!33110 setElem!17977) e!1381821))))

(declare-fun mapValue!13964 () List!25085)

(declare-fun setRest!17977 () (InoxSet Context!3054))

(assert (=> setNonEmpty!17978 (= (_1!14723 (_1!14724 (h!30402 mapValue!13964))) ((_ map or) (store ((as const (Array Context!3054 Bool)) false) setElem!17977 true) setRest!17977))))

(declare-fun condMapEmpty!13964 () Bool)

(assert (=> mapNonEmpty!13961 (= condMapEmpty!13964 (= mapRest!13961 ((as const (Array (_ BitVec 32) List!25085)) mapDefault!13964)))))

(declare-fun mapRes!13964 () Bool)

(assert (=> mapNonEmpty!13961 (= tp!673412 (and e!1381822 mapRes!13964))))

(declare-fun b!2159680 () Bool)

(declare-fun e!1381820 () Bool)

(declare-fun tp!673448 () Bool)

(assert (=> b!2159680 (= e!1381820 (and setRes!17977 tp!673448))))

(declare-fun condSetEmpty!17978 () Bool)

(assert (=> b!2159680 (= condSetEmpty!17978 (= (_1!14723 (_1!14724 (h!30402 mapValue!13964))) ((as const (Array Context!3054 Bool)) false)))))

(declare-fun b!2159682 () Bool)

(declare-fun tp!673454 () Bool)

(assert (=> b!2159682 (= e!1381821 tp!673454)))

(declare-fun mapIsEmpty!13964 () Bool)

(assert (=> mapIsEmpty!13964 mapRes!13964))

(declare-fun b!2159683 () Bool)

(declare-fun tp!673453 () Bool)

(assert (=> b!2159683 (= e!1381823 tp!673453)))

(declare-fun mapNonEmpty!13964 () Bool)

(declare-fun tp!673450 () Bool)

(assert (=> mapNonEmpty!13964 (= mapRes!13964 (and tp!673450 e!1381820))))

(declare-fun mapKey!13964 () (_ BitVec 32))

(declare-fun mapRest!13964 () (Array (_ BitVec 32) List!25085))

(assert (=> mapNonEmpty!13964 (= mapRest!13961 (store mapRest!13964 mapKey!13964 mapValue!13964))))

(assert (= (and mapNonEmpty!13961 condMapEmpty!13964) mapIsEmpty!13964))

(assert (= (and mapNonEmpty!13961 (not condMapEmpty!13964)) mapNonEmpty!13964))

(assert (= (and b!2159680 condSetEmpty!17978) setIsEmpty!17978))

(assert (= (and b!2159680 (not condSetEmpty!17978)) setNonEmpty!17978))

(assert (= setNonEmpty!17978 b!2159682))

(assert (= (and mapNonEmpty!13964 ((_ is Cons!25001) mapValue!13964)) b!2159680))

(assert (= (and b!2159681 condSetEmpty!17977) setIsEmpty!17977))

(assert (= (and b!2159681 (not condSetEmpty!17977)) setNonEmpty!17977))

(assert (= setNonEmpty!17977 b!2159683))

(assert (= (and mapNonEmpty!13961 ((_ is Cons!25001) mapDefault!13964)) b!2159681))

(declare-fun m!2599437 () Bool)

(assert (=> setNonEmpty!17977 m!2599437))

(declare-fun m!2599439 () Bool)

(assert (=> setNonEmpty!17978 m!2599439))

(declare-fun m!2599441 () Bool)

(assert (=> mapNonEmpty!13964 m!2599441))

(declare-fun setIsEmpty!17979 () Bool)

(declare-fun setRes!17979 () Bool)

(assert (=> setIsEmpty!17979 setRes!17979))

(declare-fun e!1381825 () Bool)

(assert (=> mapNonEmpty!13961 (= tp!673407 e!1381825)))

(declare-fun b!2159684 () Bool)

(declare-fun tp!673457 () Bool)

(assert (=> b!2159684 (= e!1381825 (and setRes!17979 tp!673457))))

(declare-fun condSetEmpty!17979 () Bool)

(assert (=> b!2159684 (= condSetEmpty!17979 (= (_1!14723 (_1!14724 (h!30402 mapValue!13961))) ((as const (Array Context!3054 Bool)) false)))))

(declare-fun b!2159685 () Bool)

(declare-fun e!1381824 () Bool)

(declare-fun tp!673456 () Bool)

(assert (=> b!2159685 (= e!1381824 tp!673456)))

(declare-fun setElem!17979 () Context!3054)

(declare-fun setNonEmpty!17979 () Bool)

(declare-fun tp!673455 () Bool)

(assert (=> setNonEmpty!17979 (= setRes!17979 (and tp!673455 (inv!33110 setElem!17979) e!1381824))))

(declare-fun setRest!17979 () (InoxSet Context!3054))

(assert (=> setNonEmpty!17979 (= (_1!14723 (_1!14724 (h!30402 mapValue!13961))) ((_ map or) (store ((as const (Array Context!3054 Bool)) false) setElem!17979 true) setRest!17979))))

(assert (= (and b!2159684 condSetEmpty!17979) setIsEmpty!17979))

(assert (= (and b!2159684 (not condSetEmpty!17979)) setNonEmpty!17979))

(assert (= setNonEmpty!17979 b!2159685))

(assert (= (and mapNonEmpty!13961 ((_ is Cons!25001) mapValue!13961)) b!2159684))

(declare-fun m!2599443 () Bool)

(assert (=> setNonEmpty!17979 m!2599443))

(declare-fun setIsEmpty!17980 () Bool)

(declare-fun setRes!17980 () Bool)

(assert (=> setIsEmpty!17980 setRes!17980))

(declare-fun e!1381827 () Bool)

(assert (=> b!2159630 (= tp!673409 e!1381827)))

(declare-fun b!2159686 () Bool)

(declare-fun tp!673460 () Bool)

(assert (=> b!2159686 (= e!1381827 (and setRes!17980 tp!673460))))

(declare-fun condSetEmpty!17980 () Bool)

(assert (=> b!2159686 (= condSetEmpty!17980 (= (_1!14723 (_1!14724 (h!30402 mapDefault!13961))) ((as const (Array Context!3054 Bool)) false)))))

(declare-fun b!2159687 () Bool)

(declare-fun e!1381826 () Bool)

(declare-fun tp!673459 () Bool)

(assert (=> b!2159687 (= e!1381826 tp!673459)))

(declare-fun tp!673458 () Bool)

(declare-fun setElem!17980 () Context!3054)

(declare-fun setNonEmpty!17980 () Bool)

(assert (=> setNonEmpty!17980 (= setRes!17980 (and tp!673458 (inv!33110 setElem!17980) e!1381826))))

(declare-fun setRest!17980 () (InoxSet Context!3054))

(assert (=> setNonEmpty!17980 (= (_1!14723 (_1!14724 (h!30402 mapDefault!13961))) ((_ map or) (store ((as const (Array Context!3054 Bool)) false) setElem!17980 true) setRest!17980))))

(assert (= (and b!2159686 condSetEmpty!17980) setIsEmpty!17980))

(assert (= (and b!2159686 (not condSetEmpty!17980)) setNonEmpty!17980))

(assert (= setNonEmpty!17980 b!2159687))

(assert (= (and b!2159630 ((_ is Cons!25001) mapDefault!13961)) b!2159686))

(declare-fun m!2599445 () Bool)

(assert (=> setNonEmpty!17980 m!2599445))

(check-sat (not b!2159684) (not b!2159669) (not b!2159686) (not b!2159682) b_and!173437 (not b!2159632) (not setNonEmpty!17977) (not b!2159655) (not b_next!64525) (not b!2159668) (not setNonEmpty!17980) (not setNonEmpty!17978) (not mapNonEmpty!13964) (not b!2159667) (not setNonEmpty!17972) (not b!2159681) (not b!2159645) (not b!2159685) b_and!173439 (not d!646844) (not b!2159680) (not b!2159656) (not b!2159643) (not setNonEmpty!17979) (not d!646852) (not b!2159683) (not b!2159657) (not b!2159687) (not b!2159658) (not b!2159648) (not setNonEmpty!17971) (not b_next!64527))
(check-sat b_and!173439 b_and!173437 (not b_next!64525) (not b_next!64527))
