; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497794 () Bool)

(assert start!497794)

(declare-fun b!4813921 () Bool)

(declare-fun res!2047561 () Bool)

(declare-fun e!3007594 () Bool)

(assert (=> b!4813921 (=> (not res!2047561) (not e!3007594))))

(declare-datatypes ((K!16307 0))(
  ( (K!16308 (val!21351 Int)) )
))
(declare-datatypes ((V!16553 0))(
  ( (V!16554 (val!21352 Int)) )
))
(declare-datatypes ((tuple2!57638 0))(
  ( (tuple2!57639 (_1!32113 K!16307) (_2!32113 V!16553)) )
))
(declare-datatypes ((List!54786 0))(
  ( (Nil!54662) (Cons!54662 (h!61094 tuple2!57638) (t!362282 List!54786)) )
))
(declare-datatypes ((tuple2!57640 0))(
  ( (tuple2!57641 (_1!32114 (_ BitVec 64)) (_2!32114 List!54786)) )
))
(declare-datatypes ((List!54787 0))(
  ( (Nil!54663) (Cons!54663 (h!61095 tuple2!57640) (t!362283 List!54787)) )
))
(declare-datatypes ((ListLongMap!5717 0))(
  ( (ListLongMap!5718 (toList!7237 List!54787)) )
))
(declare-fun lm!1254 () ListLongMap!5717)

(declare-datatypes ((Hashable!7127 0))(
  ( (HashableExt!7126 (__x!33402 Int)) )
))
(declare-fun hashF!938 () Hashable!7127)

(declare-fun allKeysSameHashInMap!2443 (ListLongMap!5717 Hashable!7127) Bool)

(assert (=> b!4813921 (= res!2047561 (allKeysSameHashInMap!2443 lm!1254 hashF!938))))

(declare-fun b!4813922 () Bool)

(declare-datatypes ((Unit!141789 0))(
  ( (Unit!141790) )
))
(declare-fun e!3007595 () Unit!141789)

(declare-fun Unit!141791 () Unit!141789)

(assert (=> b!4813922 (= e!3007595 Unit!141791)))

(declare-fun b!4813923 () Bool)

(declare-fun Unit!141792 () Unit!141789)

(assert (=> b!4813923 (= e!3007595 Unit!141792)))

(declare-fun lt!1965009 () Unit!141789)

(declare-fun lt!1964996 () (_ BitVec 64))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!318 (List!54787 (_ BitVec 64)) Unit!141789)

(assert (=> b!4813923 (= lt!1965009 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!318 (toList!7237 lm!1254) lt!1964996))))

(declare-fun containsKey!4206 (List!54787 (_ BitVec 64)) Bool)

(assert (=> b!4813923 (containsKey!4206 (toList!7237 lm!1254) lt!1964996)))

(declare-fun lt!1965006 () Unit!141789)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2324 (List!54787 (_ BitVec 64)) Unit!141789)

(assert (=> b!4813923 (= lt!1965006 (lemmaContainsKeyImpliesGetValueByKeyDefined!2324 (toList!7237 lm!1254) lt!1964996))))

(declare-datatypes ((Option!13372 0))(
  ( (None!13371) (Some!13371 (v!49004 List!54786)) )
))
(declare-fun isDefined!10509 (Option!13372) Bool)

(declare-fun getValueByKey!2537 (List!54787 (_ BitVec 64)) Option!13372)

(assert (=> b!4813923 (isDefined!10509 (getValueByKey!2537 (toList!7237 lm!1254) lt!1964996))))

(declare-fun lt!1965002 () Unit!141789)

(declare-fun lt!1965000 () List!54786)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1035 (List!54787 (_ BitVec 64) List!54786) Unit!141789)

(assert (=> b!4813923 (= lt!1965002 (lemmaGetValueByKeyImpliesContainsTuple!1035 (toList!7237 lm!1254) lt!1964996 lt!1965000))))

(assert (=> b!4813923 false))

(declare-fun b!4813924 () Bool)

(declare-fun noDuplicateKeys!2396 (List!54786) Bool)

(assert (=> b!4813924 (= e!3007594 (not (noDuplicateKeys!2396 lt!1965000)))))

(declare-fun key!2670 () K!16307)

(declare-datatypes ((Option!13373 0))(
  ( (None!13372) (Some!13372 (v!49005 tuple2!57638)) )
))
(declare-fun isDefined!10510 (Option!13373) Bool)

(declare-fun getPair!983 (List!54786 K!16307) Option!13373)

(assert (=> b!4813924 (isDefined!10510 (getPair!983 lt!1965000 key!2670))))

(declare-fun lt!1964998 () tuple2!57640)

(declare-fun lt!1965001 () Unit!141789)

(declare-fun lambda!234068 () Int)

(declare-fun forallContained!4301 (List!54787 Int tuple2!57640) Unit!141789)

(assert (=> b!4813924 (= lt!1965001 (forallContained!4301 (toList!7237 lm!1254) lambda!234068 lt!1964998))))

(declare-fun lt!1965007 () Bool)

(assert (=> b!4813924 lt!1965007))

(declare-fun lt!1965008 () Unit!141789)

(declare-fun lemmaGetValueImpliesTupleContained!650 (ListLongMap!5717 (_ BitVec 64) List!54786) Unit!141789)

(assert (=> b!4813924 (= lt!1965008 (lemmaGetValueImpliesTupleContained!650 lm!1254 lt!1964996 lt!1965000))))

(declare-fun lt!1964997 () Unit!141789)

(declare-fun lemmaInGenMapThenGetPairDefined!595 (ListLongMap!5717 K!16307 Hashable!7127) Unit!141789)

(assert (=> b!4813924 (= lt!1964997 (lemmaInGenMapThenGetPairDefined!595 lm!1254 key!2670 hashF!938))))

(declare-fun lt!1965005 () Unit!141789)

(assert (=> b!4813924 (= lt!1965005 (forallContained!4301 (toList!7237 lm!1254) lambda!234068 lt!1964998))))

(declare-fun lt!1964999 () Unit!141789)

(assert (=> b!4813924 (= lt!1964999 (forallContained!4301 (toList!7237 lm!1254) lambda!234068 lt!1964998))))

(declare-fun lt!1965003 () Unit!141789)

(assert (=> b!4813924 (= lt!1965003 e!3007595)))

(declare-fun c!820451 () Bool)

(assert (=> b!4813924 (= c!820451 (not lt!1965007))))

(declare-fun contains!18435 (List!54787 tuple2!57640) Bool)

(assert (=> b!4813924 (= lt!1965007 (contains!18435 (toList!7237 lm!1254) lt!1964998))))

(assert (=> b!4813924 (= lt!1964998 (tuple2!57641 lt!1964996 lt!1965000))))

(declare-fun apply!13232 (ListLongMap!5717 (_ BitVec 64)) List!54786)

(assert (=> b!4813924 (= lt!1965000 (apply!13232 lm!1254 lt!1964996))))

(declare-fun contains!18436 (ListLongMap!5717 (_ BitVec 64)) Bool)

(assert (=> b!4813924 (contains!18436 lm!1254 lt!1964996)))

(declare-fun hash!5190 (Hashable!7127 K!16307) (_ BitVec 64))

(assert (=> b!4813924 (= lt!1964996 (hash!5190 hashF!938 key!2670))))

(declare-fun lt!1965004 () Unit!141789)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1065 (ListLongMap!5717 K!16307 Hashable!7127) Unit!141789)

(assert (=> b!4813924 (= lt!1965004 (lemmaInGenMapThenLongMapContainsHash!1065 lm!1254 key!2670 hashF!938))))

(declare-fun b!4813925 () Bool)

(declare-fun e!3007593 () Bool)

(declare-fun tp!1361680 () Bool)

(assert (=> b!4813925 (= e!3007593 tp!1361680)))

(declare-fun b!4813926 () Bool)

(declare-fun res!2047559 () Bool)

(assert (=> b!4813926 (=> (not res!2047559) (not e!3007594))))

(declare-datatypes ((ListMap!6651 0))(
  ( (ListMap!6652 (toList!7238 List!54786)) )
))
(declare-fun contains!18437 (ListMap!6651 K!16307) Bool)

(declare-fun extractMap!2577 (List!54787) ListMap!6651)

(assert (=> b!4813926 (= res!2047559 (contains!18437 (extractMap!2577 (toList!7237 lm!1254)) key!2670))))

(declare-fun res!2047560 () Bool)

(assert (=> start!497794 (=> (not res!2047560) (not e!3007594))))

(declare-fun forall!12431 (List!54787 Int) Bool)

(assert (=> start!497794 (= res!2047560 (forall!12431 (toList!7237 lm!1254) lambda!234068))))

(assert (=> start!497794 e!3007594))

(declare-fun inv!70208 (ListLongMap!5717) Bool)

(assert (=> start!497794 (and (inv!70208 lm!1254) e!3007593)))

(assert (=> start!497794 true))

(declare-fun tp_is_empty!34123 () Bool)

(assert (=> start!497794 tp_is_empty!34123))

(assert (= (and start!497794 res!2047560) b!4813921))

(assert (= (and b!4813921 res!2047561) b!4813926))

(assert (= (and b!4813926 res!2047559) b!4813924))

(assert (= (and b!4813924 c!820451) b!4813923))

(assert (= (and b!4813924 (not c!820451)) b!4813922))

(assert (= start!497794 b!4813925))

(declare-fun m!5799798 () Bool)

(assert (=> b!4813923 m!5799798))

(declare-fun m!5799800 () Bool)

(assert (=> b!4813923 m!5799800))

(declare-fun m!5799802 () Bool)

(assert (=> b!4813923 m!5799802))

(declare-fun m!5799804 () Bool)

(assert (=> b!4813923 m!5799804))

(declare-fun m!5799806 () Bool)

(assert (=> b!4813923 m!5799806))

(assert (=> b!4813923 m!5799804))

(declare-fun m!5799808 () Bool)

(assert (=> b!4813923 m!5799808))

(declare-fun m!5799810 () Bool)

(assert (=> b!4813926 m!5799810))

(assert (=> b!4813926 m!5799810))

(declare-fun m!5799812 () Bool)

(assert (=> b!4813926 m!5799812))

(declare-fun m!5799814 () Bool)

(assert (=> start!497794 m!5799814))

(declare-fun m!5799816 () Bool)

(assert (=> start!497794 m!5799816))

(declare-fun m!5799818 () Bool)

(assert (=> b!4813921 m!5799818))

(declare-fun m!5799820 () Bool)

(assert (=> b!4813924 m!5799820))

(declare-fun m!5799822 () Bool)

(assert (=> b!4813924 m!5799822))

(declare-fun m!5799824 () Bool)

(assert (=> b!4813924 m!5799824))

(declare-fun m!5799826 () Bool)

(assert (=> b!4813924 m!5799826))

(declare-fun m!5799828 () Bool)

(assert (=> b!4813924 m!5799828))

(declare-fun m!5799830 () Bool)

(assert (=> b!4813924 m!5799830))

(declare-fun m!5799832 () Bool)

(assert (=> b!4813924 m!5799832))

(assert (=> b!4813924 m!5799832))

(declare-fun m!5799834 () Bool)

(assert (=> b!4813924 m!5799834))

(declare-fun m!5799836 () Bool)

(assert (=> b!4813924 m!5799836))

(declare-fun m!5799838 () Bool)

(assert (=> b!4813924 m!5799838))

(declare-fun m!5799840 () Bool)

(assert (=> b!4813924 m!5799840))

(assert (=> b!4813924 m!5799826))

(assert (=> b!4813924 m!5799826))

(push 1)

(assert (not b!4813921))

(assert (not b!4813925))

(assert (not start!497794))

(assert (not b!4813926))

(assert (not b!4813923))

(assert (not b!4813924))

(assert tp_is_empty!34123)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4813953 () Bool)

(declare-fun e!3007609 () Option!13372)

(assert (=> b!4813953 (= e!3007609 (Some!13371 (_2!32114 (h!61095 (toList!7237 lm!1254)))))))

(declare-fun b!4813956 () Bool)

(declare-fun e!3007610 () Option!13372)

(assert (=> b!4813956 (= e!3007610 None!13371)))

(declare-fun d!1540813 () Bool)

(declare-fun c!820459 () Bool)

(assert (=> d!1540813 (= c!820459 (and (is-Cons!54663 (toList!7237 lm!1254)) (= (_1!32114 (h!61095 (toList!7237 lm!1254))) lt!1964996)))))

(assert (=> d!1540813 (= (getValueByKey!2537 (toList!7237 lm!1254) lt!1964996) e!3007609)))

(declare-fun b!4813954 () Bool)

(assert (=> b!4813954 (= e!3007609 e!3007610)))

(declare-fun c!820460 () Bool)

(assert (=> b!4813954 (= c!820460 (and (is-Cons!54663 (toList!7237 lm!1254)) (not (= (_1!32114 (h!61095 (toList!7237 lm!1254))) lt!1964996))))))

(declare-fun b!4813955 () Bool)

(assert (=> b!4813955 (= e!3007610 (getValueByKey!2537 (t!362283 (toList!7237 lm!1254)) lt!1964996))))

(assert (= (and d!1540813 c!820459) b!4813953))

(assert (= (and d!1540813 (not c!820459)) b!4813954))

(assert (= (and b!4813954 c!820460) b!4813955))

(assert (= (and b!4813954 (not c!820460)) b!4813956))

(declare-fun m!5799886 () Bool)

(assert (=> b!4813955 m!5799886))

(assert (=> b!4813923 d!1540813))

(declare-fun d!1540815 () Bool)

(assert (=> d!1540815 (contains!18435 (toList!7237 lm!1254) (tuple2!57641 lt!1964996 lt!1965000))))

(declare-fun lt!1965054 () Unit!141789)

(declare-fun choose!34886 (List!54787 (_ BitVec 64) List!54786) Unit!141789)

(assert (=> d!1540815 (= lt!1965054 (choose!34886 (toList!7237 lm!1254) lt!1964996 lt!1965000))))

(declare-fun e!3007613 () Bool)

(assert (=> d!1540815 e!3007613))

(declare-fun res!2047573 () Bool)

(assert (=> d!1540815 (=> (not res!2047573) (not e!3007613))))

(declare-fun isStrictlySorted!938 (List!54787) Bool)

(assert (=> d!1540815 (= res!2047573 (isStrictlySorted!938 (toList!7237 lm!1254)))))

(assert (=> d!1540815 (= (lemmaGetValueByKeyImpliesContainsTuple!1035 (toList!7237 lm!1254) lt!1964996 lt!1965000) lt!1965054)))

(declare-fun b!4813959 () Bool)

(assert (=> b!4813959 (= e!3007613 (= (getValueByKey!2537 (toList!7237 lm!1254) lt!1964996) (Some!13371 lt!1965000)))))

(assert (= (and d!1540815 res!2047573) b!4813959))

(declare-fun m!5799888 () Bool)

(assert (=> d!1540815 m!5799888))

(declare-fun m!5799890 () Bool)

(assert (=> d!1540815 m!5799890))

(declare-fun m!5799892 () Bool)

(assert (=> d!1540815 m!5799892))

(assert (=> b!4813959 m!5799804))

(assert (=> b!4813923 d!1540815))

(declare-fun d!1540817 () Bool)

(assert (=> d!1540817 (containsKey!4206 (toList!7237 lm!1254) lt!1964996)))

(declare-fun lt!1965057 () Unit!141789)

(declare-fun choose!34887 (List!54787 (_ BitVec 64)) Unit!141789)

(assert (=> d!1540817 (= lt!1965057 (choose!34887 (toList!7237 lm!1254) lt!1964996))))

(declare-fun e!3007616 () Bool)

(assert (=> d!1540817 e!3007616))

(declare-fun res!2047576 () Bool)

(assert (=> d!1540817 (=> (not res!2047576) (not e!3007616))))

(assert (=> d!1540817 (= res!2047576 (isStrictlySorted!938 (toList!7237 lm!1254)))))

(assert (=> d!1540817 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!318 (toList!7237 lm!1254) lt!1964996) lt!1965057)))

(declare-fun b!4813962 () Bool)

(assert (=> b!4813962 (= e!3007616 (isDefined!10509 (getValueByKey!2537 (toList!7237 lm!1254) lt!1964996)))))

(assert (= (and d!1540817 res!2047576) b!4813962))

(assert (=> d!1540817 m!5799802))

(declare-fun m!5799894 () Bool)

(assert (=> d!1540817 m!5799894))

(assert (=> d!1540817 m!5799892))

(assert (=> b!4813962 m!5799804))

(assert (=> b!4813962 m!5799804))

(assert (=> b!4813962 m!5799808))

(assert (=> b!4813923 d!1540817))

(declare-fun d!1540819 () Bool)

(declare-fun res!2047581 () Bool)

(declare-fun e!3007621 () Bool)

(assert (=> d!1540819 (=> res!2047581 e!3007621)))

(assert (=> d!1540819 (= res!2047581 (and (is-Cons!54663 (toList!7237 lm!1254)) (= (_1!32114 (h!61095 (toList!7237 lm!1254))) lt!1964996)))))

(assert (=> d!1540819 (= (containsKey!4206 (toList!7237 lm!1254) lt!1964996) e!3007621)))

(declare-fun b!4813967 () Bool)

(declare-fun e!3007622 () Bool)

(assert (=> b!4813967 (= e!3007621 e!3007622)))

(declare-fun res!2047582 () Bool)

(assert (=> b!4813967 (=> (not res!2047582) (not e!3007622))))

(assert (=> b!4813967 (= res!2047582 (and (or (not (is-Cons!54663 (toList!7237 lm!1254))) (bvsle (_1!32114 (h!61095 (toList!7237 lm!1254))) lt!1964996)) (is-Cons!54663 (toList!7237 lm!1254)) (bvslt (_1!32114 (h!61095 (toList!7237 lm!1254))) lt!1964996)))))

(declare-fun b!4813968 () Bool)

(assert (=> b!4813968 (= e!3007622 (containsKey!4206 (t!362283 (toList!7237 lm!1254)) lt!1964996))))

(assert (= (and d!1540819 (not res!2047581)) b!4813967))

(assert (= (and b!4813967 res!2047582) b!4813968))

(declare-fun m!5799896 () Bool)

(assert (=> b!4813968 m!5799896))

(assert (=> b!4813923 d!1540819))

(declare-fun d!1540821 () Bool)

(declare-fun isEmpty!29561 (Option!13372) Bool)

(assert (=> d!1540821 (= (isDefined!10509 (getValueByKey!2537 (toList!7237 lm!1254) lt!1964996)) (not (isEmpty!29561 (getValueByKey!2537 (toList!7237 lm!1254) lt!1964996))))))

(declare-fun bs!1160285 () Bool)

(assert (= bs!1160285 d!1540821))

(assert (=> bs!1160285 m!5799804))

(declare-fun m!5799898 () Bool)

(assert (=> bs!1160285 m!5799898))

(assert (=> b!4813923 d!1540821))

(declare-fun d!1540823 () Bool)

(assert (=> d!1540823 (isDefined!10509 (getValueByKey!2537 (toList!7237 lm!1254) lt!1964996))))

(declare-fun lt!1965060 () Unit!141789)

(declare-fun choose!34888 (List!54787 (_ BitVec 64)) Unit!141789)

(assert (=> d!1540823 (= lt!1965060 (choose!34888 (toList!7237 lm!1254) lt!1964996))))

(declare-fun e!3007625 () Bool)

(assert (=> d!1540823 e!3007625))

(declare-fun res!2047585 () Bool)

(assert (=> d!1540823 (=> (not res!2047585) (not e!3007625))))

(assert (=> d!1540823 (= res!2047585 (isStrictlySorted!938 (toList!7237 lm!1254)))))

(assert (=> d!1540823 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2324 (toList!7237 lm!1254) lt!1964996) lt!1965060)))

(declare-fun b!4813971 () Bool)

(assert (=> b!4813971 (= e!3007625 (containsKey!4206 (toList!7237 lm!1254) lt!1964996))))

(assert (= (and d!1540823 res!2047585) b!4813971))

(assert (=> d!1540823 m!5799804))

(assert (=> d!1540823 m!5799804))

(assert (=> d!1540823 m!5799808))

(declare-fun m!5799900 () Bool)

(assert (=> d!1540823 m!5799900))

(assert (=> d!1540823 m!5799892))

(assert (=> b!4813971 m!5799802))

(assert (=> b!4813923 d!1540823))

(declare-fun d!1540825 () Bool)

(declare-fun res!2047590 () Bool)

(declare-fun e!3007630 () Bool)

(assert (=> d!1540825 (=> res!2047590 e!3007630)))

(assert (=> d!1540825 (= res!2047590 (not (is-Cons!54662 lt!1965000)))))

(assert (=> d!1540825 (= (noDuplicateKeys!2396 lt!1965000) e!3007630)))

(declare-fun b!4813976 () Bool)

(declare-fun e!3007631 () Bool)

(assert (=> b!4813976 (= e!3007630 e!3007631)))

(declare-fun res!2047591 () Bool)

(assert (=> b!4813976 (=> (not res!2047591) (not e!3007631))))

(declare-fun containsKey!4208 (List!54786 K!16307) Bool)

(assert (=> b!4813976 (= res!2047591 (not (containsKey!4208 (t!362282 lt!1965000) (_1!32113 (h!61094 lt!1965000)))))))

(declare-fun b!4813977 () Bool)

(assert (=> b!4813977 (= e!3007631 (noDuplicateKeys!2396 (t!362282 lt!1965000)))))

(assert (= (and d!1540825 (not res!2047590)) b!4813976))

(assert (= (and b!4813976 res!2047591) b!4813977))

(declare-fun m!5799902 () Bool)

(assert (=> b!4813976 m!5799902))

(declare-fun m!5799904 () Bool)

(assert (=> b!4813977 m!5799904))

(assert (=> b!4813924 d!1540825))

(declare-fun bs!1160286 () Bool)

(declare-fun d!1540827 () Bool)

(assert (= bs!1160286 (and d!1540827 start!497794)))

(declare-fun lambda!234080 () Int)

(assert (=> bs!1160286 (= lambda!234080 lambda!234068)))

(assert (=> d!1540827 (contains!18436 lm!1254 (hash!5190 hashF!938 key!2670))))

(declare-fun lt!1965063 () Unit!141789)

(declare-fun choose!34889 (ListLongMap!5717 K!16307 Hashable!7127) Unit!141789)

(assert (=> d!1540827 (= lt!1965063 (choose!34889 lm!1254 key!2670 hashF!938))))

(assert (=> d!1540827 (forall!12431 (toList!7237 lm!1254) lambda!234080)))

(assert (=> d!1540827 (= (lemmaInGenMapThenLongMapContainsHash!1065 lm!1254 key!2670 hashF!938) lt!1965063)))

(declare-fun bs!1160287 () Bool)

(assert (= bs!1160287 d!1540827))

(assert (=> bs!1160287 m!5799828))

(assert (=> bs!1160287 m!5799828))

(declare-fun m!5799906 () Bool)

(assert (=> bs!1160287 m!5799906))

(declare-fun m!5799908 () Bool)

(assert (=> bs!1160287 m!5799908))

(declare-fun m!5799910 () Bool)

(assert (=> bs!1160287 m!5799910))

(assert (=> b!4813924 d!1540827))

(declare-fun d!1540831 () Bool)

(declare-fun isEmpty!29562 (Option!13373) Bool)

(assert (=> d!1540831 (= (isDefined!10510 (getPair!983 lt!1965000 key!2670)) (not (isEmpty!29562 (getPair!983 lt!1965000 key!2670))))))

(declare-fun bs!1160288 () Bool)

(assert (= bs!1160288 d!1540831))

(assert (=> bs!1160288 m!5799832))

(declare-fun m!5799912 () Bool)

(assert (=> bs!1160288 m!5799912))

(assert (=> b!4813924 d!1540831))

(declare-fun d!1540833 () Bool)

(declare-fun hash!5192 (Hashable!7127 K!16307) (_ BitVec 64))

(assert (=> d!1540833 (= (hash!5190 hashF!938 key!2670) (hash!5192 hashF!938 key!2670))))

(declare-fun bs!1160289 () Bool)

(assert (= bs!1160289 d!1540833))

(declare-fun m!5799914 () Bool)

(assert (=> bs!1160289 m!5799914))

(assert (=> b!4813924 d!1540833))

(declare-fun d!1540835 () Bool)

(declare-fun lt!1965066 () Bool)

(declare-fun content!9784 (List!54787) (Set tuple2!57640))

(assert (=> d!1540835 (= lt!1965066 (set.member lt!1964998 (content!9784 (toList!7237 lm!1254))))))

(declare-fun e!3007642 () Bool)

(assert (=> d!1540835 (= lt!1965066 e!3007642)))

(declare-fun res!2047602 () Bool)

(assert (=> d!1540835 (=> (not res!2047602) (not e!3007642))))

(assert (=> d!1540835 (= res!2047602 (is-Cons!54663 (toList!7237 lm!1254)))))

(assert (=> d!1540835 (= (contains!18435 (toList!7237 lm!1254) lt!1964998) lt!1965066)))

(declare-fun b!4813988 () Bool)

(declare-fun e!3007643 () Bool)

(assert (=> b!4813988 (= e!3007642 e!3007643)))

(declare-fun res!2047603 () Bool)

(assert (=> b!4813988 (=> res!2047603 e!3007643)))

(assert (=> b!4813988 (= res!2047603 (= (h!61095 (toList!7237 lm!1254)) lt!1964998))))

(declare-fun b!4813989 () Bool)

(assert (=> b!4813989 (= e!3007643 (contains!18435 (t!362283 (toList!7237 lm!1254)) lt!1964998))))

(assert (= (and d!1540835 res!2047602) b!4813988))

(assert (= (and b!4813988 (not res!2047603)) b!4813989))

(declare-fun m!5799916 () Bool)

(assert (=> d!1540835 m!5799916))

(declare-fun m!5799918 () Bool)

(assert (=> d!1540835 m!5799918))

(declare-fun m!5799920 () Bool)

(assert (=> b!4813989 m!5799920))

(assert (=> b!4813924 d!1540835))

(declare-fun d!1540837 () Bool)

(declare-fun dynLambda!22151 (Int tuple2!57640) Bool)

(assert (=> d!1540837 (dynLambda!22151 lambda!234068 lt!1964998)))

(declare-fun lt!1965069 () Unit!141789)

(declare-fun choose!34890 (List!54787 Int tuple2!57640) Unit!141789)

(assert (=> d!1540837 (= lt!1965069 (choose!34890 (toList!7237 lm!1254) lambda!234068 lt!1964998))))

(declare-fun e!3007646 () Bool)

(assert (=> d!1540837 e!3007646))

(declare-fun res!2047606 () Bool)

(assert (=> d!1540837 (=> (not res!2047606) (not e!3007646))))

(assert (=> d!1540837 (= res!2047606 (forall!12431 (toList!7237 lm!1254) lambda!234068))))

(assert (=> d!1540837 (= (forallContained!4301 (toList!7237 lm!1254) lambda!234068 lt!1964998) lt!1965069)))

(declare-fun b!4813992 () Bool)

(assert (=> b!4813992 (= e!3007646 (contains!18435 (toList!7237 lm!1254) lt!1964998))))

(assert (= (and d!1540837 res!2047606) b!4813992))

(declare-fun b_lambda!188323 () Bool)

(assert (=> (not b_lambda!188323) (not d!1540837)))

(declare-fun m!5799928 () Bool)

(assert (=> d!1540837 m!5799928))

(declare-fun m!5799930 () Bool)

(assert (=> d!1540837 m!5799930))

(assert (=> d!1540837 m!5799814))

(assert (=> b!4813992 m!5799824))

(assert (=> b!4813924 d!1540837))

(declare-fun d!1540843 () Bool)

(declare-fun get!18701 (Option!13372) List!54786)

(assert (=> d!1540843 (= (apply!13232 lm!1254 lt!1964996) (get!18701 (getValueByKey!2537 (toList!7237 lm!1254) lt!1964996)))))

(declare-fun bs!1160291 () Bool)

(assert (= bs!1160291 d!1540843))

(assert (=> bs!1160291 m!5799804))

(assert (=> bs!1160291 m!5799804))

(declare-fun m!5799932 () Bool)

(assert (=> bs!1160291 m!5799932))

(assert (=> b!4813924 d!1540843))

(declare-fun b!4814012 () Bool)

(declare-fun res!2047621 () Bool)

(declare-fun e!3007664 () Bool)

(assert (=> b!4814012 (=> (not res!2047621) (not e!3007664))))

(declare-fun lt!1965075 () Option!13373)

(declare-fun get!18702 (Option!13373) tuple2!57638)

(assert (=> b!4814012 (= res!2047621 (= (_1!32113 (get!18702 lt!1965075)) key!2670))))

(declare-fun b!4814013 () Bool)

(declare-fun contains!18441 (List!54786 tuple2!57638) Bool)

(assert (=> b!4814013 (= e!3007664 (contains!18441 lt!1965000 (get!18702 lt!1965075)))))

(declare-fun b!4814014 () Bool)

(declare-fun e!3007660 () Option!13373)

(assert (=> b!4814014 (= e!3007660 (getPair!983 (t!362282 lt!1965000) key!2670))))

(declare-fun b!4814015 () Bool)

(declare-fun e!3007662 () Bool)

(assert (=> b!4814015 (= e!3007662 (not (containsKey!4208 lt!1965000 key!2670)))))

(declare-fun b!4814016 () Bool)

(declare-fun e!3007663 () Option!13373)

(assert (=> b!4814016 (= e!3007663 e!3007660)))

(declare-fun c!820466 () Bool)

(assert (=> b!4814016 (= c!820466 (is-Cons!54662 lt!1965000))))

(declare-fun d!1540845 () Bool)

(declare-fun e!3007661 () Bool)

(assert (=> d!1540845 e!3007661))

(declare-fun res!2047618 () Bool)

(assert (=> d!1540845 (=> res!2047618 e!3007661)))

(assert (=> d!1540845 (= res!2047618 e!3007662)))

(declare-fun res!2047619 () Bool)

(assert (=> d!1540845 (=> (not res!2047619) (not e!3007662))))

(assert (=> d!1540845 (= res!2047619 (isEmpty!29562 lt!1965075))))

(assert (=> d!1540845 (= lt!1965075 e!3007663)))

(declare-fun c!820465 () Bool)

(assert (=> d!1540845 (= c!820465 (and (is-Cons!54662 lt!1965000) (= (_1!32113 (h!61094 lt!1965000)) key!2670)))))

(assert (=> d!1540845 (noDuplicateKeys!2396 lt!1965000)))

(assert (=> d!1540845 (= (getPair!983 lt!1965000 key!2670) lt!1965075)))

(declare-fun b!4814017 () Bool)

(assert (=> b!4814017 (= e!3007661 e!3007664)))

(declare-fun res!2047620 () Bool)

(assert (=> b!4814017 (=> (not res!2047620) (not e!3007664))))

(assert (=> b!4814017 (= res!2047620 (isDefined!10510 lt!1965075))))

(declare-fun b!4814018 () Bool)

(assert (=> b!4814018 (= e!3007660 None!13372)))

(declare-fun b!4814019 () Bool)

(assert (=> b!4814019 (= e!3007663 (Some!13372 (h!61094 lt!1965000)))))

(assert (= (and d!1540845 c!820465) b!4814019))

(assert (= (and d!1540845 (not c!820465)) b!4814016))

(assert (= (and b!4814016 c!820466) b!4814014))

(assert (= (and b!4814016 (not c!820466)) b!4814018))

(assert (= (and d!1540845 res!2047619) b!4814015))

(assert (= (and d!1540845 (not res!2047618)) b!4814017))

(assert (= (and b!4814017 res!2047620) b!4814012))

(assert (= (and b!4814012 res!2047621) b!4814013))

(declare-fun m!5799936 () Bool)

(assert (=> b!4814012 m!5799936))

(declare-fun m!5799938 () Bool)

(assert (=> d!1540845 m!5799938))

(assert (=> d!1540845 m!5799830))

(declare-fun m!5799940 () Bool)

(assert (=> b!4814015 m!5799940))

(declare-fun m!5799942 () Bool)

(assert (=> b!4814017 m!5799942))

(assert (=> b!4814013 m!5799936))

(assert (=> b!4814013 m!5799936))

(declare-fun m!5799944 () Bool)

(assert (=> b!4814013 m!5799944))

(declare-fun m!5799946 () Bool)

(assert (=> b!4814014 m!5799946))

(assert (=> b!4813924 d!1540845))

(declare-fun d!1540849 () Bool)

(declare-fun e!3007672 () Bool)

(assert (=> d!1540849 e!3007672))

(declare-fun res!2047626 () Bool)

(assert (=> d!1540849 (=> res!2047626 e!3007672)))

(declare-fun lt!1965088 () Bool)

(assert (=> d!1540849 (= res!2047626 (not lt!1965088))))

(declare-fun lt!1965087 () Bool)

(assert (=> d!1540849 (= lt!1965088 lt!1965087)))

(declare-fun lt!1965086 () Unit!141789)

(declare-fun e!3007671 () Unit!141789)

(assert (=> d!1540849 (= lt!1965086 e!3007671)))

(declare-fun c!820469 () Bool)

(assert (=> d!1540849 (= c!820469 lt!1965087)))

(assert (=> d!1540849 (= lt!1965087 (containsKey!4206 (toList!7237 lm!1254) lt!1964996))))

(assert (=> d!1540849 (= (contains!18436 lm!1254 lt!1964996) lt!1965088)))

(declare-fun b!4814028 () Bool)

(declare-fun lt!1965089 () Unit!141789)

(assert (=> b!4814028 (= e!3007671 lt!1965089)))

(assert (=> b!4814028 (= lt!1965089 (lemmaContainsKeyImpliesGetValueByKeyDefined!2324 (toList!7237 lm!1254) lt!1964996))))

(assert (=> b!4814028 (isDefined!10509 (getValueByKey!2537 (toList!7237 lm!1254) lt!1964996))))

(declare-fun b!4814029 () Bool)

(declare-fun Unit!141797 () Unit!141789)

(assert (=> b!4814029 (= e!3007671 Unit!141797)))

(declare-fun b!4814030 () Bool)

(assert (=> b!4814030 (= e!3007672 (isDefined!10509 (getValueByKey!2537 (toList!7237 lm!1254) lt!1964996)))))

(assert (= (and d!1540849 c!820469) b!4814028))

(assert (= (and d!1540849 (not c!820469)) b!4814029))

(assert (= (and d!1540849 (not res!2047626)) b!4814030))

(assert (=> d!1540849 m!5799802))

(assert (=> b!4814028 m!5799806))

(assert (=> b!4814028 m!5799804))

(assert (=> b!4814028 m!5799804))

(assert (=> b!4814028 m!5799808))

(assert (=> b!4814030 m!5799804))

(assert (=> b!4814030 m!5799804))

(assert (=> b!4814030 m!5799808))

(assert (=> b!4813924 d!1540849))

(declare-fun d!1540851 () Bool)

(assert (=> d!1540851 (contains!18435 (toList!7237 lm!1254) (tuple2!57641 lt!1964996 lt!1965000))))

(declare-fun lt!1965093 () Unit!141789)

(declare-fun choose!34891 (ListLongMap!5717 (_ BitVec 64) List!54786) Unit!141789)

(assert (=> d!1540851 (= lt!1965093 (choose!34891 lm!1254 lt!1964996 lt!1965000))))

(assert (=> d!1540851 (contains!18436 lm!1254 lt!1964996)))

(assert (=> d!1540851 (= (lemmaGetValueImpliesTupleContained!650 lm!1254 lt!1964996 lt!1965000) lt!1965093)))

(declare-fun bs!1160292 () Bool)

(assert (= bs!1160292 d!1540851))

(assert (=> bs!1160292 m!5799888))

(declare-fun m!5799952 () Bool)

(assert (=> bs!1160292 m!5799952))

(assert (=> bs!1160292 m!5799836))

(assert (=> b!4813924 d!1540851))

(declare-fun bs!1160297 () Bool)

(declare-fun d!1540855 () Bool)

(assert (= bs!1160297 (and d!1540855 start!497794)))

(declare-fun lambda!234090 () Int)

(assert (=> bs!1160297 (= lambda!234090 lambda!234068)))

(declare-fun bs!1160298 () Bool)

(assert (= bs!1160298 (and d!1540855 d!1540827)))

(assert (=> bs!1160298 (= lambda!234090 lambda!234080)))

(declare-fun e!3007693 () Bool)

(declare-fun lt!1965115 () List!54786)

(declare-fun lt!1965119 () (_ BitVec 64))

(declare-fun b!4814067 () Bool)

(assert (=> b!4814067 (= e!3007693 (= (getValueByKey!2537 (toList!7237 lm!1254) lt!1965119) (Some!13371 lt!1965115)))))

(declare-fun b!4814065 () Bool)

(declare-fun res!2047648 () Bool)

(declare-fun e!3007694 () Bool)

(assert (=> b!4814065 (=> (not res!2047648) (not e!3007694))))

(assert (=> b!4814065 (= res!2047648 (contains!18437 (extractMap!2577 (toList!7237 lm!1254)) key!2670))))

(declare-fun b!4814064 () Bool)

(declare-fun res!2047645 () Bool)

(assert (=> b!4814064 (=> (not res!2047645) (not e!3007694))))

(assert (=> b!4814064 (= res!2047645 (allKeysSameHashInMap!2443 lm!1254 hashF!938))))

(declare-fun b!4814066 () Bool)

(assert (=> b!4814066 (= e!3007694 (isDefined!10510 (getPair!983 (apply!13232 lm!1254 (hash!5190 hashF!938 key!2670)) key!2670)))))

(declare-fun lt!1965117 () Unit!141789)

(assert (=> b!4814066 (= lt!1965117 (forallContained!4301 (toList!7237 lm!1254) lambda!234090 (tuple2!57641 (hash!5190 hashF!938 key!2670) (apply!13232 lm!1254 (hash!5190 hashF!938 key!2670)))))))

(declare-fun lt!1965114 () Unit!141789)

(declare-fun lt!1965120 () Unit!141789)

(assert (=> b!4814066 (= lt!1965114 lt!1965120)))

(assert (=> b!4814066 (contains!18435 (toList!7237 lm!1254) (tuple2!57641 lt!1965119 lt!1965115))))

(assert (=> b!4814066 (= lt!1965120 (lemmaGetValueImpliesTupleContained!650 lm!1254 lt!1965119 lt!1965115))))

(assert (=> b!4814066 e!3007693))

(declare-fun res!2047647 () Bool)

(assert (=> b!4814066 (=> (not res!2047647) (not e!3007693))))

(assert (=> b!4814066 (= res!2047647 (contains!18436 lm!1254 lt!1965119))))

(assert (=> b!4814066 (= lt!1965115 (apply!13232 lm!1254 (hash!5190 hashF!938 key!2670)))))

(assert (=> b!4814066 (= lt!1965119 (hash!5190 hashF!938 key!2670))))

(declare-fun lt!1965113 () Unit!141789)

(declare-fun lt!1965116 () Unit!141789)

(assert (=> b!4814066 (= lt!1965113 lt!1965116)))

(assert (=> b!4814066 (contains!18436 lm!1254 (hash!5190 hashF!938 key!2670))))

(assert (=> b!4814066 (= lt!1965116 (lemmaInGenMapThenLongMapContainsHash!1065 lm!1254 key!2670 hashF!938))))

(assert (=> d!1540855 e!3007694))

(declare-fun res!2047646 () Bool)

(assert (=> d!1540855 (=> (not res!2047646) (not e!3007694))))

(assert (=> d!1540855 (= res!2047646 (forall!12431 (toList!7237 lm!1254) lambda!234090))))

(declare-fun lt!1965118 () Unit!141789)

(declare-fun choose!34892 (ListLongMap!5717 K!16307 Hashable!7127) Unit!141789)

(assert (=> d!1540855 (= lt!1965118 (choose!34892 lm!1254 key!2670 hashF!938))))

(assert (=> d!1540855 (forall!12431 (toList!7237 lm!1254) lambda!234090)))

(assert (=> d!1540855 (= (lemmaInGenMapThenGetPairDefined!595 lm!1254 key!2670 hashF!938) lt!1965118)))

(assert (= (and d!1540855 res!2047646) b!4814064))

(assert (= (and b!4814064 res!2047645) b!4814065))

(assert (= (and b!4814065 res!2047648) b!4814066))

(assert (= (and b!4814066 res!2047647) b!4814067))

(assert (=> b!4814064 m!5799818))

(assert (=> b!4814065 m!5799810))

(assert (=> b!4814065 m!5799810))

(assert (=> b!4814065 m!5799812))

(declare-fun m!5799966 () Bool)

(assert (=> d!1540855 m!5799966))

(declare-fun m!5799968 () Bool)

(assert (=> d!1540855 m!5799968))

(assert (=> d!1540855 m!5799966))

(declare-fun m!5799970 () Bool)

(assert (=> b!4814067 m!5799970))

(declare-fun m!5799972 () Bool)

(assert (=> b!4814066 m!5799972))

(assert (=> b!4814066 m!5799838))

(declare-fun m!5799974 () Bool)

(assert (=> b!4814066 m!5799974))

(declare-fun m!5799976 () Bool)

(assert (=> b!4814066 m!5799976))

(declare-fun m!5799978 () Bool)

(assert (=> b!4814066 m!5799978))

(declare-fun m!5799980 () Bool)

(assert (=> b!4814066 m!5799980))

(assert (=> b!4814066 m!5799980))

(declare-fun m!5799982 () Bool)

(assert (=> b!4814066 m!5799982))

(declare-fun m!5799984 () Bool)

(assert (=> b!4814066 m!5799984))

(assert (=> b!4814066 m!5799828))

(assert (=> b!4814066 m!5799828))

(assert (=> b!4814066 m!5799906))

(assert (=> b!4814066 m!5799828))

(assert (=> b!4814066 m!5799978))

(assert (=> b!4813924 d!1540855))

(declare-fun bs!1160299 () Bool)

(declare-fun d!1540869 () Bool)

(assert (= bs!1160299 (and d!1540869 start!497794)))

(declare-fun lambda!234095 () Int)

(assert (=> bs!1160299 (not (= lambda!234095 lambda!234068))))

(declare-fun bs!1160300 () Bool)

(assert (= bs!1160300 (and d!1540869 d!1540827)))

(assert (=> bs!1160300 (not (= lambda!234095 lambda!234080))))

(declare-fun bs!1160301 () Bool)

(assert (= bs!1160301 (and d!1540869 d!1540855)))

(assert (=> bs!1160301 (not (= lambda!234095 lambda!234090))))

(assert (=> d!1540869 true))

(assert (=> d!1540869 (= (allKeysSameHashInMap!2443 lm!1254 hashF!938) (forall!12431 (toList!7237 lm!1254) lambda!234095))))

(declare-fun bs!1160302 () Bool)

(assert (= bs!1160302 d!1540869))

(declare-fun m!5799986 () Bool)

(assert (=> bs!1160302 m!5799986))

(assert (=> b!4813921 d!1540869))

(declare-fun b!4814089 () Bool)

(declare-fun e!3007712 () Unit!141789)

(declare-fun lt!1965145 () Unit!141789)

(assert (=> b!4814089 (= e!3007712 lt!1965145)))

(declare-fun lt!1965149 () Unit!141789)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2326 (List!54786 K!16307) Unit!141789)

(assert (=> b!4814089 (= lt!1965149 (lemmaContainsKeyImpliesGetValueByKeyDefined!2326 (toList!7238 (extractMap!2577 (toList!7237 lm!1254))) key!2670))))

(declare-datatypes ((Option!13376 0))(
  ( (None!13375) (Some!13375 (v!49013 V!16553)) )
))
(declare-fun isDefined!10513 (Option!13376) Bool)

(declare-fun getValueByKey!2539 (List!54786 K!16307) Option!13376)

(assert (=> b!4814089 (isDefined!10513 (getValueByKey!2539 (toList!7238 (extractMap!2577 (toList!7237 lm!1254))) key!2670))))

(declare-fun lt!1965146 () Unit!141789)

(assert (=> b!4814089 (= lt!1965146 lt!1965149)))

(declare-fun lemmaInListThenGetKeysListContains!1122 (List!54786 K!16307) Unit!141789)

(assert (=> b!4814089 (= lt!1965145 (lemmaInListThenGetKeysListContains!1122 (toList!7238 (extractMap!2577 (toList!7237 lm!1254))) key!2670))))

(declare-fun call!335911 () Bool)

(assert (=> b!4814089 call!335911))

(declare-fun b!4814090 () Bool)

(assert (=> b!4814090 false))

(declare-fun lt!1965150 () Unit!141789)

(declare-fun lt!1965144 () Unit!141789)

(assert (=> b!4814090 (= lt!1965150 lt!1965144)))

(declare-fun containsKey!4209 (List!54786 K!16307) Bool)

(assert (=> b!4814090 (containsKey!4209 (toList!7238 (extractMap!2577 (toList!7237 lm!1254))) key!2670)))

(declare-fun lemmaInGetKeysListThenContainsKey!1127 (List!54786 K!16307) Unit!141789)

(assert (=> b!4814090 (= lt!1965144 (lemmaInGetKeysListThenContainsKey!1127 (toList!7238 (extractMap!2577 (toList!7237 lm!1254))) key!2670))))

(declare-fun e!3007710 () Unit!141789)

(declare-fun Unit!141798 () Unit!141789)

(assert (=> b!4814090 (= e!3007710 Unit!141798)))

(declare-fun b!4814091 () Bool)

(assert (=> b!4814091 (= e!3007712 e!3007710)))

(declare-fun c!820483 () Bool)

(assert (=> b!4814091 (= c!820483 call!335911)))

(declare-fun b!4814092 () Bool)

(declare-datatypes ((List!54790 0))(
  ( (Nil!54666) (Cons!54666 (h!61098 K!16307) (t!362286 List!54790)) )
))
(declare-fun e!3007711 () List!54790)

(declare-fun getKeysList!1127 (List!54786) List!54790)

(assert (=> b!4814092 (= e!3007711 (getKeysList!1127 (toList!7238 (extractMap!2577 (toList!7237 lm!1254)))))))

(declare-fun d!1540871 () Bool)

(declare-fun e!3007707 () Bool)

(assert (=> d!1540871 e!3007707))

(declare-fun res!2047655 () Bool)

(assert (=> d!1540871 (=> res!2047655 e!3007707)))

(declare-fun e!3007708 () Bool)

(assert (=> d!1540871 (= res!2047655 e!3007708)))

(declare-fun res!2047657 () Bool)

(assert (=> d!1540871 (=> (not res!2047657) (not e!3007708))))

(declare-fun lt!1965143 () Bool)

(assert (=> d!1540871 (= res!2047657 (not lt!1965143))))

(declare-fun lt!1965147 () Bool)

(assert (=> d!1540871 (= lt!1965143 lt!1965147)))

(declare-fun lt!1965148 () Unit!141789)

(assert (=> d!1540871 (= lt!1965148 e!3007712)))

(declare-fun c!820484 () Bool)

(assert (=> d!1540871 (= c!820484 lt!1965147)))

(assert (=> d!1540871 (= lt!1965147 (containsKey!4209 (toList!7238 (extractMap!2577 (toList!7237 lm!1254))) key!2670))))

(assert (=> d!1540871 (= (contains!18437 (extractMap!2577 (toList!7237 lm!1254)) key!2670) lt!1965143)))

(declare-fun b!4814093 () Bool)

(declare-fun e!3007709 () Bool)

(declare-fun contains!18442 (List!54790 K!16307) Bool)

(declare-fun keys!20054 (ListMap!6651) List!54790)

(assert (=> b!4814093 (= e!3007709 (contains!18442 (keys!20054 (extractMap!2577 (toList!7237 lm!1254))) key!2670))))

(declare-fun b!4814094 () Bool)

(assert (=> b!4814094 (= e!3007708 (not (contains!18442 (keys!20054 (extractMap!2577 (toList!7237 lm!1254))) key!2670)))))

(declare-fun b!4814095 () Bool)

(declare-fun Unit!141799 () Unit!141789)

(assert (=> b!4814095 (= e!3007710 Unit!141799)))

(declare-fun bm!335906 () Bool)

(assert (=> bm!335906 (= call!335911 (contains!18442 e!3007711 key!2670))))

(declare-fun c!820482 () Bool)

(assert (=> bm!335906 (= c!820482 c!820484)))

(declare-fun b!4814096 () Bool)

(assert (=> b!4814096 (= e!3007707 e!3007709)))

(declare-fun res!2047656 () Bool)

(assert (=> b!4814096 (=> (not res!2047656) (not e!3007709))))

(assert (=> b!4814096 (= res!2047656 (isDefined!10513 (getValueByKey!2539 (toList!7238 (extractMap!2577 (toList!7237 lm!1254))) key!2670)))))

(declare-fun b!4814097 () Bool)

(assert (=> b!4814097 (= e!3007711 (keys!20054 (extractMap!2577 (toList!7237 lm!1254))))))

(assert (= (and d!1540871 c!820484) b!4814089))

(assert (= (and d!1540871 (not c!820484)) b!4814091))

(assert (= (and b!4814091 c!820483) b!4814090))

(assert (= (and b!4814091 (not c!820483)) b!4814095))

(assert (= (or b!4814089 b!4814091) bm!335906))

(assert (= (and bm!335906 c!820482) b!4814092))

(assert (= (and bm!335906 (not c!820482)) b!4814097))

(assert (= (and d!1540871 res!2047657) b!4814094))

(assert (= (and d!1540871 (not res!2047655)) b!4814096))

(assert (= (and b!4814096 res!2047656) b!4814093))

(declare-fun m!5799998 () Bool)

(assert (=> d!1540871 m!5799998))

(assert (=> b!4814093 m!5799810))

(declare-fun m!5800000 () Bool)

(assert (=> b!4814093 m!5800000))

(assert (=> b!4814093 m!5800000))

(declare-fun m!5800002 () Bool)

(assert (=> b!4814093 m!5800002))

(assert (=> b!4814094 m!5799810))

(assert (=> b!4814094 m!5800000))

(assert (=> b!4814094 m!5800000))

(assert (=> b!4814094 m!5800002))

(assert (=> b!4814090 m!5799998))

(declare-fun m!5800004 () Bool)

(assert (=> b!4814090 m!5800004))

(declare-fun m!5800006 () Bool)

(assert (=> b!4814092 m!5800006))

(assert (=> b!4814097 m!5799810))

(assert (=> b!4814097 m!5800000))

(declare-fun m!5800008 () Bool)

(assert (=> b!4814096 m!5800008))

(assert (=> b!4814096 m!5800008))

(declare-fun m!5800010 () Bool)

(assert (=> b!4814096 m!5800010))

(declare-fun m!5800012 () Bool)

(assert (=> bm!335906 m!5800012))

(declare-fun m!5800014 () Bool)

(assert (=> b!4814089 m!5800014))

(assert (=> b!4814089 m!5800008))

(assert (=> b!4814089 m!5800008))

(assert (=> b!4814089 m!5800010))

(declare-fun m!5800016 () Bool)

(assert (=> b!4814089 m!5800016))

(assert (=> b!4813926 d!1540871))

(declare-fun bs!1160308 () Bool)

(declare-fun d!1540879 () Bool)

(assert (= bs!1160308 (and d!1540879 start!497794)))

(declare-fun lambda!234099 () Int)

(assert (=> bs!1160308 (= lambda!234099 lambda!234068)))

(declare-fun bs!1160309 () Bool)

(assert (= bs!1160309 (and d!1540879 d!1540827)))

(assert (=> bs!1160309 (= lambda!234099 lambda!234080)))

(declare-fun bs!1160310 () Bool)

(assert (= bs!1160310 (and d!1540879 d!1540855)))

(assert (=> bs!1160310 (= lambda!234099 lambda!234090)))

(declare-fun bs!1160311 () Bool)

(assert (= bs!1160311 (and d!1540879 d!1540869)))

(assert (=> bs!1160311 (not (= lambda!234099 lambda!234095))))

(declare-fun lt!1965156 () ListMap!6651)

(declare-fun invariantList!1781 (List!54786) Bool)

(assert (=> d!1540879 (invariantList!1781 (toList!7238 lt!1965156))))

(declare-fun e!3007730 () ListMap!6651)

(assert (=> d!1540879 (= lt!1965156 e!3007730)))

(declare-fun c!820493 () Bool)

(assert (=> d!1540879 (= c!820493 (is-Cons!54663 (toList!7237 lm!1254)))))

(assert (=> d!1540879 (forall!12431 (toList!7237 lm!1254) lambda!234099)))

(assert (=> d!1540879 (= (extractMap!2577 (toList!7237 lm!1254)) lt!1965156)))

(declare-fun b!4814126 () Bool)

(declare-fun addToMapMapFromBucket!1758 (List!54786 ListMap!6651) ListMap!6651)

(assert (=> b!4814126 (= e!3007730 (addToMapMapFromBucket!1758 (_2!32114 (h!61095 (toList!7237 lm!1254))) (extractMap!2577 (t!362283 (toList!7237 lm!1254)))))))

(declare-fun b!4814127 () Bool)

(assert (=> b!4814127 (= e!3007730 (ListMap!6652 Nil!54662))))

(assert (= (and d!1540879 c!820493) b!4814126))

(assert (= (and d!1540879 (not c!820493)) b!4814127))

(declare-fun m!5800030 () Bool)

(assert (=> d!1540879 m!5800030))

(declare-fun m!5800032 () Bool)

(assert (=> d!1540879 m!5800032))

(declare-fun m!5800034 () Bool)

(assert (=> b!4814126 m!5800034))

(assert (=> b!4814126 m!5800034))

(declare-fun m!5800036 () Bool)

(assert (=> b!4814126 m!5800036))

(assert (=> b!4813926 d!1540879))

(declare-fun d!1540883 () Bool)

(declare-fun res!2047674 () Bool)

(declare-fun e!3007735 () Bool)

(assert (=> d!1540883 (=> res!2047674 e!3007735)))

(assert (=> d!1540883 (= res!2047674 (is-Nil!54663 (toList!7237 lm!1254)))))

(assert (=> d!1540883 (= (forall!12431 (toList!7237 lm!1254) lambda!234068) e!3007735)))

(declare-fun b!4814132 () Bool)

(declare-fun e!3007736 () Bool)

(assert (=> b!4814132 (= e!3007735 e!3007736)))

(declare-fun res!2047675 () Bool)

(assert (=> b!4814132 (=> (not res!2047675) (not e!3007736))))

(assert (=> b!4814132 (= res!2047675 (dynLambda!22151 lambda!234068 (h!61095 (toList!7237 lm!1254))))))

(declare-fun b!4814133 () Bool)

(assert (=> b!4814133 (= e!3007736 (forall!12431 (t!362283 (toList!7237 lm!1254)) lambda!234068))))

(assert (= (and d!1540883 (not res!2047674)) b!4814132))

(assert (= (and b!4814132 res!2047675) b!4814133))

(declare-fun b_lambda!188325 () Bool)

(assert (=> (not b_lambda!188325) (not b!4814132)))

(declare-fun m!5800040 () Bool)

(assert (=> b!4814132 m!5800040))

(declare-fun m!5800042 () Bool)

(assert (=> b!4814133 m!5800042))

(assert (=> start!497794 d!1540883))

(declare-fun d!1540887 () Bool)

(assert (=> d!1540887 (= (inv!70208 lm!1254) (isStrictlySorted!938 (toList!7237 lm!1254)))))

(declare-fun bs!1160313 () Bool)

(assert (= bs!1160313 d!1540887))

(assert (=> bs!1160313 m!5799892))

(assert (=> start!497794 d!1540887))

(declare-fun b!4814138 () Bool)

(declare-fun e!3007739 () Bool)

(declare-fun tp!1361688 () Bool)

(declare-fun tp!1361689 () Bool)

(assert (=> b!4814138 (= e!3007739 (and tp!1361688 tp!1361689))))

(assert (=> b!4813925 (= tp!1361680 e!3007739)))

(assert (= (and b!4813925 (is-Cons!54663 (toList!7237 lm!1254))) b!4814138))

(declare-fun b_lambda!188327 () Bool)

(assert (= b_lambda!188323 (or start!497794 b_lambda!188327)))

(declare-fun bs!1160314 () Bool)

(declare-fun d!1540889 () Bool)

(assert (= bs!1160314 (and d!1540889 start!497794)))

(assert (=> bs!1160314 (= (dynLambda!22151 lambda!234068 lt!1964998) (noDuplicateKeys!2396 (_2!32114 lt!1964998)))))

(declare-fun m!5800044 () Bool)

(assert (=> bs!1160314 m!5800044))

(assert (=> d!1540837 d!1540889))

(declare-fun b_lambda!188329 () Bool)

(assert (= b_lambda!188325 (or start!497794 b_lambda!188329)))

(declare-fun bs!1160315 () Bool)

(declare-fun d!1540891 () Bool)

(assert (= bs!1160315 (and d!1540891 start!497794)))

(assert (=> bs!1160315 (= (dynLambda!22151 lambda!234068 (h!61095 (toList!7237 lm!1254))) (noDuplicateKeys!2396 (_2!32114 (h!61095 (toList!7237 lm!1254)))))))

(declare-fun m!5800046 () Bool)

(assert (=> bs!1160315 m!5800046))

(assert (=> b!4814132 d!1540891))

(push 1)

(assert (not b_lambda!188329))

(assert (not d!1540821))

(assert (not b!4814093))

(assert (not d!1540815))

(assert (not b!4813955))

(assert (not b!4814012))

(assert (not d!1540879))

(assert (not b!4814066))

(assert (not d!1540869))

(assert (not bm!335906))

(assert (not d!1540887))

(assert (not d!1540855))

(assert (not d!1540823))

(assert (not d!1540831))

(assert (not b!4814013))

(assert (not b!4814138))

(assert (not b!4814028))

(assert (not b!4813968))

(assert (not b!4814090))

(assert (not d!1540837))

(assert (not b!4813959))

(assert tp_is_empty!34123)

(assert (not d!1540849))

(assert (not bs!1160315))

(assert (not b!4814014))

(assert (not b!4813971))

(assert (not d!1540835))

(assert (not d!1540845))

(assert (not b!4814094))

(assert (not b!4814126))

(assert (not b!4813962))

(assert (not b!4813977))

(assert (not b!4814092))

(assert (not b!4814067))

(assert (not b!4813992))

(assert (not b!4814133))

(assert (not b!4814030))

(assert (not bs!1160314))

(assert (not b!4814015))

(assert (not b!4814089))

(assert (not b!4813989))

(assert (not d!1540843))

(assert (not d!1540827))

(assert (not d!1540833))

(assert (not b!4814096))

(assert (not b!4814065))

(assert (not d!1540817))

(assert (not d!1540871))

(assert (not b!4814064))

(assert (not b_lambda!188327))

(assert (not d!1540851))

(assert (not b!4813976))

(assert (not b!4814097))

(assert (not b!4814017))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

