; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489080 () Bool)

(assert start!489080)

(declare-fun b!4773933 () Bool)

(declare-fun e!2980286 () Bool)

(declare-fun tp!1356909 () Bool)

(assert (=> b!4773933 (= e!2980286 tp!1356909)))

(declare-fun e!2980285 () Bool)

(declare-datatypes ((K!15292 0))(
  ( (K!15293 (val!20539 Int)) )
))
(declare-datatypes ((V!15538 0))(
  ( (V!15539 (val!20540 Int)) )
))
(declare-datatypes ((tuple2!56052 0))(
  ( (tuple2!56053 (_1!31320 K!15292) (_2!31320 V!15538)) )
))
(declare-datatypes ((List!53881 0))(
  ( (Nil!53757) (Cons!53757 (h!60171 tuple2!56052) (t!361331 List!53881)) )
))
(declare-fun lt!1937001 () List!53881)

(declare-fun lt!1936998 () (_ BitVec 64))

(declare-datatypes ((tuple2!56054 0))(
  ( (tuple2!56055 (_1!31321 (_ BitVec 64)) (_2!31321 List!53881)) )
))
(declare-datatypes ((List!53882 0))(
  ( (Nil!53758) (Cons!53758 (h!60172 tuple2!56054) (t!361332 List!53882)) )
))
(declare-datatypes ((ListLongMap!4943 0))(
  ( (ListLongMap!4944 (toList!6529 List!53882)) )
))
(declare-fun lm!1309 () ListLongMap!4943)

(declare-fun b!4773934 () Bool)

(declare-datatypes ((Option!12814 0))(
  ( (None!12813) (Some!12813 (v!47954 List!53881)) )
))
(declare-fun getValueByKey!2233 (List!53882 (_ BitVec 64)) Option!12814)

(assert (=> b!4773934 (= e!2980285 (= (getValueByKey!2233 (toList!6529 lm!1309) lt!1936998) (Some!12813 lt!1937001)))))

(declare-datatypes ((ListMap!6009 0))(
  ( (ListMap!6010 (toList!6530 List!53881)) )
))
(declare-fun lt!1936994 () ListMap!6009)

(declare-fun key!2872 () K!15292)

(declare-fun v!9615 () V!15538)

(declare-fun apply!12786 (ListMap!6009 K!15292) V!15538)

(assert (=> b!4773934 (= (apply!12786 lt!1936994 key!2872) v!9615)))

(declare-datatypes ((Hashable!6721 0))(
  ( (HashableExt!6720 (__x!32744 Int)) )
))
(declare-fun hashF!980 () Hashable!6721)

(declare-datatypes ((Unit!138746 0))(
  ( (Unit!138747) )
))
(declare-fun lt!1937006 () Unit!138746)

(declare-fun lemmaExtractMapPreservesMapping!25 (ListLongMap!4943 K!15292 V!15538 Hashable!6721) Unit!138746)

(assert (=> b!4773934 (= lt!1937006 (lemmaExtractMapPreservesMapping!25 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1936997 () Unit!138746)

(declare-fun lemmaInGenericMapThenInLongMap!243 (ListLongMap!4943 K!15292 Hashable!6721) Unit!138746)

(assert (=> b!4773934 (= lt!1936997 (lemmaInGenericMapThenInLongMap!243 lm!1309 key!2872 hashF!980))))

(declare-fun res!2025439 () Bool)

(declare-fun e!2980287 () Bool)

(assert (=> start!489080 (=> (not res!2025439) (not e!2980287))))

(declare-fun lambda!226098 () Int)

(declare-fun forall!11989 (List!53882 Int) Bool)

(assert (=> start!489080 (= res!2025439 (forall!11989 (toList!6529 lm!1309) lambda!226098))))

(assert (=> start!489080 e!2980287))

(declare-fun inv!69319 (ListLongMap!4943) Bool)

(assert (=> start!489080 (and (inv!69319 lm!1309) e!2980286)))

(assert (=> start!489080 true))

(declare-fun tp_is_empty!32861 () Bool)

(assert (=> start!489080 tp_is_empty!32861))

(declare-fun tp_is_empty!32863 () Bool)

(assert (=> start!489080 tp_is_empty!32863))

(declare-fun b!4773935 () Bool)

(declare-fun e!2980289 () Bool)

(declare-fun e!2980288 () Bool)

(assert (=> b!4773935 (= e!2980289 (not e!2980288))))

(declare-fun res!2025442 () Bool)

(assert (=> b!4773935 (=> res!2025442 e!2980288)))

(declare-datatypes ((Option!12815 0))(
  ( (None!12814) (Some!12814 (v!47955 tuple2!56052)) )
))
(declare-fun lt!1937000 () Option!12815)

(declare-fun get!18211 (Option!12815) tuple2!56052)

(assert (=> b!4773935 (= res!2025442 (not (= (_2!31320 (get!18211 lt!1937000)) v!9615)))))

(declare-fun isDefined!9960 (Option!12815) Bool)

(assert (=> b!4773935 (isDefined!9960 lt!1937000)))

(declare-fun getPair!729 (List!53881 K!15292) Option!12815)

(assert (=> b!4773935 (= lt!1937000 (getPair!729 lt!1937001 key!2872))))

(declare-fun lt!1936995 () Unit!138746)

(declare-fun lt!1937003 () tuple2!56054)

(declare-fun forallContained!3962 (List!53882 Int tuple2!56054) Unit!138746)

(assert (=> b!4773935 (= lt!1936995 (forallContained!3962 (toList!6529 lm!1309) lambda!226098 lt!1937003))))

(declare-fun lt!1936999 () Unit!138746)

(declare-fun lemmaInGenMapThenGetPairDefined!503 (ListLongMap!4943 K!15292 Hashable!6721) Unit!138746)

(assert (=> b!4773935 (= lt!1936999 (lemmaInGenMapThenGetPairDefined!503 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1937004 () Unit!138746)

(assert (=> b!4773935 (= lt!1937004 (forallContained!3962 (toList!6529 lm!1309) lambda!226098 lt!1937003))))

(declare-fun contains!17209 (List!53882 tuple2!56054) Bool)

(assert (=> b!4773935 (contains!17209 (toList!6529 lm!1309) lt!1937003)))

(assert (=> b!4773935 (= lt!1937003 (tuple2!56055 lt!1936998 lt!1937001))))

(declare-fun lt!1937002 () Unit!138746)

(declare-fun lemmaGetValueImpliesTupleContained!524 (ListLongMap!4943 (_ BitVec 64) List!53881) Unit!138746)

(assert (=> b!4773935 (= lt!1937002 (lemmaGetValueImpliesTupleContained!524 lm!1309 lt!1936998 lt!1937001))))

(declare-fun apply!12787 (ListLongMap!4943 (_ BitVec 64)) List!53881)

(assert (=> b!4773935 (= lt!1937001 (apply!12787 lm!1309 lt!1936998))))

(declare-fun contains!17210 (ListLongMap!4943 (_ BitVec 64)) Bool)

(assert (=> b!4773935 (contains!17210 lm!1309 lt!1936998)))

(declare-fun hash!4696 (Hashable!6721 K!15292) (_ BitVec 64))

(assert (=> b!4773935 (= lt!1936998 (hash!4696 hashF!980 key!2872))))

(declare-fun lt!1936996 () Unit!138746)

(declare-fun lemmaInGenMapThenLongMapContainsHash!933 (ListLongMap!4943 K!15292 Hashable!6721) Unit!138746)

(assert (=> b!4773935 (= lt!1936996 (lemmaInGenMapThenLongMapContainsHash!933 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773936 () Bool)

(assert (=> b!4773936 (= e!2980288 e!2980285)))

(declare-fun res!2025440 () Bool)

(assert (=> b!4773936 (=> res!2025440 e!2980285)))

(assert (=> b!4773936 (= res!2025440 (not (forall!11989 (toList!6529 lm!1309) lambda!226098)))))

(declare-fun getValue!35 (List!53882 K!15292) V!15538)

(assert (=> b!4773936 (= (getValue!35 (toList!6529 lm!1309) key!2872) v!9615)))

(declare-fun lt!1937007 () Unit!138746)

(declare-fun lemmaGetValueEquivToGetPair!35 (ListLongMap!4943 K!15292 V!15538 Hashable!6721) Unit!138746)

(assert (=> b!4773936 (= lt!1937007 (lemmaGetValueEquivToGetPair!35 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!377 (List!53882 K!15292) Bool)

(assert (=> b!4773936 (containsKeyBiggerList!377 (toList!6529 lm!1309) key!2872)))

(declare-fun lt!1937005 () Unit!138746)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!235 (ListLongMap!4943 K!15292 Hashable!6721) Unit!138746)

(assert (=> b!4773936 (= lt!1937005 (lemmaInLongMapThenContainsKeyBiggerList!235 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773937 () Bool)

(assert (=> b!4773937 (= e!2980287 e!2980289)))

(declare-fun res!2025443 () Bool)

(assert (=> b!4773937 (=> (not res!2025443) (not e!2980289))))

(declare-fun contains!17211 (ListMap!6009 K!15292) Bool)

(assert (=> b!4773937 (= res!2025443 (contains!17211 lt!1936994 key!2872))))

(declare-fun extractMap!2256 (List!53882) ListMap!6009)

(assert (=> b!4773937 (= lt!1936994 (extractMap!2256 (toList!6529 lm!1309)))))

(declare-fun b!4773938 () Bool)

(declare-fun res!2025441 () Bool)

(assert (=> b!4773938 (=> (not res!2025441) (not e!2980287))))

(declare-fun allKeysSameHashInMap!2126 (ListLongMap!4943 Hashable!6721) Bool)

(assert (=> b!4773938 (= res!2025441 (allKeysSameHashInMap!2126 lm!1309 hashF!980))))

(assert (= (and start!489080 res!2025439) b!4773938))

(assert (= (and b!4773938 res!2025441) b!4773937))

(assert (= (and b!4773937 res!2025443) b!4773935))

(assert (= (and b!4773935 (not res!2025442)) b!4773936))

(assert (= (and b!4773936 (not res!2025440)) b!4773934))

(assert (= start!489080 b!4773933))

(declare-fun m!5747792 () Bool)

(assert (=> b!4773936 m!5747792))

(declare-fun m!5747794 () Bool)

(assert (=> b!4773936 m!5747794))

(declare-fun m!5747796 () Bool)

(assert (=> b!4773936 m!5747796))

(declare-fun m!5747798 () Bool)

(assert (=> b!4773936 m!5747798))

(declare-fun m!5747800 () Bool)

(assert (=> b!4773936 m!5747800))

(declare-fun m!5747802 () Bool)

(assert (=> b!4773937 m!5747802))

(declare-fun m!5747804 () Bool)

(assert (=> b!4773937 m!5747804))

(declare-fun m!5747806 () Bool)

(assert (=> b!4773935 m!5747806))

(declare-fun m!5747808 () Bool)

(assert (=> b!4773935 m!5747808))

(declare-fun m!5747810 () Bool)

(assert (=> b!4773935 m!5747810))

(declare-fun m!5747812 () Bool)

(assert (=> b!4773935 m!5747812))

(declare-fun m!5747814 () Bool)

(assert (=> b!4773935 m!5747814))

(declare-fun m!5747816 () Bool)

(assert (=> b!4773935 m!5747816))

(declare-fun m!5747818 () Bool)

(assert (=> b!4773935 m!5747818))

(declare-fun m!5747820 () Bool)

(assert (=> b!4773935 m!5747820))

(declare-fun m!5747822 () Bool)

(assert (=> b!4773935 m!5747822))

(declare-fun m!5747824 () Bool)

(assert (=> b!4773935 m!5747824))

(assert (=> b!4773935 m!5747818))

(declare-fun m!5747826 () Bool)

(assert (=> b!4773935 m!5747826))

(declare-fun m!5747828 () Bool)

(assert (=> b!4773938 m!5747828))

(declare-fun m!5747830 () Bool)

(assert (=> b!4773934 m!5747830))

(declare-fun m!5747832 () Bool)

(assert (=> b!4773934 m!5747832))

(declare-fun m!5747834 () Bool)

(assert (=> b!4773934 m!5747834))

(declare-fun m!5747836 () Bool)

(assert (=> b!4773934 m!5747836))

(assert (=> start!489080 m!5747794))

(declare-fun m!5747838 () Bool)

(assert (=> start!489080 m!5747838))

(push 1)

(assert tp_is_empty!32863)

(assert (not b!4773935))

(assert (not b!4773933))

(assert (not b!4773936))

(assert (not start!489080))

(assert tp_is_empty!32861)

(assert (not b!4773934))

(assert (not b!4773938))

(assert (not b!4773937))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1150195 () Bool)

(declare-fun d!1525696 () Bool)

(assert (= bs!1150195 (and d!1525696 start!489080)))

(declare-fun lambda!226110 () Int)

(assert (=> bs!1150195 (not (= lambda!226110 lambda!226098))))

(assert (=> d!1525696 true))

(assert (=> d!1525696 (= (allKeysSameHashInMap!2126 lm!1309 hashF!980) (forall!11989 (toList!6529 lm!1309) lambda!226110))))

(declare-fun bs!1150196 () Bool)

(assert (= bs!1150196 d!1525696))

(declare-fun m!5747888 () Bool)

(assert (=> bs!1150196 m!5747888))

(assert (=> b!4773938 d!1525696))

(declare-fun d!1525698 () Bool)

(declare-fun res!2025463 () Bool)

(declare-fun e!2980309 () Bool)

(assert (=> d!1525698 (=> res!2025463 e!2980309)))

(assert (=> d!1525698 (= res!2025463 (is-Nil!53758 (toList!6529 lm!1309)))))

(assert (=> d!1525698 (= (forall!11989 (toList!6529 lm!1309) lambda!226098) e!2980309)))

(declare-fun b!4773963 () Bool)

(declare-fun e!2980310 () Bool)

(assert (=> b!4773963 (= e!2980309 e!2980310)))

(declare-fun res!2025464 () Bool)

(assert (=> b!4773963 (=> (not res!2025464) (not e!2980310))))

(declare-fun dynLambda!21985 (Int tuple2!56054) Bool)

(assert (=> b!4773963 (= res!2025464 (dynLambda!21985 lambda!226098 (h!60172 (toList!6529 lm!1309))))))

(declare-fun b!4773964 () Bool)

(assert (=> b!4773964 (= e!2980310 (forall!11989 (t!361332 (toList!6529 lm!1309)) lambda!226098))))

(assert (= (and d!1525698 (not res!2025463)) b!4773963))

(assert (= (and b!4773963 res!2025464) b!4773964))

(declare-fun b_lambda!184879 () Bool)

(assert (=> (not b_lambda!184879) (not b!4773963)))

(declare-fun m!5747890 () Bool)

(assert (=> b!4773963 m!5747890))

(declare-fun m!5747892 () Bool)

(assert (=> b!4773964 m!5747892))

(assert (=> start!489080 d!1525698))

(declare-fun d!1525700 () Bool)

(declare-fun isStrictlySorted!826 (List!53882) Bool)

(assert (=> d!1525700 (= (inv!69319 lm!1309) (isStrictlySorted!826 (toList!6529 lm!1309)))))

(declare-fun bs!1150197 () Bool)

(assert (= bs!1150197 d!1525700))

(declare-fun m!5747894 () Bool)

(assert (=> bs!1150197 m!5747894))

(assert (=> start!489080 d!1525700))

(declare-fun d!1525702 () Bool)

(declare-fun c!814116 () Bool)

(assert (=> d!1525702 (= c!814116 (and (is-Cons!53758 (toList!6529 lm!1309)) (= (_1!31321 (h!60172 (toList!6529 lm!1309))) lt!1936998)))))

(declare-fun e!2980315 () Option!12814)

(assert (=> d!1525702 (= (getValueByKey!2233 (toList!6529 lm!1309) lt!1936998) e!2980315)))

(declare-fun b!4773973 () Bool)

(assert (=> b!4773973 (= e!2980315 (Some!12813 (_2!31321 (h!60172 (toList!6529 lm!1309)))))))

(declare-fun b!4773976 () Bool)

(declare-fun e!2980316 () Option!12814)

(assert (=> b!4773976 (= e!2980316 None!12813)))

(declare-fun b!4773974 () Bool)

(assert (=> b!4773974 (= e!2980315 e!2980316)))

(declare-fun c!814117 () Bool)

(assert (=> b!4773974 (= c!814117 (and (is-Cons!53758 (toList!6529 lm!1309)) (not (= (_1!31321 (h!60172 (toList!6529 lm!1309))) lt!1936998))))))

(declare-fun b!4773975 () Bool)

(assert (=> b!4773975 (= e!2980316 (getValueByKey!2233 (t!361332 (toList!6529 lm!1309)) lt!1936998))))

(assert (= (and d!1525702 c!814116) b!4773973))

(assert (= (and d!1525702 (not c!814116)) b!4773974))

(assert (= (and b!4773974 c!814117) b!4773975))

(assert (= (and b!4773974 (not c!814117)) b!4773976))

(declare-fun m!5747896 () Bool)

(assert (=> b!4773975 m!5747896))

(assert (=> b!4773934 d!1525702))

(declare-fun d!1525704 () Bool)

(declare-datatypes ((Option!12818 0))(
  ( (None!12817) (Some!12817 (v!47962 V!15538)) )
))
(declare-fun get!18213 (Option!12818) V!15538)

(declare-fun getValueByKey!2235 (List!53881 K!15292) Option!12818)

(assert (=> d!1525704 (= (apply!12786 lt!1936994 key!2872) (get!18213 (getValueByKey!2235 (toList!6530 lt!1936994) key!2872)))))

(declare-fun bs!1150198 () Bool)

(assert (= bs!1150198 d!1525704))

(declare-fun m!5747898 () Bool)

(assert (=> bs!1150198 m!5747898))

(assert (=> bs!1150198 m!5747898))

(declare-fun m!5747900 () Bool)

(assert (=> bs!1150198 m!5747900))

(assert (=> b!4773934 d!1525704))

(declare-fun bs!1150199 () Bool)

(declare-fun d!1525706 () Bool)

(assert (= bs!1150199 (and d!1525706 start!489080)))

(declare-fun lambda!226113 () Int)

(assert (=> bs!1150199 (= lambda!226113 lambda!226098)))

(declare-fun bs!1150200 () Bool)

(assert (= bs!1150200 (and d!1525706 d!1525696)))

(assert (=> bs!1150200 (not (= lambda!226113 lambda!226110))))

(assert (=> d!1525706 (= (apply!12786 (extractMap!2256 (toList!6529 lm!1309)) key!2872) v!9615)))

(declare-fun lt!1937052 () Unit!138746)

(declare-fun choose!34089 (ListLongMap!4943 K!15292 V!15538 Hashable!6721) Unit!138746)

(assert (=> d!1525706 (= lt!1937052 (choose!34089 lm!1309 key!2872 v!9615 hashF!980))))

(assert (=> d!1525706 (forall!11989 (toList!6529 lm!1309) lambda!226113)))

(assert (=> d!1525706 (= (lemmaExtractMapPreservesMapping!25 lm!1309 key!2872 v!9615 hashF!980) lt!1937052)))

(declare-fun bs!1150201 () Bool)

(assert (= bs!1150201 d!1525706))

(assert (=> bs!1150201 m!5747804))

(assert (=> bs!1150201 m!5747804))

(declare-fun m!5747902 () Bool)

(assert (=> bs!1150201 m!5747902))

(declare-fun m!5747904 () Bool)

(assert (=> bs!1150201 m!5747904))

(declare-fun m!5747906 () Bool)

(assert (=> bs!1150201 m!5747906))

(assert (=> b!4773934 d!1525706))

(declare-fun bs!1150202 () Bool)

(declare-fun d!1525710 () Bool)

(assert (= bs!1150202 (and d!1525710 start!489080)))

(declare-fun lambda!226116 () Int)

(assert (=> bs!1150202 (= lambda!226116 lambda!226098)))

(declare-fun bs!1150203 () Bool)

(assert (= bs!1150203 (and d!1525710 d!1525696)))

(assert (=> bs!1150203 (not (= lambda!226116 lambda!226110))))

(declare-fun bs!1150204 () Bool)

(assert (= bs!1150204 (and d!1525710 d!1525706)))

(assert (=> bs!1150204 (= lambda!226116 lambda!226113)))

(declare-fun e!2980323 () Bool)

(assert (=> d!1525710 e!2980323))

(declare-fun res!2025467 () Bool)

(assert (=> d!1525710 (=> (not res!2025467) (not e!2980323))))

(assert (=> d!1525710 (= res!2025467 (contains!17210 lm!1309 (hash!4696 hashF!980 key!2872)))))

(declare-fun lt!1937055 () Unit!138746)

(declare-fun choose!34090 (ListLongMap!4943 K!15292 Hashable!6721) Unit!138746)

(assert (=> d!1525710 (= lt!1937055 (choose!34090 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525710 (forall!11989 (toList!6529 lm!1309) lambda!226116)))

(assert (=> d!1525710 (= (lemmaInGenericMapThenInLongMap!243 lm!1309 key!2872 hashF!980) lt!1937055)))

(declare-fun b!4773987 () Bool)

(assert (=> b!4773987 (= e!2980323 (isDefined!9960 (getPair!729 (apply!12787 lm!1309 (hash!4696 hashF!980 key!2872)) key!2872)))))

(assert (= (and d!1525710 res!2025467) b!4773987))

(assert (=> d!1525710 m!5747810))

(assert (=> d!1525710 m!5747810))

(declare-fun m!5747908 () Bool)

(assert (=> d!1525710 m!5747908))

(declare-fun m!5747912 () Bool)

(assert (=> d!1525710 m!5747912))

(declare-fun m!5747914 () Bool)

(assert (=> d!1525710 m!5747914))

(assert (=> b!4773987 m!5747810))

(assert (=> b!4773987 m!5747810))

(declare-fun m!5747916 () Bool)

(assert (=> b!4773987 m!5747916))

(assert (=> b!4773987 m!5747916))

(declare-fun m!5747918 () Bool)

(assert (=> b!4773987 m!5747918))

(assert (=> b!4773987 m!5747918))

(declare-fun m!5747920 () Bool)

(assert (=> b!4773987 m!5747920))

(assert (=> b!4773934 d!1525710))

(declare-fun d!1525714 () Bool)

(assert (=> d!1525714 (= (get!18211 lt!1937000) (v!47955 lt!1937000))))

(assert (=> b!4773935 d!1525714))

(declare-fun bs!1150206 () Bool)

(declare-fun d!1525716 () Bool)

(assert (= bs!1150206 (and d!1525716 start!489080)))

(declare-fun lambda!226119 () Int)

(assert (=> bs!1150206 (= lambda!226119 lambda!226098)))

(declare-fun bs!1150207 () Bool)

(assert (= bs!1150207 (and d!1525716 d!1525696)))

(assert (=> bs!1150207 (not (= lambda!226119 lambda!226110))))

(declare-fun bs!1150208 () Bool)

(assert (= bs!1150208 (and d!1525716 d!1525706)))

(assert (=> bs!1150208 (= lambda!226119 lambda!226113)))

(declare-fun bs!1150209 () Bool)

(assert (= bs!1150209 (and d!1525716 d!1525710)))

(assert (=> bs!1150209 (= lambda!226119 lambda!226116)))

(assert (=> d!1525716 (contains!17210 lm!1309 (hash!4696 hashF!980 key!2872))))

(declare-fun lt!1937058 () Unit!138746)

(declare-fun choose!34091 (ListLongMap!4943 K!15292 Hashable!6721) Unit!138746)

(assert (=> d!1525716 (= lt!1937058 (choose!34091 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525716 (forall!11989 (toList!6529 lm!1309) lambda!226119)))

(assert (=> d!1525716 (= (lemmaInGenMapThenLongMapContainsHash!933 lm!1309 key!2872 hashF!980) lt!1937058)))

(declare-fun bs!1150210 () Bool)

(assert (= bs!1150210 d!1525716))

(assert (=> bs!1150210 m!5747810))

(assert (=> bs!1150210 m!5747810))

(assert (=> bs!1150210 m!5747908))

(declare-fun m!5747926 () Bool)

(assert (=> bs!1150210 m!5747926))

(declare-fun m!5747928 () Bool)

(assert (=> bs!1150210 m!5747928))

(assert (=> b!4773935 d!1525716))

(declare-fun d!1525720 () Bool)

(declare-fun e!2980331 () Bool)

(assert (=> d!1525720 e!2980331))

(declare-fun res!2025470 () Bool)

(assert (=> d!1525720 (=> res!2025470 e!2980331)))

(declare-fun lt!1937070 () Bool)

(assert (=> d!1525720 (= res!2025470 (not lt!1937070))))

(declare-fun lt!1937068 () Bool)

(assert (=> d!1525720 (= lt!1937070 lt!1937068)))

(declare-fun lt!1937067 () Unit!138746)

(declare-fun e!2980330 () Unit!138746)

(assert (=> d!1525720 (= lt!1937067 e!2980330)))

(declare-fun c!814126 () Bool)

(assert (=> d!1525720 (= c!814126 lt!1937068)))

(declare-fun containsKey!3708 (List!53882 (_ BitVec 64)) Bool)

(assert (=> d!1525720 (= lt!1937068 (containsKey!3708 (toList!6529 lm!1309) lt!1936998))))

(assert (=> d!1525720 (= (contains!17210 lm!1309 lt!1936998) lt!1937070)))

(declare-fun b!4773998 () Bool)

(declare-fun lt!1937069 () Unit!138746)

(assert (=> b!4773998 (= e!2980330 lt!1937069)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2029 (List!53882 (_ BitVec 64)) Unit!138746)

(assert (=> b!4773998 (= lt!1937069 (lemmaContainsKeyImpliesGetValueByKeyDefined!2029 (toList!6529 lm!1309) lt!1936998))))

(declare-fun isDefined!9962 (Option!12814) Bool)

(assert (=> b!4773998 (isDefined!9962 (getValueByKey!2233 (toList!6529 lm!1309) lt!1936998))))

(declare-fun b!4773999 () Bool)

(declare-fun Unit!138750 () Unit!138746)

(assert (=> b!4773999 (= e!2980330 Unit!138750)))

(declare-fun b!4774000 () Bool)

(assert (=> b!4774000 (= e!2980331 (isDefined!9962 (getValueByKey!2233 (toList!6529 lm!1309) lt!1936998)))))

(assert (= (and d!1525720 c!814126) b!4773998))

(assert (= (and d!1525720 (not c!814126)) b!4773999))

(assert (= (and d!1525720 (not res!2025470)) b!4774000))

(declare-fun m!5747930 () Bool)

(assert (=> d!1525720 m!5747930))

(declare-fun m!5747932 () Bool)

(assert (=> b!4773998 m!5747932))

(assert (=> b!4773998 m!5747830))

(assert (=> b!4773998 m!5747830))

(declare-fun m!5747934 () Bool)

(assert (=> b!4773998 m!5747934))

(assert (=> b!4774000 m!5747830))

(assert (=> b!4774000 m!5747830))

(assert (=> b!4774000 m!5747934))

(assert (=> b!4773935 d!1525720))

(declare-fun d!1525722 () Bool)

(declare-fun lt!1937073 () Bool)

(declare-fun content!9607 (List!53882) (Set tuple2!56054))

(assert (=> d!1525722 (= lt!1937073 (set.member lt!1937003 (content!9607 (toList!6529 lm!1309))))))

(declare-fun e!2980337 () Bool)

(assert (=> d!1525722 (= lt!1937073 e!2980337)))

(declare-fun res!2025476 () Bool)

(assert (=> d!1525722 (=> (not res!2025476) (not e!2980337))))

(assert (=> d!1525722 (= res!2025476 (is-Cons!53758 (toList!6529 lm!1309)))))

(assert (=> d!1525722 (= (contains!17209 (toList!6529 lm!1309) lt!1937003) lt!1937073)))

(declare-fun b!4774005 () Bool)

(declare-fun e!2980336 () Bool)

(assert (=> b!4774005 (= e!2980337 e!2980336)))

(declare-fun res!2025475 () Bool)

(assert (=> b!4774005 (=> res!2025475 e!2980336)))

(assert (=> b!4774005 (= res!2025475 (= (h!60172 (toList!6529 lm!1309)) lt!1937003))))

(declare-fun b!4774006 () Bool)

(assert (=> b!4774006 (= e!2980336 (contains!17209 (t!361332 (toList!6529 lm!1309)) lt!1937003))))

(assert (= (and d!1525722 res!2025476) b!4774005))

(assert (= (and b!4774005 (not res!2025475)) b!4774006))

(declare-fun m!5747936 () Bool)

(assert (=> d!1525722 m!5747936))

(declare-fun m!5747938 () Bool)

(assert (=> d!1525722 m!5747938))

(declare-fun m!5747940 () Bool)

(assert (=> b!4774006 m!5747940))

(assert (=> b!4773935 d!1525722))

(declare-fun d!1525724 () Bool)

(assert (=> d!1525724 (contains!17209 (toList!6529 lm!1309) (tuple2!56055 lt!1936998 lt!1937001))))

(declare-fun lt!1937076 () Unit!138746)

(declare-fun choose!34092 (ListLongMap!4943 (_ BitVec 64) List!53881) Unit!138746)

(assert (=> d!1525724 (= lt!1937076 (choose!34092 lm!1309 lt!1936998 lt!1937001))))

(assert (=> d!1525724 (contains!17210 lm!1309 lt!1936998)))

(assert (=> d!1525724 (= (lemmaGetValueImpliesTupleContained!524 lm!1309 lt!1936998 lt!1937001) lt!1937076)))

(declare-fun bs!1150211 () Bool)

(assert (= bs!1150211 d!1525724))

(declare-fun m!5747942 () Bool)

(assert (=> bs!1150211 m!5747942))

(declare-fun m!5747944 () Bool)

(assert (=> bs!1150211 m!5747944))

(assert (=> bs!1150211 m!5747814))

(assert (=> b!4773935 d!1525724))

(declare-fun d!1525726 () Bool)

(declare-fun get!18214 (Option!12814) List!53881)

(assert (=> d!1525726 (= (apply!12787 lm!1309 lt!1936998) (get!18214 (getValueByKey!2233 (toList!6529 lm!1309) lt!1936998)))))

(declare-fun bs!1150212 () Bool)

(assert (= bs!1150212 d!1525726))

(assert (=> bs!1150212 m!5747830))

(assert (=> bs!1150212 m!5747830))

(declare-fun m!5747946 () Bool)

(assert (=> bs!1150212 m!5747946))

(assert (=> b!4773935 d!1525726))

(declare-fun d!1525728 () Bool)

(declare-fun hash!4698 (Hashable!6721 K!15292) (_ BitVec 64))

(assert (=> d!1525728 (= (hash!4696 hashF!980 key!2872) (hash!4698 hashF!980 key!2872))))

(declare-fun bs!1150213 () Bool)

(assert (= bs!1150213 d!1525728))

(declare-fun m!5747948 () Bool)

(assert (=> bs!1150213 m!5747948))

(assert (=> b!4773935 d!1525728))

(declare-fun bs!1150218 () Bool)

(declare-fun d!1525730 () Bool)

(assert (= bs!1150218 (and d!1525730 d!1525696)))

(declare-fun lambda!226132 () Int)

(assert (=> bs!1150218 (not (= lambda!226132 lambda!226110))))

(declare-fun bs!1150219 () Bool)

(assert (= bs!1150219 (and d!1525730 start!489080)))

(assert (=> bs!1150219 (= lambda!226132 lambda!226098)))

(declare-fun bs!1150220 () Bool)

(assert (= bs!1150220 (and d!1525730 d!1525710)))

(assert (=> bs!1150220 (= lambda!226132 lambda!226116)))

(declare-fun bs!1150221 () Bool)

(assert (= bs!1150221 (and d!1525730 d!1525706)))

(assert (=> bs!1150221 (= lambda!226132 lambda!226113)))

(declare-fun bs!1150222 () Bool)

(assert (= bs!1150222 (and d!1525730 d!1525716)))

(assert (=> bs!1150222 (= lambda!226132 lambda!226119)))

(declare-fun b!4774028 () Bool)

(declare-fun e!2980351 () Bool)

(declare-fun lt!1937100 () (_ BitVec 64))

(declare-fun lt!1937099 () List!53881)

(assert (=> b!4774028 (= e!2980351 (= (getValueByKey!2233 (toList!6529 lm!1309) lt!1937100) (Some!12813 lt!1937099)))))

(declare-fun b!4774026 () Bool)

(declare-fun res!2025497 () Bool)

(declare-fun e!2980352 () Bool)

(assert (=> b!4774026 (=> (not res!2025497) (not e!2980352))))

(assert (=> b!4774026 (= res!2025497 (contains!17211 (extractMap!2256 (toList!6529 lm!1309)) key!2872))))

(declare-fun b!4774027 () Bool)

(assert (=> b!4774027 (= e!2980352 (isDefined!9960 (getPair!729 (apply!12787 lm!1309 (hash!4696 hashF!980 key!2872)) key!2872)))))

(declare-fun lt!1937103 () Unit!138746)

(assert (=> b!4774027 (= lt!1937103 (forallContained!3962 (toList!6529 lm!1309) lambda!226132 (tuple2!56055 (hash!4696 hashF!980 key!2872) (apply!12787 lm!1309 (hash!4696 hashF!980 key!2872)))))))

(declare-fun lt!1937106 () Unit!138746)

(declare-fun lt!1937104 () Unit!138746)

(assert (=> b!4774027 (= lt!1937106 lt!1937104)))

(assert (=> b!4774027 (contains!17209 (toList!6529 lm!1309) (tuple2!56055 lt!1937100 lt!1937099))))

(assert (=> b!4774027 (= lt!1937104 (lemmaGetValueImpliesTupleContained!524 lm!1309 lt!1937100 lt!1937099))))

(assert (=> b!4774027 e!2980351))

(declare-fun res!2025495 () Bool)

(assert (=> b!4774027 (=> (not res!2025495) (not e!2980351))))

(assert (=> b!4774027 (= res!2025495 (contains!17210 lm!1309 lt!1937100))))

(assert (=> b!4774027 (= lt!1937099 (apply!12787 lm!1309 (hash!4696 hashF!980 key!2872)))))

(assert (=> b!4774027 (= lt!1937100 (hash!4696 hashF!980 key!2872))))

(declare-fun lt!1937101 () Unit!138746)

(declare-fun lt!1937102 () Unit!138746)

(assert (=> b!4774027 (= lt!1937101 lt!1937102)))

(assert (=> b!4774027 (contains!17210 lm!1309 (hash!4696 hashF!980 key!2872))))

(assert (=> b!4774027 (= lt!1937102 (lemmaInGenMapThenLongMapContainsHash!933 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525730 e!2980352))

(declare-fun res!2025494 () Bool)

(assert (=> d!1525730 (=> (not res!2025494) (not e!2980352))))

(assert (=> d!1525730 (= res!2025494 (forall!11989 (toList!6529 lm!1309) lambda!226132))))

(declare-fun lt!1937105 () Unit!138746)

(declare-fun choose!34093 (ListLongMap!4943 K!15292 Hashable!6721) Unit!138746)

(assert (=> d!1525730 (= lt!1937105 (choose!34093 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525730 (forall!11989 (toList!6529 lm!1309) lambda!226132)))

(assert (=> d!1525730 (= (lemmaInGenMapThenGetPairDefined!503 lm!1309 key!2872 hashF!980) lt!1937105)))

(declare-fun b!4774025 () Bool)

(declare-fun res!2025496 () Bool)

(assert (=> b!4774025 (=> (not res!2025496) (not e!2980352))))

(assert (=> b!4774025 (= res!2025496 (allKeysSameHashInMap!2126 lm!1309 hashF!980))))

(assert (= (and d!1525730 res!2025494) b!4774025))

(assert (= (and b!4774025 res!2025496) b!4774026))

(assert (= (and b!4774026 res!2025497) b!4774027))

(assert (= (and b!4774027 res!2025495) b!4774028))

(declare-fun m!5747972 () Bool)

(assert (=> b!4774028 m!5747972))

(assert (=> b!4774026 m!5747804))

(assert (=> b!4774026 m!5747804))

(declare-fun m!5747974 () Bool)

(assert (=> b!4774026 m!5747974))

(declare-fun m!5747976 () Bool)

(assert (=> d!1525730 m!5747976))

(declare-fun m!5747978 () Bool)

(assert (=> d!1525730 m!5747978))

(assert (=> d!1525730 m!5747976))

(assert (=> b!4774025 m!5747828))

(declare-fun m!5747980 () Bool)

(assert (=> b!4774027 m!5747980))

(assert (=> b!4774027 m!5747918))

(assert (=> b!4774027 m!5747920))

(declare-fun m!5747982 () Bool)

(assert (=> b!4774027 m!5747982))

(assert (=> b!4774027 m!5747810))

(assert (=> b!4774027 m!5747808))

(assert (=> b!4774027 m!5747810))

(assert (=> b!4774027 m!5747916))

(assert (=> b!4774027 m!5747916))

(assert (=> b!4774027 m!5747918))

(declare-fun m!5747984 () Bool)

(assert (=> b!4774027 m!5747984))

(assert (=> b!4774027 m!5747810))

(assert (=> b!4774027 m!5747908))

(declare-fun m!5747986 () Bool)

(assert (=> b!4774027 m!5747986))

(assert (=> b!4773935 d!1525730))

(declare-fun d!1525738 () Bool)

(assert (=> d!1525738 (dynLambda!21985 lambda!226098 lt!1937003)))

(declare-fun lt!1937109 () Unit!138746)

(declare-fun choose!34094 (List!53882 Int tuple2!56054) Unit!138746)

(assert (=> d!1525738 (= lt!1937109 (choose!34094 (toList!6529 lm!1309) lambda!226098 lt!1937003))))

(declare-fun e!2980364 () Bool)

(assert (=> d!1525738 e!2980364))

(declare-fun res!2025509 () Bool)

(assert (=> d!1525738 (=> (not res!2025509) (not e!2980364))))

(assert (=> d!1525738 (= res!2025509 (forall!11989 (toList!6529 lm!1309) lambda!226098))))

(assert (=> d!1525738 (= (forallContained!3962 (toList!6529 lm!1309) lambda!226098 lt!1937003) lt!1937109)))

(declare-fun b!4774040 () Bool)

(assert (=> b!4774040 (= e!2980364 (contains!17209 (toList!6529 lm!1309) lt!1937003))))

(assert (= (and d!1525738 res!2025509) b!4774040))

(declare-fun b_lambda!184883 () Bool)

(assert (=> (not b_lambda!184883) (not d!1525738)))

(declare-fun m!5747992 () Bool)

(assert (=> d!1525738 m!5747992))

(declare-fun m!5747994 () Bool)

(assert (=> d!1525738 m!5747994))

(assert (=> d!1525738 m!5747794))

(assert (=> b!4774040 m!5747822))

(assert (=> b!4773935 d!1525738))

(declare-fun d!1525742 () Bool)

(declare-fun isEmpty!29311 (Option!12815) Bool)

(assert (=> d!1525742 (= (isDefined!9960 lt!1937000) (not (isEmpty!29311 lt!1937000)))))

(declare-fun bs!1150223 () Bool)

(assert (= bs!1150223 d!1525742))

(declare-fun m!5747996 () Bool)

(assert (=> bs!1150223 m!5747996))

(assert (=> b!4773935 d!1525742))

(declare-fun b!4774066 () Bool)

(declare-fun e!2980385 () Option!12815)

(assert (=> b!4774066 (= e!2980385 (Some!12814 (h!60171 lt!1937001)))))

(declare-fun b!4774067 () Bool)

(declare-fun e!2980384 () Bool)

(declare-fun containsKey!3709 (List!53881 K!15292) Bool)

(assert (=> b!4774067 (= e!2980384 (not (containsKey!3709 lt!1937001 key!2872)))))

(declare-fun b!4774068 () Bool)

(declare-fun e!2980383 () Option!12815)

(assert (=> b!4774068 (= e!2980383 (getPair!729 (t!361331 lt!1937001) key!2872))))

(declare-fun b!4774069 () Bool)

(declare-fun res!2025522 () Bool)

(declare-fun e!2980382 () Bool)

(assert (=> b!4774069 (=> (not res!2025522) (not e!2980382))))

(declare-fun lt!1937112 () Option!12815)

(assert (=> b!4774069 (= res!2025522 (= (_1!31320 (get!18211 lt!1937112)) key!2872))))

(declare-fun b!4774070 () Bool)

(assert (=> b!4774070 (= e!2980383 None!12814)))

(declare-fun b!4774071 () Bool)

(assert (=> b!4774071 (= e!2980385 e!2980383)))

(declare-fun c!814134 () Bool)

(assert (=> b!4774071 (= c!814134 (is-Cons!53757 lt!1937001))))

(declare-fun b!4774072 () Bool)

(declare-fun e!2980381 () Bool)

(assert (=> b!4774072 (= e!2980381 e!2980382)))

(declare-fun res!2025523 () Bool)

(assert (=> b!4774072 (=> (not res!2025523) (not e!2980382))))

(assert (=> b!4774072 (= res!2025523 (isDefined!9960 lt!1937112))))

(declare-fun d!1525744 () Bool)

(assert (=> d!1525744 e!2980381))

(declare-fun res!2025521 () Bool)

(assert (=> d!1525744 (=> res!2025521 e!2980381)))

(assert (=> d!1525744 (= res!2025521 e!2980384)))

(declare-fun res!2025524 () Bool)

(assert (=> d!1525744 (=> (not res!2025524) (not e!2980384))))

(assert (=> d!1525744 (= res!2025524 (isEmpty!29311 lt!1937112))))

(assert (=> d!1525744 (= lt!1937112 e!2980385)))

(declare-fun c!814135 () Bool)

(assert (=> d!1525744 (= c!814135 (and (is-Cons!53757 lt!1937001) (= (_1!31320 (h!60171 lt!1937001)) key!2872)))))

(declare-fun noDuplicateKeys!2271 (List!53881) Bool)

(assert (=> d!1525744 (noDuplicateKeys!2271 lt!1937001)))

(assert (=> d!1525744 (= (getPair!729 lt!1937001 key!2872) lt!1937112)))

(declare-fun b!4774073 () Bool)

(declare-fun contains!17215 (List!53881 tuple2!56052) Bool)

(assert (=> b!4774073 (= e!2980382 (contains!17215 lt!1937001 (get!18211 lt!1937112)))))

(assert (= (and d!1525744 c!814135) b!4774066))

(assert (= (and d!1525744 (not c!814135)) b!4774071))

(assert (= (and b!4774071 c!814134) b!4774068))

(assert (= (and b!4774071 (not c!814134)) b!4774070))

(assert (= (and d!1525744 res!2025524) b!4774067))

(assert (= (and d!1525744 (not res!2025521)) b!4774072))

(assert (= (and b!4774072 res!2025523) b!4774069))

(assert (= (and b!4774069 res!2025522) b!4774073))

(declare-fun m!5748000 () Bool)

(assert (=> b!4774069 m!5748000))

(declare-fun m!5748002 () Bool)

(assert (=> d!1525744 m!5748002))

(declare-fun m!5748004 () Bool)

(assert (=> d!1525744 m!5748004))

(declare-fun m!5748006 () Bool)

(assert (=> b!4774068 m!5748006))

(declare-fun m!5748008 () Bool)

(assert (=> b!4774067 m!5748008))

(assert (=> b!4774073 m!5748000))

(assert (=> b!4774073 m!5748000))

(declare-fun m!5748012 () Bool)

(assert (=> b!4774073 m!5748012))

(declare-fun m!5748014 () Bool)

(assert (=> b!4774072 m!5748014))

(assert (=> b!4773935 d!1525744))

(declare-fun b!4774092 () Bool)

(declare-fun e!2980401 () Bool)

(declare-datatypes ((List!53885 0))(
  ( (Nil!53761) (Cons!53761 (h!60175 K!15292) (t!361335 List!53885)) )
))
(declare-fun contains!17216 (List!53885 K!15292) Bool)

(declare-fun keys!19535 (ListMap!6009) List!53885)

(assert (=> b!4774092 (= e!2980401 (not (contains!17216 (keys!19535 lt!1936994) key!2872)))))

(declare-fun b!4774093 () Bool)

(assert (=> b!4774093 false))

(declare-fun lt!1937138 () Unit!138746)

(declare-fun lt!1937133 () Unit!138746)

(assert (=> b!4774093 (= lt!1937138 lt!1937133)))

(declare-fun containsKey!3710 (List!53881 K!15292) Bool)

(assert (=> b!4774093 (containsKey!3710 (toList!6530 lt!1936994) key!2872)))

(declare-fun lemmaInGetKeysListThenContainsKey!1016 (List!53881 K!15292) Unit!138746)

(assert (=> b!4774093 (= lt!1937133 (lemmaInGetKeysListThenContainsKey!1016 (toList!6530 lt!1936994) key!2872))))

(declare-fun e!2980403 () Unit!138746)

(declare-fun Unit!138751 () Unit!138746)

(assert (=> b!4774093 (= e!2980403 Unit!138751)))

(declare-fun b!4774094 () Bool)

(declare-fun e!2980402 () List!53885)

(assert (=> b!4774094 (= e!2980402 (keys!19535 lt!1936994))))

(declare-fun b!4774095 () Bool)

(declare-fun e!2980398 () Bool)

(assert (=> b!4774095 (= e!2980398 (contains!17216 (keys!19535 lt!1936994) key!2872))))

(declare-fun b!4774096 () Bool)

(declare-fun e!2980400 () Unit!138746)

(assert (=> b!4774096 (= e!2980400 e!2980403)))

(declare-fun c!814142 () Bool)

(declare-fun call!334543 () Bool)

(assert (=> b!4774096 (= c!814142 call!334543)))

(declare-fun bm!334538 () Bool)

(assert (=> bm!334538 (= call!334543 (contains!17216 e!2980402 key!2872))))

(declare-fun c!814144 () Bool)

(declare-fun c!814143 () Bool)

(assert (=> bm!334538 (= c!814144 c!814143)))

(declare-fun b!4774097 () Bool)

(declare-fun e!2980399 () Bool)

(assert (=> b!4774097 (= e!2980399 e!2980398)))

(declare-fun res!2025532 () Bool)

(assert (=> b!4774097 (=> (not res!2025532) (not e!2980398))))

(declare-fun isDefined!9963 (Option!12818) Bool)

(assert (=> b!4774097 (= res!2025532 (isDefined!9963 (getValueByKey!2235 (toList!6530 lt!1936994) key!2872)))))

(declare-fun b!4774099 () Bool)

(declare-fun lt!1937135 () Unit!138746)

(assert (=> b!4774099 (= e!2980400 lt!1937135)))

(declare-fun lt!1937132 () Unit!138746)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2030 (List!53881 K!15292) Unit!138746)

(assert (=> b!4774099 (= lt!1937132 (lemmaContainsKeyImpliesGetValueByKeyDefined!2030 (toList!6530 lt!1936994) key!2872))))

(assert (=> b!4774099 (isDefined!9963 (getValueByKey!2235 (toList!6530 lt!1936994) key!2872))))

(declare-fun lt!1937139 () Unit!138746)

(assert (=> b!4774099 (= lt!1937139 lt!1937132)))

(declare-fun lemmaInListThenGetKeysListContains!1012 (List!53881 K!15292) Unit!138746)

(assert (=> b!4774099 (= lt!1937135 (lemmaInListThenGetKeysListContains!1012 (toList!6530 lt!1936994) key!2872))))

(assert (=> b!4774099 call!334543))

(declare-fun b!4774100 () Bool)

(declare-fun getKeysList!1017 (List!53881) List!53885)

(assert (=> b!4774100 (= e!2980402 (getKeysList!1017 (toList!6530 lt!1936994)))))

(declare-fun d!1525746 () Bool)

(assert (=> d!1525746 e!2980399))

(declare-fun res!2025531 () Bool)

(assert (=> d!1525746 (=> res!2025531 e!2980399)))

(assert (=> d!1525746 (= res!2025531 e!2980401)))

(declare-fun res!2025533 () Bool)

(assert (=> d!1525746 (=> (not res!2025533) (not e!2980401))))

(declare-fun lt!1937134 () Bool)

(assert (=> d!1525746 (= res!2025533 (not lt!1937134))))

(declare-fun lt!1937137 () Bool)

(assert (=> d!1525746 (= lt!1937134 lt!1937137)))

(declare-fun lt!1937136 () Unit!138746)

(assert (=> d!1525746 (= lt!1937136 e!2980400)))

(assert (=> d!1525746 (= c!814143 lt!1937137)))

(assert (=> d!1525746 (= lt!1937137 (containsKey!3710 (toList!6530 lt!1936994) key!2872))))

(assert (=> d!1525746 (= (contains!17211 lt!1936994 key!2872) lt!1937134)))

(declare-fun b!4774098 () Bool)

(declare-fun Unit!138752 () Unit!138746)

(assert (=> b!4774098 (= e!2980403 Unit!138752)))

(assert (= (and d!1525746 c!814143) b!4774099))

(assert (= (and d!1525746 (not c!814143)) b!4774096))

(assert (= (and b!4774096 c!814142) b!4774093))

(assert (= (and b!4774096 (not c!814142)) b!4774098))

(assert (= (or b!4774099 b!4774096) bm!334538))

(assert (= (and bm!334538 c!814144) b!4774100))

(assert (= (and bm!334538 (not c!814144)) b!4774094))

(assert (= (and d!1525746 res!2025533) b!4774092))

(assert (= (and d!1525746 (not res!2025531)) b!4774097))

(assert (= (and b!4774097 res!2025532) b!4774095))

(declare-fun m!5748022 () Bool)

(assert (=> b!4774095 m!5748022))

(assert (=> b!4774095 m!5748022))

(declare-fun m!5748024 () Bool)

(assert (=> b!4774095 m!5748024))

(declare-fun m!5748026 () Bool)

(assert (=> d!1525746 m!5748026))

(declare-fun m!5748028 () Bool)

(assert (=> b!4774099 m!5748028))

(assert (=> b!4774099 m!5747898))

(assert (=> b!4774099 m!5747898))

(declare-fun m!5748030 () Bool)

(assert (=> b!4774099 m!5748030))

(declare-fun m!5748032 () Bool)

(assert (=> b!4774099 m!5748032))

(assert (=> b!4774092 m!5748022))

(assert (=> b!4774092 m!5748022))

(assert (=> b!4774092 m!5748024))

(assert (=> b!4774093 m!5748026))

(declare-fun m!5748034 () Bool)

(assert (=> b!4774093 m!5748034))

(declare-fun m!5748036 () Bool)

(assert (=> b!4774100 m!5748036))

(assert (=> b!4774094 m!5748022))

(assert (=> b!4774097 m!5747898))

(assert (=> b!4774097 m!5747898))

(assert (=> b!4774097 m!5748030))

(declare-fun m!5748038 () Bool)

(assert (=> bm!334538 m!5748038))

(assert (=> b!4773937 d!1525746))

(declare-fun bs!1150233 () Bool)

(declare-fun d!1525752 () Bool)

(assert (= bs!1150233 (and d!1525752 d!1525730)))

(declare-fun lambda!226141 () Int)

(assert (=> bs!1150233 (= lambda!226141 lambda!226132)))

(declare-fun bs!1150234 () Bool)

(assert (= bs!1150234 (and d!1525752 d!1525696)))

(assert (=> bs!1150234 (not (= lambda!226141 lambda!226110))))

(declare-fun bs!1150235 () Bool)

(assert (= bs!1150235 (and d!1525752 start!489080)))

(assert (=> bs!1150235 (= lambda!226141 lambda!226098)))

(declare-fun bs!1150236 () Bool)

(assert (= bs!1150236 (and d!1525752 d!1525710)))

(assert (=> bs!1150236 (= lambda!226141 lambda!226116)))

(declare-fun bs!1150237 () Bool)

(assert (= bs!1150237 (and d!1525752 d!1525706)))

(assert (=> bs!1150237 (= lambda!226141 lambda!226113)))

(declare-fun bs!1150238 () Bool)

(assert (= bs!1150238 (and d!1525752 d!1525716)))

(assert (=> bs!1150238 (= lambda!226141 lambda!226119)))

(declare-fun lt!1937145 () ListMap!6009)

(declare-fun invariantList!1675 (List!53881) Bool)

(assert (=> d!1525752 (invariantList!1675 (toList!6530 lt!1937145))))

(declare-fun e!2980406 () ListMap!6009)

(assert (=> d!1525752 (= lt!1937145 e!2980406)))

(declare-fun c!814147 () Bool)

(assert (=> d!1525752 (= c!814147 (is-Cons!53758 (toList!6529 lm!1309)))))

(assert (=> d!1525752 (forall!11989 (toList!6529 lm!1309) lambda!226141)))

(assert (=> d!1525752 (= (extractMap!2256 (toList!6529 lm!1309)) lt!1937145)))

(declare-fun b!4774105 () Bool)

(declare-fun addToMapMapFromBucket!1640 (List!53881 ListMap!6009) ListMap!6009)

(assert (=> b!4774105 (= e!2980406 (addToMapMapFromBucket!1640 (_2!31321 (h!60172 (toList!6529 lm!1309))) (extractMap!2256 (t!361332 (toList!6529 lm!1309)))))))

(declare-fun b!4774106 () Bool)

(assert (=> b!4774106 (= e!2980406 (ListMap!6010 Nil!53757))))

(assert (= (and d!1525752 c!814147) b!4774105))

(assert (= (and d!1525752 (not c!814147)) b!4774106))

(declare-fun m!5748044 () Bool)

(assert (=> d!1525752 m!5748044))

(declare-fun m!5748046 () Bool)

(assert (=> d!1525752 m!5748046))

(declare-fun m!5748048 () Bool)

(assert (=> b!4774105 m!5748048))

(assert (=> b!4774105 m!5748048))

(declare-fun m!5748050 () Bool)

(assert (=> b!4774105 m!5748050))

(assert (=> b!4773937 d!1525752))

(declare-fun d!1525756 () Bool)

(declare-fun res!2025541 () Bool)

(declare-fun e!2980415 () Bool)

(assert (=> d!1525756 (=> res!2025541 e!2980415)))

(declare-fun e!2980413 () Bool)

(assert (=> d!1525756 (= res!2025541 e!2980413)))

(declare-fun res!2025542 () Bool)

(assert (=> d!1525756 (=> (not res!2025542) (not e!2980413))))

(assert (=> d!1525756 (= res!2025542 (is-Cons!53758 (toList!6529 lm!1309)))))

(assert (=> d!1525756 (= (containsKeyBiggerList!377 (toList!6529 lm!1309) key!2872) e!2980415)))

(declare-fun b!4774113 () Bool)

(assert (=> b!4774113 (= e!2980413 (containsKey!3709 (_2!31321 (h!60172 (toList!6529 lm!1309))) key!2872))))

(declare-fun b!4774114 () Bool)

(declare-fun e!2980414 () Bool)

(assert (=> b!4774114 (= e!2980415 e!2980414)))

(declare-fun res!2025540 () Bool)

(assert (=> b!4774114 (=> (not res!2025540) (not e!2980414))))

(assert (=> b!4774114 (= res!2025540 (is-Cons!53758 (toList!6529 lm!1309)))))

(declare-fun b!4774115 () Bool)

(assert (=> b!4774115 (= e!2980414 (containsKeyBiggerList!377 (t!361332 (toList!6529 lm!1309)) key!2872))))

(assert (= (and d!1525756 res!2025542) b!4774113))

(assert (= (and d!1525756 (not res!2025541)) b!4774114))

(assert (= (and b!4774114 res!2025540) b!4774115))

(declare-fun m!5748052 () Bool)

(assert (=> b!4774113 m!5748052))

(declare-fun m!5748054 () Bool)

(assert (=> b!4774115 m!5748054))

(assert (=> b!4773936 d!1525756))

(declare-fun d!1525758 () Bool)

(declare-fun c!814150 () Bool)

(declare-fun e!2980421 () Bool)

(assert (=> d!1525758 (= c!814150 e!2980421)))

(declare-fun res!2025545 () Bool)

(assert (=> d!1525758 (=> (not res!2025545) (not e!2980421))))

(assert (=> d!1525758 (= res!2025545 (is-Cons!53758 (toList!6529 lm!1309)))))

(declare-fun e!2980420 () V!15538)

(assert (=> d!1525758 (= (getValue!35 (toList!6529 lm!1309) key!2872) e!2980420)))

(declare-fun b!4774124 () Bool)

(assert (=> b!4774124 (= e!2980421 (containsKey!3709 (_2!31321 (h!60172 (toList!6529 lm!1309))) key!2872))))

(declare-fun b!4774122 () Bool)

(assert (=> b!4774122 (= e!2980420 (_2!31320 (get!18211 (getPair!729 (_2!31321 (h!60172 (toList!6529 lm!1309))) key!2872))))))

(declare-fun b!4774123 () Bool)

(assert (=> b!4774123 (= e!2980420 (getValue!35 (t!361332 (toList!6529 lm!1309)) key!2872))))

(assert (= (and d!1525758 res!2025545) b!4774124))

(assert (= (and d!1525758 c!814150) b!4774122))

(assert (= (and d!1525758 (not c!814150)) b!4774123))

(assert (=> b!4774124 m!5748052))

(declare-fun m!5748056 () Bool)

(assert (=> b!4774122 m!5748056))

(assert (=> b!4774122 m!5748056))

(declare-fun m!5748058 () Bool)

(assert (=> b!4774122 m!5748058))

(declare-fun m!5748060 () Bool)

(assert (=> b!4774123 m!5748060))

(assert (=> b!4773936 d!1525758))

(assert (=> b!4773936 d!1525698))

(declare-fun bs!1150239 () Bool)

(declare-fun d!1525760 () Bool)

(assert (= bs!1150239 (and d!1525760 d!1525730)))

(declare-fun lambda!226144 () Int)

(assert (=> bs!1150239 (= lambda!226144 lambda!226132)))

(declare-fun bs!1150240 () Bool)

(assert (= bs!1150240 (and d!1525760 d!1525696)))

(assert (=> bs!1150240 (not (= lambda!226144 lambda!226110))))

(declare-fun bs!1150241 () Bool)

(assert (= bs!1150241 (and d!1525760 start!489080)))

(assert (=> bs!1150241 (= lambda!226144 lambda!226098)))

(declare-fun bs!1150242 () Bool)

(assert (= bs!1150242 (and d!1525760 d!1525710)))

(assert (=> bs!1150242 (= lambda!226144 lambda!226116)))

(declare-fun bs!1150243 () Bool)

(assert (= bs!1150243 (and d!1525760 d!1525706)))

(assert (=> bs!1150243 (= lambda!226144 lambda!226113)))

(declare-fun bs!1150244 () Bool)

(assert (= bs!1150244 (and d!1525760 d!1525716)))

(assert (=> bs!1150244 (= lambda!226144 lambda!226119)))

(declare-fun bs!1150245 () Bool)

(assert (= bs!1150245 (and d!1525760 d!1525752)))

(assert (=> bs!1150245 (= lambda!226144 lambda!226141)))

(assert (=> d!1525760 (= (getValue!35 (toList!6529 lm!1309) key!2872) v!9615)))

(declare-fun lt!1937148 () Unit!138746)

(declare-fun choose!34095 (ListLongMap!4943 K!15292 V!15538 Hashable!6721) Unit!138746)

(assert (=> d!1525760 (= lt!1937148 (choose!34095 lm!1309 key!2872 v!9615 hashF!980))))

(assert (=> d!1525760 (forall!11989 (toList!6529 lm!1309) lambda!226144)))

(assert (=> d!1525760 (= (lemmaGetValueEquivToGetPair!35 lm!1309 key!2872 v!9615 hashF!980) lt!1937148)))

(declare-fun bs!1150246 () Bool)

(assert (= bs!1150246 d!1525760))

(assert (=> bs!1150246 m!5747796))

(declare-fun m!5748062 () Bool)

(assert (=> bs!1150246 m!5748062))

(declare-fun m!5748064 () Bool)

(assert (=> bs!1150246 m!5748064))

(assert (=> b!4773936 d!1525760))

(declare-fun bs!1150247 () Bool)

(declare-fun d!1525762 () Bool)

(assert (= bs!1150247 (and d!1525762 d!1525730)))

(declare-fun lambda!226147 () Int)

(assert (=> bs!1150247 (= lambda!226147 lambda!226132)))

(declare-fun bs!1150248 () Bool)

(assert (= bs!1150248 (and d!1525762 d!1525696)))

(assert (=> bs!1150248 (not (= lambda!226147 lambda!226110))))

(declare-fun bs!1150249 () Bool)

(assert (= bs!1150249 (and d!1525762 start!489080)))

(assert (=> bs!1150249 (= lambda!226147 lambda!226098)))

(declare-fun bs!1150250 () Bool)

(assert (= bs!1150250 (and d!1525762 d!1525710)))

(assert (=> bs!1150250 (= lambda!226147 lambda!226116)))

(declare-fun bs!1150251 () Bool)

(assert (= bs!1150251 (and d!1525762 d!1525706)))

(assert (=> bs!1150251 (= lambda!226147 lambda!226113)))

(declare-fun bs!1150252 () Bool)

(assert (= bs!1150252 (and d!1525762 d!1525760)))

(assert (=> bs!1150252 (= lambda!226147 lambda!226144)))

(declare-fun bs!1150253 () Bool)

(assert (= bs!1150253 (and d!1525762 d!1525716)))

(assert (=> bs!1150253 (= lambda!226147 lambda!226119)))

(declare-fun bs!1150254 () Bool)

(assert (= bs!1150254 (and d!1525762 d!1525752)))

(assert (=> bs!1150254 (= lambda!226147 lambda!226141)))

(assert (=> d!1525762 (containsKeyBiggerList!377 (toList!6529 lm!1309) key!2872)))

(declare-fun lt!1937151 () Unit!138746)

(declare-fun choose!34096 (ListLongMap!4943 K!15292 Hashable!6721) Unit!138746)

(assert (=> d!1525762 (= lt!1937151 (choose!34096 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525762 (forall!11989 (toList!6529 lm!1309) lambda!226147)))

(assert (=> d!1525762 (= (lemmaInLongMapThenContainsKeyBiggerList!235 lm!1309 key!2872 hashF!980) lt!1937151)))

(declare-fun bs!1150255 () Bool)

(assert (= bs!1150255 d!1525762))

(assert (=> bs!1150255 m!5747800))

(declare-fun m!5748066 () Bool)

(assert (=> bs!1150255 m!5748066))

(declare-fun m!5748068 () Bool)

(assert (=> bs!1150255 m!5748068))

(assert (=> b!4773936 d!1525762))

(declare-fun b!4774129 () Bool)

(declare-fun e!2980424 () Bool)

(declare-fun tp!1356917 () Bool)

(declare-fun tp!1356918 () Bool)

(assert (=> b!4774129 (= e!2980424 (and tp!1356917 tp!1356918))))

(assert (=> b!4773933 (= tp!1356909 e!2980424)))

(assert (= (and b!4773933 (is-Cons!53758 (toList!6529 lm!1309))) b!4774129))

(declare-fun b_lambda!184885 () Bool)

(assert (= b_lambda!184879 (or start!489080 b_lambda!184885)))

(declare-fun bs!1150256 () Bool)

(declare-fun d!1525764 () Bool)

(assert (= bs!1150256 (and d!1525764 start!489080)))

(assert (=> bs!1150256 (= (dynLambda!21985 lambda!226098 (h!60172 (toList!6529 lm!1309))) (noDuplicateKeys!2271 (_2!31321 (h!60172 (toList!6529 lm!1309)))))))

(declare-fun m!5748070 () Bool)

(assert (=> bs!1150256 m!5748070))

(assert (=> b!4773963 d!1525764))

(declare-fun b_lambda!184887 () Bool)

(assert (= b_lambda!184883 (or start!489080 b_lambda!184887)))

(declare-fun bs!1150257 () Bool)

(declare-fun d!1525766 () Bool)

(assert (= bs!1150257 (and d!1525766 start!489080)))

(assert (=> bs!1150257 (= (dynLambda!21985 lambda!226098 lt!1937003) (noDuplicateKeys!2271 (_2!31321 lt!1937003)))))

(declare-fun m!5748072 () Bool)

(assert (=> bs!1150257 m!5748072))

(assert (=> d!1525738 d!1525766))

(push 1)

(assert (not b!4773975))

(assert (not b!4774115))

(assert (not b!4774027))

(assert (not b!4774000))

(assert (not b!4774124))

(assert (not d!1525742))

(assert (not b!4774006))

(assert (not bm!334538))

(assert (not d!1525710))

(assert (not b!4774067))

(assert (not b_lambda!184885))

(assert (not b!4774099))

(assert (not d!1525722))

(assert tp_is_empty!32863)

(assert (not d!1525724))

(assert (not b!4774028))

(assert (not d!1525704))

(assert (not b!4774129))

(assert (not b!4774073))

(assert (not b!4774025))

(assert (not b!4774072))

(assert (not b!4774100))

(assert (not b!4774092))

(assert (not b!4774097))

(assert (not b!4774093))

(assert (not d!1525716))

(assert (not d!1525752))

(assert (not b!4773987))

(assert (not b_lambda!184887))

(assert (not b!4774069))

(assert (not b!4774094))

(assert (not b!4774068))

(assert tp_is_empty!32861)

(assert (not d!1525746))

(assert (not d!1525760))

(assert (not d!1525744))

(assert (not d!1525726))

(assert (not b!4773998))

(assert (not b!4774026))

(assert (not d!1525700))

(assert (not bs!1150256))

(assert (not d!1525706))

(assert (not d!1525762))

(assert (not d!1525728))

(assert (not b!4774113))

(assert (not d!1525730))

(assert (not b!4774122))

(assert (not d!1525696))

(assert (not b!4774040))

(assert (not b!4773964))

(assert (not d!1525720))

(assert (not d!1525738))

(assert (not bs!1150257))

(assert (not b!4774095))

(assert (not b!4774105))

(assert (not b!4774123))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

