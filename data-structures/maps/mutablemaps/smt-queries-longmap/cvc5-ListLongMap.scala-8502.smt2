; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103674 () Bool)

(assert start!103674)

(assert (=> start!103674 false))

(assert (=> start!103674 true))

(declare-fun e!703640 () Bool)

(assert (=> start!103674 e!703640))

(declare-fun b!1241355 () Bool)

(declare-fun tp_is_empty!31237 () Bool)

(declare-fun tp!92628 () Bool)

(assert (=> b!1241355 (= e!703640 (and tp_is_empty!31237 tp!92628))))

(declare-datatypes ((B!1838 0))(
  ( (B!1839 (val!15681 Int)) )
))
(declare-datatypes ((tuple2!20390 0))(
  ( (tuple2!20391 (_1!10205 (_ BitVec 64)) (_2!10205 B!1838)) )
))
(declare-datatypes ((List!27510 0))(
  ( (Nil!27507) (Cons!27506 (h!28715 tuple2!20390) (t!40980 List!27510)) )
))
(declare-fun l!644 () List!27510)

(assert (= (and start!103674 (is-Cons!27506 l!644)) b!1241355))

(push 1)

(assert (not b!1241355))

(assert tp_is_empty!31237)

(check-sat)

(pop 1)

