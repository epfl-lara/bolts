; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7576 () Bool)

(assert start!7576)

(assert (=> start!7576 false))

(declare-fun e!31060 () Bool)

(assert (=> start!7576 e!31060))

(declare-fun b!48402 () Bool)

(declare-fun tp_is_empty!2083 () Bool)

(declare-fun tp!6365 () Bool)

(assert (=> b!48402 (= e!31060 (and tp_is_empty!2083 tp!6365))))

(declare-datatypes ((B!932 0))(
  ( (B!933 (val!1086 Int)) )
))
(declare-datatypes ((tuple2!1758 0))(
  ( (tuple2!1759 (_1!889 (_ BitVec 64)) (_2!889 B!932)) )
))
(declare-datatypes ((List!1302 0))(
  ( (Nil!1299) (Cons!1298 (h!1878 tuple2!1758) (t!4338 List!1302)) )
))
(declare-fun l!1333 () List!1302)

(assert (= (and start!7576 (is-Cons!1298 l!1333)) b!48402))

(push 1)

(assert (not b!48402))

(assert tp_is_empty!2083)

(check-sat)

(pop 1)

(push 1)

(check-sat)

