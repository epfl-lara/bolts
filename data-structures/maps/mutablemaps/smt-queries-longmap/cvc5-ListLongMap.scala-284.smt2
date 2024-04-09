; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4642 () Bool)

(assert start!4642)

(declare-fun b_free!1291 () Bool)

(declare-fun b_next!1291 () Bool)

(assert (=> start!4642 (= b_free!1291 (not b_next!1291))))

(declare-fun tp!5323 () Bool)

(declare-fun b_and!2127 () Bool)

(assert (=> start!4642 (= tp!5323 b_and!2127)))

(declare-fun b!36327 () Bool)

(declare-fun res!21969 () Bool)

(declare-fun e!22938 () Bool)

(assert (=> b!36327 (=> (not res!21969) (not e!22938))))

(declare-datatypes ((B!698 0))(
  ( (B!699 (val!849 Int)) )
))
(declare-datatypes ((tuple2!1362 0))(
  ( (tuple2!1363 (_1!691 (_ BitVec 64)) (_2!691 B!698)) )
))
(declare-datatypes ((List!969 0))(
  ( (Nil!966) (Cons!965 (h!1533 tuple2!1362) (t!3684 List!969)) )
))
(declare-datatypes ((ListLongMap!943 0))(
  ( (ListLongMap!944 (toList!487 List!969)) )
))
(declare-fun lm!252 () ListLongMap!943)

(declare-fun k!388 () (_ BitVec 64))

(declare-fun contains!435 (ListLongMap!943 (_ BitVec 64)) Bool)

(assert (=> b!36327 (= res!21969 (contains!435 lm!252 k!388))))

(declare-fun res!21970 () Bool)

(assert (=> start!4642 (=> (not res!21970) (not e!22938))))

(declare-fun p!304 () Int)

(declare-fun forall!149 (List!969 Int) Bool)

(assert (=> start!4642 (= res!21970 (forall!149 (toList!487 lm!252) p!304))))

(assert (=> start!4642 e!22938))

(declare-fun e!22937 () Bool)

(declare-fun inv!1574 (ListLongMap!943) Bool)

(assert (=> start!4642 (and (inv!1574 lm!252) e!22937)))

(assert (=> start!4642 tp!5323))

(assert (=> start!4642 true))

(declare-fun b!36329 () Bool)

(assert (=> b!36329 (= e!22938 (= (toList!487 lm!252) Nil!966))))

(declare-fun b!36330 () Bool)

(declare-fun tp!5324 () Bool)

(assert (=> b!36330 (= e!22937 tp!5324)))

(declare-fun b!36328 () Bool)

(declare-fun res!21968 () Bool)

(assert (=> b!36328 (=> (not res!21968) (not e!22938))))

(declare-fun isEmpty!177 (ListLongMap!943) Bool)

(assert (=> b!36328 (= res!21968 (not (isEmpty!177 lm!252)))))

(assert (= (and start!4642 res!21970) b!36327))

(assert (= (and b!36327 res!21969) b!36328))

(assert (= (and b!36328 res!21968) b!36329))

(assert (= start!4642 b!36330))

(declare-fun m!29297 () Bool)

(assert (=> b!36327 m!29297))

(declare-fun m!29299 () Bool)

(assert (=> start!4642 m!29299))

(declare-fun m!29301 () Bool)

(assert (=> start!4642 m!29301))

(declare-fun m!29303 () Bool)

(assert (=> b!36328 m!29303))

(push 1)

(assert (not start!4642))

(assert (not b!36328))

(assert (not b!36330))

(assert b_and!2127)

(assert (not b_next!1291))

(assert (not b!36327))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2127)

(assert (not b_next!1291))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5463 () Bool)

(declare-fun isEmpty!180 (List!969) Bool)

(assert (=> d!5463 (= (isEmpty!177 lm!252) (isEmpty!180 (toList!487 lm!252)))))

(declare-fun bs!1378 () Bool)

(assert (= bs!1378 d!5463))

(declare-fun m!29321 () Bool)

(assert (=> bs!1378 m!29321))

(assert (=> b!36328 d!5463))

(declare-fun d!5465 () Bool)

(declare-fun e!22968 () Bool)

(assert (=> d!5465 e!22968))

(declare-fun res!22003 () Bool)

(assert (=> d!5465 (=> res!22003 e!22968)))

(declare-fun lt!13467 () Bool)

(assert (=> d!5465 (= res!22003 (not lt!13467))))

(declare-fun lt!13468 () Bool)

(assert (=> d!5465 (= lt!13467 lt!13468)))

(declare-datatypes ((Unit!798 0))(
  ( (Unit!799) )
))
(declare-fun lt!13466 () Unit!798)

(declare-fun e!22967 () Unit!798)

(assert (=> d!5465 (= lt!13466 e!22967)))

(declare-fun c!4174 () Bool)

(assert (=> d!5465 (= c!4174 lt!13468)))

(declare-fun containsKey!39 (List!969 (_ BitVec 64)) Bool)

(assert (=> d!5465 (= lt!13468 (containsKey!39 (toList!487 lm!252) k!388))))

(assert (=> d!5465 (= (contains!435 lm!252 k!388) lt!13467)))

(declare-fun b!36373 () Bool)

(declare-fun lt!13465 () Unit!798)

(assert (=> b!36373 (= e!22967 lt!13465)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!36 (List!969 (_ BitVec 64)) Unit!798)

(assert (=> b!36373 (= lt!13465 (lemmaContainsKeyImpliesGetValueByKeyDefined!36 (toList!487 lm!252) k!388))))

(declare-datatypes ((Option!81 0))(
  ( (Some!80 (v!1949 B!698)) (None!79) )
))
(declare-fun isDefined!37 (Option!81) Bool)

(declare-fun getValueByKey!75 (List!969 (_ BitVec 64)) Option!81)

(assert (=> b!36373 (isDefined!37 (getValueByKey!75 (toList!487 lm!252) k!388))))

(declare-fun b!36374 () Bool)

(declare-fun Unit!800 () Unit!798)

(assert (=> b!36374 (= e!22967 Unit!800)))

(declare-fun b!36375 () Bool)

(assert (=> b!36375 (= e!22968 (isDefined!37 (getValueByKey!75 (toList!487 lm!252) k!388)))))

(assert (= (and d!5465 c!4174) b!36373))

(assert (= (and d!5465 (not c!4174)) b!36374))

(assert (= (and d!5465 (not res!22003)) b!36375))

(declare-fun m!29339 () Bool)

(assert (=> d!5465 m!29339))

(declare-fun m!29341 () Bool)

(assert (=> b!36373 m!29341))

(declare-fun m!29343 () Bool)

(assert (=> b!36373 m!29343))

(assert (=> b!36373 m!29343))

(declare-fun m!29345 () Bool)

(assert (=> b!36373 m!29345))

(assert (=> b!36375 m!29343))

(assert (=> b!36375 m!29343))

(assert (=> b!36375 m!29345))

(assert (=> b!36327 d!5465))

(declare-fun d!5479 () Bool)

(declare-fun res!22008 () Bool)

(declare-fun e!22973 () Bool)

(assert (=> d!5479 (=> res!22008 e!22973)))

(assert (=> d!5479 (= res!22008 (is-Nil!966 (toList!487 lm!252)))))

(assert (=> d!5479 (= (forall!149 (toList!487 lm!252) p!304) e!22973)))

(declare-fun b!36380 () Bool)

(declare-fun e!22974 () Bool)

(assert (=> b!36380 (= e!22973 e!22974)))

(declare-fun res!22009 () Bool)

(assert (=> b!36380 (=> (not res!22009) (not e!22974))))

(declare-fun dynLambda!162 (Int tuple2!1362) Bool)

(assert (=> b!36380 (= res!22009 (dynLambda!162 p!304 (h!1533 (toList!487 lm!252))))))

(declare-fun b!36381 () Bool)

(assert (=> b!36381 (= e!22974 (forall!149 (t!3684 (toList!487 lm!252)) p!304))))

(assert (= (and d!5479 (not res!22008)) b!36380))

(assert (= (and b!36380 res!22009) b!36381))

(declare-fun b_lambda!1751 () Bool)

(assert (=> (not b_lambda!1751) (not b!36380)))

(declare-fun t!3692 () Bool)

(declare-fun tb!707 () Bool)

(assert (=> (and start!4642 (= p!304 p!304) t!3692) tb!707))

(declare-fun result!1219 () Bool)

(assert (=> tb!707 (= result!1219 true)))

(assert (=> b!36380 t!3692))

(declare-fun b_and!2137 () Bool)

(assert (= b_and!2127 (and (=> t!3692 result!1219) b_and!2137)))

(declare-fun m!29347 () Bool)

(assert (=> b!36380 m!29347))

(declare-fun m!29349 () Bool)

(assert (=> b!36381 m!29349))

(assert (=> start!4642 d!5479))

(declare-fun d!5481 () Bool)

(declare-fun isStrictlySorted!172 (List!969) Bool)

(assert (=> d!5481 (= (inv!1574 lm!252) (isStrictlySorted!172 (toList!487 lm!252)))))

(declare-fun bs!1383 () Bool)

(assert (= bs!1383 d!5481))

(declare-fun m!29351 () Bool)

(assert (=> bs!1383 m!29351))

(assert (=> start!4642 d!5481))

(declare-fun b!36404 () Bool)

(declare-fun e!22989 () Bool)

(declare-fun tp_is_empty!1645 () Bool)

(declare-fun tp!5339 () Bool)

(assert (=> b!36404 (= e!22989 (and tp_is_empty!1645 tp!5339))))

(assert (=> b!36330 (= tp!5324 e!22989)))

(assert (= (and b!36330 (is-Cons!965 (toList!487 lm!252))) b!36404))

(declare-fun b_lambda!1753 () Bool)

(assert (= b_lambda!1751 (or (and start!4642 b_free!1291) b_lambda!1753)))

(push 1)

(assert (not d!5481))

(assert (not d!5463))

(assert tp_is_empty!1645)

(assert (not b_lambda!1753))

(assert (not d!5465))

(assert (not b!36375))

(assert (not b!36404))

(assert (not b!36381))

(assert (not b!36373))

(assert b_and!2137)

(assert (not b_next!1291))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2137)

(assert (not b_next!1291))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5485 () Bool)

(declare-fun res!22016 () Bool)

(declare-fun e!22996 () Bool)

(assert (=> d!5485 (=> res!22016 e!22996)))

(assert (=> d!5485 (= res!22016 (is-Nil!966 (t!3684 (toList!487 lm!252))))))

(assert (=> d!5485 (= (forall!149 (t!3684 (toList!487 lm!252)) p!304) e!22996)))

(declare-fun b!36415 () Bool)

(declare-fun e!22997 () Bool)

(assert (=> b!36415 (= e!22996 e!22997)))

(declare-fun res!22017 () Bool)

(assert (=> b!36415 (=> (not res!22017) (not e!22997))))

(assert (=> b!36415 (= res!22017 (dynLambda!162 p!304 (h!1533 (t!3684 (toList!487 lm!252)))))))

(declare-fun b!36416 () Bool)

(assert (=> b!36416 (= e!22997 (forall!149 (t!3684 (t!3684 (toList!487 lm!252))) p!304))))

(assert (= (and d!5485 (not res!22016)) b!36415))

(assert (= (and b!36415 res!22017) b!36416))

(declare-fun b_lambda!1759 () Bool)

(assert (=> (not b_lambda!1759) (not b!36415)))

(declare-fun t!3694 () Bool)

(declare-fun tb!709 () Bool)

(assert (=> (and start!4642 (= p!304 p!304) t!3694) tb!709))

(declare-fun result!1227 () Bool)

(assert (=> tb!709 (= result!1227 true)))

(assert (=> b!36415 t!3694))

(declare-fun b_and!2139 () Bool)

(assert (= b_and!2137 (and (=> t!3694 result!1227) b_and!2139)))

(declare-fun m!29369 () Bool)

(assert (=> b!36415 m!29369))

(declare-fun m!29371 () Bool)

(assert (=> b!36416 m!29371))

(assert (=> b!36381 d!5485))

(declare-fun d!5489 () Bool)

(declare-fun isEmpty!183 (Option!81) Bool)

(assert (=> d!5489 (= (isDefined!37 (getValueByKey!75 (toList!487 lm!252) k!388)) (not (isEmpty!183 (getValueByKey!75 (toList!487 lm!252) k!388))))))

(declare-fun bs!1384 () Bool)

(assert (= bs!1384 d!5489))

(assert (=> bs!1384 m!29343))

(declare-fun m!29373 () Bool)

(assert (=> bs!1384 m!29373))

(assert (=> b!36375 d!5489))

(declare-fun d!5491 () Bool)

(declare-fun c!4185 () Bool)

(assert (=> d!5491 (= c!4185 (and (is-Cons!965 (toList!487 lm!252)) (= (_1!691 (h!1533 (toList!487 lm!252))) k!388)))))

(declare-fun e!23010 () Option!81)

(assert (=> d!5491 (= (getValueByKey!75 (toList!487 lm!252) k!388) e!23010)))

(declare-fun b!36436 () Bool)

(declare-fun e!23011 () Option!81)

(assert (=> b!36436 (= e!23011 None!79)))

(declare-fun b!36434 () Bool)

(assert (=> b!36434 (= e!23010 e!23011)))

(declare-fun c!4186 () Bool)

(assert (=> b!36434 (= c!4186 (and (is-Cons!965 (toList!487 lm!252)) (not (= (_1!691 (h!1533 (toList!487 lm!252))) k!388))))))

(declare-fun b!36433 () Bool)

(assert (=> b!36433 (= e!23010 (Some!80 (_2!691 (h!1533 (toList!487 lm!252)))))))

(declare-fun b!36435 () Bool)

(assert (=> b!36435 (= e!23011 (getValueByKey!75 (t!3684 (toList!487 lm!252)) k!388))))

(assert (= (and d!5491 c!4185) b!36433))

(assert (= (and d!5491 (not c!4185)) b!36434))

(assert (= (and b!36434 c!4186) b!36435))

(assert (= (and b!36434 (not c!4186)) b!36436))

(declare-fun m!29381 () Bool)

(assert (=> b!36435 m!29381))

(assert (=> b!36375 d!5491))

(declare-fun d!5497 () Bool)

(assert (=> d!5497 (isDefined!37 (getValueByKey!75 (toList!487 lm!252) k!388))))

(declare-fun lt!13498 () Unit!798)

(declare-fun choose!228 (List!969 (_ BitVec 64)) Unit!798)

(assert (=> d!5497 (= lt!13498 (choose!228 (toList!487 lm!252) k!388))))

(declare-fun e!23017 () Bool)

(assert (=> d!5497 e!23017))

(declare-fun res!22031 () Bool)

(assert (=> d!5497 (=> (not res!22031) (not e!23017))))

(assert (=> d!5497 (= res!22031 (isStrictlySorted!172 (toList!487 lm!252)))))

(assert (=> d!5497 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!36 (toList!487 lm!252) k!388) lt!13498)))

(declare-fun b!36442 () Bool)

(assert (=> b!36442 (= e!23017 (containsKey!39 (toList!487 lm!252) k!388))))

(assert (= (and d!5497 res!22031) b!36442))

(assert (=> d!5497 m!29343))

(assert (=> d!5497 m!29343))

(assert (=> d!5497 m!29345))

(declare-fun m!29385 () Bool)

(assert (=> d!5497 m!29385))

(assert (=> d!5497 m!29351))

(assert (=> b!36442 m!29339))

(assert (=> b!36373 d!5497))

(assert (=> b!36373 d!5489))

(assert (=> b!36373 d!5491))

(declare-fun d!5503 () Bool)

(declare-fun res!22042 () Bool)

(declare-fun e!23032 () Bool)

(assert (=> d!5503 (=> res!22042 e!23032)))

(assert (=> d!5503 (= res!22042 (and (is-Cons!965 (toList!487 lm!252)) (= (_1!691 (h!1533 (toList!487 lm!252))) k!388)))))

(assert (=> d!5503 (= (containsKey!39 (toList!487 lm!252) k!388) e!23032)))

(declare-fun b!36461 () Bool)

(declare-fun e!23033 () Bool)

(assert (=> b!36461 (= e!23032 e!23033)))

(declare-fun res!22043 () Bool)

(assert (=> b!36461 (=> (not res!22043) (not e!23033))))

(assert (=> b!36461 (= res!22043 (and (or (not (is-Cons!965 (toList!487 lm!252))) (bvsle (_1!691 (h!1533 (toList!487 lm!252))) k!388)) (is-Cons!965 (toList!487 lm!252)) (bvslt (_1!691 (h!1533 (toList!487 lm!252))) k!388)))))

(declare-fun b!36462 () Bool)

(assert (=> b!36462 (= e!23033 (containsKey!39 (t!3684 (toList!487 lm!252)) k!388))))

(assert (= (and d!5503 (not res!22042)) b!36461))

(assert (= (and b!36461 res!22043) b!36462))

(declare-fun m!29391 () Bool)

(assert (=> b!36462 m!29391))

(assert (=> d!5465 d!5503))

(declare-fun d!5511 () Bool)

(assert (=> d!5511 (= (isEmpty!180 (toList!487 lm!252)) (is-Nil!966 (toList!487 lm!252)))))

(assert (=> d!5463 d!5511))

(declare-fun d!5515 () Bool)

(declare-fun res!22058 () Bool)

(declare-fun e!23050 () Bool)

(assert (=> d!5515 (=> res!22058 e!23050)))

(assert (=> d!5515 (= res!22058 (or (is-Nil!966 (toList!487 lm!252)) (is-Nil!966 (t!3684 (toList!487 lm!252)))))))

(assert (=> d!5515 (= (isStrictlySorted!172 (toList!487 lm!252)) e!23050)))

(declare-fun b!36481 () Bool)

(declare-fun e!23051 () Bool)

(assert (=> b!36481 (= e!23050 e!23051)))

(declare-fun res!22059 () Bool)

(assert (=> b!36481 (=> (not res!22059) (not e!23051))))

(assert (=> b!36481 (= res!22059 (bvslt (_1!691 (h!1533 (toList!487 lm!252))) (_1!691 (h!1533 (t!3684 (toList!487 lm!252))))))))

(declare-fun b!36482 () Bool)

(assert (=> b!36482 (= e!23051 (isStrictlySorted!172 (t!3684 (toList!487 lm!252))))))

(assert (= (and d!5515 (not res!22058)) b!36481))

(assert (= (and b!36481 res!22059) b!36482))

(declare-fun m!29399 () Bool)

(assert (=> b!36482 m!29399))

(assert (=> d!5481 d!5515))

(declare-fun b!36485 () Bool)

(declare-fun e!23054 () Bool)

(declare-fun tp!5346 () Bool)

(assert (=> b!36485 (= e!23054 (and tp_is_empty!1645 tp!5346))))

(assert (=> b!36404 (= tp!5339 e!23054)))

(assert (= (and b!36404 (is-Cons!965 (t!3684 (toList!487 lm!252)))) b!36485))

(declare-fun b_lambda!1765 () Bool)

(assert (= b_lambda!1759 (or (and start!4642 b_free!1291) b_lambda!1765)))

(push 1)

