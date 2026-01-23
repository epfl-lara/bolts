; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!484782 () Bool)

(assert start!484782)

(declare-fun b!4746898 () Bool)

(declare-fun e!2960889 () Bool)

(declare-fun tp!1349612 () Bool)

(assert (=> b!4746898 (= e!2960889 tp!1349612)))

(declare-fun b!4746899 () Bool)

(declare-fun tp_is_empty!31617 () Bool)

(declare-fun tp_is_empty!31619 () Bool)

(declare-fun e!2960890 () Bool)

(declare-fun tp!1349611 () Bool)

(assert (=> b!4746899 (= e!2960890 (and tp_is_empty!31617 tp_is_empty!31619 tp!1349611))))

(declare-fun b!4746900 () Bool)

(declare-fun res!2012090 () Bool)

(declare-fun e!2960888 () Bool)

(assert (=> b!4746900 (=> (not res!2012090) (not e!2960888))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6450 0))(
  ( (HashableExt!6449 (__x!32153 Int)) )
))
(declare-fun hashF!1323 () Hashable!6450)

(declare-datatypes ((K!14353 0))(
  ( (K!14354 (val!19753 Int)) )
))
(declare-datatypes ((V!14599 0))(
  ( (V!14600 (val!19754 Int)) )
))
(declare-datatypes ((tuple2!54718 0))(
  ( (tuple2!54719 (_1!30653 K!14353) (_2!30653 V!14599)) )
))
(declare-datatypes ((List!53135 0))(
  ( (Nil!53011) (Cons!53011 (h!59406 tuple2!54718) (t!360443 List!53135)) )
))
(declare-fun newBucket!218 () List!53135)

(declare-fun allKeysSameHash!1907 (List!53135 (_ BitVec 64) Hashable!6450) Bool)

(assert (=> b!4746900 (= res!2012090 (allKeysSameHash!1907 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4746901 () Bool)

(declare-datatypes ((tuple2!54720 0))(
  ( (tuple2!54721 (_1!30654 (_ BitVec 64)) (_2!30654 List!53135)) )
))
(declare-datatypes ((List!53136 0))(
  ( (Nil!53012) (Cons!53012 (h!59407 tuple2!54720) (t!360444 List!53136)) )
))
(declare-datatypes ((ListLongMap!4581 0))(
  ( (ListLongMap!4582 (toList!6051 List!53136)) )
))
(declare-fun lm!2023 () ListLongMap!4581)

(assert (=> b!4746901 (= e!2960888 (not (is-Cons!53012 (toList!6051 lm!2023))))))

(declare-fun res!2012097 () Bool)

(assert (=> start!484782 (=> (not res!2012097) (not e!2960888))))

(declare-fun lambda!220461 () Int)

(declare-fun forall!11724 (List!53136 Int) Bool)

(assert (=> start!484782 (= res!2012097 (forall!11724 (toList!6051 lm!2023) lambda!220461))))

(assert (=> start!484782 e!2960888))

(declare-fun inv!68228 (ListLongMap!4581) Bool)

(assert (=> start!484782 (and (inv!68228 lm!2023) e!2960889)))

(assert (=> start!484782 tp_is_empty!31617))

(assert (=> start!484782 e!2960890))

(assert (=> start!484782 true))

(declare-fun e!2960887 () Bool)

(assert (=> start!484782 e!2960887))

(declare-fun b!4746902 () Bool)

(declare-fun res!2012098 () Bool)

(assert (=> b!4746902 (=> (not res!2012098) (not e!2960888))))

(declare-fun oldBucket!34 () List!53135)

(declare-fun head!10353 (List!53136) tuple2!54720)

(assert (=> b!4746902 (= res!2012098 (= (head!10353 (toList!6051 lm!2023)) (tuple2!54721 hash!405 oldBucket!34)))))

(declare-fun b!4746903 () Bool)

(declare-fun res!2012092 () Bool)

(assert (=> b!4746903 (=> (not res!2012092) (not e!2960888))))

(declare-fun key!4653 () K!14353)

(declare-datatypes ((ListMap!5415 0))(
  ( (ListMap!5416 (toList!6052 List!53135)) )
))
(declare-fun contains!16435 (ListMap!5415 K!14353) Bool)

(declare-fun extractMap!2107 (List!53136) ListMap!5415)

(assert (=> b!4746903 (= res!2012092 (contains!16435 (extractMap!2107 (toList!6051 lm!2023)) key!4653))))

(declare-fun b!4746904 () Bool)

(declare-fun res!2012094 () Bool)

(assert (=> b!4746904 (=> (not res!2012094) (not e!2960888))))

(declare-fun noDuplicateKeys!2081 (List!53135) Bool)

(assert (=> b!4746904 (= res!2012094 (noDuplicateKeys!2081 newBucket!218))))

(declare-fun b!4746905 () Bool)

(declare-fun res!2012096 () Bool)

(assert (=> b!4746905 (=> (not res!2012096) (not e!2960888))))

(declare-fun removePairForKey!1676 (List!53135 K!14353) List!53135)

(assert (=> b!4746905 (= res!2012096 (= (removePairForKey!1676 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4746906 () Bool)

(declare-fun res!2012095 () Bool)

(assert (=> b!4746906 (=> (not res!2012095) (not e!2960888))))

(declare-fun allKeysSameHashInMap!1995 (ListLongMap!4581 Hashable!6450) Bool)

(assert (=> b!4746906 (= res!2012095 (allKeysSameHashInMap!1995 lm!2023 hashF!1323))))

(declare-fun tp!1349610 () Bool)

(declare-fun b!4746907 () Bool)

(assert (=> b!4746907 (= e!2960887 (and tp_is_empty!31617 tp_is_empty!31619 tp!1349610))))

(declare-fun b!4746908 () Bool)

(declare-fun res!2012093 () Bool)

(assert (=> b!4746908 (=> (not res!2012093) (not e!2960888))))

(assert (=> b!4746908 (= res!2012093 (noDuplicateKeys!2081 oldBucket!34))))

(declare-fun b!4746909 () Bool)

(declare-fun res!2012091 () Bool)

(assert (=> b!4746909 (=> (not res!2012091) (not e!2960888))))

(declare-fun hash!4501 (Hashable!6450 K!14353) (_ BitVec 64))

(assert (=> b!4746909 (= res!2012091 (= (hash!4501 hashF!1323 key!4653) hash!405))))

(declare-fun b!4746910 () Bool)

(declare-fun res!2012099 () Bool)

(assert (=> b!4746910 (=> (not res!2012099) (not e!2960888))))

(assert (=> b!4746910 (= res!2012099 (allKeysSameHash!1907 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!484782 res!2012097) b!4746908))

(assert (= (and b!4746908 res!2012093) b!4746904))

(assert (= (and b!4746904 res!2012094) b!4746905))

(assert (= (and b!4746905 res!2012096) b!4746910))

(assert (= (and b!4746910 res!2012099) b!4746903))

(assert (= (and b!4746903 res!2012092) b!4746909))

(assert (= (and b!4746909 res!2012091) b!4746900))

(assert (= (and b!4746900 res!2012090) b!4746906))

(assert (= (and b!4746906 res!2012095) b!4746902))

(assert (= (and b!4746902 res!2012098) b!4746901))

(assert (= start!484782 b!4746898))

(assert (= (and start!484782 (is-Cons!53011 oldBucket!34)) b!4746899))

(assert (= (and start!484782 (is-Cons!53011 newBucket!218)) b!4746907))

(declare-fun m!5704151 () Bool)

(assert (=> b!4746909 m!5704151))

(declare-fun m!5704153 () Bool)

(assert (=> b!4746906 m!5704153))

(declare-fun m!5704155 () Bool)

(assert (=> b!4746910 m!5704155))

(declare-fun m!5704157 () Bool)

(assert (=> b!4746900 m!5704157))

(declare-fun m!5704159 () Bool)

(assert (=> b!4746904 m!5704159))

(declare-fun m!5704161 () Bool)

(assert (=> b!4746905 m!5704161))

(declare-fun m!5704163 () Bool)

(assert (=> b!4746902 m!5704163))

(declare-fun m!5704165 () Bool)

(assert (=> b!4746903 m!5704165))

(assert (=> b!4746903 m!5704165))

(declare-fun m!5704167 () Bool)

(assert (=> b!4746903 m!5704167))

(declare-fun m!5704169 () Bool)

(assert (=> start!484782 m!5704169))

(declare-fun m!5704171 () Bool)

(assert (=> start!484782 m!5704171))

(declare-fun m!5704173 () Bool)

(assert (=> b!4746908 m!5704173))

(push 1)

(assert (not b!4746903))

(assert (not b!4746905))

(assert (not b!4746904))

(assert (not b!4746909))

(assert (not b!4746906))

(assert (not b!4746907))

(assert (not b!4746899))

(assert (not b!4746898))

(assert (not start!484782))

(assert (not b!4746900))

(assert (not b!4746908))

(assert (not b!4746902))

(assert tp_is_empty!31617)

(assert (not b!4746910))

(assert tp_is_empty!31619)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1517047 () Bool)

(assert (=> d!1517047 true))

(assert (=> d!1517047 true))

(declare-fun lambda!220467 () Int)

(declare-fun forall!11726 (List!53135 Int) Bool)

(assert (=> d!1517047 (= (allKeysSameHash!1907 newBucket!218 hash!405 hashF!1323) (forall!11726 newBucket!218 lambda!220467))))

(declare-fun bs!1138395 () Bool)

(assert (= bs!1138395 d!1517047))

(declare-fun m!5704199 () Bool)

(assert (=> bs!1138395 m!5704199))

(assert (=> b!4746900 d!1517047))

(declare-fun bs!1138396 () Bool)

(declare-fun d!1517049 () Bool)

(assert (= bs!1138396 (and d!1517049 start!484782)))

(declare-fun lambda!220470 () Int)

(assert (=> bs!1138396 (not (= lambda!220470 lambda!220461))))

(assert (=> d!1517049 true))

(assert (=> d!1517049 (= (allKeysSameHashInMap!1995 lm!2023 hashF!1323) (forall!11724 (toList!6051 lm!2023) lambda!220470))))

(declare-fun bs!1138397 () Bool)

(assert (= bs!1138397 d!1517049))

(declare-fun m!5704201 () Bool)

(assert (=> bs!1138397 m!5704201))

(assert (=> b!4746906 d!1517049))

(declare-fun d!1517053 () Bool)

(declare-fun res!2012138 () Bool)

(declare-fun e!2960911 () Bool)

(assert (=> d!1517053 (=> res!2012138 e!2960911)))

(assert (=> d!1517053 (= res!2012138 (is-Nil!53012 (toList!6051 lm!2023)))))

(assert (=> d!1517053 (= (forall!11724 (toList!6051 lm!2023) lambda!220461) e!2960911)))

(declare-fun b!4746964 () Bool)

(declare-fun e!2960912 () Bool)

(assert (=> b!4746964 (= e!2960911 e!2960912)))

(declare-fun res!2012139 () Bool)

(assert (=> b!4746964 (=> (not res!2012139) (not e!2960912))))

(declare-fun dynLambda!21892 (Int tuple2!54720) Bool)

(assert (=> b!4746964 (= res!2012139 (dynLambda!21892 lambda!220461 (h!59407 (toList!6051 lm!2023))))))

(declare-fun b!4746965 () Bool)

(assert (=> b!4746965 (= e!2960912 (forall!11724 (t!360444 (toList!6051 lm!2023)) lambda!220461))))

(assert (= (and d!1517053 (not res!2012138)) b!4746964))

(assert (= (and b!4746964 res!2012139) b!4746965))

(declare-fun b_lambda!182933 () Bool)

(assert (=> (not b_lambda!182933) (not b!4746964)))

(declare-fun m!5704203 () Bool)

(assert (=> b!4746964 m!5704203))

(declare-fun m!5704205 () Bool)

(assert (=> b!4746965 m!5704205))

(assert (=> start!484782 d!1517053))

(declare-fun d!1517055 () Bool)

(declare-fun isStrictlySorted!795 (List!53136) Bool)

(assert (=> d!1517055 (= (inv!68228 lm!2023) (isStrictlySorted!795 (toList!6051 lm!2023)))))

(declare-fun bs!1138398 () Bool)

(assert (= bs!1138398 d!1517055))

(declare-fun m!5704207 () Bool)

(assert (=> bs!1138398 m!5704207))

(assert (=> start!484782 d!1517055))

(declare-fun d!1517057 () Bool)

(declare-fun res!2012146 () Bool)

(declare-fun e!2960919 () Bool)

(assert (=> d!1517057 (=> res!2012146 e!2960919)))

(assert (=> d!1517057 (= res!2012146 (not (is-Cons!53011 newBucket!218)))))

(assert (=> d!1517057 (= (noDuplicateKeys!2081 newBucket!218) e!2960919)))

(declare-fun b!4746972 () Bool)

(declare-fun e!2960920 () Bool)

(assert (=> b!4746972 (= e!2960919 e!2960920)))

(declare-fun res!2012147 () Bool)

(assert (=> b!4746972 (=> (not res!2012147) (not e!2960920))))

(declare-fun containsKey!3514 (List!53135 K!14353) Bool)

(assert (=> b!4746972 (= res!2012147 (not (containsKey!3514 (t!360443 newBucket!218) (_1!30653 (h!59406 newBucket!218)))))))

(declare-fun b!4746973 () Bool)

(assert (=> b!4746973 (= e!2960920 (noDuplicateKeys!2081 (t!360443 newBucket!218)))))

(assert (= (and d!1517057 (not res!2012146)) b!4746972))

(assert (= (and b!4746972 res!2012147) b!4746973))

(declare-fun m!5704213 () Bool)

(assert (=> b!4746972 m!5704213))

(declare-fun m!5704215 () Bool)

(assert (=> b!4746973 m!5704215))

(assert (=> b!4746904 d!1517057))

(declare-fun d!1517061 () Bool)

(declare-fun lt!1909126 () List!53135)

(assert (=> d!1517061 (not (containsKey!3514 lt!1909126 key!4653))))

(declare-fun e!2960932 () List!53135)

(assert (=> d!1517061 (= lt!1909126 e!2960932)))

(declare-fun c!810750 () Bool)

(assert (=> d!1517061 (= c!810750 (and (is-Cons!53011 oldBucket!34) (= (_1!30653 (h!59406 oldBucket!34)) key!4653)))))

(assert (=> d!1517061 (noDuplicateKeys!2081 oldBucket!34)))

(assert (=> d!1517061 (= (removePairForKey!1676 oldBucket!34 key!4653) lt!1909126)))

(declare-fun b!4746991 () Bool)

(declare-fun e!2960931 () List!53135)

(assert (=> b!4746991 (= e!2960931 Nil!53011)))

(declare-fun b!4746990 () Bool)

(assert (=> b!4746990 (= e!2960931 (Cons!53011 (h!59406 oldBucket!34) (removePairForKey!1676 (t!360443 oldBucket!34) key!4653)))))

(declare-fun b!4746988 () Bool)

(assert (=> b!4746988 (= e!2960932 (t!360443 oldBucket!34))))

(declare-fun b!4746989 () Bool)

(assert (=> b!4746989 (= e!2960932 e!2960931)))

(declare-fun c!810751 () Bool)

(assert (=> b!4746989 (= c!810751 (is-Cons!53011 oldBucket!34))))

(assert (= (and d!1517061 c!810750) b!4746988))

(assert (= (and d!1517061 (not c!810750)) b!4746989))

(assert (= (and b!4746989 c!810751) b!4746990))

(assert (= (and b!4746989 (not c!810751)) b!4746991))

(declare-fun m!5704221 () Bool)

(assert (=> d!1517061 m!5704221))

(assert (=> d!1517061 m!5704173))

(declare-fun m!5704223 () Bool)

(assert (=> b!4746990 m!5704223))

(assert (=> b!4746905 d!1517061))

(declare-fun bs!1138399 () Bool)

(declare-fun d!1517065 () Bool)

(assert (= bs!1138399 (and d!1517065 d!1517047)))

(declare-fun lambda!220471 () Int)

(assert (=> bs!1138399 (= lambda!220471 lambda!220467)))

(assert (=> d!1517065 true))

(assert (=> d!1517065 true))

(assert (=> d!1517065 (= (allKeysSameHash!1907 oldBucket!34 hash!405 hashF!1323) (forall!11726 oldBucket!34 lambda!220471))))

(declare-fun bs!1138400 () Bool)

(assert (= bs!1138400 d!1517065))

(declare-fun m!5704225 () Bool)

(assert (=> bs!1138400 m!5704225))

(assert (=> b!4746910 d!1517065))

(declare-fun b!4747014 () Bool)

(declare-datatypes ((Unit!134407 0))(
  ( (Unit!134408) )
))
(declare-fun e!2960951 () Unit!134407)

(declare-fun lt!1909146 () Unit!134407)

(assert (=> b!4747014 (= e!2960951 lt!1909146)))

(declare-fun lt!1909147 () Unit!134407)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1937 (List!53135 K!14353) Unit!134407)

(assert (=> b!4747014 (= lt!1909147 (lemmaContainsKeyImpliesGetValueByKeyDefined!1937 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653))))

(declare-datatypes ((Option!12496 0))(
  ( (None!12495) (Some!12495 (v!47188 V!14599)) )
))
(declare-fun isDefined!9750 (Option!12496) Bool)

(declare-fun getValueByKey!2046 (List!53135 K!14353) Option!12496)

(assert (=> b!4747014 (isDefined!9750 (getValueByKey!2046 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653))))

(declare-fun lt!1909149 () Unit!134407)

(assert (=> b!4747014 (= lt!1909149 lt!1909147)))

(declare-fun lemmaInListThenGetKeysListContains!992 (List!53135 K!14353) Unit!134407)

(assert (=> b!4747014 (= lt!1909146 (lemmaInListThenGetKeysListContains!992 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653))))

(declare-fun call!332182 () Bool)

(assert (=> b!4747014 call!332182))

(declare-fun d!1517067 () Bool)

(declare-fun e!2960950 () Bool)

(assert (=> d!1517067 e!2960950))

(declare-fun res!2012162 () Bool)

(assert (=> d!1517067 (=> res!2012162 e!2960950)))

(declare-fun e!2960952 () Bool)

(assert (=> d!1517067 (= res!2012162 e!2960952)))

(declare-fun res!2012164 () Bool)

(assert (=> d!1517067 (=> (not res!2012164) (not e!2960952))))

(declare-fun lt!1909150 () Bool)

(assert (=> d!1517067 (= res!2012164 (not lt!1909150))))

(declare-fun lt!1909144 () Bool)

(assert (=> d!1517067 (= lt!1909150 lt!1909144)))

(declare-fun lt!1909143 () Unit!134407)

(assert (=> d!1517067 (= lt!1909143 e!2960951)))

(declare-fun c!810759 () Bool)

(assert (=> d!1517067 (= c!810759 lt!1909144)))

(declare-fun containsKey!3515 (List!53135 K!14353) Bool)

(assert (=> d!1517067 (= lt!1909144 (containsKey!3515 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653))))

(assert (=> d!1517067 (= (contains!16435 (extractMap!2107 (toList!6051 lm!2023)) key!4653) lt!1909150)))

(declare-fun b!4747015 () Bool)

(declare-datatypes ((List!53139 0))(
  ( (Nil!53015) (Cons!53015 (h!59412 K!14353) (t!360447 List!53139)) )
))
(declare-fun e!2960948 () List!53139)

(declare-fun getKeysList!997 (List!53135) List!53139)

(assert (=> b!4747015 (= e!2960948 (getKeysList!997 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))))))

(declare-fun b!4747016 () Bool)

(declare-fun e!2960949 () Bool)

(declare-fun contains!16437 (List!53139 K!14353) Bool)

(declare-fun keys!19090 (ListMap!5415) List!53139)

(assert (=> b!4747016 (= e!2960949 (contains!16437 (keys!19090 (extractMap!2107 (toList!6051 lm!2023))) key!4653))))

(declare-fun bm!332177 () Bool)

(assert (=> bm!332177 (= call!332182 (contains!16437 e!2960948 key!4653))))

(declare-fun c!810758 () Bool)

(assert (=> bm!332177 (= c!810758 c!810759)))

(declare-fun b!4747017 () Bool)

(assert (=> b!4747017 (= e!2960948 (keys!19090 (extractMap!2107 (toList!6051 lm!2023))))))

(declare-fun b!4747018 () Bool)

(assert (=> b!4747018 false))

(declare-fun lt!1909148 () Unit!134407)

(declare-fun lt!1909145 () Unit!134407)

(assert (=> b!4747018 (= lt!1909148 lt!1909145)))

(assert (=> b!4747018 (containsKey!3515 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!996 (List!53135 K!14353) Unit!134407)

(assert (=> b!4747018 (= lt!1909145 (lemmaInGetKeysListThenContainsKey!996 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653))))

(declare-fun e!2960947 () Unit!134407)

(declare-fun Unit!134409 () Unit!134407)

(assert (=> b!4747018 (= e!2960947 Unit!134409)))

(declare-fun b!4747019 () Bool)

(declare-fun Unit!134410 () Unit!134407)

(assert (=> b!4747019 (= e!2960947 Unit!134410)))

(declare-fun b!4747020 () Bool)

(assert (=> b!4747020 (= e!2960951 e!2960947)))

(declare-fun c!810760 () Bool)

(assert (=> b!4747020 (= c!810760 call!332182)))

(declare-fun b!4747021 () Bool)

(assert (=> b!4747021 (= e!2960950 e!2960949)))

(declare-fun res!2012163 () Bool)

(assert (=> b!4747021 (=> (not res!2012163) (not e!2960949))))

(assert (=> b!4747021 (= res!2012163 (isDefined!9750 (getValueByKey!2046 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653)))))

(declare-fun b!4747022 () Bool)

(assert (=> b!4747022 (= e!2960952 (not (contains!16437 (keys!19090 (extractMap!2107 (toList!6051 lm!2023))) key!4653)))))

(assert (= (and d!1517067 c!810759) b!4747014))

(assert (= (and d!1517067 (not c!810759)) b!4747020))

(assert (= (and b!4747020 c!810760) b!4747018))

(assert (= (and b!4747020 (not c!810760)) b!4747019))

(assert (= (or b!4747014 b!4747020) bm!332177))

(assert (= (and bm!332177 c!810758) b!4747015))

(assert (= (and bm!332177 (not c!810758)) b!4747017))

(assert (= (and d!1517067 res!2012164) b!4747022))

(assert (= (and d!1517067 (not res!2012162)) b!4747021))

(assert (= (and b!4747021 res!2012163) b!4747016))

(declare-fun m!5704237 () Bool)

(assert (=> b!4747015 m!5704237))

(declare-fun m!5704239 () Bool)

(assert (=> bm!332177 m!5704239))

(assert (=> b!4747022 m!5704165))

(declare-fun m!5704241 () Bool)

(assert (=> b!4747022 m!5704241))

(assert (=> b!4747022 m!5704241))

(declare-fun m!5704243 () Bool)

(assert (=> b!4747022 m!5704243))

(assert (=> b!4747016 m!5704165))

(assert (=> b!4747016 m!5704241))

(assert (=> b!4747016 m!5704241))

(assert (=> b!4747016 m!5704243))

(assert (=> b!4747017 m!5704165))

(assert (=> b!4747017 m!5704241))

(declare-fun m!5704245 () Bool)

(assert (=> d!1517067 m!5704245))

(assert (=> b!4747018 m!5704245))

(declare-fun m!5704247 () Bool)

(assert (=> b!4747018 m!5704247))

(declare-fun m!5704249 () Bool)

(assert (=> b!4747021 m!5704249))

(assert (=> b!4747021 m!5704249))

(declare-fun m!5704251 () Bool)

(assert (=> b!4747021 m!5704251))

(declare-fun m!5704253 () Bool)

(assert (=> b!4747014 m!5704253))

(assert (=> b!4747014 m!5704249))

(assert (=> b!4747014 m!5704249))

(assert (=> b!4747014 m!5704251))

(declare-fun m!5704255 () Bool)

(assert (=> b!4747014 m!5704255))

(assert (=> b!4746903 d!1517067))

(declare-fun bs!1138408 () Bool)

(declare-fun d!1517077 () Bool)

(assert (= bs!1138408 (and d!1517077 start!484782)))

(declare-fun lambda!220481 () Int)

(assert (=> bs!1138408 (= lambda!220481 lambda!220461)))

(declare-fun bs!1138409 () Bool)

(assert (= bs!1138409 (and d!1517077 d!1517049)))

(assert (=> bs!1138409 (not (= lambda!220481 lambda!220470))))

(declare-fun lt!1909155 () ListMap!5415)

(declare-fun invariantList!1558 (List!53135) Bool)

(assert (=> d!1517077 (invariantList!1558 (toList!6052 lt!1909155))))

(declare-fun e!2960959 () ListMap!5415)

(assert (=> d!1517077 (= lt!1909155 e!2960959)))

(declare-fun c!810767 () Bool)

(assert (=> d!1517077 (= c!810767 (is-Cons!53012 (toList!6051 lm!2023)))))

(assert (=> d!1517077 (forall!11724 (toList!6051 lm!2023) lambda!220481)))

(assert (=> d!1517077 (= (extractMap!2107 (toList!6051 lm!2023)) lt!1909155)))

(declare-fun b!4747039 () Bool)

(declare-fun addToMapMapFromBucket!1511 (List!53135 ListMap!5415) ListMap!5415)

(assert (=> b!4747039 (= e!2960959 (addToMapMapFromBucket!1511 (_2!30654 (h!59407 (toList!6051 lm!2023))) (extractMap!2107 (t!360444 (toList!6051 lm!2023)))))))

(declare-fun b!4747040 () Bool)

(assert (=> b!4747040 (= e!2960959 (ListMap!5416 Nil!53011))))

(assert (= (and d!1517077 c!810767) b!4747039))

(assert (= (and d!1517077 (not c!810767)) b!4747040))

(declare-fun m!5704261 () Bool)

(assert (=> d!1517077 m!5704261))

(declare-fun m!5704263 () Bool)

(assert (=> d!1517077 m!5704263))

(declare-fun m!5704265 () Bool)

(assert (=> b!4747039 m!5704265))

(assert (=> b!4747039 m!5704265))

(declare-fun m!5704267 () Bool)

(assert (=> b!4747039 m!5704267))

(assert (=> b!4746903 d!1517077))

(declare-fun d!1517085 () Bool)

(declare-fun res!2012165 () Bool)

(declare-fun e!2960960 () Bool)

(assert (=> d!1517085 (=> res!2012165 e!2960960)))

(assert (=> d!1517085 (= res!2012165 (not (is-Cons!53011 oldBucket!34)))))

(assert (=> d!1517085 (= (noDuplicateKeys!2081 oldBucket!34) e!2960960)))

(declare-fun b!4747041 () Bool)

(declare-fun e!2960961 () Bool)

(assert (=> b!4747041 (= e!2960960 e!2960961)))

(declare-fun res!2012166 () Bool)

(assert (=> b!4747041 (=> (not res!2012166) (not e!2960961))))

(assert (=> b!4747041 (= res!2012166 (not (containsKey!3514 (t!360443 oldBucket!34) (_1!30653 (h!59406 oldBucket!34)))))))

(declare-fun b!4747042 () Bool)

(assert (=> b!4747042 (= e!2960961 (noDuplicateKeys!2081 (t!360443 oldBucket!34)))))

(assert (= (and d!1517085 (not res!2012165)) b!4747041))

(assert (= (and b!4747041 res!2012166) b!4747042))

(declare-fun m!5704269 () Bool)

(assert (=> b!4747041 m!5704269))

(declare-fun m!5704271 () Bool)

(assert (=> b!4747042 m!5704271))

(assert (=> b!4746908 d!1517085))

(declare-fun d!1517087 () Bool)

(declare-fun hash!4503 (Hashable!6450 K!14353) (_ BitVec 64))

(assert (=> d!1517087 (= (hash!4501 hashF!1323 key!4653) (hash!4503 hashF!1323 key!4653))))

(declare-fun bs!1138410 () Bool)

(assert (= bs!1138410 d!1517087))

(declare-fun m!5704273 () Bool)

(assert (=> bs!1138410 m!5704273))

(assert (=> b!4746909 d!1517087))

(declare-fun d!1517089 () Bool)

(assert (=> d!1517089 (= (head!10353 (toList!6051 lm!2023)) (h!59407 (toList!6051 lm!2023)))))

(assert (=> b!4746902 d!1517089))

(declare-fun b!4747051 () Bool)

(declare-fun tp!1349624 () Bool)

(declare-fun e!2960966 () Bool)

(assert (=> b!4747051 (= e!2960966 (and tp_is_empty!31617 tp_is_empty!31619 tp!1349624))))

(assert (=> b!4746899 (= tp!1349611 e!2960966)))

(assert (= (and b!4746899 (is-Cons!53011 (t!360443 oldBucket!34))) b!4747051))

(declare-fun b!4747056 () Bool)

(declare-fun e!2960969 () Bool)

(declare-fun tp!1349629 () Bool)

(declare-fun tp!1349630 () Bool)

(assert (=> b!4747056 (= e!2960969 (and tp!1349629 tp!1349630))))

(assert (=> b!4746898 (= tp!1349612 e!2960969)))

(assert (= (and b!4746898 (is-Cons!53012 (toList!6051 lm!2023))) b!4747056))

(declare-fun e!2960970 () Bool)

(declare-fun tp!1349631 () Bool)

(declare-fun b!4747057 () Bool)

(assert (=> b!4747057 (= e!2960970 (and tp_is_empty!31617 tp_is_empty!31619 tp!1349631))))

(assert (=> b!4746907 (= tp!1349610 e!2960970)))

(assert (= (and b!4746907 (is-Cons!53011 (t!360443 newBucket!218))) b!4747057))

(declare-fun b_lambda!182937 () Bool)

(assert (= b_lambda!182933 (or start!484782 b_lambda!182937)))

(declare-fun bs!1138411 () Bool)

(declare-fun d!1517093 () Bool)

(assert (= bs!1138411 (and d!1517093 start!484782)))

(assert (=> bs!1138411 (= (dynLambda!21892 lambda!220461 (h!59407 (toList!6051 lm!2023))) (noDuplicateKeys!2081 (_2!30654 (h!59407 (toList!6051 lm!2023)))))))

(declare-fun m!5704279 () Bool)

(assert (=> bs!1138411 m!5704279))

(assert (=> b!4746964 d!1517093))

(push 1)

(assert (not b!4747051))

(assert (not b_lambda!182937))

(assert (not b!4747039))

(assert (not b!4746990))

(assert tp_is_empty!31619)

(assert (not d!1517061))

(assert (not b!4747022))

(assert (not b!4747057))

(assert (not b!4747015))

(assert (not b!4747018))

(assert (not b!4747017))

(assert (not d!1517077))

(assert (not b!4746972))

(assert (not d!1517065))

(assert tp_is_empty!31617)

(assert (not b!4747041))

(assert (not d!1517049))

(assert (not b!4747042))

(assert (not bs!1138411))

(assert (not b!4747021))

(assert (not d!1517047))

(assert (not b!4747056))

(assert (not b!4747016))

(assert (not b!4747014))

(assert (not b!4746965))

(assert (not b!4746973))

(assert (not bm!332177))

(assert (not d!1517067))

(assert (not d!1517055))

(assert (not d!1517087))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1517099 () Bool)

(declare-fun res!2012176 () Bool)

(declare-fun e!2960999 () Bool)

(assert (=> d!1517099 (=> res!2012176 e!2960999)))

(assert (=> d!1517099 (= res!2012176 (not (is-Cons!53011 (_2!30654 (h!59407 (toList!6051 lm!2023))))))))

(assert (=> d!1517099 (= (noDuplicateKeys!2081 (_2!30654 (h!59407 (toList!6051 lm!2023)))) e!2960999)))

(declare-fun b!4747102 () Bool)

(declare-fun e!2961000 () Bool)

(assert (=> b!4747102 (= e!2960999 e!2961000)))

(declare-fun res!2012177 () Bool)

(assert (=> b!4747102 (=> (not res!2012177) (not e!2961000))))

(assert (=> b!4747102 (= res!2012177 (not (containsKey!3514 (t!360443 (_2!30654 (h!59407 (toList!6051 lm!2023)))) (_1!30653 (h!59406 (_2!30654 (h!59407 (toList!6051 lm!2023))))))))))

(declare-fun b!4747103 () Bool)

(assert (=> b!4747103 (= e!2961000 (noDuplicateKeys!2081 (t!360443 (_2!30654 (h!59407 (toList!6051 lm!2023))))))))

(assert (= (and d!1517099 (not res!2012176)) b!4747102))

(assert (= (and b!4747102 res!2012177) b!4747103))

(declare-fun m!5704311 () Bool)

(assert (=> b!4747102 m!5704311))

(declare-fun m!5704313 () Bool)

(assert (=> b!4747103 m!5704313))

(assert (=> bs!1138411 d!1517099))

(declare-fun d!1517101 () Bool)

(declare-fun res!2012182 () Bool)

(declare-fun e!2961005 () Bool)

(assert (=> d!1517101 (=> res!2012182 e!2961005)))

(assert (=> d!1517101 (= res!2012182 (is-Nil!53011 oldBucket!34))))

(assert (=> d!1517101 (= (forall!11726 oldBucket!34 lambda!220471) e!2961005)))

(declare-fun b!4747108 () Bool)

(declare-fun e!2961006 () Bool)

(assert (=> b!4747108 (= e!2961005 e!2961006)))

(declare-fun res!2012183 () Bool)

(assert (=> b!4747108 (=> (not res!2012183) (not e!2961006))))

(declare-fun dynLambda!21894 (Int tuple2!54718) Bool)

(assert (=> b!4747108 (= res!2012183 (dynLambda!21894 lambda!220471 (h!59406 oldBucket!34)))))

(declare-fun b!4747109 () Bool)

(assert (=> b!4747109 (= e!2961006 (forall!11726 (t!360443 oldBucket!34) lambda!220471))))

(assert (= (and d!1517101 (not res!2012182)) b!4747108))

(assert (= (and b!4747108 res!2012183) b!4747109))

(declare-fun b_lambda!182941 () Bool)

(assert (=> (not b_lambda!182941) (not b!4747108)))

(declare-fun m!5704315 () Bool)

(assert (=> b!4747108 m!5704315))

(declare-fun m!5704317 () Bool)

(assert (=> b!4747109 m!5704317))

(assert (=> d!1517065 d!1517101))

(declare-fun d!1517103 () Bool)

(declare-fun choose!33769 (Hashable!6450 K!14353) (_ BitVec 64))

(assert (=> d!1517103 (= (hash!4503 hashF!1323 key!4653) (choose!33769 hashF!1323 key!4653))))

(declare-fun bs!1138415 () Bool)

(assert (= bs!1138415 d!1517103))

(declare-fun m!5704319 () Bool)

(assert (=> bs!1138415 m!5704319))

(assert (=> d!1517087 d!1517103))

(declare-fun d!1517105 () Bool)

(declare-fun res!2012188 () Bool)

(declare-fun e!2961011 () Bool)

(assert (=> d!1517105 (=> res!2012188 e!2961011)))

(assert (=> d!1517105 (= res!2012188 (and (is-Cons!53011 lt!1909126) (= (_1!30653 (h!59406 lt!1909126)) key!4653)))))

(assert (=> d!1517105 (= (containsKey!3514 lt!1909126 key!4653) e!2961011)))

(declare-fun b!4747114 () Bool)

(declare-fun e!2961012 () Bool)

(assert (=> b!4747114 (= e!2961011 e!2961012)))

(declare-fun res!2012189 () Bool)

(assert (=> b!4747114 (=> (not res!2012189) (not e!2961012))))

(assert (=> b!4747114 (= res!2012189 (is-Cons!53011 lt!1909126))))

(declare-fun b!4747115 () Bool)

(assert (=> b!4747115 (= e!2961012 (containsKey!3514 (t!360443 lt!1909126) key!4653))))

(assert (= (and d!1517105 (not res!2012188)) b!4747114))

(assert (= (and b!4747114 res!2012189) b!4747115))

(declare-fun m!5704321 () Bool)

(assert (=> b!4747115 m!5704321))

(assert (=> d!1517061 d!1517105))

(assert (=> d!1517061 d!1517085))

(declare-fun d!1517107 () Bool)

(declare-fun lt!1909186 () Bool)

(declare-fun content!9494 (List!53139) (Set K!14353))

(assert (=> d!1517107 (= lt!1909186 (set.member key!4653 (content!9494 (keys!19090 (extractMap!2107 (toList!6051 lm!2023))))))))

(declare-fun e!2961018 () Bool)

(assert (=> d!1517107 (= lt!1909186 e!2961018)))

(declare-fun res!2012195 () Bool)

(assert (=> d!1517107 (=> (not res!2012195) (not e!2961018))))

(assert (=> d!1517107 (= res!2012195 (is-Cons!53015 (keys!19090 (extractMap!2107 (toList!6051 lm!2023)))))))

(assert (=> d!1517107 (= (contains!16437 (keys!19090 (extractMap!2107 (toList!6051 lm!2023))) key!4653) lt!1909186)))

(declare-fun b!4747120 () Bool)

(declare-fun e!2961017 () Bool)

(assert (=> b!4747120 (= e!2961018 e!2961017)))

(declare-fun res!2012194 () Bool)

(assert (=> b!4747120 (=> res!2012194 e!2961017)))

(assert (=> b!4747120 (= res!2012194 (= (h!59412 (keys!19090 (extractMap!2107 (toList!6051 lm!2023)))) key!4653))))

(declare-fun b!4747121 () Bool)

(assert (=> b!4747121 (= e!2961017 (contains!16437 (t!360447 (keys!19090 (extractMap!2107 (toList!6051 lm!2023)))) key!4653))))

(assert (= (and d!1517107 res!2012195) b!4747120))

(assert (= (and b!4747120 (not res!2012194)) b!4747121))

(assert (=> d!1517107 m!5704241))

(declare-fun m!5704323 () Bool)

(assert (=> d!1517107 m!5704323))

(declare-fun m!5704325 () Bool)

(assert (=> d!1517107 m!5704325))

(declare-fun m!5704327 () Bool)

(assert (=> b!4747121 m!5704327))

(assert (=> b!4747022 d!1517107))

(declare-fun b!4747129 () Bool)

(assert (=> b!4747129 true))

(declare-fun d!1517109 () Bool)

(declare-fun e!2961021 () Bool)

(assert (=> d!1517109 e!2961021))

(declare-fun res!2012204 () Bool)

(assert (=> d!1517109 (=> (not res!2012204) (not e!2961021))))

(declare-fun lt!1909189 () List!53139)

(declare-fun noDuplicate!882 (List!53139) Bool)

(assert (=> d!1517109 (= res!2012204 (noDuplicate!882 lt!1909189))))

(assert (=> d!1517109 (= lt!1909189 (getKeysList!997 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))))))

(assert (=> d!1517109 (= (keys!19090 (extractMap!2107 (toList!6051 lm!2023))) lt!1909189)))

(declare-fun b!4747128 () Bool)

(declare-fun res!2012202 () Bool)

(assert (=> b!4747128 (=> (not res!2012202) (not e!2961021))))

(declare-fun length!620 (List!53139) Int)

(declare-fun length!621 (List!53135) Int)

(assert (=> b!4747128 (= res!2012202 (= (length!620 lt!1909189) (length!621 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))))))

(declare-fun res!2012203 () Bool)

(assert (=> b!4747129 (=> (not res!2012203) (not e!2961021))))

(declare-fun lambda!220489 () Int)

(declare-fun forall!11728 (List!53139 Int) Bool)

(assert (=> b!4747129 (= res!2012203 (forall!11728 lt!1909189 lambda!220489))))

(declare-fun b!4747130 () Bool)

(declare-fun lambda!220490 () Int)

(declare-fun map!11736 (List!53135 Int) List!53139)

(assert (=> b!4747130 (= e!2961021 (= (content!9494 lt!1909189) (content!9494 (map!11736 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) lambda!220490))))))

(assert (= (and d!1517109 res!2012204) b!4747128))

(assert (= (and b!4747128 res!2012202) b!4747129))

(assert (= (and b!4747129 res!2012203) b!4747130))

(declare-fun m!5704329 () Bool)

(assert (=> d!1517109 m!5704329))

(assert (=> d!1517109 m!5704237))

(declare-fun m!5704331 () Bool)

(assert (=> b!4747128 m!5704331))

(declare-fun m!5704333 () Bool)

(assert (=> b!4747128 m!5704333))

(declare-fun m!5704335 () Bool)

(assert (=> b!4747129 m!5704335))

(declare-fun m!5704337 () Bool)

(assert (=> b!4747130 m!5704337))

(declare-fun m!5704339 () Bool)

(assert (=> b!4747130 m!5704339))

(assert (=> b!4747130 m!5704339))

(declare-fun m!5704341 () Bool)

(assert (=> b!4747130 m!5704341))

(assert (=> b!4747022 d!1517109))

(declare-fun d!1517111 () Bool)

(declare-fun isEmpty!29254 (Option!12496) Bool)

(assert (=> d!1517111 (= (isDefined!9750 (getValueByKey!2046 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653)) (not (isEmpty!29254 (getValueByKey!2046 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653))))))

(declare-fun bs!1138416 () Bool)

(assert (= bs!1138416 d!1517111))

(assert (=> bs!1138416 m!5704249))

(declare-fun m!5704343 () Bool)

(assert (=> bs!1138416 m!5704343))

(assert (=> b!4747021 d!1517111))

(declare-fun b!4747144 () Bool)

(declare-fun e!2961027 () Option!12496)

(assert (=> b!4747144 (= e!2961027 None!12495)))

(declare-fun b!4747142 () Bool)

(declare-fun e!2961026 () Option!12496)

(assert (=> b!4747142 (= e!2961026 e!2961027)))

(declare-fun c!810787 () Bool)

(assert (=> b!4747142 (= c!810787 (and (is-Cons!53011 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) (not (= (_1!30653 (h!59406 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))) key!4653))))))

(declare-fun d!1517113 () Bool)

(declare-fun c!810786 () Bool)

(assert (=> d!1517113 (= c!810786 (and (is-Cons!53011 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) (= (_1!30653 (h!59406 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))) key!4653)))))

(assert (=> d!1517113 (= (getValueByKey!2046 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653) e!2961026)))

(declare-fun b!4747143 () Bool)

(assert (=> b!4747143 (= e!2961027 (getValueByKey!2046 (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) key!4653))))

(declare-fun b!4747141 () Bool)

(assert (=> b!4747141 (= e!2961026 (Some!12495 (_2!30653 (h!59406 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))))))))

(assert (= (and d!1517113 c!810786) b!4747141))

(assert (= (and d!1517113 (not c!810786)) b!4747142))

(assert (= (and b!4747142 c!810787) b!4747143))

(assert (= (and b!4747142 (not c!810787)) b!4747144))

(declare-fun m!5704345 () Bool)

(assert (=> b!4747143 m!5704345))

(assert (=> b!4747021 d!1517113))

(declare-fun d!1517115 () Bool)

(declare-fun lt!1909190 () List!53135)

(assert (=> d!1517115 (not (containsKey!3514 lt!1909190 key!4653))))

(declare-fun e!2961029 () List!53135)

(assert (=> d!1517115 (= lt!1909190 e!2961029)))

(declare-fun c!810788 () Bool)

(assert (=> d!1517115 (= c!810788 (and (is-Cons!53011 (t!360443 oldBucket!34)) (= (_1!30653 (h!59406 (t!360443 oldBucket!34))) key!4653)))))

(assert (=> d!1517115 (noDuplicateKeys!2081 (t!360443 oldBucket!34))))

(assert (=> d!1517115 (= (removePairForKey!1676 (t!360443 oldBucket!34) key!4653) lt!1909190)))

(declare-fun b!4747148 () Bool)

(declare-fun e!2961028 () List!53135)

(assert (=> b!4747148 (= e!2961028 Nil!53011)))

(declare-fun b!4747147 () Bool)

(assert (=> b!4747147 (= e!2961028 (Cons!53011 (h!59406 (t!360443 oldBucket!34)) (removePairForKey!1676 (t!360443 (t!360443 oldBucket!34)) key!4653)))))

(declare-fun b!4747145 () Bool)

(assert (=> b!4747145 (= e!2961029 (t!360443 (t!360443 oldBucket!34)))))

(declare-fun b!4747146 () Bool)

(assert (=> b!4747146 (= e!2961029 e!2961028)))

(declare-fun c!810789 () Bool)

(assert (=> b!4747146 (= c!810789 (is-Cons!53011 (t!360443 oldBucket!34)))))

(assert (= (and d!1517115 c!810788) b!4747145))

(assert (= (and d!1517115 (not c!810788)) b!4747146))

(assert (= (and b!4747146 c!810789) b!4747147))

(assert (= (and b!4747146 (not c!810789)) b!4747148))

(declare-fun m!5704347 () Bool)

(assert (=> d!1517115 m!5704347))

(assert (=> d!1517115 m!5704271))

(declare-fun m!5704349 () Bool)

(assert (=> b!4747147 m!5704349))

(assert (=> b!4746990 d!1517115))

(declare-fun bs!1138419 () Bool)

(declare-fun b!4747200 () Bool)

(assert (= bs!1138419 (and b!4747200 d!1517047)))

(declare-fun lambda!220525 () Int)

(assert (=> bs!1138419 (not (= lambda!220525 lambda!220467))))

(declare-fun bs!1138420 () Bool)

(assert (= bs!1138420 (and b!4747200 d!1517065)))

(assert (=> bs!1138420 (not (= lambda!220525 lambda!220471))))

(assert (=> b!4747200 true))

(declare-fun bs!1138421 () Bool)

(declare-fun b!4747202 () Bool)

(assert (= bs!1138421 (and b!4747202 d!1517047)))

(declare-fun lambda!220526 () Int)

(assert (=> bs!1138421 (not (= lambda!220526 lambda!220467))))

(declare-fun bs!1138422 () Bool)

(assert (= bs!1138422 (and b!4747202 d!1517065)))

(assert (=> bs!1138422 (not (= lambda!220526 lambda!220471))))

(declare-fun bs!1138423 () Bool)

(assert (= bs!1138423 (and b!4747202 b!4747200)))

(assert (=> bs!1138423 (= lambda!220526 lambda!220525)))

(assert (=> b!4747202 true))

(declare-fun lambda!220527 () Int)

(assert (=> bs!1138421 (not (= lambda!220527 lambda!220467))))

(assert (=> bs!1138422 (not (= lambda!220527 lambda!220471))))

(declare-fun lt!1909256 () ListMap!5415)

(assert (=> bs!1138423 (= (= lt!1909256 (extractMap!2107 (t!360444 (toList!6051 lm!2023)))) (= lambda!220527 lambda!220525))))

(assert (=> b!4747202 (= (= lt!1909256 (extractMap!2107 (t!360444 (toList!6051 lm!2023)))) (= lambda!220527 lambda!220526))))

(assert (=> b!4747202 true))

(declare-fun bs!1138424 () Bool)

(declare-fun d!1517117 () Bool)

(assert (= bs!1138424 (and d!1517117 d!1517065)))

(declare-fun lambda!220528 () Int)

(assert (=> bs!1138424 (not (= lambda!220528 lambda!220471))))

(declare-fun bs!1138425 () Bool)

(assert (= bs!1138425 (and d!1517117 b!4747202)))

(declare-fun lt!1909236 () ListMap!5415)

(assert (=> bs!1138425 (= (= lt!1909236 lt!1909256) (= lambda!220528 lambda!220527))))

(declare-fun bs!1138426 () Bool)

(assert (= bs!1138426 (and d!1517117 d!1517047)))

(assert (=> bs!1138426 (not (= lambda!220528 lambda!220467))))

(declare-fun bs!1138427 () Bool)

(assert (= bs!1138427 (and d!1517117 b!4747200)))

(assert (=> bs!1138427 (= (= lt!1909236 (extractMap!2107 (t!360444 (toList!6051 lm!2023)))) (= lambda!220528 lambda!220525))))

(assert (=> bs!1138425 (= (= lt!1909236 (extractMap!2107 (t!360444 (toList!6051 lm!2023)))) (= lambda!220528 lambda!220526))))

(assert (=> d!1517117 true))

(declare-fun b!4747198 () Bool)

(declare-fun e!2961063 () Bool)

(declare-fun call!332193 () Bool)

(assert (=> b!4747198 (= e!2961063 call!332193)))

(declare-fun b!4747199 () Bool)

(declare-fun res!2012240 () Bool)

(declare-fun e!2961065 () Bool)

(assert (=> b!4747199 (=> (not res!2012240) (not e!2961065))))

(assert (=> b!4747199 (= res!2012240 (forall!11726 (toList!6052 (extractMap!2107 (t!360444 (toList!6051 lm!2023)))) lambda!220528))))

(declare-fun bm!332187 () Bool)

(declare-fun call!332192 () Unit!134407)

(declare-fun lemmaContainsAllItsOwnKeys!843 (ListMap!5415) Unit!134407)

(assert (=> bm!332187 (= call!332192 (lemmaContainsAllItsOwnKeys!843 (extractMap!2107 (t!360444 (toList!6051 lm!2023)))))))

(assert (=> d!1517117 e!2961065))

(declare-fun res!2012241 () Bool)

(assert (=> d!1517117 (=> (not res!2012241) (not e!2961065))))

(assert (=> d!1517117 (= res!2012241 (forall!11726 (_2!30654 (h!59407 (toList!6051 lm!2023))) lambda!220528))))

(declare-fun e!2961064 () ListMap!5415)

(assert (=> d!1517117 (= lt!1909236 e!2961064)))

(declare-fun c!810796 () Bool)

(assert (=> d!1517117 (= c!810796 (is-Nil!53011 (_2!30654 (h!59407 (toList!6051 lm!2023)))))))

(assert (=> d!1517117 (noDuplicateKeys!2081 (_2!30654 (h!59407 (toList!6051 lm!2023))))))

(assert (=> d!1517117 (= (addToMapMapFromBucket!1511 (_2!30654 (h!59407 (toList!6051 lm!2023))) (extractMap!2107 (t!360444 (toList!6051 lm!2023)))) lt!1909236)))

(assert (=> b!4747200 (= e!2961064 (extractMap!2107 (t!360444 (toList!6051 lm!2023))))))

(declare-fun lt!1909245 () Unit!134407)

(assert (=> b!4747200 (= lt!1909245 call!332192)))

(declare-fun call!332194 () Bool)

(assert (=> b!4747200 call!332194))

(declare-fun lt!1909251 () Unit!134407)

(assert (=> b!4747200 (= lt!1909251 lt!1909245)))

(assert (=> b!4747200 call!332193))

(declare-fun lt!1909250 () Unit!134407)

(declare-fun Unit!134415 () Unit!134407)

(assert (=> b!4747200 (= lt!1909250 Unit!134415)))

(declare-fun b!4747201 () Bool)

(assert (=> b!4747201 (= e!2961065 (invariantList!1558 (toList!6052 lt!1909236)))))

(declare-fun bm!332188 () Bool)

(assert (=> bm!332188 (= call!332194 (forall!11726 (toList!6052 (extractMap!2107 (t!360444 (toList!6051 lm!2023)))) (ite c!810796 lambda!220525 lambda!220527)))))

(declare-fun bm!332189 () Bool)

(assert (=> bm!332189 (= call!332193 (forall!11726 (toList!6052 (extractMap!2107 (t!360444 (toList!6051 lm!2023)))) (ite c!810796 lambda!220525 lambda!220527)))))

(assert (=> b!4747202 (= e!2961064 lt!1909256)))

(declare-fun lt!1909240 () ListMap!5415)

(declare-fun +!2321 (ListMap!5415 tuple2!54718) ListMap!5415)

(assert (=> b!4747202 (= lt!1909240 (+!2321 (extractMap!2107 (t!360444 (toList!6051 lm!2023))) (h!59406 (_2!30654 (h!59407 (toList!6051 lm!2023))))))))

(assert (=> b!4747202 (= lt!1909256 (addToMapMapFromBucket!1511 (t!360443 (_2!30654 (h!59407 (toList!6051 lm!2023)))) (+!2321 (extractMap!2107 (t!360444 (toList!6051 lm!2023))) (h!59406 (_2!30654 (h!59407 (toList!6051 lm!2023)))))))))

(declare-fun lt!1909247 () Unit!134407)

(assert (=> b!4747202 (= lt!1909247 call!332192)))

(assert (=> b!4747202 (forall!11726 (toList!6052 (extractMap!2107 (t!360444 (toList!6051 lm!2023)))) lambda!220526)))

(declare-fun lt!1909239 () Unit!134407)

(assert (=> b!4747202 (= lt!1909239 lt!1909247)))

(assert (=> b!4747202 (forall!11726 (toList!6052 lt!1909240) lambda!220527)))

(declare-fun lt!1909244 () Unit!134407)

(declare-fun Unit!134416 () Unit!134407)

(assert (=> b!4747202 (= lt!1909244 Unit!134416)))

(assert (=> b!4747202 (forall!11726 (t!360443 (_2!30654 (h!59407 (toList!6051 lm!2023)))) lambda!220527)))

(declare-fun lt!1909249 () Unit!134407)

(declare-fun Unit!134417 () Unit!134407)

(assert (=> b!4747202 (= lt!1909249 Unit!134417)))

(declare-fun lt!1909253 () Unit!134407)

(declare-fun Unit!134418 () Unit!134407)

(assert (=> b!4747202 (= lt!1909253 Unit!134418)))

(declare-fun lt!1909238 () Unit!134407)

(declare-fun forallContained!3752 (List!53135 Int tuple2!54718) Unit!134407)

(assert (=> b!4747202 (= lt!1909238 (forallContained!3752 (toList!6052 lt!1909240) lambda!220527 (h!59406 (_2!30654 (h!59407 (toList!6051 lm!2023))))))))

(assert (=> b!4747202 (contains!16435 lt!1909240 (_1!30653 (h!59406 (_2!30654 (h!59407 (toList!6051 lm!2023))))))))

(declare-fun lt!1909241 () Unit!134407)

(declare-fun Unit!134419 () Unit!134407)

(assert (=> b!4747202 (= lt!1909241 Unit!134419)))

(assert (=> b!4747202 (contains!16435 lt!1909256 (_1!30653 (h!59406 (_2!30654 (h!59407 (toList!6051 lm!2023))))))))

(declare-fun lt!1909242 () Unit!134407)

(declare-fun Unit!134420 () Unit!134407)

(assert (=> b!4747202 (= lt!1909242 Unit!134420)))

(assert (=> b!4747202 (forall!11726 (_2!30654 (h!59407 (toList!6051 lm!2023))) lambda!220527)))

(declare-fun lt!1909252 () Unit!134407)

(declare-fun Unit!134421 () Unit!134407)

(assert (=> b!4747202 (= lt!1909252 Unit!134421)))

(assert (=> b!4747202 (forall!11726 (toList!6052 lt!1909240) lambda!220527)))

(declare-fun lt!1909246 () Unit!134407)

(declare-fun Unit!134422 () Unit!134407)

(assert (=> b!4747202 (= lt!1909246 Unit!134422)))

(declare-fun lt!1909248 () Unit!134407)

(declare-fun Unit!134423 () Unit!134407)

(assert (=> b!4747202 (= lt!1909248 Unit!134423)))

(declare-fun lt!1909243 () Unit!134407)

(declare-fun addForallContainsKeyThenBeforeAdding!842 (ListMap!5415 ListMap!5415 K!14353 V!14599) Unit!134407)

(assert (=> b!4747202 (= lt!1909243 (addForallContainsKeyThenBeforeAdding!842 (extractMap!2107 (t!360444 (toList!6051 lm!2023))) lt!1909256 (_1!30653 (h!59406 (_2!30654 (h!59407 (toList!6051 lm!2023))))) (_2!30653 (h!59406 (_2!30654 (h!59407 (toList!6051 lm!2023)))))))))

(assert (=> b!4747202 call!332194))

(declare-fun lt!1909254 () Unit!134407)

(assert (=> b!4747202 (= lt!1909254 lt!1909243)))

(assert (=> b!4747202 (forall!11726 (toList!6052 (extractMap!2107 (t!360444 (toList!6051 lm!2023)))) lambda!220527)))

(declare-fun lt!1909237 () Unit!134407)

(declare-fun Unit!134424 () Unit!134407)

(assert (=> b!4747202 (= lt!1909237 Unit!134424)))

(declare-fun res!2012242 () Bool)

(assert (=> b!4747202 (= res!2012242 (forall!11726 (_2!30654 (h!59407 (toList!6051 lm!2023))) lambda!220527))))

(assert (=> b!4747202 (=> (not res!2012242) (not e!2961063))))

(assert (=> b!4747202 e!2961063))

(declare-fun lt!1909255 () Unit!134407)

(declare-fun Unit!134425 () Unit!134407)

(assert (=> b!4747202 (= lt!1909255 Unit!134425)))

(assert (= (and d!1517117 c!810796) b!4747200))

(assert (= (and d!1517117 (not c!810796)) b!4747202))

(assert (= (and b!4747202 res!2012242) b!4747198))

(assert (= (or b!4747200 b!4747202) bm!332187))

(assert (= (or b!4747200 b!4747202) bm!332188))

(assert (= (or b!4747200 b!4747198) bm!332189))

(assert (= (and d!1517117 res!2012241) b!4747199))

(assert (= (and b!4747199 res!2012240) b!4747201))

(declare-fun m!5704395 () Bool)

(assert (=> bm!332188 m!5704395))

(declare-fun m!5704397 () Bool)

(assert (=> b!4747202 m!5704397))

(declare-fun m!5704399 () Bool)

(assert (=> b!4747202 m!5704399))

(assert (=> b!4747202 m!5704265))

(declare-fun m!5704401 () Bool)

(assert (=> b!4747202 m!5704401))

(declare-fun m!5704403 () Bool)

(assert (=> b!4747202 m!5704403))

(declare-fun m!5704405 () Bool)

(assert (=> b!4747202 m!5704405))

(declare-fun m!5704407 () Bool)

(assert (=> b!4747202 m!5704407))

(declare-fun m!5704409 () Bool)

(assert (=> b!4747202 m!5704409))

(declare-fun m!5704411 () Bool)

(assert (=> b!4747202 m!5704411))

(declare-fun m!5704413 () Bool)

(assert (=> b!4747202 m!5704413))

(assert (=> b!4747202 m!5704265))

(assert (=> b!4747202 m!5704411))

(assert (=> b!4747202 m!5704397))

(declare-fun m!5704415 () Bool)

(assert (=> b!4747202 m!5704415))

(declare-fun m!5704417 () Bool)

(assert (=> b!4747202 m!5704417))

(assert (=> b!4747202 m!5704417))

(assert (=> bm!332187 m!5704265))

(declare-fun m!5704419 () Bool)

(assert (=> bm!332187 m!5704419))

(declare-fun m!5704421 () Bool)

(assert (=> b!4747201 m!5704421))

(assert (=> bm!332189 m!5704395))

(declare-fun m!5704423 () Bool)

(assert (=> d!1517117 m!5704423))

(assert (=> d!1517117 m!5704279))

(declare-fun m!5704425 () Bool)

(assert (=> b!4747199 m!5704425))

(assert (=> b!4747039 d!1517117))

(declare-fun bs!1138428 () Bool)

(declare-fun d!1517143 () Bool)

(assert (= bs!1138428 (and d!1517143 start!484782)))

(declare-fun lambda!220529 () Int)

(assert (=> bs!1138428 (= lambda!220529 lambda!220461)))

(declare-fun bs!1138429 () Bool)

(assert (= bs!1138429 (and d!1517143 d!1517049)))

(assert (=> bs!1138429 (not (= lambda!220529 lambda!220470))))

(declare-fun bs!1138430 () Bool)

(assert (= bs!1138430 (and d!1517143 d!1517077)))

(assert (=> bs!1138430 (= lambda!220529 lambda!220481)))

(declare-fun lt!1909257 () ListMap!5415)

(assert (=> d!1517143 (invariantList!1558 (toList!6052 lt!1909257))))

(declare-fun e!2961070 () ListMap!5415)

(assert (=> d!1517143 (= lt!1909257 e!2961070)))

(declare-fun c!810799 () Bool)

(assert (=> d!1517143 (= c!810799 (is-Cons!53012 (t!360444 (toList!6051 lm!2023))))))

(assert (=> d!1517143 (forall!11724 (t!360444 (toList!6051 lm!2023)) lambda!220529)))

(assert (=> d!1517143 (= (extractMap!2107 (t!360444 (toList!6051 lm!2023))) lt!1909257)))

(declare-fun b!4747211 () Bool)

(assert (=> b!4747211 (= e!2961070 (addToMapMapFromBucket!1511 (_2!30654 (h!59407 (t!360444 (toList!6051 lm!2023)))) (extractMap!2107 (t!360444 (t!360444 (toList!6051 lm!2023))))))))

(declare-fun b!4747212 () Bool)

(assert (=> b!4747212 (= e!2961070 (ListMap!5416 Nil!53011))))

(assert (= (and d!1517143 c!810799) b!4747211))

(assert (= (and d!1517143 (not c!810799)) b!4747212))

(declare-fun m!5704427 () Bool)

(assert (=> d!1517143 m!5704427))

(declare-fun m!5704429 () Bool)

(assert (=> d!1517143 m!5704429))

(declare-fun m!5704431 () Bool)

(assert (=> b!4747211 m!5704431))

(assert (=> b!4747211 m!5704431))

(declare-fun m!5704433 () Bool)

(assert (=> b!4747211 m!5704433))

(assert (=> b!4747039 d!1517143))

(declare-fun d!1517145 () Bool)

(declare-fun res!2012249 () Bool)

(declare-fun e!2961075 () Bool)

(assert (=> d!1517145 (=> res!2012249 e!2961075)))

(assert (=> d!1517145 (= res!2012249 (or (is-Nil!53012 (toList!6051 lm!2023)) (is-Nil!53012 (t!360444 (toList!6051 lm!2023)))))))

(assert (=> d!1517145 (= (isStrictlySorted!795 (toList!6051 lm!2023)) e!2961075)))

(declare-fun b!4747217 () Bool)

(declare-fun e!2961076 () Bool)

(assert (=> b!4747217 (= e!2961075 e!2961076)))

(declare-fun res!2012250 () Bool)

(assert (=> b!4747217 (=> (not res!2012250) (not e!2961076))))

(assert (=> b!4747217 (= res!2012250 (bvslt (_1!30654 (h!59407 (toList!6051 lm!2023))) (_1!30654 (h!59407 (t!360444 (toList!6051 lm!2023))))))))

(declare-fun b!4747218 () Bool)

(assert (=> b!4747218 (= e!2961076 (isStrictlySorted!795 (t!360444 (toList!6051 lm!2023))))))

(assert (= (and d!1517145 (not res!2012249)) b!4747217))

(assert (= (and b!4747217 res!2012250) b!4747218))

(declare-fun m!5704435 () Bool)

(assert (=> b!4747218 m!5704435))

(assert (=> d!1517055 d!1517145))

(declare-fun d!1517147 () Bool)

(declare-fun res!2012251 () Bool)

(declare-fun e!2961077 () Bool)

(assert (=> d!1517147 (=> res!2012251 e!2961077)))

(assert (=> d!1517147 (= res!2012251 (not (is-Cons!53011 (t!360443 newBucket!218))))))

(assert (=> d!1517147 (= (noDuplicateKeys!2081 (t!360443 newBucket!218)) e!2961077)))

(declare-fun b!4747219 () Bool)

(declare-fun e!2961078 () Bool)

(assert (=> b!4747219 (= e!2961077 e!2961078)))

(declare-fun res!2012252 () Bool)

(assert (=> b!4747219 (=> (not res!2012252) (not e!2961078))))

(assert (=> b!4747219 (= res!2012252 (not (containsKey!3514 (t!360443 (t!360443 newBucket!218)) (_1!30653 (h!59406 (t!360443 newBucket!218))))))))

(declare-fun b!4747220 () Bool)

(assert (=> b!4747220 (= e!2961078 (noDuplicateKeys!2081 (t!360443 (t!360443 newBucket!218))))))

(assert (= (and d!1517147 (not res!2012251)) b!4747219))

(assert (= (and b!4747219 res!2012252) b!4747220))

(declare-fun m!5704437 () Bool)

(assert (=> b!4747219 m!5704437))

(declare-fun m!5704439 () Bool)

(assert (=> b!4747220 m!5704439))

(assert (=> b!4746973 d!1517147))

(declare-fun d!1517149 () Bool)

(declare-fun res!2012253 () Bool)

(declare-fun e!2961079 () Bool)

(assert (=> d!1517149 (=> res!2012253 e!2961079)))

(assert (=> d!1517149 (= res!2012253 (not (is-Cons!53011 (t!360443 oldBucket!34))))))

(assert (=> d!1517149 (= (noDuplicateKeys!2081 (t!360443 oldBucket!34)) e!2961079)))

(declare-fun b!4747221 () Bool)

(declare-fun e!2961080 () Bool)

(assert (=> b!4747221 (= e!2961079 e!2961080)))

(declare-fun res!2012254 () Bool)

(assert (=> b!4747221 (=> (not res!2012254) (not e!2961080))))

(assert (=> b!4747221 (= res!2012254 (not (containsKey!3514 (t!360443 (t!360443 oldBucket!34)) (_1!30653 (h!59406 (t!360443 oldBucket!34))))))))

(declare-fun b!4747222 () Bool)

(assert (=> b!4747222 (= e!2961080 (noDuplicateKeys!2081 (t!360443 (t!360443 oldBucket!34))))))

(assert (= (and d!1517149 (not res!2012253)) b!4747221))

(assert (= (and b!4747221 res!2012254) b!4747222))

(declare-fun m!5704441 () Bool)

(assert (=> b!4747221 m!5704441))

(declare-fun m!5704443 () Bool)

(assert (=> b!4747222 m!5704443))

(assert (=> b!4747042 d!1517149))

(declare-fun d!1517151 () Bool)

(declare-fun res!2012255 () Bool)

(declare-fun e!2961081 () Bool)

(assert (=> d!1517151 (=> res!2012255 e!2961081)))

(assert (=> d!1517151 (= res!2012255 (is-Nil!53011 newBucket!218))))

(assert (=> d!1517151 (= (forall!11726 newBucket!218 lambda!220467) e!2961081)))

(declare-fun b!4747223 () Bool)

(declare-fun e!2961082 () Bool)

(assert (=> b!4747223 (= e!2961081 e!2961082)))

(declare-fun res!2012256 () Bool)

(assert (=> b!4747223 (=> (not res!2012256) (not e!2961082))))

(assert (=> b!4747223 (= res!2012256 (dynLambda!21894 lambda!220467 (h!59406 newBucket!218)))))

(declare-fun b!4747224 () Bool)

(assert (=> b!4747224 (= e!2961082 (forall!11726 (t!360443 newBucket!218) lambda!220467))))

(assert (= (and d!1517151 (not res!2012255)) b!4747223))

(assert (= (and b!4747223 res!2012256) b!4747224))

(declare-fun b_lambda!182949 () Bool)

(assert (=> (not b_lambda!182949) (not b!4747223)))

(declare-fun m!5704445 () Bool)

(assert (=> b!4747223 m!5704445))

(declare-fun m!5704447 () Bool)

(assert (=> b!4747224 m!5704447))

(assert (=> d!1517047 d!1517151))

(declare-fun d!1517153 () Bool)

(declare-fun res!2012261 () Bool)

(declare-fun e!2961087 () Bool)

(assert (=> d!1517153 (=> res!2012261 e!2961087)))

(assert (=> d!1517153 (= res!2012261 (and (is-Cons!53011 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) (= (_1!30653 (h!59406 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))) key!4653)))))

(assert (=> d!1517153 (= (containsKey!3515 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653) e!2961087)))

(declare-fun b!4747229 () Bool)

(declare-fun e!2961088 () Bool)

(assert (=> b!4747229 (= e!2961087 e!2961088)))

(declare-fun res!2012262 () Bool)

(assert (=> b!4747229 (=> (not res!2012262) (not e!2961088))))

(assert (=> b!4747229 (= res!2012262 (is-Cons!53011 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))))))

(declare-fun b!4747230 () Bool)

(assert (=> b!4747230 (= e!2961088 (containsKey!3515 (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) key!4653))))

(assert (= (and d!1517153 (not res!2012261)) b!4747229))

(assert (= (and b!4747229 res!2012262) b!4747230))

(declare-fun m!5704449 () Bool)

(assert (=> b!4747230 m!5704449))

(assert (=> b!4747018 d!1517153))

(declare-fun d!1517155 () Bool)

(assert (=> d!1517155 (containsKey!3515 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653)))

(declare-fun lt!1909260 () Unit!134407)

(declare-fun choose!33770 (List!53135 K!14353) Unit!134407)

(assert (=> d!1517155 (= lt!1909260 (choose!33770 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653))))

(assert (=> d!1517155 (invariantList!1558 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))))

(assert (=> d!1517155 (= (lemmaInGetKeysListThenContainsKey!996 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653) lt!1909260)))

(declare-fun bs!1138431 () Bool)

(assert (= bs!1138431 d!1517155))

(assert (=> bs!1138431 m!5704245))

(declare-fun m!5704451 () Bool)

(assert (=> bs!1138431 m!5704451))

(declare-fun m!5704453 () Bool)

(assert (=> bs!1138431 m!5704453))

(assert (=> b!4747018 d!1517155))

(declare-fun d!1517157 () Bool)

(declare-fun res!2012263 () Bool)

(declare-fun e!2961089 () Bool)

(assert (=> d!1517157 (=> res!2012263 e!2961089)))

(assert (=> d!1517157 (= res!2012263 (and (is-Cons!53011 (t!360443 oldBucket!34)) (= (_1!30653 (h!59406 (t!360443 oldBucket!34))) (_1!30653 (h!59406 oldBucket!34)))))))

(assert (=> d!1517157 (= (containsKey!3514 (t!360443 oldBucket!34) (_1!30653 (h!59406 oldBucket!34))) e!2961089)))

(declare-fun b!4747231 () Bool)

(declare-fun e!2961090 () Bool)

(assert (=> b!4747231 (= e!2961089 e!2961090)))

(declare-fun res!2012264 () Bool)

(assert (=> b!4747231 (=> (not res!2012264) (not e!2961090))))

(assert (=> b!4747231 (= res!2012264 (is-Cons!53011 (t!360443 oldBucket!34)))))

(declare-fun b!4747232 () Bool)

(assert (=> b!4747232 (= e!2961090 (containsKey!3514 (t!360443 (t!360443 oldBucket!34)) (_1!30653 (h!59406 oldBucket!34))))))

(assert (= (and d!1517157 (not res!2012263)) b!4747231))

(assert (= (and b!4747231 res!2012264) b!4747232))

(declare-fun m!5704455 () Bool)

(assert (=> b!4747232 m!5704455))

(assert (=> b!4747041 d!1517157))

(declare-fun d!1517159 () Bool)

(declare-fun res!2012265 () Bool)

(declare-fun e!2961091 () Bool)

(assert (=> d!1517159 (=> res!2012265 e!2961091)))

(assert (=> d!1517159 (= res!2012265 (and (is-Cons!53011 (t!360443 newBucket!218)) (= (_1!30653 (h!59406 (t!360443 newBucket!218))) (_1!30653 (h!59406 newBucket!218)))))))

(assert (=> d!1517159 (= (containsKey!3514 (t!360443 newBucket!218) (_1!30653 (h!59406 newBucket!218))) e!2961091)))

(declare-fun b!4747233 () Bool)

(declare-fun e!2961092 () Bool)

(assert (=> b!4747233 (= e!2961091 e!2961092)))

(declare-fun res!2012266 () Bool)

(assert (=> b!4747233 (=> (not res!2012266) (not e!2961092))))

(assert (=> b!4747233 (= res!2012266 (is-Cons!53011 (t!360443 newBucket!218)))))

(declare-fun b!4747234 () Bool)

(assert (=> b!4747234 (= e!2961092 (containsKey!3514 (t!360443 (t!360443 newBucket!218)) (_1!30653 (h!59406 newBucket!218))))))

(assert (= (and d!1517159 (not res!2012265)) b!4747233))

(assert (= (and b!4747233 res!2012266) b!4747234))

(declare-fun m!5704457 () Bool)

(assert (=> b!4747234 m!5704457))

(assert (=> b!4746972 d!1517159))

(assert (=> b!4747017 d!1517109))

(declare-fun d!1517161 () Bool)

(declare-fun res!2012267 () Bool)

(declare-fun e!2961093 () Bool)

(assert (=> d!1517161 (=> res!2012267 e!2961093)))

(assert (=> d!1517161 (= res!2012267 (is-Nil!53012 (toList!6051 lm!2023)))))

(assert (=> d!1517161 (= (forall!11724 (toList!6051 lm!2023) lambda!220470) e!2961093)))

(declare-fun b!4747235 () Bool)

(declare-fun e!2961094 () Bool)

(assert (=> b!4747235 (= e!2961093 e!2961094)))

(declare-fun res!2012268 () Bool)

(assert (=> b!4747235 (=> (not res!2012268) (not e!2961094))))

(assert (=> b!4747235 (= res!2012268 (dynLambda!21892 lambda!220470 (h!59407 (toList!6051 lm!2023))))))

(declare-fun b!4747236 () Bool)

(assert (=> b!4747236 (= e!2961094 (forall!11724 (t!360444 (toList!6051 lm!2023)) lambda!220470))))

(assert (= (and d!1517161 (not res!2012267)) b!4747235))

(assert (= (and b!4747235 res!2012268) b!4747236))

(declare-fun b_lambda!182951 () Bool)

(assert (=> (not b_lambda!182951) (not b!4747235)))

(declare-fun m!5704459 () Bool)

(assert (=> b!4747235 m!5704459))

(declare-fun m!5704461 () Bool)

(assert (=> b!4747236 m!5704461))

(assert (=> d!1517049 d!1517161))

(declare-fun d!1517163 () Bool)

(declare-fun lt!1909261 () Bool)

(assert (=> d!1517163 (= lt!1909261 (set.member key!4653 (content!9494 e!2960948)))))

(declare-fun e!2961096 () Bool)

(assert (=> d!1517163 (= lt!1909261 e!2961096)))

(declare-fun res!2012270 () Bool)

(assert (=> d!1517163 (=> (not res!2012270) (not e!2961096))))

(assert (=> d!1517163 (= res!2012270 (is-Cons!53015 e!2960948))))

(assert (=> d!1517163 (= (contains!16437 e!2960948 key!4653) lt!1909261)))

(declare-fun b!4747237 () Bool)

(declare-fun e!2961095 () Bool)

(assert (=> b!4747237 (= e!2961096 e!2961095)))

(declare-fun res!2012269 () Bool)

(assert (=> b!4747237 (=> res!2012269 e!2961095)))

(assert (=> b!4747237 (= res!2012269 (= (h!59412 e!2960948) key!4653))))

(declare-fun b!4747238 () Bool)

(assert (=> b!4747238 (= e!2961095 (contains!16437 (t!360447 e!2960948) key!4653))))

(assert (= (and d!1517163 res!2012270) b!4747237))

(assert (= (and b!4747237 (not res!2012269)) b!4747238))

(declare-fun m!5704463 () Bool)

(assert (=> d!1517163 m!5704463))

(declare-fun m!5704465 () Bool)

(assert (=> d!1517163 m!5704465))

(declare-fun m!5704467 () Bool)

(assert (=> b!4747238 m!5704467))

(assert (=> bm!332177 d!1517163))

(assert (=> d!1517067 d!1517153))

(declare-fun bs!1138439 () Bool)

(declare-fun b!4747299 () Bool)

(assert (= bs!1138439 (and b!4747299 b!4747129)))

(declare-fun lambda!220550 () Int)

(assert (=> bs!1138439 (= (= (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) (= lambda!220550 lambda!220489))))

(assert (=> b!4747299 true))

(declare-fun bs!1138440 () Bool)

(declare-fun b!4747294 () Bool)

(assert (= bs!1138440 (and b!4747294 b!4747129)))

(declare-fun lambda!220551 () Int)

(assert (=> bs!1138440 (= (= (Cons!53011 (h!59406 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))) (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) (= lambda!220551 lambda!220489))))

(declare-fun bs!1138441 () Bool)

(assert (= bs!1138441 (and b!4747294 b!4747299)))

(assert (=> bs!1138441 (= (= (Cons!53011 (h!59406 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))) (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))) (= lambda!220551 lambda!220550))))

(assert (=> b!4747294 true))

(declare-fun bs!1138442 () Bool)

(declare-fun b!4747298 () Bool)

(assert (= bs!1138442 (and b!4747298 b!4747129)))

(declare-fun lambda!220552 () Int)

(assert (=> bs!1138442 (= lambda!220552 lambda!220489)))

(declare-fun bs!1138443 () Bool)

(assert (= bs!1138443 (and b!4747298 b!4747299)))

(assert (=> bs!1138443 (= (= (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))) (= lambda!220552 lambda!220550))))

(declare-fun bs!1138444 () Bool)

(assert (= bs!1138444 (and b!4747298 b!4747294)))

(assert (=> bs!1138444 (= (= (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) (Cons!53011 (h!59406 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))))) (= lambda!220552 lambda!220551))))

(assert (=> b!4747298 true))

(declare-fun bs!1138445 () Bool)

(declare-fun b!4747292 () Bool)

(assert (= bs!1138445 (and b!4747292 b!4747130)))

(declare-fun lambda!220553 () Int)

(assert (=> bs!1138445 (= lambda!220553 lambda!220490)))

(declare-fun lt!1909305 () List!53139)

(declare-fun e!2961124 () Bool)

(assert (=> b!4747292 (= e!2961124 (= (content!9494 lt!1909305) (content!9494 (map!11736 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) lambda!220553))))))

(declare-fun b!4747293 () Bool)

(declare-fun e!2961123 () Unit!134407)

(declare-fun Unit!134426 () Unit!134407)

(assert (=> b!4747293 (= e!2961123 Unit!134426)))

(declare-fun e!2961125 () List!53139)

(assert (=> b!4747294 (= e!2961125 (Cons!53015 (_1!30653 (h!59406 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))) (getKeysList!997 (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))))))))

(declare-fun c!810816 () Bool)

(assert (=> b!4747294 (= c!810816 (containsKey!3515 (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) (_1!30653 (h!59406 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))))))))

(declare-fun lt!1909302 () Unit!134407)

(assert (=> b!4747294 (= lt!1909302 e!2961123)))

(declare-fun c!810817 () Bool)

(assert (=> b!4747294 (= c!810817 (contains!16437 (getKeysList!997 (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))) (_1!30653 (h!59406 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))))))))

(declare-fun lt!1909301 () Unit!134407)

(declare-fun e!2961126 () Unit!134407)

(assert (=> b!4747294 (= lt!1909301 e!2961126)))

(declare-fun lt!1909300 () List!53139)

(assert (=> b!4747294 (= lt!1909300 (getKeysList!997 (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))))))

(declare-fun lt!1909299 () Unit!134407)

(declare-fun lemmaForallContainsAddHeadPreserves!300 (List!53135 List!53139 tuple2!54718) Unit!134407)

(assert (=> b!4747294 (= lt!1909299 (lemmaForallContainsAddHeadPreserves!300 (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) lt!1909300 (h!59406 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))))))

(assert (=> b!4747294 (forall!11728 lt!1909300 lambda!220551)))

(declare-fun lt!1909303 () Unit!134407)

(assert (=> b!4747294 (= lt!1909303 lt!1909299)))

(declare-fun b!4747295 () Bool)

(declare-fun res!2012293 () Bool)

(assert (=> b!4747295 (=> (not res!2012293) (not e!2961124))))

(assert (=> b!4747295 (= res!2012293 (= (length!620 lt!1909305) (length!621 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))))))

(declare-fun b!4747297 () Bool)

(declare-fun Unit!134427 () Unit!134407)

(assert (=> b!4747297 (= e!2961126 Unit!134427)))

(declare-fun res!2012292 () Bool)

(assert (=> b!4747298 (=> (not res!2012292) (not e!2961124))))

(assert (=> b!4747298 (= res!2012292 (forall!11728 lt!1909305 lambda!220552))))

(declare-fun d!1517165 () Bool)

(assert (=> d!1517165 e!2961124))

(declare-fun res!2012294 () Bool)

(assert (=> d!1517165 (=> (not res!2012294) (not e!2961124))))

(assert (=> d!1517165 (= res!2012294 (noDuplicate!882 lt!1909305))))

(assert (=> d!1517165 (= lt!1909305 e!2961125)))

(declare-fun c!810815 () Bool)

(assert (=> d!1517165 (= c!810815 (is-Cons!53011 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))))))

(assert (=> d!1517165 (invariantList!1558 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))))

(assert (=> d!1517165 (= (getKeysList!997 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) lt!1909305)))

(declare-fun b!4747296 () Bool)

(assert (=> b!4747296 false))

(declare-fun Unit!134428 () Unit!134407)

(assert (=> b!4747296 (= e!2961123 Unit!134428)))

(assert (=> b!4747299 false))

(declare-fun lt!1909304 () Unit!134407)

(declare-fun forallContained!3753 (List!53139 Int K!14353) Unit!134407)

(assert (=> b!4747299 (= lt!1909304 (forallContained!3753 (getKeysList!997 (t!360443 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))) lambda!220550 (_1!30653 (h!59406 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))))))))

(declare-fun Unit!134429 () Unit!134407)

(assert (=> b!4747299 (= e!2961126 Unit!134429)))

(declare-fun b!4747300 () Bool)

(assert (=> b!4747300 (= e!2961125 Nil!53015)))

(assert (= (and d!1517165 c!810815) b!4747294))

(assert (= (and d!1517165 (not c!810815)) b!4747300))

(assert (= (and b!4747294 c!810816) b!4747296))

(assert (= (and b!4747294 (not c!810816)) b!4747293))

(assert (= (and b!4747294 c!810817) b!4747299))

(assert (= (and b!4747294 (not c!810817)) b!4747297))

(assert (= (and d!1517165 res!2012294) b!4747295))

(assert (= (and b!4747295 res!2012293) b!4747298))

(assert (= (and b!4747298 res!2012292) b!4747292))

(declare-fun m!5704511 () Bool)

(assert (=> b!4747298 m!5704511))

(declare-fun m!5704513 () Bool)

(assert (=> b!4747292 m!5704513))

(declare-fun m!5704515 () Bool)

(assert (=> b!4747292 m!5704515))

(assert (=> b!4747292 m!5704515))

(declare-fun m!5704517 () Bool)

(assert (=> b!4747292 m!5704517))

(declare-fun m!5704519 () Bool)

(assert (=> b!4747299 m!5704519))

(assert (=> b!4747299 m!5704519))

(declare-fun m!5704521 () Bool)

(assert (=> b!4747299 m!5704521))

(assert (=> b!4747294 m!5704519))

(assert (=> b!4747294 m!5704519))

(declare-fun m!5704523 () Bool)

(assert (=> b!4747294 m!5704523))

(declare-fun m!5704525 () Bool)

(assert (=> b!4747294 m!5704525))

(declare-fun m!5704527 () Bool)

(assert (=> b!4747294 m!5704527))

(declare-fun m!5704529 () Bool)

(assert (=> b!4747294 m!5704529))

(declare-fun m!5704531 () Bool)

(assert (=> b!4747295 m!5704531))

(assert (=> b!4747295 m!5704333))

(declare-fun m!5704533 () Bool)

(assert (=> d!1517165 m!5704533))

(assert (=> d!1517165 m!5704453))

(assert (=> b!4747015 d!1517165))

(assert (=> b!4747016 d!1517107))

(assert (=> b!4747016 d!1517109))

(declare-fun d!1517175 () Bool)

(assert (=> d!1517175 (isDefined!9750 (getValueByKey!2046 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653))))

(declare-fun lt!1909313 () Unit!134407)

(declare-fun choose!33771 (List!53135 K!14353) Unit!134407)

(assert (=> d!1517175 (= lt!1909313 (choose!33771 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653))))

(assert (=> d!1517175 (invariantList!1558 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))))

(assert (=> d!1517175 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1937 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653) lt!1909313)))

(declare-fun bs!1138447 () Bool)

(assert (= bs!1138447 d!1517175))

(assert (=> bs!1138447 m!5704249))

(assert (=> bs!1138447 m!5704249))

(assert (=> bs!1138447 m!5704251))

(declare-fun m!5704539 () Bool)

(assert (=> bs!1138447 m!5704539))

(assert (=> bs!1138447 m!5704453))

(assert (=> b!4747014 d!1517175))

(assert (=> b!4747014 d!1517111))

(assert (=> b!4747014 d!1517113))

(declare-fun d!1517181 () Bool)

(assert (=> d!1517181 (contains!16437 (getKeysList!997 (toList!6052 (extractMap!2107 (toList!6051 lm!2023)))) key!4653)))

(declare-fun lt!1909319 () Unit!134407)

(declare-fun choose!33772 (List!53135 K!14353) Unit!134407)

(assert (=> d!1517181 (= lt!1909319 (choose!33772 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653))))

(assert (=> d!1517181 (invariantList!1558 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))))))

(assert (=> d!1517181 (= (lemmaInListThenGetKeysListContains!992 (toList!6052 (extractMap!2107 (toList!6051 lm!2023))) key!4653) lt!1909319)))

(declare-fun bs!1138449 () Bool)

(assert (= bs!1138449 d!1517181))

(assert (=> bs!1138449 m!5704237))

(assert (=> bs!1138449 m!5704237))

(declare-fun m!5704547 () Bool)

(assert (=> bs!1138449 m!5704547))

(declare-fun m!5704549 () Bool)

(assert (=> bs!1138449 m!5704549))

(assert (=> bs!1138449 m!5704453))

(assert (=> b!4747014 d!1517181))

(declare-fun d!1517187 () Bool)

(declare-fun res!2012307 () Bool)

(declare-fun e!2961139 () Bool)

(assert (=> d!1517187 (=> res!2012307 e!2961139)))

(assert (=> d!1517187 (= res!2012307 (is-Nil!53012 (t!360444 (toList!6051 lm!2023))))))

(assert (=> d!1517187 (= (forall!11724 (t!360444 (toList!6051 lm!2023)) lambda!220461) e!2961139)))

(declare-fun b!4747315 () Bool)

(declare-fun e!2961140 () Bool)

(assert (=> b!4747315 (= e!2961139 e!2961140)))

(declare-fun res!2012308 () Bool)

(assert (=> b!4747315 (=> (not res!2012308) (not e!2961140))))

(assert (=> b!4747315 (= res!2012308 (dynLambda!21892 lambda!220461 (h!59407 (t!360444 (toList!6051 lm!2023)))))))

(declare-fun b!4747316 () Bool)

(assert (=> b!4747316 (= e!2961140 (forall!11724 (t!360444 (t!360444 (toList!6051 lm!2023))) lambda!220461))))

(assert (= (and d!1517187 (not res!2012307)) b!4747315))

(assert (= (and b!4747315 res!2012308) b!4747316))

(declare-fun b_lambda!182957 () Bool)

(assert (=> (not b_lambda!182957) (not b!4747315)))

(declare-fun m!5704551 () Bool)

(assert (=> b!4747315 m!5704551))

(declare-fun m!5704553 () Bool)

(assert (=> b!4747316 m!5704553))

(assert (=> b!4746965 d!1517187))

(declare-fun d!1517189 () Bool)

(declare-fun noDuplicatedKeys!396 (List!53135) Bool)

(assert (=> d!1517189 (= (invariantList!1558 (toList!6052 lt!1909155)) (noDuplicatedKeys!396 (toList!6052 lt!1909155)))))

(declare-fun bs!1138450 () Bool)

(assert (= bs!1138450 d!1517189))

(declare-fun m!5704555 () Bool)

(assert (=> bs!1138450 m!5704555))

(assert (=> d!1517077 d!1517189))

(declare-fun d!1517191 () Bool)

(declare-fun res!2012309 () Bool)

(declare-fun e!2961141 () Bool)

(assert (=> d!1517191 (=> res!2012309 e!2961141)))

(assert (=> d!1517191 (= res!2012309 (is-Nil!53012 (toList!6051 lm!2023)))))

(assert (=> d!1517191 (= (forall!11724 (toList!6051 lm!2023) lambda!220481) e!2961141)))

(declare-fun b!4747317 () Bool)

(declare-fun e!2961142 () Bool)

(assert (=> b!4747317 (= e!2961141 e!2961142)))

(declare-fun res!2012310 () Bool)

(assert (=> b!4747317 (=> (not res!2012310) (not e!2961142))))

(assert (=> b!4747317 (= res!2012310 (dynLambda!21892 lambda!220481 (h!59407 (toList!6051 lm!2023))))))

(declare-fun b!4747318 () Bool)

(assert (=> b!4747318 (= e!2961142 (forall!11724 (t!360444 (toList!6051 lm!2023)) lambda!220481))))

(assert (= (and d!1517191 (not res!2012309)) b!4747317))

(assert (= (and b!4747317 res!2012310) b!4747318))

(declare-fun b_lambda!182959 () Bool)

(assert (=> (not b_lambda!182959) (not b!4747317)))

(declare-fun m!5704557 () Bool)

(assert (=> b!4747317 m!5704557))

(declare-fun m!5704559 () Bool)

(assert (=> b!4747318 m!5704559))

(assert (=> d!1517077 d!1517191))

(declare-fun b!4747319 () Bool)

(declare-fun e!2961143 () Bool)

(declare-fun tp!1349642 () Bool)

(assert (=> b!4747319 (= e!2961143 (and tp_is_empty!31617 tp_is_empty!31619 tp!1349642))))

(assert (=> b!4747057 (= tp!1349631 e!2961143)))

(assert (= (and b!4747057 (is-Cons!53011 (t!360443 (t!360443 newBucket!218)))) b!4747319))

(declare-fun tp!1349643 () Bool)

(declare-fun e!2961144 () Bool)

(declare-fun b!4747320 () Bool)

(assert (=> b!4747320 (= e!2961144 (and tp_is_empty!31617 tp_is_empty!31619 tp!1349643))))

(assert (=> b!4747051 (= tp!1349624 e!2961144)))

(assert (= (and b!4747051 (is-Cons!53011 (t!360443 (t!360443 oldBucket!34)))) b!4747320))

(declare-fun tp!1349644 () Bool)

(declare-fun b!4747321 () Bool)

(declare-fun e!2961145 () Bool)

(assert (=> b!4747321 (= e!2961145 (and tp_is_empty!31617 tp_is_empty!31619 tp!1349644))))

(assert (=> b!4747056 (= tp!1349629 e!2961145)))

(assert (= (and b!4747056 (is-Cons!53011 (_2!30654 (h!59407 (toList!6051 lm!2023))))) b!4747321))

(declare-fun b!4747322 () Bool)

(declare-fun e!2961146 () Bool)

(declare-fun tp!1349645 () Bool)

(declare-fun tp!1349646 () Bool)

(assert (=> b!4747322 (= e!2961146 (and tp!1349645 tp!1349646))))

(assert (=> b!4747056 (= tp!1349630 e!2961146)))

(assert (= (and b!4747056 (is-Cons!53012 (t!360444 (toList!6051 lm!2023)))) b!4747322))

(declare-fun b_lambda!182961 () Bool)

(assert (= b_lambda!182949 (or d!1517047 b_lambda!182961)))

(declare-fun bs!1138452 () Bool)

(declare-fun d!1517195 () Bool)

(assert (= bs!1138452 (and d!1517195 d!1517047)))

(assert (=> bs!1138452 (= (dynLambda!21894 lambda!220467 (h!59406 newBucket!218)) (= (hash!4501 hashF!1323 (_1!30653 (h!59406 newBucket!218))) hash!405))))

(declare-fun m!5704567 () Bool)

(assert (=> bs!1138452 m!5704567))

(assert (=> b!4747223 d!1517195))

(declare-fun b_lambda!182963 () Bool)

(assert (= b_lambda!182941 (or d!1517065 b_lambda!182963)))

(declare-fun bs!1138453 () Bool)

(declare-fun d!1517199 () Bool)

(assert (= bs!1138453 (and d!1517199 d!1517065)))

(assert (=> bs!1138453 (= (dynLambda!21894 lambda!220471 (h!59406 oldBucket!34)) (= (hash!4501 hashF!1323 (_1!30653 (h!59406 oldBucket!34))) hash!405))))

(declare-fun m!5704569 () Bool)

(assert (=> bs!1138453 m!5704569))

(assert (=> b!4747108 d!1517199))

(declare-fun b_lambda!182965 () Bool)

(assert (= b_lambda!182957 (or start!484782 b_lambda!182965)))

(declare-fun bs!1138454 () Bool)

(declare-fun d!1517201 () Bool)

(assert (= bs!1138454 (and d!1517201 start!484782)))

(assert (=> bs!1138454 (= (dynLambda!21892 lambda!220461 (h!59407 (t!360444 (toList!6051 lm!2023)))) (noDuplicateKeys!2081 (_2!30654 (h!59407 (t!360444 (toList!6051 lm!2023))))))))

(declare-fun m!5704573 () Bool)

(assert (=> bs!1138454 m!5704573))

(assert (=> b!4747315 d!1517201))

(declare-fun b_lambda!182967 () Bool)

(assert (= b_lambda!182951 (or d!1517049 b_lambda!182967)))

(declare-fun bs!1138455 () Bool)

(declare-fun d!1517205 () Bool)

(assert (= bs!1138455 (and d!1517205 d!1517049)))

(assert (=> bs!1138455 (= (dynLambda!21892 lambda!220470 (h!59407 (toList!6051 lm!2023))) (allKeysSameHash!1907 (_2!30654 (h!59407 (toList!6051 lm!2023))) (_1!30654 (h!59407 (toList!6051 lm!2023))) hashF!1323))))

(declare-fun m!5704577 () Bool)

(assert (=> bs!1138455 m!5704577))

(assert (=> b!4747235 d!1517205))

(declare-fun b_lambda!182969 () Bool)

(assert (= b_lambda!182959 (or d!1517077 b_lambda!182969)))

(declare-fun bs!1138456 () Bool)

(declare-fun d!1517207 () Bool)

(assert (= bs!1138456 (and d!1517207 d!1517077)))

(assert (=> bs!1138456 (= (dynLambda!21892 lambda!220481 (h!59407 (toList!6051 lm!2023))) (noDuplicateKeys!2081 (_2!30654 (h!59407 (toList!6051 lm!2023)))))))

(assert (=> bs!1138456 m!5704279))

(assert (=> b!4747317 d!1517207))

(push 1)

(assert (not bs!1138456))

(assert (not d!1517103))

(assert (not d!1517165))

(assert (not b!4747316))

(assert (not d!1517107))

(assert (not b!4747128))

(assert (not b!4747320))

(assert (not b_lambda!182963))

(assert (not b!4747115))

(assert (not bs!1138455))

(assert (not b!4747234))

(assert (not b!4747224))

(assert (not b!4747201))

(assert (not bs!1138453))

(assert (not bs!1138454))

(assert (not b!4747230))

(assert (not b_lambda!182937))

(assert (not b!4747292))

(assert (not b!4747319))

(assert (not b!4747295))

(assert (not b!4747298))

(assert (not d!1517115))

(assert tp_is_empty!31617)

(assert (not b!4747211))

(assert (not b!4747102))

(assert (not b!4747218))

(assert (not d!1517111))

(assert (not b!4747321))

(assert (not b!4747236))

(assert (not b!4747103))

(assert tp_is_empty!31619)

(assert (not b_lambda!182967))

(assert (not b!4747220))

(assert (not b!4747318))

(assert (not bm!332187))

(assert (not b!4747121))

(assert (not b!4747222))

(assert (not b!4747143))

(assert (not b!4747109))

(assert (not b!4747219))

(assert (not b!4747130))

(assert (not b!4747238))

(assert (not b_lambda!182969))

(assert (not d!1517117))

(assert (not b!4747299))

(assert (not b!4747202))

(assert (not b!4747322))

(assert (not b!4747294))

(assert (not bm!332188))

(assert (not d!1517175))

(assert (not d!1517109))

(assert (not b_lambda!182965))

(assert (not d!1517181))

(assert (not bs!1138452))

(assert (not b!4747199))

(assert (not bm!332189))

(assert (not b!4747232))

(assert (not b_lambda!182961))

(assert (not d!1517155))

(assert (not b!4747147))

(assert (not d!1517189))

(assert (not d!1517163))

(assert (not d!1517143))

(assert (not b!4747221))

(assert (not b!4747129))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

