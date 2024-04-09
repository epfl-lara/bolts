; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134388 () Bool)

(assert start!134388)

(declare-fun b!1568827 () Bool)

(declare-fun e!874587 () Bool)

(declare-fun tp_is_empty!39039 () Bool)

(declare-fun tp!114070 () Bool)

(assert (=> b!1568827 (= e!874587 (and tp_is_empty!39039 tp!114070))))

(declare-fun b!1568828 () Bool)

(declare-fun res!1072427 () Bool)

(declare-fun e!874586 () Bool)

(assert (=> b!1568828 (=> (not res!1072427) (not e!874586))))

(declare-datatypes ((B!2488 0))(
  ( (B!2489 (val!19606 Int)) )
))
(declare-datatypes ((tuple2!25478 0))(
  ( (tuple2!25479 (_1!12749 (_ BitVec 64)) (_2!12749 B!2488)) )
))
(declare-datatypes ((List!36887 0))(
  ( (Nil!36884) (Cons!36883 (h!38331 tuple2!25478) (t!51802 List!36887)) )
))
(declare-fun l!750 () List!36887)

(declare-fun isStrictlySorted!997 (List!36887) Bool)

(assert (=> b!1568828 (= res!1072427 (isStrictlySorted!997 l!750))))

(declare-fun b!1568829 () Bool)

(declare-fun res!1072428 () Bool)

(assert (=> b!1568829 (=> (not res!1072428) (not e!874586))))

(assert (=> b!1568829 (= res!1072428 (isStrictlySorted!997 (t!51802 l!750)))))

(declare-fun b!1568831 () Bool)

(declare-fun res!1072430 () Bool)

(assert (=> b!1568831 (=> (not res!1072430) (not e!874586))))

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1568831 (= res!1072430 (and ((_ is Cons!36883) l!750) (bvslt (_1!12749 (h!38331 l!750)) key1!37) (bvslt (_1!12749 (h!38331 l!750)) key2!21)))))

(declare-fun res!1072429 () Bool)

(assert (=> start!134388 (=> (not res!1072429) (not e!874586))))

(assert (=> start!134388 (= res!1072429 (not (= key1!37 key2!21)))))

(assert (=> start!134388 e!874586))

(assert (=> start!134388 tp_is_empty!39039))

(assert (=> start!134388 e!874587))

(assert (=> start!134388 true))

(declare-fun b!1568830 () Bool)

(assert (=> b!1568830 (= e!874586 (not true))))

(declare-fun v1!32 () B!2488)

(declare-fun v2!10 () B!2488)

(declare-fun insertStrictlySorted!584 (List!36887 (_ BitVec 64) B!2488) List!36887)

(assert (=> b!1568830 (= (insertStrictlySorted!584 (insertStrictlySorted!584 (t!51802 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!584 (insertStrictlySorted!584 (t!51802 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52026 0))(
  ( (Unit!52027) )
))
(declare-fun lt!673177 () Unit!52026)

(declare-fun lemmaInsertStrictlySortedCommutative!11 (List!36887 (_ BitVec 64) B!2488 (_ BitVec 64) B!2488) Unit!52026)

(assert (=> b!1568830 (= lt!673177 (lemmaInsertStrictlySortedCommutative!11 (t!51802 l!750) key1!37 v1!32 key2!21 v2!10))))

(assert (= (and start!134388 res!1072429) b!1568828))

(assert (= (and b!1568828 res!1072427) b!1568831))

(assert (= (and b!1568831 res!1072430) b!1568829))

(assert (= (and b!1568829 res!1072428) b!1568830))

(assert (= (and start!134388 ((_ is Cons!36883) l!750)) b!1568827))

(declare-fun m!1443405 () Bool)

(assert (=> b!1568828 m!1443405))

(declare-fun m!1443407 () Bool)

(assert (=> b!1568829 m!1443407))

(declare-fun m!1443409 () Bool)

(assert (=> b!1568830 m!1443409))

(assert (=> b!1568830 m!1443409))

(declare-fun m!1443411 () Bool)

(assert (=> b!1568830 m!1443411))

(declare-fun m!1443413 () Bool)

(assert (=> b!1568830 m!1443413))

(declare-fun m!1443415 () Bool)

(assert (=> b!1568830 m!1443415))

(assert (=> b!1568830 m!1443413))

(declare-fun m!1443417 () Bool)

(assert (=> b!1568830 m!1443417))

(check-sat (not b!1568827) tp_is_empty!39039 (not b!1568830) (not b!1568828) (not b!1568829))
