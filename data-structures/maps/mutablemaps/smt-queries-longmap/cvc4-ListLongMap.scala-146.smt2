; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2678 () Bool)

(assert start!2678)

(declare-fun b_free!557 () Bool)

(declare-fun b_next!557 () Bool)

(assert (=> start!2678 (= b_free!557 (not b_next!557))))

(declare-fun tp!2807 () Bool)

(declare-fun b_and!1057 () Bool)

(assert (=> start!2678 (= tp!2807 b_and!1057)))

(declare-fun res!11931 () Bool)

(declare-fun e!9754 () Bool)

(assert (=> start!2678 (=> (not res!11931) (not e!9754))))

(declare-datatypes ((B!678 0))(
  ( (B!679 (val!437 Int)) )
))
(declare-datatypes ((tuple2!656 0))(
  ( (tuple2!657 (_1!328 (_ BitVec 64)) (_2!328 B!678)) )
))
(declare-datatypes ((List!517 0))(
  ( (Nil!514) (Cons!513 (h!1079 tuple2!656) (t!3009 List!517)) )
))
(declare-datatypes ((ListLongMap!487 0))(
  ( (ListLongMap!488 (toList!259 List!517)) )
))
(declare-fun lm!221 () ListLongMap!487)

(declare-fun p!191 () Int)

(declare-fun forall!139 (List!517 Int) Bool)

(assert (=> start!2678 (= res!11931 (forall!139 (toList!259 lm!221) p!191))))

(assert (=> start!2678 e!9754))

(declare-fun e!9753 () Bool)

(declare-fun inv!874 (ListLongMap!487) Bool)

(assert (=> start!2678 (and (inv!874 lm!221) e!9753)))

(assert (=> start!2678 tp!2807))

(declare-fun b!15945 () Bool)

(declare-fun res!11932 () Bool)

(assert (=> b!15945 (=> (not res!11932) (not e!9754))))

(declare-fun isEmpty!146 (ListLongMap!487) Bool)

(assert (=> b!15945 (= res!11932 (not (isEmpty!146 lm!221)))))

(declare-fun b!15946 () Bool)

(declare-fun tail!70 (ListLongMap!487) ListLongMap!487)

(assert (=> b!15946 (= e!9754 (not (forall!139 (toList!259 (tail!70 lm!221)) p!191)))))

(declare-fun b!15947 () Bool)

(declare-fun tp!2806 () Bool)

(assert (=> b!15947 (= e!9753 tp!2806)))

(assert (= (and start!2678 res!11931) b!15945))

(assert (= (and b!15945 res!11932) b!15946))

(assert (= start!2678 b!15947))

(declare-fun m!10947 () Bool)

(assert (=> start!2678 m!10947))

(declare-fun m!10949 () Bool)

(assert (=> start!2678 m!10949))

(declare-fun m!10951 () Bool)

(assert (=> b!15945 m!10951))

(declare-fun m!10953 () Bool)

(assert (=> b!15946 m!10953))

(declare-fun m!10955 () Bool)

(assert (=> b!15946 m!10955))

(push 1)

(assert (not b_next!557))

(assert (not b!15946))

(assert b_and!1057)

(assert (not b!15947))

(assert (not start!2678))

(assert (not b!15945))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1057)

(assert (not b_next!557))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2883 () Bool)

(declare-fun isEmpty!148 (List!517) Bool)

(assert (=> d!2883 (= (isEmpty!146 lm!221) (isEmpty!148 (toList!259 lm!221)))))

(declare-fun bs!735 () Bool)

(assert (= bs!735 d!2883))

(declare-fun m!10959 () Bool)

(assert (=> bs!735 m!10959))

(assert (=> b!15945 d!2883))

(declare-fun d!2889 () Bool)

(declare-fun res!11949 () Bool)

(declare-fun e!9771 () Bool)

(assert (=> d!2889 (=> res!11949 e!9771)))

(assert (=> d!2889 (= res!11949 (is-Nil!514 (toList!259 (tail!70 lm!221))))))

(assert (=> d!2889 (= (forall!139 (toList!259 (tail!70 lm!221)) p!191) e!9771)))

(declare-fun b!15964 () Bool)

(declare-fun e!9772 () Bool)

(assert (=> b!15964 (= e!9771 e!9772)))

(declare-fun res!11950 () Bool)

(assert (=> b!15964 (=> (not res!11950) (not e!9772))))

(declare-fun dynLambda!121 (Int tuple2!656) Bool)

(assert (=> b!15964 (= res!11950 (dynLambda!121 p!191 (h!1079 (toList!259 (tail!70 lm!221)))))))

(declare-fun b!15965 () Bool)

(assert (=> b!15965 (= e!9772 (forall!139 (t!3009 (toList!259 (tail!70 lm!221))) p!191))))

(assert (= (and d!2889 (not res!11949)) b!15964))

(assert (= (and b!15964 res!11950) b!15965))

(declare-fun b_lambda!1155 () Bool)

(assert (=> (not b_lambda!1155) (not b!15964)))

(declare-fun t!3015 () Bool)

(declare-fun tb!487 () Bool)

(assert (=> (and start!2678 (= p!191 p!191) t!3015) tb!487))

(declare-fun result!841 () Bool)

(assert (=> tb!487 (= result!841 true)))

(assert (=> b!15964 t!3015))

(declare-fun b_and!1063 () Bool)

(assert (= b_and!1057 (and (=> t!3015 result!841) b_and!1063)))

(declare-fun m!10973 () Bool)

(assert (=> b!15964 m!10973))

(declare-fun m!10975 () Bool)

(assert (=> b!15965 m!10975))

(assert (=> b!15946 d!2889))

(declare-fun d!2899 () Bool)

(declare-fun tail!72 (List!517) List!517)

(assert (=> d!2899 (= (tail!70 lm!221) (ListLongMap!488 (tail!72 (toList!259 lm!221))))))

(declare-fun bs!739 () Bool)

(assert (= bs!739 d!2899))

(declare-fun m!10983 () Bool)

(assert (=> bs!739 m!10983))

(assert (=> b!15946 d!2899))

(declare-fun d!2903 () Bool)

(declare-fun res!11953 () Bool)

(declare-fun e!9778 () Bool)

(assert (=> d!2903 (=> res!11953 e!9778)))

(assert (=> d!2903 (= res!11953 (is-Nil!514 (toList!259 lm!221)))))

(assert (=> d!2903 (= (forall!139 (toList!259 lm!221) p!191) e!9778)))

(declare-fun b!15973 () Bool)

(declare-fun e!9779 () Bool)

(assert (=> b!15973 (= e!9778 e!9779)))

(declare-fun res!11954 () Bool)

(assert (=> b!15973 (=> (not res!11954) (not e!9779))))

(assert (=> b!15973 (= res!11954 (dynLambda!121 p!191 (h!1079 (toList!259 lm!221))))))

(declare-fun b!15974 () Bool)

(assert (=> b!15974 (= e!9779 (forall!139 (t!3009 (toList!259 lm!221)) p!191))))

(assert (= (and d!2903 (not res!11953)) b!15973))

(assert (= (and b!15973 res!11954) b!15974))

(declare-fun b_lambda!1163 () Bool)

(assert (=> (not b_lambda!1163) (not b!15973)))

(declare-fun t!3019 () Bool)

(declare-fun tb!491 () Bool)

(assert (=> (and start!2678 (= p!191 p!191) t!3019) tb!491))

(declare-fun result!847 () Bool)

(assert (=> tb!491 (= result!847 true)))

(assert (=> b!15973 t!3019))

(declare-fun b_and!1067 () Bool)

(assert (= b_and!1063 (and (=> t!3019 result!847) b_and!1067)))

(declare-fun m!10985 () Bool)

(assert (=> b!15973 m!10985))

(declare-fun m!10987 () Bool)

(assert (=> b!15974 m!10987))

(assert (=> start!2678 d!2903))

(declare-fun d!2905 () Bool)

(declare-fun isStrictlySorted!157 (List!517) Bool)

(assert (=> d!2905 (= (inv!874 lm!221) (isStrictlySorted!157 (toList!259 lm!221)))))

(declare-fun bs!741 () Bool)

(assert (= bs!741 d!2905))

(declare-fun m!10995 () Bool)

(assert (=> bs!741 m!10995))

(assert (=> start!2678 d!2905))

(declare-fun b!15981 () Bool)

(declare-fun e!9784 () Bool)

(declare-fun tp_is_empty!819 () Bool)

(declare-fun tp!2813 () Bool)

(assert (=> b!15981 (= e!9784 (and tp_is_empty!819 tp!2813))))

(assert (=> b!15947 (= tp!2806 e!9784)))

(assert (= (and b!15947 (is-Cons!513 (toList!259 lm!221))) b!15981))

(declare-fun b_lambda!1167 () Bool)

(assert (= b_lambda!1155 (or (and start!2678 b_free!557) b_lambda!1167)))

(declare-fun b_lambda!1169 () Bool)

(assert (= b_lambda!1163 (or (and start!2678 b_free!557) b_lambda!1169)))

(push 1)

(assert (not b!15981))

(assert (not b_lambda!1167))

(assert (not b_lambda!1169))

(assert (not b_next!557))

(assert b_and!1067)

(assert (not d!2905))

(assert (not b!15965))

(assert (not d!2883))

(assert (not d!2899))

(assert (not b!15974))

(assert tp_is_empty!819)

(check-sat)

(pop 1)

(push 1)

(assert b_and!1067)

(assert (not b_next!557))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2929 () Bool)

(declare-fun res!11977 () Bool)

(declare-fun e!9809 () Bool)

(assert (=> d!2929 (=> res!11977 e!9809)))

(assert (=> d!2929 (= res!11977 (is-Nil!514 (t!3009 (toList!259 (tail!70 lm!221)))))))

(assert (=> d!2929 (= (forall!139 (t!3009 (toList!259 (tail!70 lm!221))) p!191) e!9809)))

(declare-fun b!16008 () Bool)

(declare-fun e!9810 () Bool)

(assert (=> b!16008 (= e!9809 e!9810)))

(declare-fun res!11978 () Bool)

(assert (=> b!16008 (=> (not res!11978) (not e!9810))))

(assert (=> b!16008 (= res!11978 (dynLambda!121 p!191 (h!1079 (t!3009 (toList!259 (tail!70 lm!221))))))))

(declare-fun b!16009 () Bool)

(assert (=> b!16009 (= e!9810 (forall!139 (t!3009 (t!3009 (toList!259 (tail!70 lm!221)))) p!191))))

(assert (= (and d!2929 (not res!11977)) b!16008))

(assert (= (and b!16008 res!11978) b!16009))

(declare-fun b_lambda!1187 () Bool)

(assert (=> (not b_lambda!1187) (not b!16008)))

(declare-fun t!3031 () Bool)

(declare-fun tb!503 () Bool)

(assert (=> (and start!2678 (= p!191 p!191) t!3031) tb!503))

(declare-fun result!863 () Bool)

(assert (=> tb!503 (= result!863 true)))

(assert (=> b!16008 t!3031))

(declare-fun b_and!1079 () Bool)

(assert (= b_and!1067 (and (=> t!3031 result!863) b_and!1079)))

(declare-fun m!11019 () Bool)

(assert (=> b!16008 m!11019))

(declare-fun m!11021 () Bool)

(assert (=> b!16009 m!11021))

(assert (=> b!15965 d!2929))

(declare-fun d!2933 () Bool)

(declare-fun res!11979 () Bool)

(declare-fun e!9811 () Bool)

(assert (=> d!2933 (=> res!11979 e!9811)))

(assert (=> d!2933 (= res!11979 (is-Nil!514 (t!3009 (toList!259 lm!221))))))

(assert (=> d!2933 (= (forall!139 (t!3009 (toList!259 lm!221)) p!191) e!9811)))

(declare-fun b!16010 () Bool)

(declare-fun e!9812 () Bool)

(assert (=> b!16010 (= e!9811 e!9812)))

(declare-fun res!11980 () Bool)

(assert (=> b!16010 (=> (not res!11980) (not e!9812))))

(assert (=> b!16010 (= res!11980 (dynLambda!121 p!191 (h!1079 (t!3009 (toList!259 lm!221)))))))

(declare-fun b!16011 () Bool)

(assert (=> b!16011 (= e!9812 (forall!139 (t!3009 (t!3009 (toList!259 lm!221))) p!191))))

(assert (= (and d!2933 (not res!11979)) b!16010))

(assert (= (and b!16010 res!11980) b!16011))

(declare-fun b_lambda!1189 () Bool)

(assert (=> (not b_lambda!1189) (not b!16010)))

(declare-fun t!3033 () Bool)

(declare-fun tb!505 () Bool)

(assert (=> (and start!2678 (= p!191 p!191) t!3033) tb!505))

(declare-fun result!865 () Bool)

(assert (=> tb!505 (= result!865 true)))

(assert (=> b!16010 t!3033))

(declare-fun b_and!1081 () Bool)

(assert (= b_and!1079 (and (=> t!3033 result!865) b_and!1081)))

(declare-fun m!11023 () Bool)

(assert (=> b!16010 m!11023))

(declare-fun m!11025 () Bool)

(assert (=> b!16011 m!11025))

