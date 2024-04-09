; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113814 () Bool)

(assert start!113814)

(declare-fun res!895635 () Bool)

(declare-fun e!767994 () Bool)

(assert (=> start!113814 (=> (not res!895635) (not e!767994))))

(declare-datatypes ((V!55261 0))(
  ( (V!55262 (val!18884 Int)) )
))
(declare-fun value!554 () V!55261)

(declare-datatypes ((tuple2!24502 0))(
  ( (tuple2!24503 (_1!12261 (_ BitVec 64)) (_2!12261 V!55261)) )
))
(declare-datatypes ((List!31657 0))(
  ( (Nil!31654) (Cons!31653 (h!32862 tuple2!24502) (t!46322 List!31657)) )
))
(declare-datatypes ((ListLongMap!22171 0))(
  ( (ListLongMap!22172 (toList!11101 List!31657)) )
))
(declare-fun lm!1456 () ListLongMap!22171)

(declare-fun otherKey!123 () (_ BitVec 64))

(declare-fun k!1141 () (_ BitVec 64))

(declare-fun contains!9222 (ListLongMap!22171 (_ BitVec 64)) Bool)

(declare-fun +!4842 (ListLongMap!22171 tuple2!24502) ListLongMap!22171)

(assert (=> start!113814 (= res!895635 (contains!9222 (+!4842 lm!1456 (tuple2!24503 otherKey!123 value!554)) k!1141))))

(assert (=> start!113814 e!767994))

(declare-fun e!767995 () Bool)

(declare-fun inv!48436 (ListLongMap!22171) Bool)

(assert (=> start!113814 (and (inv!48436 lm!1456) e!767995)))

(assert (=> start!113814 true))

(declare-fun tp_is_empty!37619 () Bool)

(assert (=> start!113814 tp_is_empty!37619))

(declare-fun b!1350000 () Bool)

(declare-fun res!895634 () Bool)

(assert (=> b!1350000 (=> (not res!895634) (not e!767994))))

(assert (=> b!1350000 (= res!895634 (not (= k!1141 otherKey!123)))))

(declare-fun b!1350001 () Bool)

(assert (=> b!1350001 (= e!767994 false)))

(declare-fun lt!596831 () Bool)

(assert (=> b!1350001 (= lt!596831 (contains!9222 lm!1456 k!1141))))

(declare-fun b!1350002 () Bool)

(declare-fun tp!110645 () Bool)

(assert (=> b!1350002 (= e!767995 tp!110645)))

(assert (= (and start!113814 res!895635) b!1350000))

(assert (= (and b!1350000 res!895634) b!1350001))

(assert (= start!113814 b!1350002))

(declare-fun m!1237331 () Bool)

(assert (=> start!113814 m!1237331))

(assert (=> start!113814 m!1237331))

(declare-fun m!1237333 () Bool)

(assert (=> start!113814 m!1237333))

(declare-fun m!1237335 () Bool)

(assert (=> start!113814 m!1237335))

(declare-fun m!1237337 () Bool)

(assert (=> b!1350001 m!1237337))

(push 1)

(assert (not start!113814))

(assert (not b!1350001))

(assert (not b!1350002))

(assert tp_is_empty!37619)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

