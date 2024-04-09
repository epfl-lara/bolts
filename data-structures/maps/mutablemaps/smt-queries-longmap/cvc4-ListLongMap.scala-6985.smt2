; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88620 () Bool)

(assert start!88620)

(assert (=> start!88620 false))

(declare-fun e!572932 () Bool)

(assert (=> start!88620 e!572932))

(declare-fun b!1018195 () Bool)

(declare-fun tp_is_empty!23687 () Bool)

(declare-fun tp!71000 () Bool)

(assert (=> b!1018195 (= e!572932 (and tp_is_empty!23687 tp!71000))))

(declare-datatypes ((B!1620 0))(
  ( (B!1621 (val!11894 Int)) )
))
(declare-datatypes ((tuple2!15424 0))(
  ( (tuple2!15425 (_1!7722 (_ BitVec 64)) (_2!7722 B!1620)) )
))
(declare-datatypes ((List!21696 0))(
  ( (Nil!21693) (Cons!21692 (h!22890 tuple2!15424) (t!30705 List!21696)) )
))
(declare-fun l!996 () List!21696)

(assert (= (and start!88620 (is-Cons!21692 l!996)) b!1018195))

(push 1)

(assert (not b!1018195))

(assert tp_is_empty!23687)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

