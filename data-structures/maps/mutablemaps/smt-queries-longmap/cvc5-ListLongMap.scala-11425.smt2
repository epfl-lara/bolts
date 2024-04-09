; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133234 () Bool)

(assert start!133234)

(declare-fun b!1558122 () Bool)

(declare-fun res!1065733 () Bool)

(declare-fun e!867998 () Bool)

(assert (=> b!1558122 (=> (not res!1065733) (not e!867998))))

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun newKey!135 () (_ BitVec 64))

(declare-datatypes ((B!2426 0))(
  ( (B!2427 (val!19299 Int)) )
))
(declare-datatypes ((tuple2!25114 0))(
  ( (tuple2!25115 (_1!12567 (_ BitVec 64)) (_2!12567 B!2426)) )
))
(declare-datatypes ((List!36479 0))(
  ( (Nil!36476) (Cons!36475 (h!37922 tuple2!25114) (t!51213 List!36479)) )
))
(declare-fun l!1292 () List!36479)

(assert (=> b!1558122 (= res!1065733 (and (not (= otherKey!62 newKey!135)) (is-Cons!36475 l!1292) (not (= (_1!12567 (h!37922 l!1292)) otherKey!62))))))

(declare-fun b!1558123 () Bool)

(declare-fun e!867997 () Bool)

(assert (=> b!1558123 (= e!867998 e!867997)))

(declare-fun res!1065735 () Bool)

(assert (=> b!1558123 (=> res!1065735 e!867997)))

(declare-fun isStrictlySorted!970 (List!36479) Bool)

(assert (=> b!1558123 (= res!1065735 (not (isStrictlySorted!970 (t!51213 l!1292))))))

(declare-fun res!1065732 () Bool)

(assert (=> start!133234 (=> (not res!1065732) (not e!867998))))

(assert (=> start!133234 (= res!1065732 (isStrictlySorted!970 l!1292))))

(assert (=> start!133234 e!867998))

(declare-fun e!867999 () Bool)

(assert (=> start!133234 e!867999))

(assert (=> start!133234 true))

(declare-fun b!1558124 () Bool)

(declare-fun tp_is_empty!38431 () Bool)

(declare-fun tp!112621 () Bool)

(assert (=> b!1558124 (= e!867999 (and tp_is_empty!38431 tp!112621))))

(declare-fun b!1558125 () Bool)

(declare-fun res!1065734 () Bool)

(assert (=> b!1558125 (=> (not res!1065734) (not e!867998))))

(declare-fun containsKey!834 (List!36479 (_ BitVec 64)) Bool)

(assert (=> b!1558125 (= res!1065734 (containsKey!834 l!1292 otherKey!62))))

(declare-fun b!1558126 () Bool)

(assert (=> b!1558126 (= e!867997 (not (containsKey!834 (t!51213 l!1292) otherKey!62)))))

(assert (= (and start!133234 res!1065732) b!1558125))

(assert (= (and b!1558125 res!1065734) b!1558122))

(assert (= (and b!1558122 res!1065733) b!1558123))

(assert (= (and b!1558123 (not res!1065735)) b!1558126))

(assert (= (and start!133234 (is-Cons!36475 l!1292)) b!1558124))

(declare-fun m!1434927 () Bool)

(assert (=> b!1558123 m!1434927))

(declare-fun m!1434929 () Bool)

(assert (=> start!133234 m!1434929))

(declare-fun m!1434931 () Bool)

(assert (=> b!1558125 m!1434931))

(declare-fun m!1434933 () Bool)

(assert (=> b!1558126 m!1434933))

(push 1)

(assert (not b!1558126))

(assert (not b!1558125))

(assert (not start!133234))

(assert (not b!1558123))

(assert (not b!1558124))

(assert tp_is_empty!38431)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162539 () Bool)

(declare-fun res!1065790 () Bool)

(declare-fun e!868048 () Bool)

(assert (=> d!162539 (=> res!1065790 e!868048)))

(assert (=> d!162539 (= res!1065790 (and (is-Cons!36475 (t!51213 l!1292)) (= (_1!12567 (h!37922 (t!51213 l!1292))) otherKey!62)))))

(assert (=> d!162539 (= (containsKey!834 (t!51213 l!1292) otherKey!62) e!868048)))

(declare-fun b!1558187 () Bool)

(declare-fun e!868049 () Bool)

(assert (=> b!1558187 (= e!868048 e!868049)))

(declare-fun res!1065791 () Bool)

(assert (=> b!1558187 (=> (not res!1065791) (not e!868049))))

(assert (=> b!1558187 (= res!1065791 (and (or (not (is-Cons!36475 (t!51213 l!1292))) (bvsle (_1!12567 (h!37922 (t!51213 l!1292))) otherKey!62)) (is-Cons!36475 (t!51213 l!1292)) (bvslt (_1!12567 (h!37922 (t!51213 l!1292))) otherKey!62)))))

(declare-fun b!1558188 () Bool)

(assert (=> b!1558188 (= e!868049 (containsKey!834 (t!51213 (t!51213 l!1292)) otherKey!62))))

(assert (= (and d!162539 (not res!1065790)) b!1558187))

(assert (= (and b!1558187 res!1065791) b!1558188))

(declare-fun m!1434957 () Bool)

(assert (=> b!1558188 m!1434957))

(assert (=> b!1558126 d!162539))

(declare-fun d!162547 () Bool)

(declare-fun res!1065802 () Bool)

(declare-fun e!868066 () Bool)

(assert (=> d!162547 (=> res!1065802 e!868066)))

(assert (=> d!162547 (= res!1065802 (or (is-Nil!36476 l!1292) (is-Nil!36476 (t!51213 l!1292))))))

(assert (=> d!162547 (= (isStrictlySorted!970 l!1292) e!868066)))

(declare-fun b!1558209 () Bool)

(declare-fun e!868067 () Bool)

(assert (=> b!1558209 (= e!868066 e!868067)))

(declare-fun res!1065803 () Bool)

(assert (=> b!1558209 (=> (not res!1065803) (not e!868067))))

(assert (=> b!1558209 (= res!1065803 (bvslt (_1!12567 (h!37922 l!1292)) (_1!12567 (h!37922 (t!51213 l!1292)))))))

(declare-fun b!1558210 () Bool)

(assert (=> b!1558210 (= e!868067 (isStrictlySorted!970 (t!51213 l!1292)))))

(assert (= (and d!162547 (not res!1065802)) b!1558209))

(assert (= (and b!1558209 res!1065803) b!1558210))

(assert (=> b!1558210 m!1434927))

(assert (=> start!133234 d!162547))

(declare-fun d!162553 () Bool)

(declare-fun res!1065804 () Bool)

(declare-fun e!868068 () Bool)

(assert (=> d!162553 (=> res!1065804 e!868068)))

(assert (=> d!162553 (= res!1065804 (or (is-Nil!36476 (t!51213 l!1292)) (is-Nil!36476 (t!51213 (t!51213 l!1292)))))))

(assert (=> d!162553 (= (isStrictlySorted!970 (t!51213 l!1292)) e!868068)))

(declare-fun b!1558211 () Bool)

(declare-fun e!868069 () Bool)

(assert (=> b!1558211 (= e!868068 e!868069)))

(declare-fun res!1065805 () Bool)

(assert (=> b!1558211 (=> (not res!1065805) (not e!868069))))

(assert (=> b!1558211 (= res!1065805 (bvslt (_1!12567 (h!37922 (t!51213 l!1292))) (_1!12567 (h!37922 (t!51213 (t!51213 l!1292))))))))

(declare-fun b!1558212 () Bool)

(assert (=> b!1558212 (= e!868069 (isStrictlySorted!970 (t!51213 (t!51213 l!1292))))))

(assert (= (and d!162553 (not res!1065804)) b!1558211))

(assert (= (and b!1558211 res!1065805) b!1558212))

(declare-fun m!1434961 () Bool)

(assert (=> b!1558212 m!1434961))

(assert (=> b!1558123 d!162553))

(declare-fun d!162555 () Bool)

(declare-fun res!1065806 () Bool)

(declare-fun e!868070 () Bool)

(assert (=> d!162555 (=> res!1065806 e!868070)))

(assert (=> d!162555 (= res!1065806 (and (is-Cons!36475 l!1292) (= (_1!12567 (h!37922 l!1292)) otherKey!62)))))

(assert (=> d!162555 (= (containsKey!834 l!1292 otherKey!62) e!868070)))

(declare-fun b!1558213 () Bool)

(declare-fun e!868071 () Bool)

(assert (=> b!1558213 (= e!868070 e!868071)))

(declare-fun res!1065807 () Bool)

(assert (=> b!1558213 (=> (not res!1065807) (not e!868071))))

(assert (=> b!1558213 (= res!1065807 (and (or (not (is-Cons!36475 l!1292)) (bvsle (_1!12567 (h!37922 l!1292)) otherKey!62)) (is-Cons!36475 l!1292) (bvslt (_1!12567 (h!37922 l!1292)) otherKey!62)))))

(declare-fun b!1558214 () Bool)

(assert (=> b!1558214 (= e!868071 (containsKey!834 (t!51213 l!1292) otherKey!62))))

(assert (= (and d!162555 (not res!1065806)) b!1558213))

(assert (= (and b!1558213 res!1065807) b!1558214))

(assert (=> b!1558214 m!1434933))

(assert (=> b!1558125 d!162555))

(declare-fun b!1558219 () Bool)

(declare-fun e!868074 () Bool)

(declare-fun tp!112636 () Bool)

(assert (=> b!1558219 (= e!868074 (and tp_is_empty!38431 tp!112636))))

(assert (=> b!1558124 (= tp!112621 e!868074)))

(assert (= (and b!1558124 (is-Cons!36475 (t!51213 l!1292))) b!1558219))

(push 1)

(assert (not b!1558214))

(assert (not b!1558188))

(assert (not b!1558219))

(assert (not b!1558210))

(assert (not b!1558212))

(assert tp_is_empty!38431)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

