; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113804 () Bool)

(assert start!113804)

(declare-fun b!1349941 () Bool)

(declare-fun res!895591 () Bool)

(declare-fun e!767965 () Bool)

(assert (=> b!1349941 (=> (not res!895591) (not e!767965))))

(declare-fun k!1141 () (_ BitVec 64))

(declare-fun otherKey!123 () (_ BitVec 64))

(assert (=> b!1349941 (= res!895591 (not (= k!1141 otherKey!123)))))

(declare-fun b!1349942 () Bool)

(declare-fun res!895593 () Bool)

(assert (=> b!1349942 (=> (not res!895593) (not e!767965))))

(declare-datatypes ((V!55249 0))(
  ( (V!55250 (val!18879 Int)) )
))
(declare-datatypes ((tuple2!24492 0))(
  ( (tuple2!24493 (_1!12256 (_ BitVec 64)) (_2!12256 V!55249)) )
))
(declare-datatypes ((List!31652 0))(
  ( (Nil!31649) (Cons!31648 (h!32857 tuple2!24492) (t!46317 List!31652)) )
))
(declare-datatypes ((ListLongMap!22161 0))(
  ( (ListLongMap!22162 (toList!11096 List!31652)) )
))
(declare-fun lm!1456 () ListLongMap!22161)

(declare-fun contains!9217 (ListLongMap!22161 (_ BitVec 64)) Bool)

(assert (=> b!1349942 (= res!895593 (not (contains!9217 lm!1456 k!1141)))))

(declare-fun b!1349943 () Bool)

(declare-fun e!767964 () Bool)

(declare-fun tp!110630 () Bool)

(assert (=> b!1349943 (= e!767964 tp!110630)))

(declare-fun res!895590 () Bool)

(assert (=> start!113804 (=> (not res!895590) (not e!767965))))

(declare-fun value!554 () V!55249)

(declare-fun +!4837 (ListLongMap!22161 tuple2!24492) ListLongMap!22161)

(assert (=> start!113804 (= res!895590 (contains!9217 (+!4837 lm!1456 (tuple2!24493 otherKey!123 value!554)) k!1141))))

(assert (=> start!113804 e!767965))

(declare-fun inv!48426 (ListLongMap!22161) Bool)

(assert (=> start!113804 (and (inv!48426 lm!1456) e!767964)))

(assert (=> start!113804 true))

(declare-fun tp_is_empty!37609 () Bool)

(assert (=> start!113804 tp_is_empty!37609))

(declare-fun b!1349944 () Bool)

(declare-fun res!895592 () Bool)

(assert (=> b!1349944 (=> (not res!895592) (not e!767965))))

(assert (=> b!1349944 (= res!895592 (not (= otherKey!123 k!1141)))))

(declare-fun b!1349945 () Bool)

(assert (=> b!1349945 (= e!767965 (not true))))

(assert (=> b!1349945 false))

(declare-datatypes ((Unit!44165 0))(
  ( (Unit!44166) )
))
(declare-fun lt!596816 () Unit!44165)

(declare-fun addStillNotContains!515 (ListLongMap!22161 (_ BitVec 64) V!55249 (_ BitVec 64)) Unit!44165)

(assert (=> b!1349945 (= lt!596816 (addStillNotContains!515 lm!1456 otherKey!123 value!554 k!1141))))

(assert (= (and start!113804 res!895590) b!1349941))

(assert (= (and b!1349941 res!895591) b!1349942))

(assert (= (and b!1349942 res!895593) b!1349944))

(assert (= (and b!1349944 res!895592) b!1349945))

(assert (= start!113804 b!1349943))

(declare-fun m!1237285 () Bool)

(assert (=> b!1349942 m!1237285))

(declare-fun m!1237287 () Bool)

(assert (=> start!113804 m!1237287))

(assert (=> start!113804 m!1237287))

(declare-fun m!1237289 () Bool)

(assert (=> start!113804 m!1237289))

(declare-fun m!1237291 () Bool)

(assert (=> start!113804 m!1237291))

(declare-fun m!1237293 () Bool)

(assert (=> b!1349945 m!1237293))

(push 1)

(assert (not b!1349942))

(assert tp_is_empty!37609)

(assert (not b!1349945))

(assert (not b!1349943))

(assert (not start!113804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

