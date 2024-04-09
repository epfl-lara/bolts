; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7582 () Bool)

(assert start!7582)

(assert (=> start!7582 false))

(declare-fun e!31069 () Bool)

(assert (=> start!7582 e!31069))

(assert (=> start!7582 true))

(declare-fun b!48411 () Bool)

(declare-fun tp_is_empty!2089 () Bool)

(declare-fun tp!6374 () Bool)

(assert (=> b!48411 (= e!31069 (and tp_is_empty!2089 tp!6374))))

(declare-datatypes ((B!938 0))(
  ( (B!939 (val!1089 Int)) )
))
(declare-datatypes ((tuple2!1764 0))(
  ( (tuple2!1765 (_1!892 (_ BitVec 64)) (_2!892 B!938)) )
))
(declare-datatypes ((List!1305 0))(
  ( (Nil!1302) (Cons!1301 (h!1881 tuple2!1764) (t!4341 List!1305)) )
))
(declare-fun l!1333 () List!1305)

(assert (= (and start!7582 (is-Cons!1301 l!1333)) b!48411))

(push 1)

(assert (not b!48411))

(assert tp_is_empty!2089)

(check-sat)

(pop 1)

