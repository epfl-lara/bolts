; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88442 () Bool)

(assert start!88442)

(assert (=> start!88442 false))

(declare-fun e!572437 () Bool)

(assert (=> start!88442 e!572437))

(assert (=> start!88442 true))

(declare-fun b!1017382 () Bool)

(declare-fun tp_is_empty!23635 () Bool)

(declare-fun tp!70874 () Bool)

(assert (=> b!1017382 (= e!572437 (and tp_is_empty!23635 tp!70874))))

(declare-datatypes ((B!1568 0))(
  ( (B!1569 (val!11868 Int)) )
))
(declare-datatypes ((tuple2!15372 0))(
  ( (tuple2!15373 (_1!7696 (_ BitVec 64)) (_2!7696 B!1568)) )
))
(declare-datatypes ((List!21670 0))(
  ( (Nil!21667) (Cons!21666 (h!22864 tuple2!15372) (t!30679 List!21670)) )
))
(declare-fun l!1036 () List!21670)

(assert (= (and start!88442 (is-Cons!21666 l!1036)) b!1017382))

(push 1)

(assert (not b!1017382))

(assert tp_is_empty!23635)

(check-sat)

(pop 1)

