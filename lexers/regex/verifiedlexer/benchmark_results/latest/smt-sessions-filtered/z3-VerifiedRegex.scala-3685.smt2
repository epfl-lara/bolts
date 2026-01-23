; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208404 () Bool)

(assert start!208404)

(declare-fun b!2148671 () Bool)

(declare-fun b_free!63437 () Bool)

(declare-fun b_next!64141 () Bool)

(assert (=> b!2148671 (= b_free!63437 (not b_next!64141))))

(declare-fun tp!667063 () Bool)

(declare-fun b_and!173033 () Bool)

(assert (=> b!2148671 (= tp!667063 b_and!173033)))

(declare-fun b!2148665 () Bool)

(declare-fun b_free!63439 () Bool)

(declare-fun b_next!64143 () Bool)

(assert (=> b!2148665 (= b_free!63439 (not b_next!64143))))

(declare-fun tp!667054 () Bool)

(declare-fun b_and!173035 () Bool)

(assert (=> b!2148665 (= tp!667054 b_and!173035)))

(declare-fun mapNonEmpty!13568 () Bool)

(declare-fun mapRes!13568 () Bool)

(declare-fun tp!667064 () Bool)

(declare-fun tp!667060 () Bool)

(assert (=> mapNonEmpty!13568 (= mapRes!13568 (and tp!667064 tp!667060))))

(declare-datatypes ((C!11820 0))(
  ( (C!11821 (val!6896 Int)) )
))
(declare-datatypes ((Regex!5837 0))(
  ( (ElementMatch!5837 (c!340996 C!11820)) (Concat!10139 (regOne!12186 Regex!5837) (regTwo!12186 Regex!5837)) (EmptyExpr!5837) (Star!5837 (reg!6166 Regex!5837)) (EmptyLang!5837) (Union!5837 (regOne!12187 Regex!5837) (regTwo!12187 Regex!5837)) )
))
(declare-datatypes ((List!24669 0))(
  ( (Nil!24585) (Cons!24585 (h!29986 Regex!5837) (t!197207 List!24669)) )
))
(declare-datatypes ((Context!2814 0))(
  ( (Context!2815 (exprs!1907 List!24669)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3606 0))(
  ( (tuple3!3607 (_1!14488 (InoxSet Context!2814)) (_2!14488 Int) (_3!2273 Int)) )
))
(declare-datatypes ((tuple2!24430 0))(
  ( (tuple2!24431 (_1!14489 tuple3!3606) (_2!14489 Int)) )
))
(declare-datatypes ((List!24670 0))(
  ( (Nil!24586) (Cons!24586 (h!29987 tuple2!24430) (t!197208 List!24670)) )
))
(declare-fun mapRest!13568 () (Array (_ BitVec 32) List!24670))

(declare-datatypes ((List!24671 0))(
  ( (Nil!24587) (Cons!24587 (h!29988 C!11820) (t!197209 List!24671)) )
))
(declare-datatypes ((array!9671 0))(
  ( (array!9672 (arr!4320 (Array (_ BitVec 32) (_ BitVec 64))) (size!19256 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2776 0))(
  ( (HashableExt!2775 (__x!16762 Int)) )
))
(declare-datatypes ((array!9673 0))(
  ( (array!9674 (arr!4321 (Array (_ BitVec 32) List!24670)) (size!19257 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5724 0))(
  ( (LongMapFixedSize!5725 (defaultEntry!3227 Int) (mask!7096 (_ BitVec 32)) (extraKeys!3110 (_ BitVec 32)) (zeroValue!3120 List!24670) (minValue!3120 List!24670) (_size!5775 (_ BitVec 32)) (_keys!3159 array!9671) (_values!3142 array!9673) (_vacant!2923 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11273 0))(
  ( (Cell!11274 (v!29162 LongMapFixedSize!5724)) )
))
(declare-datatypes ((MutLongMap!2862 0))(
  ( (LongMap!2862 (underlying!5919 Cell!11273)) (MutLongMapExt!2861 (__x!16763 Int)) )
))
(declare-datatypes ((Cell!11275 0))(
  ( (Cell!11276 (v!29163 MutLongMap!2862)) )
))
(declare-datatypes ((MutableMap!2776 0))(
  ( (MutableMapExt!2775 (__x!16764 Int)) (HashMap!2776 (underlying!5920 Cell!11275) (hashF!4699 Hashable!2776) (_size!5776 (_ BitVec 32)) (defaultValue!2938 Int)) )
))
(declare-datatypes ((IArray!15951 0))(
  ( (IArray!15952 (innerList!8033 List!24671)) )
))
(declare-datatypes ((Conc!7973 0))(
  ( (Node!7973 (left!18868 Conc!7973) (right!19198 Conc!7973) (csize!16176 Int) (cheight!8184 Int)) (Leaf!11659 (xs!10915 IArray!15951) (csize!16177 Int)) (Empty!7973) )
))
(declare-datatypes ((BalanceConc!15708 0))(
  ( (BalanceConc!15709 (c!340997 Conc!7973)) )
))
(declare-datatypes ((CacheFurthestNullable!910 0))(
  ( (CacheFurthestNullable!911 (cache!3157 MutableMap!2776) (totalInput!3221 BalanceConc!15708)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!910)

(declare-fun mapValue!13568 () List!24670)

(declare-fun mapKey!13568 () (_ BitVec 32))

(assert (=> mapNonEmpty!13568 (= (arr!4321 (_values!3142 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))))) (store mapRest!13568 mapKey!13568 mapValue!13568))))

(declare-fun b!2148666 () Bool)

(declare-fun e!1373779 () Bool)

(declare-fun e!1373776 () Bool)

(assert (=> b!2148666 (= e!1373779 e!1373776)))

(declare-fun b!2148667 () Bool)

(declare-fun e!1373780 () Bool)

(declare-fun tp!667062 () Bool)

(assert (=> b!2148667 (= e!1373780 (and tp!667062 mapRes!13568))))

(declare-fun condMapEmpty!13568 () Bool)

(declare-fun mapDefault!13568 () List!24670)

(assert (=> b!2148667 (= condMapEmpty!13568 (= (arr!4321 (_values!3142 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24670)) mapDefault!13568)))))

(declare-fun setElem!17005 () Context!2814)

(declare-fun setRes!17005 () Bool)

(declare-fun e!1373772 () Bool)

(declare-fun tp!667055 () Bool)

(declare-fun setNonEmpty!17005 () Bool)

(declare-fun inv!32370 (Context!2814) Bool)

(assert (=> setNonEmpty!17005 (= setRes!17005 (and tp!667055 (inv!32370 setElem!17005) e!1373772))))

(declare-fun z!514 () (InoxSet Context!2814))

(declare-fun setRest!17005 () (InoxSet Context!2814))

(assert (=> setNonEmpty!17005 (= z!514 ((_ map or) (store ((as const (Array Context!2814 Bool)) false) setElem!17005 true) setRest!17005))))

(declare-fun b!2148668 () Bool)

(declare-fun e!1373783 () Bool)

(declare-fun valid!2212 (MutableMap!2776) Bool)

(assert (=> b!2148668 (= e!1373783 (valid!2212 (cache!3157 thiss!29110)))))

(declare-fun b!2148669 () Bool)

(declare-fun e!1373778 () Bool)

(declare-fun e!1373774 () Bool)

(declare-fun lt!799892 () MutLongMap!2862)

(get-info :version)

(assert (=> b!2148669 (= e!1373778 (and e!1373774 ((_ is LongMap!2862) lt!799892)))))

(assert (=> b!2148669 (= lt!799892 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))))

(declare-fun b!2148670 () Bool)

(declare-fun res!926807 () Bool)

(declare-fun e!1373782 () Bool)

(assert (=> b!2148670 (=> (not res!926807) (not e!1373782))))

(declare-fun validCacheMapFurthestNullable!135 (MutableMap!2776 BalanceConc!15708) Bool)

(assert (=> b!2148670 (= res!926807 (validCacheMapFurthestNullable!135 (cache!3157 thiss!29110) (totalInput!3221 thiss!29110)))))

(declare-fun tp!667059 () Bool)

(declare-fun tp!667056 () Bool)

(declare-fun array_inv!3096 (array!9671) Bool)

(declare-fun array_inv!3097 (array!9673) Bool)

(assert (=> b!2148671 (= e!1373776 (and tp!667063 tp!667059 tp!667056 (array_inv!3096 (_keys!3159 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))))) (array_inv!3097 (_values!3142 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))))) e!1373780))))

(declare-fun b!2148672 () Bool)

(declare-fun e!1373773 () Bool)

(declare-fun tp!667057 () Bool)

(declare-fun inv!32371 (Conc!7973) Bool)

(assert (=> b!2148672 (= e!1373773 (and (inv!32371 (c!340997 (totalInput!3221 thiss!29110))) tp!667057))))

(declare-fun b!2148673 () Bool)

(assert (=> b!2148673 (= e!1373774 e!1373779)))

(declare-fun e!1373777 () Bool)

(assert (=> b!2148665 (= e!1373777 (and e!1373778 tp!667054))))

(declare-fun res!926809 () Bool)

(assert (=> start!208404 (=> (not res!926809) (not e!1373782))))

(declare-fun lastNullablePos!91 () Int)

(declare-fun localTotalInput!13 () BalanceConc!15708)

(declare-fun from!952 () Int)

(assert (=> start!208404 (= res!926809 (and (= localTotalInput!13 (totalInput!3221 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208404 e!1373782))

(declare-fun condSetEmpty!17005 () Bool)

(assert (=> start!208404 (= condSetEmpty!17005 (= z!514 ((as const (Array Context!2814 Bool)) false)))))

(assert (=> start!208404 setRes!17005))

(assert (=> start!208404 true))

(declare-fun e!1373784 () Bool)

(declare-fun inv!32372 (CacheFurthestNullable!910) Bool)

(assert (=> start!208404 (and (inv!32372 thiss!29110) e!1373784)))

(declare-fun e!1373775 () Bool)

(declare-fun inv!32373 (BalanceConc!15708) Bool)

(assert (=> start!208404 (and (inv!32373 localTotalInput!13) e!1373775)))

(declare-fun b!2148674 () Bool)

(declare-fun tp!667061 () Bool)

(assert (=> b!2148674 (= e!1373772 tp!667061)))

(declare-fun b!2148675 () Bool)

(assert (=> b!2148675 (= e!1373784 (and e!1373777 (inv!32373 (totalInput!3221 thiss!29110)) e!1373773))))

(declare-fun b!2148676 () Bool)

(declare-fun e!1373781 () Bool)

(assert (=> b!2148676 (= e!1373781 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun mapIsEmpty!13568 () Bool)

(assert (=> mapIsEmpty!13568 mapRes!13568))

(declare-fun b!2148677 () Bool)

(declare-fun tp!667058 () Bool)

(assert (=> b!2148677 (= e!1373775 (and (inv!32371 (c!340997 localTotalInput!13)) tp!667058))))

(declare-fun b!2148678 () Bool)

(declare-fun res!926808 () Bool)

(assert (=> b!2148678 (=> (not res!926808) (not e!1373782))))

(assert (=> b!2148678 (= res!926808 e!1373781)))

(declare-fun res!926810 () Bool)

(assert (=> b!2148678 (=> res!926810 e!1373781)))

(declare-fun nullableZipper!179 ((InoxSet Context!2814)) Bool)

(assert (=> b!2148678 (= res!926810 (not (nullableZipper!179 z!514)))))

(declare-fun b!2148679 () Bool)

(assert (=> b!2148679 (= e!1373782 (not e!1373783))))

(declare-fun res!926811 () Bool)

(assert (=> b!2148679 (=> res!926811 e!1373783)))

(assert (=> b!2148679 (= res!926811 (not ((_ is HashMap!2776) (cache!3157 thiss!29110))))))

(assert (=> b!2148679 (validCacheMapFurthestNullable!135 (cache!3157 thiss!29110) localTotalInput!13)))

(declare-fun setIsEmpty!17005 () Bool)

(assert (=> setIsEmpty!17005 setRes!17005))

(assert (= (and start!208404 res!926809) b!2148678))

(assert (= (and b!2148678 (not res!926810)) b!2148676))

(assert (= (and b!2148678 res!926808) b!2148670))

(assert (= (and b!2148670 res!926807) b!2148679))

(assert (= (and b!2148679 (not res!926811)) b!2148668))

(assert (= (and start!208404 condSetEmpty!17005) setIsEmpty!17005))

(assert (= (and start!208404 (not condSetEmpty!17005)) setNonEmpty!17005))

(assert (= setNonEmpty!17005 b!2148674))

(assert (= (and b!2148667 condMapEmpty!13568) mapIsEmpty!13568))

(assert (= (and b!2148667 (not condMapEmpty!13568)) mapNonEmpty!13568))

(assert (= b!2148671 b!2148667))

(assert (= b!2148666 b!2148671))

(assert (= b!2148673 b!2148666))

(assert (= (and b!2148669 ((_ is LongMap!2862) (v!29163 (underlying!5920 (cache!3157 thiss!29110))))) b!2148673))

(assert (= b!2148665 b!2148669))

(assert (= (and b!2148675 ((_ is HashMap!2776) (cache!3157 thiss!29110))) b!2148665))

(assert (= b!2148675 b!2148672))

(assert (= start!208404 b!2148675))

(assert (= start!208404 b!2148677))

(declare-fun m!2591649 () Bool)

(assert (=> b!2148675 m!2591649))

(declare-fun m!2591651 () Bool)

(assert (=> b!2148677 m!2591651))

(declare-fun m!2591653 () Bool)

(assert (=> b!2148671 m!2591653))

(declare-fun m!2591655 () Bool)

(assert (=> b!2148671 m!2591655))

(declare-fun m!2591657 () Bool)

(assert (=> b!2148670 m!2591657))

(declare-fun m!2591659 () Bool)

(assert (=> mapNonEmpty!13568 m!2591659))

(declare-fun m!2591661 () Bool)

(assert (=> b!2148668 m!2591661))

(declare-fun m!2591663 () Bool)

(assert (=> setNonEmpty!17005 m!2591663))

(declare-fun m!2591665 () Bool)

(assert (=> start!208404 m!2591665))

(declare-fun m!2591667 () Bool)

(assert (=> start!208404 m!2591667))

(declare-fun m!2591669 () Bool)

(assert (=> b!2148679 m!2591669))

(declare-fun m!2591671 () Bool)

(assert (=> b!2148678 m!2591671))

(declare-fun m!2591673 () Bool)

(assert (=> b!2148672 m!2591673))

(check-sat (not b!2148668) (not b!2148679) b_and!173035 (not b!2148675) (not b!2148672) b_and!173033 (not b!2148670) (not b!2148678) (not b!2148671) (not b!2148674) (not mapNonEmpty!13568) (not b_next!64143) (not b!2148667) (not b_next!64141) (not b!2148677) (not start!208404) (not setNonEmpty!17005))
(check-sat b_and!173035 b_and!173033 (not b_next!64141) (not b_next!64143))
(get-model)

(declare-fun d!645450 () Bool)

(declare-fun res!926816 () Bool)

(declare-fun e!1373788 () Bool)

(assert (=> d!645450 (=> (not res!926816) (not e!1373788))))

(declare-fun valid!2213 (MutLongMap!2862) Bool)

(assert (=> d!645450 (= res!926816 (valid!2213 (v!29163 (underlying!5920 (cache!3157 thiss!29110)))))))

(assert (=> d!645450 (= (valid!2212 (cache!3157 thiss!29110)) e!1373788)))

(declare-fun b!2148684 () Bool)

(declare-fun res!926817 () Bool)

(assert (=> b!2148684 (=> (not res!926817) (not e!1373788))))

(declare-fun lambda!80704 () Int)

(declare-datatypes ((tuple2!24432 0))(
  ( (tuple2!24433 (_1!14490 (_ BitVec 64)) (_2!14490 List!24670)) )
))
(declare-datatypes ((List!24672 0))(
  ( (Nil!24588) (Cons!24588 (h!29989 tuple2!24432) (t!197210 List!24672)) )
))
(declare-fun forall!5012 (List!24672 Int) Bool)

(declare-datatypes ((ListLongMap!243 0))(
  ( (ListLongMap!244 (toList!1094 List!24672)) )
))
(declare-fun map!4939 (MutLongMap!2862) ListLongMap!243)

(assert (=> b!2148684 (= res!926817 (forall!5012 (toList!1094 (map!4939 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))) lambda!80704))))

(declare-fun b!2148685 () Bool)

(declare-fun allKeysSameHashInMap!81 (ListLongMap!243 Hashable!2776) Bool)

(assert (=> b!2148685 (= e!1373788 (allKeysSameHashInMap!81 (map!4939 (v!29163 (underlying!5920 (cache!3157 thiss!29110)))) (hashF!4699 (cache!3157 thiss!29110))))))

(assert (= (and d!645450 res!926816) b!2148684))

(assert (= (and b!2148684 res!926817) b!2148685))

(declare-fun m!2591675 () Bool)

(assert (=> d!645450 m!2591675))

(declare-fun m!2591677 () Bool)

(assert (=> b!2148684 m!2591677))

(declare-fun m!2591679 () Bool)

(assert (=> b!2148684 m!2591679))

(assert (=> b!2148685 m!2591677))

(assert (=> b!2148685 m!2591677))

(declare-fun m!2591681 () Bool)

(assert (=> b!2148685 m!2591681))

(assert (=> b!2148668 d!645450))

(declare-fun d!645452 () Bool)

(declare-fun lambda!80707 () Int)

(declare-fun exists!726 ((InoxSet Context!2814) Int) Bool)

(assert (=> d!645452 (= (nullableZipper!179 z!514) (exists!726 z!514 lambda!80707))))

(declare-fun bs!445510 () Bool)

(assert (= bs!445510 d!645452))

(declare-fun m!2591683 () Bool)

(assert (=> bs!445510 m!2591683))

(assert (=> b!2148678 d!645452))

(declare-fun b!2148691 () Bool)

(assert (=> b!2148691 true))

(declare-fun d!645454 () Bool)

(declare-fun res!926822 () Bool)

(declare-fun e!1373791 () Bool)

(assert (=> d!645454 (=> (not res!926822) (not e!1373791))))

(assert (=> d!645454 (= res!926822 (valid!2212 (cache!3157 thiss!29110)))))

(assert (=> d!645454 (= (validCacheMapFurthestNullable!135 (cache!3157 thiss!29110) localTotalInput!13) e!1373791)))

(declare-fun b!2148690 () Bool)

(declare-fun res!926823 () Bool)

(assert (=> b!2148690 (=> (not res!926823) (not e!1373791))))

(declare-fun invariantList!317 (List!24670) Bool)

(declare-datatypes ((ListMap!683 0))(
  ( (ListMap!684 (toList!1095 List!24670)) )
))
(declare-fun map!4940 (MutableMap!2776) ListMap!683)

(assert (=> b!2148690 (= res!926823 (invariantList!317 (toList!1095 (map!4940 (cache!3157 thiss!29110)))))))

(declare-fun lambda!80710 () Int)

(declare-fun forall!5013 (List!24670 Int) Bool)

(assert (=> b!2148691 (= e!1373791 (forall!5013 (toList!1095 (map!4940 (cache!3157 thiss!29110))) lambda!80710))))

(assert (= (and d!645454 res!926822) b!2148690))

(assert (= (and b!2148690 res!926823) b!2148691))

(assert (=> d!645454 m!2591661))

(declare-fun m!2591686 () Bool)

(assert (=> b!2148690 m!2591686))

(declare-fun m!2591688 () Bool)

(assert (=> b!2148690 m!2591688))

(assert (=> b!2148691 m!2591686))

(declare-fun m!2591690 () Bool)

(assert (=> b!2148691 m!2591690))

(assert (=> b!2148679 d!645454))

(declare-fun bs!445511 () Bool)

(declare-fun b!2148695 () Bool)

(assert (= bs!445511 (and b!2148695 b!2148691)))

(declare-fun lambda!80711 () Int)

(assert (=> bs!445511 (= (= (totalInput!3221 thiss!29110) localTotalInput!13) (= lambda!80711 lambda!80710))))

(assert (=> b!2148695 true))

(declare-fun d!645456 () Bool)

(declare-fun res!926824 () Bool)

(declare-fun e!1373792 () Bool)

(assert (=> d!645456 (=> (not res!926824) (not e!1373792))))

(assert (=> d!645456 (= res!926824 (valid!2212 (cache!3157 thiss!29110)))))

(assert (=> d!645456 (= (validCacheMapFurthestNullable!135 (cache!3157 thiss!29110) (totalInput!3221 thiss!29110)) e!1373792)))

(declare-fun b!2148694 () Bool)

(declare-fun res!926825 () Bool)

(assert (=> b!2148694 (=> (not res!926825) (not e!1373792))))

(assert (=> b!2148694 (= res!926825 (invariantList!317 (toList!1095 (map!4940 (cache!3157 thiss!29110)))))))

(assert (=> b!2148695 (= e!1373792 (forall!5013 (toList!1095 (map!4940 (cache!3157 thiss!29110))) lambda!80711))))

(assert (= (and d!645456 res!926824) b!2148694))

(assert (= (and b!2148694 res!926825) b!2148695))

(assert (=> d!645456 m!2591661))

(assert (=> b!2148694 m!2591686))

(assert (=> b!2148694 m!2591688))

(assert (=> b!2148695 m!2591686))

(declare-fun m!2591692 () Bool)

(assert (=> b!2148695 m!2591692))

(assert (=> b!2148670 d!645456))

(declare-fun d!645458 () Bool)

(declare-fun isBalanced!2472 (Conc!7973) Bool)

(assert (=> d!645458 (= (inv!32373 (totalInput!3221 thiss!29110)) (isBalanced!2472 (c!340997 (totalInput!3221 thiss!29110))))))

(declare-fun bs!445512 () Bool)

(assert (= bs!445512 d!645458))

(declare-fun m!2591694 () Bool)

(assert (=> bs!445512 m!2591694))

(assert (=> b!2148675 d!645458))

(declare-fun d!645460 () Bool)

(assert (=> d!645460 (= (array_inv!3096 (_keys!3159 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))))) (bvsge (size!19256 (_keys!3159 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2148671 d!645460))

(declare-fun d!645462 () Bool)

(assert (=> d!645462 (= (array_inv!3097 (_values!3142 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))))) (bvsge (size!19257 (_values!3142 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2148671 d!645462))

(declare-fun d!645464 () Bool)

(declare-fun c!341002 () Bool)

(assert (=> d!645464 (= c!341002 ((_ is Node!7973) (c!340997 (totalInput!3221 thiss!29110))))))

(declare-fun e!1373797 () Bool)

(assert (=> d!645464 (= (inv!32371 (c!340997 (totalInput!3221 thiss!29110))) e!1373797)))

(declare-fun b!2148702 () Bool)

(declare-fun inv!32374 (Conc!7973) Bool)

(assert (=> b!2148702 (= e!1373797 (inv!32374 (c!340997 (totalInput!3221 thiss!29110))))))

(declare-fun b!2148703 () Bool)

(declare-fun e!1373798 () Bool)

(assert (=> b!2148703 (= e!1373797 e!1373798)))

(declare-fun res!926828 () Bool)

(assert (=> b!2148703 (= res!926828 (not ((_ is Leaf!11659) (c!340997 (totalInput!3221 thiss!29110)))))))

(assert (=> b!2148703 (=> res!926828 e!1373798)))

(declare-fun b!2148704 () Bool)

(declare-fun inv!32375 (Conc!7973) Bool)

(assert (=> b!2148704 (= e!1373798 (inv!32375 (c!340997 (totalInput!3221 thiss!29110))))))

(assert (= (and d!645464 c!341002) b!2148702))

(assert (= (and d!645464 (not c!341002)) b!2148703))

(assert (= (and b!2148703 (not res!926828)) b!2148704))

(declare-fun m!2591696 () Bool)

(assert (=> b!2148702 m!2591696))

(declare-fun m!2591698 () Bool)

(assert (=> b!2148704 m!2591698))

(assert (=> b!2148672 d!645464))

(declare-fun d!645466 () Bool)

(declare-fun res!926831 () Bool)

(declare-fun e!1373801 () Bool)

(assert (=> d!645466 (=> (not res!926831) (not e!1373801))))

(assert (=> d!645466 (= res!926831 ((_ is HashMap!2776) (cache!3157 thiss!29110)))))

(assert (=> d!645466 (= (inv!32372 thiss!29110) e!1373801)))

(declare-fun b!2148707 () Bool)

(assert (=> b!2148707 (= e!1373801 (validCacheMapFurthestNullable!135 (cache!3157 thiss!29110) (totalInput!3221 thiss!29110)))))

(assert (= (and d!645466 res!926831) b!2148707))

(assert (=> b!2148707 m!2591657))

(assert (=> start!208404 d!645466))

(declare-fun d!645468 () Bool)

(assert (=> d!645468 (= (inv!32373 localTotalInput!13) (isBalanced!2472 (c!340997 localTotalInput!13)))))

(declare-fun bs!445513 () Bool)

(assert (= bs!445513 d!645468))

(declare-fun m!2591700 () Bool)

(assert (=> bs!445513 m!2591700))

(assert (=> start!208404 d!645468))

(declare-fun d!645470 () Bool)

(declare-fun c!341003 () Bool)

(assert (=> d!645470 (= c!341003 ((_ is Node!7973) (c!340997 localTotalInput!13)))))

(declare-fun e!1373802 () Bool)

(assert (=> d!645470 (= (inv!32371 (c!340997 localTotalInput!13)) e!1373802)))

(declare-fun b!2148708 () Bool)

(assert (=> b!2148708 (= e!1373802 (inv!32374 (c!340997 localTotalInput!13)))))

(declare-fun b!2148709 () Bool)

(declare-fun e!1373803 () Bool)

(assert (=> b!2148709 (= e!1373802 e!1373803)))

(declare-fun res!926832 () Bool)

(assert (=> b!2148709 (= res!926832 (not ((_ is Leaf!11659) (c!340997 localTotalInput!13))))))

(assert (=> b!2148709 (=> res!926832 e!1373803)))

(declare-fun b!2148710 () Bool)

(assert (=> b!2148710 (= e!1373803 (inv!32375 (c!340997 localTotalInput!13)))))

(assert (= (and d!645470 c!341003) b!2148708))

(assert (= (and d!645470 (not c!341003)) b!2148709))

(assert (= (and b!2148709 (not res!926832)) b!2148710))

(declare-fun m!2591702 () Bool)

(assert (=> b!2148708 m!2591702))

(declare-fun m!2591704 () Bool)

(assert (=> b!2148710 m!2591704))

(assert (=> b!2148677 d!645470))

(declare-fun d!645472 () Bool)

(declare-fun lambda!80714 () Int)

(declare-fun forall!5014 (List!24669 Int) Bool)

(assert (=> d!645472 (= (inv!32370 setElem!17005) (forall!5014 (exprs!1907 setElem!17005) lambda!80714))))

(declare-fun bs!445514 () Bool)

(assert (= bs!445514 d!645472))

(declare-fun m!2591706 () Bool)

(assert (=> bs!445514 m!2591706))

(assert (=> setNonEmpty!17005 d!645472))

(declare-fun b!2148715 () Bool)

(declare-fun e!1373806 () Bool)

(declare-fun tp!667069 () Bool)

(declare-fun tp!667070 () Bool)

(assert (=> b!2148715 (= e!1373806 (and tp!667069 tp!667070))))

(assert (=> b!2148674 (= tp!667061 e!1373806)))

(assert (= (and b!2148674 ((_ is Cons!24585) (exprs!1907 setElem!17005))) b!2148715))

(declare-fun b!2148726 () Bool)

(declare-fun e!1373816 () Bool)

(declare-fun tp!667091 () Bool)

(assert (=> b!2148726 (= e!1373816 tp!667091)))

(declare-fun tp!667086 () Bool)

(declare-fun e!1373815 () Bool)

(declare-fun setRes!17011 () Bool)

(declare-fun setNonEmpty!17010 () Bool)

(declare-fun setElem!17010 () Context!2814)

(assert (=> setNonEmpty!17010 (= setRes!17011 (and tp!667086 (inv!32370 setElem!17010) e!1373815))))

(declare-fun mapValue!13571 () List!24670)

(declare-fun setRest!17010 () (InoxSet Context!2814))

(assert (=> setNonEmpty!17010 (= (_1!14488 (_1!14489 (h!29987 mapValue!13571))) ((_ map or) (store ((as const (Array Context!2814 Bool)) false) setElem!17010 true) setRest!17010))))

(declare-fun setElem!17011 () Context!2814)

(declare-fun setNonEmpty!17011 () Bool)

(declare-fun tp!667085 () Bool)

(declare-fun setRes!17010 () Bool)

(assert (=> setNonEmpty!17011 (= setRes!17010 (and tp!667085 (inv!32370 setElem!17011) e!1373816))))

(declare-fun mapDefault!13571 () List!24670)

(declare-fun setRest!17011 () (InoxSet Context!2814))

(assert (=> setNonEmpty!17011 (= (_1!14488 (_1!14489 (h!29987 mapDefault!13571))) ((_ map or) (store ((as const (Array Context!2814 Bool)) false) setElem!17011 true) setRest!17011))))

(declare-fun setIsEmpty!17010 () Bool)

(assert (=> setIsEmpty!17010 setRes!17010))

(declare-fun setIsEmpty!17011 () Bool)

(assert (=> setIsEmpty!17011 setRes!17011))

(declare-fun condMapEmpty!13571 () Bool)

(assert (=> mapNonEmpty!13568 (= condMapEmpty!13571 (= mapRest!13568 ((as const (Array (_ BitVec 32) List!24670)) mapDefault!13571)))))

(declare-fun e!1373818 () Bool)

(declare-fun mapRes!13571 () Bool)

(assert (=> mapNonEmpty!13568 (= tp!667064 (and e!1373818 mapRes!13571))))

(declare-fun b!2148727 () Bool)

(declare-fun e!1373817 () Bool)

(declare-fun tp!667087 () Bool)

(assert (=> b!2148727 (= e!1373817 (and setRes!17011 tp!667087))))

(declare-fun condSetEmpty!17010 () Bool)

(assert (=> b!2148727 (= condSetEmpty!17010 (= (_1!14488 (_1!14489 (h!29987 mapValue!13571))) ((as const (Array Context!2814 Bool)) false)))))

(declare-fun mapNonEmpty!13571 () Bool)

(declare-fun tp!667088 () Bool)

(assert (=> mapNonEmpty!13571 (= mapRes!13571 (and tp!667088 e!1373817))))

(declare-fun mapRest!13571 () (Array (_ BitVec 32) List!24670))

(declare-fun mapKey!13571 () (_ BitVec 32))

(assert (=> mapNonEmpty!13571 (= mapRest!13568 (store mapRest!13571 mapKey!13571 mapValue!13571))))

(declare-fun b!2148728 () Bool)

(declare-fun tp!667090 () Bool)

(assert (=> b!2148728 (= e!1373818 (and setRes!17010 tp!667090))))

(declare-fun condSetEmpty!17011 () Bool)

(assert (=> b!2148728 (= condSetEmpty!17011 (= (_1!14488 (_1!14489 (h!29987 mapDefault!13571))) ((as const (Array Context!2814 Bool)) false)))))

(declare-fun mapIsEmpty!13571 () Bool)

(assert (=> mapIsEmpty!13571 mapRes!13571))

(declare-fun b!2148729 () Bool)

(declare-fun tp!667089 () Bool)

(assert (=> b!2148729 (= e!1373815 tp!667089)))

(assert (= (and mapNonEmpty!13568 condMapEmpty!13571) mapIsEmpty!13571))

(assert (= (and mapNonEmpty!13568 (not condMapEmpty!13571)) mapNonEmpty!13571))

(assert (= (and b!2148727 condSetEmpty!17010) setIsEmpty!17011))

(assert (= (and b!2148727 (not condSetEmpty!17010)) setNonEmpty!17010))

(assert (= setNonEmpty!17010 b!2148729))

(assert (= (and mapNonEmpty!13571 ((_ is Cons!24586) mapValue!13571)) b!2148727))

(assert (= (and b!2148728 condSetEmpty!17011) setIsEmpty!17010))

(assert (= (and b!2148728 (not condSetEmpty!17011)) setNonEmpty!17011))

(assert (= setNonEmpty!17011 b!2148726))

(assert (= (and mapNonEmpty!13568 ((_ is Cons!24586) mapDefault!13571)) b!2148728))

(declare-fun m!2591708 () Bool)

(assert (=> setNonEmpty!17010 m!2591708))

(declare-fun m!2591710 () Bool)

(assert (=> setNonEmpty!17011 m!2591710))

(declare-fun m!2591712 () Bool)

(assert (=> mapNonEmpty!13571 m!2591712))

(declare-fun setIsEmpty!17014 () Bool)

(declare-fun setRes!17014 () Bool)

(assert (=> setIsEmpty!17014 setRes!17014))

(declare-fun setNonEmpty!17014 () Bool)

(declare-fun setElem!17014 () Context!2814)

(declare-fun tp!667098 () Bool)

(declare-fun e!1373824 () Bool)

(assert (=> setNonEmpty!17014 (= setRes!17014 (and tp!667098 (inv!32370 setElem!17014) e!1373824))))

(declare-fun setRest!17014 () (InoxSet Context!2814))

(assert (=> setNonEmpty!17014 (= (_1!14488 (_1!14489 (h!29987 mapValue!13568))) ((_ map or) (store ((as const (Array Context!2814 Bool)) false) setElem!17014 true) setRest!17014))))

(declare-fun b!2148737 () Bool)

(declare-fun tp!667099 () Bool)

(assert (=> b!2148737 (= e!1373824 tp!667099)))

(declare-fun e!1373823 () Bool)

(assert (=> mapNonEmpty!13568 (= tp!667060 e!1373823)))

(declare-fun b!2148736 () Bool)

(declare-fun tp!667100 () Bool)

(assert (=> b!2148736 (= e!1373823 (and setRes!17014 tp!667100))))

(declare-fun condSetEmpty!17014 () Bool)

(assert (=> b!2148736 (= condSetEmpty!17014 (= (_1!14488 (_1!14489 (h!29987 mapValue!13568))) ((as const (Array Context!2814 Bool)) false)))))

(assert (= (and b!2148736 condSetEmpty!17014) setIsEmpty!17014))

(assert (= (and b!2148736 (not condSetEmpty!17014)) setNonEmpty!17014))

(assert (= setNonEmpty!17014 b!2148737))

(assert (= (and mapNonEmpty!13568 ((_ is Cons!24586) mapValue!13568)) b!2148736))

(declare-fun m!2591714 () Bool)

(assert (=> setNonEmpty!17014 m!2591714))

(declare-fun setIsEmpty!17015 () Bool)

(declare-fun setRes!17015 () Bool)

(assert (=> setIsEmpty!17015 setRes!17015))

(declare-fun e!1373826 () Bool)

(declare-fun setNonEmpty!17015 () Bool)

(declare-fun setElem!17015 () Context!2814)

(declare-fun tp!667101 () Bool)

(assert (=> setNonEmpty!17015 (= setRes!17015 (and tp!667101 (inv!32370 setElem!17015) e!1373826))))

(declare-fun setRest!17015 () (InoxSet Context!2814))

(assert (=> setNonEmpty!17015 (= (_1!14488 (_1!14489 (h!29987 mapDefault!13568))) ((_ map or) (store ((as const (Array Context!2814 Bool)) false) setElem!17015 true) setRest!17015))))

(declare-fun b!2148739 () Bool)

(declare-fun tp!667102 () Bool)

(assert (=> b!2148739 (= e!1373826 tp!667102)))

(declare-fun e!1373825 () Bool)

(assert (=> b!2148667 (= tp!667062 e!1373825)))

(declare-fun b!2148738 () Bool)

(declare-fun tp!667103 () Bool)

(assert (=> b!2148738 (= e!1373825 (and setRes!17015 tp!667103))))

(declare-fun condSetEmpty!17015 () Bool)

(assert (=> b!2148738 (= condSetEmpty!17015 (= (_1!14488 (_1!14489 (h!29987 mapDefault!13568))) ((as const (Array Context!2814 Bool)) false)))))

(assert (= (and b!2148738 condSetEmpty!17015) setIsEmpty!17015))

(assert (= (and b!2148738 (not condSetEmpty!17015)) setNonEmpty!17015))

(assert (= setNonEmpty!17015 b!2148739))

(assert (= (and b!2148667 ((_ is Cons!24586) mapDefault!13568)) b!2148738))

(declare-fun m!2591716 () Bool)

(assert (=> setNonEmpty!17015 m!2591716))

(declare-fun setIsEmpty!17016 () Bool)

(declare-fun setRes!17016 () Bool)

(assert (=> setIsEmpty!17016 setRes!17016))

(declare-fun tp!667104 () Bool)

(declare-fun e!1373828 () Bool)

(declare-fun setElem!17016 () Context!2814)

(declare-fun setNonEmpty!17016 () Bool)

(assert (=> setNonEmpty!17016 (= setRes!17016 (and tp!667104 (inv!32370 setElem!17016) e!1373828))))

(declare-fun setRest!17016 () (InoxSet Context!2814))

(assert (=> setNonEmpty!17016 (= (_1!14488 (_1!14489 (h!29987 (zeroValue!3120 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2814 Bool)) false) setElem!17016 true) setRest!17016))))

(declare-fun b!2148741 () Bool)

(declare-fun tp!667105 () Bool)

(assert (=> b!2148741 (= e!1373828 tp!667105)))

(declare-fun e!1373827 () Bool)

(assert (=> b!2148671 (= tp!667059 e!1373827)))

(declare-fun b!2148740 () Bool)

(declare-fun tp!667106 () Bool)

(assert (=> b!2148740 (= e!1373827 (and setRes!17016 tp!667106))))

(declare-fun condSetEmpty!17016 () Bool)

(assert (=> b!2148740 (= condSetEmpty!17016 (= (_1!14488 (_1!14489 (h!29987 (zeroValue!3120 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))))))) ((as const (Array Context!2814 Bool)) false)))))

(assert (= (and b!2148740 condSetEmpty!17016) setIsEmpty!17016))

(assert (= (and b!2148740 (not condSetEmpty!17016)) setNonEmpty!17016))

(assert (= setNonEmpty!17016 b!2148741))

(assert (= (and b!2148671 ((_ is Cons!24586) (zeroValue!3120 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110)))))))) b!2148740))

(declare-fun m!2591718 () Bool)

(assert (=> setNonEmpty!17016 m!2591718))

(declare-fun setIsEmpty!17017 () Bool)

(declare-fun setRes!17017 () Bool)

(assert (=> setIsEmpty!17017 setRes!17017))

(declare-fun tp!667107 () Bool)

(declare-fun setElem!17017 () Context!2814)

(declare-fun e!1373830 () Bool)

(declare-fun setNonEmpty!17017 () Bool)

(assert (=> setNonEmpty!17017 (= setRes!17017 (and tp!667107 (inv!32370 setElem!17017) e!1373830))))

(declare-fun setRest!17017 () (InoxSet Context!2814))

(assert (=> setNonEmpty!17017 (= (_1!14488 (_1!14489 (h!29987 (minValue!3120 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2814 Bool)) false) setElem!17017 true) setRest!17017))))

(declare-fun b!2148743 () Bool)

(declare-fun tp!667108 () Bool)

(assert (=> b!2148743 (= e!1373830 tp!667108)))

(declare-fun e!1373829 () Bool)

(assert (=> b!2148671 (= tp!667056 e!1373829)))

(declare-fun b!2148742 () Bool)

(declare-fun tp!667109 () Bool)

(assert (=> b!2148742 (= e!1373829 (and setRes!17017 tp!667109))))

(declare-fun condSetEmpty!17017 () Bool)

(assert (=> b!2148742 (= condSetEmpty!17017 (= (_1!14488 (_1!14489 (h!29987 (minValue!3120 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110))))))))) ((as const (Array Context!2814 Bool)) false)))))

(assert (= (and b!2148742 condSetEmpty!17017) setIsEmpty!17017))

(assert (= (and b!2148742 (not condSetEmpty!17017)) setNonEmpty!17017))

(assert (= setNonEmpty!17017 b!2148743))

(assert (= (and b!2148671 ((_ is Cons!24586) (minValue!3120 (v!29162 (underlying!5919 (v!29163 (underlying!5920 (cache!3157 thiss!29110)))))))) b!2148742))

(declare-fun m!2591720 () Bool)

(assert (=> setNonEmpty!17017 m!2591720))

(declare-fun tp!667116 () Bool)

(declare-fun b!2148752 () Bool)

(declare-fun tp!667118 () Bool)

(declare-fun e!1373836 () Bool)

(assert (=> b!2148752 (= e!1373836 (and (inv!32371 (left!18868 (c!340997 (totalInput!3221 thiss!29110)))) tp!667116 (inv!32371 (right!19198 (c!340997 (totalInput!3221 thiss!29110)))) tp!667118))))

(declare-fun b!2148754 () Bool)

(declare-fun e!1373835 () Bool)

(declare-fun tp!667117 () Bool)

(assert (=> b!2148754 (= e!1373835 tp!667117)))

(declare-fun b!2148753 () Bool)

(declare-fun inv!32376 (IArray!15951) Bool)

(assert (=> b!2148753 (= e!1373836 (and (inv!32376 (xs!10915 (c!340997 (totalInput!3221 thiss!29110)))) e!1373835))))

(assert (=> b!2148672 (= tp!667057 (and (inv!32371 (c!340997 (totalInput!3221 thiss!29110))) e!1373836))))

(assert (= (and b!2148672 ((_ is Node!7973) (c!340997 (totalInput!3221 thiss!29110)))) b!2148752))

(assert (= b!2148753 b!2148754))

(assert (= (and b!2148672 ((_ is Leaf!11659) (c!340997 (totalInput!3221 thiss!29110)))) b!2148753))

(declare-fun m!2591722 () Bool)

(assert (=> b!2148752 m!2591722))

(declare-fun m!2591724 () Bool)

(assert (=> b!2148752 m!2591724))

(declare-fun m!2591726 () Bool)

(assert (=> b!2148753 m!2591726))

(assert (=> b!2148672 m!2591673))

(declare-fun tp!667121 () Bool)

(declare-fun b!2148755 () Bool)

(declare-fun tp!667119 () Bool)

(declare-fun e!1373838 () Bool)

(assert (=> b!2148755 (= e!1373838 (and (inv!32371 (left!18868 (c!340997 localTotalInput!13))) tp!667119 (inv!32371 (right!19198 (c!340997 localTotalInput!13))) tp!667121))))

(declare-fun b!2148757 () Bool)

(declare-fun e!1373837 () Bool)

(declare-fun tp!667120 () Bool)

(assert (=> b!2148757 (= e!1373837 tp!667120)))

(declare-fun b!2148756 () Bool)

(assert (=> b!2148756 (= e!1373838 (and (inv!32376 (xs!10915 (c!340997 localTotalInput!13))) e!1373837))))

(assert (=> b!2148677 (= tp!667058 (and (inv!32371 (c!340997 localTotalInput!13)) e!1373838))))

(assert (= (and b!2148677 ((_ is Node!7973) (c!340997 localTotalInput!13))) b!2148755))

(assert (= b!2148756 b!2148757))

(assert (= (and b!2148677 ((_ is Leaf!11659) (c!340997 localTotalInput!13))) b!2148756))

(declare-fun m!2591728 () Bool)

(assert (=> b!2148755 m!2591728))

(declare-fun m!2591730 () Bool)

(assert (=> b!2148755 m!2591730))

(declare-fun m!2591732 () Bool)

(assert (=> b!2148756 m!2591732))

(assert (=> b!2148677 m!2591651))

(declare-fun condSetEmpty!17020 () Bool)

(assert (=> setNonEmpty!17005 (= condSetEmpty!17020 (= setRest!17005 ((as const (Array Context!2814 Bool)) false)))))

(declare-fun setRes!17020 () Bool)

(assert (=> setNonEmpty!17005 (= tp!667055 setRes!17020)))

(declare-fun setIsEmpty!17020 () Bool)

(assert (=> setIsEmpty!17020 setRes!17020))

(declare-fun e!1373841 () Bool)

(declare-fun setNonEmpty!17020 () Bool)

(declare-fun setElem!17020 () Context!2814)

(declare-fun tp!667127 () Bool)

(assert (=> setNonEmpty!17020 (= setRes!17020 (and tp!667127 (inv!32370 setElem!17020) e!1373841))))

(declare-fun setRest!17020 () (InoxSet Context!2814))

(assert (=> setNonEmpty!17020 (= setRest!17005 ((_ map or) (store ((as const (Array Context!2814 Bool)) false) setElem!17020 true) setRest!17020))))

(declare-fun b!2148762 () Bool)

(declare-fun tp!667126 () Bool)

(assert (=> b!2148762 (= e!1373841 tp!667126)))

(assert (= (and setNonEmpty!17005 condSetEmpty!17020) setIsEmpty!17020))

(assert (= (and setNonEmpty!17005 (not condSetEmpty!17020)) setNonEmpty!17020))

(assert (= setNonEmpty!17020 b!2148762))

(declare-fun m!2591734 () Bool)

(assert (=> setNonEmpty!17020 m!2591734))

(check-sat (not d!645458) b_and!173035 (not b!2148757) b_and!173033 (not b!2148740) (not d!645452) (not b!2148695) (not setNonEmpty!17016) (not d!645450) (not b!2148691) (not d!645468) (not b!2148684) (not setNonEmpty!17011) (not b!2148710) (not b!2148741) (not d!645456) (not b!2148729) (not setNonEmpty!17014) (not b!2148726) (not b!2148754) (not d!645454) (not b!2148752) (not b!2148762) (not b!2148672) (not b!2148742) (not setNonEmpty!17015) (not b!2148755) (not b!2148694) (not b!2148715) (not b!2148739) (not b!2148702) (not setNonEmpty!17017) (not b!2148707) (not b!2148756) (not setNonEmpty!17020) (not b!2148704) (not b!2148743) (not b!2148728) (not b!2148753) (not b_next!64143) (not b!2148708) (not b!2148738) (not b!2148685) (not b!2148736) (not b!2148737) (not b!2148690) (not d!645472) (not b_next!64141) (not setNonEmpty!17010) (not b!2148727) (not b!2148677) (not mapNonEmpty!13571))
(check-sat b_and!173035 b_and!173033 (not b_next!64141) (not b_next!64143))
