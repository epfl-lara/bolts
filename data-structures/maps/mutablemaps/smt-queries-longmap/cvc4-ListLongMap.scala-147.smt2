; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2726 () Bool)

(assert start!2726)

(declare-fun b_free!563 () Bool)

(declare-fun b_next!563 () Bool)

(assert (=> start!2726 (= b_free!563 (not b_next!563))))

(declare-fun tp!2837 () Bool)

(declare-fun b_and!1087 () Bool)

(assert (=> start!2726 (= tp!2837 b_and!1087)))

(declare-fun res!12011 () Bool)

(declare-fun e!9845 () Bool)

(assert (=> start!2726 (=> (not res!12011) (not e!9845))))

(declare-datatypes ((B!684 0))(
  ( (B!685 (val!440 Int)) )
))
(declare-datatypes ((tuple2!662 0))(
  ( (tuple2!663 (_1!331 (_ BitVec 64)) (_2!331 B!684)) )
))
(declare-datatypes ((List!520 0))(
  ( (Nil!517) (Cons!516 (h!1082 tuple2!662) (t!3036 List!520)) )
))
(declare-datatypes ((ListLongMap!493 0))(
  ( (ListLongMap!494 (toList!262 List!520)) )
))
(declare-fun lm!221 () ListLongMap!493)

(declare-fun p!191 () Int)

(declare-fun forall!142 (List!520 Int) Bool)

(assert (=> start!2726 (= res!12011 (forall!142 (toList!262 lm!221) p!191))))

(assert (=> start!2726 e!9845))

(declare-fun e!9846 () Bool)

(declare-fun inv!882 (ListLongMap!493) Bool)

(assert (=> start!2726 (and (inv!882 lm!221) e!9846)))

(assert (=> start!2726 tp!2837))

(declare-fun b!16054 () Bool)

(declare-fun e!9847 () Bool)

(declare-fun lt!3942 () ListLongMap!493)

(declare-fun size!509 (List!520) Int)

(assert (=> b!16054 (= e!9847 (>= (size!509 (toList!262 lt!3942)) (size!509 (toList!262 lm!221))))))

(declare-fun b!16052 () Bool)

(declare-fun res!12013 () Bool)

(assert (=> b!16052 (=> (not res!12013) (not e!9845))))

(declare-fun isEmpty!152 (ListLongMap!493) Bool)

(assert (=> b!16052 (= res!12013 (not (isEmpty!152 lm!221)))))

(declare-fun b!16055 () Bool)

(declare-fun tp!2836 () Bool)

(assert (=> b!16055 (= e!9846 tp!2836)))

(declare-fun b!16053 () Bool)

(assert (=> b!16053 (= e!9845 e!9847)))

(declare-fun res!12012 () Bool)

(assert (=> b!16053 (=> (not res!12012) (not e!9847))))

(assert (=> b!16053 (= res!12012 (forall!142 (toList!262 lt!3942) p!191))))

(declare-fun tail!76 (ListLongMap!493) ListLongMap!493)

(assert (=> b!16053 (= lt!3942 (tail!76 lm!221))))

(assert (= (and start!2726 res!12011) b!16052))

(assert (= (and b!16052 res!12013) b!16053))

(assert (= (and b!16053 res!12012) b!16054))

(assert (= start!2726 b!16055))

(declare-fun m!11057 () Bool)

(assert (=> start!2726 m!11057))

(declare-fun m!11059 () Bool)

(assert (=> start!2726 m!11059))

(declare-fun m!11061 () Bool)

(assert (=> b!16054 m!11061))

(declare-fun m!11063 () Bool)

(assert (=> b!16054 m!11063))

(declare-fun m!11065 () Bool)

(assert (=> b!16052 m!11065))

(declare-fun m!11067 () Bool)

(assert (=> b!16053 m!11067))

(declare-fun m!11069 () Bool)

(assert (=> b!16053 m!11069))

(push 1)

(assert (not b!16055))

(assert (not start!2726))

(assert (not b!16052))

(assert b_and!1087)

(assert (not b_next!563))

(assert (not b!16053))

(assert (not b!16054))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1087)

(assert (not b_next!563))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2943 () Bool)

(declare-fun lt!3952 () Int)

(assert (=> d!2943 (>= lt!3952 0)))

(declare-fun e!9857 () Int)

(assert (=> d!2943 (= lt!3952 e!9857)))

(declare-fun c!1512 () Bool)

(assert (=> d!2943 (= c!1512 (is-Nil!517 (toList!262 lt!3942)))))

(assert (=> d!2943 (= (size!509 (toList!262 lt!3942)) lt!3952)))

(declare-fun b!16074 () Bool)

(assert (=> b!16074 (= e!9857 0)))

(declare-fun b!16075 () Bool)

(assert (=> b!16075 (= e!9857 (+ 1 (size!509 (t!3036 (toList!262 lt!3942)))))))

(assert (= (and d!2943 c!1512) b!16074))

(assert (= (and d!2943 (not c!1512)) b!16075))

(declare-fun m!11079 () Bool)

(assert (=> b!16075 m!11079))

(assert (=> b!16054 d!2943))

(declare-fun d!2957 () Bool)

(declare-fun lt!3954 () Int)

(assert (=> d!2957 (>= lt!3954 0)))

(declare-fun e!9863 () Int)

(assert (=> d!2957 (= lt!3954 e!9863)))

(declare-fun c!1514 () Bool)

(assert (=> d!2957 (= c!1514 (is-Nil!517 (toList!262 lm!221)))))

(assert (=> d!2957 (= (size!509 (toList!262 lm!221)) lt!3954)))

(declare-fun b!16082 () Bool)

(assert (=> b!16082 (= e!9863 0)))

(declare-fun b!16083 () Bool)

(assert (=> b!16083 (= e!9863 (+ 1 (size!509 (t!3036 (toList!262 lm!221)))))))

(assert (= (and d!2957 c!1514) b!16082))

(assert (= (and d!2957 (not c!1514)) b!16083))

(declare-fun m!11083 () Bool)

(assert (=> b!16083 m!11083))

(assert (=> b!16054 d!2957))

(declare-fun d!2961 () Bool)

(declare-fun res!12030 () Bool)

(declare-fun e!9876 () Bool)

(assert (=> d!2961 (=> res!12030 e!9876)))

(assert (=> d!2961 (= res!12030 (is-Nil!517 (toList!262 lm!221)))))

(assert (=> d!2961 (= (forall!142 (toList!262 lm!221) p!191) e!9876)))

(declare-fun b!16096 () Bool)

(declare-fun e!9877 () Bool)

(assert (=> b!16096 (= e!9876 e!9877)))

(declare-fun res!12031 () Bool)

(assert (=> b!16096 (=> (not res!12031) (not e!9877))))

(declare-fun dynLambda!125 (Int tuple2!662) Bool)

(assert (=> b!16096 (= res!12031 (dynLambda!125 p!191 (h!1082 (toList!262 lm!221))))))

(declare-fun b!16097 () Bool)

(assert (=> b!16097 (= e!9877 (forall!142 (t!3036 (toList!262 lm!221)) p!191))))

(assert (= (and d!2961 (not res!12030)) b!16096))

(assert (= (and b!16096 res!12031) b!16097))

(declare-fun b_lambda!1203 () Bool)

(assert (=> (not b_lambda!1203) (not b!16096)))

(declare-fun t!3042 () Bool)

(declare-fun tb!511 () Bool)

(assert (=> (and start!2726 (= p!191 p!191) t!3042) tb!511))

(declare-fun result!871 () Bool)

(assert (=> tb!511 (= result!871 true)))

(assert (=> b!16096 t!3042))

(declare-fun b_and!1093 () Bool)

(assert (= b_and!1087 (and (=> t!3042 result!871) b_and!1093)))

(declare-fun m!11095 () Bool)

(assert (=> b!16096 m!11095))

(declare-fun m!11097 () Bool)

(assert (=> b!16097 m!11097))

(assert (=> start!2726 d!2961))

(declare-fun d!2969 () Bool)

(declare-fun isStrictlySorted!160 (List!520) Bool)

(assert (=> d!2969 (= (inv!882 lm!221) (isStrictlySorted!160 (toList!262 lm!221)))))

(declare-fun bs!749 () Bool)

(assert (= bs!749 d!2969))

(declare-fun m!11107 () Bool)

(assert (=> bs!749 m!11107))

(assert (=> start!2726 d!2969))

(declare-fun d!2975 () Bool)

(declare-fun res!12036 () Bool)

(declare-fun e!9882 () Bool)

(assert (=> d!2975 (=> res!12036 e!9882)))

(assert (=> d!2975 (= res!12036 (is-Nil!517 (toList!262 lt!3942)))))

(assert (=> d!2975 (= (forall!142 (toList!262 lt!3942) p!191) e!9882)))

(declare-fun b!16102 () Bool)

(declare-fun e!9883 () Bool)

(assert (=> b!16102 (= e!9882 e!9883)))

(declare-fun res!12037 () Bool)

(assert (=> b!16102 (=> (not res!12037) (not e!9883))))

(assert (=> b!16102 (= res!12037 (dynLambda!125 p!191 (h!1082 (toList!262 lt!3942))))))

(declare-fun b!16103 () Bool)

(assert (=> b!16103 (= e!9883 (forall!142 (t!3036 (toList!262 lt!3942)) p!191))))

(assert (= (and d!2975 (not res!12036)) b!16102))

(assert (= (and b!16102 res!12037) b!16103))

(declare-fun b_lambda!1209 () Bool)

(assert (=> (not b_lambda!1209) (not b!16102)))

(declare-fun t!3048 () Bool)

(declare-fun tb!517 () Bool)

(assert (=> (and start!2726 (= p!191 p!191) t!3048) tb!517))

(declare-fun result!877 () Bool)

(assert (=> tb!517 (= result!877 true)))

(assert (=> b!16102 t!3048))

(declare-fun b_and!1099 () Bool)

(assert (= b_and!1093 (and (=> t!3048 result!877) b_and!1099)))

(declare-fun m!11113 () Bool)

(assert (=> b!16102 m!11113))

(declare-fun m!11115 () Bool)

(assert (=> b!16103 m!11115))

(assert (=> b!16053 d!2975))

(declare-fun d!2981 () Bool)

(declare-fun tail!79 (List!520) List!520)

(assert (=> d!2981 (= (tail!76 lm!221) (ListLongMap!494 (tail!79 (toList!262 lm!221))))))

(declare-fun bs!752 () Bool)

(assert (= bs!752 d!2981))

(declare-fun m!11119 () Bool)

(assert (=> bs!752 m!11119))

(assert (=> b!16053 d!2981))

(declare-fun d!2983 () Bool)

(declare-fun isEmpty!155 (List!520) Bool)

(assert (=> d!2983 (= (isEmpty!152 lm!221) (isEmpty!155 (toList!262 lm!221)))))

(declare-fun bs!754 () Bool)

(assert (= bs!754 d!2983))

(declare-fun m!11123 () Bool)

(assert (=> bs!754 m!11123))

(assert (=> b!16052 d!2983))

(declare-fun b!16118 () Bool)

(declare-fun e!9892 () Bool)

(declare-fun tp_is_empty!827 () Bool)

(declare-fun tp!2846 () Bool)

(assert (=> b!16118 (= e!9892 (and tp_is_empty!827 tp!2846))))

(assert (=> b!16055 (= tp!2836 e!9892)))

(assert (= (and b!16055 (is-Cons!516 (toList!262 lm!221))) b!16118))

(declare-fun b_lambda!1219 () Bool)

(assert (= b_lambda!1203 (or (and start!2726 b_free!563) b_lambda!1219)))

(declare-fun b_lambda!1221 () Bool)

(assert (= b_lambda!1209 (or (and start!2726 b_free!563) b_lambda!1221)))

(push 1)

(assert (not b_lambda!1221))

(assert (not b!16075))

(assert (not b_next!563))

(assert (not b!16103))

(assert tp_is_empty!827)

(assert (not d!2969))

(assert (not b_lambda!1219))

(assert (not b!16118))

(assert (not b!16083))

(assert b_and!1099)

(assert (not d!2983))

(assert (not b!16097))

(assert (not d!2981))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1099)

(assert (not b_next!563))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3007 () Bool)

(assert (=> d!3007 (= (isEmpty!155 (toList!262 lm!221)) (is-Nil!517 (toList!262 lm!221)))))

(assert (=> d!2983 d!3007))

(declare-fun d!3011 () Bool)

(declare-fun lt!3958 () Int)

(assert (=> d!3011 (>= lt!3958 0)))

(declare-fun e!9916 () Int)

(assert (=> d!3011 (= lt!3958 e!9916)))

(declare-fun c!1518 () Bool)

(assert (=> d!3011 (= c!1518 (is-Nil!517 (t!3036 (toList!262 lm!221))))))

(assert (=> d!3011 (= (size!509 (t!3036 (toList!262 lm!221))) lt!3958)))

(declare-fun b!16145 () Bool)

(assert (=> b!16145 (= e!9916 0)))

(declare-fun b!16146 () Bool)

(assert (=> b!16146 (= e!9916 (+ 1 (size!509 (t!3036 (t!3036 (toList!262 lm!221))))))))

(assert (= (and d!3011 c!1518) b!16145))

(assert (= (and d!3011 (not c!1518)) b!16146))

(declare-fun m!11151 () Bool)

(assert (=> b!16146 m!11151))

(assert (=> b!16083 d!3011))

(declare-fun d!3015 () Bool)

(assert (=> d!3015 (= (tail!79 (toList!262 lm!221)) (t!3036 (toList!262 lm!221)))))

(assert (=> d!2981 d!3015))

(declare-fun d!3019 () Bool)

(declare-fun lt!3960 () Int)

(assert (=> d!3019 (>= lt!3960 0)))

(declare-fun e!9920 () Int)

(assert (=> d!3019 (= lt!3960 e!9920)))

(declare-fun c!1520 () Bool)

(assert (=> d!3019 (= c!1520 (is-Nil!517 (t!3036 (toList!262 lt!3942))))))

(assert (=> d!3019 (= (size!509 (t!3036 (toList!262 lt!3942))) lt!3960)))

(declare-fun b!16151 () Bool)

(assert (=> b!16151 (= e!9920 0)))

(declare-fun b!16152 () Bool)

(assert (=> b!16152 (= e!9920 (+ 1 (size!509 (t!3036 (t!3036 (toList!262 lt!3942))))))))

(assert (= (and d!3019 c!1520) b!16151))

(assert (= (and d!3019 (not c!1520)) b!16152))

(declare-fun m!11155 () Bool)

(assert (=> b!16152 m!11155))

(assert (=> b!16075 d!3019))

(declare-fun d!3021 () Bool)

(declare-fun res!12062 () Bool)

(declare-fun e!9925 () Bool)

(assert (=> d!3021 (=> res!12062 e!9925)))

(assert (=> d!3021 (= res!12062 (or (is-Nil!517 (toList!262 lm!221)) (is-Nil!517 (t!3036 (toList!262 lm!221)))))))

(assert (=> d!3021 (= (isStrictlySorted!160 (toList!262 lm!221)) e!9925)))

(declare-fun b!16157 () Bool)

(declare-fun e!9926 () Bool)

(assert (=> b!16157 (= e!9925 e!9926)))

(declare-fun res!12063 () Bool)

(assert (=> b!16157 (=> (not res!12063) (not e!9926))))

(assert (=> b!16157 (= res!12063 (bvslt (_1!331 (h!1082 (toList!262 lm!221))) (_1!331 (h!1082 (t!3036 (toList!262 lm!221))))))))

(declare-fun b!16158 () Bool)

(assert (=> b!16158 (= e!9926 (isStrictlySorted!160 (t!3036 (toList!262 lm!221))))))

(assert (= (and d!3021 (not res!12062)) b!16157))

(assert (= (and b!16157 res!12063) b!16158))

(declare-fun m!11157 () Bool)

(assert (=> b!16158 m!11157))

(assert (=> d!2969 d!3021))

(declare-fun d!3023 () Bool)

(declare-fun res!12064 () Bool)

(declare-fun e!9927 () Bool)

(assert (=> d!3023 (=> res!12064 e!9927)))

(assert (=> d!3023 (= res!12064 (is-Nil!517 (t!3036 (toList!262 lm!221))))))

(assert (=> d!3023 (= (forall!142 (t!3036 (toList!262 lm!221)) p!191) e!9927)))

(declare-fun b!16159 () Bool)

(declare-fun e!9928 () Bool)

(assert (=> b!16159 (= e!9927 e!9928)))

(declare-fun res!12065 () Bool)

(assert (=> b!16159 (=> (not res!12065) (not e!9928))))

(assert (=> b!16159 (= res!12065 (dynLambda!125 p!191 (h!1082 (t!3036 (toList!262 lm!221)))))))

(declare-fun b!16160 () Bool)

(assert (=> b!16160 (= e!9928 (forall!142 (t!3036 (t!3036 (toList!262 lm!221))) p!191))))

(assert (= (and d!3023 (not res!12064)) b!16159))

(assert (= (and b!16159 res!12065) b!16160))

(declare-fun b_lambda!1239 () Bool)

(assert (=> (not b_lambda!1239) (not b!16159)))

(declare-fun t!3058 () Bool)

(declare-fun tb!527 () Bool)

(assert (=> (and start!2726 (= p!191 p!191) t!3058) tb!527))

(declare-fun result!893 () Bool)

(assert (=> tb!527 (= result!893 true)))

(assert (=> b!16159 t!3058))

(declare-fun b_and!1109 () Bool)

(assert (= b_and!1099 (and (=> t!3058 result!893) b_and!1109)))

(declare-fun m!11159 () Bool)

(assert (=> b!16159 m!11159))

(declare-fun m!11161 () Bool)

(assert (=> b!16160 m!11161))

(assert (=> b!16097 d!3023))

(declare-fun d!3025 () Bool)

(declare-fun res!12066 () Bool)

(declare-fun e!9929 () Bool)

(assert (=> d!3025 (=> res!12066 e!9929)))

(assert (=> d!3025 (= res!12066 (is-Nil!517 (t!3036 (toList!262 lt!3942))))))

(assert (=> d!3025 (= (forall!142 (t!3036 (toList!262 lt!3942)) p!191) e!9929)))

(declare-fun b!16161 () Bool)

(declare-fun e!9930 () Bool)

(assert (=> b!16161 (= e!9929 e!9930)))

(declare-fun res!12067 () Bool)

(assert (=> b!16161 (=> (not res!12067) (not e!9930))))

(assert (=> b!16161 (= res!12067 (dynLambda!125 p!191 (h!1082 (t!3036 (toList!262 lt!3942)))))))

(declare-fun b!16162 () Bool)

