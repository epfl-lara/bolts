; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42872 () Bool)

(assert start!42872)

(declare-fun b_free!12103 () Bool)

(declare-fun b_next!12103 () Bool)

(assert (=> start!42872 (= b_free!12103 (not b_next!12103))))

(declare-fun tp!42397 () Bool)

(declare-fun b_and!20735 () Bool)

(assert (=> start!42872 (= tp!42397 b_and!20735)))

(declare-fun b!476684 () Bool)

(declare-fun e!280045 () Bool)

(declare-fun e!280044 () Bool)

(assert (=> b!476684 (= e!280045 e!280044)))

(declare-fun res!284626 () Bool)

(assert (=> b!476684 (=> (not res!284626) (not e!280044))))

(declare-datatypes ((B!1052 0))(
  ( (B!1053 (val!6810 Int)) )
))
(declare-datatypes ((tuple2!8990 0))(
  ( (tuple2!8991 (_1!4505 (_ BitVec 64)) (_2!4505 B!1052)) )
))
(declare-datatypes ((List!9084 0))(
  ( (Nil!9081) (Cons!9080 (h!9936 tuple2!8990) (t!15156 List!9084)) )
))
(declare-datatypes ((ListLongMap!7917 0))(
  ( (ListLongMap!7918 (toList!3974 List!9084)) )
))
(declare-fun lt!217304 () ListLongMap!7917)

(declare-fun p!166 () Int)

(declare-fun forall!197 (List!9084 Int) Bool)

(assert (=> b!476684 (= res!284626 (forall!197 (toList!3974 lt!217304) p!166))))

(declare-fun lm!215 () ListLongMap!7917)

(declare-fun tail!125 (ListLongMap!7917) ListLongMap!7917)

(assert (=> b!476684 (= lt!217304 (tail!125 lm!215))))

(declare-fun res!284629 () Bool)

(declare-fun e!280043 () Bool)

(assert (=> start!42872 (=> (not res!284629) (not e!280043))))

(assert (=> start!42872 (= res!284629 (forall!197 (toList!3974 lm!215) p!166))))

(assert (=> start!42872 e!280043))

(declare-fun e!280046 () Bool)

(declare-fun inv!15495 (ListLongMap!7917) Bool)

(assert (=> start!42872 (and (inv!15495 lm!215) e!280046)))

(assert (=> start!42872 tp!42397))

(declare-fun tp_is_empty!13525 () Bool)

(assert (=> start!42872 tp_is_empty!13525))

(assert (=> start!42872 true))

(declare-fun b!476685 () Bool)

(declare-fun tp!42396 () Bool)

(assert (=> b!476685 (= e!280046 tp!42396)))

(declare-fun lt!217306 () tuple2!8990)

(declare-fun b!476686 () Bool)

(declare-fun +!1736 (ListLongMap!7917 tuple2!8990) ListLongMap!7917)

(assert (=> b!476686 (= e!280044 (not (forall!197 (toList!3974 (+!1736 lm!215 lt!217306)) p!166)))))

(assert (=> b!476686 (forall!197 (toList!3974 (+!1736 lt!217304 lt!217306)) p!166)))

(declare-fun b!85 () B!1052)

(declare-fun a!501 () (_ BitVec 64))

(declare-datatypes ((Unit!14003 0))(
  ( (Unit!14004) )
))
(declare-fun lt!217305 () Unit!14003)

(declare-fun addValidProp!20 (ListLongMap!7917 Int (_ BitVec 64) B!1052) Unit!14003)

(assert (=> b!476686 (= lt!217305 (addValidProp!20 lt!217304 p!166 a!501 b!85))))

(declare-fun b!476687 () Bool)

(assert (=> b!476687 (= e!280043 e!280045)))

(declare-fun res!284628 () Bool)

(assert (=> b!476687 (=> (not res!284628) (not e!280045))))

(declare-fun dynLambda!943 (Int tuple2!8990) Bool)

(assert (=> b!476687 (= res!284628 (dynLambda!943 p!166 lt!217306))))

(assert (=> b!476687 (= lt!217306 (tuple2!8991 a!501 b!85))))

(declare-fun b!476688 () Bool)

(declare-fun res!284627 () Bool)

(assert (=> b!476688 (=> (not res!284627) (not e!280045))))

(declare-fun isEmpty!606 (ListLongMap!7917) Bool)

(assert (=> b!476688 (= res!284627 (not (isEmpty!606 lm!215)))))

(assert (= (and start!42872 res!284629) b!476687))

(assert (= (and b!476687 res!284628) b!476688))

(assert (= (and b!476688 res!284627) b!476684))

(assert (= (and b!476684 res!284626) b!476686))

(assert (= start!42872 b!476685))

(declare-fun b_lambda!10545 () Bool)

(assert (=> (not b_lambda!10545) (not b!476687)))

(declare-fun t!15155 () Bool)

(declare-fun tb!4029 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15155) tb!4029))

(declare-fun result!7591 () Bool)

(assert (=> tb!4029 (= result!7591 true)))

(assert (=> b!476687 t!15155))

(declare-fun b_and!20737 () Bool)

(assert (= b_and!20735 (and (=> t!15155 result!7591) b_and!20737)))

(declare-fun m!458979 () Bool)

(assert (=> start!42872 m!458979))

(declare-fun m!458981 () Bool)

(assert (=> start!42872 m!458981))

(declare-fun m!458983 () Bool)

(assert (=> b!476686 m!458983))

(declare-fun m!458985 () Bool)

(assert (=> b!476686 m!458985))

(declare-fun m!458987 () Bool)

(assert (=> b!476686 m!458987))

(declare-fun m!458989 () Bool)

(assert (=> b!476686 m!458989))

(declare-fun m!458991 () Bool)

(assert (=> b!476686 m!458991))

(declare-fun m!458993 () Bool)

(assert (=> b!476688 m!458993))

(declare-fun m!458995 () Bool)

(assert (=> b!476684 m!458995))

(declare-fun m!458997 () Bool)

(assert (=> b!476684 m!458997))

(declare-fun m!458999 () Bool)

(assert (=> b!476687 m!458999))

(push 1)

(assert (not b!476685))

(assert (not b_next!12103))

(assert b_and!20737)

(assert (not b!476686))

(assert (not start!42872))

(assert (not b_lambda!10545))

(assert (not b!476684))

(assert tp_is_empty!13525)

(assert (not b!476688))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20737)

(assert (not b_next!12103))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!10551 () Bool)

(assert (= b_lambda!10545 (or (and start!42872 b_free!12103) b_lambda!10551)))

(push 1)

(assert (not b!476685))

(assert b_and!20737)

(assert (not b!476686))

(assert (not start!42872))

(assert (not b!476684))

(assert (not b_lambda!10551))

(assert (not b_next!12103))

(assert tp_is_empty!13525)

(assert (not b!476688))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20737)

(assert (not b_next!12103))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75781 () Bool)

(declare-fun isEmpty!609 (List!9084) Bool)

(assert (=> d!75781 (= (isEmpty!606 lm!215) (isEmpty!609 (toList!3974 lm!215)))))

(declare-fun bs!15155 () Bool)

(assert (= bs!15155 d!75781))

(declare-fun m!459045 () Bool)

(assert (=> bs!15155 m!459045))

(assert (=> b!476688 d!75781))

(declare-fun d!75783 () Bool)

(declare-fun res!284662 () Bool)

(declare-fun e!280079 () Bool)

(assert (=> d!75783 (=> res!284662 e!280079)))

(assert (=> d!75783 (= res!284662 (is-Nil!9081 (toList!3974 (+!1736 lm!215 lt!217306))))))

(assert (=> d!75783 (= (forall!197 (toList!3974 (+!1736 lm!215 lt!217306)) p!166) e!280079)))

(declare-fun b!476727 () Bool)

(declare-fun e!280080 () Bool)

(assert (=> b!476727 (= e!280079 e!280080)))

(declare-fun res!284663 () Bool)

(assert (=> b!476727 (=> (not res!284663) (not e!280080))))

(assert (=> b!476727 (= res!284663 (dynLambda!943 p!166 (h!9936 (toList!3974 (+!1736 lm!215 lt!217306)))))))

(declare-fun b!476728 () Bool)

(assert (=> b!476728 (= e!280080 (forall!197 (t!15156 (toList!3974 (+!1736 lm!215 lt!217306))) p!166))))

(assert (= (and d!75783 (not res!284662)) b!476727))

(assert (= (and b!476727 res!284663) b!476728))

(declare-fun b_lambda!10557 () Bool)

(assert (=> (not b_lambda!10557) (not b!476727)))

(declare-fun t!15164 () Bool)

(declare-fun tb!4035 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15164) tb!4035))

(declare-fun result!7597 () Bool)

(assert (=> tb!4035 (= result!7597 true)))

(assert (=> b!476727 t!15164))

(declare-fun b_and!20747 () Bool)

(assert (= b_and!20737 (and (=> t!15164 result!7597) b_and!20747)))

(declare-fun m!459047 () Bool)

(assert (=> b!476727 m!459047))

(declare-fun m!459049 () Bool)

(assert (=> b!476728 m!459049))

(assert (=> b!476686 d!75783))

(declare-fun d!75787 () Bool)

(declare-fun e!280093 () Bool)

(assert (=> d!75787 e!280093))

(declare-fun res!284681 () Bool)

(assert (=> d!75787 (=> (not res!284681) (not e!280093))))

(declare-fun lt!217341 () ListLongMap!7917)

(declare-fun contains!2571 (ListLongMap!7917 (_ BitVec 64)) Bool)

(assert (=> d!75787 (= res!284681 (contains!2571 lt!217341 (_1!4505 lt!217306)))))

(declare-fun lt!217342 () List!9084)

(assert (=> d!75787 (= lt!217341 (ListLongMap!7918 lt!217342))))

(declare-fun lt!217344 () Unit!14003)

(declare-fun lt!217343 () Unit!14003)

(assert (=> d!75787 (= lt!217344 lt!217343)))

(declare-datatypes ((Option!391 0))(
  ( (Some!390 (v!9088 B!1052)) (None!389) )
))
(declare-fun getValueByKey!385 (List!9084 (_ BitVec 64)) Option!391)

(assert (=> d!75787 (= (getValueByKey!385 lt!217342 (_1!4505 lt!217306)) (Some!390 (_2!4505 lt!217306)))))

(declare-fun lemmaContainsTupThenGetReturnValue!209 (List!9084 (_ BitVec 64) B!1052) Unit!14003)

(assert (=> d!75787 (= lt!217343 (lemmaContainsTupThenGetReturnValue!209 lt!217342 (_1!4505 lt!217306) (_2!4505 lt!217306)))))

(declare-fun insertStrictlySorted!211 (List!9084 (_ BitVec 64) B!1052) List!9084)

(assert (=> d!75787 (= lt!217342 (insertStrictlySorted!211 (toList!3974 lt!217304) (_1!4505 lt!217306) (_2!4505 lt!217306)))))

(assert (=> d!75787 (= (+!1736 lt!217304 lt!217306) lt!217341)))

(declare-fun b!476745 () Bool)

(declare-fun res!284680 () Bool)

(assert (=> b!476745 (=> (not res!284680) (not e!280093))))

(assert (=> b!476745 (= res!284680 (= (getValueByKey!385 (toList!3974 lt!217341) (_1!4505 lt!217306)) (Some!390 (_2!4505 lt!217306))))))

(declare-fun b!476746 () Bool)

(declare-fun contains!2573 (List!9084 tuple2!8990) Bool)

(assert (=> b!476746 (= e!280093 (contains!2573 (toList!3974 lt!217341) lt!217306))))

(assert (= (and d!75787 res!284681) b!476745))

(assert (= (and b!476745 res!284680) b!476746))

(declare-fun m!459063 () Bool)

(assert (=> d!75787 m!459063))

(declare-fun m!459065 () Bool)

(assert (=> d!75787 m!459065))

(declare-fun m!459067 () Bool)

(assert (=> d!75787 m!459067))

(declare-fun m!459069 () Bool)

(assert (=> d!75787 m!459069))

(declare-fun m!459071 () Bool)

(assert (=> b!476745 m!459071))

(declare-fun m!459073 () Bool)

(assert (=> b!476746 m!459073))

(assert (=> b!476686 d!75787))

(declare-fun d!75799 () Bool)

(declare-fun e!280095 () Bool)

(assert (=> d!75799 e!280095))

(declare-fun res!284685 () Bool)

(assert (=> d!75799 (=> (not res!284685) (not e!280095))))

(declare-fun lt!217349 () ListLongMap!7917)

(assert (=> d!75799 (= res!284685 (contains!2571 lt!217349 (_1!4505 lt!217306)))))

(declare-fun lt!217350 () List!9084)

(assert (=> d!75799 (= lt!217349 (ListLongMap!7918 lt!217350))))

(declare-fun lt!217352 () Unit!14003)

(declare-fun lt!217351 () Unit!14003)

(assert (=> d!75799 (= lt!217352 lt!217351)))

(assert (=> d!75799 (= (getValueByKey!385 lt!217350 (_1!4505 lt!217306)) (Some!390 (_2!4505 lt!217306)))))

(assert (=> d!75799 (= lt!217351 (lemmaContainsTupThenGetReturnValue!209 lt!217350 (_1!4505 lt!217306) (_2!4505 lt!217306)))))

(assert (=> d!75799 (= lt!217350 (insertStrictlySorted!211 (toList!3974 lm!215) (_1!4505 lt!217306) (_2!4505 lt!217306)))))

(assert (=> d!75799 (= (+!1736 lm!215 lt!217306) lt!217349)))

(declare-fun b!476749 () Bool)

(declare-fun res!284684 () Bool)

(assert (=> b!476749 (=> (not res!284684) (not e!280095))))

(assert (=> b!476749 (= res!284684 (= (getValueByKey!385 (toList!3974 lt!217349) (_1!4505 lt!217306)) (Some!390 (_2!4505 lt!217306))))))

(declare-fun b!476750 () Bool)

(assert (=> b!476750 (= e!280095 (contains!2573 (toList!3974 lt!217349) lt!217306))))

(assert (= (and d!75799 res!284685) b!476749))

(assert (= (and b!476749 res!284684) b!476750))

(declare-fun m!459087 () Bool)

(assert (=> d!75799 m!459087))

(declare-fun m!459089 () Bool)

(assert (=> d!75799 m!459089))

(declare-fun m!459091 () Bool)

(assert (=> d!75799 m!459091))

(declare-fun m!459093 () Bool)

(assert (=> d!75799 m!459093))

(declare-fun m!459095 () Bool)

(assert (=> b!476749 m!459095))

(declare-fun m!459097 () Bool)

(assert (=> b!476750 m!459097))

(assert (=> b!476686 d!75799))

(declare-fun d!75803 () Bool)

(assert (=> d!75803 (forall!197 (toList!3974 (+!1736 lt!217304 (tuple2!8991 a!501 b!85))) p!166)))

(declare-fun lt!217373 () Unit!14003)

(declare-fun choose!1369 (ListLongMap!7917 Int (_ BitVec 64) B!1052) Unit!14003)

(assert (=> d!75803 (= lt!217373 (choose!1369 lt!217304 p!166 a!501 b!85))))

(declare-fun e!280108 () Bool)

(assert (=> d!75803 e!280108))

(declare-fun res!284702 () Bool)

(assert (=> d!75803 (=> (not res!284702) (not e!280108))))

(assert (=> d!75803 (= res!284702 (forall!197 (toList!3974 lt!217304) p!166))))

(assert (=> d!75803 (= (addValidProp!20 lt!217304 p!166 a!501 b!85) lt!217373)))

(declare-fun b!476769 () Bool)

(assert (=> b!476769 (= e!280108 (dynLambda!943 p!166 (tuple2!8991 a!501 b!85)))))

(assert (= (and d!75803 res!284702) b!476769))

(declare-fun b_lambda!10567 () Bool)

(assert (=> (not b_lambda!10567) (not b!476769)))

(declare-fun t!15174 () Bool)

(declare-fun tb!4045 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15174) tb!4045))

(declare-fun result!7607 () Bool)

(assert (=> tb!4045 (= result!7607 true)))

(assert (=> b!476769 t!15174))

(declare-fun b_and!20757 () Bool)

(assert (= b_and!20747 (and (=> t!15174 result!7607) b_and!20757)))

(declare-fun m!459131 () Bool)

(assert (=> d!75803 m!459131))

(declare-fun m!459133 () Bool)

(assert (=> d!75803 m!459133))

(declare-fun m!459135 () Bool)

(assert (=> d!75803 m!459135))

(assert (=> d!75803 m!458995))

(declare-fun m!459137 () Bool)

(assert (=> b!476769 m!459137))

(assert (=> b!476686 d!75803))

(declare-fun d!75813 () Bool)

(declare-fun res!284703 () Bool)

(declare-fun e!280109 () Bool)

(assert (=> d!75813 (=> res!284703 e!280109)))

(assert (=> d!75813 (= res!284703 (is-Nil!9081 (toList!3974 (+!1736 lt!217304 lt!217306))))))

(assert (=> d!75813 (= (forall!197 (toList!3974 (+!1736 lt!217304 lt!217306)) p!166) e!280109)))

(declare-fun b!476770 () Bool)

(declare-fun e!280110 () Bool)

(assert (=> b!476770 (= e!280109 e!280110)))

(declare-fun res!284704 () Bool)

(assert (=> b!476770 (=> (not res!284704) (not e!280110))))

(assert (=> b!476770 (= res!284704 (dynLambda!943 p!166 (h!9936 (toList!3974 (+!1736 lt!217304 lt!217306)))))))

(declare-fun b!476771 () Bool)

(assert (=> b!476771 (= e!280110 (forall!197 (t!15156 (toList!3974 (+!1736 lt!217304 lt!217306))) p!166))))

(assert (= (and d!75813 (not res!284703)) b!476770))

(assert (= (and b!476770 res!284704) b!476771))

(declare-fun b_lambda!10569 () Bool)

(assert (=> (not b_lambda!10569) (not b!476770)))

(declare-fun t!15176 () Bool)

(declare-fun tb!4047 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15176) tb!4047))

(declare-fun result!7609 () Bool)

(assert (=> tb!4047 (= result!7609 true)))

(assert (=> b!476770 t!15176))

(declare-fun b_and!20759 () Bool)

(assert (= b_and!20757 (and (=> t!15176 result!7609) b_and!20759)))

(declare-fun m!459139 () Bool)

(assert (=> b!476770 m!459139))

(declare-fun m!459143 () Bool)

(assert (=> b!476771 m!459143))

(assert (=> b!476686 d!75813))

(declare-fun d!75815 () Bool)

(declare-fun res!284706 () Bool)

(declare-fun e!280112 () Bool)

(assert (=> d!75815 (=> res!284706 e!280112)))

(assert (=> d!75815 (= res!284706 (is-Nil!9081 (toList!3974 lm!215)))))

(assert (=> d!75815 (= (forall!197 (toList!3974 lm!215) p!166) e!280112)))

(declare-fun b!476773 () Bool)

(declare-fun e!280113 () Bool)

(assert (=> b!476773 (= e!280112 e!280113)))

(declare-fun res!284707 () Bool)

(assert (=> b!476773 (=> (not res!284707) (not e!280113))))

(assert (=> b!476773 (= res!284707 (dynLambda!943 p!166 (h!9936 (toList!3974 lm!215))))))

(declare-fun b!476774 () Bool)

(assert (=> b!476774 (= e!280113 (forall!197 (t!15156 (toList!3974 lm!215)) p!166))))

(assert (= (and d!75815 (not res!284706)) b!476773))

(assert (= (and b!476773 res!284707) b!476774))

(declare-fun b_lambda!10573 () Bool)

(assert (=> (not b_lambda!10573) (not b!476773)))

(declare-fun t!15180 () Bool)

(declare-fun tb!4051 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15180) tb!4051))

(declare-fun result!7613 () Bool)

(assert (=> tb!4051 (= result!7613 true)))

(assert (=> b!476773 t!15180))

(declare-fun b_and!20763 () Bool)

(assert (= b_and!20759 (and (=> t!15180 result!7613) b_and!20763)))

(declare-fun m!459151 () Bool)

(assert (=> b!476773 m!459151))

(declare-fun m!459153 () Bool)

(assert (=> b!476774 m!459153))

(assert (=> start!42872 d!75815))

(declare-fun d!75819 () Bool)

(declare-fun isStrictlySorted!384 (List!9084) Bool)

(assert (=> d!75819 (= (inv!15495 lm!215) (isStrictlySorted!384 (toList!3974 lm!215)))))

(declare-fun bs!15159 () Bool)

(assert (= bs!15159 d!75819))

(declare-fun m!459161 () Bool)

(assert (=> bs!15159 m!459161))

(assert (=> start!42872 d!75819))

(declare-fun d!75825 () Bool)

(declare-fun res!284710 () Bool)

(declare-fun e!280116 () Bool)

(assert (=> d!75825 (=> res!284710 e!280116)))

(assert (=> d!75825 (= res!284710 (is-Nil!9081 (toList!3974 lt!217304)))))

(assert (=> d!75825 (= (forall!197 (toList!3974 lt!217304) p!166) e!280116)))

(declare-fun b!476777 () Bool)

(declare-fun e!280117 () Bool)

(assert (=> b!476777 (= e!280116 e!280117)))

(declare-fun res!284711 () Bool)

(assert (=> b!476777 (=> (not res!284711) (not e!280117))))

(assert (=> b!476777 (= res!284711 (dynLambda!943 p!166 (h!9936 (toList!3974 lt!217304))))))

(declare-fun b!476778 () Bool)

(assert (=> b!476778 (= e!280117 (forall!197 (t!15156 (toList!3974 lt!217304)) p!166))))

(assert (= (and d!75825 (not res!284710)) b!476777))

(assert (= (and b!476777 res!284711) b!476778))

(declare-fun b_lambda!10577 () Bool)

(assert (=> (not b_lambda!10577) (not b!476777)))

(declare-fun t!15184 () Bool)

(declare-fun tb!4055 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15184) tb!4055))

(declare-fun result!7617 () Bool)

(assert (=> tb!4055 (= result!7617 true)))

(assert (=> b!476777 t!15184))

(declare-fun b_and!20767 () Bool)

(assert (= b_and!20763 (and (=> t!15184 result!7617) b_and!20767)))

(declare-fun m!459163 () Bool)

(assert (=> b!476777 m!459163))

(declare-fun m!459165 () Bool)

(assert (=> b!476778 m!459165))

(assert (=> b!476684 d!75825))

(declare-fun d!75827 () Bool)

(declare-fun tail!128 (List!9084) List!9084)

(assert (=> d!75827 (= (tail!125 lm!215) (ListLongMap!7918 (tail!128 (toList!3974 lm!215))))))

(declare-fun bs!15161 () Bool)

(assert (= bs!15161 d!75827))

(declare-fun m!459170 () Bool)

(assert (=> bs!15161 m!459170))

(assert (=> b!476684 d!75827))

(declare-fun b!476788 () Bool)

(declare-fun e!280124 () Bool)

(declare-fun tp!42412 () Bool)

(assert (=> b!476788 (= e!280124 (and tp_is_empty!13525 tp!42412))))

(assert (=> b!476685 (= tp!42396 e!280124)))

(assert (= (and b!476685 (is-Cons!9080 (toList!3974 lm!215))) b!476788))

(declare-fun b_lambda!10581 () Bool)

(assert (= b_lambda!10569 (or (and start!42872 b_free!12103) b_lambda!10581)))

(declare-fun b_lambda!10583 () Bool)

(assert (= b_lambda!10557 (or (and start!42872 b_free!12103) b_lambda!10583)))

(declare-fun b_lambda!10585 () Bool)

(assert (= b_lambda!10573 (or (and start!42872 b_free!12103) b_lambda!10585)))

(declare-fun b_lambda!10587 () Bool)

(assert (= b_lambda!10577 (or (and start!42872 b_free!12103) b_lambda!10587)))

(declare-fun b_lambda!10589 () Bool)

(assert (= b_lambda!10567 (or (and start!42872 b_free!12103) b_lambda!10589)))

(push 1)

(assert (not b!476771))

(assert (not b!476746))

(assert (not b!476750))

(assert (not b_lambda!10587))

(assert (not d!75803))

(assert (not d!75781))

(assert (not b_lambda!10589))

(assert b_and!20767)

(assert tp_is_empty!13525)

(assert (not b!476788))

(assert (not b!476728))

(assert (not b!476774))

(assert (not b!476778))

(assert (not b_lambda!10551))

(assert (not b_next!12103))

(assert (not d!75819))

(assert (not b_lambda!10585))

(assert (not b_lambda!10581))

(assert (not d!75787))

(assert (not b!476749))

(assert (not b!476745))

(assert (not d!75799))

(assert (not b_lambda!10583))

(assert (not d!75827))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20767)

(assert (not b_next!12103))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75843 () Bool)

(declare-fun res!284727 () Bool)

(declare-fun e!280141 () Bool)

(assert (=> d!75843 (=> res!284727 e!280141)))

(assert (=> d!75843 (= res!284727 (is-Nil!9081 (t!15156 (toList!3974 (+!1736 lt!217304 lt!217306)))))))

(assert (=> d!75843 (= (forall!197 (t!15156 (toList!3974 (+!1736 lt!217304 lt!217306))) p!166) e!280141)))

(declare-fun b!476810 () Bool)

(declare-fun e!280142 () Bool)

(assert (=> b!476810 (= e!280141 e!280142)))

(declare-fun res!284728 () Bool)

(assert (=> b!476810 (=> (not res!284728) (not e!280142))))

(assert (=> b!476810 (= res!284728 (dynLambda!943 p!166 (h!9936 (t!15156 (toList!3974 (+!1736 lt!217304 lt!217306))))))))

(declare-fun b!476811 () Bool)

(assert (=> b!476811 (= e!280142 (forall!197 (t!15156 (t!15156 (toList!3974 (+!1736 lt!217304 lt!217306)))) p!166))))

(assert (= (and d!75843 (not res!284727)) b!476810))

(assert (= (and b!476810 res!284728) b!476811))

(declare-fun b_lambda!10617 () Bool)

(assert (=> (not b_lambda!10617) (not b!476810)))

(declare-fun t!15194 () Bool)

(declare-fun tb!4065 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15194) tb!4065))

(declare-fun result!7633 () Bool)

(assert (=> tb!4065 (= result!7633 true)))

(assert (=> b!476810 t!15194))

(declare-fun b_and!20777 () Bool)

(assert (= b_and!20767 (and (=> t!15194 result!7633) b_and!20777)))

(declare-fun m!459209 () Bool)

(assert (=> b!476810 m!459209))

(declare-fun m!459211 () Bool)

(assert (=> b!476811 m!459211))

(assert (=> b!476771 d!75843))

(declare-fun d!75847 () Bool)

(assert (=> d!75847 (= (isEmpty!609 (toList!3974 lm!215)) (is-Nil!9081 (toList!3974 lm!215)))))

(assert (=> d!75781 d!75847))

(declare-fun d!75851 () Bool)

(declare-fun res!284731 () Bool)

(declare-fun e!280145 () Bool)

(assert (=> d!75851 (=> res!284731 e!280145)))

(assert (=> d!75851 (= res!284731 (is-Nil!9081 (toList!3974 (+!1736 lt!217304 (tuple2!8991 a!501 b!85)))))))

(assert (=> d!75851 (= (forall!197 (toList!3974 (+!1736 lt!217304 (tuple2!8991 a!501 b!85))) p!166) e!280145)))

(declare-fun b!476814 () Bool)

(declare-fun e!280146 () Bool)

(assert (=> b!476814 (= e!280145 e!280146)))

(declare-fun res!284732 () Bool)

(assert (=> b!476814 (=> (not res!284732) (not e!280146))))

(assert (=> b!476814 (= res!284732 (dynLambda!943 p!166 (h!9936 (toList!3974 (+!1736 lt!217304 (tuple2!8991 a!501 b!85))))))))

(declare-fun b!476815 () Bool)

(assert (=> b!476815 (= e!280146 (forall!197 (t!15156 (toList!3974 (+!1736 lt!217304 (tuple2!8991 a!501 b!85)))) p!166))))

(assert (= (and d!75851 (not res!284731)) b!476814))

(assert (= (and b!476814 res!284732) b!476815))

(declare-fun b_lambda!10619 () Bool)

(assert (=> (not b_lambda!10619) (not b!476814)))

(declare-fun t!15196 () Bool)

(declare-fun tb!4067 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15196) tb!4067))

(declare-fun result!7635 () Bool)

(assert (=> tb!4067 (= result!7635 true)))

(assert (=> b!476814 t!15196))

(declare-fun b_and!20779 () Bool)

(assert (= b_and!20777 (and (=> t!15196 result!7635) b_and!20779)))

(declare-fun m!459213 () Bool)

(assert (=> b!476814 m!459213))

(declare-fun m!459215 () Bool)

(assert (=> b!476815 m!459215))

(assert (=> d!75803 d!75851))

(declare-fun d!75853 () Bool)

(declare-fun e!280147 () Bool)

(assert (=> d!75853 e!280147))

(declare-fun res!284734 () Bool)

(assert (=> d!75853 (=> (not res!284734) (not e!280147))))

(declare-fun lt!217382 () ListLongMap!7917)

(assert (=> d!75853 (= res!284734 (contains!2571 lt!217382 (_1!4505 (tuple2!8991 a!501 b!85))))))

(declare-fun lt!217383 () List!9084)

(assert (=> d!75853 (= lt!217382 (ListLongMap!7918 lt!217383))))

(declare-fun lt!217385 () Unit!14003)

(declare-fun lt!217384 () Unit!14003)

(assert (=> d!75853 (= lt!217385 lt!217384)))

(assert (=> d!75853 (= (getValueByKey!385 lt!217383 (_1!4505 (tuple2!8991 a!501 b!85))) (Some!390 (_2!4505 (tuple2!8991 a!501 b!85))))))

(assert (=> d!75853 (= lt!217384 (lemmaContainsTupThenGetReturnValue!209 lt!217383 (_1!4505 (tuple2!8991 a!501 b!85)) (_2!4505 (tuple2!8991 a!501 b!85))))))

(assert (=> d!75853 (= lt!217383 (insertStrictlySorted!211 (toList!3974 lt!217304) (_1!4505 (tuple2!8991 a!501 b!85)) (_2!4505 (tuple2!8991 a!501 b!85))))))

(assert (=> d!75853 (= (+!1736 lt!217304 (tuple2!8991 a!501 b!85)) lt!217382)))

(declare-fun b!476816 () Bool)

(declare-fun res!284733 () Bool)

(assert (=> b!476816 (=> (not res!284733) (not e!280147))))

(assert (=> b!476816 (= res!284733 (= (getValueByKey!385 (toList!3974 lt!217382) (_1!4505 (tuple2!8991 a!501 b!85))) (Some!390 (_2!4505 (tuple2!8991 a!501 b!85)))))))

(declare-fun b!476817 () Bool)

(assert (=> b!476817 (= e!280147 (contains!2573 (toList!3974 lt!217382) (tuple2!8991 a!501 b!85)))))

(assert (= (and d!75853 res!284734) b!476816))

(assert (= (and b!476816 res!284733) b!476817))

(declare-fun m!459217 () Bool)

(assert (=> d!75853 m!459217))

(declare-fun m!459219 () Bool)

(assert (=> d!75853 m!459219))

(declare-fun m!459221 () Bool)

(assert (=> d!75853 m!459221))

(declare-fun m!459223 () Bool)

(assert (=> d!75853 m!459223))

(declare-fun m!459225 () Bool)

(assert (=> b!476816 m!459225))

(declare-fun m!459227 () Bool)

(assert (=> b!476817 m!459227))

(assert (=> d!75803 d!75853))

(declare-fun d!75855 () Bool)

(assert (=> d!75855 (forall!197 (toList!3974 (+!1736 lt!217304 (tuple2!8991 a!501 b!85))) p!166)))

(assert (=> d!75855 true))

(declare-fun _$30!87 () Unit!14003)

(assert (=> d!75855 (= (choose!1369 lt!217304 p!166 a!501 b!85) _$30!87)))

(declare-fun bs!15164 () Bool)

(assert (= bs!15164 d!75855))

(assert (=> bs!15164 m!459131))

(assert (=> bs!15164 m!459133))

(assert (=> d!75803 d!75855))

(assert (=> d!75803 d!75825))

(declare-fun d!75857 () Bool)

(declare-fun res!284737 () Bool)

(declare-fun e!280152 () Bool)

(assert (=> d!75857 (=> res!284737 e!280152)))

(assert (=> d!75857 (= res!284737 (is-Nil!9081 (t!15156 (toList!3974 lt!217304))))))

(assert (=> d!75857 (= (forall!197 (t!15156 (toList!3974 lt!217304)) p!166) e!280152)))

(declare-fun b!476825 () Bool)

(declare-fun e!280153 () Bool)

(assert (=> b!476825 (= e!280152 e!280153)))

(declare-fun res!284738 () Bool)

(assert (=> b!476825 (=> (not res!284738) (not e!280153))))

(assert (=> b!476825 (= res!284738 (dynLambda!943 p!166 (h!9936 (t!15156 (toList!3974 lt!217304)))))))

(declare-fun b!476826 () Bool)

(assert (=> b!476826 (= e!280153 (forall!197 (t!15156 (t!15156 (toList!3974 lt!217304))) p!166))))

(assert (= (and d!75857 (not res!284737)) b!476825))

(assert (= (and b!476825 res!284738) b!476826))

(declare-fun b_lambda!10621 () Bool)

(assert (=> (not b_lambda!10621) (not b!476825)))

(declare-fun t!15198 () Bool)

(declare-fun tb!4069 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15198) tb!4069))

(declare-fun result!7637 () Bool)

(assert (=> tb!4069 (= result!7637 true)))

(assert (=> b!476825 t!15198))

(declare-fun b_and!20781 () Bool)

(assert (= b_and!20779 (and (=> t!15198 result!7637) b_and!20781)))

(declare-fun m!459229 () Bool)

(assert (=> b!476825 m!459229))

(declare-fun m!459231 () Bool)

(assert (=> b!476826 m!459231))

(assert (=> b!476778 d!75857))

(declare-fun d!75859 () Bool)

(declare-fun res!284739 () Bool)

(declare-fun e!280154 () Bool)

(assert (=> d!75859 (=> res!284739 e!280154)))

(assert (=> d!75859 (= res!284739 (is-Nil!9081 (t!15156 (toList!3974 (+!1736 lm!215 lt!217306)))))))

(assert (=> d!75859 (= (forall!197 (t!15156 (toList!3974 (+!1736 lm!215 lt!217306))) p!166) e!280154)))

(declare-fun b!476827 () Bool)

(declare-fun e!280155 () Bool)

(assert (=> b!476827 (= e!280154 e!280155)))

(declare-fun res!284740 () Bool)

(assert (=> b!476827 (=> (not res!284740) (not e!280155))))

(assert (=> b!476827 (= res!284740 (dynLambda!943 p!166 (h!9936 (t!15156 (toList!3974 (+!1736 lm!215 lt!217306))))))))

(declare-fun b!476828 () Bool)

(assert (=> b!476828 (= e!280155 (forall!197 (t!15156 (t!15156 (toList!3974 (+!1736 lm!215 lt!217306)))) p!166))))

(assert (= (and d!75859 (not res!284739)) b!476827))

(assert (= (and b!476827 res!284740) b!476828))

(declare-fun b_lambda!10623 () Bool)

(assert (=> (not b_lambda!10623) (not b!476827)))

(declare-fun t!15200 () Bool)

(declare-fun tb!4071 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15200) tb!4071))

(declare-fun result!7639 () Bool)

(assert (=> tb!4071 (= result!7639 true)))

(assert (=> b!476827 t!15200))

(declare-fun b_and!20783 () Bool)

(assert (= b_and!20781 (and (=> t!15200 result!7639) b_and!20783)))

(declare-fun m!459233 () Bool)

(assert (=> b!476827 m!459233))

(declare-fun m!459235 () Bool)

(assert (=> b!476828 m!459235))

(assert (=> b!476728 d!75859))

(declare-fun d!75861 () Bool)

(declare-fun e!280170 () Bool)

(assert (=> d!75861 e!280170))

(declare-fun res!284748 () Bool)

(assert (=> d!75861 (=> res!284748 e!280170)))

(declare-fun lt!217409 () Bool)

(assert (=> d!75861 (= res!284748 (not lt!217409))))

(declare-fun lt!217411 () Bool)

(assert (=> d!75861 (= lt!217409 lt!217411)))

(declare-fun lt!217408 () Unit!14003)

(declare-fun e!280171 () Unit!14003)

(assert (=> d!75861 (= lt!217408 e!280171)))

(declare-fun c!57310 () Bool)

(assert (=> d!75861 (= c!57310 lt!217411)))

(declare-fun containsKey!348 (List!9084 (_ BitVec 64)) Bool)

(assert (=> d!75861 (= lt!217411 (containsKey!348 (toList!3974 lt!217341) (_1!4505 lt!217306)))))

(assert (=> d!75861 (= (contains!2571 lt!217341 (_1!4505 lt!217306)) lt!217409)))

(declare-fun b!476854 () Bool)

(declare-fun lt!217410 () Unit!14003)

(assert (=> b!476854 (= e!280171 lt!217410)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!297 (List!9084 (_ BitVec 64)) Unit!14003)

(assert (=> b!476854 (= lt!217410 (lemmaContainsKeyImpliesGetValueByKeyDefined!297 (toList!3974 lt!217341) (_1!4505 lt!217306)))))

(declare-fun isDefined!298 (Option!391) Bool)

(assert (=> b!476854 (isDefined!298 (getValueByKey!385 (toList!3974 lt!217341) (_1!4505 lt!217306)))))

(declare-fun b!476855 () Bool)

(declare-fun Unit!14010 () Unit!14003)

(assert (=> b!476855 (= e!280171 Unit!14010)))

(declare-fun b!476856 () Bool)

(assert (=> b!476856 (= e!280170 (isDefined!298 (getValueByKey!385 (toList!3974 lt!217341) (_1!4505 lt!217306))))))

(assert (= (and d!75861 c!57310) b!476854))

(assert (= (and d!75861 (not c!57310)) b!476855))

(assert (= (and d!75861 (not res!284748)) b!476856))

(declare-fun m!459245 () Bool)

(assert (=> d!75861 m!459245))

(declare-fun m!459247 () Bool)

(assert (=> b!476854 m!459247))

(assert (=> b!476854 m!459071))

(assert (=> b!476854 m!459071))

(declare-fun m!459249 () Bool)

(assert (=> b!476854 m!459249))

(assert (=> b!476856 m!459071))

(assert (=> b!476856 m!459071))

(assert (=> b!476856 m!459249))

(assert (=> d!75787 d!75861))

(declare-fun b!476868 () Bool)

(declare-fun e!280177 () Option!391)

(declare-fun e!280178 () Option!391)

(assert (=> b!476868 (= e!280177 e!280178)))

(declare-fun c!57316 () Bool)

(assert (=> b!476868 (= c!57316 (and (is-Cons!9080 lt!217342) (not (= (_1!4505 (h!9936 lt!217342)) (_1!4505 lt!217306)))))))

(declare-fun b!476867 () Bool)

(assert (=> b!476867 (= e!280177 (Some!390 (_2!4505 (h!9936 lt!217342))))))

(declare-fun b!476870 () Bool)

(assert (=> b!476870 (= e!280178 None!389)))

(declare-fun b!476869 () Bool)

(assert (=> b!476869 (= e!280178 (getValueByKey!385 (t!15156 lt!217342) (_1!4505 lt!217306)))))

(declare-fun d!75867 () Bool)

(declare-fun c!57315 () Bool)

(assert (=> d!75867 (= c!57315 (and (is-Cons!9080 lt!217342) (= (_1!4505 (h!9936 lt!217342)) (_1!4505 lt!217306))))))

(assert (=> d!75867 (= (getValueByKey!385 lt!217342 (_1!4505 lt!217306)) e!280177)))

(assert (= (and d!75867 c!57315) b!476867))

(assert (= (and d!75867 (not c!57315)) b!476868))

(assert (= (and b!476868 c!57316) b!476869))

(assert (= (and b!476868 (not c!57316)) b!476870))

(declare-fun m!459259 () Bool)

(assert (=> b!476869 m!459259))

(assert (=> d!75787 d!75867))

(declare-fun d!75871 () Bool)

(assert (=> d!75871 (= (getValueByKey!385 lt!217342 (_1!4505 lt!217306)) (Some!390 (_2!4505 lt!217306)))))

(declare-fun lt!217415 () Unit!14003)

(declare-fun choose!1373 (List!9084 (_ BitVec 64) B!1052) Unit!14003)

(assert (=> d!75871 (= lt!217415 (choose!1373 lt!217342 (_1!4505 lt!217306) (_2!4505 lt!217306)))))

(declare-fun e!280183 () Bool)

(assert (=> d!75871 e!280183))

(declare-fun res!284757 () Bool)

(assert (=> d!75871 (=> (not res!284757) (not e!280183))))

(assert (=> d!75871 (= res!284757 (isStrictlySorted!384 lt!217342))))

(assert (=> d!75871 (= (lemmaContainsTupThenGetReturnValue!209 lt!217342 (_1!4505 lt!217306) (_2!4505 lt!217306)) lt!217415)))

(declare-fun b!476877 () Bool)

(declare-fun res!284758 () Bool)

(assert (=> b!476877 (=> (not res!284758) (not e!280183))))

(assert (=> b!476877 (= res!284758 (containsKey!348 lt!217342 (_1!4505 lt!217306)))))

(declare-fun b!476878 () Bool)

(assert (=> b!476878 (= e!280183 (contains!2573 lt!217342 (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))))))

(assert (= (and d!75871 res!284757) b!476877))

(assert (= (and b!476877 res!284758) b!476878))

(assert (=> d!75871 m!459065))

(declare-fun m!459265 () Bool)

(assert (=> d!75871 m!459265))

(declare-fun m!459267 () Bool)

(assert (=> d!75871 m!459267))

(declare-fun m!459269 () Bool)

(assert (=> b!476877 m!459269))

(declare-fun m!459271 () Bool)

(assert (=> b!476878 m!459271))

(assert (=> d!75787 d!75871))

(declare-fun b!476965 () Bool)

(declare-fun e!280231 () List!9084)

(declare-fun call!30744 () List!9084)

(assert (=> b!476965 (= e!280231 call!30744)))

(declare-fun bm!30740 () Bool)

(declare-fun call!30745 () List!9084)

(assert (=> bm!30740 (= call!30744 call!30745)))

(declare-fun b!476966 () Bool)

(declare-fun res!284782 () Bool)

(declare-fun e!280232 () Bool)

(assert (=> b!476966 (=> (not res!284782) (not e!280232))))

(declare-fun lt!217440 () List!9084)

(assert (=> b!476966 (= res!284782 (containsKey!348 lt!217440 (_1!4505 lt!217306)))))

(declare-fun d!75877 () Bool)

(assert (=> d!75877 e!280232))

(declare-fun res!284783 () Bool)

(assert (=> d!75877 (=> (not res!284783) (not e!280232))))

(assert (=> d!75877 (= res!284783 (isStrictlySorted!384 lt!217440))))

(declare-fun e!280229 () List!9084)

(assert (=> d!75877 (= lt!217440 e!280229)))

(declare-fun c!57349 () Bool)

(assert (=> d!75877 (= c!57349 (and (is-Cons!9080 (toList!3974 lt!217304)) (bvslt (_1!4505 (h!9936 (toList!3974 lt!217304))) (_1!4505 lt!217306))))))

(assert (=> d!75877 (isStrictlySorted!384 (toList!3974 lt!217304))))

(assert (=> d!75877 (= (insertStrictlySorted!211 (toList!3974 lt!217304) (_1!4505 lt!217306) (_2!4505 lt!217306)) lt!217440)))

(declare-fun b!476967 () Bool)

(assert (=> b!476967 (= e!280232 (contains!2573 lt!217440 (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))))))

(declare-fun b!476968 () Bool)

(declare-fun e!280233 () List!9084)

(declare-fun call!30743 () List!9084)

(assert (=> b!476968 (= e!280233 call!30743)))

(declare-fun bm!30741 () Bool)

(assert (=> bm!30741 (= call!30743 call!30744)))

(declare-fun b!476969 () Bool)

(declare-fun e!280230 () List!9084)

(assert (=> b!476969 (= e!280230 (insertStrictlySorted!211 (t!15156 (toList!3974 lt!217304)) (_1!4505 lt!217306) (_2!4505 lt!217306)))))

(declare-fun b!476970 () Bool)

(declare-fun c!57350 () Bool)

(assert (=> b!476970 (= c!57350 (and (is-Cons!9080 (toList!3974 lt!217304)) (bvsgt (_1!4505 (h!9936 (toList!3974 lt!217304))) (_1!4505 lt!217306))))))

(assert (=> b!476970 (= e!280231 e!280233)))

(declare-fun c!57351 () Bool)

(declare-fun b!476971 () Bool)

(assert (=> b!476971 (= e!280230 (ite c!57351 (t!15156 (toList!3974 lt!217304)) (ite c!57350 (Cons!9080 (h!9936 (toList!3974 lt!217304)) (t!15156 (toList!3974 lt!217304))) Nil!9081)))))

(declare-fun b!476972 () Bool)

(assert (=> b!476972 (= e!280233 call!30743)))

(declare-fun b!476973 () Bool)

(assert (=> b!476973 (= e!280229 e!280231)))

(assert (=> b!476973 (= c!57351 (and (is-Cons!9080 (toList!3974 lt!217304)) (= (_1!4505 (h!9936 (toList!3974 lt!217304))) (_1!4505 lt!217306))))))

(declare-fun bm!30742 () Bool)

(declare-fun $colon$colon!111 (List!9084 tuple2!8990) List!9084)

(assert (=> bm!30742 (= call!30745 ($colon$colon!111 e!280230 (ite c!57349 (h!9936 (toList!3974 lt!217304)) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306)))))))

(declare-fun c!57348 () Bool)

(assert (=> bm!30742 (= c!57348 c!57349)))

(declare-fun b!476974 () Bool)

(assert (=> b!476974 (= e!280229 call!30745)))

(assert (= (and d!75877 c!57349) b!476974))

(assert (= (and d!75877 (not c!57349)) b!476973))

(assert (= (and b!476973 c!57351) b!476965))

(assert (= (and b!476973 (not c!57351)) b!476970))

(assert (= (and b!476970 c!57350) b!476968))

(assert (= (and b!476970 (not c!57350)) b!476972))

(assert (= (or b!476968 b!476972) bm!30741))

(assert (= (or b!476965 bm!30741) bm!30740))

(assert (= (or b!476974 bm!30740) bm!30742))

(assert (= (and bm!30742 c!57348) b!476969))

(assert (= (and bm!30742 (not c!57348)) b!476971))

(assert (= (and d!75877 res!284783) b!476966))

(assert (= (and b!476966 res!284782) b!476967))

(declare-fun m!459319 () Bool)

(assert (=> b!476967 m!459319))

(declare-fun m!459321 () Bool)

(assert (=> b!476969 m!459321))

(declare-fun m!459323 () Bool)

(assert (=> b!476966 m!459323))

(declare-fun m!459325 () Bool)

(assert (=> bm!30742 m!459325))

(declare-fun m!459327 () Bool)

(assert (=> d!75877 m!459327))

(declare-fun m!459329 () Bool)

(assert (=> d!75877 m!459329))

(assert (=> d!75787 d!75877))

(declare-fun b!476976 () Bool)

(declare-fun e!280234 () Option!391)

(declare-fun e!280235 () Option!391)

(assert (=> b!476976 (= e!280234 e!280235)))

(declare-fun c!57353 () Bool)

(assert (=> b!476976 (= c!57353 (and (is-Cons!9080 (toList!3974 lt!217341)) (not (= (_1!4505 (h!9936 (toList!3974 lt!217341))) (_1!4505 lt!217306)))))))

(declare-fun b!476975 () Bool)

(assert (=> b!476975 (= e!280234 (Some!390 (_2!4505 (h!9936 (toList!3974 lt!217341)))))))

(declare-fun b!476978 () Bool)

(assert (=> b!476978 (= e!280235 None!389)))

(declare-fun b!476977 () Bool)

(assert (=> b!476977 (= e!280235 (getValueByKey!385 (t!15156 (toList!3974 lt!217341)) (_1!4505 lt!217306)))))

(declare-fun d!75895 () Bool)

(declare-fun c!57352 () Bool)

(assert (=> d!75895 (= c!57352 (and (is-Cons!9080 (toList!3974 lt!217341)) (= (_1!4505 (h!9936 (toList!3974 lt!217341))) (_1!4505 lt!217306))))))

(assert (=> d!75895 (= (getValueByKey!385 (toList!3974 lt!217341) (_1!4505 lt!217306)) e!280234)))

(assert (= (and d!75895 c!57352) b!476975))

(assert (= (and d!75895 (not c!57352)) b!476976))

(assert (= (and b!476976 c!57353) b!476977))

(assert (= (and b!476976 (not c!57353)) b!476978))

(declare-fun m!459331 () Bool)

(assert (=> b!476977 m!459331))

(assert (=> b!476745 d!75895))

(declare-fun b!476980 () Bool)

(declare-fun e!280236 () Option!391)

(declare-fun e!280237 () Option!391)

(assert (=> b!476980 (= e!280236 e!280237)))

(declare-fun c!57355 () Bool)

(assert (=> b!476980 (= c!57355 (and (is-Cons!9080 (toList!3974 lt!217349)) (not (= (_1!4505 (h!9936 (toList!3974 lt!217349))) (_1!4505 lt!217306)))))))

(declare-fun b!476979 () Bool)

(assert (=> b!476979 (= e!280236 (Some!390 (_2!4505 (h!9936 (toList!3974 lt!217349)))))))

(declare-fun b!476982 () Bool)

(assert (=> b!476982 (= e!280237 None!389)))

(declare-fun b!476981 () Bool)

(assert (=> b!476981 (= e!280237 (getValueByKey!385 (t!15156 (toList!3974 lt!217349)) (_1!4505 lt!217306)))))

(declare-fun d!75897 () Bool)

(declare-fun c!57354 () Bool)

(assert (=> d!75897 (= c!57354 (and (is-Cons!9080 (toList!3974 lt!217349)) (= (_1!4505 (h!9936 (toList!3974 lt!217349))) (_1!4505 lt!217306))))))

(assert (=> d!75897 (= (getValueByKey!385 (toList!3974 lt!217349) (_1!4505 lt!217306)) e!280236)))

(assert (= (and d!75897 c!57354) b!476979))

(assert (= (and d!75897 (not c!57354)) b!476980))

(assert (= (and b!476980 c!57355) b!476981))

(assert (= (and b!476980 (not c!57355)) b!476982))

(declare-fun m!459333 () Bool)

(assert (=> b!476981 m!459333))

(assert (=> b!476749 d!75897))

(declare-fun d!75899 () Bool)

(declare-fun lt!217447 () Bool)

(declare-fun content!207 (List!9084) (Set tuple2!8990))

(assert (=> d!75899 (= lt!217447 (set.member lt!217306 (content!207 (toList!3974 lt!217341))))))

(declare-fun e!280257 () Bool)

(assert (=> d!75899 (= lt!217447 e!280257)))

(declare-fun res!284803 () Bool)

(assert (=> d!75899 (=> (not res!284803) (not e!280257))))

(assert (=> d!75899 (= res!284803 (is-Cons!9080 (toList!3974 lt!217341)))))

(assert (=> d!75899 (= (contains!2573 (toList!3974 lt!217341) lt!217306) lt!217447)))

(declare-fun b!477001 () Bool)

(declare-fun e!280256 () Bool)

(assert (=> b!477001 (= e!280257 e!280256)))

(declare-fun res!284802 () Bool)

(assert (=> b!477001 (=> res!284802 e!280256)))

(assert (=> b!477001 (= res!284802 (= (h!9936 (toList!3974 lt!217341)) lt!217306))))

(declare-fun b!477002 () Bool)

(assert (=> b!477002 (= e!280256 (contains!2573 (t!15156 (toList!3974 lt!217341)) lt!217306))))

(assert (= (and d!75899 res!284803) b!477001))

(assert (= (and b!477001 (not res!284802)) b!477002))

(declare-fun m!459355 () Bool)

(assert (=> d!75899 m!459355))

(declare-fun m!459357 () Bool)

(assert (=> d!75899 m!459357))

(declare-fun m!459359 () Bool)

(assert (=> b!477002 m!459359))

(assert (=> b!476746 d!75899))

(declare-fun d!75909 () Bool)

(declare-fun lt!217448 () Bool)

(assert (=> d!75909 (= lt!217448 (set.member lt!217306 (content!207 (toList!3974 lt!217349))))))

(declare-fun e!280259 () Bool)

(assert (=> d!75909 (= lt!217448 e!280259)))

(declare-fun res!284805 () Bool)

(assert (=> d!75909 (=> (not res!284805) (not e!280259))))

(assert (=> d!75909 (= res!284805 (is-Cons!9080 (toList!3974 lt!217349)))))

(assert (=> d!75909 (= (contains!2573 (toList!3974 lt!217349) lt!217306) lt!217448)))

(declare-fun b!477003 () Bool)

(declare-fun e!280258 () Bool)

(assert (=> b!477003 (= e!280259 e!280258)))

(declare-fun res!284804 () Bool)

(assert (=> b!477003 (=> res!284804 e!280258)))

(assert (=> b!477003 (= res!284804 (= (h!9936 (toList!3974 lt!217349)) lt!217306))))

(declare-fun b!477004 () Bool)

(assert (=> b!477004 (= e!280258 (contains!2573 (t!15156 (toList!3974 lt!217349)) lt!217306))))

(assert (= (and d!75909 res!284805) b!477003))

(assert (= (and b!477003 (not res!284804)) b!477004))

(declare-fun m!459365 () Bool)

(assert (=> d!75909 m!459365))

(declare-fun m!459367 () Bool)

(assert (=> d!75909 m!459367))

(declare-fun m!459369 () Bool)

(assert (=> b!477004 m!459369))

(assert (=> b!476750 d!75909))

(declare-fun d!75913 () Bool)

(assert (=> d!75913 (= (tail!128 (toList!3974 lm!215)) (t!15156 (toList!3974 lm!215)))))

(assert (=> d!75827 d!75913))

(declare-fun d!75917 () Bool)

(declare-fun res!284807 () Bool)

(declare-fun e!280270 () Bool)

(assert (=> d!75917 (=> res!284807 e!280270)))

(assert (=> d!75917 (= res!284807 (is-Nil!9081 (t!15156 (toList!3974 lm!215))))))

(assert (=> d!75917 (= (forall!197 (t!15156 (toList!3974 lm!215)) p!166) e!280270)))

(declare-fun b!477024 () Bool)

(declare-fun e!280271 () Bool)

(assert (=> b!477024 (= e!280270 e!280271)))

(declare-fun res!284808 () Bool)

(assert (=> b!477024 (=> (not res!284808) (not e!280271))))

(assert (=> b!477024 (= res!284808 (dynLambda!943 p!166 (h!9936 (t!15156 (toList!3974 lm!215)))))))

(declare-fun b!477025 () Bool)

(assert (=> b!477025 (= e!280271 (forall!197 (t!15156 (t!15156 (toList!3974 lm!215))) p!166))))

(assert (= (and d!75917 (not res!284807)) b!477024))

(assert (= (and b!477024 res!284808) b!477025))

(declare-fun b_lambda!10635 () Bool)

(assert (=> (not b_lambda!10635) (not b!477024)))

(declare-fun t!15212 () Bool)

(declare-fun tb!4083 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15212) tb!4083))

(declare-fun result!7651 () Bool)

(assert (=> tb!4083 (= result!7651 true)))

(assert (=> b!477024 t!15212))

(declare-fun b_and!20795 () Bool)

(assert (= b_and!20783 (and (=> t!15212 result!7651) b_and!20795)))

(declare-fun m!459379 () Bool)

(assert (=> b!477024 m!459379))

(declare-fun m!459383 () Bool)

(assert (=> b!477025 m!459383))

(assert (=> b!476774 d!75917))

(declare-fun d!75921 () Bool)

(declare-fun res!284823 () Bool)

(declare-fun e!280290 () Bool)

(assert (=> d!75921 (=> res!284823 e!280290)))

(assert (=> d!75921 (= res!284823 (or (is-Nil!9081 (toList!3974 lm!215)) (is-Nil!9081 (t!15156 (toList!3974 lm!215)))))))

(assert (=> d!75921 (= (isStrictlySorted!384 (toList!3974 lm!215)) e!280290)))

(declare-fun b!477056 () Bool)

(declare-fun e!280291 () Bool)

(assert (=> b!477056 (= e!280290 e!280291)))

(declare-fun res!284824 () Bool)

(assert (=> b!477056 (=> (not res!284824) (not e!280291))))

(assert (=> b!477056 (= res!284824 (bvslt (_1!4505 (h!9936 (toList!3974 lm!215))) (_1!4505 (h!9936 (t!15156 (toList!3974 lm!215))))))))

(declare-fun b!477057 () Bool)

(assert (=> b!477057 (= e!280291 (isStrictlySorted!384 (t!15156 (toList!3974 lm!215))))))

(assert (= (and d!75921 (not res!284823)) b!477056))

(assert (= (and b!477056 res!284824) b!477057))

(declare-fun m!459407 () Bool)

(assert (=> b!477057 m!459407))

(assert (=> d!75819 d!75921))

(declare-fun d!75931 () Bool)

(declare-fun e!280292 () Bool)

(assert (=> d!75931 e!280292))

(declare-fun res!284825 () Bool)

(assert (=> d!75931 (=> res!284825 e!280292)))

(declare-fun lt!217458 () Bool)

(assert (=> d!75931 (= res!284825 (not lt!217458))))

(declare-fun lt!217460 () Bool)

(assert (=> d!75931 (= lt!217458 lt!217460)))

(declare-fun lt!217457 () Unit!14003)

(declare-fun e!280293 () Unit!14003)

(assert (=> d!75931 (= lt!217457 e!280293)))

(declare-fun c!57373 () Bool)

(assert (=> d!75931 (= c!57373 lt!217460)))

(assert (=> d!75931 (= lt!217460 (containsKey!348 (toList!3974 lt!217349) (_1!4505 lt!217306)))))

(assert (=> d!75931 (= (contains!2571 lt!217349 (_1!4505 lt!217306)) lt!217458)))

(declare-fun b!477058 () Bool)

(declare-fun lt!217459 () Unit!14003)

(assert (=> b!477058 (= e!280293 lt!217459)))

(assert (=> b!477058 (= lt!217459 (lemmaContainsKeyImpliesGetValueByKeyDefined!297 (toList!3974 lt!217349) (_1!4505 lt!217306)))))

(assert (=> b!477058 (isDefined!298 (getValueByKey!385 (toList!3974 lt!217349) (_1!4505 lt!217306)))))

(declare-fun b!477059 () Bool)

(declare-fun Unit!14013 () Unit!14003)

(assert (=> b!477059 (= e!280293 Unit!14013)))

(declare-fun b!477060 () Bool)

(assert (=> b!477060 (= e!280292 (isDefined!298 (getValueByKey!385 (toList!3974 lt!217349) (_1!4505 lt!217306))))))

(assert (= (and d!75931 c!57373) b!477058))

(assert (= (and d!75931 (not c!57373)) b!477059))

(assert (= (and d!75931 (not res!284825)) b!477060))

(declare-fun m!459409 () Bool)

(assert (=> d!75931 m!459409))

(declare-fun m!459411 () Bool)

(assert (=> b!477058 m!459411))

(assert (=> b!477058 m!459095))

(assert (=> b!477058 m!459095))

(declare-fun m!459413 () Bool)

(assert (=> b!477058 m!459413))

(assert (=> b!477060 m!459095))

(assert (=> b!477060 m!459095))

(assert (=> b!477060 m!459413))

(assert (=> d!75799 d!75931))

(declare-fun b!477063 () Bool)

(declare-fun e!280295 () Option!391)

(declare-fun e!280296 () Option!391)

(assert (=> b!477063 (= e!280295 e!280296)))

(declare-fun c!57375 () Bool)

(assert (=> b!477063 (= c!57375 (and (is-Cons!9080 lt!217350) (not (= (_1!4505 (h!9936 lt!217350)) (_1!4505 lt!217306)))))))

(declare-fun b!477062 () Bool)

(assert (=> b!477062 (= e!280295 (Some!390 (_2!4505 (h!9936 lt!217350))))))

(declare-fun b!477065 () Bool)

(assert (=> b!477065 (= e!280296 None!389)))

(declare-fun b!477064 () Bool)

(assert (=> b!477064 (= e!280296 (getValueByKey!385 (t!15156 lt!217350) (_1!4505 lt!217306)))))

(declare-fun d!75933 () Bool)

(declare-fun c!57374 () Bool)

(assert (=> d!75933 (= c!57374 (and (is-Cons!9080 lt!217350) (= (_1!4505 (h!9936 lt!217350)) (_1!4505 lt!217306))))))

(assert (=> d!75933 (= (getValueByKey!385 lt!217350 (_1!4505 lt!217306)) e!280295)))

(assert (= (and d!75933 c!57374) b!477062))

(assert (= (and d!75933 (not c!57374)) b!477063))

(assert (= (and b!477063 c!57375) b!477064))

(assert (= (and b!477063 (not c!57375)) b!477065))

(declare-fun m!459415 () Bool)

(assert (=> b!477064 m!459415))

(assert (=> d!75799 d!75933))

(declare-fun d!75935 () Bool)

(assert (=> d!75935 (= (getValueByKey!385 lt!217350 (_1!4505 lt!217306)) (Some!390 (_2!4505 lt!217306)))))

(declare-fun lt!217461 () Unit!14003)

(assert (=> d!75935 (= lt!217461 (choose!1373 lt!217350 (_1!4505 lt!217306) (_2!4505 lt!217306)))))

(declare-fun e!280297 () Bool)

(assert (=> d!75935 e!280297))

(declare-fun res!284826 () Bool)

(assert (=> d!75935 (=> (not res!284826) (not e!280297))))

(assert (=> d!75935 (= res!284826 (isStrictlySorted!384 lt!217350))))

(assert (=> d!75935 (= (lemmaContainsTupThenGetReturnValue!209 lt!217350 (_1!4505 lt!217306) (_2!4505 lt!217306)) lt!217461)))

(declare-fun b!477066 () Bool)

(declare-fun res!284827 () Bool)

(assert (=> b!477066 (=> (not res!284827) (not e!280297))))

(assert (=> b!477066 (= res!284827 (containsKey!348 lt!217350 (_1!4505 lt!217306)))))

(declare-fun b!477067 () Bool)

(assert (=> b!477067 (= e!280297 (contains!2573 lt!217350 (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))))))

(assert (= (and d!75935 res!284826) b!477066))

(assert (= (and b!477066 res!284827) b!477067))

(assert (=> d!75935 m!459089))

(declare-fun m!459417 () Bool)

(assert (=> d!75935 m!459417))

(declare-fun m!459419 () Bool)

(assert (=> d!75935 m!459419))

(declare-fun m!459421 () Bool)

(assert (=> b!477066 m!459421))

(declare-fun m!459423 () Bool)

(assert (=> b!477067 m!459423))

(assert (=> d!75799 d!75935))

(declare-fun b!477068 () Bool)

(declare-fun e!280300 () List!9084)

(declare-fun call!30756 () List!9084)

(assert (=> b!477068 (= e!280300 call!30756)))

(declare-fun bm!30752 () Bool)

(declare-fun call!30757 () List!9084)

(assert (=> bm!30752 (= call!30756 call!30757)))

(declare-fun b!477069 () Bool)

(declare-fun res!284828 () Bool)

(declare-fun e!280301 () Bool)

(assert (=> b!477069 (=> (not res!284828) (not e!280301))))

(declare-fun lt!217462 () List!9084)

(assert (=> b!477069 (= res!284828 (containsKey!348 lt!217462 (_1!4505 lt!217306)))))

(declare-fun d!75937 () Bool)

(assert (=> d!75937 e!280301))

(declare-fun res!284829 () Bool)

(assert (=> d!75937 (=> (not res!284829) (not e!280301))))

(assert (=> d!75937 (= res!284829 (isStrictlySorted!384 lt!217462))))

(declare-fun e!280298 () List!9084)

(assert (=> d!75937 (= lt!217462 e!280298)))

(declare-fun c!57377 () Bool)

(assert (=> d!75937 (= c!57377 (and (is-Cons!9080 (toList!3974 lm!215)) (bvslt (_1!4505 (h!9936 (toList!3974 lm!215))) (_1!4505 lt!217306))))))

(assert (=> d!75937 (isStrictlySorted!384 (toList!3974 lm!215))))

(assert (=> d!75937 (= (insertStrictlySorted!211 (toList!3974 lm!215) (_1!4505 lt!217306) (_2!4505 lt!217306)) lt!217462)))

(declare-fun b!477070 () Bool)

(assert (=> b!477070 (= e!280301 (contains!2573 lt!217462 (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))))))

(declare-fun b!477071 () Bool)

(declare-fun e!280302 () List!9084)

(declare-fun call!30755 () List!9084)

(assert (=> b!477071 (= e!280302 call!30755)))

(declare-fun bm!30753 () Bool)

(assert (=> bm!30753 (= call!30755 call!30756)))

(declare-fun b!477072 () Bool)

(declare-fun e!280299 () List!9084)

(assert (=> b!477072 (= e!280299 (insertStrictlySorted!211 (t!15156 (toList!3974 lm!215)) (_1!4505 lt!217306) (_2!4505 lt!217306)))))

(declare-fun b!477073 () Bool)

(declare-fun c!57378 () Bool)

(assert (=> b!477073 (= c!57378 (and (is-Cons!9080 (toList!3974 lm!215)) (bvsgt (_1!4505 (h!9936 (toList!3974 lm!215))) (_1!4505 lt!217306))))))

(assert (=> b!477073 (= e!280300 e!280302)))

(declare-fun c!57379 () Bool)

(declare-fun b!477074 () Bool)

(assert (=> b!477074 (= e!280299 (ite c!57379 (t!15156 (toList!3974 lm!215)) (ite c!57378 (Cons!9080 (h!9936 (toList!3974 lm!215)) (t!15156 (toList!3974 lm!215))) Nil!9081)))))

(declare-fun b!477075 () Bool)

(assert (=> b!477075 (= e!280302 call!30755)))

(declare-fun b!477076 () Bool)

(assert (=> b!477076 (= e!280298 e!280300)))

(assert (=> b!477076 (= c!57379 (and (is-Cons!9080 (toList!3974 lm!215)) (= (_1!4505 (h!9936 (toList!3974 lm!215))) (_1!4505 lt!217306))))))

(declare-fun bm!30754 () Bool)

(assert (=> bm!30754 (= call!30757 ($colon$colon!111 e!280299 (ite c!57377 (h!9936 (toList!3974 lm!215)) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306)))))))

(declare-fun c!57376 () Bool)

(assert (=> bm!30754 (= c!57376 c!57377)))

(declare-fun b!477077 () Bool)

(assert (=> b!477077 (= e!280298 call!30757)))

(assert (= (and d!75937 c!57377) b!477077))

(assert (= (and d!75937 (not c!57377)) b!477076))

(assert (= (and b!477076 c!57379) b!477068))

(assert (= (and b!477076 (not c!57379)) b!477073))

(assert (= (and b!477073 c!57378) b!477071))

(assert (= (and b!477073 (not c!57378)) b!477075))

(assert (= (or b!477071 b!477075) bm!30753))

(assert (= (or b!477068 bm!30753) bm!30752))

(assert (= (or b!477077 bm!30752) bm!30754))

(assert (= (and bm!30754 c!57376) b!477072))

(assert (= (and bm!30754 (not c!57376)) b!477074))

(assert (= (and d!75937 res!284829) b!477069))

(assert (= (and b!477069 res!284828) b!477070))

(declare-fun m!459425 () Bool)

(assert (=> b!477070 m!459425))

(declare-fun m!459427 () Bool)

(assert (=> b!477072 m!459427))

(declare-fun m!459429 () Bool)

(assert (=> b!477069 m!459429))

(declare-fun m!459431 () Bool)

(assert (=> bm!30754 m!459431))

(declare-fun m!459435 () Bool)

(assert (=> d!75937 m!459435))

(assert (=> d!75937 m!459161))

(assert (=> d!75799 d!75937))

(declare-fun b!477088 () Bool)

(declare-fun e!280308 () Bool)

(declare-fun tp!42420 () Bool)

(assert (=> b!477088 (= e!280308 (and tp_is_empty!13525 tp!42420))))

(assert (=> b!476788 (= tp!42412 e!280308)))

(assert (= (and b!476788 (is-Cons!9080 (t!15156 (toList!3974 lm!215)))) b!477088))

(declare-fun b_lambda!10649 () Bool)

(assert (= b_lambda!10635 (or (and start!42872 b_free!12103) b_lambda!10649)))

(declare-fun b_lambda!10651 () Bool)

(assert (= b_lambda!10617 (or (and start!42872 b_free!12103) b_lambda!10651)))

(declare-fun b_lambda!10653 () Bool)

(assert (= b_lambda!10619 (or (and start!42872 b_free!12103) b_lambda!10653)))

(declare-fun b_lambda!10655 () Bool)

(assert (= b_lambda!10621 (or (and start!42872 b_free!12103) b_lambda!10655)))

(declare-fun b_lambda!10657 () Bool)

(assert (= b_lambda!10623 (or (and start!42872 b_free!12103) b_lambda!10657)))

(push 1)

(assert (not b!477070))

(assert (not bm!30754))

(assert (not b!477057))

(assert (not d!75871))

(assert (not b!477004))

(assert (not b!477060))

(assert (not b!477025))

(assert tp_is_empty!13525)

(assert (not b_lambda!10657))

(assert (not b_lambda!10651))

(assert (not b_lambda!10653))

(assert (not b_lambda!10551))

(assert (not b_next!12103))

(assert (not b!476877))

(assert (not b!476878))

(assert (not b!476811))

(assert (not b!477072))

(assert (not b!476966))

(assert (not b!477058))

(assert (not b_lambda!10587))

(assert (not b!476967))

(assert (not b!477064))

(assert (not d!75861))

(assert (not b!476816))

(assert (not b!477067))

(assert (not b_lambda!10589))

(assert (not d!75855))

(assert (not d!75877))

(assert (not b!477066))

(assert (not b!476817))

(assert (not d!75935))

(assert (not d!75909))

(assert (not b!476977))

(assert (not b!476854))

(assert (not b!477088))

(assert (not b!476856))

(assert (not b!476828))

(assert (not d!75931))

(assert (not d!75937))

(assert b_and!20795)

(assert (not b!477069))

(assert (not b!476826))

(assert (not b!477002))

(assert (not b!476969))

(assert (not b!476815))

(assert (not b_lambda!10585))

(assert (not b_lambda!10655))

(assert (not b!476981))

(assert (not b_lambda!10581))

(assert (not b_lambda!10649))

(assert (not d!75853))

(assert (not b!476869))

(assert (not b_lambda!10583))

(assert (not bm!30742))

(assert (not d!75899))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20795)

(assert (not b_next!12103))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76063 () Bool)

(declare-fun c!57426 () Bool)

(assert (=> d!76063 (= c!57426 (is-Nil!9081 (toList!3974 lt!217349)))))

(declare-fun e!280440 () (Set tuple2!8990))

(assert (=> d!76063 (= (content!207 (toList!3974 lt!217349)) e!280440)))

(declare-fun b!477270 () Bool)

(assert (=> b!477270 (= e!280440 (as set.empty (Set tuple2!8990)))))

(declare-fun b!477271 () Bool)

(assert (=> b!477271 (= e!280440 (set.union (set.insert (h!9936 (toList!3974 lt!217349)) (as set.empty (Set tuple2!8990))) (content!207 (t!15156 (toList!3974 lt!217349)))))))

(assert (= (and d!76063 c!57426) b!477270))

(assert (= (and d!76063 (not c!57426)) b!477271))

(declare-fun m!459677 () Bool)

(assert (=> b!477271 m!459677))

(declare-fun m!459679 () Bool)

(assert (=> b!477271 m!459679))

(assert (=> d!75909 d!76063))

(declare-fun d!76065 () Bool)

(declare-fun res!284926 () Bool)

(declare-fun e!280441 () Bool)

(assert (=> d!76065 (=> res!284926 e!280441)))

(assert (=> d!76065 (= res!284926 (is-Nil!9081 (t!15156 (toList!3974 (+!1736 lt!217304 (tuple2!8991 a!501 b!85))))))))

(assert (=> d!76065 (= (forall!197 (t!15156 (toList!3974 (+!1736 lt!217304 (tuple2!8991 a!501 b!85)))) p!166) e!280441)))

(declare-fun b!477272 () Bool)

(declare-fun e!280442 () Bool)

(assert (=> b!477272 (= e!280441 e!280442)))

(declare-fun res!284927 () Bool)

(assert (=> b!477272 (=> (not res!284927) (not e!280442))))

(assert (=> b!477272 (= res!284927 (dynLambda!943 p!166 (h!9936 (t!15156 (toList!3974 (+!1736 lt!217304 (tuple2!8991 a!501 b!85)))))))))

(declare-fun b!477273 () Bool)

(assert (=> b!477273 (= e!280442 (forall!197 (t!15156 (t!15156 (toList!3974 (+!1736 lt!217304 (tuple2!8991 a!501 b!85))))) p!166))))

(assert (= (and d!76065 (not res!284926)) b!477272))

(assert (= (and b!477272 res!284927) b!477273))

(declare-fun b_lambda!10697 () Bool)

(assert (=> (not b_lambda!10697) (not b!477272)))

(declare-fun t!15235 () Bool)

(declare-fun tb!4105 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15235) tb!4105))

(declare-fun result!7673 () Bool)

(assert (=> tb!4105 (= result!7673 true)))

(assert (=> b!477272 t!15235))

(declare-fun b_and!20817 () Bool)

(assert (= b_and!20795 (and (=> t!15235 result!7673) b_and!20817)))

(declare-fun m!459681 () Bool)

(assert (=> b!477272 m!459681))

(declare-fun m!459683 () Bool)

(assert (=> b!477273 m!459683))

(assert (=> b!476815 d!76065))

(declare-fun d!76067 () Bool)

(declare-fun res!284928 () Bool)

(declare-fun e!280443 () Bool)

(assert (=> d!76067 (=> res!284928 e!280443)))

(assert (=> d!76067 (= res!284928 (is-Nil!9081 (t!15156 (t!15156 (toList!3974 lt!217304)))))))

(assert (=> d!76067 (= (forall!197 (t!15156 (t!15156 (toList!3974 lt!217304))) p!166) e!280443)))

(declare-fun b!477274 () Bool)

(declare-fun e!280444 () Bool)

(assert (=> b!477274 (= e!280443 e!280444)))

(declare-fun res!284929 () Bool)

(assert (=> b!477274 (=> (not res!284929) (not e!280444))))

(assert (=> b!477274 (= res!284929 (dynLambda!943 p!166 (h!9936 (t!15156 (t!15156 (toList!3974 lt!217304))))))))

(declare-fun b!477275 () Bool)

(assert (=> b!477275 (= e!280444 (forall!197 (t!15156 (t!15156 (t!15156 (toList!3974 lt!217304)))) p!166))))

(assert (= (and d!76067 (not res!284928)) b!477274))

(assert (= (and b!477274 res!284929) b!477275))

(declare-fun b_lambda!10699 () Bool)

(assert (=> (not b_lambda!10699) (not b!477274)))

(declare-fun t!15237 () Bool)

(declare-fun tb!4107 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15237) tb!4107))

(declare-fun result!7675 () Bool)

(assert (=> tb!4107 (= result!7675 true)))

(assert (=> b!477274 t!15237))

(declare-fun b_and!20819 () Bool)

(assert (= b_and!20817 (and (=> t!15237 result!7675) b_and!20819)))

(declare-fun m!459685 () Bool)

(assert (=> b!477274 m!459685))

(declare-fun m!459687 () Bool)

(assert (=> b!477275 m!459687))

(assert (=> b!476826 d!76067))

(declare-fun d!76069 () Bool)

(declare-fun res!284934 () Bool)

(declare-fun e!280449 () Bool)

(assert (=> d!76069 (=> res!284934 e!280449)))

(assert (=> d!76069 (= res!284934 (and (is-Cons!9080 (toList!3974 lt!217349)) (= (_1!4505 (h!9936 (toList!3974 lt!217349))) (_1!4505 lt!217306))))))

(assert (=> d!76069 (= (containsKey!348 (toList!3974 lt!217349) (_1!4505 lt!217306)) e!280449)))

(declare-fun b!477280 () Bool)

(declare-fun e!280450 () Bool)

(assert (=> b!477280 (= e!280449 e!280450)))

(declare-fun res!284935 () Bool)

(assert (=> b!477280 (=> (not res!284935) (not e!280450))))

(assert (=> b!477280 (= res!284935 (and (or (not (is-Cons!9080 (toList!3974 lt!217349))) (bvsle (_1!4505 (h!9936 (toList!3974 lt!217349))) (_1!4505 lt!217306))) (is-Cons!9080 (toList!3974 lt!217349)) (bvslt (_1!4505 (h!9936 (toList!3974 lt!217349))) (_1!4505 lt!217306))))))

(declare-fun b!477281 () Bool)

(assert (=> b!477281 (= e!280450 (containsKey!348 (t!15156 (toList!3974 lt!217349)) (_1!4505 lt!217306)))))

(assert (= (and d!76069 (not res!284934)) b!477280))

(assert (= (and b!477280 res!284935) b!477281))

(declare-fun m!459689 () Bool)

(assert (=> b!477281 m!459689))

(assert (=> d!75931 d!76069))

(declare-fun d!76071 () Bool)

(declare-fun res!284936 () Bool)

(declare-fun e!280451 () Bool)

(assert (=> d!76071 (=> res!284936 e!280451)))

(assert (=> d!76071 (= res!284936 (is-Nil!9081 (t!15156 (t!15156 (toList!3974 (+!1736 lm!215 lt!217306))))))))

(assert (=> d!76071 (= (forall!197 (t!15156 (t!15156 (toList!3974 (+!1736 lm!215 lt!217306)))) p!166) e!280451)))

(declare-fun b!477282 () Bool)

(declare-fun e!280452 () Bool)

(assert (=> b!477282 (= e!280451 e!280452)))

(declare-fun res!284937 () Bool)

(assert (=> b!477282 (=> (not res!284937) (not e!280452))))

(assert (=> b!477282 (= res!284937 (dynLambda!943 p!166 (h!9936 (t!15156 (t!15156 (toList!3974 (+!1736 lm!215 lt!217306)))))))))

(declare-fun b!477283 () Bool)

(assert (=> b!477283 (= e!280452 (forall!197 (t!15156 (t!15156 (t!15156 (toList!3974 (+!1736 lm!215 lt!217306))))) p!166))))

(assert (= (and d!76071 (not res!284936)) b!477282))

(assert (= (and b!477282 res!284937) b!477283))

(declare-fun b_lambda!10701 () Bool)

(assert (=> (not b_lambda!10701) (not b!477282)))

(declare-fun t!15239 () Bool)

(declare-fun tb!4109 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15239) tb!4109))

(declare-fun result!7677 () Bool)

(assert (=> tb!4109 (= result!7677 true)))

(assert (=> b!477282 t!15239))

(declare-fun b_and!20821 () Bool)

(assert (= b_and!20819 (and (=> t!15239 result!7677) b_and!20821)))

(declare-fun m!459691 () Bool)

(assert (=> b!477282 m!459691))

(declare-fun m!459693 () Bool)

(assert (=> b!477283 m!459693))

(assert (=> b!476828 d!76071))

(assert (=> d!75935 d!75933))

(declare-fun d!76073 () Bool)

(assert (=> d!76073 (= (getValueByKey!385 lt!217350 (_1!4505 lt!217306)) (Some!390 (_2!4505 lt!217306)))))

(assert (=> d!76073 true))

(declare-fun _$22!551 () Unit!14003)

(assert (=> d!76073 (= (choose!1373 lt!217350 (_1!4505 lt!217306) (_2!4505 lt!217306)) _$22!551)))

(declare-fun bs!15171 () Bool)

(assert (= bs!15171 d!76073))

(assert (=> bs!15171 m!459089))

(assert (=> d!75935 d!76073))

(declare-fun d!76075 () Bool)

(declare-fun res!284938 () Bool)

(declare-fun e!280453 () Bool)

(assert (=> d!76075 (=> res!284938 e!280453)))

(assert (=> d!76075 (= res!284938 (or (is-Nil!9081 lt!217350) (is-Nil!9081 (t!15156 lt!217350))))))

(assert (=> d!76075 (= (isStrictlySorted!384 lt!217350) e!280453)))

(declare-fun b!477284 () Bool)

(declare-fun e!280454 () Bool)

(assert (=> b!477284 (= e!280453 e!280454)))

(declare-fun res!284939 () Bool)

(assert (=> b!477284 (=> (not res!284939) (not e!280454))))

(assert (=> b!477284 (= res!284939 (bvslt (_1!4505 (h!9936 lt!217350)) (_1!4505 (h!9936 (t!15156 lt!217350)))))))

(declare-fun b!477285 () Bool)

(assert (=> b!477285 (= e!280454 (isStrictlySorted!384 (t!15156 lt!217350)))))

(assert (= (and d!76075 (not res!284938)) b!477284))

(assert (= (and b!477284 res!284939) b!477285))

(declare-fun m!459695 () Bool)

(assert (=> b!477285 m!459695))

(assert (=> d!75935 d!76075))

(declare-fun d!76077 () Bool)

(declare-fun lt!217497 () Bool)

(assert (=> d!76077 (= lt!217497 (set.member lt!217306 (content!207 (t!15156 (toList!3974 lt!217341)))))))

(declare-fun e!280456 () Bool)

(assert (=> d!76077 (= lt!217497 e!280456)))

(declare-fun res!284941 () Bool)

(assert (=> d!76077 (=> (not res!284941) (not e!280456))))

(assert (=> d!76077 (= res!284941 (is-Cons!9080 (t!15156 (toList!3974 lt!217341))))))

(assert (=> d!76077 (= (contains!2573 (t!15156 (toList!3974 lt!217341)) lt!217306) lt!217497)))

(declare-fun b!477286 () Bool)

(declare-fun e!280455 () Bool)

(assert (=> b!477286 (= e!280456 e!280455)))

(declare-fun res!284940 () Bool)

(assert (=> b!477286 (=> res!284940 e!280455)))

(assert (=> b!477286 (= res!284940 (= (h!9936 (t!15156 (toList!3974 lt!217341))) lt!217306))))

(declare-fun b!477287 () Bool)

(assert (=> b!477287 (= e!280455 (contains!2573 (t!15156 (t!15156 (toList!3974 lt!217341))) lt!217306))))

(assert (= (and d!76077 res!284941) b!477286))

(assert (= (and b!477286 (not res!284940)) b!477287))

(declare-fun m!459697 () Bool)

(assert (=> d!76077 m!459697))

(declare-fun m!459699 () Bool)

(assert (=> d!76077 m!459699))

(declare-fun m!459701 () Bool)

(assert (=> b!477287 m!459701))

(assert (=> b!477002 d!76077))

(declare-fun d!76079 () Bool)

(declare-fun res!284942 () Bool)

(declare-fun e!280457 () Bool)

(assert (=> d!76079 (=> res!284942 e!280457)))

(assert (=> d!76079 (= res!284942 (and (is-Cons!9080 lt!217440) (= (_1!4505 (h!9936 lt!217440)) (_1!4505 lt!217306))))))

(assert (=> d!76079 (= (containsKey!348 lt!217440 (_1!4505 lt!217306)) e!280457)))

(declare-fun b!477288 () Bool)

(declare-fun e!280458 () Bool)

(assert (=> b!477288 (= e!280457 e!280458)))

(declare-fun res!284943 () Bool)

(assert (=> b!477288 (=> (not res!284943) (not e!280458))))

(assert (=> b!477288 (= res!284943 (and (or (not (is-Cons!9080 lt!217440)) (bvsle (_1!4505 (h!9936 lt!217440)) (_1!4505 lt!217306))) (is-Cons!9080 lt!217440) (bvslt (_1!4505 (h!9936 lt!217440)) (_1!4505 lt!217306))))))

(declare-fun b!477289 () Bool)

(assert (=> b!477289 (= e!280458 (containsKey!348 (t!15156 lt!217440) (_1!4505 lt!217306)))))

(assert (= (and d!76079 (not res!284942)) b!477288))

(assert (= (and b!477288 res!284943) b!477289))

(declare-fun m!459703 () Bool)

(assert (=> b!477289 m!459703))

(assert (=> b!476966 d!76079))

(declare-fun b!477291 () Bool)

(declare-fun e!280459 () Option!391)

(declare-fun e!280460 () Option!391)

(assert (=> b!477291 (= e!280459 e!280460)))

(declare-fun c!57428 () Bool)

(assert (=> b!477291 (= c!57428 (and (is-Cons!9080 (toList!3974 lt!217382)) (not (= (_1!4505 (h!9936 (toList!3974 lt!217382))) (_1!4505 (tuple2!8991 a!501 b!85))))))))

(declare-fun b!477290 () Bool)

(assert (=> b!477290 (= e!280459 (Some!390 (_2!4505 (h!9936 (toList!3974 lt!217382)))))))

(declare-fun b!477293 () Bool)

(assert (=> b!477293 (= e!280460 None!389)))

(declare-fun b!477292 () Bool)

(assert (=> b!477292 (= e!280460 (getValueByKey!385 (t!15156 (toList!3974 lt!217382)) (_1!4505 (tuple2!8991 a!501 b!85))))))

(declare-fun d!76081 () Bool)

(declare-fun c!57427 () Bool)

(assert (=> d!76081 (= c!57427 (and (is-Cons!9080 (toList!3974 lt!217382)) (= (_1!4505 (h!9936 (toList!3974 lt!217382))) (_1!4505 (tuple2!8991 a!501 b!85)))))))

(assert (=> d!76081 (= (getValueByKey!385 (toList!3974 lt!217382) (_1!4505 (tuple2!8991 a!501 b!85))) e!280459)))

(assert (= (and d!76081 c!57427) b!477290))

(assert (= (and d!76081 (not c!57427)) b!477291))

(assert (= (and b!477291 c!57428) b!477292))

(assert (= (and b!477291 (not c!57428)) b!477293))

(declare-fun m!459705 () Bool)

(assert (=> b!477292 m!459705))

(assert (=> b!476816 d!76081))

(declare-fun d!76083 () Bool)

(declare-fun res!284944 () Bool)

(declare-fun e!280461 () Bool)

(assert (=> d!76083 (=> res!284944 e!280461)))

(assert (=> d!76083 (= res!284944 (is-Nil!9081 (t!15156 (t!15156 (toList!3974 (+!1736 lt!217304 lt!217306))))))))

(assert (=> d!76083 (= (forall!197 (t!15156 (t!15156 (toList!3974 (+!1736 lt!217304 lt!217306)))) p!166) e!280461)))

(declare-fun b!477294 () Bool)

(declare-fun e!280462 () Bool)

(assert (=> b!477294 (= e!280461 e!280462)))

(declare-fun res!284945 () Bool)

(assert (=> b!477294 (=> (not res!284945) (not e!280462))))

(assert (=> b!477294 (= res!284945 (dynLambda!943 p!166 (h!9936 (t!15156 (t!15156 (toList!3974 (+!1736 lt!217304 lt!217306)))))))))

(declare-fun b!477295 () Bool)

(assert (=> b!477295 (= e!280462 (forall!197 (t!15156 (t!15156 (t!15156 (toList!3974 (+!1736 lt!217304 lt!217306))))) p!166))))

(assert (= (and d!76083 (not res!284944)) b!477294))

(assert (= (and b!477294 res!284945) b!477295))

(declare-fun b_lambda!10703 () Bool)

(assert (=> (not b_lambda!10703) (not b!477294)))

(declare-fun t!15241 () Bool)

(declare-fun tb!4111 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15241) tb!4111))

(declare-fun result!7679 () Bool)

(assert (=> tb!4111 (= result!7679 true)))

(assert (=> b!477294 t!15241))

(declare-fun b_and!20823 () Bool)

(assert (= b_and!20821 (and (=> t!15241 result!7679) b_and!20823)))

(declare-fun m!459707 () Bool)

(assert (=> b!477294 m!459707))

(declare-fun m!459709 () Bool)

(assert (=> b!477295 m!459709))

(assert (=> b!476811 d!76083))

(declare-fun d!76085 () Bool)

(declare-fun lt!217498 () Bool)

(assert (=> d!76085 (= lt!217498 (set.member (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306)) (content!207 lt!217440)))))

(declare-fun e!280464 () Bool)

(assert (=> d!76085 (= lt!217498 e!280464)))

(declare-fun res!284947 () Bool)

(assert (=> d!76085 (=> (not res!284947) (not e!280464))))

(assert (=> d!76085 (= res!284947 (is-Cons!9080 lt!217440))))

(assert (=> d!76085 (= (contains!2573 lt!217440 (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))) lt!217498)))

(declare-fun b!477296 () Bool)

(declare-fun e!280463 () Bool)

(assert (=> b!477296 (= e!280464 e!280463)))

(declare-fun res!284946 () Bool)

(assert (=> b!477296 (=> res!284946 e!280463)))

(assert (=> b!477296 (= res!284946 (= (h!9936 lt!217440) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))))))

(declare-fun b!477297 () Bool)

(assert (=> b!477297 (= e!280463 (contains!2573 (t!15156 lt!217440) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))))))

(assert (= (and d!76085 res!284947) b!477296))

(assert (= (and b!477296 (not res!284946)) b!477297))

(declare-fun m!459711 () Bool)

(assert (=> d!76085 m!459711))

(declare-fun m!459713 () Bool)

(assert (=> d!76085 m!459713))

(declare-fun m!459715 () Bool)

(assert (=> b!477297 m!459715))

(assert (=> b!476967 d!76085))

(declare-fun d!76087 () Bool)

(assert (=> d!76087 (= ($colon$colon!111 e!280299 (ite c!57377 (h!9936 (toList!3974 lm!215)) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306)))) (Cons!9080 (ite c!57377 (h!9936 (toList!3974 lm!215)) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))) e!280299))))

(assert (=> bm!30754 d!76087))

(declare-fun d!76089 () Bool)

(declare-fun c!57429 () Bool)

(assert (=> d!76089 (= c!57429 (is-Nil!9081 (toList!3974 lt!217341)))))

(declare-fun e!280465 () (Set tuple2!8990))

(assert (=> d!76089 (= (content!207 (toList!3974 lt!217341)) e!280465)))

(declare-fun b!477298 () Bool)

(assert (=> b!477298 (= e!280465 (as set.empty (Set tuple2!8990)))))

(declare-fun b!477299 () Bool)

(assert (=> b!477299 (= e!280465 (set.union (set.insert (h!9936 (toList!3974 lt!217341)) (as set.empty (Set tuple2!8990))) (content!207 (t!15156 (toList!3974 lt!217341)))))))

(assert (= (and d!76089 c!57429) b!477298))

(assert (= (and d!76089 (not c!57429)) b!477299))

(declare-fun m!459717 () Bool)

(assert (=> b!477299 m!459717))

(assert (=> b!477299 m!459697))

(assert (=> d!75899 d!76089))

(declare-fun b!477300 () Bool)

(declare-fun e!280468 () List!9084)

(declare-fun call!30774 () List!9084)

(assert (=> b!477300 (= e!280468 call!30774)))

(declare-fun bm!30770 () Bool)

(declare-fun call!30775 () List!9084)

(assert (=> bm!30770 (= call!30774 call!30775)))

(declare-fun b!477301 () Bool)

(declare-fun res!284948 () Bool)

(declare-fun e!280469 () Bool)

(assert (=> b!477301 (=> (not res!284948) (not e!280469))))

(declare-fun lt!217499 () List!9084)

(assert (=> b!477301 (= res!284948 (containsKey!348 lt!217499 (_1!4505 lt!217306)))))

(declare-fun d!76091 () Bool)

(assert (=> d!76091 e!280469))

(declare-fun res!284949 () Bool)

(assert (=> d!76091 (=> (not res!284949) (not e!280469))))

(assert (=> d!76091 (= res!284949 (isStrictlySorted!384 lt!217499))))

(declare-fun e!280466 () List!9084)

(assert (=> d!76091 (= lt!217499 e!280466)))

(declare-fun c!57431 () Bool)

(assert (=> d!76091 (= c!57431 (and (is-Cons!9080 (t!15156 (toList!3974 lt!217304))) (bvslt (_1!4505 (h!9936 (t!15156 (toList!3974 lt!217304)))) (_1!4505 lt!217306))))))

(assert (=> d!76091 (isStrictlySorted!384 (t!15156 (toList!3974 lt!217304)))))

(assert (=> d!76091 (= (insertStrictlySorted!211 (t!15156 (toList!3974 lt!217304)) (_1!4505 lt!217306) (_2!4505 lt!217306)) lt!217499)))

(declare-fun b!477302 () Bool)

(assert (=> b!477302 (= e!280469 (contains!2573 lt!217499 (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))))))

(declare-fun b!477303 () Bool)

(declare-fun e!280470 () List!9084)

(declare-fun call!30773 () List!9084)

(assert (=> b!477303 (= e!280470 call!30773)))

(declare-fun bm!30771 () Bool)

(assert (=> bm!30771 (= call!30773 call!30774)))

(declare-fun b!477304 () Bool)

(declare-fun e!280467 () List!9084)

(assert (=> b!477304 (= e!280467 (insertStrictlySorted!211 (t!15156 (t!15156 (toList!3974 lt!217304))) (_1!4505 lt!217306) (_2!4505 lt!217306)))))

(declare-fun b!477305 () Bool)

(declare-fun c!57432 () Bool)

(assert (=> b!477305 (= c!57432 (and (is-Cons!9080 (t!15156 (toList!3974 lt!217304))) (bvsgt (_1!4505 (h!9936 (t!15156 (toList!3974 lt!217304)))) (_1!4505 lt!217306))))))

(assert (=> b!477305 (= e!280468 e!280470)))

(declare-fun b!477306 () Bool)

(declare-fun c!57433 () Bool)

(assert (=> b!477306 (= e!280467 (ite c!57433 (t!15156 (t!15156 (toList!3974 lt!217304))) (ite c!57432 (Cons!9080 (h!9936 (t!15156 (toList!3974 lt!217304))) (t!15156 (t!15156 (toList!3974 lt!217304)))) Nil!9081)))))

(declare-fun b!477307 () Bool)

(assert (=> b!477307 (= e!280470 call!30773)))

(declare-fun b!477308 () Bool)

(assert (=> b!477308 (= e!280466 e!280468)))

(assert (=> b!477308 (= c!57433 (and (is-Cons!9080 (t!15156 (toList!3974 lt!217304))) (= (_1!4505 (h!9936 (t!15156 (toList!3974 lt!217304)))) (_1!4505 lt!217306))))))

(declare-fun bm!30772 () Bool)

(assert (=> bm!30772 (= call!30775 ($colon$colon!111 e!280467 (ite c!57431 (h!9936 (t!15156 (toList!3974 lt!217304))) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306)))))))

(declare-fun c!57430 () Bool)

(assert (=> bm!30772 (= c!57430 c!57431)))

(declare-fun b!477309 () Bool)

(assert (=> b!477309 (= e!280466 call!30775)))

(assert (= (and d!76091 c!57431) b!477309))

(assert (= (and d!76091 (not c!57431)) b!477308))

(assert (= (and b!477308 c!57433) b!477300))

(assert (= (and b!477308 (not c!57433)) b!477305))

(assert (= (and b!477305 c!57432) b!477303))

(assert (= (and b!477305 (not c!57432)) b!477307))

(assert (= (or b!477303 b!477307) bm!30771))

(assert (= (or b!477300 bm!30771) bm!30770))

(assert (= (or b!477309 bm!30770) bm!30772))

(assert (= (and bm!30772 c!57430) b!477304))

(assert (= (and bm!30772 (not c!57430)) b!477306))

(assert (= (and d!76091 res!284949) b!477301))

(assert (= (and b!477301 res!284948) b!477302))

(declare-fun m!459719 () Bool)

(assert (=> b!477302 m!459719))

(declare-fun m!459721 () Bool)

(assert (=> b!477304 m!459721))

(declare-fun m!459723 () Bool)

(assert (=> b!477301 m!459723))

(declare-fun m!459725 () Bool)

(assert (=> bm!30772 m!459725))

(declare-fun m!459727 () Bool)

(assert (=> d!76091 m!459727))

(declare-fun m!459729 () Bool)

(assert (=> d!76091 m!459729))

(assert (=> b!476969 d!76091))

(declare-fun lt!217500 () Bool)

(declare-fun d!76093 () Bool)

(assert (=> d!76093 (= lt!217500 (set.member (tuple2!8991 a!501 b!85) (content!207 (toList!3974 lt!217382))))))

(declare-fun e!280472 () Bool)

(assert (=> d!76093 (= lt!217500 e!280472)))

(declare-fun res!284951 () Bool)

(assert (=> d!76093 (=> (not res!284951) (not e!280472))))

(assert (=> d!76093 (= res!284951 (is-Cons!9080 (toList!3974 lt!217382)))))

(assert (=> d!76093 (= (contains!2573 (toList!3974 lt!217382) (tuple2!8991 a!501 b!85)) lt!217500)))

(declare-fun b!477310 () Bool)

(declare-fun e!280471 () Bool)

(assert (=> b!477310 (= e!280472 e!280471)))

(declare-fun res!284950 () Bool)

(assert (=> b!477310 (=> res!284950 e!280471)))

(assert (=> b!477310 (= res!284950 (= (h!9936 (toList!3974 lt!217382)) (tuple2!8991 a!501 b!85)))))

(declare-fun b!477311 () Bool)

(assert (=> b!477311 (= e!280471 (contains!2573 (t!15156 (toList!3974 lt!217382)) (tuple2!8991 a!501 b!85)))))

(assert (= (and d!76093 res!284951) b!477310))

(assert (= (and b!477310 (not res!284950)) b!477311))

(declare-fun m!459731 () Bool)

(assert (=> d!76093 m!459731))

(declare-fun m!459733 () Bool)

(assert (=> d!76093 m!459733))

(declare-fun m!459735 () Bool)

(assert (=> b!477311 m!459735))

(assert (=> b!476817 d!76093))

(declare-fun b!477313 () Bool)

(declare-fun e!280473 () Option!391)

(declare-fun e!280474 () Option!391)

(assert (=> b!477313 (= e!280473 e!280474)))

(declare-fun c!57435 () Bool)

(assert (=> b!477313 (= c!57435 (and (is-Cons!9080 (t!15156 lt!217342)) (not (= (_1!4505 (h!9936 (t!15156 lt!217342))) (_1!4505 lt!217306)))))))

(declare-fun b!477312 () Bool)

(assert (=> b!477312 (= e!280473 (Some!390 (_2!4505 (h!9936 (t!15156 lt!217342)))))))

(declare-fun b!477315 () Bool)

(assert (=> b!477315 (= e!280474 None!389)))

(declare-fun b!477314 () Bool)

(assert (=> b!477314 (= e!280474 (getValueByKey!385 (t!15156 (t!15156 lt!217342)) (_1!4505 lt!217306)))))

(declare-fun d!76095 () Bool)

(declare-fun c!57434 () Bool)

(assert (=> d!76095 (= c!57434 (and (is-Cons!9080 (t!15156 lt!217342)) (= (_1!4505 (h!9936 (t!15156 lt!217342))) (_1!4505 lt!217306))))))

(assert (=> d!76095 (= (getValueByKey!385 (t!15156 lt!217342) (_1!4505 lt!217306)) e!280473)))

(assert (= (and d!76095 c!57434) b!477312))

(assert (= (and d!76095 (not c!57434)) b!477313))

(assert (= (and b!477313 c!57435) b!477314))

(assert (= (and b!477313 (not c!57435)) b!477315))

(declare-fun m!459737 () Bool)

(assert (=> b!477314 m!459737))

(assert (=> b!476869 d!76095))

(declare-fun d!76097 () Bool)

(declare-fun res!284952 () Bool)

(declare-fun e!280475 () Bool)

(assert (=> d!76097 (=> res!284952 e!280475)))

(assert (=> d!76097 (= res!284952 (and (is-Cons!9080 (toList!3974 lt!217341)) (= (_1!4505 (h!9936 (toList!3974 lt!217341))) (_1!4505 lt!217306))))))

(assert (=> d!76097 (= (containsKey!348 (toList!3974 lt!217341) (_1!4505 lt!217306)) e!280475)))

(declare-fun b!477316 () Bool)

(declare-fun e!280476 () Bool)

(assert (=> b!477316 (= e!280475 e!280476)))

(declare-fun res!284953 () Bool)

(assert (=> b!477316 (=> (not res!284953) (not e!280476))))

(assert (=> b!477316 (= res!284953 (and (or (not (is-Cons!9080 (toList!3974 lt!217341))) (bvsle (_1!4505 (h!9936 (toList!3974 lt!217341))) (_1!4505 lt!217306))) (is-Cons!9080 (toList!3974 lt!217341)) (bvslt (_1!4505 (h!9936 (toList!3974 lt!217341))) (_1!4505 lt!217306))))))

(declare-fun b!477317 () Bool)

(assert (=> b!477317 (= e!280476 (containsKey!348 (t!15156 (toList!3974 lt!217341)) (_1!4505 lt!217306)))))

(assert (= (and d!76097 (not res!284952)) b!477316))

(assert (= (and b!477316 res!284953) b!477317))

(declare-fun m!459739 () Bool)

(assert (=> b!477317 m!459739))

(assert (=> d!75861 d!76097))

(declare-fun d!76099 () Bool)

(declare-fun res!284954 () Bool)

(declare-fun e!280477 () Bool)

(assert (=> d!76099 (=> res!284954 e!280477)))

(assert (=> d!76099 (= res!284954 (is-Nil!9081 (t!15156 (t!15156 (toList!3974 lm!215)))))))

(assert (=> d!76099 (= (forall!197 (t!15156 (t!15156 (toList!3974 lm!215))) p!166) e!280477)))

(declare-fun b!477318 () Bool)

(declare-fun e!280478 () Bool)

(assert (=> b!477318 (= e!280477 e!280478)))

(declare-fun res!284955 () Bool)

(assert (=> b!477318 (=> (not res!284955) (not e!280478))))

(assert (=> b!477318 (= res!284955 (dynLambda!943 p!166 (h!9936 (t!15156 (t!15156 (toList!3974 lm!215))))))))

(declare-fun b!477319 () Bool)

(assert (=> b!477319 (= e!280478 (forall!197 (t!15156 (t!15156 (t!15156 (toList!3974 lm!215)))) p!166))))

(assert (= (and d!76099 (not res!284954)) b!477318))

(assert (= (and b!477318 res!284955) b!477319))

(declare-fun b_lambda!10705 () Bool)

(assert (=> (not b_lambda!10705) (not b!477318)))

(declare-fun t!15244 () Bool)

(declare-fun tb!4113 () Bool)

(assert (=> (and start!42872 (= p!166 p!166) t!15244) tb!4113))

(declare-fun result!7681 () Bool)

(assert (=> tb!4113 (= result!7681 true)))

(assert (=> b!477318 t!15244))

(declare-fun b_and!20825 () Bool)

(assert (= b_and!20823 (and (=> t!15244 result!7681) b_and!20825)))

(declare-fun m!459741 () Bool)

(assert (=> b!477318 m!459741))

(declare-fun m!459743 () Bool)

(assert (=> b!477319 m!459743))

(assert (=> b!477025 d!76099))

(declare-fun d!76101 () Bool)

(declare-fun res!284956 () Bool)

(declare-fun e!280479 () Bool)

(assert (=> d!76101 (=> res!284956 e!280479)))

(assert (=> d!76101 (= res!284956 (and (is-Cons!9080 lt!217350) (= (_1!4505 (h!9936 lt!217350)) (_1!4505 lt!217306))))))

(assert (=> d!76101 (= (containsKey!348 lt!217350 (_1!4505 lt!217306)) e!280479)))

(declare-fun b!477320 () Bool)

(declare-fun e!280480 () Bool)

(assert (=> b!477320 (= e!280479 e!280480)))

(declare-fun res!284957 () Bool)

(assert (=> b!477320 (=> (not res!284957) (not e!280480))))

(assert (=> b!477320 (= res!284957 (and (or (not (is-Cons!9080 lt!217350)) (bvsle (_1!4505 (h!9936 lt!217350)) (_1!4505 lt!217306))) (is-Cons!9080 lt!217350) (bvslt (_1!4505 (h!9936 lt!217350)) (_1!4505 lt!217306))))))

(declare-fun b!477321 () Bool)

(assert (=> b!477321 (= e!280480 (containsKey!348 (t!15156 lt!217350) (_1!4505 lt!217306)))))

(assert (= (and d!76101 (not res!284956)) b!477320))

(assert (= (and b!477320 res!284957) b!477321))

(declare-fun m!459745 () Bool)

(assert (=> b!477321 m!459745))

(assert (=> b!477066 d!76101))

(declare-fun d!76103 () Bool)

(declare-fun lt!217501 () Bool)

(assert (=> d!76103 (= lt!217501 (set.member (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306)) (content!207 lt!217350)))))

(declare-fun e!280482 () Bool)

(assert (=> d!76103 (= lt!217501 e!280482)))

(declare-fun res!284959 () Bool)

(assert (=> d!76103 (=> (not res!284959) (not e!280482))))

(assert (=> d!76103 (= res!284959 (is-Cons!9080 lt!217350))))

(assert (=> d!76103 (= (contains!2573 lt!217350 (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))) lt!217501)))

(declare-fun b!477322 () Bool)

(declare-fun e!280481 () Bool)

(assert (=> b!477322 (= e!280482 e!280481)))

(declare-fun res!284958 () Bool)

(assert (=> b!477322 (=> res!284958 e!280481)))

(assert (=> b!477322 (= res!284958 (= (h!9936 lt!217350) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))))))

(declare-fun b!477323 () Bool)

(assert (=> b!477323 (= e!280481 (contains!2573 (t!15156 lt!217350) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))))))

(assert (= (and d!76103 res!284959) b!477322))

(assert (= (and b!477322 (not res!284958)) b!477323))

(declare-fun m!459747 () Bool)

(assert (=> d!76103 m!459747))

(declare-fun m!459749 () Bool)

(assert (=> d!76103 m!459749))

(declare-fun m!459751 () Bool)

(assert (=> b!477323 m!459751))

(assert (=> b!477067 d!76103))

(declare-fun b!477325 () Bool)

(declare-fun e!280483 () Option!391)

(declare-fun e!280484 () Option!391)

(assert (=> b!477325 (= e!280483 e!280484)))

(declare-fun c!57437 () Bool)

(assert (=> b!477325 (= c!57437 (and (is-Cons!9080 (t!15156 (toList!3974 lt!217349))) (not (= (_1!4505 (h!9936 (t!15156 (toList!3974 lt!217349)))) (_1!4505 lt!217306)))))))

(declare-fun b!477324 () Bool)

(assert (=> b!477324 (= e!280483 (Some!390 (_2!4505 (h!9936 (t!15156 (toList!3974 lt!217349))))))))

(declare-fun b!477327 () Bool)

(assert (=> b!477327 (= e!280484 None!389)))

(declare-fun b!477326 () Bool)

(assert (=> b!477326 (= e!280484 (getValueByKey!385 (t!15156 (t!15156 (toList!3974 lt!217349))) (_1!4505 lt!217306)))))

(declare-fun d!76105 () Bool)

(declare-fun c!57436 () Bool)

(assert (=> d!76105 (= c!57436 (and (is-Cons!9080 (t!15156 (toList!3974 lt!217349))) (= (_1!4505 (h!9936 (t!15156 (toList!3974 lt!217349)))) (_1!4505 lt!217306))))))

(assert (=> d!76105 (= (getValueByKey!385 (t!15156 (toList!3974 lt!217349)) (_1!4505 lt!217306)) e!280483)))

(assert (= (and d!76105 c!57436) b!477324))

(assert (= (and d!76105 (not c!57436)) b!477325))

(assert (= (and b!477325 c!57437) b!477326))

(assert (= (and b!477325 (not c!57437)) b!477327))

(declare-fun m!459753 () Bool)

(assert (=> b!477326 m!459753))

(assert (=> b!476981 d!76105))

(declare-fun d!76107 () Bool)

(declare-fun lt!217502 () Bool)

(assert (=> d!76107 (= lt!217502 (set.member lt!217306 (content!207 (t!15156 (toList!3974 lt!217349)))))))

(declare-fun e!280486 () Bool)

(assert (=> d!76107 (= lt!217502 e!280486)))

(declare-fun res!284961 () Bool)

(assert (=> d!76107 (=> (not res!284961) (not e!280486))))

(assert (=> d!76107 (= res!284961 (is-Cons!9080 (t!15156 (toList!3974 lt!217349))))))

(assert (=> d!76107 (= (contains!2573 (t!15156 (toList!3974 lt!217349)) lt!217306) lt!217502)))

(declare-fun b!477328 () Bool)

(declare-fun e!280485 () Bool)

(assert (=> b!477328 (= e!280486 e!280485)))

(declare-fun res!284960 () Bool)

(assert (=> b!477328 (=> res!284960 e!280485)))

(assert (=> b!477328 (= res!284960 (= (h!9936 (t!15156 (toList!3974 lt!217349))) lt!217306))))

(declare-fun b!477329 () Bool)

(assert (=> b!477329 (= e!280485 (contains!2573 (t!15156 (t!15156 (toList!3974 lt!217349))) lt!217306))))

(assert (= (and d!76107 res!284961) b!477328))

(assert (= (and b!477328 (not res!284960)) b!477329))

(assert (=> d!76107 m!459679))

(declare-fun m!459755 () Bool)

(assert (=> d!76107 m!459755))

(declare-fun m!459757 () Bool)

(assert (=> b!477329 m!459757))

(assert (=> b!477004 d!76107))

(declare-fun d!76109 () Bool)

(assert (=> d!76109 (isDefined!298 (getValueByKey!385 (toList!3974 lt!217349) (_1!4505 lt!217306)))))

(declare-fun lt!217505 () Unit!14003)

(declare-fun choose!1376 (List!9084 (_ BitVec 64)) Unit!14003)

(assert (=> d!76109 (= lt!217505 (choose!1376 (toList!3974 lt!217349) (_1!4505 lt!217306)))))

(declare-fun e!280489 () Bool)

(assert (=> d!76109 e!280489))

(declare-fun res!284964 () Bool)

(assert (=> d!76109 (=> (not res!284964) (not e!280489))))

(assert (=> d!76109 (= res!284964 (isStrictlySorted!384 (toList!3974 lt!217349)))))

(assert (=> d!76109 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!297 (toList!3974 lt!217349) (_1!4505 lt!217306)) lt!217505)))

(declare-fun b!477332 () Bool)

(assert (=> b!477332 (= e!280489 (containsKey!348 (toList!3974 lt!217349) (_1!4505 lt!217306)))))

(assert (= (and d!76109 res!284964) b!477332))

(assert (=> d!76109 m!459095))

(assert (=> d!76109 m!459095))

(assert (=> d!76109 m!459413))

(declare-fun m!459759 () Bool)

(assert (=> d!76109 m!459759))

(declare-fun m!459761 () Bool)

(assert (=> d!76109 m!459761))

(assert (=> b!477332 m!459409))

(assert (=> b!477058 d!76109))

(declare-fun d!76111 () Bool)

(declare-fun isEmpty!613 (Option!391) Bool)

(assert (=> d!76111 (= (isDefined!298 (getValueByKey!385 (toList!3974 lt!217349) (_1!4505 lt!217306))) (not (isEmpty!613 (getValueByKey!385 (toList!3974 lt!217349) (_1!4505 lt!217306)))))))

(declare-fun bs!15172 () Bool)

(assert (= bs!15172 d!76111))

(assert (=> bs!15172 m!459095))

(declare-fun m!459763 () Bool)

(assert (=> bs!15172 m!459763))

(assert (=> b!477058 d!76111))

(assert (=> b!477058 d!75897))

(declare-fun b!477334 () Bool)

(declare-fun e!280490 () Option!391)

(declare-fun e!280491 () Option!391)

(assert (=> b!477334 (= e!280490 e!280491)))

(declare-fun c!57439 () Bool)

(assert (=> b!477334 (= c!57439 (and (is-Cons!9080 (t!15156 (toList!3974 lt!217341))) (not (= (_1!4505 (h!9936 (t!15156 (toList!3974 lt!217341)))) (_1!4505 lt!217306)))))))

(declare-fun b!477333 () Bool)

(assert (=> b!477333 (= e!280490 (Some!390 (_2!4505 (h!9936 (t!15156 (toList!3974 lt!217341))))))))

(declare-fun b!477336 () Bool)

(assert (=> b!477336 (= e!280491 None!389)))

(declare-fun b!477335 () Bool)

(assert (=> b!477335 (= e!280491 (getValueByKey!385 (t!15156 (t!15156 (toList!3974 lt!217341))) (_1!4505 lt!217306)))))

(declare-fun d!76113 () Bool)

(declare-fun c!57438 () Bool)

(assert (=> d!76113 (= c!57438 (and (is-Cons!9080 (t!15156 (toList!3974 lt!217341))) (= (_1!4505 (h!9936 (t!15156 (toList!3974 lt!217341)))) (_1!4505 lt!217306))))))

(assert (=> d!76113 (= (getValueByKey!385 (t!15156 (toList!3974 lt!217341)) (_1!4505 lt!217306)) e!280490)))

(assert (= (and d!76113 c!57438) b!477333))

(assert (= (and d!76113 (not c!57438)) b!477334))

(assert (= (and b!477334 c!57439) b!477335))

(assert (= (and b!477334 (not c!57439)) b!477336))

(declare-fun m!459765 () Bool)

(assert (=> b!477335 m!459765))

(assert (=> b!476977 d!76113))

(declare-fun d!76115 () Bool)

(assert (=> d!76115 (isDefined!298 (getValueByKey!385 (toList!3974 lt!217341) (_1!4505 lt!217306)))))

(declare-fun lt!217506 () Unit!14003)

(assert (=> d!76115 (= lt!217506 (choose!1376 (toList!3974 lt!217341) (_1!4505 lt!217306)))))

(declare-fun e!280492 () Bool)

(assert (=> d!76115 e!280492))

(declare-fun res!284965 () Bool)

(assert (=> d!76115 (=> (not res!284965) (not e!280492))))

(assert (=> d!76115 (= res!284965 (isStrictlySorted!384 (toList!3974 lt!217341)))))

(assert (=> d!76115 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!297 (toList!3974 lt!217341) (_1!4505 lt!217306)) lt!217506)))

(declare-fun b!477337 () Bool)

(assert (=> b!477337 (= e!280492 (containsKey!348 (toList!3974 lt!217341) (_1!4505 lt!217306)))))

(assert (= (and d!76115 res!284965) b!477337))

(assert (=> d!76115 m!459071))

(assert (=> d!76115 m!459071))

(assert (=> d!76115 m!459249))

(declare-fun m!459767 () Bool)

(assert (=> d!76115 m!459767))

(declare-fun m!459769 () Bool)

(assert (=> d!76115 m!459769))

(assert (=> b!477337 m!459245))

(assert (=> b!476854 d!76115))

(declare-fun d!76117 () Bool)

(assert (=> d!76117 (= (isDefined!298 (getValueByKey!385 (toList!3974 lt!217341) (_1!4505 lt!217306))) (not (isEmpty!613 (getValueByKey!385 (toList!3974 lt!217341) (_1!4505 lt!217306)))))))

(declare-fun bs!15173 () Bool)

(assert (= bs!15173 d!76117))

(assert (=> bs!15173 m!459071))

(declare-fun m!459771 () Bool)

(assert (=> bs!15173 m!459771))

(assert (=> b!476854 d!76117))

(assert (=> b!476854 d!75895))

(declare-fun d!76119 () Bool)

(assert (=> d!76119 (= ($colon$colon!111 e!280230 (ite c!57349 (h!9936 (toList!3974 lt!217304)) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306)))) (Cons!9080 (ite c!57349 (h!9936 (toList!3974 lt!217304)) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))) e!280230))))

(assert (=> bm!30742 d!76119))

(assert (=> d!75871 d!75867))

(declare-fun d!76121 () Bool)

(assert (=> d!76121 (= (getValueByKey!385 lt!217342 (_1!4505 lt!217306)) (Some!390 (_2!4505 lt!217306)))))

(assert (=> d!76121 true))

(declare-fun _$22!552 () Unit!14003)

(assert (=> d!76121 (= (choose!1373 lt!217342 (_1!4505 lt!217306) (_2!4505 lt!217306)) _$22!552)))

(declare-fun bs!15174 () Bool)

(assert (= bs!15174 d!76121))

(assert (=> bs!15174 m!459065))

(assert (=> d!75871 d!76121))

(declare-fun d!76123 () Bool)

(declare-fun res!284966 () Bool)

(declare-fun e!280493 () Bool)

(assert (=> d!76123 (=> res!284966 e!280493)))

(assert (=> d!76123 (= res!284966 (or (is-Nil!9081 lt!217342) (is-Nil!9081 (t!15156 lt!217342))))))

(assert (=> d!76123 (= (isStrictlySorted!384 lt!217342) e!280493)))

(declare-fun b!477338 () Bool)

(declare-fun e!280494 () Bool)

(assert (=> b!477338 (= e!280493 e!280494)))

(declare-fun res!284967 () Bool)

(assert (=> b!477338 (=> (not res!284967) (not e!280494))))

(assert (=> b!477338 (= res!284967 (bvslt (_1!4505 (h!9936 lt!217342)) (_1!4505 (h!9936 (t!15156 lt!217342)))))))

(declare-fun b!477339 () Bool)

(assert (=> b!477339 (= e!280494 (isStrictlySorted!384 (t!15156 lt!217342)))))

(assert (= (and d!76123 (not res!284966)) b!477338))

(assert (= (and b!477338 res!284967) b!477339))

(declare-fun m!459773 () Bool)

(assert (=> b!477339 m!459773))

(assert (=> d!75871 d!76123))

(assert (=> b!477060 d!76111))

(assert (=> b!477060 d!75897))

(declare-fun d!76125 () Bool)

(declare-fun res!284968 () Bool)

(declare-fun e!280495 () Bool)

(assert (=> d!76125 (=> res!284968 e!280495)))

(assert (=> d!76125 (= res!284968 (and (is-Cons!9080 lt!217342) (= (_1!4505 (h!9936 lt!217342)) (_1!4505 lt!217306))))))

(assert (=> d!76125 (= (containsKey!348 lt!217342 (_1!4505 lt!217306)) e!280495)))

(declare-fun b!477340 () Bool)

(declare-fun e!280496 () Bool)

(assert (=> b!477340 (= e!280495 e!280496)))

(declare-fun res!284969 () Bool)

(assert (=> b!477340 (=> (not res!284969) (not e!280496))))

(assert (=> b!477340 (= res!284969 (and (or (not (is-Cons!9080 lt!217342)) (bvsle (_1!4505 (h!9936 lt!217342)) (_1!4505 lt!217306))) (is-Cons!9080 lt!217342) (bvslt (_1!4505 (h!9936 lt!217342)) (_1!4505 lt!217306))))))

(declare-fun b!477341 () Bool)

(assert (=> b!477341 (= e!280496 (containsKey!348 (t!15156 lt!217342) (_1!4505 lt!217306)))))

(assert (= (and d!76125 (not res!284968)) b!477340))

(assert (= (and b!477340 res!284969) b!477341))

(declare-fun m!459775 () Bool)

(assert (=> b!477341 m!459775))

(assert (=> b!476877 d!76125))

(assert (=> b!476856 d!76117))

(assert (=> b!476856 d!75895))

(declare-fun d!76127 () Bool)

(declare-fun res!284970 () Bool)

(declare-fun e!280497 () Bool)

(assert (=> d!76127 (=> res!284970 e!280497)))

(assert (=> d!76127 (= res!284970 (or (is-Nil!9081 (t!15156 (toList!3974 lm!215))) (is-Nil!9081 (t!15156 (t!15156 (toList!3974 lm!215))))))))

(assert (=> d!76127 (= (isStrictlySorted!384 (t!15156 (toList!3974 lm!215))) e!280497)))

(declare-fun b!477342 () Bool)

(declare-fun e!280498 () Bool)

(assert (=> b!477342 (= e!280497 e!280498)))

(declare-fun res!284971 () Bool)

(assert (=> b!477342 (=> (not res!284971) (not e!280498))))

(assert (=> b!477342 (= res!284971 (bvslt (_1!4505 (h!9936 (t!15156 (toList!3974 lm!215)))) (_1!4505 (h!9936 (t!15156 (t!15156 (toList!3974 lm!215)))))))))

(declare-fun b!477343 () Bool)

(assert (=> b!477343 (= e!280498 (isStrictlySorted!384 (t!15156 (t!15156 (toList!3974 lm!215)))))))

(assert (= (and d!76127 (not res!284970)) b!477342))

(assert (= (and b!477342 res!284971) b!477343))

(declare-fun m!459777 () Bool)

(assert (=> b!477343 m!459777))

(assert (=> b!477057 d!76127))

(declare-fun d!76129 () Bool)

(declare-fun res!284972 () Bool)

(declare-fun e!280499 () Bool)

(assert (=> d!76129 (=> res!284972 e!280499)))

(assert (=> d!76129 (= res!284972 (and (is-Cons!9080 lt!217462) (= (_1!4505 (h!9936 lt!217462)) (_1!4505 lt!217306))))))

(assert (=> d!76129 (= (containsKey!348 lt!217462 (_1!4505 lt!217306)) e!280499)))

(declare-fun b!477344 () Bool)

(declare-fun e!280500 () Bool)

(assert (=> b!477344 (= e!280499 e!280500)))

(declare-fun res!284973 () Bool)

(assert (=> b!477344 (=> (not res!284973) (not e!280500))))

(assert (=> b!477344 (= res!284973 (and (or (not (is-Cons!9080 lt!217462)) (bvsle (_1!4505 (h!9936 lt!217462)) (_1!4505 lt!217306))) (is-Cons!9080 lt!217462) (bvslt (_1!4505 (h!9936 lt!217462)) (_1!4505 lt!217306))))))

(declare-fun b!477345 () Bool)

(assert (=> b!477345 (= e!280500 (containsKey!348 (t!15156 lt!217462) (_1!4505 lt!217306)))))

(assert (= (and d!76129 (not res!284972)) b!477344))

(assert (= (and b!477344 res!284973) b!477345))

(declare-fun m!459779 () Bool)

(assert (=> b!477345 m!459779))

(assert (=> b!477069 d!76129))

(declare-fun d!76131 () Bool)

(declare-fun lt!217507 () Bool)

(assert (=> d!76131 (= lt!217507 (set.member (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306)) (content!207 lt!217342)))))

(declare-fun e!280502 () Bool)

(assert (=> d!76131 (= lt!217507 e!280502)))

(declare-fun res!284975 () Bool)

(assert (=> d!76131 (=> (not res!284975) (not e!280502))))

(assert (=> d!76131 (= res!284975 (is-Cons!9080 lt!217342))))

(assert (=> d!76131 (= (contains!2573 lt!217342 (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))) lt!217507)))

(declare-fun b!477346 () Bool)

(declare-fun e!280501 () Bool)

(assert (=> b!477346 (= e!280502 e!280501)))

(declare-fun res!284974 () Bool)

(assert (=> b!477346 (=> res!284974 e!280501)))

(assert (=> b!477346 (= res!284974 (= (h!9936 lt!217342) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))))))

(declare-fun b!477347 () Bool)

(assert (=> b!477347 (= e!280501 (contains!2573 (t!15156 lt!217342) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))))))

(assert (= (and d!76131 res!284975) b!477346))

(assert (= (and b!477346 (not res!284974)) b!477347))

(declare-fun m!459781 () Bool)

(assert (=> d!76131 m!459781))

(declare-fun m!459783 () Bool)

(assert (=> d!76131 m!459783))

(declare-fun m!459785 () Bool)

(assert (=> b!477347 m!459785))

(assert (=> b!476878 d!76131))

(declare-fun d!76133 () Bool)

(declare-fun e!280503 () Bool)

(assert (=> d!76133 e!280503))

(declare-fun res!284976 () Bool)

(assert (=> d!76133 (=> res!284976 e!280503)))

(declare-fun lt!217509 () Bool)

(assert (=> d!76133 (= res!284976 (not lt!217509))))

(declare-fun lt!217511 () Bool)

(assert (=> d!76133 (= lt!217509 lt!217511)))

(declare-fun lt!217508 () Unit!14003)

(declare-fun e!280504 () Unit!14003)

(assert (=> d!76133 (= lt!217508 e!280504)))

(declare-fun c!57440 () Bool)

(assert (=> d!76133 (= c!57440 lt!217511)))

(assert (=> d!76133 (= lt!217511 (containsKey!348 (toList!3974 lt!217382) (_1!4505 (tuple2!8991 a!501 b!85))))))

(assert (=> d!76133 (= (contains!2571 lt!217382 (_1!4505 (tuple2!8991 a!501 b!85))) lt!217509)))

(declare-fun b!477348 () Bool)

(declare-fun lt!217510 () Unit!14003)

(assert (=> b!477348 (= e!280504 lt!217510)))

(assert (=> b!477348 (= lt!217510 (lemmaContainsKeyImpliesGetValueByKeyDefined!297 (toList!3974 lt!217382) (_1!4505 (tuple2!8991 a!501 b!85))))))

(assert (=> b!477348 (isDefined!298 (getValueByKey!385 (toList!3974 lt!217382) (_1!4505 (tuple2!8991 a!501 b!85))))))

(declare-fun b!477349 () Bool)

(declare-fun Unit!14016 () Unit!14003)

(assert (=> b!477349 (= e!280504 Unit!14016)))

(declare-fun b!477350 () Bool)

(assert (=> b!477350 (= e!280503 (isDefined!298 (getValueByKey!385 (toList!3974 lt!217382) (_1!4505 (tuple2!8991 a!501 b!85)))))))

(assert (= (and d!76133 c!57440) b!477348))

(assert (= (and d!76133 (not c!57440)) b!477349))

(assert (= (and d!76133 (not res!284976)) b!477350))

(declare-fun m!459787 () Bool)

(assert (=> d!76133 m!459787))

(declare-fun m!459789 () Bool)

(assert (=> b!477348 m!459789))

(assert (=> b!477348 m!459225))

(assert (=> b!477348 m!459225))

(declare-fun m!459791 () Bool)

(assert (=> b!477348 m!459791))

(assert (=> b!477350 m!459225))

(assert (=> b!477350 m!459225))

(assert (=> b!477350 m!459791))

(assert (=> d!75853 d!76133))

(declare-fun b!477352 () Bool)

(declare-fun e!280505 () Option!391)

(declare-fun e!280506 () Option!391)

(assert (=> b!477352 (= e!280505 e!280506)))

(declare-fun c!57442 () Bool)

(assert (=> b!477352 (= c!57442 (and (is-Cons!9080 lt!217383) (not (= (_1!4505 (h!9936 lt!217383)) (_1!4505 (tuple2!8991 a!501 b!85))))))))

(declare-fun b!477351 () Bool)

(assert (=> b!477351 (= e!280505 (Some!390 (_2!4505 (h!9936 lt!217383))))))

(declare-fun b!477354 () Bool)

(assert (=> b!477354 (= e!280506 None!389)))

(declare-fun b!477353 () Bool)

(assert (=> b!477353 (= e!280506 (getValueByKey!385 (t!15156 lt!217383) (_1!4505 (tuple2!8991 a!501 b!85))))))

(declare-fun c!57441 () Bool)

(declare-fun d!76135 () Bool)

(assert (=> d!76135 (= c!57441 (and (is-Cons!9080 lt!217383) (= (_1!4505 (h!9936 lt!217383)) (_1!4505 (tuple2!8991 a!501 b!85)))))))

(assert (=> d!76135 (= (getValueByKey!385 lt!217383 (_1!4505 (tuple2!8991 a!501 b!85))) e!280505)))

(assert (= (and d!76135 c!57441) b!477351))

(assert (= (and d!76135 (not c!57441)) b!477352))

(assert (= (and b!477352 c!57442) b!477353))

(assert (= (and b!477352 (not c!57442)) b!477354))

(declare-fun m!459793 () Bool)

(assert (=> b!477353 m!459793))

(assert (=> d!75853 d!76135))

(declare-fun d!76137 () Bool)

(assert (=> d!76137 (= (getValueByKey!385 lt!217383 (_1!4505 (tuple2!8991 a!501 b!85))) (Some!390 (_2!4505 (tuple2!8991 a!501 b!85))))))

(declare-fun lt!217512 () Unit!14003)

(assert (=> d!76137 (= lt!217512 (choose!1373 lt!217383 (_1!4505 (tuple2!8991 a!501 b!85)) (_2!4505 (tuple2!8991 a!501 b!85))))))

(declare-fun e!280507 () Bool)

(assert (=> d!76137 e!280507))

(declare-fun res!284977 () Bool)

(assert (=> d!76137 (=> (not res!284977) (not e!280507))))

(assert (=> d!76137 (= res!284977 (isStrictlySorted!384 lt!217383))))

(assert (=> d!76137 (= (lemmaContainsTupThenGetReturnValue!209 lt!217383 (_1!4505 (tuple2!8991 a!501 b!85)) (_2!4505 (tuple2!8991 a!501 b!85))) lt!217512)))

(declare-fun b!477355 () Bool)

(declare-fun res!284978 () Bool)

(assert (=> b!477355 (=> (not res!284978) (not e!280507))))

(assert (=> b!477355 (= res!284978 (containsKey!348 lt!217383 (_1!4505 (tuple2!8991 a!501 b!85))))))

(declare-fun b!477356 () Bool)

(assert (=> b!477356 (= e!280507 (contains!2573 lt!217383 (tuple2!8991 (_1!4505 (tuple2!8991 a!501 b!85)) (_2!4505 (tuple2!8991 a!501 b!85)))))))

(assert (= (and d!76137 res!284977) b!477355))

(assert (= (and b!477355 res!284978) b!477356))

(assert (=> d!76137 m!459219))

(declare-fun m!459795 () Bool)

(assert (=> d!76137 m!459795))

(declare-fun m!459797 () Bool)

(assert (=> d!76137 m!459797))

(declare-fun m!459799 () Bool)

(assert (=> b!477355 m!459799))

(declare-fun m!459801 () Bool)

(assert (=> b!477356 m!459801))

(assert (=> d!75853 d!76137))

(declare-fun b!477357 () Bool)

(declare-fun e!280510 () List!9084)

(declare-fun call!30777 () List!9084)

(assert (=> b!477357 (= e!280510 call!30777)))

(declare-fun bm!30773 () Bool)

(declare-fun call!30778 () List!9084)

(assert (=> bm!30773 (= call!30777 call!30778)))

(declare-fun b!477358 () Bool)

(declare-fun res!284979 () Bool)

(declare-fun e!280511 () Bool)

(assert (=> b!477358 (=> (not res!284979) (not e!280511))))

(declare-fun lt!217513 () List!9084)

(assert (=> b!477358 (= res!284979 (containsKey!348 lt!217513 (_1!4505 (tuple2!8991 a!501 b!85))))))

(declare-fun d!76139 () Bool)

(assert (=> d!76139 e!280511))

(declare-fun res!284980 () Bool)

(assert (=> d!76139 (=> (not res!284980) (not e!280511))))

(assert (=> d!76139 (= res!284980 (isStrictlySorted!384 lt!217513))))

(declare-fun e!280508 () List!9084)

(assert (=> d!76139 (= lt!217513 e!280508)))

(declare-fun c!57444 () Bool)

(assert (=> d!76139 (= c!57444 (and (is-Cons!9080 (toList!3974 lt!217304)) (bvslt (_1!4505 (h!9936 (toList!3974 lt!217304))) (_1!4505 (tuple2!8991 a!501 b!85)))))))

(assert (=> d!76139 (isStrictlySorted!384 (toList!3974 lt!217304))))

(assert (=> d!76139 (= (insertStrictlySorted!211 (toList!3974 lt!217304) (_1!4505 (tuple2!8991 a!501 b!85)) (_2!4505 (tuple2!8991 a!501 b!85))) lt!217513)))

(declare-fun b!477359 () Bool)

(assert (=> b!477359 (= e!280511 (contains!2573 lt!217513 (tuple2!8991 (_1!4505 (tuple2!8991 a!501 b!85)) (_2!4505 (tuple2!8991 a!501 b!85)))))))

(declare-fun b!477360 () Bool)

(declare-fun e!280512 () List!9084)

(declare-fun call!30776 () List!9084)

(assert (=> b!477360 (= e!280512 call!30776)))

(declare-fun bm!30774 () Bool)

(assert (=> bm!30774 (= call!30776 call!30777)))

(declare-fun b!477361 () Bool)

(declare-fun e!280509 () List!9084)

(assert (=> b!477361 (= e!280509 (insertStrictlySorted!211 (t!15156 (toList!3974 lt!217304)) (_1!4505 (tuple2!8991 a!501 b!85)) (_2!4505 (tuple2!8991 a!501 b!85))))))

(declare-fun c!57445 () Bool)

(declare-fun b!477362 () Bool)

(assert (=> b!477362 (= c!57445 (and (is-Cons!9080 (toList!3974 lt!217304)) (bvsgt (_1!4505 (h!9936 (toList!3974 lt!217304))) (_1!4505 (tuple2!8991 a!501 b!85)))))))

(assert (=> b!477362 (= e!280510 e!280512)))

(declare-fun b!477363 () Bool)

(declare-fun c!57446 () Bool)

(assert (=> b!477363 (= e!280509 (ite c!57446 (t!15156 (toList!3974 lt!217304)) (ite c!57445 (Cons!9080 (h!9936 (toList!3974 lt!217304)) (t!15156 (toList!3974 lt!217304))) Nil!9081)))))

(declare-fun b!477364 () Bool)

(assert (=> b!477364 (= e!280512 call!30776)))

(declare-fun b!477365 () Bool)

(assert (=> b!477365 (= e!280508 e!280510)))

(assert (=> b!477365 (= c!57446 (and (is-Cons!9080 (toList!3974 lt!217304)) (= (_1!4505 (h!9936 (toList!3974 lt!217304))) (_1!4505 (tuple2!8991 a!501 b!85)))))))

(declare-fun bm!30775 () Bool)

(assert (=> bm!30775 (= call!30778 ($colon$colon!111 e!280509 (ite c!57444 (h!9936 (toList!3974 lt!217304)) (tuple2!8991 (_1!4505 (tuple2!8991 a!501 b!85)) (_2!4505 (tuple2!8991 a!501 b!85))))))))

(declare-fun c!57443 () Bool)

(assert (=> bm!30775 (= c!57443 c!57444)))

(declare-fun b!477366 () Bool)

(assert (=> b!477366 (= e!280508 call!30778)))

(assert (= (and d!76139 c!57444) b!477366))

(assert (= (and d!76139 (not c!57444)) b!477365))

(assert (= (and b!477365 c!57446) b!477357))

(assert (= (and b!477365 (not c!57446)) b!477362))

(assert (= (and b!477362 c!57445) b!477360))

(assert (= (and b!477362 (not c!57445)) b!477364))

(assert (= (or b!477360 b!477364) bm!30774))

(assert (= (or b!477357 bm!30774) bm!30773))

(assert (= (or b!477366 bm!30773) bm!30775))

(assert (= (and bm!30775 c!57443) b!477361))

(assert (= (and bm!30775 (not c!57443)) b!477363))

(assert (= (and d!76139 res!284980) b!477358))

(assert (= (and b!477358 res!284979) b!477359))

(declare-fun m!459803 () Bool)

(assert (=> b!477359 m!459803))

(declare-fun m!459805 () Bool)

(assert (=> b!477361 m!459805))

(declare-fun m!459807 () Bool)

(assert (=> b!477358 m!459807))

(declare-fun m!459809 () Bool)

(assert (=> bm!30775 m!459809))

(declare-fun m!459811 () Bool)

(assert (=> d!76139 m!459811))

(assert (=> d!76139 m!459329))

(assert (=> d!75853 d!76139))

(declare-fun d!76141 () Bool)

(declare-fun lt!217514 () Bool)

(assert (=> d!76141 (= lt!217514 (set.member (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306)) (content!207 lt!217462)))))

(declare-fun e!280514 () Bool)

(assert (=> d!76141 (= lt!217514 e!280514)))

(declare-fun res!284982 () Bool)

(assert (=> d!76141 (=> (not res!284982) (not e!280514))))

(assert (=> d!76141 (= res!284982 (is-Cons!9080 lt!217462))))

(assert (=> d!76141 (= (contains!2573 lt!217462 (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))) lt!217514)))

(declare-fun b!477367 () Bool)

(declare-fun e!280513 () Bool)

(assert (=> b!477367 (= e!280514 e!280513)))

(declare-fun res!284981 () Bool)

(assert (=> b!477367 (=> res!284981 e!280513)))

(assert (=> b!477367 (= res!284981 (= (h!9936 lt!217462) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))))))

(declare-fun b!477368 () Bool)

(assert (=> b!477368 (= e!280513 (contains!2573 (t!15156 lt!217462) (tuple2!8991 (_1!4505 lt!217306) (_2!4505 lt!217306))))))

(assert (= (and d!76141 res!284982) b!477367))

(assert (= (and b!477367 (not res!284981)) b!477368))

(declare-fun m!459813 () Bool)

(assert (=> d!76141 m!459813))

(declare-fun m!459815 () Bool)

(assert (=> d!76141 m!459815))

(declare-fun m!459817 () Bool)

(assert (=> b!477368 m!459817))

(assert (=> b!477070 d!76141))

(assert (=> d!75855 d!75851))

(assert (=> d!75855 d!75853))

(declare-fun d!76143 () Bool)

(declare-fun res!284983 () Bool)

(declare-fun e!280515 () Bool)

(assert (=> d!76143 (=> res!284983 e!280515)))

(assert (=> d!76143 (= res!284983 (or (is-Nil!9081 lt!217462) (is-Nil!9081 (t!15156 lt!217462))))))

(assert (=> d!76143 (= (isStrictlySorted!384 lt!217462) e!280515)))

(declare-fun b!477369 () Bool)

(declare-fun e!280516 () Bool)

(assert (=> b!477369 (= e!280515 e!280516)))

(declare-fun res!284984 () Bool)

(assert (=> b!477369 (=> (not res!284984) (not e!280516))))

(assert (=> b!477369 (= res!284984 (bvslt (_1!4505 (h!9936 lt!217462)) (_1!4505 (h!9936 (t!15156 lt!217462)))))))

(declare-fun b!477370 () Bool)

(assert (=> b!477370 (= e!280516 (isStrictlySorted!384 (t!15156 lt!217462)))))

(assert (= (and d!76143 (not res!284983)) b!477369))

(assert (= (and b!477369 res!284984) b!477370))

(declare-fun m!459819 () Bool)

(assert (=> b!477370 m!459819))

(assert (=> d!75937 d!76143))

(assert (=> d!75937 d!75921))

(declare-fun b!477372 () Bool)

(declare-fun e!280517 () Option!391)

(declare-fun e!280518 () Option!391)

(assert (=> b!477372 (= e!280517 e!280518)))

(declare-fun c!57448 () Bool)

(assert (=> b!477372 (= c!57448 (and (is-Cons!9080 (t!15156 lt!217350)) (not (= (_1!4505 (h!9936 (t!15156 lt!217350))) (_1!4505 lt!217306)))))))

(declare-fun b!477371 () Bool)

(assert (=> b!477371 (= e!280517 (Some!390 (_2!4505 (h!9936 (t!15156 lt!217350)))))))

(declare-fun b!477374 () Bool)

(assert (=> b!477374 (= e!280518 None!389)))

(declare-fun b!477373 () Bool)

(assert (=> b!477373 (= e!280518 (getValueByKey!385 (t!15156 (t!15156 lt!217350)) (_1!4505 lt!217306)))))

(declare-fun d!76145 () Bool)

(declare-fun c!57447 () Bool)

(assert (=> d!76145 (= c!57447 (and (is-Cons!9080 (t!15156 lt!217350)) (= (_1!4505 (h!9936 (t!15156 lt!217350))) (_1!4505 lt!217306))))))

(assert (=> d!76145 (= (getValueByKey!385 (t!15156 lt!217350) (_1!4505 lt!217306)) e!280517)))

(assert (= (and d!76145 c!57447) b!477371))

(assert (= (and d!76145 (not c!57447)) b!477372))

(assert (= (and b!477372 c!57448) b!477373))

(assert (= (and b!477372 (not c!57448)) b!477374))

(declare-fun m!459821 () Bool)

(assert (=> b!477373 m!459821))

(assert (=> b!477064 d!76145))

(declare-fun d!76147 () Bool)

(declare-fun res!284985 () Bool)

(declare-fun e!280519 () Bool)

(assert (=> d!76147 (=> res!284985 e!280519)))

(assert (=> d!76147 (= res!284985 (or (is-Nil!9081 lt!217440) (is-Nil!9081 (t!15156 lt!217440))))))

(assert (=> d!76147 (= (isStrictlySorted!384 lt!217440) e!280519)))

(declare-fun b!477375 () Bool)

(declare-fun e!280520 () Bool)

(assert (=> b!477375 (= e!280519 e!280520)))

(declare-fun res!284986 () Bool)

(assert (=> b!477375 (=> (not res!284986) (not e!280520))))

(assert (=> b!477375 (= res!284986 (bvslt (_1!4505 (h!9936 lt!217440)) (_1!4505 (h!9936 (t!15156 lt!217440)))))))

(declare-fun b!477376 () Bool)

(assert (=> b!477376 (= e!280520 (isStrictlySorted!384 (t!15156 lt!217440)))))

(assert (= (and d!76147 (not res!284985)) b!477375))

(assert (= (and b!477375 res!284986) b!477376))

(declare-fun m!459823 () Bool)

(assert (=> b!477376 m!459823))

(assert (=> d!75877 d!76147))

(declare-fun d!76149 () Bool)

(declare-fun res!284987 () Bool)

(declare-fun e!280521 () Bool)

(assert (=> d!76149 (=> res!284987 e!280521)))

(assert (=> d!76149 (= res!284987 (or (is-Nil!9081 (toList!3974 lt!217304)) (is-Nil!9081 (t!15156 (toList!3974 lt!217304)))))))

(assert (=> d!76149 (= (isStrictlySorted!384 (toList!3974 lt!217304)) e!280521)))

(declare-fun b!477377 () Bool)

(declare-fun e!280522 () Bool)

