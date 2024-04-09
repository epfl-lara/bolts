; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138248 () Bool)

(assert start!138248)

(assert (=> start!138248 false))

(declare-fun e!885048 () Bool)

(assert (=> start!138248 e!885048))

(assert (=> start!138248 true))

(declare-fun b!1585190 () Bool)

(declare-fun tp_is_empty!39503 () Bool)

(declare-fun tp!115225 () Bool)

(assert (=> b!1585190 (= e!885048 (and tp_is_empty!39503 tp!115225))))

(declare-datatypes ((B!2970 0))(
  ( (B!2971 (val!19847 Int)) )
))
(declare-datatypes ((tuple2!26026 0))(
  ( (tuple2!26027 (_1!13023 (_ BitVec 64)) (_2!13023 B!2970)) )
))
(declare-datatypes ((List!37128 0))(
  ( (Nil!37125) (Cons!37124 (h!38668 tuple2!26026) (t!52055 List!37128)) )
))
(declare-fun l!556 () List!37128)

(assert (= (and start!138248 (is-Cons!37124 l!556)) b!1585190))

(push 1)

(assert (not b!1585190))

(assert tp_is_empty!39503)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

