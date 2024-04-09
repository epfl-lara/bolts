; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103640 () Bool)

(assert start!103640)

(declare-fun b!1241033 () Bool)

(declare-fun e!703462 () Bool)

(assert (=> b!1241033 (= e!703462 (not true))))

(declare-datatypes ((B!1828 0))(
  ( (B!1829 (val!15676 Int)) )
))
(declare-fun v1!20 () B!1828)

(declare-fun key1!25 () (_ BitVec 64))

(declare-datatypes ((tuple2!20380 0))(
  ( (tuple2!20381 (_1!10200 (_ BitVec 64)) (_2!10200 B!1828)) )
))
(declare-datatypes ((List!27505 0))(
  ( (Nil!27502) (Cons!27501 (h!28710 tuple2!20380) (t!40975 List!27505)) )
))
(declare-fun l!644 () List!27505)

(declare-fun key2!15 () (_ BitVec 64))

(declare-fun insertStrictlySorted!429 (List!27505 (_ BitVec 64) B!1828) List!27505)

(declare-fun removeStrictlySorted!123 (List!27505 (_ BitVec 64)) List!27505)

(assert (=> b!1241033 (= (insertStrictlySorted!429 (removeStrictlySorted!123 (t!40975 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!123 (insertStrictlySorted!429 (t!40975 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41193 0))(
  ( (Unit!41194) )
))
(declare-fun lt!562030 () Unit!41193)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!11 (List!27505 (_ BitVec 64) B!1828 (_ BitVec 64)) Unit!41193)

(assert (=> b!1241033 (= lt!562030 (lemmaInsertAndRemoveStrictlySortedCommutative!11 (t!40975 l!644) key1!25 v1!20 key2!15))))

(declare-fun b!1241034 () Bool)

(declare-fun res!828024 () Bool)

(assert (=> b!1241034 (=> (not res!828024) (not e!703462))))

(get-info :version)

(assert (=> b!1241034 (= res!828024 ((_ is Cons!27501) l!644))))

(declare-fun b!1241035 () Bool)

(declare-fun res!828025 () Bool)

(assert (=> b!1241035 (=> (not res!828025) (not e!703462))))

(declare-fun isStrictlySorted!739 (List!27505) Bool)

(assert (=> b!1241035 (= res!828025 (isStrictlySorted!739 l!644))))

(declare-fun b!1241037 () Bool)

(declare-fun e!703463 () Bool)

(declare-fun tp_is_empty!31227 () Bool)

(declare-fun tp!92604 () Bool)

(assert (=> b!1241037 (= e!703463 (and tp_is_empty!31227 tp!92604))))

(declare-fun res!828022 () Bool)

(assert (=> start!103640 (=> (not res!828022) (not e!703462))))

(assert (=> start!103640 (= res!828022 (not (= key1!25 key2!15)))))

(assert (=> start!103640 e!703462))

(assert (=> start!103640 true))

(assert (=> start!103640 e!703463))

(assert (=> start!103640 tp_is_empty!31227))

(declare-fun b!1241036 () Bool)

(declare-fun res!828023 () Bool)

(assert (=> b!1241036 (=> (not res!828023) (not e!703462))))

(assert (=> b!1241036 (= res!828023 (isStrictlySorted!739 (t!40975 l!644)))))

(assert (= (and start!103640 res!828022) b!1241035))

(assert (= (and b!1241035 res!828025) b!1241034))

(assert (= (and b!1241034 res!828024) b!1241036))

(assert (= (and b!1241036 res!828023) b!1241033))

(assert (= (and start!103640 ((_ is Cons!27501) l!644)) b!1241037))

(declare-fun m!1144243 () Bool)

(assert (=> b!1241033 m!1144243))

(declare-fun m!1144245 () Bool)

(assert (=> b!1241033 m!1144245))

(assert (=> b!1241033 m!1144243))

(declare-fun m!1144247 () Bool)

(assert (=> b!1241033 m!1144247))

(declare-fun m!1144249 () Bool)

(assert (=> b!1241033 m!1144249))

(assert (=> b!1241033 m!1144247))

(declare-fun m!1144251 () Bool)

(assert (=> b!1241033 m!1144251))

(declare-fun m!1144253 () Bool)

(assert (=> b!1241035 m!1144253))

(declare-fun m!1144255 () Bool)

(assert (=> b!1241036 m!1144255))

(check-sat (not b!1241037) tp_is_empty!31227 (not b!1241033) (not b!1241035) (not b!1241036))
(check-sat)
