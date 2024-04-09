; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132562 () Bool)

(assert start!132562)

(declare-fun b!1553934 () Bool)

(declare-fun e!865262 () Bool)

(declare-fun a!523 () (_ BitVec 64))

(declare-fun a0!49 () (_ BitVec 64))

(assert (=> b!1553934 (= e!865262 (= a!523 a0!49))))

(declare-fun res!1063609 () Bool)

(declare-fun e!865263 () Bool)

(assert (=> start!132562 (=> (not res!1063609) (not e!865263))))

(declare-datatypes ((B!2234 0))(
  ( (B!2235 (val!19203 Int)) )
))
(declare-datatypes ((tuple2!24922 0))(
  ( (tuple2!24923 (_1!12471 (_ BitVec 64)) (_2!12471 B!2234)) )
))
(declare-datatypes ((List!36383 0))(
  ( (Nil!36380) (Cons!36379 (h!37826 tuple2!24922) (t!51111 List!36383)) )
))
(declare-datatypes ((ListLongMap!22543 0))(
  ( (ListLongMap!22544 (toList!11287 List!36383)) )
))
(declare-fun lm!249 () ListLongMap!22543)

(declare-fun contains!10162 (ListLongMap!22543 (_ BitVec 64)) Bool)

(assert (=> start!132562 (= res!1063609 (contains!10162 lm!249 a0!49))))

(assert (=> start!132562 e!865263))

(declare-fun e!865261 () Bool)

(declare-fun inv!57335 (ListLongMap!22543) Bool)

(assert (=> start!132562 (and (inv!57335 lm!249) e!865261)))

(assert (=> start!132562 true))

(declare-fun b!1553935 () Bool)

(declare-fun res!1063610 () Bool)

(assert (=> b!1553935 (=> (not res!1063610) (not e!865263))))

(declare-fun containsKey!768 (List!36383 (_ BitVec 64)) Bool)

(assert (=> b!1553935 (= res!1063610 (containsKey!768 (toList!11287 lm!249) a0!49))))

(declare-fun b!1553936 () Bool)

(assert (=> b!1553936 (= e!865263 e!865262)))

(declare-fun res!1063608 () Bool)

(assert (=> b!1553936 (=> res!1063608 e!865262)))

(declare-fun isStrictlySorted!896 (List!36383) Bool)

(assert (=> b!1553936 (= res!1063608 (not (isStrictlySorted!896 (toList!11287 lm!249))))))

(declare-fun b!1553937 () Bool)

(declare-fun tp!112165 () Bool)

(assert (=> b!1553937 (= e!865261 tp!112165)))

(declare-fun b!1553938 () Bool)

(declare-fun res!1063611 () Bool)

(assert (=> b!1553938 (=> (not res!1063611) (not e!865263))))

(assert (=> b!1553938 (= res!1063611 (not (= a0!49 a!523)))))

(assert (= (and start!132562 res!1063609) b!1553938))

(assert (= (and b!1553938 res!1063611) b!1553935))

(assert (= (and b!1553935 res!1063610) b!1553936))

(assert (= (and b!1553936 (not res!1063608)) b!1553934))

(assert (= start!132562 b!1553937))

(declare-fun m!1432497 () Bool)

(assert (=> start!132562 m!1432497))

(declare-fun m!1432499 () Bool)

(assert (=> start!132562 m!1432499))

(declare-fun m!1432501 () Bool)

(assert (=> b!1553935 m!1432501))

(declare-fun m!1432503 () Bool)

(assert (=> b!1553936 m!1432503))

(push 1)

(assert (not start!132562))

(assert (not b!1553936))

(assert (not b!1553935))

(assert (not b!1553937))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161597 () Bool)

(declare-fun e!865304 () Bool)

(assert (=> d!161597 e!865304))

(declare-fun res!1063653 () Bool)

(assert (=> d!161597 (=> res!1063653 e!865304)))

(declare-fun lt!669860 () Bool)

(assert (=> d!161597 (= res!1063653 (not lt!669860))))

(declare-fun lt!669857 () Bool)

(assert (=> d!161597 (= lt!669860 lt!669857)))

(declare-datatypes ((Unit!51713 0))(
  ( (Unit!51714) )
))
(declare-fun lt!669858 () Unit!51713)

(declare-fun e!865305 () Unit!51713)

(assert (=> d!161597 (= lt!669858 e!865305)))

(declare-fun c!143282 () Bool)

(assert (=> d!161597 (= c!143282 lt!669857)))

(assert (=> d!161597 (= lt!669857 (containsKey!768 (toList!11287 lm!249) a0!49))))

(assert (=> d!161597 (= (contains!10162 lm!249 a0!49) lt!669860)))

(declare-fun b!1553996 () Bool)

(declare-fun lt!669859 () Unit!51713)

(assert (=> b!1553996 (= e!865305 lt!669859)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!511 (List!36383 (_ BitVec 64)) Unit!51713)

(assert (=> b!1553996 (= lt!669859 (lemmaContainsKeyImpliesGetValueByKeyDefined!511 (toList!11287 lm!249) a0!49))))

(declare-datatypes ((Option!826 0))(
  ( (Some!825 (v!22006 B!2234)) (None!824) )
))
(declare-fun isDefined!560 (Option!826) Bool)

(declare-fun getValueByKey!751 (List!36383 (_ BitVec 64)) Option!826)

(assert (=> b!1553996 (isDefined!560 (getValueByKey!751 (toList!11287 lm!249) a0!49))))

(declare-fun b!1553997 () Bool)

(declare-fun Unit!51716 () Unit!51713)

(assert (=> b!1553997 (= e!865305 Unit!51716)))

(declare-fun b!1553998 () Bool)

(assert (=> b!1553998 (= e!865304 (isDefined!560 (getValueByKey!751 (toList!11287 lm!249) a0!49)))))

(assert (= (and d!161597 c!143282) b!1553996))

(assert (= (and d!161597 (not c!143282)) b!1553997))

(assert (= (and d!161597 (not res!1063653)) b!1553998))

(assert (=> d!161597 m!1432501))

(declare-fun m!1432531 () Bool)

(assert (=> b!1553996 m!1432531))

(declare-fun m!1432533 () Bool)

(assert (=> b!1553996 m!1432533))

(assert (=> b!1553996 m!1432533))

(declare-fun m!1432535 () Bool)

(assert (=> b!1553996 m!1432535))

(assert (=> b!1553998 m!1432533))

(assert (=> b!1553998 m!1432533))

(assert (=> b!1553998 m!1432535))

(assert (=> start!132562 d!161597))

(declare-fun d!161607 () Bool)

(assert (=> d!161607 (= (inv!57335 lm!249) (isStrictlySorted!896 (toList!11287 lm!249)))))

(declare-fun bs!44665 () Bool)

(assert (= bs!44665 d!161607))

(assert (=> bs!44665 m!1432503))

(assert (=> start!132562 d!161607))

(declare-fun d!161609 () Bool)

(declare-fun res!1063670 () Bool)

(declare-fun e!865324 () Bool)

(assert (=> d!161609 (=> res!1063670 e!865324)))

(assert (=> d!161609 (= res!1063670 (or (is-Nil!36380 (toList!11287 lm!249)) (is-Nil!36380 (t!51111 (toList!11287 lm!249)))))))

(assert (=> d!161609 (= (isStrictlySorted!896 (toList!11287 lm!249)) e!865324)))

(declare-fun b!1554019 () Bool)

(declare-fun e!865325 () Bool)

(assert (=> b!1554019 (= e!865324 e!865325)))

(declare-fun res!1063671 () Bool)

(assert (=> b!1554019 (=> (not res!1063671) (not e!865325))))

(assert (=> b!1554019 (= res!1063671 (bvslt (_1!12471 (h!37826 (toList!11287 lm!249))) (_1!12471 (h!37826 (t!51111 (toList!11287 lm!249))))))))

(declare-fun b!1554020 () Bool)

(assert (=> b!1554020 (= e!865325 (isStrictlySorted!896 (t!51111 (toList!11287 lm!249))))))

(assert (= (and d!161609 (not res!1063670)) b!1554019))

(assert (= (and b!1554019 res!1063671) b!1554020))

(declare-fun m!1432539 () Bool)

(assert (=> b!1554020 m!1432539))

(assert (=> b!1553936 d!161609))

(declare-fun d!161613 () Bool)

(declare-fun res!1063679 () Bool)

(declare-fun e!865339 () Bool)

(assert (=> d!161613 (=> res!1063679 e!865339)))

(assert (=> d!161613 (= res!1063679 (and (is-Cons!36379 (toList!11287 lm!249)) (= (_1!12471 (h!37826 (toList!11287 lm!249))) a0!49)))))

(assert (=> d!161613 (= (containsKey!768 (toList!11287 lm!249) a0!49) e!865339)))

(declare-fun b!1554039 () Bool)

(declare-fun e!865340 () Bool)

(assert (=> b!1554039 (= e!865339 e!865340)))

(declare-fun res!1063680 () Bool)

(assert (=> b!1554039 (=> (not res!1063680) (not e!865340))))

(assert (=> b!1554039 (= res!1063680 (and (or (not (is-Cons!36379 (toList!11287 lm!249))) (bvsle (_1!12471 (h!37826 (toList!11287 lm!249))) a0!49)) (is-Cons!36379 (toList!11287 lm!249)) (bvslt (_1!12471 (h!37826 (toList!11287 lm!249))) a0!49)))))

(declare-fun b!1554040 () Bool)

(assert (=> b!1554040 (= e!865340 (containsKey!768 (t!51111 (toList!11287 lm!249)) a0!49))))

(assert (= (and d!161613 (not res!1063679)) b!1554039))

(assert (= (and b!1554039 res!1063680) b!1554040))

(declare-fun m!1432549 () Bool)

(assert (=> b!1554040 m!1432549))

(assert (=> b!1553935 d!161613))

(declare-fun b!1554046 () Bool)

(declare-fun e!865344 () Bool)

(declare-fun tp_is_empty!38249 () Bool)

(declare-fun tp!112180 () Bool)

(assert (=> b!1554046 (= e!865344 (and tp_is_empty!38249 tp!112180))))

(assert (=> b!1553937 (= tp!112165 e!865344)))

(assert (= (and b!1553937 (is-Cons!36379 (toList!11287 lm!249))) b!1554046))

(push 1)

