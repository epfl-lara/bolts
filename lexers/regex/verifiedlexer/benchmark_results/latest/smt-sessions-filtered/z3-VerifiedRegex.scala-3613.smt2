; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207492 () Bool)

(assert start!207492)

(declare-fun b!2128682 () Bool)

(declare-fun b_free!61973 () Bool)

(declare-fun b_next!62677 () Bool)

(assert (=> b!2128682 (= b_free!61973 (not b_next!62677))))

(declare-fun tp!653746 () Bool)

(declare-fun b_and!171553 () Bool)

(assert (=> b!2128682 (= tp!653746 b_and!171553)))

(declare-fun b!2128694 () Bool)

(declare-fun b_free!61975 () Bool)

(declare-fun b_next!62679 () Bool)

(assert (=> b!2128694 (= b_free!61975 (not b_next!62679))))

(declare-fun tp!653753 () Bool)

(declare-fun b_and!171555 () Bool)

(assert (=> b!2128694 (= tp!653753 b_and!171555)))

(declare-fun b!2128677 () Bool)

(declare-fun b_free!61977 () Bool)

(declare-fun b_next!62681 () Bool)

(assert (=> b!2128677 (= b_free!61977 (not b_next!62681))))

(declare-fun tp!653759 () Bool)

(declare-fun b_and!171557 () Bool)

(assert (=> b!2128677 (= tp!653759 b_and!171557)))

(declare-fun b!2128667 () Bool)

(declare-fun b_free!61979 () Bool)

(declare-fun b_next!62683 () Bool)

(assert (=> b!2128667 (= b_free!61979 (not b_next!62683))))

(declare-fun tp!653763 () Bool)

(declare-fun b_and!171559 () Bool)

(assert (=> b!2128667 (= tp!653763 b_and!171559)))

(declare-fun b!2128657 () Bool)

(declare-fun b_free!61981 () Bool)

(declare-fun b_next!62685 () Bool)

(assert (=> b!2128657 (= b_free!61981 (not b_next!62685))))

(declare-fun tp!653744 () Bool)

(declare-fun b_and!171561 () Bool)

(assert (=> b!2128657 (= tp!653744 b_and!171561)))

(declare-fun b!2128679 () Bool)

(declare-fun b_free!61983 () Bool)

(declare-fun b_next!62687 () Bool)

(assert (=> b!2128679 (= b_free!61983 (not b_next!62687))))

(declare-fun tp!653766 () Bool)

(declare-fun b_and!171563 () Bool)

(assert (=> b!2128679 (= tp!653766 b_and!171563)))

(declare-fun b!2128661 () Bool)

(assert (=> b!2128661 true))

(declare-fun bs!444208 () Bool)

(declare-fun b!2128688 () Bool)

(assert (= bs!444208 (and b!2128688 b!2128661)))

(declare-fun lambda!79009 () Int)

(declare-fun lambda!79008 () Int)

(assert (=> bs!444208 (not (= lambda!79009 lambda!79008))))

(assert (=> b!2128688 true))

(declare-fun b!2128656 () Bool)

(declare-fun res!920509 () Bool)

(declare-fun e!1357189 () Bool)

(assert (=> b!2128656 (=> (not res!920509) (not e!1357189))))

(declare-datatypes ((C!11532 0))(
  ( (C!11533 (val!6752 Int)) )
))
(declare-datatypes ((Regex!5693 0))(
  ( (ElementMatch!5693 (c!340147 C!11532)) (Concat!9995 (regOne!11898 Regex!5693) (regTwo!11898 Regex!5693)) (EmptyExpr!5693) (Star!5693 (reg!6022 Regex!5693)) (EmptyLang!5693) (Union!5693 (regOne!11899 Regex!5693) (regTwo!11899 Regex!5693)) )
))
(declare-datatypes ((List!23942 0))(
  ( (Nil!23858) (Cons!23858 (h!29259 Regex!5693) (t!196470 List!23942)) )
))
(declare-datatypes ((Context!2526 0))(
  ( (Context!2527 (exprs!1763 List!23942)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3038 0))(
  ( (tuple3!3039 (_1!13767 (InoxSet Context!2526)) (_2!13767 Int) (_3!1989 Int)) )
))
(declare-datatypes ((tuple2!23556 0))(
  ( (tuple2!23557 (_1!13768 tuple3!3038) (_2!13768 Int)) )
))
(declare-datatypes ((List!23943 0))(
  ( (Nil!23859) (Cons!23859 (h!29260 tuple2!23556) (t!196471 List!23943)) )
))
(declare-datatypes ((array!8661 0))(
  ( (array!8662 (arr!3842 (Array (_ BitVec 32) (_ BitVec 64))) (size!18663 (_ BitVec 32))) )
))
(declare-datatypes ((array!8663 0))(
  ( (array!8664 (arr!3843 (Array (_ BitVec 32) List!23943)) (size!18664 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5056 0))(
  ( (LongMapFixedSize!5057 (defaultEntry!2893 Int) (mask!6690 (_ BitVec 32)) (extraKeys!2776 (_ BitVec 32)) (zeroValue!2786 List!23943) (minValue!2786 List!23943) (_size!5107 (_ BitVec 32)) (_keys!2825 array!8661) (_values!2808 array!8663) (_vacant!2589 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9937 0))(
  ( (Cell!9938 (v!28400 LongMapFixedSize!5056)) )
))
(declare-datatypes ((List!23944 0))(
  ( (Nil!23860) (Cons!23860 (h!29261 C!11532) (t!196472 List!23944)) )
))
(declare-datatypes ((IArray!15667 0))(
  ( (IArray!15668 (innerList!7891 List!23944)) )
))
(declare-datatypes ((Conc!7831 0))(
  ( (Node!7831 (left!18422 Conc!7831) (right!18752 Conc!7831) (csize!15892 Int) (cheight!8042 Int)) (Leaf!11445 (xs!10773 IArray!15667) (csize!15893 Int)) (Empty!7831) )
))
(declare-datatypes ((MutLongMap!2528 0))(
  ( (LongMap!2528 (underlying!5251 Cell!9937)) (MutLongMapExt!2527 (__x!15760 Int)) )
))
(declare-datatypes ((Cell!9939 0))(
  ( (Cell!9940 (v!28401 MutLongMap!2528)) )
))
(declare-datatypes ((Hashable!2442 0))(
  ( (HashableExt!2441 (__x!15761 Int)) )
))
(declare-datatypes ((MutableMap!2442 0))(
  ( (MutableMapExt!2441 (__x!15762 Int)) (HashMap!2442 (underlying!5252 Cell!9939) (hashF!4365 Hashable!2442) (_size!5108 (_ BitVec 32)) (defaultValue!2604 Int)) )
))
(declare-datatypes ((BalanceConc!15424 0))(
  ( (BalanceConc!15425 (c!340148 Conc!7831)) )
))
(declare-datatypes ((CacheFurthestNullable!634 0))(
  ( (CacheFurthestNullable!635 (cache!2823 MutableMap!2442) (totalInput!2966 BalanceConc!15424)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!634)

(declare-fun valid!1993 (CacheFurthestNullable!634) Bool)

(assert (=> b!2128656 (= res!920509 (valid!1993 cacheFurthestNullable!114))))

(declare-fun mapIsEmpty!12340 () Bool)

(declare-fun mapRes!12340 () Bool)

(assert (=> mapIsEmpty!12340 mapRes!12340))

(declare-fun res!920508 () Bool)

(declare-fun e!1357211 () Bool)

(assert (=> start!207492 (=> (not res!920508) (not e!1357211))))

(declare-fun from!1043 () Int)

(declare-fun totalInputSize!296 () Int)

(assert (=> start!207492 (= res!920508 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207492 e!1357211))

(declare-fun e!1357192 () Bool)

(declare-fun inv!31476 (CacheFurthestNullable!634) Bool)

(assert (=> start!207492 (and (inv!31476 cacheFurthestNullable!114) e!1357192)))

(assert (=> start!207492 true))

(declare-datatypes ((tuple3!3040 0))(
  ( (tuple3!3041 (_1!13769 Regex!5693) (_2!13769 Context!2526) (_3!1990 C!11532)) )
))
(declare-datatypes ((tuple2!23558 0))(
  ( (tuple2!23559 (_1!13770 tuple3!3040) (_2!13770 (InoxSet Context!2526))) )
))
(declare-datatypes ((List!23945 0))(
  ( (Nil!23861) (Cons!23861 (h!29262 tuple2!23558) (t!196473 List!23945)) )
))
(declare-datatypes ((Hashable!2443 0))(
  ( (HashableExt!2442 (__x!15763 Int)) )
))
(declare-datatypes ((array!8665 0))(
  ( (array!8666 (arr!3844 (Array (_ BitVec 32) List!23945)) (size!18665 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5058 0))(
  ( (LongMapFixedSize!5059 (defaultEntry!2894 Int) (mask!6691 (_ BitVec 32)) (extraKeys!2777 (_ BitVec 32)) (zeroValue!2787 List!23945) (minValue!2787 List!23945) (_size!5109 (_ BitVec 32)) (_keys!2826 array!8661) (_values!2809 array!8665) (_vacant!2590 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9941 0))(
  ( (Cell!9942 (v!28402 LongMapFixedSize!5058)) )
))
(declare-datatypes ((MutLongMap!2529 0))(
  ( (LongMap!2529 (underlying!5253 Cell!9941)) (MutLongMapExt!2528 (__x!15764 Int)) )
))
(declare-datatypes ((Cell!9943 0))(
  ( (Cell!9944 (v!28403 MutLongMap!2529)) )
))
(declare-datatypes ((MutableMap!2443 0))(
  ( (MutableMapExt!2442 (__x!15765 Int)) (HashMap!2443 (underlying!5254 Cell!9943) (hashF!4366 Hashable!2443) (_size!5110 (_ BitVec 32)) (defaultValue!2605 Int)) )
))
(declare-datatypes ((CacheDown!1680 0))(
  ( (CacheDown!1681 (cache!2824 MutableMap!2443)) )
))
(declare-fun cacheDown!1098 () CacheDown!1680)

(declare-fun e!1357190 () Bool)

(declare-fun inv!31477 (CacheDown!1680) Bool)

(assert (=> start!207492 (and (inv!31477 cacheDown!1098) e!1357190)))

(declare-datatypes ((tuple2!23560 0))(
  ( (tuple2!23561 (_1!13771 Context!2526) (_2!13771 C!11532)) )
))
(declare-datatypes ((tuple2!23562 0))(
  ( (tuple2!23563 (_1!13772 tuple2!23560) (_2!13772 (InoxSet Context!2526))) )
))
(declare-datatypes ((List!23946 0))(
  ( (Nil!23862) (Cons!23862 (h!29263 tuple2!23562) (t!196474 List!23946)) )
))
(declare-datatypes ((array!8667 0))(
  ( (array!8668 (arr!3845 (Array (_ BitVec 32) List!23946)) (size!18666 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5060 0))(
  ( (LongMapFixedSize!5061 (defaultEntry!2895 Int) (mask!6692 (_ BitVec 32)) (extraKeys!2778 (_ BitVec 32)) (zeroValue!2788 List!23946) (minValue!2788 List!23946) (_size!5111 (_ BitVec 32)) (_keys!2827 array!8661) (_values!2810 array!8667) (_vacant!2591 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9945 0))(
  ( (Cell!9946 (v!28404 LongMapFixedSize!5060)) )
))
(declare-datatypes ((MutLongMap!2530 0))(
  ( (LongMap!2530 (underlying!5255 Cell!9945)) (MutLongMapExt!2529 (__x!15766 Int)) )
))
(declare-datatypes ((Cell!9947 0))(
  ( (Cell!9948 (v!28405 MutLongMap!2530)) )
))
(declare-datatypes ((Hashable!2444 0))(
  ( (HashableExt!2443 (__x!15767 Int)) )
))
(declare-datatypes ((MutableMap!2444 0))(
  ( (MutableMapExt!2443 (__x!15768 Int)) (HashMap!2444 (underlying!5256 Cell!9947) (hashF!4367 Hashable!2444) (_size!5112 (_ BitVec 32)) (defaultValue!2606 Int)) )
))
(declare-datatypes ((CacheUp!1694 0))(
  ( (CacheUp!1695 (cache!2825 MutableMap!2444)) )
))
(declare-fun cacheUp!979 () CacheUp!1694)

(declare-fun e!1357217 () Bool)

(declare-fun inv!31478 (CacheUp!1694) Bool)

(assert (=> start!207492 (and (inv!31478 cacheUp!979) e!1357217)))

(declare-fun condSetEmpty!15624 () Bool)

(declare-fun z!3839 () (InoxSet Context!2526))

(assert (=> start!207492 (= condSetEmpty!15624 (= z!3839 ((as const (Array Context!2526 Bool)) false)))))

(declare-fun setRes!15624 () Bool)

(assert (=> start!207492 setRes!15624))

(declare-fun totalInput!851 () BalanceConc!15424)

(declare-fun e!1357191 () Bool)

(declare-fun inv!31479 (BalanceConc!15424) Bool)

(assert (=> start!207492 (and (inv!31479 totalInput!851) e!1357191)))

(declare-fun e!1357212 () Bool)

(assert (=> start!207492 e!1357212))

(declare-fun tp!653770 () Bool)

(declare-fun e!1357221 () Bool)

(declare-fun tp!653769 () Bool)

(declare-fun e!1357224 () Bool)

(declare-fun array_inv!2748 (array!8661) Bool)

(declare-fun array_inv!2749 (array!8663) Bool)

(assert (=> b!2128657 (= e!1357221 (and tp!653744 tp!653770 tp!653769 (array_inv!2748 (_keys!2825 (v!28400 (underlying!5251 (v!28401 (underlying!5252 (cache!2823 cacheFurthestNullable!114))))))) (array_inv!2749 (_values!2808 (v!28400 (underlying!5251 (v!28401 (underlying!5252 (cache!2823 cacheFurthestNullable!114))))))) e!1357224))))

(declare-fun b!2128658 () Bool)

(declare-fun tp!653745 () Bool)

(declare-fun mapRes!12341 () Bool)

(assert (=> b!2128658 (= e!1357224 (and tp!653745 mapRes!12341))))

(declare-fun condMapEmpty!12340 () Bool)

(declare-fun mapDefault!12340 () List!23943)

(assert (=> b!2128658 (= condMapEmpty!12340 (= (arr!3843 (_values!2808 (v!28400 (underlying!5251 (v!28401 (underlying!5252 (cache!2823 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!23943)) mapDefault!12340)))))

(declare-fun e!1357198 () Bool)

(declare-fun b!2128659 () Bool)

(declare-fun e!1357214 () Bool)

(declare-datatypes ((StackFrame!84 0))(
  ( (StackFrame!85 (z!5770 (InoxSet Context!2526)) (from!2656 Int) (lastNullablePos!343 Int) (res!920515 Int) (totalInput!2967 BalanceConc!15424)) )
))
(declare-datatypes ((List!23947 0))(
  ( (Nil!23863) (Cons!23863 (h!29264 StackFrame!84) (t!196475 List!23947)) )
))
(declare-fun stack!8 () List!23947)

(declare-fun setRes!15625 () Bool)

(assert (=> b!2128659 (= e!1357214 (and setRes!15625 (inv!31479 (totalInput!2967 (h!29264 stack!8))) e!1357198))))

(declare-fun condSetEmpty!15625 () Bool)

(assert (=> b!2128659 (= condSetEmpty!15625 (= (z!5770 (h!29264 stack!8)) ((as const (Array Context!2526 Bool)) false)))))

(declare-fun b!2128660 () Bool)

(declare-fun e!1357199 () Bool)

(assert (=> b!2128660 (= e!1357199 e!1357189)))

(declare-fun res!920511 () Bool)

(assert (=> b!2128660 (=> (not res!920511) (not e!1357189))))

(declare-fun lt!796146 () Bool)

(assert (=> b!2128660 (= res!920511 lt!796146)))

(declare-fun e!1357205 () Bool)

(assert (=> b!2128660 (= lt!796146 e!1357205)))

(declare-fun res!920506 () Bool)

(assert (=> b!2128660 (=> res!920506 e!1357205)))

(declare-fun nullableZipper!84 ((InoxSet Context!2526)) Bool)

(assert (=> b!2128660 (= res!920506 (not (nullableZipper!84 z!3839)))))

(declare-fun e!1357193 () Bool)

(declare-fun setElem!15624 () Context!2526)

(declare-fun setNonEmpty!15624 () Bool)

(declare-fun tp!653743 () Bool)

(declare-fun inv!31480 (Context!2526) Bool)

(assert (=> setNonEmpty!15624 (= setRes!15625 (and tp!653743 (inv!31480 setElem!15624) e!1357193))))

(declare-fun setRest!15625 () (InoxSet Context!2526))

(assert (=> setNonEmpty!15624 (= (z!5770 (h!29264 stack!8)) ((_ map or) (store ((as const (Array Context!2526 Bool)) false) setElem!15624 true) setRest!15625))))

(declare-fun mapNonEmpty!12340 () Bool)

(declare-fun mapRes!12342 () Bool)

(declare-fun tp!653762 () Bool)

(declare-fun tp!653748 () Bool)

(assert (=> mapNonEmpty!12340 (= mapRes!12342 (and tp!653762 tp!653748))))

(declare-fun mapValue!12342 () List!23946)

(declare-fun mapRest!12341 () (Array (_ BitVec 32) List!23946))

(declare-fun mapKey!12340 () (_ BitVec 32))

(assert (=> mapNonEmpty!12340 (= (arr!3845 (_values!2810 (v!28404 (underlying!5255 (v!28405 (underlying!5256 (cache!2825 cacheUp!979))))))) (store mapRest!12341 mapKey!12340 mapValue!12342))))

(declare-fun e!1357218 () Bool)

(assert (=> b!2128661 (= e!1357189 e!1357218)))

(declare-fun res!920504 () Bool)

(assert (=> b!2128661 (=> (not res!920504) (not e!1357218))))

(declare-fun forall!4893 (List!23947 Int) Bool)

(assert (=> b!2128661 (= res!920504 (forall!4893 stack!8 lambda!79008))))

(declare-fun lt!796145 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!796143 () Int)

(declare-fun furthestNullablePosition!22 ((InoxSet Context!2526) Int BalanceConc!15424 Int Int) Int)

(assert (=> b!2128661 (= lt!796143 (furthestNullablePosition!22 z!3839 from!1043 totalInput!851 lt!796145 lastNullablePos!123))))

(declare-fun mapIsEmpty!12341 () Bool)

(assert (=> mapIsEmpty!12341 mapRes!12341))

(declare-fun e!1357220 () Bool)

(declare-fun e!1357196 () Bool)

(declare-fun b!2128662 () Bool)

(assert (=> b!2128662 (= e!1357192 (and e!1357220 (inv!31479 (totalInput!2966 cacheFurthestNullable!114)) e!1357196))))

(declare-fun setIsEmpty!15624 () Bool)

(assert (=> setIsEmpty!15624 setRes!15624))

(declare-fun b!2128663 () Bool)

(declare-fun e!1357203 () Bool)

(declare-fun tp!653751 () Bool)

(assert (=> b!2128663 (= e!1357203 tp!653751)))

(declare-fun b!2128664 () Bool)

(assert (=> b!2128664 (= e!1357211 e!1357199)))

(declare-fun res!920507 () Bool)

(assert (=> b!2128664 (=> (not res!920507) (not e!1357199))))

(assert (=> b!2128664 (= res!920507 (and (= totalInputSize!296 lt!796145) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18667 (BalanceConc!15424) Int)

(assert (=> b!2128664 (= lt!796145 (size!18667 totalInput!851))))

(declare-fun b!2128665 () Bool)

(declare-fun tp!653768 () Bool)

(assert (=> b!2128665 (= e!1357193 tp!653768)))

(declare-fun b!2128666 () Bool)

(declare-fun tp!653749 () Bool)

(declare-fun inv!31481 (StackFrame!84) Bool)

(assert (=> b!2128666 (= e!1357212 (and (inv!31481 (h!29264 stack!8)) e!1357214 tp!653749))))

(declare-fun e!1357195 () Bool)

(declare-fun e!1357222 () Bool)

(assert (=> b!2128667 (= e!1357195 (and e!1357222 tp!653763))))

(declare-fun b!2128668 () Bool)

(declare-fun e!1357202 () Bool)

(declare-fun e!1357213 () Bool)

(assert (=> b!2128668 (= e!1357202 e!1357213)))

(declare-fun b!2128669 () Bool)

(assert (=> b!2128669 (= e!1357190 e!1357195)))

(declare-fun b!2128670 () Bool)

(declare-fun e!1357207 () Bool)

(assert (=> b!2128670 (= e!1357207 e!1357221)))

(declare-fun b!2128671 () Bool)

(declare-fun res!920514 () Bool)

(assert (=> b!2128671 (=> (not res!920514) (not e!1357189))))

(declare-fun valid!1994 (CacheUp!1694) Bool)

(assert (=> b!2128671 (= res!920514 (valid!1994 cacheUp!979))))

(declare-fun mapNonEmpty!12341 () Bool)

(declare-fun tp!653742 () Bool)

(declare-fun tp!653750 () Bool)

(assert (=> mapNonEmpty!12341 (= mapRes!12341 (and tp!653742 tp!653750))))

(declare-fun mapKey!12342 () (_ BitVec 32))

(declare-fun mapRest!12342 () (Array (_ BitVec 32) List!23943))

(declare-fun mapValue!12340 () List!23943)

(assert (=> mapNonEmpty!12341 (= (arr!3843 (_values!2808 (v!28400 (underlying!5251 (v!28401 (underlying!5252 (cache!2823 cacheFurthestNullable!114))))))) (store mapRest!12342 mapKey!12342 mapValue!12340))))

(declare-fun b!2128672 () Bool)

(declare-fun e!1357223 () Bool)

(declare-fun tp!653747 () Bool)

(assert (=> b!2128672 (= e!1357223 (and tp!653747 mapRes!12342))))

(declare-fun condMapEmpty!12341 () Bool)

(declare-fun mapDefault!12342 () List!23946)

(assert (=> b!2128672 (= condMapEmpty!12341 (= (arr!3845 (_values!2810 (v!28404 (underlying!5255 (v!28405 (underlying!5256 (cache!2825 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!23946)) mapDefault!12342)))))

(declare-fun b!2128673 () Bool)

(declare-fun e!1357200 () Bool)

(assert (=> b!2128673 (= e!1357218 (not e!1357200))))

(declare-fun res!920510 () Bool)

(assert (=> b!2128673 (=> res!920510 e!1357200)))

(get-info :version)

(declare-datatypes ((Option!4880 0))(
  ( (None!4879) (Some!4879 (v!28406 Int)) )
))
(declare-fun get!7336 (CacheFurthestNullable!634 (InoxSet Context!2526) Int Int) Option!4880)

(assert (=> b!2128673 (= res!920510 (not ((_ is Some!4879) (get!7336 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123))))))

(assert (=> b!2128673 (forall!4893 stack!8 lambda!79008)))

(declare-fun b!2128674 () Bool)

(declare-fun e!1357194 () Bool)

(declare-fun e!1357197 () Bool)

(assert (=> b!2128674 (= e!1357194 e!1357197)))

(declare-fun b!2128675 () Bool)

(declare-fun res!920505 () Bool)

(assert (=> b!2128675 (=> (not res!920505) (not e!1357189))))

(assert (=> b!2128675 (= res!920505 (= (totalInput!2966 cacheFurthestNullable!114) totalInput!851))))

(declare-fun b!2128676 () Bool)

(declare-fun tp!653765 () Bool)

(declare-fun inv!31482 (Conc!7831) Bool)

(assert (=> b!2128676 (= e!1357196 (and (inv!31482 (c!340148 (totalInput!2966 cacheFurthestNullable!114))) tp!653765))))

(declare-fun tp!653757 () Bool)

(declare-fun tp!653754 () Bool)

(declare-fun array_inv!2750 (array!8667) Bool)

(assert (=> b!2128677 (= e!1357213 (and tp!653759 tp!653754 tp!653757 (array_inv!2748 (_keys!2827 (v!28404 (underlying!5255 (v!28405 (underlying!5256 (cache!2825 cacheUp!979))))))) (array_inv!2750 (_values!2810 (v!28404 (underlying!5255 (v!28405 (underlying!5256 (cache!2825 cacheUp!979))))))) e!1357223))))

(declare-fun b!2128678 () Bool)

(assert (=> b!2128678 (= e!1357200 (or (> from!1043 lt!796145) lt!796146))))

(declare-fun mapIsEmpty!12342 () Bool)

(assert (=> mapIsEmpty!12342 mapRes!12342))

(declare-fun e!1357201 () Bool)

(assert (=> b!2128679 (= e!1357220 (and e!1357201 tp!653766))))

(declare-fun b!2128680 () Bool)

(declare-fun e!1357206 () Bool)

(assert (=> b!2128680 (= e!1357206 e!1357202)))

(declare-fun b!2128681 () Bool)

(declare-fun e!1357215 () Bool)

(declare-fun lt!796142 () MutLongMap!2530)

(assert (=> b!2128681 (= e!1357215 (and e!1357206 ((_ is LongMap!2530) lt!796142)))))

(assert (=> b!2128681 (= lt!796142 (v!28405 (underlying!5256 (cache!2825 cacheUp!979))))))

(declare-fun e!1357225 () Bool)

(declare-fun tp!653756 () Bool)

(declare-fun tp!653760 () Bool)

(declare-fun array_inv!2751 (array!8665) Bool)

(assert (=> b!2128682 (= e!1357197 (and tp!653746 tp!653760 tp!653756 (array_inv!2748 (_keys!2826 (v!28402 (underlying!5253 (v!28403 (underlying!5254 (cache!2824 cacheDown!1098))))))) (array_inv!2751 (_values!2809 (v!28402 (underlying!5253 (v!28403 (underlying!5254 (cache!2824 cacheDown!1098))))))) e!1357225))))

(declare-fun b!2128683 () Bool)

(declare-fun e!1357204 () Bool)

(assert (=> b!2128683 (= e!1357204 e!1357194)))

(declare-fun b!2128684 () Bool)

(declare-fun tp!653761 () Bool)

(assert (=> b!2128684 (= e!1357198 (and (inv!31482 (c!340148 (totalInput!2967 (h!29264 stack!8)))) tp!653761))))

(declare-fun b!2128685 () Bool)

(declare-fun tp!653755 () Bool)

(assert (=> b!2128685 (= e!1357191 (and (inv!31482 (c!340148 totalInput!851)) tp!653755))))

(declare-fun b!2128686 () Bool)

(declare-fun tp!653752 () Bool)

(assert (=> b!2128686 (= e!1357225 (and tp!653752 mapRes!12340))))

(declare-fun condMapEmpty!12342 () Bool)

(declare-fun mapDefault!12341 () List!23945)

(assert (=> b!2128686 (= condMapEmpty!12342 (= (arr!3844 (_values!2809 (v!28402 (underlying!5253 (v!28403 (underlying!5254 (cache!2824 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!23945)) mapDefault!12341)))))

(declare-fun setIsEmpty!15625 () Bool)

(assert (=> setIsEmpty!15625 setRes!15625))

(declare-fun b!2128687 () Bool)

(assert (=> b!2128687 (= e!1357205 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun res!920513 () Bool)

(assert (=> b!2128688 (=> (not res!920513) (not e!1357218))))

(assert (=> b!2128688 (= res!920513 (forall!4893 stack!8 lambda!79009))))

(declare-fun b!2128689 () Bool)

(declare-fun e!1357219 () Bool)

(assert (=> b!2128689 (= e!1357217 e!1357219)))

(declare-fun b!2128690 () Bool)

(declare-fun lt!796141 () MutLongMap!2529)

(assert (=> b!2128690 (= e!1357222 (and e!1357204 ((_ is LongMap!2529) lt!796141)))))

(assert (=> b!2128690 (= lt!796141 (v!28403 (underlying!5254 (cache!2824 cacheDown!1098))))))

(declare-fun b!2128691 () Bool)

(declare-fun e!1357210 () Bool)

(assert (=> b!2128691 (= e!1357210 e!1357207)))

(declare-fun b!2128692 () Bool)

(declare-fun res!920512 () Bool)

(assert (=> b!2128692 (=> (not res!920512) (not e!1357189))))

(declare-fun valid!1995 (CacheDown!1680) Bool)

(assert (=> b!2128692 (= res!920512 (valid!1995 cacheDown!1098))))

(declare-fun mapNonEmpty!12342 () Bool)

(declare-fun tp!653758 () Bool)

(declare-fun tp!653764 () Bool)

(assert (=> mapNonEmpty!12342 (= mapRes!12340 (and tp!653758 tp!653764))))

(declare-fun mapRest!12340 () (Array (_ BitVec 32) List!23945))

(declare-fun mapKey!12341 () (_ BitVec 32))

(declare-fun mapValue!12341 () List!23945)

(assert (=> mapNonEmpty!12342 (= (arr!3844 (_values!2809 (v!28402 (underlying!5253 (v!28403 (underlying!5254 (cache!2824 cacheDown!1098))))))) (store mapRest!12340 mapKey!12341 mapValue!12341))))

(declare-fun tp!653767 () Bool)

(declare-fun setNonEmpty!15625 () Bool)

(declare-fun setElem!15625 () Context!2526)

(assert (=> setNonEmpty!15625 (= setRes!15624 (and tp!653767 (inv!31480 setElem!15625) e!1357203))))

(declare-fun setRest!15624 () (InoxSet Context!2526))

(assert (=> setNonEmpty!15625 (= z!3839 ((_ map or) (store ((as const (Array Context!2526 Bool)) false) setElem!15625 true) setRest!15624))))

(declare-fun b!2128693 () Bool)

(declare-fun lt!796144 () MutLongMap!2528)

(assert (=> b!2128693 (= e!1357201 (and e!1357210 ((_ is LongMap!2528) lt!796144)))))

(assert (=> b!2128693 (= lt!796144 (v!28401 (underlying!5252 (cache!2823 cacheFurthestNullable!114))))))

(assert (=> b!2128694 (= e!1357219 (and e!1357215 tp!653753))))

(assert (= (and start!207492 res!920508) b!2128664))

(assert (= (and b!2128664 res!920507) b!2128660))

(assert (= (and b!2128660 (not res!920506)) b!2128687))

(assert (= (and b!2128660 res!920511) b!2128671))

(assert (= (and b!2128671 res!920514) b!2128692))

(assert (= (and b!2128692 res!920512) b!2128656))

(assert (= (and b!2128656 res!920509) b!2128675))

(assert (= (and b!2128675 res!920505) b!2128661))

(assert (= (and b!2128661 res!920504) b!2128688))

(assert (= (and b!2128688 res!920513) b!2128673))

(assert (= (and b!2128673 (not res!920510)) b!2128678))

(assert (= (and b!2128658 condMapEmpty!12340) mapIsEmpty!12341))

(assert (= (and b!2128658 (not condMapEmpty!12340)) mapNonEmpty!12341))

(assert (= b!2128657 b!2128658))

(assert (= b!2128670 b!2128657))

(assert (= b!2128691 b!2128670))

(assert (= (and b!2128693 ((_ is LongMap!2528) (v!28401 (underlying!5252 (cache!2823 cacheFurthestNullable!114))))) b!2128691))

(assert (= b!2128679 b!2128693))

(assert (= (and b!2128662 ((_ is HashMap!2442) (cache!2823 cacheFurthestNullable!114))) b!2128679))

(assert (= b!2128662 b!2128676))

(assert (= start!207492 b!2128662))

(assert (= (and b!2128686 condMapEmpty!12342) mapIsEmpty!12340))

(assert (= (and b!2128686 (not condMapEmpty!12342)) mapNonEmpty!12342))

(assert (= b!2128682 b!2128686))

(assert (= b!2128674 b!2128682))

(assert (= b!2128683 b!2128674))

(assert (= (and b!2128690 ((_ is LongMap!2529) (v!28403 (underlying!5254 (cache!2824 cacheDown!1098))))) b!2128683))

(assert (= b!2128667 b!2128690))

(assert (= (and b!2128669 ((_ is HashMap!2443) (cache!2824 cacheDown!1098))) b!2128667))

(assert (= start!207492 b!2128669))

(assert (= (and b!2128672 condMapEmpty!12341) mapIsEmpty!12342))

(assert (= (and b!2128672 (not condMapEmpty!12341)) mapNonEmpty!12340))

(assert (= b!2128677 b!2128672))

(assert (= b!2128668 b!2128677))

(assert (= b!2128680 b!2128668))

(assert (= (and b!2128681 ((_ is LongMap!2530) (v!28405 (underlying!5256 (cache!2825 cacheUp!979))))) b!2128680))

(assert (= b!2128694 b!2128681))

(assert (= (and b!2128689 ((_ is HashMap!2444) (cache!2825 cacheUp!979))) b!2128694))

(assert (= start!207492 b!2128689))

(assert (= (and start!207492 condSetEmpty!15624) setIsEmpty!15624))

(assert (= (and start!207492 (not condSetEmpty!15624)) setNonEmpty!15625))

(assert (= setNonEmpty!15625 b!2128663))

(assert (= start!207492 b!2128685))

(assert (= (and b!2128659 condSetEmpty!15625) setIsEmpty!15625))

(assert (= (and b!2128659 (not condSetEmpty!15625)) setNonEmpty!15624))

(assert (= setNonEmpty!15624 b!2128665))

(assert (= b!2128659 b!2128684))

(assert (= b!2128666 b!2128659))

(assert (= (and start!207492 ((_ is Cons!23863) stack!8)) b!2128666))

(declare-fun m!2579712 () Bool)

(assert (=> b!2128692 m!2579712))

(declare-fun m!2579714 () Bool)

(assert (=> mapNonEmpty!12340 m!2579714))

(declare-fun m!2579716 () Bool)

(assert (=> b!2128676 m!2579716))

(declare-fun m!2579718 () Bool)

(assert (=> b!2128671 m!2579718))

(declare-fun m!2579720 () Bool)

(assert (=> b!2128666 m!2579720))

(declare-fun m!2579722 () Bool)

(assert (=> b!2128664 m!2579722))

(declare-fun m!2579724 () Bool)

(assert (=> b!2128662 m!2579724))

(declare-fun m!2579726 () Bool)

(assert (=> b!2128682 m!2579726))

(declare-fun m!2579728 () Bool)

(assert (=> b!2128682 m!2579728))

(declare-fun m!2579730 () Bool)

(assert (=> b!2128685 m!2579730))

(declare-fun m!2579732 () Bool)

(assert (=> mapNonEmpty!12341 m!2579732))

(declare-fun m!2579734 () Bool)

(assert (=> b!2128660 m!2579734))

(declare-fun m!2579736 () Bool)

(assert (=> b!2128661 m!2579736))

(declare-fun m!2579738 () Bool)

(assert (=> b!2128661 m!2579738))

(declare-fun m!2579740 () Bool)

(assert (=> b!2128688 m!2579740))

(declare-fun m!2579742 () Bool)

(assert (=> b!2128673 m!2579742))

(assert (=> b!2128673 m!2579736))

(declare-fun m!2579744 () Bool)

(assert (=> b!2128684 m!2579744))

(declare-fun m!2579746 () Bool)

(assert (=> setNonEmpty!15625 m!2579746))

(declare-fun m!2579748 () Bool)

(assert (=> b!2128659 m!2579748))

(declare-fun m!2579750 () Bool)

(assert (=> mapNonEmpty!12342 m!2579750))

(declare-fun m!2579752 () Bool)

(assert (=> b!2128656 m!2579752))

(declare-fun m!2579754 () Bool)

(assert (=> b!2128677 m!2579754))

(declare-fun m!2579756 () Bool)

(assert (=> b!2128677 m!2579756))

(declare-fun m!2579758 () Bool)

(assert (=> b!2128657 m!2579758))

(declare-fun m!2579760 () Bool)

(assert (=> b!2128657 m!2579760))

(declare-fun m!2579762 () Bool)

(assert (=> start!207492 m!2579762))

(declare-fun m!2579764 () Bool)

(assert (=> start!207492 m!2579764))

(declare-fun m!2579766 () Bool)

(assert (=> start!207492 m!2579766))

(declare-fun m!2579768 () Bool)

(assert (=> start!207492 m!2579768))

(declare-fun m!2579770 () Bool)

(assert (=> setNonEmpty!15624 m!2579770))

(check-sat (not mapNonEmpty!12341) (not b!2128671) (not b!2128688) (not b_next!62679) (not b_next!62677) (not b!2128672) (not b!2128662) (not b!2128660) (not b_next!62681) (not setNonEmpty!15624) (not b!2128665) (not b!2128682) (not b_next!62683) (not b!2128666) (not b!2128663) b_and!171555 (not b!2128673) (not b!2128677) (not b!2128684) (not b!2128659) (not b_next!62687) (not b!2128661) (not mapNonEmpty!12340) b_and!171553 (not b!2128686) (not b!2128664) b_and!171563 (not b!2128676) (not b!2128658) (not b!2128656) (not start!207492) b_and!171561 (not b_next!62685) b_and!171559 (not mapNonEmpty!12342) (not b!2128685) b_and!171557 (not setNonEmpty!15625) (not b!2128692) (not b!2128657))
(check-sat (not b_next!62683) b_and!171555 (not b_next!62679) (not b_next!62677) (not b_next!62687) b_and!171553 b_and!171563 b_and!171561 (not b_next!62681) b_and!171557 (not b_next!62685) b_and!171559)
