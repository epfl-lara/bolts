; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113792 () Bool)

(assert start!113792)

(declare-fun res!895542 () Bool)

(declare-fun e!767928 () Bool)

(assert (=> start!113792 (=> (not res!895542) (not e!767928))))

(declare-datatypes ((V!55233 0))(
  ( (V!55234 (val!18873 Int)) )
))
(declare-fun value!554 () V!55233)

(declare-datatypes ((tuple2!24480 0))(
  ( (tuple2!24481 (_1!12250 (_ BitVec 64)) (_2!12250 V!55233)) )
))
(declare-datatypes ((List!31646 0))(
  ( (Nil!31643) (Cons!31642 (h!32851 tuple2!24480) (t!46311 List!31646)) )
))
(declare-datatypes ((ListLongMap!22149 0))(
  ( (ListLongMap!22150 (toList!11090 List!31646)) )
))
(declare-fun lm!1456 () ListLongMap!22149)

(declare-fun otherKey!123 () (_ BitVec 64))

(declare-fun k!1141 () (_ BitVec 64))

(declare-fun contains!9211 (ListLongMap!22149 (_ BitVec 64)) Bool)

(declare-fun +!4831 (ListLongMap!22149 tuple2!24480) ListLongMap!22149)

(assert (=> start!113792 (= res!895542 (contains!9211 (+!4831 lm!1456 (tuple2!24481 otherKey!123 value!554)) k!1141))))

(assert (=> start!113792 e!767928))

(declare-fun e!767929 () Bool)

(declare-fun inv!48410 (ListLongMap!22149) Bool)

(assert (=> start!113792 (and (inv!48410 lm!1456) e!767929)))

(assert (=> start!113792 true))

(declare-fun tp_is_empty!37597 () Bool)

(assert (=> start!113792 tp_is_empty!37597))

(declare-fun b!1349874 () Bool)

(declare-fun res!895541 () Bool)

(assert (=> b!1349874 (=> (not res!895541) (not e!767928))))

(assert (=> b!1349874 (= res!895541 (not (= k!1141 otherKey!123)))))

(declare-fun b!1349875 () Bool)

(assert (=> b!1349875 (= e!767928 false)))

(declare-fun lt!596807 () Bool)

(assert (=> b!1349875 (= lt!596807 (contains!9211 lm!1456 k!1141))))

(declare-fun b!1349876 () Bool)

(declare-fun tp!110612 () Bool)

(assert (=> b!1349876 (= e!767929 tp!110612)))

(assert (= (and start!113792 res!895542) b!1349874))

(assert (= (and b!1349874 res!895541) b!1349875))

(assert (= start!113792 b!1349876))

(declare-fun m!1237237 () Bool)

(assert (=> start!113792 m!1237237))

(assert (=> start!113792 m!1237237))

(declare-fun m!1237239 () Bool)

(assert (=> start!113792 m!1237239))

(declare-fun m!1237241 () Bool)

(assert (=> start!113792 m!1237241))

(declare-fun m!1237243 () Bool)

(assert (=> b!1349875 m!1237243))

(push 1)

(assert (not start!113792))

(assert (not b!1349875))

(assert (not b!1349876))

(assert tp_is_empty!37597)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

