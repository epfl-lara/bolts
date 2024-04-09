; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132430 () Bool)

(assert start!132430)

(declare-fun res!1063262 () Bool)

(declare-fun e!864837 () Bool)

(assert (=> start!132430 (=> (not res!1063262) (not e!864837))))

(declare-datatypes ((B!2198 0))(
  ( (B!2199 (val!19185 Int)) )
))
(declare-datatypes ((tuple2!24886 0))(
  ( (tuple2!24887 (_1!12453 (_ BitVec 64)) (_2!12453 B!2198)) )
))
(declare-datatypes ((List!36365 0))(
  ( (Nil!36362) (Cons!36361 (h!37808 tuple2!24886) (t!51093 List!36365)) )
))
(declare-datatypes ((ListLongMap!22507 0))(
  ( (ListLongMap!22508 (toList!11269 List!36365)) )
))
(declare-fun lm!249 () ListLongMap!22507)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun contains!10141 (ListLongMap!22507 (_ BitVec 64)) Bool)

(assert (=> start!132430 (= res!1063262 (contains!10141 lm!249 a0!49))))

(assert (=> start!132430 e!864837))

(declare-fun e!864836 () Bool)

(declare-fun inv!57287 (ListLongMap!22507) Bool)

(assert (=> start!132430 (and (inv!57287 lm!249) e!864836)))

(assert (=> start!132430 true))

(declare-fun b!1553309 () Bool)

(declare-fun res!1063263 () Bool)

(assert (=> b!1553309 (=> (not res!1063263) (not e!864837))))

(declare-fun a!523 () (_ BitVec 64))

(assert (=> b!1553309 (= res!1063263 (not (= a0!49 a!523)))))

(declare-fun b!1553310 () Bool)

(declare-fun isStrictlySorted!884 (List!36365) Bool)

(assert (=> b!1553310 (= e!864837 (not (isStrictlySorted!884 (toList!11269 lm!249))))))

(declare-fun b!1553311 () Bool)

(declare-fun tp!112084 () Bool)

(assert (=> b!1553311 (= e!864836 tp!112084)))

(assert (= (and start!132430 res!1063262) b!1553309))

(assert (= (and b!1553309 res!1063263) b!1553310))

(assert (= start!132430 b!1553311))

(declare-fun m!1432047 () Bool)

(assert (=> start!132430 m!1432047))

(declare-fun m!1432049 () Bool)

(assert (=> start!132430 m!1432049))

(declare-fun m!1432051 () Bool)

(assert (=> b!1553310 m!1432051))

(push 1)

(assert (not b!1553310))

(assert (not start!132430))

(assert (not b!1553311))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161471 () Bool)

(declare-fun res!1063280 () Bool)

(declare-fun e!864854 () Bool)

(assert (=> d!161471 (=> res!1063280 e!864854)))

(assert (=> d!161471 (= res!1063280 (or (is-Nil!36362 (toList!11269 lm!249)) (is-Nil!36362 (t!51093 (toList!11269 lm!249)))))))

(assert (=> d!161471 (= (isStrictlySorted!884 (toList!11269 lm!249)) e!864854)))

(declare-fun b!1553334 () Bool)

(declare-fun e!864855 () Bool)

(assert (=> b!1553334 (= e!864854 e!864855)))

(declare-fun res!1063281 () Bool)

(assert (=> b!1553334 (=> (not res!1063281) (not e!864855))))

(assert (=> b!1553334 (= res!1063281 (bvslt (_1!12453 (h!37808 (toList!11269 lm!249))) (_1!12453 (h!37808 (t!51093 (toList!11269 lm!249))))))))

(declare-fun b!1553335 () Bool)

(assert (=> b!1553335 (= e!864855 (isStrictlySorted!884 (t!51093 (toList!11269 lm!249))))))

(assert (= (and d!161471 (not res!1063280)) b!1553334))

(assert (= (and b!1553334 res!1063281) b!1553335))

(declare-fun m!1432065 () Bool)

(assert (=> b!1553335 m!1432065))

(assert (=> b!1553310 d!161471))

(declare-fun d!161473 () Bool)

(declare-fun e!864888 () Bool)

(assert (=> d!161473 e!864888))

(declare-fun res!1063302 () Bool)

(assert (=> d!161473 (=> res!1063302 e!864888)))

(declare-fun lt!669615 () Bool)

(assert (=> d!161473 (= res!1063302 (not lt!669615))))

(declare-fun lt!669617 () Bool)

(assert (=> d!161473 (= lt!669615 lt!669617)))

(declare-datatypes ((Unit!51675 0))(
  ( (Unit!51676) )
))
(declare-fun lt!669616 () Unit!51675)

(declare-fun e!864887 () Unit!51675)

(assert (=> d!161473 (= lt!669616 e!864887)))

(declare-fun c!143195 () Bool)

(assert (=> d!161473 (= c!143195 lt!669617)))

(declare-fun containsKey!755 (List!36365 (_ BitVec 64)) Bool)

(assert (=> d!161473 (= lt!669617 (containsKey!755 (toList!11269 lm!249) a0!49))))

(assert (=> d!161473 (= (contains!10141 lm!249 a0!49) lt!669615)))

(declare-fun b!1553377 () Bool)

(declare-fun lt!669614 () Unit!51675)

(assert (=> b!1553377 (= e!864887 lt!669614)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!500 (List!36365 (_ BitVec 64)) Unit!51675)

(assert (=> b!1553377 (= lt!669614 (lemmaContainsKeyImpliesGetValueByKeyDefined!500 (toList!11269 lm!249) a0!49))))

(declare-datatypes ((Option!812 0))(
  ( (Some!811 (v!21992 B!2198)) (None!810) )
))
(declare-fun isDefined!549 (Option!812) Bool)

(declare-fun getValueByKey!737 (List!36365 (_ BitVec 64)) Option!812)

(assert (=> b!1553377 (isDefined!549 (getValueByKey!737 (toList!11269 lm!249) a0!49))))

(declare-fun b!1553378 () Bool)

(declare-fun Unit!51677 () Unit!51675)

(assert (=> b!1553378 (= e!864887 Unit!51677)))

(declare-fun b!1553379 () Bool)

(assert (=> b!1553379 (= e!864888 (isDefined!549 (getValueByKey!737 (toList!11269 lm!249) a0!49)))))

(assert (= (and d!161473 c!143195) b!1553377))

(assert (= (and d!161473 (not c!143195)) b!1553378))

(assert (= (and d!161473 (not res!1063302)) b!1553379))

(declare-fun m!1432087 () Bool)

(assert (=> d!161473 m!1432087))

(declare-fun m!1432089 () Bool)

(assert (=> b!1553377 m!1432089))

(declare-fun m!1432091 () Bool)

(assert (=> b!1553377 m!1432091))

(assert (=> b!1553377 m!1432091))

(declare-fun m!1432093 () Bool)

(assert (=> b!1553377 m!1432093))

(assert (=> b!1553379 m!1432091))

(assert (=> b!1553379 m!1432091))

(assert (=> b!1553379 m!1432093))

(assert (=> start!132430 d!161473))

(declare-fun d!161483 () Bool)

(assert (=> d!161483 (= (inv!57287 lm!249) (isStrictlySorted!884 (toList!11269 lm!249)))))

(declare-fun bs!44636 () Bool)

(assert (= bs!44636 d!161483))

(assert (=> bs!44636 m!1432051))

(assert (=> start!132430 d!161483))

(declare-fun b!1553389 () Bool)

(declare-fun e!864894 () Bool)

(declare-fun tp_is_empty!38219 () Bool)

(declare-fun tp!112099 () Bool)

(assert (=> b!1553389 (= e!864894 (and tp_is_empty!38219 tp!112099))))

(assert (=> b!1553311 (= tp!112084 e!864894)))

(assert (= (and b!1553311 (is-Cons!36361 (toList!11269 lm!249))) b!1553389))

(push 1)

(assert (not b!1553389))

(assert (not d!161473))

(assert (not b!1553379))

