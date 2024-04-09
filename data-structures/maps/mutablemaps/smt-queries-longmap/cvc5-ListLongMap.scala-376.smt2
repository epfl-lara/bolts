; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7144 () Bool)

(assert start!7144)

(declare-fun res!26818 () Bool)

(declare-fun e!29155 () Bool)

(assert (=> start!7144 (=> (not res!26818) (not e!29155))))

(declare-datatypes ((B!836 0))(
  ( (B!837 (val!1005 Int)) )
))
(declare-datatypes ((tuple2!1662 0))(
  ( (tuple2!1663 (_1!841 (_ BitVec 64)) (_2!841 B!836)) )
))
(declare-datatypes ((List!1239 0))(
  ( (Nil!1236) (Cons!1235 (h!1815 tuple2!1662) (t!4272 List!1239)) )
))
(declare-fun l!812 () List!1239)

(declare-fun isStrictlySorted!216 (List!1239) Bool)

(assert (=> start!7144 (= res!26818 (isStrictlySorted!216 l!812))))

(assert (=> start!7144 e!29155))

(declare-fun e!29156 () Bool)

(assert (=> start!7144 e!29156))

(assert (=> start!7144 true))

(declare-fun b!45793 () Bool)

(declare-fun tp_is_empty!1933 () Bool)

(declare-fun tp!6002 () Bool)

(assert (=> b!45793 (= e!29156 (and tp_is_empty!1933 tp!6002))))

(declare-fun b!45792 () Bool)

(assert (=> b!45792 (= e!29155 (not true))))

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun removeStrictlySorted!31 (List!1239 (_ BitVec 64)) List!1239)

(assert (=> b!45792 (= (removeStrictlySorted!31 (removeStrictlySorted!31 (t!4272 l!812) key1!43) key2!27) (removeStrictlySorted!31 (removeStrictlySorted!31 (t!4272 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1309 0))(
  ( (Unit!1310) )
))
(declare-fun lt!20225 () Unit!1309)

(declare-fun lemmaRemoveStrictlySortedCommutative!10 (List!1239 (_ BitVec 64) (_ BitVec 64)) Unit!1309)

(assert (=> b!45792 (= lt!20225 (lemmaRemoveStrictlySortedCommutative!10 (t!4272 l!812) key1!43 key2!27))))

(declare-fun b!45790 () Bool)

(declare-fun res!26816 () Bool)

(assert (=> b!45790 (=> (not res!26816) (not e!29155))))

(assert (=> b!45790 (= res!26816 (is-Cons!1235 l!812))))

(declare-fun b!45791 () Bool)

(declare-fun res!26817 () Bool)

(assert (=> b!45791 (=> (not res!26817) (not e!29155))))

(assert (=> b!45791 (= res!26817 (isStrictlySorted!216 (t!4272 l!812)))))

(assert (= (and start!7144 res!26818) b!45790))

(assert (= (and b!45790 res!26816) b!45791))

(assert (= (and b!45791 res!26817) b!45792))

(assert (= (and start!7144 (is-Cons!1235 l!812)) b!45793))

(declare-fun m!40353 () Bool)

(assert (=> start!7144 m!40353))

(declare-fun m!40355 () Bool)

(assert (=> b!45792 m!40355))

(declare-fun m!40357 () Bool)

(assert (=> b!45792 m!40357))

(declare-fun m!40359 () Bool)

(assert (=> b!45792 m!40359))

(assert (=> b!45792 m!40357))

(assert (=> b!45792 m!40355))

(declare-fun m!40361 () Bool)

(assert (=> b!45792 m!40361))

(declare-fun m!40363 () Bool)

(assert (=> b!45792 m!40363))

(declare-fun m!40365 () Bool)

(assert (=> b!45791 m!40365))

(push 1)

(assert (not b!45793))

(assert (not b!45792))

(assert (not start!7144))

(assert (not b!45791))

(assert tp_is_empty!1933)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

