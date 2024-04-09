; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133032 () Bool)

(assert start!133032)

(declare-fun b!1557009 () Bool)

(declare-fun e!867314 () Bool)

(declare-fun e!867315 () Bool)

(assert (=> b!1557009 (= e!867314 e!867315)))

(declare-fun res!1065120 () Bool)

(assert (=> b!1557009 (=> res!1065120 e!867315)))

(declare-datatypes ((B!2368 0))(
  ( (B!2369 (val!19270 Int)) )
))
(declare-datatypes ((tuple2!25056 0))(
  ( (tuple2!25057 (_1!12538 (_ BitVec 64)) (_2!12538 B!2368)) )
))
(declare-datatypes ((List!36450 0))(
  ( (Nil!36447) (Cons!36446 (h!37893 tuple2!25056) (t!51184 List!36450)) )
))
(declare-datatypes ((ListLongMap!22569 0))(
  ( (ListLongMap!22570 (toList!11300 List!36450)) )
))
(declare-fun lm!250 () ListLongMap!22569)

(declare-fun isStrictlySorted!951 (List!36450) Bool)

(assert (=> b!1557009 (= res!1065120 (not (isStrictlySorted!951 (toList!11300 lm!250))))))

(declare-fun b!1557010 () Bool)

(declare-fun res!1065121 () Bool)

(assert (=> b!1557010 (=> res!1065121 e!867315)))

(declare-fun a0!50 () (_ BitVec 64))

(declare-fun containsKey!814 (List!36450 (_ BitVec 64)) Bool)

(assert (=> b!1557010 (= res!1065121 (not (containsKey!814 (toList!11300 lm!250) a0!50)))))

(declare-fun b!1557011 () Bool)

(declare-fun e!867313 () Bool)

(declare-fun tp!112480 () Bool)

(assert (=> b!1557011 (= e!867313 tp!112480)))

(declare-fun b!1557012 () Bool)

(declare-fun a!524 () (_ BitVec 64))

(assert (=> b!1557012 (= e!867315 (= a0!50 a!524))))

(declare-fun b!1557013 () Bool)

(declare-fun res!1065123 () Bool)

(assert (=> b!1557013 (=> (not res!1065123) (not e!867314))))

(assert (=> b!1557013 (= res!1065123 (not (= a!524 a0!50)))))

(declare-fun res!1065122 () Bool)

(assert (=> start!133032 (=> (not res!1065122) (not e!867314))))

(declare-fun contains!10199 (ListLongMap!22569 (_ BitVec 64)) Bool)

(assert (=> start!133032 (= res!1065122 (contains!10199 lm!250 a0!50))))

(assert (=> start!133032 e!867314))

(declare-fun inv!57458 (ListLongMap!22569) Bool)

(assert (=> start!133032 (and (inv!57458 lm!250) e!867313)))

(assert (=> start!133032 true))

(assert (= (and start!133032 res!1065122) b!1557013))

(assert (= (and b!1557013 res!1065123) b!1557009))

(assert (= (and b!1557009 (not res!1065120)) b!1557010))

(assert (= (and b!1557010 (not res!1065121)) b!1557012))

(assert (= start!133032 b!1557011))

(declare-fun m!1434293 () Bool)

(assert (=> b!1557009 m!1434293))

(declare-fun m!1434295 () Bool)

(assert (=> b!1557010 m!1434295))

(declare-fun m!1434297 () Bool)

(assert (=> start!133032 m!1434297))

(declare-fun m!1434299 () Bool)

(assert (=> start!133032 m!1434299))

(check-sat (not start!133032) (not b!1557010) (not b!1557009) (not b!1557011))
(check-sat)
(get-model)

(declare-fun d!162315 () Bool)

(declare-fun e!867339 () Bool)

(assert (=> d!162315 e!867339))

(declare-fun res!1065146 () Bool)

(assert (=> d!162315 (=> res!1065146 e!867339)))

(declare-fun lt!670426 () Bool)

(assert (=> d!162315 (= res!1065146 (not lt!670426))))

(declare-fun lt!670423 () Bool)

(assert (=> d!162315 (= lt!670426 lt!670423)))

(declare-datatypes ((Unit!51779 0))(
  ( (Unit!51780) )
))
(declare-fun lt!670425 () Unit!51779)

(declare-fun e!867340 () Unit!51779)

(assert (=> d!162315 (= lt!670425 e!867340)))

(declare-fun c!143869 () Bool)

(assert (=> d!162315 (= c!143869 lt!670423)))

(assert (=> d!162315 (= lt!670423 (containsKey!814 (toList!11300 lm!250) a0!50))))

(assert (=> d!162315 (= (contains!10199 lm!250 a0!50) lt!670426)))

(declare-fun b!1557047 () Bool)

(declare-fun lt!670424 () Unit!51779)

(assert (=> b!1557047 (= e!867340 lt!670424)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!518 (List!36450 (_ BitVec 64)) Unit!51779)

(assert (=> b!1557047 (= lt!670424 (lemmaContainsKeyImpliesGetValueByKeyDefined!518 (toList!11300 lm!250) a0!50))))

(declare-datatypes ((Option!858 0))(
  ( (Some!857 (v!22044 B!2368)) (None!856) )
))
(declare-fun isDefined!567 (Option!858) Bool)

(declare-fun getValueByKey!783 (List!36450 (_ BitVec 64)) Option!858)

(assert (=> b!1557047 (isDefined!567 (getValueByKey!783 (toList!11300 lm!250) a0!50))))

(declare-fun b!1557048 () Bool)

(declare-fun Unit!51783 () Unit!51779)

(assert (=> b!1557048 (= e!867340 Unit!51783)))

(declare-fun b!1557049 () Bool)

(assert (=> b!1557049 (= e!867339 (isDefined!567 (getValueByKey!783 (toList!11300 lm!250) a0!50)))))

(assert (= (and d!162315 c!143869) b!1557047))

(assert (= (and d!162315 (not c!143869)) b!1557048))

(assert (= (and d!162315 (not res!1065146)) b!1557049))

(assert (=> d!162315 m!1434295))

(declare-fun m!1434311 () Bool)

(assert (=> b!1557047 m!1434311))

(declare-fun m!1434313 () Bool)

(assert (=> b!1557047 m!1434313))

(assert (=> b!1557047 m!1434313))

(declare-fun m!1434315 () Bool)

(assert (=> b!1557047 m!1434315))

(assert (=> b!1557049 m!1434313))

(assert (=> b!1557049 m!1434313))

(assert (=> b!1557049 m!1434315))

(assert (=> start!133032 d!162315))

(declare-fun d!162323 () Bool)

(assert (=> d!162323 (= (inv!57458 lm!250) (isStrictlySorted!951 (toList!11300 lm!250)))))

(declare-fun bs!44748 () Bool)

(assert (= bs!44748 d!162323))

(assert (=> bs!44748 m!1434293))

(assert (=> start!133032 d!162323))

(declare-fun d!162325 () Bool)

(declare-fun res!1065159 () Bool)

(declare-fun e!867357 () Bool)

(assert (=> d!162325 (=> res!1065159 e!867357)))

(get-info :version)

(assert (=> d!162325 (= res!1065159 (and ((_ is Cons!36446) (toList!11300 lm!250)) (= (_1!12538 (h!37893 (toList!11300 lm!250))) a0!50)))))

(assert (=> d!162325 (= (containsKey!814 (toList!11300 lm!250) a0!50) e!867357)))

(declare-fun b!1557070 () Bool)

(declare-fun e!867358 () Bool)

(assert (=> b!1557070 (= e!867357 e!867358)))

(declare-fun res!1065160 () Bool)

(assert (=> b!1557070 (=> (not res!1065160) (not e!867358))))

(assert (=> b!1557070 (= res!1065160 (and (or (not ((_ is Cons!36446) (toList!11300 lm!250))) (bvsle (_1!12538 (h!37893 (toList!11300 lm!250))) a0!50)) ((_ is Cons!36446) (toList!11300 lm!250)) (bvslt (_1!12538 (h!37893 (toList!11300 lm!250))) a0!50)))))

(declare-fun b!1557071 () Bool)

(assert (=> b!1557071 (= e!867358 (containsKey!814 (t!51184 (toList!11300 lm!250)) a0!50))))

(assert (= (and d!162325 (not res!1065159)) b!1557070))

(assert (= (and b!1557070 res!1065160) b!1557071))

(declare-fun m!1434329 () Bool)

(assert (=> b!1557071 m!1434329))

(assert (=> b!1557010 d!162325))

(declare-fun d!162335 () Bool)

(declare-fun res!1065177 () Bool)

(declare-fun e!867375 () Bool)

(assert (=> d!162335 (=> res!1065177 e!867375)))

(assert (=> d!162335 (= res!1065177 (or ((_ is Nil!36447) (toList!11300 lm!250)) ((_ is Nil!36447) (t!51184 (toList!11300 lm!250)))))))

(assert (=> d!162335 (= (isStrictlySorted!951 (toList!11300 lm!250)) e!867375)))

(declare-fun b!1557088 () Bool)

(declare-fun e!867376 () Bool)

(assert (=> b!1557088 (= e!867375 e!867376)))

(declare-fun res!1065178 () Bool)

(assert (=> b!1557088 (=> (not res!1065178) (not e!867376))))

(assert (=> b!1557088 (= res!1065178 (bvslt (_1!12538 (h!37893 (toList!11300 lm!250))) (_1!12538 (h!37893 (t!51184 (toList!11300 lm!250))))))))

(declare-fun b!1557089 () Bool)

(assert (=> b!1557089 (= e!867376 (isStrictlySorted!951 (t!51184 (toList!11300 lm!250))))))

(assert (= (and d!162335 (not res!1065177)) b!1557088))

(assert (= (and b!1557088 res!1065178) b!1557089))

(declare-fun m!1434335 () Bool)

(assert (=> b!1557089 m!1434335))

(assert (=> b!1557009 d!162335))

(declare-fun b!1557099 () Bool)

(declare-fun e!867382 () Bool)

(declare-fun tp_is_empty!38373 () Bool)

(declare-fun tp!112489 () Bool)

(assert (=> b!1557099 (= e!867382 (and tp_is_empty!38373 tp!112489))))

(assert (=> b!1557011 (= tp!112480 e!867382)))

(assert (= (and b!1557011 ((_ is Cons!36446) (toList!11300 lm!250))) b!1557099))

(check-sat (not b!1557071) (not b!1557049) (not b!1557099) tp_is_empty!38373 (not b!1557047) (not d!162323) (not b!1557089) (not d!162315))
(check-sat)
