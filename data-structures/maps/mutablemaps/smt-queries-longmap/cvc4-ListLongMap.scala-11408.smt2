; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132878 () Bool)

(assert start!132878)

(declare-fun res!1064580 () Bool)

(declare-fun e!866537 () Bool)

(assert (=> start!132878 (=> (not res!1064580) (not e!866537))))

(declare-datatypes ((B!2328 0))(
  ( (B!2329 (val!19250 Int)) )
))
(declare-datatypes ((tuple2!25016 0))(
  ( (tuple2!25017 (_1!12518 (_ BitVec 64)) (_2!12518 B!2328)) )
))
(declare-datatypes ((List!36430 0))(
  ( (Nil!36427) (Cons!36426 (h!37873 tuple2!25016) (t!51158 List!36430)) )
))
(declare-fun l!1177 () List!36430)

(declare-fun isStrictlySorted!934 (List!36430) Bool)

(assert (=> start!132878 (= res!1064580 (isStrictlySorted!934 l!1177))))

(assert (=> start!132878 e!866537))

(declare-fun e!866538 () Bool)

(assert (=> start!132878 e!866538))

(assert (=> start!132878 true))

(declare-fun tp_is_empty!38339 () Bool)

(assert (=> start!132878 tp_is_empty!38339))

(declare-fun b!1555877 () Bool)

(declare-fun res!1064579 () Bool)

(assert (=> b!1555877 (=> (not res!1064579) (not e!866537))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1555877 (= res!1064579 (and (not (= newKey!105 otherKey!50)) (or (not (is-Cons!36426 l!1177)) (= (_1!12518 (h!37873 l!1177)) otherKey!50))))))

(declare-fun b!1555878 () Bool)

(assert (=> b!1555878 (= e!866537 false)))

(declare-fun lt!670292 () Bool)

(declare-fun newValue!105 () B!2328)

(declare-fun containsKey!806 (List!36430 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!548 (List!36430 (_ BitVec 64) B!2328) List!36430)

(assert (=> b!1555878 (= lt!670292 (containsKey!806 (insertStrictlySorted!548 l!1177 newKey!105 newValue!105) otherKey!50))))

(declare-fun b!1555879 () Bool)

(declare-fun tp!112369 () Bool)

(assert (=> b!1555879 (= e!866538 (and tp_is_empty!38339 tp!112369))))

(assert (= (and start!132878 res!1064580) b!1555877))

(assert (= (and b!1555877 res!1064579) b!1555878))

(assert (= (and start!132878 (is-Cons!36426 l!1177)) b!1555879))

(declare-fun m!1433667 () Bool)

(assert (=> start!132878 m!1433667))

(declare-fun m!1433669 () Bool)

(assert (=> b!1555878 m!1433669))

(assert (=> b!1555878 m!1433669))

(declare-fun m!1433671 () Bool)

(assert (=> b!1555878 m!1433671))

(push 1)

(assert (not b!1555878))

(assert (not start!132878))

(assert (not b!1555879))

(assert tp_is_empty!38339)

(check-sat)

(pop 1)

