; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!239956 () Bool)

(assert start!239956)

(declare-fun b_free!70593 () Bool)

(declare-fun b_next!71297 () Bool)

(assert (=> start!239956 (= b_free!70593 (not b_next!71297))))

(declare-fun tp!783503 () Bool)

(declare-fun b_and!185665 () Bool)

(assert (=> start!239956 (= tp!783503 b_and!185665)))

(assert (=> start!239956 false))

(declare-fun e!1560891 () Bool)

(assert (=> start!239956 e!1560891))

(assert (=> start!239956 tp!783503))

(declare-fun b!2461113 () Bool)

(declare-fun tp_is_empty!11921 () Bool)

(declare-fun tp!783502 () Bool)

(assert (=> b!2461113 (= e!1560891 (and tp_is_empty!11921 tp!783502))))

(declare-datatypes ((B!1891 0))(
  ( (B!1892 (val!8575 Int)) )
))
(declare-datatypes ((List!28732 0))(
  ( (Nil!28632) (Cons!28632 (h!34033 B!1891) (t!208751 List!28732)) )
))
(declare-fun l!3055 () List!28732)

(assert (= (and start!239956 (is-Cons!28632 l!3055)) b!2461113))

(push 1)

(assert (not b!2461113))

(assert tp_is_empty!11921)

(assert b_and!185665)

(assert (not b_next!71297))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185665)

(assert (not b_next!71297))

(check-sat)

(pop 1)

