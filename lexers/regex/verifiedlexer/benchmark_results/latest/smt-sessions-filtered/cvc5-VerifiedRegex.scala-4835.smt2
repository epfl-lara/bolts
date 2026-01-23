; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!248726 () Bool)

(assert start!248726)

(assert (=> start!248726 false))

(declare-fun e!1624941 () Bool)

(assert (=> start!248726 e!1624941))

(declare-fun e!1624942 () Bool)

(assert (=> start!248726 e!1624942))

(declare-fun b!2575359 () Bool)

(declare-fun tp_is_empty!13143 () Bool)

(declare-fun tp!818691 () Bool)

(assert (=> b!2575359 (= e!1624941 (and tp_is_empty!13143 tp!818691))))

(declare-fun b!2575360 () Bool)

(declare-fun tp!818692 () Bool)

(assert (=> b!2575360 (= e!1624942 (and tp_is_empty!13143 tp!818692))))

(declare-datatypes ((B!1895 0))(
  ( (B!1896 (val!9375 Int)) )
))
(declare-datatypes ((List!29709 0))(
  ( (Nil!29609) (Cons!29609 (h!35029 B!1895) (t!211408 List!29709)) )
))
(declare-fun l1!976 () List!29709)

(assert (= (and start!248726 (is-Cons!29609 l1!976)) b!2575359))

(declare-fun l2!953 () List!29709)

(assert (= (and start!248726 (is-Cons!29609 l2!953)) b!2575360))

(push 1)

(assert (not b!2575360))

(assert (not b!2575359))

(assert tp_is_empty!13143)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

