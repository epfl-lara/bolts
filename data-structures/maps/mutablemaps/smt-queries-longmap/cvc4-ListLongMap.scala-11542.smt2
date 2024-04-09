; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134390 () Bool)

(assert start!134390)

(declare-fun b!1568842 () Bool)

(declare-fun e!874592 () Bool)

(assert (=> b!1568842 (= e!874592 (not true))))

(declare-datatypes ((B!2490 0))(
  ( (B!2491 (val!19607 Int)) )
))
(declare-fun v1!32 () B!2490)

(declare-fun v2!10 () B!2490)

(declare-datatypes ((tuple2!25480 0))(
  ( (tuple2!25481 (_1!12750 (_ BitVec 64)) (_2!12750 B!2490)) )
))
(declare-datatypes ((List!36888 0))(
  ( (Nil!36885) (Cons!36884 (h!38332 tuple2!25480) (t!51803 List!36888)) )
))
(declare-fun l!750 () List!36888)

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun insertStrictlySorted!585 (List!36888 (_ BitVec 64) B!2490) List!36888)

(assert (=> b!1568842 (= (insertStrictlySorted!585 (insertStrictlySorted!585 (t!51803 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!585 (insertStrictlySorted!585 (t!51803 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52028 0))(
  ( (Unit!52029) )
))
(declare-fun lt!673180 () Unit!52028)

(declare-fun lemmaInsertStrictlySortedCommutative!12 (List!36888 (_ BitVec 64) B!2490 (_ BitVec 64) B!2490) Unit!52028)

(assert (=> b!1568842 (= lt!673180 (lemmaInsertStrictlySortedCommutative!12 (t!51803 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun b!1568843 () Bool)

(declare-fun e!874593 () Bool)

(declare-fun tp_is_empty!39041 () Bool)

(declare-fun tp!114073 () Bool)

(assert (=> b!1568843 (= e!874593 (and tp_is_empty!39041 tp!114073))))

(declare-fun b!1568844 () Bool)

(declare-fun res!1072439 () Bool)

(assert (=> b!1568844 (=> (not res!1072439) (not e!874592))))

(declare-fun isStrictlySorted!998 (List!36888) Bool)

(assert (=> b!1568844 (= res!1072439 (isStrictlySorted!998 (t!51803 l!750)))))

(declare-fun b!1568845 () Bool)

(declare-fun res!1072442 () Bool)

(assert (=> b!1568845 (=> (not res!1072442) (not e!874592))))

(assert (=> b!1568845 (= res!1072442 (and (is-Cons!36884 l!750) (bvslt (_1!12750 (h!38332 l!750)) key1!37) (bvslt (_1!12750 (h!38332 l!750)) key2!21)))))

(declare-fun b!1568846 () Bool)

(declare-fun res!1072441 () Bool)

(assert (=> b!1568846 (=> (not res!1072441) (not e!874592))))

(assert (=> b!1568846 (= res!1072441 (isStrictlySorted!998 l!750))))

(declare-fun res!1072440 () Bool)

(assert (=> start!134390 (=> (not res!1072440) (not e!874592))))

(assert (=> start!134390 (= res!1072440 (not (= key1!37 key2!21)))))

(assert (=> start!134390 e!874592))

(assert (=> start!134390 tp_is_empty!39041))

(assert (=> start!134390 e!874593))

(assert (=> start!134390 true))

(assert (= (and start!134390 res!1072440) b!1568846))

(assert (= (and b!1568846 res!1072441) b!1568845))

(assert (= (and b!1568845 res!1072442) b!1568844))

(assert (= (and b!1568844 res!1072439) b!1568842))

(assert (= (and start!134390 (is-Cons!36884 l!750)) b!1568843))

(declare-fun m!1443419 () Bool)

(assert (=> b!1568842 m!1443419))

(assert (=> b!1568842 m!1443419))

(declare-fun m!1443421 () Bool)

(assert (=> b!1568842 m!1443421))

(declare-fun m!1443423 () Bool)

(assert (=> b!1568842 m!1443423))

(declare-fun m!1443425 () Bool)

(assert (=> b!1568842 m!1443425))

(assert (=> b!1568842 m!1443423))

(declare-fun m!1443427 () Bool)

(assert (=> b!1568842 m!1443427))

(declare-fun m!1443429 () Bool)

(assert (=> b!1568844 m!1443429))

(declare-fun m!1443431 () Bool)

(assert (=> b!1568846 m!1443431))

(push 1)

(assert (not b!1568846))

(assert tp_is_empty!39041)

(assert (not b!1568844))

(assert (not b!1568842))

(assert (not b!1568843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

