; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7492 () Bool)

(assert start!7492)

(declare-fun res!27896 () Bool)

(declare-fun e!30831 () Bool)

(assert (=> start!7492 (=> (not res!27896) (not e!30831))))

(declare-datatypes ((B!920 0))(
  ( (B!921 (val!1080 Int)) )
))
(declare-datatypes ((tuple2!1746 0))(
  ( (tuple2!1747 (_1!883 (_ BitVec 64)) (_2!883 B!920)) )
))
(declare-datatypes ((List!1296 0))(
  ( (Nil!1293) (Cons!1292 (h!1872 tuple2!1746) (t!4332 List!1296)) )
))
(declare-datatypes ((ListLongMap!1243 0))(
  ( (ListLongMap!1244 (toList!637 List!1296)) )
))
(declare-fun lm!267 () ListLongMap!1243)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!599 (ListLongMap!1243 (_ BitVec 64)) Bool)

(assert (=> start!7492 (= res!27896 (not (contains!599 lm!267 key!657)))))

(assert (=> start!7492 e!30831))

(declare-fun e!30832 () Bool)

(declare-fun inv!2228 (ListLongMap!1243) Bool)

(assert (=> start!7492 (and (inv!2228 lm!267) e!30832)))

(assert (=> start!7492 true))

(declare-fun b!48049 () Bool)

(declare-fun res!27897 () Bool)

(assert (=> b!48049 (=> (not res!27897) (not e!30831))))

(declare-fun isStrictlySorted!246 (List!1296) Bool)

(assert (=> b!48049 (= res!27897 (isStrictlySorted!246 (toList!637 lm!267)))))

(declare-fun b!48050 () Bool)

(declare-fun containsKey!98 (List!1296 (_ BitVec 64)) Bool)

(assert (=> b!48050 (= e!30831 (containsKey!98 (toList!637 lm!267) key!657))))

(declare-fun b!48051 () Bool)

(declare-fun tp!6329 () Bool)

(assert (=> b!48051 (= e!30832 tp!6329)))

(assert (= (and start!7492 res!27896) b!48049))

(assert (= (and b!48049 res!27897) b!48050))

(assert (= start!7492 b!48051))

(declare-fun m!42051 () Bool)

(assert (=> start!7492 m!42051))

(declare-fun m!42053 () Bool)

(assert (=> start!7492 m!42053))

(declare-fun m!42055 () Bool)

(assert (=> b!48049 m!42055))

(declare-fun m!42057 () Bool)

(assert (=> b!48050 m!42057))

(push 1)

(assert (not start!7492))

(assert (not b!48049))

(assert (not b!48050))

(assert (not b!48051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9555 () Bool)

(declare-fun e!30865 () Bool)

(assert (=> d!9555 e!30865))

(declare-fun res!27926 () Bool)

(assert (=> d!9555 (=> res!27926 e!30865)))

(declare-fun lt!20542 () Bool)

(assert (=> d!9555 (= res!27926 (not lt!20542))))

(declare-fun lt!20544 () Bool)

(assert (=> d!9555 (= lt!20542 lt!20544)))

(declare-datatypes ((Unit!1346 0))(
  ( (Unit!1347) )
))
(declare-fun lt!20541 () Unit!1346)

(declare-fun e!30866 () Unit!1346)

(assert (=> d!9555 (= lt!20541 e!30866)))

(declare-fun c!6473 () Bool)

(assert (=> d!9555 (= c!6473 lt!20544)))

(assert (=> d!9555 (= lt!20544 (containsKey!98 (toList!637 lm!267) key!657))))

(assert (=> d!9555 (= (contains!599 lm!267 key!657) lt!20542)))

(declare-fun b!48094 () Bool)

(declare-fun lt!20540 () Unit!1346)

(assert (=> b!48094 (= e!30866 lt!20540)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!69 (List!1296 (_ BitVec 64)) Unit!1346)

(assert (=> b!48094 (= lt!20540 (lemmaContainsKeyImpliesGetValueByKeyDefined!69 (toList!637 lm!267) key!657))))

(declare-datatypes ((Option!119 0))(
  ( (Some!118 (v!2135 B!920)) (None!117) )
))
(declare-fun isDefined!70 (Option!119) Bool)

(declare-fun getValueByKey!113 (List!1296 (_ BitVec 64)) Option!119)

(assert (=> b!48094 (isDefined!70 (getValueByKey!113 (toList!637 lm!267) key!657))))

(declare-fun b!48095 () Bool)

(declare-fun Unit!1351 () Unit!1346)

(assert (=> b!48095 (= e!30866 Unit!1351)))

(declare-fun b!48096 () Bool)

(assert (=> b!48096 (= e!30865 (isDefined!70 (getValueByKey!113 (toList!637 lm!267) key!657)))))

(assert (= (and d!9555 c!6473) b!48094))

(assert (= (and d!9555 (not c!6473)) b!48095))

(assert (= (and d!9555 (not res!27926)) b!48096))

(assert (=> d!9555 m!42057))

(declare-fun m!42079 () Bool)

(assert (=> b!48094 m!42079))

(declare-fun m!42083 () Bool)

(assert (=> b!48094 m!42083))

(assert (=> b!48094 m!42083))

(declare-fun m!42087 () Bool)

(assert (=> b!48094 m!42087))

(assert (=> b!48096 m!42083))

(assert (=> b!48096 m!42083))

(assert (=> b!48096 m!42087))

(assert (=> start!7492 d!9555))

(declare-fun d!9561 () Bool)

(assert (=> d!9561 (= (inv!2228 lm!267) (isStrictlySorted!246 (toList!637 lm!267)))))

(declare-fun bs!2240 () Bool)

(assert (= bs!2240 d!9561))

(assert (=> bs!2240 m!42055))

(assert (=> start!7492 d!9561))

(declare-fun d!9565 () Bool)

(declare-fun res!27936 () Bool)

(declare-fun e!30879 () Bool)

(assert (=> d!9565 (=> res!27936 e!30879)))

(assert (=> d!9565 (= res!27936 (or (is-Nil!1293 (toList!637 lm!267)) (is-Nil!1293 (t!4332 (toList!637 lm!267)))))))

(assert (=> d!9565 (= (isStrictlySorted!246 (toList!637 lm!267)) e!30879)))

(declare-fun b!48112 () Bool)

(declare-fun e!30880 () Bool)

(assert (=> b!48112 (= e!30879 e!30880)))

(declare-fun res!27937 () Bool)

(assert (=> b!48112 (=> (not res!27937) (not e!30880))))

(assert (=> b!48112 (= res!27937 (bvslt (_1!883 (h!1872 (toList!637 lm!267))) (_1!883 (h!1872 (t!4332 (toList!637 lm!267))))))))

(declare-fun b!48113 () Bool)

(assert (=> b!48113 (= e!30880 (isStrictlySorted!246 (t!4332 (toList!637 lm!267))))))

(assert (= (and d!9565 (not res!27936)) b!48112))

(assert (= (and b!48112 res!27937) b!48113))

(declare-fun m!42091 () Bool)

(assert (=> b!48113 m!42091))

(assert (=> b!48049 d!9565))

(declare-fun d!9569 () Bool)

(declare-fun res!27951 () Bool)

(declare-fun e!30895 () Bool)

(assert (=> d!9569 (=> res!27951 e!30895)))

(assert (=> d!9569 (= res!27951 (and (is-Cons!1292 (toList!637 lm!267)) (= (_1!883 (h!1872 (toList!637 lm!267))) key!657)))))

(assert (=> d!9569 (= (containsKey!98 (toList!637 lm!267) key!657) e!30895)))

(declare-fun b!48129 () Bool)

(declare-fun e!30896 () Bool)

(assert (=> b!48129 (= e!30895 e!30896)))

(declare-fun res!27952 () Bool)

(assert (=> b!48129 (=> (not res!27952) (not e!30896))))

(assert (=> b!48129 (= res!27952 (and (or (not (is-Cons!1292 (toList!637 lm!267))) (bvsle (_1!883 (h!1872 (toList!637 lm!267))) key!657)) (is-Cons!1292 (toList!637 lm!267)) (bvslt (_1!883 (h!1872 (toList!637 lm!267))) key!657)))))

(declare-fun b!48130 () Bool)

(assert (=> b!48130 (= e!30896 (containsKey!98 (t!4332 (toList!637 lm!267)) key!657))))

(assert (= (and d!9569 (not res!27951)) b!48129))

(assert (= (and b!48129 res!27952) b!48130))

(declare-fun m!42101 () Bool)

(assert (=> b!48130 m!42101))

(assert (=> b!48050 d!9569))

(declare-fun b!48146 () Bool)

(declare-fun e!30906 () Bool)

(declare-fun tp_is_empty!2073 () Bool)

(declare-fun tp!6343 () Bool)

(assert (=> b!48146 (= e!30906 (and tp_is_empty!2073 tp!6343))))

(assert (=> b!48051 (= tp!6329 e!30906)))

(assert (= (and b!48051 (is-Cons!1292 (toList!637 lm!267))) b!48146))

(push 1)

