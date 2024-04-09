; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2722 () Bool)

(assert start!2722)

(declare-fun b_free!559 () Bool)

(declare-fun b_next!559 () Bool)

(assert (=> start!2722 (= b_free!559 (not b_next!559))))

(declare-fun tp!2825 () Bool)

(declare-fun b_and!1083 () Bool)

(assert (=> start!2722 (= tp!2825 b_and!1083)))

(declare-fun res!11995 () Bool)

(declare-fun e!9827 () Bool)

(assert (=> start!2722 (=> (not res!11995) (not e!9827))))

(declare-datatypes ((B!680 0))(
  ( (B!681 (val!438 Int)) )
))
(declare-datatypes ((tuple2!658 0))(
  ( (tuple2!659 (_1!329 (_ BitVec 64)) (_2!329 B!680)) )
))
(declare-datatypes ((List!518 0))(
  ( (Nil!515) (Cons!514 (h!1080 tuple2!658) (t!3034 List!518)) )
))
(declare-datatypes ((ListLongMap!489 0))(
  ( (ListLongMap!490 (toList!260 List!518)) )
))
(declare-fun lm!221 () ListLongMap!489)

(declare-fun p!191 () Int)

(declare-fun forall!140 (List!518 Int) Bool)

(assert (=> start!2722 (= res!11995 (forall!140 (toList!260 lm!221) p!191))))

(assert (=> start!2722 e!9827))

(declare-fun e!9829 () Bool)

(declare-fun inv!880 (ListLongMap!489) Bool)

(assert (=> start!2722 (and (inv!880 lm!221) e!9829)))

(assert (=> start!2722 tp!2825))

(declare-fun b!16030 () Bool)

(declare-fun e!9828 () Bool)

(declare-fun lt!3936 () ListLongMap!489)

(declare-fun size!507 (List!518) Int)

(assert (=> b!16030 (= e!9828 (>= (size!507 (toList!260 lt!3936)) (size!507 (toList!260 lm!221))))))

(declare-fun b!16028 () Bool)

(declare-fun res!11994 () Bool)

(assert (=> b!16028 (=> (not res!11994) (not e!9827))))

(declare-fun isEmpty!150 (ListLongMap!489) Bool)

(assert (=> b!16028 (= res!11994 (not (isEmpty!150 lm!221)))))

(declare-fun b!16031 () Bool)

(declare-fun tp!2824 () Bool)

(assert (=> b!16031 (= e!9829 tp!2824)))

(declare-fun b!16029 () Bool)

(assert (=> b!16029 (= e!9827 e!9828)))

(declare-fun res!11993 () Bool)

(assert (=> b!16029 (=> (not res!11993) (not e!9828))))

(assert (=> b!16029 (= res!11993 (forall!140 (toList!260 lt!3936) p!191))))

(declare-fun tail!74 (ListLongMap!489) ListLongMap!489)

(assert (=> b!16029 (= lt!3936 (tail!74 lm!221))))

(assert (= (and start!2722 res!11995) b!16028))

(assert (= (and b!16028 res!11994) b!16029))

(assert (= (and b!16029 res!11993) b!16030))

(assert (= start!2722 b!16031))

(declare-fun m!11029 () Bool)

(assert (=> start!2722 m!11029))

(declare-fun m!11031 () Bool)

(assert (=> start!2722 m!11031))

(declare-fun m!11033 () Bool)

(assert (=> b!16030 m!11033))

(declare-fun m!11035 () Bool)

(assert (=> b!16030 m!11035))

(declare-fun m!11037 () Bool)

(assert (=> b!16028 m!11037))

(declare-fun m!11039 () Bool)

(assert (=> b!16029 m!11039))

(declare-fun m!11041 () Bool)

(assert (=> b!16029 m!11041))

(push 1)

(assert (not b!16030))

(assert (not b!16029))

(assert (not start!2722))

(assert (not b!16031))

(assert b_and!1083)

(assert (not b_next!559))

(assert (not b!16028))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1083)

(assert (not b_next!559))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2947 () Bool)

(declare-fun isEmpty!153 (List!518) Bool)

(assert (=> d!2947 (= (isEmpty!150 lm!221) (isEmpty!153 (toList!260 lm!221)))))

(declare-fun bs!746 () Bool)

(assert (= bs!746 d!2947))

(declare-fun m!11071 () Bool)

(assert (=> bs!746 m!11071))

(assert (=> b!16028 d!2947))

(declare-fun d!2949 () Bool)

(declare-fun lt!3951 () Int)

(assert (=> d!2949 (>= lt!3951 0)))

(declare-fun e!9856 () Int)

(assert (=> d!2949 (= lt!3951 e!9856)))

(declare-fun c!1511 () Bool)

(assert (=> d!2949 (= c!1511 (is-Nil!515 (toList!260 lt!3936)))))

(assert (=> d!2949 (= (size!507 (toList!260 lt!3936)) lt!3951)))

(declare-fun b!16072 () Bool)

(assert (=> b!16072 (= e!9856 0)))

(declare-fun b!16073 () Bool)

(assert (=> b!16073 (= e!9856 (+ 1 (size!507 (t!3034 (toList!260 lt!3936)))))))

(assert (= (and d!2949 c!1511) b!16072))

(assert (= (and d!2949 (not c!1511)) b!16073))

(declare-fun m!11077 () Bool)

(assert (=> b!16073 m!11077))

(assert (=> b!16030 d!2949))

(declare-fun d!2955 () Bool)

(declare-fun lt!3953 () Int)

(assert (=> d!2955 (>= lt!3953 0)))

(declare-fun e!9858 () Int)

(assert (=> d!2955 (= lt!3953 e!9858)))

(declare-fun c!1513 () Bool)

(assert (=> d!2955 (= c!1513 (is-Nil!515 (toList!260 lm!221)))))

(assert (=> d!2955 (= (size!507 (toList!260 lm!221)) lt!3953)))

(declare-fun b!16076 () Bool)

(assert (=> b!16076 (= e!9858 0)))

(declare-fun b!16077 () Bool)

(assert (=> b!16077 (= e!9858 (+ 1 (size!507 (t!3034 (toList!260 lm!221)))))))

(assert (= (and d!2955 c!1513) b!16076))

(assert (= (and d!2955 (not c!1513)) b!16077))

(declare-fun m!11081 () Bool)

(assert (=> b!16077 m!11081))

(assert (=> b!16030 d!2955))

(declare-fun d!2959 () Bool)

(declare-fun res!12024 () Bool)

(declare-fun e!9870 () Bool)

(assert (=> d!2959 (=> res!12024 e!9870)))

(assert (=> d!2959 (= res!12024 (is-Nil!515 (toList!260 lm!221)))))

(assert (=> d!2959 (= (forall!140 (toList!260 lm!221) p!191) e!9870)))

(declare-fun b!16090 () Bool)

(declare-fun e!9873 () Bool)

(assert (=> b!16090 (= e!9870 e!9873)))

(declare-fun res!12026 () Bool)

(assert (=> b!16090 (=> (not res!12026) (not e!9873))))

(declare-fun dynLambda!124 (Int tuple2!658) Bool)

(assert (=> b!16090 (= res!12026 (dynLambda!124 p!191 (h!1080 (toList!260 lm!221))))))

(declare-fun b!16091 () Bool)

(assert (=> b!16091 (= e!9873 (forall!140 (t!3034 (toList!260 lm!221)) p!191))))

(assert (= (and d!2959 (not res!12024)) b!16090))

(assert (= (and b!16090 res!12026) b!16091))

(declare-fun b_lambda!1201 () Bool)

(assert (=> (not b_lambda!1201) (not b!16090)))

(declare-fun t!3040 () Bool)

(declare-fun tb!509 () Bool)

(assert (=> (and start!2722 (= p!191 p!191) t!3040) tb!509))

(declare-fun result!869 () Bool)

(assert (=> tb!509 (= result!869 true)))

(assert (=> b!16090 t!3040))

(declare-fun b_and!1091 () Bool)

(assert (= b_and!1083 (and (=> t!3040 result!869) b_and!1091)))

(declare-fun m!11089 () Bool)

(assert (=> b!16090 m!11089))

(declare-fun m!11091 () Bool)

(assert (=> b!16091 m!11091))

(assert (=> start!2722 d!2959))

(declare-fun d!2965 () Bool)

(declare-fun isStrictlySorted!159 (List!518) Bool)

(assert (=> d!2965 (= (inv!880 lm!221) (isStrictlySorted!159 (toList!260 lm!221)))))

(declare-fun bs!748 () Bool)

(assert (= bs!748 d!2965))

(declare-fun m!11099 () Bool)

(assert (=> bs!748 m!11099))

(assert (=> start!2722 d!2965))

(declare-fun d!2971 () Bool)

(declare-fun res!12034 () Bool)

(declare-fun e!9880 () Bool)

(assert (=> d!2971 (=> res!12034 e!9880)))

(assert (=> d!2971 (= res!12034 (is-Nil!515 (toList!260 lt!3936)))))

(assert (=> d!2971 (= (forall!140 (toList!260 lt!3936) p!191) e!9880)))

(declare-fun b!16100 () Bool)

(declare-fun e!9881 () Bool)

(assert (=> b!16100 (= e!9880 e!9881)))

(declare-fun res!12035 () Bool)

(assert (=> b!16100 (=> (not res!12035) (not e!9881))))

(assert (=> b!16100 (= res!12035 (dynLambda!124 p!191 (h!1080 (toList!260 lt!3936))))))

(declare-fun b!16101 () Bool)

(assert (=> b!16101 (= e!9881 (forall!140 (t!3034 (toList!260 lt!3936)) p!191))))

(assert (= (and d!2971 (not res!12034)) b!16100))

(assert (= (and b!16100 res!12035) b!16101))

(declare-fun b_lambda!1207 () Bool)

(assert (=> (not b_lambda!1207) (not b!16100)))

(declare-fun t!3046 () Bool)

(declare-fun tb!515 () Bool)

(assert (=> (and start!2722 (= p!191 p!191) t!3046) tb!515))

(declare-fun result!875 () Bool)

(assert (=> tb!515 (= result!875 true)))

(assert (=> b!16100 t!3046))

(declare-fun b_and!1097 () Bool)

(assert (= b_and!1091 (and (=> t!3046 result!875) b_and!1097)))

(declare-fun m!11105 () Bool)

(assert (=> b!16100 m!11105))

(declare-fun m!11109 () Bool)

(assert (=> b!16101 m!11109))

(assert (=> b!16029 d!2971))

(declare-fun d!2977 () Bool)

(declare-fun tail!78 (List!518) List!518)

(assert (=> d!2977 (= (tail!74 lm!221) (ListLongMap!490 (tail!78 (toList!260 lm!221))))))

(declare-fun bs!751 () Bool)

(assert (= bs!751 d!2977))

(declare-fun m!11117 () Bool)

(assert (=> bs!751 m!11117))

(assert (=> b!16029 d!2977))

(declare-fun b!16112 () Bool)

(declare-fun e!9888 () Bool)

(declare-fun tp_is_empty!823 () Bool)

(declare-fun tp!2842 () Bool)

(assert (=> b!16112 (= e!9888 (and tp_is_empty!823 tp!2842))))

(assert (=> b!16031 (= tp!2824 e!9888)))

(assert (= (and b!16031 (is-Cons!514 (toList!260 lm!221))) b!16112))

(declare-fun b_lambda!1211 () Bool)

(assert (= b_lambda!1207 (or (and start!2722 b_free!559) b_lambda!1211)))

(declare-fun b_lambda!1213 () Bool)

(assert (= b_lambda!1201 (or (and start!2722 b_free!559) b_lambda!1213)))

(push 1)

(assert (not d!2947))

(assert (not b!16073))

(assert (not b!16091))

(assert (not b_lambda!1213))

(assert b_and!1097)

(assert (not b!16101))

(assert (not d!2965))

(assert (not b!16112))

(assert (not b_lambda!1211))

(assert (not b!16077))

(assert tp_is_empty!823)

(assert (not d!2977))

(assert (not b_next!559))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1097)

(assert (not b_next!559))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2986 () Bool)

(declare-fun res!12044 () Bool)

(declare-fun e!9900 () Bool)

(assert (=> d!2986 (=> res!12044 e!9900)))

(assert (=> d!2986 (= res!12044 (or (is-Nil!515 (toList!260 lm!221)) (is-Nil!515 (t!3034 (toList!260 lm!221)))))))

(assert (=> d!2986 (= (isStrictlySorted!159 (toList!260 lm!221)) e!9900)))

(declare-fun b!16127 () Bool)

(declare-fun e!9901 () Bool)

(assert (=> b!16127 (= e!9900 e!9901)))

(declare-fun res!12045 () Bool)

(assert (=> b!16127 (=> (not res!12045) (not e!9901))))

(assert (=> b!16127 (= res!12045 (bvslt (_1!329 (h!1080 (toList!260 lm!221))) (_1!329 (h!1080 (t!3034 (toList!260 lm!221))))))))

(declare-fun b!16128 () Bool)

(assert (=> b!16128 (= e!9901 (isStrictlySorted!159 (t!3034 (toList!260 lm!221))))))

(assert (= (and d!2986 (not res!12044)) b!16127))

(assert (= (and b!16127 res!12045) b!16128))

(declare-fun m!11131 () Bool)

(assert (=> b!16128 m!11131))

(assert (=> d!2965 d!2986))

(declare-fun d!2995 () Bool)

(declare-fun lt!3956 () Int)

(assert (=> d!2995 (>= lt!3956 0)))

(declare-fun e!9902 () Int)

(assert (=> d!2995 (= lt!3956 e!9902)))

(declare-fun c!1516 () Bool)

(assert (=> d!2995 (= c!1516 (is-Nil!515 (t!3034 (toList!260 lt!3936))))))

(assert (=> d!2995 (= (size!507 (t!3034 (toList!260 lt!3936))) lt!3956)))

(declare-fun b!16129 () Bool)

(assert (=> b!16129 (= e!9902 0)))

(declare-fun b!16130 () Bool)

(assert (=> b!16130 (= e!9902 (+ 1 (size!507 (t!3034 (t!3034 (toList!260 lt!3936))))))))

(assert (= (and d!2995 c!1516) b!16129))

(assert (= (and d!2995 (not c!1516)) b!16130))

(declare-fun m!11133 () Bool)

(assert (=> b!16130 m!11133))

(assert (=> b!16073 d!2995))

(declare-fun d!2997 () Bool)

(assert (=> d!2997 (= (isEmpty!153 (toList!260 lm!221)) (is-Nil!515 (toList!260 lm!221)))))

(assert (=> d!2947 d!2997))

(declare-fun d!2999 () Bool)

(declare-fun lt!3957 () Int)

(assert (=> d!2999 (>= lt!3957 0)))

(declare-fun e!9907 () Int)

(assert (=> d!2999 (= lt!3957 e!9907)))

(declare-fun c!1517 () Bool)

(assert (=> d!2999 (= c!1517 (is-Nil!515 (t!3034 (toList!260 lm!221))))))

(assert (=> d!2999 (= (size!507 (t!3034 (toList!260 lm!221))) lt!3957)))

(declare-fun b!16135 () Bool)

(assert (=> b!16135 (= e!9907 0)))

(declare-fun b!16136 () Bool)

(assert (=> b!16136 (= e!9907 (+ 1 (size!507 (t!3034 (t!3034 (toList!260 lm!221))))))))

(assert (= (and d!2999 c!1517) b!16135))

(assert (= (and d!2999 (not c!1517)) b!16136))

(declare-fun m!11135 () Bool)

(assert (=> b!16136 m!11135))

(assert (=> b!16077 d!2999))

(declare-fun d!3001 () Bool)

(declare-fun res!12052 () Bool)

(declare-fun e!9910 () Bool)

(assert (=> d!3001 (=> res!12052 e!9910)))

(assert (=> d!3001 (= res!12052 (is-Nil!515 (t!3034 (toList!260 lm!221))))))

(assert (=> d!3001 (= (forall!140 (t!3034 (toList!260 lm!221)) p!191) e!9910)))

(declare-fun b!16139 () Bool)

(declare-fun e!9911 () Bool)

(assert (=> b!16139 (= e!9910 e!9911)))

(declare-fun res!12053 () Bool)

(assert (=> b!16139 (=> (not res!12053) (not e!9911))))

(assert (=> b!16139 (= res!12053 (dynLambda!124 p!191 (h!1080 (t!3034 (toList!260 lm!221)))))))

(declare-fun b!16140 () Bool)

(assert (=> b!16140 (= e!9911 (forall!140 (t!3034 (t!3034 (toList!260 lm!221))) p!191))))

(assert (= (and d!3001 (not res!12052)) b!16139))

(assert (= (and b!16139 res!12053) b!16140))

(declare-fun b_lambda!1225 () Bool)

(assert (=> (not b_lambda!1225) (not b!16139)))

(declare-fun t!3052 () Bool)

(declare-fun tb!521 () Bool)

(assert (=> (and start!2722 (= p!191 p!191) t!3052) tb!521))

(declare-fun result!887 () Bool)

(assert (=> tb!521 (= result!887 true)))

(assert (=> b!16139 t!3052))

(declare-fun b_and!1103 () Bool)

(assert (= b_and!1097 (and (=> t!3052 result!887) b_and!1103)))

(declare-fun m!11139 () Bool)

(assert (=> b!16139 m!11139))

(declare-fun m!11141 () Bool)

(assert (=> b!16140 m!11141))

(assert (=> b!16091 d!3001))

(declare-fun d!3005 () Bool)

(declare-fun res!12056 () Bool)

(declare-fun e!9914 () Bool)

(assert (=> d!3005 (=> res!12056 e!9914)))

(assert (=> d!3005 (= res!12056 (is-Nil!515 (t!3034 (toList!260 lt!3936))))))

(assert (=> d!3005 (= (forall!140 (t!3034 (toList!260 lt!3936)) p!191) e!9914)))

(declare-fun b!16143 () Bool)

(declare-fun e!9915 () Bool)

(assert (=> b!16143 (= e!9914 e!9915)))

(declare-fun res!12057 () Bool)

(assert (=> b!16143 (=> (not res!12057) (not e!9915))))

(assert (=> b!16143 (= res!12057 (dynLambda!124 p!191 (h!1080 (t!3034 (toList!260 lt!3936)))))))

(declare-fun b!16144 () Bool)

(assert (=> b!16144 (= e!9915 (forall!140 (t!3034 (t!3034 (toList!260 lt!3936))) p!191))))

(assert (= (and d!3005 (not res!12056)) b!16143))

(assert (= (and b!16143 res!12057) b!16144))

(declare-fun b_lambda!1229 () Bool)

(assert (=> (not b_lambda!1229) (not b!16143)))

(declare-fun t!3056 () Bool)

(declare-fun tb!525 () Bool)

(assert (=> (and start!2722 (= p!191 p!191) t!3056) tb!525))

(declare-fun result!891 () Bool)

(assert (=> tb!525 (= result!891 true)))

(assert (=> b!16143 t!3056))

(declare-fun b_and!1107 () Bool)

(assert (= b_and!1103 (and (=> t!3056 result!891) b_and!1107)))

(declare-fun m!11147 () Bool)

(assert (=> b!16143 m!11147))

(declare-fun m!11149 () Bool)

(assert (=> b!16144 m!11149))

(assert (=> b!16101 d!3005))

(declare-fun d!3013 () Bool)

(assert (=> d!3013 (= (tail!78 (toList!260 lm!221)) (t!3034 (toList!260 lm!221)))))

(assert (=> d!2977 d!3013))

(declare-fun b!16149 () Bool)

(declare-fun e!9918 () Bool)

(declare-fun tp!2847 () Bool)

(assert (=> b!16149 (= e!9918 (and tp_is_empty!823 tp!2847))))

(assert (=> b!16112 (= tp!2842 e!9918)))

(assert (= (and b!16112 (is-Cons!514 (t!3034 (toList!260 lm!221)))) b!16149))

(declare-fun b_lambda!1231 () Bool)

(assert (= b_lambda!1229 (or (and start!2722 b_free!559) b_lambda!1231)))

(declare-fun b_lambda!1233 () Bool)

(assert (= b_lambda!1225 (or (and start!2722 b_free!559) b_lambda!1233)))

(push 1)

