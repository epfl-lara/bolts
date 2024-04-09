; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132884 () Bool)

(assert start!132884)

(declare-fun res!1064598 () Bool)

(declare-fun e!866555 () Bool)

(assert (=> start!132884 (=> (not res!1064598) (not e!866555))))

(declare-datatypes ((B!2334 0))(
  ( (B!2335 (val!19253 Int)) )
))
(declare-datatypes ((tuple2!25022 0))(
  ( (tuple2!25023 (_1!12521 (_ BitVec 64)) (_2!12521 B!2334)) )
))
(declare-datatypes ((List!36433 0))(
  ( (Nil!36430) (Cons!36429 (h!37876 tuple2!25022) (t!51161 List!36433)) )
))
(declare-fun l!1177 () List!36433)

(declare-fun isStrictlySorted!937 (List!36433) Bool)

(assert (=> start!132884 (= res!1064598 (isStrictlySorted!937 l!1177))))

(assert (=> start!132884 e!866555))

(declare-fun e!866556 () Bool)

(assert (=> start!132884 e!866556))

(assert (=> start!132884 true))

(declare-fun b!1555904 () Bool)

(declare-fun res!1064597 () Bool)

(assert (=> b!1555904 (=> (not res!1064597) (not e!866555))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1555904 (= res!1064597 (not (= newKey!105 otherKey!50)))))

(declare-fun b!1555905 () Bool)

(declare-fun ListPrimitiveSize!177 (List!36433) Int)

(assert (=> b!1555905 (= e!866555 (< (ListPrimitiveSize!177 l!1177) 0))))

(declare-fun b!1555906 () Bool)

(declare-fun tp_is_empty!38345 () Bool)

(declare-fun tp!112378 () Bool)

(assert (=> b!1555906 (= e!866556 (and tp_is_empty!38345 tp!112378))))

(assert (= (and start!132884 res!1064598) b!1555904))

(assert (= (and b!1555904 res!1064597) b!1555905))

(assert (= (and start!132884 (is-Cons!36429 l!1177)) b!1555906))

(declare-fun m!1433681 () Bool)

(assert (=> start!132884 m!1433681))

(declare-fun m!1433683 () Bool)

(assert (=> b!1555905 m!1433683))

(push 1)

(assert (not b!1555905))

(assert (not start!132884))

(assert (not b!1555906))

(assert tp_is_empty!38345)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161967 () Bool)

(declare-fun lt!670295 () Int)

(assert (=> d!161967 (>= lt!670295 0)))

(declare-fun e!866559 () Int)

(assert (=> d!161967 (= lt!670295 e!866559)))

(declare-fun c!143642 () Bool)

(assert (=> d!161967 (= c!143642 (is-Nil!36430 l!1177))))

(assert (=> d!161967 (= (ListPrimitiveSize!177 l!1177) lt!670295)))

(declare-fun b!1555911 () Bool)

(assert (=> b!1555911 (= e!866559 0)))

(declare-fun b!1555912 () Bool)

(assert (=> b!1555912 (= e!866559 (+ 1 (ListPrimitiveSize!177 (t!51161 l!1177))))))

(assert (= (and d!161967 c!143642) b!1555911))

(assert (= (and d!161967 (not c!143642)) b!1555912))

(declare-fun m!1433685 () Bool)

(assert (=> b!1555912 m!1433685))

(assert (=> b!1555905 d!161967))

(declare-fun d!161973 () Bool)

(declare-fun res!1064609 () Bool)

(declare-fun e!866573 () Bool)

(assert (=> d!161973 (=> res!1064609 e!866573)))

(assert (=> d!161973 (= res!1064609 (or (is-Nil!36430 l!1177) (is-Nil!36430 (t!51161 l!1177))))))

(assert (=> d!161973 (= (isStrictlySorted!937 l!1177) e!866573)))

(declare-fun b!1555929 () Bool)

(declare-fun e!866574 () Bool)

(assert (=> b!1555929 (= e!866573 e!866574)))

(declare-fun res!1064610 () Bool)

(assert (=> b!1555929 (=> (not res!1064610) (not e!866574))))

(assert (=> b!1555929 (= res!1064610 (bvslt (_1!12521 (h!37876 l!1177)) (_1!12521 (h!37876 (t!51161 l!1177)))))))

(declare-fun b!1555930 () Bool)

(assert (=> b!1555930 (= e!866574 (isStrictlySorted!937 (t!51161 l!1177)))))

(assert (= (and d!161973 (not res!1064609)) b!1555929))

(assert (= (and b!1555929 res!1064610) b!1555930))

(declare-fun m!1433691 () Bool)

(assert (=> b!1555930 m!1433691))

(assert (=> start!132884 d!161973))

(declare-fun b!1555943 () Bool)

(declare-fun e!866583 () Bool)

(declare-fun tp!112381 () Bool)

(assert (=> b!1555943 (= e!866583 (and tp_is_empty!38345 tp!112381))))

(assert (=> b!1555906 (= tp!112378 e!866583)))

(assert (= (and b!1555906 (is-Cons!36429 (t!51161 l!1177))) b!1555943))

(push 1)

