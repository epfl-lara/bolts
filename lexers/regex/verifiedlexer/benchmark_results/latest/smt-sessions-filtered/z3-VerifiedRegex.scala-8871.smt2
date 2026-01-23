; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473936 () Bool)

(assert start!473936)

(declare-fun b!4687624 () Bool)

(declare-fun e!2924450 () Bool)

(declare-fun e!2924449 () Bool)

(assert (=> b!4687624 (= e!2924450 e!2924449)))

(declare-fun res!1976818 () Bool)

(assert (=> b!4687624 (=> (not res!1976818) (not e!2924449))))

(declare-datatypes ((K!13760 0))(
  ( (K!13761 (val!19279 Int)) )
))
(declare-datatypes ((V!14006 0))(
  ( (V!14007 (val!19280 Int)) )
))
(declare-datatypes ((tuple2!53770 0))(
  ( (tuple2!53771 (_1!30179 K!13760) (_2!30179 V!14006)) )
))
(declare-datatypes ((List!52505 0))(
  ( (Nil!52381) (Cons!52381 (h!58618 tuple2!53770) (t!359673 List!52505)) )
))
(declare-datatypes ((ListMap!4941 0))(
  ( (ListMap!4942 (toList!5577 List!52505)) )
))
(declare-fun lt!1846912 () ListMap!4941)

(declare-fun key!4653 () K!13760)

(declare-fun contains!15562 (ListMap!4941 K!13760) Bool)

(assert (=> b!4687624 (= res!1976818 (contains!15562 lt!1846912 key!4653))))

(declare-datatypes ((tuple2!53772 0))(
  ( (tuple2!53773 (_1!30180 (_ BitVec 64)) (_2!30180 List!52505)) )
))
(declare-datatypes ((List!52506 0))(
  ( (Nil!52382) (Cons!52382 (h!58619 tuple2!53772) (t!359674 List!52506)) )
))
(declare-datatypes ((ListLongMap!4107 0))(
  ( (ListLongMap!4108 (toList!5578 List!52506)) )
))
(declare-fun lm!2023 () ListLongMap!4107)

(declare-fun extractMap!1870 (List!52506) ListMap!4941)

(assert (=> b!4687624 (= lt!1846912 (extractMap!1870 (toList!5578 lm!2023)))))

(declare-fun b!4687625 () Bool)

(declare-fun e!2924458 () Bool)

(declare-fun e!2924455 () Bool)

(assert (=> b!4687625 (= e!2924458 e!2924455)))

(declare-fun res!1976808 () Bool)

(assert (=> b!4687625 (=> res!1976808 e!2924455)))

(declare-fun lt!1846917 () List!52505)

(declare-fun lt!1846926 () List!52505)

(declare-fun removePairForKey!1439 (List!52505 K!13760) List!52505)

(assert (=> b!4687625 (= res!1976808 (not (= (removePairForKey!1439 lt!1846926 key!4653) lt!1846917)))))

(declare-fun newBucket!218 () List!52505)

(declare-fun tail!8562 (List!52505) List!52505)

(assert (=> b!4687625 (= lt!1846917 (tail!8562 newBucket!218))))

(declare-fun oldBucket!34 () List!52505)

(assert (=> b!4687625 (= lt!1846926 (tail!8562 oldBucket!34))))

(declare-fun b!4687626 () Bool)

(declare-fun res!1976817 () Bool)

(declare-fun e!2924451 () Bool)

(assert (=> b!4687626 (=> (not res!1976817) (not e!2924451))))

(get-info :version)

(assert (=> b!4687626 (= res!1976817 ((_ is Cons!52382) (toList!5578 lm!2023)))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun lambda!206447 () Int)

(declare-fun b!4687627 () Bool)

(declare-fun forall!11303 (List!52506 Int) Bool)

(assert (=> b!4687627 (= e!2924455 (forall!11303 (Cons!52382 (tuple2!53773 hash!405 lt!1846926) (t!359674 (toList!5578 lm!2023))) lambda!206447))))

(declare-fun lt!1846915 () ListMap!4941)

(declare-fun lt!1846928 () tuple2!53772)

(assert (=> b!4687627 (= lt!1846915 (extractMap!1870 (Cons!52382 lt!1846928 (t!359674 (toList!5578 lm!2023)))))))

(declare-fun lt!1846919 () tuple2!53770)

(declare-fun lt!1846924 () ListMap!4941)

(declare-fun eq!1003 (ListMap!4941 ListMap!4941) Bool)

(declare-fun addToMapMapFromBucket!1276 (List!52505 ListMap!4941) ListMap!4941)

(declare-fun +!2128 (ListMap!4941 tuple2!53770) ListMap!4941)

(assert (=> b!4687627 (eq!1003 (addToMapMapFromBucket!1276 (Cons!52381 lt!1846919 lt!1846917) lt!1846924) (+!2128 (addToMapMapFromBucket!1276 lt!1846917 lt!1846924) lt!1846919))))

(declare-datatypes ((Unit!123525 0))(
  ( (Unit!123526) )
))
(declare-fun lt!1846929 () Unit!123525)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!252 (tuple2!53770 List!52505 ListMap!4941) Unit!123525)

(assert (=> b!4687627 (= lt!1846929 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!252 lt!1846919 lt!1846917 lt!1846924))))

(declare-fun head!9951 (List!52505) tuple2!53770)

(assert (=> b!4687627 (= lt!1846919 (head!9951 newBucket!218))))

(declare-fun lt!1846921 () tuple2!53770)

(assert (=> b!4687627 (eq!1003 (addToMapMapFromBucket!1276 (Cons!52381 lt!1846921 lt!1846926) lt!1846924) (+!2128 (addToMapMapFromBucket!1276 lt!1846926 lt!1846924) lt!1846921))))

(declare-fun lt!1846914 () Unit!123525)

(assert (=> b!4687627 (= lt!1846914 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!252 lt!1846921 lt!1846926 lt!1846924))))

(assert (=> b!4687627 (= lt!1846921 (head!9951 oldBucket!34))))

(declare-fun lt!1846918 () List!52506)

(assert (=> b!4687627 (contains!15562 (extractMap!1870 lt!1846918) key!4653)))

(declare-datatypes ((Hashable!6213 0))(
  ( (HashableExt!6212 (__x!31916 Int)) )
))
(declare-fun hashF!1323 () Hashable!6213)

(declare-fun lt!1846913 () Unit!123525)

(declare-fun lemmaListContainsThenExtractedMapContains!436 (ListLongMap!4107 K!13760 Hashable!6213) Unit!123525)

(assert (=> b!4687627 (= lt!1846913 (lemmaListContainsThenExtractedMapContains!436 (ListLongMap!4108 lt!1846918) key!4653 hashF!1323))))

(assert (=> b!4687627 (= lt!1846918 (Cons!52382 (tuple2!53773 hash!405 (t!359673 oldBucket!34)) (t!359674 (toList!5578 lm!2023))))))

(declare-fun b!4687628 () Bool)

(declare-fun res!1976810 () Bool)

(assert (=> b!4687628 (=> (not res!1976810) (not e!2924450))))

(declare-fun allKeysSameHash!1670 (List!52505 (_ BitVec 64) Hashable!6213) Bool)

(assert (=> b!4687628 (= res!1976810 (allKeysSameHash!1670 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4687629 () Bool)

(declare-fun res!1976820 () Bool)

(assert (=> b!4687629 (=> (not res!1976820) (not e!2924450))))

(declare-fun noDuplicateKeys!1844 (List!52505) Bool)

(assert (=> b!4687629 (= res!1976820 (noDuplicateKeys!1844 newBucket!218))))

(declare-fun b!4687630 () Bool)

(declare-fun res!1976813 () Bool)

(declare-fun e!2924453 () Bool)

(assert (=> b!4687630 (=> (not res!1976813) (not e!2924453))))

(declare-fun allKeysSameHashInMap!1758 (ListLongMap!4107 Hashable!6213) Bool)

(assert (=> b!4687630 (= res!1976813 (allKeysSameHashInMap!1758 lm!2023 hashF!1323))))

(declare-fun b!4687631 () Bool)

(declare-fun res!1976814 () Bool)

(assert (=> b!4687631 (=> res!1976814 e!2924455)))

(assert (=> b!4687631 (= res!1976814 (not (= (removePairForKey!1439 (t!359673 oldBucket!34) key!4653) lt!1846917)))))

(declare-fun b!4687632 () Bool)

(assert (=> b!4687632 (= e!2924449 e!2924453)))

(declare-fun res!1976821 () Bool)

(assert (=> b!4687632 (=> (not res!1976821) (not e!2924453))))

(declare-fun lt!1846920 () (_ BitVec 64))

(assert (=> b!4687632 (= res!1976821 (= lt!1846920 hash!405))))

(declare-fun hash!4047 (Hashable!6213 K!13760) (_ BitVec 64))

(assert (=> b!4687632 (= lt!1846920 (hash!4047 hashF!1323 key!4653))))

(declare-fun res!1976809 () Bool)

(assert (=> start!473936 (=> (not res!1976809) (not e!2924450))))

(assert (=> start!473936 (= res!1976809 (forall!11303 (toList!5578 lm!2023) lambda!206447))))

(assert (=> start!473936 e!2924450))

(declare-fun e!2924456 () Bool)

(declare-fun inv!67634 (ListLongMap!4107) Bool)

(assert (=> start!473936 (and (inv!67634 lm!2023) e!2924456)))

(declare-fun tp_is_empty!30669 () Bool)

(assert (=> start!473936 tp_is_empty!30669))

(declare-fun e!2924457 () Bool)

(assert (=> start!473936 e!2924457))

(assert (=> start!473936 true))

(declare-fun e!2924452 () Bool)

(assert (=> start!473936 e!2924452))

(declare-fun tp_is_empty!30671 () Bool)

(declare-fun b!4687633 () Bool)

(declare-fun tp!1345747 () Bool)

(assert (=> b!4687633 (= e!2924452 (and tp_is_empty!30669 tp_is_empty!30671 tp!1345747))))

(declare-fun b!4687634 () Bool)

(declare-fun res!1976807 () Bool)

(assert (=> b!4687634 (=> (not res!1976807) (not e!2924450))))

(assert (=> b!4687634 (= res!1976807 (= (removePairForKey!1439 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4687635 () Bool)

(declare-fun e!2924454 () Bool)

(assert (=> b!4687635 (= e!2924454 e!2924458)))

(declare-fun res!1976815 () Bool)

(assert (=> b!4687635 (=> res!1976815 e!2924458)))

(declare-fun containsKey!3027 (List!52505 K!13760) Bool)

(assert (=> b!4687635 (= res!1976815 (not (containsKey!3027 (t!359673 oldBucket!34) key!4653)))))

(assert (=> b!4687635 (containsKey!3027 oldBucket!34 key!4653)))

(declare-fun lt!1846922 () Unit!123525)

(declare-fun lemmaGetPairDefinedThenContainsKey!196 (List!52505 K!13760 Hashable!6213) Unit!123525)

(assert (=> b!4687635 (= lt!1846922 (lemmaGetPairDefinedThenContainsKey!196 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1846930 () List!52505)

(declare-datatypes ((Option!12051 0))(
  ( (None!12050) (Some!12050 (v!46449 tuple2!53770)) )
))
(declare-fun isDefined!9306 (Option!12051) Bool)

(declare-fun getPair!448 (List!52505 K!13760) Option!12051)

(assert (=> b!4687635 (isDefined!9306 (getPair!448 lt!1846930 key!4653))))

(declare-fun lt!1846923 () Unit!123525)

(declare-fun lt!1846927 () tuple2!53772)

(declare-fun forallContained!3410 (List!52506 Int tuple2!53772) Unit!123525)

(assert (=> b!4687635 (= lt!1846923 (forallContained!3410 (toList!5578 lm!2023) lambda!206447 lt!1846927))))

(declare-fun contains!15563 (List!52506 tuple2!53772) Bool)

(assert (=> b!4687635 (contains!15563 (toList!5578 lm!2023) lt!1846927)))

(assert (=> b!4687635 (= lt!1846927 (tuple2!53773 lt!1846920 lt!1846930))))

(declare-fun lt!1846925 () Unit!123525)

(declare-fun lemmaGetValueImpliesTupleContained!253 (ListLongMap!4107 (_ BitVec 64) List!52505) Unit!123525)

(assert (=> b!4687635 (= lt!1846925 (lemmaGetValueImpliesTupleContained!253 lm!2023 lt!1846920 lt!1846930))))

(declare-fun apply!12327 (ListLongMap!4107 (_ BitVec 64)) List!52505)

(assert (=> b!4687635 (= lt!1846930 (apply!12327 lm!2023 lt!1846920))))

(declare-fun contains!15564 (ListLongMap!4107 (_ BitVec 64)) Bool)

(assert (=> b!4687635 (contains!15564 lm!2023 lt!1846920)))

(declare-fun lt!1846911 () Unit!123525)

(declare-fun lemmaInGenMapThenLongMapContainsHash!654 (ListLongMap!4107 K!13760 Hashable!6213) Unit!123525)

(assert (=> b!4687635 (= lt!1846911 (lemmaInGenMapThenLongMapContainsHash!654 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1846916 () Unit!123525)

(declare-fun lemmaInGenMapThenGetPairDefined!244 (ListLongMap!4107 K!13760 Hashable!6213) Unit!123525)

(assert (=> b!4687635 (= lt!1846916 (lemmaInGenMapThenGetPairDefined!244 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4687636 () Bool)

(declare-fun res!1976811 () Bool)

(assert (=> b!4687636 (=> (not res!1976811) (not e!2924450))))

(assert (=> b!4687636 (= res!1976811 (noDuplicateKeys!1844 oldBucket!34))))

(declare-fun b!4687637 () Bool)

(declare-fun res!1976819 () Bool)

(assert (=> b!4687637 (=> (not res!1976819) (not e!2924453))))

(assert (=> b!4687637 (= res!1976819 (allKeysSameHash!1670 newBucket!218 hash!405 hashF!1323))))

(declare-fun tp!1345746 () Bool)

(declare-fun b!4687638 () Bool)

(assert (=> b!4687638 (= e!2924457 (and tp_is_empty!30669 tp_is_empty!30671 tp!1345746))))

(declare-fun b!4687639 () Bool)

(assert (=> b!4687639 (= e!2924451 (not e!2924454))))

(declare-fun res!1976816 () Bool)

(assert (=> b!4687639 (=> res!1976816 e!2924454)))

(assert (=> b!4687639 (= res!1976816 (or (and ((_ is Cons!52381) oldBucket!34) (= (_1!30179 (h!58618 oldBucket!34)) key!4653)) (not ((_ is Cons!52381) oldBucket!34)) (= (_1!30179 (h!58618 oldBucket!34)) key!4653)))))

(assert (=> b!4687639 (= lt!1846912 (addToMapMapFromBucket!1276 (_2!30180 (h!58619 (toList!5578 lm!2023))) lt!1846924))))

(assert (=> b!4687639 (= lt!1846924 (extractMap!1870 (t!359674 (toList!5578 lm!2023))))))

(declare-fun tail!8563 (ListLongMap!4107) ListLongMap!4107)

(assert (=> b!4687639 (= (t!359674 (toList!5578 lm!2023)) (toList!5578 (tail!8563 lm!2023)))))

(declare-fun b!4687640 () Bool)

(declare-fun tp!1345745 () Bool)

(assert (=> b!4687640 (= e!2924456 tp!1345745)))

(declare-fun b!4687641 () Bool)

(assert (=> b!4687641 (= e!2924453 e!2924451)))

(declare-fun res!1976812 () Bool)

(assert (=> b!4687641 (=> (not res!1976812) (not e!2924451))))

(declare-fun head!9952 (List!52506) tuple2!53772)

(assert (=> b!4687641 (= res!1976812 (= (head!9952 (toList!5578 lm!2023)) lt!1846928))))

(assert (=> b!4687641 (= lt!1846928 (tuple2!53773 hash!405 oldBucket!34))))

(assert (= (and start!473936 res!1976809) b!4687636))

(assert (= (and b!4687636 res!1976811) b!4687629))

(assert (= (and b!4687629 res!1976820) b!4687634))

(assert (= (and b!4687634 res!1976807) b!4687628))

(assert (= (and b!4687628 res!1976810) b!4687624))

(assert (= (and b!4687624 res!1976818) b!4687632))

(assert (= (and b!4687632 res!1976821) b!4687637))

(assert (= (and b!4687637 res!1976819) b!4687630))

(assert (= (and b!4687630 res!1976813) b!4687641))

(assert (= (and b!4687641 res!1976812) b!4687626))

(assert (= (and b!4687626 res!1976817) b!4687639))

(assert (= (and b!4687639 (not res!1976816)) b!4687635))

(assert (= (and b!4687635 (not res!1976815)) b!4687625))

(assert (= (and b!4687625 (not res!1976808)) b!4687631))

(assert (= (and b!4687631 (not res!1976814)) b!4687627))

(assert (= start!473936 b!4687640))

(assert (= (and start!473936 ((_ is Cons!52381) oldBucket!34)) b!4687638))

(assert (= (and start!473936 ((_ is Cons!52381) newBucket!218)) b!4687633))

(declare-fun m!5587635 () Bool)

(assert (=> b!4687630 m!5587635))

(declare-fun m!5587637 () Bool)

(assert (=> b!4687628 m!5587637))

(declare-fun m!5587639 () Bool)

(assert (=> b!4687625 m!5587639))

(declare-fun m!5587641 () Bool)

(assert (=> b!4687625 m!5587641))

(declare-fun m!5587643 () Bool)

(assert (=> b!4687625 m!5587643))

(declare-fun m!5587645 () Bool)

(assert (=> b!4687632 m!5587645))

(declare-fun m!5587647 () Bool)

(assert (=> b!4687634 m!5587647))

(declare-fun m!5587649 () Bool)

(assert (=> b!4687639 m!5587649))

(declare-fun m!5587651 () Bool)

(assert (=> b!4687639 m!5587651))

(declare-fun m!5587653 () Bool)

(assert (=> b!4687639 m!5587653))

(declare-fun m!5587655 () Bool)

(assert (=> b!4687637 m!5587655))

(declare-fun m!5587657 () Bool)

(assert (=> b!4687636 m!5587657))

(declare-fun m!5587659 () Bool)

(assert (=> b!4687627 m!5587659))

(declare-fun m!5587661 () Bool)

(assert (=> b!4687627 m!5587661))

(declare-fun m!5587663 () Bool)

(assert (=> b!4687627 m!5587663))

(declare-fun m!5587665 () Bool)

(assert (=> b!4687627 m!5587665))

(declare-fun m!5587667 () Bool)

(assert (=> b!4687627 m!5587667))

(assert (=> b!4687627 m!5587663))

(declare-fun m!5587669 () Bool)

(assert (=> b!4687627 m!5587669))

(declare-fun m!5587671 () Bool)

(assert (=> b!4687627 m!5587671))

(declare-fun m!5587673 () Bool)

(assert (=> b!4687627 m!5587673))

(declare-fun m!5587675 () Bool)

(assert (=> b!4687627 m!5587675))

(declare-fun m!5587677 () Bool)

(assert (=> b!4687627 m!5587677))

(declare-fun m!5587679 () Bool)

(assert (=> b!4687627 m!5587679))

(assert (=> b!4687627 m!5587671))

(declare-fun m!5587681 () Bool)

(assert (=> b!4687627 m!5587681))

(declare-fun m!5587683 () Bool)

(assert (=> b!4687627 m!5587683))

(declare-fun m!5587685 () Bool)

(assert (=> b!4687627 m!5587685))

(declare-fun m!5587687 () Bool)

(assert (=> b!4687627 m!5587687))

(assert (=> b!4687627 m!5587677))

(assert (=> b!4687627 m!5587665))

(declare-fun m!5587689 () Bool)

(assert (=> b!4687627 m!5587689))

(assert (=> b!4687627 m!5587669))

(assert (=> b!4687627 m!5587679))

(assert (=> b!4687627 m!5587659))

(declare-fun m!5587691 () Bool)

(assert (=> b!4687627 m!5587691))

(declare-fun m!5587693 () Bool)

(assert (=> b!4687631 m!5587693))

(declare-fun m!5587695 () Bool)

(assert (=> b!4687629 m!5587695))

(declare-fun m!5587697 () Bool)

(assert (=> b!4687624 m!5587697))

(declare-fun m!5587699 () Bool)

(assert (=> b!4687624 m!5587699))

(declare-fun m!5587701 () Bool)

(assert (=> b!4687641 m!5587701))

(declare-fun m!5587703 () Bool)

(assert (=> b!4687635 m!5587703))

(declare-fun m!5587705 () Bool)

(assert (=> b!4687635 m!5587705))

(declare-fun m!5587707 () Bool)

(assert (=> b!4687635 m!5587707))

(declare-fun m!5587709 () Bool)

(assert (=> b!4687635 m!5587709))

(declare-fun m!5587711 () Bool)

(assert (=> b!4687635 m!5587711))

(declare-fun m!5587713 () Bool)

(assert (=> b!4687635 m!5587713))

(declare-fun m!5587715 () Bool)

(assert (=> b!4687635 m!5587715))

(declare-fun m!5587717 () Bool)

(assert (=> b!4687635 m!5587717))

(assert (=> b!4687635 m!5587713))

(declare-fun m!5587719 () Bool)

(assert (=> b!4687635 m!5587719))

(declare-fun m!5587721 () Bool)

(assert (=> b!4687635 m!5587721))

(declare-fun m!5587723 () Bool)

(assert (=> b!4687635 m!5587723))

(declare-fun m!5587725 () Bool)

(assert (=> b!4687635 m!5587725))

(declare-fun m!5587727 () Bool)

(assert (=> start!473936 m!5587727))

(declare-fun m!5587729 () Bool)

(assert (=> start!473936 m!5587729))

(check-sat (not b!4687629) (not b!4687631) (not b!4687630) (not b!4687635) (not b!4687627) (not b!4687625) (not b!4687640) (not b!4687637) (not b!4687624) (not b!4687639) (not start!473936) (not b!4687641) (not b!4687628) tp_is_empty!30669 tp_is_empty!30671 (not b!4687638) (not b!4687636) (not b!4687633) (not b!4687632) (not b!4687634))
(check-sat)
(get-model)

(declare-fun d!1489608 () Bool)

(declare-fun res!1976826 () Bool)

(declare-fun e!2924463 () Bool)

(assert (=> d!1489608 (=> res!1976826 e!2924463)))

(assert (=> d!1489608 (= res!1976826 (not ((_ is Cons!52381) newBucket!218)))))

(assert (=> d!1489608 (= (noDuplicateKeys!1844 newBucket!218) e!2924463)))

(declare-fun b!4687646 () Bool)

(declare-fun e!2924464 () Bool)

(assert (=> b!4687646 (= e!2924463 e!2924464)))

(declare-fun res!1976827 () Bool)

(assert (=> b!4687646 (=> (not res!1976827) (not e!2924464))))

(assert (=> b!4687646 (= res!1976827 (not (containsKey!3027 (t!359673 newBucket!218) (_1!30179 (h!58618 newBucket!218)))))))

(declare-fun b!4687647 () Bool)

(assert (=> b!4687647 (= e!2924464 (noDuplicateKeys!1844 (t!359673 newBucket!218)))))

(assert (= (and d!1489608 (not res!1976826)) b!4687646))

(assert (= (and b!4687646 res!1976827) b!4687647))

(declare-fun m!5587731 () Bool)

(assert (=> b!4687646 m!5587731))

(declare-fun m!5587733 () Bool)

(assert (=> b!4687647 m!5587733))

(assert (=> b!4687629 d!1489608))

(declare-fun b!4687736 () Bool)

(assert (=> b!4687736 true))

(declare-fun bs!1084938 () Bool)

(declare-fun b!4687734 () Bool)

(assert (= bs!1084938 (and b!4687734 b!4687736)))

(declare-fun lambda!206511 () Int)

(declare-fun lambda!206510 () Int)

(assert (=> bs!1084938 (= lambda!206511 lambda!206510)))

(assert (=> b!4687734 true))

(declare-fun lambda!206512 () Int)

(declare-fun lt!1847092 () ListMap!4941)

(assert (=> bs!1084938 (= (= lt!1847092 lt!1846924) (= lambda!206512 lambda!206510))))

(assert (=> b!4687734 (= (= lt!1847092 lt!1846924) (= lambda!206512 lambda!206511))))

(assert (=> b!4687734 true))

(declare-fun bs!1084940 () Bool)

(declare-fun d!1489610 () Bool)

(assert (= bs!1084940 (and d!1489610 b!4687736)))

(declare-fun lt!1847101 () ListMap!4941)

(declare-fun lambda!206514 () Int)

(assert (=> bs!1084940 (= (= lt!1847101 lt!1846924) (= lambda!206514 lambda!206510))))

(declare-fun bs!1084941 () Bool)

(assert (= bs!1084941 (and d!1489610 b!4687734)))

(assert (=> bs!1084941 (= (= lt!1847101 lt!1846924) (= lambda!206514 lambda!206511))))

(assert (=> bs!1084941 (= (= lt!1847101 lt!1847092) (= lambda!206514 lambda!206512))))

(assert (=> d!1489610 true))

(declare-fun e!2924522 () ListMap!4941)

(assert (=> b!4687734 (= e!2924522 lt!1847092)))

(declare-fun lt!1847099 () ListMap!4941)

(assert (=> b!4687734 (= lt!1847099 (+!2128 lt!1846924 (h!58618 (_2!30180 (h!58619 (toList!5578 lm!2023))))))))

(assert (=> b!4687734 (= lt!1847092 (addToMapMapFromBucket!1276 (t!359673 (_2!30180 (h!58619 (toList!5578 lm!2023)))) (+!2128 lt!1846924 (h!58618 (_2!30180 (h!58619 (toList!5578 lm!2023)))))))))

(declare-fun lt!1847088 () Unit!123525)

(declare-fun call!327577 () Unit!123525)

(assert (=> b!4687734 (= lt!1847088 call!327577)))

(declare-fun forall!11305 (List!52505 Int) Bool)

(assert (=> b!4687734 (forall!11305 (toList!5577 lt!1846924) lambda!206511)))

(declare-fun lt!1847091 () Unit!123525)

(assert (=> b!4687734 (= lt!1847091 lt!1847088)))

(assert (=> b!4687734 (forall!11305 (toList!5577 lt!1847099) lambda!206512)))

(declare-fun lt!1847090 () Unit!123525)

(declare-fun Unit!123540 () Unit!123525)

(assert (=> b!4687734 (= lt!1847090 Unit!123540)))

(assert (=> b!4687734 (forall!11305 (t!359673 (_2!30180 (h!58619 (toList!5578 lm!2023)))) lambda!206512)))

(declare-fun lt!1847096 () Unit!123525)

(declare-fun Unit!123541 () Unit!123525)

(assert (=> b!4687734 (= lt!1847096 Unit!123541)))

(declare-fun lt!1847085 () Unit!123525)

(declare-fun Unit!123542 () Unit!123525)

(assert (=> b!4687734 (= lt!1847085 Unit!123542)))

(declare-fun lt!1847102 () Unit!123525)

(declare-fun forallContained!3412 (List!52505 Int tuple2!53770) Unit!123525)

(assert (=> b!4687734 (= lt!1847102 (forallContained!3412 (toList!5577 lt!1847099) lambda!206512 (h!58618 (_2!30180 (h!58619 (toList!5578 lm!2023))))))))

(assert (=> b!4687734 (contains!15562 lt!1847099 (_1!30179 (h!58618 (_2!30180 (h!58619 (toList!5578 lm!2023))))))))

(declare-fun lt!1847100 () Unit!123525)

(declare-fun Unit!123543 () Unit!123525)

(assert (=> b!4687734 (= lt!1847100 Unit!123543)))

(assert (=> b!4687734 (contains!15562 lt!1847092 (_1!30179 (h!58618 (_2!30180 (h!58619 (toList!5578 lm!2023))))))))

(declare-fun lt!1847103 () Unit!123525)

(declare-fun Unit!123544 () Unit!123525)

(assert (=> b!4687734 (= lt!1847103 Unit!123544)))

(declare-fun call!327576 () Bool)

(assert (=> b!4687734 call!327576))

(declare-fun lt!1847094 () Unit!123525)

(declare-fun Unit!123545 () Unit!123525)

(assert (=> b!4687734 (= lt!1847094 Unit!123545)))

(declare-fun call!327578 () Bool)

(assert (=> b!4687734 call!327578))

(declare-fun lt!1847097 () Unit!123525)

(declare-fun Unit!123546 () Unit!123525)

(assert (=> b!4687734 (= lt!1847097 Unit!123546)))

(declare-fun lt!1847089 () Unit!123525)

(declare-fun Unit!123547 () Unit!123525)

(assert (=> b!4687734 (= lt!1847089 Unit!123547)))

(declare-fun lt!1847083 () Unit!123525)

(declare-fun addForallContainsKeyThenBeforeAdding!689 (ListMap!4941 ListMap!4941 K!13760 V!14006) Unit!123525)

(assert (=> b!4687734 (= lt!1847083 (addForallContainsKeyThenBeforeAdding!689 lt!1846924 lt!1847092 (_1!30179 (h!58618 (_2!30180 (h!58619 (toList!5578 lm!2023))))) (_2!30179 (h!58618 (_2!30180 (h!58619 (toList!5578 lm!2023)))))))))

(assert (=> b!4687734 (forall!11305 (toList!5577 lt!1846924) lambda!206512)))

(declare-fun lt!1847087 () Unit!123525)

(assert (=> b!4687734 (= lt!1847087 lt!1847083)))

(assert (=> b!4687734 (forall!11305 (toList!5577 lt!1846924) lambda!206512)))

(declare-fun lt!1847093 () Unit!123525)

(declare-fun Unit!123548 () Unit!123525)

(assert (=> b!4687734 (= lt!1847093 Unit!123548)))

(declare-fun res!1976873 () Bool)

(assert (=> b!4687734 (= res!1976873 (forall!11305 (_2!30180 (h!58619 (toList!5578 lm!2023))) lambda!206512))))

(declare-fun e!2924521 () Bool)

(assert (=> b!4687734 (=> (not res!1976873) (not e!2924521))))

(assert (=> b!4687734 e!2924521))

(declare-fun lt!1847098 () Unit!123525)

(declare-fun Unit!123549 () Unit!123525)

(assert (=> b!4687734 (= lt!1847098 Unit!123549)))

(declare-fun bm!327571 () Bool)

(declare-fun c!801534 () Bool)

(assert (=> bm!327571 (= call!327578 (forall!11305 (ite c!801534 (toList!5577 lt!1846924) (toList!5577 lt!1847099)) (ite c!801534 lambda!206510 lambda!206512)))))

(declare-fun b!4687735 () Bool)

(declare-fun res!1976872 () Bool)

(declare-fun e!2924520 () Bool)

(assert (=> b!4687735 (=> (not res!1976872) (not e!2924520))))

(assert (=> b!4687735 (= res!1976872 (forall!11305 (toList!5577 lt!1846924) lambda!206514))))

(assert (=> b!4687736 (= e!2924522 lt!1846924)))

(declare-fun lt!1847084 () Unit!123525)

(assert (=> b!4687736 (= lt!1847084 call!327577)))

(assert (=> b!4687736 call!327576))

(declare-fun lt!1847086 () Unit!123525)

(assert (=> b!4687736 (= lt!1847086 lt!1847084)))

(assert (=> b!4687736 call!327578))

(declare-fun lt!1847095 () Unit!123525)

(declare-fun Unit!123550 () Unit!123525)

(assert (=> b!4687736 (= lt!1847095 Unit!123550)))

(assert (=> d!1489610 e!2924520))

(declare-fun res!1976874 () Bool)

(assert (=> d!1489610 (=> (not res!1976874) (not e!2924520))))

(assert (=> d!1489610 (= res!1976874 (forall!11305 (_2!30180 (h!58619 (toList!5578 lm!2023))) lambda!206514))))

(assert (=> d!1489610 (= lt!1847101 e!2924522)))

(assert (=> d!1489610 (= c!801534 ((_ is Nil!52381) (_2!30180 (h!58619 (toList!5578 lm!2023)))))))

(assert (=> d!1489610 (noDuplicateKeys!1844 (_2!30180 (h!58619 (toList!5578 lm!2023))))))

(assert (=> d!1489610 (= (addToMapMapFromBucket!1276 (_2!30180 (h!58619 (toList!5578 lm!2023))) lt!1846924) lt!1847101)))

(declare-fun b!4687737 () Bool)

(assert (=> b!4687737 (= e!2924521 (forall!11305 (toList!5577 lt!1846924) lambda!206512))))

(declare-fun b!4687738 () Bool)

(declare-fun invariantList!1402 (List!52505) Bool)

(assert (=> b!4687738 (= e!2924520 (invariantList!1402 (toList!5577 lt!1847101)))))

(declare-fun bm!327572 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!690 (ListMap!4941) Unit!123525)

(assert (=> bm!327572 (= call!327577 (lemmaContainsAllItsOwnKeys!690 lt!1846924))))

(declare-fun bm!327573 () Bool)

(assert (=> bm!327573 (= call!327576 (forall!11305 (ite c!801534 (toList!5577 lt!1846924) (_2!30180 (h!58619 (toList!5578 lm!2023)))) (ite c!801534 lambda!206510 lambda!206512)))))

(assert (= (and d!1489610 c!801534) b!4687736))

(assert (= (and d!1489610 (not c!801534)) b!4687734))

(assert (= (and b!4687734 res!1976873) b!4687737))

(assert (= (or b!4687736 b!4687734) bm!327572))

(assert (= (or b!4687736 b!4687734) bm!327571))

(assert (= (or b!4687736 b!4687734) bm!327573))

(assert (= (and d!1489610 res!1976874) b!4687735))

(assert (= (and b!4687735 res!1976872) b!4687738))

(declare-fun m!5587847 () Bool)

(assert (=> bm!327573 m!5587847))

(declare-fun m!5587849 () Bool)

(assert (=> b!4687735 m!5587849))

(declare-fun m!5587851 () Bool)

(assert (=> b!4687737 m!5587851))

(declare-fun m!5587853 () Bool)

(assert (=> b!4687738 m!5587853))

(assert (=> b!4687734 m!5587851))

(declare-fun m!5587855 () Bool)

(assert (=> b!4687734 m!5587855))

(declare-fun m!5587857 () Bool)

(assert (=> b!4687734 m!5587857))

(declare-fun m!5587859 () Bool)

(assert (=> b!4687734 m!5587859))

(assert (=> b!4687734 m!5587851))

(declare-fun m!5587861 () Bool)

(assert (=> b!4687734 m!5587861))

(declare-fun m!5587863 () Bool)

(assert (=> b!4687734 m!5587863))

(declare-fun m!5587865 () Bool)

(assert (=> b!4687734 m!5587865))

(assert (=> b!4687734 m!5587865))

(declare-fun m!5587867 () Bool)

(assert (=> b!4687734 m!5587867))

(declare-fun m!5587869 () Bool)

(assert (=> b!4687734 m!5587869))

(declare-fun m!5587871 () Bool)

(assert (=> b!4687734 m!5587871))

(declare-fun m!5587873 () Bool)

(assert (=> b!4687734 m!5587873))

(declare-fun m!5587875 () Bool)

(assert (=> bm!327572 m!5587875))

(declare-fun m!5587877 () Bool)

(assert (=> d!1489610 m!5587877))

(declare-fun m!5587879 () Bool)

(assert (=> d!1489610 m!5587879))

(declare-fun m!5587881 () Bool)

(assert (=> bm!327571 m!5587881))

(assert (=> b!4687639 d!1489610))

(declare-fun bs!1084952 () Bool)

(declare-fun d!1489640 () Bool)

(assert (= bs!1084952 (and d!1489640 start!473936)))

(declare-fun lambda!206523 () Int)

(assert (=> bs!1084952 (= lambda!206523 lambda!206447)))

(declare-fun lt!1847133 () ListMap!4941)

(assert (=> d!1489640 (invariantList!1402 (toList!5577 lt!1847133))))

(declare-fun e!2924531 () ListMap!4941)

(assert (=> d!1489640 (= lt!1847133 e!2924531)))

(declare-fun c!801541 () Bool)

(assert (=> d!1489640 (= c!801541 ((_ is Cons!52382) (t!359674 (toList!5578 lm!2023))))))

(assert (=> d!1489640 (forall!11303 (t!359674 (toList!5578 lm!2023)) lambda!206523)))

(assert (=> d!1489640 (= (extractMap!1870 (t!359674 (toList!5578 lm!2023))) lt!1847133)))

(declare-fun b!4687756 () Bool)

(assert (=> b!4687756 (= e!2924531 (addToMapMapFromBucket!1276 (_2!30180 (h!58619 (t!359674 (toList!5578 lm!2023)))) (extractMap!1870 (t!359674 (t!359674 (toList!5578 lm!2023))))))))

(declare-fun b!4687757 () Bool)

(assert (=> b!4687757 (= e!2924531 (ListMap!4942 Nil!52381))))

(assert (= (and d!1489640 c!801541) b!4687756))

(assert (= (and d!1489640 (not c!801541)) b!4687757))

(declare-fun m!5587891 () Bool)

(assert (=> d!1489640 m!5587891))

(declare-fun m!5587893 () Bool)

(assert (=> d!1489640 m!5587893))

(declare-fun m!5587895 () Bool)

(assert (=> b!4687756 m!5587895))

(assert (=> b!4687756 m!5587895))

(declare-fun m!5587897 () Bool)

(assert (=> b!4687756 m!5587897))

(assert (=> b!4687639 d!1489640))

(declare-fun d!1489644 () Bool)

(declare-fun tail!8564 (List!52506) List!52506)

(assert (=> d!1489644 (= (tail!8563 lm!2023) (ListLongMap!4108 (tail!8564 (toList!5578 lm!2023))))))

(declare-fun bs!1084958 () Bool)

(assert (= bs!1084958 d!1489644))

(declare-fun m!5587899 () Bool)

(assert (=> bs!1084958 m!5587899))

(assert (=> b!4687639 d!1489644))

(declare-fun d!1489646 () Bool)

(assert (=> d!1489646 (= (head!9952 (toList!5578 lm!2023)) (h!58619 (toList!5578 lm!2023)))))

(assert (=> b!4687641 d!1489646))

(declare-fun bs!1084962 () Bool)

(declare-fun d!1489648 () Bool)

(assert (= bs!1084962 (and d!1489648 start!473936)))

(declare-fun lambda!206528 () Int)

(assert (=> bs!1084962 (not (= lambda!206528 lambda!206447))))

(declare-fun bs!1084964 () Bool)

(assert (= bs!1084964 (and d!1489648 d!1489640)))

(assert (=> bs!1084964 (not (= lambda!206528 lambda!206523))))

(assert (=> d!1489648 true))

(assert (=> d!1489648 (= (allKeysSameHashInMap!1758 lm!2023 hashF!1323) (forall!11303 (toList!5578 lm!2023) lambda!206528))))

(declare-fun bs!1084967 () Bool)

(assert (= bs!1084967 d!1489648))

(declare-fun m!5587931 () Bool)

(assert (=> bs!1084967 m!5587931))

(assert (=> b!4687630 d!1489648))

(declare-fun d!1489652 () Bool)

(declare-fun hash!4048 (Hashable!6213 K!13760) (_ BitVec 64))

(assert (=> d!1489652 (= (hash!4047 hashF!1323 key!4653) (hash!4048 hashF!1323 key!4653))))

(declare-fun bs!1084971 () Bool)

(assert (= bs!1084971 d!1489652))

(declare-fun m!5587933 () Bool)

(assert (=> bs!1084971 m!5587933))

(assert (=> b!4687632 d!1489652))

(declare-fun b!4687775 () Bool)

(declare-fun e!2924539 () List!52505)

(assert (=> b!4687775 (= e!2924539 (Cons!52381 (h!58618 (t!359673 oldBucket!34)) (removePairForKey!1439 (t!359673 (t!359673 oldBucket!34)) key!4653)))))

(declare-fun d!1489654 () Bool)

(declare-fun lt!1847157 () List!52505)

(assert (=> d!1489654 (not (containsKey!3027 lt!1847157 key!4653))))

(declare-fun e!2924540 () List!52505)

(assert (=> d!1489654 (= lt!1847157 e!2924540)))

(declare-fun c!801547 () Bool)

(assert (=> d!1489654 (= c!801547 (and ((_ is Cons!52381) (t!359673 oldBucket!34)) (= (_1!30179 (h!58618 (t!359673 oldBucket!34))) key!4653)))))

(assert (=> d!1489654 (noDuplicateKeys!1844 (t!359673 oldBucket!34))))

(assert (=> d!1489654 (= (removePairForKey!1439 (t!359673 oldBucket!34) key!4653) lt!1847157)))

(declare-fun b!4687776 () Bool)

(assert (=> b!4687776 (= e!2924539 Nil!52381)))

(declare-fun b!4687774 () Bool)

(assert (=> b!4687774 (= e!2924540 e!2924539)))

(declare-fun c!801548 () Bool)

(assert (=> b!4687774 (= c!801548 ((_ is Cons!52381) (t!359673 oldBucket!34)))))

(declare-fun b!4687773 () Bool)

(assert (=> b!4687773 (= e!2924540 (t!359673 (t!359673 oldBucket!34)))))

(assert (= (and d!1489654 c!801547) b!4687773))

(assert (= (and d!1489654 (not c!801547)) b!4687774))

(assert (= (and b!4687774 c!801548) b!4687775))

(assert (= (and b!4687774 (not c!801548)) b!4687776))

(declare-fun m!5587935 () Bool)

(assert (=> b!4687775 m!5587935))

(declare-fun m!5587937 () Bool)

(assert (=> d!1489654 m!5587937))

(declare-fun m!5587939 () Bool)

(assert (=> d!1489654 m!5587939))

(assert (=> b!4687631 d!1489654))

(declare-fun b!4687812 () Bool)

(assert (=> b!4687812 false))

(declare-fun lt!1847198 () Unit!123525)

(declare-fun lt!1847201 () Unit!123525)

(assert (=> b!4687812 (= lt!1847198 lt!1847201)))

(declare-fun containsKey!3029 (List!52505 K!13760) Bool)

(assert (=> b!4687812 (containsKey!3029 (toList!5577 lt!1846912) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!841 (List!52505 K!13760) Unit!123525)

(assert (=> b!4687812 (= lt!1847201 (lemmaInGetKeysListThenContainsKey!841 (toList!5577 lt!1846912) key!4653))))

(declare-fun e!2924561 () Unit!123525)

(declare-fun Unit!123553 () Unit!123525)

(assert (=> b!4687812 (= e!2924561 Unit!123553)))

(declare-fun b!4687813 () Bool)

(declare-datatypes ((List!52508 0))(
  ( (Nil!52384) (Cons!52384 (h!58623 K!13760) (t!359678 List!52508)) )
))
(declare-fun e!2924564 () List!52508)

(declare-fun getKeysList!842 (List!52505) List!52508)

(assert (=> b!4687813 (= e!2924564 (getKeysList!842 (toList!5577 lt!1846912)))))

(declare-fun b!4687815 () Bool)

(declare-fun e!2924565 () Unit!123525)

(declare-fun lt!1847196 () Unit!123525)

(assert (=> b!4687815 (= e!2924565 lt!1847196)))

(declare-fun lt!1847199 () Unit!123525)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1655 (List!52505 K!13760) Unit!123525)

(assert (=> b!4687815 (= lt!1847199 (lemmaContainsKeyImpliesGetValueByKeyDefined!1655 (toList!5577 lt!1846912) key!4653))))

(declare-datatypes ((Option!12053 0))(
  ( (None!12052) (Some!12052 (v!46455 V!14006)) )
))
(declare-fun isDefined!9308 (Option!12053) Bool)

(declare-fun getValueByKey!1763 (List!52505 K!13760) Option!12053)

(assert (=> b!4687815 (isDefined!9308 (getValueByKey!1763 (toList!5577 lt!1846912) key!4653))))

(declare-fun lt!1847200 () Unit!123525)

(assert (=> b!4687815 (= lt!1847200 lt!1847199)))

(declare-fun lemmaInListThenGetKeysListContains!837 (List!52505 K!13760) Unit!123525)

(assert (=> b!4687815 (= lt!1847196 (lemmaInListThenGetKeysListContains!837 (toList!5577 lt!1846912) key!4653))))

(declare-fun call!327590 () Bool)

(assert (=> b!4687815 call!327590))

(declare-fun bm!327585 () Bool)

(declare-fun contains!15567 (List!52508 K!13760) Bool)

(assert (=> bm!327585 (= call!327590 (contains!15567 e!2924564 key!4653))))

(declare-fun c!801557 () Bool)

(declare-fun c!801558 () Bool)

(assert (=> bm!327585 (= c!801557 c!801558)))

(declare-fun b!4687816 () Bool)

(declare-fun e!2924567 () Bool)

(declare-fun e!2924566 () Bool)

(assert (=> b!4687816 (= e!2924567 e!2924566)))

(declare-fun res!1976897 () Bool)

(assert (=> b!4687816 (=> (not res!1976897) (not e!2924566))))

(assert (=> b!4687816 (= res!1976897 (isDefined!9308 (getValueByKey!1763 (toList!5577 lt!1846912) key!4653)))))

(declare-fun b!4687817 () Bool)

(declare-fun Unit!123562 () Unit!123525)

(assert (=> b!4687817 (= e!2924561 Unit!123562)))

(declare-fun b!4687818 () Bool)

(declare-fun e!2924568 () Bool)

(declare-fun keys!18695 (ListMap!4941) List!52508)

(assert (=> b!4687818 (= e!2924568 (not (contains!15567 (keys!18695 lt!1846912) key!4653)))))

(declare-fun b!4687819 () Bool)

(assert (=> b!4687819 (= e!2924565 e!2924561)))

(declare-fun c!801559 () Bool)

(assert (=> b!4687819 (= c!801559 call!327590)))

(declare-fun b!4687820 () Bool)

(assert (=> b!4687820 (= e!2924564 (keys!18695 lt!1846912))))

(declare-fun b!4687814 () Bool)

(assert (=> b!4687814 (= e!2924566 (contains!15567 (keys!18695 lt!1846912) key!4653))))

(declare-fun d!1489656 () Bool)

(assert (=> d!1489656 e!2924567))

(declare-fun res!1976894 () Bool)

(assert (=> d!1489656 (=> res!1976894 e!2924567)))

(assert (=> d!1489656 (= res!1976894 e!2924568)))

(declare-fun res!1976898 () Bool)

(assert (=> d!1489656 (=> (not res!1976898) (not e!2924568))))

(declare-fun lt!1847202 () Bool)

(assert (=> d!1489656 (= res!1976898 (not lt!1847202))))

(declare-fun lt!1847197 () Bool)

(assert (=> d!1489656 (= lt!1847202 lt!1847197)))

(declare-fun lt!1847203 () Unit!123525)

(assert (=> d!1489656 (= lt!1847203 e!2924565)))

(assert (=> d!1489656 (= c!801558 lt!1847197)))

(assert (=> d!1489656 (= lt!1847197 (containsKey!3029 (toList!5577 lt!1846912) key!4653))))

(assert (=> d!1489656 (= (contains!15562 lt!1846912 key!4653) lt!1847202)))

(assert (= (and d!1489656 c!801558) b!4687815))

(assert (= (and d!1489656 (not c!801558)) b!4687819))

(assert (= (and b!4687819 c!801559) b!4687812))

(assert (= (and b!4687819 (not c!801559)) b!4687817))

(assert (= (or b!4687815 b!4687819) bm!327585))

(assert (= (and bm!327585 c!801557) b!4687813))

(assert (= (and bm!327585 (not c!801557)) b!4687820))

(assert (= (and d!1489656 res!1976898) b!4687818))

(assert (= (and d!1489656 (not res!1976894)) b!4687816))

(assert (= (and b!4687816 res!1976897) b!4687814))

(declare-fun m!5588025 () Bool)

(assert (=> b!4687820 m!5588025))

(declare-fun m!5588027 () Bool)

(assert (=> b!4687813 m!5588027))

(assert (=> b!4687814 m!5588025))

(assert (=> b!4687814 m!5588025))

(declare-fun m!5588029 () Bool)

(assert (=> b!4687814 m!5588029))

(declare-fun m!5588031 () Bool)

(assert (=> bm!327585 m!5588031))

(declare-fun m!5588033 () Bool)

(assert (=> b!4687816 m!5588033))

(assert (=> b!4687816 m!5588033))

(declare-fun m!5588035 () Bool)

(assert (=> b!4687816 m!5588035))

(declare-fun m!5588037 () Bool)

(assert (=> d!1489656 m!5588037))

(declare-fun m!5588039 () Bool)

(assert (=> b!4687815 m!5588039))

(assert (=> b!4687815 m!5588033))

(assert (=> b!4687815 m!5588033))

(assert (=> b!4687815 m!5588035))

(declare-fun m!5588041 () Bool)

(assert (=> b!4687815 m!5588041))

(assert (=> b!4687818 m!5588025))

(assert (=> b!4687818 m!5588025))

(assert (=> b!4687818 m!5588029))

(assert (=> b!4687812 m!5588037))

(declare-fun m!5588045 () Bool)

(assert (=> b!4687812 m!5588045))

(assert (=> b!4687624 d!1489656))

(declare-fun bs!1085032 () Bool)

(declare-fun d!1489674 () Bool)

(assert (= bs!1085032 (and d!1489674 start!473936)))

(declare-fun lambda!206540 () Int)

(assert (=> bs!1085032 (= lambda!206540 lambda!206447)))

(declare-fun bs!1085033 () Bool)

(assert (= bs!1085033 (and d!1489674 d!1489640)))

(assert (=> bs!1085033 (= lambda!206540 lambda!206523)))

(declare-fun bs!1085034 () Bool)

(assert (= bs!1085034 (and d!1489674 d!1489648)))

(assert (=> bs!1085034 (not (= lambda!206540 lambda!206528))))

(declare-fun lt!1847207 () ListMap!4941)

(assert (=> d!1489674 (invariantList!1402 (toList!5577 lt!1847207))))

(declare-fun e!2924570 () ListMap!4941)

(assert (=> d!1489674 (= lt!1847207 e!2924570)))

(declare-fun c!801560 () Bool)

(assert (=> d!1489674 (= c!801560 ((_ is Cons!52382) (toList!5578 lm!2023)))))

(assert (=> d!1489674 (forall!11303 (toList!5578 lm!2023) lambda!206540)))

(assert (=> d!1489674 (= (extractMap!1870 (toList!5578 lm!2023)) lt!1847207)))

(declare-fun b!4687822 () Bool)

(assert (=> b!4687822 (= e!2924570 (addToMapMapFromBucket!1276 (_2!30180 (h!58619 (toList!5578 lm!2023))) (extractMap!1870 (t!359674 (toList!5578 lm!2023)))))))

(declare-fun b!4687823 () Bool)

(assert (=> b!4687823 (= e!2924570 (ListMap!4942 Nil!52381))))

(assert (= (and d!1489674 c!801560) b!4687822))

(assert (= (and d!1489674 (not c!801560)) b!4687823))

(declare-fun m!5588049 () Bool)

(assert (=> d!1489674 m!5588049))

(declare-fun m!5588051 () Bool)

(assert (=> d!1489674 m!5588051))

(assert (=> b!4687822 m!5587651))

(assert (=> b!4687822 m!5587651))

(declare-fun m!5588053 () Bool)

(assert (=> b!4687822 m!5588053))

(assert (=> b!4687624 d!1489674))

(declare-fun b!4687826 () Bool)

(declare-fun e!2924571 () List!52505)

(assert (=> b!4687826 (= e!2924571 (Cons!52381 (h!58618 oldBucket!34) (removePairForKey!1439 (t!359673 oldBucket!34) key!4653)))))

(declare-fun d!1489678 () Bool)

(declare-fun lt!1847208 () List!52505)

(assert (=> d!1489678 (not (containsKey!3027 lt!1847208 key!4653))))

(declare-fun e!2924572 () List!52505)

(assert (=> d!1489678 (= lt!1847208 e!2924572)))

(declare-fun c!801561 () Bool)

(assert (=> d!1489678 (= c!801561 (and ((_ is Cons!52381) oldBucket!34) (= (_1!30179 (h!58618 oldBucket!34)) key!4653)))))

(assert (=> d!1489678 (noDuplicateKeys!1844 oldBucket!34)))

(assert (=> d!1489678 (= (removePairForKey!1439 oldBucket!34 key!4653) lt!1847208)))

(declare-fun b!4687827 () Bool)

(assert (=> b!4687827 (= e!2924571 Nil!52381)))

(declare-fun b!4687825 () Bool)

(assert (=> b!4687825 (= e!2924572 e!2924571)))

(declare-fun c!801562 () Bool)

(assert (=> b!4687825 (= c!801562 ((_ is Cons!52381) oldBucket!34))))

(declare-fun b!4687824 () Bool)

(assert (=> b!4687824 (= e!2924572 (t!359673 oldBucket!34))))

(assert (= (and d!1489678 c!801561) b!4687824))

(assert (= (and d!1489678 (not c!801561)) b!4687825))

(assert (= (and b!4687825 c!801562) b!4687826))

(assert (= (and b!4687825 (not c!801562)) b!4687827))

(assert (=> b!4687826 m!5587693))

(declare-fun m!5588055 () Bool)

(assert (=> d!1489678 m!5588055))

(assert (=> d!1489678 m!5587657))

(assert (=> b!4687634 d!1489678))

(declare-fun d!1489680 () Bool)

(declare-fun res!1976900 () Bool)

(declare-fun e!2924573 () Bool)

(assert (=> d!1489680 (=> res!1976900 e!2924573)))

(assert (=> d!1489680 (= res!1976900 (not ((_ is Cons!52381) oldBucket!34)))))

(assert (=> d!1489680 (= (noDuplicateKeys!1844 oldBucket!34) e!2924573)))

(declare-fun b!4687828 () Bool)

(declare-fun e!2924574 () Bool)

(assert (=> b!4687828 (= e!2924573 e!2924574)))

(declare-fun res!1976901 () Bool)

(assert (=> b!4687828 (=> (not res!1976901) (not e!2924574))))

(assert (=> b!4687828 (= res!1976901 (not (containsKey!3027 (t!359673 oldBucket!34) (_1!30179 (h!58618 oldBucket!34)))))))

(declare-fun b!4687829 () Bool)

(assert (=> b!4687829 (= e!2924574 (noDuplicateKeys!1844 (t!359673 oldBucket!34)))))

(assert (= (and d!1489680 (not res!1976900)) b!4687828))

(assert (= (and b!4687828 res!1976901) b!4687829))

(declare-fun m!5588057 () Bool)

(assert (=> b!4687828 m!5588057))

(assert (=> b!4687829 m!5587939))

(assert (=> b!4687636 d!1489680))

(declare-fun b!4687832 () Bool)

(declare-fun e!2924575 () List!52505)

(assert (=> b!4687832 (= e!2924575 (Cons!52381 (h!58618 lt!1846926) (removePairForKey!1439 (t!359673 lt!1846926) key!4653)))))

(declare-fun d!1489682 () Bool)

(declare-fun lt!1847209 () List!52505)

(assert (=> d!1489682 (not (containsKey!3027 lt!1847209 key!4653))))

(declare-fun e!2924576 () List!52505)

(assert (=> d!1489682 (= lt!1847209 e!2924576)))

(declare-fun c!801563 () Bool)

(assert (=> d!1489682 (= c!801563 (and ((_ is Cons!52381) lt!1846926) (= (_1!30179 (h!58618 lt!1846926)) key!4653)))))

(assert (=> d!1489682 (noDuplicateKeys!1844 lt!1846926)))

(assert (=> d!1489682 (= (removePairForKey!1439 lt!1846926 key!4653) lt!1847209)))

(declare-fun b!4687833 () Bool)

(assert (=> b!4687833 (= e!2924575 Nil!52381)))

(declare-fun b!4687831 () Bool)

(assert (=> b!4687831 (= e!2924576 e!2924575)))

(declare-fun c!801564 () Bool)

(assert (=> b!4687831 (= c!801564 ((_ is Cons!52381) lt!1846926))))

(declare-fun b!4687830 () Bool)

(assert (=> b!4687830 (= e!2924576 (t!359673 lt!1846926))))

(assert (= (and d!1489682 c!801563) b!4687830))

(assert (= (and d!1489682 (not c!801563)) b!4687831))

(assert (= (and b!4687831 c!801564) b!4687832))

(assert (= (and b!4687831 (not c!801564)) b!4687833))

(declare-fun m!5588059 () Bool)

(assert (=> b!4687832 m!5588059))

(declare-fun m!5588061 () Bool)

(assert (=> d!1489682 m!5588061))

(declare-fun m!5588063 () Bool)

(assert (=> d!1489682 m!5588063))

(assert (=> b!4687625 d!1489682))

(declare-fun d!1489684 () Bool)

(assert (=> d!1489684 (= (tail!8562 newBucket!218) (t!359673 newBucket!218))))

(assert (=> b!4687625 d!1489684))

(declare-fun d!1489686 () Bool)

(assert (=> d!1489686 (= (tail!8562 oldBucket!34) (t!359673 oldBucket!34))))

(assert (=> b!4687625 d!1489686))

(declare-fun d!1489688 () Bool)

(declare-fun lt!1847215 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9148 (List!52506) (InoxSet tuple2!53772))

(assert (=> d!1489688 (= lt!1847215 (select (content!9148 (toList!5578 lm!2023)) lt!1846927))))

(declare-fun e!2924582 () Bool)

(assert (=> d!1489688 (= lt!1847215 e!2924582)))

(declare-fun res!1976907 () Bool)

(assert (=> d!1489688 (=> (not res!1976907) (not e!2924582))))

(assert (=> d!1489688 (= res!1976907 ((_ is Cons!52382) (toList!5578 lm!2023)))))

(assert (=> d!1489688 (= (contains!15563 (toList!5578 lm!2023) lt!1846927) lt!1847215)))

(declare-fun b!4687838 () Bool)

(declare-fun e!2924581 () Bool)

(assert (=> b!4687838 (= e!2924582 e!2924581)))

(declare-fun res!1976906 () Bool)

(assert (=> b!4687838 (=> res!1976906 e!2924581)))

(assert (=> b!4687838 (= res!1976906 (= (h!58619 (toList!5578 lm!2023)) lt!1846927))))

(declare-fun b!4687839 () Bool)

(assert (=> b!4687839 (= e!2924581 (contains!15563 (t!359674 (toList!5578 lm!2023)) lt!1846927))))

(assert (= (and d!1489688 res!1976907) b!4687838))

(assert (= (and b!4687838 (not res!1976906)) b!4687839))

(declare-fun m!5588071 () Bool)

(assert (=> d!1489688 m!5588071))

(declare-fun m!5588073 () Bool)

(assert (=> d!1489688 m!5588073))

(declare-fun m!5588075 () Bool)

(assert (=> b!4687839 m!5588075))

(assert (=> b!4687635 d!1489688))

(declare-fun d!1489692 () Bool)

(declare-fun e!2924602 () Bool)

(assert (=> d!1489692 e!2924602))

(declare-fun res!1976922 () Bool)

(assert (=> d!1489692 (=> res!1976922 e!2924602)))

(declare-fun lt!1847229 () Bool)

(assert (=> d!1489692 (= res!1976922 (not lt!1847229))))

(declare-fun lt!1847228 () Bool)

(assert (=> d!1489692 (= lt!1847229 lt!1847228)))

(declare-fun lt!1847230 () Unit!123525)

(declare-fun e!2924603 () Unit!123525)

(assert (=> d!1489692 (= lt!1847230 e!2924603)))

(declare-fun c!801573 () Bool)

(assert (=> d!1489692 (= c!801573 lt!1847228)))

(declare-fun containsKey!3030 (List!52506 (_ BitVec 64)) Bool)

(assert (=> d!1489692 (= lt!1847228 (containsKey!3030 (toList!5578 lm!2023) lt!1846920))))

(assert (=> d!1489692 (= (contains!15564 lm!2023 lt!1846920) lt!1847229)))

(declare-fun b!4687870 () Bool)

(declare-fun lt!1847227 () Unit!123525)

(assert (=> b!4687870 (= e!2924603 lt!1847227)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1656 (List!52506 (_ BitVec 64)) Unit!123525)

(assert (=> b!4687870 (= lt!1847227 (lemmaContainsKeyImpliesGetValueByKeyDefined!1656 (toList!5578 lm!2023) lt!1846920))))

(declare-datatypes ((Option!12054 0))(
  ( (None!12053) (Some!12053 (v!46456 List!52505)) )
))
(declare-fun isDefined!9309 (Option!12054) Bool)

(declare-fun getValueByKey!1764 (List!52506 (_ BitVec 64)) Option!12054)

(assert (=> b!4687870 (isDefined!9309 (getValueByKey!1764 (toList!5578 lm!2023) lt!1846920))))

(declare-fun b!4687871 () Bool)

(declare-fun Unit!123573 () Unit!123525)

(assert (=> b!4687871 (= e!2924603 Unit!123573)))

(declare-fun b!4687872 () Bool)

(assert (=> b!4687872 (= e!2924602 (isDefined!9309 (getValueByKey!1764 (toList!5578 lm!2023) lt!1846920)))))

(assert (= (and d!1489692 c!801573) b!4687870))

(assert (= (and d!1489692 (not c!801573)) b!4687871))

(assert (= (and d!1489692 (not res!1976922)) b!4687872))

(declare-fun m!5588089 () Bool)

(assert (=> d!1489692 m!5588089))

(declare-fun m!5588093 () Bool)

(assert (=> b!4687870 m!5588093))

(declare-fun m!5588095 () Bool)

(assert (=> b!4687870 m!5588095))

(assert (=> b!4687870 m!5588095))

(declare-fun m!5588097 () Bool)

(assert (=> b!4687870 m!5588097))

(assert (=> b!4687872 m!5588095))

(assert (=> b!4687872 m!5588095))

(assert (=> b!4687872 m!5588097))

(assert (=> b!4687635 d!1489692))

(declare-fun d!1489696 () Bool)

(declare-fun isEmpty!29085 (Option!12051) Bool)

(assert (=> d!1489696 (= (isDefined!9306 (getPair!448 lt!1846930 key!4653)) (not (isEmpty!29085 (getPair!448 lt!1846930 key!4653))))))

(declare-fun bs!1085040 () Bool)

(assert (= bs!1085040 d!1489696))

(assert (=> bs!1085040 m!5587713))

(declare-fun m!5588099 () Bool)

(assert (=> bs!1085040 m!5588099))

(assert (=> b!4687635 d!1489696))

(declare-fun bs!1085045 () Bool)

(declare-fun d!1489698 () Bool)

(assert (= bs!1085045 (and d!1489698 start!473936)))

(declare-fun lambda!206550 () Int)

(assert (=> bs!1085045 (= lambda!206550 lambda!206447)))

(declare-fun bs!1085046 () Bool)

(assert (= bs!1085046 (and d!1489698 d!1489640)))

(assert (=> bs!1085046 (= lambda!206550 lambda!206523)))

(declare-fun bs!1085047 () Bool)

(assert (= bs!1085047 (and d!1489698 d!1489648)))

(assert (=> bs!1085047 (not (= lambda!206550 lambda!206528))))

(declare-fun bs!1085048 () Bool)

(assert (= bs!1085048 (and d!1489698 d!1489674)))

(assert (=> bs!1085048 (= lambda!206550 lambda!206540)))

(declare-fun b!4687908 () Bool)

(declare-fun e!2924629 () Bool)

(declare-fun lt!1847275 () List!52505)

(declare-fun lt!1847270 () (_ BitVec 64))

(assert (=> b!4687908 (= e!2924629 (= (getValueByKey!1764 (toList!5578 lm!2023) lt!1847270) (Some!12053 lt!1847275)))))

(declare-fun e!2924628 () Bool)

(declare-fun b!4687907 () Bool)

(assert (=> b!4687907 (= e!2924628 (isDefined!9306 (getPair!448 (apply!12327 lm!2023 (hash!4047 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1847272 () Unit!123525)

(assert (=> b!4687907 (= lt!1847272 (forallContained!3410 (toList!5578 lm!2023) lambda!206550 (tuple2!53773 (hash!4047 hashF!1323 key!4653) (apply!12327 lm!2023 (hash!4047 hashF!1323 key!4653)))))))

(declare-fun lt!1847269 () Unit!123525)

(declare-fun lt!1847274 () Unit!123525)

(assert (=> b!4687907 (= lt!1847269 lt!1847274)))

(assert (=> b!4687907 (contains!15563 (toList!5578 lm!2023) (tuple2!53773 lt!1847270 lt!1847275))))

(assert (=> b!4687907 (= lt!1847274 (lemmaGetValueImpliesTupleContained!253 lm!2023 lt!1847270 lt!1847275))))

(assert (=> b!4687907 e!2924629))

(declare-fun res!1976950 () Bool)

(assert (=> b!4687907 (=> (not res!1976950) (not e!2924629))))

(assert (=> b!4687907 (= res!1976950 (contains!15564 lm!2023 lt!1847270))))

(assert (=> b!4687907 (= lt!1847275 (apply!12327 lm!2023 (hash!4047 hashF!1323 key!4653)))))

(assert (=> b!4687907 (= lt!1847270 (hash!4047 hashF!1323 key!4653))))

(declare-fun lt!1847273 () Unit!123525)

(declare-fun lt!1847271 () Unit!123525)

(assert (=> b!4687907 (= lt!1847273 lt!1847271)))

(assert (=> b!4687907 (contains!15564 lm!2023 (hash!4047 hashF!1323 key!4653))))

(assert (=> b!4687907 (= lt!1847271 (lemmaInGenMapThenLongMapContainsHash!654 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489698 e!2924628))

(declare-fun res!1976948 () Bool)

(assert (=> d!1489698 (=> (not res!1976948) (not e!2924628))))

(assert (=> d!1489698 (= res!1976948 (forall!11303 (toList!5578 lm!2023) lambda!206550))))

(declare-fun lt!1847268 () Unit!123525)

(declare-fun choose!32524 (ListLongMap!4107 K!13760 Hashable!6213) Unit!123525)

(assert (=> d!1489698 (= lt!1847268 (choose!32524 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489698 (forall!11303 (toList!5578 lm!2023) lambda!206550)))

(assert (=> d!1489698 (= (lemmaInGenMapThenGetPairDefined!244 lm!2023 key!4653 hashF!1323) lt!1847268)))

(declare-fun b!4687905 () Bool)

(declare-fun res!1976949 () Bool)

(assert (=> b!4687905 (=> (not res!1976949) (not e!2924628))))

(assert (=> b!4687905 (= res!1976949 (allKeysSameHashInMap!1758 lm!2023 hashF!1323))))

(declare-fun b!4687906 () Bool)

(declare-fun res!1976951 () Bool)

(assert (=> b!4687906 (=> (not res!1976951) (not e!2924628))))

(assert (=> b!4687906 (= res!1976951 (contains!15562 (extractMap!1870 (toList!5578 lm!2023)) key!4653))))

(assert (= (and d!1489698 res!1976948) b!4687905))

(assert (= (and b!4687905 res!1976949) b!4687906))

(assert (= (and b!4687906 res!1976951) b!4687907))

(assert (= (and b!4687907 res!1976950) b!4687908))

(declare-fun m!5588127 () Bool)

(assert (=> d!1489698 m!5588127))

(declare-fun m!5588129 () Bool)

(assert (=> d!1489698 m!5588129))

(assert (=> d!1489698 m!5588127))

(assert (=> b!4687907 m!5587645))

(declare-fun m!5588131 () Bool)

(assert (=> b!4687907 m!5588131))

(declare-fun m!5588133 () Bool)

(assert (=> b!4687907 m!5588133))

(assert (=> b!4687907 m!5587645))

(declare-fun m!5588135 () Bool)

(assert (=> b!4687907 m!5588135))

(declare-fun m!5588137 () Bool)

(assert (=> b!4687907 m!5588137))

(declare-fun m!5588139 () Bool)

(assert (=> b!4687907 m!5588139))

(assert (=> b!4687907 m!5588135))

(declare-fun m!5588141 () Bool)

(assert (=> b!4687907 m!5588141))

(assert (=> b!4687907 m!5587645))

(declare-fun m!5588143 () Bool)

(assert (=> b!4687907 m!5588143))

(assert (=> b!4687907 m!5587705))

(assert (=> b!4687907 m!5588141))

(declare-fun m!5588145 () Bool)

(assert (=> b!4687907 m!5588145))

(declare-fun m!5588147 () Bool)

(assert (=> b!4687908 m!5588147))

(assert (=> b!4687906 m!5587699))

(assert (=> b!4687906 m!5587699))

(declare-fun m!5588149 () Bool)

(assert (=> b!4687906 m!5588149))

(assert (=> b!4687905 m!5587635))

(assert (=> b!4687635 d!1489698))

(declare-fun d!1489716 () Bool)

(assert (=> d!1489716 (containsKey!3027 oldBucket!34 key!4653)))

(declare-fun lt!1847278 () Unit!123525)

(declare-fun choose!32525 (List!52505 K!13760 Hashable!6213) Unit!123525)

(assert (=> d!1489716 (= lt!1847278 (choose!32525 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1489716 (noDuplicateKeys!1844 oldBucket!34)))

(assert (=> d!1489716 (= (lemmaGetPairDefinedThenContainsKey!196 oldBucket!34 key!4653 hashF!1323) lt!1847278)))

(declare-fun bs!1085049 () Bool)

(assert (= bs!1085049 d!1489716))

(assert (=> bs!1085049 m!5587717))

(declare-fun m!5588151 () Bool)

(assert (=> bs!1085049 m!5588151))

(assert (=> bs!1085049 m!5587657))

(assert (=> b!4687635 d!1489716))

(declare-fun d!1489718 () Bool)

(declare-fun res!1976956 () Bool)

(declare-fun e!2924634 () Bool)

(assert (=> d!1489718 (=> res!1976956 e!2924634)))

(assert (=> d!1489718 (= res!1976956 (and ((_ is Cons!52381) (t!359673 oldBucket!34)) (= (_1!30179 (h!58618 (t!359673 oldBucket!34))) key!4653)))))

(assert (=> d!1489718 (= (containsKey!3027 (t!359673 oldBucket!34) key!4653) e!2924634)))

(declare-fun b!4687913 () Bool)

(declare-fun e!2924635 () Bool)

(assert (=> b!4687913 (= e!2924634 e!2924635)))

(declare-fun res!1976957 () Bool)

(assert (=> b!4687913 (=> (not res!1976957) (not e!2924635))))

(assert (=> b!4687913 (= res!1976957 ((_ is Cons!52381) (t!359673 oldBucket!34)))))

(declare-fun b!4687914 () Bool)

(assert (=> b!4687914 (= e!2924635 (containsKey!3027 (t!359673 (t!359673 oldBucket!34)) key!4653))))

(assert (= (and d!1489718 (not res!1976956)) b!4687913))

(assert (= (and b!4687913 res!1976957) b!4687914))

(declare-fun m!5588153 () Bool)

(assert (=> b!4687914 m!5588153))

(assert (=> b!4687635 d!1489718))

(declare-fun d!1489720 () Bool)

(declare-fun res!1976958 () Bool)

(declare-fun e!2924636 () Bool)

(assert (=> d!1489720 (=> res!1976958 e!2924636)))

(assert (=> d!1489720 (= res!1976958 (and ((_ is Cons!52381) oldBucket!34) (= (_1!30179 (h!58618 oldBucket!34)) key!4653)))))

(assert (=> d!1489720 (= (containsKey!3027 oldBucket!34 key!4653) e!2924636)))

(declare-fun b!4687915 () Bool)

(declare-fun e!2924637 () Bool)

(assert (=> b!4687915 (= e!2924636 e!2924637)))

(declare-fun res!1976959 () Bool)

(assert (=> b!4687915 (=> (not res!1976959) (not e!2924637))))

(assert (=> b!4687915 (= res!1976959 ((_ is Cons!52381) oldBucket!34))))

(declare-fun b!4687916 () Bool)

(assert (=> b!4687916 (= e!2924637 (containsKey!3027 (t!359673 oldBucket!34) key!4653))))

(assert (= (and d!1489720 (not res!1976958)) b!4687915))

(assert (= (and b!4687915 res!1976959) b!4687916))

(assert (=> b!4687916 m!5587711))

(assert (=> b!4687635 d!1489720))

(declare-fun d!1489722 () Bool)

(assert (=> d!1489722 (contains!15563 (toList!5578 lm!2023) (tuple2!53773 lt!1846920 lt!1846930))))

(declare-fun lt!1847281 () Unit!123525)

(declare-fun choose!32526 (ListLongMap!4107 (_ BitVec 64) List!52505) Unit!123525)

(assert (=> d!1489722 (= lt!1847281 (choose!32526 lm!2023 lt!1846920 lt!1846930))))

(assert (=> d!1489722 (contains!15564 lm!2023 lt!1846920)))

(assert (=> d!1489722 (= (lemmaGetValueImpliesTupleContained!253 lm!2023 lt!1846920 lt!1846930) lt!1847281)))

(declare-fun bs!1085050 () Bool)

(assert (= bs!1085050 d!1489722))

(declare-fun m!5588155 () Bool)

(assert (=> bs!1085050 m!5588155))

(declare-fun m!5588157 () Bool)

(assert (=> bs!1085050 m!5588157))

(assert (=> bs!1085050 m!5587725))

(assert (=> b!4687635 d!1489722))

(declare-fun d!1489724 () Bool)

(declare-fun dynLambda!21705 (Int tuple2!53772) Bool)

(assert (=> d!1489724 (dynLambda!21705 lambda!206447 lt!1846927)))

(declare-fun lt!1847286 () Unit!123525)

(declare-fun choose!32527 (List!52506 Int tuple2!53772) Unit!123525)

(assert (=> d!1489724 (= lt!1847286 (choose!32527 (toList!5578 lm!2023) lambda!206447 lt!1846927))))

(declare-fun e!2924640 () Bool)

(assert (=> d!1489724 e!2924640))

(declare-fun res!1976962 () Bool)

(assert (=> d!1489724 (=> (not res!1976962) (not e!2924640))))

(assert (=> d!1489724 (= res!1976962 (forall!11303 (toList!5578 lm!2023) lambda!206447))))

(assert (=> d!1489724 (= (forallContained!3410 (toList!5578 lm!2023) lambda!206447 lt!1846927) lt!1847286)))

(declare-fun b!4687920 () Bool)

(assert (=> b!4687920 (= e!2924640 (contains!15563 (toList!5578 lm!2023) lt!1846927))))

(assert (= (and d!1489724 res!1976962) b!4687920))

(declare-fun b_lambda!176907 () Bool)

(assert (=> (not b_lambda!176907) (not d!1489724)))

(declare-fun m!5588159 () Bool)

(assert (=> d!1489724 m!5588159))

(declare-fun m!5588161 () Bool)

(assert (=> d!1489724 m!5588161))

(assert (=> d!1489724 m!5587727))

(assert (=> b!4687920 m!5587719))

(assert (=> b!4687635 d!1489724))

(declare-fun b!4687949 () Bool)

(declare-fun res!1976985 () Bool)

(declare-fun e!2924658 () Bool)

(assert (=> b!4687949 (=> (not res!1976985) (not e!2924658))))

(declare-fun lt!1847311 () Option!12051)

(declare-fun get!17470 (Option!12051) tuple2!53770)

(assert (=> b!4687949 (= res!1976985 (= (_1!30179 (get!17470 lt!1847311)) key!4653))))

(declare-fun b!4687950 () Bool)

(declare-fun e!2924657 () Option!12051)

(declare-fun e!2924661 () Option!12051)

(assert (=> b!4687950 (= e!2924657 e!2924661)))

(declare-fun c!801582 () Bool)

(assert (=> b!4687950 (= c!801582 ((_ is Cons!52381) lt!1846930))))

(declare-fun b!4687951 () Bool)

(declare-fun contains!15568 (List!52505 tuple2!53770) Bool)

(assert (=> b!4687951 (= e!2924658 (contains!15568 lt!1846930 (get!17470 lt!1847311)))))

(declare-fun b!4687952 () Bool)

(declare-fun e!2924659 () Bool)

(assert (=> b!4687952 (= e!2924659 (not (containsKey!3027 lt!1846930 key!4653)))))

(declare-fun d!1489726 () Bool)

(declare-fun e!2924660 () Bool)

(assert (=> d!1489726 e!2924660))

(declare-fun res!1976983 () Bool)

(assert (=> d!1489726 (=> res!1976983 e!2924660)))

(assert (=> d!1489726 (= res!1976983 e!2924659)))

(declare-fun res!1976984 () Bool)

(assert (=> d!1489726 (=> (not res!1976984) (not e!2924659))))

(assert (=> d!1489726 (= res!1976984 (isEmpty!29085 lt!1847311))))

(assert (=> d!1489726 (= lt!1847311 e!2924657)))

(declare-fun c!801581 () Bool)

(assert (=> d!1489726 (= c!801581 (and ((_ is Cons!52381) lt!1846930) (= (_1!30179 (h!58618 lt!1846930)) key!4653)))))

(assert (=> d!1489726 (noDuplicateKeys!1844 lt!1846930)))

(assert (=> d!1489726 (= (getPair!448 lt!1846930 key!4653) lt!1847311)))

(declare-fun b!4687953 () Bool)

(assert (=> b!4687953 (= e!2924661 None!12050)))

(declare-fun b!4687954 () Bool)

(assert (=> b!4687954 (= e!2924657 (Some!12050 (h!58618 lt!1846930)))))

(declare-fun b!4687955 () Bool)

(assert (=> b!4687955 (= e!2924660 e!2924658)))

(declare-fun res!1976986 () Bool)

(assert (=> b!4687955 (=> (not res!1976986) (not e!2924658))))

(assert (=> b!4687955 (= res!1976986 (isDefined!9306 lt!1847311))))

(declare-fun b!4687956 () Bool)

(assert (=> b!4687956 (= e!2924661 (getPair!448 (t!359673 lt!1846930) key!4653))))

(assert (= (and d!1489726 c!801581) b!4687954))

(assert (= (and d!1489726 (not c!801581)) b!4687950))

(assert (= (and b!4687950 c!801582) b!4687956))

(assert (= (and b!4687950 (not c!801582)) b!4687953))

(assert (= (and d!1489726 res!1976984) b!4687952))

(assert (= (and d!1489726 (not res!1976983)) b!4687955))

(assert (= (and b!4687955 res!1976986) b!4687949))

(assert (= (and b!4687949 res!1976985) b!4687951))

(declare-fun m!5588165 () Bool)

(assert (=> b!4687951 m!5588165))

(assert (=> b!4687951 m!5588165))

(declare-fun m!5588169 () Bool)

(assert (=> b!4687951 m!5588169))

(declare-fun m!5588171 () Bool)

(assert (=> b!4687955 m!5588171))

(declare-fun m!5588173 () Bool)

(assert (=> b!4687956 m!5588173))

(assert (=> b!4687949 m!5588165))

(declare-fun m!5588177 () Bool)

(assert (=> d!1489726 m!5588177))

(declare-fun m!5588181 () Bool)

(assert (=> d!1489726 m!5588181))

(declare-fun m!5588183 () Bool)

(assert (=> b!4687952 m!5588183))

(assert (=> b!4687635 d!1489726))

(declare-fun bs!1085063 () Bool)

(declare-fun d!1489728 () Bool)

(assert (= bs!1085063 (and d!1489728 d!1489640)))

(declare-fun lambda!206563 () Int)

(assert (=> bs!1085063 (= lambda!206563 lambda!206523)))

(declare-fun bs!1085064 () Bool)

(assert (= bs!1085064 (and d!1489728 start!473936)))

(assert (=> bs!1085064 (= lambda!206563 lambda!206447)))

(declare-fun bs!1085065 () Bool)

(assert (= bs!1085065 (and d!1489728 d!1489674)))

(assert (=> bs!1085065 (= lambda!206563 lambda!206540)))

(declare-fun bs!1085066 () Bool)

(assert (= bs!1085066 (and d!1489728 d!1489698)))

(assert (=> bs!1085066 (= lambda!206563 lambda!206550)))

(declare-fun bs!1085067 () Bool)

(assert (= bs!1085067 (and d!1489728 d!1489648)))

(assert (=> bs!1085067 (not (= lambda!206563 lambda!206528))))

(assert (=> d!1489728 (contains!15564 lm!2023 (hash!4047 hashF!1323 key!4653))))

(declare-fun lt!1847315 () Unit!123525)

(declare-fun choose!32528 (ListLongMap!4107 K!13760 Hashable!6213) Unit!123525)

(assert (=> d!1489728 (= lt!1847315 (choose!32528 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489728 (forall!11303 (toList!5578 lm!2023) lambda!206563)))

(assert (=> d!1489728 (= (lemmaInGenMapThenLongMapContainsHash!654 lm!2023 key!4653 hashF!1323) lt!1847315)))

(declare-fun bs!1085068 () Bool)

(assert (= bs!1085068 d!1489728))

(assert (=> bs!1085068 m!5587645))

(assert (=> bs!1085068 m!5587645))

(assert (=> bs!1085068 m!5588131))

(declare-fun m!5588205 () Bool)

(assert (=> bs!1085068 m!5588205))

(declare-fun m!5588207 () Bool)

(assert (=> bs!1085068 m!5588207))

(assert (=> b!4687635 d!1489728))

(declare-fun d!1489740 () Bool)

(declare-fun get!17471 (Option!12054) List!52505)

(assert (=> d!1489740 (= (apply!12327 lm!2023 lt!1846920) (get!17471 (getValueByKey!1764 (toList!5578 lm!2023) lt!1846920)))))

(declare-fun bs!1085078 () Bool)

(assert (= bs!1085078 d!1489740))

(assert (=> bs!1085078 m!5588095))

(assert (=> bs!1085078 m!5588095))

(declare-fun m!5588209 () Bool)

(assert (=> bs!1085078 m!5588209))

(assert (=> b!4687635 d!1489740))

(declare-fun bs!1085087 () Bool)

(declare-fun d!1489742 () Bool)

(assert (= bs!1085087 (and d!1489742 b!4687736)))

(declare-fun lambda!206567 () Int)

(assert (=> bs!1085087 (not (= lambda!206567 lambda!206510))))

(declare-fun bs!1085089 () Bool)

(assert (= bs!1085089 (and d!1489742 b!4687734)))

(assert (=> bs!1085089 (not (= lambda!206567 lambda!206511))))

(assert (=> bs!1085089 (not (= lambda!206567 lambda!206512))))

(declare-fun bs!1085092 () Bool)

(assert (= bs!1085092 (and d!1489742 d!1489610)))

(assert (=> bs!1085092 (not (= lambda!206567 lambda!206514))))

(assert (=> d!1489742 true))

(assert (=> d!1489742 true))

(assert (=> d!1489742 (= (allKeysSameHash!1670 newBucket!218 hash!405 hashF!1323) (forall!11305 newBucket!218 lambda!206567))))

(declare-fun bs!1085095 () Bool)

(assert (= bs!1085095 d!1489742))

(declare-fun m!5588215 () Bool)

(assert (=> bs!1085095 m!5588215))

(assert (=> b!4687637 d!1489742))

(declare-fun d!1489748 () Bool)

(declare-fun res!1976994 () Bool)

(declare-fun e!2924671 () Bool)

(assert (=> d!1489748 (=> res!1976994 e!2924671)))

(assert (=> d!1489748 (= res!1976994 ((_ is Nil!52382) (toList!5578 lm!2023)))))

(assert (=> d!1489748 (= (forall!11303 (toList!5578 lm!2023) lambda!206447) e!2924671)))

(declare-fun b!4687976 () Bool)

(declare-fun e!2924672 () Bool)

(assert (=> b!4687976 (= e!2924671 e!2924672)))

(declare-fun res!1976995 () Bool)

(assert (=> b!4687976 (=> (not res!1976995) (not e!2924672))))

(assert (=> b!4687976 (= res!1976995 (dynLambda!21705 lambda!206447 (h!58619 (toList!5578 lm!2023))))))

(declare-fun b!4687977 () Bool)

(assert (=> b!4687977 (= e!2924672 (forall!11303 (t!359674 (toList!5578 lm!2023)) lambda!206447))))

(assert (= (and d!1489748 (not res!1976994)) b!4687976))

(assert (= (and b!4687976 res!1976995) b!4687977))

(declare-fun b_lambda!176909 () Bool)

(assert (=> (not b_lambda!176909) (not b!4687976)))

(declare-fun m!5588217 () Bool)

(assert (=> b!4687976 m!5588217))

(declare-fun m!5588219 () Bool)

(assert (=> b!4687977 m!5588219))

(assert (=> start!473936 d!1489748))

(declare-fun d!1489750 () Bool)

(declare-fun isStrictlySorted!641 (List!52506) Bool)

(assert (=> d!1489750 (= (inv!67634 lm!2023) (isStrictlySorted!641 (toList!5578 lm!2023)))))

(declare-fun bs!1085118 () Bool)

(assert (= bs!1085118 d!1489750))

(declare-fun m!5588221 () Bool)

(assert (=> bs!1085118 m!5588221))

(assert (=> start!473936 d!1489750))

(declare-fun bs!1085119 () Bool)

(declare-fun d!1489752 () Bool)

(assert (= bs!1085119 (and d!1489752 d!1489610)))

(declare-fun lambda!206571 () Int)

(assert (=> bs!1085119 (not (= lambda!206571 lambda!206514))))

(declare-fun bs!1085120 () Bool)

(assert (= bs!1085120 (and d!1489752 b!4687734)))

(assert (=> bs!1085120 (not (= lambda!206571 lambda!206511))))

(declare-fun bs!1085121 () Bool)

(assert (= bs!1085121 (and d!1489752 d!1489742)))

(assert (=> bs!1085121 (= lambda!206571 lambda!206567)))

(declare-fun bs!1085122 () Bool)

(assert (= bs!1085122 (and d!1489752 b!4687736)))

(assert (=> bs!1085122 (not (= lambda!206571 lambda!206510))))

(assert (=> bs!1085120 (not (= lambda!206571 lambda!206512))))

(assert (=> d!1489752 true))

(assert (=> d!1489752 true))

(assert (=> d!1489752 (= (allKeysSameHash!1670 oldBucket!34 hash!405 hashF!1323) (forall!11305 oldBucket!34 lambda!206571))))

(declare-fun bs!1085123 () Bool)

(assert (= bs!1085123 d!1489752))

(declare-fun m!5588223 () Bool)

(assert (=> bs!1085123 m!5588223))

(assert (=> b!4687628 d!1489752))

(declare-fun d!1489754 () Bool)

(assert (=> d!1489754 (= (head!9951 oldBucket!34) (h!58618 oldBucket!34))))

(assert (=> b!4687627 d!1489754))

(declare-fun bs!1085124 () Bool)

(declare-fun d!1489756 () Bool)

(assert (= bs!1085124 (and d!1489756 d!1489640)))

(declare-fun lambda!206572 () Int)

(assert (=> bs!1085124 (= lambda!206572 lambda!206523)))

(declare-fun bs!1085125 () Bool)

(assert (= bs!1085125 (and d!1489756 start!473936)))

(assert (=> bs!1085125 (= lambda!206572 lambda!206447)))

(declare-fun bs!1085126 () Bool)

(assert (= bs!1085126 (and d!1489756 d!1489674)))

(assert (=> bs!1085126 (= lambda!206572 lambda!206540)))

(declare-fun bs!1085127 () Bool)

(assert (= bs!1085127 (and d!1489756 d!1489728)))

(assert (=> bs!1085127 (= lambda!206572 lambda!206563)))

(declare-fun bs!1085128 () Bool)

(assert (= bs!1085128 (and d!1489756 d!1489698)))

(assert (=> bs!1085128 (= lambda!206572 lambda!206550)))

(declare-fun bs!1085129 () Bool)

(assert (= bs!1085129 (and d!1489756 d!1489648)))

(assert (=> bs!1085129 (not (= lambda!206572 lambda!206528))))

(declare-fun lt!1847337 () ListMap!4941)

(assert (=> d!1489756 (invariantList!1402 (toList!5577 lt!1847337))))

(declare-fun e!2924673 () ListMap!4941)

(assert (=> d!1489756 (= lt!1847337 e!2924673)))

(declare-fun c!801586 () Bool)

(assert (=> d!1489756 (= c!801586 ((_ is Cons!52382) lt!1846918))))

(assert (=> d!1489756 (forall!11303 lt!1846918 lambda!206572)))

(assert (=> d!1489756 (= (extractMap!1870 lt!1846918) lt!1847337)))

(declare-fun b!4687978 () Bool)

(assert (=> b!4687978 (= e!2924673 (addToMapMapFromBucket!1276 (_2!30180 (h!58619 lt!1846918)) (extractMap!1870 (t!359674 lt!1846918))))))

(declare-fun b!4687979 () Bool)

(assert (=> b!4687979 (= e!2924673 (ListMap!4942 Nil!52381))))

(assert (= (and d!1489756 c!801586) b!4687978))

(assert (= (and d!1489756 (not c!801586)) b!4687979))

(declare-fun m!5588225 () Bool)

(assert (=> d!1489756 m!5588225))

(declare-fun m!5588227 () Bool)

(assert (=> d!1489756 m!5588227))

(declare-fun m!5588229 () Bool)

(assert (=> b!4687978 m!5588229))

(assert (=> b!4687978 m!5588229))

(declare-fun m!5588231 () Bool)

(assert (=> b!4687978 m!5588231))

(assert (=> b!4687627 d!1489756))

(declare-fun d!1489758 () Bool)

(declare-fun e!2924686 () Bool)

(assert (=> d!1489758 e!2924686))

(declare-fun res!1977003 () Bool)

(assert (=> d!1489758 (=> (not res!1977003) (not e!2924686))))

(declare-fun lt!1847358 () ListMap!4941)

(assert (=> d!1489758 (= res!1977003 (contains!15562 lt!1847358 (_1!30179 lt!1846919)))))

(declare-fun lt!1847359 () List!52505)

(assert (=> d!1489758 (= lt!1847358 (ListMap!4942 lt!1847359))))

(declare-fun lt!1847357 () Unit!123525)

(declare-fun lt!1847360 () Unit!123525)

(assert (=> d!1489758 (= lt!1847357 lt!1847360)))

(assert (=> d!1489758 (= (getValueByKey!1763 lt!1847359 (_1!30179 lt!1846919)) (Some!12052 (_2!30179 lt!1846919)))))

(declare-fun lemmaContainsTupThenGetReturnValue!992 (List!52505 K!13760 V!14006) Unit!123525)

(assert (=> d!1489758 (= lt!1847360 (lemmaContainsTupThenGetReturnValue!992 lt!1847359 (_1!30179 lt!1846919) (_2!30179 lt!1846919)))))

(declare-fun insertNoDuplicatedKeys!500 (List!52505 K!13760 V!14006) List!52505)

(assert (=> d!1489758 (= lt!1847359 (insertNoDuplicatedKeys!500 (toList!5577 (addToMapMapFromBucket!1276 lt!1846917 lt!1846924)) (_1!30179 lt!1846919) (_2!30179 lt!1846919)))))

(assert (=> d!1489758 (= (+!2128 (addToMapMapFromBucket!1276 lt!1846917 lt!1846924) lt!1846919) lt!1847358)))

(declare-fun b!4688001 () Bool)

(declare-fun res!1977004 () Bool)

(assert (=> b!4688001 (=> (not res!1977004) (not e!2924686))))

(assert (=> b!4688001 (= res!1977004 (= (getValueByKey!1763 (toList!5577 lt!1847358) (_1!30179 lt!1846919)) (Some!12052 (_2!30179 lt!1846919))))))

(declare-fun b!4688002 () Bool)

(assert (=> b!4688002 (= e!2924686 (contains!15568 (toList!5577 lt!1847358) lt!1846919))))

(assert (= (and d!1489758 res!1977003) b!4688001))

(assert (= (and b!4688001 res!1977004) b!4688002))

(declare-fun m!5588303 () Bool)

(assert (=> d!1489758 m!5588303))

(declare-fun m!5588305 () Bool)

(assert (=> d!1489758 m!5588305))

(declare-fun m!5588307 () Bool)

(assert (=> d!1489758 m!5588307))

(declare-fun m!5588309 () Bool)

(assert (=> d!1489758 m!5588309))

(declare-fun m!5588311 () Bool)

(assert (=> b!4688001 m!5588311))

(declare-fun m!5588313 () Bool)

(assert (=> b!4688002 m!5588313))

(assert (=> b!4687627 d!1489758))

(declare-fun d!1489772 () Bool)

(declare-fun e!2924691 () Bool)

(assert (=> d!1489772 e!2924691))

(declare-fun res!1977005 () Bool)

(assert (=> d!1489772 (=> (not res!1977005) (not e!2924691))))

(declare-fun lt!1847362 () ListMap!4941)

(assert (=> d!1489772 (= res!1977005 (contains!15562 lt!1847362 (_1!30179 lt!1846921)))))

(declare-fun lt!1847363 () List!52505)

(assert (=> d!1489772 (= lt!1847362 (ListMap!4942 lt!1847363))))

(declare-fun lt!1847361 () Unit!123525)

(declare-fun lt!1847364 () Unit!123525)

(assert (=> d!1489772 (= lt!1847361 lt!1847364)))

(assert (=> d!1489772 (= (getValueByKey!1763 lt!1847363 (_1!30179 lt!1846921)) (Some!12052 (_2!30179 lt!1846921)))))

(assert (=> d!1489772 (= lt!1847364 (lemmaContainsTupThenGetReturnValue!992 lt!1847363 (_1!30179 lt!1846921) (_2!30179 lt!1846921)))))

(assert (=> d!1489772 (= lt!1847363 (insertNoDuplicatedKeys!500 (toList!5577 (addToMapMapFromBucket!1276 lt!1846926 lt!1846924)) (_1!30179 lt!1846921) (_2!30179 lt!1846921)))))

(assert (=> d!1489772 (= (+!2128 (addToMapMapFromBucket!1276 lt!1846926 lt!1846924) lt!1846921) lt!1847362)))

(declare-fun b!4688009 () Bool)

(declare-fun res!1977006 () Bool)

(assert (=> b!4688009 (=> (not res!1977006) (not e!2924691))))

(assert (=> b!4688009 (= res!1977006 (= (getValueByKey!1763 (toList!5577 lt!1847362) (_1!30179 lt!1846921)) (Some!12052 (_2!30179 lt!1846921))))))

(declare-fun b!4688010 () Bool)

(assert (=> b!4688010 (= e!2924691 (contains!15568 (toList!5577 lt!1847362) lt!1846921))))

(assert (= (and d!1489772 res!1977005) b!4688009))

(assert (= (and b!4688009 res!1977006) b!4688010))

(declare-fun m!5588315 () Bool)

(assert (=> d!1489772 m!5588315))

(declare-fun m!5588317 () Bool)

(assert (=> d!1489772 m!5588317))

(declare-fun m!5588319 () Bool)

(assert (=> d!1489772 m!5588319))

(declare-fun m!5588321 () Bool)

(assert (=> d!1489772 m!5588321))

(declare-fun m!5588323 () Bool)

(assert (=> b!4688009 m!5588323))

(declare-fun m!5588325 () Bool)

(assert (=> b!4688010 m!5588325))

(assert (=> b!4687627 d!1489772))

(declare-fun bs!1085165 () Bool)

(declare-fun d!1489774 () Bool)

(assert (= bs!1085165 (and d!1489774 d!1489756)))

(declare-fun lambda!206578 () Int)

(assert (=> bs!1085165 (= lambda!206578 lambda!206572)))

(declare-fun bs!1085166 () Bool)

(assert (= bs!1085166 (and d!1489774 d!1489640)))

(assert (=> bs!1085166 (= lambda!206578 lambda!206523)))

(declare-fun bs!1085167 () Bool)

(assert (= bs!1085167 (and d!1489774 start!473936)))

(assert (=> bs!1085167 (= lambda!206578 lambda!206447)))

(declare-fun bs!1085168 () Bool)

(assert (= bs!1085168 (and d!1489774 d!1489674)))

(assert (=> bs!1085168 (= lambda!206578 lambda!206540)))

(declare-fun bs!1085169 () Bool)

(assert (= bs!1085169 (and d!1489774 d!1489728)))

(assert (=> bs!1085169 (= lambda!206578 lambda!206563)))

(declare-fun bs!1085170 () Bool)

(assert (= bs!1085170 (and d!1489774 d!1489698)))

(assert (=> bs!1085170 (= lambda!206578 lambda!206550)))

(declare-fun bs!1085171 () Bool)

(assert (= bs!1085171 (and d!1489774 d!1489648)))

(assert (=> bs!1085171 (not (= lambda!206578 lambda!206528))))

(assert (=> d!1489774 (contains!15562 (extractMap!1870 (toList!5578 (ListLongMap!4108 lt!1846918))) key!4653)))

(declare-fun lt!1847367 () Unit!123525)

(declare-fun choose!32531 (ListLongMap!4107 K!13760 Hashable!6213) Unit!123525)

(assert (=> d!1489774 (= lt!1847367 (choose!32531 (ListLongMap!4108 lt!1846918) key!4653 hashF!1323))))

(assert (=> d!1489774 (forall!11303 (toList!5578 (ListLongMap!4108 lt!1846918)) lambda!206578)))

(assert (=> d!1489774 (= (lemmaListContainsThenExtractedMapContains!436 (ListLongMap!4108 lt!1846918) key!4653 hashF!1323) lt!1847367)))

(declare-fun bs!1085172 () Bool)

(assert (= bs!1085172 d!1489774))

(declare-fun m!5588331 () Bool)

(assert (=> bs!1085172 m!5588331))

(assert (=> bs!1085172 m!5588331))

(declare-fun m!5588333 () Bool)

(assert (=> bs!1085172 m!5588333))

(declare-fun m!5588335 () Bool)

(assert (=> bs!1085172 m!5588335))

(declare-fun m!5588337 () Bool)

(assert (=> bs!1085172 m!5588337))

(assert (=> b!4687627 d!1489774))

(declare-fun bs!1085173 () Bool)

(declare-fun b!4688018 () Bool)

(assert (= bs!1085173 (and b!4688018 d!1489610)))

(declare-fun lambda!206579 () Int)

(assert (=> bs!1085173 (= (= lt!1846924 lt!1847101) (= lambda!206579 lambda!206514))))

(declare-fun bs!1085174 () Bool)

(assert (= bs!1085174 (and b!4688018 b!4687734)))

(assert (=> bs!1085174 (= lambda!206579 lambda!206511)))

(declare-fun bs!1085175 () Bool)

(assert (= bs!1085175 (and b!4688018 d!1489742)))

(assert (=> bs!1085175 (not (= lambda!206579 lambda!206567))))

(declare-fun bs!1085176 () Bool)

(assert (= bs!1085176 (and b!4688018 b!4687736)))

(assert (=> bs!1085176 (= lambda!206579 lambda!206510)))

(assert (=> bs!1085174 (= (= lt!1846924 lt!1847092) (= lambda!206579 lambda!206512))))

(declare-fun bs!1085177 () Bool)

(assert (= bs!1085177 (and b!4688018 d!1489752)))

(assert (=> bs!1085177 (not (= lambda!206579 lambda!206571))))

(assert (=> b!4688018 true))

(declare-fun bs!1085178 () Bool)

(declare-fun b!4688016 () Bool)

(assert (= bs!1085178 (and b!4688016 d!1489610)))

(declare-fun lambda!206580 () Int)

(assert (=> bs!1085178 (= (= lt!1846924 lt!1847101) (= lambda!206580 lambda!206514))))

(declare-fun bs!1085179 () Bool)

(assert (= bs!1085179 (and b!4688016 b!4687734)))

(assert (=> bs!1085179 (= lambda!206580 lambda!206511)))

(declare-fun bs!1085180 () Bool)

(assert (= bs!1085180 (and b!4688016 d!1489742)))

(assert (=> bs!1085180 (not (= lambda!206580 lambda!206567))))

(declare-fun bs!1085181 () Bool)

(assert (= bs!1085181 (and b!4688016 b!4688018)))

(assert (=> bs!1085181 (= lambda!206580 lambda!206579)))

(declare-fun bs!1085182 () Bool)

(assert (= bs!1085182 (and b!4688016 b!4687736)))

(assert (=> bs!1085182 (= lambda!206580 lambda!206510)))

(assert (=> bs!1085179 (= (= lt!1846924 lt!1847092) (= lambda!206580 lambda!206512))))

(declare-fun bs!1085183 () Bool)

(assert (= bs!1085183 (and b!4688016 d!1489752)))

(assert (=> bs!1085183 (not (= lambda!206580 lambda!206571))))

(assert (=> b!4688016 true))

(declare-fun lambda!206581 () Int)

(declare-fun lt!1847377 () ListMap!4941)

(assert (=> bs!1085178 (= (= lt!1847377 lt!1847101) (= lambda!206581 lambda!206514))))

(assert (=> bs!1085179 (= (= lt!1847377 lt!1846924) (= lambda!206581 lambda!206511))))

(assert (=> bs!1085180 (not (= lambda!206581 lambda!206567))))

(assert (=> bs!1085181 (= (= lt!1847377 lt!1846924) (= lambda!206581 lambda!206579))))

(assert (=> bs!1085182 (= (= lt!1847377 lt!1846924) (= lambda!206581 lambda!206510))))

(assert (=> bs!1085179 (= (= lt!1847377 lt!1847092) (= lambda!206581 lambda!206512))))

(assert (=> bs!1085183 (not (= lambda!206581 lambda!206571))))

(assert (=> b!4688016 (= (= lt!1847377 lt!1846924) (= lambda!206581 lambda!206580))))

(assert (=> b!4688016 true))

(declare-fun bs!1085184 () Bool)

(declare-fun d!1489782 () Bool)

(assert (= bs!1085184 (and d!1489782 d!1489610)))

(declare-fun lt!1847386 () ListMap!4941)

(declare-fun lambda!206582 () Int)

(assert (=> bs!1085184 (= (= lt!1847386 lt!1847101) (= lambda!206582 lambda!206514))))

(declare-fun bs!1085185 () Bool)

(assert (= bs!1085185 (and d!1489782 b!4687734)))

(assert (=> bs!1085185 (= (= lt!1847386 lt!1846924) (= lambda!206582 lambda!206511))))

(declare-fun bs!1085186 () Bool)

(assert (= bs!1085186 (and d!1489782 d!1489742)))

(assert (=> bs!1085186 (not (= lambda!206582 lambda!206567))))

(declare-fun bs!1085187 () Bool)

(assert (= bs!1085187 (and d!1489782 b!4688018)))

(assert (=> bs!1085187 (= (= lt!1847386 lt!1846924) (= lambda!206582 lambda!206579))))

(declare-fun bs!1085188 () Bool)

(assert (= bs!1085188 (and d!1489782 b!4687736)))

(assert (=> bs!1085188 (= (= lt!1847386 lt!1846924) (= lambda!206582 lambda!206510))))

(assert (=> bs!1085185 (= (= lt!1847386 lt!1847092) (= lambda!206582 lambda!206512))))

(declare-fun bs!1085189 () Bool)

(assert (= bs!1085189 (and d!1489782 d!1489752)))

(assert (=> bs!1085189 (not (= lambda!206582 lambda!206571))))

(declare-fun bs!1085190 () Bool)

(assert (= bs!1085190 (and d!1489782 b!4688016)))

(assert (=> bs!1085190 (= (= lt!1847386 lt!1846924) (= lambda!206582 lambda!206580))))

(assert (=> bs!1085190 (= (= lt!1847386 lt!1847377) (= lambda!206582 lambda!206581))))

(assert (=> d!1489782 true))

(declare-fun e!2924697 () ListMap!4941)

(assert (=> b!4688016 (= e!2924697 lt!1847377)))

(declare-fun lt!1847384 () ListMap!4941)

(assert (=> b!4688016 (= lt!1847384 (+!2128 lt!1846924 (h!58618 lt!1846926)))))

(assert (=> b!4688016 (= lt!1847377 (addToMapMapFromBucket!1276 (t!359673 lt!1846926) (+!2128 lt!1846924 (h!58618 lt!1846926))))))

(declare-fun lt!1847373 () Unit!123525)

(declare-fun call!327596 () Unit!123525)

(assert (=> b!4688016 (= lt!1847373 call!327596)))

(assert (=> b!4688016 (forall!11305 (toList!5577 lt!1846924) lambda!206580)))

(declare-fun lt!1847376 () Unit!123525)

(assert (=> b!4688016 (= lt!1847376 lt!1847373)))

(assert (=> b!4688016 (forall!11305 (toList!5577 lt!1847384) lambda!206581)))

(declare-fun lt!1847375 () Unit!123525)

(declare-fun Unit!123587 () Unit!123525)

(assert (=> b!4688016 (= lt!1847375 Unit!123587)))

(assert (=> b!4688016 (forall!11305 (t!359673 lt!1846926) lambda!206581)))

(declare-fun lt!1847381 () Unit!123525)

(declare-fun Unit!123588 () Unit!123525)

(assert (=> b!4688016 (= lt!1847381 Unit!123588)))

(declare-fun lt!1847370 () Unit!123525)

(declare-fun Unit!123589 () Unit!123525)

(assert (=> b!4688016 (= lt!1847370 Unit!123589)))

(declare-fun lt!1847387 () Unit!123525)

(assert (=> b!4688016 (= lt!1847387 (forallContained!3412 (toList!5577 lt!1847384) lambda!206581 (h!58618 lt!1846926)))))

(assert (=> b!4688016 (contains!15562 lt!1847384 (_1!30179 (h!58618 lt!1846926)))))

(declare-fun lt!1847385 () Unit!123525)

(declare-fun Unit!123590 () Unit!123525)

(assert (=> b!4688016 (= lt!1847385 Unit!123590)))

(assert (=> b!4688016 (contains!15562 lt!1847377 (_1!30179 (h!58618 lt!1846926)))))

(declare-fun lt!1847388 () Unit!123525)

(declare-fun Unit!123591 () Unit!123525)

(assert (=> b!4688016 (= lt!1847388 Unit!123591)))

(declare-fun call!327595 () Bool)

(assert (=> b!4688016 call!327595))

(declare-fun lt!1847379 () Unit!123525)

(declare-fun Unit!123592 () Unit!123525)

(assert (=> b!4688016 (= lt!1847379 Unit!123592)))

(declare-fun call!327597 () Bool)

(assert (=> b!4688016 call!327597))

(declare-fun lt!1847382 () Unit!123525)

(declare-fun Unit!123593 () Unit!123525)

(assert (=> b!4688016 (= lt!1847382 Unit!123593)))

(declare-fun lt!1847374 () Unit!123525)

(declare-fun Unit!123594 () Unit!123525)

(assert (=> b!4688016 (= lt!1847374 Unit!123594)))

(declare-fun lt!1847368 () Unit!123525)

(assert (=> b!4688016 (= lt!1847368 (addForallContainsKeyThenBeforeAdding!689 lt!1846924 lt!1847377 (_1!30179 (h!58618 lt!1846926)) (_2!30179 (h!58618 lt!1846926))))))

(assert (=> b!4688016 (forall!11305 (toList!5577 lt!1846924) lambda!206581)))

(declare-fun lt!1847372 () Unit!123525)

(assert (=> b!4688016 (= lt!1847372 lt!1847368)))

(assert (=> b!4688016 (forall!11305 (toList!5577 lt!1846924) lambda!206581)))

(declare-fun lt!1847378 () Unit!123525)

(declare-fun Unit!123595 () Unit!123525)

(assert (=> b!4688016 (= lt!1847378 Unit!123595)))

(declare-fun res!1977008 () Bool)

(assert (=> b!4688016 (= res!1977008 (forall!11305 lt!1846926 lambda!206581))))

(declare-fun e!2924696 () Bool)

(assert (=> b!4688016 (=> (not res!1977008) (not e!2924696))))

(assert (=> b!4688016 e!2924696))

(declare-fun lt!1847383 () Unit!123525)

(declare-fun Unit!123596 () Unit!123525)

(assert (=> b!4688016 (= lt!1847383 Unit!123596)))

(declare-fun bm!327590 () Bool)

(declare-fun c!801594 () Bool)

(assert (=> bm!327590 (= call!327597 (forall!11305 (ite c!801594 (toList!5577 lt!1846924) (toList!5577 lt!1847384)) (ite c!801594 lambda!206579 lambda!206581)))))

(declare-fun b!4688017 () Bool)

(declare-fun res!1977007 () Bool)

(declare-fun e!2924695 () Bool)

(assert (=> b!4688017 (=> (not res!1977007) (not e!2924695))))

(assert (=> b!4688017 (= res!1977007 (forall!11305 (toList!5577 lt!1846924) lambda!206582))))

(assert (=> b!4688018 (= e!2924697 lt!1846924)))

(declare-fun lt!1847369 () Unit!123525)

(assert (=> b!4688018 (= lt!1847369 call!327596)))

(assert (=> b!4688018 call!327595))

(declare-fun lt!1847371 () Unit!123525)

(assert (=> b!4688018 (= lt!1847371 lt!1847369)))

(assert (=> b!4688018 call!327597))

(declare-fun lt!1847380 () Unit!123525)

(declare-fun Unit!123598 () Unit!123525)

(assert (=> b!4688018 (= lt!1847380 Unit!123598)))

(assert (=> d!1489782 e!2924695))

(declare-fun res!1977009 () Bool)

(assert (=> d!1489782 (=> (not res!1977009) (not e!2924695))))

(assert (=> d!1489782 (= res!1977009 (forall!11305 lt!1846926 lambda!206582))))

(assert (=> d!1489782 (= lt!1847386 e!2924697)))

(assert (=> d!1489782 (= c!801594 ((_ is Nil!52381) lt!1846926))))

(assert (=> d!1489782 (noDuplicateKeys!1844 lt!1846926)))

(assert (=> d!1489782 (= (addToMapMapFromBucket!1276 lt!1846926 lt!1846924) lt!1847386)))

(declare-fun b!4688019 () Bool)

(assert (=> b!4688019 (= e!2924696 (forall!11305 (toList!5577 lt!1846924) lambda!206581))))

(declare-fun b!4688020 () Bool)

(assert (=> b!4688020 (= e!2924695 (invariantList!1402 (toList!5577 lt!1847386)))))

(declare-fun bm!327591 () Bool)

(assert (=> bm!327591 (= call!327596 (lemmaContainsAllItsOwnKeys!690 lt!1846924))))

(declare-fun bm!327592 () Bool)

(assert (=> bm!327592 (= call!327595 (forall!11305 (ite c!801594 (toList!5577 lt!1846924) lt!1846926) (ite c!801594 lambda!206579 lambda!206581)))))

(assert (= (and d!1489782 c!801594) b!4688018))

(assert (= (and d!1489782 (not c!801594)) b!4688016))

(assert (= (and b!4688016 res!1977008) b!4688019))

(assert (= (or b!4688018 b!4688016) bm!327591))

(assert (= (or b!4688018 b!4688016) bm!327590))

(assert (= (or b!4688018 b!4688016) bm!327592))

(assert (= (and d!1489782 res!1977009) b!4688017))

(assert (= (and b!4688017 res!1977007) b!4688020))

(declare-fun m!5588339 () Bool)

(assert (=> bm!327592 m!5588339))

(declare-fun m!5588341 () Bool)

(assert (=> b!4688017 m!5588341))

(declare-fun m!5588343 () Bool)

(assert (=> b!4688019 m!5588343))

(declare-fun m!5588345 () Bool)

(assert (=> b!4688020 m!5588345))

(assert (=> b!4688016 m!5588343))

(declare-fun m!5588347 () Bool)

(assert (=> b!4688016 m!5588347))

(declare-fun m!5588349 () Bool)

(assert (=> b!4688016 m!5588349))

(declare-fun m!5588351 () Bool)

(assert (=> b!4688016 m!5588351))

(assert (=> b!4688016 m!5588343))

(declare-fun m!5588353 () Bool)

(assert (=> b!4688016 m!5588353))

(declare-fun m!5588355 () Bool)

(assert (=> b!4688016 m!5588355))

(declare-fun m!5588357 () Bool)

(assert (=> b!4688016 m!5588357))

(assert (=> b!4688016 m!5588357))

(declare-fun m!5588359 () Bool)

(assert (=> b!4688016 m!5588359))

(declare-fun m!5588361 () Bool)

(assert (=> b!4688016 m!5588361))

(declare-fun m!5588363 () Bool)

(assert (=> b!4688016 m!5588363))

(declare-fun m!5588365 () Bool)

(assert (=> b!4688016 m!5588365))

(assert (=> bm!327591 m!5587875))

(declare-fun m!5588367 () Bool)

(assert (=> d!1489782 m!5588367))

(assert (=> d!1489782 m!5588063))

(declare-fun m!5588369 () Bool)

(assert (=> bm!327590 m!5588369))

(assert (=> b!4687627 d!1489782))

(declare-fun d!1489784 () Bool)

(declare-fun content!9150 (List!52505) (InoxSet tuple2!53770))

(assert (=> d!1489784 (= (eq!1003 (addToMapMapFromBucket!1276 (Cons!52381 lt!1846919 lt!1846917) lt!1846924) (+!2128 (addToMapMapFromBucket!1276 lt!1846917 lt!1846924) lt!1846919)) (= (content!9150 (toList!5577 (addToMapMapFromBucket!1276 (Cons!52381 lt!1846919 lt!1846917) lt!1846924))) (content!9150 (toList!5577 (+!2128 (addToMapMapFromBucket!1276 lt!1846917 lt!1846924) lt!1846919)))))))

(declare-fun bs!1085191 () Bool)

(assert (= bs!1085191 d!1489784))

(declare-fun m!5588371 () Bool)

(assert (=> bs!1085191 m!5588371))

(declare-fun m!5588373 () Bool)

(assert (=> bs!1085191 m!5588373))

(assert (=> b!4687627 d!1489784))

(declare-fun bs!1085192 () Bool)

(declare-fun d!1489786 () Bool)

(assert (= bs!1085192 (and d!1489786 d!1489756)))

(declare-fun lambda!206583 () Int)

(assert (=> bs!1085192 (= lambda!206583 lambda!206572)))

(declare-fun bs!1085193 () Bool)

(assert (= bs!1085193 (and d!1489786 d!1489774)))

(assert (=> bs!1085193 (= lambda!206583 lambda!206578)))

(declare-fun bs!1085194 () Bool)

(assert (= bs!1085194 (and d!1489786 d!1489640)))

(assert (=> bs!1085194 (= lambda!206583 lambda!206523)))

(declare-fun bs!1085195 () Bool)

(assert (= bs!1085195 (and d!1489786 start!473936)))

(assert (=> bs!1085195 (= lambda!206583 lambda!206447)))

(declare-fun bs!1085196 () Bool)

(assert (= bs!1085196 (and d!1489786 d!1489674)))

(assert (=> bs!1085196 (= lambda!206583 lambda!206540)))

(declare-fun bs!1085197 () Bool)

(assert (= bs!1085197 (and d!1489786 d!1489728)))

(assert (=> bs!1085197 (= lambda!206583 lambda!206563)))

(declare-fun bs!1085198 () Bool)

(assert (= bs!1085198 (and d!1489786 d!1489698)))

(assert (=> bs!1085198 (= lambda!206583 lambda!206550)))

(declare-fun bs!1085199 () Bool)

(assert (= bs!1085199 (and d!1489786 d!1489648)))

(assert (=> bs!1085199 (not (= lambda!206583 lambda!206528))))

(declare-fun lt!1847389 () ListMap!4941)

(assert (=> d!1489786 (invariantList!1402 (toList!5577 lt!1847389))))

(declare-fun e!2924698 () ListMap!4941)

(assert (=> d!1489786 (= lt!1847389 e!2924698)))

(declare-fun c!801595 () Bool)

(assert (=> d!1489786 (= c!801595 ((_ is Cons!52382) (Cons!52382 lt!1846928 (t!359674 (toList!5578 lm!2023)))))))

(assert (=> d!1489786 (forall!11303 (Cons!52382 lt!1846928 (t!359674 (toList!5578 lm!2023))) lambda!206583)))

(assert (=> d!1489786 (= (extractMap!1870 (Cons!52382 lt!1846928 (t!359674 (toList!5578 lm!2023)))) lt!1847389)))

(declare-fun b!4688021 () Bool)

(assert (=> b!4688021 (= e!2924698 (addToMapMapFromBucket!1276 (_2!30180 (h!58619 (Cons!52382 lt!1846928 (t!359674 (toList!5578 lm!2023))))) (extractMap!1870 (t!359674 (Cons!52382 lt!1846928 (t!359674 (toList!5578 lm!2023)))))))))

(declare-fun b!4688022 () Bool)

(assert (=> b!4688022 (= e!2924698 (ListMap!4942 Nil!52381))))

(assert (= (and d!1489786 c!801595) b!4688021))

(assert (= (and d!1489786 (not c!801595)) b!4688022))

(declare-fun m!5588375 () Bool)

(assert (=> d!1489786 m!5588375))

(declare-fun m!5588377 () Bool)

(assert (=> d!1489786 m!5588377))

(declare-fun m!5588379 () Bool)

(assert (=> b!4688021 m!5588379))

(assert (=> b!4688021 m!5588379))

(declare-fun m!5588381 () Bool)

(assert (=> b!4688021 m!5588381))

(assert (=> b!4687627 d!1489786))

(declare-fun d!1489788 () Bool)

(assert (=> d!1489788 (eq!1003 (addToMapMapFromBucket!1276 (Cons!52381 lt!1846921 lt!1846926) lt!1846924) (+!2128 (addToMapMapFromBucket!1276 lt!1846926 lt!1846924) lt!1846921))))

(declare-fun lt!1847392 () Unit!123525)

(declare-fun choose!32534 (tuple2!53770 List!52505 ListMap!4941) Unit!123525)

(assert (=> d!1489788 (= lt!1847392 (choose!32534 lt!1846921 lt!1846926 lt!1846924))))

(assert (=> d!1489788 (noDuplicateKeys!1844 lt!1846926)))

(assert (=> d!1489788 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!252 lt!1846921 lt!1846926 lt!1846924) lt!1847392)))

(declare-fun bs!1085200 () Bool)

(assert (= bs!1085200 d!1489788))

(assert (=> bs!1085200 m!5587677))

(assert (=> bs!1085200 m!5588063))

(assert (=> bs!1085200 m!5587663))

(assert (=> bs!1085200 m!5587677))

(assert (=> bs!1085200 m!5587665))

(declare-fun m!5588383 () Bool)

(assert (=> bs!1085200 m!5588383))

(assert (=> bs!1085200 m!5587663))

(assert (=> bs!1085200 m!5587665))

(assert (=> bs!1085200 m!5587667))

(assert (=> b!4687627 d!1489788))

(declare-fun bs!1085201 () Bool)

(declare-fun b!4688025 () Bool)

(assert (= bs!1085201 (and b!4688025 d!1489610)))

(declare-fun lambda!206584 () Int)

(assert (=> bs!1085201 (= (= lt!1846924 lt!1847101) (= lambda!206584 lambda!206514))))

(declare-fun bs!1085202 () Bool)

(assert (= bs!1085202 (and b!4688025 b!4687734)))

(assert (=> bs!1085202 (= lambda!206584 lambda!206511)))

(declare-fun bs!1085203 () Bool)

(assert (= bs!1085203 (and b!4688025 d!1489742)))

(assert (=> bs!1085203 (not (= lambda!206584 lambda!206567))))

(declare-fun bs!1085204 () Bool)

(assert (= bs!1085204 (and b!4688025 b!4688018)))

(assert (=> bs!1085204 (= lambda!206584 lambda!206579)))

(declare-fun bs!1085205 () Bool)

(assert (= bs!1085205 (and b!4688025 d!1489782)))

(assert (=> bs!1085205 (= (= lt!1846924 lt!1847386) (= lambda!206584 lambda!206582))))

(declare-fun bs!1085206 () Bool)

(assert (= bs!1085206 (and b!4688025 b!4687736)))

(assert (=> bs!1085206 (= lambda!206584 lambda!206510)))

(assert (=> bs!1085202 (= (= lt!1846924 lt!1847092) (= lambda!206584 lambda!206512))))

(declare-fun bs!1085207 () Bool)

(assert (= bs!1085207 (and b!4688025 d!1489752)))

(assert (=> bs!1085207 (not (= lambda!206584 lambda!206571))))

(declare-fun bs!1085208 () Bool)

(assert (= bs!1085208 (and b!4688025 b!4688016)))

(assert (=> bs!1085208 (= lambda!206584 lambda!206580)))

(assert (=> bs!1085208 (= (= lt!1846924 lt!1847377) (= lambda!206584 lambda!206581))))

(assert (=> b!4688025 true))

(declare-fun bs!1085209 () Bool)

(declare-fun b!4688023 () Bool)

(assert (= bs!1085209 (and b!4688023 d!1489610)))

(declare-fun lambda!206585 () Int)

(assert (=> bs!1085209 (= (= lt!1846924 lt!1847101) (= lambda!206585 lambda!206514))))

(declare-fun bs!1085210 () Bool)

(assert (= bs!1085210 (and b!4688023 b!4687734)))

(assert (=> bs!1085210 (= lambda!206585 lambda!206511)))

(declare-fun bs!1085211 () Bool)

(assert (= bs!1085211 (and b!4688023 d!1489742)))

(assert (=> bs!1085211 (not (= lambda!206585 lambda!206567))))

(declare-fun bs!1085212 () Bool)

(assert (= bs!1085212 (and b!4688023 b!4688018)))

(assert (=> bs!1085212 (= lambda!206585 lambda!206579)))

(declare-fun bs!1085213 () Bool)

(assert (= bs!1085213 (and b!4688023 d!1489782)))

(assert (=> bs!1085213 (= (= lt!1846924 lt!1847386) (= lambda!206585 lambda!206582))))

(declare-fun bs!1085214 () Bool)

(assert (= bs!1085214 (and b!4688023 b!4687736)))

(assert (=> bs!1085214 (= lambda!206585 lambda!206510)))

(assert (=> bs!1085210 (= (= lt!1846924 lt!1847092) (= lambda!206585 lambda!206512))))

(declare-fun bs!1085215 () Bool)

(assert (= bs!1085215 (and b!4688023 d!1489752)))

(assert (=> bs!1085215 (not (= lambda!206585 lambda!206571))))

(declare-fun bs!1085216 () Bool)

(assert (= bs!1085216 (and b!4688023 b!4688016)))

(assert (=> bs!1085216 (= lambda!206585 lambda!206580)))

(assert (=> bs!1085216 (= (= lt!1846924 lt!1847377) (= lambda!206585 lambda!206581))))

(declare-fun bs!1085217 () Bool)

(assert (= bs!1085217 (and b!4688023 b!4688025)))

(assert (=> bs!1085217 (= lambda!206585 lambda!206584)))

(assert (=> b!4688023 true))

(declare-fun lambda!206586 () Int)

(declare-fun lt!1847402 () ListMap!4941)

(assert (=> bs!1085209 (= (= lt!1847402 lt!1847101) (= lambda!206586 lambda!206514))))

(assert (=> bs!1085210 (= (= lt!1847402 lt!1846924) (= lambda!206586 lambda!206511))))

(assert (=> bs!1085211 (not (= lambda!206586 lambda!206567))))

(assert (=> bs!1085212 (= (= lt!1847402 lt!1846924) (= lambda!206586 lambda!206579))))

(assert (=> bs!1085213 (= (= lt!1847402 lt!1847386) (= lambda!206586 lambda!206582))))

(assert (=> b!4688023 (= (= lt!1847402 lt!1846924) (= lambda!206586 lambda!206585))))

(assert (=> bs!1085214 (= (= lt!1847402 lt!1846924) (= lambda!206586 lambda!206510))))

(assert (=> bs!1085210 (= (= lt!1847402 lt!1847092) (= lambda!206586 lambda!206512))))

(assert (=> bs!1085215 (not (= lambda!206586 lambda!206571))))

(assert (=> bs!1085216 (= (= lt!1847402 lt!1846924) (= lambda!206586 lambda!206580))))

(assert (=> bs!1085216 (= (= lt!1847402 lt!1847377) (= lambda!206586 lambda!206581))))

(assert (=> bs!1085217 (= (= lt!1847402 lt!1846924) (= lambda!206586 lambda!206584))))

(assert (=> b!4688023 true))

(declare-fun bs!1085218 () Bool)

(declare-fun d!1489790 () Bool)

(assert (= bs!1085218 (and d!1489790 d!1489610)))

(declare-fun lambda!206587 () Int)

(declare-fun lt!1847411 () ListMap!4941)

(assert (=> bs!1085218 (= (= lt!1847411 lt!1847101) (= lambda!206587 lambda!206514))))

(declare-fun bs!1085219 () Bool)

(assert (= bs!1085219 (and d!1489790 b!4687734)))

(assert (=> bs!1085219 (= (= lt!1847411 lt!1846924) (= lambda!206587 lambda!206511))))

(declare-fun bs!1085220 () Bool)

(assert (= bs!1085220 (and d!1489790 d!1489742)))

(assert (=> bs!1085220 (not (= lambda!206587 lambda!206567))))

(declare-fun bs!1085221 () Bool)

(assert (= bs!1085221 (and d!1489790 b!4688018)))

(assert (=> bs!1085221 (= (= lt!1847411 lt!1846924) (= lambda!206587 lambda!206579))))

(declare-fun bs!1085222 () Bool)

(assert (= bs!1085222 (and d!1489790 d!1489782)))

(assert (=> bs!1085222 (= (= lt!1847411 lt!1847386) (= lambda!206587 lambda!206582))))

(declare-fun bs!1085223 () Bool)

(assert (= bs!1085223 (and d!1489790 b!4688023)))

(assert (=> bs!1085223 (= (= lt!1847411 lt!1846924) (= lambda!206587 lambda!206585))))

(declare-fun bs!1085224 () Bool)

(assert (= bs!1085224 (and d!1489790 b!4687736)))

(assert (=> bs!1085224 (= (= lt!1847411 lt!1846924) (= lambda!206587 lambda!206510))))

(assert (=> bs!1085219 (= (= lt!1847411 lt!1847092) (= lambda!206587 lambda!206512))))

(declare-fun bs!1085225 () Bool)

(assert (= bs!1085225 (and d!1489790 d!1489752)))

(assert (=> bs!1085225 (not (= lambda!206587 lambda!206571))))

(declare-fun bs!1085226 () Bool)

(assert (= bs!1085226 (and d!1489790 b!4688016)))

(assert (=> bs!1085226 (= (= lt!1847411 lt!1846924) (= lambda!206587 lambda!206580))))

(assert (=> bs!1085223 (= (= lt!1847411 lt!1847402) (= lambda!206587 lambda!206586))))

(assert (=> bs!1085226 (= (= lt!1847411 lt!1847377) (= lambda!206587 lambda!206581))))

(declare-fun bs!1085227 () Bool)

(assert (= bs!1085227 (and d!1489790 b!4688025)))

(assert (=> bs!1085227 (= (= lt!1847411 lt!1846924) (= lambda!206587 lambda!206584))))

(assert (=> d!1489790 true))

(declare-fun e!2924701 () ListMap!4941)

(assert (=> b!4688023 (= e!2924701 lt!1847402)))

(declare-fun lt!1847409 () ListMap!4941)

(assert (=> b!4688023 (= lt!1847409 (+!2128 lt!1846924 (h!58618 (Cons!52381 lt!1846919 lt!1846917))))))

(assert (=> b!4688023 (= lt!1847402 (addToMapMapFromBucket!1276 (t!359673 (Cons!52381 lt!1846919 lt!1846917)) (+!2128 lt!1846924 (h!58618 (Cons!52381 lt!1846919 lt!1846917)))))))

(declare-fun lt!1847398 () Unit!123525)

(declare-fun call!327599 () Unit!123525)

(assert (=> b!4688023 (= lt!1847398 call!327599)))

(assert (=> b!4688023 (forall!11305 (toList!5577 lt!1846924) lambda!206585)))

(declare-fun lt!1847401 () Unit!123525)

(assert (=> b!4688023 (= lt!1847401 lt!1847398)))

(assert (=> b!4688023 (forall!11305 (toList!5577 lt!1847409) lambda!206586)))

(declare-fun lt!1847400 () Unit!123525)

(declare-fun Unit!123599 () Unit!123525)

(assert (=> b!4688023 (= lt!1847400 Unit!123599)))

(assert (=> b!4688023 (forall!11305 (t!359673 (Cons!52381 lt!1846919 lt!1846917)) lambda!206586)))

(declare-fun lt!1847406 () Unit!123525)

(declare-fun Unit!123600 () Unit!123525)

(assert (=> b!4688023 (= lt!1847406 Unit!123600)))

(declare-fun lt!1847395 () Unit!123525)

(declare-fun Unit!123601 () Unit!123525)

(assert (=> b!4688023 (= lt!1847395 Unit!123601)))

(declare-fun lt!1847412 () Unit!123525)

(assert (=> b!4688023 (= lt!1847412 (forallContained!3412 (toList!5577 lt!1847409) lambda!206586 (h!58618 (Cons!52381 lt!1846919 lt!1846917))))))

(assert (=> b!4688023 (contains!15562 lt!1847409 (_1!30179 (h!58618 (Cons!52381 lt!1846919 lt!1846917))))))

(declare-fun lt!1847410 () Unit!123525)

(declare-fun Unit!123602 () Unit!123525)

(assert (=> b!4688023 (= lt!1847410 Unit!123602)))

(assert (=> b!4688023 (contains!15562 lt!1847402 (_1!30179 (h!58618 (Cons!52381 lt!1846919 lt!1846917))))))

(declare-fun lt!1847413 () Unit!123525)

(declare-fun Unit!123603 () Unit!123525)

(assert (=> b!4688023 (= lt!1847413 Unit!123603)))

(declare-fun call!327598 () Bool)

(assert (=> b!4688023 call!327598))

(declare-fun lt!1847404 () Unit!123525)

(declare-fun Unit!123604 () Unit!123525)

(assert (=> b!4688023 (= lt!1847404 Unit!123604)))

(declare-fun call!327600 () Bool)

(assert (=> b!4688023 call!327600))

(declare-fun lt!1847407 () Unit!123525)

(declare-fun Unit!123605 () Unit!123525)

(assert (=> b!4688023 (= lt!1847407 Unit!123605)))

(declare-fun lt!1847399 () Unit!123525)

(declare-fun Unit!123606 () Unit!123525)

(assert (=> b!4688023 (= lt!1847399 Unit!123606)))

(declare-fun lt!1847393 () Unit!123525)

(assert (=> b!4688023 (= lt!1847393 (addForallContainsKeyThenBeforeAdding!689 lt!1846924 lt!1847402 (_1!30179 (h!58618 (Cons!52381 lt!1846919 lt!1846917))) (_2!30179 (h!58618 (Cons!52381 lt!1846919 lt!1846917)))))))

(assert (=> b!4688023 (forall!11305 (toList!5577 lt!1846924) lambda!206586)))

(declare-fun lt!1847397 () Unit!123525)

(assert (=> b!4688023 (= lt!1847397 lt!1847393)))

(assert (=> b!4688023 (forall!11305 (toList!5577 lt!1846924) lambda!206586)))

(declare-fun lt!1847403 () Unit!123525)

(declare-fun Unit!123607 () Unit!123525)

(assert (=> b!4688023 (= lt!1847403 Unit!123607)))

(declare-fun res!1977011 () Bool)

(assert (=> b!4688023 (= res!1977011 (forall!11305 (Cons!52381 lt!1846919 lt!1846917) lambda!206586))))

(declare-fun e!2924700 () Bool)

(assert (=> b!4688023 (=> (not res!1977011) (not e!2924700))))

(assert (=> b!4688023 e!2924700))

(declare-fun lt!1847408 () Unit!123525)

(declare-fun Unit!123608 () Unit!123525)

(assert (=> b!4688023 (= lt!1847408 Unit!123608)))

(declare-fun bm!327593 () Bool)

(declare-fun c!801596 () Bool)

(assert (=> bm!327593 (= call!327600 (forall!11305 (ite c!801596 (toList!5577 lt!1846924) (toList!5577 lt!1847409)) (ite c!801596 lambda!206584 lambda!206586)))))

(declare-fun b!4688024 () Bool)

(declare-fun res!1977010 () Bool)

(declare-fun e!2924699 () Bool)

(assert (=> b!4688024 (=> (not res!1977010) (not e!2924699))))

(assert (=> b!4688024 (= res!1977010 (forall!11305 (toList!5577 lt!1846924) lambda!206587))))

(assert (=> b!4688025 (= e!2924701 lt!1846924)))

(declare-fun lt!1847394 () Unit!123525)

(assert (=> b!4688025 (= lt!1847394 call!327599)))

(assert (=> b!4688025 call!327598))

(declare-fun lt!1847396 () Unit!123525)

(assert (=> b!4688025 (= lt!1847396 lt!1847394)))

(assert (=> b!4688025 call!327600))

(declare-fun lt!1847405 () Unit!123525)

(declare-fun Unit!123609 () Unit!123525)

(assert (=> b!4688025 (= lt!1847405 Unit!123609)))

(assert (=> d!1489790 e!2924699))

(declare-fun res!1977012 () Bool)

(assert (=> d!1489790 (=> (not res!1977012) (not e!2924699))))

(assert (=> d!1489790 (= res!1977012 (forall!11305 (Cons!52381 lt!1846919 lt!1846917) lambda!206587))))

(assert (=> d!1489790 (= lt!1847411 e!2924701)))

(assert (=> d!1489790 (= c!801596 ((_ is Nil!52381) (Cons!52381 lt!1846919 lt!1846917)))))

(assert (=> d!1489790 (noDuplicateKeys!1844 (Cons!52381 lt!1846919 lt!1846917))))

(assert (=> d!1489790 (= (addToMapMapFromBucket!1276 (Cons!52381 lt!1846919 lt!1846917) lt!1846924) lt!1847411)))

(declare-fun b!4688026 () Bool)

(assert (=> b!4688026 (= e!2924700 (forall!11305 (toList!5577 lt!1846924) lambda!206586))))

(declare-fun b!4688027 () Bool)

(assert (=> b!4688027 (= e!2924699 (invariantList!1402 (toList!5577 lt!1847411)))))

(declare-fun bm!327594 () Bool)

(assert (=> bm!327594 (= call!327599 (lemmaContainsAllItsOwnKeys!690 lt!1846924))))

(declare-fun bm!327595 () Bool)

(assert (=> bm!327595 (= call!327598 (forall!11305 (ite c!801596 (toList!5577 lt!1846924) (Cons!52381 lt!1846919 lt!1846917)) (ite c!801596 lambda!206584 lambda!206586)))))

(assert (= (and d!1489790 c!801596) b!4688025))

(assert (= (and d!1489790 (not c!801596)) b!4688023))

(assert (= (and b!4688023 res!1977011) b!4688026))

(assert (= (or b!4688025 b!4688023) bm!327594))

(assert (= (or b!4688025 b!4688023) bm!327593))

(assert (= (or b!4688025 b!4688023) bm!327595))

(assert (= (and d!1489790 res!1977012) b!4688024))

(assert (= (and b!4688024 res!1977010) b!4688027))

(declare-fun m!5588385 () Bool)

(assert (=> bm!327595 m!5588385))

(declare-fun m!5588387 () Bool)

(assert (=> b!4688024 m!5588387))

(declare-fun m!5588389 () Bool)

(assert (=> b!4688026 m!5588389))

(declare-fun m!5588391 () Bool)

(assert (=> b!4688027 m!5588391))

(assert (=> b!4688023 m!5588389))

(declare-fun m!5588393 () Bool)

(assert (=> b!4688023 m!5588393))

(declare-fun m!5588395 () Bool)

(assert (=> b!4688023 m!5588395))

(declare-fun m!5588397 () Bool)

(assert (=> b!4688023 m!5588397))

(assert (=> b!4688023 m!5588389))

(declare-fun m!5588399 () Bool)

(assert (=> b!4688023 m!5588399))

(declare-fun m!5588401 () Bool)

(assert (=> b!4688023 m!5588401))

(declare-fun m!5588403 () Bool)

(assert (=> b!4688023 m!5588403))

(assert (=> b!4688023 m!5588403))

(declare-fun m!5588405 () Bool)

(assert (=> b!4688023 m!5588405))

(declare-fun m!5588407 () Bool)

(assert (=> b!4688023 m!5588407))

(declare-fun m!5588409 () Bool)

(assert (=> b!4688023 m!5588409))

(declare-fun m!5588411 () Bool)

(assert (=> b!4688023 m!5588411))

(assert (=> bm!327594 m!5587875))

(declare-fun m!5588413 () Bool)

(assert (=> d!1489790 m!5588413))

(declare-fun m!5588415 () Bool)

(assert (=> d!1489790 m!5588415))

(declare-fun m!5588417 () Bool)

(assert (=> bm!327593 m!5588417))

(assert (=> b!4687627 d!1489790))

(declare-fun d!1489792 () Bool)

(assert (=> d!1489792 (= (eq!1003 (addToMapMapFromBucket!1276 (Cons!52381 lt!1846921 lt!1846926) lt!1846924) (+!2128 (addToMapMapFromBucket!1276 lt!1846926 lt!1846924) lt!1846921)) (= (content!9150 (toList!5577 (addToMapMapFromBucket!1276 (Cons!52381 lt!1846921 lt!1846926) lt!1846924))) (content!9150 (toList!5577 (+!2128 (addToMapMapFromBucket!1276 lt!1846926 lt!1846924) lt!1846921)))))))

(declare-fun bs!1085228 () Bool)

(assert (= bs!1085228 d!1489792))

(declare-fun m!5588419 () Bool)

(assert (=> bs!1085228 m!5588419))

(declare-fun m!5588421 () Bool)

(assert (=> bs!1085228 m!5588421))

(assert (=> b!4687627 d!1489792))

(declare-fun bs!1085229 () Bool)

(declare-fun b!4688030 () Bool)

(assert (= bs!1085229 (and b!4688030 d!1489610)))

(declare-fun lambda!206588 () Int)

(assert (=> bs!1085229 (= (= lt!1846924 lt!1847101) (= lambda!206588 lambda!206514))))

(declare-fun bs!1085230 () Bool)

(assert (= bs!1085230 (and b!4688030 b!4687734)))

(assert (=> bs!1085230 (= lambda!206588 lambda!206511)))

(declare-fun bs!1085231 () Bool)

(assert (= bs!1085231 (and b!4688030 d!1489742)))

(assert (=> bs!1085231 (not (= lambda!206588 lambda!206567))))

(declare-fun bs!1085232 () Bool)

(assert (= bs!1085232 (and b!4688030 d!1489782)))

(assert (=> bs!1085232 (= (= lt!1846924 lt!1847386) (= lambda!206588 lambda!206582))))

(declare-fun bs!1085233 () Bool)

(assert (= bs!1085233 (and b!4688030 b!4688023)))

(assert (=> bs!1085233 (= lambda!206588 lambda!206585)))

(declare-fun bs!1085234 () Bool)

(assert (= bs!1085234 (and b!4688030 b!4687736)))

(assert (=> bs!1085234 (= lambda!206588 lambda!206510)))

(assert (=> bs!1085230 (= (= lt!1846924 lt!1847092) (= lambda!206588 lambda!206512))))

(declare-fun bs!1085235 () Bool)

(assert (= bs!1085235 (and b!4688030 d!1489752)))

(assert (=> bs!1085235 (not (= lambda!206588 lambda!206571))))

(declare-fun bs!1085236 () Bool)

(assert (= bs!1085236 (and b!4688030 b!4688016)))

(assert (=> bs!1085236 (= lambda!206588 lambda!206580)))

(assert (=> bs!1085233 (= (= lt!1846924 lt!1847402) (= lambda!206588 lambda!206586))))

(declare-fun bs!1085237 () Bool)

(assert (= bs!1085237 (and b!4688030 d!1489790)))

(assert (=> bs!1085237 (= (= lt!1846924 lt!1847411) (= lambda!206588 lambda!206587))))

(declare-fun bs!1085238 () Bool)

(assert (= bs!1085238 (and b!4688030 b!4688018)))

(assert (=> bs!1085238 (= lambda!206588 lambda!206579)))

(assert (=> bs!1085236 (= (= lt!1846924 lt!1847377) (= lambda!206588 lambda!206581))))

(declare-fun bs!1085239 () Bool)

(assert (= bs!1085239 (and b!4688030 b!4688025)))

(assert (=> bs!1085239 (= lambda!206588 lambda!206584)))

(assert (=> b!4688030 true))

(declare-fun bs!1085240 () Bool)

(declare-fun b!4688028 () Bool)

(assert (= bs!1085240 (and b!4688028 d!1489610)))

(declare-fun lambda!206589 () Int)

(assert (=> bs!1085240 (= (= lt!1846924 lt!1847101) (= lambda!206589 lambda!206514))))

(declare-fun bs!1085241 () Bool)

(assert (= bs!1085241 (and b!4688028 b!4687734)))

(assert (=> bs!1085241 (= lambda!206589 lambda!206511)))

(declare-fun bs!1085242 () Bool)

(assert (= bs!1085242 (and b!4688028 b!4688030)))

(assert (=> bs!1085242 (= lambda!206589 lambda!206588)))

(declare-fun bs!1085243 () Bool)

(assert (= bs!1085243 (and b!4688028 d!1489742)))

(assert (=> bs!1085243 (not (= lambda!206589 lambda!206567))))

(declare-fun bs!1085244 () Bool)

(assert (= bs!1085244 (and b!4688028 d!1489782)))

(assert (=> bs!1085244 (= (= lt!1846924 lt!1847386) (= lambda!206589 lambda!206582))))

(declare-fun bs!1085245 () Bool)

(assert (= bs!1085245 (and b!4688028 b!4688023)))

(assert (=> bs!1085245 (= lambda!206589 lambda!206585)))

(declare-fun bs!1085246 () Bool)

(assert (= bs!1085246 (and b!4688028 b!4687736)))

(assert (=> bs!1085246 (= lambda!206589 lambda!206510)))

(assert (=> bs!1085241 (= (= lt!1846924 lt!1847092) (= lambda!206589 lambda!206512))))

(declare-fun bs!1085247 () Bool)

(assert (= bs!1085247 (and b!4688028 d!1489752)))

(assert (=> bs!1085247 (not (= lambda!206589 lambda!206571))))

(declare-fun bs!1085248 () Bool)

(assert (= bs!1085248 (and b!4688028 b!4688016)))

(assert (=> bs!1085248 (= lambda!206589 lambda!206580)))

(assert (=> bs!1085245 (= (= lt!1846924 lt!1847402) (= lambda!206589 lambda!206586))))

(declare-fun bs!1085249 () Bool)

(assert (= bs!1085249 (and b!4688028 d!1489790)))

(assert (=> bs!1085249 (= (= lt!1846924 lt!1847411) (= lambda!206589 lambda!206587))))

(declare-fun bs!1085250 () Bool)

(assert (= bs!1085250 (and b!4688028 b!4688018)))

(assert (=> bs!1085250 (= lambda!206589 lambda!206579)))

(assert (=> bs!1085248 (= (= lt!1846924 lt!1847377) (= lambda!206589 lambda!206581))))

(declare-fun bs!1085251 () Bool)

(assert (= bs!1085251 (and b!4688028 b!4688025)))

(assert (=> bs!1085251 (= lambda!206589 lambda!206584)))

(assert (=> b!4688028 true))

(declare-fun lambda!206590 () Int)

(declare-fun lt!1847423 () ListMap!4941)

(assert (=> bs!1085241 (= (= lt!1847423 lt!1846924) (= lambda!206590 lambda!206511))))

(assert (=> bs!1085242 (= (= lt!1847423 lt!1846924) (= lambda!206590 lambda!206588))))

(assert (=> bs!1085243 (not (= lambda!206590 lambda!206567))))

(assert (=> bs!1085244 (= (= lt!1847423 lt!1847386) (= lambda!206590 lambda!206582))))

(assert (=> bs!1085245 (= (= lt!1847423 lt!1846924) (= lambda!206590 lambda!206585))))

(assert (=> bs!1085246 (= (= lt!1847423 lt!1846924) (= lambda!206590 lambda!206510))))

(assert (=> bs!1085241 (= (= lt!1847423 lt!1847092) (= lambda!206590 lambda!206512))))

(assert (=> bs!1085247 (not (= lambda!206590 lambda!206571))))

(assert (=> bs!1085248 (= (= lt!1847423 lt!1846924) (= lambda!206590 lambda!206580))))

(assert (=> bs!1085245 (= (= lt!1847423 lt!1847402) (= lambda!206590 lambda!206586))))

(assert (=> b!4688028 (= (= lt!1847423 lt!1846924) (= lambda!206590 lambda!206589))))

(assert (=> bs!1085240 (= (= lt!1847423 lt!1847101) (= lambda!206590 lambda!206514))))

(assert (=> bs!1085249 (= (= lt!1847423 lt!1847411) (= lambda!206590 lambda!206587))))

(assert (=> bs!1085250 (= (= lt!1847423 lt!1846924) (= lambda!206590 lambda!206579))))

(assert (=> bs!1085248 (= (= lt!1847423 lt!1847377) (= lambda!206590 lambda!206581))))

(assert (=> bs!1085251 (= (= lt!1847423 lt!1846924) (= lambda!206590 lambda!206584))))

(assert (=> b!4688028 true))

(declare-fun bs!1085252 () Bool)

(declare-fun d!1489794 () Bool)

(assert (= bs!1085252 (and d!1489794 b!4687734)))

(declare-fun lt!1847432 () ListMap!4941)

(declare-fun lambda!206591 () Int)

(assert (=> bs!1085252 (= (= lt!1847432 lt!1846924) (= lambda!206591 lambda!206511))))

(declare-fun bs!1085253 () Bool)

(assert (= bs!1085253 (and d!1489794 b!4688030)))

(assert (=> bs!1085253 (= (= lt!1847432 lt!1846924) (= lambda!206591 lambda!206588))))

(declare-fun bs!1085254 () Bool)

(assert (= bs!1085254 (and d!1489794 d!1489742)))

(assert (=> bs!1085254 (not (= lambda!206591 lambda!206567))))

(declare-fun bs!1085255 () Bool)

(assert (= bs!1085255 (and d!1489794 d!1489782)))

(assert (=> bs!1085255 (= (= lt!1847432 lt!1847386) (= lambda!206591 lambda!206582))))

(declare-fun bs!1085256 () Bool)

(assert (= bs!1085256 (and d!1489794 b!4688028)))

(assert (=> bs!1085256 (= (= lt!1847432 lt!1847423) (= lambda!206591 lambda!206590))))

(declare-fun bs!1085257 () Bool)

(assert (= bs!1085257 (and d!1489794 b!4688023)))

(assert (=> bs!1085257 (= (= lt!1847432 lt!1846924) (= lambda!206591 lambda!206585))))

(declare-fun bs!1085258 () Bool)

(assert (= bs!1085258 (and d!1489794 b!4687736)))

(assert (=> bs!1085258 (= (= lt!1847432 lt!1846924) (= lambda!206591 lambda!206510))))

(assert (=> bs!1085252 (= (= lt!1847432 lt!1847092) (= lambda!206591 lambda!206512))))

(declare-fun bs!1085259 () Bool)

(assert (= bs!1085259 (and d!1489794 d!1489752)))

(assert (=> bs!1085259 (not (= lambda!206591 lambda!206571))))

(declare-fun bs!1085260 () Bool)

(assert (= bs!1085260 (and d!1489794 b!4688016)))

(assert (=> bs!1085260 (= (= lt!1847432 lt!1846924) (= lambda!206591 lambda!206580))))

(assert (=> bs!1085257 (= (= lt!1847432 lt!1847402) (= lambda!206591 lambda!206586))))

(assert (=> bs!1085256 (= (= lt!1847432 lt!1846924) (= lambda!206591 lambda!206589))))

(declare-fun bs!1085261 () Bool)

(assert (= bs!1085261 (and d!1489794 d!1489610)))

(assert (=> bs!1085261 (= (= lt!1847432 lt!1847101) (= lambda!206591 lambda!206514))))

(declare-fun bs!1085262 () Bool)

(assert (= bs!1085262 (and d!1489794 d!1489790)))

(assert (=> bs!1085262 (= (= lt!1847432 lt!1847411) (= lambda!206591 lambda!206587))))

(declare-fun bs!1085263 () Bool)

(assert (= bs!1085263 (and d!1489794 b!4688018)))

(assert (=> bs!1085263 (= (= lt!1847432 lt!1846924) (= lambda!206591 lambda!206579))))

(assert (=> bs!1085260 (= (= lt!1847432 lt!1847377) (= lambda!206591 lambda!206581))))

(declare-fun bs!1085264 () Bool)

(assert (= bs!1085264 (and d!1489794 b!4688025)))

(assert (=> bs!1085264 (= (= lt!1847432 lt!1846924) (= lambda!206591 lambda!206584))))

(assert (=> d!1489794 true))

(declare-fun e!2924704 () ListMap!4941)

(assert (=> b!4688028 (= e!2924704 lt!1847423)))

(declare-fun lt!1847430 () ListMap!4941)

(assert (=> b!4688028 (= lt!1847430 (+!2128 lt!1846924 (h!58618 lt!1846917)))))

(assert (=> b!4688028 (= lt!1847423 (addToMapMapFromBucket!1276 (t!359673 lt!1846917) (+!2128 lt!1846924 (h!58618 lt!1846917))))))

(declare-fun lt!1847419 () Unit!123525)

(declare-fun call!327602 () Unit!123525)

(assert (=> b!4688028 (= lt!1847419 call!327602)))

(assert (=> b!4688028 (forall!11305 (toList!5577 lt!1846924) lambda!206589)))

(declare-fun lt!1847422 () Unit!123525)

(assert (=> b!4688028 (= lt!1847422 lt!1847419)))

(assert (=> b!4688028 (forall!11305 (toList!5577 lt!1847430) lambda!206590)))

(declare-fun lt!1847421 () Unit!123525)

(declare-fun Unit!123611 () Unit!123525)

(assert (=> b!4688028 (= lt!1847421 Unit!123611)))

(assert (=> b!4688028 (forall!11305 (t!359673 lt!1846917) lambda!206590)))

(declare-fun lt!1847427 () Unit!123525)

(declare-fun Unit!123612 () Unit!123525)

(assert (=> b!4688028 (= lt!1847427 Unit!123612)))

(declare-fun lt!1847416 () Unit!123525)

(declare-fun Unit!123613 () Unit!123525)

(assert (=> b!4688028 (= lt!1847416 Unit!123613)))

(declare-fun lt!1847433 () Unit!123525)

(assert (=> b!4688028 (= lt!1847433 (forallContained!3412 (toList!5577 lt!1847430) lambda!206590 (h!58618 lt!1846917)))))

(assert (=> b!4688028 (contains!15562 lt!1847430 (_1!30179 (h!58618 lt!1846917)))))

(declare-fun lt!1847431 () Unit!123525)

(declare-fun Unit!123614 () Unit!123525)

(assert (=> b!4688028 (= lt!1847431 Unit!123614)))

(assert (=> b!4688028 (contains!15562 lt!1847423 (_1!30179 (h!58618 lt!1846917)))))

(declare-fun lt!1847434 () Unit!123525)

(declare-fun Unit!123615 () Unit!123525)

(assert (=> b!4688028 (= lt!1847434 Unit!123615)))

(declare-fun call!327601 () Bool)

(assert (=> b!4688028 call!327601))

(declare-fun lt!1847425 () Unit!123525)

(declare-fun Unit!123616 () Unit!123525)

(assert (=> b!4688028 (= lt!1847425 Unit!123616)))

(declare-fun call!327603 () Bool)

(assert (=> b!4688028 call!327603))

(declare-fun lt!1847428 () Unit!123525)

(declare-fun Unit!123618 () Unit!123525)

(assert (=> b!4688028 (= lt!1847428 Unit!123618)))

(declare-fun lt!1847420 () Unit!123525)

(declare-fun Unit!123619 () Unit!123525)

(assert (=> b!4688028 (= lt!1847420 Unit!123619)))

(declare-fun lt!1847414 () Unit!123525)

(assert (=> b!4688028 (= lt!1847414 (addForallContainsKeyThenBeforeAdding!689 lt!1846924 lt!1847423 (_1!30179 (h!58618 lt!1846917)) (_2!30179 (h!58618 lt!1846917))))))

(assert (=> b!4688028 (forall!11305 (toList!5577 lt!1846924) lambda!206590)))

(declare-fun lt!1847418 () Unit!123525)

(assert (=> b!4688028 (= lt!1847418 lt!1847414)))

(assert (=> b!4688028 (forall!11305 (toList!5577 lt!1846924) lambda!206590)))

(declare-fun lt!1847424 () Unit!123525)

(declare-fun Unit!123622 () Unit!123525)

(assert (=> b!4688028 (= lt!1847424 Unit!123622)))

(declare-fun res!1977014 () Bool)

(assert (=> b!4688028 (= res!1977014 (forall!11305 lt!1846917 lambda!206590))))

(declare-fun e!2924703 () Bool)

(assert (=> b!4688028 (=> (not res!1977014) (not e!2924703))))

(assert (=> b!4688028 e!2924703))

(declare-fun lt!1847429 () Unit!123525)

(declare-fun Unit!123625 () Unit!123525)

(assert (=> b!4688028 (= lt!1847429 Unit!123625)))

(declare-fun bm!327596 () Bool)

(declare-fun c!801597 () Bool)

(assert (=> bm!327596 (= call!327603 (forall!11305 (ite c!801597 (toList!5577 lt!1846924) (toList!5577 lt!1847430)) (ite c!801597 lambda!206588 lambda!206590)))))

(declare-fun b!4688029 () Bool)

(declare-fun res!1977013 () Bool)

(declare-fun e!2924702 () Bool)

(assert (=> b!4688029 (=> (not res!1977013) (not e!2924702))))

(assert (=> b!4688029 (= res!1977013 (forall!11305 (toList!5577 lt!1846924) lambda!206591))))

(assert (=> b!4688030 (= e!2924704 lt!1846924)))

(declare-fun lt!1847415 () Unit!123525)

(assert (=> b!4688030 (= lt!1847415 call!327602)))

(assert (=> b!4688030 call!327601))

(declare-fun lt!1847417 () Unit!123525)

(assert (=> b!4688030 (= lt!1847417 lt!1847415)))

(assert (=> b!4688030 call!327603))

(declare-fun lt!1847426 () Unit!123525)

(declare-fun Unit!123629 () Unit!123525)

(assert (=> b!4688030 (= lt!1847426 Unit!123629)))

(assert (=> d!1489794 e!2924702))

(declare-fun res!1977015 () Bool)

(assert (=> d!1489794 (=> (not res!1977015) (not e!2924702))))

(assert (=> d!1489794 (= res!1977015 (forall!11305 lt!1846917 lambda!206591))))

(assert (=> d!1489794 (= lt!1847432 e!2924704)))

(assert (=> d!1489794 (= c!801597 ((_ is Nil!52381) lt!1846917))))

(assert (=> d!1489794 (noDuplicateKeys!1844 lt!1846917)))

(assert (=> d!1489794 (= (addToMapMapFromBucket!1276 lt!1846917 lt!1846924) lt!1847432)))

(declare-fun b!4688031 () Bool)

(assert (=> b!4688031 (= e!2924703 (forall!11305 (toList!5577 lt!1846924) lambda!206590))))

(declare-fun b!4688032 () Bool)

(assert (=> b!4688032 (= e!2924702 (invariantList!1402 (toList!5577 lt!1847432)))))

(declare-fun bm!327597 () Bool)

(assert (=> bm!327597 (= call!327602 (lemmaContainsAllItsOwnKeys!690 lt!1846924))))

(declare-fun bm!327598 () Bool)

(assert (=> bm!327598 (= call!327601 (forall!11305 (ite c!801597 (toList!5577 lt!1846924) lt!1846917) (ite c!801597 lambda!206588 lambda!206590)))))

(assert (= (and d!1489794 c!801597) b!4688030))

(assert (= (and d!1489794 (not c!801597)) b!4688028))

(assert (= (and b!4688028 res!1977014) b!4688031))

(assert (= (or b!4688030 b!4688028) bm!327597))

(assert (= (or b!4688030 b!4688028) bm!327596))

(assert (= (or b!4688030 b!4688028) bm!327598))

(assert (= (and d!1489794 res!1977015) b!4688029))

(assert (= (and b!4688029 res!1977013) b!4688032))

(declare-fun m!5588423 () Bool)

(assert (=> bm!327598 m!5588423))

(declare-fun m!5588425 () Bool)

(assert (=> b!4688029 m!5588425))

(declare-fun m!5588427 () Bool)

(assert (=> b!4688031 m!5588427))

(declare-fun m!5588429 () Bool)

(assert (=> b!4688032 m!5588429))

(assert (=> b!4688028 m!5588427))

(declare-fun m!5588431 () Bool)

(assert (=> b!4688028 m!5588431))

(declare-fun m!5588433 () Bool)

(assert (=> b!4688028 m!5588433))

(declare-fun m!5588435 () Bool)

(assert (=> b!4688028 m!5588435))

(assert (=> b!4688028 m!5588427))

(declare-fun m!5588437 () Bool)

(assert (=> b!4688028 m!5588437))

(declare-fun m!5588439 () Bool)

(assert (=> b!4688028 m!5588439))

(declare-fun m!5588441 () Bool)

(assert (=> b!4688028 m!5588441))

(assert (=> b!4688028 m!5588441))

(declare-fun m!5588443 () Bool)

(assert (=> b!4688028 m!5588443))

(declare-fun m!5588445 () Bool)

(assert (=> b!4688028 m!5588445))

(declare-fun m!5588447 () Bool)

(assert (=> b!4688028 m!5588447))

(declare-fun m!5588449 () Bool)

(assert (=> b!4688028 m!5588449))

(assert (=> bm!327597 m!5587875))

(declare-fun m!5588451 () Bool)

(assert (=> d!1489794 m!5588451))

(declare-fun m!5588453 () Bool)

(assert (=> d!1489794 m!5588453))

(declare-fun m!5588455 () Bool)

(assert (=> bm!327596 m!5588455))

(assert (=> b!4687627 d!1489794))

(declare-fun d!1489796 () Bool)

(declare-fun res!1977016 () Bool)

(declare-fun e!2924705 () Bool)

(assert (=> d!1489796 (=> res!1977016 e!2924705)))

(assert (=> d!1489796 (= res!1977016 ((_ is Nil!52382) (Cons!52382 (tuple2!53773 hash!405 lt!1846926) (t!359674 (toList!5578 lm!2023)))))))

(assert (=> d!1489796 (= (forall!11303 (Cons!52382 (tuple2!53773 hash!405 lt!1846926) (t!359674 (toList!5578 lm!2023))) lambda!206447) e!2924705)))

(declare-fun b!4688033 () Bool)

(declare-fun e!2924706 () Bool)

(assert (=> b!4688033 (= e!2924705 e!2924706)))

(declare-fun res!1977017 () Bool)

(assert (=> b!4688033 (=> (not res!1977017) (not e!2924706))))

(assert (=> b!4688033 (= res!1977017 (dynLambda!21705 lambda!206447 (h!58619 (Cons!52382 (tuple2!53773 hash!405 lt!1846926) (t!359674 (toList!5578 lm!2023))))))))

(declare-fun b!4688034 () Bool)

(assert (=> b!4688034 (= e!2924706 (forall!11303 (t!359674 (Cons!52382 (tuple2!53773 hash!405 lt!1846926) (t!359674 (toList!5578 lm!2023)))) lambda!206447))))

(assert (= (and d!1489796 (not res!1977016)) b!4688033))

(assert (= (and b!4688033 res!1977017) b!4688034))

(declare-fun b_lambda!176917 () Bool)

(assert (=> (not b_lambda!176917) (not b!4688033)))

(declare-fun m!5588457 () Bool)

(assert (=> b!4688033 m!5588457))

(declare-fun m!5588459 () Bool)

(assert (=> b!4688034 m!5588459))

(assert (=> b!4687627 d!1489796))

(declare-fun d!1489798 () Bool)

(assert (=> d!1489798 (eq!1003 (addToMapMapFromBucket!1276 (Cons!52381 lt!1846919 lt!1846917) lt!1846924) (+!2128 (addToMapMapFromBucket!1276 lt!1846917 lt!1846924) lt!1846919))))

(declare-fun lt!1847435 () Unit!123525)

(assert (=> d!1489798 (= lt!1847435 (choose!32534 lt!1846919 lt!1846917 lt!1846924))))

(assert (=> d!1489798 (noDuplicateKeys!1844 lt!1846917)))

(assert (=> d!1489798 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!252 lt!1846919 lt!1846917 lt!1846924) lt!1847435)))

(declare-fun bs!1085265 () Bool)

(assert (= bs!1085265 d!1489798))

(assert (=> bs!1085265 m!5587669))

(assert (=> bs!1085265 m!5588453))

(assert (=> bs!1085265 m!5587679))

(assert (=> bs!1085265 m!5587669))

(assert (=> bs!1085265 m!5587671))

(declare-fun m!5588461 () Bool)

(assert (=> bs!1085265 m!5588461))

(assert (=> bs!1085265 m!5587679))

(assert (=> bs!1085265 m!5587671))

(assert (=> bs!1085265 m!5587681))

(assert (=> b!4687627 d!1489798))

(declare-fun d!1489800 () Bool)

(assert (=> d!1489800 (= (head!9951 newBucket!218) (h!58618 newBucket!218))))

(assert (=> b!4687627 d!1489800))

(declare-fun b!4688035 () Bool)

(assert (=> b!4688035 false))

(declare-fun lt!1847438 () Unit!123525)

(declare-fun lt!1847441 () Unit!123525)

(assert (=> b!4688035 (= lt!1847438 lt!1847441)))

(assert (=> b!4688035 (containsKey!3029 (toList!5577 (extractMap!1870 lt!1846918)) key!4653)))

(assert (=> b!4688035 (= lt!1847441 (lemmaInGetKeysListThenContainsKey!841 (toList!5577 (extractMap!1870 lt!1846918)) key!4653))))

(declare-fun e!2924707 () Unit!123525)

(declare-fun Unit!123632 () Unit!123525)

(assert (=> b!4688035 (= e!2924707 Unit!123632)))

(declare-fun b!4688036 () Bool)

(declare-fun e!2924708 () List!52508)

(assert (=> b!4688036 (= e!2924708 (getKeysList!842 (toList!5577 (extractMap!1870 lt!1846918))))))

(declare-fun b!4688038 () Bool)

(declare-fun e!2924709 () Unit!123525)

(declare-fun lt!1847436 () Unit!123525)

(assert (=> b!4688038 (= e!2924709 lt!1847436)))

(declare-fun lt!1847439 () Unit!123525)

(assert (=> b!4688038 (= lt!1847439 (lemmaContainsKeyImpliesGetValueByKeyDefined!1655 (toList!5577 (extractMap!1870 lt!1846918)) key!4653))))

(assert (=> b!4688038 (isDefined!9308 (getValueByKey!1763 (toList!5577 (extractMap!1870 lt!1846918)) key!4653))))

(declare-fun lt!1847440 () Unit!123525)

(assert (=> b!4688038 (= lt!1847440 lt!1847439)))

(assert (=> b!4688038 (= lt!1847436 (lemmaInListThenGetKeysListContains!837 (toList!5577 (extractMap!1870 lt!1846918)) key!4653))))

(declare-fun call!327604 () Bool)

(assert (=> b!4688038 call!327604))

(declare-fun bm!327599 () Bool)

(assert (=> bm!327599 (= call!327604 (contains!15567 e!2924708 key!4653))))

(declare-fun c!801598 () Bool)

(declare-fun c!801599 () Bool)

(assert (=> bm!327599 (= c!801598 c!801599)))

(declare-fun b!4688039 () Bool)

(declare-fun e!2924711 () Bool)

(declare-fun e!2924710 () Bool)

(assert (=> b!4688039 (= e!2924711 e!2924710)))

(declare-fun res!1977019 () Bool)

(assert (=> b!4688039 (=> (not res!1977019) (not e!2924710))))

(assert (=> b!4688039 (= res!1977019 (isDefined!9308 (getValueByKey!1763 (toList!5577 (extractMap!1870 lt!1846918)) key!4653)))))

(declare-fun b!4688040 () Bool)

(declare-fun Unit!123633 () Unit!123525)

(assert (=> b!4688040 (= e!2924707 Unit!123633)))

(declare-fun b!4688041 () Bool)

(declare-fun e!2924712 () Bool)

(assert (=> b!4688041 (= e!2924712 (not (contains!15567 (keys!18695 (extractMap!1870 lt!1846918)) key!4653)))))

(declare-fun b!4688042 () Bool)

(assert (=> b!4688042 (= e!2924709 e!2924707)))

(declare-fun c!801600 () Bool)

(assert (=> b!4688042 (= c!801600 call!327604)))

(declare-fun b!4688043 () Bool)

(assert (=> b!4688043 (= e!2924708 (keys!18695 (extractMap!1870 lt!1846918)))))

(declare-fun b!4688037 () Bool)

(assert (=> b!4688037 (= e!2924710 (contains!15567 (keys!18695 (extractMap!1870 lt!1846918)) key!4653))))

(declare-fun d!1489802 () Bool)

(assert (=> d!1489802 e!2924711))

(declare-fun res!1977018 () Bool)

(assert (=> d!1489802 (=> res!1977018 e!2924711)))

(assert (=> d!1489802 (= res!1977018 e!2924712)))

(declare-fun res!1977020 () Bool)

(assert (=> d!1489802 (=> (not res!1977020) (not e!2924712))))

(declare-fun lt!1847442 () Bool)

(assert (=> d!1489802 (= res!1977020 (not lt!1847442))))

(declare-fun lt!1847437 () Bool)

(assert (=> d!1489802 (= lt!1847442 lt!1847437)))

(declare-fun lt!1847443 () Unit!123525)

(assert (=> d!1489802 (= lt!1847443 e!2924709)))

(assert (=> d!1489802 (= c!801599 lt!1847437)))

(assert (=> d!1489802 (= lt!1847437 (containsKey!3029 (toList!5577 (extractMap!1870 lt!1846918)) key!4653))))

(assert (=> d!1489802 (= (contains!15562 (extractMap!1870 lt!1846918) key!4653) lt!1847442)))

(assert (= (and d!1489802 c!801599) b!4688038))

(assert (= (and d!1489802 (not c!801599)) b!4688042))

(assert (= (and b!4688042 c!801600) b!4688035))

(assert (= (and b!4688042 (not c!801600)) b!4688040))

(assert (= (or b!4688038 b!4688042) bm!327599))

(assert (= (and bm!327599 c!801598) b!4688036))

(assert (= (and bm!327599 (not c!801598)) b!4688043))

(assert (= (and d!1489802 res!1977020) b!4688041))

(assert (= (and d!1489802 (not res!1977018)) b!4688039))

(assert (= (and b!4688039 res!1977019) b!4688037))

(assert (=> b!4688043 m!5587659))

(declare-fun m!5588463 () Bool)

(assert (=> b!4688043 m!5588463))

(declare-fun m!5588465 () Bool)

(assert (=> b!4688036 m!5588465))

(assert (=> b!4688037 m!5587659))

(assert (=> b!4688037 m!5588463))

(assert (=> b!4688037 m!5588463))

(declare-fun m!5588467 () Bool)

(assert (=> b!4688037 m!5588467))

(declare-fun m!5588469 () Bool)

(assert (=> bm!327599 m!5588469))

(declare-fun m!5588471 () Bool)

(assert (=> b!4688039 m!5588471))

(assert (=> b!4688039 m!5588471))

(declare-fun m!5588473 () Bool)

(assert (=> b!4688039 m!5588473))

(declare-fun m!5588475 () Bool)

(assert (=> d!1489802 m!5588475))

(declare-fun m!5588477 () Bool)

(assert (=> b!4688038 m!5588477))

(assert (=> b!4688038 m!5588471))

(assert (=> b!4688038 m!5588471))

(assert (=> b!4688038 m!5588473))

(declare-fun m!5588479 () Bool)

(assert (=> b!4688038 m!5588479))

(assert (=> b!4688041 m!5587659))

(assert (=> b!4688041 m!5588463))

(assert (=> b!4688041 m!5588463))

(assert (=> b!4688041 m!5588467))

(assert (=> b!4688035 m!5588475))

(declare-fun m!5588481 () Bool)

(assert (=> b!4688035 m!5588481))

(assert (=> b!4687627 d!1489802))

(declare-fun bs!1085266 () Bool)

(declare-fun b!4688046 () Bool)

(assert (= bs!1085266 (and b!4688046 b!4687734)))

(declare-fun lambda!206592 () Int)

(assert (=> bs!1085266 (= lambda!206592 lambda!206511)))

(declare-fun bs!1085267 () Bool)

(assert (= bs!1085267 (and b!4688046 b!4688030)))

(assert (=> bs!1085267 (= lambda!206592 lambda!206588)))

(declare-fun bs!1085268 () Bool)

(assert (= bs!1085268 (and b!4688046 d!1489742)))

(assert (=> bs!1085268 (not (= lambda!206592 lambda!206567))))

(declare-fun bs!1085269 () Bool)

(assert (= bs!1085269 (and b!4688046 d!1489794)))

(assert (=> bs!1085269 (= (= lt!1846924 lt!1847432) (= lambda!206592 lambda!206591))))

(declare-fun bs!1085270 () Bool)

(assert (= bs!1085270 (and b!4688046 d!1489782)))

(assert (=> bs!1085270 (= (= lt!1846924 lt!1847386) (= lambda!206592 lambda!206582))))

(declare-fun bs!1085271 () Bool)

(assert (= bs!1085271 (and b!4688046 b!4688028)))

(assert (=> bs!1085271 (= (= lt!1846924 lt!1847423) (= lambda!206592 lambda!206590))))

(declare-fun bs!1085272 () Bool)

(assert (= bs!1085272 (and b!4688046 b!4688023)))

(assert (=> bs!1085272 (= lambda!206592 lambda!206585)))

(declare-fun bs!1085273 () Bool)

(assert (= bs!1085273 (and b!4688046 b!4687736)))

(assert (=> bs!1085273 (= lambda!206592 lambda!206510)))

(assert (=> bs!1085266 (= (= lt!1846924 lt!1847092) (= lambda!206592 lambda!206512))))

(declare-fun bs!1085274 () Bool)

(assert (= bs!1085274 (and b!4688046 d!1489752)))

(assert (=> bs!1085274 (not (= lambda!206592 lambda!206571))))

(declare-fun bs!1085275 () Bool)

(assert (= bs!1085275 (and b!4688046 b!4688016)))

(assert (=> bs!1085275 (= lambda!206592 lambda!206580)))

(assert (=> bs!1085272 (= (= lt!1846924 lt!1847402) (= lambda!206592 lambda!206586))))

(assert (=> bs!1085271 (= lambda!206592 lambda!206589)))

(declare-fun bs!1085276 () Bool)

(assert (= bs!1085276 (and b!4688046 d!1489610)))

(assert (=> bs!1085276 (= (= lt!1846924 lt!1847101) (= lambda!206592 lambda!206514))))

(declare-fun bs!1085277 () Bool)

(assert (= bs!1085277 (and b!4688046 d!1489790)))

(assert (=> bs!1085277 (= (= lt!1846924 lt!1847411) (= lambda!206592 lambda!206587))))

(declare-fun bs!1085278 () Bool)

(assert (= bs!1085278 (and b!4688046 b!4688018)))

(assert (=> bs!1085278 (= lambda!206592 lambda!206579)))

(assert (=> bs!1085275 (= (= lt!1846924 lt!1847377) (= lambda!206592 lambda!206581))))

(declare-fun bs!1085279 () Bool)

(assert (= bs!1085279 (and b!4688046 b!4688025)))

(assert (=> bs!1085279 (= lambda!206592 lambda!206584)))

(assert (=> b!4688046 true))

(declare-fun bs!1085280 () Bool)

(declare-fun b!4688044 () Bool)

(assert (= bs!1085280 (and b!4688044 b!4687734)))

(declare-fun lambda!206593 () Int)

(assert (=> bs!1085280 (= lambda!206593 lambda!206511)))

(declare-fun bs!1085281 () Bool)

(assert (= bs!1085281 (and b!4688044 b!4688030)))

(assert (=> bs!1085281 (= lambda!206593 lambda!206588)))

(declare-fun bs!1085282 () Bool)

(assert (= bs!1085282 (and b!4688044 d!1489742)))

(assert (=> bs!1085282 (not (= lambda!206593 lambda!206567))))

(declare-fun bs!1085283 () Bool)

(assert (= bs!1085283 (and b!4688044 d!1489794)))

(assert (=> bs!1085283 (= (= lt!1846924 lt!1847432) (= lambda!206593 lambda!206591))))

(declare-fun bs!1085284 () Bool)

(assert (= bs!1085284 (and b!4688044 d!1489782)))

(assert (=> bs!1085284 (= (= lt!1846924 lt!1847386) (= lambda!206593 lambda!206582))))

(declare-fun bs!1085285 () Bool)

(assert (= bs!1085285 (and b!4688044 b!4688028)))

(assert (=> bs!1085285 (= (= lt!1846924 lt!1847423) (= lambda!206593 lambda!206590))))

(declare-fun bs!1085286 () Bool)

(assert (= bs!1085286 (and b!4688044 b!4688023)))

(assert (=> bs!1085286 (= lambda!206593 lambda!206585)))

(declare-fun bs!1085287 () Bool)

(assert (= bs!1085287 (and b!4688044 b!4687736)))

(assert (=> bs!1085287 (= lambda!206593 lambda!206510)))

(assert (=> bs!1085280 (= (= lt!1846924 lt!1847092) (= lambda!206593 lambda!206512))))

(declare-fun bs!1085288 () Bool)

(assert (= bs!1085288 (and b!4688044 d!1489752)))

(assert (=> bs!1085288 (not (= lambda!206593 lambda!206571))))

(assert (=> bs!1085286 (= (= lt!1846924 lt!1847402) (= lambda!206593 lambda!206586))))

(assert (=> bs!1085285 (= lambda!206593 lambda!206589)))

(declare-fun bs!1085289 () Bool)

(assert (= bs!1085289 (and b!4688044 d!1489610)))

(assert (=> bs!1085289 (= (= lt!1846924 lt!1847101) (= lambda!206593 lambda!206514))))

(declare-fun bs!1085290 () Bool)

(assert (= bs!1085290 (and b!4688044 d!1489790)))

(assert (=> bs!1085290 (= (= lt!1846924 lt!1847411) (= lambda!206593 lambda!206587))))

(declare-fun bs!1085291 () Bool)

(assert (= bs!1085291 (and b!4688044 b!4688018)))

(assert (=> bs!1085291 (= lambda!206593 lambda!206579)))

(declare-fun bs!1085292 () Bool)

(assert (= bs!1085292 (and b!4688044 b!4688046)))

(assert (=> bs!1085292 (= lambda!206593 lambda!206592)))

(declare-fun bs!1085293 () Bool)

(assert (= bs!1085293 (and b!4688044 b!4688016)))

(assert (=> bs!1085293 (= lambda!206593 lambda!206580)))

(assert (=> bs!1085293 (= (= lt!1846924 lt!1847377) (= lambda!206593 lambda!206581))))

(declare-fun bs!1085294 () Bool)

(assert (= bs!1085294 (and b!4688044 b!4688025)))

(assert (=> bs!1085294 (= lambda!206593 lambda!206584)))

(assert (=> b!4688044 true))

(declare-fun lambda!206594 () Int)

(declare-fun lt!1847453 () ListMap!4941)

(assert (=> bs!1085280 (= (= lt!1847453 lt!1846924) (= lambda!206594 lambda!206511))))

(assert (=> bs!1085281 (= (= lt!1847453 lt!1846924) (= lambda!206594 lambda!206588))))

(assert (=> bs!1085282 (not (= lambda!206594 lambda!206567))))

(assert (=> bs!1085283 (= (= lt!1847453 lt!1847432) (= lambda!206594 lambda!206591))))

(assert (=> bs!1085284 (= (= lt!1847453 lt!1847386) (= lambda!206594 lambda!206582))))

(assert (=> bs!1085285 (= (= lt!1847453 lt!1847423) (= lambda!206594 lambda!206590))))

(assert (=> bs!1085286 (= (= lt!1847453 lt!1846924) (= lambda!206594 lambda!206585))))

(assert (=> bs!1085287 (= (= lt!1847453 lt!1846924) (= lambda!206594 lambda!206510))))

(assert (=> bs!1085280 (= (= lt!1847453 lt!1847092) (= lambda!206594 lambda!206512))))

(assert (=> bs!1085288 (not (= lambda!206594 lambda!206571))))

(assert (=> bs!1085286 (= (= lt!1847453 lt!1847402) (= lambda!206594 lambda!206586))))

(assert (=> b!4688044 (= (= lt!1847453 lt!1846924) (= lambda!206594 lambda!206593))))

(assert (=> bs!1085285 (= (= lt!1847453 lt!1846924) (= lambda!206594 lambda!206589))))

(assert (=> bs!1085289 (= (= lt!1847453 lt!1847101) (= lambda!206594 lambda!206514))))

(assert (=> bs!1085290 (= (= lt!1847453 lt!1847411) (= lambda!206594 lambda!206587))))

(assert (=> bs!1085291 (= (= lt!1847453 lt!1846924) (= lambda!206594 lambda!206579))))

(assert (=> bs!1085292 (= (= lt!1847453 lt!1846924) (= lambda!206594 lambda!206592))))

(assert (=> bs!1085293 (= (= lt!1847453 lt!1846924) (= lambda!206594 lambda!206580))))

(assert (=> bs!1085293 (= (= lt!1847453 lt!1847377) (= lambda!206594 lambda!206581))))

(assert (=> bs!1085294 (= (= lt!1847453 lt!1846924) (= lambda!206594 lambda!206584))))

(assert (=> b!4688044 true))

(declare-fun bs!1085295 () Bool)

(declare-fun d!1489804 () Bool)

(assert (= bs!1085295 (and d!1489804 b!4687734)))

(declare-fun lt!1847462 () ListMap!4941)

(declare-fun lambda!206595 () Int)

(assert (=> bs!1085295 (= (= lt!1847462 lt!1846924) (= lambda!206595 lambda!206511))))

(declare-fun bs!1085296 () Bool)

(assert (= bs!1085296 (and d!1489804 b!4688030)))

(assert (=> bs!1085296 (= (= lt!1847462 lt!1846924) (= lambda!206595 lambda!206588))))

(declare-fun bs!1085297 () Bool)

(assert (= bs!1085297 (and d!1489804 d!1489742)))

(assert (=> bs!1085297 (not (= lambda!206595 lambda!206567))))

(declare-fun bs!1085298 () Bool)

(assert (= bs!1085298 (and d!1489804 d!1489794)))

(assert (=> bs!1085298 (= (= lt!1847462 lt!1847432) (= lambda!206595 lambda!206591))))

(declare-fun bs!1085299 () Bool)

(assert (= bs!1085299 (and d!1489804 d!1489782)))

(assert (=> bs!1085299 (= (= lt!1847462 lt!1847386) (= lambda!206595 lambda!206582))))

(declare-fun bs!1085300 () Bool)

(assert (= bs!1085300 (and d!1489804 b!4688028)))

(assert (=> bs!1085300 (= (= lt!1847462 lt!1847423) (= lambda!206595 lambda!206590))))

(declare-fun bs!1085301 () Bool)

(assert (= bs!1085301 (and d!1489804 b!4688023)))

(assert (=> bs!1085301 (= (= lt!1847462 lt!1846924) (= lambda!206595 lambda!206585))))

(declare-fun bs!1085302 () Bool)

(assert (= bs!1085302 (and d!1489804 b!4687736)))

(assert (=> bs!1085302 (= (= lt!1847462 lt!1846924) (= lambda!206595 lambda!206510))))

(assert (=> bs!1085295 (= (= lt!1847462 lt!1847092) (= lambda!206595 lambda!206512))))

(declare-fun bs!1085303 () Bool)

(assert (= bs!1085303 (and d!1489804 d!1489752)))

(assert (=> bs!1085303 (not (= lambda!206595 lambda!206571))))

(declare-fun bs!1085304 () Bool)

(assert (= bs!1085304 (and d!1489804 b!4688044)))

(assert (=> bs!1085304 (= (= lt!1847462 lt!1846924) (= lambda!206595 lambda!206593))))

(assert (=> bs!1085300 (= (= lt!1847462 lt!1846924) (= lambda!206595 lambda!206589))))

(declare-fun bs!1085305 () Bool)

(assert (= bs!1085305 (and d!1489804 d!1489610)))

(assert (=> bs!1085305 (= (= lt!1847462 lt!1847101) (= lambda!206595 lambda!206514))))

(declare-fun bs!1085306 () Bool)

(assert (= bs!1085306 (and d!1489804 d!1489790)))

(assert (=> bs!1085306 (= (= lt!1847462 lt!1847411) (= lambda!206595 lambda!206587))))

(declare-fun bs!1085307 () Bool)

(assert (= bs!1085307 (and d!1489804 b!4688018)))

(assert (=> bs!1085307 (= (= lt!1847462 lt!1846924) (= lambda!206595 lambda!206579))))

(declare-fun bs!1085308 () Bool)

(assert (= bs!1085308 (and d!1489804 b!4688046)))

(assert (=> bs!1085308 (= (= lt!1847462 lt!1846924) (= lambda!206595 lambda!206592))))

(declare-fun bs!1085309 () Bool)

(assert (= bs!1085309 (and d!1489804 b!4688016)))

(assert (=> bs!1085309 (= (= lt!1847462 lt!1846924) (= lambda!206595 lambda!206580))))

(assert (=> bs!1085304 (= (= lt!1847462 lt!1847453) (= lambda!206595 lambda!206594))))

(assert (=> bs!1085301 (= (= lt!1847462 lt!1847402) (= lambda!206595 lambda!206586))))

(assert (=> bs!1085309 (= (= lt!1847462 lt!1847377) (= lambda!206595 lambda!206581))))

(declare-fun bs!1085310 () Bool)

(assert (= bs!1085310 (and d!1489804 b!4688025)))

(assert (=> bs!1085310 (= (= lt!1847462 lt!1846924) (= lambda!206595 lambda!206584))))

(assert (=> d!1489804 true))

(declare-fun e!2924715 () ListMap!4941)

(assert (=> b!4688044 (= e!2924715 lt!1847453)))

(declare-fun lt!1847460 () ListMap!4941)

(assert (=> b!4688044 (= lt!1847460 (+!2128 lt!1846924 (h!58618 (Cons!52381 lt!1846921 lt!1846926))))))

(assert (=> b!4688044 (= lt!1847453 (addToMapMapFromBucket!1276 (t!359673 (Cons!52381 lt!1846921 lt!1846926)) (+!2128 lt!1846924 (h!58618 (Cons!52381 lt!1846921 lt!1846926)))))))

(declare-fun lt!1847449 () Unit!123525)

(declare-fun call!327606 () Unit!123525)

(assert (=> b!4688044 (= lt!1847449 call!327606)))

(assert (=> b!4688044 (forall!11305 (toList!5577 lt!1846924) lambda!206593)))

(declare-fun lt!1847452 () Unit!123525)

(assert (=> b!4688044 (= lt!1847452 lt!1847449)))

(assert (=> b!4688044 (forall!11305 (toList!5577 lt!1847460) lambda!206594)))

(declare-fun lt!1847451 () Unit!123525)

(declare-fun Unit!123636 () Unit!123525)

(assert (=> b!4688044 (= lt!1847451 Unit!123636)))

(assert (=> b!4688044 (forall!11305 (t!359673 (Cons!52381 lt!1846921 lt!1846926)) lambda!206594)))

(declare-fun lt!1847457 () Unit!123525)

(declare-fun Unit!123637 () Unit!123525)

(assert (=> b!4688044 (= lt!1847457 Unit!123637)))

(declare-fun lt!1847446 () Unit!123525)

(declare-fun Unit!123638 () Unit!123525)

(assert (=> b!4688044 (= lt!1847446 Unit!123638)))

(declare-fun lt!1847463 () Unit!123525)

(assert (=> b!4688044 (= lt!1847463 (forallContained!3412 (toList!5577 lt!1847460) lambda!206594 (h!58618 (Cons!52381 lt!1846921 lt!1846926))))))

(assert (=> b!4688044 (contains!15562 lt!1847460 (_1!30179 (h!58618 (Cons!52381 lt!1846921 lt!1846926))))))

(declare-fun lt!1847461 () Unit!123525)

(declare-fun Unit!123639 () Unit!123525)

(assert (=> b!4688044 (= lt!1847461 Unit!123639)))

(assert (=> b!4688044 (contains!15562 lt!1847453 (_1!30179 (h!58618 (Cons!52381 lt!1846921 lt!1846926))))))

(declare-fun lt!1847464 () Unit!123525)

(declare-fun Unit!123640 () Unit!123525)

(assert (=> b!4688044 (= lt!1847464 Unit!123640)))

(declare-fun call!327605 () Bool)

(assert (=> b!4688044 call!327605))

(declare-fun lt!1847455 () Unit!123525)

(declare-fun Unit!123641 () Unit!123525)

(assert (=> b!4688044 (= lt!1847455 Unit!123641)))

(declare-fun call!327607 () Bool)

(assert (=> b!4688044 call!327607))

(declare-fun lt!1847458 () Unit!123525)

(declare-fun Unit!123642 () Unit!123525)

(assert (=> b!4688044 (= lt!1847458 Unit!123642)))

(declare-fun lt!1847450 () Unit!123525)

(declare-fun Unit!123643 () Unit!123525)

(assert (=> b!4688044 (= lt!1847450 Unit!123643)))

(declare-fun lt!1847444 () Unit!123525)

(assert (=> b!4688044 (= lt!1847444 (addForallContainsKeyThenBeforeAdding!689 lt!1846924 lt!1847453 (_1!30179 (h!58618 (Cons!52381 lt!1846921 lt!1846926))) (_2!30179 (h!58618 (Cons!52381 lt!1846921 lt!1846926)))))))

(assert (=> b!4688044 (forall!11305 (toList!5577 lt!1846924) lambda!206594)))

(declare-fun lt!1847448 () Unit!123525)

(assert (=> b!4688044 (= lt!1847448 lt!1847444)))

(assert (=> b!4688044 (forall!11305 (toList!5577 lt!1846924) lambda!206594)))

(declare-fun lt!1847454 () Unit!123525)

(declare-fun Unit!123644 () Unit!123525)

(assert (=> b!4688044 (= lt!1847454 Unit!123644)))

(declare-fun res!1977022 () Bool)

(assert (=> b!4688044 (= res!1977022 (forall!11305 (Cons!52381 lt!1846921 lt!1846926) lambda!206594))))

(declare-fun e!2924714 () Bool)

(assert (=> b!4688044 (=> (not res!1977022) (not e!2924714))))

(assert (=> b!4688044 e!2924714))

(declare-fun lt!1847459 () Unit!123525)

(declare-fun Unit!123645 () Unit!123525)

(assert (=> b!4688044 (= lt!1847459 Unit!123645)))

(declare-fun c!801601 () Bool)

(declare-fun bm!327600 () Bool)

(assert (=> bm!327600 (= call!327607 (forall!11305 (ite c!801601 (toList!5577 lt!1846924) (toList!5577 lt!1847460)) (ite c!801601 lambda!206592 lambda!206594)))))

(declare-fun b!4688045 () Bool)

(declare-fun res!1977021 () Bool)

(declare-fun e!2924713 () Bool)

(assert (=> b!4688045 (=> (not res!1977021) (not e!2924713))))

(assert (=> b!4688045 (= res!1977021 (forall!11305 (toList!5577 lt!1846924) lambda!206595))))

(assert (=> b!4688046 (= e!2924715 lt!1846924)))

(declare-fun lt!1847445 () Unit!123525)

(assert (=> b!4688046 (= lt!1847445 call!327606)))

(assert (=> b!4688046 call!327605))

(declare-fun lt!1847447 () Unit!123525)

(assert (=> b!4688046 (= lt!1847447 lt!1847445)))

(assert (=> b!4688046 call!327607))

(declare-fun lt!1847456 () Unit!123525)

(declare-fun Unit!123646 () Unit!123525)

(assert (=> b!4688046 (= lt!1847456 Unit!123646)))

(assert (=> d!1489804 e!2924713))

(declare-fun res!1977023 () Bool)

(assert (=> d!1489804 (=> (not res!1977023) (not e!2924713))))

(assert (=> d!1489804 (= res!1977023 (forall!11305 (Cons!52381 lt!1846921 lt!1846926) lambda!206595))))

(assert (=> d!1489804 (= lt!1847462 e!2924715)))

(assert (=> d!1489804 (= c!801601 ((_ is Nil!52381) (Cons!52381 lt!1846921 lt!1846926)))))

(assert (=> d!1489804 (noDuplicateKeys!1844 (Cons!52381 lt!1846921 lt!1846926))))

(assert (=> d!1489804 (= (addToMapMapFromBucket!1276 (Cons!52381 lt!1846921 lt!1846926) lt!1846924) lt!1847462)))

(declare-fun b!4688047 () Bool)

(assert (=> b!4688047 (= e!2924714 (forall!11305 (toList!5577 lt!1846924) lambda!206594))))

(declare-fun b!4688048 () Bool)

(assert (=> b!4688048 (= e!2924713 (invariantList!1402 (toList!5577 lt!1847462)))))

(declare-fun bm!327601 () Bool)

(assert (=> bm!327601 (= call!327606 (lemmaContainsAllItsOwnKeys!690 lt!1846924))))

(declare-fun bm!327602 () Bool)

(assert (=> bm!327602 (= call!327605 (forall!11305 (ite c!801601 (toList!5577 lt!1846924) (Cons!52381 lt!1846921 lt!1846926)) (ite c!801601 lambda!206592 lambda!206594)))))

(assert (= (and d!1489804 c!801601) b!4688046))

(assert (= (and d!1489804 (not c!801601)) b!4688044))

(assert (= (and b!4688044 res!1977022) b!4688047))

(assert (= (or b!4688046 b!4688044) bm!327601))

(assert (= (or b!4688046 b!4688044) bm!327600))

(assert (= (or b!4688046 b!4688044) bm!327602))

(assert (= (and d!1489804 res!1977023) b!4688045))

(assert (= (and b!4688045 res!1977021) b!4688048))

(declare-fun m!5588483 () Bool)

(assert (=> bm!327602 m!5588483))

(declare-fun m!5588485 () Bool)

(assert (=> b!4688045 m!5588485))

(declare-fun m!5588487 () Bool)

(assert (=> b!4688047 m!5588487))

(declare-fun m!5588489 () Bool)

(assert (=> b!4688048 m!5588489))

(assert (=> b!4688044 m!5588487))

(declare-fun m!5588491 () Bool)

(assert (=> b!4688044 m!5588491))

(declare-fun m!5588493 () Bool)

(assert (=> b!4688044 m!5588493))

(declare-fun m!5588495 () Bool)

(assert (=> b!4688044 m!5588495))

(assert (=> b!4688044 m!5588487))

(declare-fun m!5588497 () Bool)

(assert (=> b!4688044 m!5588497))

(declare-fun m!5588499 () Bool)

(assert (=> b!4688044 m!5588499))

(declare-fun m!5588501 () Bool)

(assert (=> b!4688044 m!5588501))

(assert (=> b!4688044 m!5588501))

(declare-fun m!5588503 () Bool)

(assert (=> b!4688044 m!5588503))

(declare-fun m!5588505 () Bool)

(assert (=> b!4688044 m!5588505))

(declare-fun m!5588507 () Bool)

(assert (=> b!4688044 m!5588507))

(declare-fun m!5588509 () Bool)

(assert (=> b!4688044 m!5588509))

(assert (=> bm!327601 m!5587875))

(declare-fun m!5588511 () Bool)

(assert (=> d!1489804 m!5588511))

(declare-fun m!5588513 () Bool)

(assert (=> d!1489804 m!5588513))

(declare-fun m!5588515 () Bool)

(assert (=> bm!327600 m!5588515))

(assert (=> b!4687627 d!1489804))

(declare-fun b!4688053 () Bool)

(declare-fun e!2924718 () Bool)

(declare-fun tp!1345762 () Bool)

(declare-fun tp!1345763 () Bool)

(assert (=> b!4688053 (= e!2924718 (and tp!1345762 tp!1345763))))

(assert (=> b!4687640 (= tp!1345745 e!2924718)))

(assert (= (and b!4687640 ((_ is Cons!52382) (toList!5578 lm!2023))) b!4688053))

(declare-fun tp!1345766 () Bool)

(declare-fun e!2924721 () Bool)

(declare-fun b!4688058 () Bool)

(assert (=> b!4688058 (= e!2924721 (and tp_is_empty!30669 tp_is_empty!30671 tp!1345766))))

(assert (=> b!4687633 (= tp!1345747 e!2924721)))

(assert (= (and b!4687633 ((_ is Cons!52381) (t!359673 newBucket!218))) b!4688058))

(declare-fun b!4688059 () Bool)

(declare-fun tp!1345767 () Bool)

(declare-fun e!2924722 () Bool)

(assert (=> b!4688059 (= e!2924722 (and tp_is_empty!30669 tp_is_empty!30671 tp!1345767))))

(assert (=> b!4687638 (= tp!1345746 e!2924722)))

(assert (= (and b!4687638 ((_ is Cons!52381) (t!359673 oldBucket!34))) b!4688059))

(declare-fun b_lambda!176919 () Bool)

(assert (= b_lambda!176917 (or start!473936 b_lambda!176919)))

(declare-fun bs!1085311 () Bool)

(declare-fun d!1489806 () Bool)

(assert (= bs!1085311 (and d!1489806 start!473936)))

(assert (=> bs!1085311 (= (dynLambda!21705 lambda!206447 (h!58619 (Cons!52382 (tuple2!53773 hash!405 lt!1846926) (t!359674 (toList!5578 lm!2023))))) (noDuplicateKeys!1844 (_2!30180 (h!58619 (Cons!52382 (tuple2!53773 hash!405 lt!1846926) (t!359674 (toList!5578 lm!2023)))))))))

(declare-fun m!5588517 () Bool)

(assert (=> bs!1085311 m!5588517))

(assert (=> b!4688033 d!1489806))

(declare-fun b_lambda!176921 () Bool)

(assert (= b_lambda!176909 (or start!473936 b_lambda!176921)))

(declare-fun bs!1085312 () Bool)

(declare-fun d!1489808 () Bool)

(assert (= bs!1085312 (and d!1489808 start!473936)))

(assert (=> bs!1085312 (= (dynLambda!21705 lambda!206447 (h!58619 (toList!5578 lm!2023))) (noDuplicateKeys!1844 (_2!30180 (h!58619 (toList!5578 lm!2023)))))))

(assert (=> bs!1085312 m!5587879))

(assert (=> b!4687976 d!1489808))

(declare-fun b_lambda!176923 () Bool)

(assert (= b_lambda!176907 (or start!473936 b_lambda!176923)))

(declare-fun bs!1085313 () Bool)

(declare-fun d!1489810 () Bool)

(assert (= bs!1085313 (and d!1489810 start!473936)))

(assert (=> bs!1085313 (= (dynLambda!21705 lambda!206447 lt!1846927) (noDuplicateKeys!1844 (_2!30180 lt!1846927)))))

(declare-fun m!5588519 () Bool)

(assert (=> bs!1085313 m!5588519))

(assert (=> d!1489724 d!1489810))

(check-sat (not d!1489804) (not b!4688038) (not b!4688031) (not b!4687839) (not bm!327571) (not b!4688032) (not d!1489786) (not b!4687734) (not b!4687813) (not b!4688009) (not b!4687906) (not d!1489678) (not b!4687647) (not b!4688047) (not d!1489792) (not d!1489740) (not d!1489674) (not d!1489798) (not b!4687977) (not bm!327595) (not b!4688029) (not d!1489688) (not b!4687872) (not b!4687818) (not b!4687816) (not bm!327597) (not b!4687822) (not b!4687826) (not b!4688010) (not b!4688045) (not b!4687908) (not d!1489728) (not d!1489696) (not b!4688035) (not bm!327599) (not b!4688023) (not d!1489782) (not b!4688036) (not bs!1085313) (not bs!1085312) tp_is_empty!30669 (not b!4687832) (not d!1489802) (not bm!327596) (not b!4688028) (not d!1489742) (not b!4687828) (not b!4687914) (not b!4688059) (not d!1489726) (not b!4688020) (not b!4687814) (not b!4688039) (not d!1489640) (not b_lambda!176923) (not d!1489774) (not d!1489750) (not bm!327572) (not d!1489790) (not b!4687916) (not b!4688001) tp_is_empty!30671 (not b!4687829) (not b!4687815) (not bm!327594) (not d!1489758) (not b!4688044) (not b!4687820) (not bm!327598) (not d!1489788) (not d!1489722) (not b_lambda!176921) (not b!4688019) (not b!4687920) (not d!1489644) (not d!1489756) (not b!4688016) (not b!4687735) (not b!4687646) (not b!4687756) (not b!4688048) (not bm!327573) (not b!4687952) (not b!4688027) (not bs!1085311) (not bm!327592) (not d!1489652) (not d!1489648) (not b!4688058) (not d!1489772) (not b!4687978) (not d!1489692) (not b!4687907) (not bm!327585) (not b!4687737) (not d!1489794) (not bm!327600) (not d!1489654) (not bm!327602) (not b!4688037) (not b!4687949) (not b!4688034) (not d!1489682) (not b!4687775) (not b!4688053) (not b!4687812) (not bm!327590) (not b!4687870) (not b!4687905) (not bm!327601) (not b!4688024) (not d!1489784) (not b!4688002) (not d!1489716) (not b!4688021) (not d!1489610) (not d!1489698) (not b!4687738) (not bm!327593) (not b_lambda!176919) (not d!1489724) (not d!1489752) (not bm!327591) (not d!1489656) (not b!4688043) (not b!4688041) (not b!4687956) (not b!4688017) (not b!4688026) (not b!4687951) (not b!4687955))
(check-sat)
