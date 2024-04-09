; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7462 () Bool)

(assert start!7462)

(declare-fun res!27849 () Bool)

(declare-fun e!30750 () Bool)

(assert (=> start!7462 (=> (not res!27849) (not e!30750))))

(declare-datatypes ((B!908 0))(
  ( (B!909 (val!1074 Int)) )
))
(declare-datatypes ((tuple2!1734 0))(
  ( (tuple2!1735 (_1!877 (_ BitVec 64)) (_2!877 B!908)) )
))
(declare-datatypes ((List!1290 0))(
  ( (Nil!1287) (Cons!1286 (h!1866 tuple2!1734) (t!4326 List!1290)) )
))
(declare-datatypes ((ListLongMap!1231 0))(
  ( (ListLongMap!1232 (toList!631 List!1290)) )
))
(declare-fun lm!267 () ListLongMap!1231)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!593 (ListLongMap!1231 (_ BitVec 64)) Bool)

(assert (=> start!7462 (= res!27849 (not (contains!593 lm!267 key!657)))))

(assert (=> start!7462 e!30750))

(declare-fun e!30751 () Bool)

(declare-fun inv!2212 (ListLongMap!1231) Bool)

(assert (=> start!7462 (and (inv!2212 lm!267) e!30751)))

(assert (=> start!7462 true))

(declare-fun b!47951 () Bool)

(assert (=> b!47951 (= e!30750 false)))

(declare-fun b!47952 () Bool)

(declare-fun tp!6302 () Bool)

(assert (=> b!47952 (= e!30751 tp!6302)))

(assert (= (and start!7462 res!27849) b!47951))

(assert (= start!7462 b!47952))

(declare-fun m!41991 () Bool)

(assert (=> start!7462 m!41991))

(declare-fun m!41993 () Bool)

(assert (=> start!7462 m!41993))

(push 1)

(assert (not start!7462))

(assert (not b!47952))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

