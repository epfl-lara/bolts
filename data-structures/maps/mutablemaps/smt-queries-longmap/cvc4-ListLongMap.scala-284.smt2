; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4646 () Bool)

(assert start!4646)

(declare-fun b_free!1295 () Bool)

(declare-fun b_next!1295 () Bool)

(assert (=> start!4646 (= b_free!1295 (not b_next!1295))))

(declare-fun tp!5335 () Bool)

(declare-fun b_and!2131 () Bool)

(assert (=> start!4646 (= tp!5335 b_and!2131)))

(declare-fun b!36352 () Bool)

(declare-fun res!21986 () Bool)

(declare-fun e!22950 () Bool)

(assert (=> b!36352 (=> (not res!21986) (not e!22950))))

(declare-datatypes ((B!702 0))(
  ( (B!703 (val!851 Int)) )
))
(declare-datatypes ((tuple2!1366 0))(
  ( (tuple2!1367 (_1!693 (_ BitVec 64)) (_2!693 B!702)) )
))
(declare-datatypes ((List!971 0))(
  ( (Nil!968) (Cons!967 (h!1535 tuple2!1366) (t!3686 List!971)) )
))
(declare-datatypes ((ListLongMap!947 0))(
  ( (ListLongMap!948 (toList!489 List!971)) )
))
(declare-fun lm!252 () ListLongMap!947)

(declare-fun isEmpty!179 (ListLongMap!947) Bool)

(assert (=> b!36352 (= res!21986 (not (isEmpty!179 lm!252)))))

(declare-fun b!36351 () Bool)

(declare-fun res!21988 () Bool)

(assert (=> b!36351 (=> (not res!21988) (not e!22950))))

(declare-fun k!388 () (_ BitVec 64))

(declare-fun contains!437 (ListLongMap!947 (_ BitVec 64)) Bool)

(assert (=> b!36351 (= res!21988 (contains!437 lm!252 k!388))))

(declare-fun b!36354 () Bool)

(declare-fun e!22949 () Bool)

(declare-fun tp!5336 () Bool)

(assert (=> b!36354 (= e!22949 tp!5336)))

(declare-fun res!21987 () Bool)

(assert (=> start!4646 (=> (not res!21987) (not e!22950))))

(declare-fun p!304 () Int)

(declare-fun forall!151 (List!971 Int) Bool)

(assert (=> start!4646 (= res!21987 (forall!151 (toList!489 lm!252) p!304))))

(assert (=> start!4646 e!22950))

(declare-fun inv!1576 (ListLongMap!947) Bool)

(assert (=> start!4646 (and (inv!1576 lm!252) e!22949)))

(assert (=> start!4646 tp!5335))

(assert (=> start!4646 true))

(declare-fun b!36353 () Bool)

(assert (=> b!36353 (= e!22950 (= (toList!489 lm!252) Nil!968))))

(assert (= (and start!4646 res!21987) b!36351))

(assert (= (and b!36351 res!21988) b!36352))

(assert (= (and b!36352 res!21986) b!36353))

(assert (= start!4646 b!36354))

(declare-fun m!29313 () Bool)

(assert (=> b!36352 m!29313))

(declare-fun m!29315 () Bool)

(assert (=> b!36351 m!29315))

(declare-fun m!29317 () Bool)

(assert (=> start!4646 m!29317))

(declare-fun m!29319 () Bool)

(assert (=> start!4646 m!29319))

(push 1)

(assert (not start!4646))

(assert (not b!36352))

(assert (not b_next!1295))

(assert (not b!36351))

(assert (not b!36354))

(assert b_and!2131)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2131)

(assert (not b_next!1295))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5461 () Bool)

(declare-fun res!21997 () Bool)

(declare-fun e!22959 () Bool)

(assert (=> d!5461 (=> res!21997 e!22959)))

(assert (=> d!5461 (= res!21997 (is-Nil!968 (toList!489 lm!252)))))

(assert (=> d!5461 (= (forall!151 (toList!489 lm!252) p!304) e!22959)))

(declare-fun b!36364 () Bool)

(declare-fun e!22961 () Bool)

(assert (=> b!36364 (= e!22959 e!22961)))

(declare-fun res!21999 () Bool)

(assert (=> b!36364 (=> (not res!21999) (not e!22961))))

(declare-fun dynLambda!161 (Int tuple2!1366) Bool)

(assert (=> b!36364 (= res!21999 (dynLambda!161 p!304 (h!1535 (toList!489 lm!252))))))

(declare-fun b!36366 () Bool)

(assert (=> b!36366 (= e!22961 (forall!151 (t!3686 (toList!489 lm!252)) p!304))))

(assert (= (and d!5461 (not res!21997)) b!36364))

(assert (= (and b!36364 res!21999) b!36366))

(declare-fun b_lambda!1748 () Bool)

(assert (=> (not b_lambda!1748) (not b!36364)))

(declare-fun t!3690 () Bool)

(declare-fun tb!705 () Bool)

(assert (=> (and start!4646 (= p!304 p!304) t!3690) tb!705))

(declare-fun result!1216 () Bool)

(assert (=> tb!705 (= result!1216 true)))

(assert (=> b!36364 t!3690))

(declare-fun b_and!2134 () Bool)

(assert (= b_and!2131 (and (=> t!3690 result!1216) b_and!2134)))

(declare-fun m!29325 () Bool)

(assert (=> b!36364 m!29325))

(declare-fun m!29327 () Bool)

(assert (=> b!36366 m!29327))

(assert (=> start!4646 d!5461))

(declare-fun d!5469 () Bool)

(declare-fun isStrictlySorted!171 (List!971) Bool)

(assert (=> d!5469 (= (inv!1576 lm!252) (isStrictlySorted!171 (toList!489 lm!252)))))

(declare-fun bs!1379 () Bool)

(assert (= bs!1379 d!5469))

(declare-fun m!29331 () Bool)

(assert (=> bs!1379 m!29331))

(assert (=> start!4646 d!5469))

(declare-fun d!5473 () Bool)

(declare-fun isEmpty!182 (List!971) Bool)

(assert (=> d!5473 (= (isEmpty!179 lm!252) (isEmpty!182 (toList!489 lm!252)))))

(declare-fun bs!1381 () Bool)

(assert (= bs!1381 d!5473))

(declare-fun m!29335 () Bool)

(assert (=> bs!1381 m!29335))

(assert (=> b!36352 d!5473))

(declare-fun d!5475 () Bool)

(declare-fun e!22985 () Bool)

(assert (=> d!5475 e!22985))

(declare-fun res!22015 () Bool)

(assert (=> d!5475 (=> res!22015 e!22985)))

(declare-fun lt!13487 () Bool)

(assert (=> d!5475 (= res!22015 (not lt!13487))))

(declare-fun lt!13490 () Bool)

(assert (=> d!5475 (= lt!13487 lt!13490)))

(declare-datatypes ((Unit!803 0))(
  ( (Unit!804) )
))
(declare-fun lt!13488 () Unit!803)

(declare-fun e!22987 () Unit!803)

(assert (=> d!5475 (= lt!13488 e!22987)))

(declare-fun c!4180 () Bool)

(assert (=> d!5475 (= c!4180 lt!13490)))

(declare-fun containsKey!41 (List!971 (_ BitVec 64)) Bool)

(assert (=> d!5475 (= lt!13490 (containsKey!41 (toList!489 lm!252) k!388))))

(assert (=> d!5475 (= (contains!437 lm!252 k!388) lt!13487)))

(declare-fun b!36398 () Bool)

(declare-fun lt!13485 () Unit!803)

(assert (=> b!36398 (= e!22987 lt!13485)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!38 (List!971 (_ BitVec 64)) Unit!803)

(assert (=> b!36398 (= lt!13485 (lemmaContainsKeyImpliesGetValueByKeyDefined!38 (toList!489 lm!252) k!388))))

(declare-datatypes ((Option!83 0))(
  ( (Some!82 (v!1951 B!702)) (None!81) )
))
(declare-fun isDefined!39 (Option!83) Bool)

(declare-fun getValueByKey!77 (List!971 (_ BitVec 64)) Option!83)

(assert (=> b!36398 (isDefined!39 (getValueByKey!77 (toList!489 lm!252) k!388))))

(declare-fun b!36400 () Bool)

(declare-fun Unit!806 () Unit!803)

(assert (=> b!36400 (= e!22987 Unit!806)))

(declare-fun b!36402 () Bool)

(assert (=> b!36402 (= e!22985 (isDefined!39 (getValueByKey!77 (toList!489 lm!252) k!388)))))

(assert (= (and d!5475 c!4180) b!36398))

(assert (= (and d!5475 (not c!4180)) b!36400))

(assert (= (and d!5475 (not res!22015)) b!36402))

(declare-fun m!29355 () Bool)

(assert (=> d!5475 m!29355))

(declare-fun m!29359 () Bool)

(assert (=> b!36398 m!29359))

(declare-fun m!29363 () Bool)

(assert (=> b!36398 m!29363))

(assert (=> b!36398 m!29363))

(declare-fun m!29367 () Bool)

(assert (=> b!36398 m!29367))

(assert (=> b!36402 m!29363))

(assert (=> b!36402 m!29363))

(assert (=> b!36402 m!29367))

(assert (=> b!36351 d!5475))

(declare-fun b!36414 () Bool)

(declare-fun e!22995 () Bool)

(declare-fun tp_is_empty!1648 () Bool)

(declare-fun tp!5345 () Bool)

(assert (=> b!36414 (= e!22995 (and tp_is_empty!1648 tp!5345))))

(assert (=> b!36354 (= tp!5336 e!22995)))

(assert (= (and b!36354 (is-Cons!967 (toList!489 lm!252))) b!36414))

(declare-fun b_lambda!1756 () Bool)

(assert (= b_lambda!1748 (or (and start!4646 b_free!1295) b_lambda!1756)))

(push 1)

(assert (not b!36398))

(assert b_and!2134)

(assert (not b!36366))

(assert tp_is_empty!1648)

(assert (not d!5473))

(assert (not d!5475))

(assert (not b_next!1295))

(assert (not b_lambda!1756))

(assert (not b!36402))

(assert (not b!36414))

(assert (not d!5469))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2134)

(assert (not b_next!1295))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5499 () Bool)

(assert (=> d!5499 (= (isEmpty!182 (toList!489 lm!252)) (is-Nil!968 (toList!489 lm!252)))))

(assert (=> d!5473 d!5499))

(declare-fun d!5505 () Bool)

(declare-fun res!22040 () Bool)

(declare-fun e!23030 () Bool)

(assert (=> d!5505 (=> res!22040 e!23030)))

(assert (=> d!5505 (= res!22040 (or (is-Nil!968 (toList!489 lm!252)) (is-Nil!968 (t!3686 (toList!489 lm!252)))))))

(assert (=> d!5505 (= (isStrictlySorted!171 (toList!489 lm!252)) e!23030)))

(declare-fun b!36459 () Bool)

(declare-fun e!23031 () Bool)

(assert (=> b!36459 (= e!23030 e!23031)))

(declare-fun res!22041 () Bool)

(assert (=> b!36459 (=> (not res!22041) (not e!23031))))

(assert (=> b!36459 (= res!22041 (bvslt (_1!693 (h!1535 (toList!489 lm!252))) (_1!693 (h!1535 (t!3686 (toList!489 lm!252))))))))

(declare-fun b!36460 () Bool)

(assert (=> b!36460 (= e!23031 (isStrictlySorted!171 (t!3686 (toList!489 lm!252))))))

(assert (= (and d!5505 (not res!22040)) b!36459))

(assert (= (and b!36459 res!22041) b!36460))

(declare-fun m!29389 () Bool)

(assert (=> b!36460 m!29389))

(assert (=> d!5469 d!5505))

(declare-fun d!5509 () Bool)

(declare-fun res!22044 () Bool)

(declare-fun e!23034 () Bool)

(assert (=> d!5509 (=> res!22044 e!23034)))

(assert (=> d!5509 (= res!22044 (is-Nil!968 (t!3686 (toList!489 lm!252))))))

(assert (=> d!5509 (= (forall!151 (t!3686 (toList!489 lm!252)) p!304) e!23034)))

(declare-fun b!36463 () Bool)

(declare-fun e!23035 () Bool)

(assert (=> b!36463 (= e!23034 e!23035)))

(declare-fun res!22045 () Bool)

(assert (=> b!36463 (=> (not res!22045) (not e!23035))))

(assert (=> b!36463 (= res!22045 (dynLambda!161 p!304 (h!1535 (t!3686 (toList!489 lm!252)))))))

(declare-fun b!36464 () Bool)

(assert (=> b!36464 (= e!23035 (forall!151 (t!3686 (t!3686 (toList!489 lm!252))) p!304))))

(assert (= (and d!5509 (not res!22044)) b!36463))

(assert (= (and b!36463 res!22045) b!36464))

(declare-fun b_lambda!1763 () Bool)

(assert (=> (not b_lambda!1763) (not b!36463)))

(declare-fun t!3698 () Bool)

(declare-fun tb!713 () Bool)

(assert (=> (and start!4646 (= p!304 p!304) t!3698) tb!713))

(declare-fun result!1231 () Bool)

(assert (=> tb!713 (= result!1231 true)))

(assert (=> b!36463 t!3698))

(declare-fun b_and!2143 () Bool)

(assert (= b_and!2134 (and (=> t!3698 result!1231) b_and!2143)))

(declare-fun m!29393 () Bool)

(assert (=> b!36463 m!29393))

(declare-fun m!29395 () Bool)

(assert (=> b!36464 m!29395))

(assert (=> b!36366 d!5509))

(declare-fun d!5513 () Bool)

(declare-fun res!22060 () Bool)

(declare-fun e!23052 () Bool)

(assert (=> d!5513 (=> res!22060 e!23052)))

(assert (=> d!5513 (= res!22060 (and (is-Cons!967 (toList!489 lm!252)) (= (_1!693 (h!1535 (toList!489 lm!252))) k!388)))))

(assert (=> d!5513 (= (containsKey!41 (toList!489 lm!252) k!388) e!23052)))

(declare-fun b!36483 () Bool)

(declare-fun e!23053 () Bool)

(assert (=> b!36483 (= e!23052 e!23053)))

(declare-fun res!22061 () Bool)

(assert (=> b!36483 (=> (not res!22061) (not e!23053))))

(assert (=> b!36483 (= res!22061 (and (or (not (is-Cons!967 (toList!489 lm!252))) (bvsle (_1!693 (h!1535 (toList!489 lm!252))) k!388)) (is-Cons!967 (toList!489 lm!252)) (bvslt (_1!693 (h!1535 (toList!489 lm!252))) k!388)))))

(declare-fun b!36484 () Bool)

(assert (=> b!36484 (= e!23053 (containsKey!41 (t!3686 (toList!489 lm!252)) k!388))))

(assert (= (and d!5513 (not res!22060)) b!36483))

(assert (= (and b!36483 res!22061) b!36484))

(declare-fun m!29401 () Bool)

(assert (=> b!36484 m!29401))

(assert (=> d!5475 d!5513))

(declare-fun d!5519 () Bool)

(assert (=> d!5519 (isDefined!39 (getValueByKey!77 (toList!489 lm!252) k!388))))

