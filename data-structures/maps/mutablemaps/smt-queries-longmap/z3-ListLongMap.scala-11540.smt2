; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134358 () Bool)

(assert start!134358)

(declare-fun b!1568482 () Bool)

(declare-fun res!1072284 () Bool)

(declare-fun e!874406 () Bool)

(assert (=> b!1568482 (=> (not res!1072284) (not e!874406))))

(declare-datatypes ((B!2476 0))(
  ( (B!2477 (val!19600 Int)) )
))
(declare-datatypes ((tuple2!25466 0))(
  ( (tuple2!25467 (_1!12743 (_ BitVec 64)) (_2!12743 B!2476)) )
))
(declare-datatypes ((List!36881 0))(
  ( (Nil!36878) (Cons!36877 (h!38325 tuple2!25466) (t!51796 List!36881)) )
))
(declare-fun l!750 () List!36881)

(declare-fun isStrictlySorted!991 (List!36881) Bool)

(assert (=> b!1568482 (= res!1072284 (isStrictlySorted!991 l!750))))

(declare-fun b!1568483 () Bool)

(declare-fun res!1072283 () Bool)

(assert (=> b!1568483 (=> (not res!1072283) (not e!874406))))

(assert (=> b!1568483 (= res!1072283 (isStrictlySorted!991 (t!51796 l!750)))))

(declare-fun b!1568484 () Bool)

(declare-fun res!1072285 () Bool)

(assert (=> b!1568484 (=> (not res!1072285) (not e!874406))))

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1568484 (= res!1072285 (and ((_ is Cons!36877) l!750) (bvslt (_1!12743 (h!38325 l!750)) key1!37) (bvslt (_1!12743 (h!38325 l!750)) key2!21)))))

(declare-fun b!1568485 () Bool)

(declare-fun e!874407 () Bool)

(declare-fun tp_is_empty!39027 () Bool)

(declare-fun tp!114043 () Bool)

(assert (=> b!1568485 (= e!874407 (and tp_is_empty!39027 tp!114043))))

(declare-fun b!1568486 () Bool)

(assert (=> b!1568486 (= e!874406 (not true))))

(declare-fun v1!32 () B!2476)

(declare-fun v2!10 () B!2476)

(declare-fun insertStrictlySorted!578 (List!36881 (_ BitVec 64) B!2476) List!36881)

(assert (=> b!1568486 (= (insertStrictlySorted!578 (insertStrictlySorted!578 (t!51796 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!578 (insertStrictlySorted!578 (t!51796 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52014 0))(
  ( (Unit!52015) )
))
(declare-fun lt!673129 () Unit!52014)

(declare-fun lemmaInsertStrictlySortedCommutative!5 (List!36881 (_ BitVec 64) B!2476 (_ BitVec 64) B!2476) Unit!52014)

(assert (=> b!1568486 (= lt!673129 (lemmaInsertStrictlySortedCommutative!5 (t!51796 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun res!1072286 () Bool)

(assert (=> start!134358 (=> (not res!1072286) (not e!874406))))

(assert (=> start!134358 (= res!1072286 (not (= key1!37 key2!21)))))

(assert (=> start!134358 e!874406))

(assert (=> start!134358 tp_is_empty!39027))

(assert (=> start!134358 e!874407))

(assert (=> start!134358 true))

(assert (= (and start!134358 res!1072286) b!1568482))

(assert (= (and b!1568482 res!1072284) b!1568484))

(assert (= (and b!1568484 res!1072285) b!1568483))

(assert (= (and b!1568483 res!1072283) b!1568486))

(assert (= (and start!134358 ((_ is Cons!36877) l!750)) b!1568485))

(declare-fun m!1443135 () Bool)

(assert (=> b!1568482 m!1443135))

(declare-fun m!1443137 () Bool)

(assert (=> b!1568483 m!1443137))

(declare-fun m!1443139 () Bool)

(assert (=> b!1568486 m!1443139))

(assert (=> b!1568486 m!1443139))

(declare-fun m!1443141 () Bool)

(assert (=> b!1568486 m!1443141))

(declare-fun m!1443143 () Bool)

(assert (=> b!1568486 m!1443143))

(declare-fun m!1443145 () Bool)

(assert (=> b!1568486 m!1443145))

(assert (=> b!1568486 m!1443143))

(declare-fun m!1443147 () Bool)

(assert (=> b!1568486 m!1443147))

(check-sat (not b!1568486) (not b!1568482) tp_is_empty!39027 (not b!1568485) (not b!1568483))
