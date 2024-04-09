; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107808 () Bool)

(assert start!107808)

(assert (=> start!107808 false))

(declare-fun e!727335 () Bool)

(assert (=> start!107808 e!727335))

(assert (=> start!107808 true))

(declare-fun b!1274440 () Bool)

(declare-fun tp_is_empty!33167 () Bool)

(declare-fun tp!97956 () Bool)

(assert (=> b!1274440 (= e!727335 (and tp_is_empty!33167 tp!97956))))

(declare-datatypes ((B!2124 0))(
  ( (B!2125 (val!16658 Int)) )
))
(declare-datatypes ((tuple2!21544 0))(
  ( (tuple2!21545 (_1!10782 (_ BitVec 64)) (_2!10782 B!2124)) )
))
(declare-datatypes ((List!28742 0))(
  ( (Nil!28739) (Cons!28738 (h!29947 tuple2!21544) (t!42282 List!28742)) )
))
(declare-fun l!595 () List!28742)

(assert (= (and start!107808 (is-Cons!28738 l!595)) b!1274440))

(push 1)

(assert (not b!1274440))

(assert tp_is_empty!33167)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

