; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107804 () Bool)

(assert start!107804)

(assert (=> start!107804 false))

(declare-fun e!727329 () Bool)

(assert (=> start!107804 e!727329))

(assert (=> start!107804 true))

(declare-fun b!1274434 () Bool)

(declare-fun tp_is_empty!33163 () Bool)

(declare-fun tp!97950 () Bool)

(assert (=> b!1274434 (= e!727329 (and tp_is_empty!33163 tp!97950))))

(declare-datatypes ((B!2120 0))(
  ( (B!2121 (val!16656 Int)) )
))
(declare-datatypes ((tuple2!21540 0))(
  ( (tuple2!21541 (_1!10780 (_ BitVec 64)) (_2!10780 B!2120)) )
))
(declare-datatypes ((List!28740 0))(
  ( (Nil!28737) (Cons!28736 (h!29945 tuple2!21540) (t!42280 List!28740)) )
))
(declare-fun l!595 () List!28740)

(assert (= (and start!107804 (is-Cons!28736 l!595)) b!1274434))

(push 1)

(assert (not b!1274434))

(assert tp_is_empty!33163)

(check-sat)

(pop 1)

