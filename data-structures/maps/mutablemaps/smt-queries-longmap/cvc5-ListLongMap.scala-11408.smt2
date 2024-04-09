; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132874 () Bool)

(assert start!132874)

(declare-fun res!1064568 () Bool)

(declare-fun e!866525 () Bool)

(assert (=> start!132874 (=> (not res!1064568) (not e!866525))))

(declare-datatypes ((B!2324 0))(
  ( (B!2325 (val!19248 Int)) )
))
(declare-datatypes ((tuple2!25012 0))(
  ( (tuple2!25013 (_1!12516 (_ BitVec 64)) (_2!12516 B!2324)) )
))
(declare-datatypes ((List!36428 0))(
  ( (Nil!36425) (Cons!36424 (h!37871 tuple2!25012) (t!51156 List!36428)) )
))
(declare-fun l!1177 () List!36428)

(declare-fun isStrictlySorted!932 (List!36428) Bool)

(assert (=> start!132874 (= res!1064568 (isStrictlySorted!932 l!1177))))

(assert (=> start!132874 e!866525))

(declare-fun e!866526 () Bool)

(assert (=> start!132874 e!866526))

(assert (=> start!132874 true))

(declare-fun tp_is_empty!38335 () Bool)

(assert (=> start!132874 tp_is_empty!38335))

(declare-fun b!1555859 () Bool)

(declare-fun res!1064567 () Bool)

(assert (=> b!1555859 (=> (not res!1064567) (not e!866525))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1555859 (= res!1064567 (and (not (= newKey!105 otherKey!50)) (or (not (is-Cons!36424 l!1177)) (= (_1!12516 (h!37871 l!1177)) otherKey!50))))))

(declare-fun b!1555860 () Bool)

(assert (=> b!1555860 (= e!866525 false)))

(declare-fun newValue!105 () B!2324)

(declare-fun lt!670286 () Bool)

(declare-fun containsKey!804 (List!36428 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!546 (List!36428 (_ BitVec 64) B!2324) List!36428)

(assert (=> b!1555860 (= lt!670286 (containsKey!804 (insertStrictlySorted!546 l!1177 newKey!105 newValue!105) otherKey!50))))

(declare-fun b!1555861 () Bool)

(declare-fun tp!112363 () Bool)

(assert (=> b!1555861 (= e!866526 (and tp_is_empty!38335 tp!112363))))

(assert (= (and start!132874 res!1064568) b!1555859))

(assert (= (and b!1555859 res!1064567) b!1555860))

(assert (= (and start!132874 (is-Cons!36424 l!1177)) b!1555861))

(declare-fun m!1433655 () Bool)

(assert (=> start!132874 m!1433655))

(declare-fun m!1433657 () Bool)

(assert (=> b!1555860 m!1433657))

(assert (=> b!1555860 m!1433657))

(declare-fun m!1433659 () Bool)

(assert (=> b!1555860 m!1433659))

(push 1)

(assert (not start!132874))

(assert (not b!1555860))

(assert (not b!1555861))

(assert tp_is_empty!38335)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

