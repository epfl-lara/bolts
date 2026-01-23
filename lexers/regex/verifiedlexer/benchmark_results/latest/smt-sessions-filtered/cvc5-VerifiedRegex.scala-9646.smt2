; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506658 () Bool)

(assert start!506658)

(declare-fun bs!1173147 () Bool)

(declare-fun b!4853034 () Bool)

(assert (= bs!1173147 (and b!4853034 start!506658)))

(declare-fun lambda!242968 () Int)

(declare-fun lambda!242967 () Int)

(assert (=> bs!1173147 (not (= lambda!242968 lambda!242967))))

(assert (=> b!4853034 true))

(declare-fun b!4853030 () Bool)

(declare-fun res!2071791 () Bool)

(declare-fun e!3033830 () Bool)

(assert (=> b!4853030 (=> (not res!2071791) (not e!3033830))))

(declare-datatypes ((V!17763 0))(
  ( (V!17764 (val!22319 Int)) )
))
(declare-datatypes ((K!17517 0))(
  ( (K!17518 (val!22320 Int)) )
))
(declare-datatypes ((tuple2!59474 0))(
  ( (tuple2!59475 (_1!33031 K!17517) (_2!33031 V!17763)) )
))
(declare-datatypes ((List!55794 0))(
  ( (Nil!55670) (Cons!55670 (h!62113 tuple2!59474) (t!363290 List!55794)) )
))
(declare-datatypes ((tuple2!59476 0))(
  ( (tuple2!59477 (_1!33032 (_ BitVec 64)) (_2!33032 List!55794)) )
))
(declare-datatypes ((List!55795 0))(
  ( (Nil!55671) (Cons!55671 (h!62114 tuple2!59476) (t!363291 List!55795)) )
))
(declare-datatypes ((ListLongMap!6545 0))(
  ( (ListLongMap!6546 (toList!7901 List!55795)) )
))
(declare-fun lm!2840 () ListLongMap!6545)

(declare-fun hash!467 () (_ BitVec 64))

(declare-fun contains!19324 (ListLongMap!6545 (_ BitVec 64)) Bool)

(assert (=> b!4853030 (= res!2071791 (contains!19324 lm!2840 hash!467))))

(declare-fun res!2071792 () Bool)

(assert (=> start!506658 (=> (not res!2071792) (not e!3033830))))

(declare-fun forall!12999 (List!55795 Int) Bool)

(assert (=> start!506658 (= res!2071792 (forall!12999 (toList!7901 lm!2840) lambda!242967))))

(assert (=> start!506658 e!3033830))

(declare-fun e!3033829 () Bool)

(declare-fun inv!71380 (ListLongMap!6545) Bool)

(assert (=> start!506658 (and (inv!71380 lm!2840) e!3033829)))

(assert (=> start!506658 true))

(declare-fun tp_is_empty!35385 () Bool)

(assert (=> start!506658 tp_is_empty!35385))

(declare-fun b!4853031 () Bool)

(declare-fun res!2071793 () Bool)

(assert (=> b!4853031 (=> (not res!2071793) (not e!3033830))))

(declare-fun key!6955 () K!17517)

(declare-datatypes ((Hashable!7543 0))(
  ( (HashableExt!7542 (__x!33818 Int)) )
))
(declare-fun hashF!1802 () Hashable!7543)

(declare-fun hash!5673 (Hashable!7543 K!17517) (_ BitVec 64))

(assert (=> b!4853031 (= res!2071793 (not (= hash!467 (hash!5673 hashF!1802 key!6955))))))

(declare-fun b!4853032 () Bool)

(declare-fun tp!1365153 () Bool)

(assert (=> b!4853032 (= e!3033829 tp!1365153)))

(declare-fun b!4853033 () Bool)

(declare-fun res!2071790 () Bool)

(assert (=> b!4853033 (=> (not res!2071790) (not e!3033830))))

(declare-fun allKeysSameHashInMap!2857 (ListLongMap!6545 Hashable!7543) Bool)

(assert (=> b!4853033 (= res!2071790 (allKeysSameHashInMap!2857 lm!2840 hashF!1802))))

(declare-fun lt!1990554 () List!55794)

(declare-fun allKeysSameHash!2053 (List!55794 (_ BitVec 64) Hashable!7543) Bool)

(assert (=> b!4853034 (= e!3033830 (not (allKeysSameHash!2053 lt!1990554 hash!467 hashF!1802)))))

(declare-fun lt!1990556 () tuple2!59476)

(declare-datatypes ((Unit!145799 0))(
  ( (Unit!145800) )
))
(declare-fun lt!1990553 () Unit!145799)

(declare-fun forallContained!4578 (List!55795 Int tuple2!59476) Unit!145799)

(assert (=> b!4853034 (= lt!1990553 (forallContained!4578 (toList!7901 lm!2840) lambda!242968 lt!1990556))))

(declare-fun contains!19325 (List!55795 tuple2!59476) Bool)

(assert (=> b!4853034 (contains!19325 (toList!7901 lm!2840) lt!1990556)))

(assert (=> b!4853034 (= lt!1990556 (tuple2!59477 hash!467 lt!1990554))))

(declare-fun lt!1990555 () Unit!145799)

(declare-fun lemmaGetValueImpliesTupleContained!804 (ListLongMap!6545 (_ BitVec 64) List!55794) Unit!145799)

(assert (=> b!4853034 (= lt!1990555 (lemmaGetValueImpliesTupleContained!804 lm!2840 hash!467 lt!1990554))))

(declare-fun apply!13482 (ListLongMap!6545 (_ BitVec 64)) List!55794)

(assert (=> b!4853034 (= lt!1990554 (apply!13482 lm!2840 hash!467))))

(assert (= (and start!506658 res!2071792) b!4853033))

(assert (= (and b!4853033 res!2071790) b!4853030))

(assert (= (and b!4853030 res!2071791) b!4853031))

(assert (= (and b!4853031 res!2071793) b!4853034))

(assert (= start!506658 b!4853032))

(declare-fun m!5851292 () Bool)

(assert (=> b!4853033 m!5851292))

(declare-fun m!5851294 () Bool)

(assert (=> start!506658 m!5851294))

(declare-fun m!5851296 () Bool)

(assert (=> start!506658 m!5851296))

(declare-fun m!5851298 () Bool)

(assert (=> b!4853031 m!5851298))

(declare-fun m!5851300 () Bool)

(assert (=> b!4853030 m!5851300))

(declare-fun m!5851302 () Bool)

(assert (=> b!4853034 m!5851302))

(declare-fun m!5851304 () Bool)

(assert (=> b!4853034 m!5851304))

(declare-fun m!5851306 () Bool)

(assert (=> b!4853034 m!5851306))

(declare-fun m!5851308 () Bool)

(assert (=> b!4853034 m!5851308))

(declare-fun m!5851310 () Bool)

(assert (=> b!4853034 m!5851310))

(push 1)

(assert (not b!4853030))

(assert tp_is_empty!35385)

(assert (not b!4853032))

(assert (not b!4853033))

(assert (not start!506658))

(assert (not b!4853034))

(assert (not b!4853031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1557855 () Bool)

(declare-fun e!3033841 () Bool)

(assert (=> d!1557855 e!3033841))

(declare-fun res!2071808 () Bool)

(assert (=> d!1557855 (=> res!2071808 e!3033841)))

(declare-fun lt!1990577 () Bool)

(assert (=> d!1557855 (= res!2071808 (not lt!1990577))))

(declare-fun lt!1990580 () Bool)

(assert (=> d!1557855 (= lt!1990577 lt!1990580)))

(declare-fun lt!1990579 () Unit!145799)

(declare-fun e!3033842 () Unit!145799)

(assert (=> d!1557855 (= lt!1990579 e!3033842)))

(declare-fun c!825727 () Bool)

(assert (=> d!1557855 (= c!825727 lt!1990580)))

(declare-fun containsKey!4753 (List!55795 (_ BitVec 64)) Bool)

(assert (=> d!1557855 (= lt!1990580 (containsKey!4753 (toList!7901 lm!2840) hash!467))))

(assert (=> d!1557855 (= (contains!19324 lm!2840 hash!467) lt!1990577)))

(declare-fun b!4853060 () Bool)

(declare-fun lt!1990578 () Unit!145799)

(assert (=> b!4853060 (= e!3033842 lt!1990578)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2523 (List!55795 (_ BitVec 64)) Unit!145799)

(assert (=> b!4853060 (= lt!1990578 (lemmaContainsKeyImpliesGetValueByKeyDefined!2523 (toList!7901 lm!2840) hash!467))))

(declare-datatypes ((Option!13741 0))(
  ( (None!13740) (Some!13740 (v!49547 List!55794)) )
))
(declare-fun isDefined!10826 (Option!13741) Bool)

(declare-fun getValueByKey!2751 (List!55795 (_ BitVec 64)) Option!13741)

(assert (=> b!4853060 (isDefined!10826 (getValueByKey!2751 (toList!7901 lm!2840) hash!467))))

(declare-fun b!4853061 () Bool)

(declare-fun Unit!145803 () Unit!145799)

(assert (=> b!4853061 (= e!3033842 Unit!145803)))

(declare-fun b!4853062 () Bool)

(assert (=> b!4853062 (= e!3033841 (isDefined!10826 (getValueByKey!2751 (toList!7901 lm!2840) hash!467)))))

(assert (= (and d!1557855 c!825727) b!4853060))

(assert (= (and d!1557855 (not c!825727)) b!4853061))

(assert (= (and d!1557855 (not res!2071808)) b!4853062))

(declare-fun m!5851332 () Bool)

(assert (=> d!1557855 m!5851332))

(declare-fun m!5851334 () Bool)

(assert (=> b!4853060 m!5851334))

(declare-fun m!5851336 () Bool)

(assert (=> b!4853060 m!5851336))

(assert (=> b!4853060 m!5851336))

(declare-fun m!5851338 () Bool)

(assert (=> b!4853060 m!5851338))

(assert (=> b!4853062 m!5851336))

(assert (=> b!4853062 m!5851336))

(assert (=> b!4853062 m!5851338))

(assert (=> b!4853030 d!1557855))

(declare-fun d!1557859 () Bool)

(declare-fun hash!5675 (Hashable!7543 K!17517) (_ BitVec 64))

(assert (=> d!1557859 (= (hash!5673 hashF!1802 key!6955) (hash!5675 hashF!1802 key!6955))))

(declare-fun bs!1173149 () Bool)

(assert (= bs!1173149 d!1557859))

(declare-fun m!5851340 () Bool)

(assert (=> bs!1173149 m!5851340))

(assert (=> b!4853031 d!1557859))

(declare-fun d!1557861 () Bool)

(declare-fun dynLambda!22379 (Int tuple2!59476) Bool)

(assert (=> d!1557861 (dynLambda!22379 lambda!242968 lt!1990556)))

(declare-fun lt!1990583 () Unit!145799)

(declare-fun choose!35531 (List!55795 Int tuple2!59476) Unit!145799)

(assert (=> d!1557861 (= lt!1990583 (choose!35531 (toList!7901 lm!2840) lambda!242968 lt!1990556))))

(declare-fun e!3033845 () Bool)

(assert (=> d!1557861 e!3033845))

(declare-fun res!2071811 () Bool)

(assert (=> d!1557861 (=> (not res!2071811) (not e!3033845))))

(assert (=> d!1557861 (= res!2071811 (forall!12999 (toList!7901 lm!2840) lambda!242968))))

(assert (=> d!1557861 (= (forallContained!4578 (toList!7901 lm!2840) lambda!242968 lt!1990556) lt!1990583)))

(declare-fun b!4853065 () Bool)

(assert (=> b!4853065 (= e!3033845 (contains!19325 (toList!7901 lm!2840) lt!1990556))))

(assert (= (and d!1557861 res!2071811) b!4853065))

(declare-fun b_lambda!193123 () Bool)

(assert (=> (not b_lambda!193123) (not d!1557861)))

(declare-fun m!5851344 () Bool)

(assert (=> d!1557861 m!5851344))

(declare-fun m!5851346 () Bool)

(assert (=> d!1557861 m!5851346))

(declare-fun m!5851348 () Bool)

(assert (=> d!1557861 m!5851348))

(assert (=> b!4853065 m!5851304))

(assert (=> b!4853034 d!1557861))

(declare-fun d!1557865 () Bool)

(declare-fun lt!1990586 () Bool)

(declare-fun content!9916 (List!55795) (Set tuple2!59476))

(assert (=> d!1557865 (= lt!1990586 (set.member lt!1990556 (content!9916 (toList!7901 lm!2840))))))

(declare-fun e!3033851 () Bool)

(assert (=> d!1557865 (= lt!1990586 e!3033851)))

(declare-fun res!2071817 () Bool)

(assert (=> d!1557865 (=> (not res!2071817) (not e!3033851))))

(assert (=> d!1557865 (= res!2071817 (is-Cons!55671 (toList!7901 lm!2840)))))

(assert (=> d!1557865 (= (contains!19325 (toList!7901 lm!2840) lt!1990556) lt!1990586)))

(declare-fun b!4853070 () Bool)

(declare-fun e!3033850 () Bool)

(assert (=> b!4853070 (= e!3033851 e!3033850)))

(declare-fun res!2071816 () Bool)

(assert (=> b!4853070 (=> res!2071816 e!3033850)))

(assert (=> b!4853070 (= res!2071816 (= (h!62114 (toList!7901 lm!2840)) lt!1990556))))

(declare-fun b!4853071 () Bool)

(assert (=> b!4853071 (= e!3033850 (contains!19325 (t!363291 (toList!7901 lm!2840)) lt!1990556))))

(assert (= (and d!1557865 res!2071817) b!4853070))

(assert (= (and b!4853070 (not res!2071816)) b!4853071))

(declare-fun m!5851350 () Bool)

(assert (=> d!1557865 m!5851350))

(declare-fun m!5851352 () Bool)

(assert (=> d!1557865 m!5851352))

(declare-fun m!5851354 () Bool)

(assert (=> b!4853071 m!5851354))

(assert (=> b!4853034 d!1557865))

(declare-fun d!1557867 () Bool)

(assert (=> d!1557867 true))

(assert (=> d!1557867 true))

(declare-fun lambda!242977 () Int)

(declare-fun forall!13001 (List!55794 Int) Bool)

(assert (=> d!1557867 (= (allKeysSameHash!2053 lt!1990554 hash!467 hashF!1802) (forall!13001 lt!1990554 lambda!242977))))

(declare-fun bs!1173151 () Bool)

(assert (= bs!1173151 d!1557867))

(declare-fun m!5851356 () Bool)

(assert (=> bs!1173151 m!5851356))

(assert (=> b!4853034 d!1557867))

(declare-fun d!1557869 () Bool)

(declare-fun get!19123 (Option!13741) List!55794)

(assert (=> d!1557869 (= (apply!13482 lm!2840 hash!467) (get!19123 (getValueByKey!2751 (toList!7901 lm!2840) hash!467)))))

(declare-fun bs!1173152 () Bool)

(assert (= bs!1173152 d!1557869))

(assert (=> bs!1173152 m!5851336))

(assert (=> bs!1173152 m!5851336))

(declare-fun m!5851358 () Bool)

(assert (=> bs!1173152 m!5851358))

(assert (=> b!4853034 d!1557869))

(declare-fun d!1557871 () Bool)

(assert (=> d!1557871 (contains!19325 (toList!7901 lm!2840) (tuple2!59477 hash!467 lt!1990554))))

(declare-fun lt!1990592 () Unit!145799)

(declare-fun choose!35532 (ListLongMap!6545 (_ BitVec 64) List!55794) Unit!145799)

(assert (=> d!1557871 (= lt!1990592 (choose!35532 lm!2840 hash!467 lt!1990554))))

(assert (=> d!1557871 (contains!19324 lm!2840 hash!467)))

(assert (=> d!1557871 (= (lemmaGetValueImpliesTupleContained!804 lm!2840 hash!467 lt!1990554) lt!1990592)))

(declare-fun bs!1173154 () Bool)

(assert (= bs!1173154 d!1557871))

(declare-fun m!5851364 () Bool)

(assert (=> bs!1173154 m!5851364))

(declare-fun m!5851366 () Bool)

(assert (=> bs!1173154 m!5851366))

(assert (=> bs!1173154 m!5851300))

(assert (=> b!4853034 d!1557871))

(declare-fun d!1557875 () Bool)

(declare-fun res!2071822 () Bool)

(declare-fun e!3033856 () Bool)

(assert (=> d!1557875 (=> res!2071822 e!3033856)))

(assert (=> d!1557875 (= res!2071822 (is-Nil!55671 (toList!7901 lm!2840)))))

(assert (=> d!1557875 (= (forall!12999 (toList!7901 lm!2840) lambda!242967) e!3033856)))

(declare-fun b!4853082 () Bool)

(declare-fun e!3033857 () Bool)

(assert (=> b!4853082 (= e!3033856 e!3033857)))

(declare-fun res!2071823 () Bool)

(assert (=> b!4853082 (=> (not res!2071823) (not e!3033857))))

(assert (=> b!4853082 (= res!2071823 (dynLambda!22379 lambda!242967 (h!62114 (toList!7901 lm!2840))))))

(declare-fun b!4853083 () Bool)

(assert (=> b!4853083 (= e!3033857 (forall!12999 (t!363291 (toList!7901 lm!2840)) lambda!242967))))

(assert (= (and d!1557875 (not res!2071822)) b!4853082))

(assert (= (and b!4853082 res!2071823) b!4853083))

(declare-fun b_lambda!193125 () Bool)

(assert (=> (not b_lambda!193125) (not b!4853082)))

(declare-fun m!5851368 () Bool)

(assert (=> b!4853082 m!5851368))

(declare-fun m!5851370 () Bool)

(assert (=> b!4853083 m!5851370))

(assert (=> start!506658 d!1557875))

(declare-fun d!1557877 () Bool)

(declare-fun isStrictlySorted!1099 (List!55795) Bool)

(assert (=> d!1557877 (= (inv!71380 lm!2840) (isStrictlySorted!1099 (toList!7901 lm!2840)))))

(declare-fun bs!1173155 () Bool)

(assert (= bs!1173155 d!1557877))

(declare-fun m!5851372 () Bool)

(assert (=> bs!1173155 m!5851372))

(assert (=> start!506658 d!1557877))

(declare-fun bs!1173156 () Bool)

(declare-fun d!1557879 () Bool)

(assert (= bs!1173156 (and d!1557879 start!506658)))

(declare-fun lambda!242980 () Int)

(assert (=> bs!1173156 (not (= lambda!242980 lambda!242967))))

(declare-fun bs!1173157 () Bool)

(assert (= bs!1173157 (and d!1557879 b!4853034)))

(assert (=> bs!1173157 (= lambda!242980 lambda!242968)))

(assert (=> d!1557879 true))

(assert (=> d!1557879 (= (allKeysSameHashInMap!2857 lm!2840 hashF!1802) (forall!12999 (toList!7901 lm!2840) lambda!242980))))

(declare-fun bs!1173158 () Bool)

(assert (= bs!1173158 d!1557879))

(declare-fun m!5851374 () Bool)

(assert (=> bs!1173158 m!5851374))

(assert (=> b!4853033 d!1557879))

(declare-fun b!4853090 () Bool)

(declare-fun e!3033862 () Bool)

(declare-fun tp!1365161 () Bool)

(declare-fun tp!1365162 () Bool)

(assert (=> b!4853090 (= e!3033862 (and tp!1365161 tp!1365162))))

(assert (=> b!4853032 (= tp!1365153 e!3033862)))

(assert (= (and b!4853032 (is-Cons!55671 (toList!7901 lm!2840))) b!4853090))

(declare-fun b_lambda!193127 () Bool)

(assert (= b_lambda!193125 (or start!506658 b_lambda!193127)))

(declare-fun bs!1173159 () Bool)

(declare-fun d!1557881 () Bool)

(assert (= bs!1173159 (and d!1557881 start!506658)))

(declare-fun noDuplicateKeys!2630 (List!55794) Bool)

(assert (=> bs!1173159 (= (dynLambda!22379 lambda!242967 (h!62114 (toList!7901 lm!2840))) (noDuplicateKeys!2630 (_2!33032 (h!62114 (toList!7901 lm!2840)))))))

(declare-fun m!5851376 () Bool)

(assert (=> bs!1173159 m!5851376))

(assert (=> b!4853082 d!1557881))

(declare-fun b_lambda!193129 () Bool)

(assert (= b_lambda!193123 (or b!4853034 b_lambda!193129)))

(declare-fun bs!1173160 () Bool)

(declare-fun d!1557883 () Bool)

(assert (= bs!1173160 (and d!1557883 b!4853034)))

(assert (=> bs!1173160 (= (dynLambda!22379 lambda!242968 lt!1990556) (allKeysSameHash!2053 (_2!33032 lt!1990556) (_1!33032 lt!1990556) hashF!1802))))

(declare-fun m!5851378 () Bool)

(assert (=> bs!1173160 m!5851378))

(assert (=> d!1557861 d!1557883))

(push 1)

(assert (not d!1557869))

(assert (not bs!1173160))

(assert (not d!1557855))

(assert (not bs!1173159))

(assert (not d!1557877))

(assert (not d!1557865))

(assert (not b!4853090))

(assert (not d!1557861))

(assert (not d!1557867))

(assert (not b!4853065))

(assert (not b_lambda!193127))

(assert (not d!1557871))

(assert tp_is_empty!35385)

(assert (not b!4853071))

(assert (not b_lambda!193129))

(assert (not b!4853083))

(assert (not d!1557879))

(assert (not b!4853060))

(assert (not d!1557859))

(assert (not b!4853062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

