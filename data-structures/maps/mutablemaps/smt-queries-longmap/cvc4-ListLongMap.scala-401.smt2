; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7496 () Bool)

(assert start!7496)

(declare-fun res!27908 () Bool)

(declare-fun e!30844 () Bool)

(assert (=> start!7496 (=> (not res!27908) (not e!30844))))

(declare-datatypes ((B!924 0))(
  ( (B!925 (val!1082 Int)) )
))
(declare-datatypes ((tuple2!1750 0))(
  ( (tuple2!1751 (_1!885 (_ BitVec 64)) (_2!885 B!924)) )
))
(declare-datatypes ((List!1298 0))(
  ( (Nil!1295) (Cons!1294 (h!1874 tuple2!1750) (t!4334 List!1298)) )
))
(declare-datatypes ((ListLongMap!1247 0))(
  ( (ListLongMap!1248 (toList!639 List!1298)) )
))
(declare-fun lm!267 () ListLongMap!1247)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!601 (ListLongMap!1247 (_ BitVec 64)) Bool)

(assert (=> start!7496 (= res!27908 (not (contains!601 lm!267 key!657)))))

(assert (=> start!7496 e!30844))

(declare-fun e!30843 () Bool)

(declare-fun inv!2230 (ListLongMap!1247) Bool)

(assert (=> start!7496 (and (inv!2230 lm!267) e!30843)))

(assert (=> start!7496 true))

(declare-fun b!48067 () Bool)

(declare-fun res!27909 () Bool)

(assert (=> b!48067 (=> (not res!27909) (not e!30844))))

(declare-fun isStrictlySorted!248 (List!1298) Bool)

(assert (=> b!48067 (= res!27909 (isStrictlySorted!248 (toList!639 lm!267)))))

(declare-fun b!48068 () Bool)

(declare-fun containsKey!100 (List!1298 (_ BitVec 64)) Bool)

(assert (=> b!48068 (= e!30844 (containsKey!100 (toList!639 lm!267) key!657))))

(declare-fun b!48069 () Bool)

(declare-fun tp!6335 () Bool)

(assert (=> b!48069 (= e!30843 tp!6335)))

(assert (= (and start!7496 res!27908) b!48067))

(assert (= (and b!48067 res!27909) b!48068))

(assert (= start!7496 b!48069))

(declare-fun m!42067 () Bool)

(assert (=> start!7496 m!42067))

(declare-fun m!42069 () Bool)

(assert (=> start!7496 m!42069))

(declare-fun m!42071 () Bool)

(assert (=> b!48067 m!42071))

(declare-fun m!42073 () Bool)

(assert (=> b!48068 m!42073))

(push 1)

(assert (not b!48068))

(assert (not b!48067))

(assert (not start!7496))

(assert (not b!48069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9553 () Bool)

(declare-fun res!27914 () Bool)

(declare-fun e!30849 () Bool)

(assert (=> d!9553 (=> res!27914 e!30849)))

(assert (=> d!9553 (= res!27914 (and (is-Cons!1294 (toList!639 lm!267)) (= (_1!885 (h!1874 (toList!639 lm!267))) key!657)))))

(assert (=> d!9553 (= (containsKey!100 (toList!639 lm!267) key!657) e!30849)))

(declare-fun b!48074 () Bool)

(declare-fun e!30850 () Bool)

(assert (=> b!48074 (= e!30849 e!30850)))

(declare-fun res!27915 () Bool)

(assert (=> b!48074 (=> (not res!27915) (not e!30850))))

(assert (=> b!48074 (= res!27915 (and (or (not (is-Cons!1294 (toList!639 lm!267))) (bvsle (_1!885 (h!1874 (toList!639 lm!267))) key!657)) (is-Cons!1294 (toList!639 lm!267)) (bvslt (_1!885 (h!1874 (toList!639 lm!267))) key!657)))))

(declare-fun b!48075 () Bool)

(assert (=> b!48075 (= e!30850 (containsKey!100 (t!4334 (toList!639 lm!267)) key!657))))

(assert (= (and d!9553 (not res!27914)) b!48074))

(assert (= (and b!48074 res!27915) b!48075))

(declare-fun m!42075 () Bool)

(assert (=> b!48075 m!42075))

(assert (=> b!48068 d!9553))

(declare-fun d!9557 () Bool)

(declare-fun res!27924 () Bool)

(declare-fun e!30863 () Bool)

(assert (=> d!9557 (=> res!27924 e!30863)))

(assert (=> d!9557 (= res!27924 (or (is-Nil!1295 (toList!639 lm!267)) (is-Nil!1295 (t!4334 (toList!639 lm!267)))))))

(assert (=> d!9557 (= (isStrictlySorted!248 (toList!639 lm!267)) e!30863)))

(declare-fun b!48092 () Bool)

(declare-fun e!30864 () Bool)

(assert (=> b!48092 (= e!30863 e!30864)))

(declare-fun res!27925 () Bool)

(assert (=> b!48092 (=> (not res!27925) (not e!30864))))

(assert (=> b!48092 (= res!27925 (bvslt (_1!885 (h!1874 (toList!639 lm!267))) (_1!885 (h!1874 (t!4334 (toList!639 lm!267))))))))

(declare-fun b!48093 () Bool)

(assert (=> b!48093 (= e!30864 (isStrictlySorted!248 (t!4334 (toList!639 lm!267))))))

(assert (= (and d!9557 (not res!27924)) b!48092))

(assert (= (and b!48092 res!27925) b!48093))

(declare-fun m!42077 () Bool)

(assert (=> b!48093 m!42077))

(assert (=> b!48067 d!9557))

(declare-fun d!9559 () Bool)

(declare-fun e!30886 () Bool)

(assert (=> d!9559 e!30886))

(declare-fun res!27942 () Bool)

(assert (=> d!9559 (=> res!27942 e!30886)))

(declare-fun lt!20558 () Bool)

(assert (=> d!9559 (= res!27942 (not lt!20558))))

(declare-fun lt!20559 () Bool)

(assert (=> d!9559 (= lt!20558 lt!20559)))

(declare-datatypes ((Unit!1352 0))(
  ( (Unit!1353) )
))
(declare-fun lt!20556 () Unit!1352)

(declare-fun e!30885 () Unit!1352)

(assert (=> d!9559 (= lt!20556 e!30885)))

(declare-fun c!6477 () Bool)

(assert (=> d!9559 (= c!6477 lt!20559)))

(assert (=> d!9559 (= lt!20559 (containsKey!100 (toList!639 lm!267) key!657))))

(assert (=> d!9559 (= (contains!601 lm!267 key!657) lt!20558)))

(declare-fun b!48118 () Bool)

(declare-fun lt!20557 () Unit!1352)

(assert (=> b!48118 (= e!30885 lt!20557)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!70 (List!1298 (_ BitVec 64)) Unit!1352)

(assert (=> b!48118 (= lt!20557 (lemmaContainsKeyImpliesGetValueByKeyDefined!70 (toList!639 lm!267) key!657))))

(declare-datatypes ((Option!120 0))(
  ( (Some!119 (v!2136 B!924)) (None!118) )
))
(declare-fun isDefined!71 (Option!120) Bool)

(declare-fun getValueByKey!114 (List!1298 (_ BitVec 64)) Option!120)

(assert (=> b!48118 (isDefined!71 (getValueByKey!114 (toList!639 lm!267) key!657))))

(declare-fun b!48119 () Bool)

(declare-fun Unit!1354 () Unit!1352)

(assert (=> b!48119 (= e!30885 Unit!1354)))

(declare-fun b!48120 () Bool)

(assert (=> b!48120 (= e!30886 (isDefined!71 (getValueByKey!114 (toList!639 lm!267) key!657)))))

(assert (= (and d!9559 c!6477) b!48118))

(assert (= (and d!9559 (not c!6477)) b!48119))

(assert (= (and d!9559 (not res!27942)) b!48120))

(assert (=> d!9559 m!42073))

(declare-fun m!42095 () Bool)

(assert (=> b!48118 m!42095))

(declare-fun m!42097 () Bool)

(assert (=> b!48118 m!42097))

(assert (=> b!48118 m!42097))

(declare-fun m!42099 () Bool)

(assert (=> b!48118 m!42099))

(assert (=> b!48120 m!42097))

(assert (=> b!48120 m!42097))

(assert (=> b!48120 m!42099))

(assert (=> start!7496 d!9559))

(declare-fun d!9573 () Bool)

(assert (=> d!9573 (= (inv!2230 lm!267) (isStrictlySorted!248 (toList!639 lm!267)))))

(declare-fun bs!2242 () Bool)

(assert (= bs!2242 d!9573))

(assert (=> bs!2242 m!42071))

(assert (=> start!7496 d!9573))

(declare-fun b!48145 () Bool)

(declare-fun e!30905 () Bool)

(declare-fun tp_is_empty!2071 () Bool)

(declare-fun tp!6342 () Bool)

(assert (=> b!48145 (= e!30905 (and tp_is_empty!2071 tp!6342))))

(assert (=> b!48069 (= tp!6335 e!30905)))

(assert (= (and b!48069 (is-Cons!1294 (toList!639 lm!267))) b!48145))

(push 1)

