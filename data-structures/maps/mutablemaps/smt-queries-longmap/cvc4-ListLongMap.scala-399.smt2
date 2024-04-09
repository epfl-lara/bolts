; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7466 () Bool)

(assert start!7466)

(declare-fun res!27855 () Bool)

(declare-fun e!30762 () Bool)

(assert (=> start!7466 (=> (not res!27855) (not e!30762))))

(declare-datatypes ((B!912 0))(
  ( (B!913 (val!1076 Int)) )
))
(declare-datatypes ((tuple2!1738 0))(
  ( (tuple2!1739 (_1!879 (_ BitVec 64)) (_2!879 B!912)) )
))
(declare-datatypes ((List!1292 0))(
  ( (Nil!1289) (Cons!1288 (h!1868 tuple2!1738) (t!4328 List!1292)) )
))
(declare-datatypes ((ListLongMap!1235 0))(
  ( (ListLongMap!1236 (toList!633 List!1292)) )
))
(declare-fun lm!267 () ListLongMap!1235)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!595 (ListLongMap!1235 (_ BitVec 64)) Bool)

(assert (=> start!7466 (= res!27855 (not (contains!595 lm!267 key!657)))))

(assert (=> start!7466 e!30762))

(declare-fun e!30763 () Bool)

(declare-fun inv!2214 (ListLongMap!1235) Bool)

(assert (=> start!7466 (and (inv!2214 lm!267) e!30763)))

(assert (=> start!7466 true))

(declare-fun b!47963 () Bool)

(assert (=> b!47963 (= e!30762 false)))

(declare-fun b!47964 () Bool)

(declare-fun tp!6308 () Bool)

(assert (=> b!47964 (= e!30763 tp!6308)))

(assert (= (and start!7466 res!27855) b!47963))

(assert (= start!7466 b!47964))

(declare-fun m!41999 () Bool)

(assert (=> start!7466 m!41999))

(declare-fun m!42001 () Bool)

(assert (=> start!7466 m!42001))

(push 1)

(assert (not start!7466))

(assert (not b!47964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

