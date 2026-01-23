; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!428392 () Bool)

(assert start!428392)

(declare-fun b!4403734 () Bool)

(declare-fun res!1816705 () Bool)

(declare-fun e!2742079 () Bool)

(assert (=> b!4403734 (=> res!1816705 e!2742079)))

(declare-datatypes ((K!10655 0))(
  ( (K!10656 (val!16795 Int)) )
))
(declare-datatypes ((V!10901 0))(
  ( (V!10902 (val!16796 Int)) )
))
(declare-datatypes ((tuple2!48910 0))(
  ( (tuple2!48911 (_1!27749 K!10655) (_2!27749 V!10901)) )
))
(declare-datatypes ((List!49424 0))(
  ( (Nil!49300) (Cons!49300 (h!54931 tuple2!48910) (t!356358 List!49424)) )
))
(declare-fun newBucket!200 () List!49424)

(declare-fun noDuplicateKeys!635 (List!49424) Bool)

(assert (=> b!4403734 (= res!1816705 (not (noDuplicateKeys!635 newBucket!200)))))

(declare-fun b!4403735 () Bool)

(declare-fun e!2742081 () Bool)

(declare-datatypes ((tuple2!48912 0))(
  ( (tuple2!48913 (_1!27750 (_ BitVec 64)) (_2!27750 List!49424)) )
))
(declare-datatypes ((List!49425 0))(
  ( (Nil!49301) (Cons!49301 (h!54932 tuple2!48912) (t!356359 List!49425)) )
))
(declare-datatypes ((ListLongMap!1903 0))(
  ( (ListLongMap!1904 (toList!3253 List!49425)) )
))
(declare-fun lm!1707 () ListLongMap!1903)

(declare-fun key!3918 () K!10655)

(declare-fun containsKey!953 (List!49424 K!10655) Bool)

(assert (=> b!4403735 (= e!2742081 (not (containsKey!953 (_2!27750 (h!54932 (toList!3253 lm!1707))) key!3918)))))

(declare-fun b!4403736 () Bool)

(declare-fun e!2742085 () Bool)

(declare-fun e!2742084 () Bool)

(assert (=> b!4403736 (= e!2742085 e!2742084)))

(declare-fun res!1816711 () Bool)

(assert (=> b!4403736 (=> (not res!1816711) (not e!2742084))))

(declare-datatypes ((ListMap!2497 0))(
  ( (ListMap!2498 (toList!3254 List!49424)) )
))
(declare-fun lt!1608084 () ListMap!2497)

(declare-fun contains!11701 (ListMap!2497 K!10655) Bool)

(assert (=> b!4403736 (= res!1816711 (contains!11701 lt!1608084 key!3918))))

(declare-fun extractMap!694 (List!49425) ListMap!2497)

(assert (=> b!4403736 (= lt!1608084 (extractMap!694 (toList!3253 lm!1707)))))

(declare-fun b!4403737 () Bool)

(declare-fun e!2742083 () Bool)

(assert (=> b!4403737 (= e!2742083 true)))

(declare-fun e!2742086 () Bool)

(assert (=> b!4403737 e!2742086))

(declare-fun res!1816708 () Bool)

(assert (=> b!4403737 (=> (not res!1816708) (not e!2742086))))

(declare-fun lt!1608079 () ListLongMap!1903)

(declare-fun lt!1608076 () tuple2!48910)

(declare-fun lt!1608078 () ListMap!2497)

(declare-fun lt!1608081 () tuple2!48912)

(declare-fun eq!341 (ListMap!2497 ListMap!2497) Bool)

(declare-fun +!885 (ListLongMap!1903 tuple2!48912) ListLongMap!1903)

(declare-fun +!886 (ListMap!2497 tuple2!48910) ListMap!2497)

(assert (=> b!4403737 (= res!1816708 (eq!341 (extractMap!694 (toList!3253 (+!885 lt!1608079 lt!1608081))) (+!886 lt!1608078 lt!1608076)))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Unit!79203 0))(
  ( (Unit!79204) )
))
(declare-fun lt!1608088 () Unit!79203)

(declare-fun newValue!99 () V!10901)

(declare-datatypes ((Hashable!5027 0))(
  ( (HashableExt!5026 (__x!30730 Int)) )
))
(declare-fun hashF!1247 () Hashable!5027)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!139 (ListLongMap!1903 (_ BitVec 64) List!49424 K!10655 V!10901 Hashable!5027) Unit!79203)

(assert (=> b!4403737 (= lt!1608088 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!139 lt!1608079 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4403737 (contains!11701 lt!1608078 key!3918)))

(assert (=> b!4403737 (= lt!1608078 (extractMap!694 (toList!3253 lt!1608079)))))

(declare-fun tail!7127 (ListLongMap!1903) ListLongMap!1903)

(assert (=> b!4403737 (= lt!1608079 (tail!7127 lm!1707))))

(declare-fun lt!1608086 () ListMap!2497)

(assert (=> b!4403737 (contains!11701 lt!1608086 key!3918)))

(declare-fun lt!1608085 () Unit!79203)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!94 (List!49424 K!10655 V!10901 ListMap!2497) Unit!79203)

(assert (=> b!4403737 (= lt!1608085 (lemmaAddToMapContainsAndNotInListThenInAcc!94 (_2!27750 (h!54932 (toList!3253 lm!1707))) key!3918 newValue!99 lt!1608086))))

(assert (=> b!4403737 (= lt!1608086 (extractMap!694 (t!356359 (toList!3253 lm!1707))))))

(assert (=> b!4403737 e!2742081))

(declare-fun res!1816713 () Bool)

(assert (=> b!4403737 (=> (not res!1816713) (not e!2742081))))

(declare-fun apply!11487 (ListLongMap!1903 (_ BitVec 64)) List!49424)

(assert (=> b!4403737 (= res!1816713 (not (containsKey!953 (apply!11487 lm!1707 (_1!27750 (h!54932 (toList!3253 lm!1707)))) key!3918)))))

(declare-fun lt!1608087 () Unit!79203)

(declare-fun lemmaNotSameHashThenCannotContainKey!106 (ListLongMap!1903 K!10655 (_ BitVec 64) Hashable!5027) Unit!79203)

(assert (=> b!4403737 (= lt!1608087 (lemmaNotSameHashThenCannotContainKey!106 lm!1707 key!3918 (_1!27750 (h!54932 (toList!3253 lm!1707))) hashF!1247))))

(declare-fun b!4403738 () Bool)

(declare-fun e!2742080 () Bool)

(declare-fun tp!1331937 () Bool)

(assert (=> b!4403738 (= e!2742080 tp!1331937)))

(declare-fun b!4403739 () Bool)

(declare-fun res!1816709 () Bool)

(assert (=> b!4403739 (=> (not res!1816709) (not e!2742085))))

(declare-fun hash!1901 (Hashable!5027 K!10655) (_ BitVec 64))

(assert (=> b!4403739 (= res!1816709 (= (hash!1901 hashF!1247 key!3918) hash!377))))

(declare-fun res!1816712 () Bool)

(assert (=> start!428392 (=> (not res!1816712) (not e!2742085))))

(declare-fun lambda!149467 () Int)

(declare-fun forall!9384 (List!49425 Int) Bool)

(assert (=> start!428392 (= res!1816712 (forall!9384 (toList!3253 lm!1707) lambda!149467))))

(assert (=> start!428392 e!2742085))

(declare-fun e!2742082 () Bool)

(assert (=> start!428392 e!2742082))

(assert (=> start!428392 true))

(declare-fun inv!64841 (ListLongMap!1903) Bool)

(assert (=> start!428392 (and (inv!64841 lm!1707) e!2742080)))

(declare-fun tp_is_empty!25777 () Bool)

(assert (=> start!428392 tp_is_empty!25777))

(declare-fun tp_is_empty!25779 () Bool)

(assert (=> start!428392 tp_is_empty!25779))

(declare-fun b!4403740 () Bool)

(assert (=> b!4403740 (= e!2742084 (not e!2742079))))

(declare-fun res!1816706 () Bool)

(assert (=> b!4403740 (=> res!1816706 e!2742079)))

(declare-fun lt!1608089 () List!49424)

(declare-fun removePairForKey!603 (List!49424 K!10655) List!49424)

(assert (=> b!4403740 (= res!1816706 (not (= newBucket!200 (Cons!49300 lt!1608076 (removePairForKey!603 lt!1608089 key!3918)))))))

(assert (=> b!4403740 (= lt!1608076 (tuple2!48911 key!3918 newValue!99))))

(declare-fun lt!1608090 () Unit!79203)

(declare-fun lt!1608083 () tuple2!48912)

(declare-fun forallContained!2019 (List!49425 Int tuple2!48912) Unit!79203)

(assert (=> b!4403740 (= lt!1608090 (forallContained!2019 (toList!3253 lm!1707) lambda!149467 lt!1608083))))

(declare-fun contains!11702 (List!49425 tuple2!48912) Bool)

(assert (=> b!4403740 (contains!11702 (toList!3253 lm!1707) lt!1608083)))

(assert (=> b!4403740 (= lt!1608083 (tuple2!48913 hash!377 lt!1608089))))

(declare-fun lt!1608080 () Unit!79203)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!480 (List!49425 (_ BitVec 64) List!49424) Unit!79203)

(assert (=> b!4403740 (= lt!1608080 (lemmaGetValueByKeyImpliesContainsTuple!480 (toList!3253 lm!1707) hash!377 lt!1608089))))

(assert (=> b!4403740 (= lt!1608089 (apply!11487 lm!1707 hash!377))))

(declare-fun b!4403741 () Bool)

(declare-fun e!2742078 () Bool)

(declare-fun lt!1608082 () ListLongMap!1903)

(assert (=> b!4403741 (= e!2742078 (forall!9384 (toList!3253 lt!1608082) lambda!149467))))

(declare-fun b!4403742 () Bool)

(declare-fun res!1816707 () Bool)

(assert (=> b!4403742 (=> (not res!1816707) (not e!2742085))))

(declare-fun allKeysSameHash!593 (List!49424 (_ BitVec 64) Hashable!5027) Bool)

(assert (=> b!4403742 (= res!1816707 (allKeysSameHash!593 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4403743 () Bool)

(declare-fun res!1816716 () Bool)

(assert (=> b!4403743 (=> (not res!1816716) (not e!2742084))))

(declare-fun contains!11703 (ListLongMap!1903 (_ BitVec 64)) Bool)

(assert (=> b!4403743 (= res!1816716 (contains!11703 lm!1707 hash!377))))

(declare-fun b!4403744 () Bool)

(declare-fun addToMapMapFromBucket!301 (List!49424 ListMap!2497) ListMap!2497)

(assert (=> b!4403744 (= e!2742086 (= lt!1608084 (addToMapMapFromBucket!301 (_2!27750 (h!54932 (toList!3253 lm!1707))) lt!1608078)))))

(declare-fun tp!1331938 () Bool)

(declare-fun b!4403745 () Bool)

(assert (=> b!4403745 (= e!2742082 (and tp_is_empty!25777 tp_is_empty!25779 tp!1331938))))

(declare-fun b!4403746 () Bool)

(assert (=> b!4403746 (= e!2742079 e!2742083)))

(declare-fun res!1816710 () Bool)

(assert (=> b!4403746 (=> res!1816710 e!2742083)))

(get-info :version)

(assert (=> b!4403746 (= res!1816710 (or (and ((_ is Cons!49301) (toList!3253 lm!1707)) (= (_1!27750 (h!54932 (toList!3253 lm!1707))) hash!377)) (not ((_ is Cons!49301) (toList!3253 lm!1707))) (= (_1!27750 (h!54932 (toList!3253 lm!1707))) hash!377)))))

(assert (=> b!4403746 e!2742078))

(declare-fun res!1816717 () Bool)

(assert (=> b!4403746 (=> (not res!1816717) (not e!2742078))))

(assert (=> b!4403746 (= res!1816717 (forall!9384 (toList!3253 lt!1608082) lambda!149467))))

(assert (=> b!4403746 (= lt!1608082 (+!885 lm!1707 lt!1608081))))

(assert (=> b!4403746 (= lt!1608081 (tuple2!48913 hash!377 newBucket!200))))

(declare-fun lt!1608077 () Unit!79203)

(declare-fun addValidProp!281 (ListLongMap!1903 Int (_ BitVec 64) List!49424) Unit!79203)

(assert (=> b!4403746 (= lt!1608077 (addValidProp!281 lm!1707 lambda!149467 hash!377 newBucket!200))))

(assert (=> b!4403746 (forall!9384 (toList!3253 lm!1707) lambda!149467)))

(declare-fun b!4403747 () Bool)

(declare-fun res!1816714 () Bool)

(assert (=> b!4403747 (=> (not res!1816714) (not e!2742086))))

(declare-fun head!9116 (ListLongMap!1903) tuple2!48912)

(assert (=> b!4403747 (= res!1816714 (not (= (head!9116 lm!1707) lt!1608081)))))

(declare-fun b!4403748 () Bool)

(declare-fun res!1816715 () Bool)

(assert (=> b!4403748 (=> (not res!1816715) (not e!2742085))))

(declare-fun allKeysSameHashInMap!739 (ListLongMap!1903 Hashable!5027) Bool)

(assert (=> b!4403748 (= res!1816715 (allKeysSameHashInMap!739 lm!1707 hashF!1247))))

(assert (= (and start!428392 res!1816712) b!4403748))

(assert (= (and b!4403748 res!1816715) b!4403739))

(assert (= (and b!4403739 res!1816709) b!4403742))

(assert (= (and b!4403742 res!1816707) b!4403736))

(assert (= (and b!4403736 res!1816711) b!4403743))

(assert (= (and b!4403743 res!1816716) b!4403740))

(assert (= (and b!4403740 (not res!1816706)) b!4403734))

(assert (= (and b!4403734 (not res!1816705)) b!4403746))

(assert (= (and b!4403746 res!1816717) b!4403741))

(assert (= (and b!4403746 (not res!1816710)) b!4403737))

(assert (= (and b!4403737 res!1816713) b!4403735))

(assert (= (and b!4403737 res!1816708) b!4403747))

(assert (= (and b!4403747 res!1816714) b!4403744))

(assert (= (and start!428392 ((_ is Cons!49300) newBucket!200)) b!4403745))

(assert (= start!428392 b!4403738))

(declare-fun m!5068661 () Bool)

(assert (=> b!4403744 m!5068661))

(declare-fun m!5068663 () Bool)

(assert (=> b!4403748 m!5068663))

(declare-fun m!5068665 () Bool)

(assert (=> b!4403747 m!5068665))

(declare-fun m!5068667 () Bool)

(assert (=> b!4403740 m!5068667))

(declare-fun m!5068669 () Bool)

(assert (=> b!4403740 m!5068669))

(declare-fun m!5068671 () Bool)

(assert (=> b!4403740 m!5068671))

(declare-fun m!5068673 () Bool)

(assert (=> b!4403740 m!5068673))

(declare-fun m!5068675 () Bool)

(assert (=> b!4403740 m!5068675))

(declare-fun m!5068677 () Bool)

(assert (=> b!4403734 m!5068677))

(declare-fun m!5068679 () Bool)

(assert (=> b!4403743 m!5068679))

(declare-fun m!5068681 () Bool)

(assert (=> b!4403742 m!5068681))

(declare-fun m!5068683 () Bool)

(assert (=> b!4403735 m!5068683))

(declare-fun m!5068685 () Bool)

(assert (=> start!428392 m!5068685))

(declare-fun m!5068687 () Bool)

(assert (=> start!428392 m!5068687))

(declare-fun m!5068689 () Bool)

(assert (=> b!4403739 m!5068689))

(declare-fun m!5068691 () Bool)

(assert (=> b!4403736 m!5068691))

(declare-fun m!5068693 () Bool)

(assert (=> b!4403736 m!5068693))

(declare-fun m!5068695 () Bool)

(assert (=> b!4403737 m!5068695))

(declare-fun m!5068697 () Bool)

(assert (=> b!4403737 m!5068697))

(declare-fun m!5068699 () Bool)

(assert (=> b!4403737 m!5068699))

(declare-fun m!5068701 () Bool)

(assert (=> b!4403737 m!5068701))

(declare-fun m!5068703 () Bool)

(assert (=> b!4403737 m!5068703))

(assert (=> b!4403737 m!5068701))

(declare-fun m!5068705 () Bool)

(assert (=> b!4403737 m!5068705))

(declare-fun m!5068707 () Bool)

(assert (=> b!4403737 m!5068707))

(declare-fun m!5068709 () Bool)

(assert (=> b!4403737 m!5068709))

(declare-fun m!5068711 () Bool)

(assert (=> b!4403737 m!5068711))

(declare-fun m!5068713 () Bool)

(assert (=> b!4403737 m!5068713))

(assert (=> b!4403737 m!5068699))

(declare-fun m!5068715 () Bool)

(assert (=> b!4403737 m!5068715))

(assert (=> b!4403737 m!5068715))

(declare-fun m!5068717 () Bool)

(assert (=> b!4403737 m!5068717))

(declare-fun m!5068719 () Bool)

(assert (=> b!4403737 m!5068719))

(declare-fun m!5068721 () Bool)

(assert (=> b!4403737 m!5068721))

(declare-fun m!5068723 () Bool)

(assert (=> b!4403746 m!5068723))

(declare-fun m!5068725 () Bool)

(assert (=> b!4403746 m!5068725))

(declare-fun m!5068727 () Bool)

(assert (=> b!4403746 m!5068727))

(assert (=> b!4403746 m!5068685))

(assert (=> b!4403741 m!5068723))

(check-sat (not b!4403742) (not b!4403744) (not b!4403739) (not b!4403735) (not b!4403736) (not b!4403746) (not b!4403738) (not b!4403740) (not b!4403741) (not start!428392) (not b!4403748) (not b!4403743) tp_is_empty!25779 (not b!4403737) (not b!4403747) tp_is_empty!25777 (not b!4403745) (not b!4403734))
(check-sat)
