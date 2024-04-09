; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134360 () Bool)

(assert start!134360)

(declare-fun b!1568497 () Bool)

(declare-fun e!874413 () Bool)

(assert (=> b!1568497 (= e!874413 (not true))))

(declare-datatypes ((B!2478 0))(
  ( (B!2479 (val!19601 Int)) )
))
(declare-fun v1!32 () B!2478)

(declare-fun v2!10 () B!2478)

(declare-datatypes ((tuple2!25468 0))(
  ( (tuple2!25469 (_1!12744 (_ BitVec 64)) (_2!12744 B!2478)) )
))
(declare-datatypes ((List!36882 0))(
  ( (Nil!36879) (Cons!36878 (h!38326 tuple2!25468) (t!51797 List!36882)) )
))
(declare-fun l!750 () List!36882)

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun insertStrictlySorted!579 (List!36882 (_ BitVec 64) B!2478) List!36882)

(assert (=> b!1568497 (= (insertStrictlySorted!579 (insertStrictlySorted!579 (t!51797 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!579 (insertStrictlySorted!579 (t!51797 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52016 0))(
  ( (Unit!52017) )
))
(declare-fun lt!673132 () Unit!52016)

(declare-fun lemmaInsertStrictlySortedCommutative!6 (List!36882 (_ BitVec 64) B!2478 (_ BitVec 64) B!2478) Unit!52016)

(assert (=> b!1568497 (= lt!673132 (lemmaInsertStrictlySortedCommutative!6 (t!51797 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun res!1072298 () Bool)

(assert (=> start!134360 (=> (not res!1072298) (not e!874413))))

(assert (=> start!134360 (= res!1072298 (not (= key1!37 key2!21)))))

(assert (=> start!134360 e!874413))

(declare-fun tp_is_empty!39029 () Bool)

(assert (=> start!134360 tp_is_empty!39029))

(declare-fun e!874412 () Bool)

(assert (=> start!134360 e!874412))

(assert (=> start!134360 true))

(declare-fun b!1568498 () Bool)

(declare-fun res!1072295 () Bool)

(assert (=> b!1568498 (=> (not res!1072295) (not e!874413))))

(declare-fun isStrictlySorted!992 (List!36882) Bool)

(assert (=> b!1568498 (= res!1072295 (isStrictlySorted!992 l!750))))

(declare-fun b!1568499 () Bool)

(declare-fun tp!114046 () Bool)

(assert (=> b!1568499 (= e!874412 (and tp_is_empty!39029 tp!114046))))

(declare-fun b!1568500 () Bool)

(declare-fun res!1072296 () Bool)

(assert (=> b!1568500 (=> (not res!1072296) (not e!874413))))

(assert (=> b!1568500 (= res!1072296 (and (is-Cons!36878 l!750) (bvslt (_1!12744 (h!38326 l!750)) key1!37) (bvslt (_1!12744 (h!38326 l!750)) key2!21)))))

(declare-fun b!1568501 () Bool)

(declare-fun res!1072297 () Bool)

(assert (=> b!1568501 (=> (not res!1072297) (not e!874413))))

(assert (=> b!1568501 (= res!1072297 (isStrictlySorted!992 (t!51797 l!750)))))

(assert (= (and start!134360 res!1072298) b!1568498))

(assert (= (and b!1568498 res!1072295) b!1568500))

(assert (= (and b!1568500 res!1072296) b!1568501))

(assert (= (and b!1568501 res!1072297) b!1568497))

(assert (= (and start!134360 (is-Cons!36878 l!750)) b!1568499))

(declare-fun m!1443149 () Bool)

(assert (=> b!1568497 m!1443149))

(assert (=> b!1568497 m!1443149))

(declare-fun m!1443151 () Bool)

(assert (=> b!1568497 m!1443151))

(declare-fun m!1443153 () Bool)

(assert (=> b!1568497 m!1443153))

(declare-fun m!1443155 () Bool)

(assert (=> b!1568497 m!1443155))

(assert (=> b!1568497 m!1443153))

(declare-fun m!1443157 () Bool)

(assert (=> b!1568497 m!1443157))

(declare-fun m!1443159 () Bool)

(assert (=> b!1568498 m!1443159))

(declare-fun m!1443161 () Bool)

(assert (=> b!1568501 m!1443161))

(push 1)

(assert (not b!1568498))

(assert (not b!1568499))

(assert (not b!1568501))

(assert tp_is_empty!39029)

(assert (not b!1568497))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

