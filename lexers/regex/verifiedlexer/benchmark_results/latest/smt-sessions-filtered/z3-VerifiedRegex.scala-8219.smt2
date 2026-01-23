; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!424804 () Bool)

(assert start!424804)

(declare-fun b!4375747 () Bool)

(declare-fun e!2723688 () Bool)

(declare-fun tp_is_empty!25531 () Bool)

(declare-fun tp_is_empty!25529 () Bool)

(declare-fun tp!1331099 () Bool)

(assert (=> b!4375747 (= e!2723688 (and tp_is_empty!25529 tp_is_empty!25531 tp!1331099))))

(declare-fun b!4375748 () Bool)

(declare-fun e!2723685 () Bool)

(declare-fun e!2723682 () Bool)

(assert (=> b!4375748 (= e!2723685 e!2723682)))

(declare-fun res!1801584 () Bool)

(assert (=> b!4375748 (=> res!1801584 e!2723682)))

(declare-datatypes ((V!10746 0))(
  ( (V!10747 (val!16671 Int)) )
))
(declare-datatypes ((K!10500 0))(
  ( (K!10501 (val!16672 Int)) )
))
(declare-datatypes ((tuple2!48662 0))(
  ( (tuple2!48663 (_1!27625 K!10500) (_2!27625 V!10746)) )
))
(declare-datatypes ((List!49264 0))(
  ( (Nil!49140) (Cons!49140 (h!54733 tuple2!48662) (t!356190 List!49264)) )
))
(declare-datatypes ((tuple2!48664 0))(
  ( (tuple2!48665 (_1!27626 (_ BitVec 64)) (_2!27626 List!49264)) )
))
(declare-datatypes ((List!49265 0))(
  ( (Nil!49141) (Cons!49141 (h!54734 tuple2!48664) (t!356191 List!49265)) )
))
(declare-datatypes ((ListLongMap!1779 0))(
  ( (ListLongMap!1780 (toList!3129 List!49265)) )
))
(declare-fun lm!1707 () ListLongMap!1779)

(declare-fun lambda!144607 () Int)

(declare-fun forall!9259 (List!49265 Int) Bool)

(assert (=> b!4375748 (= res!1801584 (not (forall!9259 (toList!3129 lm!1707) lambda!144607)))))

(declare-fun e!2723687 () Bool)

(assert (=> b!4375748 e!2723687))

(declare-fun res!1801582 () Bool)

(assert (=> b!4375748 (=> (not res!1801582) (not e!2723687))))

(declare-fun lt!1586452 () List!49264)

(declare-fun lt!1586460 () List!49264)

(assert (=> b!4375748 (= res!1801582 (= lt!1586452 lt!1586460))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun lt!1586459 () ListLongMap!1779)

(declare-fun +!777 (ListLongMap!1779 tuple2!48664) ListLongMap!1779)

(assert (=> b!4375748 (= lt!1586459 (+!777 lm!1707 (tuple2!48665 hash!377 lt!1586452)))))

(declare-fun newBucket!200 () List!49264)

(declare-fun tail!7066 (List!49264) List!49264)

(assert (=> b!4375748 (= lt!1586452 (tail!7066 newBucket!200))))

(declare-fun e!2723684 () Bool)

(assert (=> b!4375748 e!2723684))

(declare-fun res!1801574 () Bool)

(assert (=> b!4375748 (=> (not res!1801574) (not e!2723684))))

(declare-datatypes ((ListMap!2373 0))(
  ( (ListMap!2374 (toList!3130 List!49264)) )
))
(declare-fun lt!1586451 () ListMap!2373)

(declare-fun lt!1586461 () ListMap!2373)

(declare-fun eq!311 (ListMap!2373 ListMap!2373) Bool)

(assert (=> b!4375748 (= res!1801574 (eq!311 lt!1586451 lt!1586461))))

(declare-fun lt!1586454 () ListMap!2373)

(declare-fun lt!1586455 () tuple2!48662)

(declare-fun +!778 (ListMap!2373 tuple2!48662) ListMap!2373)

(assert (=> b!4375748 (= lt!1586461 (+!778 lt!1586454 lt!1586455))))

(declare-fun lt!1586446 () ListMap!2373)

(declare-fun addToMapMapFromBucket!254 (List!49264 ListMap!2373) ListMap!2373)

(assert (=> b!4375748 (= lt!1586454 (addToMapMapFromBucket!254 lt!1586460 lt!1586446))))

(declare-datatypes ((Unit!74656 0))(
  ( (Unit!74657) )
))
(declare-fun lt!1586462 () Unit!74656)

(declare-fun key!3918 () K!10500)

(declare-fun newValue!99 () V!10746)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!120 (ListMap!2373 K!10500 V!10746 List!49264) Unit!74656)

(assert (=> b!4375748 (= lt!1586462 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!120 lt!1586446 key!3918 newValue!99 lt!1586460))))

(declare-fun lt!1586457 () ListMap!2373)

(assert (=> b!4375748 (= lt!1586457 lt!1586451)))

(assert (=> b!4375748 (= lt!1586451 (addToMapMapFromBucket!254 lt!1586460 (+!778 lt!1586446 lt!1586455)))))

(declare-fun lt!1586450 () ListMap!2373)

(assert (=> b!4375748 (= lt!1586450 lt!1586457)))

(declare-fun lt!1586456 () List!49264)

(assert (=> b!4375748 (= lt!1586457 (addToMapMapFromBucket!254 lt!1586456 lt!1586446))))

(assert (=> b!4375748 (= lt!1586450 (addToMapMapFromBucket!254 newBucket!200 lt!1586446))))

(declare-fun lt!1586445 () ListLongMap!1779)

(declare-fun extractMap!632 (List!49265) ListMap!2373)

(assert (=> b!4375748 (= lt!1586450 (extractMap!632 (toList!3129 lt!1586445)))))

(assert (=> b!4375748 (= lt!1586446 (extractMap!632 (t!356191 (toList!3129 lm!1707))))))

(declare-fun b!4375749 () Bool)

(declare-fun res!1801583 () Bool)

(declare-fun e!2723683 () Bool)

(assert (=> b!4375749 (=> (not res!1801583) (not e!2723683))))

(declare-fun contains!11461 (ListMap!2373 K!10500) Bool)

(assert (=> b!4375749 (= res!1801583 (contains!11461 (extractMap!632 (toList!3129 lm!1707)) key!3918))))

(declare-fun res!1801576 () Bool)

(assert (=> start!424804 (=> (not res!1801576) (not e!2723683))))

(assert (=> start!424804 (= res!1801576 (forall!9259 (toList!3129 lm!1707) lambda!144607))))

(assert (=> start!424804 e!2723683))

(assert (=> start!424804 e!2723688))

(assert (=> start!424804 true))

(declare-fun e!2723680 () Bool)

(declare-fun inv!64686 (ListLongMap!1779) Bool)

(assert (=> start!424804 (and (inv!64686 lm!1707) e!2723680)))

(assert (=> start!424804 tp_is_empty!25529))

(assert (=> start!424804 tp_is_empty!25531))

(declare-datatypes ((Hashable!4965 0))(
  ( (HashableExt!4964 (__x!30668 Int)) )
))
(declare-fun hashF!1247 () Hashable!4965)

(declare-fun b!4375750 () Bool)

(declare-fun allKeysSameHash!531 (List!49264 (_ BitVec 64) Hashable!4965) Bool)

(assert (=> b!4375750 (= e!2723682 (allKeysSameHash!531 lt!1586452 hash!377 hashF!1247))))

(declare-fun b!4375751 () Bool)

(declare-fun res!1801578 () Bool)

(declare-fun e!2723681 () Bool)

(assert (=> b!4375751 (=> (not res!1801578) (not e!2723681))))

(assert (=> b!4375751 (= res!1801578 (forall!9259 (toList!3129 lt!1586445) lambda!144607))))

(declare-fun b!4375752 () Bool)

(declare-fun res!1801581 () Bool)

(assert (=> b!4375752 (=> (not res!1801581) (not e!2723683))))

(declare-fun hash!1736 (Hashable!4965 K!10500) (_ BitVec 64))

(assert (=> b!4375752 (= res!1801581 (= (hash!1736 hashF!1247 key!3918) hash!377))))

(declare-fun b!4375753 () Bool)

(declare-fun tp!1331100 () Bool)

(assert (=> b!4375753 (= e!2723680 tp!1331100)))

(declare-fun b!4375754 () Bool)

(assert (=> b!4375754 (= e!2723687 (= lt!1586454 (extractMap!632 (toList!3129 lt!1586459))))))

(declare-fun b!4375755 () Bool)

(declare-fun res!1801580 () Bool)

(assert (=> b!4375755 (=> (not res!1801580) (not e!2723683))))

(declare-fun contains!11462 (ListLongMap!1779 (_ BitVec 64)) Bool)

(assert (=> b!4375755 (= res!1801580 (contains!11462 lm!1707 hash!377))))

(declare-fun b!4375756 () Bool)

(declare-fun e!2723686 () Bool)

(assert (=> b!4375756 (= e!2723686 e!2723685)))

(declare-fun res!1801587 () Bool)

(assert (=> b!4375756 (=> res!1801587 e!2723685)))

(get-info :version)

(assert (=> b!4375756 (= res!1801587 (or (not ((_ is Cons!49141) (toList!3129 lm!1707))) (not (= (_1!27626 (h!54734 (toList!3129 lm!1707))) hash!377))))))

(assert (=> b!4375756 e!2723681))

(declare-fun res!1801579 () Bool)

(assert (=> b!4375756 (=> (not res!1801579) (not e!2723681))))

(assert (=> b!4375756 (= res!1801579 (forall!9259 (toList!3129 lt!1586445) lambda!144607))))

(declare-fun lt!1586448 () tuple2!48664)

(assert (=> b!4375756 (= lt!1586445 (+!777 lm!1707 lt!1586448))))

(assert (=> b!4375756 (= lt!1586448 (tuple2!48665 hash!377 newBucket!200))))

(declare-fun lt!1586447 () Unit!74656)

(declare-fun addValidProp!219 (ListLongMap!1779 Int (_ BitVec 64) List!49264) Unit!74656)

(assert (=> b!4375756 (= lt!1586447 (addValidProp!219 lm!1707 lambda!144607 hash!377 newBucket!200))))

(assert (=> b!4375756 (forall!9259 (toList!3129 lm!1707) lambda!144607)))

(declare-fun b!4375757 () Bool)

(assert (=> b!4375757 (= e!2723684 (eq!311 lt!1586457 lt!1586461))))

(declare-fun b!4375758 () Bool)

(declare-fun res!1801585 () Bool)

(assert (=> b!4375758 (=> (not res!1801585) (not e!2723683))))

(assert (=> b!4375758 (= res!1801585 (allKeysSameHash!531 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4375759 () Bool)

(declare-fun res!1801586 () Bool)

(assert (=> b!4375759 (=> (not res!1801586) (not e!2723683))))

(declare-fun allKeysSameHashInMap!677 (ListLongMap!1779 Hashable!4965) Bool)

(assert (=> b!4375759 (= res!1801586 (allKeysSameHashInMap!677 lm!1707 hashF!1247))))

(declare-fun b!4375760 () Bool)

(declare-fun res!1801575 () Bool)

(assert (=> b!4375760 (=> res!1801575 e!2723686)))

(declare-fun noDuplicateKeys!573 (List!49264) Bool)

(assert (=> b!4375760 (= res!1801575 (not (noDuplicateKeys!573 newBucket!200)))))

(declare-fun b!4375761 () Bool)

(assert (=> b!4375761 (= e!2723681 (or (not ((_ is Cons!49141) (toList!3129 lm!1707))) (not (= (_1!27626 (h!54734 (toList!3129 lm!1707))) hash!377)) (= lt!1586445 (ListLongMap!1780 (Cons!49141 lt!1586448 (t!356191 (toList!3129 lm!1707)))))))))

(declare-fun b!4375762 () Bool)

(assert (=> b!4375762 (= e!2723683 (not e!2723686))))

(declare-fun res!1801577 () Bool)

(assert (=> b!4375762 (=> res!1801577 e!2723686)))

(assert (=> b!4375762 (= res!1801577 (not (= newBucket!200 lt!1586456)))))

(assert (=> b!4375762 (= lt!1586456 (Cons!49140 lt!1586455 lt!1586460))))

(declare-fun lt!1586458 () List!49264)

(declare-fun removePairForKey!541 (List!49264 K!10500) List!49264)

(assert (=> b!4375762 (= lt!1586460 (removePairForKey!541 lt!1586458 key!3918))))

(assert (=> b!4375762 (= lt!1586455 (tuple2!48663 key!3918 newValue!99))))

(declare-fun lt!1586444 () tuple2!48664)

(declare-fun lt!1586453 () Unit!74656)

(declare-fun forallContained!1897 (List!49265 Int tuple2!48664) Unit!74656)

(assert (=> b!4375762 (= lt!1586453 (forallContained!1897 (toList!3129 lm!1707) lambda!144607 lt!1586444))))

(declare-fun contains!11463 (List!49265 tuple2!48664) Bool)

(assert (=> b!4375762 (contains!11463 (toList!3129 lm!1707) lt!1586444)))

(assert (=> b!4375762 (= lt!1586444 (tuple2!48665 hash!377 lt!1586458))))

(declare-fun lt!1586449 () Unit!74656)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!418 (List!49265 (_ BitVec 64) List!49264) Unit!74656)

(assert (=> b!4375762 (= lt!1586449 (lemmaGetValueByKeyImpliesContainsTuple!418 (toList!3129 lm!1707) hash!377 lt!1586458))))

(declare-fun apply!11425 (ListLongMap!1779 (_ BitVec 64)) List!49264)

(assert (=> b!4375762 (= lt!1586458 (apply!11425 lm!1707 hash!377))))

(assert (= (and start!424804 res!1801576) b!4375759))

(assert (= (and b!4375759 res!1801586) b!4375752))

(assert (= (and b!4375752 res!1801581) b!4375758))

(assert (= (and b!4375758 res!1801585) b!4375749))

(assert (= (and b!4375749 res!1801583) b!4375755))

(assert (= (and b!4375755 res!1801580) b!4375762))

(assert (= (and b!4375762 (not res!1801577)) b!4375760))

(assert (= (and b!4375760 (not res!1801575)) b!4375756))

(assert (= (and b!4375756 res!1801579) b!4375751))

(assert (= (and b!4375751 res!1801578) b!4375761))

(assert (= (and b!4375756 (not res!1801587)) b!4375748))

(assert (= (and b!4375748 res!1801574) b!4375757))

(assert (= (and b!4375748 res!1801582) b!4375754))

(assert (= (and b!4375748 (not res!1801584)) b!4375750))

(assert (= (and start!424804 ((_ is Cons!49140) newBucket!200)) b!4375747))

(assert (= start!424804 b!4375753))

(declare-fun m!5008809 () Bool)

(assert (=> b!4375757 m!5008809))

(declare-fun m!5008811 () Bool)

(assert (=> b!4375762 m!5008811))

(declare-fun m!5008813 () Bool)

(assert (=> b!4375762 m!5008813))

(declare-fun m!5008815 () Bool)

(assert (=> b!4375762 m!5008815))

(declare-fun m!5008817 () Bool)

(assert (=> b!4375762 m!5008817))

(declare-fun m!5008819 () Bool)

(assert (=> b!4375762 m!5008819))

(declare-fun m!5008821 () Bool)

(assert (=> b!4375758 m!5008821))

(declare-fun m!5008823 () Bool)

(assert (=> b!4375756 m!5008823))

(declare-fun m!5008825 () Bool)

(assert (=> b!4375756 m!5008825))

(declare-fun m!5008827 () Bool)

(assert (=> b!4375756 m!5008827))

(declare-fun m!5008829 () Bool)

(assert (=> b!4375756 m!5008829))

(declare-fun m!5008831 () Bool)

(assert (=> b!4375752 m!5008831))

(declare-fun m!5008833 () Bool)

(assert (=> b!4375759 m!5008833))

(declare-fun m!5008835 () Bool)

(assert (=> b!4375760 m!5008835))

(assert (=> start!424804 m!5008829))

(declare-fun m!5008837 () Bool)

(assert (=> start!424804 m!5008837))

(declare-fun m!5008839 () Bool)

(assert (=> b!4375748 m!5008839))

(declare-fun m!5008841 () Bool)

(assert (=> b!4375748 m!5008841))

(declare-fun m!5008843 () Bool)

(assert (=> b!4375748 m!5008843))

(declare-fun m!5008845 () Bool)

(assert (=> b!4375748 m!5008845))

(declare-fun m!5008847 () Bool)

(assert (=> b!4375748 m!5008847))

(declare-fun m!5008849 () Bool)

(assert (=> b!4375748 m!5008849))

(declare-fun m!5008851 () Bool)

(assert (=> b!4375748 m!5008851))

(declare-fun m!5008853 () Bool)

(assert (=> b!4375748 m!5008853))

(declare-fun m!5008855 () Bool)

(assert (=> b!4375748 m!5008855))

(declare-fun m!5008857 () Bool)

(assert (=> b!4375748 m!5008857))

(assert (=> b!4375748 m!5008829))

(declare-fun m!5008859 () Bool)

(assert (=> b!4375748 m!5008859))

(assert (=> b!4375748 m!5008857))

(declare-fun m!5008861 () Bool)

(assert (=> b!4375748 m!5008861))

(declare-fun m!5008863 () Bool)

(assert (=> b!4375754 m!5008863))

(declare-fun m!5008865 () Bool)

(assert (=> b!4375750 m!5008865))

(declare-fun m!5008867 () Bool)

(assert (=> b!4375755 m!5008867))

(declare-fun m!5008869 () Bool)

(assert (=> b!4375749 m!5008869))

(assert (=> b!4375749 m!5008869))

(declare-fun m!5008871 () Bool)

(assert (=> b!4375749 m!5008871))

(assert (=> b!4375751 m!5008823))

(check-sat (not b!4375750) (not b!4375754) tp_is_empty!25531 (not b!4375751) (not b!4375762) (not b!4375753) (not b!4375756) (not b!4375757) (not b!4375760) (not b!4375752) (not b!4375748) (not start!424804) (not b!4375759) (not b!4375755) (not b!4375747) tp_is_empty!25529 (not b!4375749) (not b!4375758))
(check-sat)
(get-model)

(declare-fun d!1302108 () Bool)

(declare-fun res!1801610 () Bool)

(declare-fun e!2723717 () Bool)

(assert (=> d!1302108 (=> res!1801610 e!2723717)))

(assert (=> d!1302108 (= res!1801610 ((_ is Nil!49141) (toList!3129 lm!1707)))))

(assert (=> d!1302108 (= (forall!9259 (toList!3129 lm!1707) lambda!144607) e!2723717)))

(declare-fun b!4375801 () Bool)

(declare-fun e!2723718 () Bool)

(assert (=> b!4375801 (= e!2723717 e!2723718)))

(declare-fun res!1801611 () Bool)

(assert (=> b!4375801 (=> (not res!1801611) (not e!2723718))))

(declare-fun dynLambda!20703 (Int tuple2!48664) Bool)

(assert (=> b!4375801 (= res!1801611 (dynLambda!20703 lambda!144607 (h!54734 (toList!3129 lm!1707))))))

(declare-fun b!4375802 () Bool)

(assert (=> b!4375802 (= e!2723718 (forall!9259 (t!356191 (toList!3129 lm!1707)) lambda!144607))))

(assert (= (and d!1302108 (not res!1801610)) b!4375801))

(assert (= (and b!4375801 res!1801611) b!4375802))

(declare-fun b_lambda!134499 () Bool)

(assert (=> (not b_lambda!134499) (not b!4375801)))

(declare-fun m!5008911 () Bool)

(assert (=> b!4375801 m!5008911))

(declare-fun m!5008913 () Bool)

(assert (=> b!4375802 m!5008913))

(assert (=> start!424804 d!1302108))

(declare-fun d!1302116 () Bool)

(declare-fun isStrictlySorted!146 (List!49265) Bool)

(assert (=> d!1302116 (= (inv!64686 lm!1707) (isStrictlySorted!146 (toList!3129 lm!1707)))))

(declare-fun bs!657725 () Bool)

(assert (= bs!657725 d!1302116))

(declare-fun m!5008915 () Bool)

(assert (=> bs!657725 m!5008915))

(assert (=> start!424804 d!1302116))

(declare-fun d!1302118 () Bool)

(assert (=> d!1302118 true))

(assert (=> d!1302118 true))

(declare-fun lambda!144613 () Int)

(declare-fun forall!9261 (List!49264 Int) Bool)

(assert (=> d!1302118 (= (allKeysSameHash!531 lt!1586452 hash!377 hashF!1247) (forall!9261 lt!1586452 lambda!144613))))

(declare-fun bs!657726 () Bool)

(assert (= bs!657726 d!1302118))

(declare-fun m!5008917 () Bool)

(assert (=> bs!657726 m!5008917))

(assert (=> b!4375750 d!1302118))

(declare-fun d!1302120 () Bool)

(declare-fun hash!1737 (Hashable!4965 K!10500) (_ BitVec 64))

(assert (=> d!1302120 (= (hash!1736 hashF!1247 key!3918) (hash!1737 hashF!1247 key!3918))))

(declare-fun bs!657727 () Bool)

(assert (= bs!657727 d!1302120))

(declare-fun m!5008919 () Bool)

(assert (=> bs!657727 m!5008919))

(assert (=> b!4375752 d!1302120))

(declare-fun d!1302122 () Bool)

(declare-datatypes ((Option!10551 0))(
  ( (None!10550) (Some!10550 (v!43540 List!49264)) )
))
(declare-fun get!15978 (Option!10551) List!49264)

(declare-fun getValueByKey!537 (List!49265 (_ BitVec 64)) Option!10551)

(assert (=> d!1302122 (= (apply!11425 lm!1707 hash!377) (get!15978 (getValueByKey!537 (toList!3129 lm!1707) hash!377)))))

(declare-fun bs!657728 () Bool)

(assert (= bs!657728 d!1302122))

(declare-fun m!5008921 () Bool)

(assert (=> bs!657728 m!5008921))

(assert (=> bs!657728 m!5008921))

(declare-fun m!5008923 () Bool)

(assert (=> bs!657728 m!5008923))

(assert (=> b!4375762 d!1302122))

(declare-fun d!1302124 () Bool)

(assert (=> d!1302124 (contains!11463 (toList!3129 lm!1707) (tuple2!48665 hash!377 lt!1586458))))

(declare-fun lt!1586477 () Unit!74656)

(declare-fun choose!27256 (List!49265 (_ BitVec 64) List!49264) Unit!74656)

(assert (=> d!1302124 (= lt!1586477 (choose!27256 (toList!3129 lm!1707) hash!377 lt!1586458))))

(declare-fun e!2723721 () Bool)

(assert (=> d!1302124 e!2723721))

(declare-fun res!1801614 () Bool)

(assert (=> d!1302124 (=> (not res!1801614) (not e!2723721))))

(assert (=> d!1302124 (= res!1801614 (isStrictlySorted!146 (toList!3129 lm!1707)))))

(assert (=> d!1302124 (= (lemmaGetValueByKeyImpliesContainsTuple!418 (toList!3129 lm!1707) hash!377 lt!1586458) lt!1586477)))

(declare-fun b!4375809 () Bool)

(assert (=> b!4375809 (= e!2723721 (= (getValueByKey!537 (toList!3129 lm!1707) hash!377) (Some!10550 lt!1586458)))))

(assert (= (and d!1302124 res!1801614) b!4375809))

(declare-fun m!5008925 () Bool)

(assert (=> d!1302124 m!5008925))

(declare-fun m!5008927 () Bool)

(assert (=> d!1302124 m!5008927))

(assert (=> d!1302124 m!5008915))

(assert (=> b!4375809 m!5008921))

(assert (=> b!4375762 d!1302124))

(declare-fun b!4375819 () Bool)

(declare-fun e!2723726 () List!49264)

(declare-fun e!2723727 () List!49264)

(assert (=> b!4375819 (= e!2723726 e!2723727)))

(declare-fun c!744078 () Bool)

(assert (=> b!4375819 (= c!744078 ((_ is Cons!49140) lt!1586458))))

(declare-fun b!4375820 () Bool)

(assert (=> b!4375820 (= e!2723727 (Cons!49140 (h!54733 lt!1586458) (removePairForKey!541 (t!356190 lt!1586458) key!3918)))))

(declare-fun d!1302126 () Bool)

(declare-fun lt!1586480 () List!49264)

(declare-fun containsKey!835 (List!49264 K!10500) Bool)

(assert (=> d!1302126 (not (containsKey!835 lt!1586480 key!3918))))

(assert (=> d!1302126 (= lt!1586480 e!2723726)))

(declare-fun c!744077 () Bool)

(assert (=> d!1302126 (= c!744077 (and ((_ is Cons!49140) lt!1586458) (= (_1!27625 (h!54733 lt!1586458)) key!3918)))))

(assert (=> d!1302126 (noDuplicateKeys!573 lt!1586458)))

(assert (=> d!1302126 (= (removePairForKey!541 lt!1586458 key!3918) lt!1586480)))

(declare-fun b!4375821 () Bool)

(assert (=> b!4375821 (= e!2723727 Nil!49140)))

(declare-fun b!4375818 () Bool)

(assert (=> b!4375818 (= e!2723726 (t!356190 lt!1586458))))

(assert (= (and d!1302126 c!744077) b!4375818))

(assert (= (and d!1302126 (not c!744077)) b!4375819))

(assert (= (and b!4375819 c!744078) b!4375820))

(assert (= (and b!4375819 (not c!744078)) b!4375821))

(declare-fun m!5008929 () Bool)

(assert (=> b!4375820 m!5008929))

(declare-fun m!5008931 () Bool)

(assert (=> d!1302126 m!5008931))

(declare-fun m!5008933 () Bool)

(assert (=> d!1302126 m!5008933))

(assert (=> b!4375762 d!1302126))

(declare-fun d!1302128 () Bool)

(declare-fun lt!1586483 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7801 (List!49265) (InoxSet tuple2!48664))

(assert (=> d!1302128 (= lt!1586483 (select (content!7801 (toList!3129 lm!1707)) lt!1586444))))

(declare-fun e!2723732 () Bool)

(assert (=> d!1302128 (= lt!1586483 e!2723732)))

(declare-fun res!1801619 () Bool)

(assert (=> d!1302128 (=> (not res!1801619) (not e!2723732))))

(assert (=> d!1302128 (= res!1801619 ((_ is Cons!49141) (toList!3129 lm!1707)))))

(assert (=> d!1302128 (= (contains!11463 (toList!3129 lm!1707) lt!1586444) lt!1586483)))

(declare-fun b!4375826 () Bool)

(declare-fun e!2723733 () Bool)

(assert (=> b!4375826 (= e!2723732 e!2723733)))

(declare-fun res!1801620 () Bool)

(assert (=> b!4375826 (=> res!1801620 e!2723733)))

(assert (=> b!4375826 (= res!1801620 (= (h!54734 (toList!3129 lm!1707)) lt!1586444))))

(declare-fun b!4375827 () Bool)

(assert (=> b!4375827 (= e!2723733 (contains!11463 (t!356191 (toList!3129 lm!1707)) lt!1586444))))

(assert (= (and d!1302128 res!1801619) b!4375826))

(assert (= (and b!4375826 (not res!1801620)) b!4375827))

(declare-fun m!5008935 () Bool)

(assert (=> d!1302128 m!5008935))

(declare-fun m!5008937 () Bool)

(assert (=> d!1302128 m!5008937))

(declare-fun m!5008939 () Bool)

(assert (=> b!4375827 m!5008939))

(assert (=> b!4375762 d!1302128))

(declare-fun d!1302130 () Bool)

(assert (=> d!1302130 (dynLambda!20703 lambda!144607 lt!1586444)))

(declare-fun lt!1586486 () Unit!74656)

(declare-fun choose!27257 (List!49265 Int tuple2!48664) Unit!74656)

(assert (=> d!1302130 (= lt!1586486 (choose!27257 (toList!3129 lm!1707) lambda!144607 lt!1586444))))

(declare-fun e!2723736 () Bool)

(assert (=> d!1302130 e!2723736))

(declare-fun res!1801623 () Bool)

(assert (=> d!1302130 (=> (not res!1801623) (not e!2723736))))

(assert (=> d!1302130 (= res!1801623 (forall!9259 (toList!3129 lm!1707) lambda!144607))))

(assert (=> d!1302130 (= (forallContained!1897 (toList!3129 lm!1707) lambda!144607 lt!1586444) lt!1586486)))

(declare-fun b!4375830 () Bool)

(assert (=> b!4375830 (= e!2723736 (contains!11463 (toList!3129 lm!1707) lt!1586444))))

(assert (= (and d!1302130 res!1801623) b!4375830))

(declare-fun b_lambda!134501 () Bool)

(assert (=> (not b_lambda!134501) (not d!1302130)))

(declare-fun m!5008941 () Bool)

(assert (=> d!1302130 m!5008941))

(declare-fun m!5008943 () Bool)

(assert (=> d!1302130 m!5008943))

(assert (=> d!1302130 m!5008829))

(assert (=> b!4375830 m!5008815))

(assert (=> b!4375762 d!1302130))

(declare-fun d!1302132 () Bool)

(declare-fun res!1801624 () Bool)

(declare-fun e!2723737 () Bool)

(assert (=> d!1302132 (=> res!1801624 e!2723737)))

(assert (=> d!1302132 (= res!1801624 ((_ is Nil!49141) (toList!3129 lt!1586445)))))

(assert (=> d!1302132 (= (forall!9259 (toList!3129 lt!1586445) lambda!144607) e!2723737)))

(declare-fun b!4375831 () Bool)

(declare-fun e!2723738 () Bool)

(assert (=> b!4375831 (= e!2723737 e!2723738)))

(declare-fun res!1801625 () Bool)

(assert (=> b!4375831 (=> (not res!1801625) (not e!2723738))))

(assert (=> b!4375831 (= res!1801625 (dynLambda!20703 lambda!144607 (h!54734 (toList!3129 lt!1586445))))))

(declare-fun b!4375832 () Bool)

(assert (=> b!4375832 (= e!2723738 (forall!9259 (t!356191 (toList!3129 lt!1586445)) lambda!144607))))

(assert (= (and d!1302132 (not res!1801624)) b!4375831))

(assert (= (and b!4375831 res!1801625) b!4375832))

(declare-fun b_lambda!134503 () Bool)

(assert (=> (not b_lambda!134503) (not b!4375831)))

(declare-fun m!5008945 () Bool)

(assert (=> b!4375831 m!5008945))

(declare-fun m!5008947 () Bool)

(assert (=> b!4375832 m!5008947))

(assert (=> b!4375751 d!1302132))

(declare-fun bs!657729 () Bool)

(declare-fun d!1302134 () Bool)

(assert (= bs!657729 (and d!1302134 start!424804)))

(declare-fun lambda!144624 () Int)

(assert (=> bs!657729 (= lambda!144624 lambda!144607)))

(declare-fun lt!1586507 () ListMap!2373)

(declare-fun invariantList!719 (List!49264) Bool)

(assert (=> d!1302134 (invariantList!719 (toList!3130 lt!1586507))))

(declare-fun e!2723743 () ListMap!2373)

(assert (=> d!1302134 (= lt!1586507 e!2723743)))

(declare-fun c!744083 () Bool)

(assert (=> d!1302134 (= c!744083 ((_ is Cons!49141) (toList!3129 lt!1586459)))))

(assert (=> d!1302134 (forall!9259 (toList!3129 lt!1586459) lambda!144624)))

(assert (=> d!1302134 (= (extractMap!632 (toList!3129 lt!1586459)) lt!1586507)))

(declare-fun b!4375841 () Bool)

(assert (=> b!4375841 (= e!2723743 (addToMapMapFromBucket!254 (_2!27626 (h!54734 (toList!3129 lt!1586459))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))))))

(declare-fun b!4375842 () Bool)

(assert (=> b!4375842 (= e!2723743 (ListMap!2374 Nil!49140))))

(assert (= (and d!1302134 c!744083) b!4375841))

(assert (= (and d!1302134 (not c!744083)) b!4375842))

(declare-fun m!5008949 () Bool)

(assert (=> d!1302134 m!5008949))

(declare-fun m!5008951 () Bool)

(assert (=> d!1302134 m!5008951))

(declare-fun m!5008953 () Bool)

(assert (=> b!4375841 m!5008953))

(assert (=> b!4375841 m!5008953))

(declare-fun m!5008955 () Bool)

(assert (=> b!4375841 m!5008955))

(assert (=> b!4375754 d!1302134))

(assert (=> b!4375756 d!1302132))

(declare-fun d!1302136 () Bool)

(declare-fun e!2723753 () Bool)

(assert (=> d!1302136 e!2723753))

(declare-fun res!1801640 () Bool)

(assert (=> d!1302136 (=> (not res!1801640) (not e!2723753))))

(declare-fun lt!1586561 () ListLongMap!1779)

(assert (=> d!1302136 (= res!1801640 (contains!11462 lt!1586561 (_1!27626 lt!1586448)))))

(declare-fun lt!1586564 () List!49265)

(assert (=> d!1302136 (= lt!1586561 (ListLongMap!1780 lt!1586564))))

(declare-fun lt!1586562 () Unit!74656)

(declare-fun lt!1586563 () Unit!74656)

(assert (=> d!1302136 (= lt!1586562 lt!1586563)))

(assert (=> d!1302136 (= (getValueByKey!537 lt!1586564 (_1!27626 lt!1586448)) (Some!10550 (_2!27626 lt!1586448)))))

(declare-fun lemmaContainsTupThenGetReturnValue!301 (List!49265 (_ BitVec 64) List!49264) Unit!74656)

(assert (=> d!1302136 (= lt!1586563 (lemmaContainsTupThenGetReturnValue!301 lt!1586564 (_1!27626 lt!1586448) (_2!27626 lt!1586448)))))

(declare-fun insertStrictlySorted!173 (List!49265 (_ BitVec 64) List!49264) List!49265)

(assert (=> d!1302136 (= lt!1586564 (insertStrictlySorted!173 (toList!3129 lm!1707) (_1!27626 lt!1586448) (_2!27626 lt!1586448)))))

(assert (=> d!1302136 (= (+!777 lm!1707 lt!1586448) lt!1586561)))

(declare-fun b!4375860 () Bool)

(declare-fun res!1801639 () Bool)

(assert (=> b!4375860 (=> (not res!1801639) (not e!2723753))))

(assert (=> b!4375860 (= res!1801639 (= (getValueByKey!537 (toList!3129 lt!1586561) (_1!27626 lt!1586448)) (Some!10550 (_2!27626 lt!1586448))))))

(declare-fun b!4375861 () Bool)

(assert (=> b!4375861 (= e!2723753 (contains!11463 (toList!3129 lt!1586561) lt!1586448))))

(assert (= (and d!1302136 res!1801640) b!4375860))

(assert (= (and b!4375860 res!1801639) b!4375861))

(declare-fun m!5008989 () Bool)

(assert (=> d!1302136 m!5008989))

(declare-fun m!5008991 () Bool)

(assert (=> d!1302136 m!5008991))

(declare-fun m!5008993 () Bool)

(assert (=> d!1302136 m!5008993))

(declare-fun m!5008995 () Bool)

(assert (=> d!1302136 m!5008995))

(declare-fun m!5008997 () Bool)

(assert (=> b!4375860 m!5008997))

(declare-fun m!5008999 () Bool)

(assert (=> b!4375861 m!5008999))

(assert (=> b!4375756 d!1302136))

(declare-fun d!1302140 () Bool)

(assert (=> d!1302140 (forall!9259 (toList!3129 (+!777 lm!1707 (tuple2!48665 hash!377 newBucket!200))) lambda!144607)))

(declare-fun lt!1586588 () Unit!74656)

(declare-fun choose!27258 (ListLongMap!1779 Int (_ BitVec 64) List!49264) Unit!74656)

(assert (=> d!1302140 (= lt!1586588 (choose!27258 lm!1707 lambda!144607 hash!377 newBucket!200))))

(declare-fun e!2723759 () Bool)

(assert (=> d!1302140 e!2723759))

(declare-fun res!1801646 () Bool)

(assert (=> d!1302140 (=> (not res!1801646) (not e!2723759))))

(assert (=> d!1302140 (= res!1801646 (forall!9259 (toList!3129 lm!1707) lambda!144607))))

(assert (=> d!1302140 (= (addValidProp!219 lm!1707 lambda!144607 hash!377 newBucket!200) lt!1586588)))

(declare-fun b!4375870 () Bool)

(assert (=> b!4375870 (= e!2723759 (dynLambda!20703 lambda!144607 (tuple2!48665 hash!377 newBucket!200)))))

(assert (= (and d!1302140 res!1801646) b!4375870))

(declare-fun b_lambda!134505 () Bool)

(assert (=> (not b_lambda!134505) (not b!4375870)))

(declare-fun m!5009033 () Bool)

(assert (=> d!1302140 m!5009033))

(declare-fun m!5009035 () Bool)

(assert (=> d!1302140 m!5009035))

(declare-fun m!5009037 () Bool)

(assert (=> d!1302140 m!5009037))

(assert (=> d!1302140 m!5008829))

(declare-fun m!5009039 () Bool)

(assert (=> b!4375870 m!5009039))

(assert (=> b!4375756 d!1302140))

(assert (=> b!4375756 d!1302108))

(declare-fun d!1302144 () Bool)

(declare-fun e!2723766 () Bool)

(assert (=> d!1302144 e!2723766))

(declare-fun res!1801653 () Bool)

(assert (=> d!1302144 (=> res!1801653 e!2723766)))

(declare-fun lt!1586609 () Bool)

(assert (=> d!1302144 (= res!1801653 (not lt!1586609))))

(declare-fun lt!1586610 () Bool)

(assert (=> d!1302144 (= lt!1586609 lt!1586610)))

(declare-fun lt!1586611 () Unit!74656)

(declare-fun e!2723767 () Unit!74656)

(assert (=> d!1302144 (= lt!1586611 e!2723767)))

(declare-fun c!744088 () Bool)

(assert (=> d!1302144 (= c!744088 lt!1586610)))

(declare-fun containsKey!836 (List!49265 (_ BitVec 64)) Bool)

(assert (=> d!1302144 (= lt!1586610 (containsKey!836 (toList!3129 lm!1707) hash!377))))

(assert (=> d!1302144 (= (contains!11462 lm!1707 hash!377) lt!1586609)))

(declare-fun b!4375881 () Bool)

(declare-fun lt!1586608 () Unit!74656)

(assert (=> b!4375881 (= e!2723767 lt!1586608)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!446 (List!49265 (_ BitVec 64)) Unit!74656)

(assert (=> b!4375881 (= lt!1586608 (lemmaContainsKeyImpliesGetValueByKeyDefined!446 (toList!3129 lm!1707) hash!377))))

(declare-fun isDefined!7843 (Option!10551) Bool)

(assert (=> b!4375881 (isDefined!7843 (getValueByKey!537 (toList!3129 lm!1707) hash!377))))

(declare-fun b!4375882 () Bool)

(declare-fun Unit!74691 () Unit!74656)

(assert (=> b!4375882 (= e!2723767 Unit!74691)))

(declare-fun b!4375883 () Bool)

(assert (=> b!4375883 (= e!2723766 (isDefined!7843 (getValueByKey!537 (toList!3129 lm!1707) hash!377)))))

(assert (= (and d!1302144 c!744088) b!4375881))

(assert (= (and d!1302144 (not c!744088)) b!4375882))

(assert (= (and d!1302144 (not res!1801653)) b!4375883))

(declare-fun m!5009053 () Bool)

(assert (=> d!1302144 m!5009053))

(declare-fun m!5009055 () Bool)

(assert (=> b!4375881 m!5009055))

(assert (=> b!4375881 m!5008921))

(assert (=> b!4375881 m!5008921))

(declare-fun m!5009057 () Bool)

(assert (=> b!4375881 m!5009057))

(assert (=> b!4375883 m!5008921))

(assert (=> b!4375883 m!5008921))

(assert (=> b!4375883 m!5009057))

(assert (=> b!4375755 d!1302144))

(declare-fun d!1302148 () Bool)

(declare-fun content!7802 (List!49264) (InoxSet tuple2!48662))

(assert (=> d!1302148 (= (eq!311 lt!1586457 lt!1586461) (= (content!7802 (toList!3130 lt!1586457)) (content!7802 (toList!3130 lt!1586461))))))

(declare-fun bs!657752 () Bool)

(assert (= bs!657752 d!1302148))

(declare-fun m!5009071 () Bool)

(assert (=> bs!657752 m!5009071))

(declare-fun m!5009073 () Bool)

(assert (=> bs!657752 m!5009073))

(assert (=> b!4375757 d!1302148))

(declare-fun bs!657846 () Bool)

(declare-fun b!4375991 () Bool)

(assert (= bs!657846 (and b!4375991 d!1302118)))

(declare-fun lambda!144699 () Int)

(assert (=> bs!657846 (not (= lambda!144699 lambda!144613))))

(assert (=> b!4375991 true))

(declare-fun bs!657847 () Bool)

(declare-fun b!4375992 () Bool)

(assert (= bs!657847 (and b!4375992 d!1302118)))

(declare-fun lambda!144700 () Int)

(assert (=> bs!657847 (not (= lambda!144700 lambda!144613))))

(declare-fun bs!657848 () Bool)

(assert (= bs!657848 (and b!4375992 b!4375991)))

(assert (=> bs!657848 (= lambda!144700 lambda!144699)))

(assert (=> b!4375992 true))

(declare-fun lambda!144701 () Int)

(assert (=> bs!657847 (not (= lambda!144701 lambda!144613))))

(declare-fun lt!1586783 () ListMap!2373)

(assert (=> bs!657848 (= (= lt!1586783 lt!1586446) (= lambda!144701 lambda!144699))))

(assert (=> b!4375992 (= (= lt!1586783 lt!1586446) (= lambda!144701 lambda!144700))))

(assert (=> b!4375992 true))

(declare-fun bs!657849 () Bool)

(declare-fun d!1302152 () Bool)

(assert (= bs!657849 (and d!1302152 d!1302118)))

(declare-fun lambda!144702 () Int)

(assert (=> bs!657849 (not (= lambda!144702 lambda!144613))))

(declare-fun bs!657850 () Bool)

(assert (= bs!657850 (and d!1302152 b!4375991)))

(declare-fun lt!1586780 () ListMap!2373)

(assert (=> bs!657850 (= (= lt!1586780 lt!1586446) (= lambda!144702 lambda!144699))))

(declare-fun bs!657851 () Bool)

(assert (= bs!657851 (and d!1302152 b!4375992)))

(assert (=> bs!657851 (= (= lt!1586780 lt!1586446) (= lambda!144702 lambda!144700))))

(assert (=> bs!657851 (= (= lt!1586780 lt!1586783) (= lambda!144702 lambda!144701))))

(assert (=> d!1302152 true))

(declare-fun call!304252 () Bool)

(declare-fun c!744111 () Bool)

(declare-fun bm!304246 () Bool)

(assert (=> bm!304246 (= call!304252 (forall!9261 (toList!3130 lt!1586446) (ite c!744111 lambda!144699 lambda!144700)))))

(declare-fun b!4375988 () Bool)

(declare-fun e!2723834 () Bool)

(assert (=> b!4375988 (= e!2723834 (invariantList!719 (toList!3130 lt!1586780)))))

(declare-fun b!4375989 () Bool)

(declare-fun res!1801702 () Bool)

(assert (=> b!4375989 (=> (not res!1801702) (not e!2723834))))

(assert (=> b!4375989 (= res!1801702 (forall!9261 (toList!3130 lt!1586446) lambda!144702))))

(assert (=> d!1302152 e!2723834))

(declare-fun res!1801703 () Bool)

(assert (=> d!1302152 (=> (not res!1801703) (not e!2723834))))

(assert (=> d!1302152 (= res!1801703 (forall!9261 lt!1586456 lambda!144702))))

(declare-fun e!2723833 () ListMap!2373)

(assert (=> d!1302152 (= lt!1586780 e!2723833)))

(assert (=> d!1302152 (= c!744111 ((_ is Nil!49140) lt!1586456))))

(assert (=> d!1302152 (noDuplicateKeys!573 lt!1586456)))

(assert (=> d!1302152 (= (addToMapMapFromBucket!254 lt!1586456 lt!1586446) lt!1586780)))

(declare-fun bm!304247 () Bool)

(declare-fun call!304253 () Bool)

(assert (=> bm!304247 (= call!304253 (forall!9261 (ite c!744111 (toList!3130 lt!1586446) lt!1586456) (ite c!744111 lambda!144699 lambda!144701)))))

(declare-fun bm!304248 () Bool)

(declare-fun call!304251 () Unit!74656)

(declare-fun lemmaContainsAllItsOwnKeys!101 (ListMap!2373) Unit!74656)

(assert (=> bm!304248 (= call!304251 (lemmaContainsAllItsOwnKeys!101 lt!1586446))))

(declare-fun b!4375990 () Bool)

(declare-fun e!2723835 () Bool)

(assert (=> b!4375990 (= e!2723835 (forall!9261 (toList!3130 lt!1586446) lambda!144701))))

(assert (=> b!4375991 (= e!2723833 lt!1586446)))

(declare-fun lt!1586784 () Unit!74656)

(assert (=> b!4375991 (= lt!1586784 call!304251)))

(assert (=> b!4375991 call!304252))

(declare-fun lt!1586765 () Unit!74656)

(assert (=> b!4375991 (= lt!1586765 lt!1586784)))

(assert (=> b!4375991 call!304253))

(declare-fun lt!1586767 () Unit!74656)

(declare-fun Unit!74692 () Unit!74656)

(assert (=> b!4375991 (= lt!1586767 Unit!74692)))

(assert (=> b!4375992 (= e!2723833 lt!1586783)))

(declare-fun lt!1586773 () ListMap!2373)

(assert (=> b!4375992 (= lt!1586773 (+!778 lt!1586446 (h!54733 lt!1586456)))))

(assert (=> b!4375992 (= lt!1586783 (addToMapMapFromBucket!254 (t!356190 lt!1586456) (+!778 lt!1586446 (h!54733 lt!1586456))))))

(declare-fun lt!1586779 () Unit!74656)

(assert (=> b!4375992 (= lt!1586779 call!304251)))

(assert (=> b!4375992 call!304252))

(declare-fun lt!1586772 () Unit!74656)

(assert (=> b!4375992 (= lt!1586772 lt!1586779)))

(assert (=> b!4375992 (forall!9261 (toList!3130 lt!1586773) lambda!144701)))

(declare-fun lt!1586782 () Unit!74656)

(declare-fun Unit!74693 () Unit!74656)

(assert (=> b!4375992 (= lt!1586782 Unit!74693)))

(assert (=> b!4375992 (forall!9261 (t!356190 lt!1586456) lambda!144701)))

(declare-fun lt!1586774 () Unit!74656)

(declare-fun Unit!74694 () Unit!74656)

(assert (=> b!4375992 (= lt!1586774 Unit!74694)))

(declare-fun lt!1586776 () Unit!74656)

(declare-fun Unit!74695 () Unit!74656)

(assert (=> b!4375992 (= lt!1586776 Unit!74695)))

(declare-fun lt!1586766 () Unit!74656)

(declare-fun forallContained!1899 (List!49264 Int tuple2!48662) Unit!74656)

(assert (=> b!4375992 (= lt!1586766 (forallContained!1899 (toList!3130 lt!1586773) lambda!144701 (h!54733 lt!1586456)))))

(assert (=> b!4375992 (contains!11461 lt!1586773 (_1!27625 (h!54733 lt!1586456)))))

(declare-fun lt!1586785 () Unit!74656)

(declare-fun Unit!74696 () Unit!74656)

(assert (=> b!4375992 (= lt!1586785 Unit!74696)))

(assert (=> b!4375992 (contains!11461 lt!1586783 (_1!27625 (h!54733 lt!1586456)))))

(declare-fun lt!1586771 () Unit!74656)

(declare-fun Unit!74697 () Unit!74656)

(assert (=> b!4375992 (= lt!1586771 Unit!74697)))

(assert (=> b!4375992 (forall!9261 lt!1586456 lambda!144701)))

(declare-fun lt!1586778 () Unit!74656)

(declare-fun Unit!74699 () Unit!74656)

(assert (=> b!4375992 (= lt!1586778 Unit!74699)))

(assert (=> b!4375992 (forall!9261 (toList!3130 lt!1586773) lambda!144701)))

(declare-fun lt!1586768 () Unit!74656)

(declare-fun Unit!74701 () Unit!74656)

(assert (=> b!4375992 (= lt!1586768 Unit!74701)))

(declare-fun lt!1586775 () Unit!74656)

(declare-fun Unit!74702 () Unit!74656)

(assert (=> b!4375992 (= lt!1586775 Unit!74702)))

(declare-fun lt!1586781 () Unit!74656)

(declare-fun addForallContainsKeyThenBeforeAdding!101 (ListMap!2373 ListMap!2373 K!10500 V!10746) Unit!74656)

(assert (=> b!4375992 (= lt!1586781 (addForallContainsKeyThenBeforeAdding!101 lt!1586446 lt!1586783 (_1!27625 (h!54733 lt!1586456)) (_2!27625 (h!54733 lt!1586456))))))

(assert (=> b!4375992 (forall!9261 (toList!3130 lt!1586446) lambda!144701)))

(declare-fun lt!1586769 () Unit!74656)

(assert (=> b!4375992 (= lt!1586769 lt!1586781)))

(assert (=> b!4375992 (forall!9261 (toList!3130 lt!1586446) lambda!144701)))

(declare-fun lt!1586770 () Unit!74656)

(declare-fun Unit!74705 () Unit!74656)

(assert (=> b!4375992 (= lt!1586770 Unit!74705)))

(declare-fun res!1801701 () Bool)

(assert (=> b!4375992 (= res!1801701 call!304253)))

(assert (=> b!4375992 (=> (not res!1801701) (not e!2723835))))

(assert (=> b!4375992 e!2723835))

(declare-fun lt!1586777 () Unit!74656)

(declare-fun Unit!74708 () Unit!74656)

(assert (=> b!4375992 (= lt!1586777 Unit!74708)))

(assert (= (and d!1302152 c!744111) b!4375991))

(assert (= (and d!1302152 (not c!744111)) b!4375992))

(assert (= (and b!4375992 res!1801701) b!4375990))

(assert (= (or b!4375991 b!4375992) bm!304248))

(assert (= (or b!4375991 b!4375992) bm!304246))

(assert (= (or b!4375991 b!4375992) bm!304247))

(assert (= (and d!1302152 res!1801703) b!4375989))

(assert (= (and b!4375989 res!1801702) b!4375988))

(declare-fun m!5009261 () Bool)

(assert (=> bm!304246 m!5009261))

(declare-fun m!5009263 () Bool)

(assert (=> b!4375990 m!5009263))

(declare-fun m!5009265 () Bool)

(assert (=> b!4375988 m!5009265))

(declare-fun m!5009267 () Bool)

(assert (=> b!4375989 m!5009267))

(declare-fun m!5009269 () Bool)

(assert (=> b!4375992 m!5009269))

(declare-fun m!5009271 () Bool)

(assert (=> b!4375992 m!5009271))

(declare-fun m!5009273 () Bool)

(assert (=> b!4375992 m!5009273))

(declare-fun m!5009275 () Bool)

(assert (=> b!4375992 m!5009275))

(declare-fun m!5009277 () Bool)

(assert (=> b!4375992 m!5009277))

(assert (=> b!4375992 m!5009263))

(assert (=> b!4375992 m!5009263))

(declare-fun m!5009279 () Bool)

(assert (=> b!4375992 m!5009279))

(declare-fun m!5009281 () Bool)

(assert (=> b!4375992 m!5009281))

(assert (=> b!4375992 m!5009277))

(declare-fun m!5009283 () Bool)

(assert (=> b!4375992 m!5009283))

(assert (=> b!4375992 m!5009273))

(declare-fun m!5009285 () Bool)

(assert (=> b!4375992 m!5009285))

(declare-fun m!5009287 () Bool)

(assert (=> d!1302152 m!5009287))

(declare-fun m!5009289 () Bool)

(assert (=> d!1302152 m!5009289))

(declare-fun m!5009291 () Bool)

(assert (=> bm!304248 m!5009291))

(declare-fun m!5009293 () Bool)

(assert (=> bm!304247 m!5009293))

(assert (=> b!4375748 d!1302152))

(assert (=> b!4375748 d!1302108))

(declare-fun d!1302198 () Bool)

(assert (=> d!1302198 (= (eq!311 lt!1586451 lt!1586461) (= (content!7802 (toList!3130 lt!1586451)) (content!7802 (toList!3130 lt!1586461))))))

(declare-fun bs!657852 () Bool)

(assert (= bs!657852 d!1302198))

(declare-fun m!5009295 () Bool)

(assert (=> bs!657852 m!5009295))

(assert (=> bs!657852 m!5009073))

(assert (=> b!4375748 d!1302198))

(declare-fun d!1302200 () Bool)

(declare-fun e!2723836 () Bool)

(assert (=> d!1302200 e!2723836))

(declare-fun res!1801705 () Bool)

(assert (=> d!1302200 (=> (not res!1801705) (not e!2723836))))

(declare-fun lt!1586786 () ListLongMap!1779)

(assert (=> d!1302200 (= res!1801705 (contains!11462 lt!1586786 (_1!27626 (tuple2!48665 hash!377 lt!1586452))))))

(declare-fun lt!1586789 () List!49265)

(assert (=> d!1302200 (= lt!1586786 (ListLongMap!1780 lt!1586789))))

(declare-fun lt!1586787 () Unit!74656)

(declare-fun lt!1586788 () Unit!74656)

(assert (=> d!1302200 (= lt!1586787 lt!1586788)))

(assert (=> d!1302200 (= (getValueByKey!537 lt!1586789 (_1!27626 (tuple2!48665 hash!377 lt!1586452))) (Some!10550 (_2!27626 (tuple2!48665 hash!377 lt!1586452))))))

(assert (=> d!1302200 (= lt!1586788 (lemmaContainsTupThenGetReturnValue!301 lt!1586789 (_1!27626 (tuple2!48665 hash!377 lt!1586452)) (_2!27626 (tuple2!48665 hash!377 lt!1586452))))))

(assert (=> d!1302200 (= lt!1586789 (insertStrictlySorted!173 (toList!3129 lm!1707) (_1!27626 (tuple2!48665 hash!377 lt!1586452)) (_2!27626 (tuple2!48665 hash!377 lt!1586452))))))

(assert (=> d!1302200 (= (+!777 lm!1707 (tuple2!48665 hash!377 lt!1586452)) lt!1586786)))

(declare-fun b!4375995 () Bool)

(declare-fun res!1801704 () Bool)

(assert (=> b!4375995 (=> (not res!1801704) (not e!2723836))))

(assert (=> b!4375995 (= res!1801704 (= (getValueByKey!537 (toList!3129 lt!1586786) (_1!27626 (tuple2!48665 hash!377 lt!1586452))) (Some!10550 (_2!27626 (tuple2!48665 hash!377 lt!1586452)))))))

(declare-fun b!4375996 () Bool)

(assert (=> b!4375996 (= e!2723836 (contains!11463 (toList!3129 lt!1586786) (tuple2!48665 hash!377 lt!1586452)))))

(assert (= (and d!1302200 res!1801705) b!4375995))

(assert (= (and b!4375995 res!1801704) b!4375996))

(declare-fun m!5009297 () Bool)

(assert (=> d!1302200 m!5009297))

(declare-fun m!5009299 () Bool)

(assert (=> d!1302200 m!5009299))

(declare-fun m!5009301 () Bool)

(assert (=> d!1302200 m!5009301))

(declare-fun m!5009303 () Bool)

(assert (=> d!1302200 m!5009303))

(declare-fun m!5009305 () Bool)

(assert (=> b!4375995 m!5009305))

(declare-fun m!5009307 () Bool)

(assert (=> b!4375996 m!5009307))

(assert (=> b!4375748 d!1302200))

(declare-fun bs!657853 () Bool)

(declare-fun b!4376000 () Bool)

(assert (= bs!657853 (and b!4376000 b!4375991)))

(declare-fun lambda!144703 () Int)

(assert (=> bs!657853 (= lambda!144703 lambda!144699)))

(declare-fun bs!657854 () Bool)

(assert (= bs!657854 (and b!4376000 b!4375992)))

(assert (=> bs!657854 (= lambda!144703 lambda!144700)))

(assert (=> bs!657854 (= (= lt!1586446 lt!1586783) (= lambda!144703 lambda!144701))))

(declare-fun bs!657855 () Bool)

(assert (= bs!657855 (and b!4376000 d!1302152)))

(assert (=> bs!657855 (= (= lt!1586446 lt!1586780) (= lambda!144703 lambda!144702))))

(declare-fun bs!657856 () Bool)

(assert (= bs!657856 (and b!4376000 d!1302118)))

(assert (=> bs!657856 (not (= lambda!144703 lambda!144613))))

(assert (=> b!4376000 true))

(declare-fun bs!657857 () Bool)

(declare-fun b!4376001 () Bool)

(assert (= bs!657857 (and b!4376001 b!4376000)))

(declare-fun lambda!144704 () Int)

(assert (=> bs!657857 (= lambda!144704 lambda!144703)))

(declare-fun bs!657858 () Bool)

(assert (= bs!657858 (and b!4376001 b!4375991)))

(assert (=> bs!657858 (= lambda!144704 lambda!144699)))

(declare-fun bs!657859 () Bool)

(assert (= bs!657859 (and b!4376001 b!4375992)))

(assert (=> bs!657859 (= lambda!144704 lambda!144700)))

(assert (=> bs!657859 (= (= lt!1586446 lt!1586783) (= lambda!144704 lambda!144701))))

(declare-fun bs!657860 () Bool)

(assert (= bs!657860 (and b!4376001 d!1302152)))

(assert (=> bs!657860 (= (= lt!1586446 lt!1586780) (= lambda!144704 lambda!144702))))

(declare-fun bs!657861 () Bool)

(assert (= bs!657861 (and b!4376001 d!1302118)))

(assert (=> bs!657861 (not (= lambda!144704 lambda!144613))))

(assert (=> b!4376001 true))

(declare-fun lt!1586808 () ListMap!2373)

(declare-fun lambda!144705 () Int)

(assert (=> bs!657857 (= (= lt!1586808 lt!1586446) (= lambda!144705 lambda!144703))))

(assert (=> b!4376001 (= (= lt!1586808 lt!1586446) (= lambda!144705 lambda!144704))))

(assert (=> bs!657858 (= (= lt!1586808 lt!1586446) (= lambda!144705 lambda!144699))))

(assert (=> bs!657859 (= (= lt!1586808 lt!1586446) (= lambda!144705 lambda!144700))))

(assert (=> bs!657859 (= (= lt!1586808 lt!1586783) (= lambda!144705 lambda!144701))))

(assert (=> bs!657860 (= (= lt!1586808 lt!1586780) (= lambda!144705 lambda!144702))))

(assert (=> bs!657861 (not (= lambda!144705 lambda!144613))))

(assert (=> b!4376001 true))

(declare-fun bs!657862 () Bool)

(declare-fun d!1302202 () Bool)

(assert (= bs!657862 (and d!1302202 b!4376000)))

(declare-fun lt!1586805 () ListMap!2373)

(declare-fun lambda!144706 () Int)

(assert (=> bs!657862 (= (= lt!1586805 lt!1586446) (= lambda!144706 lambda!144703))))

(declare-fun bs!657863 () Bool)

(assert (= bs!657863 (and d!1302202 b!4376001)))

(assert (=> bs!657863 (= (= lt!1586805 lt!1586446) (= lambda!144706 lambda!144704))))

(assert (=> bs!657863 (= (= lt!1586805 lt!1586808) (= lambda!144706 lambda!144705))))

(declare-fun bs!657864 () Bool)

(assert (= bs!657864 (and d!1302202 b!4375991)))

(assert (=> bs!657864 (= (= lt!1586805 lt!1586446) (= lambda!144706 lambda!144699))))

(declare-fun bs!657865 () Bool)

(assert (= bs!657865 (and d!1302202 b!4375992)))

(assert (=> bs!657865 (= (= lt!1586805 lt!1586446) (= lambda!144706 lambda!144700))))

(assert (=> bs!657865 (= (= lt!1586805 lt!1586783) (= lambda!144706 lambda!144701))))

(declare-fun bs!657866 () Bool)

(assert (= bs!657866 (and d!1302202 d!1302152)))

(assert (=> bs!657866 (= (= lt!1586805 lt!1586780) (= lambda!144706 lambda!144702))))

(declare-fun bs!657867 () Bool)

(assert (= bs!657867 (and d!1302202 d!1302118)))

(assert (=> bs!657867 (not (= lambda!144706 lambda!144613))))

(assert (=> d!1302202 true))

(declare-fun call!304255 () Bool)

(declare-fun bm!304249 () Bool)

(declare-fun c!744112 () Bool)

(assert (=> bm!304249 (= call!304255 (forall!9261 (toList!3130 lt!1586446) (ite c!744112 lambda!144703 lambda!144704)))))

(declare-fun b!4375997 () Bool)

(declare-fun e!2723838 () Bool)

(assert (=> b!4375997 (= e!2723838 (invariantList!719 (toList!3130 lt!1586805)))))

(declare-fun b!4375998 () Bool)

(declare-fun res!1801707 () Bool)

(assert (=> b!4375998 (=> (not res!1801707) (not e!2723838))))

(assert (=> b!4375998 (= res!1801707 (forall!9261 (toList!3130 lt!1586446) lambda!144706))))

(assert (=> d!1302202 e!2723838))

(declare-fun res!1801708 () Bool)

(assert (=> d!1302202 (=> (not res!1801708) (not e!2723838))))

(assert (=> d!1302202 (= res!1801708 (forall!9261 newBucket!200 lambda!144706))))

(declare-fun e!2723837 () ListMap!2373)

(assert (=> d!1302202 (= lt!1586805 e!2723837)))

(assert (=> d!1302202 (= c!744112 ((_ is Nil!49140) newBucket!200))))

(assert (=> d!1302202 (noDuplicateKeys!573 newBucket!200)))

(assert (=> d!1302202 (= (addToMapMapFromBucket!254 newBucket!200 lt!1586446) lt!1586805)))

(declare-fun call!304256 () Bool)

(declare-fun bm!304250 () Bool)

(assert (=> bm!304250 (= call!304256 (forall!9261 (ite c!744112 (toList!3130 lt!1586446) newBucket!200) (ite c!744112 lambda!144703 lambda!144705)))))

(declare-fun bm!304251 () Bool)

(declare-fun call!304254 () Unit!74656)

(assert (=> bm!304251 (= call!304254 (lemmaContainsAllItsOwnKeys!101 lt!1586446))))

(declare-fun b!4375999 () Bool)

(declare-fun e!2723839 () Bool)

(assert (=> b!4375999 (= e!2723839 (forall!9261 (toList!3130 lt!1586446) lambda!144705))))

(assert (=> b!4376000 (= e!2723837 lt!1586446)))

(declare-fun lt!1586809 () Unit!74656)

(assert (=> b!4376000 (= lt!1586809 call!304254)))

(assert (=> b!4376000 call!304255))

(declare-fun lt!1586790 () Unit!74656)

(assert (=> b!4376000 (= lt!1586790 lt!1586809)))

(assert (=> b!4376000 call!304256))

(declare-fun lt!1586792 () Unit!74656)

(declare-fun Unit!74716 () Unit!74656)

(assert (=> b!4376000 (= lt!1586792 Unit!74716)))

(assert (=> b!4376001 (= e!2723837 lt!1586808)))

(declare-fun lt!1586798 () ListMap!2373)

(assert (=> b!4376001 (= lt!1586798 (+!778 lt!1586446 (h!54733 newBucket!200)))))

(assert (=> b!4376001 (= lt!1586808 (addToMapMapFromBucket!254 (t!356190 newBucket!200) (+!778 lt!1586446 (h!54733 newBucket!200))))))

(declare-fun lt!1586804 () Unit!74656)

(assert (=> b!4376001 (= lt!1586804 call!304254)))

(assert (=> b!4376001 call!304255))

(declare-fun lt!1586797 () Unit!74656)

(assert (=> b!4376001 (= lt!1586797 lt!1586804)))

(assert (=> b!4376001 (forall!9261 (toList!3130 lt!1586798) lambda!144705)))

(declare-fun lt!1586807 () Unit!74656)

(declare-fun Unit!74717 () Unit!74656)

(assert (=> b!4376001 (= lt!1586807 Unit!74717)))

(assert (=> b!4376001 (forall!9261 (t!356190 newBucket!200) lambda!144705)))

(declare-fun lt!1586799 () Unit!74656)

(declare-fun Unit!74718 () Unit!74656)

(assert (=> b!4376001 (= lt!1586799 Unit!74718)))

(declare-fun lt!1586801 () Unit!74656)

(declare-fun Unit!74719 () Unit!74656)

(assert (=> b!4376001 (= lt!1586801 Unit!74719)))

(declare-fun lt!1586791 () Unit!74656)

(assert (=> b!4376001 (= lt!1586791 (forallContained!1899 (toList!3130 lt!1586798) lambda!144705 (h!54733 newBucket!200)))))

(assert (=> b!4376001 (contains!11461 lt!1586798 (_1!27625 (h!54733 newBucket!200)))))

(declare-fun lt!1586810 () Unit!74656)

(declare-fun Unit!74720 () Unit!74656)

(assert (=> b!4376001 (= lt!1586810 Unit!74720)))

(assert (=> b!4376001 (contains!11461 lt!1586808 (_1!27625 (h!54733 newBucket!200)))))

(declare-fun lt!1586796 () Unit!74656)

(declare-fun Unit!74721 () Unit!74656)

(assert (=> b!4376001 (= lt!1586796 Unit!74721)))

(assert (=> b!4376001 (forall!9261 newBucket!200 lambda!144705)))

(declare-fun lt!1586803 () Unit!74656)

(declare-fun Unit!74722 () Unit!74656)

(assert (=> b!4376001 (= lt!1586803 Unit!74722)))

(assert (=> b!4376001 (forall!9261 (toList!3130 lt!1586798) lambda!144705)))

(declare-fun lt!1586793 () Unit!74656)

(declare-fun Unit!74723 () Unit!74656)

(assert (=> b!4376001 (= lt!1586793 Unit!74723)))

(declare-fun lt!1586800 () Unit!74656)

(declare-fun Unit!74724 () Unit!74656)

(assert (=> b!4376001 (= lt!1586800 Unit!74724)))

(declare-fun lt!1586806 () Unit!74656)

(assert (=> b!4376001 (= lt!1586806 (addForallContainsKeyThenBeforeAdding!101 lt!1586446 lt!1586808 (_1!27625 (h!54733 newBucket!200)) (_2!27625 (h!54733 newBucket!200))))))

(assert (=> b!4376001 (forall!9261 (toList!3130 lt!1586446) lambda!144705)))

(declare-fun lt!1586794 () Unit!74656)

(assert (=> b!4376001 (= lt!1586794 lt!1586806)))

(assert (=> b!4376001 (forall!9261 (toList!3130 lt!1586446) lambda!144705)))

(declare-fun lt!1586795 () Unit!74656)

(declare-fun Unit!74725 () Unit!74656)

(assert (=> b!4376001 (= lt!1586795 Unit!74725)))

(declare-fun res!1801706 () Bool)

(assert (=> b!4376001 (= res!1801706 call!304256)))

(assert (=> b!4376001 (=> (not res!1801706) (not e!2723839))))

(assert (=> b!4376001 e!2723839))

(declare-fun lt!1586802 () Unit!74656)

(declare-fun Unit!74726 () Unit!74656)

(assert (=> b!4376001 (= lt!1586802 Unit!74726)))

(assert (= (and d!1302202 c!744112) b!4376000))

(assert (= (and d!1302202 (not c!744112)) b!4376001))

(assert (= (and b!4376001 res!1801706) b!4375999))

(assert (= (or b!4376000 b!4376001) bm!304251))

(assert (= (or b!4376000 b!4376001) bm!304249))

(assert (= (or b!4376000 b!4376001) bm!304250))

(assert (= (and d!1302202 res!1801708) b!4375998))

(assert (= (and b!4375998 res!1801707) b!4375997))

(declare-fun m!5009309 () Bool)

(assert (=> bm!304249 m!5009309))

(declare-fun m!5009311 () Bool)

(assert (=> b!4375999 m!5009311))

(declare-fun m!5009313 () Bool)

(assert (=> b!4375997 m!5009313))

(declare-fun m!5009315 () Bool)

(assert (=> b!4375998 m!5009315))

(declare-fun m!5009317 () Bool)

(assert (=> b!4376001 m!5009317))

(declare-fun m!5009319 () Bool)

(assert (=> b!4376001 m!5009319))

(declare-fun m!5009321 () Bool)

(assert (=> b!4376001 m!5009321))

(declare-fun m!5009323 () Bool)

(assert (=> b!4376001 m!5009323))

(declare-fun m!5009325 () Bool)

(assert (=> b!4376001 m!5009325))

(assert (=> b!4376001 m!5009311))

(assert (=> b!4376001 m!5009311))

(declare-fun m!5009327 () Bool)

(assert (=> b!4376001 m!5009327))

(declare-fun m!5009329 () Bool)

(assert (=> b!4376001 m!5009329))

(assert (=> b!4376001 m!5009325))

(declare-fun m!5009331 () Bool)

(assert (=> b!4376001 m!5009331))

(assert (=> b!4376001 m!5009321))

(declare-fun m!5009333 () Bool)

(assert (=> b!4376001 m!5009333))

(declare-fun m!5009335 () Bool)

(assert (=> d!1302202 m!5009335))

(assert (=> d!1302202 m!5008835))

(assert (=> bm!304251 m!5009291))

(declare-fun m!5009337 () Bool)

(assert (=> bm!304250 m!5009337))

(assert (=> b!4375748 d!1302202))

(declare-fun d!1302204 () Bool)

(assert (=> d!1302204 (= (tail!7066 newBucket!200) (t!356190 newBucket!200))))

(assert (=> b!4375748 d!1302204))

(declare-fun d!1302206 () Bool)

(assert (=> d!1302206 (eq!311 (addToMapMapFromBucket!254 lt!1586460 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (+!778 (addToMapMapFromBucket!254 lt!1586460 lt!1586446) (tuple2!48663 key!3918 newValue!99)))))

(declare-fun lt!1586813 () Unit!74656)

(declare-fun choose!27259 (ListMap!2373 K!10500 V!10746 List!49264) Unit!74656)

(assert (=> d!1302206 (= lt!1586813 (choose!27259 lt!1586446 key!3918 newValue!99 lt!1586460))))

(assert (=> d!1302206 (not (containsKey!835 lt!1586460 key!3918))))

(assert (=> d!1302206 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!120 lt!1586446 key!3918 newValue!99 lt!1586460) lt!1586813)))

(declare-fun bs!657868 () Bool)

(assert (= bs!657868 d!1302206))

(assert (=> bs!657868 m!5008859))

(declare-fun m!5009339 () Bool)

(assert (=> bs!657868 m!5009339))

(assert (=> bs!657868 m!5008859))

(declare-fun m!5009341 () Bool)

(assert (=> bs!657868 m!5009341))

(declare-fun m!5009343 () Bool)

(assert (=> bs!657868 m!5009343))

(declare-fun m!5009345 () Bool)

(assert (=> bs!657868 m!5009345))

(assert (=> bs!657868 m!5009343))

(declare-fun m!5009347 () Bool)

(assert (=> bs!657868 m!5009347))

(assert (=> bs!657868 m!5009347))

(assert (=> bs!657868 m!5009341))

(declare-fun m!5009349 () Bool)

(assert (=> bs!657868 m!5009349))

(assert (=> b!4375748 d!1302206))

(declare-fun bs!657869 () Bool)

(declare-fun b!4376005 () Bool)

(assert (= bs!657869 (and b!4376005 b!4376000)))

(declare-fun lambda!144707 () Int)

(assert (=> bs!657869 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144707 lambda!144703))))

(declare-fun bs!657870 () Bool)

(assert (= bs!657870 (and b!4376005 b!4376001)))

(assert (=> bs!657870 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144707 lambda!144704))))

(assert (=> bs!657870 (= (= (+!778 lt!1586446 lt!1586455) lt!1586808) (= lambda!144707 lambda!144705))))

(declare-fun bs!657871 () Bool)

(assert (= bs!657871 (and b!4376005 d!1302202)))

(assert (=> bs!657871 (= (= (+!778 lt!1586446 lt!1586455) lt!1586805) (= lambda!144707 lambda!144706))))

(declare-fun bs!657872 () Bool)

(assert (= bs!657872 (and b!4376005 b!4375991)))

(assert (=> bs!657872 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144707 lambda!144699))))

(declare-fun bs!657873 () Bool)

(assert (= bs!657873 (and b!4376005 b!4375992)))

(assert (=> bs!657873 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144707 lambda!144700))))

(assert (=> bs!657873 (= (= (+!778 lt!1586446 lt!1586455) lt!1586783) (= lambda!144707 lambda!144701))))

(declare-fun bs!657874 () Bool)

(assert (= bs!657874 (and b!4376005 d!1302152)))

(assert (=> bs!657874 (= (= (+!778 lt!1586446 lt!1586455) lt!1586780) (= lambda!144707 lambda!144702))))

(declare-fun bs!657875 () Bool)

(assert (= bs!657875 (and b!4376005 d!1302118)))

(assert (=> bs!657875 (not (= lambda!144707 lambda!144613))))

(assert (=> b!4376005 true))

(declare-fun bs!657876 () Bool)

(declare-fun b!4376006 () Bool)

(assert (= bs!657876 (and b!4376006 b!4376000)))

(declare-fun lambda!144708 () Int)

(assert (=> bs!657876 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144708 lambda!144703))))

(declare-fun bs!657877 () Bool)

(assert (= bs!657877 (and b!4376006 b!4376001)))

(assert (=> bs!657877 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144708 lambda!144704))))

(assert (=> bs!657877 (= (= (+!778 lt!1586446 lt!1586455) lt!1586808) (= lambda!144708 lambda!144705))))

(declare-fun bs!657878 () Bool)

(assert (= bs!657878 (and b!4376006 d!1302202)))

(assert (=> bs!657878 (= (= (+!778 lt!1586446 lt!1586455) lt!1586805) (= lambda!144708 lambda!144706))))

(declare-fun bs!657879 () Bool)

(assert (= bs!657879 (and b!4376006 b!4376005)))

(assert (=> bs!657879 (= lambda!144708 lambda!144707)))

(declare-fun bs!657880 () Bool)

(assert (= bs!657880 (and b!4376006 b!4375991)))

(assert (=> bs!657880 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144708 lambda!144699))))

(declare-fun bs!657881 () Bool)

(assert (= bs!657881 (and b!4376006 b!4375992)))

(assert (=> bs!657881 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144708 lambda!144700))))

(assert (=> bs!657881 (= (= (+!778 lt!1586446 lt!1586455) lt!1586783) (= lambda!144708 lambda!144701))))

(declare-fun bs!657882 () Bool)

(assert (= bs!657882 (and b!4376006 d!1302152)))

(assert (=> bs!657882 (= (= (+!778 lt!1586446 lt!1586455) lt!1586780) (= lambda!144708 lambda!144702))))

(declare-fun bs!657883 () Bool)

(assert (= bs!657883 (and b!4376006 d!1302118)))

(assert (=> bs!657883 (not (= lambda!144708 lambda!144613))))

(assert (=> b!4376006 true))

(declare-fun lt!1586832 () ListMap!2373)

(declare-fun lambda!144709 () Int)

(assert (=> bs!657876 (= (= lt!1586832 lt!1586446) (= lambda!144709 lambda!144703))))

(assert (=> bs!657877 (= (= lt!1586832 lt!1586446) (= lambda!144709 lambda!144704))))

(assert (=> bs!657877 (= (= lt!1586832 lt!1586808) (= lambda!144709 lambda!144705))))

(assert (=> bs!657878 (= (= lt!1586832 lt!1586805) (= lambda!144709 lambda!144706))))

(assert (=> bs!657879 (= (= lt!1586832 (+!778 lt!1586446 lt!1586455)) (= lambda!144709 lambda!144707))))

(assert (=> bs!657881 (= (= lt!1586832 lt!1586446) (= lambda!144709 lambda!144700))))

(assert (=> bs!657881 (= (= lt!1586832 lt!1586783) (= lambda!144709 lambda!144701))))

(assert (=> bs!657882 (= (= lt!1586832 lt!1586780) (= lambda!144709 lambda!144702))))

(assert (=> bs!657883 (not (= lambda!144709 lambda!144613))))

(assert (=> b!4376006 (= (= lt!1586832 (+!778 lt!1586446 lt!1586455)) (= lambda!144709 lambda!144708))))

(assert (=> bs!657880 (= (= lt!1586832 lt!1586446) (= lambda!144709 lambda!144699))))

(assert (=> b!4376006 true))

(declare-fun bs!657884 () Bool)

(declare-fun d!1302208 () Bool)

(assert (= bs!657884 (and d!1302208 b!4376000)))

(declare-fun lambda!144710 () Int)

(declare-fun lt!1586829 () ListMap!2373)

(assert (=> bs!657884 (= (= lt!1586829 lt!1586446) (= lambda!144710 lambda!144703))))

(declare-fun bs!657885 () Bool)

(assert (= bs!657885 (and d!1302208 b!4376001)))

(assert (=> bs!657885 (= (= lt!1586829 lt!1586446) (= lambda!144710 lambda!144704))))

(assert (=> bs!657885 (= (= lt!1586829 lt!1586808) (= lambda!144710 lambda!144705))))

(declare-fun bs!657886 () Bool)

(assert (= bs!657886 (and d!1302208 d!1302202)))

(assert (=> bs!657886 (= (= lt!1586829 lt!1586805) (= lambda!144710 lambda!144706))))

(declare-fun bs!657887 () Bool)

(assert (= bs!657887 (and d!1302208 b!4376005)))

(assert (=> bs!657887 (= (= lt!1586829 (+!778 lt!1586446 lt!1586455)) (= lambda!144710 lambda!144707))))

(declare-fun bs!657888 () Bool)

(assert (= bs!657888 (and d!1302208 b!4376006)))

(assert (=> bs!657888 (= (= lt!1586829 lt!1586832) (= lambda!144710 lambda!144709))))

(declare-fun bs!657889 () Bool)

(assert (= bs!657889 (and d!1302208 b!4375992)))

(assert (=> bs!657889 (= (= lt!1586829 lt!1586446) (= lambda!144710 lambda!144700))))

(assert (=> bs!657889 (= (= lt!1586829 lt!1586783) (= lambda!144710 lambda!144701))))

(declare-fun bs!657890 () Bool)

(assert (= bs!657890 (and d!1302208 d!1302152)))

(assert (=> bs!657890 (= (= lt!1586829 lt!1586780) (= lambda!144710 lambda!144702))))

(declare-fun bs!657891 () Bool)

(assert (= bs!657891 (and d!1302208 d!1302118)))

(assert (=> bs!657891 (not (= lambda!144710 lambda!144613))))

(assert (=> bs!657888 (= (= lt!1586829 (+!778 lt!1586446 lt!1586455)) (= lambda!144710 lambda!144708))))

(declare-fun bs!657892 () Bool)

(assert (= bs!657892 (and d!1302208 b!4375991)))

(assert (=> bs!657892 (= (= lt!1586829 lt!1586446) (= lambda!144710 lambda!144699))))

(assert (=> d!1302208 true))

(declare-fun c!744113 () Bool)

(declare-fun call!304258 () Bool)

(declare-fun bm!304252 () Bool)

(assert (=> bm!304252 (= call!304258 (forall!9261 (toList!3130 (+!778 lt!1586446 lt!1586455)) (ite c!744113 lambda!144707 lambda!144708)))))

(declare-fun b!4376002 () Bool)

(declare-fun e!2723841 () Bool)

(assert (=> b!4376002 (= e!2723841 (invariantList!719 (toList!3130 lt!1586829)))))

(declare-fun b!4376003 () Bool)

(declare-fun res!1801710 () Bool)

(assert (=> b!4376003 (=> (not res!1801710) (not e!2723841))))

(assert (=> b!4376003 (= res!1801710 (forall!9261 (toList!3130 (+!778 lt!1586446 lt!1586455)) lambda!144710))))

(assert (=> d!1302208 e!2723841))

(declare-fun res!1801711 () Bool)

(assert (=> d!1302208 (=> (not res!1801711) (not e!2723841))))

(assert (=> d!1302208 (= res!1801711 (forall!9261 lt!1586460 lambda!144710))))

(declare-fun e!2723840 () ListMap!2373)

(assert (=> d!1302208 (= lt!1586829 e!2723840)))

(assert (=> d!1302208 (= c!744113 ((_ is Nil!49140) lt!1586460))))

(assert (=> d!1302208 (noDuplicateKeys!573 lt!1586460)))

(assert (=> d!1302208 (= (addToMapMapFromBucket!254 lt!1586460 (+!778 lt!1586446 lt!1586455)) lt!1586829)))

(declare-fun call!304259 () Bool)

(declare-fun bm!304253 () Bool)

(assert (=> bm!304253 (= call!304259 (forall!9261 (ite c!744113 (toList!3130 (+!778 lt!1586446 lt!1586455)) lt!1586460) (ite c!744113 lambda!144707 lambda!144709)))))

(declare-fun bm!304254 () Bool)

(declare-fun call!304257 () Unit!74656)

(assert (=> bm!304254 (= call!304257 (lemmaContainsAllItsOwnKeys!101 (+!778 lt!1586446 lt!1586455)))))

(declare-fun e!2723842 () Bool)

(declare-fun b!4376004 () Bool)

(assert (=> b!4376004 (= e!2723842 (forall!9261 (toList!3130 (+!778 lt!1586446 lt!1586455)) lambda!144709))))

(assert (=> b!4376005 (= e!2723840 (+!778 lt!1586446 lt!1586455))))

(declare-fun lt!1586833 () Unit!74656)

(assert (=> b!4376005 (= lt!1586833 call!304257)))

(assert (=> b!4376005 call!304258))

(declare-fun lt!1586814 () Unit!74656)

(assert (=> b!4376005 (= lt!1586814 lt!1586833)))

(assert (=> b!4376005 call!304259))

(declare-fun lt!1586816 () Unit!74656)

(declare-fun Unit!74727 () Unit!74656)

(assert (=> b!4376005 (= lt!1586816 Unit!74727)))

(assert (=> b!4376006 (= e!2723840 lt!1586832)))

(declare-fun lt!1586822 () ListMap!2373)

(assert (=> b!4376006 (= lt!1586822 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)))))

(assert (=> b!4376006 (= lt!1586832 (addToMapMapFromBucket!254 (t!356190 lt!1586460) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))))))

(declare-fun lt!1586828 () Unit!74656)

(assert (=> b!4376006 (= lt!1586828 call!304257)))

(assert (=> b!4376006 call!304258))

(declare-fun lt!1586821 () Unit!74656)

(assert (=> b!4376006 (= lt!1586821 lt!1586828)))

(assert (=> b!4376006 (forall!9261 (toList!3130 lt!1586822) lambda!144709)))

(declare-fun lt!1586831 () Unit!74656)

(declare-fun Unit!74728 () Unit!74656)

(assert (=> b!4376006 (= lt!1586831 Unit!74728)))

(assert (=> b!4376006 (forall!9261 (t!356190 lt!1586460) lambda!144709)))

(declare-fun lt!1586823 () Unit!74656)

(declare-fun Unit!74729 () Unit!74656)

(assert (=> b!4376006 (= lt!1586823 Unit!74729)))

(declare-fun lt!1586825 () Unit!74656)

(declare-fun Unit!74731 () Unit!74656)

(assert (=> b!4376006 (= lt!1586825 Unit!74731)))

(declare-fun lt!1586815 () Unit!74656)

(assert (=> b!4376006 (= lt!1586815 (forallContained!1899 (toList!3130 lt!1586822) lambda!144709 (h!54733 lt!1586460)))))

(assert (=> b!4376006 (contains!11461 lt!1586822 (_1!27625 (h!54733 lt!1586460)))))

(declare-fun lt!1586834 () Unit!74656)

(declare-fun Unit!74732 () Unit!74656)

(assert (=> b!4376006 (= lt!1586834 Unit!74732)))

(assert (=> b!4376006 (contains!11461 lt!1586832 (_1!27625 (h!54733 lt!1586460)))))

(declare-fun lt!1586820 () Unit!74656)

(declare-fun Unit!74733 () Unit!74656)

(assert (=> b!4376006 (= lt!1586820 Unit!74733)))

(assert (=> b!4376006 (forall!9261 lt!1586460 lambda!144709)))

(declare-fun lt!1586827 () Unit!74656)

(declare-fun Unit!74734 () Unit!74656)

(assert (=> b!4376006 (= lt!1586827 Unit!74734)))

(assert (=> b!4376006 (forall!9261 (toList!3130 lt!1586822) lambda!144709)))

(declare-fun lt!1586817 () Unit!74656)

(declare-fun Unit!74735 () Unit!74656)

(assert (=> b!4376006 (= lt!1586817 Unit!74735)))

(declare-fun lt!1586824 () Unit!74656)

(declare-fun Unit!74736 () Unit!74656)

(assert (=> b!4376006 (= lt!1586824 Unit!74736)))

(declare-fun lt!1586830 () Unit!74656)

(assert (=> b!4376006 (= lt!1586830 (addForallContainsKeyThenBeforeAdding!101 (+!778 lt!1586446 lt!1586455) lt!1586832 (_1!27625 (h!54733 lt!1586460)) (_2!27625 (h!54733 lt!1586460))))))

(assert (=> b!4376006 (forall!9261 (toList!3130 (+!778 lt!1586446 lt!1586455)) lambda!144709)))

(declare-fun lt!1586818 () Unit!74656)

(assert (=> b!4376006 (= lt!1586818 lt!1586830)))

(assert (=> b!4376006 (forall!9261 (toList!3130 (+!778 lt!1586446 lt!1586455)) lambda!144709)))

(declare-fun lt!1586819 () Unit!74656)

(declare-fun Unit!74737 () Unit!74656)

(assert (=> b!4376006 (= lt!1586819 Unit!74737)))

(declare-fun res!1801709 () Bool)

(assert (=> b!4376006 (= res!1801709 call!304259)))

(assert (=> b!4376006 (=> (not res!1801709) (not e!2723842))))

(assert (=> b!4376006 e!2723842))

(declare-fun lt!1586826 () Unit!74656)

(declare-fun Unit!74738 () Unit!74656)

(assert (=> b!4376006 (= lt!1586826 Unit!74738)))

(assert (= (and d!1302208 c!744113) b!4376005))

(assert (= (and d!1302208 (not c!744113)) b!4376006))

(assert (= (and b!4376006 res!1801709) b!4376004))

(assert (= (or b!4376005 b!4376006) bm!304254))

(assert (= (or b!4376005 b!4376006) bm!304252))

(assert (= (or b!4376005 b!4376006) bm!304253))

(assert (= (and d!1302208 res!1801711) b!4376003))

(assert (= (and b!4376003 res!1801710) b!4376002))

(declare-fun m!5009351 () Bool)

(assert (=> bm!304252 m!5009351))

(declare-fun m!5009353 () Bool)

(assert (=> b!4376004 m!5009353))

(declare-fun m!5009355 () Bool)

(assert (=> b!4376002 m!5009355))

(declare-fun m!5009357 () Bool)

(assert (=> b!4376003 m!5009357))

(declare-fun m!5009359 () Bool)

(assert (=> b!4376006 m!5009359))

(declare-fun m!5009361 () Bool)

(assert (=> b!4376006 m!5009361))

(declare-fun m!5009363 () Bool)

(assert (=> b!4376006 m!5009363))

(declare-fun m!5009365 () Bool)

(assert (=> b!4376006 m!5009365))

(declare-fun m!5009367 () Bool)

(assert (=> b!4376006 m!5009367))

(assert (=> b!4376006 m!5009353))

(assert (=> b!4376006 m!5009353))

(assert (=> b!4376006 m!5008857))

(declare-fun m!5009369 () Bool)

(assert (=> b!4376006 m!5009369))

(declare-fun m!5009371 () Bool)

(assert (=> b!4376006 m!5009371))

(assert (=> b!4376006 m!5009367))

(declare-fun m!5009373 () Bool)

(assert (=> b!4376006 m!5009373))

(assert (=> b!4376006 m!5008857))

(assert (=> b!4376006 m!5009363))

(declare-fun m!5009375 () Bool)

(assert (=> b!4376006 m!5009375))

(declare-fun m!5009377 () Bool)

(assert (=> d!1302208 m!5009377))

(declare-fun m!5009379 () Bool)

(assert (=> d!1302208 m!5009379))

(assert (=> bm!304254 m!5008857))

(declare-fun m!5009381 () Bool)

(assert (=> bm!304254 m!5009381))

(declare-fun m!5009383 () Bool)

(assert (=> bm!304253 m!5009383))

(assert (=> b!4375748 d!1302208))

(declare-fun d!1302210 () Bool)

(declare-fun e!2723845 () Bool)

(assert (=> d!1302210 e!2723845))

(declare-fun res!1801716 () Bool)

(assert (=> d!1302210 (=> (not res!1801716) (not e!2723845))))

(declare-fun lt!1586843 () ListMap!2373)

(assert (=> d!1302210 (= res!1801716 (contains!11461 lt!1586843 (_1!27625 lt!1586455)))))

(declare-fun lt!1586845 () List!49264)

(assert (=> d!1302210 (= lt!1586843 (ListMap!2374 lt!1586845))))

(declare-fun lt!1586846 () Unit!74656)

(declare-fun lt!1586844 () Unit!74656)

(assert (=> d!1302210 (= lt!1586846 lt!1586844)))

(declare-datatypes ((Option!10552 0))(
  ( (None!10551) (Some!10551 (v!43541 V!10746)) )
))
(declare-fun getValueByKey!538 (List!49264 K!10500) Option!10552)

(assert (=> d!1302210 (= (getValueByKey!538 lt!1586845 (_1!27625 lt!1586455)) (Some!10551 (_2!27625 lt!1586455)))))

(declare-fun lemmaContainsTupThenGetReturnValue!302 (List!49264 K!10500 V!10746) Unit!74656)

(assert (=> d!1302210 (= lt!1586844 (lemmaContainsTupThenGetReturnValue!302 lt!1586845 (_1!27625 lt!1586455) (_2!27625 lt!1586455)))))

(declare-fun insertNoDuplicatedKeys!137 (List!49264 K!10500 V!10746) List!49264)

(assert (=> d!1302210 (= lt!1586845 (insertNoDuplicatedKeys!137 (toList!3130 lt!1586454) (_1!27625 lt!1586455) (_2!27625 lt!1586455)))))

(assert (=> d!1302210 (= (+!778 lt!1586454 lt!1586455) lt!1586843)))

(declare-fun b!4376011 () Bool)

(declare-fun res!1801717 () Bool)

(assert (=> b!4376011 (=> (not res!1801717) (not e!2723845))))

(assert (=> b!4376011 (= res!1801717 (= (getValueByKey!538 (toList!3130 lt!1586843) (_1!27625 lt!1586455)) (Some!10551 (_2!27625 lt!1586455))))))

(declare-fun b!4376012 () Bool)

(declare-fun contains!11466 (List!49264 tuple2!48662) Bool)

(assert (=> b!4376012 (= e!2723845 (contains!11466 (toList!3130 lt!1586843) lt!1586455))))

(assert (= (and d!1302210 res!1801716) b!4376011))

(assert (= (and b!4376011 res!1801717) b!4376012))

(declare-fun m!5009385 () Bool)

(assert (=> d!1302210 m!5009385))

(declare-fun m!5009387 () Bool)

(assert (=> d!1302210 m!5009387))

(declare-fun m!5009389 () Bool)

(assert (=> d!1302210 m!5009389))

(declare-fun m!5009391 () Bool)

(assert (=> d!1302210 m!5009391))

(declare-fun m!5009393 () Bool)

(assert (=> b!4376011 m!5009393))

(declare-fun m!5009395 () Bool)

(assert (=> b!4376012 m!5009395))

(assert (=> b!4375748 d!1302210))

(declare-fun bs!657893 () Bool)

(declare-fun d!1302212 () Bool)

(assert (= bs!657893 (and d!1302212 start!424804)))

(declare-fun lambda!144711 () Int)

(assert (=> bs!657893 (= lambda!144711 lambda!144607)))

(declare-fun bs!657894 () Bool)

(assert (= bs!657894 (and d!1302212 d!1302134)))

(assert (=> bs!657894 (= lambda!144711 lambda!144624)))

(declare-fun lt!1586847 () ListMap!2373)

(assert (=> d!1302212 (invariantList!719 (toList!3130 lt!1586847))))

(declare-fun e!2723846 () ListMap!2373)

(assert (=> d!1302212 (= lt!1586847 e!2723846)))

(declare-fun c!744114 () Bool)

(assert (=> d!1302212 (= c!744114 ((_ is Cons!49141) (t!356191 (toList!3129 lm!1707))))))

(assert (=> d!1302212 (forall!9259 (t!356191 (toList!3129 lm!1707)) lambda!144711)))

(assert (=> d!1302212 (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586847)))

(declare-fun b!4376013 () Bool)

(assert (=> b!4376013 (= e!2723846 (addToMapMapFromBucket!254 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707))))))))

(declare-fun b!4376014 () Bool)

(assert (=> b!4376014 (= e!2723846 (ListMap!2374 Nil!49140))))

(assert (= (and d!1302212 c!744114) b!4376013))

(assert (= (and d!1302212 (not c!744114)) b!4376014))

(declare-fun m!5009397 () Bool)

(assert (=> d!1302212 m!5009397))

(declare-fun m!5009399 () Bool)

(assert (=> d!1302212 m!5009399))

(declare-fun m!5009401 () Bool)

(assert (=> b!4376013 m!5009401))

(assert (=> b!4376013 m!5009401))

(declare-fun m!5009403 () Bool)

(assert (=> b!4376013 m!5009403))

(assert (=> b!4375748 d!1302212))

(declare-fun bs!657895 () Bool)

(declare-fun b!4376018 () Bool)

(assert (= bs!657895 (and b!4376018 b!4376000)))

(declare-fun lambda!144712 () Int)

(assert (=> bs!657895 (= lambda!144712 lambda!144703)))

(declare-fun bs!657896 () Bool)

(assert (= bs!657896 (and b!4376018 d!1302208)))

(assert (=> bs!657896 (= (= lt!1586446 lt!1586829) (= lambda!144712 lambda!144710))))

(declare-fun bs!657897 () Bool)

(assert (= bs!657897 (and b!4376018 b!4376001)))

(assert (=> bs!657897 (= lambda!144712 lambda!144704)))

(assert (=> bs!657897 (= (= lt!1586446 lt!1586808) (= lambda!144712 lambda!144705))))

(declare-fun bs!657898 () Bool)

(assert (= bs!657898 (and b!4376018 d!1302202)))

(assert (=> bs!657898 (= (= lt!1586446 lt!1586805) (= lambda!144712 lambda!144706))))

(declare-fun bs!657899 () Bool)

(assert (= bs!657899 (and b!4376018 b!4376005)))

(assert (=> bs!657899 (= (= lt!1586446 (+!778 lt!1586446 lt!1586455)) (= lambda!144712 lambda!144707))))

(declare-fun bs!657900 () Bool)

(assert (= bs!657900 (and b!4376018 b!4376006)))

(assert (=> bs!657900 (= (= lt!1586446 lt!1586832) (= lambda!144712 lambda!144709))))

(declare-fun bs!657901 () Bool)

(assert (= bs!657901 (and b!4376018 b!4375992)))

(assert (=> bs!657901 (= lambda!144712 lambda!144700)))

(assert (=> bs!657901 (= (= lt!1586446 lt!1586783) (= lambda!144712 lambda!144701))))

(declare-fun bs!657902 () Bool)

(assert (= bs!657902 (and b!4376018 d!1302152)))

(assert (=> bs!657902 (= (= lt!1586446 lt!1586780) (= lambda!144712 lambda!144702))))

(declare-fun bs!657903 () Bool)

(assert (= bs!657903 (and b!4376018 d!1302118)))

(assert (=> bs!657903 (not (= lambda!144712 lambda!144613))))

(assert (=> bs!657900 (= (= lt!1586446 (+!778 lt!1586446 lt!1586455)) (= lambda!144712 lambda!144708))))

(declare-fun bs!657904 () Bool)

(assert (= bs!657904 (and b!4376018 b!4375991)))

(assert (=> bs!657904 (= lambda!144712 lambda!144699)))

(assert (=> b!4376018 true))

(declare-fun bs!657905 () Bool)

(declare-fun b!4376019 () Bool)

(assert (= bs!657905 (and b!4376019 b!4376000)))

(declare-fun lambda!144713 () Int)

(assert (=> bs!657905 (= lambda!144713 lambda!144703)))

(declare-fun bs!657906 () Bool)

(assert (= bs!657906 (and b!4376019 d!1302208)))

(assert (=> bs!657906 (= (= lt!1586446 lt!1586829) (= lambda!144713 lambda!144710))))

(declare-fun bs!657907 () Bool)

(assert (= bs!657907 (and b!4376019 b!4376001)))

(assert (=> bs!657907 (= lambda!144713 lambda!144704)))

(assert (=> bs!657907 (= (= lt!1586446 lt!1586808) (= lambda!144713 lambda!144705))))

(declare-fun bs!657908 () Bool)

(assert (= bs!657908 (and b!4376019 d!1302202)))

(assert (=> bs!657908 (= (= lt!1586446 lt!1586805) (= lambda!144713 lambda!144706))))

(declare-fun bs!657909 () Bool)

(assert (= bs!657909 (and b!4376019 b!4376006)))

(assert (=> bs!657909 (= (= lt!1586446 lt!1586832) (= lambda!144713 lambda!144709))))

(declare-fun bs!657910 () Bool)

(assert (= bs!657910 (and b!4376019 b!4375992)))

(assert (=> bs!657910 (= lambda!144713 lambda!144700)))

(assert (=> bs!657910 (= (= lt!1586446 lt!1586783) (= lambda!144713 lambda!144701))))

(declare-fun bs!657911 () Bool)

(assert (= bs!657911 (and b!4376019 d!1302152)))

(assert (=> bs!657911 (= (= lt!1586446 lt!1586780) (= lambda!144713 lambda!144702))))

(declare-fun bs!657912 () Bool)

(assert (= bs!657912 (and b!4376019 d!1302118)))

(assert (=> bs!657912 (not (= lambda!144713 lambda!144613))))

(declare-fun bs!657913 () Bool)

(assert (= bs!657913 (and b!4376019 b!4376005)))

(assert (=> bs!657913 (= (= lt!1586446 (+!778 lt!1586446 lt!1586455)) (= lambda!144713 lambda!144707))))

(declare-fun bs!657914 () Bool)

(assert (= bs!657914 (and b!4376019 b!4376018)))

(assert (=> bs!657914 (= lambda!144713 lambda!144712)))

(assert (=> bs!657909 (= (= lt!1586446 (+!778 lt!1586446 lt!1586455)) (= lambda!144713 lambda!144708))))

(declare-fun bs!657915 () Bool)

(assert (= bs!657915 (and b!4376019 b!4375991)))

(assert (=> bs!657915 (= lambda!144713 lambda!144699)))

(assert (=> b!4376019 true))

(declare-fun lt!1586866 () ListMap!2373)

(declare-fun lambda!144714 () Int)

(assert (=> bs!657905 (= (= lt!1586866 lt!1586446) (= lambda!144714 lambda!144703))))

(assert (=> bs!657906 (= (= lt!1586866 lt!1586829) (= lambda!144714 lambda!144710))))

(assert (=> bs!657907 (= (= lt!1586866 lt!1586446) (= lambda!144714 lambda!144704))))

(assert (=> bs!657907 (= (= lt!1586866 lt!1586808) (= lambda!144714 lambda!144705))))

(assert (=> b!4376019 (= (= lt!1586866 lt!1586446) (= lambda!144714 lambda!144713))))

(assert (=> bs!657908 (= (= lt!1586866 lt!1586805) (= lambda!144714 lambda!144706))))

(assert (=> bs!657909 (= (= lt!1586866 lt!1586832) (= lambda!144714 lambda!144709))))

(assert (=> bs!657910 (= (= lt!1586866 lt!1586446) (= lambda!144714 lambda!144700))))

(assert (=> bs!657910 (= (= lt!1586866 lt!1586783) (= lambda!144714 lambda!144701))))

(assert (=> bs!657911 (= (= lt!1586866 lt!1586780) (= lambda!144714 lambda!144702))))

(assert (=> bs!657912 (not (= lambda!144714 lambda!144613))))

(assert (=> bs!657913 (= (= lt!1586866 (+!778 lt!1586446 lt!1586455)) (= lambda!144714 lambda!144707))))

(assert (=> bs!657914 (= (= lt!1586866 lt!1586446) (= lambda!144714 lambda!144712))))

(assert (=> bs!657909 (= (= lt!1586866 (+!778 lt!1586446 lt!1586455)) (= lambda!144714 lambda!144708))))

(assert (=> bs!657915 (= (= lt!1586866 lt!1586446) (= lambda!144714 lambda!144699))))

(assert (=> b!4376019 true))

(declare-fun bs!657916 () Bool)

(declare-fun d!1302214 () Bool)

(assert (= bs!657916 (and d!1302214 b!4376000)))

(declare-fun lt!1586863 () ListMap!2373)

(declare-fun lambda!144715 () Int)

(assert (=> bs!657916 (= (= lt!1586863 lt!1586446) (= lambda!144715 lambda!144703))))

(declare-fun bs!657917 () Bool)

(assert (= bs!657917 (and d!1302214 d!1302208)))

(assert (=> bs!657917 (= (= lt!1586863 lt!1586829) (= lambda!144715 lambda!144710))))

(declare-fun bs!657918 () Bool)

(assert (= bs!657918 (and d!1302214 b!4376001)))

(assert (=> bs!657918 (= (= lt!1586863 lt!1586446) (= lambda!144715 lambda!144704))))

(assert (=> bs!657918 (= (= lt!1586863 lt!1586808) (= lambda!144715 lambda!144705))))

(declare-fun bs!657919 () Bool)

(assert (= bs!657919 (and d!1302214 b!4376019)))

(assert (=> bs!657919 (= (= lt!1586863 lt!1586446) (= lambda!144715 lambda!144713))))

(declare-fun bs!657920 () Bool)

(assert (= bs!657920 (and d!1302214 d!1302202)))

(assert (=> bs!657920 (= (= lt!1586863 lt!1586805) (= lambda!144715 lambda!144706))))

(assert (=> bs!657919 (= (= lt!1586863 lt!1586866) (= lambda!144715 lambda!144714))))

(declare-fun bs!657921 () Bool)

(assert (= bs!657921 (and d!1302214 b!4376006)))

(assert (=> bs!657921 (= (= lt!1586863 lt!1586832) (= lambda!144715 lambda!144709))))

(declare-fun bs!657922 () Bool)

(assert (= bs!657922 (and d!1302214 b!4375992)))

(assert (=> bs!657922 (= (= lt!1586863 lt!1586446) (= lambda!144715 lambda!144700))))

(assert (=> bs!657922 (= (= lt!1586863 lt!1586783) (= lambda!144715 lambda!144701))))

(declare-fun bs!657923 () Bool)

(assert (= bs!657923 (and d!1302214 d!1302152)))

(assert (=> bs!657923 (= (= lt!1586863 lt!1586780) (= lambda!144715 lambda!144702))))

(declare-fun bs!657924 () Bool)

(assert (= bs!657924 (and d!1302214 d!1302118)))

(assert (=> bs!657924 (not (= lambda!144715 lambda!144613))))

(declare-fun bs!657925 () Bool)

(assert (= bs!657925 (and d!1302214 b!4376005)))

(assert (=> bs!657925 (= (= lt!1586863 (+!778 lt!1586446 lt!1586455)) (= lambda!144715 lambda!144707))))

(declare-fun bs!657926 () Bool)

(assert (= bs!657926 (and d!1302214 b!4376018)))

(assert (=> bs!657926 (= (= lt!1586863 lt!1586446) (= lambda!144715 lambda!144712))))

(assert (=> bs!657921 (= (= lt!1586863 (+!778 lt!1586446 lt!1586455)) (= lambda!144715 lambda!144708))))

(declare-fun bs!657927 () Bool)

(assert (= bs!657927 (and d!1302214 b!4375991)))

(assert (=> bs!657927 (= (= lt!1586863 lt!1586446) (= lambda!144715 lambda!144699))))

(assert (=> d!1302214 true))

(declare-fun c!744115 () Bool)

(declare-fun bm!304255 () Bool)

(declare-fun call!304261 () Bool)

(assert (=> bm!304255 (= call!304261 (forall!9261 (toList!3130 lt!1586446) (ite c!744115 lambda!144712 lambda!144713)))))

(declare-fun b!4376015 () Bool)

(declare-fun e!2723848 () Bool)

(assert (=> b!4376015 (= e!2723848 (invariantList!719 (toList!3130 lt!1586863)))))

(declare-fun b!4376016 () Bool)

(declare-fun res!1801719 () Bool)

(assert (=> b!4376016 (=> (not res!1801719) (not e!2723848))))

(assert (=> b!4376016 (= res!1801719 (forall!9261 (toList!3130 lt!1586446) lambda!144715))))

(assert (=> d!1302214 e!2723848))

(declare-fun res!1801720 () Bool)

(assert (=> d!1302214 (=> (not res!1801720) (not e!2723848))))

(assert (=> d!1302214 (= res!1801720 (forall!9261 lt!1586460 lambda!144715))))

(declare-fun e!2723847 () ListMap!2373)

(assert (=> d!1302214 (= lt!1586863 e!2723847)))

(assert (=> d!1302214 (= c!744115 ((_ is Nil!49140) lt!1586460))))

(assert (=> d!1302214 (noDuplicateKeys!573 lt!1586460)))

(assert (=> d!1302214 (= (addToMapMapFromBucket!254 lt!1586460 lt!1586446) lt!1586863)))

(declare-fun call!304262 () Bool)

(declare-fun bm!304256 () Bool)

(assert (=> bm!304256 (= call!304262 (forall!9261 (ite c!744115 (toList!3130 lt!1586446) lt!1586460) (ite c!744115 lambda!144712 lambda!144714)))))

(declare-fun bm!304257 () Bool)

(declare-fun call!304260 () Unit!74656)

(assert (=> bm!304257 (= call!304260 (lemmaContainsAllItsOwnKeys!101 lt!1586446))))

(declare-fun b!4376017 () Bool)

(declare-fun e!2723849 () Bool)

(assert (=> b!4376017 (= e!2723849 (forall!9261 (toList!3130 lt!1586446) lambda!144714))))

(assert (=> b!4376018 (= e!2723847 lt!1586446)))

(declare-fun lt!1586867 () Unit!74656)

(assert (=> b!4376018 (= lt!1586867 call!304260)))

(assert (=> b!4376018 call!304261))

(declare-fun lt!1586848 () Unit!74656)

(assert (=> b!4376018 (= lt!1586848 lt!1586867)))

(assert (=> b!4376018 call!304262))

(declare-fun lt!1586850 () Unit!74656)

(declare-fun Unit!74739 () Unit!74656)

(assert (=> b!4376018 (= lt!1586850 Unit!74739)))

(assert (=> b!4376019 (= e!2723847 lt!1586866)))

(declare-fun lt!1586856 () ListMap!2373)

(assert (=> b!4376019 (= lt!1586856 (+!778 lt!1586446 (h!54733 lt!1586460)))))

(assert (=> b!4376019 (= lt!1586866 (addToMapMapFromBucket!254 (t!356190 lt!1586460) (+!778 lt!1586446 (h!54733 lt!1586460))))))

(declare-fun lt!1586862 () Unit!74656)

(assert (=> b!4376019 (= lt!1586862 call!304260)))

(assert (=> b!4376019 call!304261))

(declare-fun lt!1586855 () Unit!74656)

(assert (=> b!4376019 (= lt!1586855 lt!1586862)))

(assert (=> b!4376019 (forall!9261 (toList!3130 lt!1586856) lambda!144714)))

(declare-fun lt!1586865 () Unit!74656)

(declare-fun Unit!74740 () Unit!74656)

(assert (=> b!4376019 (= lt!1586865 Unit!74740)))

(assert (=> b!4376019 (forall!9261 (t!356190 lt!1586460) lambda!144714)))

(declare-fun lt!1586857 () Unit!74656)

(declare-fun Unit!74741 () Unit!74656)

(assert (=> b!4376019 (= lt!1586857 Unit!74741)))

(declare-fun lt!1586859 () Unit!74656)

(declare-fun Unit!74742 () Unit!74656)

(assert (=> b!4376019 (= lt!1586859 Unit!74742)))

(declare-fun lt!1586849 () Unit!74656)

(assert (=> b!4376019 (= lt!1586849 (forallContained!1899 (toList!3130 lt!1586856) lambda!144714 (h!54733 lt!1586460)))))

(assert (=> b!4376019 (contains!11461 lt!1586856 (_1!27625 (h!54733 lt!1586460)))))

(declare-fun lt!1586868 () Unit!74656)

(declare-fun Unit!74743 () Unit!74656)

(assert (=> b!4376019 (= lt!1586868 Unit!74743)))

(assert (=> b!4376019 (contains!11461 lt!1586866 (_1!27625 (h!54733 lt!1586460)))))

(declare-fun lt!1586854 () Unit!74656)

(declare-fun Unit!74744 () Unit!74656)

(assert (=> b!4376019 (= lt!1586854 Unit!74744)))

(assert (=> b!4376019 (forall!9261 lt!1586460 lambda!144714)))

(declare-fun lt!1586861 () Unit!74656)

(declare-fun Unit!74745 () Unit!74656)

(assert (=> b!4376019 (= lt!1586861 Unit!74745)))

(assert (=> b!4376019 (forall!9261 (toList!3130 lt!1586856) lambda!144714)))

(declare-fun lt!1586851 () Unit!74656)

(declare-fun Unit!74746 () Unit!74656)

(assert (=> b!4376019 (= lt!1586851 Unit!74746)))

(declare-fun lt!1586858 () Unit!74656)

(declare-fun Unit!74747 () Unit!74656)

(assert (=> b!4376019 (= lt!1586858 Unit!74747)))

(declare-fun lt!1586864 () Unit!74656)

(assert (=> b!4376019 (= lt!1586864 (addForallContainsKeyThenBeforeAdding!101 lt!1586446 lt!1586866 (_1!27625 (h!54733 lt!1586460)) (_2!27625 (h!54733 lt!1586460))))))

(assert (=> b!4376019 (forall!9261 (toList!3130 lt!1586446) lambda!144714)))

(declare-fun lt!1586852 () Unit!74656)

(assert (=> b!4376019 (= lt!1586852 lt!1586864)))

(assert (=> b!4376019 (forall!9261 (toList!3130 lt!1586446) lambda!144714)))

(declare-fun lt!1586853 () Unit!74656)

(declare-fun Unit!74748 () Unit!74656)

(assert (=> b!4376019 (= lt!1586853 Unit!74748)))

(declare-fun res!1801718 () Bool)

(assert (=> b!4376019 (= res!1801718 call!304262)))

(assert (=> b!4376019 (=> (not res!1801718) (not e!2723849))))

(assert (=> b!4376019 e!2723849))

(declare-fun lt!1586860 () Unit!74656)

(declare-fun Unit!74749 () Unit!74656)

(assert (=> b!4376019 (= lt!1586860 Unit!74749)))

(assert (= (and d!1302214 c!744115) b!4376018))

(assert (= (and d!1302214 (not c!744115)) b!4376019))

(assert (= (and b!4376019 res!1801718) b!4376017))

(assert (= (or b!4376018 b!4376019) bm!304257))

(assert (= (or b!4376018 b!4376019) bm!304255))

(assert (= (or b!4376018 b!4376019) bm!304256))

(assert (= (and d!1302214 res!1801720) b!4376016))

(assert (= (and b!4376016 res!1801719) b!4376015))

(declare-fun m!5009405 () Bool)

(assert (=> bm!304255 m!5009405))

(declare-fun m!5009407 () Bool)

(assert (=> b!4376017 m!5009407))

(declare-fun m!5009409 () Bool)

(assert (=> b!4376015 m!5009409))

(declare-fun m!5009411 () Bool)

(assert (=> b!4376016 m!5009411))

(declare-fun m!5009413 () Bool)

(assert (=> b!4376019 m!5009413))

(declare-fun m!5009415 () Bool)

(assert (=> b!4376019 m!5009415))

(declare-fun m!5009417 () Bool)

(assert (=> b!4376019 m!5009417))

(declare-fun m!5009419 () Bool)

(assert (=> b!4376019 m!5009419))

(declare-fun m!5009421 () Bool)

(assert (=> b!4376019 m!5009421))

(assert (=> b!4376019 m!5009407))

(assert (=> b!4376019 m!5009407))

(declare-fun m!5009423 () Bool)

(assert (=> b!4376019 m!5009423))

(declare-fun m!5009425 () Bool)

(assert (=> b!4376019 m!5009425))

(assert (=> b!4376019 m!5009421))

(declare-fun m!5009427 () Bool)

(assert (=> b!4376019 m!5009427))

(assert (=> b!4376019 m!5009417))

(declare-fun m!5009429 () Bool)

(assert (=> b!4376019 m!5009429))

(declare-fun m!5009431 () Bool)

(assert (=> d!1302214 m!5009431))

(assert (=> d!1302214 m!5009379))

(assert (=> bm!304257 m!5009291))

(declare-fun m!5009433 () Bool)

(assert (=> bm!304256 m!5009433))

(assert (=> b!4375748 d!1302214))

(declare-fun d!1302216 () Bool)

(declare-fun e!2723850 () Bool)

(assert (=> d!1302216 e!2723850))

(declare-fun res!1801721 () Bool)

(assert (=> d!1302216 (=> (not res!1801721) (not e!2723850))))

(declare-fun lt!1586869 () ListMap!2373)

(assert (=> d!1302216 (= res!1801721 (contains!11461 lt!1586869 (_1!27625 lt!1586455)))))

(declare-fun lt!1586871 () List!49264)

(assert (=> d!1302216 (= lt!1586869 (ListMap!2374 lt!1586871))))

(declare-fun lt!1586872 () Unit!74656)

(declare-fun lt!1586870 () Unit!74656)

(assert (=> d!1302216 (= lt!1586872 lt!1586870)))

(assert (=> d!1302216 (= (getValueByKey!538 lt!1586871 (_1!27625 lt!1586455)) (Some!10551 (_2!27625 lt!1586455)))))

(assert (=> d!1302216 (= lt!1586870 (lemmaContainsTupThenGetReturnValue!302 lt!1586871 (_1!27625 lt!1586455) (_2!27625 lt!1586455)))))

(assert (=> d!1302216 (= lt!1586871 (insertNoDuplicatedKeys!137 (toList!3130 lt!1586446) (_1!27625 lt!1586455) (_2!27625 lt!1586455)))))

(assert (=> d!1302216 (= (+!778 lt!1586446 lt!1586455) lt!1586869)))

(declare-fun b!4376020 () Bool)

(declare-fun res!1801722 () Bool)

(assert (=> b!4376020 (=> (not res!1801722) (not e!2723850))))

(assert (=> b!4376020 (= res!1801722 (= (getValueByKey!538 (toList!3130 lt!1586869) (_1!27625 lt!1586455)) (Some!10551 (_2!27625 lt!1586455))))))

(declare-fun b!4376021 () Bool)

(assert (=> b!4376021 (= e!2723850 (contains!11466 (toList!3130 lt!1586869) lt!1586455))))

(assert (= (and d!1302216 res!1801721) b!4376020))

(assert (= (and b!4376020 res!1801722) b!4376021))

(declare-fun m!5009435 () Bool)

(assert (=> d!1302216 m!5009435))

(declare-fun m!5009437 () Bool)

(assert (=> d!1302216 m!5009437))

(declare-fun m!5009439 () Bool)

(assert (=> d!1302216 m!5009439))

(declare-fun m!5009441 () Bool)

(assert (=> d!1302216 m!5009441))

(declare-fun m!5009443 () Bool)

(assert (=> b!4376020 m!5009443))

(declare-fun m!5009445 () Bool)

(assert (=> b!4376021 m!5009445))

(assert (=> b!4375748 d!1302216))

(declare-fun bs!657928 () Bool)

(declare-fun d!1302218 () Bool)

(assert (= bs!657928 (and d!1302218 start!424804)))

(declare-fun lambda!144716 () Int)

(assert (=> bs!657928 (= lambda!144716 lambda!144607)))

(declare-fun bs!657929 () Bool)

(assert (= bs!657929 (and d!1302218 d!1302134)))

(assert (=> bs!657929 (= lambda!144716 lambda!144624)))

(declare-fun bs!657930 () Bool)

(assert (= bs!657930 (and d!1302218 d!1302212)))

(assert (=> bs!657930 (= lambda!144716 lambda!144711)))

(declare-fun lt!1586873 () ListMap!2373)

(assert (=> d!1302218 (invariantList!719 (toList!3130 lt!1586873))))

(declare-fun e!2723851 () ListMap!2373)

(assert (=> d!1302218 (= lt!1586873 e!2723851)))

(declare-fun c!744116 () Bool)

(assert (=> d!1302218 (= c!744116 ((_ is Cons!49141) (toList!3129 lt!1586445)))))

(assert (=> d!1302218 (forall!9259 (toList!3129 lt!1586445) lambda!144716)))

(assert (=> d!1302218 (= (extractMap!632 (toList!3129 lt!1586445)) lt!1586873)))

(declare-fun b!4376022 () Bool)

(assert (=> b!4376022 (= e!2723851 (addToMapMapFromBucket!254 (_2!27626 (h!54734 (toList!3129 lt!1586445))) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))))))

(declare-fun b!4376023 () Bool)

(assert (=> b!4376023 (= e!2723851 (ListMap!2374 Nil!49140))))

(assert (= (and d!1302218 c!744116) b!4376022))

(assert (= (and d!1302218 (not c!744116)) b!4376023))

(declare-fun m!5009447 () Bool)

(assert (=> d!1302218 m!5009447))

(declare-fun m!5009449 () Bool)

(assert (=> d!1302218 m!5009449))

(declare-fun m!5009451 () Bool)

(assert (=> b!4376022 m!5009451))

(assert (=> b!4376022 m!5009451))

(declare-fun m!5009453 () Bool)

(assert (=> b!4376022 m!5009453))

(assert (=> b!4375748 d!1302218))

(declare-fun bs!657931 () Bool)

(declare-fun d!1302220 () Bool)

(assert (= bs!657931 (and d!1302220 b!4376000)))

(declare-fun lambda!144717 () Int)

(assert (=> bs!657931 (not (= lambda!144717 lambda!144703))))

(declare-fun bs!657932 () Bool)

(assert (= bs!657932 (and d!1302220 d!1302208)))

(assert (=> bs!657932 (not (= lambda!144717 lambda!144710))))

(declare-fun bs!657933 () Bool)

(assert (= bs!657933 (and d!1302220 b!4376001)))

(assert (=> bs!657933 (not (= lambda!144717 lambda!144704))))

(assert (=> bs!657933 (not (= lambda!144717 lambda!144705))))

(declare-fun bs!657934 () Bool)

(assert (= bs!657934 (and d!1302220 b!4376019)))

(assert (=> bs!657934 (not (= lambda!144717 lambda!144713))))

(declare-fun bs!657935 () Bool)

(assert (= bs!657935 (and d!1302220 d!1302202)))

(assert (=> bs!657935 (not (= lambda!144717 lambda!144706))))

(declare-fun bs!657936 () Bool)

(assert (= bs!657936 (and d!1302220 d!1302214)))

(assert (=> bs!657936 (not (= lambda!144717 lambda!144715))))

(assert (=> bs!657934 (not (= lambda!144717 lambda!144714))))

(declare-fun bs!657937 () Bool)

(assert (= bs!657937 (and d!1302220 b!4376006)))

(assert (=> bs!657937 (not (= lambda!144717 lambda!144709))))

(declare-fun bs!657938 () Bool)

(assert (= bs!657938 (and d!1302220 b!4375992)))

(assert (=> bs!657938 (not (= lambda!144717 lambda!144700))))

(assert (=> bs!657938 (not (= lambda!144717 lambda!144701))))

(declare-fun bs!657939 () Bool)

(assert (= bs!657939 (and d!1302220 d!1302152)))

(assert (=> bs!657939 (not (= lambda!144717 lambda!144702))))

(declare-fun bs!657940 () Bool)

(assert (= bs!657940 (and d!1302220 d!1302118)))

(assert (=> bs!657940 (= lambda!144717 lambda!144613)))

(declare-fun bs!657941 () Bool)

(assert (= bs!657941 (and d!1302220 b!4376005)))

(assert (=> bs!657941 (not (= lambda!144717 lambda!144707))))

(declare-fun bs!657942 () Bool)

(assert (= bs!657942 (and d!1302220 b!4376018)))

(assert (=> bs!657942 (not (= lambda!144717 lambda!144712))))

(assert (=> bs!657937 (not (= lambda!144717 lambda!144708))))

(declare-fun bs!657943 () Bool)

(assert (= bs!657943 (and d!1302220 b!4375991)))

(assert (=> bs!657943 (not (= lambda!144717 lambda!144699))))

(assert (=> d!1302220 true))

(assert (=> d!1302220 true))

(assert (=> d!1302220 (= (allKeysSameHash!531 newBucket!200 hash!377 hashF!1247) (forall!9261 newBucket!200 lambda!144717))))

(declare-fun bs!657944 () Bool)

(assert (= bs!657944 d!1302220))

(declare-fun m!5009455 () Bool)

(assert (=> bs!657944 m!5009455))

(assert (=> b!4375758 d!1302220))

(declare-fun d!1302222 () Bool)

(declare-fun res!1801727 () Bool)

(declare-fun e!2723856 () Bool)

(assert (=> d!1302222 (=> res!1801727 e!2723856)))

(assert (=> d!1302222 (= res!1801727 (not ((_ is Cons!49140) newBucket!200)))))

(assert (=> d!1302222 (= (noDuplicateKeys!573 newBucket!200) e!2723856)))

(declare-fun b!4376028 () Bool)

(declare-fun e!2723857 () Bool)

(assert (=> b!4376028 (= e!2723856 e!2723857)))

(declare-fun res!1801728 () Bool)

(assert (=> b!4376028 (=> (not res!1801728) (not e!2723857))))

(assert (=> b!4376028 (= res!1801728 (not (containsKey!835 (t!356190 newBucket!200) (_1!27625 (h!54733 newBucket!200)))))))

(declare-fun b!4376029 () Bool)

(assert (=> b!4376029 (= e!2723857 (noDuplicateKeys!573 (t!356190 newBucket!200)))))

(assert (= (and d!1302222 (not res!1801727)) b!4376028))

(assert (= (and b!4376028 res!1801728) b!4376029))

(declare-fun m!5009457 () Bool)

(assert (=> b!4376028 m!5009457))

(declare-fun m!5009459 () Bool)

(assert (=> b!4376029 m!5009459))

(assert (=> b!4375760 d!1302222))

(declare-fun b!4376048 () Bool)

(declare-fun e!2723874 () Unit!74656)

(declare-fun Unit!74750 () Unit!74656)

(assert (=> b!4376048 (= e!2723874 Unit!74750)))

(declare-fun b!4376049 () Bool)

(declare-fun e!2723872 () Unit!74656)

(declare-fun lt!1586895 () Unit!74656)

(assert (=> b!4376049 (= e!2723872 lt!1586895)))

(declare-fun lt!1586897 () Unit!74656)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!449 (List!49264 K!10500) Unit!74656)

(assert (=> b!4376049 (= lt!1586897 (lemmaContainsKeyImpliesGetValueByKeyDefined!449 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918))))

(declare-fun isDefined!7846 (Option!10552) Bool)

(assert (=> b!4376049 (isDefined!7846 (getValueByKey!538 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918))))

(declare-fun lt!1586890 () Unit!74656)

(assert (=> b!4376049 (= lt!1586890 lt!1586897)))

(declare-fun lemmaInListThenGetKeysListContains!164 (List!49264 K!10500) Unit!74656)

(assert (=> b!4376049 (= lt!1586895 (lemmaInListThenGetKeysListContains!164 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918))))

(declare-fun call!304265 () Bool)

(assert (=> b!4376049 call!304265))

(declare-fun b!4376050 () Bool)

(declare-fun e!2723873 () Bool)

(declare-datatypes ((List!49267 0))(
  ( (Nil!49143) (Cons!49143 (h!54738 K!10500) (t!356193 List!49267)) )
))
(declare-fun contains!11467 (List!49267 K!10500) Bool)

(declare-fun keys!16659 (ListMap!2373) List!49267)

(assert (=> b!4376050 (= e!2723873 (not (contains!11467 (keys!16659 (extractMap!632 (toList!3129 lm!1707))) key!3918)))))

(declare-fun bm!304260 () Bool)

(declare-fun e!2723871 () List!49267)

(assert (=> bm!304260 (= call!304265 (contains!11467 e!2723871 key!3918))))

(declare-fun c!744125 () Bool)

(declare-fun c!744124 () Bool)

(assert (=> bm!304260 (= c!744125 c!744124)))

(declare-fun b!4376051 () Bool)

(declare-fun getKeysList!167 (List!49264) List!49267)

(assert (=> b!4376051 (= e!2723871 (getKeysList!167 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))))))

(declare-fun b!4376052 () Bool)

(assert (=> b!4376052 (= e!2723872 e!2723874)))

(declare-fun c!744123 () Bool)

(assert (=> b!4376052 (= c!744123 call!304265)))

(declare-fun b!4376053 () Bool)

(assert (=> b!4376053 (= e!2723871 (keys!16659 (extractMap!632 (toList!3129 lm!1707))))))

(declare-fun d!1302224 () Bool)

(declare-fun e!2723870 () Bool)

(assert (=> d!1302224 e!2723870))

(declare-fun res!1801735 () Bool)

(assert (=> d!1302224 (=> res!1801735 e!2723870)))

(assert (=> d!1302224 (= res!1801735 e!2723873)))

(declare-fun res!1801736 () Bool)

(assert (=> d!1302224 (=> (not res!1801736) (not e!2723873))))

(declare-fun lt!1586894 () Bool)

(assert (=> d!1302224 (= res!1801736 (not lt!1586894))))

(declare-fun lt!1586891 () Bool)

(assert (=> d!1302224 (= lt!1586894 lt!1586891)))

(declare-fun lt!1586893 () Unit!74656)

(assert (=> d!1302224 (= lt!1586893 e!2723872)))

(assert (=> d!1302224 (= c!744124 lt!1586891)))

(declare-fun containsKey!839 (List!49264 K!10500) Bool)

(assert (=> d!1302224 (= lt!1586891 (containsKey!839 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918))))

(assert (=> d!1302224 (= (contains!11461 (extractMap!632 (toList!3129 lm!1707)) key!3918) lt!1586894)))

(declare-fun b!4376054 () Bool)

(declare-fun e!2723875 () Bool)

(assert (=> b!4376054 (= e!2723875 (contains!11467 (keys!16659 (extractMap!632 (toList!3129 lm!1707))) key!3918))))

(declare-fun b!4376055 () Bool)

(assert (=> b!4376055 false))

(declare-fun lt!1586896 () Unit!74656)

(declare-fun lt!1586892 () Unit!74656)

(assert (=> b!4376055 (= lt!1586896 lt!1586892)))

(assert (=> b!4376055 (containsKey!839 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!165 (List!49264 K!10500) Unit!74656)

(assert (=> b!4376055 (= lt!1586892 (lemmaInGetKeysListThenContainsKey!165 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918))))

(declare-fun Unit!74751 () Unit!74656)

(assert (=> b!4376055 (= e!2723874 Unit!74751)))

(declare-fun b!4376056 () Bool)

(assert (=> b!4376056 (= e!2723870 e!2723875)))

(declare-fun res!1801737 () Bool)

(assert (=> b!4376056 (=> (not res!1801737) (not e!2723875))))

(assert (=> b!4376056 (= res!1801737 (isDefined!7846 (getValueByKey!538 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918)))))

(assert (= (and d!1302224 c!744124) b!4376049))

(assert (= (and d!1302224 (not c!744124)) b!4376052))

(assert (= (and b!4376052 c!744123) b!4376055))

(assert (= (and b!4376052 (not c!744123)) b!4376048))

(assert (= (or b!4376049 b!4376052) bm!304260))

(assert (= (and bm!304260 c!744125) b!4376051))

(assert (= (and bm!304260 (not c!744125)) b!4376053))

(assert (= (and d!1302224 res!1801736) b!4376050))

(assert (= (and d!1302224 (not res!1801735)) b!4376056))

(assert (= (and b!4376056 res!1801737) b!4376054))

(declare-fun m!5009461 () Bool)

(assert (=> b!4376049 m!5009461))

(declare-fun m!5009463 () Bool)

(assert (=> b!4376049 m!5009463))

(assert (=> b!4376049 m!5009463))

(declare-fun m!5009465 () Bool)

(assert (=> b!4376049 m!5009465))

(declare-fun m!5009467 () Bool)

(assert (=> b!4376049 m!5009467))

(declare-fun m!5009469 () Bool)

(assert (=> bm!304260 m!5009469))

(assert (=> b!4376056 m!5009463))

(assert (=> b!4376056 m!5009463))

(assert (=> b!4376056 m!5009465))

(assert (=> b!4376053 m!5008869))

(declare-fun m!5009471 () Bool)

(assert (=> b!4376053 m!5009471))

(assert (=> b!4376054 m!5008869))

(assert (=> b!4376054 m!5009471))

(assert (=> b!4376054 m!5009471))

(declare-fun m!5009473 () Bool)

(assert (=> b!4376054 m!5009473))

(declare-fun m!5009475 () Bool)

(assert (=> d!1302224 m!5009475))

(declare-fun m!5009477 () Bool)

(assert (=> b!4376051 m!5009477))

(assert (=> b!4376055 m!5009475))

(declare-fun m!5009479 () Bool)

(assert (=> b!4376055 m!5009479))

(assert (=> b!4376050 m!5008869))

(assert (=> b!4376050 m!5009471))

(assert (=> b!4376050 m!5009471))

(assert (=> b!4376050 m!5009473))

(assert (=> b!4375749 d!1302224))

(declare-fun bs!657945 () Bool)

(declare-fun d!1302226 () Bool)

(assert (= bs!657945 (and d!1302226 start!424804)))

(declare-fun lambda!144718 () Int)

(assert (=> bs!657945 (= lambda!144718 lambda!144607)))

(declare-fun bs!657946 () Bool)

(assert (= bs!657946 (and d!1302226 d!1302134)))

(assert (=> bs!657946 (= lambda!144718 lambda!144624)))

(declare-fun bs!657947 () Bool)

(assert (= bs!657947 (and d!1302226 d!1302212)))

(assert (=> bs!657947 (= lambda!144718 lambda!144711)))

(declare-fun bs!657948 () Bool)

(assert (= bs!657948 (and d!1302226 d!1302218)))

(assert (=> bs!657948 (= lambda!144718 lambda!144716)))

(declare-fun lt!1586898 () ListMap!2373)

(assert (=> d!1302226 (invariantList!719 (toList!3130 lt!1586898))))

(declare-fun e!2723876 () ListMap!2373)

(assert (=> d!1302226 (= lt!1586898 e!2723876)))

(declare-fun c!744126 () Bool)

(assert (=> d!1302226 (= c!744126 ((_ is Cons!49141) (toList!3129 lm!1707)))))

(assert (=> d!1302226 (forall!9259 (toList!3129 lm!1707) lambda!144718)))

(assert (=> d!1302226 (= (extractMap!632 (toList!3129 lm!1707)) lt!1586898)))

(declare-fun b!4376057 () Bool)

(assert (=> b!4376057 (= e!2723876 (addToMapMapFromBucket!254 (_2!27626 (h!54734 (toList!3129 lm!1707))) (extractMap!632 (t!356191 (toList!3129 lm!1707)))))))

(declare-fun b!4376058 () Bool)

(assert (=> b!4376058 (= e!2723876 (ListMap!2374 Nil!49140))))

(assert (= (and d!1302226 c!744126) b!4376057))

(assert (= (and d!1302226 (not c!744126)) b!4376058))

(declare-fun m!5009481 () Bool)

(assert (=> d!1302226 m!5009481))

(declare-fun m!5009483 () Bool)

(assert (=> d!1302226 m!5009483))

(assert (=> b!4376057 m!5008839))

(assert (=> b!4376057 m!5008839))

(declare-fun m!5009485 () Bool)

(assert (=> b!4376057 m!5009485))

(assert (=> b!4375749 d!1302226))

(declare-fun bs!657949 () Bool)

(declare-fun d!1302228 () Bool)

(assert (= bs!657949 (and d!1302228 d!1302212)))

(declare-fun lambda!144721 () Int)

(assert (=> bs!657949 (not (= lambda!144721 lambda!144711))))

(declare-fun bs!657950 () Bool)

(assert (= bs!657950 (and d!1302228 d!1302226)))

(assert (=> bs!657950 (not (= lambda!144721 lambda!144718))))

(declare-fun bs!657951 () Bool)

(assert (= bs!657951 (and d!1302228 start!424804)))

(assert (=> bs!657951 (not (= lambda!144721 lambda!144607))))

(declare-fun bs!657952 () Bool)

(assert (= bs!657952 (and d!1302228 d!1302218)))

(assert (=> bs!657952 (not (= lambda!144721 lambda!144716))))

(declare-fun bs!657953 () Bool)

(assert (= bs!657953 (and d!1302228 d!1302134)))

(assert (=> bs!657953 (not (= lambda!144721 lambda!144624))))

(assert (=> d!1302228 true))

(assert (=> d!1302228 (= (allKeysSameHashInMap!677 lm!1707 hashF!1247) (forall!9259 (toList!3129 lm!1707) lambda!144721))))

(declare-fun bs!657954 () Bool)

(assert (= bs!657954 d!1302228))

(declare-fun m!5009487 () Bool)

(assert (=> bs!657954 m!5009487))

(assert (=> b!4375759 d!1302228))

(declare-fun b!4376065 () Bool)

(declare-fun e!2723879 () Bool)

(declare-fun tp!1331114 () Bool)

(declare-fun tp!1331115 () Bool)

(assert (=> b!4376065 (= e!2723879 (and tp!1331114 tp!1331115))))

(assert (=> b!4375753 (= tp!1331100 e!2723879)))

(assert (= (and b!4375753 ((_ is Cons!49141) (toList!3129 lm!1707))) b!4376065))

(declare-fun e!2723882 () Bool)

(declare-fun tp!1331118 () Bool)

(declare-fun b!4376070 () Bool)

(assert (=> b!4376070 (= e!2723882 (and tp_is_empty!25529 tp_is_empty!25531 tp!1331118))))

(assert (=> b!4375747 (= tp!1331099 e!2723882)))

(assert (= (and b!4375747 ((_ is Cons!49140) (t!356190 newBucket!200))) b!4376070))

(declare-fun b_lambda!134521 () Bool)

(assert (= b_lambda!134499 (or start!424804 b_lambda!134521)))

(declare-fun bs!657955 () Bool)

(declare-fun d!1302230 () Bool)

(assert (= bs!657955 (and d!1302230 start!424804)))

(assert (=> bs!657955 (= (dynLambda!20703 lambda!144607 (h!54734 (toList!3129 lm!1707))) (noDuplicateKeys!573 (_2!27626 (h!54734 (toList!3129 lm!1707)))))))

(declare-fun m!5009489 () Bool)

(assert (=> bs!657955 m!5009489))

(assert (=> b!4375801 d!1302230))

(declare-fun b_lambda!134523 () Bool)

(assert (= b_lambda!134505 (or start!424804 b_lambda!134523)))

(declare-fun bs!657956 () Bool)

(declare-fun d!1302232 () Bool)

(assert (= bs!657956 (and d!1302232 start!424804)))

(assert (=> bs!657956 (= (dynLambda!20703 lambda!144607 (tuple2!48665 hash!377 newBucket!200)) (noDuplicateKeys!573 (_2!27626 (tuple2!48665 hash!377 newBucket!200))))))

(declare-fun m!5009491 () Bool)

(assert (=> bs!657956 m!5009491))

(assert (=> b!4375870 d!1302232))

(declare-fun b_lambda!134525 () Bool)

(assert (= b_lambda!134503 (or start!424804 b_lambda!134525)))

(declare-fun bs!657957 () Bool)

(declare-fun d!1302234 () Bool)

(assert (= bs!657957 (and d!1302234 start!424804)))

(assert (=> bs!657957 (= (dynLambda!20703 lambda!144607 (h!54734 (toList!3129 lt!1586445))) (noDuplicateKeys!573 (_2!27626 (h!54734 (toList!3129 lt!1586445)))))))

(declare-fun m!5009493 () Bool)

(assert (=> bs!657957 m!5009493))

(assert (=> b!4375831 d!1302234))

(declare-fun b_lambda!134527 () Bool)

(assert (= b_lambda!134501 (or start!424804 b_lambda!134527)))

(declare-fun bs!657958 () Bool)

(declare-fun d!1302236 () Bool)

(assert (= bs!657958 (and d!1302236 start!424804)))

(assert (=> bs!657958 (= (dynLambda!20703 lambda!144607 lt!1586444) (noDuplicateKeys!573 (_2!27626 lt!1586444)))))

(declare-fun m!5009495 () Bool)

(assert (=> bs!657958 m!5009495))

(assert (=> d!1302130 d!1302236))

(check-sat (not b!4375998) (not b!4376017) (not d!1302220) (not d!1302202) (not d!1302140) (not b!4376056) (not b!4375830) (not b!4376022) (not b!4376016) (not d!1302124) (not b!4375841) (not bm!304250) (not b!4375860) (not b_lambda!134521) (not b!4376053) (not b!4375997) (not bm!304252) (not d!1302144) (not b!4376003) (not b!4376049) (not d!1302152) (not bm!304257) (not bm!304246) (not d!1302200) (not d!1302130) (not b!4375995) (not b!4376004) (not b!4376012) (not bm!304260) (not d!1302214) (not b!4376001) (not b!4376055) (not d!1302120) (not b!4376029) (not d!1302228) (not b!4375990) (not d!1302122) (not d!1302224) (not d!1302216) (not b!4375996) (not b!4375999) (not d!1302116) (not d!1302136) (not b!4375832) (not d!1302148) (not b!4375883) (not b!4376006) (not d!1302226) (not b!4375989) (not d!1302218) (not b!4376051) tp_is_empty!25531 (not bm!304249) (not bm!304247) (not d!1302128) (not d!1302212) (not b!4376057) (not b!4375881) (not d!1302208) (not bm!304248) (not b!4376011) (not b!4376028) (not bs!657955) (not bs!657956) (not b_lambda!134525) (not b!4376020) (not b!4375802) (not b_lambda!134527) (not d!1302118) (not b!4376050) (not d!1302198) (not b!4375988) (not b!4375827) (not b!4375809) tp_is_empty!25529 (not d!1302210) (not bm!304255) (not b!4375992) (not bs!657957) (not bs!657958) (not b!4375820) (not bm!304256) (not b!4376015) (not b!4376070) (not bm!304251) (not b_lambda!134523) (not b!4376013) (not bm!304253) (not b!4376021) (not d!1302126) (not d!1302206) (not bm!304254) (not b!4376054) (not b!4376002) (not d!1302134) (not b!4376065) (not b!4376019) (not b!4375861))
(check-sat)
(get-model)

(declare-fun d!1302278 () Bool)

(declare-fun res!1801770 () Bool)

(declare-fun e!2723931 () Bool)

(assert (=> d!1302278 (=> res!1801770 e!2723931)))

(assert (=> d!1302278 (= res!1801770 ((_ is Nil!49141) (t!356191 (toList!3129 lm!1707))))))

(assert (=> d!1302278 (= (forall!9259 (t!356191 (toList!3129 lm!1707)) lambda!144607) e!2723931)))

(declare-fun b!4376139 () Bool)

(declare-fun e!2723932 () Bool)

(assert (=> b!4376139 (= e!2723931 e!2723932)))

(declare-fun res!1801771 () Bool)

(assert (=> b!4376139 (=> (not res!1801771) (not e!2723932))))

(assert (=> b!4376139 (= res!1801771 (dynLambda!20703 lambda!144607 (h!54734 (t!356191 (toList!3129 lm!1707)))))))

(declare-fun b!4376140 () Bool)

(assert (=> b!4376140 (= e!2723932 (forall!9259 (t!356191 (t!356191 (toList!3129 lm!1707))) lambda!144607))))

(assert (= (and d!1302278 (not res!1801770)) b!4376139))

(assert (= (and b!4376139 res!1801771) b!4376140))

(declare-fun b_lambda!134539 () Bool)

(assert (=> (not b_lambda!134539) (not b!4376139)))

(declare-fun m!5009599 () Bool)

(assert (=> b!4376139 m!5009599))

(declare-fun m!5009601 () Bool)

(assert (=> b!4376140 m!5009601))

(assert (=> b!4375802 d!1302278))

(declare-fun d!1302280 () Bool)

(declare-fun lt!1586946 () Bool)

(assert (=> d!1302280 (= lt!1586946 (select (content!7802 (toList!3130 lt!1586843)) lt!1586455))))

(declare-fun e!2723937 () Bool)

(assert (=> d!1302280 (= lt!1586946 e!2723937)))

(declare-fun res!1801777 () Bool)

(assert (=> d!1302280 (=> (not res!1801777) (not e!2723937))))

(assert (=> d!1302280 (= res!1801777 ((_ is Cons!49140) (toList!3130 lt!1586843)))))

(assert (=> d!1302280 (= (contains!11466 (toList!3130 lt!1586843) lt!1586455) lt!1586946)))

(declare-fun b!4376145 () Bool)

(declare-fun e!2723938 () Bool)

(assert (=> b!4376145 (= e!2723937 e!2723938)))

(declare-fun res!1801776 () Bool)

(assert (=> b!4376145 (=> res!1801776 e!2723938)))

(assert (=> b!4376145 (= res!1801776 (= (h!54733 (toList!3130 lt!1586843)) lt!1586455))))

(declare-fun b!4376146 () Bool)

(assert (=> b!4376146 (= e!2723938 (contains!11466 (t!356190 (toList!3130 lt!1586843)) lt!1586455))))

(assert (= (and d!1302280 res!1801777) b!4376145))

(assert (= (and b!4376145 (not res!1801776)) b!4376146))

(declare-fun m!5009603 () Bool)

(assert (=> d!1302280 m!5009603))

(declare-fun m!5009605 () Bool)

(assert (=> d!1302280 m!5009605))

(declare-fun m!5009607 () Bool)

(assert (=> b!4376146 m!5009607))

(assert (=> b!4376012 d!1302280))

(declare-fun bs!658052 () Bool)

(declare-fun b!4376150 () Bool)

(assert (= bs!658052 (and b!4376150 b!4376000)))

(declare-fun lambda!144731 () Int)

(assert (=> bs!658052 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586446) (= lambda!144731 lambda!144703))))

(declare-fun bs!658054 () Bool)

(assert (= bs!658054 (and b!4376150 d!1302208)))

(assert (=> bs!658054 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586829) (= lambda!144731 lambda!144710))))

(declare-fun bs!658055 () Bool)

(assert (= bs!658055 (and b!4376150 b!4376001)))

(assert (=> bs!658055 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586446) (= lambda!144731 lambda!144704))))

(assert (=> bs!658055 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586808) (= lambda!144731 lambda!144705))))

(declare-fun bs!658056 () Bool)

(assert (= bs!658056 (and b!4376150 b!4376019)))

(assert (=> bs!658056 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586446) (= lambda!144731 lambda!144713))))

(declare-fun bs!658058 () Bool)

(assert (= bs!658058 (and b!4376150 d!1302220)))

(assert (=> bs!658058 (not (= lambda!144731 lambda!144717))))

(declare-fun bs!658060 () Bool)

(assert (= bs!658060 (and b!4376150 d!1302202)))

(assert (=> bs!658060 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586805) (= lambda!144731 lambda!144706))))

(declare-fun bs!658061 () Bool)

(assert (= bs!658061 (and b!4376150 d!1302214)))

(assert (=> bs!658061 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586863) (= lambda!144731 lambda!144715))))

(assert (=> bs!658056 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586866) (= lambda!144731 lambda!144714))))

(declare-fun bs!658063 () Bool)

(assert (= bs!658063 (and b!4376150 b!4376006)))

(assert (=> bs!658063 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586832) (= lambda!144731 lambda!144709))))

(declare-fun bs!658065 () Bool)

(assert (= bs!658065 (and b!4376150 b!4375992)))

(assert (=> bs!658065 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586446) (= lambda!144731 lambda!144700))))

(assert (=> bs!658065 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586783) (= lambda!144731 lambda!144701))))

(declare-fun bs!658067 () Bool)

(assert (= bs!658067 (and b!4376150 d!1302152)))

(assert (=> bs!658067 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586780) (= lambda!144731 lambda!144702))))

(declare-fun bs!658068 () Bool)

(assert (= bs!658068 (and b!4376150 d!1302118)))

(assert (=> bs!658068 (not (= lambda!144731 lambda!144613))))

(declare-fun bs!658070 () Bool)

(assert (= bs!658070 (and b!4376150 b!4376005)))

(assert (=> bs!658070 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) (+!778 lt!1586446 lt!1586455)) (= lambda!144731 lambda!144707))))

(declare-fun bs!658071 () Bool)

(assert (= bs!658071 (and b!4376150 b!4376018)))

(assert (=> bs!658071 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586446) (= lambda!144731 lambda!144712))))

(assert (=> bs!658063 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) (+!778 lt!1586446 lt!1586455)) (= lambda!144731 lambda!144708))))

(declare-fun bs!658073 () Bool)

(assert (= bs!658073 (and b!4376150 b!4375991)))

(assert (=> bs!658073 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586446) (= lambda!144731 lambda!144699))))

(assert (=> b!4376150 true))

(declare-fun bs!658076 () Bool)

(declare-fun b!4376151 () Bool)

(assert (= bs!658076 (and b!4376151 b!4376000)))

(declare-fun lambda!144732 () Int)

(assert (=> bs!658076 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586446) (= lambda!144732 lambda!144703))))

(declare-fun bs!658078 () Bool)

(assert (= bs!658078 (and b!4376151 d!1302208)))

(assert (=> bs!658078 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586829) (= lambda!144732 lambda!144710))))

(declare-fun bs!658079 () Bool)

(assert (= bs!658079 (and b!4376151 b!4376001)))

(assert (=> bs!658079 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586446) (= lambda!144732 lambda!144704))))

(assert (=> bs!658079 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586808) (= lambda!144732 lambda!144705))))

(declare-fun bs!658080 () Bool)

(assert (= bs!658080 (and b!4376151 b!4376019)))

(assert (=> bs!658080 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586446) (= lambda!144732 lambda!144713))))

(declare-fun bs!658081 () Bool)

(assert (= bs!658081 (and b!4376151 d!1302220)))

(assert (=> bs!658081 (not (= lambda!144732 lambda!144717))))

(declare-fun bs!658082 () Bool)

(assert (= bs!658082 (and b!4376151 d!1302202)))

(assert (=> bs!658082 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586805) (= lambda!144732 lambda!144706))))

(declare-fun bs!658084 () Bool)

(assert (= bs!658084 (and b!4376151 d!1302214)))

(assert (=> bs!658084 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586863) (= lambda!144732 lambda!144715))))

(assert (=> bs!658080 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586866) (= lambda!144732 lambda!144714))))

(declare-fun bs!658085 () Bool)

(assert (= bs!658085 (and b!4376151 b!4375992)))

(assert (=> bs!658085 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586446) (= lambda!144732 lambda!144700))))

(assert (=> bs!658085 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586783) (= lambda!144732 lambda!144701))))

(declare-fun bs!658087 () Bool)

(assert (= bs!658087 (and b!4376151 d!1302152)))

(assert (=> bs!658087 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586780) (= lambda!144732 lambda!144702))))

(declare-fun bs!658089 () Bool)

(assert (= bs!658089 (and b!4376151 d!1302118)))

(assert (=> bs!658089 (not (= lambda!144732 lambda!144613))))

(declare-fun bs!658090 () Bool)

(assert (= bs!658090 (and b!4376151 b!4376005)))

(assert (=> bs!658090 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) (+!778 lt!1586446 lt!1586455)) (= lambda!144732 lambda!144707))))

(declare-fun bs!658092 () Bool)

(assert (= bs!658092 (and b!4376151 b!4376018)))

(assert (=> bs!658092 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586446) (= lambda!144732 lambda!144712))))

(declare-fun bs!658093 () Bool)

(assert (= bs!658093 (and b!4376151 b!4376006)))

(assert (=> bs!658093 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) (+!778 lt!1586446 lt!1586455)) (= lambda!144732 lambda!144708))))

(declare-fun bs!658094 () Bool)

(assert (= bs!658094 (and b!4376151 b!4375991)))

(assert (=> bs!658094 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586446) (= lambda!144732 lambda!144699))))

(assert (=> bs!658093 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586832) (= lambda!144732 lambda!144709))))

(declare-fun bs!658095 () Bool)

(assert (= bs!658095 (and b!4376151 b!4376150)))

(assert (=> bs!658095 (= lambda!144732 lambda!144731)))

(assert (=> b!4376151 true))

(declare-fun lt!1586965 () ListMap!2373)

(declare-fun lambda!144733 () Int)

(assert (=> bs!658076 (= (= lt!1586965 lt!1586446) (= lambda!144733 lambda!144703))))

(assert (=> bs!658078 (= (= lt!1586965 lt!1586829) (= lambda!144733 lambda!144710))))

(assert (=> bs!658079 (= (= lt!1586965 lt!1586446) (= lambda!144733 lambda!144704))))

(assert (=> bs!658079 (= (= lt!1586965 lt!1586808) (= lambda!144733 lambda!144705))))

(assert (=> bs!658080 (= (= lt!1586965 lt!1586446) (= lambda!144733 lambda!144713))))

(assert (=> b!4376151 (= (= lt!1586965 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144733 lambda!144732))))

(assert (=> bs!658081 (not (= lambda!144733 lambda!144717))))

(assert (=> bs!658082 (= (= lt!1586965 lt!1586805) (= lambda!144733 lambda!144706))))

(assert (=> bs!658084 (= (= lt!1586965 lt!1586863) (= lambda!144733 lambda!144715))))

(assert (=> bs!658080 (= (= lt!1586965 lt!1586866) (= lambda!144733 lambda!144714))))

(assert (=> bs!658085 (= (= lt!1586965 lt!1586446) (= lambda!144733 lambda!144700))))

(assert (=> bs!658085 (= (= lt!1586965 lt!1586783) (= lambda!144733 lambda!144701))))

(assert (=> bs!658087 (= (= lt!1586965 lt!1586780) (= lambda!144733 lambda!144702))))

(assert (=> bs!658089 (not (= lambda!144733 lambda!144613))))

(assert (=> bs!658090 (= (= lt!1586965 (+!778 lt!1586446 lt!1586455)) (= lambda!144733 lambda!144707))))

(assert (=> bs!658092 (= (= lt!1586965 lt!1586446) (= lambda!144733 lambda!144712))))

(assert (=> bs!658093 (= (= lt!1586965 (+!778 lt!1586446 lt!1586455)) (= lambda!144733 lambda!144708))))

(assert (=> bs!658094 (= (= lt!1586965 lt!1586446) (= lambda!144733 lambda!144699))))

(assert (=> bs!658093 (= (= lt!1586965 lt!1586832) (= lambda!144733 lambda!144709))))

(assert (=> bs!658095 (= (= lt!1586965 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144733 lambda!144731))))

(assert (=> b!4376151 true))

(declare-fun bs!658096 () Bool)

(declare-fun d!1302282 () Bool)

(assert (= bs!658096 (and d!1302282 b!4376000)))

(declare-fun lt!1586962 () ListMap!2373)

(declare-fun lambda!144734 () Int)

(assert (=> bs!658096 (= (= lt!1586962 lt!1586446) (= lambda!144734 lambda!144703))))

(declare-fun bs!658097 () Bool)

(assert (= bs!658097 (and d!1302282 d!1302208)))

(assert (=> bs!658097 (= (= lt!1586962 lt!1586829) (= lambda!144734 lambda!144710))))

(declare-fun bs!658098 () Bool)

(assert (= bs!658098 (and d!1302282 b!4376001)))

(assert (=> bs!658098 (= (= lt!1586962 lt!1586446) (= lambda!144734 lambda!144704))))

(assert (=> bs!658098 (= (= lt!1586962 lt!1586808) (= lambda!144734 lambda!144705))))

(declare-fun bs!658099 () Bool)

(assert (= bs!658099 (and d!1302282 b!4376019)))

(assert (=> bs!658099 (= (= lt!1586962 lt!1586446) (= lambda!144734 lambda!144713))))

(declare-fun bs!658100 () Bool)

(assert (= bs!658100 (and d!1302282 d!1302220)))

(assert (=> bs!658100 (not (= lambda!144734 lambda!144717))))

(declare-fun bs!658101 () Bool)

(assert (= bs!658101 (and d!1302282 d!1302202)))

(assert (=> bs!658101 (= (= lt!1586962 lt!1586805) (= lambda!144734 lambda!144706))))

(declare-fun bs!658102 () Bool)

(assert (= bs!658102 (and d!1302282 d!1302214)))

(assert (=> bs!658102 (= (= lt!1586962 lt!1586863) (= lambda!144734 lambda!144715))))

(assert (=> bs!658099 (= (= lt!1586962 lt!1586866) (= lambda!144734 lambda!144714))))

(declare-fun bs!658103 () Bool)

(assert (= bs!658103 (and d!1302282 b!4375992)))

(assert (=> bs!658103 (= (= lt!1586962 lt!1586446) (= lambda!144734 lambda!144700))))

(declare-fun bs!658104 () Bool)

(assert (= bs!658104 (and d!1302282 b!4376151)))

(assert (=> bs!658104 (= (= lt!1586962 lt!1586965) (= lambda!144734 lambda!144733))))

(assert (=> bs!658104 (= (= lt!1586962 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144734 lambda!144732))))

(assert (=> bs!658103 (= (= lt!1586962 lt!1586783) (= lambda!144734 lambda!144701))))

(declare-fun bs!658105 () Bool)

(assert (= bs!658105 (and d!1302282 d!1302152)))

(assert (=> bs!658105 (= (= lt!1586962 lt!1586780) (= lambda!144734 lambda!144702))))

(declare-fun bs!658106 () Bool)

(assert (= bs!658106 (and d!1302282 d!1302118)))

(assert (=> bs!658106 (not (= lambda!144734 lambda!144613))))

(declare-fun bs!658107 () Bool)

(assert (= bs!658107 (and d!1302282 b!4376005)))

(assert (=> bs!658107 (= (= lt!1586962 (+!778 lt!1586446 lt!1586455)) (= lambda!144734 lambda!144707))))

(declare-fun bs!658108 () Bool)

(assert (= bs!658108 (and d!1302282 b!4376018)))

(assert (=> bs!658108 (= (= lt!1586962 lt!1586446) (= lambda!144734 lambda!144712))))

(declare-fun bs!658109 () Bool)

(assert (= bs!658109 (and d!1302282 b!4376006)))

(assert (=> bs!658109 (= (= lt!1586962 (+!778 lt!1586446 lt!1586455)) (= lambda!144734 lambda!144708))))

(declare-fun bs!658110 () Bool)

(assert (= bs!658110 (and d!1302282 b!4375991)))

(assert (=> bs!658110 (= (= lt!1586962 lt!1586446) (= lambda!144734 lambda!144699))))

(assert (=> bs!658109 (= (= lt!1586962 lt!1586832) (= lambda!144734 lambda!144709))))

(declare-fun bs!658111 () Bool)

(assert (= bs!658111 (and d!1302282 b!4376150)))

(assert (=> bs!658111 (= (= lt!1586962 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144734 lambda!144731))))

(assert (=> d!1302282 true))

(declare-fun call!304273 () Bool)

(declare-fun bm!304267 () Bool)

(declare-fun c!744145 () Bool)

(assert (=> bm!304267 (= call!304273 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (ite c!744145 lambda!144731 lambda!144732)))))

(declare-fun b!4376147 () Bool)

(declare-fun e!2723940 () Bool)

(assert (=> b!4376147 (= e!2723940 (invariantList!719 (toList!3130 lt!1586962)))))

(declare-fun b!4376148 () Bool)

(declare-fun res!1801779 () Bool)

(assert (=> b!4376148 (=> (not res!1801779) (not e!2723940))))

(assert (=> b!4376148 (= res!1801779 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) lambda!144734))))

(assert (=> d!1302282 e!2723940))

(declare-fun res!1801780 () Bool)

(assert (=> d!1302282 (=> (not res!1801780) (not e!2723940))))

(assert (=> d!1302282 (= res!1801780 (forall!9261 (_2!27626 (h!54734 (toList!3129 lt!1586459))) lambda!144734))))

(declare-fun e!2723939 () ListMap!2373)

(assert (=> d!1302282 (= lt!1586962 e!2723939)))

(assert (=> d!1302282 (= c!744145 ((_ is Nil!49140) (_2!27626 (h!54734 (toList!3129 lt!1586459)))))))

(assert (=> d!1302282 (noDuplicateKeys!573 (_2!27626 (h!54734 (toList!3129 lt!1586459))))))

(assert (=> d!1302282 (= (addToMapMapFromBucket!254 (_2!27626 (h!54734 (toList!3129 lt!1586459))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) lt!1586962)))

(declare-fun call!304274 () Bool)

(declare-fun bm!304268 () Bool)

(assert (=> bm!304268 (= call!304274 (forall!9261 (ite c!744145 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (_2!27626 (h!54734 (toList!3129 lt!1586459)))) (ite c!744145 lambda!144731 lambda!144733)))))

(declare-fun bm!304269 () Bool)

(declare-fun call!304272 () Unit!74656)

(assert (=> bm!304269 (= call!304272 (lemmaContainsAllItsOwnKeys!101 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))))))

(declare-fun b!4376149 () Bool)

(declare-fun e!2723941 () Bool)

(assert (=> b!4376149 (= e!2723941 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) lambda!144733))))

(assert (=> b!4376150 (= e!2723939 (extractMap!632 (t!356191 (toList!3129 lt!1586459))))))

(declare-fun lt!1586966 () Unit!74656)

(assert (=> b!4376150 (= lt!1586966 call!304272)))

(assert (=> b!4376150 call!304273))

(declare-fun lt!1586947 () Unit!74656)

(assert (=> b!4376150 (= lt!1586947 lt!1586966)))

(assert (=> b!4376150 call!304274))

(declare-fun lt!1586949 () Unit!74656)

(declare-fun Unit!74763 () Unit!74656)

(assert (=> b!4376150 (= lt!1586949 Unit!74763)))

(assert (=> b!4376151 (= e!2723939 lt!1586965)))

(declare-fun lt!1586955 () ListMap!2373)

(assert (=> b!4376151 (= lt!1586955 (+!778 (extractMap!632 (t!356191 (toList!3129 lt!1586459))) (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586459))))))))

(assert (=> b!4376151 (= lt!1586965 (addToMapMapFromBucket!254 (t!356190 (_2!27626 (h!54734 (toList!3129 lt!1586459)))) (+!778 (extractMap!632 (t!356191 (toList!3129 lt!1586459))) (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586459)))))))))

(declare-fun lt!1586961 () Unit!74656)

(assert (=> b!4376151 (= lt!1586961 call!304272)))

(assert (=> b!4376151 call!304273))

(declare-fun lt!1586954 () Unit!74656)

(assert (=> b!4376151 (= lt!1586954 lt!1586961)))

(assert (=> b!4376151 (forall!9261 (toList!3130 lt!1586955) lambda!144733)))

(declare-fun lt!1586964 () Unit!74656)

(declare-fun Unit!74764 () Unit!74656)

(assert (=> b!4376151 (= lt!1586964 Unit!74764)))

(assert (=> b!4376151 (forall!9261 (t!356190 (_2!27626 (h!54734 (toList!3129 lt!1586459)))) lambda!144733)))

(declare-fun lt!1586956 () Unit!74656)

(declare-fun Unit!74765 () Unit!74656)

(assert (=> b!4376151 (= lt!1586956 Unit!74765)))

(declare-fun lt!1586958 () Unit!74656)

(declare-fun Unit!74766 () Unit!74656)

(assert (=> b!4376151 (= lt!1586958 Unit!74766)))

(declare-fun lt!1586948 () Unit!74656)

(assert (=> b!4376151 (= lt!1586948 (forallContained!1899 (toList!3130 lt!1586955) lambda!144733 (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586459))))))))

(assert (=> b!4376151 (contains!11461 lt!1586955 (_1!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586459))))))))

(declare-fun lt!1586967 () Unit!74656)

(declare-fun Unit!74767 () Unit!74656)

(assert (=> b!4376151 (= lt!1586967 Unit!74767)))

(assert (=> b!4376151 (contains!11461 lt!1586965 (_1!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586459))))))))

(declare-fun lt!1586953 () Unit!74656)

(declare-fun Unit!74768 () Unit!74656)

(assert (=> b!4376151 (= lt!1586953 Unit!74768)))

(assert (=> b!4376151 (forall!9261 (_2!27626 (h!54734 (toList!3129 lt!1586459))) lambda!144733)))

(declare-fun lt!1586960 () Unit!74656)

(declare-fun Unit!74769 () Unit!74656)

(assert (=> b!4376151 (= lt!1586960 Unit!74769)))

(assert (=> b!4376151 (forall!9261 (toList!3130 lt!1586955) lambda!144733)))

(declare-fun lt!1586950 () Unit!74656)

(declare-fun Unit!74770 () Unit!74656)

(assert (=> b!4376151 (= lt!1586950 Unit!74770)))

(declare-fun lt!1586957 () Unit!74656)

(declare-fun Unit!74771 () Unit!74656)

(assert (=> b!4376151 (= lt!1586957 Unit!74771)))

(declare-fun lt!1586963 () Unit!74656)

(assert (=> b!4376151 (= lt!1586963 (addForallContainsKeyThenBeforeAdding!101 (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586965 (_1!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586459))))) (_2!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586459)))))))))

(assert (=> b!4376151 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) lambda!144733)))

(declare-fun lt!1586951 () Unit!74656)

(assert (=> b!4376151 (= lt!1586951 lt!1586963)))

(assert (=> b!4376151 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) lambda!144733)))

(declare-fun lt!1586952 () Unit!74656)

(declare-fun Unit!74772 () Unit!74656)

(assert (=> b!4376151 (= lt!1586952 Unit!74772)))

(declare-fun res!1801778 () Bool)

(assert (=> b!4376151 (= res!1801778 call!304274)))

(assert (=> b!4376151 (=> (not res!1801778) (not e!2723941))))

(assert (=> b!4376151 e!2723941))

(declare-fun lt!1586959 () Unit!74656)

(declare-fun Unit!74773 () Unit!74656)

(assert (=> b!4376151 (= lt!1586959 Unit!74773)))

(assert (= (and d!1302282 c!744145) b!4376150))

(assert (= (and d!1302282 (not c!744145)) b!4376151))

(assert (= (and b!4376151 res!1801778) b!4376149))

(assert (= (or b!4376150 b!4376151) bm!304269))

(assert (= (or b!4376150 b!4376151) bm!304267))

(assert (= (or b!4376150 b!4376151) bm!304268))

(assert (= (and d!1302282 res!1801780) b!4376148))

(assert (= (and b!4376148 res!1801779) b!4376147))

(declare-fun m!5009661 () Bool)

(assert (=> bm!304267 m!5009661))

(declare-fun m!5009663 () Bool)

(assert (=> b!4376149 m!5009663))

(declare-fun m!5009665 () Bool)

(assert (=> b!4376147 m!5009665))

(declare-fun m!5009667 () Bool)

(assert (=> b!4376148 m!5009667))

(declare-fun m!5009669 () Bool)

(assert (=> b!4376151 m!5009669))

(declare-fun m!5009671 () Bool)

(assert (=> b!4376151 m!5009671))

(declare-fun m!5009673 () Bool)

(assert (=> b!4376151 m!5009673))

(declare-fun m!5009675 () Bool)

(assert (=> b!4376151 m!5009675))

(declare-fun m!5009677 () Bool)

(assert (=> b!4376151 m!5009677))

(assert (=> b!4376151 m!5009663))

(assert (=> b!4376151 m!5009663))

(assert (=> b!4376151 m!5008953))

(declare-fun m!5009679 () Bool)

(assert (=> b!4376151 m!5009679))

(declare-fun m!5009681 () Bool)

(assert (=> b!4376151 m!5009681))

(assert (=> b!4376151 m!5009677))

(declare-fun m!5009683 () Bool)

(assert (=> b!4376151 m!5009683))

(assert (=> b!4376151 m!5008953))

(assert (=> b!4376151 m!5009673))

(declare-fun m!5009685 () Bool)

(assert (=> b!4376151 m!5009685))

(declare-fun m!5009687 () Bool)

(assert (=> d!1302282 m!5009687))

(declare-fun m!5009689 () Bool)

(assert (=> d!1302282 m!5009689))

(assert (=> bm!304269 m!5008953))

(declare-fun m!5009691 () Bool)

(assert (=> bm!304269 m!5009691))

(declare-fun m!5009693 () Bool)

(assert (=> bm!304268 m!5009693))

(assert (=> b!4375841 d!1302282))

(declare-fun bs!658112 () Bool)

(declare-fun d!1302290 () Bool)

(assert (= bs!658112 (and d!1302290 d!1302212)))

(declare-fun lambda!144735 () Int)

(assert (=> bs!658112 (= lambda!144735 lambda!144711)))

(declare-fun bs!658113 () Bool)

(assert (= bs!658113 (and d!1302290 d!1302228)))

(assert (=> bs!658113 (not (= lambda!144735 lambda!144721))))

(declare-fun bs!658114 () Bool)

(assert (= bs!658114 (and d!1302290 d!1302226)))

(assert (=> bs!658114 (= lambda!144735 lambda!144718)))

(declare-fun bs!658115 () Bool)

(assert (= bs!658115 (and d!1302290 start!424804)))

(assert (=> bs!658115 (= lambda!144735 lambda!144607)))

(declare-fun bs!658116 () Bool)

(assert (= bs!658116 (and d!1302290 d!1302218)))

(assert (=> bs!658116 (= lambda!144735 lambda!144716)))

(declare-fun bs!658117 () Bool)

(assert (= bs!658117 (and d!1302290 d!1302134)))

(assert (=> bs!658117 (= lambda!144735 lambda!144624)))

(declare-fun lt!1586976 () ListMap!2373)

(assert (=> d!1302290 (invariantList!719 (toList!3130 lt!1586976))))

(declare-fun e!2723950 () ListMap!2373)

(assert (=> d!1302290 (= lt!1586976 e!2723950)))

(declare-fun c!744151 () Bool)

(assert (=> d!1302290 (= c!744151 ((_ is Cons!49141) (t!356191 (toList!3129 lt!1586459))))))

(assert (=> d!1302290 (forall!9259 (t!356191 (toList!3129 lt!1586459)) lambda!144735)))

(assert (=> d!1302290 (= (extractMap!632 (t!356191 (toList!3129 lt!1586459))) lt!1586976)))

(declare-fun b!4376165 () Bool)

(assert (=> b!4376165 (= e!2723950 (addToMapMapFromBucket!254 (_2!27626 (h!54734 (t!356191 (toList!3129 lt!1586459)))) (extractMap!632 (t!356191 (t!356191 (toList!3129 lt!1586459))))))))

(declare-fun b!4376166 () Bool)

(assert (=> b!4376166 (= e!2723950 (ListMap!2374 Nil!49140))))

(assert (= (and d!1302290 c!744151) b!4376165))

(assert (= (and d!1302290 (not c!744151)) b!4376166))

(declare-fun m!5009695 () Bool)

(assert (=> d!1302290 m!5009695))

(declare-fun m!5009697 () Bool)

(assert (=> d!1302290 m!5009697))

(declare-fun m!5009699 () Bool)

(assert (=> b!4376165 m!5009699))

(assert (=> b!4376165 m!5009699))

(declare-fun m!5009701 () Bool)

(assert (=> b!4376165 m!5009701))

(assert (=> b!4375841 d!1302290))

(declare-fun d!1302292 () Bool)

(declare-fun res!1801794 () Bool)

(declare-fun e!2723958 () Bool)

(assert (=> d!1302292 (=> res!1801794 e!2723958)))

(assert (=> d!1302292 (= res!1801794 ((_ is Nil!49140) (toList!3130 (+!778 lt!1586446 lt!1586455))))))

(assert (=> d!1302292 (= (forall!9261 (toList!3130 (+!778 lt!1586446 lt!1586455)) lambda!144709) e!2723958)))

(declare-fun b!4376177 () Bool)

(declare-fun e!2723959 () Bool)

(assert (=> b!4376177 (= e!2723958 e!2723959)))

(declare-fun res!1801795 () Bool)

(assert (=> b!4376177 (=> (not res!1801795) (not e!2723959))))

(declare-fun dynLambda!20705 (Int tuple2!48662) Bool)

(assert (=> b!4376177 (= res!1801795 (dynLambda!20705 lambda!144709 (h!54733 (toList!3130 (+!778 lt!1586446 lt!1586455)))))))

(declare-fun b!4376178 () Bool)

(assert (=> b!4376178 (= e!2723959 (forall!9261 (t!356190 (toList!3130 (+!778 lt!1586446 lt!1586455))) lambda!144709))))

(assert (= (and d!1302292 (not res!1801794)) b!4376177))

(assert (= (and b!4376177 res!1801795) b!4376178))

(declare-fun b_lambda!134541 () Bool)

(assert (=> (not b_lambda!134541) (not b!4376177)))

(declare-fun m!5009711 () Bool)

(assert (=> b!4376177 m!5009711))

(declare-fun m!5009713 () Bool)

(assert (=> b!4376178 m!5009713))

(assert (=> b!4376004 d!1302292))

(declare-fun d!1302296 () Bool)

(declare-fun res!1801796 () Bool)

(declare-fun e!2723960 () Bool)

(assert (=> d!1302296 (=> res!1801796 e!2723960)))

(assert (=> d!1302296 (= res!1801796 ((_ is Nil!49140) (toList!3130 lt!1586446)))))

(assert (=> d!1302296 (= (forall!9261 (toList!3130 lt!1586446) lambda!144702) e!2723960)))

(declare-fun b!4376179 () Bool)

(declare-fun e!2723961 () Bool)

(assert (=> b!4376179 (= e!2723960 e!2723961)))

(declare-fun res!1801797 () Bool)

(assert (=> b!4376179 (=> (not res!1801797) (not e!2723961))))

(assert (=> b!4376179 (= res!1801797 (dynLambda!20705 lambda!144702 (h!54733 (toList!3130 lt!1586446))))))

(declare-fun b!4376180 () Bool)

(assert (=> b!4376180 (= e!2723961 (forall!9261 (t!356190 (toList!3130 lt!1586446)) lambda!144702))))

(assert (= (and d!1302296 (not res!1801796)) b!4376179))

(assert (= (and b!4376179 res!1801797) b!4376180))

(declare-fun b_lambda!134543 () Bool)

(assert (=> (not b_lambda!134543) (not b!4376179)))

(declare-fun m!5009715 () Bool)

(assert (=> b!4376179 m!5009715))

(declare-fun m!5009717 () Bool)

(assert (=> b!4376180 m!5009717))

(assert (=> b!4375989 d!1302296))

(declare-fun d!1302298 () Bool)

(declare-fun noDuplicatedKeys!134 (List!49264) Bool)

(assert (=> d!1302298 (= (invariantList!719 (toList!3130 lt!1586805)) (noDuplicatedKeys!134 (toList!3130 lt!1586805)))))

(declare-fun bs!658118 () Bool)

(assert (= bs!658118 d!1302298))

(declare-fun m!5009719 () Bool)

(assert (=> bs!658118 m!5009719))

(assert (=> b!4375997 d!1302298))

(declare-fun d!1302300 () Bool)

(declare-fun c!744154 () Bool)

(assert (=> d!1302300 (= c!744154 ((_ is Nil!49140) (toList!3130 lt!1586451)))))

(declare-fun e!2723964 () (InoxSet tuple2!48662))

(assert (=> d!1302300 (= (content!7802 (toList!3130 lt!1586451)) e!2723964)))

(declare-fun b!4376185 () Bool)

(assert (=> b!4376185 (= e!2723964 ((as const (Array tuple2!48662 Bool)) false))))

(declare-fun b!4376186 () Bool)

(assert (=> b!4376186 (= e!2723964 ((_ map or) (store ((as const (Array tuple2!48662 Bool)) false) (h!54733 (toList!3130 lt!1586451)) true) (content!7802 (t!356190 (toList!3130 lt!1586451)))))))

(assert (= (and d!1302300 c!744154) b!4376185))

(assert (= (and d!1302300 (not c!744154)) b!4376186))

(declare-fun m!5009721 () Bool)

(assert (=> b!4376186 m!5009721))

(declare-fun m!5009723 () Bool)

(assert (=> b!4376186 m!5009723))

(assert (=> d!1302198 d!1302300))

(declare-fun d!1302302 () Bool)

(declare-fun c!744155 () Bool)

(assert (=> d!1302302 (= c!744155 ((_ is Nil!49140) (toList!3130 lt!1586461)))))

(declare-fun e!2723965 () (InoxSet tuple2!48662))

(assert (=> d!1302302 (= (content!7802 (toList!3130 lt!1586461)) e!2723965)))

(declare-fun b!4376187 () Bool)

(assert (=> b!4376187 (= e!2723965 ((as const (Array tuple2!48662 Bool)) false))))

(declare-fun b!4376188 () Bool)

(assert (=> b!4376188 (= e!2723965 ((_ map or) (store ((as const (Array tuple2!48662 Bool)) false) (h!54733 (toList!3130 lt!1586461)) true) (content!7802 (t!356190 (toList!3130 lt!1586461)))))))

(assert (= (and d!1302302 c!744155) b!4376187))

(assert (= (and d!1302302 (not c!744155)) b!4376188))

(declare-fun m!5009725 () Bool)

(assert (=> b!4376188 m!5009725))

(declare-fun m!5009727 () Bool)

(assert (=> b!4376188 m!5009727))

(assert (=> d!1302198 d!1302302))

(declare-fun bs!658119 () Bool)

(declare-fun b!4376192 () Bool)

(assert (= bs!658119 (and b!4376192 b!4376000)))

(declare-fun lambda!144736 () Int)

(assert (=> bs!658119 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586446) (= lambda!144736 lambda!144703))))

(declare-fun bs!658120 () Bool)

(assert (= bs!658120 (and b!4376192 d!1302208)))

(assert (=> bs!658120 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586829) (= lambda!144736 lambda!144710))))

(declare-fun bs!658121 () Bool)

(assert (= bs!658121 (and b!4376192 b!4376001)))

(assert (=> bs!658121 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586446) (= lambda!144736 lambda!144704))))

(assert (=> bs!658121 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586808) (= lambda!144736 lambda!144705))))

(declare-fun bs!658122 () Bool)

(assert (= bs!658122 (and b!4376192 b!4376019)))

(assert (=> bs!658122 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586446) (= lambda!144736 lambda!144713))))

(declare-fun bs!658123 () Bool)

(assert (= bs!658123 (and b!4376192 d!1302220)))

(assert (=> bs!658123 (not (= lambda!144736 lambda!144717))))

(declare-fun bs!658124 () Bool)

(assert (= bs!658124 (and b!4376192 d!1302282)))

(assert (=> bs!658124 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586962) (= lambda!144736 lambda!144734))))

(declare-fun bs!658125 () Bool)

(assert (= bs!658125 (and b!4376192 d!1302202)))

(assert (=> bs!658125 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586805) (= lambda!144736 lambda!144706))))

(declare-fun bs!658126 () Bool)

(assert (= bs!658126 (and b!4376192 d!1302214)))

(assert (=> bs!658126 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586863) (= lambda!144736 lambda!144715))))

(assert (=> bs!658122 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586866) (= lambda!144736 lambda!144714))))

(declare-fun bs!658127 () Bool)

(assert (= bs!658127 (and b!4376192 b!4375992)))

(assert (=> bs!658127 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586446) (= lambda!144736 lambda!144700))))

(declare-fun bs!658128 () Bool)

(assert (= bs!658128 (and b!4376192 b!4376151)))

(assert (=> bs!658128 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586965) (= lambda!144736 lambda!144733))))

(assert (=> bs!658128 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144736 lambda!144732))))

(assert (=> bs!658127 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586783) (= lambda!144736 lambda!144701))))

(declare-fun bs!658129 () Bool)

(assert (= bs!658129 (and b!4376192 d!1302152)))

(assert (=> bs!658129 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586780) (= lambda!144736 lambda!144702))))

(declare-fun bs!658130 () Bool)

(assert (= bs!658130 (and b!4376192 d!1302118)))

(assert (=> bs!658130 (not (= lambda!144736 lambda!144613))))

(declare-fun bs!658131 () Bool)

(assert (= bs!658131 (and b!4376192 b!4376005)))

(assert (=> bs!658131 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) (+!778 lt!1586446 lt!1586455)) (= lambda!144736 lambda!144707))))

(declare-fun bs!658132 () Bool)

(assert (= bs!658132 (and b!4376192 b!4376018)))

(assert (=> bs!658132 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586446) (= lambda!144736 lambda!144712))))

(declare-fun bs!658133 () Bool)

(assert (= bs!658133 (and b!4376192 b!4376006)))

(assert (=> bs!658133 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) (+!778 lt!1586446 lt!1586455)) (= lambda!144736 lambda!144708))))

(declare-fun bs!658134 () Bool)

(assert (= bs!658134 (and b!4376192 b!4375991)))

(assert (=> bs!658134 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586446) (= lambda!144736 lambda!144699))))

(assert (=> bs!658133 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586832) (= lambda!144736 lambda!144709))))

(declare-fun bs!658135 () Bool)

(assert (= bs!658135 (and b!4376192 b!4376150)))

(assert (=> bs!658135 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144736 lambda!144731))))

(assert (=> b!4376192 true))

(declare-fun bs!658136 () Bool)

(declare-fun b!4376193 () Bool)

(assert (= bs!658136 (and b!4376193 b!4376000)))

(declare-fun lambda!144737 () Int)

(assert (=> bs!658136 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586446) (= lambda!144737 lambda!144703))))

(declare-fun bs!658137 () Bool)

(assert (= bs!658137 (and b!4376193 d!1302208)))

(assert (=> bs!658137 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586829) (= lambda!144737 lambda!144710))))

(declare-fun bs!658138 () Bool)

(assert (= bs!658138 (and b!4376193 b!4376001)))

(assert (=> bs!658138 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586446) (= lambda!144737 lambda!144704))))

(assert (=> bs!658138 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586808) (= lambda!144737 lambda!144705))))

(declare-fun bs!658139 () Bool)

(assert (= bs!658139 (and b!4376193 b!4376019)))

(assert (=> bs!658139 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586446) (= lambda!144737 lambda!144713))))

(declare-fun bs!658140 () Bool)

(assert (= bs!658140 (and b!4376193 d!1302220)))

(assert (=> bs!658140 (not (= lambda!144737 lambda!144717))))

(declare-fun bs!658141 () Bool)

(assert (= bs!658141 (and b!4376193 d!1302282)))

(assert (=> bs!658141 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586962) (= lambda!144737 lambda!144734))))

(declare-fun bs!658142 () Bool)

(assert (= bs!658142 (and b!4376193 d!1302202)))

(assert (=> bs!658142 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586805) (= lambda!144737 lambda!144706))))

(declare-fun bs!658143 () Bool)

(assert (= bs!658143 (and b!4376193 d!1302214)))

(assert (=> bs!658143 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586863) (= lambda!144737 lambda!144715))))

(assert (=> bs!658139 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586866) (= lambda!144737 lambda!144714))))

(declare-fun bs!658144 () Bool)

(assert (= bs!658144 (and b!4376193 b!4375992)))

(assert (=> bs!658144 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586446) (= lambda!144737 lambda!144700))))

(declare-fun bs!658145 () Bool)

(assert (= bs!658145 (and b!4376193 b!4376151)))

(assert (=> bs!658145 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586965) (= lambda!144737 lambda!144733))))

(assert (=> bs!658145 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144737 lambda!144732))))

(assert (=> bs!658144 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586783) (= lambda!144737 lambda!144701))))

(declare-fun bs!658146 () Bool)

(assert (= bs!658146 (and b!4376193 d!1302152)))

(assert (=> bs!658146 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586780) (= lambda!144737 lambda!144702))))

(declare-fun bs!658147 () Bool)

(assert (= bs!658147 (and b!4376193 d!1302118)))

(assert (=> bs!658147 (not (= lambda!144737 lambda!144613))))

(declare-fun bs!658148 () Bool)

(assert (= bs!658148 (and b!4376193 b!4376005)))

(assert (=> bs!658148 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) (+!778 lt!1586446 lt!1586455)) (= lambda!144737 lambda!144707))))

(declare-fun bs!658149 () Bool)

(assert (= bs!658149 (and b!4376193 b!4376018)))

(assert (=> bs!658149 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586446) (= lambda!144737 lambda!144712))))

(declare-fun bs!658150 () Bool)

(assert (= bs!658150 (and b!4376193 b!4376006)))

(assert (=> bs!658150 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) (+!778 lt!1586446 lt!1586455)) (= lambda!144737 lambda!144708))))

(declare-fun bs!658151 () Bool)

(assert (= bs!658151 (and b!4376193 b!4375991)))

(assert (=> bs!658151 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586446) (= lambda!144737 lambda!144699))))

(declare-fun bs!658152 () Bool)

(assert (= bs!658152 (and b!4376193 b!4376192)))

(assert (=> bs!658152 (= lambda!144737 lambda!144736)))

(assert (=> bs!658150 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586832) (= lambda!144737 lambda!144709))))

(declare-fun bs!658153 () Bool)

(assert (= bs!658153 (and b!4376193 b!4376150)))

(assert (=> bs!658153 (= (= (extractMap!632 (t!356191 (toList!3129 lm!1707))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144737 lambda!144731))))

(assert (=> b!4376193 true))

(declare-fun lambda!144738 () Int)

(declare-fun lt!1586998 () ListMap!2373)

(assert (=> bs!658136 (= (= lt!1586998 lt!1586446) (= lambda!144738 lambda!144703))))

(assert (=> bs!658137 (= (= lt!1586998 lt!1586829) (= lambda!144738 lambda!144710))))

(assert (=> bs!658138 (= (= lt!1586998 lt!1586446) (= lambda!144738 lambda!144704))))

(assert (=> bs!658138 (= (= lt!1586998 lt!1586808) (= lambda!144738 lambda!144705))))

(assert (=> bs!658139 (= (= lt!1586998 lt!1586446) (= lambda!144738 lambda!144713))))

(assert (=> bs!658140 (not (= lambda!144738 lambda!144717))))

(assert (=> bs!658141 (= (= lt!1586998 lt!1586962) (= lambda!144738 lambda!144734))))

(assert (=> bs!658142 (= (= lt!1586998 lt!1586805) (= lambda!144738 lambda!144706))))

(assert (=> bs!658143 (= (= lt!1586998 lt!1586863) (= lambda!144738 lambda!144715))))

(assert (=> bs!658139 (= (= lt!1586998 lt!1586866) (= lambda!144738 lambda!144714))))

(assert (=> bs!658144 (= (= lt!1586998 lt!1586446) (= lambda!144738 lambda!144700))))

(assert (=> bs!658145 (= (= lt!1586998 lt!1586965) (= lambda!144738 lambda!144733))))

(assert (=> bs!658145 (= (= lt!1586998 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144738 lambda!144732))))

(assert (=> bs!658144 (= (= lt!1586998 lt!1586783) (= lambda!144738 lambda!144701))))

(assert (=> bs!658146 (= (= lt!1586998 lt!1586780) (= lambda!144738 lambda!144702))))

(assert (=> bs!658147 (not (= lambda!144738 lambda!144613))))

(assert (=> bs!658148 (= (= lt!1586998 (+!778 lt!1586446 lt!1586455)) (= lambda!144738 lambda!144707))))

(assert (=> bs!658149 (= (= lt!1586998 lt!1586446) (= lambda!144738 lambda!144712))))

(assert (=> bs!658150 (= (= lt!1586998 (+!778 lt!1586446 lt!1586455)) (= lambda!144738 lambda!144708))))

(assert (=> bs!658151 (= (= lt!1586998 lt!1586446) (= lambda!144738 lambda!144699))))

(assert (=> b!4376193 (= (= lt!1586998 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144738 lambda!144737))))

(assert (=> bs!658152 (= (= lt!1586998 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144738 lambda!144736))))

(assert (=> bs!658150 (= (= lt!1586998 lt!1586832) (= lambda!144738 lambda!144709))))

(assert (=> bs!658153 (= (= lt!1586998 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144738 lambda!144731))))

(assert (=> b!4376193 true))

(declare-fun bs!658154 () Bool)

(declare-fun d!1302304 () Bool)

(assert (= bs!658154 (and d!1302304 b!4376000)))

(declare-fun lt!1586995 () ListMap!2373)

(declare-fun lambda!144739 () Int)

(assert (=> bs!658154 (= (= lt!1586995 lt!1586446) (= lambda!144739 lambda!144703))))

(declare-fun bs!658155 () Bool)

(assert (= bs!658155 (and d!1302304 d!1302208)))

(assert (=> bs!658155 (= (= lt!1586995 lt!1586829) (= lambda!144739 lambda!144710))))

(declare-fun bs!658156 () Bool)

(assert (= bs!658156 (and d!1302304 b!4376001)))

(assert (=> bs!658156 (= (= lt!1586995 lt!1586446) (= lambda!144739 lambda!144704))))

(assert (=> bs!658156 (= (= lt!1586995 lt!1586808) (= lambda!144739 lambda!144705))))

(declare-fun bs!658157 () Bool)

(assert (= bs!658157 (and d!1302304 b!4376019)))

(assert (=> bs!658157 (= (= lt!1586995 lt!1586446) (= lambda!144739 lambda!144713))))

(declare-fun bs!658158 () Bool)

(assert (= bs!658158 (and d!1302304 d!1302220)))

(assert (=> bs!658158 (not (= lambda!144739 lambda!144717))))

(declare-fun bs!658159 () Bool)

(assert (= bs!658159 (and d!1302304 d!1302282)))

(assert (=> bs!658159 (= (= lt!1586995 lt!1586962) (= lambda!144739 lambda!144734))))

(declare-fun bs!658160 () Bool)

(assert (= bs!658160 (and d!1302304 d!1302202)))

(assert (=> bs!658160 (= (= lt!1586995 lt!1586805) (= lambda!144739 lambda!144706))))

(declare-fun bs!658161 () Bool)

(assert (= bs!658161 (and d!1302304 d!1302214)))

(assert (=> bs!658161 (= (= lt!1586995 lt!1586863) (= lambda!144739 lambda!144715))))

(assert (=> bs!658157 (= (= lt!1586995 lt!1586866) (= lambda!144739 lambda!144714))))

(declare-fun bs!658162 () Bool)

(assert (= bs!658162 (and d!1302304 b!4375992)))

(assert (=> bs!658162 (= (= lt!1586995 lt!1586446) (= lambda!144739 lambda!144700))))

(declare-fun bs!658163 () Bool)

(assert (= bs!658163 (and d!1302304 b!4376193)))

(assert (=> bs!658163 (= (= lt!1586995 lt!1586998) (= lambda!144739 lambda!144738))))

(declare-fun bs!658164 () Bool)

(assert (= bs!658164 (and d!1302304 b!4376151)))

(assert (=> bs!658164 (= (= lt!1586995 lt!1586965) (= lambda!144739 lambda!144733))))

(assert (=> bs!658164 (= (= lt!1586995 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144739 lambda!144732))))

(assert (=> bs!658162 (= (= lt!1586995 lt!1586783) (= lambda!144739 lambda!144701))))

(declare-fun bs!658165 () Bool)

(assert (= bs!658165 (and d!1302304 d!1302152)))

(assert (=> bs!658165 (= (= lt!1586995 lt!1586780) (= lambda!144739 lambda!144702))))

(declare-fun bs!658166 () Bool)

(assert (= bs!658166 (and d!1302304 d!1302118)))

(assert (=> bs!658166 (not (= lambda!144739 lambda!144613))))

(declare-fun bs!658167 () Bool)

(assert (= bs!658167 (and d!1302304 b!4376005)))

(assert (=> bs!658167 (= (= lt!1586995 (+!778 lt!1586446 lt!1586455)) (= lambda!144739 lambda!144707))))

(declare-fun bs!658168 () Bool)

(assert (= bs!658168 (and d!1302304 b!4376018)))

(assert (=> bs!658168 (= (= lt!1586995 lt!1586446) (= lambda!144739 lambda!144712))))

(declare-fun bs!658169 () Bool)

(assert (= bs!658169 (and d!1302304 b!4376006)))

(assert (=> bs!658169 (= (= lt!1586995 (+!778 lt!1586446 lt!1586455)) (= lambda!144739 lambda!144708))))

(declare-fun bs!658170 () Bool)

(assert (= bs!658170 (and d!1302304 b!4375991)))

(assert (=> bs!658170 (= (= lt!1586995 lt!1586446) (= lambda!144739 lambda!144699))))

(assert (=> bs!658163 (= (= lt!1586995 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144739 lambda!144737))))

(declare-fun bs!658171 () Bool)

(assert (= bs!658171 (and d!1302304 b!4376192)))

(assert (=> bs!658171 (= (= lt!1586995 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144739 lambda!144736))))

(assert (=> bs!658169 (= (= lt!1586995 lt!1586832) (= lambda!144739 lambda!144709))))

(declare-fun bs!658172 () Bool)

(assert (= bs!658172 (and d!1302304 b!4376150)))

(assert (=> bs!658172 (= (= lt!1586995 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144739 lambda!144731))))

(assert (=> d!1302304 true))

(declare-fun call!304277 () Bool)

(declare-fun c!744156 () Bool)

(declare-fun bm!304271 () Bool)

(assert (=> bm!304271 (= call!304277 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (ite c!744156 lambda!144736 lambda!144737)))))

(declare-fun b!4376189 () Bool)

(declare-fun e!2723967 () Bool)

(assert (=> b!4376189 (= e!2723967 (invariantList!719 (toList!3130 lt!1586995)))))

(declare-fun b!4376190 () Bool)

(declare-fun res!1801799 () Bool)

(assert (=> b!4376190 (=> (not res!1801799) (not e!2723967))))

(assert (=> b!4376190 (= res!1801799 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) lambda!144739))))

(assert (=> d!1302304 e!2723967))

(declare-fun res!1801800 () Bool)

(assert (=> d!1302304 (=> (not res!1801800) (not e!2723967))))

(assert (=> d!1302304 (= res!1801800 (forall!9261 (_2!27626 (h!54734 (toList!3129 lm!1707))) lambda!144739))))

(declare-fun e!2723966 () ListMap!2373)

(assert (=> d!1302304 (= lt!1586995 e!2723966)))

(assert (=> d!1302304 (= c!744156 ((_ is Nil!49140) (_2!27626 (h!54734 (toList!3129 lm!1707)))))))

(assert (=> d!1302304 (noDuplicateKeys!573 (_2!27626 (h!54734 (toList!3129 lm!1707))))))

(assert (=> d!1302304 (= (addToMapMapFromBucket!254 (_2!27626 (h!54734 (toList!3129 lm!1707))) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) lt!1586995)))

(declare-fun call!304278 () Bool)

(declare-fun bm!304272 () Bool)

(assert (=> bm!304272 (= call!304278 (forall!9261 (ite c!744156 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (_2!27626 (h!54734 (toList!3129 lm!1707)))) (ite c!744156 lambda!144736 lambda!144738)))))

(declare-fun bm!304273 () Bool)

(declare-fun call!304276 () Unit!74656)

(assert (=> bm!304273 (= call!304276 (lemmaContainsAllItsOwnKeys!101 (extractMap!632 (t!356191 (toList!3129 lm!1707)))))))

(declare-fun b!4376191 () Bool)

(declare-fun e!2723968 () Bool)

(assert (=> b!4376191 (= e!2723968 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) lambda!144738))))

(assert (=> b!4376192 (= e!2723966 (extractMap!632 (t!356191 (toList!3129 lm!1707))))))

(declare-fun lt!1586999 () Unit!74656)

(assert (=> b!4376192 (= lt!1586999 call!304276)))

(assert (=> b!4376192 call!304277))

(declare-fun lt!1586980 () Unit!74656)

(assert (=> b!4376192 (= lt!1586980 lt!1586999)))

(assert (=> b!4376192 call!304278))

(declare-fun lt!1586982 () Unit!74656)

(declare-fun Unit!74774 () Unit!74656)

(assert (=> b!4376192 (= lt!1586982 Unit!74774)))

(assert (=> b!4376193 (= e!2723966 lt!1586998)))

(declare-fun lt!1586988 () ListMap!2373)

(assert (=> b!4376193 (= lt!1586988 (+!778 (extractMap!632 (t!356191 (toList!3129 lm!1707))) (h!54733 (_2!27626 (h!54734 (toList!3129 lm!1707))))))))

(assert (=> b!4376193 (= lt!1586998 (addToMapMapFromBucket!254 (t!356190 (_2!27626 (h!54734 (toList!3129 lm!1707)))) (+!778 (extractMap!632 (t!356191 (toList!3129 lm!1707))) (h!54733 (_2!27626 (h!54734 (toList!3129 lm!1707)))))))))

(declare-fun lt!1586994 () Unit!74656)

(assert (=> b!4376193 (= lt!1586994 call!304276)))

(assert (=> b!4376193 call!304277))

(declare-fun lt!1586987 () Unit!74656)

(assert (=> b!4376193 (= lt!1586987 lt!1586994)))

(assert (=> b!4376193 (forall!9261 (toList!3130 lt!1586988) lambda!144738)))

(declare-fun lt!1586997 () Unit!74656)

(declare-fun Unit!74775 () Unit!74656)

(assert (=> b!4376193 (= lt!1586997 Unit!74775)))

(assert (=> b!4376193 (forall!9261 (t!356190 (_2!27626 (h!54734 (toList!3129 lm!1707)))) lambda!144738)))

(declare-fun lt!1586989 () Unit!74656)

(declare-fun Unit!74776 () Unit!74656)

(assert (=> b!4376193 (= lt!1586989 Unit!74776)))

(declare-fun lt!1586991 () Unit!74656)

(declare-fun Unit!74777 () Unit!74656)

(assert (=> b!4376193 (= lt!1586991 Unit!74777)))

(declare-fun lt!1586981 () Unit!74656)

(assert (=> b!4376193 (= lt!1586981 (forallContained!1899 (toList!3130 lt!1586988) lambda!144738 (h!54733 (_2!27626 (h!54734 (toList!3129 lm!1707))))))))

(assert (=> b!4376193 (contains!11461 lt!1586988 (_1!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lm!1707))))))))

(declare-fun lt!1587000 () Unit!74656)

(declare-fun Unit!74778 () Unit!74656)

(assert (=> b!4376193 (= lt!1587000 Unit!74778)))

(assert (=> b!4376193 (contains!11461 lt!1586998 (_1!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lm!1707))))))))

(declare-fun lt!1586986 () Unit!74656)

(declare-fun Unit!74779 () Unit!74656)

(assert (=> b!4376193 (= lt!1586986 Unit!74779)))

(assert (=> b!4376193 (forall!9261 (_2!27626 (h!54734 (toList!3129 lm!1707))) lambda!144738)))

(declare-fun lt!1586993 () Unit!74656)

(declare-fun Unit!74780 () Unit!74656)

(assert (=> b!4376193 (= lt!1586993 Unit!74780)))

(assert (=> b!4376193 (forall!9261 (toList!3130 lt!1586988) lambda!144738)))

(declare-fun lt!1586983 () Unit!74656)

(declare-fun Unit!74781 () Unit!74656)

(assert (=> b!4376193 (= lt!1586983 Unit!74781)))

(declare-fun lt!1586990 () Unit!74656)

(declare-fun Unit!74782 () Unit!74656)

(assert (=> b!4376193 (= lt!1586990 Unit!74782)))

(declare-fun lt!1586996 () Unit!74656)

(assert (=> b!4376193 (= lt!1586996 (addForallContainsKeyThenBeforeAdding!101 (extractMap!632 (t!356191 (toList!3129 lm!1707))) lt!1586998 (_1!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lm!1707))))) (_2!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lm!1707)))))))))

(assert (=> b!4376193 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) lambda!144738)))

(declare-fun lt!1586984 () Unit!74656)

(assert (=> b!4376193 (= lt!1586984 lt!1586996)))

(assert (=> b!4376193 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) lambda!144738)))

(declare-fun lt!1586985 () Unit!74656)

(declare-fun Unit!74783 () Unit!74656)

(assert (=> b!4376193 (= lt!1586985 Unit!74783)))

(declare-fun res!1801798 () Bool)

(assert (=> b!4376193 (= res!1801798 call!304278)))

(assert (=> b!4376193 (=> (not res!1801798) (not e!2723968))))

(assert (=> b!4376193 e!2723968))

(declare-fun lt!1586992 () Unit!74656)

(declare-fun Unit!74784 () Unit!74656)

(assert (=> b!4376193 (= lt!1586992 Unit!74784)))

(assert (= (and d!1302304 c!744156) b!4376192))

(assert (= (and d!1302304 (not c!744156)) b!4376193))

(assert (= (and b!4376193 res!1801798) b!4376191))

(assert (= (or b!4376192 b!4376193) bm!304273))

(assert (= (or b!4376192 b!4376193) bm!304271))

(assert (= (or b!4376192 b!4376193) bm!304272))

(assert (= (and d!1302304 res!1801800) b!4376190))

(assert (= (and b!4376190 res!1801799) b!4376189))

(declare-fun m!5009729 () Bool)

(assert (=> bm!304271 m!5009729))

(declare-fun m!5009731 () Bool)

(assert (=> b!4376191 m!5009731))

(declare-fun m!5009733 () Bool)

(assert (=> b!4376189 m!5009733))

(declare-fun m!5009735 () Bool)

(assert (=> b!4376190 m!5009735))

(declare-fun m!5009737 () Bool)

(assert (=> b!4376193 m!5009737))

(declare-fun m!5009739 () Bool)

(assert (=> b!4376193 m!5009739))

(declare-fun m!5009741 () Bool)

(assert (=> b!4376193 m!5009741))

(declare-fun m!5009743 () Bool)

(assert (=> b!4376193 m!5009743))

(declare-fun m!5009745 () Bool)

(assert (=> b!4376193 m!5009745))

(assert (=> b!4376193 m!5009731))

(assert (=> b!4376193 m!5009731))

(assert (=> b!4376193 m!5008839))

(declare-fun m!5009747 () Bool)

(assert (=> b!4376193 m!5009747))

(declare-fun m!5009749 () Bool)

(assert (=> b!4376193 m!5009749))

(assert (=> b!4376193 m!5009745))

(declare-fun m!5009751 () Bool)

(assert (=> b!4376193 m!5009751))

(assert (=> b!4376193 m!5008839))

(assert (=> b!4376193 m!5009741))

(declare-fun m!5009753 () Bool)

(assert (=> b!4376193 m!5009753))

(declare-fun m!5009755 () Bool)

(assert (=> d!1302304 m!5009755))

(assert (=> d!1302304 m!5009489))

(assert (=> bm!304273 m!5008839))

(declare-fun m!5009757 () Bool)

(assert (=> bm!304273 m!5009757))

(declare-fun m!5009759 () Bool)

(assert (=> bm!304272 m!5009759))

(assert (=> b!4376057 d!1302304))

(assert (=> b!4376057 d!1302212))

(declare-fun d!1302306 () Bool)

(declare-fun res!1801801 () Bool)

(declare-fun e!2723969 () Bool)

(assert (=> d!1302306 (=> res!1801801 e!2723969)))

(assert (=> d!1302306 (= res!1801801 ((_ is Nil!49140) (toList!3130 lt!1586446)))))

(assert (=> d!1302306 (= (forall!9261 (toList!3130 lt!1586446) (ite c!744115 lambda!144712 lambda!144713)) e!2723969)))

(declare-fun b!4376194 () Bool)

(declare-fun e!2723970 () Bool)

(assert (=> b!4376194 (= e!2723969 e!2723970)))

(declare-fun res!1801802 () Bool)

(assert (=> b!4376194 (=> (not res!1801802) (not e!2723970))))

(assert (=> b!4376194 (= res!1801802 (dynLambda!20705 (ite c!744115 lambda!144712 lambda!144713) (h!54733 (toList!3130 lt!1586446))))))

(declare-fun b!4376195 () Bool)

(assert (=> b!4376195 (= e!2723970 (forall!9261 (t!356190 (toList!3130 lt!1586446)) (ite c!744115 lambda!144712 lambda!144713)))))

(assert (= (and d!1302306 (not res!1801801)) b!4376194))

(assert (= (and b!4376194 res!1801802) b!4376195))

(declare-fun b_lambda!134545 () Bool)

(assert (=> (not b_lambda!134545) (not b!4376194)))

(declare-fun m!5009761 () Bool)

(assert (=> b!4376194 m!5009761))

(declare-fun m!5009763 () Bool)

(assert (=> b!4376195 m!5009763))

(assert (=> bm!304255 d!1302306))

(declare-fun d!1302308 () Bool)

(assert (=> d!1302308 (dynLambda!20705 lambda!144709 (h!54733 lt!1586460))))

(declare-fun lt!1587025 () Unit!74656)

(declare-fun choose!27262 (List!49264 Int tuple2!48662) Unit!74656)

(assert (=> d!1302308 (= lt!1587025 (choose!27262 (toList!3130 lt!1586822) lambda!144709 (h!54733 lt!1586460)))))

(declare-fun e!2723983 () Bool)

(assert (=> d!1302308 e!2723983))

(declare-fun res!1801807 () Bool)

(assert (=> d!1302308 (=> (not res!1801807) (not e!2723983))))

(assert (=> d!1302308 (= res!1801807 (forall!9261 (toList!3130 lt!1586822) lambda!144709))))

(assert (=> d!1302308 (= (forallContained!1899 (toList!3130 lt!1586822) lambda!144709 (h!54733 lt!1586460)) lt!1587025)))

(declare-fun b!4376216 () Bool)

(assert (=> b!4376216 (= e!2723983 (contains!11466 (toList!3130 lt!1586822) (h!54733 lt!1586460)))))

(assert (= (and d!1302308 res!1801807) b!4376216))

(declare-fun b_lambda!134547 () Bool)

(assert (=> (not b_lambda!134547) (not d!1302308)))

(declare-fun m!5009765 () Bool)

(assert (=> d!1302308 m!5009765))

(declare-fun m!5009767 () Bool)

(assert (=> d!1302308 m!5009767))

(assert (=> d!1302308 m!5009367))

(declare-fun m!5009769 () Bool)

(assert (=> b!4376216 m!5009769))

(assert (=> b!4376006 d!1302308))

(declare-fun d!1302310 () Bool)

(declare-fun res!1801808 () Bool)

(declare-fun e!2723986 () Bool)

(assert (=> d!1302310 (=> res!1801808 e!2723986)))

(assert (=> d!1302310 (= res!1801808 ((_ is Nil!49140) (toList!3130 lt!1586822)))))

(assert (=> d!1302310 (= (forall!9261 (toList!3130 lt!1586822) lambda!144709) e!2723986)))

(declare-fun b!4376221 () Bool)

(declare-fun e!2723987 () Bool)

(assert (=> b!4376221 (= e!2723986 e!2723987)))

(declare-fun res!1801809 () Bool)

(assert (=> b!4376221 (=> (not res!1801809) (not e!2723987))))

(assert (=> b!4376221 (= res!1801809 (dynLambda!20705 lambda!144709 (h!54733 (toList!3130 lt!1586822))))))

(declare-fun b!4376222 () Bool)

(assert (=> b!4376222 (= e!2723987 (forall!9261 (t!356190 (toList!3130 lt!1586822)) lambda!144709))))

(assert (= (and d!1302310 (not res!1801808)) b!4376221))

(assert (= (and b!4376221 res!1801809) b!4376222))

(declare-fun b_lambda!134549 () Bool)

(assert (=> (not b_lambda!134549) (not b!4376221)))

(declare-fun m!5009771 () Bool)

(assert (=> b!4376221 m!5009771))

(declare-fun m!5009773 () Bool)

(assert (=> b!4376222 m!5009773))

(assert (=> b!4376006 d!1302310))

(declare-fun b!4376223 () Bool)

(declare-fun e!2723992 () Unit!74656)

(declare-fun Unit!74785 () Unit!74656)

(assert (=> b!4376223 (= e!2723992 Unit!74785)))

(declare-fun b!4376224 () Bool)

(declare-fun e!2723990 () Unit!74656)

(declare-fun lt!1587031 () Unit!74656)

(assert (=> b!4376224 (= e!2723990 lt!1587031)))

(declare-fun lt!1587033 () Unit!74656)

(assert (=> b!4376224 (= lt!1587033 (lemmaContainsKeyImpliesGetValueByKeyDefined!449 (toList!3130 lt!1586822) (_1!27625 (h!54733 lt!1586460))))))

(assert (=> b!4376224 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586822) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun lt!1587026 () Unit!74656)

(assert (=> b!4376224 (= lt!1587026 lt!1587033)))

(assert (=> b!4376224 (= lt!1587031 (lemmaInListThenGetKeysListContains!164 (toList!3130 lt!1586822) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun call!304281 () Bool)

(assert (=> b!4376224 call!304281))

(declare-fun b!4376225 () Bool)

(declare-fun e!2723991 () Bool)

(assert (=> b!4376225 (= e!2723991 (not (contains!11467 (keys!16659 lt!1586822) (_1!27625 (h!54733 lt!1586460)))))))

(declare-fun bm!304276 () Bool)

(declare-fun e!2723989 () List!49267)

(assert (=> bm!304276 (= call!304281 (contains!11467 e!2723989 (_1!27625 (h!54733 lt!1586460))))))

(declare-fun c!744169 () Bool)

(declare-fun c!744168 () Bool)

(assert (=> bm!304276 (= c!744169 c!744168)))

(declare-fun b!4376226 () Bool)

(assert (=> b!4376226 (= e!2723989 (getKeysList!167 (toList!3130 lt!1586822)))))

(declare-fun b!4376227 () Bool)

(assert (=> b!4376227 (= e!2723990 e!2723992)))

(declare-fun c!744167 () Bool)

(assert (=> b!4376227 (= c!744167 call!304281)))

(declare-fun b!4376228 () Bool)

(assert (=> b!4376228 (= e!2723989 (keys!16659 lt!1586822))))

(declare-fun d!1302312 () Bool)

(declare-fun e!2723988 () Bool)

(assert (=> d!1302312 e!2723988))

(declare-fun res!1801810 () Bool)

(assert (=> d!1302312 (=> res!1801810 e!2723988)))

(assert (=> d!1302312 (= res!1801810 e!2723991)))

(declare-fun res!1801811 () Bool)

(assert (=> d!1302312 (=> (not res!1801811) (not e!2723991))))

(declare-fun lt!1587030 () Bool)

(assert (=> d!1302312 (= res!1801811 (not lt!1587030))))

(declare-fun lt!1587027 () Bool)

(assert (=> d!1302312 (= lt!1587030 lt!1587027)))

(declare-fun lt!1587029 () Unit!74656)

(assert (=> d!1302312 (= lt!1587029 e!2723990)))

(assert (=> d!1302312 (= c!744168 lt!1587027)))

(assert (=> d!1302312 (= lt!1587027 (containsKey!839 (toList!3130 lt!1586822) (_1!27625 (h!54733 lt!1586460))))))

(assert (=> d!1302312 (= (contains!11461 lt!1586822 (_1!27625 (h!54733 lt!1586460))) lt!1587030)))

(declare-fun b!4376229 () Bool)

(declare-fun e!2723993 () Bool)

(assert (=> b!4376229 (= e!2723993 (contains!11467 (keys!16659 lt!1586822) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun b!4376230 () Bool)

(assert (=> b!4376230 false))

(declare-fun lt!1587032 () Unit!74656)

(declare-fun lt!1587028 () Unit!74656)

(assert (=> b!4376230 (= lt!1587032 lt!1587028)))

(assert (=> b!4376230 (containsKey!839 (toList!3130 lt!1586822) (_1!27625 (h!54733 lt!1586460)))))

(assert (=> b!4376230 (= lt!1587028 (lemmaInGetKeysListThenContainsKey!165 (toList!3130 lt!1586822) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun Unit!74794 () Unit!74656)

(assert (=> b!4376230 (= e!2723992 Unit!74794)))

(declare-fun b!4376231 () Bool)

(assert (=> b!4376231 (= e!2723988 e!2723993)))

(declare-fun res!1801812 () Bool)

(assert (=> b!4376231 (=> (not res!1801812) (not e!2723993))))

(assert (=> b!4376231 (= res!1801812 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586822) (_1!27625 (h!54733 lt!1586460)))))))

(assert (= (and d!1302312 c!744168) b!4376224))

(assert (= (and d!1302312 (not c!744168)) b!4376227))

(assert (= (and b!4376227 c!744167) b!4376230))

(assert (= (and b!4376227 (not c!744167)) b!4376223))

(assert (= (or b!4376224 b!4376227) bm!304276))

(assert (= (and bm!304276 c!744169) b!4376226))

(assert (= (and bm!304276 (not c!744169)) b!4376228))

(assert (= (and d!1302312 res!1801811) b!4376225))

(assert (= (and d!1302312 (not res!1801810)) b!4376231))

(assert (= (and b!4376231 res!1801812) b!4376229))

(declare-fun m!5009775 () Bool)

(assert (=> b!4376224 m!5009775))

(declare-fun m!5009777 () Bool)

(assert (=> b!4376224 m!5009777))

(assert (=> b!4376224 m!5009777))

(declare-fun m!5009779 () Bool)

(assert (=> b!4376224 m!5009779))

(declare-fun m!5009781 () Bool)

(assert (=> b!4376224 m!5009781))

(declare-fun m!5009783 () Bool)

(assert (=> bm!304276 m!5009783))

(assert (=> b!4376231 m!5009777))

(assert (=> b!4376231 m!5009777))

(assert (=> b!4376231 m!5009779))

(declare-fun m!5009785 () Bool)

(assert (=> b!4376228 m!5009785))

(assert (=> b!4376229 m!5009785))

(assert (=> b!4376229 m!5009785))

(declare-fun m!5009787 () Bool)

(assert (=> b!4376229 m!5009787))

(declare-fun m!5009789 () Bool)

(assert (=> d!1302312 m!5009789))

(declare-fun m!5009791 () Bool)

(assert (=> b!4376226 m!5009791))

(assert (=> b!4376230 m!5009789))

(declare-fun m!5009793 () Bool)

(assert (=> b!4376230 m!5009793))

(assert (=> b!4376225 m!5009785))

(assert (=> b!4376225 m!5009785))

(assert (=> b!4376225 m!5009787))

(assert (=> b!4376006 d!1302312))

(declare-fun d!1302314 () Bool)

(declare-fun res!1801813 () Bool)

(declare-fun e!2723994 () Bool)

(assert (=> d!1302314 (=> res!1801813 e!2723994)))

(assert (=> d!1302314 (= res!1801813 ((_ is Nil!49140) (t!356190 lt!1586460)))))

(assert (=> d!1302314 (= (forall!9261 (t!356190 lt!1586460) lambda!144709) e!2723994)))

(declare-fun b!4376232 () Bool)

(declare-fun e!2723995 () Bool)

(assert (=> b!4376232 (= e!2723994 e!2723995)))

(declare-fun res!1801814 () Bool)

(assert (=> b!4376232 (=> (not res!1801814) (not e!2723995))))

(assert (=> b!4376232 (= res!1801814 (dynLambda!20705 lambda!144709 (h!54733 (t!356190 lt!1586460))))))

(declare-fun b!4376233 () Bool)

(assert (=> b!4376233 (= e!2723995 (forall!9261 (t!356190 (t!356190 lt!1586460)) lambda!144709))))

(assert (= (and d!1302314 (not res!1801813)) b!4376232))

(assert (= (and b!4376232 res!1801814) b!4376233))

(declare-fun b_lambda!134551 () Bool)

(assert (=> (not b_lambda!134551) (not b!4376232)))

(declare-fun m!5009795 () Bool)

(assert (=> b!4376232 m!5009795))

(declare-fun m!5009797 () Bool)

(assert (=> b!4376233 m!5009797))

(assert (=> b!4376006 d!1302314))

(declare-fun b!4376234 () Bool)

(declare-fun e!2724000 () Unit!74656)

(declare-fun Unit!74798 () Unit!74656)

(assert (=> b!4376234 (= e!2724000 Unit!74798)))

(declare-fun b!4376235 () Bool)

(declare-fun e!2723998 () Unit!74656)

(declare-fun lt!1587039 () Unit!74656)

(assert (=> b!4376235 (= e!2723998 lt!1587039)))

(declare-fun lt!1587041 () Unit!74656)

(assert (=> b!4376235 (= lt!1587041 (lemmaContainsKeyImpliesGetValueByKeyDefined!449 (toList!3130 lt!1586832) (_1!27625 (h!54733 lt!1586460))))))

(assert (=> b!4376235 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586832) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun lt!1587034 () Unit!74656)

(assert (=> b!4376235 (= lt!1587034 lt!1587041)))

(assert (=> b!4376235 (= lt!1587039 (lemmaInListThenGetKeysListContains!164 (toList!3130 lt!1586832) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun call!304288 () Bool)

(assert (=> b!4376235 call!304288))

(declare-fun b!4376236 () Bool)

(declare-fun e!2723999 () Bool)

(assert (=> b!4376236 (= e!2723999 (not (contains!11467 (keys!16659 lt!1586832) (_1!27625 (h!54733 lt!1586460)))))))

(declare-fun bm!304283 () Bool)

(declare-fun e!2723997 () List!49267)

(assert (=> bm!304283 (= call!304288 (contains!11467 e!2723997 (_1!27625 (h!54733 lt!1586460))))))

(declare-fun c!744172 () Bool)

(declare-fun c!744171 () Bool)

(assert (=> bm!304283 (= c!744172 c!744171)))

(declare-fun b!4376237 () Bool)

(assert (=> b!4376237 (= e!2723997 (getKeysList!167 (toList!3130 lt!1586832)))))

(declare-fun b!4376238 () Bool)

(assert (=> b!4376238 (= e!2723998 e!2724000)))

(declare-fun c!744170 () Bool)

(assert (=> b!4376238 (= c!744170 call!304288)))

(declare-fun b!4376239 () Bool)

(assert (=> b!4376239 (= e!2723997 (keys!16659 lt!1586832))))

(declare-fun d!1302316 () Bool)

(declare-fun e!2723996 () Bool)

(assert (=> d!1302316 e!2723996))

(declare-fun res!1801815 () Bool)

(assert (=> d!1302316 (=> res!1801815 e!2723996)))

(assert (=> d!1302316 (= res!1801815 e!2723999)))

(declare-fun res!1801816 () Bool)

(assert (=> d!1302316 (=> (not res!1801816) (not e!2723999))))

(declare-fun lt!1587038 () Bool)

(assert (=> d!1302316 (= res!1801816 (not lt!1587038))))

(declare-fun lt!1587035 () Bool)

(assert (=> d!1302316 (= lt!1587038 lt!1587035)))

(declare-fun lt!1587037 () Unit!74656)

(assert (=> d!1302316 (= lt!1587037 e!2723998)))

(assert (=> d!1302316 (= c!744171 lt!1587035)))

(assert (=> d!1302316 (= lt!1587035 (containsKey!839 (toList!3130 lt!1586832) (_1!27625 (h!54733 lt!1586460))))))

(assert (=> d!1302316 (= (contains!11461 lt!1586832 (_1!27625 (h!54733 lt!1586460))) lt!1587038)))

(declare-fun b!4376240 () Bool)

(declare-fun e!2724001 () Bool)

(assert (=> b!4376240 (= e!2724001 (contains!11467 (keys!16659 lt!1586832) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun b!4376241 () Bool)

(assert (=> b!4376241 false))

(declare-fun lt!1587040 () Unit!74656)

(declare-fun lt!1587036 () Unit!74656)

(assert (=> b!4376241 (= lt!1587040 lt!1587036)))

(assert (=> b!4376241 (containsKey!839 (toList!3130 lt!1586832) (_1!27625 (h!54733 lt!1586460)))))

(assert (=> b!4376241 (= lt!1587036 (lemmaInGetKeysListThenContainsKey!165 (toList!3130 lt!1586832) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun Unit!74799 () Unit!74656)

(assert (=> b!4376241 (= e!2724000 Unit!74799)))

(declare-fun b!4376242 () Bool)

(assert (=> b!4376242 (= e!2723996 e!2724001)))

(declare-fun res!1801817 () Bool)

(assert (=> b!4376242 (=> (not res!1801817) (not e!2724001))))

(assert (=> b!4376242 (= res!1801817 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586832) (_1!27625 (h!54733 lt!1586460)))))))

(assert (= (and d!1302316 c!744171) b!4376235))

(assert (= (and d!1302316 (not c!744171)) b!4376238))

(assert (= (and b!4376238 c!744170) b!4376241))

(assert (= (and b!4376238 (not c!744170)) b!4376234))

(assert (= (or b!4376235 b!4376238) bm!304283))

(assert (= (and bm!304283 c!744172) b!4376237))

(assert (= (and bm!304283 (not c!744172)) b!4376239))

(assert (= (and d!1302316 res!1801816) b!4376236))

(assert (= (and d!1302316 (not res!1801815)) b!4376242))

(assert (= (and b!4376242 res!1801817) b!4376240))

(declare-fun m!5009799 () Bool)

(assert (=> b!4376235 m!5009799))

(declare-fun m!5009801 () Bool)

(assert (=> b!4376235 m!5009801))

(assert (=> b!4376235 m!5009801))

(declare-fun m!5009803 () Bool)

(assert (=> b!4376235 m!5009803))

(declare-fun m!5009805 () Bool)

(assert (=> b!4376235 m!5009805))

(declare-fun m!5009807 () Bool)

(assert (=> bm!304283 m!5009807))

(assert (=> b!4376242 m!5009801))

(assert (=> b!4376242 m!5009801))

(assert (=> b!4376242 m!5009803))

(declare-fun m!5009809 () Bool)

(assert (=> b!4376239 m!5009809))

(assert (=> b!4376240 m!5009809))

(assert (=> b!4376240 m!5009809))

(declare-fun m!5009811 () Bool)

(assert (=> b!4376240 m!5009811))

(declare-fun m!5009813 () Bool)

(assert (=> d!1302316 m!5009813))

(declare-fun m!5009815 () Bool)

(assert (=> b!4376237 m!5009815))

(assert (=> b!4376241 m!5009813))

(declare-fun m!5009817 () Bool)

(assert (=> b!4376241 m!5009817))

(assert (=> b!4376236 m!5009809))

(assert (=> b!4376236 m!5009809))

(assert (=> b!4376236 m!5009811))

(assert (=> b!4376006 d!1302316))

(assert (=> b!4376006 d!1302292))

(declare-fun d!1302318 () Bool)

(declare-fun res!1801824 () Bool)

(declare-fun e!2724004 () Bool)

(assert (=> d!1302318 (=> res!1801824 e!2724004)))

(assert (=> d!1302318 (= res!1801824 ((_ is Nil!49140) lt!1586460))))

(assert (=> d!1302318 (= (forall!9261 lt!1586460 lambda!144709) e!2724004)))

(declare-fun b!4376249 () Bool)

(declare-fun e!2724005 () Bool)

(assert (=> b!4376249 (= e!2724004 e!2724005)))

(declare-fun res!1801825 () Bool)

(assert (=> b!4376249 (=> (not res!1801825) (not e!2724005))))

(assert (=> b!4376249 (= res!1801825 (dynLambda!20705 lambda!144709 (h!54733 lt!1586460)))))

(declare-fun b!4376250 () Bool)

(assert (=> b!4376250 (= e!2724005 (forall!9261 (t!356190 lt!1586460) lambda!144709))))

(assert (= (and d!1302318 (not res!1801824)) b!4376249))

(assert (= (and b!4376249 res!1801825) b!4376250))

(declare-fun b_lambda!134553 () Bool)

(assert (=> (not b_lambda!134553) (not b!4376249)))

(assert (=> b!4376249 m!5009765))

(assert (=> b!4376250 m!5009371))

(assert (=> b!4376006 d!1302318))

(declare-fun bs!658173 () Bool)

(declare-fun b!4376254 () Bool)

(assert (= bs!658173 (and b!4376254 b!4376000)))

(declare-fun lambda!144740 () Int)

(assert (=> bs!658173 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586446) (= lambda!144740 lambda!144703))))

(declare-fun bs!658174 () Bool)

(assert (= bs!658174 (and b!4376254 d!1302208)))

(assert (=> bs!658174 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586829) (= lambda!144740 lambda!144710))))

(declare-fun bs!658175 () Bool)

(assert (= bs!658175 (and b!4376254 b!4376001)))

(assert (=> bs!658175 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586446) (= lambda!144740 lambda!144704))))

(assert (=> bs!658175 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586808) (= lambda!144740 lambda!144705))))

(declare-fun bs!658176 () Bool)

(assert (= bs!658176 (and b!4376254 b!4376019)))

(assert (=> bs!658176 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586446) (= lambda!144740 lambda!144713))))

(declare-fun bs!658177 () Bool)

(assert (= bs!658177 (and b!4376254 d!1302220)))

(assert (=> bs!658177 (not (= lambda!144740 lambda!144717))))

(declare-fun bs!658178 () Bool)

(assert (= bs!658178 (and b!4376254 d!1302282)))

(assert (=> bs!658178 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586962) (= lambda!144740 lambda!144734))))

(declare-fun bs!658179 () Bool)

(assert (= bs!658179 (and b!4376254 d!1302202)))

(assert (=> bs!658179 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586805) (= lambda!144740 lambda!144706))))

(declare-fun bs!658180 () Bool)

(assert (= bs!658180 (and b!4376254 d!1302304)))

(assert (=> bs!658180 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586995) (= lambda!144740 lambda!144739))))

(declare-fun bs!658181 () Bool)

(assert (= bs!658181 (and b!4376254 d!1302214)))

(assert (=> bs!658181 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586863) (= lambda!144740 lambda!144715))))

(assert (=> bs!658176 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586866) (= lambda!144740 lambda!144714))))

(declare-fun bs!658182 () Bool)

(assert (= bs!658182 (and b!4376254 b!4375992)))

(assert (=> bs!658182 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586446) (= lambda!144740 lambda!144700))))

(declare-fun bs!658183 () Bool)

(assert (= bs!658183 (and b!4376254 b!4376193)))

(assert (=> bs!658183 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586998) (= lambda!144740 lambda!144738))))

(declare-fun bs!658184 () Bool)

(assert (= bs!658184 (and b!4376254 b!4376151)))

(assert (=> bs!658184 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586965) (= lambda!144740 lambda!144733))))

(assert (=> bs!658184 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144740 lambda!144732))))

(assert (=> bs!658182 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586783) (= lambda!144740 lambda!144701))))

(declare-fun bs!658185 () Bool)

(assert (= bs!658185 (and b!4376254 d!1302152)))

(assert (=> bs!658185 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586780) (= lambda!144740 lambda!144702))))

(declare-fun bs!658186 () Bool)

(assert (= bs!658186 (and b!4376254 d!1302118)))

(assert (=> bs!658186 (not (= lambda!144740 lambda!144613))))

(declare-fun bs!658187 () Bool)

(assert (= bs!658187 (and b!4376254 b!4376005)))

(assert (=> bs!658187 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (+!778 lt!1586446 lt!1586455)) (= lambda!144740 lambda!144707))))

(declare-fun bs!658188 () Bool)

(assert (= bs!658188 (and b!4376254 b!4376018)))

(assert (=> bs!658188 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586446) (= lambda!144740 lambda!144712))))

(declare-fun bs!658189 () Bool)

(assert (= bs!658189 (and b!4376254 b!4376006)))

(assert (=> bs!658189 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (+!778 lt!1586446 lt!1586455)) (= lambda!144740 lambda!144708))))

(declare-fun bs!658190 () Bool)

(assert (= bs!658190 (and b!4376254 b!4375991)))

(assert (=> bs!658190 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586446) (= lambda!144740 lambda!144699))))

(assert (=> bs!658183 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144740 lambda!144737))))

(declare-fun bs!658191 () Bool)

(assert (= bs!658191 (and b!4376254 b!4376192)))

(assert (=> bs!658191 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144740 lambda!144736))))

(assert (=> bs!658189 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586832) (= lambda!144740 lambda!144709))))

(declare-fun bs!658192 () Bool)

(assert (= bs!658192 (and b!4376254 b!4376150)))

(assert (=> bs!658192 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144740 lambda!144731))))

(assert (=> b!4376254 true))

(declare-fun bs!658193 () Bool)

(declare-fun b!4376255 () Bool)

(assert (= bs!658193 (and b!4376255 b!4376000)))

(declare-fun lambda!144741 () Int)

(assert (=> bs!658193 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586446) (= lambda!144741 lambda!144703))))

(declare-fun bs!658194 () Bool)

(assert (= bs!658194 (and b!4376255 d!1302208)))

(assert (=> bs!658194 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586829) (= lambda!144741 lambda!144710))))

(declare-fun bs!658195 () Bool)

(assert (= bs!658195 (and b!4376255 b!4376001)))

(assert (=> bs!658195 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586446) (= lambda!144741 lambda!144704))))

(assert (=> bs!658195 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586808) (= lambda!144741 lambda!144705))))

(declare-fun bs!658196 () Bool)

(assert (= bs!658196 (and b!4376255 b!4376019)))

(assert (=> bs!658196 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586446) (= lambda!144741 lambda!144713))))

(declare-fun bs!658197 () Bool)

(assert (= bs!658197 (and b!4376255 d!1302220)))

(assert (=> bs!658197 (not (= lambda!144741 lambda!144717))))

(declare-fun bs!658198 () Bool)

(assert (= bs!658198 (and b!4376255 d!1302202)))

(assert (=> bs!658198 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586805) (= lambda!144741 lambda!144706))))

(declare-fun bs!658199 () Bool)

(assert (= bs!658199 (and b!4376255 d!1302304)))

(assert (=> bs!658199 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586995) (= lambda!144741 lambda!144739))))

(declare-fun bs!658200 () Bool)

(assert (= bs!658200 (and b!4376255 d!1302214)))

(assert (=> bs!658200 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586863) (= lambda!144741 lambda!144715))))

(assert (=> bs!658196 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586866) (= lambda!144741 lambda!144714))))

(declare-fun bs!658201 () Bool)

(assert (= bs!658201 (and b!4376255 b!4375992)))

(assert (=> bs!658201 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586446) (= lambda!144741 lambda!144700))))

(declare-fun bs!658202 () Bool)

(assert (= bs!658202 (and b!4376255 b!4376193)))

(assert (=> bs!658202 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586998) (= lambda!144741 lambda!144738))))

(declare-fun bs!658203 () Bool)

(assert (= bs!658203 (and b!4376255 b!4376151)))

(assert (=> bs!658203 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586965) (= lambda!144741 lambda!144733))))

(assert (=> bs!658203 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144741 lambda!144732))))

(declare-fun bs!658204 () Bool)

(assert (= bs!658204 (and b!4376255 d!1302282)))

(assert (=> bs!658204 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586962) (= lambda!144741 lambda!144734))))

(declare-fun bs!658205 () Bool)

(assert (= bs!658205 (and b!4376255 b!4376254)))

(assert (=> bs!658205 (= lambda!144741 lambda!144740)))

(assert (=> bs!658201 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586783) (= lambda!144741 lambda!144701))))

(declare-fun bs!658206 () Bool)

(assert (= bs!658206 (and b!4376255 d!1302152)))

(assert (=> bs!658206 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586780) (= lambda!144741 lambda!144702))))

(declare-fun bs!658207 () Bool)

(assert (= bs!658207 (and b!4376255 d!1302118)))

(assert (=> bs!658207 (not (= lambda!144741 lambda!144613))))

(declare-fun bs!658208 () Bool)

(assert (= bs!658208 (and b!4376255 b!4376005)))

(assert (=> bs!658208 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (+!778 lt!1586446 lt!1586455)) (= lambda!144741 lambda!144707))))

(declare-fun bs!658209 () Bool)

(assert (= bs!658209 (and b!4376255 b!4376018)))

(assert (=> bs!658209 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586446) (= lambda!144741 lambda!144712))))

(declare-fun bs!658210 () Bool)

(assert (= bs!658210 (and b!4376255 b!4376006)))

(assert (=> bs!658210 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (+!778 lt!1586446 lt!1586455)) (= lambda!144741 lambda!144708))))

(declare-fun bs!658211 () Bool)

(assert (= bs!658211 (and b!4376255 b!4375991)))

(assert (=> bs!658211 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586446) (= lambda!144741 lambda!144699))))

(assert (=> bs!658202 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144741 lambda!144737))))

(declare-fun bs!658212 () Bool)

(assert (= bs!658212 (and b!4376255 b!4376192)))

(assert (=> bs!658212 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144741 lambda!144736))))

(assert (=> bs!658210 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1586832) (= lambda!144741 lambda!144709))))

(declare-fun bs!658213 () Bool)

(assert (= bs!658213 (and b!4376255 b!4376150)))

(assert (=> bs!658213 (= (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144741 lambda!144731))))

(assert (=> b!4376255 true))

(declare-fun lt!1587060 () ListMap!2373)

(declare-fun lambda!144742 () Int)

(assert (=> bs!658193 (= (= lt!1587060 lt!1586446) (= lambda!144742 lambda!144703))))

(assert (=> bs!658194 (= (= lt!1587060 lt!1586829) (= lambda!144742 lambda!144710))))

(assert (=> bs!658195 (= (= lt!1587060 lt!1586808) (= lambda!144742 lambda!144705))))

(assert (=> bs!658196 (= (= lt!1587060 lt!1586446) (= lambda!144742 lambda!144713))))

(assert (=> bs!658197 (not (= lambda!144742 lambda!144717))))

(assert (=> bs!658198 (= (= lt!1587060 lt!1586805) (= lambda!144742 lambda!144706))))

(assert (=> bs!658199 (= (= lt!1587060 lt!1586995) (= lambda!144742 lambda!144739))))

(assert (=> bs!658200 (= (= lt!1587060 lt!1586863) (= lambda!144742 lambda!144715))))

(assert (=> bs!658196 (= (= lt!1587060 lt!1586866) (= lambda!144742 lambda!144714))))

(assert (=> bs!658201 (= (= lt!1587060 lt!1586446) (= lambda!144742 lambda!144700))))

(assert (=> bs!658202 (= (= lt!1587060 lt!1586998) (= lambda!144742 lambda!144738))))

(assert (=> bs!658195 (= (= lt!1587060 lt!1586446) (= lambda!144742 lambda!144704))))

(assert (=> b!4376255 (= (= lt!1587060 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144742 lambda!144741))))

(assert (=> bs!658203 (= (= lt!1587060 lt!1586965) (= lambda!144742 lambda!144733))))

(assert (=> bs!658203 (= (= lt!1587060 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144742 lambda!144732))))

(assert (=> bs!658204 (= (= lt!1587060 lt!1586962) (= lambda!144742 lambda!144734))))

(assert (=> bs!658205 (= (= lt!1587060 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144742 lambda!144740))))

(assert (=> bs!658201 (= (= lt!1587060 lt!1586783) (= lambda!144742 lambda!144701))))

(assert (=> bs!658206 (= (= lt!1587060 lt!1586780) (= lambda!144742 lambda!144702))))

(assert (=> bs!658207 (not (= lambda!144742 lambda!144613))))

(assert (=> bs!658208 (= (= lt!1587060 (+!778 lt!1586446 lt!1586455)) (= lambda!144742 lambda!144707))))

(assert (=> bs!658209 (= (= lt!1587060 lt!1586446) (= lambda!144742 lambda!144712))))

(assert (=> bs!658210 (= (= lt!1587060 (+!778 lt!1586446 lt!1586455)) (= lambda!144742 lambda!144708))))

(assert (=> bs!658211 (= (= lt!1587060 lt!1586446) (= lambda!144742 lambda!144699))))

(assert (=> bs!658202 (= (= lt!1587060 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144742 lambda!144737))))

(assert (=> bs!658212 (= (= lt!1587060 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144742 lambda!144736))))

(assert (=> bs!658210 (= (= lt!1587060 lt!1586832) (= lambda!144742 lambda!144709))))

(assert (=> bs!658213 (= (= lt!1587060 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144742 lambda!144731))))

(assert (=> b!4376255 true))

(declare-fun bs!658214 () Bool)

(declare-fun d!1302320 () Bool)

(assert (= bs!658214 (and d!1302320 b!4376000)))

(declare-fun lambda!144743 () Int)

(declare-fun lt!1587057 () ListMap!2373)

(assert (=> bs!658214 (= (= lt!1587057 lt!1586446) (= lambda!144743 lambda!144703))))

(declare-fun bs!658215 () Bool)

(assert (= bs!658215 (and d!1302320 d!1302208)))

(assert (=> bs!658215 (= (= lt!1587057 lt!1586829) (= lambda!144743 lambda!144710))))

(declare-fun bs!658216 () Bool)

(assert (= bs!658216 (and d!1302320 b!4376001)))

(assert (=> bs!658216 (= (= lt!1587057 lt!1586808) (= lambda!144743 lambda!144705))))

(declare-fun bs!658217 () Bool)

(assert (= bs!658217 (and d!1302320 b!4376019)))

(assert (=> bs!658217 (= (= lt!1587057 lt!1586446) (= lambda!144743 lambda!144713))))

(declare-fun bs!658218 () Bool)

(assert (= bs!658218 (and d!1302320 d!1302220)))

(assert (=> bs!658218 (not (= lambda!144743 lambda!144717))))

(declare-fun bs!658219 () Bool)

(assert (= bs!658219 (and d!1302320 d!1302202)))

(assert (=> bs!658219 (= (= lt!1587057 lt!1586805) (= lambda!144743 lambda!144706))))

(declare-fun bs!658220 () Bool)

(assert (= bs!658220 (and d!1302320 d!1302304)))

(assert (=> bs!658220 (= (= lt!1587057 lt!1586995) (= lambda!144743 lambda!144739))))

(declare-fun bs!658221 () Bool)

(assert (= bs!658221 (and d!1302320 d!1302214)))

(assert (=> bs!658221 (= (= lt!1587057 lt!1586863) (= lambda!144743 lambda!144715))))

(assert (=> bs!658217 (= (= lt!1587057 lt!1586866) (= lambda!144743 lambda!144714))))

(declare-fun bs!658222 () Bool)

(assert (= bs!658222 (and d!1302320 b!4375992)))

(assert (=> bs!658222 (= (= lt!1587057 lt!1586446) (= lambda!144743 lambda!144700))))

(declare-fun bs!658223 () Bool)

(assert (= bs!658223 (and d!1302320 b!4376193)))

(assert (=> bs!658223 (= (= lt!1587057 lt!1586998) (= lambda!144743 lambda!144738))))

(assert (=> bs!658216 (= (= lt!1587057 lt!1586446) (= lambda!144743 lambda!144704))))

(declare-fun bs!658224 () Bool)

(assert (= bs!658224 (and d!1302320 b!4376255)))

(assert (=> bs!658224 (= (= lt!1587057 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144743 lambda!144741))))

(declare-fun bs!658225 () Bool)

(assert (= bs!658225 (and d!1302320 b!4376151)))

(assert (=> bs!658225 (= (= lt!1587057 lt!1586965) (= lambda!144743 lambda!144733))))

(assert (=> bs!658225 (= (= lt!1587057 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144743 lambda!144732))))

(declare-fun bs!658226 () Bool)

(assert (= bs!658226 (and d!1302320 d!1302282)))

(assert (=> bs!658226 (= (= lt!1587057 lt!1586962) (= lambda!144743 lambda!144734))))

(declare-fun bs!658227 () Bool)

(assert (= bs!658227 (and d!1302320 b!4376254)))

(assert (=> bs!658227 (= (= lt!1587057 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144743 lambda!144740))))

(assert (=> bs!658222 (= (= lt!1587057 lt!1586783) (= lambda!144743 lambda!144701))))

(declare-fun bs!658228 () Bool)

(assert (= bs!658228 (and d!1302320 d!1302152)))

(assert (=> bs!658228 (= (= lt!1587057 lt!1586780) (= lambda!144743 lambda!144702))))

(declare-fun bs!658229 () Bool)

(assert (= bs!658229 (and d!1302320 d!1302118)))

(assert (=> bs!658229 (not (= lambda!144743 lambda!144613))))

(declare-fun bs!658230 () Bool)

(assert (= bs!658230 (and d!1302320 b!4376005)))

(assert (=> bs!658230 (= (= lt!1587057 (+!778 lt!1586446 lt!1586455)) (= lambda!144743 lambda!144707))))

(declare-fun bs!658231 () Bool)

(assert (= bs!658231 (and d!1302320 b!4376018)))

(assert (=> bs!658231 (= (= lt!1587057 lt!1586446) (= lambda!144743 lambda!144712))))

(declare-fun bs!658232 () Bool)

(assert (= bs!658232 (and d!1302320 b!4376006)))

(assert (=> bs!658232 (= (= lt!1587057 (+!778 lt!1586446 lt!1586455)) (= lambda!144743 lambda!144708))))

(declare-fun bs!658233 () Bool)

(assert (= bs!658233 (and d!1302320 b!4375991)))

(assert (=> bs!658233 (= (= lt!1587057 lt!1586446) (= lambda!144743 lambda!144699))))

(assert (=> bs!658223 (= (= lt!1587057 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144743 lambda!144737))))

(assert (=> bs!658224 (= (= lt!1587057 lt!1587060) (= lambda!144743 lambda!144742))))

(declare-fun bs!658234 () Bool)

(assert (= bs!658234 (and d!1302320 b!4376192)))

(assert (=> bs!658234 (= (= lt!1587057 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144743 lambda!144736))))

(assert (=> bs!658232 (= (= lt!1587057 lt!1586832) (= lambda!144743 lambda!144709))))

(declare-fun bs!658235 () Bool)

(assert (= bs!658235 (and d!1302320 b!4376150)))

(assert (=> bs!658235 (= (= lt!1587057 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144743 lambda!144731))))

(assert (=> d!1302320 true))

(declare-fun bm!304284 () Bool)

(declare-fun call!304290 () Bool)

(declare-fun c!744173 () Bool)

(assert (=> bm!304284 (= call!304290 (forall!9261 (toList!3130 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (ite c!744173 lambda!144740 lambda!144741)))))

(declare-fun b!4376251 () Bool)

(declare-fun e!2724007 () Bool)

(assert (=> b!4376251 (= e!2724007 (invariantList!719 (toList!3130 lt!1587057)))))

(declare-fun b!4376252 () Bool)

(declare-fun res!1801827 () Bool)

(assert (=> b!4376252 (=> (not res!1801827) (not e!2724007))))

(assert (=> b!4376252 (= res!1801827 (forall!9261 (toList!3130 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) lambda!144743))))

(assert (=> d!1302320 e!2724007))

(declare-fun res!1801828 () Bool)

(assert (=> d!1302320 (=> (not res!1801828) (not e!2724007))))

(assert (=> d!1302320 (= res!1801828 (forall!9261 (t!356190 lt!1586460) lambda!144743))))

(declare-fun e!2724006 () ListMap!2373)

(assert (=> d!1302320 (= lt!1587057 e!2724006)))

(assert (=> d!1302320 (= c!744173 ((_ is Nil!49140) (t!356190 lt!1586460)))))

(assert (=> d!1302320 (noDuplicateKeys!573 (t!356190 lt!1586460))))

(assert (=> d!1302320 (= (addToMapMapFromBucket!254 (t!356190 lt!1586460) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) lt!1587057)))

(declare-fun bm!304285 () Bool)

(declare-fun call!304291 () Bool)

(assert (=> bm!304285 (= call!304291 (forall!9261 (ite c!744173 (toList!3130 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (t!356190 lt!1586460)) (ite c!744173 lambda!144740 lambda!144742)))))

(declare-fun call!304289 () Unit!74656)

(declare-fun bm!304286 () Bool)

(assert (=> bm!304286 (= call!304289 (lemmaContainsAllItsOwnKeys!101 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))))))

(declare-fun b!4376253 () Bool)

(declare-fun e!2724008 () Bool)

(assert (=> b!4376253 (= e!2724008 (forall!9261 (toList!3130 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) lambda!144742))))

(assert (=> b!4376254 (= e!2724006 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)))))

(declare-fun lt!1587061 () Unit!74656)

(assert (=> b!4376254 (= lt!1587061 call!304289)))

(assert (=> b!4376254 call!304290))

(declare-fun lt!1587042 () Unit!74656)

(assert (=> b!4376254 (= lt!1587042 lt!1587061)))

(assert (=> b!4376254 call!304291))

(declare-fun lt!1587044 () Unit!74656)

(declare-fun Unit!74804 () Unit!74656)

(assert (=> b!4376254 (= lt!1587044 Unit!74804)))

(assert (=> b!4376255 (= e!2724006 lt!1587060)))

(declare-fun lt!1587050 () ListMap!2373)

(assert (=> b!4376255 (= lt!1587050 (+!778 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (h!54733 (t!356190 lt!1586460))))))

(assert (=> b!4376255 (= lt!1587060 (addToMapMapFromBucket!254 (t!356190 (t!356190 lt!1586460)) (+!778 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) (h!54733 (t!356190 lt!1586460)))))))

(declare-fun lt!1587056 () Unit!74656)

(assert (=> b!4376255 (= lt!1587056 call!304289)))

(assert (=> b!4376255 call!304290))

(declare-fun lt!1587049 () Unit!74656)

(assert (=> b!4376255 (= lt!1587049 lt!1587056)))

(assert (=> b!4376255 (forall!9261 (toList!3130 lt!1587050) lambda!144742)))

(declare-fun lt!1587059 () Unit!74656)

(declare-fun Unit!74805 () Unit!74656)

(assert (=> b!4376255 (= lt!1587059 Unit!74805)))

(assert (=> b!4376255 (forall!9261 (t!356190 (t!356190 lt!1586460)) lambda!144742)))

(declare-fun lt!1587051 () Unit!74656)

(declare-fun Unit!74806 () Unit!74656)

(assert (=> b!4376255 (= lt!1587051 Unit!74806)))

(declare-fun lt!1587053 () Unit!74656)

(declare-fun Unit!74807 () Unit!74656)

(assert (=> b!4376255 (= lt!1587053 Unit!74807)))

(declare-fun lt!1587043 () Unit!74656)

(assert (=> b!4376255 (= lt!1587043 (forallContained!1899 (toList!3130 lt!1587050) lambda!144742 (h!54733 (t!356190 lt!1586460))))))

(assert (=> b!4376255 (contains!11461 lt!1587050 (_1!27625 (h!54733 (t!356190 lt!1586460))))))

(declare-fun lt!1587062 () Unit!74656)

(declare-fun Unit!74808 () Unit!74656)

(assert (=> b!4376255 (= lt!1587062 Unit!74808)))

(assert (=> b!4376255 (contains!11461 lt!1587060 (_1!27625 (h!54733 (t!356190 lt!1586460))))))

(declare-fun lt!1587048 () Unit!74656)

(declare-fun Unit!74809 () Unit!74656)

(assert (=> b!4376255 (= lt!1587048 Unit!74809)))

(assert (=> b!4376255 (forall!9261 (t!356190 lt!1586460) lambda!144742)))

(declare-fun lt!1587055 () Unit!74656)

(declare-fun Unit!74810 () Unit!74656)

(assert (=> b!4376255 (= lt!1587055 Unit!74810)))

(assert (=> b!4376255 (forall!9261 (toList!3130 lt!1587050) lambda!144742)))

(declare-fun lt!1587045 () Unit!74656)

(declare-fun Unit!74811 () Unit!74656)

(assert (=> b!4376255 (= lt!1587045 Unit!74811)))

(declare-fun lt!1587052 () Unit!74656)

(declare-fun Unit!74812 () Unit!74656)

(assert (=> b!4376255 (= lt!1587052 Unit!74812)))

(declare-fun lt!1587058 () Unit!74656)

(assert (=> b!4376255 (= lt!1587058 (addForallContainsKeyThenBeforeAdding!101 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1587060 (_1!27625 (h!54733 (t!356190 lt!1586460))) (_2!27625 (h!54733 (t!356190 lt!1586460)))))))

(assert (=> b!4376255 (forall!9261 (toList!3130 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) lambda!144742)))

(declare-fun lt!1587046 () Unit!74656)

(assert (=> b!4376255 (= lt!1587046 lt!1587058)))

(assert (=> b!4376255 (forall!9261 (toList!3130 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) lambda!144742)))

(declare-fun lt!1587047 () Unit!74656)

(declare-fun Unit!74813 () Unit!74656)

(assert (=> b!4376255 (= lt!1587047 Unit!74813)))

(declare-fun res!1801826 () Bool)

(assert (=> b!4376255 (= res!1801826 call!304291)))

(assert (=> b!4376255 (=> (not res!1801826) (not e!2724008))))

(assert (=> b!4376255 e!2724008))

(declare-fun lt!1587054 () Unit!74656)

(declare-fun Unit!74814 () Unit!74656)

(assert (=> b!4376255 (= lt!1587054 Unit!74814)))

(assert (= (and d!1302320 c!744173) b!4376254))

(assert (= (and d!1302320 (not c!744173)) b!4376255))

(assert (= (and b!4376255 res!1801826) b!4376253))

(assert (= (or b!4376254 b!4376255) bm!304286))

(assert (= (or b!4376254 b!4376255) bm!304284))

(assert (= (or b!4376254 b!4376255) bm!304285))

(assert (= (and d!1302320 res!1801828) b!4376252))

(assert (= (and b!4376252 res!1801827) b!4376251))

(declare-fun m!5009863 () Bool)

(assert (=> bm!304284 m!5009863))

(declare-fun m!5009865 () Bool)

(assert (=> b!4376253 m!5009865))

(declare-fun m!5009867 () Bool)

(assert (=> b!4376251 m!5009867))

(declare-fun m!5009869 () Bool)

(assert (=> b!4376252 m!5009869))

(declare-fun m!5009871 () Bool)

(assert (=> b!4376255 m!5009871))

(declare-fun m!5009873 () Bool)

(assert (=> b!4376255 m!5009873))

(declare-fun m!5009875 () Bool)

(assert (=> b!4376255 m!5009875))

(declare-fun m!5009877 () Bool)

(assert (=> b!4376255 m!5009877))

(declare-fun m!5009879 () Bool)

(assert (=> b!4376255 m!5009879))

(assert (=> b!4376255 m!5009865))

(assert (=> b!4376255 m!5009865))

(assert (=> b!4376255 m!5009363))

(declare-fun m!5009881 () Bool)

(assert (=> b!4376255 m!5009881))

(declare-fun m!5009883 () Bool)

(assert (=> b!4376255 m!5009883))

(assert (=> b!4376255 m!5009879))

(declare-fun m!5009885 () Bool)

(assert (=> b!4376255 m!5009885))

(assert (=> b!4376255 m!5009363))

(assert (=> b!4376255 m!5009875))

(declare-fun m!5009887 () Bool)

(assert (=> b!4376255 m!5009887))

(declare-fun m!5009889 () Bool)

(assert (=> d!1302320 m!5009889))

(declare-fun m!5009891 () Bool)

(assert (=> d!1302320 m!5009891))

(assert (=> bm!304286 m!5009363))

(declare-fun m!5009893 () Bool)

(assert (=> bm!304286 m!5009893))

(declare-fun m!5009895 () Bool)

(assert (=> bm!304285 m!5009895))

(assert (=> b!4376006 d!1302320))

(declare-fun d!1302328 () Bool)

(declare-fun e!2724023 () Bool)

(assert (=> d!1302328 e!2724023))

(declare-fun res!1801836 () Bool)

(assert (=> d!1302328 (=> (not res!1801836) (not e!2724023))))

(declare-fun lt!1587077 () ListMap!2373)

(assert (=> d!1302328 (= res!1801836 (contains!11461 lt!1587077 (_1!27625 (h!54733 lt!1586460))))))

(declare-fun lt!1587079 () List!49264)

(assert (=> d!1302328 (= lt!1587077 (ListMap!2374 lt!1587079))))

(declare-fun lt!1587080 () Unit!74656)

(declare-fun lt!1587078 () Unit!74656)

(assert (=> d!1302328 (= lt!1587080 lt!1587078)))

(assert (=> d!1302328 (= (getValueByKey!538 lt!1587079 (_1!27625 (h!54733 lt!1586460))) (Some!10551 (_2!27625 (h!54733 lt!1586460))))))

(assert (=> d!1302328 (= lt!1587078 (lemmaContainsTupThenGetReturnValue!302 lt!1587079 (_1!27625 (h!54733 lt!1586460)) (_2!27625 (h!54733 lt!1586460))))))

(assert (=> d!1302328 (= lt!1587079 (insertNoDuplicatedKeys!137 (toList!3130 (+!778 lt!1586446 lt!1586455)) (_1!27625 (h!54733 lt!1586460)) (_2!27625 (h!54733 lt!1586460))))))

(assert (=> d!1302328 (= (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460)) lt!1587077)))

(declare-fun b!4376281 () Bool)

(declare-fun res!1801837 () Bool)

(assert (=> b!4376281 (=> (not res!1801837) (not e!2724023))))

(assert (=> b!4376281 (= res!1801837 (= (getValueByKey!538 (toList!3130 lt!1587077) (_1!27625 (h!54733 lt!1586460))) (Some!10551 (_2!27625 (h!54733 lt!1586460)))))))

(declare-fun b!4376282 () Bool)

(assert (=> b!4376282 (= e!2724023 (contains!11466 (toList!3130 lt!1587077) (h!54733 lt!1586460)))))

(assert (= (and d!1302328 res!1801836) b!4376281))

(assert (= (and b!4376281 res!1801837) b!4376282))

(declare-fun m!5009897 () Bool)

(assert (=> d!1302328 m!5009897))

(declare-fun m!5009899 () Bool)

(assert (=> d!1302328 m!5009899))

(declare-fun m!5009901 () Bool)

(assert (=> d!1302328 m!5009901))

(declare-fun m!5009903 () Bool)

(assert (=> d!1302328 m!5009903))

(declare-fun m!5009905 () Bool)

(assert (=> b!4376281 m!5009905))

(declare-fun m!5009907 () Bool)

(assert (=> b!4376282 m!5009907))

(assert (=> b!4376006 d!1302328))

(declare-fun bs!658242 () Bool)

(declare-fun d!1302330 () Bool)

(assert (= bs!658242 (and d!1302330 d!1302320)))

(declare-fun lambda!144749 () Int)

(assert (=> bs!658242 (= (= lt!1586832 lt!1587057) (= lambda!144749 lambda!144743))))

(declare-fun bs!658244 () Bool)

(assert (= bs!658244 (and d!1302330 b!4376000)))

(assert (=> bs!658244 (= (= lt!1586832 lt!1586446) (= lambda!144749 lambda!144703))))

(declare-fun bs!658246 () Bool)

(assert (= bs!658246 (and d!1302330 d!1302208)))

(assert (=> bs!658246 (= (= lt!1586832 lt!1586829) (= lambda!144749 lambda!144710))))

(declare-fun bs!658248 () Bool)

(assert (= bs!658248 (and d!1302330 b!4376001)))

(assert (=> bs!658248 (= (= lt!1586832 lt!1586808) (= lambda!144749 lambda!144705))))

(declare-fun bs!658250 () Bool)

(assert (= bs!658250 (and d!1302330 b!4376019)))

(assert (=> bs!658250 (= (= lt!1586832 lt!1586446) (= lambda!144749 lambda!144713))))

(declare-fun bs!658252 () Bool)

(assert (= bs!658252 (and d!1302330 d!1302220)))

(assert (=> bs!658252 (not (= lambda!144749 lambda!144717))))

(declare-fun bs!658254 () Bool)

(assert (= bs!658254 (and d!1302330 d!1302202)))

(assert (=> bs!658254 (= (= lt!1586832 lt!1586805) (= lambda!144749 lambda!144706))))

(declare-fun bs!658256 () Bool)

(assert (= bs!658256 (and d!1302330 d!1302304)))

(assert (=> bs!658256 (= (= lt!1586832 lt!1586995) (= lambda!144749 lambda!144739))))

(declare-fun bs!658258 () Bool)

(assert (= bs!658258 (and d!1302330 d!1302214)))

(assert (=> bs!658258 (= (= lt!1586832 lt!1586863) (= lambda!144749 lambda!144715))))

(assert (=> bs!658250 (= (= lt!1586832 lt!1586866) (= lambda!144749 lambda!144714))))

(declare-fun bs!658260 () Bool)

(assert (= bs!658260 (and d!1302330 b!4375992)))

(assert (=> bs!658260 (= (= lt!1586832 lt!1586446) (= lambda!144749 lambda!144700))))

(declare-fun bs!658262 () Bool)

(assert (= bs!658262 (and d!1302330 b!4376193)))

(assert (=> bs!658262 (= (= lt!1586832 lt!1586998) (= lambda!144749 lambda!144738))))

(assert (=> bs!658248 (= (= lt!1586832 lt!1586446) (= lambda!144749 lambda!144704))))

(declare-fun bs!658263 () Bool)

(assert (= bs!658263 (and d!1302330 b!4376255)))

(assert (=> bs!658263 (= (= lt!1586832 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144749 lambda!144741))))

(declare-fun bs!658265 () Bool)

(assert (= bs!658265 (and d!1302330 b!4376151)))

(assert (=> bs!658265 (= (= lt!1586832 lt!1586965) (= lambda!144749 lambda!144733))))

(assert (=> bs!658265 (= (= lt!1586832 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144749 lambda!144732))))

(declare-fun bs!658267 () Bool)

(assert (= bs!658267 (and d!1302330 d!1302282)))

(assert (=> bs!658267 (= (= lt!1586832 lt!1586962) (= lambda!144749 lambda!144734))))

(declare-fun bs!658269 () Bool)

(assert (= bs!658269 (and d!1302330 b!4376254)))

(assert (=> bs!658269 (= (= lt!1586832 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144749 lambda!144740))))

(assert (=> bs!658260 (= (= lt!1586832 lt!1586783) (= lambda!144749 lambda!144701))))

(declare-fun bs!658272 () Bool)

(assert (= bs!658272 (and d!1302330 d!1302152)))

(assert (=> bs!658272 (= (= lt!1586832 lt!1586780) (= lambda!144749 lambda!144702))))

(declare-fun bs!658273 () Bool)

(assert (= bs!658273 (and d!1302330 d!1302118)))

(assert (=> bs!658273 (not (= lambda!144749 lambda!144613))))

(declare-fun bs!658274 () Bool)

(assert (= bs!658274 (and d!1302330 b!4376005)))

(assert (=> bs!658274 (= (= lt!1586832 (+!778 lt!1586446 lt!1586455)) (= lambda!144749 lambda!144707))))

(declare-fun bs!658275 () Bool)

(assert (= bs!658275 (and d!1302330 b!4376018)))

(assert (=> bs!658275 (= (= lt!1586832 lt!1586446) (= lambda!144749 lambda!144712))))

(declare-fun bs!658276 () Bool)

(assert (= bs!658276 (and d!1302330 b!4376006)))

(assert (=> bs!658276 (= (= lt!1586832 (+!778 lt!1586446 lt!1586455)) (= lambda!144749 lambda!144708))))

(declare-fun bs!658277 () Bool)

(assert (= bs!658277 (and d!1302330 b!4375991)))

(assert (=> bs!658277 (= (= lt!1586832 lt!1586446) (= lambda!144749 lambda!144699))))

(assert (=> bs!658262 (= (= lt!1586832 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144749 lambda!144737))))

(assert (=> bs!658263 (= (= lt!1586832 lt!1587060) (= lambda!144749 lambda!144742))))

(declare-fun bs!658279 () Bool)

(assert (= bs!658279 (and d!1302330 b!4376192)))

(assert (=> bs!658279 (= (= lt!1586832 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144749 lambda!144736))))

(assert (=> bs!658276 (= lambda!144749 lambda!144709)))

(declare-fun bs!658282 () Bool)

(assert (= bs!658282 (and d!1302330 b!4376150)))

(assert (=> bs!658282 (= (= lt!1586832 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144749 lambda!144731))))

(assert (=> d!1302330 true))

(assert (=> d!1302330 (forall!9261 (toList!3130 (+!778 lt!1586446 lt!1586455)) lambda!144749)))

(declare-fun lt!1587115 () Unit!74656)

(declare-fun choose!27266 (ListMap!2373 ListMap!2373 K!10500 V!10746) Unit!74656)

(assert (=> d!1302330 (= lt!1587115 (choose!27266 (+!778 lt!1586446 lt!1586455) lt!1586832 (_1!27625 (h!54733 lt!1586460)) (_2!27625 (h!54733 lt!1586460))))))

(assert (=> d!1302330 (forall!9261 (toList!3130 (+!778 (+!778 lt!1586446 lt!1586455) (tuple2!48663 (_1!27625 (h!54733 lt!1586460)) (_2!27625 (h!54733 lt!1586460))))) lambda!144749)))

(assert (=> d!1302330 (= (addForallContainsKeyThenBeforeAdding!101 (+!778 lt!1586446 lt!1586455) lt!1586832 (_1!27625 (h!54733 lt!1586460)) (_2!27625 (h!54733 lt!1586460))) lt!1587115)))

(declare-fun bs!658290 () Bool)

(assert (= bs!658290 d!1302330))

(declare-fun m!5009955 () Bool)

(assert (=> bs!658290 m!5009955))

(assert (=> bs!658290 m!5008857))

(declare-fun m!5009957 () Bool)

(assert (=> bs!658290 m!5009957))

(assert (=> bs!658290 m!5008857))

(declare-fun m!5009959 () Bool)

(assert (=> bs!658290 m!5009959))

(declare-fun m!5009961 () Bool)

(assert (=> bs!658290 m!5009961))

(assert (=> b!4376006 d!1302330))

(declare-fun bs!658313 () Bool)

(declare-fun d!1302348 () Bool)

(assert (= bs!658313 (and d!1302348 d!1302320)))

(declare-fun lambda!144755 () Int)

(assert (=> bs!658313 (= (= lt!1586446 lt!1587057) (= lambda!144755 lambda!144743))))

(declare-fun bs!658315 () Bool)

(assert (= bs!658315 (and d!1302348 b!4376000)))

(assert (=> bs!658315 (= lambda!144755 lambda!144703)))

(declare-fun bs!658317 () Bool)

(assert (= bs!658317 (and d!1302348 d!1302208)))

(assert (=> bs!658317 (= (= lt!1586446 lt!1586829) (= lambda!144755 lambda!144710))))

(declare-fun bs!658318 () Bool)

(assert (= bs!658318 (and d!1302348 b!4376001)))

(assert (=> bs!658318 (= (= lt!1586446 lt!1586808) (= lambda!144755 lambda!144705))))

(declare-fun bs!658319 () Bool)

(assert (= bs!658319 (and d!1302348 b!4376019)))

(assert (=> bs!658319 (= lambda!144755 lambda!144713)))

(declare-fun bs!658321 () Bool)

(assert (= bs!658321 (and d!1302348 d!1302220)))

(assert (=> bs!658321 (not (= lambda!144755 lambda!144717))))

(declare-fun bs!658322 () Bool)

(assert (= bs!658322 (and d!1302348 d!1302202)))

(assert (=> bs!658322 (= (= lt!1586446 lt!1586805) (= lambda!144755 lambda!144706))))

(declare-fun bs!658323 () Bool)

(assert (= bs!658323 (and d!1302348 d!1302214)))

(assert (=> bs!658323 (= (= lt!1586446 lt!1586863) (= lambda!144755 lambda!144715))))

(assert (=> bs!658319 (= (= lt!1586446 lt!1586866) (= lambda!144755 lambda!144714))))

(declare-fun bs!658325 () Bool)

(assert (= bs!658325 (and d!1302348 b!4375992)))

(assert (=> bs!658325 (= lambda!144755 lambda!144700)))

(declare-fun bs!658326 () Bool)

(assert (= bs!658326 (and d!1302348 b!4376193)))

(assert (=> bs!658326 (= (= lt!1586446 lt!1586998) (= lambda!144755 lambda!144738))))

(assert (=> bs!658318 (= lambda!144755 lambda!144704)))

(declare-fun bs!658329 () Bool)

(assert (= bs!658329 (and d!1302348 b!4376255)))

(assert (=> bs!658329 (= (= lt!1586446 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144755 lambda!144741))))

(declare-fun bs!658331 () Bool)

(assert (= bs!658331 (and d!1302348 b!4376151)))

(assert (=> bs!658331 (= (= lt!1586446 lt!1586965) (= lambda!144755 lambda!144733))))

(assert (=> bs!658331 (= (= lt!1586446 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144755 lambda!144732))))

(declare-fun bs!658333 () Bool)

(assert (= bs!658333 (and d!1302348 d!1302282)))

(assert (=> bs!658333 (= (= lt!1586446 lt!1586962) (= lambda!144755 lambda!144734))))

(declare-fun bs!658335 () Bool)

(assert (= bs!658335 (and d!1302348 b!4376254)))

(assert (=> bs!658335 (= (= lt!1586446 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144755 lambda!144740))))

(declare-fun bs!658337 () Bool)

(assert (= bs!658337 (and d!1302348 d!1302330)))

(assert (=> bs!658337 (= (= lt!1586446 lt!1586832) (= lambda!144755 lambda!144749))))

(declare-fun bs!658339 () Bool)

(assert (= bs!658339 (and d!1302348 d!1302304)))

(assert (=> bs!658339 (= (= lt!1586446 lt!1586995) (= lambda!144755 lambda!144739))))

(assert (=> bs!658325 (= (= lt!1586446 lt!1586783) (= lambda!144755 lambda!144701))))

(declare-fun bs!658340 () Bool)

(assert (= bs!658340 (and d!1302348 d!1302152)))

(assert (=> bs!658340 (= (= lt!1586446 lt!1586780) (= lambda!144755 lambda!144702))))

(declare-fun bs!658341 () Bool)

(assert (= bs!658341 (and d!1302348 d!1302118)))

(assert (=> bs!658341 (not (= lambda!144755 lambda!144613))))

(declare-fun bs!658342 () Bool)

(assert (= bs!658342 (and d!1302348 b!4376005)))

(assert (=> bs!658342 (= (= lt!1586446 (+!778 lt!1586446 lt!1586455)) (= lambda!144755 lambda!144707))))

(declare-fun bs!658343 () Bool)

(assert (= bs!658343 (and d!1302348 b!4376018)))

(assert (=> bs!658343 (= lambda!144755 lambda!144712)))

(declare-fun bs!658344 () Bool)

(assert (= bs!658344 (and d!1302348 b!4376006)))

(assert (=> bs!658344 (= (= lt!1586446 (+!778 lt!1586446 lt!1586455)) (= lambda!144755 lambda!144708))))

(declare-fun bs!658345 () Bool)

(assert (= bs!658345 (and d!1302348 b!4375991)))

(assert (=> bs!658345 (= lambda!144755 lambda!144699)))

(assert (=> bs!658326 (= (= lt!1586446 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144755 lambda!144737))))

(assert (=> bs!658329 (= (= lt!1586446 lt!1587060) (= lambda!144755 lambda!144742))))

(declare-fun bs!658346 () Bool)

(assert (= bs!658346 (and d!1302348 b!4376192)))

(assert (=> bs!658346 (= (= lt!1586446 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144755 lambda!144736))))

(assert (=> bs!658344 (= (= lt!1586446 lt!1586832) (= lambda!144755 lambda!144709))))

(declare-fun bs!658347 () Bool)

(assert (= bs!658347 (and d!1302348 b!4376150)))

(assert (=> bs!658347 (= (= lt!1586446 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144755 lambda!144731))))

(assert (=> d!1302348 true))

(assert (=> d!1302348 (forall!9261 (toList!3130 lt!1586446) lambda!144755)))

(declare-fun lt!1587118 () Unit!74656)

(declare-fun choose!27267 (ListMap!2373) Unit!74656)

(assert (=> d!1302348 (= lt!1587118 (choose!27267 lt!1586446))))

(assert (=> d!1302348 (= (lemmaContainsAllItsOwnKeys!101 lt!1586446) lt!1587118)))

(declare-fun bs!658348 () Bool)

(assert (= bs!658348 d!1302348))

(declare-fun m!5009963 () Bool)

(assert (=> bs!658348 m!5009963))

(declare-fun m!5009965 () Bool)

(assert (=> bs!658348 m!5009965))

(assert (=> bm!304248 d!1302348))

(declare-fun d!1302350 () Bool)

(declare-fun res!1801859 () Bool)

(declare-fun e!2724051 () Bool)

(assert (=> d!1302350 (=> res!1801859 e!2724051)))

(assert (=> d!1302350 (= res!1801859 ((_ is Nil!49140) (ite c!744112 (toList!3130 lt!1586446) newBucket!200)))))

(assert (=> d!1302350 (= (forall!9261 (ite c!744112 (toList!3130 lt!1586446) newBucket!200) (ite c!744112 lambda!144703 lambda!144705)) e!2724051)))

(declare-fun b!4376319 () Bool)

(declare-fun e!2724052 () Bool)

(assert (=> b!4376319 (= e!2724051 e!2724052)))

(declare-fun res!1801860 () Bool)

(assert (=> b!4376319 (=> (not res!1801860) (not e!2724052))))

(assert (=> b!4376319 (= res!1801860 (dynLambda!20705 (ite c!744112 lambda!144703 lambda!144705) (h!54733 (ite c!744112 (toList!3130 lt!1586446) newBucket!200))))))

(declare-fun b!4376320 () Bool)

(assert (=> b!4376320 (= e!2724052 (forall!9261 (t!356190 (ite c!744112 (toList!3130 lt!1586446) newBucket!200)) (ite c!744112 lambda!144703 lambda!144705)))))

(assert (= (and d!1302350 (not res!1801859)) b!4376319))

(assert (= (and b!4376319 res!1801860) b!4376320))

(declare-fun b_lambda!134563 () Bool)

(assert (=> (not b_lambda!134563) (not b!4376319)))

(declare-fun m!5009999 () Bool)

(assert (=> b!4376319 m!5009999))

(declare-fun m!5010001 () Bool)

(assert (=> b!4376320 m!5010001))

(assert (=> bm!304250 d!1302350))

(declare-fun d!1302354 () Bool)

(declare-fun lt!1587127 () Bool)

(assert (=> d!1302354 (= lt!1587127 (select (content!7802 (toList!3130 lt!1586869)) lt!1586455))))

(declare-fun e!2724059 () Bool)

(assert (=> d!1302354 (= lt!1587127 e!2724059)))

(declare-fun res!1801865 () Bool)

(assert (=> d!1302354 (=> (not res!1801865) (not e!2724059))))

(assert (=> d!1302354 (= res!1801865 ((_ is Cons!49140) (toList!3130 lt!1586869)))))

(assert (=> d!1302354 (= (contains!11466 (toList!3130 lt!1586869) lt!1586455) lt!1587127)))

(declare-fun b!4376330 () Bool)

(declare-fun e!2724060 () Bool)

(assert (=> b!4376330 (= e!2724059 e!2724060)))

(declare-fun res!1801864 () Bool)

(assert (=> b!4376330 (=> res!1801864 e!2724060)))

(assert (=> b!4376330 (= res!1801864 (= (h!54733 (toList!3130 lt!1586869)) lt!1586455))))

(declare-fun b!4376331 () Bool)

(assert (=> b!4376331 (= e!2724060 (contains!11466 (t!356190 (toList!3130 lt!1586869)) lt!1586455))))

(assert (= (and d!1302354 res!1801865) b!4376330))

(assert (= (and b!4376330 (not res!1801864)) b!4376331))

(declare-fun m!5010003 () Bool)

(assert (=> d!1302354 m!5010003))

(declare-fun m!5010005 () Bool)

(assert (=> d!1302354 m!5010005))

(declare-fun m!5010007 () Bool)

(assert (=> b!4376331 m!5010007))

(assert (=> b!4376021 d!1302354))

(declare-fun b!4376343 () Bool)

(declare-fun e!2724066 () Option!10551)

(assert (=> b!4376343 (= e!2724066 None!10550)))

(declare-fun b!4376340 () Bool)

(declare-fun e!2724065 () Option!10551)

(assert (=> b!4376340 (= e!2724065 (Some!10550 (_2!27626 (h!54734 (toList!3129 lm!1707)))))))

(declare-fun b!4376342 () Bool)

(assert (=> b!4376342 (= e!2724066 (getValueByKey!537 (t!356191 (toList!3129 lm!1707)) hash!377))))

(declare-fun d!1302356 () Bool)

(declare-fun c!744197 () Bool)

(assert (=> d!1302356 (= c!744197 (and ((_ is Cons!49141) (toList!3129 lm!1707)) (= (_1!27626 (h!54734 (toList!3129 lm!1707))) hash!377)))))

(assert (=> d!1302356 (= (getValueByKey!537 (toList!3129 lm!1707) hash!377) e!2724065)))

(declare-fun b!4376341 () Bool)

(assert (=> b!4376341 (= e!2724065 e!2724066)))

(declare-fun c!744198 () Bool)

(assert (=> b!4376341 (= c!744198 (and ((_ is Cons!49141) (toList!3129 lm!1707)) (not (= (_1!27626 (h!54734 (toList!3129 lm!1707))) hash!377))))))

(assert (= (and d!1302356 c!744197) b!4376340))

(assert (= (and d!1302356 (not c!744197)) b!4376341))

(assert (= (and b!4376341 c!744198) b!4376342))

(assert (= (and b!4376341 (not c!744198)) b!4376343))

(declare-fun m!5010029 () Bool)

(assert (=> b!4376342 m!5010029))

(assert (=> b!4375809 d!1302356))

(declare-fun d!1302360 () Bool)

(declare-fun e!2724067 () Bool)

(assert (=> d!1302360 e!2724067))

(declare-fun res!1801866 () Bool)

(assert (=> d!1302360 (=> (not res!1801866) (not e!2724067))))

(declare-fun lt!1587128 () ListMap!2373)

(assert (=> d!1302360 (= res!1801866 (contains!11461 lt!1587128 (_1!27625 (tuple2!48663 key!3918 newValue!99))))))

(declare-fun lt!1587130 () List!49264)

(assert (=> d!1302360 (= lt!1587128 (ListMap!2374 lt!1587130))))

(declare-fun lt!1587131 () Unit!74656)

(declare-fun lt!1587129 () Unit!74656)

(assert (=> d!1302360 (= lt!1587131 lt!1587129)))

(assert (=> d!1302360 (= (getValueByKey!538 lt!1587130 (_1!27625 (tuple2!48663 key!3918 newValue!99))) (Some!10551 (_2!27625 (tuple2!48663 key!3918 newValue!99))))))

(assert (=> d!1302360 (= lt!1587129 (lemmaContainsTupThenGetReturnValue!302 lt!1587130 (_1!27625 (tuple2!48663 key!3918 newValue!99)) (_2!27625 (tuple2!48663 key!3918 newValue!99))))))

(assert (=> d!1302360 (= lt!1587130 (insertNoDuplicatedKeys!137 (toList!3130 lt!1586446) (_1!27625 (tuple2!48663 key!3918 newValue!99)) (_2!27625 (tuple2!48663 key!3918 newValue!99))))))

(assert (=> d!1302360 (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1587128)))

(declare-fun b!4376344 () Bool)

(declare-fun res!1801867 () Bool)

(assert (=> b!4376344 (=> (not res!1801867) (not e!2724067))))

(assert (=> b!4376344 (= res!1801867 (= (getValueByKey!538 (toList!3130 lt!1587128) (_1!27625 (tuple2!48663 key!3918 newValue!99))) (Some!10551 (_2!27625 (tuple2!48663 key!3918 newValue!99)))))))

(declare-fun b!4376345 () Bool)

(assert (=> b!4376345 (= e!2724067 (contains!11466 (toList!3130 lt!1587128) (tuple2!48663 key!3918 newValue!99)))))

(assert (= (and d!1302360 res!1801866) b!4376344))

(assert (= (and b!4376344 res!1801867) b!4376345))

(declare-fun m!5010031 () Bool)

(assert (=> d!1302360 m!5010031))

(declare-fun m!5010033 () Bool)

(assert (=> d!1302360 m!5010033))

(declare-fun m!5010035 () Bool)

(assert (=> d!1302360 m!5010035))

(declare-fun m!5010037 () Bool)

(assert (=> d!1302360 m!5010037))

(declare-fun m!5010039 () Bool)

(assert (=> b!4376344 m!5010039))

(declare-fun m!5010041 () Bool)

(assert (=> b!4376345 m!5010041))

(assert (=> d!1302206 d!1302360))

(declare-fun d!1302362 () Bool)

(declare-fun e!2724068 () Bool)

(assert (=> d!1302362 e!2724068))

(declare-fun res!1801868 () Bool)

(assert (=> d!1302362 (=> (not res!1801868) (not e!2724068))))

(declare-fun lt!1587132 () ListMap!2373)

(assert (=> d!1302362 (= res!1801868 (contains!11461 lt!1587132 (_1!27625 (tuple2!48663 key!3918 newValue!99))))))

(declare-fun lt!1587134 () List!49264)

(assert (=> d!1302362 (= lt!1587132 (ListMap!2374 lt!1587134))))

(declare-fun lt!1587135 () Unit!74656)

(declare-fun lt!1587133 () Unit!74656)

(assert (=> d!1302362 (= lt!1587135 lt!1587133)))

(assert (=> d!1302362 (= (getValueByKey!538 lt!1587134 (_1!27625 (tuple2!48663 key!3918 newValue!99))) (Some!10551 (_2!27625 (tuple2!48663 key!3918 newValue!99))))))

(assert (=> d!1302362 (= lt!1587133 (lemmaContainsTupThenGetReturnValue!302 lt!1587134 (_1!27625 (tuple2!48663 key!3918 newValue!99)) (_2!27625 (tuple2!48663 key!3918 newValue!99))))))

(assert (=> d!1302362 (= lt!1587134 (insertNoDuplicatedKeys!137 (toList!3130 (addToMapMapFromBucket!254 lt!1586460 lt!1586446)) (_1!27625 (tuple2!48663 key!3918 newValue!99)) (_2!27625 (tuple2!48663 key!3918 newValue!99))))))

(assert (=> d!1302362 (= (+!778 (addToMapMapFromBucket!254 lt!1586460 lt!1586446) (tuple2!48663 key!3918 newValue!99)) lt!1587132)))

(declare-fun b!4376346 () Bool)

(declare-fun res!1801869 () Bool)

(assert (=> b!4376346 (=> (not res!1801869) (not e!2724068))))

(assert (=> b!4376346 (= res!1801869 (= (getValueByKey!538 (toList!3130 lt!1587132) (_1!27625 (tuple2!48663 key!3918 newValue!99))) (Some!10551 (_2!27625 (tuple2!48663 key!3918 newValue!99)))))))

(declare-fun b!4376347 () Bool)

(assert (=> b!4376347 (= e!2724068 (contains!11466 (toList!3130 lt!1587132) (tuple2!48663 key!3918 newValue!99)))))

(assert (= (and d!1302362 res!1801868) b!4376346))

(assert (= (and b!4376346 res!1801869) b!4376347))

(declare-fun m!5010043 () Bool)

(assert (=> d!1302362 m!5010043))

(declare-fun m!5010045 () Bool)

(assert (=> d!1302362 m!5010045))

(declare-fun m!5010047 () Bool)

(assert (=> d!1302362 m!5010047))

(declare-fun m!5010049 () Bool)

(assert (=> d!1302362 m!5010049))

(declare-fun m!5010051 () Bool)

(assert (=> b!4376346 m!5010051))

(declare-fun m!5010053 () Bool)

(assert (=> b!4376347 m!5010053))

(assert (=> d!1302206 d!1302362))

(declare-fun bs!658349 () Bool)

(declare-fun b!4376351 () Bool)

(assert (= bs!658349 (and b!4376351 d!1302320)))

(declare-fun lambda!144756 () Int)

(assert (=> bs!658349 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1587057) (= lambda!144756 lambda!144743))))

(declare-fun bs!658350 () Bool)

(assert (= bs!658350 (and b!4376351 b!4376000)))

(assert (=> bs!658350 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144756 lambda!144703))))

(declare-fun bs!658351 () Bool)

(assert (= bs!658351 (and b!4376351 d!1302208)))

(assert (=> bs!658351 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586829) (= lambda!144756 lambda!144710))))

(declare-fun bs!658352 () Bool)

(assert (= bs!658352 (and b!4376351 b!4376001)))

(assert (=> bs!658352 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586808) (= lambda!144756 lambda!144705))))

(declare-fun bs!658353 () Bool)

(assert (= bs!658353 (and b!4376351 b!4376019)))

(assert (=> bs!658353 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144756 lambda!144713))))

(declare-fun bs!658354 () Bool)

(assert (= bs!658354 (and b!4376351 d!1302220)))

(assert (=> bs!658354 (not (= lambda!144756 lambda!144717))))

(declare-fun bs!658355 () Bool)

(assert (= bs!658355 (and b!4376351 d!1302202)))

(assert (=> bs!658355 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586805) (= lambda!144756 lambda!144706))))

(declare-fun bs!658356 () Bool)

(assert (= bs!658356 (and b!4376351 d!1302214)))

(assert (=> bs!658356 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586863) (= lambda!144756 lambda!144715))))

(assert (=> bs!658353 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586866) (= lambda!144756 lambda!144714))))

(declare-fun bs!658357 () Bool)

(assert (= bs!658357 (and b!4376351 b!4375992)))

(assert (=> bs!658357 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144756 lambda!144700))))

(declare-fun bs!658358 () Bool)

(assert (= bs!658358 (and b!4376351 b!4376193)))

(assert (=> bs!658358 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586998) (= lambda!144756 lambda!144738))))

(assert (=> bs!658352 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144756 lambda!144704))))

(declare-fun bs!658359 () Bool)

(assert (= bs!658359 (and b!4376351 b!4376255)))

(assert (=> bs!658359 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144756 lambda!144741))))

(declare-fun bs!658360 () Bool)

(assert (= bs!658360 (and b!4376351 b!4376151)))

(assert (=> bs!658360 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586965) (= lambda!144756 lambda!144733))))

(assert (=> bs!658360 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144756 lambda!144732))))

(declare-fun bs!658361 () Bool)

(assert (= bs!658361 (and b!4376351 d!1302282)))

(assert (=> bs!658361 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586962) (= lambda!144756 lambda!144734))))

(declare-fun bs!658362 () Bool)

(assert (= bs!658362 (and b!4376351 b!4376254)))

(assert (=> bs!658362 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144756 lambda!144740))))

(declare-fun bs!658363 () Bool)

(assert (= bs!658363 (and b!4376351 d!1302330)))

(assert (=> bs!658363 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586832) (= lambda!144756 lambda!144749))))

(declare-fun bs!658364 () Bool)

(assert (= bs!658364 (and b!4376351 d!1302304)))

(assert (=> bs!658364 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586995) (= lambda!144756 lambda!144739))))

(assert (=> bs!658357 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586783) (= lambda!144756 lambda!144701))))

(declare-fun bs!658365 () Bool)

(assert (= bs!658365 (and b!4376351 d!1302152)))

(assert (=> bs!658365 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586780) (= lambda!144756 lambda!144702))))

(declare-fun bs!658366 () Bool)

(assert (= bs!658366 (and b!4376351 d!1302118)))

(assert (=> bs!658366 (not (= lambda!144756 lambda!144613))))

(declare-fun bs!658367 () Bool)

(assert (= bs!658367 (and b!4376351 b!4376005)))

(assert (=> bs!658367 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (+!778 lt!1586446 lt!1586455)) (= lambda!144756 lambda!144707))))

(declare-fun bs!658368 () Bool)

(assert (= bs!658368 (and b!4376351 b!4376018)))

(assert (=> bs!658368 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144756 lambda!144712))))

(declare-fun bs!658369 () Bool)

(assert (= bs!658369 (and b!4376351 d!1302348)))

(assert (=> bs!658369 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144756 lambda!144755))))

(declare-fun bs!658370 () Bool)

(assert (= bs!658370 (and b!4376351 b!4376006)))

(assert (=> bs!658370 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (+!778 lt!1586446 lt!1586455)) (= lambda!144756 lambda!144708))))

(declare-fun bs!658371 () Bool)

(assert (= bs!658371 (and b!4376351 b!4375991)))

(assert (=> bs!658371 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144756 lambda!144699))))

(assert (=> bs!658358 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144756 lambda!144737))))

(assert (=> bs!658359 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1587060) (= lambda!144756 lambda!144742))))

(declare-fun bs!658372 () Bool)

(assert (= bs!658372 (and b!4376351 b!4376192)))

(assert (=> bs!658372 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144756 lambda!144736))))

(assert (=> bs!658370 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586832) (= lambda!144756 lambda!144709))))

(declare-fun bs!658373 () Bool)

(assert (= bs!658373 (and b!4376351 b!4376150)))

(assert (=> bs!658373 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144756 lambda!144731))))

(assert (=> b!4376351 true))

(declare-fun bs!658374 () Bool)

(declare-fun b!4376352 () Bool)

(assert (= bs!658374 (and b!4376352 b!4376351)))

(declare-fun lambda!144759 () Int)

(assert (=> bs!658374 (= lambda!144759 lambda!144756)))

(declare-fun bs!658375 () Bool)

(assert (= bs!658375 (and b!4376352 d!1302320)))

(assert (=> bs!658375 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1587057) (= lambda!144759 lambda!144743))))

(declare-fun bs!658376 () Bool)

(assert (= bs!658376 (and b!4376352 b!4376000)))

(assert (=> bs!658376 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144759 lambda!144703))))

(declare-fun bs!658377 () Bool)

(assert (= bs!658377 (and b!4376352 d!1302208)))

(assert (=> bs!658377 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586829) (= lambda!144759 lambda!144710))))

(declare-fun bs!658378 () Bool)

(assert (= bs!658378 (and b!4376352 b!4376001)))

(assert (=> bs!658378 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586808) (= lambda!144759 lambda!144705))))

(declare-fun bs!658379 () Bool)

(assert (= bs!658379 (and b!4376352 b!4376019)))

(assert (=> bs!658379 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144759 lambda!144713))))

(declare-fun bs!658380 () Bool)

(assert (= bs!658380 (and b!4376352 d!1302220)))

(assert (=> bs!658380 (not (= lambda!144759 lambda!144717))))

(declare-fun bs!658381 () Bool)

(assert (= bs!658381 (and b!4376352 d!1302202)))

(assert (=> bs!658381 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586805) (= lambda!144759 lambda!144706))))

(declare-fun bs!658382 () Bool)

(assert (= bs!658382 (and b!4376352 d!1302214)))

(assert (=> bs!658382 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586863) (= lambda!144759 lambda!144715))))

(assert (=> bs!658379 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586866) (= lambda!144759 lambda!144714))))

(declare-fun bs!658383 () Bool)

(assert (= bs!658383 (and b!4376352 b!4375992)))

(assert (=> bs!658383 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144759 lambda!144700))))

(declare-fun bs!658384 () Bool)

(assert (= bs!658384 (and b!4376352 b!4376193)))

(assert (=> bs!658384 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586998) (= lambda!144759 lambda!144738))))

(assert (=> bs!658378 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144759 lambda!144704))))

(declare-fun bs!658385 () Bool)

(assert (= bs!658385 (and b!4376352 b!4376255)))

(assert (=> bs!658385 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144759 lambda!144741))))

(declare-fun bs!658386 () Bool)

(assert (= bs!658386 (and b!4376352 b!4376151)))

(assert (=> bs!658386 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586965) (= lambda!144759 lambda!144733))))

(assert (=> bs!658386 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144759 lambda!144732))))

(declare-fun bs!658387 () Bool)

(assert (= bs!658387 (and b!4376352 d!1302282)))

(assert (=> bs!658387 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586962) (= lambda!144759 lambda!144734))))

(declare-fun bs!658388 () Bool)

(assert (= bs!658388 (and b!4376352 b!4376254)))

(assert (=> bs!658388 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144759 lambda!144740))))

(declare-fun bs!658389 () Bool)

(assert (= bs!658389 (and b!4376352 d!1302330)))

(assert (=> bs!658389 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586832) (= lambda!144759 lambda!144749))))

(declare-fun bs!658390 () Bool)

(assert (= bs!658390 (and b!4376352 d!1302304)))

(assert (=> bs!658390 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586995) (= lambda!144759 lambda!144739))))

(assert (=> bs!658383 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586783) (= lambda!144759 lambda!144701))))

(declare-fun bs!658391 () Bool)

(assert (= bs!658391 (and b!4376352 d!1302152)))

(assert (=> bs!658391 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586780) (= lambda!144759 lambda!144702))))

(declare-fun bs!658392 () Bool)

(assert (= bs!658392 (and b!4376352 d!1302118)))

(assert (=> bs!658392 (not (= lambda!144759 lambda!144613))))

(declare-fun bs!658393 () Bool)

(assert (= bs!658393 (and b!4376352 b!4376005)))

(assert (=> bs!658393 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (+!778 lt!1586446 lt!1586455)) (= lambda!144759 lambda!144707))))

(declare-fun bs!658394 () Bool)

(assert (= bs!658394 (and b!4376352 b!4376018)))

(assert (=> bs!658394 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144759 lambda!144712))))

(declare-fun bs!658396 () Bool)

(assert (= bs!658396 (and b!4376352 d!1302348)))

(assert (=> bs!658396 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144759 lambda!144755))))

(declare-fun bs!658400 () Bool)

(assert (= bs!658400 (and b!4376352 b!4376006)))

(assert (=> bs!658400 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (+!778 lt!1586446 lt!1586455)) (= lambda!144759 lambda!144708))))

(declare-fun bs!658402 () Bool)

(assert (= bs!658402 (and b!4376352 b!4375991)))

(assert (=> bs!658402 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586446) (= lambda!144759 lambda!144699))))

(assert (=> bs!658384 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144759 lambda!144737))))

(assert (=> bs!658385 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1587060) (= lambda!144759 lambda!144742))))

(declare-fun bs!658405 () Bool)

(assert (= bs!658405 (and b!4376352 b!4376192)))

(assert (=> bs!658405 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144759 lambda!144736))))

(assert (=> bs!658400 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1586832) (= lambda!144759 lambda!144709))))

(declare-fun bs!658408 () Bool)

(assert (= bs!658408 (and b!4376352 b!4376150)))

(assert (=> bs!658408 (= (= (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144759 lambda!144731))))

(assert (=> b!4376352 true))

(declare-fun lt!1587154 () ListMap!2373)

(declare-fun lambda!144763 () Int)

(assert (=> bs!658374 (= (= lt!1587154 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144763 lambda!144756))))

(assert (=> bs!658375 (= (= lt!1587154 lt!1587057) (= lambda!144763 lambda!144743))))

(assert (=> bs!658376 (= (= lt!1587154 lt!1586446) (= lambda!144763 lambda!144703))))

(assert (=> bs!658377 (= (= lt!1587154 lt!1586829) (= lambda!144763 lambda!144710))))

(assert (=> bs!658378 (= (= lt!1587154 lt!1586808) (= lambda!144763 lambda!144705))))

(assert (=> bs!658379 (= (= lt!1587154 lt!1586446) (= lambda!144763 lambda!144713))))

(assert (=> bs!658380 (not (= lambda!144763 lambda!144717))))

(assert (=> bs!658381 (= (= lt!1587154 lt!1586805) (= lambda!144763 lambda!144706))))

(assert (=> bs!658382 (= (= lt!1587154 lt!1586863) (= lambda!144763 lambda!144715))))

(assert (=> b!4376352 (= (= lt!1587154 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144763 lambda!144759))))

(assert (=> bs!658379 (= (= lt!1587154 lt!1586866) (= lambda!144763 lambda!144714))))

(assert (=> bs!658383 (= (= lt!1587154 lt!1586446) (= lambda!144763 lambda!144700))))

(assert (=> bs!658384 (= (= lt!1587154 lt!1586998) (= lambda!144763 lambda!144738))))

(assert (=> bs!658378 (= (= lt!1587154 lt!1586446) (= lambda!144763 lambda!144704))))

(assert (=> bs!658385 (= (= lt!1587154 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144763 lambda!144741))))

(assert (=> bs!658386 (= (= lt!1587154 lt!1586965) (= lambda!144763 lambda!144733))))

(assert (=> bs!658386 (= (= lt!1587154 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144763 lambda!144732))))

(assert (=> bs!658387 (= (= lt!1587154 lt!1586962) (= lambda!144763 lambda!144734))))

(assert (=> bs!658388 (= (= lt!1587154 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144763 lambda!144740))))

(assert (=> bs!658389 (= (= lt!1587154 lt!1586832) (= lambda!144763 lambda!144749))))

(assert (=> bs!658390 (= (= lt!1587154 lt!1586995) (= lambda!144763 lambda!144739))))

(assert (=> bs!658383 (= (= lt!1587154 lt!1586783) (= lambda!144763 lambda!144701))))

(assert (=> bs!658391 (= (= lt!1587154 lt!1586780) (= lambda!144763 lambda!144702))))

(assert (=> bs!658392 (not (= lambda!144763 lambda!144613))))

(assert (=> bs!658393 (= (= lt!1587154 (+!778 lt!1586446 lt!1586455)) (= lambda!144763 lambda!144707))))

(assert (=> bs!658394 (= (= lt!1587154 lt!1586446) (= lambda!144763 lambda!144712))))

(assert (=> bs!658396 (= (= lt!1587154 lt!1586446) (= lambda!144763 lambda!144755))))

(assert (=> bs!658400 (= (= lt!1587154 (+!778 lt!1586446 lt!1586455)) (= lambda!144763 lambda!144708))))

(assert (=> bs!658402 (= (= lt!1587154 lt!1586446) (= lambda!144763 lambda!144699))))

(assert (=> bs!658384 (= (= lt!1587154 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144763 lambda!144737))))

(assert (=> bs!658385 (= (= lt!1587154 lt!1587060) (= lambda!144763 lambda!144742))))

(assert (=> bs!658405 (= (= lt!1587154 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144763 lambda!144736))))

(assert (=> bs!658400 (= (= lt!1587154 lt!1586832) (= lambda!144763 lambda!144709))))

(assert (=> bs!658408 (= (= lt!1587154 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144763 lambda!144731))))

(assert (=> b!4376352 true))

(declare-fun bs!658424 () Bool)

(declare-fun d!1302364 () Bool)

(assert (= bs!658424 (and d!1302364 b!4376351)))

(declare-fun lambda!144764 () Int)

(declare-fun lt!1587151 () ListMap!2373)

(assert (=> bs!658424 (= (= lt!1587151 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144764 lambda!144756))))

(declare-fun bs!658425 () Bool)

(assert (= bs!658425 (and d!1302364 d!1302320)))

(assert (=> bs!658425 (= (= lt!1587151 lt!1587057) (= lambda!144764 lambda!144743))))

(declare-fun bs!658426 () Bool)

(assert (= bs!658426 (and d!1302364 b!4376000)))

(assert (=> bs!658426 (= (= lt!1587151 lt!1586446) (= lambda!144764 lambda!144703))))

(declare-fun bs!658427 () Bool)

(assert (= bs!658427 (and d!1302364 d!1302208)))

(assert (=> bs!658427 (= (= lt!1587151 lt!1586829) (= lambda!144764 lambda!144710))))

(declare-fun bs!658428 () Bool)

(assert (= bs!658428 (and d!1302364 b!4376001)))

(assert (=> bs!658428 (= (= lt!1587151 lt!1586808) (= lambda!144764 lambda!144705))))

(declare-fun bs!658429 () Bool)

(assert (= bs!658429 (and d!1302364 b!4376019)))

(assert (=> bs!658429 (= (= lt!1587151 lt!1586446) (= lambda!144764 lambda!144713))))

(declare-fun bs!658430 () Bool)

(assert (= bs!658430 (and d!1302364 d!1302220)))

(assert (=> bs!658430 (not (= lambda!144764 lambda!144717))))

(declare-fun bs!658431 () Bool)

(assert (= bs!658431 (and d!1302364 d!1302214)))

(assert (=> bs!658431 (= (= lt!1587151 lt!1586863) (= lambda!144764 lambda!144715))))

(declare-fun bs!658432 () Bool)

(assert (= bs!658432 (and d!1302364 b!4376352)))

(assert (=> bs!658432 (= (= lt!1587151 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144764 lambda!144759))))

(assert (=> bs!658429 (= (= lt!1587151 lt!1586866) (= lambda!144764 lambda!144714))))

(declare-fun bs!658433 () Bool)

(assert (= bs!658433 (and d!1302364 b!4375992)))

(assert (=> bs!658433 (= (= lt!1587151 lt!1586446) (= lambda!144764 lambda!144700))))

(declare-fun bs!658434 () Bool)

(assert (= bs!658434 (and d!1302364 b!4376193)))

(assert (=> bs!658434 (= (= lt!1587151 lt!1586998) (= lambda!144764 lambda!144738))))

(assert (=> bs!658428 (= (= lt!1587151 lt!1586446) (= lambda!144764 lambda!144704))))

(declare-fun bs!658435 () Bool)

(assert (= bs!658435 (and d!1302364 b!4376255)))

(assert (=> bs!658435 (= (= lt!1587151 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144764 lambda!144741))))

(declare-fun bs!658436 () Bool)

(assert (= bs!658436 (and d!1302364 b!4376151)))

(assert (=> bs!658436 (= (= lt!1587151 lt!1586965) (= lambda!144764 lambda!144733))))

(assert (=> bs!658436 (= (= lt!1587151 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144764 lambda!144732))))

(declare-fun bs!658437 () Bool)

(assert (= bs!658437 (and d!1302364 d!1302282)))

(assert (=> bs!658437 (= (= lt!1587151 lt!1586962) (= lambda!144764 lambda!144734))))

(declare-fun bs!658438 () Bool)

(assert (= bs!658438 (and d!1302364 b!4376254)))

(assert (=> bs!658438 (= (= lt!1587151 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144764 lambda!144740))))

(declare-fun bs!658439 () Bool)

(assert (= bs!658439 (and d!1302364 d!1302202)))

(assert (=> bs!658439 (= (= lt!1587151 lt!1586805) (= lambda!144764 lambda!144706))))

(assert (=> bs!658432 (= (= lt!1587151 lt!1587154) (= lambda!144764 lambda!144763))))

(declare-fun bs!658440 () Bool)

(assert (= bs!658440 (and d!1302364 d!1302330)))

(assert (=> bs!658440 (= (= lt!1587151 lt!1586832) (= lambda!144764 lambda!144749))))

(declare-fun bs!658441 () Bool)

(assert (= bs!658441 (and d!1302364 d!1302304)))

(assert (=> bs!658441 (= (= lt!1587151 lt!1586995) (= lambda!144764 lambda!144739))))

(assert (=> bs!658433 (= (= lt!1587151 lt!1586783) (= lambda!144764 lambda!144701))))

(declare-fun bs!658442 () Bool)

(assert (= bs!658442 (and d!1302364 d!1302152)))

(assert (=> bs!658442 (= (= lt!1587151 lt!1586780) (= lambda!144764 lambda!144702))))

(declare-fun bs!658443 () Bool)

(assert (= bs!658443 (and d!1302364 d!1302118)))

(assert (=> bs!658443 (not (= lambda!144764 lambda!144613))))

(declare-fun bs!658444 () Bool)

(assert (= bs!658444 (and d!1302364 b!4376005)))

(assert (=> bs!658444 (= (= lt!1587151 (+!778 lt!1586446 lt!1586455)) (= lambda!144764 lambda!144707))))

(declare-fun bs!658445 () Bool)

(assert (= bs!658445 (and d!1302364 b!4376018)))

(assert (=> bs!658445 (= (= lt!1587151 lt!1586446) (= lambda!144764 lambda!144712))))

(declare-fun bs!658446 () Bool)

(assert (= bs!658446 (and d!1302364 d!1302348)))

(assert (=> bs!658446 (= (= lt!1587151 lt!1586446) (= lambda!144764 lambda!144755))))

(declare-fun bs!658447 () Bool)

(assert (= bs!658447 (and d!1302364 b!4376006)))

(assert (=> bs!658447 (= (= lt!1587151 (+!778 lt!1586446 lt!1586455)) (= lambda!144764 lambda!144708))))

(declare-fun bs!658448 () Bool)

(assert (= bs!658448 (and d!1302364 b!4375991)))

(assert (=> bs!658448 (= (= lt!1587151 lt!1586446) (= lambda!144764 lambda!144699))))

(assert (=> bs!658434 (= (= lt!1587151 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144764 lambda!144737))))

(assert (=> bs!658435 (= (= lt!1587151 lt!1587060) (= lambda!144764 lambda!144742))))

(declare-fun bs!658449 () Bool)

(assert (= bs!658449 (and d!1302364 b!4376192)))

(assert (=> bs!658449 (= (= lt!1587151 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144764 lambda!144736))))

(assert (=> bs!658447 (= (= lt!1587151 lt!1586832) (= lambda!144764 lambda!144709))))

(declare-fun bs!658450 () Bool)

(assert (= bs!658450 (and d!1302364 b!4376150)))

(assert (=> bs!658450 (= (= lt!1587151 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144764 lambda!144731))))

(assert (=> d!1302364 true))

(declare-fun bm!304296 () Bool)

(declare-fun call!304302 () Bool)

(declare-fun c!744199 () Bool)

(assert (=> bm!304296 (= call!304302 (forall!9261 (toList!3130 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (ite c!744199 lambda!144756 lambda!144759)))))

(declare-fun b!4376348 () Bool)

(declare-fun e!2724070 () Bool)

(assert (=> b!4376348 (= e!2724070 (invariantList!719 (toList!3130 lt!1587151)))))

(declare-fun b!4376349 () Bool)

(declare-fun res!1801871 () Bool)

(assert (=> b!4376349 (=> (not res!1801871) (not e!2724070))))

(assert (=> b!4376349 (= res!1801871 (forall!9261 (toList!3130 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) lambda!144764))))

(assert (=> d!1302364 e!2724070))

(declare-fun res!1801872 () Bool)

(assert (=> d!1302364 (=> (not res!1801872) (not e!2724070))))

(assert (=> d!1302364 (= res!1801872 (forall!9261 lt!1586460 lambda!144764))))

(declare-fun e!2724069 () ListMap!2373)

(assert (=> d!1302364 (= lt!1587151 e!2724069)))

(assert (=> d!1302364 (= c!744199 ((_ is Nil!49140) lt!1586460))))

(assert (=> d!1302364 (noDuplicateKeys!573 lt!1586460)))

(assert (=> d!1302364 (= (addToMapMapFromBucket!254 lt!1586460 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) lt!1587151)))

(declare-fun call!304303 () Bool)

(declare-fun bm!304297 () Bool)

(assert (=> bm!304297 (= call!304303 (forall!9261 (ite c!744199 (toList!3130 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) lt!1586460) (ite c!744199 lambda!144756 lambda!144763)))))

(declare-fun bm!304298 () Bool)

(declare-fun call!304301 () Unit!74656)

(assert (=> bm!304298 (= call!304301 (lemmaContainsAllItsOwnKeys!101 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))))))

(declare-fun b!4376350 () Bool)

(declare-fun e!2724071 () Bool)

(assert (=> b!4376350 (= e!2724071 (forall!9261 (toList!3130 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) lambda!144763))))

(assert (=> b!4376351 (= e!2724069 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)))))

(declare-fun lt!1587155 () Unit!74656)

(assert (=> b!4376351 (= lt!1587155 call!304301)))

(assert (=> b!4376351 call!304302))

(declare-fun lt!1587136 () Unit!74656)

(assert (=> b!4376351 (= lt!1587136 lt!1587155)))

(assert (=> b!4376351 call!304303))

(declare-fun lt!1587138 () Unit!74656)

(declare-fun Unit!74829 () Unit!74656)

(assert (=> b!4376351 (= lt!1587138 Unit!74829)))

(assert (=> b!4376352 (= e!2724069 lt!1587154)))

(declare-fun lt!1587144 () ListMap!2373)

(assert (=> b!4376352 (= lt!1587144 (+!778 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (h!54733 lt!1586460)))))

(assert (=> b!4376352 (= lt!1587154 (addToMapMapFromBucket!254 (t!356190 lt!1586460) (+!778 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) (h!54733 lt!1586460))))))

(declare-fun lt!1587150 () Unit!74656)

(assert (=> b!4376352 (= lt!1587150 call!304301)))

(assert (=> b!4376352 call!304302))

(declare-fun lt!1587143 () Unit!74656)

(assert (=> b!4376352 (= lt!1587143 lt!1587150)))

(assert (=> b!4376352 (forall!9261 (toList!3130 lt!1587144) lambda!144763)))

(declare-fun lt!1587153 () Unit!74656)

(declare-fun Unit!74831 () Unit!74656)

(assert (=> b!4376352 (= lt!1587153 Unit!74831)))

(assert (=> b!4376352 (forall!9261 (t!356190 lt!1586460) lambda!144763)))

(declare-fun lt!1587145 () Unit!74656)

(declare-fun Unit!74832 () Unit!74656)

(assert (=> b!4376352 (= lt!1587145 Unit!74832)))

(declare-fun lt!1587147 () Unit!74656)

(declare-fun Unit!74833 () Unit!74656)

(assert (=> b!4376352 (= lt!1587147 Unit!74833)))

(declare-fun lt!1587137 () Unit!74656)

(assert (=> b!4376352 (= lt!1587137 (forallContained!1899 (toList!3130 lt!1587144) lambda!144763 (h!54733 lt!1586460)))))

(assert (=> b!4376352 (contains!11461 lt!1587144 (_1!27625 (h!54733 lt!1586460)))))

(declare-fun lt!1587156 () Unit!74656)

(declare-fun Unit!74834 () Unit!74656)

(assert (=> b!4376352 (= lt!1587156 Unit!74834)))

(assert (=> b!4376352 (contains!11461 lt!1587154 (_1!27625 (h!54733 lt!1586460)))))

(declare-fun lt!1587142 () Unit!74656)

(declare-fun Unit!74835 () Unit!74656)

(assert (=> b!4376352 (= lt!1587142 Unit!74835)))

(assert (=> b!4376352 (forall!9261 lt!1586460 lambda!144763)))

(declare-fun lt!1587149 () Unit!74656)

(declare-fun Unit!74836 () Unit!74656)

(assert (=> b!4376352 (= lt!1587149 Unit!74836)))

(assert (=> b!4376352 (forall!9261 (toList!3130 lt!1587144) lambda!144763)))

(declare-fun lt!1587139 () Unit!74656)

(declare-fun Unit!74837 () Unit!74656)

(assert (=> b!4376352 (= lt!1587139 Unit!74837)))

(declare-fun lt!1587146 () Unit!74656)

(declare-fun Unit!74838 () Unit!74656)

(assert (=> b!4376352 (= lt!1587146 Unit!74838)))

(declare-fun lt!1587152 () Unit!74656)

(assert (=> b!4376352 (= lt!1587152 (addForallContainsKeyThenBeforeAdding!101 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99)) lt!1587154 (_1!27625 (h!54733 lt!1586460)) (_2!27625 (h!54733 lt!1586460))))))

(assert (=> b!4376352 (forall!9261 (toList!3130 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) lambda!144763)))

(declare-fun lt!1587140 () Unit!74656)

(assert (=> b!4376352 (= lt!1587140 lt!1587152)))

(assert (=> b!4376352 (forall!9261 (toList!3130 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) lambda!144763)))

(declare-fun lt!1587141 () Unit!74656)

(declare-fun Unit!74839 () Unit!74656)

(assert (=> b!4376352 (= lt!1587141 Unit!74839)))

(declare-fun res!1801870 () Bool)

(assert (=> b!4376352 (= res!1801870 call!304303)))

(assert (=> b!4376352 (=> (not res!1801870) (not e!2724071))))

(assert (=> b!4376352 e!2724071))

(declare-fun lt!1587148 () Unit!74656)

(declare-fun Unit!74840 () Unit!74656)

(assert (=> b!4376352 (= lt!1587148 Unit!74840)))

(assert (= (and d!1302364 c!744199) b!4376351))

(assert (= (and d!1302364 (not c!744199)) b!4376352))

(assert (= (and b!4376352 res!1801870) b!4376350))

(assert (= (or b!4376351 b!4376352) bm!304298))

(assert (= (or b!4376351 b!4376352) bm!304296))

(assert (= (or b!4376351 b!4376352) bm!304297))

(assert (= (and d!1302364 res!1801872) b!4376349))

(assert (= (and b!4376349 res!1801871) b!4376348))

(declare-fun m!5010083 () Bool)

(assert (=> bm!304296 m!5010083))

(declare-fun m!5010085 () Bool)

(assert (=> b!4376350 m!5010085))

(declare-fun m!5010087 () Bool)

(assert (=> b!4376348 m!5010087))

(declare-fun m!5010089 () Bool)

(assert (=> b!4376349 m!5010089))

(declare-fun m!5010091 () Bool)

(assert (=> b!4376352 m!5010091))

(declare-fun m!5010093 () Bool)

(assert (=> b!4376352 m!5010093))

(declare-fun m!5010095 () Bool)

(assert (=> b!4376352 m!5010095))

(declare-fun m!5010097 () Bool)

(assert (=> b!4376352 m!5010097))

(declare-fun m!5010099 () Bool)

(assert (=> b!4376352 m!5010099))

(assert (=> b!4376352 m!5010085))

(assert (=> b!4376352 m!5010085))

(assert (=> b!4376352 m!5009343))

(declare-fun m!5010101 () Bool)

(assert (=> b!4376352 m!5010101))

(declare-fun m!5010103 () Bool)

(assert (=> b!4376352 m!5010103))

(assert (=> b!4376352 m!5010099))

(declare-fun m!5010105 () Bool)

(assert (=> b!4376352 m!5010105))

(assert (=> b!4376352 m!5009343))

(assert (=> b!4376352 m!5010095))

(declare-fun m!5010107 () Bool)

(assert (=> b!4376352 m!5010107))

(declare-fun m!5010109 () Bool)

(assert (=> d!1302364 m!5010109))

(assert (=> d!1302364 m!5009379))

(assert (=> bm!304298 m!5009343))

(declare-fun m!5010111 () Bool)

(assert (=> bm!304298 m!5010111))

(declare-fun m!5010113 () Bool)

(assert (=> bm!304297 m!5010113))

(assert (=> d!1302206 d!1302364))

(declare-fun d!1302376 () Bool)

(assert (=> d!1302376 (= (eq!311 (addToMapMapFromBucket!254 lt!1586460 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (+!778 (addToMapMapFromBucket!254 lt!1586460 lt!1586446) (tuple2!48663 key!3918 newValue!99))) (= (content!7802 (toList!3130 (addToMapMapFromBucket!254 lt!1586460 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))))) (content!7802 (toList!3130 (+!778 (addToMapMapFromBucket!254 lt!1586460 lt!1586446) (tuple2!48663 key!3918 newValue!99))))))))

(declare-fun bs!658451 () Bool)

(assert (= bs!658451 d!1302376))

(declare-fun m!5010123 () Bool)

(assert (=> bs!658451 m!5010123))

(declare-fun m!5010125 () Bool)

(assert (=> bs!658451 m!5010125))

(assert (=> d!1302206 d!1302376))

(assert (=> d!1302206 d!1302214))

(declare-fun d!1302380 () Bool)

(declare-fun res!1801888 () Bool)

(declare-fun e!2724086 () Bool)

(assert (=> d!1302380 (=> res!1801888 e!2724086)))

(assert (=> d!1302380 (= res!1801888 (and ((_ is Cons!49140) lt!1586460) (= (_1!27625 (h!54733 lt!1586460)) key!3918)))))

(assert (=> d!1302380 (= (containsKey!835 lt!1586460 key!3918) e!2724086)))

(declare-fun b!4376375 () Bool)

(declare-fun e!2724087 () Bool)

(assert (=> b!4376375 (= e!2724086 e!2724087)))

(declare-fun res!1801889 () Bool)

(assert (=> b!4376375 (=> (not res!1801889) (not e!2724087))))

(assert (=> b!4376375 (= res!1801889 ((_ is Cons!49140) lt!1586460))))

(declare-fun b!4376376 () Bool)

(assert (=> b!4376376 (= e!2724087 (containsKey!835 (t!356190 lt!1586460) key!3918))))

(assert (= (and d!1302380 (not res!1801888)) b!4376375))

(assert (= (and b!4376375 res!1801889) b!4376376))

(declare-fun m!5010127 () Bool)

(assert (=> b!4376376 m!5010127))

(assert (=> d!1302206 d!1302380))

(declare-fun d!1302382 () Bool)

(assert (=> d!1302382 (eq!311 (addToMapMapFromBucket!254 lt!1586460 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (+!778 (addToMapMapFromBucket!254 lt!1586460 lt!1586446) (tuple2!48663 key!3918 newValue!99)))))

(assert (=> d!1302382 true))

(declare-fun _$15!586 () Unit!74656)

(assert (=> d!1302382 (= (choose!27259 lt!1586446 key!3918 newValue!99 lt!1586460) _$15!586)))

(declare-fun bs!658452 () Bool)

(assert (= bs!658452 d!1302382))

(assert (=> bs!658452 m!5009347))

(assert (=> bs!658452 m!5009341))

(assert (=> bs!658452 m!5009349))

(assert (=> bs!658452 m!5009343))

(assert (=> bs!658452 m!5009347))

(assert (=> bs!658452 m!5008859))

(assert (=> bs!658452 m!5009343))

(assert (=> bs!658452 m!5008859))

(assert (=> bs!658452 m!5009341))

(assert (=> d!1302206 d!1302382))

(declare-fun d!1302384 () Bool)

(declare-fun res!1801896 () Bool)

(declare-fun e!2724103 () Bool)

(assert (=> d!1302384 (=> res!1801896 e!2724103)))

(assert (=> d!1302384 (= res!1801896 ((_ is Nil!49140) (toList!3130 lt!1586446)))))

(assert (=> d!1302384 (= (forall!9261 (toList!3130 lt!1586446) lambda!144715) e!2724103)))

(declare-fun b!4376407 () Bool)

(declare-fun e!2724104 () Bool)

(assert (=> b!4376407 (= e!2724103 e!2724104)))

(declare-fun res!1801897 () Bool)

(assert (=> b!4376407 (=> (not res!1801897) (not e!2724104))))

(assert (=> b!4376407 (= res!1801897 (dynLambda!20705 lambda!144715 (h!54733 (toList!3130 lt!1586446))))))

(declare-fun b!4376408 () Bool)

(assert (=> b!4376408 (= e!2724104 (forall!9261 (t!356190 (toList!3130 lt!1586446)) lambda!144715))))

(assert (= (and d!1302384 (not res!1801896)) b!4376407))

(assert (= (and b!4376407 res!1801897) b!4376408))

(declare-fun b_lambda!134567 () Bool)

(assert (=> (not b_lambda!134567) (not b!4376407)))

(declare-fun m!5010129 () Bool)

(assert (=> b!4376407 m!5010129))

(declare-fun m!5010131 () Bool)

(assert (=> b!4376408 m!5010131))

(assert (=> b!4376016 d!1302384))

(declare-fun d!1302386 () Bool)

(declare-fun res!1801898 () Bool)

(declare-fun e!2724105 () Bool)

(assert (=> d!1302386 (=> res!1801898 e!2724105)))

(assert (=> d!1302386 (= res!1801898 ((_ is Nil!49140) (toList!3130 lt!1586446)))))

(assert (=> d!1302386 (= (forall!9261 (toList!3130 lt!1586446) lambda!144705) e!2724105)))

(declare-fun b!4376409 () Bool)

(declare-fun e!2724106 () Bool)

(assert (=> b!4376409 (= e!2724105 e!2724106)))

(declare-fun res!1801899 () Bool)

(assert (=> b!4376409 (=> (not res!1801899) (not e!2724106))))

(assert (=> b!4376409 (= res!1801899 (dynLambda!20705 lambda!144705 (h!54733 (toList!3130 lt!1586446))))))

(declare-fun b!4376410 () Bool)

(assert (=> b!4376410 (= e!2724106 (forall!9261 (t!356190 (toList!3130 lt!1586446)) lambda!144705))))

(assert (= (and d!1302386 (not res!1801898)) b!4376409))

(assert (= (and b!4376409 res!1801899) b!4376410))

(declare-fun b_lambda!134569 () Bool)

(assert (=> (not b_lambda!134569) (not b!4376409)))

(declare-fun m!5010139 () Bool)

(assert (=> b!4376409 m!5010139))

(declare-fun m!5010143 () Bool)

(assert (=> b!4376410 m!5010143))

(assert (=> b!4375999 d!1302386))

(declare-fun d!1302388 () Bool)

(declare-fun res!1801900 () Bool)

(declare-fun e!2724107 () Bool)

(assert (=> d!1302388 (=> res!1801900 e!2724107)))

(assert (=> d!1302388 (= res!1801900 ((_ is Nil!49141) (t!356191 (toList!3129 lt!1586445))))))

(assert (=> d!1302388 (= (forall!9259 (t!356191 (toList!3129 lt!1586445)) lambda!144607) e!2724107)))

(declare-fun b!4376411 () Bool)

(declare-fun e!2724108 () Bool)

(assert (=> b!4376411 (= e!2724107 e!2724108)))

(declare-fun res!1801901 () Bool)

(assert (=> b!4376411 (=> (not res!1801901) (not e!2724108))))

(assert (=> b!4376411 (= res!1801901 (dynLambda!20703 lambda!144607 (h!54734 (t!356191 (toList!3129 lt!1586445)))))))

(declare-fun b!4376412 () Bool)

(assert (=> b!4376412 (= e!2724108 (forall!9259 (t!356191 (t!356191 (toList!3129 lt!1586445))) lambda!144607))))

(assert (= (and d!1302388 (not res!1801900)) b!4376411))

(assert (= (and b!4376411 res!1801901) b!4376412))

(declare-fun b_lambda!134571 () Bool)

(assert (=> (not b_lambda!134571) (not b!4376411)))

(declare-fun m!5010147 () Bool)

(assert (=> b!4376411 m!5010147))

(declare-fun m!5010149 () Bool)

(assert (=> b!4376412 m!5010149))

(assert (=> b!4375832 d!1302388))

(assert (=> bm!304257 d!1302348))

(declare-fun d!1302392 () Bool)

(declare-fun res!1801905 () Bool)

(declare-fun e!2724112 () Bool)

(assert (=> d!1302392 (=> res!1801905 e!2724112)))

(assert (=> d!1302392 (= res!1801905 ((_ is Nil!49140) (t!356190 newBucket!200)))))

(assert (=> d!1302392 (= (forall!9261 (t!356190 newBucket!200) lambda!144705) e!2724112)))

(declare-fun b!4376418 () Bool)

(declare-fun e!2724113 () Bool)

(assert (=> b!4376418 (= e!2724112 e!2724113)))

(declare-fun res!1801906 () Bool)

(assert (=> b!4376418 (=> (not res!1801906) (not e!2724113))))

(assert (=> b!4376418 (= res!1801906 (dynLambda!20705 lambda!144705 (h!54733 (t!356190 newBucket!200))))))

(declare-fun b!4376419 () Bool)

(assert (=> b!4376419 (= e!2724113 (forall!9261 (t!356190 (t!356190 newBucket!200)) lambda!144705))))

(assert (= (and d!1302392 (not res!1801905)) b!4376418))

(assert (= (and b!4376418 res!1801906) b!4376419))

(declare-fun b_lambda!134573 () Bool)

(assert (=> (not b_lambda!134573) (not b!4376418)))

(declare-fun m!5010151 () Bool)

(assert (=> b!4376418 m!5010151))

(declare-fun m!5010153 () Bool)

(assert (=> b!4376419 m!5010153))

(assert (=> b!4376001 d!1302392))

(declare-fun d!1302394 () Bool)

(declare-fun res!1801907 () Bool)

(declare-fun e!2724114 () Bool)

(assert (=> d!1302394 (=> res!1801907 e!2724114)))

(assert (=> d!1302394 (= res!1801907 ((_ is Nil!49140) (toList!3130 lt!1586798)))))

(assert (=> d!1302394 (= (forall!9261 (toList!3130 lt!1586798) lambda!144705) e!2724114)))

(declare-fun b!4376420 () Bool)

(declare-fun e!2724115 () Bool)

(assert (=> b!4376420 (= e!2724114 e!2724115)))

(declare-fun res!1801908 () Bool)

(assert (=> b!4376420 (=> (not res!1801908) (not e!2724115))))

(assert (=> b!4376420 (= res!1801908 (dynLambda!20705 lambda!144705 (h!54733 (toList!3130 lt!1586798))))))

(declare-fun b!4376421 () Bool)

(assert (=> b!4376421 (= e!2724115 (forall!9261 (t!356190 (toList!3130 lt!1586798)) lambda!144705))))

(assert (= (and d!1302394 (not res!1801907)) b!4376420))

(assert (= (and b!4376420 res!1801908) b!4376421))

(declare-fun b_lambda!134575 () Bool)

(assert (=> (not b_lambda!134575) (not b!4376420)))

(declare-fun m!5010155 () Bool)

(assert (=> b!4376420 m!5010155))

(declare-fun m!5010157 () Bool)

(assert (=> b!4376421 m!5010157))

(assert (=> b!4376001 d!1302394))

(declare-fun b!4376422 () Bool)

(declare-fun e!2724120 () Unit!74656)

(declare-fun Unit!74841 () Unit!74656)

(assert (=> b!4376422 (= e!2724120 Unit!74841)))

(declare-fun b!4376423 () Bool)

(declare-fun e!2724118 () Unit!74656)

(declare-fun lt!1587200 () Unit!74656)

(assert (=> b!4376423 (= e!2724118 lt!1587200)))

(declare-fun lt!1587202 () Unit!74656)

(assert (=> b!4376423 (= lt!1587202 (lemmaContainsKeyImpliesGetValueByKeyDefined!449 (toList!3130 lt!1586798) (_1!27625 (h!54733 newBucket!200))))))

(assert (=> b!4376423 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586798) (_1!27625 (h!54733 newBucket!200))))))

(declare-fun lt!1587195 () Unit!74656)

(assert (=> b!4376423 (= lt!1587195 lt!1587202)))

(assert (=> b!4376423 (= lt!1587200 (lemmaInListThenGetKeysListContains!164 (toList!3130 lt!1586798) (_1!27625 (h!54733 newBucket!200))))))

(declare-fun call!304316 () Bool)

(assert (=> b!4376423 call!304316))

(declare-fun b!4376424 () Bool)

(declare-fun e!2724119 () Bool)

(assert (=> b!4376424 (= e!2724119 (not (contains!11467 (keys!16659 lt!1586798) (_1!27625 (h!54733 newBucket!200)))))))

(declare-fun bm!304311 () Bool)

(declare-fun e!2724117 () List!49267)

(assert (=> bm!304311 (= call!304316 (contains!11467 e!2724117 (_1!27625 (h!54733 newBucket!200))))))

(declare-fun c!744218 () Bool)

(declare-fun c!744217 () Bool)

(assert (=> bm!304311 (= c!744218 c!744217)))

(declare-fun b!4376425 () Bool)

(assert (=> b!4376425 (= e!2724117 (getKeysList!167 (toList!3130 lt!1586798)))))

(declare-fun b!4376426 () Bool)

(assert (=> b!4376426 (= e!2724118 e!2724120)))

(declare-fun c!744216 () Bool)

(assert (=> b!4376426 (= c!744216 call!304316)))

(declare-fun b!4376427 () Bool)

(assert (=> b!4376427 (= e!2724117 (keys!16659 lt!1586798))))

(declare-fun d!1302396 () Bool)

(declare-fun e!2724116 () Bool)

(assert (=> d!1302396 e!2724116))

(declare-fun res!1801909 () Bool)

(assert (=> d!1302396 (=> res!1801909 e!2724116)))

(assert (=> d!1302396 (= res!1801909 e!2724119)))

(declare-fun res!1801910 () Bool)

(assert (=> d!1302396 (=> (not res!1801910) (not e!2724119))))

(declare-fun lt!1587199 () Bool)

(assert (=> d!1302396 (= res!1801910 (not lt!1587199))))

(declare-fun lt!1587196 () Bool)

(assert (=> d!1302396 (= lt!1587199 lt!1587196)))

(declare-fun lt!1587198 () Unit!74656)

(assert (=> d!1302396 (= lt!1587198 e!2724118)))

(assert (=> d!1302396 (= c!744217 lt!1587196)))

(assert (=> d!1302396 (= lt!1587196 (containsKey!839 (toList!3130 lt!1586798) (_1!27625 (h!54733 newBucket!200))))))

(assert (=> d!1302396 (= (contains!11461 lt!1586798 (_1!27625 (h!54733 newBucket!200))) lt!1587199)))

(declare-fun b!4376428 () Bool)

(declare-fun e!2724121 () Bool)

(assert (=> b!4376428 (= e!2724121 (contains!11467 (keys!16659 lt!1586798) (_1!27625 (h!54733 newBucket!200))))))

(declare-fun b!4376429 () Bool)

(assert (=> b!4376429 false))

(declare-fun lt!1587201 () Unit!74656)

(declare-fun lt!1587197 () Unit!74656)

(assert (=> b!4376429 (= lt!1587201 lt!1587197)))

(assert (=> b!4376429 (containsKey!839 (toList!3130 lt!1586798) (_1!27625 (h!54733 newBucket!200)))))

(assert (=> b!4376429 (= lt!1587197 (lemmaInGetKeysListThenContainsKey!165 (toList!3130 lt!1586798) (_1!27625 (h!54733 newBucket!200))))))

(declare-fun Unit!74843 () Unit!74656)

(assert (=> b!4376429 (= e!2724120 Unit!74843)))

(declare-fun b!4376430 () Bool)

(assert (=> b!4376430 (= e!2724116 e!2724121)))

(declare-fun res!1801911 () Bool)

(assert (=> b!4376430 (=> (not res!1801911) (not e!2724121))))

(assert (=> b!4376430 (= res!1801911 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586798) (_1!27625 (h!54733 newBucket!200)))))))

(assert (= (and d!1302396 c!744217) b!4376423))

(assert (= (and d!1302396 (not c!744217)) b!4376426))

(assert (= (and b!4376426 c!744216) b!4376429))

(assert (= (and b!4376426 (not c!744216)) b!4376422))

(assert (= (or b!4376423 b!4376426) bm!304311))

(assert (= (and bm!304311 c!744218) b!4376425))

(assert (= (and bm!304311 (not c!744218)) b!4376427))

(assert (= (and d!1302396 res!1801910) b!4376424))

(assert (= (and d!1302396 (not res!1801909)) b!4376430))

(assert (= (and b!4376430 res!1801911) b!4376428))

(declare-fun m!5010159 () Bool)

(assert (=> b!4376423 m!5010159))

(declare-fun m!5010161 () Bool)

(assert (=> b!4376423 m!5010161))

(assert (=> b!4376423 m!5010161))

(declare-fun m!5010163 () Bool)

(assert (=> b!4376423 m!5010163))

(declare-fun m!5010165 () Bool)

(assert (=> b!4376423 m!5010165))

(declare-fun m!5010167 () Bool)

(assert (=> bm!304311 m!5010167))

(assert (=> b!4376430 m!5010161))

(assert (=> b!4376430 m!5010161))

(assert (=> b!4376430 m!5010163))

(declare-fun m!5010169 () Bool)

(assert (=> b!4376427 m!5010169))

(assert (=> b!4376428 m!5010169))

(assert (=> b!4376428 m!5010169))

(declare-fun m!5010171 () Bool)

(assert (=> b!4376428 m!5010171))

(declare-fun m!5010173 () Bool)

(assert (=> d!1302396 m!5010173))

(declare-fun m!5010175 () Bool)

(assert (=> b!4376425 m!5010175))

(assert (=> b!4376429 m!5010173))

(declare-fun m!5010177 () Bool)

(assert (=> b!4376429 m!5010177))

(assert (=> b!4376424 m!5010169))

(assert (=> b!4376424 m!5010169))

(assert (=> b!4376424 m!5010171))

(assert (=> b!4376001 d!1302396))

(declare-fun d!1302398 () Bool)

(declare-fun e!2724122 () Bool)

(assert (=> d!1302398 e!2724122))

(declare-fun res!1801912 () Bool)

(assert (=> d!1302398 (=> (not res!1801912) (not e!2724122))))

(declare-fun lt!1587203 () ListMap!2373)

(assert (=> d!1302398 (= res!1801912 (contains!11461 lt!1587203 (_1!27625 (h!54733 newBucket!200))))))

(declare-fun lt!1587205 () List!49264)

(assert (=> d!1302398 (= lt!1587203 (ListMap!2374 lt!1587205))))

(declare-fun lt!1587206 () Unit!74656)

(declare-fun lt!1587204 () Unit!74656)

(assert (=> d!1302398 (= lt!1587206 lt!1587204)))

(assert (=> d!1302398 (= (getValueByKey!538 lt!1587205 (_1!27625 (h!54733 newBucket!200))) (Some!10551 (_2!27625 (h!54733 newBucket!200))))))

(assert (=> d!1302398 (= lt!1587204 (lemmaContainsTupThenGetReturnValue!302 lt!1587205 (_1!27625 (h!54733 newBucket!200)) (_2!27625 (h!54733 newBucket!200))))))

(assert (=> d!1302398 (= lt!1587205 (insertNoDuplicatedKeys!137 (toList!3130 lt!1586446) (_1!27625 (h!54733 newBucket!200)) (_2!27625 (h!54733 newBucket!200))))))

(assert (=> d!1302398 (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1587203)))

(declare-fun b!4376431 () Bool)

(declare-fun res!1801913 () Bool)

(assert (=> b!4376431 (=> (not res!1801913) (not e!2724122))))

(assert (=> b!4376431 (= res!1801913 (= (getValueByKey!538 (toList!3130 lt!1587203) (_1!27625 (h!54733 newBucket!200))) (Some!10551 (_2!27625 (h!54733 newBucket!200)))))))

(declare-fun b!4376432 () Bool)

(assert (=> b!4376432 (= e!2724122 (contains!11466 (toList!3130 lt!1587203) (h!54733 newBucket!200)))))

(assert (= (and d!1302398 res!1801912) b!4376431))

(assert (= (and b!4376431 res!1801913) b!4376432))

(declare-fun m!5010179 () Bool)

(assert (=> d!1302398 m!5010179))

(declare-fun m!5010181 () Bool)

(assert (=> d!1302398 m!5010181))

(declare-fun m!5010183 () Bool)

(assert (=> d!1302398 m!5010183))

(declare-fun m!5010185 () Bool)

(assert (=> d!1302398 m!5010185))

(declare-fun m!5010187 () Bool)

(assert (=> b!4376431 m!5010187))

(declare-fun m!5010189 () Bool)

(assert (=> b!4376432 m!5010189))

(assert (=> b!4376001 d!1302398))

(declare-fun bs!658477 () Bool)

(declare-fun d!1302400 () Bool)

(assert (= bs!658477 (and d!1302400 d!1302320)))

(declare-fun lambda!144766 () Int)

(assert (=> bs!658477 (= (= lt!1586808 lt!1587057) (= lambda!144766 lambda!144743))))

(declare-fun bs!658478 () Bool)

(assert (= bs!658478 (and d!1302400 b!4376000)))

(assert (=> bs!658478 (= (= lt!1586808 lt!1586446) (= lambda!144766 lambda!144703))))

(declare-fun bs!658480 () Bool)

(assert (= bs!658480 (and d!1302400 d!1302208)))

(assert (=> bs!658480 (= (= lt!1586808 lt!1586829) (= lambda!144766 lambda!144710))))

(declare-fun bs!658482 () Bool)

(assert (= bs!658482 (and d!1302400 b!4376001)))

(assert (=> bs!658482 (= lambda!144766 lambda!144705)))

(declare-fun bs!658483 () Bool)

(assert (= bs!658483 (and d!1302400 b!4376019)))

(assert (=> bs!658483 (= (= lt!1586808 lt!1586446) (= lambda!144766 lambda!144713))))

(declare-fun bs!658485 () Bool)

(assert (= bs!658485 (and d!1302400 d!1302220)))

(assert (=> bs!658485 (not (= lambda!144766 lambda!144717))))

(declare-fun bs!658487 () Bool)

(assert (= bs!658487 (and d!1302400 d!1302214)))

(assert (=> bs!658487 (= (= lt!1586808 lt!1586863) (= lambda!144766 lambda!144715))))

(declare-fun bs!658490 () Bool)

(assert (= bs!658490 (and d!1302400 b!4376352)))

(assert (=> bs!658490 (= (= lt!1586808 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144766 lambda!144759))))

(assert (=> bs!658483 (= (= lt!1586808 lt!1586866) (= lambda!144766 lambda!144714))))

(declare-fun bs!658492 () Bool)

(assert (= bs!658492 (and d!1302400 b!4375992)))

(assert (=> bs!658492 (= (= lt!1586808 lt!1586446) (= lambda!144766 lambda!144700))))

(declare-fun bs!658494 () Bool)

(assert (= bs!658494 (and d!1302400 b!4376193)))

(assert (=> bs!658494 (= (= lt!1586808 lt!1586998) (= lambda!144766 lambda!144738))))

(declare-fun bs!658496 () Bool)

(assert (= bs!658496 (and d!1302400 d!1302364)))

(assert (=> bs!658496 (= (= lt!1586808 lt!1587151) (= lambda!144766 lambda!144764))))

(declare-fun bs!658498 () Bool)

(assert (= bs!658498 (and d!1302400 b!4376351)))

(assert (=> bs!658498 (= (= lt!1586808 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144766 lambda!144756))))

(assert (=> bs!658482 (= (= lt!1586808 lt!1586446) (= lambda!144766 lambda!144704))))

(declare-fun bs!658501 () Bool)

(assert (= bs!658501 (and d!1302400 b!4376255)))

(assert (=> bs!658501 (= (= lt!1586808 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144766 lambda!144741))))

(declare-fun bs!658502 () Bool)

(assert (= bs!658502 (and d!1302400 b!4376151)))

(assert (=> bs!658502 (= (= lt!1586808 lt!1586965) (= lambda!144766 lambda!144733))))

(assert (=> bs!658502 (= (= lt!1586808 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144766 lambda!144732))))

(declare-fun bs!658504 () Bool)

(assert (= bs!658504 (and d!1302400 d!1302282)))

(assert (=> bs!658504 (= (= lt!1586808 lt!1586962) (= lambda!144766 lambda!144734))))

(declare-fun bs!658506 () Bool)

(assert (= bs!658506 (and d!1302400 b!4376254)))

(assert (=> bs!658506 (= (= lt!1586808 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144766 lambda!144740))))

(declare-fun bs!658508 () Bool)

(assert (= bs!658508 (and d!1302400 d!1302202)))

(assert (=> bs!658508 (= (= lt!1586808 lt!1586805) (= lambda!144766 lambda!144706))))

(assert (=> bs!658490 (= (= lt!1586808 lt!1587154) (= lambda!144766 lambda!144763))))

(declare-fun bs!658510 () Bool)

(assert (= bs!658510 (and d!1302400 d!1302330)))

(assert (=> bs!658510 (= (= lt!1586808 lt!1586832) (= lambda!144766 lambda!144749))))

(declare-fun bs!658511 () Bool)

(assert (= bs!658511 (and d!1302400 d!1302304)))

(assert (=> bs!658511 (= (= lt!1586808 lt!1586995) (= lambda!144766 lambda!144739))))

(assert (=> bs!658492 (= (= lt!1586808 lt!1586783) (= lambda!144766 lambda!144701))))

(declare-fun bs!658513 () Bool)

(assert (= bs!658513 (and d!1302400 d!1302152)))

(assert (=> bs!658513 (= (= lt!1586808 lt!1586780) (= lambda!144766 lambda!144702))))

(declare-fun bs!658515 () Bool)

(assert (= bs!658515 (and d!1302400 d!1302118)))

(assert (=> bs!658515 (not (= lambda!144766 lambda!144613))))

(declare-fun bs!658517 () Bool)

(assert (= bs!658517 (and d!1302400 b!4376005)))

(assert (=> bs!658517 (= (= lt!1586808 (+!778 lt!1586446 lt!1586455)) (= lambda!144766 lambda!144707))))

(declare-fun bs!658519 () Bool)

(assert (= bs!658519 (and d!1302400 b!4376018)))

(assert (=> bs!658519 (= (= lt!1586808 lt!1586446) (= lambda!144766 lambda!144712))))

(declare-fun bs!658521 () Bool)

(assert (= bs!658521 (and d!1302400 d!1302348)))

(assert (=> bs!658521 (= (= lt!1586808 lt!1586446) (= lambda!144766 lambda!144755))))

(declare-fun bs!658522 () Bool)

(assert (= bs!658522 (and d!1302400 b!4376006)))

(assert (=> bs!658522 (= (= lt!1586808 (+!778 lt!1586446 lt!1586455)) (= lambda!144766 lambda!144708))))

(declare-fun bs!658524 () Bool)

(assert (= bs!658524 (and d!1302400 b!4375991)))

(assert (=> bs!658524 (= (= lt!1586808 lt!1586446) (= lambda!144766 lambda!144699))))

(assert (=> bs!658494 (= (= lt!1586808 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144766 lambda!144737))))

(assert (=> bs!658501 (= (= lt!1586808 lt!1587060) (= lambda!144766 lambda!144742))))

(declare-fun bs!658528 () Bool)

(assert (= bs!658528 (and d!1302400 b!4376192)))

(assert (=> bs!658528 (= (= lt!1586808 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144766 lambda!144736))))

(assert (=> bs!658522 (= (= lt!1586808 lt!1586832) (= lambda!144766 lambda!144709))))

(declare-fun bs!658529 () Bool)

(assert (= bs!658529 (and d!1302400 b!4376150)))

(assert (=> bs!658529 (= (= lt!1586808 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144766 lambda!144731))))

(assert (=> d!1302400 true))

(assert (=> d!1302400 (forall!9261 (toList!3130 lt!1586446) lambda!144766)))

(declare-fun lt!1587207 () Unit!74656)

(assert (=> d!1302400 (= lt!1587207 (choose!27266 lt!1586446 lt!1586808 (_1!27625 (h!54733 newBucket!200)) (_2!27625 (h!54733 newBucket!200))))))

(assert (=> d!1302400 (forall!9261 (toList!3130 (+!778 lt!1586446 (tuple2!48663 (_1!27625 (h!54733 newBucket!200)) (_2!27625 (h!54733 newBucket!200))))) lambda!144766)))

(assert (=> d!1302400 (= (addForallContainsKeyThenBeforeAdding!101 lt!1586446 lt!1586808 (_1!27625 (h!54733 newBucket!200)) (_2!27625 (h!54733 newBucket!200))) lt!1587207)))

(declare-fun bs!658530 () Bool)

(assert (= bs!658530 d!1302400))

(declare-fun m!5010191 () Bool)

(assert (=> bs!658530 m!5010191))

(declare-fun m!5010193 () Bool)

(assert (=> bs!658530 m!5010193))

(declare-fun m!5010195 () Bool)

(assert (=> bs!658530 m!5010195))

(declare-fun m!5010197 () Bool)

(assert (=> bs!658530 m!5010197))

(assert (=> b!4376001 d!1302400))

(declare-fun b!4376433 () Bool)

(declare-fun e!2724127 () Unit!74656)

(declare-fun Unit!74844 () Unit!74656)

(assert (=> b!4376433 (= e!2724127 Unit!74844)))

(declare-fun b!4376434 () Bool)

(declare-fun e!2724125 () Unit!74656)

(declare-fun lt!1587213 () Unit!74656)

(assert (=> b!4376434 (= e!2724125 lt!1587213)))

(declare-fun lt!1587215 () Unit!74656)

(assert (=> b!4376434 (= lt!1587215 (lemmaContainsKeyImpliesGetValueByKeyDefined!449 (toList!3130 lt!1586808) (_1!27625 (h!54733 newBucket!200))))))

(assert (=> b!4376434 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586808) (_1!27625 (h!54733 newBucket!200))))))

(declare-fun lt!1587208 () Unit!74656)

(assert (=> b!4376434 (= lt!1587208 lt!1587215)))

(assert (=> b!4376434 (= lt!1587213 (lemmaInListThenGetKeysListContains!164 (toList!3130 lt!1586808) (_1!27625 (h!54733 newBucket!200))))))

(declare-fun call!304317 () Bool)

(assert (=> b!4376434 call!304317))

(declare-fun b!4376435 () Bool)

(declare-fun e!2724126 () Bool)

(assert (=> b!4376435 (= e!2724126 (not (contains!11467 (keys!16659 lt!1586808) (_1!27625 (h!54733 newBucket!200)))))))

(declare-fun bm!304312 () Bool)

(declare-fun e!2724124 () List!49267)

(assert (=> bm!304312 (= call!304317 (contains!11467 e!2724124 (_1!27625 (h!54733 newBucket!200))))))

(declare-fun c!744221 () Bool)

(declare-fun c!744220 () Bool)

(assert (=> bm!304312 (= c!744221 c!744220)))

(declare-fun b!4376436 () Bool)

(assert (=> b!4376436 (= e!2724124 (getKeysList!167 (toList!3130 lt!1586808)))))

(declare-fun b!4376437 () Bool)

(assert (=> b!4376437 (= e!2724125 e!2724127)))

(declare-fun c!744219 () Bool)

(assert (=> b!4376437 (= c!744219 call!304317)))

(declare-fun b!4376438 () Bool)

(assert (=> b!4376438 (= e!2724124 (keys!16659 lt!1586808))))

(declare-fun d!1302402 () Bool)

(declare-fun e!2724123 () Bool)

(assert (=> d!1302402 e!2724123))

(declare-fun res!1801914 () Bool)

(assert (=> d!1302402 (=> res!1801914 e!2724123)))

(assert (=> d!1302402 (= res!1801914 e!2724126)))

(declare-fun res!1801915 () Bool)

(assert (=> d!1302402 (=> (not res!1801915) (not e!2724126))))

(declare-fun lt!1587212 () Bool)

(assert (=> d!1302402 (= res!1801915 (not lt!1587212))))

(declare-fun lt!1587209 () Bool)

(assert (=> d!1302402 (= lt!1587212 lt!1587209)))

(declare-fun lt!1587211 () Unit!74656)

(assert (=> d!1302402 (= lt!1587211 e!2724125)))

(assert (=> d!1302402 (= c!744220 lt!1587209)))

(assert (=> d!1302402 (= lt!1587209 (containsKey!839 (toList!3130 lt!1586808) (_1!27625 (h!54733 newBucket!200))))))

(assert (=> d!1302402 (= (contains!11461 lt!1586808 (_1!27625 (h!54733 newBucket!200))) lt!1587212)))

(declare-fun b!4376439 () Bool)

(declare-fun e!2724128 () Bool)

(assert (=> b!4376439 (= e!2724128 (contains!11467 (keys!16659 lt!1586808) (_1!27625 (h!54733 newBucket!200))))))

(declare-fun b!4376440 () Bool)

(assert (=> b!4376440 false))

(declare-fun lt!1587214 () Unit!74656)

(declare-fun lt!1587210 () Unit!74656)

(assert (=> b!4376440 (= lt!1587214 lt!1587210)))

(assert (=> b!4376440 (containsKey!839 (toList!3130 lt!1586808) (_1!27625 (h!54733 newBucket!200)))))

(assert (=> b!4376440 (= lt!1587210 (lemmaInGetKeysListThenContainsKey!165 (toList!3130 lt!1586808) (_1!27625 (h!54733 newBucket!200))))))

(declare-fun Unit!74845 () Unit!74656)

(assert (=> b!4376440 (= e!2724127 Unit!74845)))

(declare-fun b!4376441 () Bool)

(assert (=> b!4376441 (= e!2724123 e!2724128)))

(declare-fun res!1801916 () Bool)

(assert (=> b!4376441 (=> (not res!1801916) (not e!2724128))))

(assert (=> b!4376441 (= res!1801916 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586808) (_1!27625 (h!54733 newBucket!200)))))))

(assert (= (and d!1302402 c!744220) b!4376434))

(assert (= (and d!1302402 (not c!744220)) b!4376437))

(assert (= (and b!4376437 c!744219) b!4376440))

(assert (= (and b!4376437 (not c!744219)) b!4376433))

(assert (= (or b!4376434 b!4376437) bm!304312))

(assert (= (and bm!304312 c!744221) b!4376436))

(assert (= (and bm!304312 (not c!744221)) b!4376438))

(assert (= (and d!1302402 res!1801915) b!4376435))

(assert (= (and d!1302402 (not res!1801914)) b!4376441))

(assert (= (and b!4376441 res!1801916) b!4376439))

(declare-fun m!5010199 () Bool)

(assert (=> b!4376434 m!5010199))

(declare-fun m!5010201 () Bool)

(assert (=> b!4376434 m!5010201))

(assert (=> b!4376434 m!5010201))

(declare-fun m!5010203 () Bool)

(assert (=> b!4376434 m!5010203))

(declare-fun m!5010205 () Bool)

(assert (=> b!4376434 m!5010205))

(declare-fun m!5010207 () Bool)

(assert (=> bm!304312 m!5010207))

(assert (=> b!4376441 m!5010201))

(assert (=> b!4376441 m!5010201))

(assert (=> b!4376441 m!5010203))

(declare-fun m!5010209 () Bool)

(assert (=> b!4376438 m!5010209))

(assert (=> b!4376439 m!5010209))

(assert (=> b!4376439 m!5010209))

(declare-fun m!5010211 () Bool)

(assert (=> b!4376439 m!5010211))

(declare-fun m!5010213 () Bool)

(assert (=> d!1302402 m!5010213))

(declare-fun m!5010215 () Bool)

(assert (=> b!4376436 m!5010215))

(assert (=> b!4376440 m!5010213))

(declare-fun m!5010217 () Bool)

(assert (=> b!4376440 m!5010217))

(assert (=> b!4376435 m!5010209))

(assert (=> b!4376435 m!5010209))

(assert (=> b!4376435 m!5010211))

(assert (=> b!4376001 d!1302402))

(declare-fun d!1302404 () Bool)

(declare-fun res!1801917 () Bool)

(declare-fun e!2724129 () Bool)

(assert (=> d!1302404 (=> res!1801917 e!2724129)))

(assert (=> d!1302404 (= res!1801917 ((_ is Nil!49140) newBucket!200))))

(assert (=> d!1302404 (= (forall!9261 newBucket!200 lambda!144705) e!2724129)))

(declare-fun b!4376442 () Bool)

(declare-fun e!2724130 () Bool)

(assert (=> b!4376442 (= e!2724129 e!2724130)))

(declare-fun res!1801918 () Bool)

(assert (=> b!4376442 (=> (not res!1801918) (not e!2724130))))

(assert (=> b!4376442 (= res!1801918 (dynLambda!20705 lambda!144705 (h!54733 newBucket!200)))))

(declare-fun b!4376443 () Bool)

(assert (=> b!4376443 (= e!2724130 (forall!9261 (t!356190 newBucket!200) lambda!144705))))

(assert (= (and d!1302404 (not res!1801917)) b!4376442))

(assert (= (and b!4376442 res!1801918) b!4376443))

(declare-fun b_lambda!134577 () Bool)

(assert (=> (not b_lambda!134577) (not b!4376442)))

(declare-fun m!5010219 () Bool)

(assert (=> b!4376442 m!5010219))

(assert (=> b!4376443 m!5009329))

(assert (=> b!4376001 d!1302404))

(declare-fun d!1302406 () Bool)

(assert (=> d!1302406 (dynLambda!20705 lambda!144705 (h!54733 newBucket!200))))

(declare-fun lt!1587216 () Unit!74656)

(assert (=> d!1302406 (= lt!1587216 (choose!27262 (toList!3130 lt!1586798) lambda!144705 (h!54733 newBucket!200)))))

(declare-fun e!2724131 () Bool)

(assert (=> d!1302406 e!2724131))

(declare-fun res!1801919 () Bool)

(assert (=> d!1302406 (=> (not res!1801919) (not e!2724131))))

(assert (=> d!1302406 (= res!1801919 (forall!9261 (toList!3130 lt!1586798) lambda!144705))))

(assert (=> d!1302406 (= (forallContained!1899 (toList!3130 lt!1586798) lambda!144705 (h!54733 newBucket!200)) lt!1587216)))

(declare-fun b!4376444 () Bool)

(assert (=> b!4376444 (= e!2724131 (contains!11466 (toList!3130 lt!1586798) (h!54733 newBucket!200)))))

(assert (= (and d!1302406 res!1801919) b!4376444))

(declare-fun b_lambda!134579 () Bool)

(assert (=> (not b_lambda!134579) (not d!1302406)))

(assert (=> d!1302406 m!5010219))

(declare-fun m!5010221 () Bool)

(assert (=> d!1302406 m!5010221))

(assert (=> d!1302406 m!5009325))

(declare-fun m!5010223 () Bool)

(assert (=> b!4376444 m!5010223))

(assert (=> b!4376001 d!1302406))

(assert (=> b!4376001 d!1302386))

(declare-fun bs!658531 () Bool)

(declare-fun b!4376448 () Bool)

(assert (= bs!658531 (and b!4376448 d!1302320)))

(declare-fun lambda!144769 () Int)

(assert (=> bs!658531 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1587057) (= lambda!144769 lambda!144743))))

(declare-fun bs!658532 () Bool)

(assert (= bs!658532 (and b!4376448 b!4376000)))

(assert (=> bs!658532 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144769 lambda!144703))))

(declare-fun bs!658533 () Bool)

(assert (= bs!658533 (and b!4376448 d!1302208)))

(assert (=> bs!658533 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586829) (= lambda!144769 lambda!144710))))

(declare-fun bs!658534 () Bool)

(assert (= bs!658534 (and b!4376448 b!4376001)))

(assert (=> bs!658534 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586808) (= lambda!144769 lambda!144705))))

(declare-fun bs!658535 () Bool)

(assert (= bs!658535 (and b!4376448 b!4376019)))

(assert (=> bs!658535 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144769 lambda!144713))))

(declare-fun bs!658537 () Bool)

(assert (= bs!658537 (and b!4376448 d!1302220)))

(assert (=> bs!658537 (not (= lambda!144769 lambda!144717))))

(declare-fun bs!658539 () Bool)

(assert (= bs!658539 (and b!4376448 d!1302214)))

(assert (=> bs!658539 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586863) (= lambda!144769 lambda!144715))))

(declare-fun bs!658541 () Bool)

(assert (= bs!658541 (and b!4376448 b!4376352)))

(assert (=> bs!658541 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144769 lambda!144759))))

(assert (=> bs!658535 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586866) (= lambda!144769 lambda!144714))))

(declare-fun bs!658544 () Bool)

(assert (= bs!658544 (and b!4376448 b!4375992)))

(assert (=> bs!658544 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144769 lambda!144700))))

(declare-fun bs!658546 () Bool)

(assert (= bs!658546 (and b!4376448 b!4376193)))

(assert (=> bs!658546 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586998) (= lambda!144769 lambda!144738))))

(declare-fun bs!658548 () Bool)

(assert (= bs!658548 (and b!4376448 d!1302364)))

(assert (=> bs!658548 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1587151) (= lambda!144769 lambda!144764))))

(declare-fun bs!658551 () Bool)

(assert (= bs!658551 (and b!4376448 b!4376351)))

(assert (=> bs!658551 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144769 lambda!144756))))

(assert (=> bs!658534 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144769 lambda!144704))))

(declare-fun bs!658554 () Bool)

(assert (= bs!658554 (and b!4376448 b!4376255)))

(assert (=> bs!658554 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144769 lambda!144741))))

(declare-fun bs!658555 () Bool)

(assert (= bs!658555 (and b!4376448 b!4376151)))

(assert (=> bs!658555 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586965) (= lambda!144769 lambda!144733))))

(assert (=> bs!658555 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144769 lambda!144732))))

(declare-fun bs!658557 () Bool)

(assert (= bs!658557 (and b!4376448 d!1302282)))

(assert (=> bs!658557 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586962) (= lambda!144769 lambda!144734))))

(declare-fun bs!658558 () Bool)

(assert (= bs!658558 (and b!4376448 b!4376254)))

(assert (=> bs!658558 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144769 lambda!144740))))

(declare-fun bs!658560 () Bool)

(assert (= bs!658560 (and b!4376448 d!1302202)))

(assert (=> bs!658560 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586805) (= lambda!144769 lambda!144706))))

(assert (=> bs!658541 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1587154) (= lambda!144769 lambda!144763))))

(declare-fun bs!658562 () Bool)

(assert (= bs!658562 (and b!4376448 d!1302330)))

(assert (=> bs!658562 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586832) (= lambda!144769 lambda!144749))))

(declare-fun bs!658564 () Bool)

(assert (= bs!658564 (and b!4376448 d!1302304)))

(assert (=> bs!658564 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586995) (= lambda!144769 lambda!144739))))

(assert (=> bs!658544 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586783) (= lambda!144769 lambda!144701))))

(declare-fun bs!658566 () Bool)

(assert (= bs!658566 (and b!4376448 d!1302152)))

(assert (=> bs!658566 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586780) (= lambda!144769 lambda!144702))))

(declare-fun bs!658568 () Bool)

(assert (= bs!658568 (and b!4376448 d!1302118)))

(assert (=> bs!658568 (not (= lambda!144769 lambda!144613))))

(declare-fun bs!658570 () Bool)

(assert (= bs!658570 (and b!4376448 b!4376005)))

(assert (=> bs!658570 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (+!778 lt!1586446 lt!1586455)) (= lambda!144769 lambda!144707))))

(declare-fun bs!658572 () Bool)

(assert (= bs!658572 (and b!4376448 b!4376018)))

(assert (=> bs!658572 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144769 lambda!144712))))

(declare-fun bs!658574 () Bool)

(assert (= bs!658574 (and b!4376448 d!1302348)))

(assert (=> bs!658574 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144769 lambda!144755))))

(declare-fun bs!658575 () Bool)

(assert (= bs!658575 (and b!4376448 b!4376006)))

(assert (=> bs!658575 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (+!778 lt!1586446 lt!1586455)) (= lambda!144769 lambda!144708))))

(declare-fun bs!658576 () Bool)

(assert (= bs!658576 (and b!4376448 b!4375991)))

(assert (=> bs!658576 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144769 lambda!144699))))

(assert (=> bs!658546 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144769 lambda!144737))))

(declare-fun bs!658578 () Bool)

(assert (= bs!658578 (and b!4376448 d!1302400)))

(assert (=> bs!658578 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586808) (= lambda!144769 lambda!144766))))

(assert (=> bs!658554 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1587060) (= lambda!144769 lambda!144742))))

(declare-fun bs!658580 () Bool)

(assert (= bs!658580 (and b!4376448 b!4376192)))

(assert (=> bs!658580 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144769 lambda!144736))))

(assert (=> bs!658575 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586832) (= lambda!144769 lambda!144709))))

(declare-fun bs!658583 () Bool)

(assert (= bs!658583 (and b!4376448 b!4376150)))

(assert (=> bs!658583 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144769 lambda!144731))))

(assert (=> b!4376448 true))

(declare-fun bs!658586 () Bool)

(declare-fun b!4376449 () Bool)

(assert (= bs!658586 (and b!4376449 d!1302320)))

(declare-fun lambda!144771 () Int)

(assert (=> bs!658586 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1587057) (= lambda!144771 lambda!144743))))

(declare-fun bs!658587 () Bool)

(assert (= bs!658587 (and b!4376449 b!4376000)))

(assert (=> bs!658587 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144771 lambda!144703))))

(declare-fun bs!658588 () Bool)

(assert (= bs!658588 (and b!4376449 d!1302208)))

(assert (=> bs!658588 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586829) (= lambda!144771 lambda!144710))))

(declare-fun bs!658589 () Bool)

(assert (= bs!658589 (and b!4376449 b!4376001)))

(assert (=> bs!658589 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586808) (= lambda!144771 lambda!144705))))

(declare-fun bs!658590 () Bool)

(assert (= bs!658590 (and b!4376449 b!4376019)))

(assert (=> bs!658590 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144771 lambda!144713))))

(declare-fun bs!658591 () Bool)

(assert (= bs!658591 (and b!4376449 d!1302220)))

(assert (=> bs!658591 (not (= lambda!144771 lambda!144717))))

(declare-fun bs!658592 () Bool)

(assert (= bs!658592 (and b!4376449 d!1302214)))

(assert (=> bs!658592 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586863) (= lambda!144771 lambda!144715))))

(declare-fun bs!658593 () Bool)

(assert (= bs!658593 (and b!4376449 b!4376352)))

(assert (=> bs!658593 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144771 lambda!144759))))

(assert (=> bs!658590 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586866) (= lambda!144771 lambda!144714))))

(declare-fun bs!658594 () Bool)

(assert (= bs!658594 (and b!4376449 b!4375992)))

(assert (=> bs!658594 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144771 lambda!144700))))

(declare-fun bs!658595 () Bool)

(assert (= bs!658595 (and b!4376449 b!4376193)))

(assert (=> bs!658595 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586998) (= lambda!144771 lambda!144738))))

(declare-fun bs!658596 () Bool)

(assert (= bs!658596 (and b!4376449 d!1302364)))

(assert (=> bs!658596 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1587151) (= lambda!144771 lambda!144764))))

(declare-fun bs!658597 () Bool)

(assert (= bs!658597 (and b!4376449 b!4376351)))

(assert (=> bs!658597 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144771 lambda!144756))))

(declare-fun bs!658598 () Bool)

(assert (= bs!658598 (and b!4376449 b!4376448)))

(assert (=> bs!658598 (= lambda!144771 lambda!144769)))

(assert (=> bs!658589 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144771 lambda!144704))))

(declare-fun bs!658599 () Bool)

(assert (= bs!658599 (and b!4376449 b!4376255)))

(assert (=> bs!658599 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144771 lambda!144741))))

(declare-fun bs!658600 () Bool)

(assert (= bs!658600 (and b!4376449 b!4376151)))

(assert (=> bs!658600 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586965) (= lambda!144771 lambda!144733))))

(assert (=> bs!658600 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144771 lambda!144732))))

(declare-fun bs!658601 () Bool)

(assert (= bs!658601 (and b!4376449 d!1302282)))

(assert (=> bs!658601 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586962) (= lambda!144771 lambda!144734))))

(declare-fun bs!658602 () Bool)

(assert (= bs!658602 (and b!4376449 b!4376254)))

(assert (=> bs!658602 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144771 lambda!144740))))

(declare-fun bs!658603 () Bool)

(assert (= bs!658603 (and b!4376449 d!1302202)))

(assert (=> bs!658603 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586805) (= lambda!144771 lambda!144706))))

(assert (=> bs!658593 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1587154) (= lambda!144771 lambda!144763))))

(declare-fun bs!658604 () Bool)

(assert (= bs!658604 (and b!4376449 d!1302330)))

(assert (=> bs!658604 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586832) (= lambda!144771 lambda!144749))))

(declare-fun bs!658605 () Bool)

(assert (= bs!658605 (and b!4376449 d!1302304)))

(assert (=> bs!658605 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586995) (= lambda!144771 lambda!144739))))

(assert (=> bs!658594 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586783) (= lambda!144771 lambda!144701))))

(declare-fun bs!658606 () Bool)

(assert (= bs!658606 (and b!4376449 d!1302152)))

(assert (=> bs!658606 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586780) (= lambda!144771 lambda!144702))))

(declare-fun bs!658607 () Bool)

(assert (= bs!658607 (and b!4376449 d!1302118)))

(assert (=> bs!658607 (not (= lambda!144771 lambda!144613))))

(declare-fun bs!658608 () Bool)

(assert (= bs!658608 (and b!4376449 b!4376005)))

(assert (=> bs!658608 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (+!778 lt!1586446 lt!1586455)) (= lambda!144771 lambda!144707))))

(declare-fun bs!658609 () Bool)

(assert (= bs!658609 (and b!4376449 b!4376018)))

(assert (=> bs!658609 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144771 lambda!144712))))

(declare-fun bs!658610 () Bool)

(assert (= bs!658610 (and b!4376449 d!1302348)))

(assert (=> bs!658610 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144771 lambda!144755))))

(declare-fun bs!658611 () Bool)

(assert (= bs!658611 (and b!4376449 b!4376006)))

(assert (=> bs!658611 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (+!778 lt!1586446 lt!1586455)) (= lambda!144771 lambda!144708))))

(declare-fun bs!658613 () Bool)

(assert (= bs!658613 (and b!4376449 b!4375991)))

(assert (=> bs!658613 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586446) (= lambda!144771 lambda!144699))))

(assert (=> bs!658595 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144771 lambda!144737))))

(declare-fun bs!658615 () Bool)

(assert (= bs!658615 (and b!4376449 d!1302400)))

(assert (=> bs!658615 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586808) (= lambda!144771 lambda!144766))))

(assert (=> bs!658599 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1587060) (= lambda!144771 lambda!144742))))

(declare-fun bs!658618 () Bool)

(assert (= bs!658618 (and b!4376449 b!4376192)))

(assert (=> bs!658618 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144771 lambda!144736))))

(assert (=> bs!658611 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1586832) (= lambda!144771 lambda!144709))))

(declare-fun bs!658621 () Bool)

(assert (= bs!658621 (and b!4376449 b!4376150)))

(assert (=> bs!658621 (= (= (+!778 lt!1586446 (h!54733 newBucket!200)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144771 lambda!144731))))

(assert (=> b!4376449 true))

(declare-fun lambda!144773 () Int)

(declare-fun lt!1587235 () ListMap!2373)

(assert (=> bs!658586 (= (= lt!1587235 lt!1587057) (= lambda!144773 lambda!144743))))

(assert (=> bs!658587 (= (= lt!1587235 lt!1586446) (= lambda!144773 lambda!144703))))

(assert (=> bs!658588 (= (= lt!1587235 lt!1586829) (= lambda!144773 lambda!144710))))

(assert (=> bs!658589 (= (= lt!1587235 lt!1586808) (= lambda!144773 lambda!144705))))

(assert (=> bs!658591 (not (= lambda!144773 lambda!144717))))

(assert (=> bs!658592 (= (= lt!1587235 lt!1586863) (= lambda!144773 lambda!144715))))

(assert (=> bs!658593 (= (= lt!1587235 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144773 lambda!144759))))

(assert (=> bs!658590 (= (= lt!1587235 lt!1586866) (= lambda!144773 lambda!144714))))

(assert (=> bs!658594 (= (= lt!1587235 lt!1586446) (= lambda!144773 lambda!144700))))

(assert (=> bs!658595 (= (= lt!1587235 lt!1586998) (= lambda!144773 lambda!144738))))

(assert (=> bs!658596 (= (= lt!1587235 lt!1587151) (= lambda!144773 lambda!144764))))

(assert (=> bs!658597 (= (= lt!1587235 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144773 lambda!144756))))

(assert (=> bs!658598 (= (= lt!1587235 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144773 lambda!144769))))

(assert (=> bs!658589 (= (= lt!1587235 lt!1586446) (= lambda!144773 lambda!144704))))

(assert (=> bs!658599 (= (= lt!1587235 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144773 lambda!144741))))

(assert (=> bs!658590 (= (= lt!1587235 lt!1586446) (= lambda!144773 lambda!144713))))

(assert (=> b!4376449 (= (= lt!1587235 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144773 lambda!144771))))

(assert (=> bs!658600 (= (= lt!1587235 lt!1586965) (= lambda!144773 lambda!144733))))

(assert (=> bs!658600 (= (= lt!1587235 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144773 lambda!144732))))

(assert (=> bs!658601 (= (= lt!1587235 lt!1586962) (= lambda!144773 lambda!144734))))

(assert (=> bs!658602 (= (= lt!1587235 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144773 lambda!144740))))

(assert (=> bs!658603 (= (= lt!1587235 lt!1586805) (= lambda!144773 lambda!144706))))

(assert (=> bs!658593 (= (= lt!1587235 lt!1587154) (= lambda!144773 lambda!144763))))

(assert (=> bs!658604 (= (= lt!1587235 lt!1586832) (= lambda!144773 lambda!144749))))

(assert (=> bs!658605 (= (= lt!1587235 lt!1586995) (= lambda!144773 lambda!144739))))

(assert (=> bs!658594 (= (= lt!1587235 lt!1586783) (= lambda!144773 lambda!144701))))

(assert (=> bs!658606 (= (= lt!1587235 lt!1586780) (= lambda!144773 lambda!144702))))

(assert (=> bs!658607 (not (= lambda!144773 lambda!144613))))

(assert (=> bs!658608 (= (= lt!1587235 (+!778 lt!1586446 lt!1586455)) (= lambda!144773 lambda!144707))))

(assert (=> bs!658609 (= (= lt!1587235 lt!1586446) (= lambda!144773 lambda!144712))))

(assert (=> bs!658610 (= (= lt!1587235 lt!1586446) (= lambda!144773 lambda!144755))))

(assert (=> bs!658611 (= (= lt!1587235 (+!778 lt!1586446 lt!1586455)) (= lambda!144773 lambda!144708))))

(assert (=> bs!658613 (= (= lt!1587235 lt!1586446) (= lambda!144773 lambda!144699))))

(assert (=> bs!658595 (= (= lt!1587235 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144773 lambda!144737))))

(assert (=> bs!658615 (= (= lt!1587235 lt!1586808) (= lambda!144773 lambda!144766))))

(assert (=> bs!658599 (= (= lt!1587235 lt!1587060) (= lambda!144773 lambda!144742))))

(assert (=> bs!658618 (= (= lt!1587235 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144773 lambda!144736))))

(assert (=> bs!658611 (= (= lt!1587235 lt!1586832) (= lambda!144773 lambda!144709))))

(assert (=> bs!658621 (= (= lt!1587235 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144773 lambda!144731))))

(assert (=> b!4376449 true))

(declare-fun bs!658623 () Bool)

(declare-fun d!1302408 () Bool)

(assert (= bs!658623 (and d!1302408 d!1302320)))

(declare-fun lt!1587232 () ListMap!2373)

(declare-fun lambda!144774 () Int)

(assert (=> bs!658623 (= (= lt!1587232 lt!1587057) (= lambda!144774 lambda!144743))))

(declare-fun bs!658624 () Bool)

(assert (= bs!658624 (and d!1302408 b!4376000)))

(assert (=> bs!658624 (= (= lt!1587232 lt!1586446) (= lambda!144774 lambda!144703))))

(declare-fun bs!658625 () Bool)

(assert (= bs!658625 (and d!1302408 d!1302208)))

(assert (=> bs!658625 (= (= lt!1587232 lt!1586829) (= lambda!144774 lambda!144710))))

(declare-fun bs!658626 () Bool)

(assert (= bs!658626 (and d!1302408 b!4376001)))

(assert (=> bs!658626 (= (= lt!1587232 lt!1586808) (= lambda!144774 lambda!144705))))

(declare-fun bs!658627 () Bool)

(assert (= bs!658627 (and d!1302408 d!1302220)))

(assert (=> bs!658627 (not (= lambda!144774 lambda!144717))))

(declare-fun bs!658628 () Bool)

(assert (= bs!658628 (and d!1302408 d!1302214)))

(assert (=> bs!658628 (= (= lt!1587232 lt!1586863) (= lambda!144774 lambda!144715))))

(declare-fun bs!658629 () Bool)

(assert (= bs!658629 (and d!1302408 b!4376352)))

(assert (=> bs!658629 (= (= lt!1587232 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144774 lambda!144759))))

(declare-fun bs!658630 () Bool)

(assert (= bs!658630 (and d!1302408 b!4376019)))

(assert (=> bs!658630 (= (= lt!1587232 lt!1586866) (= lambda!144774 lambda!144714))))

(declare-fun bs!658631 () Bool)

(assert (= bs!658631 (and d!1302408 b!4375992)))

(assert (=> bs!658631 (= (= lt!1587232 lt!1586446) (= lambda!144774 lambda!144700))))

(declare-fun bs!658632 () Bool)

(assert (= bs!658632 (and d!1302408 d!1302364)))

(assert (=> bs!658632 (= (= lt!1587232 lt!1587151) (= lambda!144774 lambda!144764))))

(declare-fun bs!658633 () Bool)

(assert (= bs!658633 (and d!1302408 b!4376351)))

(assert (=> bs!658633 (= (= lt!1587232 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144774 lambda!144756))))

(declare-fun bs!658634 () Bool)

(assert (= bs!658634 (and d!1302408 b!4376448)))

(assert (=> bs!658634 (= (= lt!1587232 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144774 lambda!144769))))

(assert (=> bs!658626 (= (= lt!1587232 lt!1586446) (= lambda!144774 lambda!144704))))

(declare-fun bs!658635 () Bool)

(assert (= bs!658635 (and d!1302408 b!4376255)))

(assert (=> bs!658635 (= (= lt!1587232 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144774 lambda!144741))))

(assert (=> bs!658630 (= (= lt!1587232 lt!1586446) (= lambda!144774 lambda!144713))))

(declare-fun bs!658636 () Bool)

(assert (= bs!658636 (and d!1302408 b!4376449)))

(assert (=> bs!658636 (= (= lt!1587232 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144774 lambda!144771))))

(declare-fun bs!658637 () Bool)

(assert (= bs!658637 (and d!1302408 b!4376151)))

(assert (=> bs!658637 (= (= lt!1587232 lt!1586965) (= lambda!144774 lambda!144733))))

(assert (=> bs!658637 (= (= lt!1587232 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144774 lambda!144732))))

(declare-fun bs!658638 () Bool)

(assert (= bs!658638 (and d!1302408 d!1302282)))

(assert (=> bs!658638 (= (= lt!1587232 lt!1586962) (= lambda!144774 lambda!144734))))

(declare-fun bs!658639 () Bool)

(assert (= bs!658639 (and d!1302408 b!4376254)))

(assert (=> bs!658639 (= (= lt!1587232 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144774 lambda!144740))))

(declare-fun bs!658640 () Bool)

(assert (= bs!658640 (and d!1302408 d!1302202)))

(assert (=> bs!658640 (= (= lt!1587232 lt!1586805) (= lambda!144774 lambda!144706))))

(assert (=> bs!658629 (= (= lt!1587232 lt!1587154) (= lambda!144774 lambda!144763))))

(declare-fun bs!658641 () Bool)

(assert (= bs!658641 (and d!1302408 d!1302330)))

(assert (=> bs!658641 (= (= lt!1587232 lt!1586832) (= lambda!144774 lambda!144749))))

(declare-fun bs!658642 () Bool)

(assert (= bs!658642 (and d!1302408 d!1302304)))

(assert (=> bs!658642 (= (= lt!1587232 lt!1586995) (= lambda!144774 lambda!144739))))

(assert (=> bs!658631 (= (= lt!1587232 lt!1586783) (= lambda!144774 lambda!144701))))

(declare-fun bs!658643 () Bool)

(assert (= bs!658643 (and d!1302408 d!1302152)))

(assert (=> bs!658643 (= (= lt!1587232 lt!1586780) (= lambda!144774 lambda!144702))))

(declare-fun bs!658644 () Bool)

(assert (= bs!658644 (and d!1302408 d!1302118)))

(assert (=> bs!658644 (not (= lambda!144774 lambda!144613))))

(declare-fun bs!658645 () Bool)

(assert (= bs!658645 (and d!1302408 b!4376005)))

(assert (=> bs!658645 (= (= lt!1587232 (+!778 lt!1586446 lt!1586455)) (= lambda!144774 lambda!144707))))

(declare-fun bs!658646 () Bool)

(assert (= bs!658646 (and d!1302408 b!4376018)))

(assert (=> bs!658646 (= (= lt!1587232 lt!1586446) (= lambda!144774 lambda!144712))))

(declare-fun bs!658647 () Bool)

(assert (= bs!658647 (and d!1302408 d!1302348)))

(assert (=> bs!658647 (= (= lt!1587232 lt!1586446) (= lambda!144774 lambda!144755))))

(declare-fun bs!658648 () Bool)

(assert (= bs!658648 (and d!1302408 b!4376006)))

(assert (=> bs!658648 (= (= lt!1587232 (+!778 lt!1586446 lt!1586455)) (= lambda!144774 lambda!144708))))

(declare-fun bs!658649 () Bool)

(assert (= bs!658649 (and d!1302408 b!4375991)))

(assert (=> bs!658649 (= (= lt!1587232 lt!1586446) (= lambda!144774 lambda!144699))))

(declare-fun bs!658650 () Bool)

(assert (= bs!658650 (and d!1302408 b!4376193)))

(assert (=> bs!658650 (= (= lt!1587232 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144774 lambda!144737))))

(declare-fun bs!658651 () Bool)

(assert (= bs!658651 (and d!1302408 d!1302400)))

(assert (=> bs!658651 (= (= lt!1587232 lt!1586808) (= lambda!144774 lambda!144766))))

(assert (=> bs!658635 (= (= lt!1587232 lt!1587060) (= lambda!144774 lambda!144742))))

(declare-fun bs!658652 () Bool)

(assert (= bs!658652 (and d!1302408 b!4376192)))

(assert (=> bs!658652 (= (= lt!1587232 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144774 lambda!144736))))

(assert (=> bs!658648 (= (= lt!1587232 lt!1586832) (= lambda!144774 lambda!144709))))

(declare-fun bs!658653 () Bool)

(assert (= bs!658653 (and d!1302408 b!4376150)))

(assert (=> bs!658653 (= (= lt!1587232 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144774 lambda!144731))))

(assert (=> bs!658636 (= (= lt!1587232 lt!1587235) (= lambda!144774 lambda!144773))))

(assert (=> bs!658650 (= (= lt!1587232 lt!1586998) (= lambda!144774 lambda!144738))))

(assert (=> d!1302408 true))

(declare-fun c!744222 () Bool)

(declare-fun bm!304313 () Bool)

(declare-fun call!304319 () Bool)

(assert (=> bm!304313 (= call!304319 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 newBucket!200))) (ite c!744222 lambda!144769 lambda!144771)))))

(declare-fun b!4376445 () Bool)

(declare-fun e!2724133 () Bool)

(assert (=> b!4376445 (= e!2724133 (invariantList!719 (toList!3130 lt!1587232)))))

(declare-fun b!4376446 () Bool)

(declare-fun res!1801921 () Bool)

(assert (=> b!4376446 (=> (not res!1801921) (not e!2724133))))

(assert (=> b!4376446 (= res!1801921 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 newBucket!200))) lambda!144774))))

(assert (=> d!1302408 e!2724133))

(declare-fun res!1801922 () Bool)

(assert (=> d!1302408 (=> (not res!1801922) (not e!2724133))))

(assert (=> d!1302408 (= res!1801922 (forall!9261 (t!356190 newBucket!200) lambda!144774))))

(declare-fun e!2724132 () ListMap!2373)

(assert (=> d!1302408 (= lt!1587232 e!2724132)))

(assert (=> d!1302408 (= c!744222 ((_ is Nil!49140) (t!356190 newBucket!200)))))

(assert (=> d!1302408 (noDuplicateKeys!573 (t!356190 newBucket!200))))

(assert (=> d!1302408 (= (addToMapMapFromBucket!254 (t!356190 newBucket!200) (+!778 lt!1586446 (h!54733 newBucket!200))) lt!1587232)))

(declare-fun call!304320 () Bool)

(declare-fun bm!304314 () Bool)

(assert (=> bm!304314 (= call!304320 (forall!9261 (ite c!744222 (toList!3130 (+!778 lt!1586446 (h!54733 newBucket!200))) (t!356190 newBucket!200)) (ite c!744222 lambda!144769 lambda!144773)))))

(declare-fun bm!304315 () Bool)

(declare-fun call!304318 () Unit!74656)

(assert (=> bm!304315 (= call!304318 (lemmaContainsAllItsOwnKeys!101 (+!778 lt!1586446 (h!54733 newBucket!200))))))

(declare-fun b!4376447 () Bool)

(declare-fun e!2724134 () Bool)

(assert (=> b!4376447 (= e!2724134 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 newBucket!200))) lambda!144773))))

(assert (=> b!4376448 (= e!2724132 (+!778 lt!1586446 (h!54733 newBucket!200)))))

(declare-fun lt!1587236 () Unit!74656)

(assert (=> b!4376448 (= lt!1587236 call!304318)))

(assert (=> b!4376448 call!304319))

(declare-fun lt!1587217 () Unit!74656)

(assert (=> b!4376448 (= lt!1587217 lt!1587236)))

(assert (=> b!4376448 call!304320))

(declare-fun lt!1587219 () Unit!74656)

(declare-fun Unit!74857 () Unit!74656)

(assert (=> b!4376448 (= lt!1587219 Unit!74857)))

(assert (=> b!4376449 (= e!2724132 lt!1587235)))

(declare-fun lt!1587225 () ListMap!2373)

(assert (=> b!4376449 (= lt!1587225 (+!778 (+!778 lt!1586446 (h!54733 newBucket!200)) (h!54733 (t!356190 newBucket!200))))))

(assert (=> b!4376449 (= lt!1587235 (addToMapMapFromBucket!254 (t!356190 (t!356190 newBucket!200)) (+!778 (+!778 lt!1586446 (h!54733 newBucket!200)) (h!54733 (t!356190 newBucket!200)))))))

(declare-fun lt!1587231 () Unit!74656)

(assert (=> b!4376449 (= lt!1587231 call!304318)))

(assert (=> b!4376449 call!304319))

(declare-fun lt!1587224 () Unit!74656)

(assert (=> b!4376449 (= lt!1587224 lt!1587231)))

(assert (=> b!4376449 (forall!9261 (toList!3130 lt!1587225) lambda!144773)))

(declare-fun lt!1587234 () Unit!74656)

(declare-fun Unit!74858 () Unit!74656)

(assert (=> b!4376449 (= lt!1587234 Unit!74858)))

(assert (=> b!4376449 (forall!9261 (t!356190 (t!356190 newBucket!200)) lambda!144773)))

(declare-fun lt!1587226 () Unit!74656)

(declare-fun Unit!74859 () Unit!74656)

(assert (=> b!4376449 (= lt!1587226 Unit!74859)))

(declare-fun lt!1587228 () Unit!74656)

(declare-fun Unit!74860 () Unit!74656)

(assert (=> b!4376449 (= lt!1587228 Unit!74860)))

(declare-fun lt!1587218 () Unit!74656)

(assert (=> b!4376449 (= lt!1587218 (forallContained!1899 (toList!3130 lt!1587225) lambda!144773 (h!54733 (t!356190 newBucket!200))))))

(assert (=> b!4376449 (contains!11461 lt!1587225 (_1!27625 (h!54733 (t!356190 newBucket!200))))))

(declare-fun lt!1587237 () Unit!74656)

(declare-fun Unit!74861 () Unit!74656)

(assert (=> b!4376449 (= lt!1587237 Unit!74861)))

(assert (=> b!4376449 (contains!11461 lt!1587235 (_1!27625 (h!54733 (t!356190 newBucket!200))))))

(declare-fun lt!1587223 () Unit!74656)

(declare-fun Unit!74862 () Unit!74656)

(assert (=> b!4376449 (= lt!1587223 Unit!74862)))

(assert (=> b!4376449 (forall!9261 (t!356190 newBucket!200) lambda!144773)))

(declare-fun lt!1587230 () Unit!74656)

(declare-fun Unit!74863 () Unit!74656)

(assert (=> b!4376449 (= lt!1587230 Unit!74863)))

(assert (=> b!4376449 (forall!9261 (toList!3130 lt!1587225) lambda!144773)))

(declare-fun lt!1587220 () Unit!74656)

(declare-fun Unit!74864 () Unit!74656)

(assert (=> b!4376449 (= lt!1587220 Unit!74864)))

(declare-fun lt!1587227 () Unit!74656)

(declare-fun Unit!74865 () Unit!74656)

(assert (=> b!4376449 (= lt!1587227 Unit!74865)))

(declare-fun lt!1587233 () Unit!74656)

(assert (=> b!4376449 (= lt!1587233 (addForallContainsKeyThenBeforeAdding!101 (+!778 lt!1586446 (h!54733 newBucket!200)) lt!1587235 (_1!27625 (h!54733 (t!356190 newBucket!200))) (_2!27625 (h!54733 (t!356190 newBucket!200)))))))

(assert (=> b!4376449 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 newBucket!200))) lambda!144773)))

(declare-fun lt!1587221 () Unit!74656)

(assert (=> b!4376449 (= lt!1587221 lt!1587233)))

(assert (=> b!4376449 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 newBucket!200))) lambda!144773)))

(declare-fun lt!1587222 () Unit!74656)

(declare-fun Unit!74866 () Unit!74656)

(assert (=> b!4376449 (= lt!1587222 Unit!74866)))

(declare-fun res!1801920 () Bool)

(assert (=> b!4376449 (= res!1801920 call!304320)))

(assert (=> b!4376449 (=> (not res!1801920) (not e!2724134))))

(assert (=> b!4376449 e!2724134))

(declare-fun lt!1587229 () Unit!74656)

(declare-fun Unit!74867 () Unit!74656)

(assert (=> b!4376449 (= lt!1587229 Unit!74867)))

(assert (= (and d!1302408 c!744222) b!4376448))

(assert (= (and d!1302408 (not c!744222)) b!4376449))

(assert (= (and b!4376449 res!1801920) b!4376447))

(assert (= (or b!4376448 b!4376449) bm!304315))

(assert (= (or b!4376448 b!4376449) bm!304313))

(assert (= (or b!4376448 b!4376449) bm!304314))

(assert (= (and d!1302408 res!1801922) b!4376446))

(assert (= (and b!4376446 res!1801921) b!4376445))

(declare-fun m!5010277 () Bool)

(assert (=> bm!304313 m!5010277))

(declare-fun m!5010279 () Bool)

(assert (=> b!4376447 m!5010279))

(declare-fun m!5010281 () Bool)

(assert (=> b!4376445 m!5010281))

(declare-fun m!5010283 () Bool)

(assert (=> b!4376446 m!5010283))

(declare-fun m!5010285 () Bool)

(assert (=> b!4376449 m!5010285))

(declare-fun m!5010287 () Bool)

(assert (=> b!4376449 m!5010287))

(declare-fun m!5010289 () Bool)

(assert (=> b!4376449 m!5010289))

(declare-fun m!5010291 () Bool)

(assert (=> b!4376449 m!5010291))

(declare-fun m!5010293 () Bool)

(assert (=> b!4376449 m!5010293))

(assert (=> b!4376449 m!5010279))

(assert (=> b!4376449 m!5010279))

(assert (=> b!4376449 m!5009321))

(declare-fun m!5010295 () Bool)

(assert (=> b!4376449 m!5010295))

(declare-fun m!5010297 () Bool)

(assert (=> b!4376449 m!5010297))

(assert (=> b!4376449 m!5010293))

(declare-fun m!5010299 () Bool)

(assert (=> b!4376449 m!5010299))

(assert (=> b!4376449 m!5009321))

(assert (=> b!4376449 m!5010289))

(declare-fun m!5010301 () Bool)

(assert (=> b!4376449 m!5010301))

(declare-fun m!5010303 () Bool)

(assert (=> d!1302408 m!5010303))

(assert (=> d!1302408 m!5009459))

(assert (=> bm!304315 m!5009321))

(declare-fun m!5010305 () Bool)

(assert (=> bm!304315 m!5010305))

(declare-fun m!5010307 () Bool)

(assert (=> bm!304314 m!5010307))

(assert (=> b!4376001 d!1302408))

(declare-fun d!1302418 () Bool)

(declare-fun e!2724146 () Bool)

(assert (=> d!1302418 e!2724146))

(declare-fun res!1801937 () Bool)

(assert (=> d!1302418 (=> res!1801937 e!2724146)))

(declare-fun lt!1587245 () Bool)

(assert (=> d!1302418 (= res!1801937 (not lt!1587245))))

(declare-fun lt!1587246 () Bool)

(assert (=> d!1302418 (= lt!1587245 lt!1587246)))

(declare-fun lt!1587247 () Unit!74656)

(declare-fun e!2724147 () Unit!74656)

(assert (=> d!1302418 (= lt!1587247 e!2724147)))

(declare-fun c!744224 () Bool)

(assert (=> d!1302418 (= c!744224 lt!1587246)))

(assert (=> d!1302418 (= lt!1587246 (containsKey!836 (toList!3129 lt!1586786) (_1!27626 (tuple2!48665 hash!377 lt!1586452))))))

(assert (=> d!1302418 (= (contains!11462 lt!1586786 (_1!27626 (tuple2!48665 hash!377 lt!1586452))) lt!1587245)))

(declare-fun b!4376466 () Bool)

(declare-fun lt!1587244 () Unit!74656)

(assert (=> b!4376466 (= e!2724147 lt!1587244)))

(assert (=> b!4376466 (= lt!1587244 (lemmaContainsKeyImpliesGetValueByKeyDefined!446 (toList!3129 lt!1586786) (_1!27626 (tuple2!48665 hash!377 lt!1586452))))))

(assert (=> b!4376466 (isDefined!7843 (getValueByKey!537 (toList!3129 lt!1586786) (_1!27626 (tuple2!48665 hash!377 lt!1586452))))))

(declare-fun b!4376467 () Bool)

(declare-fun Unit!74868 () Unit!74656)

(assert (=> b!4376467 (= e!2724147 Unit!74868)))

(declare-fun b!4376468 () Bool)

(assert (=> b!4376468 (= e!2724146 (isDefined!7843 (getValueByKey!537 (toList!3129 lt!1586786) (_1!27626 (tuple2!48665 hash!377 lt!1586452)))))))

(assert (= (and d!1302418 c!744224) b!4376466))

(assert (= (and d!1302418 (not c!744224)) b!4376467))

(assert (= (and d!1302418 (not res!1801937)) b!4376468))

(declare-fun m!5010309 () Bool)

(assert (=> d!1302418 m!5010309))

(declare-fun m!5010311 () Bool)

(assert (=> b!4376466 m!5010311))

(assert (=> b!4376466 m!5009305))

(assert (=> b!4376466 m!5009305))

(declare-fun m!5010313 () Bool)

(assert (=> b!4376466 m!5010313))

(assert (=> b!4376468 m!5009305))

(assert (=> b!4376468 m!5009305))

(assert (=> b!4376468 m!5010313))

(assert (=> d!1302200 d!1302418))

(declare-fun b!4376477 () Bool)

(declare-fun e!2724150 () Option!10551)

(assert (=> b!4376477 (= e!2724150 None!10550)))

(declare-fun b!4376474 () Bool)

(declare-fun e!2724149 () Option!10551)

(assert (=> b!4376474 (= e!2724149 (Some!10550 (_2!27626 (h!54734 lt!1586789))))))

(declare-fun b!4376476 () Bool)

(assert (=> b!4376476 (= e!2724150 (getValueByKey!537 (t!356191 lt!1586789) (_1!27626 (tuple2!48665 hash!377 lt!1586452))))))

(declare-fun d!1302420 () Bool)

(declare-fun c!744225 () Bool)

(assert (=> d!1302420 (= c!744225 (and ((_ is Cons!49141) lt!1586789) (= (_1!27626 (h!54734 lt!1586789)) (_1!27626 (tuple2!48665 hash!377 lt!1586452)))))))

(assert (=> d!1302420 (= (getValueByKey!537 lt!1586789 (_1!27626 (tuple2!48665 hash!377 lt!1586452))) e!2724149)))

(declare-fun b!4376475 () Bool)

(assert (=> b!4376475 (= e!2724149 e!2724150)))

(declare-fun c!744226 () Bool)

(assert (=> b!4376475 (= c!744226 (and ((_ is Cons!49141) lt!1586789) (not (= (_1!27626 (h!54734 lt!1586789)) (_1!27626 (tuple2!48665 hash!377 lt!1586452))))))))

(assert (= (and d!1302420 c!744225) b!4376474))

(assert (= (and d!1302420 (not c!744225)) b!4376475))

(assert (= (and b!4376475 c!744226) b!4376476))

(assert (= (and b!4376475 (not c!744226)) b!4376477))

(declare-fun m!5010315 () Bool)

(assert (=> b!4376476 m!5010315))

(assert (=> d!1302200 d!1302420))

(declare-fun d!1302422 () Bool)

(assert (=> d!1302422 (= (getValueByKey!537 lt!1586789 (_1!27626 (tuple2!48665 hash!377 lt!1586452))) (Some!10550 (_2!27626 (tuple2!48665 hash!377 lt!1586452))))))

(declare-fun lt!1587251 () Unit!74656)

(declare-fun choose!27270 (List!49265 (_ BitVec 64) List!49264) Unit!74656)

(assert (=> d!1302422 (= lt!1587251 (choose!27270 lt!1586789 (_1!27626 (tuple2!48665 hash!377 lt!1586452)) (_2!27626 (tuple2!48665 hash!377 lt!1586452))))))

(declare-fun e!2724157 () Bool)

(assert (=> d!1302422 e!2724157))

(declare-fun res!1801949 () Bool)

(assert (=> d!1302422 (=> (not res!1801949) (not e!2724157))))

(assert (=> d!1302422 (= res!1801949 (isStrictlySorted!146 lt!1586789))))

(assert (=> d!1302422 (= (lemmaContainsTupThenGetReturnValue!301 lt!1586789 (_1!27626 (tuple2!48665 hash!377 lt!1586452)) (_2!27626 (tuple2!48665 hash!377 lt!1586452))) lt!1587251)))

(declare-fun b!4376486 () Bool)

(declare-fun res!1801950 () Bool)

(assert (=> b!4376486 (=> (not res!1801950) (not e!2724157))))

(assert (=> b!4376486 (= res!1801950 (containsKey!836 lt!1586789 (_1!27626 (tuple2!48665 hash!377 lt!1586452))))))

(declare-fun b!4376487 () Bool)

(assert (=> b!4376487 (= e!2724157 (contains!11463 lt!1586789 (tuple2!48665 (_1!27626 (tuple2!48665 hash!377 lt!1586452)) (_2!27626 (tuple2!48665 hash!377 lt!1586452)))))))

(assert (= (and d!1302422 res!1801949) b!4376486))

(assert (= (and b!4376486 res!1801950) b!4376487))

(assert (=> d!1302422 m!5009299))

(declare-fun m!5010339 () Bool)

(assert (=> d!1302422 m!5010339))

(declare-fun m!5010341 () Bool)

(assert (=> d!1302422 m!5010341))

(declare-fun m!5010343 () Bool)

(assert (=> b!4376486 m!5010343))

(declare-fun m!5010345 () Bool)

(assert (=> b!4376487 m!5010345))

(assert (=> d!1302200 d!1302422))

(declare-fun b!4376526 () Bool)

(declare-fun e!2724187 () List!49265)

(declare-fun call!304329 () List!49265)

(assert (=> b!4376526 (= e!2724187 call!304329)))

(declare-fun b!4376527 () Bool)

(declare-fun e!2724185 () List!49265)

(declare-fun call!304327 () List!49265)

(assert (=> b!4376527 (= e!2724185 call!304327)))

(declare-fun d!1302430 () Bool)

(declare-fun e!2724186 () Bool)

(assert (=> d!1302430 e!2724186))

(declare-fun res!1801969 () Bool)

(assert (=> d!1302430 (=> (not res!1801969) (not e!2724186))))

(declare-fun lt!1587261 () List!49265)

(assert (=> d!1302430 (= res!1801969 (isStrictlySorted!146 lt!1587261))))

(declare-fun e!2724184 () List!49265)

(assert (=> d!1302430 (= lt!1587261 e!2724184)))

(declare-fun c!744239 () Bool)

(assert (=> d!1302430 (= c!744239 (and ((_ is Cons!49141) (toList!3129 lm!1707)) (bvslt (_1!27626 (h!54734 (toList!3129 lm!1707))) (_1!27626 (tuple2!48665 hash!377 lt!1586452)))))))

(assert (=> d!1302430 (isStrictlySorted!146 (toList!3129 lm!1707))))

(assert (=> d!1302430 (= (insertStrictlySorted!173 (toList!3129 lm!1707) (_1!27626 (tuple2!48665 hash!377 lt!1586452)) (_2!27626 (tuple2!48665 hash!377 lt!1586452))) lt!1587261)))

(declare-fun c!744237 () Bool)

(declare-fun b!4376528 () Bool)

(assert (=> b!4376528 (= c!744237 (and ((_ is Cons!49141) (toList!3129 lm!1707)) (bvsgt (_1!27626 (h!54734 (toList!3129 lm!1707))) (_1!27626 (tuple2!48665 hash!377 lt!1586452)))))))

(assert (=> b!4376528 (= e!2724185 e!2724187)))

(declare-fun b!4376529 () Bool)

(assert (=> b!4376529 (= e!2724186 (contains!11463 lt!1587261 (tuple2!48665 (_1!27626 (tuple2!48665 hash!377 lt!1586452)) (_2!27626 (tuple2!48665 hash!377 lt!1586452)))))))

(declare-fun e!2724188 () List!49265)

(declare-fun call!304328 () List!49265)

(declare-fun bm!304322 () Bool)

(declare-fun $colon$colon!720 (List!49265 tuple2!48664) List!49265)

(assert (=> bm!304322 (= call!304328 ($colon$colon!720 e!2724188 (ite c!744239 (h!54734 (toList!3129 lm!1707)) (tuple2!48665 (_1!27626 (tuple2!48665 hash!377 lt!1586452)) (_2!27626 (tuple2!48665 hash!377 lt!1586452))))))))

(declare-fun c!744238 () Bool)

(assert (=> bm!304322 (= c!744238 c!744239)))

(declare-fun b!4376530 () Bool)

(assert (=> b!4376530 (= e!2724184 call!304328)))

(declare-fun b!4376531 () Bool)

(assert (=> b!4376531 (= e!2724187 call!304329)))

(declare-fun bm!304323 () Bool)

(assert (=> bm!304323 (= call!304327 call!304328)))

(declare-fun b!4376532 () Bool)

(declare-fun c!744240 () Bool)

(assert (=> b!4376532 (= e!2724188 (ite c!744240 (t!356191 (toList!3129 lm!1707)) (ite c!744237 (Cons!49141 (h!54734 (toList!3129 lm!1707)) (t!356191 (toList!3129 lm!1707))) Nil!49141)))))

(declare-fun b!4376533 () Bool)

(assert (=> b!4376533 (= e!2724188 (insertStrictlySorted!173 (t!356191 (toList!3129 lm!1707)) (_1!27626 (tuple2!48665 hash!377 lt!1586452)) (_2!27626 (tuple2!48665 hash!377 lt!1586452))))))

(declare-fun b!4376534 () Bool)

(assert (=> b!4376534 (= e!2724184 e!2724185)))

(assert (=> b!4376534 (= c!744240 (and ((_ is Cons!49141) (toList!3129 lm!1707)) (= (_1!27626 (h!54734 (toList!3129 lm!1707))) (_1!27626 (tuple2!48665 hash!377 lt!1586452)))))))

(declare-fun bm!304324 () Bool)

(assert (=> bm!304324 (= call!304329 call!304327)))

(declare-fun b!4376535 () Bool)

(declare-fun res!1801970 () Bool)

(assert (=> b!4376535 (=> (not res!1801970) (not e!2724186))))

(assert (=> b!4376535 (= res!1801970 (containsKey!836 lt!1587261 (_1!27626 (tuple2!48665 hash!377 lt!1586452))))))

(assert (= (and d!1302430 c!744239) b!4376530))

(assert (= (and d!1302430 (not c!744239)) b!4376534))

(assert (= (and b!4376534 c!744240) b!4376527))

(assert (= (and b!4376534 (not c!744240)) b!4376528))

(assert (= (and b!4376528 c!744237) b!4376526))

(assert (= (and b!4376528 (not c!744237)) b!4376531))

(assert (= (or b!4376526 b!4376531) bm!304324))

(assert (= (or b!4376527 bm!304324) bm!304323))

(assert (= (or b!4376530 bm!304323) bm!304322))

(assert (= (and bm!304322 c!744238) b!4376533))

(assert (= (and bm!304322 (not c!744238)) b!4376532))

(assert (= (and d!1302430 res!1801969) b!4376535))

(assert (= (and b!4376535 res!1801970) b!4376529))

(declare-fun m!5010379 () Bool)

(assert (=> bm!304322 m!5010379))

(declare-fun m!5010381 () Bool)

(assert (=> b!4376535 m!5010381))

(declare-fun m!5010383 () Bool)

(assert (=> b!4376529 m!5010383))

(declare-fun m!5010385 () Bool)

(assert (=> b!4376533 m!5010385))

(declare-fun m!5010387 () Bool)

(assert (=> d!1302430 m!5010387))

(assert (=> d!1302430 m!5008915))

(assert (=> d!1302200 d!1302430))

(declare-fun d!1302452 () Bool)

(declare-fun res!1801980 () Bool)

(declare-fun e!2724205 () Bool)

(assert (=> d!1302452 (=> res!1801980 e!2724205)))

(assert (=> d!1302452 (= res!1801980 (or ((_ is Nil!49141) (toList!3129 lm!1707)) ((_ is Nil!49141) (t!356191 (toList!3129 lm!1707)))))))

(assert (=> d!1302452 (= (isStrictlySorted!146 (toList!3129 lm!1707)) e!2724205)))

(declare-fun b!4376559 () Bool)

(declare-fun e!2724206 () Bool)

(assert (=> b!4376559 (= e!2724205 e!2724206)))

(declare-fun res!1801981 () Bool)

(assert (=> b!4376559 (=> (not res!1801981) (not e!2724206))))

(assert (=> b!4376559 (= res!1801981 (bvslt (_1!27626 (h!54734 (toList!3129 lm!1707))) (_1!27626 (h!54734 (t!356191 (toList!3129 lm!1707))))))))

(declare-fun b!4376560 () Bool)

(assert (=> b!4376560 (= e!2724206 (isStrictlySorted!146 (t!356191 (toList!3129 lm!1707))))))

(assert (= (and d!1302452 (not res!1801980)) b!4376559))

(assert (= (and b!4376559 res!1801981) b!4376560))

(declare-fun m!5010413 () Bool)

(assert (=> b!4376560 m!5010413))

(assert (=> d!1302116 d!1302452))

(declare-fun d!1302460 () Bool)

(declare-fun res!1801984 () Bool)

(declare-fun e!2724208 () Bool)

(assert (=> d!1302460 (=> res!1801984 e!2724208)))

(assert (=> d!1302460 (= res!1801984 (not ((_ is Cons!49140) (_2!27626 (h!54734 (toList!3129 lt!1586445))))))))

(assert (=> d!1302460 (= (noDuplicateKeys!573 (_2!27626 (h!54734 (toList!3129 lt!1586445)))) e!2724208)))

(declare-fun b!4376563 () Bool)

(declare-fun e!2724209 () Bool)

(assert (=> b!4376563 (= e!2724208 e!2724209)))

(declare-fun res!1801985 () Bool)

(assert (=> b!4376563 (=> (not res!1801985) (not e!2724209))))

(assert (=> b!4376563 (= res!1801985 (not (containsKey!835 (t!356190 (_2!27626 (h!54734 (toList!3129 lt!1586445)))) (_1!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586445))))))))))

(declare-fun b!4376564 () Bool)

(assert (=> b!4376564 (= e!2724209 (noDuplicateKeys!573 (t!356190 (_2!27626 (h!54734 (toList!3129 lt!1586445))))))))

(assert (= (and d!1302460 (not res!1801984)) b!4376563))

(assert (= (and b!4376563 res!1801985) b!4376564))

(declare-fun m!5010415 () Bool)

(assert (=> b!4376563 m!5010415))

(declare-fun m!5010419 () Bool)

(assert (=> b!4376564 m!5010419))

(assert (=> bs!657957 d!1302460))

(declare-fun d!1302462 () Bool)

(declare-fun res!1801996 () Bool)

(declare-fun e!2724223 () Bool)

(assert (=> d!1302462 (=> res!1801996 e!2724223)))

(assert (=> d!1302462 (= res!1801996 (and ((_ is Cons!49141) (toList!3129 lm!1707)) (= (_1!27626 (h!54734 (toList!3129 lm!1707))) hash!377)))))

(assert (=> d!1302462 (= (containsKey!836 (toList!3129 lm!1707) hash!377) e!2724223)))

(declare-fun b!4376585 () Bool)

(declare-fun e!2724224 () Bool)

(assert (=> b!4376585 (= e!2724223 e!2724224)))

(declare-fun res!1801997 () Bool)

(assert (=> b!4376585 (=> (not res!1801997) (not e!2724224))))

(assert (=> b!4376585 (= res!1801997 (and (or (not ((_ is Cons!49141) (toList!3129 lm!1707))) (bvsle (_1!27626 (h!54734 (toList!3129 lm!1707))) hash!377)) ((_ is Cons!49141) (toList!3129 lm!1707)) (bvslt (_1!27626 (h!54734 (toList!3129 lm!1707))) hash!377)))))

(declare-fun b!4376586 () Bool)

(assert (=> b!4376586 (= e!2724224 (containsKey!836 (t!356191 (toList!3129 lm!1707)) hash!377))))

(assert (= (and d!1302462 (not res!1801996)) b!4376585))

(assert (= (and b!4376585 res!1801997) b!4376586))

(declare-fun m!5010471 () Bool)

(assert (=> b!4376586 m!5010471))

(assert (=> d!1302144 d!1302462))

(declare-fun d!1302472 () Bool)

(declare-fun e!2724227 () Bool)

(assert (=> d!1302472 e!2724227))

(declare-fun res!1802000 () Bool)

(assert (=> d!1302472 (=> res!1802000 e!2724227)))

(declare-fun lt!1587283 () Bool)

(assert (=> d!1302472 (= res!1802000 (not lt!1587283))))

(declare-fun lt!1587284 () Bool)

(assert (=> d!1302472 (= lt!1587283 lt!1587284)))

(declare-fun lt!1587285 () Unit!74656)

(declare-fun e!2724228 () Unit!74656)

(assert (=> d!1302472 (= lt!1587285 e!2724228)))

(declare-fun c!744253 () Bool)

(assert (=> d!1302472 (= c!744253 lt!1587284)))

(assert (=> d!1302472 (= lt!1587284 (containsKey!836 (toList!3129 lt!1586561) (_1!27626 lt!1586448)))))

(assert (=> d!1302472 (= (contains!11462 lt!1586561 (_1!27626 lt!1586448)) lt!1587283)))

(declare-fun b!4376589 () Bool)

(declare-fun lt!1587282 () Unit!74656)

(assert (=> b!4376589 (= e!2724228 lt!1587282)))

(assert (=> b!4376589 (= lt!1587282 (lemmaContainsKeyImpliesGetValueByKeyDefined!446 (toList!3129 lt!1586561) (_1!27626 lt!1586448)))))

(assert (=> b!4376589 (isDefined!7843 (getValueByKey!537 (toList!3129 lt!1586561) (_1!27626 lt!1586448)))))

(declare-fun b!4376590 () Bool)

(declare-fun Unit!74869 () Unit!74656)

(assert (=> b!4376590 (= e!2724228 Unit!74869)))

(declare-fun b!4376591 () Bool)

(assert (=> b!4376591 (= e!2724227 (isDefined!7843 (getValueByKey!537 (toList!3129 lt!1586561) (_1!27626 lt!1586448))))))

(assert (= (and d!1302472 c!744253) b!4376589))

(assert (= (and d!1302472 (not c!744253)) b!4376590))

(assert (= (and d!1302472 (not res!1802000)) b!4376591))

(declare-fun m!5010477 () Bool)

(assert (=> d!1302472 m!5010477))

(declare-fun m!5010479 () Bool)

(assert (=> b!4376589 m!5010479))

(assert (=> b!4376589 m!5008997))

(assert (=> b!4376589 m!5008997))

(declare-fun m!5010481 () Bool)

(assert (=> b!4376589 m!5010481))

(assert (=> b!4376591 m!5008997))

(assert (=> b!4376591 m!5008997))

(assert (=> b!4376591 m!5010481))

(assert (=> d!1302136 d!1302472))

(declare-fun b!4376597 () Bool)

(declare-fun e!2724232 () Option!10551)

(assert (=> b!4376597 (= e!2724232 None!10550)))

(declare-fun b!4376594 () Bool)

(declare-fun e!2724231 () Option!10551)

(assert (=> b!4376594 (= e!2724231 (Some!10550 (_2!27626 (h!54734 lt!1586564))))))

(declare-fun b!4376596 () Bool)

(assert (=> b!4376596 (= e!2724232 (getValueByKey!537 (t!356191 lt!1586564) (_1!27626 lt!1586448)))))

(declare-fun d!1302476 () Bool)

(declare-fun c!744254 () Bool)

(assert (=> d!1302476 (= c!744254 (and ((_ is Cons!49141) lt!1586564) (= (_1!27626 (h!54734 lt!1586564)) (_1!27626 lt!1586448))))))

(assert (=> d!1302476 (= (getValueByKey!537 lt!1586564 (_1!27626 lt!1586448)) e!2724231)))

(declare-fun b!4376595 () Bool)

(assert (=> b!4376595 (= e!2724231 e!2724232)))

(declare-fun c!744255 () Bool)

(assert (=> b!4376595 (= c!744255 (and ((_ is Cons!49141) lt!1586564) (not (= (_1!27626 (h!54734 lt!1586564)) (_1!27626 lt!1586448)))))))

(assert (= (and d!1302476 c!744254) b!4376594))

(assert (= (and d!1302476 (not c!744254)) b!4376595))

(assert (= (and b!4376595 c!744255) b!4376596))

(assert (= (and b!4376595 (not c!744255)) b!4376597))

(declare-fun m!5010483 () Bool)

(assert (=> b!4376596 m!5010483))

(assert (=> d!1302136 d!1302476))

(declare-fun d!1302478 () Bool)

(assert (=> d!1302478 (= (getValueByKey!537 lt!1586564 (_1!27626 lt!1586448)) (Some!10550 (_2!27626 lt!1586448)))))

(declare-fun lt!1587286 () Unit!74656)

(assert (=> d!1302478 (= lt!1587286 (choose!27270 lt!1586564 (_1!27626 lt!1586448) (_2!27626 lt!1586448)))))

(declare-fun e!2724233 () Bool)

(assert (=> d!1302478 e!2724233))

(declare-fun res!1802003 () Bool)

(assert (=> d!1302478 (=> (not res!1802003) (not e!2724233))))

(assert (=> d!1302478 (= res!1802003 (isStrictlySorted!146 lt!1586564))))

(assert (=> d!1302478 (= (lemmaContainsTupThenGetReturnValue!301 lt!1586564 (_1!27626 lt!1586448) (_2!27626 lt!1586448)) lt!1587286)))

(declare-fun b!4376598 () Bool)

(declare-fun res!1802004 () Bool)

(assert (=> b!4376598 (=> (not res!1802004) (not e!2724233))))

(assert (=> b!4376598 (= res!1802004 (containsKey!836 lt!1586564 (_1!27626 lt!1586448)))))

(declare-fun b!4376599 () Bool)

(assert (=> b!4376599 (= e!2724233 (contains!11463 lt!1586564 (tuple2!48665 (_1!27626 lt!1586448) (_2!27626 lt!1586448))))))

(assert (= (and d!1302478 res!1802003) b!4376598))

(assert (= (and b!4376598 res!1802004) b!4376599))

(assert (=> d!1302478 m!5008991))

(declare-fun m!5010489 () Bool)

(assert (=> d!1302478 m!5010489))

(declare-fun m!5010491 () Bool)

(assert (=> d!1302478 m!5010491))

(declare-fun m!5010493 () Bool)

(assert (=> b!4376598 m!5010493))

(declare-fun m!5010495 () Bool)

(assert (=> b!4376599 m!5010495))

(assert (=> d!1302136 d!1302478))

(declare-fun b!4376602 () Bool)

(declare-fun e!2724239 () List!49265)

(declare-fun call!304337 () List!49265)

(assert (=> b!4376602 (= e!2724239 call!304337)))

(declare-fun b!4376603 () Bool)

(declare-fun e!2724237 () List!49265)

(declare-fun call!304335 () List!49265)

(assert (=> b!4376603 (= e!2724237 call!304335)))

(declare-fun d!1302482 () Bool)

(declare-fun e!2724238 () Bool)

(assert (=> d!1302482 e!2724238))

(declare-fun res!1802007 () Bool)

(assert (=> d!1302482 (=> (not res!1802007) (not e!2724238))))

(declare-fun lt!1587288 () List!49265)

(assert (=> d!1302482 (= res!1802007 (isStrictlySorted!146 lt!1587288))))

(declare-fun e!2724236 () List!49265)

(assert (=> d!1302482 (= lt!1587288 e!2724236)))

(declare-fun c!744258 () Bool)

(assert (=> d!1302482 (= c!744258 (and ((_ is Cons!49141) (toList!3129 lm!1707)) (bvslt (_1!27626 (h!54734 (toList!3129 lm!1707))) (_1!27626 lt!1586448))))))

(assert (=> d!1302482 (isStrictlySorted!146 (toList!3129 lm!1707))))

(assert (=> d!1302482 (= (insertStrictlySorted!173 (toList!3129 lm!1707) (_1!27626 lt!1586448) (_2!27626 lt!1586448)) lt!1587288)))

(declare-fun b!4376604 () Bool)

(declare-fun c!744256 () Bool)

(assert (=> b!4376604 (= c!744256 (and ((_ is Cons!49141) (toList!3129 lm!1707)) (bvsgt (_1!27626 (h!54734 (toList!3129 lm!1707))) (_1!27626 lt!1586448))))))

(assert (=> b!4376604 (= e!2724237 e!2724239)))

(declare-fun b!4376605 () Bool)

(assert (=> b!4376605 (= e!2724238 (contains!11463 lt!1587288 (tuple2!48665 (_1!27626 lt!1586448) (_2!27626 lt!1586448))))))

(declare-fun call!304336 () List!49265)

(declare-fun e!2724240 () List!49265)

(declare-fun bm!304330 () Bool)

(assert (=> bm!304330 (= call!304336 ($colon$colon!720 e!2724240 (ite c!744258 (h!54734 (toList!3129 lm!1707)) (tuple2!48665 (_1!27626 lt!1586448) (_2!27626 lt!1586448)))))))

(declare-fun c!744257 () Bool)

(assert (=> bm!304330 (= c!744257 c!744258)))

(declare-fun b!4376606 () Bool)

(assert (=> b!4376606 (= e!2724236 call!304336)))

(declare-fun b!4376607 () Bool)

(assert (=> b!4376607 (= e!2724239 call!304337)))

(declare-fun bm!304331 () Bool)

(assert (=> bm!304331 (= call!304335 call!304336)))

(declare-fun b!4376608 () Bool)

(declare-fun c!744259 () Bool)

(assert (=> b!4376608 (= e!2724240 (ite c!744259 (t!356191 (toList!3129 lm!1707)) (ite c!744256 (Cons!49141 (h!54734 (toList!3129 lm!1707)) (t!356191 (toList!3129 lm!1707))) Nil!49141)))))

(declare-fun b!4376609 () Bool)

(assert (=> b!4376609 (= e!2724240 (insertStrictlySorted!173 (t!356191 (toList!3129 lm!1707)) (_1!27626 lt!1586448) (_2!27626 lt!1586448)))))

(declare-fun b!4376610 () Bool)

(assert (=> b!4376610 (= e!2724236 e!2724237)))

(assert (=> b!4376610 (= c!744259 (and ((_ is Cons!49141) (toList!3129 lm!1707)) (= (_1!27626 (h!54734 (toList!3129 lm!1707))) (_1!27626 lt!1586448))))))

(declare-fun bm!304332 () Bool)

(assert (=> bm!304332 (= call!304337 call!304335)))

(declare-fun b!4376611 () Bool)

(declare-fun res!1802008 () Bool)

(assert (=> b!4376611 (=> (not res!1802008) (not e!2724238))))

(assert (=> b!4376611 (= res!1802008 (containsKey!836 lt!1587288 (_1!27626 lt!1586448)))))

(assert (= (and d!1302482 c!744258) b!4376606))

(assert (= (and d!1302482 (not c!744258)) b!4376610))

(assert (= (and b!4376610 c!744259) b!4376603))

(assert (= (and b!4376610 (not c!744259)) b!4376604))

(assert (= (and b!4376604 c!744256) b!4376602))

(assert (= (and b!4376604 (not c!744256)) b!4376607))

(assert (= (or b!4376602 b!4376607) bm!304332))

(assert (= (or b!4376603 bm!304332) bm!304331))

(assert (= (or b!4376606 bm!304331) bm!304330))

(assert (= (and bm!304330 c!744257) b!4376609))

(assert (= (and bm!304330 (not c!744257)) b!4376608))

(assert (= (and d!1302482 res!1802007) b!4376611))

(assert (= (and b!4376611 res!1802008) b!4376605))

(declare-fun m!5010507 () Bool)

(assert (=> bm!304330 m!5010507))

(declare-fun m!5010509 () Bool)

(assert (=> b!4376611 m!5010509))

(declare-fun m!5010511 () Bool)

(assert (=> b!4376605 m!5010511))

(declare-fun m!5010513 () Bool)

(assert (=> b!4376609 m!5010513))

(declare-fun m!5010515 () Bool)

(assert (=> d!1302482 m!5010515))

(assert (=> d!1302482 m!5008915))

(assert (=> d!1302136 d!1302482))

(declare-fun d!1302488 () Bool)

(declare-fun lt!1587289 () Bool)

(assert (=> d!1302488 (= lt!1587289 (select (content!7801 (toList!3129 lm!1707)) (tuple2!48665 hash!377 lt!1586458)))))

(declare-fun e!2724243 () Bool)

(assert (=> d!1302488 (= lt!1587289 e!2724243)))

(declare-fun res!1802011 () Bool)

(assert (=> d!1302488 (=> (not res!1802011) (not e!2724243))))

(assert (=> d!1302488 (= res!1802011 ((_ is Cons!49141) (toList!3129 lm!1707)))))

(assert (=> d!1302488 (= (contains!11463 (toList!3129 lm!1707) (tuple2!48665 hash!377 lt!1586458)) lt!1587289)))

(declare-fun b!4376614 () Bool)

(declare-fun e!2724244 () Bool)

(assert (=> b!4376614 (= e!2724243 e!2724244)))

(declare-fun res!1802012 () Bool)

(assert (=> b!4376614 (=> res!1802012 e!2724244)))

(assert (=> b!4376614 (= res!1802012 (= (h!54734 (toList!3129 lm!1707)) (tuple2!48665 hash!377 lt!1586458)))))

(declare-fun b!4376615 () Bool)

(assert (=> b!4376615 (= e!2724244 (contains!11463 (t!356191 (toList!3129 lm!1707)) (tuple2!48665 hash!377 lt!1586458)))))

(assert (= (and d!1302488 res!1802011) b!4376614))

(assert (= (and b!4376614 (not res!1802012)) b!4376615))

(assert (=> d!1302488 m!5008935))

(declare-fun m!5010517 () Bool)

(assert (=> d!1302488 m!5010517))

(declare-fun m!5010519 () Bool)

(assert (=> b!4376615 m!5010519))

(assert (=> d!1302124 d!1302488))

(declare-fun d!1302490 () Bool)

(assert (=> d!1302490 (contains!11463 (toList!3129 lm!1707) (tuple2!48665 hash!377 lt!1586458))))

(assert (=> d!1302490 true))

(declare-fun _$14!816 () Unit!74656)

(assert (=> d!1302490 (= (choose!27256 (toList!3129 lm!1707) hash!377 lt!1586458) _$14!816)))

(declare-fun bs!658685 () Bool)

(assert (= bs!658685 d!1302490))

(assert (=> bs!658685 m!5008925))

(assert (=> d!1302124 d!1302490))

(assert (=> d!1302124 d!1302452))

(declare-fun d!1302492 () Bool)

(declare-fun res!1802013 () Bool)

(declare-fun e!2724245 () Bool)

(assert (=> d!1302492 (=> res!1802013 e!2724245)))

(assert (=> d!1302492 (= res!1802013 ((_ is Nil!49140) newBucket!200))))

(assert (=> d!1302492 (= (forall!9261 newBucket!200 lambda!144706) e!2724245)))

(declare-fun b!4376616 () Bool)

(declare-fun e!2724246 () Bool)

(assert (=> b!4376616 (= e!2724245 e!2724246)))

(declare-fun res!1802014 () Bool)

(assert (=> b!4376616 (=> (not res!1802014) (not e!2724246))))

(assert (=> b!4376616 (= res!1802014 (dynLambda!20705 lambda!144706 (h!54733 newBucket!200)))))

(declare-fun b!4376617 () Bool)

(assert (=> b!4376617 (= e!2724246 (forall!9261 (t!356190 newBucket!200) lambda!144706))))

(assert (= (and d!1302492 (not res!1802013)) b!4376616))

(assert (= (and b!4376616 res!1802014) b!4376617))

(declare-fun b_lambda!134601 () Bool)

(assert (=> (not b_lambda!134601) (not b!4376616)))

(declare-fun m!5010521 () Bool)

(assert (=> b!4376616 m!5010521))

(declare-fun m!5010523 () Bool)

(assert (=> b!4376617 m!5010523))

(assert (=> d!1302202 d!1302492))

(assert (=> d!1302202 d!1302222))

(declare-fun d!1302494 () Bool)

(declare-fun lt!1587290 () Bool)

(assert (=> d!1302494 (= lt!1587290 (select (content!7801 (t!356191 (toList!3129 lm!1707))) lt!1586444))))

(declare-fun e!2724247 () Bool)

(assert (=> d!1302494 (= lt!1587290 e!2724247)))

(declare-fun res!1802015 () Bool)

(assert (=> d!1302494 (=> (not res!1802015) (not e!2724247))))

(assert (=> d!1302494 (= res!1802015 ((_ is Cons!49141) (t!356191 (toList!3129 lm!1707))))))

(assert (=> d!1302494 (= (contains!11463 (t!356191 (toList!3129 lm!1707)) lt!1586444) lt!1587290)))

(declare-fun b!4376618 () Bool)

(declare-fun e!2724248 () Bool)

(assert (=> b!4376618 (= e!2724247 e!2724248)))

(declare-fun res!1802016 () Bool)

(assert (=> b!4376618 (=> res!1802016 e!2724248)))

(assert (=> b!4376618 (= res!1802016 (= (h!54734 (t!356191 (toList!3129 lm!1707))) lt!1586444))))

(declare-fun b!4376619 () Bool)

(assert (=> b!4376619 (= e!2724248 (contains!11463 (t!356191 (t!356191 (toList!3129 lm!1707))) lt!1586444))))

(assert (= (and d!1302494 res!1802015) b!4376618))

(assert (= (and b!4376618 (not res!1802016)) b!4376619))

(declare-fun m!5010525 () Bool)

(assert (=> d!1302494 m!5010525))

(declare-fun m!5010527 () Bool)

(assert (=> d!1302494 m!5010527))

(declare-fun m!5010529 () Bool)

(assert (=> b!4376619 m!5010529))

(assert (=> b!4375827 d!1302494))

(declare-fun d!1302496 () Bool)

(declare-fun lt!1587293 () Bool)

(declare-fun content!7804 (List!49267) (InoxSet K!10500))

(assert (=> d!1302496 (= lt!1587293 (select (content!7804 (keys!16659 (extractMap!632 (toList!3129 lm!1707)))) key!3918))))

(declare-fun e!2724253 () Bool)

(assert (=> d!1302496 (= lt!1587293 e!2724253)))

(declare-fun res!1802021 () Bool)

(assert (=> d!1302496 (=> (not res!1802021) (not e!2724253))))

(assert (=> d!1302496 (= res!1802021 ((_ is Cons!49143) (keys!16659 (extractMap!632 (toList!3129 lm!1707)))))))

(assert (=> d!1302496 (= (contains!11467 (keys!16659 (extractMap!632 (toList!3129 lm!1707))) key!3918) lt!1587293)))

(declare-fun b!4376624 () Bool)

(declare-fun e!2724254 () Bool)

(assert (=> b!4376624 (= e!2724253 e!2724254)))

(declare-fun res!1802022 () Bool)

(assert (=> b!4376624 (=> res!1802022 e!2724254)))

(assert (=> b!4376624 (= res!1802022 (= (h!54738 (keys!16659 (extractMap!632 (toList!3129 lm!1707)))) key!3918))))

(declare-fun b!4376625 () Bool)

(assert (=> b!4376625 (= e!2724254 (contains!11467 (t!356193 (keys!16659 (extractMap!632 (toList!3129 lm!1707)))) key!3918))))

(assert (= (and d!1302496 res!1802021) b!4376624))

(assert (= (and b!4376624 (not res!1802022)) b!4376625))

(assert (=> d!1302496 m!5009471))

(declare-fun m!5010531 () Bool)

(assert (=> d!1302496 m!5010531))

(declare-fun m!5010533 () Bool)

(assert (=> d!1302496 m!5010533))

(declare-fun m!5010535 () Bool)

(assert (=> b!4376625 m!5010535))

(assert (=> b!4376050 d!1302496))

(declare-fun b!4376633 () Bool)

(assert (=> b!4376633 true))

(declare-fun d!1302498 () Bool)

(declare-fun e!2724257 () Bool)

(assert (=> d!1302498 e!2724257))

(declare-fun res!1802029 () Bool)

(assert (=> d!1302498 (=> (not res!1802029) (not e!2724257))))

(declare-fun lt!1587296 () List!49267)

(declare-fun noDuplicate!618 (List!49267) Bool)

(assert (=> d!1302498 (= res!1802029 (noDuplicate!618 lt!1587296))))

(assert (=> d!1302498 (= lt!1587296 (getKeysList!167 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))))))

(assert (=> d!1302498 (= (keys!16659 (extractMap!632 (toList!3129 lm!1707))) lt!1587296)))

(declare-fun b!4376632 () Bool)

(declare-fun res!1802031 () Bool)

(assert (=> b!4376632 (=> (not res!1802031) (not e!2724257))))

(declare-fun length!92 (List!49267) Int)

(declare-fun length!93 (List!49264) Int)

(assert (=> b!4376632 (= res!1802031 (= (length!92 lt!1587296) (length!93 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))))))

(declare-fun res!1802030 () Bool)

(assert (=> b!4376633 (=> (not res!1802030) (not e!2724257))))

(declare-fun lambda!144788 () Int)

(declare-fun forall!9263 (List!49267 Int) Bool)

(assert (=> b!4376633 (= res!1802030 (forall!9263 lt!1587296 lambda!144788))))

(declare-fun b!4376634 () Bool)

(declare-fun lambda!144789 () Int)

(declare-fun map!10701 (List!49264 Int) List!49267)

(assert (=> b!4376634 (= e!2724257 (= (content!7804 lt!1587296) (content!7804 (map!10701 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) lambda!144789))))))

(assert (= (and d!1302498 res!1802029) b!4376632))

(assert (= (and b!4376632 res!1802031) b!4376633))

(assert (= (and b!4376633 res!1802030) b!4376634))

(declare-fun m!5010537 () Bool)

(assert (=> d!1302498 m!5010537))

(assert (=> d!1302498 m!5009477))

(declare-fun m!5010539 () Bool)

(assert (=> b!4376632 m!5010539))

(declare-fun m!5010541 () Bool)

(assert (=> b!4376632 m!5010541))

(declare-fun m!5010543 () Bool)

(assert (=> b!4376633 m!5010543))

(declare-fun m!5010545 () Bool)

(assert (=> b!4376634 m!5010545))

(declare-fun m!5010547 () Bool)

(assert (=> b!4376634 m!5010547))

(assert (=> b!4376634 m!5010547))

(declare-fun m!5010549 () Bool)

(assert (=> b!4376634 m!5010549))

(assert (=> b!4376050 d!1302498))

(declare-fun d!1302500 () Bool)

(declare-fun choose!27272 (Hashable!4965 K!10500) (_ BitVec 64))

(assert (=> d!1302500 (= (hash!1737 hashF!1247 key!3918) (choose!27272 hashF!1247 key!3918))))

(declare-fun bs!658686 () Bool)

(assert (= bs!658686 d!1302500))

(declare-fun m!5010551 () Bool)

(assert (=> bs!658686 m!5010551))

(assert (=> d!1302120 d!1302500))

(declare-fun d!1302502 () Bool)

(declare-fun res!1802032 () Bool)

(declare-fun e!2724264 () Bool)

(assert (=> d!1302502 (=> res!1802032 e!2724264)))

(assert (=> d!1302502 (= res!1802032 ((_ is Nil!49140) lt!1586460))))

(assert (=> d!1302502 (= (forall!9261 lt!1586460 lambda!144715) e!2724264)))

(declare-fun b!4376649 () Bool)

(declare-fun e!2724265 () Bool)

(assert (=> b!4376649 (= e!2724264 e!2724265)))

(declare-fun res!1802033 () Bool)

(assert (=> b!4376649 (=> (not res!1802033) (not e!2724265))))

(assert (=> b!4376649 (= res!1802033 (dynLambda!20705 lambda!144715 (h!54733 lt!1586460)))))

(declare-fun b!4376650 () Bool)

(assert (=> b!4376650 (= e!2724265 (forall!9261 (t!356190 lt!1586460) lambda!144715))))

(assert (= (and d!1302502 (not res!1802032)) b!4376649))

(assert (= (and b!4376649 res!1802033) b!4376650))

(declare-fun b_lambda!134603 () Bool)

(assert (=> (not b_lambda!134603) (not b!4376649)))

(declare-fun m!5010553 () Bool)

(assert (=> b!4376649 m!5010553))

(declare-fun m!5010555 () Bool)

(assert (=> b!4376650 m!5010555))

(assert (=> d!1302214 d!1302502))

(declare-fun d!1302504 () Bool)

(declare-fun res!1802034 () Bool)

(declare-fun e!2724266 () Bool)

(assert (=> d!1302504 (=> res!1802034 e!2724266)))

(assert (=> d!1302504 (= res!1802034 (not ((_ is Cons!49140) lt!1586460)))))

(assert (=> d!1302504 (= (noDuplicateKeys!573 lt!1586460) e!2724266)))

(declare-fun b!4376651 () Bool)

(declare-fun e!2724267 () Bool)

(assert (=> b!4376651 (= e!2724266 e!2724267)))

(declare-fun res!1802035 () Bool)

(assert (=> b!4376651 (=> (not res!1802035) (not e!2724267))))

(assert (=> b!4376651 (= res!1802035 (not (containsKey!835 (t!356190 lt!1586460) (_1!27625 (h!54733 lt!1586460)))))))

(declare-fun b!4376652 () Bool)

(assert (=> b!4376652 (= e!2724267 (noDuplicateKeys!573 (t!356190 lt!1586460)))))

(assert (= (and d!1302504 (not res!1802034)) b!4376651))

(assert (= (and b!4376651 res!1802035) b!4376652))

(declare-fun m!5010557 () Bool)

(assert (=> b!4376651 m!5010557))

(assert (=> b!4376652 m!5009891))

(assert (=> d!1302214 d!1302504))

(declare-fun d!1302506 () Bool)

(declare-fun res!1802036 () Bool)

(declare-fun e!2724268 () Bool)

(assert (=> d!1302506 (=> res!1802036 e!2724268)))

(assert (=> d!1302506 (= res!1802036 (not ((_ is Cons!49140) (_2!27626 lt!1586444))))))

(assert (=> d!1302506 (= (noDuplicateKeys!573 (_2!27626 lt!1586444)) e!2724268)))

(declare-fun b!4376653 () Bool)

(declare-fun e!2724269 () Bool)

(assert (=> b!4376653 (= e!2724268 e!2724269)))

(declare-fun res!1802037 () Bool)

(assert (=> b!4376653 (=> (not res!1802037) (not e!2724269))))

(assert (=> b!4376653 (= res!1802037 (not (containsKey!835 (t!356190 (_2!27626 lt!1586444)) (_1!27625 (h!54733 (_2!27626 lt!1586444))))))))

(declare-fun b!4376654 () Bool)

(assert (=> b!4376654 (= e!2724269 (noDuplicateKeys!573 (t!356190 (_2!27626 lt!1586444))))))

(assert (= (and d!1302506 (not res!1802036)) b!4376653))

(assert (= (and b!4376653 res!1802037) b!4376654))

(declare-fun m!5010559 () Bool)

(assert (=> b!4376653 m!5010559))

(declare-fun m!5010561 () Bool)

(assert (=> b!4376654 m!5010561))

(assert (=> bs!657958 d!1302506))

(declare-fun bs!658780 () Bool)

(declare-fun b!4376714 () Bool)

(assert (= bs!658780 (and b!4376714 b!4376633)))

(declare-fun lambda!144813 () Int)

(assert (=> bs!658780 (= (= (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) (= lambda!144813 lambda!144788))))

(assert (=> b!4376714 true))

(declare-fun bs!658783 () Bool)

(declare-fun b!4376710 () Bool)

(assert (= bs!658783 (and b!4376710 b!4376633)))

(declare-fun lambda!144814 () Int)

(assert (=> bs!658783 (= (= (Cons!49140 (h!54733 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))) (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) (= lambda!144814 lambda!144788))))

(declare-fun bs!658784 () Bool)

(assert (= bs!658784 (and b!4376710 b!4376714)))

(assert (=> bs!658784 (= (= (Cons!49140 (h!54733 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))) (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))) (= lambda!144814 lambda!144813))))

(assert (=> b!4376710 true))

(declare-fun bs!658785 () Bool)

(declare-fun b!4376713 () Bool)

(assert (= bs!658785 (and b!4376713 b!4376633)))

(declare-fun lambda!144816 () Int)

(assert (=> bs!658785 (= lambda!144816 lambda!144788)))

(declare-fun bs!658786 () Bool)

(assert (= bs!658786 (and b!4376713 b!4376714)))

(assert (=> bs!658786 (= (= (toList!3130 (extractMap!632 (toList!3129 lm!1707))) (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))) (= lambda!144816 lambda!144813))))

(declare-fun bs!658787 () Bool)

(assert (= bs!658787 (and b!4376713 b!4376710)))

(assert (=> bs!658787 (= (= (toList!3130 (extractMap!632 (toList!3129 lm!1707))) (Cons!49140 (h!54733 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))))) (= lambda!144816 lambda!144814))))

(assert (=> b!4376713 true))

(declare-fun bs!658788 () Bool)

(declare-fun b!4376715 () Bool)

(assert (= bs!658788 (and b!4376715 b!4376634)))

(declare-fun lambda!144817 () Int)

(assert (=> bs!658788 (= lambda!144817 lambda!144789)))

(declare-fun b!4376708 () Bool)

(declare-fun e!2724299 () Unit!74656)

(declare-fun Unit!74872 () Unit!74656)

(assert (=> b!4376708 (= e!2724299 Unit!74872)))

(declare-fun b!4376709 () Bool)

(assert (=> b!4376709 false))

(declare-fun Unit!74873 () Unit!74656)

(assert (=> b!4376709 (= e!2724299 Unit!74873)))

(declare-fun e!2724300 () List!49267)

(assert (=> b!4376710 (= e!2724300 (Cons!49143 (_1!27625 (h!54733 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))) (getKeysList!167 (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))))))))

(declare-fun c!744279 () Bool)

(assert (=> b!4376710 (= c!744279 (containsKey!839 (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) (_1!27625 (h!54733 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))))))))

(declare-fun lt!1587364 () Unit!74656)

(assert (=> b!4376710 (= lt!1587364 e!2724299)))

(declare-fun c!744280 () Bool)

(assert (=> b!4376710 (= c!744280 (contains!11467 (getKeysList!167 (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))) (_1!27625 (h!54733 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))))))))

(declare-fun lt!1587363 () Unit!74656)

(declare-fun e!2724297 () Unit!74656)

(assert (=> b!4376710 (= lt!1587363 e!2724297)))

(declare-fun lt!1587365 () List!49267)

(assert (=> b!4376710 (= lt!1587365 (getKeysList!167 (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))))))

(declare-fun lt!1587368 () Unit!74656)

(declare-fun lemmaForallContainsAddHeadPreserves!39 (List!49264 List!49267 tuple2!48662) Unit!74656)

(assert (=> b!4376710 (= lt!1587368 (lemmaForallContainsAddHeadPreserves!39 (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) lt!1587365 (h!54733 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))))))

(assert (=> b!4376710 (forall!9263 lt!1587365 lambda!144814)))

(declare-fun lt!1587366 () Unit!74656)

(assert (=> b!4376710 (= lt!1587366 lt!1587368)))

(declare-fun b!4376711 () Bool)

(declare-fun Unit!74874 () Unit!74656)

(assert (=> b!4376711 (= e!2724297 Unit!74874)))

(declare-fun b!4376712 () Bool)

(assert (=> b!4376712 (= e!2724300 Nil!49143)))

(declare-fun res!1802065 () Bool)

(declare-fun e!2724298 () Bool)

(assert (=> b!4376713 (=> (not res!1802065) (not e!2724298))))

(declare-fun lt!1587362 () List!49267)

(assert (=> b!4376713 (= res!1802065 (forall!9263 lt!1587362 lambda!144816))))

(assert (=> b!4376714 false))

(declare-fun lt!1587367 () Unit!74656)

(declare-fun forallContained!1900 (List!49267 Int K!10500) Unit!74656)

(assert (=> b!4376714 (= lt!1587367 (forallContained!1900 (getKeysList!167 (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))) lambda!144813 (_1!27625 (h!54733 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))))))))

(declare-fun Unit!74875 () Unit!74656)

(assert (=> b!4376714 (= e!2724297 Unit!74875)))

(assert (=> b!4376715 (= e!2724298 (= (content!7804 lt!1587362) (content!7804 (map!10701 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) lambda!144817))))))

(declare-fun d!1302508 () Bool)

(assert (=> d!1302508 e!2724298))

(declare-fun res!1802063 () Bool)

(assert (=> d!1302508 (=> (not res!1802063) (not e!2724298))))

(assert (=> d!1302508 (= res!1802063 (noDuplicate!618 lt!1587362))))

(assert (=> d!1302508 (= lt!1587362 e!2724300)))

(declare-fun c!744281 () Bool)

(assert (=> d!1302508 (= c!744281 ((_ is Cons!49140) (toList!3130 (extractMap!632 (toList!3129 lm!1707)))))))

(assert (=> d!1302508 (invariantList!719 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))))

(assert (=> d!1302508 (= (getKeysList!167 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) lt!1587362)))

(declare-fun b!4376716 () Bool)

(declare-fun res!1802064 () Bool)

(assert (=> b!4376716 (=> (not res!1802064) (not e!2724298))))

(assert (=> b!4376716 (= res!1802064 (= (length!92 lt!1587362) (length!93 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))))))

(assert (= (and d!1302508 c!744281) b!4376710))

(assert (= (and d!1302508 (not c!744281)) b!4376712))

(assert (= (and b!4376710 c!744279) b!4376709))

(assert (= (and b!4376710 (not c!744279)) b!4376708))

(assert (= (and b!4376710 c!744280) b!4376714))

(assert (= (and b!4376710 (not c!744280)) b!4376711))

(assert (= (and d!1302508 res!1802063) b!4376716))

(assert (= (and b!4376716 res!1802064) b!4376713))

(assert (= (and b!4376713 res!1802065) b!4376715))

(declare-fun m!5010625 () Bool)

(assert (=> b!4376714 m!5010625))

(assert (=> b!4376714 m!5010625))

(declare-fun m!5010627 () Bool)

(assert (=> b!4376714 m!5010627))

(declare-fun m!5010629 () Bool)

(assert (=> b!4376713 m!5010629))

(declare-fun m!5010631 () Bool)

(assert (=> d!1302508 m!5010631))

(declare-fun m!5010633 () Bool)

(assert (=> d!1302508 m!5010633))

(declare-fun m!5010635 () Bool)

(assert (=> b!4376716 m!5010635))

(assert (=> b!4376716 m!5010541))

(assert (=> b!4376710 m!5010625))

(declare-fun m!5010637 () Bool)

(assert (=> b!4376710 m!5010637))

(declare-fun m!5010639 () Bool)

(assert (=> b!4376710 m!5010639))

(declare-fun m!5010641 () Bool)

(assert (=> b!4376710 m!5010641))

(assert (=> b!4376710 m!5010625))

(declare-fun m!5010643 () Bool)

(assert (=> b!4376710 m!5010643))

(declare-fun m!5010645 () Bool)

(assert (=> b!4376715 m!5010645))

(declare-fun m!5010647 () Bool)

(assert (=> b!4376715 m!5010647))

(assert (=> b!4376715 m!5010647))

(declare-fun m!5010649 () Bool)

(assert (=> b!4376715 m!5010649))

(assert (=> b!4376051 d!1302508))

(declare-fun d!1302520 () Bool)

(declare-fun res!1802066 () Bool)

(declare-fun e!2724301 () Bool)

(assert (=> d!1302520 (=> res!1802066 e!2724301)))

(assert (=> d!1302520 (= res!1802066 (and ((_ is Cons!49140) (t!356190 newBucket!200)) (= (_1!27625 (h!54733 (t!356190 newBucket!200))) (_1!27625 (h!54733 newBucket!200)))))))

(assert (=> d!1302520 (= (containsKey!835 (t!356190 newBucket!200) (_1!27625 (h!54733 newBucket!200))) e!2724301)))

(declare-fun b!4376719 () Bool)

(declare-fun e!2724302 () Bool)

(assert (=> b!4376719 (= e!2724301 e!2724302)))

(declare-fun res!1802067 () Bool)

(assert (=> b!4376719 (=> (not res!1802067) (not e!2724302))))

(assert (=> b!4376719 (= res!1802067 ((_ is Cons!49140) (t!356190 newBucket!200)))))

(declare-fun b!4376720 () Bool)

(assert (=> b!4376720 (= e!2724302 (containsKey!835 (t!356190 (t!356190 newBucket!200)) (_1!27625 (h!54733 newBucket!200))))))

(assert (= (and d!1302520 (not res!1802066)) b!4376719))

(assert (= (and b!4376719 res!1802067) b!4376720))

(declare-fun m!5010651 () Bool)

(assert (=> b!4376720 m!5010651))

(assert (=> b!4376028 d!1302520))

(assert (=> b!4376053 d!1302498))

(assert (=> b!4375830 d!1302128))

(declare-fun d!1302522 () Bool)

(declare-fun res!1802072 () Bool)

(declare-fun e!2724307 () Bool)

(assert (=> d!1302522 (=> res!1802072 e!2724307)))

(assert (=> d!1302522 (= res!1802072 (and ((_ is Cons!49140) (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) (= (_1!27625 (h!54733 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))) key!3918)))))

(assert (=> d!1302522 (= (containsKey!839 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918) e!2724307)))

(declare-fun b!4376725 () Bool)

(declare-fun e!2724308 () Bool)

(assert (=> b!4376725 (= e!2724307 e!2724308)))

(declare-fun res!1802073 () Bool)

(assert (=> b!4376725 (=> (not res!1802073) (not e!2724308))))

(assert (=> b!4376725 (= res!1802073 ((_ is Cons!49140) (toList!3130 (extractMap!632 (toList!3129 lm!1707)))))))

(declare-fun b!4376726 () Bool)

(assert (=> b!4376726 (= e!2724308 (containsKey!839 (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) key!3918))))

(assert (= (and d!1302522 (not res!1802072)) b!4376725))

(assert (= (and b!4376725 res!1802073) b!4376726))

(declare-fun m!5010653 () Bool)

(assert (=> b!4376726 m!5010653))

(assert (=> b!4376055 d!1302522))

(declare-fun d!1302524 () Bool)

(assert (=> d!1302524 (containsKey!839 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918)))

(declare-fun lt!1587371 () Unit!74656)

(declare-fun choose!27273 (List!49264 K!10500) Unit!74656)

(assert (=> d!1302524 (= lt!1587371 (choose!27273 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918))))

(assert (=> d!1302524 (invariantList!719 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))))

(assert (=> d!1302524 (= (lemmaInGetKeysListThenContainsKey!165 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918) lt!1587371)))

(declare-fun bs!658817 () Bool)

(assert (= bs!658817 d!1302524))

(assert (=> bs!658817 m!5009475))

(declare-fun m!5010655 () Bool)

(assert (=> bs!658817 m!5010655))

(assert (=> bs!658817 m!5010633))

(assert (=> b!4376055 d!1302524))

(declare-fun d!1302526 () Bool)

(declare-fun lt!1587372 () Bool)

(assert (=> d!1302526 (= lt!1587372 (select (content!7801 (toList!3129 lt!1586786)) (tuple2!48665 hash!377 lt!1586452)))))

(declare-fun e!2724309 () Bool)

(assert (=> d!1302526 (= lt!1587372 e!2724309)))

(declare-fun res!1802074 () Bool)

(assert (=> d!1302526 (=> (not res!1802074) (not e!2724309))))

(assert (=> d!1302526 (= res!1802074 ((_ is Cons!49141) (toList!3129 lt!1586786)))))

(assert (=> d!1302526 (= (contains!11463 (toList!3129 lt!1586786) (tuple2!48665 hash!377 lt!1586452)) lt!1587372)))

(declare-fun b!4376727 () Bool)

(declare-fun e!2724310 () Bool)

(assert (=> b!4376727 (= e!2724309 e!2724310)))

(declare-fun res!1802075 () Bool)

(assert (=> b!4376727 (=> res!1802075 e!2724310)))

(assert (=> b!4376727 (= res!1802075 (= (h!54734 (toList!3129 lt!1586786)) (tuple2!48665 hash!377 lt!1586452)))))

(declare-fun b!4376728 () Bool)

(assert (=> b!4376728 (= e!2724310 (contains!11463 (t!356191 (toList!3129 lt!1586786)) (tuple2!48665 hash!377 lt!1586452)))))

(assert (= (and d!1302526 res!1802074) b!4376727))

(assert (= (and b!4376727 (not res!1802075)) b!4376728))

(declare-fun m!5010657 () Bool)

(assert (=> d!1302526 m!5010657))

(declare-fun m!5010659 () Bool)

(assert (=> d!1302526 m!5010659))

(declare-fun m!5010661 () Bool)

(assert (=> b!4376728 m!5010661))

(assert (=> b!4375996 d!1302526))

(declare-fun b!4376730 () Bool)

(declare-fun e!2724311 () List!49264)

(declare-fun e!2724312 () List!49264)

(assert (=> b!4376730 (= e!2724311 e!2724312)))

(declare-fun c!744283 () Bool)

(assert (=> b!4376730 (= c!744283 ((_ is Cons!49140) (t!356190 lt!1586458)))))

(declare-fun b!4376731 () Bool)

(assert (=> b!4376731 (= e!2724312 (Cons!49140 (h!54733 (t!356190 lt!1586458)) (removePairForKey!541 (t!356190 (t!356190 lt!1586458)) key!3918)))))

(declare-fun d!1302528 () Bool)

(declare-fun lt!1587373 () List!49264)

(assert (=> d!1302528 (not (containsKey!835 lt!1587373 key!3918))))

(assert (=> d!1302528 (= lt!1587373 e!2724311)))

(declare-fun c!744282 () Bool)

(assert (=> d!1302528 (= c!744282 (and ((_ is Cons!49140) (t!356190 lt!1586458)) (= (_1!27625 (h!54733 (t!356190 lt!1586458))) key!3918)))))

(assert (=> d!1302528 (noDuplicateKeys!573 (t!356190 lt!1586458))))

(assert (=> d!1302528 (= (removePairForKey!541 (t!356190 lt!1586458) key!3918) lt!1587373)))

(declare-fun b!4376732 () Bool)

(assert (=> b!4376732 (= e!2724312 Nil!49140)))

(declare-fun b!4376729 () Bool)

(assert (=> b!4376729 (= e!2724311 (t!356190 (t!356190 lt!1586458)))))

(assert (= (and d!1302528 c!744282) b!4376729))

(assert (= (and d!1302528 (not c!744282)) b!4376730))

(assert (= (and b!4376730 c!744283) b!4376731))

(assert (= (and b!4376730 (not c!744283)) b!4376732))

(declare-fun m!5010663 () Bool)

(assert (=> b!4376731 m!5010663))

(declare-fun m!5010665 () Bool)

(assert (=> d!1302528 m!5010665))

(declare-fun m!5010667 () Bool)

(assert (=> d!1302528 m!5010667))

(assert (=> b!4375820 d!1302528))

(declare-fun d!1302530 () Bool)

(assert (=> d!1302530 (= (invariantList!719 (toList!3130 lt!1586829)) (noDuplicatedKeys!134 (toList!3130 lt!1586829)))))

(declare-fun bs!658821 () Bool)

(assert (= bs!658821 d!1302530))

(declare-fun m!5010669 () Bool)

(assert (=> bs!658821 m!5010669))

(assert (=> b!4376002 d!1302530))

(declare-fun d!1302532 () Bool)

(assert (=> d!1302532 (dynLambda!20703 lambda!144607 lt!1586444)))

(assert (=> d!1302532 true))

(declare-fun _$7!1522 () Unit!74656)

(assert (=> d!1302532 (= (choose!27257 (toList!3129 lm!1707) lambda!144607 lt!1586444) _$7!1522)))

(declare-fun b_lambda!134609 () Bool)

(assert (=> (not b_lambda!134609) (not d!1302532)))

(declare-fun bs!658822 () Bool)

(assert (= bs!658822 d!1302532))

(assert (=> bs!658822 m!5008941))

(assert (=> d!1302130 d!1302532))

(assert (=> d!1302130 d!1302108))

(declare-fun d!1302534 () Bool)

(assert (=> d!1302534 (= (invariantList!719 (toList!3130 lt!1586898)) (noDuplicatedKeys!134 (toList!3130 lt!1586898)))))

(declare-fun bs!658823 () Bool)

(assert (= bs!658823 d!1302534))

(declare-fun m!5010683 () Bool)

(assert (=> bs!658823 m!5010683))

(assert (=> d!1302226 d!1302534))

(declare-fun d!1302536 () Bool)

(declare-fun res!1802076 () Bool)

(declare-fun e!2724313 () Bool)

(assert (=> d!1302536 (=> res!1802076 e!2724313)))

(assert (=> d!1302536 (= res!1802076 ((_ is Nil!49141) (toList!3129 lm!1707)))))

(assert (=> d!1302536 (= (forall!9259 (toList!3129 lm!1707) lambda!144718) e!2724313)))

(declare-fun b!4376733 () Bool)

(declare-fun e!2724314 () Bool)

(assert (=> b!4376733 (= e!2724313 e!2724314)))

(declare-fun res!1802077 () Bool)

(assert (=> b!4376733 (=> (not res!1802077) (not e!2724314))))

(assert (=> b!4376733 (= res!1802077 (dynLambda!20703 lambda!144718 (h!54734 (toList!3129 lm!1707))))))

(declare-fun b!4376734 () Bool)

(assert (=> b!4376734 (= e!2724314 (forall!9259 (t!356191 (toList!3129 lm!1707)) lambda!144718))))

(assert (= (and d!1302536 (not res!1802076)) b!4376733))

(assert (= (and b!4376733 res!1802077) b!4376734))

(declare-fun b_lambda!134611 () Bool)

(assert (=> (not b_lambda!134611) (not b!4376733)))

(declare-fun m!5010705 () Bool)

(assert (=> b!4376733 m!5010705))

(declare-fun m!5010707 () Bool)

(assert (=> b!4376734 m!5010707))

(assert (=> d!1302226 d!1302536))

(declare-fun d!1302540 () Bool)

(declare-fun res!1802079 () Bool)

(declare-fun e!2724316 () Bool)

(assert (=> d!1302540 (=> res!1802079 e!2724316)))

(assert (=> d!1302540 (= res!1802079 (not ((_ is Cons!49140) (_2!27626 (h!54734 (toList!3129 lm!1707))))))))

(assert (=> d!1302540 (= (noDuplicateKeys!573 (_2!27626 (h!54734 (toList!3129 lm!1707)))) e!2724316)))

(declare-fun b!4376736 () Bool)

(declare-fun e!2724318 () Bool)

(assert (=> b!4376736 (= e!2724316 e!2724318)))

(declare-fun res!1802081 () Bool)

(assert (=> b!4376736 (=> (not res!1802081) (not e!2724318))))

(assert (=> b!4376736 (= res!1802081 (not (containsKey!835 (t!356190 (_2!27626 (h!54734 (toList!3129 lm!1707)))) (_1!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lm!1707))))))))))

(declare-fun b!4376738 () Bool)

(assert (=> b!4376738 (= e!2724318 (noDuplicateKeys!573 (t!356190 (_2!27626 (h!54734 (toList!3129 lm!1707))))))))

(assert (= (and d!1302540 (not res!1802079)) b!4376736))

(assert (= (and b!4376736 res!1802081) b!4376738))

(declare-fun m!5010709 () Bool)

(assert (=> b!4376736 m!5010709))

(declare-fun m!5010711 () Bool)

(assert (=> b!4376738 m!5010711))

(assert (=> bs!657955 d!1302540))

(declare-fun d!1302542 () Bool)

(declare-fun res!1802082 () Bool)

(declare-fun e!2724319 () Bool)

(assert (=> d!1302542 (=> res!1802082 e!2724319)))

(assert (=> d!1302542 (= res!1802082 ((_ is Nil!49140) (ite c!744113 (toList!3130 (+!778 lt!1586446 lt!1586455)) lt!1586460)))))

(assert (=> d!1302542 (= (forall!9261 (ite c!744113 (toList!3130 (+!778 lt!1586446 lt!1586455)) lt!1586460) (ite c!744113 lambda!144707 lambda!144709)) e!2724319)))

(declare-fun b!4376739 () Bool)

(declare-fun e!2724320 () Bool)

(assert (=> b!4376739 (= e!2724319 e!2724320)))

(declare-fun res!1802083 () Bool)

(assert (=> b!4376739 (=> (not res!1802083) (not e!2724320))))

(assert (=> b!4376739 (= res!1802083 (dynLambda!20705 (ite c!744113 lambda!144707 lambda!144709) (h!54733 (ite c!744113 (toList!3130 (+!778 lt!1586446 lt!1586455)) lt!1586460))))))

(declare-fun b!4376740 () Bool)

(assert (=> b!4376740 (= e!2724320 (forall!9261 (t!356190 (ite c!744113 (toList!3130 (+!778 lt!1586446 lt!1586455)) lt!1586460)) (ite c!744113 lambda!144707 lambda!144709)))))

(assert (= (and d!1302542 (not res!1802082)) b!4376739))

(assert (= (and b!4376739 res!1802083) b!4376740))

(declare-fun b_lambda!134615 () Bool)

(assert (=> (not b_lambda!134615) (not b!4376739)))

(declare-fun m!5010729 () Bool)

(assert (=> b!4376739 m!5010729))

(declare-fun m!5010731 () Bool)

(assert (=> b!4376740 m!5010731))

(assert (=> bm!304253 d!1302542))

(declare-fun d!1302548 () Bool)

(declare-fun res!1802089 () Bool)

(declare-fun e!2724328 () Bool)

(assert (=> d!1302548 (=> res!1802089 e!2724328)))

(assert (=> d!1302548 (= res!1802089 ((_ is Nil!49140) (toList!3130 lt!1586446)))))

(assert (=> d!1302548 (= (forall!9261 (toList!3130 lt!1586446) (ite c!744111 lambda!144699 lambda!144700)) e!2724328)))

(declare-fun b!4376752 () Bool)

(declare-fun e!2724329 () Bool)

(assert (=> b!4376752 (= e!2724328 e!2724329)))

(declare-fun res!1802090 () Bool)

(assert (=> b!4376752 (=> (not res!1802090) (not e!2724329))))

(assert (=> b!4376752 (= res!1802090 (dynLambda!20705 (ite c!744111 lambda!144699 lambda!144700) (h!54733 (toList!3130 lt!1586446))))))

(declare-fun b!4376753 () Bool)

(assert (=> b!4376753 (= e!2724329 (forall!9261 (t!356190 (toList!3130 lt!1586446)) (ite c!744111 lambda!144699 lambda!144700)))))

(assert (= (and d!1302548 (not res!1802089)) b!4376752))

(assert (= (and b!4376752 res!1802090) b!4376753))

(declare-fun b_lambda!134617 () Bool)

(assert (=> (not b_lambda!134617) (not b!4376752)))

(declare-fun m!5010757 () Bool)

(assert (=> b!4376752 m!5010757))

(declare-fun m!5010759 () Bool)

(assert (=> b!4376753 m!5010759))

(assert (=> bm!304246 d!1302548))

(declare-fun bs!658824 () Bool)

(declare-fun d!1302554 () Bool)

(assert (= bs!658824 (and d!1302554 d!1302320)))

(declare-fun lambda!144819 () Int)

(assert (=> bs!658824 (= (= (+!778 lt!1586446 lt!1586455) lt!1587057) (= lambda!144819 lambda!144743))))

(declare-fun bs!658825 () Bool)

(assert (= bs!658825 (and d!1302554 b!4376000)))

(assert (=> bs!658825 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144819 lambda!144703))))

(declare-fun bs!658826 () Bool)

(assert (= bs!658826 (and d!1302554 d!1302208)))

(assert (=> bs!658826 (= (= (+!778 lt!1586446 lt!1586455) lt!1586829) (= lambda!144819 lambda!144710))))

(declare-fun bs!658827 () Bool)

(assert (= bs!658827 (and d!1302554 b!4376001)))

(assert (=> bs!658827 (= (= (+!778 lt!1586446 lt!1586455) lt!1586808) (= lambda!144819 lambda!144705))))

(declare-fun bs!658828 () Bool)

(assert (= bs!658828 (and d!1302554 d!1302220)))

(assert (=> bs!658828 (not (= lambda!144819 lambda!144717))))

(declare-fun bs!658829 () Bool)

(assert (= bs!658829 (and d!1302554 d!1302214)))

(assert (=> bs!658829 (= (= (+!778 lt!1586446 lt!1586455) lt!1586863) (= lambda!144819 lambda!144715))))

(declare-fun bs!658830 () Bool)

(assert (= bs!658830 (and d!1302554 b!4376352)))

(assert (=> bs!658830 (= (= (+!778 lt!1586446 lt!1586455) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144819 lambda!144759))))

(declare-fun bs!658831 () Bool)

(assert (= bs!658831 (and d!1302554 b!4376019)))

(assert (=> bs!658831 (= (= (+!778 lt!1586446 lt!1586455) lt!1586866) (= lambda!144819 lambda!144714))))

(declare-fun bs!658832 () Bool)

(assert (= bs!658832 (and d!1302554 b!4375992)))

(assert (=> bs!658832 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144819 lambda!144700))))

(declare-fun bs!658833 () Bool)

(assert (= bs!658833 (and d!1302554 d!1302364)))

(assert (=> bs!658833 (= (= (+!778 lt!1586446 lt!1586455) lt!1587151) (= lambda!144819 lambda!144764))))

(declare-fun bs!658834 () Bool)

(assert (= bs!658834 (and d!1302554 b!4376351)))

(assert (=> bs!658834 (= (= (+!778 lt!1586446 lt!1586455) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144819 lambda!144756))))

(declare-fun bs!658836 () Bool)

(assert (= bs!658836 (and d!1302554 b!4376448)))

(assert (=> bs!658836 (= (= (+!778 lt!1586446 lt!1586455) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144819 lambda!144769))))

(assert (=> bs!658827 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144819 lambda!144704))))

(declare-fun bs!658838 () Bool)

(assert (= bs!658838 (and d!1302554 b!4376255)))

(assert (=> bs!658838 (= (= (+!778 lt!1586446 lt!1586455) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144819 lambda!144741))))

(assert (=> bs!658831 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144819 lambda!144713))))

(declare-fun bs!658841 () Bool)

(assert (= bs!658841 (and d!1302554 b!4376449)))

(assert (=> bs!658841 (= (= (+!778 lt!1586446 lt!1586455) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144819 lambda!144771))))

(declare-fun bs!658843 () Bool)

(assert (= bs!658843 (and d!1302554 b!4376151)))

(assert (=> bs!658843 (= (= (+!778 lt!1586446 lt!1586455) lt!1586965) (= lambda!144819 lambda!144733))))

(assert (=> bs!658843 (= (= (+!778 lt!1586446 lt!1586455) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144819 lambda!144732))))

(declare-fun bs!658846 () Bool)

(assert (= bs!658846 (and d!1302554 d!1302282)))

(assert (=> bs!658846 (= (= (+!778 lt!1586446 lt!1586455) lt!1586962) (= lambda!144819 lambda!144734))))

(declare-fun bs!658848 () Bool)

(assert (= bs!658848 (and d!1302554 b!4376254)))

(assert (=> bs!658848 (= (= (+!778 lt!1586446 lt!1586455) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144819 lambda!144740))))

(declare-fun bs!658850 () Bool)

(assert (= bs!658850 (and d!1302554 d!1302202)))

(assert (=> bs!658850 (= (= (+!778 lt!1586446 lt!1586455) lt!1586805) (= lambda!144819 lambda!144706))))

(declare-fun bs!658851 () Bool)

(assert (= bs!658851 (and d!1302554 d!1302408)))

(assert (=> bs!658851 (= (= (+!778 lt!1586446 lt!1586455) lt!1587232) (= lambda!144819 lambda!144774))))

(assert (=> bs!658830 (= (= (+!778 lt!1586446 lt!1586455) lt!1587154) (= lambda!144819 lambda!144763))))

(declare-fun bs!658854 () Bool)

(assert (= bs!658854 (and d!1302554 d!1302330)))

(assert (=> bs!658854 (= (= (+!778 lt!1586446 lt!1586455) lt!1586832) (= lambda!144819 lambda!144749))))

(declare-fun bs!658856 () Bool)

(assert (= bs!658856 (and d!1302554 d!1302304)))

(assert (=> bs!658856 (= (= (+!778 lt!1586446 lt!1586455) lt!1586995) (= lambda!144819 lambda!144739))))

(assert (=> bs!658832 (= (= (+!778 lt!1586446 lt!1586455) lt!1586783) (= lambda!144819 lambda!144701))))

(declare-fun bs!658857 () Bool)

(assert (= bs!658857 (and d!1302554 d!1302152)))

(assert (=> bs!658857 (= (= (+!778 lt!1586446 lt!1586455) lt!1586780) (= lambda!144819 lambda!144702))))

(declare-fun bs!658859 () Bool)

(assert (= bs!658859 (and d!1302554 d!1302118)))

(assert (=> bs!658859 (not (= lambda!144819 lambda!144613))))

(declare-fun bs!658860 () Bool)

(assert (= bs!658860 (and d!1302554 b!4376005)))

(assert (=> bs!658860 (= lambda!144819 lambda!144707)))

(declare-fun bs!658862 () Bool)

(assert (= bs!658862 (and d!1302554 b!4376018)))

(assert (=> bs!658862 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144819 lambda!144712))))

(declare-fun bs!658864 () Bool)

(assert (= bs!658864 (and d!1302554 d!1302348)))

(assert (=> bs!658864 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144819 lambda!144755))))

(declare-fun bs!658866 () Bool)

(assert (= bs!658866 (and d!1302554 b!4376006)))

(assert (=> bs!658866 (= lambda!144819 lambda!144708)))

(declare-fun bs!658868 () Bool)

(assert (= bs!658868 (and d!1302554 b!4375991)))

(assert (=> bs!658868 (= (= (+!778 lt!1586446 lt!1586455) lt!1586446) (= lambda!144819 lambda!144699))))

(declare-fun bs!658869 () Bool)

(assert (= bs!658869 (and d!1302554 b!4376193)))

(assert (=> bs!658869 (= (= (+!778 lt!1586446 lt!1586455) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144819 lambda!144737))))

(declare-fun bs!658871 () Bool)

(assert (= bs!658871 (and d!1302554 d!1302400)))

(assert (=> bs!658871 (= (= (+!778 lt!1586446 lt!1586455) lt!1586808) (= lambda!144819 lambda!144766))))

(assert (=> bs!658838 (= (= (+!778 lt!1586446 lt!1586455) lt!1587060) (= lambda!144819 lambda!144742))))

(declare-fun bs!658873 () Bool)

(assert (= bs!658873 (and d!1302554 b!4376192)))

(assert (=> bs!658873 (= (= (+!778 lt!1586446 lt!1586455) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144819 lambda!144736))))

(assert (=> bs!658866 (= (= (+!778 lt!1586446 lt!1586455) lt!1586832) (= lambda!144819 lambda!144709))))

(declare-fun bs!658876 () Bool)

(assert (= bs!658876 (and d!1302554 b!4376150)))

(assert (=> bs!658876 (= (= (+!778 lt!1586446 lt!1586455) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144819 lambda!144731))))

(assert (=> bs!658841 (= (= (+!778 lt!1586446 lt!1586455) lt!1587235) (= lambda!144819 lambda!144773))))

(assert (=> bs!658869 (= (= (+!778 lt!1586446 lt!1586455) lt!1586998) (= lambda!144819 lambda!144738))))

(assert (=> d!1302554 true))

(assert (=> d!1302554 (forall!9261 (toList!3130 (+!778 lt!1586446 lt!1586455)) lambda!144819)))

(declare-fun lt!1587386 () Unit!74656)

(assert (=> d!1302554 (= lt!1587386 (choose!27267 (+!778 lt!1586446 lt!1586455)))))

(assert (=> d!1302554 (= (lemmaContainsAllItsOwnKeys!101 (+!778 lt!1586446 lt!1586455)) lt!1587386)))

(declare-fun bs!658883 () Bool)

(assert (= bs!658883 d!1302554))

(declare-fun m!5010767 () Bool)

(assert (=> bs!658883 m!5010767))

(assert (=> bs!658883 m!5008857))

(declare-fun m!5010769 () Bool)

(assert (=> bs!658883 m!5010769))

(assert (=> bm!304254 d!1302554))

(declare-fun d!1302560 () Bool)

(assert (=> d!1302560 (= (invariantList!719 (toList!3130 lt!1586780)) (noDuplicatedKeys!134 (toList!3130 lt!1586780)))))

(declare-fun bs!658886 () Bool)

(assert (= bs!658886 d!1302560))

(declare-fun m!5010771 () Bool)

(assert (=> bs!658886 m!5010771))

(assert (=> b!4375988 d!1302560))

(declare-fun d!1302562 () Bool)

(declare-fun res!1802099 () Bool)

(declare-fun e!2724338 () Bool)

(assert (=> d!1302562 (=> res!1802099 e!2724338)))

(assert (=> d!1302562 (= res!1802099 ((_ is Nil!49140) (toList!3130 lt!1586446)))))

(assert (=> d!1302562 (= (forall!9261 (toList!3130 lt!1586446) (ite c!744112 lambda!144703 lambda!144704)) e!2724338)))

(declare-fun b!4376764 () Bool)

(declare-fun e!2724339 () Bool)

(assert (=> b!4376764 (= e!2724338 e!2724339)))

(declare-fun res!1802100 () Bool)

(assert (=> b!4376764 (=> (not res!1802100) (not e!2724339))))

(assert (=> b!4376764 (= res!1802100 (dynLambda!20705 (ite c!744112 lambda!144703 lambda!144704) (h!54733 (toList!3130 lt!1586446))))))

(declare-fun b!4376765 () Bool)

(assert (=> b!4376765 (= e!2724339 (forall!9261 (t!356190 (toList!3130 lt!1586446)) (ite c!744112 lambda!144703 lambda!144704)))))

(assert (= (and d!1302562 (not res!1802099)) b!4376764))

(assert (= (and b!4376764 res!1802100) b!4376765))

(declare-fun b_lambda!134625 () Bool)

(assert (=> (not b_lambda!134625) (not b!4376764)))

(declare-fun m!5010773 () Bool)

(assert (=> b!4376764 m!5010773))

(declare-fun m!5010775 () Bool)

(assert (=> b!4376765 m!5010775))

(assert (=> bm!304249 d!1302562))

(declare-fun bs!658902 () Bool)

(declare-fun b!4376769 () Bool)

(assert (= bs!658902 (and b!4376769 d!1302320)))

(declare-fun lambda!144822 () Int)

(assert (=> bs!658902 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587057) (= lambda!144822 lambda!144743))))

(declare-fun bs!658903 () Bool)

(assert (= bs!658903 (and b!4376769 b!4376000)))

(assert (=> bs!658903 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144822 lambda!144703))))

(declare-fun bs!658905 () Bool)

(assert (= bs!658905 (and b!4376769 d!1302208)))

(assert (=> bs!658905 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586829) (= lambda!144822 lambda!144710))))

(declare-fun bs!658907 () Bool)

(assert (= bs!658907 (and b!4376769 b!4376001)))

(assert (=> bs!658907 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586808) (= lambda!144822 lambda!144705))))

(declare-fun bs!658909 () Bool)

(assert (= bs!658909 (and b!4376769 d!1302554)))

(assert (=> bs!658909 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 lt!1586455)) (= lambda!144822 lambda!144819))))

(declare-fun bs!658911 () Bool)

(assert (= bs!658911 (and b!4376769 d!1302220)))

(assert (=> bs!658911 (not (= lambda!144822 lambda!144717))))

(declare-fun bs!658913 () Bool)

(assert (= bs!658913 (and b!4376769 d!1302214)))

(assert (=> bs!658913 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586863) (= lambda!144822 lambda!144715))))

(declare-fun bs!658915 () Bool)

(assert (= bs!658915 (and b!4376769 b!4376352)))

(assert (=> bs!658915 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144822 lambda!144759))))

(declare-fun bs!658917 () Bool)

(assert (= bs!658917 (and b!4376769 b!4376019)))

(assert (=> bs!658917 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586866) (= lambda!144822 lambda!144714))))

(declare-fun bs!658919 () Bool)

(assert (= bs!658919 (and b!4376769 b!4375992)))

(assert (=> bs!658919 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144822 lambda!144700))))

(declare-fun bs!658920 () Bool)

(assert (= bs!658920 (and b!4376769 d!1302364)))

(assert (=> bs!658920 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587151) (= lambda!144822 lambda!144764))))

(declare-fun bs!658922 () Bool)

(assert (= bs!658922 (and b!4376769 b!4376351)))

(assert (=> bs!658922 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144822 lambda!144756))))

(declare-fun bs!658924 () Bool)

(assert (= bs!658924 (and b!4376769 b!4376448)))

(assert (=> bs!658924 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144822 lambda!144769))))

(assert (=> bs!658907 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144822 lambda!144704))))

(declare-fun bs!658927 () Bool)

(assert (= bs!658927 (and b!4376769 b!4376255)))

(assert (=> bs!658927 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144822 lambda!144741))))

(assert (=> bs!658917 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144822 lambda!144713))))

(declare-fun bs!658930 () Bool)

(assert (= bs!658930 (and b!4376769 b!4376449)))

(assert (=> bs!658930 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144822 lambda!144771))))

(declare-fun bs!658932 () Bool)

(assert (= bs!658932 (and b!4376769 b!4376151)))

(assert (=> bs!658932 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586965) (= lambda!144822 lambda!144733))))

(assert (=> bs!658932 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144822 lambda!144732))))

(declare-fun bs!658934 () Bool)

(assert (= bs!658934 (and b!4376769 d!1302282)))

(assert (=> bs!658934 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586962) (= lambda!144822 lambda!144734))))

(declare-fun bs!658936 () Bool)

(assert (= bs!658936 (and b!4376769 b!4376254)))

(assert (=> bs!658936 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144822 lambda!144740))))

(declare-fun bs!658938 () Bool)

(assert (= bs!658938 (and b!4376769 d!1302202)))

(assert (=> bs!658938 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586805) (= lambda!144822 lambda!144706))))

(declare-fun bs!658939 () Bool)

(assert (= bs!658939 (and b!4376769 d!1302408)))

(assert (=> bs!658939 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587232) (= lambda!144822 lambda!144774))))

(assert (=> bs!658915 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587154) (= lambda!144822 lambda!144763))))

(declare-fun bs!658941 () Bool)

(assert (= bs!658941 (and b!4376769 d!1302330)))

(assert (=> bs!658941 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586832) (= lambda!144822 lambda!144749))))

(declare-fun bs!658942 () Bool)

(assert (= bs!658942 (and b!4376769 d!1302304)))

(assert (=> bs!658942 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586995) (= lambda!144822 lambda!144739))))

(assert (=> bs!658919 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586783) (= lambda!144822 lambda!144701))))

(declare-fun bs!658944 () Bool)

(assert (= bs!658944 (and b!4376769 d!1302152)))

(assert (=> bs!658944 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586780) (= lambda!144822 lambda!144702))))

(declare-fun bs!658946 () Bool)

(assert (= bs!658946 (and b!4376769 d!1302118)))

(assert (=> bs!658946 (not (= lambda!144822 lambda!144613))))

(declare-fun bs!658947 () Bool)

(assert (= bs!658947 (and b!4376769 b!4376005)))

(assert (=> bs!658947 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 lt!1586455)) (= lambda!144822 lambda!144707))))

(declare-fun bs!658948 () Bool)

(assert (= bs!658948 (and b!4376769 b!4376018)))

(assert (=> bs!658948 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144822 lambda!144712))))

(declare-fun bs!658949 () Bool)

(assert (= bs!658949 (and b!4376769 d!1302348)))

(assert (=> bs!658949 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144822 lambda!144755))))

(declare-fun bs!658950 () Bool)

(assert (= bs!658950 (and b!4376769 b!4376006)))

(assert (=> bs!658950 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 lt!1586455)) (= lambda!144822 lambda!144708))))

(declare-fun bs!658951 () Bool)

(assert (= bs!658951 (and b!4376769 b!4375991)))

(assert (=> bs!658951 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144822 lambda!144699))))

(declare-fun bs!658952 () Bool)

(assert (= bs!658952 (and b!4376769 b!4376193)))

(assert (=> bs!658952 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144822 lambda!144737))))

(declare-fun bs!658953 () Bool)

(assert (= bs!658953 (and b!4376769 d!1302400)))

(assert (=> bs!658953 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586808) (= lambda!144822 lambda!144766))))

(assert (=> bs!658927 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587060) (= lambda!144822 lambda!144742))))

(declare-fun bs!658954 () Bool)

(assert (= bs!658954 (and b!4376769 b!4376192)))

(assert (=> bs!658954 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144822 lambda!144736))))

(assert (=> bs!658950 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586832) (= lambda!144822 lambda!144709))))

(declare-fun bs!658955 () Bool)

(assert (= bs!658955 (and b!4376769 b!4376150)))

(assert (=> bs!658955 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144822 lambda!144731))))

(assert (=> bs!658930 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587235) (= lambda!144822 lambda!144773))))

(assert (=> bs!658952 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586998) (= lambda!144822 lambda!144738))))

(assert (=> b!4376769 true))

(declare-fun bs!658956 () Bool)

(declare-fun b!4376770 () Bool)

(assert (= bs!658956 (and b!4376770 d!1302320)))

(declare-fun lambda!144824 () Int)

(assert (=> bs!658956 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587057) (= lambda!144824 lambda!144743))))

(declare-fun bs!658957 () Bool)

(assert (= bs!658957 (and b!4376770 b!4376000)))

(assert (=> bs!658957 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144824 lambda!144703))))

(declare-fun bs!658958 () Bool)

(assert (= bs!658958 (and b!4376770 d!1302208)))

(assert (=> bs!658958 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586829) (= lambda!144824 lambda!144710))))

(declare-fun bs!658959 () Bool)

(assert (= bs!658959 (and b!4376770 b!4376001)))

(assert (=> bs!658959 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586808) (= lambda!144824 lambda!144705))))

(declare-fun bs!658960 () Bool)

(assert (= bs!658960 (and b!4376770 d!1302554)))

(assert (=> bs!658960 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 lt!1586455)) (= lambda!144824 lambda!144819))))

(declare-fun bs!658961 () Bool)

(assert (= bs!658961 (and b!4376770 d!1302220)))

(assert (=> bs!658961 (not (= lambda!144824 lambda!144717))))

(declare-fun bs!658962 () Bool)

(assert (= bs!658962 (and b!4376770 d!1302214)))

(assert (=> bs!658962 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586863) (= lambda!144824 lambda!144715))))

(declare-fun bs!658963 () Bool)

(assert (= bs!658963 (and b!4376770 b!4376352)))

(assert (=> bs!658963 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144824 lambda!144759))))

(declare-fun bs!658964 () Bool)

(assert (= bs!658964 (and b!4376770 b!4376019)))

(assert (=> bs!658964 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586866) (= lambda!144824 lambda!144714))))

(declare-fun bs!658965 () Bool)

(assert (= bs!658965 (and b!4376770 b!4375992)))

(assert (=> bs!658965 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144824 lambda!144700))))

(declare-fun bs!658966 () Bool)

(assert (= bs!658966 (and b!4376770 d!1302364)))

(assert (=> bs!658966 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587151) (= lambda!144824 lambda!144764))))

(declare-fun bs!658967 () Bool)

(assert (= bs!658967 (and b!4376770 b!4376351)))

(assert (=> bs!658967 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144824 lambda!144756))))

(declare-fun bs!658968 () Bool)

(assert (= bs!658968 (and b!4376770 b!4376448)))

(assert (=> bs!658968 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144824 lambda!144769))))

(assert (=> bs!658959 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144824 lambda!144704))))

(declare-fun bs!658969 () Bool)

(assert (= bs!658969 (and b!4376770 b!4376255)))

(assert (=> bs!658969 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144824 lambda!144741))))

(assert (=> bs!658964 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144824 lambda!144713))))

(declare-fun bs!658970 () Bool)

(assert (= bs!658970 (and b!4376770 b!4376449)))

(assert (=> bs!658970 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144824 lambda!144771))))

(declare-fun bs!658971 () Bool)

(assert (= bs!658971 (and b!4376770 b!4376151)))

(assert (=> bs!658971 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586965) (= lambda!144824 lambda!144733))))

(assert (=> bs!658971 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144824 lambda!144732))))

(declare-fun bs!658972 () Bool)

(assert (= bs!658972 (and b!4376770 b!4376769)))

(assert (=> bs!658972 (= lambda!144824 lambda!144822)))

(declare-fun bs!658973 () Bool)

(assert (= bs!658973 (and b!4376770 d!1302282)))

(assert (=> bs!658973 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586962) (= lambda!144824 lambda!144734))))

(declare-fun bs!658974 () Bool)

(assert (= bs!658974 (and b!4376770 b!4376254)))

(assert (=> bs!658974 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144824 lambda!144740))))

(declare-fun bs!658975 () Bool)

(assert (= bs!658975 (and b!4376770 d!1302202)))

(assert (=> bs!658975 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586805) (= lambda!144824 lambda!144706))))

(declare-fun bs!658976 () Bool)

(assert (= bs!658976 (and b!4376770 d!1302408)))

(assert (=> bs!658976 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587232) (= lambda!144824 lambda!144774))))

(assert (=> bs!658963 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587154) (= lambda!144824 lambda!144763))))

(declare-fun bs!658977 () Bool)

(assert (= bs!658977 (and b!4376770 d!1302330)))

(assert (=> bs!658977 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586832) (= lambda!144824 lambda!144749))))

(declare-fun bs!658978 () Bool)

(assert (= bs!658978 (and b!4376770 d!1302304)))

(assert (=> bs!658978 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586995) (= lambda!144824 lambda!144739))))

(assert (=> bs!658965 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586783) (= lambda!144824 lambda!144701))))

(declare-fun bs!658979 () Bool)

(assert (= bs!658979 (and b!4376770 d!1302152)))

(assert (=> bs!658979 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586780) (= lambda!144824 lambda!144702))))

(declare-fun bs!658980 () Bool)

(assert (= bs!658980 (and b!4376770 d!1302118)))

(assert (=> bs!658980 (not (= lambda!144824 lambda!144613))))

(declare-fun bs!658981 () Bool)

(assert (= bs!658981 (and b!4376770 b!4376005)))

(assert (=> bs!658981 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 lt!1586455)) (= lambda!144824 lambda!144707))))

(declare-fun bs!658982 () Bool)

(assert (= bs!658982 (and b!4376770 b!4376018)))

(assert (=> bs!658982 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144824 lambda!144712))))

(declare-fun bs!658983 () Bool)

(assert (= bs!658983 (and b!4376770 d!1302348)))

(assert (=> bs!658983 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144824 lambda!144755))))

(declare-fun bs!658984 () Bool)

(assert (= bs!658984 (and b!4376770 b!4376006)))

(assert (=> bs!658984 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (+!778 lt!1586446 lt!1586455)) (= lambda!144824 lambda!144708))))

(declare-fun bs!658985 () Bool)

(assert (= bs!658985 (and b!4376770 b!4375991)))

(assert (=> bs!658985 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586446) (= lambda!144824 lambda!144699))))

(declare-fun bs!658986 () Bool)

(assert (= bs!658986 (and b!4376770 b!4376193)))

(assert (=> bs!658986 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144824 lambda!144737))))

(declare-fun bs!658987 () Bool)

(assert (= bs!658987 (and b!4376770 d!1302400)))

(assert (=> bs!658987 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586808) (= lambda!144824 lambda!144766))))

(assert (=> bs!658969 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587060) (= lambda!144824 lambda!144742))))

(declare-fun bs!658988 () Bool)

(assert (= bs!658988 (and b!4376770 b!4376192)))

(assert (=> bs!658988 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144824 lambda!144736))))

(assert (=> bs!658984 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586832) (= lambda!144824 lambda!144709))))

(declare-fun bs!658989 () Bool)

(assert (= bs!658989 (and b!4376770 b!4376150)))

(assert (=> bs!658989 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144824 lambda!144731))))

(assert (=> bs!658970 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587235) (= lambda!144824 lambda!144773))))

(assert (=> bs!658986 (= (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1586998) (= lambda!144824 lambda!144738))))

(assert (=> b!4376770 true))

(declare-fun lambda!144826 () Int)

(declare-fun lt!1587427 () ListMap!2373)

(assert (=> bs!658956 (= (= lt!1587427 lt!1587057) (= lambda!144826 lambda!144743))))

(assert (=> bs!658957 (= (= lt!1587427 lt!1586446) (= lambda!144826 lambda!144703))))

(assert (=> bs!658958 (= (= lt!1587427 lt!1586829) (= lambda!144826 lambda!144710))))

(assert (=> bs!658959 (= (= lt!1587427 lt!1586808) (= lambda!144826 lambda!144705))))

(assert (=> bs!658960 (= (= lt!1587427 (+!778 lt!1586446 lt!1586455)) (= lambda!144826 lambda!144819))))

(assert (=> bs!658961 (not (= lambda!144826 lambda!144717))))

(assert (=> bs!658962 (= (= lt!1587427 lt!1586863) (= lambda!144826 lambda!144715))))

(assert (=> bs!658963 (= (= lt!1587427 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144826 lambda!144759))))

(assert (=> bs!658964 (= (= lt!1587427 lt!1586866) (= lambda!144826 lambda!144714))))

(assert (=> bs!658965 (= (= lt!1587427 lt!1586446) (= lambda!144826 lambda!144700))))

(assert (=> bs!658966 (= (= lt!1587427 lt!1587151) (= lambda!144826 lambda!144764))))

(assert (=> bs!658967 (= (= lt!1587427 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144826 lambda!144756))))

(assert (=> bs!658968 (= (= lt!1587427 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144826 lambda!144769))))

(assert (=> bs!658959 (= (= lt!1587427 lt!1586446) (= lambda!144826 lambda!144704))))

(assert (=> bs!658969 (= (= lt!1587427 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144826 lambda!144741))))

(assert (=> bs!658964 (= (= lt!1587427 lt!1586446) (= lambda!144826 lambda!144713))))

(assert (=> bs!658970 (= (= lt!1587427 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144826 lambda!144771))))

(assert (=> bs!658971 (= (= lt!1587427 lt!1586965) (= lambda!144826 lambda!144733))))

(assert (=> bs!658971 (= (= lt!1587427 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144826 lambda!144732))))

(assert (=> bs!658972 (= (= lt!1587427 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144826 lambda!144822))))

(assert (=> bs!658973 (= (= lt!1587427 lt!1586962) (= lambda!144826 lambda!144734))))

(assert (=> bs!658974 (= (= lt!1587427 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144826 lambda!144740))))

(assert (=> bs!658975 (= (= lt!1587427 lt!1586805) (= lambda!144826 lambda!144706))))

(assert (=> bs!658976 (= (= lt!1587427 lt!1587232) (= lambda!144826 lambda!144774))))

(assert (=> bs!658963 (= (= lt!1587427 lt!1587154) (= lambda!144826 lambda!144763))))

(assert (=> bs!658977 (= (= lt!1587427 lt!1586832) (= lambda!144826 lambda!144749))))

(assert (=> bs!658978 (= (= lt!1587427 lt!1586995) (= lambda!144826 lambda!144739))))

(assert (=> bs!658965 (= (= lt!1587427 lt!1586783) (= lambda!144826 lambda!144701))))

(assert (=> bs!658979 (= (= lt!1587427 lt!1586780) (= lambda!144826 lambda!144702))))

(assert (=> bs!658980 (not (= lambda!144826 lambda!144613))))

(assert (=> bs!658981 (= (= lt!1587427 (+!778 lt!1586446 lt!1586455)) (= lambda!144826 lambda!144707))))

(assert (=> bs!658982 (= (= lt!1587427 lt!1586446) (= lambda!144826 lambda!144712))))

(assert (=> bs!658983 (= (= lt!1587427 lt!1586446) (= lambda!144826 lambda!144755))))

(assert (=> bs!658984 (= (= lt!1587427 (+!778 lt!1586446 lt!1586455)) (= lambda!144826 lambda!144708))))

(assert (=> bs!658985 (= (= lt!1587427 lt!1586446) (= lambda!144826 lambda!144699))))

(assert (=> bs!658986 (= (= lt!1587427 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144826 lambda!144737))))

(assert (=> bs!658987 (= (= lt!1587427 lt!1586808) (= lambda!144826 lambda!144766))))

(assert (=> bs!658969 (= (= lt!1587427 lt!1587060) (= lambda!144826 lambda!144742))))

(assert (=> bs!658988 (= (= lt!1587427 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144826 lambda!144736))))

(assert (=> bs!658984 (= (= lt!1587427 lt!1586832) (= lambda!144826 lambda!144709))))

(assert (=> b!4376770 (= (= lt!1587427 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144826 lambda!144824))))

(assert (=> bs!658989 (= (= lt!1587427 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144826 lambda!144731))))

(assert (=> bs!658970 (= (= lt!1587427 lt!1587235) (= lambda!144826 lambda!144773))))

(assert (=> bs!658986 (= (= lt!1587427 lt!1586998) (= lambda!144826 lambda!144738))))

(assert (=> b!4376770 true))

(declare-fun bs!659024 () Bool)

(declare-fun d!1302564 () Bool)

(assert (= bs!659024 (and d!1302564 d!1302320)))

(declare-fun lt!1587424 () ListMap!2373)

(declare-fun lambda!144827 () Int)

(assert (=> bs!659024 (= (= lt!1587424 lt!1587057) (= lambda!144827 lambda!144743))))

(declare-fun bs!659025 () Bool)

(assert (= bs!659025 (and d!1302564 b!4376000)))

(assert (=> bs!659025 (= (= lt!1587424 lt!1586446) (= lambda!144827 lambda!144703))))

(declare-fun bs!659026 () Bool)

(assert (= bs!659026 (and d!1302564 d!1302208)))

(assert (=> bs!659026 (= (= lt!1587424 lt!1586829) (= lambda!144827 lambda!144710))))

(declare-fun bs!659027 () Bool)

(assert (= bs!659027 (and d!1302564 b!4376001)))

(assert (=> bs!659027 (= (= lt!1587424 lt!1586808) (= lambda!144827 lambda!144705))))

(declare-fun bs!659028 () Bool)

(assert (= bs!659028 (and d!1302564 d!1302554)))

(assert (=> bs!659028 (= (= lt!1587424 (+!778 lt!1586446 lt!1586455)) (= lambda!144827 lambda!144819))))

(declare-fun bs!659029 () Bool)

(assert (= bs!659029 (and d!1302564 d!1302214)))

(assert (=> bs!659029 (= (= lt!1587424 lt!1586863) (= lambda!144827 lambda!144715))))

(declare-fun bs!659030 () Bool)

(assert (= bs!659030 (and d!1302564 b!4376352)))

(assert (=> bs!659030 (= (= lt!1587424 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144827 lambda!144759))))

(declare-fun bs!659031 () Bool)

(assert (= bs!659031 (and d!1302564 b!4376019)))

(assert (=> bs!659031 (= (= lt!1587424 lt!1586866) (= lambda!144827 lambda!144714))))

(declare-fun bs!659032 () Bool)

(assert (= bs!659032 (and d!1302564 b!4375992)))

(assert (=> bs!659032 (= (= lt!1587424 lt!1586446) (= lambda!144827 lambda!144700))))

(declare-fun bs!659033 () Bool)

(assert (= bs!659033 (and d!1302564 d!1302364)))

(assert (=> bs!659033 (= (= lt!1587424 lt!1587151) (= lambda!144827 lambda!144764))))

(declare-fun bs!659034 () Bool)

(assert (= bs!659034 (and d!1302564 b!4376351)))

(assert (=> bs!659034 (= (= lt!1587424 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144827 lambda!144756))))

(declare-fun bs!659035 () Bool)

(assert (= bs!659035 (and d!1302564 b!4376448)))

(assert (=> bs!659035 (= (= lt!1587424 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144827 lambda!144769))))

(assert (=> bs!659027 (= (= lt!1587424 lt!1586446) (= lambda!144827 lambda!144704))))

(declare-fun bs!659037 () Bool)

(assert (= bs!659037 (and d!1302564 b!4376255)))

(assert (=> bs!659037 (= (= lt!1587424 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144827 lambda!144741))))

(assert (=> bs!659031 (= (= lt!1587424 lt!1586446) (= lambda!144827 lambda!144713))))

(declare-fun bs!659039 () Bool)

(assert (= bs!659039 (and d!1302564 b!4376449)))

(assert (=> bs!659039 (= (= lt!1587424 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144827 lambda!144771))))

(declare-fun bs!659041 () Bool)

(assert (= bs!659041 (and d!1302564 b!4376151)))

(assert (=> bs!659041 (= (= lt!1587424 lt!1586965) (= lambda!144827 lambda!144733))))

(assert (=> bs!659041 (= (= lt!1587424 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144827 lambda!144732))))

(declare-fun bs!659044 () Bool)

(assert (= bs!659044 (and d!1302564 d!1302220)))

(assert (=> bs!659044 (not (= lambda!144827 lambda!144717))))

(declare-fun bs!659046 () Bool)

(assert (= bs!659046 (and d!1302564 b!4376770)))

(assert (=> bs!659046 (= (= lt!1587424 lt!1587427) (= lambda!144827 lambda!144826))))

(declare-fun bs!659048 () Bool)

(assert (= bs!659048 (and d!1302564 b!4376769)))

(assert (=> bs!659048 (= (= lt!1587424 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144827 lambda!144822))))

(declare-fun bs!659050 () Bool)

(assert (= bs!659050 (and d!1302564 d!1302282)))

(assert (=> bs!659050 (= (= lt!1587424 lt!1586962) (= lambda!144827 lambda!144734))))

(declare-fun bs!659051 () Bool)

(assert (= bs!659051 (and d!1302564 b!4376254)))

(assert (=> bs!659051 (= (= lt!1587424 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144827 lambda!144740))))

(declare-fun bs!659052 () Bool)

(assert (= bs!659052 (and d!1302564 d!1302202)))

(assert (=> bs!659052 (= (= lt!1587424 lt!1586805) (= lambda!144827 lambda!144706))))

(declare-fun bs!659053 () Bool)

(assert (= bs!659053 (and d!1302564 d!1302408)))

(assert (=> bs!659053 (= (= lt!1587424 lt!1587232) (= lambda!144827 lambda!144774))))

(assert (=> bs!659030 (= (= lt!1587424 lt!1587154) (= lambda!144827 lambda!144763))))

(declare-fun bs!659054 () Bool)

(assert (= bs!659054 (and d!1302564 d!1302330)))

(assert (=> bs!659054 (= (= lt!1587424 lt!1586832) (= lambda!144827 lambda!144749))))

(declare-fun bs!659055 () Bool)

(assert (= bs!659055 (and d!1302564 d!1302304)))

(assert (=> bs!659055 (= (= lt!1587424 lt!1586995) (= lambda!144827 lambda!144739))))

(assert (=> bs!659032 (= (= lt!1587424 lt!1586783) (= lambda!144827 lambda!144701))))

(declare-fun bs!659056 () Bool)

(assert (= bs!659056 (and d!1302564 d!1302152)))

(assert (=> bs!659056 (= (= lt!1587424 lt!1586780) (= lambda!144827 lambda!144702))))

(declare-fun bs!659057 () Bool)

(assert (= bs!659057 (and d!1302564 d!1302118)))

(assert (=> bs!659057 (not (= lambda!144827 lambda!144613))))

(declare-fun bs!659058 () Bool)

(assert (= bs!659058 (and d!1302564 b!4376005)))

(assert (=> bs!659058 (= (= lt!1587424 (+!778 lt!1586446 lt!1586455)) (= lambda!144827 lambda!144707))))

(declare-fun bs!659059 () Bool)

(assert (= bs!659059 (and d!1302564 b!4376018)))

(assert (=> bs!659059 (= (= lt!1587424 lt!1586446) (= lambda!144827 lambda!144712))))

(declare-fun bs!659060 () Bool)

(assert (= bs!659060 (and d!1302564 d!1302348)))

(assert (=> bs!659060 (= (= lt!1587424 lt!1586446) (= lambda!144827 lambda!144755))))

(declare-fun bs!659061 () Bool)

(assert (= bs!659061 (and d!1302564 b!4376006)))

(assert (=> bs!659061 (= (= lt!1587424 (+!778 lt!1586446 lt!1586455)) (= lambda!144827 lambda!144708))))

(declare-fun bs!659062 () Bool)

(assert (= bs!659062 (and d!1302564 b!4375991)))

(assert (=> bs!659062 (= (= lt!1587424 lt!1586446) (= lambda!144827 lambda!144699))))

(declare-fun bs!659063 () Bool)

(assert (= bs!659063 (and d!1302564 b!4376193)))

(assert (=> bs!659063 (= (= lt!1587424 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144827 lambda!144737))))

(declare-fun bs!659064 () Bool)

(assert (= bs!659064 (and d!1302564 d!1302400)))

(assert (=> bs!659064 (= (= lt!1587424 lt!1586808) (= lambda!144827 lambda!144766))))

(assert (=> bs!659037 (= (= lt!1587424 lt!1587060) (= lambda!144827 lambda!144742))))

(declare-fun bs!659065 () Bool)

(assert (= bs!659065 (and d!1302564 b!4376192)))

(assert (=> bs!659065 (= (= lt!1587424 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144827 lambda!144736))))

(assert (=> bs!659061 (= (= lt!1587424 lt!1586832) (= lambda!144827 lambda!144709))))

(assert (=> bs!659046 (= (= lt!1587424 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144827 lambda!144824))))

(declare-fun bs!659066 () Bool)

(assert (= bs!659066 (and d!1302564 b!4376150)))

(assert (=> bs!659066 (= (= lt!1587424 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144827 lambda!144731))))

(assert (=> bs!659039 (= (= lt!1587424 lt!1587235) (= lambda!144827 lambda!144773))))

(assert (=> bs!659063 (= (= lt!1587424 lt!1586998) (= lambda!144827 lambda!144738))))

(assert (=> d!1302564 true))

(declare-fun bm!304341 () Bool)

(declare-fun call!304347 () Bool)

(declare-fun c!744288 () Bool)

(assert (=> bm!304341 (= call!304347 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (ite c!744288 lambda!144822 lambda!144824)))))

(declare-fun b!4376766 () Bool)

(declare-fun e!2724341 () Bool)

(assert (=> b!4376766 (= e!2724341 (invariantList!719 (toList!3130 lt!1587424)))))

(declare-fun b!4376767 () Bool)

(declare-fun res!1802102 () Bool)

(assert (=> b!4376767 (=> (not res!1802102) (not e!2724341))))

(assert (=> b!4376767 (= res!1802102 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) lambda!144827))))

(assert (=> d!1302564 e!2724341))

(declare-fun res!1802103 () Bool)

(assert (=> d!1302564 (=> (not res!1802103) (not e!2724341))))

(assert (=> d!1302564 (= res!1802103 (forall!9261 (_2!27626 (h!54734 (toList!3129 lt!1586445))) lambda!144827))))

(declare-fun e!2724340 () ListMap!2373)

(assert (=> d!1302564 (= lt!1587424 e!2724340)))

(assert (=> d!1302564 (= c!744288 ((_ is Nil!49140) (_2!27626 (h!54734 (toList!3129 lt!1586445)))))))

(assert (=> d!1302564 (noDuplicateKeys!573 (_2!27626 (h!54734 (toList!3129 lt!1586445))))))

(assert (=> d!1302564 (= (addToMapMapFromBucket!254 (_2!27626 (h!54734 (toList!3129 lt!1586445))) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) lt!1587424)))

(declare-fun call!304348 () Bool)

(declare-fun bm!304342 () Bool)

(assert (=> bm!304342 (= call!304348 (forall!9261 (ite c!744288 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (_2!27626 (h!54734 (toList!3129 lt!1586445)))) (ite c!744288 lambda!144822 lambda!144826)))))

(declare-fun bm!304343 () Bool)

(declare-fun call!304346 () Unit!74656)

(assert (=> bm!304343 (= call!304346 (lemmaContainsAllItsOwnKeys!101 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))))))

(declare-fun b!4376768 () Bool)

(declare-fun e!2724342 () Bool)

(assert (=> b!4376768 (= e!2724342 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) lambda!144826))))

(assert (=> b!4376769 (= e!2724340 (extractMap!632 (t!356191 (toList!3129 lt!1586445))))))

(declare-fun lt!1587428 () Unit!74656)

(assert (=> b!4376769 (= lt!1587428 call!304346)))

(assert (=> b!4376769 call!304347))

(declare-fun lt!1587409 () Unit!74656)

(assert (=> b!4376769 (= lt!1587409 lt!1587428)))

(assert (=> b!4376769 call!304348))

(declare-fun lt!1587411 () Unit!74656)

(declare-fun Unit!74884 () Unit!74656)

(assert (=> b!4376769 (= lt!1587411 Unit!74884)))

(assert (=> b!4376770 (= e!2724340 lt!1587427)))

(declare-fun lt!1587417 () ListMap!2373)

(assert (=> b!4376770 (= lt!1587417 (+!778 (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586445))))))))

(assert (=> b!4376770 (= lt!1587427 (addToMapMapFromBucket!254 (t!356190 (_2!27626 (h!54734 (toList!3129 lt!1586445)))) (+!778 (extractMap!632 (t!356191 (toList!3129 lt!1586445))) (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586445)))))))))

(declare-fun lt!1587423 () Unit!74656)

(assert (=> b!4376770 (= lt!1587423 call!304346)))

(assert (=> b!4376770 call!304347))

(declare-fun lt!1587416 () Unit!74656)

(assert (=> b!4376770 (= lt!1587416 lt!1587423)))

(assert (=> b!4376770 (forall!9261 (toList!3130 lt!1587417) lambda!144826)))

(declare-fun lt!1587426 () Unit!74656)

(declare-fun Unit!74885 () Unit!74656)

(assert (=> b!4376770 (= lt!1587426 Unit!74885)))

(assert (=> b!4376770 (forall!9261 (t!356190 (_2!27626 (h!54734 (toList!3129 lt!1586445)))) lambda!144826)))

(declare-fun lt!1587418 () Unit!74656)

(declare-fun Unit!74886 () Unit!74656)

(assert (=> b!4376770 (= lt!1587418 Unit!74886)))

(declare-fun lt!1587420 () Unit!74656)

(declare-fun Unit!74887 () Unit!74656)

(assert (=> b!4376770 (= lt!1587420 Unit!74887)))

(declare-fun lt!1587410 () Unit!74656)

(assert (=> b!4376770 (= lt!1587410 (forallContained!1899 (toList!3130 lt!1587417) lambda!144826 (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586445))))))))

(assert (=> b!4376770 (contains!11461 lt!1587417 (_1!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586445))))))))

(declare-fun lt!1587429 () Unit!74656)

(declare-fun Unit!74888 () Unit!74656)

(assert (=> b!4376770 (= lt!1587429 Unit!74888)))

(assert (=> b!4376770 (contains!11461 lt!1587427 (_1!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586445))))))))

(declare-fun lt!1587415 () Unit!74656)

(declare-fun Unit!74889 () Unit!74656)

(assert (=> b!4376770 (= lt!1587415 Unit!74889)))

(assert (=> b!4376770 (forall!9261 (_2!27626 (h!54734 (toList!3129 lt!1586445))) lambda!144826)))

(declare-fun lt!1587422 () Unit!74656)

(declare-fun Unit!74890 () Unit!74656)

(assert (=> b!4376770 (= lt!1587422 Unit!74890)))

(assert (=> b!4376770 (forall!9261 (toList!3130 lt!1587417) lambda!144826)))

(declare-fun lt!1587412 () Unit!74656)

(declare-fun Unit!74891 () Unit!74656)

(assert (=> b!4376770 (= lt!1587412 Unit!74891)))

(declare-fun lt!1587419 () Unit!74656)

(declare-fun Unit!74892 () Unit!74656)

(assert (=> b!4376770 (= lt!1587419 Unit!74892)))

(declare-fun lt!1587425 () Unit!74656)

(assert (=> b!4376770 (= lt!1587425 (addForallContainsKeyThenBeforeAdding!101 (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587427 (_1!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586445))))) (_2!27625 (h!54733 (_2!27626 (h!54734 (toList!3129 lt!1586445)))))))))

(assert (=> b!4376770 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) lambda!144826)))

(declare-fun lt!1587413 () Unit!74656)

(assert (=> b!4376770 (= lt!1587413 lt!1587425)))

(assert (=> b!4376770 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) lambda!144826)))

(declare-fun lt!1587414 () Unit!74656)

(declare-fun Unit!74893 () Unit!74656)

(assert (=> b!4376770 (= lt!1587414 Unit!74893)))

(declare-fun res!1802101 () Bool)

(assert (=> b!4376770 (= res!1802101 call!304348)))

(assert (=> b!4376770 (=> (not res!1802101) (not e!2724342))))

(assert (=> b!4376770 e!2724342))

(declare-fun lt!1587421 () Unit!74656)

(declare-fun Unit!74894 () Unit!74656)

(assert (=> b!4376770 (= lt!1587421 Unit!74894)))

(assert (= (and d!1302564 c!744288) b!4376769))

(assert (= (and d!1302564 (not c!744288)) b!4376770))

(assert (= (and b!4376770 res!1802101) b!4376768))

(assert (= (or b!4376769 b!4376770) bm!304343))

(assert (= (or b!4376769 b!4376770) bm!304341))

(assert (= (or b!4376769 b!4376770) bm!304342))

(assert (= (and d!1302564 res!1802103) b!4376767))

(assert (= (and b!4376767 res!1802102) b!4376766))

(declare-fun m!5010819 () Bool)

(assert (=> bm!304341 m!5010819))

(declare-fun m!5010821 () Bool)

(assert (=> b!4376768 m!5010821))

(declare-fun m!5010823 () Bool)

(assert (=> b!4376766 m!5010823))

(declare-fun m!5010825 () Bool)

(assert (=> b!4376767 m!5010825))

(declare-fun m!5010827 () Bool)

(assert (=> b!4376770 m!5010827))

(declare-fun m!5010829 () Bool)

(assert (=> b!4376770 m!5010829))

(declare-fun m!5010831 () Bool)

(assert (=> b!4376770 m!5010831))

(declare-fun m!5010833 () Bool)

(assert (=> b!4376770 m!5010833))

(declare-fun m!5010835 () Bool)

(assert (=> b!4376770 m!5010835))

(assert (=> b!4376770 m!5010821))

(assert (=> b!4376770 m!5010821))

(assert (=> b!4376770 m!5009451))

(declare-fun m!5010837 () Bool)

(assert (=> b!4376770 m!5010837))

(declare-fun m!5010839 () Bool)

(assert (=> b!4376770 m!5010839))

(assert (=> b!4376770 m!5010835))

(declare-fun m!5010841 () Bool)

(assert (=> b!4376770 m!5010841))

(assert (=> b!4376770 m!5009451))

(assert (=> b!4376770 m!5010831))

(declare-fun m!5010843 () Bool)

(assert (=> b!4376770 m!5010843))

(declare-fun m!5010845 () Bool)

(assert (=> d!1302564 m!5010845))

(assert (=> d!1302564 m!5009493))

(assert (=> bm!304343 m!5009451))

(declare-fun m!5010847 () Bool)

(assert (=> bm!304343 m!5010847))

(declare-fun m!5010849 () Bool)

(assert (=> bm!304342 m!5010849))

(assert (=> b!4376022 d!1302564))

(declare-fun bs!659068 () Bool)

(declare-fun d!1302572 () Bool)

(assert (= bs!659068 (and d!1302572 d!1302212)))

(declare-fun lambda!144829 () Int)

(assert (=> bs!659068 (= lambda!144829 lambda!144711)))

(declare-fun bs!659069 () Bool)

(assert (= bs!659069 (and d!1302572 d!1302290)))

(assert (=> bs!659069 (= lambda!144829 lambda!144735)))

(declare-fun bs!659070 () Bool)

(assert (= bs!659070 (and d!1302572 d!1302228)))

(assert (=> bs!659070 (not (= lambda!144829 lambda!144721))))

(declare-fun bs!659071 () Bool)

(assert (= bs!659071 (and d!1302572 d!1302226)))

(assert (=> bs!659071 (= lambda!144829 lambda!144718)))

(declare-fun bs!659072 () Bool)

(assert (= bs!659072 (and d!1302572 start!424804)))

(assert (=> bs!659072 (= lambda!144829 lambda!144607)))

(declare-fun bs!659073 () Bool)

(assert (= bs!659073 (and d!1302572 d!1302218)))

(assert (=> bs!659073 (= lambda!144829 lambda!144716)))

(declare-fun bs!659074 () Bool)

(assert (= bs!659074 (and d!1302572 d!1302134)))

(assert (=> bs!659074 (= lambda!144829 lambda!144624)))

(declare-fun lt!1587434 () ListMap!2373)

(assert (=> d!1302572 (invariantList!719 (toList!3130 lt!1587434))))

(declare-fun e!2724344 () ListMap!2373)

(assert (=> d!1302572 (= lt!1587434 e!2724344)))

(declare-fun c!744290 () Bool)

(assert (=> d!1302572 (= c!744290 ((_ is Cons!49141) (t!356191 (toList!3129 lt!1586445))))))

(assert (=> d!1302572 (forall!9259 (t!356191 (toList!3129 lt!1586445)) lambda!144829)))

(assert (=> d!1302572 (= (extractMap!632 (t!356191 (toList!3129 lt!1586445))) lt!1587434)))

(declare-fun b!4376773 () Bool)

(assert (=> b!4376773 (= e!2724344 (addToMapMapFromBucket!254 (_2!27626 (h!54734 (t!356191 (toList!3129 lt!1586445)))) (extractMap!632 (t!356191 (t!356191 (toList!3129 lt!1586445))))))))

(declare-fun b!4376774 () Bool)

(assert (=> b!4376774 (= e!2724344 (ListMap!2374 Nil!49140))))

(assert (= (and d!1302572 c!744290) b!4376773))

(assert (= (and d!1302572 (not c!744290)) b!4376774))

(declare-fun m!5010851 () Bool)

(assert (=> d!1302572 m!5010851))

(declare-fun m!5010853 () Bool)

(assert (=> d!1302572 m!5010853))

(declare-fun m!5010855 () Bool)

(assert (=> b!4376773 m!5010855))

(assert (=> b!4376773 m!5010855))

(declare-fun m!5010857 () Bool)

(assert (=> b!4376773 m!5010857))

(assert (=> b!4376022 d!1302572))

(declare-fun b!4376786 () Bool)

(declare-fun e!2724350 () Option!10552)

(assert (=> b!4376786 (= e!2724350 None!10551)))

(declare-fun d!1302574 () Bool)

(declare-fun c!744295 () Bool)

(assert (=> d!1302574 (= c!744295 (and ((_ is Cons!49140) (toList!3130 lt!1586843)) (= (_1!27625 (h!54733 (toList!3130 lt!1586843))) (_1!27625 lt!1586455))))))

(declare-fun e!2724349 () Option!10552)

(assert (=> d!1302574 (= (getValueByKey!538 (toList!3130 lt!1586843) (_1!27625 lt!1586455)) e!2724349)))

(declare-fun b!4376785 () Bool)

(assert (=> b!4376785 (= e!2724350 (getValueByKey!538 (t!356190 (toList!3130 lt!1586843)) (_1!27625 lt!1586455)))))

(declare-fun b!4376784 () Bool)

(assert (=> b!4376784 (= e!2724349 e!2724350)))

(declare-fun c!744296 () Bool)

(assert (=> b!4376784 (= c!744296 (and ((_ is Cons!49140) (toList!3130 lt!1586843)) (not (= (_1!27625 (h!54733 (toList!3130 lt!1586843))) (_1!27625 lt!1586455)))))))

(declare-fun b!4376783 () Bool)

(assert (=> b!4376783 (= e!2724349 (Some!10551 (_2!27625 (h!54733 (toList!3130 lt!1586843)))))))

(assert (= (and d!1302574 c!744295) b!4376783))

(assert (= (and d!1302574 (not c!744295)) b!4376784))

(assert (= (and b!4376784 c!744296) b!4376785))

(assert (= (and b!4376784 (not c!744296)) b!4376786))

(declare-fun m!5010859 () Bool)

(assert (=> b!4376785 m!5010859))

(assert (=> b!4376011 d!1302574))

(declare-fun d!1302576 () Bool)

(declare-fun res!1802104 () Bool)

(declare-fun e!2724351 () Bool)

(assert (=> d!1302576 (=> res!1802104 e!2724351)))

(assert (=> d!1302576 (= res!1802104 ((_ is Nil!49140) (ite c!744111 (toList!3130 lt!1586446) lt!1586456)))))

(assert (=> d!1302576 (= (forall!9261 (ite c!744111 (toList!3130 lt!1586446) lt!1586456) (ite c!744111 lambda!144699 lambda!144701)) e!2724351)))

(declare-fun b!4376787 () Bool)

(declare-fun e!2724352 () Bool)

(assert (=> b!4376787 (= e!2724351 e!2724352)))

(declare-fun res!1802105 () Bool)

(assert (=> b!4376787 (=> (not res!1802105) (not e!2724352))))

(assert (=> b!4376787 (= res!1802105 (dynLambda!20705 (ite c!744111 lambda!144699 lambda!144701) (h!54733 (ite c!744111 (toList!3130 lt!1586446) lt!1586456))))))

(declare-fun b!4376788 () Bool)

(assert (=> b!4376788 (= e!2724352 (forall!9261 (t!356190 (ite c!744111 (toList!3130 lt!1586446) lt!1586456)) (ite c!744111 lambda!144699 lambda!144701)))))

(assert (= (and d!1302576 (not res!1802104)) b!4376787))

(assert (= (and b!4376787 res!1802105) b!4376788))

(declare-fun b_lambda!134627 () Bool)

(assert (=> (not b_lambda!134627) (not b!4376787)))

(declare-fun m!5010861 () Bool)

(assert (=> b!4376787 m!5010861))

(declare-fun m!5010863 () Bool)

(assert (=> b!4376788 m!5010863))

(assert (=> bm!304247 d!1302576))

(declare-fun d!1302578 () Bool)

(declare-fun res!1802106 () Bool)

(declare-fun e!2724353 () Bool)

(assert (=> d!1302578 (=> res!1802106 e!2724353)))

(assert (=> d!1302578 (= res!1802106 ((_ is Nil!49140) (toList!3130 lt!1586446)))))

(assert (=> d!1302578 (= (forall!9261 (toList!3130 lt!1586446) lambda!144706) e!2724353)))

(declare-fun b!4376789 () Bool)

(declare-fun e!2724354 () Bool)

(assert (=> b!4376789 (= e!2724353 e!2724354)))

(declare-fun res!1802107 () Bool)

(assert (=> b!4376789 (=> (not res!1802107) (not e!2724354))))

(assert (=> b!4376789 (= res!1802107 (dynLambda!20705 lambda!144706 (h!54733 (toList!3130 lt!1586446))))))

(declare-fun b!4376790 () Bool)

(assert (=> b!4376790 (= e!2724354 (forall!9261 (t!356190 (toList!3130 lt!1586446)) lambda!144706))))

(assert (= (and d!1302578 (not res!1802106)) b!4376789))

(assert (= (and b!4376789 res!1802107) b!4376790))

(declare-fun b_lambda!134629 () Bool)

(assert (=> (not b_lambda!134629) (not b!4376789)))

(declare-fun m!5010865 () Bool)

(assert (=> b!4376789 m!5010865))

(declare-fun m!5010867 () Bool)

(assert (=> b!4376790 m!5010867))

(assert (=> b!4375998 d!1302578))

(declare-fun b!4376794 () Bool)

(declare-fun e!2724356 () Option!10552)

(assert (=> b!4376794 (= e!2724356 None!10551)))

(declare-fun d!1302580 () Bool)

(declare-fun c!744297 () Bool)

(assert (=> d!1302580 (= c!744297 (and ((_ is Cons!49140) (toList!3130 lt!1586869)) (= (_1!27625 (h!54733 (toList!3130 lt!1586869))) (_1!27625 lt!1586455))))))

(declare-fun e!2724355 () Option!10552)

(assert (=> d!1302580 (= (getValueByKey!538 (toList!3130 lt!1586869) (_1!27625 lt!1586455)) e!2724355)))

(declare-fun b!4376793 () Bool)

(assert (=> b!4376793 (= e!2724356 (getValueByKey!538 (t!356190 (toList!3130 lt!1586869)) (_1!27625 lt!1586455)))))

(declare-fun b!4376792 () Bool)

(assert (=> b!4376792 (= e!2724355 e!2724356)))

(declare-fun c!744298 () Bool)

(assert (=> b!4376792 (= c!744298 (and ((_ is Cons!49140) (toList!3130 lt!1586869)) (not (= (_1!27625 (h!54733 (toList!3130 lt!1586869))) (_1!27625 lt!1586455)))))))

(declare-fun b!4376791 () Bool)

(assert (=> b!4376791 (= e!2724355 (Some!10551 (_2!27625 (h!54733 (toList!3130 lt!1586869)))))))

(assert (= (and d!1302580 c!744297) b!4376791))

(assert (= (and d!1302580 (not c!744297)) b!4376792))

(assert (= (and b!4376792 c!744298) b!4376793))

(assert (= (and b!4376792 (not c!744298)) b!4376794))

(declare-fun m!5010869 () Bool)

(assert (=> b!4376793 m!5010869))

(assert (=> b!4376020 d!1302580))

(declare-fun d!1302582 () Bool)

(declare-fun c!744299 () Bool)

(assert (=> d!1302582 (= c!744299 ((_ is Nil!49140) (toList!3130 lt!1586457)))))

(declare-fun e!2724357 () (InoxSet tuple2!48662))

(assert (=> d!1302582 (= (content!7802 (toList!3130 lt!1586457)) e!2724357)))

(declare-fun b!4376795 () Bool)

(assert (=> b!4376795 (= e!2724357 ((as const (Array tuple2!48662 Bool)) false))))

(declare-fun b!4376796 () Bool)

(assert (=> b!4376796 (= e!2724357 ((_ map or) (store ((as const (Array tuple2!48662 Bool)) false) (h!54733 (toList!3130 lt!1586457)) true) (content!7802 (t!356190 (toList!3130 lt!1586457)))))))

(assert (= (and d!1302582 c!744299) b!4376795))

(assert (= (and d!1302582 (not c!744299)) b!4376796))

(declare-fun m!5010871 () Bool)

(assert (=> b!4376796 m!5010871))

(declare-fun m!5010873 () Bool)

(assert (=> b!4376796 m!5010873))

(assert (=> d!1302148 d!1302582))

(assert (=> d!1302148 d!1302302))

(declare-fun d!1302584 () Bool)

(assert (=> d!1302584 (= (invariantList!719 (toList!3130 lt!1586863)) (noDuplicatedKeys!134 (toList!3130 lt!1586863)))))

(declare-fun bs!659075 () Bool)

(assert (= bs!659075 d!1302584))

(declare-fun m!5010875 () Bool)

(assert (=> bs!659075 m!5010875))

(assert (=> b!4376015 d!1302584))

(declare-fun d!1302586 () Bool)

(declare-fun res!1802108 () Bool)

(declare-fun e!2724358 () Bool)

(assert (=> d!1302586 (=> res!1802108 e!2724358)))

(assert (=> d!1302586 (= res!1802108 (not ((_ is Cons!49140) (_2!27626 (tuple2!48665 hash!377 newBucket!200)))))))

(assert (=> d!1302586 (= (noDuplicateKeys!573 (_2!27626 (tuple2!48665 hash!377 newBucket!200))) e!2724358)))

(declare-fun b!4376797 () Bool)

(declare-fun e!2724359 () Bool)

(assert (=> b!4376797 (= e!2724358 e!2724359)))

(declare-fun res!1802109 () Bool)

(assert (=> b!4376797 (=> (not res!1802109) (not e!2724359))))

(assert (=> b!4376797 (= res!1802109 (not (containsKey!835 (t!356190 (_2!27626 (tuple2!48665 hash!377 newBucket!200))) (_1!27625 (h!54733 (_2!27626 (tuple2!48665 hash!377 newBucket!200)))))))))

(declare-fun b!4376798 () Bool)

(assert (=> b!4376798 (= e!2724359 (noDuplicateKeys!573 (t!356190 (_2!27626 (tuple2!48665 hash!377 newBucket!200)))))))

(assert (= (and d!1302586 (not res!1802108)) b!4376797))

(assert (= (and b!4376797 res!1802109) b!4376798))

(declare-fun m!5010877 () Bool)

(assert (=> b!4376797 m!5010877))

(declare-fun m!5010879 () Bool)

(assert (=> b!4376798 m!5010879))

(assert (=> bs!657956 d!1302586))

(declare-fun b!4376799 () Bool)

(declare-fun e!2724364 () Unit!74656)

(declare-fun Unit!74895 () Unit!74656)

(assert (=> b!4376799 (= e!2724364 Unit!74895)))

(declare-fun b!4376800 () Bool)

(declare-fun e!2724362 () Unit!74656)

(declare-fun lt!1587440 () Unit!74656)

(assert (=> b!4376800 (= e!2724362 lt!1587440)))

(declare-fun lt!1587442 () Unit!74656)

(assert (=> b!4376800 (= lt!1587442 (lemmaContainsKeyImpliesGetValueByKeyDefined!449 (toList!3130 lt!1586843) (_1!27625 lt!1586455)))))

(assert (=> b!4376800 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586843) (_1!27625 lt!1586455)))))

(declare-fun lt!1587435 () Unit!74656)

(assert (=> b!4376800 (= lt!1587435 lt!1587442)))

(assert (=> b!4376800 (= lt!1587440 (lemmaInListThenGetKeysListContains!164 (toList!3130 lt!1586843) (_1!27625 lt!1586455)))))

(declare-fun call!304349 () Bool)

(assert (=> b!4376800 call!304349))

(declare-fun b!4376801 () Bool)

(declare-fun e!2724363 () Bool)

(assert (=> b!4376801 (= e!2724363 (not (contains!11467 (keys!16659 lt!1586843) (_1!27625 lt!1586455))))))

(declare-fun bm!304344 () Bool)

(declare-fun e!2724361 () List!49267)

(assert (=> bm!304344 (= call!304349 (contains!11467 e!2724361 (_1!27625 lt!1586455)))))

(declare-fun c!744302 () Bool)

(declare-fun c!744301 () Bool)

(assert (=> bm!304344 (= c!744302 c!744301)))

(declare-fun b!4376802 () Bool)

(assert (=> b!4376802 (= e!2724361 (getKeysList!167 (toList!3130 lt!1586843)))))

(declare-fun b!4376803 () Bool)

(assert (=> b!4376803 (= e!2724362 e!2724364)))

(declare-fun c!744300 () Bool)

(assert (=> b!4376803 (= c!744300 call!304349)))

(declare-fun b!4376804 () Bool)

(assert (=> b!4376804 (= e!2724361 (keys!16659 lt!1586843))))

(declare-fun d!1302588 () Bool)

(declare-fun e!2724360 () Bool)

(assert (=> d!1302588 e!2724360))

(declare-fun res!1802110 () Bool)

(assert (=> d!1302588 (=> res!1802110 e!2724360)))

(assert (=> d!1302588 (= res!1802110 e!2724363)))

(declare-fun res!1802111 () Bool)

(assert (=> d!1302588 (=> (not res!1802111) (not e!2724363))))

(declare-fun lt!1587439 () Bool)

(assert (=> d!1302588 (= res!1802111 (not lt!1587439))))

(declare-fun lt!1587436 () Bool)

(assert (=> d!1302588 (= lt!1587439 lt!1587436)))

(declare-fun lt!1587438 () Unit!74656)

(assert (=> d!1302588 (= lt!1587438 e!2724362)))

(assert (=> d!1302588 (= c!744301 lt!1587436)))

(assert (=> d!1302588 (= lt!1587436 (containsKey!839 (toList!3130 lt!1586843) (_1!27625 lt!1586455)))))

(assert (=> d!1302588 (= (contains!11461 lt!1586843 (_1!27625 lt!1586455)) lt!1587439)))

(declare-fun b!4376805 () Bool)

(declare-fun e!2724365 () Bool)

(assert (=> b!4376805 (= e!2724365 (contains!11467 (keys!16659 lt!1586843) (_1!27625 lt!1586455)))))

(declare-fun b!4376806 () Bool)

(assert (=> b!4376806 false))

(declare-fun lt!1587441 () Unit!74656)

(declare-fun lt!1587437 () Unit!74656)

(assert (=> b!4376806 (= lt!1587441 lt!1587437)))

(assert (=> b!4376806 (containsKey!839 (toList!3130 lt!1586843) (_1!27625 lt!1586455))))

(assert (=> b!4376806 (= lt!1587437 (lemmaInGetKeysListThenContainsKey!165 (toList!3130 lt!1586843) (_1!27625 lt!1586455)))))

(declare-fun Unit!74896 () Unit!74656)

(assert (=> b!4376806 (= e!2724364 Unit!74896)))

(declare-fun b!4376807 () Bool)

(assert (=> b!4376807 (= e!2724360 e!2724365)))

(declare-fun res!1802112 () Bool)

(assert (=> b!4376807 (=> (not res!1802112) (not e!2724365))))

(assert (=> b!4376807 (= res!1802112 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586843) (_1!27625 lt!1586455))))))

(assert (= (and d!1302588 c!744301) b!4376800))

(assert (= (and d!1302588 (not c!744301)) b!4376803))

(assert (= (and b!4376803 c!744300) b!4376806))

(assert (= (and b!4376803 (not c!744300)) b!4376799))

(assert (= (or b!4376800 b!4376803) bm!304344))

(assert (= (and bm!304344 c!744302) b!4376802))

(assert (= (and bm!304344 (not c!744302)) b!4376804))

(assert (= (and d!1302588 res!1802111) b!4376801))

(assert (= (and d!1302588 (not res!1802110)) b!4376807))

(assert (= (and b!4376807 res!1802112) b!4376805))

(declare-fun m!5010881 () Bool)

(assert (=> b!4376800 m!5010881))

(assert (=> b!4376800 m!5009393))

(assert (=> b!4376800 m!5009393))

(declare-fun m!5010883 () Bool)

(assert (=> b!4376800 m!5010883))

(declare-fun m!5010885 () Bool)

(assert (=> b!4376800 m!5010885))

(declare-fun m!5010887 () Bool)

(assert (=> bm!304344 m!5010887))

(assert (=> b!4376807 m!5009393))

(assert (=> b!4376807 m!5009393))

(assert (=> b!4376807 m!5010883))

(declare-fun m!5010889 () Bool)

(assert (=> b!4376804 m!5010889))

(assert (=> b!4376805 m!5010889))

(assert (=> b!4376805 m!5010889))

(declare-fun m!5010891 () Bool)

(assert (=> b!4376805 m!5010891))

(declare-fun m!5010893 () Bool)

(assert (=> d!1302588 m!5010893))

(declare-fun m!5010895 () Bool)

(assert (=> b!4376802 m!5010895))

(assert (=> b!4376806 m!5010893))

(declare-fun m!5010897 () Bool)

(assert (=> b!4376806 m!5010897))

(assert (=> b!4376801 m!5010889))

(assert (=> b!4376801 m!5010889))

(assert (=> b!4376801 m!5010891))

(assert (=> d!1302210 d!1302588))

(declare-fun b!4376815 () Bool)

(declare-fun e!2724371 () Option!10552)

(assert (=> b!4376815 (= e!2724371 None!10551)))

(declare-fun d!1302592 () Bool)

(declare-fun c!744303 () Bool)

(assert (=> d!1302592 (= c!744303 (and ((_ is Cons!49140) lt!1586845) (= (_1!27625 (h!54733 lt!1586845)) (_1!27625 lt!1586455))))))

(declare-fun e!2724370 () Option!10552)

(assert (=> d!1302592 (= (getValueByKey!538 lt!1586845 (_1!27625 lt!1586455)) e!2724370)))

(declare-fun b!4376814 () Bool)

(assert (=> b!4376814 (= e!2724371 (getValueByKey!538 (t!356190 lt!1586845) (_1!27625 lt!1586455)))))

(declare-fun b!4376813 () Bool)

(assert (=> b!4376813 (= e!2724370 e!2724371)))

(declare-fun c!744304 () Bool)

(assert (=> b!4376813 (= c!744304 (and ((_ is Cons!49140) lt!1586845) (not (= (_1!27625 (h!54733 lt!1586845)) (_1!27625 lt!1586455)))))))

(declare-fun b!4376812 () Bool)

(assert (=> b!4376812 (= e!2724370 (Some!10551 (_2!27625 (h!54733 lt!1586845))))))

(assert (= (and d!1302592 c!744303) b!4376812))

(assert (= (and d!1302592 (not c!744303)) b!4376813))

(assert (= (and b!4376813 c!744304) b!4376814))

(assert (= (and b!4376813 (not c!744304)) b!4376815))

(declare-fun m!5010899 () Bool)

(assert (=> b!4376814 m!5010899))

(assert (=> d!1302210 d!1302592))

(declare-fun d!1302594 () Bool)

(assert (=> d!1302594 (= (getValueByKey!538 lt!1586845 (_1!27625 lt!1586455)) (Some!10551 (_2!27625 lt!1586455)))))

(declare-fun lt!1587466 () Unit!74656)

(declare-fun choose!27274 (List!49264 K!10500 V!10746) Unit!74656)

(assert (=> d!1302594 (= lt!1587466 (choose!27274 lt!1586845 (_1!27625 lt!1586455) (_2!27625 lt!1586455)))))

(declare-fun e!2724379 () Bool)

(assert (=> d!1302594 e!2724379))

(declare-fun res!1802126 () Bool)

(assert (=> d!1302594 (=> (not res!1802126) (not e!2724379))))

(assert (=> d!1302594 (= res!1802126 (invariantList!719 lt!1586845))))

(assert (=> d!1302594 (= (lemmaContainsTupThenGetReturnValue!302 lt!1586845 (_1!27625 lt!1586455) (_2!27625 lt!1586455)) lt!1587466)))

(declare-fun b!4376827 () Bool)

(declare-fun res!1802127 () Bool)

(assert (=> b!4376827 (=> (not res!1802127) (not e!2724379))))

(assert (=> b!4376827 (= res!1802127 (containsKey!839 lt!1586845 (_1!27625 lt!1586455)))))

(declare-fun b!4376828 () Bool)

(assert (=> b!4376828 (= e!2724379 (contains!11466 lt!1586845 (tuple2!48663 (_1!27625 lt!1586455) (_2!27625 lt!1586455))))))

(assert (= (and d!1302594 res!1802126) b!4376827))

(assert (= (and b!4376827 res!1802127) b!4376828))

(assert (=> d!1302594 m!5009387))

(declare-fun m!5010907 () Bool)

(assert (=> d!1302594 m!5010907))

(declare-fun m!5010909 () Bool)

(assert (=> d!1302594 m!5010909))

(declare-fun m!5010911 () Bool)

(assert (=> b!4376827 m!5010911))

(declare-fun m!5010913 () Bool)

(assert (=> b!4376828 m!5010913))

(assert (=> d!1302210 d!1302594))

(declare-fun b!4376893 () Bool)

(declare-fun e!2724418 () List!49264)

(declare-fun e!2724421 () List!49264)

(assert (=> b!4376893 (= e!2724418 e!2724421)))

(declare-fun res!1802160 () Bool)

(assert (=> b!4376893 (= res!1802160 ((_ is Cons!49140) (toList!3130 lt!1586454)))))

(declare-fun e!2724417 () Bool)

(assert (=> b!4376893 (=> (not res!1802160) (not e!2724417))))

(declare-fun c!744325 () Bool)

(assert (=> b!4376893 (= c!744325 e!2724417)))

(declare-fun b!4376894 () Bool)

(declare-fun e!2724422 () List!49264)

(declare-fun call!304365 () List!49264)

(assert (=> b!4376894 (= e!2724422 call!304365)))

(declare-fun b!4376895 () Bool)

(declare-fun call!304364 () List!49264)

(assert (=> b!4376895 (= e!2724418 call!304364)))

(declare-fun lt!1587511 () List!49267)

(declare-fun call!304366 () List!49267)

(assert (=> b!4376895 (= lt!1587511 call!304366)))

(declare-fun lt!1587512 () Unit!74656)

(declare-fun lemmaSubseqRefl!80 (List!49267) Unit!74656)

(assert (=> b!4376895 (= lt!1587512 (lemmaSubseqRefl!80 lt!1587511))))

(declare-fun subseq!596 (List!49267 List!49267) Bool)

(assert (=> b!4376895 (subseq!596 lt!1587511 lt!1587511)))

(declare-fun lt!1587513 () Unit!74656)

(assert (=> b!4376895 (= lt!1587513 lt!1587512)))

(declare-fun e!2724419 () Bool)

(declare-fun b!4376896 () Bool)

(declare-fun lt!1587517 () List!49264)

(assert (=> b!4376896 (= e!2724419 (= (content!7804 (getKeysList!167 lt!1587517)) ((_ map or) (content!7804 (getKeysList!167 (toList!3130 lt!1586454))) (store ((as const (Array K!10500 Bool)) false) (_1!27625 lt!1586455) true))))))

(declare-fun c!744323 () Bool)

(declare-fun lt!1587514 () List!49264)

(declare-fun bm!304359 () Bool)

(assert (=> bm!304359 (= call!304366 (getKeysList!167 (ite c!744323 (toList!3130 lt!1586454) lt!1587514)))))

(declare-fun b!4376897 () Bool)

(declare-fun res!1802159 () Bool)

(assert (=> b!4376897 (=> (not res!1802159) (not e!2724419))))

(assert (=> b!4376897 (= res!1802159 (containsKey!839 lt!1587517 (_1!27625 lt!1586455)))))

(declare-fun b!4376898 () Bool)

(assert (=> b!4376898 false))

(declare-fun lt!1587515 () Unit!74656)

(declare-fun lt!1587516 () Unit!74656)

(assert (=> b!4376898 (= lt!1587515 lt!1587516)))

(assert (=> b!4376898 (containsKey!839 (t!356190 (toList!3130 lt!1586454)) (_1!27625 (h!54733 (toList!3130 lt!1586454))))))

(assert (=> b!4376898 (= lt!1587516 (lemmaInGetKeysListThenContainsKey!165 (t!356190 (toList!3130 lt!1586454)) (_1!27625 (h!54733 (toList!3130 lt!1586454)))))))

(declare-fun lt!1587507 () Unit!74656)

(declare-fun lt!1587510 () Unit!74656)

(assert (=> b!4376898 (= lt!1587507 lt!1587510)))

(assert (=> b!4376898 (contains!11467 call!304366 (_1!27625 (h!54733 (toList!3130 lt!1586454))))))

(assert (=> b!4376898 (= lt!1587510 (lemmaInListThenGetKeysListContains!164 lt!1587514 (_1!27625 (h!54733 (toList!3130 lt!1586454)))))))

(assert (=> b!4376898 (= lt!1587514 (insertNoDuplicatedKeys!137 (t!356190 (toList!3130 lt!1586454)) (_1!27625 lt!1586455) (_2!27625 lt!1586455)))))

(declare-fun e!2724423 () Unit!74656)

(declare-fun Unit!74908 () Unit!74656)

(assert (=> b!4376898 (= e!2724423 Unit!74908)))

(declare-fun e!2724420 () List!49264)

(declare-fun c!744324 () Bool)

(declare-fun bm!304360 () Bool)

(declare-fun $colon$colon!721 (List!49264 tuple2!48662) List!49264)

(assert (=> bm!304360 (= call!304364 ($colon$colon!721 (ite c!744323 (t!356190 (toList!3130 lt!1586454)) (ite c!744325 (toList!3130 lt!1586454) e!2724420)) (ite (or c!744323 c!744325) (tuple2!48663 (_1!27625 lt!1586455) (_2!27625 lt!1586455)) (ite c!744324 (h!54733 (toList!3130 lt!1586454)) (tuple2!48663 (_1!27625 lt!1586455) (_2!27625 lt!1586455))))))))

(declare-fun b!4376899 () Bool)

(assert (=> b!4376899 (= e!2724420 Nil!49140)))

(declare-fun b!4376900 () Bool)

(declare-fun Unit!74909 () Unit!74656)

(assert (=> b!4376900 (= e!2724423 Unit!74909)))

(declare-fun b!4376901 () Bool)

(declare-fun lt!1587509 () List!49264)

(assert (=> b!4376901 (= e!2724422 lt!1587509)))

(assert (=> b!4376901 (= lt!1587509 call!304365)))

(declare-fun c!744326 () Bool)

(assert (=> b!4376901 (= c!744326 (containsKey!839 (insertNoDuplicatedKeys!137 (t!356190 (toList!3130 lt!1586454)) (_1!27625 lt!1586455) (_2!27625 lt!1586455)) (_1!27625 (h!54733 (toList!3130 lt!1586454)))))))

(declare-fun lt!1587508 () Unit!74656)

(assert (=> b!4376901 (= lt!1587508 e!2724423)))

(declare-fun d!1302600 () Bool)

(assert (=> d!1302600 e!2724419))

(declare-fun res!1802158 () Bool)

(assert (=> d!1302600 (=> (not res!1802158) (not e!2724419))))

(assert (=> d!1302600 (= res!1802158 (invariantList!719 lt!1587517))))

(assert (=> d!1302600 (= lt!1587517 e!2724418)))

(assert (=> d!1302600 (= c!744323 (and ((_ is Cons!49140) (toList!3130 lt!1586454)) (= (_1!27625 (h!54733 (toList!3130 lt!1586454))) (_1!27625 lt!1586455))))))

(assert (=> d!1302600 (invariantList!719 (toList!3130 lt!1586454))))

(assert (=> d!1302600 (= (insertNoDuplicatedKeys!137 (toList!3130 lt!1586454) (_1!27625 lt!1586455) (_2!27625 lt!1586455)) lt!1587517)))

(declare-fun bm!304361 () Bool)

(declare-fun call!304367 () List!49264)

(assert (=> bm!304361 (= call!304365 call!304367)))

(declare-fun c!744327 () Bool)

(assert (=> bm!304361 (= c!744327 c!744324)))

(declare-fun b!4376902 () Bool)

(assert (=> b!4376902 (= e!2724421 call!304367)))

(declare-fun b!4376903 () Bool)

(assert (=> b!4376903 (= e!2724420 (insertNoDuplicatedKeys!137 (t!356190 (toList!3130 lt!1586454)) (_1!27625 lt!1586455) (_2!27625 lt!1586455)))))

(declare-fun b!4376904 () Bool)

(assert (=> b!4376904 (= c!744324 ((_ is Cons!49140) (toList!3130 lt!1586454)))))

(assert (=> b!4376904 (= e!2724421 e!2724422)))

(declare-fun b!4376905 () Bool)

(declare-fun res!1802157 () Bool)

(assert (=> b!4376905 (=> (not res!1802157) (not e!2724419))))

(assert (=> b!4376905 (= res!1802157 (contains!11466 lt!1587517 (tuple2!48663 (_1!27625 lt!1586455) (_2!27625 lt!1586455))))))

(declare-fun bm!304362 () Bool)

(assert (=> bm!304362 (= call!304367 call!304364)))

(declare-fun b!4376906 () Bool)

(assert (=> b!4376906 (= e!2724417 (not (containsKey!839 (toList!3130 lt!1586454) (_1!27625 lt!1586455))))))

(assert (= (and d!1302600 c!744323) b!4376895))

(assert (= (and d!1302600 (not c!744323)) b!4376893))

(assert (= (and b!4376893 res!1802160) b!4376906))

(assert (= (and b!4376893 c!744325) b!4376902))

(assert (= (and b!4376893 (not c!744325)) b!4376904))

(assert (= (and b!4376904 c!744324) b!4376901))

(assert (= (and b!4376904 (not c!744324)) b!4376894))

(assert (= (and b!4376901 c!744326) b!4376898))

(assert (= (and b!4376901 (not c!744326)) b!4376900))

(assert (= (or b!4376901 b!4376894) bm!304361))

(assert (= (and bm!304361 c!744327) b!4376903))

(assert (= (and bm!304361 (not c!744327)) b!4376899))

(assert (= (or b!4376902 bm!304361) bm!304362))

(assert (= (or b!4376895 b!4376898) bm!304359))

(assert (= (or b!4376895 bm!304362) bm!304360))

(assert (= (and d!1302600 res!1802158) b!4376897))

(assert (= (and b!4376897 res!1802159) b!4376905))

(assert (= (and b!4376905 res!1802157) b!4376896))

(declare-fun m!5011043 () Bool)

(assert (=> b!4376897 m!5011043))

(declare-fun m!5011045 () Bool)

(assert (=> b!4376903 m!5011045))

(declare-fun m!5011047 () Bool)

(assert (=> b!4376895 m!5011047))

(declare-fun m!5011049 () Bool)

(assert (=> b!4376895 m!5011049))

(declare-fun m!5011051 () Bool)

(assert (=> bm!304359 m!5011051))

(assert (=> b!4376898 m!5011045))

(declare-fun m!5011053 () Bool)

(assert (=> b!4376898 m!5011053))

(declare-fun m!5011055 () Bool)

(assert (=> b!4376898 m!5011055))

(declare-fun m!5011057 () Bool)

(assert (=> b!4376898 m!5011057))

(declare-fun m!5011063 () Bool)

(assert (=> b!4376898 m!5011063))

(assert (=> b!4376901 m!5011045))

(assert (=> b!4376901 m!5011045))

(declare-fun m!5011065 () Bool)

(assert (=> b!4376901 m!5011065))

(declare-fun m!5011067 () Bool)

(assert (=> d!1302600 m!5011067))

(declare-fun m!5011069 () Bool)

(assert (=> d!1302600 m!5011069))

(declare-fun m!5011071 () Bool)

(assert (=> b!4376896 m!5011071))

(declare-fun m!5011073 () Bool)

(assert (=> b!4376896 m!5011073))

(declare-fun m!5011075 () Bool)

(assert (=> b!4376896 m!5011075))

(declare-fun m!5011077 () Bool)

(assert (=> b!4376896 m!5011077))

(assert (=> b!4376896 m!5011071))

(declare-fun m!5011079 () Bool)

(assert (=> b!4376896 m!5011079))

(assert (=> b!4376896 m!5011073))

(declare-fun m!5011081 () Bool)

(assert (=> b!4376906 m!5011081))

(declare-fun m!5011083 () Bool)

(assert (=> b!4376905 m!5011083))

(declare-fun m!5011085 () Bool)

(assert (=> bm!304360 m!5011085))

(assert (=> d!1302210 d!1302600))

(declare-fun d!1302644 () Bool)

(declare-fun res!1802169 () Bool)

(declare-fun e!2724432 () Bool)

(assert (=> d!1302644 (=> res!1802169 e!2724432)))

(assert (=> d!1302644 (= res!1802169 ((_ is Nil!49140) (toList!3130 lt!1586446)))))

(assert (=> d!1302644 (= (forall!9261 (toList!3130 lt!1586446) lambda!144701) e!2724432)))

(declare-fun b!4376915 () Bool)

(declare-fun e!2724433 () Bool)

(assert (=> b!4376915 (= e!2724432 e!2724433)))

(declare-fun res!1802170 () Bool)

(assert (=> b!4376915 (=> (not res!1802170) (not e!2724433))))

(assert (=> b!4376915 (= res!1802170 (dynLambda!20705 lambda!144701 (h!54733 (toList!3130 lt!1586446))))))

(declare-fun b!4376916 () Bool)

(assert (=> b!4376916 (= e!2724433 (forall!9261 (t!356190 (toList!3130 lt!1586446)) lambda!144701))))

(assert (= (and d!1302644 (not res!1802169)) b!4376915))

(assert (= (and b!4376915 res!1802170) b!4376916))

(declare-fun b_lambda!134641 () Bool)

(assert (=> (not b_lambda!134641) (not b!4376915)))

(declare-fun m!5011087 () Bool)

(assert (=> b!4376915 m!5011087))

(declare-fun m!5011089 () Bool)

(assert (=> b!4376916 m!5011089))

(assert (=> b!4375990 d!1302644))

(assert (=> bm!304251 d!1302348))

(declare-fun d!1302646 () Bool)

(assert (=> d!1302646 (isDefined!7843 (getValueByKey!537 (toList!3129 lm!1707) hash!377))))

(declare-fun lt!1587521 () Unit!74656)

(declare-fun choose!27275 (List!49265 (_ BitVec 64)) Unit!74656)

(assert (=> d!1302646 (= lt!1587521 (choose!27275 (toList!3129 lm!1707) hash!377))))

(declare-fun e!2724436 () Bool)

(assert (=> d!1302646 e!2724436))

(declare-fun res!1802173 () Bool)

(assert (=> d!1302646 (=> (not res!1802173) (not e!2724436))))

(assert (=> d!1302646 (= res!1802173 (isStrictlySorted!146 (toList!3129 lm!1707)))))

(assert (=> d!1302646 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!446 (toList!3129 lm!1707) hash!377) lt!1587521)))

(declare-fun b!4376919 () Bool)

(assert (=> b!4376919 (= e!2724436 (containsKey!836 (toList!3129 lm!1707) hash!377))))

(assert (= (and d!1302646 res!1802173) b!4376919))

(assert (=> d!1302646 m!5008921))

(assert (=> d!1302646 m!5008921))

(assert (=> d!1302646 m!5009057))

(declare-fun m!5011091 () Bool)

(assert (=> d!1302646 m!5011091))

(assert (=> d!1302646 m!5008915))

(assert (=> b!4376919 m!5009053))

(assert (=> b!4375881 d!1302646))

(declare-fun d!1302648 () Bool)

(declare-fun isEmpty!28242 (Option!10551) Bool)

(assert (=> d!1302648 (= (isDefined!7843 (getValueByKey!537 (toList!3129 lm!1707) hash!377)) (not (isEmpty!28242 (getValueByKey!537 (toList!3129 lm!1707) hash!377))))))

(declare-fun bs!659228 () Bool)

(assert (= bs!659228 d!1302648))

(assert (=> bs!659228 m!5008921))

(declare-fun m!5011101 () Bool)

(assert (=> bs!659228 m!5011101))

(assert (=> b!4375881 d!1302648))

(assert (=> b!4375881 d!1302356))

(declare-fun d!1302652 () Bool)

(declare-fun res!1802176 () Bool)

(declare-fun e!2724439 () Bool)

(assert (=> d!1302652 (=> res!1802176 e!2724439)))

(assert (=> d!1302652 (= res!1802176 ((_ is Nil!49140) (ite c!744115 (toList!3130 lt!1586446) lt!1586460)))))

(assert (=> d!1302652 (= (forall!9261 (ite c!744115 (toList!3130 lt!1586446) lt!1586460) (ite c!744115 lambda!144712 lambda!144714)) e!2724439)))

(declare-fun b!4376922 () Bool)

(declare-fun e!2724440 () Bool)

(assert (=> b!4376922 (= e!2724439 e!2724440)))

(declare-fun res!1802177 () Bool)

(assert (=> b!4376922 (=> (not res!1802177) (not e!2724440))))

(assert (=> b!4376922 (= res!1802177 (dynLambda!20705 (ite c!744115 lambda!144712 lambda!144714) (h!54733 (ite c!744115 (toList!3130 lt!1586446) lt!1586460))))))

(declare-fun b!4376923 () Bool)

(assert (=> b!4376923 (= e!2724440 (forall!9261 (t!356190 (ite c!744115 (toList!3130 lt!1586446) lt!1586460)) (ite c!744115 lambda!144712 lambda!144714)))))

(assert (= (and d!1302652 (not res!1802176)) b!4376922))

(assert (= (and b!4376922 res!1802177) b!4376923))

(declare-fun b_lambda!134645 () Bool)

(assert (=> (not b_lambda!134645) (not b!4376922)))

(declare-fun m!5011105 () Bool)

(assert (=> b!4376922 m!5011105))

(declare-fun m!5011107 () Bool)

(assert (=> b!4376923 m!5011107))

(assert (=> bm!304256 d!1302652))

(declare-fun d!1302656 () Bool)

(declare-fun res!1802181 () Bool)

(declare-fun e!2724444 () Bool)

(assert (=> d!1302656 (=> res!1802181 e!2724444)))

(assert (=> d!1302656 (= res!1802181 ((_ is Nil!49140) lt!1586456))))

(assert (=> d!1302656 (= (forall!9261 lt!1586456 lambda!144701) e!2724444)))

(declare-fun b!4376929 () Bool)

(declare-fun e!2724445 () Bool)

(assert (=> b!4376929 (= e!2724444 e!2724445)))

(declare-fun res!1802182 () Bool)

(assert (=> b!4376929 (=> (not res!1802182) (not e!2724445))))

(assert (=> b!4376929 (= res!1802182 (dynLambda!20705 lambda!144701 (h!54733 lt!1586456)))))

(declare-fun b!4376930 () Bool)

(assert (=> b!4376930 (= e!2724445 (forall!9261 (t!356190 lt!1586456) lambda!144701))))

(assert (= (and d!1302656 (not res!1802181)) b!4376929))

(assert (= (and b!4376929 res!1802182) b!4376930))

(declare-fun b_lambda!134647 () Bool)

(assert (=> (not b_lambda!134647) (not b!4376929)))

(declare-fun m!5011109 () Bool)

(assert (=> b!4376929 m!5011109))

(assert (=> b!4376930 m!5009281))

(assert (=> b!4375992 d!1302656))

(declare-fun d!1302658 () Bool)

(declare-fun res!1802183 () Bool)

(declare-fun e!2724446 () Bool)

(assert (=> d!1302658 (=> res!1802183 e!2724446)))

(assert (=> d!1302658 (= res!1802183 ((_ is Nil!49140) (t!356190 lt!1586456)))))

(assert (=> d!1302658 (= (forall!9261 (t!356190 lt!1586456) lambda!144701) e!2724446)))

(declare-fun b!4376931 () Bool)

(declare-fun e!2724447 () Bool)

(assert (=> b!4376931 (= e!2724446 e!2724447)))

(declare-fun res!1802184 () Bool)

(assert (=> b!4376931 (=> (not res!1802184) (not e!2724447))))

(assert (=> b!4376931 (= res!1802184 (dynLambda!20705 lambda!144701 (h!54733 (t!356190 lt!1586456))))))

(declare-fun b!4376932 () Bool)

(assert (=> b!4376932 (= e!2724447 (forall!9261 (t!356190 (t!356190 lt!1586456)) lambda!144701))))

(assert (= (and d!1302658 (not res!1802183)) b!4376931))

(assert (= (and b!4376931 res!1802184) b!4376932))

(declare-fun b_lambda!134649 () Bool)

(assert (=> (not b_lambda!134649) (not b!4376931)))

(declare-fun m!5011111 () Bool)

(assert (=> b!4376931 m!5011111))

(declare-fun m!5011113 () Bool)

(assert (=> b!4376932 m!5011113))

(assert (=> b!4375992 d!1302658))

(declare-fun d!1302660 () Bool)

(assert (=> d!1302660 (dynLambda!20705 lambda!144701 (h!54733 lt!1586456))))

(declare-fun lt!1587543 () Unit!74656)

(assert (=> d!1302660 (= lt!1587543 (choose!27262 (toList!3130 lt!1586773) lambda!144701 (h!54733 lt!1586456)))))

(declare-fun e!2724448 () Bool)

(assert (=> d!1302660 e!2724448))

(declare-fun res!1802185 () Bool)

(assert (=> d!1302660 (=> (not res!1802185) (not e!2724448))))

(assert (=> d!1302660 (= res!1802185 (forall!9261 (toList!3130 lt!1586773) lambda!144701))))

(assert (=> d!1302660 (= (forallContained!1899 (toList!3130 lt!1586773) lambda!144701 (h!54733 lt!1586456)) lt!1587543)))

(declare-fun b!4376933 () Bool)

(assert (=> b!4376933 (= e!2724448 (contains!11466 (toList!3130 lt!1586773) (h!54733 lt!1586456)))))

(assert (= (and d!1302660 res!1802185) b!4376933))

(declare-fun b_lambda!134651 () Bool)

(assert (=> (not b_lambda!134651) (not d!1302660)))

(assert (=> d!1302660 m!5011109))

(declare-fun m!5011115 () Bool)

(assert (=> d!1302660 m!5011115))

(assert (=> d!1302660 m!5009277))

(declare-fun m!5011117 () Bool)

(assert (=> b!4376933 m!5011117))

(assert (=> b!4375992 d!1302660))

(assert (=> b!4375992 d!1302644))

(declare-fun bs!659253 () Bool)

(declare-fun d!1302662 () Bool)

(assert (= bs!659253 (and d!1302662 d!1302320)))

(declare-fun lambda!144836 () Int)

(assert (=> bs!659253 (= (= lt!1586783 lt!1587057) (= lambda!144836 lambda!144743))))

(declare-fun bs!659254 () Bool)

(assert (= bs!659254 (and d!1302662 b!4376000)))

(assert (=> bs!659254 (= (= lt!1586783 lt!1586446) (= lambda!144836 lambda!144703))))

(declare-fun bs!659256 () Bool)

(assert (= bs!659256 (and d!1302662 d!1302208)))

(assert (=> bs!659256 (= (= lt!1586783 lt!1586829) (= lambda!144836 lambda!144710))))

(declare-fun bs!659258 () Bool)

(assert (= bs!659258 (and d!1302662 b!4376001)))

(assert (=> bs!659258 (= (= lt!1586783 lt!1586808) (= lambda!144836 lambda!144705))))

(declare-fun bs!659260 () Bool)

(assert (= bs!659260 (and d!1302662 d!1302554)))

(assert (=> bs!659260 (= (= lt!1586783 (+!778 lt!1586446 lt!1586455)) (= lambda!144836 lambda!144819))))

(declare-fun bs!659262 () Bool)

(assert (= bs!659262 (and d!1302662 d!1302214)))

(assert (=> bs!659262 (= (= lt!1586783 lt!1586863) (= lambda!144836 lambda!144715))))

(declare-fun bs!659264 () Bool)

(assert (= bs!659264 (and d!1302662 b!4376352)))

(assert (=> bs!659264 (= (= lt!1586783 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144836 lambda!144759))))

(declare-fun bs!659266 () Bool)

(assert (= bs!659266 (and d!1302662 b!4376019)))

(assert (=> bs!659266 (= (= lt!1586783 lt!1586866) (= lambda!144836 lambda!144714))))

(declare-fun bs!659268 () Bool)

(assert (= bs!659268 (and d!1302662 b!4375992)))

(assert (=> bs!659268 (= (= lt!1586783 lt!1586446) (= lambda!144836 lambda!144700))))

(declare-fun bs!659270 () Bool)

(assert (= bs!659270 (and d!1302662 d!1302364)))

(assert (=> bs!659270 (= (= lt!1586783 lt!1587151) (= lambda!144836 lambda!144764))))

(declare-fun bs!659271 () Bool)

(assert (= bs!659271 (and d!1302662 b!4376351)))

(assert (=> bs!659271 (= (= lt!1586783 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144836 lambda!144756))))

(declare-fun bs!659273 () Bool)

(assert (= bs!659273 (and d!1302662 b!4376448)))

(assert (=> bs!659273 (= (= lt!1586783 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144836 lambda!144769))))

(assert (=> bs!659258 (= (= lt!1586783 lt!1586446) (= lambda!144836 lambda!144704))))

(declare-fun bs!659275 () Bool)

(assert (= bs!659275 (and d!1302662 b!4376255)))

(assert (=> bs!659275 (= (= lt!1586783 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144836 lambda!144741))))

(assert (=> bs!659266 (= (= lt!1586783 lt!1586446) (= lambda!144836 lambda!144713))))

(declare-fun bs!659277 () Bool)

(assert (= bs!659277 (and d!1302662 b!4376449)))

(assert (=> bs!659277 (= (= lt!1586783 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144836 lambda!144771))))

(declare-fun bs!659278 () Bool)

(assert (= bs!659278 (and d!1302662 b!4376151)))

(assert (=> bs!659278 (= (= lt!1586783 lt!1586965) (= lambda!144836 lambda!144733))))

(assert (=> bs!659278 (= (= lt!1586783 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144836 lambda!144732))))

(declare-fun bs!659281 () Bool)

(assert (= bs!659281 (and d!1302662 d!1302220)))

(assert (=> bs!659281 (not (= lambda!144836 lambda!144717))))

(declare-fun bs!659283 () Bool)

(assert (= bs!659283 (and d!1302662 b!4376770)))

(assert (=> bs!659283 (= (= lt!1586783 lt!1587427) (= lambda!144836 lambda!144826))))

(declare-fun bs!659285 () Bool)

(assert (= bs!659285 (and d!1302662 b!4376769)))

(assert (=> bs!659285 (= (= lt!1586783 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144836 lambda!144822))))

(declare-fun bs!659286 () Bool)

(assert (= bs!659286 (and d!1302662 d!1302282)))

(assert (=> bs!659286 (= (= lt!1586783 lt!1586962) (= lambda!144836 lambda!144734))))

(declare-fun bs!659287 () Bool)

(assert (= bs!659287 (and d!1302662 b!4376254)))

(assert (=> bs!659287 (= (= lt!1586783 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144836 lambda!144740))))

(declare-fun bs!659288 () Bool)

(assert (= bs!659288 (and d!1302662 d!1302202)))

(assert (=> bs!659288 (= (= lt!1586783 lt!1586805) (= lambda!144836 lambda!144706))))

(declare-fun bs!659289 () Bool)

(assert (= bs!659289 (and d!1302662 d!1302408)))

(assert (=> bs!659289 (= (= lt!1586783 lt!1587232) (= lambda!144836 lambda!144774))))

(assert (=> bs!659264 (= (= lt!1586783 lt!1587154) (= lambda!144836 lambda!144763))))

(declare-fun bs!659290 () Bool)

(assert (= bs!659290 (and d!1302662 d!1302330)))

(assert (=> bs!659290 (= (= lt!1586783 lt!1586832) (= lambda!144836 lambda!144749))))

(declare-fun bs!659291 () Bool)

(assert (= bs!659291 (and d!1302662 d!1302304)))

(assert (=> bs!659291 (= (= lt!1586783 lt!1586995) (= lambda!144836 lambda!144739))))

(assert (=> bs!659268 (= lambda!144836 lambda!144701)))

(declare-fun bs!659293 () Bool)

(assert (= bs!659293 (and d!1302662 d!1302152)))

(assert (=> bs!659293 (= (= lt!1586783 lt!1586780) (= lambda!144836 lambda!144702))))

(declare-fun bs!659295 () Bool)

(assert (= bs!659295 (and d!1302662 d!1302118)))

(assert (=> bs!659295 (not (= lambda!144836 lambda!144613))))

(declare-fun bs!659297 () Bool)

(assert (= bs!659297 (and d!1302662 b!4376005)))

(assert (=> bs!659297 (= (= lt!1586783 (+!778 lt!1586446 lt!1586455)) (= lambda!144836 lambda!144707))))

(declare-fun bs!659299 () Bool)

(assert (= bs!659299 (and d!1302662 b!4376018)))

(assert (=> bs!659299 (= (= lt!1586783 lt!1586446) (= lambda!144836 lambda!144712))))

(declare-fun bs!659301 () Bool)

(assert (= bs!659301 (and d!1302662 d!1302348)))

(assert (=> bs!659301 (= (= lt!1586783 lt!1586446) (= lambda!144836 lambda!144755))))

(declare-fun bs!659303 () Bool)

(assert (= bs!659303 (and d!1302662 b!4376006)))

(assert (=> bs!659303 (= (= lt!1586783 (+!778 lt!1586446 lt!1586455)) (= lambda!144836 lambda!144708))))

(declare-fun bs!659305 () Bool)

(assert (= bs!659305 (and d!1302662 b!4375991)))

(assert (=> bs!659305 (= (= lt!1586783 lt!1586446) (= lambda!144836 lambda!144699))))

(declare-fun bs!659307 () Bool)

(assert (= bs!659307 (and d!1302662 b!4376193)))

(assert (=> bs!659307 (= (= lt!1586783 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144836 lambda!144737))))

(declare-fun bs!659309 () Bool)

(assert (= bs!659309 (and d!1302662 d!1302400)))

(assert (=> bs!659309 (= (= lt!1586783 lt!1586808) (= lambda!144836 lambda!144766))))

(assert (=> bs!659275 (= (= lt!1586783 lt!1587060) (= lambda!144836 lambda!144742))))

(declare-fun bs!659312 () Bool)

(assert (= bs!659312 (and d!1302662 b!4376192)))

(assert (=> bs!659312 (= (= lt!1586783 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144836 lambda!144736))))

(assert (=> bs!659303 (= (= lt!1586783 lt!1586832) (= lambda!144836 lambda!144709))))

(assert (=> bs!659283 (= (= lt!1586783 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144836 lambda!144824))))

(declare-fun bs!659315 () Bool)

(assert (= bs!659315 (and d!1302662 b!4376150)))

(assert (=> bs!659315 (= (= lt!1586783 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144836 lambda!144731))))

(assert (=> bs!659277 (= (= lt!1586783 lt!1587235) (= lambda!144836 lambda!144773))))

(declare-fun bs!659317 () Bool)

(assert (= bs!659317 (and d!1302662 d!1302564)))

(assert (=> bs!659317 (= (= lt!1586783 lt!1587424) (= lambda!144836 lambda!144827))))

(assert (=> bs!659307 (= (= lt!1586783 lt!1586998) (= lambda!144836 lambda!144738))))

(assert (=> d!1302662 true))

(assert (=> d!1302662 (forall!9261 (toList!3130 lt!1586446) lambda!144836)))

(declare-fun lt!1587544 () Unit!74656)

(assert (=> d!1302662 (= lt!1587544 (choose!27266 lt!1586446 lt!1586783 (_1!27625 (h!54733 lt!1586456)) (_2!27625 (h!54733 lt!1586456))))))

(assert (=> d!1302662 (forall!9261 (toList!3130 (+!778 lt!1586446 (tuple2!48663 (_1!27625 (h!54733 lt!1586456)) (_2!27625 (h!54733 lt!1586456))))) lambda!144836)))

(assert (=> d!1302662 (= (addForallContainsKeyThenBeforeAdding!101 lt!1586446 lt!1586783 (_1!27625 (h!54733 lt!1586456)) (_2!27625 (h!54733 lt!1586456))) lt!1587544)))

(declare-fun bs!659326 () Bool)

(assert (= bs!659326 d!1302662))

(declare-fun m!5011119 () Bool)

(assert (=> bs!659326 m!5011119))

(declare-fun m!5011121 () Bool)

(assert (=> bs!659326 m!5011121))

(declare-fun m!5011123 () Bool)

(assert (=> bs!659326 m!5011123))

(declare-fun m!5011125 () Bool)

(assert (=> bs!659326 m!5011125))

(assert (=> b!4375992 d!1302662))

(declare-fun b!4376934 () Bool)

(declare-fun e!2724453 () Unit!74656)

(declare-fun Unit!74912 () Unit!74656)

(assert (=> b!4376934 (= e!2724453 Unit!74912)))

(declare-fun b!4376935 () Bool)

(declare-fun e!2724451 () Unit!74656)

(declare-fun lt!1587550 () Unit!74656)

(assert (=> b!4376935 (= e!2724451 lt!1587550)))

(declare-fun lt!1587552 () Unit!74656)

(assert (=> b!4376935 (= lt!1587552 (lemmaContainsKeyImpliesGetValueByKeyDefined!449 (toList!3130 lt!1586773) (_1!27625 (h!54733 lt!1586456))))))

(assert (=> b!4376935 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586773) (_1!27625 (h!54733 lt!1586456))))))

(declare-fun lt!1587545 () Unit!74656)

(assert (=> b!4376935 (= lt!1587545 lt!1587552)))

(assert (=> b!4376935 (= lt!1587550 (lemmaInListThenGetKeysListContains!164 (toList!3130 lt!1586773) (_1!27625 (h!54733 lt!1586456))))))

(declare-fun call!304371 () Bool)

(assert (=> b!4376935 call!304371))

(declare-fun b!4376936 () Bool)

(declare-fun e!2724452 () Bool)

(assert (=> b!4376936 (= e!2724452 (not (contains!11467 (keys!16659 lt!1586773) (_1!27625 (h!54733 lt!1586456)))))))

(declare-fun bm!304366 () Bool)

(declare-fun e!2724450 () List!49267)

(assert (=> bm!304366 (= call!304371 (contains!11467 e!2724450 (_1!27625 (h!54733 lt!1586456))))))

(declare-fun c!744331 () Bool)

(declare-fun c!744330 () Bool)

(assert (=> bm!304366 (= c!744331 c!744330)))

(declare-fun b!4376937 () Bool)

(assert (=> b!4376937 (= e!2724450 (getKeysList!167 (toList!3130 lt!1586773)))))

(declare-fun b!4376938 () Bool)

(assert (=> b!4376938 (= e!2724451 e!2724453)))

(declare-fun c!744329 () Bool)

(assert (=> b!4376938 (= c!744329 call!304371)))

(declare-fun b!4376939 () Bool)

(assert (=> b!4376939 (= e!2724450 (keys!16659 lt!1586773))))

(declare-fun d!1302664 () Bool)

(declare-fun e!2724449 () Bool)

(assert (=> d!1302664 e!2724449))

(declare-fun res!1802186 () Bool)

(assert (=> d!1302664 (=> res!1802186 e!2724449)))

(assert (=> d!1302664 (= res!1802186 e!2724452)))

(declare-fun res!1802187 () Bool)

(assert (=> d!1302664 (=> (not res!1802187) (not e!2724452))))

(declare-fun lt!1587549 () Bool)

(assert (=> d!1302664 (= res!1802187 (not lt!1587549))))

(declare-fun lt!1587546 () Bool)

(assert (=> d!1302664 (= lt!1587549 lt!1587546)))

(declare-fun lt!1587548 () Unit!74656)

(assert (=> d!1302664 (= lt!1587548 e!2724451)))

(assert (=> d!1302664 (= c!744330 lt!1587546)))

(assert (=> d!1302664 (= lt!1587546 (containsKey!839 (toList!3130 lt!1586773) (_1!27625 (h!54733 lt!1586456))))))

(assert (=> d!1302664 (= (contains!11461 lt!1586773 (_1!27625 (h!54733 lt!1586456))) lt!1587549)))

(declare-fun b!4376940 () Bool)

(declare-fun e!2724454 () Bool)

(assert (=> b!4376940 (= e!2724454 (contains!11467 (keys!16659 lt!1586773) (_1!27625 (h!54733 lt!1586456))))))

(declare-fun b!4376941 () Bool)

(assert (=> b!4376941 false))

(declare-fun lt!1587551 () Unit!74656)

(declare-fun lt!1587547 () Unit!74656)

(assert (=> b!4376941 (= lt!1587551 lt!1587547)))

(assert (=> b!4376941 (containsKey!839 (toList!3130 lt!1586773) (_1!27625 (h!54733 lt!1586456)))))

(assert (=> b!4376941 (= lt!1587547 (lemmaInGetKeysListThenContainsKey!165 (toList!3130 lt!1586773) (_1!27625 (h!54733 lt!1586456))))))

(declare-fun Unit!74913 () Unit!74656)

(assert (=> b!4376941 (= e!2724453 Unit!74913)))

(declare-fun b!4376942 () Bool)

(assert (=> b!4376942 (= e!2724449 e!2724454)))

(declare-fun res!1802188 () Bool)

(assert (=> b!4376942 (=> (not res!1802188) (not e!2724454))))

(assert (=> b!4376942 (= res!1802188 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586773) (_1!27625 (h!54733 lt!1586456)))))))

(assert (= (and d!1302664 c!744330) b!4376935))

(assert (= (and d!1302664 (not c!744330)) b!4376938))

(assert (= (and b!4376938 c!744329) b!4376941))

(assert (= (and b!4376938 (not c!744329)) b!4376934))

(assert (= (or b!4376935 b!4376938) bm!304366))

(assert (= (and bm!304366 c!744331) b!4376937))

(assert (= (and bm!304366 (not c!744331)) b!4376939))

(assert (= (and d!1302664 res!1802187) b!4376936))

(assert (= (and d!1302664 (not res!1802186)) b!4376942))

(assert (= (and b!4376942 res!1802188) b!4376940))

(declare-fun m!5011127 () Bool)

(assert (=> b!4376935 m!5011127))

(declare-fun m!5011129 () Bool)

(assert (=> b!4376935 m!5011129))

(assert (=> b!4376935 m!5011129))

(declare-fun m!5011131 () Bool)

(assert (=> b!4376935 m!5011131))

(declare-fun m!5011133 () Bool)

(assert (=> b!4376935 m!5011133))

(declare-fun m!5011135 () Bool)

(assert (=> bm!304366 m!5011135))

(assert (=> b!4376942 m!5011129))

(assert (=> b!4376942 m!5011129))

(assert (=> b!4376942 m!5011131))

(declare-fun m!5011137 () Bool)

(assert (=> b!4376939 m!5011137))

(assert (=> b!4376940 m!5011137))

(assert (=> b!4376940 m!5011137))

(declare-fun m!5011139 () Bool)

(assert (=> b!4376940 m!5011139))

(declare-fun m!5011141 () Bool)

(assert (=> d!1302664 m!5011141))

(declare-fun m!5011143 () Bool)

(assert (=> b!4376937 m!5011143))

(assert (=> b!4376941 m!5011141))

(declare-fun m!5011145 () Bool)

(assert (=> b!4376941 m!5011145))

(assert (=> b!4376936 m!5011137))

(assert (=> b!4376936 m!5011137))

(assert (=> b!4376936 m!5011139))

(assert (=> b!4375992 d!1302664))

(declare-fun bs!659345 () Bool)

(declare-fun b!4376946 () Bool)

(assert (= bs!659345 (and b!4376946 d!1302320)))

(declare-fun lambda!144839 () Int)

(assert (=> bs!659345 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587057) (= lambda!144839 lambda!144743))))

(declare-fun bs!659346 () Bool)

(assert (= bs!659346 (and b!4376946 b!4376000)))

(assert (=> bs!659346 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144839 lambda!144703))))

(declare-fun bs!659347 () Bool)

(assert (= bs!659347 (and b!4376946 d!1302208)))

(assert (=> bs!659347 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586829) (= lambda!144839 lambda!144710))))

(declare-fun bs!659348 () Bool)

(assert (= bs!659348 (and b!4376946 b!4376001)))

(assert (=> bs!659348 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586808) (= lambda!144839 lambda!144705))))

(declare-fun bs!659349 () Bool)

(assert (= bs!659349 (and b!4376946 d!1302554)))

(assert (=> bs!659349 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 lt!1586455)) (= lambda!144839 lambda!144819))))

(declare-fun bs!659350 () Bool)

(assert (= bs!659350 (and b!4376946 d!1302214)))

(assert (=> bs!659350 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586863) (= lambda!144839 lambda!144715))))

(declare-fun bs!659351 () Bool)

(assert (= bs!659351 (and b!4376946 b!4376019)))

(assert (=> bs!659351 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586866) (= lambda!144839 lambda!144714))))

(declare-fun bs!659352 () Bool)

(assert (= bs!659352 (and b!4376946 b!4375992)))

(assert (=> bs!659352 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144839 lambda!144700))))

(declare-fun bs!659353 () Bool)

(assert (= bs!659353 (and b!4376946 d!1302364)))

(assert (=> bs!659353 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587151) (= lambda!144839 lambda!144764))))

(declare-fun bs!659354 () Bool)

(assert (= bs!659354 (and b!4376946 b!4376351)))

(assert (=> bs!659354 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144839 lambda!144756))))

(declare-fun bs!659355 () Bool)

(assert (= bs!659355 (and b!4376946 b!4376448)))

(assert (=> bs!659355 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144839 lambda!144769))))

(assert (=> bs!659348 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144839 lambda!144704))))

(declare-fun bs!659356 () Bool)

(assert (= bs!659356 (and b!4376946 b!4376255)))

(assert (=> bs!659356 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144839 lambda!144741))))

(assert (=> bs!659351 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144839 lambda!144713))))

(declare-fun bs!659357 () Bool)

(assert (= bs!659357 (and b!4376946 b!4376449)))

(assert (=> bs!659357 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144839 lambda!144771))))

(declare-fun bs!659358 () Bool)

(assert (= bs!659358 (and b!4376946 b!4376151)))

(assert (=> bs!659358 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586965) (= lambda!144839 lambda!144733))))

(assert (=> bs!659358 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144839 lambda!144732))))

(declare-fun bs!659359 () Bool)

(assert (= bs!659359 (and b!4376946 d!1302220)))

(assert (=> bs!659359 (not (= lambda!144839 lambda!144717))))

(declare-fun bs!659360 () Bool)

(assert (= bs!659360 (and b!4376946 b!4376770)))

(assert (=> bs!659360 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587427) (= lambda!144839 lambda!144826))))

(declare-fun bs!659361 () Bool)

(assert (= bs!659361 (and b!4376946 b!4376769)))

(assert (=> bs!659361 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144839 lambda!144822))))

(declare-fun bs!659362 () Bool)

(assert (= bs!659362 (and b!4376946 d!1302282)))

(assert (=> bs!659362 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586962) (= lambda!144839 lambda!144734))))

(declare-fun bs!659363 () Bool)

(assert (= bs!659363 (and b!4376946 b!4376254)))

(assert (=> bs!659363 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144839 lambda!144740))))

(declare-fun bs!659364 () Bool)

(assert (= bs!659364 (and b!4376946 d!1302202)))

(assert (=> bs!659364 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586805) (= lambda!144839 lambda!144706))))

(declare-fun bs!659365 () Bool)

(assert (= bs!659365 (and b!4376946 d!1302408)))

(assert (=> bs!659365 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587232) (= lambda!144839 lambda!144774))))

(declare-fun bs!659366 () Bool)

(assert (= bs!659366 (and b!4376946 b!4376352)))

(assert (=> bs!659366 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587154) (= lambda!144839 lambda!144763))))

(declare-fun bs!659367 () Bool)

(assert (= bs!659367 (and b!4376946 d!1302330)))

(assert (=> bs!659367 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586832) (= lambda!144839 lambda!144749))))

(declare-fun bs!659368 () Bool)

(assert (= bs!659368 (and b!4376946 d!1302304)))

(assert (=> bs!659368 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586995) (= lambda!144839 lambda!144739))))

(assert (=> bs!659352 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586783) (= lambda!144839 lambda!144701))))

(declare-fun bs!659369 () Bool)

(assert (= bs!659369 (and b!4376946 d!1302152)))

(assert (=> bs!659369 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586780) (= lambda!144839 lambda!144702))))

(declare-fun bs!659370 () Bool)

(assert (= bs!659370 (and b!4376946 d!1302118)))

(assert (=> bs!659370 (not (= lambda!144839 lambda!144613))))

(assert (=> bs!659366 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144839 lambda!144759))))

(declare-fun bs!659371 () Bool)

(assert (= bs!659371 (and b!4376946 d!1302662)))

(assert (=> bs!659371 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586783) (= lambda!144839 lambda!144836))))

(declare-fun bs!659372 () Bool)

(assert (= bs!659372 (and b!4376946 b!4376005)))

(assert (=> bs!659372 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 lt!1586455)) (= lambda!144839 lambda!144707))))

(declare-fun bs!659373 () Bool)

(assert (= bs!659373 (and b!4376946 b!4376018)))

(assert (=> bs!659373 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144839 lambda!144712))))

(declare-fun bs!659374 () Bool)

(assert (= bs!659374 (and b!4376946 d!1302348)))

(assert (=> bs!659374 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144839 lambda!144755))))

(declare-fun bs!659375 () Bool)

(assert (= bs!659375 (and b!4376946 b!4376006)))

(assert (=> bs!659375 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 lt!1586455)) (= lambda!144839 lambda!144708))))

(declare-fun bs!659376 () Bool)

(assert (= bs!659376 (and b!4376946 b!4375991)))

(assert (=> bs!659376 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144839 lambda!144699))))

(declare-fun bs!659377 () Bool)

(assert (= bs!659377 (and b!4376946 b!4376193)))

(assert (=> bs!659377 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144839 lambda!144737))))

(declare-fun bs!659378 () Bool)

(assert (= bs!659378 (and b!4376946 d!1302400)))

(assert (=> bs!659378 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586808) (= lambda!144839 lambda!144766))))

(assert (=> bs!659356 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587060) (= lambda!144839 lambda!144742))))

(declare-fun bs!659379 () Bool)

(assert (= bs!659379 (and b!4376946 b!4376192)))

(assert (=> bs!659379 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144839 lambda!144736))))

(assert (=> bs!659375 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586832) (= lambda!144839 lambda!144709))))

(assert (=> bs!659360 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144839 lambda!144824))))

(declare-fun bs!659380 () Bool)

(assert (= bs!659380 (and b!4376946 b!4376150)))

(assert (=> bs!659380 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144839 lambda!144731))))

(assert (=> bs!659357 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587235) (= lambda!144839 lambda!144773))))

(declare-fun bs!659381 () Bool)

(assert (= bs!659381 (and b!4376946 d!1302564)))

(assert (=> bs!659381 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587424) (= lambda!144839 lambda!144827))))

(assert (=> bs!659377 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586998) (= lambda!144839 lambda!144738))))

(assert (=> b!4376946 true))

(declare-fun bs!659382 () Bool)

(declare-fun b!4376947 () Bool)

(assert (= bs!659382 (and b!4376947 d!1302320)))

(declare-fun lambda!144840 () Int)

(assert (=> bs!659382 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587057) (= lambda!144840 lambda!144743))))

(declare-fun bs!659383 () Bool)

(assert (= bs!659383 (and b!4376947 b!4376000)))

(assert (=> bs!659383 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144840 lambda!144703))))

(declare-fun bs!659385 () Bool)

(assert (= bs!659385 (and b!4376947 d!1302208)))

(assert (=> bs!659385 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586829) (= lambda!144840 lambda!144710))))

(declare-fun bs!659387 () Bool)

(assert (= bs!659387 (and b!4376947 b!4376001)))

(assert (=> bs!659387 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586808) (= lambda!144840 lambda!144705))))

(declare-fun bs!659388 () Bool)

(assert (= bs!659388 (and b!4376947 b!4376946)))

(assert (=> bs!659388 (= lambda!144840 lambda!144839)))

(declare-fun bs!659390 () Bool)

(assert (= bs!659390 (and b!4376947 d!1302554)))

(assert (=> bs!659390 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 lt!1586455)) (= lambda!144840 lambda!144819))))

(declare-fun bs!659392 () Bool)

(assert (= bs!659392 (and b!4376947 d!1302214)))

(assert (=> bs!659392 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586863) (= lambda!144840 lambda!144715))))

(declare-fun bs!659395 () Bool)

(assert (= bs!659395 (and b!4376947 b!4376019)))

(assert (=> bs!659395 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586866) (= lambda!144840 lambda!144714))))

(declare-fun bs!659397 () Bool)

(assert (= bs!659397 (and b!4376947 b!4375992)))

(assert (=> bs!659397 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144840 lambda!144700))))

(declare-fun bs!659399 () Bool)

(assert (= bs!659399 (and b!4376947 d!1302364)))

(assert (=> bs!659399 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587151) (= lambda!144840 lambda!144764))))

(declare-fun bs!659401 () Bool)

(assert (= bs!659401 (and b!4376947 b!4376351)))

(assert (=> bs!659401 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144840 lambda!144756))))

(declare-fun bs!659403 () Bool)

(assert (= bs!659403 (and b!4376947 b!4376448)))

(assert (=> bs!659403 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144840 lambda!144769))))

(assert (=> bs!659387 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144840 lambda!144704))))

(declare-fun bs!659406 () Bool)

(assert (= bs!659406 (and b!4376947 b!4376255)))

(assert (=> bs!659406 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144840 lambda!144741))))

(assert (=> bs!659395 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144840 lambda!144713))))

(declare-fun bs!659408 () Bool)

(assert (= bs!659408 (and b!4376947 b!4376449)))

(assert (=> bs!659408 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144840 lambda!144771))))

(declare-fun bs!659409 () Bool)

(assert (= bs!659409 (and b!4376947 b!4376151)))

(assert (=> bs!659409 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586965) (= lambda!144840 lambda!144733))))

(assert (=> bs!659409 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144840 lambda!144732))))

(declare-fun bs!659412 () Bool)

(assert (= bs!659412 (and b!4376947 d!1302220)))

(assert (=> bs!659412 (not (= lambda!144840 lambda!144717))))

(declare-fun bs!659414 () Bool)

(assert (= bs!659414 (and b!4376947 b!4376770)))

(assert (=> bs!659414 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587427) (= lambda!144840 lambda!144826))))

(declare-fun bs!659416 () Bool)

(assert (= bs!659416 (and b!4376947 b!4376769)))

(assert (=> bs!659416 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144840 lambda!144822))))

(declare-fun bs!659417 () Bool)

(assert (= bs!659417 (and b!4376947 d!1302282)))

(assert (=> bs!659417 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586962) (= lambda!144840 lambda!144734))))

(declare-fun bs!659419 () Bool)

(assert (= bs!659419 (and b!4376947 b!4376254)))

(assert (=> bs!659419 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144840 lambda!144740))))

(declare-fun bs!659421 () Bool)

(assert (= bs!659421 (and b!4376947 d!1302202)))

(assert (=> bs!659421 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586805) (= lambda!144840 lambda!144706))))

(declare-fun bs!659422 () Bool)

(assert (= bs!659422 (and b!4376947 d!1302408)))

(assert (=> bs!659422 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587232) (= lambda!144840 lambda!144774))))

(declare-fun bs!659424 () Bool)

(assert (= bs!659424 (and b!4376947 b!4376352)))

(assert (=> bs!659424 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587154) (= lambda!144840 lambda!144763))))

(declare-fun bs!659425 () Bool)

(assert (= bs!659425 (and b!4376947 d!1302330)))

(assert (=> bs!659425 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586832) (= lambda!144840 lambda!144749))))

(declare-fun bs!659427 () Bool)

(assert (= bs!659427 (and b!4376947 d!1302304)))

(assert (=> bs!659427 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586995) (= lambda!144840 lambda!144739))))

(assert (=> bs!659397 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586783) (= lambda!144840 lambda!144701))))

(declare-fun bs!659429 () Bool)

(assert (= bs!659429 (and b!4376947 d!1302152)))

(assert (=> bs!659429 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586780) (= lambda!144840 lambda!144702))))

(declare-fun bs!659431 () Bool)

(assert (= bs!659431 (and b!4376947 d!1302118)))

(assert (=> bs!659431 (not (= lambda!144840 lambda!144613))))

(assert (=> bs!659424 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144840 lambda!144759))))

(declare-fun bs!659433 () Bool)

(assert (= bs!659433 (and b!4376947 d!1302662)))

(assert (=> bs!659433 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586783) (= lambda!144840 lambda!144836))))

(declare-fun bs!659434 () Bool)

(assert (= bs!659434 (and b!4376947 b!4376005)))

(assert (=> bs!659434 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 lt!1586455)) (= lambda!144840 lambda!144707))))

(declare-fun bs!659436 () Bool)

(assert (= bs!659436 (and b!4376947 b!4376018)))

(assert (=> bs!659436 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144840 lambda!144712))))

(declare-fun bs!659438 () Bool)

(assert (= bs!659438 (and b!4376947 d!1302348)))

(assert (=> bs!659438 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144840 lambda!144755))))

(declare-fun bs!659440 () Bool)

(assert (= bs!659440 (and b!4376947 b!4376006)))

(assert (=> bs!659440 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (+!778 lt!1586446 lt!1586455)) (= lambda!144840 lambda!144708))))

(declare-fun bs!659442 () Bool)

(assert (= bs!659442 (and b!4376947 b!4375991)))

(assert (=> bs!659442 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586446) (= lambda!144840 lambda!144699))))

(declare-fun bs!659444 () Bool)

(assert (= bs!659444 (and b!4376947 b!4376193)))

(assert (=> bs!659444 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144840 lambda!144737))))

(declare-fun bs!659446 () Bool)

(assert (= bs!659446 (and b!4376947 d!1302400)))

(assert (=> bs!659446 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586808) (= lambda!144840 lambda!144766))))

(assert (=> bs!659406 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587060) (= lambda!144840 lambda!144742))))

(declare-fun bs!659449 () Bool)

(assert (= bs!659449 (and b!4376947 b!4376192)))

(assert (=> bs!659449 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144840 lambda!144736))))

(assert (=> bs!659440 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586832) (= lambda!144840 lambda!144709))))

(assert (=> bs!659414 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144840 lambda!144824))))

(declare-fun bs!659452 () Bool)

(assert (= bs!659452 (and b!4376947 b!4376150)))

(assert (=> bs!659452 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144840 lambda!144731))))

(assert (=> bs!659408 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587235) (= lambda!144840 lambda!144773))))

(declare-fun bs!659454 () Bool)

(assert (= bs!659454 (and b!4376947 d!1302564)))

(assert (=> bs!659454 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587424) (= lambda!144840 lambda!144827))))

(assert (=> bs!659444 (= (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1586998) (= lambda!144840 lambda!144738))))

(assert (=> b!4376947 true))

(declare-fun lambda!144842 () Int)

(declare-fun lt!1587571 () ListMap!2373)

(assert (=> bs!659382 (= (= lt!1587571 lt!1587057) (= lambda!144842 lambda!144743))))

(assert (=> bs!659383 (= (= lt!1587571 lt!1586446) (= lambda!144842 lambda!144703))))

(assert (=> bs!659385 (= (= lt!1587571 lt!1586829) (= lambda!144842 lambda!144710))))

(assert (=> bs!659387 (= (= lt!1587571 lt!1586808) (= lambda!144842 lambda!144705))))

(assert (=> bs!659388 (= (= lt!1587571 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144842 lambda!144839))))

(assert (=> bs!659390 (= (= lt!1587571 (+!778 lt!1586446 lt!1586455)) (= lambda!144842 lambda!144819))))

(assert (=> bs!659392 (= (= lt!1587571 lt!1586863) (= lambda!144842 lambda!144715))))

(assert (=> bs!659395 (= (= lt!1587571 lt!1586866) (= lambda!144842 lambda!144714))))

(assert (=> bs!659399 (= (= lt!1587571 lt!1587151) (= lambda!144842 lambda!144764))))

(assert (=> bs!659401 (= (= lt!1587571 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144842 lambda!144756))))

(assert (=> bs!659403 (= (= lt!1587571 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144842 lambda!144769))))

(assert (=> bs!659387 (= (= lt!1587571 lt!1586446) (= lambda!144842 lambda!144704))))

(assert (=> bs!659406 (= (= lt!1587571 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144842 lambda!144741))))

(assert (=> bs!659395 (= (= lt!1587571 lt!1586446) (= lambda!144842 lambda!144713))))

(assert (=> bs!659408 (= (= lt!1587571 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144842 lambda!144771))))

(assert (=> bs!659409 (= (= lt!1587571 lt!1586965) (= lambda!144842 lambda!144733))))

(assert (=> bs!659409 (= (= lt!1587571 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144842 lambda!144732))))

(assert (=> bs!659412 (not (= lambda!144842 lambda!144717))))

(assert (=> bs!659414 (= (= lt!1587571 lt!1587427) (= lambda!144842 lambda!144826))))

(assert (=> bs!659416 (= (= lt!1587571 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144842 lambda!144822))))

(assert (=> bs!659417 (= (= lt!1587571 lt!1586962) (= lambda!144842 lambda!144734))))

(assert (=> bs!659419 (= (= lt!1587571 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144842 lambda!144740))))

(assert (=> bs!659421 (= (= lt!1587571 lt!1586805) (= lambda!144842 lambda!144706))))

(assert (=> bs!659422 (= (= lt!1587571 lt!1587232) (= lambda!144842 lambda!144774))))

(assert (=> bs!659424 (= (= lt!1587571 lt!1587154) (= lambda!144842 lambda!144763))))

(assert (=> bs!659425 (= (= lt!1587571 lt!1586832) (= lambda!144842 lambda!144749))))

(assert (=> bs!659427 (= (= lt!1587571 lt!1586995) (= lambda!144842 lambda!144739))))

(assert (=> bs!659397 (= (= lt!1587571 lt!1586783) (= lambda!144842 lambda!144701))))

(assert (=> bs!659429 (= (= lt!1587571 lt!1586780) (= lambda!144842 lambda!144702))))

(assert (=> bs!659431 (not (= lambda!144842 lambda!144613))))

(assert (=> bs!659424 (= (= lt!1587571 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144842 lambda!144759))))

(assert (=> bs!659433 (= (= lt!1587571 lt!1586783) (= lambda!144842 lambda!144836))))

(assert (=> bs!659434 (= (= lt!1587571 (+!778 lt!1586446 lt!1586455)) (= lambda!144842 lambda!144707))))

(assert (=> bs!659436 (= (= lt!1587571 lt!1586446) (= lambda!144842 lambda!144712))))

(assert (=> bs!659438 (= (= lt!1587571 lt!1586446) (= lambda!144842 lambda!144755))))

(assert (=> bs!659440 (= (= lt!1587571 (+!778 lt!1586446 lt!1586455)) (= lambda!144842 lambda!144708))))

(assert (=> bs!659442 (= (= lt!1587571 lt!1586446) (= lambda!144842 lambda!144699))))

(assert (=> bs!659444 (= (= lt!1587571 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144842 lambda!144737))))

(assert (=> bs!659446 (= (= lt!1587571 lt!1586808) (= lambda!144842 lambda!144766))))

(assert (=> bs!659406 (= (= lt!1587571 lt!1587060) (= lambda!144842 lambda!144742))))

(assert (=> bs!659449 (= (= lt!1587571 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144842 lambda!144736))))

(assert (=> bs!659440 (= (= lt!1587571 lt!1586832) (= lambda!144842 lambda!144709))))

(assert (=> bs!659414 (= (= lt!1587571 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144842 lambda!144824))))

(assert (=> bs!659452 (= (= lt!1587571 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144842 lambda!144731))))

(assert (=> bs!659397 (= (= lt!1587571 lt!1586446) (= lambda!144842 lambda!144700))))

(assert (=> b!4376947 (= (= lt!1587571 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144842 lambda!144840))))

(assert (=> bs!659408 (= (= lt!1587571 lt!1587235) (= lambda!144842 lambda!144773))))

(assert (=> bs!659454 (= (= lt!1587571 lt!1587424) (= lambda!144842 lambda!144827))))

(assert (=> bs!659444 (= (= lt!1587571 lt!1586998) (= lambda!144842 lambda!144738))))

(assert (=> b!4376947 true))

(declare-fun bs!659461 () Bool)

(declare-fun d!1302666 () Bool)

(assert (= bs!659461 (and d!1302666 d!1302320)))

(declare-fun lt!1587568 () ListMap!2373)

(declare-fun lambda!144843 () Int)

(assert (=> bs!659461 (= (= lt!1587568 lt!1587057) (= lambda!144843 lambda!144743))))

(declare-fun bs!659462 () Bool)

(assert (= bs!659462 (and d!1302666 b!4376000)))

(assert (=> bs!659462 (= (= lt!1587568 lt!1586446) (= lambda!144843 lambda!144703))))

(declare-fun bs!659463 () Bool)

(assert (= bs!659463 (and d!1302666 d!1302208)))

(assert (=> bs!659463 (= (= lt!1587568 lt!1586829) (= lambda!144843 lambda!144710))))

(declare-fun bs!659464 () Bool)

(assert (= bs!659464 (and d!1302666 b!4376001)))

(assert (=> bs!659464 (= (= lt!1587568 lt!1586808) (= lambda!144843 lambda!144705))))

(declare-fun bs!659465 () Bool)

(assert (= bs!659465 (and d!1302666 b!4376946)))

(assert (=> bs!659465 (= (= lt!1587568 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144843 lambda!144839))))

(declare-fun bs!659466 () Bool)

(assert (= bs!659466 (and d!1302666 d!1302554)))

(assert (=> bs!659466 (= (= lt!1587568 (+!778 lt!1586446 lt!1586455)) (= lambda!144843 lambda!144819))))

(declare-fun bs!659467 () Bool)

(assert (= bs!659467 (and d!1302666 d!1302214)))

(assert (=> bs!659467 (= (= lt!1587568 lt!1586863) (= lambda!144843 lambda!144715))))

(declare-fun bs!659468 () Bool)

(assert (= bs!659468 (and d!1302666 b!4376019)))

(assert (=> bs!659468 (= (= lt!1587568 lt!1586866) (= lambda!144843 lambda!144714))))

(declare-fun bs!659469 () Bool)

(assert (= bs!659469 (and d!1302666 d!1302364)))

(assert (=> bs!659469 (= (= lt!1587568 lt!1587151) (= lambda!144843 lambda!144764))))

(declare-fun bs!659470 () Bool)

(assert (= bs!659470 (and d!1302666 b!4376947)))

(assert (=> bs!659470 (= (= lt!1587568 lt!1587571) (= lambda!144843 lambda!144842))))

(declare-fun bs!659471 () Bool)

(assert (= bs!659471 (and d!1302666 b!4376351)))

(assert (=> bs!659471 (= (= lt!1587568 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144843 lambda!144756))))

(declare-fun bs!659472 () Bool)

(assert (= bs!659472 (and d!1302666 b!4376448)))

(assert (=> bs!659472 (= (= lt!1587568 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144843 lambda!144769))))

(assert (=> bs!659464 (= (= lt!1587568 lt!1586446) (= lambda!144843 lambda!144704))))

(declare-fun bs!659473 () Bool)

(assert (= bs!659473 (and d!1302666 b!4376255)))

(assert (=> bs!659473 (= (= lt!1587568 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144843 lambda!144741))))

(assert (=> bs!659468 (= (= lt!1587568 lt!1586446) (= lambda!144843 lambda!144713))))

(declare-fun bs!659474 () Bool)

(assert (= bs!659474 (and d!1302666 b!4376449)))

(assert (=> bs!659474 (= (= lt!1587568 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144843 lambda!144771))))

(declare-fun bs!659475 () Bool)

(assert (= bs!659475 (and d!1302666 b!4376151)))

(assert (=> bs!659475 (= (= lt!1587568 lt!1586965) (= lambda!144843 lambda!144733))))

(assert (=> bs!659475 (= (= lt!1587568 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144843 lambda!144732))))

(declare-fun bs!659476 () Bool)

(assert (= bs!659476 (and d!1302666 d!1302220)))

(assert (=> bs!659476 (not (= lambda!144843 lambda!144717))))

(declare-fun bs!659477 () Bool)

(assert (= bs!659477 (and d!1302666 b!4376770)))

(assert (=> bs!659477 (= (= lt!1587568 lt!1587427) (= lambda!144843 lambda!144826))))

(declare-fun bs!659478 () Bool)

(assert (= bs!659478 (and d!1302666 b!4376769)))

(assert (=> bs!659478 (= (= lt!1587568 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144843 lambda!144822))))

(declare-fun bs!659479 () Bool)

(assert (= bs!659479 (and d!1302666 d!1302282)))

(assert (=> bs!659479 (= (= lt!1587568 lt!1586962) (= lambda!144843 lambda!144734))))

(declare-fun bs!659480 () Bool)

(assert (= bs!659480 (and d!1302666 b!4376254)))

(assert (=> bs!659480 (= (= lt!1587568 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144843 lambda!144740))))

(declare-fun bs!659481 () Bool)

(assert (= bs!659481 (and d!1302666 d!1302202)))

(assert (=> bs!659481 (= (= lt!1587568 lt!1586805) (= lambda!144843 lambda!144706))))

(declare-fun bs!659482 () Bool)

(assert (= bs!659482 (and d!1302666 d!1302408)))

(assert (=> bs!659482 (= (= lt!1587568 lt!1587232) (= lambda!144843 lambda!144774))))

(declare-fun bs!659483 () Bool)

(assert (= bs!659483 (and d!1302666 b!4376352)))

(assert (=> bs!659483 (= (= lt!1587568 lt!1587154) (= lambda!144843 lambda!144763))))

(declare-fun bs!659484 () Bool)

(assert (= bs!659484 (and d!1302666 d!1302330)))

(assert (=> bs!659484 (= (= lt!1587568 lt!1586832) (= lambda!144843 lambda!144749))))

(declare-fun bs!659485 () Bool)

(assert (= bs!659485 (and d!1302666 d!1302304)))

(assert (=> bs!659485 (= (= lt!1587568 lt!1586995) (= lambda!144843 lambda!144739))))

(declare-fun bs!659486 () Bool)

(assert (= bs!659486 (and d!1302666 b!4375992)))

(assert (=> bs!659486 (= (= lt!1587568 lt!1586783) (= lambda!144843 lambda!144701))))

(declare-fun bs!659487 () Bool)

(assert (= bs!659487 (and d!1302666 d!1302152)))

(assert (=> bs!659487 (= (= lt!1587568 lt!1586780) (= lambda!144843 lambda!144702))))

(declare-fun bs!659488 () Bool)

(assert (= bs!659488 (and d!1302666 d!1302118)))

(assert (=> bs!659488 (not (= lambda!144843 lambda!144613))))

(assert (=> bs!659483 (= (= lt!1587568 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144843 lambda!144759))))

(declare-fun bs!659489 () Bool)

(assert (= bs!659489 (and d!1302666 d!1302662)))

(assert (=> bs!659489 (= (= lt!1587568 lt!1586783) (= lambda!144843 lambda!144836))))

(declare-fun bs!659490 () Bool)

(assert (= bs!659490 (and d!1302666 b!4376005)))

(assert (=> bs!659490 (= (= lt!1587568 (+!778 lt!1586446 lt!1586455)) (= lambda!144843 lambda!144707))))

(declare-fun bs!659491 () Bool)

(assert (= bs!659491 (and d!1302666 b!4376018)))

(assert (=> bs!659491 (= (= lt!1587568 lt!1586446) (= lambda!144843 lambda!144712))))

(declare-fun bs!659492 () Bool)

(assert (= bs!659492 (and d!1302666 d!1302348)))

(assert (=> bs!659492 (= (= lt!1587568 lt!1586446) (= lambda!144843 lambda!144755))))

(declare-fun bs!659493 () Bool)

(assert (= bs!659493 (and d!1302666 b!4376006)))

(assert (=> bs!659493 (= (= lt!1587568 (+!778 lt!1586446 lt!1586455)) (= lambda!144843 lambda!144708))))

(declare-fun bs!659494 () Bool)

(assert (= bs!659494 (and d!1302666 b!4375991)))

(assert (=> bs!659494 (= (= lt!1587568 lt!1586446) (= lambda!144843 lambda!144699))))

(declare-fun bs!659495 () Bool)

(assert (= bs!659495 (and d!1302666 b!4376193)))

(assert (=> bs!659495 (= (= lt!1587568 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144843 lambda!144737))))

(declare-fun bs!659496 () Bool)

(assert (= bs!659496 (and d!1302666 d!1302400)))

(assert (=> bs!659496 (= (= lt!1587568 lt!1586808) (= lambda!144843 lambda!144766))))

(assert (=> bs!659473 (= (= lt!1587568 lt!1587060) (= lambda!144843 lambda!144742))))

(declare-fun bs!659497 () Bool)

(assert (= bs!659497 (and d!1302666 b!4376192)))

(assert (=> bs!659497 (= (= lt!1587568 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144843 lambda!144736))))

(assert (=> bs!659493 (= (= lt!1587568 lt!1586832) (= lambda!144843 lambda!144709))))

(assert (=> bs!659477 (= (= lt!1587568 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144843 lambda!144824))))

(declare-fun bs!659498 () Bool)

(assert (= bs!659498 (and d!1302666 b!4376150)))

(assert (=> bs!659498 (= (= lt!1587568 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144843 lambda!144731))))

(assert (=> bs!659486 (= (= lt!1587568 lt!1586446) (= lambda!144843 lambda!144700))))

(assert (=> bs!659470 (= (= lt!1587568 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144843 lambda!144840))))

(assert (=> bs!659474 (= (= lt!1587568 lt!1587235) (= lambda!144843 lambda!144773))))

(declare-fun bs!659499 () Bool)

(assert (= bs!659499 (and d!1302666 d!1302564)))

(assert (=> bs!659499 (= (= lt!1587568 lt!1587424) (= lambda!144843 lambda!144827))))

(assert (=> bs!659495 (= (= lt!1587568 lt!1586998) (= lambda!144843 lambda!144738))))

(assert (=> d!1302666 true))

(declare-fun call!304373 () Bool)

(declare-fun c!744332 () Bool)

(declare-fun bm!304367 () Bool)

(assert (=> bm!304367 (= call!304373 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 lt!1586456))) (ite c!744332 lambda!144839 lambda!144840)))))

(declare-fun b!4376943 () Bool)

(declare-fun e!2724456 () Bool)

(assert (=> b!4376943 (= e!2724456 (invariantList!719 (toList!3130 lt!1587568)))))

(declare-fun b!4376944 () Bool)

(declare-fun res!1802190 () Bool)

(assert (=> b!4376944 (=> (not res!1802190) (not e!2724456))))

(assert (=> b!4376944 (= res!1802190 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 lt!1586456))) lambda!144843))))

(assert (=> d!1302666 e!2724456))

(declare-fun res!1802191 () Bool)

(assert (=> d!1302666 (=> (not res!1802191) (not e!2724456))))

(assert (=> d!1302666 (= res!1802191 (forall!9261 (t!356190 lt!1586456) lambda!144843))))

(declare-fun e!2724455 () ListMap!2373)

(assert (=> d!1302666 (= lt!1587568 e!2724455)))

(assert (=> d!1302666 (= c!744332 ((_ is Nil!49140) (t!356190 lt!1586456)))))

(assert (=> d!1302666 (noDuplicateKeys!573 (t!356190 lt!1586456))))

(assert (=> d!1302666 (= (addToMapMapFromBucket!254 (t!356190 lt!1586456) (+!778 lt!1586446 (h!54733 lt!1586456))) lt!1587568)))

(declare-fun call!304374 () Bool)

(declare-fun bm!304368 () Bool)

(assert (=> bm!304368 (= call!304374 (forall!9261 (ite c!744332 (toList!3130 (+!778 lt!1586446 (h!54733 lt!1586456))) (t!356190 lt!1586456)) (ite c!744332 lambda!144839 lambda!144842)))))

(declare-fun bm!304369 () Bool)

(declare-fun call!304372 () Unit!74656)

(assert (=> bm!304369 (= call!304372 (lemmaContainsAllItsOwnKeys!101 (+!778 lt!1586446 (h!54733 lt!1586456))))))

(declare-fun b!4376945 () Bool)

(declare-fun e!2724457 () Bool)

(assert (=> b!4376945 (= e!2724457 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 lt!1586456))) lambda!144842))))

(assert (=> b!4376946 (= e!2724455 (+!778 lt!1586446 (h!54733 lt!1586456)))))

(declare-fun lt!1587572 () Unit!74656)

(assert (=> b!4376946 (= lt!1587572 call!304372)))

(assert (=> b!4376946 call!304373))

(declare-fun lt!1587553 () Unit!74656)

(assert (=> b!4376946 (= lt!1587553 lt!1587572)))

(assert (=> b!4376946 call!304374))

(declare-fun lt!1587555 () Unit!74656)

(declare-fun Unit!74924 () Unit!74656)

(assert (=> b!4376946 (= lt!1587555 Unit!74924)))

(assert (=> b!4376947 (= e!2724455 lt!1587571)))

(declare-fun lt!1587561 () ListMap!2373)

(assert (=> b!4376947 (= lt!1587561 (+!778 (+!778 lt!1586446 (h!54733 lt!1586456)) (h!54733 (t!356190 lt!1586456))))))

(assert (=> b!4376947 (= lt!1587571 (addToMapMapFromBucket!254 (t!356190 (t!356190 lt!1586456)) (+!778 (+!778 lt!1586446 (h!54733 lt!1586456)) (h!54733 (t!356190 lt!1586456)))))))

(declare-fun lt!1587567 () Unit!74656)

(assert (=> b!4376947 (= lt!1587567 call!304372)))

(assert (=> b!4376947 call!304373))

(declare-fun lt!1587560 () Unit!74656)

(assert (=> b!4376947 (= lt!1587560 lt!1587567)))

(assert (=> b!4376947 (forall!9261 (toList!3130 lt!1587561) lambda!144842)))

(declare-fun lt!1587570 () Unit!74656)

(declare-fun Unit!74926 () Unit!74656)

(assert (=> b!4376947 (= lt!1587570 Unit!74926)))

(assert (=> b!4376947 (forall!9261 (t!356190 (t!356190 lt!1586456)) lambda!144842)))

(declare-fun lt!1587562 () Unit!74656)

(declare-fun Unit!74927 () Unit!74656)

(assert (=> b!4376947 (= lt!1587562 Unit!74927)))

(declare-fun lt!1587564 () Unit!74656)

(declare-fun Unit!74928 () Unit!74656)

(assert (=> b!4376947 (= lt!1587564 Unit!74928)))

(declare-fun lt!1587554 () Unit!74656)

(assert (=> b!4376947 (= lt!1587554 (forallContained!1899 (toList!3130 lt!1587561) lambda!144842 (h!54733 (t!356190 lt!1586456))))))

(assert (=> b!4376947 (contains!11461 lt!1587561 (_1!27625 (h!54733 (t!356190 lt!1586456))))))

(declare-fun lt!1587573 () Unit!74656)

(declare-fun Unit!74929 () Unit!74656)

(assert (=> b!4376947 (= lt!1587573 Unit!74929)))

(assert (=> b!4376947 (contains!11461 lt!1587571 (_1!27625 (h!54733 (t!356190 lt!1586456))))))

(declare-fun lt!1587559 () Unit!74656)

(declare-fun Unit!74930 () Unit!74656)

(assert (=> b!4376947 (= lt!1587559 Unit!74930)))

(assert (=> b!4376947 (forall!9261 (t!356190 lt!1586456) lambda!144842)))

(declare-fun lt!1587566 () Unit!74656)

(declare-fun Unit!74931 () Unit!74656)

(assert (=> b!4376947 (= lt!1587566 Unit!74931)))

(assert (=> b!4376947 (forall!9261 (toList!3130 lt!1587561) lambda!144842)))

(declare-fun lt!1587556 () Unit!74656)

(declare-fun Unit!74932 () Unit!74656)

(assert (=> b!4376947 (= lt!1587556 Unit!74932)))

(declare-fun lt!1587563 () Unit!74656)

(declare-fun Unit!74933 () Unit!74656)

(assert (=> b!4376947 (= lt!1587563 Unit!74933)))

(declare-fun lt!1587569 () Unit!74656)

(assert (=> b!4376947 (= lt!1587569 (addForallContainsKeyThenBeforeAdding!101 (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587571 (_1!27625 (h!54733 (t!356190 lt!1586456))) (_2!27625 (h!54733 (t!356190 lt!1586456)))))))

(assert (=> b!4376947 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 lt!1586456))) lambda!144842)))

(declare-fun lt!1587557 () Unit!74656)

(assert (=> b!4376947 (= lt!1587557 lt!1587569)))

(assert (=> b!4376947 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 lt!1586456))) lambda!144842)))

(declare-fun lt!1587558 () Unit!74656)

(declare-fun Unit!74934 () Unit!74656)

(assert (=> b!4376947 (= lt!1587558 Unit!74934)))

(declare-fun res!1802189 () Bool)

(assert (=> b!4376947 (= res!1802189 call!304374)))

(assert (=> b!4376947 (=> (not res!1802189) (not e!2724457))))

(assert (=> b!4376947 e!2724457))

(declare-fun lt!1587565 () Unit!74656)

(declare-fun Unit!74935 () Unit!74656)

(assert (=> b!4376947 (= lt!1587565 Unit!74935)))

(assert (= (and d!1302666 c!744332) b!4376946))

(assert (= (and d!1302666 (not c!744332)) b!4376947))

(assert (= (and b!4376947 res!1802189) b!4376945))

(assert (= (or b!4376946 b!4376947) bm!304369))

(assert (= (or b!4376946 b!4376947) bm!304367))

(assert (= (or b!4376946 b!4376947) bm!304368))

(assert (= (and d!1302666 res!1802191) b!4376944))

(assert (= (and b!4376944 res!1802190) b!4376943))

(declare-fun m!5011279 () Bool)

(assert (=> bm!304367 m!5011279))

(declare-fun m!5011283 () Bool)

(assert (=> b!4376945 m!5011283))

(declare-fun m!5011285 () Bool)

(assert (=> b!4376943 m!5011285))

(declare-fun m!5011287 () Bool)

(assert (=> b!4376944 m!5011287))

(declare-fun m!5011289 () Bool)

(assert (=> b!4376947 m!5011289))

(declare-fun m!5011291 () Bool)

(assert (=> b!4376947 m!5011291))

(declare-fun m!5011293 () Bool)

(assert (=> b!4376947 m!5011293))

(declare-fun m!5011295 () Bool)

(assert (=> b!4376947 m!5011295))

(declare-fun m!5011297 () Bool)

(assert (=> b!4376947 m!5011297))

(assert (=> b!4376947 m!5011283))

(assert (=> b!4376947 m!5011283))

(assert (=> b!4376947 m!5009273))

(declare-fun m!5011299 () Bool)

(assert (=> b!4376947 m!5011299))

(declare-fun m!5011301 () Bool)

(assert (=> b!4376947 m!5011301))

(assert (=> b!4376947 m!5011297))

(declare-fun m!5011303 () Bool)

(assert (=> b!4376947 m!5011303))

(assert (=> b!4376947 m!5009273))

(assert (=> b!4376947 m!5011293))

(declare-fun m!5011305 () Bool)

(assert (=> b!4376947 m!5011305))

(declare-fun m!5011307 () Bool)

(assert (=> d!1302666 m!5011307))

(declare-fun m!5011309 () Bool)

(assert (=> d!1302666 m!5011309))

(assert (=> bm!304369 m!5009273))

(declare-fun m!5011311 () Bool)

(assert (=> bm!304369 m!5011311))

(declare-fun m!5011313 () Bool)

(assert (=> bm!304368 m!5011313))

(assert (=> b!4375992 d!1302666))

(declare-fun b!4376996 () Bool)

(declare-fun e!2724498 () Unit!74656)

(declare-fun Unit!74936 () Unit!74656)

(assert (=> b!4376996 (= e!2724498 Unit!74936)))

(declare-fun b!4376997 () Bool)

(declare-fun e!2724496 () Unit!74656)

(declare-fun lt!1587630 () Unit!74656)

(assert (=> b!4376997 (= e!2724496 lt!1587630)))

(declare-fun lt!1587632 () Unit!74656)

(assert (=> b!4376997 (= lt!1587632 (lemmaContainsKeyImpliesGetValueByKeyDefined!449 (toList!3130 lt!1586783) (_1!27625 (h!54733 lt!1586456))))))

(assert (=> b!4376997 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586783) (_1!27625 (h!54733 lt!1586456))))))

(declare-fun lt!1587625 () Unit!74656)

(assert (=> b!4376997 (= lt!1587625 lt!1587632)))

(assert (=> b!4376997 (= lt!1587630 (lemmaInListThenGetKeysListContains!164 (toList!3130 lt!1586783) (_1!27625 (h!54733 lt!1586456))))))

(declare-fun call!304381 () Bool)

(assert (=> b!4376997 call!304381))

(declare-fun b!4376998 () Bool)

(declare-fun e!2724497 () Bool)

(assert (=> b!4376998 (= e!2724497 (not (contains!11467 (keys!16659 lt!1586783) (_1!27625 (h!54733 lt!1586456)))))))

(declare-fun bm!304376 () Bool)

(declare-fun e!2724495 () List!49267)

(assert (=> bm!304376 (= call!304381 (contains!11467 e!2724495 (_1!27625 (h!54733 lt!1586456))))))

(declare-fun c!744345 () Bool)

(declare-fun c!744344 () Bool)

(assert (=> bm!304376 (= c!744345 c!744344)))

(declare-fun b!4376999 () Bool)

(assert (=> b!4376999 (= e!2724495 (getKeysList!167 (toList!3130 lt!1586783)))))

(declare-fun b!4377000 () Bool)

(assert (=> b!4377000 (= e!2724496 e!2724498)))

(declare-fun c!744343 () Bool)

(assert (=> b!4377000 (= c!744343 call!304381)))

(declare-fun b!4377001 () Bool)

(assert (=> b!4377001 (= e!2724495 (keys!16659 lt!1586783))))

(declare-fun d!1302694 () Bool)

(declare-fun e!2724494 () Bool)

(assert (=> d!1302694 e!2724494))

(declare-fun res!1802220 () Bool)

(assert (=> d!1302694 (=> res!1802220 e!2724494)))

(assert (=> d!1302694 (= res!1802220 e!2724497)))

(declare-fun res!1802221 () Bool)

(assert (=> d!1302694 (=> (not res!1802221) (not e!2724497))))

(declare-fun lt!1587629 () Bool)

(assert (=> d!1302694 (= res!1802221 (not lt!1587629))))

(declare-fun lt!1587626 () Bool)

(assert (=> d!1302694 (= lt!1587629 lt!1587626)))

(declare-fun lt!1587628 () Unit!74656)

(assert (=> d!1302694 (= lt!1587628 e!2724496)))

(assert (=> d!1302694 (= c!744344 lt!1587626)))

(assert (=> d!1302694 (= lt!1587626 (containsKey!839 (toList!3130 lt!1586783) (_1!27625 (h!54733 lt!1586456))))))

(assert (=> d!1302694 (= (contains!11461 lt!1586783 (_1!27625 (h!54733 lt!1586456))) lt!1587629)))

(declare-fun b!4377002 () Bool)

(declare-fun e!2724499 () Bool)

(assert (=> b!4377002 (= e!2724499 (contains!11467 (keys!16659 lt!1586783) (_1!27625 (h!54733 lt!1586456))))))

(declare-fun b!4377003 () Bool)

(assert (=> b!4377003 false))

(declare-fun lt!1587631 () Unit!74656)

(declare-fun lt!1587627 () Unit!74656)

(assert (=> b!4377003 (= lt!1587631 lt!1587627)))

(assert (=> b!4377003 (containsKey!839 (toList!3130 lt!1586783) (_1!27625 (h!54733 lt!1586456)))))

(assert (=> b!4377003 (= lt!1587627 (lemmaInGetKeysListThenContainsKey!165 (toList!3130 lt!1586783) (_1!27625 (h!54733 lt!1586456))))))

(declare-fun Unit!74937 () Unit!74656)

(assert (=> b!4377003 (= e!2724498 Unit!74937)))

(declare-fun b!4377004 () Bool)

(assert (=> b!4377004 (= e!2724494 e!2724499)))

(declare-fun res!1802222 () Bool)

(assert (=> b!4377004 (=> (not res!1802222) (not e!2724499))))

(assert (=> b!4377004 (= res!1802222 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586783) (_1!27625 (h!54733 lt!1586456)))))))

(assert (= (and d!1302694 c!744344) b!4376997))

(assert (= (and d!1302694 (not c!744344)) b!4377000))

(assert (= (and b!4377000 c!744343) b!4377003))

(assert (= (and b!4377000 (not c!744343)) b!4376996))

(assert (= (or b!4376997 b!4377000) bm!304376))

(assert (= (and bm!304376 c!744345) b!4376999))

(assert (= (and bm!304376 (not c!744345)) b!4377001))

(assert (= (and d!1302694 res!1802221) b!4376998))

(assert (= (and d!1302694 (not res!1802220)) b!4377004))

(assert (= (and b!4377004 res!1802222) b!4377002))

(declare-fun m!5011315 () Bool)

(assert (=> b!4376997 m!5011315))

(declare-fun m!5011317 () Bool)

(assert (=> b!4376997 m!5011317))

(assert (=> b!4376997 m!5011317))

(declare-fun m!5011319 () Bool)

(assert (=> b!4376997 m!5011319))

(declare-fun m!5011321 () Bool)

(assert (=> b!4376997 m!5011321))

(declare-fun m!5011323 () Bool)

(assert (=> bm!304376 m!5011323))

(assert (=> b!4377004 m!5011317))

(assert (=> b!4377004 m!5011317))

(assert (=> b!4377004 m!5011319))

(declare-fun m!5011325 () Bool)

(assert (=> b!4377001 m!5011325))

(assert (=> b!4377002 m!5011325))

(assert (=> b!4377002 m!5011325))

(declare-fun m!5011327 () Bool)

(assert (=> b!4377002 m!5011327))

(declare-fun m!5011329 () Bool)

(assert (=> d!1302694 m!5011329))

(declare-fun m!5011331 () Bool)

(assert (=> b!4376999 m!5011331))

(assert (=> b!4377003 m!5011329))

(declare-fun m!5011333 () Bool)

(assert (=> b!4377003 m!5011333))

(assert (=> b!4376998 m!5011325))

(assert (=> b!4376998 m!5011325))

(assert (=> b!4376998 m!5011327))

(assert (=> b!4375992 d!1302694))

(declare-fun d!1302696 () Bool)

(declare-fun e!2724500 () Bool)

(assert (=> d!1302696 e!2724500))

(declare-fun res!1802223 () Bool)

(assert (=> d!1302696 (=> (not res!1802223) (not e!2724500))))

(declare-fun lt!1587633 () ListMap!2373)

(assert (=> d!1302696 (= res!1802223 (contains!11461 lt!1587633 (_1!27625 (h!54733 lt!1586456))))))

(declare-fun lt!1587635 () List!49264)

(assert (=> d!1302696 (= lt!1587633 (ListMap!2374 lt!1587635))))

(declare-fun lt!1587636 () Unit!74656)

(declare-fun lt!1587634 () Unit!74656)

(assert (=> d!1302696 (= lt!1587636 lt!1587634)))

(assert (=> d!1302696 (= (getValueByKey!538 lt!1587635 (_1!27625 (h!54733 lt!1586456))) (Some!10551 (_2!27625 (h!54733 lt!1586456))))))

(assert (=> d!1302696 (= lt!1587634 (lemmaContainsTupThenGetReturnValue!302 lt!1587635 (_1!27625 (h!54733 lt!1586456)) (_2!27625 (h!54733 lt!1586456))))))

(assert (=> d!1302696 (= lt!1587635 (insertNoDuplicatedKeys!137 (toList!3130 lt!1586446) (_1!27625 (h!54733 lt!1586456)) (_2!27625 (h!54733 lt!1586456))))))

(assert (=> d!1302696 (= (+!778 lt!1586446 (h!54733 lt!1586456)) lt!1587633)))

(declare-fun b!4377005 () Bool)

(declare-fun res!1802224 () Bool)

(assert (=> b!4377005 (=> (not res!1802224) (not e!2724500))))

(assert (=> b!4377005 (= res!1802224 (= (getValueByKey!538 (toList!3130 lt!1587633) (_1!27625 (h!54733 lt!1586456))) (Some!10551 (_2!27625 (h!54733 lt!1586456)))))))

(declare-fun b!4377006 () Bool)

(assert (=> b!4377006 (= e!2724500 (contains!11466 (toList!3130 lt!1587633) (h!54733 lt!1586456)))))

(assert (= (and d!1302696 res!1802223) b!4377005))

(assert (= (and b!4377005 res!1802224) b!4377006))

(declare-fun m!5011335 () Bool)

(assert (=> d!1302696 m!5011335))

(declare-fun m!5011337 () Bool)

(assert (=> d!1302696 m!5011337))

(declare-fun m!5011339 () Bool)

(assert (=> d!1302696 m!5011339))

(declare-fun m!5011341 () Bool)

(assert (=> d!1302696 m!5011341))

(declare-fun m!5011343 () Bool)

(assert (=> b!4377005 m!5011343))

(declare-fun m!5011345 () Bool)

(assert (=> b!4377006 m!5011345))

(assert (=> b!4375992 d!1302696))

(declare-fun d!1302698 () Bool)

(declare-fun res!1802225 () Bool)

(declare-fun e!2724501 () Bool)

(assert (=> d!1302698 (=> res!1802225 e!2724501)))

(assert (=> d!1302698 (= res!1802225 ((_ is Nil!49140) (toList!3130 lt!1586773)))))

(assert (=> d!1302698 (= (forall!9261 (toList!3130 lt!1586773) lambda!144701) e!2724501)))

(declare-fun b!4377007 () Bool)

(declare-fun e!2724502 () Bool)

(assert (=> b!4377007 (= e!2724501 e!2724502)))

(declare-fun res!1802226 () Bool)

(assert (=> b!4377007 (=> (not res!1802226) (not e!2724502))))

(assert (=> b!4377007 (= res!1802226 (dynLambda!20705 lambda!144701 (h!54733 (toList!3130 lt!1586773))))))

(declare-fun b!4377008 () Bool)

(assert (=> b!4377008 (= e!2724502 (forall!9261 (t!356190 (toList!3130 lt!1586773)) lambda!144701))))

(assert (= (and d!1302698 (not res!1802225)) b!4377007))

(assert (= (and b!4377007 res!1802226) b!4377008))

(declare-fun b_lambda!134669 () Bool)

(assert (=> (not b_lambda!134669) (not b!4377007)))

(declare-fun m!5011347 () Bool)

(assert (=> b!4377007 m!5011347))

(declare-fun m!5011349 () Bool)

(assert (=> b!4377008 m!5011349))

(assert (=> b!4375992 d!1302698))

(declare-fun d!1302700 () Bool)

(declare-fun res!1802227 () Bool)

(declare-fun e!2724503 () Bool)

(assert (=> d!1302700 (=> res!1802227 e!2724503)))

(assert (=> d!1302700 (= res!1802227 ((_ is Nil!49140) lt!1586456))))

(assert (=> d!1302700 (= (forall!9261 lt!1586456 lambda!144702) e!2724503)))

(declare-fun b!4377009 () Bool)

(declare-fun e!2724504 () Bool)

(assert (=> b!4377009 (= e!2724503 e!2724504)))

(declare-fun res!1802228 () Bool)

(assert (=> b!4377009 (=> (not res!1802228) (not e!2724504))))

(assert (=> b!4377009 (= res!1802228 (dynLambda!20705 lambda!144702 (h!54733 lt!1586456)))))

(declare-fun b!4377010 () Bool)

(assert (=> b!4377010 (= e!2724504 (forall!9261 (t!356190 lt!1586456) lambda!144702))))

(assert (= (and d!1302700 (not res!1802227)) b!4377009))

(assert (= (and b!4377009 res!1802228) b!4377010))

(declare-fun b_lambda!134671 () Bool)

(assert (=> (not b_lambda!134671) (not b!4377009)))

(declare-fun m!5011351 () Bool)

(assert (=> b!4377009 m!5011351))

(declare-fun m!5011353 () Bool)

(assert (=> b!4377010 m!5011353))

(assert (=> d!1302152 d!1302700))

(declare-fun d!1302702 () Bool)

(declare-fun res!1802229 () Bool)

(declare-fun e!2724505 () Bool)

(assert (=> d!1302702 (=> res!1802229 e!2724505)))

(assert (=> d!1302702 (= res!1802229 (not ((_ is Cons!49140) lt!1586456)))))

(assert (=> d!1302702 (= (noDuplicateKeys!573 lt!1586456) e!2724505)))

(declare-fun b!4377011 () Bool)

(declare-fun e!2724506 () Bool)

(assert (=> b!4377011 (= e!2724505 e!2724506)))

(declare-fun res!1802230 () Bool)

(assert (=> b!4377011 (=> (not res!1802230) (not e!2724506))))

(assert (=> b!4377011 (= res!1802230 (not (containsKey!835 (t!356190 lt!1586456) (_1!27625 (h!54733 lt!1586456)))))))

(declare-fun b!4377012 () Bool)

(assert (=> b!4377012 (= e!2724506 (noDuplicateKeys!573 (t!356190 lt!1586456)))))

(assert (= (and d!1302702 (not res!1802229)) b!4377011))

(assert (= (and b!4377011 res!1802230) b!4377012))

(declare-fun m!5011355 () Bool)

(assert (=> b!4377011 m!5011355))

(assert (=> b!4377012 m!5011309))

(assert (=> d!1302152 d!1302702))

(declare-fun d!1302704 () Bool)

(declare-fun res!1802231 () Bool)

(declare-fun e!2724507 () Bool)

(assert (=> d!1302704 (=> res!1802231 e!2724507)))

(assert (=> d!1302704 (= res!1802231 ((_ is Nil!49140) lt!1586460))))

(assert (=> d!1302704 (= (forall!9261 lt!1586460 lambda!144710) e!2724507)))

(declare-fun b!4377013 () Bool)

(declare-fun e!2724508 () Bool)

(assert (=> b!4377013 (= e!2724507 e!2724508)))

(declare-fun res!1802232 () Bool)

(assert (=> b!4377013 (=> (not res!1802232) (not e!2724508))))

(assert (=> b!4377013 (= res!1802232 (dynLambda!20705 lambda!144710 (h!54733 lt!1586460)))))

(declare-fun b!4377014 () Bool)

(assert (=> b!4377014 (= e!2724508 (forall!9261 (t!356190 lt!1586460) lambda!144710))))

(assert (= (and d!1302704 (not res!1802231)) b!4377013))

(assert (= (and b!4377013 res!1802232) b!4377014))

(declare-fun b_lambda!134673 () Bool)

(assert (=> (not b_lambda!134673) (not b!4377013)))

(declare-fun m!5011357 () Bool)

(assert (=> b!4377013 m!5011357))

(declare-fun m!5011359 () Bool)

(assert (=> b!4377014 m!5011359))

(assert (=> d!1302208 d!1302704))

(assert (=> d!1302208 d!1302504))

(declare-fun d!1302706 () Bool)

(declare-fun c!744348 () Bool)

(assert (=> d!1302706 (= c!744348 ((_ is Nil!49141) (toList!3129 lm!1707)))))

(declare-fun e!2724511 () (InoxSet tuple2!48664))

(assert (=> d!1302706 (= (content!7801 (toList!3129 lm!1707)) e!2724511)))

(declare-fun b!4377019 () Bool)

(assert (=> b!4377019 (= e!2724511 ((as const (Array tuple2!48664 Bool)) false))))

(declare-fun b!4377020 () Bool)

(assert (=> b!4377020 (= e!2724511 ((_ map or) (store ((as const (Array tuple2!48664 Bool)) false) (h!54734 (toList!3129 lm!1707)) true) (content!7801 (t!356191 (toList!3129 lm!1707)))))))

(assert (= (and d!1302706 c!744348) b!4377019))

(assert (= (and d!1302706 (not c!744348)) b!4377020))

(declare-fun m!5011361 () Bool)

(assert (=> b!4377020 m!5011361))

(assert (=> b!4377020 m!5010525))

(assert (=> d!1302128 d!1302706))

(declare-fun d!1302708 () Bool)

(declare-fun res!1802233 () Bool)

(declare-fun e!2724512 () Bool)

(assert (=> d!1302708 (=> res!1802233 e!2724512)))

(assert (=> d!1302708 (= res!1802233 ((_ is Nil!49140) (toList!3130 lt!1586446)))))

(assert (=> d!1302708 (= (forall!9261 (toList!3130 lt!1586446) lambda!144714) e!2724512)))

(declare-fun b!4377021 () Bool)

(declare-fun e!2724513 () Bool)

(assert (=> b!4377021 (= e!2724512 e!2724513)))

(declare-fun res!1802234 () Bool)

(assert (=> b!4377021 (=> (not res!1802234) (not e!2724513))))

(assert (=> b!4377021 (= res!1802234 (dynLambda!20705 lambda!144714 (h!54733 (toList!3130 lt!1586446))))))

(declare-fun b!4377022 () Bool)

(assert (=> b!4377022 (= e!2724513 (forall!9261 (t!356190 (toList!3130 lt!1586446)) lambda!144714))))

(assert (= (and d!1302708 (not res!1802233)) b!4377021))

(assert (= (and b!4377021 res!1802234) b!4377022))

(declare-fun b_lambda!134675 () Bool)

(assert (=> (not b_lambda!134675) (not b!4377021)))

(declare-fun m!5011363 () Bool)

(assert (=> b!4377021 m!5011363))

(declare-fun m!5011365 () Bool)

(assert (=> b!4377022 m!5011365))

(assert (=> b!4376017 d!1302708))

(assert (=> b!4375883 d!1302648))

(assert (=> b!4375883 d!1302356))

(declare-fun d!1302710 () Bool)

(assert (=> d!1302710 (dynLambda!20705 lambda!144714 (h!54733 lt!1586460))))

(declare-fun lt!1587637 () Unit!74656)

(assert (=> d!1302710 (= lt!1587637 (choose!27262 (toList!3130 lt!1586856) lambda!144714 (h!54733 lt!1586460)))))

(declare-fun e!2724514 () Bool)

(assert (=> d!1302710 e!2724514))

(declare-fun res!1802235 () Bool)

(assert (=> d!1302710 (=> (not res!1802235) (not e!2724514))))

(assert (=> d!1302710 (= res!1802235 (forall!9261 (toList!3130 lt!1586856) lambda!144714))))

(assert (=> d!1302710 (= (forallContained!1899 (toList!3130 lt!1586856) lambda!144714 (h!54733 lt!1586460)) lt!1587637)))

(declare-fun b!4377023 () Bool)

(assert (=> b!4377023 (= e!2724514 (contains!11466 (toList!3130 lt!1586856) (h!54733 lt!1586460)))))

(assert (= (and d!1302710 res!1802235) b!4377023))

(declare-fun b_lambda!134677 () Bool)

(assert (=> (not b_lambda!134677) (not d!1302710)))

(declare-fun m!5011367 () Bool)

(assert (=> d!1302710 m!5011367))

(declare-fun m!5011369 () Bool)

(assert (=> d!1302710 m!5011369))

(assert (=> d!1302710 m!5009421))

(declare-fun m!5011371 () Bool)

(assert (=> b!4377023 m!5011371))

(assert (=> b!4376019 d!1302710))

(declare-fun d!1302712 () Bool)

(declare-fun res!1802236 () Bool)

(declare-fun e!2724515 () Bool)

(assert (=> d!1302712 (=> res!1802236 e!2724515)))

(assert (=> d!1302712 (= res!1802236 ((_ is Nil!49140) (t!356190 lt!1586460)))))

(assert (=> d!1302712 (= (forall!9261 (t!356190 lt!1586460) lambda!144714) e!2724515)))

(declare-fun b!4377024 () Bool)

(declare-fun e!2724516 () Bool)

(assert (=> b!4377024 (= e!2724515 e!2724516)))

(declare-fun res!1802237 () Bool)

(assert (=> b!4377024 (=> (not res!1802237) (not e!2724516))))

(assert (=> b!4377024 (= res!1802237 (dynLambda!20705 lambda!144714 (h!54733 (t!356190 lt!1586460))))))

(declare-fun b!4377025 () Bool)

(assert (=> b!4377025 (= e!2724516 (forall!9261 (t!356190 (t!356190 lt!1586460)) lambda!144714))))

(assert (= (and d!1302712 (not res!1802236)) b!4377024))

(assert (= (and b!4377024 res!1802237) b!4377025))

(declare-fun b_lambda!134679 () Bool)

(assert (=> (not b_lambda!134679) (not b!4377024)))

(declare-fun m!5011373 () Bool)

(assert (=> b!4377024 m!5011373))

(declare-fun m!5011375 () Bool)

(assert (=> b!4377025 m!5011375))

(assert (=> b!4376019 d!1302712))

(declare-fun bs!659575 () Bool)

(declare-fun d!1302714 () Bool)

(assert (= bs!659575 (and d!1302714 d!1302320)))

(declare-fun lambda!144846 () Int)

(assert (=> bs!659575 (= (= lt!1586866 lt!1587057) (= lambda!144846 lambda!144743))))

(declare-fun bs!659577 () Bool)

(assert (= bs!659577 (and d!1302714 d!1302208)))

(assert (=> bs!659577 (= (= lt!1586866 lt!1586829) (= lambda!144846 lambda!144710))))

(declare-fun bs!659579 () Bool)

(assert (= bs!659579 (and d!1302714 b!4376001)))

(assert (=> bs!659579 (= (= lt!1586866 lt!1586808) (= lambda!144846 lambda!144705))))

(declare-fun bs!659581 () Bool)

(assert (= bs!659581 (and d!1302714 b!4376946)))

(assert (=> bs!659581 (= (= lt!1586866 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144846 lambda!144839))))

(declare-fun bs!659582 () Bool)

(assert (= bs!659582 (and d!1302714 d!1302554)))

(assert (=> bs!659582 (= (= lt!1586866 (+!778 lt!1586446 lt!1586455)) (= lambda!144846 lambda!144819))))

(declare-fun bs!659584 () Bool)

(assert (= bs!659584 (and d!1302714 d!1302214)))

(assert (=> bs!659584 (= (= lt!1586866 lt!1586863) (= lambda!144846 lambda!144715))))

(declare-fun bs!659585 () Bool)

(assert (= bs!659585 (and d!1302714 b!4376019)))

(assert (=> bs!659585 (= lambda!144846 lambda!144714)))

(declare-fun bs!659586 () Bool)

(assert (= bs!659586 (and d!1302714 d!1302364)))

(assert (=> bs!659586 (= (= lt!1586866 lt!1587151) (= lambda!144846 lambda!144764))))

(declare-fun bs!659588 () Bool)

(assert (= bs!659588 (and d!1302714 b!4376947)))

(assert (=> bs!659588 (= (= lt!1586866 lt!1587571) (= lambda!144846 lambda!144842))))

(declare-fun bs!659590 () Bool)

(assert (= bs!659590 (and d!1302714 b!4376351)))

(assert (=> bs!659590 (= (= lt!1586866 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144846 lambda!144756))))

(declare-fun bs!659592 () Bool)

(assert (= bs!659592 (and d!1302714 b!4376448)))

(assert (=> bs!659592 (= (= lt!1586866 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144846 lambda!144769))))

(declare-fun bs!659594 () Bool)

(assert (= bs!659594 (and d!1302714 b!4376000)))

(assert (=> bs!659594 (= (= lt!1586866 lt!1586446) (= lambda!144846 lambda!144703))))

(declare-fun bs!659596 () Bool)

(assert (= bs!659596 (and d!1302714 d!1302666)))

(assert (=> bs!659596 (= (= lt!1586866 lt!1587568) (= lambda!144846 lambda!144843))))

(assert (=> bs!659579 (= (= lt!1586866 lt!1586446) (= lambda!144846 lambda!144704))))

(declare-fun bs!659598 () Bool)

(assert (= bs!659598 (and d!1302714 b!4376255)))

(assert (=> bs!659598 (= (= lt!1586866 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144846 lambda!144741))))

(assert (=> bs!659585 (= (= lt!1586866 lt!1586446) (= lambda!144846 lambda!144713))))

(declare-fun bs!659599 () Bool)

(assert (= bs!659599 (and d!1302714 b!4376449)))

(assert (=> bs!659599 (= (= lt!1586866 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144846 lambda!144771))))

(declare-fun bs!659600 () Bool)

(assert (= bs!659600 (and d!1302714 b!4376151)))

(assert (=> bs!659600 (= (= lt!1586866 lt!1586965) (= lambda!144846 lambda!144733))))

(assert (=> bs!659600 (= (= lt!1586866 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144846 lambda!144732))))

(declare-fun bs!659601 () Bool)

(assert (= bs!659601 (and d!1302714 d!1302220)))

(assert (=> bs!659601 (not (= lambda!144846 lambda!144717))))

(declare-fun bs!659602 () Bool)

(assert (= bs!659602 (and d!1302714 b!4376770)))

(assert (=> bs!659602 (= (= lt!1586866 lt!1587427) (= lambda!144846 lambda!144826))))

(declare-fun bs!659603 () Bool)

(assert (= bs!659603 (and d!1302714 b!4376769)))

(assert (=> bs!659603 (= (= lt!1586866 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144846 lambda!144822))))

(declare-fun bs!659604 () Bool)

(assert (= bs!659604 (and d!1302714 d!1302282)))

(assert (=> bs!659604 (= (= lt!1586866 lt!1586962) (= lambda!144846 lambda!144734))))

(declare-fun bs!659605 () Bool)

(assert (= bs!659605 (and d!1302714 b!4376254)))

(assert (=> bs!659605 (= (= lt!1586866 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144846 lambda!144740))))

(declare-fun bs!659606 () Bool)

(assert (= bs!659606 (and d!1302714 d!1302202)))

(assert (=> bs!659606 (= (= lt!1586866 lt!1586805) (= lambda!144846 lambda!144706))))

(declare-fun bs!659607 () Bool)

(assert (= bs!659607 (and d!1302714 d!1302408)))

(assert (=> bs!659607 (= (= lt!1586866 lt!1587232) (= lambda!144846 lambda!144774))))

(declare-fun bs!659608 () Bool)

(assert (= bs!659608 (and d!1302714 b!4376352)))

(assert (=> bs!659608 (= (= lt!1586866 lt!1587154) (= lambda!144846 lambda!144763))))

(declare-fun bs!659609 () Bool)

(assert (= bs!659609 (and d!1302714 d!1302330)))

(assert (=> bs!659609 (= (= lt!1586866 lt!1586832) (= lambda!144846 lambda!144749))))

(declare-fun bs!659610 () Bool)

(assert (= bs!659610 (and d!1302714 d!1302304)))

(assert (=> bs!659610 (= (= lt!1586866 lt!1586995) (= lambda!144846 lambda!144739))))

(declare-fun bs!659611 () Bool)

(assert (= bs!659611 (and d!1302714 b!4375992)))

(assert (=> bs!659611 (= (= lt!1586866 lt!1586783) (= lambda!144846 lambda!144701))))

(declare-fun bs!659612 () Bool)

(assert (= bs!659612 (and d!1302714 d!1302152)))

(assert (=> bs!659612 (= (= lt!1586866 lt!1586780) (= lambda!144846 lambda!144702))))

(declare-fun bs!659613 () Bool)

(assert (= bs!659613 (and d!1302714 d!1302118)))

(assert (=> bs!659613 (not (= lambda!144846 lambda!144613))))

(assert (=> bs!659608 (= (= lt!1586866 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144846 lambda!144759))))

(declare-fun bs!659614 () Bool)

(assert (= bs!659614 (and d!1302714 d!1302662)))

(assert (=> bs!659614 (= (= lt!1586866 lt!1586783) (= lambda!144846 lambda!144836))))

(declare-fun bs!659615 () Bool)

(assert (= bs!659615 (and d!1302714 b!4376005)))

(assert (=> bs!659615 (= (= lt!1586866 (+!778 lt!1586446 lt!1586455)) (= lambda!144846 lambda!144707))))

(declare-fun bs!659616 () Bool)

(assert (= bs!659616 (and d!1302714 b!4376018)))

(assert (=> bs!659616 (= (= lt!1586866 lt!1586446) (= lambda!144846 lambda!144712))))

(declare-fun bs!659617 () Bool)

(assert (= bs!659617 (and d!1302714 d!1302348)))

(assert (=> bs!659617 (= (= lt!1586866 lt!1586446) (= lambda!144846 lambda!144755))))

(declare-fun bs!659618 () Bool)

(assert (= bs!659618 (and d!1302714 b!4376006)))

(assert (=> bs!659618 (= (= lt!1586866 (+!778 lt!1586446 lt!1586455)) (= lambda!144846 lambda!144708))))

(declare-fun bs!659619 () Bool)

(assert (= bs!659619 (and d!1302714 b!4375991)))

(assert (=> bs!659619 (= (= lt!1586866 lt!1586446) (= lambda!144846 lambda!144699))))

(declare-fun bs!659620 () Bool)

(assert (= bs!659620 (and d!1302714 b!4376193)))

(assert (=> bs!659620 (= (= lt!1586866 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144846 lambda!144737))))

(declare-fun bs!659621 () Bool)

(assert (= bs!659621 (and d!1302714 d!1302400)))

(assert (=> bs!659621 (= (= lt!1586866 lt!1586808) (= lambda!144846 lambda!144766))))

(assert (=> bs!659598 (= (= lt!1586866 lt!1587060) (= lambda!144846 lambda!144742))))

(declare-fun bs!659622 () Bool)

(assert (= bs!659622 (and d!1302714 b!4376192)))

(assert (=> bs!659622 (= (= lt!1586866 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144846 lambda!144736))))

(assert (=> bs!659618 (= (= lt!1586866 lt!1586832) (= lambda!144846 lambda!144709))))

(assert (=> bs!659602 (= (= lt!1586866 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144846 lambda!144824))))

(declare-fun bs!659623 () Bool)

(assert (= bs!659623 (and d!1302714 b!4376150)))

(assert (=> bs!659623 (= (= lt!1586866 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144846 lambda!144731))))

(assert (=> bs!659611 (= (= lt!1586866 lt!1586446) (= lambda!144846 lambda!144700))))

(assert (=> bs!659588 (= (= lt!1586866 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144846 lambda!144840))))

(assert (=> bs!659599 (= (= lt!1586866 lt!1587235) (= lambda!144846 lambda!144773))))

(declare-fun bs!659624 () Bool)

(assert (= bs!659624 (and d!1302714 d!1302564)))

(assert (=> bs!659624 (= (= lt!1586866 lt!1587424) (= lambda!144846 lambda!144827))))

(assert (=> bs!659620 (= (= lt!1586866 lt!1586998) (= lambda!144846 lambda!144738))))

(assert (=> d!1302714 true))

(assert (=> d!1302714 (forall!9261 (toList!3130 lt!1586446) lambda!144846)))

(declare-fun lt!1587638 () Unit!74656)

(assert (=> d!1302714 (= lt!1587638 (choose!27266 lt!1586446 lt!1586866 (_1!27625 (h!54733 lt!1586460)) (_2!27625 (h!54733 lt!1586460))))))

(assert (=> d!1302714 (forall!9261 (toList!3130 (+!778 lt!1586446 (tuple2!48663 (_1!27625 (h!54733 lt!1586460)) (_2!27625 (h!54733 lt!1586460))))) lambda!144846)))

(assert (=> d!1302714 (= (addForallContainsKeyThenBeforeAdding!101 lt!1586446 lt!1586866 (_1!27625 (h!54733 lt!1586460)) (_2!27625 (h!54733 lt!1586460))) lt!1587638)))

(declare-fun bs!659625 () Bool)

(assert (= bs!659625 d!1302714))

(declare-fun m!5011377 () Bool)

(assert (=> bs!659625 m!5011377))

(declare-fun m!5011379 () Bool)

(assert (=> bs!659625 m!5011379))

(declare-fun m!5011381 () Bool)

(assert (=> bs!659625 m!5011381))

(declare-fun m!5011383 () Bool)

(assert (=> bs!659625 m!5011383))

(assert (=> b!4376019 d!1302714))

(declare-fun b!4377026 () Bool)

(declare-fun e!2724521 () Unit!74656)

(declare-fun Unit!74938 () Unit!74656)

(assert (=> b!4377026 (= e!2724521 Unit!74938)))

(declare-fun b!4377027 () Bool)

(declare-fun e!2724519 () Unit!74656)

(declare-fun lt!1587644 () Unit!74656)

(assert (=> b!4377027 (= e!2724519 lt!1587644)))

(declare-fun lt!1587646 () Unit!74656)

(assert (=> b!4377027 (= lt!1587646 (lemmaContainsKeyImpliesGetValueByKeyDefined!449 (toList!3130 lt!1586856) (_1!27625 (h!54733 lt!1586460))))))

(assert (=> b!4377027 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586856) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun lt!1587639 () Unit!74656)

(assert (=> b!4377027 (= lt!1587639 lt!1587646)))

(assert (=> b!4377027 (= lt!1587644 (lemmaInListThenGetKeysListContains!164 (toList!3130 lt!1586856) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun call!304382 () Bool)

(assert (=> b!4377027 call!304382))

(declare-fun b!4377028 () Bool)

(declare-fun e!2724520 () Bool)

(assert (=> b!4377028 (= e!2724520 (not (contains!11467 (keys!16659 lt!1586856) (_1!27625 (h!54733 lt!1586460)))))))

(declare-fun bm!304377 () Bool)

(declare-fun e!2724518 () List!49267)

(assert (=> bm!304377 (= call!304382 (contains!11467 e!2724518 (_1!27625 (h!54733 lt!1586460))))))

(declare-fun c!744351 () Bool)

(declare-fun c!744350 () Bool)

(assert (=> bm!304377 (= c!744351 c!744350)))

(declare-fun b!4377029 () Bool)

(assert (=> b!4377029 (= e!2724518 (getKeysList!167 (toList!3130 lt!1586856)))))

(declare-fun b!4377030 () Bool)

(assert (=> b!4377030 (= e!2724519 e!2724521)))

(declare-fun c!744349 () Bool)

(assert (=> b!4377030 (= c!744349 call!304382)))

(declare-fun b!4377031 () Bool)

(assert (=> b!4377031 (= e!2724518 (keys!16659 lt!1586856))))

(declare-fun d!1302716 () Bool)

(declare-fun e!2724517 () Bool)

(assert (=> d!1302716 e!2724517))

(declare-fun res!1802238 () Bool)

(assert (=> d!1302716 (=> res!1802238 e!2724517)))

(assert (=> d!1302716 (= res!1802238 e!2724520)))

(declare-fun res!1802239 () Bool)

(assert (=> d!1302716 (=> (not res!1802239) (not e!2724520))))

(declare-fun lt!1587643 () Bool)

(assert (=> d!1302716 (= res!1802239 (not lt!1587643))))

(declare-fun lt!1587640 () Bool)

(assert (=> d!1302716 (= lt!1587643 lt!1587640)))

(declare-fun lt!1587642 () Unit!74656)

(assert (=> d!1302716 (= lt!1587642 e!2724519)))

(assert (=> d!1302716 (= c!744350 lt!1587640)))

(assert (=> d!1302716 (= lt!1587640 (containsKey!839 (toList!3130 lt!1586856) (_1!27625 (h!54733 lt!1586460))))))

(assert (=> d!1302716 (= (contains!11461 lt!1586856 (_1!27625 (h!54733 lt!1586460))) lt!1587643)))

(declare-fun b!4377032 () Bool)

(declare-fun e!2724522 () Bool)

(assert (=> b!4377032 (= e!2724522 (contains!11467 (keys!16659 lt!1586856) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun b!4377033 () Bool)

(assert (=> b!4377033 false))

(declare-fun lt!1587645 () Unit!74656)

(declare-fun lt!1587641 () Unit!74656)

(assert (=> b!4377033 (= lt!1587645 lt!1587641)))

(assert (=> b!4377033 (containsKey!839 (toList!3130 lt!1586856) (_1!27625 (h!54733 lt!1586460)))))

(assert (=> b!4377033 (= lt!1587641 (lemmaInGetKeysListThenContainsKey!165 (toList!3130 lt!1586856) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun Unit!74939 () Unit!74656)

(assert (=> b!4377033 (= e!2724521 Unit!74939)))

(declare-fun b!4377034 () Bool)

(assert (=> b!4377034 (= e!2724517 e!2724522)))

(declare-fun res!1802240 () Bool)

(assert (=> b!4377034 (=> (not res!1802240) (not e!2724522))))

(assert (=> b!4377034 (= res!1802240 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586856) (_1!27625 (h!54733 lt!1586460)))))))

(assert (= (and d!1302716 c!744350) b!4377027))

(assert (= (and d!1302716 (not c!744350)) b!4377030))

(assert (= (and b!4377030 c!744349) b!4377033))

(assert (= (and b!4377030 (not c!744349)) b!4377026))

(assert (= (or b!4377027 b!4377030) bm!304377))

(assert (= (and bm!304377 c!744351) b!4377029))

(assert (= (and bm!304377 (not c!744351)) b!4377031))

(assert (= (and d!1302716 res!1802239) b!4377028))

(assert (= (and d!1302716 (not res!1802238)) b!4377034))

(assert (= (and b!4377034 res!1802240) b!4377032))

(declare-fun m!5011385 () Bool)

(assert (=> b!4377027 m!5011385))

(declare-fun m!5011387 () Bool)

(assert (=> b!4377027 m!5011387))

(assert (=> b!4377027 m!5011387))

(declare-fun m!5011389 () Bool)

(assert (=> b!4377027 m!5011389))

(declare-fun m!5011391 () Bool)

(assert (=> b!4377027 m!5011391))

(declare-fun m!5011393 () Bool)

(assert (=> bm!304377 m!5011393))

(assert (=> b!4377034 m!5011387))

(assert (=> b!4377034 m!5011387))

(assert (=> b!4377034 m!5011389))

(declare-fun m!5011395 () Bool)

(assert (=> b!4377031 m!5011395))

(assert (=> b!4377032 m!5011395))

(assert (=> b!4377032 m!5011395))

(declare-fun m!5011397 () Bool)

(assert (=> b!4377032 m!5011397))

(declare-fun m!5011399 () Bool)

(assert (=> d!1302716 m!5011399))

(declare-fun m!5011401 () Bool)

(assert (=> b!4377029 m!5011401))

(assert (=> b!4377033 m!5011399))

(declare-fun m!5011403 () Bool)

(assert (=> b!4377033 m!5011403))

(assert (=> b!4377028 m!5011395))

(assert (=> b!4377028 m!5011395))

(assert (=> b!4377028 m!5011397))

(assert (=> b!4376019 d!1302716))

(declare-fun bs!659626 () Bool)

(declare-fun b!4377038 () Bool)

(assert (= bs!659626 (and b!4377038 d!1302320)))

(declare-fun lambda!144848 () Int)

(assert (=> bs!659626 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587057) (= lambda!144848 lambda!144743))))

(declare-fun bs!659628 () Bool)

(assert (= bs!659628 (and b!4377038 d!1302208)))

(assert (=> bs!659628 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586829) (= lambda!144848 lambda!144710))))

(declare-fun bs!659630 () Bool)

(assert (= bs!659630 (and b!4377038 b!4376001)))

(assert (=> bs!659630 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586808) (= lambda!144848 lambda!144705))))

(declare-fun bs!659632 () Bool)

(assert (= bs!659632 (and b!4377038 b!4376946)))

(assert (=> bs!659632 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144848 lambda!144839))))

(declare-fun bs!659634 () Bool)

(assert (= bs!659634 (and b!4377038 d!1302554)))

(assert (=> bs!659634 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 lt!1586455)) (= lambda!144848 lambda!144819))))

(declare-fun bs!659636 () Bool)

(assert (= bs!659636 (and b!4377038 d!1302214)))

(assert (=> bs!659636 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586863) (= lambda!144848 lambda!144715))))

(declare-fun bs!659638 () Bool)

(assert (= bs!659638 (and b!4377038 b!4376019)))

(assert (=> bs!659638 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586866) (= lambda!144848 lambda!144714))))

(declare-fun bs!659640 () Bool)

(assert (= bs!659640 (and b!4377038 d!1302364)))

(assert (=> bs!659640 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587151) (= lambda!144848 lambda!144764))))

(declare-fun bs!659642 () Bool)

(assert (= bs!659642 (and b!4377038 b!4376947)))

(assert (=> bs!659642 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587571) (= lambda!144848 lambda!144842))))

(declare-fun bs!659644 () Bool)

(assert (= bs!659644 (and b!4377038 b!4376351)))

(assert (=> bs!659644 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144848 lambda!144756))))

(declare-fun bs!659646 () Bool)

(assert (= bs!659646 (and b!4377038 b!4376448)))

(assert (=> bs!659646 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144848 lambda!144769))))

(declare-fun bs!659648 () Bool)

(assert (= bs!659648 (and b!4377038 b!4376000)))

(assert (=> bs!659648 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144848 lambda!144703))))

(declare-fun bs!659650 () Bool)

(assert (= bs!659650 (and b!4377038 d!1302666)))

(assert (=> bs!659650 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587568) (= lambda!144848 lambda!144843))))

(assert (=> bs!659630 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144848 lambda!144704))))

(declare-fun bs!659653 () Bool)

(assert (= bs!659653 (and b!4377038 b!4376255)))

(assert (=> bs!659653 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144848 lambda!144741))))

(assert (=> bs!659638 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144848 lambda!144713))))

(declare-fun bs!659655 () Bool)

(assert (= bs!659655 (and b!4377038 d!1302714)))

(assert (=> bs!659655 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586866) (= lambda!144848 lambda!144846))))

(declare-fun bs!659656 () Bool)

(assert (= bs!659656 (and b!4377038 b!4376449)))

(assert (=> bs!659656 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144848 lambda!144771))))

(declare-fun bs!659658 () Bool)

(assert (= bs!659658 (and b!4377038 b!4376151)))

(assert (=> bs!659658 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586965) (= lambda!144848 lambda!144733))))

(assert (=> bs!659658 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144848 lambda!144732))))

(declare-fun bs!659661 () Bool)

(assert (= bs!659661 (and b!4377038 d!1302220)))

(assert (=> bs!659661 (not (= lambda!144848 lambda!144717))))

(declare-fun bs!659663 () Bool)

(assert (= bs!659663 (and b!4377038 b!4376770)))

(assert (=> bs!659663 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587427) (= lambda!144848 lambda!144826))))

(declare-fun bs!659664 () Bool)

(assert (= bs!659664 (and b!4377038 b!4376769)))

(assert (=> bs!659664 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144848 lambda!144822))))

(declare-fun bs!659666 () Bool)

(assert (= bs!659666 (and b!4377038 d!1302282)))

(assert (=> bs!659666 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586962) (= lambda!144848 lambda!144734))))

(declare-fun bs!659668 () Bool)

(assert (= bs!659668 (and b!4377038 b!4376254)))

(assert (=> bs!659668 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144848 lambda!144740))))

(declare-fun bs!659670 () Bool)

(assert (= bs!659670 (and b!4377038 d!1302202)))

(assert (=> bs!659670 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586805) (= lambda!144848 lambda!144706))))

(declare-fun bs!659671 () Bool)

(assert (= bs!659671 (and b!4377038 d!1302408)))

(assert (=> bs!659671 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587232) (= lambda!144848 lambda!144774))))

(declare-fun bs!659673 () Bool)

(assert (= bs!659673 (and b!4377038 b!4376352)))

(assert (=> bs!659673 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587154) (= lambda!144848 lambda!144763))))

(declare-fun bs!659674 () Bool)

(assert (= bs!659674 (and b!4377038 d!1302330)))

(assert (=> bs!659674 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586832) (= lambda!144848 lambda!144749))))

(declare-fun bs!659676 () Bool)

(assert (= bs!659676 (and b!4377038 d!1302304)))

(assert (=> bs!659676 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586995) (= lambda!144848 lambda!144739))))

(declare-fun bs!659678 () Bool)

(assert (= bs!659678 (and b!4377038 b!4375992)))

(assert (=> bs!659678 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586783) (= lambda!144848 lambda!144701))))

(declare-fun bs!659680 () Bool)

(assert (= bs!659680 (and b!4377038 d!1302152)))

(assert (=> bs!659680 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586780) (= lambda!144848 lambda!144702))))

(declare-fun bs!659681 () Bool)

(assert (= bs!659681 (and b!4377038 d!1302118)))

(assert (=> bs!659681 (not (= lambda!144848 lambda!144613))))

(assert (=> bs!659673 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144848 lambda!144759))))

(declare-fun bs!659683 () Bool)

(assert (= bs!659683 (and b!4377038 d!1302662)))

(assert (=> bs!659683 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586783) (= lambda!144848 lambda!144836))))

(declare-fun bs!659685 () Bool)

(assert (= bs!659685 (and b!4377038 b!4376005)))

(assert (=> bs!659685 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 lt!1586455)) (= lambda!144848 lambda!144707))))

(declare-fun bs!659687 () Bool)

(assert (= bs!659687 (and b!4377038 b!4376018)))

(assert (=> bs!659687 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144848 lambda!144712))))

(declare-fun bs!659689 () Bool)

(assert (= bs!659689 (and b!4377038 d!1302348)))

(assert (=> bs!659689 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144848 lambda!144755))))

(declare-fun bs!659691 () Bool)

(assert (= bs!659691 (and b!4377038 b!4376006)))

(assert (=> bs!659691 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 lt!1586455)) (= lambda!144848 lambda!144708))))

(declare-fun bs!659693 () Bool)

(assert (= bs!659693 (and b!4377038 b!4375991)))

(assert (=> bs!659693 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144848 lambda!144699))))

(declare-fun bs!659695 () Bool)

(assert (= bs!659695 (and b!4377038 b!4376193)))

(assert (=> bs!659695 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144848 lambda!144737))))

(declare-fun bs!659697 () Bool)

(assert (= bs!659697 (and b!4377038 d!1302400)))

(assert (=> bs!659697 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586808) (= lambda!144848 lambda!144766))))

(assert (=> bs!659653 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587060) (= lambda!144848 lambda!144742))))

(declare-fun bs!659699 () Bool)

(assert (= bs!659699 (and b!4377038 b!4376192)))

(assert (=> bs!659699 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144848 lambda!144736))))

(assert (=> bs!659691 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586832) (= lambda!144848 lambda!144709))))

(assert (=> bs!659663 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144848 lambda!144824))))

(declare-fun bs!659702 () Bool)

(assert (= bs!659702 (and b!4377038 b!4376150)))

(assert (=> bs!659702 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144848 lambda!144731))))

(assert (=> bs!659678 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144848 lambda!144700))))

(assert (=> bs!659642 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144848 lambda!144840))))

(assert (=> bs!659656 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587235) (= lambda!144848 lambda!144773))))

(declare-fun bs!659704 () Bool)

(assert (= bs!659704 (and b!4377038 d!1302564)))

(assert (=> bs!659704 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587424) (= lambda!144848 lambda!144827))))

(assert (=> bs!659695 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586998) (= lambda!144848 lambda!144738))))

(assert (=> b!4377038 true))

(declare-fun bs!659711 () Bool)

(declare-fun b!4377039 () Bool)

(assert (= bs!659711 (and b!4377039 d!1302320)))

(declare-fun lambda!144850 () Int)

(assert (=> bs!659711 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587057) (= lambda!144850 lambda!144743))))

(declare-fun bs!659712 () Bool)

(assert (= bs!659712 (and b!4377039 d!1302208)))

(assert (=> bs!659712 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586829) (= lambda!144850 lambda!144710))))

(declare-fun bs!659713 () Bool)

(assert (= bs!659713 (and b!4377039 b!4376001)))

(assert (=> bs!659713 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586808) (= lambda!144850 lambda!144705))))

(declare-fun bs!659714 () Bool)

(assert (= bs!659714 (and b!4377039 b!4376946)))

(assert (=> bs!659714 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144850 lambda!144839))))

(declare-fun bs!659715 () Bool)

(assert (= bs!659715 (and b!4377039 d!1302554)))

(assert (=> bs!659715 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 lt!1586455)) (= lambda!144850 lambda!144819))))

(declare-fun bs!659716 () Bool)

(assert (= bs!659716 (and b!4377039 b!4377038)))

(assert (=> bs!659716 (= lambda!144850 lambda!144848)))

(declare-fun bs!659717 () Bool)

(assert (= bs!659717 (and b!4377039 d!1302214)))

(assert (=> bs!659717 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586863) (= lambda!144850 lambda!144715))))

(declare-fun bs!659718 () Bool)

(assert (= bs!659718 (and b!4377039 b!4376019)))

(assert (=> bs!659718 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586866) (= lambda!144850 lambda!144714))))

(declare-fun bs!659719 () Bool)

(assert (= bs!659719 (and b!4377039 d!1302364)))

(assert (=> bs!659719 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587151) (= lambda!144850 lambda!144764))))

(declare-fun bs!659720 () Bool)

(assert (= bs!659720 (and b!4377039 b!4376947)))

(assert (=> bs!659720 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587571) (= lambda!144850 lambda!144842))))

(declare-fun bs!659721 () Bool)

(assert (= bs!659721 (and b!4377039 b!4376351)))

(assert (=> bs!659721 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144850 lambda!144756))))

(declare-fun bs!659722 () Bool)

(assert (= bs!659722 (and b!4377039 b!4376448)))

(assert (=> bs!659722 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144850 lambda!144769))))

(declare-fun bs!659723 () Bool)

(assert (= bs!659723 (and b!4377039 b!4376000)))

(assert (=> bs!659723 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144850 lambda!144703))))

(declare-fun bs!659724 () Bool)

(assert (= bs!659724 (and b!4377039 d!1302666)))

(assert (=> bs!659724 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587568) (= lambda!144850 lambda!144843))))

(assert (=> bs!659713 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144850 lambda!144704))))

(declare-fun bs!659725 () Bool)

(assert (= bs!659725 (and b!4377039 b!4376255)))

(assert (=> bs!659725 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144850 lambda!144741))))

(assert (=> bs!659718 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144850 lambda!144713))))

(declare-fun bs!659726 () Bool)

(assert (= bs!659726 (and b!4377039 d!1302714)))

(assert (=> bs!659726 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586866) (= lambda!144850 lambda!144846))))

(declare-fun bs!659727 () Bool)

(assert (= bs!659727 (and b!4377039 b!4376449)))

(assert (=> bs!659727 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144850 lambda!144771))))

(declare-fun bs!659728 () Bool)

(assert (= bs!659728 (and b!4377039 b!4376151)))

(assert (=> bs!659728 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586965) (= lambda!144850 lambda!144733))))

(assert (=> bs!659728 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144850 lambda!144732))))

(declare-fun bs!659729 () Bool)

(assert (= bs!659729 (and b!4377039 d!1302220)))

(assert (=> bs!659729 (not (= lambda!144850 lambda!144717))))

(declare-fun bs!659730 () Bool)

(assert (= bs!659730 (and b!4377039 b!4376770)))

(assert (=> bs!659730 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587427) (= lambda!144850 lambda!144826))))

(declare-fun bs!659731 () Bool)

(assert (= bs!659731 (and b!4377039 b!4376769)))

(assert (=> bs!659731 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144850 lambda!144822))))

(declare-fun bs!659732 () Bool)

(assert (= bs!659732 (and b!4377039 d!1302282)))

(assert (=> bs!659732 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586962) (= lambda!144850 lambda!144734))))

(declare-fun bs!659733 () Bool)

(assert (= bs!659733 (and b!4377039 b!4376254)))

(assert (=> bs!659733 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144850 lambda!144740))))

(declare-fun bs!659734 () Bool)

(assert (= bs!659734 (and b!4377039 d!1302202)))

(assert (=> bs!659734 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586805) (= lambda!144850 lambda!144706))))

(declare-fun bs!659735 () Bool)

(assert (= bs!659735 (and b!4377039 d!1302408)))

(assert (=> bs!659735 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587232) (= lambda!144850 lambda!144774))))

(declare-fun bs!659736 () Bool)

(assert (= bs!659736 (and b!4377039 b!4376352)))

(assert (=> bs!659736 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587154) (= lambda!144850 lambda!144763))))

(declare-fun bs!659737 () Bool)

(assert (= bs!659737 (and b!4377039 d!1302330)))

(assert (=> bs!659737 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586832) (= lambda!144850 lambda!144749))))

(declare-fun bs!659738 () Bool)

(assert (= bs!659738 (and b!4377039 d!1302304)))

(assert (=> bs!659738 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586995) (= lambda!144850 lambda!144739))))

(declare-fun bs!659739 () Bool)

(assert (= bs!659739 (and b!4377039 b!4375992)))

(assert (=> bs!659739 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586783) (= lambda!144850 lambda!144701))))

(declare-fun bs!659740 () Bool)

(assert (= bs!659740 (and b!4377039 d!1302152)))

(assert (=> bs!659740 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586780) (= lambda!144850 lambda!144702))))

(declare-fun bs!659741 () Bool)

(assert (= bs!659741 (and b!4377039 d!1302118)))

(assert (=> bs!659741 (not (= lambda!144850 lambda!144613))))

(assert (=> bs!659736 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144850 lambda!144759))))

(declare-fun bs!659742 () Bool)

(assert (= bs!659742 (and b!4377039 d!1302662)))

(assert (=> bs!659742 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586783) (= lambda!144850 lambda!144836))))

(declare-fun bs!659743 () Bool)

(assert (= bs!659743 (and b!4377039 b!4376005)))

(assert (=> bs!659743 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 lt!1586455)) (= lambda!144850 lambda!144707))))

(declare-fun bs!659744 () Bool)

(assert (= bs!659744 (and b!4377039 b!4376018)))

(assert (=> bs!659744 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144850 lambda!144712))))

(declare-fun bs!659745 () Bool)

(assert (= bs!659745 (and b!4377039 d!1302348)))

(assert (=> bs!659745 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144850 lambda!144755))))

(declare-fun bs!659747 () Bool)

(assert (= bs!659747 (and b!4377039 b!4376006)))

(assert (=> bs!659747 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 lt!1586455)) (= lambda!144850 lambda!144708))))

(declare-fun bs!659748 () Bool)

(assert (= bs!659748 (and b!4377039 b!4375991)))

(assert (=> bs!659748 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144850 lambda!144699))))

(declare-fun bs!659750 () Bool)

(assert (= bs!659750 (and b!4377039 b!4376193)))

(assert (=> bs!659750 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144850 lambda!144737))))

(declare-fun bs!659752 () Bool)

(assert (= bs!659752 (and b!4377039 d!1302400)))

(assert (=> bs!659752 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586808) (= lambda!144850 lambda!144766))))

(assert (=> bs!659725 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587060) (= lambda!144850 lambda!144742))))

(declare-fun bs!659755 () Bool)

(assert (= bs!659755 (and b!4377039 b!4376192)))

(assert (=> bs!659755 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144850 lambda!144736))))

(assert (=> bs!659747 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586832) (= lambda!144850 lambda!144709))))

(assert (=> bs!659730 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144850 lambda!144824))))

(declare-fun bs!659759 () Bool)

(assert (= bs!659759 (and b!4377039 b!4376150)))

(assert (=> bs!659759 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144850 lambda!144731))))

(assert (=> bs!659739 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586446) (= lambda!144850 lambda!144700))))

(assert (=> bs!659720 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144850 lambda!144840))))

(assert (=> bs!659727 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587235) (= lambda!144850 lambda!144773))))

(declare-fun bs!659764 () Bool)

(assert (= bs!659764 (and b!4377039 d!1302564)))

(assert (=> bs!659764 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587424) (= lambda!144850 lambda!144827))))

(assert (=> bs!659750 (= (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1586998) (= lambda!144850 lambda!144738))))

(assert (=> b!4377039 true))

(declare-fun lambda!144852 () Int)

(declare-fun lt!1587665 () ListMap!2373)

(assert (=> bs!659711 (= (= lt!1587665 lt!1587057) (= lambda!144852 lambda!144743))))

(assert (=> bs!659712 (= (= lt!1587665 lt!1586829) (= lambda!144852 lambda!144710))))

(assert (=> bs!659713 (= (= lt!1587665 lt!1586808) (= lambda!144852 lambda!144705))))

(assert (=> bs!659714 (= (= lt!1587665 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144852 lambda!144839))))

(assert (=> bs!659715 (= (= lt!1587665 (+!778 lt!1586446 lt!1586455)) (= lambda!144852 lambda!144819))))

(assert (=> bs!659716 (= (= lt!1587665 (+!778 lt!1586446 (h!54733 lt!1586460))) (= lambda!144852 lambda!144848))))

(assert (=> bs!659717 (= (= lt!1587665 lt!1586863) (= lambda!144852 lambda!144715))))

(assert (=> bs!659718 (= (= lt!1587665 lt!1586866) (= lambda!144852 lambda!144714))))

(assert (=> b!4377039 (= (= lt!1587665 (+!778 lt!1586446 (h!54733 lt!1586460))) (= lambda!144852 lambda!144850))))

(assert (=> bs!659719 (= (= lt!1587665 lt!1587151) (= lambda!144852 lambda!144764))))

(assert (=> bs!659720 (= (= lt!1587665 lt!1587571) (= lambda!144852 lambda!144842))))

(assert (=> bs!659721 (= (= lt!1587665 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144852 lambda!144756))))

(assert (=> bs!659722 (= (= lt!1587665 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144852 lambda!144769))))

(assert (=> bs!659723 (= (= lt!1587665 lt!1586446) (= lambda!144852 lambda!144703))))

(assert (=> bs!659724 (= (= lt!1587665 lt!1587568) (= lambda!144852 lambda!144843))))

(assert (=> bs!659713 (= (= lt!1587665 lt!1586446) (= lambda!144852 lambda!144704))))

(assert (=> bs!659725 (= (= lt!1587665 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144852 lambda!144741))))

(assert (=> bs!659718 (= (= lt!1587665 lt!1586446) (= lambda!144852 lambda!144713))))

(assert (=> bs!659726 (= (= lt!1587665 lt!1586866) (= lambda!144852 lambda!144846))))

(assert (=> bs!659727 (= (= lt!1587665 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144852 lambda!144771))))

(assert (=> bs!659728 (= (= lt!1587665 lt!1586965) (= lambda!144852 lambda!144733))))

(assert (=> bs!659728 (= (= lt!1587665 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144852 lambda!144732))))

(assert (=> bs!659729 (not (= lambda!144852 lambda!144717))))

(assert (=> bs!659730 (= (= lt!1587665 lt!1587427) (= lambda!144852 lambda!144826))))

(assert (=> bs!659731 (= (= lt!1587665 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144852 lambda!144822))))

(assert (=> bs!659732 (= (= lt!1587665 lt!1586962) (= lambda!144852 lambda!144734))))

(assert (=> bs!659733 (= (= lt!1587665 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144852 lambda!144740))))

(assert (=> bs!659734 (= (= lt!1587665 lt!1586805) (= lambda!144852 lambda!144706))))

(assert (=> bs!659735 (= (= lt!1587665 lt!1587232) (= lambda!144852 lambda!144774))))

(assert (=> bs!659736 (= (= lt!1587665 lt!1587154) (= lambda!144852 lambda!144763))))

(assert (=> bs!659737 (= (= lt!1587665 lt!1586832) (= lambda!144852 lambda!144749))))

(assert (=> bs!659738 (= (= lt!1587665 lt!1586995) (= lambda!144852 lambda!144739))))

(assert (=> bs!659739 (= (= lt!1587665 lt!1586783) (= lambda!144852 lambda!144701))))

(assert (=> bs!659740 (= (= lt!1587665 lt!1586780) (= lambda!144852 lambda!144702))))

(assert (=> bs!659741 (not (= lambda!144852 lambda!144613))))

(assert (=> bs!659736 (= (= lt!1587665 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144852 lambda!144759))))

(assert (=> bs!659742 (= (= lt!1587665 lt!1586783) (= lambda!144852 lambda!144836))))

(assert (=> bs!659743 (= (= lt!1587665 (+!778 lt!1586446 lt!1586455)) (= lambda!144852 lambda!144707))))

(assert (=> bs!659744 (= (= lt!1587665 lt!1586446) (= lambda!144852 lambda!144712))))

(assert (=> bs!659745 (= (= lt!1587665 lt!1586446) (= lambda!144852 lambda!144755))))

(assert (=> bs!659747 (= (= lt!1587665 (+!778 lt!1586446 lt!1586455)) (= lambda!144852 lambda!144708))))

(assert (=> bs!659748 (= (= lt!1587665 lt!1586446) (= lambda!144852 lambda!144699))))

(assert (=> bs!659750 (= (= lt!1587665 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144852 lambda!144737))))

(assert (=> bs!659752 (= (= lt!1587665 lt!1586808) (= lambda!144852 lambda!144766))))

(assert (=> bs!659725 (= (= lt!1587665 lt!1587060) (= lambda!144852 lambda!144742))))

(assert (=> bs!659755 (= (= lt!1587665 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144852 lambda!144736))))

(assert (=> bs!659747 (= (= lt!1587665 lt!1586832) (= lambda!144852 lambda!144709))))

(assert (=> bs!659730 (= (= lt!1587665 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144852 lambda!144824))))

(assert (=> bs!659759 (= (= lt!1587665 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144852 lambda!144731))))

(assert (=> bs!659739 (= (= lt!1587665 lt!1586446) (= lambda!144852 lambda!144700))))

(assert (=> bs!659720 (= (= lt!1587665 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144852 lambda!144840))))

(assert (=> bs!659727 (= (= lt!1587665 lt!1587235) (= lambda!144852 lambda!144773))))

(assert (=> bs!659764 (= (= lt!1587665 lt!1587424) (= lambda!144852 lambda!144827))))

(assert (=> bs!659750 (= (= lt!1587665 lt!1586998) (= lambda!144852 lambda!144738))))

(assert (=> b!4377039 true))

(declare-fun bs!659799 () Bool)

(declare-fun d!1302718 () Bool)

(assert (= bs!659799 (and d!1302718 d!1302320)))

(declare-fun lambda!144853 () Int)

(declare-fun lt!1587662 () ListMap!2373)

(assert (=> bs!659799 (= (= lt!1587662 lt!1587057) (= lambda!144853 lambda!144743))))

(declare-fun bs!659800 () Bool)

(assert (= bs!659800 (and d!1302718 d!1302208)))

(assert (=> bs!659800 (= (= lt!1587662 lt!1586829) (= lambda!144853 lambda!144710))))

(declare-fun bs!659801 () Bool)

(assert (= bs!659801 (and d!1302718 b!4376001)))

(assert (=> bs!659801 (= (= lt!1587662 lt!1586808) (= lambda!144853 lambda!144705))))

(declare-fun bs!659802 () Bool)

(assert (= bs!659802 (and d!1302718 b!4376946)))

(assert (=> bs!659802 (= (= lt!1587662 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144853 lambda!144839))))

(declare-fun bs!659803 () Bool)

(assert (= bs!659803 (and d!1302718 d!1302554)))

(assert (=> bs!659803 (= (= lt!1587662 (+!778 lt!1586446 lt!1586455)) (= lambda!144853 lambda!144819))))

(declare-fun bs!659804 () Bool)

(assert (= bs!659804 (and d!1302718 b!4377038)))

(assert (=> bs!659804 (= (= lt!1587662 (+!778 lt!1586446 (h!54733 lt!1586460))) (= lambda!144853 lambda!144848))))

(declare-fun bs!659805 () Bool)

(assert (= bs!659805 (and d!1302718 d!1302214)))

(assert (=> bs!659805 (= (= lt!1587662 lt!1586863) (= lambda!144853 lambda!144715))))

(declare-fun bs!659806 () Bool)

(assert (= bs!659806 (and d!1302718 b!4376019)))

(assert (=> bs!659806 (= (= lt!1587662 lt!1586866) (= lambda!144853 lambda!144714))))

(declare-fun bs!659807 () Bool)

(assert (= bs!659807 (and d!1302718 b!4377039)))

(assert (=> bs!659807 (= (= lt!1587662 (+!778 lt!1586446 (h!54733 lt!1586460))) (= lambda!144853 lambda!144850))))

(declare-fun bs!659808 () Bool)

(assert (= bs!659808 (and d!1302718 d!1302364)))

(assert (=> bs!659808 (= (= lt!1587662 lt!1587151) (= lambda!144853 lambda!144764))))

(declare-fun bs!659809 () Bool)

(assert (= bs!659809 (and d!1302718 b!4376947)))

(assert (=> bs!659809 (= (= lt!1587662 lt!1587571) (= lambda!144853 lambda!144842))))

(declare-fun bs!659810 () Bool)

(assert (= bs!659810 (and d!1302718 b!4376351)))

(assert (=> bs!659810 (= (= lt!1587662 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144853 lambda!144756))))

(declare-fun bs!659811 () Bool)

(assert (= bs!659811 (and d!1302718 b!4376448)))

(assert (=> bs!659811 (= (= lt!1587662 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144853 lambda!144769))))

(declare-fun bs!659812 () Bool)

(assert (= bs!659812 (and d!1302718 b!4376000)))

(assert (=> bs!659812 (= (= lt!1587662 lt!1586446) (= lambda!144853 lambda!144703))))

(declare-fun bs!659813 () Bool)

(assert (= bs!659813 (and d!1302718 d!1302666)))

(assert (=> bs!659813 (= (= lt!1587662 lt!1587568) (= lambda!144853 lambda!144843))))

(assert (=> bs!659801 (= (= lt!1587662 lt!1586446) (= lambda!144853 lambda!144704))))

(declare-fun bs!659814 () Bool)

(assert (= bs!659814 (and d!1302718 b!4376255)))

(assert (=> bs!659814 (= (= lt!1587662 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144853 lambda!144741))))

(assert (=> bs!659806 (= (= lt!1587662 lt!1586446) (= lambda!144853 lambda!144713))))

(declare-fun bs!659815 () Bool)

(assert (= bs!659815 (and d!1302718 d!1302714)))

(assert (=> bs!659815 (= (= lt!1587662 lt!1586866) (= lambda!144853 lambda!144846))))

(assert (=> bs!659807 (= (= lt!1587662 lt!1587665) (= lambda!144853 lambda!144852))))

(declare-fun bs!659816 () Bool)

(assert (= bs!659816 (and d!1302718 b!4376449)))

(assert (=> bs!659816 (= (= lt!1587662 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144853 lambda!144771))))

(declare-fun bs!659817 () Bool)

(assert (= bs!659817 (and d!1302718 b!4376151)))

(assert (=> bs!659817 (= (= lt!1587662 lt!1586965) (= lambda!144853 lambda!144733))))

(assert (=> bs!659817 (= (= lt!1587662 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144853 lambda!144732))))

(declare-fun bs!659818 () Bool)

(assert (= bs!659818 (and d!1302718 d!1302220)))

(assert (=> bs!659818 (not (= lambda!144853 lambda!144717))))

(declare-fun bs!659819 () Bool)

(assert (= bs!659819 (and d!1302718 b!4376770)))

(assert (=> bs!659819 (= (= lt!1587662 lt!1587427) (= lambda!144853 lambda!144826))))

(declare-fun bs!659820 () Bool)

(assert (= bs!659820 (and d!1302718 b!4376769)))

(assert (=> bs!659820 (= (= lt!1587662 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144853 lambda!144822))))

(declare-fun bs!659821 () Bool)

(assert (= bs!659821 (and d!1302718 d!1302282)))

(assert (=> bs!659821 (= (= lt!1587662 lt!1586962) (= lambda!144853 lambda!144734))))

(declare-fun bs!659822 () Bool)

(assert (= bs!659822 (and d!1302718 b!4376254)))

(assert (=> bs!659822 (= (= lt!1587662 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144853 lambda!144740))))

(declare-fun bs!659823 () Bool)

(assert (= bs!659823 (and d!1302718 d!1302202)))

(assert (=> bs!659823 (= (= lt!1587662 lt!1586805) (= lambda!144853 lambda!144706))))

(declare-fun bs!659825 () Bool)

(assert (= bs!659825 (and d!1302718 d!1302408)))

(assert (=> bs!659825 (= (= lt!1587662 lt!1587232) (= lambda!144853 lambda!144774))))

(declare-fun bs!659827 () Bool)

(assert (= bs!659827 (and d!1302718 b!4376352)))

(assert (=> bs!659827 (= (= lt!1587662 lt!1587154) (= lambda!144853 lambda!144763))))

(declare-fun bs!659829 () Bool)

(assert (= bs!659829 (and d!1302718 d!1302330)))

(assert (=> bs!659829 (= (= lt!1587662 lt!1586832) (= lambda!144853 lambda!144749))))

(declare-fun bs!659831 () Bool)

(assert (= bs!659831 (and d!1302718 d!1302304)))

(assert (=> bs!659831 (= (= lt!1587662 lt!1586995) (= lambda!144853 lambda!144739))))

(declare-fun bs!659833 () Bool)

(assert (= bs!659833 (and d!1302718 b!4375992)))

(assert (=> bs!659833 (= (= lt!1587662 lt!1586783) (= lambda!144853 lambda!144701))))

(declare-fun bs!659834 () Bool)

(assert (= bs!659834 (and d!1302718 d!1302152)))

(assert (=> bs!659834 (= (= lt!1587662 lt!1586780) (= lambda!144853 lambda!144702))))

(declare-fun bs!659836 () Bool)

(assert (= bs!659836 (and d!1302718 d!1302118)))

(assert (=> bs!659836 (not (= lambda!144853 lambda!144613))))

(assert (=> bs!659827 (= (= lt!1587662 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144853 lambda!144759))))

(declare-fun bs!659839 () Bool)

(assert (= bs!659839 (and d!1302718 d!1302662)))

(assert (=> bs!659839 (= (= lt!1587662 lt!1586783) (= lambda!144853 lambda!144836))))

(declare-fun bs!659841 () Bool)

(assert (= bs!659841 (and d!1302718 b!4376005)))

(assert (=> bs!659841 (= (= lt!1587662 (+!778 lt!1586446 lt!1586455)) (= lambda!144853 lambda!144707))))

(declare-fun bs!659843 () Bool)

(assert (= bs!659843 (and d!1302718 b!4376018)))

(assert (=> bs!659843 (= (= lt!1587662 lt!1586446) (= lambda!144853 lambda!144712))))

(declare-fun bs!659845 () Bool)

(assert (= bs!659845 (and d!1302718 d!1302348)))

(assert (=> bs!659845 (= (= lt!1587662 lt!1586446) (= lambda!144853 lambda!144755))))

(declare-fun bs!659847 () Bool)

(assert (= bs!659847 (and d!1302718 b!4376006)))

(assert (=> bs!659847 (= (= lt!1587662 (+!778 lt!1586446 lt!1586455)) (= lambda!144853 lambda!144708))))

(declare-fun bs!659849 () Bool)

(assert (= bs!659849 (and d!1302718 b!4375991)))

(assert (=> bs!659849 (= (= lt!1587662 lt!1586446) (= lambda!144853 lambda!144699))))

(declare-fun bs!659850 () Bool)

(assert (= bs!659850 (and d!1302718 b!4376193)))

(assert (=> bs!659850 (= (= lt!1587662 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144853 lambda!144737))))

(declare-fun bs!659852 () Bool)

(assert (= bs!659852 (and d!1302718 d!1302400)))

(assert (=> bs!659852 (= (= lt!1587662 lt!1586808) (= lambda!144853 lambda!144766))))

(assert (=> bs!659814 (= (= lt!1587662 lt!1587060) (= lambda!144853 lambda!144742))))

(declare-fun bs!659854 () Bool)

(assert (= bs!659854 (and d!1302718 b!4376192)))

(assert (=> bs!659854 (= (= lt!1587662 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144853 lambda!144736))))

(assert (=> bs!659847 (= (= lt!1587662 lt!1586832) (= lambda!144853 lambda!144709))))

(assert (=> bs!659819 (= (= lt!1587662 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144853 lambda!144824))))

(declare-fun bs!659858 () Bool)

(assert (= bs!659858 (and d!1302718 b!4376150)))

(assert (=> bs!659858 (= (= lt!1587662 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144853 lambda!144731))))

(assert (=> bs!659833 (= (= lt!1587662 lt!1586446) (= lambda!144853 lambda!144700))))

(assert (=> bs!659809 (= (= lt!1587662 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144853 lambda!144840))))

(assert (=> bs!659816 (= (= lt!1587662 lt!1587235) (= lambda!144853 lambda!144773))))

(declare-fun bs!659862 () Bool)

(assert (= bs!659862 (and d!1302718 d!1302564)))

(assert (=> bs!659862 (= (= lt!1587662 lt!1587424) (= lambda!144853 lambda!144827))))

(assert (=> bs!659850 (= (= lt!1587662 lt!1586998) (= lambda!144853 lambda!144738))))

(assert (=> d!1302718 true))

(declare-fun c!744352 () Bool)

(declare-fun call!304384 () Bool)

(declare-fun bm!304378 () Bool)

(assert (=> bm!304378 (= call!304384 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 lt!1586460))) (ite c!744352 lambda!144848 lambda!144850)))))

(declare-fun b!4377035 () Bool)

(declare-fun e!2724524 () Bool)

(assert (=> b!4377035 (= e!2724524 (invariantList!719 (toList!3130 lt!1587662)))))

(declare-fun b!4377036 () Bool)

(declare-fun res!1802242 () Bool)

(assert (=> b!4377036 (=> (not res!1802242) (not e!2724524))))

(assert (=> b!4377036 (= res!1802242 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 lt!1586460))) lambda!144853))))

(assert (=> d!1302718 e!2724524))

(declare-fun res!1802243 () Bool)

(assert (=> d!1302718 (=> (not res!1802243) (not e!2724524))))

(assert (=> d!1302718 (= res!1802243 (forall!9261 (t!356190 lt!1586460) lambda!144853))))

(declare-fun e!2724523 () ListMap!2373)

(assert (=> d!1302718 (= lt!1587662 e!2724523)))

(assert (=> d!1302718 (= c!744352 ((_ is Nil!49140) (t!356190 lt!1586460)))))

(assert (=> d!1302718 (noDuplicateKeys!573 (t!356190 lt!1586460))))

(assert (=> d!1302718 (= (addToMapMapFromBucket!254 (t!356190 lt!1586460) (+!778 lt!1586446 (h!54733 lt!1586460))) lt!1587662)))

(declare-fun call!304385 () Bool)

(declare-fun bm!304379 () Bool)

(assert (=> bm!304379 (= call!304385 (forall!9261 (ite c!744352 (toList!3130 (+!778 lt!1586446 (h!54733 lt!1586460))) (t!356190 lt!1586460)) (ite c!744352 lambda!144848 lambda!144852)))))

(declare-fun bm!304380 () Bool)

(declare-fun call!304383 () Unit!74656)

(assert (=> bm!304380 (= call!304383 (lemmaContainsAllItsOwnKeys!101 (+!778 lt!1586446 (h!54733 lt!1586460))))))

(declare-fun b!4377037 () Bool)

(declare-fun e!2724525 () Bool)

(assert (=> b!4377037 (= e!2724525 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 lt!1586460))) lambda!144852))))

(assert (=> b!4377038 (= e!2724523 (+!778 lt!1586446 (h!54733 lt!1586460)))))

(declare-fun lt!1587666 () Unit!74656)

(assert (=> b!4377038 (= lt!1587666 call!304383)))

(assert (=> b!4377038 call!304384))

(declare-fun lt!1587647 () Unit!74656)

(assert (=> b!4377038 (= lt!1587647 lt!1587666)))

(assert (=> b!4377038 call!304385))

(declare-fun lt!1587649 () Unit!74656)

(declare-fun Unit!74952 () Unit!74656)

(assert (=> b!4377038 (= lt!1587649 Unit!74952)))

(assert (=> b!4377039 (= e!2724523 lt!1587665)))

(declare-fun lt!1587655 () ListMap!2373)

(assert (=> b!4377039 (= lt!1587655 (+!778 (+!778 lt!1586446 (h!54733 lt!1586460)) (h!54733 (t!356190 lt!1586460))))))

(assert (=> b!4377039 (= lt!1587665 (addToMapMapFromBucket!254 (t!356190 (t!356190 lt!1586460)) (+!778 (+!778 lt!1586446 (h!54733 lt!1586460)) (h!54733 (t!356190 lt!1586460)))))))

(declare-fun lt!1587661 () Unit!74656)

(assert (=> b!4377039 (= lt!1587661 call!304383)))

(assert (=> b!4377039 call!304384))

(declare-fun lt!1587654 () Unit!74656)

(assert (=> b!4377039 (= lt!1587654 lt!1587661)))

(assert (=> b!4377039 (forall!9261 (toList!3130 lt!1587655) lambda!144852)))

(declare-fun lt!1587664 () Unit!74656)

(declare-fun Unit!74953 () Unit!74656)

(assert (=> b!4377039 (= lt!1587664 Unit!74953)))

(assert (=> b!4377039 (forall!9261 (t!356190 (t!356190 lt!1586460)) lambda!144852)))

(declare-fun lt!1587656 () Unit!74656)

(declare-fun Unit!74954 () Unit!74656)

(assert (=> b!4377039 (= lt!1587656 Unit!74954)))

(declare-fun lt!1587658 () Unit!74656)

(declare-fun Unit!74955 () Unit!74656)

(assert (=> b!4377039 (= lt!1587658 Unit!74955)))

(declare-fun lt!1587648 () Unit!74656)

(assert (=> b!4377039 (= lt!1587648 (forallContained!1899 (toList!3130 lt!1587655) lambda!144852 (h!54733 (t!356190 lt!1586460))))))

(assert (=> b!4377039 (contains!11461 lt!1587655 (_1!27625 (h!54733 (t!356190 lt!1586460))))))

(declare-fun lt!1587667 () Unit!74656)

(declare-fun Unit!74956 () Unit!74656)

(assert (=> b!4377039 (= lt!1587667 Unit!74956)))

(assert (=> b!4377039 (contains!11461 lt!1587665 (_1!27625 (h!54733 (t!356190 lt!1586460))))))

(declare-fun lt!1587653 () Unit!74656)

(declare-fun Unit!74957 () Unit!74656)

(assert (=> b!4377039 (= lt!1587653 Unit!74957)))

(assert (=> b!4377039 (forall!9261 (t!356190 lt!1586460) lambda!144852)))

(declare-fun lt!1587660 () Unit!74656)

(declare-fun Unit!74958 () Unit!74656)

(assert (=> b!4377039 (= lt!1587660 Unit!74958)))

(assert (=> b!4377039 (forall!9261 (toList!3130 lt!1587655) lambda!144852)))

(declare-fun lt!1587650 () Unit!74656)

(declare-fun Unit!74959 () Unit!74656)

(assert (=> b!4377039 (= lt!1587650 Unit!74959)))

(declare-fun lt!1587657 () Unit!74656)

(declare-fun Unit!74960 () Unit!74656)

(assert (=> b!4377039 (= lt!1587657 Unit!74960)))

(declare-fun lt!1587663 () Unit!74656)

(assert (=> b!4377039 (= lt!1587663 (addForallContainsKeyThenBeforeAdding!101 (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587665 (_1!27625 (h!54733 (t!356190 lt!1586460))) (_2!27625 (h!54733 (t!356190 lt!1586460)))))))

(assert (=> b!4377039 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 lt!1586460))) lambda!144852)))

(declare-fun lt!1587651 () Unit!74656)

(assert (=> b!4377039 (= lt!1587651 lt!1587663)))

(assert (=> b!4377039 (forall!9261 (toList!3130 (+!778 lt!1586446 (h!54733 lt!1586460))) lambda!144852)))

(declare-fun lt!1587652 () Unit!74656)

(declare-fun Unit!74961 () Unit!74656)

(assert (=> b!4377039 (= lt!1587652 Unit!74961)))

(declare-fun res!1802241 () Bool)

(assert (=> b!4377039 (= res!1802241 call!304385)))

(assert (=> b!4377039 (=> (not res!1802241) (not e!2724525))))

(assert (=> b!4377039 e!2724525))

(declare-fun lt!1587659 () Unit!74656)

(declare-fun Unit!74962 () Unit!74656)

(assert (=> b!4377039 (= lt!1587659 Unit!74962)))

(assert (= (and d!1302718 c!744352) b!4377038))

(assert (= (and d!1302718 (not c!744352)) b!4377039))

(assert (= (and b!4377039 res!1802241) b!4377037))

(assert (= (or b!4377038 b!4377039) bm!304380))

(assert (= (or b!4377038 b!4377039) bm!304378))

(assert (= (or b!4377038 b!4377039) bm!304379))

(assert (= (and d!1302718 res!1802243) b!4377036))

(assert (= (and b!4377036 res!1802242) b!4377035))

(declare-fun m!5011495 () Bool)

(assert (=> bm!304378 m!5011495))

(declare-fun m!5011497 () Bool)

(assert (=> b!4377037 m!5011497))

(declare-fun m!5011499 () Bool)

(assert (=> b!4377035 m!5011499))

(declare-fun m!5011501 () Bool)

(assert (=> b!4377036 m!5011501))

(declare-fun m!5011503 () Bool)

(assert (=> b!4377039 m!5011503))

(declare-fun m!5011505 () Bool)

(assert (=> b!4377039 m!5011505))

(declare-fun m!5011507 () Bool)

(assert (=> b!4377039 m!5011507))

(declare-fun m!5011509 () Bool)

(assert (=> b!4377039 m!5011509))

(declare-fun m!5011511 () Bool)

(assert (=> b!4377039 m!5011511))

(assert (=> b!4377039 m!5011497))

(assert (=> b!4377039 m!5011497))

(assert (=> b!4377039 m!5009417))

(declare-fun m!5011513 () Bool)

(assert (=> b!4377039 m!5011513))

(declare-fun m!5011515 () Bool)

(assert (=> b!4377039 m!5011515))

(assert (=> b!4377039 m!5011511))

(declare-fun m!5011517 () Bool)

(assert (=> b!4377039 m!5011517))

(assert (=> b!4377039 m!5009417))

(assert (=> b!4377039 m!5011507))

(declare-fun m!5011519 () Bool)

(assert (=> b!4377039 m!5011519))

(declare-fun m!5011521 () Bool)

(assert (=> d!1302718 m!5011521))

(assert (=> d!1302718 m!5009891))

(assert (=> bm!304380 m!5009417))

(declare-fun m!5011523 () Bool)

(assert (=> bm!304380 m!5011523))

(declare-fun m!5011525 () Bool)

(assert (=> bm!304379 m!5011525))

(assert (=> b!4376019 d!1302718))

(declare-fun d!1302736 () Bool)

(declare-fun res!1802257 () Bool)

(declare-fun e!2724541 () Bool)

(assert (=> d!1302736 (=> res!1802257 e!2724541)))

(assert (=> d!1302736 (= res!1802257 ((_ is Nil!49140) (toList!3130 lt!1586856)))))

(assert (=> d!1302736 (= (forall!9261 (toList!3130 lt!1586856) lambda!144714) e!2724541)))

(declare-fun b!4377059 () Bool)

(declare-fun e!2724542 () Bool)

(assert (=> b!4377059 (= e!2724541 e!2724542)))

(declare-fun res!1802258 () Bool)

(assert (=> b!4377059 (=> (not res!1802258) (not e!2724542))))

(assert (=> b!4377059 (= res!1802258 (dynLambda!20705 lambda!144714 (h!54733 (toList!3130 lt!1586856))))))

(declare-fun b!4377060 () Bool)

(assert (=> b!4377060 (= e!2724542 (forall!9261 (t!356190 (toList!3130 lt!1586856)) lambda!144714))))

(assert (= (and d!1302736 (not res!1802257)) b!4377059))

(assert (= (and b!4377059 res!1802258) b!4377060))

(declare-fun b_lambda!134687 () Bool)

(assert (=> (not b_lambda!134687) (not b!4377059)))

(declare-fun m!5011531 () Bool)

(assert (=> b!4377059 m!5011531))

(declare-fun m!5011533 () Bool)

(assert (=> b!4377060 m!5011533))

(assert (=> b!4376019 d!1302736))

(declare-fun d!1302740 () Bool)

(declare-fun e!2724545 () Bool)

(assert (=> d!1302740 e!2724545))

(declare-fun res!1802259 () Bool)

(assert (=> d!1302740 (=> (not res!1802259) (not e!2724545))))

(declare-fun lt!1587683 () ListMap!2373)

(assert (=> d!1302740 (= res!1802259 (contains!11461 lt!1587683 (_1!27625 (h!54733 lt!1586460))))))

(declare-fun lt!1587685 () List!49264)

(assert (=> d!1302740 (= lt!1587683 (ListMap!2374 lt!1587685))))

(declare-fun lt!1587686 () Unit!74656)

(declare-fun lt!1587684 () Unit!74656)

(assert (=> d!1302740 (= lt!1587686 lt!1587684)))

(assert (=> d!1302740 (= (getValueByKey!538 lt!1587685 (_1!27625 (h!54733 lt!1586460))) (Some!10551 (_2!27625 (h!54733 lt!1586460))))))

(assert (=> d!1302740 (= lt!1587684 (lemmaContainsTupThenGetReturnValue!302 lt!1587685 (_1!27625 (h!54733 lt!1586460)) (_2!27625 (h!54733 lt!1586460))))))

(assert (=> d!1302740 (= lt!1587685 (insertNoDuplicatedKeys!137 (toList!3130 lt!1586446) (_1!27625 (h!54733 lt!1586460)) (_2!27625 (h!54733 lt!1586460))))))

(assert (=> d!1302740 (= (+!778 lt!1586446 (h!54733 lt!1586460)) lt!1587683)))

(declare-fun b!4377065 () Bool)

(declare-fun res!1802260 () Bool)

(assert (=> b!4377065 (=> (not res!1802260) (not e!2724545))))

(assert (=> b!4377065 (= res!1802260 (= (getValueByKey!538 (toList!3130 lt!1587683) (_1!27625 (h!54733 lt!1586460))) (Some!10551 (_2!27625 (h!54733 lt!1586460)))))))

(declare-fun b!4377066 () Bool)

(assert (=> b!4377066 (= e!2724545 (contains!11466 (toList!3130 lt!1587683) (h!54733 lt!1586460)))))

(assert (= (and d!1302740 res!1802259) b!4377065))

(assert (= (and b!4377065 res!1802260) b!4377066))

(declare-fun m!5011537 () Bool)

(assert (=> d!1302740 m!5011537))

(declare-fun m!5011539 () Bool)

(assert (=> d!1302740 m!5011539))

(declare-fun m!5011541 () Bool)

(assert (=> d!1302740 m!5011541))

(declare-fun m!5011543 () Bool)

(assert (=> d!1302740 m!5011543))

(declare-fun m!5011545 () Bool)

(assert (=> b!4377065 m!5011545))

(declare-fun m!5011547 () Bool)

(assert (=> b!4377066 m!5011547))

(assert (=> b!4376019 d!1302740))

(assert (=> b!4376019 d!1302708))

(declare-fun b!4377067 () Bool)

(declare-fun e!2724550 () Unit!74656)

(declare-fun Unit!74963 () Unit!74656)

(assert (=> b!4377067 (= e!2724550 Unit!74963)))

(declare-fun b!4377068 () Bool)

(declare-fun e!2724548 () Unit!74656)

(declare-fun lt!1587692 () Unit!74656)

(assert (=> b!4377068 (= e!2724548 lt!1587692)))

(declare-fun lt!1587694 () Unit!74656)

(assert (=> b!4377068 (= lt!1587694 (lemmaContainsKeyImpliesGetValueByKeyDefined!449 (toList!3130 lt!1586866) (_1!27625 (h!54733 lt!1586460))))))

(assert (=> b!4377068 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586866) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun lt!1587687 () Unit!74656)

(assert (=> b!4377068 (= lt!1587687 lt!1587694)))

(assert (=> b!4377068 (= lt!1587692 (lemmaInListThenGetKeysListContains!164 (toList!3130 lt!1586866) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun call!304387 () Bool)

(assert (=> b!4377068 call!304387))

(declare-fun b!4377069 () Bool)

(declare-fun e!2724549 () Bool)

(assert (=> b!4377069 (= e!2724549 (not (contains!11467 (keys!16659 lt!1586866) (_1!27625 (h!54733 lt!1586460)))))))

(declare-fun bm!304382 () Bool)

(declare-fun e!2724547 () List!49267)

(assert (=> bm!304382 (= call!304387 (contains!11467 e!2724547 (_1!27625 (h!54733 lt!1586460))))))

(declare-fun c!744360 () Bool)

(declare-fun c!744359 () Bool)

(assert (=> bm!304382 (= c!744360 c!744359)))

(declare-fun b!4377070 () Bool)

(assert (=> b!4377070 (= e!2724547 (getKeysList!167 (toList!3130 lt!1586866)))))

(declare-fun b!4377071 () Bool)

(assert (=> b!4377071 (= e!2724548 e!2724550)))

(declare-fun c!744358 () Bool)

(assert (=> b!4377071 (= c!744358 call!304387)))

(declare-fun b!4377072 () Bool)

(assert (=> b!4377072 (= e!2724547 (keys!16659 lt!1586866))))

(declare-fun d!1302744 () Bool)

(declare-fun e!2724546 () Bool)

(assert (=> d!1302744 e!2724546))

(declare-fun res!1802261 () Bool)

(assert (=> d!1302744 (=> res!1802261 e!2724546)))

(assert (=> d!1302744 (= res!1802261 e!2724549)))

(declare-fun res!1802262 () Bool)

(assert (=> d!1302744 (=> (not res!1802262) (not e!2724549))))

(declare-fun lt!1587691 () Bool)

(assert (=> d!1302744 (= res!1802262 (not lt!1587691))))

(declare-fun lt!1587688 () Bool)

(assert (=> d!1302744 (= lt!1587691 lt!1587688)))

(declare-fun lt!1587690 () Unit!74656)

(assert (=> d!1302744 (= lt!1587690 e!2724548)))

(assert (=> d!1302744 (= c!744359 lt!1587688)))

(assert (=> d!1302744 (= lt!1587688 (containsKey!839 (toList!3130 lt!1586866) (_1!27625 (h!54733 lt!1586460))))))

(assert (=> d!1302744 (= (contains!11461 lt!1586866 (_1!27625 (h!54733 lt!1586460))) lt!1587691)))

(declare-fun b!4377073 () Bool)

(declare-fun e!2724551 () Bool)

(assert (=> b!4377073 (= e!2724551 (contains!11467 (keys!16659 lt!1586866) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun b!4377074 () Bool)

(assert (=> b!4377074 false))

(declare-fun lt!1587693 () Unit!74656)

(declare-fun lt!1587689 () Unit!74656)

(assert (=> b!4377074 (= lt!1587693 lt!1587689)))

(assert (=> b!4377074 (containsKey!839 (toList!3130 lt!1586866) (_1!27625 (h!54733 lt!1586460)))))

(assert (=> b!4377074 (= lt!1587689 (lemmaInGetKeysListThenContainsKey!165 (toList!3130 lt!1586866) (_1!27625 (h!54733 lt!1586460))))))

(declare-fun Unit!74964 () Unit!74656)

(assert (=> b!4377074 (= e!2724550 Unit!74964)))

(declare-fun b!4377075 () Bool)

(assert (=> b!4377075 (= e!2724546 e!2724551)))

(declare-fun res!1802263 () Bool)

(assert (=> b!4377075 (=> (not res!1802263) (not e!2724551))))

(assert (=> b!4377075 (= res!1802263 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586866) (_1!27625 (h!54733 lt!1586460)))))))

(assert (= (and d!1302744 c!744359) b!4377068))

(assert (= (and d!1302744 (not c!744359)) b!4377071))

(assert (= (and b!4377071 c!744358) b!4377074))

(assert (= (and b!4377071 (not c!744358)) b!4377067))

(assert (= (or b!4377068 b!4377071) bm!304382))

(assert (= (and bm!304382 c!744360) b!4377070))

(assert (= (and bm!304382 (not c!744360)) b!4377072))

(assert (= (and d!1302744 res!1802262) b!4377069))

(assert (= (and d!1302744 (not res!1802261)) b!4377075))

(assert (= (and b!4377075 res!1802263) b!4377073))

(declare-fun m!5011549 () Bool)

(assert (=> b!4377068 m!5011549))

(declare-fun m!5011551 () Bool)

(assert (=> b!4377068 m!5011551))

(assert (=> b!4377068 m!5011551))

(declare-fun m!5011553 () Bool)

(assert (=> b!4377068 m!5011553))

(declare-fun m!5011555 () Bool)

(assert (=> b!4377068 m!5011555))

(declare-fun m!5011557 () Bool)

(assert (=> bm!304382 m!5011557))

(assert (=> b!4377075 m!5011551))

(assert (=> b!4377075 m!5011551))

(assert (=> b!4377075 m!5011553))

(declare-fun m!5011561 () Bool)

(assert (=> b!4377072 m!5011561))

(assert (=> b!4377073 m!5011561))

(assert (=> b!4377073 m!5011561))

(declare-fun m!5011563 () Bool)

(assert (=> b!4377073 m!5011563))

(declare-fun m!5011565 () Bool)

(assert (=> d!1302744 m!5011565))

(declare-fun m!5011567 () Bool)

(assert (=> b!4377070 m!5011567))

(assert (=> b!4377074 m!5011565))

(declare-fun m!5011569 () Bool)

(assert (=> b!4377074 m!5011569))

(assert (=> b!4377069 m!5011561))

(assert (=> b!4377069 m!5011561))

(assert (=> b!4377069 m!5011563))

(assert (=> b!4376019 d!1302744))

(declare-fun d!1302750 () Bool)

(declare-fun res!1802266 () Bool)

(declare-fun e!2724554 () Bool)

(assert (=> d!1302750 (=> res!1802266 e!2724554)))

(assert (=> d!1302750 (= res!1802266 ((_ is Nil!49140) lt!1586460))))

(assert (=> d!1302750 (= (forall!9261 lt!1586460 lambda!144714) e!2724554)))

(declare-fun b!4377078 () Bool)

(declare-fun e!2724555 () Bool)

(assert (=> b!4377078 (= e!2724554 e!2724555)))

(declare-fun res!1802267 () Bool)

(assert (=> b!4377078 (=> (not res!1802267) (not e!2724555))))

(assert (=> b!4377078 (= res!1802267 (dynLambda!20705 lambda!144714 (h!54733 lt!1586460)))))

(declare-fun b!4377079 () Bool)

(assert (=> b!4377079 (= e!2724555 (forall!9261 (t!356190 lt!1586460) lambda!144714))))

(assert (= (and d!1302750 (not res!1802266)) b!4377078))

(assert (= (and b!4377078 res!1802267) b!4377079))

(declare-fun b_lambda!134693 () Bool)

(assert (=> (not b_lambda!134693) (not b!4377078)))

(assert (=> b!4377078 m!5011367))

(assert (=> b!4377079 m!5009425))

(assert (=> b!4376019 d!1302750))

(declare-fun b!4377085 () Bool)

(declare-fun e!2724559 () Option!10551)

(assert (=> b!4377085 (= e!2724559 None!10550)))

(declare-fun b!4377082 () Bool)

(declare-fun e!2724558 () Option!10551)

(assert (=> b!4377082 (= e!2724558 (Some!10550 (_2!27626 (h!54734 (toList!3129 lt!1586561)))))))

(declare-fun b!4377084 () Bool)

(assert (=> b!4377084 (= e!2724559 (getValueByKey!537 (t!356191 (toList!3129 lt!1586561)) (_1!27626 lt!1586448)))))

(declare-fun d!1302756 () Bool)

(declare-fun c!744361 () Bool)

(assert (=> d!1302756 (= c!744361 (and ((_ is Cons!49141) (toList!3129 lt!1586561)) (= (_1!27626 (h!54734 (toList!3129 lt!1586561))) (_1!27626 lt!1586448))))))

(assert (=> d!1302756 (= (getValueByKey!537 (toList!3129 lt!1586561) (_1!27626 lt!1586448)) e!2724558)))

(declare-fun b!4377083 () Bool)

(assert (=> b!4377083 (= e!2724558 e!2724559)))

(declare-fun c!744362 () Bool)

(assert (=> b!4377083 (= c!744362 (and ((_ is Cons!49141) (toList!3129 lt!1586561)) (not (= (_1!27626 (h!54734 (toList!3129 lt!1586561))) (_1!27626 lt!1586448)))))))

(assert (= (and d!1302756 c!744361) b!4377082))

(assert (= (and d!1302756 (not c!744361)) b!4377083))

(assert (= (and b!4377083 c!744362) b!4377084))

(assert (= (and b!4377083 (not c!744362)) b!4377085))

(declare-fun m!5011581 () Bool)

(assert (=> b!4377084 m!5011581))

(assert (=> b!4375860 d!1302756))

(declare-fun d!1302760 () Bool)

(assert (=> d!1302760 (isDefined!7846 (getValueByKey!538 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918))))

(declare-fun lt!1587698 () Unit!74656)

(declare-fun choose!27277 (List!49264 K!10500) Unit!74656)

(assert (=> d!1302760 (= lt!1587698 (choose!27277 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918))))

(assert (=> d!1302760 (invariantList!719 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))))

(assert (=> d!1302760 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!449 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918) lt!1587698)))

(declare-fun bs!659893 () Bool)

(assert (= bs!659893 d!1302760))

(assert (=> bs!659893 m!5009463))

(assert (=> bs!659893 m!5009463))

(assert (=> bs!659893 m!5009465))

(declare-fun m!5011601 () Bool)

(assert (=> bs!659893 m!5011601))

(assert (=> bs!659893 m!5010633))

(assert (=> b!4376049 d!1302760))

(declare-fun d!1302774 () Bool)

(declare-fun isEmpty!28243 (Option!10552) Bool)

(assert (=> d!1302774 (= (isDefined!7846 (getValueByKey!538 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918)) (not (isEmpty!28243 (getValueByKey!538 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918))))))

(declare-fun bs!659894 () Bool)

(assert (= bs!659894 d!1302774))

(assert (=> bs!659894 m!5009463))

(declare-fun m!5011603 () Bool)

(assert (=> bs!659894 m!5011603))

(assert (=> b!4376049 d!1302774))

(declare-fun b!4377101 () Bool)

(declare-fun e!2724571 () Option!10552)

(assert (=> b!4377101 (= e!2724571 None!10551)))

(declare-fun d!1302776 () Bool)

(declare-fun c!744365 () Bool)

(assert (=> d!1302776 (= c!744365 (and ((_ is Cons!49140) (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) (= (_1!27625 (h!54733 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))) key!3918)))))

(declare-fun e!2724570 () Option!10552)

(assert (=> d!1302776 (= (getValueByKey!538 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918) e!2724570)))

(declare-fun b!4377100 () Bool)

(assert (=> b!4377100 (= e!2724571 (getValueByKey!538 (t!356190 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) key!3918))))

(declare-fun b!4377099 () Bool)

(assert (=> b!4377099 (= e!2724570 e!2724571)))

(declare-fun c!744366 () Bool)

(assert (=> b!4377099 (= c!744366 (and ((_ is Cons!49140) (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) (not (= (_1!27625 (h!54733 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))) key!3918))))))

(declare-fun b!4377098 () Bool)

(assert (=> b!4377098 (= e!2724570 (Some!10551 (_2!27625 (h!54733 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))))))))

(assert (= (and d!1302776 c!744365) b!4377098))

(assert (= (and d!1302776 (not c!744365)) b!4377099))

(assert (= (and b!4377099 c!744366) b!4377100))

(assert (= (and b!4377099 (not c!744366)) b!4377101))

(declare-fun m!5011605 () Bool)

(assert (=> b!4377100 m!5011605))

(assert (=> b!4376049 d!1302776))

(declare-fun d!1302778 () Bool)

(assert (=> d!1302778 (contains!11467 (getKeysList!167 (toList!3130 (extractMap!632 (toList!3129 lm!1707)))) key!3918)))

(declare-fun lt!1587704 () Unit!74656)

(declare-fun choose!27278 (List!49264 K!10500) Unit!74656)

(assert (=> d!1302778 (= lt!1587704 (choose!27278 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918))))

(assert (=> d!1302778 (invariantList!719 (toList!3130 (extractMap!632 (toList!3129 lm!1707))))))

(assert (=> d!1302778 (= (lemmaInListThenGetKeysListContains!164 (toList!3130 (extractMap!632 (toList!3129 lm!1707))) key!3918) lt!1587704)))

(declare-fun bs!659896 () Bool)

(assert (= bs!659896 d!1302778))

(assert (=> bs!659896 m!5009477))

(assert (=> bs!659896 m!5009477))

(declare-fun m!5011609 () Bool)

(assert (=> bs!659896 m!5011609))

(declare-fun m!5011611 () Bool)

(assert (=> bs!659896 m!5011611))

(assert (=> bs!659896 m!5010633))

(assert (=> b!4376049 d!1302778))

(declare-fun d!1302782 () Bool)

(declare-fun lt!1587707 () Bool)

(assert (=> d!1302782 (= lt!1587707 (select (content!7801 (toList!3129 lt!1586561)) lt!1586448))))

(declare-fun e!2724572 () Bool)

(assert (=> d!1302782 (= lt!1587707 e!2724572)))

(declare-fun res!1802278 () Bool)

(assert (=> d!1302782 (=> (not res!1802278) (not e!2724572))))

(assert (=> d!1302782 (= res!1802278 ((_ is Cons!49141) (toList!3129 lt!1586561)))))

(assert (=> d!1302782 (= (contains!11463 (toList!3129 lt!1586561) lt!1586448) lt!1587707)))

(declare-fun b!4377102 () Bool)

(declare-fun e!2724573 () Bool)

(assert (=> b!4377102 (= e!2724572 e!2724573)))

(declare-fun res!1802279 () Bool)

(assert (=> b!4377102 (=> res!1802279 e!2724573)))

(assert (=> b!4377102 (= res!1802279 (= (h!54734 (toList!3129 lt!1586561)) lt!1586448))))

(declare-fun b!4377103 () Bool)

(assert (=> b!4377103 (= e!2724573 (contains!11463 (t!356191 (toList!3129 lt!1586561)) lt!1586448))))

(assert (= (and d!1302782 res!1802278) b!4377102))

(assert (= (and b!4377102 (not res!1802279)) b!4377103))

(declare-fun m!5011613 () Bool)

(assert (=> d!1302782 m!5011613))

(declare-fun m!5011615 () Bool)

(assert (=> d!1302782 m!5011615))

(declare-fun m!5011617 () Bool)

(assert (=> b!4377103 m!5011617))

(assert (=> b!4375861 d!1302782))

(declare-fun d!1302784 () Bool)

(declare-fun res!1802280 () Bool)

(declare-fun e!2724574 () Bool)

(assert (=> d!1302784 (=> res!1802280 e!2724574)))

(assert (=> d!1302784 (= res!1802280 (and ((_ is Cons!49140) lt!1586480) (= (_1!27625 (h!54733 lt!1586480)) key!3918)))))

(assert (=> d!1302784 (= (containsKey!835 lt!1586480 key!3918) e!2724574)))

(declare-fun b!4377104 () Bool)

(declare-fun e!2724575 () Bool)

(assert (=> b!4377104 (= e!2724574 e!2724575)))

(declare-fun res!1802281 () Bool)

(assert (=> b!4377104 (=> (not res!1802281) (not e!2724575))))

(assert (=> b!4377104 (= res!1802281 ((_ is Cons!49140) lt!1586480))))

(declare-fun b!4377105 () Bool)

(assert (=> b!4377105 (= e!2724575 (containsKey!835 (t!356190 lt!1586480) key!3918))))

(assert (= (and d!1302784 (not res!1802280)) b!4377104))

(assert (= (and b!4377104 res!1802281) b!4377105))

(declare-fun m!5011623 () Bool)

(assert (=> b!4377105 m!5011623))

(assert (=> d!1302126 d!1302784))

(declare-fun d!1302788 () Bool)

(declare-fun res!1802284 () Bool)

(declare-fun e!2724578 () Bool)

(assert (=> d!1302788 (=> res!1802284 e!2724578)))

(assert (=> d!1302788 (= res!1802284 (not ((_ is Cons!49140) lt!1586458)))))

(assert (=> d!1302788 (= (noDuplicateKeys!573 lt!1586458) e!2724578)))

(declare-fun b!4377108 () Bool)

(declare-fun e!2724579 () Bool)

(assert (=> b!4377108 (= e!2724578 e!2724579)))

(declare-fun res!1802285 () Bool)

(assert (=> b!4377108 (=> (not res!1802285) (not e!2724579))))

(assert (=> b!4377108 (= res!1802285 (not (containsKey!835 (t!356190 lt!1586458) (_1!27625 (h!54733 lt!1586458)))))))

(declare-fun b!4377109 () Bool)

(assert (=> b!4377109 (= e!2724579 (noDuplicateKeys!573 (t!356190 lt!1586458)))))

(assert (= (and d!1302788 (not res!1802284)) b!4377108))

(assert (= (and b!4377108 res!1802285) b!4377109))

(declare-fun m!5011625 () Bool)

(assert (=> b!4377108 m!5011625))

(assert (=> b!4377109 m!5010667))

(assert (=> d!1302126 d!1302788))

(declare-fun d!1302790 () Bool)

(declare-fun lt!1587710 () Bool)

(assert (=> d!1302790 (= lt!1587710 (select (content!7804 e!2723871) key!3918))))

(declare-fun e!2724580 () Bool)

(assert (=> d!1302790 (= lt!1587710 e!2724580)))

(declare-fun res!1802286 () Bool)

(assert (=> d!1302790 (=> (not res!1802286) (not e!2724580))))

(assert (=> d!1302790 (= res!1802286 ((_ is Cons!49143) e!2723871))))

(assert (=> d!1302790 (= (contains!11467 e!2723871 key!3918) lt!1587710)))

(declare-fun b!4377110 () Bool)

(declare-fun e!2724581 () Bool)

(assert (=> b!4377110 (= e!2724580 e!2724581)))

(declare-fun res!1802287 () Bool)

(assert (=> b!4377110 (=> res!1802287 e!2724581)))

(assert (=> b!4377110 (= res!1802287 (= (h!54738 e!2723871) key!3918))))

(declare-fun b!4377111 () Bool)

(assert (=> b!4377111 (= e!2724581 (contains!11467 (t!356193 e!2723871) key!3918))))

(assert (= (and d!1302790 res!1802286) b!4377110))

(assert (= (and b!4377110 (not res!1802287)) b!4377111))

(declare-fun m!5011633 () Bool)

(assert (=> d!1302790 m!5011633))

(declare-fun m!5011635 () Bool)

(assert (=> d!1302790 m!5011635))

(declare-fun m!5011637 () Bool)

(assert (=> b!4377111 m!5011637))

(assert (=> bm!304260 d!1302790))

(declare-fun d!1302794 () Bool)

(declare-fun res!1802290 () Bool)

(declare-fun e!2724584 () Bool)

(assert (=> d!1302794 (=> res!1802290 e!2724584)))

(assert (=> d!1302794 (= res!1802290 (not ((_ is Cons!49140) (t!356190 newBucket!200))))))

(assert (=> d!1302794 (= (noDuplicateKeys!573 (t!356190 newBucket!200)) e!2724584)))

(declare-fun b!4377114 () Bool)

(declare-fun e!2724585 () Bool)

(assert (=> b!4377114 (= e!2724584 e!2724585)))

(declare-fun res!1802291 () Bool)

(assert (=> b!4377114 (=> (not res!1802291) (not e!2724585))))

(assert (=> b!4377114 (= res!1802291 (not (containsKey!835 (t!356190 (t!356190 newBucket!200)) (_1!27625 (h!54733 (t!356190 newBucket!200))))))))

(declare-fun b!4377115 () Bool)

(assert (=> b!4377115 (= e!2724585 (noDuplicateKeys!573 (t!356190 (t!356190 newBucket!200))))))

(assert (= (and d!1302794 (not res!1802290)) b!4377114))

(assert (= (and b!4377114 res!1802291) b!4377115))

(declare-fun m!5011643 () Bool)

(assert (=> b!4377114 m!5011643))

(declare-fun m!5011645 () Bool)

(assert (=> b!4377115 m!5011645))

(assert (=> b!4376029 d!1302794))

(declare-fun d!1302798 () Bool)

(declare-fun res!1802292 () Bool)

(declare-fun e!2724586 () Bool)

(assert (=> d!1302798 (=> res!1802292 e!2724586)))

(assert (=> d!1302798 (= res!1802292 ((_ is Nil!49140) newBucket!200))))

(assert (=> d!1302798 (= (forall!9261 newBucket!200 lambda!144717) e!2724586)))

(declare-fun b!4377116 () Bool)

(declare-fun e!2724587 () Bool)

(assert (=> b!4377116 (= e!2724586 e!2724587)))

(declare-fun res!1802293 () Bool)

(assert (=> b!4377116 (=> (not res!1802293) (not e!2724587))))

(assert (=> b!4377116 (= res!1802293 (dynLambda!20705 lambda!144717 (h!54733 newBucket!200)))))

(declare-fun b!4377117 () Bool)

(assert (=> b!4377117 (= e!2724587 (forall!9261 (t!356190 newBucket!200) lambda!144717))))

(assert (= (and d!1302798 (not res!1802292)) b!4377116))

(assert (= (and b!4377116 res!1802293) b!4377117))

(declare-fun b_lambda!134699 () Bool)

(assert (=> (not b_lambda!134699) (not b!4377116)))

(declare-fun m!5011647 () Bool)

(assert (=> b!4377116 m!5011647))

(declare-fun m!5011649 () Bool)

(assert (=> b!4377117 m!5011649))

(assert (=> d!1302220 d!1302798))

(declare-fun d!1302800 () Bool)

(assert (=> d!1302800 (= (invariantList!719 (toList!3130 lt!1586507)) (noDuplicatedKeys!134 (toList!3130 lt!1586507)))))

(declare-fun bs!659898 () Bool)

(assert (= bs!659898 d!1302800))

(declare-fun m!5011651 () Bool)

(assert (=> bs!659898 m!5011651))

(assert (=> d!1302134 d!1302800))

(declare-fun d!1302802 () Bool)

(declare-fun res!1802294 () Bool)

(declare-fun e!2724588 () Bool)

(assert (=> d!1302802 (=> res!1802294 e!2724588)))

(assert (=> d!1302802 (= res!1802294 ((_ is Nil!49141) (toList!3129 lt!1586459)))))

(assert (=> d!1302802 (= (forall!9259 (toList!3129 lt!1586459) lambda!144624) e!2724588)))

(declare-fun b!4377118 () Bool)

(declare-fun e!2724589 () Bool)

(assert (=> b!4377118 (= e!2724588 e!2724589)))

(declare-fun res!1802295 () Bool)

(assert (=> b!4377118 (=> (not res!1802295) (not e!2724589))))

(assert (=> b!4377118 (= res!1802295 (dynLambda!20703 lambda!144624 (h!54734 (toList!3129 lt!1586459))))))

(declare-fun b!4377119 () Bool)

(assert (=> b!4377119 (= e!2724589 (forall!9259 (t!356191 (toList!3129 lt!1586459)) lambda!144624))))

(assert (= (and d!1302802 (not res!1802294)) b!4377118))

(assert (= (and b!4377118 res!1802295) b!4377119))

(declare-fun b_lambda!134701 () Bool)

(assert (=> (not b_lambda!134701) (not b!4377118)))

(declare-fun m!5011653 () Bool)

(assert (=> b!4377118 m!5011653))

(declare-fun m!5011655 () Bool)

(assert (=> b!4377119 m!5011655))

(assert (=> d!1302134 d!1302802))

(declare-fun d!1302804 () Bool)

(assert (=> d!1302804 (= (invariantList!719 (toList!3130 lt!1586847)) (noDuplicatedKeys!134 (toList!3130 lt!1586847)))))

(declare-fun bs!659899 () Bool)

(assert (= bs!659899 d!1302804))

(declare-fun m!5011657 () Bool)

(assert (=> bs!659899 m!5011657))

(assert (=> d!1302212 d!1302804))

(declare-fun d!1302806 () Bool)

(declare-fun res!1802296 () Bool)

(declare-fun e!2724590 () Bool)

(assert (=> d!1302806 (=> res!1802296 e!2724590)))

(assert (=> d!1302806 (= res!1802296 ((_ is Nil!49141) (t!356191 (toList!3129 lm!1707))))))

(assert (=> d!1302806 (= (forall!9259 (t!356191 (toList!3129 lm!1707)) lambda!144711) e!2724590)))

(declare-fun b!4377120 () Bool)

(declare-fun e!2724591 () Bool)

(assert (=> b!4377120 (= e!2724590 e!2724591)))

(declare-fun res!1802297 () Bool)

(assert (=> b!4377120 (=> (not res!1802297) (not e!2724591))))

(assert (=> b!4377120 (= res!1802297 (dynLambda!20703 lambda!144711 (h!54734 (t!356191 (toList!3129 lm!1707)))))))

(declare-fun b!4377121 () Bool)

(assert (=> b!4377121 (= e!2724591 (forall!9259 (t!356191 (t!356191 (toList!3129 lm!1707))) lambda!144711))))

(assert (= (and d!1302806 (not res!1802296)) b!4377120))

(assert (= (and b!4377120 res!1802297) b!4377121))

(declare-fun b_lambda!134703 () Bool)

(assert (=> (not b_lambda!134703) (not b!4377120)))

(declare-fun m!5011659 () Bool)

(assert (=> b!4377120 m!5011659))

(declare-fun m!5011661 () Bool)

(assert (=> b!4377121 m!5011661))

(assert (=> d!1302212 d!1302806))

(declare-fun b!4377126 () Bool)

(declare-fun e!2724600 () Unit!74656)

(declare-fun Unit!74965 () Unit!74656)

(assert (=> b!4377126 (= e!2724600 Unit!74965)))

(declare-fun b!4377127 () Bool)

(declare-fun e!2724598 () Unit!74656)

(declare-fun lt!1587716 () Unit!74656)

(assert (=> b!4377127 (= e!2724598 lt!1587716)))

(declare-fun lt!1587718 () Unit!74656)

(assert (=> b!4377127 (= lt!1587718 (lemmaContainsKeyImpliesGetValueByKeyDefined!449 (toList!3130 lt!1586869) (_1!27625 lt!1586455)))))

(assert (=> b!4377127 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586869) (_1!27625 lt!1586455)))))

(declare-fun lt!1587711 () Unit!74656)

(assert (=> b!4377127 (= lt!1587711 lt!1587718)))

(assert (=> b!4377127 (= lt!1587716 (lemmaInListThenGetKeysListContains!164 (toList!3130 lt!1586869) (_1!27625 lt!1586455)))))

(declare-fun call!304388 () Bool)

(assert (=> b!4377127 call!304388))

(declare-fun b!4377128 () Bool)

(declare-fun e!2724599 () Bool)

(assert (=> b!4377128 (= e!2724599 (not (contains!11467 (keys!16659 lt!1586869) (_1!27625 lt!1586455))))))

(declare-fun bm!304383 () Bool)

(declare-fun e!2724597 () List!49267)

(assert (=> bm!304383 (= call!304388 (contains!11467 e!2724597 (_1!27625 lt!1586455)))))

(declare-fun c!744369 () Bool)

(declare-fun c!744368 () Bool)

(assert (=> bm!304383 (= c!744369 c!744368)))

(declare-fun b!4377129 () Bool)

(assert (=> b!4377129 (= e!2724597 (getKeysList!167 (toList!3130 lt!1586869)))))

(declare-fun b!4377130 () Bool)

(assert (=> b!4377130 (= e!2724598 e!2724600)))

(declare-fun c!744367 () Bool)

(assert (=> b!4377130 (= c!744367 call!304388)))

(declare-fun b!4377131 () Bool)

(assert (=> b!4377131 (= e!2724597 (keys!16659 lt!1586869))))

(declare-fun d!1302808 () Bool)

(declare-fun e!2724596 () Bool)

(assert (=> d!1302808 e!2724596))

(declare-fun res!1802302 () Bool)

(assert (=> d!1302808 (=> res!1802302 e!2724596)))

(assert (=> d!1302808 (= res!1802302 e!2724599)))

(declare-fun res!1802303 () Bool)

(assert (=> d!1302808 (=> (not res!1802303) (not e!2724599))))

(declare-fun lt!1587715 () Bool)

(assert (=> d!1302808 (= res!1802303 (not lt!1587715))))

(declare-fun lt!1587712 () Bool)

(assert (=> d!1302808 (= lt!1587715 lt!1587712)))

(declare-fun lt!1587714 () Unit!74656)

(assert (=> d!1302808 (= lt!1587714 e!2724598)))

(assert (=> d!1302808 (= c!744368 lt!1587712)))

(assert (=> d!1302808 (= lt!1587712 (containsKey!839 (toList!3130 lt!1586869) (_1!27625 lt!1586455)))))

(assert (=> d!1302808 (= (contains!11461 lt!1586869 (_1!27625 lt!1586455)) lt!1587715)))

(declare-fun b!4377132 () Bool)

(declare-fun e!2724601 () Bool)

(assert (=> b!4377132 (= e!2724601 (contains!11467 (keys!16659 lt!1586869) (_1!27625 lt!1586455)))))

(declare-fun b!4377133 () Bool)

(assert (=> b!4377133 false))

(declare-fun lt!1587717 () Unit!74656)

(declare-fun lt!1587713 () Unit!74656)

(assert (=> b!4377133 (= lt!1587717 lt!1587713)))

(assert (=> b!4377133 (containsKey!839 (toList!3130 lt!1586869) (_1!27625 lt!1586455))))

(assert (=> b!4377133 (= lt!1587713 (lemmaInGetKeysListThenContainsKey!165 (toList!3130 lt!1586869) (_1!27625 lt!1586455)))))

(declare-fun Unit!74966 () Unit!74656)

(assert (=> b!4377133 (= e!2724600 Unit!74966)))

(declare-fun b!4377134 () Bool)

(assert (=> b!4377134 (= e!2724596 e!2724601)))

(declare-fun res!1802304 () Bool)

(assert (=> b!4377134 (=> (not res!1802304) (not e!2724601))))

(assert (=> b!4377134 (= res!1802304 (isDefined!7846 (getValueByKey!538 (toList!3130 lt!1586869) (_1!27625 lt!1586455))))))

(assert (= (and d!1302808 c!744368) b!4377127))

(assert (= (and d!1302808 (not c!744368)) b!4377130))

(assert (= (and b!4377130 c!744367) b!4377133))

(assert (= (and b!4377130 (not c!744367)) b!4377126))

(assert (= (or b!4377127 b!4377130) bm!304383))

(assert (= (and bm!304383 c!744369) b!4377129))

(assert (= (and bm!304383 (not c!744369)) b!4377131))

(assert (= (and d!1302808 res!1802303) b!4377128))

(assert (= (and d!1302808 (not res!1802302)) b!4377134))

(assert (= (and b!4377134 res!1802304) b!4377132))

(declare-fun m!5011663 () Bool)

(assert (=> b!4377127 m!5011663))

(assert (=> b!4377127 m!5009443))

(assert (=> b!4377127 m!5009443))

(declare-fun m!5011665 () Bool)

(assert (=> b!4377127 m!5011665))

(declare-fun m!5011667 () Bool)

(assert (=> b!4377127 m!5011667))

(declare-fun m!5011669 () Bool)

(assert (=> bm!304383 m!5011669))

(assert (=> b!4377134 m!5009443))

(assert (=> b!4377134 m!5009443))

(assert (=> b!4377134 m!5011665))

(declare-fun m!5011671 () Bool)

(assert (=> b!4377131 m!5011671))

(assert (=> b!4377132 m!5011671))

(assert (=> b!4377132 m!5011671))

(declare-fun m!5011673 () Bool)

(assert (=> b!4377132 m!5011673))

(declare-fun m!5011675 () Bool)

(assert (=> d!1302808 m!5011675))

(declare-fun m!5011677 () Bool)

(assert (=> b!4377129 m!5011677))

(assert (=> b!4377133 m!5011675))

(declare-fun m!5011679 () Bool)

(assert (=> b!4377133 m!5011679))

(assert (=> b!4377128 m!5011671))

(assert (=> b!4377128 m!5011671))

(assert (=> b!4377128 m!5011673))

(assert (=> d!1302216 d!1302808))

(declare-fun b!4377140 () Bool)

(declare-fun e!2724605 () Option!10552)

(assert (=> b!4377140 (= e!2724605 None!10551)))

(declare-fun d!1302810 () Bool)

(declare-fun c!744370 () Bool)

(assert (=> d!1302810 (= c!744370 (and ((_ is Cons!49140) lt!1586871) (= (_1!27625 (h!54733 lt!1586871)) (_1!27625 lt!1586455))))))

(declare-fun e!2724604 () Option!10552)

(assert (=> d!1302810 (= (getValueByKey!538 lt!1586871 (_1!27625 lt!1586455)) e!2724604)))

(declare-fun b!4377139 () Bool)

(assert (=> b!4377139 (= e!2724605 (getValueByKey!538 (t!356190 lt!1586871) (_1!27625 lt!1586455)))))

(declare-fun b!4377138 () Bool)

(assert (=> b!4377138 (= e!2724604 e!2724605)))

(declare-fun c!744371 () Bool)

(assert (=> b!4377138 (= c!744371 (and ((_ is Cons!49140) lt!1586871) (not (= (_1!27625 (h!54733 lt!1586871)) (_1!27625 lt!1586455)))))))

(declare-fun b!4377137 () Bool)

(assert (=> b!4377137 (= e!2724604 (Some!10551 (_2!27625 (h!54733 lt!1586871))))))

(assert (= (and d!1302810 c!744370) b!4377137))

(assert (= (and d!1302810 (not c!744370)) b!4377138))

(assert (= (and b!4377138 c!744371) b!4377139))

(assert (= (and b!4377138 (not c!744371)) b!4377140))

(declare-fun m!5011683 () Bool)

(assert (=> b!4377139 m!5011683))

(assert (=> d!1302216 d!1302810))

(declare-fun d!1302812 () Bool)

(assert (=> d!1302812 (= (getValueByKey!538 lt!1586871 (_1!27625 lt!1586455)) (Some!10551 (_2!27625 lt!1586455)))))

(declare-fun lt!1587719 () Unit!74656)

(assert (=> d!1302812 (= lt!1587719 (choose!27274 lt!1586871 (_1!27625 lt!1586455) (_2!27625 lt!1586455)))))

(declare-fun e!2724606 () Bool)

(assert (=> d!1302812 e!2724606))

(declare-fun res!1802307 () Bool)

(assert (=> d!1302812 (=> (not res!1802307) (not e!2724606))))

(assert (=> d!1302812 (= res!1802307 (invariantList!719 lt!1586871))))

(assert (=> d!1302812 (= (lemmaContainsTupThenGetReturnValue!302 lt!1586871 (_1!27625 lt!1586455) (_2!27625 lt!1586455)) lt!1587719)))

(declare-fun b!4377141 () Bool)

(declare-fun res!1802308 () Bool)

(assert (=> b!4377141 (=> (not res!1802308) (not e!2724606))))

(assert (=> b!4377141 (= res!1802308 (containsKey!839 lt!1586871 (_1!27625 lt!1586455)))))

(declare-fun b!4377142 () Bool)

(assert (=> b!4377142 (= e!2724606 (contains!11466 lt!1586871 (tuple2!48663 (_1!27625 lt!1586455) (_2!27625 lt!1586455))))))

(assert (= (and d!1302812 res!1802307) b!4377141))

(assert (= (and b!4377141 res!1802308) b!4377142))

(assert (=> d!1302812 m!5009437))

(declare-fun m!5011685 () Bool)

(assert (=> d!1302812 m!5011685))

(declare-fun m!5011687 () Bool)

(assert (=> d!1302812 m!5011687))

(declare-fun m!5011689 () Bool)

(assert (=> b!4377141 m!5011689))

(declare-fun m!5011691 () Bool)

(assert (=> b!4377142 m!5011691))

(assert (=> d!1302216 d!1302812))

(declare-fun b!4377145 () Bool)

(declare-fun e!2724610 () List!49264)

(declare-fun e!2724613 () List!49264)

(assert (=> b!4377145 (= e!2724610 e!2724613)))

(declare-fun res!1802312 () Bool)

(assert (=> b!4377145 (= res!1802312 ((_ is Cons!49140) (toList!3130 lt!1586446)))))

(declare-fun e!2724608 () Bool)

(assert (=> b!4377145 (=> (not res!1802312) (not e!2724608))))

(declare-fun c!744374 () Bool)

(assert (=> b!4377145 (= c!744374 e!2724608)))

(declare-fun b!4377146 () Bool)

(declare-fun e!2724614 () List!49264)

(declare-fun call!304390 () List!49264)

(assert (=> b!4377146 (= e!2724614 call!304390)))

(declare-fun b!4377147 () Bool)

(declare-fun call!304389 () List!49264)

(assert (=> b!4377147 (= e!2724610 call!304389)))

(declare-fun lt!1587724 () List!49267)

(declare-fun call!304391 () List!49267)

(assert (=> b!4377147 (= lt!1587724 call!304391)))

(declare-fun lt!1587725 () Unit!74656)

(assert (=> b!4377147 (= lt!1587725 (lemmaSubseqRefl!80 lt!1587724))))

(assert (=> b!4377147 (subseq!596 lt!1587724 lt!1587724)))

(declare-fun lt!1587726 () Unit!74656)

(assert (=> b!4377147 (= lt!1587726 lt!1587725)))

(declare-fun lt!1587730 () List!49264)

(declare-fun b!4377148 () Bool)

(declare-fun e!2724611 () Bool)

(assert (=> b!4377148 (= e!2724611 (= (content!7804 (getKeysList!167 lt!1587730)) ((_ map or) (content!7804 (getKeysList!167 (toList!3130 lt!1586446))) (store ((as const (Array K!10500 Bool)) false) (_1!27625 lt!1586455) true))))))

(declare-fun c!744372 () Bool)

(declare-fun bm!304384 () Bool)

(declare-fun lt!1587727 () List!49264)

(assert (=> bm!304384 (= call!304391 (getKeysList!167 (ite c!744372 (toList!3130 lt!1586446) lt!1587727)))))

(declare-fun b!4377149 () Bool)

(declare-fun res!1802311 () Bool)

(assert (=> b!4377149 (=> (not res!1802311) (not e!2724611))))

(assert (=> b!4377149 (= res!1802311 (containsKey!839 lt!1587730 (_1!27625 lt!1586455)))))

(declare-fun b!4377150 () Bool)

(assert (=> b!4377150 false))

(declare-fun lt!1587728 () Unit!74656)

(declare-fun lt!1587729 () Unit!74656)

(assert (=> b!4377150 (= lt!1587728 lt!1587729)))

(assert (=> b!4377150 (containsKey!839 (t!356190 (toList!3130 lt!1586446)) (_1!27625 (h!54733 (toList!3130 lt!1586446))))))

(assert (=> b!4377150 (= lt!1587729 (lemmaInGetKeysListThenContainsKey!165 (t!356190 (toList!3130 lt!1586446)) (_1!27625 (h!54733 (toList!3130 lt!1586446)))))))

(declare-fun lt!1587720 () Unit!74656)

(declare-fun lt!1587723 () Unit!74656)

(assert (=> b!4377150 (= lt!1587720 lt!1587723)))

(assert (=> b!4377150 (contains!11467 call!304391 (_1!27625 (h!54733 (toList!3130 lt!1586446))))))

(assert (=> b!4377150 (= lt!1587723 (lemmaInListThenGetKeysListContains!164 lt!1587727 (_1!27625 (h!54733 (toList!3130 lt!1586446)))))))

(assert (=> b!4377150 (= lt!1587727 (insertNoDuplicatedKeys!137 (t!356190 (toList!3130 lt!1586446)) (_1!27625 lt!1586455) (_2!27625 lt!1586455)))))

(declare-fun e!2724615 () Unit!74656)

(declare-fun Unit!74967 () Unit!74656)

(assert (=> b!4377150 (= e!2724615 Unit!74967)))

(declare-fun c!744373 () Bool)

(declare-fun e!2724612 () List!49264)

(declare-fun bm!304385 () Bool)

(assert (=> bm!304385 (= call!304389 ($colon$colon!721 (ite c!744372 (t!356190 (toList!3130 lt!1586446)) (ite c!744374 (toList!3130 lt!1586446) e!2724612)) (ite (or c!744372 c!744374) (tuple2!48663 (_1!27625 lt!1586455) (_2!27625 lt!1586455)) (ite c!744373 (h!54733 (toList!3130 lt!1586446)) (tuple2!48663 (_1!27625 lt!1586455) (_2!27625 lt!1586455))))))))

(declare-fun b!4377151 () Bool)

(assert (=> b!4377151 (= e!2724612 Nil!49140)))

(declare-fun b!4377152 () Bool)

(declare-fun Unit!74968 () Unit!74656)

(assert (=> b!4377152 (= e!2724615 Unit!74968)))

(declare-fun b!4377153 () Bool)

(declare-fun lt!1587722 () List!49264)

(assert (=> b!4377153 (= e!2724614 lt!1587722)))

(assert (=> b!4377153 (= lt!1587722 call!304390)))

(declare-fun c!744375 () Bool)

(assert (=> b!4377153 (= c!744375 (containsKey!839 (insertNoDuplicatedKeys!137 (t!356190 (toList!3130 lt!1586446)) (_1!27625 lt!1586455) (_2!27625 lt!1586455)) (_1!27625 (h!54733 (toList!3130 lt!1586446)))))))

(declare-fun lt!1587721 () Unit!74656)

(assert (=> b!4377153 (= lt!1587721 e!2724615)))

(declare-fun d!1302814 () Bool)

(assert (=> d!1302814 e!2724611))

(declare-fun res!1802310 () Bool)

(assert (=> d!1302814 (=> (not res!1802310) (not e!2724611))))

(assert (=> d!1302814 (= res!1802310 (invariantList!719 lt!1587730))))

(assert (=> d!1302814 (= lt!1587730 e!2724610)))

(assert (=> d!1302814 (= c!744372 (and ((_ is Cons!49140) (toList!3130 lt!1586446)) (= (_1!27625 (h!54733 (toList!3130 lt!1586446))) (_1!27625 lt!1586455))))))

(assert (=> d!1302814 (invariantList!719 (toList!3130 lt!1586446))))

(assert (=> d!1302814 (= (insertNoDuplicatedKeys!137 (toList!3130 lt!1586446) (_1!27625 lt!1586455) (_2!27625 lt!1586455)) lt!1587730)))

(declare-fun bm!304386 () Bool)

(declare-fun call!304392 () List!49264)

(assert (=> bm!304386 (= call!304390 call!304392)))

(declare-fun c!744376 () Bool)

(assert (=> bm!304386 (= c!744376 c!744373)))

(declare-fun b!4377154 () Bool)

(assert (=> b!4377154 (= e!2724613 call!304392)))

(declare-fun b!4377155 () Bool)

(assert (=> b!4377155 (= e!2724612 (insertNoDuplicatedKeys!137 (t!356190 (toList!3130 lt!1586446)) (_1!27625 lt!1586455) (_2!27625 lt!1586455)))))

(declare-fun b!4377156 () Bool)

(assert (=> b!4377156 (= c!744373 ((_ is Cons!49140) (toList!3130 lt!1586446)))))

(assert (=> b!4377156 (= e!2724613 e!2724614)))

(declare-fun b!4377157 () Bool)

(declare-fun res!1802309 () Bool)

(assert (=> b!4377157 (=> (not res!1802309) (not e!2724611))))

(assert (=> b!4377157 (= res!1802309 (contains!11466 lt!1587730 (tuple2!48663 (_1!27625 lt!1586455) (_2!27625 lt!1586455))))))

(declare-fun bm!304387 () Bool)

(assert (=> bm!304387 (= call!304392 call!304389)))

(declare-fun b!4377158 () Bool)

(assert (=> b!4377158 (= e!2724608 (not (containsKey!839 (toList!3130 lt!1586446) (_1!27625 lt!1586455))))))

(assert (= (and d!1302814 c!744372) b!4377147))

(assert (= (and d!1302814 (not c!744372)) b!4377145))

(assert (= (and b!4377145 res!1802312) b!4377158))

(assert (= (and b!4377145 c!744374) b!4377154))

(assert (= (and b!4377145 (not c!744374)) b!4377156))

(assert (= (and b!4377156 c!744373) b!4377153))

(assert (= (and b!4377156 (not c!744373)) b!4377146))

(assert (= (and b!4377153 c!744375) b!4377150))

(assert (= (and b!4377153 (not c!744375)) b!4377152))

(assert (= (or b!4377153 b!4377146) bm!304386))

(assert (= (and bm!304386 c!744376) b!4377155))

(assert (= (and bm!304386 (not c!744376)) b!4377151))

(assert (= (or b!4377154 bm!304386) bm!304387))

(assert (= (or b!4377147 b!4377150) bm!304384))

(assert (= (or b!4377147 bm!304387) bm!304385))

(assert (= (and d!1302814 res!1802310) b!4377149))

(assert (= (and b!4377149 res!1802311) b!4377157))

(assert (= (and b!4377157 res!1802309) b!4377148))

(declare-fun m!5011693 () Bool)

(assert (=> b!4377149 m!5011693))

(declare-fun m!5011695 () Bool)

(assert (=> b!4377155 m!5011695))

(declare-fun m!5011697 () Bool)

(assert (=> b!4377147 m!5011697))

(declare-fun m!5011699 () Bool)

(assert (=> b!4377147 m!5011699))

(declare-fun m!5011701 () Bool)

(assert (=> bm!304384 m!5011701))

(assert (=> b!4377150 m!5011695))

(declare-fun m!5011703 () Bool)

(assert (=> b!4377150 m!5011703))

(declare-fun m!5011705 () Bool)

(assert (=> b!4377150 m!5011705))

(declare-fun m!5011707 () Bool)

(assert (=> b!4377150 m!5011707))

(declare-fun m!5011709 () Bool)

(assert (=> b!4377150 m!5011709))

(assert (=> b!4377153 m!5011695))

(assert (=> b!4377153 m!5011695))

(declare-fun m!5011713 () Bool)

(assert (=> b!4377153 m!5011713))

(declare-fun m!5011715 () Bool)

(assert (=> d!1302814 m!5011715))

(declare-fun m!5011717 () Bool)

(assert (=> d!1302814 m!5011717))

(declare-fun m!5011719 () Bool)

(assert (=> b!4377148 m!5011719))

(declare-fun m!5011721 () Bool)

(assert (=> b!4377148 m!5011721))

(declare-fun m!5011723 () Bool)

(assert (=> b!4377148 m!5011723))

(assert (=> b!4377148 m!5011077))

(assert (=> b!4377148 m!5011719))

(declare-fun m!5011725 () Bool)

(assert (=> b!4377148 m!5011725))

(assert (=> b!4377148 m!5011721))

(declare-fun m!5011727 () Bool)

(assert (=> b!4377158 m!5011727))

(declare-fun m!5011729 () Bool)

(assert (=> b!4377157 m!5011729))

(declare-fun m!5011731 () Bool)

(assert (=> bm!304385 m!5011731))

(assert (=> d!1302216 d!1302814))

(declare-fun b!4377163 () Bool)

(declare-fun e!2724618 () Option!10551)

(assert (=> b!4377163 (= e!2724618 None!10550)))

(declare-fun b!4377160 () Bool)

(declare-fun e!2724617 () Option!10551)

(assert (=> b!4377160 (= e!2724617 (Some!10550 (_2!27626 (h!54734 (toList!3129 lt!1586786)))))))

(declare-fun b!4377162 () Bool)

(assert (=> b!4377162 (= e!2724618 (getValueByKey!537 (t!356191 (toList!3129 lt!1586786)) (_1!27626 (tuple2!48665 hash!377 lt!1586452))))))

(declare-fun c!744377 () Bool)

(declare-fun d!1302824 () Bool)

(assert (=> d!1302824 (= c!744377 (and ((_ is Cons!49141) (toList!3129 lt!1586786)) (= (_1!27626 (h!54734 (toList!3129 lt!1586786))) (_1!27626 (tuple2!48665 hash!377 lt!1586452)))))))

(assert (=> d!1302824 (= (getValueByKey!537 (toList!3129 lt!1586786) (_1!27626 (tuple2!48665 hash!377 lt!1586452))) e!2724617)))

(declare-fun b!4377161 () Bool)

(assert (=> b!4377161 (= e!2724617 e!2724618)))

(declare-fun c!744378 () Bool)

(assert (=> b!4377161 (= c!744378 (and ((_ is Cons!49141) (toList!3129 lt!1586786)) (not (= (_1!27626 (h!54734 (toList!3129 lt!1586786))) (_1!27626 (tuple2!48665 hash!377 lt!1586452))))))))

(assert (= (and d!1302824 c!744377) b!4377160))

(assert (= (and d!1302824 (not c!744377)) b!4377161))

(assert (= (and b!4377161 c!744378) b!4377162))

(assert (= (and b!4377161 (not c!744378)) b!4377163))

(declare-fun m!5011737 () Bool)

(assert (=> b!4377162 m!5011737))

(assert (=> b!4375995 d!1302824))

(declare-fun d!1302832 () Bool)

(declare-fun res!1802313 () Bool)

(declare-fun e!2724619 () Bool)

(assert (=> d!1302832 (=> res!1802313 e!2724619)))

(assert (=> d!1302832 (= res!1802313 ((_ is Nil!49141) (toList!3129 lm!1707)))))

(assert (=> d!1302832 (= (forall!9259 (toList!3129 lm!1707) lambda!144721) e!2724619)))

(declare-fun b!4377164 () Bool)

(declare-fun e!2724620 () Bool)

(assert (=> b!4377164 (= e!2724619 e!2724620)))

(declare-fun res!1802314 () Bool)

(assert (=> b!4377164 (=> (not res!1802314) (not e!2724620))))

(assert (=> b!4377164 (= res!1802314 (dynLambda!20703 lambda!144721 (h!54734 (toList!3129 lm!1707))))))

(declare-fun b!4377165 () Bool)

(assert (=> b!4377165 (= e!2724620 (forall!9259 (t!356191 (toList!3129 lm!1707)) lambda!144721))))

(assert (= (and d!1302832 (not res!1802313)) b!4377164))

(assert (= (and b!4377164 res!1802314) b!4377165))

(declare-fun b_lambda!134791 () Bool)

(assert (=> (not b_lambda!134791) (not b!4377164)))

(declare-fun m!5011743 () Bool)

(assert (=> b!4377164 m!5011743))

(declare-fun m!5011745 () Bool)

(assert (=> b!4377165 m!5011745))

(assert (=> d!1302228 d!1302832))

(declare-fun d!1302844 () Bool)

(declare-fun res!1802315 () Bool)

(declare-fun e!2724621 () Bool)

(assert (=> d!1302844 (=> res!1802315 e!2724621)))

(assert (=> d!1302844 (= res!1802315 ((_ is Nil!49140) lt!1586452))))

(assert (=> d!1302844 (= (forall!9261 lt!1586452 lambda!144613) e!2724621)))

(declare-fun b!4377166 () Bool)

(declare-fun e!2724622 () Bool)

(assert (=> b!4377166 (= e!2724621 e!2724622)))

(declare-fun res!1802316 () Bool)

(assert (=> b!4377166 (=> (not res!1802316) (not e!2724622))))

(assert (=> b!4377166 (= res!1802316 (dynLambda!20705 lambda!144613 (h!54733 lt!1586452)))))

(declare-fun b!4377167 () Bool)

(assert (=> b!4377167 (= e!2724622 (forall!9261 (t!356190 lt!1586452) lambda!144613))))

(assert (= (and d!1302844 (not res!1802315)) b!4377166))

(assert (= (and b!4377166 res!1802316) b!4377167))

(declare-fun b_lambda!134793 () Bool)

(assert (=> (not b_lambda!134793) (not b!4377166)))

(declare-fun m!5011751 () Bool)

(assert (=> b!4377166 m!5011751))

(declare-fun m!5011753 () Bool)

(assert (=> b!4377167 m!5011753))

(assert (=> d!1302118 d!1302844))

(assert (=> b!4376054 d!1302496))

(assert (=> b!4376054 d!1302498))

(declare-fun d!1302854 () Bool)

(declare-fun res!1802317 () Bool)

(declare-fun e!2724623 () Bool)

(assert (=> d!1302854 (=> res!1802317 e!2724623)))

(assert (=> d!1302854 (= res!1802317 ((_ is Nil!49140) (toList!3130 (+!778 lt!1586446 lt!1586455))))))

(assert (=> d!1302854 (= (forall!9261 (toList!3130 (+!778 lt!1586446 lt!1586455)) (ite c!744113 lambda!144707 lambda!144708)) e!2724623)))

(declare-fun b!4377168 () Bool)

(declare-fun e!2724624 () Bool)

(assert (=> b!4377168 (= e!2724623 e!2724624)))

(declare-fun res!1802318 () Bool)

(assert (=> b!4377168 (=> (not res!1802318) (not e!2724624))))

(assert (=> b!4377168 (= res!1802318 (dynLambda!20705 (ite c!744113 lambda!144707 lambda!144708) (h!54733 (toList!3130 (+!778 lt!1586446 lt!1586455)))))))

(declare-fun b!4377169 () Bool)

(assert (=> b!4377169 (= e!2724624 (forall!9261 (t!356190 (toList!3130 (+!778 lt!1586446 lt!1586455))) (ite c!744113 lambda!144707 lambda!144708)))))

(assert (= (and d!1302854 (not res!1802317)) b!4377168))

(assert (= (and b!4377168 res!1802318) b!4377169))

(declare-fun b_lambda!134795 () Bool)

(assert (=> (not b_lambda!134795) (not b!4377168)))

(declare-fun m!5011785 () Bool)

(assert (=> b!4377168 m!5011785))

(declare-fun m!5011787 () Bool)

(assert (=> b!4377169 m!5011787))

(assert (=> bm!304252 d!1302854))

(declare-fun d!1302890 () Bool)

(assert (=> d!1302890 (= (invariantList!719 (toList!3130 lt!1586873)) (noDuplicatedKeys!134 (toList!3130 lt!1586873)))))

(declare-fun bs!659934 () Bool)

(assert (= bs!659934 d!1302890))

(declare-fun m!5011793 () Bool)

(assert (=> bs!659934 m!5011793))

(assert (=> d!1302218 d!1302890))

(declare-fun d!1302896 () Bool)

(declare-fun res!1802319 () Bool)

(declare-fun e!2724625 () Bool)

(assert (=> d!1302896 (=> res!1802319 e!2724625)))

(assert (=> d!1302896 (= res!1802319 ((_ is Nil!49141) (toList!3129 lt!1586445)))))

(assert (=> d!1302896 (= (forall!9259 (toList!3129 lt!1586445) lambda!144716) e!2724625)))

(declare-fun b!4377170 () Bool)

(declare-fun e!2724626 () Bool)

(assert (=> b!4377170 (= e!2724625 e!2724626)))

(declare-fun res!1802320 () Bool)

(assert (=> b!4377170 (=> (not res!1802320) (not e!2724626))))

(assert (=> b!4377170 (= res!1802320 (dynLambda!20703 lambda!144716 (h!54734 (toList!3129 lt!1586445))))))

(declare-fun b!4377171 () Bool)

(assert (=> b!4377171 (= e!2724626 (forall!9259 (t!356191 (toList!3129 lt!1586445)) lambda!144716))))

(assert (= (and d!1302896 (not res!1802319)) b!4377170))

(assert (= (and b!4377170 res!1802320) b!4377171))

(declare-fun b_lambda!134797 () Bool)

(assert (=> (not b_lambda!134797) (not b!4377170)))

(declare-fun m!5011801 () Bool)

(assert (=> b!4377170 m!5011801))

(declare-fun m!5011803 () Bool)

(assert (=> b!4377171 m!5011803))

(assert (=> d!1302218 d!1302896))

(declare-fun d!1302904 () Bool)

(declare-fun res!1802321 () Bool)

(declare-fun e!2724627 () Bool)

(assert (=> d!1302904 (=> res!1802321 e!2724627)))

(assert (=> d!1302904 (= res!1802321 ((_ is Nil!49141) (toList!3129 (+!777 lm!1707 (tuple2!48665 hash!377 newBucket!200)))))))

(assert (=> d!1302904 (= (forall!9259 (toList!3129 (+!777 lm!1707 (tuple2!48665 hash!377 newBucket!200))) lambda!144607) e!2724627)))

(declare-fun b!4377172 () Bool)

(declare-fun e!2724628 () Bool)

(assert (=> b!4377172 (= e!2724627 e!2724628)))

(declare-fun res!1802322 () Bool)

(assert (=> b!4377172 (=> (not res!1802322) (not e!2724628))))

(assert (=> b!4377172 (= res!1802322 (dynLambda!20703 lambda!144607 (h!54734 (toList!3129 (+!777 lm!1707 (tuple2!48665 hash!377 newBucket!200))))))))

(declare-fun b!4377173 () Bool)

(assert (=> b!4377173 (= e!2724628 (forall!9259 (t!356191 (toList!3129 (+!777 lm!1707 (tuple2!48665 hash!377 newBucket!200)))) lambda!144607))))

(assert (= (and d!1302904 (not res!1802321)) b!4377172))

(assert (= (and b!4377172 res!1802322) b!4377173))

(declare-fun b_lambda!134799 () Bool)

(assert (=> (not b_lambda!134799) (not b!4377172)))

(declare-fun m!5011805 () Bool)

(assert (=> b!4377172 m!5011805))

(declare-fun m!5011807 () Bool)

(assert (=> b!4377173 m!5011807))

(assert (=> d!1302140 d!1302904))

(declare-fun d!1302906 () Bool)

(declare-fun e!2724629 () Bool)

(assert (=> d!1302906 e!2724629))

(declare-fun res!1802324 () Bool)

(assert (=> d!1302906 (=> (not res!1802324) (not e!2724629))))

(declare-fun lt!1587731 () ListLongMap!1779)

(assert (=> d!1302906 (= res!1802324 (contains!11462 lt!1587731 (_1!27626 (tuple2!48665 hash!377 newBucket!200))))))

(declare-fun lt!1587734 () List!49265)

(assert (=> d!1302906 (= lt!1587731 (ListLongMap!1780 lt!1587734))))

(declare-fun lt!1587732 () Unit!74656)

(declare-fun lt!1587733 () Unit!74656)

(assert (=> d!1302906 (= lt!1587732 lt!1587733)))

(assert (=> d!1302906 (= (getValueByKey!537 lt!1587734 (_1!27626 (tuple2!48665 hash!377 newBucket!200))) (Some!10550 (_2!27626 (tuple2!48665 hash!377 newBucket!200))))))

(assert (=> d!1302906 (= lt!1587733 (lemmaContainsTupThenGetReturnValue!301 lt!1587734 (_1!27626 (tuple2!48665 hash!377 newBucket!200)) (_2!27626 (tuple2!48665 hash!377 newBucket!200))))))

(assert (=> d!1302906 (= lt!1587734 (insertStrictlySorted!173 (toList!3129 lm!1707) (_1!27626 (tuple2!48665 hash!377 newBucket!200)) (_2!27626 (tuple2!48665 hash!377 newBucket!200))))))

(assert (=> d!1302906 (= (+!777 lm!1707 (tuple2!48665 hash!377 newBucket!200)) lt!1587731)))

(declare-fun b!4377174 () Bool)

(declare-fun res!1802323 () Bool)

(assert (=> b!4377174 (=> (not res!1802323) (not e!2724629))))

(assert (=> b!4377174 (= res!1802323 (= (getValueByKey!537 (toList!3129 lt!1587731) (_1!27626 (tuple2!48665 hash!377 newBucket!200))) (Some!10550 (_2!27626 (tuple2!48665 hash!377 newBucket!200)))))))

(declare-fun b!4377175 () Bool)

(assert (=> b!4377175 (= e!2724629 (contains!11463 (toList!3129 lt!1587731) (tuple2!48665 hash!377 newBucket!200)))))

(assert (= (and d!1302906 res!1802324) b!4377174))

(assert (= (and b!4377174 res!1802323) b!4377175))

(declare-fun m!5011809 () Bool)

(assert (=> d!1302906 m!5011809))

(declare-fun m!5011811 () Bool)

(assert (=> d!1302906 m!5011811))

(declare-fun m!5011813 () Bool)

(assert (=> d!1302906 m!5011813))

(declare-fun m!5011815 () Bool)

(assert (=> d!1302906 m!5011815))

(declare-fun m!5011817 () Bool)

(assert (=> b!4377174 m!5011817))

(declare-fun m!5011819 () Bool)

(assert (=> b!4377175 m!5011819))

(assert (=> d!1302140 d!1302906))

(declare-fun d!1302908 () Bool)

(assert (=> d!1302908 (forall!9259 (toList!3129 (+!777 lm!1707 (tuple2!48665 hash!377 newBucket!200))) lambda!144607)))

(assert (=> d!1302908 true))

(declare-fun _$31!268 () Unit!74656)

(assert (=> d!1302908 (= (choose!27258 lm!1707 lambda!144607 hash!377 newBucket!200) _$31!268)))

(declare-fun bs!659939 () Bool)

(assert (= bs!659939 d!1302908))

(assert (=> bs!659939 m!5009033))

(assert (=> bs!659939 m!5009035))

(assert (=> d!1302140 d!1302908))

(assert (=> d!1302140 d!1302108))

(declare-fun d!1302910 () Bool)

(assert (=> d!1302910 (= (get!15978 (getValueByKey!537 (toList!3129 lm!1707) hash!377)) (v!43540 (getValueByKey!537 (toList!3129 lm!1707) hash!377)))))

(assert (=> d!1302122 d!1302910))

(assert (=> d!1302122 d!1302356))

(assert (=> b!4376056 d!1302774))

(assert (=> b!4376056 d!1302776))

(declare-fun d!1302912 () Bool)

(declare-fun res!1802325 () Bool)

(declare-fun e!2724630 () Bool)

(assert (=> d!1302912 (=> res!1802325 e!2724630)))

(assert (=> d!1302912 (= res!1802325 ((_ is Nil!49140) (toList!3130 (+!778 lt!1586446 lt!1586455))))))

(assert (=> d!1302912 (= (forall!9261 (toList!3130 (+!778 lt!1586446 lt!1586455)) lambda!144710) e!2724630)))

(declare-fun b!4377177 () Bool)

(declare-fun e!2724631 () Bool)

(assert (=> b!4377177 (= e!2724630 e!2724631)))

(declare-fun res!1802326 () Bool)

(assert (=> b!4377177 (=> (not res!1802326) (not e!2724631))))

(assert (=> b!4377177 (= res!1802326 (dynLambda!20705 lambda!144710 (h!54733 (toList!3130 (+!778 lt!1586446 lt!1586455)))))))

(declare-fun b!4377178 () Bool)

(assert (=> b!4377178 (= e!2724631 (forall!9261 (t!356190 (toList!3130 (+!778 lt!1586446 lt!1586455))) lambda!144710))))

(assert (= (and d!1302912 (not res!1802325)) b!4377177))

(assert (= (and b!4377177 res!1802326) b!4377178))

(declare-fun b_lambda!134801 () Bool)

(assert (=> (not b_lambda!134801) (not b!4377177)))

(declare-fun m!5011821 () Bool)

(assert (=> b!4377177 m!5011821))

(declare-fun m!5011823 () Bool)

(assert (=> b!4377178 m!5011823))

(assert (=> b!4376003 d!1302912))

(declare-fun bs!659940 () Bool)

(declare-fun b!4377182 () Bool)

(assert (= bs!659940 (and b!4377182 d!1302208)))

(declare-fun lambda!144855 () Int)

(assert (=> bs!659940 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586829) (= lambda!144855 lambda!144710))))

(declare-fun bs!659941 () Bool)

(assert (= bs!659941 (and b!4377182 b!4376001)))

(assert (=> bs!659941 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586808) (= lambda!144855 lambda!144705))))

(declare-fun bs!659942 () Bool)

(assert (= bs!659942 (and b!4377182 b!4376946)))

(assert (=> bs!659942 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144855 lambda!144839))))

(declare-fun bs!659943 () Bool)

(assert (= bs!659943 (and b!4377182 d!1302554)))

(assert (=> bs!659943 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 lt!1586455)) (= lambda!144855 lambda!144819))))

(declare-fun bs!659944 () Bool)

(assert (= bs!659944 (and b!4377182 b!4377038)))

(assert (=> bs!659944 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (h!54733 lt!1586460))) (= lambda!144855 lambda!144848))))

(declare-fun bs!659945 () Bool)

(assert (= bs!659945 (and b!4377182 d!1302214)))

(assert (=> bs!659945 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586863) (= lambda!144855 lambda!144715))))

(declare-fun bs!659946 () Bool)

(assert (= bs!659946 (and b!4377182 b!4376019)))

(assert (=> bs!659946 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586866) (= lambda!144855 lambda!144714))))

(declare-fun bs!659947 () Bool)

(assert (= bs!659947 (and b!4377182 b!4377039)))

(assert (=> bs!659947 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (h!54733 lt!1586460))) (= lambda!144855 lambda!144850))))

(declare-fun bs!659948 () Bool)

(assert (= bs!659948 (and b!4377182 d!1302364)))

(assert (=> bs!659948 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587151) (= lambda!144855 lambda!144764))))

(declare-fun bs!659949 () Bool)

(assert (= bs!659949 (and b!4377182 b!4376947)))

(assert (=> bs!659949 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587571) (= lambda!144855 lambda!144842))))

(declare-fun bs!659950 () Bool)

(assert (= bs!659950 (and b!4377182 b!4376351)))

(assert (=> bs!659950 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144855 lambda!144756))))

(declare-fun bs!659951 () Bool)

(assert (= bs!659951 (and b!4377182 b!4376448)))

(assert (=> bs!659951 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144855 lambda!144769))))

(declare-fun bs!659952 () Bool)

(assert (= bs!659952 (and b!4377182 d!1302320)))

(assert (=> bs!659952 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587057) (= lambda!144855 lambda!144743))))

(declare-fun bs!659953 () Bool)

(assert (= bs!659953 (and b!4377182 d!1302718)))

(assert (=> bs!659953 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587662) (= lambda!144855 lambda!144853))))

(declare-fun bs!659954 () Bool)

(assert (= bs!659954 (and b!4377182 b!4376000)))

(assert (=> bs!659954 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144855 lambda!144703))))

(declare-fun bs!659955 () Bool)

(assert (= bs!659955 (and b!4377182 d!1302666)))

(assert (=> bs!659955 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587568) (= lambda!144855 lambda!144843))))

(assert (=> bs!659941 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144855 lambda!144704))))

(declare-fun bs!659956 () Bool)

(assert (= bs!659956 (and b!4377182 b!4376255)))

(assert (=> bs!659956 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144855 lambda!144741))))

(assert (=> bs!659946 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144855 lambda!144713))))

(declare-fun bs!659957 () Bool)

(assert (= bs!659957 (and b!4377182 d!1302714)))

(assert (=> bs!659957 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586866) (= lambda!144855 lambda!144846))))

(assert (=> bs!659947 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587665) (= lambda!144855 lambda!144852))))

(declare-fun bs!659958 () Bool)

(assert (= bs!659958 (and b!4377182 b!4376449)))

(assert (=> bs!659958 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144855 lambda!144771))))

(declare-fun bs!659959 () Bool)

(assert (= bs!659959 (and b!4377182 b!4376151)))

(assert (=> bs!659959 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586965) (= lambda!144855 lambda!144733))))

(assert (=> bs!659959 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144855 lambda!144732))))

(declare-fun bs!659960 () Bool)

(assert (= bs!659960 (and b!4377182 d!1302220)))

(assert (=> bs!659960 (not (= lambda!144855 lambda!144717))))

(declare-fun bs!659961 () Bool)

(assert (= bs!659961 (and b!4377182 b!4376770)))

(assert (=> bs!659961 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587427) (= lambda!144855 lambda!144826))))

(declare-fun bs!659962 () Bool)

(assert (= bs!659962 (and b!4377182 b!4376769)))

(assert (=> bs!659962 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144855 lambda!144822))))

(declare-fun bs!659963 () Bool)

(assert (= bs!659963 (and b!4377182 d!1302282)))

(assert (=> bs!659963 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586962) (= lambda!144855 lambda!144734))))

(declare-fun bs!659964 () Bool)

(assert (= bs!659964 (and b!4377182 b!4376254)))

(assert (=> bs!659964 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144855 lambda!144740))))

(declare-fun bs!659965 () Bool)

(assert (= bs!659965 (and b!4377182 d!1302202)))

(assert (=> bs!659965 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586805) (= lambda!144855 lambda!144706))))

(declare-fun bs!659966 () Bool)

(assert (= bs!659966 (and b!4377182 d!1302408)))

(assert (=> bs!659966 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587232) (= lambda!144855 lambda!144774))))

(declare-fun bs!659967 () Bool)

(assert (= bs!659967 (and b!4377182 b!4376352)))

(assert (=> bs!659967 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587154) (= lambda!144855 lambda!144763))))

(declare-fun bs!659968 () Bool)

(assert (= bs!659968 (and b!4377182 d!1302330)))

(assert (=> bs!659968 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586832) (= lambda!144855 lambda!144749))))

(declare-fun bs!659969 () Bool)

(assert (= bs!659969 (and b!4377182 d!1302304)))

(assert (=> bs!659969 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586995) (= lambda!144855 lambda!144739))))

(declare-fun bs!659970 () Bool)

(assert (= bs!659970 (and b!4377182 b!4375992)))

(assert (=> bs!659970 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586783) (= lambda!144855 lambda!144701))))

(declare-fun bs!659971 () Bool)

(assert (= bs!659971 (and b!4377182 d!1302152)))

(assert (=> bs!659971 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586780) (= lambda!144855 lambda!144702))))

(declare-fun bs!659972 () Bool)

(assert (= bs!659972 (and b!4377182 d!1302118)))

(assert (=> bs!659972 (not (= lambda!144855 lambda!144613))))

(assert (=> bs!659967 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144855 lambda!144759))))

(declare-fun bs!659973 () Bool)

(assert (= bs!659973 (and b!4377182 d!1302662)))

(assert (=> bs!659973 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586783) (= lambda!144855 lambda!144836))))

(declare-fun bs!659974 () Bool)

(assert (= bs!659974 (and b!4377182 b!4376005)))

(assert (=> bs!659974 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 lt!1586455)) (= lambda!144855 lambda!144707))))

(declare-fun bs!659975 () Bool)

(assert (= bs!659975 (and b!4377182 b!4376018)))

(assert (=> bs!659975 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144855 lambda!144712))))

(declare-fun bs!659976 () Bool)

(assert (= bs!659976 (and b!4377182 d!1302348)))

(assert (=> bs!659976 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144855 lambda!144755))))

(declare-fun bs!659977 () Bool)

(assert (= bs!659977 (and b!4377182 b!4376006)))

(assert (=> bs!659977 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 lt!1586455)) (= lambda!144855 lambda!144708))))

(declare-fun bs!659978 () Bool)

(assert (= bs!659978 (and b!4377182 b!4375991)))

(assert (=> bs!659978 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144855 lambda!144699))))

(declare-fun bs!659979 () Bool)

(assert (= bs!659979 (and b!4377182 b!4376193)))

(assert (=> bs!659979 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144855 lambda!144737))))

(declare-fun bs!659980 () Bool)

(assert (= bs!659980 (and b!4377182 d!1302400)))

(assert (=> bs!659980 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586808) (= lambda!144855 lambda!144766))))

(assert (=> bs!659956 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587060) (= lambda!144855 lambda!144742))))

(declare-fun bs!659981 () Bool)

(assert (= bs!659981 (and b!4377182 b!4376192)))

(assert (=> bs!659981 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144855 lambda!144736))))

(assert (=> bs!659977 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586832) (= lambda!144855 lambda!144709))))

(assert (=> bs!659961 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144855 lambda!144824))))

(declare-fun bs!659982 () Bool)

(assert (= bs!659982 (and b!4377182 b!4376150)))

(assert (=> bs!659982 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144855 lambda!144731))))

(assert (=> bs!659970 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144855 lambda!144700))))

(assert (=> bs!659949 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144855 lambda!144840))))

(assert (=> bs!659958 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587235) (= lambda!144855 lambda!144773))))

(declare-fun bs!659983 () Bool)

(assert (= bs!659983 (and b!4377182 d!1302564)))

(assert (=> bs!659983 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587424) (= lambda!144855 lambda!144827))))

(assert (=> bs!659979 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586998) (= lambda!144855 lambda!144738))))

(assert (=> b!4377182 true))

(declare-fun bs!659984 () Bool)

(declare-fun b!4377183 () Bool)

(assert (= bs!659984 (and b!4377183 b!4377182)))

(declare-fun lambda!144856 () Int)

(assert (=> bs!659984 (= lambda!144856 lambda!144855)))

(declare-fun bs!659985 () Bool)

(assert (= bs!659985 (and b!4377183 d!1302208)))

(assert (=> bs!659985 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586829) (= lambda!144856 lambda!144710))))

(declare-fun bs!659986 () Bool)

(assert (= bs!659986 (and b!4377183 b!4376001)))

(assert (=> bs!659986 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586808) (= lambda!144856 lambda!144705))))

(declare-fun bs!659987 () Bool)

(assert (= bs!659987 (and b!4377183 b!4376946)))

(assert (=> bs!659987 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144856 lambda!144839))))

(declare-fun bs!659988 () Bool)

(assert (= bs!659988 (and b!4377183 d!1302554)))

(assert (=> bs!659988 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 lt!1586455)) (= lambda!144856 lambda!144819))))

(declare-fun bs!659989 () Bool)

(assert (= bs!659989 (and b!4377183 b!4377038)))

(assert (=> bs!659989 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (h!54733 lt!1586460))) (= lambda!144856 lambda!144848))))

(declare-fun bs!659990 () Bool)

(assert (= bs!659990 (and b!4377183 d!1302214)))

(assert (=> bs!659990 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586863) (= lambda!144856 lambda!144715))))

(declare-fun bs!659991 () Bool)

(assert (= bs!659991 (and b!4377183 b!4376019)))

(assert (=> bs!659991 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586866) (= lambda!144856 lambda!144714))))

(declare-fun bs!659992 () Bool)

(assert (= bs!659992 (and b!4377183 b!4377039)))

(assert (=> bs!659992 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (h!54733 lt!1586460))) (= lambda!144856 lambda!144850))))

(declare-fun bs!659993 () Bool)

(assert (= bs!659993 (and b!4377183 d!1302364)))

(assert (=> bs!659993 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587151) (= lambda!144856 lambda!144764))))

(declare-fun bs!659994 () Bool)

(assert (= bs!659994 (and b!4377183 b!4376947)))

(assert (=> bs!659994 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587571) (= lambda!144856 lambda!144842))))

(declare-fun bs!659995 () Bool)

(assert (= bs!659995 (and b!4377183 b!4376351)))

(assert (=> bs!659995 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144856 lambda!144756))))

(declare-fun bs!659996 () Bool)

(assert (= bs!659996 (and b!4377183 b!4376448)))

(assert (=> bs!659996 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144856 lambda!144769))))

(declare-fun bs!659997 () Bool)

(assert (= bs!659997 (and b!4377183 d!1302320)))

(assert (=> bs!659997 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587057) (= lambda!144856 lambda!144743))))

(declare-fun bs!659998 () Bool)

(assert (= bs!659998 (and b!4377183 d!1302718)))

(assert (=> bs!659998 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587662) (= lambda!144856 lambda!144853))))

(declare-fun bs!659999 () Bool)

(assert (= bs!659999 (and b!4377183 b!4376000)))

(assert (=> bs!659999 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144856 lambda!144703))))

(declare-fun bs!660000 () Bool)

(assert (= bs!660000 (and b!4377183 d!1302666)))

(assert (=> bs!660000 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587568) (= lambda!144856 lambda!144843))))

(assert (=> bs!659986 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144856 lambda!144704))))

(declare-fun bs!660001 () Bool)

(assert (= bs!660001 (and b!4377183 b!4376255)))

(assert (=> bs!660001 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144856 lambda!144741))))

(assert (=> bs!659991 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144856 lambda!144713))))

(declare-fun bs!660002 () Bool)

(assert (= bs!660002 (and b!4377183 d!1302714)))

(assert (=> bs!660002 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586866) (= lambda!144856 lambda!144846))))

(assert (=> bs!659992 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587665) (= lambda!144856 lambda!144852))))

(declare-fun bs!660003 () Bool)

(assert (= bs!660003 (and b!4377183 b!4376449)))

(assert (=> bs!660003 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144856 lambda!144771))))

(declare-fun bs!660004 () Bool)

(assert (= bs!660004 (and b!4377183 b!4376151)))

(assert (=> bs!660004 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586965) (= lambda!144856 lambda!144733))))

(assert (=> bs!660004 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144856 lambda!144732))))

(declare-fun bs!660005 () Bool)

(assert (= bs!660005 (and b!4377183 d!1302220)))

(assert (=> bs!660005 (not (= lambda!144856 lambda!144717))))

(declare-fun bs!660006 () Bool)

(assert (= bs!660006 (and b!4377183 b!4376770)))

(assert (=> bs!660006 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587427) (= lambda!144856 lambda!144826))))

(declare-fun bs!660007 () Bool)

(assert (= bs!660007 (and b!4377183 b!4376769)))

(assert (=> bs!660007 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144856 lambda!144822))))

(declare-fun bs!660008 () Bool)

(assert (= bs!660008 (and b!4377183 d!1302282)))

(assert (=> bs!660008 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586962) (= lambda!144856 lambda!144734))))

(declare-fun bs!660009 () Bool)

(assert (= bs!660009 (and b!4377183 b!4376254)))

(assert (=> bs!660009 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144856 lambda!144740))))

(declare-fun bs!660010 () Bool)

(assert (= bs!660010 (and b!4377183 d!1302202)))

(assert (=> bs!660010 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586805) (= lambda!144856 lambda!144706))))

(declare-fun bs!660011 () Bool)

(assert (= bs!660011 (and b!4377183 d!1302408)))

(assert (=> bs!660011 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587232) (= lambda!144856 lambda!144774))))

(declare-fun bs!660012 () Bool)

(assert (= bs!660012 (and b!4377183 b!4376352)))

(assert (=> bs!660012 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587154) (= lambda!144856 lambda!144763))))

(declare-fun bs!660013 () Bool)

(assert (= bs!660013 (and b!4377183 d!1302330)))

(assert (=> bs!660013 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586832) (= lambda!144856 lambda!144749))))

(declare-fun bs!660014 () Bool)

(assert (= bs!660014 (and b!4377183 d!1302304)))

(assert (=> bs!660014 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586995) (= lambda!144856 lambda!144739))))

(declare-fun bs!660015 () Bool)

(assert (= bs!660015 (and b!4377183 b!4375992)))

(assert (=> bs!660015 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586783) (= lambda!144856 lambda!144701))))

(declare-fun bs!660016 () Bool)

(assert (= bs!660016 (and b!4377183 d!1302152)))

(assert (=> bs!660016 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586780) (= lambda!144856 lambda!144702))))

(declare-fun bs!660017 () Bool)

(assert (= bs!660017 (and b!4377183 d!1302118)))

(assert (=> bs!660017 (not (= lambda!144856 lambda!144613))))

(assert (=> bs!660012 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144856 lambda!144759))))

(declare-fun bs!660018 () Bool)

(assert (= bs!660018 (and b!4377183 d!1302662)))

(assert (=> bs!660018 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586783) (= lambda!144856 lambda!144836))))

(declare-fun bs!660019 () Bool)

(assert (= bs!660019 (and b!4377183 b!4376005)))

(assert (=> bs!660019 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 lt!1586455)) (= lambda!144856 lambda!144707))))

(declare-fun bs!660020 () Bool)

(assert (= bs!660020 (and b!4377183 b!4376018)))

(assert (=> bs!660020 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144856 lambda!144712))))

(declare-fun bs!660021 () Bool)

(assert (= bs!660021 (and b!4377183 d!1302348)))

(assert (=> bs!660021 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144856 lambda!144755))))

(declare-fun bs!660022 () Bool)

(assert (= bs!660022 (and b!4377183 b!4376006)))

(assert (=> bs!660022 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 lt!1586455)) (= lambda!144856 lambda!144708))))

(declare-fun bs!660023 () Bool)

(assert (= bs!660023 (and b!4377183 b!4375991)))

(assert (=> bs!660023 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144856 lambda!144699))))

(declare-fun bs!660024 () Bool)

(assert (= bs!660024 (and b!4377183 b!4376193)))

(assert (=> bs!660024 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144856 lambda!144737))))

(declare-fun bs!660025 () Bool)

(assert (= bs!660025 (and b!4377183 d!1302400)))

(assert (=> bs!660025 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586808) (= lambda!144856 lambda!144766))))

(assert (=> bs!660001 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587060) (= lambda!144856 lambda!144742))))

(declare-fun bs!660026 () Bool)

(assert (= bs!660026 (and b!4377183 b!4376192)))

(assert (=> bs!660026 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144856 lambda!144736))))

(assert (=> bs!660022 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586832) (= lambda!144856 lambda!144709))))

(assert (=> bs!660006 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144856 lambda!144824))))

(declare-fun bs!660027 () Bool)

(assert (= bs!660027 (and b!4377183 b!4376150)))

(assert (=> bs!660027 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144856 lambda!144731))))

(assert (=> bs!660015 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586446) (= lambda!144856 lambda!144700))))

(assert (=> bs!659994 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144856 lambda!144840))))

(assert (=> bs!660003 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587235) (= lambda!144856 lambda!144773))))

(declare-fun bs!660028 () Bool)

(assert (= bs!660028 (and b!4377183 d!1302564)))

(assert (=> bs!660028 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587424) (= lambda!144856 lambda!144827))))

(assert (=> bs!660024 (= (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1586998) (= lambda!144856 lambda!144738))))

(assert (=> b!4377183 true))

(declare-fun lambda!144857 () Int)

(declare-fun lt!1587753 () ListMap!2373)

(assert (=> bs!659984 (= (= lt!1587753 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707))))) (= lambda!144857 lambda!144855))))

(assert (=> bs!659985 (= (= lt!1587753 lt!1586829) (= lambda!144857 lambda!144710))))

(assert (=> bs!659986 (= (= lt!1587753 lt!1586808) (= lambda!144857 lambda!144705))))

(assert (=> bs!659987 (= (= lt!1587753 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144857 lambda!144839))))

(assert (=> bs!659988 (= (= lt!1587753 (+!778 lt!1586446 lt!1586455)) (= lambda!144857 lambda!144819))))

(assert (=> bs!659989 (= (= lt!1587753 (+!778 lt!1586446 (h!54733 lt!1586460))) (= lambda!144857 lambda!144848))))

(assert (=> bs!659990 (= (= lt!1587753 lt!1586863) (= lambda!144857 lambda!144715))))

(assert (=> bs!659991 (= (= lt!1587753 lt!1586866) (= lambda!144857 lambda!144714))))

(assert (=> bs!659992 (= (= lt!1587753 (+!778 lt!1586446 (h!54733 lt!1586460))) (= lambda!144857 lambda!144850))))

(assert (=> bs!659993 (= (= lt!1587753 lt!1587151) (= lambda!144857 lambda!144764))))

(assert (=> bs!659994 (= (= lt!1587753 lt!1587571) (= lambda!144857 lambda!144842))))

(assert (=> bs!659995 (= (= lt!1587753 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144857 lambda!144756))))

(assert (=> bs!659996 (= (= lt!1587753 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144857 lambda!144769))))

(assert (=> bs!659997 (= (= lt!1587753 lt!1587057) (= lambda!144857 lambda!144743))))

(assert (=> bs!659998 (= (= lt!1587753 lt!1587662) (= lambda!144857 lambda!144853))))

(assert (=> bs!659999 (= (= lt!1587753 lt!1586446) (= lambda!144857 lambda!144703))))

(assert (=> bs!660000 (= (= lt!1587753 lt!1587568) (= lambda!144857 lambda!144843))))

(assert (=> bs!659986 (= (= lt!1587753 lt!1586446) (= lambda!144857 lambda!144704))))

(assert (=> bs!660001 (= (= lt!1587753 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144857 lambda!144741))))

(assert (=> bs!659991 (= (= lt!1587753 lt!1586446) (= lambda!144857 lambda!144713))))

(assert (=> bs!660002 (= (= lt!1587753 lt!1586866) (= lambda!144857 lambda!144846))))

(assert (=> bs!659992 (= (= lt!1587753 lt!1587665) (= lambda!144857 lambda!144852))))

(assert (=> bs!660003 (= (= lt!1587753 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144857 lambda!144771))))

(assert (=> bs!660004 (= (= lt!1587753 lt!1586965) (= lambda!144857 lambda!144733))))

(assert (=> bs!660004 (= (= lt!1587753 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144857 lambda!144732))))

(assert (=> bs!660005 (not (= lambda!144857 lambda!144717))))

(assert (=> bs!660006 (= (= lt!1587753 lt!1587427) (= lambda!144857 lambda!144826))))

(assert (=> bs!660007 (= (= lt!1587753 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144857 lambda!144822))))

(assert (=> bs!660008 (= (= lt!1587753 lt!1586962) (= lambda!144857 lambda!144734))))

(assert (=> bs!660009 (= (= lt!1587753 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144857 lambda!144740))))

(assert (=> bs!660010 (= (= lt!1587753 lt!1586805) (= lambda!144857 lambda!144706))))

(assert (=> bs!660011 (= (= lt!1587753 lt!1587232) (= lambda!144857 lambda!144774))))

(assert (=> bs!660012 (= (= lt!1587753 lt!1587154) (= lambda!144857 lambda!144763))))

(assert (=> b!4377183 (= (= lt!1587753 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707))))) (= lambda!144857 lambda!144856))))

(assert (=> bs!660013 (= (= lt!1587753 lt!1586832) (= lambda!144857 lambda!144749))))

(assert (=> bs!660014 (= (= lt!1587753 lt!1586995) (= lambda!144857 lambda!144739))))

(assert (=> bs!660015 (= (= lt!1587753 lt!1586783) (= lambda!144857 lambda!144701))))

(assert (=> bs!660016 (= (= lt!1587753 lt!1586780) (= lambda!144857 lambda!144702))))

(assert (=> bs!660017 (not (= lambda!144857 lambda!144613))))

(assert (=> bs!660012 (= (= lt!1587753 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144857 lambda!144759))))

(assert (=> bs!660018 (= (= lt!1587753 lt!1586783) (= lambda!144857 lambda!144836))))

(assert (=> bs!660019 (= (= lt!1587753 (+!778 lt!1586446 lt!1586455)) (= lambda!144857 lambda!144707))))

(assert (=> bs!660020 (= (= lt!1587753 lt!1586446) (= lambda!144857 lambda!144712))))

(assert (=> bs!660021 (= (= lt!1587753 lt!1586446) (= lambda!144857 lambda!144755))))

(assert (=> bs!660022 (= (= lt!1587753 (+!778 lt!1586446 lt!1586455)) (= lambda!144857 lambda!144708))))

(assert (=> bs!660023 (= (= lt!1587753 lt!1586446) (= lambda!144857 lambda!144699))))

(assert (=> bs!660024 (= (= lt!1587753 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144857 lambda!144737))))

(assert (=> bs!660025 (= (= lt!1587753 lt!1586808) (= lambda!144857 lambda!144766))))

(assert (=> bs!660001 (= (= lt!1587753 lt!1587060) (= lambda!144857 lambda!144742))))

(assert (=> bs!660026 (= (= lt!1587753 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144857 lambda!144736))))

(assert (=> bs!660022 (= (= lt!1587753 lt!1586832) (= lambda!144857 lambda!144709))))

(assert (=> bs!660006 (= (= lt!1587753 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144857 lambda!144824))))

(assert (=> bs!660027 (= (= lt!1587753 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144857 lambda!144731))))

(assert (=> bs!660015 (= (= lt!1587753 lt!1586446) (= lambda!144857 lambda!144700))))

(assert (=> bs!659994 (= (= lt!1587753 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144857 lambda!144840))))

(assert (=> bs!660003 (= (= lt!1587753 lt!1587235) (= lambda!144857 lambda!144773))))

(assert (=> bs!660028 (= (= lt!1587753 lt!1587424) (= lambda!144857 lambda!144827))))

(assert (=> bs!660024 (= (= lt!1587753 lt!1586998) (= lambda!144857 lambda!144738))))

(assert (=> b!4377183 true))

(declare-fun bs!660029 () Bool)

(declare-fun d!1302914 () Bool)

(assert (= bs!660029 (and d!1302914 b!4377182)))

(declare-fun lambda!144858 () Int)

(declare-fun lt!1587750 () ListMap!2373)

(assert (=> bs!660029 (= (= lt!1587750 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707))))) (= lambda!144858 lambda!144855))))

(declare-fun bs!660030 () Bool)

(assert (= bs!660030 (and d!1302914 d!1302208)))

(assert (=> bs!660030 (= (= lt!1587750 lt!1586829) (= lambda!144858 lambda!144710))))

(declare-fun bs!660031 () Bool)

(assert (= bs!660031 (and d!1302914 b!4376001)))

(assert (=> bs!660031 (= (= lt!1587750 lt!1586808) (= lambda!144858 lambda!144705))))

(declare-fun bs!660032 () Bool)

(assert (= bs!660032 (and d!1302914 b!4376946)))

(assert (=> bs!660032 (= (= lt!1587750 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144858 lambda!144839))))

(declare-fun bs!660033 () Bool)

(assert (= bs!660033 (and d!1302914 b!4377038)))

(assert (=> bs!660033 (= (= lt!1587750 (+!778 lt!1586446 (h!54733 lt!1586460))) (= lambda!144858 lambda!144848))))

(declare-fun bs!660034 () Bool)

(assert (= bs!660034 (and d!1302914 d!1302214)))

(assert (=> bs!660034 (= (= lt!1587750 lt!1586863) (= lambda!144858 lambda!144715))))

(declare-fun bs!660035 () Bool)

(assert (= bs!660035 (and d!1302914 b!4376019)))

(assert (=> bs!660035 (= (= lt!1587750 lt!1586866) (= lambda!144858 lambda!144714))))

(declare-fun bs!660036 () Bool)

(assert (= bs!660036 (and d!1302914 b!4377039)))

(assert (=> bs!660036 (= (= lt!1587750 (+!778 lt!1586446 (h!54733 lt!1586460))) (= lambda!144858 lambda!144850))))

(declare-fun bs!660037 () Bool)

(assert (= bs!660037 (and d!1302914 d!1302364)))

(assert (=> bs!660037 (= (= lt!1587750 lt!1587151) (= lambda!144858 lambda!144764))))

(declare-fun bs!660038 () Bool)

(assert (= bs!660038 (and d!1302914 b!4376947)))

(assert (=> bs!660038 (= (= lt!1587750 lt!1587571) (= lambda!144858 lambda!144842))))

(declare-fun bs!660039 () Bool)

(assert (= bs!660039 (and d!1302914 b!4376351)))

(assert (=> bs!660039 (= (= lt!1587750 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144858 lambda!144756))))

(declare-fun bs!660040 () Bool)

(assert (= bs!660040 (and d!1302914 b!4376448)))

(assert (=> bs!660040 (= (= lt!1587750 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144858 lambda!144769))))

(declare-fun bs!660041 () Bool)

(assert (= bs!660041 (and d!1302914 d!1302320)))

(assert (=> bs!660041 (= (= lt!1587750 lt!1587057) (= lambda!144858 lambda!144743))))

(declare-fun bs!660042 () Bool)

(assert (= bs!660042 (and d!1302914 d!1302718)))

(assert (=> bs!660042 (= (= lt!1587750 lt!1587662) (= lambda!144858 lambda!144853))))

(declare-fun bs!660043 () Bool)

(assert (= bs!660043 (and d!1302914 b!4376000)))

(assert (=> bs!660043 (= (= lt!1587750 lt!1586446) (= lambda!144858 lambda!144703))))

(declare-fun bs!660044 () Bool)

(assert (= bs!660044 (and d!1302914 d!1302666)))

(assert (=> bs!660044 (= (= lt!1587750 lt!1587568) (= lambda!144858 lambda!144843))))

(assert (=> bs!660031 (= (= lt!1587750 lt!1586446) (= lambda!144858 lambda!144704))))

(declare-fun bs!660045 () Bool)

(assert (= bs!660045 (and d!1302914 b!4376255)))

(assert (=> bs!660045 (= (= lt!1587750 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144858 lambda!144741))))

(assert (=> bs!660035 (= (= lt!1587750 lt!1586446) (= lambda!144858 lambda!144713))))

(declare-fun bs!660046 () Bool)

(assert (= bs!660046 (and d!1302914 d!1302714)))

(assert (=> bs!660046 (= (= lt!1587750 lt!1586866) (= lambda!144858 lambda!144846))))

(assert (=> bs!660036 (= (= lt!1587750 lt!1587665) (= lambda!144858 lambda!144852))))

(declare-fun bs!660047 () Bool)

(assert (= bs!660047 (and d!1302914 b!4376449)))

(assert (=> bs!660047 (= (= lt!1587750 (+!778 lt!1586446 (h!54733 newBucket!200))) (= lambda!144858 lambda!144771))))

(declare-fun bs!660048 () Bool)

(assert (= bs!660048 (and d!1302914 b!4377183)))

(assert (=> bs!660048 (= (= lt!1587750 lt!1587753) (= lambda!144858 lambda!144857))))

(declare-fun bs!660049 () Bool)

(assert (= bs!660049 (and d!1302914 d!1302554)))

(assert (=> bs!660049 (= (= lt!1587750 (+!778 lt!1586446 lt!1586455)) (= lambda!144858 lambda!144819))))

(declare-fun bs!660050 () Bool)

(assert (= bs!660050 (and d!1302914 b!4376151)))

(assert (=> bs!660050 (= (= lt!1587750 lt!1586965) (= lambda!144858 lambda!144733))))

(assert (=> bs!660050 (= (= lt!1587750 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144858 lambda!144732))))

(declare-fun bs!660051 () Bool)

(assert (= bs!660051 (and d!1302914 d!1302220)))

(assert (=> bs!660051 (not (= lambda!144858 lambda!144717))))

(declare-fun bs!660052 () Bool)

(assert (= bs!660052 (and d!1302914 b!4376770)))

(assert (=> bs!660052 (= (= lt!1587750 lt!1587427) (= lambda!144858 lambda!144826))))

(declare-fun bs!660053 () Bool)

(assert (= bs!660053 (and d!1302914 b!4376769)))

(assert (=> bs!660053 (= (= lt!1587750 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144858 lambda!144822))))

(declare-fun bs!660054 () Bool)

(assert (= bs!660054 (and d!1302914 d!1302282)))

(assert (=> bs!660054 (= (= lt!1587750 lt!1586962) (= lambda!144858 lambda!144734))))

(declare-fun bs!660055 () Bool)

(assert (= bs!660055 (and d!1302914 b!4376254)))

(assert (=> bs!660055 (= (= lt!1587750 (+!778 (+!778 lt!1586446 lt!1586455) (h!54733 lt!1586460))) (= lambda!144858 lambda!144740))))

(declare-fun bs!660056 () Bool)

(assert (= bs!660056 (and d!1302914 d!1302202)))

(assert (=> bs!660056 (= (= lt!1587750 lt!1586805) (= lambda!144858 lambda!144706))))

(declare-fun bs!660057 () Bool)

(assert (= bs!660057 (and d!1302914 d!1302408)))

(assert (=> bs!660057 (= (= lt!1587750 lt!1587232) (= lambda!144858 lambda!144774))))

(declare-fun bs!660058 () Bool)

(assert (= bs!660058 (and d!1302914 b!4376352)))

(assert (=> bs!660058 (= (= lt!1587750 lt!1587154) (= lambda!144858 lambda!144763))))

(assert (=> bs!660048 (= (= lt!1587750 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707))))) (= lambda!144858 lambda!144856))))

(declare-fun bs!660059 () Bool)

(assert (= bs!660059 (and d!1302914 d!1302330)))

(assert (=> bs!660059 (= (= lt!1587750 lt!1586832) (= lambda!144858 lambda!144749))))

(declare-fun bs!660060 () Bool)

(assert (= bs!660060 (and d!1302914 d!1302304)))

(assert (=> bs!660060 (= (= lt!1587750 lt!1586995) (= lambda!144858 lambda!144739))))

(declare-fun bs!660061 () Bool)

(assert (= bs!660061 (and d!1302914 b!4375992)))

(assert (=> bs!660061 (= (= lt!1587750 lt!1586783) (= lambda!144858 lambda!144701))))

(declare-fun bs!660062 () Bool)

(assert (= bs!660062 (and d!1302914 d!1302152)))

(assert (=> bs!660062 (= (= lt!1587750 lt!1586780) (= lambda!144858 lambda!144702))))

(declare-fun bs!660063 () Bool)

(assert (= bs!660063 (and d!1302914 d!1302118)))

(assert (=> bs!660063 (not (= lambda!144858 lambda!144613))))

(assert (=> bs!660058 (= (= lt!1587750 (+!778 lt!1586446 (tuple2!48663 key!3918 newValue!99))) (= lambda!144858 lambda!144759))))

(declare-fun bs!660064 () Bool)

(assert (= bs!660064 (and d!1302914 d!1302662)))

(assert (=> bs!660064 (= (= lt!1587750 lt!1586783) (= lambda!144858 lambda!144836))))

(declare-fun bs!660065 () Bool)

(assert (= bs!660065 (and d!1302914 b!4376005)))

(assert (=> bs!660065 (= (= lt!1587750 (+!778 lt!1586446 lt!1586455)) (= lambda!144858 lambda!144707))))

(declare-fun bs!660066 () Bool)

(assert (= bs!660066 (and d!1302914 b!4376018)))

(assert (=> bs!660066 (= (= lt!1587750 lt!1586446) (= lambda!144858 lambda!144712))))

(declare-fun bs!660067 () Bool)

(assert (= bs!660067 (and d!1302914 d!1302348)))

(assert (=> bs!660067 (= (= lt!1587750 lt!1586446) (= lambda!144858 lambda!144755))))

(declare-fun bs!660068 () Bool)

(assert (= bs!660068 (and d!1302914 b!4376006)))

(assert (=> bs!660068 (= (= lt!1587750 (+!778 lt!1586446 lt!1586455)) (= lambda!144858 lambda!144708))))

(declare-fun bs!660069 () Bool)

(assert (= bs!660069 (and d!1302914 b!4375991)))

(assert (=> bs!660069 (= (= lt!1587750 lt!1586446) (= lambda!144858 lambda!144699))))

(declare-fun bs!660070 () Bool)

(assert (= bs!660070 (and d!1302914 b!4376193)))

(assert (=> bs!660070 (= (= lt!1587750 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144858 lambda!144737))))

(declare-fun bs!660071 () Bool)

(assert (= bs!660071 (and d!1302914 d!1302400)))

(assert (=> bs!660071 (= (= lt!1587750 lt!1586808) (= lambda!144858 lambda!144766))))

(assert (=> bs!660045 (= (= lt!1587750 lt!1587060) (= lambda!144858 lambda!144742))))

(declare-fun bs!660072 () Bool)

(assert (= bs!660072 (and d!1302914 b!4376192)))

(assert (=> bs!660072 (= (= lt!1587750 (extractMap!632 (t!356191 (toList!3129 lm!1707)))) (= lambda!144858 lambda!144736))))

(assert (=> bs!660068 (= (= lt!1587750 lt!1586832) (= lambda!144858 lambda!144709))))

(assert (=> bs!660052 (= (= lt!1587750 (extractMap!632 (t!356191 (toList!3129 lt!1586445)))) (= lambda!144858 lambda!144824))))

(declare-fun bs!660073 () Bool)

(assert (= bs!660073 (and d!1302914 b!4376150)))

(assert (=> bs!660073 (= (= lt!1587750 (extractMap!632 (t!356191 (toList!3129 lt!1586459)))) (= lambda!144858 lambda!144731))))

(assert (=> bs!660061 (= (= lt!1587750 lt!1586446) (= lambda!144858 lambda!144700))))

(assert (=> bs!660038 (= (= lt!1587750 (+!778 lt!1586446 (h!54733 lt!1586456))) (= lambda!144858 lambda!144840))))

(assert (=> bs!660047 (= (= lt!1587750 lt!1587235) (= lambda!144858 lambda!144773))))

(declare-fun bs!660074 () Bool)

(assert (= bs!660074 (and d!1302914 d!1302564)))

(assert (=> bs!660074 (= (= lt!1587750 lt!1587424) (= lambda!144858 lambda!144827))))

(assert (=> bs!660070 (= (= lt!1587750 lt!1586998) (= lambda!144858 lambda!144738))))

(assert (=> d!1302914 true))

(declare-fun c!744379 () Bool)

(declare-fun bm!304388 () Bool)

(declare-fun call!304394 () Bool)

(assert (=> bm!304388 (= call!304394 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707))))) (ite c!744379 lambda!144855 lambda!144856)))))

(declare-fun b!4377179 () Bool)

(declare-fun e!2724633 () Bool)

(assert (=> b!4377179 (= e!2724633 (invariantList!719 (toList!3130 lt!1587750)))))

(declare-fun b!4377180 () Bool)

(declare-fun res!1802328 () Bool)

(assert (=> b!4377180 (=> (not res!1802328) (not e!2724633))))

(assert (=> b!4377180 (= res!1802328 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707))))) lambda!144858))))

(assert (=> d!1302914 e!2724633))

(declare-fun res!1802329 () Bool)

(assert (=> d!1302914 (=> (not res!1802329) (not e!2724633))))

(assert (=> d!1302914 (= res!1802329 (forall!9261 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707)))) lambda!144858))))

(declare-fun e!2724632 () ListMap!2373)

(assert (=> d!1302914 (= lt!1587750 e!2724632)))

(assert (=> d!1302914 (= c!744379 ((_ is Nil!49140) (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707))))))))

(assert (=> d!1302914 (noDuplicateKeys!573 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707)))))))

(assert (=> d!1302914 (= (addToMapMapFromBucket!254 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707)))) (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707))))) lt!1587750)))

(declare-fun bm!304389 () Bool)

(declare-fun call!304395 () Bool)

(assert (=> bm!304389 (= call!304395 (forall!9261 (ite c!744379 (toList!3130 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707))))) (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707))))) (ite c!744379 lambda!144855 lambda!144857)))))

(declare-fun bm!304390 () Bool)

(declare-fun call!304393 () Unit!74656)

(assert (=> bm!304390 (= call!304393 (lemmaContainsAllItsOwnKeys!101 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707))))))))

(declare-fun b!4377181 () Bool)

(declare-fun e!2724634 () Bool)

(assert (=> b!4377181 (= e!2724634 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707))))) lambda!144857))))

(assert (=> b!4377182 (= e!2724632 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))))))

(declare-fun lt!1587754 () Unit!74656)

(assert (=> b!4377182 (= lt!1587754 call!304393)))

(assert (=> b!4377182 call!304394))

(declare-fun lt!1587735 () Unit!74656)

(assert (=> b!4377182 (= lt!1587735 lt!1587754)))

(assert (=> b!4377182 call!304395))

(declare-fun lt!1587737 () Unit!74656)

(declare-fun Unit!74984 () Unit!74656)

(assert (=> b!4377182 (= lt!1587737 Unit!74984)))

(assert (=> b!4377183 (= e!2724632 lt!1587753)))

(declare-fun lt!1587743 () ListMap!2373)

(assert (=> b!4377183 (= lt!1587743 (+!778 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (h!54733 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707)))))))))

(assert (=> b!4377183 (= lt!1587753 (addToMapMapFromBucket!254 (t!356190 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707))))) (+!778 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) (h!54733 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707))))))))))

(declare-fun lt!1587749 () Unit!74656)

(assert (=> b!4377183 (= lt!1587749 call!304393)))

(assert (=> b!4377183 call!304394))

(declare-fun lt!1587742 () Unit!74656)

(assert (=> b!4377183 (= lt!1587742 lt!1587749)))

(assert (=> b!4377183 (forall!9261 (toList!3130 lt!1587743) lambda!144857)))

(declare-fun lt!1587752 () Unit!74656)

(declare-fun Unit!74986 () Unit!74656)

(assert (=> b!4377183 (= lt!1587752 Unit!74986)))

(assert (=> b!4377183 (forall!9261 (t!356190 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707))))) lambda!144857)))

(declare-fun lt!1587744 () Unit!74656)

(declare-fun Unit!74987 () Unit!74656)

(assert (=> b!4377183 (= lt!1587744 Unit!74987)))

(declare-fun lt!1587746 () Unit!74656)

(declare-fun Unit!74988 () Unit!74656)

(assert (=> b!4377183 (= lt!1587746 Unit!74988)))

(declare-fun lt!1587736 () Unit!74656)

(assert (=> b!4377183 (= lt!1587736 (forallContained!1899 (toList!3130 lt!1587743) lambda!144857 (h!54733 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707)))))))))

(assert (=> b!4377183 (contains!11461 lt!1587743 (_1!27625 (h!54733 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707)))))))))

(declare-fun lt!1587755 () Unit!74656)

(declare-fun Unit!74989 () Unit!74656)

(assert (=> b!4377183 (= lt!1587755 Unit!74989)))

(assert (=> b!4377183 (contains!11461 lt!1587753 (_1!27625 (h!54733 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707)))))))))

(declare-fun lt!1587741 () Unit!74656)

(declare-fun Unit!74990 () Unit!74656)

(assert (=> b!4377183 (= lt!1587741 Unit!74990)))

(assert (=> b!4377183 (forall!9261 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707)))) lambda!144857)))

(declare-fun lt!1587748 () Unit!74656)

(declare-fun Unit!74991 () Unit!74656)

(assert (=> b!4377183 (= lt!1587748 Unit!74991)))

(assert (=> b!4377183 (forall!9261 (toList!3130 lt!1587743) lambda!144857)))

(declare-fun lt!1587738 () Unit!74656)

(declare-fun Unit!74992 () Unit!74656)

(assert (=> b!4377183 (= lt!1587738 Unit!74992)))

(declare-fun lt!1587745 () Unit!74656)

(declare-fun Unit!74993 () Unit!74656)

(assert (=> b!4377183 (= lt!1587745 Unit!74993)))

(declare-fun lt!1587751 () Unit!74656)

(assert (=> b!4377183 (= lt!1587751 (addForallContainsKeyThenBeforeAdding!101 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587753 (_1!27625 (h!54733 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707)))))) (_2!27625 (h!54733 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707))))))))))

(assert (=> b!4377183 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707))))) lambda!144857)))

(declare-fun lt!1587739 () Unit!74656)

(assert (=> b!4377183 (= lt!1587739 lt!1587751)))

(assert (=> b!4377183 (forall!9261 (toList!3130 (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707))))) lambda!144857)))

(declare-fun lt!1587740 () Unit!74656)

(declare-fun Unit!74994 () Unit!74656)

(assert (=> b!4377183 (= lt!1587740 Unit!74994)))

(declare-fun res!1802327 () Bool)

(assert (=> b!4377183 (= res!1802327 call!304395)))

(assert (=> b!4377183 (=> (not res!1802327) (not e!2724634))))

(assert (=> b!4377183 e!2724634))

(declare-fun lt!1587747 () Unit!74656)

(declare-fun Unit!74996 () Unit!74656)

(assert (=> b!4377183 (= lt!1587747 Unit!74996)))

(assert (= (and d!1302914 c!744379) b!4377182))

(assert (= (and d!1302914 (not c!744379)) b!4377183))

(assert (= (and b!4377183 res!1802327) b!4377181))

(assert (= (or b!4377182 b!4377183) bm!304390))

(assert (= (or b!4377182 b!4377183) bm!304388))

(assert (= (or b!4377182 b!4377183) bm!304389))

(assert (= (and d!1302914 res!1802329) b!4377180))

(assert (= (and b!4377180 res!1802328) b!4377179))

(declare-fun m!5011825 () Bool)

(assert (=> bm!304388 m!5011825))

(declare-fun m!5011827 () Bool)

(assert (=> b!4377181 m!5011827))

(declare-fun m!5011829 () Bool)

(assert (=> b!4377179 m!5011829))

(declare-fun m!5011831 () Bool)

(assert (=> b!4377180 m!5011831))

(declare-fun m!5011833 () Bool)

(assert (=> b!4377183 m!5011833))

(declare-fun m!5011835 () Bool)

(assert (=> b!4377183 m!5011835))

(declare-fun m!5011837 () Bool)

(assert (=> b!4377183 m!5011837))

(declare-fun m!5011839 () Bool)

(assert (=> b!4377183 m!5011839))

(declare-fun m!5011841 () Bool)

(assert (=> b!4377183 m!5011841))

(assert (=> b!4377183 m!5011827))

(assert (=> b!4377183 m!5011827))

(assert (=> b!4377183 m!5009401))

(declare-fun m!5011843 () Bool)

(assert (=> b!4377183 m!5011843))

(declare-fun m!5011845 () Bool)

(assert (=> b!4377183 m!5011845))

(assert (=> b!4377183 m!5011841))

(declare-fun m!5011847 () Bool)

(assert (=> b!4377183 m!5011847))

(assert (=> b!4377183 m!5009401))

(assert (=> b!4377183 m!5011837))

(declare-fun m!5011849 () Bool)

(assert (=> b!4377183 m!5011849))

(declare-fun m!5011851 () Bool)

(assert (=> d!1302914 m!5011851))

(declare-fun m!5011853 () Bool)

(assert (=> d!1302914 m!5011853))

(assert (=> bm!304390 m!5009401))

(declare-fun m!5011855 () Bool)

(assert (=> bm!304390 m!5011855))

(declare-fun m!5011857 () Bool)

(assert (=> bm!304389 m!5011857))

(assert (=> b!4376013 d!1302914))

(declare-fun bs!660075 () Bool)

(declare-fun d!1302916 () Bool)

(assert (= bs!660075 (and d!1302916 d!1302212)))

(declare-fun lambda!144859 () Int)

(assert (=> bs!660075 (= lambda!144859 lambda!144711)))

(declare-fun bs!660076 () Bool)

(assert (= bs!660076 (and d!1302916 d!1302572)))

(assert (=> bs!660076 (= lambda!144859 lambda!144829)))

(declare-fun bs!660077 () Bool)

(assert (= bs!660077 (and d!1302916 d!1302290)))

(assert (=> bs!660077 (= lambda!144859 lambda!144735)))

(declare-fun bs!660078 () Bool)

(assert (= bs!660078 (and d!1302916 d!1302228)))

(assert (=> bs!660078 (not (= lambda!144859 lambda!144721))))

(declare-fun bs!660079 () Bool)

(assert (= bs!660079 (and d!1302916 d!1302226)))

(assert (=> bs!660079 (= lambda!144859 lambda!144718)))

(declare-fun bs!660080 () Bool)

(assert (= bs!660080 (and d!1302916 start!424804)))

(assert (=> bs!660080 (= lambda!144859 lambda!144607)))

(declare-fun bs!660081 () Bool)

(assert (= bs!660081 (and d!1302916 d!1302218)))

(assert (=> bs!660081 (= lambda!144859 lambda!144716)))

(declare-fun bs!660082 () Bool)

(assert (= bs!660082 (and d!1302916 d!1302134)))

(assert (=> bs!660082 (= lambda!144859 lambda!144624)))

(declare-fun lt!1587756 () ListMap!2373)

(assert (=> d!1302916 (invariantList!719 (toList!3130 lt!1587756))))

(declare-fun e!2724635 () ListMap!2373)

(assert (=> d!1302916 (= lt!1587756 e!2724635)))

(declare-fun c!744380 () Bool)

(assert (=> d!1302916 (= c!744380 ((_ is Cons!49141) (t!356191 (t!356191 (toList!3129 lm!1707)))))))

(assert (=> d!1302916 (forall!9259 (t!356191 (t!356191 (toList!3129 lm!1707))) lambda!144859)))

(assert (=> d!1302916 (= (extractMap!632 (t!356191 (t!356191 (toList!3129 lm!1707)))) lt!1587756)))

(declare-fun b!4377184 () Bool)

(assert (=> b!4377184 (= e!2724635 (addToMapMapFromBucket!254 (_2!27626 (h!54734 (t!356191 (t!356191 (toList!3129 lm!1707))))) (extractMap!632 (t!356191 (t!356191 (t!356191 (toList!3129 lm!1707)))))))))

(declare-fun b!4377185 () Bool)

(assert (=> b!4377185 (= e!2724635 (ListMap!2374 Nil!49140))))

(assert (= (and d!1302916 c!744380) b!4377184))

(assert (= (and d!1302916 (not c!744380)) b!4377185))

(declare-fun m!5011859 () Bool)

(assert (=> d!1302916 m!5011859))

(declare-fun m!5011861 () Bool)

(assert (=> d!1302916 m!5011861))

(declare-fun m!5011863 () Bool)

(assert (=> b!4377184 m!5011863))

(assert (=> b!4377184 m!5011863))

(declare-fun m!5011865 () Bool)

(assert (=> b!4377184 m!5011865))

(assert (=> b!4376013 d!1302916))

(assert (=> d!1302224 d!1302522))

(declare-fun b!4377186 () Bool)

(declare-fun tp!1331123 () Bool)

(declare-fun e!2724636 () Bool)

(assert (=> b!4377186 (= e!2724636 (and tp_is_empty!25529 tp_is_empty!25531 tp!1331123))))

(assert (=> b!4376070 (= tp!1331118 e!2724636)))

(assert (= (and b!4376070 ((_ is Cons!49140) (t!356190 (t!356190 newBucket!200)))) b!4377186))

(declare-fun e!2724637 () Bool)

(declare-fun tp!1331124 () Bool)

(declare-fun b!4377187 () Bool)

(assert (=> b!4377187 (= e!2724637 (and tp_is_empty!25529 tp_is_empty!25531 tp!1331124))))

(assert (=> b!4376065 (= tp!1331114 e!2724637)))

(assert (= (and b!4376065 ((_ is Cons!49140) (_2!27626 (h!54734 (toList!3129 lm!1707))))) b!4377187))

(declare-fun b!4377188 () Bool)

(declare-fun e!2724638 () Bool)

(declare-fun tp!1331125 () Bool)

(declare-fun tp!1331126 () Bool)

(assert (=> b!4377188 (= e!2724638 (and tp!1331125 tp!1331126))))

(assert (=> b!4376065 (= tp!1331115 e!2724638)))

(assert (= (and b!4376065 ((_ is Cons!49141) (t!356191 (toList!3129 lm!1707)))) b!4377188))

(declare-fun b_lambda!134803 () Bool)

(assert (= b_lambda!134601 (or d!1302202 b_lambda!134803)))

(declare-fun bs!660083 () Bool)

(declare-fun d!1302918 () Bool)

(assert (= bs!660083 (and d!1302918 d!1302202)))

(assert (=> bs!660083 (= (dynLambda!20705 lambda!144706 (h!54733 newBucket!200)) (contains!11461 lt!1586805 (_1!27625 (h!54733 newBucket!200))))))

(declare-fun m!5011867 () Bool)

(assert (=> bs!660083 m!5011867))

(assert (=> b!4376616 d!1302918))

(declare-fun b_lambda!134805 () Bool)

(assert (= b_lambda!134541 (or b!4376006 b_lambda!134805)))

(declare-fun bs!660084 () Bool)

(declare-fun d!1302920 () Bool)

(assert (= bs!660084 (and d!1302920 b!4376006)))

(assert (=> bs!660084 (= (dynLambda!20705 lambda!144709 (h!54733 (toList!3130 (+!778 lt!1586446 lt!1586455)))) (contains!11461 lt!1586832 (_1!27625 (h!54733 (toList!3130 (+!778 lt!1586446 lt!1586455))))))))

(declare-fun m!5011869 () Bool)

(assert (=> bs!660084 m!5011869))

(assert (=> b!4376177 d!1302920))

(declare-fun b_lambda!134807 () Bool)

(assert (= b_lambda!134549 (or b!4376006 b_lambda!134807)))

(declare-fun bs!660085 () Bool)

(declare-fun d!1302922 () Bool)

(assert (= bs!660085 (and d!1302922 b!4376006)))

(assert (=> bs!660085 (= (dynLambda!20705 lambda!144709 (h!54733 (toList!3130 lt!1586822))) (contains!11461 lt!1586832 (_1!27625 (h!54733 (toList!3130 lt!1586822)))))))

(declare-fun m!5011871 () Bool)

(assert (=> bs!660085 m!5011871))

(assert (=> b!4376221 d!1302922))

(declare-fun b_lambda!134809 () Bool)

(assert (= b_lambda!134651 (or b!4375992 b_lambda!134809)))

(declare-fun bs!660086 () Bool)

(declare-fun d!1302924 () Bool)

(assert (= bs!660086 (and d!1302924 b!4375992)))

(assert (=> bs!660086 (= (dynLambda!20705 lambda!144701 (h!54733 lt!1586456)) (contains!11461 lt!1586783 (_1!27625 (h!54733 lt!1586456))))))

(assert (=> bs!660086 m!5009283))

(assert (=> d!1302660 d!1302924))

(declare-fun b_lambda!134811 () Bool)

(assert (= b_lambda!134551 (or b!4376006 b_lambda!134811)))

(declare-fun bs!660087 () Bool)

(declare-fun d!1302926 () Bool)

(assert (= bs!660087 (and d!1302926 b!4376006)))

(assert (=> bs!660087 (= (dynLambda!20705 lambda!144709 (h!54733 (t!356190 lt!1586460))) (contains!11461 lt!1586832 (_1!27625 (h!54733 (t!356190 lt!1586460)))))))

(declare-fun m!5011873 () Bool)

(assert (=> bs!660087 m!5011873))

(assert (=> b!4376232 d!1302926))

(declare-fun b_lambda!134813 () Bool)

(assert (= b_lambda!134799 (or start!424804 b_lambda!134813)))

(declare-fun bs!660088 () Bool)

(declare-fun d!1302928 () Bool)

(assert (= bs!660088 (and d!1302928 start!424804)))

(assert (=> bs!660088 (= (dynLambda!20703 lambda!144607 (h!54734 (toList!3129 (+!777 lm!1707 (tuple2!48665 hash!377 newBucket!200))))) (noDuplicateKeys!573 (_2!27626 (h!54734 (toList!3129 (+!777 lm!1707 (tuple2!48665 hash!377 newBucket!200)))))))))

(declare-fun m!5011875 () Bool)

(assert (=> bs!660088 m!5011875))

(assert (=> b!4377172 d!1302928))

(declare-fun b_lambda!134815 () Bool)

(assert (= b_lambda!134793 (or d!1302118 b_lambda!134815)))

(declare-fun bs!660089 () Bool)

(declare-fun d!1302930 () Bool)

(assert (= bs!660089 (and d!1302930 d!1302118)))

(assert (=> bs!660089 (= (dynLambda!20705 lambda!144613 (h!54733 lt!1586452)) (= (hash!1736 hashF!1247 (_1!27625 (h!54733 lt!1586452))) hash!377))))

(declare-fun m!5011877 () Bool)

(assert (=> bs!660089 m!5011877))

(assert (=> b!4377166 d!1302930))

(declare-fun b_lambda!134817 () Bool)

(assert (= b_lambda!134797 (or d!1302218 b_lambda!134817)))

(declare-fun bs!660090 () Bool)

(declare-fun d!1302932 () Bool)

(assert (= bs!660090 (and d!1302932 d!1302218)))

(assert (=> bs!660090 (= (dynLambda!20703 lambda!144716 (h!54734 (toList!3129 lt!1586445))) (noDuplicateKeys!573 (_2!27626 (h!54734 (toList!3129 lt!1586445)))))))

(assert (=> bs!660090 m!5009493))

(assert (=> b!4377170 d!1302932))

(declare-fun b_lambda!134819 () Bool)

(assert (= b_lambda!134611 (or d!1302226 b_lambda!134819)))

(declare-fun bs!660091 () Bool)

(declare-fun d!1302934 () Bool)

(assert (= bs!660091 (and d!1302934 d!1302226)))

(assert (=> bs!660091 (= (dynLambda!20703 lambda!144718 (h!54734 (toList!3129 lm!1707))) (noDuplicateKeys!573 (_2!27626 (h!54734 (toList!3129 lm!1707)))))))

(assert (=> bs!660091 m!5009489))

(assert (=> b!4376733 d!1302934))

(declare-fun b_lambda!134821 () Bool)

(assert (= b_lambda!134703 (or d!1302212 b_lambda!134821)))

(declare-fun bs!660092 () Bool)

(declare-fun d!1302936 () Bool)

(assert (= bs!660092 (and d!1302936 d!1302212)))

(assert (=> bs!660092 (= (dynLambda!20703 lambda!144711 (h!54734 (t!356191 (toList!3129 lm!1707)))) (noDuplicateKeys!573 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707))))))))

(assert (=> bs!660092 m!5011853))

(assert (=> b!4377120 d!1302936))

(declare-fun b_lambda!134823 () Bool)

(assert (= b_lambda!134609 (or start!424804 b_lambda!134823)))

(assert (=> d!1302532 d!1302236))

(declare-fun b_lambda!134825 () Bool)

(assert (= b_lambda!134571 (or start!424804 b_lambda!134825)))

(declare-fun bs!660093 () Bool)

(declare-fun d!1302938 () Bool)

(assert (= bs!660093 (and d!1302938 start!424804)))

(assert (=> bs!660093 (= (dynLambda!20703 lambda!144607 (h!54734 (t!356191 (toList!3129 lt!1586445)))) (noDuplicateKeys!573 (_2!27626 (h!54734 (t!356191 (toList!3129 lt!1586445))))))))

(declare-fun m!5011879 () Bool)

(assert (=> bs!660093 m!5011879))

(assert (=> b!4376411 d!1302938))

(declare-fun b_lambda!134827 () Bool)

(assert (= b_lambda!134547 (or b!4376006 b_lambda!134827)))

(declare-fun bs!660094 () Bool)

(declare-fun d!1302940 () Bool)

(assert (= bs!660094 (and d!1302940 b!4376006)))

(assert (=> bs!660094 (= (dynLambda!20705 lambda!144709 (h!54733 lt!1586460)) (contains!11461 lt!1586832 (_1!27625 (h!54733 lt!1586460))))))

(assert (=> bs!660094 m!5009373))

(assert (=> d!1302308 d!1302940))

(declare-fun b_lambda!134829 () Bool)

(assert (= b_lambda!134553 (or b!4376006 b_lambda!134829)))

(assert (=> b!4376249 d!1302940))

(declare-fun b_lambda!134831 () Bool)

(assert (= b_lambda!134577 (or b!4376001 b_lambda!134831)))

(declare-fun bs!660095 () Bool)

(declare-fun d!1302942 () Bool)

(assert (= bs!660095 (and d!1302942 b!4376001)))

(assert (=> bs!660095 (= (dynLambda!20705 lambda!144705 (h!54733 newBucket!200)) (contains!11461 lt!1586808 (_1!27625 (h!54733 newBucket!200))))))

(assert (=> bs!660095 m!5009331))

(assert (=> b!4376442 d!1302942))

(declare-fun b_lambda!134833 () Bool)

(assert (= b_lambda!134801 (or d!1302208 b_lambda!134833)))

(declare-fun bs!660096 () Bool)

(declare-fun d!1302944 () Bool)

(assert (= bs!660096 (and d!1302944 d!1302208)))

(assert (=> bs!660096 (= (dynLambda!20705 lambda!144710 (h!54733 (toList!3130 (+!778 lt!1586446 lt!1586455)))) (contains!11461 lt!1586829 (_1!27625 (h!54733 (toList!3130 (+!778 lt!1586446 lt!1586455))))))))

(declare-fun m!5011881 () Bool)

(assert (=> bs!660096 m!5011881))

(assert (=> b!4377177 d!1302944))

(declare-fun b_lambda!134835 () Bool)

(assert (= b_lambda!134669 (or b!4375992 b_lambda!134835)))

(declare-fun bs!660097 () Bool)

(declare-fun d!1302946 () Bool)

(assert (= bs!660097 (and d!1302946 b!4375992)))

(assert (=> bs!660097 (= (dynLambda!20705 lambda!144701 (h!54733 (toList!3130 lt!1586773))) (contains!11461 lt!1586783 (_1!27625 (h!54733 (toList!3130 lt!1586773)))))))

(declare-fun m!5011883 () Bool)

(assert (=> bs!660097 m!5011883))

(assert (=> b!4377007 d!1302946))

(declare-fun b_lambda!134837 () Bool)

(assert (= b_lambda!134573 (or b!4376001 b_lambda!134837)))

(declare-fun bs!660098 () Bool)

(declare-fun d!1302948 () Bool)

(assert (= bs!660098 (and d!1302948 b!4376001)))

(assert (=> bs!660098 (= (dynLambda!20705 lambda!144705 (h!54733 (t!356190 newBucket!200))) (contains!11461 lt!1586808 (_1!27625 (h!54733 (t!356190 newBucket!200)))))))

(declare-fun m!5011885 () Bool)

(assert (=> bs!660098 m!5011885))

(assert (=> b!4376418 d!1302948))

(declare-fun b_lambda!134839 () Bool)

(assert (= b_lambda!134671 (or d!1302152 b_lambda!134839)))

(declare-fun bs!660099 () Bool)

(declare-fun d!1302950 () Bool)

(assert (= bs!660099 (and d!1302950 d!1302152)))

(assert (=> bs!660099 (= (dynLambda!20705 lambda!144702 (h!54733 lt!1586456)) (contains!11461 lt!1586780 (_1!27625 (h!54733 lt!1586456))))))

(declare-fun m!5011887 () Bool)

(assert (=> bs!660099 m!5011887))

(assert (=> b!4377009 d!1302950))

(declare-fun b_lambda!134841 () Bool)

(assert (= b_lambda!134675 (or b!4376019 b_lambda!134841)))

(declare-fun bs!660100 () Bool)

(declare-fun d!1302952 () Bool)

(assert (= bs!660100 (and d!1302952 b!4376019)))

(assert (=> bs!660100 (= (dynLambda!20705 lambda!144714 (h!54733 (toList!3130 lt!1586446))) (contains!11461 lt!1586866 (_1!27625 (h!54733 (toList!3130 lt!1586446)))))))

(declare-fun m!5011889 () Bool)

(assert (=> bs!660100 m!5011889))

(assert (=> b!4377021 d!1302952))

(declare-fun b_lambda!134843 () Bool)

(assert (= b_lambda!134567 (or d!1302214 b_lambda!134843)))

(declare-fun bs!660101 () Bool)

(declare-fun d!1302954 () Bool)

(assert (= bs!660101 (and d!1302954 d!1302214)))

(assert (=> bs!660101 (= (dynLambda!20705 lambda!144715 (h!54733 (toList!3130 lt!1586446))) (contains!11461 lt!1586863 (_1!27625 (h!54733 (toList!3130 lt!1586446)))))))

(declare-fun m!5011891 () Bool)

(assert (=> bs!660101 m!5011891))

(assert (=> b!4376407 d!1302954))

(declare-fun b_lambda!134845 () Bool)

(assert (= b_lambda!134569 (or b!4376001 b_lambda!134845)))

(declare-fun bs!660102 () Bool)

(declare-fun d!1302956 () Bool)

(assert (= bs!660102 (and d!1302956 b!4376001)))

(assert (=> bs!660102 (= (dynLambda!20705 lambda!144705 (h!54733 (toList!3130 lt!1586446))) (contains!11461 lt!1586808 (_1!27625 (h!54733 (toList!3130 lt!1586446)))))))

(declare-fun m!5011893 () Bool)

(assert (=> bs!660102 m!5011893))

(assert (=> b!4376409 d!1302956))

(declare-fun b_lambda!134847 () Bool)

(assert (= b_lambda!134543 (or d!1302152 b_lambda!134847)))

(declare-fun bs!660103 () Bool)

(declare-fun d!1302958 () Bool)

(assert (= bs!660103 (and d!1302958 d!1302152)))

(assert (=> bs!660103 (= (dynLambda!20705 lambda!144702 (h!54733 (toList!3130 lt!1586446))) (contains!11461 lt!1586780 (_1!27625 (h!54733 (toList!3130 lt!1586446)))))))

(declare-fun m!5011895 () Bool)

(assert (=> bs!660103 m!5011895))

(assert (=> b!4376179 d!1302958))

(declare-fun b_lambda!134849 () Bool)

(assert (= b_lambda!134647 (or b!4375992 b_lambda!134849)))

(assert (=> b!4376929 d!1302924))

(declare-fun b_lambda!134851 () Bool)

(assert (= b_lambda!134603 (or d!1302214 b_lambda!134851)))

(declare-fun bs!660104 () Bool)

(declare-fun d!1302960 () Bool)

(assert (= bs!660104 (and d!1302960 d!1302214)))

(assert (=> bs!660104 (= (dynLambda!20705 lambda!144715 (h!54733 lt!1586460)) (contains!11461 lt!1586863 (_1!27625 (h!54733 lt!1586460))))))

(declare-fun m!5011897 () Bool)

(assert (=> bs!660104 m!5011897))

(assert (=> b!4376649 d!1302960))

(declare-fun b_lambda!134853 () Bool)

(assert (= b_lambda!134575 (or b!4376001 b_lambda!134853)))

(declare-fun bs!660105 () Bool)

(declare-fun d!1302962 () Bool)

(assert (= bs!660105 (and d!1302962 b!4376001)))

(assert (=> bs!660105 (= (dynLambda!20705 lambda!144705 (h!54733 (toList!3130 lt!1586798))) (contains!11461 lt!1586808 (_1!27625 (h!54733 (toList!3130 lt!1586798)))))))

(declare-fun m!5011899 () Bool)

(assert (=> bs!660105 m!5011899))

(assert (=> b!4376420 d!1302962))

(declare-fun b_lambda!134855 () Bool)

(assert (= b_lambda!134679 (or b!4376019 b_lambda!134855)))

(declare-fun bs!660106 () Bool)

(declare-fun d!1302964 () Bool)

(assert (= bs!660106 (and d!1302964 b!4376019)))

(assert (=> bs!660106 (= (dynLambda!20705 lambda!144714 (h!54733 (t!356190 lt!1586460))) (contains!11461 lt!1586866 (_1!27625 (h!54733 (t!356190 lt!1586460)))))))

(declare-fun m!5011901 () Bool)

(assert (=> bs!660106 m!5011901))

(assert (=> b!4377024 d!1302964))

(declare-fun b_lambda!134857 () Bool)

(assert (= b_lambda!134699 (or d!1302220 b_lambda!134857)))

(declare-fun bs!660107 () Bool)

(declare-fun d!1302966 () Bool)

(assert (= bs!660107 (and d!1302966 d!1302220)))

(assert (=> bs!660107 (= (dynLambda!20705 lambda!144717 (h!54733 newBucket!200)) (= (hash!1736 hashF!1247 (_1!27625 (h!54733 newBucket!200))) hash!377))))

(declare-fun m!5011903 () Bool)

(assert (=> bs!660107 m!5011903))

(assert (=> b!4377116 d!1302966))

(declare-fun b_lambda!134859 () Bool)

(assert (= b_lambda!134701 (or d!1302134 b_lambda!134859)))

(declare-fun bs!660108 () Bool)

(declare-fun d!1302968 () Bool)

(assert (= bs!660108 (and d!1302968 d!1302134)))

(assert (=> bs!660108 (= (dynLambda!20703 lambda!144624 (h!54734 (toList!3129 lt!1586459))) (noDuplicateKeys!573 (_2!27626 (h!54734 (toList!3129 lt!1586459)))))))

(assert (=> bs!660108 m!5009689))

(assert (=> b!4377118 d!1302968))

(declare-fun b_lambda!134861 () Bool)

(assert (= b_lambda!134677 (or b!4376019 b_lambda!134861)))

(declare-fun bs!660109 () Bool)

(declare-fun d!1302970 () Bool)

(assert (= bs!660109 (and d!1302970 b!4376019)))

(assert (=> bs!660109 (= (dynLambda!20705 lambda!144714 (h!54733 lt!1586460)) (contains!11461 lt!1586866 (_1!27625 (h!54733 lt!1586460))))))

(assert (=> bs!660109 m!5009427))

(assert (=> d!1302710 d!1302970))

(declare-fun b_lambda!134863 () Bool)

(assert (= b_lambda!134673 (or d!1302208 b_lambda!134863)))

(declare-fun bs!660110 () Bool)

(declare-fun d!1302972 () Bool)

(assert (= bs!660110 (and d!1302972 d!1302208)))

(assert (=> bs!660110 (= (dynLambda!20705 lambda!144710 (h!54733 lt!1586460)) (contains!11461 lt!1586829 (_1!27625 (h!54733 lt!1586460))))))

(declare-fun m!5011905 () Bool)

(assert (=> bs!660110 m!5011905))

(assert (=> b!4377013 d!1302972))

(declare-fun b_lambda!134865 () Bool)

(assert (= b_lambda!134687 (or b!4376019 b_lambda!134865)))

(declare-fun bs!660111 () Bool)

(declare-fun d!1302974 () Bool)

(assert (= bs!660111 (and d!1302974 b!4376019)))

(assert (=> bs!660111 (= (dynLambda!20705 lambda!144714 (h!54733 (toList!3130 lt!1586856))) (contains!11461 lt!1586866 (_1!27625 (h!54733 (toList!3130 lt!1586856)))))))

(declare-fun m!5011907 () Bool)

(assert (=> bs!660111 m!5011907))

(assert (=> b!4377059 d!1302974))

(declare-fun b_lambda!134867 () Bool)

(assert (= b_lambda!134629 (or d!1302202 b_lambda!134867)))

(declare-fun bs!660112 () Bool)

(declare-fun d!1302976 () Bool)

(assert (= bs!660112 (and d!1302976 d!1302202)))

(assert (=> bs!660112 (= (dynLambda!20705 lambda!144706 (h!54733 (toList!3130 lt!1586446))) (contains!11461 lt!1586805 (_1!27625 (h!54733 (toList!3130 lt!1586446)))))))

(declare-fun m!5011909 () Bool)

(assert (=> bs!660112 m!5011909))

(assert (=> b!4376789 d!1302976))

(declare-fun b_lambda!134869 () Bool)

(assert (= b_lambda!134791 (or d!1302228 b_lambda!134869)))

(declare-fun bs!660113 () Bool)

(declare-fun d!1302978 () Bool)

(assert (= bs!660113 (and d!1302978 d!1302228)))

(assert (=> bs!660113 (= (dynLambda!20703 lambda!144721 (h!54734 (toList!3129 lm!1707))) (allKeysSameHash!531 (_2!27626 (h!54734 (toList!3129 lm!1707))) (_1!27626 (h!54734 (toList!3129 lm!1707))) hashF!1247))))

(declare-fun m!5011911 () Bool)

(assert (=> bs!660113 m!5011911))

(assert (=> b!4377164 d!1302978))

(declare-fun b_lambda!134871 () Bool)

(assert (= b_lambda!134579 (or b!4376001 b_lambda!134871)))

(assert (=> d!1302406 d!1302942))

(declare-fun b_lambda!134873 () Bool)

(assert (= b_lambda!134649 (or b!4375992 b_lambda!134873)))

(declare-fun bs!660114 () Bool)

(declare-fun d!1302980 () Bool)

(assert (= bs!660114 (and d!1302980 b!4375992)))

(assert (=> bs!660114 (= (dynLambda!20705 lambda!144701 (h!54733 (t!356190 lt!1586456))) (contains!11461 lt!1586783 (_1!27625 (h!54733 (t!356190 lt!1586456)))))))

(declare-fun m!5011913 () Bool)

(assert (=> bs!660114 m!5011913))

(assert (=> b!4376931 d!1302980))

(declare-fun b_lambda!134875 () Bool)

(assert (= b_lambda!134539 (or start!424804 b_lambda!134875)))

(declare-fun bs!660115 () Bool)

(declare-fun d!1302982 () Bool)

(assert (= bs!660115 (and d!1302982 start!424804)))

(assert (=> bs!660115 (= (dynLambda!20703 lambda!144607 (h!54734 (t!356191 (toList!3129 lm!1707)))) (noDuplicateKeys!573 (_2!27626 (h!54734 (t!356191 (toList!3129 lm!1707))))))))

(assert (=> bs!660115 m!5011853))

(assert (=> b!4376139 d!1302982))

(declare-fun b_lambda!134877 () Bool)

(assert (= b_lambda!134693 (or b!4376019 b_lambda!134877)))

(assert (=> b!4377078 d!1302970))

(declare-fun b_lambda!134879 () Bool)

(assert (= b_lambda!134641 (or b!4375992 b_lambda!134879)))

(declare-fun bs!660116 () Bool)

(declare-fun d!1302984 () Bool)

(assert (= bs!660116 (and d!1302984 b!4375992)))

(assert (=> bs!660116 (= (dynLambda!20705 lambda!144701 (h!54733 (toList!3130 lt!1586446))) (contains!11461 lt!1586783 (_1!27625 (h!54733 (toList!3130 lt!1586446)))))))

(declare-fun m!5011915 () Bool)

(assert (=> bs!660116 m!5011915))

(assert (=> b!4376915 d!1302984))

(check-sat (not bs!660114) (not b!4376348) (not b_lambda!134869) (not d!1302560) (not b!4377127) (not b!4376738) (not bs!660101) (not b!4376412) (not b!4377108) (not b!4376151) (not b!4376785) (not d!1302716) (not b!4376222) (not b!4376147) (not b!4377179) (not d!1302906) (not b!4376796) (not b!4377023) (not b!4376940) (not b!4376228) (not b!4377036) (not b!4377031) (not bs!660089) (not bm!304311) (not d!1302472) (not b_lambda!134843) (not b!4376802) (not b_lambda!134617) (not bm!304268) (not b!4377004) (not b_lambda!134867) (not b!4376933) (not b!4376431) (not bm!304359) (not bm!304385) (not d!1302534) (not b!4376793) (not bm!304367) (not b!4376768) (not b_lambda!134839) (not d!1302694) (not d!1302362) (not b!4376726) (not bs!660098) (not b_lambda!134521) (not b!4376765) (not bm!304341) (not b!4376432) (not b!4376146) (not b_lambda!134807) (not b!4376797) (not b!4376736) (not b!4377006) (not b_lambda!134809) (not b!4376350) (not bm!304383) (not b!4376814) (not b!4376281) (not b!4376190) (not d!1302400) (not bs!660087) (not b!4376149) (not bs!660097) (not d!1302330) (not d!1302508) (not b!4376945) (not b!4377027) (not d!1302496) (not d!1302526) (not b!4376720) (not b!4376906) (not d!1302554) (not b!4376586) (not b!4376347) (not b!4376766) (not bm!304379) (not bs!660111) (not b!4376193) (not bs!660104) (not b!4377060) (not bm!304342) (not b!4377037) (not bs!660103) (not b!4376937) (not d!1302406) (not d!1302494) (not b!4376625) (not b!4376252) (not b!4376344) (not d!1302666) (not d!1302646) (not d!1302600) (not b!4376443) (not b!4376898) (not b!4377171) (not b!4376828) (not b!4376148) (not b!4377072) (not b!4376632) (not bs!660092) (not b!4376605) (not bs!660096) (not b_lambda!134805) (not b!4377188) (not b_lambda!134813) (not b!4377039) (not b!4377032) (not d!1302648) (not b_lambda!134875) (not b!4377068) (not b!4377141) (not b!4376241) (not b!4376713) (not b!4376767) (not b!4376436) (not b!4377065) (not bs!660100) (not b!4376564) (not b_lambda!134823) (not bs!660090) (not b!4377034) (not d!1302524) (not d!1302572) (not bm!304313) (not b_lambda!134837) (not bm!304322) (not d!1302588) (not b!4376421) (not b_lambda!134829) (not b!4376895) (not bm!304330) (not b!4376930) (not b!4376529) (not b!4376438) (not b!4377147) (not b!4377022) (not b!4376773) (not b!4377033) (not bm!304369) (not b!4376901) (not b_lambda!134625) (not b!4376788) (not b!4376923) (not b!4377079) (not b!4376653) (not b!4377074) (not b!4376903) (not bm!304382) (not bs!660105) (not b!4376242) (not d!1302782) (not b!4376919) (not bm!304314) (not b_lambda!134645) (not bs!660084) (not b!4376189) (not b!4376535) (not bs!660088) (not bm!304376) (not d!1302714) (not b!4376349) (not b!4376410) (not bm!304384) (not b!4376434) (not b!4377173) (not bs!660109) (not d!1302760) (not b!4376165) (not b!4377075) (not b!4376186) (not d!1302790) (not d!1302376) (not b!4376250) (not b!4377073) (not b!4376611) (not b!4376807) (not bs!660085) (not d!1302660) (not d!1302744) (not bm!304272) (not b!4376445) (not b!4376239) (not b!4376716) (not d!1302348) (not b!4377005) (not b_lambda!134879) (not b!4376905) (not b!4377002) (not b!4376427) (not b!4376800) (not d!1302740) (not b!4377174) (not b_lambda!134563) (not bm!304377) (not b_lambda!134795) (not b!4376446) (not b_lambda!134819) (not b!4377186) (not bs!660099) (not d!1302914) (not bm!304368) (not d!1302430) (not d!1302290) (not b_lambda!134849) (not b!4376230) (not bm!304298) (not b!4377115) (not d!1302316) (not b_lambda!134615) (not d!1302402) (not d!1302396) (not b!4376999) (not b!4376728) (not b!4376224) (not b_lambda!134831) (not b!4377117) (not b!4377175) (not b!4376619) (not b!4377150) (not b_lambda!134855) (not bm!304273) (not b!4377100) (not b!4376449) (not d!1302916) (not bm!304380) (not b!4376896) tp_is_empty!25531 (not b!4376346) (not d!1302320) (not bs!660112) (not bs!660083) (not b_lambda!134877) (not bs!660106) (not bs!660108) (not b_lambda!134811) (not b!4377114) (not bm!304344) (not b!4376486) (not d!1302774) (not b!4376424) (not b!4377028) (not b!4377109) (not bs!660107) (not d!1302490) (not d!1302360) (not b_lambda!134865) (not d!1302398) (not b!4376943) (not b!4376476) (not bm!304285) (not bs!660115) (not bm!304267) (not d!1302382) (not d!1302280) (not b!4376651) (not b!4376235) (not b!4377162) (not d!1302482) (not bm!304315) (not b!4376770) (not b!4376441) (not b!4376798) (not d!1302528) (not b!4377119) (not bm!304343) (not b_lambda!134861) (not b!4377069) (not d!1302564) (not bm!304271) (not b!4376240) (not bm!304283) (not b_lambda!134545) (not b_lambda!134815) (not b!4377111) (not d!1302354) (not b!4377184) (not b!4376652) (not bm!304312) (not b!4376615) (not b!4376342) (not bm!304297) (not b!4377012) (not b_lambda!134817) (not b!4376428) (not b!4377142) (not b!4376599) (not bs!660086) (not b!4377153) (not b!4376466) (not bm!304366) (not d!1302282) (not b_lambda!134627) (not b!4376598) (not b!4376563) (not b!4376487) (not b_lambda!134845) (not d!1302800) (not bs!660113) (not b!4377121) (not b_lambda!134871) (not d!1302408) (not d!1302298) (not b!4376596) (not b!4376352) (not b_lambda!134821) (not b!4377165) (not b!4377149) (not b!4376806) (not d!1302478) (not b!4377155) (not d!1302662) (not d!1302710) (not d!1302890) (not b_lambda!134527) (not b_lambda!134873) (not b!4377187) (not b_lambda!134863) (not d!1302812) (not b!4377178) (not d!1302488) (not b!4376237) (not b!4376447) (not bs!660093) (not b_lambda!134525) (not b_lambda!134859) (not b!4376255) (not bs!660110) (not d!1302312) (not b!4377010) (not bm!304269) (not b!4377003) (not b_lambda!134841) (not b!4376827) (not b!4377011) (not b!4376188) (not b!4376253) (not d!1302500) (not b!4377001) (not bs!660091) (not b!4376790) (not b!4376753) tp_is_empty!25529 (not b!4377129) (not b!4377169) (not b!4376609) (not b!4376591) (not b!4376944) (not b!4376408) (not b!4376226) (not b!4376231) (not b!4376935) (not b!4376439) (not bs!660095) (not b!4376589) (not b!4377008) (not b!4377103) (not b!4377025) (not b!4376533) (not b!4376932) (not b_lambda!134827) (not b!4377158) (not bs!660116) (not bm!304388) (not bm!304284) (not b!4377014) (not b!4376191) (not b!4376429) (not b!4376947) (not b!4377035) (not b!4376282) (not bs!660102) (not b!4376216) (not b_lambda!134833) (not b!4376430) (not b!4377183) (not b!4376634) (not b!4376331) (not d!1302808) (not b!4376423) (not b_lambda!134851) (not b!4377180) (not b!4376633) (not b!4376740) (not d!1302418) (not d!1302908) (not b!4377020) (not b!4377139) (not bm!304378) (not b!4377134) (not b!4376939) (not bm!304389) (not b!4376419) (not b!4376444) (not bm!304360) (not b!4376178) (not b!4376715) (not b_lambda!134523) (not b!4376233) (not b!4376140) (not d!1302304) (not d!1302308) (not b_lambda!134847) (not b!4376734) (not d!1302422) (not b!4376251) (not b!4376435) (not b!4377029) (not b!4376710) (not b!4376345) (not b!4376180) (not b!4376425) (not d!1302498) (not b!4377132) (not b!4376916) (not b!4376320) (not bm!304390) (not d!1302328) (not b_lambda!134803) (not d!1302664) (not b_lambda!134853) (not b!4376942) (not b!4377133) (not d!1302778) (not b!4376731) (not d!1302364) (not b_lambda!134825) (not b!4377148) (not d!1302696) (not b!4377066) (not bm!304296) (not b!4377105) (not d!1302584) (not b!4377167) (not b!4377181) (not b!4377157) (not b!4376804) (not b!4376468) (not b!4376936) (not bm!304286) (not b!4376801) (not b!4376229) (not b!4376440) (not b!4376805) (not b!4376195) (not b!4376998) (not b!4376941) (not d!1302530) (not b!4376654) (not b!4377128) (not b!4377131) (not d!1302804) (not d!1302594) (not d!1302814) (not b!4376650) (not b!4376617) (not b_lambda!134857) (not b!4376560) (not b!4376997) (not bm!304276) (not b_lambda!134835) (not b!4376376) (not bs!660094) (not b!4376714) (not b!4377084) (not b!4376897) (not d!1302718) (not b!4377070) (not b!4376225) (not b!4376236))
(check-sat)
