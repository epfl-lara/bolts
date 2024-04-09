; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103600 () Bool)

(assert start!103600)

(assert (=> start!103600 false))

(assert (=> start!103600 true))

(declare-fun e!703271 () Bool)

(assert (=> start!103600 e!703271))

(declare-fun b!1240677 () Bool)

(declare-fun tp_is_empty!31211 () Bool)

(declare-fun tp!92571 () Bool)

(assert (=> b!1240677 (= e!703271 (and tp_is_empty!31211 tp!92571))))

(declare-datatypes ((B!1812 0))(
  ( (B!1813 (val!15668 Int)) )
))
(declare-datatypes ((tuple2!20364 0))(
  ( (tuple2!20365 (_1!10192 (_ BitVec 64)) (_2!10192 B!1812)) )
))
(declare-datatypes ((List!27497 0))(
  ( (Nil!27494) (Cons!27493 (h!28702 tuple2!20364) (t!40967 List!27497)) )
))
(declare-fun l!644 () List!27497)

(assert (= (and start!103600 (is-Cons!27493 l!644)) b!1240677))

(push 1)

(assert (not b!1240677))

(assert tp_is_empty!31211)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

