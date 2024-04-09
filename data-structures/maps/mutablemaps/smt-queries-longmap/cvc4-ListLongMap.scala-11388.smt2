; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132458 () Bool)

(assert start!132458)

(declare-fun res!1063311 () Bool)

(declare-fun e!864911 () Bool)

(assert (=> start!132458 (=> (not res!1063311) (not e!864911))))

(declare-datatypes ((B!2208 0))(
  ( (B!2209 (val!19190 Int)) )
))
(declare-datatypes ((tuple2!24896 0))(
  ( (tuple2!24897 (_1!12458 (_ BitVec 64)) (_2!12458 B!2208)) )
))
(declare-datatypes ((List!36370 0))(
  ( (Nil!36367) (Cons!36366 (h!37813 tuple2!24896) (t!51098 List!36370)) )
))
(declare-datatypes ((ListLongMap!22517 0))(
  ( (ListLongMap!22518 (toList!11274 List!36370)) )
))
(declare-fun lm!249 () ListLongMap!22517)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun contains!10146 (ListLongMap!22517 (_ BitVec 64)) Bool)

(assert (=> start!132458 (= res!1063311 (contains!10146 lm!249 a0!49))))

(assert (=> start!132458 e!864911))

(declare-fun e!864912 () Bool)

(declare-fun inv!57297 (ListLongMap!22517) Bool)

(assert (=> start!132458 (and (inv!57297 lm!249) e!864912)))

(assert (=> start!132458 true))

(declare-fun b!1553406 () Bool)

(assert (=> b!1553406 (= e!864911 false)))

(declare-fun b!1553407 () Bool)

(declare-fun tp!112108 () Bool)

(assert (=> b!1553407 (= e!864912 tp!112108)))

(assert (= (and start!132458 res!1063311) b!1553406))

(assert (= start!132458 b!1553407))

(declare-fun m!1432103 () Bool)

(assert (=> start!132458 m!1432103))

(declare-fun m!1432105 () Bool)

(assert (=> start!132458 m!1432105))

(push 1)

(assert (not start!132458))

(assert (not b!1553407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

