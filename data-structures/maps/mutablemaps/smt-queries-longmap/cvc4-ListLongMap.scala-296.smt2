; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5168 () Bool)

(assert start!5168)

(declare-fun res!22828 () Bool)

(declare-fun e!23996 () Bool)

(assert (=> start!5168 (=> (not res!22828) (not e!23996))))

(declare-datatypes ((B!768 0))(
  ( (B!769 (val!884 Int)) )
))
(declare-fun b!99 () B!768)

(declare-datatypes ((tuple2!1432 0))(
  ( (tuple2!1433 (_1!726 (_ BitVec 64)) (_2!726 B!768)) )
))
(declare-datatypes ((List!1010 0))(
  ( (Nil!1007) (Cons!1006 (h!1574 tuple2!1432) (t!3851 List!1010)) )
))
(declare-datatypes ((ListLongMap!1013 0))(
  ( (ListLongMap!1014 (toList!522 List!1010)) )
))
(declare-fun lm!264 () ListLongMap!1013)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!470 (List!1010 tuple2!1432) Bool)

(assert (=> start!5168 (= res!22828 (contains!470 (toList!522 lm!264) (tuple2!1433 a!526 b!99)))))

(assert (=> start!5168 e!23996))

(declare-fun e!23997 () Bool)

(declare-fun inv!1669 (ListLongMap!1013) Bool)

(assert (=> start!5168 (and (inv!1669 lm!264) e!23997)))

(assert (=> start!5168 true))

(declare-fun tp_is_empty!1691 () Bool)

(assert (=> start!5168 tp_is_empty!1691))

(declare-fun b!37850 () Bool)

(assert (=> b!37850 (= e!23996 false)))

(declare-fun b!37851 () Bool)

(declare-fun tp!5594 () Bool)

(assert (=> b!37851 (= e!23997 tp!5594)))

(assert (= (and start!5168 res!22828) b!37850))

(assert (= start!5168 b!37851))

(declare-fun m!30589 () Bool)

(assert (=> start!5168 m!30589))

(declare-fun m!30591 () Bool)

(assert (=> start!5168 m!30591))

(push 1)

(assert (not start!5168))

(assert (not b!37851))

(assert tp_is_empty!1691)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

