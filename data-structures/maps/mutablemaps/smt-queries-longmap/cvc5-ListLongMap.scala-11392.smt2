; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132538 () Bool)

(assert start!132538)

(declare-fun res!1063560 () Bool)

(declare-fun e!865196 () Bool)

(assert (=> start!132538 (=> (not res!1063560) (not e!865196))))

(declare-datatypes ((B!2228 0))(
  ( (B!2229 (val!19200 Int)) )
))
(declare-datatypes ((tuple2!24916 0))(
  ( (tuple2!24917 (_1!12468 (_ BitVec 64)) (_2!12468 B!2228)) )
))
(declare-datatypes ((List!36380 0))(
  ( (Nil!36377) (Cons!36376 (h!37823 tuple2!24916) (t!51108 List!36380)) )
))
(declare-datatypes ((ListLongMap!22537 0))(
  ( (ListLongMap!22538 (toList!11284 List!36380)) )
))
(declare-fun lm!249 () ListLongMap!22537)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun contains!10159 (ListLongMap!22537 (_ BitVec 64)) Bool)

(assert (=> start!132538 (= res!1063560 (contains!10159 lm!249 a0!49))))

(assert (=> start!132538 e!865196))

(declare-fun e!865197 () Bool)

(declare-fun inv!57327 (ListLongMap!22537) Bool)

(assert (=> start!132538 (and (inv!57327 lm!249) e!865197)))

(assert (=> start!132538 true))

(declare-fun b!1553843 () Bool)

(declare-fun res!1063559 () Bool)

(assert (=> b!1553843 (=> (not res!1063559) (not e!865196))))

(declare-fun a!523 () (_ BitVec 64))

(assert (=> b!1553843 (= res!1063559 (not (= a0!49 a!523)))))

(declare-fun b!1553844 () Bool)

(declare-fun containsKey!765 (List!36380 (_ BitVec 64)) Bool)

(assert (=> b!1553844 (= e!865196 (not (containsKey!765 (toList!11284 lm!249) a0!49)))))

(declare-fun b!1553845 () Bool)

(declare-fun tp!112147 () Bool)

(assert (=> b!1553845 (= e!865197 tp!112147)))

(assert (= (and start!132538 res!1063560) b!1553843))

(assert (= (and b!1553843 res!1063559) b!1553844))

(assert (= start!132538 b!1553845))

(declare-fun m!1432449 () Bool)

(assert (=> start!132538 m!1432449))

(declare-fun m!1432451 () Bool)

(assert (=> start!132538 m!1432451))

(declare-fun m!1432453 () Bool)

(assert (=> b!1553844 m!1432453))

(push 1)

(assert (not b!1553844))

(assert (not start!132538))

(assert (not b!1553845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161577 () Bool)

(declare-fun res!1063589 () Bool)

(declare-fun e!865226 () Bool)

(assert (=> d!161577 (=> res!1063589 e!865226)))

(assert (=> d!161577 (= res!1063589 (and (is-Cons!36376 (toList!11284 lm!249)) (= (_1!12468 (h!37823 (toList!11284 lm!249))) a0!49)))))

(assert (=> d!161577 (= (containsKey!765 (toList!11284 lm!249) a0!49) e!865226)))

(declare-fun b!1553880 () Bool)

(declare-fun e!865227 () Bool)

(assert (=> b!1553880 (= e!865226 e!865227)))

(declare-fun res!1063590 () Bool)

(assert (=> b!1553880 (=> (not res!1063590) (not e!865227))))

(assert (=> b!1553880 (= res!1063590 (and (or (not (is-Cons!36376 (toList!11284 lm!249))) (bvsle (_1!12468 (h!37823 (toList!11284 lm!249))) a0!49)) (is-Cons!36376 (toList!11284 lm!249)) (bvslt (_1!12468 (h!37823 (toList!11284 lm!249))) a0!49)))))

(declare-fun b!1553881 () Bool)

(assert (=> b!1553881 (= e!865227 (containsKey!765 (t!51108 (toList!11284 lm!249)) a0!49))))

(assert (= (and d!161577 (not res!1063589)) b!1553880))

(assert (= (and b!1553880 res!1063590) b!1553881))

(declare-fun m!1432471 () Bool)

(assert (=> b!1553881 m!1432471))

(assert (=> b!1553844 d!161577))

(declare-fun d!161583 () Bool)

(declare-fun e!865244 () Bool)

(assert (=> d!161583 e!865244))

(declare-fun res!1063599 () Bool)

(assert (=> d!161583 (=> res!1063599 e!865244)))

(declare-fun lt!669833 () Bool)

(assert (=> d!161583 (= res!1063599 (not lt!669833))))

(declare-fun lt!669834 () Bool)

(assert (=> d!161583 (= lt!669833 lt!669834)))

(declare-datatypes ((Unit!51704 0))(
  ( (Unit!51705) )
))
(declare-fun lt!669836 () Unit!51704)

(declare-fun e!865245 () Unit!51704)

(assert (=> d!161583 (= lt!669836 e!865245)))

(declare-fun c!143276 () Bool)

(assert (=> d!161583 (= c!143276 lt!669834)))

(assert (=> d!161583 (= lt!669834 (containsKey!765 (toList!11284 lm!249) a0!49))))

(assert (=> d!161583 (= (contains!10159 lm!249 a0!49) lt!669833)))

(declare-fun b!1553906 () Bool)

(declare-fun lt!669835 () Unit!51704)

(assert (=> b!1553906 (= e!865245 lt!669835)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!508 (List!36380 (_ BitVec 64)) Unit!51704)

(assert (=> b!1553906 (= lt!669835 (lemmaContainsKeyImpliesGetValueByKeyDefined!508 (toList!11284 lm!249) a0!49))))

(declare-datatypes ((Option!823 0))(
  ( (Some!822 (v!22003 B!2228)) (None!821) )
))
(declare-fun isDefined!557 (Option!823) Bool)

(declare-fun getValueByKey!748 (List!36380 (_ BitVec 64)) Option!823)

(assert (=> b!1553906 (isDefined!557 (getValueByKey!748 (toList!11284 lm!249) a0!49))))

(declare-fun b!1553907 () Bool)

(declare-fun Unit!51709 () Unit!51704)

(assert (=> b!1553907 (= e!865245 Unit!51709)))

(declare-fun b!1553908 () Bool)

(assert (=> b!1553908 (= e!865244 (isDefined!557 (getValueByKey!748 (toList!11284 lm!249) a0!49)))))

(assert (= (and d!161583 c!143276) b!1553906))

(assert (= (and d!161583 (not c!143276)) b!1553907))

(assert (= (and d!161583 (not res!1063599)) b!1553908))

(assert (=> d!161583 m!1432453))

(declare-fun m!1432485 () Bool)

(assert (=> b!1553906 m!1432485))

(declare-fun m!1432487 () Bool)

(assert (=> b!1553906 m!1432487))

(assert (=> b!1553906 m!1432487))

(declare-fun m!1432489 () Bool)

(assert (=> b!1553906 m!1432489))

(assert (=> b!1553908 m!1432487))

(assert (=> b!1553908 m!1432487))

(assert (=> b!1553908 m!1432489))

(assert (=> start!132538 d!161583))

(declare-fun d!161589 () Bool)

(declare-fun isStrictlySorted!894 (List!36380) Bool)

(assert (=> d!161589 (= (inv!57327 lm!249) (isStrictlySorted!894 (toList!11284 lm!249)))))

(declare-fun bs!44660 () Bool)

(assert (= bs!44660 d!161589))

(declare-fun m!1432495 () Bool)

(assert (=> bs!44660 m!1432495))

(assert (=> start!132538 d!161589))

(declare-fun b!1553923 () Bool)

(declare-fun e!865254 () Bool)

(declare-fun tp_is_empty!38243 () Bool)

(declare-fun tp!112162 () Bool)

(assert (=> b!1553923 (= e!865254 (and tp_is_empty!38243 tp!112162))))

(assert (=> b!1553845 (= tp!112147 e!865254)))

(assert (= (and b!1553845 (is-Cons!36376 (toList!11284 lm!249))) b!1553923))

(push 1)

(assert (not b!1553908))

