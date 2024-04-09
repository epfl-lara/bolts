; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7146 () Bool)

(assert start!7146)

(declare-fun b!45803 () Bool)

(declare-fun res!26827 () Bool)

(declare-fun e!29162 () Bool)

(assert (=> b!45803 (=> (not res!26827) (not e!29162))))

(declare-datatypes ((B!838 0))(
  ( (B!839 (val!1006 Int)) )
))
(declare-datatypes ((tuple2!1664 0))(
  ( (tuple2!1665 (_1!842 (_ BitVec 64)) (_2!842 B!838)) )
))
(declare-datatypes ((List!1240 0))(
  ( (Nil!1237) (Cons!1236 (h!1816 tuple2!1664) (t!4273 List!1240)) )
))
(declare-fun l!812 () List!1240)

(declare-fun isStrictlySorted!217 (List!1240) Bool)

(assert (=> b!45803 (= res!26827 (isStrictlySorted!217 (t!4273 l!812)))))

(declare-fun b!45805 () Bool)

(declare-fun e!29161 () Bool)

(declare-fun tp_is_empty!1935 () Bool)

(declare-fun tp!6005 () Bool)

(assert (=> b!45805 (= e!29161 (and tp_is_empty!1935 tp!6005))))

(declare-fun b!45804 () Bool)

(assert (=> b!45804 (= e!29162 (not true))))

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun removeStrictlySorted!32 (List!1240 (_ BitVec 64)) List!1240)

(assert (=> b!45804 (= (removeStrictlySorted!32 (removeStrictlySorted!32 (t!4273 l!812) key1!43) key2!27) (removeStrictlySorted!32 (removeStrictlySorted!32 (t!4273 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1311 0))(
  ( (Unit!1312) )
))
(declare-fun lt!20228 () Unit!1311)

(declare-fun lemmaRemoveStrictlySortedCommutative!11 (List!1240 (_ BitVec 64) (_ BitVec 64)) Unit!1311)

(assert (=> b!45804 (= lt!20228 (lemmaRemoveStrictlySortedCommutative!11 (t!4273 l!812) key1!43 key2!27))))

(declare-fun res!26826 () Bool)

(assert (=> start!7146 (=> (not res!26826) (not e!29162))))

(assert (=> start!7146 (= res!26826 (isStrictlySorted!217 l!812))))

(assert (=> start!7146 e!29162))

(assert (=> start!7146 e!29161))

(assert (=> start!7146 true))

(declare-fun b!45802 () Bool)

(declare-fun res!26825 () Bool)

(assert (=> b!45802 (=> (not res!26825) (not e!29162))))

(get-info :version)

(assert (=> b!45802 (= res!26825 ((_ is Cons!1236) l!812))))

(assert (= (and start!7146 res!26826) b!45802))

(assert (= (and b!45802 res!26825) b!45803))

(assert (= (and b!45803 res!26827) b!45804))

(assert (= (and start!7146 ((_ is Cons!1236) l!812)) b!45805))

(declare-fun m!40367 () Bool)

(assert (=> b!45803 m!40367))

(declare-fun m!40369 () Bool)

(assert (=> b!45804 m!40369))

(declare-fun m!40371 () Bool)

(assert (=> b!45804 m!40371))

(declare-fun m!40373 () Bool)

(assert (=> b!45804 m!40373))

(assert (=> b!45804 m!40371))

(assert (=> b!45804 m!40369))

(declare-fun m!40375 () Bool)

(assert (=> b!45804 m!40375))

(declare-fun m!40377 () Bool)

(assert (=> b!45804 m!40377))

(declare-fun m!40379 () Bool)

(assert (=> start!7146 m!40379))

(check-sat (not b!45803) (not b!45804) (not b!45805) tp_is_empty!1935 (not start!7146))
(check-sat)
