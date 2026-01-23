; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!480054 () Bool)

(assert start!480054)

(declare-fun b!4718032 () Bool)

(declare-fun res!1995439 () Bool)

(declare-fun e!2942505 () Bool)

(assert (=> b!4718032 (=> (not res!1995439) (not e!2942505))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6366 0))(
  ( (HashableExt!6365 (__x!32069 Int)) )
))
(declare-fun hashF!1323 () Hashable!6366)

(declare-datatypes ((K!14143 0))(
  ( (K!14144 (val!19585 Int)) )
))
(declare-datatypes ((V!14389 0))(
  ( (V!14390 (val!19586 Int)) )
))
(declare-datatypes ((tuple2!54382 0))(
  ( (tuple2!54383 (_1!30485 K!14143) (_2!30485 V!14389)) )
))
(declare-datatypes ((List!52907 0))(
  ( (Nil!52783) (Cons!52783 (h!59116 tuple2!54382) (t!360163 List!52907)) )
))
(declare-fun newBucket!218 () List!52907)

(declare-fun allKeysSameHash!1823 (List!52907 (_ BitVec 64) Hashable!6366) Bool)

(assert (=> b!4718032 (= res!1995439 (allKeysSameHash!1823 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4718033 () Bool)

(declare-fun res!1995435 () Bool)

(assert (=> b!4718033 (=> (not res!1995435) (not e!2942505))))

(declare-datatypes ((tuple2!54384 0))(
  ( (tuple2!54385 (_1!30486 (_ BitVec 64)) (_2!30486 List!52907)) )
))
(declare-datatypes ((List!52908 0))(
  ( (Nil!52784) (Cons!52784 (h!59117 tuple2!54384) (t!360164 List!52908)) )
))
(declare-datatypes ((ListLongMap!4413 0))(
  ( (ListLongMap!4414 (toList!5883 List!52908)) )
))
(declare-fun lm!2023 () ListLongMap!4413)

(declare-fun allKeysSameHashInMap!1911 (ListLongMap!4413 Hashable!6366) Bool)

(assert (=> b!4718033 (= res!1995435 (allKeysSameHashInMap!1911 lm!2023 hashF!1323))))

(declare-fun b!4718034 () Bool)

(declare-fun res!1995441 () Bool)

(assert (=> b!4718034 (=> (not res!1995441) (not e!2942505))))

(declare-fun oldBucket!34 () List!52907)

(declare-fun head!10223 (List!52908) tuple2!54384)

(assert (=> b!4718034 (= res!1995441 (= (head!10223 (toList!5883 lm!2023)) (tuple2!54385 hash!405 oldBucket!34)))))

(declare-fun b!4718035 () Bool)

(declare-fun res!1995443 () Bool)

(assert (=> b!4718035 (=> (not res!1995443) (not e!2942505))))

(assert (=> b!4718035 (= res!1995443 (allKeysSameHash!1823 oldBucket!34 hash!405 hashF!1323))))

(declare-fun res!1995442 () Bool)

(assert (=> start!480054 (=> (not res!1995442) (not e!2942505))))

(declare-fun lambda!214510 () Int)

(declare-fun forall!11552 (List!52908 Int) Bool)

(assert (=> start!480054 (= res!1995442 (forall!11552 (toList!5883 lm!2023) lambda!214510))))

(assert (=> start!480054 e!2942505))

(declare-fun e!2942507 () Bool)

(declare-fun inv!68018 (ListLongMap!4413) Bool)

(assert (=> start!480054 (and (inv!68018 lm!2023) e!2942507)))

(declare-fun tp_is_empty!31281 () Bool)

(assert (=> start!480054 tp_is_empty!31281))

(declare-fun e!2942506 () Bool)

(assert (=> start!480054 e!2942506))

(assert (=> start!480054 true))

(declare-fun e!2942508 () Bool)

(assert (=> start!480054 e!2942508))

(declare-fun b!4718036 () Bool)

(declare-fun res!1995440 () Bool)

(assert (=> b!4718036 (=> (not res!1995440) (not e!2942505))))

(declare-fun key!4653 () K!14143)

(declare-fun removePairForKey!1592 (List!52907 K!14143) List!52907)

(assert (=> b!4718036 (= res!1995440 (= (removePairForKey!1592 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4718037 () Bool)

(declare-fun tp!1348084 () Bool)

(assert (=> b!4718037 (= e!2942507 tp!1348084)))

(declare-fun b!4718038 () Bool)

(declare-fun res!1995436 () Bool)

(assert (=> b!4718038 (=> (not res!1995436) (not e!2942505))))

(declare-fun hash!4354 (Hashable!6366 K!14143) (_ BitVec 64))

(assert (=> b!4718038 (= res!1995436 (= (hash!4354 hashF!1323 key!4653) hash!405))))

(declare-fun b!4718039 () Bool)

(declare-fun res!1995437 () Bool)

(assert (=> b!4718039 (=> (not res!1995437) (not e!2942505))))

(declare-fun noDuplicateKeys!1997 (List!52907) Bool)

(assert (=> b!4718039 (= res!1995437 (noDuplicateKeys!1997 oldBucket!34))))

(declare-fun tp!1348083 () Bool)

(declare-fun b!4718040 () Bool)

(declare-fun tp_is_empty!31283 () Bool)

(assert (=> b!4718040 (= e!2942506 (and tp_is_empty!31281 tp_is_empty!31283 tp!1348083))))

(declare-fun b!4718041 () Bool)

(declare-fun res!1995434 () Bool)

(assert (=> b!4718041 (=> (not res!1995434) (not e!2942505))))

(declare-datatypes ((ListMap!5247 0))(
  ( (ListMap!5248 (toList!5884 List!52907)) )
))
(declare-fun contains!16138 (ListMap!5247 K!14143) Bool)

(declare-fun extractMap!2023 (List!52908) ListMap!5247)

(assert (=> b!4718041 (= res!1995434 (contains!16138 (extractMap!2023 (toList!5883 lm!2023)) key!4653))))

(declare-fun b!4718042 () Bool)

(declare-fun res!1995438 () Bool)

(assert (=> b!4718042 (=> (not res!1995438) (not e!2942505))))

(assert (=> b!4718042 (= res!1995438 (noDuplicateKeys!1997 newBucket!218))))

(declare-fun b!4718043 () Bool)

(declare-fun tp!1348082 () Bool)

(assert (=> b!4718043 (= e!2942508 (and tp_is_empty!31281 tp_is_empty!31283 tp!1348082))))

(declare-fun b!4718044 () Bool)

(declare-fun size!35979 (List!52907) Int)

(assert (=> b!4718044 (= e!2942505 (< (size!35979 oldBucket!34) 0))))

(assert (= (and start!480054 res!1995442) b!4718039))

(assert (= (and b!4718039 res!1995437) b!4718042))

(assert (= (and b!4718042 res!1995438) b!4718036))

(assert (= (and b!4718036 res!1995440) b!4718035))

(assert (= (and b!4718035 res!1995443) b!4718041))

(assert (= (and b!4718041 res!1995434) b!4718038))

(assert (= (and b!4718038 res!1995436) b!4718032))

(assert (= (and b!4718032 res!1995439) b!4718033))

(assert (= (and b!4718033 res!1995435) b!4718034))

(assert (= (and b!4718034 res!1995441) b!4718044))

(assert (= start!480054 b!4718037))

(assert (= (and start!480054 (is-Cons!52783 oldBucket!34)) b!4718040))

(assert (= (and start!480054 (is-Cons!52783 newBucket!218)) b!4718043))

(declare-fun m!5650081 () Bool)

(assert (=> b!4718041 m!5650081))

(assert (=> b!4718041 m!5650081))

(declare-fun m!5650083 () Bool)

(assert (=> b!4718041 m!5650083))

(declare-fun m!5650085 () Bool)

(assert (=> b!4718033 m!5650085))

(declare-fun m!5650087 () Bool)

(assert (=> b!4718036 m!5650087))

(declare-fun m!5650089 () Bool)

(assert (=> b!4718035 m!5650089))

(declare-fun m!5650091 () Bool)

(assert (=> b!4718039 m!5650091))

(declare-fun m!5650093 () Bool)

(assert (=> start!480054 m!5650093))

(declare-fun m!5650095 () Bool)

(assert (=> start!480054 m!5650095))

(declare-fun m!5650097 () Bool)

(assert (=> b!4718032 m!5650097))

(declare-fun m!5650099 () Bool)

(assert (=> b!4718038 m!5650099))

(declare-fun m!5650101 () Bool)

(assert (=> b!4718034 m!5650101))

(declare-fun m!5650103 () Bool)

(assert (=> b!4718042 m!5650103))

(declare-fun m!5650105 () Bool)

(assert (=> b!4718044 m!5650105))

(push 1)

(assert (not b!4718040))

(assert (not b!4718044))

(assert (not b!4718035))

(assert (not start!480054))

(assert (not b!4718033))

(assert (not b!4718041))

(assert (not b!4718034))

(assert (not b!4718038))

(assert (not b!4718043))

(assert tp_is_empty!31281)

(assert (not b!4718039))

(assert (not b!4718042))

(assert tp_is_empty!31283)

(assert (not b!4718032))

(assert (not b!4718036))

(assert (not b!4718037))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4718134 () Bool)

(declare-datatypes ((List!52911 0))(
  ( (Nil!52787) (Cons!52787 (h!59122 K!14143) (t!360167 List!52911)) )
))
(declare-fun e!2942553 () List!52911)

(declare-fun getKeysList!937 (List!52907) List!52911)

(assert (=> b!4718134 (= e!2942553 (getKeysList!937 (toList!5884 (extractMap!2023 (toList!5883 lm!2023)))))))

(declare-fun b!4718135 () Bool)

(declare-fun e!2942555 () Bool)

(declare-fun contains!16140 (List!52911 K!14143) Bool)

(declare-fun keys!18944 (ListMap!5247) List!52911)

(assert (=> b!4718135 (= e!2942555 (not (contains!16140 (keys!18944 (extractMap!2023 (toList!5883 lm!2023))) key!4653)))))

(declare-fun b!4718136 () Bool)

(assert (=> b!4718136 false))

(declare-datatypes ((Unit!129115 0))(
  ( (Unit!129116) )
))
(declare-fun lt!1883848 () Unit!129115)

(declare-fun lt!1883847 () Unit!129115)

(assert (=> b!4718136 (= lt!1883848 lt!1883847)))

(declare-fun containsKey!3342 (List!52907 K!14143) Bool)

(assert (=> b!4718136 (containsKey!3342 (toList!5884 (extractMap!2023 (toList!5883 lm!2023))) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!936 (List!52907 K!14143) Unit!129115)

(assert (=> b!4718136 (= lt!1883847 (lemmaInGetKeysListThenContainsKey!936 (toList!5884 (extractMap!2023 (toList!5883 lm!2023))) key!4653))))

(declare-fun e!2942550 () Unit!129115)

(declare-fun Unit!129117 () Unit!129115)

(assert (=> b!4718136 (= e!2942550 Unit!129117)))

(declare-fun d!1501559 () Bool)

(declare-fun e!2942552 () Bool)

(assert (=> d!1501559 e!2942552))

(declare-fun res!1995490 () Bool)

(assert (=> d!1501559 (=> res!1995490 e!2942552)))

(assert (=> d!1501559 (= res!1995490 e!2942555)))

(declare-fun res!1995488 () Bool)

(assert (=> d!1501559 (=> (not res!1995488) (not e!2942555))))

(declare-fun lt!1883844 () Bool)

(assert (=> d!1501559 (= res!1995488 (not lt!1883844))))

(declare-fun lt!1883850 () Bool)

(assert (=> d!1501559 (= lt!1883844 lt!1883850)))

(declare-fun lt!1883849 () Unit!129115)

(declare-fun e!2942554 () Unit!129115)

(assert (=> d!1501559 (= lt!1883849 e!2942554)))

(declare-fun c!805779 () Bool)

(assert (=> d!1501559 (= c!805779 lt!1883850)))

(assert (=> d!1501559 (= lt!1883850 (containsKey!3342 (toList!5884 (extractMap!2023 (toList!5883 lm!2023))) key!4653))))

(assert (=> d!1501559 (= (contains!16138 (extractMap!2023 (toList!5883 lm!2023)) key!4653) lt!1883844)))

(declare-fun b!4718137 () Bool)

(declare-fun lt!1883846 () Unit!129115)

(assert (=> b!4718137 (= e!2942554 lt!1883846)))

(declare-fun lt!1883845 () Unit!129115)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1832 (List!52907 K!14143) Unit!129115)

(assert (=> b!4718137 (= lt!1883845 (lemmaContainsKeyImpliesGetValueByKeyDefined!1832 (toList!5884 (extractMap!2023 (toList!5883 lm!2023))) key!4653))))

(declare-datatypes ((Option!12345 0))(
  ( (None!12344) (Some!12344 (v!46911 V!14389)) )
))
(declare-fun isDefined!9599 (Option!12345) Bool)

(declare-fun getValueByKey!1941 (List!52907 K!14143) Option!12345)

(assert (=> b!4718137 (isDefined!9599 (getValueByKey!1941 (toList!5884 (extractMap!2023 (toList!5883 lm!2023))) key!4653))))

(declare-fun lt!1883843 () Unit!129115)

(assert (=> b!4718137 (= lt!1883843 lt!1883845)))

(declare-fun lemmaInListThenGetKeysListContains!932 (List!52907 K!14143) Unit!129115)

(assert (=> b!4718137 (= lt!1883846 (lemmaInListThenGetKeysListContains!932 (toList!5884 (extractMap!2023 (toList!5883 lm!2023))) key!4653))))

(declare-fun call!329854 () Bool)

(assert (=> b!4718137 call!329854))

(declare-fun b!4718138 () Bool)

(declare-fun Unit!129118 () Unit!129115)

(assert (=> b!4718138 (= e!2942550 Unit!129118)))

(declare-fun b!4718139 () Bool)

(declare-fun e!2942551 () Bool)

(assert (=> b!4718139 (= e!2942551 (contains!16140 (keys!18944 (extractMap!2023 (toList!5883 lm!2023))) key!4653))))

(declare-fun b!4718140 () Bool)

(assert (=> b!4718140 (= e!2942554 e!2942550)))

(declare-fun c!805777 () Bool)

(assert (=> b!4718140 (= c!805777 call!329854)))

(declare-fun b!4718141 () Bool)

(assert (=> b!4718141 (= e!2942553 (keys!18944 (extractMap!2023 (toList!5883 lm!2023))))))

(declare-fun b!4718142 () Bool)

(assert (=> b!4718142 (= e!2942552 e!2942551)))

(declare-fun res!1995489 () Bool)

(assert (=> b!4718142 (=> (not res!1995489) (not e!2942551))))

(assert (=> b!4718142 (= res!1995489 (isDefined!9599 (getValueByKey!1941 (toList!5884 (extractMap!2023 (toList!5883 lm!2023))) key!4653)))))

(declare-fun bm!329849 () Bool)

(assert (=> bm!329849 (= call!329854 (contains!16140 e!2942553 key!4653))))

(declare-fun c!805778 () Bool)

(assert (=> bm!329849 (= c!805778 c!805779)))

(assert (= (and d!1501559 c!805779) b!4718137))

(assert (= (and d!1501559 (not c!805779)) b!4718140))

(assert (= (and b!4718140 c!805777) b!4718136))

(assert (= (and b!4718140 (not c!805777)) b!4718138))

(assert (= (or b!4718137 b!4718140) bm!329849))

(assert (= (and bm!329849 c!805778) b!4718134))

(assert (= (and bm!329849 (not c!805778)) b!4718141))

(assert (= (and d!1501559 res!1995488) b!4718135))

(assert (= (and d!1501559 (not res!1995490)) b!4718142))

(assert (= (and b!4718142 res!1995489) b!4718139))

(declare-fun m!5650153 () Bool)

(assert (=> b!4718134 m!5650153))

(declare-fun m!5650155 () Bool)

(assert (=> b!4718137 m!5650155))

(declare-fun m!5650157 () Bool)

(assert (=> b!4718137 m!5650157))

(assert (=> b!4718137 m!5650157))

(declare-fun m!5650159 () Bool)

(assert (=> b!4718137 m!5650159))

(declare-fun m!5650161 () Bool)

(assert (=> b!4718137 m!5650161))

(assert (=> b!4718141 m!5650081))

(declare-fun m!5650163 () Bool)

(assert (=> b!4718141 m!5650163))

(declare-fun m!5650165 () Bool)

(assert (=> d!1501559 m!5650165))

(assert (=> b!4718142 m!5650157))

(assert (=> b!4718142 m!5650157))

(assert (=> b!4718142 m!5650159))

(assert (=> b!4718136 m!5650165))

(declare-fun m!5650167 () Bool)

(assert (=> b!4718136 m!5650167))

(assert (=> b!4718139 m!5650081))

(assert (=> b!4718139 m!5650163))

(assert (=> b!4718139 m!5650163))

(declare-fun m!5650169 () Bool)

(assert (=> b!4718139 m!5650169))

(assert (=> b!4718135 m!5650081))

(assert (=> b!4718135 m!5650163))

(assert (=> b!4718135 m!5650163))

(assert (=> b!4718135 m!5650169))

(declare-fun m!5650171 () Bool)

(assert (=> bm!329849 m!5650171))

(assert (=> b!4718041 d!1501559))

(declare-fun bs!1106124 () Bool)

(declare-fun d!1501573 () Bool)

(assert (= bs!1106124 (and d!1501573 start!480054)))

(declare-fun lambda!214522 () Int)

(assert (=> bs!1106124 (= lambda!214522 lambda!214510)))

(declare-fun lt!1883877 () ListMap!5247)

(declare-fun invariantList!1497 (List!52907) Bool)

(assert (=> d!1501573 (invariantList!1497 (toList!5884 lt!1883877))))

(declare-fun e!2942576 () ListMap!5247)

(assert (=> d!1501573 (= lt!1883877 e!2942576)))

(declare-fun c!805791 () Bool)

(assert (=> d!1501573 (= c!805791 (is-Cons!52784 (toList!5883 lm!2023)))))

(assert (=> d!1501573 (forall!11552 (toList!5883 lm!2023) lambda!214522)))

(assert (=> d!1501573 (= (extractMap!2023 (toList!5883 lm!2023)) lt!1883877)))

(declare-fun b!4718174 () Bool)

(declare-fun addToMapMapFromBucket!1427 (List!52907 ListMap!5247) ListMap!5247)

(assert (=> b!4718174 (= e!2942576 (addToMapMapFromBucket!1427 (_2!30486 (h!59117 (toList!5883 lm!2023))) (extractMap!2023 (t!360164 (toList!5883 lm!2023)))))))

(declare-fun b!4718175 () Bool)

(assert (=> b!4718175 (= e!2942576 (ListMap!5248 Nil!52783))))

(assert (= (and d!1501573 c!805791) b!4718174))

(assert (= (and d!1501573 (not c!805791)) b!4718175))

(declare-fun m!5650193 () Bool)

(assert (=> d!1501573 m!5650193))

(declare-fun m!5650195 () Bool)

(assert (=> d!1501573 m!5650195))

(declare-fun m!5650197 () Bool)

(assert (=> b!4718174 m!5650197))

(assert (=> b!4718174 m!5650197))

(declare-fun m!5650199 () Bool)

(assert (=> b!4718174 m!5650199))

(assert (=> b!4718041 d!1501573))

(declare-fun d!1501577 () Bool)

(declare-fun lt!1883880 () List!52907)

(declare-fun containsKey!3345 (List!52907 K!14143) Bool)

(assert (=> d!1501577 (not (containsKey!3345 lt!1883880 key!4653))))

(declare-fun e!2942582 () List!52907)

(assert (=> d!1501577 (= lt!1883880 e!2942582)))

(declare-fun c!805797 () Bool)

(assert (=> d!1501577 (= c!805797 (and (is-Cons!52783 oldBucket!34) (= (_1!30485 (h!59116 oldBucket!34)) key!4653)))))

(assert (=> d!1501577 (noDuplicateKeys!1997 oldBucket!34)))

(assert (=> d!1501577 (= (removePairForKey!1592 oldBucket!34 key!4653) lt!1883880)))

(declare-fun b!4718187 () Bool)

(declare-fun e!2942581 () List!52907)

(assert (=> b!4718187 (= e!2942581 Nil!52783)))

(declare-fun b!4718184 () Bool)

(assert (=> b!4718184 (= e!2942582 (t!360163 oldBucket!34))))

(declare-fun b!4718186 () Bool)

(assert (=> b!4718186 (= e!2942581 (Cons!52783 (h!59116 oldBucket!34) (removePairForKey!1592 (t!360163 oldBucket!34) key!4653)))))

(declare-fun b!4718185 () Bool)

(assert (=> b!4718185 (= e!2942582 e!2942581)))

(declare-fun c!805796 () Bool)

(assert (=> b!4718185 (= c!805796 (is-Cons!52783 oldBucket!34))))

(assert (= (and d!1501577 c!805797) b!4718184))

(assert (= (and d!1501577 (not c!805797)) b!4718185))

(assert (= (and b!4718185 c!805796) b!4718186))

(assert (= (and b!4718185 (not c!805796)) b!4718187))

(declare-fun m!5650201 () Bool)

(assert (=> d!1501577 m!5650201))

(assert (=> d!1501577 m!5650091))

(declare-fun m!5650203 () Bool)

(assert (=> b!4718186 m!5650203))

(assert (=> b!4718036 d!1501577))

(declare-fun d!1501579 () Bool)

(assert (=> d!1501579 true))

(assert (=> d!1501579 true))

(declare-fun lambda!214525 () Int)

(declare-fun forall!11555 (List!52907 Int) Bool)

(assert (=> d!1501579 (= (allKeysSameHash!1823 oldBucket!34 hash!405 hashF!1323) (forall!11555 oldBucket!34 lambda!214525))))

(declare-fun bs!1106125 () Bool)

(assert (= bs!1106125 d!1501579))

(declare-fun m!5650205 () Bool)

(assert (=> bs!1106125 m!5650205))

(assert (=> b!4718035 d!1501579))

(declare-fun d!1501581 () Bool)

(declare-fun res!1995504 () Bool)

(declare-fun e!2942587 () Bool)

(assert (=> d!1501581 (=> res!1995504 e!2942587)))

(assert (=> d!1501581 (= res!1995504 (not (is-Cons!52783 oldBucket!34)))))

(assert (=> d!1501581 (= (noDuplicateKeys!1997 oldBucket!34) e!2942587)))

(declare-fun b!4718196 () Bool)

(declare-fun e!2942588 () Bool)

(assert (=> b!4718196 (= e!2942587 e!2942588)))

(declare-fun res!1995505 () Bool)

(assert (=> b!4718196 (=> (not res!1995505) (not e!2942588))))

(assert (=> b!4718196 (= res!1995505 (not (containsKey!3345 (t!360163 oldBucket!34) (_1!30485 (h!59116 oldBucket!34)))))))

(declare-fun b!4718197 () Bool)

(assert (=> b!4718197 (= e!2942588 (noDuplicateKeys!1997 (t!360163 oldBucket!34)))))

(assert (= (and d!1501581 (not res!1995504)) b!4718196))

(assert (= (and b!4718196 res!1995505) b!4718197))

(declare-fun m!5650207 () Bool)

(assert (=> b!4718196 m!5650207))

(declare-fun m!5650209 () Bool)

(assert (=> b!4718197 m!5650209))

(assert (=> b!4718039 d!1501581))

(declare-fun d!1501583 () Bool)

(assert (=> d!1501583 (= (head!10223 (toList!5883 lm!2023)) (h!59117 (toList!5883 lm!2023)))))

(assert (=> b!4718034 d!1501583))

(declare-fun bs!1106126 () Bool)

(declare-fun d!1501585 () Bool)

(assert (= bs!1106126 (and d!1501585 start!480054)))

(declare-fun lambda!214530 () Int)

(assert (=> bs!1106126 (not (= lambda!214530 lambda!214510))))

(declare-fun bs!1106127 () Bool)

(assert (= bs!1106127 (and d!1501585 d!1501573)))

(assert (=> bs!1106127 (not (= lambda!214530 lambda!214522))))

(assert (=> d!1501585 true))

(assert (=> d!1501585 (= (allKeysSameHashInMap!1911 lm!2023 hashF!1323) (forall!11552 (toList!5883 lm!2023) lambda!214530))))

(declare-fun bs!1106128 () Bool)

(assert (= bs!1106128 d!1501585))

(declare-fun m!5650211 () Bool)

(assert (=> bs!1106128 m!5650211))

(assert (=> b!4718033 d!1501585))

(declare-fun d!1501587 () Bool)

(declare-fun lt!1883886 () Int)

(assert (=> d!1501587 (>= lt!1883886 0)))

(declare-fun e!2942594 () Int)

(assert (=> d!1501587 (= lt!1883886 e!2942594)))

(declare-fun c!805803 () Bool)

(assert (=> d!1501587 (= c!805803 (is-Nil!52783 oldBucket!34))))

(assert (=> d!1501587 (= (size!35979 oldBucket!34) lt!1883886)))

(declare-fun b!4718210 () Bool)

(assert (=> b!4718210 (= e!2942594 0)))

(declare-fun b!4718211 () Bool)

(assert (=> b!4718211 (= e!2942594 (+ 1 (size!35979 (t!360163 oldBucket!34))))))

(assert (= (and d!1501587 c!805803) b!4718210))

(assert (= (and d!1501587 (not c!805803)) b!4718211))

(declare-fun m!5650223 () Bool)

(assert (=> b!4718211 m!5650223))

(assert (=> b!4718044 d!1501587))

(declare-fun d!1501593 () Bool)

(declare-fun res!1995516 () Bool)

(declare-fun e!2942605 () Bool)

(assert (=> d!1501593 (=> res!1995516 e!2942605)))

(assert (=> d!1501593 (= res!1995516 (is-Nil!52784 (toList!5883 lm!2023)))))

(assert (=> d!1501593 (= (forall!11552 (toList!5883 lm!2023) lambda!214510) e!2942605)))

(declare-fun b!4718222 () Bool)

(declare-fun e!2942606 () Bool)

(assert (=> b!4718222 (= e!2942605 e!2942606)))

(declare-fun res!1995517 () Bool)

(assert (=> b!4718222 (=> (not res!1995517) (not e!2942606))))

(declare-fun dynLambda!21800 (Int tuple2!54384) Bool)

(assert (=> b!4718222 (= res!1995517 (dynLambda!21800 lambda!214510 (h!59117 (toList!5883 lm!2023))))))

(declare-fun b!4718223 () Bool)

(assert (=> b!4718223 (= e!2942606 (forall!11552 (t!360164 (toList!5883 lm!2023)) lambda!214510))))

(assert (= (and d!1501593 (not res!1995516)) b!4718222))

(assert (= (and b!4718222 res!1995517) b!4718223))

(declare-fun b_lambda!177823 () Bool)

(assert (=> (not b_lambda!177823) (not b!4718222)))

(declare-fun m!5650229 () Bool)

(assert (=> b!4718222 m!5650229))

(declare-fun m!5650231 () Bool)

(assert (=> b!4718223 m!5650231))

(assert (=> start!480054 d!1501593))

(declare-fun d!1501597 () Bool)

(declare-fun isStrictlySorted!736 (List!52908) Bool)

(assert (=> d!1501597 (= (inv!68018 lm!2023) (isStrictlySorted!736 (toList!5883 lm!2023)))))

(declare-fun bs!1106134 () Bool)

(assert (= bs!1106134 d!1501597))

(declare-fun m!5650235 () Bool)

(assert (=> bs!1106134 m!5650235))

(assert (=> start!480054 d!1501597))

(declare-fun d!1501599 () Bool)

(declare-fun hash!4357 (Hashable!6366 K!14143) (_ BitVec 64))

(assert (=> d!1501599 (= (hash!4354 hashF!1323 key!4653) (hash!4357 hashF!1323 key!4653))))

(declare-fun bs!1106135 () Bool)

(assert (= bs!1106135 d!1501599))

(declare-fun m!5650237 () Bool)

(assert (=> bs!1106135 m!5650237))

(assert (=> b!4718038 d!1501599))

(declare-fun bs!1106136 () Bool)

(declare-fun d!1501601 () Bool)

(assert (= bs!1106136 (and d!1501601 d!1501579)))

(declare-fun lambda!214533 () Int)

(assert (=> bs!1106136 (= lambda!214533 lambda!214525)))

(assert (=> d!1501601 true))

(assert (=> d!1501601 true))

(assert (=> d!1501601 (= (allKeysSameHash!1823 newBucket!218 hash!405 hashF!1323) (forall!11555 newBucket!218 lambda!214533))))

(declare-fun bs!1106138 () Bool)

(assert (= bs!1106138 d!1501601))

(declare-fun m!5650241 () Bool)

(assert (=> bs!1106138 m!5650241))

(assert (=> b!4718032 d!1501601))

(declare-fun d!1501605 () Bool)

(declare-fun res!1995518 () Bool)

(declare-fun e!2942614 () Bool)

(assert (=> d!1501605 (=> res!1995518 e!2942614)))

(assert (=> d!1501605 (= res!1995518 (not (is-Cons!52783 newBucket!218)))))

(assert (=> d!1501605 (= (noDuplicateKeys!1997 newBucket!218) e!2942614)))

(declare-fun b!4718235 () Bool)

(declare-fun e!2942615 () Bool)

(assert (=> b!4718235 (= e!2942614 e!2942615)))

(declare-fun res!1995519 () Bool)

(assert (=> b!4718235 (=> (not res!1995519) (not e!2942615))))

(assert (=> b!4718235 (= res!1995519 (not (containsKey!3345 (t!360163 newBucket!218) (_1!30485 (h!59116 newBucket!218)))))))

(declare-fun b!4718236 () Bool)

(assert (=> b!4718236 (= e!2942615 (noDuplicateKeys!1997 (t!360163 newBucket!218)))))

(assert (= (and d!1501605 (not res!1995518)) b!4718235))

(assert (= (and b!4718235 res!1995519) b!4718236))

(declare-fun m!5650243 () Bool)

(assert (=> b!4718235 m!5650243))

(declare-fun m!5650245 () Bool)

(assert (=> b!4718236 m!5650245))

(assert (=> b!4718042 d!1501605))

(declare-fun b!4718241 () Bool)

(declare-fun tp!1348106 () Bool)

(declare-fun e!2942618 () Bool)

(assert (=> b!4718241 (= e!2942618 (and tp_is_empty!31281 tp_is_empty!31283 tp!1348106))))

(assert (=> b!4718040 (= tp!1348083 e!2942618)))

(assert (= (and b!4718040 (is-Cons!52783 (t!360163 oldBucket!34))) b!4718241))

(declare-fun b!4718242 () Bool)

(declare-fun e!2942619 () Bool)

(declare-fun tp!1348107 () Bool)

(assert (=> b!4718242 (= e!2942619 (and tp_is_empty!31281 tp_is_empty!31283 tp!1348107))))

(assert (=> b!4718043 (= tp!1348082 e!2942619)))

(assert (= (and b!4718043 (is-Cons!52783 (t!360163 newBucket!218))) b!4718242))

(declare-fun b!4718247 () Bool)

(declare-fun e!2942622 () Bool)

(declare-fun tp!1348112 () Bool)

(declare-fun tp!1348113 () Bool)

(assert (=> b!4718247 (= e!2942622 (and tp!1348112 tp!1348113))))

(assert (=> b!4718037 (= tp!1348084 e!2942622)))

(assert (= (and b!4718037 (is-Cons!52784 (toList!5883 lm!2023))) b!4718247))

(declare-fun b_lambda!177827 () Bool)

(assert (= b_lambda!177823 (or start!480054 b_lambda!177827)))

(declare-fun bs!1106139 () Bool)

(declare-fun d!1501607 () Bool)

(assert (= bs!1106139 (and d!1501607 start!480054)))

(assert (=> bs!1106139 (= (dynLambda!21800 lambda!214510 (h!59117 (toList!5883 lm!2023))) (noDuplicateKeys!1997 (_2!30486 (h!59117 (toList!5883 lm!2023)))))))

(declare-fun m!5650247 () Bool)

(assert (=> bs!1106139 m!5650247))

(assert (=> b!4718222 d!1501607))

(push 1)

(assert (not d!1501585))

(assert (not b!4718247))

(assert (not b!4718236))

(assert (not bm!329849))

(assert (not b!4718186))

(assert (not b!4718235))

(assert (not b!4718141))

(assert (not b!4718135))

(assert (not b!4718241))

(assert (not b!4718142))

(assert (not b!4718211))

(assert (not b!4718197))

(assert (not b_lambda!177827))

(assert (not b!4718137))

(assert (not b!4718174))

(assert (not d!1501577))

(assert (not b!4718223))

(assert (not d!1501559))

(assert (not b!4718196))

(assert (not b!4718134))

(assert (not b!4718242))

(assert (not d!1501597))

(assert (not d!1501599))

(assert (not b!4718136))

(assert (not d!1501573))

(assert (not d!1501579))

(assert tp_is_empty!31281)

(assert (not d!1501601))

(assert (not bs!1106139))

(assert (not b!4718139))

(assert tp_is_empty!31283)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

