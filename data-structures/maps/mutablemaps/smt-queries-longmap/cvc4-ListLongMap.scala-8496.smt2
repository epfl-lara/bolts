; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103594 () Bool)

(assert start!103594)

(assert (=> start!103594 false))

(assert (=> start!103594 true))

(declare-fun e!703262 () Bool)

(assert (=> start!103594 e!703262))

(declare-fun b!1240668 () Bool)

(declare-fun tp_is_empty!31205 () Bool)

(declare-fun tp!92562 () Bool)

(assert (=> b!1240668 (= e!703262 (and tp_is_empty!31205 tp!92562))))

(declare-datatypes ((B!1806 0))(
  ( (B!1807 (val!15665 Int)) )
))
(declare-datatypes ((tuple2!20358 0))(
  ( (tuple2!20359 (_1!10189 (_ BitVec 64)) (_2!10189 B!1806)) )
))
(declare-datatypes ((List!27494 0))(
  ( (Nil!27491) (Cons!27490 (h!28699 tuple2!20358) (t!40964 List!27494)) )
))
(declare-fun l!644 () List!27494)

(assert (= (and start!103594 (is-Cons!27490 l!644)) b!1240668))

(push 1)

(assert (not b!1240668))

(assert tp_is_empty!31205)

(check-sat)

(pop 1)

(push 1)

(check-sat)

