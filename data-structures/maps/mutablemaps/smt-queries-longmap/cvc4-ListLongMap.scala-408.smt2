; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7634 () Bool)

(assert start!7634)

(assert (=> start!7634 false))

(declare-fun e!31246 () Bool)

(assert (=> start!7634 e!31246))

(assert (=> start!7634 true))

(declare-fun b!48663 () Bool)

(declare-fun tp_is_empty!2117 () Bool)

(declare-fun tp!6434 () Bool)

(assert (=> b!48663 (= e!31246 (and tp_is_empty!2117 tp!6434))))

(declare-datatypes ((B!966 0))(
  ( (B!967 (val!1103 Int)) )
))
(declare-datatypes ((tuple2!1792 0))(
  ( (tuple2!1793 (_1!906 (_ BitVec 64)) (_2!906 B!966)) )
))
(declare-datatypes ((List!1319 0))(
  ( (Nil!1316) (Cons!1315 (h!1895 tuple2!1792) (t!4355 List!1319)) )
))
(declare-fun l!1333 () List!1319)

(assert (= (and start!7634 (is-Cons!1315 l!1333)) b!48663))

(push 1)

(assert (not b!48663))

(assert tp_is_empty!2117)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

