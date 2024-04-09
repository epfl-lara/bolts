; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7456 () Bool)

(assert start!7456)

(declare-fun res!27840 () Bool)

(declare-fun e!30732 () Bool)

(assert (=> start!7456 (=> (not res!27840) (not e!30732))))

(declare-datatypes ((B!902 0))(
  ( (B!903 (val!1071 Int)) )
))
(declare-datatypes ((tuple2!1728 0))(
  ( (tuple2!1729 (_1!874 (_ BitVec 64)) (_2!874 B!902)) )
))
(declare-datatypes ((List!1287 0))(
  ( (Nil!1284) (Cons!1283 (h!1863 tuple2!1728) (t!4323 List!1287)) )
))
(declare-datatypes ((ListLongMap!1225 0))(
  ( (ListLongMap!1226 (toList!628 List!1287)) )
))
(declare-fun lm!267 () ListLongMap!1225)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!590 (ListLongMap!1225 (_ BitVec 64)) Bool)

(assert (=> start!7456 (= res!27840 (not (contains!590 lm!267 key!657)))))

(assert (=> start!7456 e!30732))

(declare-fun e!30733 () Bool)

(declare-fun inv!2204 (ListLongMap!1225) Bool)

(assert (=> start!7456 (and (inv!2204 lm!267) e!30733)))

(assert (=> start!7456 true))

(declare-fun b!47933 () Bool)

(assert (=> b!47933 (= e!30732 false)))

(declare-fun b!47934 () Bool)

(declare-fun tp!6293 () Bool)

(assert (=> b!47934 (= e!30733 tp!6293)))

(assert (= (and start!7456 res!27840) b!47933))

(assert (= start!7456 b!47934))

(declare-fun m!41979 () Bool)

(assert (=> start!7456 m!41979))

(declare-fun m!41981 () Bool)

(assert (=> start!7456 m!41981))

(push 1)

(assert (not start!7456))

(assert (not b!47934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

