; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137990 () Bool)

(assert start!137990)

(assert (=> start!137990 false))

(declare-fun e!883950 () Bool)

(assert (=> start!137990 e!883950))

(assert (=> start!137990 true))

(declare-fun b!1583504 () Bool)

(declare-fun tp_is_empty!39413 () Bool)

(declare-fun tp!115012 () Bool)

(assert (=> b!1583504 (= e!883950 (and tp_is_empty!39413 tp!115012))))

(declare-datatypes ((B!2880 0))(
  ( (B!2881 (val!19802 Int)) )
))
(declare-datatypes ((tuple2!25936 0))(
  ( (tuple2!25937 (_1!12978 (_ BitVec 64)) (_2!12978 B!2880)) )
))
(declare-datatypes ((List!37083 0))(
  ( (Nil!37080) (Cons!37079 (h!38623 tuple2!25936) (t!52004 List!37083)) )
))
(declare-fun l!1251 () List!37083)

(assert (= (and start!137990 (is-Cons!37079 l!1251)) b!1583504))

(push 1)

(assert (not b!1583504))

(assert tp_is_empty!39413)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

