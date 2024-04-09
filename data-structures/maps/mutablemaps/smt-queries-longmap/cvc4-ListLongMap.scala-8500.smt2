; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103642 () Bool)

(assert start!103642)

(declare-fun b!1241048 () Bool)

(declare-fun res!828036 () Bool)

(declare-fun e!703468 () Bool)

(assert (=> b!1241048 (=> (not res!828036) (not e!703468))))

(declare-datatypes ((B!1830 0))(
  ( (B!1831 (val!15677 Int)) )
))
(declare-datatypes ((tuple2!20382 0))(
  ( (tuple2!20383 (_1!10201 (_ BitVec 64)) (_2!10201 B!1830)) )
))
(declare-datatypes ((List!27506 0))(
  ( (Nil!27503) (Cons!27502 (h!28711 tuple2!20382) (t!40976 List!27506)) )
))
(declare-fun l!644 () List!27506)

(declare-fun isStrictlySorted!740 (List!27506) Bool)

(assert (=> b!1241048 (= res!828036 (isStrictlySorted!740 (t!40976 l!644)))))

(declare-fun res!828034 () Bool)

(assert (=> start!103642 (=> (not res!828034) (not e!703468))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103642 (= res!828034 (not (= key1!25 key2!15)))))

(assert (=> start!103642 e!703468))

(assert (=> start!103642 true))

(declare-fun e!703469 () Bool)

(assert (=> start!103642 e!703469))

(declare-fun tp_is_empty!31229 () Bool)

(assert (=> start!103642 tp_is_empty!31229))

(declare-fun b!1241049 () Bool)

(declare-fun res!828035 () Bool)

(assert (=> b!1241049 (=> (not res!828035) (not e!703468))))

(assert (=> b!1241049 (= res!828035 (isStrictlySorted!740 l!644))))

(declare-fun b!1241050 () Bool)

(declare-fun tp!92607 () Bool)

(assert (=> b!1241050 (= e!703469 (and tp_is_empty!31229 tp!92607))))

(declare-fun b!1241051 () Bool)

(declare-fun res!828037 () Bool)

(assert (=> b!1241051 (=> (not res!828037) (not e!703468))))

(assert (=> b!1241051 (= res!828037 (is-Cons!27502 l!644))))

(declare-fun b!1241052 () Bool)

(assert (=> b!1241052 (= e!703468 (not true))))

(declare-fun v1!20 () B!1830)

(declare-fun insertStrictlySorted!430 (List!27506 (_ BitVec 64) B!1830) List!27506)

(declare-fun removeStrictlySorted!124 (List!27506 (_ BitVec 64)) List!27506)

(assert (=> b!1241052 (= (insertStrictlySorted!430 (removeStrictlySorted!124 (t!40976 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!124 (insertStrictlySorted!430 (t!40976 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41195 0))(
  ( (Unit!41196) )
))
(declare-fun lt!562033 () Unit!41195)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!12 (List!27506 (_ BitVec 64) B!1830 (_ BitVec 64)) Unit!41195)

(assert (=> b!1241052 (= lt!562033 (lemmaInsertAndRemoveStrictlySortedCommutative!12 (t!40976 l!644) key1!25 v1!20 key2!15))))

(assert (= (and start!103642 res!828034) b!1241049))

(assert (= (and b!1241049 res!828035) b!1241051))

(assert (= (and b!1241051 res!828037) b!1241048))

(assert (= (and b!1241048 res!828036) b!1241052))

(assert (= (and start!103642 (is-Cons!27502 l!644)) b!1241050))

(declare-fun m!1144257 () Bool)

(assert (=> b!1241048 m!1144257))

(declare-fun m!1144259 () Bool)

(assert (=> b!1241049 m!1144259))

(declare-fun m!1144261 () Bool)

(assert (=> b!1241052 m!1144261))

(declare-fun m!1144263 () Bool)

(assert (=> b!1241052 m!1144263))

(assert (=> b!1241052 m!1144261))

(declare-fun m!1144265 () Bool)

(assert (=> b!1241052 m!1144265))

(declare-fun m!1144267 () Bool)

(assert (=> b!1241052 m!1144267))

(assert (=> b!1241052 m!1144265))

(declare-fun m!1144269 () Bool)

(assert (=> b!1241052 m!1144269))

(push 1)

(assert (not b!1241052))

(assert (not b!1241050))

(assert (not b!1241049))

(assert (not b!1241048))

(assert tp_is_empty!31229)

(check-sat)

(pop 1)

