; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7494 () Bool)

(assert start!7494)

(declare-fun res!27902 () Bool)

(declare-fun e!30838 () Bool)

(assert (=> start!7494 (=> (not res!27902) (not e!30838))))

(declare-datatypes ((B!922 0))(
  ( (B!923 (val!1081 Int)) )
))
(declare-datatypes ((tuple2!1748 0))(
  ( (tuple2!1749 (_1!884 (_ BitVec 64)) (_2!884 B!922)) )
))
(declare-datatypes ((List!1297 0))(
  ( (Nil!1294) (Cons!1293 (h!1873 tuple2!1748) (t!4333 List!1297)) )
))
(declare-datatypes ((ListLongMap!1245 0))(
  ( (ListLongMap!1246 (toList!638 List!1297)) )
))
(declare-fun lm!267 () ListLongMap!1245)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!600 (ListLongMap!1245 (_ BitVec 64)) Bool)

(assert (=> start!7494 (= res!27902 (not (contains!600 lm!267 key!657)))))

(assert (=> start!7494 e!30838))

(declare-fun e!30837 () Bool)

(declare-fun inv!2229 (ListLongMap!1245) Bool)

(assert (=> start!7494 (and (inv!2229 lm!267) e!30837)))

(assert (=> start!7494 true))

(declare-fun b!48058 () Bool)

(declare-fun res!27903 () Bool)

(assert (=> b!48058 (=> (not res!27903) (not e!30838))))

(declare-fun isStrictlySorted!247 (List!1297) Bool)

(assert (=> b!48058 (= res!27903 (isStrictlySorted!247 (toList!638 lm!267)))))

(declare-fun b!48059 () Bool)

(declare-fun containsKey!99 (List!1297 (_ BitVec 64)) Bool)

(assert (=> b!48059 (= e!30838 (containsKey!99 (toList!638 lm!267) key!657))))

(declare-fun b!48060 () Bool)

(declare-fun tp!6332 () Bool)

(assert (=> b!48060 (= e!30837 tp!6332)))

(assert (= (and start!7494 res!27902) b!48058))

(assert (= (and b!48058 res!27903) b!48059))

(assert (= start!7494 b!48060))

(declare-fun m!42059 () Bool)

(assert (=> start!7494 m!42059))

(declare-fun m!42061 () Bool)

(assert (=> start!7494 m!42061))

(declare-fun m!42063 () Bool)

(assert (=> b!48058 m!42063))

(declare-fun m!42065 () Bool)

(assert (=> b!48059 m!42065))

(check-sat (not start!7494) (not b!48058) (not b!48059) (not b!48060))
(check-sat)
(get-model)

(declare-fun d!9552 () Bool)

(declare-fun e!30867 () Bool)

(assert (=> d!9552 e!30867))

(declare-fun res!27927 () Bool)

(assert (=> d!9552 (=> res!27927 e!30867)))

(declare-fun lt!20543 () Bool)

(assert (=> d!9552 (= res!27927 (not lt!20543))))

(declare-fun lt!20545 () Bool)

(assert (=> d!9552 (= lt!20543 lt!20545)))

(declare-datatypes ((Unit!1348 0))(
  ( (Unit!1349) )
))
(declare-fun lt!20547 () Unit!1348)

(declare-fun e!30868 () Unit!1348)

(assert (=> d!9552 (= lt!20547 e!30868)))

(declare-fun c!6474 () Bool)

(assert (=> d!9552 (= c!6474 lt!20545)))

(assert (=> d!9552 (= lt!20545 (containsKey!99 (toList!638 lm!267) key!657))))

(assert (=> d!9552 (= (contains!600 lm!267 key!657) lt!20543)))

(declare-fun b!48097 () Bool)

(declare-fun lt!20546 () Unit!1348)

(assert (=> b!48097 (= e!30868 lt!20546)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!68 (List!1297 (_ BitVec 64)) Unit!1348)

(assert (=> b!48097 (= lt!20546 (lemmaContainsKeyImpliesGetValueByKeyDefined!68 (toList!638 lm!267) key!657))))

(declare-datatypes ((Option!118 0))(
  ( (Some!117 (v!2134 B!922)) (None!116) )
))
(declare-fun isDefined!69 (Option!118) Bool)

(declare-fun getValueByKey!112 (List!1297 (_ BitVec 64)) Option!118)

(assert (=> b!48097 (isDefined!69 (getValueByKey!112 (toList!638 lm!267) key!657))))

(declare-fun b!48098 () Bool)

(declare-fun Unit!1350 () Unit!1348)

(assert (=> b!48098 (= e!30868 Unit!1350)))

(declare-fun b!48099 () Bool)

(assert (=> b!48099 (= e!30867 (isDefined!69 (getValueByKey!112 (toList!638 lm!267) key!657)))))

(assert (= (and d!9552 c!6474) b!48097))

(assert (= (and d!9552 (not c!6474)) b!48098))

(assert (= (and d!9552 (not res!27927)) b!48099))

(assert (=> d!9552 m!42065))

(declare-fun m!42081 () Bool)

(assert (=> b!48097 m!42081))

(declare-fun m!42085 () Bool)

(assert (=> b!48097 m!42085))

(assert (=> b!48097 m!42085))

(declare-fun m!42089 () Bool)

(assert (=> b!48097 m!42089))

(assert (=> b!48099 m!42085))

(assert (=> b!48099 m!42085))

(assert (=> b!48099 m!42089))

(assert (=> start!7494 d!9552))

(declare-fun d!9563 () Bool)

(assert (=> d!9563 (= (inv!2229 lm!267) (isStrictlySorted!247 (toList!638 lm!267)))))

(declare-fun bs!2241 () Bool)

(assert (= bs!2241 d!9563))

(assert (=> bs!2241 m!42063))

(assert (=> start!7494 d!9563))

(declare-fun d!9567 () Bool)

(declare-fun res!27938 () Bool)

(declare-fun e!30881 () Bool)

(assert (=> d!9567 (=> res!27938 e!30881)))

(get-info :version)

(assert (=> d!9567 (= res!27938 (or ((_ is Nil!1294) (toList!638 lm!267)) ((_ is Nil!1294) (t!4333 (toList!638 lm!267)))))))

(assert (=> d!9567 (= (isStrictlySorted!247 (toList!638 lm!267)) e!30881)))

(declare-fun b!48114 () Bool)

(declare-fun e!30882 () Bool)

(assert (=> b!48114 (= e!30881 e!30882)))

(declare-fun res!27939 () Bool)

(assert (=> b!48114 (=> (not res!27939) (not e!30882))))

(assert (=> b!48114 (= res!27939 (bvslt (_1!884 (h!1873 (toList!638 lm!267))) (_1!884 (h!1873 (t!4333 (toList!638 lm!267))))))))

(declare-fun b!48115 () Bool)

(assert (=> b!48115 (= e!30882 (isStrictlySorted!247 (t!4333 (toList!638 lm!267))))))

(assert (= (and d!9567 (not res!27938)) b!48114))

(assert (= (and b!48114 res!27939) b!48115))

(declare-fun m!42093 () Bool)

(assert (=> b!48115 m!42093))

(assert (=> b!48058 d!9567))

(declare-fun d!9571 () Bool)

(declare-fun res!27953 () Bool)

(declare-fun e!30897 () Bool)

(assert (=> d!9571 (=> res!27953 e!30897)))

(assert (=> d!9571 (= res!27953 (and ((_ is Cons!1293) (toList!638 lm!267)) (= (_1!884 (h!1873 (toList!638 lm!267))) key!657)))))

(assert (=> d!9571 (= (containsKey!99 (toList!638 lm!267) key!657) e!30897)))

(declare-fun b!48131 () Bool)

(declare-fun e!30898 () Bool)

(assert (=> b!48131 (= e!30897 e!30898)))

(declare-fun res!27954 () Bool)

(assert (=> b!48131 (=> (not res!27954) (not e!30898))))

(assert (=> b!48131 (= res!27954 (and (or (not ((_ is Cons!1293) (toList!638 lm!267))) (bvsle (_1!884 (h!1873 (toList!638 lm!267))) key!657)) ((_ is Cons!1293) (toList!638 lm!267)) (bvslt (_1!884 (h!1873 (toList!638 lm!267))) key!657)))))

(declare-fun b!48132 () Bool)

(assert (=> b!48132 (= e!30898 (containsKey!99 (t!4333 (toList!638 lm!267)) key!657))))

(assert (= (and d!9571 (not res!27953)) b!48131))

(assert (= (and b!48131 res!27954) b!48132))

(declare-fun m!42103 () Bool)

(assert (=> b!48132 m!42103))

(assert (=> b!48059 d!9571))

(declare-fun b!48147 () Bool)

(declare-fun e!30907 () Bool)

(declare-fun tp_is_empty!2075 () Bool)

(declare-fun tp!6344 () Bool)

(assert (=> b!48147 (= e!30907 (and tp_is_empty!2075 tp!6344))))

(assert (=> b!48060 (= tp!6332 e!30907)))

(assert (= (and b!48060 ((_ is Cons!1293) (toList!638 lm!267))) b!48147))

(check-sat tp_is_empty!2075 (not b!48132) (not d!9563) (not b!48115) (not b!48147) (not d!9552) (not b!48097) (not b!48099))
(check-sat)
