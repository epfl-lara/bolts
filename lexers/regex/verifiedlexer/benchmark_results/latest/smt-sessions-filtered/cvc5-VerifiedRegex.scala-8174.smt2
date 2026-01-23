; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!421178 () Bool)

(assert start!421178)

(declare-fun b!4354329 () Bool)

(declare-fun e!2709712 () Bool)

(declare-fun e!2709710 () Bool)

(assert (=> b!4354329 (= e!2709712 e!2709710)))

(declare-fun res!1789336 () Bool)

(assert (=> b!4354329 (=> res!1789336 e!2709710)))

(declare-datatypes ((V!10519 0))(
  ( (V!10520 (val!16489 Int)) )
))
(declare-datatypes ((K!10273 0))(
  ( (K!10274 (val!16490 Int)) )
))
(declare-datatypes ((tuple2!48298 0))(
  ( (tuple2!48299 (_1!27443 K!10273) (_2!27443 V!10519)) )
))
(declare-datatypes ((List!49035 0))(
  ( (Nil!48911) (Cons!48911 (h!54456 tuple2!48298) (t!355955 List!49035)) )
))
(declare-datatypes ((tuple2!48300 0))(
  ( (tuple2!48301 (_1!27444 (_ BitVec 64)) (_2!27444 List!49035)) )
))
(declare-datatypes ((List!49036 0))(
  ( (Nil!48912) (Cons!48912 (h!54457 tuple2!48300) (t!355956 List!49036)) )
))
(declare-datatypes ((ListLongMap!1597 0))(
  ( (ListLongMap!1598 (toList!2947 List!49036)) )
))
(declare-fun lm!1707 () ListLongMap!1597)

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4354329 (= res!1789336 (or (and (is-Cons!48912 (toList!2947 lm!1707)) (= (_1!27444 (h!54457 (toList!2947 lm!1707))) hash!377)) (not (is-Cons!48912 (toList!2947 lm!1707))) (= (_1!27444 (h!54457 (toList!2947 lm!1707))) hash!377)))))

(declare-fun e!2709709 () Bool)

(assert (=> b!4354329 e!2709709))

(declare-fun res!1789334 () Bool)

(assert (=> b!4354329 (=> (not res!1789334) (not e!2709709))))

(declare-fun lt!1567200 () ListLongMap!1597)

(declare-fun lambda!140016 () Int)

(declare-fun forall!9105 (List!49036 Int) Bool)

(assert (=> b!4354329 (= res!1789334 (forall!9105 (toList!2947 lt!1567200) lambda!140016))))

(declare-fun lt!1567192 () tuple2!48300)

(declare-fun +!621 (ListLongMap!1597 tuple2!48300) ListLongMap!1597)

(assert (=> b!4354329 (= lt!1567200 (+!621 lm!1707 lt!1567192))))

(declare-fun newBucket!200 () List!49035)

(assert (=> b!4354329 (= lt!1567192 (tuple2!48301 hash!377 newBucket!200))))

(declare-datatypes ((Unit!71379 0))(
  ( (Unit!71380) )
))
(declare-fun lt!1567189 () Unit!71379)

(declare-fun addValidProp!136 (ListLongMap!1597 Int (_ BitVec 64) List!49035) Unit!71379)

(assert (=> b!4354329 (= lt!1567189 (addValidProp!136 lm!1707 lambda!140016 hash!377 newBucket!200))))

(assert (=> b!4354329 (forall!9105 (toList!2947 lm!1707) lambda!140016)))

(declare-fun b!4354330 () Bool)

(declare-fun e!2709713 () Bool)

(declare-fun head!9035 (ListLongMap!1597) tuple2!48300)

(assert (=> b!4354330 (= e!2709713 (not (= (head!9035 lm!1707) lt!1567192)))))

(declare-fun b!4354332 () Bool)

(assert (=> b!4354332 (= e!2709709 (forall!9105 (toList!2947 lt!1567200) lambda!140016))))

(declare-fun b!4354333 () Bool)

(declare-fun res!1789342 () Bool)

(declare-fun e!2709711 () Bool)

(assert (=> b!4354333 (=> (not res!1789342) (not e!2709711))))

(declare-fun contains!11102 (ListLongMap!1597 (_ BitVec 64)) Bool)

(assert (=> b!4354333 (= res!1789342 (contains!11102 lm!1707 hash!377))))

(declare-fun b!4354334 () Bool)

(declare-fun res!1789344 () Bool)

(assert (=> b!4354334 (=> (not res!1789344) (not e!2709711))))

(declare-datatypes ((Hashable!4874 0))(
  ( (HashableExt!4873 (__x!30577 Int)) )
))
(declare-fun hashF!1247 () Hashable!4874)

(declare-fun allKeysSameHashInMap!586 (ListLongMap!1597 Hashable!4874) Bool)

(assert (=> b!4354334 (= res!1789344 (allKeysSameHashInMap!586 lm!1707 hashF!1247))))

(declare-fun b!4354335 () Bool)

(declare-fun e!2709707 () Bool)

(declare-fun key!3918 () K!10273)

(declare-fun containsKey!671 (List!49035 K!10273) Bool)

(assert (=> b!4354335 (= e!2709707 (not (containsKey!671 (_2!27444 (h!54457 (toList!2947 lm!1707))) key!3918)))))

(declare-fun b!4354336 () Bool)

(declare-fun res!1789338 () Bool)

(assert (=> b!4354336 (=> (not res!1789338) (not e!2709711))))

(declare-fun allKeysSameHash!440 (List!49035 (_ BitVec 64) Hashable!4874) Bool)

(assert (=> b!4354336 (= res!1789338 (allKeysSameHash!440 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4354331 () Bool)

(declare-fun e!2709714 () Bool)

(declare-fun tp!1330027 () Bool)

(assert (=> b!4354331 (= e!2709714 tp!1330027)))

(declare-fun res!1789335 () Bool)

(assert (=> start!421178 (=> (not res!1789335) (not e!2709711))))

(assert (=> start!421178 (= res!1789335 (forall!9105 (toList!2947 lm!1707) lambda!140016))))

(assert (=> start!421178 e!2709711))

(declare-fun e!2709708 () Bool)

(assert (=> start!421178 e!2709708))

(assert (=> start!421178 true))

(declare-fun inv!64460 (ListLongMap!1597) Bool)

(assert (=> start!421178 (and (inv!64460 lm!1707) e!2709714)))

(declare-fun tp_is_empty!25165 () Bool)

(assert (=> start!421178 tp_is_empty!25165))

(declare-fun tp_is_empty!25167 () Bool)

(assert (=> start!421178 tp_is_empty!25167))

(declare-fun b!4354337 () Bool)

(assert (=> b!4354337 (= e!2709711 (not e!2709712))))

(declare-fun res!1789341 () Bool)

(assert (=> b!4354337 (=> res!1789341 e!2709712)))

(declare-fun lt!1567199 () tuple2!48298)

(declare-fun lt!1567191 () List!49035)

(declare-fun removePairForKey!452 (List!49035 K!10273) List!49035)

(assert (=> b!4354337 (= res!1789341 (not (= newBucket!200 (Cons!48911 lt!1567199 (removePairForKey!452 lt!1567191 key!3918)))))))

(declare-fun newValue!99 () V!10519)

(assert (=> b!4354337 (= lt!1567199 (tuple2!48299 key!3918 newValue!99))))

(declare-fun lt!1567201 () tuple2!48300)

(declare-fun lt!1567202 () Unit!71379)

(declare-fun forallContained!1748 (List!49036 Int tuple2!48300) Unit!71379)

(assert (=> b!4354337 (= lt!1567202 (forallContained!1748 (toList!2947 lm!1707) lambda!140016 lt!1567201))))

(declare-fun contains!11103 (List!49036 tuple2!48300) Bool)

(assert (=> b!4354337 (contains!11103 (toList!2947 lm!1707) lt!1567201)))

(assert (=> b!4354337 (= lt!1567201 (tuple2!48301 hash!377 lt!1567191))))

(declare-fun lt!1567193 () Unit!71379)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!329 (List!49036 (_ BitVec 64) List!49035) Unit!71379)

(assert (=> b!4354337 (= lt!1567193 (lemmaGetValueByKeyImpliesContainsTuple!329 (toList!2947 lm!1707) hash!377 lt!1567191))))

(declare-fun apply!11334 (ListLongMap!1597 (_ BitVec 64)) List!49035)

(assert (=> b!4354337 (= lt!1567191 (apply!11334 lm!1707 hash!377))))

(declare-fun b!4354338 () Bool)

(declare-fun res!1789340 () Bool)

(assert (=> b!4354338 (=> res!1789340 e!2709712)))

(declare-fun noDuplicateKeys!482 (List!49035) Bool)

(assert (=> b!4354338 (= res!1789340 (not (noDuplicateKeys!482 newBucket!200)))))

(declare-fun b!4354339 () Bool)

(assert (=> b!4354339 (= e!2709710 (noDuplicateKeys!482 (_2!27444 (h!54457 (toList!2947 lm!1707)))))))

(assert (=> b!4354339 e!2709713))

(declare-fun res!1789343 () Bool)

(assert (=> b!4354339 (=> (not res!1789343) (not e!2709713))))

(declare-fun lt!1567198 () ListLongMap!1597)

(declare-datatypes ((ListMap!2191 0))(
  ( (ListMap!2192 (toList!2948 List!49035)) )
))
(declare-fun lt!1567197 () ListMap!2191)

(declare-fun eq!252 (ListMap!2191 ListMap!2191) Bool)

(declare-fun extractMap!541 (List!49036) ListMap!2191)

(declare-fun +!622 (ListMap!2191 tuple2!48298) ListMap!2191)

(assert (=> b!4354339 (= res!1789343 (eq!252 (extractMap!541 (toList!2947 (+!621 lt!1567198 lt!1567192))) (+!622 lt!1567197 lt!1567199)))))

(declare-fun lt!1567194 () Unit!71379)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!86 (ListLongMap!1597 (_ BitVec 64) List!49035 K!10273 V!10519 Hashable!4874) Unit!71379)

(assert (=> b!4354339 (= lt!1567194 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!86 lt!1567198 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11104 (ListMap!2191 K!10273) Bool)

(assert (=> b!4354339 (contains!11104 lt!1567197 key!3918)))

(assert (=> b!4354339 (= lt!1567197 (extractMap!541 (toList!2947 lt!1567198)))))

(declare-fun tail!6983 (ListLongMap!1597) ListLongMap!1597)

(assert (=> b!4354339 (= lt!1567198 (tail!6983 lm!1707))))

(declare-fun lt!1567190 () ListMap!2191)

(assert (=> b!4354339 (contains!11104 lt!1567190 key!3918)))

(declare-fun lt!1567195 () Unit!71379)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!25 (List!49035 K!10273 V!10519 ListMap!2191) Unit!71379)

(assert (=> b!4354339 (= lt!1567195 (lemmaAddToMapContainsAndNotInListThenInAcc!25 (_2!27444 (h!54457 (toList!2947 lm!1707))) key!3918 newValue!99 lt!1567190))))

(assert (=> b!4354339 (= lt!1567190 (extractMap!541 (t!355956 (toList!2947 lm!1707))))))

(assert (=> b!4354339 e!2709707))

(declare-fun res!1789345 () Bool)

(assert (=> b!4354339 (=> (not res!1789345) (not e!2709707))))

(assert (=> b!4354339 (= res!1789345 (not (containsKey!671 (apply!11334 lm!1707 (_1!27444 (h!54457 (toList!2947 lm!1707)))) key!3918)))))

(declare-fun lt!1567196 () Unit!71379)

(declare-fun lemmaNotSameHashThenCannotContainKey!29 (ListLongMap!1597 K!10273 (_ BitVec 64) Hashable!4874) Unit!71379)

(assert (=> b!4354339 (= lt!1567196 (lemmaNotSameHashThenCannotContainKey!29 lm!1707 key!3918 (_1!27444 (h!54457 (toList!2947 lm!1707))) hashF!1247))))

(declare-fun b!4354340 () Bool)

(declare-fun res!1789337 () Bool)

(assert (=> b!4354340 (=> (not res!1789337) (not e!2709711))))

(assert (=> b!4354340 (= res!1789337 (contains!11104 (extractMap!541 (toList!2947 lm!1707)) key!3918))))

(declare-fun tp!1330028 () Bool)

(declare-fun b!4354341 () Bool)

(assert (=> b!4354341 (= e!2709708 (and tp_is_empty!25165 tp_is_empty!25167 tp!1330028))))

(declare-fun b!4354342 () Bool)

(declare-fun res!1789339 () Bool)

(assert (=> b!4354342 (=> (not res!1789339) (not e!2709711))))

(declare-fun hash!1528 (Hashable!4874 K!10273) (_ BitVec 64))

(assert (=> b!4354342 (= res!1789339 (= (hash!1528 hashF!1247 key!3918) hash!377))))

(assert (= (and start!421178 res!1789335) b!4354334))

(assert (= (and b!4354334 res!1789344) b!4354342))

(assert (= (and b!4354342 res!1789339) b!4354336))

(assert (= (and b!4354336 res!1789338) b!4354340))

(assert (= (and b!4354340 res!1789337) b!4354333))

(assert (= (and b!4354333 res!1789342) b!4354337))

(assert (= (and b!4354337 (not res!1789341)) b!4354338))

(assert (= (and b!4354338 (not res!1789340)) b!4354329))

(assert (= (and b!4354329 res!1789334) b!4354332))

(assert (= (and b!4354329 (not res!1789336)) b!4354339))

(assert (= (and b!4354339 res!1789345) b!4354335))

(assert (= (and b!4354339 res!1789343) b!4354330))

(assert (= (and start!421178 (is-Cons!48911 newBucket!200)) b!4354341))

(assert (= start!421178 b!4354331))

(declare-fun m!4966741 () Bool)

(assert (=> b!4354339 m!4966741))

(declare-fun m!4966743 () Bool)

(assert (=> b!4354339 m!4966743))

(declare-fun m!4966745 () Bool)

(assert (=> b!4354339 m!4966745))

(declare-fun m!4966747 () Bool)

(assert (=> b!4354339 m!4966747))

(declare-fun m!4966749 () Bool)

(assert (=> b!4354339 m!4966749))

(declare-fun m!4966751 () Bool)

(assert (=> b!4354339 m!4966751))

(declare-fun m!4966753 () Bool)

(assert (=> b!4354339 m!4966753))

(declare-fun m!4966755 () Bool)

(assert (=> b!4354339 m!4966755))

(declare-fun m!4966757 () Bool)

(assert (=> b!4354339 m!4966757))

(assert (=> b!4354339 m!4966753))

(declare-fun m!4966759 () Bool)

(assert (=> b!4354339 m!4966759))

(declare-fun m!4966761 () Bool)

(assert (=> b!4354339 m!4966761))

(assert (=> b!4354339 m!4966759))

(declare-fun m!4966763 () Bool)

(assert (=> b!4354339 m!4966763))

(declare-fun m!4966765 () Bool)

(assert (=> b!4354339 m!4966765))

(declare-fun m!4966767 () Bool)

(assert (=> b!4354339 m!4966767))

(assert (=> b!4354339 m!4966767))

(declare-fun m!4966769 () Bool)

(assert (=> b!4354339 m!4966769))

(declare-fun m!4966771 () Bool)

(assert (=> b!4354333 m!4966771))

(declare-fun m!4966773 () Bool)

(assert (=> b!4354338 m!4966773))

(declare-fun m!4966775 () Bool)

(assert (=> b!4354330 m!4966775))

(declare-fun m!4966777 () Bool)

(assert (=> b!4354329 m!4966777))

(declare-fun m!4966779 () Bool)

(assert (=> b!4354329 m!4966779))

(declare-fun m!4966781 () Bool)

(assert (=> b!4354329 m!4966781))

(declare-fun m!4966783 () Bool)

(assert (=> b!4354329 m!4966783))

(declare-fun m!4966785 () Bool)

(assert (=> b!4354334 m!4966785))

(declare-fun m!4966787 () Bool)

(assert (=> b!4354335 m!4966787))

(declare-fun m!4966789 () Bool)

(assert (=> b!4354342 m!4966789))

(declare-fun m!4966791 () Bool)

(assert (=> b!4354337 m!4966791))

(declare-fun m!4966793 () Bool)

(assert (=> b!4354337 m!4966793))

(declare-fun m!4966795 () Bool)

(assert (=> b!4354337 m!4966795))

(declare-fun m!4966797 () Bool)

(assert (=> b!4354337 m!4966797))

(declare-fun m!4966799 () Bool)

(assert (=> b!4354337 m!4966799))

(declare-fun m!4966801 () Bool)

(assert (=> b!4354336 m!4966801))

(assert (=> b!4354332 m!4966777))

(declare-fun m!4966803 () Bool)

(assert (=> b!4354340 m!4966803))

(assert (=> b!4354340 m!4966803))

(declare-fun m!4966805 () Bool)

(assert (=> b!4354340 m!4966805))

(assert (=> start!421178 m!4966783))

(declare-fun m!4966807 () Bool)

(assert (=> start!421178 m!4966807))

(push 1)

(assert (not b!4354331))

(assert (not b!4354342))

(assert tp_is_empty!25165)

(assert (not b!4354329))

(assert (not b!4354340))

(assert (not b!4354330))

(assert (not b!4354338))

(assert tp_is_empty!25167)

(assert (not b!4354341))

(assert (not b!4354336))

(assert (not start!421178))

(assert (not b!4354332))

(assert (not b!4354335))

(assert (not b!4354334))

(assert (not b!4354337))

(assert (not b!4354339))

(assert (not b!4354333))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1286783 () Bool)

(declare-fun res!1789386 () Bool)

(declare-fun e!2709743 () Bool)

(assert (=> d!1286783 (=> res!1789386 e!2709743)))

(assert (=> d!1286783 (= res!1789386 (not (is-Cons!48911 newBucket!200)))))

(assert (=> d!1286783 (= (noDuplicateKeys!482 newBucket!200) e!2709743)))

(declare-fun b!4354389 () Bool)

(declare-fun e!2709744 () Bool)

(assert (=> b!4354389 (= e!2709743 e!2709744)))

(declare-fun res!1789387 () Bool)

(assert (=> b!4354389 (=> (not res!1789387) (not e!2709744))))

(assert (=> b!4354389 (= res!1789387 (not (containsKey!671 (t!355955 newBucket!200) (_1!27443 (h!54456 newBucket!200)))))))

(declare-fun b!4354390 () Bool)

(assert (=> b!4354390 (= e!2709744 (noDuplicateKeys!482 (t!355955 newBucket!200)))))

(assert (= (and d!1286783 (not res!1789386)) b!4354389))

(assert (= (and b!4354389 res!1789387) b!4354390))

(declare-fun m!4966877 () Bool)

(assert (=> b!4354389 m!4966877))

(declare-fun m!4966879 () Bool)

(assert (=> b!4354390 m!4966879))

(assert (=> b!4354338 d!1286783))

(declare-fun d!1286785 () Bool)

(assert (=> d!1286785 true))

(assert (=> d!1286785 true))

(declare-fun lambda!140030 () Int)

(declare-fun forall!9107 (List!49035 Int) Bool)

(assert (=> d!1286785 (= (allKeysSameHash!440 newBucket!200 hash!377 hashF!1247) (forall!9107 newBucket!200 lambda!140030))))

(declare-fun bs!630364 () Bool)

(assert (= bs!630364 d!1286785))

(declare-fun m!4966881 () Bool)

(assert (=> bs!630364 m!4966881))

(assert (=> b!4354336 d!1286785))

(declare-fun d!1286787 () Bool)

(declare-datatypes ((Option!10454 0))(
  ( (None!10453) (Some!10453 (v!43311 List!49035)) )
))
(declare-fun get!15885 (Option!10454) List!49035)

(declare-fun getValueByKey!440 (List!49036 (_ BitVec 64)) Option!10454)

(assert (=> d!1286787 (= (apply!11334 lm!1707 hash!377) (get!15885 (getValueByKey!440 (toList!2947 lm!1707) hash!377)))))

(declare-fun bs!630365 () Bool)

(assert (= bs!630365 d!1286787))

(declare-fun m!4966883 () Bool)

(assert (=> bs!630365 m!4966883))

(assert (=> bs!630365 m!4966883))

(declare-fun m!4966885 () Bool)

(assert (=> bs!630365 m!4966885))

(assert (=> b!4354337 d!1286787))

(declare-fun d!1286791 () Bool)

(declare-fun lt!1567247 () Bool)

(declare-fun content!7704 (List!49036) (Set tuple2!48300))

(assert (=> d!1286791 (= lt!1567247 (set.member lt!1567201 (content!7704 (toList!2947 lm!1707))))))

(declare-fun e!2709754 () Bool)

(assert (=> d!1286791 (= lt!1567247 e!2709754)))

(declare-fun res!1789396 () Bool)

(assert (=> d!1286791 (=> (not res!1789396) (not e!2709754))))

(assert (=> d!1286791 (= res!1789396 (is-Cons!48912 (toList!2947 lm!1707)))))

(assert (=> d!1286791 (= (contains!11103 (toList!2947 lm!1707) lt!1567201) lt!1567247)))

(declare-fun b!4354403 () Bool)

(declare-fun e!2709753 () Bool)

(assert (=> b!4354403 (= e!2709754 e!2709753)))

(declare-fun res!1789397 () Bool)

(assert (=> b!4354403 (=> res!1789397 e!2709753)))

(assert (=> b!4354403 (= res!1789397 (= (h!54457 (toList!2947 lm!1707)) lt!1567201))))

(declare-fun b!4354404 () Bool)

(assert (=> b!4354404 (= e!2709753 (contains!11103 (t!355956 (toList!2947 lm!1707)) lt!1567201))))

(assert (= (and d!1286791 res!1789396) b!4354403))

(assert (= (and b!4354403 (not res!1789397)) b!4354404))

(declare-fun m!4966887 () Bool)

(assert (=> d!1286791 m!4966887))

(declare-fun m!4966889 () Bool)

(assert (=> d!1286791 m!4966889))

(declare-fun m!4966891 () Bool)

(assert (=> b!4354404 m!4966891))

(assert (=> b!4354337 d!1286791))

(declare-fun d!1286793 () Bool)

(declare-fun dynLambda!20626 (Int tuple2!48300) Bool)

(assert (=> d!1286793 (dynLambda!20626 lambda!140016 lt!1567201)))

(declare-fun lt!1567250 () Unit!71379)

(declare-fun choose!26848 (List!49036 Int tuple2!48300) Unit!71379)

(assert (=> d!1286793 (= lt!1567250 (choose!26848 (toList!2947 lm!1707) lambda!140016 lt!1567201))))

(declare-fun e!2709759 () Bool)

(assert (=> d!1286793 e!2709759))

(declare-fun res!1789402 () Bool)

(assert (=> d!1286793 (=> (not res!1789402) (not e!2709759))))

(assert (=> d!1286793 (= res!1789402 (forall!9105 (toList!2947 lm!1707) lambda!140016))))

(assert (=> d!1286793 (= (forallContained!1748 (toList!2947 lm!1707) lambda!140016 lt!1567201) lt!1567250)))

(declare-fun b!4354409 () Bool)

(assert (=> b!4354409 (= e!2709759 (contains!11103 (toList!2947 lm!1707) lt!1567201))))

(assert (= (and d!1286793 res!1789402) b!4354409))

(declare-fun b_lambda!130915 () Bool)

(assert (=> (not b_lambda!130915) (not d!1286793)))

(declare-fun m!4966897 () Bool)

(assert (=> d!1286793 m!4966897))

(declare-fun m!4966899 () Bool)

(assert (=> d!1286793 m!4966899))

(assert (=> d!1286793 m!4966783))

(assert (=> b!4354409 m!4966797))

(assert (=> b!4354337 d!1286793))

(declare-fun d!1286797 () Bool)

(assert (=> d!1286797 (contains!11103 (toList!2947 lm!1707) (tuple2!48301 hash!377 lt!1567191))))

(declare-fun lt!1567253 () Unit!71379)

(declare-fun choose!26849 (List!49036 (_ BitVec 64) List!49035) Unit!71379)

(assert (=> d!1286797 (= lt!1567253 (choose!26849 (toList!2947 lm!1707) hash!377 lt!1567191))))

(declare-fun e!2709762 () Bool)

(assert (=> d!1286797 e!2709762))

(declare-fun res!1789405 () Bool)

(assert (=> d!1286797 (=> (not res!1789405) (not e!2709762))))

(declare-fun isStrictlySorted!97 (List!49036) Bool)

(assert (=> d!1286797 (= res!1789405 (isStrictlySorted!97 (toList!2947 lm!1707)))))

(assert (=> d!1286797 (= (lemmaGetValueByKeyImpliesContainsTuple!329 (toList!2947 lm!1707) hash!377 lt!1567191) lt!1567253)))

(declare-fun b!4354412 () Bool)

(assert (=> b!4354412 (= e!2709762 (= (getValueByKey!440 (toList!2947 lm!1707) hash!377) (Some!10453 lt!1567191)))))

(assert (= (and d!1286797 res!1789405) b!4354412))

(declare-fun m!4966901 () Bool)

(assert (=> d!1286797 m!4966901))

(declare-fun m!4966903 () Bool)

(assert (=> d!1286797 m!4966903))

(declare-fun m!4966905 () Bool)

(assert (=> d!1286797 m!4966905))

(assert (=> b!4354412 m!4966883))

(assert (=> b!4354337 d!1286797))

(declare-fun b!4354427 () Bool)

(declare-fun e!2709768 () List!49035)

(assert (=> b!4354427 (= e!2709768 (Cons!48911 (h!54456 lt!1567191) (removePairForKey!452 (t!355955 lt!1567191) key!3918)))))

(declare-fun b!4354425 () Bool)

(declare-fun e!2709767 () List!49035)

(assert (=> b!4354425 (= e!2709767 (t!355955 lt!1567191))))

(declare-fun d!1286799 () Bool)

(declare-fun lt!1567256 () List!49035)

(assert (=> d!1286799 (not (containsKey!671 lt!1567256 key!3918))))

(assert (=> d!1286799 (= lt!1567256 e!2709767)))

(declare-fun c!740286 () Bool)

(assert (=> d!1286799 (= c!740286 (and (is-Cons!48911 lt!1567191) (= (_1!27443 (h!54456 lt!1567191)) key!3918)))))

(assert (=> d!1286799 (noDuplicateKeys!482 lt!1567191)))

(assert (=> d!1286799 (= (removePairForKey!452 lt!1567191 key!3918) lt!1567256)))

(declare-fun b!4354428 () Bool)

(assert (=> b!4354428 (= e!2709768 Nil!48911)))

(declare-fun b!4354426 () Bool)

(assert (=> b!4354426 (= e!2709767 e!2709768)))

(declare-fun c!740285 () Bool)

(assert (=> b!4354426 (= c!740285 (is-Cons!48911 lt!1567191))))

(assert (= (and d!1286799 c!740286) b!4354425))

(assert (= (and d!1286799 (not c!740286)) b!4354426))

(assert (= (and b!4354426 c!740285) b!4354427))

(assert (= (and b!4354426 (not c!740285)) b!4354428))

(declare-fun m!4966909 () Bool)

(assert (=> b!4354427 m!4966909))

(declare-fun m!4966911 () Bool)

(assert (=> d!1286799 m!4966911))

(declare-fun m!4966913 () Bool)

(assert (=> d!1286799 m!4966913))

(assert (=> b!4354337 d!1286799))

(declare-fun d!1286803 () Bool)

(declare-fun res!1789414 () Bool)

(declare-fun e!2709777 () Bool)

(assert (=> d!1286803 (=> res!1789414 e!2709777)))

(assert (=> d!1286803 (= res!1789414 (and (is-Cons!48911 (_2!27444 (h!54457 (toList!2947 lm!1707)))) (= (_1!27443 (h!54456 (_2!27444 (h!54457 (toList!2947 lm!1707))))) key!3918)))))

(assert (=> d!1286803 (= (containsKey!671 (_2!27444 (h!54457 (toList!2947 lm!1707))) key!3918) e!2709777)))

(declare-fun b!4354437 () Bool)

(declare-fun e!2709778 () Bool)

(assert (=> b!4354437 (= e!2709777 e!2709778)))

(declare-fun res!1789415 () Bool)

(assert (=> b!4354437 (=> (not res!1789415) (not e!2709778))))

(assert (=> b!4354437 (= res!1789415 (is-Cons!48911 (_2!27444 (h!54457 (toList!2947 lm!1707)))))))

(declare-fun b!4354438 () Bool)

(assert (=> b!4354438 (= e!2709778 (containsKey!671 (t!355955 (_2!27444 (h!54457 (toList!2947 lm!1707)))) key!3918))))

(assert (= (and d!1286803 (not res!1789414)) b!4354437))

(assert (= (and b!4354437 res!1789415) b!4354438))

(declare-fun m!4966915 () Bool)

(assert (=> b!4354438 m!4966915))

(assert (=> b!4354335 d!1286803))

(declare-fun d!1286805 () Bool)

(declare-fun res!1789422 () Bool)

(declare-fun e!2709785 () Bool)

(assert (=> d!1286805 (=> res!1789422 e!2709785)))

(assert (=> d!1286805 (= res!1789422 (is-Nil!48912 (toList!2947 lm!1707)))))

(assert (=> d!1286805 (= (forall!9105 (toList!2947 lm!1707) lambda!140016) e!2709785)))

(declare-fun b!4354445 () Bool)

(declare-fun e!2709786 () Bool)

(assert (=> b!4354445 (= e!2709785 e!2709786)))

(declare-fun res!1789423 () Bool)

(assert (=> b!4354445 (=> (not res!1789423) (not e!2709786))))

(assert (=> b!4354445 (= res!1789423 (dynLambda!20626 lambda!140016 (h!54457 (toList!2947 lm!1707))))))

(declare-fun b!4354446 () Bool)

(assert (=> b!4354446 (= e!2709786 (forall!9105 (t!355956 (toList!2947 lm!1707)) lambda!140016))))

(assert (= (and d!1286805 (not res!1789422)) b!4354445))

(assert (= (and b!4354445 res!1789423) b!4354446))

(declare-fun b_lambda!130919 () Bool)

(assert (=> (not b_lambda!130919) (not b!4354445)))

(declare-fun m!4966921 () Bool)

(assert (=> b!4354445 m!4966921))

(declare-fun m!4966923 () Bool)

(assert (=> b!4354446 m!4966923))

(assert (=> start!421178 d!1286805))

(declare-fun d!1286809 () Bool)

(assert (=> d!1286809 (= (inv!64460 lm!1707) (isStrictlySorted!97 (toList!2947 lm!1707)))))

(declare-fun bs!630367 () Bool)

(assert (= bs!630367 d!1286809))

(assert (=> bs!630367 m!4966905))

(assert (=> start!421178 d!1286809))

(declare-fun bs!630368 () Bool)

(declare-fun d!1286811 () Bool)

(assert (= bs!630368 (and d!1286811 start!421178)))

(declare-fun lambda!140036 () Int)

(assert (=> bs!630368 (not (= lambda!140036 lambda!140016))))

(assert (=> d!1286811 true))

(assert (=> d!1286811 (= (allKeysSameHashInMap!586 lm!1707 hashF!1247) (forall!9105 (toList!2947 lm!1707) lambda!140036))))

(declare-fun bs!630369 () Bool)

(assert (= bs!630369 d!1286811))

(declare-fun m!4966925 () Bool)

(assert (=> bs!630369 m!4966925))

(assert (=> b!4354334 d!1286811))

(declare-fun d!1286813 () Bool)

(declare-fun res!1789424 () Bool)

(declare-fun e!2709787 () Bool)

(assert (=> d!1286813 (=> res!1789424 e!2709787)))

(assert (=> d!1286813 (= res!1789424 (is-Nil!48912 (toList!2947 lt!1567200)))))

(assert (=> d!1286813 (= (forall!9105 (toList!2947 lt!1567200) lambda!140016) e!2709787)))

(declare-fun b!4354449 () Bool)

(declare-fun e!2709788 () Bool)

(assert (=> b!4354449 (= e!2709787 e!2709788)))

(declare-fun res!1789425 () Bool)

(assert (=> b!4354449 (=> (not res!1789425) (not e!2709788))))

(assert (=> b!4354449 (= res!1789425 (dynLambda!20626 lambda!140016 (h!54457 (toList!2947 lt!1567200))))))

(declare-fun b!4354450 () Bool)

(assert (=> b!4354450 (= e!2709788 (forall!9105 (t!355956 (toList!2947 lt!1567200)) lambda!140016))))

(assert (= (and d!1286813 (not res!1789424)) b!4354449))

(assert (= (and b!4354449 res!1789425) b!4354450))

(declare-fun b_lambda!130921 () Bool)

(assert (=> (not b_lambda!130921) (not b!4354449)))

(declare-fun m!4966927 () Bool)

(assert (=> b!4354449 m!4966927))

(declare-fun m!4966929 () Bool)

(assert (=> b!4354450 m!4966929))

(assert (=> b!4354332 d!1286813))

(declare-fun d!1286815 () Bool)

(declare-fun e!2709794 () Bool)

(assert (=> d!1286815 e!2709794))

(declare-fun res!1789428 () Bool)

(assert (=> d!1286815 (=> res!1789428 e!2709794)))

(declare-fun lt!1567268 () Bool)

(assert (=> d!1286815 (= res!1789428 (not lt!1567268))))

(declare-fun lt!1567266 () Bool)

(assert (=> d!1286815 (= lt!1567268 lt!1567266)))

(declare-fun lt!1567267 () Unit!71379)

(declare-fun e!2709793 () Unit!71379)

(assert (=> d!1286815 (= lt!1567267 e!2709793)))

(declare-fun c!740289 () Bool)

(assert (=> d!1286815 (= c!740289 lt!1567266)))

(declare-fun containsKey!673 (List!49036 (_ BitVec 64)) Bool)

(assert (=> d!1286815 (= lt!1567266 (containsKey!673 (toList!2947 lm!1707) hash!377))))

(assert (=> d!1286815 (= (contains!11102 lm!1707 hash!377) lt!1567268)))

(declare-fun b!4354457 () Bool)

(declare-fun lt!1567265 () Unit!71379)

(assert (=> b!4354457 (= e!2709793 lt!1567265)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!351 (List!49036 (_ BitVec 64)) Unit!71379)

(assert (=> b!4354457 (= lt!1567265 (lemmaContainsKeyImpliesGetValueByKeyDefined!351 (toList!2947 lm!1707) hash!377))))

(declare-fun isDefined!7748 (Option!10454) Bool)

(assert (=> b!4354457 (isDefined!7748 (getValueByKey!440 (toList!2947 lm!1707) hash!377))))

(declare-fun b!4354458 () Bool)

(declare-fun Unit!71383 () Unit!71379)

(assert (=> b!4354458 (= e!2709793 Unit!71383)))

(declare-fun b!4354459 () Bool)

(assert (=> b!4354459 (= e!2709794 (isDefined!7748 (getValueByKey!440 (toList!2947 lm!1707) hash!377)))))

(assert (= (and d!1286815 c!740289) b!4354457))

(assert (= (and d!1286815 (not c!740289)) b!4354458))

(assert (= (and d!1286815 (not res!1789428)) b!4354459))

(declare-fun m!4966931 () Bool)

(assert (=> d!1286815 m!4966931))

(declare-fun m!4966933 () Bool)

(assert (=> b!4354457 m!4966933))

(assert (=> b!4354457 m!4966883))

(assert (=> b!4354457 m!4966883))

(declare-fun m!4966935 () Bool)

(assert (=> b!4354457 m!4966935))

(assert (=> b!4354459 m!4966883))

(assert (=> b!4354459 m!4966883))

(assert (=> b!4354459 m!4966935))

(assert (=> b!4354333 d!1286815))

(declare-fun d!1286817 () Bool)

(declare-fun hash!1532 (Hashable!4874 K!10273) (_ BitVec 64))

(assert (=> d!1286817 (= (hash!1528 hashF!1247 key!3918) (hash!1532 hashF!1247 key!3918))))

(declare-fun bs!630370 () Bool)

(assert (= bs!630370 d!1286817))

(declare-fun m!4966937 () Bool)

(assert (=> bs!630370 m!4966937))

(assert (=> b!4354342 d!1286817))

(declare-fun d!1286819 () Bool)

(declare-fun e!2709814 () Bool)

(assert (=> d!1286819 e!2709814))

(declare-fun res!1789441 () Bool)

(assert (=> d!1286819 (=> res!1789441 e!2709814)))

(declare-fun e!2709815 () Bool)

(assert (=> d!1286819 (= res!1789441 e!2709815)))

(declare-fun res!1789442 () Bool)

(assert (=> d!1286819 (=> (not res!1789442) (not e!2709815))))

(declare-fun lt!1567297 () Bool)

(assert (=> d!1286819 (= res!1789442 (not lt!1567297))))

(declare-fun lt!1567299 () Bool)

(assert (=> d!1286819 (= lt!1567297 lt!1567299)))

(declare-fun lt!1567298 () Unit!71379)

(declare-fun e!2709810 () Unit!71379)

(assert (=> d!1286819 (= lt!1567298 e!2709810)))

(declare-fun c!740297 () Bool)

(assert (=> d!1286819 (= c!740297 lt!1567299)))

(declare-fun containsKey!674 (List!49035 K!10273) Bool)

(assert (=> d!1286819 (= lt!1567299 (containsKey!674 (toList!2948 (extractMap!541 (toList!2947 lm!1707))) key!3918))))

(assert (=> d!1286819 (= (contains!11104 (extractMap!541 (toList!2947 lm!1707)) key!3918) lt!1567297)))

(declare-fun b!4354484 () Bool)

(declare-datatypes ((List!49039 0))(
  ( (Nil!48915) (Cons!48915 (h!54462 K!10273) (t!355959 List!49039)) )
))
(declare-fun contains!11108 (List!49039 K!10273) Bool)

(declare-fun keys!16515 (ListMap!2191) List!49039)

(assert (=> b!4354484 (= e!2709815 (not (contains!11108 (keys!16515 (extractMap!541 (toList!2947 lm!1707))) key!3918)))))

(declare-fun b!4354485 () Bool)

(assert (=> b!4354485 false))

(declare-fun lt!1567302 () Unit!71379)

(declare-fun lt!1567304 () Unit!71379)

(assert (=> b!4354485 (= lt!1567302 lt!1567304)))

(assert (=> b!4354485 (containsKey!674 (toList!2948 (extractMap!541 (toList!2947 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!117 (List!49035 K!10273) Unit!71379)

(assert (=> b!4354485 (= lt!1567304 (lemmaInGetKeysListThenContainsKey!117 (toList!2948 (extractMap!541 (toList!2947 lm!1707))) key!3918))))

(declare-fun e!2709813 () Unit!71379)

(declare-fun Unit!71384 () Unit!71379)

(assert (=> b!4354485 (= e!2709813 Unit!71384)))

(declare-fun bm!302599 () Bool)

(declare-fun call!302604 () Bool)

(declare-fun e!2709812 () List!49039)

(assert (=> bm!302599 (= call!302604 (contains!11108 e!2709812 key!3918))))

(declare-fun c!740296 () Bool)

(assert (=> bm!302599 (= c!740296 c!740297)))

(declare-fun b!4354486 () Bool)

(assert (=> b!4354486 (= e!2709810 e!2709813)))

(declare-fun c!740298 () Bool)

(assert (=> b!4354486 (= c!740298 call!302604)))

(declare-fun b!4354487 () Bool)

(assert (=> b!4354487 (= e!2709812 (keys!16515 (extractMap!541 (toList!2947 lm!1707))))))

(declare-fun b!4354488 () Bool)

(declare-fun getKeysList!119 (List!49035) List!49039)

(assert (=> b!4354488 (= e!2709812 (getKeysList!119 (toList!2948 (extractMap!541 (toList!2947 lm!1707)))))))

(declare-fun b!4354489 () Bool)

(declare-fun e!2709811 () Bool)

(assert (=> b!4354489 (= e!2709811 (contains!11108 (keys!16515 (extractMap!541 (toList!2947 lm!1707))) key!3918))))

(declare-fun b!4354490 () Bool)

(assert (=> b!4354490 (= e!2709814 e!2709811)))

(declare-fun res!1789443 () Bool)

(assert (=> b!4354490 (=> (not res!1789443) (not e!2709811))))

(declare-datatypes ((Option!10455 0))(
  ( (None!10454) (Some!10454 (v!43312 V!10519)) )
))
(declare-fun isDefined!7749 (Option!10455) Bool)

(declare-fun getValueByKey!441 (List!49035 K!10273) Option!10455)

(assert (=> b!4354490 (= res!1789443 (isDefined!7749 (getValueByKey!441 (toList!2948 (extractMap!541 (toList!2947 lm!1707))) key!3918)))))

(declare-fun b!4354491 () Bool)

(declare-fun Unit!71385 () Unit!71379)

(assert (=> b!4354491 (= e!2709813 Unit!71385)))

(declare-fun b!4354492 () Bool)

(declare-fun lt!1567303 () Unit!71379)

(assert (=> b!4354492 (= e!2709810 lt!1567303)))

(declare-fun lt!1567301 () Unit!71379)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!352 (List!49035 K!10273) Unit!71379)

(assert (=> b!4354492 (= lt!1567301 (lemmaContainsKeyImpliesGetValueByKeyDefined!352 (toList!2948 (extractMap!541 (toList!2947 lm!1707))) key!3918))))

(assert (=> b!4354492 (isDefined!7749 (getValueByKey!441 (toList!2948 (extractMap!541 (toList!2947 lm!1707))) key!3918))))

(declare-fun lt!1567300 () Unit!71379)

(assert (=> b!4354492 (= lt!1567300 lt!1567301)))

(declare-fun lemmaInListThenGetKeysListContains!116 (List!49035 K!10273) Unit!71379)

(assert (=> b!4354492 (= lt!1567303 (lemmaInListThenGetKeysListContains!116 (toList!2948 (extractMap!541 (toList!2947 lm!1707))) key!3918))))

(assert (=> b!4354492 call!302604))

(assert (= (and d!1286819 c!740297) b!4354492))

(assert (= (and d!1286819 (not c!740297)) b!4354486))

(assert (= (and b!4354486 c!740298) b!4354485))

(assert (= (and b!4354486 (not c!740298)) b!4354491))

(assert (= (or b!4354492 b!4354486) bm!302599))

(assert (= (and bm!302599 c!740296) b!4354488))

(assert (= (and bm!302599 (not c!740296)) b!4354487))

(assert (= (and d!1286819 res!1789442) b!4354484))

(assert (= (and d!1286819 (not res!1789441)) b!4354490))

(assert (= (and b!4354490 res!1789443) b!4354489))

(declare-fun m!4966951 () Bool)

(assert (=> b!4354488 m!4966951))

(assert (=> b!4354487 m!4966803))

(declare-fun m!4966953 () Bool)

(assert (=> b!4354487 m!4966953))

(declare-fun m!4966955 () Bool)

(assert (=> b!4354492 m!4966955))

(declare-fun m!4966957 () Bool)

(assert (=> b!4354492 m!4966957))

(assert (=> b!4354492 m!4966957))

(declare-fun m!4966959 () Bool)

(assert (=> b!4354492 m!4966959))

(declare-fun m!4966961 () Bool)

(assert (=> b!4354492 m!4966961))

(assert (=> b!4354484 m!4966803))

(assert (=> b!4354484 m!4966953))

(assert (=> b!4354484 m!4966953))

(declare-fun m!4966963 () Bool)

(assert (=> b!4354484 m!4966963))

(declare-fun m!4966965 () Bool)

(assert (=> d!1286819 m!4966965))

(assert (=> b!4354485 m!4966965))

(declare-fun m!4966967 () Bool)

(assert (=> b!4354485 m!4966967))

(declare-fun m!4966969 () Bool)

(assert (=> bm!302599 m!4966969))

(assert (=> b!4354489 m!4966803))

(assert (=> b!4354489 m!4966953))

(assert (=> b!4354489 m!4966953))

(assert (=> b!4354489 m!4966963))

(assert (=> b!4354490 m!4966957))

(assert (=> b!4354490 m!4966957))

(assert (=> b!4354490 m!4966959))

(assert (=> b!4354340 d!1286819))

(declare-fun bs!630371 () Bool)

(declare-fun d!1286823 () Bool)

(assert (= bs!630371 (and d!1286823 start!421178)))

(declare-fun lambda!140039 () Int)

(assert (=> bs!630371 (= lambda!140039 lambda!140016)))

(declare-fun bs!630372 () Bool)

(assert (= bs!630372 (and d!1286823 d!1286811)))

(assert (=> bs!630372 (not (= lambda!140039 lambda!140036))))

(declare-fun lt!1567310 () ListMap!2191)

(declare-fun invariantList!671 (List!49035) Bool)

(assert (=> d!1286823 (invariantList!671 (toList!2948 lt!1567310))))

(declare-fun e!2709823 () ListMap!2191)

(assert (=> d!1286823 (= lt!1567310 e!2709823)))

(declare-fun c!740301 () Bool)

(assert (=> d!1286823 (= c!740301 (is-Cons!48912 (toList!2947 lm!1707)))))

(assert (=> d!1286823 (forall!9105 (toList!2947 lm!1707) lambda!140039)))

(assert (=> d!1286823 (= (extractMap!541 (toList!2947 lm!1707)) lt!1567310)))

(declare-fun b!4354503 () Bool)

(declare-fun addToMapMapFromBucket!178 (List!49035 ListMap!2191) ListMap!2191)

(assert (=> b!4354503 (= e!2709823 (addToMapMapFromBucket!178 (_2!27444 (h!54457 (toList!2947 lm!1707))) (extractMap!541 (t!355956 (toList!2947 lm!1707)))))))

(declare-fun b!4354504 () Bool)

(assert (=> b!4354504 (= e!2709823 (ListMap!2192 Nil!48911))))

(assert (= (and d!1286823 c!740301) b!4354503))

(assert (= (and d!1286823 (not c!740301)) b!4354504))

(declare-fun m!4966983 () Bool)

(assert (=> d!1286823 m!4966983))

(declare-fun m!4966985 () Bool)

(assert (=> d!1286823 m!4966985))

(assert (=> b!4354503 m!4966745))

(assert (=> b!4354503 m!4966745))

(declare-fun m!4966987 () Bool)

(assert (=> b!4354503 m!4966987))

(assert (=> b!4354340 d!1286823))

(declare-fun d!1286829 () Bool)

(declare-fun head!9037 (List!49036) tuple2!48300)

(assert (=> d!1286829 (= (head!9035 lm!1707) (head!9037 (toList!2947 lm!1707)))))

(declare-fun bs!630373 () Bool)

(assert (= bs!630373 d!1286829))

(declare-fun m!4966989 () Bool)

(assert (=> bs!630373 m!4966989))

(assert (=> b!4354330 d!1286829))

(declare-fun bs!630374 () Bool)

(declare-fun d!1286831 () Bool)

(assert (= bs!630374 (and d!1286831 start!421178)))

(declare-fun lambda!140040 () Int)

(assert (=> bs!630374 (= lambda!140040 lambda!140016)))

(declare-fun bs!630375 () Bool)

(assert (= bs!630375 (and d!1286831 d!1286811)))

(assert (=> bs!630375 (not (= lambda!140040 lambda!140036))))

(declare-fun bs!630376 () Bool)

(assert (= bs!630376 (and d!1286831 d!1286823)))

(assert (=> bs!630376 (= lambda!140040 lambda!140039)))

(declare-fun lt!1567311 () ListMap!2191)

(assert (=> d!1286831 (invariantList!671 (toList!2948 lt!1567311))))

(declare-fun e!2709824 () ListMap!2191)

(assert (=> d!1286831 (= lt!1567311 e!2709824)))

(declare-fun c!740302 () Bool)

(assert (=> d!1286831 (= c!740302 (is-Cons!48912 (toList!2947 (+!621 lt!1567198 lt!1567192))))))

(assert (=> d!1286831 (forall!9105 (toList!2947 (+!621 lt!1567198 lt!1567192)) lambda!140040)))

(assert (=> d!1286831 (= (extractMap!541 (toList!2947 (+!621 lt!1567198 lt!1567192))) lt!1567311)))

(declare-fun b!4354505 () Bool)

(assert (=> b!4354505 (= e!2709824 (addToMapMapFromBucket!178 (_2!27444 (h!54457 (toList!2947 (+!621 lt!1567198 lt!1567192)))) (extractMap!541 (t!355956 (toList!2947 (+!621 lt!1567198 lt!1567192))))))))

(declare-fun b!4354506 () Bool)

(assert (=> b!4354506 (= e!2709824 (ListMap!2192 Nil!48911))))

(assert (= (and d!1286831 c!740302) b!4354505))

(assert (= (and d!1286831 (not c!740302)) b!4354506))

(declare-fun m!4966991 () Bool)

(assert (=> d!1286831 m!4966991))

(declare-fun m!4966993 () Bool)

(assert (=> d!1286831 m!4966993))

(declare-fun m!4966995 () Bool)

(assert (=> b!4354505 m!4966995))

(assert (=> b!4354505 m!4966995))

(declare-fun m!4966997 () Bool)

(assert (=> b!4354505 m!4966997))

(assert (=> b!4354339 d!1286831))

(declare-fun d!1286833 () Bool)

(assert (=> d!1286833 (= (apply!11334 lm!1707 (_1!27444 (h!54457 (toList!2947 lm!1707)))) (get!15885 (getValueByKey!440 (toList!2947 lm!1707) (_1!27444 (h!54457 (toList!2947 lm!1707))))))))

(declare-fun bs!630377 () Bool)

(assert (= bs!630377 d!1286833))

(declare-fun m!4966999 () Bool)

(assert (=> bs!630377 m!4966999))

(assert (=> bs!630377 m!4966999))

(declare-fun m!4967001 () Bool)

(assert (=> bs!630377 m!4967001))

(assert (=> b!4354339 d!1286833))

(declare-fun d!1286835 () Bool)

(declare-fun e!2709829 () Bool)

(assert (=> d!1286835 e!2709829))

(declare-fun res!1789449 () Bool)

(assert (=> d!1286835 (=> res!1789449 e!2709829)))

(declare-fun e!2709830 () Bool)

(assert (=> d!1286835 (= res!1789449 e!2709830)))

(declare-fun res!1789450 () Bool)

(assert (=> d!1286835 (=> (not res!1789450) (not e!2709830))))

(declare-fun lt!1567312 () Bool)

(assert (=> d!1286835 (= res!1789450 (not lt!1567312))))

(declare-fun lt!1567314 () Bool)

(assert (=> d!1286835 (= lt!1567312 lt!1567314)))

(declare-fun lt!1567313 () Unit!71379)

(declare-fun e!2709825 () Unit!71379)

(assert (=> d!1286835 (= lt!1567313 e!2709825)))

(declare-fun c!740304 () Bool)

(assert (=> d!1286835 (= c!740304 lt!1567314)))

(assert (=> d!1286835 (= lt!1567314 (containsKey!674 (toList!2948 lt!1567190) key!3918))))

(assert (=> d!1286835 (= (contains!11104 lt!1567190 key!3918) lt!1567312)))

(declare-fun b!4354507 () Bool)

(assert (=> b!4354507 (= e!2709830 (not (contains!11108 (keys!16515 lt!1567190) key!3918)))))

(declare-fun b!4354508 () Bool)

(assert (=> b!4354508 false))

(declare-fun lt!1567317 () Unit!71379)

(declare-fun lt!1567319 () Unit!71379)

(assert (=> b!4354508 (= lt!1567317 lt!1567319)))

(assert (=> b!4354508 (containsKey!674 (toList!2948 lt!1567190) key!3918)))

(assert (=> b!4354508 (= lt!1567319 (lemmaInGetKeysListThenContainsKey!117 (toList!2948 lt!1567190) key!3918))))

(declare-fun e!2709828 () Unit!71379)

(declare-fun Unit!71386 () Unit!71379)

(assert (=> b!4354508 (= e!2709828 Unit!71386)))

(declare-fun bm!302600 () Bool)

(declare-fun call!302605 () Bool)

(declare-fun e!2709827 () List!49039)

(assert (=> bm!302600 (= call!302605 (contains!11108 e!2709827 key!3918))))

(declare-fun c!740303 () Bool)

(assert (=> bm!302600 (= c!740303 c!740304)))

(declare-fun b!4354509 () Bool)

(assert (=> b!4354509 (= e!2709825 e!2709828)))

(declare-fun c!740305 () Bool)

(assert (=> b!4354509 (= c!740305 call!302605)))

(declare-fun b!4354510 () Bool)

(assert (=> b!4354510 (= e!2709827 (keys!16515 lt!1567190))))

(declare-fun b!4354511 () Bool)

(assert (=> b!4354511 (= e!2709827 (getKeysList!119 (toList!2948 lt!1567190)))))

(declare-fun b!4354512 () Bool)

(declare-fun e!2709826 () Bool)

(assert (=> b!4354512 (= e!2709826 (contains!11108 (keys!16515 lt!1567190) key!3918))))

(declare-fun b!4354513 () Bool)

(assert (=> b!4354513 (= e!2709829 e!2709826)))

(declare-fun res!1789451 () Bool)

(assert (=> b!4354513 (=> (not res!1789451) (not e!2709826))))

(assert (=> b!4354513 (= res!1789451 (isDefined!7749 (getValueByKey!441 (toList!2948 lt!1567190) key!3918)))))

(declare-fun b!4354514 () Bool)

(declare-fun Unit!71387 () Unit!71379)

(assert (=> b!4354514 (= e!2709828 Unit!71387)))

(declare-fun b!4354515 () Bool)

(declare-fun lt!1567318 () Unit!71379)

(assert (=> b!4354515 (= e!2709825 lt!1567318)))

(declare-fun lt!1567316 () Unit!71379)

(assert (=> b!4354515 (= lt!1567316 (lemmaContainsKeyImpliesGetValueByKeyDefined!352 (toList!2948 lt!1567190) key!3918))))

(assert (=> b!4354515 (isDefined!7749 (getValueByKey!441 (toList!2948 lt!1567190) key!3918))))

(declare-fun lt!1567315 () Unit!71379)

(assert (=> b!4354515 (= lt!1567315 lt!1567316)))

(assert (=> b!4354515 (= lt!1567318 (lemmaInListThenGetKeysListContains!116 (toList!2948 lt!1567190) key!3918))))

(assert (=> b!4354515 call!302605))

(assert (= (and d!1286835 c!740304) b!4354515))

(assert (= (and d!1286835 (not c!740304)) b!4354509))

(assert (= (and b!4354509 c!740305) b!4354508))

(assert (= (and b!4354509 (not c!740305)) b!4354514))

(assert (= (or b!4354515 b!4354509) bm!302600))

(assert (= (and bm!302600 c!740303) b!4354511))

(assert (= (and bm!302600 (not c!740303)) b!4354510))

(assert (= (and d!1286835 res!1789450) b!4354507))

(assert (= (and d!1286835 (not res!1789449)) b!4354513))

(assert (= (and b!4354513 res!1789451) b!4354512))

(declare-fun m!4967003 () Bool)

(assert (=> b!4354511 m!4967003))

(declare-fun m!4967005 () Bool)

(assert (=> b!4354510 m!4967005))

(declare-fun m!4967007 () Bool)

(assert (=> b!4354515 m!4967007))

(declare-fun m!4967009 () Bool)

(assert (=> b!4354515 m!4967009))

(assert (=> b!4354515 m!4967009))

(declare-fun m!4967011 () Bool)

(assert (=> b!4354515 m!4967011))

(declare-fun m!4967013 () Bool)

(assert (=> b!4354515 m!4967013))

(assert (=> b!4354507 m!4967005))

(assert (=> b!4354507 m!4967005))

(declare-fun m!4967015 () Bool)

(assert (=> b!4354507 m!4967015))

(declare-fun m!4967017 () Bool)

(assert (=> d!1286835 m!4967017))

(assert (=> b!4354508 m!4967017))

(declare-fun m!4967019 () Bool)

(assert (=> b!4354508 m!4967019))

(declare-fun m!4967021 () Bool)

(assert (=> bm!302600 m!4967021))

(assert (=> b!4354512 m!4967005))

(assert (=> b!4354512 m!4967005))

(assert (=> b!4354512 m!4967015))

(assert (=> b!4354513 m!4967009))

(assert (=> b!4354513 m!4967009))

(assert (=> b!4354513 m!4967011))

(assert (=> b!4354339 d!1286835))

(declare-fun d!1286837 () Bool)

(declare-fun res!1789452 () Bool)

(declare-fun e!2709831 () Bool)

(assert (=> d!1286837 (=> res!1789452 e!2709831)))

(assert (=> d!1286837 (= res!1789452 (and (is-Cons!48911 (apply!11334 lm!1707 (_1!27444 (h!54457 (toList!2947 lm!1707))))) (= (_1!27443 (h!54456 (apply!11334 lm!1707 (_1!27444 (h!54457 (toList!2947 lm!1707)))))) key!3918)))))

(assert (=> d!1286837 (= (containsKey!671 (apply!11334 lm!1707 (_1!27444 (h!54457 (toList!2947 lm!1707)))) key!3918) e!2709831)))

(declare-fun b!4354516 () Bool)

(declare-fun e!2709832 () Bool)

(assert (=> b!4354516 (= e!2709831 e!2709832)))

(declare-fun res!1789453 () Bool)

(assert (=> b!4354516 (=> (not res!1789453) (not e!2709832))))

(assert (=> b!4354516 (= res!1789453 (is-Cons!48911 (apply!11334 lm!1707 (_1!27444 (h!54457 (toList!2947 lm!1707))))))))

(declare-fun b!4354517 () Bool)

(assert (=> b!4354517 (= e!2709832 (containsKey!671 (t!355955 (apply!11334 lm!1707 (_1!27444 (h!54457 (toList!2947 lm!1707))))) key!3918))))

(assert (= (and d!1286837 (not res!1789452)) b!4354516))

(assert (= (and b!4354516 res!1789453) b!4354517))

(declare-fun m!4967023 () Bool)

(assert (=> b!4354517 m!4967023))

(assert (=> b!4354339 d!1286837))

(declare-fun bs!630379 () Bool)

(declare-fun d!1286839 () Bool)

(assert (= bs!630379 (and d!1286839 start!421178)))

(declare-fun lambda!140043 () Int)

(assert (=> bs!630379 (= lambda!140043 lambda!140016)))

(declare-fun bs!630380 () Bool)

(assert (= bs!630380 (and d!1286839 d!1286811)))

(assert (=> bs!630380 (not (= lambda!140043 lambda!140036))))

(declare-fun bs!630381 () Bool)

(assert (= bs!630381 (and d!1286839 d!1286823)))

(assert (=> bs!630381 (= lambda!140043 lambda!140039)))

(declare-fun bs!630382 () Bool)

(assert (= bs!630382 (and d!1286839 d!1286831)))

(assert (=> bs!630382 (= lambda!140043 lambda!140040)))

(assert (=> d!1286839 (eq!252 (extractMap!541 (toList!2947 (+!621 lt!1567198 (tuple2!48301 hash!377 newBucket!200)))) (+!622 (extractMap!541 (toList!2947 lt!1567198)) (tuple2!48299 key!3918 newValue!99)))))

(declare-fun lt!1567334 () Unit!71379)

(declare-fun choose!26850 (ListLongMap!1597 (_ BitVec 64) List!49035 K!10273 V!10519 Hashable!4874) Unit!71379)

(assert (=> d!1286839 (= lt!1567334 (choose!26850 lt!1567198 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1286839 (forall!9105 (toList!2947 lt!1567198) lambda!140043)))

(assert (=> d!1286839 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!86 lt!1567198 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1567334)))

(declare-fun bs!630383 () Bool)

(assert (= bs!630383 d!1286839))

(assert (=> bs!630383 m!4966755))

(declare-fun m!4967035 () Bool)

(assert (=> bs!630383 m!4967035))

(declare-fun m!4967037 () Bool)

(assert (=> bs!630383 m!4967037))

(declare-fun m!4967039 () Bool)

(assert (=> bs!630383 m!4967039))

(assert (=> bs!630383 m!4967035))

(assert (=> bs!630383 m!4966755))

(assert (=> bs!630383 m!4967037))

(declare-fun m!4967041 () Bool)

(assert (=> bs!630383 m!4967041))

(declare-fun m!4967043 () Bool)

(assert (=> bs!630383 m!4967043))

(declare-fun m!4967045 () Bool)

(assert (=> bs!630383 m!4967045))

(assert (=> b!4354339 d!1286839))

(declare-fun d!1286845 () Bool)

(declare-fun e!2709841 () Bool)

(assert (=> d!1286845 e!2709841))

(declare-fun res!1789462 () Bool)

(assert (=> d!1286845 (=> (not res!1789462) (not e!2709841))))

(declare-fun lt!1567345 () ListMap!2191)

(assert (=> d!1286845 (= res!1789462 (contains!11104 lt!1567345 (_1!27443 lt!1567199)))))

(declare-fun lt!1567343 () List!49035)

(assert (=> d!1286845 (= lt!1567345 (ListMap!2192 lt!1567343))))

(declare-fun lt!1567346 () Unit!71379)

(declare-fun lt!1567344 () Unit!71379)

(assert (=> d!1286845 (= lt!1567346 lt!1567344)))

(assert (=> d!1286845 (= (getValueByKey!441 lt!1567343 (_1!27443 lt!1567199)) (Some!10454 (_2!27443 lt!1567199)))))

(declare-fun lemmaContainsTupThenGetReturnValue!214 (List!49035 K!10273 V!10519) Unit!71379)

(assert (=> d!1286845 (= lt!1567344 (lemmaContainsTupThenGetReturnValue!214 lt!1567343 (_1!27443 lt!1567199) (_2!27443 lt!1567199)))))

(declare-fun insertNoDuplicatedKeys!95 (List!49035 K!10273 V!10519) List!49035)

(assert (=> d!1286845 (= lt!1567343 (insertNoDuplicatedKeys!95 (toList!2948 lt!1567197) (_1!27443 lt!1567199) (_2!27443 lt!1567199)))))

(assert (=> d!1286845 (= (+!622 lt!1567197 lt!1567199) lt!1567345)))

(declare-fun b!4354533 () Bool)

(declare-fun res!1789461 () Bool)

(assert (=> b!4354533 (=> (not res!1789461) (not e!2709841))))

(assert (=> b!4354533 (= res!1789461 (= (getValueByKey!441 (toList!2948 lt!1567345) (_1!27443 lt!1567199)) (Some!10454 (_2!27443 lt!1567199))))))

(declare-fun b!4354534 () Bool)

(declare-fun contains!11109 (List!49035 tuple2!48298) Bool)

(assert (=> b!4354534 (= e!2709841 (contains!11109 (toList!2948 lt!1567345) lt!1567199))))

(assert (= (and d!1286845 res!1789462) b!4354533))

(assert (= (and b!4354533 res!1789461) b!4354534))

(declare-fun m!4967053 () Bool)

(assert (=> d!1286845 m!4967053))

(declare-fun m!4967055 () Bool)

(assert (=> d!1286845 m!4967055))

(declare-fun m!4967057 () Bool)

(assert (=> d!1286845 m!4967057))

(declare-fun m!4967059 () Bool)

(assert (=> d!1286845 m!4967059))

(declare-fun m!4967061 () Bool)

(assert (=> b!4354533 m!4967061))

(declare-fun m!4967063 () Bool)

(assert (=> b!4354534 m!4967063))

(assert (=> b!4354339 d!1286845))

(declare-fun d!1286853 () Bool)

(declare-fun e!2709846 () Bool)

(assert (=> d!1286853 e!2709846))

(declare-fun res!1789463 () Bool)

(assert (=> d!1286853 (=> res!1789463 e!2709846)))

(declare-fun e!2709847 () Bool)

(assert (=> d!1286853 (= res!1789463 e!2709847)))

(declare-fun res!1789464 () Bool)

(assert (=> d!1286853 (=> (not res!1789464) (not e!2709847))))

(declare-fun lt!1567347 () Bool)

(assert (=> d!1286853 (= res!1789464 (not lt!1567347))))

(declare-fun lt!1567349 () Bool)

(assert (=> d!1286853 (= lt!1567347 lt!1567349)))

(declare-fun lt!1567348 () Unit!71379)

(declare-fun e!2709842 () Unit!71379)

(assert (=> d!1286853 (= lt!1567348 e!2709842)))

(declare-fun c!740310 () Bool)

(assert (=> d!1286853 (= c!740310 lt!1567349)))

(assert (=> d!1286853 (= lt!1567349 (containsKey!674 (toList!2948 lt!1567197) key!3918))))

(assert (=> d!1286853 (= (contains!11104 lt!1567197 key!3918) lt!1567347)))

(declare-fun b!4354535 () Bool)

(assert (=> b!4354535 (= e!2709847 (not (contains!11108 (keys!16515 lt!1567197) key!3918)))))

(declare-fun b!4354536 () Bool)

(assert (=> b!4354536 false))

(declare-fun lt!1567352 () Unit!71379)

(declare-fun lt!1567354 () Unit!71379)

(assert (=> b!4354536 (= lt!1567352 lt!1567354)))

(assert (=> b!4354536 (containsKey!674 (toList!2948 lt!1567197) key!3918)))

(assert (=> b!4354536 (= lt!1567354 (lemmaInGetKeysListThenContainsKey!117 (toList!2948 lt!1567197) key!3918))))

(declare-fun e!2709845 () Unit!71379)

(declare-fun Unit!71388 () Unit!71379)

(assert (=> b!4354536 (= e!2709845 Unit!71388)))

(declare-fun bm!302601 () Bool)

(declare-fun call!302606 () Bool)

(declare-fun e!2709844 () List!49039)

(assert (=> bm!302601 (= call!302606 (contains!11108 e!2709844 key!3918))))

(declare-fun c!740309 () Bool)

(assert (=> bm!302601 (= c!740309 c!740310)))

(declare-fun b!4354537 () Bool)

(assert (=> b!4354537 (= e!2709842 e!2709845)))

(declare-fun c!740311 () Bool)

(assert (=> b!4354537 (= c!740311 call!302606)))

(declare-fun b!4354538 () Bool)

(assert (=> b!4354538 (= e!2709844 (keys!16515 lt!1567197))))

(declare-fun b!4354539 () Bool)

(assert (=> b!4354539 (= e!2709844 (getKeysList!119 (toList!2948 lt!1567197)))))

(declare-fun b!4354540 () Bool)

(declare-fun e!2709843 () Bool)

(assert (=> b!4354540 (= e!2709843 (contains!11108 (keys!16515 lt!1567197) key!3918))))

(declare-fun b!4354541 () Bool)

(assert (=> b!4354541 (= e!2709846 e!2709843)))

(declare-fun res!1789465 () Bool)

(assert (=> b!4354541 (=> (not res!1789465) (not e!2709843))))

(assert (=> b!4354541 (= res!1789465 (isDefined!7749 (getValueByKey!441 (toList!2948 lt!1567197) key!3918)))))

(declare-fun b!4354542 () Bool)

(declare-fun Unit!71389 () Unit!71379)

(assert (=> b!4354542 (= e!2709845 Unit!71389)))

(declare-fun b!4354543 () Bool)

(declare-fun lt!1567353 () Unit!71379)

(assert (=> b!4354543 (= e!2709842 lt!1567353)))

(declare-fun lt!1567351 () Unit!71379)

(assert (=> b!4354543 (= lt!1567351 (lemmaContainsKeyImpliesGetValueByKeyDefined!352 (toList!2948 lt!1567197) key!3918))))

(assert (=> b!4354543 (isDefined!7749 (getValueByKey!441 (toList!2948 lt!1567197) key!3918))))

(declare-fun lt!1567350 () Unit!71379)

(assert (=> b!4354543 (= lt!1567350 lt!1567351)))

(assert (=> b!4354543 (= lt!1567353 (lemmaInListThenGetKeysListContains!116 (toList!2948 lt!1567197) key!3918))))

(assert (=> b!4354543 call!302606))

(assert (= (and d!1286853 c!740310) b!4354543))

(assert (= (and d!1286853 (not c!740310)) b!4354537))

(assert (= (and b!4354537 c!740311) b!4354536))

(assert (= (and b!4354537 (not c!740311)) b!4354542))

(assert (= (or b!4354543 b!4354537) bm!302601))

(assert (= (and bm!302601 c!740309) b!4354539))

(assert (= (and bm!302601 (not c!740309)) b!4354538))

(assert (= (and d!1286853 res!1789464) b!4354535))

(assert (= (and d!1286853 (not res!1789463)) b!4354541))

(assert (= (and b!4354541 res!1789465) b!4354540))

(declare-fun m!4967067 () Bool)

(assert (=> b!4354539 m!4967067))

(declare-fun m!4967069 () Bool)

(assert (=> b!4354538 m!4967069))

(declare-fun m!4967071 () Bool)

(assert (=> b!4354543 m!4967071))

(declare-fun m!4967073 () Bool)

(assert (=> b!4354543 m!4967073))

(assert (=> b!4354543 m!4967073))

(declare-fun m!4967075 () Bool)

(assert (=> b!4354543 m!4967075))

(declare-fun m!4967077 () Bool)

(assert (=> b!4354543 m!4967077))

(assert (=> b!4354535 m!4967069))

(assert (=> b!4354535 m!4967069))

(declare-fun m!4967079 () Bool)

(assert (=> b!4354535 m!4967079))

(declare-fun m!4967081 () Bool)

(assert (=> d!1286853 m!4967081))

(assert (=> b!4354536 m!4967081))

(declare-fun m!4967083 () Bool)

(assert (=> b!4354536 m!4967083))

(declare-fun m!4967085 () Bool)

(assert (=> bm!302601 m!4967085))

(assert (=> b!4354540 m!4967069))

(assert (=> b!4354540 m!4967069))

(assert (=> b!4354540 m!4967079))

(assert (=> b!4354541 m!4967073))

(assert (=> b!4354541 m!4967073))

(assert (=> b!4354541 m!4967075))

(assert (=> b!4354339 d!1286853))

(declare-fun d!1286857 () Bool)

(declare-fun tail!6985 (List!49036) List!49036)

(assert (=> d!1286857 (= (tail!6983 lm!1707) (ListLongMap!1598 (tail!6985 (toList!2947 lm!1707))))))

(declare-fun bs!630389 () Bool)

(assert (= bs!630389 d!1286857))

(declare-fun m!4967087 () Bool)

(assert (=> bs!630389 m!4967087))

(assert (=> b!4354339 d!1286857))

(declare-fun bs!630390 () Bool)

(declare-fun d!1286859 () Bool)

(assert (= bs!630390 (and d!1286859 d!1286811)))

(declare-fun lambda!140047 () Int)

(assert (=> bs!630390 (not (= lambda!140047 lambda!140036))))

(declare-fun bs!630391 () Bool)

(assert (= bs!630391 (and d!1286859 d!1286823)))

(assert (=> bs!630391 (= lambda!140047 lambda!140039)))

(declare-fun bs!630392 () Bool)

(assert (= bs!630392 (and d!1286859 d!1286839)))

(assert (=> bs!630392 (= lambda!140047 lambda!140043)))

(declare-fun bs!630393 () Bool)

(assert (= bs!630393 (and d!1286859 d!1286831)))

(assert (=> bs!630393 (= lambda!140047 lambda!140040)))

(declare-fun bs!630394 () Bool)

(assert (= bs!630394 (and d!1286859 start!421178)))

(assert (=> bs!630394 (= lambda!140047 lambda!140016)))

(declare-fun lt!1567355 () ListMap!2191)

(assert (=> d!1286859 (invariantList!671 (toList!2948 lt!1567355))))

(declare-fun e!2709848 () ListMap!2191)

(assert (=> d!1286859 (= lt!1567355 e!2709848)))

(declare-fun c!740312 () Bool)

(assert (=> d!1286859 (= c!740312 (is-Cons!48912 (t!355956 (toList!2947 lm!1707))))))

(assert (=> d!1286859 (forall!9105 (t!355956 (toList!2947 lm!1707)) lambda!140047)))

(assert (=> d!1286859 (= (extractMap!541 (t!355956 (toList!2947 lm!1707))) lt!1567355)))

(declare-fun b!4354544 () Bool)

(assert (=> b!4354544 (= e!2709848 (addToMapMapFromBucket!178 (_2!27444 (h!54457 (t!355956 (toList!2947 lm!1707)))) (extractMap!541 (t!355956 (t!355956 (toList!2947 lm!1707))))))))

(declare-fun b!4354545 () Bool)

(assert (=> b!4354545 (= e!2709848 (ListMap!2192 Nil!48911))))

(assert (= (and d!1286859 c!740312) b!4354544))

(assert (= (and d!1286859 (not c!740312)) b!4354545))

(declare-fun m!4967089 () Bool)

(assert (=> d!1286859 m!4967089))

(declare-fun m!4967091 () Bool)

(assert (=> d!1286859 m!4967091))

(declare-fun m!4967093 () Bool)

(assert (=> b!4354544 m!4967093))

(assert (=> b!4354544 m!4967093))

(declare-fun m!4967095 () Bool)

(assert (=> b!4354544 m!4967095))

(assert (=> b!4354339 d!1286859))

(declare-fun d!1286861 () Bool)

(assert (=> d!1286861 (contains!11104 lt!1567190 key!3918)))

(declare-fun lt!1567360 () Unit!71379)

(declare-fun choose!26851 (List!49035 K!10273 V!10519 ListMap!2191) Unit!71379)

(assert (=> d!1286861 (= lt!1567360 (choose!26851 (_2!27444 (h!54457 (toList!2947 lm!1707))) key!3918 newValue!99 lt!1567190))))

(assert (=> d!1286861 (noDuplicateKeys!482 (_2!27444 (h!54457 (toList!2947 lm!1707))))))

(assert (=> d!1286861 (= (lemmaAddToMapContainsAndNotInListThenInAcc!25 (_2!27444 (h!54457 (toList!2947 lm!1707))) key!3918 newValue!99 lt!1567190) lt!1567360)))

(declare-fun bs!630395 () Bool)

(assert (= bs!630395 d!1286861))

(assert (=> bs!630395 m!4966763))

(declare-fun m!4967097 () Bool)

(assert (=> bs!630395 m!4967097))

(assert (=> bs!630395 m!4966741))

(assert (=> b!4354339 d!1286861))

(declare-fun bs!630396 () Bool)

(declare-fun d!1286863 () Bool)

(assert (= bs!630396 (and d!1286863 d!1286811)))

(declare-fun lambda!140048 () Int)

(assert (=> bs!630396 (not (= lambda!140048 lambda!140036))))

(declare-fun bs!630397 () Bool)

(assert (= bs!630397 (and d!1286863 d!1286823)))

(assert (=> bs!630397 (= lambda!140048 lambda!140039)))

(declare-fun bs!630398 () Bool)

(assert (= bs!630398 (and d!1286863 d!1286839)))

(assert (=> bs!630398 (= lambda!140048 lambda!140043)))

(declare-fun bs!630399 () Bool)

(assert (= bs!630399 (and d!1286863 d!1286859)))

(assert (=> bs!630399 (= lambda!140048 lambda!140047)))

(declare-fun bs!630400 () Bool)

(assert (= bs!630400 (and d!1286863 d!1286831)))

(assert (=> bs!630400 (= lambda!140048 lambda!140040)))

(declare-fun bs!630401 () Bool)

(assert (= bs!630401 (and d!1286863 start!421178)))

(assert (=> bs!630401 (= lambda!140048 lambda!140016)))

(declare-fun lt!1567361 () ListMap!2191)

(assert (=> d!1286863 (invariantList!671 (toList!2948 lt!1567361))))

(declare-fun e!2709851 () ListMap!2191)

(assert (=> d!1286863 (= lt!1567361 e!2709851)))

(declare-fun c!740313 () Bool)

(assert (=> d!1286863 (= c!740313 (is-Cons!48912 (toList!2947 lt!1567198)))))

(assert (=> d!1286863 (forall!9105 (toList!2947 lt!1567198) lambda!140048)))

(assert (=> d!1286863 (= (extractMap!541 (toList!2947 lt!1567198)) lt!1567361)))

(declare-fun b!4354548 () Bool)

(assert (=> b!4354548 (= e!2709851 (addToMapMapFromBucket!178 (_2!27444 (h!54457 (toList!2947 lt!1567198))) (extractMap!541 (t!355956 (toList!2947 lt!1567198)))))))

(declare-fun b!4354549 () Bool)

(assert (=> b!4354549 (= e!2709851 (ListMap!2192 Nil!48911))))

(assert (= (and d!1286863 c!740313) b!4354548))

(assert (= (and d!1286863 (not c!740313)) b!4354549))

(declare-fun m!4967099 () Bool)

(assert (=> d!1286863 m!4967099))

(declare-fun m!4967101 () Bool)

(assert (=> d!1286863 m!4967101))

(declare-fun m!4967103 () Bool)

(assert (=> b!4354548 m!4967103))

(assert (=> b!4354548 m!4967103))

(declare-fun m!4967105 () Bool)

(assert (=> b!4354548 m!4967105))

(assert (=> b!4354339 d!1286863))

(declare-fun d!1286865 () Bool)

(declare-fun e!2709858 () Bool)

(assert (=> d!1286865 e!2709858))

(declare-fun res!1789477 () Bool)

(assert (=> d!1286865 (=> (not res!1789477) (not e!2709858))))

(declare-fun lt!1567376 () ListLongMap!1597)

(assert (=> d!1286865 (= res!1789477 (contains!11102 lt!1567376 (_1!27444 lt!1567192)))))

(declare-fun lt!1567375 () List!49036)

(assert (=> d!1286865 (= lt!1567376 (ListLongMap!1598 lt!1567375))))

(declare-fun lt!1567374 () Unit!71379)

(declare-fun lt!1567377 () Unit!71379)

(assert (=> d!1286865 (= lt!1567374 lt!1567377)))

(assert (=> d!1286865 (= (getValueByKey!440 lt!1567375 (_1!27444 lt!1567192)) (Some!10453 (_2!27444 lt!1567192)))))

(declare-fun lemmaContainsTupThenGetReturnValue!216 (List!49036 (_ BitVec 64) List!49035) Unit!71379)

(assert (=> d!1286865 (= lt!1567377 (lemmaContainsTupThenGetReturnValue!216 lt!1567375 (_1!27444 lt!1567192) (_2!27444 lt!1567192)))))

(declare-fun insertStrictlySorted!129 (List!49036 (_ BitVec 64) List!49035) List!49036)

(assert (=> d!1286865 (= lt!1567375 (insertStrictlySorted!129 (toList!2947 lt!1567198) (_1!27444 lt!1567192) (_2!27444 lt!1567192)))))

(assert (=> d!1286865 (= (+!621 lt!1567198 lt!1567192) lt!1567376)))

(declare-fun b!4354558 () Bool)

(declare-fun res!1789476 () Bool)

(assert (=> b!4354558 (=> (not res!1789476) (not e!2709858))))

(assert (=> b!4354558 (= res!1789476 (= (getValueByKey!440 (toList!2947 lt!1567376) (_1!27444 lt!1567192)) (Some!10453 (_2!27444 lt!1567192))))))

(declare-fun b!4354559 () Bool)

(assert (=> b!4354559 (= e!2709858 (contains!11103 (toList!2947 lt!1567376) lt!1567192))))

(assert (= (and d!1286865 res!1789477) b!4354558))

(assert (= (and b!4354558 res!1789476) b!4354559))

(declare-fun m!4967111 () Bool)

(assert (=> d!1286865 m!4967111))

(declare-fun m!4967113 () Bool)

(assert (=> d!1286865 m!4967113))

(declare-fun m!4967115 () Bool)

(assert (=> d!1286865 m!4967115))

(declare-fun m!4967117 () Bool)

(assert (=> d!1286865 m!4967117))

(declare-fun m!4967119 () Bool)

(assert (=> b!4354558 m!4967119))

(declare-fun m!4967121 () Bool)

(assert (=> b!4354559 m!4967121))

(assert (=> b!4354339 d!1286865))

(declare-fun bs!630402 () Bool)

(declare-fun d!1286869 () Bool)

(assert (= bs!630402 (and d!1286869 d!1286823)))

(declare-fun lambda!140051 () Int)

(assert (=> bs!630402 (= lambda!140051 lambda!140039)))

(declare-fun bs!630403 () Bool)

(assert (= bs!630403 (and d!1286869 d!1286839)))

(assert (=> bs!630403 (= lambda!140051 lambda!140043)))

(declare-fun bs!630404 () Bool)

(assert (= bs!630404 (and d!1286869 d!1286859)))

(assert (=> bs!630404 (= lambda!140051 lambda!140047)))

(declare-fun bs!630405 () Bool)

(assert (= bs!630405 (and d!1286869 d!1286831)))

(assert (=> bs!630405 (= lambda!140051 lambda!140040)))

(declare-fun bs!630406 () Bool)

(assert (= bs!630406 (and d!1286869 start!421178)))

(assert (=> bs!630406 (= lambda!140051 lambda!140016)))

(declare-fun bs!630407 () Bool)

(assert (= bs!630407 (and d!1286869 d!1286863)))

(assert (=> bs!630407 (= lambda!140051 lambda!140048)))

(declare-fun bs!630408 () Bool)

(assert (= bs!630408 (and d!1286869 d!1286811)))

(assert (=> bs!630408 (not (= lambda!140051 lambda!140036))))

(assert (=> d!1286869 (not (containsKey!671 (apply!11334 lm!1707 (_1!27444 (h!54457 (toList!2947 lm!1707)))) key!3918))))

(declare-fun lt!1567380 () Unit!71379)

(declare-fun choose!26853 (ListLongMap!1597 K!10273 (_ BitVec 64) Hashable!4874) Unit!71379)

(assert (=> d!1286869 (= lt!1567380 (choose!26853 lm!1707 key!3918 (_1!27444 (h!54457 (toList!2947 lm!1707))) hashF!1247))))

(assert (=> d!1286869 (forall!9105 (toList!2947 lm!1707) lambda!140051)))

(assert (=> d!1286869 (= (lemmaNotSameHashThenCannotContainKey!29 lm!1707 key!3918 (_1!27444 (h!54457 (toList!2947 lm!1707))) hashF!1247) lt!1567380)))

(declare-fun bs!630409 () Bool)

(assert (= bs!630409 d!1286869))

(assert (=> bs!630409 m!4966767))

(assert (=> bs!630409 m!4966767))

(assert (=> bs!630409 m!4966769))

(declare-fun m!4967127 () Bool)

(assert (=> bs!630409 m!4967127))

(declare-fun m!4967129 () Bool)

(assert (=> bs!630409 m!4967129))

(assert (=> b!4354339 d!1286869))

(declare-fun d!1286873 () Bool)

(declare-fun content!7705 (List!49035) (Set tuple2!48298))

(assert (=> d!1286873 (= (eq!252 (extractMap!541 (toList!2947 (+!621 lt!1567198 lt!1567192))) (+!622 lt!1567197 lt!1567199)) (= (content!7705 (toList!2948 (extractMap!541 (toList!2947 (+!621 lt!1567198 lt!1567192))))) (content!7705 (toList!2948 (+!622 lt!1567197 lt!1567199)))))))

(declare-fun bs!630410 () Bool)

(assert (= bs!630410 d!1286873))

(declare-fun m!4967131 () Bool)

(assert (=> bs!630410 m!4967131))

(declare-fun m!4967133 () Bool)

(assert (=> bs!630410 m!4967133))

(assert (=> b!4354339 d!1286873))

(declare-fun d!1286875 () Bool)

(declare-fun res!1789482 () Bool)

(declare-fun e!2709863 () Bool)

(assert (=> d!1286875 (=> res!1789482 e!2709863)))

(assert (=> d!1286875 (= res!1789482 (not (is-Cons!48911 (_2!27444 (h!54457 (toList!2947 lm!1707))))))))

(assert (=> d!1286875 (= (noDuplicateKeys!482 (_2!27444 (h!54457 (toList!2947 lm!1707)))) e!2709863)))

(declare-fun b!4354564 () Bool)

(declare-fun e!2709864 () Bool)

(assert (=> b!4354564 (= e!2709863 e!2709864)))

(declare-fun res!1789483 () Bool)

(assert (=> b!4354564 (=> (not res!1789483) (not e!2709864))))

(assert (=> b!4354564 (= res!1789483 (not (containsKey!671 (t!355955 (_2!27444 (h!54457 (toList!2947 lm!1707)))) (_1!27443 (h!54456 (_2!27444 (h!54457 (toList!2947 lm!1707))))))))))

(declare-fun b!4354565 () Bool)

(assert (=> b!4354565 (= e!2709864 (noDuplicateKeys!482 (t!355955 (_2!27444 (h!54457 (toList!2947 lm!1707))))))))

(assert (= (and d!1286875 (not res!1789482)) b!4354564))

(assert (= (and b!4354564 res!1789483) b!4354565))

(declare-fun m!4967135 () Bool)

(assert (=> b!4354564 m!4967135))

(declare-fun m!4967137 () Bool)

(assert (=> b!4354565 m!4967137))

(assert (=> b!4354339 d!1286875))

(assert (=> b!4354329 d!1286813))

(declare-fun d!1286877 () Bool)

(declare-fun e!2709865 () Bool)

(assert (=> d!1286877 e!2709865))

(declare-fun res!1789485 () Bool)

(assert (=> d!1286877 (=> (not res!1789485) (not e!2709865))))

(declare-fun lt!1567385 () ListLongMap!1597)

(assert (=> d!1286877 (= res!1789485 (contains!11102 lt!1567385 (_1!27444 lt!1567192)))))

(declare-fun lt!1567384 () List!49036)

(assert (=> d!1286877 (= lt!1567385 (ListLongMap!1598 lt!1567384))))

(declare-fun lt!1567383 () Unit!71379)

(declare-fun lt!1567386 () Unit!71379)

(assert (=> d!1286877 (= lt!1567383 lt!1567386)))

(assert (=> d!1286877 (= (getValueByKey!440 lt!1567384 (_1!27444 lt!1567192)) (Some!10453 (_2!27444 lt!1567192)))))

(assert (=> d!1286877 (= lt!1567386 (lemmaContainsTupThenGetReturnValue!216 lt!1567384 (_1!27444 lt!1567192) (_2!27444 lt!1567192)))))

(assert (=> d!1286877 (= lt!1567384 (insertStrictlySorted!129 (toList!2947 lm!1707) (_1!27444 lt!1567192) (_2!27444 lt!1567192)))))

(assert (=> d!1286877 (= (+!621 lm!1707 lt!1567192) lt!1567385)))

(declare-fun b!4354566 () Bool)

(declare-fun res!1789484 () Bool)

(assert (=> b!4354566 (=> (not res!1789484) (not e!2709865))))

(assert (=> b!4354566 (= res!1789484 (= (getValueByKey!440 (toList!2947 lt!1567385) (_1!27444 lt!1567192)) (Some!10453 (_2!27444 lt!1567192))))))

(declare-fun b!4354567 () Bool)

(assert (=> b!4354567 (= e!2709865 (contains!11103 (toList!2947 lt!1567385) lt!1567192))))

(assert (= (and d!1286877 res!1789485) b!4354566))

(assert (= (and b!4354566 res!1789484) b!4354567))

(declare-fun m!4967139 () Bool)

(assert (=> d!1286877 m!4967139))

(declare-fun m!4967141 () Bool)

(assert (=> d!1286877 m!4967141))

(declare-fun m!4967143 () Bool)

(assert (=> d!1286877 m!4967143))

(declare-fun m!4967145 () Bool)

(assert (=> d!1286877 m!4967145))

(declare-fun m!4967147 () Bool)

(assert (=> b!4354566 m!4967147))

(declare-fun m!4967149 () Bool)

(assert (=> b!4354567 m!4967149))

(assert (=> b!4354329 d!1286877))

(declare-fun d!1286879 () Bool)

(assert (=> d!1286879 (forall!9105 (toList!2947 (+!621 lm!1707 (tuple2!48301 hash!377 newBucket!200))) lambda!140016)))

(declare-fun lt!1567390 () Unit!71379)

(declare-fun choose!26855 (ListLongMap!1597 Int (_ BitVec 64) List!49035) Unit!71379)

(assert (=> d!1286879 (= lt!1567390 (choose!26855 lm!1707 lambda!140016 hash!377 newBucket!200))))

(declare-fun e!2709870 () Bool)

(assert (=> d!1286879 e!2709870))

(declare-fun res!1789490 () Bool)

(assert (=> d!1286879 (=> (not res!1789490) (not e!2709870))))

(assert (=> d!1286879 (= res!1789490 (forall!9105 (toList!2947 lm!1707) lambda!140016))))

(assert (=> d!1286879 (= (addValidProp!136 lm!1707 lambda!140016 hash!377 newBucket!200) lt!1567390)))

(declare-fun b!4354573 () Bool)

(assert (=> b!4354573 (= e!2709870 (dynLambda!20626 lambda!140016 (tuple2!48301 hash!377 newBucket!200)))))

(assert (= (and d!1286879 res!1789490) b!4354573))

(declare-fun b_lambda!130929 () Bool)

(assert (=> (not b_lambda!130929) (not b!4354573)))

(declare-fun m!4967157 () Bool)

(assert (=> d!1286879 m!4967157))

(declare-fun m!4967159 () Bool)

(assert (=> d!1286879 m!4967159))

(declare-fun m!4967161 () Bool)

(assert (=> d!1286879 m!4967161))

(assert (=> d!1286879 m!4966783))

(declare-fun m!4967163 () Bool)

(assert (=> b!4354573 m!4967163))

(assert (=> b!4354329 d!1286879))

(assert (=> b!4354329 d!1286805))

(declare-fun b!4354580 () Bool)

(declare-fun e!2709873 () Bool)

(declare-fun tp!1330039 () Bool)

(declare-fun tp!1330040 () Bool)

(assert (=> b!4354580 (= e!2709873 (and tp!1330039 tp!1330040))))

(assert (=> b!4354331 (= tp!1330027 e!2709873)))

(assert (= (and b!4354331 (is-Cons!48912 (toList!2947 lm!1707))) b!4354580))

(declare-fun tp!1330043 () Bool)

(declare-fun e!2709880 () Bool)

(declare-fun b!4354591 () Bool)

(assert (=> b!4354591 (= e!2709880 (and tp_is_empty!25165 tp_is_empty!25167 tp!1330043))))

(assert (=> b!4354341 (= tp!1330028 e!2709880)))

(assert (= (and b!4354341 (is-Cons!48911 (t!355955 newBucket!200))) b!4354591))

(declare-fun b_lambda!130931 () Bool)

(assert (= b_lambda!130919 (or start!421178 b_lambda!130931)))

(declare-fun bs!630411 () Bool)

(declare-fun d!1286883 () Bool)

(assert (= bs!630411 (and d!1286883 start!421178)))

(assert (=> bs!630411 (= (dynLambda!20626 lambda!140016 (h!54457 (toList!2947 lm!1707))) (noDuplicateKeys!482 (_2!27444 (h!54457 (toList!2947 lm!1707)))))))

(assert (=> bs!630411 m!4966741))

(assert (=> b!4354445 d!1286883))

(declare-fun b_lambda!130933 () Bool)

(assert (= b_lambda!130921 (or start!421178 b_lambda!130933)))

(declare-fun bs!630412 () Bool)

(declare-fun d!1286885 () Bool)

(assert (= bs!630412 (and d!1286885 start!421178)))

(assert (=> bs!630412 (= (dynLambda!20626 lambda!140016 (h!54457 (toList!2947 lt!1567200))) (noDuplicateKeys!482 (_2!27444 (h!54457 (toList!2947 lt!1567200)))))))

(declare-fun m!4967165 () Bool)

(assert (=> bs!630412 m!4967165))

(assert (=> b!4354449 d!1286885))

(declare-fun b_lambda!130935 () Bool)

(assert (= b_lambda!130915 (or start!421178 b_lambda!130935)))

(declare-fun bs!630413 () Bool)

(declare-fun d!1286887 () Bool)

(assert (= bs!630413 (and d!1286887 start!421178)))

(assert (=> bs!630413 (= (dynLambda!20626 lambda!140016 lt!1567201) (noDuplicateKeys!482 (_2!27444 lt!1567201)))))

(declare-fun m!4967167 () Bool)

(assert (=> bs!630413 m!4967167))

(assert (=> d!1286793 d!1286887))

(declare-fun b_lambda!130937 () Bool)

(assert (= b_lambda!130929 (or start!421178 b_lambda!130937)))

(declare-fun bs!630414 () Bool)

(declare-fun d!1286889 () Bool)

(assert (= bs!630414 (and d!1286889 start!421178)))

(assert (=> bs!630414 (= (dynLambda!20626 lambda!140016 (tuple2!48301 hash!377 newBucket!200)) (noDuplicateKeys!482 (_2!27444 (tuple2!48301 hash!377 newBucket!200))))))

(declare-fun m!4967169 () Bool)

(assert (=> bs!630414 m!4967169))

(assert (=> b!4354573 d!1286889))

(push 1)

(assert (not bm!302600))

(assert (not b!4354533))

(assert (not b!4354409))

(assert (not d!1286839))

(assert (not b!4354404))

(assert (not d!1286865))

(assert (not d!1286863))

(assert (not b!4354515))

(assert (not d!1286797))

(assert (not b!4354427))

(assert (not d!1286811))

(assert (not b!4354490))

(assert (not b!4354457))

(assert (not b!4354566))

(assert (not b!4354489))

(assert (not b!4354503))

(assert (not b!4354513))

(assert (not b!4354540))

(assert (not b!4354543))

(assert (not d!1286791))

(assert (not b!4354541))

(assert (not d!1286833))

(assert tp_is_empty!25165)

(assert (not d!1286817))

(assert (not d!1286835))

(assert (not b_lambda!130935))

(assert (not d!1286787))

(assert (not b!4354390))

(assert (not d!1286859))

(assert (not b_lambda!130937))

(assert (not d!1286853))

(assert (not b!4354544))

(assert (not bs!630412))

(assert (not b!4354580))

(assert (not b!4354438))

(assert (not b_lambda!130933))

(assert (not b!4354535))

(assert (not b!4354536))

(assert (not d!1286823))

(assert (not b!4354505))

(assert (not d!1286831))

(assert (not b!4354485))

(assert (not d!1286845))

(assert (not b!4354567))

(assert (not d!1286809))

(assert (not b!4354559))

(assert (not d!1286857))

(assert (not b!4354565))

(assert (not b!4354507))

(assert (not bm!302599))

(assert (not d!1286793))

(assert (not d!1286879))

(assert (not b!4354459))

(assert (not bs!630411))

(assert (not b!4354517))

(assert (not d!1286819))

(assert (not b!4354512))

(assert (not b!4354484))

(assert (not d!1286815))

(assert (not b_lambda!130931))

(assert (not b!4354487))

(assert (not b!4354511))

(assert (not b!4354492))

(assert (not d!1286877))

(assert (not b!4354508))

(assert (not d!1286799))

(assert (not d!1286869))

(assert (not d!1286829))

(assert (not bs!630413))

(assert (not b!4354534))

(assert (not d!1286785))

(assert (not d!1286861))

(assert (not d!1286873))

(assert (not bm!302601))

(assert (not b!4354510))

(assert (not b!4354564))

(assert (not b!4354412))

(assert (not b!4354558))

(assert (not b!4354488))

(assert (not b!4354548))

(assert (not b!4354538))

(assert (not b!4354446))

(assert tp_is_empty!25167)

(assert (not bs!630414))

(assert (not b!4354450))

(assert (not b!4354591))

(assert (not b!4354539))

(assert (not b!4354389))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

