; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133028 () Bool)

(assert start!133028)

(declare-fun res!1065099 () Bool)

(declare-fun e!867296 () Bool)

(assert (=> start!133028 (=> (not res!1065099) (not e!867296))))

(declare-datatypes ((B!2364 0))(
  ( (B!2365 (val!19268 Int)) )
))
(declare-datatypes ((tuple2!25052 0))(
  ( (tuple2!25053 (_1!12536 (_ BitVec 64)) (_2!12536 B!2364)) )
))
(declare-datatypes ((List!36448 0))(
  ( (Nil!36445) (Cons!36444 (h!37891 tuple2!25052) (t!51182 List!36448)) )
))
(declare-datatypes ((ListLongMap!22565 0))(
  ( (ListLongMap!22566 (toList!11298 List!36448)) )
))
(declare-fun lm!250 () ListLongMap!22565)

(declare-fun a0!50 () (_ BitVec 64))

(declare-fun contains!10197 (ListLongMap!22565 (_ BitVec 64)) Bool)

(assert (=> start!133028 (= res!1065099 (contains!10197 lm!250 a0!50))))

(assert (=> start!133028 e!867296))

(declare-fun e!867297 () Bool)

(declare-fun inv!57451 (ListLongMap!22565) Bool)

(assert (=> start!133028 (and (inv!57451 lm!250) e!867297)))

(assert (=> start!133028 true))

(declare-fun b!1556982 () Bool)

(assert (=> b!1556982 (= e!867296 false)))

(declare-fun b!1556983 () Bool)

(declare-fun tp!112474 () Bool)

(assert (=> b!1556983 (= e!867297 tp!112474)))

(assert (= (and start!133028 res!1065099) b!1556982))

(assert (= start!133028 b!1556983))

(declare-fun m!1434281 () Bool)

(assert (=> start!133028 m!1434281))

(declare-fun m!1434283 () Bool)

(assert (=> start!133028 m!1434283))

(push 1)

(assert (not start!133028))

(assert (not b!1556983))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

