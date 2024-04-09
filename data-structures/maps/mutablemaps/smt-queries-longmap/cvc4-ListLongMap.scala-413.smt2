; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7784 () Bool)

(assert start!7784)

(assert (=> start!7784 false))

(declare-fun e!31777 () Bool)

(assert (=> start!7784 e!31777))

(assert (=> start!7784 true))

(declare-fun b!49461 () Bool)

(declare-fun tp_is_empty!2147 () Bool)

(declare-fun tp!6521 () Bool)

(assert (=> b!49461 (= e!31777 (and tp_is_empty!2147 tp!6521))))

(declare-datatypes ((B!996 0))(
  ( (B!997 (val!1118 Int)) )
))
(declare-datatypes ((tuple2!1822 0))(
  ( (tuple2!1823 (_1!921 (_ BitVec 64)) (_2!921 B!996)) )
))
(declare-datatypes ((List!1334 0))(
  ( (Nil!1331) (Cons!1330 (h!1910 tuple2!1822) (t!4376 List!1334)) )
))
(declare-fun l!1333 () List!1334)

(assert (= (and start!7784 (is-Cons!1330 l!1333)) b!49461))

(push 1)

(assert (not b!49461))

(assert tp_is_empty!2147)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

