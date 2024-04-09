; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132762 () Bool)

(assert start!132762)

(declare-fun b!1555032 () Bool)

(declare-fun res!1064153 () Bool)

(declare-fun e!865982 () Bool)

(assert (=> b!1555032 (=> (not res!1064153) (not e!865982))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-datatypes ((B!2272 0))(
  ( (B!2273 (val!19222 Int)) )
))
(declare-datatypes ((tuple2!24960 0))(
  ( (tuple2!24961 (_1!12490 (_ BitVec 64)) (_2!12490 B!2272)) )
))
(declare-datatypes ((List!36402 0))(
  ( (Nil!36399) (Cons!36398 (h!37845 tuple2!24960) (t!51130 List!36402)) )
))
(declare-fun l!1177 () List!36402)

(declare-fun otherKey!50 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1555032 (= res!1064153 (and (not (= newKey!105 otherKey!50)) ((_ is Cons!36398) l!1177) (not (= (_1!12490 (h!37845 l!1177)) otherKey!50))))))

(declare-fun res!1064151 () Bool)

(assert (=> start!132762 (=> (not res!1064151) (not e!865982))))

(declare-fun isStrictlySorted!912 (List!36402) Bool)

(assert (=> start!132762 (= res!1064151 (isStrictlySorted!912 l!1177))))

(assert (=> start!132762 e!865982))

(declare-fun e!865983 () Bool)

(assert (=> start!132762 e!865983))

(assert (=> start!132762 true))

(declare-fun tp_is_empty!38283 () Bool)

(assert (=> start!132762 tp_is_empty!38283))

(declare-fun b!1555033 () Bool)

(declare-fun tp!112258 () Bool)

(assert (=> b!1555033 (= e!865983 (and tp_is_empty!38283 tp!112258))))

(declare-fun b!1555034 () Bool)

(declare-fun res!1064152 () Bool)

(assert (=> b!1555034 (=> (not res!1064152) (not e!865982))))

(assert (=> b!1555034 (= res!1064152 (isStrictlySorted!912 (t!51130 l!1177)))))

(declare-fun b!1555035 () Bool)

(assert (=> b!1555035 (= e!865982 (not true))))

(declare-fun e!865981 () Bool)

(assert (=> b!1555035 e!865981))

(declare-fun res!1064154 () Bool)

(assert (=> b!1555035 (=> (not res!1064154) (not e!865981))))

(declare-fun lt!670138 () List!36402)

(declare-fun containsKey!784 (List!36402 (_ BitVec 64)) Bool)

(assert (=> b!1555035 (= res!1064154 (= (containsKey!784 lt!670138 otherKey!50) (containsKey!784 (t!51130 l!1177) otherKey!50)))))

(declare-fun newValue!105 () B!2272)

(declare-fun insertStrictlySorted!526 (List!36402 (_ BitVec 64) B!2272) List!36402)

(assert (=> b!1555035 (= lt!670138 (insertStrictlySorted!526 (t!51130 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51751 0))(
  ( (Unit!51752) )
))
(declare-fun lt!670139 () Unit!51751)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!23 (List!36402 (_ BitVec 64) B!2272 (_ BitVec 64)) Unit!51751)

(assert (=> b!1555035 (= lt!670139 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!23 (t!51130 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1555036 () Bool)

(declare-datatypes ((Option!841 0))(
  ( (Some!840 (v!22021 B!2272)) (None!839) )
))
(declare-fun getValueByKey!766 (List!36402 (_ BitVec 64)) Option!841)

(assert (=> b!1555036 (= e!865981 (= (getValueByKey!766 lt!670138 otherKey!50) (getValueByKey!766 (t!51130 l!1177) otherKey!50)))))

(assert (= (and start!132762 res!1064151) b!1555032))

(assert (= (and b!1555032 res!1064153) b!1555034))

(assert (= (and b!1555034 res!1064152) b!1555035))

(assert (= (and b!1555035 res!1064154) b!1555036))

(assert (= (and start!132762 ((_ is Cons!36398) l!1177)) b!1555033))

(declare-fun m!1433155 () Bool)

(assert (=> start!132762 m!1433155))

(declare-fun m!1433157 () Bool)

(assert (=> b!1555034 m!1433157))

(declare-fun m!1433159 () Bool)

(assert (=> b!1555035 m!1433159))

(declare-fun m!1433161 () Bool)

(assert (=> b!1555035 m!1433161))

(declare-fun m!1433163 () Bool)

(assert (=> b!1555035 m!1433163))

(declare-fun m!1433165 () Bool)

(assert (=> b!1555035 m!1433165))

(declare-fun m!1433167 () Bool)

(assert (=> b!1555036 m!1433167))

(declare-fun m!1433169 () Bool)

(assert (=> b!1555036 m!1433169))

(check-sat tp_is_empty!38283 (not b!1555033) (not b!1555036) (not start!132762) (not b!1555034) (not b!1555035))
(check-sat)
