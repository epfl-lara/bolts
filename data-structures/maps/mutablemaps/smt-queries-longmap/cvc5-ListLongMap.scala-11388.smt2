; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132454 () Bool)

(assert start!132454)

(declare-fun res!1063305 () Bool)

(declare-fun e!864899 () Bool)

(assert (=> start!132454 (=> (not res!1063305) (not e!864899))))

(declare-datatypes ((B!2204 0))(
  ( (B!2205 (val!19188 Int)) )
))
(declare-datatypes ((tuple2!24892 0))(
  ( (tuple2!24893 (_1!12456 (_ BitVec 64)) (_2!12456 B!2204)) )
))
(declare-datatypes ((List!36368 0))(
  ( (Nil!36365) (Cons!36364 (h!37811 tuple2!24892) (t!51096 List!36368)) )
))
(declare-datatypes ((ListLongMap!22513 0))(
  ( (ListLongMap!22514 (toList!11272 List!36368)) )
))
(declare-fun lm!249 () ListLongMap!22513)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun contains!10144 (ListLongMap!22513 (_ BitVec 64)) Bool)

(assert (=> start!132454 (= res!1063305 (contains!10144 lm!249 a0!49))))

(assert (=> start!132454 e!864899))

(declare-fun e!864900 () Bool)

(declare-fun inv!57295 (ListLongMap!22513) Bool)

(assert (=> start!132454 (and (inv!57295 lm!249) e!864900)))

(assert (=> start!132454 true))

(declare-fun b!1553394 () Bool)

(assert (=> b!1553394 (= e!864899 false)))

(declare-fun b!1553395 () Bool)

(declare-fun tp!112102 () Bool)

(assert (=> b!1553395 (= e!864900 tp!112102)))

(assert (= (and start!132454 res!1063305) b!1553394))

(assert (= start!132454 b!1553395))

(declare-fun m!1432095 () Bool)

(assert (=> start!132454 m!1432095))

(declare-fun m!1432097 () Bool)

(assert (=> start!132454 m!1432097))

(push 1)

(assert (not start!132454))

(assert (not b!1553395))

(check-sat)

(pop 1)

