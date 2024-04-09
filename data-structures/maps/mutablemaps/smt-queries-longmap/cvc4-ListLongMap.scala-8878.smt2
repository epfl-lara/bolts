; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107832 () Bool)

(assert start!107832)

(assert (=> start!107832 false))

(declare-fun e!727413 () Bool)

(assert (=> start!107832 e!727413))

(assert (=> start!107832 true))

(declare-fun b!1274542 () Bool)

(declare-fun tp_is_empty!33185 () Bool)

(declare-fun tp!97992 () Bool)

(assert (=> b!1274542 (= e!727413 (and tp_is_empty!33185 tp!97992))))

(declare-datatypes ((B!2142 0))(
  ( (B!2143 (val!16667 Int)) )
))
(declare-datatypes ((tuple2!21562 0))(
  ( (tuple2!21563 (_1!10791 (_ BitVec 64)) (_2!10791 B!2142)) )
))
(declare-datatypes ((List!28751 0))(
  ( (Nil!28748) (Cons!28747 (h!29956 tuple2!21562) (t!42291 List!28751)) )
))
(declare-fun l!595 () List!28751)

(assert (= (and start!107832 (is-Cons!28747 l!595)) b!1274542))

(push 1)

(assert (not b!1274542))

(assert tp_is_empty!33185)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

