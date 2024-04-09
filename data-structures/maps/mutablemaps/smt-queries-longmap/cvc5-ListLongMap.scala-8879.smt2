; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107834 () Bool)

(assert start!107834)

(assert (=> start!107834 false))

(declare-fun e!727416 () Bool)

(assert (=> start!107834 e!727416))

(assert (=> start!107834 true))

(declare-fun b!1274545 () Bool)

(declare-fun tp_is_empty!33187 () Bool)

(declare-fun tp!97995 () Bool)

(assert (=> b!1274545 (= e!727416 (and tp_is_empty!33187 tp!97995))))

(declare-datatypes ((B!2144 0))(
  ( (B!2145 (val!16668 Int)) )
))
(declare-datatypes ((tuple2!21564 0))(
  ( (tuple2!21565 (_1!10792 (_ BitVec 64)) (_2!10792 B!2144)) )
))
(declare-datatypes ((List!28752 0))(
  ( (Nil!28749) (Cons!28748 (h!29957 tuple2!21564) (t!42292 List!28752)) )
))
(declare-fun l!595 () List!28752)

(assert (= (and start!107834 (is-Cons!28748 l!595)) b!1274545))

(push 1)

(assert (not b!1274545))

(assert tp_is_empty!33187)

(check-sat)

(pop 1)

