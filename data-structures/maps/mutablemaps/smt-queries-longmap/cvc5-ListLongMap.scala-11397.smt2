; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132718 () Bool)

(assert start!132718)

(declare-fun res!1063972 () Bool)

(declare-fun e!865755 () Bool)

(assert (=> start!132718 (=> (not res!1063972) (not e!865755))))

(declare-datatypes ((B!2258 0))(
  ( (B!2259 (val!19215 Int)) )
))
(declare-datatypes ((tuple2!24946 0))(
  ( (tuple2!24947 (_1!12483 (_ BitVec 64)) (_2!12483 B!2258)) )
))
(declare-datatypes ((List!36395 0))(
  ( (Nil!36392) (Cons!36391 (h!37838 tuple2!24946) (t!51123 List!36395)) )
))
(declare-fun l!1177 () List!36395)

(declare-fun isStrictlySorted!905 (List!36395) Bool)

(assert (=> start!132718 (= res!1063972 (isStrictlySorted!905 l!1177))))

(assert (=> start!132718 e!865755))

(declare-fun e!865754 () Bool)

(assert (=> start!132718 e!865754))

(assert (=> start!132718 true))

(declare-fun tp_is_empty!38269 () Bool)

(assert (=> start!132718 tp_is_empty!38269))

(declare-fun b!1554672 () Bool)

(declare-fun res!1063971 () Bool)

(assert (=> b!1554672 (=> (not res!1063971) (not e!865755))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1554672 (= res!1063971 (and (not (= newKey!105 otherKey!50)) (is-Cons!36391 l!1177) (not (= (_1!12483 (h!37838 l!1177)) otherKey!50))))))

(declare-fun b!1554673 () Bool)

(assert (=> b!1554673 (= e!865755 (not true))))

(declare-fun e!865753 () Bool)

(assert (=> b!1554673 e!865753))

(declare-fun res!1063973 () Bool)

(assert (=> b!1554673 (=> (not res!1063973) (not e!865753))))

(declare-fun lt!670076 () List!36395)

(declare-fun containsKey!777 (List!36395 (_ BitVec 64)) Bool)

(assert (=> b!1554673 (= res!1063973 (= (containsKey!777 lt!670076 otherKey!50) (containsKey!777 (t!51123 l!1177) otherKey!50)))))

(declare-fun newValue!105 () B!2258)

(declare-fun insertStrictlySorted!519 (List!36395 (_ BitVec 64) B!2258) List!36395)

(assert (=> b!1554673 (= lt!670076 (insertStrictlySorted!519 (t!51123 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51737 0))(
  ( (Unit!51738) )
))
(declare-fun lt!670075 () Unit!51737)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!16 (List!36395 (_ BitVec 64) B!2258 (_ BitVec 64)) Unit!51737)

(assert (=> b!1554673 (= lt!670075 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!16 (t!51123 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1554674 () Bool)

(declare-datatypes ((Option!834 0))(
  ( (Some!833 (v!22014 B!2258)) (None!832) )
))
(declare-fun getValueByKey!759 (List!36395 (_ BitVec 64)) Option!834)

(assert (=> b!1554674 (= e!865753 (= (getValueByKey!759 lt!670076 otherKey!50) (getValueByKey!759 (t!51123 l!1177) otherKey!50)))))

(declare-fun b!1554675 () Bool)

(declare-fun res!1063974 () Bool)

(assert (=> b!1554675 (=> (not res!1063974) (not e!865755))))

(assert (=> b!1554675 (= res!1063974 (isStrictlySorted!905 (t!51123 l!1177)))))

(declare-fun b!1554676 () Bool)

(declare-fun tp!112228 () Bool)

(assert (=> b!1554676 (= e!865754 (and tp_is_empty!38269 tp!112228))))

(assert (= (and start!132718 res!1063972) b!1554672))

(assert (= (and b!1554672 res!1063971) b!1554675))

(assert (= (and b!1554675 res!1063974) b!1554673))

(assert (= (and b!1554673 res!1063973) b!1554674))

(assert (= (and start!132718 (is-Cons!36391 l!1177)) b!1554676))

(declare-fun m!1432923 () Bool)

(assert (=> start!132718 m!1432923))

(declare-fun m!1432925 () Bool)

(assert (=> b!1554673 m!1432925))

(declare-fun m!1432927 () Bool)

(assert (=> b!1554673 m!1432927))

(declare-fun m!1432929 () Bool)

(assert (=> b!1554673 m!1432929))

(declare-fun m!1432931 () Bool)

(assert (=> b!1554673 m!1432931))

(declare-fun m!1432933 () Bool)

(assert (=> b!1554674 m!1432933))

(declare-fun m!1432935 () Bool)

(assert (=> b!1554674 m!1432935))

(declare-fun m!1432937 () Bool)

(assert (=> b!1554675 m!1432937))

(push 1)

(assert (not b!1554675))

(assert (not b!1554676))

(assert (not b!1554673))

(assert tp_is_empty!38269)

(assert (not b!1554674))

(assert (not start!132718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

