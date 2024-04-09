; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133214 () Bool)

(assert start!133214)

(declare-fun b!1558039 () Bool)

(declare-fun res!1065686 () Bool)

(declare-fun e!867936 () Bool)

(assert (=> b!1558039 (=> (not res!1065686) (not e!867936))))

(declare-datatypes ((B!2424 0))(
  ( (B!2425 (val!19298 Int)) )
))
(declare-datatypes ((tuple2!25112 0))(
  ( (tuple2!25113 (_1!12566 (_ BitVec 64)) (_2!12566 B!2424)) )
))
(declare-datatypes ((List!36478 0))(
  ( (Nil!36475) (Cons!36474 (h!37921 tuple2!25112) (t!51212 List!36478)) )
))
(declare-fun l!1292 () List!36478)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!833 (List!36478 (_ BitVec 64)) Bool)

(assert (=> b!1558039 (= res!1065686 (containsKey!833 l!1292 otherKey!62))))

(declare-fun b!1558040 () Bool)

(declare-fun res!1065685 () Bool)

(assert (=> b!1558040 (=> (not res!1065685) (not e!867936))))

(declare-fun newKey!135 () (_ BitVec 64))

(assert (=> b!1558040 (= res!1065685 (not (= otherKey!62 newKey!135)))))

(declare-fun b!1558041 () Bool)

(declare-fun ListPrimitiveSize!183 (List!36478) Int)

(assert (=> b!1558041 (= e!867936 (< (ListPrimitiveSize!183 l!1292) 0))))

(declare-fun res!1065687 () Bool)

(assert (=> start!133214 (=> (not res!1065687) (not e!867936))))

(declare-fun isStrictlySorted!969 (List!36478) Bool)

(assert (=> start!133214 (= res!1065687 (isStrictlySorted!969 l!1292))))

(assert (=> start!133214 e!867936))

(declare-fun e!867935 () Bool)

(assert (=> start!133214 e!867935))

(assert (=> start!133214 true))

(declare-fun b!1558042 () Bool)

(declare-fun tp_is_empty!38429 () Bool)

(declare-fun tp!112609 () Bool)

(assert (=> b!1558042 (= e!867935 (and tp_is_empty!38429 tp!112609))))

(assert (= (and start!133214 res!1065687) b!1558039))

(assert (= (and b!1558039 res!1065686) b!1558040))

(assert (= (and b!1558040 res!1065685) b!1558041))

(assert (= (and start!133214 (is-Cons!36474 l!1292)) b!1558042))

(declare-fun m!1434903 () Bool)

(assert (=> b!1558039 m!1434903))

(declare-fun m!1434905 () Bool)

(assert (=> b!1558041 m!1434905))

(declare-fun m!1434907 () Bool)

(assert (=> start!133214 m!1434907))

(push 1)

(assert (not b!1558042))

(assert (not b!1558039))

(assert (not start!133214))

(assert tp_is_empty!38429)

(assert (not b!1558041))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162515 () Bool)

(declare-fun res!1065698 () Bool)

(declare-fun e!867950 () Bool)

(assert (=> d!162515 (=> res!1065698 e!867950)))

(assert (=> d!162515 (= res!1065698 (and (is-Cons!36474 l!1292) (= (_1!12566 (h!37921 l!1292)) otherKey!62)))))

(assert (=> d!162515 (= (containsKey!833 l!1292 otherKey!62) e!867950)))

(declare-fun b!1558059 () Bool)

(declare-fun e!867951 () Bool)

(assert (=> b!1558059 (= e!867950 e!867951)))

(declare-fun res!1065699 () Bool)

(assert (=> b!1558059 (=> (not res!1065699) (not e!867951))))

(assert (=> b!1558059 (= res!1065699 (and (or (not (is-Cons!36474 l!1292)) (bvsle (_1!12566 (h!37921 l!1292)) otherKey!62)) (is-Cons!36474 l!1292) (bvslt (_1!12566 (h!37921 l!1292)) otherKey!62)))))

(declare-fun b!1558060 () Bool)

(assert (=> b!1558060 (= e!867951 (containsKey!833 (t!51212 l!1292) otherKey!62))))

(assert (= (and d!162515 (not res!1065698)) b!1558059))

(assert (= (and b!1558059 res!1065699) b!1558060))

(declare-fun m!1434913 () Bool)

(assert (=> b!1558060 m!1434913))

(assert (=> b!1558039 d!162515))

(declare-fun d!162523 () Bool)

(declare-fun lt!670691 () Int)

(assert (=> d!162523 (>= lt!670691 0)))

(declare-fun e!867964 () Int)

(assert (=> d!162523 (= lt!670691 e!867964)))

(declare-fun c!144023 () Bool)

(assert (=> d!162523 (= c!144023 (is-Nil!36475 l!1292))))

(assert (=> d!162523 (= (ListPrimitiveSize!183 l!1292) lt!670691)))

(declare-fun b!1558075 () Bool)

(assert (=> b!1558075 (= e!867964 0)))

(declare-fun b!1558076 () Bool)

(assert (=> b!1558076 (= e!867964 (+ 1 (ListPrimitiveSize!183 (t!51212 l!1292))))))

(assert (= (and d!162523 c!144023) b!1558075))

(assert (= (and d!162523 (not c!144023)) b!1558076))

(declare-fun m!1434917 () Bool)

(assert (=> b!1558076 m!1434917))

(assert (=> b!1558041 d!162523))

(declare-fun d!162527 () Bool)

(declare-fun res!1065720 () Bool)

(declare-fun e!867978 () Bool)

(assert (=> d!162527 (=> res!1065720 e!867978)))

(assert (=> d!162527 (= res!1065720 (or (is-Nil!36475 l!1292) (is-Nil!36475 (t!51212 l!1292))))))

(assert (=> d!162527 (= (isStrictlySorted!969 l!1292) e!867978)))

(declare-fun b!1558093 () Bool)

(declare-fun e!867979 () Bool)

(assert (=> b!1558093 (= e!867978 e!867979)))

(declare-fun res!1065721 () Bool)

(assert (=> b!1558093 (=> (not res!1065721) (not e!867979))))

(assert (=> b!1558093 (= res!1065721 (bvslt (_1!12566 (h!37921 l!1292)) (_1!12566 (h!37921 (t!51212 l!1292)))))))

(declare-fun b!1558094 () Bool)

(assert (=> b!1558094 (= e!867979 (isStrictlySorted!969 (t!51212 l!1292)))))

(assert (= (and d!162527 (not res!1065720)) b!1558093))

(assert (= (and b!1558093 res!1065721) b!1558094))

(declare-fun m!1434923 () Bool)

(assert (=> b!1558094 m!1434923))

(assert (=> start!133214 d!162527))

(declare-fun b!1558110 () Bool)

(declare-fun e!867989 () Bool)

(declare-fun tp!112617 () Bool)

(assert (=> b!1558110 (= e!867989 (and tp_is_empty!38429 tp!112617))))

(assert (=> b!1558042 (= tp!112609 e!867989)))

(assert (= (and b!1558042 (is-Cons!36474 (t!51212 l!1292))) b!1558110))

