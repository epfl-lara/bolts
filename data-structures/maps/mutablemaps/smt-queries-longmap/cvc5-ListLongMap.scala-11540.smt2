; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134356 () Bool)

(assert start!134356)

(declare-fun b!1568467 () Bool)

(declare-fun res!1072274 () Bool)

(declare-fun e!874400 () Bool)

(assert (=> b!1568467 (=> (not res!1072274) (not e!874400))))

(declare-datatypes ((B!2474 0))(
  ( (B!2475 (val!19599 Int)) )
))
(declare-datatypes ((tuple2!25464 0))(
  ( (tuple2!25465 (_1!12742 (_ BitVec 64)) (_2!12742 B!2474)) )
))
(declare-datatypes ((List!36880 0))(
  ( (Nil!36877) (Cons!36876 (h!38324 tuple2!25464) (t!51795 List!36880)) )
))
(declare-fun l!750 () List!36880)

(declare-fun isStrictlySorted!990 (List!36880) Bool)

(assert (=> b!1568467 (= res!1072274 (isStrictlySorted!990 (t!51795 l!750)))))

(declare-fun res!1072272 () Bool)

(assert (=> start!134356 (=> (not res!1072272) (not e!874400))))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun key2!21 () (_ BitVec 64))

(assert (=> start!134356 (= res!1072272 (not (= key1!37 key2!21)))))

(assert (=> start!134356 e!874400))

(declare-fun tp_is_empty!39025 () Bool)

(assert (=> start!134356 tp_is_empty!39025))

(declare-fun e!874401 () Bool)

(assert (=> start!134356 e!874401))

(assert (=> start!134356 true))

(declare-fun b!1568468 () Bool)

(declare-fun res!1072271 () Bool)

(assert (=> b!1568468 (=> (not res!1072271) (not e!874400))))

(assert (=> b!1568468 (= res!1072271 (isStrictlySorted!990 l!750))))

(declare-fun b!1568469 () Bool)

(assert (=> b!1568469 (= e!874400 (not true))))

(declare-fun v1!32 () B!2474)

(declare-fun v2!10 () B!2474)

(declare-fun insertStrictlySorted!577 (List!36880 (_ BitVec 64) B!2474) List!36880)

(assert (=> b!1568469 (= (insertStrictlySorted!577 (insertStrictlySorted!577 (t!51795 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!577 (insertStrictlySorted!577 (t!51795 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52012 0))(
  ( (Unit!52013) )
))
(declare-fun lt!673126 () Unit!52012)

(declare-fun lemmaInsertStrictlySortedCommutative!4 (List!36880 (_ BitVec 64) B!2474 (_ BitVec 64) B!2474) Unit!52012)

(assert (=> b!1568469 (= lt!673126 (lemmaInsertStrictlySortedCommutative!4 (t!51795 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun b!1568470 () Bool)

(declare-fun tp!114040 () Bool)

(assert (=> b!1568470 (= e!874401 (and tp_is_empty!39025 tp!114040))))

(declare-fun b!1568471 () Bool)

(declare-fun res!1072273 () Bool)

(assert (=> b!1568471 (=> (not res!1072273) (not e!874400))))

(assert (=> b!1568471 (= res!1072273 (and (is-Cons!36876 l!750) (bvslt (_1!12742 (h!38324 l!750)) key1!37) (bvslt (_1!12742 (h!38324 l!750)) key2!21)))))

(assert (= (and start!134356 res!1072272) b!1568468))

(assert (= (and b!1568468 res!1072271) b!1568471))

(assert (= (and b!1568471 res!1072273) b!1568467))

(assert (= (and b!1568467 res!1072274) b!1568469))

(assert (= (and start!134356 (is-Cons!36876 l!750)) b!1568470))

(declare-fun m!1443121 () Bool)

(assert (=> b!1568467 m!1443121))

(declare-fun m!1443123 () Bool)

(assert (=> b!1568468 m!1443123))

(declare-fun m!1443125 () Bool)

(assert (=> b!1568469 m!1443125))

(assert (=> b!1568469 m!1443125))

(declare-fun m!1443127 () Bool)

(assert (=> b!1568469 m!1443127))

(declare-fun m!1443129 () Bool)

(assert (=> b!1568469 m!1443129))

(declare-fun m!1443131 () Bool)

(assert (=> b!1568469 m!1443131))

(assert (=> b!1568469 m!1443129))

(declare-fun m!1443133 () Bool)

(assert (=> b!1568469 m!1443133))

(push 1)

(assert tp_is_empty!39025)

(assert (not b!1568468))

(assert (not b!1568469))

(assert (not b!1568470))

(assert (not b!1568467))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

