; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!421078 () Bool)

(assert start!421078)

(declare-fun b!4353949 () Bool)

(declare-fun e!2709463 () Bool)

(declare-datatypes ((V!10514 0))(
  ( (V!10515 (val!16485 Int)) )
))
(declare-datatypes ((K!10268 0))(
  ( (K!10269 (val!16486 Int)) )
))
(declare-datatypes ((tuple2!48290 0))(
  ( (tuple2!48291 (_1!27439 K!10268) (_2!27439 V!10514)) )
))
(declare-datatypes ((List!49029 0))(
  ( (Nil!48905) (Cons!48905 (h!54448 tuple2!48290) (t!355949 List!49029)) )
))
(declare-datatypes ((tuple2!48292 0))(
  ( (tuple2!48293 (_1!27440 (_ BitVec 64)) (_2!27440 List!49029)) )
))
(declare-datatypes ((List!49030 0))(
  ( (Nil!48906) (Cons!48906 (h!54449 tuple2!48292) (t!355950 List!49030)) )
))
(declare-datatypes ((ListLongMap!1593 0))(
  ( (ListLongMap!1594 (toList!2943 List!49030)) )
))
(declare-fun lt!1566887 () ListLongMap!1593)

(declare-fun lambda!139956 () Int)

(declare-fun forall!9101 (List!49030 Int) Bool)

(assert (=> b!4353949 (= e!2709463 (forall!9101 (toList!2943 lt!1566887) lambda!139956))))

(declare-fun b!4353950 () Bool)

(declare-fun e!2709461 () Bool)

(declare-fun tp!1329998 () Bool)

(assert (=> b!4353950 (= e!2709461 tp!1329998)))

(declare-fun b!4353951 () Bool)

(declare-fun e!2709460 () Bool)

(declare-fun lt!1566886 () ListLongMap!1593)

(assert (=> b!4353951 (= e!2709460 (forall!9101 (toList!2943 lt!1566886) lambda!139956))))

(declare-fun e!2709464 () Bool)

(assert (=> b!4353951 e!2709464))

(declare-fun res!1789126 () Bool)

(assert (=> b!4353951 (=> (not res!1789126) (not e!2709464))))

(declare-fun lt!1566898 () tuple2!48292)

(declare-fun lt!1566895 () tuple2!48290)

(declare-datatypes ((ListMap!2187 0))(
  ( (ListMap!2188 (toList!2944 List!49029)) )
))
(declare-fun lt!1566896 () ListMap!2187)

(declare-fun eq!250 (ListMap!2187 ListMap!2187) Bool)

(declare-fun extractMap!539 (List!49030) ListMap!2187)

(declare-fun +!617 (ListLongMap!1593 tuple2!48292) ListLongMap!1593)

(declare-fun +!618 (ListMap!2187 tuple2!48290) ListMap!2187)

(assert (=> b!4353951 (= res!1789126 (eq!250 (extractMap!539 (toList!2943 (+!617 lt!1566886 lt!1566898))) (+!618 lt!1566896 lt!1566895)))))

(declare-datatypes ((Unit!71364 0))(
  ( (Unit!71365) )
))
(declare-fun lt!1566892 () Unit!71364)

(declare-fun newBucket!200 () List!49029)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4872 0))(
  ( (HashableExt!4871 (__x!30575 Int)) )
))
(declare-fun hashF!1247 () Hashable!4872)

(declare-fun key!3918 () K!10268)

(declare-fun newValue!99 () V!10514)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!84 (ListLongMap!1593 (_ BitVec 64) List!49029 K!10268 V!10514 Hashable!4872) Unit!71364)

(assert (=> b!4353951 (= lt!1566892 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!84 lt!1566886 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11093 (ListMap!2187 K!10268) Bool)

(assert (=> b!4353951 (contains!11093 lt!1566896 key!3918)))

(assert (=> b!4353951 (= lt!1566896 (extractMap!539 (toList!2943 lt!1566886)))))

(declare-fun lm!1707 () ListLongMap!1593)

(declare-fun tail!6980 (ListLongMap!1593) ListLongMap!1593)

(assert (=> b!4353951 (= lt!1566886 (tail!6980 lm!1707))))

(declare-fun lt!1566893 () ListMap!2187)

(assert (=> b!4353951 (contains!11093 lt!1566893 key!3918)))

(declare-fun lt!1566894 () Unit!71364)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!23 (List!49029 K!10268 V!10514 ListMap!2187) Unit!71364)

(assert (=> b!4353951 (= lt!1566894 (lemmaAddToMapContainsAndNotInListThenInAcc!23 (_2!27440 (h!54449 (toList!2943 lm!1707))) key!3918 newValue!99 lt!1566893))))

(assert (=> b!4353951 (= lt!1566893 (extractMap!539 (t!355950 (toList!2943 lm!1707))))))

(declare-fun e!2709466 () Bool)

(assert (=> b!4353951 e!2709466))

(declare-fun res!1789122 () Bool)

(assert (=> b!4353951 (=> (not res!1789122) (not e!2709466))))

(declare-fun containsKey!666 (List!49029 K!10268) Bool)

(declare-fun apply!11332 (ListLongMap!1593 (_ BitVec 64)) List!49029)

(assert (=> b!4353951 (= res!1789122 (not (containsKey!666 (apply!11332 lm!1707 (_1!27440 (h!54449 (toList!2943 lm!1707)))) key!3918)))))

(declare-fun lt!1566890 () Unit!71364)

(declare-fun lemmaNotSameHashThenCannotContainKey!27 (ListLongMap!1593 K!10268 (_ BitVec 64) Hashable!4872) Unit!71364)

(assert (=> b!4353951 (= lt!1566890 (lemmaNotSameHashThenCannotContainKey!27 lm!1707 key!3918 (_1!27440 (h!54449 (toList!2943 lm!1707))) hashF!1247))))

(declare-fun tp!1329997 () Bool)

(declare-fun b!4353952 () Bool)

(declare-fun e!2709462 () Bool)

(declare-fun tp_is_empty!25159 () Bool)

(declare-fun tp_is_empty!25157 () Bool)

(assert (=> b!4353952 (= e!2709462 (and tp_is_empty!25157 tp_is_empty!25159 tp!1329997))))

(declare-fun b!4353953 () Bool)

(declare-fun res!1789120 () Bool)

(declare-fun e!2709465 () Bool)

(assert (=> b!4353953 (=> (not res!1789120) (not e!2709465))))

(declare-fun allKeysSameHashInMap!584 (ListLongMap!1593 Hashable!4872) Bool)

(assert (=> b!4353953 (= res!1789120 (allKeysSameHashInMap!584 lm!1707 hashF!1247))))

(declare-fun b!4353954 () Bool)

(assert (=> b!4353954 (= e!2709466 (not (containsKey!666 (_2!27440 (h!54449 (toList!2943 lm!1707))) key!3918)))))

(declare-fun b!4353955 () Bool)

(declare-fun e!2709459 () Bool)

(assert (=> b!4353955 (= e!2709465 (not e!2709459))))

(declare-fun res!1789123 () Bool)

(assert (=> b!4353955 (=> res!1789123 e!2709459)))

(declare-fun lt!1566888 () List!49029)

(declare-fun removePairForKey!450 (List!49029 K!10268) List!49029)

(assert (=> b!4353955 (= res!1789123 (not (= newBucket!200 (Cons!48905 lt!1566895 (removePairForKey!450 lt!1566888 key!3918)))))))

(assert (=> b!4353955 (= lt!1566895 (tuple2!48291 key!3918 newValue!99))))

(declare-fun lt!1566891 () tuple2!48292)

(declare-fun lt!1566897 () Unit!71364)

(declare-fun forallContained!1746 (List!49030 Int tuple2!48292) Unit!71364)

(assert (=> b!4353955 (= lt!1566897 (forallContained!1746 (toList!2943 lm!1707) lambda!139956 lt!1566891))))

(declare-fun contains!11094 (List!49030 tuple2!48292) Bool)

(assert (=> b!4353955 (contains!11094 (toList!2943 lm!1707) lt!1566891)))

(assert (=> b!4353955 (= lt!1566891 (tuple2!48293 hash!377 lt!1566888))))

(declare-fun lt!1566885 () Unit!71364)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!327 (List!49030 (_ BitVec 64) List!49029) Unit!71364)

(assert (=> b!4353955 (= lt!1566885 (lemmaGetValueByKeyImpliesContainsTuple!327 (toList!2943 lm!1707) hash!377 lt!1566888))))

(assert (=> b!4353955 (= lt!1566888 (apply!11332 lm!1707 hash!377))))

(declare-fun b!4353956 () Bool)

(declare-fun res!1789129 () Bool)

(assert (=> b!4353956 (=> (not res!1789129) (not e!2709465))))

(declare-fun contains!11095 (ListLongMap!1593 (_ BitVec 64)) Bool)

(assert (=> b!4353956 (= res!1789129 (contains!11095 lm!1707 hash!377))))

(declare-fun res!1789121 () Bool)

(assert (=> start!421078 (=> (not res!1789121) (not e!2709465))))

(assert (=> start!421078 (= res!1789121 (forall!9101 (toList!2943 lm!1707) lambda!139956))))

(assert (=> start!421078 e!2709465))

(assert (=> start!421078 e!2709462))

(assert (=> start!421078 true))

(declare-fun inv!64455 (ListLongMap!1593) Bool)

(assert (=> start!421078 (and (inv!64455 lm!1707) e!2709461)))

(assert (=> start!421078 tp_is_empty!25157))

(assert (=> start!421078 tp_is_empty!25159))

(declare-fun b!4353957 () Bool)

(declare-fun res!1789125 () Bool)

(assert (=> b!4353957 (=> (not res!1789125) (not e!2709465))))

(declare-fun allKeysSameHash!438 (List!49029 (_ BitVec 64) Hashable!4872) Bool)

(assert (=> b!4353957 (= res!1789125 (allKeysSameHash!438 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4353958 () Bool)

(assert (=> b!4353958 (= e!2709459 e!2709460)))

(declare-fun res!1789128 () Bool)

(assert (=> b!4353958 (=> res!1789128 e!2709460)))

(assert (=> b!4353958 (= res!1789128 (or (and (is-Cons!48906 (toList!2943 lm!1707)) (= (_1!27440 (h!54449 (toList!2943 lm!1707))) hash!377)) (not (is-Cons!48906 (toList!2943 lm!1707))) (= (_1!27440 (h!54449 (toList!2943 lm!1707))) hash!377)))))

(assert (=> b!4353958 e!2709463))

(declare-fun res!1789130 () Bool)

(assert (=> b!4353958 (=> (not res!1789130) (not e!2709463))))

(assert (=> b!4353958 (= res!1789130 (forall!9101 (toList!2943 lt!1566887) lambda!139956))))

(assert (=> b!4353958 (= lt!1566887 (+!617 lm!1707 lt!1566898))))

(assert (=> b!4353958 (= lt!1566898 (tuple2!48293 hash!377 newBucket!200))))

(declare-fun lt!1566889 () Unit!71364)

(declare-fun addValidProp!134 (ListLongMap!1593 Int (_ BitVec 64) List!49029) Unit!71364)

(assert (=> b!4353958 (= lt!1566889 (addValidProp!134 lm!1707 lambda!139956 hash!377 newBucket!200))))

(assert (=> b!4353958 (forall!9101 (toList!2943 lm!1707) lambda!139956)))

(declare-fun b!4353959 () Bool)

(declare-fun head!9031 (ListLongMap!1593) tuple2!48292)

(assert (=> b!4353959 (= e!2709464 (not (= (head!9031 lm!1707) lt!1566898)))))

(declare-fun b!4353960 () Bool)

(declare-fun res!1789124 () Bool)

(assert (=> b!4353960 (=> (not res!1789124) (not e!2709465))))

(assert (=> b!4353960 (= res!1789124 (contains!11093 (extractMap!539 (toList!2943 lm!1707)) key!3918))))

(declare-fun b!4353961 () Bool)

(declare-fun res!1789127 () Bool)

(assert (=> b!4353961 (=> res!1789127 e!2709459)))

(declare-fun noDuplicateKeys!480 (List!49029) Bool)

(assert (=> b!4353961 (= res!1789127 (not (noDuplicateKeys!480 newBucket!200)))))

(declare-fun b!4353962 () Bool)

(declare-fun res!1789131 () Bool)

(assert (=> b!4353962 (=> (not res!1789131) (not e!2709465))))

(declare-fun hash!1520 (Hashable!4872 K!10268) (_ BitVec 64))

(assert (=> b!4353962 (= res!1789131 (= (hash!1520 hashF!1247 key!3918) hash!377))))

(assert (= (and start!421078 res!1789121) b!4353953))

(assert (= (and b!4353953 res!1789120) b!4353962))

(assert (= (and b!4353962 res!1789131) b!4353957))

(assert (= (and b!4353957 res!1789125) b!4353960))

(assert (= (and b!4353960 res!1789124) b!4353956))

(assert (= (and b!4353956 res!1789129) b!4353955))

(assert (= (and b!4353955 (not res!1789123)) b!4353961))

(assert (= (and b!4353961 (not res!1789127)) b!4353958))

(assert (= (and b!4353958 res!1789130) b!4353949))

(assert (= (and b!4353958 (not res!1789128)) b!4353951))

(assert (= (and b!4353951 res!1789122) b!4353954))

(assert (= (and b!4353951 res!1789126) b!4353959))

(assert (= (and start!421078 (is-Cons!48905 newBucket!200)) b!4353952))

(assert (= start!421078 b!4353950))

(declare-fun m!4966141 () Bool)

(assert (=> start!421078 m!4966141))

(declare-fun m!4966143 () Bool)

(assert (=> start!421078 m!4966143))

(declare-fun m!4966145 () Bool)

(assert (=> b!4353958 m!4966145))

(declare-fun m!4966147 () Bool)

(assert (=> b!4353958 m!4966147))

(declare-fun m!4966149 () Bool)

(assert (=> b!4353958 m!4966149))

(assert (=> b!4353958 m!4966141))

(assert (=> b!4353949 m!4966145))

(declare-fun m!4966151 () Bool)

(assert (=> b!4353953 m!4966151))

(declare-fun m!4966153 () Bool)

(assert (=> b!4353954 m!4966153))

(declare-fun m!4966155 () Bool)

(assert (=> b!4353959 m!4966155))

(declare-fun m!4966157 () Bool)

(assert (=> b!4353951 m!4966157))

(declare-fun m!4966159 () Bool)

(assert (=> b!4353951 m!4966159))

(declare-fun m!4966161 () Bool)

(assert (=> b!4353951 m!4966161))

(declare-fun m!4966163 () Bool)

(assert (=> b!4353951 m!4966163))

(declare-fun m!4966165 () Bool)

(assert (=> b!4353951 m!4966165))

(declare-fun m!4966167 () Bool)

(assert (=> b!4353951 m!4966167))

(declare-fun m!4966169 () Bool)

(assert (=> b!4353951 m!4966169))

(assert (=> b!4353951 m!4966165))

(declare-fun m!4966171 () Bool)

(assert (=> b!4353951 m!4966171))

(declare-fun m!4966173 () Bool)

(assert (=> b!4353951 m!4966173))

(declare-fun m!4966175 () Bool)

(assert (=> b!4353951 m!4966175))

(assert (=> b!4353951 m!4966171))

(declare-fun m!4966177 () Bool)

(assert (=> b!4353951 m!4966177))

(declare-fun m!4966179 () Bool)

(assert (=> b!4353951 m!4966179))

(assert (=> b!4353951 m!4966179))

(declare-fun m!4966181 () Bool)

(assert (=> b!4353951 m!4966181))

(declare-fun m!4966183 () Bool)

(assert (=> b!4353951 m!4966183))

(declare-fun m!4966185 () Bool)

(assert (=> b!4353951 m!4966185))

(declare-fun m!4966187 () Bool)

(assert (=> b!4353957 m!4966187))

(declare-fun m!4966189 () Bool)

(assert (=> b!4353955 m!4966189))

(declare-fun m!4966191 () Bool)

(assert (=> b!4353955 m!4966191))

(declare-fun m!4966193 () Bool)

(assert (=> b!4353955 m!4966193))

(declare-fun m!4966195 () Bool)

(assert (=> b!4353955 m!4966195))

(declare-fun m!4966197 () Bool)

(assert (=> b!4353955 m!4966197))

(declare-fun m!4966199 () Bool)

(assert (=> b!4353962 m!4966199))

(declare-fun m!4966201 () Bool)

(assert (=> b!4353956 m!4966201))

(declare-fun m!4966203 () Bool)

(assert (=> b!4353960 m!4966203))

(assert (=> b!4353960 m!4966203))

(declare-fun m!4966205 () Bool)

(assert (=> b!4353960 m!4966205))

(declare-fun m!4966207 () Bool)

(assert (=> b!4353961 m!4966207))

(push 1)

(assert (not b!4353953))

(assert (not b!4353959))

(assert (not b!4353956))

(assert (not b!4353958))

(assert (not start!421078))

(assert (not b!4353950))

(assert (not b!4353960))

(assert (not b!4353951))

(assert tp_is_empty!25157)

(assert (not b!4353961))

(assert (not b!4353957))

(assert (not b!4353952))

(assert (not b!4353954))

(assert (not b!4353955))

(assert (not b!4353949))

(assert tp_is_empty!25159)

(assert (not b!4353962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1286626 () Bool)

(declare-fun res!1789172 () Bool)

(declare-fun e!2709495 () Bool)

(assert (=> d!1286626 (=> res!1789172 e!2709495)))

(assert (=> d!1286626 (= res!1789172 (not (is-Cons!48905 newBucket!200)))))

(assert (=> d!1286626 (= (noDuplicateKeys!480 newBucket!200) e!2709495)))

(declare-fun b!4354009 () Bool)

(declare-fun e!2709496 () Bool)

(assert (=> b!4354009 (= e!2709495 e!2709496)))

(declare-fun res!1789173 () Bool)

(assert (=> b!4354009 (=> (not res!1789173) (not e!2709496))))

(assert (=> b!4354009 (= res!1789173 (not (containsKey!666 (t!355949 newBucket!200) (_1!27439 (h!54448 newBucket!200)))))))

(declare-fun b!4354010 () Bool)

(assert (=> b!4354010 (= e!2709496 (noDuplicateKeys!480 (t!355949 newBucket!200)))))

(assert (= (and d!1286626 (not res!1789172)) b!4354009))

(assert (= (and b!4354009 res!1789173) b!4354010))

(declare-fun m!4966277 () Bool)

(assert (=> b!4354009 m!4966277))

(declare-fun m!4966279 () Bool)

(assert (=> b!4354010 m!4966279))

(assert (=> b!4353961 d!1286626))

(declare-fun d!1286628 () Bool)

(declare-fun res!1789178 () Bool)

(declare-fun e!2709501 () Bool)

(assert (=> d!1286628 (=> res!1789178 e!2709501)))

(assert (=> d!1286628 (= res!1789178 (is-Nil!48906 (toList!2943 lm!1707)))))

(assert (=> d!1286628 (= (forall!9101 (toList!2943 lm!1707) lambda!139956) e!2709501)))

(declare-fun b!4354015 () Bool)

(declare-fun e!2709502 () Bool)

(assert (=> b!4354015 (= e!2709501 e!2709502)))

(declare-fun res!1789179 () Bool)

(assert (=> b!4354015 (=> (not res!1789179) (not e!2709502))))

(declare-fun dynLambda!20624 (Int tuple2!48292) Bool)

(assert (=> b!4354015 (= res!1789179 (dynLambda!20624 lambda!139956 (h!54449 (toList!2943 lm!1707))))))

(declare-fun b!4354016 () Bool)

(assert (=> b!4354016 (= e!2709502 (forall!9101 (t!355950 (toList!2943 lm!1707)) lambda!139956))))

(assert (= (and d!1286628 (not res!1789178)) b!4354015))

(assert (= (and b!4354015 res!1789179) b!4354016))

(declare-fun b_lambda!130875 () Bool)

(assert (=> (not b_lambda!130875) (not b!4354015)))

(declare-fun m!4966281 () Bool)

(assert (=> b!4354015 m!4966281))

(declare-fun m!4966283 () Bool)

(assert (=> b!4354016 m!4966283))

(assert (=> start!421078 d!1286628))

(declare-fun d!1286630 () Bool)

(declare-fun isStrictlySorted!95 (List!49030) Bool)

(assert (=> d!1286630 (= (inv!64455 lm!1707) (isStrictlySorted!95 (toList!2943 lm!1707)))))

(declare-fun bs!630272 () Bool)

(assert (= bs!630272 d!1286630))

(declare-fun m!4966285 () Bool)

(assert (=> bs!630272 m!4966285))

(assert (=> start!421078 d!1286630))

(declare-fun b!4354038 () Bool)

(declare-fun e!2709519 () Unit!71364)

(declare-fun Unit!71368 () Unit!71364)

(assert (=> b!4354038 (= e!2709519 Unit!71368)))

(declare-fun b!4354039 () Bool)

(declare-datatypes ((List!49033 0))(
  ( (Nil!48909) (Cons!48909 (h!54454 K!10268) (t!355953 List!49033)) )
))
(declare-fun e!2709518 () List!49033)

(declare-fun keys!16511 (ListMap!2187) List!49033)

(assert (=> b!4354039 (= e!2709518 (keys!16511 (extractMap!539 (toList!2943 lm!1707))))))

(declare-fun b!4354040 () Bool)

(declare-fun e!2709521 () Bool)

(declare-fun e!2709517 () Bool)

(assert (=> b!4354040 (= e!2709521 e!2709517)))

(declare-fun res!1789189 () Bool)

(assert (=> b!4354040 (=> (not res!1789189) (not e!2709517))))

(declare-datatypes ((Option!10450 0))(
  ( (None!10449) (Some!10449 (v!43303 V!10514)) )
))
(declare-fun isDefined!7745 (Option!10450) Bool)

(declare-fun getValueByKey!436 (List!49029 K!10268) Option!10450)

(assert (=> b!4354040 (= res!1789189 (isDefined!7745 (getValueByKey!436 (toList!2944 (extractMap!539 (toList!2943 lm!1707))) key!3918)))))

(declare-fun b!4354041 () Bool)

(declare-fun e!2709520 () Unit!71364)

(assert (=> b!4354041 (= e!2709520 e!2709519)))

(declare-fun c!740228 () Bool)

(declare-fun call!302594 () Bool)

(assert (=> b!4354041 (= c!740228 call!302594)))

(declare-fun b!4354042 () Bool)

(declare-fun e!2709522 () Bool)

(declare-fun contains!11099 (List!49033 K!10268) Bool)

(assert (=> b!4354042 (= e!2709522 (not (contains!11099 (keys!16511 (extractMap!539 (toList!2943 lm!1707))) key!3918)))))

(declare-fun b!4354043 () Bool)

(declare-fun getKeysList!117 (List!49029) List!49033)

(assert (=> b!4354043 (= e!2709518 (getKeysList!117 (toList!2944 (extractMap!539 (toList!2943 lm!1707)))))))

(declare-fun b!4354044 () Bool)

(declare-fun lt!1566962 () Unit!71364)

(assert (=> b!4354044 (= e!2709520 lt!1566962)))

(declare-fun lt!1566959 () Unit!71364)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!348 (List!49029 K!10268) Unit!71364)

(assert (=> b!4354044 (= lt!1566959 (lemmaContainsKeyImpliesGetValueByKeyDefined!348 (toList!2944 (extractMap!539 (toList!2943 lm!1707))) key!3918))))

(assert (=> b!4354044 (isDefined!7745 (getValueByKey!436 (toList!2944 (extractMap!539 (toList!2943 lm!1707))) key!3918))))

(declare-fun lt!1566965 () Unit!71364)

(assert (=> b!4354044 (= lt!1566965 lt!1566959)))

(declare-fun lemmaInListThenGetKeysListContains!114 (List!49029 K!10268) Unit!71364)

(assert (=> b!4354044 (= lt!1566962 (lemmaInListThenGetKeysListContains!114 (toList!2944 (extractMap!539 (toList!2943 lm!1707))) key!3918))))

(assert (=> b!4354044 call!302594))

(declare-fun d!1286632 () Bool)

(assert (=> d!1286632 e!2709521))

(declare-fun res!1789190 () Bool)

(assert (=> d!1286632 (=> res!1789190 e!2709521)))

(assert (=> d!1286632 (= res!1789190 e!2709522)))

(declare-fun res!1789188 () Bool)

(assert (=> d!1286632 (=> (not res!1789188) (not e!2709522))))

(declare-fun lt!1566964 () Bool)

(assert (=> d!1286632 (= res!1789188 (not lt!1566964))))

(declare-fun lt!1566960 () Bool)

(assert (=> d!1286632 (= lt!1566964 lt!1566960)))

(declare-fun lt!1566961 () Unit!71364)

(assert (=> d!1286632 (= lt!1566961 e!2709520)))

(declare-fun c!740229 () Bool)

(assert (=> d!1286632 (= c!740229 lt!1566960)))

(declare-fun containsKey!668 (List!49029 K!10268) Bool)

(assert (=> d!1286632 (= lt!1566960 (containsKey!668 (toList!2944 (extractMap!539 (toList!2943 lm!1707))) key!3918))))

(assert (=> d!1286632 (= (contains!11093 (extractMap!539 (toList!2943 lm!1707)) key!3918) lt!1566964)))

(declare-fun b!4354037 () Bool)

(assert (=> b!4354037 (= e!2709517 (contains!11099 (keys!16511 (extractMap!539 (toList!2943 lm!1707))) key!3918))))

(declare-fun bm!302589 () Bool)

(assert (=> bm!302589 (= call!302594 (contains!11099 e!2709518 key!3918))))

(declare-fun c!740227 () Bool)

(assert (=> bm!302589 (= c!740227 c!740229)))

(declare-fun b!4354045 () Bool)

(assert (=> b!4354045 false))

(declare-fun lt!1566966 () Unit!71364)

(declare-fun lt!1566963 () Unit!71364)

(assert (=> b!4354045 (= lt!1566966 lt!1566963)))

(assert (=> b!4354045 (containsKey!668 (toList!2944 (extractMap!539 (toList!2943 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!115 (List!49029 K!10268) Unit!71364)

(assert (=> b!4354045 (= lt!1566963 (lemmaInGetKeysListThenContainsKey!115 (toList!2944 (extractMap!539 (toList!2943 lm!1707))) key!3918))))

(declare-fun Unit!71369 () Unit!71364)

(assert (=> b!4354045 (= e!2709519 Unit!71369)))

(assert (= (and d!1286632 c!740229) b!4354044))

(assert (= (and d!1286632 (not c!740229)) b!4354041))

(assert (= (and b!4354041 c!740228) b!4354045))

(assert (= (and b!4354041 (not c!740228)) b!4354038))

(assert (= (or b!4354044 b!4354041) bm!302589))

(assert (= (and bm!302589 c!740227) b!4354043))

(assert (= (and bm!302589 (not c!740227)) b!4354039))

(assert (= (and d!1286632 res!1789188) b!4354042))

(assert (= (and d!1286632 (not res!1789190)) b!4354040))

(assert (= (and b!4354040 res!1789189) b!4354037))

(declare-fun m!4966291 () Bool)

(assert (=> b!4354045 m!4966291))

(declare-fun m!4966293 () Bool)

(assert (=> b!4354045 m!4966293))

(assert (=> d!1286632 m!4966291))

(assert (=> b!4354042 m!4966203))

(declare-fun m!4966295 () Bool)

(assert (=> b!4354042 m!4966295))

(assert (=> b!4354042 m!4966295))

(declare-fun m!4966299 () Bool)

(assert (=> b!4354042 m!4966299))

(declare-fun m!4966301 () Bool)

(assert (=> b!4354040 m!4966301))

(assert (=> b!4354040 m!4966301))

(declare-fun m!4966305 () Bool)

(assert (=> b!4354040 m!4966305))

(assert (=> b!4354037 m!4966203))

(assert (=> b!4354037 m!4966295))

(assert (=> b!4354037 m!4966295))

(assert (=> b!4354037 m!4966299))

(declare-fun m!4966309 () Bool)

(assert (=> b!4354043 m!4966309))

(declare-fun m!4966311 () Bool)

(assert (=> b!4354044 m!4966311))

(assert (=> b!4354044 m!4966301))

(assert (=> b!4354044 m!4966301))

(assert (=> b!4354044 m!4966305))

(declare-fun m!4966313 () Bool)

(assert (=> b!4354044 m!4966313))

(assert (=> b!4354039 m!4966203))

(assert (=> b!4354039 m!4966295))

(declare-fun m!4966315 () Bool)

(assert (=> bm!302589 m!4966315))

(assert (=> b!4353960 d!1286632))

(declare-fun bs!630274 () Bool)

(declare-fun d!1286640 () Bool)

(assert (= bs!630274 (and d!1286640 start!421078)))

(declare-fun lambda!139972 () Int)

(assert (=> bs!630274 (= lambda!139972 lambda!139956)))

(declare-fun lt!1566973 () ListMap!2187)

(declare-fun invariantList!669 (List!49029) Bool)

(assert (=> d!1286640 (invariantList!669 (toList!2944 lt!1566973))))

(declare-fun e!2709532 () ListMap!2187)

(assert (=> d!1286640 (= lt!1566973 e!2709532)))

(declare-fun c!740232 () Bool)

(assert (=> d!1286640 (= c!740232 (is-Cons!48906 (toList!2943 lm!1707)))))

(assert (=> d!1286640 (forall!9101 (toList!2943 lm!1707) lambda!139972)))

(assert (=> d!1286640 (= (extractMap!539 (toList!2943 lm!1707)) lt!1566973)))

(declare-fun b!4354057 () Bool)

(declare-fun addToMapMapFromBucket!176 (List!49029 ListMap!2187) ListMap!2187)

(assert (=> b!4354057 (= e!2709532 (addToMapMapFromBucket!176 (_2!27440 (h!54449 (toList!2943 lm!1707))) (extractMap!539 (t!355950 (toList!2943 lm!1707)))))))

(declare-fun b!4354058 () Bool)

(assert (=> b!4354058 (= e!2709532 (ListMap!2188 Nil!48905))))

(assert (= (and d!1286640 c!740232) b!4354057))

(assert (= (and d!1286640 (not c!740232)) b!4354058))

(declare-fun m!4966323 () Bool)

(assert (=> d!1286640 m!4966323))

(declare-fun m!4966325 () Bool)

(assert (=> d!1286640 m!4966325))

(assert (=> b!4354057 m!4966161))

(assert (=> b!4354057 m!4966161))

(declare-fun m!4966327 () Bool)

(assert (=> b!4354057 m!4966327))

(assert (=> b!4353960 d!1286640))

(declare-fun d!1286644 () Bool)

(declare-fun res!1789200 () Bool)

(declare-fun e!2709535 () Bool)

(assert (=> d!1286644 (=> res!1789200 e!2709535)))

(assert (=> d!1286644 (= res!1789200 (is-Nil!48906 (toList!2943 lt!1566887)))))

(assert (=> d!1286644 (= (forall!9101 (toList!2943 lt!1566887) lambda!139956) e!2709535)))

(declare-fun b!4354061 () Bool)

(declare-fun e!2709536 () Bool)

(assert (=> b!4354061 (= e!2709535 e!2709536)))

(declare-fun res!1789201 () Bool)

(assert (=> b!4354061 (=> (not res!1789201) (not e!2709536))))

(assert (=> b!4354061 (= res!1789201 (dynLambda!20624 lambda!139956 (h!54449 (toList!2943 lt!1566887))))))

(declare-fun b!4354062 () Bool)

(assert (=> b!4354062 (= e!2709536 (forall!9101 (t!355950 (toList!2943 lt!1566887)) lambda!139956))))

(assert (= (and d!1286644 (not res!1789200)) b!4354061))

(assert (= (and b!4354061 res!1789201) b!4354062))

(declare-fun b_lambda!130877 () Bool)

(assert (=> (not b_lambda!130877) (not b!4354061)))

(declare-fun m!4966329 () Bool)

(assert (=> b!4354061 m!4966329))

(declare-fun m!4966331 () Bool)

(assert (=> b!4354062 m!4966331))

(assert (=> b!4353949 d!1286644))

(declare-fun d!1286646 () Bool)

(declare-fun head!9033 (List!49030) tuple2!48292)

(assert (=> d!1286646 (= (head!9031 lm!1707) (head!9033 (toList!2943 lm!1707)))))

(declare-fun bs!630275 () Bool)

(assert (= bs!630275 d!1286646))

(declare-fun m!4966333 () Bool)

(assert (=> bs!630275 m!4966333))

(assert (=> b!4353959 d!1286646))

(assert (=> b!4353958 d!1286644))

(declare-fun d!1286648 () Bool)

(declare-fun e!2709540 () Bool)

(assert (=> d!1286648 e!2709540))

(declare-fun res!1789208 () Bool)

(assert (=> d!1286648 (=> (not res!1789208) (not e!2709540))))

(declare-fun lt!1566987 () ListLongMap!1593)

(assert (=> d!1286648 (= res!1789208 (contains!11095 lt!1566987 (_1!27440 lt!1566898)))))

(declare-fun lt!1566985 () List!49030)

(assert (=> d!1286648 (= lt!1566987 (ListLongMap!1594 lt!1566985))))

(declare-fun lt!1566988 () Unit!71364)

(declare-fun lt!1566986 () Unit!71364)

(assert (=> d!1286648 (= lt!1566988 lt!1566986)))

(declare-datatypes ((Option!10451 0))(
  ( (None!10450) (Some!10450 (v!43304 List!49029)) )
))
(declare-fun getValueByKey!437 (List!49030 (_ BitVec 64)) Option!10451)

(assert (=> d!1286648 (= (getValueByKey!437 lt!1566985 (_1!27440 lt!1566898)) (Some!10450 (_2!27440 lt!1566898)))))

(declare-fun lemmaContainsTupThenGetReturnValue!211 (List!49030 (_ BitVec 64) List!49029) Unit!71364)

(assert (=> d!1286648 (= lt!1566986 (lemmaContainsTupThenGetReturnValue!211 lt!1566985 (_1!27440 lt!1566898) (_2!27440 lt!1566898)))))

(declare-fun insertStrictlySorted!126 (List!49030 (_ BitVec 64) List!49029) List!49030)

(assert (=> d!1286648 (= lt!1566985 (insertStrictlySorted!126 (toList!2943 lm!1707) (_1!27440 lt!1566898) (_2!27440 lt!1566898)))))

(assert (=> d!1286648 (= (+!617 lm!1707 lt!1566898) lt!1566987)))

(declare-fun b!4354068 () Bool)

(declare-fun res!1789207 () Bool)

(assert (=> b!4354068 (=> (not res!1789207) (not e!2709540))))

(assert (=> b!4354068 (= res!1789207 (= (getValueByKey!437 (toList!2943 lt!1566987) (_1!27440 lt!1566898)) (Some!10450 (_2!27440 lt!1566898))))))

(declare-fun b!4354069 () Bool)

(assert (=> b!4354069 (= e!2709540 (contains!11094 (toList!2943 lt!1566987) lt!1566898))))

(assert (= (and d!1286648 res!1789208) b!4354068))

(assert (= (and b!4354068 res!1789207) b!4354069))

(declare-fun m!4966339 () Bool)

(assert (=> d!1286648 m!4966339))

(declare-fun m!4966341 () Bool)

(assert (=> d!1286648 m!4966341))

(declare-fun m!4966343 () Bool)

(assert (=> d!1286648 m!4966343))

(declare-fun m!4966345 () Bool)

(assert (=> d!1286648 m!4966345))

(declare-fun m!4966347 () Bool)

(assert (=> b!4354068 m!4966347))

(declare-fun m!4966349 () Bool)

(assert (=> b!4354069 m!4966349))

(assert (=> b!4353958 d!1286648))

(declare-fun d!1286652 () Bool)

(assert (=> d!1286652 (forall!9101 (toList!2943 (+!617 lm!1707 (tuple2!48293 hash!377 newBucket!200))) lambda!139956)))

(declare-fun lt!1566994 () Unit!71364)

(declare-fun choose!26837 (ListLongMap!1593 Int (_ BitVec 64) List!49029) Unit!71364)

(assert (=> d!1286652 (= lt!1566994 (choose!26837 lm!1707 lambda!139956 hash!377 newBucket!200))))

(declare-fun e!2709549 () Bool)

(assert (=> d!1286652 e!2709549))

(declare-fun res!1789211 () Bool)

(assert (=> d!1286652 (=> (not res!1789211) (not e!2709549))))

(assert (=> d!1286652 (= res!1789211 (forall!9101 (toList!2943 lm!1707) lambda!139956))))

(assert (=> d!1286652 (= (addValidProp!134 lm!1707 lambda!139956 hash!377 newBucket!200) lt!1566994)))

(declare-fun b!4354085 () Bool)

(assert (=> b!4354085 (= e!2709549 (dynLambda!20624 lambda!139956 (tuple2!48293 hash!377 newBucket!200)))))

(assert (= (and d!1286652 res!1789211) b!4354085))

(declare-fun b_lambda!130881 () Bool)

(assert (=> (not b_lambda!130881) (not b!4354085)))

(declare-fun m!4966357 () Bool)

(assert (=> d!1286652 m!4966357))

(declare-fun m!4966359 () Bool)

(assert (=> d!1286652 m!4966359))

(declare-fun m!4966361 () Bool)

(assert (=> d!1286652 m!4966361))

(assert (=> d!1286652 m!4966141))

(declare-fun m!4966363 () Bool)

(assert (=> b!4354085 m!4966363))

(assert (=> b!4353958 d!1286652))

(assert (=> b!4353958 d!1286628))

(declare-fun d!1286656 () Bool)

(assert (=> d!1286656 true))

(assert (=> d!1286656 true))

(declare-fun lambda!139975 () Int)

(declare-fun forall!9103 (List!49029 Int) Bool)

(assert (=> d!1286656 (= (allKeysSameHash!438 newBucket!200 hash!377 hashF!1247) (forall!9103 newBucket!200 lambda!139975))))

(declare-fun bs!630276 () Bool)

(assert (= bs!630276 d!1286656))

(declare-fun m!4966365 () Bool)

(assert (=> bs!630276 m!4966365))

(assert (=> b!4353957 d!1286656))

(declare-fun d!1286658 () Bool)

(declare-fun e!2709560 () Bool)

(assert (=> d!1286658 e!2709560))

(declare-fun res!1789220 () Bool)

(assert (=> d!1286658 (=> res!1789220 e!2709560)))

(declare-fun lt!1567005 () Bool)

(assert (=> d!1286658 (= res!1789220 (not lt!1567005))))

(declare-fun lt!1567003 () Bool)

(assert (=> d!1286658 (= lt!1567005 lt!1567003)))

(declare-fun lt!1567006 () Unit!71364)

(declare-fun e!2709561 () Unit!71364)

(assert (=> d!1286658 (= lt!1567006 e!2709561)))

(declare-fun c!740241 () Bool)

(assert (=> d!1286658 (= c!740241 lt!1567003)))

(declare-fun containsKey!669 (List!49030 (_ BitVec 64)) Bool)

(assert (=> d!1286658 (= lt!1567003 (containsKey!669 (toList!2943 lm!1707) hash!377))))

(assert (=> d!1286658 (= (contains!11095 lm!1707 hash!377) lt!1567005)))

(declare-fun b!4354102 () Bool)

(declare-fun lt!1567004 () Unit!71364)

(assert (=> b!4354102 (= e!2709561 lt!1567004)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!349 (List!49030 (_ BitVec 64)) Unit!71364)

(assert (=> b!4354102 (= lt!1567004 (lemmaContainsKeyImpliesGetValueByKeyDefined!349 (toList!2943 lm!1707) hash!377))))

(declare-fun isDefined!7746 (Option!10451) Bool)

(assert (=> b!4354102 (isDefined!7746 (getValueByKey!437 (toList!2943 lm!1707) hash!377))))

(declare-fun b!4354103 () Bool)

(declare-fun Unit!71370 () Unit!71364)

(assert (=> b!4354103 (= e!2709561 Unit!71370)))

(declare-fun b!4354104 () Bool)

(assert (=> b!4354104 (= e!2709560 (isDefined!7746 (getValueByKey!437 (toList!2943 lm!1707) hash!377)))))

(assert (= (and d!1286658 c!740241) b!4354102))

(assert (= (and d!1286658 (not c!740241)) b!4354103))

(assert (= (and d!1286658 (not res!1789220)) b!4354104))

(declare-fun m!4966371 () Bool)

(assert (=> d!1286658 m!4966371))

(declare-fun m!4966373 () Bool)

(assert (=> b!4354102 m!4966373))

(declare-fun m!4966375 () Bool)

(assert (=> b!4354102 m!4966375))

(assert (=> b!4354102 m!4966375))

(declare-fun m!4966377 () Bool)

(assert (=> b!4354102 m!4966377))

(assert (=> b!4354104 m!4966375))

(assert (=> b!4354104 m!4966375))

(assert (=> b!4354104 m!4966377))

(assert (=> b!4353956 d!1286658))

(declare-fun b!4354116 () Bool)

(declare-fun e!2709567 () List!49029)

(assert (=> b!4354116 (= e!2709567 Nil!48905)))

(declare-fun b!4354114 () Bool)

(declare-fun e!2709566 () List!49029)

(assert (=> b!4354114 (= e!2709566 e!2709567)))

(declare-fun c!740246 () Bool)

(assert (=> b!4354114 (= c!740246 (is-Cons!48905 lt!1566888))))

(declare-fun b!4354113 () Bool)

(assert (=> b!4354113 (= e!2709566 (t!355949 lt!1566888))))

(declare-fun d!1286662 () Bool)

(declare-fun lt!1567009 () List!49029)

(assert (=> d!1286662 (not (containsKey!666 lt!1567009 key!3918))))

(assert (=> d!1286662 (= lt!1567009 e!2709566)))

(declare-fun c!740247 () Bool)

(assert (=> d!1286662 (= c!740247 (and (is-Cons!48905 lt!1566888) (= (_1!27439 (h!54448 lt!1566888)) key!3918)))))

(assert (=> d!1286662 (noDuplicateKeys!480 lt!1566888)))

(assert (=> d!1286662 (= (removePairForKey!450 lt!1566888 key!3918) lt!1567009)))

(declare-fun b!4354115 () Bool)

(assert (=> b!4354115 (= e!2709567 (Cons!48905 (h!54448 lt!1566888) (removePairForKey!450 (t!355949 lt!1566888) key!3918)))))

(assert (= (and d!1286662 c!740247) b!4354113))

(assert (= (and d!1286662 (not c!740247)) b!4354114))

(assert (= (and b!4354114 c!740246) b!4354115))

(assert (= (and b!4354114 (not c!740246)) b!4354116))

(declare-fun m!4966379 () Bool)

(assert (=> d!1286662 m!4966379))

(declare-fun m!4966381 () Bool)

(assert (=> d!1286662 m!4966381))

(declare-fun m!4966383 () Bool)

(assert (=> b!4354115 m!4966383))

(assert (=> b!4353955 d!1286662))

(declare-fun d!1286664 () Bool)

(declare-fun lt!1567012 () Bool)

(declare-fun content!7701 (List!49030) (Set tuple2!48292))

(assert (=> d!1286664 (= lt!1567012 (set.member lt!1566891 (content!7701 (toList!2943 lm!1707))))))

(declare-fun e!2709572 () Bool)

(assert (=> d!1286664 (= lt!1567012 e!2709572)))

(declare-fun res!1789225 () Bool)

(assert (=> d!1286664 (=> (not res!1789225) (not e!2709572))))

(assert (=> d!1286664 (= res!1789225 (is-Cons!48906 (toList!2943 lm!1707)))))

(assert (=> d!1286664 (= (contains!11094 (toList!2943 lm!1707) lt!1566891) lt!1567012)))

(declare-fun b!4354121 () Bool)

(declare-fun e!2709573 () Bool)

(assert (=> b!4354121 (= e!2709572 e!2709573)))

(declare-fun res!1789226 () Bool)

(assert (=> b!4354121 (=> res!1789226 e!2709573)))

(assert (=> b!4354121 (= res!1789226 (= (h!54449 (toList!2943 lm!1707)) lt!1566891))))

(declare-fun b!4354122 () Bool)

(assert (=> b!4354122 (= e!2709573 (contains!11094 (t!355950 (toList!2943 lm!1707)) lt!1566891))))

(assert (= (and d!1286664 res!1789225) b!4354121))

(assert (= (and b!4354121 (not res!1789226)) b!4354122))

(declare-fun m!4966385 () Bool)

(assert (=> d!1286664 m!4966385))

(declare-fun m!4966387 () Bool)

(assert (=> d!1286664 m!4966387))

(declare-fun m!4966389 () Bool)

(assert (=> b!4354122 m!4966389))

(assert (=> b!4353955 d!1286664))

(declare-fun d!1286666 () Bool)

(assert (=> d!1286666 (dynLambda!20624 lambda!139956 lt!1566891)))

(declare-fun lt!1567023 () Unit!71364)

(declare-fun choose!26838 (List!49030 Int tuple2!48292) Unit!71364)

(assert (=> d!1286666 (= lt!1567023 (choose!26838 (toList!2943 lm!1707) lambda!139956 lt!1566891))))

(declare-fun e!2709578 () Bool)

(assert (=> d!1286666 e!2709578))

(declare-fun res!1789233 () Bool)

(assert (=> d!1286666 (=> (not res!1789233) (not e!2709578))))

(assert (=> d!1286666 (= res!1789233 (forall!9101 (toList!2943 lm!1707) lambda!139956))))

(assert (=> d!1286666 (= (forallContained!1746 (toList!2943 lm!1707) lambda!139956 lt!1566891) lt!1567023)))

(declare-fun b!4354129 () Bool)

(assert (=> b!4354129 (= e!2709578 (contains!11094 (toList!2943 lm!1707) lt!1566891))))

(assert (= (and d!1286666 res!1789233) b!4354129))

(declare-fun b_lambda!130885 () Bool)

(assert (=> (not b_lambda!130885) (not d!1286666)))

(declare-fun m!4966391 () Bool)

(assert (=> d!1286666 m!4966391))

(declare-fun m!4966393 () Bool)

(assert (=> d!1286666 m!4966393))

(assert (=> d!1286666 m!4966141))

(assert (=> b!4354129 m!4966189))

(assert (=> b!4353955 d!1286666))

(declare-fun d!1286668 () Bool)

(assert (=> d!1286668 (contains!11094 (toList!2943 lm!1707) (tuple2!48293 hash!377 lt!1566888))))

(declare-fun lt!1567026 () Unit!71364)

(declare-fun choose!26839 (List!49030 (_ BitVec 64) List!49029) Unit!71364)

(assert (=> d!1286668 (= lt!1567026 (choose!26839 (toList!2943 lm!1707) hash!377 lt!1566888))))

(declare-fun e!2709581 () Bool)

(assert (=> d!1286668 e!2709581))

(declare-fun res!1789236 () Bool)

(assert (=> d!1286668 (=> (not res!1789236) (not e!2709581))))

(assert (=> d!1286668 (= res!1789236 (isStrictlySorted!95 (toList!2943 lm!1707)))))

(assert (=> d!1286668 (= (lemmaGetValueByKeyImpliesContainsTuple!327 (toList!2943 lm!1707) hash!377 lt!1566888) lt!1567026)))

(declare-fun b!4354132 () Bool)

(assert (=> b!4354132 (= e!2709581 (= (getValueByKey!437 (toList!2943 lm!1707) hash!377) (Some!10450 lt!1566888)))))

(assert (= (and d!1286668 res!1789236) b!4354132))

(declare-fun m!4966395 () Bool)

(assert (=> d!1286668 m!4966395))

(declare-fun m!4966397 () Bool)

(assert (=> d!1286668 m!4966397))

(assert (=> d!1286668 m!4966285))

(assert (=> b!4354132 m!4966375))

(assert (=> b!4353955 d!1286668))

(declare-fun d!1286670 () Bool)

(declare-fun get!15882 (Option!10451) List!49029)

(assert (=> d!1286670 (= (apply!11332 lm!1707 hash!377) (get!15882 (getValueByKey!437 (toList!2943 lm!1707) hash!377)))))

(declare-fun bs!630277 () Bool)

(assert (= bs!630277 d!1286670))

(assert (=> bs!630277 m!4966375))

(assert (=> bs!630277 m!4966375))

(declare-fun m!4966403 () Bool)

(assert (=> bs!630277 m!4966403))

(assert (=> b!4353955 d!1286670))

(declare-fun d!1286672 () Bool)

(declare-fun res!1789243 () Bool)

(declare-fun e!2709587 () Bool)

(assert (=> d!1286672 (=> res!1789243 e!2709587)))

(assert (=> d!1286672 (= res!1789243 (and (is-Cons!48905 (_2!27440 (h!54449 (toList!2943 lm!1707)))) (= (_1!27439 (h!54448 (_2!27440 (h!54449 (toList!2943 lm!1707))))) key!3918)))))

(assert (=> d!1286672 (= (containsKey!666 (_2!27440 (h!54449 (toList!2943 lm!1707))) key!3918) e!2709587)))

(declare-fun b!4354139 () Bool)

(declare-fun e!2709588 () Bool)

(assert (=> b!4354139 (= e!2709587 e!2709588)))

(declare-fun res!1789244 () Bool)

(assert (=> b!4354139 (=> (not res!1789244) (not e!2709588))))

(assert (=> b!4354139 (= res!1789244 (is-Cons!48905 (_2!27440 (h!54449 (toList!2943 lm!1707)))))))

(declare-fun b!4354140 () Bool)

(assert (=> b!4354140 (= e!2709588 (containsKey!666 (t!355949 (_2!27440 (h!54449 (toList!2943 lm!1707)))) key!3918))))

(assert (= (and d!1286672 (not res!1789243)) b!4354139))

(assert (= (and b!4354139 res!1789244) b!4354140))

(declare-fun m!4966413 () Bool)

(assert (=> b!4354140 m!4966413))

(assert (=> b!4353954 d!1286672))

(declare-fun bs!630278 () Bool)

(declare-fun d!1286676 () Bool)

(assert (= bs!630278 (and d!1286676 start!421078)))

(declare-fun lambda!139978 () Int)

(assert (=> bs!630278 (not (= lambda!139978 lambda!139956))))

(declare-fun bs!630279 () Bool)

(assert (= bs!630279 (and d!1286676 d!1286640)))

(assert (=> bs!630279 (not (= lambda!139978 lambda!139972))))

(assert (=> d!1286676 true))

(assert (=> d!1286676 (= (allKeysSameHashInMap!584 lm!1707 hashF!1247) (forall!9101 (toList!2943 lm!1707) lambda!139978))))

(declare-fun bs!630280 () Bool)

(assert (= bs!630280 d!1286676))

(declare-fun m!4966415 () Bool)

(assert (=> bs!630280 m!4966415))

(assert (=> b!4353953 d!1286676))

(declare-fun d!1286678 () Bool)

(declare-fun hash!1525 (Hashable!4872 K!10268) (_ BitVec 64))

(assert (=> d!1286678 (= (hash!1520 hashF!1247 key!3918) (hash!1525 hashF!1247 key!3918))))

(declare-fun bs!630281 () Bool)

(assert (= bs!630281 d!1286678))

(declare-fun m!4966417 () Bool)

(assert (=> bs!630281 m!4966417))

(assert (=> b!4353962 d!1286678))

(declare-fun d!1286680 () Bool)

(declare-fun e!2709593 () Bool)

(assert (=> d!1286680 e!2709593))

(declare-fun res!1789251 () Bool)

(assert (=> d!1286680 (=> (not res!1789251) (not e!2709593))))

(declare-fun lt!1567041 () ListMap!2187)

(assert (=> d!1286680 (= res!1789251 (contains!11093 lt!1567041 (_1!27439 lt!1566895)))))

(declare-fun lt!1567042 () List!49029)

(assert (=> d!1286680 (= lt!1567041 (ListMap!2188 lt!1567042))))

(declare-fun lt!1567044 () Unit!71364)

(declare-fun lt!1567043 () Unit!71364)

(assert (=> d!1286680 (= lt!1567044 lt!1567043)))

(assert (=> d!1286680 (= (getValueByKey!436 lt!1567042 (_1!27439 lt!1566895)) (Some!10449 (_2!27439 lt!1566895)))))

(declare-fun lemmaContainsTupThenGetReturnValue!212 (List!49029 K!10268 V!10514) Unit!71364)

(assert (=> d!1286680 (= lt!1567043 (lemmaContainsTupThenGetReturnValue!212 lt!1567042 (_1!27439 lt!1566895) (_2!27439 lt!1566895)))))

(declare-fun insertNoDuplicatedKeys!94 (List!49029 K!10268 V!10514) List!49029)

(assert (=> d!1286680 (= lt!1567042 (insertNoDuplicatedKeys!94 (toList!2944 lt!1566896) (_1!27439 lt!1566895) (_2!27439 lt!1566895)))))

(assert (=> d!1286680 (= (+!618 lt!1566896 lt!1566895) lt!1567041)))

(declare-fun b!4354150 () Bool)

(declare-fun res!1789252 () Bool)

(assert (=> b!4354150 (=> (not res!1789252) (not e!2709593))))

(assert (=> b!4354150 (= res!1789252 (= (getValueByKey!436 (toList!2944 lt!1567041) (_1!27439 lt!1566895)) (Some!10449 (_2!27439 lt!1566895))))))

(declare-fun b!4354151 () Bool)

(declare-fun contains!11100 (List!49029 tuple2!48290) Bool)

(assert (=> b!4354151 (= e!2709593 (contains!11100 (toList!2944 lt!1567041) lt!1566895))))

(assert (= (and d!1286680 res!1789251) b!4354150))

(assert (= (and b!4354150 res!1789252) b!4354151))

(declare-fun m!4966419 () Bool)

(assert (=> d!1286680 m!4966419))

(declare-fun m!4966421 () Bool)

(assert (=> d!1286680 m!4966421))

(declare-fun m!4966423 () Bool)

(assert (=> d!1286680 m!4966423))

(declare-fun m!4966425 () Bool)

(assert (=> d!1286680 m!4966425))

(declare-fun m!4966427 () Bool)

(assert (=> b!4354150 m!4966427))

(declare-fun m!4966429 () Bool)

(assert (=> b!4354151 m!4966429))

(assert (=> b!4353951 d!1286680))

(declare-fun d!1286682 () Bool)

(declare-fun res!1789253 () Bool)

(declare-fun e!2709594 () Bool)

(assert (=> d!1286682 (=> res!1789253 e!2709594)))

(assert (=> d!1286682 (= res!1789253 (is-Nil!48906 (toList!2943 lt!1566886)))))

(assert (=> d!1286682 (= (forall!9101 (toList!2943 lt!1566886) lambda!139956) e!2709594)))

(declare-fun b!4354152 () Bool)

(declare-fun e!2709595 () Bool)

(assert (=> b!4354152 (= e!2709594 e!2709595)))

(declare-fun res!1789254 () Bool)

(assert (=> b!4354152 (=> (not res!1789254) (not e!2709595))))

(assert (=> b!4354152 (= res!1789254 (dynLambda!20624 lambda!139956 (h!54449 (toList!2943 lt!1566886))))))

(declare-fun b!4354153 () Bool)

(assert (=> b!4354153 (= e!2709595 (forall!9101 (t!355950 (toList!2943 lt!1566886)) lambda!139956))))

(assert (= (and d!1286682 (not res!1789253)) b!4354152))

(assert (= (and b!4354152 res!1789254) b!4354153))

(declare-fun b_lambda!130887 () Bool)

(assert (=> (not b_lambda!130887) (not b!4354152)))

(declare-fun m!4966431 () Bool)

(assert (=> b!4354152 m!4966431))

(declare-fun m!4966433 () Bool)

(assert (=> b!4354153 m!4966433))

(assert (=> b!4353951 d!1286682))

(declare-fun d!1286684 () Bool)

(assert (=> d!1286684 (= (apply!11332 lm!1707 (_1!27440 (h!54449 (toList!2943 lm!1707)))) (get!15882 (getValueByKey!437 (toList!2943 lm!1707) (_1!27440 (h!54449 (toList!2943 lm!1707))))))))

(declare-fun bs!630282 () Bool)

(assert (= bs!630282 d!1286684))

(declare-fun m!4966435 () Bool)

(assert (=> bs!630282 m!4966435))

(assert (=> bs!630282 m!4966435))

(declare-fun m!4966437 () Bool)

(assert (=> bs!630282 m!4966437))

(assert (=> b!4353951 d!1286684))

(declare-fun bs!630283 () Bool)

(declare-fun d!1286686 () Bool)

(assert (= bs!630283 (and d!1286686 start!421078)))

(declare-fun lambda!139979 () Int)

(assert (=> bs!630283 (= lambda!139979 lambda!139956)))

(declare-fun bs!630284 () Bool)

(assert (= bs!630284 (and d!1286686 d!1286640)))

(assert (=> bs!630284 (= lambda!139979 lambda!139972)))

(declare-fun bs!630285 () Bool)

(assert (= bs!630285 (and d!1286686 d!1286676)))

(assert (=> bs!630285 (not (= lambda!139979 lambda!139978))))

(declare-fun lt!1567046 () ListMap!2187)

(assert (=> d!1286686 (invariantList!669 (toList!2944 lt!1567046))))

(declare-fun e!2709597 () ListMap!2187)

(assert (=> d!1286686 (= lt!1567046 e!2709597)))

(declare-fun c!740248 () Bool)

(assert (=> d!1286686 (= c!740248 (is-Cons!48906 (toList!2943 lt!1566886)))))

(assert (=> d!1286686 (forall!9101 (toList!2943 lt!1566886) lambda!139979)))

(assert (=> d!1286686 (= (extractMap!539 (toList!2943 lt!1566886)) lt!1567046)))

(declare-fun b!4354155 () Bool)

(assert (=> b!4354155 (= e!2709597 (addToMapMapFromBucket!176 (_2!27440 (h!54449 (toList!2943 lt!1566886))) (extractMap!539 (t!355950 (toList!2943 lt!1566886)))))))

(declare-fun b!4354156 () Bool)

(assert (=> b!4354156 (= e!2709597 (ListMap!2188 Nil!48905))))

(assert (= (and d!1286686 c!740248) b!4354155))

(assert (= (and d!1286686 (not c!740248)) b!4354156))

(declare-fun m!4966441 () Bool)

(assert (=> d!1286686 m!4966441))

(declare-fun m!4966443 () Bool)

(assert (=> d!1286686 m!4966443))

(declare-fun m!4966445 () Bool)

(assert (=> b!4354155 m!4966445))

(assert (=> b!4354155 m!4966445))

(declare-fun m!4966449 () Bool)

(assert (=> b!4354155 m!4966449))

(assert (=> b!4353951 d!1286686))

(declare-fun bs!630288 () Bool)

(declare-fun d!1286688 () Bool)

(assert (= bs!630288 (and d!1286688 start!421078)))

(declare-fun lambda!139984 () Int)

(assert (=> bs!630288 (= lambda!139984 lambda!139956)))

(declare-fun bs!630289 () Bool)

(assert (= bs!630289 (and d!1286688 d!1286640)))

(assert (=> bs!630289 (= lambda!139984 lambda!139972)))

(declare-fun bs!630290 () Bool)

(assert (= bs!630290 (and d!1286688 d!1286676)))

(assert (=> bs!630290 (not (= lambda!139984 lambda!139978))))

(declare-fun bs!630291 () Bool)

(assert (= bs!630291 (and d!1286688 d!1286686)))

(assert (=> bs!630291 (= lambda!139984 lambda!139979)))

(assert (=> d!1286688 (eq!250 (extractMap!539 (toList!2943 (+!617 lt!1566886 (tuple2!48293 hash!377 newBucket!200)))) (+!618 (extractMap!539 (toList!2943 lt!1566886)) (tuple2!48291 key!3918 newValue!99)))))

(declare-fun lt!1567049 () Unit!71364)

(declare-fun choose!26840 (ListLongMap!1593 (_ BitVec 64) List!49029 K!10268 V!10514 Hashable!4872) Unit!71364)

(assert (=> d!1286688 (= lt!1567049 (choose!26840 lt!1566886 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1286688 (forall!9101 (toList!2943 lt!1566886) lambda!139984)))

(assert (=> d!1286688 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!84 lt!1566886 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1567049)))

(declare-fun bs!630292 () Bool)

(assert (= bs!630292 d!1286688))

(declare-fun m!4966467 () Bool)

(assert (=> bs!630292 m!4966467))

(assert (=> bs!630292 m!4966467))

(declare-fun m!4966469 () Bool)

(assert (=> bs!630292 m!4966469))

(declare-fun m!4966471 () Bool)

(assert (=> bs!630292 m!4966471))

(assert (=> bs!630292 m!4966163))

(assert (=> bs!630292 m!4966163))

(assert (=> bs!630292 m!4966469))

(declare-fun m!4966473 () Bool)

(assert (=> bs!630292 m!4966473))

(declare-fun m!4966475 () Bool)

(assert (=> bs!630292 m!4966475))

(declare-fun m!4966477 () Bool)

(assert (=> bs!630292 m!4966477))

(assert (=> b!4353951 d!1286688))

(declare-fun d!1286700 () Bool)

(declare-fun e!2709606 () Bool)

(assert (=> d!1286700 e!2709606))

(declare-fun res!1789265 () Bool)

(assert (=> d!1286700 (=> (not res!1789265) (not e!2709606))))

(declare-fun lt!1567052 () ListLongMap!1593)

(assert (=> d!1286700 (= res!1789265 (contains!11095 lt!1567052 (_1!27440 lt!1566898)))))

(declare-fun lt!1567050 () List!49030)

(assert (=> d!1286700 (= lt!1567052 (ListLongMap!1594 lt!1567050))))

(declare-fun lt!1567053 () Unit!71364)

(declare-fun lt!1567051 () Unit!71364)

(assert (=> d!1286700 (= lt!1567053 lt!1567051)))

(assert (=> d!1286700 (= (getValueByKey!437 lt!1567050 (_1!27440 lt!1566898)) (Some!10450 (_2!27440 lt!1566898)))))

(assert (=> d!1286700 (= lt!1567051 (lemmaContainsTupThenGetReturnValue!211 lt!1567050 (_1!27440 lt!1566898) (_2!27440 lt!1566898)))))

(assert (=> d!1286700 (= lt!1567050 (insertStrictlySorted!126 (toList!2943 lt!1566886) (_1!27440 lt!1566898) (_2!27440 lt!1566898)))))

(assert (=> d!1286700 (= (+!617 lt!1566886 lt!1566898) lt!1567052)))

(declare-fun b!4354165 () Bool)

(declare-fun res!1789264 () Bool)

(assert (=> b!4354165 (=> (not res!1789264) (not e!2709606))))

(assert (=> b!4354165 (= res!1789264 (= (getValueByKey!437 (toList!2943 lt!1567052) (_1!27440 lt!1566898)) (Some!10450 (_2!27440 lt!1566898))))))

(declare-fun b!4354166 () Bool)

(assert (=> b!4354166 (= e!2709606 (contains!11094 (toList!2943 lt!1567052) lt!1566898))))

(assert (= (and d!1286700 res!1789265) b!4354165))

(assert (= (and b!4354165 res!1789264) b!4354166))

(declare-fun m!4966479 () Bool)

(assert (=> d!1286700 m!4966479))

(declare-fun m!4966481 () Bool)

(assert (=> d!1286700 m!4966481))

(declare-fun m!4966483 () Bool)

(assert (=> d!1286700 m!4966483))

(declare-fun m!4966485 () Bool)

(assert (=> d!1286700 m!4966485))

(declare-fun m!4966487 () Bool)

(assert (=> b!4354165 m!4966487))

(declare-fun m!4966489 () Bool)

(assert (=> b!4354166 m!4966489))

(assert (=> b!4353951 d!1286700))

(declare-fun d!1286702 () Bool)

(declare-fun tail!6982 (List!49030) List!49030)

(assert (=> d!1286702 (= (tail!6980 lm!1707) (ListLongMap!1594 (tail!6982 (toList!2943 lm!1707))))))

(declare-fun bs!630294 () Bool)

(assert (= bs!630294 d!1286702))

(declare-fun m!4966493 () Bool)

(assert (=> bs!630294 m!4966493))

(assert (=> b!4353951 d!1286702))

(declare-fun bs!630295 () Bool)

(declare-fun d!1286706 () Bool)

(assert (= bs!630295 (and d!1286706 d!1286640)))

(declare-fun lambda!139986 () Int)

(assert (=> bs!630295 (= lambda!139986 lambda!139972)))

(declare-fun bs!630296 () Bool)

(assert (= bs!630296 (and d!1286706 d!1286688)))

(assert (=> bs!630296 (= lambda!139986 lambda!139984)))

(declare-fun bs!630297 () Bool)

(assert (= bs!630297 (and d!1286706 d!1286676)))

(assert (=> bs!630297 (not (= lambda!139986 lambda!139978))))

(declare-fun bs!630298 () Bool)

(assert (= bs!630298 (and d!1286706 start!421078)))

(assert (=> bs!630298 (= lambda!139986 lambda!139956)))

(declare-fun bs!630299 () Bool)

(assert (= bs!630299 (and d!1286706 d!1286686)))

(assert (=> bs!630299 (= lambda!139986 lambda!139979)))

(declare-fun lt!1567054 () ListMap!2187)

(assert (=> d!1286706 (invariantList!669 (toList!2944 lt!1567054))))

(declare-fun e!2709607 () ListMap!2187)

(assert (=> d!1286706 (= lt!1567054 e!2709607)))

(declare-fun c!740249 () Bool)

(assert (=> d!1286706 (= c!740249 (is-Cons!48906 (t!355950 (toList!2943 lm!1707))))))

(assert (=> d!1286706 (forall!9101 (t!355950 (toList!2943 lm!1707)) lambda!139986)))

(assert (=> d!1286706 (= (extractMap!539 (t!355950 (toList!2943 lm!1707))) lt!1567054)))

(declare-fun b!4354171 () Bool)

(assert (=> b!4354171 (= e!2709607 (addToMapMapFromBucket!176 (_2!27440 (h!54449 (t!355950 (toList!2943 lm!1707)))) (extractMap!539 (t!355950 (t!355950 (toList!2943 lm!1707))))))))

(declare-fun b!4354172 () Bool)

(assert (=> b!4354172 (= e!2709607 (ListMap!2188 Nil!48905))))

(assert (= (and d!1286706 c!740249) b!4354171))

(assert (= (and d!1286706 (not c!740249)) b!4354172))

(declare-fun m!4966495 () Bool)

(assert (=> d!1286706 m!4966495))

(declare-fun m!4966497 () Bool)

(assert (=> d!1286706 m!4966497))

(declare-fun m!4966499 () Bool)

(assert (=> b!4354171 m!4966499))

(assert (=> b!4354171 m!4966499))

(declare-fun m!4966501 () Bool)

(assert (=> b!4354171 m!4966501))

(assert (=> b!4353951 d!1286706))

(declare-fun d!1286708 () Bool)

(assert (=> d!1286708 (contains!11093 lt!1566893 key!3918)))

(declare-fun lt!1567057 () Unit!71364)

(declare-fun choose!26841 (List!49029 K!10268 V!10514 ListMap!2187) Unit!71364)

(assert (=> d!1286708 (= lt!1567057 (choose!26841 (_2!27440 (h!54449 (toList!2943 lm!1707))) key!3918 newValue!99 lt!1566893))))

(assert (=> d!1286708 (noDuplicateKeys!480 (_2!27440 (h!54449 (toList!2943 lm!1707))))))

(assert (=> d!1286708 (= (lemmaAddToMapContainsAndNotInListThenInAcc!23 (_2!27440 (h!54449 (toList!2943 lm!1707))) key!3918 newValue!99 lt!1566893) lt!1567057)))

(declare-fun bs!630300 () Bool)

(assert (= bs!630300 d!1286708))

(assert (=> bs!630300 m!4966157))

(declare-fun m!4966503 () Bool)

(assert (=> bs!630300 m!4966503))

(declare-fun m!4966505 () Bool)

(assert (=> bs!630300 m!4966505))

(assert (=> b!4353951 d!1286708))

(declare-fun b!4354174 () Bool)

(declare-fun e!2709610 () Unit!71364)

(declare-fun Unit!71371 () Unit!71364)

(assert (=> b!4354174 (= e!2709610 Unit!71371)))

(declare-fun b!4354175 () Bool)

(declare-fun e!2709609 () List!49033)

(assert (=> b!4354175 (= e!2709609 (keys!16511 lt!1566893))))

(declare-fun b!4354176 () Bool)

(declare-fun e!2709612 () Bool)

(declare-fun e!2709608 () Bool)

(assert (=> b!4354176 (= e!2709612 e!2709608)))

(declare-fun res!1789267 () Bool)

(assert (=> b!4354176 (=> (not res!1789267) (not e!2709608))))

(assert (=> b!4354176 (= res!1789267 (isDefined!7745 (getValueByKey!436 (toList!2944 lt!1566893) key!3918)))))

(declare-fun b!4354177 () Bool)

(declare-fun e!2709611 () Unit!71364)

(assert (=> b!4354177 (= e!2709611 e!2709610)))

(declare-fun c!740251 () Bool)

(declare-fun call!302595 () Bool)

(assert (=> b!4354177 (= c!740251 call!302595)))

(declare-fun b!4354178 () Bool)

(declare-fun e!2709613 () Bool)

(assert (=> b!4354178 (= e!2709613 (not (contains!11099 (keys!16511 lt!1566893) key!3918)))))

(declare-fun b!4354179 () Bool)

(assert (=> b!4354179 (= e!2709609 (getKeysList!117 (toList!2944 lt!1566893)))))

(declare-fun b!4354180 () Bool)

(declare-fun lt!1567061 () Unit!71364)

(assert (=> b!4354180 (= e!2709611 lt!1567061)))

(declare-fun lt!1567058 () Unit!71364)

(assert (=> b!4354180 (= lt!1567058 (lemmaContainsKeyImpliesGetValueByKeyDefined!348 (toList!2944 lt!1566893) key!3918))))

(assert (=> b!4354180 (isDefined!7745 (getValueByKey!436 (toList!2944 lt!1566893) key!3918))))

(declare-fun lt!1567064 () Unit!71364)

(assert (=> b!4354180 (= lt!1567064 lt!1567058)))

(assert (=> b!4354180 (= lt!1567061 (lemmaInListThenGetKeysListContains!114 (toList!2944 lt!1566893) key!3918))))

(assert (=> b!4354180 call!302595))

(declare-fun d!1286710 () Bool)

(assert (=> d!1286710 e!2709612))

(declare-fun res!1789268 () Bool)

(assert (=> d!1286710 (=> res!1789268 e!2709612)))

(assert (=> d!1286710 (= res!1789268 e!2709613)))

(declare-fun res!1789266 () Bool)

(assert (=> d!1286710 (=> (not res!1789266) (not e!2709613))))

(declare-fun lt!1567063 () Bool)

(assert (=> d!1286710 (= res!1789266 (not lt!1567063))))

(declare-fun lt!1567059 () Bool)

(assert (=> d!1286710 (= lt!1567063 lt!1567059)))

(declare-fun lt!1567060 () Unit!71364)

(assert (=> d!1286710 (= lt!1567060 e!2709611)))

(declare-fun c!740252 () Bool)

(assert (=> d!1286710 (= c!740252 lt!1567059)))

(assert (=> d!1286710 (= lt!1567059 (containsKey!668 (toList!2944 lt!1566893) key!3918))))

(assert (=> d!1286710 (= (contains!11093 lt!1566893 key!3918) lt!1567063)))

(declare-fun b!4354173 () Bool)

(assert (=> b!4354173 (= e!2709608 (contains!11099 (keys!16511 lt!1566893) key!3918))))

(declare-fun bm!302590 () Bool)

(assert (=> bm!302590 (= call!302595 (contains!11099 e!2709609 key!3918))))

(declare-fun c!740250 () Bool)

(assert (=> bm!302590 (= c!740250 c!740252)))

(declare-fun b!4354181 () Bool)

(assert (=> b!4354181 false))

(declare-fun lt!1567065 () Unit!71364)

(declare-fun lt!1567062 () Unit!71364)

(assert (=> b!4354181 (= lt!1567065 lt!1567062)))

(assert (=> b!4354181 (containsKey!668 (toList!2944 lt!1566893) key!3918)))

(assert (=> b!4354181 (= lt!1567062 (lemmaInGetKeysListThenContainsKey!115 (toList!2944 lt!1566893) key!3918))))

(declare-fun Unit!71372 () Unit!71364)

(assert (=> b!4354181 (= e!2709610 Unit!71372)))

(assert (= (and d!1286710 c!740252) b!4354180))

(assert (= (and d!1286710 (not c!740252)) b!4354177))

(assert (= (and b!4354177 c!740251) b!4354181))

(assert (= (and b!4354177 (not c!740251)) b!4354174))

(assert (= (or b!4354180 b!4354177) bm!302590))

(assert (= (and bm!302590 c!740250) b!4354179))

(assert (= (and bm!302590 (not c!740250)) b!4354175))

(assert (= (and d!1286710 res!1789266) b!4354178))

(assert (= (and d!1286710 (not res!1789268)) b!4354176))

(assert (= (and b!4354176 res!1789267) b!4354173))

(declare-fun m!4966507 () Bool)

(assert (=> b!4354181 m!4966507))

(declare-fun m!4966509 () Bool)

(assert (=> b!4354181 m!4966509))

(assert (=> d!1286710 m!4966507))

(declare-fun m!4966511 () Bool)

(assert (=> b!4354178 m!4966511))

(assert (=> b!4354178 m!4966511))

(declare-fun m!4966513 () Bool)

(assert (=> b!4354178 m!4966513))

(declare-fun m!4966515 () Bool)

(assert (=> b!4354176 m!4966515))

(assert (=> b!4354176 m!4966515))

(declare-fun m!4966517 () Bool)

(assert (=> b!4354176 m!4966517))

(assert (=> b!4354173 m!4966511))

(assert (=> b!4354173 m!4966511))

(assert (=> b!4354173 m!4966513))

(declare-fun m!4966519 () Bool)

(assert (=> b!4354179 m!4966519))

(declare-fun m!4966521 () Bool)

(assert (=> b!4354180 m!4966521))

(assert (=> b!4354180 m!4966515))

(assert (=> b!4354180 m!4966515))

(assert (=> b!4354180 m!4966517))

(declare-fun m!4966523 () Bool)

(assert (=> b!4354180 m!4966523))

(assert (=> b!4354175 m!4966511))

(declare-fun m!4966525 () Bool)

(assert (=> bm!302590 m!4966525))

(assert (=> b!4353951 d!1286710))

(declare-fun d!1286712 () Bool)

(declare-fun res!1789269 () Bool)

(declare-fun e!2709614 () Bool)

(assert (=> d!1286712 (=> res!1789269 e!2709614)))

(assert (=> d!1286712 (= res!1789269 (and (is-Cons!48905 (apply!11332 lm!1707 (_1!27440 (h!54449 (toList!2943 lm!1707))))) (= (_1!27439 (h!54448 (apply!11332 lm!1707 (_1!27440 (h!54449 (toList!2943 lm!1707)))))) key!3918)))))

(assert (=> d!1286712 (= (containsKey!666 (apply!11332 lm!1707 (_1!27440 (h!54449 (toList!2943 lm!1707)))) key!3918) e!2709614)))

(declare-fun b!4354182 () Bool)

(declare-fun e!2709615 () Bool)

(assert (=> b!4354182 (= e!2709614 e!2709615)))

(declare-fun res!1789270 () Bool)

(assert (=> b!4354182 (=> (not res!1789270) (not e!2709615))))

(assert (=> b!4354182 (= res!1789270 (is-Cons!48905 (apply!11332 lm!1707 (_1!27440 (h!54449 (toList!2943 lm!1707))))))))

(declare-fun b!4354183 () Bool)

(assert (=> b!4354183 (= e!2709615 (containsKey!666 (t!355949 (apply!11332 lm!1707 (_1!27440 (h!54449 (toList!2943 lm!1707))))) key!3918))))

(assert (= (and d!1286712 (not res!1789269)) b!4354182))

(assert (= (and b!4354182 res!1789270) b!4354183))

(declare-fun m!4966527 () Bool)

(assert (=> b!4354183 m!4966527))

(assert (=> b!4353951 d!1286712))

(declare-fun b!4354185 () Bool)

(declare-fun e!2709618 () Unit!71364)

(declare-fun Unit!71373 () Unit!71364)

(assert (=> b!4354185 (= e!2709618 Unit!71373)))

(declare-fun b!4354186 () Bool)

(declare-fun e!2709617 () List!49033)

(assert (=> b!4354186 (= e!2709617 (keys!16511 lt!1566896))))

(declare-fun b!4354187 () Bool)

(declare-fun e!2709620 () Bool)

(declare-fun e!2709616 () Bool)

(assert (=> b!4354187 (= e!2709620 e!2709616)))

(declare-fun res!1789272 () Bool)

(assert (=> b!4354187 (=> (not res!1789272) (not e!2709616))))

(assert (=> b!4354187 (= res!1789272 (isDefined!7745 (getValueByKey!436 (toList!2944 lt!1566896) key!3918)))))

(declare-fun b!4354188 () Bool)

(declare-fun e!2709619 () Unit!71364)

(assert (=> b!4354188 (= e!2709619 e!2709618)))

(declare-fun c!740254 () Bool)

(declare-fun call!302596 () Bool)

(assert (=> b!4354188 (= c!740254 call!302596)))

(declare-fun b!4354189 () Bool)

(declare-fun e!2709621 () Bool)

(assert (=> b!4354189 (= e!2709621 (not (contains!11099 (keys!16511 lt!1566896) key!3918)))))

(declare-fun b!4354190 () Bool)

(assert (=> b!4354190 (= e!2709617 (getKeysList!117 (toList!2944 lt!1566896)))))

(declare-fun b!4354191 () Bool)

(declare-fun lt!1567069 () Unit!71364)

(assert (=> b!4354191 (= e!2709619 lt!1567069)))

(declare-fun lt!1567066 () Unit!71364)

(assert (=> b!4354191 (= lt!1567066 (lemmaContainsKeyImpliesGetValueByKeyDefined!348 (toList!2944 lt!1566896) key!3918))))

(assert (=> b!4354191 (isDefined!7745 (getValueByKey!436 (toList!2944 lt!1566896) key!3918))))

(declare-fun lt!1567072 () Unit!71364)

(assert (=> b!4354191 (= lt!1567072 lt!1567066)))

(assert (=> b!4354191 (= lt!1567069 (lemmaInListThenGetKeysListContains!114 (toList!2944 lt!1566896) key!3918))))

(assert (=> b!4354191 call!302596))

(declare-fun d!1286714 () Bool)

(assert (=> d!1286714 e!2709620))

(declare-fun res!1789273 () Bool)

(assert (=> d!1286714 (=> res!1789273 e!2709620)))

(assert (=> d!1286714 (= res!1789273 e!2709621)))

(declare-fun res!1789271 () Bool)

(assert (=> d!1286714 (=> (not res!1789271) (not e!2709621))))

(declare-fun lt!1567071 () Bool)

(assert (=> d!1286714 (= res!1789271 (not lt!1567071))))

(declare-fun lt!1567067 () Bool)

(assert (=> d!1286714 (= lt!1567071 lt!1567067)))

(declare-fun lt!1567068 () Unit!71364)

(assert (=> d!1286714 (= lt!1567068 e!2709619)))

(declare-fun c!740255 () Bool)

(assert (=> d!1286714 (= c!740255 lt!1567067)))

(assert (=> d!1286714 (= lt!1567067 (containsKey!668 (toList!2944 lt!1566896) key!3918))))

(assert (=> d!1286714 (= (contains!11093 lt!1566896 key!3918) lt!1567071)))

(declare-fun b!4354184 () Bool)

(assert (=> b!4354184 (= e!2709616 (contains!11099 (keys!16511 lt!1566896) key!3918))))

(declare-fun bm!302591 () Bool)

(assert (=> bm!302591 (= call!302596 (contains!11099 e!2709617 key!3918))))

(declare-fun c!740253 () Bool)

(assert (=> bm!302591 (= c!740253 c!740255)))

(declare-fun b!4354192 () Bool)

(assert (=> b!4354192 false))

(declare-fun lt!1567073 () Unit!71364)

(declare-fun lt!1567070 () Unit!71364)

(assert (=> b!4354192 (= lt!1567073 lt!1567070)))

(assert (=> b!4354192 (containsKey!668 (toList!2944 lt!1566896) key!3918)))

(assert (=> b!4354192 (= lt!1567070 (lemmaInGetKeysListThenContainsKey!115 (toList!2944 lt!1566896) key!3918))))

(declare-fun Unit!71374 () Unit!71364)

(assert (=> b!4354192 (= e!2709618 Unit!71374)))

(assert (= (and d!1286714 c!740255) b!4354191))

(assert (= (and d!1286714 (not c!740255)) b!4354188))

(assert (= (and b!4354188 c!740254) b!4354192))

(assert (= (and b!4354188 (not c!740254)) b!4354185))

(assert (= (or b!4354191 b!4354188) bm!302591))

(assert (= (and bm!302591 c!740253) b!4354190))

(assert (= (and bm!302591 (not c!740253)) b!4354186))

(assert (= (and d!1286714 res!1789271) b!4354189))

(assert (= (and d!1286714 (not res!1789273)) b!4354187))

(assert (= (and b!4354187 res!1789272) b!4354184))

(declare-fun m!4966529 () Bool)

(assert (=> b!4354192 m!4966529))

(declare-fun m!4966531 () Bool)

(assert (=> b!4354192 m!4966531))

(assert (=> d!1286714 m!4966529))

(declare-fun m!4966533 () Bool)

(assert (=> b!4354189 m!4966533))

(assert (=> b!4354189 m!4966533))

(declare-fun m!4966535 () Bool)

(assert (=> b!4354189 m!4966535))

(declare-fun m!4966537 () Bool)

(assert (=> b!4354187 m!4966537))

(assert (=> b!4354187 m!4966537))

(declare-fun m!4966539 () Bool)

(assert (=> b!4354187 m!4966539))

(assert (=> b!4354184 m!4966533))

(assert (=> b!4354184 m!4966533))

(assert (=> b!4354184 m!4966535))

(declare-fun m!4966541 () Bool)

(assert (=> b!4354190 m!4966541))

(declare-fun m!4966543 () Bool)

(assert (=> b!4354191 m!4966543))

(assert (=> b!4354191 m!4966537))

(assert (=> b!4354191 m!4966537))

(assert (=> b!4354191 m!4966539))

(declare-fun m!4966545 () Bool)

(assert (=> b!4354191 m!4966545))

(assert (=> b!4354186 m!4966533))

(declare-fun m!4966547 () Bool)

(assert (=> bm!302591 m!4966547))

(assert (=> b!4353951 d!1286714))

(declare-fun d!1286716 () Bool)

(declare-fun content!7703 (List!49029) (Set tuple2!48290))

(assert (=> d!1286716 (= (eq!250 (extractMap!539 (toList!2943 (+!617 lt!1566886 lt!1566898))) (+!618 lt!1566896 lt!1566895)) (= (content!7703 (toList!2944 (extractMap!539 (toList!2943 (+!617 lt!1566886 lt!1566898))))) (content!7703 (toList!2944 (+!618 lt!1566896 lt!1566895)))))))

(declare-fun bs!630301 () Bool)

(assert (= bs!630301 d!1286716))

(declare-fun m!4966549 () Bool)

(assert (=> bs!630301 m!4966549))

(declare-fun m!4966551 () Bool)

(assert (=> bs!630301 m!4966551))

(assert (=> b!4353951 d!1286716))

(declare-fun bs!630302 () Bool)

(declare-fun d!1286718 () Bool)

(assert (= bs!630302 (and d!1286718 d!1286640)))

(declare-fun lambda!139987 () Int)

(assert (=> bs!630302 (= lambda!139987 lambda!139972)))

(declare-fun bs!630303 () Bool)

(assert (= bs!630303 (and d!1286718 d!1286688)))

(assert (=> bs!630303 (= lambda!139987 lambda!139984)))

(declare-fun bs!630304 () Bool)

(assert (= bs!630304 (and d!1286718 start!421078)))

(assert (=> bs!630304 (= lambda!139987 lambda!139956)))

(declare-fun bs!630305 () Bool)

(assert (= bs!630305 (and d!1286718 d!1286686)))

(assert (=> bs!630305 (= lambda!139987 lambda!139979)))

(declare-fun bs!630306 () Bool)

(assert (= bs!630306 (and d!1286718 d!1286676)))

(assert (=> bs!630306 (not (= lambda!139987 lambda!139978))))

(declare-fun bs!630307 () Bool)

(assert (= bs!630307 (and d!1286718 d!1286706)))

(assert (=> bs!630307 (= lambda!139987 lambda!139986)))

(declare-fun lt!1567074 () ListMap!2187)

(assert (=> d!1286718 (invariantList!669 (toList!2944 lt!1567074))))

(declare-fun e!2709622 () ListMap!2187)

(assert (=> d!1286718 (= lt!1567074 e!2709622)))

(declare-fun c!740256 () Bool)

(assert (=> d!1286718 (= c!740256 (is-Cons!48906 (toList!2943 (+!617 lt!1566886 lt!1566898))))))

(assert (=> d!1286718 (forall!9101 (toList!2943 (+!617 lt!1566886 lt!1566898)) lambda!139987)))

(assert (=> d!1286718 (= (extractMap!539 (toList!2943 (+!617 lt!1566886 lt!1566898))) lt!1567074)))

(declare-fun b!4354193 () Bool)

(assert (=> b!4354193 (= e!2709622 (addToMapMapFromBucket!176 (_2!27440 (h!54449 (toList!2943 (+!617 lt!1566886 lt!1566898)))) (extractMap!539 (t!355950 (toList!2943 (+!617 lt!1566886 lt!1566898))))))))

(declare-fun b!4354194 () Bool)

(assert (=> b!4354194 (= e!2709622 (ListMap!2188 Nil!48905))))

(assert (= (and d!1286718 c!740256) b!4354193))

(assert (= (and d!1286718 (not c!740256)) b!4354194))

(declare-fun m!4966553 () Bool)

(assert (=> d!1286718 m!4966553))

(declare-fun m!4966555 () Bool)

(assert (=> d!1286718 m!4966555))

(declare-fun m!4966557 () Bool)

(assert (=> b!4354193 m!4966557))

(assert (=> b!4354193 m!4966557))

(declare-fun m!4966559 () Bool)

(assert (=> b!4354193 m!4966559))

(assert (=> b!4353951 d!1286718))

(declare-fun bs!630308 () Bool)

(declare-fun d!1286720 () Bool)

(assert (= bs!630308 (and d!1286720 d!1286718)))

(declare-fun lambda!139990 () Int)

(assert (=> bs!630308 (= lambda!139990 lambda!139987)))

(declare-fun bs!630309 () Bool)

(assert (= bs!630309 (and d!1286720 d!1286640)))

(assert (=> bs!630309 (= lambda!139990 lambda!139972)))

(declare-fun bs!630310 () Bool)

(assert (= bs!630310 (and d!1286720 d!1286688)))

(assert (=> bs!630310 (= lambda!139990 lambda!139984)))

(declare-fun bs!630311 () Bool)

(assert (= bs!630311 (and d!1286720 start!421078)))

(assert (=> bs!630311 (= lambda!139990 lambda!139956)))

(declare-fun bs!630312 () Bool)

(assert (= bs!630312 (and d!1286720 d!1286686)))

(assert (=> bs!630312 (= lambda!139990 lambda!139979)))

(declare-fun bs!630313 () Bool)

(assert (= bs!630313 (and d!1286720 d!1286676)))

(assert (=> bs!630313 (not (= lambda!139990 lambda!139978))))

(declare-fun bs!630314 () Bool)

(assert (= bs!630314 (and d!1286720 d!1286706)))

(assert (=> bs!630314 (= lambda!139990 lambda!139986)))

(assert (=> d!1286720 (not (containsKey!666 (apply!11332 lm!1707 (_1!27440 (h!54449 (toList!2943 lm!1707)))) key!3918))))

(declare-fun lt!1567077 () Unit!71364)

(declare-fun choose!26844 (ListLongMap!1593 K!10268 (_ BitVec 64) Hashable!4872) Unit!71364)

(assert (=> d!1286720 (= lt!1567077 (choose!26844 lm!1707 key!3918 (_1!27440 (h!54449 (toList!2943 lm!1707))) hashF!1247))))

(assert (=> d!1286720 (forall!9101 (toList!2943 lm!1707) lambda!139990)))

(assert (=> d!1286720 (= (lemmaNotSameHashThenCannotContainKey!27 lm!1707 key!3918 (_1!27440 (h!54449 (toList!2943 lm!1707))) hashF!1247) lt!1567077)))

(declare-fun bs!630315 () Bool)

(assert (= bs!630315 d!1286720))

(assert (=> bs!630315 m!4966179))

(assert (=> bs!630315 m!4966179))

(assert (=> bs!630315 m!4966181))

(declare-fun m!4966561 () Bool)

(assert (=> bs!630315 m!4966561))

(declare-fun m!4966563 () Bool)

(assert (=> bs!630315 m!4966563))

(assert (=> b!4353951 d!1286720))

(declare-fun b!4354199 () Bool)

(declare-fun e!2709625 () Bool)

(declare-fun tp!1330009 () Bool)

(declare-fun tp!1330010 () Bool)

(assert (=> b!4354199 (= e!2709625 (and tp!1330009 tp!1330010))))

(assert (=> b!4353950 (= tp!1329998 e!2709625)))

(assert (= (and b!4353950 (is-Cons!48906 (toList!2943 lm!1707))) b!4354199))

(declare-fun tp!1330013 () Bool)

(declare-fun b!4354204 () Bool)

(declare-fun e!2709628 () Bool)

(assert (=> b!4354204 (= e!2709628 (and tp_is_empty!25157 tp_is_empty!25159 tp!1330013))))

(assert (=> b!4353952 (= tp!1329997 e!2709628)))

(assert (= (and b!4353952 (is-Cons!48905 (t!355949 newBucket!200))) b!4354204))

(declare-fun b_lambda!130893 () Bool)

(assert (= b_lambda!130887 (or start!421078 b_lambda!130893)))

(declare-fun bs!630316 () Bool)

(declare-fun d!1286722 () Bool)

(assert (= bs!630316 (and d!1286722 start!421078)))

(assert (=> bs!630316 (= (dynLambda!20624 lambda!139956 (h!54449 (toList!2943 lt!1566886))) (noDuplicateKeys!480 (_2!27440 (h!54449 (toList!2943 lt!1566886)))))))

(declare-fun m!4966565 () Bool)

(assert (=> bs!630316 m!4966565))

(assert (=> b!4354152 d!1286722))

(declare-fun b_lambda!130895 () Bool)

(assert (= b_lambda!130881 (or start!421078 b_lambda!130895)))

(declare-fun bs!630317 () Bool)

(declare-fun d!1286724 () Bool)

(assert (= bs!630317 (and d!1286724 start!421078)))

(assert (=> bs!630317 (= (dynLambda!20624 lambda!139956 (tuple2!48293 hash!377 newBucket!200)) (noDuplicateKeys!480 (_2!27440 (tuple2!48293 hash!377 newBucket!200))))))

(declare-fun m!4966567 () Bool)

(assert (=> bs!630317 m!4966567))

(assert (=> b!4354085 d!1286724))

(declare-fun b_lambda!130897 () Bool)

(assert (= b_lambda!130877 (or start!421078 b_lambda!130897)))

(declare-fun bs!630318 () Bool)

(declare-fun d!1286726 () Bool)

(assert (= bs!630318 (and d!1286726 start!421078)))

(assert (=> bs!630318 (= (dynLambda!20624 lambda!139956 (h!54449 (toList!2943 lt!1566887))) (noDuplicateKeys!480 (_2!27440 (h!54449 (toList!2943 lt!1566887)))))))

(declare-fun m!4966569 () Bool)

(assert (=> bs!630318 m!4966569))

(assert (=> b!4354061 d!1286726))

(declare-fun b_lambda!130899 () Bool)

(assert (= b_lambda!130875 (or start!421078 b_lambda!130899)))

(declare-fun bs!630319 () Bool)

(declare-fun d!1286728 () Bool)

(assert (= bs!630319 (and d!1286728 start!421078)))

(assert (=> bs!630319 (= (dynLambda!20624 lambda!139956 (h!54449 (toList!2943 lm!1707))) (noDuplicateKeys!480 (_2!27440 (h!54449 (toList!2943 lm!1707)))))))

(assert (=> bs!630319 m!4966505))

(assert (=> b!4354015 d!1286728))

(declare-fun b_lambda!130901 () Bool)

(assert (= b_lambda!130885 (or start!421078 b_lambda!130901)))

(declare-fun bs!630320 () Bool)

(declare-fun d!1286730 () Bool)

(assert (= bs!630320 (and d!1286730 start!421078)))

(assert (=> bs!630320 (= (dynLambda!20624 lambda!139956 lt!1566891) (noDuplicateKeys!480 (_2!27440 lt!1566891)))))

(declare-fun m!4966571 () Bool)

(assert (=> bs!630320 m!4966571))

(assert (=> d!1286666 d!1286730))

(push 1)

(assert (not b!4354181))

(assert (not b_lambda!130897))

(assert (not d!1286662))

(assert (not b!4354184))

(assert (not d!1286658))

(assert (not b!4354179))

(assert (not d!1286718))

(assert (not b!4354155))

(assert (not b_lambda!130901))

(assert (not b!4354153))

(assert (not b!4354062))

(assert (not b!4354069))

(assert (not d!1286716))

(assert (not b!4354040))

(assert (not b!4354183))

(assert (not b!4354043))

(assert (not b!4354176))

(assert (not d!1286632))

(assert (not b!4354009))

(assert (not d!1286684))

(assert (not d!1286656))

(assert (not b!4354037))

(assert (not b!4354102))

(assert (not d!1286720))

(assert (not d!1286680))

(assert (not d!1286702))

(assert (not b!4354171))

(assert (not b!4354204))

(assert (not b_lambda!130899))

(assert (not b!4354104))

(assert (not b!4354192))

(assert (not b!4354189))

(assert (not b!4354180))

(assert (not d!1286700))

(assert (not b!4354190))

(assert (not d!1286714))

(assert (not bs!630320))

(assert (not b!4354140))

(assert (not b!4354010))

(assert (not d!1286652))

(assert (not bs!630318))

(assert (not b!4354068))

(assert (not b!4354150))

(assert (not bs!630317))

(assert (not b!4354042))

(assert (not b!4354199))

(assert (not b!4354186))

(assert (not b!4354122))

(assert (not b!4354173))

(assert (not d!1286630))

(assert (not bm!302590))

(assert (not d!1286706))

(assert (not d!1286664))

(assert (not b!4354165))

(assert (not d!1286708))

(assert (not b!4354193))

(assert (not b!4354166))

(assert (not b!4354175))

(assert (not b!4354129))

(assert (not b!4354039))

(assert (not b!4354132))

(assert (not d!1286640))

(assert (not d!1286686))

(assert (not d!1286670))

(assert (not b!4354016))

(assert (not d!1286710))

(assert (not d!1286666))

(assert (not b!4354057))

(assert (not d!1286678))

(assert (not d!1286646))

(assert (not d!1286676))

(assert (not d!1286668))

(assert (not b!4354151))

(assert (not bm!302591))

(assert (not b_lambda!130893))

(assert tp_is_empty!25159)

(assert (not d!1286688))

(assert (not b!4354191))

(assert (not bm!302589))

(assert (not b_lambda!130895))

(assert (not b!4354044))

(assert (not bs!630319))

(assert (not bs!630316))

(assert (not b!4354115))

(assert (not d!1286648))

(assert (not b!4354178))

(assert tp_is_empty!25157)

(assert (not b!4354187))

(assert (not b!4354045))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

