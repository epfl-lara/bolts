; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7790 () Bool)

(assert start!7790)

(assert (=> start!7790 false))

(declare-fun e!31786 () Bool)

(assert (=> start!7790 e!31786))

(assert (=> start!7790 true))

(declare-fun b!49470 () Bool)

(declare-fun tp_is_empty!2153 () Bool)

(declare-fun tp!6530 () Bool)

(assert (=> b!49470 (= e!31786 (and tp_is_empty!2153 tp!6530))))

(declare-datatypes ((B!1002 0))(
  ( (B!1003 (val!1121 Int)) )
))
(declare-datatypes ((tuple2!1828 0))(
  ( (tuple2!1829 (_1!924 (_ BitVec 64)) (_2!924 B!1002)) )
))
(declare-datatypes ((List!1337 0))(
  ( (Nil!1334) (Cons!1333 (h!1913 tuple2!1828) (t!4379 List!1337)) )
))
(declare-fun l!1333 () List!1337)

(assert (= (and start!7790 (is-Cons!1333 l!1333)) b!49470))

(push 1)

(assert (not b!49470))

(assert tp_is_empty!2153)

(check-sat)

(pop 1)

(push 1)

(check-sat)

