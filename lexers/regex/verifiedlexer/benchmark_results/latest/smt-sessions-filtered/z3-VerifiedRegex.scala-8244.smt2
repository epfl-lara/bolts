; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!427504 () Bool)

(assert start!427504)

(declare-datatypes ((K!10625 0))(
  ( (K!10626 (val!16771 Int)) )
))
(declare-datatypes ((V!10871 0))(
  ( (V!10872 (val!16772 Int)) )
))
(declare-datatypes ((tuple2!48862 0))(
  ( (tuple2!48863 (_1!27725 K!10625) (_2!27725 V!10871)) )
))
(declare-datatypes ((List!49392 0))(
  ( (Nil!49268) (Cons!49268 (h!54891 tuple2!48862) (t!356326 List!49392)) )
))
(declare-fun lt!1604703 () List!49392)

(declare-fun lt!1604696 () tuple2!48862)

(declare-fun key!3918 () K!10625)

(declare-fun b!4399035 () Bool)

(declare-fun newBucket!200 () List!49392)

(declare-fun e!2739061 () Bool)

(declare-fun removePairForKey!591 (List!49392 K!10625) List!49392)

(assert (=> b!4399035 (= e!2739061 (= newBucket!200 (Cons!49268 lt!1604696 (removePairForKey!591 lt!1604703 key!3918))))))

(declare-datatypes ((Unit!78635 0))(
  ( (Unit!78636) )
))
(declare-fun lt!1604697 () Unit!78635)

(declare-fun lambda!148555 () Int)

(declare-datatypes ((tuple2!48864 0))(
  ( (tuple2!48865 (_1!27726 (_ BitVec 64)) (_2!27726 List!49392)) )
))
(declare-fun lt!1604700 () tuple2!48864)

(declare-datatypes ((List!49393 0))(
  ( (Nil!49269) (Cons!49269 (h!54892 tuple2!48864) (t!356327 List!49393)) )
))
(declare-datatypes ((ListLongMap!1879 0))(
  ( (ListLongMap!1880 (toList!3229 List!49393)) )
))
(declare-fun lt!1604708 () ListLongMap!1879)

(declare-fun forallContained!1991 (List!49393 Int tuple2!48864) Unit!78635)

(assert (=> b!4399035 (= lt!1604697 (forallContained!1991 (toList!3229 lt!1604708) lambda!148555 lt!1604700))))

(declare-fun contains!11653 (List!49393 tuple2!48864) Bool)

(assert (=> b!4399035 (contains!11653 (toList!3229 lt!1604708) lt!1604700)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4399035 (= lt!1604700 (tuple2!48865 hash!377 lt!1604703))))

(declare-fun lt!1604694 () Unit!78635)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!468 (List!49393 (_ BitVec 64) List!49392) Unit!78635)

(assert (=> b!4399035 (= lt!1604694 (lemmaGetValueByKeyImpliesContainsTuple!468 (toList!3229 lt!1604708) hash!377 lt!1604703))))

(declare-fun apply!11475 (ListLongMap!1879 (_ BitVec 64)) List!49392)

(assert (=> b!4399035 (= lt!1604703 (apply!11475 lt!1604708 hash!377))))

(declare-fun b!4399036 () Bool)

(declare-fun res!1814189 () Bool)

(assert (=> b!4399036 (=> res!1814189 e!2739061)))

(declare-fun contains!11654 (ListLongMap!1879 (_ BitVec 64)) Bool)

(assert (=> b!4399036 (= res!1814189 (not (contains!11654 lt!1604708 hash!377)))))

(declare-fun e!2739060 () Bool)

(declare-fun tp_is_empty!25731 () Bool)

(declare-fun tp_is_empty!25729 () Bool)

(declare-fun b!4399037 () Bool)

(declare-fun tp!1331762 () Bool)

(assert (=> b!4399037 (= e!2739060 (and tp_is_empty!25729 tp_is_empty!25731 tp!1331762))))

(declare-fun b!4399038 () Bool)

(declare-fun res!1814193 () Bool)

(declare-fun e!2739059 () Bool)

(assert (=> b!4399038 (=> res!1814193 e!2739059)))

(declare-fun noDuplicateKeys!623 (List!49392) Bool)

(assert (=> b!4399038 (= res!1814193 (not (noDuplicateKeys!623 newBucket!200)))))

(declare-fun b!4399039 () Bool)

(declare-fun res!1814187 () Bool)

(declare-fun e!2739066 () Bool)

(assert (=> b!4399039 (=> (not res!1814187) (not e!2739066))))

(declare-datatypes ((Hashable!5015 0))(
  ( (HashableExt!5014 (__x!30718 Int)) )
))
(declare-fun hashF!1247 () Hashable!5015)

(declare-fun allKeysSameHash!581 (List!49392 (_ BitVec 64) Hashable!5015) Bool)

(assert (=> b!4399039 (= res!1814187 (allKeysSameHash!581 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4399040 () Bool)

(assert (=> b!4399040 (= e!2739066 (not e!2739059))))

(declare-fun res!1814195 () Bool)

(assert (=> b!4399040 (=> res!1814195 e!2739059)))

(declare-fun lt!1604699 () List!49392)

(assert (=> b!4399040 (= res!1814195 (not (= newBucket!200 (Cons!49268 lt!1604696 (removePairForKey!591 lt!1604699 key!3918)))))))

(declare-fun newValue!99 () V!10871)

(assert (=> b!4399040 (= lt!1604696 (tuple2!48863 key!3918 newValue!99))))

(declare-fun lt!1604698 () tuple2!48864)

(declare-fun lm!1707 () ListLongMap!1879)

(declare-fun lt!1604695 () Unit!78635)

(assert (=> b!4399040 (= lt!1604695 (forallContained!1991 (toList!3229 lm!1707) lambda!148555 lt!1604698))))

(assert (=> b!4399040 (contains!11653 (toList!3229 lm!1707) lt!1604698)))

(assert (=> b!4399040 (= lt!1604698 (tuple2!48865 hash!377 lt!1604699))))

(declare-fun lt!1604707 () Unit!78635)

(assert (=> b!4399040 (= lt!1604707 (lemmaGetValueByKeyImpliesContainsTuple!468 (toList!3229 lm!1707) hash!377 lt!1604699))))

(assert (=> b!4399040 (= lt!1604699 (apply!11475 lm!1707 hash!377))))

(declare-fun res!1814194 () Bool)

(assert (=> start!427504 (=> (not res!1814194) (not e!2739066))))

(declare-fun forall!9356 (List!49393 Int) Bool)

(assert (=> start!427504 (= res!1814194 (forall!9356 (toList!3229 lm!1707) lambda!148555))))

(assert (=> start!427504 e!2739066))

(assert (=> start!427504 e!2739060))

(assert (=> start!427504 true))

(declare-fun e!2739064 () Bool)

(declare-fun inv!64811 (ListLongMap!1879) Bool)

(assert (=> start!427504 (and (inv!64811 lm!1707) e!2739064)))

(assert (=> start!427504 tp_is_empty!25729))

(assert (=> start!427504 tp_is_empty!25731))

(declare-fun b!4399041 () Bool)

(declare-fun e!2739062 () Bool)

(declare-fun containsKey!925 (List!49392 K!10625) Bool)

(assert (=> b!4399041 (= e!2739062 (not (containsKey!925 (_2!27726 (h!54892 (toList!3229 lm!1707))) key!3918)))))

(declare-fun b!4399042 () Bool)

(declare-fun res!1814192 () Bool)

(assert (=> b!4399042 (=> (not res!1814192) (not e!2739066))))

(declare-fun hash!1857 (Hashable!5015 K!10625) (_ BitVec 64))

(assert (=> b!4399042 (= res!1814192 (= (hash!1857 hashF!1247 key!3918) hash!377))))

(declare-fun b!4399043 () Bool)

(declare-fun e!2739063 () Bool)

(assert (=> b!4399043 (= e!2739063 e!2739061)))

(declare-fun res!1814196 () Bool)

(assert (=> b!4399043 (=> res!1814196 e!2739061)))

(assert (=> b!4399043 (= res!1814196 (not (forall!9356 (toList!3229 lt!1604708) lambda!148555)))))

(declare-datatypes ((ListMap!2473 0))(
  ( (ListMap!2474 (toList!3230 List!49392)) )
))
(declare-fun contains!11655 (ListMap!2473 K!10625) Bool)

(declare-fun extractMap!682 (List!49393) ListMap!2473)

(assert (=> b!4399043 (contains!11655 (extractMap!682 (toList!3229 lt!1604708)) key!3918)))

(declare-fun tail!7107 (ListLongMap!1879) ListLongMap!1879)

(assert (=> b!4399043 (= lt!1604708 (tail!7107 lm!1707))))

(declare-fun lt!1604701 () ListMap!2473)

(assert (=> b!4399043 (contains!11655 lt!1604701 key!3918)))

(declare-fun lt!1604704 () Unit!78635)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!82 (List!49392 K!10625 V!10871 ListMap!2473) Unit!78635)

(assert (=> b!4399043 (= lt!1604704 (lemmaAddToMapContainsAndNotInListThenInAcc!82 (_2!27726 (h!54892 (toList!3229 lm!1707))) key!3918 newValue!99 lt!1604701))))

(assert (=> b!4399043 (= lt!1604701 (extractMap!682 (t!356327 (toList!3229 lm!1707))))))

(assert (=> b!4399043 e!2739062))

(declare-fun res!1814188 () Bool)

(assert (=> b!4399043 (=> (not res!1814188) (not e!2739062))))

(assert (=> b!4399043 (= res!1814188 (not (containsKey!925 (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707)))) key!3918)))))

(declare-fun lt!1604706 () Unit!78635)

(declare-fun lemmaNotSameHashThenCannotContainKey!94 (ListLongMap!1879 K!10625 (_ BitVec 64) Hashable!5015) Unit!78635)

(assert (=> b!4399043 (= lt!1604706 (lemmaNotSameHashThenCannotContainKey!94 lm!1707 key!3918 (_1!27726 (h!54892 (toList!3229 lm!1707))) hashF!1247))))

(declare-fun b!4399044 () Bool)

(declare-fun e!2739065 () Bool)

(declare-fun lt!1604702 () ListLongMap!1879)

(assert (=> b!4399044 (= e!2739065 (forall!9356 (toList!3229 lt!1604702) lambda!148555))))

(declare-fun b!4399045 () Bool)

(assert (=> b!4399045 (= e!2739059 e!2739063)))

(declare-fun res!1814184 () Bool)

(assert (=> b!4399045 (=> res!1814184 e!2739063)))

(get-info :version)

(assert (=> b!4399045 (= res!1814184 (or (and ((_ is Cons!49269) (toList!3229 lm!1707)) (= (_1!27726 (h!54892 (toList!3229 lm!1707))) hash!377)) (not ((_ is Cons!49269) (toList!3229 lm!1707))) (= (_1!27726 (h!54892 (toList!3229 lm!1707))) hash!377)))))

(assert (=> b!4399045 e!2739065))

(declare-fun res!1814186 () Bool)

(assert (=> b!4399045 (=> (not res!1814186) (not e!2739065))))

(assert (=> b!4399045 (= res!1814186 (forall!9356 (toList!3229 lt!1604702) lambda!148555))))

(declare-fun +!862 (ListLongMap!1879 tuple2!48864) ListLongMap!1879)

(assert (=> b!4399045 (= lt!1604702 (+!862 lm!1707 (tuple2!48865 hash!377 newBucket!200)))))

(declare-fun lt!1604705 () Unit!78635)

(declare-fun addValidProp!269 (ListLongMap!1879 Int (_ BitVec 64) List!49392) Unit!78635)

(assert (=> b!4399045 (= lt!1604705 (addValidProp!269 lm!1707 lambda!148555 hash!377 newBucket!200))))

(assert (=> b!4399045 (forall!9356 (toList!3229 lm!1707) lambda!148555)))

(declare-fun b!4399046 () Bool)

(declare-fun res!1814185 () Bool)

(assert (=> b!4399046 (=> (not res!1814185) (not e!2739066))))

(assert (=> b!4399046 (= res!1814185 (contains!11655 (extractMap!682 (toList!3229 lm!1707)) key!3918))))

(declare-fun b!4399047 () Bool)

(declare-fun res!1814191 () Bool)

(assert (=> b!4399047 (=> (not res!1814191) (not e!2739066))))

(assert (=> b!4399047 (= res!1814191 (contains!11654 lm!1707 hash!377))))

(declare-fun b!4399048 () Bool)

(declare-fun res!1814190 () Bool)

(assert (=> b!4399048 (=> res!1814190 e!2739061)))

(declare-fun allKeysSameHashInMap!727 (ListLongMap!1879 Hashable!5015) Bool)

(assert (=> b!4399048 (= res!1814190 (not (allKeysSameHashInMap!727 lt!1604708 hashF!1247)))))

(declare-fun b!4399049 () Bool)

(declare-fun res!1814197 () Bool)

(assert (=> b!4399049 (=> (not res!1814197) (not e!2739066))))

(assert (=> b!4399049 (= res!1814197 (allKeysSameHashInMap!727 lm!1707 hashF!1247))))

(declare-fun b!4399050 () Bool)

(declare-fun tp!1331761 () Bool)

(assert (=> b!4399050 (= e!2739064 tp!1331761)))

(assert (= (and start!427504 res!1814194) b!4399049))

(assert (= (and b!4399049 res!1814197) b!4399042))

(assert (= (and b!4399042 res!1814192) b!4399039))

(assert (= (and b!4399039 res!1814187) b!4399046))

(assert (= (and b!4399046 res!1814185) b!4399047))

(assert (= (and b!4399047 res!1814191) b!4399040))

(assert (= (and b!4399040 (not res!1814195)) b!4399038))

(assert (= (and b!4399038 (not res!1814193)) b!4399045))

(assert (= (and b!4399045 res!1814186) b!4399044))

(assert (= (and b!4399045 (not res!1814184)) b!4399043))

(assert (= (and b!4399043 res!1814188) b!4399041))

(assert (= (and b!4399043 (not res!1814196)) b!4399048))

(assert (= (and b!4399048 (not res!1814190)) b!4399036))

(assert (= (and b!4399036 (not res!1814189)) b!4399035))

(assert (= (and start!427504 ((_ is Cons!49268) newBucket!200)) b!4399037))

(assert (= start!427504 b!4399050))

(declare-fun m!5060949 () Bool)

(assert (=> b!4399042 m!5060949))

(declare-fun m!5060951 () Bool)

(assert (=> b!4399049 m!5060951))

(declare-fun m!5060953 () Bool)

(assert (=> b!4399043 m!5060953))

(declare-fun m!5060955 () Bool)

(assert (=> b!4399043 m!5060955))

(declare-fun m!5060957 () Bool)

(assert (=> b!4399043 m!5060957))

(declare-fun m!5060959 () Bool)

(assert (=> b!4399043 m!5060959))

(declare-fun m!5060961 () Bool)

(assert (=> b!4399043 m!5060961))

(declare-fun m!5060963 () Bool)

(assert (=> b!4399043 m!5060963))

(declare-fun m!5060965 () Bool)

(assert (=> b!4399043 m!5060965))

(declare-fun m!5060967 () Bool)

(assert (=> b!4399043 m!5060967))

(assert (=> b!4399043 m!5060967))

(declare-fun m!5060969 () Bool)

(assert (=> b!4399043 m!5060969))

(declare-fun m!5060971 () Bool)

(assert (=> b!4399043 m!5060971))

(assert (=> b!4399043 m!5060961))

(declare-fun m!5060973 () Bool)

(assert (=> b!4399045 m!5060973))

(declare-fun m!5060975 () Bool)

(assert (=> b!4399045 m!5060975))

(declare-fun m!5060977 () Bool)

(assert (=> b!4399045 m!5060977))

(declare-fun m!5060979 () Bool)

(assert (=> b!4399045 m!5060979))

(declare-fun m!5060981 () Bool)

(assert (=> b!4399035 m!5060981))

(declare-fun m!5060983 () Bool)

(assert (=> b!4399035 m!5060983))

(declare-fun m!5060985 () Bool)

(assert (=> b!4399035 m!5060985))

(declare-fun m!5060987 () Bool)

(assert (=> b!4399035 m!5060987))

(declare-fun m!5060989 () Bool)

(assert (=> b!4399035 m!5060989))

(declare-fun m!5060991 () Bool)

(assert (=> b!4399047 m!5060991))

(assert (=> start!427504 m!5060979))

(declare-fun m!5060993 () Bool)

(assert (=> start!427504 m!5060993))

(declare-fun m!5060995 () Bool)

(assert (=> b!4399038 m!5060995))

(declare-fun m!5060997 () Bool)

(assert (=> b!4399036 m!5060997))

(declare-fun m!5060999 () Bool)

(assert (=> b!4399041 m!5060999))

(declare-fun m!5061001 () Bool)

(assert (=> b!4399039 m!5061001))

(assert (=> b!4399044 m!5060973))

(declare-fun m!5061003 () Bool)

(assert (=> b!4399046 m!5061003))

(assert (=> b!4399046 m!5061003))

(declare-fun m!5061005 () Bool)

(assert (=> b!4399046 m!5061005))

(declare-fun m!5061007 () Bool)

(assert (=> b!4399040 m!5061007))

(declare-fun m!5061009 () Bool)

(assert (=> b!4399040 m!5061009))

(declare-fun m!5061011 () Bool)

(assert (=> b!4399040 m!5061011))

(declare-fun m!5061013 () Bool)

(assert (=> b!4399040 m!5061013))

(declare-fun m!5061015 () Bool)

(assert (=> b!4399040 m!5061015))

(declare-fun m!5061017 () Bool)

(assert (=> b!4399048 m!5061017))

(check-sat (not b!4399040) (not b!4399050) tp_is_empty!25729 (not b!4399042) (not b!4399037) (not b!4399045) (not b!4399047) (not b!4399038) (not b!4399041) (not b!4399035) tp_is_empty!25731 (not b!4399039) (not start!427504) (not b!4399043) (not b!4399048) (not b!4399036) (not b!4399046) (not b!4399044) (not b!4399049))
(check-sat)
(get-model)

(declare-fun d!1326033 () Bool)

(declare-fun res!1814202 () Bool)

(declare-fun e!2739071 () Bool)

(assert (=> d!1326033 (=> res!1814202 e!2739071)))

(assert (=> d!1326033 (= res!1814202 ((_ is Nil!49269) (toList!3229 lt!1604702)))))

(assert (=> d!1326033 (= (forall!9356 (toList!3229 lt!1604702) lambda!148555) e!2739071)))

(declare-fun b!4399057 () Bool)

(declare-fun e!2739072 () Bool)

(assert (=> b!4399057 (= e!2739071 e!2739072)))

(declare-fun res!1814203 () Bool)

(assert (=> b!4399057 (=> (not res!1814203) (not e!2739072))))

(declare-fun dynLambda!20758 (Int tuple2!48864) Bool)

(assert (=> b!4399057 (= res!1814203 (dynLambda!20758 lambda!148555 (h!54892 (toList!3229 lt!1604702))))))

(declare-fun b!4399058 () Bool)

(assert (=> b!4399058 (= e!2739072 (forall!9356 (t!356327 (toList!3229 lt!1604702)) lambda!148555))))

(assert (= (and d!1326033 (not res!1814202)) b!4399057))

(assert (= (and b!4399057 res!1814203) b!4399058))

(declare-fun b_lambda!139553 () Bool)

(assert (=> (not b_lambda!139553) (not b!4399057)))

(declare-fun m!5061021 () Bool)

(assert (=> b!4399057 m!5061021))

(declare-fun m!5061023 () Bool)

(assert (=> b!4399058 m!5061023))

(assert (=> b!4399045 d!1326033))

(declare-fun d!1326037 () Bool)

(declare-fun e!2739093 () Bool)

(assert (=> d!1326037 e!2739093))

(declare-fun res!1814221 () Bool)

(assert (=> d!1326037 (=> (not res!1814221) (not e!2739093))))

(declare-fun lt!1604729 () ListLongMap!1879)

(assert (=> d!1326037 (= res!1814221 (contains!11654 lt!1604729 (_1!27726 (tuple2!48865 hash!377 newBucket!200))))))

(declare-fun lt!1604731 () List!49393)

(assert (=> d!1326037 (= lt!1604729 (ListLongMap!1880 lt!1604731))))

(declare-fun lt!1604730 () Unit!78635)

(declare-fun lt!1604732 () Unit!78635)

(assert (=> d!1326037 (= lt!1604730 lt!1604732)))

(declare-datatypes ((Option!10608 0))(
  ( (None!10607) (Some!10607 (v!43701 List!49392)) )
))
(declare-fun getValueByKey!594 (List!49393 (_ BitVec 64)) Option!10608)

(assert (=> d!1326037 (= (getValueByKey!594 lt!1604731 (_1!27726 (tuple2!48865 hash!377 newBucket!200))) (Some!10607 (_2!27726 (tuple2!48865 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!343 (List!49393 (_ BitVec 64) List!49392) Unit!78635)

(assert (=> d!1326037 (= lt!1604732 (lemmaContainsTupThenGetReturnValue!343 lt!1604731 (_1!27726 (tuple2!48865 hash!377 newBucket!200)) (_2!27726 (tuple2!48865 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!202 (List!49393 (_ BitVec 64) List!49392) List!49393)

(assert (=> d!1326037 (= lt!1604731 (insertStrictlySorted!202 (toList!3229 lm!1707) (_1!27726 (tuple2!48865 hash!377 newBucket!200)) (_2!27726 (tuple2!48865 hash!377 newBucket!200))))))

(assert (=> d!1326037 (= (+!862 lm!1707 (tuple2!48865 hash!377 newBucket!200)) lt!1604729)))

(declare-fun b!4399091 () Bool)

(declare-fun res!1814220 () Bool)

(assert (=> b!4399091 (=> (not res!1814220) (not e!2739093))))

(assert (=> b!4399091 (= res!1814220 (= (getValueByKey!594 (toList!3229 lt!1604729) (_1!27726 (tuple2!48865 hash!377 newBucket!200))) (Some!10607 (_2!27726 (tuple2!48865 hash!377 newBucket!200)))))))

(declare-fun b!4399092 () Bool)

(assert (=> b!4399092 (= e!2739093 (contains!11653 (toList!3229 lt!1604729) (tuple2!48865 hash!377 newBucket!200)))))

(assert (= (and d!1326037 res!1814221) b!4399091))

(assert (= (and b!4399091 res!1814220) b!4399092))

(declare-fun m!5061057 () Bool)

(assert (=> d!1326037 m!5061057))

(declare-fun m!5061059 () Bool)

(assert (=> d!1326037 m!5061059))

(declare-fun m!5061061 () Bool)

(assert (=> d!1326037 m!5061061))

(declare-fun m!5061065 () Bool)

(assert (=> d!1326037 m!5061065))

(declare-fun m!5061069 () Bool)

(assert (=> b!4399091 m!5061069))

(declare-fun m!5061071 () Bool)

(assert (=> b!4399092 m!5061071))

(assert (=> b!4399045 d!1326037))

(declare-fun d!1326057 () Bool)

(assert (=> d!1326057 (forall!9356 (toList!3229 (+!862 lm!1707 (tuple2!48865 hash!377 newBucket!200))) lambda!148555)))

(declare-fun lt!1604747 () Unit!78635)

(declare-fun choose!27559 (ListLongMap!1879 Int (_ BitVec 64) List!49392) Unit!78635)

(assert (=> d!1326057 (= lt!1604747 (choose!27559 lm!1707 lambda!148555 hash!377 newBucket!200))))

(declare-fun e!2739111 () Bool)

(assert (=> d!1326057 e!2739111))

(declare-fun res!1814242 () Bool)

(assert (=> d!1326057 (=> (not res!1814242) (not e!2739111))))

(assert (=> d!1326057 (= res!1814242 (forall!9356 (toList!3229 lm!1707) lambda!148555))))

(assert (=> d!1326057 (= (addValidProp!269 lm!1707 lambda!148555 hash!377 newBucket!200) lt!1604747)))

(declare-fun b!4399114 () Bool)

(assert (=> b!4399114 (= e!2739111 (dynLambda!20758 lambda!148555 (tuple2!48865 hash!377 newBucket!200)))))

(assert (= (and d!1326057 res!1814242) b!4399114))

(declare-fun b_lambda!139559 () Bool)

(assert (=> (not b_lambda!139559) (not b!4399114)))

(assert (=> d!1326057 m!5060975))

(declare-fun m!5061089 () Bool)

(assert (=> d!1326057 m!5061089))

(declare-fun m!5061091 () Bool)

(assert (=> d!1326057 m!5061091))

(assert (=> d!1326057 m!5060979))

(declare-fun m!5061093 () Bool)

(assert (=> b!4399114 m!5061093))

(assert (=> b!4399045 d!1326057))

(declare-fun d!1326063 () Bool)

(declare-fun res!1814246 () Bool)

(declare-fun e!2739115 () Bool)

(assert (=> d!1326063 (=> res!1814246 e!2739115)))

(assert (=> d!1326063 (= res!1814246 ((_ is Nil!49269) (toList!3229 lm!1707)))))

(assert (=> d!1326063 (= (forall!9356 (toList!3229 lm!1707) lambda!148555) e!2739115)))

(declare-fun b!4399119 () Bool)

(declare-fun e!2739116 () Bool)

(assert (=> b!4399119 (= e!2739115 e!2739116)))

(declare-fun res!1814247 () Bool)

(assert (=> b!4399119 (=> (not res!1814247) (not e!2739116))))

(assert (=> b!4399119 (= res!1814247 (dynLambda!20758 lambda!148555 (h!54892 (toList!3229 lm!1707))))))

(declare-fun b!4399120 () Bool)

(assert (=> b!4399120 (= e!2739116 (forall!9356 (t!356327 (toList!3229 lm!1707)) lambda!148555))))

(assert (= (and d!1326063 (not res!1814246)) b!4399119))

(assert (= (and b!4399119 res!1814247) b!4399120))

(declare-fun b_lambda!139563 () Bool)

(assert (=> (not b_lambda!139563) (not b!4399119)))

(declare-fun m!5061101 () Bool)

(assert (=> b!4399119 m!5061101))

(declare-fun m!5061103 () Bool)

(assert (=> b!4399120 m!5061103))

(assert (=> b!4399045 d!1326063))

(declare-fun d!1326067 () Bool)

(declare-fun lt!1604753 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7864 (List!49393) (InoxSet tuple2!48864))

(assert (=> d!1326067 (= lt!1604753 (select (content!7864 (toList!3229 lt!1604708)) lt!1604700))))

(declare-fun e!2739123 () Bool)

(assert (=> d!1326067 (= lt!1604753 e!2739123)))

(declare-fun res!1814254 () Bool)

(assert (=> d!1326067 (=> (not res!1814254) (not e!2739123))))

(assert (=> d!1326067 (= res!1814254 ((_ is Cons!49269) (toList!3229 lt!1604708)))))

(assert (=> d!1326067 (= (contains!11653 (toList!3229 lt!1604708) lt!1604700) lt!1604753)))

(declare-fun b!4399127 () Bool)

(declare-fun e!2739124 () Bool)

(assert (=> b!4399127 (= e!2739123 e!2739124)))

(declare-fun res!1814255 () Bool)

(assert (=> b!4399127 (=> res!1814255 e!2739124)))

(assert (=> b!4399127 (= res!1814255 (= (h!54892 (toList!3229 lt!1604708)) lt!1604700))))

(declare-fun b!4399128 () Bool)

(assert (=> b!4399128 (= e!2739124 (contains!11653 (t!356327 (toList!3229 lt!1604708)) lt!1604700))))

(assert (= (and d!1326067 res!1814254) b!4399127))

(assert (= (and b!4399127 (not res!1814255)) b!4399128))

(declare-fun m!5061109 () Bool)

(assert (=> d!1326067 m!5061109))

(declare-fun m!5061111 () Bool)

(assert (=> d!1326067 m!5061111))

(declare-fun m!5061113 () Bool)

(assert (=> b!4399128 m!5061113))

(assert (=> b!4399035 d!1326067))

(declare-fun d!1326071 () Bool)

(assert (=> d!1326071 (dynLambda!20758 lambda!148555 lt!1604700)))

(declare-fun lt!1604772 () Unit!78635)

(declare-fun choose!27560 (List!49393 Int tuple2!48864) Unit!78635)

(assert (=> d!1326071 (= lt!1604772 (choose!27560 (toList!3229 lt!1604708) lambda!148555 lt!1604700))))

(declare-fun e!2739131 () Bool)

(assert (=> d!1326071 e!2739131))

(declare-fun res!1814258 () Bool)

(assert (=> d!1326071 (=> (not res!1814258) (not e!2739131))))

(assert (=> d!1326071 (= res!1814258 (forall!9356 (toList!3229 lt!1604708) lambda!148555))))

(assert (=> d!1326071 (= (forallContained!1991 (toList!3229 lt!1604708) lambda!148555 lt!1604700) lt!1604772)))

(declare-fun b!4399139 () Bool)

(assert (=> b!4399139 (= e!2739131 (contains!11653 (toList!3229 lt!1604708) lt!1604700))))

(assert (= (and d!1326071 res!1814258) b!4399139))

(declare-fun b_lambda!139567 () Bool)

(assert (=> (not b_lambda!139567) (not d!1326071)))

(declare-fun m!5061115 () Bool)

(assert (=> d!1326071 m!5061115))

(declare-fun m!5061117 () Bool)

(assert (=> d!1326071 m!5061117))

(assert (=> d!1326071 m!5060971))

(assert (=> b!4399139 m!5060985))

(assert (=> b!4399035 d!1326071))

(declare-fun d!1326073 () Bool)

(assert (=> d!1326073 (contains!11653 (toList!3229 lt!1604708) (tuple2!48865 hash!377 lt!1604703))))

(declare-fun lt!1604783 () Unit!78635)

(declare-fun choose!27561 (List!49393 (_ BitVec 64) List!49392) Unit!78635)

(assert (=> d!1326073 (= lt!1604783 (choose!27561 (toList!3229 lt!1604708) hash!377 lt!1604703))))

(declare-fun e!2739148 () Bool)

(assert (=> d!1326073 e!2739148))

(declare-fun res!1814270 () Bool)

(assert (=> d!1326073 (=> (not res!1814270) (not e!2739148))))

(declare-fun isStrictlySorted!174 (List!49393) Bool)

(assert (=> d!1326073 (= res!1814270 (isStrictlySorted!174 (toList!3229 lt!1604708)))))

(assert (=> d!1326073 (= (lemmaGetValueByKeyImpliesContainsTuple!468 (toList!3229 lt!1604708) hash!377 lt!1604703) lt!1604783)))

(declare-fun b!4399161 () Bool)

(assert (=> b!4399161 (= e!2739148 (= (getValueByKey!594 (toList!3229 lt!1604708) hash!377) (Some!10607 lt!1604703)))))

(assert (= (and d!1326073 res!1814270) b!4399161))

(declare-fun m!5061139 () Bool)

(assert (=> d!1326073 m!5061139))

(declare-fun m!5061141 () Bool)

(assert (=> d!1326073 m!5061141))

(declare-fun m!5061143 () Bool)

(assert (=> d!1326073 m!5061143))

(declare-fun m!5061145 () Bool)

(assert (=> b!4399161 m!5061145))

(assert (=> b!4399035 d!1326073))

(declare-fun d!1326077 () Bool)

(declare-fun get!16038 (Option!10608) List!49392)

(assert (=> d!1326077 (= (apply!11475 lt!1604708 hash!377) (get!16038 (getValueByKey!594 (toList!3229 lt!1604708) hash!377)))))

(declare-fun bs!727761 () Bool)

(assert (= bs!727761 d!1326077))

(assert (=> bs!727761 m!5061145))

(assert (=> bs!727761 m!5061145))

(declare-fun m!5061147 () Bool)

(assert (=> bs!727761 m!5061147))

(assert (=> b!4399035 d!1326077))

(declare-fun b!4399176 () Bool)

(declare-fun e!2739156 () List!49392)

(assert (=> b!4399176 (= e!2739156 (t!356326 lt!1604703))))

(declare-fun b!4399179 () Bool)

(declare-fun e!2739157 () List!49392)

(assert (=> b!4399179 (= e!2739157 Nil!49268)))

(declare-fun d!1326079 () Bool)

(declare-fun lt!1604789 () List!49392)

(assert (=> d!1326079 (not (containsKey!925 lt!1604789 key!3918))))

(assert (=> d!1326079 (= lt!1604789 e!2739156)))

(declare-fun c!748914 () Bool)

(assert (=> d!1326079 (= c!748914 (and ((_ is Cons!49268) lt!1604703) (= (_1!27725 (h!54891 lt!1604703)) key!3918)))))

(assert (=> d!1326079 (noDuplicateKeys!623 lt!1604703)))

(assert (=> d!1326079 (= (removePairForKey!591 lt!1604703 key!3918) lt!1604789)))

(declare-fun b!4399177 () Bool)

(assert (=> b!4399177 (= e!2739156 e!2739157)))

(declare-fun c!748913 () Bool)

(assert (=> b!4399177 (= c!748913 ((_ is Cons!49268) lt!1604703))))

(declare-fun b!4399178 () Bool)

(assert (=> b!4399178 (= e!2739157 (Cons!49268 (h!54891 lt!1604703) (removePairForKey!591 (t!356326 lt!1604703) key!3918)))))

(assert (= (and d!1326079 c!748914) b!4399176))

(assert (= (and d!1326079 (not c!748914)) b!4399177))

(assert (= (and b!4399177 c!748913) b!4399178))

(assert (= (and b!4399177 (not c!748913)) b!4399179))

(declare-fun m!5061155 () Bool)

(assert (=> d!1326079 m!5061155))

(declare-fun m!5061157 () Bool)

(assert (=> d!1326079 m!5061157))

(declare-fun m!5061163 () Bool)

(assert (=> b!4399178 m!5061163))

(assert (=> b!4399035 d!1326079))

(declare-fun b!4399260 () Bool)

(declare-fun e!2739214 () Unit!78635)

(declare-fun lt!1604851 () Unit!78635)

(assert (=> b!4399260 (= e!2739214 lt!1604851)))

(declare-fun lt!1604854 () Unit!78635)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!504 (List!49392 K!10625) Unit!78635)

(assert (=> b!4399260 (= lt!1604854 (lemmaContainsKeyImpliesGetValueByKeyDefined!504 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918))))

(declare-datatypes ((Option!10609 0))(
  ( (None!10608) (Some!10608 (v!43702 V!10871)) )
))
(declare-fun isDefined!7901 (Option!10609) Bool)

(declare-fun getValueByKey!595 (List!49392 K!10625) Option!10609)

(assert (=> b!4399260 (isDefined!7901 (getValueByKey!595 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918))))

(declare-fun lt!1604856 () Unit!78635)

(assert (=> b!4399260 (= lt!1604856 lt!1604854)))

(declare-fun lemmaInListThenGetKeysListContains!192 (List!49392 K!10625) Unit!78635)

(assert (=> b!4399260 (= lt!1604851 (lemmaInListThenGetKeysListContains!192 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918))))

(declare-fun call!306161 () Bool)

(assert (=> b!4399260 call!306161))

(declare-fun d!1326085 () Bool)

(declare-fun e!2739218 () Bool)

(assert (=> d!1326085 e!2739218))

(declare-fun res!1814301 () Bool)

(assert (=> d!1326085 (=> res!1814301 e!2739218)))

(declare-fun e!2739216 () Bool)

(assert (=> d!1326085 (= res!1814301 e!2739216)))

(declare-fun res!1814302 () Bool)

(assert (=> d!1326085 (=> (not res!1814302) (not e!2739216))))

(declare-fun lt!1604850 () Bool)

(assert (=> d!1326085 (= res!1814302 (not lt!1604850))))

(declare-fun lt!1604852 () Bool)

(assert (=> d!1326085 (= lt!1604850 lt!1604852)))

(declare-fun lt!1604855 () Unit!78635)

(assert (=> d!1326085 (= lt!1604855 e!2739214)))

(declare-fun c!748935 () Bool)

(assert (=> d!1326085 (= c!748935 lt!1604852)))

(declare-fun containsKey!928 (List!49392 K!10625) Bool)

(assert (=> d!1326085 (= lt!1604852 (containsKey!928 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918))))

(assert (=> d!1326085 (= (contains!11655 (extractMap!682 (toList!3229 lm!1707)) key!3918) lt!1604850)))

(declare-fun bm!306156 () Bool)

(declare-datatypes ((List!49395 0))(
  ( (Nil!49271) (Cons!49271 (h!54896 K!10625) (t!356329 List!49395)) )
))
(declare-fun e!2739219 () List!49395)

(declare-fun contains!11657 (List!49395 K!10625) Bool)

(assert (=> bm!306156 (= call!306161 (contains!11657 e!2739219 key!3918))))

(declare-fun c!748937 () Bool)

(assert (=> bm!306156 (= c!748937 c!748935)))

(declare-fun b!4399261 () Bool)

(assert (=> b!4399261 false))

(declare-fun lt!1604857 () Unit!78635)

(declare-fun lt!1604853 () Unit!78635)

(assert (=> b!4399261 (= lt!1604857 lt!1604853)))

(assert (=> b!4399261 (containsKey!928 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!193 (List!49392 K!10625) Unit!78635)

(assert (=> b!4399261 (= lt!1604853 (lemmaInGetKeysListThenContainsKey!193 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918))))

(declare-fun e!2739215 () Unit!78635)

(declare-fun Unit!78645 () Unit!78635)

(assert (=> b!4399261 (= e!2739215 Unit!78645)))

(declare-fun b!4399262 () Bool)

(declare-fun keys!16741 (ListMap!2473) List!49395)

(assert (=> b!4399262 (= e!2739219 (keys!16741 (extractMap!682 (toList!3229 lm!1707))))))

(declare-fun b!4399263 () Bool)

(declare-fun e!2739217 () Bool)

(assert (=> b!4399263 (= e!2739217 (contains!11657 (keys!16741 (extractMap!682 (toList!3229 lm!1707))) key!3918))))

(declare-fun b!4399264 () Bool)

(assert (=> b!4399264 (= e!2739218 e!2739217)))

(declare-fun res!1814303 () Bool)

(assert (=> b!4399264 (=> (not res!1814303) (not e!2739217))))

(assert (=> b!4399264 (= res!1814303 (isDefined!7901 (getValueByKey!595 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918)))))

(declare-fun b!4399265 () Bool)

(assert (=> b!4399265 (= e!2739214 e!2739215)))

(declare-fun c!748936 () Bool)

(assert (=> b!4399265 (= c!748936 call!306161)))

(declare-fun b!4399266 () Bool)

(declare-fun Unit!78646 () Unit!78635)

(assert (=> b!4399266 (= e!2739215 Unit!78646)))

(declare-fun b!4399267 () Bool)

(assert (=> b!4399267 (= e!2739216 (not (contains!11657 (keys!16741 (extractMap!682 (toList!3229 lm!1707))) key!3918)))))

(declare-fun b!4399268 () Bool)

(declare-fun getKeysList!195 (List!49392) List!49395)

(assert (=> b!4399268 (= e!2739219 (getKeysList!195 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))))))

(assert (= (and d!1326085 c!748935) b!4399260))

(assert (= (and d!1326085 (not c!748935)) b!4399265))

(assert (= (and b!4399265 c!748936) b!4399261))

(assert (= (and b!4399265 (not c!748936)) b!4399266))

(assert (= (or b!4399260 b!4399265) bm!306156))

(assert (= (and bm!306156 c!748937) b!4399268))

(assert (= (and bm!306156 (not c!748937)) b!4399262))

(assert (= (and d!1326085 res!1814302) b!4399267))

(assert (= (and d!1326085 (not res!1814301)) b!4399264))

(assert (= (and b!4399264 res!1814303) b!4399263))

(declare-fun m!5061287 () Bool)

(assert (=> d!1326085 m!5061287))

(declare-fun m!5061289 () Bool)

(assert (=> b!4399268 m!5061289))

(declare-fun m!5061291 () Bool)

(assert (=> bm!306156 m!5061291))

(declare-fun m!5061293 () Bool)

(assert (=> b!4399260 m!5061293))

(declare-fun m!5061295 () Bool)

(assert (=> b!4399260 m!5061295))

(assert (=> b!4399260 m!5061295))

(declare-fun m!5061297 () Bool)

(assert (=> b!4399260 m!5061297))

(declare-fun m!5061299 () Bool)

(assert (=> b!4399260 m!5061299))

(assert (=> b!4399262 m!5061003))

(declare-fun m!5061301 () Bool)

(assert (=> b!4399262 m!5061301))

(assert (=> b!4399267 m!5061003))

(assert (=> b!4399267 m!5061301))

(assert (=> b!4399267 m!5061301))

(declare-fun m!5061303 () Bool)

(assert (=> b!4399267 m!5061303))

(assert (=> b!4399263 m!5061003))

(assert (=> b!4399263 m!5061301))

(assert (=> b!4399263 m!5061301))

(assert (=> b!4399263 m!5061303))

(assert (=> b!4399264 m!5061295))

(assert (=> b!4399264 m!5061295))

(assert (=> b!4399264 m!5061297))

(assert (=> b!4399261 m!5061287))

(declare-fun m!5061305 () Bool)

(assert (=> b!4399261 m!5061305))

(assert (=> b!4399046 d!1326085))

(declare-fun bs!727792 () Bool)

(declare-fun d!1326133 () Bool)

(assert (= bs!727792 (and d!1326133 start!427504)))

(declare-fun lambda!148573 () Int)

(assert (=> bs!727792 (= lambda!148573 lambda!148555)))

(declare-fun lt!1604860 () ListMap!2473)

(declare-fun invariantList!748 (List!49392) Bool)

(assert (=> d!1326133 (invariantList!748 (toList!3230 lt!1604860))))

(declare-fun e!2739222 () ListMap!2473)

(assert (=> d!1326133 (= lt!1604860 e!2739222)))

(declare-fun c!748940 () Bool)

(assert (=> d!1326133 (= c!748940 ((_ is Cons!49269) (toList!3229 lm!1707)))))

(assert (=> d!1326133 (forall!9356 (toList!3229 lm!1707) lambda!148573)))

(assert (=> d!1326133 (= (extractMap!682 (toList!3229 lm!1707)) lt!1604860)))

(declare-fun b!4399273 () Bool)

(declare-fun addToMapMapFromBucket!293 (List!49392 ListMap!2473) ListMap!2473)

(assert (=> b!4399273 (= e!2739222 (addToMapMapFromBucket!293 (_2!27726 (h!54892 (toList!3229 lm!1707))) (extractMap!682 (t!356327 (toList!3229 lm!1707)))))))

(declare-fun b!4399274 () Bool)

(assert (=> b!4399274 (= e!2739222 (ListMap!2474 Nil!49268))))

(assert (= (and d!1326133 c!748940) b!4399273))

(assert (= (and d!1326133 (not c!748940)) b!4399274))

(declare-fun m!5061307 () Bool)

(assert (=> d!1326133 m!5061307))

(declare-fun m!5061309 () Bool)

(assert (=> d!1326133 m!5061309))

(assert (=> b!4399273 m!5060957))

(assert (=> b!4399273 m!5060957))

(declare-fun m!5061311 () Bool)

(assert (=> b!4399273 m!5061311))

(assert (=> b!4399046 d!1326133))

(assert (=> b!4399044 d!1326033))

(declare-fun bs!727793 () Bool)

(declare-fun d!1326135 () Bool)

(assert (= bs!727793 (and d!1326135 start!427504)))

(declare-fun lambda!148576 () Int)

(assert (=> bs!727793 (not (= lambda!148576 lambda!148555))))

(declare-fun bs!727794 () Bool)

(assert (= bs!727794 (and d!1326135 d!1326133)))

(assert (=> bs!727794 (not (= lambda!148576 lambda!148573))))

(assert (=> d!1326135 true))

(assert (=> d!1326135 (= (allKeysSameHashInMap!727 lt!1604708 hashF!1247) (forall!9356 (toList!3229 lt!1604708) lambda!148576))))

(declare-fun bs!727795 () Bool)

(assert (= bs!727795 d!1326135))

(declare-fun m!5061313 () Bool)

(assert (=> bs!727795 m!5061313))

(assert (=> b!4399048 d!1326135))

(declare-fun d!1326137 () Bool)

(declare-fun res!1814308 () Bool)

(declare-fun e!2739227 () Bool)

(assert (=> d!1326137 (=> res!1814308 e!2739227)))

(assert (=> d!1326137 (= res!1814308 (not ((_ is Cons!49268) newBucket!200)))))

(assert (=> d!1326137 (= (noDuplicateKeys!623 newBucket!200) e!2739227)))

(declare-fun b!4399281 () Bool)

(declare-fun e!2739228 () Bool)

(assert (=> b!4399281 (= e!2739227 e!2739228)))

(declare-fun res!1814309 () Bool)

(assert (=> b!4399281 (=> (not res!1814309) (not e!2739228))))

(assert (=> b!4399281 (= res!1814309 (not (containsKey!925 (t!356326 newBucket!200) (_1!27725 (h!54891 newBucket!200)))))))

(declare-fun b!4399282 () Bool)

(assert (=> b!4399282 (= e!2739228 (noDuplicateKeys!623 (t!356326 newBucket!200)))))

(assert (= (and d!1326137 (not res!1814308)) b!4399281))

(assert (= (and b!4399281 res!1814309) b!4399282))

(declare-fun m!5061315 () Bool)

(assert (=> b!4399281 m!5061315))

(declare-fun m!5061317 () Bool)

(assert (=> b!4399282 m!5061317))

(assert (=> b!4399038 d!1326137))

(declare-fun d!1326139 () Bool)

(declare-fun e!2739233 () Bool)

(assert (=> d!1326139 e!2739233))

(declare-fun res!1814312 () Bool)

(assert (=> d!1326139 (=> res!1814312 e!2739233)))

(declare-fun lt!1604871 () Bool)

(assert (=> d!1326139 (= res!1814312 (not lt!1604871))))

(declare-fun lt!1604872 () Bool)

(assert (=> d!1326139 (= lt!1604871 lt!1604872)))

(declare-fun lt!1604869 () Unit!78635)

(declare-fun e!2739234 () Unit!78635)

(assert (=> d!1326139 (= lt!1604869 e!2739234)))

(declare-fun c!748943 () Bool)

(assert (=> d!1326139 (= c!748943 lt!1604872)))

(declare-fun containsKey!929 (List!49393 (_ BitVec 64)) Bool)

(assert (=> d!1326139 (= lt!1604872 (containsKey!929 (toList!3229 lt!1604708) hash!377))))

(assert (=> d!1326139 (= (contains!11654 lt!1604708 hash!377) lt!1604871)))

(declare-fun b!4399289 () Bool)

(declare-fun lt!1604870 () Unit!78635)

(assert (=> b!4399289 (= e!2739234 lt!1604870)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!505 (List!49393 (_ BitVec 64)) Unit!78635)

(assert (=> b!4399289 (= lt!1604870 (lemmaContainsKeyImpliesGetValueByKeyDefined!505 (toList!3229 lt!1604708) hash!377))))

(declare-fun isDefined!7902 (Option!10608) Bool)

(assert (=> b!4399289 (isDefined!7902 (getValueByKey!594 (toList!3229 lt!1604708) hash!377))))

(declare-fun b!4399290 () Bool)

(declare-fun Unit!78647 () Unit!78635)

(assert (=> b!4399290 (= e!2739234 Unit!78647)))

(declare-fun b!4399291 () Bool)

(assert (=> b!4399291 (= e!2739233 (isDefined!7902 (getValueByKey!594 (toList!3229 lt!1604708) hash!377)))))

(assert (= (and d!1326139 c!748943) b!4399289))

(assert (= (and d!1326139 (not c!748943)) b!4399290))

(assert (= (and d!1326139 (not res!1814312)) b!4399291))

(declare-fun m!5061319 () Bool)

(assert (=> d!1326139 m!5061319))

(declare-fun m!5061321 () Bool)

(assert (=> b!4399289 m!5061321))

(assert (=> b!4399289 m!5061145))

(assert (=> b!4399289 m!5061145))

(declare-fun m!5061323 () Bool)

(assert (=> b!4399289 m!5061323))

(assert (=> b!4399291 m!5061145))

(assert (=> b!4399291 m!5061145))

(assert (=> b!4399291 m!5061323))

(assert (=> b!4399036 d!1326139))

(declare-fun d!1326141 () Bool)

(declare-fun e!2739235 () Bool)

(assert (=> d!1326141 e!2739235))

(declare-fun res!1814313 () Bool)

(assert (=> d!1326141 (=> res!1814313 e!2739235)))

(declare-fun lt!1604875 () Bool)

(assert (=> d!1326141 (= res!1814313 (not lt!1604875))))

(declare-fun lt!1604876 () Bool)

(assert (=> d!1326141 (= lt!1604875 lt!1604876)))

(declare-fun lt!1604873 () Unit!78635)

(declare-fun e!2739236 () Unit!78635)

(assert (=> d!1326141 (= lt!1604873 e!2739236)))

(declare-fun c!748944 () Bool)

(assert (=> d!1326141 (= c!748944 lt!1604876)))

(assert (=> d!1326141 (= lt!1604876 (containsKey!929 (toList!3229 lm!1707) hash!377))))

(assert (=> d!1326141 (= (contains!11654 lm!1707 hash!377) lt!1604875)))

(declare-fun b!4399292 () Bool)

(declare-fun lt!1604874 () Unit!78635)

(assert (=> b!4399292 (= e!2739236 lt!1604874)))

(assert (=> b!4399292 (= lt!1604874 (lemmaContainsKeyImpliesGetValueByKeyDefined!505 (toList!3229 lm!1707) hash!377))))

(assert (=> b!4399292 (isDefined!7902 (getValueByKey!594 (toList!3229 lm!1707) hash!377))))

(declare-fun b!4399293 () Bool)

(declare-fun Unit!78648 () Unit!78635)

(assert (=> b!4399293 (= e!2739236 Unit!78648)))

(declare-fun b!4399294 () Bool)

(assert (=> b!4399294 (= e!2739235 (isDefined!7902 (getValueByKey!594 (toList!3229 lm!1707) hash!377)))))

(assert (= (and d!1326141 c!748944) b!4399292))

(assert (= (and d!1326141 (not c!748944)) b!4399293))

(assert (= (and d!1326141 (not res!1814313)) b!4399294))

(declare-fun m!5061325 () Bool)

(assert (=> d!1326141 m!5061325))

(declare-fun m!5061327 () Bool)

(assert (=> b!4399292 m!5061327))

(declare-fun m!5061329 () Bool)

(assert (=> b!4399292 m!5061329))

(assert (=> b!4399292 m!5061329))

(declare-fun m!5061331 () Bool)

(assert (=> b!4399292 m!5061331))

(assert (=> b!4399294 m!5061329))

(assert (=> b!4399294 m!5061329))

(assert (=> b!4399294 m!5061331))

(assert (=> b!4399047 d!1326141))

(assert (=> start!427504 d!1326063))

(declare-fun d!1326143 () Bool)

(assert (=> d!1326143 (= (inv!64811 lm!1707) (isStrictlySorted!174 (toList!3229 lm!1707)))))

(declare-fun bs!727796 () Bool)

(assert (= bs!727796 d!1326143))

(declare-fun m!5061333 () Bool)

(assert (=> bs!727796 m!5061333))

(assert (=> start!427504 d!1326143))

(declare-fun d!1326145 () Bool)

(assert (=> d!1326145 (= (apply!11475 lm!1707 hash!377) (get!16038 (getValueByKey!594 (toList!3229 lm!1707) hash!377)))))

(declare-fun bs!727797 () Bool)

(assert (= bs!727797 d!1326145))

(assert (=> bs!727797 m!5061329))

(assert (=> bs!727797 m!5061329))

(declare-fun m!5061335 () Bool)

(assert (=> bs!727797 m!5061335))

(assert (=> b!4399040 d!1326145))

(declare-fun b!4399295 () Bool)

(declare-fun e!2739237 () List!49392)

(assert (=> b!4399295 (= e!2739237 (t!356326 lt!1604699))))

(declare-fun b!4399298 () Bool)

(declare-fun e!2739238 () List!49392)

(assert (=> b!4399298 (= e!2739238 Nil!49268)))

(declare-fun d!1326147 () Bool)

(declare-fun lt!1604877 () List!49392)

(assert (=> d!1326147 (not (containsKey!925 lt!1604877 key!3918))))

(assert (=> d!1326147 (= lt!1604877 e!2739237)))

(declare-fun c!748946 () Bool)

(assert (=> d!1326147 (= c!748946 (and ((_ is Cons!49268) lt!1604699) (= (_1!27725 (h!54891 lt!1604699)) key!3918)))))

(assert (=> d!1326147 (noDuplicateKeys!623 lt!1604699)))

(assert (=> d!1326147 (= (removePairForKey!591 lt!1604699 key!3918) lt!1604877)))

(declare-fun b!4399296 () Bool)

(assert (=> b!4399296 (= e!2739237 e!2739238)))

(declare-fun c!748945 () Bool)

(assert (=> b!4399296 (= c!748945 ((_ is Cons!49268) lt!1604699))))

(declare-fun b!4399297 () Bool)

(assert (=> b!4399297 (= e!2739238 (Cons!49268 (h!54891 lt!1604699) (removePairForKey!591 (t!356326 lt!1604699) key!3918)))))

(assert (= (and d!1326147 c!748946) b!4399295))

(assert (= (and d!1326147 (not c!748946)) b!4399296))

(assert (= (and b!4399296 c!748945) b!4399297))

(assert (= (and b!4399296 (not c!748945)) b!4399298))

(declare-fun m!5061337 () Bool)

(assert (=> d!1326147 m!5061337))

(declare-fun m!5061339 () Bool)

(assert (=> d!1326147 m!5061339))

(declare-fun m!5061341 () Bool)

(assert (=> b!4399297 m!5061341))

(assert (=> b!4399040 d!1326147))

(declare-fun d!1326149 () Bool)

(declare-fun lt!1604878 () Bool)

(assert (=> d!1326149 (= lt!1604878 (select (content!7864 (toList!3229 lm!1707)) lt!1604698))))

(declare-fun e!2739239 () Bool)

(assert (=> d!1326149 (= lt!1604878 e!2739239)))

(declare-fun res!1814314 () Bool)

(assert (=> d!1326149 (=> (not res!1814314) (not e!2739239))))

(assert (=> d!1326149 (= res!1814314 ((_ is Cons!49269) (toList!3229 lm!1707)))))

(assert (=> d!1326149 (= (contains!11653 (toList!3229 lm!1707) lt!1604698) lt!1604878)))

(declare-fun b!4399299 () Bool)

(declare-fun e!2739240 () Bool)

(assert (=> b!4399299 (= e!2739239 e!2739240)))

(declare-fun res!1814315 () Bool)

(assert (=> b!4399299 (=> res!1814315 e!2739240)))

(assert (=> b!4399299 (= res!1814315 (= (h!54892 (toList!3229 lm!1707)) lt!1604698))))

(declare-fun b!4399300 () Bool)

(assert (=> b!4399300 (= e!2739240 (contains!11653 (t!356327 (toList!3229 lm!1707)) lt!1604698))))

(assert (= (and d!1326149 res!1814314) b!4399299))

(assert (= (and b!4399299 (not res!1814315)) b!4399300))

(declare-fun m!5061343 () Bool)

(assert (=> d!1326149 m!5061343))

(declare-fun m!5061345 () Bool)

(assert (=> d!1326149 m!5061345))

(declare-fun m!5061347 () Bool)

(assert (=> b!4399300 m!5061347))

(assert (=> b!4399040 d!1326149))

(declare-fun d!1326151 () Bool)

(assert (=> d!1326151 (contains!11653 (toList!3229 lm!1707) (tuple2!48865 hash!377 lt!1604699))))

(declare-fun lt!1604879 () Unit!78635)

(assert (=> d!1326151 (= lt!1604879 (choose!27561 (toList!3229 lm!1707) hash!377 lt!1604699))))

(declare-fun e!2739241 () Bool)

(assert (=> d!1326151 e!2739241))

(declare-fun res!1814316 () Bool)

(assert (=> d!1326151 (=> (not res!1814316) (not e!2739241))))

(assert (=> d!1326151 (= res!1814316 (isStrictlySorted!174 (toList!3229 lm!1707)))))

(assert (=> d!1326151 (= (lemmaGetValueByKeyImpliesContainsTuple!468 (toList!3229 lm!1707) hash!377 lt!1604699) lt!1604879)))

(declare-fun b!4399301 () Bool)

(assert (=> b!4399301 (= e!2739241 (= (getValueByKey!594 (toList!3229 lm!1707) hash!377) (Some!10607 lt!1604699)))))

(assert (= (and d!1326151 res!1814316) b!4399301))

(declare-fun m!5061349 () Bool)

(assert (=> d!1326151 m!5061349))

(declare-fun m!5061351 () Bool)

(assert (=> d!1326151 m!5061351))

(assert (=> d!1326151 m!5061333))

(assert (=> b!4399301 m!5061329))

(assert (=> b!4399040 d!1326151))

(declare-fun d!1326153 () Bool)

(assert (=> d!1326153 (dynLambda!20758 lambda!148555 lt!1604698)))

(declare-fun lt!1604880 () Unit!78635)

(assert (=> d!1326153 (= lt!1604880 (choose!27560 (toList!3229 lm!1707) lambda!148555 lt!1604698))))

(declare-fun e!2739242 () Bool)

(assert (=> d!1326153 e!2739242))

(declare-fun res!1814317 () Bool)

(assert (=> d!1326153 (=> (not res!1814317) (not e!2739242))))

(assert (=> d!1326153 (= res!1814317 (forall!9356 (toList!3229 lm!1707) lambda!148555))))

(assert (=> d!1326153 (= (forallContained!1991 (toList!3229 lm!1707) lambda!148555 lt!1604698) lt!1604880)))

(declare-fun b!4399302 () Bool)

(assert (=> b!4399302 (= e!2739242 (contains!11653 (toList!3229 lm!1707) lt!1604698))))

(assert (= (and d!1326153 res!1814317) b!4399302))

(declare-fun b_lambda!139585 () Bool)

(assert (=> (not b_lambda!139585) (not d!1326153)))

(declare-fun m!5061353 () Bool)

(assert (=> d!1326153 m!5061353))

(declare-fun m!5061355 () Bool)

(assert (=> d!1326153 m!5061355))

(assert (=> d!1326153 m!5060979))

(assert (=> b!4399302 m!5061013))

(assert (=> b!4399040 d!1326153))

(declare-fun bs!727798 () Bool)

(declare-fun d!1326155 () Bool)

(assert (= bs!727798 (and d!1326155 start!427504)))

(declare-fun lambda!148577 () Int)

(assert (=> bs!727798 (not (= lambda!148577 lambda!148555))))

(declare-fun bs!727799 () Bool)

(assert (= bs!727799 (and d!1326155 d!1326133)))

(assert (=> bs!727799 (not (= lambda!148577 lambda!148573))))

(declare-fun bs!727800 () Bool)

(assert (= bs!727800 (and d!1326155 d!1326135)))

(assert (=> bs!727800 (= lambda!148577 lambda!148576)))

(assert (=> d!1326155 true))

(assert (=> d!1326155 (= (allKeysSameHashInMap!727 lm!1707 hashF!1247) (forall!9356 (toList!3229 lm!1707) lambda!148577))))

(declare-fun bs!727801 () Bool)

(assert (= bs!727801 d!1326155))

(declare-fun m!5061357 () Bool)

(assert (=> bs!727801 m!5061357))

(assert (=> b!4399049 d!1326155))

(declare-fun d!1326157 () Bool)

(assert (=> d!1326157 true))

(assert (=> d!1326157 true))

(declare-fun lambda!148580 () Int)

(declare-fun forall!9358 (List!49392 Int) Bool)

(assert (=> d!1326157 (= (allKeysSameHash!581 newBucket!200 hash!377 hashF!1247) (forall!9358 newBucket!200 lambda!148580))))

(declare-fun bs!727802 () Bool)

(assert (= bs!727802 d!1326157))

(declare-fun m!5061359 () Bool)

(assert (=> bs!727802 m!5061359))

(assert (=> b!4399039 d!1326157))

(declare-fun d!1326159 () Bool)

(assert (=> d!1326159 (= (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707)))) (get!16038 (getValueByKey!594 (toList!3229 lm!1707) (_1!27726 (h!54892 (toList!3229 lm!1707))))))))

(declare-fun bs!727803 () Bool)

(assert (= bs!727803 d!1326159))

(declare-fun m!5061361 () Bool)

(assert (=> bs!727803 m!5061361))

(assert (=> bs!727803 m!5061361))

(declare-fun m!5061363 () Bool)

(assert (=> bs!727803 m!5061363))

(assert (=> b!4399043 d!1326159))

(declare-fun d!1326161 () Bool)

(declare-fun res!1814322 () Bool)

(declare-fun e!2739247 () Bool)

(assert (=> d!1326161 (=> res!1814322 e!2739247)))

(assert (=> d!1326161 (= res!1814322 (and ((_ is Cons!49268) (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707))))) (= (_1!27725 (h!54891 (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707)))))) key!3918)))))

(assert (=> d!1326161 (= (containsKey!925 (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707)))) key!3918) e!2739247)))

(declare-fun b!4399311 () Bool)

(declare-fun e!2739248 () Bool)

(assert (=> b!4399311 (= e!2739247 e!2739248)))

(declare-fun res!1814323 () Bool)

(assert (=> b!4399311 (=> (not res!1814323) (not e!2739248))))

(assert (=> b!4399311 (= res!1814323 ((_ is Cons!49268) (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707))))))))

(declare-fun b!4399312 () Bool)

(assert (=> b!4399312 (= e!2739248 (containsKey!925 (t!356326 (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707))))) key!3918))))

(assert (= (and d!1326161 (not res!1814322)) b!4399311))

(assert (= (and b!4399311 res!1814323) b!4399312))

(declare-fun m!5061365 () Bool)

(assert (=> b!4399312 m!5061365))

(assert (=> b!4399043 d!1326161))

(declare-fun b!4399313 () Bool)

(declare-fun e!2739249 () Unit!78635)

(declare-fun lt!1604882 () Unit!78635)

(assert (=> b!4399313 (= e!2739249 lt!1604882)))

(declare-fun lt!1604885 () Unit!78635)

(assert (=> b!4399313 (= lt!1604885 (lemmaContainsKeyImpliesGetValueByKeyDefined!504 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918))))

(assert (=> b!4399313 (isDefined!7901 (getValueByKey!595 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918))))

(declare-fun lt!1604887 () Unit!78635)

(assert (=> b!4399313 (= lt!1604887 lt!1604885)))

(assert (=> b!4399313 (= lt!1604882 (lemmaInListThenGetKeysListContains!192 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918))))

(declare-fun call!306162 () Bool)

(assert (=> b!4399313 call!306162))

(declare-fun d!1326163 () Bool)

(declare-fun e!2739253 () Bool)

(assert (=> d!1326163 e!2739253))

(declare-fun res!1814324 () Bool)

(assert (=> d!1326163 (=> res!1814324 e!2739253)))

(declare-fun e!2739251 () Bool)

(assert (=> d!1326163 (= res!1814324 e!2739251)))

(declare-fun res!1814325 () Bool)

(assert (=> d!1326163 (=> (not res!1814325) (not e!2739251))))

(declare-fun lt!1604881 () Bool)

(assert (=> d!1326163 (= res!1814325 (not lt!1604881))))

(declare-fun lt!1604883 () Bool)

(assert (=> d!1326163 (= lt!1604881 lt!1604883)))

(declare-fun lt!1604886 () Unit!78635)

(assert (=> d!1326163 (= lt!1604886 e!2739249)))

(declare-fun c!748947 () Bool)

(assert (=> d!1326163 (= c!748947 lt!1604883)))

(assert (=> d!1326163 (= lt!1604883 (containsKey!928 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918))))

(assert (=> d!1326163 (= (contains!11655 (extractMap!682 (toList!3229 lt!1604708)) key!3918) lt!1604881)))

(declare-fun bm!306157 () Bool)

(declare-fun e!2739254 () List!49395)

(assert (=> bm!306157 (= call!306162 (contains!11657 e!2739254 key!3918))))

(declare-fun c!748949 () Bool)

(assert (=> bm!306157 (= c!748949 c!748947)))

(declare-fun b!4399314 () Bool)

(assert (=> b!4399314 false))

(declare-fun lt!1604888 () Unit!78635)

(declare-fun lt!1604884 () Unit!78635)

(assert (=> b!4399314 (= lt!1604888 lt!1604884)))

(assert (=> b!4399314 (containsKey!928 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918)))

(assert (=> b!4399314 (= lt!1604884 (lemmaInGetKeysListThenContainsKey!193 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918))))

(declare-fun e!2739250 () Unit!78635)

(declare-fun Unit!78649 () Unit!78635)

(assert (=> b!4399314 (= e!2739250 Unit!78649)))

(declare-fun b!4399315 () Bool)

(assert (=> b!4399315 (= e!2739254 (keys!16741 (extractMap!682 (toList!3229 lt!1604708))))))

(declare-fun b!4399316 () Bool)

(declare-fun e!2739252 () Bool)

(assert (=> b!4399316 (= e!2739252 (contains!11657 (keys!16741 (extractMap!682 (toList!3229 lt!1604708))) key!3918))))

(declare-fun b!4399317 () Bool)

(assert (=> b!4399317 (= e!2739253 e!2739252)))

(declare-fun res!1814326 () Bool)

(assert (=> b!4399317 (=> (not res!1814326) (not e!2739252))))

(assert (=> b!4399317 (= res!1814326 (isDefined!7901 (getValueByKey!595 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918)))))

(declare-fun b!4399318 () Bool)

(assert (=> b!4399318 (= e!2739249 e!2739250)))

(declare-fun c!748948 () Bool)

(assert (=> b!4399318 (= c!748948 call!306162)))

(declare-fun b!4399319 () Bool)

(declare-fun Unit!78650 () Unit!78635)

(assert (=> b!4399319 (= e!2739250 Unit!78650)))

(declare-fun b!4399320 () Bool)

(assert (=> b!4399320 (= e!2739251 (not (contains!11657 (keys!16741 (extractMap!682 (toList!3229 lt!1604708))) key!3918)))))

(declare-fun b!4399321 () Bool)

(assert (=> b!4399321 (= e!2739254 (getKeysList!195 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))))

(assert (= (and d!1326163 c!748947) b!4399313))

(assert (= (and d!1326163 (not c!748947)) b!4399318))

(assert (= (and b!4399318 c!748948) b!4399314))

(assert (= (and b!4399318 (not c!748948)) b!4399319))

(assert (= (or b!4399313 b!4399318) bm!306157))

(assert (= (and bm!306157 c!748949) b!4399321))

(assert (= (and bm!306157 (not c!748949)) b!4399315))

(assert (= (and d!1326163 res!1814325) b!4399320))

(assert (= (and d!1326163 (not res!1814324)) b!4399317))

(assert (= (and b!4399317 res!1814326) b!4399316))

(declare-fun m!5061367 () Bool)

(assert (=> d!1326163 m!5061367))

(declare-fun m!5061369 () Bool)

(assert (=> b!4399321 m!5061369))

(declare-fun m!5061371 () Bool)

(assert (=> bm!306157 m!5061371))

(declare-fun m!5061373 () Bool)

(assert (=> b!4399313 m!5061373))

(declare-fun m!5061375 () Bool)

(assert (=> b!4399313 m!5061375))

(assert (=> b!4399313 m!5061375))

(declare-fun m!5061377 () Bool)

(assert (=> b!4399313 m!5061377))

(declare-fun m!5061379 () Bool)

(assert (=> b!4399313 m!5061379))

(assert (=> b!4399315 m!5060961))

(declare-fun m!5061381 () Bool)

(assert (=> b!4399315 m!5061381))

(assert (=> b!4399320 m!5060961))

(assert (=> b!4399320 m!5061381))

(assert (=> b!4399320 m!5061381))

(declare-fun m!5061383 () Bool)

(assert (=> b!4399320 m!5061383))

(assert (=> b!4399316 m!5060961))

(assert (=> b!4399316 m!5061381))

(assert (=> b!4399316 m!5061381))

(assert (=> b!4399316 m!5061383))

(assert (=> b!4399317 m!5061375))

(assert (=> b!4399317 m!5061375))

(assert (=> b!4399317 m!5061377))

(assert (=> b!4399314 m!5061367))

(declare-fun m!5061385 () Bool)

(assert (=> b!4399314 m!5061385))

(assert (=> b!4399043 d!1326163))

(declare-fun b!4399322 () Bool)

(declare-fun e!2739255 () Unit!78635)

(declare-fun lt!1604890 () Unit!78635)

(assert (=> b!4399322 (= e!2739255 lt!1604890)))

(declare-fun lt!1604893 () Unit!78635)

(assert (=> b!4399322 (= lt!1604893 (lemmaContainsKeyImpliesGetValueByKeyDefined!504 (toList!3230 lt!1604701) key!3918))))

(assert (=> b!4399322 (isDefined!7901 (getValueByKey!595 (toList!3230 lt!1604701) key!3918))))

(declare-fun lt!1604895 () Unit!78635)

(assert (=> b!4399322 (= lt!1604895 lt!1604893)))

(assert (=> b!4399322 (= lt!1604890 (lemmaInListThenGetKeysListContains!192 (toList!3230 lt!1604701) key!3918))))

(declare-fun call!306163 () Bool)

(assert (=> b!4399322 call!306163))

(declare-fun d!1326165 () Bool)

(declare-fun e!2739259 () Bool)

(assert (=> d!1326165 e!2739259))

(declare-fun res!1814327 () Bool)

(assert (=> d!1326165 (=> res!1814327 e!2739259)))

(declare-fun e!2739257 () Bool)

(assert (=> d!1326165 (= res!1814327 e!2739257)))

(declare-fun res!1814328 () Bool)

(assert (=> d!1326165 (=> (not res!1814328) (not e!2739257))))

(declare-fun lt!1604889 () Bool)

(assert (=> d!1326165 (= res!1814328 (not lt!1604889))))

(declare-fun lt!1604891 () Bool)

(assert (=> d!1326165 (= lt!1604889 lt!1604891)))

(declare-fun lt!1604894 () Unit!78635)

(assert (=> d!1326165 (= lt!1604894 e!2739255)))

(declare-fun c!748950 () Bool)

(assert (=> d!1326165 (= c!748950 lt!1604891)))

(assert (=> d!1326165 (= lt!1604891 (containsKey!928 (toList!3230 lt!1604701) key!3918))))

(assert (=> d!1326165 (= (contains!11655 lt!1604701 key!3918) lt!1604889)))

(declare-fun bm!306158 () Bool)

(declare-fun e!2739260 () List!49395)

(assert (=> bm!306158 (= call!306163 (contains!11657 e!2739260 key!3918))))

(declare-fun c!748952 () Bool)

(assert (=> bm!306158 (= c!748952 c!748950)))

(declare-fun b!4399323 () Bool)

(assert (=> b!4399323 false))

(declare-fun lt!1604896 () Unit!78635)

(declare-fun lt!1604892 () Unit!78635)

(assert (=> b!4399323 (= lt!1604896 lt!1604892)))

(assert (=> b!4399323 (containsKey!928 (toList!3230 lt!1604701) key!3918)))

(assert (=> b!4399323 (= lt!1604892 (lemmaInGetKeysListThenContainsKey!193 (toList!3230 lt!1604701) key!3918))))

(declare-fun e!2739256 () Unit!78635)

(declare-fun Unit!78651 () Unit!78635)

(assert (=> b!4399323 (= e!2739256 Unit!78651)))

(declare-fun b!4399324 () Bool)

(assert (=> b!4399324 (= e!2739260 (keys!16741 lt!1604701))))

(declare-fun b!4399325 () Bool)

(declare-fun e!2739258 () Bool)

(assert (=> b!4399325 (= e!2739258 (contains!11657 (keys!16741 lt!1604701) key!3918))))

(declare-fun b!4399326 () Bool)

(assert (=> b!4399326 (= e!2739259 e!2739258)))

(declare-fun res!1814329 () Bool)

(assert (=> b!4399326 (=> (not res!1814329) (not e!2739258))))

(assert (=> b!4399326 (= res!1814329 (isDefined!7901 (getValueByKey!595 (toList!3230 lt!1604701) key!3918)))))

(declare-fun b!4399327 () Bool)

(assert (=> b!4399327 (= e!2739255 e!2739256)))

(declare-fun c!748951 () Bool)

(assert (=> b!4399327 (= c!748951 call!306163)))

(declare-fun b!4399328 () Bool)

(declare-fun Unit!78652 () Unit!78635)

(assert (=> b!4399328 (= e!2739256 Unit!78652)))

(declare-fun b!4399329 () Bool)

(assert (=> b!4399329 (= e!2739257 (not (contains!11657 (keys!16741 lt!1604701) key!3918)))))

(declare-fun b!4399330 () Bool)

(assert (=> b!4399330 (= e!2739260 (getKeysList!195 (toList!3230 lt!1604701)))))

(assert (= (and d!1326165 c!748950) b!4399322))

(assert (= (and d!1326165 (not c!748950)) b!4399327))

(assert (= (and b!4399327 c!748951) b!4399323))

(assert (= (and b!4399327 (not c!748951)) b!4399328))

(assert (= (or b!4399322 b!4399327) bm!306158))

(assert (= (and bm!306158 c!748952) b!4399330))

(assert (= (and bm!306158 (not c!748952)) b!4399324))

(assert (= (and d!1326165 res!1814328) b!4399329))

(assert (= (and d!1326165 (not res!1814327)) b!4399326))

(assert (= (and b!4399326 res!1814329) b!4399325))

(declare-fun m!5061387 () Bool)

(assert (=> d!1326165 m!5061387))

(declare-fun m!5061389 () Bool)

(assert (=> b!4399330 m!5061389))

(declare-fun m!5061391 () Bool)

(assert (=> bm!306158 m!5061391))

(declare-fun m!5061393 () Bool)

(assert (=> b!4399322 m!5061393))

(declare-fun m!5061395 () Bool)

(assert (=> b!4399322 m!5061395))

(assert (=> b!4399322 m!5061395))

(declare-fun m!5061397 () Bool)

(assert (=> b!4399322 m!5061397))

(declare-fun m!5061399 () Bool)

(assert (=> b!4399322 m!5061399))

(declare-fun m!5061401 () Bool)

(assert (=> b!4399324 m!5061401))

(assert (=> b!4399329 m!5061401))

(assert (=> b!4399329 m!5061401))

(declare-fun m!5061403 () Bool)

(assert (=> b!4399329 m!5061403))

(assert (=> b!4399325 m!5061401))

(assert (=> b!4399325 m!5061401))

(assert (=> b!4399325 m!5061403))

(assert (=> b!4399326 m!5061395))

(assert (=> b!4399326 m!5061395))

(assert (=> b!4399326 m!5061397))

(assert (=> b!4399323 m!5061387))

(declare-fun m!5061405 () Bool)

(assert (=> b!4399323 m!5061405))

(assert (=> b!4399043 d!1326165))

(declare-fun d!1326167 () Bool)

(assert (=> d!1326167 (contains!11655 lt!1604701 key!3918)))

(declare-fun lt!1604899 () Unit!78635)

(declare-fun choose!27562 (List!49392 K!10625 V!10871 ListMap!2473) Unit!78635)

(assert (=> d!1326167 (= lt!1604899 (choose!27562 (_2!27726 (h!54892 (toList!3229 lm!1707))) key!3918 newValue!99 lt!1604701))))

(assert (=> d!1326167 (noDuplicateKeys!623 (_2!27726 (h!54892 (toList!3229 lm!1707))))))

(assert (=> d!1326167 (= (lemmaAddToMapContainsAndNotInListThenInAcc!82 (_2!27726 (h!54892 (toList!3229 lm!1707))) key!3918 newValue!99 lt!1604701) lt!1604899)))

(declare-fun bs!727804 () Bool)

(assert (= bs!727804 d!1326167))

(assert (=> bs!727804 m!5060953))

(declare-fun m!5061407 () Bool)

(assert (=> bs!727804 m!5061407))

(declare-fun m!5061409 () Bool)

(assert (=> bs!727804 m!5061409))

(assert (=> b!4399043 d!1326167))

(declare-fun bs!727805 () Bool)

(declare-fun d!1326169 () Bool)

(assert (= bs!727805 (and d!1326169 start!427504)))

(declare-fun lambda!148581 () Int)

(assert (=> bs!727805 (= lambda!148581 lambda!148555)))

(declare-fun bs!727806 () Bool)

(assert (= bs!727806 (and d!1326169 d!1326133)))

(assert (=> bs!727806 (= lambda!148581 lambda!148573)))

(declare-fun bs!727807 () Bool)

(assert (= bs!727807 (and d!1326169 d!1326135)))

(assert (=> bs!727807 (not (= lambda!148581 lambda!148576))))

(declare-fun bs!727808 () Bool)

(assert (= bs!727808 (and d!1326169 d!1326155)))

(assert (=> bs!727808 (not (= lambda!148581 lambda!148577))))

(declare-fun lt!1604900 () ListMap!2473)

(assert (=> d!1326169 (invariantList!748 (toList!3230 lt!1604900))))

(declare-fun e!2739261 () ListMap!2473)

(assert (=> d!1326169 (= lt!1604900 e!2739261)))

(declare-fun c!748953 () Bool)

(assert (=> d!1326169 (= c!748953 ((_ is Cons!49269) (t!356327 (toList!3229 lm!1707))))))

(assert (=> d!1326169 (forall!9356 (t!356327 (toList!3229 lm!1707)) lambda!148581)))

(assert (=> d!1326169 (= (extractMap!682 (t!356327 (toList!3229 lm!1707))) lt!1604900)))

(declare-fun b!4399331 () Bool)

(assert (=> b!4399331 (= e!2739261 (addToMapMapFromBucket!293 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707)))) (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))))))

(declare-fun b!4399332 () Bool)

(assert (=> b!4399332 (= e!2739261 (ListMap!2474 Nil!49268))))

(assert (= (and d!1326169 c!748953) b!4399331))

(assert (= (and d!1326169 (not c!748953)) b!4399332))

(declare-fun m!5061411 () Bool)

(assert (=> d!1326169 m!5061411))

(declare-fun m!5061413 () Bool)

(assert (=> d!1326169 m!5061413))

(declare-fun m!5061415 () Bool)

(assert (=> b!4399331 m!5061415))

(assert (=> b!4399331 m!5061415))

(declare-fun m!5061417 () Bool)

(assert (=> b!4399331 m!5061417))

(assert (=> b!4399043 d!1326169))

(declare-fun bs!727809 () Bool)

(declare-fun d!1326171 () Bool)

(assert (= bs!727809 (and d!1326171 d!1326135)))

(declare-fun lambda!148584 () Int)

(assert (=> bs!727809 (not (= lambda!148584 lambda!148576))))

(declare-fun bs!727810 () Bool)

(assert (= bs!727810 (and d!1326171 d!1326169)))

(assert (=> bs!727810 (= lambda!148584 lambda!148581)))

(declare-fun bs!727811 () Bool)

(assert (= bs!727811 (and d!1326171 start!427504)))

(assert (=> bs!727811 (= lambda!148584 lambda!148555)))

(declare-fun bs!727812 () Bool)

(assert (= bs!727812 (and d!1326171 d!1326133)))

(assert (=> bs!727812 (= lambda!148584 lambda!148573)))

(declare-fun bs!727813 () Bool)

(assert (= bs!727813 (and d!1326171 d!1326155)))

(assert (=> bs!727813 (not (= lambda!148584 lambda!148577))))

(assert (=> d!1326171 (not (containsKey!925 (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707)))) key!3918))))

(declare-fun lt!1604903 () Unit!78635)

(declare-fun choose!27563 (ListLongMap!1879 K!10625 (_ BitVec 64) Hashable!5015) Unit!78635)

(assert (=> d!1326171 (= lt!1604903 (choose!27563 lm!1707 key!3918 (_1!27726 (h!54892 (toList!3229 lm!1707))) hashF!1247))))

(assert (=> d!1326171 (forall!9356 (toList!3229 lm!1707) lambda!148584)))

(assert (=> d!1326171 (= (lemmaNotSameHashThenCannotContainKey!94 lm!1707 key!3918 (_1!27726 (h!54892 (toList!3229 lm!1707))) hashF!1247) lt!1604903)))

(declare-fun bs!727814 () Bool)

(assert (= bs!727814 d!1326171))

(assert (=> bs!727814 m!5060967))

(assert (=> bs!727814 m!5060967))

(assert (=> bs!727814 m!5060969))

(declare-fun m!5061419 () Bool)

(assert (=> bs!727814 m!5061419))

(declare-fun m!5061421 () Bool)

(assert (=> bs!727814 m!5061421))

(assert (=> b!4399043 d!1326171))

(declare-fun bs!727815 () Bool)

(declare-fun d!1326173 () Bool)

(assert (= bs!727815 (and d!1326173 d!1326135)))

(declare-fun lambda!148585 () Int)

(assert (=> bs!727815 (not (= lambda!148585 lambda!148576))))

(declare-fun bs!727816 () Bool)

(assert (= bs!727816 (and d!1326173 d!1326169)))

(assert (=> bs!727816 (= lambda!148585 lambda!148581)))

(declare-fun bs!727817 () Bool)

(assert (= bs!727817 (and d!1326173 start!427504)))

(assert (=> bs!727817 (= lambda!148585 lambda!148555)))

(declare-fun bs!727818 () Bool)

(assert (= bs!727818 (and d!1326173 d!1326133)))

(assert (=> bs!727818 (= lambda!148585 lambda!148573)))

(declare-fun bs!727819 () Bool)

(assert (= bs!727819 (and d!1326173 d!1326155)))

(assert (=> bs!727819 (not (= lambda!148585 lambda!148577))))

(declare-fun bs!727820 () Bool)

(assert (= bs!727820 (and d!1326173 d!1326171)))

(assert (=> bs!727820 (= lambda!148585 lambda!148584)))

(declare-fun lt!1604904 () ListMap!2473)

(assert (=> d!1326173 (invariantList!748 (toList!3230 lt!1604904))))

(declare-fun e!2739262 () ListMap!2473)

(assert (=> d!1326173 (= lt!1604904 e!2739262)))

(declare-fun c!748954 () Bool)

(assert (=> d!1326173 (= c!748954 ((_ is Cons!49269) (toList!3229 lt!1604708)))))

(assert (=> d!1326173 (forall!9356 (toList!3229 lt!1604708) lambda!148585)))

(assert (=> d!1326173 (= (extractMap!682 (toList!3229 lt!1604708)) lt!1604904)))

(declare-fun b!4399333 () Bool)

(assert (=> b!4399333 (= e!2739262 (addToMapMapFromBucket!293 (_2!27726 (h!54892 (toList!3229 lt!1604708))) (extractMap!682 (t!356327 (toList!3229 lt!1604708)))))))

(declare-fun b!4399334 () Bool)

(assert (=> b!4399334 (= e!2739262 (ListMap!2474 Nil!49268))))

(assert (= (and d!1326173 c!748954) b!4399333))

(assert (= (and d!1326173 (not c!748954)) b!4399334))

(declare-fun m!5061423 () Bool)

(assert (=> d!1326173 m!5061423))

(declare-fun m!5061425 () Bool)

(assert (=> d!1326173 m!5061425))

(declare-fun m!5061427 () Bool)

(assert (=> b!4399333 m!5061427))

(assert (=> b!4399333 m!5061427))

(declare-fun m!5061429 () Bool)

(assert (=> b!4399333 m!5061429))

(assert (=> b!4399043 d!1326173))

(declare-fun d!1326175 () Bool)

(declare-fun tail!7109 (List!49393) List!49393)

(assert (=> d!1326175 (= (tail!7107 lm!1707) (ListLongMap!1880 (tail!7109 (toList!3229 lm!1707))))))

(declare-fun bs!727821 () Bool)

(assert (= bs!727821 d!1326175))

(declare-fun m!5061431 () Bool)

(assert (=> bs!727821 m!5061431))

(assert (=> b!4399043 d!1326175))

(declare-fun d!1326177 () Bool)

(declare-fun res!1814330 () Bool)

(declare-fun e!2739263 () Bool)

(assert (=> d!1326177 (=> res!1814330 e!2739263)))

(assert (=> d!1326177 (= res!1814330 ((_ is Nil!49269) (toList!3229 lt!1604708)))))

(assert (=> d!1326177 (= (forall!9356 (toList!3229 lt!1604708) lambda!148555) e!2739263)))

(declare-fun b!4399335 () Bool)

(declare-fun e!2739264 () Bool)

(assert (=> b!4399335 (= e!2739263 e!2739264)))

(declare-fun res!1814331 () Bool)

(assert (=> b!4399335 (=> (not res!1814331) (not e!2739264))))

(assert (=> b!4399335 (= res!1814331 (dynLambda!20758 lambda!148555 (h!54892 (toList!3229 lt!1604708))))))

(declare-fun b!4399336 () Bool)

(assert (=> b!4399336 (= e!2739264 (forall!9356 (t!356327 (toList!3229 lt!1604708)) lambda!148555))))

(assert (= (and d!1326177 (not res!1814330)) b!4399335))

(assert (= (and b!4399335 res!1814331) b!4399336))

(declare-fun b_lambda!139587 () Bool)

(assert (=> (not b_lambda!139587) (not b!4399335)))

(declare-fun m!5061433 () Bool)

(assert (=> b!4399335 m!5061433))

(declare-fun m!5061435 () Bool)

(assert (=> b!4399336 m!5061435))

(assert (=> b!4399043 d!1326177))

(declare-fun d!1326179 () Bool)

(declare-fun res!1814332 () Bool)

(declare-fun e!2739265 () Bool)

(assert (=> d!1326179 (=> res!1814332 e!2739265)))

(assert (=> d!1326179 (= res!1814332 (and ((_ is Cons!49268) (_2!27726 (h!54892 (toList!3229 lm!1707)))) (= (_1!27725 (h!54891 (_2!27726 (h!54892 (toList!3229 lm!1707))))) key!3918)))))

(assert (=> d!1326179 (= (containsKey!925 (_2!27726 (h!54892 (toList!3229 lm!1707))) key!3918) e!2739265)))

(declare-fun b!4399337 () Bool)

(declare-fun e!2739266 () Bool)

(assert (=> b!4399337 (= e!2739265 e!2739266)))

(declare-fun res!1814333 () Bool)

(assert (=> b!4399337 (=> (not res!1814333) (not e!2739266))))

(assert (=> b!4399337 (= res!1814333 ((_ is Cons!49268) (_2!27726 (h!54892 (toList!3229 lm!1707)))))))

(declare-fun b!4399338 () Bool)

(assert (=> b!4399338 (= e!2739266 (containsKey!925 (t!356326 (_2!27726 (h!54892 (toList!3229 lm!1707)))) key!3918))))

(assert (= (and d!1326179 (not res!1814332)) b!4399337))

(assert (= (and b!4399337 res!1814333) b!4399338))

(declare-fun m!5061437 () Bool)

(assert (=> b!4399338 m!5061437))

(assert (=> b!4399041 d!1326179))

(declare-fun d!1326181 () Bool)

(declare-fun hash!1861 (Hashable!5015 K!10625) (_ BitVec 64))

(assert (=> d!1326181 (= (hash!1857 hashF!1247 key!3918) (hash!1861 hashF!1247 key!3918))))

(declare-fun bs!727822 () Bool)

(assert (= bs!727822 d!1326181))

(declare-fun m!5061439 () Bool)

(assert (=> bs!727822 m!5061439))

(assert (=> b!4399042 d!1326181))

(declare-fun b!4399343 () Bool)

(declare-fun e!2739269 () Bool)

(declare-fun tp!1331776 () Bool)

(declare-fun tp!1331777 () Bool)

(assert (=> b!4399343 (= e!2739269 (and tp!1331776 tp!1331777))))

(assert (=> b!4399050 (= tp!1331761 e!2739269)))

(assert (= (and b!4399050 ((_ is Cons!49269) (toList!3229 lm!1707))) b!4399343))

(declare-fun tp!1331780 () Bool)

(declare-fun e!2739272 () Bool)

(declare-fun b!4399348 () Bool)

(assert (=> b!4399348 (= e!2739272 (and tp_is_empty!25729 tp_is_empty!25731 tp!1331780))))

(assert (=> b!4399037 (= tp!1331762 e!2739272)))

(assert (= (and b!4399037 ((_ is Cons!49268) (t!356326 newBucket!200))) b!4399348))

(declare-fun b_lambda!139589 () Bool)

(assert (= b_lambda!139585 (or start!427504 b_lambda!139589)))

(declare-fun bs!727823 () Bool)

(declare-fun d!1326183 () Bool)

(assert (= bs!727823 (and d!1326183 start!427504)))

(assert (=> bs!727823 (= (dynLambda!20758 lambda!148555 lt!1604698) (noDuplicateKeys!623 (_2!27726 lt!1604698)))))

(declare-fun m!5061441 () Bool)

(assert (=> bs!727823 m!5061441))

(assert (=> d!1326153 d!1326183))

(declare-fun b_lambda!139591 () Bool)

(assert (= b_lambda!139553 (or start!427504 b_lambda!139591)))

(declare-fun bs!727824 () Bool)

(declare-fun d!1326185 () Bool)

(assert (= bs!727824 (and d!1326185 start!427504)))

(assert (=> bs!727824 (= (dynLambda!20758 lambda!148555 (h!54892 (toList!3229 lt!1604702))) (noDuplicateKeys!623 (_2!27726 (h!54892 (toList!3229 lt!1604702)))))))

(declare-fun m!5061443 () Bool)

(assert (=> bs!727824 m!5061443))

(assert (=> b!4399057 d!1326185))

(declare-fun b_lambda!139593 () Bool)

(assert (= b_lambda!139567 (or start!427504 b_lambda!139593)))

(declare-fun bs!727825 () Bool)

(declare-fun d!1326187 () Bool)

(assert (= bs!727825 (and d!1326187 start!427504)))

(assert (=> bs!727825 (= (dynLambda!20758 lambda!148555 lt!1604700) (noDuplicateKeys!623 (_2!27726 lt!1604700)))))

(declare-fun m!5061445 () Bool)

(assert (=> bs!727825 m!5061445))

(assert (=> d!1326071 d!1326187))

(declare-fun b_lambda!139595 () Bool)

(assert (= b_lambda!139559 (or start!427504 b_lambda!139595)))

(declare-fun bs!727826 () Bool)

(declare-fun d!1326189 () Bool)

(assert (= bs!727826 (and d!1326189 start!427504)))

(assert (=> bs!727826 (= (dynLambda!20758 lambda!148555 (tuple2!48865 hash!377 newBucket!200)) (noDuplicateKeys!623 (_2!27726 (tuple2!48865 hash!377 newBucket!200))))))

(declare-fun m!5061447 () Bool)

(assert (=> bs!727826 m!5061447))

(assert (=> b!4399114 d!1326189))

(declare-fun b_lambda!139597 () Bool)

(assert (= b_lambda!139563 (or start!427504 b_lambda!139597)))

(declare-fun bs!727827 () Bool)

(declare-fun d!1326191 () Bool)

(assert (= bs!727827 (and d!1326191 start!427504)))

(assert (=> bs!727827 (= (dynLambda!20758 lambda!148555 (h!54892 (toList!3229 lm!1707))) (noDuplicateKeys!623 (_2!27726 (h!54892 (toList!3229 lm!1707)))))))

(assert (=> bs!727827 m!5061409))

(assert (=> b!4399119 d!1326191))

(declare-fun b_lambda!139599 () Bool)

(assert (= b_lambda!139587 (or start!427504 b_lambda!139599)))

(declare-fun bs!727828 () Bool)

(declare-fun d!1326193 () Bool)

(assert (= bs!727828 (and d!1326193 start!427504)))

(assert (=> bs!727828 (= (dynLambda!20758 lambda!148555 (h!54892 (toList!3229 lt!1604708))) (noDuplicateKeys!623 (_2!27726 (h!54892 (toList!3229 lt!1604708)))))))

(declare-fun m!5061449 () Bool)

(assert (=> bs!727828 m!5061449))

(assert (=> b!4399335 d!1326193))

(check-sat (not b!4399301) (not b_lambda!139589) (not bm!306156) (not b!4399294) (not d!1326165) (not b_lambda!139597) (not b!4399330) (not b!4399317) (not bs!727823) (not b!4399323) (not d!1326079) (not b!4399315) (not d!1326143) (not b!4399302) (not b!4399058) (not d!1326067) (not d!1326071) (not b!4399292) (not bs!727825) (not d!1326163) (not bm!306158) tp_is_empty!25731 (not d!1326085) (not b!4399128) (not b!4399261) (not b!4399091) (not b!4399264) (not bm!306157) (not b!4399161) (not b!4399092) (not b!4399336) (not b!4399343) (not b!4399262) (not b!4399282) (not b!4399300) (not d!1326169) (not b!4399289) (not d!1326181) (not d!1326153) (not b!4399120) (not d!1326135) (not b!4399333) (not d!1326141) (not b!4399267) (not b!4399325) (not d!1326151) tp_is_empty!25729 (not b!4399178) (not d!1326167) (not d!1326157) (not b!4399316) (not d!1326147) (not b_lambda!139593) (not b!4399322) (not b_lambda!139591) (not bs!727828) (not d!1326171) (not d!1326037) (not d!1326145) (not d!1326175) (not b!4399139) (not b_lambda!139599) (not d!1326159) (not b_lambda!139595) (not b!4399263) (not b!4399260) (not d!1326139) (not b!4399281) (not b!4399297) (not d!1326077) (not b!4399314) (not b!4399312) (not b!4399320) (not b!4399329) (not b!4399348) (not b!4399321) (not b!4399268) (not d!1326149) (not d!1326155) (not bs!727824) (not bs!727826) (not b!4399326) (not b!4399291) (not d!1326057) (not b!4399273) (not b!4399331) (not bs!727827) (not b!4399324) (not d!1326073) (not b!4399338) (not d!1326173) (not d!1326133) (not b!4399313))
(check-sat)
(get-model)

(declare-fun d!1326273 () Bool)

(declare-fun c!748992 () Bool)

(assert (=> d!1326273 (= c!748992 (and ((_ is Cons!49269) (toList!3229 lt!1604729)) (= (_1!27726 (h!54892 (toList!3229 lt!1604729))) (_1!27726 (tuple2!48865 hash!377 newBucket!200)))))))

(declare-fun e!2739362 () Option!10608)

(assert (=> d!1326273 (= (getValueByKey!594 (toList!3229 lt!1604729) (_1!27726 (tuple2!48865 hash!377 newBucket!200))) e!2739362)))

(declare-fun b!4399500 () Bool)

(declare-fun e!2739363 () Option!10608)

(assert (=> b!4399500 (= e!2739363 None!10607)))

(declare-fun b!4399499 () Bool)

(assert (=> b!4399499 (= e!2739363 (getValueByKey!594 (t!356327 (toList!3229 lt!1604729)) (_1!27726 (tuple2!48865 hash!377 newBucket!200))))))

(declare-fun b!4399498 () Bool)

(assert (=> b!4399498 (= e!2739362 e!2739363)))

(declare-fun c!748993 () Bool)

(assert (=> b!4399498 (= c!748993 (and ((_ is Cons!49269) (toList!3229 lt!1604729)) (not (= (_1!27726 (h!54892 (toList!3229 lt!1604729))) (_1!27726 (tuple2!48865 hash!377 newBucket!200))))))))

(declare-fun b!4399497 () Bool)

(assert (=> b!4399497 (= e!2739362 (Some!10607 (_2!27726 (h!54892 (toList!3229 lt!1604729)))))))

(assert (= (and d!1326273 c!748992) b!4399497))

(assert (= (and d!1326273 (not c!748992)) b!4399498))

(assert (= (and b!4399498 c!748993) b!4399499))

(assert (= (and b!4399498 (not c!748993)) b!4399500))

(declare-fun m!5061643 () Bool)

(assert (=> b!4399499 m!5061643))

(assert (=> b!4399091 d!1326273))

(declare-fun d!1326275 () Bool)

(assert (=> d!1326275 (isDefined!7901 (getValueByKey!595 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918))))

(declare-fun lt!1604960 () Unit!78635)

(declare-fun choose!27568 (List!49392 K!10625) Unit!78635)

(assert (=> d!1326275 (= lt!1604960 (choose!27568 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918))))

(assert (=> d!1326275 (invariantList!748 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))))

(assert (=> d!1326275 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!504 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918) lt!1604960)))

(declare-fun bs!727886 () Bool)

(assert (= bs!727886 d!1326275))

(assert (=> bs!727886 m!5061295))

(assert (=> bs!727886 m!5061295))

(assert (=> bs!727886 m!5061297))

(declare-fun m!5061645 () Bool)

(assert (=> bs!727886 m!5061645))

(declare-fun m!5061647 () Bool)

(assert (=> bs!727886 m!5061647))

(assert (=> b!4399260 d!1326275))

(declare-fun d!1326277 () Bool)

(declare-fun isEmpty!28278 (Option!10609) Bool)

(assert (=> d!1326277 (= (isDefined!7901 (getValueByKey!595 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918)) (not (isEmpty!28278 (getValueByKey!595 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918))))))

(declare-fun bs!727887 () Bool)

(assert (= bs!727887 d!1326277))

(assert (=> bs!727887 m!5061295))

(declare-fun m!5061649 () Bool)

(assert (=> bs!727887 m!5061649))

(assert (=> b!4399260 d!1326277))

(declare-fun b!4399511 () Bool)

(declare-fun e!2739369 () Option!10609)

(assert (=> b!4399511 (= e!2739369 (getValueByKey!595 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) key!3918))))

(declare-fun b!4399510 () Bool)

(declare-fun e!2739368 () Option!10609)

(assert (=> b!4399510 (= e!2739368 e!2739369)))

(declare-fun c!748999 () Bool)

(assert (=> b!4399510 (= c!748999 (and ((_ is Cons!49268) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (not (= (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) key!3918))))))

(declare-fun b!4399509 () Bool)

(assert (=> b!4399509 (= e!2739368 (Some!10608 (_2!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))))))))

(declare-fun b!4399512 () Bool)

(assert (=> b!4399512 (= e!2739369 None!10608)))

(declare-fun d!1326279 () Bool)

(declare-fun c!748998 () Bool)

(assert (=> d!1326279 (= c!748998 (and ((_ is Cons!49268) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (= (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) key!3918)))))

(assert (=> d!1326279 (= (getValueByKey!595 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918) e!2739368)))

(assert (= (and d!1326279 c!748998) b!4399509))

(assert (= (and d!1326279 (not c!748998)) b!4399510))

(assert (= (and b!4399510 c!748999) b!4399511))

(assert (= (and b!4399510 (not c!748999)) b!4399512))

(declare-fun m!5061651 () Bool)

(assert (=> b!4399511 m!5061651))

(assert (=> b!4399260 d!1326279))

(declare-fun d!1326281 () Bool)

(assert (=> d!1326281 (contains!11657 (getKeysList!195 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) key!3918)))

(declare-fun lt!1604963 () Unit!78635)

(declare-fun choose!27569 (List!49392 K!10625) Unit!78635)

(assert (=> d!1326281 (= lt!1604963 (choose!27569 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918))))

(assert (=> d!1326281 (invariantList!748 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))))

(assert (=> d!1326281 (= (lemmaInListThenGetKeysListContains!192 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918) lt!1604963)))

(declare-fun bs!727888 () Bool)

(assert (= bs!727888 d!1326281))

(assert (=> bs!727888 m!5061289))

(assert (=> bs!727888 m!5061289))

(declare-fun m!5061653 () Bool)

(assert (=> bs!727888 m!5061653))

(declare-fun m!5061655 () Bool)

(assert (=> bs!727888 m!5061655))

(assert (=> bs!727888 m!5061647))

(assert (=> b!4399260 d!1326281))

(declare-fun d!1326283 () Bool)

(assert (=> d!1326283 (= (isDefined!7901 (getValueByKey!595 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918)) (not (isEmpty!28278 (getValueByKey!595 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918))))))

(declare-fun bs!727889 () Bool)

(assert (= bs!727889 d!1326283))

(assert (=> bs!727889 m!5061375))

(declare-fun m!5061657 () Bool)

(assert (=> bs!727889 m!5061657))

(assert (=> b!4399317 d!1326283))

(declare-fun b!4399515 () Bool)

(declare-fun e!2739371 () Option!10609)

(assert (=> b!4399515 (= e!2739371 (getValueByKey!595 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) key!3918))))

(declare-fun b!4399514 () Bool)

(declare-fun e!2739370 () Option!10609)

(assert (=> b!4399514 (= e!2739370 e!2739371)))

(declare-fun c!749001 () Bool)

(assert (=> b!4399514 (= c!749001 (and ((_ is Cons!49268) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (not (= (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) key!3918))))))

(declare-fun b!4399513 () Bool)

(assert (=> b!4399513 (= e!2739370 (Some!10608 (_2!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))))))

(declare-fun b!4399516 () Bool)

(assert (=> b!4399516 (= e!2739371 None!10608)))

(declare-fun d!1326285 () Bool)

(declare-fun c!749000 () Bool)

(assert (=> d!1326285 (= c!749000 (and ((_ is Cons!49268) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) key!3918)))))

(assert (=> d!1326285 (= (getValueByKey!595 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918) e!2739370)))

(assert (= (and d!1326285 c!749000) b!4399513))

(assert (= (and d!1326285 (not c!749000)) b!4399514))

(assert (= (and b!4399514 c!749001) b!4399515))

(assert (= (and b!4399514 (not c!749001)) b!4399516))

(declare-fun m!5061659 () Bool)

(assert (=> b!4399515 m!5061659))

(assert (=> b!4399317 d!1326285))

(declare-fun d!1326287 () Bool)

(declare-fun e!2739372 () Bool)

(assert (=> d!1326287 e!2739372))

(declare-fun res!1814404 () Bool)

(assert (=> d!1326287 (=> res!1814404 e!2739372)))

(declare-fun lt!1604966 () Bool)

(assert (=> d!1326287 (= res!1814404 (not lt!1604966))))

(declare-fun lt!1604967 () Bool)

(assert (=> d!1326287 (= lt!1604966 lt!1604967)))

(declare-fun lt!1604964 () Unit!78635)

(declare-fun e!2739373 () Unit!78635)

(assert (=> d!1326287 (= lt!1604964 e!2739373)))

(declare-fun c!749002 () Bool)

(assert (=> d!1326287 (= c!749002 lt!1604967)))

(assert (=> d!1326287 (= lt!1604967 (containsKey!929 (toList!3229 lt!1604729) (_1!27726 (tuple2!48865 hash!377 newBucket!200))))))

(assert (=> d!1326287 (= (contains!11654 lt!1604729 (_1!27726 (tuple2!48865 hash!377 newBucket!200))) lt!1604966)))

(declare-fun b!4399517 () Bool)

(declare-fun lt!1604965 () Unit!78635)

(assert (=> b!4399517 (= e!2739373 lt!1604965)))

(assert (=> b!4399517 (= lt!1604965 (lemmaContainsKeyImpliesGetValueByKeyDefined!505 (toList!3229 lt!1604729) (_1!27726 (tuple2!48865 hash!377 newBucket!200))))))

(assert (=> b!4399517 (isDefined!7902 (getValueByKey!594 (toList!3229 lt!1604729) (_1!27726 (tuple2!48865 hash!377 newBucket!200))))))

(declare-fun b!4399518 () Bool)

(declare-fun Unit!78661 () Unit!78635)

(assert (=> b!4399518 (= e!2739373 Unit!78661)))

(declare-fun b!4399519 () Bool)

(assert (=> b!4399519 (= e!2739372 (isDefined!7902 (getValueByKey!594 (toList!3229 lt!1604729) (_1!27726 (tuple2!48865 hash!377 newBucket!200)))))))

(assert (= (and d!1326287 c!749002) b!4399517))

(assert (= (and d!1326287 (not c!749002)) b!4399518))

(assert (= (and d!1326287 (not res!1814404)) b!4399519))

(declare-fun m!5061661 () Bool)

(assert (=> d!1326287 m!5061661))

(declare-fun m!5061663 () Bool)

(assert (=> b!4399517 m!5061663))

(assert (=> b!4399517 m!5061069))

(assert (=> b!4399517 m!5061069))

(declare-fun m!5061665 () Bool)

(assert (=> b!4399517 m!5061665))

(assert (=> b!4399519 m!5061069))

(assert (=> b!4399519 m!5061069))

(assert (=> b!4399519 m!5061665))

(assert (=> d!1326037 d!1326287))

(declare-fun d!1326289 () Bool)

(declare-fun c!749003 () Bool)

(assert (=> d!1326289 (= c!749003 (and ((_ is Cons!49269) lt!1604731) (= (_1!27726 (h!54892 lt!1604731)) (_1!27726 (tuple2!48865 hash!377 newBucket!200)))))))

(declare-fun e!2739374 () Option!10608)

(assert (=> d!1326289 (= (getValueByKey!594 lt!1604731 (_1!27726 (tuple2!48865 hash!377 newBucket!200))) e!2739374)))

(declare-fun b!4399523 () Bool)

(declare-fun e!2739375 () Option!10608)

(assert (=> b!4399523 (= e!2739375 None!10607)))

(declare-fun b!4399522 () Bool)

(assert (=> b!4399522 (= e!2739375 (getValueByKey!594 (t!356327 lt!1604731) (_1!27726 (tuple2!48865 hash!377 newBucket!200))))))

(declare-fun b!4399521 () Bool)

(assert (=> b!4399521 (= e!2739374 e!2739375)))

(declare-fun c!749004 () Bool)

(assert (=> b!4399521 (= c!749004 (and ((_ is Cons!49269) lt!1604731) (not (= (_1!27726 (h!54892 lt!1604731)) (_1!27726 (tuple2!48865 hash!377 newBucket!200))))))))

(declare-fun b!4399520 () Bool)

(assert (=> b!4399520 (= e!2739374 (Some!10607 (_2!27726 (h!54892 lt!1604731))))))

(assert (= (and d!1326289 c!749003) b!4399520))

(assert (= (and d!1326289 (not c!749003)) b!4399521))

(assert (= (and b!4399521 c!749004) b!4399522))

(assert (= (and b!4399521 (not c!749004)) b!4399523))

(declare-fun m!5061667 () Bool)

(assert (=> b!4399522 m!5061667))

(assert (=> d!1326037 d!1326289))

(declare-fun d!1326291 () Bool)

(assert (=> d!1326291 (= (getValueByKey!594 lt!1604731 (_1!27726 (tuple2!48865 hash!377 newBucket!200))) (Some!10607 (_2!27726 (tuple2!48865 hash!377 newBucket!200))))))

(declare-fun lt!1604970 () Unit!78635)

(declare-fun choose!27571 (List!49393 (_ BitVec 64) List!49392) Unit!78635)

(assert (=> d!1326291 (= lt!1604970 (choose!27571 lt!1604731 (_1!27726 (tuple2!48865 hash!377 newBucket!200)) (_2!27726 (tuple2!48865 hash!377 newBucket!200))))))

(declare-fun e!2739378 () Bool)

(assert (=> d!1326291 e!2739378))

(declare-fun res!1814409 () Bool)

(assert (=> d!1326291 (=> (not res!1814409) (not e!2739378))))

(assert (=> d!1326291 (= res!1814409 (isStrictlySorted!174 lt!1604731))))

(assert (=> d!1326291 (= (lemmaContainsTupThenGetReturnValue!343 lt!1604731 (_1!27726 (tuple2!48865 hash!377 newBucket!200)) (_2!27726 (tuple2!48865 hash!377 newBucket!200))) lt!1604970)))

(declare-fun b!4399528 () Bool)

(declare-fun res!1814410 () Bool)

(assert (=> b!4399528 (=> (not res!1814410) (not e!2739378))))

(assert (=> b!4399528 (= res!1814410 (containsKey!929 lt!1604731 (_1!27726 (tuple2!48865 hash!377 newBucket!200))))))

(declare-fun b!4399529 () Bool)

(assert (=> b!4399529 (= e!2739378 (contains!11653 lt!1604731 (tuple2!48865 (_1!27726 (tuple2!48865 hash!377 newBucket!200)) (_2!27726 (tuple2!48865 hash!377 newBucket!200)))))))

(assert (= (and d!1326291 res!1814409) b!4399528))

(assert (= (and b!4399528 res!1814410) b!4399529))

(assert (=> d!1326291 m!5061059))

(declare-fun m!5061669 () Bool)

(assert (=> d!1326291 m!5061669))

(declare-fun m!5061671 () Bool)

(assert (=> d!1326291 m!5061671))

(declare-fun m!5061673 () Bool)

(assert (=> b!4399528 m!5061673))

(declare-fun m!5061675 () Bool)

(assert (=> b!4399529 m!5061675))

(assert (=> d!1326037 d!1326291))

(declare-fun e!2739393 () Bool)

(declare-fun b!4399550 () Bool)

(declare-fun lt!1604973 () List!49393)

(assert (=> b!4399550 (= e!2739393 (contains!11653 lt!1604973 (tuple2!48865 (_1!27726 (tuple2!48865 hash!377 newBucket!200)) (_2!27726 (tuple2!48865 hash!377 newBucket!200)))))))

(declare-fun bm!306165 () Bool)

(declare-fun e!2739390 () List!49393)

(declare-fun call!306172 () List!49393)

(declare-fun c!749016 () Bool)

(declare-fun $colon$colon!748 (List!49393 tuple2!48864) List!49393)

(assert (=> bm!306165 (= call!306172 ($colon$colon!748 e!2739390 (ite c!749016 (h!54892 (toList!3229 lm!1707)) (tuple2!48865 (_1!27726 (tuple2!48865 hash!377 newBucket!200)) (_2!27726 (tuple2!48865 hash!377 newBucket!200))))))))

(declare-fun c!749014 () Bool)

(assert (=> bm!306165 (= c!749014 c!749016)))

(declare-fun c!749013 () Bool)

(declare-fun c!749015 () Bool)

(declare-fun b!4399551 () Bool)

(assert (=> b!4399551 (= e!2739390 (ite c!749015 (t!356327 (toList!3229 lm!1707)) (ite c!749013 (Cons!49269 (h!54892 (toList!3229 lm!1707)) (t!356327 (toList!3229 lm!1707))) Nil!49269)))))

(declare-fun b!4399552 () Bool)

(declare-fun e!2739389 () List!49393)

(declare-fun call!306170 () List!49393)

(assert (=> b!4399552 (= e!2739389 call!306170)))

(declare-fun d!1326293 () Bool)

(assert (=> d!1326293 e!2739393))

(declare-fun res!1814415 () Bool)

(assert (=> d!1326293 (=> (not res!1814415) (not e!2739393))))

(assert (=> d!1326293 (= res!1814415 (isStrictlySorted!174 lt!1604973))))

(declare-fun e!2739391 () List!49393)

(assert (=> d!1326293 (= lt!1604973 e!2739391)))

(assert (=> d!1326293 (= c!749016 (and ((_ is Cons!49269) (toList!3229 lm!1707)) (bvslt (_1!27726 (h!54892 (toList!3229 lm!1707))) (_1!27726 (tuple2!48865 hash!377 newBucket!200)))))))

(assert (=> d!1326293 (isStrictlySorted!174 (toList!3229 lm!1707))))

(assert (=> d!1326293 (= (insertStrictlySorted!202 (toList!3229 lm!1707) (_1!27726 (tuple2!48865 hash!377 newBucket!200)) (_2!27726 (tuple2!48865 hash!377 newBucket!200))) lt!1604973)))

(declare-fun b!4399553 () Bool)

(assert (=> b!4399553 (= c!749013 (and ((_ is Cons!49269) (toList!3229 lm!1707)) (bvsgt (_1!27726 (h!54892 (toList!3229 lm!1707))) (_1!27726 (tuple2!48865 hash!377 newBucket!200)))))))

(declare-fun e!2739392 () List!49393)

(assert (=> b!4399553 (= e!2739389 e!2739392)))

(declare-fun b!4399554 () Bool)

(declare-fun res!1814416 () Bool)

(assert (=> b!4399554 (=> (not res!1814416) (not e!2739393))))

(assert (=> b!4399554 (= res!1814416 (containsKey!929 lt!1604973 (_1!27726 (tuple2!48865 hash!377 newBucket!200))))))

(declare-fun b!4399555 () Bool)

(declare-fun call!306171 () List!49393)

(assert (=> b!4399555 (= e!2739392 call!306171)))

(declare-fun b!4399556 () Bool)

(assert (=> b!4399556 (= e!2739391 e!2739389)))

(assert (=> b!4399556 (= c!749015 (and ((_ is Cons!49269) (toList!3229 lm!1707)) (= (_1!27726 (h!54892 (toList!3229 lm!1707))) (_1!27726 (tuple2!48865 hash!377 newBucket!200)))))))

(declare-fun b!4399557 () Bool)

(assert (=> b!4399557 (= e!2739390 (insertStrictlySorted!202 (t!356327 (toList!3229 lm!1707)) (_1!27726 (tuple2!48865 hash!377 newBucket!200)) (_2!27726 (tuple2!48865 hash!377 newBucket!200))))))

(declare-fun bm!306166 () Bool)

(assert (=> bm!306166 (= call!306170 call!306172)))

(declare-fun b!4399558 () Bool)

(assert (=> b!4399558 (= e!2739392 call!306171)))

(declare-fun bm!306167 () Bool)

(assert (=> bm!306167 (= call!306171 call!306170)))

(declare-fun b!4399559 () Bool)

(assert (=> b!4399559 (= e!2739391 call!306172)))

(assert (= (and d!1326293 c!749016) b!4399559))

(assert (= (and d!1326293 (not c!749016)) b!4399556))

(assert (= (and b!4399556 c!749015) b!4399552))

(assert (= (and b!4399556 (not c!749015)) b!4399553))

(assert (= (and b!4399553 c!749013) b!4399558))

(assert (= (and b!4399553 (not c!749013)) b!4399555))

(assert (= (or b!4399558 b!4399555) bm!306167))

(assert (= (or b!4399552 bm!306167) bm!306166))

(assert (= (or b!4399559 bm!306166) bm!306165))

(assert (= (and bm!306165 c!749014) b!4399557))

(assert (= (and bm!306165 (not c!749014)) b!4399551))

(assert (= (and d!1326293 res!1814415) b!4399554))

(assert (= (and b!4399554 res!1814416) b!4399550))

(declare-fun m!5061677 () Bool)

(assert (=> d!1326293 m!5061677))

(assert (=> d!1326293 m!5061333))

(declare-fun m!5061679 () Bool)

(assert (=> bm!306165 m!5061679))

(declare-fun m!5061681 () Bool)

(assert (=> b!4399554 m!5061681))

(declare-fun m!5061683 () Bool)

(assert (=> b!4399550 m!5061683))

(declare-fun m!5061685 () Bool)

(assert (=> b!4399557 m!5061685))

(assert (=> d!1326037 d!1326293))

(declare-fun bs!728010 () Bool)

(declare-fun b!4399742 () Bool)

(assert (= bs!728010 (and b!4399742 d!1326157)))

(declare-fun lambda!148686 () Int)

(assert (=> bs!728010 (not (= lambda!148686 lambda!148580))))

(assert (=> b!4399742 true))

(declare-fun bs!728011 () Bool)

(declare-fun b!4399744 () Bool)

(assert (= bs!728011 (and b!4399744 d!1326157)))

(declare-fun lambda!148687 () Int)

(assert (=> bs!728011 (not (= lambda!148687 lambda!148580))))

(declare-fun bs!728012 () Bool)

(assert (= bs!728012 (and b!4399744 b!4399742)))

(assert (=> bs!728012 (= lambda!148687 lambda!148686)))

(assert (=> b!4399744 true))

(declare-fun lambda!148688 () Int)

(assert (=> bs!728011 (not (= lambda!148688 lambda!148580))))

(declare-fun lt!1605154 () ListMap!2473)

(assert (=> bs!728012 (= (= lt!1605154 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148688 lambda!148686))))

(assert (=> b!4399744 (= (= lt!1605154 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148688 lambda!148687))))

(assert (=> b!4399744 true))

(declare-fun bs!728013 () Bool)

(declare-fun d!1326295 () Bool)

(assert (= bs!728013 (and d!1326295 d!1326157)))

(declare-fun lambda!148689 () Int)

(assert (=> bs!728013 (not (= lambda!148689 lambda!148580))))

(declare-fun bs!728014 () Bool)

(assert (= bs!728014 (and d!1326295 b!4399742)))

(declare-fun lt!1605156 () ListMap!2473)

(assert (=> bs!728014 (= (= lt!1605156 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148689 lambda!148686))))

(declare-fun bs!728015 () Bool)

(assert (= bs!728015 (and d!1326295 b!4399744)))

(assert (=> bs!728015 (= (= lt!1605156 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148689 lambda!148687))))

(assert (=> bs!728015 (= (= lt!1605156 lt!1605154) (= lambda!148689 lambda!148688))))

(assert (=> d!1326295 true))

(declare-fun bm!306198 () Bool)

(declare-fun call!306205 () Unit!78635)

(declare-fun lemmaContainsAllItsOwnKeys!127 (ListMap!2473) Unit!78635)

(assert (=> bm!306198 (= call!306205 (lemmaContainsAllItsOwnKeys!127 (extractMap!682 (t!356327 (toList!3229 lm!1707)))))))

(declare-fun c!749053 () Bool)

(declare-fun lt!1605164 () ListMap!2473)

(declare-fun call!306203 () Bool)

(declare-fun bm!306199 () Bool)

(assert (=> bm!306199 (= call!306203 (forall!9358 (ite c!749053 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (toList!3230 lt!1605164)) (ite c!749053 lambda!148686 lambda!148688)))))

(declare-fun e!2739522 () ListMap!2473)

(assert (=> b!4399742 (= e!2739522 (extractMap!682 (t!356327 (toList!3229 lm!1707))))))

(declare-fun lt!1605159 () Unit!78635)

(assert (=> b!4399742 (= lt!1605159 call!306205)))

(declare-fun call!306204 () Bool)

(assert (=> b!4399742 call!306204))

(declare-fun lt!1605160 () Unit!78635)

(assert (=> b!4399742 (= lt!1605160 lt!1605159)))

(assert (=> b!4399742 call!306203))

(declare-fun lt!1605158 () Unit!78635)

(declare-fun Unit!78673 () Unit!78635)

(assert (=> b!4399742 (= lt!1605158 Unit!78673)))

(declare-fun b!4399743 () Bool)

(declare-fun e!2739523 () Bool)

(assert (=> b!4399743 (= e!2739523 (invariantList!748 (toList!3230 lt!1605156)))))

(declare-fun bm!306200 () Bool)

(assert (=> bm!306200 (= call!306204 (forall!9358 (ite c!749053 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (_2!27726 (h!54892 (toList!3229 lm!1707)))) (ite c!749053 lambda!148686 lambda!148688)))))

(declare-fun b!4399745 () Bool)

(declare-fun e!2739524 () Bool)

(assert (=> b!4399745 (= e!2739524 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) lambda!148688))))

(declare-fun b!4399746 () Bool)

(declare-fun res!1814523 () Bool)

(assert (=> b!4399746 (=> (not res!1814523) (not e!2739523))))

(assert (=> b!4399746 (= res!1814523 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) lambda!148689))))

(assert (=> d!1326295 e!2739523))

(declare-fun res!1814521 () Bool)

(assert (=> d!1326295 (=> (not res!1814521) (not e!2739523))))

(assert (=> d!1326295 (= res!1814521 (forall!9358 (_2!27726 (h!54892 (toList!3229 lm!1707))) lambda!148689))))

(assert (=> d!1326295 (= lt!1605156 e!2739522)))

(assert (=> d!1326295 (= c!749053 ((_ is Nil!49268) (_2!27726 (h!54892 (toList!3229 lm!1707)))))))

(assert (=> d!1326295 (noDuplicateKeys!623 (_2!27726 (h!54892 (toList!3229 lm!1707))))))

(assert (=> d!1326295 (= (addToMapMapFromBucket!293 (_2!27726 (h!54892 (toList!3229 lm!1707))) (extractMap!682 (t!356327 (toList!3229 lm!1707)))) lt!1605156)))

(assert (=> b!4399744 (= e!2739522 lt!1605154)))

(declare-fun +!864 (ListMap!2473 tuple2!48862) ListMap!2473)

(assert (=> b!4399744 (= lt!1605164 (+!864 (extractMap!682 (t!356327 (toList!3229 lm!1707))) (h!54891 (_2!27726 (h!54892 (toList!3229 lm!1707))))))))

(assert (=> b!4399744 (= lt!1605154 (addToMapMapFromBucket!293 (t!356326 (_2!27726 (h!54892 (toList!3229 lm!1707)))) (+!864 (extractMap!682 (t!356327 (toList!3229 lm!1707))) (h!54891 (_2!27726 (h!54892 (toList!3229 lm!1707)))))))))

(declare-fun lt!1605167 () Unit!78635)

(assert (=> b!4399744 (= lt!1605167 call!306205)))

(assert (=> b!4399744 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) lambda!148687)))

(declare-fun lt!1605162 () Unit!78635)

(assert (=> b!4399744 (= lt!1605162 lt!1605167)))

(assert (=> b!4399744 call!306203))

(declare-fun lt!1605166 () Unit!78635)

(declare-fun Unit!78674 () Unit!78635)

(assert (=> b!4399744 (= lt!1605166 Unit!78674)))

(assert (=> b!4399744 (forall!9358 (t!356326 (_2!27726 (h!54892 (toList!3229 lm!1707)))) lambda!148688)))

(declare-fun lt!1605163 () Unit!78635)

(declare-fun Unit!78675 () Unit!78635)

(assert (=> b!4399744 (= lt!1605163 Unit!78675)))

(declare-fun lt!1605157 () Unit!78635)

(declare-fun Unit!78676 () Unit!78635)

(assert (=> b!4399744 (= lt!1605157 Unit!78676)))

(declare-fun lt!1605172 () Unit!78635)

(declare-fun forallContained!1994 (List!49392 Int tuple2!48862) Unit!78635)

(assert (=> b!4399744 (= lt!1605172 (forallContained!1994 (toList!3230 lt!1605164) lambda!148688 (h!54891 (_2!27726 (h!54892 (toList!3229 lm!1707))))))))

(assert (=> b!4399744 (contains!11655 lt!1605164 (_1!27725 (h!54891 (_2!27726 (h!54892 (toList!3229 lm!1707))))))))

(declare-fun lt!1605168 () Unit!78635)

(declare-fun Unit!78677 () Unit!78635)

(assert (=> b!4399744 (= lt!1605168 Unit!78677)))

(assert (=> b!4399744 (contains!11655 lt!1605154 (_1!27725 (h!54891 (_2!27726 (h!54892 (toList!3229 lm!1707))))))))

(declare-fun lt!1605171 () Unit!78635)

(declare-fun Unit!78678 () Unit!78635)

(assert (=> b!4399744 (= lt!1605171 Unit!78678)))

(assert (=> b!4399744 call!306204))

(declare-fun lt!1605165 () Unit!78635)

(declare-fun Unit!78679 () Unit!78635)

(assert (=> b!4399744 (= lt!1605165 Unit!78679)))

(assert (=> b!4399744 (forall!9358 (toList!3230 lt!1605164) lambda!148688)))

(declare-fun lt!1605173 () Unit!78635)

(declare-fun Unit!78680 () Unit!78635)

(assert (=> b!4399744 (= lt!1605173 Unit!78680)))

(declare-fun lt!1605170 () Unit!78635)

(declare-fun Unit!78681 () Unit!78635)

(assert (=> b!4399744 (= lt!1605170 Unit!78681)))

(declare-fun lt!1605155 () Unit!78635)

(declare-fun addForallContainsKeyThenBeforeAdding!127 (ListMap!2473 ListMap!2473 K!10625 V!10871) Unit!78635)

(assert (=> b!4399744 (= lt!1605155 (addForallContainsKeyThenBeforeAdding!127 (extractMap!682 (t!356327 (toList!3229 lm!1707))) lt!1605154 (_1!27725 (h!54891 (_2!27726 (h!54892 (toList!3229 lm!1707))))) (_2!27725 (h!54891 (_2!27726 (h!54892 (toList!3229 lm!1707)))))))))

(assert (=> b!4399744 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) lambda!148688)))

(declare-fun lt!1605169 () Unit!78635)

(assert (=> b!4399744 (= lt!1605169 lt!1605155)))

(assert (=> b!4399744 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) lambda!148688)))

(declare-fun lt!1605174 () Unit!78635)

(declare-fun Unit!78682 () Unit!78635)

(assert (=> b!4399744 (= lt!1605174 Unit!78682)))

(declare-fun res!1814522 () Bool)

(assert (=> b!4399744 (= res!1814522 (forall!9358 (_2!27726 (h!54892 (toList!3229 lm!1707))) lambda!148688))))

(assert (=> b!4399744 (=> (not res!1814522) (not e!2739524))))

(assert (=> b!4399744 e!2739524))

(declare-fun lt!1605161 () Unit!78635)

(declare-fun Unit!78683 () Unit!78635)

(assert (=> b!4399744 (= lt!1605161 Unit!78683)))

(assert (= (and d!1326295 c!749053) b!4399742))

(assert (= (and d!1326295 (not c!749053)) b!4399744))

(assert (= (and b!4399744 res!1814522) b!4399745))

(assert (= (or b!4399742 b!4399744) bm!306198))

(assert (= (or b!4399742 b!4399744) bm!306199))

(assert (= (or b!4399742 b!4399744) bm!306200))

(assert (= (and d!1326295 res!1814521) b!4399746))

(assert (= (and b!4399746 res!1814523) b!4399743))

(assert (=> b!4399744 m!5060957))

(declare-fun m!5061999 () Bool)

(assert (=> b!4399744 m!5061999))

(declare-fun m!5062001 () Bool)

(assert (=> b!4399744 m!5062001))

(assert (=> b!4399744 m!5060957))

(declare-fun m!5062003 () Bool)

(assert (=> b!4399744 m!5062003))

(declare-fun m!5062005 () Bool)

(assert (=> b!4399744 m!5062005))

(declare-fun m!5062007 () Bool)

(assert (=> b!4399744 m!5062007))

(declare-fun m!5062009 () Bool)

(assert (=> b!4399744 m!5062009))

(declare-fun m!5062011 () Bool)

(assert (=> b!4399744 m!5062011))

(declare-fun m!5062013 () Bool)

(assert (=> b!4399744 m!5062013))

(declare-fun m!5062015 () Bool)

(assert (=> b!4399744 m!5062015))

(assert (=> b!4399744 m!5061999))

(declare-fun m!5062017 () Bool)

(assert (=> b!4399744 m!5062017))

(declare-fun m!5062019 () Bool)

(assert (=> b!4399744 m!5062019))

(assert (=> b!4399744 m!5062019))

(declare-fun m!5062021 () Bool)

(assert (=> b!4399743 m!5062021))

(assert (=> bm!306198 m!5060957))

(declare-fun m!5062023 () Bool)

(assert (=> bm!306198 m!5062023))

(declare-fun m!5062025 () Bool)

(assert (=> d!1326295 m!5062025))

(assert (=> d!1326295 m!5061409))

(declare-fun m!5062027 () Bool)

(assert (=> bm!306200 m!5062027))

(declare-fun m!5062029 () Bool)

(assert (=> b!4399746 m!5062029))

(assert (=> b!4399745 m!5062019))

(declare-fun m!5062031 () Bool)

(assert (=> bm!306199 m!5062031))

(assert (=> b!4399273 d!1326295))

(assert (=> b!4399273 d!1326169))

(declare-fun d!1326441 () Bool)

(declare-fun res!1814524 () Bool)

(declare-fun e!2739525 () Bool)

(assert (=> d!1326441 (=> res!1814524 e!2739525)))

(assert (=> d!1326441 (= res!1814524 ((_ is Nil!49269) (toList!3229 (+!862 lm!1707 (tuple2!48865 hash!377 newBucket!200)))))))

(assert (=> d!1326441 (= (forall!9356 (toList!3229 (+!862 lm!1707 (tuple2!48865 hash!377 newBucket!200))) lambda!148555) e!2739525)))

(declare-fun b!4399749 () Bool)

(declare-fun e!2739526 () Bool)

(assert (=> b!4399749 (= e!2739525 e!2739526)))

(declare-fun res!1814525 () Bool)

(assert (=> b!4399749 (=> (not res!1814525) (not e!2739526))))

(assert (=> b!4399749 (= res!1814525 (dynLambda!20758 lambda!148555 (h!54892 (toList!3229 (+!862 lm!1707 (tuple2!48865 hash!377 newBucket!200))))))))

(declare-fun b!4399750 () Bool)

(assert (=> b!4399750 (= e!2739526 (forall!9356 (t!356327 (toList!3229 (+!862 lm!1707 (tuple2!48865 hash!377 newBucket!200)))) lambda!148555))))

(assert (= (and d!1326441 (not res!1814524)) b!4399749))

(assert (= (and b!4399749 res!1814525) b!4399750))

(declare-fun b_lambda!139653 () Bool)

(assert (=> (not b_lambda!139653) (not b!4399749)))

(declare-fun m!5062033 () Bool)

(assert (=> b!4399749 m!5062033))

(declare-fun m!5062035 () Bool)

(assert (=> b!4399750 m!5062035))

(assert (=> d!1326057 d!1326441))

(assert (=> d!1326057 d!1326037))

(declare-fun d!1326443 () Bool)

(assert (=> d!1326443 (forall!9356 (toList!3229 (+!862 lm!1707 (tuple2!48865 hash!377 newBucket!200))) lambda!148555)))

(assert (=> d!1326443 true))

(declare-fun _$31!322 () Unit!78635)

(assert (=> d!1326443 (= (choose!27559 lm!1707 lambda!148555 hash!377 newBucket!200) _$31!322)))

(declare-fun bs!728016 () Bool)

(assert (= bs!728016 d!1326443))

(assert (=> bs!728016 m!5060975))

(assert (=> bs!728016 m!5061089))

(assert (=> d!1326057 d!1326443))

(assert (=> d!1326057 d!1326063))

(declare-fun d!1326445 () Bool)

(assert (=> d!1326445 (= (get!16038 (getValueByKey!594 (toList!3229 lt!1604708) hash!377)) (v!43701 (getValueByKey!594 (toList!3229 lt!1604708) hash!377)))))

(assert (=> d!1326077 d!1326445))

(declare-fun d!1326447 () Bool)

(declare-fun c!749054 () Bool)

(assert (=> d!1326447 (= c!749054 (and ((_ is Cons!49269) (toList!3229 lt!1604708)) (= (_1!27726 (h!54892 (toList!3229 lt!1604708))) hash!377)))))

(declare-fun e!2739527 () Option!10608)

(assert (=> d!1326447 (= (getValueByKey!594 (toList!3229 lt!1604708) hash!377) e!2739527)))

(declare-fun b!4399755 () Bool)

(declare-fun e!2739528 () Option!10608)

(assert (=> b!4399755 (= e!2739528 None!10607)))

(declare-fun b!4399754 () Bool)

(assert (=> b!4399754 (= e!2739528 (getValueByKey!594 (t!356327 (toList!3229 lt!1604708)) hash!377))))

(declare-fun b!4399753 () Bool)

(assert (=> b!4399753 (= e!2739527 e!2739528)))

(declare-fun c!749055 () Bool)

(assert (=> b!4399753 (= c!749055 (and ((_ is Cons!49269) (toList!3229 lt!1604708)) (not (= (_1!27726 (h!54892 (toList!3229 lt!1604708))) hash!377))))))

(declare-fun b!4399752 () Bool)

(assert (=> b!4399752 (= e!2739527 (Some!10607 (_2!27726 (h!54892 (toList!3229 lt!1604708)))))))

(assert (= (and d!1326447 c!749054) b!4399752))

(assert (= (and d!1326447 (not c!749054)) b!4399753))

(assert (= (and b!4399753 c!749055) b!4399754))

(assert (= (and b!4399753 (not c!749055)) b!4399755))

(declare-fun m!5062037 () Bool)

(assert (=> b!4399754 m!5062037))

(assert (=> d!1326077 d!1326447))

(declare-fun d!1326449 () Bool)

(declare-fun c!749058 () Bool)

(assert (=> d!1326449 (= c!749058 ((_ is Nil!49269) (toList!3229 lt!1604708)))))

(declare-fun e!2739531 () (InoxSet tuple2!48864))

(assert (=> d!1326449 (= (content!7864 (toList!3229 lt!1604708)) e!2739531)))

(declare-fun b!4399760 () Bool)

(assert (=> b!4399760 (= e!2739531 ((as const (Array tuple2!48864 Bool)) false))))

(declare-fun b!4399761 () Bool)

(assert (=> b!4399761 (= e!2739531 ((_ map or) (store ((as const (Array tuple2!48864 Bool)) false) (h!54892 (toList!3229 lt!1604708)) true) (content!7864 (t!356327 (toList!3229 lt!1604708)))))))

(assert (= (and d!1326449 c!749058) b!4399760))

(assert (= (and d!1326449 (not c!749058)) b!4399761))

(declare-fun m!5062039 () Bool)

(assert (=> b!4399761 m!5062039))

(declare-fun m!5062041 () Bool)

(assert (=> b!4399761 m!5062041))

(assert (=> d!1326067 d!1326449))

(declare-fun d!1326451 () Bool)

(declare-fun res!1814530 () Bool)

(declare-fun e!2739536 () Bool)

(assert (=> d!1326451 (=> res!1814530 e!2739536)))

(assert (=> d!1326451 (= res!1814530 (and ((_ is Cons!49268) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (= (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) key!3918)))))

(assert (=> d!1326451 (= (containsKey!928 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918) e!2739536)))

(declare-fun b!4399766 () Bool)

(declare-fun e!2739537 () Bool)

(assert (=> b!4399766 (= e!2739536 e!2739537)))

(declare-fun res!1814531 () Bool)

(assert (=> b!4399766 (=> (not res!1814531) (not e!2739537))))

(assert (=> b!4399766 (= res!1814531 ((_ is Cons!49268) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))))))

(declare-fun b!4399767 () Bool)

(assert (=> b!4399767 (= e!2739537 (containsKey!928 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) key!3918))))

(assert (= (and d!1326451 (not res!1814530)) b!4399766))

(assert (= (and b!4399766 res!1814531) b!4399767))

(declare-fun m!5062043 () Bool)

(assert (=> b!4399767 m!5062043))

(assert (=> b!4399261 d!1326451))

(declare-fun d!1326453 () Bool)

(assert (=> d!1326453 (containsKey!928 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918)))

(declare-fun lt!1605177 () Unit!78635)

(declare-fun choose!27573 (List!49392 K!10625) Unit!78635)

(assert (=> d!1326453 (= lt!1605177 (choose!27573 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918))))

(assert (=> d!1326453 (invariantList!748 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))))

(assert (=> d!1326453 (= (lemmaInGetKeysListThenContainsKey!193 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) key!3918) lt!1605177)))

(declare-fun bs!728017 () Bool)

(assert (= bs!728017 d!1326453))

(assert (=> bs!728017 m!5061287))

(declare-fun m!5062045 () Bool)

(assert (=> bs!728017 m!5062045))

(assert (=> bs!728017 m!5061647))

(assert (=> b!4399261 d!1326453))

(declare-fun lt!1605178 () Bool)

(declare-fun d!1326455 () Bool)

(assert (=> d!1326455 (= lt!1605178 (select (content!7864 (toList!3229 lm!1707)) (tuple2!48865 hash!377 lt!1604699)))))

(declare-fun e!2739538 () Bool)

(assert (=> d!1326455 (= lt!1605178 e!2739538)))

(declare-fun res!1814532 () Bool)

(assert (=> d!1326455 (=> (not res!1814532) (not e!2739538))))

(assert (=> d!1326455 (= res!1814532 ((_ is Cons!49269) (toList!3229 lm!1707)))))

(assert (=> d!1326455 (= (contains!11653 (toList!3229 lm!1707) (tuple2!48865 hash!377 lt!1604699)) lt!1605178)))

(declare-fun b!4399768 () Bool)

(declare-fun e!2739539 () Bool)

(assert (=> b!4399768 (= e!2739538 e!2739539)))

(declare-fun res!1814533 () Bool)

(assert (=> b!4399768 (=> res!1814533 e!2739539)))

(assert (=> b!4399768 (= res!1814533 (= (h!54892 (toList!3229 lm!1707)) (tuple2!48865 hash!377 lt!1604699)))))

(declare-fun b!4399769 () Bool)

(assert (=> b!4399769 (= e!2739539 (contains!11653 (t!356327 (toList!3229 lm!1707)) (tuple2!48865 hash!377 lt!1604699)))))

(assert (= (and d!1326455 res!1814532) b!4399768))

(assert (= (and b!4399768 (not res!1814533)) b!4399769))

(assert (=> d!1326455 m!5061343))

(declare-fun m!5062047 () Bool)

(assert (=> d!1326455 m!5062047))

(declare-fun m!5062049 () Bool)

(assert (=> b!4399769 m!5062049))

(assert (=> d!1326151 d!1326455))

(declare-fun d!1326457 () Bool)

(assert (=> d!1326457 (contains!11653 (toList!3229 lm!1707) (tuple2!48865 hash!377 lt!1604699))))

(assert (=> d!1326457 true))

(declare-fun _$14!891 () Unit!78635)

(assert (=> d!1326457 (= (choose!27561 (toList!3229 lm!1707) hash!377 lt!1604699) _$14!891)))

(declare-fun bs!728018 () Bool)

(assert (= bs!728018 d!1326457))

(assert (=> bs!728018 m!5061349))

(assert (=> d!1326151 d!1326457))

(declare-fun d!1326459 () Bool)

(declare-fun res!1814538 () Bool)

(declare-fun e!2739544 () Bool)

(assert (=> d!1326459 (=> res!1814538 e!2739544)))

(assert (=> d!1326459 (= res!1814538 (or ((_ is Nil!49269) (toList!3229 lm!1707)) ((_ is Nil!49269) (t!356327 (toList!3229 lm!1707)))))))

(assert (=> d!1326459 (= (isStrictlySorted!174 (toList!3229 lm!1707)) e!2739544)))

(declare-fun b!4399774 () Bool)

(declare-fun e!2739545 () Bool)

(assert (=> b!4399774 (= e!2739544 e!2739545)))

(declare-fun res!1814539 () Bool)

(assert (=> b!4399774 (=> (not res!1814539) (not e!2739545))))

(assert (=> b!4399774 (= res!1814539 (bvslt (_1!27726 (h!54892 (toList!3229 lm!1707))) (_1!27726 (h!54892 (t!356327 (toList!3229 lm!1707))))))))

(declare-fun b!4399775 () Bool)

(assert (=> b!4399775 (= e!2739545 (isStrictlySorted!174 (t!356327 (toList!3229 lm!1707))))))

(assert (= (and d!1326459 (not res!1814538)) b!4399774))

(assert (= (and b!4399774 res!1814539) b!4399775))

(declare-fun m!5062051 () Bool)

(assert (=> b!4399775 m!5062051))

(assert (=> d!1326151 d!1326459))

(declare-fun d!1326461 () Bool)

(declare-fun res!1814540 () Bool)

(declare-fun e!2739546 () Bool)

(assert (=> d!1326461 (=> res!1814540 e!2739546)))

(assert (=> d!1326461 (= res!1814540 (not ((_ is Cons!49268) (_2!27726 (h!54892 (toList!3229 lt!1604702))))))))

(assert (=> d!1326461 (= (noDuplicateKeys!623 (_2!27726 (h!54892 (toList!3229 lt!1604702)))) e!2739546)))

(declare-fun b!4399776 () Bool)

(declare-fun e!2739547 () Bool)

(assert (=> b!4399776 (= e!2739546 e!2739547)))

(declare-fun res!1814541 () Bool)

(assert (=> b!4399776 (=> (not res!1814541) (not e!2739547))))

(assert (=> b!4399776 (= res!1814541 (not (containsKey!925 (t!356326 (_2!27726 (h!54892 (toList!3229 lt!1604702)))) (_1!27725 (h!54891 (_2!27726 (h!54892 (toList!3229 lt!1604702))))))))))

(declare-fun b!4399777 () Bool)

(assert (=> b!4399777 (= e!2739547 (noDuplicateKeys!623 (t!356326 (_2!27726 (h!54892 (toList!3229 lt!1604702))))))))

(assert (= (and d!1326461 (not res!1814540)) b!4399776))

(assert (= (and b!4399776 res!1814541) b!4399777))

(declare-fun m!5062053 () Bool)

(assert (=> b!4399776 m!5062053))

(declare-fun m!5062055 () Bool)

(assert (=> b!4399777 m!5062055))

(assert (=> bs!727824 d!1326461))

(declare-fun d!1326463 () Bool)

(declare-fun lt!1605181 () Bool)

(declare-fun content!7866 (List!49395) (InoxSet K!10625))

(assert (=> d!1326463 (= lt!1605181 (select (content!7866 (keys!16741 (extractMap!682 (toList!3229 lm!1707)))) key!3918))))

(declare-fun e!2739553 () Bool)

(assert (=> d!1326463 (= lt!1605181 e!2739553)))

(declare-fun res!1814547 () Bool)

(assert (=> d!1326463 (=> (not res!1814547) (not e!2739553))))

(assert (=> d!1326463 (= res!1814547 ((_ is Cons!49271) (keys!16741 (extractMap!682 (toList!3229 lm!1707)))))))

(assert (=> d!1326463 (= (contains!11657 (keys!16741 (extractMap!682 (toList!3229 lm!1707))) key!3918) lt!1605181)))

(declare-fun b!4399782 () Bool)

(declare-fun e!2739552 () Bool)

(assert (=> b!4399782 (= e!2739553 e!2739552)))

(declare-fun res!1814546 () Bool)

(assert (=> b!4399782 (=> res!1814546 e!2739552)))

(assert (=> b!4399782 (= res!1814546 (= (h!54896 (keys!16741 (extractMap!682 (toList!3229 lm!1707)))) key!3918))))

(declare-fun b!4399783 () Bool)

(assert (=> b!4399783 (= e!2739552 (contains!11657 (t!356329 (keys!16741 (extractMap!682 (toList!3229 lm!1707)))) key!3918))))

(assert (= (and d!1326463 res!1814547) b!4399782))

(assert (= (and b!4399782 (not res!1814546)) b!4399783))

(assert (=> d!1326463 m!5061301))

(declare-fun m!5062057 () Bool)

(assert (=> d!1326463 m!5062057))

(declare-fun m!5062059 () Bool)

(assert (=> d!1326463 m!5062059))

(declare-fun m!5062061 () Bool)

(assert (=> b!4399783 m!5062061))

(assert (=> b!4399263 d!1326463))

(declare-fun b!4399791 () Bool)

(assert (=> b!4399791 true))

(declare-fun d!1326465 () Bool)

(declare-fun e!2739556 () Bool)

(assert (=> d!1326465 e!2739556))

(declare-fun res!1814554 () Bool)

(assert (=> d!1326465 (=> (not res!1814554) (not e!2739556))))

(declare-fun lt!1605184 () List!49395)

(declare-fun noDuplicate!636 (List!49395) Bool)

(assert (=> d!1326465 (= res!1814554 (noDuplicate!636 lt!1605184))))

(assert (=> d!1326465 (= lt!1605184 (getKeysList!195 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))))))

(assert (=> d!1326465 (= (keys!16741 (extractMap!682 (toList!3229 lm!1707))) lt!1605184)))

(declare-fun b!4399790 () Bool)

(declare-fun res!1814556 () Bool)

(assert (=> b!4399790 (=> (not res!1814556) (not e!2739556))))

(declare-fun length!128 (List!49395) Int)

(declare-fun length!129 (List!49392) Int)

(assert (=> b!4399790 (= res!1814556 (= (length!128 lt!1605184) (length!129 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))))))

(declare-fun res!1814555 () Bool)

(assert (=> b!4399791 (=> (not res!1814555) (not e!2739556))))

(declare-fun lambda!148694 () Int)

(declare-fun forall!9360 (List!49395 Int) Bool)

(assert (=> b!4399791 (= res!1814555 (forall!9360 lt!1605184 lambda!148694))))

(declare-fun b!4399792 () Bool)

(declare-fun lambda!148695 () Int)

(declare-fun map!10744 (List!49392 Int) List!49395)

(assert (=> b!4399792 (= e!2739556 (= (content!7866 lt!1605184) (content!7866 (map!10744 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) lambda!148695))))))

(assert (= (and d!1326465 res!1814554) b!4399790))

(assert (= (and b!4399790 res!1814556) b!4399791))

(assert (= (and b!4399791 res!1814555) b!4399792))

(declare-fun m!5062063 () Bool)

(assert (=> d!1326465 m!5062063))

(assert (=> d!1326465 m!5061289))

(declare-fun m!5062065 () Bool)

(assert (=> b!4399790 m!5062065))

(declare-fun m!5062067 () Bool)

(assert (=> b!4399790 m!5062067))

(declare-fun m!5062069 () Bool)

(assert (=> b!4399791 m!5062069))

(declare-fun m!5062071 () Bool)

(assert (=> b!4399792 m!5062071))

(declare-fun m!5062073 () Bool)

(assert (=> b!4399792 m!5062073))

(assert (=> b!4399792 m!5062073))

(declare-fun m!5062075 () Bool)

(assert (=> b!4399792 m!5062075))

(assert (=> b!4399263 d!1326465))

(declare-fun bs!728019 () Bool)

(declare-fun b!4399821 () Bool)

(assert (= bs!728019 (and b!4399821 b!4399791)))

(declare-fun lambda!148704 () Int)

(assert (=> bs!728019 (= (= (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (= lambda!148704 lambda!148694))))

(assert (=> b!4399821 true))

(declare-fun bs!728020 () Bool)

(declare-fun b!4399813 () Bool)

(assert (= bs!728020 (and b!4399813 b!4399791)))

(declare-fun lambda!148705 () Int)

(assert (=> bs!728020 (= (= (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (= lambda!148705 lambda!148694))))

(declare-fun bs!728021 () Bool)

(assert (= bs!728021 (and b!4399813 b!4399821)))

(assert (=> bs!728021 (= (= (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (= lambda!148705 lambda!148704))))

(assert (=> b!4399813 true))

(declare-fun bs!728022 () Bool)

(declare-fun b!4399818 () Bool)

(assert (= bs!728022 (and b!4399818 b!4399791)))

(declare-fun lambda!148706 () Int)

(assert (=> bs!728022 (= (= (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (= lambda!148706 lambda!148694))))

(declare-fun bs!728023 () Bool)

(assert (= bs!728023 (and b!4399818 b!4399821)))

(assert (=> bs!728023 (= (= (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (= lambda!148706 lambda!148704))))

(declare-fun bs!728024 () Bool)

(assert (= bs!728024 (and b!4399818 b!4399813)))

(assert (=> bs!728024 (= (= (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))) (= lambda!148706 lambda!148705))))

(assert (=> b!4399818 true))

(declare-fun bs!728025 () Bool)

(declare-fun b!4399820 () Bool)

(assert (= bs!728025 (and b!4399820 b!4399792)))

(declare-fun lambda!148707 () Int)

(assert (=> bs!728025 (= lambda!148707 lambda!148695)))

(declare-fun e!2739565 () List!49395)

(assert (=> b!4399813 (= e!2739565 (Cons!49271 (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (getKeysList!195 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))))))

(declare-fun c!749065 () Bool)

(assert (=> b!4399813 (= c!749065 (containsKey!928 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))))))

(declare-fun lt!1605201 () Unit!78635)

(declare-fun e!2739568 () Unit!78635)

(assert (=> b!4399813 (= lt!1605201 e!2739568)))

(declare-fun c!749066 () Bool)

(assert (=> b!4399813 (= c!749066 (contains!11657 (getKeysList!195 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))))))

(declare-fun lt!1605205 () Unit!78635)

(declare-fun e!2739567 () Unit!78635)

(assert (=> b!4399813 (= lt!1605205 e!2739567)))

(declare-fun lt!1605199 () List!49395)

(assert (=> b!4399813 (= lt!1605199 (getKeysList!195 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))))))

(declare-fun lt!1605200 () Unit!78635)

(declare-fun lemmaForallContainsAddHeadPreserves!58 (List!49392 List!49395 tuple2!48862) Unit!78635)

(assert (=> b!4399813 (= lt!1605200 (lemmaForallContainsAddHeadPreserves!58 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) lt!1605199 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))))))

(assert (=> b!4399813 (forall!9360 lt!1605199 lambda!148705)))

(declare-fun lt!1605203 () Unit!78635)

(assert (=> b!4399813 (= lt!1605203 lt!1605200)))

(declare-fun b!4399814 () Bool)

(assert (=> b!4399814 (= e!2739565 Nil!49271)))

(declare-fun b!4399815 () Bool)

(declare-fun Unit!78685 () Unit!78635)

(assert (=> b!4399815 (= e!2739567 Unit!78685)))

(declare-fun b!4399816 () Bool)

(declare-fun res!1814563 () Bool)

(declare-fun e!2739566 () Bool)

(assert (=> b!4399816 (=> (not res!1814563) (not e!2739566))))

(declare-fun lt!1605202 () List!49395)

(assert (=> b!4399816 (= res!1814563 (= (length!128 lt!1605202) (length!129 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))))))

(declare-fun d!1326467 () Bool)

(assert (=> d!1326467 e!2739566))

(declare-fun res!1814564 () Bool)

(assert (=> d!1326467 (=> (not res!1814564) (not e!2739566))))

(assert (=> d!1326467 (= res!1814564 (noDuplicate!636 lt!1605202))))

(assert (=> d!1326467 (= lt!1605202 e!2739565)))

(declare-fun c!749067 () Bool)

(assert (=> d!1326467 (= c!749067 ((_ is Cons!49268) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))))

(assert (=> d!1326467 (invariantList!748 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))))

(assert (=> d!1326467 (= (getKeysList!195 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) lt!1605202)))

(declare-fun b!4399817 () Bool)

(assert (=> b!4399817 false))

(declare-fun Unit!78686 () Unit!78635)

(assert (=> b!4399817 (= e!2739568 Unit!78686)))

(declare-fun res!1814565 () Bool)

(assert (=> b!4399818 (=> (not res!1814565) (not e!2739566))))

(assert (=> b!4399818 (= res!1814565 (forall!9360 lt!1605202 lambda!148706))))

(declare-fun b!4399819 () Bool)

(declare-fun Unit!78687 () Unit!78635)

(assert (=> b!4399819 (= e!2739568 Unit!78687)))

(assert (=> b!4399820 (= e!2739566 (= (content!7866 lt!1605202) (content!7866 (map!10744 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) lambda!148707))))))

(assert (=> b!4399821 false))

(declare-fun lt!1605204 () Unit!78635)

(declare-fun forallContained!1995 (List!49395 Int K!10625) Unit!78635)

(assert (=> b!4399821 (= lt!1605204 (forallContained!1995 (getKeysList!195 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) lambda!148704 (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))))))

(declare-fun Unit!78688 () Unit!78635)

(assert (=> b!4399821 (= e!2739567 Unit!78688)))

(assert (= (and d!1326467 c!749067) b!4399813))

(assert (= (and d!1326467 (not c!749067)) b!4399814))

(assert (= (and b!4399813 c!749065) b!4399817))

(assert (= (and b!4399813 (not c!749065)) b!4399819))

(assert (= (and b!4399813 c!749066) b!4399821))

(assert (= (and b!4399813 (not c!749066)) b!4399815))

(assert (= (and d!1326467 res!1814564) b!4399816))

(assert (= (and b!4399816 res!1814563) b!4399818))

(assert (= (and b!4399818 res!1814565) b!4399820))

(declare-fun m!5062077 () Bool)

(assert (=> d!1326467 m!5062077))

(declare-fun m!5062079 () Bool)

(assert (=> d!1326467 m!5062079))

(declare-fun m!5062081 () Bool)

(assert (=> b!4399821 m!5062081))

(assert (=> b!4399821 m!5062081))

(declare-fun m!5062083 () Bool)

(assert (=> b!4399821 m!5062083))

(declare-fun m!5062085 () Bool)

(assert (=> b!4399813 m!5062085))

(assert (=> b!4399813 m!5062081))

(declare-fun m!5062087 () Bool)

(assert (=> b!4399813 m!5062087))

(assert (=> b!4399813 m!5062081))

(declare-fun m!5062089 () Bool)

(assert (=> b!4399813 m!5062089))

(declare-fun m!5062091 () Bool)

(assert (=> b!4399813 m!5062091))

(declare-fun m!5062093 () Bool)

(assert (=> b!4399818 m!5062093))

(declare-fun m!5062095 () Bool)

(assert (=> b!4399820 m!5062095))

(declare-fun m!5062097 () Bool)

(assert (=> b!4399820 m!5062097))

(assert (=> b!4399820 m!5062097))

(declare-fun m!5062099 () Bool)

(assert (=> b!4399820 m!5062099))

(declare-fun m!5062101 () Bool)

(assert (=> b!4399816 m!5062101))

(declare-fun m!5062103 () Bool)

(assert (=> b!4399816 m!5062103))

(assert (=> b!4399321 d!1326467))

(declare-fun d!1326469 () Bool)

(declare-fun res!1814566 () Bool)

(declare-fun e!2739569 () Bool)

(assert (=> d!1326469 (=> res!1814566 e!2739569)))

(assert (=> d!1326469 (= res!1814566 (and ((_ is Cons!49268) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) key!3918)))))

(assert (=> d!1326469 (= (containsKey!928 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918) e!2739569)))

(declare-fun b!4399824 () Bool)

(declare-fun e!2739570 () Bool)

(assert (=> b!4399824 (= e!2739569 e!2739570)))

(declare-fun res!1814567 () Bool)

(assert (=> b!4399824 (=> (not res!1814567) (not e!2739570))))

(assert (=> b!4399824 (= res!1814567 ((_ is Cons!49268) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))))

(declare-fun b!4399825 () Bool)

(assert (=> b!4399825 (= e!2739570 (containsKey!928 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) key!3918))))

(assert (= (and d!1326469 (not res!1814566)) b!4399824))

(assert (= (and b!4399824 res!1814567) b!4399825))

(declare-fun m!5062105 () Bool)

(assert (=> b!4399825 m!5062105))

(assert (=> d!1326163 d!1326469))

(declare-fun bs!728026 () Bool)

(declare-fun b!4399826 () Bool)

(assert (= bs!728026 (and b!4399826 b!4399744)))

(declare-fun lambda!148708 () Int)

(assert (=> bs!728026 (= (= (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707)))) lt!1605154) (= lambda!148708 lambda!148688))))

(declare-fun bs!728027 () Bool)

(assert (= bs!728027 (and b!4399826 d!1326157)))

(assert (=> bs!728027 (not (= lambda!148708 lambda!148580))))

(declare-fun bs!728028 () Bool)

(assert (= bs!728028 (and b!4399826 b!4399742)))

(assert (=> bs!728028 (= (= (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707)))) (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148708 lambda!148686))))

(assert (=> bs!728026 (= (= (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707)))) (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148708 lambda!148687))))

(declare-fun bs!728029 () Bool)

(assert (= bs!728029 (and b!4399826 d!1326295)))

(assert (=> bs!728029 (= (= (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707)))) lt!1605156) (= lambda!148708 lambda!148689))))

(assert (=> b!4399826 true))

(declare-fun bs!728030 () Bool)

(declare-fun b!4399828 () Bool)

(assert (= bs!728030 (and b!4399828 b!4399744)))

(declare-fun lambda!148709 () Int)

(assert (=> bs!728030 (= (= (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707)))) lt!1605154) (= lambda!148709 lambda!148688))))

(declare-fun bs!728031 () Bool)

(assert (= bs!728031 (and b!4399828 d!1326157)))

(assert (=> bs!728031 (not (= lambda!148709 lambda!148580))))

(declare-fun bs!728032 () Bool)

(assert (= bs!728032 (and b!4399828 b!4399742)))

(assert (=> bs!728032 (= (= (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707)))) (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148709 lambda!148686))))

(assert (=> bs!728030 (= (= (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707)))) (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148709 lambda!148687))))

(declare-fun bs!728033 () Bool)

(assert (= bs!728033 (and b!4399828 d!1326295)))

(assert (=> bs!728033 (= (= (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707)))) lt!1605156) (= lambda!148709 lambda!148689))))

(declare-fun bs!728034 () Bool)

(assert (= bs!728034 (and b!4399828 b!4399826)))

(assert (=> bs!728034 (= lambda!148709 lambda!148708)))

(assert (=> b!4399828 true))

(declare-fun lt!1605206 () ListMap!2473)

(declare-fun lambda!148710 () Int)

(assert (=> bs!728030 (= (= lt!1605206 lt!1605154) (= lambda!148710 lambda!148688))))

(assert (=> bs!728031 (not (= lambda!148710 lambda!148580))))

(assert (=> bs!728032 (= (= lt!1605206 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148710 lambda!148686))))

(assert (=> bs!728030 (= (= lt!1605206 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148710 lambda!148687))))

(assert (=> b!4399828 (= (= lt!1605206 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (= lambda!148710 lambda!148709))))

(assert (=> bs!728033 (= (= lt!1605206 lt!1605156) (= lambda!148710 lambda!148689))))

(assert (=> bs!728034 (= (= lt!1605206 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (= lambda!148710 lambda!148708))))

(assert (=> b!4399828 true))

(declare-fun bs!728035 () Bool)

(declare-fun d!1326471 () Bool)

(assert (= bs!728035 (and d!1326471 b!4399744)))

(declare-fun lambda!148711 () Int)

(declare-fun lt!1605208 () ListMap!2473)

(assert (=> bs!728035 (= (= lt!1605208 lt!1605154) (= lambda!148711 lambda!148688))))

(declare-fun bs!728036 () Bool)

(assert (= bs!728036 (and d!1326471 d!1326157)))

(assert (=> bs!728036 (not (= lambda!148711 lambda!148580))))

(declare-fun bs!728037 () Bool)

(assert (= bs!728037 (and d!1326471 b!4399742)))

(assert (=> bs!728037 (= (= lt!1605208 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148711 lambda!148686))))

(declare-fun bs!728038 () Bool)

(assert (= bs!728038 (and d!1326471 b!4399828)))

(assert (=> bs!728038 (= (= lt!1605208 lt!1605206) (= lambda!148711 lambda!148710))))

(assert (=> bs!728035 (= (= lt!1605208 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148711 lambda!148687))))

(assert (=> bs!728038 (= (= lt!1605208 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (= lambda!148711 lambda!148709))))

(declare-fun bs!728039 () Bool)

(assert (= bs!728039 (and d!1326471 d!1326295)))

(assert (=> bs!728039 (= (= lt!1605208 lt!1605156) (= lambda!148711 lambda!148689))))

(declare-fun bs!728040 () Bool)

(assert (= bs!728040 (and d!1326471 b!4399826)))

(assert (=> bs!728040 (= (= lt!1605208 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (= lambda!148711 lambda!148708))))

(assert (=> d!1326471 true))

(declare-fun bm!306201 () Bool)

(declare-fun call!306208 () Unit!78635)

(assert (=> bm!306201 (= call!306208 (lemmaContainsAllItsOwnKeys!127 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))))))

(declare-fun lt!1605216 () ListMap!2473)

(declare-fun call!306206 () Bool)

(declare-fun bm!306202 () Bool)

(declare-fun c!749068 () Bool)

(assert (=> bm!306202 (= call!306206 (forall!9358 (ite c!749068 (toList!3230 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (toList!3230 lt!1605216)) (ite c!749068 lambda!148708 lambda!148710)))))

(declare-fun e!2739571 () ListMap!2473)

(assert (=> b!4399826 (= e!2739571 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707)))))))

(declare-fun lt!1605211 () Unit!78635)

(assert (=> b!4399826 (= lt!1605211 call!306208)))

(declare-fun call!306207 () Bool)

(assert (=> b!4399826 call!306207))

(declare-fun lt!1605212 () Unit!78635)

(assert (=> b!4399826 (= lt!1605212 lt!1605211)))

(assert (=> b!4399826 call!306206))

(declare-fun lt!1605210 () Unit!78635)

(declare-fun Unit!78693 () Unit!78635)

(assert (=> b!4399826 (= lt!1605210 Unit!78693)))

(declare-fun b!4399827 () Bool)

(declare-fun e!2739572 () Bool)

(assert (=> b!4399827 (= e!2739572 (invariantList!748 (toList!3230 lt!1605208)))))

(declare-fun bm!306203 () Bool)

(assert (=> bm!306203 (= call!306207 (forall!9358 (ite c!749068 (toList!3230 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707))))) (ite c!749068 lambda!148708 lambda!148710)))))

(declare-fun b!4399829 () Bool)

(declare-fun e!2739573 () Bool)

(assert (=> b!4399829 (= e!2739573 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) lambda!148710))))

(declare-fun b!4399830 () Bool)

(declare-fun res!1814570 () Bool)

(assert (=> b!4399830 (=> (not res!1814570) (not e!2739572))))

(assert (=> b!4399830 (= res!1814570 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) lambda!148711))))

(assert (=> d!1326471 e!2739572))

(declare-fun res!1814568 () Bool)

(assert (=> d!1326471 (=> (not res!1814568) (not e!2739572))))

(assert (=> d!1326471 (= res!1814568 (forall!9358 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707)))) lambda!148711))))

(assert (=> d!1326471 (= lt!1605208 e!2739571)))

(assert (=> d!1326471 (= c!749068 ((_ is Nil!49268) (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707))))))))

(assert (=> d!1326471 (noDuplicateKeys!623 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707)))))))

(assert (=> d!1326471 (= (addToMapMapFromBucket!293 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707)))) (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) lt!1605208)))

(assert (=> b!4399828 (= e!2739571 lt!1605206)))

(assert (=> b!4399828 (= lt!1605216 (+!864 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707)))) (h!54891 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707)))))))))

(assert (=> b!4399828 (= lt!1605206 (addToMapMapFromBucket!293 (t!356326 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707))))) (+!864 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707)))) (h!54891 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707))))))))))

(declare-fun lt!1605219 () Unit!78635)

(assert (=> b!4399828 (= lt!1605219 call!306208)))

(assert (=> b!4399828 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) lambda!148709)))

(declare-fun lt!1605214 () Unit!78635)

(assert (=> b!4399828 (= lt!1605214 lt!1605219)))

(assert (=> b!4399828 call!306206))

(declare-fun lt!1605218 () Unit!78635)

(declare-fun Unit!78694 () Unit!78635)

(assert (=> b!4399828 (= lt!1605218 Unit!78694)))

(assert (=> b!4399828 (forall!9358 (t!356326 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707))))) lambda!148710)))

(declare-fun lt!1605215 () Unit!78635)

(declare-fun Unit!78695 () Unit!78635)

(assert (=> b!4399828 (= lt!1605215 Unit!78695)))

(declare-fun lt!1605209 () Unit!78635)

(declare-fun Unit!78696 () Unit!78635)

(assert (=> b!4399828 (= lt!1605209 Unit!78696)))

(declare-fun lt!1605224 () Unit!78635)

(assert (=> b!4399828 (= lt!1605224 (forallContained!1994 (toList!3230 lt!1605216) lambda!148710 (h!54891 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707)))))))))

(assert (=> b!4399828 (contains!11655 lt!1605216 (_1!27725 (h!54891 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707)))))))))

(declare-fun lt!1605220 () Unit!78635)

(declare-fun Unit!78697 () Unit!78635)

(assert (=> b!4399828 (= lt!1605220 Unit!78697)))

(assert (=> b!4399828 (contains!11655 lt!1605206 (_1!27725 (h!54891 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707)))))))))

(declare-fun lt!1605223 () Unit!78635)

(declare-fun Unit!78698 () Unit!78635)

(assert (=> b!4399828 (= lt!1605223 Unit!78698)))

(assert (=> b!4399828 call!306207))

(declare-fun lt!1605217 () Unit!78635)

(declare-fun Unit!78699 () Unit!78635)

(assert (=> b!4399828 (= lt!1605217 Unit!78699)))

(assert (=> b!4399828 (forall!9358 (toList!3230 lt!1605216) lambda!148710)))

(declare-fun lt!1605225 () Unit!78635)

(declare-fun Unit!78700 () Unit!78635)

(assert (=> b!4399828 (= lt!1605225 Unit!78700)))

(declare-fun lt!1605222 () Unit!78635)

(declare-fun Unit!78701 () Unit!78635)

(assert (=> b!4399828 (= lt!1605222 Unit!78701)))

(declare-fun lt!1605207 () Unit!78635)

(assert (=> b!4399828 (= lt!1605207 (addForallContainsKeyThenBeforeAdding!127 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707)))) lt!1605206 (_1!27725 (h!54891 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707)))))) (_2!27725 (h!54891 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707))))))))))

(assert (=> b!4399828 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) lambda!148710)))

(declare-fun lt!1605221 () Unit!78635)

(assert (=> b!4399828 (= lt!1605221 lt!1605207)))

(assert (=> b!4399828 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) lambda!148710)))

(declare-fun lt!1605226 () Unit!78635)

(declare-fun Unit!78702 () Unit!78635)

(assert (=> b!4399828 (= lt!1605226 Unit!78702)))

(declare-fun res!1814569 () Bool)

(assert (=> b!4399828 (= res!1814569 (forall!9358 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707)))) lambda!148710))))

(assert (=> b!4399828 (=> (not res!1814569) (not e!2739573))))

(assert (=> b!4399828 e!2739573))

(declare-fun lt!1605213 () Unit!78635)

(declare-fun Unit!78703 () Unit!78635)

(assert (=> b!4399828 (= lt!1605213 Unit!78703)))

(assert (= (and d!1326471 c!749068) b!4399826))

(assert (= (and d!1326471 (not c!749068)) b!4399828))

(assert (= (and b!4399828 res!1814569) b!4399829))

(assert (= (or b!4399826 b!4399828) bm!306201))

(assert (= (or b!4399826 b!4399828) bm!306202))

(assert (= (or b!4399826 b!4399828) bm!306203))

(assert (= (and d!1326471 res!1814568) b!4399830))

(assert (= (and b!4399830 res!1814570) b!4399827))

(assert (=> b!4399828 m!5061415))

(declare-fun m!5062107 () Bool)

(assert (=> b!4399828 m!5062107))

(declare-fun m!5062109 () Bool)

(assert (=> b!4399828 m!5062109))

(assert (=> b!4399828 m!5061415))

(declare-fun m!5062111 () Bool)

(assert (=> b!4399828 m!5062111))

(declare-fun m!5062113 () Bool)

(assert (=> b!4399828 m!5062113))

(declare-fun m!5062115 () Bool)

(assert (=> b!4399828 m!5062115))

(declare-fun m!5062117 () Bool)

(assert (=> b!4399828 m!5062117))

(declare-fun m!5062119 () Bool)

(assert (=> b!4399828 m!5062119))

(declare-fun m!5062121 () Bool)

(assert (=> b!4399828 m!5062121))

(declare-fun m!5062123 () Bool)

(assert (=> b!4399828 m!5062123))

(assert (=> b!4399828 m!5062107))

(declare-fun m!5062125 () Bool)

(assert (=> b!4399828 m!5062125))

(declare-fun m!5062127 () Bool)

(assert (=> b!4399828 m!5062127))

(assert (=> b!4399828 m!5062127))

(declare-fun m!5062129 () Bool)

(assert (=> b!4399827 m!5062129))

(assert (=> bm!306201 m!5061415))

(declare-fun m!5062131 () Bool)

(assert (=> bm!306201 m!5062131))

(declare-fun m!5062133 () Bool)

(assert (=> d!1326471 m!5062133))

(declare-fun m!5062135 () Bool)

(assert (=> d!1326471 m!5062135))

(declare-fun m!5062137 () Bool)

(assert (=> bm!306203 m!5062137))

(declare-fun m!5062139 () Bool)

(assert (=> b!4399830 m!5062139))

(assert (=> b!4399829 m!5062127))

(declare-fun m!5062141 () Bool)

(assert (=> bm!306202 m!5062141))

(assert (=> b!4399331 d!1326471))

(declare-fun bs!728041 () Bool)

(declare-fun d!1326473 () Bool)

(assert (= bs!728041 (and d!1326473 d!1326135)))

(declare-fun lambda!148712 () Int)

(assert (=> bs!728041 (not (= lambda!148712 lambda!148576))))

(declare-fun bs!728042 () Bool)

(assert (= bs!728042 (and d!1326473 d!1326169)))

(assert (=> bs!728042 (= lambda!148712 lambda!148581)))

(declare-fun bs!728043 () Bool)

(assert (= bs!728043 (and d!1326473 start!427504)))

(assert (=> bs!728043 (= lambda!148712 lambda!148555)))

(declare-fun bs!728044 () Bool)

(assert (= bs!728044 (and d!1326473 d!1326173)))

(assert (=> bs!728044 (= lambda!148712 lambda!148585)))

(declare-fun bs!728045 () Bool)

(assert (= bs!728045 (and d!1326473 d!1326133)))

(assert (=> bs!728045 (= lambda!148712 lambda!148573)))

(declare-fun bs!728046 () Bool)

(assert (= bs!728046 (and d!1326473 d!1326155)))

(assert (=> bs!728046 (not (= lambda!148712 lambda!148577))))

(declare-fun bs!728047 () Bool)

(assert (= bs!728047 (and d!1326473 d!1326171)))

(assert (=> bs!728047 (= lambda!148712 lambda!148584)))

(declare-fun lt!1605227 () ListMap!2473)

(assert (=> d!1326473 (invariantList!748 (toList!3230 lt!1605227))))

(declare-fun e!2739574 () ListMap!2473)

(assert (=> d!1326473 (= lt!1605227 e!2739574)))

(declare-fun c!749069 () Bool)

(assert (=> d!1326473 (= c!749069 ((_ is Cons!49269) (t!356327 (t!356327 (toList!3229 lm!1707)))))))

(assert (=> d!1326473 (forall!9356 (t!356327 (t!356327 (toList!3229 lm!1707))) lambda!148712)))

(assert (=> d!1326473 (= (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707)))) lt!1605227)))

(declare-fun b!4399831 () Bool)

(assert (=> b!4399831 (= e!2739574 (addToMapMapFromBucket!293 (_2!27726 (h!54892 (t!356327 (t!356327 (toList!3229 lm!1707))))) (extractMap!682 (t!356327 (t!356327 (t!356327 (toList!3229 lm!1707)))))))))

(declare-fun b!4399832 () Bool)

(assert (=> b!4399832 (= e!2739574 (ListMap!2474 Nil!49268))))

(assert (= (and d!1326473 c!749069) b!4399831))

(assert (= (and d!1326473 (not c!749069)) b!4399832))

(declare-fun m!5062143 () Bool)

(assert (=> d!1326473 m!5062143))

(declare-fun m!5062145 () Bool)

(assert (=> d!1326473 m!5062145))

(declare-fun m!5062147 () Bool)

(assert (=> b!4399831 m!5062147))

(assert (=> b!4399831 m!5062147))

(declare-fun m!5062149 () Bool)

(assert (=> b!4399831 m!5062149))

(assert (=> b!4399331 d!1326473))

(declare-fun d!1326475 () Bool)

(declare-fun lt!1605228 () Bool)

(assert (=> d!1326475 (= lt!1605228 (select (content!7864 (t!356327 (toList!3229 lm!1707))) lt!1604698))))

(declare-fun e!2739575 () Bool)

(assert (=> d!1326475 (= lt!1605228 e!2739575)))

(declare-fun res!1814571 () Bool)

(assert (=> d!1326475 (=> (not res!1814571) (not e!2739575))))

(assert (=> d!1326475 (= res!1814571 ((_ is Cons!49269) (t!356327 (toList!3229 lm!1707))))))

(assert (=> d!1326475 (= (contains!11653 (t!356327 (toList!3229 lm!1707)) lt!1604698) lt!1605228)))

(declare-fun b!4399833 () Bool)

(declare-fun e!2739576 () Bool)

(assert (=> b!4399833 (= e!2739575 e!2739576)))

(declare-fun res!1814572 () Bool)

(assert (=> b!4399833 (=> res!1814572 e!2739576)))

(assert (=> b!4399833 (= res!1814572 (= (h!54892 (t!356327 (toList!3229 lm!1707))) lt!1604698))))

(declare-fun b!4399834 () Bool)

(assert (=> b!4399834 (= e!2739576 (contains!11653 (t!356327 (t!356327 (toList!3229 lm!1707))) lt!1604698))))

(assert (= (and d!1326475 res!1814571) b!4399833))

(assert (= (and b!4399833 (not res!1814572)) b!4399834))

(declare-fun m!5062151 () Bool)

(assert (=> d!1326475 m!5062151))

(declare-fun m!5062153 () Bool)

(assert (=> d!1326475 m!5062153))

(declare-fun m!5062155 () Bool)

(assert (=> b!4399834 m!5062155))

(assert (=> b!4399300 d!1326475))

(declare-fun d!1326477 () Bool)

(declare-fun res!1814577 () Bool)

(declare-fun e!2739581 () Bool)

(assert (=> d!1326477 (=> res!1814577 e!2739581)))

(assert (=> d!1326477 (= res!1814577 (and ((_ is Cons!49269) (toList!3229 lt!1604708)) (= (_1!27726 (h!54892 (toList!3229 lt!1604708))) hash!377)))))

(assert (=> d!1326477 (= (containsKey!929 (toList!3229 lt!1604708) hash!377) e!2739581)))

(declare-fun b!4399839 () Bool)

(declare-fun e!2739582 () Bool)

(assert (=> b!4399839 (= e!2739581 e!2739582)))

(declare-fun res!1814578 () Bool)

(assert (=> b!4399839 (=> (not res!1814578) (not e!2739582))))

(assert (=> b!4399839 (= res!1814578 (and (or (not ((_ is Cons!49269) (toList!3229 lt!1604708))) (bvsle (_1!27726 (h!54892 (toList!3229 lt!1604708))) hash!377)) ((_ is Cons!49269) (toList!3229 lt!1604708)) (bvslt (_1!27726 (h!54892 (toList!3229 lt!1604708))) hash!377)))))

(declare-fun b!4399840 () Bool)

(assert (=> b!4399840 (= e!2739582 (containsKey!929 (t!356327 (toList!3229 lt!1604708)) hash!377))))

(assert (= (and d!1326477 (not res!1814577)) b!4399839))

(assert (= (and b!4399839 res!1814578) b!4399840))

(declare-fun m!5062157 () Bool)

(assert (=> b!4399840 m!5062157))

(assert (=> d!1326139 d!1326477))

(declare-fun d!1326479 () Bool)

(declare-fun lt!1605229 () Bool)

(assert (=> d!1326479 (= lt!1605229 (select (content!7866 e!2739254) key!3918))))

(declare-fun e!2739584 () Bool)

(assert (=> d!1326479 (= lt!1605229 e!2739584)))

(declare-fun res!1814580 () Bool)

(assert (=> d!1326479 (=> (not res!1814580) (not e!2739584))))

(assert (=> d!1326479 (= res!1814580 ((_ is Cons!49271) e!2739254))))

(assert (=> d!1326479 (= (contains!11657 e!2739254 key!3918) lt!1605229)))

(declare-fun b!4399841 () Bool)

(declare-fun e!2739583 () Bool)

(assert (=> b!4399841 (= e!2739584 e!2739583)))

(declare-fun res!1814579 () Bool)

(assert (=> b!4399841 (=> res!1814579 e!2739583)))

(assert (=> b!4399841 (= res!1814579 (= (h!54896 e!2739254) key!3918))))

(declare-fun b!4399842 () Bool)

(assert (=> b!4399842 (= e!2739583 (contains!11657 (t!356329 e!2739254) key!3918))))

(assert (= (and d!1326479 res!1814580) b!4399841))

(assert (= (and b!4399841 (not res!1814579)) b!4399842))

(declare-fun m!5062159 () Bool)

(assert (=> d!1326479 m!5062159))

(declare-fun m!5062161 () Bool)

(assert (=> d!1326479 m!5062161))

(declare-fun m!5062163 () Bool)

(assert (=> b!4399842 m!5062163))

(assert (=> bm!306157 d!1326479))

(declare-fun d!1326481 () Bool)

(declare-fun res!1814581 () Bool)

(declare-fun e!2739585 () Bool)

(assert (=> d!1326481 (=> res!1814581 e!2739585)))

(assert (=> d!1326481 (= res!1814581 (not ((_ is Cons!49268) (_2!27726 (h!54892 (toList!3229 lm!1707))))))))

(assert (=> d!1326481 (= (noDuplicateKeys!623 (_2!27726 (h!54892 (toList!3229 lm!1707)))) e!2739585)))

(declare-fun b!4399843 () Bool)

(declare-fun e!2739586 () Bool)

(assert (=> b!4399843 (= e!2739585 e!2739586)))

(declare-fun res!1814582 () Bool)

(assert (=> b!4399843 (=> (not res!1814582) (not e!2739586))))

(assert (=> b!4399843 (= res!1814582 (not (containsKey!925 (t!356326 (_2!27726 (h!54892 (toList!3229 lm!1707)))) (_1!27725 (h!54891 (_2!27726 (h!54892 (toList!3229 lm!1707))))))))))

(declare-fun b!4399844 () Bool)

(assert (=> b!4399844 (= e!2739586 (noDuplicateKeys!623 (t!356326 (_2!27726 (h!54892 (toList!3229 lm!1707))))))))

(assert (= (and d!1326481 (not res!1814581)) b!4399843))

(assert (= (and b!4399843 res!1814582) b!4399844))

(declare-fun m!5062165 () Bool)

(assert (=> b!4399843 m!5062165))

(declare-fun m!5062167 () Bool)

(assert (=> b!4399844 m!5062167))

(assert (=> bs!727827 d!1326481))

(declare-fun d!1326483 () Bool)

(assert (=> d!1326483 (= (tail!7109 (toList!3229 lm!1707)) (t!356327 (toList!3229 lm!1707)))))

(assert (=> d!1326175 d!1326483))

(declare-fun d!1326485 () Bool)

(declare-fun res!1814583 () Bool)

(declare-fun e!2739587 () Bool)

(assert (=> d!1326485 (=> res!1814583 e!2739587)))

(assert (=> d!1326485 (= res!1814583 ((_ is Nil!49269) (toList!3229 lt!1604708)))))

(assert (=> d!1326485 (= (forall!9356 (toList!3229 lt!1604708) lambda!148576) e!2739587)))

(declare-fun b!4399845 () Bool)

(declare-fun e!2739588 () Bool)

(assert (=> b!4399845 (= e!2739587 e!2739588)))

(declare-fun res!1814584 () Bool)

(assert (=> b!4399845 (=> (not res!1814584) (not e!2739588))))

(assert (=> b!4399845 (= res!1814584 (dynLambda!20758 lambda!148576 (h!54892 (toList!3229 lt!1604708))))))

(declare-fun b!4399846 () Bool)

(assert (=> b!4399846 (= e!2739588 (forall!9356 (t!356327 (toList!3229 lt!1604708)) lambda!148576))))

(assert (= (and d!1326485 (not res!1814583)) b!4399845))

(assert (= (and b!4399845 res!1814584) b!4399846))

(declare-fun b_lambda!139655 () Bool)

(assert (=> (not b_lambda!139655) (not b!4399845)))

(declare-fun m!5062169 () Bool)

(assert (=> b!4399845 m!5062169))

(declare-fun m!5062171 () Bool)

(assert (=> b!4399846 m!5062171))

(assert (=> d!1326135 d!1326485))

(declare-fun bs!728048 () Bool)

(declare-fun b!4399848 () Bool)

(assert (= bs!728048 (and b!4399848 b!4399791)))

(declare-fun lambda!148713 () Int)

(assert (=> bs!728048 (= (= (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (= lambda!148713 lambda!148694))))

(declare-fun bs!728049 () Bool)

(assert (= bs!728049 (and b!4399848 b!4399821)))

(assert (=> bs!728049 (= (= (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (= lambda!148713 lambda!148704))))

(declare-fun bs!728050 () Bool)

(assert (= bs!728050 (and b!4399848 b!4399813)))

(assert (=> bs!728050 (= (= (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))) (= lambda!148713 lambda!148705))))

(declare-fun bs!728051 () Bool)

(assert (= bs!728051 (and b!4399848 b!4399818)))

(assert (=> bs!728051 (= lambda!148713 lambda!148706)))

(assert (=> b!4399848 true))

(declare-fun bs!728052 () Bool)

(declare-fun b!4399849 () Bool)

(assert (= bs!728052 (and b!4399849 b!4399792)))

(declare-fun lambda!148714 () Int)

(assert (=> bs!728052 (= lambda!148714 lambda!148695)))

(declare-fun bs!728053 () Bool)

(assert (= bs!728053 (and b!4399849 b!4399820)))

(assert (=> bs!728053 (= lambda!148714 lambda!148707)))

(declare-fun d!1326487 () Bool)

(declare-fun e!2739589 () Bool)

(assert (=> d!1326487 e!2739589))

(declare-fun res!1814585 () Bool)

(assert (=> d!1326487 (=> (not res!1814585) (not e!2739589))))

(declare-fun lt!1605230 () List!49395)

(assert (=> d!1326487 (= res!1814585 (noDuplicate!636 lt!1605230))))

(assert (=> d!1326487 (= lt!1605230 (getKeysList!195 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))))

(assert (=> d!1326487 (= (keys!16741 (extractMap!682 (toList!3229 lt!1604708))) lt!1605230)))

(declare-fun b!4399847 () Bool)

(declare-fun res!1814587 () Bool)

(assert (=> b!4399847 (=> (not res!1814587) (not e!2739589))))

(assert (=> b!4399847 (= res!1814587 (= (length!128 lt!1605230) (length!129 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))))))

(declare-fun res!1814586 () Bool)

(assert (=> b!4399848 (=> (not res!1814586) (not e!2739589))))

(assert (=> b!4399848 (= res!1814586 (forall!9360 lt!1605230 lambda!148713))))

(assert (=> b!4399849 (= e!2739589 (= (content!7866 lt!1605230) (content!7866 (map!10744 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) lambda!148714))))))

(assert (= (and d!1326487 res!1814585) b!4399847))

(assert (= (and b!4399847 res!1814587) b!4399848))

(assert (= (and b!4399848 res!1814586) b!4399849))

(declare-fun m!5062173 () Bool)

(assert (=> d!1326487 m!5062173))

(assert (=> d!1326487 m!5061369))

(declare-fun m!5062175 () Bool)

(assert (=> b!4399847 m!5062175))

(assert (=> b!4399847 m!5062103))

(declare-fun m!5062177 () Bool)

(assert (=> b!4399848 m!5062177))

(declare-fun m!5062179 () Bool)

(assert (=> b!4399849 m!5062179))

(declare-fun m!5062181 () Bool)

(assert (=> b!4399849 m!5062181))

(assert (=> b!4399849 m!5062181))

(declare-fun m!5062183 () Bool)

(assert (=> b!4399849 m!5062183))

(assert (=> b!4399315 d!1326487))

(declare-fun d!1326489 () Bool)

(declare-fun noDuplicatedKeys!152 (List!49392) Bool)

(assert (=> d!1326489 (= (invariantList!748 (toList!3230 lt!1604860)) (noDuplicatedKeys!152 (toList!3230 lt!1604860)))))

(declare-fun bs!728054 () Bool)

(assert (= bs!728054 d!1326489))

(declare-fun m!5062185 () Bool)

(assert (=> bs!728054 m!5062185))

(assert (=> d!1326133 d!1326489))

(declare-fun d!1326491 () Bool)

(declare-fun res!1814588 () Bool)

(declare-fun e!2739590 () Bool)

(assert (=> d!1326491 (=> res!1814588 e!2739590)))

(assert (=> d!1326491 (= res!1814588 ((_ is Nil!49269) (toList!3229 lm!1707)))))

(assert (=> d!1326491 (= (forall!9356 (toList!3229 lm!1707) lambda!148573) e!2739590)))

(declare-fun b!4399850 () Bool)

(declare-fun e!2739591 () Bool)

(assert (=> b!4399850 (= e!2739590 e!2739591)))

(declare-fun res!1814589 () Bool)

(assert (=> b!4399850 (=> (not res!1814589) (not e!2739591))))

(assert (=> b!4399850 (= res!1814589 (dynLambda!20758 lambda!148573 (h!54892 (toList!3229 lm!1707))))))

(declare-fun b!4399851 () Bool)

(assert (=> b!4399851 (= e!2739591 (forall!9356 (t!356327 (toList!3229 lm!1707)) lambda!148573))))

(assert (= (and d!1326491 (not res!1814588)) b!4399850))

(assert (= (and b!4399850 res!1814589) b!4399851))

(declare-fun b_lambda!139657 () Bool)

(assert (=> (not b_lambda!139657) (not b!4399850)))

(declare-fun m!5062187 () Bool)

(assert (=> b!4399850 m!5062187))

(declare-fun m!5062189 () Bool)

(assert (=> b!4399851 m!5062189))

(assert (=> d!1326133 d!1326491))

(assert (=> b!4399161 d!1326447))

(declare-fun d!1326493 () Bool)

(assert (=> d!1326493 (= (isDefined!7901 (getValueByKey!595 (toList!3230 lt!1604701) key!3918)) (not (isEmpty!28278 (getValueByKey!595 (toList!3230 lt!1604701) key!3918))))))

(declare-fun bs!728055 () Bool)

(assert (= bs!728055 d!1326493))

(assert (=> bs!728055 m!5061395))

(declare-fun m!5062191 () Bool)

(assert (=> bs!728055 m!5062191))

(assert (=> b!4399326 d!1326493))

(declare-fun b!4399854 () Bool)

(declare-fun e!2739593 () Option!10609)

(assert (=> b!4399854 (= e!2739593 (getValueByKey!595 (t!356326 (toList!3230 lt!1604701)) key!3918))))

(declare-fun b!4399853 () Bool)

(declare-fun e!2739592 () Option!10609)

(assert (=> b!4399853 (= e!2739592 e!2739593)))

(declare-fun c!749071 () Bool)

(assert (=> b!4399853 (= c!749071 (and ((_ is Cons!49268) (toList!3230 lt!1604701)) (not (= (_1!27725 (h!54891 (toList!3230 lt!1604701))) key!3918))))))

(declare-fun b!4399852 () Bool)

(assert (=> b!4399852 (= e!2739592 (Some!10608 (_2!27725 (h!54891 (toList!3230 lt!1604701)))))))

(declare-fun b!4399855 () Bool)

(assert (=> b!4399855 (= e!2739593 None!10608)))

(declare-fun d!1326495 () Bool)

(declare-fun c!749070 () Bool)

(assert (=> d!1326495 (= c!749070 (and ((_ is Cons!49268) (toList!3230 lt!1604701)) (= (_1!27725 (h!54891 (toList!3230 lt!1604701))) key!3918)))))

(assert (=> d!1326495 (= (getValueByKey!595 (toList!3230 lt!1604701) key!3918) e!2739592)))

(assert (= (and d!1326495 c!749070) b!4399852))

(assert (= (and d!1326495 (not c!749070)) b!4399853))

(assert (= (and b!4399853 c!749071) b!4399854))

(assert (= (and b!4399853 (not c!749071)) b!4399855))

(declare-fun m!5062193 () Bool)

(assert (=> b!4399854 m!5062193))

(assert (=> b!4399326 d!1326495))

(declare-fun d!1326497 () Bool)

(assert (=> d!1326497 (isDefined!7902 (getValueByKey!594 (toList!3229 lt!1604708) hash!377))))

(declare-fun lt!1605233 () Unit!78635)

(declare-fun choose!27574 (List!49393 (_ BitVec 64)) Unit!78635)

(assert (=> d!1326497 (= lt!1605233 (choose!27574 (toList!3229 lt!1604708) hash!377))))

(declare-fun e!2739596 () Bool)

(assert (=> d!1326497 e!2739596))

(declare-fun res!1814592 () Bool)

(assert (=> d!1326497 (=> (not res!1814592) (not e!2739596))))

(assert (=> d!1326497 (= res!1814592 (isStrictlySorted!174 (toList!3229 lt!1604708)))))

(assert (=> d!1326497 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!505 (toList!3229 lt!1604708) hash!377) lt!1605233)))

(declare-fun b!4399858 () Bool)

(assert (=> b!4399858 (= e!2739596 (containsKey!929 (toList!3229 lt!1604708) hash!377))))

(assert (= (and d!1326497 res!1814592) b!4399858))

(assert (=> d!1326497 m!5061145))

(assert (=> d!1326497 m!5061145))

(assert (=> d!1326497 m!5061323))

(declare-fun m!5062195 () Bool)

(assert (=> d!1326497 m!5062195))

(assert (=> d!1326497 m!5061143))

(assert (=> b!4399858 m!5061319))

(assert (=> b!4399289 d!1326497))

(declare-fun d!1326499 () Bool)

(declare-fun isEmpty!28279 (Option!10608) Bool)

(assert (=> d!1326499 (= (isDefined!7902 (getValueByKey!594 (toList!3229 lt!1604708) hash!377)) (not (isEmpty!28279 (getValueByKey!594 (toList!3229 lt!1604708) hash!377))))))

(declare-fun bs!728056 () Bool)

(assert (= bs!728056 d!1326499))

(assert (=> bs!728056 m!5061145))

(declare-fun m!5062197 () Bool)

(assert (=> bs!728056 m!5062197))

(assert (=> b!4399289 d!1326499))

(assert (=> b!4399289 d!1326447))

(declare-fun b!4399859 () Bool)

(declare-fun e!2739597 () List!49392)

(assert (=> b!4399859 (= e!2739597 (t!356326 (t!356326 lt!1604703)))))

(declare-fun b!4399862 () Bool)

(declare-fun e!2739598 () List!49392)

(assert (=> b!4399862 (= e!2739598 Nil!49268)))

(declare-fun d!1326501 () Bool)

(declare-fun lt!1605234 () List!49392)

(assert (=> d!1326501 (not (containsKey!925 lt!1605234 key!3918))))

(assert (=> d!1326501 (= lt!1605234 e!2739597)))

(declare-fun c!749073 () Bool)

(assert (=> d!1326501 (= c!749073 (and ((_ is Cons!49268) (t!356326 lt!1604703)) (= (_1!27725 (h!54891 (t!356326 lt!1604703))) key!3918)))))

(assert (=> d!1326501 (noDuplicateKeys!623 (t!356326 lt!1604703))))

(assert (=> d!1326501 (= (removePairForKey!591 (t!356326 lt!1604703) key!3918) lt!1605234)))

(declare-fun b!4399860 () Bool)

(assert (=> b!4399860 (= e!2739597 e!2739598)))

(declare-fun c!749072 () Bool)

(assert (=> b!4399860 (= c!749072 ((_ is Cons!49268) (t!356326 lt!1604703)))))

(declare-fun b!4399861 () Bool)

(assert (=> b!4399861 (= e!2739598 (Cons!49268 (h!54891 (t!356326 lt!1604703)) (removePairForKey!591 (t!356326 (t!356326 lt!1604703)) key!3918)))))

(assert (= (and d!1326501 c!749073) b!4399859))

(assert (= (and d!1326501 (not c!749073)) b!4399860))

(assert (= (and b!4399860 c!749072) b!4399861))

(assert (= (and b!4399860 (not c!749072)) b!4399862))

(declare-fun m!5062199 () Bool)

(assert (=> d!1326501 m!5062199))

(declare-fun m!5062201 () Bool)

(assert (=> d!1326501 m!5062201))

(declare-fun m!5062203 () Bool)

(assert (=> b!4399861 m!5062203))

(assert (=> b!4399178 d!1326501))

(declare-fun d!1326503 () Bool)

(declare-fun res!1814593 () Bool)

(declare-fun e!2739599 () Bool)

(assert (=> d!1326503 (=> res!1814593 e!2739599)))

(assert (=> d!1326503 (= res!1814593 (and ((_ is Cons!49268) (t!356326 (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707)))))) (= (_1!27725 (h!54891 (t!356326 (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707))))))) key!3918)))))

(assert (=> d!1326503 (= (containsKey!925 (t!356326 (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707))))) key!3918) e!2739599)))

(declare-fun b!4399863 () Bool)

(declare-fun e!2739600 () Bool)

(assert (=> b!4399863 (= e!2739599 e!2739600)))

(declare-fun res!1814594 () Bool)

(assert (=> b!4399863 (=> (not res!1814594) (not e!2739600))))

(assert (=> b!4399863 (= res!1814594 ((_ is Cons!49268) (t!356326 (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707)))))))))

(declare-fun b!4399864 () Bool)

(assert (=> b!4399864 (= e!2739600 (containsKey!925 (t!356326 (t!356326 (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707)))))) key!3918))))

(assert (= (and d!1326503 (not res!1814593)) b!4399863))

(assert (= (and b!4399863 res!1814594) b!4399864))

(declare-fun m!5062205 () Bool)

(assert (=> b!4399864 m!5062205))

(assert (=> b!4399312 d!1326503))

(declare-fun d!1326505 () Bool)

(assert (=> d!1326505 (= (invariantList!748 (toList!3230 lt!1604900)) (noDuplicatedKeys!152 (toList!3230 lt!1604900)))))

(declare-fun bs!728057 () Bool)

(assert (= bs!728057 d!1326505))

(declare-fun m!5062207 () Bool)

(assert (=> bs!728057 m!5062207))

(assert (=> d!1326169 d!1326505))

(declare-fun d!1326507 () Bool)

(declare-fun res!1814595 () Bool)

(declare-fun e!2739601 () Bool)

(assert (=> d!1326507 (=> res!1814595 e!2739601)))

(assert (=> d!1326507 (= res!1814595 ((_ is Nil!49269) (t!356327 (toList!3229 lm!1707))))))

(assert (=> d!1326507 (= (forall!9356 (t!356327 (toList!3229 lm!1707)) lambda!148581) e!2739601)))

(declare-fun b!4399865 () Bool)

(declare-fun e!2739602 () Bool)

(assert (=> b!4399865 (= e!2739601 e!2739602)))

(declare-fun res!1814596 () Bool)

(assert (=> b!4399865 (=> (not res!1814596) (not e!2739602))))

(assert (=> b!4399865 (= res!1814596 (dynLambda!20758 lambda!148581 (h!54892 (t!356327 (toList!3229 lm!1707)))))))

(declare-fun b!4399866 () Bool)

(assert (=> b!4399866 (= e!2739602 (forall!9356 (t!356327 (t!356327 (toList!3229 lm!1707))) lambda!148581))))

(assert (= (and d!1326507 (not res!1814595)) b!4399865))

(assert (= (and b!4399865 res!1814596) b!4399866))

(declare-fun b_lambda!139659 () Bool)

(assert (=> (not b_lambda!139659) (not b!4399865)))

(declare-fun m!5062209 () Bool)

(assert (=> b!4399865 m!5062209))

(declare-fun m!5062211 () Bool)

(assert (=> b!4399866 m!5062211))

(assert (=> d!1326169 d!1326507))

(assert (=> d!1326085 d!1326451))

(assert (=> b!4399291 d!1326499))

(assert (=> b!4399291 d!1326447))

(declare-fun bs!728058 () Bool)

(declare-fun b!4399875 () Bool)

(assert (= bs!728058 (and b!4399875 b!4399791)))

(declare-fun lambda!148715 () Int)

(assert (=> bs!728058 (= (= (t!356326 (toList!3230 lt!1604701)) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (= lambda!148715 lambda!148694))))

(declare-fun bs!728059 () Bool)

(assert (= bs!728059 (and b!4399875 b!4399818)))

(assert (=> bs!728059 (= (= (t!356326 (toList!3230 lt!1604701)) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148715 lambda!148706))))

(declare-fun bs!728060 () Bool)

(assert (= bs!728060 (and b!4399875 b!4399848)))

(assert (=> bs!728060 (= (= (t!356326 (toList!3230 lt!1604701)) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148715 lambda!148713))))

(declare-fun bs!728061 () Bool)

(assert (= bs!728061 (and b!4399875 b!4399813)))

(assert (=> bs!728061 (= (= (t!356326 (toList!3230 lt!1604701)) (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))) (= lambda!148715 lambda!148705))))

(declare-fun bs!728062 () Bool)

(assert (= bs!728062 (and b!4399875 b!4399821)))

(assert (=> bs!728062 (= (= (t!356326 (toList!3230 lt!1604701)) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (= lambda!148715 lambda!148704))))

(assert (=> b!4399875 true))

(declare-fun bs!728063 () Bool)

(declare-fun b!4399867 () Bool)

(assert (= bs!728063 (and b!4399867 b!4399791)))

(declare-fun lambda!148716 () Int)

(assert (=> bs!728063 (= (= (Cons!49268 (h!54891 (toList!3230 lt!1604701)) (t!356326 (toList!3230 lt!1604701))) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (= lambda!148716 lambda!148694))))

(declare-fun bs!728064 () Bool)

(assert (= bs!728064 (and b!4399867 b!4399818)))

(assert (=> bs!728064 (= (= (Cons!49268 (h!54891 (toList!3230 lt!1604701)) (t!356326 (toList!3230 lt!1604701))) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148716 lambda!148706))))

(declare-fun bs!728065 () Bool)

(assert (= bs!728065 (and b!4399867 b!4399848)))

(assert (=> bs!728065 (= (= (Cons!49268 (h!54891 (toList!3230 lt!1604701)) (t!356326 (toList!3230 lt!1604701))) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148716 lambda!148713))))

(declare-fun bs!728066 () Bool)

(assert (= bs!728066 (and b!4399867 b!4399813)))

(assert (=> bs!728066 (= (= (Cons!49268 (h!54891 (toList!3230 lt!1604701)) (t!356326 (toList!3230 lt!1604701))) (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))) (= lambda!148716 lambda!148705))))

(declare-fun bs!728067 () Bool)

(assert (= bs!728067 (and b!4399867 b!4399875)))

(assert (=> bs!728067 (= (= (Cons!49268 (h!54891 (toList!3230 lt!1604701)) (t!356326 (toList!3230 lt!1604701))) (t!356326 (toList!3230 lt!1604701))) (= lambda!148716 lambda!148715))))

(declare-fun bs!728068 () Bool)

(assert (= bs!728068 (and b!4399867 b!4399821)))

(assert (=> bs!728068 (= (= (Cons!49268 (h!54891 (toList!3230 lt!1604701)) (t!356326 (toList!3230 lt!1604701))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (= lambda!148716 lambda!148704))))

(assert (=> b!4399867 true))

(declare-fun bs!728069 () Bool)

(declare-fun b!4399872 () Bool)

(assert (= bs!728069 (and b!4399872 b!4399791)))

(declare-fun lambda!148717 () Int)

(assert (=> bs!728069 (= (= (toList!3230 lt!1604701) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (= lambda!148717 lambda!148694))))

(declare-fun bs!728070 () Bool)

(assert (= bs!728070 (and b!4399872 b!4399818)))

(assert (=> bs!728070 (= (= (toList!3230 lt!1604701) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148717 lambda!148706))))

(declare-fun bs!728071 () Bool)

(assert (= bs!728071 (and b!4399872 b!4399867)))

(assert (=> bs!728071 (= (= (toList!3230 lt!1604701) (Cons!49268 (h!54891 (toList!3230 lt!1604701)) (t!356326 (toList!3230 lt!1604701)))) (= lambda!148717 lambda!148716))))

(declare-fun bs!728072 () Bool)

(assert (= bs!728072 (and b!4399872 b!4399848)))

(assert (=> bs!728072 (= (= (toList!3230 lt!1604701) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148717 lambda!148713))))

(declare-fun bs!728073 () Bool)

(assert (= bs!728073 (and b!4399872 b!4399813)))

(assert (=> bs!728073 (= (= (toList!3230 lt!1604701) (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))) (= lambda!148717 lambda!148705))))

(declare-fun bs!728074 () Bool)

(assert (= bs!728074 (and b!4399872 b!4399875)))

(assert (=> bs!728074 (= (= (toList!3230 lt!1604701) (t!356326 (toList!3230 lt!1604701))) (= lambda!148717 lambda!148715))))

(declare-fun bs!728075 () Bool)

(assert (= bs!728075 (and b!4399872 b!4399821)))

(assert (=> bs!728075 (= (= (toList!3230 lt!1604701) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (= lambda!148717 lambda!148704))))

(assert (=> b!4399872 true))

(declare-fun bs!728076 () Bool)

(declare-fun b!4399874 () Bool)

(assert (= bs!728076 (and b!4399874 b!4399792)))

(declare-fun lambda!148718 () Int)

(assert (=> bs!728076 (= lambda!148718 lambda!148695)))

(declare-fun bs!728077 () Bool)

(assert (= bs!728077 (and b!4399874 b!4399820)))

(assert (=> bs!728077 (= lambda!148718 lambda!148707)))

(declare-fun bs!728078 () Bool)

(assert (= bs!728078 (and b!4399874 b!4399849)))

(assert (=> bs!728078 (= lambda!148718 lambda!148714)))

(declare-fun e!2739603 () List!49395)

(assert (=> b!4399867 (= e!2739603 (Cons!49271 (_1!27725 (h!54891 (toList!3230 lt!1604701))) (getKeysList!195 (t!356326 (toList!3230 lt!1604701)))))))

(declare-fun c!749074 () Bool)

(assert (=> b!4399867 (= c!749074 (containsKey!928 (t!356326 (toList!3230 lt!1604701)) (_1!27725 (h!54891 (toList!3230 lt!1604701)))))))

(declare-fun lt!1605237 () Unit!78635)

(declare-fun e!2739606 () Unit!78635)

(assert (=> b!4399867 (= lt!1605237 e!2739606)))

(declare-fun c!749075 () Bool)

(assert (=> b!4399867 (= c!749075 (contains!11657 (getKeysList!195 (t!356326 (toList!3230 lt!1604701))) (_1!27725 (h!54891 (toList!3230 lt!1604701)))))))

(declare-fun lt!1605241 () Unit!78635)

(declare-fun e!2739605 () Unit!78635)

(assert (=> b!4399867 (= lt!1605241 e!2739605)))

(declare-fun lt!1605235 () List!49395)

(assert (=> b!4399867 (= lt!1605235 (getKeysList!195 (t!356326 (toList!3230 lt!1604701))))))

(declare-fun lt!1605236 () Unit!78635)

(assert (=> b!4399867 (= lt!1605236 (lemmaForallContainsAddHeadPreserves!58 (t!356326 (toList!3230 lt!1604701)) lt!1605235 (h!54891 (toList!3230 lt!1604701))))))

(assert (=> b!4399867 (forall!9360 lt!1605235 lambda!148716)))

(declare-fun lt!1605239 () Unit!78635)

(assert (=> b!4399867 (= lt!1605239 lt!1605236)))

(declare-fun b!4399868 () Bool)

(assert (=> b!4399868 (= e!2739603 Nil!49271)))

(declare-fun b!4399869 () Bool)

(declare-fun Unit!78715 () Unit!78635)

(assert (=> b!4399869 (= e!2739605 Unit!78715)))

(declare-fun b!4399870 () Bool)

(declare-fun res!1814597 () Bool)

(declare-fun e!2739604 () Bool)

(assert (=> b!4399870 (=> (not res!1814597) (not e!2739604))))

(declare-fun lt!1605238 () List!49395)

(assert (=> b!4399870 (= res!1814597 (= (length!128 lt!1605238) (length!129 (toList!3230 lt!1604701))))))

(declare-fun d!1326509 () Bool)

(assert (=> d!1326509 e!2739604))

(declare-fun res!1814598 () Bool)

(assert (=> d!1326509 (=> (not res!1814598) (not e!2739604))))

(assert (=> d!1326509 (= res!1814598 (noDuplicate!636 lt!1605238))))

(assert (=> d!1326509 (= lt!1605238 e!2739603)))

(declare-fun c!749076 () Bool)

(assert (=> d!1326509 (= c!749076 ((_ is Cons!49268) (toList!3230 lt!1604701)))))

(assert (=> d!1326509 (invariantList!748 (toList!3230 lt!1604701))))

(assert (=> d!1326509 (= (getKeysList!195 (toList!3230 lt!1604701)) lt!1605238)))

(declare-fun b!4399871 () Bool)

(assert (=> b!4399871 false))

(declare-fun Unit!78716 () Unit!78635)

(assert (=> b!4399871 (= e!2739606 Unit!78716)))

(declare-fun res!1814599 () Bool)

(assert (=> b!4399872 (=> (not res!1814599) (not e!2739604))))

(assert (=> b!4399872 (= res!1814599 (forall!9360 lt!1605238 lambda!148717))))

(declare-fun b!4399873 () Bool)

(declare-fun Unit!78717 () Unit!78635)

(assert (=> b!4399873 (= e!2739606 Unit!78717)))

(assert (=> b!4399874 (= e!2739604 (= (content!7866 lt!1605238) (content!7866 (map!10744 (toList!3230 lt!1604701) lambda!148718))))))

(assert (=> b!4399875 false))

(declare-fun lt!1605240 () Unit!78635)

(assert (=> b!4399875 (= lt!1605240 (forallContained!1995 (getKeysList!195 (t!356326 (toList!3230 lt!1604701))) lambda!148715 (_1!27725 (h!54891 (toList!3230 lt!1604701)))))))

(declare-fun Unit!78718 () Unit!78635)

(assert (=> b!4399875 (= e!2739605 Unit!78718)))

(assert (= (and d!1326509 c!749076) b!4399867))

(assert (= (and d!1326509 (not c!749076)) b!4399868))

(assert (= (and b!4399867 c!749074) b!4399871))

(assert (= (and b!4399867 (not c!749074)) b!4399873))

(assert (= (and b!4399867 c!749075) b!4399875))

(assert (= (and b!4399867 (not c!749075)) b!4399869))

(assert (= (and d!1326509 res!1814598) b!4399870))

(assert (= (and b!4399870 res!1814597) b!4399872))

(assert (= (and b!4399872 res!1814599) b!4399874))

(declare-fun m!5062213 () Bool)

(assert (=> d!1326509 m!5062213))

(declare-fun m!5062215 () Bool)

(assert (=> d!1326509 m!5062215))

(declare-fun m!5062217 () Bool)

(assert (=> b!4399875 m!5062217))

(assert (=> b!4399875 m!5062217))

(declare-fun m!5062219 () Bool)

(assert (=> b!4399875 m!5062219))

(declare-fun m!5062221 () Bool)

(assert (=> b!4399867 m!5062221))

(assert (=> b!4399867 m!5062217))

(declare-fun m!5062223 () Bool)

(assert (=> b!4399867 m!5062223))

(assert (=> b!4399867 m!5062217))

(declare-fun m!5062225 () Bool)

(assert (=> b!4399867 m!5062225))

(declare-fun m!5062227 () Bool)

(assert (=> b!4399867 m!5062227))

(declare-fun m!5062229 () Bool)

(assert (=> b!4399872 m!5062229))

(declare-fun m!5062231 () Bool)

(assert (=> b!4399874 m!5062231))

(declare-fun m!5062233 () Bool)

(assert (=> b!4399874 m!5062233))

(assert (=> b!4399874 m!5062233))

(declare-fun m!5062235 () Bool)

(assert (=> b!4399874 m!5062235))

(declare-fun m!5062237 () Bool)

(assert (=> b!4399870 m!5062237))

(declare-fun m!5062239 () Bool)

(assert (=> b!4399870 m!5062239))

(assert (=> b!4399330 d!1326509))

(assert (=> b!4399264 d!1326277))

(assert (=> b!4399264 d!1326279))

(declare-fun d!1326511 () Bool)

(declare-fun res!1814600 () Bool)

(declare-fun e!2739607 () Bool)

(assert (=> d!1326511 (=> res!1814600 e!2739607)))

(assert (=> d!1326511 (= res!1814600 (and ((_ is Cons!49268) (toList!3230 lt!1604701)) (= (_1!27725 (h!54891 (toList!3230 lt!1604701))) key!3918)))))

(assert (=> d!1326511 (= (containsKey!928 (toList!3230 lt!1604701) key!3918) e!2739607)))

(declare-fun b!4399876 () Bool)

(declare-fun e!2739608 () Bool)

(assert (=> b!4399876 (= e!2739607 e!2739608)))

(declare-fun res!1814601 () Bool)

(assert (=> b!4399876 (=> (not res!1814601) (not e!2739608))))

(assert (=> b!4399876 (= res!1814601 ((_ is Cons!49268) (toList!3230 lt!1604701)))))

(declare-fun b!4399877 () Bool)

(assert (=> b!4399877 (= e!2739608 (containsKey!928 (t!356326 (toList!3230 lt!1604701)) key!3918))))

(assert (= (and d!1326511 (not res!1814600)) b!4399876))

(assert (= (and b!4399876 res!1814601) b!4399877))

(declare-fun m!5062241 () Bool)

(assert (=> b!4399877 m!5062241))

(assert (=> d!1326165 d!1326511))

(declare-fun d!1326513 () Bool)

(declare-fun lt!1605242 () Bool)

(assert (=> d!1326513 (= lt!1605242 (select (content!7866 e!2739260) key!3918))))

(declare-fun e!2739610 () Bool)

(assert (=> d!1326513 (= lt!1605242 e!2739610)))

(declare-fun res!1814603 () Bool)

(assert (=> d!1326513 (=> (not res!1814603) (not e!2739610))))

(assert (=> d!1326513 (= res!1814603 ((_ is Cons!49271) e!2739260))))

(assert (=> d!1326513 (= (contains!11657 e!2739260 key!3918) lt!1605242)))

(declare-fun b!4399878 () Bool)

(declare-fun e!2739609 () Bool)

(assert (=> b!4399878 (= e!2739610 e!2739609)))

(declare-fun res!1814602 () Bool)

(assert (=> b!4399878 (=> res!1814602 e!2739609)))

(assert (=> b!4399878 (= res!1814602 (= (h!54896 e!2739260) key!3918))))

(declare-fun b!4399879 () Bool)

(assert (=> b!4399879 (= e!2739609 (contains!11657 (t!356329 e!2739260) key!3918))))

(assert (= (and d!1326513 res!1814603) b!4399878))

(assert (= (and b!4399878 (not res!1814602)) b!4399879))

(declare-fun m!5062243 () Bool)

(assert (=> d!1326513 m!5062243))

(declare-fun m!5062245 () Bool)

(assert (=> d!1326513 m!5062245))

(declare-fun m!5062247 () Bool)

(assert (=> b!4399879 m!5062247))

(assert (=> bm!306158 d!1326513))

(declare-fun d!1326515 () Bool)

(declare-fun choose!27575 (Hashable!5015 K!10625) (_ BitVec 64))

(assert (=> d!1326515 (= (hash!1861 hashF!1247 key!3918) (choose!27575 hashF!1247 key!3918))))

(declare-fun bs!728079 () Bool)

(assert (= bs!728079 d!1326515))

(declare-fun m!5062249 () Bool)

(assert (=> bs!728079 m!5062249))

(assert (=> d!1326181 d!1326515))

(declare-fun d!1326517 () Bool)

(assert (=> d!1326517 (= (get!16038 (getValueByKey!594 (toList!3229 lm!1707) hash!377)) (v!43701 (getValueByKey!594 (toList!3229 lm!1707) hash!377)))))

(assert (=> d!1326145 d!1326517))

(declare-fun d!1326519 () Bool)

(declare-fun c!749077 () Bool)

(assert (=> d!1326519 (= c!749077 (and ((_ is Cons!49269) (toList!3229 lm!1707)) (= (_1!27726 (h!54892 (toList!3229 lm!1707))) hash!377)))))

(declare-fun e!2739611 () Option!10608)

(assert (=> d!1326519 (= (getValueByKey!594 (toList!3229 lm!1707) hash!377) e!2739611)))

(declare-fun b!4399883 () Bool)

(declare-fun e!2739612 () Option!10608)

(assert (=> b!4399883 (= e!2739612 None!10607)))

(declare-fun b!4399882 () Bool)

(assert (=> b!4399882 (= e!2739612 (getValueByKey!594 (t!356327 (toList!3229 lm!1707)) hash!377))))

(declare-fun b!4399881 () Bool)

(assert (=> b!4399881 (= e!2739611 e!2739612)))

(declare-fun c!749078 () Bool)

(assert (=> b!4399881 (= c!749078 (and ((_ is Cons!49269) (toList!3229 lm!1707)) (not (= (_1!27726 (h!54892 (toList!3229 lm!1707))) hash!377))))))

(declare-fun b!4399880 () Bool)

(assert (=> b!4399880 (= e!2739611 (Some!10607 (_2!27726 (h!54892 (toList!3229 lm!1707)))))))

(assert (= (and d!1326519 c!749077) b!4399880))

(assert (= (and d!1326519 (not c!749077)) b!4399881))

(assert (= (and b!4399881 c!749078) b!4399882))

(assert (= (and b!4399881 (not c!749078)) b!4399883))

(declare-fun m!5062251 () Bool)

(assert (=> b!4399882 m!5062251))

(assert (=> d!1326145 d!1326519))

(declare-fun d!1326521 () Bool)

(declare-fun res!1814604 () Bool)

(declare-fun e!2739613 () Bool)

(assert (=> d!1326521 (=> res!1814604 e!2739613)))

(assert (=> d!1326521 (= res!1814604 (and ((_ is Cons!49268) lt!1604789) (= (_1!27725 (h!54891 lt!1604789)) key!3918)))))

(assert (=> d!1326521 (= (containsKey!925 lt!1604789 key!3918) e!2739613)))

(declare-fun b!4399884 () Bool)

(declare-fun e!2739614 () Bool)

(assert (=> b!4399884 (= e!2739613 e!2739614)))

(declare-fun res!1814605 () Bool)

(assert (=> b!4399884 (=> (not res!1814605) (not e!2739614))))

(assert (=> b!4399884 (= res!1814605 ((_ is Cons!49268) lt!1604789))))

(declare-fun b!4399885 () Bool)

(assert (=> b!4399885 (= e!2739614 (containsKey!925 (t!356326 lt!1604789) key!3918))))

(assert (= (and d!1326521 (not res!1814604)) b!4399884))

(assert (= (and b!4399884 res!1814605) b!4399885))

(declare-fun m!5062253 () Bool)

(assert (=> b!4399885 m!5062253))

(assert (=> d!1326079 d!1326521))

(declare-fun d!1326523 () Bool)

(declare-fun res!1814606 () Bool)

(declare-fun e!2739615 () Bool)

(assert (=> d!1326523 (=> res!1814606 e!2739615)))

(assert (=> d!1326523 (= res!1814606 (not ((_ is Cons!49268) lt!1604703)))))

(assert (=> d!1326523 (= (noDuplicateKeys!623 lt!1604703) e!2739615)))

(declare-fun b!4399886 () Bool)

(declare-fun e!2739616 () Bool)

(assert (=> b!4399886 (= e!2739615 e!2739616)))

(declare-fun res!1814607 () Bool)

(assert (=> b!4399886 (=> (not res!1814607) (not e!2739616))))

(assert (=> b!4399886 (= res!1814607 (not (containsKey!925 (t!356326 lt!1604703) (_1!27725 (h!54891 lt!1604703)))))))

(declare-fun b!4399887 () Bool)

(assert (=> b!4399887 (= e!2739616 (noDuplicateKeys!623 (t!356326 lt!1604703)))))

(assert (= (and d!1326523 (not res!1814606)) b!4399886))

(assert (= (and b!4399886 res!1814607) b!4399887))

(declare-fun m!5062255 () Bool)

(assert (=> b!4399886 m!5062255))

(assert (=> b!4399887 m!5062201))

(assert (=> d!1326079 d!1326523))

(declare-fun d!1326525 () Bool)

(declare-fun res!1814608 () Bool)

(declare-fun e!2739617 () Bool)

(assert (=> d!1326525 (=> res!1814608 e!2739617)))

(assert (=> d!1326525 (= res!1814608 (not ((_ is Cons!49268) (_2!27726 lt!1604700))))))

(assert (=> d!1326525 (= (noDuplicateKeys!623 (_2!27726 lt!1604700)) e!2739617)))

(declare-fun b!4399888 () Bool)

(declare-fun e!2739618 () Bool)

(assert (=> b!4399888 (= e!2739617 e!2739618)))

(declare-fun res!1814609 () Bool)

(assert (=> b!4399888 (=> (not res!1814609) (not e!2739618))))

(assert (=> b!4399888 (= res!1814609 (not (containsKey!925 (t!356326 (_2!27726 lt!1604700)) (_1!27725 (h!54891 (_2!27726 lt!1604700))))))))

(declare-fun b!4399889 () Bool)

(assert (=> b!4399889 (= e!2739618 (noDuplicateKeys!623 (t!356326 (_2!27726 lt!1604700))))))

(assert (= (and d!1326525 (not res!1814608)) b!4399888))

(assert (= (and b!4399888 res!1814609) b!4399889))

(declare-fun m!5062257 () Bool)

(assert (=> b!4399888 m!5062257))

(declare-fun m!5062259 () Bool)

(assert (=> b!4399889 m!5062259))

(assert (=> bs!727825 d!1326525))

(declare-fun d!1326527 () Bool)

(declare-fun res!1814610 () Bool)

(declare-fun e!2739619 () Bool)

(assert (=> d!1326527 (=> res!1814610 e!2739619)))

(assert (=> d!1326527 (= res!1814610 (not ((_ is Cons!49268) (t!356326 newBucket!200))))))

(assert (=> d!1326527 (= (noDuplicateKeys!623 (t!356326 newBucket!200)) e!2739619)))

(declare-fun b!4399890 () Bool)

(declare-fun e!2739620 () Bool)

(assert (=> b!4399890 (= e!2739619 e!2739620)))

(declare-fun res!1814611 () Bool)

(assert (=> b!4399890 (=> (not res!1814611) (not e!2739620))))

(assert (=> b!4399890 (= res!1814611 (not (containsKey!925 (t!356326 (t!356326 newBucket!200)) (_1!27725 (h!54891 (t!356326 newBucket!200))))))))

(declare-fun b!4399891 () Bool)

(assert (=> b!4399891 (= e!2739620 (noDuplicateKeys!623 (t!356326 (t!356326 newBucket!200))))))

(assert (= (and d!1326527 (not res!1814610)) b!4399890))

(assert (= (and b!4399890 res!1814611) b!4399891))

(declare-fun m!5062261 () Bool)

(assert (=> b!4399890 m!5062261))

(declare-fun m!5062263 () Bool)

(assert (=> b!4399891 m!5062263))

(assert (=> b!4399282 d!1326527))

(declare-fun bs!728080 () Bool)

(declare-fun b!4399900 () Bool)

(assert (= bs!728080 (and b!4399900 b!4399872)))

(declare-fun lambda!148719 () Int)

(assert (=> bs!728080 (= (= (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (toList!3230 lt!1604701)) (= lambda!148719 lambda!148717))))

(declare-fun bs!728081 () Bool)

(assert (= bs!728081 (and b!4399900 b!4399791)))

(assert (=> bs!728081 (= (= (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (= lambda!148719 lambda!148694))))

(declare-fun bs!728082 () Bool)

(assert (= bs!728082 (and b!4399900 b!4399818)))

(assert (=> bs!728082 (= (= (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148719 lambda!148706))))

(declare-fun bs!728083 () Bool)

(assert (= bs!728083 (and b!4399900 b!4399867)))

(assert (=> bs!728083 (= (= (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (Cons!49268 (h!54891 (toList!3230 lt!1604701)) (t!356326 (toList!3230 lt!1604701)))) (= lambda!148719 lambda!148716))))

(declare-fun bs!728084 () Bool)

(assert (= bs!728084 (and b!4399900 b!4399848)))

(assert (=> bs!728084 (= (= (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148719 lambda!148713))))

(declare-fun bs!728085 () Bool)

(assert (= bs!728085 (and b!4399900 b!4399813)))

(assert (=> bs!728085 (= (= (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))) (= lambda!148719 lambda!148705))))

(declare-fun bs!728086 () Bool)

(assert (= bs!728086 (and b!4399900 b!4399875)))

(assert (=> bs!728086 (= (= (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (t!356326 (toList!3230 lt!1604701))) (= lambda!148719 lambda!148715))))

(declare-fun bs!728087 () Bool)

(assert (= bs!728087 (and b!4399900 b!4399821)))

(assert (=> bs!728087 (= (= (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (= lambda!148719 lambda!148704))))

(assert (=> b!4399900 true))

(declare-fun bs!728088 () Bool)

(declare-fun b!4399892 () Bool)

(assert (= bs!728088 (and b!4399892 b!4399872)))

(declare-fun lambda!148720 () Int)

(assert (=> bs!728088 (= (= (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (toList!3230 lt!1604701)) (= lambda!148720 lambda!148717))))

(declare-fun bs!728089 () Bool)

(assert (= bs!728089 (and b!4399892 b!4399900)))

(assert (=> bs!728089 (= (= (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (= lambda!148720 lambda!148719))))

(declare-fun bs!728090 () Bool)

(assert (= bs!728090 (and b!4399892 b!4399791)))

(assert (=> bs!728090 (= (= (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (= lambda!148720 lambda!148694))))

(declare-fun bs!728091 () Bool)

(assert (= bs!728091 (and b!4399892 b!4399818)))

(assert (=> bs!728091 (= (= (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148720 lambda!148706))))

(declare-fun bs!728092 () Bool)

(assert (= bs!728092 (and b!4399892 b!4399867)))

(assert (=> bs!728092 (= (= (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (Cons!49268 (h!54891 (toList!3230 lt!1604701)) (t!356326 (toList!3230 lt!1604701)))) (= lambda!148720 lambda!148716))))

(declare-fun bs!728093 () Bool)

(assert (= bs!728093 (and b!4399892 b!4399848)))

(assert (=> bs!728093 (= (= (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148720 lambda!148713))))

(declare-fun bs!728094 () Bool)

(assert (= bs!728094 (and b!4399892 b!4399813)))

(assert (=> bs!728094 (= (= (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))) (= lambda!148720 lambda!148705))))

(declare-fun bs!728095 () Bool)

(assert (= bs!728095 (and b!4399892 b!4399875)))

(assert (=> bs!728095 (= (= (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (t!356326 (toList!3230 lt!1604701))) (= lambda!148720 lambda!148715))))

(declare-fun bs!728096 () Bool)

(assert (= bs!728096 (and b!4399892 b!4399821)))

(assert (=> bs!728096 (= (= (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (= lambda!148720 lambda!148704))))

(assert (=> b!4399892 true))

(declare-fun bs!728097 () Bool)

(declare-fun b!4399897 () Bool)

(assert (= bs!728097 (and b!4399897 b!4399872)))

(declare-fun lambda!148721 () Int)

(assert (=> bs!728097 (= (= (toList!3230 (extractMap!682 (toList!3229 lm!1707))) (toList!3230 lt!1604701)) (= lambda!148721 lambda!148717))))

(declare-fun bs!728098 () Bool)

(assert (= bs!728098 (and b!4399897 b!4399791)))

(assert (=> bs!728098 (= lambda!148721 lambda!148694)))

(declare-fun bs!728099 () Bool)

(assert (= bs!728099 (and b!4399897 b!4399818)))

(assert (=> bs!728099 (= (= (toList!3230 (extractMap!682 (toList!3229 lm!1707))) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148721 lambda!148706))))

(declare-fun bs!728100 () Bool)

(assert (= bs!728100 (and b!4399897 b!4399867)))

(assert (=> bs!728100 (= (= (toList!3230 (extractMap!682 (toList!3229 lm!1707))) (Cons!49268 (h!54891 (toList!3230 lt!1604701)) (t!356326 (toList!3230 lt!1604701)))) (= lambda!148721 lambda!148716))))

(declare-fun bs!728101 () Bool)

(assert (= bs!728101 (and b!4399897 b!4399848)))

(assert (=> bs!728101 (= (= (toList!3230 (extractMap!682 (toList!3229 lm!1707))) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148721 lambda!148713))))

(declare-fun bs!728102 () Bool)

(assert (= bs!728102 (and b!4399897 b!4399900)))

(assert (=> bs!728102 (= (= (toList!3230 (extractMap!682 (toList!3229 lm!1707))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (= lambda!148721 lambda!148719))))

(declare-fun bs!728103 () Bool)

(assert (= bs!728103 (and b!4399897 b!4399892)))

(assert (=> bs!728103 (= (= (toList!3230 (extractMap!682 (toList!3229 lm!1707))) (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))))) (= lambda!148721 lambda!148720))))

(declare-fun bs!728104 () Bool)

(assert (= bs!728104 (and b!4399897 b!4399813)))

(assert (=> bs!728104 (= (= (toList!3230 (extractMap!682 (toList!3229 lm!1707))) (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))) (= lambda!148721 lambda!148705))))

(declare-fun bs!728105 () Bool)

(assert (= bs!728105 (and b!4399897 b!4399875)))

(assert (=> bs!728105 (= (= (toList!3230 (extractMap!682 (toList!3229 lm!1707))) (t!356326 (toList!3230 lt!1604701))) (= lambda!148721 lambda!148715))))

(declare-fun bs!728106 () Bool)

(assert (= bs!728106 (and b!4399897 b!4399821)))

(assert (=> bs!728106 (= (= (toList!3230 (extractMap!682 (toList!3229 lm!1707))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (= lambda!148721 lambda!148704))))

(assert (=> b!4399897 true))

(declare-fun bs!728107 () Bool)

(declare-fun b!4399899 () Bool)

(assert (= bs!728107 (and b!4399899 b!4399792)))

(declare-fun lambda!148722 () Int)

(assert (=> bs!728107 (= lambda!148722 lambda!148695)))

(declare-fun bs!728108 () Bool)

(assert (= bs!728108 (and b!4399899 b!4399820)))

(assert (=> bs!728108 (= lambda!148722 lambda!148707)))

(declare-fun bs!728109 () Bool)

(assert (= bs!728109 (and b!4399899 b!4399849)))

(assert (=> bs!728109 (= lambda!148722 lambda!148714)))

(declare-fun bs!728110 () Bool)

(assert (= bs!728110 (and b!4399899 b!4399874)))

(assert (=> bs!728110 (= lambda!148722 lambda!148718)))

(declare-fun e!2739621 () List!49395)

(assert (=> b!4399892 (= e!2739621 (Cons!49271 (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (getKeysList!195 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))))))))

(declare-fun c!749079 () Bool)

(assert (=> b!4399892 (= c!749079 (containsKey!928 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))))))))

(declare-fun lt!1605245 () Unit!78635)

(declare-fun e!2739624 () Unit!78635)

(assert (=> b!4399892 (= lt!1605245 e!2739624)))

(declare-fun c!749080 () Bool)

(assert (=> b!4399892 (= c!749080 (contains!11657 (getKeysList!195 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))))))))

(declare-fun lt!1605249 () Unit!78635)

(declare-fun e!2739623 () Unit!78635)

(assert (=> b!4399892 (= lt!1605249 e!2739623)))

(declare-fun lt!1605243 () List!49395)

(assert (=> b!4399892 (= lt!1605243 (getKeysList!195 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))))))

(declare-fun lt!1605244 () Unit!78635)

(assert (=> b!4399892 (= lt!1605244 (lemmaForallContainsAddHeadPreserves!58 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) lt!1605243 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))))))

(assert (=> b!4399892 (forall!9360 lt!1605243 lambda!148720)))

(declare-fun lt!1605247 () Unit!78635)

(assert (=> b!4399892 (= lt!1605247 lt!1605244)))

(declare-fun b!4399893 () Bool)

(assert (=> b!4399893 (= e!2739621 Nil!49271)))

(declare-fun b!4399894 () Bool)

(declare-fun Unit!78727 () Unit!78635)

(assert (=> b!4399894 (= e!2739623 Unit!78727)))

(declare-fun b!4399895 () Bool)

(declare-fun res!1814612 () Bool)

(declare-fun e!2739622 () Bool)

(assert (=> b!4399895 (=> (not res!1814612) (not e!2739622))))

(declare-fun lt!1605246 () List!49395)

(assert (=> b!4399895 (= res!1814612 (= (length!128 lt!1605246) (length!129 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))))))

(declare-fun d!1326529 () Bool)

(assert (=> d!1326529 e!2739622))

(declare-fun res!1814613 () Bool)

(assert (=> d!1326529 (=> (not res!1814613) (not e!2739622))))

(assert (=> d!1326529 (= res!1814613 (noDuplicate!636 lt!1605246))))

(assert (=> d!1326529 (= lt!1605246 e!2739621)))

(declare-fun c!749081 () Bool)

(assert (=> d!1326529 (= c!749081 ((_ is Cons!49268) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))))))

(assert (=> d!1326529 (invariantList!748 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))))

(assert (=> d!1326529 (= (getKeysList!195 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) lt!1605246)))

(declare-fun b!4399896 () Bool)

(assert (=> b!4399896 false))

(declare-fun Unit!78730 () Unit!78635)

(assert (=> b!4399896 (= e!2739624 Unit!78730)))

(declare-fun res!1814614 () Bool)

(assert (=> b!4399897 (=> (not res!1814614) (not e!2739622))))

(assert (=> b!4399897 (= res!1814614 (forall!9360 lt!1605246 lambda!148721))))

(declare-fun b!4399898 () Bool)

(declare-fun Unit!78731 () Unit!78635)

(assert (=> b!4399898 (= e!2739624 Unit!78731)))

(assert (=> b!4399899 (= e!2739622 (= (content!7866 lt!1605246) (content!7866 (map!10744 (toList!3230 (extractMap!682 (toList!3229 lm!1707))) lambda!148722))))))

(assert (=> b!4399900 false))

(declare-fun lt!1605248 () Unit!78635)

(assert (=> b!4399900 (= lt!1605248 (forallContained!1995 (getKeysList!195 (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) lambda!148719 (_1!27725 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))))))))

(declare-fun Unit!78733 () Unit!78635)

(assert (=> b!4399900 (= e!2739623 Unit!78733)))

(assert (= (and d!1326529 c!749081) b!4399892))

(assert (= (and d!1326529 (not c!749081)) b!4399893))

(assert (= (and b!4399892 c!749079) b!4399896))

(assert (= (and b!4399892 (not c!749079)) b!4399898))

(assert (= (and b!4399892 c!749080) b!4399900))

(assert (= (and b!4399892 (not c!749080)) b!4399894))

(assert (= (and d!1326529 res!1814613) b!4399895))

(assert (= (and b!4399895 res!1814612) b!4399897))

(assert (= (and b!4399897 res!1814614) b!4399899))

(declare-fun m!5062265 () Bool)

(assert (=> d!1326529 m!5062265))

(assert (=> d!1326529 m!5061647))

(declare-fun m!5062267 () Bool)

(assert (=> b!4399900 m!5062267))

(assert (=> b!4399900 m!5062267))

(declare-fun m!5062269 () Bool)

(assert (=> b!4399900 m!5062269))

(declare-fun m!5062271 () Bool)

(assert (=> b!4399892 m!5062271))

(assert (=> b!4399892 m!5062267))

(declare-fun m!5062273 () Bool)

(assert (=> b!4399892 m!5062273))

(assert (=> b!4399892 m!5062267))

(declare-fun m!5062275 () Bool)

(assert (=> b!4399892 m!5062275))

(declare-fun m!5062277 () Bool)

(assert (=> b!4399892 m!5062277))

(declare-fun m!5062279 () Bool)

(assert (=> b!4399897 m!5062279))

(declare-fun m!5062281 () Bool)

(assert (=> b!4399899 m!5062281))

(declare-fun m!5062283 () Bool)

(assert (=> b!4399899 m!5062283))

(assert (=> b!4399899 m!5062283))

(declare-fun m!5062285 () Bool)

(assert (=> b!4399899 m!5062285))

(declare-fun m!5062287 () Bool)

(assert (=> b!4399895 m!5062287))

(assert (=> b!4399895 m!5062067))

(assert (=> b!4399268 d!1326529))

(declare-fun bs!728111 () Bool)

(declare-fun b!4399902 () Bool)

(assert (= bs!728111 (and b!4399902 b!4399897)))

(declare-fun lambda!148723 () Int)

(assert (=> bs!728111 (= (= (toList!3230 lt!1604701) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (= lambda!148723 lambda!148721))))

(declare-fun bs!728112 () Bool)

(assert (= bs!728112 (and b!4399902 b!4399872)))

(assert (=> bs!728112 (= lambda!148723 lambda!148717)))

(declare-fun bs!728113 () Bool)

(assert (= bs!728113 (and b!4399902 b!4399791)))

(assert (=> bs!728113 (= (= (toList!3230 lt!1604701) (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (= lambda!148723 lambda!148694))))

(declare-fun bs!728114 () Bool)

(assert (= bs!728114 (and b!4399902 b!4399818)))

(assert (=> bs!728114 (= (= (toList!3230 lt!1604701) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148723 lambda!148706))))

(declare-fun bs!728115 () Bool)

(assert (= bs!728115 (and b!4399902 b!4399867)))

(assert (=> bs!728115 (= (= (toList!3230 lt!1604701) (Cons!49268 (h!54891 (toList!3230 lt!1604701)) (t!356326 (toList!3230 lt!1604701)))) (= lambda!148723 lambda!148716))))

(declare-fun bs!728116 () Bool)

(assert (= bs!728116 (and b!4399902 b!4399848)))

(assert (=> bs!728116 (= (= (toList!3230 lt!1604701) (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (= lambda!148723 lambda!148713))))

(declare-fun bs!728117 () Bool)

(assert (= bs!728117 (and b!4399902 b!4399900)))

(assert (=> bs!728117 (= (= (toList!3230 lt!1604701) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707))))) (= lambda!148723 lambda!148719))))

(declare-fun bs!728118 () Bool)

(assert (= bs!728118 (and b!4399902 b!4399892)))

(assert (=> bs!728118 (= (= (toList!3230 lt!1604701) (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lm!1707)))))) (= lambda!148723 lambda!148720))))

(declare-fun bs!728119 () Bool)

(assert (= bs!728119 (and b!4399902 b!4399813)))

(assert (=> bs!728119 (= (= (toList!3230 lt!1604701) (Cons!49268 (h!54891 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))))) (= lambda!148723 lambda!148705))))

(declare-fun bs!728120 () Bool)

(assert (= bs!728120 (and b!4399902 b!4399875)))

(assert (=> bs!728120 (= (= (toList!3230 lt!1604701) (t!356326 (toList!3230 lt!1604701))) (= lambda!148723 lambda!148715))))

(declare-fun bs!728121 () Bool)

(assert (= bs!728121 (and b!4399902 b!4399821)))

(assert (=> bs!728121 (= (= (toList!3230 lt!1604701) (t!356326 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))) (= lambda!148723 lambda!148704))))

(assert (=> b!4399902 true))

(declare-fun bs!728122 () Bool)

(declare-fun b!4399903 () Bool)

(assert (= bs!728122 (and b!4399903 b!4399899)))

(declare-fun lambda!148724 () Int)

(assert (=> bs!728122 (= lambda!148724 lambda!148722)))

(declare-fun bs!728123 () Bool)

(assert (= bs!728123 (and b!4399903 b!4399874)))

(assert (=> bs!728123 (= lambda!148724 lambda!148718)))

(declare-fun bs!728124 () Bool)

(assert (= bs!728124 (and b!4399903 b!4399792)))

(assert (=> bs!728124 (= lambda!148724 lambda!148695)))

(declare-fun bs!728125 () Bool)

(assert (= bs!728125 (and b!4399903 b!4399820)))

(assert (=> bs!728125 (= lambda!148724 lambda!148707)))

(declare-fun bs!728126 () Bool)

(assert (= bs!728126 (and b!4399903 b!4399849)))

(assert (=> bs!728126 (= lambda!148724 lambda!148714)))

(declare-fun d!1326531 () Bool)

(declare-fun e!2739625 () Bool)

(assert (=> d!1326531 e!2739625))

(declare-fun res!1814615 () Bool)

(assert (=> d!1326531 (=> (not res!1814615) (not e!2739625))))

(declare-fun lt!1605250 () List!49395)

(assert (=> d!1326531 (= res!1814615 (noDuplicate!636 lt!1605250))))

(assert (=> d!1326531 (= lt!1605250 (getKeysList!195 (toList!3230 lt!1604701)))))

(assert (=> d!1326531 (= (keys!16741 lt!1604701) lt!1605250)))

(declare-fun b!4399901 () Bool)

(declare-fun res!1814617 () Bool)

(assert (=> b!4399901 (=> (not res!1814617) (not e!2739625))))

(assert (=> b!4399901 (= res!1814617 (= (length!128 lt!1605250) (length!129 (toList!3230 lt!1604701))))))

(declare-fun res!1814616 () Bool)

(assert (=> b!4399902 (=> (not res!1814616) (not e!2739625))))

(assert (=> b!4399902 (= res!1814616 (forall!9360 lt!1605250 lambda!148723))))

(assert (=> b!4399903 (= e!2739625 (= (content!7866 lt!1605250) (content!7866 (map!10744 (toList!3230 lt!1604701) lambda!148724))))))

(assert (= (and d!1326531 res!1814615) b!4399901))

(assert (= (and b!4399901 res!1814617) b!4399902))

(assert (= (and b!4399902 res!1814616) b!4399903))

(declare-fun m!5062289 () Bool)

(assert (=> d!1326531 m!5062289))

(assert (=> d!1326531 m!5061389))

(declare-fun m!5062291 () Bool)

(assert (=> b!4399901 m!5062291))

(assert (=> b!4399901 m!5062239))

(declare-fun m!5062293 () Bool)

(assert (=> b!4399902 m!5062293))

(declare-fun m!5062295 () Bool)

(assert (=> b!4399903 m!5062295))

(declare-fun m!5062297 () Bool)

(assert (=> b!4399903 m!5062297))

(assert (=> b!4399903 m!5062297))

(declare-fun m!5062299 () Bool)

(assert (=> b!4399903 m!5062299))

(assert (=> b!4399324 d!1326531))

(declare-fun d!1326533 () Bool)

(declare-fun res!1814618 () Bool)

(declare-fun e!2739626 () Bool)

(assert (=> d!1326533 (=> res!1814618 e!2739626)))

(assert (=> d!1326533 (= res!1814618 (and ((_ is Cons!49269) (toList!3229 lm!1707)) (= (_1!27726 (h!54892 (toList!3229 lm!1707))) hash!377)))))

(assert (=> d!1326533 (= (containsKey!929 (toList!3229 lm!1707) hash!377) e!2739626)))

(declare-fun b!4399904 () Bool)

(declare-fun e!2739627 () Bool)

(assert (=> b!4399904 (= e!2739626 e!2739627)))

(declare-fun res!1814619 () Bool)

(assert (=> b!4399904 (=> (not res!1814619) (not e!2739627))))

(assert (=> b!4399904 (= res!1814619 (and (or (not ((_ is Cons!49269) (toList!3229 lm!1707))) (bvsle (_1!27726 (h!54892 (toList!3229 lm!1707))) hash!377)) ((_ is Cons!49269) (toList!3229 lm!1707)) (bvslt (_1!27726 (h!54892 (toList!3229 lm!1707))) hash!377)))))

(declare-fun b!4399905 () Bool)

(assert (=> b!4399905 (= e!2739627 (containsKey!929 (t!356327 (toList!3229 lm!1707)) hash!377))))

(assert (= (and d!1326533 (not res!1814618)) b!4399904))

(assert (= (and b!4399904 res!1814619) b!4399905))

(declare-fun m!5062301 () Bool)

(assert (=> b!4399905 m!5062301))

(assert (=> d!1326141 d!1326533))

(assert (=> d!1326143 d!1326459))

(declare-fun b!4399906 () Bool)

(declare-fun e!2739628 () List!49392)

(assert (=> b!4399906 (= e!2739628 (t!356326 (t!356326 lt!1604699)))))

(declare-fun b!4399909 () Bool)

(declare-fun e!2739629 () List!49392)

(assert (=> b!4399909 (= e!2739629 Nil!49268)))

(declare-fun d!1326535 () Bool)

(declare-fun lt!1605251 () List!49392)

(assert (=> d!1326535 (not (containsKey!925 lt!1605251 key!3918))))

(assert (=> d!1326535 (= lt!1605251 e!2739628)))

(declare-fun c!749083 () Bool)

(assert (=> d!1326535 (= c!749083 (and ((_ is Cons!49268) (t!356326 lt!1604699)) (= (_1!27725 (h!54891 (t!356326 lt!1604699))) key!3918)))))

(assert (=> d!1326535 (noDuplicateKeys!623 (t!356326 lt!1604699))))

(assert (=> d!1326535 (= (removePairForKey!591 (t!356326 lt!1604699) key!3918) lt!1605251)))

(declare-fun b!4399907 () Bool)

(assert (=> b!4399907 (= e!2739628 e!2739629)))

(declare-fun c!749082 () Bool)

(assert (=> b!4399907 (= c!749082 ((_ is Cons!49268) (t!356326 lt!1604699)))))

(declare-fun b!4399908 () Bool)

(assert (=> b!4399908 (= e!2739629 (Cons!49268 (h!54891 (t!356326 lt!1604699)) (removePairForKey!591 (t!356326 (t!356326 lt!1604699)) key!3918)))))

(assert (= (and d!1326535 c!749083) b!4399906))

(assert (= (and d!1326535 (not c!749083)) b!4399907))

(assert (= (and b!4399907 c!749082) b!4399908))

(assert (= (and b!4399907 (not c!749082)) b!4399909))

(declare-fun m!5062303 () Bool)

(assert (=> d!1326535 m!5062303))

(declare-fun m!5062305 () Bool)

(assert (=> d!1326535 m!5062305))

(declare-fun m!5062307 () Bool)

(assert (=> b!4399908 m!5062307))

(assert (=> b!4399297 d!1326535))

(declare-fun lt!1605252 () Bool)

(declare-fun d!1326537 () Bool)

(assert (=> d!1326537 (= lt!1605252 (select (content!7864 (toList!3229 lt!1604729)) (tuple2!48865 hash!377 newBucket!200)))))

(declare-fun e!2739630 () Bool)

(assert (=> d!1326537 (= lt!1605252 e!2739630)))

(declare-fun res!1814620 () Bool)

(assert (=> d!1326537 (=> (not res!1814620) (not e!2739630))))

(assert (=> d!1326537 (= res!1814620 ((_ is Cons!49269) (toList!3229 lt!1604729)))))

(assert (=> d!1326537 (= (contains!11653 (toList!3229 lt!1604729) (tuple2!48865 hash!377 newBucket!200)) lt!1605252)))

(declare-fun b!4399910 () Bool)

(declare-fun e!2739631 () Bool)

(assert (=> b!4399910 (= e!2739630 e!2739631)))

(declare-fun res!1814621 () Bool)

(assert (=> b!4399910 (=> res!1814621 e!2739631)))

(assert (=> b!4399910 (= res!1814621 (= (h!54892 (toList!3229 lt!1604729)) (tuple2!48865 hash!377 newBucket!200)))))

(declare-fun b!4399911 () Bool)

(assert (=> b!4399911 (= e!2739631 (contains!11653 (t!356327 (toList!3229 lt!1604729)) (tuple2!48865 hash!377 newBucket!200)))))

(assert (= (and d!1326537 res!1814620) b!4399910))

(assert (= (and b!4399910 (not res!1814621)) b!4399911))

(declare-fun m!5062309 () Bool)

(assert (=> d!1326537 m!5062309))

(declare-fun m!5062311 () Bool)

(assert (=> d!1326537 m!5062311))

(declare-fun m!5062313 () Bool)

(assert (=> b!4399911 m!5062313))

(assert (=> b!4399092 d!1326537))

(declare-fun d!1326539 () Bool)

(declare-fun lt!1605253 () Bool)

(assert (=> d!1326539 (= lt!1605253 (select (content!7866 (keys!16741 (extractMap!682 (toList!3229 lt!1604708)))) key!3918))))

(declare-fun e!2739633 () Bool)

(assert (=> d!1326539 (= lt!1605253 e!2739633)))

(declare-fun res!1814623 () Bool)

(assert (=> d!1326539 (=> (not res!1814623) (not e!2739633))))

(assert (=> d!1326539 (= res!1814623 ((_ is Cons!49271) (keys!16741 (extractMap!682 (toList!3229 lt!1604708)))))))

(assert (=> d!1326539 (= (contains!11657 (keys!16741 (extractMap!682 (toList!3229 lt!1604708))) key!3918) lt!1605253)))

(declare-fun b!4399912 () Bool)

(declare-fun e!2739632 () Bool)

(assert (=> b!4399912 (= e!2739633 e!2739632)))

(declare-fun res!1814622 () Bool)

(assert (=> b!4399912 (=> res!1814622 e!2739632)))

(assert (=> b!4399912 (= res!1814622 (= (h!54896 (keys!16741 (extractMap!682 (toList!3229 lt!1604708)))) key!3918))))

(declare-fun b!4399913 () Bool)

(assert (=> b!4399913 (= e!2739632 (contains!11657 (t!356329 (keys!16741 (extractMap!682 (toList!3229 lt!1604708)))) key!3918))))

(assert (= (and d!1326539 res!1814623) b!4399912))

(assert (= (and b!4399912 (not res!1814622)) b!4399913))

(assert (=> d!1326539 m!5061381))

(declare-fun m!5062315 () Bool)

(assert (=> d!1326539 m!5062315))

(declare-fun m!5062317 () Bool)

(assert (=> d!1326539 m!5062317))

(declare-fun m!5062319 () Bool)

(assert (=> b!4399913 m!5062319))

(assert (=> b!4399316 d!1326539))

(assert (=> b!4399316 d!1326487))

(declare-fun d!1326541 () Bool)

(declare-fun lt!1605254 () Bool)

(assert (=> d!1326541 (= lt!1605254 (select (content!7866 e!2739219) key!3918))))

(declare-fun e!2739635 () Bool)

(assert (=> d!1326541 (= lt!1605254 e!2739635)))

(declare-fun res!1814625 () Bool)

(assert (=> d!1326541 (=> (not res!1814625) (not e!2739635))))

(assert (=> d!1326541 (= res!1814625 ((_ is Cons!49271) e!2739219))))

(assert (=> d!1326541 (= (contains!11657 e!2739219 key!3918) lt!1605254)))

(declare-fun b!4399914 () Bool)

(declare-fun e!2739634 () Bool)

(assert (=> b!4399914 (= e!2739635 e!2739634)))

(declare-fun res!1814624 () Bool)

(assert (=> b!4399914 (=> res!1814624 e!2739634)))

(assert (=> b!4399914 (= res!1814624 (= (h!54896 e!2739219) key!3918))))

(declare-fun b!4399915 () Bool)

(assert (=> b!4399915 (= e!2739634 (contains!11657 (t!356329 e!2739219) key!3918))))

(assert (= (and d!1326541 res!1814625) b!4399914))

(assert (= (and b!4399914 (not res!1814624)) b!4399915))

(declare-fun m!5062321 () Bool)

(assert (=> d!1326541 m!5062321))

(declare-fun m!5062323 () Bool)

(assert (=> d!1326541 m!5062323))

(declare-fun m!5062325 () Bool)

(assert (=> b!4399915 m!5062325))

(assert (=> bm!306156 d!1326541))

(declare-fun d!1326543 () Bool)

(assert (=> d!1326543 (dynLambda!20758 lambda!148555 lt!1604700)))

(assert (=> d!1326543 true))

(declare-fun _$7!1604 () Unit!78635)

(assert (=> d!1326543 (= (choose!27560 (toList!3229 lt!1604708) lambda!148555 lt!1604700) _$7!1604)))

(declare-fun b_lambda!139661 () Bool)

(assert (=> (not b_lambda!139661) (not d!1326543)))

(declare-fun bs!728127 () Bool)

(assert (= bs!728127 d!1326543))

(assert (=> bs!728127 m!5061115))

(assert (=> d!1326071 d!1326543))

(assert (=> d!1326071 d!1326177))

(declare-fun d!1326545 () Bool)

(declare-fun res!1814626 () Bool)

(declare-fun e!2739636 () Bool)

(assert (=> d!1326545 (=> res!1814626 e!2739636)))

(assert (=> d!1326545 (= res!1814626 ((_ is Nil!49269) (toList!3229 lm!1707)))))

(assert (=> d!1326545 (= (forall!9356 (toList!3229 lm!1707) lambda!148577) e!2739636)))

(declare-fun b!4399916 () Bool)

(declare-fun e!2739637 () Bool)

(assert (=> b!4399916 (= e!2739636 e!2739637)))

(declare-fun res!1814627 () Bool)

(assert (=> b!4399916 (=> (not res!1814627) (not e!2739637))))

(assert (=> b!4399916 (= res!1814627 (dynLambda!20758 lambda!148577 (h!54892 (toList!3229 lm!1707))))))

(declare-fun b!4399917 () Bool)

(assert (=> b!4399917 (= e!2739637 (forall!9356 (t!356327 (toList!3229 lm!1707)) lambda!148577))))

(assert (= (and d!1326545 (not res!1814626)) b!4399916))

(assert (= (and b!4399916 res!1814627) b!4399917))

(declare-fun b_lambda!139663 () Bool)

(assert (=> (not b_lambda!139663) (not b!4399916)))

(declare-fun m!5062327 () Bool)

(assert (=> b!4399916 m!5062327))

(declare-fun m!5062329 () Bool)

(assert (=> b!4399917 m!5062329))

(assert (=> d!1326155 d!1326545))

(declare-fun d!1326547 () Bool)

(declare-fun res!1814628 () Bool)

(declare-fun e!2739638 () Bool)

(assert (=> d!1326547 (=> res!1814628 e!2739638)))

(assert (=> d!1326547 (= res!1814628 (and ((_ is Cons!49268) (t!356326 (_2!27726 (h!54892 (toList!3229 lm!1707))))) (= (_1!27725 (h!54891 (t!356326 (_2!27726 (h!54892 (toList!3229 lm!1707)))))) key!3918)))))

(assert (=> d!1326547 (= (containsKey!925 (t!356326 (_2!27726 (h!54892 (toList!3229 lm!1707)))) key!3918) e!2739638)))

(declare-fun b!4399918 () Bool)

(declare-fun e!2739639 () Bool)

(assert (=> b!4399918 (= e!2739638 e!2739639)))

(declare-fun res!1814629 () Bool)

(assert (=> b!4399918 (=> (not res!1814629) (not e!2739639))))

(assert (=> b!4399918 (= res!1814629 ((_ is Cons!49268) (t!356326 (_2!27726 (h!54892 (toList!3229 lm!1707))))))))

(declare-fun b!4399919 () Bool)

(assert (=> b!4399919 (= e!2739639 (containsKey!925 (t!356326 (t!356326 (_2!27726 (h!54892 (toList!3229 lm!1707))))) key!3918))))

(assert (= (and d!1326547 (not res!1814628)) b!4399918))

(assert (= (and b!4399918 res!1814629) b!4399919))

(declare-fun m!5062331 () Bool)

(assert (=> b!4399919 m!5062331))

(assert (=> b!4399338 d!1326547))

(declare-fun d!1326549 () Bool)

(assert (=> d!1326549 (= (get!16038 (getValueByKey!594 (toList!3229 lm!1707) (_1!27726 (h!54892 (toList!3229 lm!1707))))) (v!43701 (getValueByKey!594 (toList!3229 lm!1707) (_1!27726 (h!54892 (toList!3229 lm!1707))))))))

(assert (=> d!1326159 d!1326549))

(declare-fun d!1326551 () Bool)

(declare-fun c!749084 () Bool)

(assert (=> d!1326551 (= c!749084 (and ((_ is Cons!49269) (toList!3229 lm!1707)) (= (_1!27726 (h!54892 (toList!3229 lm!1707))) (_1!27726 (h!54892 (toList!3229 lm!1707))))))))

(declare-fun e!2739640 () Option!10608)

(assert (=> d!1326551 (= (getValueByKey!594 (toList!3229 lm!1707) (_1!27726 (h!54892 (toList!3229 lm!1707)))) e!2739640)))

(declare-fun b!4399923 () Bool)

(declare-fun e!2739641 () Option!10608)

(assert (=> b!4399923 (= e!2739641 None!10607)))

(declare-fun b!4399922 () Bool)

(assert (=> b!4399922 (= e!2739641 (getValueByKey!594 (t!356327 (toList!3229 lm!1707)) (_1!27726 (h!54892 (toList!3229 lm!1707)))))))

(declare-fun b!4399921 () Bool)

(assert (=> b!4399921 (= e!2739640 e!2739641)))

(declare-fun c!749085 () Bool)

(assert (=> b!4399921 (= c!749085 (and ((_ is Cons!49269) (toList!3229 lm!1707)) (not (= (_1!27726 (h!54892 (toList!3229 lm!1707))) (_1!27726 (h!54892 (toList!3229 lm!1707)))))))))

(declare-fun b!4399920 () Bool)

(assert (=> b!4399920 (= e!2739640 (Some!10607 (_2!27726 (h!54892 (toList!3229 lm!1707)))))))

(assert (= (and d!1326551 c!749084) b!4399920))

(assert (= (and d!1326551 (not c!749084)) b!4399921))

(assert (= (and b!4399921 c!749085) b!4399922))

(assert (= (and b!4399921 (not c!749085)) b!4399923))

(declare-fun m!5062333 () Bool)

(assert (=> b!4399922 m!5062333))

(assert (=> d!1326159 d!1326551))

(assert (=> b!4399262 d!1326465))

(assert (=> b!4399320 d!1326539))

(assert (=> b!4399320 d!1326487))

(declare-fun d!1326553 () Bool)

(assert (=> d!1326553 (= (invariantList!748 (toList!3230 lt!1604904)) (noDuplicatedKeys!152 (toList!3230 lt!1604904)))))

(declare-fun bs!728128 () Bool)

(assert (= bs!728128 d!1326553))

(declare-fun m!5062335 () Bool)

(assert (=> bs!728128 m!5062335))

(assert (=> d!1326173 d!1326553))

(declare-fun d!1326555 () Bool)

(declare-fun res!1814630 () Bool)

(declare-fun e!2739642 () Bool)

(assert (=> d!1326555 (=> res!1814630 e!2739642)))

(assert (=> d!1326555 (= res!1814630 ((_ is Nil!49269) (toList!3229 lt!1604708)))))

(assert (=> d!1326555 (= (forall!9356 (toList!3229 lt!1604708) lambda!148585) e!2739642)))

(declare-fun b!4399924 () Bool)

(declare-fun e!2739643 () Bool)

(assert (=> b!4399924 (= e!2739642 e!2739643)))

(declare-fun res!1814631 () Bool)

(assert (=> b!4399924 (=> (not res!1814631) (not e!2739643))))

(assert (=> b!4399924 (= res!1814631 (dynLambda!20758 lambda!148585 (h!54892 (toList!3229 lt!1604708))))))

(declare-fun b!4399925 () Bool)

(assert (=> b!4399925 (= e!2739643 (forall!9356 (t!356327 (toList!3229 lt!1604708)) lambda!148585))))

(assert (= (and d!1326555 (not res!1814630)) b!4399924))

(assert (= (and b!4399924 res!1814631) b!4399925))

(declare-fun b_lambda!139665 () Bool)

(assert (=> (not b_lambda!139665) (not b!4399924)))

(declare-fun m!5062337 () Bool)

(assert (=> b!4399924 m!5062337))

(declare-fun m!5062339 () Bool)

(assert (=> b!4399925 m!5062339))

(assert (=> d!1326173 d!1326555))

(assert (=> b!4399302 d!1326149))

(assert (=> d!1326167 d!1326165))

(declare-fun d!1326557 () Bool)

(assert (=> d!1326557 (contains!11655 lt!1604701 key!3918)))

(assert (=> d!1326557 true))

(declare-fun _$11!1197 () Unit!78635)

(assert (=> d!1326557 (= (choose!27562 (_2!27726 (h!54892 (toList!3229 lm!1707))) key!3918 newValue!99 lt!1604701) _$11!1197)))

(declare-fun bs!728129 () Bool)

(assert (= bs!728129 d!1326557))

(assert (=> bs!728129 m!5060953))

(assert (=> d!1326167 d!1326557))

(assert (=> d!1326167 d!1326481))

(declare-fun d!1326559 () Bool)

(assert (=> d!1326559 (isDefined!7901 (getValueByKey!595 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918))))

(declare-fun lt!1605255 () Unit!78635)

(assert (=> d!1326559 (= lt!1605255 (choose!27568 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918))))

(assert (=> d!1326559 (invariantList!748 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))))

(assert (=> d!1326559 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!504 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918) lt!1605255)))

(declare-fun bs!728130 () Bool)

(assert (= bs!728130 d!1326559))

(assert (=> bs!728130 m!5061375))

(assert (=> bs!728130 m!5061375))

(assert (=> bs!728130 m!5061377))

(declare-fun m!5062341 () Bool)

(assert (=> bs!728130 m!5062341))

(assert (=> bs!728130 m!5062079))

(assert (=> b!4399313 d!1326559))

(assert (=> b!4399313 d!1326283))

(assert (=> b!4399313 d!1326285))

(declare-fun d!1326561 () Bool)

(assert (=> d!1326561 (contains!11657 (getKeysList!195 (toList!3230 (extractMap!682 (toList!3229 lt!1604708)))) key!3918)))

(declare-fun lt!1605256 () Unit!78635)

(assert (=> d!1326561 (= lt!1605256 (choose!27569 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918))))

(assert (=> d!1326561 (invariantList!748 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))))

(assert (=> d!1326561 (= (lemmaInListThenGetKeysListContains!192 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918) lt!1605256)))

(declare-fun bs!728131 () Bool)

(assert (= bs!728131 d!1326561))

(assert (=> bs!728131 m!5061369))

(assert (=> bs!728131 m!5061369))

(declare-fun m!5062343 () Bool)

(assert (=> bs!728131 m!5062343))

(declare-fun m!5062345 () Bool)

(assert (=> bs!728131 m!5062345))

(assert (=> bs!728131 m!5062079))

(assert (=> b!4399313 d!1326561))

(declare-fun d!1326563 () Bool)

(declare-fun res!1814632 () Bool)

(declare-fun e!2739644 () Bool)

(assert (=> d!1326563 (=> res!1814632 e!2739644)))

(assert (=> d!1326563 (= res!1814632 (not ((_ is Cons!49268) (_2!27726 lt!1604698))))))

(assert (=> d!1326563 (= (noDuplicateKeys!623 (_2!27726 lt!1604698)) e!2739644)))

(declare-fun b!4399926 () Bool)

(declare-fun e!2739645 () Bool)

(assert (=> b!4399926 (= e!2739644 e!2739645)))

(declare-fun res!1814633 () Bool)

(assert (=> b!4399926 (=> (not res!1814633) (not e!2739645))))

(assert (=> b!4399926 (= res!1814633 (not (containsKey!925 (t!356326 (_2!27726 lt!1604698)) (_1!27725 (h!54891 (_2!27726 lt!1604698))))))))

(declare-fun b!4399927 () Bool)

(assert (=> b!4399927 (= e!2739645 (noDuplicateKeys!623 (t!356326 (_2!27726 lt!1604698))))))

(assert (= (and d!1326563 (not res!1814632)) b!4399926))

(assert (= (and b!4399926 res!1814633) b!4399927))

(declare-fun m!5062347 () Bool)

(assert (=> b!4399926 m!5062347))

(declare-fun m!5062349 () Bool)

(assert (=> b!4399927 m!5062349))

(assert (=> bs!727823 d!1326563))

(assert (=> b!4399314 d!1326469))

(declare-fun d!1326565 () Bool)

(assert (=> d!1326565 (containsKey!928 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918)))

(declare-fun lt!1605257 () Unit!78635)

(assert (=> d!1326565 (= lt!1605257 (choose!27573 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918))))

(assert (=> d!1326565 (invariantList!748 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))))))

(assert (=> d!1326565 (= (lemmaInGetKeysListThenContainsKey!193 (toList!3230 (extractMap!682 (toList!3229 lt!1604708))) key!3918) lt!1605257)))

(declare-fun bs!728132 () Bool)

(assert (= bs!728132 d!1326565))

(assert (=> bs!728132 m!5061367))

(declare-fun m!5062351 () Bool)

(assert (=> bs!728132 m!5062351))

(assert (=> bs!728132 m!5062079))

(assert (=> b!4399314 d!1326565))

(declare-fun d!1326567 () Bool)

(declare-fun res!1814634 () Bool)

(declare-fun e!2739646 () Bool)

(assert (=> d!1326567 (=> res!1814634 e!2739646)))

(assert (=> d!1326567 (= res!1814634 ((_ is Nil!49269) (t!356327 (toList!3229 lm!1707))))))

(assert (=> d!1326567 (= (forall!9356 (t!356327 (toList!3229 lm!1707)) lambda!148555) e!2739646)))

(declare-fun b!4399928 () Bool)

(declare-fun e!2739647 () Bool)

(assert (=> b!4399928 (= e!2739646 e!2739647)))

(declare-fun res!1814635 () Bool)

(assert (=> b!4399928 (=> (not res!1814635) (not e!2739647))))

(assert (=> b!4399928 (= res!1814635 (dynLambda!20758 lambda!148555 (h!54892 (t!356327 (toList!3229 lm!1707)))))))

(declare-fun b!4399929 () Bool)

(assert (=> b!4399929 (= e!2739647 (forall!9356 (t!356327 (t!356327 (toList!3229 lm!1707))) lambda!148555))))

(assert (= (and d!1326567 (not res!1814634)) b!4399928))

(assert (= (and b!4399928 res!1814635) b!4399929))

(declare-fun b_lambda!139667 () Bool)

(assert (=> (not b_lambda!139667) (not b!4399928)))

(declare-fun m!5062353 () Bool)

(assert (=> b!4399928 m!5062353))

(declare-fun m!5062355 () Bool)

(assert (=> b!4399929 m!5062355))

(assert (=> b!4399120 d!1326567))

(declare-fun bs!728133 () Bool)

(declare-fun b!4399930 () Bool)

(assert (= bs!728133 (and b!4399930 d!1326157)))

(declare-fun lambda!148725 () Int)

(assert (=> bs!728133 (not (= lambda!148725 lambda!148580))))

(declare-fun bs!728134 () Bool)

(assert (= bs!728134 (and b!4399930 b!4399742)))

(assert (=> bs!728134 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148725 lambda!148686))))

(declare-fun bs!728135 () Bool)

(assert (= bs!728135 (and b!4399930 b!4399828)))

(assert (=> bs!728135 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) lt!1605206) (= lambda!148725 lambda!148710))))

(declare-fun bs!728136 () Bool)

(assert (= bs!728136 (and b!4399930 b!4399744)))

(assert (=> bs!728136 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148725 lambda!148687))))

(assert (=> bs!728135 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (= lambda!148725 lambda!148709))))

(declare-fun bs!728137 () Bool)

(assert (= bs!728137 (and b!4399930 d!1326295)))

(assert (=> bs!728137 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) lt!1605156) (= lambda!148725 lambda!148689))))

(declare-fun bs!728138 () Bool)

(assert (= bs!728138 (and b!4399930 b!4399826)))

(assert (=> bs!728138 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (= lambda!148725 lambda!148708))))

(declare-fun bs!728139 () Bool)

(assert (= bs!728139 (and b!4399930 d!1326471)))

(assert (=> bs!728139 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) lt!1605208) (= lambda!148725 lambda!148711))))

(assert (=> bs!728136 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) lt!1605154) (= lambda!148725 lambda!148688))))

(assert (=> b!4399930 true))

(declare-fun bs!728140 () Bool)

(declare-fun b!4399932 () Bool)

(assert (= bs!728140 (and b!4399932 d!1326157)))

(declare-fun lambda!148726 () Int)

(assert (=> bs!728140 (not (= lambda!148726 lambda!148580))))

(declare-fun bs!728141 () Bool)

(assert (= bs!728141 (and b!4399932 b!4399742)))

(assert (=> bs!728141 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148726 lambda!148686))))

(declare-fun bs!728142 () Bool)

(assert (= bs!728142 (and b!4399932 b!4399828)))

(assert (=> bs!728142 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) lt!1605206) (= lambda!148726 lambda!148710))))

(declare-fun bs!728143 () Bool)

(assert (= bs!728143 (and b!4399932 b!4399744)))

(assert (=> bs!728143 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148726 lambda!148687))))

(declare-fun bs!728144 () Bool)

(assert (= bs!728144 (and b!4399932 b!4399930)))

(assert (=> bs!728144 (= lambda!148726 lambda!148725)))

(assert (=> bs!728142 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (= lambda!148726 lambda!148709))))

(declare-fun bs!728145 () Bool)

(assert (= bs!728145 (and b!4399932 d!1326295)))

(assert (=> bs!728145 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) lt!1605156) (= lambda!148726 lambda!148689))))

(declare-fun bs!728146 () Bool)

(assert (= bs!728146 (and b!4399932 b!4399826)))

(assert (=> bs!728146 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (= lambda!148726 lambda!148708))))

(declare-fun bs!728147 () Bool)

(assert (= bs!728147 (and b!4399932 d!1326471)))

(assert (=> bs!728147 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) lt!1605208) (= lambda!148726 lambda!148711))))

(assert (=> bs!728143 (= (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) lt!1605154) (= lambda!148726 lambda!148688))))

(assert (=> b!4399932 true))

(declare-fun lambda!148727 () Int)

(assert (=> bs!728140 (not (= lambda!148727 lambda!148580))))

(declare-fun lt!1605258 () ListMap!2473)

(assert (=> bs!728141 (= (= lt!1605258 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148727 lambda!148686))))

(assert (=> bs!728142 (= (= lt!1605258 lt!1605206) (= lambda!148727 lambda!148710))))

(assert (=> bs!728143 (= (= lt!1605258 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148727 lambda!148687))))

(assert (=> bs!728144 (= (= lt!1605258 (extractMap!682 (t!356327 (toList!3229 lt!1604708)))) (= lambda!148727 lambda!148725))))

(assert (=> bs!728142 (= (= lt!1605258 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (= lambda!148727 lambda!148709))))

(assert (=> b!4399932 (= (= lt!1605258 (extractMap!682 (t!356327 (toList!3229 lt!1604708)))) (= lambda!148727 lambda!148726))))

(assert (=> bs!728145 (= (= lt!1605258 lt!1605156) (= lambda!148727 lambda!148689))))

(assert (=> bs!728146 (= (= lt!1605258 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (= lambda!148727 lambda!148708))))

(assert (=> bs!728147 (= (= lt!1605258 lt!1605208) (= lambda!148727 lambda!148711))))

(assert (=> bs!728143 (= (= lt!1605258 lt!1605154) (= lambda!148727 lambda!148688))))

(assert (=> b!4399932 true))

(declare-fun bs!728148 () Bool)

(declare-fun d!1326569 () Bool)

(assert (= bs!728148 (and d!1326569 d!1326157)))

(declare-fun lambda!148728 () Int)

(assert (=> bs!728148 (not (= lambda!148728 lambda!148580))))

(declare-fun bs!728149 () Bool)

(assert (= bs!728149 (and d!1326569 b!4399742)))

(declare-fun lt!1605260 () ListMap!2473)

(assert (=> bs!728149 (= (= lt!1605260 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148728 lambda!148686))))

(declare-fun bs!728150 () Bool)

(assert (= bs!728150 (and d!1326569 b!4399828)))

(assert (=> bs!728150 (= (= lt!1605260 lt!1605206) (= lambda!148728 lambda!148710))))

(declare-fun bs!728151 () Bool)

(assert (= bs!728151 (and d!1326569 b!4399744)))

(assert (=> bs!728151 (= (= lt!1605260 (extractMap!682 (t!356327 (toList!3229 lm!1707)))) (= lambda!148728 lambda!148687))))

(declare-fun bs!728152 () Bool)

(assert (= bs!728152 (and d!1326569 b!4399930)))

(assert (=> bs!728152 (= (= lt!1605260 (extractMap!682 (t!356327 (toList!3229 lt!1604708)))) (= lambda!148728 lambda!148725))))

(assert (=> bs!728150 (= (= lt!1605260 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (= lambda!148728 lambda!148709))))

(declare-fun bs!728153 () Bool)

(assert (= bs!728153 (and d!1326569 b!4399932)))

(assert (=> bs!728153 (= (= lt!1605260 (extractMap!682 (t!356327 (toList!3229 lt!1604708)))) (= lambda!148728 lambda!148726))))

(assert (=> bs!728153 (= (= lt!1605260 lt!1605258) (= lambda!148728 lambda!148727))))

(declare-fun bs!728154 () Bool)

(assert (= bs!728154 (and d!1326569 d!1326295)))

(assert (=> bs!728154 (= (= lt!1605260 lt!1605156) (= lambda!148728 lambda!148689))))

(declare-fun bs!728155 () Bool)

(assert (= bs!728155 (and d!1326569 b!4399826)))

(assert (=> bs!728155 (= (= lt!1605260 (extractMap!682 (t!356327 (t!356327 (toList!3229 lm!1707))))) (= lambda!148728 lambda!148708))))

(declare-fun bs!728156 () Bool)

(assert (= bs!728156 (and d!1326569 d!1326471)))

(assert (=> bs!728156 (= (= lt!1605260 lt!1605208) (= lambda!148728 lambda!148711))))

(assert (=> bs!728151 (= (= lt!1605260 lt!1605154) (= lambda!148728 lambda!148688))))

(assert (=> d!1326569 true))

(declare-fun bm!306204 () Bool)

(declare-fun call!306211 () Unit!78635)

(assert (=> bm!306204 (= call!306211 (lemmaContainsAllItsOwnKeys!127 (extractMap!682 (t!356327 (toList!3229 lt!1604708)))))))

(declare-fun bm!306205 () Bool)

(declare-fun call!306209 () Bool)

(declare-fun c!749086 () Bool)

(declare-fun lt!1605268 () ListMap!2473)

(assert (=> bm!306205 (= call!306209 (forall!9358 (ite c!749086 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lt!1604708)))) (toList!3230 lt!1605268)) (ite c!749086 lambda!148725 lambda!148727)))))

(declare-fun e!2739648 () ListMap!2473)

(assert (=> b!4399930 (= e!2739648 (extractMap!682 (t!356327 (toList!3229 lt!1604708))))))

(declare-fun lt!1605263 () Unit!78635)

(assert (=> b!4399930 (= lt!1605263 call!306211)))

(declare-fun call!306210 () Bool)

(assert (=> b!4399930 call!306210))

(declare-fun lt!1605264 () Unit!78635)

(assert (=> b!4399930 (= lt!1605264 lt!1605263)))

(assert (=> b!4399930 call!306209))

(declare-fun lt!1605262 () Unit!78635)

(declare-fun Unit!78734 () Unit!78635)

(assert (=> b!4399930 (= lt!1605262 Unit!78734)))

(declare-fun b!4399931 () Bool)

(declare-fun e!2739649 () Bool)

(assert (=> b!4399931 (= e!2739649 (invariantList!748 (toList!3230 lt!1605260)))))

(declare-fun bm!306206 () Bool)

(assert (=> bm!306206 (= call!306210 (forall!9358 (ite c!749086 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lt!1604708)))) (_2!27726 (h!54892 (toList!3229 lt!1604708)))) (ite c!749086 lambda!148725 lambda!148727)))))

(declare-fun b!4399933 () Bool)

(declare-fun e!2739650 () Bool)

(assert (=> b!4399933 (= e!2739650 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lt!1604708)))) lambda!148727))))

(declare-fun b!4399934 () Bool)

(declare-fun res!1814638 () Bool)

(assert (=> b!4399934 (=> (not res!1814638) (not e!2739649))))

(assert (=> b!4399934 (= res!1814638 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lt!1604708)))) lambda!148728))))

(assert (=> d!1326569 e!2739649))

(declare-fun res!1814636 () Bool)

(assert (=> d!1326569 (=> (not res!1814636) (not e!2739649))))

(assert (=> d!1326569 (= res!1814636 (forall!9358 (_2!27726 (h!54892 (toList!3229 lt!1604708))) lambda!148728))))

(assert (=> d!1326569 (= lt!1605260 e!2739648)))

(assert (=> d!1326569 (= c!749086 ((_ is Nil!49268) (_2!27726 (h!54892 (toList!3229 lt!1604708)))))))

(assert (=> d!1326569 (noDuplicateKeys!623 (_2!27726 (h!54892 (toList!3229 lt!1604708))))))

(assert (=> d!1326569 (= (addToMapMapFromBucket!293 (_2!27726 (h!54892 (toList!3229 lt!1604708))) (extractMap!682 (t!356327 (toList!3229 lt!1604708)))) lt!1605260)))

(assert (=> b!4399932 (= e!2739648 lt!1605258)))

(assert (=> b!4399932 (= lt!1605268 (+!864 (extractMap!682 (t!356327 (toList!3229 lt!1604708))) (h!54891 (_2!27726 (h!54892 (toList!3229 lt!1604708))))))))

(assert (=> b!4399932 (= lt!1605258 (addToMapMapFromBucket!293 (t!356326 (_2!27726 (h!54892 (toList!3229 lt!1604708)))) (+!864 (extractMap!682 (t!356327 (toList!3229 lt!1604708))) (h!54891 (_2!27726 (h!54892 (toList!3229 lt!1604708)))))))))

(declare-fun lt!1605271 () Unit!78635)

(assert (=> b!4399932 (= lt!1605271 call!306211)))

(assert (=> b!4399932 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lt!1604708)))) lambda!148726)))

(declare-fun lt!1605266 () Unit!78635)

(assert (=> b!4399932 (= lt!1605266 lt!1605271)))

(assert (=> b!4399932 call!306209))

(declare-fun lt!1605270 () Unit!78635)

(declare-fun Unit!78735 () Unit!78635)

(assert (=> b!4399932 (= lt!1605270 Unit!78735)))

(assert (=> b!4399932 (forall!9358 (t!356326 (_2!27726 (h!54892 (toList!3229 lt!1604708)))) lambda!148727)))

(declare-fun lt!1605267 () Unit!78635)

(declare-fun Unit!78736 () Unit!78635)

(assert (=> b!4399932 (= lt!1605267 Unit!78736)))

(declare-fun lt!1605261 () Unit!78635)

(declare-fun Unit!78737 () Unit!78635)

(assert (=> b!4399932 (= lt!1605261 Unit!78737)))

(declare-fun lt!1605276 () Unit!78635)

(assert (=> b!4399932 (= lt!1605276 (forallContained!1994 (toList!3230 lt!1605268) lambda!148727 (h!54891 (_2!27726 (h!54892 (toList!3229 lt!1604708))))))))

(assert (=> b!4399932 (contains!11655 lt!1605268 (_1!27725 (h!54891 (_2!27726 (h!54892 (toList!3229 lt!1604708))))))))

(declare-fun lt!1605272 () Unit!78635)

(declare-fun Unit!78738 () Unit!78635)

(assert (=> b!4399932 (= lt!1605272 Unit!78738)))

(assert (=> b!4399932 (contains!11655 lt!1605258 (_1!27725 (h!54891 (_2!27726 (h!54892 (toList!3229 lt!1604708))))))))

(declare-fun lt!1605275 () Unit!78635)

(declare-fun Unit!78739 () Unit!78635)

(assert (=> b!4399932 (= lt!1605275 Unit!78739)))

(assert (=> b!4399932 call!306210))

(declare-fun lt!1605269 () Unit!78635)

(declare-fun Unit!78740 () Unit!78635)

(assert (=> b!4399932 (= lt!1605269 Unit!78740)))

(assert (=> b!4399932 (forall!9358 (toList!3230 lt!1605268) lambda!148727)))

(declare-fun lt!1605277 () Unit!78635)

(declare-fun Unit!78741 () Unit!78635)

(assert (=> b!4399932 (= lt!1605277 Unit!78741)))

(declare-fun lt!1605274 () Unit!78635)

(declare-fun Unit!78742 () Unit!78635)

(assert (=> b!4399932 (= lt!1605274 Unit!78742)))

(declare-fun lt!1605259 () Unit!78635)

(assert (=> b!4399932 (= lt!1605259 (addForallContainsKeyThenBeforeAdding!127 (extractMap!682 (t!356327 (toList!3229 lt!1604708))) lt!1605258 (_1!27725 (h!54891 (_2!27726 (h!54892 (toList!3229 lt!1604708))))) (_2!27725 (h!54891 (_2!27726 (h!54892 (toList!3229 lt!1604708)))))))))

(assert (=> b!4399932 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lt!1604708)))) lambda!148727)))

(declare-fun lt!1605273 () Unit!78635)

(assert (=> b!4399932 (= lt!1605273 lt!1605259)))

(assert (=> b!4399932 (forall!9358 (toList!3230 (extractMap!682 (t!356327 (toList!3229 lt!1604708)))) lambda!148727)))

(declare-fun lt!1605278 () Unit!78635)

(declare-fun Unit!78743 () Unit!78635)

(assert (=> b!4399932 (= lt!1605278 Unit!78743)))

(declare-fun res!1814637 () Bool)

(assert (=> b!4399932 (= res!1814637 (forall!9358 (_2!27726 (h!54892 (toList!3229 lt!1604708))) lambda!148727))))

(assert (=> b!4399932 (=> (not res!1814637) (not e!2739650))))

(assert (=> b!4399932 e!2739650))

(declare-fun lt!1605265 () Unit!78635)

(declare-fun Unit!78744 () Unit!78635)

(assert (=> b!4399932 (= lt!1605265 Unit!78744)))

(assert (= (and d!1326569 c!749086) b!4399930))

(assert (= (and d!1326569 (not c!749086)) b!4399932))

(assert (= (and b!4399932 res!1814637) b!4399933))

(assert (= (or b!4399930 b!4399932) bm!306204))

(assert (= (or b!4399930 b!4399932) bm!306205))

(assert (= (or b!4399930 b!4399932) bm!306206))

(assert (= (and d!1326569 res!1814636) b!4399934))

(assert (= (and b!4399934 res!1814638) b!4399931))

(assert (=> b!4399932 m!5061427))

(declare-fun m!5062357 () Bool)

(assert (=> b!4399932 m!5062357))

(declare-fun m!5062359 () Bool)

(assert (=> b!4399932 m!5062359))

(assert (=> b!4399932 m!5061427))

(declare-fun m!5062361 () Bool)

(assert (=> b!4399932 m!5062361))

(declare-fun m!5062363 () Bool)

(assert (=> b!4399932 m!5062363))

(declare-fun m!5062365 () Bool)

(assert (=> b!4399932 m!5062365))

(declare-fun m!5062367 () Bool)

(assert (=> b!4399932 m!5062367))

(declare-fun m!5062369 () Bool)

(assert (=> b!4399932 m!5062369))

(declare-fun m!5062371 () Bool)

(assert (=> b!4399932 m!5062371))

(declare-fun m!5062373 () Bool)

(assert (=> b!4399932 m!5062373))

(assert (=> b!4399932 m!5062357))

(declare-fun m!5062375 () Bool)

(assert (=> b!4399932 m!5062375))

(declare-fun m!5062377 () Bool)

(assert (=> b!4399932 m!5062377))

(assert (=> b!4399932 m!5062377))

(declare-fun m!5062379 () Bool)

(assert (=> b!4399931 m!5062379))

(assert (=> bm!306204 m!5061427))

(declare-fun m!5062381 () Bool)

(assert (=> bm!306204 m!5062381))

(declare-fun m!5062383 () Bool)

(assert (=> d!1326569 m!5062383))

(assert (=> d!1326569 m!5061449))

(declare-fun m!5062385 () Bool)

(assert (=> bm!306206 m!5062385))

(declare-fun m!5062387 () Bool)

(assert (=> b!4399934 m!5062387))

(assert (=> b!4399933 m!5062377))

(declare-fun m!5062389 () Bool)

(assert (=> bm!306205 m!5062389))

(assert (=> b!4399333 d!1326569))

(declare-fun bs!728157 () Bool)

(declare-fun d!1326571 () Bool)

(assert (= bs!728157 (and d!1326571 d!1326135)))

(declare-fun lambda!148729 () Int)

(assert (=> bs!728157 (not (= lambda!148729 lambda!148576))))

(declare-fun bs!728158 () Bool)

(assert (= bs!728158 (and d!1326571 d!1326169)))

(assert (=> bs!728158 (= lambda!148729 lambda!148581)))

(declare-fun bs!728159 () Bool)

(assert (= bs!728159 (and d!1326571 start!427504)))

(assert (=> bs!728159 (= lambda!148729 lambda!148555)))

(declare-fun bs!728160 () Bool)

(assert (= bs!728160 (and d!1326571 d!1326473)))

(assert (=> bs!728160 (= lambda!148729 lambda!148712)))

(declare-fun bs!728161 () Bool)

(assert (= bs!728161 (and d!1326571 d!1326173)))

(assert (=> bs!728161 (= lambda!148729 lambda!148585)))

(declare-fun bs!728162 () Bool)

(assert (= bs!728162 (and d!1326571 d!1326133)))

(assert (=> bs!728162 (= lambda!148729 lambda!148573)))

(declare-fun bs!728163 () Bool)

(assert (= bs!728163 (and d!1326571 d!1326155)))

(assert (=> bs!728163 (not (= lambda!148729 lambda!148577))))

(declare-fun bs!728164 () Bool)

(assert (= bs!728164 (and d!1326571 d!1326171)))

(assert (=> bs!728164 (= lambda!148729 lambda!148584)))

(declare-fun lt!1605279 () ListMap!2473)

(assert (=> d!1326571 (invariantList!748 (toList!3230 lt!1605279))))

(declare-fun e!2739651 () ListMap!2473)

(assert (=> d!1326571 (= lt!1605279 e!2739651)))

(declare-fun c!749087 () Bool)

(assert (=> d!1326571 (= c!749087 ((_ is Cons!49269) (t!356327 (toList!3229 lt!1604708))))))

(assert (=> d!1326571 (forall!9356 (t!356327 (toList!3229 lt!1604708)) lambda!148729)))

(assert (=> d!1326571 (= (extractMap!682 (t!356327 (toList!3229 lt!1604708))) lt!1605279)))

(declare-fun b!4399935 () Bool)

(assert (=> b!4399935 (= e!2739651 (addToMapMapFromBucket!293 (_2!27726 (h!54892 (t!356327 (toList!3229 lt!1604708)))) (extractMap!682 (t!356327 (t!356327 (toList!3229 lt!1604708))))))))

(declare-fun b!4399936 () Bool)

(assert (=> b!4399936 (= e!2739651 (ListMap!2474 Nil!49268))))

(assert (= (and d!1326571 c!749087) b!4399935))

(assert (= (and d!1326571 (not c!749087)) b!4399936))

(declare-fun m!5062391 () Bool)

(assert (=> d!1326571 m!5062391))

(declare-fun m!5062393 () Bool)

(assert (=> d!1326571 m!5062393))

(declare-fun m!5062395 () Bool)

(assert (=> b!4399935 m!5062395))

(assert (=> b!4399935 m!5062395))

(declare-fun m!5062397 () Bool)

(assert (=> b!4399935 m!5062397))

(assert (=> b!4399333 d!1326571))

(declare-fun d!1326573 () Bool)

(declare-fun res!1814639 () Bool)

(declare-fun e!2739652 () Bool)

(assert (=> d!1326573 (=> res!1814639 e!2739652)))

(assert (=> d!1326573 (= res!1814639 (not ((_ is Cons!49268) (_2!27726 (h!54892 (toList!3229 lt!1604708))))))))

(assert (=> d!1326573 (= (noDuplicateKeys!623 (_2!27726 (h!54892 (toList!3229 lt!1604708)))) e!2739652)))

(declare-fun b!4399937 () Bool)

(declare-fun e!2739653 () Bool)

(assert (=> b!4399937 (= e!2739652 e!2739653)))

(declare-fun res!1814640 () Bool)

(assert (=> b!4399937 (=> (not res!1814640) (not e!2739653))))

(assert (=> b!4399937 (= res!1814640 (not (containsKey!925 (t!356326 (_2!27726 (h!54892 (toList!3229 lt!1604708)))) (_1!27725 (h!54891 (_2!27726 (h!54892 (toList!3229 lt!1604708))))))))))

(declare-fun b!4399938 () Bool)

(assert (=> b!4399938 (= e!2739653 (noDuplicateKeys!623 (t!356326 (_2!27726 (h!54892 (toList!3229 lt!1604708))))))))

(assert (= (and d!1326573 (not res!1814639)) b!4399937))

(assert (= (and b!4399937 res!1814640) b!4399938))

(declare-fun m!5062399 () Bool)

(assert (=> b!4399937 m!5062399))

(declare-fun m!5062401 () Bool)

(assert (=> b!4399938 m!5062401))

(assert (=> bs!727828 d!1326573))

(assert (=> d!1326171 d!1326161))

(assert (=> d!1326171 d!1326159))

(declare-fun d!1326575 () Bool)

(assert (=> d!1326575 (not (containsKey!925 (apply!11475 lm!1707 (_1!27726 (h!54892 (toList!3229 lm!1707)))) key!3918))))

(assert (=> d!1326575 true))

(declare-fun _$39!322 () Unit!78635)

(assert (=> d!1326575 (= (choose!27563 lm!1707 key!3918 (_1!27726 (h!54892 (toList!3229 lm!1707))) hashF!1247) _$39!322)))

(declare-fun bs!728165 () Bool)

(assert (= bs!728165 d!1326575))

(assert (=> bs!728165 m!5060967))

(assert (=> bs!728165 m!5060967))

(assert (=> bs!728165 m!5060969))

(assert (=> d!1326171 d!1326575))

(declare-fun d!1326577 () Bool)

(declare-fun res!1814641 () Bool)

(declare-fun e!2739654 () Bool)

(assert (=> d!1326577 (=> res!1814641 e!2739654)))

(assert (=> d!1326577 (= res!1814641 ((_ is Nil!49269) (toList!3229 lm!1707)))))

(assert (=> d!1326577 (= (forall!9356 (toList!3229 lm!1707) lambda!148584) e!2739654)))

(declare-fun b!4399939 () Bool)

(declare-fun e!2739655 () Bool)

(assert (=> b!4399939 (= e!2739654 e!2739655)))

(declare-fun res!1814642 () Bool)

(assert (=> b!4399939 (=> (not res!1814642) (not e!2739655))))

(assert (=> b!4399939 (= res!1814642 (dynLambda!20758 lambda!148584 (h!54892 (toList!3229 lm!1707))))))

(declare-fun b!4399940 () Bool)

(assert (=> b!4399940 (= e!2739655 (forall!9356 (t!356327 (toList!3229 lm!1707)) lambda!148584))))

(assert (= (and d!1326577 (not res!1814641)) b!4399939))

(assert (= (and b!4399939 res!1814642) b!4399940))

(declare-fun b_lambda!139669 () Bool)

(assert (=> (not b_lambda!139669) (not b!4399939)))

(declare-fun m!5062403 () Bool)

(assert (=> b!4399939 m!5062403))

(declare-fun m!5062405 () Bool)

(assert (=> b!4399940 m!5062405))

(assert (=> d!1326171 d!1326577))

(declare-fun d!1326579 () Bool)

(assert (=> d!1326579 (dynLambda!20758 lambda!148555 lt!1604698)))

(assert (=> d!1326579 true))

(declare-fun _$7!1605 () Unit!78635)

(assert (=> d!1326579 (= (choose!27560 (toList!3229 lm!1707) lambda!148555 lt!1604698) _$7!1605)))

(declare-fun b_lambda!139671 () Bool)

(assert (=> (not b_lambda!139671) (not d!1326579)))

(declare-fun bs!728166 () Bool)

(assert (= bs!728166 d!1326579))

(assert (=> bs!728166 m!5061353))

(assert (=> d!1326153 d!1326579))

(assert (=> d!1326153 d!1326063))

(assert (=> b!4399139 d!1326067))

(declare-fun d!1326581 () Bool)

(declare-fun res!1814647 () Bool)

(declare-fun e!2739660 () Bool)

(assert (=> d!1326581 (=> res!1814647 e!2739660)))

(assert (=> d!1326581 (= res!1814647 ((_ is Nil!49268) newBucket!200))))

(assert (=> d!1326581 (= (forall!9358 newBucket!200 lambda!148580) e!2739660)))

(declare-fun b!4399945 () Bool)

(declare-fun e!2739661 () Bool)

(assert (=> b!4399945 (= e!2739660 e!2739661)))

(declare-fun res!1814648 () Bool)

(assert (=> b!4399945 (=> (not res!1814648) (not e!2739661))))

(declare-fun dynLambda!20760 (Int tuple2!48862) Bool)

(assert (=> b!4399945 (= res!1814648 (dynLambda!20760 lambda!148580 (h!54891 newBucket!200)))))

(declare-fun b!4399946 () Bool)

(assert (=> b!4399946 (= e!2739661 (forall!9358 (t!356326 newBucket!200) lambda!148580))))

(assert (= (and d!1326581 (not res!1814647)) b!4399945))

(assert (= (and b!4399945 res!1814648) b!4399946))

(declare-fun b_lambda!139673 () Bool)

(assert (=> (not b_lambda!139673) (not b!4399945)))

(declare-fun m!5062407 () Bool)

(assert (=> b!4399945 m!5062407))

(declare-fun m!5062409 () Bool)

(assert (=> b!4399946 m!5062409))

(assert (=> d!1326157 d!1326581))

(declare-fun d!1326583 () Bool)

(declare-fun res!1814649 () Bool)

(declare-fun e!2739662 () Bool)

(assert (=> d!1326583 (=> res!1814649 e!2739662)))

(assert (=> d!1326583 (= res!1814649 (not ((_ is Cons!49268) (_2!27726 (tuple2!48865 hash!377 newBucket!200)))))))

(assert (=> d!1326583 (= (noDuplicateKeys!623 (_2!27726 (tuple2!48865 hash!377 newBucket!200))) e!2739662)))

(declare-fun b!4399947 () Bool)

(declare-fun e!2739663 () Bool)

(assert (=> b!4399947 (= e!2739662 e!2739663)))

(declare-fun res!1814650 () Bool)

(assert (=> b!4399947 (=> (not res!1814650) (not e!2739663))))

(assert (=> b!4399947 (= res!1814650 (not (containsKey!925 (t!356326 (_2!27726 (tuple2!48865 hash!377 newBucket!200))) (_1!27725 (h!54891 (_2!27726 (tuple2!48865 hash!377 newBucket!200)))))))))

(declare-fun b!4399948 () Bool)

(assert (=> b!4399948 (= e!2739663 (noDuplicateKeys!623 (t!356326 (_2!27726 (tuple2!48865 hash!377 newBucket!200)))))))

(assert (= (and d!1326583 (not res!1814649)) b!4399947))

(assert (= (and b!4399947 res!1814650) b!4399948))

(declare-fun m!5062411 () Bool)

(assert (=> b!4399947 m!5062411))

(declare-fun m!5062413 () Bool)

(assert (=> b!4399948 m!5062413))

(assert (=> bs!727826 d!1326583))

(declare-fun d!1326585 () Bool)

(assert (=> d!1326585 (= (isDefined!7902 (getValueByKey!594 (toList!3229 lm!1707) hash!377)) (not (isEmpty!28279 (getValueByKey!594 (toList!3229 lm!1707) hash!377))))))

(declare-fun bs!728167 () Bool)

(assert (= bs!728167 d!1326585))

(assert (=> bs!728167 m!5061329))

(declare-fun m!5062415 () Bool)

(assert (=> bs!728167 m!5062415))

(assert (=> b!4399294 d!1326585))

(assert (=> b!4399294 d!1326519))

(declare-fun d!1326587 () Bool)

(declare-fun lt!1605280 () Bool)

(assert (=> d!1326587 (= lt!1605280 (select (content!7866 (keys!16741 lt!1604701)) key!3918))))

(declare-fun e!2739665 () Bool)

(assert (=> d!1326587 (= lt!1605280 e!2739665)))

(declare-fun res!1814652 () Bool)

(assert (=> d!1326587 (=> (not res!1814652) (not e!2739665))))

(assert (=> d!1326587 (= res!1814652 ((_ is Cons!49271) (keys!16741 lt!1604701)))))

(assert (=> d!1326587 (= (contains!11657 (keys!16741 lt!1604701) key!3918) lt!1605280)))

(declare-fun b!4399949 () Bool)

(declare-fun e!2739664 () Bool)

(assert (=> b!4399949 (= e!2739665 e!2739664)))

(declare-fun res!1814651 () Bool)

(assert (=> b!4399949 (=> res!1814651 e!2739664)))

(assert (=> b!4399949 (= res!1814651 (= (h!54896 (keys!16741 lt!1604701)) key!3918))))

(declare-fun b!4399950 () Bool)

(assert (=> b!4399950 (= e!2739664 (contains!11657 (t!356329 (keys!16741 lt!1604701)) key!3918))))

(assert (= (and d!1326587 res!1814652) b!4399949))

(assert (= (and b!4399949 (not res!1814651)) b!4399950))

(assert (=> d!1326587 m!5061401))

(declare-fun m!5062417 () Bool)

(assert (=> d!1326587 m!5062417))

(declare-fun m!5062419 () Bool)

(assert (=> d!1326587 m!5062419))

(declare-fun m!5062421 () Bool)

(assert (=> b!4399950 m!5062421))

(assert (=> b!4399329 d!1326587))

(assert (=> b!4399329 d!1326531))

(declare-fun d!1326589 () Bool)

(declare-fun res!1814653 () Bool)

(declare-fun e!2739666 () Bool)

(assert (=> d!1326589 (=> res!1814653 e!2739666)))

(assert (=> d!1326589 (= res!1814653 ((_ is Nil!49269) (t!356327 (toList!3229 lt!1604702))))))

(assert (=> d!1326589 (= (forall!9356 (t!356327 (toList!3229 lt!1604702)) lambda!148555) e!2739666)))

(declare-fun b!4399951 () Bool)

(declare-fun e!2739667 () Bool)

(assert (=> b!4399951 (= e!2739666 e!2739667)))

(declare-fun res!1814654 () Bool)

(assert (=> b!4399951 (=> (not res!1814654) (not e!2739667))))

(assert (=> b!4399951 (= res!1814654 (dynLambda!20758 lambda!148555 (h!54892 (t!356327 (toList!3229 lt!1604702)))))))

(declare-fun b!4399952 () Bool)

(assert (=> b!4399952 (= e!2739667 (forall!9356 (t!356327 (t!356327 (toList!3229 lt!1604702))) lambda!148555))))

(assert (= (and d!1326589 (not res!1814653)) b!4399951))

(assert (= (and b!4399951 res!1814654) b!4399952))

(declare-fun b_lambda!139675 () Bool)

(assert (=> (not b_lambda!139675) (not b!4399951)))

(declare-fun m!5062423 () Bool)

(assert (=> b!4399951 m!5062423))

(declare-fun m!5062425 () Bool)

(assert (=> b!4399952 m!5062425))

(assert (=> b!4399058 d!1326589))

(declare-fun d!1326591 () Bool)

(declare-fun res!1814655 () Bool)

(declare-fun e!2739668 () Bool)

(assert (=> d!1326591 (=> res!1814655 e!2739668)))

(assert (=> d!1326591 (= res!1814655 (and ((_ is Cons!49268) lt!1604877) (= (_1!27725 (h!54891 lt!1604877)) key!3918)))))

(assert (=> d!1326591 (= (containsKey!925 lt!1604877 key!3918) e!2739668)))

(declare-fun b!4399953 () Bool)

(declare-fun e!2739669 () Bool)

(assert (=> b!4399953 (= e!2739668 e!2739669)))

(declare-fun res!1814656 () Bool)

(assert (=> b!4399953 (=> (not res!1814656) (not e!2739669))))

(assert (=> b!4399953 (= res!1814656 ((_ is Cons!49268) lt!1604877))))

(declare-fun b!4399954 () Bool)

(assert (=> b!4399954 (= e!2739669 (containsKey!925 (t!356326 lt!1604877) key!3918))))

(assert (= (and d!1326591 (not res!1814655)) b!4399953))

(assert (= (and b!4399953 res!1814656) b!4399954))

(declare-fun m!5062427 () Bool)

(assert (=> b!4399954 m!5062427))

(assert (=> d!1326147 d!1326591))

(declare-fun d!1326593 () Bool)

(declare-fun res!1814657 () Bool)

(declare-fun e!2739670 () Bool)

(assert (=> d!1326593 (=> res!1814657 e!2739670)))

(assert (=> d!1326593 (= res!1814657 (not ((_ is Cons!49268) lt!1604699)))))

(assert (=> d!1326593 (= (noDuplicateKeys!623 lt!1604699) e!2739670)))

(declare-fun b!4399955 () Bool)

(declare-fun e!2739671 () Bool)

(assert (=> b!4399955 (= e!2739670 e!2739671)))

(declare-fun res!1814658 () Bool)

(assert (=> b!4399955 (=> (not res!1814658) (not e!2739671))))

(assert (=> b!4399955 (= res!1814658 (not (containsKey!925 (t!356326 lt!1604699) (_1!27725 (h!54891 lt!1604699)))))))

(declare-fun b!4399956 () Bool)

(assert (=> b!4399956 (= e!2739671 (noDuplicateKeys!623 (t!356326 lt!1604699)))))

(assert (= (and d!1326593 (not res!1814657)) b!4399955))

(assert (= (and b!4399955 res!1814658) b!4399956))

(declare-fun m!5062429 () Bool)

(assert (=> b!4399955 m!5062429))

(assert (=> b!4399956 m!5062305))

(assert (=> d!1326147 d!1326593))

(declare-fun d!1326595 () Bool)

(declare-fun lt!1605281 () Bool)

(assert (=> d!1326595 (= lt!1605281 (select (content!7864 (t!356327 (toList!3229 lt!1604708))) lt!1604700))))

(declare-fun e!2739672 () Bool)

(assert (=> d!1326595 (= lt!1605281 e!2739672)))

(declare-fun res!1814659 () Bool)

(assert (=> d!1326595 (=> (not res!1814659) (not e!2739672))))

(assert (=> d!1326595 (= res!1814659 ((_ is Cons!49269) (t!356327 (toList!3229 lt!1604708))))))

(assert (=> d!1326595 (= (contains!11653 (t!356327 (toList!3229 lt!1604708)) lt!1604700) lt!1605281)))

(declare-fun b!4399957 () Bool)

(declare-fun e!2739673 () Bool)

(assert (=> b!4399957 (= e!2739672 e!2739673)))

(declare-fun res!1814660 () Bool)

(assert (=> b!4399957 (=> res!1814660 e!2739673)))

(assert (=> b!4399957 (= res!1814660 (= (h!54892 (t!356327 (toList!3229 lt!1604708))) lt!1604700))))

(declare-fun b!4399958 () Bool)

(assert (=> b!4399958 (= e!2739673 (contains!11653 (t!356327 (t!356327 (toList!3229 lt!1604708))) lt!1604700))))

(assert (= (and d!1326595 res!1814659) b!4399957))

(assert (= (and b!4399957 (not res!1814660)) b!4399958))

(assert (=> d!1326595 m!5062041))

(declare-fun m!5062431 () Bool)

(assert (=> d!1326595 m!5062431))

(declare-fun m!5062433 () Bool)

(assert (=> b!4399958 m!5062433))

(assert (=> b!4399128 d!1326595))

(declare-fun d!1326597 () Bool)

(assert (=> d!1326597 (isDefined!7901 (getValueByKey!595 (toList!3230 lt!1604701) key!3918))))

(declare-fun lt!1605282 () Unit!78635)

(assert (=> d!1326597 (= lt!1605282 (choose!27568 (toList!3230 lt!1604701) key!3918))))

(assert (=> d!1326597 (invariantList!748 (toList!3230 lt!1604701))))

(assert (=> d!1326597 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!504 (toList!3230 lt!1604701) key!3918) lt!1605282)))

(declare-fun bs!728168 () Bool)

(assert (= bs!728168 d!1326597))

(assert (=> bs!728168 m!5061395))

(assert (=> bs!728168 m!5061395))

(assert (=> bs!728168 m!5061397))

(declare-fun m!5062435 () Bool)

(assert (=> bs!728168 m!5062435))

(assert (=> bs!728168 m!5062215))

(assert (=> b!4399322 d!1326597))

(assert (=> b!4399322 d!1326493))

(assert (=> b!4399322 d!1326495))

(declare-fun d!1326599 () Bool)

(assert (=> d!1326599 (contains!11657 (getKeysList!195 (toList!3230 lt!1604701)) key!3918)))

(declare-fun lt!1605283 () Unit!78635)

(assert (=> d!1326599 (= lt!1605283 (choose!27569 (toList!3230 lt!1604701) key!3918))))

(assert (=> d!1326599 (invariantList!748 (toList!3230 lt!1604701))))

(assert (=> d!1326599 (= (lemmaInListThenGetKeysListContains!192 (toList!3230 lt!1604701) key!3918) lt!1605283)))

(declare-fun bs!728169 () Bool)

(assert (= bs!728169 d!1326599))

(assert (=> bs!728169 m!5061389))

(assert (=> bs!728169 m!5061389))

(declare-fun m!5062437 () Bool)

(assert (=> bs!728169 m!5062437))

(declare-fun m!5062439 () Bool)

(assert (=> bs!728169 m!5062439))

(assert (=> bs!728169 m!5062215))

(assert (=> b!4399322 d!1326599))

(declare-fun d!1326601 () Bool)

(declare-fun res!1814661 () Bool)

(declare-fun e!2739674 () Bool)

(assert (=> d!1326601 (=> res!1814661 e!2739674)))

(assert (=> d!1326601 (= res!1814661 (and ((_ is Cons!49268) (t!356326 newBucket!200)) (= (_1!27725 (h!54891 (t!356326 newBucket!200))) (_1!27725 (h!54891 newBucket!200)))))))

(assert (=> d!1326601 (= (containsKey!925 (t!356326 newBucket!200) (_1!27725 (h!54891 newBucket!200))) e!2739674)))

(declare-fun b!4399959 () Bool)

(declare-fun e!2739675 () Bool)

(assert (=> b!4399959 (= e!2739674 e!2739675)))

(declare-fun res!1814662 () Bool)

(assert (=> b!4399959 (=> (not res!1814662) (not e!2739675))))

(assert (=> b!4399959 (= res!1814662 ((_ is Cons!49268) (t!356326 newBucket!200)))))

(declare-fun b!4399960 () Bool)

(assert (=> b!4399960 (= e!2739675 (containsKey!925 (t!356326 (t!356326 newBucket!200)) (_1!27725 (h!54891 newBucket!200))))))

(assert (= (and d!1326601 (not res!1814661)) b!4399959))

(assert (= (and b!4399959 res!1814662) b!4399960))

(declare-fun m!5062441 () Bool)

(assert (=> b!4399960 m!5062441))

(assert (=> b!4399281 d!1326601))

(assert (=> b!4399301 d!1326519))

(declare-fun d!1326603 () Bool)

(declare-fun lt!1605284 () Bool)

(assert (=> d!1326603 (= lt!1605284 (select (content!7864 (toList!3229 lt!1604708)) (tuple2!48865 hash!377 lt!1604703)))))

(declare-fun e!2739676 () Bool)

(assert (=> d!1326603 (= lt!1605284 e!2739676)))

(declare-fun res!1814663 () Bool)

(assert (=> d!1326603 (=> (not res!1814663) (not e!2739676))))

(assert (=> d!1326603 (= res!1814663 ((_ is Cons!49269) (toList!3229 lt!1604708)))))

(assert (=> d!1326603 (= (contains!11653 (toList!3229 lt!1604708) (tuple2!48865 hash!377 lt!1604703)) lt!1605284)))

(declare-fun b!4399961 () Bool)

(declare-fun e!2739677 () Bool)

(assert (=> b!4399961 (= e!2739676 e!2739677)))

(declare-fun res!1814664 () Bool)

(assert (=> b!4399961 (=> res!1814664 e!2739677)))

(assert (=> b!4399961 (= res!1814664 (= (h!54892 (toList!3229 lt!1604708)) (tuple2!48865 hash!377 lt!1604703)))))

(declare-fun b!4399962 () Bool)

(assert (=> b!4399962 (= e!2739677 (contains!11653 (t!356327 (toList!3229 lt!1604708)) (tuple2!48865 hash!377 lt!1604703)))))

(assert (= (and d!1326603 res!1814663) b!4399961))

(assert (= (and b!4399961 (not res!1814664)) b!4399962))

(assert (=> d!1326603 m!5061109))

(declare-fun m!5062443 () Bool)

(assert (=> d!1326603 m!5062443))

(declare-fun m!5062445 () Bool)

(assert (=> b!4399962 m!5062445))

(assert (=> d!1326073 d!1326603))

(declare-fun d!1326605 () Bool)

(assert (=> d!1326605 (contains!11653 (toList!3229 lt!1604708) (tuple2!48865 hash!377 lt!1604703))))

(assert (=> d!1326605 true))

(declare-fun _$14!892 () Unit!78635)

(assert (=> d!1326605 (= (choose!27561 (toList!3229 lt!1604708) hash!377 lt!1604703) _$14!892)))

(declare-fun bs!728170 () Bool)

(assert (= bs!728170 d!1326605))

(assert (=> bs!728170 m!5061139))

(assert (=> d!1326073 d!1326605))

(declare-fun d!1326607 () Bool)

(declare-fun res!1814665 () Bool)

(declare-fun e!2739678 () Bool)

(assert (=> d!1326607 (=> res!1814665 e!2739678)))

(assert (=> d!1326607 (= res!1814665 (or ((_ is Nil!49269) (toList!3229 lt!1604708)) ((_ is Nil!49269) (t!356327 (toList!3229 lt!1604708)))))))

(assert (=> d!1326607 (= (isStrictlySorted!174 (toList!3229 lt!1604708)) e!2739678)))

(declare-fun b!4399963 () Bool)

(declare-fun e!2739679 () Bool)

(assert (=> b!4399963 (= e!2739678 e!2739679)))

(declare-fun res!1814666 () Bool)

(assert (=> b!4399963 (=> (not res!1814666) (not e!2739679))))

(assert (=> b!4399963 (= res!1814666 (bvslt (_1!27726 (h!54892 (toList!3229 lt!1604708))) (_1!27726 (h!54892 (t!356327 (toList!3229 lt!1604708))))))))

(declare-fun b!4399964 () Bool)

(assert (=> b!4399964 (= e!2739679 (isStrictlySorted!174 (t!356327 (toList!3229 lt!1604708))))))

(assert (= (and d!1326607 (not res!1814665)) b!4399963))

(assert (= (and b!4399963 res!1814666) b!4399964))

(declare-fun m!5062447 () Bool)

(assert (=> b!4399964 m!5062447))

(assert (=> d!1326073 d!1326607))

(assert (=> b!4399267 d!1326463))

(assert (=> b!4399267 d!1326465))

(assert (=> b!4399323 d!1326511))

(declare-fun d!1326609 () Bool)

(assert (=> d!1326609 (containsKey!928 (toList!3230 lt!1604701) key!3918)))

(declare-fun lt!1605285 () Unit!78635)

(assert (=> d!1326609 (= lt!1605285 (choose!27573 (toList!3230 lt!1604701) key!3918))))

(assert (=> d!1326609 (invariantList!748 (toList!3230 lt!1604701))))

(assert (=> d!1326609 (= (lemmaInGetKeysListThenContainsKey!193 (toList!3230 lt!1604701) key!3918) lt!1605285)))

(declare-fun bs!728171 () Bool)

(assert (= bs!728171 d!1326609))

(assert (=> bs!728171 m!5061387))

(declare-fun m!5062449 () Bool)

(assert (=> bs!728171 m!5062449))

(assert (=> bs!728171 m!5062215))

(assert (=> b!4399323 d!1326609))

(assert (=> b!4399325 d!1326587))

(assert (=> b!4399325 d!1326531))

(declare-fun d!1326611 () Bool)

(assert (=> d!1326611 (isDefined!7902 (getValueByKey!594 (toList!3229 lm!1707) hash!377))))

(declare-fun lt!1605286 () Unit!78635)

(assert (=> d!1326611 (= lt!1605286 (choose!27574 (toList!3229 lm!1707) hash!377))))

(declare-fun e!2739680 () Bool)

(assert (=> d!1326611 e!2739680))

(declare-fun res!1814667 () Bool)

(assert (=> d!1326611 (=> (not res!1814667) (not e!2739680))))

(assert (=> d!1326611 (= res!1814667 (isStrictlySorted!174 (toList!3229 lm!1707)))))

(assert (=> d!1326611 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!505 (toList!3229 lm!1707) hash!377) lt!1605286)))

(declare-fun b!4399965 () Bool)

(assert (=> b!4399965 (= e!2739680 (containsKey!929 (toList!3229 lm!1707) hash!377))))

(assert (= (and d!1326611 res!1814667) b!4399965))

(assert (=> d!1326611 m!5061329))

(assert (=> d!1326611 m!5061329))

(assert (=> d!1326611 m!5061331))

(declare-fun m!5062451 () Bool)

(assert (=> d!1326611 m!5062451))

(assert (=> d!1326611 m!5061333))

(assert (=> b!4399965 m!5061325))

(assert (=> b!4399292 d!1326611))

(assert (=> b!4399292 d!1326585))

(assert (=> b!4399292 d!1326519))

(declare-fun d!1326613 () Bool)

(declare-fun res!1814668 () Bool)

(declare-fun e!2739681 () Bool)

(assert (=> d!1326613 (=> res!1814668 e!2739681)))

(assert (=> d!1326613 (= res!1814668 ((_ is Nil!49269) (t!356327 (toList!3229 lt!1604708))))))

(assert (=> d!1326613 (= (forall!9356 (t!356327 (toList!3229 lt!1604708)) lambda!148555) e!2739681)))

(declare-fun b!4399966 () Bool)

(declare-fun e!2739682 () Bool)

(assert (=> b!4399966 (= e!2739681 e!2739682)))

(declare-fun res!1814669 () Bool)

(assert (=> b!4399966 (=> (not res!1814669) (not e!2739682))))

(assert (=> b!4399966 (= res!1814669 (dynLambda!20758 lambda!148555 (h!54892 (t!356327 (toList!3229 lt!1604708)))))))

(declare-fun b!4399967 () Bool)

(assert (=> b!4399967 (= e!2739682 (forall!9356 (t!356327 (t!356327 (toList!3229 lt!1604708))) lambda!148555))))

(assert (= (and d!1326613 (not res!1814668)) b!4399966))

(assert (= (and b!4399966 res!1814669) b!4399967))

(declare-fun b_lambda!139677 () Bool)

(assert (=> (not b_lambda!139677) (not b!4399966)))

(declare-fun m!5062453 () Bool)

(assert (=> b!4399966 m!5062453))

(declare-fun m!5062455 () Bool)

(assert (=> b!4399967 m!5062455))

(assert (=> b!4399336 d!1326613))

(declare-fun d!1326615 () Bool)

(declare-fun c!749088 () Bool)

(assert (=> d!1326615 (= c!749088 ((_ is Nil!49269) (toList!3229 lm!1707)))))

(declare-fun e!2739683 () (InoxSet tuple2!48864))

(assert (=> d!1326615 (= (content!7864 (toList!3229 lm!1707)) e!2739683)))

(declare-fun b!4399968 () Bool)

(assert (=> b!4399968 (= e!2739683 ((as const (Array tuple2!48864 Bool)) false))))

(declare-fun b!4399969 () Bool)

(assert (=> b!4399969 (= e!2739683 ((_ map or) (store ((as const (Array tuple2!48864 Bool)) false) (h!54892 (toList!3229 lm!1707)) true) (content!7864 (t!356327 (toList!3229 lm!1707)))))))

(assert (= (and d!1326615 c!749088) b!4399968))

(assert (= (and d!1326615 (not c!749088)) b!4399969))

(declare-fun m!5062457 () Bool)

(assert (=> b!4399969 m!5062457))

(assert (=> b!4399969 m!5062151))

(assert (=> d!1326149 d!1326615))

(declare-fun e!2739684 () Bool)

(declare-fun b!4399970 () Bool)

(declare-fun tp!1331785 () Bool)

(assert (=> b!4399970 (= e!2739684 (and tp_is_empty!25729 tp_is_empty!25731 tp!1331785))))

(assert (=> b!4399343 (= tp!1331776 e!2739684)))

(assert (= (and b!4399343 ((_ is Cons!49268) (_2!27726 (h!54892 (toList!3229 lm!1707))))) b!4399970))

(declare-fun b!4399971 () Bool)

(declare-fun e!2739685 () Bool)

(declare-fun tp!1331786 () Bool)

(declare-fun tp!1331787 () Bool)

(assert (=> b!4399971 (= e!2739685 (and tp!1331786 tp!1331787))))

(assert (=> b!4399343 (= tp!1331777 e!2739685)))

(assert (= (and b!4399343 ((_ is Cons!49269) (t!356327 (toList!3229 lm!1707)))) b!4399971))

(declare-fun e!2739686 () Bool)

(declare-fun tp!1331788 () Bool)

(declare-fun b!4399972 () Bool)

(assert (=> b!4399972 (= e!2739686 (and tp_is_empty!25729 tp_is_empty!25731 tp!1331788))))

(assert (=> b!4399348 (= tp!1331780 e!2739686)))

(assert (= (and b!4399348 ((_ is Cons!49268) (t!356326 (t!356326 newBucket!200)))) b!4399972))

(declare-fun b_lambda!139679 () Bool)

(assert (= b_lambda!139663 (or d!1326155 b_lambda!139679)))

(declare-fun bs!728172 () Bool)

(declare-fun d!1326617 () Bool)

(assert (= bs!728172 (and d!1326617 d!1326155)))

(assert (=> bs!728172 (= (dynLambda!20758 lambda!148577 (h!54892 (toList!3229 lm!1707))) (allKeysSameHash!581 (_2!27726 (h!54892 (toList!3229 lm!1707))) (_1!27726 (h!54892 (toList!3229 lm!1707))) hashF!1247))))

(declare-fun m!5062459 () Bool)

(assert (=> bs!728172 m!5062459))

(assert (=> b!4399916 d!1326617))

(declare-fun b_lambda!139681 () Bool)

(assert (= b_lambda!139661 (or start!427504 b_lambda!139681)))

(assert (=> d!1326543 d!1326187))

(declare-fun b_lambda!139683 () Bool)

(assert (= b_lambda!139659 (or d!1326169 b_lambda!139683)))

(declare-fun bs!728173 () Bool)

(declare-fun d!1326619 () Bool)

(assert (= bs!728173 (and d!1326619 d!1326169)))

(assert (=> bs!728173 (= (dynLambda!20758 lambda!148581 (h!54892 (t!356327 (toList!3229 lm!1707)))) (noDuplicateKeys!623 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707))))))))

(assert (=> bs!728173 m!5062135))

(assert (=> b!4399865 d!1326619))

(declare-fun b_lambda!139685 () Bool)

(assert (= b_lambda!139657 (or d!1326133 b_lambda!139685)))

(declare-fun bs!728174 () Bool)

(declare-fun d!1326621 () Bool)

(assert (= bs!728174 (and d!1326621 d!1326133)))

(assert (=> bs!728174 (= (dynLambda!20758 lambda!148573 (h!54892 (toList!3229 lm!1707))) (noDuplicateKeys!623 (_2!27726 (h!54892 (toList!3229 lm!1707)))))))

(assert (=> bs!728174 m!5061409))

(assert (=> b!4399850 d!1326621))

(declare-fun b_lambda!139687 () Bool)

(assert (= b_lambda!139653 (or start!427504 b_lambda!139687)))

(declare-fun bs!728175 () Bool)

(declare-fun d!1326623 () Bool)

(assert (= bs!728175 (and d!1326623 start!427504)))

(assert (=> bs!728175 (= (dynLambda!20758 lambda!148555 (h!54892 (toList!3229 (+!862 lm!1707 (tuple2!48865 hash!377 newBucket!200))))) (noDuplicateKeys!623 (_2!27726 (h!54892 (toList!3229 (+!862 lm!1707 (tuple2!48865 hash!377 newBucket!200)))))))))

(declare-fun m!5062461 () Bool)

(assert (=> bs!728175 m!5062461))

(assert (=> b!4399749 d!1326623))

(declare-fun b_lambda!139689 () Bool)

(assert (= b_lambda!139677 (or start!427504 b_lambda!139689)))

(declare-fun bs!728176 () Bool)

(declare-fun d!1326625 () Bool)

(assert (= bs!728176 (and d!1326625 start!427504)))

(assert (=> bs!728176 (= (dynLambda!20758 lambda!148555 (h!54892 (t!356327 (toList!3229 lt!1604708)))) (noDuplicateKeys!623 (_2!27726 (h!54892 (t!356327 (toList!3229 lt!1604708))))))))

(declare-fun m!5062463 () Bool)

(assert (=> bs!728176 m!5062463))

(assert (=> b!4399966 d!1326625))

(declare-fun b_lambda!139691 () Bool)

(assert (= b_lambda!139665 (or d!1326173 b_lambda!139691)))

(declare-fun bs!728177 () Bool)

(declare-fun d!1326627 () Bool)

(assert (= bs!728177 (and d!1326627 d!1326173)))

(assert (=> bs!728177 (= (dynLambda!20758 lambda!148585 (h!54892 (toList!3229 lt!1604708))) (noDuplicateKeys!623 (_2!27726 (h!54892 (toList!3229 lt!1604708)))))))

(assert (=> bs!728177 m!5061449))

(assert (=> b!4399924 d!1326627))

(declare-fun b_lambda!139693 () Bool)

(assert (= b_lambda!139671 (or start!427504 b_lambda!139693)))

(assert (=> d!1326579 d!1326183))

(declare-fun b_lambda!139695 () Bool)

(assert (= b_lambda!139667 (or start!427504 b_lambda!139695)))

(declare-fun bs!728178 () Bool)

(declare-fun d!1326629 () Bool)

(assert (= bs!728178 (and d!1326629 start!427504)))

(assert (=> bs!728178 (= (dynLambda!20758 lambda!148555 (h!54892 (t!356327 (toList!3229 lm!1707)))) (noDuplicateKeys!623 (_2!27726 (h!54892 (t!356327 (toList!3229 lm!1707))))))))

(assert (=> bs!728178 m!5062135))

(assert (=> b!4399928 d!1326629))

(declare-fun b_lambda!139697 () Bool)

(assert (= b_lambda!139655 (or d!1326135 b_lambda!139697)))

(declare-fun bs!728179 () Bool)

(declare-fun d!1326631 () Bool)

(assert (= bs!728179 (and d!1326631 d!1326135)))

(assert (=> bs!728179 (= (dynLambda!20758 lambda!148576 (h!54892 (toList!3229 lt!1604708))) (allKeysSameHash!581 (_2!27726 (h!54892 (toList!3229 lt!1604708))) (_1!27726 (h!54892 (toList!3229 lt!1604708))) hashF!1247))))

(declare-fun m!5062465 () Bool)

(assert (=> bs!728179 m!5062465))

(assert (=> b!4399845 d!1326631))

(declare-fun b_lambda!139699 () Bool)

(assert (= b_lambda!139675 (or start!427504 b_lambda!139699)))

(declare-fun bs!728180 () Bool)

(declare-fun d!1326633 () Bool)

(assert (= bs!728180 (and d!1326633 start!427504)))

(assert (=> bs!728180 (= (dynLambda!20758 lambda!148555 (h!54892 (t!356327 (toList!3229 lt!1604702)))) (noDuplicateKeys!623 (_2!27726 (h!54892 (t!356327 (toList!3229 lt!1604702))))))))

(declare-fun m!5062467 () Bool)

(assert (=> bs!728180 m!5062467))

(assert (=> b!4399951 d!1326633))

(declare-fun b_lambda!139701 () Bool)

(assert (= b_lambda!139669 (or d!1326171 b_lambda!139701)))

(declare-fun bs!728181 () Bool)

(declare-fun d!1326635 () Bool)

(assert (= bs!728181 (and d!1326635 d!1326171)))

(assert (=> bs!728181 (= (dynLambda!20758 lambda!148584 (h!54892 (toList!3229 lm!1707))) (noDuplicateKeys!623 (_2!27726 (h!54892 (toList!3229 lm!1707)))))))

(assert (=> bs!728181 m!5061409))

(assert (=> b!4399939 d!1326635))

(declare-fun b_lambda!139703 () Bool)

(assert (= b_lambda!139673 (or d!1326157 b_lambda!139703)))

(declare-fun bs!728182 () Bool)

(declare-fun d!1326637 () Bool)

(assert (= bs!728182 (and d!1326637 d!1326157)))

(assert (=> bs!728182 (= (dynLambda!20760 lambda!148580 (h!54891 newBucket!200)) (= (hash!1857 hashF!1247 (_1!27725 (h!54891 newBucket!200))) hash!377))))

(declare-fun m!5062469 () Bool)

(assert (=> bs!728182 m!5062469))

(assert (=> b!4399945 d!1326637))

(check-sat (not b!4399519) (not b_lambda!139679) (not bs!728174) (not d!1326489) (not d!1326455) (not d!1326529) (not b!4399776) (not b_lambda!139597) (not b!4399952) (not d!1326293) (not d!1326501) (not b!4399872) (not b_lambda!139699) (not b!4399821) (not bm!306199) (not d!1326295) (not b!4399745) (not bs!728179) (not d!1326463) (not b!4399885) (not b!4399754) (not bs!728181) (not b!4399891) (not d!1326457) (not d!1326535) (not b!4399971) (not b!4399929) (not b!4399900) (not d!1326609) (not b_lambda!139697) (not b!4399791) (not b!4399917) (not b!4399946) (not d!1326275) (not b!4399911) (not d!1326475) (not b!4399899) (not d!1326575) tp_is_empty!25731 (not b!4399792) (not b!4399926) (not b!4399897) (not d!1326471) (not b!4399870) (not d!1326513) (not b!4399948) (not d!1326465) (not d!1326571) (not b!4399940) (not b!4399831) (not b!4399554) (not b!4399867) (not d!1326569) (not d!1326599) (not d!1326277) (not b!4399892) (not b!4399969) (not b_lambda!139695) (not b!4399842) (not d!1326541) (not b!4399890) (not d!1326559) (not b!4399529) (not bm!306200) (not d!1326473) (not d!1326515) (not d!1326287) (not b!4399818) (not d!1326565) (not b!4399834) (not bs!728178) (not d!1326467) (not d!1326479) (not d!1326497) (not bm!306204) (not b!4399830) (not b_lambda!139687) (not b_lambda!139689) (not b!4399522) (not b!4399937) (not b_lambda!139703) (not b!4399858) (not bm!306206) (not b!4399964) (not b!4399829) (not d!1326561) (not b!4399931) (not b!4399783) (not d!1326603) tp_is_empty!25729 (not b!4399848) (not d!1326283) (not b!4399843) (not b!4399882) (not b!4399972) (not b!4399925) (not b_lambda!139593) (not d!1326291) (not b_lambda!139591) (not bs!728177) (not b!4399550) (not b!4399932) (not b_lambda!139701) (not b!4399895) (not b!4399864) (not b!4399866) (not b!4399861) (not b!4399557) (not b!4399960) (not b!4399903) (not b_lambda!139685) (not b!4399511) (not b!4399851) (not d!1326553) (not d!1326605) (not b!4399743) (not b!4399935) (not b!4399825) (not d!1326539) (not b_lambda!139599) (not b_lambda!139595) (not b!4399813) (not b!4399970) (not b!4399879) (not d!1326597) (not b!4399816) (not b!4399820) (not d!1326281) (not d!1326499) (not d!1326585) (not b!4399956) (not d!1326443) (not b!4399950) (not b!4399844) (not b!4399927) (not d!1326611) (not b!4399955) (not bs!728176) (not bm!306198) (not b!4399761) (not b!4399744) (not d!1326487) (not b!4399889) (not b!4399933) (not b!4399750) (not b!4399887) (not b!4399938) (not b_lambda!139589) (not b!4399954) (not b!4399517) (not b!4399886) (not d!1326453) (not bs!728173) (not bs!728175) (not d!1326595) (not bm!306203) (not bs!728172) (not d!1326493) (not b!4399877) (not b!4399849) (not b!4399777) (not b!4399962) (not bm!306201) (not b!4399922) (not d!1326531) (not b!4399947) (not b!4399905) (not b!4399967) (not b!4399746) (not b_lambda!139693) (not b!4399888) (not b!4399958) (not bm!306205) (not b_lambda!139681) (not d!1326587) (not bm!306202) (not bs!728180) (not b!4399767) (not b_lambda!139683) (not b!4399515) (not b!4399854) (not bm!306165) (not b_lambda!139691) (not d!1326557) (not d!1326505) (not b!4399847) (not b!4399875) (not b!4399934) (not d!1326537) (not b!4399874) (not b!4399908) (not b!4399828) (not b!4399846) (not b!4399902) (not b!4399915) (not b!4399919) (not b!4399901) (not bs!728182) (not b!4399775) (not b!4399827) (not b!4399769) (not b!4399790) (not b!4399913) (not d!1326509) (not b!4399499) (not b!4399965) (not b!4399528) (not b!4399840))
(check-sat)
