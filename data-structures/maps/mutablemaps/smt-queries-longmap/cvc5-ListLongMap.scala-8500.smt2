; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103638 () Bool)

(assert start!103638)

(declare-fun b!1241018 () Bool)

(declare-fun res!828011 () Bool)

(declare-fun e!703457 () Bool)

(assert (=> b!1241018 (=> (not res!828011) (not e!703457))))

(declare-datatypes ((B!1826 0))(
  ( (B!1827 (val!15675 Int)) )
))
(declare-datatypes ((tuple2!20378 0))(
  ( (tuple2!20379 (_1!10199 (_ BitVec 64)) (_2!10199 B!1826)) )
))
(declare-datatypes ((List!27504 0))(
  ( (Nil!27501) (Cons!27500 (h!28709 tuple2!20378) (t!40974 List!27504)) )
))
(declare-fun l!644 () List!27504)

(declare-fun isStrictlySorted!738 (List!27504) Bool)

(assert (=> b!1241018 (= res!828011 (isStrictlySorted!738 l!644))))

(declare-fun b!1241019 () Bool)

(assert (=> b!1241019 (= e!703457 (not true))))

(declare-fun v1!20 () B!1826)

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(declare-fun insertStrictlySorted!428 (List!27504 (_ BitVec 64) B!1826) List!27504)

(declare-fun removeStrictlySorted!122 (List!27504 (_ BitVec 64)) List!27504)

(assert (=> b!1241019 (= (insertStrictlySorted!428 (removeStrictlySorted!122 (t!40974 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!122 (insertStrictlySorted!428 (t!40974 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41191 0))(
  ( (Unit!41192) )
))
(declare-fun lt!562027 () Unit!41191)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!10 (List!27504 (_ BitVec 64) B!1826 (_ BitVec 64)) Unit!41191)

(assert (=> b!1241019 (= lt!562027 (lemmaInsertAndRemoveStrictlySortedCommutative!10 (t!40974 l!644) key1!25 v1!20 key2!15))))

(declare-fun res!828013 () Bool)

(assert (=> start!103638 (=> (not res!828013) (not e!703457))))

(assert (=> start!103638 (= res!828013 (not (= key1!25 key2!15)))))

(assert (=> start!103638 e!703457))

(assert (=> start!103638 true))

(declare-fun e!703456 () Bool)

(assert (=> start!103638 e!703456))

(declare-fun tp_is_empty!31225 () Bool)

(assert (=> start!103638 tp_is_empty!31225))

(declare-fun b!1241020 () Bool)

(declare-fun tp!92601 () Bool)

(assert (=> b!1241020 (= e!703456 (and tp_is_empty!31225 tp!92601))))

(declare-fun b!1241021 () Bool)

(declare-fun res!828010 () Bool)

(assert (=> b!1241021 (=> (not res!828010) (not e!703457))))

(assert (=> b!1241021 (= res!828010 (isStrictlySorted!738 (t!40974 l!644)))))

(declare-fun b!1241022 () Bool)

(declare-fun res!828012 () Bool)

(assert (=> b!1241022 (=> (not res!828012) (not e!703457))))

(assert (=> b!1241022 (= res!828012 (is-Cons!27500 l!644))))

(assert (= (and start!103638 res!828013) b!1241018))

(assert (= (and b!1241018 res!828011) b!1241022))

(assert (= (and b!1241022 res!828012) b!1241021))

(assert (= (and b!1241021 res!828010) b!1241019))

(assert (= (and start!103638 (is-Cons!27500 l!644)) b!1241020))

(declare-fun m!1144229 () Bool)

(assert (=> b!1241018 m!1144229))

(declare-fun m!1144231 () Bool)

(assert (=> b!1241019 m!1144231))

(declare-fun m!1144233 () Bool)

(assert (=> b!1241019 m!1144233))

(assert (=> b!1241019 m!1144231))

(declare-fun m!1144235 () Bool)

(assert (=> b!1241019 m!1144235))

(declare-fun m!1144237 () Bool)

(assert (=> b!1241019 m!1144237))

(assert (=> b!1241019 m!1144235))

(declare-fun m!1144239 () Bool)

(assert (=> b!1241019 m!1144239))

(declare-fun m!1144241 () Bool)

(assert (=> b!1241021 m!1144241))

(push 1)

(assert (not b!1241019))

(assert (not b!1241018))

(assert (not b!1241021))

(assert tp_is_empty!31225)

(assert (not b!1241020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

