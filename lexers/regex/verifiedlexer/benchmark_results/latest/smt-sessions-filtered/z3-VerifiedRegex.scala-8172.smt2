; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!420836 () Bool)

(assert start!420836)

(declare-fun b!4352807 () Bool)

(declare-fun res!1788558 () Bool)

(declare-fun e!2708742 () Bool)

(assert (=> b!4352807 (=> (not res!1788558) (not e!2708742))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4871 0))(
  ( (HashableExt!4870 (__x!30574 Int)) )
))
(declare-fun hashF!1247 () Hashable!4871)

(declare-datatypes ((K!10265 0))(
  ( (K!10266 (val!16483 Int)) )
))
(declare-fun key!3918 () K!10265)

(declare-fun hash!1509 (Hashable!4871 K!10265) (_ BitVec 64))

(assert (=> b!4352807 (= res!1788558 (= (hash!1509 hashF!1247 key!3918) hash!377))))

(declare-fun b!4352808 () Bool)

(declare-fun e!2708738 () Bool)

(declare-datatypes ((V!10511 0))(
  ( (V!10512 (val!16484 Int)) )
))
(declare-datatypes ((tuple2!48286 0))(
  ( (tuple2!48287 (_1!27437 K!10265) (_2!27437 V!10511)) )
))
(declare-datatypes ((List!49025 0))(
  ( (Nil!48901) (Cons!48901 (h!54442 tuple2!48286) (t!355945 List!49025)) )
))
(declare-datatypes ((tuple2!48288 0))(
  ( (tuple2!48289 (_1!27438 (_ BitVec 64)) (_2!27438 List!49025)) )
))
(declare-datatypes ((List!49026 0))(
  ( (Nil!48902) (Cons!48902 (h!54443 tuple2!48288) (t!355946 List!49026)) )
))
(declare-datatypes ((ListLongMap!1591 0))(
  ( (ListLongMap!1592 (toList!2941 List!49026)) )
))
(declare-fun lt!1566071 () ListLongMap!1591)

(declare-fun lambda!139751 () Int)

(declare-fun forall!9096 (List!49026 Int) Bool)

(assert (=> b!4352808 (= e!2708738 (forall!9096 (toList!2941 lt!1566071) lambda!139751))))

(declare-fun res!1788566 () Bool)

(assert (=> start!420836 (=> (not res!1788566) (not e!2708742))))

(declare-fun lm!1707 () ListLongMap!1591)

(assert (=> start!420836 (= res!1788566 (forall!9096 (toList!2941 lm!1707) lambda!139751))))

(assert (=> start!420836 e!2708742))

(declare-fun e!2708740 () Bool)

(assert (=> start!420836 e!2708740))

(assert (=> start!420836 true))

(declare-fun e!2708744 () Bool)

(declare-fun inv!64451 (ListLongMap!1591) Bool)

(assert (=> start!420836 (and (inv!64451 lm!1707) e!2708744)))

(declare-fun tp_is_empty!25153 () Bool)

(assert (=> start!420836 tp_is_empty!25153))

(declare-fun tp_is_empty!25155 () Bool)

(assert (=> start!420836 tp_is_empty!25155))

(declare-fun b!4352809 () Bool)

(declare-fun res!1788559 () Bool)

(assert (=> b!4352809 (=> (not res!1788559) (not e!2708742))))

(declare-fun contains!11086 (ListLongMap!1591 (_ BitVec 64)) Bool)

(assert (=> b!4352809 (= res!1788559 (contains!11086 lm!1707 hash!377))))

(declare-fun b!4352810 () Bool)

(declare-fun res!1788569 () Bool)

(assert (=> b!4352810 (=> (not res!1788569) (not e!2708742))))

(declare-fun newBucket!200 () List!49025)

(declare-fun allKeysSameHash!437 (List!49025 (_ BitVec 64) Hashable!4871) Bool)

(assert (=> b!4352810 (= res!1788569 (allKeysSameHash!437 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4352811 () Bool)

(declare-fun res!1788560 () Bool)

(declare-fun e!2708737 () Bool)

(assert (=> b!4352811 (=> res!1788560 e!2708737)))

(declare-fun noDuplicateKeys!479 (List!49025) Bool)

(assert (=> b!4352811 (= res!1788560 (not (noDuplicateKeys!479 newBucket!200)))))

(declare-fun b!4352812 () Bool)

(declare-fun e!2708743 () Bool)

(declare-fun isEmpty!28185 (ListLongMap!1591) Bool)

(assert (=> b!4352812 (= e!2708743 (not (isEmpty!28185 lm!1707)))))

(declare-fun e!2708741 () Bool)

(assert (=> b!4352812 e!2708741))

(declare-fun res!1788563 () Bool)

(assert (=> b!4352812 (=> (not res!1788563) (not e!2708741))))

(declare-fun lt!1566082 () tuple2!48288)

(declare-datatypes ((ListMap!2185 0))(
  ( (ListMap!2186 (toList!2942 List!49025)) )
))
(declare-fun lt!1566081 () ListMap!2185)

(declare-fun lt!1566077 () ListLongMap!1591)

(declare-fun lt!1566079 () tuple2!48286)

(declare-fun eq!249 (ListMap!2185 ListMap!2185) Bool)

(declare-fun extractMap!538 (List!49026) ListMap!2185)

(declare-fun +!615 (ListLongMap!1591 tuple2!48288) ListLongMap!1591)

(declare-fun +!616 (ListMap!2185 tuple2!48286) ListMap!2185)

(assert (=> b!4352812 (= res!1788563 (eq!249 (extractMap!538 (toList!2941 (+!615 lt!1566077 lt!1566082))) (+!616 lt!1566081 lt!1566079)))))

(declare-datatypes ((Unit!71224 0))(
  ( (Unit!71225) )
))
(declare-fun lt!1566083 () Unit!71224)

(declare-fun newValue!99 () V!10511)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!83 (ListLongMap!1591 (_ BitVec 64) List!49025 K!10265 V!10511 Hashable!4871) Unit!71224)

(assert (=> b!4352812 (= lt!1566083 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!83 lt!1566077 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11087 (ListMap!2185 K!10265) Bool)

(assert (=> b!4352812 (contains!11087 lt!1566081 key!3918)))

(assert (=> b!4352812 (= lt!1566081 (extractMap!538 (toList!2941 lt!1566077)))))

(declare-fun tail!6977 (ListLongMap!1591) ListLongMap!1591)

(assert (=> b!4352812 (= lt!1566077 (tail!6977 lm!1707))))

(declare-fun lt!1566072 () ListMap!2185)

(assert (=> b!4352812 (contains!11087 lt!1566072 key!3918)))

(declare-fun lt!1566084 () Unit!71224)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!22 (List!49025 K!10265 V!10511 ListMap!2185) Unit!71224)

(assert (=> b!4352812 (= lt!1566084 (lemmaAddToMapContainsAndNotInListThenInAcc!22 (_2!27438 (h!54443 (toList!2941 lm!1707))) key!3918 newValue!99 lt!1566072))))

(assert (=> b!4352812 (= lt!1566072 (extractMap!538 (t!355946 (toList!2941 lm!1707))))))

(declare-fun e!2708739 () Bool)

(assert (=> b!4352812 e!2708739))

(declare-fun res!1788567 () Bool)

(assert (=> b!4352812 (=> (not res!1788567) (not e!2708739))))

(declare-fun containsKey!661 (List!49025 K!10265) Bool)

(declare-fun apply!11331 (ListLongMap!1591 (_ BitVec 64)) List!49025)

(assert (=> b!4352812 (= res!1788567 (not (containsKey!661 (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707)))) key!3918)))))

(declare-fun lt!1566078 () Unit!71224)

(declare-fun lemmaNotSameHashThenCannotContainKey!26 (ListLongMap!1591 K!10265 (_ BitVec 64) Hashable!4871) Unit!71224)

(assert (=> b!4352812 (= lt!1566078 (lemmaNotSameHashThenCannotContainKey!26 lm!1707 key!3918 (_1!27438 (h!54443 (toList!2941 lm!1707))) hashF!1247))))

(declare-fun b!4352813 () Bool)

(assert (=> b!4352813 (= e!2708737 e!2708743)))

(declare-fun res!1788562 () Bool)

(assert (=> b!4352813 (=> res!1788562 e!2708743)))

(get-info :version)

(assert (=> b!4352813 (= res!1788562 (or (and ((_ is Cons!48902) (toList!2941 lm!1707)) (= (_1!27438 (h!54443 (toList!2941 lm!1707))) hash!377)) (not ((_ is Cons!48902) (toList!2941 lm!1707))) (= (_1!27438 (h!54443 (toList!2941 lm!1707))) hash!377)))))

(assert (=> b!4352813 e!2708738))

(declare-fun res!1788565 () Bool)

(assert (=> b!4352813 (=> (not res!1788565) (not e!2708738))))

(assert (=> b!4352813 (= res!1788565 (forall!9096 (toList!2941 lt!1566071) lambda!139751))))

(assert (=> b!4352813 (= lt!1566071 (+!615 lm!1707 lt!1566082))))

(assert (=> b!4352813 (= lt!1566082 (tuple2!48289 hash!377 newBucket!200))))

(declare-fun lt!1566073 () Unit!71224)

(declare-fun addValidProp!133 (ListLongMap!1591 Int (_ BitVec 64) List!49025) Unit!71224)

(assert (=> b!4352813 (= lt!1566073 (addValidProp!133 lm!1707 lambda!139751 hash!377 newBucket!200))))

(assert (=> b!4352813 (forall!9096 (toList!2941 lm!1707) lambda!139751)))

(declare-fun b!4352814 () Bool)

(assert (=> b!4352814 (= e!2708739 (not (containsKey!661 (_2!27438 (h!54443 (toList!2941 lm!1707))) key!3918)))))

(declare-fun b!4352815 () Bool)

(declare-fun res!1788564 () Bool)

(assert (=> b!4352815 (=> (not res!1788564) (not e!2708742))))

(assert (=> b!4352815 (= res!1788564 (contains!11087 (extractMap!538 (toList!2941 lm!1707)) key!3918))))

(declare-fun b!4352816 () Bool)

(declare-fun head!9028 (ListLongMap!1591) tuple2!48288)

(assert (=> b!4352816 (= e!2708741 (not (= (head!9028 lm!1707) lt!1566082)))))

(declare-fun b!4352817 () Bool)

(declare-fun tp!1329966 () Bool)

(assert (=> b!4352817 (= e!2708744 tp!1329966)))

(declare-fun b!4352818 () Bool)

(declare-fun res!1788561 () Bool)

(assert (=> b!4352818 (=> (not res!1788561) (not e!2708742))))

(declare-fun allKeysSameHashInMap!583 (ListLongMap!1591 Hashable!4871) Bool)

(assert (=> b!4352818 (= res!1788561 (allKeysSameHashInMap!583 lm!1707 hashF!1247))))

(declare-fun b!4352819 () Bool)

(assert (=> b!4352819 (= e!2708742 (not e!2708737))))

(declare-fun res!1788568 () Bool)

(assert (=> b!4352819 (=> res!1788568 e!2708737)))

(declare-fun lt!1566080 () List!49025)

(declare-fun removePairForKey!449 (List!49025 K!10265) List!49025)

(assert (=> b!4352819 (= res!1788568 (not (= newBucket!200 (Cons!48901 lt!1566079 (removePairForKey!449 lt!1566080 key!3918)))))))

(assert (=> b!4352819 (= lt!1566079 (tuple2!48287 key!3918 newValue!99))))

(declare-fun lt!1566074 () Unit!71224)

(declare-fun lt!1566075 () tuple2!48288)

(declare-fun forallContained!1741 (List!49026 Int tuple2!48288) Unit!71224)

(assert (=> b!4352819 (= lt!1566074 (forallContained!1741 (toList!2941 lm!1707) lambda!139751 lt!1566075))))

(declare-fun contains!11088 (List!49026 tuple2!48288) Bool)

(assert (=> b!4352819 (contains!11088 (toList!2941 lm!1707) lt!1566075)))

(assert (=> b!4352819 (= lt!1566075 (tuple2!48289 hash!377 lt!1566080))))

(declare-fun lt!1566076 () Unit!71224)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!326 (List!49026 (_ BitVec 64) List!49025) Unit!71224)

(assert (=> b!4352819 (= lt!1566076 (lemmaGetValueByKeyImpliesContainsTuple!326 (toList!2941 lm!1707) hash!377 lt!1566080))))

(assert (=> b!4352819 (= lt!1566080 (apply!11331 lm!1707 hash!377))))

(declare-fun b!4352820 () Bool)

(declare-fun tp!1329965 () Bool)

(assert (=> b!4352820 (= e!2708740 (and tp_is_empty!25153 tp_is_empty!25155 tp!1329965))))

(assert (= (and start!420836 res!1788566) b!4352818))

(assert (= (and b!4352818 res!1788561) b!4352807))

(assert (= (and b!4352807 res!1788558) b!4352810))

(assert (= (and b!4352810 res!1788569) b!4352815))

(assert (= (and b!4352815 res!1788564) b!4352809))

(assert (= (and b!4352809 res!1788559) b!4352819))

(assert (= (and b!4352819 (not res!1788568)) b!4352811))

(assert (= (and b!4352811 (not res!1788560)) b!4352813))

(assert (= (and b!4352813 res!1788565) b!4352808))

(assert (= (and b!4352813 (not res!1788562)) b!4352812))

(assert (= (and b!4352812 res!1788567) b!4352814))

(assert (= (and b!4352812 res!1788563) b!4352816))

(assert (= (and start!420836 ((_ is Cons!48901) newBucket!200)) b!4352820))

(assert (= start!420836 b!4352817))

(declare-fun m!4964277 () Bool)

(assert (=> b!4352816 m!4964277))

(declare-fun m!4964279 () Bool)

(assert (=> b!4352811 m!4964279))

(declare-fun m!4964281 () Bool)

(assert (=> b!4352813 m!4964281))

(declare-fun m!4964283 () Bool)

(assert (=> b!4352813 m!4964283))

(declare-fun m!4964285 () Bool)

(assert (=> b!4352813 m!4964285))

(declare-fun m!4964287 () Bool)

(assert (=> b!4352813 m!4964287))

(declare-fun m!4964289 () Bool)

(assert (=> b!4352809 m!4964289))

(declare-fun m!4964291 () Bool)

(assert (=> b!4352812 m!4964291))

(declare-fun m!4964293 () Bool)

(assert (=> b!4352812 m!4964293))

(assert (=> b!4352812 m!4964291))

(declare-fun m!4964295 () Bool)

(assert (=> b!4352812 m!4964295))

(declare-fun m!4964297 () Bool)

(assert (=> b!4352812 m!4964297))

(declare-fun m!4964299 () Bool)

(assert (=> b!4352812 m!4964299))

(declare-fun m!4964301 () Bool)

(assert (=> b!4352812 m!4964301))

(declare-fun m!4964303 () Bool)

(assert (=> b!4352812 m!4964303))

(declare-fun m!4964305 () Bool)

(assert (=> b!4352812 m!4964305))

(assert (=> b!4352812 m!4964293))

(declare-fun m!4964307 () Bool)

(assert (=> b!4352812 m!4964307))

(declare-fun m!4964309 () Bool)

(assert (=> b!4352812 m!4964309))

(declare-fun m!4964311 () Bool)

(assert (=> b!4352812 m!4964311))

(declare-fun m!4964313 () Bool)

(assert (=> b!4352812 m!4964313))

(declare-fun m!4964315 () Bool)

(assert (=> b!4352812 m!4964315))

(declare-fun m!4964317 () Bool)

(assert (=> b!4352812 m!4964317))

(assert (=> b!4352812 m!4964317))

(declare-fun m!4964319 () Bool)

(assert (=> b!4352812 m!4964319))

(assert (=> start!420836 m!4964287))

(declare-fun m!4964321 () Bool)

(assert (=> start!420836 m!4964321))

(declare-fun m!4964323 () Bool)

(assert (=> b!4352815 m!4964323))

(assert (=> b!4352815 m!4964323))

(declare-fun m!4964325 () Bool)

(assert (=> b!4352815 m!4964325))

(declare-fun m!4964327 () Bool)

(assert (=> b!4352807 m!4964327))

(declare-fun m!4964329 () Bool)

(assert (=> b!4352818 m!4964329))

(declare-fun m!4964331 () Bool)

(assert (=> b!4352810 m!4964331))

(declare-fun m!4964333 () Bool)

(assert (=> b!4352814 m!4964333))

(assert (=> b!4352808 m!4964281))

(declare-fun m!4964335 () Bool)

(assert (=> b!4352819 m!4964335))

(declare-fun m!4964337 () Bool)

(assert (=> b!4352819 m!4964337))

(declare-fun m!4964339 () Bool)

(assert (=> b!4352819 m!4964339))

(declare-fun m!4964341 () Bool)

(assert (=> b!4352819 m!4964341))

(declare-fun m!4964343 () Bool)

(assert (=> b!4352819 m!4964343))

(check-sat tp_is_empty!25155 (not b!4352815) (not b!4352818) (not b!4352814) (not start!420836) (not b!4352816) (not b!4352817) (not b!4352811) tp_is_empty!25153 (not b!4352812) (not b!4352813) (not b!4352819) (not b!4352808) (not b!4352807) (not b!4352809) (not b!4352820) (not b!4352810))
(check-sat)
(get-model)

(declare-fun d!1286003 () Bool)

(declare-fun res!1788586 () Bool)

(declare-fun e!2708758 () Bool)

(assert (=> d!1286003 (=> res!1788586 e!2708758)))

(assert (=> d!1286003 (= res!1788586 ((_ is Nil!48902) (toList!2941 lt!1566071)))))

(assert (=> d!1286003 (= (forall!9096 (toList!2941 lt!1566071) lambda!139751) e!2708758)))

(declare-fun b!4352837 () Bool)

(declare-fun e!2708759 () Bool)

(assert (=> b!4352837 (= e!2708758 e!2708759)))

(declare-fun res!1788587 () Bool)

(assert (=> b!4352837 (=> (not res!1788587) (not e!2708759))))

(declare-fun dynLambda!20621 (Int tuple2!48288) Bool)

(assert (=> b!4352837 (= res!1788587 (dynLambda!20621 lambda!139751 (h!54443 (toList!2941 lt!1566071))))))

(declare-fun b!4352838 () Bool)

(assert (=> b!4352838 (= e!2708759 (forall!9096 (t!355946 (toList!2941 lt!1566071)) lambda!139751))))

(assert (= (and d!1286003 (not res!1788586)) b!4352837))

(assert (= (and b!4352837 res!1788587) b!4352838))

(declare-fun b_lambda!130747 () Bool)

(assert (=> (not b_lambda!130747) (not b!4352837)))

(declare-fun m!4964377 () Bool)

(assert (=> b!4352837 m!4964377))

(declare-fun m!4964379 () Bool)

(assert (=> b!4352838 m!4964379))

(assert (=> b!4352813 d!1286003))

(declare-fun d!1286007 () Bool)

(declare-fun e!2708762 () Bool)

(assert (=> d!1286007 e!2708762))

(declare-fun res!1788593 () Bool)

(assert (=> d!1286007 (=> (not res!1788593) (not e!2708762))))

(declare-fun lt!1566112 () ListLongMap!1591)

(assert (=> d!1286007 (= res!1788593 (contains!11086 lt!1566112 (_1!27438 lt!1566082)))))

(declare-fun lt!1566111 () List!49026)

(assert (=> d!1286007 (= lt!1566112 (ListLongMap!1592 lt!1566111))))

(declare-fun lt!1566114 () Unit!71224)

(declare-fun lt!1566113 () Unit!71224)

(assert (=> d!1286007 (= lt!1566114 lt!1566113)))

(declare-datatypes ((Option!10448 0))(
  ( (None!10447) (Some!10447 (v!43291 List!49025)) )
))
(declare-fun getValueByKey!434 (List!49026 (_ BitVec 64)) Option!10448)

(assert (=> d!1286007 (= (getValueByKey!434 lt!1566111 (_1!27438 lt!1566082)) (Some!10447 (_2!27438 lt!1566082)))))

(declare-fun lemmaContainsTupThenGetReturnValue!209 (List!49026 (_ BitVec 64) List!49025) Unit!71224)

(assert (=> d!1286007 (= lt!1566113 (lemmaContainsTupThenGetReturnValue!209 lt!1566111 (_1!27438 lt!1566082) (_2!27438 lt!1566082)))))

(declare-fun insertStrictlySorted!125 (List!49026 (_ BitVec 64) List!49025) List!49026)

(assert (=> d!1286007 (= lt!1566111 (insertStrictlySorted!125 (toList!2941 lm!1707) (_1!27438 lt!1566082) (_2!27438 lt!1566082)))))

(assert (=> d!1286007 (= (+!615 lm!1707 lt!1566082) lt!1566112)))

(declare-fun b!4352843 () Bool)

(declare-fun res!1788592 () Bool)

(assert (=> b!4352843 (=> (not res!1788592) (not e!2708762))))

(assert (=> b!4352843 (= res!1788592 (= (getValueByKey!434 (toList!2941 lt!1566112) (_1!27438 lt!1566082)) (Some!10447 (_2!27438 lt!1566082))))))

(declare-fun b!4352844 () Bool)

(assert (=> b!4352844 (= e!2708762 (contains!11088 (toList!2941 lt!1566112) lt!1566082))))

(assert (= (and d!1286007 res!1788593) b!4352843))

(assert (= (and b!4352843 res!1788592) b!4352844))

(declare-fun m!4964385 () Bool)

(assert (=> d!1286007 m!4964385))

(declare-fun m!4964387 () Bool)

(assert (=> d!1286007 m!4964387))

(declare-fun m!4964389 () Bool)

(assert (=> d!1286007 m!4964389))

(declare-fun m!4964391 () Bool)

(assert (=> d!1286007 m!4964391))

(declare-fun m!4964393 () Bool)

(assert (=> b!4352843 m!4964393))

(declare-fun m!4964395 () Bool)

(assert (=> b!4352844 m!4964395))

(assert (=> b!4352813 d!1286007))

(declare-fun d!1286011 () Bool)

(assert (=> d!1286011 (forall!9096 (toList!2941 (+!615 lm!1707 (tuple2!48289 hash!377 newBucket!200))) lambda!139751)))

(declare-fun lt!1566149 () Unit!71224)

(declare-fun choose!26814 (ListLongMap!1591 Int (_ BitVec 64) List!49025) Unit!71224)

(assert (=> d!1286011 (= lt!1566149 (choose!26814 lm!1707 lambda!139751 hash!377 newBucket!200))))

(declare-fun e!2708789 () Bool)

(assert (=> d!1286011 e!2708789))

(declare-fun res!1788608 () Bool)

(assert (=> d!1286011 (=> (not res!1788608) (not e!2708789))))

(assert (=> d!1286011 (= res!1788608 (forall!9096 (toList!2941 lm!1707) lambda!139751))))

(assert (=> d!1286011 (= (addValidProp!133 lm!1707 lambda!139751 hash!377 newBucket!200) lt!1566149)))

(declare-fun b!4352884 () Bool)

(assert (=> b!4352884 (= e!2708789 (dynLambda!20621 lambda!139751 (tuple2!48289 hash!377 newBucket!200)))))

(assert (= (and d!1286011 res!1788608) b!4352884))

(declare-fun b_lambda!130749 () Bool)

(assert (=> (not b_lambda!130749) (not b!4352884)))

(declare-fun m!4964437 () Bool)

(assert (=> d!1286011 m!4964437))

(declare-fun m!4964439 () Bool)

(assert (=> d!1286011 m!4964439))

(declare-fun m!4964441 () Bool)

(assert (=> d!1286011 m!4964441))

(assert (=> d!1286011 m!4964287))

(declare-fun m!4964443 () Bool)

(assert (=> b!4352884 m!4964443))

(assert (=> b!4352813 d!1286011))

(declare-fun d!1286017 () Bool)

(declare-fun res!1788609 () Bool)

(declare-fun e!2708790 () Bool)

(assert (=> d!1286017 (=> res!1788609 e!2708790)))

(assert (=> d!1286017 (= res!1788609 ((_ is Nil!48902) (toList!2941 lm!1707)))))

(assert (=> d!1286017 (= (forall!9096 (toList!2941 lm!1707) lambda!139751) e!2708790)))

(declare-fun b!4352885 () Bool)

(declare-fun e!2708791 () Bool)

(assert (=> b!4352885 (= e!2708790 e!2708791)))

(declare-fun res!1788610 () Bool)

(assert (=> b!4352885 (=> (not res!1788610) (not e!2708791))))

(assert (=> b!4352885 (= res!1788610 (dynLambda!20621 lambda!139751 (h!54443 (toList!2941 lm!1707))))))

(declare-fun b!4352886 () Bool)

(assert (=> b!4352886 (= e!2708791 (forall!9096 (t!355946 (toList!2941 lm!1707)) lambda!139751))))

(assert (= (and d!1286017 (not res!1788609)) b!4352885))

(assert (= (and b!4352885 res!1788610) b!4352886))

(declare-fun b_lambda!130751 () Bool)

(assert (=> (not b_lambda!130751) (not b!4352885)))

(declare-fun m!4964445 () Bool)

(assert (=> b!4352885 m!4964445))

(declare-fun m!4964447 () Bool)

(assert (=> b!4352886 m!4964447))

(assert (=> b!4352813 d!1286017))

(declare-fun d!1286019 () Bool)

(declare-fun res!1788615 () Bool)

(declare-fun e!2708796 () Bool)

(assert (=> d!1286019 (=> res!1788615 e!2708796)))

(assert (=> d!1286019 (= res!1788615 (and ((_ is Cons!48901) (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707))))) (= (_1!27437 (h!54442 (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707)))))) key!3918)))))

(assert (=> d!1286019 (= (containsKey!661 (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707)))) key!3918) e!2708796)))

(declare-fun b!4352891 () Bool)

(declare-fun e!2708797 () Bool)

(assert (=> b!4352891 (= e!2708796 e!2708797)))

(declare-fun res!1788616 () Bool)

(assert (=> b!4352891 (=> (not res!1788616) (not e!2708797))))

(assert (=> b!4352891 (= res!1788616 ((_ is Cons!48901) (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707))))))))

(declare-fun b!4352892 () Bool)

(assert (=> b!4352892 (= e!2708797 (containsKey!661 (t!355945 (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707))))) key!3918))))

(assert (= (and d!1286019 (not res!1788615)) b!4352891))

(assert (= (and b!4352891 res!1788616) b!4352892))

(declare-fun m!4964449 () Bool)

(assert (=> b!4352892 m!4964449))

(assert (=> b!4352812 d!1286019))

(declare-fun b!4352945 () Bool)

(declare-fun e!2708832 () Bool)

(declare-datatypes ((List!49028 0))(
  ( (Nil!48904) (Cons!48904 (h!54447 K!10265) (t!355948 List!49028)) )
))
(declare-fun contains!11091 (List!49028 K!10265) Bool)

(declare-fun keys!16508 (ListMap!2185) List!49028)

(assert (=> b!4352945 (= e!2708832 (not (contains!11091 (keys!16508 lt!1566081) key!3918)))))

(declare-fun b!4352946 () Bool)

(declare-fun e!2708833 () Unit!71224)

(declare-fun lt!1566191 () Unit!71224)

(assert (=> b!4352946 (= e!2708833 lt!1566191)))

(declare-fun lt!1566188 () Unit!71224)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!345 (List!49025 K!10265) Unit!71224)

(assert (=> b!4352946 (= lt!1566188 (lemmaContainsKeyImpliesGetValueByKeyDefined!345 (toList!2942 lt!1566081) key!3918))))

(declare-datatypes ((Option!10449 0))(
  ( (None!10448) (Some!10448 (v!43292 V!10511)) )
))
(declare-fun isDefined!7742 (Option!10449) Bool)

(declare-fun getValueByKey!435 (List!49025 K!10265) Option!10449)

(assert (=> b!4352946 (isDefined!7742 (getValueByKey!435 (toList!2942 lt!1566081) key!3918))))

(declare-fun lt!1566189 () Unit!71224)

(assert (=> b!4352946 (= lt!1566189 lt!1566188)))

(declare-fun lemmaInListThenGetKeysListContains!113 (List!49025 K!10265) Unit!71224)

(assert (=> b!4352946 (= lt!1566191 (lemmaInListThenGetKeysListContains!113 (toList!2942 lt!1566081) key!3918))))

(declare-fun call!302502 () Bool)

(assert (=> b!4352946 call!302502))

(declare-fun b!4352947 () Bool)

(declare-fun e!2708831 () Bool)

(declare-fun e!2708830 () Bool)

(assert (=> b!4352947 (= e!2708831 e!2708830)))

(declare-fun res!1788642 () Bool)

(assert (=> b!4352947 (=> (not res!1788642) (not e!2708830))))

(assert (=> b!4352947 (= res!1788642 (isDefined!7742 (getValueByKey!435 (toList!2942 lt!1566081) key!3918)))))

(declare-fun b!4352948 () Bool)

(declare-fun e!2708835 () Unit!71224)

(assert (=> b!4352948 (= e!2708833 e!2708835)))

(declare-fun c!739984 () Bool)

(assert (=> b!4352948 (= c!739984 call!302502)))

(declare-fun b!4352949 () Bool)

(declare-fun Unit!71232 () Unit!71224)

(assert (=> b!4352949 (= e!2708835 Unit!71232)))

(declare-fun b!4352950 () Bool)

(assert (=> b!4352950 (= e!2708830 (contains!11091 (keys!16508 lt!1566081) key!3918))))

(declare-fun d!1286021 () Bool)

(assert (=> d!1286021 e!2708831))

(declare-fun res!1788641 () Bool)

(assert (=> d!1286021 (=> res!1788641 e!2708831)))

(assert (=> d!1286021 (= res!1788641 e!2708832)))

(declare-fun res!1788643 () Bool)

(assert (=> d!1286021 (=> (not res!1788643) (not e!2708832))))

(declare-fun lt!1566193 () Bool)

(assert (=> d!1286021 (= res!1788643 (not lt!1566193))))

(declare-fun lt!1566190 () Bool)

(assert (=> d!1286021 (= lt!1566193 lt!1566190)))

(declare-fun lt!1566186 () Unit!71224)

(assert (=> d!1286021 (= lt!1566186 e!2708833)))

(declare-fun c!739986 () Bool)

(assert (=> d!1286021 (= c!739986 lt!1566190)))

(declare-fun containsKey!663 (List!49025 K!10265) Bool)

(assert (=> d!1286021 (= lt!1566190 (containsKey!663 (toList!2942 lt!1566081) key!3918))))

(assert (=> d!1286021 (= (contains!11087 lt!1566081 key!3918) lt!1566193)))

(declare-fun b!4352951 () Bool)

(declare-fun e!2708834 () List!49028)

(declare-fun getKeysList!116 (List!49025) List!49028)

(assert (=> b!4352951 (= e!2708834 (getKeysList!116 (toList!2942 lt!1566081)))))

(declare-fun b!4352952 () Bool)

(assert (=> b!4352952 false))

(declare-fun lt!1566187 () Unit!71224)

(declare-fun lt!1566192 () Unit!71224)

(assert (=> b!4352952 (= lt!1566187 lt!1566192)))

(assert (=> b!4352952 (containsKey!663 (toList!2942 lt!1566081) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!114 (List!49025 K!10265) Unit!71224)

(assert (=> b!4352952 (= lt!1566192 (lemmaInGetKeysListThenContainsKey!114 (toList!2942 lt!1566081) key!3918))))

(declare-fun Unit!71233 () Unit!71224)

(assert (=> b!4352952 (= e!2708835 Unit!71233)))

(declare-fun bm!302497 () Bool)

(assert (=> bm!302497 (= call!302502 (contains!11091 e!2708834 key!3918))))

(declare-fun c!739985 () Bool)

(assert (=> bm!302497 (= c!739985 c!739986)))

(declare-fun b!4352953 () Bool)

(assert (=> b!4352953 (= e!2708834 (keys!16508 lt!1566081))))

(assert (= (and d!1286021 c!739986) b!4352946))

(assert (= (and d!1286021 (not c!739986)) b!4352948))

(assert (= (and b!4352948 c!739984) b!4352952))

(assert (= (and b!4352948 (not c!739984)) b!4352949))

(assert (= (or b!4352946 b!4352948) bm!302497))

(assert (= (and bm!302497 c!739985) b!4352951))

(assert (= (and bm!302497 (not c!739985)) b!4352953))

(assert (= (and d!1286021 res!1788643) b!4352945))

(assert (= (and d!1286021 (not res!1788641)) b!4352947))

(assert (= (and b!4352947 res!1788642) b!4352950))

(declare-fun m!4964517 () Bool)

(assert (=> b!4352952 m!4964517))

(declare-fun m!4964521 () Bool)

(assert (=> b!4352952 m!4964521))

(declare-fun m!4964525 () Bool)

(assert (=> b!4352945 m!4964525))

(assert (=> b!4352945 m!4964525))

(declare-fun m!4964529 () Bool)

(assert (=> b!4352945 m!4964529))

(declare-fun m!4964533 () Bool)

(assert (=> b!4352951 m!4964533))

(declare-fun m!4964537 () Bool)

(assert (=> bm!302497 m!4964537))

(declare-fun m!4964539 () Bool)

(assert (=> b!4352946 m!4964539))

(declare-fun m!4964543 () Bool)

(assert (=> b!4352946 m!4964543))

(assert (=> b!4352946 m!4964543))

(declare-fun m!4964547 () Bool)

(assert (=> b!4352946 m!4964547))

(declare-fun m!4964551 () Bool)

(assert (=> b!4352946 m!4964551))

(assert (=> b!4352950 m!4964525))

(assert (=> b!4352950 m!4964525))

(assert (=> b!4352950 m!4964529))

(assert (=> b!4352953 m!4964525))

(assert (=> b!4352947 m!4964543))

(assert (=> b!4352947 m!4964543))

(assert (=> b!4352947 m!4964547))

(assert (=> d!1286021 m!4964517))

(assert (=> b!4352812 d!1286021))

(declare-fun bs!629754 () Bool)

(declare-fun d!1286053 () Bool)

(assert (= bs!629754 (and d!1286053 start!420836)))

(declare-fun lambda!139772 () Int)

(assert (=> bs!629754 (= lambda!139772 lambda!139751)))

(assert (=> d!1286053 (not (containsKey!661 (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707)))) key!3918))))

(declare-fun lt!1566210 () Unit!71224)

(declare-fun choose!26817 (ListLongMap!1591 K!10265 (_ BitVec 64) Hashable!4871) Unit!71224)

(assert (=> d!1286053 (= lt!1566210 (choose!26817 lm!1707 key!3918 (_1!27438 (h!54443 (toList!2941 lm!1707))) hashF!1247))))

(assert (=> d!1286053 (forall!9096 (toList!2941 lm!1707) lambda!139772)))

(assert (=> d!1286053 (= (lemmaNotSameHashThenCannotContainKey!26 lm!1707 key!3918 (_1!27438 (h!54443 (toList!2941 lm!1707))) hashF!1247) lt!1566210)))

(declare-fun bs!629755 () Bool)

(assert (= bs!629755 d!1286053))

(assert (=> bs!629755 m!4964317))

(assert (=> bs!629755 m!4964317))

(assert (=> bs!629755 m!4964319))

(declare-fun m!4964571 () Bool)

(assert (=> bs!629755 m!4964571))

(declare-fun m!4964573 () Bool)

(assert (=> bs!629755 m!4964573))

(assert (=> b!4352812 d!1286053))

(declare-fun bs!629761 () Bool)

(declare-fun d!1286061 () Bool)

(assert (= bs!629761 (and d!1286061 start!420836)))

(declare-fun lambda!139775 () Int)

(assert (=> bs!629761 (= lambda!139775 lambda!139751)))

(declare-fun bs!629762 () Bool)

(assert (= bs!629762 (and d!1286061 d!1286053)))

(assert (=> bs!629762 (= lambda!139775 lambda!139772)))

(assert (=> d!1286061 (eq!249 (extractMap!538 (toList!2941 (+!615 lt!1566077 (tuple2!48289 hash!377 newBucket!200)))) (+!616 (extractMap!538 (toList!2941 lt!1566077)) (tuple2!48287 key!3918 newValue!99)))))

(declare-fun lt!1566239 () Unit!71224)

(declare-fun choose!26818 (ListLongMap!1591 (_ BitVec 64) List!49025 K!10265 V!10511 Hashable!4871) Unit!71224)

(assert (=> d!1286061 (= lt!1566239 (choose!26818 lt!1566077 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1286061 (forall!9096 (toList!2941 lt!1566077) lambda!139775)))

(assert (=> d!1286061 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!83 lt!1566077 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1566239)))

(declare-fun bs!629763 () Bool)

(assert (= bs!629763 d!1286061))

(assert (=> bs!629763 m!4964315))

(declare-fun m!4964627 () Bool)

(assert (=> bs!629763 m!4964627))

(declare-fun m!4964629 () Bool)

(assert (=> bs!629763 m!4964629))

(declare-fun m!4964631 () Bool)

(assert (=> bs!629763 m!4964631))

(assert (=> bs!629763 m!4964315))

(declare-fun m!4964633 () Bool)

(assert (=> bs!629763 m!4964633))

(declare-fun m!4964635 () Bool)

(assert (=> bs!629763 m!4964635))

(assert (=> bs!629763 m!4964627))

(declare-fun m!4964637 () Bool)

(assert (=> bs!629763 m!4964637))

(assert (=> bs!629763 m!4964635))

(assert (=> b!4352812 d!1286061))

(declare-fun b!4353018 () Bool)

(declare-fun e!2708883 () Bool)

(assert (=> b!4353018 (= e!2708883 (not (contains!11091 (keys!16508 lt!1566072) key!3918)))))

(declare-fun b!4353019 () Bool)

(declare-fun e!2708884 () Unit!71224)

(declare-fun lt!1566245 () Unit!71224)

(assert (=> b!4353019 (= e!2708884 lt!1566245)))

(declare-fun lt!1566242 () Unit!71224)

(assert (=> b!4353019 (= lt!1566242 (lemmaContainsKeyImpliesGetValueByKeyDefined!345 (toList!2942 lt!1566072) key!3918))))

(assert (=> b!4353019 (isDefined!7742 (getValueByKey!435 (toList!2942 lt!1566072) key!3918))))

(declare-fun lt!1566243 () Unit!71224)

(assert (=> b!4353019 (= lt!1566243 lt!1566242)))

(assert (=> b!4353019 (= lt!1566245 (lemmaInListThenGetKeysListContains!113 (toList!2942 lt!1566072) key!3918))))

(declare-fun call!302504 () Bool)

(assert (=> b!4353019 call!302504))

(declare-fun b!4353020 () Bool)

(declare-fun e!2708882 () Bool)

(declare-fun e!2708881 () Bool)

(assert (=> b!4353020 (= e!2708882 e!2708881)))

(declare-fun res!1788672 () Bool)

(assert (=> b!4353020 (=> (not res!1788672) (not e!2708881))))

(assert (=> b!4353020 (= res!1788672 (isDefined!7742 (getValueByKey!435 (toList!2942 lt!1566072) key!3918)))))

(declare-fun b!4353021 () Bool)

(declare-fun e!2708886 () Unit!71224)

(assert (=> b!4353021 (= e!2708884 e!2708886)))

(declare-fun c!740000 () Bool)

(assert (=> b!4353021 (= c!740000 call!302504)))

(declare-fun b!4353022 () Bool)

(declare-fun Unit!71235 () Unit!71224)

(assert (=> b!4353022 (= e!2708886 Unit!71235)))

(declare-fun b!4353023 () Bool)

(assert (=> b!4353023 (= e!2708881 (contains!11091 (keys!16508 lt!1566072) key!3918))))

(declare-fun d!1286085 () Bool)

(assert (=> d!1286085 e!2708882))

(declare-fun res!1788671 () Bool)

(assert (=> d!1286085 (=> res!1788671 e!2708882)))

(assert (=> d!1286085 (= res!1788671 e!2708883)))

(declare-fun res!1788673 () Bool)

(assert (=> d!1286085 (=> (not res!1788673) (not e!2708883))))

(declare-fun lt!1566247 () Bool)

(assert (=> d!1286085 (= res!1788673 (not lt!1566247))))

(declare-fun lt!1566244 () Bool)

(assert (=> d!1286085 (= lt!1566247 lt!1566244)))

(declare-fun lt!1566240 () Unit!71224)

(assert (=> d!1286085 (= lt!1566240 e!2708884)))

(declare-fun c!740002 () Bool)

(assert (=> d!1286085 (= c!740002 lt!1566244)))

(assert (=> d!1286085 (= lt!1566244 (containsKey!663 (toList!2942 lt!1566072) key!3918))))

(assert (=> d!1286085 (= (contains!11087 lt!1566072 key!3918) lt!1566247)))

(declare-fun b!4353024 () Bool)

(declare-fun e!2708885 () List!49028)

(assert (=> b!4353024 (= e!2708885 (getKeysList!116 (toList!2942 lt!1566072)))))

(declare-fun b!4353025 () Bool)

(assert (=> b!4353025 false))

(declare-fun lt!1566241 () Unit!71224)

(declare-fun lt!1566246 () Unit!71224)

(assert (=> b!4353025 (= lt!1566241 lt!1566246)))

(assert (=> b!4353025 (containsKey!663 (toList!2942 lt!1566072) key!3918)))

(assert (=> b!4353025 (= lt!1566246 (lemmaInGetKeysListThenContainsKey!114 (toList!2942 lt!1566072) key!3918))))

(declare-fun Unit!71236 () Unit!71224)

(assert (=> b!4353025 (= e!2708886 Unit!71236)))

(declare-fun bm!302499 () Bool)

(assert (=> bm!302499 (= call!302504 (contains!11091 e!2708885 key!3918))))

(declare-fun c!740001 () Bool)

(assert (=> bm!302499 (= c!740001 c!740002)))

(declare-fun b!4353026 () Bool)

(assert (=> b!4353026 (= e!2708885 (keys!16508 lt!1566072))))

(assert (= (and d!1286085 c!740002) b!4353019))

(assert (= (and d!1286085 (not c!740002)) b!4353021))

(assert (= (and b!4353021 c!740000) b!4353025))

(assert (= (and b!4353021 (not c!740000)) b!4353022))

(assert (= (or b!4353019 b!4353021) bm!302499))

(assert (= (and bm!302499 c!740001) b!4353024))

(assert (= (and bm!302499 (not c!740001)) b!4353026))

(assert (= (and d!1286085 res!1788673) b!4353018))

(assert (= (and d!1286085 (not res!1788671)) b!4353020))

(assert (= (and b!4353020 res!1788672) b!4353023))

(declare-fun m!4964639 () Bool)

(assert (=> b!4353025 m!4964639))

(declare-fun m!4964641 () Bool)

(assert (=> b!4353025 m!4964641))

(declare-fun m!4964643 () Bool)

(assert (=> b!4353018 m!4964643))

(assert (=> b!4353018 m!4964643))

(declare-fun m!4964645 () Bool)

(assert (=> b!4353018 m!4964645))

(declare-fun m!4964647 () Bool)

(assert (=> b!4353024 m!4964647))

(declare-fun m!4964649 () Bool)

(assert (=> bm!302499 m!4964649))

(declare-fun m!4964651 () Bool)

(assert (=> b!4353019 m!4964651))

(declare-fun m!4964653 () Bool)

(assert (=> b!4353019 m!4964653))

(assert (=> b!4353019 m!4964653))

(declare-fun m!4964655 () Bool)

(assert (=> b!4353019 m!4964655))

(declare-fun m!4964657 () Bool)

(assert (=> b!4353019 m!4964657))

(assert (=> b!4353023 m!4964643))

(assert (=> b!4353023 m!4964643))

(assert (=> b!4353023 m!4964645))

(assert (=> b!4353026 m!4964643))

(assert (=> b!4353020 m!4964653))

(assert (=> b!4353020 m!4964653))

(assert (=> b!4353020 m!4964655))

(assert (=> d!1286085 m!4964639))

(assert (=> b!4352812 d!1286085))

(declare-fun d!1286087 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7697 (List!49025) (InoxSet tuple2!48286))

(assert (=> d!1286087 (= (eq!249 (extractMap!538 (toList!2941 (+!615 lt!1566077 lt!1566082))) (+!616 lt!1566081 lt!1566079)) (= (content!7697 (toList!2942 (extractMap!538 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (content!7697 (toList!2942 (+!616 lt!1566081 lt!1566079)))))))

(declare-fun bs!629764 () Bool)

(assert (= bs!629764 d!1286087))

(declare-fun m!4964659 () Bool)

(assert (=> bs!629764 m!4964659))

(declare-fun m!4964661 () Bool)

(assert (=> bs!629764 m!4964661))

(assert (=> b!4352812 d!1286087))

(declare-fun d!1286089 () Bool)

(declare-fun get!15880 (Option!10448) List!49025)

(assert (=> d!1286089 (= (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707)))) (get!15880 (getValueByKey!434 (toList!2941 lm!1707) (_1!27438 (h!54443 (toList!2941 lm!1707))))))))

(declare-fun bs!629765 () Bool)

(assert (= bs!629765 d!1286089))

(declare-fun m!4964663 () Bool)

(assert (=> bs!629765 m!4964663))

(assert (=> bs!629765 m!4964663))

(declare-fun m!4964665 () Bool)

(assert (=> bs!629765 m!4964665))

(assert (=> b!4352812 d!1286089))

(declare-fun d!1286091 () Bool)

(declare-fun e!2708889 () Bool)

(assert (=> d!1286091 e!2708889))

(declare-fun res!1788679 () Bool)

(assert (=> d!1286091 (=> (not res!1788679) (not e!2708889))))

(declare-fun lt!1566256 () ListMap!2185)

(assert (=> d!1286091 (= res!1788679 (contains!11087 lt!1566256 (_1!27437 lt!1566079)))))

(declare-fun lt!1566258 () List!49025)

(assert (=> d!1286091 (= lt!1566256 (ListMap!2186 lt!1566258))))

(declare-fun lt!1566259 () Unit!71224)

(declare-fun lt!1566257 () Unit!71224)

(assert (=> d!1286091 (= lt!1566259 lt!1566257)))

(assert (=> d!1286091 (= (getValueByKey!435 lt!1566258 (_1!27437 lt!1566079)) (Some!10448 (_2!27437 lt!1566079)))))

(declare-fun lemmaContainsTupThenGetReturnValue!210 (List!49025 K!10265 V!10511) Unit!71224)

(assert (=> d!1286091 (= lt!1566257 (lemmaContainsTupThenGetReturnValue!210 lt!1566258 (_1!27437 lt!1566079) (_2!27437 lt!1566079)))))

(declare-fun insertNoDuplicatedKeys!93 (List!49025 K!10265 V!10511) List!49025)

(assert (=> d!1286091 (= lt!1566258 (insertNoDuplicatedKeys!93 (toList!2942 lt!1566081) (_1!27437 lt!1566079) (_2!27437 lt!1566079)))))

(assert (=> d!1286091 (= (+!616 lt!1566081 lt!1566079) lt!1566256)))

(declare-fun b!4353031 () Bool)

(declare-fun res!1788678 () Bool)

(assert (=> b!4353031 (=> (not res!1788678) (not e!2708889))))

(assert (=> b!4353031 (= res!1788678 (= (getValueByKey!435 (toList!2942 lt!1566256) (_1!27437 lt!1566079)) (Some!10448 (_2!27437 lt!1566079))))))

(declare-fun b!4353032 () Bool)

(declare-fun contains!11092 (List!49025 tuple2!48286) Bool)

(assert (=> b!4353032 (= e!2708889 (contains!11092 (toList!2942 lt!1566256) lt!1566079))))

(assert (= (and d!1286091 res!1788679) b!4353031))

(assert (= (and b!4353031 res!1788678) b!4353032))

(declare-fun m!4964667 () Bool)

(assert (=> d!1286091 m!4964667))

(declare-fun m!4964669 () Bool)

(assert (=> d!1286091 m!4964669))

(declare-fun m!4964671 () Bool)

(assert (=> d!1286091 m!4964671))

(declare-fun m!4964673 () Bool)

(assert (=> d!1286091 m!4964673))

(declare-fun m!4964675 () Bool)

(assert (=> b!4353031 m!4964675))

(declare-fun m!4964677 () Bool)

(assert (=> b!4353032 m!4964677))

(assert (=> b!4352812 d!1286091))

(declare-fun d!1286093 () Bool)

(declare-fun tail!6979 (List!49026) List!49026)

(assert (=> d!1286093 (= (tail!6977 lm!1707) (ListLongMap!1592 (tail!6979 (toList!2941 lm!1707))))))

(declare-fun bs!629766 () Bool)

(assert (= bs!629766 d!1286093))

(declare-fun m!4964679 () Bool)

(assert (=> bs!629766 m!4964679))

(assert (=> b!4352812 d!1286093))

(declare-fun bs!629767 () Bool)

(declare-fun d!1286095 () Bool)

(assert (= bs!629767 (and d!1286095 start!420836)))

(declare-fun lambda!139778 () Int)

(assert (=> bs!629767 (= lambda!139778 lambda!139751)))

(declare-fun bs!629768 () Bool)

(assert (= bs!629768 (and d!1286095 d!1286053)))

(assert (=> bs!629768 (= lambda!139778 lambda!139772)))

(declare-fun bs!629769 () Bool)

(assert (= bs!629769 (and d!1286095 d!1286061)))

(assert (=> bs!629769 (= lambda!139778 lambda!139775)))

(declare-fun lt!1566262 () ListMap!2185)

(declare-fun invariantList!668 (List!49025) Bool)

(assert (=> d!1286095 (invariantList!668 (toList!2942 lt!1566262))))

(declare-fun e!2708892 () ListMap!2185)

(assert (=> d!1286095 (= lt!1566262 e!2708892)))

(declare-fun c!740005 () Bool)

(assert (=> d!1286095 (= c!740005 ((_ is Cons!48902) (t!355946 (toList!2941 lm!1707))))))

(assert (=> d!1286095 (forall!9096 (t!355946 (toList!2941 lm!1707)) lambda!139778)))

(assert (=> d!1286095 (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) lt!1566262)))

(declare-fun b!4353037 () Bool)

(declare-fun addToMapMapFromBucket!175 (List!49025 ListMap!2185) ListMap!2185)

(assert (=> b!4353037 (= e!2708892 (addToMapMapFromBucket!175 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707))))))))

(declare-fun b!4353038 () Bool)

(assert (=> b!4353038 (= e!2708892 (ListMap!2186 Nil!48901))))

(assert (= (and d!1286095 c!740005) b!4353037))

(assert (= (and d!1286095 (not c!740005)) b!4353038))

(declare-fun m!4964681 () Bool)

(assert (=> d!1286095 m!4964681))

(declare-fun m!4964683 () Bool)

(assert (=> d!1286095 m!4964683))

(declare-fun m!4964685 () Bool)

(assert (=> b!4353037 m!4964685))

(assert (=> b!4353037 m!4964685))

(declare-fun m!4964687 () Bool)

(assert (=> b!4353037 m!4964687))

(assert (=> b!4352812 d!1286095))

(declare-fun d!1286097 () Bool)

(declare-fun isEmpty!28187 (List!49026) Bool)

(assert (=> d!1286097 (= (isEmpty!28185 lm!1707) (isEmpty!28187 (toList!2941 lm!1707)))))

(declare-fun bs!629770 () Bool)

(assert (= bs!629770 d!1286097))

(declare-fun m!4964689 () Bool)

(assert (=> bs!629770 m!4964689))

(assert (=> b!4352812 d!1286097))

(declare-fun d!1286099 () Bool)

(declare-fun e!2708893 () Bool)

(assert (=> d!1286099 e!2708893))

(declare-fun res!1788681 () Bool)

(assert (=> d!1286099 (=> (not res!1788681) (not e!2708893))))

(declare-fun lt!1566264 () ListLongMap!1591)

(assert (=> d!1286099 (= res!1788681 (contains!11086 lt!1566264 (_1!27438 lt!1566082)))))

(declare-fun lt!1566263 () List!49026)

(assert (=> d!1286099 (= lt!1566264 (ListLongMap!1592 lt!1566263))))

(declare-fun lt!1566266 () Unit!71224)

(declare-fun lt!1566265 () Unit!71224)

(assert (=> d!1286099 (= lt!1566266 lt!1566265)))

(assert (=> d!1286099 (= (getValueByKey!434 lt!1566263 (_1!27438 lt!1566082)) (Some!10447 (_2!27438 lt!1566082)))))

(assert (=> d!1286099 (= lt!1566265 (lemmaContainsTupThenGetReturnValue!209 lt!1566263 (_1!27438 lt!1566082) (_2!27438 lt!1566082)))))

(assert (=> d!1286099 (= lt!1566263 (insertStrictlySorted!125 (toList!2941 lt!1566077) (_1!27438 lt!1566082) (_2!27438 lt!1566082)))))

(assert (=> d!1286099 (= (+!615 lt!1566077 lt!1566082) lt!1566264)))

(declare-fun b!4353039 () Bool)

(declare-fun res!1788680 () Bool)

(assert (=> b!4353039 (=> (not res!1788680) (not e!2708893))))

(assert (=> b!4353039 (= res!1788680 (= (getValueByKey!434 (toList!2941 lt!1566264) (_1!27438 lt!1566082)) (Some!10447 (_2!27438 lt!1566082))))))

(declare-fun b!4353040 () Bool)

(assert (=> b!4353040 (= e!2708893 (contains!11088 (toList!2941 lt!1566264) lt!1566082))))

(assert (= (and d!1286099 res!1788681) b!4353039))

(assert (= (and b!4353039 res!1788680) b!4353040))

(declare-fun m!4964691 () Bool)

(assert (=> d!1286099 m!4964691))

(declare-fun m!4964693 () Bool)

(assert (=> d!1286099 m!4964693))

(declare-fun m!4964695 () Bool)

(assert (=> d!1286099 m!4964695))

(declare-fun m!4964697 () Bool)

(assert (=> d!1286099 m!4964697))

(declare-fun m!4964699 () Bool)

(assert (=> b!4353039 m!4964699))

(declare-fun m!4964701 () Bool)

(assert (=> b!4353040 m!4964701))

(assert (=> b!4352812 d!1286099))

(declare-fun d!1286101 () Bool)

(assert (=> d!1286101 (contains!11087 lt!1566072 key!3918)))

(declare-fun lt!1566269 () Unit!71224)

(declare-fun choose!26820 (List!49025 K!10265 V!10511 ListMap!2185) Unit!71224)

(assert (=> d!1286101 (= lt!1566269 (choose!26820 (_2!27438 (h!54443 (toList!2941 lm!1707))) key!3918 newValue!99 lt!1566072))))

(assert (=> d!1286101 (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 lm!1707))))))

(assert (=> d!1286101 (= (lemmaAddToMapContainsAndNotInListThenInAcc!22 (_2!27438 (h!54443 (toList!2941 lm!1707))) key!3918 newValue!99 lt!1566072) lt!1566269)))

(declare-fun bs!629771 () Bool)

(assert (= bs!629771 d!1286101))

(assert (=> bs!629771 m!4964309))

(declare-fun m!4964703 () Bool)

(assert (=> bs!629771 m!4964703))

(declare-fun m!4964705 () Bool)

(assert (=> bs!629771 m!4964705))

(assert (=> b!4352812 d!1286101))

(declare-fun bs!629772 () Bool)

(declare-fun d!1286103 () Bool)

(assert (= bs!629772 (and d!1286103 start!420836)))

(declare-fun lambda!139779 () Int)

(assert (=> bs!629772 (= lambda!139779 lambda!139751)))

(declare-fun bs!629773 () Bool)

(assert (= bs!629773 (and d!1286103 d!1286053)))

(assert (=> bs!629773 (= lambda!139779 lambda!139772)))

(declare-fun bs!629774 () Bool)

(assert (= bs!629774 (and d!1286103 d!1286061)))

(assert (=> bs!629774 (= lambda!139779 lambda!139775)))

(declare-fun bs!629775 () Bool)

(assert (= bs!629775 (and d!1286103 d!1286095)))

(assert (=> bs!629775 (= lambda!139779 lambda!139778)))

(declare-fun lt!1566270 () ListMap!2185)

(assert (=> d!1286103 (invariantList!668 (toList!2942 lt!1566270))))

(declare-fun e!2708894 () ListMap!2185)

(assert (=> d!1286103 (= lt!1566270 e!2708894)))

(declare-fun c!740006 () Bool)

(assert (=> d!1286103 (= c!740006 ((_ is Cons!48902) (toList!2941 lt!1566077)))))

(assert (=> d!1286103 (forall!9096 (toList!2941 lt!1566077) lambda!139779)))

(assert (=> d!1286103 (= (extractMap!538 (toList!2941 lt!1566077)) lt!1566270)))

(declare-fun b!4353041 () Bool)

(assert (=> b!4353041 (= e!2708894 (addToMapMapFromBucket!175 (_2!27438 (h!54443 (toList!2941 lt!1566077))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))))))

(declare-fun b!4353042 () Bool)

(assert (=> b!4353042 (= e!2708894 (ListMap!2186 Nil!48901))))

(assert (= (and d!1286103 c!740006) b!4353041))

(assert (= (and d!1286103 (not c!740006)) b!4353042))

(declare-fun m!4964707 () Bool)

(assert (=> d!1286103 m!4964707))

(declare-fun m!4964709 () Bool)

(assert (=> d!1286103 m!4964709))

(declare-fun m!4964711 () Bool)

(assert (=> b!4353041 m!4964711))

(assert (=> b!4353041 m!4964711))

(declare-fun m!4964713 () Bool)

(assert (=> b!4353041 m!4964713))

(assert (=> b!4352812 d!1286103))

(declare-fun bs!629776 () Bool)

(declare-fun d!1286105 () Bool)

(assert (= bs!629776 (and d!1286105 d!1286103)))

(declare-fun lambda!139780 () Int)

(assert (=> bs!629776 (= lambda!139780 lambda!139779)))

(declare-fun bs!629777 () Bool)

(assert (= bs!629777 (and d!1286105 d!1286095)))

(assert (=> bs!629777 (= lambda!139780 lambda!139778)))

(declare-fun bs!629778 () Bool)

(assert (= bs!629778 (and d!1286105 d!1286053)))

(assert (=> bs!629778 (= lambda!139780 lambda!139772)))

(declare-fun bs!629779 () Bool)

(assert (= bs!629779 (and d!1286105 d!1286061)))

(assert (=> bs!629779 (= lambda!139780 lambda!139775)))

(declare-fun bs!629780 () Bool)

(assert (= bs!629780 (and d!1286105 start!420836)))

(assert (=> bs!629780 (= lambda!139780 lambda!139751)))

(declare-fun lt!1566271 () ListMap!2185)

(assert (=> d!1286105 (invariantList!668 (toList!2942 lt!1566271))))

(declare-fun e!2708895 () ListMap!2185)

(assert (=> d!1286105 (= lt!1566271 e!2708895)))

(declare-fun c!740007 () Bool)

(assert (=> d!1286105 (= c!740007 ((_ is Cons!48902) (toList!2941 (+!615 lt!1566077 lt!1566082))))))

(assert (=> d!1286105 (forall!9096 (toList!2941 (+!615 lt!1566077 lt!1566082)) lambda!139780)))

(assert (=> d!1286105 (= (extractMap!538 (toList!2941 (+!615 lt!1566077 lt!1566082))) lt!1566271)))

(declare-fun b!4353043 () Bool)

(assert (=> b!4353043 (= e!2708895 (addToMapMapFromBucket!175 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082)))) (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))))))

(declare-fun b!4353044 () Bool)

(assert (=> b!4353044 (= e!2708895 (ListMap!2186 Nil!48901))))

(assert (= (and d!1286105 c!740007) b!4353043))

(assert (= (and d!1286105 (not c!740007)) b!4353044))

(declare-fun m!4964715 () Bool)

(assert (=> d!1286105 m!4964715))

(declare-fun m!4964717 () Bool)

(assert (=> d!1286105 m!4964717))

(declare-fun m!4964719 () Bool)

(assert (=> b!4353043 m!4964719))

(assert (=> b!4353043 m!4964719))

(declare-fun m!4964721 () Bool)

(assert (=> b!4353043 m!4964721))

(assert (=> b!4352812 d!1286105))

(assert (=> start!420836 d!1286017))

(declare-fun d!1286107 () Bool)

(declare-fun isStrictlySorted!94 (List!49026) Bool)

(assert (=> d!1286107 (= (inv!64451 lm!1707) (isStrictlySorted!94 (toList!2941 lm!1707)))))

(declare-fun bs!629781 () Bool)

(assert (= bs!629781 d!1286107))

(declare-fun m!4964723 () Bool)

(assert (=> bs!629781 m!4964723))

(assert (=> start!420836 d!1286107))

(declare-fun d!1286109 () Bool)

(declare-fun res!1788686 () Bool)

(declare-fun e!2708900 () Bool)

(assert (=> d!1286109 (=> res!1788686 e!2708900)))

(assert (=> d!1286109 (= res!1788686 (not ((_ is Cons!48901) newBucket!200)))))

(assert (=> d!1286109 (= (noDuplicateKeys!479 newBucket!200) e!2708900)))

(declare-fun b!4353049 () Bool)

(declare-fun e!2708901 () Bool)

(assert (=> b!4353049 (= e!2708900 e!2708901)))

(declare-fun res!1788687 () Bool)

(assert (=> b!4353049 (=> (not res!1788687) (not e!2708901))))

(assert (=> b!4353049 (= res!1788687 (not (containsKey!661 (t!355945 newBucket!200) (_1!27437 (h!54442 newBucket!200)))))))

(declare-fun b!4353050 () Bool)

(assert (=> b!4353050 (= e!2708901 (noDuplicateKeys!479 (t!355945 newBucket!200)))))

(assert (= (and d!1286109 (not res!1788686)) b!4353049))

(assert (= (and b!4353049 res!1788687) b!4353050))

(declare-fun m!4964725 () Bool)

(assert (=> b!4353049 m!4964725))

(declare-fun m!4964727 () Bool)

(assert (=> b!4353050 m!4964727))

(assert (=> b!4352811 d!1286109))

(declare-fun d!1286111 () Bool)

(declare-fun head!9030 (List!49026) tuple2!48288)

(assert (=> d!1286111 (= (head!9028 lm!1707) (head!9030 (toList!2941 lm!1707)))))

(declare-fun bs!629782 () Bool)

(assert (= bs!629782 d!1286111))

(declare-fun m!4964729 () Bool)

(assert (=> bs!629782 m!4964729))

(assert (=> b!4352816 d!1286111))

(declare-fun b!4353051 () Bool)

(declare-fun e!2708904 () Bool)

(assert (=> b!4353051 (= e!2708904 (not (contains!11091 (keys!16508 (extractMap!538 (toList!2941 lm!1707))) key!3918)))))

(declare-fun b!4353052 () Bool)

(declare-fun e!2708905 () Unit!71224)

(declare-fun lt!1566277 () Unit!71224)

(assert (=> b!4353052 (= e!2708905 lt!1566277)))

(declare-fun lt!1566274 () Unit!71224)

(assert (=> b!4353052 (= lt!1566274 (lemmaContainsKeyImpliesGetValueByKeyDefined!345 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918))))

(assert (=> b!4353052 (isDefined!7742 (getValueByKey!435 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918))))

(declare-fun lt!1566275 () Unit!71224)

(assert (=> b!4353052 (= lt!1566275 lt!1566274)))

(assert (=> b!4353052 (= lt!1566277 (lemmaInListThenGetKeysListContains!113 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918))))

(declare-fun call!302505 () Bool)

(assert (=> b!4353052 call!302505))

(declare-fun b!4353053 () Bool)

(declare-fun e!2708903 () Bool)

(declare-fun e!2708902 () Bool)

(assert (=> b!4353053 (= e!2708903 e!2708902)))

(declare-fun res!1788689 () Bool)

(assert (=> b!4353053 (=> (not res!1788689) (not e!2708902))))

(assert (=> b!4353053 (= res!1788689 (isDefined!7742 (getValueByKey!435 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918)))))

(declare-fun b!4353054 () Bool)

(declare-fun e!2708907 () Unit!71224)

(assert (=> b!4353054 (= e!2708905 e!2708907)))

(declare-fun c!740008 () Bool)

(assert (=> b!4353054 (= c!740008 call!302505)))

(declare-fun b!4353055 () Bool)

(declare-fun Unit!71237 () Unit!71224)

(assert (=> b!4353055 (= e!2708907 Unit!71237)))

(declare-fun b!4353056 () Bool)

(assert (=> b!4353056 (= e!2708902 (contains!11091 (keys!16508 (extractMap!538 (toList!2941 lm!1707))) key!3918))))

(declare-fun d!1286113 () Bool)

(assert (=> d!1286113 e!2708903))

(declare-fun res!1788688 () Bool)

(assert (=> d!1286113 (=> res!1788688 e!2708903)))

(assert (=> d!1286113 (= res!1788688 e!2708904)))

(declare-fun res!1788690 () Bool)

(assert (=> d!1286113 (=> (not res!1788690) (not e!2708904))))

(declare-fun lt!1566279 () Bool)

(assert (=> d!1286113 (= res!1788690 (not lt!1566279))))

(declare-fun lt!1566276 () Bool)

(assert (=> d!1286113 (= lt!1566279 lt!1566276)))

(declare-fun lt!1566272 () Unit!71224)

(assert (=> d!1286113 (= lt!1566272 e!2708905)))

(declare-fun c!740010 () Bool)

(assert (=> d!1286113 (= c!740010 lt!1566276)))

(assert (=> d!1286113 (= lt!1566276 (containsKey!663 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918))))

(assert (=> d!1286113 (= (contains!11087 (extractMap!538 (toList!2941 lm!1707)) key!3918) lt!1566279)))

(declare-fun b!4353057 () Bool)

(declare-fun e!2708906 () List!49028)

(assert (=> b!4353057 (= e!2708906 (getKeysList!116 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))))

(declare-fun b!4353058 () Bool)

(assert (=> b!4353058 false))

(declare-fun lt!1566273 () Unit!71224)

(declare-fun lt!1566278 () Unit!71224)

(assert (=> b!4353058 (= lt!1566273 lt!1566278)))

(assert (=> b!4353058 (containsKey!663 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918)))

(assert (=> b!4353058 (= lt!1566278 (lemmaInGetKeysListThenContainsKey!114 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918))))

(declare-fun Unit!71238 () Unit!71224)

(assert (=> b!4353058 (= e!2708907 Unit!71238)))

(declare-fun bm!302500 () Bool)

(assert (=> bm!302500 (= call!302505 (contains!11091 e!2708906 key!3918))))

(declare-fun c!740009 () Bool)

(assert (=> bm!302500 (= c!740009 c!740010)))

(declare-fun b!4353059 () Bool)

(assert (=> b!4353059 (= e!2708906 (keys!16508 (extractMap!538 (toList!2941 lm!1707))))))

(assert (= (and d!1286113 c!740010) b!4353052))

(assert (= (and d!1286113 (not c!740010)) b!4353054))

(assert (= (and b!4353054 c!740008) b!4353058))

(assert (= (and b!4353054 (not c!740008)) b!4353055))

(assert (= (or b!4353052 b!4353054) bm!302500))

(assert (= (and bm!302500 c!740009) b!4353057))

(assert (= (and bm!302500 (not c!740009)) b!4353059))

(assert (= (and d!1286113 res!1788690) b!4353051))

(assert (= (and d!1286113 (not res!1788688)) b!4353053))

(assert (= (and b!4353053 res!1788689) b!4353056))

(declare-fun m!4964731 () Bool)

(assert (=> b!4353058 m!4964731))

(declare-fun m!4964733 () Bool)

(assert (=> b!4353058 m!4964733))

(assert (=> b!4353051 m!4964323))

(declare-fun m!4964735 () Bool)

(assert (=> b!4353051 m!4964735))

(assert (=> b!4353051 m!4964735))

(declare-fun m!4964737 () Bool)

(assert (=> b!4353051 m!4964737))

(declare-fun m!4964739 () Bool)

(assert (=> b!4353057 m!4964739))

(declare-fun m!4964741 () Bool)

(assert (=> bm!302500 m!4964741))

(declare-fun m!4964743 () Bool)

(assert (=> b!4353052 m!4964743))

(declare-fun m!4964745 () Bool)

(assert (=> b!4353052 m!4964745))

(assert (=> b!4353052 m!4964745))

(declare-fun m!4964747 () Bool)

(assert (=> b!4353052 m!4964747))

(declare-fun m!4964749 () Bool)

(assert (=> b!4353052 m!4964749))

(assert (=> b!4353056 m!4964323))

(assert (=> b!4353056 m!4964735))

(assert (=> b!4353056 m!4964735))

(assert (=> b!4353056 m!4964737))

(assert (=> b!4353059 m!4964323))

(assert (=> b!4353059 m!4964735))

(assert (=> b!4353053 m!4964745))

(assert (=> b!4353053 m!4964745))

(assert (=> b!4353053 m!4964747))

(assert (=> d!1286113 m!4964731))

(assert (=> b!4352815 d!1286113))

(declare-fun bs!629783 () Bool)

(declare-fun d!1286115 () Bool)

(assert (= bs!629783 (and d!1286115 d!1286103)))

(declare-fun lambda!139781 () Int)

(assert (=> bs!629783 (= lambda!139781 lambda!139779)))

(declare-fun bs!629784 () Bool)

(assert (= bs!629784 (and d!1286115 d!1286095)))

(assert (=> bs!629784 (= lambda!139781 lambda!139778)))

(declare-fun bs!629785 () Bool)

(assert (= bs!629785 (and d!1286115 d!1286105)))

(assert (=> bs!629785 (= lambda!139781 lambda!139780)))

(declare-fun bs!629786 () Bool)

(assert (= bs!629786 (and d!1286115 d!1286053)))

(assert (=> bs!629786 (= lambda!139781 lambda!139772)))

(declare-fun bs!629787 () Bool)

(assert (= bs!629787 (and d!1286115 d!1286061)))

(assert (=> bs!629787 (= lambda!139781 lambda!139775)))

(declare-fun bs!629788 () Bool)

(assert (= bs!629788 (and d!1286115 start!420836)))

(assert (=> bs!629788 (= lambda!139781 lambda!139751)))

(declare-fun lt!1566280 () ListMap!2185)

(assert (=> d!1286115 (invariantList!668 (toList!2942 lt!1566280))))

(declare-fun e!2708908 () ListMap!2185)

(assert (=> d!1286115 (= lt!1566280 e!2708908)))

(declare-fun c!740011 () Bool)

(assert (=> d!1286115 (= c!740011 ((_ is Cons!48902) (toList!2941 lm!1707)))))

(assert (=> d!1286115 (forall!9096 (toList!2941 lm!1707) lambda!139781)))

(assert (=> d!1286115 (= (extractMap!538 (toList!2941 lm!1707)) lt!1566280)))

(declare-fun b!4353060 () Bool)

(assert (=> b!4353060 (= e!2708908 (addToMapMapFromBucket!175 (_2!27438 (h!54443 (toList!2941 lm!1707))) (extractMap!538 (t!355946 (toList!2941 lm!1707)))))))

(declare-fun b!4353061 () Bool)

(assert (=> b!4353061 (= e!2708908 (ListMap!2186 Nil!48901))))

(assert (= (and d!1286115 c!740011) b!4353060))

(assert (= (and d!1286115 (not c!740011)) b!4353061))

(declare-fun m!4964751 () Bool)

(assert (=> d!1286115 m!4964751))

(declare-fun m!4964753 () Bool)

(assert (=> d!1286115 m!4964753))

(assert (=> b!4353060 m!4964299))

(assert (=> b!4353060 m!4964299))

(declare-fun m!4964755 () Bool)

(assert (=> b!4353060 m!4964755))

(assert (=> b!4352815 d!1286115))

(declare-fun d!1286117 () Bool)

(declare-fun res!1788691 () Bool)

(declare-fun e!2708909 () Bool)

(assert (=> d!1286117 (=> res!1788691 e!2708909)))

(assert (=> d!1286117 (= res!1788691 (and ((_ is Cons!48901) (_2!27438 (h!54443 (toList!2941 lm!1707)))) (= (_1!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 lm!1707))))) key!3918)))))

(assert (=> d!1286117 (= (containsKey!661 (_2!27438 (h!54443 (toList!2941 lm!1707))) key!3918) e!2708909)))

(declare-fun b!4353062 () Bool)

(declare-fun e!2708910 () Bool)

(assert (=> b!4353062 (= e!2708909 e!2708910)))

(declare-fun res!1788692 () Bool)

(assert (=> b!4353062 (=> (not res!1788692) (not e!2708910))))

(assert (=> b!4353062 (= res!1788692 ((_ is Cons!48901) (_2!27438 (h!54443 (toList!2941 lm!1707)))))))

(declare-fun b!4353063 () Bool)

(assert (=> b!4353063 (= e!2708910 (containsKey!661 (t!355945 (_2!27438 (h!54443 (toList!2941 lm!1707)))) key!3918))))

(assert (= (and d!1286117 (not res!1788691)) b!4353062))

(assert (= (and b!4353062 res!1788692) b!4353063))

(declare-fun m!4964757 () Bool)

(assert (=> b!4353063 m!4964757))

(assert (=> b!4352814 d!1286117))

(assert (=> b!4352808 d!1286003))

(declare-fun bs!629789 () Bool)

(declare-fun d!1286119 () Bool)

(assert (= bs!629789 (and d!1286119 d!1286103)))

(declare-fun lambda!139784 () Int)

(assert (=> bs!629789 (not (= lambda!139784 lambda!139779))))

(declare-fun bs!629790 () Bool)

(assert (= bs!629790 (and d!1286119 d!1286095)))

(assert (=> bs!629790 (not (= lambda!139784 lambda!139778))))

(declare-fun bs!629791 () Bool)

(assert (= bs!629791 (and d!1286119 d!1286105)))

(assert (=> bs!629791 (not (= lambda!139784 lambda!139780))))

(declare-fun bs!629792 () Bool)

(assert (= bs!629792 (and d!1286119 d!1286115)))

(assert (=> bs!629792 (not (= lambda!139784 lambda!139781))))

(declare-fun bs!629793 () Bool)

(assert (= bs!629793 (and d!1286119 d!1286053)))

(assert (=> bs!629793 (not (= lambda!139784 lambda!139772))))

(declare-fun bs!629794 () Bool)

(assert (= bs!629794 (and d!1286119 d!1286061)))

(assert (=> bs!629794 (not (= lambda!139784 lambda!139775))))

(declare-fun bs!629795 () Bool)

(assert (= bs!629795 (and d!1286119 start!420836)))

(assert (=> bs!629795 (not (= lambda!139784 lambda!139751))))

(assert (=> d!1286119 true))

(assert (=> d!1286119 (= (allKeysSameHashInMap!583 lm!1707 hashF!1247) (forall!9096 (toList!2941 lm!1707) lambda!139784))))

(declare-fun bs!629796 () Bool)

(assert (= bs!629796 d!1286119))

(declare-fun m!4964759 () Bool)

(assert (=> bs!629796 m!4964759))

(assert (=> b!4352818 d!1286119))

(declare-fun d!1286121 () Bool)

(declare-fun hash!1515 (Hashable!4871 K!10265) (_ BitVec 64))

(assert (=> d!1286121 (= (hash!1509 hashF!1247 key!3918) (hash!1515 hashF!1247 key!3918))))

(declare-fun bs!629797 () Bool)

(assert (= bs!629797 d!1286121))

(declare-fun m!4964761 () Bool)

(assert (=> bs!629797 m!4964761))

(assert (=> b!4352807 d!1286121))

(declare-fun d!1286123 () Bool)

(assert (=> d!1286123 true))

(assert (=> d!1286123 true))

(declare-fun lambda!139787 () Int)

(declare-fun forall!9098 (List!49025 Int) Bool)

(assert (=> d!1286123 (= (allKeysSameHash!437 newBucket!200 hash!377 hashF!1247) (forall!9098 newBucket!200 lambda!139787))))

(declare-fun bs!629798 () Bool)

(assert (= bs!629798 d!1286123))

(declare-fun m!4964763 () Bool)

(assert (=> bs!629798 m!4964763))

(assert (=> b!4352810 d!1286123))

(declare-fun d!1286125 () Bool)

(declare-fun e!2708916 () Bool)

(assert (=> d!1286125 e!2708916))

(declare-fun res!1788695 () Bool)

(assert (=> d!1286125 (=> res!1788695 e!2708916)))

(declare-fun lt!1566290 () Bool)

(assert (=> d!1286125 (= res!1788695 (not lt!1566290))))

(declare-fun lt!1566289 () Bool)

(assert (=> d!1286125 (= lt!1566290 lt!1566289)))

(declare-fun lt!1566291 () Unit!71224)

(declare-fun e!2708915 () Unit!71224)

(assert (=> d!1286125 (= lt!1566291 e!2708915)))

(declare-fun c!740014 () Bool)

(assert (=> d!1286125 (= c!740014 lt!1566289)))

(declare-fun containsKey!665 (List!49026 (_ BitVec 64)) Bool)

(assert (=> d!1286125 (= lt!1566289 (containsKey!665 (toList!2941 lm!1707) hash!377))))

(assert (=> d!1286125 (= (contains!11086 lm!1707 hash!377) lt!1566290)))

(declare-fun b!4353076 () Bool)

(declare-fun lt!1566292 () Unit!71224)

(assert (=> b!4353076 (= e!2708915 lt!1566292)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!347 (List!49026 (_ BitVec 64)) Unit!71224)

(assert (=> b!4353076 (= lt!1566292 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!2941 lm!1707) hash!377))))

(declare-fun isDefined!7744 (Option!10448) Bool)

(assert (=> b!4353076 (isDefined!7744 (getValueByKey!434 (toList!2941 lm!1707) hash!377))))

(declare-fun b!4353077 () Bool)

(declare-fun Unit!71239 () Unit!71224)

(assert (=> b!4353077 (= e!2708915 Unit!71239)))

(declare-fun b!4353078 () Bool)

(assert (=> b!4353078 (= e!2708916 (isDefined!7744 (getValueByKey!434 (toList!2941 lm!1707) hash!377)))))

(assert (= (and d!1286125 c!740014) b!4353076))

(assert (= (and d!1286125 (not c!740014)) b!4353077))

(assert (= (and d!1286125 (not res!1788695)) b!4353078))

(declare-fun m!4964765 () Bool)

(assert (=> d!1286125 m!4964765))

(declare-fun m!4964767 () Bool)

(assert (=> b!4353076 m!4964767))

(declare-fun m!4964769 () Bool)

(assert (=> b!4353076 m!4964769))

(assert (=> b!4353076 m!4964769))

(declare-fun m!4964771 () Bool)

(assert (=> b!4353076 m!4964771))

(assert (=> b!4353078 m!4964769))

(assert (=> b!4353078 m!4964769))

(assert (=> b!4353078 m!4964771))

(assert (=> b!4352809 d!1286125))

(declare-fun d!1286127 () Bool)

(assert (=> d!1286127 (= (apply!11331 lm!1707 hash!377) (get!15880 (getValueByKey!434 (toList!2941 lm!1707) hash!377)))))

(declare-fun bs!629799 () Bool)

(assert (= bs!629799 d!1286127))

(assert (=> bs!629799 m!4964769))

(assert (=> bs!629799 m!4964769))

(declare-fun m!4964773 () Bool)

(assert (=> bs!629799 m!4964773))

(assert (=> b!4352819 d!1286127))

(declare-fun b!4353088 () Bool)

(declare-fun e!2708921 () List!49025)

(declare-fun e!2708922 () List!49025)

(assert (=> b!4353088 (= e!2708921 e!2708922)))

(declare-fun c!740020 () Bool)

(assert (=> b!4353088 (= c!740020 ((_ is Cons!48901) lt!1566080))))

(declare-fun b!4353089 () Bool)

(assert (=> b!4353089 (= e!2708922 (Cons!48901 (h!54442 lt!1566080) (removePairForKey!449 (t!355945 lt!1566080) key!3918)))))

(declare-fun b!4353087 () Bool)

(assert (=> b!4353087 (= e!2708921 (t!355945 lt!1566080))))

(declare-fun d!1286129 () Bool)

(declare-fun lt!1566295 () List!49025)

(assert (=> d!1286129 (not (containsKey!661 lt!1566295 key!3918))))

(assert (=> d!1286129 (= lt!1566295 e!2708921)))

(declare-fun c!740019 () Bool)

(assert (=> d!1286129 (= c!740019 (and ((_ is Cons!48901) lt!1566080) (= (_1!27437 (h!54442 lt!1566080)) key!3918)))))

(assert (=> d!1286129 (noDuplicateKeys!479 lt!1566080)))

(assert (=> d!1286129 (= (removePairForKey!449 lt!1566080 key!3918) lt!1566295)))

(declare-fun b!4353090 () Bool)

(assert (=> b!4353090 (= e!2708922 Nil!48901)))

(assert (= (and d!1286129 c!740019) b!4353087))

(assert (= (and d!1286129 (not c!740019)) b!4353088))

(assert (= (and b!4353088 c!740020) b!4353089))

(assert (= (and b!4353088 (not c!740020)) b!4353090))

(declare-fun m!4964775 () Bool)

(assert (=> b!4353089 m!4964775))

(declare-fun m!4964777 () Bool)

(assert (=> d!1286129 m!4964777))

(declare-fun m!4964779 () Bool)

(assert (=> d!1286129 m!4964779))

(assert (=> b!4352819 d!1286129))

(declare-fun d!1286131 () Bool)

(declare-fun lt!1566298 () Bool)

(declare-fun content!7698 (List!49026) (InoxSet tuple2!48288))

(assert (=> d!1286131 (= lt!1566298 (select (content!7698 (toList!2941 lm!1707)) lt!1566075))))

(declare-fun e!2708928 () Bool)

(assert (=> d!1286131 (= lt!1566298 e!2708928)))

(declare-fun res!1788701 () Bool)

(assert (=> d!1286131 (=> (not res!1788701) (not e!2708928))))

(assert (=> d!1286131 (= res!1788701 ((_ is Cons!48902) (toList!2941 lm!1707)))))

(assert (=> d!1286131 (= (contains!11088 (toList!2941 lm!1707) lt!1566075) lt!1566298)))

(declare-fun b!4353095 () Bool)

(declare-fun e!2708927 () Bool)

(assert (=> b!4353095 (= e!2708928 e!2708927)))

(declare-fun res!1788700 () Bool)

(assert (=> b!4353095 (=> res!1788700 e!2708927)))

(assert (=> b!4353095 (= res!1788700 (= (h!54443 (toList!2941 lm!1707)) lt!1566075))))

(declare-fun b!4353096 () Bool)

(assert (=> b!4353096 (= e!2708927 (contains!11088 (t!355946 (toList!2941 lm!1707)) lt!1566075))))

(assert (= (and d!1286131 res!1788701) b!4353095))

(assert (= (and b!4353095 (not res!1788700)) b!4353096))

(declare-fun m!4964781 () Bool)

(assert (=> d!1286131 m!4964781))

(declare-fun m!4964783 () Bool)

(assert (=> d!1286131 m!4964783))

(declare-fun m!4964785 () Bool)

(assert (=> b!4353096 m!4964785))

(assert (=> b!4352819 d!1286131))

(declare-fun d!1286133 () Bool)

(assert (=> d!1286133 (dynLambda!20621 lambda!139751 lt!1566075)))

(declare-fun lt!1566301 () Unit!71224)

(declare-fun choose!26821 (List!49026 Int tuple2!48288) Unit!71224)

(assert (=> d!1286133 (= lt!1566301 (choose!26821 (toList!2941 lm!1707) lambda!139751 lt!1566075))))

(declare-fun e!2708931 () Bool)

(assert (=> d!1286133 e!2708931))

(declare-fun res!1788704 () Bool)

(assert (=> d!1286133 (=> (not res!1788704) (not e!2708931))))

(assert (=> d!1286133 (= res!1788704 (forall!9096 (toList!2941 lm!1707) lambda!139751))))

(assert (=> d!1286133 (= (forallContained!1741 (toList!2941 lm!1707) lambda!139751 lt!1566075) lt!1566301)))

(declare-fun b!4353099 () Bool)

(assert (=> b!4353099 (= e!2708931 (contains!11088 (toList!2941 lm!1707) lt!1566075))))

(assert (= (and d!1286133 res!1788704) b!4353099))

(declare-fun b_lambda!130769 () Bool)

(assert (=> (not b_lambda!130769) (not d!1286133)))

(declare-fun m!4964787 () Bool)

(assert (=> d!1286133 m!4964787))

(declare-fun m!4964789 () Bool)

(assert (=> d!1286133 m!4964789))

(assert (=> d!1286133 m!4964287))

(assert (=> b!4353099 m!4964335))

(assert (=> b!4352819 d!1286133))

(declare-fun d!1286135 () Bool)

(assert (=> d!1286135 (contains!11088 (toList!2941 lm!1707) (tuple2!48289 hash!377 lt!1566080))))

(declare-fun lt!1566304 () Unit!71224)

(declare-fun choose!26822 (List!49026 (_ BitVec 64) List!49025) Unit!71224)

(assert (=> d!1286135 (= lt!1566304 (choose!26822 (toList!2941 lm!1707) hash!377 lt!1566080))))

(declare-fun e!2708934 () Bool)

(assert (=> d!1286135 e!2708934))

(declare-fun res!1788707 () Bool)

(assert (=> d!1286135 (=> (not res!1788707) (not e!2708934))))

(assert (=> d!1286135 (= res!1788707 (isStrictlySorted!94 (toList!2941 lm!1707)))))

(assert (=> d!1286135 (= (lemmaGetValueByKeyImpliesContainsTuple!326 (toList!2941 lm!1707) hash!377 lt!1566080) lt!1566304)))

(declare-fun b!4353102 () Bool)

(assert (=> b!4353102 (= e!2708934 (= (getValueByKey!434 (toList!2941 lm!1707) hash!377) (Some!10447 lt!1566080)))))

(assert (= (and d!1286135 res!1788707) b!4353102))

(declare-fun m!4964791 () Bool)

(assert (=> d!1286135 m!4964791))

(declare-fun m!4964793 () Bool)

(assert (=> d!1286135 m!4964793))

(assert (=> d!1286135 m!4964723))

(assert (=> b!4353102 m!4964769))

(assert (=> b!4352819 d!1286135))

(declare-fun b!4353107 () Bool)

(declare-fun e!2708937 () Bool)

(declare-fun tp!1329980 () Bool)

(declare-fun tp!1329981 () Bool)

(assert (=> b!4353107 (= e!2708937 (and tp!1329980 tp!1329981))))

(assert (=> b!4352817 (= tp!1329966 e!2708937)))

(assert (= (and b!4352817 ((_ is Cons!48902) (toList!2941 lm!1707))) b!4353107))

(declare-fun e!2708940 () Bool)

(declare-fun tp!1329984 () Bool)

(declare-fun b!4353112 () Bool)

(assert (=> b!4353112 (= e!2708940 (and tp_is_empty!25153 tp_is_empty!25155 tp!1329984))))

(assert (=> b!4352820 (= tp!1329965 e!2708940)))

(assert (= (and b!4352820 ((_ is Cons!48901) (t!355945 newBucket!200))) b!4353112))

(declare-fun b_lambda!130771 () Bool)

(assert (= b_lambda!130747 (or start!420836 b_lambda!130771)))

(declare-fun bs!629800 () Bool)

(declare-fun d!1286137 () Bool)

(assert (= bs!629800 (and d!1286137 start!420836)))

(assert (=> bs!629800 (= (dynLambda!20621 lambda!139751 (h!54443 (toList!2941 lt!1566071))) (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 lt!1566071)))))))

(declare-fun m!4964795 () Bool)

(assert (=> bs!629800 m!4964795))

(assert (=> b!4352837 d!1286137))

(declare-fun b_lambda!130773 () Bool)

(assert (= b_lambda!130749 (or start!420836 b_lambda!130773)))

(declare-fun bs!629801 () Bool)

(declare-fun d!1286139 () Bool)

(assert (= bs!629801 (and d!1286139 start!420836)))

(assert (=> bs!629801 (= (dynLambda!20621 lambda!139751 (tuple2!48289 hash!377 newBucket!200)) (noDuplicateKeys!479 (_2!27438 (tuple2!48289 hash!377 newBucket!200))))))

(declare-fun m!4964797 () Bool)

(assert (=> bs!629801 m!4964797))

(assert (=> b!4352884 d!1286139))

(declare-fun b_lambda!130775 () Bool)

(assert (= b_lambda!130751 (or start!420836 b_lambda!130775)))

(declare-fun bs!629802 () Bool)

(declare-fun d!1286141 () Bool)

(assert (= bs!629802 (and d!1286141 start!420836)))

(assert (=> bs!629802 (= (dynLambda!20621 lambda!139751 (h!54443 (toList!2941 lm!1707))) (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 lm!1707)))))))

(assert (=> bs!629802 m!4964705))

(assert (=> b!4352885 d!1286141))

(declare-fun b_lambda!130777 () Bool)

(assert (= b_lambda!130769 (or start!420836 b_lambda!130777)))

(declare-fun bs!629803 () Bool)

(declare-fun d!1286143 () Bool)

(assert (= bs!629803 (and d!1286143 start!420836)))

(assert (=> bs!629803 (= (dynLambda!20621 lambda!139751 lt!1566075) (noDuplicateKeys!479 (_2!27438 lt!1566075)))))

(declare-fun m!4964799 () Bool)

(assert (=> bs!629803 m!4964799))

(assert (=> d!1286133 d!1286143))

(check-sat (not d!1286097) (not bs!629803) (not d!1286115) (not d!1286129) (not b!4352950) (not d!1286087) tp_is_empty!25155 (not b!4352892) (not b!4353059) (not b!4353024) (not b!4353041) (not b!4353050) (not bs!629801) (not d!1286061) (not b!4353078) (not b!4352946) (not b!4353063) (not d!1286111) (not b!4353052) (not b!4353032) (not b!4353076) (not b!4353107) (not b!4353096) (not d!1286021) (not bm!302499) (not b_lambda!130771) (not d!1286123) (not b!4353039) (not b!4353025) (not b!4353019) (not d!1286091) (not b!4353018) (not b!4352947) (not b!4352886) (not d!1286053) (not b!4353060) (not d!1286125) (not b!4352951) (not bm!302497) (not bm!302500) (not b!4353058) (not b!4352844) (not b!4352838) (not bs!629800) (not b!4352952) (not d!1286131) (not b!4353020) (not b!4353051) (not d!1286103) (not d!1286095) (not d!1286113) (not b!4353099) (not b!4353040) (not d!1286119) (not b!4353056) (not b!4353049) (not d!1286135) (not b!4353031) (not b!4352953) (not b_lambda!130777) (not d!1286085) (not b!4353057) (not b_lambda!130773) (not b!4353089) (not b!4353102) tp_is_empty!25153 (not b!4353112) (not b_lambda!130775) (not d!1286007) (not d!1286107) (not b!4352843) (not d!1286105) (not d!1286089) (not b!4353023) (not d!1286011) (not b!4353026) (not b!4353037) (not d!1286093) (not b!4353043) (not d!1286133) (not d!1286099) (not b!4352945) (not d!1286121) (not b!4353053) (not d!1286127) (not d!1286101) (not bs!629802))
(check-sat)
(get-model)

(declare-fun d!1286157 () Bool)

(declare-fun lt!1566313 () Bool)

(declare-fun content!7699 (List!49028) (InoxSet K!10265))

(assert (=> d!1286157 (= lt!1566313 (select (content!7699 (keys!16508 lt!1566081)) key!3918))))

(declare-fun e!2708961 () Bool)

(assert (=> d!1286157 (= lt!1566313 e!2708961)))

(declare-fun res!1788724 () Bool)

(assert (=> d!1286157 (=> (not res!1788724) (not e!2708961))))

(assert (=> d!1286157 (= res!1788724 ((_ is Cons!48904) (keys!16508 lt!1566081)))))

(assert (=> d!1286157 (= (contains!11091 (keys!16508 lt!1566081) key!3918) lt!1566313)))

(declare-fun b!4353142 () Bool)

(declare-fun e!2708960 () Bool)

(assert (=> b!4353142 (= e!2708961 e!2708960)))

(declare-fun res!1788723 () Bool)

(assert (=> b!4353142 (=> res!1788723 e!2708960)))

(assert (=> b!4353142 (= res!1788723 (= (h!54447 (keys!16508 lt!1566081)) key!3918))))

(declare-fun b!4353143 () Bool)

(assert (=> b!4353143 (= e!2708960 (contains!11091 (t!355948 (keys!16508 lt!1566081)) key!3918))))

(assert (= (and d!1286157 res!1788724) b!4353142))

(assert (= (and b!4353142 (not res!1788723)) b!4353143))

(assert (=> d!1286157 m!4964525))

(declare-fun m!4964819 () Bool)

(assert (=> d!1286157 m!4964819))

(declare-fun m!4964823 () Bool)

(assert (=> d!1286157 m!4964823))

(declare-fun m!4964827 () Bool)

(assert (=> b!4353143 m!4964827))

(assert (=> b!4352945 d!1286157))

(declare-fun b!4353163 () Bool)

(assert (=> b!4353163 true))

(declare-fun d!1286161 () Bool)

(declare-fun e!2708970 () Bool)

(assert (=> d!1286161 e!2708970))

(declare-fun res!1788732 () Bool)

(assert (=> d!1286161 (=> (not res!1788732) (not e!2708970))))

(declare-fun lt!1566319 () List!49028)

(declare-fun noDuplicate!599 (List!49028) Bool)

(assert (=> d!1286161 (= res!1788732 (noDuplicate!599 lt!1566319))))

(assert (=> d!1286161 (= lt!1566319 (getKeysList!116 (toList!2942 lt!1566081)))))

(assert (=> d!1286161 (= (keys!16508 lt!1566081) lt!1566319)))

(declare-fun b!4353162 () Bool)

(declare-fun res!1788733 () Bool)

(assert (=> b!4353162 (=> (not res!1788733) (not e!2708970))))

(declare-fun length!54 (List!49028) Int)

(declare-fun length!55 (List!49025) Int)

(assert (=> b!4353162 (= res!1788733 (= (length!54 lt!1566319) (length!55 (toList!2942 lt!1566081))))))

(declare-fun res!1788731 () Bool)

(assert (=> b!4353163 (=> (not res!1788731) (not e!2708970))))

(declare-fun lambda!139792 () Int)

(declare-fun forall!9099 (List!49028 Int) Bool)

(assert (=> b!4353163 (= res!1788731 (forall!9099 lt!1566319 lambda!139792))))

(declare-fun lambda!139793 () Int)

(declare-fun b!4353164 () Bool)

(declare-fun map!10635 (List!49025 Int) List!49028)

(assert (=> b!4353164 (= e!2708970 (= (content!7699 lt!1566319) (content!7699 (map!10635 (toList!2942 lt!1566081) lambda!139793))))))

(assert (= (and d!1286161 res!1788732) b!4353162))

(assert (= (and b!4353162 res!1788733) b!4353163))

(assert (= (and b!4353163 res!1788731) b!4353164))

(declare-fun m!4964833 () Bool)

(assert (=> d!1286161 m!4964833))

(assert (=> d!1286161 m!4964533))

(declare-fun m!4964835 () Bool)

(assert (=> b!4353162 m!4964835))

(declare-fun m!4964837 () Bool)

(assert (=> b!4353162 m!4964837))

(declare-fun m!4964839 () Bool)

(assert (=> b!4353163 m!4964839))

(declare-fun m!4964841 () Bool)

(assert (=> b!4353164 m!4964841))

(declare-fun m!4964843 () Bool)

(assert (=> b!4353164 m!4964843))

(assert (=> b!4353164 m!4964843))

(declare-fun m!4964845 () Bool)

(assert (=> b!4353164 m!4964845))

(assert (=> b!4352945 d!1286161))

(declare-fun d!1286165 () Bool)

(declare-fun res!1788734 () Bool)

(declare-fun e!2708973 () Bool)

(assert (=> d!1286165 (=> res!1788734 e!2708973)))

(assert (=> d!1286165 (= res!1788734 (and ((_ is Cons!48901) (t!355945 (_2!27438 (h!54443 (toList!2941 lm!1707))))) (= (_1!27437 (h!54442 (t!355945 (_2!27438 (h!54443 (toList!2941 lm!1707)))))) key!3918)))))

(assert (=> d!1286165 (= (containsKey!661 (t!355945 (_2!27438 (h!54443 (toList!2941 lm!1707)))) key!3918) e!2708973)))

(declare-fun b!4353171 () Bool)

(declare-fun e!2708974 () Bool)

(assert (=> b!4353171 (= e!2708973 e!2708974)))

(declare-fun res!1788735 () Bool)

(assert (=> b!4353171 (=> (not res!1788735) (not e!2708974))))

(assert (=> b!4353171 (= res!1788735 ((_ is Cons!48901) (t!355945 (_2!27438 (h!54443 (toList!2941 lm!1707))))))))

(declare-fun b!4353172 () Bool)

(assert (=> b!4353172 (= e!2708974 (containsKey!661 (t!355945 (t!355945 (_2!27438 (h!54443 (toList!2941 lm!1707))))) key!3918))))

(assert (= (and d!1286165 (not res!1788734)) b!4353171))

(assert (= (and b!4353171 res!1788735) b!4353172))

(declare-fun m!4964847 () Bool)

(assert (=> b!4353172 m!4964847))

(assert (=> b!4353063 d!1286165))

(declare-fun d!1286167 () Bool)

(declare-fun res!1788736 () Bool)

(declare-fun e!2708975 () Bool)

(assert (=> d!1286167 (=> res!1788736 e!2708975)))

(assert (=> d!1286167 (= res!1788736 (not ((_ is Cons!48901) (_2!27438 (tuple2!48289 hash!377 newBucket!200)))))))

(assert (=> d!1286167 (= (noDuplicateKeys!479 (_2!27438 (tuple2!48289 hash!377 newBucket!200))) e!2708975)))

(declare-fun b!4353173 () Bool)

(declare-fun e!2708976 () Bool)

(assert (=> b!4353173 (= e!2708975 e!2708976)))

(declare-fun res!1788737 () Bool)

(assert (=> b!4353173 (=> (not res!1788737) (not e!2708976))))

(assert (=> b!4353173 (= res!1788737 (not (containsKey!661 (t!355945 (_2!27438 (tuple2!48289 hash!377 newBucket!200))) (_1!27437 (h!54442 (_2!27438 (tuple2!48289 hash!377 newBucket!200)))))))))

(declare-fun b!4353174 () Bool)

(assert (=> b!4353174 (= e!2708976 (noDuplicateKeys!479 (t!355945 (_2!27438 (tuple2!48289 hash!377 newBucket!200)))))))

(assert (= (and d!1286167 (not res!1788736)) b!4353173))

(assert (= (and b!4353173 res!1788737) b!4353174))

(declare-fun m!4964849 () Bool)

(assert (=> b!4353173 m!4964849))

(declare-fun m!4964851 () Bool)

(assert (=> b!4353174 m!4964851))

(assert (=> bs!629801 d!1286167))

(declare-fun d!1286169 () Bool)

(declare-fun res!1788742 () Bool)

(declare-fun e!2708979 () Bool)

(assert (=> d!1286169 (=> res!1788742 e!2708979)))

(assert (=> d!1286169 (= res!1788742 ((_ is Nil!48902) (toList!2941 lm!1707)))))

(assert (=> d!1286169 (= (forall!9096 (toList!2941 lm!1707) lambda!139784) e!2708979)))

(declare-fun b!4353179 () Bool)

(declare-fun e!2708980 () Bool)

(assert (=> b!4353179 (= e!2708979 e!2708980)))

(declare-fun res!1788743 () Bool)

(assert (=> b!4353179 (=> (not res!1788743) (not e!2708980))))

(assert (=> b!4353179 (= res!1788743 (dynLambda!20621 lambda!139784 (h!54443 (toList!2941 lm!1707))))))

(declare-fun b!4353180 () Bool)

(assert (=> b!4353180 (= e!2708980 (forall!9096 (t!355946 (toList!2941 lm!1707)) lambda!139784))))

(assert (= (and d!1286169 (not res!1788742)) b!4353179))

(assert (= (and b!4353179 res!1788743) b!4353180))

(declare-fun b_lambda!130781 () Bool)

(assert (=> (not b_lambda!130781) (not b!4353179)))

(declare-fun m!4964853 () Bool)

(assert (=> b!4353179 m!4964853))

(declare-fun m!4964855 () Bool)

(assert (=> b!4353180 m!4964855))

(assert (=> d!1286119 d!1286169))

(declare-fun d!1286171 () Bool)

(declare-fun res!1788748 () Bool)

(declare-fun e!2708985 () Bool)

(assert (=> d!1286171 (=> res!1788748 e!2708985)))

(assert (=> d!1286171 (= res!1788748 (and ((_ is Cons!48901) (toList!2942 lt!1566072)) (= (_1!27437 (h!54442 (toList!2942 lt!1566072))) key!3918)))))

(assert (=> d!1286171 (= (containsKey!663 (toList!2942 lt!1566072) key!3918) e!2708985)))

(declare-fun b!4353185 () Bool)

(declare-fun e!2708986 () Bool)

(assert (=> b!4353185 (= e!2708985 e!2708986)))

(declare-fun res!1788749 () Bool)

(assert (=> b!4353185 (=> (not res!1788749) (not e!2708986))))

(assert (=> b!4353185 (= res!1788749 ((_ is Cons!48901) (toList!2942 lt!1566072)))))

(declare-fun b!4353186 () Bool)

(assert (=> b!4353186 (= e!2708986 (containsKey!663 (t!355945 (toList!2942 lt!1566072)) key!3918))))

(assert (= (and d!1286171 (not res!1788748)) b!4353185))

(assert (= (and b!4353185 res!1788749) b!4353186))

(declare-fun m!4964857 () Bool)

(assert (=> b!4353186 m!4964857))

(assert (=> b!4353025 d!1286171))

(declare-fun d!1286173 () Bool)

(assert (=> d!1286173 (containsKey!663 (toList!2942 lt!1566072) key!3918)))

(declare-fun lt!1566323 () Unit!71224)

(declare-fun choose!26824 (List!49025 K!10265) Unit!71224)

(assert (=> d!1286173 (= lt!1566323 (choose!26824 (toList!2942 lt!1566072) key!3918))))

(assert (=> d!1286173 (invariantList!668 (toList!2942 lt!1566072))))

(assert (=> d!1286173 (= (lemmaInGetKeysListThenContainsKey!114 (toList!2942 lt!1566072) key!3918) lt!1566323)))

(declare-fun bs!629806 () Bool)

(assert (= bs!629806 d!1286173))

(assert (=> bs!629806 m!4964639))

(declare-fun m!4964871 () Bool)

(assert (=> bs!629806 m!4964871))

(declare-fun m!4964873 () Bool)

(assert (=> bs!629806 m!4964873))

(assert (=> b!4353025 d!1286173))

(assert (=> d!1286053 d!1286019))

(assert (=> d!1286053 d!1286089))

(declare-fun d!1286177 () Bool)

(assert (=> d!1286177 (not (containsKey!661 (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707)))) key!3918))))

(assert (=> d!1286177 true))

(declare-fun _$39!265 () Unit!71224)

(assert (=> d!1286177 (= (choose!26817 lm!1707 key!3918 (_1!27438 (h!54443 (toList!2941 lm!1707))) hashF!1247) _$39!265)))

(declare-fun bs!629807 () Bool)

(assert (= bs!629807 d!1286177))

(assert (=> bs!629807 m!4964317))

(assert (=> bs!629807 m!4964317))

(assert (=> bs!629807 m!4964319))

(assert (=> d!1286053 d!1286177))

(declare-fun d!1286183 () Bool)

(declare-fun res!1788756 () Bool)

(declare-fun e!2708996 () Bool)

(assert (=> d!1286183 (=> res!1788756 e!2708996)))

(assert (=> d!1286183 (= res!1788756 ((_ is Nil!48902) (toList!2941 lm!1707)))))

(assert (=> d!1286183 (= (forall!9096 (toList!2941 lm!1707) lambda!139772) e!2708996)))

(declare-fun b!4353201 () Bool)

(declare-fun e!2708997 () Bool)

(assert (=> b!4353201 (= e!2708996 e!2708997)))

(declare-fun res!1788757 () Bool)

(assert (=> b!4353201 (=> (not res!1788757) (not e!2708997))))

(assert (=> b!4353201 (= res!1788757 (dynLambda!20621 lambda!139772 (h!54443 (toList!2941 lm!1707))))))

(declare-fun b!4353202 () Bool)

(assert (=> b!4353202 (= e!2708997 (forall!9096 (t!355946 (toList!2941 lm!1707)) lambda!139772))))

(assert (= (and d!1286183 (not res!1788756)) b!4353201))

(assert (= (and b!4353201 res!1788757) b!4353202))

(declare-fun b_lambda!130785 () Bool)

(assert (=> (not b_lambda!130785) (not b!4353201)))

(declare-fun m!4964883 () Bool)

(assert (=> b!4353201 m!4964883))

(declare-fun m!4964885 () Bool)

(assert (=> b!4353202 m!4964885))

(assert (=> d!1286053 d!1286183))

(declare-fun d!1286185 () Bool)

(declare-fun lt!1566324 () Bool)

(assert (=> d!1286185 (= lt!1566324 (select (content!7699 (keys!16508 lt!1566072)) key!3918))))

(declare-fun e!2708999 () Bool)

(assert (=> d!1286185 (= lt!1566324 e!2708999)))

(declare-fun res!1788759 () Bool)

(assert (=> d!1286185 (=> (not res!1788759) (not e!2708999))))

(assert (=> d!1286185 (= res!1788759 ((_ is Cons!48904) (keys!16508 lt!1566072)))))

(assert (=> d!1286185 (= (contains!11091 (keys!16508 lt!1566072) key!3918) lt!1566324)))

(declare-fun b!4353203 () Bool)

(declare-fun e!2708998 () Bool)

(assert (=> b!4353203 (= e!2708999 e!2708998)))

(declare-fun res!1788758 () Bool)

(assert (=> b!4353203 (=> res!1788758 e!2708998)))

(assert (=> b!4353203 (= res!1788758 (= (h!54447 (keys!16508 lt!1566072)) key!3918))))

(declare-fun b!4353204 () Bool)

(assert (=> b!4353204 (= e!2708998 (contains!11091 (t!355948 (keys!16508 lt!1566072)) key!3918))))

(assert (= (and d!1286185 res!1788759) b!4353203))

(assert (= (and b!4353203 (not res!1788758)) b!4353204))

(assert (=> d!1286185 m!4964643))

(declare-fun m!4964887 () Bool)

(assert (=> d!1286185 m!4964887))

(declare-fun m!4964889 () Bool)

(assert (=> d!1286185 m!4964889))

(declare-fun m!4964891 () Bool)

(assert (=> b!4353204 m!4964891))

(assert (=> b!4353023 d!1286185))

(declare-fun bs!629808 () Bool)

(declare-fun b!4353210 () Bool)

(assert (= bs!629808 (and b!4353210 b!4353163)))

(declare-fun lambda!139794 () Int)

(assert (=> bs!629808 (= (= (toList!2942 lt!1566072) (toList!2942 lt!1566081)) (= lambda!139794 lambda!139792))))

(assert (=> b!4353210 true))

(declare-fun bs!629809 () Bool)

(declare-fun b!4353211 () Bool)

(assert (= bs!629809 (and b!4353211 b!4353164)))

(declare-fun lambda!139795 () Int)

(assert (=> bs!629809 (= lambda!139795 lambda!139793)))

(declare-fun d!1286187 () Bool)

(declare-fun e!2709004 () Bool)

(assert (=> d!1286187 e!2709004))

(declare-fun res!1788765 () Bool)

(assert (=> d!1286187 (=> (not res!1788765) (not e!2709004))))

(declare-fun lt!1566325 () List!49028)

(assert (=> d!1286187 (= res!1788765 (noDuplicate!599 lt!1566325))))

(assert (=> d!1286187 (= lt!1566325 (getKeysList!116 (toList!2942 lt!1566072)))))

(assert (=> d!1286187 (= (keys!16508 lt!1566072) lt!1566325)))

(declare-fun b!4353209 () Bool)

(declare-fun res!1788766 () Bool)

(assert (=> b!4353209 (=> (not res!1788766) (not e!2709004))))

(assert (=> b!4353209 (= res!1788766 (= (length!54 lt!1566325) (length!55 (toList!2942 lt!1566072))))))

(declare-fun res!1788764 () Bool)

(assert (=> b!4353210 (=> (not res!1788764) (not e!2709004))))

(assert (=> b!4353210 (= res!1788764 (forall!9099 lt!1566325 lambda!139794))))

(assert (=> b!4353211 (= e!2709004 (= (content!7699 lt!1566325) (content!7699 (map!10635 (toList!2942 lt!1566072) lambda!139795))))))

(assert (= (and d!1286187 res!1788765) b!4353209))

(assert (= (and b!4353209 res!1788766) b!4353210))

(assert (= (and b!4353210 res!1788764) b!4353211))

(declare-fun m!4964893 () Bool)

(assert (=> d!1286187 m!4964893))

(assert (=> d!1286187 m!4964647))

(declare-fun m!4964895 () Bool)

(assert (=> b!4353209 m!4964895))

(declare-fun m!4964897 () Bool)

(assert (=> b!4353209 m!4964897))

(declare-fun m!4964901 () Bool)

(assert (=> b!4353210 m!4964901))

(declare-fun m!4964903 () Bool)

(assert (=> b!4353211 m!4964903))

(declare-fun m!4964905 () Bool)

(assert (=> b!4353211 m!4964905))

(assert (=> b!4353211 m!4964905))

(declare-fun m!4964907 () Bool)

(assert (=> b!4353211 m!4964907))

(assert (=> b!4353023 d!1286187))

(declare-fun d!1286191 () Bool)

(declare-fun res!1788773 () Bool)

(declare-fun e!2709015 () Bool)

(assert (=> d!1286191 (=> res!1788773 e!2709015)))

(assert (=> d!1286191 (= res!1788773 (or ((_ is Nil!48902) (toList!2941 lm!1707)) ((_ is Nil!48902) (t!355946 (toList!2941 lm!1707)))))))

(assert (=> d!1286191 (= (isStrictlySorted!94 (toList!2941 lm!1707)) e!2709015)))

(declare-fun b!4353226 () Bool)

(declare-fun e!2709016 () Bool)

(assert (=> b!4353226 (= e!2709015 e!2709016)))

(declare-fun res!1788774 () Bool)

(assert (=> b!4353226 (=> (not res!1788774) (not e!2709016))))

(assert (=> b!4353226 (= res!1788774 (bvslt (_1!27438 (h!54443 (toList!2941 lm!1707))) (_1!27438 (h!54443 (t!355946 (toList!2941 lm!1707))))))))

(declare-fun b!4353227 () Bool)

(assert (=> b!4353227 (= e!2709016 (isStrictlySorted!94 (t!355946 (toList!2941 lm!1707))))))

(assert (= (and d!1286191 (not res!1788773)) b!4353226))

(assert (= (and b!4353226 res!1788774) b!4353227))

(declare-fun m!4964911 () Bool)

(assert (=> b!4353227 m!4964911))

(assert (=> d!1286107 d!1286191))

(declare-fun d!1286195 () Bool)

(declare-fun noDuplicatedKeys!116 (List!49025) Bool)

(assert (=> d!1286195 (= (invariantList!668 (toList!2942 lt!1566270)) (noDuplicatedKeys!116 (toList!2942 lt!1566270)))))

(declare-fun bs!629811 () Bool)

(assert (= bs!629811 d!1286195))

(declare-fun m!4964913 () Bool)

(assert (=> bs!629811 m!4964913))

(assert (=> d!1286103 d!1286195))

(declare-fun d!1286197 () Bool)

(declare-fun res!1788775 () Bool)

(declare-fun e!2709017 () Bool)

(assert (=> d!1286197 (=> res!1788775 e!2709017)))

(assert (=> d!1286197 (= res!1788775 ((_ is Nil!48902) (toList!2941 lt!1566077)))))

(assert (=> d!1286197 (= (forall!9096 (toList!2941 lt!1566077) lambda!139779) e!2709017)))

(declare-fun b!4353228 () Bool)

(declare-fun e!2709018 () Bool)

(assert (=> b!4353228 (= e!2709017 e!2709018)))

(declare-fun res!1788776 () Bool)

(assert (=> b!4353228 (=> (not res!1788776) (not e!2709018))))

(assert (=> b!4353228 (= res!1788776 (dynLambda!20621 lambda!139779 (h!54443 (toList!2941 lt!1566077))))))

(declare-fun b!4353229 () Bool)

(assert (=> b!4353229 (= e!2709018 (forall!9096 (t!355946 (toList!2941 lt!1566077)) lambda!139779))))

(assert (= (and d!1286197 (not res!1788775)) b!4353228))

(assert (= (and b!4353228 res!1788776) b!4353229))

(declare-fun b_lambda!130787 () Bool)

(assert (=> (not b_lambda!130787) (not b!4353228)))

(declare-fun m!4964915 () Bool)

(assert (=> b!4353228 m!4964915))

(declare-fun m!4964917 () Bool)

(assert (=> b!4353229 m!4964917))

(assert (=> d!1286103 d!1286197))

(declare-fun d!1286199 () Bool)

(declare-fun isEmpty!28189 (Option!10449) Bool)

(assert (=> d!1286199 (= (isDefined!7742 (getValueByKey!435 (toList!2942 lt!1566081) key!3918)) (not (isEmpty!28189 (getValueByKey!435 (toList!2942 lt!1566081) key!3918))))))

(declare-fun bs!629812 () Bool)

(assert (= bs!629812 d!1286199))

(assert (=> bs!629812 m!4964543))

(declare-fun m!4964925 () Bool)

(assert (=> bs!629812 m!4964925))

(assert (=> b!4352947 d!1286199))

(declare-fun b!4353247 () Bool)

(declare-fun e!2709029 () Option!10449)

(declare-fun e!2709030 () Option!10449)

(assert (=> b!4353247 (= e!2709029 e!2709030)))

(declare-fun c!740051 () Bool)

(assert (=> b!4353247 (= c!740051 (and ((_ is Cons!48901) (toList!2942 lt!1566081)) (not (= (_1!27437 (h!54442 (toList!2942 lt!1566081))) key!3918))))))

(declare-fun b!4353248 () Bool)

(assert (=> b!4353248 (= e!2709030 (getValueByKey!435 (t!355945 (toList!2942 lt!1566081)) key!3918))))

(declare-fun b!4353246 () Bool)

(assert (=> b!4353246 (= e!2709029 (Some!10448 (_2!27437 (h!54442 (toList!2942 lt!1566081)))))))

(declare-fun b!4353249 () Bool)

(assert (=> b!4353249 (= e!2709030 None!10448)))

(declare-fun d!1286205 () Bool)

(declare-fun c!740050 () Bool)

(assert (=> d!1286205 (= c!740050 (and ((_ is Cons!48901) (toList!2942 lt!1566081)) (= (_1!27437 (h!54442 (toList!2942 lt!1566081))) key!3918)))))

(assert (=> d!1286205 (= (getValueByKey!435 (toList!2942 lt!1566081) key!3918) e!2709029)))

(assert (= (and d!1286205 c!740050) b!4353246))

(assert (= (and d!1286205 (not c!740050)) b!4353247))

(assert (= (and b!4353247 c!740051) b!4353248))

(assert (= (and b!4353247 (not c!740051)) b!4353249))

(declare-fun m!4964931 () Bool)

(assert (=> b!4353248 m!4964931))

(assert (=> b!4352947 d!1286205))

(declare-fun d!1286213 () Bool)

(assert (=> d!1286213 (= (invariantList!668 (toList!2942 lt!1566271)) (noDuplicatedKeys!116 (toList!2942 lt!1566271)))))

(declare-fun bs!629815 () Bool)

(assert (= bs!629815 d!1286213))

(declare-fun m!4964933 () Bool)

(assert (=> bs!629815 m!4964933))

(assert (=> d!1286105 d!1286213))

(declare-fun d!1286215 () Bool)

(declare-fun res!1788781 () Bool)

(declare-fun e!2709031 () Bool)

(assert (=> d!1286215 (=> res!1788781 e!2709031)))

(assert (=> d!1286215 (= res!1788781 ((_ is Nil!48902) (toList!2941 (+!615 lt!1566077 lt!1566082))))))

(assert (=> d!1286215 (= (forall!9096 (toList!2941 (+!615 lt!1566077 lt!1566082)) lambda!139780) e!2709031)))

(declare-fun b!4353250 () Bool)

(declare-fun e!2709032 () Bool)

(assert (=> b!4353250 (= e!2709031 e!2709032)))

(declare-fun res!1788782 () Bool)

(assert (=> b!4353250 (=> (not res!1788782) (not e!2709032))))

(assert (=> b!4353250 (= res!1788782 (dynLambda!20621 lambda!139780 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082)))))))

(declare-fun b!4353251 () Bool)

(assert (=> b!4353251 (= e!2709032 (forall!9096 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))) lambda!139780))))

(assert (= (and d!1286215 (not res!1788781)) b!4353250))

(assert (= (and b!4353250 res!1788782) b!4353251))

(declare-fun b_lambda!130791 () Bool)

(assert (=> (not b_lambda!130791) (not b!4353250)))

(declare-fun m!4964935 () Bool)

(assert (=> b!4353250 m!4964935))

(declare-fun m!4964937 () Bool)

(assert (=> b!4353251 m!4964937))

(assert (=> d!1286105 d!1286215))

(assert (=> b!4353026 d!1286187))

(declare-fun b!4353266 () Bool)

(declare-fun e!2709043 () Option!10448)

(assert (=> b!4353266 (= e!2709043 (Some!10447 (_2!27438 (h!54443 (toList!2941 lt!1566112)))))))

(declare-fun b!4353268 () Bool)

(declare-fun e!2709044 () Option!10448)

(assert (=> b!4353268 (= e!2709044 (getValueByKey!434 (t!355946 (toList!2941 lt!1566112)) (_1!27438 lt!1566082)))))

(declare-fun d!1286217 () Bool)

(declare-fun c!740056 () Bool)

(assert (=> d!1286217 (= c!740056 (and ((_ is Cons!48902) (toList!2941 lt!1566112)) (= (_1!27438 (h!54443 (toList!2941 lt!1566112))) (_1!27438 lt!1566082))))))

(assert (=> d!1286217 (= (getValueByKey!434 (toList!2941 lt!1566112) (_1!27438 lt!1566082)) e!2709043)))

(declare-fun b!4353267 () Bool)

(assert (=> b!4353267 (= e!2709043 e!2709044)))

(declare-fun c!740057 () Bool)

(assert (=> b!4353267 (= c!740057 (and ((_ is Cons!48902) (toList!2941 lt!1566112)) (not (= (_1!27438 (h!54443 (toList!2941 lt!1566112))) (_1!27438 lt!1566082)))))))

(declare-fun b!4353269 () Bool)

(assert (=> b!4353269 (= e!2709044 None!10447)))

(assert (= (and d!1286217 c!740056) b!4353266))

(assert (= (and d!1286217 (not c!740056)) b!4353267))

(assert (= (and b!4353267 c!740057) b!4353268))

(assert (= (and b!4353267 (not c!740057)) b!4353269))

(declare-fun m!4964945 () Bool)

(assert (=> b!4353268 m!4964945))

(assert (=> b!4352843 d!1286217))

(declare-fun bs!629822 () Bool)

(declare-fun b!4353324 () Bool)

(assert (= bs!629822 (and b!4353324 d!1286123)))

(declare-fun lambda!139838 () Int)

(assert (=> bs!629822 (not (= lambda!139838 lambda!139787))))

(assert (=> b!4353324 true))

(declare-fun bs!629823 () Bool)

(declare-fun b!4353320 () Bool)

(assert (= bs!629823 (and b!4353320 d!1286123)))

(declare-fun lambda!139839 () Int)

(assert (=> bs!629823 (not (= lambda!139839 lambda!139787))))

(declare-fun bs!629824 () Bool)

(assert (= bs!629824 (and b!4353320 b!4353324)))

(assert (=> bs!629824 (= lambda!139839 lambda!139838)))

(assert (=> b!4353320 true))

(declare-fun lambda!139842 () Int)

(assert (=> bs!629823 (not (= lambda!139842 lambda!139787))))

(declare-fun lt!1566413 () ListMap!2185)

(assert (=> bs!629824 (= (= lt!1566413 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139842 lambda!139838))))

(assert (=> b!4353320 (= (= lt!1566413 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139842 lambda!139839))))

(assert (=> b!4353320 true))

(declare-fun bs!629825 () Bool)

(declare-fun d!1286221 () Bool)

(assert (= bs!629825 (and d!1286221 d!1286123)))

(declare-fun lambda!139845 () Int)

(assert (=> bs!629825 (not (= lambda!139845 lambda!139787))))

(declare-fun bs!629826 () Bool)

(assert (= bs!629826 (and d!1286221 b!4353324)))

(declare-fun lt!1566415 () ListMap!2185)

(assert (=> bs!629826 (= (= lt!1566415 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139845 lambda!139838))))

(declare-fun bs!629827 () Bool)

(assert (= bs!629827 (and d!1286221 b!4353320)))

(assert (=> bs!629827 (= (= lt!1566415 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139845 lambda!139839))))

(assert (=> bs!629827 (= (= lt!1566415 lt!1566413) (= lambda!139845 lambda!139842))))

(assert (=> d!1286221 true))

(declare-fun e!2709074 () ListMap!2185)

(assert (=> b!4353320 (= e!2709074 lt!1566413)))

(declare-fun lt!1566410 () ListMap!2185)

(assert (=> b!4353320 (= lt!1566410 (+!616 (extractMap!538 (t!355946 (toList!2941 lt!1566077))) (h!54442 (_2!27438 (h!54443 (toList!2941 lt!1566077))))))))

(assert (=> b!4353320 (= lt!1566413 (addToMapMapFromBucket!175 (t!355945 (_2!27438 (h!54443 (toList!2941 lt!1566077)))) (+!616 (extractMap!538 (t!355946 (toList!2941 lt!1566077))) (h!54442 (_2!27438 (h!54443 (toList!2941 lt!1566077)))))))))

(declare-fun lt!1566409 () Unit!71224)

(declare-fun call!302521 () Unit!71224)

(assert (=> b!4353320 (= lt!1566409 call!302521)))

(declare-fun call!302522 () Bool)

(assert (=> b!4353320 call!302522))

(declare-fun lt!1566416 () Unit!71224)

(assert (=> b!4353320 (= lt!1566416 lt!1566409)))

(assert (=> b!4353320 (forall!9098 (toList!2942 lt!1566410) lambda!139842)))

(declare-fun lt!1566412 () Unit!71224)

(declare-fun Unit!71241 () Unit!71224)

(assert (=> b!4353320 (= lt!1566412 Unit!71241)))

(assert (=> b!4353320 (forall!9098 (t!355945 (_2!27438 (h!54443 (toList!2941 lt!1566077)))) lambda!139842)))

(declare-fun lt!1566403 () Unit!71224)

(declare-fun Unit!71242 () Unit!71224)

(assert (=> b!4353320 (= lt!1566403 Unit!71242)))

(declare-fun lt!1566419 () Unit!71224)

(declare-fun Unit!71243 () Unit!71224)

(assert (=> b!4353320 (= lt!1566419 Unit!71243)))

(declare-fun lt!1566404 () Unit!71224)

(declare-fun forallContained!1742 (List!49025 Int tuple2!48286) Unit!71224)

(assert (=> b!4353320 (= lt!1566404 (forallContained!1742 (toList!2942 lt!1566410) lambda!139842 (h!54442 (_2!27438 (h!54443 (toList!2941 lt!1566077))))))))

(assert (=> b!4353320 (contains!11087 lt!1566410 (_1!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 lt!1566077))))))))

(declare-fun lt!1566407 () Unit!71224)

(declare-fun Unit!71244 () Unit!71224)

(assert (=> b!4353320 (= lt!1566407 Unit!71244)))

(assert (=> b!4353320 (contains!11087 lt!1566413 (_1!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 lt!1566077))))))))

(declare-fun lt!1566405 () Unit!71224)

(declare-fun Unit!71245 () Unit!71224)

(assert (=> b!4353320 (= lt!1566405 Unit!71245)))

(assert (=> b!4353320 (forall!9098 (_2!27438 (h!54443 (toList!2941 lt!1566077))) lambda!139842)))

(declare-fun lt!1566408 () Unit!71224)

(declare-fun Unit!71246 () Unit!71224)

(assert (=> b!4353320 (= lt!1566408 Unit!71246)))

(assert (=> b!4353320 (forall!9098 (toList!2942 lt!1566410) lambda!139842)))

(declare-fun lt!1566418 () Unit!71224)

(declare-fun Unit!71247 () Unit!71224)

(assert (=> b!4353320 (= lt!1566418 Unit!71247)))

(declare-fun lt!1566402 () Unit!71224)

(declare-fun Unit!71248 () Unit!71224)

(assert (=> b!4353320 (= lt!1566402 Unit!71248)))

(declare-fun lt!1566406 () Unit!71224)

(declare-fun addForallContainsKeyThenBeforeAdding!54 (ListMap!2185 ListMap!2185 K!10265 V!10511) Unit!71224)

(assert (=> b!4353320 (= lt!1566406 (addForallContainsKeyThenBeforeAdding!54 (extractMap!538 (t!355946 (toList!2941 lt!1566077))) lt!1566413 (_1!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 lt!1566077))))) (_2!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 lt!1566077)))))))))

(assert (=> b!4353320 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) lambda!139842)))

(declare-fun lt!1566414 () Unit!71224)

(assert (=> b!4353320 (= lt!1566414 lt!1566406)))

(assert (=> b!4353320 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) lambda!139842)))

(declare-fun lt!1566421 () Unit!71224)

(declare-fun Unit!71249 () Unit!71224)

(assert (=> b!4353320 (= lt!1566421 Unit!71249)))

(declare-fun res!1788819 () Bool)

(declare-fun call!302523 () Bool)

(assert (=> b!4353320 (= res!1788819 call!302523)))

(declare-fun e!2709075 () Bool)

(assert (=> b!4353320 (=> (not res!1788819) (not e!2709075))))

(assert (=> b!4353320 e!2709075))

(declare-fun lt!1566420 () Unit!71224)

(declare-fun Unit!71250 () Unit!71224)

(assert (=> b!4353320 (= lt!1566420 Unit!71250)))

(declare-fun e!2709073 () Bool)

(assert (=> d!1286221 e!2709073))

(declare-fun res!1788818 () Bool)

(assert (=> d!1286221 (=> (not res!1788818) (not e!2709073))))

(assert (=> d!1286221 (= res!1788818 (forall!9098 (_2!27438 (h!54443 (toList!2941 lt!1566077))) lambda!139845))))

(assert (=> d!1286221 (= lt!1566415 e!2709074)))

(declare-fun c!740068 () Bool)

(assert (=> d!1286221 (= c!740068 ((_ is Nil!48901) (_2!27438 (h!54443 (toList!2941 lt!1566077)))))))

(assert (=> d!1286221 (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 lt!1566077))))))

(assert (=> d!1286221 (= (addToMapMapFromBucket!175 (_2!27438 (h!54443 (toList!2941 lt!1566077))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) lt!1566415)))

(declare-fun b!4353321 () Bool)

(declare-fun res!1788817 () Bool)

(assert (=> b!4353321 (=> (not res!1788817) (not e!2709073))))

(assert (=> b!4353321 (= res!1788817 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) lambda!139845))))

(declare-fun b!4353322 () Bool)

(assert (=> b!4353322 (= e!2709073 (invariantList!668 (toList!2942 lt!1566415)))))

(declare-fun b!4353323 () Bool)

(assert (=> b!4353323 (= e!2709075 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) lambda!139842))))

(declare-fun bm!302516 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!54 (ListMap!2185) Unit!71224)

(assert (=> bm!302516 (= call!302521 (lemmaContainsAllItsOwnKeys!54 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))))))

(assert (=> b!4353324 (= e!2709074 (extractMap!538 (t!355946 (toList!2941 lt!1566077))))))

(declare-fun lt!1566417 () Unit!71224)

(assert (=> b!4353324 (= lt!1566417 call!302521)))

(assert (=> b!4353324 call!302522))

(declare-fun lt!1566411 () Unit!71224)

(assert (=> b!4353324 (= lt!1566411 lt!1566417)))

(assert (=> b!4353324 call!302523))

(declare-fun lt!1566422 () Unit!71224)

(declare-fun Unit!71251 () Unit!71224)

(assert (=> b!4353324 (= lt!1566422 Unit!71251)))

(declare-fun bm!302517 () Bool)

(assert (=> bm!302517 (= call!302523 (forall!9098 (ite c!740068 (toList!2942 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (_2!27438 (h!54443 (toList!2941 lt!1566077)))) (ite c!740068 lambda!139838 lambda!139842)))))

(declare-fun bm!302518 () Bool)

(assert (=> bm!302518 (= call!302522 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (ite c!740068 lambda!139838 lambda!139839)))))

(assert (= (and d!1286221 c!740068) b!4353324))

(assert (= (and d!1286221 (not c!740068)) b!4353320))

(assert (= (and b!4353320 res!1788819) b!4353323))

(assert (= (or b!4353324 b!4353320) bm!302516))

(assert (= (or b!4353324 b!4353320) bm!302518))

(assert (= (or b!4353324 b!4353320) bm!302517))

(assert (= (and d!1286221 res!1788818) b!4353321))

(assert (= (and b!4353321 res!1788817) b!4353322))

(assert (=> bm!302516 m!4964711))

(declare-fun m!4965005 () Bool)

(assert (=> bm!302516 m!4965005))

(declare-fun m!4965007 () Bool)

(assert (=> b!4353322 m!4965007))

(declare-fun m!4965009 () Bool)

(assert (=> bm!302517 m!4965009))

(declare-fun m!4965011 () Bool)

(assert (=> bm!302518 m!4965011))

(declare-fun m!4965013 () Bool)

(assert (=> b!4353321 m!4965013))

(declare-fun m!4965015 () Bool)

(assert (=> d!1286221 m!4965015))

(declare-fun m!4965017 () Bool)

(assert (=> d!1286221 m!4965017))

(declare-fun m!4965019 () Bool)

(assert (=> b!4353320 m!4965019))

(declare-fun m!4965021 () Bool)

(assert (=> b!4353320 m!4965021))

(declare-fun m!4965023 () Bool)

(assert (=> b!4353320 m!4965023))

(declare-fun m!4965025 () Bool)

(assert (=> b!4353320 m!4965025))

(assert (=> b!4353320 m!4965025))

(assert (=> b!4353320 m!4964711))

(declare-fun m!4965027 () Bool)

(assert (=> b!4353320 m!4965027))

(assert (=> b!4353320 m!4964711))

(assert (=> b!4353320 m!4965021))

(declare-fun m!4965029 () Bool)

(assert (=> b!4353320 m!4965029))

(declare-fun m!4965031 () Bool)

(assert (=> b!4353320 m!4965031))

(declare-fun m!4965033 () Bool)

(assert (=> b!4353320 m!4965033))

(declare-fun m!4965035 () Bool)

(assert (=> b!4353320 m!4965035))

(declare-fun m!4965037 () Bool)

(assert (=> b!4353320 m!4965037))

(assert (=> b!4353320 m!4965037))

(assert (=> b!4353323 m!4965025))

(assert (=> b!4353041 d!1286221))

(declare-fun bs!629828 () Bool)

(declare-fun d!1286249 () Bool)

(assert (= bs!629828 (and d!1286249 d!1286119)))

(declare-fun lambda!139854 () Int)

(assert (=> bs!629828 (not (= lambda!139854 lambda!139784))))

(declare-fun bs!629829 () Bool)

(assert (= bs!629829 (and d!1286249 d!1286103)))

(assert (=> bs!629829 (= lambda!139854 lambda!139779)))

(declare-fun bs!629830 () Bool)

(assert (= bs!629830 (and d!1286249 d!1286095)))

(assert (=> bs!629830 (= lambda!139854 lambda!139778)))

(declare-fun bs!629831 () Bool)

(assert (= bs!629831 (and d!1286249 d!1286105)))

(assert (=> bs!629831 (= lambda!139854 lambda!139780)))

(declare-fun bs!629832 () Bool)

(assert (= bs!629832 (and d!1286249 d!1286115)))

(assert (=> bs!629832 (= lambda!139854 lambda!139781)))

(declare-fun bs!629833 () Bool)

(assert (= bs!629833 (and d!1286249 d!1286053)))

(assert (=> bs!629833 (= lambda!139854 lambda!139772)))

(declare-fun bs!629834 () Bool)

(assert (= bs!629834 (and d!1286249 d!1286061)))

(assert (=> bs!629834 (= lambda!139854 lambda!139775)))

(declare-fun bs!629835 () Bool)

(assert (= bs!629835 (and d!1286249 start!420836)))

(assert (=> bs!629835 (= lambda!139854 lambda!139751)))

(declare-fun lt!1566445 () ListMap!2185)

(assert (=> d!1286249 (invariantList!668 (toList!2942 lt!1566445))))

(declare-fun e!2709076 () ListMap!2185)

(assert (=> d!1286249 (= lt!1566445 e!2709076)))

(declare-fun c!740069 () Bool)

(assert (=> d!1286249 (= c!740069 ((_ is Cons!48902) (t!355946 (toList!2941 lt!1566077))))))

(assert (=> d!1286249 (forall!9096 (t!355946 (toList!2941 lt!1566077)) lambda!139854)))

(assert (=> d!1286249 (= (extractMap!538 (t!355946 (toList!2941 lt!1566077))) lt!1566445)))

(declare-fun b!4353327 () Bool)

(assert (=> b!4353327 (= e!2709076 (addToMapMapFromBucket!175 (_2!27438 (h!54443 (t!355946 (toList!2941 lt!1566077)))) (extractMap!538 (t!355946 (t!355946 (toList!2941 lt!1566077))))))))

(declare-fun b!4353328 () Bool)

(assert (=> b!4353328 (= e!2709076 (ListMap!2186 Nil!48901))))

(assert (= (and d!1286249 c!740069) b!4353327))

(assert (= (and d!1286249 (not c!740069)) b!4353328))

(declare-fun m!4965039 () Bool)

(assert (=> d!1286249 m!4965039))

(declare-fun m!4965041 () Bool)

(assert (=> d!1286249 m!4965041))

(declare-fun m!4965043 () Bool)

(assert (=> b!4353327 m!4965043))

(assert (=> b!4353327 m!4965043))

(declare-fun m!4965045 () Bool)

(assert (=> b!4353327 m!4965045))

(assert (=> b!4353041 d!1286249))

(declare-fun bs!629853 () Bool)

(declare-fun b!4353383 () Bool)

(assert (= bs!629853 (and b!4353383 b!4353163)))

(declare-fun lambda!139878 () Int)

(assert (=> bs!629853 (= (= (t!355945 (toList!2942 lt!1566081)) (toList!2942 lt!1566081)) (= lambda!139878 lambda!139792))))

(declare-fun bs!629854 () Bool)

(assert (= bs!629854 (and b!4353383 b!4353210)))

(assert (=> bs!629854 (= (= (t!355945 (toList!2942 lt!1566081)) (toList!2942 lt!1566072)) (= lambda!139878 lambda!139794))))

(assert (=> b!4353383 true))

(declare-fun bs!629855 () Bool)

(declare-fun b!4353384 () Bool)

(assert (= bs!629855 (and b!4353384 b!4353163)))

(declare-fun lambda!139879 () Int)

(assert (=> bs!629855 (= (= (Cons!48901 (h!54442 (toList!2942 lt!1566081)) (t!355945 (toList!2942 lt!1566081))) (toList!2942 lt!1566081)) (= lambda!139879 lambda!139792))))

(declare-fun bs!629857 () Bool)

(assert (= bs!629857 (and b!4353384 b!4353210)))

(assert (=> bs!629857 (= (= (Cons!48901 (h!54442 (toList!2942 lt!1566081)) (t!355945 (toList!2942 lt!1566081))) (toList!2942 lt!1566072)) (= lambda!139879 lambda!139794))))

(declare-fun bs!629858 () Bool)

(assert (= bs!629858 (and b!4353384 b!4353383)))

(assert (=> bs!629858 (= (= (Cons!48901 (h!54442 (toList!2942 lt!1566081)) (t!355945 (toList!2942 lt!1566081))) (t!355945 (toList!2942 lt!1566081))) (= lambda!139879 lambda!139878))))

(assert (=> b!4353384 true))

(declare-fun bs!629862 () Bool)

(declare-fun b!4353379 () Bool)

(assert (= bs!629862 (and b!4353379 b!4353163)))

(declare-fun lambda!139881 () Int)

(assert (=> bs!629862 (= lambda!139881 lambda!139792)))

(declare-fun bs!629863 () Bool)

(assert (= bs!629863 (and b!4353379 b!4353210)))

(assert (=> bs!629863 (= (= (toList!2942 lt!1566081) (toList!2942 lt!1566072)) (= lambda!139881 lambda!139794))))

(declare-fun bs!629864 () Bool)

(assert (= bs!629864 (and b!4353379 b!4353383)))

(assert (=> bs!629864 (= (= (toList!2942 lt!1566081) (t!355945 (toList!2942 lt!1566081))) (= lambda!139881 lambda!139878))))

(declare-fun bs!629865 () Bool)

(assert (= bs!629865 (and b!4353379 b!4353384)))

(assert (=> bs!629865 (= (= (toList!2942 lt!1566081) (Cons!48901 (h!54442 (toList!2942 lt!1566081)) (t!355945 (toList!2942 lt!1566081)))) (= lambda!139881 lambda!139879))))

(assert (=> b!4353379 true))

(declare-fun bs!629868 () Bool)

(declare-fun b!4353385 () Bool)

(assert (= bs!629868 (and b!4353385 b!4353164)))

(declare-fun lambda!139883 () Int)

(assert (=> bs!629868 (= lambda!139883 lambda!139793)))

(declare-fun bs!629869 () Bool)

(assert (= bs!629869 (and b!4353385 b!4353211)))

(assert (=> bs!629869 (= lambda!139883 lambda!139795)))

(declare-fun b!4353378 () Bool)

(declare-fun e!2709106 () List!49028)

(assert (=> b!4353378 (= e!2709106 Nil!48904)))

(declare-fun res!1788845 () Bool)

(declare-fun e!2709108 () Bool)

(assert (=> b!4353379 (=> (not res!1788845) (not e!2709108))))

(declare-fun lt!1566493 () List!49028)

(assert (=> b!4353379 (= res!1788845 (forall!9099 lt!1566493 lambda!139881))))

(declare-fun b!4353380 () Bool)

(assert (=> b!4353380 false))

(declare-fun e!2709105 () Unit!71224)

(declare-fun Unit!71257 () Unit!71224)

(assert (=> b!4353380 (= e!2709105 Unit!71257)))

(declare-fun b!4353381 () Bool)

(declare-fun Unit!71259 () Unit!71224)

(assert (=> b!4353381 (= e!2709105 Unit!71259)))

(declare-fun d!1286251 () Bool)

(assert (=> d!1286251 e!2709108))

(declare-fun res!1788843 () Bool)

(assert (=> d!1286251 (=> (not res!1788843) (not e!2709108))))

(assert (=> d!1286251 (= res!1788843 (noDuplicate!599 lt!1566493))))

(assert (=> d!1286251 (= lt!1566493 e!2709106)))

(declare-fun c!740084 () Bool)

(assert (=> d!1286251 (= c!740084 ((_ is Cons!48901) (toList!2942 lt!1566081)))))

(assert (=> d!1286251 (invariantList!668 (toList!2942 lt!1566081))))

(assert (=> d!1286251 (= (getKeysList!116 (toList!2942 lt!1566081)) lt!1566493)))

(declare-fun b!4353382 () Bool)

(declare-fun res!1788844 () Bool)

(assert (=> b!4353382 (=> (not res!1788844) (not e!2709108))))

(assert (=> b!4353382 (= res!1788844 (= (length!54 lt!1566493) (length!55 (toList!2942 lt!1566081))))))

(assert (=> b!4353383 false))

(declare-fun lt!1566494 () Unit!71224)

(declare-fun forallContained!1744 (List!49028 Int K!10265) Unit!71224)

(assert (=> b!4353383 (= lt!1566494 (forallContained!1744 (getKeysList!116 (t!355945 (toList!2942 lt!1566081))) lambda!139878 (_1!27437 (h!54442 (toList!2942 lt!1566081)))))))

(declare-fun e!2709107 () Unit!71224)

(declare-fun Unit!71263 () Unit!71224)

(assert (=> b!4353383 (= e!2709107 Unit!71263)))

(assert (=> b!4353384 (= e!2709106 (Cons!48904 (_1!27437 (h!54442 (toList!2942 lt!1566081))) (getKeysList!116 (t!355945 (toList!2942 lt!1566081)))))))

(declare-fun c!740082 () Bool)

(assert (=> b!4353384 (= c!740082 (containsKey!663 (t!355945 (toList!2942 lt!1566081)) (_1!27437 (h!54442 (toList!2942 lt!1566081)))))))

(declare-fun lt!1566495 () Unit!71224)

(assert (=> b!4353384 (= lt!1566495 e!2709105)))

(declare-fun c!740083 () Bool)

(assert (=> b!4353384 (= c!740083 (contains!11091 (getKeysList!116 (t!355945 (toList!2942 lt!1566081))) (_1!27437 (h!54442 (toList!2942 lt!1566081)))))))

(declare-fun lt!1566489 () Unit!71224)

(assert (=> b!4353384 (= lt!1566489 e!2709107)))

(declare-fun lt!1566492 () List!49028)

(assert (=> b!4353384 (= lt!1566492 (getKeysList!116 (t!355945 (toList!2942 lt!1566081))))))

(declare-fun lt!1566490 () Unit!71224)

(declare-fun lemmaForallContainsAddHeadPreserves!21 (List!49025 List!49028 tuple2!48286) Unit!71224)

(assert (=> b!4353384 (= lt!1566490 (lemmaForallContainsAddHeadPreserves!21 (t!355945 (toList!2942 lt!1566081)) lt!1566492 (h!54442 (toList!2942 lt!1566081))))))

(assert (=> b!4353384 (forall!9099 lt!1566492 lambda!139879)))

(declare-fun lt!1566491 () Unit!71224)

(assert (=> b!4353384 (= lt!1566491 lt!1566490)))

(assert (=> b!4353385 (= e!2709108 (= (content!7699 lt!1566493) (content!7699 (map!10635 (toList!2942 lt!1566081) lambda!139883))))))

(declare-fun b!4353386 () Bool)

(declare-fun Unit!71266 () Unit!71224)

(assert (=> b!4353386 (= e!2709107 Unit!71266)))

(assert (= (and d!1286251 c!740084) b!4353384))

(assert (= (and d!1286251 (not c!740084)) b!4353378))

(assert (= (and b!4353384 c!740082) b!4353380))

(assert (= (and b!4353384 (not c!740082)) b!4353381))

(assert (= (and b!4353384 c!740083) b!4353383))

(assert (= (and b!4353384 (not c!740083)) b!4353386))

(assert (= (and d!1286251 res!1788843) b!4353382))

(assert (= (and b!4353382 res!1788844) b!4353379))

(assert (= (and b!4353379 res!1788845) b!4353385))

(declare-fun m!4965117 () Bool)

(assert (=> b!4353379 m!4965117))

(declare-fun m!4965119 () Bool)

(assert (=> d!1286251 m!4965119))

(declare-fun m!4965121 () Bool)

(assert (=> d!1286251 m!4965121))

(declare-fun m!4965123 () Bool)

(assert (=> b!4353384 m!4965123))

(declare-fun m!4965125 () Bool)

(assert (=> b!4353384 m!4965125))

(declare-fun m!4965127 () Bool)

(assert (=> b!4353384 m!4965127))

(assert (=> b!4353384 m!4965127))

(declare-fun m!4965129 () Bool)

(assert (=> b!4353384 m!4965129))

(declare-fun m!4965131 () Bool)

(assert (=> b!4353384 m!4965131))

(declare-fun m!4965133 () Bool)

(assert (=> b!4353385 m!4965133))

(declare-fun m!4965135 () Bool)

(assert (=> b!4353385 m!4965135))

(assert (=> b!4353385 m!4965135))

(declare-fun m!4965137 () Bool)

(assert (=> b!4353385 m!4965137))

(assert (=> b!4353383 m!4965127))

(assert (=> b!4353383 m!4965127))

(declare-fun m!4965139 () Bool)

(assert (=> b!4353383 m!4965139))

(declare-fun m!4965141 () Bool)

(assert (=> b!4353382 m!4965141))

(assert (=> b!4353382 m!4964837))

(assert (=> b!4352951 d!1286251))

(declare-fun d!1286279 () Bool)

(assert (=> d!1286279 (isDefined!7744 (getValueByKey!434 (toList!2941 lm!1707) hash!377))))

(declare-fun lt!1566519 () Unit!71224)

(declare-fun choose!26828 (List!49026 (_ BitVec 64)) Unit!71224)

(assert (=> d!1286279 (= lt!1566519 (choose!26828 (toList!2941 lm!1707) hash!377))))

(declare-fun e!2709114 () Bool)

(assert (=> d!1286279 e!2709114))

(declare-fun res!1788851 () Bool)

(assert (=> d!1286279 (=> (not res!1788851) (not e!2709114))))

(assert (=> d!1286279 (= res!1788851 (isStrictlySorted!94 (toList!2941 lm!1707)))))

(assert (=> d!1286279 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!2941 lm!1707) hash!377) lt!1566519)))

(declare-fun b!4353396 () Bool)

(assert (=> b!4353396 (= e!2709114 (containsKey!665 (toList!2941 lm!1707) hash!377))))

(assert (= (and d!1286279 res!1788851) b!4353396))

(assert (=> d!1286279 m!4964769))

(assert (=> d!1286279 m!4964769))

(assert (=> d!1286279 m!4964771))

(declare-fun m!4965163 () Bool)

(assert (=> d!1286279 m!4965163))

(assert (=> d!1286279 m!4964723))

(assert (=> b!4353396 m!4964765))

(assert (=> b!4353076 d!1286279))

(declare-fun d!1286281 () Bool)

(declare-fun isEmpty!28190 (Option!10448) Bool)

(assert (=> d!1286281 (= (isDefined!7744 (getValueByKey!434 (toList!2941 lm!1707) hash!377)) (not (isEmpty!28190 (getValueByKey!434 (toList!2941 lm!1707) hash!377))))))

(declare-fun bs!629880 () Bool)

(assert (= bs!629880 d!1286281))

(assert (=> bs!629880 m!4964769))

(declare-fun m!4965177 () Bool)

(assert (=> bs!629880 m!4965177))

(assert (=> b!4353076 d!1286281))

(declare-fun b!4353399 () Bool)

(declare-fun e!2709116 () Option!10448)

(assert (=> b!4353399 (= e!2709116 (Some!10447 (_2!27438 (h!54443 (toList!2941 lm!1707)))))))

(declare-fun b!4353401 () Bool)

(declare-fun e!2709117 () Option!10448)

(assert (=> b!4353401 (= e!2709117 (getValueByKey!434 (t!355946 (toList!2941 lm!1707)) hash!377))))

(declare-fun d!1286285 () Bool)

(declare-fun c!740087 () Bool)

(assert (=> d!1286285 (= c!740087 (and ((_ is Cons!48902) (toList!2941 lm!1707)) (= (_1!27438 (h!54443 (toList!2941 lm!1707))) hash!377)))))

(assert (=> d!1286285 (= (getValueByKey!434 (toList!2941 lm!1707) hash!377) e!2709116)))

(declare-fun b!4353400 () Bool)

(assert (=> b!4353400 (= e!2709116 e!2709117)))

(declare-fun c!740088 () Bool)

(assert (=> b!4353400 (= c!740088 (and ((_ is Cons!48902) (toList!2941 lm!1707)) (not (= (_1!27438 (h!54443 (toList!2941 lm!1707))) hash!377))))))

(declare-fun b!4353402 () Bool)

(assert (=> b!4353402 (= e!2709117 None!10447)))

(assert (= (and d!1286285 c!740087) b!4353399))

(assert (= (and d!1286285 (not c!740087)) b!4353400))

(assert (= (and b!4353400 c!740088) b!4353401))

(assert (= (and b!4353400 (not c!740088)) b!4353402))

(declare-fun m!4965179 () Bool)

(assert (=> b!4353401 m!4965179))

(assert (=> b!4353076 d!1286285))

(declare-fun bs!629889 () Bool)

(declare-fun b!4353407 () Bool)

(assert (= bs!629889 (and b!4353407 b!4353320)))

(declare-fun lambda!139887 () Int)

(assert (=> bs!629889 (= (= (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139887 lambda!139839))))

(declare-fun bs!629890 () Bool)

(assert (= bs!629890 (and b!4353407 b!4353324)))

(assert (=> bs!629890 (= (= (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139887 lambda!139838))))

(assert (=> bs!629889 (= (= (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))) lt!1566413) (= lambda!139887 lambda!139842))))

(declare-fun bs!629892 () Bool)

(assert (= bs!629892 (and b!4353407 d!1286123)))

(assert (=> bs!629892 (not (= lambda!139887 lambda!139787))))

(declare-fun bs!629893 () Bool)

(assert (= bs!629893 (and b!4353407 d!1286221)))

(assert (=> bs!629893 (= (= (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))) lt!1566415) (= lambda!139887 lambda!139845))))

(assert (=> b!4353407 true))

(declare-fun bs!629895 () Bool)

(declare-fun b!4353403 () Bool)

(assert (= bs!629895 (and b!4353403 b!4353320)))

(declare-fun lambda!139888 () Int)

(assert (=> bs!629895 (= (= (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139888 lambda!139839))))

(declare-fun bs!629896 () Bool)

(assert (= bs!629896 (and b!4353403 b!4353324)))

(assert (=> bs!629896 (= (= (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139888 lambda!139838))))

(assert (=> bs!629895 (= (= (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))) lt!1566413) (= lambda!139888 lambda!139842))))

(declare-fun bs!629898 () Bool)

(assert (= bs!629898 (and b!4353403 b!4353407)))

(assert (=> bs!629898 (= lambda!139888 lambda!139887)))

(declare-fun bs!629899 () Bool)

(assert (= bs!629899 (and b!4353403 d!1286123)))

(assert (=> bs!629899 (not (= lambda!139888 lambda!139787))))

(declare-fun bs!629900 () Bool)

(assert (= bs!629900 (and b!4353403 d!1286221)))

(assert (=> bs!629900 (= (= (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))) lt!1566415) (= lambda!139888 lambda!139845))))

(assert (=> b!4353403 true))

(declare-fun lt!1566532 () ListMap!2185)

(declare-fun lambda!139889 () Int)

(assert (=> bs!629895 (= (= lt!1566532 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139889 lambda!139839))))

(assert (=> bs!629896 (= (= lt!1566532 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139889 lambda!139838))))

(assert (=> bs!629895 (= (= lt!1566532 lt!1566413) (= lambda!139889 lambda!139842))))

(assert (=> bs!629898 (= (= lt!1566532 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139889 lambda!139887))))

(assert (=> bs!629899 (not (= lambda!139889 lambda!139787))))

(assert (=> bs!629900 (= (= lt!1566532 lt!1566415) (= lambda!139889 lambda!139845))))

(assert (=> b!4353403 (= (= lt!1566532 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139889 lambda!139888))))

(assert (=> b!4353403 true))

(declare-fun bs!629906 () Bool)

(declare-fun d!1286287 () Bool)

(assert (= bs!629906 (and d!1286287 b!4353320)))

(declare-fun lt!1566534 () ListMap!2185)

(declare-fun lambda!139892 () Int)

(assert (=> bs!629906 (= (= lt!1566534 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139892 lambda!139839))))

(declare-fun bs!629907 () Bool)

(assert (= bs!629907 (and d!1286287 b!4353324)))

(assert (=> bs!629907 (= (= lt!1566534 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139892 lambda!139838))))

(assert (=> bs!629906 (= (= lt!1566534 lt!1566413) (= lambda!139892 lambda!139842))))

(declare-fun bs!629909 () Bool)

(assert (= bs!629909 (and d!1286287 b!4353407)))

(assert (=> bs!629909 (= (= lt!1566534 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139892 lambda!139887))))

(declare-fun bs!629910 () Bool)

(assert (= bs!629910 (and d!1286287 d!1286123)))

(assert (=> bs!629910 (not (= lambda!139892 lambda!139787))))

(declare-fun bs!629911 () Bool)

(assert (= bs!629911 (and d!1286287 d!1286221)))

(assert (=> bs!629911 (= (= lt!1566534 lt!1566415) (= lambda!139892 lambda!139845))))

(declare-fun bs!629912 () Bool)

(assert (= bs!629912 (and d!1286287 b!4353403)))

(assert (=> bs!629912 (= (= lt!1566534 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139892 lambda!139888))))

(assert (=> bs!629912 (= (= lt!1566534 lt!1566532) (= lambda!139892 lambda!139889))))

(assert (=> d!1286287 true))

(declare-fun e!2709119 () ListMap!2185)

(assert (=> b!4353403 (= e!2709119 lt!1566532)))

(declare-fun lt!1566529 () ListMap!2185)

(assert (=> b!4353403 (= lt!1566529 (+!616 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))) (h!54442 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082)))))))))

(assert (=> b!4353403 (= lt!1566532 (addToMapMapFromBucket!175 (t!355945 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (+!616 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))) (h!54442 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082))))))))))

(declare-fun lt!1566528 () Unit!71224)

(declare-fun call!302536 () Unit!71224)

(assert (=> b!4353403 (= lt!1566528 call!302536)))

(declare-fun call!302537 () Bool)

(assert (=> b!4353403 call!302537))

(declare-fun lt!1566535 () Unit!71224)

(assert (=> b!4353403 (= lt!1566535 lt!1566528)))

(assert (=> b!4353403 (forall!9098 (toList!2942 lt!1566529) lambda!139889)))

(declare-fun lt!1566531 () Unit!71224)

(declare-fun Unit!71267 () Unit!71224)

(assert (=> b!4353403 (= lt!1566531 Unit!71267)))

(assert (=> b!4353403 (forall!9098 (t!355945 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082))))) lambda!139889)))

(declare-fun lt!1566522 () Unit!71224)

(declare-fun Unit!71268 () Unit!71224)

(assert (=> b!4353403 (= lt!1566522 Unit!71268)))

(declare-fun lt!1566538 () Unit!71224)

(declare-fun Unit!71269 () Unit!71224)

(assert (=> b!4353403 (= lt!1566538 Unit!71269)))

(declare-fun lt!1566523 () Unit!71224)

(assert (=> b!4353403 (= lt!1566523 (forallContained!1742 (toList!2942 lt!1566529) lambda!139889 (h!54442 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082)))))))))

(assert (=> b!4353403 (contains!11087 lt!1566529 (_1!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082)))))))))

(declare-fun lt!1566526 () Unit!71224)

(declare-fun Unit!71270 () Unit!71224)

(assert (=> b!4353403 (= lt!1566526 Unit!71270)))

(assert (=> b!4353403 (contains!11087 lt!1566532 (_1!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082)))))))))

(declare-fun lt!1566524 () Unit!71224)

(declare-fun Unit!71271 () Unit!71224)

(assert (=> b!4353403 (= lt!1566524 Unit!71271)))

(assert (=> b!4353403 (forall!9098 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082)))) lambda!139889)))

(declare-fun lt!1566527 () Unit!71224)

(declare-fun Unit!71272 () Unit!71224)

(assert (=> b!4353403 (= lt!1566527 Unit!71272)))

(assert (=> b!4353403 (forall!9098 (toList!2942 lt!1566529) lambda!139889)))

(declare-fun lt!1566537 () Unit!71224)

(declare-fun Unit!71273 () Unit!71224)

(assert (=> b!4353403 (= lt!1566537 Unit!71273)))

(declare-fun lt!1566521 () Unit!71224)

(declare-fun Unit!71274 () Unit!71224)

(assert (=> b!4353403 (= lt!1566521 Unit!71274)))

(declare-fun lt!1566525 () Unit!71224)

(assert (=> b!4353403 (= lt!1566525 (addForallContainsKeyThenBeforeAdding!54 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))) lt!1566532 (_1!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082)))))) (_2!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082))))))))))

(assert (=> b!4353403 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) lambda!139889)))

(declare-fun lt!1566533 () Unit!71224)

(assert (=> b!4353403 (= lt!1566533 lt!1566525)))

(assert (=> b!4353403 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) lambda!139889)))

(declare-fun lt!1566540 () Unit!71224)

(declare-fun Unit!71275 () Unit!71224)

(assert (=> b!4353403 (= lt!1566540 Unit!71275)))

(declare-fun res!1788854 () Bool)

(declare-fun call!302538 () Bool)

(assert (=> b!4353403 (= res!1788854 call!302538)))

(declare-fun e!2709120 () Bool)

(assert (=> b!4353403 (=> (not res!1788854) (not e!2709120))))

(assert (=> b!4353403 e!2709120))

(declare-fun lt!1566539 () Unit!71224)

(declare-fun Unit!71276 () Unit!71224)

(assert (=> b!4353403 (= lt!1566539 Unit!71276)))

(declare-fun e!2709118 () Bool)

(assert (=> d!1286287 e!2709118))

(declare-fun res!1788853 () Bool)

(assert (=> d!1286287 (=> (not res!1788853) (not e!2709118))))

(assert (=> d!1286287 (= res!1788853 (forall!9098 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082)))) lambda!139892))))

(assert (=> d!1286287 (= lt!1566534 e!2709119)))

(declare-fun c!740089 () Bool)

(assert (=> d!1286287 (= c!740089 ((_ is Nil!48901) (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082))))))))

(assert (=> d!1286287 (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082)))))))

(assert (=> d!1286287 (= (addToMapMapFromBucket!175 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082)))) (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) lt!1566534)))

(declare-fun b!4353404 () Bool)

(declare-fun res!1788852 () Bool)

(assert (=> b!4353404 (=> (not res!1788852) (not e!2709118))))

(assert (=> b!4353404 (= res!1788852 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) lambda!139892))))

(declare-fun b!4353405 () Bool)

(assert (=> b!4353405 (= e!2709118 (invariantList!668 (toList!2942 lt!1566534)))))

(declare-fun b!4353406 () Bool)

(assert (=> b!4353406 (= e!2709120 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) lambda!139889))))

(declare-fun bm!302531 () Bool)

(assert (=> bm!302531 (= call!302536 (lemmaContainsAllItsOwnKeys!54 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))))))

(assert (=> b!4353407 (= e!2709119 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))))))

(declare-fun lt!1566536 () Unit!71224)

(assert (=> b!4353407 (= lt!1566536 call!302536)))

(assert (=> b!4353407 call!302537))

(declare-fun lt!1566530 () Unit!71224)

(assert (=> b!4353407 (= lt!1566530 lt!1566536)))

(assert (=> b!4353407 call!302538))

(declare-fun lt!1566541 () Unit!71224)

(declare-fun Unit!71277 () Unit!71224)

(assert (=> b!4353407 (= lt!1566541 Unit!71277)))

(declare-fun bm!302532 () Bool)

(assert (=> bm!302532 (= call!302538 (forall!9098 (ite c!740089 (toList!2942 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (ite c!740089 lambda!139887 lambda!139889)))))

(declare-fun bm!302533 () Bool)

(assert (=> bm!302533 (= call!302537 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (ite c!740089 lambda!139887 lambda!139888)))))

(assert (= (and d!1286287 c!740089) b!4353407))

(assert (= (and d!1286287 (not c!740089)) b!4353403))

(assert (= (and b!4353403 res!1788854) b!4353406))

(assert (= (or b!4353407 b!4353403) bm!302531))

(assert (= (or b!4353407 b!4353403) bm!302533))

(assert (= (or b!4353407 b!4353403) bm!302532))

(assert (= (and d!1286287 res!1788853) b!4353404))

(assert (= (and b!4353404 res!1788852) b!4353405))

(assert (=> bm!302531 m!4964719))

(declare-fun m!4965241 () Bool)

(assert (=> bm!302531 m!4965241))

(declare-fun m!4965243 () Bool)

(assert (=> b!4353405 m!4965243))

(declare-fun m!4965245 () Bool)

(assert (=> bm!302532 m!4965245))

(declare-fun m!4965247 () Bool)

(assert (=> bm!302533 m!4965247))

(declare-fun m!4965249 () Bool)

(assert (=> b!4353404 m!4965249))

(declare-fun m!4965251 () Bool)

(assert (=> d!1286287 m!4965251))

(declare-fun m!4965253 () Bool)

(assert (=> d!1286287 m!4965253))

(declare-fun m!4965255 () Bool)

(assert (=> b!4353403 m!4965255))

(declare-fun m!4965257 () Bool)

(assert (=> b!4353403 m!4965257))

(declare-fun m!4965259 () Bool)

(assert (=> b!4353403 m!4965259))

(declare-fun m!4965261 () Bool)

(assert (=> b!4353403 m!4965261))

(assert (=> b!4353403 m!4965261))

(assert (=> b!4353403 m!4964719))

(declare-fun m!4965267 () Bool)

(assert (=> b!4353403 m!4965267))

(assert (=> b!4353403 m!4964719))

(assert (=> b!4353403 m!4965257))

(declare-fun m!4965273 () Bool)

(assert (=> b!4353403 m!4965273))

(declare-fun m!4965275 () Bool)

(assert (=> b!4353403 m!4965275))

(declare-fun m!4965277 () Bool)

(assert (=> b!4353403 m!4965277))

(declare-fun m!4965279 () Bool)

(assert (=> b!4353403 m!4965279))

(declare-fun m!4965281 () Bool)

(assert (=> b!4353403 m!4965281))

(assert (=> b!4353403 m!4965281))

(assert (=> b!4353406 m!4965261))

(assert (=> b!4353043 d!1286287))

(declare-fun bs!629924 () Bool)

(declare-fun d!1286313 () Bool)

(assert (= bs!629924 (and d!1286313 d!1286119)))

(declare-fun lambda!139894 () Int)

(assert (=> bs!629924 (not (= lambda!139894 lambda!139784))))

(declare-fun bs!629925 () Bool)

(assert (= bs!629925 (and d!1286313 d!1286103)))

(assert (=> bs!629925 (= lambda!139894 lambda!139779)))

(declare-fun bs!629926 () Bool)

(assert (= bs!629926 (and d!1286313 d!1286249)))

(assert (=> bs!629926 (= lambda!139894 lambda!139854)))

(declare-fun bs!629927 () Bool)

(assert (= bs!629927 (and d!1286313 d!1286095)))

(assert (=> bs!629927 (= lambda!139894 lambda!139778)))

(declare-fun bs!629928 () Bool)

(assert (= bs!629928 (and d!1286313 d!1286105)))

(assert (=> bs!629928 (= lambda!139894 lambda!139780)))

(declare-fun bs!629929 () Bool)

(assert (= bs!629929 (and d!1286313 d!1286115)))

(assert (=> bs!629929 (= lambda!139894 lambda!139781)))

(declare-fun bs!629930 () Bool)

(assert (= bs!629930 (and d!1286313 d!1286053)))

(assert (=> bs!629930 (= lambda!139894 lambda!139772)))

(declare-fun bs!629931 () Bool)

(assert (= bs!629931 (and d!1286313 d!1286061)))

(assert (=> bs!629931 (= lambda!139894 lambda!139775)))

(declare-fun bs!629932 () Bool)

(assert (= bs!629932 (and d!1286313 start!420836)))

(assert (=> bs!629932 (= lambda!139894 lambda!139751)))

(declare-fun lt!1566553 () ListMap!2185)

(assert (=> d!1286313 (invariantList!668 (toList!2942 lt!1566553))))

(declare-fun e!2709130 () ListMap!2185)

(assert (=> d!1286313 (= lt!1566553 e!2709130)))

(declare-fun c!740093 () Bool)

(assert (=> d!1286313 (= c!740093 ((_ is Cons!48902) (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))))))

(assert (=> d!1286313 (forall!9096 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))) lambda!139894)))

(assert (=> d!1286313 (= (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))) lt!1566553)))

(declare-fun b!4353423 () Bool)

(assert (=> b!4353423 (= e!2709130 (addToMapMapFromBucket!175 (_2!27438 (h!54443 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (extractMap!538 (t!355946 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082)))))))))

(declare-fun b!4353424 () Bool)

(assert (=> b!4353424 (= e!2709130 (ListMap!2186 Nil!48901))))

(assert (= (and d!1286313 c!740093) b!4353423))

(assert (= (and d!1286313 (not c!740093)) b!4353424))

(declare-fun m!4965303 () Bool)

(assert (=> d!1286313 m!4965303))

(declare-fun m!4965305 () Bool)

(assert (=> d!1286313 m!4965305))

(declare-fun m!4965307 () Bool)

(assert (=> b!4353423 m!4965307))

(assert (=> b!4353423 m!4965307))

(declare-fun m!4965309 () Bool)

(assert (=> b!4353423 m!4965309))

(assert (=> b!4353043 d!1286313))

(declare-fun d!1286321 () Bool)

(declare-fun res!1788868 () Bool)

(declare-fun e!2709134 () Bool)

(assert (=> d!1286321 (=> res!1788868 e!2709134)))

(assert (=> d!1286321 (= res!1788868 (and ((_ is Cons!48901) (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (= (_1!27437 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) key!3918)))))

(assert (=> d!1286321 (= (containsKey!663 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918) e!2709134)))

(declare-fun b!4353429 () Bool)

(declare-fun e!2709135 () Bool)

(assert (=> b!4353429 (= e!2709134 e!2709135)))

(declare-fun res!1788869 () Bool)

(assert (=> b!4353429 (=> (not res!1788869) (not e!2709135))))

(assert (=> b!4353429 (= res!1788869 ((_ is Cons!48901) (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))))

(declare-fun b!4353430 () Bool)

(assert (=> b!4353430 (= e!2709135 (containsKey!663 (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) key!3918))))

(assert (= (and d!1286321 (not res!1788868)) b!4353429))

(assert (= (and b!4353429 res!1788869) b!4353430))

(declare-fun m!4965311 () Bool)

(assert (=> b!4353430 m!4965311))

(assert (=> d!1286113 d!1286321))

(declare-fun d!1286323 () Bool)

(declare-fun res!1788870 () Bool)

(declare-fun e!2709136 () Bool)

(assert (=> d!1286323 (=> res!1788870 e!2709136)))

(assert (=> d!1286323 (= res!1788870 ((_ is Nil!48902) (t!355946 (toList!2941 lt!1566071))))))

(assert (=> d!1286323 (= (forall!9096 (t!355946 (toList!2941 lt!1566071)) lambda!139751) e!2709136)))

(declare-fun b!4353431 () Bool)

(declare-fun e!2709137 () Bool)

(assert (=> b!4353431 (= e!2709136 e!2709137)))

(declare-fun res!1788871 () Bool)

(assert (=> b!4353431 (=> (not res!1788871) (not e!2709137))))

(assert (=> b!4353431 (= res!1788871 (dynLambda!20621 lambda!139751 (h!54443 (t!355946 (toList!2941 lt!1566071)))))))

(declare-fun b!4353432 () Bool)

(assert (=> b!4353432 (= e!2709137 (forall!9096 (t!355946 (t!355946 (toList!2941 lt!1566071))) lambda!139751))))

(assert (= (and d!1286323 (not res!1788870)) b!4353431))

(assert (= (and b!4353431 res!1788871) b!4353432))

(declare-fun b_lambda!130797 () Bool)

(assert (=> (not b_lambda!130797) (not b!4353431)))

(declare-fun m!4965313 () Bool)

(assert (=> b!4353431 m!4965313))

(declare-fun m!4965315 () Bool)

(assert (=> b!4353432 m!4965315))

(assert (=> b!4352838 d!1286323))

(assert (=> b!4353078 d!1286281))

(assert (=> b!4353078 d!1286285))

(declare-fun d!1286325 () Bool)

(declare-fun lt!1566558 () Bool)

(assert (=> d!1286325 (= lt!1566558 (select (content!7699 e!2708834) key!3918))))

(declare-fun e!2709139 () Bool)

(assert (=> d!1286325 (= lt!1566558 e!2709139)))

(declare-fun res!1788873 () Bool)

(assert (=> d!1286325 (=> (not res!1788873) (not e!2709139))))

(assert (=> d!1286325 (= res!1788873 ((_ is Cons!48904) e!2708834))))

(assert (=> d!1286325 (= (contains!11091 e!2708834 key!3918) lt!1566558)))

(declare-fun b!4353433 () Bool)

(declare-fun e!2709138 () Bool)

(assert (=> b!4353433 (= e!2709139 e!2709138)))

(declare-fun res!1788872 () Bool)

(assert (=> b!4353433 (=> res!1788872 e!2709138)))

(assert (=> b!4353433 (= res!1788872 (= (h!54447 e!2708834) key!3918))))

(declare-fun b!4353434 () Bool)

(assert (=> b!4353434 (= e!2709138 (contains!11091 (t!355948 e!2708834) key!3918))))

(assert (= (and d!1286325 res!1788873) b!4353433))

(assert (= (and b!4353433 (not res!1788872)) b!4353434))

(declare-fun m!4965317 () Bool)

(assert (=> d!1286325 m!4965317))

(declare-fun m!4965319 () Bool)

(assert (=> d!1286325 m!4965319))

(declare-fun m!4965321 () Bool)

(assert (=> b!4353434 m!4965321))

(assert (=> bm!302497 d!1286325))

(declare-fun d!1286327 () Bool)

(assert (=> d!1286327 (isDefined!7742 (getValueByKey!435 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918))))

(declare-fun lt!1566561 () Unit!71224)

(declare-fun choose!26829 (List!49025 K!10265) Unit!71224)

(assert (=> d!1286327 (= lt!1566561 (choose!26829 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918))))

(assert (=> d!1286327 (invariantList!668 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))))

(assert (=> d!1286327 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!345 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918) lt!1566561)))

(declare-fun bs!629933 () Bool)

(assert (= bs!629933 d!1286327))

(assert (=> bs!629933 m!4964745))

(assert (=> bs!629933 m!4964745))

(assert (=> bs!629933 m!4964747))

(declare-fun m!4965323 () Bool)

(assert (=> bs!629933 m!4965323))

(declare-fun m!4965325 () Bool)

(assert (=> bs!629933 m!4965325))

(assert (=> b!4353052 d!1286327))

(declare-fun d!1286329 () Bool)

(assert (=> d!1286329 (= (isDefined!7742 (getValueByKey!435 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918)) (not (isEmpty!28189 (getValueByKey!435 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918))))))

(declare-fun bs!629934 () Bool)

(assert (= bs!629934 d!1286329))

(assert (=> bs!629934 m!4964745))

(declare-fun m!4965327 () Bool)

(assert (=> bs!629934 m!4965327))

(assert (=> b!4353052 d!1286329))

(declare-fun b!4353436 () Bool)

(declare-fun e!2709140 () Option!10449)

(declare-fun e!2709141 () Option!10449)

(assert (=> b!4353436 (= e!2709140 e!2709141)))

(declare-fun c!740095 () Bool)

(assert (=> b!4353436 (= c!740095 (and ((_ is Cons!48901) (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (not (= (_1!27437 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) key!3918))))))

(declare-fun b!4353437 () Bool)

(assert (=> b!4353437 (= e!2709141 (getValueByKey!435 (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) key!3918))))

(declare-fun b!4353435 () Bool)

(assert (=> b!4353435 (= e!2709140 (Some!10448 (_2!27437 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))))))

(declare-fun b!4353438 () Bool)

(assert (=> b!4353438 (= e!2709141 None!10448)))

(declare-fun d!1286331 () Bool)

(declare-fun c!740094 () Bool)

(assert (=> d!1286331 (= c!740094 (and ((_ is Cons!48901) (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (= (_1!27437 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) key!3918)))))

(assert (=> d!1286331 (= (getValueByKey!435 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918) e!2709140)))

(assert (= (and d!1286331 c!740094) b!4353435))

(assert (= (and d!1286331 (not c!740094)) b!4353436))

(assert (= (and b!4353436 c!740095) b!4353437))

(assert (= (and b!4353436 (not c!740095)) b!4353438))

(declare-fun m!4965329 () Bool)

(assert (=> b!4353437 m!4965329))

(assert (=> b!4353052 d!1286331))

(declare-fun d!1286333 () Bool)

(assert (=> d!1286333 (contains!11091 (getKeysList!116 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) key!3918)))

(declare-fun lt!1566564 () Unit!71224)

(declare-fun choose!26830 (List!49025 K!10265) Unit!71224)

(assert (=> d!1286333 (= lt!1566564 (choose!26830 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918))))

(assert (=> d!1286333 (invariantList!668 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))))

(assert (=> d!1286333 (= (lemmaInListThenGetKeysListContains!113 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918) lt!1566564)))

(declare-fun bs!629935 () Bool)

(assert (= bs!629935 d!1286333))

(assert (=> bs!629935 m!4964739))

(assert (=> bs!629935 m!4964739))

(declare-fun m!4965331 () Bool)

(assert (=> bs!629935 m!4965331))

(declare-fun m!4965333 () Bool)

(assert (=> bs!629935 m!4965333))

(assert (=> bs!629935 m!4965325))

(assert (=> b!4353052 d!1286333))

(declare-fun d!1286335 () Bool)

(declare-fun lt!1566565 () Bool)

(assert (=> d!1286335 (= lt!1566565 (select (content!7698 (t!355946 (toList!2941 lm!1707))) lt!1566075))))

(declare-fun e!2709143 () Bool)

(assert (=> d!1286335 (= lt!1566565 e!2709143)))

(declare-fun res!1788875 () Bool)

(assert (=> d!1286335 (=> (not res!1788875) (not e!2709143))))

(assert (=> d!1286335 (= res!1788875 ((_ is Cons!48902) (t!355946 (toList!2941 lm!1707))))))

(assert (=> d!1286335 (= (contains!11088 (t!355946 (toList!2941 lm!1707)) lt!1566075) lt!1566565)))

(declare-fun b!4353439 () Bool)

(declare-fun e!2709142 () Bool)

(assert (=> b!4353439 (= e!2709143 e!2709142)))

(declare-fun res!1788874 () Bool)

(assert (=> b!4353439 (=> res!1788874 e!2709142)))

(assert (=> b!4353439 (= res!1788874 (= (h!54443 (t!355946 (toList!2941 lm!1707))) lt!1566075))))

(declare-fun b!4353440 () Bool)

(assert (=> b!4353440 (= e!2709142 (contains!11088 (t!355946 (t!355946 (toList!2941 lm!1707))) lt!1566075))))

(assert (= (and d!1286335 res!1788875) b!4353439))

(assert (= (and b!4353439 (not res!1788874)) b!4353440))

(declare-fun m!4965335 () Bool)

(assert (=> d!1286335 m!4965335))

(declare-fun m!4965337 () Bool)

(assert (=> d!1286335 m!4965337))

(declare-fun m!4965339 () Bool)

(assert (=> b!4353440 m!4965339))

(assert (=> b!4353096 d!1286335))

(declare-fun d!1286337 () Bool)

(declare-fun e!2709144 () Bool)

(assert (=> d!1286337 e!2709144))

(declare-fun res!1788877 () Bool)

(assert (=> d!1286337 (=> (not res!1788877) (not e!2709144))))

(declare-fun lt!1566566 () ListMap!2185)

(assert (=> d!1286337 (= res!1788877 (contains!11087 lt!1566566 (_1!27437 (tuple2!48287 key!3918 newValue!99))))))

(declare-fun lt!1566568 () List!49025)

(assert (=> d!1286337 (= lt!1566566 (ListMap!2186 lt!1566568))))

(declare-fun lt!1566569 () Unit!71224)

(declare-fun lt!1566567 () Unit!71224)

(assert (=> d!1286337 (= lt!1566569 lt!1566567)))

(assert (=> d!1286337 (= (getValueByKey!435 lt!1566568 (_1!27437 (tuple2!48287 key!3918 newValue!99))) (Some!10448 (_2!27437 (tuple2!48287 key!3918 newValue!99))))))

(assert (=> d!1286337 (= lt!1566567 (lemmaContainsTupThenGetReturnValue!210 lt!1566568 (_1!27437 (tuple2!48287 key!3918 newValue!99)) (_2!27437 (tuple2!48287 key!3918 newValue!99))))))

(assert (=> d!1286337 (= lt!1566568 (insertNoDuplicatedKeys!93 (toList!2942 (extractMap!538 (toList!2941 lt!1566077))) (_1!27437 (tuple2!48287 key!3918 newValue!99)) (_2!27437 (tuple2!48287 key!3918 newValue!99))))))

(assert (=> d!1286337 (= (+!616 (extractMap!538 (toList!2941 lt!1566077)) (tuple2!48287 key!3918 newValue!99)) lt!1566566)))

(declare-fun b!4353441 () Bool)

(declare-fun res!1788876 () Bool)

(assert (=> b!4353441 (=> (not res!1788876) (not e!2709144))))

(assert (=> b!4353441 (= res!1788876 (= (getValueByKey!435 (toList!2942 lt!1566566) (_1!27437 (tuple2!48287 key!3918 newValue!99))) (Some!10448 (_2!27437 (tuple2!48287 key!3918 newValue!99)))))))

(declare-fun b!4353442 () Bool)

(assert (=> b!4353442 (= e!2709144 (contains!11092 (toList!2942 lt!1566566) (tuple2!48287 key!3918 newValue!99)))))

(assert (= (and d!1286337 res!1788877) b!4353441))

(assert (= (and b!4353441 res!1788876) b!4353442))

(declare-fun m!4965341 () Bool)

(assert (=> d!1286337 m!4965341))

(declare-fun m!4965343 () Bool)

(assert (=> d!1286337 m!4965343))

(declare-fun m!4965345 () Bool)

(assert (=> d!1286337 m!4965345))

(declare-fun m!4965347 () Bool)

(assert (=> d!1286337 m!4965347))

(declare-fun m!4965349 () Bool)

(assert (=> b!4353441 m!4965349))

(declare-fun m!4965351 () Bool)

(assert (=> b!4353442 m!4965351))

(assert (=> d!1286061 d!1286337))

(declare-fun d!1286339 () Bool)

(assert (=> d!1286339 (eq!249 (extractMap!538 (toList!2941 (+!615 lt!1566077 (tuple2!48289 hash!377 newBucket!200)))) (+!616 (extractMap!538 (toList!2941 lt!1566077)) (tuple2!48287 key!3918 newValue!99)))))

(assert (=> d!1286339 true))

(declare-fun _$10!149 () Unit!71224)

(assert (=> d!1286339 (= (choose!26818 lt!1566077 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) _$10!149)))

(declare-fun bs!629939 () Bool)

(assert (= bs!629939 d!1286339))

(assert (=> bs!629939 m!4964635))

(assert (=> bs!629939 m!4964635))

(assert (=> bs!629939 m!4964627))

(assert (=> bs!629939 m!4964637))

(assert (=> bs!629939 m!4964315))

(assert (=> bs!629939 m!4964629))

(assert (=> bs!629939 m!4964315))

(assert (=> bs!629939 m!4964627))

(assert (=> d!1286061 d!1286339))

(declare-fun d!1286361 () Bool)

(assert (=> d!1286361 (= (eq!249 (extractMap!538 (toList!2941 (+!615 lt!1566077 (tuple2!48289 hash!377 newBucket!200)))) (+!616 (extractMap!538 (toList!2941 lt!1566077)) (tuple2!48287 key!3918 newValue!99))) (= (content!7697 (toList!2942 (extractMap!538 (toList!2941 (+!615 lt!1566077 (tuple2!48289 hash!377 newBucket!200)))))) (content!7697 (toList!2942 (+!616 (extractMap!538 (toList!2941 lt!1566077)) (tuple2!48287 key!3918 newValue!99))))))))

(declare-fun bs!629940 () Bool)

(assert (= bs!629940 d!1286361))

(declare-fun m!4965391 () Bool)

(assert (=> bs!629940 m!4965391))

(declare-fun m!4965393 () Bool)

(assert (=> bs!629940 m!4965393))

(assert (=> d!1286061 d!1286361))

(assert (=> d!1286061 d!1286103))

(declare-fun d!1286365 () Bool)

(declare-fun e!2709161 () Bool)

(assert (=> d!1286365 e!2709161))

(declare-fun res!1788890 () Bool)

(assert (=> d!1286365 (=> (not res!1788890) (not e!2709161))))

(declare-fun lt!1566581 () ListLongMap!1591)

(assert (=> d!1286365 (= res!1788890 (contains!11086 lt!1566581 (_1!27438 (tuple2!48289 hash!377 newBucket!200))))))

(declare-fun lt!1566580 () List!49026)

(assert (=> d!1286365 (= lt!1566581 (ListLongMap!1592 lt!1566580))))

(declare-fun lt!1566583 () Unit!71224)

(declare-fun lt!1566582 () Unit!71224)

(assert (=> d!1286365 (= lt!1566583 lt!1566582)))

(assert (=> d!1286365 (= (getValueByKey!434 lt!1566580 (_1!27438 (tuple2!48289 hash!377 newBucket!200))) (Some!10447 (_2!27438 (tuple2!48289 hash!377 newBucket!200))))))

(assert (=> d!1286365 (= lt!1566582 (lemmaContainsTupThenGetReturnValue!209 lt!1566580 (_1!27438 (tuple2!48289 hash!377 newBucket!200)) (_2!27438 (tuple2!48289 hash!377 newBucket!200))))))

(assert (=> d!1286365 (= lt!1566580 (insertStrictlySorted!125 (toList!2941 lt!1566077) (_1!27438 (tuple2!48289 hash!377 newBucket!200)) (_2!27438 (tuple2!48289 hash!377 newBucket!200))))))

(assert (=> d!1286365 (= (+!615 lt!1566077 (tuple2!48289 hash!377 newBucket!200)) lt!1566581)))

(declare-fun b!4353469 () Bool)

(declare-fun res!1788889 () Bool)

(assert (=> b!4353469 (=> (not res!1788889) (not e!2709161))))

(assert (=> b!4353469 (= res!1788889 (= (getValueByKey!434 (toList!2941 lt!1566581) (_1!27438 (tuple2!48289 hash!377 newBucket!200))) (Some!10447 (_2!27438 (tuple2!48289 hash!377 newBucket!200)))))))

(declare-fun b!4353470 () Bool)

(assert (=> b!4353470 (= e!2709161 (contains!11088 (toList!2941 lt!1566581) (tuple2!48289 hash!377 newBucket!200)))))

(assert (= (and d!1286365 res!1788890) b!4353469))

(assert (= (and b!4353469 res!1788889) b!4353470))

(declare-fun m!4965403 () Bool)

(assert (=> d!1286365 m!4965403))

(declare-fun m!4965405 () Bool)

(assert (=> d!1286365 m!4965405))

(declare-fun m!4965407 () Bool)

(assert (=> d!1286365 m!4965407))

(declare-fun m!4965409 () Bool)

(assert (=> d!1286365 m!4965409))

(declare-fun m!4965411 () Bool)

(assert (=> b!4353469 m!4965411))

(declare-fun m!4965413 () Bool)

(assert (=> b!4353470 m!4965413))

(assert (=> d!1286061 d!1286365))

(declare-fun bs!629941 () Bool)

(declare-fun d!1286369 () Bool)

(assert (= bs!629941 (and d!1286369 d!1286119)))

(declare-fun lambda!139895 () Int)

(assert (=> bs!629941 (not (= lambda!139895 lambda!139784))))

(declare-fun bs!629942 () Bool)

(assert (= bs!629942 (and d!1286369 d!1286103)))

(assert (=> bs!629942 (= lambda!139895 lambda!139779)))

(declare-fun bs!629943 () Bool)

(assert (= bs!629943 (and d!1286369 d!1286249)))

(assert (=> bs!629943 (= lambda!139895 lambda!139854)))

(declare-fun bs!629944 () Bool)

(assert (= bs!629944 (and d!1286369 d!1286095)))

(assert (=> bs!629944 (= lambda!139895 lambda!139778)))

(declare-fun bs!629945 () Bool)

(assert (= bs!629945 (and d!1286369 d!1286105)))

(assert (=> bs!629945 (= lambda!139895 lambda!139780)))

(declare-fun bs!629946 () Bool)

(assert (= bs!629946 (and d!1286369 d!1286115)))

(assert (=> bs!629946 (= lambda!139895 lambda!139781)))

(declare-fun bs!629947 () Bool)

(assert (= bs!629947 (and d!1286369 d!1286053)))

(assert (=> bs!629947 (= lambda!139895 lambda!139772)))

(declare-fun bs!629948 () Bool)

(assert (= bs!629948 (and d!1286369 d!1286061)))

(assert (=> bs!629948 (= lambda!139895 lambda!139775)))

(declare-fun bs!629949 () Bool)

(assert (= bs!629949 (and d!1286369 start!420836)))

(assert (=> bs!629949 (= lambda!139895 lambda!139751)))

(declare-fun bs!629950 () Bool)

(assert (= bs!629950 (and d!1286369 d!1286313)))

(assert (=> bs!629950 (= lambda!139895 lambda!139894)))

(declare-fun lt!1566585 () ListMap!2185)

(assert (=> d!1286369 (invariantList!668 (toList!2942 lt!1566585))))

(declare-fun e!2709167 () ListMap!2185)

(assert (=> d!1286369 (= lt!1566585 e!2709167)))

(declare-fun c!740107 () Bool)

(assert (=> d!1286369 (= c!740107 ((_ is Cons!48902) (toList!2941 (+!615 lt!1566077 (tuple2!48289 hash!377 newBucket!200)))))))

(assert (=> d!1286369 (forall!9096 (toList!2941 (+!615 lt!1566077 (tuple2!48289 hash!377 newBucket!200))) lambda!139895)))

(assert (=> d!1286369 (= (extractMap!538 (toList!2941 (+!615 lt!1566077 (tuple2!48289 hash!377 newBucket!200)))) lt!1566585)))

(declare-fun b!4353481 () Bool)

(assert (=> b!4353481 (= e!2709167 (addToMapMapFromBucket!175 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 (tuple2!48289 hash!377 newBucket!200))))) (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 (tuple2!48289 hash!377 newBucket!200)))))))))

(declare-fun b!4353482 () Bool)

(assert (=> b!4353482 (= e!2709167 (ListMap!2186 Nil!48901))))

(assert (= (and d!1286369 c!740107) b!4353481))

(assert (= (and d!1286369 (not c!740107)) b!4353482))

(declare-fun m!4965431 () Bool)

(assert (=> d!1286369 m!4965431))

(declare-fun m!4965433 () Bool)

(assert (=> d!1286369 m!4965433))

(declare-fun m!4965435 () Bool)

(assert (=> b!4353481 m!4965435))

(assert (=> b!4353481 m!4965435))

(declare-fun m!4965439 () Bool)

(assert (=> b!4353481 m!4965439))

(assert (=> d!1286061 d!1286369))

(declare-fun d!1286377 () Bool)

(declare-fun res!1788899 () Bool)

(declare-fun e!2709174 () Bool)

(assert (=> d!1286377 (=> res!1788899 e!2709174)))

(assert (=> d!1286377 (= res!1788899 ((_ is Nil!48902) (toList!2941 lt!1566077)))))

(assert (=> d!1286377 (= (forall!9096 (toList!2941 lt!1566077) lambda!139775) e!2709174)))

(declare-fun b!4353489 () Bool)

(declare-fun e!2709175 () Bool)

(assert (=> b!4353489 (= e!2709174 e!2709175)))

(declare-fun res!1788900 () Bool)

(assert (=> b!4353489 (=> (not res!1788900) (not e!2709175))))

(assert (=> b!4353489 (= res!1788900 (dynLambda!20621 lambda!139775 (h!54443 (toList!2941 lt!1566077))))))

(declare-fun b!4353490 () Bool)

(assert (=> b!4353490 (= e!2709175 (forall!9096 (t!355946 (toList!2941 lt!1566077)) lambda!139775))))

(assert (= (and d!1286377 (not res!1788899)) b!4353489))

(assert (= (and b!4353489 res!1788900) b!4353490))

(declare-fun b_lambda!130801 () Bool)

(assert (=> (not b_lambda!130801) (not b!4353489)))

(declare-fun m!4965443 () Bool)

(assert (=> b!4353489 m!4965443))

(declare-fun m!4965445 () Bool)

(assert (=> b!4353490 m!4965445))

(assert (=> d!1286061 d!1286377))

(declare-fun bs!629955 () Bool)

(declare-fun b!4353501 () Bool)

(assert (= bs!629955 (and b!4353501 b!4353383)))

(declare-fun lambda!139897 () Int)

(assert (=> bs!629955 (= (= (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (t!355945 (toList!2942 lt!1566081))) (= lambda!139897 lambda!139878))))

(declare-fun bs!629958 () Bool)

(assert (= bs!629958 (and b!4353501 b!4353384)))

(assert (=> bs!629958 (= (= (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (Cons!48901 (h!54442 (toList!2942 lt!1566081)) (t!355945 (toList!2942 lt!1566081)))) (= lambda!139897 lambda!139879))))

(declare-fun bs!629960 () Bool)

(assert (= bs!629960 (and b!4353501 b!4353210)))

(assert (=> bs!629960 (= (= (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (toList!2942 lt!1566072)) (= lambda!139897 lambda!139794))))

(declare-fun bs!629961 () Bool)

(assert (= bs!629961 (and b!4353501 b!4353379)))

(assert (=> bs!629961 (= (= (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (toList!2942 lt!1566081)) (= lambda!139897 lambda!139881))))

(declare-fun bs!629962 () Bool)

(assert (= bs!629962 (and b!4353501 b!4353163)))

(assert (=> bs!629962 (= (= (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (toList!2942 lt!1566081)) (= lambda!139897 lambda!139792))))

(assert (=> b!4353501 true))

(declare-fun bs!629963 () Bool)

(declare-fun b!4353502 () Bool)

(assert (= bs!629963 (and b!4353502 b!4353383)))

(declare-fun lambda!139898 () Int)

(assert (=> bs!629963 (= (= (Cons!48901 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (t!355945 (toList!2942 lt!1566081))) (= lambda!139898 lambda!139878))))

(declare-fun bs!629965 () Bool)

(assert (= bs!629965 (and b!4353502 b!4353384)))

(assert (=> bs!629965 (= (= (Cons!48901 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (Cons!48901 (h!54442 (toList!2942 lt!1566081)) (t!355945 (toList!2942 lt!1566081)))) (= lambda!139898 lambda!139879))))

(declare-fun bs!629967 () Bool)

(assert (= bs!629967 (and b!4353502 b!4353210)))

(assert (=> bs!629967 (= (= (Cons!48901 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (toList!2942 lt!1566072)) (= lambda!139898 lambda!139794))))

(declare-fun bs!629969 () Bool)

(assert (= bs!629969 (and b!4353502 b!4353501)))

(assert (=> bs!629969 (= (= (Cons!48901 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (= lambda!139898 lambda!139897))))

(declare-fun bs!629971 () Bool)

(assert (= bs!629971 (and b!4353502 b!4353379)))

(assert (=> bs!629971 (= (= (Cons!48901 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (toList!2942 lt!1566081)) (= lambda!139898 lambda!139881))))

(declare-fun bs!629973 () Bool)

(assert (= bs!629973 (and b!4353502 b!4353163)))

(assert (=> bs!629973 (= (= (Cons!48901 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (toList!2942 lt!1566081)) (= lambda!139898 lambda!139792))))

(assert (=> b!4353502 true))

(declare-fun bs!629977 () Bool)

(declare-fun b!4353497 () Bool)

(assert (= bs!629977 (and b!4353497 b!4353383)))

(declare-fun lambda!139900 () Int)

(assert (=> bs!629977 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (t!355945 (toList!2942 lt!1566081))) (= lambda!139900 lambda!139878))))

(declare-fun bs!629978 () Bool)

(assert (= bs!629978 (and b!4353497 b!4353384)))

(assert (=> bs!629978 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (Cons!48901 (h!54442 (toList!2942 lt!1566081)) (t!355945 (toList!2942 lt!1566081)))) (= lambda!139900 lambda!139879))))

(declare-fun bs!629979 () Bool)

(assert (= bs!629979 (and b!4353497 b!4353210)))

(assert (=> bs!629979 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (toList!2942 lt!1566072)) (= lambda!139900 lambda!139794))))

(declare-fun bs!629980 () Bool)

(assert (= bs!629980 (and b!4353497 b!4353501)))

(assert (=> bs!629980 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (= lambda!139900 lambda!139897))))

(declare-fun bs!629981 () Bool)

(assert (= bs!629981 (and b!4353497 b!4353379)))

(assert (=> bs!629981 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (toList!2942 lt!1566081)) (= lambda!139900 lambda!139881))))

(declare-fun bs!629982 () Bool)

(assert (= bs!629982 (and b!4353497 b!4353163)))

(assert (=> bs!629982 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (toList!2942 lt!1566081)) (= lambda!139900 lambda!139792))))

(declare-fun bs!629983 () Bool)

(assert (= bs!629983 (and b!4353497 b!4353502)))

(assert (=> bs!629983 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (Cons!48901 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))) (= lambda!139900 lambda!139898))))

(assert (=> b!4353497 true))

(declare-fun bs!629984 () Bool)

(declare-fun b!4353503 () Bool)

(assert (= bs!629984 (and b!4353503 b!4353164)))

(declare-fun lambda!139902 () Int)

(assert (=> bs!629984 (= lambda!139902 lambda!139793)))

(declare-fun bs!629985 () Bool)

(assert (= bs!629985 (and b!4353503 b!4353211)))

(assert (=> bs!629985 (= lambda!139902 lambda!139795)))

(declare-fun bs!629986 () Bool)

(assert (= bs!629986 (and b!4353503 b!4353385)))

(assert (=> bs!629986 (= lambda!139902 lambda!139883)))

(declare-fun b!4353496 () Bool)

(declare-fun e!2709180 () List!49028)

(assert (=> b!4353496 (= e!2709180 Nil!48904)))

(declare-fun res!1788906 () Bool)

(declare-fun e!2709182 () Bool)

(assert (=> b!4353497 (=> (not res!1788906) (not e!2709182))))

(declare-fun lt!1566611 () List!49028)

(assert (=> b!4353497 (= res!1788906 (forall!9099 lt!1566611 lambda!139900))))

(declare-fun b!4353498 () Bool)

(assert (=> b!4353498 false))

(declare-fun e!2709179 () Unit!71224)

(declare-fun Unit!71289 () Unit!71224)

(assert (=> b!4353498 (= e!2709179 Unit!71289)))

(declare-fun b!4353499 () Bool)

(declare-fun Unit!71290 () Unit!71224)

(assert (=> b!4353499 (= e!2709179 Unit!71290)))

(declare-fun d!1286381 () Bool)

(assert (=> d!1286381 e!2709182))

(declare-fun res!1788904 () Bool)

(assert (=> d!1286381 (=> (not res!1788904) (not e!2709182))))

(assert (=> d!1286381 (= res!1788904 (noDuplicate!599 lt!1566611))))

(assert (=> d!1286381 (= lt!1566611 e!2709180)))

(declare-fun c!740111 () Bool)

(assert (=> d!1286381 (= c!740111 ((_ is Cons!48901) (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))))

(assert (=> d!1286381 (invariantList!668 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))))

(assert (=> d!1286381 (= (getKeysList!116 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) lt!1566611)))

(declare-fun b!4353500 () Bool)

(declare-fun res!1788905 () Bool)

(assert (=> b!4353500 (=> (not res!1788905) (not e!2709182))))

(assert (=> b!4353500 (= res!1788905 (= (length!54 lt!1566611) (length!55 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))))))

(assert (=> b!4353501 false))

(declare-fun lt!1566612 () Unit!71224)

(assert (=> b!4353501 (= lt!1566612 (forallContained!1744 (getKeysList!116 (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) lambda!139897 (_1!27437 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))))))

(declare-fun e!2709181 () Unit!71224)

(declare-fun Unit!71291 () Unit!71224)

(assert (=> b!4353501 (= e!2709181 Unit!71291)))

(assert (=> b!4353502 (= e!2709180 (Cons!48904 (_1!27437 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (getKeysList!116 (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))))))

(declare-fun c!740109 () Bool)

(assert (=> b!4353502 (= c!740109 (containsKey!663 (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (_1!27437 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))))))

(declare-fun lt!1566613 () Unit!71224)

(assert (=> b!4353502 (= lt!1566613 e!2709179)))

(declare-fun c!740110 () Bool)

(assert (=> b!4353502 (= c!740110 (contains!11091 (getKeysList!116 (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (_1!27437 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))))))

(declare-fun lt!1566607 () Unit!71224)

(assert (=> b!4353502 (= lt!1566607 e!2709181)))

(declare-fun lt!1566610 () List!49028)

(assert (=> b!4353502 (= lt!1566610 (getKeysList!116 (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))))))

(declare-fun lt!1566608 () Unit!71224)

(assert (=> b!4353502 (= lt!1566608 (lemmaForallContainsAddHeadPreserves!21 (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) lt!1566610 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))))))

(assert (=> b!4353502 (forall!9099 lt!1566610 lambda!139898)))

(declare-fun lt!1566609 () Unit!71224)

(assert (=> b!4353502 (= lt!1566609 lt!1566608)))

(assert (=> b!4353503 (= e!2709182 (= (content!7699 lt!1566611) (content!7699 (map!10635 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) lambda!139902))))))

(declare-fun b!4353504 () Bool)

(declare-fun Unit!71292 () Unit!71224)

(assert (=> b!4353504 (= e!2709181 Unit!71292)))

(assert (= (and d!1286381 c!740111) b!4353502))

(assert (= (and d!1286381 (not c!740111)) b!4353496))

(assert (= (and b!4353502 c!740109) b!4353498))

(assert (= (and b!4353502 (not c!740109)) b!4353499))

(assert (= (and b!4353502 c!740110) b!4353501))

(assert (= (and b!4353502 (not c!740110)) b!4353504))

(assert (= (and d!1286381 res!1788904) b!4353500))

(assert (= (and b!4353500 res!1788905) b!4353497))

(assert (= (and b!4353497 res!1788906) b!4353503))

(declare-fun m!4965447 () Bool)

(assert (=> b!4353497 m!4965447))

(declare-fun m!4965449 () Bool)

(assert (=> d!1286381 m!4965449))

(assert (=> d!1286381 m!4965325))

(declare-fun m!4965451 () Bool)

(assert (=> b!4353502 m!4965451))

(declare-fun m!4965453 () Bool)

(assert (=> b!4353502 m!4965453))

(declare-fun m!4965455 () Bool)

(assert (=> b!4353502 m!4965455))

(assert (=> b!4353502 m!4965455))

(declare-fun m!4965457 () Bool)

(assert (=> b!4353502 m!4965457))

(declare-fun m!4965459 () Bool)

(assert (=> b!4353502 m!4965459))

(declare-fun m!4965461 () Bool)

(assert (=> b!4353503 m!4965461))

(declare-fun m!4965463 () Bool)

(assert (=> b!4353503 m!4965463))

(assert (=> b!4353503 m!4965463))

(declare-fun m!4965465 () Bool)

(assert (=> b!4353503 m!4965465))

(assert (=> b!4353501 m!4965455))

(assert (=> b!4353501 m!4965455))

(declare-fun m!4965467 () Bool)

(assert (=> b!4353501 m!4965467))

(declare-fun m!4965469 () Bool)

(assert (=> b!4353500 m!4965469))

(declare-fun m!4965471 () Bool)

(assert (=> b!4353500 m!4965471))

(assert (=> b!4353057 d!1286381))

(declare-fun b!4353506 () Bool)

(declare-fun e!2709183 () Option!10449)

(declare-fun e!2709184 () Option!10449)

(assert (=> b!4353506 (= e!2709183 e!2709184)))

(declare-fun c!740113 () Bool)

(assert (=> b!4353506 (= c!740113 (and ((_ is Cons!48901) (toList!2942 lt!1566256)) (not (= (_1!27437 (h!54442 (toList!2942 lt!1566256))) (_1!27437 lt!1566079)))))))

(declare-fun b!4353507 () Bool)

(assert (=> b!4353507 (= e!2709184 (getValueByKey!435 (t!355945 (toList!2942 lt!1566256)) (_1!27437 lt!1566079)))))

(declare-fun b!4353505 () Bool)

(assert (=> b!4353505 (= e!2709183 (Some!10448 (_2!27437 (h!54442 (toList!2942 lt!1566256)))))))

(declare-fun b!4353508 () Bool)

(assert (=> b!4353508 (= e!2709184 None!10448)))

(declare-fun d!1286383 () Bool)

(declare-fun c!740112 () Bool)

(assert (=> d!1286383 (= c!740112 (and ((_ is Cons!48901) (toList!2942 lt!1566256)) (= (_1!27437 (h!54442 (toList!2942 lt!1566256))) (_1!27437 lt!1566079))))))

(assert (=> d!1286383 (= (getValueByKey!435 (toList!2942 lt!1566256) (_1!27437 lt!1566079)) e!2709183)))

(assert (= (and d!1286383 c!740112) b!4353505))

(assert (= (and d!1286383 (not c!740112)) b!4353506))

(assert (= (and b!4353506 c!740113) b!4353507))

(assert (= (and b!4353506 (not c!740113)) b!4353508))

(declare-fun m!4965473 () Bool)

(assert (=> b!4353507 m!4965473))

(assert (=> b!4353031 d!1286383))

(declare-fun d!1286385 () Bool)

(declare-fun res!1788907 () Bool)

(declare-fun e!2709185 () Bool)

(assert (=> d!1286385 (=> res!1788907 e!2709185)))

(assert (=> d!1286385 (= res!1788907 (and ((_ is Cons!48901) (t!355945 newBucket!200)) (= (_1!27437 (h!54442 (t!355945 newBucket!200))) (_1!27437 (h!54442 newBucket!200)))))))

(assert (=> d!1286385 (= (containsKey!661 (t!355945 newBucket!200) (_1!27437 (h!54442 newBucket!200))) e!2709185)))

(declare-fun b!4353509 () Bool)

(declare-fun e!2709186 () Bool)

(assert (=> b!4353509 (= e!2709185 e!2709186)))

(declare-fun res!1788908 () Bool)

(assert (=> b!4353509 (=> (not res!1788908) (not e!2709186))))

(assert (=> b!4353509 (= res!1788908 ((_ is Cons!48901) (t!355945 newBucket!200)))))

(declare-fun b!4353510 () Bool)

(assert (=> b!4353510 (= e!2709186 (containsKey!661 (t!355945 (t!355945 newBucket!200)) (_1!27437 (h!54442 newBucket!200))))))

(assert (= (and d!1286385 (not res!1788907)) b!4353509))

(assert (= (and b!4353509 res!1788908) b!4353510))

(declare-fun m!4965475 () Bool)

(assert (=> b!4353510 m!4965475))

(assert (=> b!4353049 d!1286385))

(declare-fun d!1286387 () Bool)

(declare-fun lt!1566614 () Bool)

(assert (=> d!1286387 (= lt!1566614 (select (content!7699 e!2708906) key!3918))))

(declare-fun e!2709188 () Bool)

(assert (=> d!1286387 (= lt!1566614 e!2709188)))

(declare-fun res!1788910 () Bool)

(assert (=> d!1286387 (=> (not res!1788910) (not e!2709188))))

(assert (=> d!1286387 (= res!1788910 ((_ is Cons!48904) e!2708906))))

(assert (=> d!1286387 (= (contains!11091 e!2708906 key!3918) lt!1566614)))

(declare-fun b!4353511 () Bool)

(declare-fun e!2709187 () Bool)

(assert (=> b!4353511 (= e!2709188 e!2709187)))

(declare-fun res!1788909 () Bool)

(assert (=> b!4353511 (=> res!1788909 e!2709187)))

(assert (=> b!4353511 (= res!1788909 (= (h!54447 e!2708906) key!3918))))

(declare-fun b!4353512 () Bool)

(assert (=> b!4353512 (= e!2709187 (contains!11091 (t!355948 e!2708906) key!3918))))

(assert (= (and d!1286387 res!1788910) b!4353511))

(assert (= (and b!4353511 (not res!1788909)) b!4353512))

(declare-fun m!4965477 () Bool)

(assert (=> d!1286387 m!4965477))

(declare-fun m!4965479 () Bool)

(assert (=> d!1286387 m!4965479))

(declare-fun m!4965481 () Bool)

(assert (=> b!4353512 m!4965481))

(assert (=> bm!302500 d!1286387))

(declare-fun d!1286389 () Bool)

(declare-fun res!1788919 () Bool)

(declare-fun e!2709197 () Bool)

(assert (=> d!1286389 (=> res!1788919 e!2709197)))

(assert (=> d!1286389 (= res!1788919 (and ((_ is Cons!48902) (toList!2941 lm!1707)) (= (_1!27438 (h!54443 (toList!2941 lm!1707))) hash!377)))))

(assert (=> d!1286389 (= (containsKey!665 (toList!2941 lm!1707) hash!377) e!2709197)))

(declare-fun b!4353521 () Bool)

(declare-fun e!2709198 () Bool)

(assert (=> b!4353521 (= e!2709197 e!2709198)))

(declare-fun res!1788920 () Bool)

(assert (=> b!4353521 (=> (not res!1788920) (not e!2709198))))

(assert (=> b!4353521 (= res!1788920 (and (or (not ((_ is Cons!48902) (toList!2941 lm!1707))) (bvsle (_1!27438 (h!54443 (toList!2941 lm!1707))) hash!377)) ((_ is Cons!48902) (toList!2941 lm!1707)) (bvslt (_1!27438 (h!54443 (toList!2941 lm!1707))) hash!377)))))

(declare-fun b!4353522 () Bool)

(assert (=> b!4353522 (= e!2709198 (containsKey!665 (t!355946 (toList!2941 lm!1707)) hash!377))))

(assert (= (and d!1286389 (not res!1788919)) b!4353521))

(assert (= (and b!4353521 res!1788920) b!4353522))

(declare-fun m!4965523 () Bool)

(assert (=> b!4353522 m!4965523))

(assert (=> d!1286125 d!1286389))

(declare-fun d!1286397 () Bool)

(declare-fun choose!26831 (Hashable!4871 K!10265) (_ BitVec 64))

(assert (=> d!1286397 (= (hash!1515 hashF!1247 key!3918) (choose!26831 hashF!1247 key!3918))))

(declare-fun bs!629996 () Bool)

(assert (= bs!629996 d!1286397))

(declare-fun m!4965531 () Bool)

(assert (=> bs!629996 m!4965531))

(assert (=> d!1286121 d!1286397))

(declare-fun b!4353527 () Bool)

(declare-fun e!2709203 () Option!10448)

(assert (=> b!4353527 (= e!2709203 (Some!10447 (_2!27438 (h!54443 (toList!2941 lt!1566264)))))))

(declare-fun b!4353529 () Bool)

(declare-fun e!2709204 () Option!10448)

(assert (=> b!4353529 (= e!2709204 (getValueByKey!434 (t!355946 (toList!2941 lt!1566264)) (_1!27438 lt!1566082)))))

(declare-fun d!1286403 () Bool)

(declare-fun c!740114 () Bool)

(assert (=> d!1286403 (= c!740114 (and ((_ is Cons!48902) (toList!2941 lt!1566264)) (= (_1!27438 (h!54443 (toList!2941 lt!1566264))) (_1!27438 lt!1566082))))))

(assert (=> d!1286403 (= (getValueByKey!434 (toList!2941 lt!1566264) (_1!27438 lt!1566082)) e!2709203)))

(declare-fun b!4353528 () Bool)

(assert (=> b!4353528 (= e!2709203 e!2709204)))

(declare-fun c!740115 () Bool)

(assert (=> b!4353528 (= c!740115 (and ((_ is Cons!48902) (toList!2941 lt!1566264)) (not (= (_1!27438 (h!54443 (toList!2941 lt!1566264))) (_1!27438 lt!1566082)))))))

(declare-fun b!4353530 () Bool)

(assert (=> b!4353530 (= e!2709204 None!10447)))

(assert (= (and d!1286403 c!740114) b!4353527))

(assert (= (and d!1286403 (not c!740114)) b!4353528))

(assert (= (and b!4353528 c!740115) b!4353529))

(assert (= (and b!4353528 (not c!740115)) b!4353530))

(declare-fun m!4965535 () Bool)

(assert (=> b!4353529 m!4965535))

(assert (=> b!4353039 d!1286403))

(declare-fun d!1286407 () Bool)

(declare-fun res!1788925 () Bool)

(declare-fun e!2709205 () Bool)

(assert (=> d!1286407 (=> res!1788925 e!2709205)))

(assert (=> d!1286407 (= res!1788925 ((_ is Nil!48902) (t!355946 (toList!2941 lm!1707))))))

(assert (=> d!1286407 (= (forall!9096 (t!355946 (toList!2941 lm!1707)) lambda!139751) e!2709205)))

(declare-fun b!4353531 () Bool)

(declare-fun e!2709206 () Bool)

(assert (=> b!4353531 (= e!2709205 e!2709206)))

(declare-fun res!1788926 () Bool)

(assert (=> b!4353531 (=> (not res!1788926) (not e!2709206))))

(assert (=> b!4353531 (= res!1788926 (dynLambda!20621 lambda!139751 (h!54443 (t!355946 (toList!2941 lm!1707)))))))

(declare-fun b!4353532 () Bool)

(assert (=> b!4353532 (= e!2709206 (forall!9096 (t!355946 (t!355946 (toList!2941 lm!1707))) lambda!139751))))

(assert (= (and d!1286407 (not res!1788925)) b!4353531))

(assert (= (and b!4353531 res!1788926) b!4353532))

(declare-fun b_lambda!130805 () Bool)

(assert (=> (not b_lambda!130805) (not b!4353531)))

(declare-fun m!4965537 () Bool)

(assert (=> b!4353531 m!4965537))

(declare-fun m!4965539 () Bool)

(assert (=> b!4353532 m!4965539))

(assert (=> b!4352886 d!1286407))

(declare-fun d!1286409 () Bool)

(assert (=> d!1286409 (= (invariantList!668 (toList!2942 lt!1566280)) (noDuplicatedKeys!116 (toList!2942 lt!1566280)))))

(declare-fun bs!629998 () Bool)

(assert (= bs!629998 d!1286409))

(declare-fun m!4965541 () Bool)

(assert (=> bs!629998 m!4965541))

(assert (=> d!1286115 d!1286409))

(declare-fun d!1286411 () Bool)

(declare-fun res!1788927 () Bool)

(declare-fun e!2709207 () Bool)

(assert (=> d!1286411 (=> res!1788927 e!2709207)))

(assert (=> d!1286411 (= res!1788927 ((_ is Nil!48902) (toList!2941 lm!1707)))))

(assert (=> d!1286411 (= (forall!9096 (toList!2941 lm!1707) lambda!139781) e!2709207)))

(declare-fun b!4353533 () Bool)

(declare-fun e!2709208 () Bool)

(assert (=> b!4353533 (= e!2709207 e!2709208)))

(declare-fun res!1788928 () Bool)

(assert (=> b!4353533 (=> (not res!1788928) (not e!2709208))))

(assert (=> b!4353533 (= res!1788928 (dynLambda!20621 lambda!139781 (h!54443 (toList!2941 lm!1707))))))

(declare-fun b!4353534 () Bool)

(assert (=> b!4353534 (= e!2709208 (forall!9096 (t!355946 (toList!2941 lm!1707)) lambda!139781))))

(assert (= (and d!1286411 (not res!1788927)) b!4353533))

(assert (= (and b!4353533 res!1788928) b!4353534))

(declare-fun b_lambda!130807 () Bool)

(assert (=> (not b_lambda!130807) (not b!4353533)))

(declare-fun m!4965543 () Bool)

(assert (=> b!4353533 m!4965543))

(declare-fun m!4965545 () Bool)

(assert (=> b!4353534 m!4965545))

(assert (=> d!1286115 d!1286411))

(declare-fun d!1286413 () Bool)

(assert (=> d!1286413 (= (get!15880 (getValueByKey!434 (toList!2941 lm!1707) hash!377)) (v!43291 (getValueByKey!434 (toList!2941 lm!1707) hash!377)))))

(assert (=> d!1286127 d!1286413))

(assert (=> d!1286127 d!1286285))

(declare-fun d!1286415 () Bool)

(assert (=> d!1286415 (isDefined!7742 (getValueByKey!435 (toList!2942 lt!1566072) key!3918))))

(declare-fun lt!1566618 () Unit!71224)

(assert (=> d!1286415 (= lt!1566618 (choose!26829 (toList!2942 lt!1566072) key!3918))))

(assert (=> d!1286415 (invariantList!668 (toList!2942 lt!1566072))))

(assert (=> d!1286415 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!345 (toList!2942 lt!1566072) key!3918) lt!1566618)))

(declare-fun bs!629999 () Bool)

(assert (= bs!629999 d!1286415))

(assert (=> bs!629999 m!4964653))

(assert (=> bs!629999 m!4964653))

(assert (=> bs!629999 m!4964655))

(declare-fun m!4965547 () Bool)

(assert (=> bs!629999 m!4965547))

(assert (=> bs!629999 m!4964873))

(assert (=> b!4353019 d!1286415))

(declare-fun d!1286417 () Bool)

(assert (=> d!1286417 (= (isDefined!7742 (getValueByKey!435 (toList!2942 lt!1566072) key!3918)) (not (isEmpty!28189 (getValueByKey!435 (toList!2942 lt!1566072) key!3918))))))

(declare-fun bs!630000 () Bool)

(assert (= bs!630000 d!1286417))

(assert (=> bs!630000 m!4964653))

(declare-fun m!4965549 () Bool)

(assert (=> bs!630000 m!4965549))

(assert (=> b!4353019 d!1286417))

(declare-fun b!4353540 () Bool)

(declare-fun e!2709213 () Option!10449)

(declare-fun e!2709214 () Option!10449)

(assert (=> b!4353540 (= e!2709213 e!2709214)))

(declare-fun c!740117 () Bool)

(assert (=> b!4353540 (= c!740117 (and ((_ is Cons!48901) (toList!2942 lt!1566072)) (not (= (_1!27437 (h!54442 (toList!2942 lt!1566072))) key!3918))))))

(declare-fun b!4353541 () Bool)

(assert (=> b!4353541 (= e!2709214 (getValueByKey!435 (t!355945 (toList!2942 lt!1566072)) key!3918))))

(declare-fun b!4353539 () Bool)

(assert (=> b!4353539 (= e!2709213 (Some!10448 (_2!27437 (h!54442 (toList!2942 lt!1566072)))))))

(declare-fun b!4353542 () Bool)

(assert (=> b!4353542 (= e!2709214 None!10448)))

(declare-fun d!1286419 () Bool)

(declare-fun c!740116 () Bool)

(assert (=> d!1286419 (= c!740116 (and ((_ is Cons!48901) (toList!2942 lt!1566072)) (= (_1!27437 (h!54442 (toList!2942 lt!1566072))) key!3918)))))

(assert (=> d!1286419 (= (getValueByKey!435 (toList!2942 lt!1566072) key!3918) e!2709213)))

(assert (= (and d!1286419 c!740116) b!4353539))

(assert (= (and d!1286419 (not c!740116)) b!4353540))

(assert (= (and b!4353540 c!740117) b!4353541))

(assert (= (and b!4353540 (not c!740117)) b!4353542))

(declare-fun m!4965551 () Bool)

(assert (=> b!4353541 m!4965551))

(assert (=> b!4353019 d!1286419))

(declare-fun d!1286421 () Bool)

(assert (=> d!1286421 (contains!11091 (getKeysList!116 (toList!2942 lt!1566072)) key!3918)))

(declare-fun lt!1566619 () Unit!71224)

(assert (=> d!1286421 (= lt!1566619 (choose!26830 (toList!2942 lt!1566072) key!3918))))

(assert (=> d!1286421 (invariantList!668 (toList!2942 lt!1566072))))

(assert (=> d!1286421 (= (lemmaInListThenGetKeysListContains!113 (toList!2942 lt!1566072) key!3918) lt!1566619)))

(declare-fun bs!630001 () Bool)

(assert (= bs!630001 d!1286421))

(assert (=> bs!630001 m!4964647))

(assert (=> bs!630001 m!4964647))

(declare-fun m!4965553 () Bool)

(assert (=> bs!630001 m!4965553))

(declare-fun m!4965555 () Bool)

(assert (=> bs!630001 m!4965555))

(assert (=> bs!630001 m!4964873))

(assert (=> b!4353019 d!1286421))

(declare-fun d!1286423 () Bool)

(assert (=> d!1286423 (= (invariantList!668 (toList!2942 lt!1566262)) (noDuplicatedKeys!116 (toList!2942 lt!1566262)))))

(declare-fun bs!630002 () Bool)

(assert (= bs!630002 d!1286423))

(declare-fun m!4965557 () Bool)

(assert (=> bs!630002 m!4965557))

(assert (=> d!1286095 d!1286423))

(declare-fun d!1286425 () Bool)

(declare-fun res!1788935 () Bool)

(declare-fun e!2709217 () Bool)

(assert (=> d!1286425 (=> res!1788935 e!2709217)))

(assert (=> d!1286425 (= res!1788935 ((_ is Nil!48902) (t!355946 (toList!2941 lm!1707))))))

(assert (=> d!1286425 (= (forall!9096 (t!355946 (toList!2941 lm!1707)) lambda!139778) e!2709217)))

(declare-fun b!4353545 () Bool)

(declare-fun e!2709218 () Bool)

(assert (=> b!4353545 (= e!2709217 e!2709218)))

(declare-fun res!1788936 () Bool)

(assert (=> b!4353545 (=> (not res!1788936) (not e!2709218))))

(assert (=> b!4353545 (= res!1788936 (dynLambda!20621 lambda!139778 (h!54443 (t!355946 (toList!2941 lm!1707)))))))

(declare-fun b!4353546 () Bool)

(assert (=> b!4353546 (= e!2709218 (forall!9096 (t!355946 (t!355946 (toList!2941 lm!1707))) lambda!139778))))

(assert (= (and d!1286425 (not res!1788935)) b!4353545))

(assert (= (and b!4353545 res!1788936) b!4353546))

(declare-fun b_lambda!130809 () Bool)

(assert (=> (not b_lambda!130809) (not b!4353545)))

(declare-fun m!4965565 () Bool)

(assert (=> b!4353545 m!4965565))

(declare-fun m!4965567 () Bool)

(assert (=> b!4353546 m!4965567))

(assert (=> d!1286095 d!1286425))

(declare-fun d!1286429 () Bool)

(declare-fun res!1788939 () Bool)

(declare-fun e!2709221 () Bool)

(assert (=> d!1286429 (=> res!1788939 e!2709221)))

(assert (=> d!1286429 (= res!1788939 (and ((_ is Cons!48901) (toList!2942 lt!1566081)) (= (_1!27437 (h!54442 (toList!2942 lt!1566081))) key!3918)))))

(assert (=> d!1286429 (= (containsKey!663 (toList!2942 lt!1566081) key!3918) e!2709221)))

(declare-fun b!4353549 () Bool)

(declare-fun e!2709222 () Bool)

(assert (=> b!4353549 (= e!2709221 e!2709222)))

(declare-fun res!1788940 () Bool)

(assert (=> b!4353549 (=> (not res!1788940) (not e!2709222))))

(assert (=> b!4353549 (= res!1788940 ((_ is Cons!48901) (toList!2942 lt!1566081)))))

(declare-fun b!4353550 () Bool)

(assert (=> b!4353550 (= e!2709222 (containsKey!663 (t!355945 (toList!2942 lt!1566081)) key!3918))))

(assert (= (and d!1286429 (not res!1788939)) b!4353549))

(assert (= (and b!4353549 res!1788940) b!4353550))

(declare-fun m!4965571 () Bool)

(assert (=> b!4353550 m!4965571))

(assert (=> d!1286021 d!1286429))

(declare-fun bs!630003 () Bool)

(declare-fun b!4353559 () Bool)

(assert (= bs!630003 (and b!4353559 b!4353320)))

(declare-fun lambda!139904 () Int)

(assert (=> bs!630003 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139904 lambda!139839))))

(declare-fun bs!630004 () Bool)

(assert (= bs!630004 (and b!4353559 b!4353324)))

(assert (=> bs!630004 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139904 lambda!139838))))

(assert (=> bs!630003 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) lt!1566413) (= lambda!139904 lambda!139842))))

(declare-fun bs!630005 () Bool)

(assert (= bs!630005 (and b!4353559 b!4353407)))

(assert (=> bs!630005 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139904 lambda!139887))))

(declare-fun bs!630006 () Bool)

(assert (= bs!630006 (and b!4353559 d!1286123)))

(assert (=> bs!630006 (not (= lambda!139904 lambda!139787))))

(declare-fun bs!630007 () Bool)

(assert (= bs!630007 (and b!4353559 d!1286221)))

(assert (=> bs!630007 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) lt!1566415) (= lambda!139904 lambda!139845))))

(declare-fun bs!630008 () Bool)

(assert (= bs!630008 (and b!4353559 d!1286287)))

(assert (=> bs!630008 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) lt!1566534) (= lambda!139904 lambda!139892))))

(declare-fun bs!630009 () Bool)

(assert (= bs!630009 (and b!4353559 b!4353403)))

(assert (=> bs!630009 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139904 lambda!139888))))

(assert (=> bs!630009 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) lt!1566532) (= lambda!139904 lambda!139889))))

(assert (=> b!4353559 true))

(declare-fun bs!630011 () Bool)

(declare-fun b!4353555 () Bool)

(assert (= bs!630011 (and b!4353555 b!4353559)))

(declare-fun lambda!139905 () Int)

(assert (=> bs!630011 (= lambda!139905 lambda!139904)))

(declare-fun bs!630012 () Bool)

(assert (= bs!630012 (and b!4353555 b!4353320)))

(assert (=> bs!630012 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139905 lambda!139839))))

(declare-fun bs!630013 () Bool)

(assert (= bs!630013 (and b!4353555 b!4353324)))

(assert (=> bs!630013 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139905 lambda!139838))))

(assert (=> bs!630012 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) lt!1566413) (= lambda!139905 lambda!139842))))

(declare-fun bs!630014 () Bool)

(assert (= bs!630014 (and b!4353555 b!4353407)))

(assert (=> bs!630014 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139905 lambda!139887))))

(declare-fun bs!630015 () Bool)

(assert (= bs!630015 (and b!4353555 d!1286123)))

(assert (=> bs!630015 (not (= lambda!139905 lambda!139787))))

(declare-fun bs!630016 () Bool)

(assert (= bs!630016 (and b!4353555 d!1286221)))

(assert (=> bs!630016 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) lt!1566415) (= lambda!139905 lambda!139845))))

(declare-fun bs!630017 () Bool)

(assert (= bs!630017 (and b!4353555 d!1286287)))

(assert (=> bs!630017 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) lt!1566534) (= lambda!139905 lambda!139892))))

(declare-fun bs!630018 () Bool)

(assert (= bs!630018 (and b!4353555 b!4353403)))

(assert (=> bs!630018 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139905 lambda!139888))))

(assert (=> bs!630018 (= (= (extractMap!538 (t!355946 (toList!2941 lm!1707))) lt!1566532) (= lambda!139905 lambda!139889))))

(assert (=> b!4353555 true))

(declare-fun lt!1566633 () ListMap!2185)

(declare-fun lambda!139906 () Int)

(assert (=> bs!630011 (= (= lt!1566633 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (= lambda!139906 lambda!139904))))

(assert (=> bs!630012 (= (= lt!1566633 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139906 lambda!139839))))

(assert (=> bs!630012 (= (= lt!1566633 lt!1566413) (= lambda!139906 lambda!139842))))

(assert (=> bs!630014 (= (= lt!1566633 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139906 lambda!139887))))

(assert (=> bs!630015 (not (= lambda!139906 lambda!139787))))

(assert (=> bs!630016 (= (= lt!1566633 lt!1566415) (= lambda!139906 lambda!139845))))

(assert (=> bs!630017 (= (= lt!1566633 lt!1566534) (= lambda!139906 lambda!139892))))

(assert (=> bs!630013 (= (= lt!1566633 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139906 lambda!139838))))

(assert (=> b!4353555 (= (= lt!1566633 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (= lambda!139906 lambda!139905))))

(assert (=> bs!630018 (= (= lt!1566633 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139906 lambda!139888))))

(assert (=> bs!630018 (= (= lt!1566633 lt!1566532) (= lambda!139906 lambda!139889))))

(assert (=> b!4353555 true))

(declare-fun bs!630019 () Bool)

(declare-fun d!1286431 () Bool)

(assert (= bs!630019 (and d!1286431 b!4353559)))

(declare-fun lt!1566635 () ListMap!2185)

(declare-fun lambda!139907 () Int)

(assert (=> bs!630019 (= (= lt!1566635 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (= lambda!139907 lambda!139904))))

(declare-fun bs!630020 () Bool)

(assert (= bs!630020 (and d!1286431 b!4353555)))

(assert (=> bs!630020 (= (= lt!1566635 lt!1566633) (= lambda!139907 lambda!139906))))

(declare-fun bs!630021 () Bool)

(assert (= bs!630021 (and d!1286431 b!4353320)))

(assert (=> bs!630021 (= (= lt!1566635 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139907 lambda!139839))))

(assert (=> bs!630021 (= (= lt!1566635 lt!1566413) (= lambda!139907 lambda!139842))))

(declare-fun bs!630022 () Bool)

(assert (= bs!630022 (and d!1286431 b!4353407)))

(assert (=> bs!630022 (= (= lt!1566635 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139907 lambda!139887))))

(declare-fun bs!630023 () Bool)

(assert (= bs!630023 (and d!1286431 d!1286123)))

(assert (=> bs!630023 (not (= lambda!139907 lambda!139787))))

(declare-fun bs!630024 () Bool)

(assert (= bs!630024 (and d!1286431 d!1286221)))

(assert (=> bs!630024 (= (= lt!1566635 lt!1566415) (= lambda!139907 lambda!139845))))

(declare-fun bs!630025 () Bool)

(assert (= bs!630025 (and d!1286431 d!1286287)))

(assert (=> bs!630025 (= (= lt!1566635 lt!1566534) (= lambda!139907 lambda!139892))))

(declare-fun bs!630026 () Bool)

(assert (= bs!630026 (and d!1286431 b!4353324)))

(assert (=> bs!630026 (= (= lt!1566635 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139907 lambda!139838))))

(assert (=> bs!630020 (= (= lt!1566635 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (= lambda!139907 lambda!139905))))

(declare-fun bs!630027 () Bool)

(assert (= bs!630027 (and d!1286431 b!4353403)))

(assert (=> bs!630027 (= (= lt!1566635 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139907 lambda!139888))))

(assert (=> bs!630027 (= (= lt!1566635 lt!1566532) (= lambda!139907 lambda!139889))))

(assert (=> d!1286431 true))

(declare-fun e!2709224 () ListMap!2185)

(assert (=> b!4353555 (= e!2709224 lt!1566633)))

(declare-fun lt!1566630 () ListMap!2185)

(assert (=> b!4353555 (= lt!1566630 (+!616 (extractMap!538 (t!355946 (toList!2941 lm!1707))) (h!54442 (_2!27438 (h!54443 (toList!2941 lm!1707))))))))

(assert (=> b!4353555 (= lt!1566633 (addToMapMapFromBucket!175 (t!355945 (_2!27438 (h!54443 (toList!2941 lm!1707)))) (+!616 (extractMap!538 (t!355946 (toList!2941 lm!1707))) (h!54442 (_2!27438 (h!54443 (toList!2941 lm!1707)))))))))

(declare-fun lt!1566629 () Unit!71224)

(declare-fun call!302545 () Unit!71224)

(assert (=> b!4353555 (= lt!1566629 call!302545)))

(declare-fun call!302546 () Bool)

(assert (=> b!4353555 call!302546))

(declare-fun lt!1566637 () Unit!71224)

(assert (=> b!4353555 (= lt!1566637 lt!1566629)))

(assert (=> b!4353555 (forall!9098 (toList!2942 lt!1566630) lambda!139906)))

(declare-fun lt!1566632 () Unit!71224)

(declare-fun Unit!71294 () Unit!71224)

(assert (=> b!4353555 (= lt!1566632 Unit!71294)))

(assert (=> b!4353555 (forall!9098 (t!355945 (_2!27438 (h!54443 (toList!2941 lm!1707)))) lambda!139906)))

(declare-fun lt!1566623 () Unit!71224)

(declare-fun Unit!71295 () Unit!71224)

(assert (=> b!4353555 (= lt!1566623 Unit!71295)))

(declare-fun lt!1566640 () Unit!71224)

(declare-fun Unit!71296 () Unit!71224)

(assert (=> b!4353555 (= lt!1566640 Unit!71296)))

(declare-fun lt!1566624 () Unit!71224)

(assert (=> b!4353555 (= lt!1566624 (forallContained!1742 (toList!2942 lt!1566630) lambda!139906 (h!54442 (_2!27438 (h!54443 (toList!2941 lm!1707))))))))

(assert (=> b!4353555 (contains!11087 lt!1566630 (_1!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 lm!1707))))))))

(declare-fun lt!1566627 () Unit!71224)

(declare-fun Unit!71297 () Unit!71224)

(assert (=> b!4353555 (= lt!1566627 Unit!71297)))

(assert (=> b!4353555 (contains!11087 lt!1566633 (_1!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 lm!1707))))))))

(declare-fun lt!1566625 () Unit!71224)

(declare-fun Unit!71298 () Unit!71224)

(assert (=> b!4353555 (= lt!1566625 Unit!71298)))

(assert (=> b!4353555 (forall!9098 (_2!27438 (h!54443 (toList!2941 lm!1707))) lambda!139906)))

(declare-fun lt!1566628 () Unit!71224)

(declare-fun Unit!71299 () Unit!71224)

(assert (=> b!4353555 (= lt!1566628 Unit!71299)))

(assert (=> b!4353555 (forall!9098 (toList!2942 lt!1566630) lambda!139906)))

(declare-fun lt!1566639 () Unit!71224)

(declare-fun Unit!71300 () Unit!71224)

(assert (=> b!4353555 (= lt!1566639 Unit!71300)))

(declare-fun lt!1566622 () Unit!71224)

(declare-fun Unit!71301 () Unit!71224)

(assert (=> b!4353555 (= lt!1566622 Unit!71301)))

(declare-fun lt!1566626 () Unit!71224)

(assert (=> b!4353555 (= lt!1566626 (addForallContainsKeyThenBeforeAdding!54 (extractMap!538 (t!355946 (toList!2941 lm!1707))) lt!1566633 (_1!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 lm!1707))))) (_2!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 lm!1707)))))))))

(assert (=> b!4353555 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) lambda!139906)))

(declare-fun lt!1566634 () Unit!71224)

(assert (=> b!4353555 (= lt!1566634 lt!1566626)))

(assert (=> b!4353555 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) lambda!139906)))

(declare-fun lt!1566642 () Unit!71224)

(declare-fun Unit!71302 () Unit!71224)

(assert (=> b!4353555 (= lt!1566642 Unit!71302)))

(declare-fun res!1788943 () Bool)

(declare-fun call!302547 () Bool)

(assert (=> b!4353555 (= res!1788943 call!302547)))

(declare-fun e!2709225 () Bool)

(assert (=> b!4353555 (=> (not res!1788943) (not e!2709225))))

(assert (=> b!4353555 e!2709225))

(declare-fun lt!1566641 () Unit!71224)

(declare-fun Unit!71303 () Unit!71224)

(assert (=> b!4353555 (= lt!1566641 Unit!71303)))

(declare-fun e!2709223 () Bool)

(assert (=> d!1286431 e!2709223))

(declare-fun res!1788942 () Bool)

(assert (=> d!1286431 (=> (not res!1788942) (not e!2709223))))

(assert (=> d!1286431 (= res!1788942 (forall!9098 (_2!27438 (h!54443 (toList!2941 lm!1707))) lambda!139907))))

(assert (=> d!1286431 (= lt!1566635 e!2709224)))

(declare-fun c!740118 () Bool)

(assert (=> d!1286431 (= c!740118 ((_ is Nil!48901) (_2!27438 (h!54443 (toList!2941 lm!1707)))))))

(assert (=> d!1286431 (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 lm!1707))))))

(assert (=> d!1286431 (= (addToMapMapFromBucket!175 (_2!27438 (h!54443 (toList!2941 lm!1707))) (extractMap!538 (t!355946 (toList!2941 lm!1707)))) lt!1566635)))

(declare-fun b!4353556 () Bool)

(declare-fun res!1788941 () Bool)

(assert (=> b!4353556 (=> (not res!1788941) (not e!2709223))))

(assert (=> b!4353556 (= res!1788941 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) lambda!139907))))

(declare-fun b!4353557 () Bool)

(assert (=> b!4353557 (= e!2709223 (invariantList!668 (toList!2942 lt!1566635)))))

(declare-fun b!4353558 () Bool)

(assert (=> b!4353558 (= e!2709225 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) lambda!139906))))

(declare-fun bm!302540 () Bool)

(assert (=> bm!302540 (= call!302545 (lemmaContainsAllItsOwnKeys!54 (extractMap!538 (t!355946 (toList!2941 lm!1707)))))))

(assert (=> b!4353559 (= e!2709224 (extractMap!538 (t!355946 (toList!2941 lm!1707))))))

(declare-fun lt!1566638 () Unit!71224)

(assert (=> b!4353559 (= lt!1566638 call!302545)))

(assert (=> b!4353559 call!302546))

(declare-fun lt!1566631 () Unit!71224)

(assert (=> b!4353559 (= lt!1566631 lt!1566638)))

(assert (=> b!4353559 call!302547))

(declare-fun lt!1566643 () Unit!71224)

(declare-fun Unit!71304 () Unit!71224)

(assert (=> b!4353559 (= lt!1566643 Unit!71304)))

(declare-fun bm!302541 () Bool)

(assert (=> bm!302541 (= call!302547 (forall!9098 (ite c!740118 (toList!2942 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (_2!27438 (h!54443 (toList!2941 lm!1707)))) (ite c!740118 lambda!139904 lambda!139906)))))

(declare-fun bm!302542 () Bool)

(assert (=> bm!302542 (= call!302546 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (ite c!740118 lambda!139904 lambda!139905)))))

(assert (= (and d!1286431 c!740118) b!4353559))

(assert (= (and d!1286431 (not c!740118)) b!4353555))

(assert (= (and b!4353555 res!1788943) b!4353558))

(assert (= (or b!4353559 b!4353555) bm!302540))

(assert (= (or b!4353559 b!4353555) bm!302542))

(assert (= (or b!4353559 b!4353555) bm!302541))

(assert (= (and d!1286431 res!1788942) b!4353556))

(assert (= (and b!4353556 res!1788941) b!4353557))

(assert (=> bm!302540 m!4964299))

(declare-fun m!4965589 () Bool)

(assert (=> bm!302540 m!4965589))

(declare-fun m!4965591 () Bool)

(assert (=> b!4353557 m!4965591))

(declare-fun m!4965593 () Bool)

(assert (=> bm!302541 m!4965593))

(declare-fun m!4965595 () Bool)

(assert (=> bm!302542 m!4965595))

(declare-fun m!4965597 () Bool)

(assert (=> b!4353556 m!4965597))

(declare-fun m!4965599 () Bool)

(assert (=> d!1286431 m!4965599))

(assert (=> d!1286431 m!4964705))

(declare-fun m!4965601 () Bool)

(assert (=> b!4353555 m!4965601))

(declare-fun m!4965603 () Bool)

(assert (=> b!4353555 m!4965603))

(declare-fun m!4965605 () Bool)

(assert (=> b!4353555 m!4965605))

(declare-fun m!4965607 () Bool)

(assert (=> b!4353555 m!4965607))

(assert (=> b!4353555 m!4965607))

(assert (=> b!4353555 m!4964299))

(declare-fun m!4965609 () Bool)

(assert (=> b!4353555 m!4965609))

(assert (=> b!4353555 m!4964299))

(assert (=> b!4353555 m!4965603))

(declare-fun m!4965611 () Bool)

(assert (=> b!4353555 m!4965611))

(declare-fun m!4965613 () Bool)

(assert (=> b!4353555 m!4965613))

(declare-fun m!4965615 () Bool)

(assert (=> b!4353555 m!4965615))

(declare-fun m!4965617 () Bool)

(assert (=> b!4353555 m!4965617))

(declare-fun m!4965619 () Bool)

(assert (=> b!4353555 m!4965619))

(assert (=> b!4353555 m!4965619))

(assert (=> b!4353558 m!4965607))

(assert (=> b!4353060 d!1286431))

(assert (=> b!4353060 d!1286095))

(declare-fun d!1286445 () Bool)

(declare-fun res!1788946 () Bool)

(declare-fun e!2709232 () Bool)

(assert (=> d!1286445 (=> res!1788946 e!2709232)))

(assert (=> d!1286445 (= res!1788946 ((_ is Nil!48902) (toList!2941 (+!615 lm!1707 (tuple2!48289 hash!377 newBucket!200)))))))

(assert (=> d!1286445 (= (forall!9096 (toList!2941 (+!615 lm!1707 (tuple2!48289 hash!377 newBucket!200))) lambda!139751) e!2709232)))

(declare-fun b!4353566 () Bool)

(declare-fun e!2709233 () Bool)

(assert (=> b!4353566 (= e!2709232 e!2709233)))

(declare-fun res!1788947 () Bool)

(assert (=> b!4353566 (=> (not res!1788947) (not e!2709233))))

(assert (=> b!4353566 (= res!1788947 (dynLambda!20621 lambda!139751 (h!54443 (toList!2941 (+!615 lm!1707 (tuple2!48289 hash!377 newBucket!200))))))))

(declare-fun b!4353567 () Bool)

(assert (=> b!4353567 (= e!2709233 (forall!9096 (t!355946 (toList!2941 (+!615 lm!1707 (tuple2!48289 hash!377 newBucket!200)))) lambda!139751))))

(assert (= (and d!1286445 (not res!1788946)) b!4353566))

(assert (= (and b!4353566 res!1788947) b!4353567))

(declare-fun b_lambda!130813 () Bool)

(assert (=> (not b_lambda!130813) (not b!4353566)))

(declare-fun m!4965621 () Bool)

(assert (=> b!4353566 m!4965621))

(declare-fun m!4965623 () Bool)

(assert (=> b!4353567 m!4965623))

(assert (=> d!1286011 d!1286445))

(declare-fun d!1286447 () Bool)

(declare-fun e!2709234 () Bool)

(assert (=> d!1286447 e!2709234))

(declare-fun res!1788949 () Bool)

(assert (=> d!1286447 (=> (not res!1788949) (not e!2709234))))

(declare-fun lt!1566645 () ListLongMap!1591)

(assert (=> d!1286447 (= res!1788949 (contains!11086 lt!1566645 (_1!27438 (tuple2!48289 hash!377 newBucket!200))))))

(declare-fun lt!1566644 () List!49026)

(assert (=> d!1286447 (= lt!1566645 (ListLongMap!1592 lt!1566644))))

(declare-fun lt!1566647 () Unit!71224)

(declare-fun lt!1566646 () Unit!71224)

(assert (=> d!1286447 (= lt!1566647 lt!1566646)))

(assert (=> d!1286447 (= (getValueByKey!434 lt!1566644 (_1!27438 (tuple2!48289 hash!377 newBucket!200))) (Some!10447 (_2!27438 (tuple2!48289 hash!377 newBucket!200))))))

(assert (=> d!1286447 (= lt!1566646 (lemmaContainsTupThenGetReturnValue!209 lt!1566644 (_1!27438 (tuple2!48289 hash!377 newBucket!200)) (_2!27438 (tuple2!48289 hash!377 newBucket!200))))))

(assert (=> d!1286447 (= lt!1566644 (insertStrictlySorted!125 (toList!2941 lm!1707) (_1!27438 (tuple2!48289 hash!377 newBucket!200)) (_2!27438 (tuple2!48289 hash!377 newBucket!200))))))

(assert (=> d!1286447 (= (+!615 lm!1707 (tuple2!48289 hash!377 newBucket!200)) lt!1566645)))

(declare-fun b!4353568 () Bool)

(declare-fun res!1788948 () Bool)

(assert (=> b!4353568 (=> (not res!1788948) (not e!2709234))))

(assert (=> b!4353568 (= res!1788948 (= (getValueByKey!434 (toList!2941 lt!1566645) (_1!27438 (tuple2!48289 hash!377 newBucket!200))) (Some!10447 (_2!27438 (tuple2!48289 hash!377 newBucket!200)))))))

(declare-fun b!4353569 () Bool)

(assert (=> b!4353569 (= e!2709234 (contains!11088 (toList!2941 lt!1566645) (tuple2!48289 hash!377 newBucket!200)))))

(assert (= (and d!1286447 res!1788949) b!4353568))

(assert (= (and b!4353568 res!1788948) b!4353569))

(declare-fun m!4965625 () Bool)

(assert (=> d!1286447 m!4965625))

(declare-fun m!4965627 () Bool)

(assert (=> d!1286447 m!4965627))

(declare-fun m!4965629 () Bool)

(assert (=> d!1286447 m!4965629))

(declare-fun m!4965631 () Bool)

(assert (=> d!1286447 m!4965631))

(declare-fun m!4965633 () Bool)

(assert (=> b!4353568 m!4965633))

(declare-fun m!4965635 () Bool)

(assert (=> b!4353569 m!4965635))

(assert (=> d!1286011 d!1286447))

(declare-fun d!1286449 () Bool)

(assert (=> d!1286449 (forall!9096 (toList!2941 (+!615 lm!1707 (tuple2!48289 hash!377 newBucket!200))) lambda!139751)))

(assert (=> d!1286449 true))

(declare-fun _$31!220 () Unit!71224)

(assert (=> d!1286449 (= (choose!26814 lm!1707 lambda!139751 hash!377 newBucket!200) _$31!220)))

(declare-fun bs!630028 () Bool)

(assert (= bs!630028 d!1286449))

(assert (=> bs!630028 m!4964437))

(assert (=> bs!630028 m!4964439))

(assert (=> d!1286011 d!1286449))

(assert (=> d!1286011 d!1286017))

(assert (=> d!1286085 d!1286171))

(declare-fun d!1286451 () Bool)

(assert (=> d!1286451 (isDefined!7742 (getValueByKey!435 (toList!2942 lt!1566081) key!3918))))

(declare-fun lt!1566648 () Unit!71224)

(assert (=> d!1286451 (= lt!1566648 (choose!26829 (toList!2942 lt!1566081) key!3918))))

(assert (=> d!1286451 (invariantList!668 (toList!2942 lt!1566081))))

(assert (=> d!1286451 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!345 (toList!2942 lt!1566081) key!3918) lt!1566648)))

(declare-fun bs!630029 () Bool)

(assert (= bs!630029 d!1286451))

(assert (=> bs!630029 m!4964543))

(assert (=> bs!630029 m!4964543))

(assert (=> bs!630029 m!4964547))

(declare-fun m!4965637 () Bool)

(assert (=> bs!630029 m!4965637))

(assert (=> bs!630029 m!4965121))

(assert (=> b!4352946 d!1286451))

(assert (=> b!4352946 d!1286199))

(assert (=> b!4352946 d!1286205))

(declare-fun d!1286453 () Bool)

(assert (=> d!1286453 (contains!11091 (getKeysList!116 (toList!2942 lt!1566081)) key!3918)))

(declare-fun lt!1566649 () Unit!71224)

(assert (=> d!1286453 (= lt!1566649 (choose!26830 (toList!2942 lt!1566081) key!3918))))

(assert (=> d!1286453 (invariantList!668 (toList!2942 lt!1566081))))

(assert (=> d!1286453 (= (lemmaInListThenGetKeysListContains!113 (toList!2942 lt!1566081) key!3918) lt!1566649)))

(declare-fun bs!630030 () Bool)

(assert (= bs!630030 d!1286453))

(assert (=> bs!630030 m!4964533))

(assert (=> bs!630030 m!4964533))

(declare-fun m!4965639 () Bool)

(assert (=> bs!630030 m!4965639))

(declare-fun m!4965641 () Bool)

(assert (=> bs!630030 m!4965641))

(assert (=> bs!630030 m!4965121))

(assert (=> b!4352946 d!1286453))

(assert (=> b!4353020 d!1286417))

(assert (=> b!4353020 d!1286419))

(declare-fun d!1286455 () Bool)

(declare-fun res!1788950 () Bool)

(declare-fun e!2709235 () Bool)

(assert (=> d!1286455 (=> res!1788950 e!2709235)))

(assert (=> d!1286455 (= res!1788950 (and ((_ is Cons!48901) lt!1566295) (= (_1!27437 (h!54442 lt!1566295)) key!3918)))))

(assert (=> d!1286455 (= (containsKey!661 lt!1566295 key!3918) e!2709235)))

(declare-fun b!4353571 () Bool)

(declare-fun e!2709236 () Bool)

(assert (=> b!4353571 (= e!2709235 e!2709236)))

(declare-fun res!1788951 () Bool)

(assert (=> b!4353571 (=> (not res!1788951) (not e!2709236))))

(assert (=> b!4353571 (= res!1788951 ((_ is Cons!48901) lt!1566295))))

(declare-fun b!4353572 () Bool)

(assert (=> b!4353572 (= e!2709236 (containsKey!661 (t!355945 lt!1566295) key!3918))))

(assert (= (and d!1286455 (not res!1788950)) b!4353571))

(assert (= (and b!4353571 res!1788951) b!4353572))

(declare-fun m!4965643 () Bool)

(assert (=> b!4353572 m!4965643))

(assert (=> d!1286129 d!1286455))

(declare-fun d!1286457 () Bool)

(declare-fun res!1788952 () Bool)

(declare-fun e!2709237 () Bool)

(assert (=> d!1286457 (=> res!1788952 e!2709237)))

(assert (=> d!1286457 (= res!1788952 (not ((_ is Cons!48901) lt!1566080)))))

(assert (=> d!1286457 (= (noDuplicateKeys!479 lt!1566080) e!2709237)))

(declare-fun b!4353573 () Bool)

(declare-fun e!2709238 () Bool)

(assert (=> b!4353573 (= e!2709237 e!2709238)))

(declare-fun res!1788953 () Bool)

(assert (=> b!4353573 (=> (not res!1788953) (not e!2709238))))

(assert (=> b!4353573 (= res!1788953 (not (containsKey!661 (t!355945 lt!1566080) (_1!27437 (h!54442 lt!1566080)))))))

(declare-fun b!4353574 () Bool)

(assert (=> b!4353574 (= e!2709238 (noDuplicateKeys!479 (t!355945 lt!1566080)))))

(assert (= (and d!1286457 (not res!1788952)) b!4353573))

(assert (= (and b!4353573 res!1788953) b!4353574))

(declare-fun m!4965645 () Bool)

(assert (=> b!4353573 m!4965645))

(declare-fun m!4965647 () Bool)

(assert (=> b!4353574 m!4965647))

(assert (=> d!1286129 d!1286457))

(declare-fun bs!630031 () Bool)

(declare-fun b!4353580 () Bool)

(assert (= bs!630031 (and b!4353580 b!4353383)))

(declare-fun lambda!139908 () Int)

(assert (=> bs!630031 (= (= (t!355945 (toList!2942 lt!1566072)) (t!355945 (toList!2942 lt!1566081))) (= lambda!139908 lambda!139878))))

(declare-fun bs!630032 () Bool)

(assert (= bs!630032 (and b!4353580 b!4353384)))

(assert (=> bs!630032 (= (= (t!355945 (toList!2942 lt!1566072)) (Cons!48901 (h!54442 (toList!2942 lt!1566081)) (t!355945 (toList!2942 lt!1566081)))) (= lambda!139908 lambda!139879))))

(declare-fun bs!630033 () Bool)

(assert (= bs!630033 (and b!4353580 b!4353210)))

(assert (=> bs!630033 (= (= (t!355945 (toList!2942 lt!1566072)) (toList!2942 lt!1566072)) (= lambda!139908 lambda!139794))))

(declare-fun bs!630034 () Bool)

(assert (= bs!630034 (and b!4353580 b!4353501)))

(assert (=> bs!630034 (= (= (t!355945 (toList!2942 lt!1566072)) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (= lambda!139908 lambda!139897))))

(declare-fun bs!630035 () Bool)

(assert (= bs!630035 (and b!4353580 b!4353379)))

(assert (=> bs!630035 (= (= (t!355945 (toList!2942 lt!1566072)) (toList!2942 lt!1566081)) (= lambda!139908 lambda!139881))))

(declare-fun bs!630036 () Bool)

(assert (= bs!630036 (and b!4353580 b!4353502)))

(assert (=> bs!630036 (= (= (t!355945 (toList!2942 lt!1566072)) (Cons!48901 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))) (= lambda!139908 lambda!139898))))

(declare-fun bs!630037 () Bool)

(assert (= bs!630037 (and b!4353580 b!4353163)))

(assert (=> bs!630037 (= (= (t!355945 (toList!2942 lt!1566072)) (toList!2942 lt!1566081)) (= lambda!139908 lambda!139792))))

(declare-fun bs!630038 () Bool)

(assert (= bs!630038 (and b!4353580 b!4353497)))

(assert (=> bs!630038 (= (= (t!355945 (toList!2942 lt!1566072)) (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (= lambda!139908 lambda!139900))))

(assert (=> b!4353580 true))

(declare-fun bs!630039 () Bool)

(declare-fun b!4353581 () Bool)

(assert (= bs!630039 (and b!4353581 b!4353383)))

(declare-fun lambda!139909 () Int)

(assert (=> bs!630039 (= (= (Cons!48901 (h!54442 (toList!2942 lt!1566072)) (t!355945 (toList!2942 lt!1566072))) (t!355945 (toList!2942 lt!1566081))) (= lambda!139909 lambda!139878))))

(declare-fun bs!630040 () Bool)

(assert (= bs!630040 (and b!4353581 b!4353384)))

(assert (=> bs!630040 (= (= (Cons!48901 (h!54442 (toList!2942 lt!1566072)) (t!355945 (toList!2942 lt!1566072))) (Cons!48901 (h!54442 (toList!2942 lt!1566081)) (t!355945 (toList!2942 lt!1566081)))) (= lambda!139909 lambda!139879))))

(declare-fun bs!630041 () Bool)

(assert (= bs!630041 (and b!4353581 b!4353210)))

(assert (=> bs!630041 (= (= (Cons!48901 (h!54442 (toList!2942 lt!1566072)) (t!355945 (toList!2942 lt!1566072))) (toList!2942 lt!1566072)) (= lambda!139909 lambda!139794))))

(declare-fun bs!630042 () Bool)

(assert (= bs!630042 (and b!4353581 b!4353501)))

(assert (=> bs!630042 (= (= (Cons!48901 (h!54442 (toList!2942 lt!1566072)) (t!355945 (toList!2942 lt!1566072))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (= lambda!139909 lambda!139897))))

(declare-fun bs!630043 () Bool)

(assert (= bs!630043 (and b!4353581 b!4353379)))

(assert (=> bs!630043 (= (= (Cons!48901 (h!54442 (toList!2942 lt!1566072)) (t!355945 (toList!2942 lt!1566072))) (toList!2942 lt!1566081)) (= lambda!139909 lambda!139881))))

(declare-fun bs!630044 () Bool)

(assert (= bs!630044 (and b!4353581 b!4353580)))

(assert (=> bs!630044 (= (= (Cons!48901 (h!54442 (toList!2942 lt!1566072)) (t!355945 (toList!2942 lt!1566072))) (t!355945 (toList!2942 lt!1566072))) (= lambda!139909 lambda!139908))))

(declare-fun bs!630045 () Bool)

(assert (= bs!630045 (and b!4353581 b!4353502)))

(assert (=> bs!630045 (= (= (Cons!48901 (h!54442 (toList!2942 lt!1566072)) (t!355945 (toList!2942 lt!1566072))) (Cons!48901 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))) (= lambda!139909 lambda!139898))))

(declare-fun bs!630046 () Bool)

(assert (= bs!630046 (and b!4353581 b!4353163)))

(assert (=> bs!630046 (= (= (Cons!48901 (h!54442 (toList!2942 lt!1566072)) (t!355945 (toList!2942 lt!1566072))) (toList!2942 lt!1566081)) (= lambda!139909 lambda!139792))))

(declare-fun bs!630047 () Bool)

(assert (= bs!630047 (and b!4353581 b!4353497)))

(assert (=> bs!630047 (= (= (Cons!48901 (h!54442 (toList!2942 lt!1566072)) (t!355945 (toList!2942 lt!1566072))) (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (= lambda!139909 lambda!139900))))

(assert (=> b!4353581 true))

(declare-fun bs!630048 () Bool)

(declare-fun b!4353576 () Bool)

(assert (= bs!630048 (and b!4353576 b!4353383)))

(declare-fun lambda!139910 () Int)

(assert (=> bs!630048 (= (= (toList!2942 lt!1566072) (t!355945 (toList!2942 lt!1566081))) (= lambda!139910 lambda!139878))))

(declare-fun bs!630049 () Bool)

(assert (= bs!630049 (and b!4353576 b!4353384)))

(assert (=> bs!630049 (= (= (toList!2942 lt!1566072) (Cons!48901 (h!54442 (toList!2942 lt!1566081)) (t!355945 (toList!2942 lt!1566081)))) (= lambda!139910 lambda!139879))))

(declare-fun bs!630050 () Bool)

(assert (= bs!630050 (and b!4353576 b!4353210)))

(assert (=> bs!630050 (= lambda!139910 lambda!139794)))

(declare-fun bs!630051 () Bool)

(assert (= bs!630051 (and b!4353576 b!4353501)))

(assert (=> bs!630051 (= (= (toList!2942 lt!1566072) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (= lambda!139910 lambda!139897))))

(declare-fun bs!630052 () Bool)

(assert (= bs!630052 (and b!4353576 b!4353379)))

(assert (=> bs!630052 (= (= (toList!2942 lt!1566072) (toList!2942 lt!1566081)) (= lambda!139910 lambda!139881))))

(declare-fun bs!630053 () Bool)

(assert (= bs!630053 (and b!4353576 b!4353580)))

(assert (=> bs!630053 (= (= (toList!2942 lt!1566072) (t!355945 (toList!2942 lt!1566072))) (= lambda!139910 lambda!139908))))

(declare-fun bs!630054 () Bool)

(assert (= bs!630054 (and b!4353576 b!4353163)))

(assert (=> bs!630054 (= (= (toList!2942 lt!1566072) (toList!2942 lt!1566081)) (= lambda!139910 lambda!139792))))

(declare-fun bs!630055 () Bool)

(assert (= bs!630055 (and b!4353576 b!4353497)))

(assert (=> bs!630055 (= (= (toList!2942 lt!1566072) (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (= lambda!139910 lambda!139900))))

(declare-fun bs!630056 () Bool)

(assert (= bs!630056 (and b!4353576 b!4353502)))

(assert (=> bs!630056 (= (= (toList!2942 lt!1566072) (Cons!48901 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))) (= lambda!139910 lambda!139898))))

(declare-fun bs!630057 () Bool)

(assert (= bs!630057 (and b!4353576 b!4353581)))

(assert (=> bs!630057 (= (= (toList!2942 lt!1566072) (Cons!48901 (h!54442 (toList!2942 lt!1566072)) (t!355945 (toList!2942 lt!1566072)))) (= lambda!139910 lambda!139909))))

(assert (=> b!4353576 true))

(declare-fun bs!630058 () Bool)

(declare-fun b!4353582 () Bool)

(assert (= bs!630058 (and b!4353582 b!4353164)))

(declare-fun lambda!139913 () Int)

(assert (=> bs!630058 (= lambda!139913 lambda!139793)))

(declare-fun bs!630059 () Bool)

(assert (= bs!630059 (and b!4353582 b!4353211)))

(assert (=> bs!630059 (= lambda!139913 lambda!139795)))

(declare-fun bs!630060 () Bool)

(assert (= bs!630060 (and b!4353582 b!4353385)))

(assert (=> bs!630060 (= lambda!139913 lambda!139883)))

(declare-fun bs!630061 () Bool)

(assert (= bs!630061 (and b!4353582 b!4353503)))

(assert (=> bs!630061 (= lambda!139913 lambda!139902)))

(declare-fun b!4353575 () Bool)

(declare-fun e!2709240 () List!49028)

(assert (=> b!4353575 (= e!2709240 Nil!48904)))

(declare-fun res!1788956 () Bool)

(declare-fun e!2709242 () Bool)

(assert (=> b!4353576 (=> (not res!1788956) (not e!2709242))))

(declare-fun lt!1566654 () List!49028)

(assert (=> b!4353576 (= res!1788956 (forall!9099 lt!1566654 lambda!139910))))

(declare-fun b!4353577 () Bool)

(assert (=> b!4353577 false))

(declare-fun e!2709239 () Unit!71224)

(declare-fun Unit!71316 () Unit!71224)

(assert (=> b!4353577 (= e!2709239 Unit!71316)))

(declare-fun b!4353578 () Bool)

(declare-fun Unit!71317 () Unit!71224)

(assert (=> b!4353578 (= e!2709239 Unit!71317)))

(declare-fun d!1286459 () Bool)

(assert (=> d!1286459 e!2709242))

(declare-fun res!1788954 () Bool)

(assert (=> d!1286459 (=> (not res!1788954) (not e!2709242))))

(assert (=> d!1286459 (= res!1788954 (noDuplicate!599 lt!1566654))))

(assert (=> d!1286459 (= lt!1566654 e!2709240)))

(declare-fun c!740125 () Bool)

(assert (=> d!1286459 (= c!740125 ((_ is Cons!48901) (toList!2942 lt!1566072)))))

(assert (=> d!1286459 (invariantList!668 (toList!2942 lt!1566072))))

(assert (=> d!1286459 (= (getKeysList!116 (toList!2942 lt!1566072)) lt!1566654)))

(declare-fun b!4353579 () Bool)

(declare-fun res!1788955 () Bool)

(assert (=> b!4353579 (=> (not res!1788955) (not e!2709242))))

(assert (=> b!4353579 (= res!1788955 (= (length!54 lt!1566654) (length!55 (toList!2942 lt!1566072))))))

(assert (=> b!4353580 false))

(declare-fun lt!1566655 () Unit!71224)

(assert (=> b!4353580 (= lt!1566655 (forallContained!1744 (getKeysList!116 (t!355945 (toList!2942 lt!1566072))) lambda!139908 (_1!27437 (h!54442 (toList!2942 lt!1566072)))))))

(declare-fun e!2709241 () Unit!71224)

(declare-fun Unit!71318 () Unit!71224)

(assert (=> b!4353580 (= e!2709241 Unit!71318)))

(assert (=> b!4353581 (= e!2709240 (Cons!48904 (_1!27437 (h!54442 (toList!2942 lt!1566072))) (getKeysList!116 (t!355945 (toList!2942 lt!1566072)))))))

(declare-fun c!740123 () Bool)

(assert (=> b!4353581 (= c!740123 (containsKey!663 (t!355945 (toList!2942 lt!1566072)) (_1!27437 (h!54442 (toList!2942 lt!1566072)))))))

(declare-fun lt!1566656 () Unit!71224)

(assert (=> b!4353581 (= lt!1566656 e!2709239)))

(declare-fun c!740124 () Bool)

(assert (=> b!4353581 (= c!740124 (contains!11091 (getKeysList!116 (t!355945 (toList!2942 lt!1566072))) (_1!27437 (h!54442 (toList!2942 lt!1566072)))))))

(declare-fun lt!1566650 () Unit!71224)

(assert (=> b!4353581 (= lt!1566650 e!2709241)))

(declare-fun lt!1566653 () List!49028)

(assert (=> b!4353581 (= lt!1566653 (getKeysList!116 (t!355945 (toList!2942 lt!1566072))))))

(declare-fun lt!1566651 () Unit!71224)

(assert (=> b!4353581 (= lt!1566651 (lemmaForallContainsAddHeadPreserves!21 (t!355945 (toList!2942 lt!1566072)) lt!1566653 (h!54442 (toList!2942 lt!1566072))))))

(assert (=> b!4353581 (forall!9099 lt!1566653 lambda!139909)))

(declare-fun lt!1566652 () Unit!71224)

(assert (=> b!4353581 (= lt!1566652 lt!1566651)))

(assert (=> b!4353582 (= e!2709242 (= (content!7699 lt!1566654) (content!7699 (map!10635 (toList!2942 lt!1566072) lambda!139913))))))

(declare-fun b!4353583 () Bool)

(declare-fun Unit!71319 () Unit!71224)

(assert (=> b!4353583 (= e!2709241 Unit!71319)))

(assert (= (and d!1286459 c!740125) b!4353581))

(assert (= (and d!1286459 (not c!740125)) b!4353575))

(assert (= (and b!4353581 c!740123) b!4353577))

(assert (= (and b!4353581 (not c!740123)) b!4353578))

(assert (= (and b!4353581 c!740124) b!4353580))

(assert (= (and b!4353581 (not c!740124)) b!4353583))

(assert (= (and d!1286459 res!1788954) b!4353579))

(assert (= (and b!4353579 res!1788955) b!4353576))

(assert (= (and b!4353576 res!1788956) b!4353582))

(declare-fun m!4965649 () Bool)

(assert (=> b!4353576 m!4965649))

(declare-fun m!4965651 () Bool)

(assert (=> d!1286459 m!4965651))

(assert (=> d!1286459 m!4964873))

(declare-fun m!4965653 () Bool)

(assert (=> b!4353581 m!4965653))

(declare-fun m!4965655 () Bool)

(assert (=> b!4353581 m!4965655))

(declare-fun m!4965657 () Bool)

(assert (=> b!4353581 m!4965657))

(assert (=> b!4353581 m!4965657))

(declare-fun m!4965659 () Bool)

(assert (=> b!4353581 m!4965659))

(declare-fun m!4965661 () Bool)

(assert (=> b!4353581 m!4965661))

(declare-fun m!4965663 () Bool)

(assert (=> b!4353582 m!4965663))

(declare-fun m!4965665 () Bool)

(assert (=> b!4353582 m!4965665))

(assert (=> b!4353582 m!4965665))

(declare-fun m!4965667 () Bool)

(assert (=> b!4353582 m!4965667))

(assert (=> b!4353580 m!4965657))

(assert (=> b!4353580 m!4965657))

(declare-fun m!4965669 () Bool)

(assert (=> b!4353580 m!4965669))

(declare-fun m!4965671 () Bool)

(assert (=> b!4353579 m!4965671))

(assert (=> b!4353579 m!4964897))

(assert (=> b!4353024 d!1286459))

(declare-fun bs!630062 () Bool)

(declare-fun b!4353600 () Bool)

(assert (= bs!630062 (and b!4353600 b!4353559)))

(declare-fun lambda!139916 () Int)

(assert (=> bs!630062 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (= lambda!139916 lambda!139904))))

(declare-fun bs!630063 () Bool)

(assert (= bs!630063 (and b!4353600 b!4353555)))

(assert (=> bs!630063 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566633) (= lambda!139916 lambda!139906))))

(declare-fun bs!630064 () Bool)

(assert (= bs!630064 (and b!4353600 b!4353320)))

(assert (=> bs!630064 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139916 lambda!139839))))

(assert (=> bs!630064 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566413) (= lambda!139916 lambda!139842))))

(declare-fun bs!630065 () Bool)

(assert (= bs!630065 (and b!4353600 b!4353407)))

(assert (=> bs!630065 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139916 lambda!139887))))

(declare-fun bs!630066 () Bool)

(assert (= bs!630066 (and b!4353600 d!1286123)))

(assert (=> bs!630066 (not (= lambda!139916 lambda!139787))))

(declare-fun bs!630067 () Bool)

(assert (= bs!630067 (and b!4353600 d!1286221)))

(assert (=> bs!630067 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566415) (= lambda!139916 lambda!139845))))

(declare-fun bs!630068 () Bool)

(assert (= bs!630068 (and b!4353600 d!1286287)))

(assert (=> bs!630068 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566534) (= lambda!139916 lambda!139892))))

(declare-fun bs!630069 () Bool)

(assert (= bs!630069 (and b!4353600 b!4353324)))

(assert (=> bs!630069 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139916 lambda!139838))))

(assert (=> bs!630063 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (= lambda!139916 lambda!139905))))

(declare-fun bs!630070 () Bool)

(assert (= bs!630070 (and b!4353600 b!4353403)))

(assert (=> bs!630070 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139916 lambda!139888))))

(assert (=> bs!630070 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566532) (= lambda!139916 lambda!139889))))

(declare-fun bs!630071 () Bool)

(assert (= bs!630071 (and b!4353600 d!1286431)))

(assert (=> bs!630071 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566635) (= lambda!139916 lambda!139907))))

(assert (=> b!4353600 true))

(declare-fun bs!630072 () Bool)

(declare-fun b!4353596 () Bool)

(assert (= bs!630072 (and b!4353596 b!4353559)))

(declare-fun lambda!139921 () Int)

(assert (=> bs!630072 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (= lambda!139921 lambda!139904))))

(declare-fun bs!630073 () Bool)

(assert (= bs!630073 (and b!4353596 b!4353555)))

(assert (=> bs!630073 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566633) (= lambda!139921 lambda!139906))))

(declare-fun bs!630074 () Bool)

(assert (= bs!630074 (and b!4353596 b!4353320)))

(assert (=> bs!630074 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139921 lambda!139839))))

(assert (=> bs!630074 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566413) (= lambda!139921 lambda!139842))))

(declare-fun bs!630075 () Bool)

(assert (= bs!630075 (and b!4353596 b!4353407)))

(assert (=> bs!630075 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139921 lambda!139887))))

(declare-fun bs!630076 () Bool)

(assert (= bs!630076 (and b!4353596 d!1286123)))

(assert (=> bs!630076 (not (= lambda!139921 lambda!139787))))

(declare-fun bs!630077 () Bool)

(assert (= bs!630077 (and b!4353596 d!1286221)))

(assert (=> bs!630077 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566415) (= lambda!139921 lambda!139845))))

(declare-fun bs!630078 () Bool)

(assert (= bs!630078 (and b!4353596 d!1286287)))

(assert (=> bs!630078 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566534) (= lambda!139921 lambda!139892))))

(declare-fun bs!630079 () Bool)

(assert (= bs!630079 (and b!4353596 b!4353600)))

(assert (=> bs!630079 (= lambda!139921 lambda!139916)))

(declare-fun bs!630080 () Bool)

(assert (= bs!630080 (and b!4353596 b!4353324)))

(assert (=> bs!630080 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139921 lambda!139838))))

(assert (=> bs!630073 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (= lambda!139921 lambda!139905))))

(declare-fun bs!630081 () Bool)

(assert (= bs!630081 (and b!4353596 b!4353403)))

(assert (=> bs!630081 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139921 lambda!139888))))

(assert (=> bs!630081 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566532) (= lambda!139921 lambda!139889))))

(declare-fun bs!630082 () Bool)

(assert (= bs!630082 (and b!4353596 d!1286431)))

(assert (=> bs!630082 (= (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566635) (= lambda!139921 lambda!139907))))

(assert (=> b!4353596 true))

(declare-fun lt!1566682 () ListMap!2185)

(declare-fun lambda!139922 () Int)

(assert (=> bs!630072 (= (= lt!1566682 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (= lambda!139922 lambda!139904))))

(assert (=> bs!630073 (= (= lt!1566682 lt!1566633) (= lambda!139922 lambda!139906))))

(assert (=> bs!630074 (= (= lt!1566682 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139922 lambda!139839))))

(assert (=> bs!630074 (= (= lt!1566682 lt!1566413) (= lambda!139922 lambda!139842))))

(assert (=> bs!630075 (= (= lt!1566682 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139922 lambda!139887))))

(assert (=> bs!630076 (not (= lambda!139922 lambda!139787))))

(assert (=> bs!630077 (= (= lt!1566682 lt!1566415) (= lambda!139922 lambda!139845))))

(assert (=> b!4353596 (= (= lt!1566682 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707))))) (= lambda!139922 lambda!139921))))

(assert (=> bs!630078 (= (= lt!1566682 lt!1566534) (= lambda!139922 lambda!139892))))

(assert (=> bs!630079 (= (= lt!1566682 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707))))) (= lambda!139922 lambda!139916))))

(assert (=> bs!630080 (= (= lt!1566682 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139922 lambda!139838))))

(assert (=> bs!630073 (= (= lt!1566682 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (= lambda!139922 lambda!139905))))

(assert (=> bs!630081 (= (= lt!1566682 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139922 lambda!139888))))

(assert (=> bs!630081 (= (= lt!1566682 lt!1566532) (= lambda!139922 lambda!139889))))

(assert (=> bs!630082 (= (= lt!1566682 lt!1566635) (= lambda!139922 lambda!139907))))

(assert (=> b!4353596 true))

(declare-fun bs!630084 () Bool)

(declare-fun d!1286461 () Bool)

(assert (= bs!630084 (and d!1286461 b!4353559)))

(declare-fun lambda!139924 () Int)

(declare-fun lt!1566684 () ListMap!2185)

(assert (=> bs!630084 (= (= lt!1566684 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (= lambda!139924 lambda!139904))))

(declare-fun bs!630086 () Bool)

(assert (= bs!630086 (and d!1286461 b!4353555)))

(assert (=> bs!630086 (= (= lt!1566684 lt!1566633) (= lambda!139924 lambda!139906))))

(declare-fun bs!630088 () Bool)

(assert (= bs!630088 (and d!1286461 b!4353320)))

(assert (=> bs!630088 (= (= lt!1566684 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139924 lambda!139839))))

(assert (=> bs!630088 (= (= lt!1566684 lt!1566413) (= lambda!139924 lambda!139842))))

(declare-fun bs!630089 () Bool)

(assert (= bs!630089 (and d!1286461 b!4353407)))

(assert (=> bs!630089 (= (= lt!1566684 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139924 lambda!139887))))

(declare-fun bs!630090 () Bool)

(assert (= bs!630090 (and d!1286461 d!1286123)))

(assert (=> bs!630090 (not (= lambda!139924 lambda!139787))))

(declare-fun bs!630091 () Bool)

(assert (= bs!630091 (and d!1286461 b!4353596)))

(assert (=> bs!630091 (= (= lt!1566684 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707))))) (= lambda!139924 lambda!139921))))

(declare-fun bs!630093 () Bool)

(assert (= bs!630093 (and d!1286461 d!1286287)))

(assert (=> bs!630093 (= (= lt!1566684 lt!1566534) (= lambda!139924 lambda!139892))))

(declare-fun bs!630095 () Bool)

(assert (= bs!630095 (and d!1286461 b!4353600)))

(assert (=> bs!630095 (= (= lt!1566684 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707))))) (= lambda!139924 lambda!139916))))

(declare-fun bs!630097 () Bool)

(assert (= bs!630097 (and d!1286461 b!4353324)))

(assert (=> bs!630097 (= (= lt!1566684 (extractMap!538 (t!355946 (toList!2941 lt!1566077)))) (= lambda!139924 lambda!139838))))

(assert (=> bs!630086 (= (= lt!1566684 (extractMap!538 (t!355946 (toList!2941 lm!1707)))) (= lambda!139924 lambda!139905))))

(declare-fun bs!630099 () Bool)

(assert (= bs!630099 (and d!1286461 d!1286221)))

(assert (=> bs!630099 (= (= lt!1566684 lt!1566415) (= lambda!139924 lambda!139845))))

(assert (=> bs!630091 (= (= lt!1566684 lt!1566682) (= lambda!139924 lambda!139922))))

(declare-fun bs!630100 () Bool)

(assert (= bs!630100 (and d!1286461 b!4353403)))

(assert (=> bs!630100 (= (= lt!1566684 (extractMap!538 (t!355946 (toList!2941 (+!615 lt!1566077 lt!1566082))))) (= lambda!139924 lambda!139888))))

(assert (=> bs!630100 (= (= lt!1566684 lt!1566532) (= lambda!139924 lambda!139889))))

(declare-fun bs!630103 () Bool)

(assert (= bs!630103 (and d!1286461 d!1286431)))

(assert (=> bs!630103 (= (= lt!1566684 lt!1566635) (= lambda!139924 lambda!139907))))

(assert (=> d!1286461 true))

(declare-fun e!2709250 () ListMap!2185)

(assert (=> b!4353596 (= e!2709250 lt!1566682)))

(declare-fun lt!1566679 () ListMap!2185)

(assert (=> b!4353596 (= lt!1566679 (+!616 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (h!54442 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707)))))))))

(assert (=> b!4353596 (= lt!1566682 (addToMapMapFromBucket!175 (t!355945 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707))))) (+!616 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) (h!54442 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707))))))))))

(declare-fun lt!1566678 () Unit!71224)

(declare-fun call!302548 () Unit!71224)

(assert (=> b!4353596 (= lt!1566678 call!302548)))

(declare-fun call!302549 () Bool)

(assert (=> b!4353596 call!302549))

(declare-fun lt!1566685 () Unit!71224)

(assert (=> b!4353596 (= lt!1566685 lt!1566678)))

(assert (=> b!4353596 (forall!9098 (toList!2942 lt!1566679) lambda!139922)))

(declare-fun lt!1566681 () Unit!71224)

(declare-fun Unit!71324 () Unit!71224)

(assert (=> b!4353596 (= lt!1566681 Unit!71324)))

(assert (=> b!4353596 (forall!9098 (t!355945 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707))))) lambda!139922)))

(declare-fun lt!1566672 () Unit!71224)

(declare-fun Unit!71325 () Unit!71224)

(assert (=> b!4353596 (= lt!1566672 Unit!71325)))

(declare-fun lt!1566688 () Unit!71224)

(declare-fun Unit!71326 () Unit!71224)

(assert (=> b!4353596 (= lt!1566688 Unit!71326)))

(declare-fun lt!1566673 () Unit!71224)

(assert (=> b!4353596 (= lt!1566673 (forallContained!1742 (toList!2942 lt!1566679) lambda!139922 (h!54442 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707)))))))))

(assert (=> b!4353596 (contains!11087 lt!1566679 (_1!27437 (h!54442 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707)))))))))

(declare-fun lt!1566676 () Unit!71224)

(declare-fun Unit!71327 () Unit!71224)

(assert (=> b!4353596 (= lt!1566676 Unit!71327)))

(assert (=> b!4353596 (contains!11087 lt!1566682 (_1!27437 (h!54442 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707)))))))))

(declare-fun lt!1566674 () Unit!71224)

(declare-fun Unit!71328 () Unit!71224)

(assert (=> b!4353596 (= lt!1566674 Unit!71328)))

(assert (=> b!4353596 (forall!9098 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707)))) lambda!139922)))

(declare-fun lt!1566677 () Unit!71224)

(declare-fun Unit!71329 () Unit!71224)

(assert (=> b!4353596 (= lt!1566677 Unit!71329)))

(assert (=> b!4353596 (forall!9098 (toList!2942 lt!1566679) lambda!139922)))

(declare-fun lt!1566687 () Unit!71224)

(declare-fun Unit!71330 () Unit!71224)

(assert (=> b!4353596 (= lt!1566687 Unit!71330)))

(declare-fun lt!1566671 () Unit!71224)

(declare-fun Unit!71331 () Unit!71224)

(assert (=> b!4353596 (= lt!1566671 Unit!71331)))

(declare-fun lt!1566675 () Unit!71224)

(assert (=> b!4353596 (= lt!1566675 (addForallContainsKeyThenBeforeAdding!54 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566682 (_1!27437 (h!54442 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707)))))) (_2!27437 (h!54442 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707))))))))))

(assert (=> b!4353596 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707))))) lambda!139922)))

(declare-fun lt!1566683 () Unit!71224)

(assert (=> b!4353596 (= lt!1566683 lt!1566675)))

(assert (=> b!4353596 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707))))) lambda!139922)))

(declare-fun lt!1566690 () Unit!71224)

(declare-fun Unit!71332 () Unit!71224)

(assert (=> b!4353596 (= lt!1566690 Unit!71332)))

(declare-fun res!1788959 () Bool)

(declare-fun call!302550 () Bool)

(assert (=> b!4353596 (= res!1788959 call!302550)))

(declare-fun e!2709251 () Bool)

(assert (=> b!4353596 (=> (not res!1788959) (not e!2709251))))

(assert (=> b!4353596 e!2709251))

(declare-fun lt!1566689 () Unit!71224)

(declare-fun Unit!71333 () Unit!71224)

(assert (=> b!4353596 (= lt!1566689 Unit!71333)))

(declare-fun e!2709249 () Bool)

(assert (=> d!1286461 e!2709249))

(declare-fun res!1788958 () Bool)

(assert (=> d!1286461 (=> (not res!1788958) (not e!2709249))))

(assert (=> d!1286461 (= res!1788958 (forall!9098 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707)))) lambda!139924))))

(assert (=> d!1286461 (= lt!1566684 e!2709250)))

(declare-fun c!740132 () Bool)

(assert (=> d!1286461 (= c!740132 ((_ is Nil!48901) (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707))))))))

(assert (=> d!1286461 (noDuplicateKeys!479 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707)))))))

(assert (=> d!1286461 (= (addToMapMapFromBucket!175 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707)))) (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707))))) lt!1566684)))

(declare-fun b!4353597 () Bool)

(declare-fun res!1788957 () Bool)

(assert (=> b!4353597 (=> (not res!1788957) (not e!2709249))))

(assert (=> b!4353597 (= res!1788957 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707))))) lambda!139924))))

(declare-fun b!4353598 () Bool)

(assert (=> b!4353598 (= e!2709249 (invariantList!668 (toList!2942 lt!1566684)))))

(declare-fun b!4353599 () Bool)

(assert (=> b!4353599 (= e!2709251 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707))))) lambda!139922))))

(declare-fun bm!302543 () Bool)

(assert (=> bm!302543 (= call!302548 (lemmaContainsAllItsOwnKeys!54 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707))))))))

(assert (=> b!4353600 (= e!2709250 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))))))

(declare-fun lt!1566686 () Unit!71224)

(assert (=> b!4353600 (= lt!1566686 call!302548)))

(assert (=> b!4353600 call!302549))

(declare-fun lt!1566680 () Unit!71224)

(assert (=> b!4353600 (= lt!1566680 lt!1566686)))

(assert (=> b!4353600 call!302550))

(declare-fun lt!1566691 () Unit!71224)

(declare-fun Unit!71334 () Unit!71224)

(assert (=> b!4353600 (= lt!1566691 Unit!71334)))

(declare-fun bm!302544 () Bool)

(assert (=> bm!302544 (= call!302550 (forall!9098 (ite c!740132 (toList!2942 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707))))) (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707))))) (ite c!740132 lambda!139916 lambda!139922)))))

(declare-fun bm!302545 () Bool)

(assert (=> bm!302545 (= call!302549 (forall!9098 (toList!2942 (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707))))) (ite c!740132 lambda!139916 lambda!139921)))))

(assert (= (and d!1286461 c!740132) b!4353600))

(assert (= (and d!1286461 (not c!740132)) b!4353596))

(assert (= (and b!4353596 res!1788959) b!4353599))

(assert (= (or b!4353600 b!4353596) bm!302543))

(assert (= (or b!4353600 b!4353596) bm!302545))

(assert (= (or b!4353600 b!4353596) bm!302544))

(assert (= (and d!1286461 res!1788958) b!4353597))

(assert (= (and b!4353597 res!1788957) b!4353598))

(assert (=> bm!302543 m!4964685))

(declare-fun m!4965673 () Bool)

(assert (=> bm!302543 m!4965673))

(declare-fun m!4965675 () Bool)

(assert (=> b!4353598 m!4965675))

(declare-fun m!4965679 () Bool)

(assert (=> bm!302544 m!4965679))

(declare-fun m!4965685 () Bool)

(assert (=> bm!302545 m!4965685))

(declare-fun m!4965687 () Bool)

(assert (=> b!4353597 m!4965687))

(declare-fun m!4965691 () Bool)

(assert (=> d!1286461 m!4965691))

(declare-fun m!4965695 () Bool)

(assert (=> d!1286461 m!4965695))

(declare-fun m!4965697 () Bool)

(assert (=> b!4353596 m!4965697))

(declare-fun m!4965703 () Bool)

(assert (=> b!4353596 m!4965703))

(declare-fun m!4965707 () Bool)

(assert (=> b!4353596 m!4965707))

(declare-fun m!4965711 () Bool)

(assert (=> b!4353596 m!4965711))

(assert (=> b!4353596 m!4965711))

(assert (=> b!4353596 m!4964685))

(declare-fun m!4965715 () Bool)

(assert (=> b!4353596 m!4965715))

(assert (=> b!4353596 m!4964685))

(assert (=> b!4353596 m!4965703))

(declare-fun m!4965721 () Bool)

(assert (=> b!4353596 m!4965721))

(declare-fun m!4965723 () Bool)

(assert (=> b!4353596 m!4965723))

(declare-fun m!4965725 () Bool)

(assert (=> b!4353596 m!4965725))

(declare-fun m!4965727 () Bool)

(assert (=> b!4353596 m!4965727))

(declare-fun m!4965729 () Bool)

(assert (=> b!4353596 m!4965729))

(assert (=> b!4353596 m!4965729))

(assert (=> b!4353599 m!4965711))

(assert (=> b!4353037 d!1286461))

(declare-fun bs!630110 () Bool)

(declare-fun d!1286465 () Bool)

(assert (= bs!630110 (and d!1286465 d!1286119)))

(declare-fun lambda!139928 () Int)

(assert (=> bs!630110 (not (= lambda!139928 lambda!139784))))

(declare-fun bs!630111 () Bool)

(assert (= bs!630111 (and d!1286465 d!1286103)))

(assert (=> bs!630111 (= lambda!139928 lambda!139779)))

(declare-fun bs!630112 () Bool)

(assert (= bs!630112 (and d!1286465 d!1286249)))

(assert (=> bs!630112 (= lambda!139928 lambda!139854)))

(declare-fun bs!630113 () Bool)

(assert (= bs!630113 (and d!1286465 d!1286095)))

(assert (=> bs!630113 (= lambda!139928 lambda!139778)))

(declare-fun bs!630114 () Bool)

(assert (= bs!630114 (and d!1286465 d!1286105)))

(assert (=> bs!630114 (= lambda!139928 lambda!139780)))

(declare-fun bs!630115 () Bool)

(assert (= bs!630115 (and d!1286465 d!1286115)))

(assert (=> bs!630115 (= lambda!139928 lambda!139781)))

(declare-fun bs!630116 () Bool)

(assert (= bs!630116 (and d!1286465 d!1286053)))

(assert (=> bs!630116 (= lambda!139928 lambda!139772)))

(declare-fun bs!630117 () Bool)

(assert (= bs!630117 (and d!1286465 d!1286061)))

(assert (=> bs!630117 (= lambda!139928 lambda!139775)))

(declare-fun bs!630118 () Bool)

(assert (= bs!630118 (and d!1286465 start!420836)))

(assert (=> bs!630118 (= lambda!139928 lambda!139751)))

(declare-fun bs!630119 () Bool)

(assert (= bs!630119 (and d!1286465 d!1286369)))

(assert (=> bs!630119 (= lambda!139928 lambda!139895)))

(declare-fun bs!630120 () Bool)

(assert (= bs!630120 (and d!1286465 d!1286313)))

(assert (=> bs!630120 (= lambda!139928 lambda!139894)))

(declare-fun lt!1566700 () ListMap!2185)

(assert (=> d!1286465 (invariantList!668 (toList!2942 lt!1566700))))

(declare-fun e!2709260 () ListMap!2185)

(assert (=> d!1286465 (= lt!1566700 e!2709260)))

(declare-fun c!740136 () Bool)

(assert (=> d!1286465 (= c!740136 ((_ is Cons!48902) (t!355946 (t!355946 (toList!2941 lm!1707)))))))

(assert (=> d!1286465 (forall!9096 (t!355946 (t!355946 (toList!2941 lm!1707))) lambda!139928)))

(assert (=> d!1286465 (= (extractMap!538 (t!355946 (t!355946 (toList!2941 lm!1707)))) lt!1566700)))

(declare-fun b!4353620 () Bool)

(assert (=> b!4353620 (= e!2709260 (addToMapMapFromBucket!175 (_2!27438 (h!54443 (t!355946 (t!355946 (toList!2941 lm!1707))))) (extractMap!538 (t!355946 (t!355946 (t!355946 (toList!2941 lm!1707)))))))))

(declare-fun b!4353621 () Bool)

(assert (=> b!4353621 (= e!2709260 (ListMap!2186 Nil!48901))))

(assert (= (and d!1286465 c!740136) b!4353620))

(assert (= (and d!1286465 (not c!740136)) b!4353621))

(declare-fun m!4965737 () Bool)

(assert (=> d!1286465 m!4965737))

(declare-fun m!4965739 () Bool)

(assert (=> d!1286465 m!4965739))

(declare-fun m!4965741 () Bool)

(assert (=> b!4353620 m!4965741))

(assert (=> b!4353620 m!4965741))

(declare-fun m!4965743 () Bool)

(assert (=> b!4353620 m!4965743))

(assert (=> b!4353037 d!1286465))

(declare-fun d!1286469 () Bool)

(declare-fun res!1788980 () Bool)

(declare-fun e!2709270 () Bool)

(assert (=> d!1286469 (=> res!1788980 e!2709270)))

(assert (=> d!1286469 (= res!1788980 ((_ is Nil!48901) newBucket!200))))

(assert (=> d!1286469 (= (forall!9098 newBucket!200 lambda!139787) e!2709270)))

(declare-fun b!4353629 () Bool)

(declare-fun e!2709271 () Bool)

(assert (=> b!4353629 (= e!2709270 e!2709271)))

(declare-fun res!1788981 () Bool)

(assert (=> b!4353629 (=> (not res!1788981) (not e!2709271))))

(declare-fun dynLambda!20622 (Int tuple2!48286) Bool)

(assert (=> b!4353629 (= res!1788981 (dynLambda!20622 lambda!139787 (h!54442 newBucket!200)))))

(declare-fun b!4353630 () Bool)

(assert (=> b!4353630 (= e!2709271 (forall!9098 (t!355945 newBucket!200) lambda!139787))))

(assert (= (and d!1286469 (not res!1788980)) b!4353629))

(assert (= (and b!4353629 res!1788981) b!4353630))

(declare-fun b_lambda!130815 () Bool)

(assert (=> (not b_lambda!130815) (not b!4353629)))

(declare-fun m!4965747 () Bool)

(assert (=> b!4353629 m!4965747))

(declare-fun m!4965749 () Bool)

(assert (=> b!4353630 m!4965749))

(assert (=> d!1286123 d!1286469))

(declare-fun d!1286473 () Bool)

(declare-fun c!740140 () Bool)

(assert (=> d!1286473 (= c!740140 ((_ is Nil!48902) (toList!2941 lm!1707)))))

(declare-fun e!2709275 () (InoxSet tuple2!48288))

(assert (=> d!1286473 (= (content!7698 (toList!2941 lm!1707)) e!2709275)))

(declare-fun b!4353640 () Bool)

(assert (=> b!4353640 (= e!2709275 ((as const (Array tuple2!48288 Bool)) false))))

(declare-fun b!4353641 () Bool)

(assert (=> b!4353641 (= e!2709275 ((_ map or) (store ((as const (Array tuple2!48288 Bool)) false) (h!54443 (toList!2941 lm!1707)) true) (content!7698 (t!355946 (toList!2941 lm!1707)))))))

(assert (= (and d!1286473 c!740140) b!4353640))

(assert (= (and d!1286473 (not c!740140)) b!4353641))

(declare-fun m!4965751 () Bool)

(assert (=> b!4353641 m!4965751))

(assert (=> b!4353641 m!4965335))

(assert (=> d!1286131 d!1286473))

(declare-fun d!1286475 () Bool)

(declare-fun lt!1566725 () Bool)

(assert (=> d!1286475 (= lt!1566725 (select (content!7699 (keys!16508 (extractMap!538 (toList!2941 lm!1707)))) key!3918))))

(declare-fun e!2709277 () Bool)

(assert (=> d!1286475 (= lt!1566725 e!2709277)))

(declare-fun res!1788984 () Bool)

(assert (=> d!1286475 (=> (not res!1788984) (not e!2709277))))

(assert (=> d!1286475 (= res!1788984 ((_ is Cons!48904) (keys!16508 (extractMap!538 (toList!2941 lm!1707)))))))

(assert (=> d!1286475 (= (contains!11091 (keys!16508 (extractMap!538 (toList!2941 lm!1707))) key!3918) lt!1566725)))

(declare-fun b!4353642 () Bool)

(declare-fun e!2709276 () Bool)

(assert (=> b!4353642 (= e!2709277 e!2709276)))

(declare-fun res!1788983 () Bool)

(assert (=> b!4353642 (=> res!1788983 e!2709276)))

(assert (=> b!4353642 (= res!1788983 (= (h!54447 (keys!16508 (extractMap!538 (toList!2941 lm!1707)))) key!3918))))

(declare-fun b!4353643 () Bool)

(assert (=> b!4353643 (= e!2709276 (contains!11091 (t!355948 (keys!16508 (extractMap!538 (toList!2941 lm!1707)))) key!3918))))

(assert (= (and d!1286475 res!1788984) b!4353642))

(assert (= (and b!4353642 (not res!1788983)) b!4353643))

(assert (=> d!1286475 m!4964735))

(declare-fun m!4965753 () Bool)

(assert (=> d!1286475 m!4965753))

(declare-fun m!4965755 () Bool)

(assert (=> d!1286475 m!4965755))

(declare-fun m!4965757 () Bool)

(assert (=> b!4353643 m!4965757))

(assert (=> b!4353051 d!1286475))

(declare-fun bs!630142 () Bool)

(declare-fun b!4353645 () Bool)

(assert (= bs!630142 (and b!4353645 b!4353383)))

(declare-fun lambda!139932 () Int)

(assert (=> bs!630142 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (t!355945 (toList!2942 lt!1566081))) (= lambda!139932 lambda!139878))))

(declare-fun bs!630143 () Bool)

(assert (= bs!630143 (and b!4353645 b!4353384)))

(assert (=> bs!630143 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (Cons!48901 (h!54442 (toList!2942 lt!1566081)) (t!355945 (toList!2942 lt!1566081)))) (= lambda!139932 lambda!139879))))

(declare-fun bs!630144 () Bool)

(assert (= bs!630144 (and b!4353645 b!4353210)))

(assert (=> bs!630144 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (toList!2942 lt!1566072)) (= lambda!139932 lambda!139794))))

(declare-fun bs!630145 () Bool)

(assert (= bs!630145 (and b!4353645 b!4353501)))

(assert (=> bs!630145 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))) (= lambda!139932 lambda!139897))))

(declare-fun bs!630146 () Bool)

(assert (= bs!630146 (and b!4353645 b!4353379)))

(assert (=> bs!630146 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (toList!2942 lt!1566081)) (= lambda!139932 lambda!139881))))

(declare-fun bs!630147 () Bool)

(assert (= bs!630147 (and b!4353645 b!4353580)))

(assert (=> bs!630147 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (t!355945 (toList!2942 lt!1566072))) (= lambda!139932 lambda!139908))))

(declare-fun bs!630148 () Bool)

(assert (= bs!630148 (and b!4353645 b!4353576)))

(assert (=> bs!630148 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (toList!2942 lt!1566072)) (= lambda!139932 lambda!139910))))

(declare-fun bs!630149 () Bool)

(assert (= bs!630149 (and b!4353645 b!4353163)))

(assert (=> bs!630149 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (toList!2942 lt!1566081)) (= lambda!139932 lambda!139792))))

(declare-fun bs!630150 () Bool)

(assert (= bs!630150 (and b!4353645 b!4353497)))

(assert (=> bs!630150 (= lambda!139932 lambda!139900)))

(declare-fun bs!630151 () Bool)

(assert (= bs!630151 (and b!4353645 b!4353502)))

(assert (=> bs!630151 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (Cons!48901 (h!54442 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))) (t!355945 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))) (= lambda!139932 lambda!139898))))

(declare-fun bs!630152 () Bool)

(assert (= bs!630152 (and b!4353645 b!4353581)))

(assert (=> bs!630152 (= (= (toList!2942 (extractMap!538 (toList!2941 lm!1707))) (Cons!48901 (h!54442 (toList!2942 lt!1566072)) (t!355945 (toList!2942 lt!1566072)))) (= lambda!139932 lambda!139909))))

(assert (=> b!4353645 true))

(declare-fun bs!630153 () Bool)

(declare-fun b!4353646 () Bool)

(assert (= bs!630153 (and b!4353646 b!4353164)))

(declare-fun lambda!139933 () Int)

(assert (=> bs!630153 (= lambda!139933 lambda!139793)))

(declare-fun bs!630154 () Bool)

(assert (= bs!630154 (and b!4353646 b!4353582)))

(assert (=> bs!630154 (= lambda!139933 lambda!139913)))

(declare-fun bs!630155 () Bool)

(assert (= bs!630155 (and b!4353646 b!4353385)))

(assert (=> bs!630155 (= lambda!139933 lambda!139883)))

(declare-fun bs!630156 () Bool)

(assert (= bs!630156 (and b!4353646 b!4353211)))

(assert (=> bs!630156 (= lambda!139933 lambda!139795)))

(declare-fun bs!630157 () Bool)

(assert (= bs!630157 (and b!4353646 b!4353503)))

(assert (=> bs!630157 (= lambda!139933 lambda!139902)))

(declare-fun d!1286477 () Bool)

(declare-fun e!2709278 () Bool)

(assert (=> d!1286477 e!2709278))

(declare-fun res!1788986 () Bool)

(assert (=> d!1286477 (=> (not res!1788986) (not e!2709278))))

(declare-fun lt!1566726 () List!49028)

(assert (=> d!1286477 (= res!1788986 (noDuplicate!599 lt!1566726))))

(assert (=> d!1286477 (= lt!1566726 (getKeysList!116 (toList!2942 (extractMap!538 (toList!2941 lm!1707)))))))

(assert (=> d!1286477 (= (keys!16508 (extractMap!538 (toList!2941 lm!1707))) lt!1566726)))

(declare-fun b!4353644 () Bool)

(declare-fun res!1788987 () Bool)

(assert (=> b!4353644 (=> (not res!1788987) (not e!2709278))))

(assert (=> b!4353644 (= res!1788987 (= (length!54 lt!1566726) (length!55 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))))))

(declare-fun res!1788985 () Bool)

(assert (=> b!4353645 (=> (not res!1788985) (not e!2709278))))

(assert (=> b!4353645 (= res!1788985 (forall!9099 lt!1566726 lambda!139932))))

(assert (=> b!4353646 (= e!2709278 (= (content!7699 lt!1566726) (content!7699 (map!10635 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) lambda!139933))))))

(assert (= (and d!1286477 res!1788986) b!4353644))

(assert (= (and b!4353644 res!1788987) b!4353645))

(assert (= (and b!4353645 res!1788985) b!4353646))

(declare-fun m!4965759 () Bool)

(assert (=> d!1286477 m!4965759))

(assert (=> d!1286477 m!4964739))

(declare-fun m!4965761 () Bool)

(assert (=> b!4353644 m!4965761))

(assert (=> b!4353644 m!4965471))

(declare-fun m!4965763 () Bool)

(assert (=> b!4353645 m!4965763))

(declare-fun m!4965765 () Bool)

(assert (=> b!4353646 m!4965765))

(declare-fun m!4965767 () Bool)

(assert (=> b!4353646 m!4965767))

(assert (=> b!4353646 m!4965767))

(declare-fun m!4965769 () Bool)

(assert (=> b!4353646 m!4965769))

(assert (=> b!4353051 d!1286477))

(assert (=> d!1286101 d!1286085))

(declare-fun d!1286479 () Bool)

(assert (=> d!1286479 (contains!11087 lt!1566072 key!3918)))

(assert (=> d!1286479 true))

(declare-fun _$11!1149 () Unit!71224)

(assert (=> d!1286479 (= (choose!26820 (_2!27438 (h!54443 (toList!2941 lm!1707))) key!3918 newValue!99 lt!1566072) _$11!1149)))

(declare-fun bs!630170 () Bool)

(assert (= bs!630170 d!1286479))

(assert (=> bs!630170 m!4964309))

(assert (=> d!1286101 d!1286479))

(declare-fun d!1286481 () Bool)

(declare-fun res!1788988 () Bool)

(declare-fun e!2709279 () Bool)

(assert (=> d!1286481 (=> res!1788988 e!2709279)))

(assert (=> d!1286481 (= res!1788988 (not ((_ is Cons!48901) (_2!27438 (h!54443 (toList!2941 lm!1707))))))))

(assert (=> d!1286481 (= (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 lm!1707)))) e!2709279)))

(declare-fun b!4353647 () Bool)

(declare-fun e!2709280 () Bool)

(assert (=> b!4353647 (= e!2709279 e!2709280)))

(declare-fun res!1788989 () Bool)

(assert (=> b!4353647 (=> (not res!1788989) (not e!2709280))))

(assert (=> b!4353647 (= res!1788989 (not (containsKey!661 (t!355945 (_2!27438 (h!54443 (toList!2941 lm!1707)))) (_1!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 lm!1707))))))))))

(declare-fun b!4353648 () Bool)

(assert (=> b!4353648 (= e!2709280 (noDuplicateKeys!479 (t!355945 (_2!27438 (h!54443 (toList!2941 lm!1707))))))))

(assert (= (and d!1286481 (not res!1788988)) b!4353647))

(assert (= (and b!4353647 res!1788989) b!4353648))

(declare-fun m!4965787 () Bool)

(assert (=> b!4353647 m!4965787))

(declare-fun m!4965789 () Bool)

(assert (=> b!4353648 m!4965789))

(assert (=> d!1286101 d!1286481))

(declare-fun d!1286483 () Bool)

(declare-fun c!740144 () Bool)

(assert (=> d!1286483 (= c!740144 ((_ is Nil!48901) (toList!2942 (extractMap!538 (toList!2941 (+!615 lt!1566077 lt!1566082))))))))

(declare-fun e!2709284 () (InoxSet tuple2!48286))

(assert (=> d!1286483 (= (content!7697 (toList!2942 (extractMap!538 (toList!2941 (+!615 lt!1566077 lt!1566082))))) e!2709284)))

(declare-fun b!4353655 () Bool)

(assert (=> b!4353655 (= e!2709284 ((as const (Array tuple2!48286 Bool)) false))))

(declare-fun b!4353656 () Bool)

(assert (=> b!4353656 (= e!2709284 ((_ map or) (store ((as const (Array tuple2!48286 Bool)) false) (h!54442 (toList!2942 (extractMap!538 (toList!2941 (+!615 lt!1566077 lt!1566082))))) true) (content!7697 (t!355945 (toList!2942 (extractMap!538 (toList!2941 (+!615 lt!1566077 lt!1566082))))))))))

(assert (= (and d!1286483 c!740144) b!4353655))

(assert (= (and d!1286483 (not c!740144)) b!4353656))

(declare-fun m!4965807 () Bool)

(assert (=> b!4353656 m!4965807))

(declare-fun m!4965809 () Bool)

(assert (=> b!4353656 m!4965809))

(assert (=> d!1286087 d!1286483))

(declare-fun d!1286487 () Bool)

(declare-fun c!740145 () Bool)

(assert (=> d!1286487 (= c!740145 ((_ is Nil!48901) (toList!2942 (+!616 lt!1566081 lt!1566079))))))

(declare-fun e!2709285 () (InoxSet tuple2!48286))

(assert (=> d!1286487 (= (content!7697 (toList!2942 (+!616 lt!1566081 lt!1566079))) e!2709285)))

(declare-fun b!4353657 () Bool)

(assert (=> b!4353657 (= e!2709285 ((as const (Array tuple2!48286 Bool)) false))))

(declare-fun b!4353658 () Bool)

(assert (=> b!4353658 (= e!2709285 ((_ map or) (store ((as const (Array tuple2!48286 Bool)) false) (h!54442 (toList!2942 (+!616 lt!1566081 lt!1566079))) true) (content!7697 (t!355945 (toList!2942 (+!616 lt!1566081 lt!1566079))))))))

(assert (= (and d!1286487 c!740145) b!4353657))

(assert (= (and d!1286487 (not c!740145)) b!4353658))

(declare-fun m!4965819 () Bool)

(assert (=> b!4353658 m!4965819))

(declare-fun m!4965821 () Bool)

(assert (=> b!4353658 m!4965821))

(assert (=> d!1286087 d!1286487))

(assert (=> b!4352950 d!1286157))

(assert (=> b!4352950 d!1286161))

(declare-fun d!1286491 () Bool)

(declare-fun e!2709287 () Bool)

(assert (=> d!1286491 e!2709287))

(declare-fun res!1788990 () Bool)

(assert (=> d!1286491 (=> res!1788990 e!2709287)))

(declare-fun lt!1566729 () Bool)

(assert (=> d!1286491 (= res!1788990 (not lt!1566729))))

(declare-fun lt!1566728 () Bool)

(assert (=> d!1286491 (= lt!1566729 lt!1566728)))

(declare-fun lt!1566730 () Unit!71224)

(declare-fun e!2709286 () Unit!71224)

(assert (=> d!1286491 (= lt!1566730 e!2709286)))

(declare-fun c!740146 () Bool)

(assert (=> d!1286491 (= c!740146 lt!1566728)))

(assert (=> d!1286491 (= lt!1566728 (containsKey!665 (toList!2941 lt!1566264) (_1!27438 lt!1566082)))))

(assert (=> d!1286491 (= (contains!11086 lt!1566264 (_1!27438 lt!1566082)) lt!1566729)))

(declare-fun b!4353659 () Bool)

(declare-fun lt!1566731 () Unit!71224)

(assert (=> b!4353659 (= e!2709286 lt!1566731)))

(assert (=> b!4353659 (= lt!1566731 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!2941 lt!1566264) (_1!27438 lt!1566082)))))

(assert (=> b!4353659 (isDefined!7744 (getValueByKey!434 (toList!2941 lt!1566264) (_1!27438 lt!1566082)))))

(declare-fun b!4353660 () Bool)

(declare-fun Unit!71347 () Unit!71224)

(assert (=> b!4353660 (= e!2709286 Unit!71347)))

(declare-fun b!4353661 () Bool)

(assert (=> b!4353661 (= e!2709287 (isDefined!7744 (getValueByKey!434 (toList!2941 lt!1566264) (_1!27438 lt!1566082))))))

(assert (= (and d!1286491 c!740146) b!4353659))

(assert (= (and d!1286491 (not c!740146)) b!4353660))

(assert (= (and d!1286491 (not res!1788990)) b!4353661))

(declare-fun m!4965823 () Bool)

(assert (=> d!1286491 m!4965823))

(declare-fun m!4965825 () Bool)

(assert (=> b!4353659 m!4965825))

(assert (=> b!4353659 m!4964699))

(assert (=> b!4353659 m!4964699))

(declare-fun m!4965827 () Bool)

(assert (=> b!4353659 m!4965827))

(assert (=> b!4353661 m!4964699))

(assert (=> b!4353661 m!4964699))

(assert (=> b!4353661 m!4965827))

(assert (=> d!1286099 d!1286491))

(declare-fun b!4353662 () Bool)

(declare-fun e!2709288 () Option!10448)

(assert (=> b!4353662 (= e!2709288 (Some!10447 (_2!27438 (h!54443 lt!1566263))))))

(declare-fun b!4353664 () Bool)

(declare-fun e!2709289 () Option!10448)

(assert (=> b!4353664 (= e!2709289 (getValueByKey!434 (t!355946 lt!1566263) (_1!27438 lt!1566082)))))

(declare-fun d!1286493 () Bool)

(declare-fun c!740147 () Bool)

(assert (=> d!1286493 (= c!740147 (and ((_ is Cons!48902) lt!1566263) (= (_1!27438 (h!54443 lt!1566263)) (_1!27438 lt!1566082))))))

(assert (=> d!1286493 (= (getValueByKey!434 lt!1566263 (_1!27438 lt!1566082)) e!2709288)))

(declare-fun b!4353663 () Bool)

(assert (=> b!4353663 (= e!2709288 e!2709289)))

(declare-fun c!740148 () Bool)

(assert (=> b!4353663 (= c!740148 (and ((_ is Cons!48902) lt!1566263) (not (= (_1!27438 (h!54443 lt!1566263)) (_1!27438 lt!1566082)))))))

(declare-fun b!4353665 () Bool)

(assert (=> b!4353665 (= e!2709289 None!10447)))

(assert (= (and d!1286493 c!740147) b!4353662))

(assert (= (and d!1286493 (not c!740147)) b!4353663))

(assert (= (and b!4353663 c!740148) b!4353664))

(assert (= (and b!4353663 (not c!740148)) b!4353665))

(declare-fun m!4965829 () Bool)

(assert (=> b!4353664 m!4965829))

(assert (=> d!1286099 d!1286493))

(declare-fun d!1286497 () Bool)

(assert (=> d!1286497 (= (getValueByKey!434 lt!1566263 (_1!27438 lt!1566082)) (Some!10447 (_2!27438 lt!1566082)))))

(declare-fun lt!1566742 () Unit!71224)

(declare-fun choose!26834 (List!49026 (_ BitVec 64) List!49025) Unit!71224)

(assert (=> d!1286497 (= lt!1566742 (choose!26834 lt!1566263 (_1!27438 lt!1566082) (_2!27438 lt!1566082)))))

(declare-fun e!2709300 () Bool)

(assert (=> d!1286497 e!2709300))

(declare-fun res!1788998 () Bool)

(assert (=> d!1286497 (=> (not res!1788998) (not e!2709300))))

(assert (=> d!1286497 (= res!1788998 (isStrictlySorted!94 lt!1566263))))

(assert (=> d!1286497 (= (lemmaContainsTupThenGetReturnValue!209 lt!1566263 (_1!27438 lt!1566082) (_2!27438 lt!1566082)) lt!1566742)))

(declare-fun b!4353683 () Bool)

(declare-fun res!1788999 () Bool)

(assert (=> b!4353683 (=> (not res!1788999) (not e!2709300))))

(assert (=> b!4353683 (= res!1788999 (containsKey!665 lt!1566263 (_1!27438 lt!1566082)))))

(declare-fun b!4353684 () Bool)

(assert (=> b!4353684 (= e!2709300 (contains!11088 lt!1566263 (tuple2!48289 (_1!27438 lt!1566082) (_2!27438 lt!1566082))))))

(assert (= (and d!1286497 res!1788998) b!4353683))

(assert (= (and b!4353683 res!1788999) b!4353684))

(assert (=> d!1286497 m!4964693))

(declare-fun m!4965851 () Bool)

(assert (=> d!1286497 m!4965851))

(declare-fun m!4965853 () Bool)

(assert (=> d!1286497 m!4965853))

(declare-fun m!4965855 () Bool)

(assert (=> b!4353683 m!4965855))

(declare-fun m!4965857 () Bool)

(assert (=> b!4353684 m!4965857))

(assert (=> d!1286099 d!1286497))

(declare-fun b!4353711 () Bool)

(declare-fun e!2709314 () List!49026)

(declare-fun call!302562 () List!49026)

(assert (=> b!4353711 (= e!2709314 call!302562)))

(declare-fun c!740162 () Bool)

(declare-fun b!4353712 () Bool)

(declare-fun e!2709318 () List!49026)

(declare-fun c!740163 () Bool)

(assert (=> b!4353712 (= e!2709318 (ite c!740163 (t!355946 (toList!2941 lt!1566077)) (ite c!740162 (Cons!48902 (h!54443 (toList!2941 lt!1566077)) (t!355946 (toList!2941 lt!1566077))) Nil!48902)))))

(declare-fun bm!302556 () Bool)

(declare-fun call!302563 () List!49026)

(declare-fun call!302561 () List!49026)

(assert (=> bm!302556 (= call!302563 call!302561)))

(declare-fun b!4353713 () Bool)

(assert (=> b!4353713 (= e!2709314 call!302562)))

(declare-fun b!4353714 () Bool)

(declare-fun e!2709317 () List!49026)

(declare-fun e!2709316 () List!49026)

(assert (=> b!4353714 (= e!2709317 e!2709316)))

(assert (=> b!4353714 (= c!740163 (and ((_ is Cons!48902) (toList!2941 lt!1566077)) (= (_1!27438 (h!54443 (toList!2941 lt!1566077))) (_1!27438 lt!1566082))))))

(declare-fun b!4353715 () Bool)

(assert (=> b!4353715 (= e!2709317 call!302561)))

(declare-fun b!4353716 () Bool)

(assert (=> b!4353716 (= e!2709318 (insertStrictlySorted!125 (t!355946 (toList!2941 lt!1566077)) (_1!27438 lt!1566082) (_2!27438 lt!1566082)))))

(declare-fun d!1286503 () Bool)

(declare-fun e!2709315 () Bool)

(assert (=> d!1286503 e!2709315))

(declare-fun res!1789011 () Bool)

(assert (=> d!1286503 (=> (not res!1789011) (not e!2709315))))

(declare-fun lt!1566748 () List!49026)

(assert (=> d!1286503 (= res!1789011 (isStrictlySorted!94 lt!1566748))))

(assert (=> d!1286503 (= lt!1566748 e!2709317)))

(declare-fun c!740164 () Bool)

(assert (=> d!1286503 (= c!740164 (and ((_ is Cons!48902) (toList!2941 lt!1566077)) (bvslt (_1!27438 (h!54443 (toList!2941 lt!1566077))) (_1!27438 lt!1566082))))))

(assert (=> d!1286503 (isStrictlySorted!94 (toList!2941 lt!1566077))))

(assert (=> d!1286503 (= (insertStrictlySorted!125 (toList!2941 lt!1566077) (_1!27438 lt!1566082) (_2!27438 lt!1566082)) lt!1566748)))

(declare-fun bm!302557 () Bool)

(declare-fun $colon$colon!685 (List!49026 tuple2!48288) List!49026)

(assert (=> bm!302557 (= call!302561 ($colon$colon!685 e!2709318 (ite c!740164 (h!54443 (toList!2941 lt!1566077)) (tuple2!48289 (_1!27438 lt!1566082) (_2!27438 lt!1566082)))))))

(declare-fun c!740165 () Bool)

(assert (=> bm!302557 (= c!740165 c!740164)))

(declare-fun b!4353717 () Bool)

(declare-fun res!1789010 () Bool)

(assert (=> b!4353717 (=> (not res!1789010) (not e!2709315))))

(assert (=> b!4353717 (= res!1789010 (containsKey!665 lt!1566748 (_1!27438 lt!1566082)))))

(declare-fun b!4353718 () Bool)

(assert (=> b!4353718 (= c!740162 (and ((_ is Cons!48902) (toList!2941 lt!1566077)) (bvsgt (_1!27438 (h!54443 (toList!2941 lt!1566077))) (_1!27438 lt!1566082))))))

(assert (=> b!4353718 (= e!2709316 e!2709314)))

(declare-fun bm!302558 () Bool)

(assert (=> bm!302558 (= call!302562 call!302563)))

(declare-fun b!4353719 () Bool)

(assert (=> b!4353719 (= e!2709315 (contains!11088 lt!1566748 (tuple2!48289 (_1!27438 lt!1566082) (_2!27438 lt!1566082))))))

(declare-fun b!4353720 () Bool)

(assert (=> b!4353720 (= e!2709316 call!302563)))

(assert (= (and d!1286503 c!740164) b!4353715))

(assert (= (and d!1286503 (not c!740164)) b!4353714))

(assert (= (and b!4353714 c!740163) b!4353720))

(assert (= (and b!4353714 (not c!740163)) b!4353718))

(assert (= (and b!4353718 c!740162) b!4353713))

(assert (= (and b!4353718 (not c!740162)) b!4353711))

(assert (= (or b!4353713 b!4353711) bm!302558))

(assert (= (or b!4353720 bm!302558) bm!302556))

(assert (= (or b!4353715 bm!302556) bm!302557))

(assert (= (and bm!302557 c!740165) b!4353716))

(assert (= (and bm!302557 (not c!740165)) b!4353712))

(assert (= (and d!1286503 res!1789011) b!4353717))

(assert (= (and b!4353717 res!1789010) b!4353719))

(declare-fun m!4965867 () Bool)

(assert (=> d!1286503 m!4965867))

(declare-fun m!4965869 () Bool)

(assert (=> d!1286503 m!4965869))

(declare-fun m!4965871 () Bool)

(assert (=> b!4353717 m!4965871))

(declare-fun m!4965873 () Bool)

(assert (=> bm!302557 m!4965873))

(declare-fun m!4965875 () Bool)

(assert (=> b!4353716 m!4965875))

(declare-fun m!4965877 () Bool)

(assert (=> b!4353719 m!4965877))

(assert (=> d!1286099 d!1286503))

(declare-fun d!1286507 () Bool)

(assert (=> d!1286507 (= (tail!6979 (toList!2941 lm!1707)) (t!355946 (toList!2941 lm!1707)))))

(assert (=> d!1286093 d!1286507))

(declare-fun d!1286509 () Bool)

(declare-fun lt!1566749 () Bool)

(assert (=> d!1286509 (= lt!1566749 (select (content!7699 e!2708885) key!3918))))

(declare-fun e!2709320 () Bool)

(assert (=> d!1286509 (= lt!1566749 e!2709320)))

(declare-fun res!1789013 () Bool)

(assert (=> d!1286509 (=> (not res!1789013) (not e!2709320))))

(assert (=> d!1286509 (= res!1789013 ((_ is Cons!48904) e!2708885))))

(assert (=> d!1286509 (= (contains!11091 e!2708885 key!3918) lt!1566749)))

(declare-fun b!4353721 () Bool)

(declare-fun e!2709319 () Bool)

(assert (=> b!4353721 (= e!2709320 e!2709319)))

(declare-fun res!1789012 () Bool)

(assert (=> b!4353721 (=> res!1789012 e!2709319)))

(assert (=> b!4353721 (= res!1789012 (= (h!54447 e!2708885) key!3918))))

(declare-fun b!4353722 () Bool)

(assert (=> b!4353722 (= e!2709319 (contains!11091 (t!355948 e!2708885) key!3918))))

(assert (= (and d!1286509 res!1789013) b!4353721))

(assert (= (and b!4353721 (not res!1789012)) b!4353722))

(declare-fun m!4965879 () Bool)

(assert (=> d!1286509 m!4965879))

(declare-fun m!4965881 () Bool)

(assert (=> d!1286509 m!4965881))

(declare-fun m!4965883 () Bool)

(assert (=> b!4353722 m!4965883))

(assert (=> bm!302499 d!1286509))

(declare-fun d!1286511 () Bool)

(declare-fun res!1789014 () Bool)

(declare-fun e!2709321 () Bool)

(assert (=> d!1286511 (=> res!1789014 e!2709321)))

(assert (=> d!1286511 (= res!1789014 (and ((_ is Cons!48901) (t!355945 (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707)))))) (= (_1!27437 (h!54442 (t!355945 (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707))))))) key!3918)))))

(assert (=> d!1286511 (= (containsKey!661 (t!355945 (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707))))) key!3918) e!2709321)))

(declare-fun b!4353723 () Bool)

(declare-fun e!2709322 () Bool)

(assert (=> b!4353723 (= e!2709321 e!2709322)))

(declare-fun res!1789015 () Bool)

(assert (=> b!4353723 (=> (not res!1789015) (not e!2709322))))

(assert (=> b!4353723 (= res!1789015 ((_ is Cons!48901) (t!355945 (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707)))))))))

(declare-fun b!4353724 () Bool)

(assert (=> b!4353724 (= e!2709322 (containsKey!661 (t!355945 (t!355945 (apply!11331 lm!1707 (_1!27438 (h!54443 (toList!2941 lm!1707)))))) key!3918))))

(assert (= (and d!1286511 (not res!1789014)) b!4353723))

(assert (= (and b!4353723 res!1789015) b!4353724))

(declare-fun m!4965885 () Bool)

(assert (=> b!4353724 m!4965885))

(assert (=> b!4352892 d!1286511))

(assert (=> b!4352953 d!1286161))

(declare-fun b!4353725 () Bool)

(declare-fun e!2709325 () Bool)

(assert (=> b!4353725 (= e!2709325 (not (contains!11091 (keys!16508 lt!1566256) (_1!27437 lt!1566079))))))

(declare-fun b!4353726 () Bool)

(declare-fun e!2709326 () Unit!71224)

(declare-fun lt!1566755 () Unit!71224)

(assert (=> b!4353726 (= e!2709326 lt!1566755)))

(declare-fun lt!1566752 () Unit!71224)

(assert (=> b!4353726 (= lt!1566752 (lemmaContainsKeyImpliesGetValueByKeyDefined!345 (toList!2942 lt!1566256) (_1!27437 lt!1566079)))))

(assert (=> b!4353726 (isDefined!7742 (getValueByKey!435 (toList!2942 lt!1566256) (_1!27437 lt!1566079)))))

(declare-fun lt!1566753 () Unit!71224)

(assert (=> b!4353726 (= lt!1566753 lt!1566752)))

(assert (=> b!4353726 (= lt!1566755 (lemmaInListThenGetKeysListContains!113 (toList!2942 lt!1566256) (_1!27437 lt!1566079)))))

(declare-fun call!302564 () Bool)

(assert (=> b!4353726 call!302564))

(declare-fun b!4353727 () Bool)

(declare-fun e!2709324 () Bool)

(declare-fun e!2709323 () Bool)

(assert (=> b!4353727 (= e!2709324 e!2709323)))

(declare-fun res!1789017 () Bool)

(assert (=> b!4353727 (=> (not res!1789017) (not e!2709323))))

(assert (=> b!4353727 (= res!1789017 (isDefined!7742 (getValueByKey!435 (toList!2942 lt!1566256) (_1!27437 lt!1566079))))))

(declare-fun b!4353728 () Bool)

(declare-fun e!2709328 () Unit!71224)

(assert (=> b!4353728 (= e!2709326 e!2709328)))

(declare-fun c!740166 () Bool)

(assert (=> b!4353728 (= c!740166 call!302564)))

(declare-fun b!4353729 () Bool)

(declare-fun Unit!71351 () Unit!71224)

(assert (=> b!4353729 (= e!2709328 Unit!71351)))

(declare-fun b!4353730 () Bool)

(assert (=> b!4353730 (= e!2709323 (contains!11091 (keys!16508 lt!1566256) (_1!27437 lt!1566079)))))

(declare-fun d!1286513 () Bool)

(assert (=> d!1286513 e!2709324))

(declare-fun res!1789016 () Bool)

(assert (=> d!1286513 (=> res!1789016 e!2709324)))

(assert (=> d!1286513 (= res!1789016 e!2709325)))

(declare-fun res!1789018 () Bool)

(assert (=> d!1286513 (=> (not res!1789018) (not e!2709325))))

(declare-fun lt!1566757 () Bool)

(assert (=> d!1286513 (= res!1789018 (not lt!1566757))))

(declare-fun lt!1566754 () Bool)

(assert (=> d!1286513 (= lt!1566757 lt!1566754)))

(declare-fun lt!1566750 () Unit!71224)

(assert (=> d!1286513 (= lt!1566750 e!2709326)))

(declare-fun c!740168 () Bool)

(assert (=> d!1286513 (= c!740168 lt!1566754)))

(assert (=> d!1286513 (= lt!1566754 (containsKey!663 (toList!2942 lt!1566256) (_1!27437 lt!1566079)))))

(assert (=> d!1286513 (= (contains!11087 lt!1566256 (_1!27437 lt!1566079)) lt!1566757)))

(declare-fun b!4353731 () Bool)

(declare-fun e!2709327 () List!49028)

(assert (=> b!4353731 (= e!2709327 (getKeysList!116 (toList!2942 lt!1566256)))))

(declare-fun b!4353732 () Bool)

(assert (=> b!4353732 false))

(declare-fun lt!1566751 () Unit!71224)

(declare-fun lt!1566756 () Unit!71224)

(assert (=> b!4353732 (= lt!1566751 lt!1566756)))

(assert (=> b!4353732 (containsKey!663 (toList!2942 lt!1566256) (_1!27437 lt!1566079))))

(assert (=> b!4353732 (= lt!1566756 (lemmaInGetKeysListThenContainsKey!114 (toList!2942 lt!1566256) (_1!27437 lt!1566079)))))

(declare-fun Unit!71352 () Unit!71224)

(assert (=> b!4353732 (= e!2709328 Unit!71352)))

(declare-fun bm!302559 () Bool)

(assert (=> bm!302559 (= call!302564 (contains!11091 e!2709327 (_1!27437 lt!1566079)))))

(declare-fun c!740167 () Bool)

(assert (=> bm!302559 (= c!740167 c!740168)))

(declare-fun b!4353733 () Bool)

(assert (=> b!4353733 (= e!2709327 (keys!16508 lt!1566256))))

(assert (= (and d!1286513 c!740168) b!4353726))

(assert (= (and d!1286513 (not c!740168)) b!4353728))

(assert (= (and b!4353728 c!740166) b!4353732))

(assert (= (and b!4353728 (not c!740166)) b!4353729))

(assert (= (or b!4353726 b!4353728) bm!302559))

(assert (= (and bm!302559 c!740167) b!4353731))

(assert (= (and bm!302559 (not c!740167)) b!4353733))

(assert (= (and d!1286513 res!1789018) b!4353725))

(assert (= (and d!1286513 (not res!1789016)) b!4353727))

(assert (= (and b!4353727 res!1789017) b!4353730))

(declare-fun m!4965887 () Bool)

(assert (=> b!4353732 m!4965887))

(declare-fun m!4965889 () Bool)

(assert (=> b!4353732 m!4965889))

(declare-fun m!4965891 () Bool)

(assert (=> b!4353725 m!4965891))

(assert (=> b!4353725 m!4965891))

(declare-fun m!4965893 () Bool)

(assert (=> b!4353725 m!4965893))

(declare-fun m!4965895 () Bool)

(assert (=> b!4353731 m!4965895))

(declare-fun m!4965897 () Bool)

(assert (=> bm!302559 m!4965897))

(declare-fun m!4965899 () Bool)

(assert (=> b!4353726 m!4965899))

(assert (=> b!4353726 m!4964675))

(assert (=> b!4353726 m!4964675))

(declare-fun m!4965901 () Bool)

(assert (=> b!4353726 m!4965901))

(declare-fun m!4965903 () Bool)

(assert (=> b!4353726 m!4965903))

(assert (=> b!4353730 m!4965891))

(assert (=> b!4353730 m!4965891))

(assert (=> b!4353730 m!4965893))

(assert (=> b!4353733 m!4965891))

(assert (=> b!4353727 m!4964675))

(assert (=> b!4353727 m!4964675))

(assert (=> b!4353727 m!4965901))

(assert (=> d!1286513 m!4965887))

(assert (=> d!1286091 d!1286513))

(declare-fun b!4353735 () Bool)

(declare-fun e!2709329 () Option!10449)

(declare-fun e!2709330 () Option!10449)

(assert (=> b!4353735 (= e!2709329 e!2709330)))

(declare-fun c!740170 () Bool)

(assert (=> b!4353735 (= c!740170 (and ((_ is Cons!48901) lt!1566258) (not (= (_1!27437 (h!54442 lt!1566258)) (_1!27437 lt!1566079)))))))

(declare-fun b!4353736 () Bool)

(assert (=> b!4353736 (= e!2709330 (getValueByKey!435 (t!355945 lt!1566258) (_1!27437 lt!1566079)))))

(declare-fun b!4353734 () Bool)

(assert (=> b!4353734 (= e!2709329 (Some!10448 (_2!27437 (h!54442 lt!1566258))))))

(declare-fun b!4353737 () Bool)

(assert (=> b!4353737 (= e!2709330 None!10448)))

(declare-fun d!1286515 () Bool)

(declare-fun c!740169 () Bool)

(assert (=> d!1286515 (= c!740169 (and ((_ is Cons!48901) lt!1566258) (= (_1!27437 (h!54442 lt!1566258)) (_1!27437 lt!1566079))))))

(assert (=> d!1286515 (= (getValueByKey!435 lt!1566258 (_1!27437 lt!1566079)) e!2709329)))

(assert (= (and d!1286515 c!740169) b!4353734))

(assert (= (and d!1286515 (not c!740169)) b!4353735))

(assert (= (and b!4353735 c!740170) b!4353736))

(assert (= (and b!4353735 (not c!740170)) b!4353737))

(declare-fun m!4965905 () Bool)

(assert (=> b!4353736 m!4965905))

(assert (=> d!1286091 d!1286515))

(declare-fun d!1286517 () Bool)

(assert (=> d!1286517 (= (getValueByKey!435 lt!1566258 (_1!27437 lt!1566079)) (Some!10448 (_2!27437 lt!1566079)))))

(declare-fun lt!1566772 () Unit!71224)

(declare-fun choose!26836 (List!49025 K!10265 V!10511) Unit!71224)

(assert (=> d!1286517 (= lt!1566772 (choose!26836 lt!1566258 (_1!27437 lt!1566079) (_2!27437 lt!1566079)))))

(declare-fun e!2709343 () Bool)

(assert (=> d!1286517 e!2709343))

(declare-fun res!1789025 () Bool)

(assert (=> d!1286517 (=> (not res!1789025) (not e!2709343))))

(assert (=> d!1286517 (= res!1789025 (invariantList!668 lt!1566258))))

(assert (=> d!1286517 (= (lemmaContainsTupThenGetReturnValue!210 lt!1566258 (_1!27437 lt!1566079) (_2!27437 lt!1566079)) lt!1566772)))

(declare-fun b!4353760 () Bool)

(declare-fun res!1789026 () Bool)

(assert (=> b!4353760 (=> (not res!1789026) (not e!2709343))))

(assert (=> b!4353760 (= res!1789026 (containsKey!663 lt!1566258 (_1!27437 lt!1566079)))))

(declare-fun b!4353761 () Bool)

(assert (=> b!4353761 (= e!2709343 (contains!11092 lt!1566258 (tuple2!48287 (_1!27437 lt!1566079) (_2!27437 lt!1566079))))))

(assert (= (and d!1286517 res!1789025) b!4353760))

(assert (= (and b!4353760 res!1789026) b!4353761))

(assert (=> d!1286517 m!4964669))

(declare-fun m!4965907 () Bool)

(assert (=> d!1286517 m!4965907))

(declare-fun m!4965909 () Bool)

(assert (=> d!1286517 m!4965909))

(declare-fun m!4965911 () Bool)

(assert (=> b!4353760 m!4965911))

(declare-fun m!4965913 () Bool)

(assert (=> b!4353761 m!4965913))

(assert (=> d!1286091 d!1286517))

(declare-fun b!4353856 () Bool)

(declare-fun res!1789070 () Bool)

(declare-fun e!2709402 () Bool)

(assert (=> b!4353856 (=> (not res!1789070) (not e!2709402))))

(declare-fun lt!1566841 () List!49025)

(assert (=> b!4353856 (= res!1789070 (containsKey!663 lt!1566841 (_1!27437 lt!1566079)))))

(declare-fun b!4353857 () Bool)

(declare-fun c!740205 () Bool)

(assert (=> b!4353857 (= c!740205 ((_ is Cons!48901) (toList!2942 lt!1566081)))))

(declare-fun e!2709401 () List!49025)

(declare-fun e!2709400 () List!49025)

(assert (=> b!4353857 (= e!2709401 e!2709400)))

(declare-fun b!4353858 () Bool)

(declare-fun e!2709399 () List!49025)

(assert (=> b!4353858 (= e!2709399 (insertNoDuplicatedKeys!93 (t!355945 (toList!2942 lt!1566081)) (_1!27437 lt!1566079) (_2!27437 lt!1566079)))))

(declare-fun b!4353859 () Bool)

(declare-fun call!302587 () List!49025)

(assert (=> b!4353859 (= e!2709400 call!302587)))

(declare-fun b!4353860 () Bool)

(declare-fun lt!1566836 () List!49025)

(assert (=> b!4353860 (= e!2709400 lt!1566836)))

(assert (=> b!4353860 (= lt!1566836 call!302587)))

(declare-fun c!740207 () Bool)

(assert (=> b!4353860 (= c!740207 (containsKey!663 (insertNoDuplicatedKeys!93 (t!355945 (toList!2942 lt!1566081)) (_1!27437 lt!1566079) (_2!27437 lt!1566079)) (_1!27437 (h!54442 (toList!2942 lt!1566081)))))))

(declare-fun lt!1566834 () Unit!71224)

(declare-fun e!2709398 () Unit!71224)

(assert (=> b!4353860 (= lt!1566834 e!2709398)))

(declare-fun b!4353861 () Bool)

(assert (=> b!4353861 (= e!2709399 Nil!48901)))

(declare-fun b!4353862 () Bool)

(assert (=> b!4353862 false))

(declare-fun lt!1566835 () Unit!71224)

(declare-fun lt!1566833 () Unit!71224)

(assert (=> b!4353862 (= lt!1566835 lt!1566833)))

(assert (=> b!4353862 (containsKey!663 (t!355945 (toList!2942 lt!1566081)) (_1!27437 (h!54442 (toList!2942 lt!1566081))))))

(assert (=> b!4353862 (= lt!1566833 (lemmaInGetKeysListThenContainsKey!114 (t!355945 (toList!2942 lt!1566081)) (_1!27437 (h!54442 (toList!2942 lt!1566081)))))))

(declare-fun lt!1566837 () Unit!71224)

(declare-fun lt!1566840 () Unit!71224)

(assert (=> b!4353862 (= lt!1566837 lt!1566840)))

(declare-fun call!302585 () List!49028)

(assert (=> b!4353862 (contains!11091 call!302585 (_1!27437 (h!54442 (toList!2942 lt!1566081))))))

(declare-fun lt!1566838 () List!49025)

(assert (=> b!4353862 (= lt!1566840 (lemmaInListThenGetKeysListContains!113 lt!1566838 (_1!27437 (h!54442 (toList!2942 lt!1566081)))))))

(assert (=> b!4353862 (= lt!1566838 (insertNoDuplicatedKeys!93 (t!355945 (toList!2942 lt!1566081)) (_1!27437 lt!1566079) (_2!27437 lt!1566079)))))

(declare-fun Unit!71353 () Unit!71224)

(assert (=> b!4353862 (= e!2709398 Unit!71353)))

(declare-fun b!4353863 () Bool)

(declare-fun call!302586 () List!49025)

(assert (=> b!4353863 (= e!2709401 call!302586)))

(declare-fun b!4353864 () Bool)

(declare-fun e!2709403 () List!49025)

(assert (=> b!4353864 (= e!2709403 e!2709401)))

(declare-fun res!1789072 () Bool)

(assert (=> b!4353864 (= res!1789072 ((_ is Cons!48901) (toList!2942 lt!1566081)))))

(declare-fun e!2709404 () Bool)

(assert (=> b!4353864 (=> (not res!1789072) (not e!2709404))))

(declare-fun c!740208 () Bool)

(assert (=> b!4353864 (= c!740208 e!2709404)))

(declare-fun call!302588 () List!49025)

(declare-fun c!740206 () Bool)

(declare-fun bm!302580 () Bool)

(declare-fun $colon$colon!687 (List!49025 tuple2!48286) List!49025)

(assert (=> bm!302580 (= call!302588 ($colon$colon!687 (ite c!740206 (t!355945 (toList!2942 lt!1566081)) (ite c!740208 (toList!2942 lt!1566081) e!2709399)) (ite (or c!740206 c!740208) (tuple2!48287 (_1!27437 lt!1566079) (_2!27437 lt!1566079)) (ite c!740205 (h!54442 (toList!2942 lt!1566081)) (tuple2!48287 (_1!27437 lt!1566079) (_2!27437 lt!1566079))))))))

(declare-fun bm!302581 () Bool)

(assert (=> bm!302581 (= call!302585 (getKeysList!116 (ite c!740206 (toList!2942 lt!1566081) lt!1566838)))))

(declare-fun b!4353865 () Bool)

(assert (=> b!4353865 (= e!2709404 (not (containsKey!663 (toList!2942 lt!1566081) (_1!27437 lt!1566079))))))

(declare-fun b!4353866 () Bool)

(declare-fun Unit!71354 () Unit!71224)

(assert (=> b!4353866 (= e!2709398 Unit!71354)))

(declare-fun b!4353867 () Bool)

(declare-fun res!1789069 () Bool)

(assert (=> b!4353867 (=> (not res!1789069) (not e!2709402))))

(assert (=> b!4353867 (= res!1789069 (contains!11092 lt!1566841 (tuple2!48287 (_1!27437 lt!1566079) (_2!27437 lt!1566079))))))

(declare-fun d!1286519 () Bool)

(assert (=> d!1286519 e!2709402))

(declare-fun res!1789071 () Bool)

(assert (=> d!1286519 (=> (not res!1789071) (not e!2709402))))

(assert (=> d!1286519 (= res!1789071 (invariantList!668 lt!1566841))))

(assert (=> d!1286519 (= lt!1566841 e!2709403)))

(assert (=> d!1286519 (= c!740206 (and ((_ is Cons!48901) (toList!2942 lt!1566081)) (= (_1!27437 (h!54442 (toList!2942 lt!1566081))) (_1!27437 lt!1566079))))))

(assert (=> d!1286519 (invariantList!668 (toList!2942 lt!1566081))))

(assert (=> d!1286519 (= (insertNoDuplicatedKeys!93 (toList!2942 lt!1566081) (_1!27437 lt!1566079) (_2!27437 lt!1566079)) lt!1566841)))

(declare-fun bm!302582 () Bool)

(assert (=> bm!302582 (= call!302587 call!302586)))

(declare-fun c!740209 () Bool)

(assert (=> bm!302582 (= c!740209 c!740205)))

(declare-fun b!4353868 () Bool)

(assert (=> b!4353868 (= e!2709403 call!302588)))

(declare-fun lt!1566832 () List!49028)

(assert (=> b!4353868 (= lt!1566832 call!302585)))

(declare-fun lt!1566839 () Unit!71224)

(declare-fun lemmaSubseqRefl!68 (List!49028) Unit!71224)

(assert (=> b!4353868 (= lt!1566839 (lemmaSubseqRefl!68 lt!1566832))))

(declare-fun subseq!584 (List!49028 List!49028) Bool)

(assert (=> b!4353868 (subseq!584 lt!1566832 lt!1566832)))

(declare-fun lt!1566831 () Unit!71224)

(assert (=> b!4353868 (= lt!1566831 lt!1566839)))

(declare-fun bm!302583 () Bool)

(assert (=> bm!302583 (= call!302586 call!302588)))

(declare-fun b!4353869 () Bool)

(assert (=> b!4353869 (= e!2709402 (= (content!7699 (getKeysList!116 lt!1566841)) ((_ map or) (content!7699 (getKeysList!116 (toList!2942 lt!1566081))) (store ((as const (Array K!10265 Bool)) false) (_1!27437 lt!1566079) true))))))

(assert (= (and d!1286519 c!740206) b!4353868))

(assert (= (and d!1286519 (not c!740206)) b!4353864))

(assert (= (and b!4353864 res!1789072) b!4353865))

(assert (= (and b!4353864 c!740208) b!4353863))

(assert (= (and b!4353864 (not c!740208)) b!4353857))

(assert (= (and b!4353857 c!740205) b!4353860))

(assert (= (and b!4353857 (not c!740205)) b!4353859))

(assert (= (and b!4353860 c!740207) b!4353862))

(assert (= (and b!4353860 (not c!740207)) b!4353866))

(assert (= (or b!4353860 b!4353859) bm!302582))

(assert (= (and bm!302582 c!740209) b!4353858))

(assert (= (and bm!302582 (not c!740209)) b!4353861))

(assert (= (or b!4353863 bm!302582) bm!302583))

(assert (= (or b!4353868 b!4353862) bm!302581))

(assert (= (or b!4353868 bm!302583) bm!302580))

(assert (= (and d!1286519 res!1789071) b!4353856))

(assert (= (and b!4353856 res!1789070) b!4353867))

(assert (= (and b!4353867 res!1789069) b!4353869))

(declare-fun m!4965997 () Bool)

(assert (=> b!4353856 m!4965997))

(declare-fun m!4965999 () Bool)

(assert (=> b!4353860 m!4965999))

(assert (=> b!4353860 m!4965999))

(declare-fun m!4966001 () Bool)

(assert (=> b!4353860 m!4966001))

(declare-fun m!4966003 () Bool)

(assert (=> d!1286519 m!4966003))

(assert (=> d!1286519 m!4965121))

(declare-fun m!4966005 () Bool)

(assert (=> bm!302581 m!4966005))

(declare-fun m!4966007 () Bool)

(assert (=> b!4353868 m!4966007))

(declare-fun m!4966009 () Bool)

(assert (=> b!4353868 m!4966009))

(declare-fun m!4966011 () Bool)

(assert (=> b!4353862 m!4966011))

(declare-fun m!4966013 () Bool)

(assert (=> b!4353862 m!4966013))

(assert (=> b!4353862 m!4965125))

(assert (=> b!4353862 m!4965999))

(declare-fun m!4966015 () Bool)

(assert (=> b!4353862 m!4966015))

(declare-fun m!4966017 () Bool)

(assert (=> bm!302580 m!4966017))

(assert (=> b!4353858 m!4965999))

(declare-fun m!4966019 () Bool)

(assert (=> b!4353867 m!4966019))

(declare-fun m!4966021 () Bool)

(assert (=> b!4353865 m!4966021))

(assert (=> b!4353869 m!4964533))

(declare-fun m!4966023 () Bool)

(assert (=> b!4353869 m!4966023))

(declare-fun m!4966025 () Bool)

(assert (=> b!4353869 m!4966025))

(declare-fun m!4966027 () Bool)

(assert (=> b!4353869 m!4966027))

(declare-fun m!4966029 () Bool)

(assert (=> b!4353869 m!4966029))

(assert (=> b!4353869 m!4966027))

(assert (=> b!4353869 m!4964533))

(assert (=> d!1286091 d!1286519))

(assert (=> bs!629802 d!1286481))

(declare-fun d!1286539 () Bool)

(declare-fun e!2709406 () Bool)

(assert (=> d!1286539 e!2709406))

(declare-fun res!1789073 () Bool)

(assert (=> d!1286539 (=> res!1789073 e!2709406)))

(declare-fun lt!1566843 () Bool)

(assert (=> d!1286539 (= res!1789073 (not lt!1566843))))

(declare-fun lt!1566842 () Bool)

(assert (=> d!1286539 (= lt!1566843 lt!1566842)))

(declare-fun lt!1566844 () Unit!71224)

(declare-fun e!2709405 () Unit!71224)

(assert (=> d!1286539 (= lt!1566844 e!2709405)))

(declare-fun c!740210 () Bool)

(assert (=> d!1286539 (= c!740210 lt!1566842)))

(assert (=> d!1286539 (= lt!1566842 (containsKey!665 (toList!2941 lt!1566112) (_1!27438 lt!1566082)))))

(assert (=> d!1286539 (= (contains!11086 lt!1566112 (_1!27438 lt!1566082)) lt!1566843)))

(declare-fun b!4353870 () Bool)

(declare-fun lt!1566845 () Unit!71224)

(assert (=> b!4353870 (= e!2709405 lt!1566845)))

(assert (=> b!4353870 (= lt!1566845 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!2941 lt!1566112) (_1!27438 lt!1566082)))))

(assert (=> b!4353870 (isDefined!7744 (getValueByKey!434 (toList!2941 lt!1566112) (_1!27438 lt!1566082)))))

(declare-fun b!4353871 () Bool)

(declare-fun Unit!71357 () Unit!71224)

(assert (=> b!4353871 (= e!2709405 Unit!71357)))

(declare-fun b!4353872 () Bool)

(assert (=> b!4353872 (= e!2709406 (isDefined!7744 (getValueByKey!434 (toList!2941 lt!1566112) (_1!27438 lt!1566082))))))

(assert (= (and d!1286539 c!740210) b!4353870))

(assert (= (and d!1286539 (not c!740210)) b!4353871))

(assert (= (and d!1286539 (not res!1789073)) b!4353872))

(declare-fun m!4966055 () Bool)

(assert (=> d!1286539 m!4966055))

(declare-fun m!4966057 () Bool)

(assert (=> b!4353870 m!4966057))

(assert (=> b!4353870 m!4964393))

(assert (=> b!4353870 m!4964393))

(declare-fun m!4966059 () Bool)

(assert (=> b!4353870 m!4966059))

(assert (=> b!4353872 m!4964393))

(assert (=> b!4353872 m!4964393))

(assert (=> b!4353872 m!4966059))

(assert (=> d!1286007 d!1286539))

(declare-fun b!4353874 () Bool)

(declare-fun e!2709408 () Option!10448)

(assert (=> b!4353874 (= e!2709408 (Some!10447 (_2!27438 (h!54443 lt!1566111))))))

(declare-fun b!4353876 () Bool)

(declare-fun e!2709409 () Option!10448)

(assert (=> b!4353876 (= e!2709409 (getValueByKey!434 (t!355946 lt!1566111) (_1!27438 lt!1566082)))))

(declare-fun d!1286543 () Bool)

(declare-fun c!740211 () Bool)

(assert (=> d!1286543 (= c!740211 (and ((_ is Cons!48902) lt!1566111) (= (_1!27438 (h!54443 lt!1566111)) (_1!27438 lt!1566082))))))

(assert (=> d!1286543 (= (getValueByKey!434 lt!1566111 (_1!27438 lt!1566082)) e!2709408)))

(declare-fun b!4353875 () Bool)

(assert (=> b!4353875 (= e!2709408 e!2709409)))

(declare-fun c!740212 () Bool)

(assert (=> b!4353875 (= c!740212 (and ((_ is Cons!48902) lt!1566111) (not (= (_1!27438 (h!54443 lt!1566111)) (_1!27438 lt!1566082)))))))

(declare-fun b!4353877 () Bool)

(assert (=> b!4353877 (= e!2709409 None!10447)))

(assert (= (and d!1286543 c!740211) b!4353874))

(assert (= (and d!1286543 (not c!740211)) b!4353875))

(assert (= (and b!4353875 c!740212) b!4353876))

(assert (= (and b!4353875 (not c!740212)) b!4353877))

(declare-fun m!4966061 () Bool)

(assert (=> b!4353876 m!4966061))

(assert (=> d!1286007 d!1286543))

(declare-fun d!1286545 () Bool)

(assert (=> d!1286545 (= (getValueByKey!434 lt!1566111 (_1!27438 lt!1566082)) (Some!10447 (_2!27438 lt!1566082)))))

(declare-fun lt!1566846 () Unit!71224)

(assert (=> d!1286545 (= lt!1566846 (choose!26834 lt!1566111 (_1!27438 lt!1566082) (_2!27438 lt!1566082)))))

(declare-fun e!2709412 () Bool)

(assert (=> d!1286545 e!2709412))

(declare-fun res!1789074 () Bool)

(assert (=> d!1286545 (=> (not res!1789074) (not e!2709412))))

(assert (=> d!1286545 (= res!1789074 (isStrictlySorted!94 lt!1566111))))

(assert (=> d!1286545 (= (lemmaContainsTupThenGetReturnValue!209 lt!1566111 (_1!27438 lt!1566082) (_2!27438 lt!1566082)) lt!1566846)))

(declare-fun b!4353880 () Bool)

(declare-fun res!1789075 () Bool)

(assert (=> b!4353880 (=> (not res!1789075) (not e!2709412))))

(assert (=> b!4353880 (= res!1789075 (containsKey!665 lt!1566111 (_1!27438 lt!1566082)))))

(declare-fun b!4353881 () Bool)

(assert (=> b!4353881 (= e!2709412 (contains!11088 lt!1566111 (tuple2!48289 (_1!27438 lt!1566082) (_2!27438 lt!1566082))))))

(assert (= (and d!1286545 res!1789074) b!4353880))

(assert (= (and b!4353880 res!1789075) b!4353881))

(assert (=> d!1286545 m!4964387))

(declare-fun m!4966063 () Bool)

(assert (=> d!1286545 m!4966063))

(declare-fun m!4966065 () Bool)

(assert (=> d!1286545 m!4966065))

(declare-fun m!4966067 () Bool)

(assert (=> b!4353880 m!4966067))

(declare-fun m!4966069 () Bool)

(assert (=> b!4353881 m!4966069))

(assert (=> d!1286007 d!1286545))

(declare-fun b!4353882 () Bool)

(declare-fun e!2709413 () List!49026)

(declare-fun call!302590 () List!49026)

(assert (=> b!4353882 (= e!2709413 call!302590)))

(declare-fun c!740213 () Bool)

(declare-fun b!4353883 () Bool)

(declare-fun c!740214 () Bool)

(declare-fun e!2709417 () List!49026)

(assert (=> b!4353883 (= e!2709417 (ite c!740214 (t!355946 (toList!2941 lm!1707)) (ite c!740213 (Cons!48902 (h!54443 (toList!2941 lm!1707)) (t!355946 (toList!2941 lm!1707))) Nil!48902)))))

(declare-fun bm!302584 () Bool)

(declare-fun call!302591 () List!49026)

(declare-fun call!302589 () List!49026)

(assert (=> bm!302584 (= call!302591 call!302589)))

(declare-fun b!4353884 () Bool)

(assert (=> b!4353884 (= e!2709413 call!302590)))

(declare-fun b!4353885 () Bool)

(declare-fun e!2709416 () List!49026)

(declare-fun e!2709415 () List!49026)

(assert (=> b!4353885 (= e!2709416 e!2709415)))

(assert (=> b!4353885 (= c!740214 (and ((_ is Cons!48902) (toList!2941 lm!1707)) (= (_1!27438 (h!54443 (toList!2941 lm!1707))) (_1!27438 lt!1566082))))))

(declare-fun b!4353886 () Bool)

(assert (=> b!4353886 (= e!2709416 call!302589)))

(declare-fun b!4353887 () Bool)

(assert (=> b!4353887 (= e!2709417 (insertStrictlySorted!125 (t!355946 (toList!2941 lm!1707)) (_1!27438 lt!1566082) (_2!27438 lt!1566082)))))

(declare-fun d!1286547 () Bool)

(declare-fun e!2709414 () Bool)

(assert (=> d!1286547 e!2709414))

(declare-fun res!1789077 () Bool)

(assert (=> d!1286547 (=> (not res!1789077) (not e!2709414))))

(declare-fun lt!1566847 () List!49026)

(assert (=> d!1286547 (= res!1789077 (isStrictlySorted!94 lt!1566847))))

(assert (=> d!1286547 (= lt!1566847 e!2709416)))

(declare-fun c!740215 () Bool)

(assert (=> d!1286547 (= c!740215 (and ((_ is Cons!48902) (toList!2941 lm!1707)) (bvslt (_1!27438 (h!54443 (toList!2941 lm!1707))) (_1!27438 lt!1566082))))))

(assert (=> d!1286547 (isStrictlySorted!94 (toList!2941 lm!1707))))

(assert (=> d!1286547 (= (insertStrictlySorted!125 (toList!2941 lm!1707) (_1!27438 lt!1566082) (_2!27438 lt!1566082)) lt!1566847)))

(declare-fun bm!302585 () Bool)

(assert (=> bm!302585 (= call!302589 ($colon$colon!685 e!2709417 (ite c!740215 (h!54443 (toList!2941 lm!1707)) (tuple2!48289 (_1!27438 lt!1566082) (_2!27438 lt!1566082)))))))

(declare-fun c!740216 () Bool)

(assert (=> bm!302585 (= c!740216 c!740215)))

(declare-fun b!4353888 () Bool)

(declare-fun res!1789076 () Bool)

(assert (=> b!4353888 (=> (not res!1789076) (not e!2709414))))

(assert (=> b!4353888 (= res!1789076 (containsKey!665 lt!1566847 (_1!27438 lt!1566082)))))

(declare-fun b!4353889 () Bool)

(assert (=> b!4353889 (= c!740213 (and ((_ is Cons!48902) (toList!2941 lm!1707)) (bvsgt (_1!27438 (h!54443 (toList!2941 lm!1707))) (_1!27438 lt!1566082))))))

(assert (=> b!4353889 (= e!2709415 e!2709413)))

(declare-fun bm!302586 () Bool)

(assert (=> bm!302586 (= call!302590 call!302591)))

(declare-fun b!4353890 () Bool)

(assert (=> b!4353890 (= e!2709414 (contains!11088 lt!1566847 (tuple2!48289 (_1!27438 lt!1566082) (_2!27438 lt!1566082))))))

(declare-fun b!4353891 () Bool)

(assert (=> b!4353891 (= e!2709415 call!302591)))

(assert (= (and d!1286547 c!740215) b!4353886))

(assert (= (and d!1286547 (not c!740215)) b!4353885))

(assert (= (and b!4353885 c!740214) b!4353891))

(assert (= (and b!4353885 (not c!740214)) b!4353889))

(assert (= (and b!4353889 c!740213) b!4353884))

(assert (= (and b!4353889 (not c!740213)) b!4353882))

(assert (= (or b!4353884 b!4353882) bm!302586))

(assert (= (or b!4353891 bm!302586) bm!302584))

(assert (= (or b!4353886 bm!302584) bm!302585))

(assert (= (and bm!302585 c!740216) b!4353887))

(assert (= (and bm!302585 (not c!740216)) b!4353883))

(assert (= (and d!1286547 res!1789077) b!4353888))

(assert (= (and b!4353888 res!1789076) b!4353890))

(declare-fun m!4966077 () Bool)

(assert (=> d!1286547 m!4966077))

(assert (=> d!1286547 m!4964723))

(declare-fun m!4966079 () Bool)

(assert (=> b!4353888 m!4966079))

(declare-fun m!4966081 () Bool)

(assert (=> bm!302585 m!4966081))

(declare-fun m!4966085 () Bool)

(assert (=> b!4353887 m!4966085))

(declare-fun m!4966087 () Bool)

(assert (=> b!4353890 m!4966087))

(assert (=> d!1286007 d!1286547))

(assert (=> b!4352952 d!1286429))

(declare-fun d!1286571 () Bool)

(assert (=> d!1286571 (containsKey!663 (toList!2942 lt!1566081) key!3918)))

(declare-fun lt!1566848 () Unit!71224)

(assert (=> d!1286571 (= lt!1566848 (choose!26824 (toList!2942 lt!1566081) key!3918))))

(assert (=> d!1286571 (invariantList!668 (toList!2942 lt!1566081))))

(assert (=> d!1286571 (= (lemmaInGetKeysListThenContainsKey!114 (toList!2942 lt!1566081) key!3918) lt!1566848)))

(declare-fun bs!630255 () Bool)

(assert (= bs!630255 d!1286571))

(assert (=> bs!630255 m!4964517))

(declare-fun m!4966089 () Bool)

(assert (=> bs!630255 m!4966089))

(assert (=> bs!630255 m!4965121))

(assert (=> b!4352952 d!1286571))

(assert (=> b!4353053 d!1286329))

(assert (=> b!4353053 d!1286331))

(declare-fun d!1286573 () Bool)

(declare-fun lt!1566849 () Bool)

(assert (=> d!1286573 (= lt!1566849 (select (content!7698 (toList!2941 lt!1566112)) lt!1566082))))

(declare-fun e!2709419 () Bool)

(assert (=> d!1286573 (= lt!1566849 e!2709419)))

(declare-fun res!1789079 () Bool)

(assert (=> d!1286573 (=> (not res!1789079) (not e!2709419))))

(assert (=> d!1286573 (= res!1789079 ((_ is Cons!48902) (toList!2941 lt!1566112)))))

(assert (=> d!1286573 (= (contains!11088 (toList!2941 lt!1566112) lt!1566082) lt!1566849)))

(declare-fun b!4353892 () Bool)

(declare-fun e!2709418 () Bool)

(assert (=> b!4353892 (= e!2709419 e!2709418)))

(declare-fun res!1789078 () Bool)

(assert (=> b!4353892 (=> res!1789078 e!2709418)))

(assert (=> b!4353892 (= res!1789078 (= (h!54443 (toList!2941 lt!1566112)) lt!1566082))))

(declare-fun b!4353893 () Bool)

(assert (=> b!4353893 (= e!2709418 (contains!11088 (t!355946 (toList!2941 lt!1566112)) lt!1566082))))

(assert (= (and d!1286573 res!1789079) b!4353892))

(assert (= (and b!4353892 (not res!1789078)) b!4353893))

(declare-fun m!4966091 () Bool)

(assert (=> d!1286573 m!4966091))

(declare-fun m!4966093 () Bool)

(assert (=> d!1286573 m!4966093))

(declare-fun m!4966095 () Bool)

(assert (=> b!4353893 m!4966095))

(assert (=> b!4352844 d!1286573))

(declare-fun d!1286575 () Bool)

(declare-fun res!1789080 () Bool)

(declare-fun e!2709420 () Bool)

(assert (=> d!1286575 (=> res!1789080 e!2709420)))

(assert (=> d!1286575 (= res!1789080 (not ((_ is Cons!48901) (_2!27438 lt!1566075))))))

(assert (=> d!1286575 (= (noDuplicateKeys!479 (_2!27438 lt!1566075)) e!2709420)))

(declare-fun b!4353894 () Bool)

(declare-fun e!2709421 () Bool)

(assert (=> b!4353894 (= e!2709420 e!2709421)))

(declare-fun res!1789081 () Bool)

(assert (=> b!4353894 (=> (not res!1789081) (not e!2709421))))

(assert (=> b!4353894 (= res!1789081 (not (containsKey!661 (t!355945 (_2!27438 lt!1566075)) (_1!27437 (h!54442 (_2!27438 lt!1566075))))))))

(declare-fun b!4353895 () Bool)

(assert (=> b!4353895 (= e!2709421 (noDuplicateKeys!479 (t!355945 (_2!27438 lt!1566075))))))

(assert (= (and d!1286575 (not res!1789080)) b!4353894))

(assert (= (and b!4353894 res!1789081) b!4353895))

(declare-fun m!4966097 () Bool)

(assert (=> b!4353894 m!4966097))

(declare-fun m!4966099 () Bool)

(assert (=> b!4353895 m!4966099))

(assert (=> bs!629803 d!1286575))

(assert (=> b!4353056 d!1286475))

(assert (=> b!4353056 d!1286477))

(declare-fun d!1286577 () Bool)

(declare-fun res!1789082 () Bool)

(declare-fun e!2709422 () Bool)

(assert (=> d!1286577 (=> res!1789082 e!2709422)))

(assert (=> d!1286577 (= res!1789082 (not ((_ is Cons!48901) (t!355945 newBucket!200))))))

(assert (=> d!1286577 (= (noDuplicateKeys!479 (t!355945 newBucket!200)) e!2709422)))

(declare-fun b!4353896 () Bool)

(declare-fun e!2709423 () Bool)

(assert (=> b!4353896 (= e!2709422 e!2709423)))

(declare-fun res!1789083 () Bool)

(assert (=> b!4353896 (=> (not res!1789083) (not e!2709423))))

(assert (=> b!4353896 (= res!1789083 (not (containsKey!661 (t!355945 (t!355945 newBucket!200)) (_1!27437 (h!54442 (t!355945 newBucket!200))))))))

(declare-fun b!4353897 () Bool)

(assert (=> b!4353897 (= e!2709423 (noDuplicateKeys!479 (t!355945 (t!355945 newBucket!200))))))

(assert (= (and d!1286577 (not res!1789082)) b!4353896))

(assert (= (and b!4353896 res!1789083) b!4353897))

(declare-fun m!4966101 () Bool)

(assert (=> b!4353896 m!4966101))

(declare-fun m!4966103 () Bool)

(assert (=> b!4353897 m!4966103))

(assert (=> b!4353050 d!1286577))

(declare-fun d!1286579 () Bool)

(declare-fun lt!1566852 () Bool)

(assert (=> d!1286579 (= lt!1566852 (select (content!7697 (toList!2942 lt!1566256)) lt!1566079))))

(declare-fun e!2709428 () Bool)

(assert (=> d!1286579 (= lt!1566852 e!2709428)))

(declare-fun res!1789088 () Bool)

(assert (=> d!1286579 (=> (not res!1789088) (not e!2709428))))

(assert (=> d!1286579 (= res!1789088 ((_ is Cons!48901) (toList!2942 lt!1566256)))))

(assert (=> d!1286579 (= (contains!11092 (toList!2942 lt!1566256) lt!1566079) lt!1566852)))

(declare-fun b!4353902 () Bool)

(declare-fun e!2709429 () Bool)

(assert (=> b!4353902 (= e!2709428 e!2709429)))

(declare-fun res!1789089 () Bool)

(assert (=> b!4353902 (=> res!1789089 e!2709429)))

(assert (=> b!4353902 (= res!1789089 (= (h!54442 (toList!2942 lt!1566256)) lt!1566079))))

(declare-fun b!4353903 () Bool)

(assert (=> b!4353903 (= e!2709429 (contains!11092 (t!355945 (toList!2942 lt!1566256)) lt!1566079))))

(assert (= (and d!1286579 res!1789088) b!4353902))

(assert (= (and b!4353902 (not res!1789089)) b!4353903))

(declare-fun m!4966105 () Bool)

(assert (=> d!1286579 m!4966105))

(declare-fun m!4966107 () Bool)

(assert (=> d!1286579 m!4966107))

(declare-fun m!4966109 () Bool)

(assert (=> b!4353903 m!4966109))

(assert (=> b!4353032 d!1286579))

(assert (=> b!4353099 d!1286131))

(declare-fun b!4353905 () Bool)

(declare-fun e!2709430 () List!49025)

(declare-fun e!2709431 () List!49025)

(assert (=> b!4353905 (= e!2709430 e!2709431)))

(declare-fun c!740218 () Bool)

(assert (=> b!4353905 (= c!740218 ((_ is Cons!48901) (t!355945 lt!1566080)))))

(declare-fun b!4353906 () Bool)

(assert (=> b!4353906 (= e!2709431 (Cons!48901 (h!54442 (t!355945 lt!1566080)) (removePairForKey!449 (t!355945 (t!355945 lt!1566080)) key!3918)))))

(declare-fun b!4353904 () Bool)

(assert (=> b!4353904 (= e!2709430 (t!355945 (t!355945 lt!1566080)))))

(declare-fun d!1286581 () Bool)

(declare-fun lt!1566853 () List!49025)

(assert (=> d!1286581 (not (containsKey!661 lt!1566853 key!3918))))

(assert (=> d!1286581 (= lt!1566853 e!2709430)))

(declare-fun c!740217 () Bool)

(assert (=> d!1286581 (= c!740217 (and ((_ is Cons!48901) (t!355945 lt!1566080)) (= (_1!27437 (h!54442 (t!355945 lt!1566080))) key!3918)))))

(assert (=> d!1286581 (noDuplicateKeys!479 (t!355945 lt!1566080))))

(assert (=> d!1286581 (= (removePairForKey!449 (t!355945 lt!1566080) key!3918) lt!1566853)))

(declare-fun b!4353907 () Bool)

(assert (=> b!4353907 (= e!2709431 Nil!48901)))

(assert (= (and d!1286581 c!740217) b!4353904))

(assert (= (and d!1286581 (not c!740217)) b!4353905))

(assert (= (and b!4353905 c!740218) b!4353906))

(assert (= (and b!4353905 (not c!740218)) b!4353907))

(declare-fun m!4966111 () Bool)

(assert (=> b!4353906 m!4966111))

(declare-fun m!4966113 () Bool)

(assert (=> d!1286581 m!4966113))

(assert (=> d!1286581 m!4965647))

(assert (=> b!4353089 d!1286581))

(assert (=> b!4353102 d!1286285))

(declare-fun d!1286583 () Bool)

(declare-fun lt!1566854 () Bool)

(assert (=> d!1286583 (= lt!1566854 (select (content!7698 (toList!2941 lt!1566264)) lt!1566082))))

(declare-fun e!2709433 () Bool)

(assert (=> d!1286583 (= lt!1566854 e!2709433)))

(declare-fun res!1789091 () Bool)

(assert (=> d!1286583 (=> (not res!1789091) (not e!2709433))))

(assert (=> d!1286583 (= res!1789091 ((_ is Cons!48902) (toList!2941 lt!1566264)))))

(assert (=> d!1286583 (= (contains!11088 (toList!2941 lt!1566264) lt!1566082) lt!1566854)))

(declare-fun b!4353908 () Bool)

(declare-fun e!2709432 () Bool)

(assert (=> b!4353908 (= e!2709433 e!2709432)))

(declare-fun res!1789090 () Bool)

(assert (=> b!4353908 (=> res!1789090 e!2709432)))

(assert (=> b!4353908 (= res!1789090 (= (h!54443 (toList!2941 lt!1566264)) lt!1566082))))

(declare-fun b!4353909 () Bool)

(assert (=> b!4353909 (= e!2709432 (contains!11088 (t!355946 (toList!2941 lt!1566264)) lt!1566082))))

(assert (= (and d!1286583 res!1789091) b!4353908))

(assert (= (and b!4353908 (not res!1789090)) b!4353909))

(declare-fun m!4966115 () Bool)

(assert (=> d!1286583 m!4966115))

(declare-fun m!4966117 () Bool)

(assert (=> d!1286583 m!4966117))

(declare-fun m!4966119 () Bool)

(assert (=> b!4353909 m!4966119))

(assert (=> b!4353040 d!1286583))

(assert (=> b!4353058 d!1286321))

(declare-fun d!1286585 () Bool)

(assert (=> d!1286585 (containsKey!663 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918)))

(declare-fun lt!1566855 () Unit!71224)

(assert (=> d!1286585 (= lt!1566855 (choose!26824 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918))))

(assert (=> d!1286585 (invariantList!668 (toList!2942 (extractMap!538 (toList!2941 lm!1707))))))

(assert (=> d!1286585 (= (lemmaInGetKeysListThenContainsKey!114 (toList!2942 (extractMap!538 (toList!2941 lm!1707))) key!3918) lt!1566855)))

(declare-fun bs!630256 () Bool)

(assert (= bs!630256 d!1286585))

(assert (=> bs!630256 m!4964731))

(declare-fun m!4966121 () Bool)

(assert (=> bs!630256 m!4966121))

(assert (=> bs!630256 m!4965325))

(assert (=> b!4353058 d!1286585))

(assert (=> b!4353059 d!1286477))

(declare-fun d!1286587 () Bool)

(assert (=> d!1286587 (dynLambda!20621 lambda!139751 lt!1566075)))

(assert (=> d!1286587 true))

(declare-fun _$7!1465 () Unit!71224)

(assert (=> d!1286587 (= (choose!26821 (toList!2941 lm!1707) lambda!139751 lt!1566075) _$7!1465)))

(declare-fun b_lambda!130849 () Bool)

(assert (=> (not b_lambda!130849) (not d!1286587)))

(declare-fun bs!630257 () Bool)

(assert (= bs!630257 d!1286587))

(assert (=> bs!630257 m!4964787))

(assert (=> d!1286133 d!1286587))

(assert (=> d!1286133 d!1286017))

(declare-fun d!1286589 () Bool)

(declare-fun res!1789092 () Bool)

(declare-fun e!2709434 () Bool)

(assert (=> d!1286589 (=> res!1789092 e!2709434)))

(assert (=> d!1286589 (= res!1789092 (not ((_ is Cons!48901) (_2!27438 (h!54443 (toList!2941 lt!1566071))))))))

(assert (=> d!1286589 (= (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 lt!1566071)))) e!2709434)))

(declare-fun b!4353910 () Bool)

(declare-fun e!2709435 () Bool)

(assert (=> b!4353910 (= e!2709434 e!2709435)))

(declare-fun res!1789093 () Bool)

(assert (=> b!4353910 (=> (not res!1789093) (not e!2709435))))

(assert (=> b!4353910 (= res!1789093 (not (containsKey!661 (t!355945 (_2!27438 (h!54443 (toList!2941 lt!1566071)))) (_1!27437 (h!54442 (_2!27438 (h!54443 (toList!2941 lt!1566071))))))))))

(declare-fun b!4353911 () Bool)

(assert (=> b!4353911 (= e!2709435 (noDuplicateKeys!479 (t!355945 (_2!27438 (h!54443 (toList!2941 lt!1566071))))))))

(assert (= (and d!1286589 (not res!1789092)) b!4353910))

(assert (= (and b!4353910 res!1789093) b!4353911))

(declare-fun m!4966123 () Bool)

(assert (=> b!4353910 m!4966123))

(declare-fun m!4966125 () Bool)

(assert (=> b!4353911 m!4966125))

(assert (=> bs!629800 d!1286589))

(assert (=> b!4353018 d!1286185))

(assert (=> b!4353018 d!1286187))

(declare-fun d!1286591 () Bool)

(assert (=> d!1286591 (= (head!9030 (toList!2941 lm!1707)) (h!54443 (toList!2941 lm!1707)))))

(assert (=> d!1286111 d!1286591))

(declare-fun d!1286593 () Bool)

(assert (=> d!1286593 (= (get!15880 (getValueByKey!434 (toList!2941 lm!1707) (_1!27438 (h!54443 (toList!2941 lm!1707))))) (v!43291 (getValueByKey!434 (toList!2941 lm!1707) (_1!27438 (h!54443 (toList!2941 lm!1707))))))))

(assert (=> d!1286089 d!1286593))

(declare-fun b!4353912 () Bool)

(declare-fun e!2709436 () Option!10448)

(assert (=> b!4353912 (= e!2709436 (Some!10447 (_2!27438 (h!54443 (toList!2941 lm!1707)))))))

(declare-fun b!4353914 () Bool)

(declare-fun e!2709437 () Option!10448)

(assert (=> b!4353914 (= e!2709437 (getValueByKey!434 (t!355946 (toList!2941 lm!1707)) (_1!27438 (h!54443 (toList!2941 lm!1707)))))))

(declare-fun d!1286595 () Bool)

(declare-fun c!740219 () Bool)

(assert (=> d!1286595 (= c!740219 (and ((_ is Cons!48902) (toList!2941 lm!1707)) (= (_1!27438 (h!54443 (toList!2941 lm!1707))) (_1!27438 (h!54443 (toList!2941 lm!1707))))))))

(assert (=> d!1286595 (= (getValueByKey!434 (toList!2941 lm!1707) (_1!27438 (h!54443 (toList!2941 lm!1707)))) e!2709436)))

(declare-fun b!4353913 () Bool)

(assert (=> b!4353913 (= e!2709436 e!2709437)))

(declare-fun c!740220 () Bool)

(assert (=> b!4353913 (= c!740220 (and ((_ is Cons!48902) (toList!2941 lm!1707)) (not (= (_1!27438 (h!54443 (toList!2941 lm!1707))) (_1!27438 (h!54443 (toList!2941 lm!1707)))))))))

(declare-fun b!4353915 () Bool)

(assert (=> b!4353915 (= e!2709437 None!10447)))

(assert (= (and d!1286595 c!740219) b!4353912))

(assert (= (and d!1286595 (not c!740219)) b!4353913))

(assert (= (and b!4353913 c!740220) b!4353914))

(assert (= (and b!4353913 (not c!740220)) b!4353915))

(declare-fun m!4966127 () Bool)

(assert (=> b!4353914 m!4966127))

(assert (=> d!1286089 d!1286595))

(declare-fun d!1286597 () Bool)

(assert (=> d!1286597 (= (isEmpty!28187 (toList!2941 lm!1707)) ((_ is Nil!48902) (toList!2941 lm!1707)))))

(assert (=> d!1286097 d!1286597))

(declare-fun lt!1566856 () Bool)

(declare-fun d!1286599 () Bool)

(assert (=> d!1286599 (= lt!1566856 (select (content!7698 (toList!2941 lm!1707)) (tuple2!48289 hash!377 lt!1566080)))))

(declare-fun e!2709439 () Bool)

(assert (=> d!1286599 (= lt!1566856 e!2709439)))

(declare-fun res!1789095 () Bool)

(assert (=> d!1286599 (=> (not res!1789095) (not e!2709439))))

(assert (=> d!1286599 (= res!1789095 ((_ is Cons!48902) (toList!2941 lm!1707)))))

(assert (=> d!1286599 (= (contains!11088 (toList!2941 lm!1707) (tuple2!48289 hash!377 lt!1566080)) lt!1566856)))

(declare-fun b!4353916 () Bool)

(declare-fun e!2709438 () Bool)

(assert (=> b!4353916 (= e!2709439 e!2709438)))

(declare-fun res!1789094 () Bool)

(assert (=> b!4353916 (=> res!1789094 e!2709438)))

(assert (=> b!4353916 (= res!1789094 (= (h!54443 (toList!2941 lm!1707)) (tuple2!48289 hash!377 lt!1566080)))))

(declare-fun b!4353917 () Bool)

(assert (=> b!4353917 (= e!2709438 (contains!11088 (t!355946 (toList!2941 lm!1707)) (tuple2!48289 hash!377 lt!1566080)))))

(assert (= (and d!1286599 res!1789095) b!4353916))

(assert (= (and b!4353916 (not res!1789094)) b!4353917))

(assert (=> d!1286599 m!4964781))

(declare-fun m!4966129 () Bool)

(assert (=> d!1286599 m!4966129))

(declare-fun m!4966131 () Bool)

(assert (=> b!4353917 m!4966131))

(assert (=> d!1286135 d!1286599))

(declare-fun d!1286601 () Bool)

(assert (=> d!1286601 (contains!11088 (toList!2941 lm!1707) (tuple2!48289 hash!377 lt!1566080))))

(assert (=> d!1286601 true))

(declare-fun _$14!750 () Unit!71224)

(assert (=> d!1286601 (= (choose!26822 (toList!2941 lm!1707) hash!377 lt!1566080) _$14!750)))

(declare-fun bs!630258 () Bool)

(assert (= bs!630258 d!1286601))

(assert (=> bs!630258 m!4964791))

(assert (=> d!1286135 d!1286601))

(assert (=> d!1286135 d!1286191))

(declare-fun tp!1329989 () Bool)

(declare-fun b!4353918 () Bool)

(declare-fun e!2709440 () Bool)

(assert (=> b!4353918 (= e!2709440 (and tp_is_empty!25153 tp_is_empty!25155 tp!1329989))))

(assert (=> b!4353107 (= tp!1329980 e!2709440)))

(assert (= (and b!4353107 ((_ is Cons!48901) (_2!27438 (h!54443 (toList!2941 lm!1707))))) b!4353918))

(declare-fun b!4353919 () Bool)

(declare-fun e!2709441 () Bool)

(declare-fun tp!1329990 () Bool)

(declare-fun tp!1329991 () Bool)

(assert (=> b!4353919 (= e!2709441 (and tp!1329990 tp!1329991))))

(assert (=> b!4353107 (= tp!1329981 e!2709441)))

(assert (= (and b!4353107 ((_ is Cons!48902) (t!355946 (toList!2941 lm!1707)))) b!4353919))

(declare-fun tp!1329992 () Bool)

(declare-fun b!4353920 () Bool)

(declare-fun e!2709442 () Bool)

(assert (=> b!4353920 (= e!2709442 (and tp_is_empty!25153 tp_is_empty!25155 tp!1329992))))

(assert (=> b!4353112 (= tp!1329984 e!2709442)))

(assert (= (and b!4353112 ((_ is Cons!48901) (t!355945 (t!355945 newBucket!200)))) b!4353920))

(declare-fun b_lambda!130851 () Bool)

(assert (= b_lambda!130787 (or d!1286103 b_lambda!130851)))

(declare-fun bs!630259 () Bool)

(declare-fun d!1286603 () Bool)

(assert (= bs!630259 (and d!1286603 d!1286103)))

(assert (=> bs!630259 (= (dynLambda!20621 lambda!139779 (h!54443 (toList!2941 lt!1566077))) (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 lt!1566077)))))))

(assert (=> bs!630259 m!4965017))

(assert (=> b!4353228 d!1286603))

(declare-fun b_lambda!130853 () Bool)

(assert (= b_lambda!130809 (or d!1286095 b_lambda!130853)))

(declare-fun bs!630260 () Bool)

(declare-fun d!1286605 () Bool)

(assert (= bs!630260 (and d!1286605 d!1286095)))

(assert (=> bs!630260 (= (dynLambda!20621 lambda!139778 (h!54443 (t!355946 (toList!2941 lm!1707)))) (noDuplicateKeys!479 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707))))))))

(assert (=> bs!630260 m!4965695))

(assert (=> b!4353545 d!1286605))

(declare-fun b_lambda!130855 () Bool)

(assert (= b_lambda!130801 (or d!1286061 b_lambda!130855)))

(declare-fun bs!630261 () Bool)

(declare-fun d!1286607 () Bool)

(assert (= bs!630261 (and d!1286607 d!1286061)))

(assert (=> bs!630261 (= (dynLambda!20621 lambda!139775 (h!54443 (toList!2941 lt!1566077))) (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 lt!1566077)))))))

(assert (=> bs!630261 m!4965017))

(assert (=> b!4353489 d!1286607))

(declare-fun b_lambda!130857 () Bool)

(assert (= b_lambda!130815 (or d!1286123 b_lambda!130857)))

(declare-fun bs!630262 () Bool)

(declare-fun d!1286609 () Bool)

(assert (= bs!630262 (and d!1286609 d!1286123)))

(assert (=> bs!630262 (= (dynLambda!20622 lambda!139787 (h!54442 newBucket!200)) (= (hash!1509 hashF!1247 (_1!27437 (h!54442 newBucket!200))) hash!377))))

(declare-fun m!4966133 () Bool)

(assert (=> bs!630262 m!4966133))

(assert (=> b!4353629 d!1286609))

(declare-fun b_lambda!130859 () Bool)

(assert (= b_lambda!130807 (or d!1286115 b_lambda!130859)))

(declare-fun bs!630263 () Bool)

(declare-fun d!1286611 () Bool)

(assert (= bs!630263 (and d!1286611 d!1286115)))

(assert (=> bs!630263 (= (dynLambda!20621 lambda!139781 (h!54443 (toList!2941 lm!1707))) (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 lm!1707)))))))

(assert (=> bs!630263 m!4964705))

(assert (=> b!4353533 d!1286611))

(declare-fun b_lambda!130861 () Bool)

(assert (= b_lambda!130813 (or start!420836 b_lambda!130861)))

(declare-fun bs!630264 () Bool)

(declare-fun d!1286613 () Bool)

(assert (= bs!630264 (and d!1286613 start!420836)))

(assert (=> bs!630264 (= (dynLambda!20621 lambda!139751 (h!54443 (toList!2941 (+!615 lm!1707 (tuple2!48289 hash!377 newBucket!200))))) (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 (+!615 lm!1707 (tuple2!48289 hash!377 newBucket!200)))))))))

(declare-fun m!4966135 () Bool)

(assert (=> bs!630264 m!4966135))

(assert (=> b!4353566 d!1286613))

(declare-fun b_lambda!130863 () Bool)

(assert (= b_lambda!130785 (or d!1286053 b_lambda!130863)))

(declare-fun bs!630265 () Bool)

(declare-fun d!1286615 () Bool)

(assert (= bs!630265 (and d!1286615 d!1286053)))

(assert (=> bs!630265 (= (dynLambda!20621 lambda!139772 (h!54443 (toList!2941 lm!1707))) (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 lm!1707)))))))

(assert (=> bs!630265 m!4964705))

(assert (=> b!4353201 d!1286615))

(declare-fun b_lambda!130865 () Bool)

(assert (= b_lambda!130805 (or start!420836 b_lambda!130865)))

(declare-fun bs!630266 () Bool)

(declare-fun d!1286617 () Bool)

(assert (= bs!630266 (and d!1286617 start!420836)))

(assert (=> bs!630266 (= (dynLambda!20621 lambda!139751 (h!54443 (t!355946 (toList!2941 lm!1707)))) (noDuplicateKeys!479 (_2!27438 (h!54443 (t!355946 (toList!2941 lm!1707))))))))

(assert (=> bs!630266 m!4965695))

(assert (=> b!4353531 d!1286617))

(declare-fun b_lambda!130867 () Bool)

(assert (= b_lambda!130791 (or d!1286105 b_lambda!130867)))

(declare-fun bs!630267 () Bool)

(declare-fun d!1286619 () Bool)

(assert (= bs!630267 (and d!1286619 d!1286105)))

(assert (=> bs!630267 (= (dynLambda!20621 lambda!139780 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082)))) (noDuplicateKeys!479 (_2!27438 (h!54443 (toList!2941 (+!615 lt!1566077 lt!1566082))))))))

(assert (=> bs!630267 m!4965253))

(assert (=> b!4353250 d!1286619))

(declare-fun b_lambda!130869 () Bool)

(assert (= b_lambda!130849 (or start!420836 b_lambda!130869)))

(assert (=> d!1286587 d!1286143))

(declare-fun b_lambda!130871 () Bool)

(assert (= b_lambda!130781 (or d!1286119 b_lambda!130871)))

(declare-fun bs!630268 () Bool)

(declare-fun d!1286621 () Bool)

(assert (= bs!630268 (and d!1286621 d!1286119)))

(assert (=> bs!630268 (= (dynLambda!20621 lambda!139784 (h!54443 (toList!2941 lm!1707))) (allKeysSameHash!437 (_2!27438 (h!54443 (toList!2941 lm!1707))) (_1!27438 (h!54443 (toList!2941 lm!1707))) hashF!1247))))

(declare-fun m!4966137 () Bool)

(assert (=> bs!630268 m!4966137))

(assert (=> b!4353179 d!1286621))

(declare-fun b_lambda!130873 () Bool)

(assert (= b_lambda!130797 (or start!420836 b_lambda!130873)))

(declare-fun bs!630269 () Bool)

(declare-fun d!1286623 () Bool)

(assert (= bs!630269 (and d!1286623 start!420836)))

(assert (=> bs!630269 (= (dynLambda!20621 lambda!139751 (h!54443 (t!355946 (toList!2941 lt!1566071)))) (noDuplicateKeys!479 (_2!27438 (h!54443 (t!355946 (toList!2941 lt!1566071))))))))

(declare-fun m!4966139 () Bool)

(assert (=> bs!630269 m!4966139))

(assert (=> b!4353431 d!1286623))

(check-sat (not b!4353876) (not bs!630261) tp_is_empty!25155 (not d!1286177) (not bm!302516) (not b!4353512) (not b_lambda!130855) (not b!4353716) (not d!1286585) (not d!1286369) (not b!4353180) (not b!4353503) (not b!4353906) (not bm!302533) (not b!4353731) (not bm!302581) (not d!1286187) (not b_lambda!130871) (not d!1286251) (not b!4353396) (not bm!302559) (not b!4353733) (not bm!302540) (not b!4353567) (not d!1286365) (not bs!630269) (not d!1286423) (not b!4353918) (not b!4353568) (not b!4353404) (not d!1286503) (not b!4353724) (not d!1286417) (not b_lambda!130863) (not b!4353862) (not d!1286583) (not b!4353572) (not b!4353384) (not b!4353405) (not bs!630265) (not b!4353401) (not b!4353434) (not d!1286547) (not bs!630267) (not b!4353321) (not d!1286581) (not d!1286281) (not b!4353202) (not d!1286161) (not b!4353597) (not b!4353440) (not d!1286453) (not bs!630260) (not b!4353500) (not d!1286415) (not b!4353894) (not b!4353481) (not b!4353322) (not d!1286361) (not b!4353469) (not b!4353229) (not b_lambda!130859) (not d!1286601) (not b!4353868) (not d!1286249) (not b!4353172) (not b!4353909) (not b!4353163) (not bm!302545) (not b!4353890) (not d!1286519) (not bm!302543) (not d!1286335) (not b!4353580) (not b!4353403) (not b!4353914) (not b!4353725) (not b!4353920) (not b!4353227) (not b!4353173) (not b!4353727) (not b_lambda!130771) (not d!1286573) (not bm!302580) (not b!4353432) (not d!1286185) (not b!4353722) (not b_lambda!130867) (not b!4353643) (not d!1286279) (not b_lambda!130869) (not bm!302531) (not d!1286173) (not d!1286449) (not d!1286513) (not b!4353510) (not b!4353379) (not d!1286327) (not d!1286477) (not b!4353385) (not d!1286195) (not bs!630266) (not d!1286199) (not b!4353888) (not d!1286497) (not b!4353442) (not b!4353406) (not b!4353684) (not b!4353620) (not b!4353659) (not d!1286465) (not b!4353644) (not b!4353248) (not d!1286397) (not b_lambda!130851) (not b_lambda!130857) (not b!4353867) (not b!4353598) (not b!4353550) (not b!4353719) (not b!4353522) (not b!4353919) (not d!1286381) (not d!1286333) (not d!1286539) (not b!4353209) (not b!4353569) (not b!4353881) (not b!4353441) (not d!1286221) (not bm!302518) (not b!4353870) (not d!1286387) (not b!4353760) (not d!1286545) (not b!4353887) (not b!4353897) (not b!4353582) (not d!1286517) (not bm!302532) (not b!4353210) (not b!4353880) (not b!4353581) (not b!4353186) (not d!1286325) (not b!4353579) (not bs!630263) (not b_lambda!130853) (not b!4353860) (not b!4353211) (not b!4353541) (not b!4353573) (not d!1286157) (not b!4353174) (not bm!302585) (not d!1286409) (not b!4353664) (not d!1286287) (not b!4353204) (not b!4353423) (not b!4353382) (not b_lambda!130865) (not d!1286491) (not d!1286313) (not b!4353529) (not b!4353647) (not b!4353730) (not b!4353320) (not bs!630264) (not d!1286329) (not bm!302542) (not b!4353599) (not b!4353917) (not b!4353532) (not b_lambda!130773) (not b!4353646) (not b_lambda!130777) (not b!4353645) (not b_lambda!130861) (not b!4353251) (not b!4353656) (not bm!302557) (not b!4353869) tp_is_empty!25153 (not bm!302517) (not d!1286475) (not b!4353430) (not b!4353323) (not b!4353555) (not b!4353268) (not b_lambda!130775) (not d!1286579) (not b!4353162) (not d!1286479) (not b!4353556) (not b!4353574) (not b!4353895) (not b!4353872) (not b!4353726) (not b!4353557) (not b!4353630) (not b!4353164) (not d!1286339) (not d!1286461) (not bs!630259) (not b!4353910) (not b!4353858) (not b!4353534) (not b!4353648) (not b_lambda!130873) (not d!1286213) (not b!4353143) (not b!4353501) (not b!4353658) (not d!1286337) (not d!1286431) (not b!4353641) (not b!4353736) (not b!4353893) (not b!4353576) (not b!4353911) (not d!1286571) (not b!4353507) (not b!4353761) (not b!4353558) (not d!1286447) (not b!4353732) (not bs!630268) (not b!4353856) (not d!1286509) (not b!4353717) (not b!4353903) (not b!4353865) (not bs!630262) (not d!1286459) (not d!1286599) (not b!4353546) (not b!4353896) (not b!4353502) (not b!4353497) (not b!4353661) (not b!4353437) (not d!1286421) (not b!4353490) (not b!4353327) (not b!4353470) (not bm!302541) (not b!4353596) (not b!4353683) (not d!1286451) (not b!4353383) (not bm!302544))
(check-sat)
