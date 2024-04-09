; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138244 () Bool)

(assert start!138244)

(assert (=> start!138244 false))

(declare-fun e!885042 () Bool)

(assert (=> start!138244 e!885042))

(assert (=> start!138244 true))

(declare-fun b!1585184 () Bool)

(declare-fun tp_is_empty!39499 () Bool)

(declare-fun tp!115219 () Bool)

(assert (=> b!1585184 (= e!885042 (and tp_is_empty!39499 tp!115219))))

(declare-datatypes ((B!2966 0))(
  ( (B!2967 (val!19845 Int)) )
))
(declare-datatypes ((tuple2!26022 0))(
  ( (tuple2!26023 (_1!13021 (_ BitVec 64)) (_2!13021 B!2966)) )
))
(declare-datatypes ((List!37126 0))(
  ( (Nil!37123) (Cons!37122 (h!38666 tuple2!26022) (t!52053 List!37126)) )
))
(declare-fun l!556 () List!37126)

(assert (= (and start!138244 (is-Cons!37122 l!556)) b!1585184))

(push 1)

(assert (not b!1585184))

(assert tp_is_empty!39499)

(check-sat)

(pop 1)

