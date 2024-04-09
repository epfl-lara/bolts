; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132566 () Bool)

(assert start!132566)

(declare-fun b!1553964 () Bool)

(declare-fun e!865279 () Bool)

(declare-fun tp!112171 () Bool)

(assert (=> b!1553964 (= e!865279 tp!112171)))

(declare-fun b!1553966 () Bool)

(declare-fun res!1063633 () Bool)

(declare-fun e!865281 () Bool)

(assert (=> b!1553966 (=> (not res!1063633) (not e!865281))))

(declare-datatypes ((B!2238 0))(
  ( (B!2239 (val!19205 Int)) )
))
(declare-datatypes ((tuple2!24926 0))(
  ( (tuple2!24927 (_1!12473 (_ BitVec 64)) (_2!12473 B!2238)) )
))
(declare-datatypes ((List!36385 0))(
  ( (Nil!36382) (Cons!36381 (h!37828 tuple2!24926) (t!51113 List!36385)) )
))
(declare-datatypes ((ListLongMap!22547 0))(
  ( (ListLongMap!22548 (toList!11289 List!36385)) )
))
(declare-fun lm!249 () ListLongMap!22547)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun containsKey!770 (List!36385 (_ BitVec 64)) Bool)

(assert (=> b!1553966 (= res!1063633 (containsKey!770 (toList!11289 lm!249) a0!49))))

(declare-fun b!1553967 () Bool)

(declare-fun e!865280 () Bool)

(declare-fun a!523 () (_ BitVec 64))

(assert (=> b!1553967 (= e!865280 (= a!523 a0!49))))

(declare-fun b!1553968 () Bool)

(declare-fun res!1063634 () Bool)

(assert (=> b!1553968 (=> (not res!1063634) (not e!865281))))

(assert (=> b!1553968 (= res!1063634 (not (= a0!49 a!523)))))

(declare-fun b!1553965 () Bool)

(assert (=> b!1553965 (= e!865281 e!865280)))

(declare-fun res!1063635 () Bool)

(assert (=> b!1553965 (=> res!1063635 e!865280)))

(declare-fun isStrictlySorted!898 (List!36385) Bool)

(assert (=> b!1553965 (= res!1063635 (not (isStrictlySorted!898 (toList!11289 lm!249))))))

(declare-fun res!1063632 () Bool)

(assert (=> start!132566 (=> (not res!1063632) (not e!865281))))

(declare-fun contains!10164 (ListLongMap!22547 (_ BitVec 64)) Bool)

(assert (=> start!132566 (= res!1063632 (contains!10164 lm!249 a0!49))))

(assert (=> start!132566 e!865281))

(declare-fun inv!57337 (ListLongMap!22547) Bool)

(assert (=> start!132566 (and (inv!57337 lm!249) e!865279)))

(assert (=> start!132566 true))

(assert (= (and start!132566 res!1063632) b!1553968))

(assert (= (and b!1553968 res!1063634) b!1553966))

(assert (= (and b!1553966 res!1063633) b!1553965))

(assert (= (and b!1553965 (not res!1063635)) b!1553967))

(assert (= start!132566 b!1553964))

(declare-fun m!1432513 () Bool)

(assert (=> b!1553966 m!1432513))

(declare-fun m!1432515 () Bool)

(assert (=> b!1553965 m!1432515))

(declare-fun m!1432517 () Bool)

(assert (=> start!132566 m!1432517))

(declare-fun m!1432519 () Bool)

(assert (=> start!132566 m!1432519))

(push 1)

(assert (not start!132566))

(assert (not b!1553966))

(assert (not b!1553965))

(assert (not b!1553964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161593 () Bool)

(declare-fun e!865296 () Bool)

(assert (=> d!161593 e!865296))

(declare-fun res!1063648 () Bool)

(assert (=> d!161593 (=> res!1063648 e!865296)))

(declare-fun lt!669846 () Bool)

(assert (=> d!161593 (= res!1063648 (not lt!669846))))

(declare-fun lt!669847 () Bool)

(assert (=> d!161593 (= lt!669846 lt!669847)))

(declare-datatypes ((Unit!51711 0))(
  ( (Unit!51712) )
))
(declare-fun lt!669848 () Unit!51711)

(declare-fun e!865297 () Unit!51711)

(assert (=> d!161593 (= lt!669848 e!865297)))

(declare-fun c!143279 () Bool)

(assert (=> d!161593 (= c!143279 lt!669847)))

(assert (=> d!161593 (= lt!669847 (containsKey!770 (toList!11289 lm!249) a0!49))))

(assert (=> d!161593 (= (contains!10164 lm!249 a0!49) lt!669846)))

(declare-fun b!1553985 () Bool)

(declare-fun lt!669845 () Unit!51711)

(assert (=> b!1553985 (= e!865297 lt!669845)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!510 (List!36385 (_ BitVec 64)) Unit!51711)

(assert (=> b!1553985 (= lt!669845 (lemmaContainsKeyImpliesGetValueByKeyDefined!510 (toList!11289 lm!249) a0!49))))

(declare-datatypes ((Option!825 0))(
  ( (Some!824 (v!22005 B!2238)) (None!823) )
))
(declare-fun isDefined!559 (Option!825) Bool)

(declare-fun getValueByKey!750 (List!36385 (_ BitVec 64)) Option!825)

(assert (=> b!1553985 (isDefined!559 (getValueByKey!750 (toList!11289 lm!249) a0!49))))

(declare-fun b!1553986 () Bool)

(declare-fun Unit!51715 () Unit!51711)

(assert (=> b!1553986 (= e!865297 Unit!51715)))

(declare-fun b!1553987 () Bool)

(assert (=> b!1553987 (= e!865296 (isDefined!559 (getValueByKey!750 (toList!11289 lm!249) a0!49)))))

(assert (= (and d!161593 c!143279) b!1553985))

(assert (= (and d!161593 (not c!143279)) b!1553986))

(assert (= (and d!161593 (not res!1063648)) b!1553987))

(assert (=> d!161593 m!1432513))

(declare-fun m!1432523 () Bool)

(assert (=> b!1553985 m!1432523))

(declare-fun m!1432525 () Bool)

(assert (=> b!1553985 m!1432525))

(assert (=> b!1553985 m!1432525))

(declare-fun m!1432527 () Bool)

(assert (=> b!1553985 m!1432527))

(assert (=> b!1553987 m!1432525))

(assert (=> b!1553987 m!1432525))

(assert (=> b!1553987 m!1432527))

(assert (=> start!132566 d!161593))

(declare-fun d!161601 () Bool)

(assert (=> d!161601 (= (inv!57337 lm!249) (isStrictlySorted!898 (toList!11289 lm!249)))))

(declare-fun bs!44664 () Bool)

(assert (= bs!44664 d!161601))

(assert (=> bs!44664 m!1432515))

(assert (=> start!132566 d!161601))

(declare-fun d!161605 () Bool)

(declare-fun res!1063658 () Bool)

(declare-fun e!865310 () Bool)

(assert (=> d!161605 (=> res!1063658 e!865310)))

(assert (=> d!161605 (= res!1063658 (and (is-Cons!36381 (toList!11289 lm!249)) (= (_1!12473 (h!37828 (toList!11289 lm!249))) a0!49)))))

(assert (=> d!161605 (= (containsKey!770 (toList!11289 lm!249) a0!49) e!865310)))

(declare-fun b!1554003 () Bool)

(declare-fun e!865311 () Bool)

(assert (=> b!1554003 (= e!865310 e!865311)))

(declare-fun res!1063659 () Bool)

(assert (=> b!1554003 (=> (not res!1063659) (not e!865311))))

(assert (=> b!1554003 (= res!1063659 (and (or (not (is-Cons!36381 (toList!11289 lm!249))) (bvsle (_1!12473 (h!37828 (toList!11289 lm!249))) a0!49)) (is-Cons!36381 (toList!11289 lm!249)) (bvslt (_1!12473 (h!37828 (toList!11289 lm!249))) a0!49)))))

(declare-fun b!1554004 () Bool)

(assert (=> b!1554004 (= e!865311 (containsKey!770 (t!51113 (toList!11289 lm!249)) a0!49))))

(assert (= (and d!161605 (not res!1063658)) b!1554003))

(assert (= (and b!1554003 res!1063659) b!1554004))

(declare-fun m!1432537 () Bool)

(assert (=> b!1554004 m!1432537))

(assert (=> b!1553966 d!161605))

(declare-fun d!161611 () Bool)

(declare-fun res!1063672 () Bool)

(declare-fun e!865326 () Bool)

(assert (=> d!161611 (=> res!1063672 e!865326)))

(assert (=> d!161611 (= res!1063672 (or (is-Nil!36382 (toList!11289 lm!249)) (is-Nil!36382 (t!51113 (toList!11289 lm!249)))))))

(assert (=> d!161611 (= (isStrictlySorted!898 (toList!11289 lm!249)) e!865326)))

(declare-fun b!1554021 () Bool)

(declare-fun e!865327 () Bool)

(assert (=> b!1554021 (= e!865326 e!865327)))

(declare-fun res!1063673 () Bool)

(assert (=> b!1554021 (=> (not res!1063673) (not e!865327))))

(assert (=> b!1554021 (= res!1063673 (bvslt (_1!12473 (h!37828 (toList!11289 lm!249))) (_1!12473 (h!37828 (t!51113 (toList!11289 lm!249))))))))

(declare-fun b!1554022 () Bool)

(assert (=> b!1554022 (= e!865327 (isStrictlySorted!898 (t!51113 (toList!11289 lm!249))))))

(assert (= (and d!161611 (not res!1063672)) b!1554021))

(assert (= (and b!1554021 res!1063673) b!1554022))

(declare-fun m!1432541 () Bool)

(assert (=> b!1554022 m!1432541))

(assert (=> b!1553965 d!161611))

(declare-fun b!1554027 () Bool)

(declare-fun e!865331 () Bool)

(declare-fun tp_is_empty!38245 () Bool)

(declare-fun tp!112174 () Bool)

(assert (=> b!1554027 (= e!865331 (and tp_is_empty!38245 tp!112174))))

(assert (=> b!1553964 (= tp!112171 e!865331)))

(assert (= (and b!1553964 (is-Cons!36381 (toList!11289 lm!249))) b!1554027))

(push 1)

