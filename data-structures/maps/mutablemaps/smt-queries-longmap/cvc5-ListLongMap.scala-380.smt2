; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7198 () Bool)

(assert start!7198)

(assert (=> start!7198 false))

(declare-fun e!29378 () Bool)

(assert (=> start!7198 e!29378))

(declare-fun b!46126 () Bool)

(declare-fun tp_is_empty!1957 () Bool)

(declare-fun tp!6056 () Bool)

(assert (=> b!46126 (= e!29378 (and tp_is_empty!1957 tp!6056))))

(declare-datatypes ((B!860 0))(
  ( (B!861 (val!1017 Int)) )
))
(declare-datatypes ((tuple2!1686 0))(
  ( (tuple2!1687 (_1!853 (_ BitVec 64)) (_2!853 B!860)) )
))
(declare-datatypes ((List!1251 0))(
  ( (Nil!1248) (Cons!1247 (h!1827 tuple2!1686) (t!4284 List!1251)) )
))
(declare-fun l!812 () List!1251)

(assert (= (and start!7198 (is-Cons!1247 l!812)) b!46126))

(push 1)

(assert (not b!46126))

(assert tp_is_empty!1957)

(check-sat)

(pop 1)

