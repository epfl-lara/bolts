; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88458 () Bool)

(assert start!88458)

(assert (=> start!88458 false))

(declare-fun e!572470 () Bool)

(assert (=> start!88458 e!572470))

(assert (=> start!88458 true))

(declare-fun b!1017451 () Bool)

(declare-fun tp_is_empty!23651 () Bool)

(declare-fun tp!70898 () Bool)

(assert (=> b!1017451 (= e!572470 (and tp_is_empty!23651 tp!70898))))

(declare-datatypes ((B!1584 0))(
  ( (B!1585 (val!11876 Int)) )
))
(declare-datatypes ((tuple2!15388 0))(
  ( (tuple2!15389 (_1!7704 (_ BitVec 64)) (_2!7704 B!1584)) )
))
(declare-datatypes ((List!21678 0))(
  ( (Nil!21675) (Cons!21674 (h!22872 tuple2!15388) (t!30687 List!21678)) )
))
(declare-fun l!1036 () List!21678)

(assert (= (and start!88458 (is-Cons!21674 l!1036)) b!1017451))

(push 1)

(assert (not b!1017451))

(assert tp_is_empty!23651)

(check-sat)

(pop 1)

