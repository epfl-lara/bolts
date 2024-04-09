; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113796 () Bool)

(assert start!113796)

(declare-fun res!895553 () Bool)

(declare-fun e!767940 () Bool)

(assert (=> start!113796 (=> (not res!895553) (not e!767940))))

(declare-datatypes ((V!55237 0))(
  ( (V!55238 (val!18875 Int)) )
))
(declare-fun value!554 () V!55237)

(declare-datatypes ((tuple2!24484 0))(
  ( (tuple2!24485 (_1!12252 (_ BitVec 64)) (_2!12252 V!55237)) )
))
(declare-datatypes ((List!31648 0))(
  ( (Nil!31645) (Cons!31644 (h!32853 tuple2!24484) (t!46313 List!31648)) )
))
(declare-datatypes ((ListLongMap!22153 0))(
  ( (ListLongMap!22154 (toList!11092 List!31648)) )
))
(declare-fun lm!1456 () ListLongMap!22153)

(declare-fun otherKey!123 () (_ BitVec 64))

(declare-fun k!1141 () (_ BitVec 64))

(declare-fun contains!9213 (ListLongMap!22153 (_ BitVec 64)) Bool)

(declare-fun +!4833 (ListLongMap!22153 tuple2!24484) ListLongMap!22153)

(assert (=> start!113796 (= res!895553 (contains!9213 (+!4833 lm!1456 (tuple2!24485 otherKey!123 value!554)) k!1141))))

(assert (=> start!113796 e!767940))

(declare-fun e!767941 () Bool)

(declare-fun inv!48412 (ListLongMap!22153) Bool)

(assert (=> start!113796 (and (inv!48412 lm!1456) e!767941)))

(assert (=> start!113796 true))

(declare-fun tp_is_empty!37601 () Bool)

(assert (=> start!113796 tp_is_empty!37601))

(declare-fun b!1349892 () Bool)

(declare-fun res!895554 () Bool)

(assert (=> b!1349892 (=> (not res!895554) (not e!767940))))

(assert (=> b!1349892 (= res!895554 (not (= k!1141 otherKey!123)))))

(declare-fun b!1349893 () Bool)

(assert (=> b!1349893 (= e!767940 false)))

(declare-fun lt!596813 () Bool)

(assert (=> b!1349893 (= lt!596813 (contains!9213 lm!1456 k!1141))))

(declare-fun b!1349894 () Bool)

(declare-fun tp!110618 () Bool)

(assert (=> b!1349894 (= e!767941 tp!110618)))

(assert (= (and start!113796 res!895553) b!1349892))

(assert (= (and b!1349892 res!895554) b!1349893))

(assert (= start!113796 b!1349894))

(declare-fun m!1237253 () Bool)

(assert (=> start!113796 m!1237253))

(assert (=> start!113796 m!1237253))

(declare-fun m!1237255 () Bool)

(assert (=> start!113796 m!1237255))

(declare-fun m!1237257 () Bool)

(assert (=> start!113796 m!1237257))

(declare-fun m!1237259 () Bool)

(assert (=> b!1349893 m!1237259))

(push 1)

(assert (not b!1349893))

(assert (not start!113796))

(assert (not b!1349894))

(assert tp_is_empty!37601)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

