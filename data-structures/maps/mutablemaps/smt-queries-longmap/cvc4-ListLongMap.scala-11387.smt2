; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132434 () Bool)

(assert start!132434)

(declare-fun res!1063274 () Bool)

(declare-fun e!864848 () Bool)

(assert (=> start!132434 (=> (not res!1063274) (not e!864848))))

(declare-datatypes ((B!2202 0))(
  ( (B!2203 (val!19187 Int)) )
))
(declare-datatypes ((tuple2!24890 0))(
  ( (tuple2!24891 (_1!12455 (_ BitVec 64)) (_2!12455 B!2202)) )
))
(declare-datatypes ((List!36367 0))(
  ( (Nil!36364) (Cons!36363 (h!37810 tuple2!24890) (t!51095 List!36367)) )
))
(declare-datatypes ((ListLongMap!22511 0))(
  ( (ListLongMap!22512 (toList!11271 List!36367)) )
))
(declare-fun lm!249 () ListLongMap!22511)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun contains!10143 (ListLongMap!22511 (_ BitVec 64)) Bool)

(assert (=> start!132434 (= res!1063274 (contains!10143 lm!249 a0!49))))

(assert (=> start!132434 e!864848))

(declare-fun e!864849 () Bool)

(declare-fun inv!57289 (ListLongMap!22511) Bool)

(assert (=> start!132434 (and (inv!57289 lm!249) e!864849)))

(assert (=> start!132434 true))

(declare-fun b!1553327 () Bool)

(declare-fun res!1063275 () Bool)

(assert (=> b!1553327 (=> (not res!1063275) (not e!864848))))

(declare-fun a!523 () (_ BitVec 64))

(assert (=> b!1553327 (= res!1063275 (not (= a0!49 a!523)))))

(declare-fun b!1553328 () Bool)

(declare-fun isStrictlySorted!886 (List!36367) Bool)

(assert (=> b!1553328 (= e!864848 (not (isStrictlySorted!886 (toList!11271 lm!249))))))

(declare-fun b!1553329 () Bool)

(declare-fun tp!112090 () Bool)

(assert (=> b!1553329 (= e!864849 tp!112090)))

(assert (= (and start!132434 res!1063274) b!1553327))

(assert (= (and b!1553327 res!1063275) b!1553328))

(assert (= start!132434 b!1553329))

(declare-fun m!1432059 () Bool)

(assert (=> start!132434 m!1432059))

(declare-fun m!1432061 () Bool)

(assert (=> start!132434 m!1432061))

(declare-fun m!1432063 () Bool)

(assert (=> b!1553328 m!1432063))

(push 1)

(assert (not start!132434))

(assert (not b!1553328))

(assert (not b!1553329))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161467 () Bool)

(declare-fun e!864863 () Bool)

(assert (=> d!161467 e!864863))

(declare-fun res!1063284 () Bool)

(assert (=> d!161467 (=> res!1063284 e!864863)))

(declare-fun lt!669599 () Bool)

(assert (=> d!161467 (= res!1063284 (not lt!669599))))

(declare-fun lt!669601 () Bool)

(assert (=> d!161467 (= lt!669599 lt!669601)))

(declare-datatypes ((Unit!51669 0))(
  ( (Unit!51670) )
))
(declare-fun lt!669600 () Unit!51669)

(declare-fun e!864862 () Unit!51669)

(assert (=> d!161467 (= lt!669600 e!864862)))

(declare-fun c!143191 () Bool)

(assert (=> d!161467 (= c!143191 lt!669601)))

(declare-fun containsKey!753 (List!36367 (_ BitVec 64)) Bool)

(assert (=> d!161467 (= lt!669601 (containsKey!753 (toList!11271 lm!249) a0!49))))

(assert (=> d!161467 (= (contains!10143 lm!249 a0!49) lt!669599)))

(declare-fun b!1553346 () Bool)

(declare-fun lt!669598 () Unit!51669)

(assert (=> b!1553346 (= e!864862 lt!669598)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!498 (List!36367 (_ BitVec 64)) Unit!51669)

(assert (=> b!1553346 (= lt!669598 (lemmaContainsKeyImpliesGetValueByKeyDefined!498 (toList!11271 lm!249) a0!49))))

(declare-datatypes ((Option!810 0))(
  ( (Some!809 (v!21990 B!2202)) (None!808) )
))
(declare-fun isDefined!547 (Option!810) Bool)

(declare-fun getValueByKey!735 (List!36367 (_ BitVec 64)) Option!810)

(assert (=> b!1553346 (isDefined!547 (getValueByKey!735 (toList!11271 lm!249) a0!49))))

(declare-fun b!1553347 () Bool)

(declare-fun Unit!51673 () Unit!51669)

(assert (=> b!1553347 (= e!864862 Unit!51673)))

(declare-fun b!1553348 () Bool)

(assert (=> b!1553348 (= e!864863 (isDefined!547 (getValueByKey!735 (toList!11271 lm!249) a0!49)))))

(assert (= (and d!161467 c!143191) b!1553346))

(assert (= (and d!161467 (not c!143191)) b!1553347))

(assert (= (and d!161467 (not res!1063284)) b!1553348))

(declare-fun m!1432067 () Bool)

(assert (=> d!161467 m!1432067))

(declare-fun m!1432069 () Bool)

(assert (=> b!1553346 m!1432069))

(declare-fun m!1432071 () Bool)

(assert (=> b!1553346 m!1432071))

(assert (=> b!1553346 m!1432071))

(declare-fun m!1432073 () Bool)

(assert (=> b!1553346 m!1432073))

(assert (=> b!1553348 m!1432071))

(assert (=> b!1553348 m!1432071))

(assert (=> b!1553348 m!1432073))

(assert (=> start!132434 d!161467))

(declare-fun d!161475 () Bool)

(assert (=> d!161475 (= (inv!57289 lm!249) (isStrictlySorted!886 (toList!11271 lm!249)))))

(declare-fun bs!44634 () Bool)

(assert (= bs!44634 d!161475))

(assert (=> bs!44634 m!1432063))

(assert (=> start!132434 d!161475))

(declare-fun d!161477 () Bool)

(declare-fun res!1063292 () Bool)

(declare-fun e!864872 () Bool)

(assert (=> d!161477 (=> res!1063292 e!864872)))

(assert (=> d!161477 (= res!1063292 (or (is-Nil!36364 (toList!11271 lm!249)) (is-Nil!36364 (t!51095 (toList!11271 lm!249)))))))

(assert (=> d!161477 (= (isStrictlySorted!886 (toList!11271 lm!249)) e!864872)))

(declare-fun b!1553360 () Bool)

(declare-fun e!864873 () Bool)

(assert (=> b!1553360 (= e!864872 e!864873)))

(declare-fun res!1063293 () Bool)

(assert (=> b!1553360 (=> (not res!1063293) (not e!864873))))

(assert (=> b!1553360 (= res!1063293 (bvslt (_1!12455 (h!37810 (toList!11271 lm!249))) (_1!12455 (h!37810 (t!51095 (toList!11271 lm!249))))))))

(declare-fun b!1553361 () Bool)

(assert (=> b!1553361 (= e!864873 (isStrictlySorted!886 (t!51095 (toList!11271 lm!249))))))

(assert (= (and d!161477 (not res!1063292)) b!1553360))

(assert (= (and b!1553360 res!1063293) b!1553361))

(declare-fun m!1432083 () Bool)

(assert (=> b!1553361 m!1432083))

(assert (=> b!1553328 d!161477))

(declare-fun b!1553374 () Bool)

(declare-fun e!864884 () Bool)

(declare-fun tp_is_empty!38215 () Bool)

(declare-fun tp!112093 () Bool)

(assert (=> b!1553374 (= e!864884 (and tp_is_empty!38215 tp!112093))))

(assert (=> b!1553329 (= tp!112090 e!864884)))

(assert (= (and b!1553329 (is-Cons!36363 (toList!11271 lm!249))) b!1553374))

(push 1)

