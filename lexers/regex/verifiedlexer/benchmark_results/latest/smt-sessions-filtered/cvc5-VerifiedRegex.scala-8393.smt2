; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436634 () Bool)

(assert start!436634)

(declare-fun b!4455748 () Bool)

(declare-fun res!1847060 () Bool)

(declare-fun e!2774580 () Bool)

(assert (=> b!4455748 (=> (not res!1847060) (not e!2774580))))

(declare-datatypes ((K!11368 0))(
  ( (K!11369 (val!17365 Int)) )
))
(declare-datatypes ((V!11614 0))(
  ( (V!11615 (val!17366 Int)) )
))
(declare-datatypes ((tuple2!50050 0))(
  ( (tuple2!50051 (_1!28319 K!11368) (_2!28319 V!11614)) )
))
(declare-datatypes ((List!50113 0))(
  ( (Nil!49989) (Cons!49989 (h!55734 tuple2!50050) (t!357063 List!50113)) )
))
(declare-fun l!12858 () List!50113)

(declare-fun noDuplicateKeys!905 (List!50113) Bool)

(assert (=> b!4455748 (= res!1847060 (noDuplicateKeys!905 l!12858))))

(declare-fun b!4455749 () Bool)

(declare-fun e!2774578 () Bool)

(assert (=> b!4455749 (= e!2774578 (not (noDuplicateKeys!905 (t!357063 l!12858))))))

(declare-datatypes ((ListMap!3055 0))(
  ( (ListMap!3056 (toList!3817 List!50113)) )
))
(declare-fun lt!1647026 () ListMap!3055)

(declare-fun key!4412 () K!11368)

(declare-fun contains!12537 (ListMap!3055 K!11368) Bool)

(declare-fun addToMapMapFromBucket!499 (List!50113 ListMap!3055) ListMap!3055)

(assert (=> b!4455749 (contains!12537 (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026) key!4412)))

(declare-datatypes ((Hashable!5312 0))(
  ( (HashableExt!5311 (__x!31015 Int)) )
))
(declare-fun hashF!1313 () Hashable!5312)

(declare-datatypes ((tuple2!50052 0))(
  ( (tuple2!50053 (_1!28320 (_ BitVec 64)) (_2!28320 List!50113)) )
))
(declare-datatypes ((List!50114 0))(
  ( (Nil!49990) (Cons!49990 (h!55735 tuple2!50052) (t!357064 List!50114)) )
))
(declare-datatypes ((ListLongMap!2473 0))(
  ( (ListLongMap!2474 (toList!3818 List!50114)) )
))
(declare-fun lm!1853 () ListLongMap!2473)

(declare-datatypes ((Unit!86001 0))(
  ( (Unit!86002) )
))
(declare-fun lt!1647025 () Unit!86001)

(declare-fun lemmaAddToMapMaintainsContains!7 (ListLongMap!2473 K!11368 List!50113 Hashable!5312) Unit!86001)

(assert (=> b!4455749 (= lt!1647025 (lemmaAddToMapMaintainsContains!7 lm!1853 key!4412 (t!357063 l!12858) hashF!1313))))

(declare-fun res!1847061 () Bool)

(assert (=> start!436634 (=> (not res!1847061) (not e!2774580))))

(declare-fun lambda!160178 () Int)

(declare-fun forall!9825 (List!50114 Int) Bool)

(assert (=> start!436634 (= res!1847061 (forall!9825 (toList!3818 lm!1853) lambda!160178))))

(assert (=> start!436634 e!2774580))

(declare-fun e!2774579 () Bool)

(declare-fun inv!65555 (ListLongMap!2473) Bool)

(assert (=> start!436634 (and (inv!65555 lm!1853) e!2774579)))

(assert (=> start!436634 true))

(declare-fun e!2774581 () Bool)

(assert (=> start!436634 e!2774581))

(declare-fun tp_is_empty!26841 () Bool)

(assert (=> start!436634 tp_is_empty!26841))

(declare-fun tp!1334940 () Bool)

(declare-fun tp_is_empty!26843 () Bool)

(declare-fun b!4455750 () Bool)

(assert (=> b!4455750 (= e!2774581 (and tp_is_empty!26841 tp_is_empty!26843 tp!1334940))))

(declare-fun b!4455751 () Bool)

(declare-fun res!1847059 () Bool)

(assert (=> b!4455751 (=> (not res!1847059) (not e!2774580))))

(declare-fun allKeysSameHashInMap!1024 (ListLongMap!2473 Hashable!5312) Bool)

(assert (=> b!4455751 (= res!1847059 (allKeysSameHashInMap!1024 lm!1853 hashF!1313))))

(declare-fun b!4455752 () Bool)

(declare-fun res!1847062 () Bool)

(assert (=> b!4455752 (=> (not res!1847062) (not e!2774578))))

(assert (=> b!4455752 (= res!1847062 (is-Cons!49989 l!12858))))

(declare-fun b!4455753 () Bool)

(declare-fun tp!1334941 () Bool)

(assert (=> b!4455753 (= e!2774579 tp!1334941)))

(declare-fun b!4455754 () Bool)

(assert (=> b!4455754 (= e!2774580 e!2774578)))

(declare-fun res!1847058 () Bool)

(assert (=> b!4455754 (=> (not res!1847058) (not e!2774578))))

(assert (=> b!4455754 (= res!1847058 (contains!12537 lt!1647026 key!4412))))

(declare-fun extractMap!973 (List!50114) ListMap!3055)

(assert (=> b!4455754 (= lt!1647026 (extractMap!973 (toList!3818 lm!1853)))))

(assert (= (and start!436634 res!1847061) b!4455751))

(assert (= (and b!4455751 res!1847059) b!4455748))

(assert (= (and b!4455748 res!1847060) b!4455754))

(assert (= (and b!4455754 res!1847058) b!4455752))

(assert (= (and b!4455752 res!1847062) b!4455749))

(assert (= start!436634 b!4455753))

(assert (= (and start!436634 (is-Cons!49989 l!12858)) b!4455750))

(declare-fun m!5157263 () Bool)

(assert (=> b!4455751 m!5157263))

(declare-fun m!5157265 () Bool)

(assert (=> b!4455754 m!5157265))

(declare-fun m!5157267 () Bool)

(assert (=> b!4455754 m!5157267))

(declare-fun m!5157269 () Bool)

(assert (=> b!4455749 m!5157269))

(declare-fun m!5157271 () Bool)

(assert (=> b!4455749 m!5157271))

(assert (=> b!4455749 m!5157271))

(declare-fun m!5157273 () Bool)

(assert (=> b!4455749 m!5157273))

(declare-fun m!5157275 () Bool)

(assert (=> b!4455749 m!5157275))

(declare-fun m!5157277 () Bool)

(assert (=> start!436634 m!5157277))

(declare-fun m!5157279 () Bool)

(assert (=> start!436634 m!5157279))

(declare-fun m!5157281 () Bool)

(assert (=> b!4455748 m!5157281))

(push 1)

(assert tp_is_empty!26843)

(assert (not start!436634))

(assert (not b!4455748))

(assert (not b!4455750))

(assert (not b!4455751))

(assert (not b!4455753))

(assert (not b!4455754))

(assert tp_is_empty!26841)

(assert (not b!4455749))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1359246 () Bool)

(declare-fun res!1847082 () Bool)

(declare-fun e!2774598 () Bool)

(assert (=> d!1359246 (=> res!1847082 e!2774598)))

(assert (=> d!1359246 (= res!1847082 (not (is-Cons!49989 l!12858)))))

(assert (=> d!1359246 (= (noDuplicateKeys!905 l!12858) e!2774598)))

(declare-fun b!4455780 () Bool)

(declare-fun e!2774599 () Bool)

(assert (=> b!4455780 (= e!2774598 e!2774599)))

(declare-fun res!1847083 () Bool)

(assert (=> b!4455780 (=> (not res!1847083) (not e!2774599))))

(declare-fun containsKey!1317 (List!50113 K!11368) Bool)

(assert (=> b!4455780 (= res!1847083 (not (containsKey!1317 (t!357063 l!12858) (_1!28319 (h!55734 l!12858)))))))

(declare-fun b!4455781 () Bool)

(assert (=> b!4455781 (= e!2774599 (noDuplicateKeys!905 (t!357063 l!12858)))))

(assert (= (and d!1359246 (not res!1847082)) b!4455780))

(assert (= (and b!4455780 res!1847083) b!4455781))

(declare-fun m!5157303 () Bool)

(assert (=> b!4455780 m!5157303))

(assert (=> b!4455781 m!5157269))

(assert (=> b!4455748 d!1359246))

(declare-fun bs!790791 () Bool)

(declare-fun d!1359248 () Bool)

(assert (= bs!790791 (and d!1359248 start!436634)))

(declare-fun lambda!160184 () Int)

(assert (=> bs!790791 (not (= lambda!160184 lambda!160178))))

(assert (=> d!1359248 true))

(assert (=> d!1359248 (= (allKeysSameHashInMap!1024 lm!1853 hashF!1313) (forall!9825 (toList!3818 lm!1853) lambda!160184))))

(declare-fun bs!790792 () Bool)

(assert (= bs!790792 d!1359248))

(declare-fun m!5157305 () Bool)

(assert (=> bs!790792 m!5157305))

(assert (=> b!4455751 d!1359248))

(declare-fun d!1359250 () Bool)

(declare-fun res!1847088 () Bool)

(declare-fun e!2774604 () Bool)

(assert (=> d!1359250 (=> res!1847088 e!2774604)))

(assert (=> d!1359250 (= res!1847088 (is-Nil!49990 (toList!3818 lm!1853)))))

(assert (=> d!1359250 (= (forall!9825 (toList!3818 lm!1853) lambda!160178) e!2774604)))

(declare-fun b!4455788 () Bool)

(declare-fun e!2774605 () Bool)

(assert (=> b!4455788 (= e!2774604 e!2774605)))

(declare-fun res!1847089 () Bool)

(assert (=> b!4455788 (=> (not res!1847089) (not e!2774605))))

(declare-fun dynLambda!20966 (Int tuple2!50052) Bool)

(assert (=> b!4455788 (= res!1847089 (dynLambda!20966 lambda!160178 (h!55735 (toList!3818 lm!1853))))))

(declare-fun b!4455789 () Bool)

(assert (=> b!4455789 (= e!2774605 (forall!9825 (t!357064 (toList!3818 lm!1853)) lambda!160178))))

(assert (= (and d!1359250 (not res!1847088)) b!4455788))

(assert (= (and b!4455788 res!1847089) b!4455789))

(declare-fun b_lambda!147653 () Bool)

(assert (=> (not b_lambda!147653) (not b!4455788)))

(declare-fun m!5157307 () Bool)

(assert (=> b!4455788 m!5157307))

(declare-fun m!5157309 () Bool)

(assert (=> b!4455789 m!5157309))

(assert (=> start!436634 d!1359250))

(declare-fun d!1359252 () Bool)

(declare-fun isStrictlySorted!303 (List!50114) Bool)

(assert (=> d!1359252 (= (inv!65555 lm!1853) (isStrictlySorted!303 (toList!3818 lm!1853)))))

(declare-fun bs!790793 () Bool)

(assert (= bs!790793 d!1359252))

(declare-fun m!5157311 () Bool)

(assert (=> bs!790793 m!5157311))

(assert (=> start!436634 d!1359252))

(declare-fun b!4455808 () Bool)

(declare-fun e!2774623 () Bool)

(declare-fun e!2774619 () Bool)

(assert (=> b!4455808 (= e!2774623 e!2774619)))

(declare-fun res!1847097 () Bool)

(assert (=> b!4455808 (=> (not res!1847097) (not e!2774619))))

(declare-datatypes ((Option!10852 0))(
  ( (None!10851) (Some!10851 (v!44109 V!11614)) )
))
(declare-fun isDefined!8140 (Option!10852) Bool)

(declare-fun getValueByKey!838 (List!50113 K!11368) Option!10852)

(assert (=> b!4455808 (= res!1847097 (isDefined!8140 (getValueByKey!838 (toList!3817 lt!1647026) key!4412)))))

(declare-fun b!4455809 () Bool)

(declare-datatypes ((List!50117 0))(
  ( (Nil!49993) (Cons!49993 (h!55738 K!11368) (t!357067 List!50117)) )
))
(declare-fun contains!12539 (List!50117 K!11368) Bool)

(declare-fun keys!17175 (ListMap!3055) List!50117)

(assert (=> b!4455809 (= e!2774619 (contains!12539 (keys!17175 lt!1647026) key!4412))))

(declare-fun b!4455810 () Bool)

(assert (=> b!4455810 false))

(declare-fun lt!1647051 () Unit!86001)

(declare-fun lt!1647053 () Unit!86001)

(assert (=> b!4455810 (= lt!1647051 lt!1647053)))

(declare-fun containsKey!1318 (List!50113 K!11368) Bool)

(assert (=> b!4455810 (containsKey!1318 (toList!3817 lt!1647026) key!4412)))

(declare-fun lemmaInGetKeysListThenContainsKey!318 (List!50113 K!11368) Unit!86001)

(assert (=> b!4455810 (= lt!1647053 (lemmaInGetKeysListThenContainsKey!318 (toList!3817 lt!1647026) key!4412))))

(declare-fun e!2774622 () Unit!86001)

(declare-fun Unit!86005 () Unit!86001)

(assert (=> b!4455810 (= e!2774622 Unit!86005)))

(declare-fun d!1359254 () Bool)

(assert (=> d!1359254 e!2774623))

(declare-fun res!1847098 () Bool)

(assert (=> d!1359254 (=> res!1847098 e!2774623)))

(declare-fun e!2774620 () Bool)

(assert (=> d!1359254 (= res!1847098 e!2774620)))

(declare-fun res!1847096 () Bool)

(assert (=> d!1359254 (=> (not res!1847096) (not e!2774620))))

(declare-fun lt!1647052 () Bool)

(assert (=> d!1359254 (= res!1847096 (not lt!1647052))))

(declare-fun lt!1647054 () Bool)

(assert (=> d!1359254 (= lt!1647052 lt!1647054)))

(declare-fun lt!1647056 () Unit!86001)

(declare-fun e!2774621 () Unit!86001)

(assert (=> d!1359254 (= lt!1647056 e!2774621)))

(declare-fun c!758510 () Bool)

(assert (=> d!1359254 (= c!758510 lt!1647054)))

(assert (=> d!1359254 (= lt!1647054 (containsKey!1318 (toList!3817 lt!1647026) key!4412))))

(assert (=> d!1359254 (= (contains!12537 lt!1647026 key!4412) lt!1647052)))

(declare-fun b!4455811 () Bool)

(declare-fun lt!1647049 () Unit!86001)

(assert (=> b!4455811 (= e!2774621 lt!1647049)))

(declare-fun lt!1647050 () Unit!86001)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!743 (List!50113 K!11368) Unit!86001)

(assert (=> b!4455811 (= lt!1647050 (lemmaContainsKeyImpliesGetValueByKeyDefined!743 (toList!3817 lt!1647026) key!4412))))

(assert (=> b!4455811 (isDefined!8140 (getValueByKey!838 (toList!3817 lt!1647026) key!4412))))

(declare-fun lt!1647055 () Unit!86001)

(assert (=> b!4455811 (= lt!1647055 lt!1647050)))

(declare-fun lemmaInListThenGetKeysListContains!316 (List!50113 K!11368) Unit!86001)

(assert (=> b!4455811 (= lt!1647049 (lemmaInListThenGetKeysListContains!316 (toList!3817 lt!1647026) key!4412))))

(declare-fun call!310081 () Bool)

(assert (=> b!4455811 call!310081))

(declare-fun b!4455812 () Bool)

(declare-fun e!2774618 () List!50117)

(assert (=> b!4455812 (= e!2774618 (keys!17175 lt!1647026))))

(declare-fun b!4455813 () Bool)

(assert (=> b!4455813 (= e!2774620 (not (contains!12539 (keys!17175 lt!1647026) key!4412)))))

(declare-fun b!4455814 () Bool)

(assert (=> b!4455814 (= e!2774621 e!2774622)))

(declare-fun c!758511 () Bool)

(assert (=> b!4455814 (= c!758511 call!310081)))

(declare-fun b!4455815 () Bool)

(declare-fun getKeysList!320 (List!50113) List!50117)

(assert (=> b!4455815 (= e!2774618 (getKeysList!320 (toList!3817 lt!1647026)))))

(declare-fun bm!310076 () Bool)

(assert (=> bm!310076 (= call!310081 (contains!12539 e!2774618 key!4412))))

(declare-fun c!758509 () Bool)

(assert (=> bm!310076 (= c!758509 c!758510)))

(declare-fun b!4455816 () Bool)

(declare-fun Unit!86006 () Unit!86001)

(assert (=> b!4455816 (= e!2774622 Unit!86006)))

(assert (= (and d!1359254 c!758510) b!4455811))

(assert (= (and d!1359254 (not c!758510)) b!4455814))

(assert (= (and b!4455814 c!758511) b!4455810))

(assert (= (and b!4455814 (not c!758511)) b!4455816))

(assert (= (or b!4455811 b!4455814) bm!310076))

(assert (= (and bm!310076 c!758509) b!4455815))

(assert (= (and bm!310076 (not c!758509)) b!4455812))

(assert (= (and d!1359254 res!1847096) b!4455813))

(assert (= (and d!1359254 (not res!1847098)) b!4455808))

(assert (= (and b!4455808 res!1847097) b!4455809))

(declare-fun m!5157313 () Bool)

(assert (=> bm!310076 m!5157313))

(declare-fun m!5157315 () Bool)

(assert (=> b!4455812 m!5157315))

(declare-fun m!5157317 () Bool)

(assert (=> d!1359254 m!5157317))

(assert (=> b!4455809 m!5157315))

(assert (=> b!4455809 m!5157315))

(declare-fun m!5157319 () Bool)

(assert (=> b!4455809 m!5157319))

(declare-fun m!5157321 () Bool)

(assert (=> b!4455815 m!5157321))

(assert (=> b!4455810 m!5157317))

(declare-fun m!5157323 () Bool)

(assert (=> b!4455810 m!5157323))

(declare-fun m!5157325 () Bool)

(assert (=> b!4455811 m!5157325))

(declare-fun m!5157327 () Bool)

(assert (=> b!4455811 m!5157327))

(assert (=> b!4455811 m!5157327))

(declare-fun m!5157329 () Bool)

(assert (=> b!4455811 m!5157329))

(declare-fun m!5157331 () Bool)

(assert (=> b!4455811 m!5157331))

(assert (=> b!4455808 m!5157327))

(assert (=> b!4455808 m!5157327))

(assert (=> b!4455808 m!5157329))

(assert (=> b!4455813 m!5157315))

(assert (=> b!4455813 m!5157315))

(assert (=> b!4455813 m!5157319))

(assert (=> b!4455754 d!1359254))

(declare-fun bs!790794 () Bool)

(declare-fun d!1359258 () Bool)

(assert (= bs!790794 (and d!1359258 start!436634)))

(declare-fun lambda!160187 () Int)

(assert (=> bs!790794 (= lambda!160187 lambda!160178)))

(declare-fun bs!790795 () Bool)

(assert (= bs!790795 (and d!1359258 d!1359248)))

(assert (=> bs!790795 (not (= lambda!160187 lambda!160184))))

(declare-fun lt!1647059 () ListMap!3055)

(declare-fun invariantList!874 (List!50113) Bool)

(assert (=> d!1359258 (invariantList!874 (toList!3817 lt!1647059))))

(declare-fun e!2774626 () ListMap!3055)

(assert (=> d!1359258 (= lt!1647059 e!2774626)))

(declare-fun c!758514 () Bool)

(assert (=> d!1359258 (= c!758514 (is-Cons!49990 (toList!3818 lm!1853)))))

(assert (=> d!1359258 (forall!9825 (toList!3818 lm!1853) lambda!160187)))

(assert (=> d!1359258 (= (extractMap!973 (toList!3818 lm!1853)) lt!1647059)))

(declare-fun b!4455821 () Bool)

(assert (=> b!4455821 (= e!2774626 (addToMapMapFromBucket!499 (_2!28320 (h!55735 (toList!3818 lm!1853))) (extractMap!973 (t!357064 (toList!3818 lm!1853)))))))

(declare-fun b!4455822 () Bool)

(assert (=> b!4455822 (= e!2774626 (ListMap!3056 Nil!49989))))

(assert (= (and d!1359258 c!758514) b!4455821))

(assert (= (and d!1359258 (not c!758514)) b!4455822))

(declare-fun m!5157333 () Bool)

(assert (=> d!1359258 m!5157333))

(declare-fun m!5157335 () Bool)

(assert (=> d!1359258 m!5157335))

(declare-fun m!5157337 () Bool)

(assert (=> b!4455821 m!5157337))

(assert (=> b!4455821 m!5157337))

(declare-fun m!5157339 () Bool)

(assert (=> b!4455821 m!5157339))

(assert (=> b!4455754 d!1359258))

(declare-fun d!1359260 () Bool)

(declare-fun res!1847099 () Bool)

(declare-fun e!2774627 () Bool)

(assert (=> d!1359260 (=> res!1847099 e!2774627)))

(assert (=> d!1359260 (= res!1847099 (not (is-Cons!49989 (t!357063 l!12858))))))

(assert (=> d!1359260 (= (noDuplicateKeys!905 (t!357063 l!12858)) e!2774627)))

(declare-fun b!4455823 () Bool)

(declare-fun e!2774628 () Bool)

(assert (=> b!4455823 (= e!2774627 e!2774628)))

(declare-fun res!1847100 () Bool)

(assert (=> b!4455823 (=> (not res!1847100) (not e!2774628))))

(assert (=> b!4455823 (= res!1847100 (not (containsKey!1317 (t!357063 (t!357063 l!12858)) (_1!28319 (h!55734 (t!357063 l!12858))))))))

(declare-fun b!4455824 () Bool)

(assert (=> b!4455824 (= e!2774628 (noDuplicateKeys!905 (t!357063 (t!357063 l!12858))))))

(assert (= (and d!1359260 (not res!1847099)) b!4455823))

(assert (= (and b!4455823 res!1847100) b!4455824))

(declare-fun m!5157341 () Bool)

(assert (=> b!4455823 m!5157341))

(declare-fun m!5157343 () Bool)

(assert (=> b!4455824 m!5157343))

(assert (=> b!4455749 d!1359260))

(declare-fun b!4455825 () Bool)

(declare-fun e!2774634 () Bool)

(declare-fun e!2774630 () Bool)

(assert (=> b!4455825 (= e!2774634 e!2774630)))

(declare-fun res!1847102 () Bool)

(assert (=> b!4455825 (=> (not res!1847102) (not e!2774630))))

(assert (=> b!4455825 (= res!1847102 (isDefined!8140 (getValueByKey!838 (toList!3817 (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026)) key!4412)))))

(declare-fun b!4455826 () Bool)

(assert (=> b!4455826 (= e!2774630 (contains!12539 (keys!17175 (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026)) key!4412))))

(declare-fun b!4455827 () Bool)

(assert (=> b!4455827 false))

(declare-fun lt!1647062 () Unit!86001)

(declare-fun lt!1647064 () Unit!86001)

(assert (=> b!4455827 (= lt!1647062 lt!1647064)))

(assert (=> b!4455827 (containsKey!1318 (toList!3817 (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026)) key!4412)))

(assert (=> b!4455827 (= lt!1647064 (lemmaInGetKeysListThenContainsKey!318 (toList!3817 (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026)) key!4412))))

(declare-fun e!2774633 () Unit!86001)

(declare-fun Unit!86007 () Unit!86001)

(assert (=> b!4455827 (= e!2774633 Unit!86007)))

(declare-fun d!1359262 () Bool)

(assert (=> d!1359262 e!2774634))

(declare-fun res!1847103 () Bool)

(assert (=> d!1359262 (=> res!1847103 e!2774634)))

(declare-fun e!2774631 () Bool)

(assert (=> d!1359262 (= res!1847103 e!2774631)))

(declare-fun res!1847101 () Bool)

(assert (=> d!1359262 (=> (not res!1847101) (not e!2774631))))

(declare-fun lt!1647063 () Bool)

(assert (=> d!1359262 (= res!1847101 (not lt!1647063))))

(declare-fun lt!1647065 () Bool)

(assert (=> d!1359262 (= lt!1647063 lt!1647065)))

(declare-fun lt!1647067 () Unit!86001)

(declare-fun e!2774632 () Unit!86001)

(assert (=> d!1359262 (= lt!1647067 e!2774632)))

(declare-fun c!758516 () Bool)

(assert (=> d!1359262 (= c!758516 lt!1647065)))

(assert (=> d!1359262 (= lt!1647065 (containsKey!1318 (toList!3817 (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026)) key!4412))))

(assert (=> d!1359262 (= (contains!12537 (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026) key!4412) lt!1647063)))

(declare-fun b!4455828 () Bool)

(declare-fun lt!1647060 () Unit!86001)

(assert (=> b!4455828 (= e!2774632 lt!1647060)))

(declare-fun lt!1647061 () Unit!86001)

(assert (=> b!4455828 (= lt!1647061 (lemmaContainsKeyImpliesGetValueByKeyDefined!743 (toList!3817 (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026)) key!4412))))

(assert (=> b!4455828 (isDefined!8140 (getValueByKey!838 (toList!3817 (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026)) key!4412))))

(declare-fun lt!1647066 () Unit!86001)

(assert (=> b!4455828 (= lt!1647066 lt!1647061)))

(assert (=> b!4455828 (= lt!1647060 (lemmaInListThenGetKeysListContains!316 (toList!3817 (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026)) key!4412))))

(declare-fun call!310082 () Bool)

(assert (=> b!4455828 call!310082))

(declare-fun b!4455829 () Bool)

(declare-fun e!2774629 () List!50117)

(assert (=> b!4455829 (= e!2774629 (keys!17175 (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026)))))

(declare-fun b!4455830 () Bool)

(assert (=> b!4455830 (= e!2774631 (not (contains!12539 (keys!17175 (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026)) key!4412)))))

(declare-fun b!4455831 () Bool)

(assert (=> b!4455831 (= e!2774632 e!2774633)))

(declare-fun c!758517 () Bool)

(assert (=> b!4455831 (= c!758517 call!310082)))

(declare-fun b!4455832 () Bool)

(assert (=> b!4455832 (= e!2774629 (getKeysList!320 (toList!3817 (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026))))))

(declare-fun bm!310077 () Bool)

(assert (=> bm!310077 (= call!310082 (contains!12539 e!2774629 key!4412))))

(declare-fun c!758515 () Bool)

(assert (=> bm!310077 (= c!758515 c!758516)))

(declare-fun b!4455833 () Bool)

(declare-fun Unit!86008 () Unit!86001)

(assert (=> b!4455833 (= e!2774633 Unit!86008)))

(assert (= (and d!1359262 c!758516) b!4455828))

(assert (= (and d!1359262 (not c!758516)) b!4455831))

(assert (= (and b!4455831 c!758517) b!4455827))

(assert (= (and b!4455831 (not c!758517)) b!4455833))

(assert (= (or b!4455828 b!4455831) bm!310077))

(assert (= (and bm!310077 c!758515) b!4455832))

(assert (= (and bm!310077 (not c!758515)) b!4455829))

(assert (= (and d!1359262 res!1847101) b!4455830))

(assert (= (and d!1359262 (not res!1847103)) b!4455825))

(assert (= (and b!4455825 res!1847102) b!4455826))

(declare-fun m!5157345 () Bool)

(assert (=> bm!310077 m!5157345))

(assert (=> b!4455829 m!5157271))

(declare-fun m!5157347 () Bool)

(assert (=> b!4455829 m!5157347))

(declare-fun m!5157349 () Bool)

(assert (=> d!1359262 m!5157349))

(assert (=> b!4455826 m!5157271))

(assert (=> b!4455826 m!5157347))

(assert (=> b!4455826 m!5157347))

(declare-fun m!5157351 () Bool)

(assert (=> b!4455826 m!5157351))

(declare-fun m!5157353 () Bool)

(assert (=> b!4455832 m!5157353))

(assert (=> b!4455827 m!5157349))

(declare-fun m!5157355 () Bool)

(assert (=> b!4455827 m!5157355))

(declare-fun m!5157357 () Bool)

(assert (=> b!4455828 m!5157357))

(declare-fun m!5157359 () Bool)

(assert (=> b!4455828 m!5157359))

(assert (=> b!4455828 m!5157359))

(declare-fun m!5157361 () Bool)

(assert (=> b!4455828 m!5157361))

(declare-fun m!5157363 () Bool)

(assert (=> b!4455828 m!5157363))

(assert (=> b!4455825 m!5157359))

(assert (=> b!4455825 m!5157359))

(assert (=> b!4455825 m!5157361))

(assert (=> b!4455830 m!5157271))

(assert (=> b!4455830 m!5157347))

(assert (=> b!4455830 m!5157347))

(assert (=> b!4455830 m!5157351))

(assert (=> b!4455749 d!1359262))

(declare-fun b!4455903 () Bool)

(assert (=> b!4455903 true))

(declare-fun bs!790801 () Bool)

(declare-fun b!4455902 () Bool)

(assert (= bs!790801 (and b!4455902 b!4455903)))

(declare-fun lambda!160223 () Int)

(declare-fun lambda!160222 () Int)

(assert (=> bs!790801 (= lambda!160223 lambda!160222)))

(assert (=> b!4455902 true))

(declare-fun lt!1647149 () ListMap!3055)

(declare-fun lambda!160224 () Int)

(assert (=> bs!790801 (= (= lt!1647149 lt!1647026) (= lambda!160224 lambda!160222))))

(assert (=> b!4455902 (= (= lt!1647149 lt!1647026) (= lambda!160224 lambda!160223))))

(assert (=> b!4455902 true))

(declare-fun bs!790802 () Bool)

(declare-fun d!1359264 () Bool)

(assert (= bs!790802 (and d!1359264 b!4455903)))

(declare-fun lambda!160225 () Int)

(declare-fun lt!1647158 () ListMap!3055)

(assert (=> bs!790802 (= (= lt!1647158 lt!1647026) (= lambda!160225 lambda!160222))))

(declare-fun bs!790803 () Bool)

(assert (= bs!790803 (and d!1359264 b!4455902)))

(assert (=> bs!790803 (= (= lt!1647158 lt!1647026) (= lambda!160225 lambda!160223))))

(assert (=> bs!790803 (= (= lt!1647158 lt!1647149) (= lambda!160225 lambda!160224))))

(assert (=> d!1359264 true))

(declare-fun e!2774682 () Bool)

(assert (=> d!1359264 e!2774682))

(declare-fun res!1847137 () Bool)

(assert (=> d!1359264 (=> (not res!1847137) (not e!2774682))))

(declare-fun forall!9827 (List!50113 Int) Bool)

(assert (=> d!1359264 (= res!1847137 (forall!9827 (t!357063 l!12858) lambda!160225))))

(declare-fun e!2774683 () ListMap!3055)

(assert (=> d!1359264 (= lt!1647158 e!2774683)))

(declare-fun c!758535 () Bool)

(assert (=> d!1359264 (= c!758535 (is-Nil!49989 (t!357063 l!12858)))))

(assert (=> d!1359264 (noDuplicateKeys!905 (t!357063 l!12858))))

(assert (=> d!1359264 (= (addToMapMapFromBucket!499 (t!357063 l!12858) lt!1647026) lt!1647158)))

(declare-fun bm!310088 () Bool)

(declare-fun call!310094 () Unit!86001)

(declare-fun lemmaContainsAllItsOwnKeys!226 (ListMap!3055) Unit!86001)

(assert (=> bm!310088 (= call!310094 (lemmaContainsAllItsOwnKeys!226 lt!1647026))))

(declare-fun call!310093 () Bool)

(declare-fun bm!310089 () Bool)

(assert (=> bm!310089 (= call!310093 (forall!9827 (toList!3817 lt!1647026) (ite c!758535 lambda!160222 lambda!160224)))))

(assert (=> b!4455902 (= e!2774683 lt!1647149)))

(declare-fun lt!1647151 () ListMap!3055)

(declare-fun +!1283 (ListMap!3055 tuple2!50050) ListMap!3055)

(assert (=> b!4455902 (= lt!1647151 (+!1283 lt!1647026 (h!55734 (t!357063 l!12858))))))

(assert (=> b!4455902 (= lt!1647149 (addToMapMapFromBucket!499 (t!357063 (t!357063 l!12858)) (+!1283 lt!1647026 (h!55734 (t!357063 l!12858)))))))

(declare-fun lt!1647164 () Unit!86001)

(assert (=> b!4455902 (= lt!1647164 call!310094)))

(assert (=> b!4455902 (forall!9827 (toList!3817 lt!1647026) lambda!160223)))

(declare-fun lt!1647150 () Unit!86001)

(assert (=> b!4455902 (= lt!1647150 lt!1647164)))

(assert (=> b!4455902 (forall!9827 (toList!3817 lt!1647151) lambda!160224)))

(declare-fun lt!1647155 () Unit!86001)

(declare-fun Unit!86009 () Unit!86001)

(assert (=> b!4455902 (= lt!1647155 Unit!86009)))

(assert (=> b!4455902 (forall!9827 (t!357063 (t!357063 l!12858)) lambda!160224)))

(declare-fun lt!1647154 () Unit!86001)

(declare-fun Unit!86010 () Unit!86001)

(assert (=> b!4455902 (= lt!1647154 Unit!86010)))

(declare-fun lt!1647153 () Unit!86001)

(declare-fun Unit!86011 () Unit!86001)

(assert (=> b!4455902 (= lt!1647153 Unit!86011)))

(declare-fun lt!1647146 () Unit!86001)

(declare-fun forallContained!2176 (List!50113 Int tuple2!50050) Unit!86001)

(assert (=> b!4455902 (= lt!1647146 (forallContained!2176 (toList!3817 lt!1647151) lambda!160224 (h!55734 (t!357063 l!12858))))))

(assert (=> b!4455902 (contains!12537 lt!1647151 (_1!28319 (h!55734 (t!357063 l!12858))))))

(declare-fun lt!1647148 () Unit!86001)

(declare-fun Unit!86012 () Unit!86001)

(assert (=> b!4455902 (= lt!1647148 Unit!86012)))

(assert (=> b!4455902 (contains!12537 lt!1647149 (_1!28319 (h!55734 (t!357063 l!12858))))))

(declare-fun lt!1647159 () Unit!86001)

(declare-fun Unit!86013 () Unit!86001)

(assert (=> b!4455902 (= lt!1647159 Unit!86013)))

(declare-fun call!310095 () Bool)

(assert (=> b!4455902 call!310095))

(declare-fun lt!1647163 () Unit!86001)

(declare-fun Unit!86014 () Unit!86001)

(assert (=> b!4455902 (= lt!1647163 Unit!86014)))

(assert (=> b!4455902 (forall!9827 (toList!3817 lt!1647151) lambda!160224)))

(declare-fun lt!1647162 () Unit!86001)

(declare-fun Unit!86015 () Unit!86001)

(assert (=> b!4455902 (= lt!1647162 Unit!86015)))

(declare-fun lt!1647161 () Unit!86001)

(declare-fun Unit!86016 () Unit!86001)

(assert (=> b!4455902 (= lt!1647161 Unit!86016)))

(declare-fun lt!1647156 () Unit!86001)

(declare-fun addForallContainsKeyThenBeforeAdding!225 (ListMap!3055 ListMap!3055 K!11368 V!11614) Unit!86001)

(assert (=> b!4455902 (= lt!1647156 (addForallContainsKeyThenBeforeAdding!225 lt!1647026 lt!1647149 (_1!28319 (h!55734 (t!357063 l!12858))) (_2!28319 (h!55734 (t!357063 l!12858)))))))

(assert (=> b!4455902 call!310093))

(declare-fun lt!1647152 () Unit!86001)

(assert (=> b!4455902 (= lt!1647152 lt!1647156)))

(assert (=> b!4455902 (forall!9827 (toList!3817 lt!1647026) lambda!160224)))

(declare-fun lt!1647147 () Unit!86001)

(declare-fun Unit!86017 () Unit!86001)

(assert (=> b!4455902 (= lt!1647147 Unit!86017)))

(declare-fun res!1847136 () Bool)

(assert (=> b!4455902 (= res!1847136 (forall!9827 (t!357063 l!12858) lambda!160224))))

(declare-fun e!2774684 () Bool)

(assert (=> b!4455902 (=> (not res!1847136) (not e!2774684))))

(assert (=> b!4455902 e!2774684))

(declare-fun lt!1647160 () Unit!86001)

(declare-fun Unit!86018 () Unit!86001)

(assert (=> b!4455902 (= lt!1647160 Unit!86018)))

(assert (=> b!4455903 (= e!2774683 lt!1647026)))

(declare-fun lt!1647145 () Unit!86001)

(assert (=> b!4455903 (= lt!1647145 call!310094)))

(assert (=> b!4455903 call!310095))

(declare-fun lt!1647157 () Unit!86001)

(assert (=> b!4455903 (= lt!1647157 lt!1647145)))

(assert (=> b!4455903 call!310093))

(declare-fun lt!1647165 () Unit!86001)

(declare-fun Unit!86019 () Unit!86001)

(assert (=> b!4455903 (= lt!1647165 Unit!86019)))

(declare-fun b!4455904 () Bool)

(assert (=> b!4455904 (= e!2774682 (invariantList!874 (toList!3817 lt!1647158)))))

(declare-fun bm!310090 () Bool)

(assert (=> bm!310090 (= call!310095 (forall!9827 (ite c!758535 (toList!3817 lt!1647026) (t!357063 l!12858)) (ite c!758535 lambda!160222 lambda!160224)))))

(declare-fun b!4455905 () Bool)

(assert (=> b!4455905 (= e!2774684 (forall!9827 (toList!3817 lt!1647026) lambda!160224))))

(declare-fun b!4455906 () Bool)

(declare-fun res!1847138 () Bool)

(assert (=> b!4455906 (=> (not res!1847138) (not e!2774682))))

(assert (=> b!4455906 (= res!1847138 (forall!9827 (toList!3817 lt!1647026) lambda!160225))))

(assert (= (and d!1359264 c!758535) b!4455903))

(assert (= (and d!1359264 (not c!758535)) b!4455902))

(assert (= (and b!4455902 res!1847136) b!4455905))

(assert (= (or b!4455903 b!4455902) bm!310088))

(assert (= (or b!4455903 b!4455902) bm!310090))

(assert (= (or b!4455903 b!4455902) bm!310089))

(assert (= (and d!1359264 res!1847137) b!4455906))

(assert (= (and b!4455906 res!1847138) b!4455904))

(declare-fun m!5157427 () Bool)

(assert (=> bm!310089 m!5157427))

(declare-fun m!5157429 () Bool)

(assert (=> bm!310090 m!5157429))

(declare-fun m!5157431 () Bool)

(assert (=> bm!310088 m!5157431))

(declare-fun m!5157433 () Bool)

(assert (=> b!4455905 m!5157433))

(declare-fun m!5157435 () Bool)

(assert (=> b!4455906 m!5157435))

(declare-fun m!5157437 () Bool)

(assert (=> d!1359264 m!5157437))

(assert (=> d!1359264 m!5157269))

(declare-fun m!5157439 () Bool)

(assert (=> b!4455902 m!5157439))

(declare-fun m!5157441 () Bool)

(assert (=> b!4455902 m!5157441))

(declare-fun m!5157443 () Bool)

(assert (=> b!4455902 m!5157443))

(declare-fun m!5157445 () Bool)

(assert (=> b!4455902 m!5157445))

(declare-fun m!5157447 () Bool)

(assert (=> b!4455902 m!5157447))

(declare-fun m!5157449 () Bool)

(assert (=> b!4455902 m!5157449))

(assert (=> b!4455902 m!5157433))

(declare-fun m!5157451 () Bool)

(assert (=> b!4455902 m!5157451))

(assert (=> b!4455902 m!5157451))

(declare-fun m!5157453 () Bool)

(assert (=> b!4455902 m!5157453))

(assert (=> b!4455902 m!5157441))

(declare-fun m!5157455 () Bool)

(assert (=> b!4455902 m!5157455))

(declare-fun m!5157457 () Bool)

(assert (=> b!4455902 m!5157457))

(declare-fun m!5157459 () Bool)

(assert (=> b!4455904 m!5157459))

(assert (=> b!4455749 d!1359264))

(declare-fun bs!790804 () Bool)

(declare-fun d!1359282 () Bool)

(assert (= bs!790804 (and d!1359282 start!436634)))

(declare-fun lambda!160228 () Int)

(assert (=> bs!790804 (= lambda!160228 lambda!160178)))

(declare-fun bs!790805 () Bool)

(assert (= bs!790805 (and d!1359282 d!1359248)))

(assert (=> bs!790805 (not (= lambda!160228 lambda!160184))))

(declare-fun bs!790806 () Bool)

(assert (= bs!790806 (and d!1359282 d!1359258)))

(assert (=> bs!790806 (= lambda!160228 lambda!160187)))

(assert (=> d!1359282 (contains!12537 (addToMapMapFromBucket!499 (t!357063 l!12858) (extractMap!973 (toList!3818 lm!1853))) key!4412)))

(declare-fun lt!1647168 () Unit!86001)

(declare-fun choose!28374 (ListLongMap!2473 K!11368 List!50113 Hashable!5312) Unit!86001)

(assert (=> d!1359282 (= lt!1647168 (choose!28374 lm!1853 key!4412 (t!357063 l!12858) hashF!1313))))

(assert (=> d!1359282 (forall!9825 (toList!3818 lm!1853) lambda!160228)))

(assert (=> d!1359282 (= (lemmaAddToMapMaintainsContains!7 lm!1853 key!4412 (t!357063 l!12858) hashF!1313) lt!1647168)))

(declare-fun bs!790807 () Bool)

(assert (= bs!790807 d!1359282))

(assert (=> bs!790807 m!5157267))

(declare-fun m!5157461 () Bool)

(assert (=> bs!790807 m!5157461))

(declare-fun m!5157463 () Bool)

(assert (=> bs!790807 m!5157463))

(declare-fun m!5157465 () Bool)

(assert (=> bs!790807 m!5157465))

(assert (=> bs!790807 m!5157267))

(assert (=> bs!790807 m!5157461))

(declare-fun m!5157467 () Bool)

(assert (=> bs!790807 m!5157467))

(assert (=> b!4455749 d!1359282))

(declare-fun b!4455913 () Bool)

(declare-fun e!2774687 () Bool)

(declare-fun tp!1334952 () Bool)

(declare-fun tp!1334953 () Bool)

(assert (=> b!4455913 (= e!2774687 (and tp!1334952 tp!1334953))))

(assert (=> b!4455753 (= tp!1334941 e!2774687)))

(assert (= (and b!4455753 (is-Cons!49990 (toList!3818 lm!1853))) b!4455913))

(declare-fun e!2774690 () Bool)

(declare-fun tp!1334956 () Bool)

(declare-fun b!4455918 () Bool)

(assert (=> b!4455918 (= e!2774690 (and tp_is_empty!26841 tp_is_empty!26843 tp!1334956))))

(assert (=> b!4455750 (= tp!1334940 e!2774690)))

(assert (= (and b!4455750 (is-Cons!49989 (t!357063 l!12858))) b!4455918))

(declare-fun b_lambda!147657 () Bool)

(assert (= b_lambda!147653 (or start!436634 b_lambda!147657)))

(declare-fun bs!790808 () Bool)

(declare-fun d!1359284 () Bool)

(assert (= bs!790808 (and d!1359284 start!436634)))

(assert (=> bs!790808 (= (dynLambda!20966 lambda!160178 (h!55735 (toList!3818 lm!1853))) (noDuplicateKeys!905 (_2!28320 (h!55735 (toList!3818 lm!1853)))))))

(declare-fun m!5157469 () Bool)

(assert (=> bs!790808 m!5157469))

(assert (=> b!4455788 d!1359284))

(push 1)

(assert (not b!4455815))

(assert (not bm!310088))

(assert (not b!4455829))

(assert (not bm!310090))

(assert (not b!4455821))

(assert (not b!4455904))

(assert (not b!4455809))

(assert (not bm!310077))

(assert (not b!4455823))

(assert (not b!4455789))

(assert (not b!4455825))

(assert (not b!4455826))

(assert (not b!4455811))

(assert tp_is_empty!26841)

(assert (not b!4455781))

(assert (not b!4455905))

(assert (not b_lambda!147657))

(assert tp_is_empty!26843)

(assert (not bs!790808))

(assert (not b!4455902))

(assert (not bm!310089))

(assert (not d!1359258))

(assert (not d!1359252))

(assert (not bm!310076))

(assert (not d!1359264))

(assert (not b!4455832))

(assert (not d!1359262))

(assert (not b!4455827))

(assert (not d!1359282))

(assert (not d!1359248))

(assert (not b!4455913))

(assert (not d!1359254))

(assert (not b!4455780))

(assert (not b!4455828))

(assert (not b!4455812))

(assert (not b!4455906))

(assert (not b!4455830))

(assert (not b!4455810))

(assert (not b!4455918))

(assert (not b!4455824))

(assert (not b!4455808))

(assert (not b!4455813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

