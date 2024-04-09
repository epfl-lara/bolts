; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133252 () Bool)

(assert start!133252)

(declare-fun b!1558232 () Bool)

(declare-fun res!1065822 () Bool)

(declare-fun e!868080 () Bool)

(assert (=> b!1558232 (=> (not res!1065822) (not e!868080))))

(declare-datatypes ((B!2432 0))(
  ( (B!2433 (val!19302 Int)) )
))
(declare-datatypes ((tuple2!25120 0))(
  ( (tuple2!25121 (_1!12570 (_ BitVec 64)) (_2!12570 B!2432)) )
))
(declare-datatypes ((List!36482 0))(
  ( (Nil!36479) (Cons!36478 (h!37925 tuple2!25120) (t!51216 List!36482)) )
))
(declare-fun l!1292 () List!36482)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!837 (List!36482 (_ BitVec 64)) Bool)

(assert (=> b!1558232 (= res!1065822 (containsKey!837 l!1292 otherKey!62))))

(declare-fun b!1558234 () Bool)

(declare-fun res!1065821 () Bool)

(assert (=> b!1558234 (=> (not res!1065821) (not e!868080))))

(assert (=> b!1558234 (= res!1065821 (containsKey!837 (t!51216 l!1292) otherKey!62))))

(declare-fun b!1558235 () Bool)

(declare-fun ListPrimitiveSize!184 (List!36482) Int)

(assert (=> b!1558235 (= e!868080 (>= (ListPrimitiveSize!184 (t!51216 l!1292)) (ListPrimitiveSize!184 l!1292)))))

(declare-fun b!1558236 () Bool)

(declare-fun res!1065818 () Bool)

(assert (=> b!1558236 (=> (not res!1065818) (not e!868080))))

(declare-fun newKey!135 () (_ BitVec 64))

(assert (=> b!1558236 (= res!1065818 (and (not (= otherKey!62 newKey!135)) (is-Cons!36478 l!1292) (not (= (_1!12570 (h!37925 l!1292)) otherKey!62))))))

(declare-fun b!1558237 () Bool)

(declare-fun e!868079 () Bool)

(declare-fun tp_is_empty!38437 () Bool)

(declare-fun tp!112639 () Bool)

(assert (=> b!1558237 (= e!868079 (and tp_is_empty!38437 tp!112639))))

(declare-fun res!1065819 () Bool)

(assert (=> start!133252 (=> (not res!1065819) (not e!868080))))

(declare-fun isStrictlySorted!973 (List!36482) Bool)

(assert (=> start!133252 (= res!1065819 (isStrictlySorted!973 l!1292))))

(assert (=> start!133252 e!868080))

(assert (=> start!133252 e!868079))

(assert (=> start!133252 true))

(declare-fun b!1558233 () Bool)

(declare-fun res!1065820 () Bool)

(assert (=> b!1558233 (=> (not res!1065820) (not e!868080))))

(assert (=> b!1558233 (= res!1065820 (isStrictlySorted!973 (t!51216 l!1292)))))

(assert (= (and start!133252 res!1065819) b!1558232))

(assert (= (and b!1558232 res!1065822) b!1558236))

(assert (= (and b!1558236 res!1065818) b!1558233))

(assert (= (and b!1558233 res!1065820) b!1558234))

(assert (= (and b!1558234 res!1065821) b!1558235))

(assert (= (and start!133252 (is-Cons!36478 l!1292)) b!1558237))

(declare-fun m!1434963 () Bool)

(assert (=> b!1558235 m!1434963))

(declare-fun m!1434965 () Bool)

(assert (=> b!1558235 m!1434965))

(declare-fun m!1434967 () Bool)

(assert (=> start!133252 m!1434967))

(declare-fun m!1434969 () Bool)

(assert (=> b!1558233 m!1434969))

(declare-fun m!1434971 () Bool)

(assert (=> b!1558234 m!1434971))

(declare-fun m!1434973 () Bool)

(assert (=> b!1558232 m!1434973))

(push 1)

(assert (not b!1558235))

(assert (not b!1558232))

(assert (not b!1558237))

(assert (not b!1558233))

(assert (not start!133252))

(assert tp_is_empty!38437)

(assert (not b!1558234))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162563 () Bool)

(declare-fun lt!670699 () Int)

(assert (=> d!162563 (>= lt!670699 0)))

(declare-fun e!868109 () Int)

(assert (=> d!162563 (= lt!670699 e!868109)))

(declare-fun c!144031 () Bool)

(assert (=> d!162563 (= c!144031 (is-Nil!36479 (t!51216 l!1292)))))

(assert (=> d!162563 (= (ListPrimitiveSize!184 (t!51216 l!1292)) lt!670699)))

(declare-fun b!1558294 () Bool)

(assert (=> b!1558294 (= e!868109 0)))

(declare-fun b!1558295 () Bool)

(assert (=> b!1558295 (= e!868109 (+ 1 (ListPrimitiveSize!184 (t!51216 (t!51216 l!1292)))))))

(assert (= (and d!162563 c!144031) b!1558294))

(assert (= (and d!162563 (not c!144031)) b!1558295))

(declare-fun m!1435003 () Bool)

(assert (=> b!1558295 m!1435003))

(assert (=> b!1558235 d!162563))

(declare-fun d!162569 () Bool)

(declare-fun lt!670700 () Int)

(assert (=> d!162569 (>= lt!670700 0)))

(declare-fun e!868110 () Int)

(assert (=> d!162569 (= lt!670700 e!868110)))

(declare-fun c!144032 () Bool)

(assert (=> d!162569 (= c!144032 (is-Nil!36479 l!1292))))

(assert (=> d!162569 (= (ListPrimitiveSize!184 l!1292) lt!670700)))

(declare-fun b!1558296 () Bool)

(assert (=> b!1558296 (= e!868110 0)))

(declare-fun b!1558297 () Bool)

(assert (=> b!1558297 (= e!868110 (+ 1 (ListPrimitiveSize!184 (t!51216 l!1292))))))

(assert (= (and d!162569 c!144032) b!1558296))

(assert (= (and d!162569 (not c!144032)) b!1558297))

(assert (=> b!1558297 m!1434963))

(assert (=> b!1558235 d!162569))

(declare-fun d!162571 () Bool)

(declare-fun res!1065879 () Bool)

(declare-fun e!868127 () Bool)

(assert (=> d!162571 (=> res!1065879 e!868127)))

(assert (=> d!162571 (= res!1065879 (and (is-Cons!36478 (t!51216 l!1292)) (= (_1!12570 (h!37925 (t!51216 l!1292))) otherKey!62)))))

(assert (=> d!162571 (= (containsKey!837 (t!51216 l!1292) otherKey!62) e!868127)))

(declare-fun b!1558316 () Bool)

(declare-fun e!868128 () Bool)

(assert (=> b!1558316 (= e!868127 e!868128)))

(declare-fun res!1065880 () Bool)

(assert (=> b!1558316 (=> (not res!1065880) (not e!868128))))

(assert (=> b!1558316 (= res!1065880 (and (or (not (is-Cons!36478 (t!51216 l!1292))) (bvsle (_1!12570 (h!37925 (t!51216 l!1292))) otherKey!62)) (is-Cons!36478 (t!51216 l!1292)) (bvslt (_1!12570 (h!37925 (t!51216 l!1292))) otherKey!62)))))

(declare-fun b!1558317 () Bool)

(assert (=> b!1558317 (= e!868128 (containsKey!837 (t!51216 (t!51216 l!1292)) otherKey!62))))

(assert (= (and d!162571 (not res!1065879)) b!1558316))

(assert (= (and b!1558316 res!1065880) b!1558317))

(declare-fun m!1435007 () Bool)

(assert (=> b!1558317 m!1435007))

(assert (=> b!1558234 d!162571))

(declare-fun d!162581 () Bool)

(declare-fun res!1065895 () Bool)

(declare-fun e!868150 () Bool)

(assert (=> d!162581 (=> res!1065895 e!868150)))

(assert (=> d!162581 (= res!1065895 (or (is-Nil!36479 (t!51216 l!1292)) (is-Nil!36479 (t!51216 (t!51216 l!1292)))))))

(assert (=> d!162581 (= (isStrictlySorted!973 (t!51216 l!1292)) e!868150)))

(declare-fun b!1558345 () Bool)

(declare-fun e!868151 () Bool)

(assert (=> b!1558345 (= e!868150 e!868151)))

(declare-fun res!1065896 () Bool)

(assert (=> b!1558345 (=> (not res!1065896) (not e!868151))))

(assert (=> b!1558345 (= res!1065896 (bvslt (_1!12570 (h!37925 (t!51216 l!1292))) (_1!12570 (h!37925 (t!51216 (t!51216 l!1292))))))))

(declare-fun b!1558346 () Bool)

(assert (=> b!1558346 (= e!868151 (isStrictlySorted!973 (t!51216 (t!51216 l!1292))))))

(assert (= (and d!162581 (not res!1065895)) b!1558345))

(assert (= (and b!1558345 res!1065896) b!1558346))

(declare-fun m!1435015 () Bool)

(assert (=> b!1558346 m!1435015))

(assert (=> b!1558233 d!162581))

(declare-fun d!162591 () Bool)

(declare-fun res!1065897 () Bool)

(declare-fun e!868154 () Bool)

(assert (=> d!162591 (=> res!1065897 e!868154)))

(assert (=> d!162591 (= res!1065897 (and (is-Cons!36478 l!1292) (= (_1!12570 (h!37925 l!1292)) otherKey!62)))))

(assert (=> d!162591 (= (containsKey!837 l!1292 otherKey!62) e!868154)))

(declare-fun b!1558351 () Bool)

(declare-fun e!868155 () Bool)

(assert (=> b!1558351 (= e!868154 e!868155)))

(declare-fun res!1065898 () Bool)

(assert (=> b!1558351 (=> (not res!1065898) (not e!868155))))

(assert (=> b!1558351 (= res!1065898 (and (or (not (is-Cons!36478 l!1292)) (bvsle (_1!12570 (h!37925 l!1292)) otherKey!62)) (is-Cons!36478 l!1292) (bvslt (_1!12570 (h!37925 l!1292)) otherKey!62)))))

(declare-fun b!1558352 () Bool)

(assert (=> b!1558352 (= e!868155 (containsKey!837 (t!51216 l!1292) otherKey!62))))

(assert (= (and d!162591 (not res!1065897)) b!1558351))

(assert (= (and b!1558351 res!1065898) b!1558352))

(assert (=> b!1558352 m!1434971))

(assert (=> b!1558232 d!162591))

(declare-fun d!162593 () Bool)

(declare-fun res!1065899 () Bool)

(declare-fun e!868157 () Bool)

(assert (=> d!162593 (=> res!1065899 e!868157)))

(assert (=> d!162593 (= res!1065899 (or (is-Nil!36479 l!1292) (is-Nil!36479 (t!51216 l!1292))))))

(assert (=> d!162593 (= (isStrictlySorted!973 l!1292) e!868157)))

(declare-fun b!1558354 () Bool)

(declare-fun e!868158 () Bool)

(assert (=> b!1558354 (= e!868157 e!868158)))

(declare-fun res!1065900 () Bool)

(assert (=> b!1558354 (=> (not res!1065900) (not e!868158))))

(assert (=> b!1558354 (= res!1065900 (bvslt (_1!12570 (h!37925 l!1292)) (_1!12570 (h!37925 (t!51216 l!1292)))))))

(declare-fun b!1558355 () Bool)

(assert (=> b!1558355 (= e!868158 (isStrictlySorted!973 (t!51216 l!1292)))))

(assert (= (and d!162593 (not res!1065899)) b!1558354))

(assert (= (and b!1558354 res!1065900) b!1558355))

(assert (=> b!1558355 m!1434969))

(assert (=> start!133252 d!162593))

(declare-fun b!1558360 () Bool)

(declare-fun e!868161 () Bool)

(declare-fun tp!112654 () Bool)

(assert (=> b!1558360 (= e!868161 (and tp_is_empty!38437 tp!112654))))

(assert (=> b!1558237 (= tp!112639 e!868161)))

(assert (= (and b!1558237 (is-Cons!36478 (t!51216 l!1292))) b!1558360))

(push 1)

(assert (not b!1558352))

(assert (not b!1558297))

(assert (not b!1558360))

(assert tp_is_empty!38437)

(assert (not b!1558317))

(assert (not b!1558295))

(assert (not b!1558355))

(assert (not b!1558346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

