; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132542 () Bool)

(assert start!132542)

(declare-fun res!1063572 () Bool)

(declare-fun e!865208 () Bool)

(assert (=> start!132542 (=> (not res!1063572) (not e!865208))))

(declare-datatypes ((B!2232 0))(
  ( (B!2233 (val!19202 Int)) )
))
(declare-datatypes ((tuple2!24920 0))(
  ( (tuple2!24921 (_1!12470 (_ BitVec 64)) (_2!12470 B!2232)) )
))
(declare-datatypes ((List!36382 0))(
  ( (Nil!36379) (Cons!36378 (h!37825 tuple2!24920) (t!51110 List!36382)) )
))
(declare-datatypes ((ListLongMap!22541 0))(
  ( (ListLongMap!22542 (toList!11286 List!36382)) )
))
(declare-fun lm!249 () ListLongMap!22541)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun contains!10161 (ListLongMap!22541 (_ BitVec 64)) Bool)

(assert (=> start!132542 (= res!1063572 (contains!10161 lm!249 a0!49))))

(assert (=> start!132542 e!865208))

(declare-fun e!865209 () Bool)

(declare-fun inv!57329 (ListLongMap!22541) Bool)

(assert (=> start!132542 (and (inv!57329 lm!249) e!865209)))

(assert (=> start!132542 true))

(declare-fun b!1553861 () Bool)

(declare-fun res!1063571 () Bool)

(assert (=> b!1553861 (=> (not res!1063571) (not e!865208))))

(declare-fun a!523 () (_ BitVec 64))

(assert (=> b!1553861 (= res!1063571 (not (= a0!49 a!523)))))

(declare-fun b!1553862 () Bool)

(declare-fun containsKey!767 (List!36382 (_ BitVec 64)) Bool)

(assert (=> b!1553862 (= e!865208 (not (containsKey!767 (toList!11286 lm!249) a0!49)))))

(declare-fun b!1553863 () Bool)

(declare-fun tp!112153 () Bool)

(assert (=> b!1553863 (= e!865209 tp!112153)))

(assert (= (and start!132542 res!1063572) b!1553861))

(assert (= (and b!1553861 res!1063571) b!1553862))

(assert (= start!132542 b!1553863))

(declare-fun m!1432461 () Bool)

(assert (=> start!132542 m!1432461))

(declare-fun m!1432463 () Bool)

(assert (=> start!132542 m!1432463))

(declare-fun m!1432465 () Bool)

(assert (=> b!1553862 m!1432465))

(push 1)

(assert (not b!1553862))

(assert (not start!132542))

(assert (not b!1553863))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161573 () Bool)

(declare-fun res!1063587 () Bool)

(declare-fun e!865224 () Bool)

(assert (=> d!161573 (=> res!1063587 e!865224)))

(assert (=> d!161573 (= res!1063587 (and (is-Cons!36378 (toList!11286 lm!249)) (= (_1!12470 (h!37825 (toList!11286 lm!249))) a0!49)))))

(assert (=> d!161573 (= (containsKey!767 (toList!11286 lm!249) a0!49) e!865224)))

(declare-fun b!1553876 () Bool)

(declare-fun e!865225 () Bool)

(assert (=> b!1553876 (= e!865224 e!865225)))

(declare-fun res!1063588 () Bool)

(assert (=> b!1553876 (=> (not res!1063588) (not e!865225))))

(assert (=> b!1553876 (= res!1063588 (and (or (not (is-Cons!36378 (toList!11286 lm!249))) (bvsle (_1!12470 (h!37825 (toList!11286 lm!249))) a0!49)) (is-Cons!36378 (toList!11286 lm!249)) (bvslt (_1!12470 (h!37825 (toList!11286 lm!249))) a0!49)))))

(declare-fun b!1553877 () Bool)

(assert (=> b!1553877 (= e!865225 (containsKey!767 (t!51110 (toList!11286 lm!249)) a0!49))))

(assert (= (and d!161573 (not res!1063587)) b!1553876))

(assert (= (and b!1553876 res!1063588) b!1553877))

(declare-fun m!1432469 () Bool)

(assert (=> b!1553877 m!1432469))

(assert (=> b!1553862 d!161573))

(declare-fun d!161581 () Bool)

(declare-fun e!865241 () Bool)

(assert (=> d!161581 e!865241))

(declare-fun res!1063597 () Bool)

(assert (=> d!161581 (=> res!1063597 e!865241)))

(declare-fun lt!669825 () Bool)

(assert (=> d!161581 (= res!1063597 (not lt!669825))))

(declare-fun lt!669828 () Bool)

(assert (=> d!161581 (= lt!669825 lt!669828)))

(declare-datatypes ((Unit!51706 0))(
  ( (Unit!51707) )
))
(declare-fun lt!669827 () Unit!51706)

(declare-fun e!865240 () Unit!51706)

(assert (=> d!161581 (= lt!669827 e!865240)))

(declare-fun c!143274 () Bool)

(assert (=> d!161581 (= c!143274 lt!669828)))

(assert (=> d!161581 (= lt!669828 (containsKey!767 (toList!11286 lm!249) a0!49))))

(assert (=> d!161581 (= (contains!10161 lm!249 a0!49) lt!669825)))

(declare-fun b!1553900 () Bool)

(declare-fun lt!669826 () Unit!51706)

(assert (=> b!1553900 (= e!865240 lt!669826)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!509 (List!36382 (_ BitVec 64)) Unit!51706)

(assert (=> b!1553900 (= lt!669826 (lemmaContainsKeyImpliesGetValueByKeyDefined!509 (toList!11286 lm!249) a0!49))))

(declare-datatypes ((Option!824 0))(
  ( (Some!823 (v!22004 B!2232)) (None!822) )
))
(declare-fun isDefined!558 (Option!824) Bool)

(declare-fun getValueByKey!749 (List!36382 (_ BitVec 64)) Option!824)

(assert (=> b!1553900 (isDefined!558 (getValueByKey!749 (toList!11286 lm!249) a0!49))))

(declare-fun b!1553901 () Bool)

(declare-fun Unit!51710 () Unit!51706)

(assert (=> b!1553901 (= e!865240 Unit!51710)))

(declare-fun b!1553902 () Bool)

(assert (=> b!1553902 (= e!865241 (isDefined!558 (getValueByKey!749 (toList!11286 lm!249) a0!49)))))

(assert (= (and d!161581 c!143274) b!1553900))

(assert (= (and d!161581 (not c!143274)) b!1553901))

(assert (= (and d!161581 (not res!1063597)) b!1553902))

(assert (=> d!161581 m!1432465))

(declare-fun m!1432473 () Bool)

(assert (=> b!1553900 m!1432473))

(declare-fun m!1432475 () Bool)

(assert (=> b!1553900 m!1432475))

(assert (=> b!1553900 m!1432475))

(declare-fun m!1432479 () Bool)

(assert (=> b!1553900 m!1432479))

(assert (=> b!1553902 m!1432475))

(assert (=> b!1553902 m!1432475))

(assert (=> b!1553902 m!1432479))

(assert (=> start!132542 d!161581))

(declare-fun d!161585 () Bool)

(declare-fun isStrictlySorted!895 (List!36382) Bool)

(assert (=> d!161585 (= (inv!57329 lm!249) (isStrictlySorted!895 (toList!11286 lm!249)))))

(declare-fun bs!44658 () Bool)

(assert (= bs!44658 d!161585))

(declare-fun m!1432491 () Bool)

(assert (=> bs!44658 m!1432491))

