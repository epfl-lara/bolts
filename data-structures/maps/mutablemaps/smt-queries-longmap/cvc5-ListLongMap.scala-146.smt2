; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2674 () Bool)

(assert start!2674)

(declare-fun b_free!553 () Bool)

(declare-fun b_next!553 () Bool)

(assert (=> start!2674 (= b_free!553 (not b_next!553))))

(declare-fun tp!2795 () Bool)

(declare-fun b_and!1053 () Bool)

(assert (=> start!2674 (= tp!2795 b_and!1053)))

(declare-fun res!11920 () Bool)

(declare-fun e!9742 () Bool)

(assert (=> start!2674 (=> (not res!11920) (not e!9742))))

(declare-datatypes ((B!674 0))(
  ( (B!675 (val!435 Int)) )
))
(declare-datatypes ((tuple2!652 0))(
  ( (tuple2!653 (_1!326 (_ BitVec 64)) (_2!326 B!674)) )
))
(declare-datatypes ((List!515 0))(
  ( (Nil!512) (Cons!511 (h!1077 tuple2!652) (t!3007 List!515)) )
))
(declare-datatypes ((ListLongMap!483 0))(
  ( (ListLongMap!484 (toList!257 List!515)) )
))
(declare-fun lm!221 () ListLongMap!483)

(declare-fun p!191 () Int)

(declare-fun forall!137 (List!515 Int) Bool)

(assert (=> start!2674 (= res!11920 (forall!137 (toList!257 lm!221) p!191))))

(assert (=> start!2674 e!9742))

(declare-fun e!9741 () Bool)

(declare-fun inv!872 (ListLongMap!483) Bool)

(assert (=> start!2674 (and (inv!872 lm!221) e!9741)))

(assert (=> start!2674 tp!2795))

(declare-fun b!15927 () Bool)

(declare-fun res!11919 () Bool)

(assert (=> b!15927 (=> (not res!11919) (not e!9742))))

(declare-fun isEmpty!144 (ListLongMap!483) Bool)

(assert (=> b!15927 (= res!11919 (not (isEmpty!144 lm!221)))))

(declare-fun b!15928 () Bool)

(declare-fun tail!68 (ListLongMap!483) ListLongMap!483)

(assert (=> b!15928 (= e!9742 (not (forall!137 (toList!257 (tail!68 lm!221)) p!191)))))

(declare-fun b!15929 () Bool)

(declare-fun tp!2794 () Bool)

(assert (=> b!15929 (= e!9741 tp!2794)))

(assert (= (and start!2674 res!11920) b!15927))

(assert (= (and b!15927 res!11919) b!15928))

(assert (= start!2674 b!15929))

(declare-fun m!10927 () Bool)

(assert (=> start!2674 m!10927))

(declare-fun m!10929 () Bool)

(assert (=> start!2674 m!10929))

(declare-fun m!10931 () Bool)

(assert (=> b!15927 m!10931))

(declare-fun m!10933 () Bool)

(assert (=> b!15928 m!10933))

(declare-fun m!10935 () Bool)

(assert (=> b!15928 m!10935))

(push 1)

(assert (not b!15928))

(assert (not b_next!553))

(assert (not b!15927))

(assert b_and!1053)

(assert (not start!2674))

(assert (not b!15929))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1053)

(assert (not b_next!553))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2881 () Bool)

(declare-fun isEmpty!147 (List!515) Bool)

(assert (=> d!2881 (= (isEmpty!144 lm!221) (isEmpty!147 (toList!257 lm!221)))))

(declare-fun bs!734 () Bool)

(assert (= bs!734 d!2881))

(declare-fun m!10957 () Bool)

(assert (=> bs!734 m!10957))

(assert (=> b!15927 d!2881))

(declare-fun d!2885 () Bool)

(declare-fun res!11937 () Bool)

(declare-fun e!9759 () Bool)

(assert (=> d!2885 (=> res!11937 e!9759)))

(assert (=> d!2885 (= res!11937 (is-Nil!512 (toList!257 (tail!68 lm!221))))))

(assert (=> d!2885 (= (forall!137 (toList!257 (tail!68 lm!221)) p!191) e!9759)))

(declare-fun b!15952 () Bool)

(declare-fun e!9760 () Bool)

(assert (=> b!15952 (= e!9759 e!9760)))

(declare-fun res!11938 () Bool)

(assert (=> b!15952 (=> (not res!11938) (not e!9760))))

(declare-fun dynLambda!120 (Int tuple2!652) Bool)

(assert (=> b!15952 (= res!11938 (dynLambda!120 p!191 (h!1077 (toList!257 (tail!68 lm!221)))))))

(declare-fun b!15953 () Bool)

(assert (=> b!15953 (= e!9760 (forall!137 (t!3007 (toList!257 (tail!68 lm!221))) p!191))))

(assert (= (and d!2885 (not res!11937)) b!15952))

(assert (= (and b!15952 res!11938) b!15953))

(declare-fun b_lambda!1151 () Bool)

(assert (=> (not b_lambda!1151) (not b!15952)))

(declare-fun t!3011 () Bool)

(declare-fun tb!483 () Bool)

(assert (=> (and start!2674 (= p!191 p!191) t!3011) tb!483))

(declare-fun result!837 () Bool)

(assert (=> tb!483 (= result!837 true)))

(assert (=> b!15952 t!3011))

(declare-fun b_and!1059 () Bool)

(assert (= b_and!1053 (and (=> t!3011 result!837) b_and!1059)))

(declare-fun m!10961 () Bool)

(assert (=> b!15952 m!10961))

(declare-fun m!10965 () Bool)

(assert (=> b!15953 m!10965))

(assert (=> b!15928 d!2885))

(declare-fun d!2891 () Bool)

(declare-fun tail!71 (List!515) List!515)

(assert (=> d!2891 (= (tail!68 lm!221) (ListLongMap!484 (tail!71 (toList!257 lm!221))))))

(declare-fun bs!737 () Bool)

(assert (= bs!737 d!2891))

(declare-fun m!10967 () Bool)

(assert (=> bs!737 m!10967))

(assert (=> b!15928 d!2891))

(declare-fun d!2895 () Bool)

(declare-fun res!11943 () Bool)

(declare-fun e!9765 () Bool)

(assert (=> d!2895 (=> res!11943 e!9765)))

(assert (=> d!2895 (= res!11943 (is-Nil!512 (toList!257 lm!221)))))

(assert (=> d!2895 (= (forall!137 (toList!257 lm!221) p!191) e!9765)))

(declare-fun b!15958 () Bool)

(declare-fun e!9766 () Bool)

(assert (=> b!15958 (= e!9765 e!9766)))

(declare-fun res!11944 () Bool)

(assert (=> b!15958 (=> (not res!11944) (not e!9766))))

(assert (=> b!15958 (= res!11944 (dynLambda!120 p!191 (h!1077 (toList!257 lm!221))))))

(declare-fun b!15959 () Bool)

(assert (=> b!15959 (= e!9766 (forall!137 (t!3007 (toList!257 lm!221)) p!191))))

(assert (= (and d!2895 (not res!11943)) b!15958))

(assert (= (and b!15958 res!11944) b!15959))

(declare-fun b_lambda!1153 () Bool)

(assert (=> (not b_lambda!1153) (not b!15958)))

(declare-fun t!3013 () Bool)

(declare-fun tb!485 () Bool)

(assert (=> (and start!2674 (= p!191 p!191) t!3013) tb!485))

(declare-fun result!839 () Bool)

(assert (=> tb!485 (= result!839 true)))

(assert (=> b!15958 t!3013))

(declare-fun b_and!1061 () Bool)

(assert (= b_and!1059 (and (=> t!3013 result!839) b_and!1061)))

(declare-fun m!10969 () Bool)

(assert (=> b!15958 m!10969))

(declare-fun m!10971 () Bool)

(assert (=> b!15959 m!10971))

(assert (=> start!2674 d!2895))

(declare-fun d!2897 () Bool)

(declare-fun isStrictlySorted!155 (List!515) Bool)

(assert (=> d!2897 (= (inv!872 lm!221) (isStrictlySorted!155 (toList!257 lm!221)))))

(declare-fun bs!738 () Bool)

(assert (= bs!738 d!2897))

(declare-fun m!10977 () Bool)

(assert (=> bs!738 m!10977))

(assert (=> start!2674 d!2897))

(declare-fun b!15972 () Bool)

(declare-fun e!9777 () Bool)

(declare-fun tp_is_empty!817 () Bool)

(declare-fun tp!2810 () Bool)

(assert (=> b!15972 (= e!9777 (and tp_is_empty!817 tp!2810))))

(assert (=> b!15929 (= tp!2794 e!9777)))

(assert (= (and b!15929 (is-Cons!511 (toList!257 lm!221))) b!15972))

(declare-fun b_lambda!1159 () Bool)

(assert (= b_lambda!1153 (or (and start!2674 b_free!553) b_lambda!1159)))

(declare-fun b_lambda!1161 () Bool)

(assert (= b_lambda!1151 (or (and start!2674 b_free!553) b_lambda!1161)))

(push 1)

(assert (not d!2897))

(assert tp_is_empty!817)

(assert b_and!1061)

(assert (not b!15959))

(assert (not b_lambda!1159))

(assert (not b_next!553))

(assert (not d!2891))

(assert (not b!15953))

(assert (not d!2881))

(assert (not b_lambda!1161))

(assert (not b!15972))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1061)

(assert (not b_next!553))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2911 () Bool)

(declare-fun res!11957 () Bool)

(declare-fun e!9788 () Bool)

(assert (=> d!2911 (=> res!11957 e!9788)))

(assert (=> d!2911 (= res!11957 (is-Nil!512 (t!3007 (toList!257 (tail!68 lm!221)))))))

(assert (=> d!2911 (= (forall!137 (t!3007 (toList!257 (tail!68 lm!221))) p!191) e!9788)))

(declare-fun b!15987 () Bool)

(declare-fun e!9789 () Bool)

(assert (=> b!15987 (= e!9788 e!9789)))

(declare-fun res!11958 () Bool)

(assert (=> b!15987 (=> (not res!11958) (not e!9789))))

(assert (=> b!15987 (= res!11958 (dynLambda!120 p!191 (h!1077 (t!3007 (toList!257 (tail!68 lm!221))))))))

(declare-fun b!15988 () Bool)

(assert (=> b!15988 (= e!9789 (forall!137 (t!3007 (t!3007 (toList!257 (tail!68 lm!221)))) p!191))))

(assert (= (and d!2911 (not res!11957)) b!15987))

(assert (= (and b!15987 res!11958) b!15988))

(declare-fun b_lambda!1175 () Bool)

(assert (=> (not b_lambda!1175) (not b!15987)))

(declare-fun t!3023 () Bool)

(declare-fun tb!495 () Bool)

(assert (=> (and start!2674 (= p!191 p!191) t!3023) tb!495))

(declare-fun result!855 () Bool)

(assert (=> tb!495 (= result!855 true)))

(assert (=> b!15987 t!3023))

(declare-fun b_and!1071 () Bool)

(assert (= b_and!1061 (and (=> t!3023 result!855) b_and!1071)))

(declare-fun m!10999 () Bool)

(assert (=> b!15987 m!10999))

(declare-fun m!11001 () Bool)

(assert (=> b!15988 m!11001))

(assert (=> b!15953 d!2911))

(declare-fun d!2913 () Bool)

(assert (=> d!2913 (= (isEmpty!147 (toList!257 lm!221)) (is-Nil!512 (toList!257 lm!221)))))

(assert (=> d!2881 d!2913))

(declare-fun d!2915 () Bool)

(assert (=> d!2915 (= (tail!71 (toList!257 lm!221)) (t!3007 (toList!257 lm!221)))))

(assert (=> d!2891 d!2915))

(declare-fun d!2917 () Bool)

(declare-fun res!11959 () Bool)

(declare-fun e!9790 () Bool)

(assert (=> d!2917 (=> res!11959 e!9790)))

(assert (=> d!2917 (= res!11959 (is-Nil!512 (t!3007 (toList!257 lm!221))))))

(assert (=> d!2917 (= (forall!137 (t!3007 (toList!257 lm!221)) p!191) e!9790)))

(declare-fun b!15989 () Bool)

(declare-fun e!9791 () Bool)

(assert (=> b!15989 (= e!9790 e!9791)))

(declare-fun res!11960 () Bool)

(assert (=> b!15989 (=> (not res!11960) (not e!9791))))

(assert (=> b!15989 (= res!11960 (dynLambda!120 p!191 (h!1077 (t!3007 (toList!257 lm!221)))))))

(declare-fun b!15990 () Bool)

(assert (=> b!15990 (= e!9791 (forall!137 (t!3007 (t!3007 (toList!257 lm!221))) p!191))))

(assert (= (and d!2917 (not res!11959)) b!15989))

(assert (= (and b!15989 res!11960) b!15990))

(declare-fun b_lambda!1177 () Bool)

(assert (=> (not b_lambda!1177) (not b!15989)))

(declare-fun t!3025 () Bool)

(declare-fun tb!497 () Bool)

(assert (=> (and start!2674 (= p!191 p!191) t!3025) tb!497))

(declare-fun result!857 () Bool)

(assert (=> tb!497 (= result!857 true)))

(assert (=> b!15989 t!3025))

(declare-fun b_and!1073 () Bool)

(assert (= b_and!1071 (and (=> t!3025 result!857) b_and!1073)))

(declare-fun m!11003 () Bool)

(assert (=> b!15989 m!11003))

(declare-fun m!11005 () Bool)

(assert (=> b!15990 m!11005))

(assert (=> b!15959 d!2917))

(declare-fun d!2919 () Bool)

(declare-fun res!11967 () Bool)

(declare-fun e!9798 () Bool)

(assert (=> d!2919 (=> res!11967 e!9798)))

(assert (=> d!2919 (= res!11967 (or (is-Nil!512 (toList!257 lm!221)) (is-Nil!512 (t!3007 (toList!257 lm!221)))))))

(assert (=> d!2919 (= (isStrictlySorted!155 (toList!257 lm!221)) e!9798)))

(declare-fun b!15997 () Bool)

(declare-fun e!9799 () Bool)

(assert (=> b!15997 (= e!9798 e!9799)))

(declare-fun res!11968 () Bool)

(assert (=> b!15997 (=> (not res!11968) (not e!9799))))

(assert (=> b!15997 (= res!11968 (bvslt (_1!326 (h!1077 (toList!257 lm!221))) (_1!326 (h!1077 (t!3007 (toList!257 lm!221))))))))

(declare-fun b!15998 () Bool)

(assert (=> b!15998 (= e!9799 (isStrictlySorted!155 (t!3007 (toList!257 lm!221))))))

(assert (= (and d!2919 (not res!11967)) b!15997))

(assert (= (and b!15997 res!11968) b!15998))

(declare-fun m!11011 () Bool)

(assert (=> b!15998 m!11011))

(assert (=> d!2897 d!2919))

(declare-fun b!15999 () Bool)

(declare-fun e!9800 () Bool)

(declare-fun tp!2817 () Bool)

(assert (=> b!15999 (= e!9800 (and tp_is_empty!817 tp!2817))))

(assert (=> b!15972 (= tp!2810 e!9800)))

(assert (= (and b!15972 (is-Cons!511 (t!3007 (toList!257 lm!221)))) b!15999))

(declare-fun b_lambda!1181 () Bool)

(assert (= b_lambda!1177 (or (and start!2674 b_free!553) b_lambda!1181)))

(declare-fun b_lambda!1183 () Bool)

(assert (= b_lambda!1175 (or (and start!2674 b_free!553) b_lambda!1183)))

(push 1)

(assert (not b_lambda!1159))

(assert (not b_lambda!1181))

(assert (not b_lambda!1183))

(assert (not b!15998))

(assert tp_is_empty!817)

(assert b_and!1073)

(assert (not b!15988))

(assert (not b_lambda!1161))

(assert (not b!15999))

(assert (not b!15990))

(assert (not b_next!553))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1073)

(assert (not b_next!553))

(check-sat)

(pop 1)

