; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437014 () Bool)

(assert start!437014)

(declare-fun b!4458062 () Bool)

(declare-fun e!2776010 () Bool)

(declare-datatypes ((K!11478 0))(
  ( (K!11479 (val!17453 Int)) )
))
(declare-datatypes ((V!11724 0))(
  ( (V!11725 (val!17454 Int)) )
))
(declare-datatypes ((tuple2!50226 0))(
  ( (tuple2!50227 (_1!28407 K!11478) (_2!28407 V!11724)) )
))
(declare-datatypes ((List!50214 0))(
  ( (Nil!50090) (Cons!50090 (h!55835 tuple2!50226) (t!357164 List!50214)) )
))
(declare-fun l!12858 () List!50214)

(declare-fun noDuplicateKeys!949 (List!50214) Bool)

(assert (=> b!4458062 (= e!2776010 (not (noDuplicateKeys!949 (t!357164 l!12858))))))

(declare-fun b!4458063 () Bool)

(declare-fun res!1848353 () Bool)

(assert (=> b!4458063 (=> (not res!1848353) (not e!2776010))))

(declare-datatypes ((tuple2!50228 0))(
  ( (tuple2!50229 (_1!28408 (_ BitVec 64)) (_2!28408 List!50214)) )
))
(declare-datatypes ((List!50215 0))(
  ( (Nil!50091) (Cons!50091 (h!55836 tuple2!50228) (t!357165 List!50215)) )
))
(declare-datatypes ((ListLongMap!2561 0))(
  ( (ListLongMap!2562 (toList!3905 List!50215)) )
))
(declare-fun lm!1853 () ListLongMap!2561)

(declare-datatypes ((Hashable!5356 0))(
  ( (HashableExt!5355 (__x!31059 Int)) )
))
(declare-fun hashF!1313 () Hashable!5356)

(declare-fun allKeysSameHashInMap!1068 (ListLongMap!2561 Hashable!5356) Bool)

(assert (=> b!4458063 (= res!1848353 (allKeysSameHashInMap!1068 lm!1853 hashF!1313))))

(declare-fun res!1848354 () Bool)

(assert (=> start!437014 (=> (not res!1848354) (not e!2776010))))

(declare-fun lambda!160884 () Int)

(declare-fun forall!9880 (List!50215 Int) Bool)

(assert (=> start!437014 (= res!1848354 (forall!9880 (toList!3905 lm!1853) lambda!160884))))

(assert (=> start!437014 e!2776010))

(declare-fun e!2776009 () Bool)

(declare-fun inv!65665 (ListLongMap!2561) Bool)

(assert (=> start!437014 (and (inv!65665 lm!1853) e!2776009)))

(assert (=> start!437014 true))

(declare-fun e!2776008 () Bool)

(assert (=> start!437014 e!2776008))

(declare-fun tp_is_empty!27017 () Bool)

(assert (=> start!437014 tp_is_empty!27017))

(declare-fun b!4458064 () Bool)

(declare-fun res!1848355 () Bool)

(assert (=> b!4458064 (=> (not res!1848355) (not e!2776010))))

(declare-fun key!4412 () K!11478)

(declare-datatypes ((ListMap!3143 0))(
  ( (ListMap!3144 (toList!3906 List!50214)) )
))
(declare-fun contains!12604 (ListMap!3143 K!11478) Bool)

(declare-fun extractMap!1017 (List!50215) ListMap!3143)

(assert (=> b!4458064 (= res!1848355 (contains!12604 (extractMap!1017 (toList!3905 lm!1853)) key!4412))))

(declare-fun b!4458065 () Bool)

(declare-fun res!1848357 () Bool)

(assert (=> b!4458065 (=> (not res!1848357) (not e!2776010))))

(assert (=> b!4458065 (= res!1848357 (is-Cons!50090 l!12858))))

(declare-fun b!4458066 () Bool)

(declare-fun tp!1335331 () Bool)

(assert (=> b!4458066 (= e!2776009 tp!1335331)))

(declare-fun b!4458067 () Bool)

(declare-fun res!1848356 () Bool)

(assert (=> b!4458067 (=> (not res!1848356) (not e!2776010))))

(assert (=> b!4458067 (= res!1848356 (forall!9880 (toList!3905 lm!1853) lambda!160884))))

(declare-fun tp_is_empty!27019 () Bool)

(declare-fun b!4458068 () Bool)

(declare-fun tp!1335330 () Bool)

(assert (=> b!4458068 (= e!2776008 (and tp_is_empty!27017 tp_is_empty!27019 tp!1335330))))

(declare-fun b!4458069 () Bool)

(declare-fun res!1848352 () Bool)

(assert (=> b!4458069 (=> (not res!1848352) (not e!2776010))))

(assert (=> b!4458069 (= res!1848352 (noDuplicateKeys!949 l!12858))))

(assert (= (and start!437014 res!1848354) b!4458063))

(assert (= (and b!4458063 res!1848353) b!4458069))

(assert (= (and b!4458069 res!1848352) b!4458064))

(assert (= (and b!4458064 res!1848355) b!4458065))

(assert (= (and b!4458065 res!1848357) b!4458067))

(assert (= (and b!4458067 res!1848356) b!4458062))

(assert (= start!437014 b!4458066))

(assert (= (and start!437014 (is-Cons!50090 l!12858)) b!4458068))

(declare-fun m!5160729 () Bool)

(assert (=> start!437014 m!5160729))

(declare-fun m!5160731 () Bool)

(assert (=> start!437014 m!5160731))

(declare-fun m!5160733 () Bool)

(assert (=> b!4458069 m!5160733))

(declare-fun m!5160735 () Bool)

(assert (=> b!4458063 m!5160735))

(declare-fun m!5160737 () Bool)

(assert (=> b!4458062 m!5160737))

(declare-fun m!5160739 () Bool)

(assert (=> b!4458064 m!5160739))

(assert (=> b!4458064 m!5160739))

(declare-fun m!5160741 () Bool)

(assert (=> b!4458064 m!5160741))

(assert (=> b!4458067 m!5160729))

(push 1)

(assert (not b!4458064))

(assert (not b!4458063))

(assert (not b!4458068))

(assert (not b!4458069))

(assert (not start!437014))

(assert (not b!4458066))

(assert (not b!4458062))

(assert tp_is_empty!27017)

(assert (not b!4458067))

(assert tp_is_empty!27019)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1359700 () Bool)

(declare-fun res!1848380 () Bool)

(declare-fun e!2776024 () Bool)

(assert (=> d!1359700 (=> res!1848380 e!2776024)))

(assert (=> d!1359700 (= res!1848380 (is-Nil!50091 (toList!3905 lm!1853)))))

(assert (=> d!1359700 (= (forall!9880 (toList!3905 lm!1853) lambda!160884) e!2776024)))

(declare-fun b!4458098 () Bool)

(declare-fun e!2776025 () Bool)

(assert (=> b!4458098 (= e!2776024 e!2776025)))

(declare-fun res!1848381 () Bool)

(assert (=> b!4458098 (=> (not res!1848381) (not e!2776025))))

(declare-fun dynLambda!20979 (Int tuple2!50228) Bool)

(assert (=> b!4458098 (= res!1848381 (dynLambda!20979 lambda!160884 (h!55836 (toList!3905 lm!1853))))))

(declare-fun b!4458099 () Bool)

(assert (=> b!4458099 (= e!2776025 (forall!9880 (t!357165 (toList!3905 lm!1853)) lambda!160884))))

(assert (= (and d!1359700 (not res!1848380)) b!4458098))

(assert (= (and b!4458098 res!1848381) b!4458099))

(declare-fun b_lambda!147709 () Bool)

(assert (=> (not b_lambda!147709) (not b!4458098)))

(declare-fun m!5160757 () Bool)

(assert (=> b!4458098 m!5160757))

(declare-fun m!5160759 () Bool)

(assert (=> b!4458099 m!5160759))

(assert (=> start!437014 d!1359700))

(declare-fun d!1359704 () Bool)

(declare-fun isStrictlySorted!316 (List!50215) Bool)

(assert (=> d!1359704 (= (inv!65665 lm!1853) (isStrictlySorted!316 (toList!3905 lm!1853)))))

(declare-fun bs!791153 () Bool)

(assert (= bs!791153 d!1359704))

(declare-fun m!5160761 () Bool)

(assert (=> bs!791153 m!5160761))

(assert (=> start!437014 d!1359704))

(assert (=> b!4458067 d!1359700))

(declare-fun bs!791154 () Bool)

(declare-fun d!1359706 () Bool)

(assert (= bs!791154 (and d!1359706 start!437014)))

(declare-fun lambda!160892 () Int)

(assert (=> bs!791154 (not (= lambda!160892 lambda!160884))))

(assert (=> d!1359706 true))

(assert (=> d!1359706 (= (allKeysSameHashInMap!1068 lm!1853 hashF!1313) (forall!9880 (toList!3905 lm!1853) lambda!160892))))

(declare-fun bs!791155 () Bool)

(assert (= bs!791155 d!1359706))

(declare-fun m!5160767 () Bool)

(assert (=> bs!791155 m!5160767))

(assert (=> b!4458063 d!1359706))

(declare-fun d!1359710 () Bool)

(declare-fun res!1848392 () Bool)

(declare-fun e!2776036 () Bool)

(assert (=> d!1359710 (=> res!1848392 e!2776036)))

(assert (=> d!1359710 (= res!1848392 (not (is-Cons!50090 (t!357164 l!12858))))))

(assert (=> d!1359710 (= (noDuplicateKeys!949 (t!357164 l!12858)) e!2776036)))

(declare-fun b!4458112 () Bool)

(declare-fun e!2776037 () Bool)

(assert (=> b!4458112 (= e!2776036 e!2776037)))

(declare-fun res!1848393 () Bool)

(assert (=> b!4458112 (=> (not res!1848393) (not e!2776037))))

(declare-fun containsKey!1345 (List!50214 K!11478) Bool)

(assert (=> b!4458112 (= res!1848393 (not (containsKey!1345 (t!357164 (t!357164 l!12858)) (_1!28407 (h!55835 (t!357164 l!12858))))))))

(declare-fun b!4458113 () Bool)

(assert (=> b!4458113 (= e!2776037 (noDuplicateKeys!949 (t!357164 (t!357164 l!12858))))))

(assert (= (and d!1359710 (not res!1848392)) b!4458112))

(assert (= (and b!4458112 res!1848393) b!4458113))

(declare-fun m!5160769 () Bool)

(assert (=> b!4458112 m!5160769))

(declare-fun m!5160771 () Bool)

(assert (=> b!4458113 m!5160771))

(assert (=> b!4458062 d!1359710))

(declare-fun bm!310276 () Bool)

(declare-fun call!310281 () Bool)

(declare-datatypes ((List!50218 0))(
  ( (Nil!50094) (Cons!50094 (h!55839 K!11478) (t!357168 List!50218)) )
))
(declare-fun e!2776054 () List!50218)

(declare-fun contains!12606 (List!50218 K!11478) Bool)

(assert (=> bm!310276 (= call!310281 (contains!12606 e!2776054 key!4412))))

(declare-fun c!758791 () Bool)

(declare-fun c!758790 () Bool)

(assert (=> bm!310276 (= c!758791 c!758790)))

(declare-fun b!4458132 () Bool)

(declare-fun e!2776055 () Bool)

(declare-fun e!2776052 () Bool)

(assert (=> b!4458132 (= e!2776055 e!2776052)))

(declare-fun res!1848402 () Bool)

(assert (=> b!4458132 (=> (not res!1848402) (not e!2776052))))

(declare-datatypes ((Option!10865 0))(
  ( (None!10864) (Some!10864 (v!44122 V!11724)) )
))
(declare-fun isDefined!8153 (Option!10865) Bool)

(declare-fun getValueByKey!851 (List!50214 K!11478) Option!10865)

(assert (=> b!4458132 (= res!1848402 (isDefined!8153 (getValueByKey!851 (toList!3906 (extractMap!1017 (toList!3905 lm!1853))) key!4412)))))

(declare-fun b!4458133 () Bool)

(declare-datatypes ((Unit!86366 0))(
  ( (Unit!86367) )
))
(declare-fun e!2776053 () Unit!86366)

(declare-fun lt!1649438 () Unit!86366)

(assert (=> b!4458133 (= e!2776053 lt!1649438)))

(declare-fun lt!1649440 () Unit!86366)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!756 (List!50214 K!11478) Unit!86366)

(assert (=> b!4458133 (= lt!1649440 (lemmaContainsKeyImpliesGetValueByKeyDefined!756 (toList!3906 (extractMap!1017 (toList!3905 lm!1853))) key!4412))))

(assert (=> b!4458133 (isDefined!8153 (getValueByKey!851 (toList!3906 (extractMap!1017 (toList!3905 lm!1853))) key!4412))))

(declare-fun lt!1649436 () Unit!86366)

(assert (=> b!4458133 (= lt!1649436 lt!1649440)))

(declare-fun lemmaInListThenGetKeysListContains!329 (List!50214 K!11478) Unit!86366)

(assert (=> b!4458133 (= lt!1649438 (lemmaInListThenGetKeysListContains!329 (toList!3906 (extractMap!1017 (toList!3905 lm!1853))) key!4412))))

(assert (=> b!4458133 call!310281))

(declare-fun b!4458134 () Bool)

(declare-fun e!2776051 () Unit!86366)

(declare-fun Unit!86368 () Unit!86366)

(assert (=> b!4458134 (= e!2776051 Unit!86368)))

(declare-fun b!4458135 () Bool)

(declare-fun keys!17232 (ListMap!3143) List!50218)

(assert (=> b!4458135 (= e!2776054 (keys!17232 (extractMap!1017 (toList!3905 lm!1853))))))

(declare-fun d!1359712 () Bool)

(assert (=> d!1359712 e!2776055))

(declare-fun res!1848400 () Bool)

(assert (=> d!1359712 (=> res!1848400 e!2776055)))

(declare-fun e!2776050 () Bool)

(assert (=> d!1359712 (= res!1848400 e!2776050)))

(declare-fun res!1848401 () Bool)

(assert (=> d!1359712 (=> (not res!1848401) (not e!2776050))))

(declare-fun lt!1649434 () Bool)

(assert (=> d!1359712 (= res!1848401 (not lt!1649434))))

(declare-fun lt!1649439 () Bool)

(assert (=> d!1359712 (= lt!1649434 lt!1649439)))

(declare-fun lt!1649435 () Unit!86366)

(assert (=> d!1359712 (= lt!1649435 e!2776053)))

(assert (=> d!1359712 (= c!758790 lt!1649439)))

(declare-fun containsKey!1346 (List!50214 K!11478) Bool)

(assert (=> d!1359712 (= lt!1649439 (containsKey!1346 (toList!3906 (extractMap!1017 (toList!3905 lm!1853))) key!4412))))

(assert (=> d!1359712 (= (contains!12604 (extractMap!1017 (toList!3905 lm!1853)) key!4412) lt!1649434)))

(declare-fun b!4458136 () Bool)

(assert (=> b!4458136 (= e!2776050 (not (contains!12606 (keys!17232 (extractMap!1017 (toList!3905 lm!1853))) key!4412)))))

(declare-fun b!4458137 () Bool)

(assert (=> b!4458137 false))

(declare-fun lt!1649437 () Unit!86366)

(declare-fun lt!1649433 () Unit!86366)

(assert (=> b!4458137 (= lt!1649437 lt!1649433)))

(assert (=> b!4458137 (containsKey!1346 (toList!3906 (extractMap!1017 (toList!3905 lm!1853))) key!4412)))

(declare-fun lemmaInGetKeysListThenContainsKey!331 (List!50214 K!11478) Unit!86366)

(assert (=> b!4458137 (= lt!1649433 (lemmaInGetKeysListThenContainsKey!331 (toList!3906 (extractMap!1017 (toList!3905 lm!1853))) key!4412))))

(declare-fun Unit!86369 () Unit!86366)

(assert (=> b!4458137 (= e!2776051 Unit!86369)))

(declare-fun b!4458138 () Bool)

(declare-fun getKeysList!333 (List!50214) List!50218)

(assert (=> b!4458138 (= e!2776054 (getKeysList!333 (toList!3906 (extractMap!1017 (toList!3905 lm!1853)))))))

(declare-fun b!4458139 () Bool)

(assert (=> b!4458139 (= e!2776052 (contains!12606 (keys!17232 (extractMap!1017 (toList!3905 lm!1853))) key!4412))))

(declare-fun b!4458140 () Bool)

(assert (=> b!4458140 (= e!2776053 e!2776051)))

(declare-fun c!758789 () Bool)

(assert (=> b!4458140 (= c!758789 call!310281)))

(assert (= (and d!1359712 c!758790) b!4458133))

(assert (= (and d!1359712 (not c!758790)) b!4458140))

(assert (= (and b!4458140 c!758789) b!4458137))

(assert (= (and b!4458140 (not c!758789)) b!4458134))

(assert (= (or b!4458133 b!4458140) bm!310276))

(assert (= (and bm!310276 c!758791) b!4458138))

(assert (= (and bm!310276 (not c!758791)) b!4458135))

(assert (= (and d!1359712 res!1848401) b!4458136))

(assert (= (and d!1359712 (not res!1848400)) b!4458132))

(assert (= (and b!4458132 res!1848402) b!4458139))

(assert (=> b!4458135 m!5160739))

(declare-fun m!5160773 () Bool)

(assert (=> b!4458135 m!5160773))

(declare-fun m!5160775 () Bool)

(assert (=> b!4458137 m!5160775))

(declare-fun m!5160777 () Bool)

(assert (=> b!4458137 m!5160777))

(assert (=> d!1359712 m!5160775))

(declare-fun m!5160779 () Bool)

(assert (=> b!4458132 m!5160779))

(assert (=> b!4458132 m!5160779))

(declare-fun m!5160781 () Bool)

(assert (=> b!4458132 m!5160781))

(assert (=> b!4458139 m!5160739))

(assert (=> b!4458139 m!5160773))

(assert (=> b!4458139 m!5160773))

(declare-fun m!5160783 () Bool)

(assert (=> b!4458139 m!5160783))

(declare-fun m!5160785 () Bool)

(assert (=> b!4458133 m!5160785))

(assert (=> b!4458133 m!5160779))

(assert (=> b!4458133 m!5160779))

(assert (=> b!4458133 m!5160781))

(declare-fun m!5160787 () Bool)

(assert (=> b!4458133 m!5160787))

(declare-fun m!5160789 () Bool)

(assert (=> b!4458138 m!5160789))

(assert (=> b!4458136 m!5160739))

(assert (=> b!4458136 m!5160773))

(assert (=> b!4458136 m!5160773))

(assert (=> b!4458136 m!5160783))

(declare-fun m!5160791 () Bool)

(assert (=> bm!310276 m!5160791))

(assert (=> b!4458064 d!1359712))

(declare-fun bs!791156 () Bool)

(declare-fun d!1359714 () Bool)

(assert (= bs!791156 (and d!1359714 start!437014)))

(declare-fun lambda!160895 () Int)

(assert (=> bs!791156 (= lambda!160895 lambda!160884)))

(declare-fun bs!791157 () Bool)

(assert (= bs!791157 (and d!1359714 d!1359706)))

(assert (=> bs!791157 (not (= lambda!160895 lambda!160892))))

(declare-fun lt!1649459 () ListMap!3143)

(declare-fun invariantList!887 (List!50214) Bool)

(assert (=> d!1359714 (invariantList!887 (toList!3906 lt!1649459))))

(declare-fun e!2776070 () ListMap!3143)

(assert (=> d!1359714 (= lt!1649459 e!2776070)))

(declare-fun c!758800 () Bool)

(assert (=> d!1359714 (= c!758800 (is-Cons!50091 (toList!3905 lm!1853)))))

(assert (=> d!1359714 (forall!9880 (toList!3905 lm!1853) lambda!160895)))

(assert (=> d!1359714 (= (extractMap!1017 (toList!3905 lm!1853)) lt!1649459)))

(declare-fun b!4458163 () Bool)

(declare-fun addToMapMapFromBucket!534 (List!50214 ListMap!3143) ListMap!3143)

(assert (=> b!4458163 (= e!2776070 (addToMapMapFromBucket!534 (_2!28408 (h!55836 (toList!3905 lm!1853))) (extractMap!1017 (t!357165 (toList!3905 lm!1853)))))))

(declare-fun b!4458164 () Bool)

(assert (=> b!4458164 (= e!2776070 (ListMap!3144 Nil!50090))))

(assert (= (and d!1359714 c!758800) b!4458163))

(assert (= (and d!1359714 (not c!758800)) b!4458164))

(declare-fun m!5160793 () Bool)

(assert (=> d!1359714 m!5160793))

(declare-fun m!5160795 () Bool)

(assert (=> d!1359714 m!5160795))

(declare-fun m!5160797 () Bool)

(assert (=> b!4458163 m!5160797))

(assert (=> b!4458163 m!5160797))

(declare-fun m!5160799 () Bool)

(assert (=> b!4458163 m!5160799))

(assert (=> b!4458064 d!1359714))

(declare-fun d!1359716 () Bool)

(declare-fun res!1848409 () Bool)

(declare-fun e!2776071 () Bool)

(assert (=> d!1359716 (=> res!1848409 e!2776071)))

(assert (=> d!1359716 (= res!1848409 (not (is-Cons!50090 l!12858)))))

(assert (=> d!1359716 (= (noDuplicateKeys!949 l!12858) e!2776071)))

(declare-fun b!4458165 () Bool)

(declare-fun e!2776072 () Bool)

(assert (=> b!4458165 (= e!2776071 e!2776072)))

(declare-fun res!1848410 () Bool)

(assert (=> b!4458165 (=> (not res!1848410) (not e!2776072))))

(assert (=> b!4458165 (= res!1848410 (not (containsKey!1345 (t!357164 l!12858) (_1!28407 (h!55835 l!12858)))))))

(declare-fun b!4458166 () Bool)

(assert (=> b!4458166 (= e!2776072 (noDuplicateKeys!949 (t!357164 l!12858)))))

(assert (= (and d!1359716 (not res!1848409)) b!4458165))

(assert (= (and b!4458165 res!1848410) b!4458166))

(declare-fun m!5160801 () Bool)

(assert (=> b!4458165 m!5160801))

(assert (=> b!4458166 m!5160737))

(assert (=> b!4458069 d!1359716))

(declare-fun b!4458171 () Bool)

(declare-fun e!2776075 () Bool)

(declare-fun tp!1335342 () Bool)

(declare-fun tp!1335343 () Bool)

(assert (=> b!4458171 (= e!2776075 (and tp!1335342 tp!1335343))))

(assert (=> b!4458066 (= tp!1335331 e!2776075)))

(assert (= (and b!4458066 (is-Cons!50091 (toList!3905 lm!1853))) b!4458171))

(declare-fun b!4458176 () Bool)

(declare-fun e!2776078 () Bool)

(declare-fun tp!1335346 () Bool)

(assert (=> b!4458176 (= e!2776078 (and tp_is_empty!27017 tp_is_empty!27019 tp!1335346))))

(assert (=> b!4458068 (= tp!1335330 e!2776078)))

(assert (= (and b!4458068 (is-Cons!50090 (t!357164 l!12858))) b!4458176))

(declare-fun b_lambda!147711 () Bool)

(assert (= b_lambda!147709 (or start!437014 b_lambda!147711)))

(declare-fun bs!791158 () Bool)

(declare-fun d!1359718 () Bool)

(assert (= bs!791158 (and d!1359718 start!437014)))

(assert (=> bs!791158 (= (dynLambda!20979 lambda!160884 (h!55836 (toList!3905 lm!1853))) (noDuplicateKeys!949 (_2!28408 (h!55836 (toList!3905 lm!1853)))))))

(declare-fun m!5160803 () Bool)

(assert (=> bs!791158 m!5160803))

(assert (=> b!4458098 d!1359718))

(push 1)

(assert (not b!4458171))

(assert (not b!4458137))

(assert (not b!4458165))

(assert (not b!4458166))

(assert (not d!1359704))

(assert (not d!1359706))

(assert (not b!4458113))

(assert tp_is_empty!27019)

(assert (not b!4458099))

(assert (not b!4458132))

(assert (not b!4458139))

(assert (not d!1359712))

(assert tp_is_empty!27017)

(assert (not b!4458135))

(assert (not bm!310276))

(assert (not d!1359714))

(assert (not bs!791158))

(assert (not b!4458138))

(assert (not b_lambda!147711))

(assert (not b!4458163))

(assert (not b!4458133))

(assert (not b!4458112))

(assert (not b!4458136))

(assert (not b!4458176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

