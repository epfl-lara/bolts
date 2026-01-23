; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!428394 () Bool)

(assert start!428394)

(declare-fun res!1816751 () Bool)

(declare-fun e!2742111 () Bool)

(assert (=> start!428394 (=> (not res!1816751) (not e!2742111))))

(declare-datatypes ((V!10904 0))(
  ( (V!10905 (val!16797 Int)) )
))
(declare-datatypes ((K!10658 0))(
  ( (K!10659 (val!16798 Int)) )
))
(declare-datatypes ((tuple2!48914 0))(
  ( (tuple2!48915 (_1!27751 K!10658) (_2!27751 V!10904)) )
))
(declare-datatypes ((List!49426 0))(
  ( (Nil!49302) (Cons!49302 (h!54933 tuple2!48914) (t!356360 List!49426)) )
))
(declare-datatypes ((tuple2!48916 0))(
  ( (tuple2!48917 (_1!27752 (_ BitVec 64)) (_2!27752 List!49426)) )
))
(declare-datatypes ((List!49427 0))(
  ( (Nil!49303) (Cons!49303 (h!54934 tuple2!48916) (t!356361 List!49427)) )
))
(declare-datatypes ((ListLongMap!1905 0))(
  ( (ListLongMap!1906 (toList!3255 List!49427)) )
))
(declare-fun lm!1707 () ListLongMap!1905)

(declare-fun lambda!149478 () Int)

(declare-fun forall!9385 (List!49427 Int) Bool)

(assert (=> start!428394 (= res!1816751 (forall!9385 (toList!3255 lm!1707) lambda!149478))))

(assert (=> start!428394 e!2742111))

(declare-fun e!2742112 () Bool)

(assert (=> start!428394 e!2742112))

(assert (=> start!428394 true))

(declare-fun e!2742106 () Bool)

(declare-fun inv!64845 (ListLongMap!1905) Bool)

(assert (=> start!428394 (and (inv!64845 lm!1707) e!2742106)))

(declare-fun tp_is_empty!25781 () Bool)

(assert (=> start!428394 tp_is_empty!25781))

(declare-fun tp_is_empty!25783 () Bool)

(assert (=> start!428394 tp_is_empty!25783))

(declare-fun b!4403779 () Bool)

(declare-fun res!1816750 () Bool)

(declare-fun e!2742105 () Bool)

(assert (=> b!4403779 (=> (not res!1816750) (not e!2742105))))

(declare-fun lt!1608129 () tuple2!48916)

(declare-fun head!9117 (ListLongMap!1905) tuple2!48916)

(assert (=> b!4403779 (= res!1816750 (not (= (head!9117 lm!1707) lt!1608129)))))

(declare-fun b!4403780 () Bool)

(declare-fun e!2742107 () Bool)

(declare-fun e!2742113 () Bool)

(assert (=> b!4403780 (= e!2742107 (not e!2742113))))

(declare-fun res!1816752 () Bool)

(assert (=> b!4403780 (=> res!1816752 e!2742113)))

(declare-fun lt!1608128 () List!49426)

(declare-fun newBucket!200 () List!49426)

(declare-fun lt!1608125 () tuple2!48914)

(declare-fun key!3918 () K!10658)

(declare-fun removePairForKey!604 (List!49426 K!10658) List!49426)

(assert (=> b!4403780 (= res!1816752 (not (= newBucket!200 (Cons!49302 lt!1608125 (removePairForKey!604 lt!1608128 key!3918)))))))

(declare-fun newValue!99 () V!10904)

(assert (=> b!4403780 (= lt!1608125 (tuple2!48915 key!3918 newValue!99))))

(declare-datatypes ((Unit!79205 0))(
  ( (Unit!79206) )
))
(declare-fun lt!1608131 () Unit!79205)

(declare-fun lt!1608122 () tuple2!48916)

(declare-fun forallContained!2020 (List!49427 Int tuple2!48916) Unit!79205)

(assert (=> b!4403780 (= lt!1608131 (forallContained!2020 (toList!3255 lm!1707) lambda!149478 lt!1608122))))

(declare-fun contains!11704 (List!49427 tuple2!48916) Bool)

(assert (=> b!4403780 (contains!11704 (toList!3255 lm!1707) lt!1608122)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4403780 (= lt!1608122 (tuple2!48917 hash!377 lt!1608128))))

(declare-fun lt!1608123 () Unit!79205)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!481 (List!49427 (_ BitVec 64) List!49426) Unit!79205)

(assert (=> b!4403780 (= lt!1608123 (lemmaGetValueByKeyImpliesContainsTuple!481 (toList!3255 lm!1707) hash!377 lt!1608128))))

(declare-fun apply!11488 (ListLongMap!1905 (_ BitVec 64)) List!49426)

(assert (=> b!4403780 (= lt!1608128 (apply!11488 lm!1707 hash!377))))

(declare-fun b!4403781 () Bool)

(declare-fun res!1816748 () Bool)

(assert (=> b!4403781 (=> (not res!1816748) (not e!2742111))))

(declare-datatypes ((Hashable!5028 0))(
  ( (HashableExt!5027 (__x!30731 Int)) )
))
(declare-fun hashF!1247 () Hashable!5028)

(declare-fun allKeysSameHash!594 (List!49426 (_ BitVec 64) Hashable!5028) Bool)

(assert (=> b!4403781 (= res!1816748 (allKeysSameHash!594 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4403782 () Bool)

(declare-fun e!2742110 () Bool)

(assert (=> b!4403782 (= e!2742113 e!2742110)))

(declare-fun res!1816754 () Bool)

(assert (=> b!4403782 (=> res!1816754 e!2742110)))

(assert (=> b!4403782 (= res!1816754 (or (and (is-Cons!49303 (toList!3255 lm!1707)) (= (_1!27752 (h!54934 (toList!3255 lm!1707))) hash!377)) (not (is-Cons!49303 (toList!3255 lm!1707))) (= (_1!27752 (h!54934 (toList!3255 lm!1707))) hash!377)))))

(declare-fun e!2742109 () Bool)

(assert (=> b!4403782 e!2742109))

(declare-fun res!1816755 () Bool)

(assert (=> b!4403782 (=> (not res!1816755) (not e!2742109))))

(declare-fun lt!1608130 () ListLongMap!1905)

(assert (=> b!4403782 (= res!1816755 (forall!9385 (toList!3255 lt!1608130) lambda!149478))))

(declare-fun +!887 (ListLongMap!1905 tuple2!48916) ListLongMap!1905)

(assert (=> b!4403782 (= lt!1608130 (+!887 lm!1707 lt!1608129))))

(assert (=> b!4403782 (= lt!1608129 (tuple2!48917 hash!377 newBucket!200))))

(declare-fun lt!1608133 () Unit!79205)

(declare-fun addValidProp!282 (ListLongMap!1905 Int (_ BitVec 64) List!49426) Unit!79205)

(assert (=> b!4403782 (= lt!1608133 (addValidProp!282 lm!1707 lambda!149478 hash!377 newBucket!200))))

(assert (=> b!4403782 (forall!9385 (toList!3255 lm!1707) lambda!149478)))

(declare-fun b!4403783 () Bool)

(declare-fun noDuplicateKeys!636 (List!49426) Bool)

(assert (=> b!4403783 (= e!2742110 (noDuplicateKeys!636 (_2!27752 (h!54934 (toList!3255 lm!1707)))))))

(assert (=> b!4403783 e!2742105))

(declare-fun res!1816749 () Bool)

(assert (=> b!4403783 (=> (not res!1816749) (not e!2742105))))

(declare-datatypes ((ListMap!2499 0))(
  ( (ListMap!2500 (toList!3256 List!49426)) )
))
(declare-fun lt!1608124 () ListMap!2499)

(declare-fun lt!1608135 () ListLongMap!1905)

(declare-fun eq!342 (ListMap!2499 ListMap!2499) Bool)

(declare-fun extractMap!695 (List!49427) ListMap!2499)

(declare-fun +!888 (ListMap!2499 tuple2!48914) ListMap!2499)

(assert (=> b!4403783 (= res!1816749 (eq!342 (extractMap!695 (toList!3255 (+!887 lt!1608135 lt!1608129))) (+!888 lt!1608124 lt!1608125)))))

(declare-fun lt!1608127 () Unit!79205)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!140 (ListLongMap!1905 (_ BitVec 64) List!49426 K!10658 V!10904 Hashable!5028) Unit!79205)

(assert (=> b!4403783 (= lt!1608127 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!140 lt!1608135 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11705 (ListMap!2499 K!10658) Bool)

(assert (=> b!4403783 (contains!11705 lt!1608124 key!3918)))

(assert (=> b!4403783 (= lt!1608124 (extractMap!695 (toList!3255 lt!1608135)))))

(declare-fun tail!7128 (ListLongMap!1905) ListLongMap!1905)

(assert (=> b!4403783 (= lt!1608135 (tail!7128 lm!1707))))

(declare-fun lt!1608134 () ListMap!2499)

(assert (=> b!4403783 (contains!11705 lt!1608134 key!3918)))

(declare-fun lt!1608126 () Unit!79205)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!95 (List!49426 K!10658 V!10904 ListMap!2499) Unit!79205)

(assert (=> b!4403783 (= lt!1608126 (lemmaAddToMapContainsAndNotInListThenInAcc!95 (_2!27752 (h!54934 (toList!3255 lm!1707))) key!3918 newValue!99 lt!1608134))))

(assert (=> b!4403783 (= lt!1608134 (extractMap!695 (t!356361 (toList!3255 lm!1707))))))

(declare-fun e!2742108 () Bool)

(assert (=> b!4403783 e!2742108))

(declare-fun res!1816756 () Bool)

(assert (=> b!4403783 (=> (not res!1816756) (not e!2742108))))

(declare-fun containsKey!954 (List!49426 K!10658) Bool)

(assert (=> b!4403783 (= res!1816756 (not (containsKey!954 (apply!11488 lm!1707 (_1!27752 (h!54934 (toList!3255 lm!1707)))) key!3918)))))

(declare-fun lt!1608132 () Unit!79205)

(declare-fun lemmaNotSameHashThenCannotContainKey!107 (ListLongMap!1905 K!10658 (_ BitVec 64) Hashable!5028) Unit!79205)

(assert (=> b!4403783 (= lt!1608132 (lemmaNotSameHashThenCannotContainKey!107 lm!1707 key!3918 (_1!27752 (h!54934 (toList!3255 lm!1707))) hashF!1247))))

(declare-fun b!4403784 () Bool)

(declare-fun lt!1608121 () ListMap!2499)

(declare-fun addToMapMapFromBucket!302 (List!49426 ListMap!2499) ListMap!2499)

(assert (=> b!4403784 (= e!2742105 (= lt!1608121 (addToMapMapFromBucket!302 (_2!27752 (h!54934 (toList!3255 lm!1707))) lt!1608124)))))

(declare-fun b!4403785 () Bool)

(declare-fun tp!1331943 () Bool)

(assert (=> b!4403785 (= e!2742106 tp!1331943)))

(declare-fun b!4403786 () Bool)

(assert (=> b!4403786 (= e!2742108 (not (containsKey!954 (_2!27752 (h!54934 (toList!3255 lm!1707))) key!3918)))))

(declare-fun b!4403787 () Bool)

(assert (=> b!4403787 (= e!2742109 (forall!9385 (toList!3255 lt!1608130) lambda!149478))))

(declare-fun b!4403788 () Bool)

(declare-fun res!1816745 () Bool)

(assert (=> b!4403788 (=> res!1816745 e!2742113)))

(assert (=> b!4403788 (= res!1816745 (not (noDuplicateKeys!636 newBucket!200)))))

(declare-fun b!4403789 () Bool)

(declare-fun res!1816746 () Bool)

(assert (=> b!4403789 (=> (not res!1816746) (not e!2742111))))

(declare-fun hash!1902 (Hashable!5028 K!10658) (_ BitVec 64))

(assert (=> b!4403789 (= res!1816746 (= (hash!1902 hashF!1247 key!3918) hash!377))))

(declare-fun b!4403790 () Bool)

(declare-fun res!1816744 () Bool)

(assert (=> b!4403790 (=> (not res!1816744) (not e!2742107))))

(declare-fun contains!11706 (ListLongMap!1905 (_ BitVec 64)) Bool)

(assert (=> b!4403790 (= res!1816744 (contains!11706 lm!1707 hash!377))))

(declare-fun b!4403791 () Bool)

(assert (=> b!4403791 (= e!2742111 e!2742107)))

(declare-fun res!1816753 () Bool)

(assert (=> b!4403791 (=> (not res!1816753) (not e!2742107))))

(assert (=> b!4403791 (= res!1816753 (contains!11705 lt!1608121 key!3918))))

(assert (=> b!4403791 (= lt!1608121 (extractMap!695 (toList!3255 lm!1707)))))

(declare-fun tp!1331944 () Bool)

(declare-fun b!4403792 () Bool)

(assert (=> b!4403792 (= e!2742112 (and tp_is_empty!25781 tp_is_empty!25783 tp!1331944))))

(declare-fun b!4403793 () Bool)

(declare-fun res!1816747 () Bool)

(assert (=> b!4403793 (=> (not res!1816747) (not e!2742111))))

(declare-fun allKeysSameHashInMap!740 (ListLongMap!1905 Hashable!5028) Bool)

(assert (=> b!4403793 (= res!1816747 (allKeysSameHashInMap!740 lm!1707 hashF!1247))))

(assert (= (and start!428394 res!1816751) b!4403793))

(assert (= (and b!4403793 res!1816747) b!4403789))

(assert (= (and b!4403789 res!1816746) b!4403781))

(assert (= (and b!4403781 res!1816748) b!4403791))

(assert (= (and b!4403791 res!1816753) b!4403790))

(assert (= (and b!4403790 res!1816744) b!4403780))

(assert (= (and b!4403780 (not res!1816752)) b!4403788))

(assert (= (and b!4403788 (not res!1816745)) b!4403782))

(assert (= (and b!4403782 res!1816755) b!4403787))

(assert (= (and b!4403782 (not res!1816754)) b!4403783))

(assert (= (and b!4403783 res!1816756) b!4403786))

(assert (= (and b!4403783 res!1816749) b!4403779))

(assert (= (and b!4403779 res!1816750) b!4403784))

(assert (= (and start!428394 (is-Cons!49302 newBucket!200)) b!4403792))

(assert (= start!428394 b!4403785))

(declare-fun m!5068729 () Bool)

(assert (=> start!428394 m!5068729))

(declare-fun m!5068731 () Bool)

(assert (=> start!428394 m!5068731))

(declare-fun m!5068733 () Bool)

(assert (=> b!4403793 m!5068733))

(declare-fun m!5068735 () Bool)

(assert (=> b!4403788 m!5068735))

(declare-fun m!5068737 () Bool)

(assert (=> b!4403789 m!5068737))

(declare-fun m!5068739 () Bool)

(assert (=> b!4403780 m!5068739))

(declare-fun m!5068741 () Bool)

(assert (=> b!4403780 m!5068741))

(declare-fun m!5068743 () Bool)

(assert (=> b!4403780 m!5068743))

(declare-fun m!5068745 () Bool)

(assert (=> b!4403780 m!5068745))

(declare-fun m!5068747 () Bool)

(assert (=> b!4403780 m!5068747))

(declare-fun m!5068749 () Bool)

(assert (=> b!4403791 m!5068749))

(declare-fun m!5068751 () Bool)

(assert (=> b!4403791 m!5068751))

(declare-fun m!5068753 () Bool)

(assert (=> b!4403779 m!5068753))

(declare-fun m!5068755 () Bool)

(assert (=> b!4403782 m!5068755))

(declare-fun m!5068757 () Bool)

(assert (=> b!4403782 m!5068757))

(declare-fun m!5068759 () Bool)

(assert (=> b!4403782 m!5068759))

(assert (=> b!4403782 m!5068729))

(declare-fun m!5068761 () Bool)

(assert (=> b!4403784 m!5068761))

(declare-fun m!5068763 () Bool)

(assert (=> b!4403790 m!5068763))

(declare-fun m!5068765 () Bool)

(assert (=> b!4403783 m!5068765))

(declare-fun m!5068767 () Bool)

(assert (=> b!4403783 m!5068767))

(declare-fun m!5068769 () Bool)

(assert (=> b!4403783 m!5068769))

(declare-fun m!5068771 () Bool)

(assert (=> b!4403783 m!5068771))

(assert (=> b!4403783 m!5068767))

(assert (=> b!4403783 m!5068771))

(declare-fun m!5068773 () Bool)

(assert (=> b!4403783 m!5068773))

(declare-fun m!5068775 () Bool)

(assert (=> b!4403783 m!5068775))

(declare-fun m!5068777 () Bool)

(assert (=> b!4403783 m!5068777))

(declare-fun m!5068779 () Bool)

(assert (=> b!4403783 m!5068779))

(declare-fun m!5068781 () Bool)

(assert (=> b!4403783 m!5068781))

(declare-fun m!5068783 () Bool)

(assert (=> b!4403783 m!5068783))

(declare-fun m!5068785 () Bool)

(assert (=> b!4403783 m!5068785))

(declare-fun m!5068787 () Bool)

(assert (=> b!4403783 m!5068787))

(assert (=> b!4403783 m!5068787))

(declare-fun m!5068789 () Bool)

(assert (=> b!4403783 m!5068789))

(declare-fun m!5068791 () Bool)

(assert (=> b!4403783 m!5068791))

(declare-fun m!5068793 () Bool)

(assert (=> b!4403783 m!5068793))

(declare-fun m!5068795 () Bool)

(assert (=> b!4403786 m!5068795))

(declare-fun m!5068797 () Bool)

(assert (=> b!4403781 m!5068797))

(assert (=> b!4403787 m!5068755))

(push 1)

(assert (not b!4403784))

(assert (not b!4403788))

(assert (not b!4403791))

(assert (not b!4403780))

(assert (not start!428394))

(assert tp_is_empty!25783)

(assert (not b!4403783))

(assert (not b!4403793))

(assert (not b!4403785))

(assert tp_is_empty!25781)

(assert (not b!4403790))

(assert (not b!4403779))

(assert (not b!4403782))

(assert (not b!4403781))

(assert (not b!4403792))

(assert (not b!4403786))

(assert (not b!4403787))

(assert (not b!4403789))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1328616 () Bool)

(declare-fun e!2742146 () Bool)

(assert (=> d!1328616 e!2742146))

(declare-fun res!1816798 () Bool)

(assert (=> d!1328616 (=> res!1816798 e!2742146)))

(declare-fun lt!1608192 () Bool)

(assert (=> d!1328616 (= res!1816798 (not lt!1608192))))

(declare-fun lt!1608190 () Bool)

(assert (=> d!1328616 (= lt!1608192 lt!1608190)))

(declare-fun lt!1608191 () Unit!79205)

(declare-fun e!2742145 () Unit!79205)

(assert (=> d!1328616 (= lt!1608191 e!2742145)))

(declare-fun c!749837 () Bool)

(assert (=> d!1328616 (= c!749837 lt!1608190)))

(declare-fun containsKey!956 (List!49427 (_ BitVec 64)) Bool)

(assert (=> d!1328616 (= lt!1608190 (containsKey!956 (toList!3255 lm!1707) hash!377))))

(assert (=> d!1328616 (= (contains!11706 lm!1707 hash!377) lt!1608192)))

(declare-fun b!4403845 () Bool)

(declare-fun lt!1608189 () Unit!79205)

(assert (=> b!4403845 (= e!2742145 lt!1608189)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!518 (List!49427 (_ BitVec 64)) Unit!79205)

(assert (=> b!4403845 (= lt!1608189 (lemmaContainsKeyImpliesGetValueByKeyDefined!518 (toList!3255 lm!1707) hash!377))))

(declare-datatypes ((Option!10622 0))(
  ( (None!10621) (Some!10621 (v!43751 List!49426)) )
))
(declare-fun isDefined!7915 (Option!10622) Bool)

(declare-fun getValueByKey!608 (List!49427 (_ BitVec 64)) Option!10622)

(assert (=> b!4403845 (isDefined!7915 (getValueByKey!608 (toList!3255 lm!1707) hash!377))))

(declare-fun b!4403846 () Bool)

(declare-fun Unit!79209 () Unit!79205)

(assert (=> b!4403846 (= e!2742145 Unit!79209)))

(declare-fun b!4403847 () Bool)

(assert (=> b!4403847 (= e!2742146 (isDefined!7915 (getValueByKey!608 (toList!3255 lm!1707) hash!377)))))

(assert (= (and d!1328616 c!749837) b!4403845))

(assert (= (and d!1328616 (not c!749837)) b!4403846))

(assert (= (and d!1328616 (not res!1816798)) b!4403847))

(declare-fun m!5068869 () Bool)

(assert (=> d!1328616 m!5068869))

(declare-fun m!5068871 () Bool)

(assert (=> b!4403845 m!5068871))

(declare-fun m!5068873 () Bool)

(assert (=> b!4403845 m!5068873))

(assert (=> b!4403845 m!5068873))

(declare-fun m!5068875 () Bool)

(assert (=> b!4403845 m!5068875))

(assert (=> b!4403847 m!5068873))

(assert (=> b!4403847 m!5068873))

(assert (=> b!4403847 m!5068875))

(assert (=> b!4403790 d!1328616))

(declare-fun d!1328618 () Bool)

(declare-fun head!9119 (List!49427) tuple2!48916)

(assert (=> d!1328618 (= (head!9117 lm!1707) (head!9119 (toList!3255 lm!1707)))))

(declare-fun bs!730019 () Bool)

(assert (= bs!730019 d!1328618))

(declare-fun m!5068877 () Bool)

(assert (=> bs!730019 m!5068877))

(assert (=> b!4403779 d!1328618))

(declare-fun d!1328620 () Bool)

(declare-fun hash!1908 (Hashable!5028 K!10658) (_ BitVec 64))

(assert (=> d!1328620 (= (hash!1902 hashF!1247 key!3918) (hash!1908 hashF!1247 key!3918))))

(declare-fun bs!730020 () Bool)

(assert (= bs!730020 d!1328620))

(declare-fun m!5068879 () Bool)

(assert (=> bs!730020 m!5068879))

(assert (=> b!4403789 d!1328620))

(declare-fun bm!306475 () Bool)

(declare-fun call!306480 () Bool)

(declare-datatypes ((List!49430 0))(
  ( (Nil!49306) (Cons!49306 (h!54938 K!10658) (t!356364 List!49430)) )
))
(declare-fun e!2742159 () List!49430)

(declare-fun contains!11710 (List!49430 K!10658) Bool)

(assert (=> bm!306475 (= call!306480 (contains!11710 e!2742159 key!3918))))

(declare-fun c!749844 () Bool)

(declare-fun c!749845 () Bool)

(assert (=> bm!306475 (= c!749844 c!749845)))

(declare-fun b!4403866 () Bool)

(declare-fun e!2742160 () Bool)

(declare-fun keys!16762 (ListMap!2499) List!49430)

(assert (=> b!4403866 (= e!2742160 (not (contains!11710 (keys!16762 lt!1608121) key!3918)))))

(declare-fun b!4403867 () Bool)

(declare-fun e!2742162 () Unit!79205)

(declare-fun lt!1608211 () Unit!79205)

(assert (=> b!4403867 (= e!2742162 lt!1608211)))

(declare-fun lt!1608214 () Unit!79205)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!519 (List!49426 K!10658) Unit!79205)

(assert (=> b!4403867 (= lt!1608214 (lemmaContainsKeyImpliesGetValueByKeyDefined!519 (toList!3256 lt!1608121) key!3918))))

(declare-datatypes ((Option!10623 0))(
  ( (None!10622) (Some!10622 (v!43752 V!10904)) )
))
(declare-fun isDefined!7916 (Option!10623) Bool)

(declare-fun getValueByKey!609 (List!49426 K!10658) Option!10623)

(assert (=> b!4403867 (isDefined!7916 (getValueByKey!609 (toList!3256 lt!1608121) key!3918))))

(declare-fun lt!1608212 () Unit!79205)

(assert (=> b!4403867 (= lt!1608212 lt!1608214)))

(declare-fun lemmaInListThenGetKeysListContains!199 (List!49426 K!10658) Unit!79205)

(assert (=> b!4403867 (= lt!1608211 (lemmaInListThenGetKeysListContains!199 (toList!3256 lt!1608121) key!3918))))

(assert (=> b!4403867 call!306480))

(declare-fun b!4403868 () Bool)

(assert (=> b!4403868 false))

(declare-fun lt!1608209 () Unit!79205)

(declare-fun lt!1608210 () Unit!79205)

(assert (=> b!4403868 (= lt!1608209 lt!1608210)))

(declare-fun containsKey!957 (List!49426 K!10658) Bool)

(assert (=> b!4403868 (containsKey!957 (toList!3256 lt!1608121) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!200 (List!49426 K!10658) Unit!79205)

(assert (=> b!4403868 (= lt!1608210 (lemmaInGetKeysListThenContainsKey!200 (toList!3256 lt!1608121) key!3918))))

(declare-fun e!2742161 () Unit!79205)

(declare-fun Unit!79210 () Unit!79205)

(assert (=> b!4403868 (= e!2742161 Unit!79210)))

(declare-fun b!4403869 () Bool)

(declare-fun getKeysList!202 (List!49426) List!49430)

(assert (=> b!4403869 (= e!2742159 (getKeysList!202 (toList!3256 lt!1608121)))))

(declare-fun d!1328622 () Bool)

(declare-fun e!2742164 () Bool)

(assert (=> d!1328622 e!2742164))

(declare-fun res!1816806 () Bool)

(assert (=> d!1328622 (=> res!1816806 e!2742164)))

(assert (=> d!1328622 (= res!1816806 e!2742160)))

(declare-fun res!1816807 () Bool)

(assert (=> d!1328622 (=> (not res!1816807) (not e!2742160))))

(declare-fun lt!1608213 () Bool)

(assert (=> d!1328622 (= res!1816807 (not lt!1608213))))

(declare-fun lt!1608216 () Bool)

(assert (=> d!1328622 (= lt!1608213 lt!1608216)))

(declare-fun lt!1608215 () Unit!79205)

(assert (=> d!1328622 (= lt!1608215 e!2742162)))

(assert (=> d!1328622 (= c!749845 lt!1608216)))

(assert (=> d!1328622 (= lt!1608216 (containsKey!957 (toList!3256 lt!1608121) key!3918))))

(assert (=> d!1328622 (= (contains!11705 lt!1608121 key!3918) lt!1608213)))

(declare-fun b!4403870 () Bool)

(declare-fun e!2742163 () Bool)

(assert (=> b!4403870 (= e!2742164 e!2742163)))

(declare-fun res!1816805 () Bool)

(assert (=> b!4403870 (=> (not res!1816805) (not e!2742163))))

(assert (=> b!4403870 (= res!1816805 (isDefined!7916 (getValueByKey!609 (toList!3256 lt!1608121) key!3918)))))

(declare-fun b!4403871 () Bool)

(assert (=> b!4403871 (= e!2742162 e!2742161)))

(declare-fun c!749846 () Bool)

(assert (=> b!4403871 (= c!749846 call!306480)))

(declare-fun b!4403872 () Bool)

(declare-fun Unit!79211 () Unit!79205)

(assert (=> b!4403872 (= e!2742161 Unit!79211)))

(declare-fun b!4403873 () Bool)

(assert (=> b!4403873 (= e!2742159 (keys!16762 lt!1608121))))

(declare-fun b!4403874 () Bool)

(assert (=> b!4403874 (= e!2742163 (contains!11710 (keys!16762 lt!1608121) key!3918))))

(assert (= (and d!1328622 c!749845) b!4403867))

(assert (= (and d!1328622 (not c!749845)) b!4403871))

(assert (= (and b!4403871 c!749846) b!4403868))

(assert (= (and b!4403871 (not c!749846)) b!4403872))

(assert (= (or b!4403867 b!4403871) bm!306475))

(assert (= (and bm!306475 c!749844) b!4403869))

(assert (= (and bm!306475 (not c!749844)) b!4403873))

(assert (= (and d!1328622 res!1816807) b!4403866))

(assert (= (and d!1328622 (not res!1816806)) b!4403870))

(assert (= (and b!4403870 res!1816805) b!4403874))

(declare-fun m!5068881 () Bool)

(assert (=> b!4403873 m!5068881))

(declare-fun m!5068883 () Bool)

(assert (=> b!4403867 m!5068883))

(declare-fun m!5068885 () Bool)

(assert (=> b!4403867 m!5068885))

(assert (=> b!4403867 m!5068885))

(declare-fun m!5068887 () Bool)

(assert (=> b!4403867 m!5068887))

(declare-fun m!5068889 () Bool)

(assert (=> b!4403867 m!5068889))

(declare-fun m!5068891 () Bool)

(assert (=> bm!306475 m!5068891))

(declare-fun m!5068893 () Bool)

(assert (=> b!4403868 m!5068893))

(declare-fun m!5068895 () Bool)

(assert (=> b!4403868 m!5068895))

(assert (=> b!4403870 m!5068885))

(assert (=> b!4403870 m!5068885))

(assert (=> b!4403870 m!5068887))

(assert (=> b!4403866 m!5068881))

(assert (=> b!4403866 m!5068881))

(declare-fun m!5068897 () Bool)

(assert (=> b!4403866 m!5068897))

(assert (=> b!4403874 m!5068881))

(assert (=> b!4403874 m!5068881))

(assert (=> b!4403874 m!5068897))

(declare-fun m!5068899 () Bool)

(assert (=> b!4403869 m!5068899))

(assert (=> d!1328622 m!5068893))

(assert (=> b!4403791 d!1328622))

(declare-fun bs!730024 () Bool)

(declare-fun d!1328626 () Bool)

(assert (= bs!730024 (and d!1328626 start!428394)))

(declare-fun lambda!149495 () Int)

(assert (=> bs!730024 (= lambda!149495 lambda!149478)))

(declare-fun lt!1608219 () ListMap!2499)

(declare-fun invariantList!755 (List!49426) Bool)

(assert (=> d!1328626 (invariantList!755 (toList!3256 lt!1608219))))

(declare-fun e!2742171 () ListMap!2499)

(assert (=> d!1328626 (= lt!1608219 e!2742171)))

(declare-fun c!749849 () Bool)

(assert (=> d!1328626 (= c!749849 (is-Cons!49303 (toList!3255 lm!1707)))))

(assert (=> d!1328626 (forall!9385 (toList!3255 lm!1707) lambda!149495)))

(assert (=> d!1328626 (= (extractMap!695 (toList!3255 lm!1707)) lt!1608219)))

(declare-fun b!4403885 () Bool)

(assert (=> b!4403885 (= e!2742171 (addToMapMapFromBucket!302 (_2!27752 (h!54934 (toList!3255 lm!1707))) (extractMap!695 (t!356361 (toList!3255 lm!1707)))))))

(declare-fun b!4403886 () Bool)

(assert (=> b!4403886 (= e!2742171 (ListMap!2500 Nil!49302))))

(assert (= (and d!1328626 c!749849) b!4403885))

(assert (= (and d!1328626 (not c!749849)) b!4403886))

(declare-fun m!5068905 () Bool)

(assert (=> d!1328626 m!5068905))

(declare-fun m!5068907 () Bool)

(assert (=> d!1328626 m!5068907))

(assert (=> b!4403885 m!5068769))

(assert (=> b!4403885 m!5068769))

(declare-fun m!5068909 () Bool)

(assert (=> b!4403885 m!5068909))

(assert (=> b!4403791 d!1328626))

(declare-fun d!1328632 () Bool)

(declare-fun get!16052 (Option!10622) List!49426)

(assert (=> d!1328632 (= (apply!11488 lm!1707 hash!377) (get!16052 (getValueByKey!608 (toList!3255 lm!1707) hash!377)))))

(declare-fun bs!730025 () Bool)

(assert (= bs!730025 d!1328632))

(assert (=> bs!730025 m!5068873))

(assert (=> bs!730025 m!5068873))

(declare-fun m!5068915 () Bool)

(assert (=> bs!730025 m!5068915))

(assert (=> b!4403780 d!1328632))

(declare-fun d!1328636 () Bool)

(declare-fun dynLambda!20773 (Int tuple2!48916) Bool)

(assert (=> d!1328636 (dynLambda!20773 lambda!149478 lt!1608122)))

(declare-fun lt!1608222 () Unit!79205)

(declare-fun choose!27656 (List!49427 Int tuple2!48916) Unit!79205)

(assert (=> d!1328636 (= lt!1608222 (choose!27656 (toList!3255 lm!1707) lambda!149478 lt!1608122))))

(declare-fun e!2742176 () Bool)

(assert (=> d!1328636 e!2742176))

(declare-fun res!1816816 () Bool)

(assert (=> d!1328636 (=> (not res!1816816) (not e!2742176))))

(assert (=> d!1328636 (= res!1816816 (forall!9385 (toList!3255 lm!1707) lambda!149478))))

(assert (=> d!1328636 (= (forallContained!2020 (toList!3255 lm!1707) lambda!149478 lt!1608122) lt!1608222)))

(declare-fun b!4403891 () Bool)

(assert (=> b!4403891 (= e!2742176 (contains!11704 (toList!3255 lm!1707) lt!1608122))))

(assert (= (and d!1328636 res!1816816) b!4403891))

(declare-fun b_lambda!140183 () Bool)

(assert (=> (not b_lambda!140183) (not d!1328636)))

(declare-fun m!5068917 () Bool)

(assert (=> d!1328636 m!5068917))

(declare-fun m!5068919 () Bool)

(assert (=> d!1328636 m!5068919))

(assert (=> d!1328636 m!5068729))

(assert (=> b!4403891 m!5068745))

(assert (=> b!4403780 d!1328636))

(declare-fun d!1328638 () Bool)

(assert (=> d!1328638 (contains!11704 (toList!3255 lm!1707) (tuple2!48917 hash!377 lt!1608128))))

(declare-fun lt!1608225 () Unit!79205)

(declare-fun choose!27657 (List!49427 (_ BitVec 64) List!49426) Unit!79205)

(assert (=> d!1328638 (= lt!1608225 (choose!27657 (toList!3255 lm!1707) hash!377 lt!1608128))))

(declare-fun e!2742179 () Bool)

(assert (=> d!1328638 e!2742179))

(declare-fun res!1816819 () Bool)

(assert (=> d!1328638 (=> (not res!1816819) (not e!2742179))))

(declare-fun isStrictlySorted!181 (List!49427) Bool)

(assert (=> d!1328638 (= res!1816819 (isStrictlySorted!181 (toList!3255 lm!1707)))))

(assert (=> d!1328638 (= (lemmaGetValueByKeyImpliesContainsTuple!481 (toList!3255 lm!1707) hash!377 lt!1608128) lt!1608225)))

(declare-fun b!4403894 () Bool)

(assert (=> b!4403894 (= e!2742179 (= (getValueByKey!608 (toList!3255 lm!1707) hash!377) (Some!10621 lt!1608128)))))

(assert (= (and d!1328638 res!1816819) b!4403894))

(declare-fun m!5068921 () Bool)

(assert (=> d!1328638 m!5068921))

(declare-fun m!5068923 () Bool)

(assert (=> d!1328638 m!5068923))

(declare-fun m!5068925 () Bool)

(assert (=> d!1328638 m!5068925))

(assert (=> b!4403894 m!5068873))

(assert (=> b!4403780 d!1328638))

(declare-fun b!4403906 () Bool)

(declare-fun e!2742185 () List!49426)

(assert (=> b!4403906 (= e!2742185 Nil!49302)))

(declare-fun b!4403903 () Bool)

(declare-fun e!2742184 () List!49426)

(assert (=> b!4403903 (= e!2742184 (t!356360 lt!1608128))))

(declare-fun d!1328640 () Bool)

(declare-fun lt!1608228 () List!49426)

(assert (=> d!1328640 (not (containsKey!954 lt!1608228 key!3918))))

(assert (=> d!1328640 (= lt!1608228 e!2742184)))

(declare-fun c!749854 () Bool)

(assert (=> d!1328640 (= c!749854 (and (is-Cons!49302 lt!1608128) (= (_1!27751 (h!54933 lt!1608128)) key!3918)))))

(assert (=> d!1328640 (noDuplicateKeys!636 lt!1608128)))

(assert (=> d!1328640 (= (removePairForKey!604 lt!1608128 key!3918) lt!1608228)))

(declare-fun b!4403905 () Bool)

(assert (=> b!4403905 (= e!2742185 (Cons!49302 (h!54933 lt!1608128) (removePairForKey!604 (t!356360 lt!1608128) key!3918)))))

(declare-fun b!4403904 () Bool)

(assert (=> b!4403904 (= e!2742184 e!2742185)))

(declare-fun c!749855 () Bool)

(assert (=> b!4403904 (= c!749855 (is-Cons!49302 lt!1608128))))

(assert (= (and d!1328640 c!749854) b!4403903))

(assert (= (and d!1328640 (not c!749854)) b!4403904))

(assert (= (and b!4403904 c!749855) b!4403905))

(assert (= (and b!4403904 (not c!749855)) b!4403906))

(declare-fun m!5068927 () Bool)

(assert (=> d!1328640 m!5068927))

(declare-fun m!5068929 () Bool)

(assert (=> d!1328640 m!5068929))

(declare-fun m!5068931 () Bool)

(assert (=> b!4403905 m!5068931))

(assert (=> b!4403780 d!1328640))

(declare-fun d!1328642 () Bool)

(declare-fun lt!1608231 () Bool)

(declare-fun content!7883 (List!49427) (Set tuple2!48916))

(assert (=> d!1328642 (= lt!1608231 (set.member lt!1608122 (content!7883 (toList!3255 lm!1707))))))

(declare-fun e!2742191 () Bool)

(assert (=> d!1328642 (= lt!1608231 e!2742191)))

(declare-fun res!1816825 () Bool)

(assert (=> d!1328642 (=> (not res!1816825) (not e!2742191))))

(assert (=> d!1328642 (= res!1816825 (is-Cons!49303 (toList!3255 lm!1707)))))

(assert (=> d!1328642 (= (contains!11704 (toList!3255 lm!1707) lt!1608122) lt!1608231)))

(declare-fun b!4403911 () Bool)

(declare-fun e!2742190 () Bool)

(assert (=> b!4403911 (= e!2742191 e!2742190)))

(declare-fun res!1816824 () Bool)

(assert (=> b!4403911 (=> res!1816824 e!2742190)))

(assert (=> b!4403911 (= res!1816824 (= (h!54934 (toList!3255 lm!1707)) lt!1608122))))

(declare-fun b!4403912 () Bool)

(assert (=> b!4403912 (= e!2742190 (contains!11704 (t!356361 (toList!3255 lm!1707)) lt!1608122))))

(assert (= (and d!1328642 res!1816825) b!4403911))

(assert (= (and b!4403911 (not res!1816824)) b!4403912))

(declare-fun m!5068933 () Bool)

(assert (=> d!1328642 m!5068933))

(declare-fun m!5068935 () Bool)

(assert (=> d!1328642 m!5068935))

(declare-fun m!5068937 () Bool)

(assert (=> b!4403912 m!5068937))

(assert (=> b!4403780 d!1328642))

(declare-fun d!1328644 () Bool)

(declare-fun res!1816830 () Bool)

(declare-fun e!2742196 () Bool)

(assert (=> d!1328644 (=> res!1816830 e!2742196)))

(assert (=> d!1328644 (= res!1816830 (is-Nil!49303 (toList!3255 lt!1608130)))))

(assert (=> d!1328644 (= (forall!9385 (toList!3255 lt!1608130) lambda!149478) e!2742196)))

(declare-fun b!4403917 () Bool)

(declare-fun e!2742197 () Bool)

(assert (=> b!4403917 (= e!2742196 e!2742197)))

(declare-fun res!1816831 () Bool)

(assert (=> b!4403917 (=> (not res!1816831) (not e!2742197))))

(assert (=> b!4403917 (= res!1816831 (dynLambda!20773 lambda!149478 (h!54934 (toList!3255 lt!1608130))))))

(declare-fun b!4403918 () Bool)

(assert (=> b!4403918 (= e!2742197 (forall!9385 (t!356361 (toList!3255 lt!1608130)) lambda!149478))))

(assert (= (and d!1328644 (not res!1816830)) b!4403917))

(assert (= (and b!4403917 res!1816831) b!4403918))

(declare-fun b_lambda!140185 () Bool)

(assert (=> (not b_lambda!140185) (not b!4403917)))

(declare-fun m!5068939 () Bool)

(assert (=> b!4403917 m!5068939))

(declare-fun m!5068941 () Bool)

(assert (=> b!4403918 m!5068941))

(assert (=> b!4403782 d!1328644))

(declare-fun d!1328646 () Bool)

(declare-fun e!2742200 () Bool)

(assert (=> d!1328646 e!2742200))

(declare-fun res!1816836 () Bool)

(assert (=> d!1328646 (=> (not res!1816836) (not e!2742200))))

(declare-fun lt!1608243 () ListLongMap!1905)

(assert (=> d!1328646 (= res!1816836 (contains!11706 lt!1608243 (_1!27752 lt!1608129)))))

(declare-fun lt!1608241 () List!49427)

(assert (=> d!1328646 (= lt!1608243 (ListLongMap!1906 lt!1608241))))

(declare-fun lt!1608240 () Unit!79205)

(declare-fun lt!1608242 () Unit!79205)

(assert (=> d!1328646 (= lt!1608240 lt!1608242)))

(assert (=> d!1328646 (= (getValueByKey!608 lt!1608241 (_1!27752 lt!1608129)) (Some!10621 (_2!27752 lt!1608129)))))

(declare-fun lemmaContainsTupThenGetReturnValue!354 (List!49427 (_ BitVec 64) List!49426) Unit!79205)

(assert (=> d!1328646 (= lt!1608242 (lemmaContainsTupThenGetReturnValue!354 lt!1608241 (_1!27752 lt!1608129) (_2!27752 lt!1608129)))))

(declare-fun insertStrictlySorted!209 (List!49427 (_ BitVec 64) List!49426) List!49427)

(assert (=> d!1328646 (= lt!1608241 (insertStrictlySorted!209 (toList!3255 lm!1707) (_1!27752 lt!1608129) (_2!27752 lt!1608129)))))

(assert (=> d!1328646 (= (+!887 lm!1707 lt!1608129) lt!1608243)))

(declare-fun b!4403923 () Bool)

(declare-fun res!1816837 () Bool)

(assert (=> b!4403923 (=> (not res!1816837) (not e!2742200))))

(assert (=> b!4403923 (= res!1816837 (= (getValueByKey!608 (toList!3255 lt!1608243) (_1!27752 lt!1608129)) (Some!10621 (_2!27752 lt!1608129))))))

(declare-fun b!4403924 () Bool)

(assert (=> b!4403924 (= e!2742200 (contains!11704 (toList!3255 lt!1608243) lt!1608129))))

(assert (= (and d!1328646 res!1816836) b!4403923))

(assert (= (and b!4403923 res!1816837) b!4403924))

(declare-fun m!5068943 () Bool)

(assert (=> d!1328646 m!5068943))

(declare-fun m!5068945 () Bool)

(assert (=> d!1328646 m!5068945))

(declare-fun m!5068947 () Bool)

(assert (=> d!1328646 m!5068947))

(declare-fun m!5068949 () Bool)

(assert (=> d!1328646 m!5068949))

(declare-fun m!5068951 () Bool)

(assert (=> b!4403923 m!5068951))

(declare-fun m!5068953 () Bool)

(assert (=> b!4403924 m!5068953))

(assert (=> b!4403782 d!1328646))

(declare-fun d!1328648 () Bool)

(assert (=> d!1328648 (forall!9385 (toList!3255 (+!887 lm!1707 (tuple2!48917 hash!377 newBucket!200))) lambda!149478)))

(declare-fun lt!1608246 () Unit!79205)

(declare-fun choose!27658 (ListLongMap!1905 Int (_ BitVec 64) List!49426) Unit!79205)

(assert (=> d!1328648 (= lt!1608246 (choose!27658 lm!1707 lambda!149478 hash!377 newBucket!200))))

(declare-fun e!2742203 () Bool)

(assert (=> d!1328648 e!2742203))

(declare-fun res!1816840 () Bool)

(assert (=> d!1328648 (=> (not res!1816840) (not e!2742203))))

(assert (=> d!1328648 (= res!1816840 (forall!9385 (toList!3255 lm!1707) lambda!149478))))

(assert (=> d!1328648 (= (addValidProp!282 lm!1707 lambda!149478 hash!377 newBucket!200) lt!1608246)))

(declare-fun b!4403928 () Bool)

(assert (=> b!4403928 (= e!2742203 (dynLambda!20773 lambda!149478 (tuple2!48917 hash!377 newBucket!200)))))

(assert (= (and d!1328648 res!1816840) b!4403928))

(declare-fun b_lambda!140187 () Bool)

(assert (=> (not b_lambda!140187) (not b!4403928)))

(declare-fun m!5068955 () Bool)

(assert (=> d!1328648 m!5068955))

(declare-fun m!5068957 () Bool)

(assert (=> d!1328648 m!5068957))

(declare-fun m!5068959 () Bool)

(assert (=> d!1328648 m!5068959))

(assert (=> d!1328648 m!5068729))

(declare-fun m!5068961 () Bool)

(assert (=> b!4403928 m!5068961))

(assert (=> b!4403782 d!1328648))

(declare-fun d!1328650 () Bool)

(declare-fun res!1816841 () Bool)

(declare-fun e!2742204 () Bool)

(assert (=> d!1328650 (=> res!1816841 e!2742204)))

(assert (=> d!1328650 (= res!1816841 (is-Nil!49303 (toList!3255 lm!1707)))))

(assert (=> d!1328650 (= (forall!9385 (toList!3255 lm!1707) lambda!149478) e!2742204)))

(declare-fun b!4403929 () Bool)

(declare-fun e!2742205 () Bool)

(assert (=> b!4403929 (= e!2742204 e!2742205)))

(declare-fun res!1816842 () Bool)

(assert (=> b!4403929 (=> (not res!1816842) (not e!2742205))))

(assert (=> b!4403929 (= res!1816842 (dynLambda!20773 lambda!149478 (h!54934 (toList!3255 lm!1707))))))

(declare-fun b!4403930 () Bool)

(assert (=> b!4403930 (= e!2742205 (forall!9385 (t!356361 (toList!3255 lm!1707)) lambda!149478))))

(assert (= (and d!1328650 (not res!1816841)) b!4403929))

(assert (= (and b!4403929 res!1816842) b!4403930))

(declare-fun b_lambda!140189 () Bool)

(assert (=> (not b_lambda!140189) (not b!4403929)))

(declare-fun m!5068963 () Bool)

(assert (=> b!4403929 m!5068963))

(declare-fun m!5068965 () Bool)

(assert (=> b!4403930 m!5068965))

(assert (=> b!4403782 d!1328650))

(declare-fun d!1328652 () Bool)

(assert (=> d!1328652 true))

(assert (=> d!1328652 true))

(declare-fun lambda!149498 () Int)

(declare-fun forall!9387 (List!49426 Int) Bool)

(assert (=> d!1328652 (= (allKeysSameHash!594 newBucket!200 hash!377 hashF!1247) (forall!9387 newBucket!200 lambda!149498))))

(declare-fun bs!730026 () Bool)

(assert (= bs!730026 d!1328652))

(declare-fun m!5068967 () Bool)

(assert (=> bs!730026 m!5068967))

(assert (=> b!4403781 d!1328652))

(assert (=> start!428394 d!1328650))

(declare-fun d!1328654 () Bool)

(assert (=> d!1328654 (= (inv!64845 lm!1707) (isStrictlySorted!181 (toList!3255 lm!1707)))))

(declare-fun bs!730027 () Bool)

(assert (= bs!730027 d!1328654))

(assert (=> bs!730027 m!5068925))

(assert (=> start!428394 d!1328654))

(declare-fun d!1328656 () Bool)

(declare-fun res!1816847 () Bool)

(declare-fun e!2742214 () Bool)

(assert (=> d!1328656 (=> res!1816847 e!2742214)))

(assert (=> d!1328656 (= res!1816847 (and (is-Cons!49302 (apply!11488 lm!1707 (_1!27752 (h!54934 (toList!3255 lm!1707))))) (= (_1!27751 (h!54933 (apply!11488 lm!1707 (_1!27752 (h!54934 (toList!3255 lm!1707)))))) key!3918)))))

(assert (=> d!1328656 (= (containsKey!954 (apply!11488 lm!1707 (_1!27752 (h!54934 (toList!3255 lm!1707)))) key!3918) e!2742214)))

(declare-fun b!4403947 () Bool)

(declare-fun e!2742215 () Bool)

(assert (=> b!4403947 (= e!2742214 e!2742215)))

(declare-fun res!1816848 () Bool)

(assert (=> b!4403947 (=> (not res!1816848) (not e!2742215))))

(assert (=> b!4403947 (= res!1816848 (is-Cons!49302 (apply!11488 lm!1707 (_1!27752 (h!54934 (toList!3255 lm!1707))))))))

(declare-fun b!4403948 () Bool)

(assert (=> b!4403948 (= e!2742215 (containsKey!954 (t!356360 (apply!11488 lm!1707 (_1!27752 (h!54934 (toList!3255 lm!1707))))) key!3918))))

(assert (= (and d!1328656 (not res!1816847)) b!4403947))

(assert (= (and b!4403947 res!1816848) b!4403948))

(declare-fun m!5068969 () Bool)

(assert (=> b!4403948 m!5068969))

(assert (=> b!4403783 d!1328656))

(declare-fun bs!730028 () Bool)

(declare-fun d!1328658 () Bool)

(assert (= bs!730028 (and d!1328658 start!428394)))

(declare-fun lambda!149499 () Int)

(assert (=> bs!730028 (= lambda!149499 lambda!149478)))

(declare-fun bs!730029 () Bool)

(assert (= bs!730029 (and d!1328658 d!1328626)))

(assert (=> bs!730029 (= lambda!149499 lambda!149495)))

(declare-fun lt!1608263 () ListMap!2499)

(assert (=> d!1328658 (invariantList!755 (toList!3256 lt!1608263))))

(declare-fun e!2742218 () ListMap!2499)

(assert (=> d!1328658 (= lt!1608263 e!2742218)))

(declare-fun c!749862 () Bool)

(assert (=> d!1328658 (= c!749862 (is-Cons!49303 (toList!3255 lt!1608135)))))

(assert (=> d!1328658 (forall!9385 (toList!3255 lt!1608135) lambda!149499)))

(assert (=> d!1328658 (= (extractMap!695 (toList!3255 lt!1608135)) lt!1608263)))

(declare-fun b!4403953 () Bool)

(assert (=> b!4403953 (= e!2742218 (addToMapMapFromBucket!302 (_2!27752 (h!54934 (toList!3255 lt!1608135))) (extractMap!695 (t!356361 (toList!3255 lt!1608135)))))))

(declare-fun b!4403954 () Bool)

(assert (=> b!4403954 (= e!2742218 (ListMap!2500 Nil!49302))))

(assert (= (and d!1328658 c!749862) b!4403953))

(assert (= (and d!1328658 (not c!749862)) b!4403954))

(declare-fun m!5068971 () Bool)

(assert (=> d!1328658 m!5068971))

(declare-fun m!5068973 () Bool)

(assert (=> d!1328658 m!5068973))

(declare-fun m!5068975 () Bool)

(assert (=> b!4403953 m!5068975))

(assert (=> b!4403953 m!5068975))

(declare-fun m!5068977 () Bool)

(assert (=> b!4403953 m!5068977))

(assert (=> b!4403783 d!1328658))

(declare-fun d!1328660 () Bool)

(declare-fun e!2742227 () Bool)

(assert (=> d!1328660 e!2742227))

(declare-fun res!1816860 () Bool)

(assert (=> d!1328660 (=> (not res!1816860) (not e!2742227))))

(declare-fun lt!1608272 () ListMap!2499)

(assert (=> d!1328660 (= res!1816860 (contains!11705 lt!1608272 (_1!27751 lt!1608125)))))

(declare-fun lt!1608273 () List!49426)

(assert (=> d!1328660 (= lt!1608272 (ListMap!2500 lt!1608273))))

(declare-fun lt!1608274 () Unit!79205)

(declare-fun lt!1608275 () Unit!79205)

(assert (=> d!1328660 (= lt!1608274 lt!1608275)))

(assert (=> d!1328660 (= (getValueByKey!609 lt!1608273 (_1!27751 lt!1608125)) (Some!10622 (_2!27751 lt!1608125)))))

(declare-fun lemmaContainsTupThenGetReturnValue!355 (List!49426 K!10658 V!10904) Unit!79205)

(assert (=> d!1328660 (= lt!1608275 (lemmaContainsTupThenGetReturnValue!355 lt!1608273 (_1!27751 lt!1608125) (_2!27751 lt!1608125)))))

(declare-fun insertNoDuplicatedKeys!154 (List!49426 K!10658 V!10904) List!49426)

(assert (=> d!1328660 (= lt!1608273 (insertNoDuplicatedKeys!154 (toList!3256 lt!1608124) (_1!27751 lt!1608125) (_2!27751 lt!1608125)))))

(assert (=> d!1328660 (= (+!888 lt!1608124 lt!1608125) lt!1608272)))

(declare-fun b!4403965 () Bool)

(declare-fun res!1816859 () Bool)

(assert (=> b!4403965 (=> (not res!1816859) (not e!2742227))))

(assert (=> b!4403965 (= res!1816859 (= (getValueByKey!609 (toList!3256 lt!1608272) (_1!27751 lt!1608125)) (Some!10622 (_2!27751 lt!1608125))))))

(declare-fun b!4403966 () Bool)

(declare-fun contains!11711 (List!49426 tuple2!48914) Bool)

(assert (=> b!4403966 (= e!2742227 (contains!11711 (toList!3256 lt!1608272) lt!1608125))))

(assert (= (and d!1328660 res!1816860) b!4403965))

(assert (= (and b!4403965 res!1816859) b!4403966))

(declare-fun m!5068979 () Bool)

(assert (=> d!1328660 m!5068979))

(declare-fun m!5068981 () Bool)

(assert (=> d!1328660 m!5068981))

(declare-fun m!5068983 () Bool)

(assert (=> d!1328660 m!5068983))

(declare-fun m!5068985 () Bool)

(assert (=> d!1328660 m!5068985))

(declare-fun m!5068987 () Bool)

(assert (=> b!4403965 m!5068987))

(declare-fun m!5068989 () Bool)

(assert (=> b!4403966 m!5068989))

(assert (=> b!4403783 d!1328660))

(declare-fun d!1328662 () Bool)

(declare-fun content!7884 (List!49426) (Set tuple2!48914))

(assert (=> d!1328662 (= (eq!342 (extractMap!695 (toList!3255 (+!887 lt!1608135 lt!1608129))) (+!888 lt!1608124 lt!1608125)) (= (content!7884 (toList!3256 (extractMap!695 (toList!3255 (+!887 lt!1608135 lt!1608129))))) (content!7884 (toList!3256 (+!888 lt!1608124 lt!1608125)))))))

(declare-fun bs!730030 () Bool)

(assert (= bs!730030 d!1328662))

(declare-fun m!5068991 () Bool)

(assert (=> bs!730030 m!5068991))

(declare-fun m!5068993 () Bool)

(assert (=> bs!730030 m!5068993))

(assert (=> b!4403783 d!1328662))

(declare-fun d!1328664 () Bool)

(declare-fun tail!7130 (List!49427) List!49427)

(assert (=> d!1328664 (= (tail!7128 lm!1707) (ListLongMap!1906 (tail!7130 (toList!3255 lm!1707))))))

(declare-fun bs!730031 () Bool)

(assert (= bs!730031 d!1328664))

(declare-fun m!5068995 () Bool)

(assert (=> bs!730031 m!5068995))

(assert (=> b!4403783 d!1328664))

(declare-fun bs!730032 () Bool)

(declare-fun d!1328666 () Bool)

(assert (= bs!730032 (and d!1328666 start!428394)))

(declare-fun lambda!149502 () Int)

(assert (=> bs!730032 (= lambda!149502 lambda!149478)))

(declare-fun bs!730033 () Bool)

(assert (= bs!730033 (and d!1328666 d!1328626)))

(assert (=> bs!730033 (= lambda!149502 lambda!149495)))

(declare-fun bs!730034 () Bool)

(assert (= bs!730034 (and d!1328666 d!1328658)))

(assert (=> bs!730034 (= lambda!149502 lambda!149499)))

(assert (=> d!1328666 (eq!342 (extractMap!695 (toList!3255 (+!887 lt!1608135 (tuple2!48917 hash!377 newBucket!200)))) (+!888 (extractMap!695 (toList!3255 lt!1608135)) (tuple2!48915 key!3918 newValue!99)))))

(declare-fun lt!1608286 () Unit!79205)

(declare-fun choose!27659 (ListLongMap!1905 (_ BitVec 64) List!49426 K!10658 V!10904 Hashable!5028) Unit!79205)

(assert (=> d!1328666 (= lt!1608286 (choose!27659 lt!1608135 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1328666 (forall!9385 (toList!3255 lt!1608135) lambda!149502)))

(assert (=> d!1328666 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!140 lt!1608135 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1608286)))

(declare-fun bs!730035 () Bool)

(assert (= bs!730035 d!1328666))

(declare-fun m!5069017 () Bool)

(assert (=> bs!730035 m!5069017))

(assert (=> bs!730035 m!5068785))

(declare-fun m!5069019 () Bool)

(assert (=> bs!730035 m!5069019))

(declare-fun m!5069021 () Bool)

(assert (=> bs!730035 m!5069021))

(declare-fun m!5069023 () Bool)

(assert (=> bs!730035 m!5069023))

(assert (=> bs!730035 m!5069019))

(declare-fun m!5069025 () Bool)

(assert (=> bs!730035 m!5069025))

(assert (=> bs!730035 m!5068785))

(declare-fun m!5069027 () Bool)

(assert (=> bs!730035 m!5069027))

(assert (=> bs!730035 m!5069023))

(assert (=> b!4403783 d!1328666))

(declare-fun bs!730036 () Bool)

(declare-fun d!1328670 () Bool)

(assert (= bs!730036 (and d!1328670 start!428394)))

(declare-fun lambda!149503 () Int)

(assert (=> bs!730036 (= lambda!149503 lambda!149478)))

(declare-fun bs!730037 () Bool)

(assert (= bs!730037 (and d!1328670 d!1328626)))

(assert (=> bs!730037 (= lambda!149503 lambda!149495)))

(declare-fun bs!730038 () Bool)

(assert (= bs!730038 (and d!1328670 d!1328658)))

(assert (=> bs!730038 (= lambda!149503 lambda!149499)))

(declare-fun bs!730039 () Bool)

(assert (= bs!730039 (and d!1328670 d!1328666)))

(assert (=> bs!730039 (= lambda!149503 lambda!149502)))

(declare-fun lt!1608287 () ListMap!2499)

(assert (=> d!1328670 (invariantList!755 (toList!3256 lt!1608287))))

(declare-fun e!2742234 () ListMap!2499)

(assert (=> d!1328670 (= lt!1608287 e!2742234)))

(declare-fun c!749866 () Bool)

(assert (=> d!1328670 (= c!749866 (is-Cons!49303 (t!356361 (toList!3255 lm!1707))))))

(assert (=> d!1328670 (forall!9385 (t!356361 (toList!3255 lm!1707)) lambda!149503)))

(assert (=> d!1328670 (= (extractMap!695 (t!356361 (toList!3255 lm!1707))) lt!1608287)))

(declare-fun b!4403976 () Bool)

(assert (=> b!4403976 (= e!2742234 (addToMapMapFromBucket!302 (_2!27752 (h!54934 (t!356361 (toList!3255 lm!1707)))) (extractMap!695 (t!356361 (t!356361 (toList!3255 lm!1707))))))))

(declare-fun b!4403977 () Bool)

(assert (=> b!4403977 (= e!2742234 (ListMap!2500 Nil!49302))))

(assert (= (and d!1328670 c!749866) b!4403976))

(assert (= (and d!1328670 (not c!749866)) b!4403977))

(declare-fun m!5069029 () Bool)

(assert (=> d!1328670 m!5069029))

(declare-fun m!5069031 () Bool)

(assert (=> d!1328670 m!5069031))

(declare-fun m!5069033 () Bool)

(assert (=> b!4403976 m!5069033))

(assert (=> b!4403976 m!5069033))

(declare-fun m!5069035 () Bool)

(assert (=> b!4403976 m!5069035))

(assert (=> b!4403783 d!1328670))

(declare-fun bm!306479 () Bool)

(declare-fun call!306484 () Bool)

(declare-fun e!2742235 () List!49430)

(assert (=> bm!306479 (= call!306484 (contains!11710 e!2742235 key!3918))))

(declare-fun c!749867 () Bool)

(declare-fun c!749868 () Bool)

(assert (=> bm!306479 (= c!749867 c!749868)))

(declare-fun b!4403978 () Bool)

(declare-fun e!2742236 () Bool)

(assert (=> b!4403978 (= e!2742236 (not (contains!11710 (keys!16762 lt!1608124) key!3918)))))

(declare-fun b!4403979 () Bool)

(declare-fun e!2742238 () Unit!79205)

(declare-fun lt!1608290 () Unit!79205)

(assert (=> b!4403979 (= e!2742238 lt!1608290)))

(declare-fun lt!1608293 () Unit!79205)

(assert (=> b!4403979 (= lt!1608293 (lemmaContainsKeyImpliesGetValueByKeyDefined!519 (toList!3256 lt!1608124) key!3918))))

(assert (=> b!4403979 (isDefined!7916 (getValueByKey!609 (toList!3256 lt!1608124) key!3918))))

(declare-fun lt!1608291 () Unit!79205)

(assert (=> b!4403979 (= lt!1608291 lt!1608293)))

(assert (=> b!4403979 (= lt!1608290 (lemmaInListThenGetKeysListContains!199 (toList!3256 lt!1608124) key!3918))))

(assert (=> b!4403979 call!306484))

(declare-fun b!4403980 () Bool)

(assert (=> b!4403980 false))

(declare-fun lt!1608288 () Unit!79205)

(declare-fun lt!1608289 () Unit!79205)

(assert (=> b!4403980 (= lt!1608288 lt!1608289)))

(assert (=> b!4403980 (containsKey!957 (toList!3256 lt!1608124) key!3918)))

(assert (=> b!4403980 (= lt!1608289 (lemmaInGetKeysListThenContainsKey!200 (toList!3256 lt!1608124) key!3918))))

(declare-fun e!2742237 () Unit!79205)

(declare-fun Unit!79212 () Unit!79205)

(assert (=> b!4403980 (= e!2742237 Unit!79212)))

(declare-fun b!4403981 () Bool)

(assert (=> b!4403981 (= e!2742235 (getKeysList!202 (toList!3256 lt!1608124)))))

(declare-fun d!1328672 () Bool)

(declare-fun e!2742240 () Bool)

(assert (=> d!1328672 e!2742240))

(declare-fun res!1816865 () Bool)

(assert (=> d!1328672 (=> res!1816865 e!2742240)))

(assert (=> d!1328672 (= res!1816865 e!2742236)))

(declare-fun res!1816866 () Bool)

(assert (=> d!1328672 (=> (not res!1816866) (not e!2742236))))

(declare-fun lt!1608292 () Bool)

(assert (=> d!1328672 (= res!1816866 (not lt!1608292))))

(declare-fun lt!1608295 () Bool)

(assert (=> d!1328672 (= lt!1608292 lt!1608295)))

(declare-fun lt!1608294 () Unit!79205)

(assert (=> d!1328672 (= lt!1608294 e!2742238)))

(assert (=> d!1328672 (= c!749868 lt!1608295)))

(assert (=> d!1328672 (= lt!1608295 (containsKey!957 (toList!3256 lt!1608124) key!3918))))

(assert (=> d!1328672 (= (contains!11705 lt!1608124 key!3918) lt!1608292)))

(declare-fun b!4403982 () Bool)

(declare-fun e!2742239 () Bool)

(assert (=> b!4403982 (= e!2742240 e!2742239)))

(declare-fun res!1816864 () Bool)

(assert (=> b!4403982 (=> (not res!1816864) (not e!2742239))))

(assert (=> b!4403982 (= res!1816864 (isDefined!7916 (getValueByKey!609 (toList!3256 lt!1608124) key!3918)))))

(declare-fun b!4403983 () Bool)

(assert (=> b!4403983 (= e!2742238 e!2742237)))

(declare-fun c!749869 () Bool)

(assert (=> b!4403983 (= c!749869 call!306484)))

(declare-fun b!4403984 () Bool)

(declare-fun Unit!79213 () Unit!79205)

(assert (=> b!4403984 (= e!2742237 Unit!79213)))

(declare-fun b!4403985 () Bool)

(assert (=> b!4403985 (= e!2742235 (keys!16762 lt!1608124))))

(declare-fun b!4403986 () Bool)

(assert (=> b!4403986 (= e!2742239 (contains!11710 (keys!16762 lt!1608124) key!3918))))

(assert (= (and d!1328672 c!749868) b!4403979))

(assert (= (and d!1328672 (not c!749868)) b!4403983))

(assert (= (and b!4403983 c!749869) b!4403980))

(assert (= (and b!4403983 (not c!749869)) b!4403984))

(assert (= (or b!4403979 b!4403983) bm!306479))

(assert (= (and bm!306479 c!749867) b!4403981))

(assert (= (and bm!306479 (not c!749867)) b!4403985))

(assert (= (and d!1328672 res!1816866) b!4403978))

(assert (= (and d!1328672 (not res!1816865)) b!4403982))

(assert (= (and b!4403982 res!1816864) b!4403986))

(declare-fun m!5069037 () Bool)

(assert (=> b!4403985 m!5069037))

(declare-fun m!5069039 () Bool)

(assert (=> b!4403979 m!5069039))

(declare-fun m!5069041 () Bool)

(assert (=> b!4403979 m!5069041))

(assert (=> b!4403979 m!5069041))

(declare-fun m!5069043 () Bool)

(assert (=> b!4403979 m!5069043))

(declare-fun m!5069045 () Bool)

(assert (=> b!4403979 m!5069045))

(declare-fun m!5069047 () Bool)

(assert (=> bm!306479 m!5069047))

(declare-fun m!5069049 () Bool)

(assert (=> b!4403980 m!5069049))

(declare-fun m!5069051 () Bool)

(assert (=> b!4403980 m!5069051))

(assert (=> b!4403982 m!5069041))

(assert (=> b!4403982 m!5069041))

(assert (=> b!4403982 m!5069043))

(assert (=> b!4403978 m!5069037))

(assert (=> b!4403978 m!5069037))

(declare-fun m!5069053 () Bool)

(assert (=> b!4403978 m!5069053))

(assert (=> b!4403986 m!5069037))

(assert (=> b!4403986 m!5069037))

(assert (=> b!4403986 m!5069053))

(declare-fun m!5069055 () Bool)

(assert (=> b!4403981 m!5069055))

(assert (=> d!1328672 m!5069049))

(assert (=> b!4403783 d!1328672))

(declare-fun d!1328674 () Bool)

(declare-fun e!2742241 () Bool)

(assert (=> d!1328674 e!2742241))

(declare-fun res!1816867 () Bool)

(assert (=> d!1328674 (=> (not res!1816867) (not e!2742241))))

(declare-fun lt!1608299 () ListLongMap!1905)

(assert (=> d!1328674 (= res!1816867 (contains!11706 lt!1608299 (_1!27752 lt!1608129)))))

(declare-fun lt!1608297 () List!49427)

(assert (=> d!1328674 (= lt!1608299 (ListLongMap!1906 lt!1608297))))

(declare-fun lt!1608296 () Unit!79205)

(declare-fun lt!1608298 () Unit!79205)

(assert (=> d!1328674 (= lt!1608296 lt!1608298)))

(assert (=> d!1328674 (= (getValueByKey!608 lt!1608297 (_1!27752 lt!1608129)) (Some!10621 (_2!27752 lt!1608129)))))

(assert (=> d!1328674 (= lt!1608298 (lemmaContainsTupThenGetReturnValue!354 lt!1608297 (_1!27752 lt!1608129) (_2!27752 lt!1608129)))))

(assert (=> d!1328674 (= lt!1608297 (insertStrictlySorted!209 (toList!3255 lt!1608135) (_1!27752 lt!1608129) (_2!27752 lt!1608129)))))

(assert (=> d!1328674 (= (+!887 lt!1608135 lt!1608129) lt!1608299)))

(declare-fun b!4403987 () Bool)

(declare-fun res!1816868 () Bool)

(assert (=> b!4403987 (=> (not res!1816868) (not e!2742241))))

(assert (=> b!4403987 (= res!1816868 (= (getValueByKey!608 (toList!3255 lt!1608299) (_1!27752 lt!1608129)) (Some!10621 (_2!27752 lt!1608129))))))

(declare-fun b!4403988 () Bool)

(assert (=> b!4403988 (= e!2742241 (contains!11704 (toList!3255 lt!1608299) lt!1608129))))

(assert (= (and d!1328674 res!1816867) b!4403987))

(assert (= (and b!4403987 res!1816868) b!4403988))

(declare-fun m!5069057 () Bool)

(assert (=> d!1328674 m!5069057))

(declare-fun m!5069059 () Bool)

(assert (=> d!1328674 m!5069059))

(declare-fun m!5069061 () Bool)

(assert (=> d!1328674 m!5069061))

(declare-fun m!5069063 () Bool)

(assert (=> d!1328674 m!5069063))

(declare-fun m!5069065 () Bool)

(assert (=> b!4403987 m!5069065))

(declare-fun m!5069067 () Bool)

(assert (=> b!4403988 m!5069067))

(assert (=> b!4403783 d!1328674))

(declare-fun bs!730040 () Bool)

(declare-fun d!1328676 () Bool)

(assert (= bs!730040 (and d!1328676 start!428394)))

(declare-fun lambda!149504 () Int)

(assert (=> bs!730040 (= lambda!149504 lambda!149478)))

(declare-fun bs!730041 () Bool)

(assert (= bs!730041 (and d!1328676 d!1328666)))

(assert (=> bs!730041 (= lambda!149504 lambda!149502)))

(declare-fun bs!730042 () Bool)

(assert (= bs!730042 (and d!1328676 d!1328658)))

(assert (=> bs!730042 (= lambda!149504 lambda!149499)))

(declare-fun bs!730043 () Bool)

(assert (= bs!730043 (and d!1328676 d!1328670)))

(assert (=> bs!730043 (= lambda!149504 lambda!149503)))

(declare-fun bs!730044 () Bool)

(assert (= bs!730044 (and d!1328676 d!1328626)))

(assert (=> bs!730044 (= lambda!149504 lambda!149495)))

(declare-fun lt!1608300 () ListMap!2499)

(assert (=> d!1328676 (invariantList!755 (toList!3256 lt!1608300))))

(declare-fun e!2742242 () ListMap!2499)

(assert (=> d!1328676 (= lt!1608300 e!2742242)))

(declare-fun c!749870 () Bool)

(assert (=> d!1328676 (= c!749870 (is-Cons!49303 (toList!3255 (+!887 lt!1608135 lt!1608129))))))

(assert (=> d!1328676 (forall!9385 (toList!3255 (+!887 lt!1608135 lt!1608129)) lambda!149504)))

(assert (=> d!1328676 (= (extractMap!695 (toList!3255 (+!887 lt!1608135 lt!1608129))) lt!1608300)))

(declare-fun b!4403989 () Bool)

(assert (=> b!4403989 (= e!2742242 (addToMapMapFromBucket!302 (_2!27752 (h!54934 (toList!3255 (+!887 lt!1608135 lt!1608129)))) (extractMap!695 (t!356361 (toList!3255 (+!887 lt!1608135 lt!1608129))))))))

(declare-fun b!4403990 () Bool)

(assert (=> b!4403990 (= e!2742242 (ListMap!2500 Nil!49302))))

(assert (= (and d!1328676 c!749870) b!4403989))

(assert (= (and d!1328676 (not c!749870)) b!4403990))

(declare-fun m!5069069 () Bool)

(assert (=> d!1328676 m!5069069))

(declare-fun m!5069071 () Bool)

(assert (=> d!1328676 m!5069071))

(declare-fun m!5069073 () Bool)

(assert (=> b!4403989 m!5069073))

(assert (=> b!4403989 m!5069073))

(declare-fun m!5069075 () Bool)

(assert (=> b!4403989 m!5069075))

(assert (=> b!4403783 d!1328676))

(declare-fun d!1328678 () Bool)

(assert (=> d!1328678 (= (apply!11488 lm!1707 (_1!27752 (h!54934 (toList!3255 lm!1707)))) (get!16052 (getValueByKey!608 (toList!3255 lm!1707) (_1!27752 (h!54934 (toList!3255 lm!1707))))))))

(declare-fun bs!730045 () Bool)

(assert (= bs!730045 d!1328678))

(declare-fun m!5069077 () Bool)

(assert (=> bs!730045 m!5069077))

(assert (=> bs!730045 m!5069077))

(declare-fun m!5069079 () Bool)

(assert (=> bs!730045 m!5069079))

(assert (=> b!4403783 d!1328678))

(declare-fun bs!730046 () Bool)

(declare-fun d!1328680 () Bool)

(assert (= bs!730046 (and d!1328680 start!428394)))

(declare-fun lambda!149507 () Int)

(assert (=> bs!730046 (= lambda!149507 lambda!149478)))

(declare-fun bs!730047 () Bool)

(assert (= bs!730047 (and d!1328680 d!1328666)))

(assert (=> bs!730047 (= lambda!149507 lambda!149502)))

(declare-fun bs!730048 () Bool)

(assert (= bs!730048 (and d!1328680 d!1328658)))

(assert (=> bs!730048 (= lambda!149507 lambda!149499)))

(declare-fun bs!730049 () Bool)

(assert (= bs!730049 (and d!1328680 d!1328676)))

(assert (=> bs!730049 (= lambda!149507 lambda!149504)))

(declare-fun bs!730050 () Bool)

(assert (= bs!730050 (and d!1328680 d!1328670)))

(assert (=> bs!730050 (= lambda!149507 lambda!149503)))

(declare-fun bs!730051 () Bool)

(assert (= bs!730051 (and d!1328680 d!1328626)))

(assert (=> bs!730051 (= lambda!149507 lambda!149495)))

(assert (=> d!1328680 (not (containsKey!954 (apply!11488 lm!1707 (_1!27752 (h!54934 (toList!3255 lm!1707)))) key!3918))))

(declare-fun lt!1608303 () Unit!79205)

(declare-fun choose!27660 (ListLongMap!1905 K!10658 (_ BitVec 64) Hashable!5028) Unit!79205)

(assert (=> d!1328680 (= lt!1608303 (choose!27660 lm!1707 key!3918 (_1!27752 (h!54934 (toList!3255 lm!1707))) hashF!1247))))

(assert (=> d!1328680 (forall!9385 (toList!3255 lm!1707) lambda!149507)))

(assert (=> d!1328680 (= (lemmaNotSameHashThenCannotContainKey!107 lm!1707 key!3918 (_1!27752 (h!54934 (toList!3255 lm!1707))) hashF!1247) lt!1608303)))

(declare-fun bs!730052 () Bool)

(assert (= bs!730052 d!1328680))

(assert (=> bs!730052 m!5068787))

(assert (=> bs!730052 m!5068787))

(assert (=> bs!730052 m!5068789))

(declare-fun m!5069081 () Bool)

(assert (=> bs!730052 m!5069081))

(declare-fun m!5069083 () Bool)

(assert (=> bs!730052 m!5069083))

(assert (=> b!4403783 d!1328680))

(declare-fun d!1328682 () Bool)

(declare-fun res!1816873 () Bool)

(declare-fun e!2742247 () Bool)

(assert (=> d!1328682 (=> res!1816873 e!2742247)))

(assert (=> d!1328682 (= res!1816873 (not (is-Cons!49302 (_2!27752 (h!54934 (toList!3255 lm!1707))))))))

(assert (=> d!1328682 (= (noDuplicateKeys!636 (_2!27752 (h!54934 (toList!3255 lm!1707)))) e!2742247)))

(declare-fun b!4403995 () Bool)

(declare-fun e!2742248 () Bool)

(assert (=> b!4403995 (= e!2742247 e!2742248)))

(declare-fun res!1816874 () Bool)

(assert (=> b!4403995 (=> (not res!1816874) (not e!2742248))))

(assert (=> b!4403995 (= res!1816874 (not (containsKey!954 (t!356360 (_2!27752 (h!54934 (toList!3255 lm!1707)))) (_1!27751 (h!54933 (_2!27752 (h!54934 (toList!3255 lm!1707))))))))))

(declare-fun b!4403996 () Bool)

(assert (=> b!4403996 (= e!2742248 (noDuplicateKeys!636 (t!356360 (_2!27752 (h!54934 (toList!3255 lm!1707))))))))

(assert (= (and d!1328682 (not res!1816873)) b!4403995))

(assert (= (and b!4403995 res!1816874) b!4403996))

(declare-fun m!5069085 () Bool)

(assert (=> b!4403995 m!5069085))

(declare-fun m!5069087 () Bool)

(assert (=> b!4403996 m!5069087))

(assert (=> b!4403783 d!1328682))

(declare-fun bm!306480 () Bool)

(declare-fun call!306485 () Bool)

(declare-fun e!2742249 () List!49430)

(assert (=> bm!306480 (= call!306485 (contains!11710 e!2742249 key!3918))))

(declare-fun c!749871 () Bool)

(declare-fun c!749872 () Bool)

(assert (=> bm!306480 (= c!749871 c!749872)))

(declare-fun b!4403997 () Bool)

(declare-fun e!2742250 () Bool)

(assert (=> b!4403997 (= e!2742250 (not (contains!11710 (keys!16762 lt!1608134) key!3918)))))

(declare-fun b!4403998 () Bool)

(declare-fun e!2742252 () Unit!79205)

(declare-fun lt!1608306 () Unit!79205)

(assert (=> b!4403998 (= e!2742252 lt!1608306)))

(declare-fun lt!1608309 () Unit!79205)

(assert (=> b!4403998 (= lt!1608309 (lemmaContainsKeyImpliesGetValueByKeyDefined!519 (toList!3256 lt!1608134) key!3918))))

(assert (=> b!4403998 (isDefined!7916 (getValueByKey!609 (toList!3256 lt!1608134) key!3918))))

(declare-fun lt!1608307 () Unit!79205)

(assert (=> b!4403998 (= lt!1608307 lt!1608309)))

(assert (=> b!4403998 (= lt!1608306 (lemmaInListThenGetKeysListContains!199 (toList!3256 lt!1608134) key!3918))))

(assert (=> b!4403998 call!306485))

(declare-fun b!4403999 () Bool)

(assert (=> b!4403999 false))

(declare-fun lt!1608304 () Unit!79205)

(declare-fun lt!1608305 () Unit!79205)

(assert (=> b!4403999 (= lt!1608304 lt!1608305)))

(assert (=> b!4403999 (containsKey!957 (toList!3256 lt!1608134) key!3918)))

(assert (=> b!4403999 (= lt!1608305 (lemmaInGetKeysListThenContainsKey!200 (toList!3256 lt!1608134) key!3918))))

(declare-fun e!2742251 () Unit!79205)

(declare-fun Unit!79215 () Unit!79205)

(assert (=> b!4403999 (= e!2742251 Unit!79215)))

(declare-fun b!4404000 () Bool)

(assert (=> b!4404000 (= e!2742249 (getKeysList!202 (toList!3256 lt!1608134)))))

(declare-fun d!1328684 () Bool)

(declare-fun e!2742254 () Bool)

(assert (=> d!1328684 e!2742254))

(declare-fun res!1816876 () Bool)

(assert (=> d!1328684 (=> res!1816876 e!2742254)))

(assert (=> d!1328684 (= res!1816876 e!2742250)))

(declare-fun res!1816877 () Bool)

(assert (=> d!1328684 (=> (not res!1816877) (not e!2742250))))

(declare-fun lt!1608308 () Bool)

(assert (=> d!1328684 (= res!1816877 (not lt!1608308))))

(declare-fun lt!1608311 () Bool)

(assert (=> d!1328684 (= lt!1608308 lt!1608311)))

(declare-fun lt!1608310 () Unit!79205)

(assert (=> d!1328684 (= lt!1608310 e!2742252)))

(assert (=> d!1328684 (= c!749872 lt!1608311)))

(assert (=> d!1328684 (= lt!1608311 (containsKey!957 (toList!3256 lt!1608134) key!3918))))

(assert (=> d!1328684 (= (contains!11705 lt!1608134 key!3918) lt!1608308)))

(declare-fun b!4404001 () Bool)

(declare-fun e!2742253 () Bool)

(assert (=> b!4404001 (= e!2742254 e!2742253)))

(declare-fun res!1816875 () Bool)

(assert (=> b!4404001 (=> (not res!1816875) (not e!2742253))))

(assert (=> b!4404001 (= res!1816875 (isDefined!7916 (getValueByKey!609 (toList!3256 lt!1608134) key!3918)))))

(declare-fun b!4404002 () Bool)

(assert (=> b!4404002 (= e!2742252 e!2742251)))

(declare-fun c!749873 () Bool)

(assert (=> b!4404002 (= c!749873 call!306485)))

(declare-fun b!4404003 () Bool)

(declare-fun Unit!79216 () Unit!79205)

(assert (=> b!4404003 (= e!2742251 Unit!79216)))

(declare-fun b!4404004 () Bool)

(assert (=> b!4404004 (= e!2742249 (keys!16762 lt!1608134))))

(declare-fun b!4404005 () Bool)

(assert (=> b!4404005 (= e!2742253 (contains!11710 (keys!16762 lt!1608134) key!3918))))

(assert (= (and d!1328684 c!749872) b!4403998))

(assert (= (and d!1328684 (not c!749872)) b!4404002))

(assert (= (and b!4404002 c!749873) b!4403999))

(assert (= (and b!4404002 (not c!749873)) b!4404003))

(assert (= (or b!4403998 b!4404002) bm!306480))

(assert (= (and bm!306480 c!749871) b!4404000))

(assert (= (and bm!306480 (not c!749871)) b!4404004))

(assert (= (and d!1328684 res!1816877) b!4403997))

(assert (= (and d!1328684 (not res!1816876)) b!4404001))

(assert (= (and b!4404001 res!1816875) b!4404005))

(declare-fun m!5069089 () Bool)

(assert (=> b!4404004 m!5069089))

(declare-fun m!5069091 () Bool)

(assert (=> b!4403998 m!5069091))

(declare-fun m!5069093 () Bool)

(assert (=> b!4403998 m!5069093))

(assert (=> b!4403998 m!5069093))

(declare-fun m!5069095 () Bool)

(assert (=> b!4403998 m!5069095))

(declare-fun m!5069097 () Bool)

(assert (=> b!4403998 m!5069097))

(declare-fun m!5069099 () Bool)

(assert (=> bm!306480 m!5069099))

(declare-fun m!5069101 () Bool)

(assert (=> b!4403999 m!5069101))

(declare-fun m!5069103 () Bool)

(assert (=> b!4403999 m!5069103))

(assert (=> b!4404001 m!5069093))

(assert (=> b!4404001 m!5069093))

(assert (=> b!4404001 m!5069095))

(assert (=> b!4403997 m!5069089))

(assert (=> b!4403997 m!5069089))

(declare-fun m!5069105 () Bool)

(assert (=> b!4403997 m!5069105))

(assert (=> b!4404005 m!5069089))

(assert (=> b!4404005 m!5069089))

(assert (=> b!4404005 m!5069105))

(declare-fun m!5069107 () Bool)

(assert (=> b!4404000 m!5069107))

(assert (=> d!1328684 m!5069101))

(assert (=> b!4403783 d!1328684))

(declare-fun d!1328686 () Bool)

(assert (=> d!1328686 (contains!11705 lt!1608134 key!3918)))

(declare-fun lt!1608317 () Unit!79205)

(declare-fun choose!27661 (List!49426 K!10658 V!10904 ListMap!2499) Unit!79205)

(assert (=> d!1328686 (= lt!1608317 (choose!27661 (_2!27752 (h!54934 (toList!3255 lm!1707))) key!3918 newValue!99 lt!1608134))))

(assert (=> d!1328686 (noDuplicateKeys!636 (_2!27752 (h!54934 (toList!3255 lm!1707))))))

(assert (=> d!1328686 (= (lemmaAddToMapContainsAndNotInListThenInAcc!95 (_2!27752 (h!54934 (toList!3255 lm!1707))) key!3918 newValue!99 lt!1608134) lt!1608317)))

(declare-fun bs!730053 () Bool)

(assert (= bs!730053 d!1328686))

(assert (=> bs!730053 m!5068777))

(declare-fun m!5069109 () Bool)

(assert (=> bs!730053 m!5069109))

(assert (=> bs!730053 m!5068765))

(assert (=> b!4403783 d!1328686))

(declare-fun bs!730056 () Bool)

(declare-fun d!1328688 () Bool)

(assert (= bs!730056 (and d!1328688 start!428394)))

(declare-fun lambda!149513 () Int)

(assert (=> bs!730056 (not (= lambda!149513 lambda!149478))))

(declare-fun bs!730057 () Bool)

(assert (= bs!730057 (and d!1328688 d!1328666)))

(assert (=> bs!730057 (not (= lambda!149513 lambda!149502))))

(declare-fun bs!730058 () Bool)

(assert (= bs!730058 (and d!1328688 d!1328680)))

(assert (=> bs!730058 (not (= lambda!149513 lambda!149507))))

(declare-fun bs!730059 () Bool)

(assert (= bs!730059 (and d!1328688 d!1328658)))

(assert (=> bs!730059 (not (= lambda!149513 lambda!149499))))

(declare-fun bs!730060 () Bool)

(assert (= bs!730060 (and d!1328688 d!1328676)))

(assert (=> bs!730060 (not (= lambda!149513 lambda!149504))))

(declare-fun bs!730061 () Bool)

(assert (= bs!730061 (and d!1328688 d!1328670)))

(assert (=> bs!730061 (not (= lambda!149513 lambda!149503))))

(declare-fun bs!730062 () Bool)

(assert (= bs!730062 (and d!1328688 d!1328626)))

(assert (=> bs!730062 (not (= lambda!149513 lambda!149495))))

(assert (=> d!1328688 true))

(assert (=> d!1328688 (= (allKeysSameHashInMap!740 lm!1707 hashF!1247) (forall!9385 (toList!3255 lm!1707) lambda!149513))))

(declare-fun bs!730063 () Bool)

(assert (= bs!730063 d!1328688))

(declare-fun m!5069117 () Bool)

(assert (=> bs!730063 m!5069117))

(assert (=> b!4403793 d!1328688))

(declare-fun bs!730096 () Bool)

(declare-fun b!4404095 () Bool)

(assert (= bs!730096 (and b!4404095 d!1328652)))

(declare-fun lambda!149551 () Int)

(assert (=> bs!730096 (not (= lambda!149551 lambda!149498))))

(assert (=> b!4404095 true))

(declare-fun bs!730097 () Bool)

(declare-fun b!4404094 () Bool)

(assert (= bs!730097 (and b!4404094 d!1328652)))

(declare-fun lambda!149552 () Int)

(assert (=> bs!730097 (not (= lambda!149552 lambda!149498))))

(declare-fun bs!730098 () Bool)

(assert (= bs!730098 (and b!4404094 b!4404095)))

(assert (=> bs!730098 (= lambda!149552 lambda!149551)))

(assert (=> b!4404094 true))

(declare-fun lambda!149553 () Int)

(assert (=> bs!730097 (not (= lambda!149553 lambda!149498))))

(declare-fun lt!1608430 () ListMap!2499)

(assert (=> bs!730098 (= (= lt!1608430 lt!1608124) (= lambda!149553 lambda!149551))))

(assert (=> b!4404094 (= (= lt!1608430 lt!1608124) (= lambda!149553 lambda!149552))))

(assert (=> b!4404094 true))

(declare-fun bs!730099 () Bool)

(declare-fun d!1328692 () Bool)

(assert (= bs!730099 (and d!1328692 d!1328652)))

(declare-fun lambda!149554 () Int)

(assert (=> bs!730099 (not (= lambda!149554 lambda!149498))))

(declare-fun bs!730100 () Bool)

(assert (= bs!730100 (and d!1328692 b!4404095)))

(declare-fun lt!1608417 () ListMap!2499)

(assert (=> bs!730100 (= (= lt!1608417 lt!1608124) (= lambda!149554 lambda!149551))))

(declare-fun bs!730101 () Bool)

(assert (= bs!730101 (and d!1328692 b!4404094)))

(assert (=> bs!730101 (= (= lt!1608417 lt!1608124) (= lambda!149554 lambda!149552))))

(assert (=> bs!730101 (= (= lt!1608417 lt!1608430) (= lambda!149554 lambda!149553))))

(assert (=> d!1328692 true))

(declare-fun b!4404092 () Bool)

(declare-fun e!2742314 () Bool)

(declare-fun call!306496 () Bool)

(assert (=> b!4404092 (= e!2742314 call!306496)))

(declare-fun b!4404093 () Bool)

(declare-fun e!2742316 () Bool)

(assert (=> b!4404093 (= e!2742316 (invariantList!755 (toList!3256 lt!1608417)))))

(declare-fun e!2742315 () ListMap!2499)

(assert (=> b!4404094 (= e!2742315 lt!1608430)))

(declare-fun lt!1608426 () ListMap!2499)

(assert (=> b!4404094 (= lt!1608426 (+!888 lt!1608124 (h!54933 (_2!27752 (h!54934 (toList!3255 lm!1707))))))))

(assert (=> b!4404094 (= lt!1608430 (addToMapMapFromBucket!302 (t!356360 (_2!27752 (h!54934 (toList!3255 lm!1707)))) (+!888 lt!1608124 (h!54933 (_2!27752 (h!54934 (toList!3255 lm!1707)))))))))

(declare-fun lt!1608428 () Unit!79205)

(declare-fun call!306494 () Unit!79205)

(assert (=> b!4404094 (= lt!1608428 call!306494)))

(assert (=> b!4404094 (forall!9387 (toList!3256 lt!1608124) lambda!149552)))

(declare-fun lt!1608431 () Unit!79205)

(assert (=> b!4404094 (= lt!1608431 lt!1608428)))

(declare-fun call!306495 () Bool)

(assert (=> b!4404094 call!306495))

(declare-fun lt!1608421 () Unit!79205)

(declare-fun Unit!79218 () Unit!79205)

(assert (=> b!4404094 (= lt!1608421 Unit!79218)))

(assert (=> b!4404094 (forall!9387 (t!356360 (_2!27752 (h!54934 (toList!3255 lm!1707)))) lambda!149553)))

(declare-fun lt!1608420 () Unit!79205)

(declare-fun Unit!79219 () Unit!79205)

(assert (=> b!4404094 (= lt!1608420 Unit!79219)))

(declare-fun lt!1608414 () Unit!79205)

(declare-fun Unit!79220 () Unit!79205)

(assert (=> b!4404094 (= lt!1608414 Unit!79220)))

(declare-fun lt!1608429 () Unit!79205)

(declare-fun forallContained!2022 (List!49426 Int tuple2!48914) Unit!79205)

(assert (=> b!4404094 (= lt!1608429 (forallContained!2022 (toList!3256 lt!1608426) lambda!149553 (h!54933 (_2!27752 (h!54934 (toList!3255 lm!1707))))))))

(assert (=> b!4404094 (contains!11705 lt!1608426 (_1!27751 (h!54933 (_2!27752 (h!54934 (toList!3255 lm!1707))))))))

(declare-fun lt!1608422 () Unit!79205)

(declare-fun Unit!79221 () Unit!79205)

(assert (=> b!4404094 (= lt!1608422 Unit!79221)))

(assert (=> b!4404094 (contains!11705 lt!1608430 (_1!27751 (h!54933 (_2!27752 (h!54934 (toList!3255 lm!1707))))))))

(declare-fun lt!1608432 () Unit!79205)

(declare-fun Unit!79222 () Unit!79205)

(assert (=> b!4404094 (= lt!1608432 Unit!79222)))

(assert (=> b!4404094 (forall!9387 (_2!27752 (h!54934 (toList!3255 lm!1707))) lambda!149553)))

(declare-fun lt!1608413 () Unit!79205)

(declare-fun Unit!79223 () Unit!79205)

(assert (=> b!4404094 (= lt!1608413 Unit!79223)))

(assert (=> b!4404094 (forall!9387 (toList!3256 lt!1608426) lambda!149553)))

(declare-fun lt!1608412 () Unit!79205)

(declare-fun Unit!79224 () Unit!79205)

(assert (=> b!4404094 (= lt!1608412 Unit!79224)))

(declare-fun lt!1608427 () Unit!79205)

(declare-fun Unit!79225 () Unit!79205)

(assert (=> b!4404094 (= lt!1608427 Unit!79225)))

(declare-fun lt!1608416 () Unit!79205)

(declare-fun addForallContainsKeyThenBeforeAdding!134 (ListMap!2499 ListMap!2499 K!10658 V!10904) Unit!79205)

(assert (=> b!4404094 (= lt!1608416 (addForallContainsKeyThenBeforeAdding!134 lt!1608124 lt!1608430 (_1!27751 (h!54933 (_2!27752 (h!54934 (toList!3255 lm!1707))))) (_2!27751 (h!54933 (_2!27752 (h!54934 (toList!3255 lm!1707)))))))))

(assert (=> b!4404094 (forall!9387 (toList!3256 lt!1608124) lambda!149553)))

(declare-fun lt!1608418 () Unit!79205)

(assert (=> b!4404094 (= lt!1608418 lt!1608416)))

(assert (=> b!4404094 (forall!9387 (toList!3256 lt!1608124) lambda!149553)))

(declare-fun lt!1608415 () Unit!79205)

(declare-fun Unit!79226 () Unit!79205)

(assert (=> b!4404094 (= lt!1608415 Unit!79226)))

(declare-fun res!1816923 () Bool)

(assert (=> b!4404094 (= res!1816923 (forall!9387 (_2!27752 (h!54934 (toList!3255 lm!1707))) lambda!149553))))

(assert (=> b!4404094 (=> (not res!1816923) (not e!2742314))))

(assert (=> b!4404094 e!2742314))

(declare-fun lt!1608423 () Unit!79205)

(declare-fun Unit!79227 () Unit!79205)

(assert (=> b!4404094 (= lt!1608423 Unit!79227)))

(assert (=> b!4404095 (= e!2742315 lt!1608124)))

(declare-fun lt!1608419 () Unit!79205)

(assert (=> b!4404095 (= lt!1608419 call!306494)))

(assert (=> b!4404095 call!306496))

(declare-fun lt!1608424 () Unit!79205)

(assert (=> b!4404095 (= lt!1608424 lt!1608419)))

(assert (=> b!4404095 call!306495))

(declare-fun lt!1608425 () Unit!79205)

(declare-fun Unit!79228 () Unit!79205)

(assert (=> b!4404095 (= lt!1608425 Unit!79228)))

(assert (=> d!1328692 e!2742316))

(declare-fun res!1816922 () Bool)

(assert (=> d!1328692 (=> (not res!1816922) (not e!2742316))))

(assert (=> d!1328692 (= res!1816922 (forall!9387 (_2!27752 (h!54934 (toList!3255 lm!1707))) lambda!149554))))

(assert (=> d!1328692 (= lt!1608417 e!2742315)))

(declare-fun c!749894 () Bool)

(assert (=> d!1328692 (= c!749894 (is-Nil!49302 (_2!27752 (h!54934 (toList!3255 lm!1707)))))))

(assert (=> d!1328692 (noDuplicateKeys!636 (_2!27752 (h!54934 (toList!3255 lm!1707))))))

(assert (=> d!1328692 (= (addToMapMapFromBucket!302 (_2!27752 (h!54934 (toList!3255 lm!1707))) lt!1608124) lt!1608417)))

(declare-fun bm!306489 () Bool)

(assert (=> bm!306489 (= call!306496 (forall!9387 (toList!3256 lt!1608124) (ite c!749894 lambda!149551 lambda!149553)))))

(declare-fun bm!306490 () Bool)

(assert (=> bm!306490 (= call!306495 (forall!9387 (ite c!749894 (toList!3256 lt!1608124) (toList!3256 lt!1608426)) (ite c!749894 lambda!149551 lambda!149553)))))

(declare-fun bm!306491 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!134 (ListMap!2499) Unit!79205)

(assert (=> bm!306491 (= call!306494 (lemmaContainsAllItsOwnKeys!134 lt!1608124))))

(declare-fun b!4404096 () Bool)

(declare-fun res!1816924 () Bool)

(assert (=> b!4404096 (=> (not res!1816924) (not e!2742316))))

(assert (=> b!4404096 (= res!1816924 (forall!9387 (toList!3256 lt!1608124) lambda!149554))))

(assert (= (and d!1328692 c!749894) b!4404095))

(assert (= (and d!1328692 (not c!749894)) b!4404094))

(assert (= (and b!4404094 res!1816923) b!4404092))

(assert (= (or b!4404095 b!4404094) bm!306491))

(assert (= (or b!4404095 b!4404092) bm!306489))

(assert (= (or b!4404095 b!4404094) bm!306490))

(assert (= (and d!1328692 res!1816922) b!4404096))

(assert (= (and b!4404096 res!1816924) b!4404093))

(declare-fun m!5069271 () Bool)

(assert (=> bm!306489 m!5069271))

(declare-fun m!5069273 () Bool)

(assert (=> bm!306490 m!5069273))

(declare-fun m!5069275 () Bool)

(assert (=> d!1328692 m!5069275))

(assert (=> d!1328692 m!5068765))

(declare-fun m!5069279 () Bool)

(assert (=> b!4404096 m!5069279))

(declare-fun m!5069281 () Bool)

(assert (=> b!4404093 m!5069281))

(declare-fun m!5069283 () Bool)

(assert (=> b!4404094 m!5069283))

(declare-fun m!5069285 () Bool)

(assert (=> b!4404094 m!5069285))

(assert (=> b!4404094 m!5069283))

(declare-fun m!5069287 () Bool)

(assert (=> b!4404094 m!5069287))

(declare-fun m!5069289 () Bool)

(assert (=> b!4404094 m!5069289))

(declare-fun m!5069291 () Bool)

(assert (=> b!4404094 m!5069291))

(declare-fun m!5069293 () Bool)

(assert (=> b!4404094 m!5069293))

(declare-fun m!5069295 () Bool)

(assert (=> b!4404094 m!5069295))

(declare-fun m!5069297 () Bool)

(assert (=> b!4404094 m!5069297))

(assert (=> b!4404094 m!5069291))

(declare-fun m!5069299 () Bool)

(assert (=> b!4404094 m!5069299))

(declare-fun m!5069301 () Bool)

(assert (=> b!4404094 m!5069301))

(assert (=> b!4404094 m!5069301))

(declare-fun m!5069303 () Bool)

(assert (=> b!4404094 m!5069303))

(declare-fun m!5069305 () Bool)

(assert (=> bm!306491 m!5069305))

(assert (=> b!4403784 d!1328692))

(declare-fun d!1328738 () Bool)

(declare-fun res!1816933 () Bool)

(declare-fun e!2742322 () Bool)

(assert (=> d!1328738 (=> res!1816933 e!2742322)))

(assert (=> d!1328738 (= res!1816933 (and (is-Cons!49302 (_2!27752 (h!54934 (toList!3255 lm!1707)))) (= (_1!27751 (h!54933 (_2!27752 (h!54934 (toList!3255 lm!1707))))) key!3918)))))

(assert (=> d!1328738 (= (containsKey!954 (_2!27752 (h!54934 (toList!3255 lm!1707))) key!3918) e!2742322)))

(declare-fun b!4404107 () Bool)

(declare-fun e!2742323 () Bool)

(assert (=> b!4404107 (= e!2742322 e!2742323)))

(declare-fun res!1816934 () Bool)

(assert (=> b!4404107 (=> (not res!1816934) (not e!2742323))))

(assert (=> b!4404107 (= res!1816934 (is-Cons!49302 (_2!27752 (h!54934 (toList!3255 lm!1707)))))))

(declare-fun b!4404108 () Bool)

(assert (=> b!4404108 (= e!2742323 (containsKey!954 (t!356360 (_2!27752 (h!54934 (toList!3255 lm!1707)))) key!3918))))

(assert (= (and d!1328738 (not res!1816933)) b!4404107))

(assert (= (and b!4404107 res!1816934) b!4404108))

(declare-fun m!5069307 () Bool)

(assert (=> b!4404108 m!5069307))

(assert (=> b!4403786 d!1328738))

(assert (=> b!4403787 d!1328644))

(declare-fun d!1328740 () Bool)

(declare-fun res!1816935 () Bool)

(declare-fun e!2742324 () Bool)

(assert (=> d!1328740 (=> res!1816935 e!2742324)))

(assert (=> d!1328740 (= res!1816935 (not (is-Cons!49302 newBucket!200)))))

(assert (=> d!1328740 (= (noDuplicateKeys!636 newBucket!200) e!2742324)))

(declare-fun b!4404109 () Bool)

(declare-fun e!2742325 () Bool)

(assert (=> b!4404109 (= e!2742324 e!2742325)))

(declare-fun res!1816936 () Bool)

(assert (=> b!4404109 (=> (not res!1816936) (not e!2742325))))

(assert (=> b!4404109 (= res!1816936 (not (containsKey!954 (t!356360 newBucket!200) (_1!27751 (h!54933 newBucket!200)))))))

(declare-fun b!4404110 () Bool)

(assert (=> b!4404110 (= e!2742325 (noDuplicateKeys!636 (t!356360 newBucket!200)))))

(assert (= (and d!1328740 (not res!1816935)) b!4404109))

(assert (= (and b!4404109 res!1816936) b!4404110))

(declare-fun m!5069309 () Bool)

(assert (=> b!4404109 m!5069309))

(declare-fun m!5069311 () Bool)

(assert (=> b!4404110 m!5069311))

(assert (=> b!4403788 d!1328740))

(declare-fun b!4404115 () Bool)

(declare-fun e!2742328 () Bool)

(declare-fun tp!1331955 () Bool)

(declare-fun tp!1331956 () Bool)

(assert (=> b!4404115 (= e!2742328 (and tp!1331955 tp!1331956))))

(assert (=> b!4403785 (= tp!1331943 e!2742328)))

(assert (= (and b!4403785 (is-Cons!49303 (toList!3255 lm!1707))) b!4404115))

(declare-fun tp!1331959 () Bool)

(declare-fun e!2742331 () Bool)

(declare-fun b!4404120 () Bool)

(assert (=> b!4404120 (= e!2742331 (and tp_is_empty!25781 tp_is_empty!25783 tp!1331959))))

(assert (=> b!4403792 (= tp!1331944 e!2742331)))

(assert (= (and b!4403792 (is-Cons!49302 (t!356360 newBucket!200))) b!4404120))

(declare-fun b_lambda!140195 () Bool)

(assert (= b_lambda!140189 (or start!428394 b_lambda!140195)))

(declare-fun bs!730102 () Bool)

(declare-fun d!1328742 () Bool)

(assert (= bs!730102 (and d!1328742 start!428394)))

(assert (=> bs!730102 (= (dynLambda!20773 lambda!149478 (h!54934 (toList!3255 lm!1707))) (noDuplicateKeys!636 (_2!27752 (h!54934 (toList!3255 lm!1707)))))))

(assert (=> bs!730102 m!5068765))

(assert (=> b!4403929 d!1328742))

(declare-fun b_lambda!140197 () Bool)

(assert (= b_lambda!140183 (or start!428394 b_lambda!140197)))

(declare-fun bs!730103 () Bool)

(declare-fun d!1328744 () Bool)

(assert (= bs!730103 (and d!1328744 start!428394)))

(assert (=> bs!730103 (= (dynLambda!20773 lambda!149478 lt!1608122) (noDuplicateKeys!636 (_2!27752 lt!1608122)))))

(declare-fun m!5069313 () Bool)

(assert (=> bs!730103 m!5069313))

(assert (=> d!1328636 d!1328744))

(declare-fun b_lambda!140199 () Bool)

(assert (= b_lambda!140185 (or start!428394 b_lambda!140199)))

(declare-fun bs!730104 () Bool)

(declare-fun d!1328746 () Bool)

(assert (= bs!730104 (and d!1328746 start!428394)))

(assert (=> bs!730104 (= (dynLambda!20773 lambda!149478 (h!54934 (toList!3255 lt!1608130))) (noDuplicateKeys!636 (_2!27752 (h!54934 (toList!3255 lt!1608130)))))))

(declare-fun m!5069315 () Bool)

(assert (=> bs!730104 m!5069315))

(assert (=> b!4403917 d!1328746))

(declare-fun b_lambda!140201 () Bool)

(assert (= b_lambda!140187 (or start!428394 b_lambda!140201)))

(declare-fun bs!730105 () Bool)

(declare-fun d!1328748 () Bool)

(assert (= bs!730105 (and d!1328748 start!428394)))

(assert (=> bs!730105 (= (dynLambda!20773 lambda!149478 (tuple2!48917 hash!377 newBucket!200)) (noDuplicateKeys!636 (_2!27752 (tuple2!48917 hash!377 newBucket!200))))))

(declare-fun m!5069317 () Bool)

(assert (=> bs!730105 m!5069317))

(assert (=> b!4403928 d!1328748))

(push 1)

(assert (not b!4403845))

(assert (not d!1328642))

(assert (not d!1328664))

(assert (not b!4404093))

(assert (not b!4403981))

(assert (not b!4403995))

(assert (not bm!306475))

(assert (not d!1328676))

(assert (not b!4403985))

(assert (not b!4404000))

(assert (not d!1328692))

(assert (not d!1328626))

(assert (not d!1328616))

(assert (not b!4403885))

(assert (not d!1328666))

(assert (not d!1328622))

(assert (not d!1328670))

(assert (not b!4403869))

(assert (not b!4404108))

(assert (not b!4403989))

(assert (not b!4404004))

(assert (not b!4403996))

(assert (not b!4404115))

(assert (not b!4403874))

(assert (not b!4403953))

(assert (not b!4404094))

(assert (not b!4403986))

(assert (not b!4403912))

(assert (not bm!306490))

(assert (not d!1328652))

(assert (not d!1328636))

(assert (not b!4403894))

(assert (not b!4403997))

(assert (not b!4404110))

(assert (not b!4403966))

(assert (not b!4403905))

(assert (not b!4403998))

(assert (not bs!730105))

(assert (not d!1328632))

(assert (not b!4403979))

(assert (not b_lambda!140199))

(assert (not b!4404001))

(assert (not bm!306489))

(assert (not b!4403923))

(assert (not d!1328658))

(assert (not b!4403988))

(assert (not d!1328640))

(assert (not b!4403868))

(assert (not b!4403978))

(assert (not d!1328648))

(assert tp_is_empty!25783)

(assert (not bs!730102))

(assert (not b!4403930))

(assert (not b!4403918))

(assert (not b!4404109))

(assert (not d!1328678))

(assert (not b!4403965))

(assert (not b!4403980))

(assert (not bm!306491))

(assert (not d!1328620))

(assert (not b_lambda!140201))

(assert (not d!1328662))

(assert (not d!1328660))

(assert (not d!1328686))

(assert (not b!4403847))

(assert (not b!4403873))

(assert (not b!4403987))

(assert (not d!1328646))

(assert (not b!4403866))

(assert (not d!1328654))

(assert (not b!4404096))

(assert (not b!4403924))

(assert (not b!4404120))

(assert (not d!1328680))

(assert (not b!4403976))

(assert (not b!4403982))

(assert (not d!1328638))

(assert (not b_lambda!140195))

(assert (not bs!730103))

(assert (not b_lambda!140197))

(assert (not d!1328618))

(assert (not d!1328674))

(assert (not b!4403867))

(assert (not d!1328684))

(assert (not b!4403999))

(assert (not bs!730104))

(assert (not b!4403948))

(assert tp_is_empty!25781)

(assert (not bm!306480))

(assert (not bm!306479))

(assert (not b!4403870))

(assert (not d!1328688))

(assert (not b!4403891))

(assert (not d!1328672))

(assert (not b!4404005))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

