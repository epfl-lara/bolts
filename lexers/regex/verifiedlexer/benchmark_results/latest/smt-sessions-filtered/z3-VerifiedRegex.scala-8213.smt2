; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!424304 () Bool)

(assert start!424304)

(declare-fun b!4370054 () Bool)

(declare-fun e!2719837 () Bool)

(declare-fun e!2719836 () Bool)

(assert (=> b!4370054 (= e!2719837 e!2719836)))

(declare-fun res!1798328 () Bool)

(assert (=> b!4370054 (=> res!1798328 e!2719836)))

(declare-datatypes ((K!10470 0))(
  ( (K!10471 (val!16647 Int)) )
))
(declare-datatypes ((V!10716 0))(
  ( (V!10717 (val!16648 Int)) )
))
(declare-datatypes ((tuple2!48614 0))(
  ( (tuple2!48615 (_1!27601 K!10470) (_2!27601 V!10716)) )
))
(declare-datatypes ((List!49234 0))(
  ( (Nil!49110) (Cons!49110 (h!54697 tuple2!48614) (t!356156 List!49234)) )
))
(declare-fun lt!1581659 () List!49234)

(declare-fun key!3918 () K!10470)

(declare-fun containsKey!817 (List!49234 K!10470) Bool)

(assert (=> b!4370054 (= res!1798328 (containsKey!817 lt!1581659 key!3918))))

(declare-fun e!2719839 () Bool)

(assert (=> b!4370054 e!2719839))

(declare-fun res!1798325 () Bool)

(assert (=> b!4370054 (=> (not res!1798325) (not e!2719839))))

(declare-datatypes ((ListMap!2349 0))(
  ( (ListMap!2350 (toList!3105 List!49234)) )
))
(declare-fun lt!1581662 () ListMap!2349)

(declare-fun lt!1581666 () ListMap!2349)

(assert (=> b!4370054 (= res!1798325 (= lt!1581662 lt!1581666))))

(declare-fun lt!1581656 () List!49234)

(declare-fun lt!1581665 () ListMap!2349)

(declare-fun addToMapMapFromBucket!242 (List!49234 ListMap!2349) ListMap!2349)

(assert (=> b!4370054 (= lt!1581666 (addToMapMapFromBucket!242 lt!1581656 lt!1581665))))

(declare-fun newBucket!200 () List!49234)

(assert (=> b!4370054 (= lt!1581662 (addToMapMapFromBucket!242 newBucket!200 lt!1581665))))

(declare-datatypes ((tuple2!48616 0))(
  ( (tuple2!48617 (_1!27602 (_ BitVec 64)) (_2!27602 List!49234)) )
))
(declare-datatypes ((List!49235 0))(
  ( (Nil!49111) (Cons!49111 (h!54698 tuple2!48616) (t!356157 List!49235)) )
))
(declare-datatypes ((ListLongMap!1755 0))(
  ( (ListLongMap!1756 (toList!3106 List!49235)) )
))
(declare-fun lt!1581655 () ListLongMap!1755)

(declare-fun extractMap!620 (List!49235) ListMap!2349)

(assert (=> b!4370054 (= lt!1581662 (extractMap!620 (toList!3106 lt!1581655)))))

(declare-fun lm!1707 () ListLongMap!1755)

(assert (=> b!4370054 (= lt!1581665 (extractMap!620 (t!356157 (toList!3106 lm!1707))))))

(declare-fun b!4370055 () Bool)

(declare-fun res!1798324 () Bool)

(declare-fun e!2719838 () Bool)

(assert (=> b!4370055 (=> (not res!1798324) (not e!2719838))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4953 0))(
  ( (HashableExt!4952 (__x!30656 Int)) )
))
(declare-fun hashF!1247 () Hashable!4953)

(declare-fun allKeysSameHash!519 (List!49234 (_ BitVec 64) Hashable!4953) Bool)

(assert (=> b!4370055 (= res!1798324 (allKeysSameHash!519 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4370056 () Bool)

(declare-fun noDuplicateKeys!561 (List!49234) Bool)

(assert (=> b!4370056 (= e!2719836 (noDuplicateKeys!561 lt!1581659))))

(declare-fun lt!1581657 () tuple2!48614)

(declare-fun b!4370057 () Bool)

(declare-fun +!753 (ListMap!2349 tuple2!48614) ListMap!2349)

(assert (=> b!4370057 (= e!2719839 (= lt!1581666 (addToMapMapFromBucket!242 lt!1581659 (+!753 lt!1581665 lt!1581657))))))

(declare-fun b!4370058 () Bool)

(declare-fun e!2719840 () Bool)

(assert (=> b!4370058 (= e!2719838 (not e!2719840))))

(declare-fun res!1798322 () Bool)

(assert (=> b!4370058 (=> res!1798322 e!2719840)))

(assert (=> b!4370058 (= res!1798322 (not (= newBucket!200 lt!1581656)))))

(assert (=> b!4370058 (= lt!1581656 (Cons!49110 lt!1581657 lt!1581659))))

(declare-fun lt!1581663 () List!49234)

(declare-fun removePairForKey!529 (List!49234 K!10470) List!49234)

(assert (=> b!4370058 (= lt!1581659 (removePairForKey!529 lt!1581663 key!3918))))

(declare-fun newValue!99 () V!10716)

(assert (=> b!4370058 (= lt!1581657 (tuple2!48615 key!3918 newValue!99))))

(declare-fun lambda!143663 () Int)

(declare-fun lt!1581661 () tuple2!48616)

(declare-datatypes ((Unit!73504 0))(
  ( (Unit!73505) )
))
(declare-fun lt!1581658 () Unit!73504)

(declare-fun forallContained!1877 (List!49235 Int tuple2!48616) Unit!73504)

(assert (=> b!4370058 (= lt!1581658 (forallContained!1877 (toList!3106 lm!1707) lambda!143663 lt!1581661))))

(declare-fun contains!11413 (List!49235 tuple2!48616) Bool)

(assert (=> b!4370058 (contains!11413 (toList!3106 lm!1707) lt!1581661)))

(assert (=> b!4370058 (= lt!1581661 (tuple2!48617 hash!377 lt!1581663))))

(declare-fun lt!1581664 () Unit!73504)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!406 (List!49235 (_ BitVec 64) List!49234) Unit!73504)

(assert (=> b!4370058 (= lt!1581664 (lemmaGetValueByKeyImpliesContainsTuple!406 (toList!3106 lm!1707) hash!377 lt!1581663))))

(declare-fun apply!11413 (ListLongMap!1755 (_ BitVec 64)) List!49234)

(assert (=> b!4370058 (= lt!1581663 (apply!11413 lm!1707 hash!377))))

(declare-fun b!4370060 () Bool)

(declare-fun res!1798327 () Bool)

(declare-fun e!2719833 () Bool)

(assert (=> b!4370060 (=> (not res!1798327) (not e!2719833))))

(declare-fun forall!9239 (List!49235 Int) Bool)

(assert (=> b!4370060 (= res!1798327 (forall!9239 (toList!3106 lt!1581655) lambda!143663))))

(declare-fun b!4370061 () Bool)

(declare-fun res!1798330 () Bool)

(assert (=> b!4370061 (=> (not res!1798330) (not e!2719838))))

(declare-fun contains!11414 (ListMap!2349 K!10470) Bool)

(assert (=> b!4370061 (= res!1798330 (contains!11414 (extractMap!620 (toList!3106 lm!1707)) key!3918))))

(declare-fun b!4370062 () Bool)

(assert (=> b!4370062 (= e!2719840 e!2719837)))

(declare-fun res!1798321 () Bool)

(assert (=> b!4370062 (=> res!1798321 e!2719837)))

(get-info :version)

(assert (=> b!4370062 (= res!1798321 (or (not ((_ is Cons!49111) (toList!3106 lm!1707))) (not (= (_1!27602 (h!54698 (toList!3106 lm!1707))) hash!377))))))

(assert (=> b!4370062 e!2719833))

(declare-fun res!1798332 () Bool)

(assert (=> b!4370062 (=> (not res!1798332) (not e!2719833))))

(assert (=> b!4370062 (= res!1798332 (forall!9239 (toList!3106 lt!1581655) lambda!143663))))

(declare-fun lt!1581654 () tuple2!48616)

(declare-fun +!754 (ListLongMap!1755 tuple2!48616) ListLongMap!1755)

(assert (=> b!4370062 (= lt!1581655 (+!754 lm!1707 lt!1581654))))

(assert (=> b!4370062 (= lt!1581654 (tuple2!48617 hash!377 newBucket!200))))

(declare-fun lt!1581660 () Unit!73504)

(declare-fun addValidProp!207 (ListLongMap!1755 Int (_ BitVec 64) List!49234) Unit!73504)

(assert (=> b!4370062 (= lt!1581660 (addValidProp!207 lm!1707 lambda!143663 hash!377 newBucket!200))))

(assert (=> b!4370062 (forall!9239 (toList!3106 lm!1707) lambda!143663)))

(declare-fun b!4370063 () Bool)

(declare-fun res!1798331 () Bool)

(assert (=> b!4370063 (=> (not res!1798331) (not e!2719838))))

(declare-fun contains!11415 (ListLongMap!1755 (_ BitVec 64)) Bool)

(assert (=> b!4370063 (= res!1798331 (contains!11415 lm!1707 hash!377))))

(declare-fun tp_is_empty!25483 () Bool)

(declare-fun b!4370064 () Bool)

(declare-fun tp!1330956 () Bool)

(declare-fun e!2719834 () Bool)

(declare-fun tp_is_empty!25481 () Bool)

(assert (=> b!4370064 (= e!2719834 (and tp_is_empty!25481 tp_is_empty!25483 tp!1330956))))

(declare-fun res!1798333 () Bool)

(assert (=> start!424304 (=> (not res!1798333) (not e!2719838))))

(assert (=> start!424304 (= res!1798333 (forall!9239 (toList!3106 lm!1707) lambda!143663))))

(assert (=> start!424304 e!2719838))

(assert (=> start!424304 e!2719834))

(assert (=> start!424304 true))

(declare-fun e!2719835 () Bool)

(declare-fun inv!64656 (ListLongMap!1755) Bool)

(assert (=> start!424304 (and (inv!64656 lm!1707) e!2719835)))

(assert (=> start!424304 tp_is_empty!25481))

(assert (=> start!424304 tp_is_empty!25483))

(declare-fun b!4370059 () Bool)

(declare-fun res!1798326 () Bool)

(assert (=> b!4370059 (=> (not res!1798326) (not e!2719838))))

(declare-fun allKeysSameHashInMap!665 (ListLongMap!1755 Hashable!4953) Bool)

(assert (=> b!4370059 (= res!1798326 (allKeysSameHashInMap!665 lm!1707 hashF!1247))))

(declare-fun b!4370065 () Bool)

(declare-fun tp!1330955 () Bool)

(assert (=> b!4370065 (= e!2719835 tp!1330955)))

(declare-fun b!4370066 () Bool)

(declare-fun res!1798329 () Bool)

(assert (=> b!4370066 (=> res!1798329 e!2719840)))

(assert (=> b!4370066 (= res!1798329 (not (noDuplicateKeys!561 newBucket!200)))))

(declare-fun b!4370067 () Bool)

(assert (=> b!4370067 (= e!2719833 (or (not ((_ is Cons!49111) (toList!3106 lm!1707))) (not (= (_1!27602 (h!54698 (toList!3106 lm!1707))) hash!377)) (= lt!1581655 (ListLongMap!1756 (Cons!49111 lt!1581654 (t!356157 (toList!3106 lm!1707)))))))))

(declare-fun b!4370068 () Bool)

(declare-fun res!1798323 () Bool)

(assert (=> b!4370068 (=> (not res!1798323) (not e!2719838))))

(declare-fun hash!1718 (Hashable!4953 K!10470) (_ BitVec 64))

(assert (=> b!4370068 (= res!1798323 (= (hash!1718 hashF!1247 key!3918) hash!377))))

(assert (= (and start!424304 res!1798333) b!4370059))

(assert (= (and b!4370059 res!1798326) b!4370068))

(assert (= (and b!4370068 res!1798323) b!4370055))

(assert (= (and b!4370055 res!1798324) b!4370061))

(assert (= (and b!4370061 res!1798330) b!4370063))

(assert (= (and b!4370063 res!1798331) b!4370058))

(assert (= (and b!4370058 (not res!1798322)) b!4370066))

(assert (= (and b!4370066 (not res!1798329)) b!4370062))

(assert (= (and b!4370062 res!1798332) b!4370060))

(assert (= (and b!4370060 res!1798327) b!4370067))

(assert (= (and b!4370062 (not res!1798321)) b!4370054))

(assert (= (and b!4370054 res!1798325) b!4370057))

(assert (= (and b!4370054 (not res!1798328)) b!4370056))

(assert (= (and start!424304 ((_ is Cons!49110) newBucket!200)) b!4370064))

(assert (= start!424304 b!4370065))

(declare-fun m!4994195 () Bool)

(assert (=> b!4370054 m!4994195))

(declare-fun m!4994197 () Bool)

(assert (=> b!4370054 m!4994197))

(declare-fun m!4994199 () Bool)

(assert (=> b!4370054 m!4994199))

(declare-fun m!4994201 () Bool)

(assert (=> b!4370054 m!4994201))

(declare-fun m!4994203 () Bool)

(assert (=> b!4370054 m!4994203))

(declare-fun m!4994205 () Bool)

(assert (=> b!4370062 m!4994205))

(declare-fun m!4994207 () Bool)

(assert (=> b!4370062 m!4994207))

(declare-fun m!4994209 () Bool)

(assert (=> b!4370062 m!4994209))

(declare-fun m!4994211 () Bool)

(assert (=> b!4370062 m!4994211))

(declare-fun m!4994213 () Bool)

(assert (=> b!4370061 m!4994213))

(assert (=> b!4370061 m!4994213))

(declare-fun m!4994215 () Bool)

(assert (=> b!4370061 m!4994215))

(declare-fun m!4994217 () Bool)

(assert (=> b!4370056 m!4994217))

(assert (=> b!4370060 m!4994205))

(declare-fun m!4994219 () Bool)

(assert (=> b!4370066 m!4994219))

(declare-fun m!4994221 () Bool)

(assert (=> b!4370057 m!4994221))

(assert (=> b!4370057 m!4994221))

(declare-fun m!4994223 () Bool)

(assert (=> b!4370057 m!4994223))

(declare-fun m!4994225 () Bool)

(assert (=> b!4370068 m!4994225))

(declare-fun m!4994227 () Bool)

(assert (=> b!4370055 m!4994227))

(assert (=> start!424304 m!4994211))

(declare-fun m!4994229 () Bool)

(assert (=> start!424304 m!4994229))

(declare-fun m!4994231 () Bool)

(assert (=> b!4370059 m!4994231))

(declare-fun m!4994233 () Bool)

(assert (=> b!4370063 m!4994233))

(declare-fun m!4994235 () Bool)

(assert (=> b!4370058 m!4994235))

(declare-fun m!4994237 () Bool)

(assert (=> b!4370058 m!4994237))

(declare-fun m!4994239 () Bool)

(assert (=> b!4370058 m!4994239))

(declare-fun m!4994241 () Bool)

(assert (=> b!4370058 m!4994241))

(declare-fun m!4994243 () Bool)

(assert (=> b!4370058 m!4994243))

(check-sat (not b!4370060) (not b!4370058) (not b!4370068) (not b!4370065) (not b!4370055) (not b!4370057) (not b!4370063) (not b!4370059) (not b!4370064) tp_is_empty!25483 tp_is_empty!25481 (not b!4370062) (not b!4370066) (not b!4370056) (not b!4370054) (not b!4370061) (not start!424304))
(check-sat)
(get-model)

(declare-fun b!4370150 () Bool)

(declare-datatypes ((List!49236 0))(
  ( (Nil!49112) (Cons!49112 (h!54701 K!10470) (t!356158 List!49236)) )
))
(declare-fun e!2719903 () List!49236)

(declare-fun getKeysList!160 (List!49234) List!49236)

(assert (=> b!4370150 (= e!2719903 (getKeysList!160 (toList!3105 (extractMap!620 (toList!3106 lm!1707)))))))

(declare-fun b!4370151 () Bool)

(declare-fun e!2719902 () Bool)

(declare-fun contains!11416 (List!49236 K!10470) Bool)

(declare-fun keys!16638 (ListMap!2349) List!49236)

(assert (=> b!4370151 (= e!2719902 (contains!11416 (keys!16638 (extractMap!620 (toList!3106 lm!1707))) key!3918))))

(declare-fun b!4370152 () Bool)

(declare-fun e!2719899 () Unit!73504)

(declare-fun e!2719904 () Unit!73504)

(assert (=> b!4370152 (= e!2719899 e!2719904)))

(declare-fun c!742971 () Bool)

(declare-fun call!303734 () Bool)

(assert (=> b!4370152 (= c!742971 call!303734)))

(declare-fun bm!303729 () Bool)

(assert (=> bm!303729 (= call!303734 (contains!11416 e!2719903 key!3918))))

(declare-fun c!742970 () Bool)

(declare-fun c!742972 () Bool)

(assert (=> bm!303729 (= c!742970 c!742972)))

(declare-fun b!4370153 () Bool)

(declare-fun Unit!73529 () Unit!73504)

(assert (=> b!4370153 (= e!2719904 Unit!73529)))

(declare-fun b!4370154 () Bool)

(declare-fun e!2719901 () Bool)

(assert (=> b!4370154 (= e!2719901 (not (contains!11416 (keys!16638 (extractMap!620 (toList!3106 lm!1707))) key!3918)))))

(declare-fun d!1294064 () Bool)

(declare-fun e!2719900 () Bool)

(assert (=> d!1294064 e!2719900))

(declare-fun res!1798380 () Bool)

(assert (=> d!1294064 (=> res!1798380 e!2719900)))

(assert (=> d!1294064 (= res!1798380 e!2719901)))

(declare-fun res!1798378 () Bool)

(assert (=> d!1294064 (=> (not res!1798378) (not e!2719901))))

(declare-fun lt!1581731 () Bool)

(assert (=> d!1294064 (= res!1798378 (not lt!1581731))))

(declare-fun lt!1581730 () Bool)

(assert (=> d!1294064 (= lt!1581731 lt!1581730)))

(declare-fun lt!1581728 () Unit!73504)

(assert (=> d!1294064 (= lt!1581728 e!2719899)))

(assert (=> d!1294064 (= c!742972 lt!1581730)))

(declare-fun containsKey!819 (List!49234 K!10470) Bool)

(assert (=> d!1294064 (= lt!1581730 (containsKey!819 (toList!3105 (extractMap!620 (toList!3106 lm!1707))) key!3918))))

(assert (=> d!1294064 (= (contains!11414 (extractMap!620 (toList!3106 lm!1707)) key!3918) lt!1581731)))

(declare-fun b!4370155 () Bool)

(assert (=> b!4370155 (= e!2719903 (keys!16638 (extractMap!620 (toList!3106 lm!1707))))))

(declare-fun b!4370156 () Bool)

(assert (=> b!4370156 false))

(declare-fun lt!1581727 () Unit!73504)

(declare-fun lt!1581724 () Unit!73504)

(assert (=> b!4370156 (= lt!1581727 lt!1581724)))

(assert (=> b!4370156 (containsKey!819 (toList!3105 (extractMap!620 (toList!3106 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!158 (List!49234 K!10470) Unit!73504)

(assert (=> b!4370156 (= lt!1581724 (lemmaInGetKeysListThenContainsKey!158 (toList!3105 (extractMap!620 (toList!3106 lm!1707))) key!3918))))

(declare-fun Unit!73530 () Unit!73504)

(assert (=> b!4370156 (= e!2719904 Unit!73530)))

(declare-fun b!4370157 () Bool)

(declare-fun lt!1581726 () Unit!73504)

(assert (=> b!4370157 (= e!2719899 lt!1581726)))

(declare-fun lt!1581725 () Unit!73504)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!435 (List!49234 K!10470) Unit!73504)

(assert (=> b!4370157 (= lt!1581725 (lemmaContainsKeyImpliesGetValueByKeyDefined!435 (toList!3105 (extractMap!620 (toList!3106 lm!1707))) key!3918))))

(declare-datatypes ((Option!10538 0))(
  ( (None!10537) (Some!10537 (v!43509 V!10716)) )
))
(declare-fun isDefined!7832 (Option!10538) Bool)

(declare-fun getValueByKey!524 (List!49234 K!10470) Option!10538)

(assert (=> b!4370157 (isDefined!7832 (getValueByKey!524 (toList!3105 (extractMap!620 (toList!3106 lm!1707))) key!3918))))

(declare-fun lt!1581729 () Unit!73504)

(assert (=> b!4370157 (= lt!1581729 lt!1581725)))

(declare-fun lemmaInListThenGetKeysListContains!157 (List!49234 K!10470) Unit!73504)

(assert (=> b!4370157 (= lt!1581726 (lemmaInListThenGetKeysListContains!157 (toList!3105 (extractMap!620 (toList!3106 lm!1707))) key!3918))))

(assert (=> b!4370157 call!303734))

(declare-fun b!4370158 () Bool)

(assert (=> b!4370158 (= e!2719900 e!2719902)))

(declare-fun res!1798379 () Bool)

(assert (=> b!4370158 (=> (not res!1798379) (not e!2719902))))

(assert (=> b!4370158 (= res!1798379 (isDefined!7832 (getValueByKey!524 (toList!3105 (extractMap!620 (toList!3106 lm!1707))) key!3918)))))

(assert (= (and d!1294064 c!742972) b!4370157))

(assert (= (and d!1294064 (not c!742972)) b!4370152))

(assert (= (and b!4370152 c!742971) b!4370156))

(assert (= (and b!4370152 (not c!742971)) b!4370153))

(assert (= (or b!4370157 b!4370152) bm!303729))

(assert (= (and bm!303729 c!742970) b!4370150))

(assert (= (and bm!303729 (not c!742970)) b!4370155))

(assert (= (and d!1294064 res!1798378) b!4370154))

(assert (= (and d!1294064 (not res!1798380)) b!4370158))

(assert (= (and b!4370158 res!1798379) b!4370151))

(declare-fun m!4994319 () Bool)

(assert (=> b!4370158 m!4994319))

(assert (=> b!4370158 m!4994319))

(declare-fun m!4994321 () Bool)

(assert (=> b!4370158 m!4994321))

(assert (=> b!4370151 m!4994213))

(declare-fun m!4994323 () Bool)

(assert (=> b!4370151 m!4994323))

(assert (=> b!4370151 m!4994323))

(declare-fun m!4994325 () Bool)

(assert (=> b!4370151 m!4994325))

(declare-fun m!4994327 () Bool)

(assert (=> b!4370157 m!4994327))

(assert (=> b!4370157 m!4994319))

(assert (=> b!4370157 m!4994319))

(assert (=> b!4370157 m!4994321))

(declare-fun m!4994329 () Bool)

(assert (=> b!4370157 m!4994329))

(declare-fun m!4994331 () Bool)

(assert (=> b!4370150 m!4994331))

(declare-fun m!4994333 () Bool)

(assert (=> d!1294064 m!4994333))

(assert (=> b!4370156 m!4994333))

(declare-fun m!4994335 () Bool)

(assert (=> b!4370156 m!4994335))

(declare-fun m!4994337 () Bool)

(assert (=> bm!303729 m!4994337))

(assert (=> b!4370154 m!4994213))

(assert (=> b!4370154 m!4994323))

(assert (=> b!4370154 m!4994323))

(assert (=> b!4370154 m!4994325))

(assert (=> b!4370155 m!4994213))

(assert (=> b!4370155 m!4994323))

(assert (=> b!4370061 d!1294064))

(declare-fun bs!638118 () Bool)

(declare-fun d!1294090 () Bool)

(assert (= bs!638118 (and d!1294090 start!424304)))

(declare-fun lambda!143673 () Int)

(assert (=> bs!638118 (= lambda!143673 lambda!143663)))

(declare-fun lt!1581736 () ListMap!2349)

(declare-fun invariantList!713 (List!49234) Bool)

(assert (=> d!1294090 (invariantList!713 (toList!3105 lt!1581736))))

(declare-fun e!2719915 () ListMap!2349)

(assert (=> d!1294090 (= lt!1581736 e!2719915)))

(declare-fun c!742977 () Bool)

(assert (=> d!1294090 (= c!742977 ((_ is Cons!49111) (toList!3106 lm!1707)))))

(assert (=> d!1294090 (forall!9239 (toList!3106 lm!1707) lambda!143673)))

(assert (=> d!1294090 (= (extractMap!620 (toList!3106 lm!1707)) lt!1581736)))

(declare-fun b!4370173 () Bool)

(assert (=> b!4370173 (= e!2719915 (addToMapMapFromBucket!242 (_2!27602 (h!54698 (toList!3106 lm!1707))) (extractMap!620 (t!356157 (toList!3106 lm!1707)))))))

(declare-fun b!4370174 () Bool)

(assert (=> b!4370174 (= e!2719915 (ListMap!2350 Nil!49110))))

(assert (= (and d!1294090 c!742977) b!4370173))

(assert (= (and d!1294090 (not c!742977)) b!4370174))

(declare-fun m!4994349 () Bool)

(assert (=> d!1294090 m!4994349))

(declare-fun m!4994351 () Bool)

(assert (=> d!1294090 m!4994351))

(assert (=> b!4370173 m!4994199))

(assert (=> b!4370173 m!4994199))

(declare-fun m!4994353 () Bool)

(assert (=> b!4370173 m!4994353))

(assert (=> b!4370061 d!1294090))

(declare-fun d!1294096 () Bool)

(declare-fun res!1798391 () Bool)

(declare-fun e!2719920 () Bool)

(assert (=> d!1294096 (=> res!1798391 e!2719920)))

(assert (=> d!1294096 (= res!1798391 ((_ is Nil!49111) (toList!3106 lt!1581655)))))

(assert (=> d!1294096 (= (forall!9239 (toList!3106 lt!1581655) lambda!143663) e!2719920)))

(declare-fun b!4370179 () Bool)

(declare-fun e!2719921 () Bool)

(assert (=> b!4370179 (= e!2719920 e!2719921)))

(declare-fun res!1798392 () Bool)

(assert (=> b!4370179 (=> (not res!1798392) (not e!2719921))))

(declare-fun dynLambda!20691 (Int tuple2!48616) Bool)

(assert (=> b!4370179 (= res!1798392 (dynLambda!20691 lambda!143663 (h!54698 (toList!3106 lt!1581655))))))

(declare-fun b!4370180 () Bool)

(assert (=> b!4370180 (= e!2719921 (forall!9239 (t!356157 (toList!3106 lt!1581655)) lambda!143663))))

(assert (= (and d!1294096 (not res!1798391)) b!4370179))

(assert (= (and b!4370179 res!1798392) b!4370180))

(declare-fun b_lambda!132933 () Bool)

(assert (=> (not b_lambda!132933) (not b!4370179)))

(declare-fun m!4994355 () Bool)

(assert (=> b!4370179 m!4994355))

(declare-fun m!4994357 () Bool)

(assert (=> b!4370180 m!4994357))

(assert (=> b!4370062 d!1294096))

(declare-fun d!1294098 () Bool)

(declare-fun e!2719924 () Bool)

(assert (=> d!1294098 e!2719924))

(declare-fun res!1798398 () Bool)

(assert (=> d!1294098 (=> (not res!1798398) (not e!2719924))))

(declare-fun lt!1581747 () ListLongMap!1755)

(assert (=> d!1294098 (= res!1798398 (contains!11415 lt!1581747 (_1!27602 lt!1581654)))))

(declare-fun lt!1581745 () List!49235)

(assert (=> d!1294098 (= lt!1581747 (ListLongMap!1756 lt!1581745))))

(declare-fun lt!1581748 () Unit!73504)

(declare-fun lt!1581746 () Unit!73504)

(assert (=> d!1294098 (= lt!1581748 lt!1581746)))

(declare-datatypes ((Option!10539 0))(
  ( (None!10538) (Some!10538 (v!43510 List!49234)) )
))
(declare-fun getValueByKey!525 (List!49235 (_ BitVec 64)) Option!10539)

(assert (=> d!1294098 (= (getValueByKey!525 lt!1581745 (_1!27602 lt!1581654)) (Some!10538 (_2!27602 lt!1581654)))))

(declare-fun lemmaContainsTupThenGetReturnValue!288 (List!49235 (_ BitVec 64) List!49234) Unit!73504)

(assert (=> d!1294098 (= lt!1581746 (lemmaContainsTupThenGetReturnValue!288 lt!1581745 (_1!27602 lt!1581654) (_2!27602 lt!1581654)))))

(declare-fun insertStrictlySorted!167 (List!49235 (_ BitVec 64) List!49234) List!49235)

(assert (=> d!1294098 (= lt!1581745 (insertStrictlySorted!167 (toList!3106 lm!1707) (_1!27602 lt!1581654) (_2!27602 lt!1581654)))))

(assert (=> d!1294098 (= (+!754 lm!1707 lt!1581654) lt!1581747)))

(declare-fun b!4370185 () Bool)

(declare-fun res!1798397 () Bool)

(assert (=> b!4370185 (=> (not res!1798397) (not e!2719924))))

(assert (=> b!4370185 (= res!1798397 (= (getValueByKey!525 (toList!3106 lt!1581747) (_1!27602 lt!1581654)) (Some!10538 (_2!27602 lt!1581654))))))

(declare-fun b!4370186 () Bool)

(assert (=> b!4370186 (= e!2719924 (contains!11413 (toList!3106 lt!1581747) lt!1581654))))

(assert (= (and d!1294098 res!1798398) b!4370185))

(assert (= (and b!4370185 res!1798397) b!4370186))

(declare-fun m!4994359 () Bool)

(assert (=> d!1294098 m!4994359))

(declare-fun m!4994361 () Bool)

(assert (=> d!1294098 m!4994361))

(declare-fun m!4994363 () Bool)

(assert (=> d!1294098 m!4994363))

(declare-fun m!4994365 () Bool)

(assert (=> d!1294098 m!4994365))

(declare-fun m!4994367 () Bool)

(assert (=> b!4370185 m!4994367))

(declare-fun m!4994369 () Bool)

(assert (=> b!4370186 m!4994369))

(assert (=> b!4370062 d!1294098))

(declare-fun d!1294100 () Bool)

(assert (=> d!1294100 (forall!9239 (toList!3106 (+!754 lm!1707 (tuple2!48617 hash!377 newBucket!200))) lambda!143663)))

(declare-fun lt!1581751 () Unit!73504)

(declare-fun choose!27208 (ListLongMap!1755 Int (_ BitVec 64) List!49234) Unit!73504)

(assert (=> d!1294100 (= lt!1581751 (choose!27208 lm!1707 lambda!143663 hash!377 newBucket!200))))

(declare-fun e!2719927 () Bool)

(assert (=> d!1294100 e!2719927))

(declare-fun res!1798401 () Bool)

(assert (=> d!1294100 (=> (not res!1798401) (not e!2719927))))

(assert (=> d!1294100 (= res!1798401 (forall!9239 (toList!3106 lm!1707) lambda!143663))))

(assert (=> d!1294100 (= (addValidProp!207 lm!1707 lambda!143663 hash!377 newBucket!200) lt!1581751)))

(declare-fun b!4370190 () Bool)

(assert (=> b!4370190 (= e!2719927 (dynLambda!20691 lambda!143663 (tuple2!48617 hash!377 newBucket!200)))))

(assert (= (and d!1294100 res!1798401) b!4370190))

(declare-fun b_lambda!132935 () Bool)

(assert (=> (not b_lambda!132935) (not b!4370190)))

(declare-fun m!4994371 () Bool)

(assert (=> d!1294100 m!4994371))

(declare-fun m!4994373 () Bool)

(assert (=> d!1294100 m!4994373))

(declare-fun m!4994375 () Bool)

(assert (=> d!1294100 m!4994375))

(assert (=> d!1294100 m!4994211))

(declare-fun m!4994377 () Bool)

(assert (=> b!4370190 m!4994377))

(assert (=> b!4370062 d!1294100))

(declare-fun d!1294102 () Bool)

(declare-fun res!1798402 () Bool)

(declare-fun e!2719928 () Bool)

(assert (=> d!1294102 (=> res!1798402 e!2719928)))

(assert (=> d!1294102 (= res!1798402 ((_ is Nil!49111) (toList!3106 lm!1707)))))

(assert (=> d!1294102 (= (forall!9239 (toList!3106 lm!1707) lambda!143663) e!2719928)))

(declare-fun b!4370191 () Bool)

(declare-fun e!2719929 () Bool)

(assert (=> b!4370191 (= e!2719928 e!2719929)))

(declare-fun res!1798403 () Bool)

(assert (=> b!4370191 (=> (not res!1798403) (not e!2719929))))

(assert (=> b!4370191 (= res!1798403 (dynLambda!20691 lambda!143663 (h!54698 (toList!3106 lm!1707))))))

(declare-fun b!4370192 () Bool)

(assert (=> b!4370192 (= e!2719929 (forall!9239 (t!356157 (toList!3106 lm!1707)) lambda!143663))))

(assert (= (and d!1294102 (not res!1798402)) b!4370191))

(assert (= (and b!4370191 res!1798403) b!4370192))

(declare-fun b_lambda!132937 () Bool)

(assert (=> (not b_lambda!132937) (not b!4370191)))

(declare-fun m!4994379 () Bool)

(assert (=> b!4370191 m!4994379))

(declare-fun m!4994381 () Bool)

(assert (=> b!4370192 m!4994381))

(assert (=> b!4370062 d!1294102))

(assert (=> b!4370060 d!1294096))

(declare-fun b!4370283 () Bool)

(assert (=> b!4370283 true))

(declare-fun bs!638175 () Bool)

(declare-fun b!4370282 () Bool)

(assert (= bs!638175 (and b!4370282 b!4370283)))

(declare-fun lambda!143747 () Int)

(declare-fun lambda!143746 () Int)

(assert (=> bs!638175 (= lambda!143747 lambda!143746)))

(assert (=> b!4370282 true))

(declare-fun lambda!143748 () Int)

(declare-fun lt!1581948 () ListMap!2349)

(assert (=> bs!638175 (= (= lt!1581948 lt!1581665) (= lambda!143748 lambda!143746))))

(assert (=> b!4370282 (= (= lt!1581948 lt!1581665) (= lambda!143748 lambda!143747))))

(assert (=> b!4370282 true))

(declare-fun bs!638176 () Bool)

(declare-fun d!1294104 () Bool)

(assert (= bs!638176 (and d!1294104 b!4370283)))

(declare-fun lt!1581956 () ListMap!2349)

(declare-fun lambda!143749 () Int)

(assert (=> bs!638176 (= (= lt!1581956 lt!1581665) (= lambda!143749 lambda!143746))))

(declare-fun bs!638177 () Bool)

(assert (= bs!638177 (and d!1294104 b!4370282)))

(assert (=> bs!638177 (= (= lt!1581956 lt!1581665) (= lambda!143749 lambda!143747))))

(assert (=> bs!638177 (= (= lt!1581956 lt!1581948) (= lambda!143749 lambda!143748))))

(assert (=> d!1294104 true))

(declare-fun bm!303754 () Bool)

(declare-fun call!303761 () Unit!73504)

(declare-fun lemmaContainsAllItsOwnKeys!95 (ListMap!2349) Unit!73504)

(assert (=> bm!303754 (= call!303761 (lemmaContainsAllItsOwnKeys!95 lt!1581665))))

(declare-fun b!4370281 () Bool)

(declare-fun res!1798442 () Bool)

(declare-fun e!2719983 () Bool)

(assert (=> b!4370281 (=> (not res!1798442) (not e!2719983))))

(declare-fun forall!9241 (List!49234 Int) Bool)

(assert (=> b!4370281 (= res!1798442 (forall!9241 (toList!3105 lt!1581665) lambda!143749))))

(assert (=> d!1294104 e!2719983))

(declare-fun res!1798443 () Bool)

(assert (=> d!1294104 (=> (not res!1798443) (not e!2719983))))

(assert (=> d!1294104 (= res!1798443 (forall!9241 lt!1581656 lambda!143749))))

(declare-fun e!2719981 () ListMap!2349)

(assert (=> d!1294104 (= lt!1581956 e!2719981)))

(declare-fun c!742995 () Bool)

(assert (=> d!1294104 (= c!742995 ((_ is Nil!49110) lt!1581656))))

(assert (=> d!1294104 (noDuplicateKeys!561 lt!1581656)))

(assert (=> d!1294104 (= (addToMapMapFromBucket!242 lt!1581656 lt!1581665) lt!1581956)))

(assert (=> b!4370282 (= e!2719981 lt!1581948)))

(declare-fun lt!1581950 () ListMap!2349)

(assert (=> b!4370282 (= lt!1581950 (+!753 lt!1581665 (h!54697 lt!1581656)))))

(assert (=> b!4370282 (= lt!1581948 (addToMapMapFromBucket!242 (t!356156 lt!1581656) (+!753 lt!1581665 (h!54697 lt!1581656))))))

(declare-fun lt!1581936 () Unit!73504)

(assert (=> b!4370282 (= lt!1581936 call!303761)))

(assert (=> b!4370282 (forall!9241 (toList!3105 lt!1581665) lambda!143747)))

(declare-fun lt!1581947 () Unit!73504)

(assert (=> b!4370282 (= lt!1581947 lt!1581936)))

(declare-fun call!303760 () Bool)

(assert (=> b!4370282 call!303760))

(declare-fun lt!1581945 () Unit!73504)

(declare-fun Unit!73542 () Unit!73504)

(assert (=> b!4370282 (= lt!1581945 Unit!73542)))

(assert (=> b!4370282 (forall!9241 (t!356156 lt!1581656) lambda!143748)))

(declare-fun lt!1581938 () Unit!73504)

(declare-fun Unit!73543 () Unit!73504)

(assert (=> b!4370282 (= lt!1581938 Unit!73543)))

(declare-fun lt!1581946 () Unit!73504)

(declare-fun Unit!73544 () Unit!73504)

(assert (=> b!4370282 (= lt!1581946 Unit!73544)))

(declare-fun lt!1581944 () Unit!73504)

(declare-fun forallContained!1879 (List!49234 Int tuple2!48614) Unit!73504)

(assert (=> b!4370282 (= lt!1581944 (forallContained!1879 (toList!3105 lt!1581950) lambda!143748 (h!54697 lt!1581656)))))

(assert (=> b!4370282 (contains!11414 lt!1581950 (_1!27601 (h!54697 lt!1581656)))))

(declare-fun lt!1581940 () Unit!73504)

(declare-fun Unit!73545 () Unit!73504)

(assert (=> b!4370282 (= lt!1581940 Unit!73545)))

(assert (=> b!4370282 (contains!11414 lt!1581948 (_1!27601 (h!54697 lt!1581656)))))

(declare-fun lt!1581939 () Unit!73504)

(declare-fun Unit!73546 () Unit!73504)

(assert (=> b!4370282 (= lt!1581939 Unit!73546)))

(assert (=> b!4370282 (forall!9241 lt!1581656 lambda!143748)))

(declare-fun lt!1581955 () Unit!73504)

(declare-fun Unit!73547 () Unit!73504)

(assert (=> b!4370282 (= lt!1581955 Unit!73547)))

(declare-fun call!303759 () Bool)

(assert (=> b!4370282 call!303759))

(declare-fun lt!1581949 () Unit!73504)

(declare-fun Unit!73548 () Unit!73504)

(assert (=> b!4370282 (= lt!1581949 Unit!73548)))

(declare-fun lt!1581952 () Unit!73504)

(declare-fun Unit!73549 () Unit!73504)

(assert (=> b!4370282 (= lt!1581952 Unit!73549)))

(declare-fun lt!1581951 () Unit!73504)

(declare-fun addForallContainsKeyThenBeforeAdding!95 (ListMap!2349 ListMap!2349 K!10470 V!10716) Unit!73504)

(assert (=> b!4370282 (= lt!1581951 (addForallContainsKeyThenBeforeAdding!95 lt!1581665 lt!1581948 (_1!27601 (h!54697 lt!1581656)) (_2!27601 (h!54697 lt!1581656))))))

(assert (=> b!4370282 (forall!9241 (toList!3105 lt!1581665) lambda!143748)))

(declare-fun lt!1581943 () Unit!73504)

(assert (=> b!4370282 (= lt!1581943 lt!1581951)))

(assert (=> b!4370282 (forall!9241 (toList!3105 lt!1581665) lambda!143748)))

(declare-fun lt!1581953 () Unit!73504)

(declare-fun Unit!73550 () Unit!73504)

(assert (=> b!4370282 (= lt!1581953 Unit!73550)))

(declare-fun res!1798444 () Bool)

(assert (=> b!4370282 (= res!1798444 (forall!9241 lt!1581656 lambda!143748))))

(declare-fun e!2719982 () Bool)

(assert (=> b!4370282 (=> (not res!1798444) (not e!2719982))))

(assert (=> b!4370282 e!2719982))

(declare-fun lt!1581937 () Unit!73504)

(declare-fun Unit!73551 () Unit!73504)

(assert (=> b!4370282 (= lt!1581937 Unit!73551)))

(assert (=> b!4370283 (= e!2719981 lt!1581665)))

(declare-fun lt!1581942 () Unit!73504)

(assert (=> b!4370283 (= lt!1581942 call!303761)))

(assert (=> b!4370283 call!303759))

(declare-fun lt!1581954 () Unit!73504)

(assert (=> b!4370283 (= lt!1581954 lt!1581942)))

(assert (=> b!4370283 call!303760))

(declare-fun lt!1581941 () Unit!73504)

(declare-fun Unit!73552 () Unit!73504)

(assert (=> b!4370283 (= lt!1581941 Unit!73552)))

(declare-fun b!4370284 () Bool)

(assert (=> b!4370284 (= e!2719983 (invariantList!713 (toList!3105 lt!1581956)))))

(declare-fun bm!303755 () Bool)

(assert (=> bm!303755 (= call!303759 (forall!9241 (ite c!742995 (toList!3105 lt!1581665) (toList!3105 lt!1581950)) (ite c!742995 lambda!143746 lambda!143748)))))

(declare-fun b!4370285 () Bool)

(assert (=> b!4370285 (= e!2719982 (forall!9241 (toList!3105 lt!1581665) lambda!143748))))

(declare-fun bm!303756 () Bool)

(assert (=> bm!303756 (= call!303760 (forall!9241 (ite c!742995 (toList!3105 lt!1581665) (toList!3105 lt!1581950)) (ite c!742995 lambda!143746 lambda!143748)))))

(assert (= (and d!1294104 c!742995) b!4370283))

(assert (= (and d!1294104 (not c!742995)) b!4370282))

(assert (= (and b!4370282 res!1798444) b!4370285))

(assert (= (or b!4370283 b!4370282) bm!303754))

(assert (= (or b!4370283 b!4370282) bm!303755))

(assert (= (or b!4370283 b!4370282) bm!303756))

(assert (= (and d!1294104 res!1798443) b!4370281))

(assert (= (and b!4370281 res!1798442) b!4370284))

(declare-fun m!4994533 () Bool)

(assert (=> bm!303755 m!4994533))

(declare-fun m!4994535 () Bool)

(assert (=> b!4370284 m!4994535))

(declare-fun m!4994537 () Bool)

(assert (=> d!1294104 m!4994537))

(declare-fun m!4994539 () Bool)

(assert (=> d!1294104 m!4994539))

(declare-fun m!4994541 () Bool)

(assert (=> b!4370282 m!4994541))

(declare-fun m!4994543 () Bool)

(assert (=> b!4370282 m!4994543))

(declare-fun m!4994545 () Bool)

(assert (=> b!4370282 m!4994545))

(declare-fun m!4994547 () Bool)

(assert (=> b!4370282 m!4994547))

(declare-fun m!4994549 () Bool)

(assert (=> b!4370282 m!4994549))

(assert (=> b!4370282 m!4994549))

(declare-fun m!4994551 () Bool)

(assert (=> b!4370282 m!4994551))

(declare-fun m!4994553 () Bool)

(assert (=> b!4370282 m!4994553))

(declare-fun m!4994555 () Bool)

(assert (=> b!4370282 m!4994555))

(assert (=> b!4370282 m!4994545))

(declare-fun m!4994557 () Bool)

(assert (=> b!4370282 m!4994557))

(declare-fun m!4994559 () Bool)

(assert (=> b!4370282 m!4994559))

(assert (=> b!4370282 m!4994551))

(declare-fun m!4994561 () Bool)

(assert (=> b!4370281 m!4994561))

(assert (=> bm!303756 m!4994533))

(assert (=> b!4370285 m!4994551))

(declare-fun m!4994563 () Bool)

(assert (=> bm!303754 m!4994563))

(assert (=> b!4370054 d!1294104))

(declare-fun bs!638178 () Bool)

(declare-fun d!1294132 () Bool)

(assert (= bs!638178 (and d!1294132 start!424304)))

(declare-fun lambda!143750 () Int)

(assert (=> bs!638178 (= lambda!143750 lambda!143663)))

(declare-fun bs!638179 () Bool)

(assert (= bs!638179 (and d!1294132 d!1294090)))

(assert (=> bs!638179 (= lambda!143750 lambda!143673)))

(declare-fun lt!1581957 () ListMap!2349)

(assert (=> d!1294132 (invariantList!713 (toList!3105 lt!1581957))))

(declare-fun e!2719984 () ListMap!2349)

(assert (=> d!1294132 (= lt!1581957 e!2719984)))

(declare-fun c!742996 () Bool)

(assert (=> d!1294132 (= c!742996 ((_ is Cons!49111) (toList!3106 lt!1581655)))))

(assert (=> d!1294132 (forall!9239 (toList!3106 lt!1581655) lambda!143750)))

(assert (=> d!1294132 (= (extractMap!620 (toList!3106 lt!1581655)) lt!1581957)))

(declare-fun b!4370288 () Bool)

(assert (=> b!4370288 (= e!2719984 (addToMapMapFromBucket!242 (_2!27602 (h!54698 (toList!3106 lt!1581655))) (extractMap!620 (t!356157 (toList!3106 lt!1581655)))))))

(declare-fun b!4370289 () Bool)

(assert (=> b!4370289 (= e!2719984 (ListMap!2350 Nil!49110))))

(assert (= (and d!1294132 c!742996) b!4370288))

(assert (= (and d!1294132 (not c!742996)) b!4370289))

(declare-fun m!4994565 () Bool)

(assert (=> d!1294132 m!4994565))

(declare-fun m!4994567 () Bool)

(assert (=> d!1294132 m!4994567))

(declare-fun m!4994569 () Bool)

(assert (=> b!4370288 m!4994569))

(assert (=> b!4370288 m!4994569))

(declare-fun m!4994571 () Bool)

(assert (=> b!4370288 m!4994571))

(assert (=> b!4370054 d!1294132))

(declare-fun bs!638180 () Bool)

(declare-fun d!1294134 () Bool)

(assert (= bs!638180 (and d!1294134 start!424304)))

(declare-fun lambda!143751 () Int)

(assert (=> bs!638180 (= lambda!143751 lambda!143663)))

(declare-fun bs!638181 () Bool)

(assert (= bs!638181 (and d!1294134 d!1294090)))

(assert (=> bs!638181 (= lambda!143751 lambda!143673)))

(declare-fun bs!638182 () Bool)

(assert (= bs!638182 (and d!1294134 d!1294132)))

(assert (=> bs!638182 (= lambda!143751 lambda!143750)))

(declare-fun lt!1581958 () ListMap!2349)

(assert (=> d!1294134 (invariantList!713 (toList!3105 lt!1581958))))

(declare-fun e!2719985 () ListMap!2349)

(assert (=> d!1294134 (= lt!1581958 e!2719985)))

(declare-fun c!742997 () Bool)

(assert (=> d!1294134 (= c!742997 ((_ is Cons!49111) (t!356157 (toList!3106 lm!1707))))))

(assert (=> d!1294134 (forall!9239 (t!356157 (toList!3106 lm!1707)) lambda!143751)))

(assert (=> d!1294134 (= (extractMap!620 (t!356157 (toList!3106 lm!1707))) lt!1581958)))

(declare-fun b!4370290 () Bool)

(assert (=> b!4370290 (= e!2719985 (addToMapMapFromBucket!242 (_2!27602 (h!54698 (t!356157 (toList!3106 lm!1707)))) (extractMap!620 (t!356157 (t!356157 (toList!3106 lm!1707))))))))

(declare-fun b!4370291 () Bool)

(assert (=> b!4370291 (= e!2719985 (ListMap!2350 Nil!49110))))

(assert (= (and d!1294134 c!742997) b!4370290))

(assert (= (and d!1294134 (not c!742997)) b!4370291))

(declare-fun m!4994573 () Bool)

(assert (=> d!1294134 m!4994573))

(declare-fun m!4994575 () Bool)

(assert (=> d!1294134 m!4994575))

(declare-fun m!4994577 () Bool)

(assert (=> b!4370290 m!4994577))

(assert (=> b!4370290 m!4994577))

(declare-fun m!4994579 () Bool)

(assert (=> b!4370290 m!4994579))

(assert (=> b!4370054 d!1294134))

(declare-fun d!1294136 () Bool)

(declare-fun res!1798449 () Bool)

(declare-fun e!2719990 () Bool)

(assert (=> d!1294136 (=> res!1798449 e!2719990)))

(assert (=> d!1294136 (= res!1798449 (and ((_ is Cons!49110) lt!1581659) (= (_1!27601 (h!54697 lt!1581659)) key!3918)))))

(assert (=> d!1294136 (= (containsKey!817 lt!1581659 key!3918) e!2719990)))

(declare-fun b!4370296 () Bool)

(declare-fun e!2719991 () Bool)

(assert (=> b!4370296 (= e!2719990 e!2719991)))

(declare-fun res!1798450 () Bool)

(assert (=> b!4370296 (=> (not res!1798450) (not e!2719991))))

(assert (=> b!4370296 (= res!1798450 ((_ is Cons!49110) lt!1581659))))

(declare-fun b!4370297 () Bool)

(assert (=> b!4370297 (= e!2719991 (containsKey!817 (t!356156 lt!1581659) key!3918))))

(assert (= (and d!1294136 (not res!1798449)) b!4370296))

(assert (= (and b!4370296 res!1798450) b!4370297))

(declare-fun m!4994581 () Bool)

(assert (=> b!4370297 m!4994581))

(assert (=> b!4370054 d!1294136))

(declare-fun bs!638183 () Bool)

(declare-fun b!4370300 () Bool)

(assert (= bs!638183 (and b!4370300 b!4370283)))

(declare-fun lambda!143752 () Int)

(assert (=> bs!638183 (= lambda!143752 lambda!143746)))

(declare-fun bs!638184 () Bool)

(assert (= bs!638184 (and b!4370300 b!4370282)))

(assert (=> bs!638184 (= lambda!143752 lambda!143747)))

(assert (=> bs!638184 (= (= lt!1581665 lt!1581948) (= lambda!143752 lambda!143748))))

(declare-fun bs!638185 () Bool)

(assert (= bs!638185 (and b!4370300 d!1294104)))

(assert (=> bs!638185 (= (= lt!1581665 lt!1581956) (= lambda!143752 lambda!143749))))

(assert (=> b!4370300 true))

(declare-fun bs!638186 () Bool)

(declare-fun b!4370299 () Bool)

(assert (= bs!638186 (and b!4370299 b!4370282)))

(declare-fun lambda!143753 () Int)

(assert (=> bs!638186 (= lambda!143753 lambda!143747)))

(assert (=> bs!638186 (= (= lt!1581665 lt!1581948) (= lambda!143753 lambda!143748))))

(declare-fun bs!638187 () Bool)

(assert (= bs!638187 (and b!4370299 d!1294104)))

(assert (=> bs!638187 (= (= lt!1581665 lt!1581956) (= lambda!143753 lambda!143749))))

(declare-fun bs!638188 () Bool)

(assert (= bs!638188 (and b!4370299 b!4370300)))

(assert (=> bs!638188 (= lambda!143753 lambda!143752)))

(declare-fun bs!638189 () Bool)

(assert (= bs!638189 (and b!4370299 b!4370283)))

(assert (=> bs!638189 (= lambda!143753 lambda!143746)))

(assert (=> b!4370299 true))

(declare-fun lambda!143754 () Int)

(declare-fun lt!1581971 () ListMap!2349)

(assert (=> bs!638186 (= (= lt!1581971 lt!1581665) (= lambda!143754 lambda!143747))))

(assert (=> b!4370299 (= (= lt!1581971 lt!1581665) (= lambda!143754 lambda!143753))))

(assert (=> bs!638186 (= (= lt!1581971 lt!1581948) (= lambda!143754 lambda!143748))))

(assert (=> bs!638187 (= (= lt!1581971 lt!1581956) (= lambda!143754 lambda!143749))))

(assert (=> bs!638188 (= (= lt!1581971 lt!1581665) (= lambda!143754 lambda!143752))))

(assert (=> bs!638189 (= (= lt!1581971 lt!1581665) (= lambda!143754 lambda!143746))))

(assert (=> b!4370299 true))

(declare-fun bs!638190 () Bool)

(declare-fun d!1294138 () Bool)

(assert (= bs!638190 (and d!1294138 b!4370282)))

(declare-fun lt!1581979 () ListMap!2349)

(declare-fun lambda!143755 () Int)

(assert (=> bs!638190 (= (= lt!1581979 lt!1581665) (= lambda!143755 lambda!143747))))

(declare-fun bs!638191 () Bool)

(assert (= bs!638191 (and d!1294138 b!4370299)))

(assert (=> bs!638191 (= (= lt!1581979 lt!1581665) (= lambda!143755 lambda!143753))))

(assert (=> bs!638190 (= (= lt!1581979 lt!1581948) (= lambda!143755 lambda!143748))))

(declare-fun bs!638192 () Bool)

(assert (= bs!638192 (and d!1294138 d!1294104)))

(assert (=> bs!638192 (= (= lt!1581979 lt!1581956) (= lambda!143755 lambda!143749))))

(declare-fun bs!638193 () Bool)

(assert (= bs!638193 (and d!1294138 b!4370300)))

(assert (=> bs!638193 (= (= lt!1581979 lt!1581665) (= lambda!143755 lambda!143752))))

(declare-fun bs!638194 () Bool)

(assert (= bs!638194 (and d!1294138 b!4370283)))

(assert (=> bs!638194 (= (= lt!1581979 lt!1581665) (= lambda!143755 lambda!143746))))

(assert (=> bs!638191 (= (= lt!1581979 lt!1581971) (= lambda!143755 lambda!143754))))

(assert (=> d!1294138 true))

(declare-fun bm!303757 () Bool)

(declare-fun call!303764 () Unit!73504)

(assert (=> bm!303757 (= call!303764 (lemmaContainsAllItsOwnKeys!95 lt!1581665))))

(declare-fun b!4370298 () Bool)

(declare-fun res!1798451 () Bool)

(declare-fun e!2719994 () Bool)

(assert (=> b!4370298 (=> (not res!1798451) (not e!2719994))))

(assert (=> b!4370298 (= res!1798451 (forall!9241 (toList!3105 lt!1581665) lambda!143755))))

(assert (=> d!1294138 e!2719994))

(declare-fun res!1798452 () Bool)

(assert (=> d!1294138 (=> (not res!1798452) (not e!2719994))))

(assert (=> d!1294138 (= res!1798452 (forall!9241 newBucket!200 lambda!143755))))

(declare-fun e!2719992 () ListMap!2349)

(assert (=> d!1294138 (= lt!1581979 e!2719992)))

(declare-fun c!742998 () Bool)

(assert (=> d!1294138 (= c!742998 ((_ is Nil!49110) newBucket!200))))

(assert (=> d!1294138 (noDuplicateKeys!561 newBucket!200)))

(assert (=> d!1294138 (= (addToMapMapFromBucket!242 newBucket!200 lt!1581665) lt!1581979)))

(assert (=> b!4370299 (= e!2719992 lt!1581971)))

(declare-fun lt!1581973 () ListMap!2349)

(assert (=> b!4370299 (= lt!1581973 (+!753 lt!1581665 (h!54697 newBucket!200)))))

(assert (=> b!4370299 (= lt!1581971 (addToMapMapFromBucket!242 (t!356156 newBucket!200) (+!753 lt!1581665 (h!54697 newBucket!200))))))

(declare-fun lt!1581959 () Unit!73504)

(assert (=> b!4370299 (= lt!1581959 call!303764)))

(assert (=> b!4370299 (forall!9241 (toList!3105 lt!1581665) lambda!143753)))

(declare-fun lt!1581970 () Unit!73504)

(assert (=> b!4370299 (= lt!1581970 lt!1581959)))

(declare-fun call!303763 () Bool)

(assert (=> b!4370299 call!303763))

(declare-fun lt!1581968 () Unit!73504)

(declare-fun Unit!73555 () Unit!73504)

(assert (=> b!4370299 (= lt!1581968 Unit!73555)))

(assert (=> b!4370299 (forall!9241 (t!356156 newBucket!200) lambda!143754)))

(declare-fun lt!1581961 () Unit!73504)

(declare-fun Unit!73556 () Unit!73504)

(assert (=> b!4370299 (= lt!1581961 Unit!73556)))

(declare-fun lt!1581969 () Unit!73504)

(declare-fun Unit!73557 () Unit!73504)

(assert (=> b!4370299 (= lt!1581969 Unit!73557)))

(declare-fun lt!1581967 () Unit!73504)

(assert (=> b!4370299 (= lt!1581967 (forallContained!1879 (toList!3105 lt!1581973) lambda!143754 (h!54697 newBucket!200)))))

(assert (=> b!4370299 (contains!11414 lt!1581973 (_1!27601 (h!54697 newBucket!200)))))

(declare-fun lt!1581963 () Unit!73504)

(declare-fun Unit!73558 () Unit!73504)

(assert (=> b!4370299 (= lt!1581963 Unit!73558)))

(assert (=> b!4370299 (contains!11414 lt!1581971 (_1!27601 (h!54697 newBucket!200)))))

(declare-fun lt!1581962 () Unit!73504)

(declare-fun Unit!73559 () Unit!73504)

(assert (=> b!4370299 (= lt!1581962 Unit!73559)))

(assert (=> b!4370299 (forall!9241 newBucket!200 lambda!143754)))

(declare-fun lt!1581978 () Unit!73504)

(declare-fun Unit!73560 () Unit!73504)

(assert (=> b!4370299 (= lt!1581978 Unit!73560)))

(declare-fun call!303762 () Bool)

(assert (=> b!4370299 call!303762))

(declare-fun lt!1581972 () Unit!73504)

(declare-fun Unit!73561 () Unit!73504)

(assert (=> b!4370299 (= lt!1581972 Unit!73561)))

(declare-fun lt!1581975 () Unit!73504)

(declare-fun Unit!73562 () Unit!73504)

(assert (=> b!4370299 (= lt!1581975 Unit!73562)))

(declare-fun lt!1581974 () Unit!73504)

(assert (=> b!4370299 (= lt!1581974 (addForallContainsKeyThenBeforeAdding!95 lt!1581665 lt!1581971 (_1!27601 (h!54697 newBucket!200)) (_2!27601 (h!54697 newBucket!200))))))

(assert (=> b!4370299 (forall!9241 (toList!3105 lt!1581665) lambda!143754)))

(declare-fun lt!1581966 () Unit!73504)

(assert (=> b!4370299 (= lt!1581966 lt!1581974)))

(assert (=> b!4370299 (forall!9241 (toList!3105 lt!1581665) lambda!143754)))

(declare-fun lt!1581976 () Unit!73504)

(declare-fun Unit!73563 () Unit!73504)

(assert (=> b!4370299 (= lt!1581976 Unit!73563)))

(declare-fun res!1798453 () Bool)

(assert (=> b!4370299 (= res!1798453 (forall!9241 newBucket!200 lambda!143754))))

(declare-fun e!2719993 () Bool)

(assert (=> b!4370299 (=> (not res!1798453) (not e!2719993))))

(assert (=> b!4370299 e!2719993))

(declare-fun lt!1581960 () Unit!73504)

(declare-fun Unit!73564 () Unit!73504)

(assert (=> b!4370299 (= lt!1581960 Unit!73564)))

(assert (=> b!4370300 (= e!2719992 lt!1581665)))

(declare-fun lt!1581965 () Unit!73504)

(assert (=> b!4370300 (= lt!1581965 call!303764)))

(assert (=> b!4370300 call!303762))

(declare-fun lt!1581977 () Unit!73504)

(assert (=> b!4370300 (= lt!1581977 lt!1581965)))

(assert (=> b!4370300 call!303763))

(declare-fun lt!1581964 () Unit!73504)

(declare-fun Unit!73565 () Unit!73504)

(assert (=> b!4370300 (= lt!1581964 Unit!73565)))

(declare-fun b!4370301 () Bool)

(assert (=> b!4370301 (= e!2719994 (invariantList!713 (toList!3105 lt!1581979)))))

(declare-fun bm!303758 () Bool)

(assert (=> bm!303758 (= call!303762 (forall!9241 (ite c!742998 (toList!3105 lt!1581665) (toList!3105 lt!1581973)) (ite c!742998 lambda!143752 lambda!143754)))))

(declare-fun b!4370302 () Bool)

(assert (=> b!4370302 (= e!2719993 (forall!9241 (toList!3105 lt!1581665) lambda!143754))))

(declare-fun bm!303759 () Bool)

(assert (=> bm!303759 (= call!303763 (forall!9241 (ite c!742998 (toList!3105 lt!1581665) (toList!3105 lt!1581973)) (ite c!742998 lambda!143752 lambda!143754)))))

(assert (= (and d!1294138 c!742998) b!4370300))

(assert (= (and d!1294138 (not c!742998)) b!4370299))

(assert (= (and b!4370299 res!1798453) b!4370302))

(assert (= (or b!4370300 b!4370299) bm!303757))

(assert (= (or b!4370300 b!4370299) bm!303758))

(assert (= (or b!4370300 b!4370299) bm!303759))

(assert (= (and d!1294138 res!1798452) b!4370298))

(assert (= (and b!4370298 res!1798451) b!4370301))

(declare-fun m!4994583 () Bool)

(assert (=> bm!303758 m!4994583))

(declare-fun m!4994585 () Bool)

(assert (=> b!4370301 m!4994585))

(declare-fun m!4994587 () Bool)

(assert (=> d!1294138 m!4994587))

(assert (=> d!1294138 m!4994219))

(declare-fun m!4994589 () Bool)

(assert (=> b!4370299 m!4994589))

(declare-fun m!4994591 () Bool)

(assert (=> b!4370299 m!4994591))

(declare-fun m!4994593 () Bool)

(assert (=> b!4370299 m!4994593))

(declare-fun m!4994595 () Bool)

(assert (=> b!4370299 m!4994595))

(declare-fun m!4994597 () Bool)

(assert (=> b!4370299 m!4994597))

(assert (=> b!4370299 m!4994597))

(declare-fun m!4994599 () Bool)

(assert (=> b!4370299 m!4994599))

(declare-fun m!4994601 () Bool)

(assert (=> b!4370299 m!4994601))

(declare-fun m!4994603 () Bool)

(assert (=> b!4370299 m!4994603))

(assert (=> b!4370299 m!4994593))

(declare-fun m!4994605 () Bool)

(assert (=> b!4370299 m!4994605))

(declare-fun m!4994607 () Bool)

(assert (=> b!4370299 m!4994607))

(assert (=> b!4370299 m!4994599))

(declare-fun m!4994609 () Bool)

(assert (=> b!4370298 m!4994609))

(assert (=> bm!303759 m!4994583))

(assert (=> b!4370302 m!4994599))

(assert (=> bm!303757 m!4994563))

(assert (=> b!4370054 d!1294138))

(declare-fun d!1294140 () Bool)

(declare-fun e!2720000 () Bool)

(assert (=> d!1294140 e!2720000))

(declare-fun res!1798456 () Bool)

(assert (=> d!1294140 (=> res!1798456 e!2720000)))

(declare-fun lt!1581991 () Bool)

(assert (=> d!1294140 (= res!1798456 (not lt!1581991))))

(declare-fun lt!1581989 () Bool)

(assert (=> d!1294140 (= lt!1581991 lt!1581989)))

(declare-fun lt!1581990 () Unit!73504)

(declare-fun e!2719999 () Unit!73504)

(assert (=> d!1294140 (= lt!1581990 e!2719999)))

(declare-fun c!743001 () Bool)

(assert (=> d!1294140 (= c!743001 lt!1581989)))

(declare-fun containsKey!821 (List!49235 (_ BitVec 64)) Bool)

(assert (=> d!1294140 (= lt!1581989 (containsKey!821 (toList!3106 lm!1707) hash!377))))

(assert (=> d!1294140 (= (contains!11415 lm!1707 hash!377) lt!1581991)))

(declare-fun b!4370309 () Bool)

(declare-fun lt!1581988 () Unit!73504)

(assert (=> b!4370309 (= e!2719999 lt!1581988)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!437 (List!49235 (_ BitVec 64)) Unit!73504)

(assert (=> b!4370309 (= lt!1581988 (lemmaContainsKeyImpliesGetValueByKeyDefined!437 (toList!3106 lm!1707) hash!377))))

(declare-fun isDefined!7834 (Option!10539) Bool)

(assert (=> b!4370309 (isDefined!7834 (getValueByKey!525 (toList!3106 lm!1707) hash!377))))

(declare-fun b!4370310 () Bool)

(declare-fun Unit!73566 () Unit!73504)

(assert (=> b!4370310 (= e!2719999 Unit!73566)))

(declare-fun b!4370311 () Bool)

(assert (=> b!4370311 (= e!2720000 (isDefined!7834 (getValueByKey!525 (toList!3106 lm!1707) hash!377)))))

(assert (= (and d!1294140 c!743001) b!4370309))

(assert (= (and d!1294140 (not c!743001)) b!4370310))

(assert (= (and d!1294140 (not res!1798456)) b!4370311))

(declare-fun m!4994611 () Bool)

(assert (=> d!1294140 m!4994611))

(declare-fun m!4994613 () Bool)

(assert (=> b!4370309 m!4994613))

(declare-fun m!4994615 () Bool)

(assert (=> b!4370309 m!4994615))

(assert (=> b!4370309 m!4994615))

(declare-fun m!4994617 () Bool)

(assert (=> b!4370309 m!4994617))

(assert (=> b!4370311 m!4994615))

(assert (=> b!4370311 m!4994615))

(assert (=> b!4370311 m!4994617))

(assert (=> b!4370063 d!1294140))

(declare-fun d!1294142 () Bool)

(declare-fun res!1798461 () Bool)

(declare-fun e!2720005 () Bool)

(assert (=> d!1294142 (=> res!1798461 e!2720005)))

(assert (=> d!1294142 (= res!1798461 (not ((_ is Cons!49110) lt!1581659)))))

(assert (=> d!1294142 (= (noDuplicateKeys!561 lt!1581659) e!2720005)))

(declare-fun b!4370316 () Bool)

(declare-fun e!2720006 () Bool)

(assert (=> b!4370316 (= e!2720005 e!2720006)))

(declare-fun res!1798462 () Bool)

(assert (=> b!4370316 (=> (not res!1798462) (not e!2720006))))

(assert (=> b!4370316 (= res!1798462 (not (containsKey!817 (t!356156 lt!1581659) (_1!27601 (h!54697 lt!1581659)))))))

(declare-fun b!4370317 () Bool)

(assert (=> b!4370317 (= e!2720006 (noDuplicateKeys!561 (t!356156 lt!1581659)))))

(assert (= (and d!1294142 (not res!1798461)) b!4370316))

(assert (= (and b!4370316 res!1798462) b!4370317))

(declare-fun m!4994619 () Bool)

(assert (=> b!4370316 m!4994619))

(declare-fun m!4994621 () Bool)

(assert (=> b!4370317 m!4994621))

(assert (=> b!4370056 d!1294142))

(assert (=> start!424304 d!1294102))

(declare-fun d!1294144 () Bool)

(declare-fun isStrictlySorted!140 (List!49235) Bool)

(assert (=> d!1294144 (= (inv!64656 lm!1707) (isStrictlySorted!140 (toList!3106 lm!1707)))))

(declare-fun bs!638195 () Bool)

(assert (= bs!638195 d!1294144))

(declare-fun m!4994623 () Bool)

(assert (=> bs!638195 m!4994623))

(assert (=> start!424304 d!1294144))

(declare-fun bs!638196 () Bool)

(declare-fun d!1294146 () Bool)

(assert (= bs!638196 (and d!1294146 d!1294138)))

(declare-fun lambda!143758 () Int)

(assert (=> bs!638196 (not (= lambda!143758 lambda!143755))))

(declare-fun bs!638197 () Bool)

(assert (= bs!638197 (and d!1294146 b!4370282)))

(assert (=> bs!638197 (not (= lambda!143758 lambda!143747))))

(declare-fun bs!638198 () Bool)

(assert (= bs!638198 (and d!1294146 b!4370299)))

(assert (=> bs!638198 (not (= lambda!143758 lambda!143753))))

(assert (=> bs!638197 (not (= lambda!143758 lambda!143748))))

(declare-fun bs!638199 () Bool)

(assert (= bs!638199 (and d!1294146 d!1294104)))

(assert (=> bs!638199 (not (= lambda!143758 lambda!143749))))

(declare-fun bs!638200 () Bool)

(assert (= bs!638200 (and d!1294146 b!4370300)))

(assert (=> bs!638200 (not (= lambda!143758 lambda!143752))))

(declare-fun bs!638201 () Bool)

(assert (= bs!638201 (and d!1294146 b!4370283)))

(assert (=> bs!638201 (not (= lambda!143758 lambda!143746))))

(assert (=> bs!638198 (not (= lambda!143758 lambda!143754))))

(assert (=> d!1294146 true))

(assert (=> d!1294146 true))

(assert (=> d!1294146 (= (allKeysSameHash!519 newBucket!200 hash!377 hashF!1247) (forall!9241 newBucket!200 lambda!143758))))

(declare-fun bs!638202 () Bool)

(assert (= bs!638202 d!1294146))

(declare-fun m!4994625 () Bool)

(assert (=> bs!638202 m!4994625))

(assert (=> b!4370055 d!1294146))

(declare-fun d!1294148 () Bool)

(declare-fun res!1798463 () Bool)

(declare-fun e!2720007 () Bool)

(assert (=> d!1294148 (=> res!1798463 e!2720007)))

(assert (=> d!1294148 (= res!1798463 (not ((_ is Cons!49110) newBucket!200)))))

(assert (=> d!1294148 (= (noDuplicateKeys!561 newBucket!200) e!2720007)))

(declare-fun b!4370322 () Bool)

(declare-fun e!2720008 () Bool)

(assert (=> b!4370322 (= e!2720007 e!2720008)))

(declare-fun res!1798464 () Bool)

(assert (=> b!4370322 (=> (not res!1798464) (not e!2720008))))

(assert (=> b!4370322 (= res!1798464 (not (containsKey!817 (t!356156 newBucket!200) (_1!27601 (h!54697 newBucket!200)))))))

(declare-fun b!4370323 () Bool)

(assert (=> b!4370323 (= e!2720008 (noDuplicateKeys!561 (t!356156 newBucket!200)))))

(assert (= (and d!1294148 (not res!1798463)) b!4370322))

(assert (= (and b!4370322 res!1798464) b!4370323))

(declare-fun m!4994627 () Bool)

(assert (=> b!4370322 m!4994627))

(declare-fun m!4994629 () Bool)

(assert (=> b!4370323 m!4994629))

(assert (=> b!4370066 d!1294148))

(declare-fun bs!638203 () Bool)

(declare-fun d!1294150 () Bool)

(assert (= bs!638203 (and d!1294150 start!424304)))

(declare-fun lambda!143761 () Int)

(assert (=> bs!638203 (not (= lambda!143761 lambda!143663))))

(declare-fun bs!638204 () Bool)

(assert (= bs!638204 (and d!1294150 d!1294090)))

(assert (=> bs!638204 (not (= lambda!143761 lambda!143673))))

(declare-fun bs!638205 () Bool)

(assert (= bs!638205 (and d!1294150 d!1294132)))

(assert (=> bs!638205 (not (= lambda!143761 lambda!143750))))

(declare-fun bs!638206 () Bool)

(assert (= bs!638206 (and d!1294150 d!1294134)))

(assert (=> bs!638206 (not (= lambda!143761 lambda!143751))))

(assert (=> d!1294150 true))

(assert (=> d!1294150 (= (allKeysSameHashInMap!665 lm!1707 hashF!1247) (forall!9239 (toList!3106 lm!1707) lambda!143761))))

(declare-fun bs!638207 () Bool)

(assert (= bs!638207 d!1294150))

(declare-fun m!4994631 () Bool)

(assert (=> bs!638207 m!4994631))

(assert (=> b!4370059 d!1294150))

(declare-fun bs!638208 () Bool)

(declare-fun b!4370328 () Bool)

(assert (= bs!638208 (and b!4370328 d!1294138)))

(declare-fun lambda!143762 () Int)

(assert (=> bs!638208 (= (= (+!753 lt!1581665 lt!1581657) lt!1581979) (= lambda!143762 lambda!143755))))

(declare-fun bs!638209 () Bool)

(assert (= bs!638209 (and b!4370328 b!4370282)))

(assert (=> bs!638209 (= (= (+!753 lt!1581665 lt!1581657) lt!1581665) (= lambda!143762 lambda!143747))))

(declare-fun bs!638210 () Bool)

(assert (= bs!638210 (and b!4370328 b!4370299)))

(assert (=> bs!638210 (= (= (+!753 lt!1581665 lt!1581657) lt!1581665) (= lambda!143762 lambda!143753))))

(assert (=> bs!638209 (= (= (+!753 lt!1581665 lt!1581657) lt!1581948) (= lambda!143762 lambda!143748))))

(declare-fun bs!638211 () Bool)

(assert (= bs!638211 (and b!4370328 d!1294104)))

(assert (=> bs!638211 (= (= (+!753 lt!1581665 lt!1581657) lt!1581956) (= lambda!143762 lambda!143749))))

(declare-fun bs!638212 () Bool)

(assert (= bs!638212 (and b!4370328 b!4370300)))

(assert (=> bs!638212 (= (= (+!753 lt!1581665 lt!1581657) lt!1581665) (= lambda!143762 lambda!143752))))

(declare-fun bs!638213 () Bool)

(assert (= bs!638213 (and b!4370328 d!1294146)))

(assert (=> bs!638213 (not (= lambda!143762 lambda!143758))))

(declare-fun bs!638214 () Bool)

(assert (= bs!638214 (and b!4370328 b!4370283)))

(assert (=> bs!638214 (= (= (+!753 lt!1581665 lt!1581657) lt!1581665) (= lambda!143762 lambda!143746))))

(assert (=> bs!638210 (= (= (+!753 lt!1581665 lt!1581657) lt!1581971) (= lambda!143762 lambda!143754))))

(assert (=> b!4370328 true))

(declare-fun bs!638215 () Bool)

(declare-fun b!4370327 () Bool)

(assert (= bs!638215 (and b!4370327 d!1294138)))

(declare-fun lambda!143763 () Int)

(assert (=> bs!638215 (= (= (+!753 lt!1581665 lt!1581657) lt!1581979) (= lambda!143763 lambda!143755))))

(declare-fun bs!638216 () Bool)

(assert (= bs!638216 (and b!4370327 b!4370282)))

(assert (=> bs!638216 (= (= (+!753 lt!1581665 lt!1581657) lt!1581665) (= lambda!143763 lambda!143747))))

(declare-fun bs!638217 () Bool)

(assert (= bs!638217 (and b!4370327 b!4370299)))

(assert (=> bs!638217 (= (= (+!753 lt!1581665 lt!1581657) lt!1581665) (= lambda!143763 lambda!143753))))

(assert (=> bs!638216 (= (= (+!753 lt!1581665 lt!1581657) lt!1581948) (= lambda!143763 lambda!143748))))

(declare-fun bs!638218 () Bool)

(assert (= bs!638218 (and b!4370327 b!4370328)))

(assert (=> bs!638218 (= lambda!143763 lambda!143762)))

(declare-fun bs!638219 () Bool)

(assert (= bs!638219 (and b!4370327 d!1294104)))

(assert (=> bs!638219 (= (= (+!753 lt!1581665 lt!1581657) lt!1581956) (= lambda!143763 lambda!143749))))

(declare-fun bs!638220 () Bool)

(assert (= bs!638220 (and b!4370327 b!4370300)))

(assert (=> bs!638220 (= (= (+!753 lt!1581665 lt!1581657) lt!1581665) (= lambda!143763 lambda!143752))))

(declare-fun bs!638221 () Bool)

(assert (= bs!638221 (and b!4370327 d!1294146)))

(assert (=> bs!638221 (not (= lambda!143763 lambda!143758))))

(declare-fun bs!638222 () Bool)

(assert (= bs!638222 (and b!4370327 b!4370283)))

(assert (=> bs!638222 (= (= (+!753 lt!1581665 lt!1581657) lt!1581665) (= lambda!143763 lambda!143746))))

(assert (=> bs!638217 (= (= (+!753 lt!1581665 lt!1581657) lt!1581971) (= lambda!143763 lambda!143754))))

(assert (=> b!4370327 true))

(declare-fun lambda!143764 () Int)

(declare-fun lt!1582004 () ListMap!2349)

(assert (=> b!4370327 (= (= lt!1582004 (+!753 lt!1581665 lt!1581657)) (= lambda!143764 lambda!143763))))

(assert (=> bs!638215 (= (= lt!1582004 lt!1581979) (= lambda!143764 lambda!143755))))

(assert (=> bs!638216 (= (= lt!1582004 lt!1581665) (= lambda!143764 lambda!143747))))

(assert (=> bs!638217 (= (= lt!1582004 lt!1581665) (= lambda!143764 lambda!143753))))

(assert (=> bs!638216 (= (= lt!1582004 lt!1581948) (= lambda!143764 lambda!143748))))

(assert (=> bs!638218 (= (= lt!1582004 (+!753 lt!1581665 lt!1581657)) (= lambda!143764 lambda!143762))))

(assert (=> bs!638219 (= (= lt!1582004 lt!1581956) (= lambda!143764 lambda!143749))))

(assert (=> bs!638220 (= (= lt!1582004 lt!1581665) (= lambda!143764 lambda!143752))))

(assert (=> bs!638221 (not (= lambda!143764 lambda!143758))))

(assert (=> bs!638222 (= (= lt!1582004 lt!1581665) (= lambda!143764 lambda!143746))))

(assert (=> bs!638217 (= (= lt!1582004 lt!1581971) (= lambda!143764 lambda!143754))))

(assert (=> b!4370327 true))

(declare-fun bs!638223 () Bool)

(declare-fun d!1294152 () Bool)

(assert (= bs!638223 (and d!1294152 b!4370327)))

(declare-fun lambda!143765 () Int)

(declare-fun lt!1582012 () ListMap!2349)

(assert (=> bs!638223 (= (= lt!1582012 (+!753 lt!1581665 lt!1581657)) (= lambda!143765 lambda!143763))))

(declare-fun bs!638224 () Bool)

(assert (= bs!638224 (and d!1294152 d!1294138)))

(assert (=> bs!638224 (= (= lt!1582012 lt!1581979) (= lambda!143765 lambda!143755))))

(declare-fun bs!638225 () Bool)

(assert (= bs!638225 (and d!1294152 b!4370282)))

(assert (=> bs!638225 (= (= lt!1582012 lt!1581665) (= lambda!143765 lambda!143747))))

(declare-fun bs!638226 () Bool)

(assert (= bs!638226 (and d!1294152 b!4370299)))

(assert (=> bs!638226 (= (= lt!1582012 lt!1581665) (= lambda!143765 lambda!143753))))

(assert (=> bs!638225 (= (= lt!1582012 lt!1581948) (= lambda!143765 lambda!143748))))

(declare-fun bs!638227 () Bool)

(assert (= bs!638227 (and d!1294152 b!4370328)))

(assert (=> bs!638227 (= (= lt!1582012 (+!753 lt!1581665 lt!1581657)) (= lambda!143765 lambda!143762))))

(assert (=> bs!638223 (= (= lt!1582012 lt!1582004) (= lambda!143765 lambda!143764))))

(declare-fun bs!638228 () Bool)

(assert (= bs!638228 (and d!1294152 d!1294104)))

(assert (=> bs!638228 (= (= lt!1582012 lt!1581956) (= lambda!143765 lambda!143749))))

(declare-fun bs!638229 () Bool)

(assert (= bs!638229 (and d!1294152 b!4370300)))

(assert (=> bs!638229 (= (= lt!1582012 lt!1581665) (= lambda!143765 lambda!143752))))

(declare-fun bs!638230 () Bool)

(assert (= bs!638230 (and d!1294152 d!1294146)))

(assert (=> bs!638230 (not (= lambda!143765 lambda!143758))))

(declare-fun bs!638231 () Bool)

(assert (= bs!638231 (and d!1294152 b!4370283)))

(assert (=> bs!638231 (= (= lt!1582012 lt!1581665) (= lambda!143765 lambda!143746))))

(assert (=> bs!638226 (= (= lt!1582012 lt!1581971) (= lambda!143765 lambda!143754))))

(assert (=> d!1294152 true))

(declare-fun bm!303760 () Bool)

(declare-fun call!303767 () Unit!73504)

(assert (=> bm!303760 (= call!303767 (lemmaContainsAllItsOwnKeys!95 (+!753 lt!1581665 lt!1581657)))))

(declare-fun b!4370326 () Bool)

(declare-fun res!1798465 () Bool)

(declare-fun e!2720011 () Bool)

(assert (=> b!4370326 (=> (not res!1798465) (not e!2720011))))

(assert (=> b!4370326 (= res!1798465 (forall!9241 (toList!3105 (+!753 lt!1581665 lt!1581657)) lambda!143765))))

(assert (=> d!1294152 e!2720011))

(declare-fun res!1798466 () Bool)

(assert (=> d!1294152 (=> (not res!1798466) (not e!2720011))))

(assert (=> d!1294152 (= res!1798466 (forall!9241 lt!1581659 lambda!143765))))

(declare-fun e!2720009 () ListMap!2349)

(assert (=> d!1294152 (= lt!1582012 e!2720009)))

(declare-fun c!743002 () Bool)

(assert (=> d!1294152 (= c!743002 ((_ is Nil!49110) lt!1581659))))

(assert (=> d!1294152 (noDuplicateKeys!561 lt!1581659)))

(assert (=> d!1294152 (= (addToMapMapFromBucket!242 lt!1581659 (+!753 lt!1581665 lt!1581657)) lt!1582012)))

(assert (=> b!4370327 (= e!2720009 lt!1582004)))

(declare-fun lt!1582006 () ListMap!2349)

(assert (=> b!4370327 (= lt!1582006 (+!753 (+!753 lt!1581665 lt!1581657) (h!54697 lt!1581659)))))

(assert (=> b!4370327 (= lt!1582004 (addToMapMapFromBucket!242 (t!356156 lt!1581659) (+!753 (+!753 lt!1581665 lt!1581657) (h!54697 lt!1581659))))))

(declare-fun lt!1581992 () Unit!73504)

(assert (=> b!4370327 (= lt!1581992 call!303767)))

(assert (=> b!4370327 (forall!9241 (toList!3105 (+!753 lt!1581665 lt!1581657)) lambda!143763)))

(declare-fun lt!1582003 () Unit!73504)

(assert (=> b!4370327 (= lt!1582003 lt!1581992)))

(declare-fun call!303766 () Bool)

(assert (=> b!4370327 call!303766))

(declare-fun lt!1582001 () Unit!73504)

(declare-fun Unit!73567 () Unit!73504)

(assert (=> b!4370327 (= lt!1582001 Unit!73567)))

(assert (=> b!4370327 (forall!9241 (t!356156 lt!1581659) lambda!143764)))

(declare-fun lt!1581994 () Unit!73504)

(declare-fun Unit!73568 () Unit!73504)

(assert (=> b!4370327 (= lt!1581994 Unit!73568)))

(declare-fun lt!1582002 () Unit!73504)

(declare-fun Unit!73569 () Unit!73504)

(assert (=> b!4370327 (= lt!1582002 Unit!73569)))

(declare-fun lt!1582000 () Unit!73504)

(assert (=> b!4370327 (= lt!1582000 (forallContained!1879 (toList!3105 lt!1582006) lambda!143764 (h!54697 lt!1581659)))))

(assert (=> b!4370327 (contains!11414 lt!1582006 (_1!27601 (h!54697 lt!1581659)))))

(declare-fun lt!1581996 () Unit!73504)

(declare-fun Unit!73570 () Unit!73504)

(assert (=> b!4370327 (= lt!1581996 Unit!73570)))

(assert (=> b!4370327 (contains!11414 lt!1582004 (_1!27601 (h!54697 lt!1581659)))))

(declare-fun lt!1581995 () Unit!73504)

(declare-fun Unit!73571 () Unit!73504)

(assert (=> b!4370327 (= lt!1581995 Unit!73571)))

(assert (=> b!4370327 (forall!9241 lt!1581659 lambda!143764)))

(declare-fun lt!1582011 () Unit!73504)

(declare-fun Unit!73572 () Unit!73504)

(assert (=> b!4370327 (= lt!1582011 Unit!73572)))

(declare-fun call!303765 () Bool)

(assert (=> b!4370327 call!303765))

(declare-fun lt!1582005 () Unit!73504)

(declare-fun Unit!73573 () Unit!73504)

(assert (=> b!4370327 (= lt!1582005 Unit!73573)))

(declare-fun lt!1582008 () Unit!73504)

(declare-fun Unit!73574 () Unit!73504)

(assert (=> b!4370327 (= lt!1582008 Unit!73574)))

(declare-fun lt!1582007 () Unit!73504)

(assert (=> b!4370327 (= lt!1582007 (addForallContainsKeyThenBeforeAdding!95 (+!753 lt!1581665 lt!1581657) lt!1582004 (_1!27601 (h!54697 lt!1581659)) (_2!27601 (h!54697 lt!1581659))))))

(assert (=> b!4370327 (forall!9241 (toList!3105 (+!753 lt!1581665 lt!1581657)) lambda!143764)))

(declare-fun lt!1581999 () Unit!73504)

(assert (=> b!4370327 (= lt!1581999 lt!1582007)))

(assert (=> b!4370327 (forall!9241 (toList!3105 (+!753 lt!1581665 lt!1581657)) lambda!143764)))

(declare-fun lt!1582009 () Unit!73504)

(declare-fun Unit!73575 () Unit!73504)

(assert (=> b!4370327 (= lt!1582009 Unit!73575)))

(declare-fun res!1798467 () Bool)

(assert (=> b!4370327 (= res!1798467 (forall!9241 lt!1581659 lambda!143764))))

(declare-fun e!2720010 () Bool)

(assert (=> b!4370327 (=> (not res!1798467) (not e!2720010))))

(assert (=> b!4370327 e!2720010))

(declare-fun lt!1581993 () Unit!73504)

(declare-fun Unit!73576 () Unit!73504)

(assert (=> b!4370327 (= lt!1581993 Unit!73576)))

(assert (=> b!4370328 (= e!2720009 (+!753 lt!1581665 lt!1581657))))

(declare-fun lt!1581998 () Unit!73504)

(assert (=> b!4370328 (= lt!1581998 call!303767)))

(assert (=> b!4370328 call!303765))

(declare-fun lt!1582010 () Unit!73504)

(assert (=> b!4370328 (= lt!1582010 lt!1581998)))

(assert (=> b!4370328 call!303766))

(declare-fun lt!1581997 () Unit!73504)

(declare-fun Unit!73577 () Unit!73504)

(assert (=> b!4370328 (= lt!1581997 Unit!73577)))

(declare-fun b!4370329 () Bool)

(assert (=> b!4370329 (= e!2720011 (invariantList!713 (toList!3105 lt!1582012)))))

(declare-fun bm!303761 () Bool)

(assert (=> bm!303761 (= call!303765 (forall!9241 (ite c!743002 (toList!3105 (+!753 lt!1581665 lt!1581657)) (toList!3105 lt!1582006)) (ite c!743002 lambda!143762 lambda!143764)))))

(declare-fun b!4370330 () Bool)

(assert (=> b!4370330 (= e!2720010 (forall!9241 (toList!3105 (+!753 lt!1581665 lt!1581657)) lambda!143764))))

(declare-fun bm!303762 () Bool)

(assert (=> bm!303762 (= call!303766 (forall!9241 (ite c!743002 (toList!3105 (+!753 lt!1581665 lt!1581657)) (toList!3105 lt!1582006)) (ite c!743002 lambda!143762 lambda!143764)))))

(assert (= (and d!1294152 c!743002) b!4370328))

(assert (= (and d!1294152 (not c!743002)) b!4370327))

(assert (= (and b!4370327 res!1798467) b!4370330))

(assert (= (or b!4370328 b!4370327) bm!303760))

(assert (= (or b!4370328 b!4370327) bm!303761))

(assert (= (or b!4370328 b!4370327) bm!303762))

(assert (= (and d!1294152 res!1798466) b!4370326))

(assert (= (and b!4370326 res!1798465) b!4370329))

(declare-fun m!4994633 () Bool)

(assert (=> bm!303761 m!4994633))

(declare-fun m!4994635 () Bool)

(assert (=> b!4370329 m!4994635))

(declare-fun m!4994637 () Bool)

(assert (=> d!1294152 m!4994637))

(assert (=> d!1294152 m!4994217))

(declare-fun m!4994639 () Bool)

(assert (=> b!4370327 m!4994639))

(declare-fun m!4994641 () Bool)

(assert (=> b!4370327 m!4994641))

(declare-fun m!4994643 () Bool)

(assert (=> b!4370327 m!4994643))

(declare-fun m!4994645 () Bool)

(assert (=> b!4370327 m!4994645))

(declare-fun m!4994647 () Bool)

(assert (=> b!4370327 m!4994647))

(assert (=> b!4370327 m!4994647))

(declare-fun m!4994649 () Bool)

(assert (=> b!4370327 m!4994649))

(declare-fun m!4994651 () Bool)

(assert (=> b!4370327 m!4994651))

(assert (=> b!4370327 m!4994221))

(declare-fun m!4994653 () Bool)

(assert (=> b!4370327 m!4994653))

(assert (=> b!4370327 m!4994221))

(assert (=> b!4370327 m!4994643))

(declare-fun m!4994655 () Bool)

(assert (=> b!4370327 m!4994655))

(declare-fun m!4994657 () Bool)

(assert (=> b!4370327 m!4994657))

(assert (=> b!4370327 m!4994649))

(declare-fun m!4994659 () Bool)

(assert (=> b!4370326 m!4994659))

(assert (=> bm!303762 m!4994633))

(assert (=> b!4370330 m!4994649))

(assert (=> bm!303760 m!4994221))

(declare-fun m!4994661 () Bool)

(assert (=> bm!303760 m!4994661))

(assert (=> b!4370057 d!1294152))

(declare-fun d!1294154 () Bool)

(declare-fun e!2720014 () Bool)

(assert (=> d!1294154 e!2720014))

(declare-fun res!1798472 () Bool)

(assert (=> d!1294154 (=> (not res!1798472) (not e!2720014))))

(declare-fun lt!1582023 () ListMap!2349)

(assert (=> d!1294154 (= res!1798472 (contains!11414 lt!1582023 (_1!27601 lt!1581657)))))

(declare-fun lt!1582024 () List!49234)

(assert (=> d!1294154 (= lt!1582023 (ListMap!2350 lt!1582024))))

(declare-fun lt!1582021 () Unit!73504)

(declare-fun lt!1582022 () Unit!73504)

(assert (=> d!1294154 (= lt!1582021 lt!1582022)))

(assert (=> d!1294154 (= (getValueByKey!524 lt!1582024 (_1!27601 lt!1581657)) (Some!10537 (_2!27601 lt!1581657)))))

(declare-fun lemmaContainsTupThenGetReturnValue!290 (List!49234 K!10470 V!10716) Unit!73504)

(assert (=> d!1294154 (= lt!1582022 (lemmaContainsTupThenGetReturnValue!290 lt!1582024 (_1!27601 lt!1581657) (_2!27601 lt!1581657)))))

(declare-fun insertNoDuplicatedKeys!131 (List!49234 K!10470 V!10716) List!49234)

(assert (=> d!1294154 (= lt!1582024 (insertNoDuplicatedKeys!131 (toList!3105 lt!1581665) (_1!27601 lt!1581657) (_2!27601 lt!1581657)))))

(assert (=> d!1294154 (= (+!753 lt!1581665 lt!1581657) lt!1582023)))

(declare-fun b!4370335 () Bool)

(declare-fun res!1798473 () Bool)

(assert (=> b!4370335 (=> (not res!1798473) (not e!2720014))))

(assert (=> b!4370335 (= res!1798473 (= (getValueByKey!524 (toList!3105 lt!1582023) (_1!27601 lt!1581657)) (Some!10537 (_2!27601 lt!1581657))))))

(declare-fun b!4370336 () Bool)

(declare-fun contains!11419 (List!49234 tuple2!48614) Bool)

(assert (=> b!4370336 (= e!2720014 (contains!11419 (toList!3105 lt!1582023) lt!1581657))))

(assert (= (and d!1294154 res!1798472) b!4370335))

(assert (= (and b!4370335 res!1798473) b!4370336))

(declare-fun m!4994663 () Bool)

(assert (=> d!1294154 m!4994663))

(declare-fun m!4994665 () Bool)

(assert (=> d!1294154 m!4994665))

(declare-fun m!4994667 () Bool)

(assert (=> d!1294154 m!4994667))

(declare-fun m!4994669 () Bool)

(assert (=> d!1294154 m!4994669))

(declare-fun m!4994671 () Bool)

(assert (=> b!4370335 m!4994671))

(declare-fun m!4994673 () Bool)

(assert (=> b!4370336 m!4994673))

(assert (=> b!4370057 d!1294154))

(declare-fun d!1294156 () Bool)

(declare-fun hash!1720 (Hashable!4953 K!10470) (_ BitVec 64))

(assert (=> d!1294156 (= (hash!1718 hashF!1247 key!3918) (hash!1720 hashF!1247 key!3918))))

(declare-fun bs!638232 () Bool)

(assert (= bs!638232 d!1294156))

(declare-fun m!4994675 () Bool)

(assert (=> bs!638232 m!4994675))

(assert (=> b!4370068 d!1294156))

(declare-fun d!1294158 () Bool)

(declare-fun get!15966 (Option!10539) List!49234)

(assert (=> d!1294158 (= (apply!11413 lm!1707 hash!377) (get!15966 (getValueByKey!525 (toList!3106 lm!1707) hash!377)))))

(declare-fun bs!638233 () Bool)

(assert (= bs!638233 d!1294158))

(assert (=> bs!638233 m!4994615))

(assert (=> bs!638233 m!4994615))

(declare-fun m!4994677 () Bool)

(assert (=> bs!638233 m!4994677))

(assert (=> b!4370058 d!1294158))

(declare-fun d!1294160 () Bool)

(assert (=> d!1294160 (contains!11413 (toList!3106 lm!1707) (tuple2!48617 hash!377 lt!1581663))))

(declare-fun lt!1582027 () Unit!73504)

(declare-fun choose!27209 (List!49235 (_ BitVec 64) List!49234) Unit!73504)

(assert (=> d!1294160 (= lt!1582027 (choose!27209 (toList!3106 lm!1707) hash!377 lt!1581663))))

(declare-fun e!2720017 () Bool)

(assert (=> d!1294160 e!2720017))

(declare-fun res!1798476 () Bool)

(assert (=> d!1294160 (=> (not res!1798476) (not e!2720017))))

(assert (=> d!1294160 (= res!1798476 (isStrictlySorted!140 (toList!3106 lm!1707)))))

(assert (=> d!1294160 (= (lemmaGetValueByKeyImpliesContainsTuple!406 (toList!3106 lm!1707) hash!377 lt!1581663) lt!1582027)))

(declare-fun b!4370339 () Bool)

(assert (=> b!4370339 (= e!2720017 (= (getValueByKey!525 (toList!3106 lm!1707) hash!377) (Some!10538 lt!1581663)))))

(assert (= (and d!1294160 res!1798476) b!4370339))

(declare-fun m!4994679 () Bool)

(assert (=> d!1294160 m!4994679))

(declare-fun m!4994681 () Bool)

(assert (=> d!1294160 m!4994681))

(assert (=> d!1294160 m!4994623))

(assert (=> b!4370339 m!4994615))

(assert (=> b!4370058 d!1294160))

(declare-fun d!1294162 () Bool)

(assert (=> d!1294162 (dynLambda!20691 lambda!143663 lt!1581661)))

(declare-fun lt!1582030 () Unit!73504)

(declare-fun choose!27210 (List!49235 Int tuple2!48616) Unit!73504)

(assert (=> d!1294162 (= lt!1582030 (choose!27210 (toList!3106 lm!1707) lambda!143663 lt!1581661))))

(declare-fun e!2720020 () Bool)

(assert (=> d!1294162 e!2720020))

(declare-fun res!1798479 () Bool)

(assert (=> d!1294162 (=> (not res!1798479) (not e!2720020))))

(assert (=> d!1294162 (= res!1798479 (forall!9239 (toList!3106 lm!1707) lambda!143663))))

(assert (=> d!1294162 (= (forallContained!1877 (toList!3106 lm!1707) lambda!143663 lt!1581661) lt!1582030)))

(declare-fun b!4370342 () Bool)

(assert (=> b!4370342 (= e!2720020 (contains!11413 (toList!3106 lm!1707) lt!1581661))))

(assert (= (and d!1294162 res!1798479) b!4370342))

(declare-fun b_lambda!132947 () Bool)

(assert (=> (not b_lambda!132947) (not d!1294162)))

(declare-fun m!4994683 () Bool)

(assert (=> d!1294162 m!4994683))

(declare-fun m!4994685 () Bool)

(assert (=> d!1294162 m!4994685))

(assert (=> d!1294162 m!4994211))

(assert (=> b!4370342 m!4994235))

(assert (=> b!4370058 d!1294162))

(declare-fun d!1294164 () Bool)

(declare-fun lt!1582033 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7788 (List!49235) (InoxSet tuple2!48616))

(assert (=> d!1294164 (= lt!1582033 (select (content!7788 (toList!3106 lm!1707)) lt!1581661))))

(declare-fun e!2720026 () Bool)

(assert (=> d!1294164 (= lt!1582033 e!2720026)))

(declare-fun res!1798485 () Bool)

(assert (=> d!1294164 (=> (not res!1798485) (not e!2720026))))

(assert (=> d!1294164 (= res!1798485 ((_ is Cons!49111) (toList!3106 lm!1707)))))

(assert (=> d!1294164 (= (contains!11413 (toList!3106 lm!1707) lt!1581661) lt!1582033)))

(declare-fun b!4370347 () Bool)

(declare-fun e!2720025 () Bool)

(assert (=> b!4370347 (= e!2720026 e!2720025)))

(declare-fun res!1798484 () Bool)

(assert (=> b!4370347 (=> res!1798484 e!2720025)))

(assert (=> b!4370347 (= res!1798484 (= (h!54698 (toList!3106 lm!1707)) lt!1581661))))

(declare-fun b!4370348 () Bool)

(assert (=> b!4370348 (= e!2720025 (contains!11413 (t!356157 (toList!3106 lm!1707)) lt!1581661))))

(assert (= (and d!1294164 res!1798485) b!4370347))

(assert (= (and b!4370347 (not res!1798484)) b!4370348))

(declare-fun m!4994687 () Bool)

(assert (=> d!1294164 m!4994687))

(declare-fun m!4994689 () Bool)

(assert (=> d!1294164 m!4994689))

(declare-fun m!4994691 () Bool)

(assert (=> b!4370348 m!4994691))

(assert (=> b!4370058 d!1294164))

(declare-fun b!4370359 () Bool)

(declare-fun e!2720032 () List!49234)

(assert (=> b!4370359 (= e!2720032 (Cons!49110 (h!54697 lt!1581663) (removePairForKey!529 (t!356156 lt!1581663) key!3918)))))

(declare-fun d!1294166 () Bool)

(declare-fun lt!1582036 () List!49234)

(assert (=> d!1294166 (not (containsKey!817 lt!1582036 key!3918))))

(declare-fun e!2720031 () List!49234)

(assert (=> d!1294166 (= lt!1582036 e!2720031)))

(declare-fun c!743007 () Bool)

(assert (=> d!1294166 (= c!743007 (and ((_ is Cons!49110) lt!1581663) (= (_1!27601 (h!54697 lt!1581663)) key!3918)))))

(assert (=> d!1294166 (noDuplicateKeys!561 lt!1581663)))

(assert (=> d!1294166 (= (removePairForKey!529 lt!1581663 key!3918) lt!1582036)))

(declare-fun b!4370360 () Bool)

(assert (=> b!4370360 (= e!2720032 Nil!49110)))

(declare-fun b!4370357 () Bool)

(assert (=> b!4370357 (= e!2720031 (t!356156 lt!1581663))))

(declare-fun b!4370358 () Bool)

(assert (=> b!4370358 (= e!2720031 e!2720032)))

(declare-fun c!743008 () Bool)

(assert (=> b!4370358 (= c!743008 ((_ is Cons!49110) lt!1581663))))

(assert (= (and d!1294166 c!743007) b!4370357))

(assert (= (and d!1294166 (not c!743007)) b!4370358))

(assert (= (and b!4370358 c!743008) b!4370359))

(assert (= (and b!4370358 (not c!743008)) b!4370360))

(declare-fun m!4994693 () Bool)

(assert (=> b!4370359 m!4994693))

(declare-fun m!4994695 () Bool)

(assert (=> d!1294166 m!4994695))

(declare-fun m!4994697 () Bool)

(assert (=> d!1294166 m!4994697))

(assert (=> b!4370058 d!1294166))

(declare-fun b!4370365 () Bool)

(declare-fun e!2720035 () Bool)

(declare-fun tp!1330970 () Bool)

(declare-fun tp!1330971 () Bool)

(assert (=> b!4370365 (= e!2720035 (and tp!1330970 tp!1330971))))

(assert (=> b!4370065 (= tp!1330955 e!2720035)))

(assert (= (and b!4370065 ((_ is Cons!49111) (toList!3106 lm!1707))) b!4370365))

(declare-fun b!4370370 () Bool)

(declare-fun e!2720038 () Bool)

(declare-fun tp!1330974 () Bool)

(assert (=> b!4370370 (= e!2720038 (and tp_is_empty!25481 tp_is_empty!25483 tp!1330974))))

(assert (=> b!4370064 (= tp!1330956 e!2720038)))

(assert (= (and b!4370064 ((_ is Cons!49110) (t!356156 newBucket!200))) b!4370370))

(declare-fun b_lambda!132949 () Bool)

(assert (= b_lambda!132947 (or start!424304 b_lambda!132949)))

(declare-fun bs!638234 () Bool)

(declare-fun d!1294168 () Bool)

(assert (= bs!638234 (and d!1294168 start!424304)))

(assert (=> bs!638234 (= (dynLambda!20691 lambda!143663 lt!1581661) (noDuplicateKeys!561 (_2!27602 lt!1581661)))))

(declare-fun m!4994699 () Bool)

(assert (=> bs!638234 m!4994699))

(assert (=> d!1294162 d!1294168))

(declare-fun b_lambda!132951 () Bool)

(assert (= b_lambda!132933 (or start!424304 b_lambda!132951)))

(declare-fun bs!638235 () Bool)

(declare-fun d!1294170 () Bool)

(assert (= bs!638235 (and d!1294170 start!424304)))

(assert (=> bs!638235 (= (dynLambda!20691 lambda!143663 (h!54698 (toList!3106 lt!1581655))) (noDuplicateKeys!561 (_2!27602 (h!54698 (toList!3106 lt!1581655)))))))

(declare-fun m!4994701 () Bool)

(assert (=> bs!638235 m!4994701))

(assert (=> b!4370179 d!1294170))

(declare-fun b_lambda!132953 () Bool)

(assert (= b_lambda!132935 (or start!424304 b_lambda!132953)))

(declare-fun bs!638236 () Bool)

(declare-fun d!1294172 () Bool)

(assert (= bs!638236 (and d!1294172 start!424304)))

(assert (=> bs!638236 (= (dynLambda!20691 lambda!143663 (tuple2!48617 hash!377 newBucket!200)) (noDuplicateKeys!561 (_2!27602 (tuple2!48617 hash!377 newBucket!200))))))

(declare-fun m!4994703 () Bool)

(assert (=> bs!638236 m!4994703))

(assert (=> b!4370190 d!1294172))

(declare-fun b_lambda!132955 () Bool)

(assert (= b_lambda!132937 (or start!424304 b_lambda!132955)))

(declare-fun bs!638237 () Bool)

(declare-fun d!1294174 () Bool)

(assert (= bs!638237 (and d!1294174 start!424304)))

(assert (=> bs!638237 (= (dynLambda!20691 lambda!143663 (h!54698 (toList!3106 lm!1707))) (noDuplicateKeys!561 (_2!27602 (h!54698 (toList!3106 lm!1707)))))))

(declare-fun m!4994705 () Bool)

(assert (=> bs!638237 m!4994705))

(assert (=> b!4370191 d!1294174))

(check-sat (not bm!303754) (not b!4370309) (not b!4370348) (not d!1294138) (not bm!303755) (not b!4370323) (not b!4370185) (not b!4370299) (not b!4370285) (not b!4370326) (not d!1294154) (not bm!303759) (not b!4370150) (not d!1294064) (not b!4370339) (not d!1294150) (not b!4370370) (not b!4370342) (not b!4370281) (not b!4370290) (not b!4370180) (not bs!638234) (not bs!638235) (not b_lambda!132951) (not b!4370173) (not d!1294146) (not bm!303761) tp_is_empty!25483 tp_is_empty!25481 (not b!4370282) (not bs!638236) (not d!1294156) (not b!4370155) (not b!4370336) (not d!1294134) (not d!1294166) (not b!4370327) (not b_lambda!132953) (not bs!638237) (not d!1294144) (not b!4370317) (not d!1294098) (not b!4370288) (not b!4370151) (not d!1294160) (not d!1294132) (not d!1294158) (not d!1294152) (not b_lambda!132955) (not b!4370335) (not bm!303757) (not b!4370158) (not d!1294162) (not d!1294164) (not b!4370322) (not b!4370156) (not bm!303756) (not b!4370284) (not b!4370157) (not b!4370329) (not bm!303760) (not b!4370302) (not bm!303762) (not b!4370330) (not d!1294140) (not b!4370192) (not b!4370186) (not d!1294104) (not b!4370297) (not bm!303758) (not b!4370298) (not d!1294100) (not b!4370359) (not d!1294090) (not bm!303729) (not b!4370311) (not b!4370301) (not b!4370154) (not b!4370316) (not b_lambda!132949) (not b!4370365))
(check-sat)
