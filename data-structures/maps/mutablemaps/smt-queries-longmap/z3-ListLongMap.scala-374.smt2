; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7116 () Bool)

(assert start!7116)

(declare-fun b!45583 () Bool)

(declare-fun e!29024 () Bool)

(declare-fun tp_is_empty!1923 () Bool)

(declare-fun tp!5978 () Bool)

(assert (=> b!45583 (= e!29024 (and tp_is_empty!1923 tp!5978))))

(declare-fun b!45581 () Bool)

(declare-fun res!26720 () Bool)

(declare-fun e!29023 () Bool)

(assert (=> b!45581 (=> (not res!26720) (not e!29023))))

(declare-datatypes ((B!826 0))(
  ( (B!827 (val!1000 Int)) )
))
(declare-datatypes ((tuple2!1652 0))(
  ( (tuple2!1653 (_1!836 (_ BitVec 64)) (_2!836 B!826)) )
))
(declare-datatypes ((List!1234 0))(
  ( (Nil!1231) (Cons!1230 (h!1810 tuple2!1652) (t!4267 List!1234)) )
))
(declare-fun l!812 () List!1234)

(declare-fun isStrictlySorted!211 (List!1234) Bool)

(assert (=> b!45581 (= res!26720 (isStrictlySorted!211 (t!4267 l!812)))))

(declare-fun res!26722 () Bool)

(assert (=> start!7116 (=> (not res!26722) (not e!29023))))

(assert (=> start!7116 (= res!26722 (isStrictlySorted!211 l!812))))

(assert (=> start!7116 e!29023))

(assert (=> start!7116 e!29024))

(assert (=> start!7116 true))

(declare-fun b!45582 () Bool)

(assert (=> b!45582 (= e!29023 (not true))))

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun removeStrictlySorted!26 (List!1234 (_ BitVec 64)) List!1234)

(assert (=> b!45582 (= (removeStrictlySorted!26 (removeStrictlySorted!26 (t!4267 l!812) key1!43) key2!27) (removeStrictlySorted!26 (removeStrictlySorted!26 (t!4267 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1299 0))(
  ( (Unit!1300) )
))
(declare-fun lt!20180 () Unit!1299)

(declare-fun lemmaRemoveStrictlySortedCommutative!5 (List!1234 (_ BitVec 64) (_ BitVec 64)) Unit!1299)

(assert (=> b!45582 (= lt!20180 (lemmaRemoveStrictlySortedCommutative!5 (t!4267 l!812) key1!43 key2!27))))

(declare-fun b!45580 () Bool)

(declare-fun res!26721 () Bool)

(assert (=> b!45580 (=> (not res!26721) (not e!29023))))

(get-info :version)

(assert (=> b!45580 (= res!26721 ((_ is Cons!1230) l!812))))

(assert (= (and start!7116 res!26722) b!45580))

(assert (= (and b!45580 res!26721) b!45581))

(assert (= (and b!45581 res!26720) b!45582))

(assert (= (and start!7116 ((_ is Cons!1230) l!812)) b!45583))

(declare-fun m!40127 () Bool)

(assert (=> b!45581 m!40127))

(declare-fun m!40129 () Bool)

(assert (=> start!7116 m!40129))

(declare-fun m!40131 () Bool)

(assert (=> b!45582 m!40131))

(declare-fun m!40133 () Bool)

(assert (=> b!45582 m!40133))

(declare-fun m!40135 () Bool)

(assert (=> b!45582 m!40135))

(assert (=> b!45582 m!40133))

(assert (=> b!45582 m!40131))

(declare-fun m!40137 () Bool)

(assert (=> b!45582 m!40137))

(declare-fun m!40139 () Bool)

(assert (=> b!45582 m!40139))

(check-sat (not b!45582) (not b!45581) (not b!45583) tp_is_empty!1923 (not start!7116))
(check-sat)
