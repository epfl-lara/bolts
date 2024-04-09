; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1686 () Bool)

(assert start!1686)

(assert (=> start!1686 false))

(declare-fun e!7124 () Bool)

(assert (=> start!1686 e!7124))

(declare-fun b!11963 () Bool)

(declare-fun tp_is_empty!595 () Bool)

(declare-fun tp!2006 () Bool)

(assert (=> b!11963 (= e!7124 (and tp_is_empty!595 tp!2006))))

(declare-datatypes ((B!422 0))(
  ( (B!423 (val!306 Int)) )
))
(declare-datatypes ((tuple2!394 0))(
  ( (tuple2!395 (_1!197 (_ BitVec 64)) (_2!197 B!422)) )
))
(declare-datatypes ((List!353 0))(
  ( (Nil!350) (Cons!349 (h!915 tuple2!394) (t!2740 List!353)) )
))
(declare-fun l!1094 () List!353)

(assert (= (and start!1686 (is-Cons!349 l!1094)) b!11963))

(push 1)

(assert (not b!11963))

(assert tp_is_empty!595)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

