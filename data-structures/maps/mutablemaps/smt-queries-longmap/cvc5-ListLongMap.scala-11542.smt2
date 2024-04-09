; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134386 () Bool)

(assert start!134386)

(declare-fun b!1568812 () Bool)

(declare-fun res!1072417 () Bool)

(declare-fun e!874581 () Bool)

(assert (=> b!1568812 (=> (not res!1072417) (not e!874581))))

(declare-datatypes ((B!2486 0))(
  ( (B!2487 (val!19605 Int)) )
))
(declare-datatypes ((tuple2!25476 0))(
  ( (tuple2!25477 (_1!12748 (_ BitVec 64)) (_2!12748 B!2486)) )
))
(declare-datatypes ((List!36886 0))(
  ( (Nil!36883) (Cons!36882 (h!38330 tuple2!25476) (t!51801 List!36886)) )
))
(declare-fun l!750 () List!36886)

(declare-fun isStrictlySorted!996 (List!36886) Bool)

(assert (=> b!1568812 (= res!1072417 (isStrictlySorted!996 (t!51801 l!750)))))

(declare-fun res!1072418 () Bool)

(assert (=> start!134386 (=> (not res!1072418) (not e!874581))))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun key2!21 () (_ BitVec 64))

(assert (=> start!134386 (= res!1072418 (not (= key1!37 key2!21)))))

(assert (=> start!134386 e!874581))

(declare-fun tp_is_empty!39037 () Bool)

(assert (=> start!134386 tp_is_empty!39037))

(declare-fun e!874580 () Bool)

(assert (=> start!134386 e!874580))

(assert (=> start!134386 true))

(declare-fun b!1568813 () Bool)

(assert (=> b!1568813 (= e!874581 (not true))))

(declare-fun v1!32 () B!2486)

(declare-fun v2!10 () B!2486)

(declare-fun insertStrictlySorted!583 (List!36886 (_ BitVec 64) B!2486) List!36886)

(assert (=> b!1568813 (= (insertStrictlySorted!583 (insertStrictlySorted!583 (t!51801 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!583 (insertStrictlySorted!583 (t!51801 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52024 0))(
  ( (Unit!52025) )
))
(declare-fun lt!673174 () Unit!52024)

(declare-fun lemmaInsertStrictlySortedCommutative!10 (List!36886 (_ BitVec 64) B!2486 (_ BitVec 64) B!2486) Unit!52024)

(assert (=> b!1568813 (= lt!673174 (lemmaInsertStrictlySortedCommutative!10 (t!51801 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun b!1568814 () Bool)

(declare-fun res!1072416 () Bool)

(assert (=> b!1568814 (=> (not res!1072416) (not e!874581))))

(assert (=> b!1568814 (= res!1072416 (isStrictlySorted!996 l!750))))

(declare-fun b!1568815 () Bool)

(declare-fun res!1072415 () Bool)

(assert (=> b!1568815 (=> (not res!1072415) (not e!874581))))

(assert (=> b!1568815 (= res!1072415 (and (is-Cons!36882 l!750) (bvslt (_1!12748 (h!38330 l!750)) key1!37) (bvslt (_1!12748 (h!38330 l!750)) key2!21)))))

(declare-fun b!1568816 () Bool)

(declare-fun tp!114067 () Bool)

(assert (=> b!1568816 (= e!874580 (and tp_is_empty!39037 tp!114067))))

(assert (= (and start!134386 res!1072418) b!1568814))

(assert (= (and b!1568814 res!1072416) b!1568815))

(assert (= (and b!1568815 res!1072415) b!1568812))

(assert (= (and b!1568812 res!1072417) b!1568813))

(assert (= (and start!134386 (is-Cons!36882 l!750)) b!1568816))

(declare-fun m!1443391 () Bool)

(assert (=> b!1568812 m!1443391))

(declare-fun m!1443393 () Bool)

(assert (=> b!1568813 m!1443393))

(assert (=> b!1568813 m!1443393))

(declare-fun m!1443395 () Bool)

(assert (=> b!1568813 m!1443395))

(declare-fun m!1443397 () Bool)

(assert (=> b!1568813 m!1443397))

(declare-fun m!1443399 () Bool)

(assert (=> b!1568813 m!1443399))

(assert (=> b!1568813 m!1443397))

(declare-fun m!1443401 () Bool)

(assert (=> b!1568813 m!1443401))

(declare-fun m!1443403 () Bool)

(assert (=> b!1568814 m!1443403))

(push 1)

(assert (not b!1568813))

(assert (not b!1568814))

(assert (not b!1568816))

(assert tp_is_empty!39037)

(assert (not b!1568812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

