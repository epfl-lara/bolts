; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134492 () Bool)

(assert start!134492)

(declare-fun b!1569615 () Bool)

(declare-fun res!1072750 () Bool)

(declare-fun e!875046 () Bool)

(assert (=> b!1569615 (=> (not res!1072750) (not e!875046))))

(declare-datatypes ((B!2538 0))(
  ( (B!2539 (val!19631 Int)) )
))
(declare-datatypes ((tuple2!25528 0))(
  ( (tuple2!25529 (_1!12774 (_ BitVec 64)) (_2!12774 B!2538)) )
))
(declare-datatypes ((List!36912 0))(
  ( (Nil!36909) (Cons!36908 (h!38356 tuple2!25528) (t!51827 List!36912)) )
))
(declare-fun l!750 () List!36912)

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(assert (=> b!1569615 (= res!1072750 (and (is-Cons!36908 l!750) (bvslt (_1!12774 (h!38356 l!750)) key1!37) (bvslt (_1!12774 (h!38356 l!750)) key2!21)))))

(declare-fun b!1569617 () Bool)

(declare-fun e!875045 () Bool)

(declare-fun tp_is_empty!39089 () Bool)

(declare-fun tp!114181 () Bool)

(assert (=> b!1569617 (= e!875045 (and tp_is_empty!39089 tp!114181))))

(declare-fun b!1569616 () Bool)

(declare-fun isStrictlySorted!1013 (List!36912) Bool)

(assert (=> b!1569616 (= e!875046 (not (isStrictlySorted!1013 (t!51827 l!750))))))

(declare-fun b!1569614 () Bool)

(declare-fun res!1072749 () Bool)

(assert (=> b!1569614 (=> (not res!1072749) (not e!875046))))

(assert (=> b!1569614 (= res!1072749 (isStrictlySorted!1013 l!750))))

(declare-fun res!1072751 () Bool)

(assert (=> start!134492 (=> (not res!1072751) (not e!875046))))

(assert (=> start!134492 (= res!1072751 (not (= key1!37 key2!21)))))

(assert (=> start!134492 e!875046))

(assert (=> start!134492 true))

(assert (=> start!134492 e!875045))

(assert (= (and start!134492 res!1072751) b!1569614))

(assert (= (and b!1569614 res!1072749) b!1569615))

(assert (= (and b!1569615 res!1072750) b!1569616))

(assert (= (and start!134492 (is-Cons!36908 l!750)) b!1569617))

(declare-fun m!1443813 () Bool)

(assert (=> b!1569616 m!1443813))

(declare-fun m!1443815 () Bool)

(assert (=> b!1569614 m!1443815))

(push 1)

(assert (not b!1569616))

(assert (not b!1569614))

(assert (not b!1569617))

(assert tp_is_empty!39089)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163861 () Bool)

