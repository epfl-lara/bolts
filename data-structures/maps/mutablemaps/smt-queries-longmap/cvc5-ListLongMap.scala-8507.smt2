; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103740 () Bool)

(assert start!103740)

(assert (=> start!103740 false))

(assert (=> start!103740 true))

(declare-fun e!703886 () Bool)

(assert (=> start!103740 e!703886))

(declare-fun b!1241736 () Bool)

(declare-fun tp_is_empty!31267 () Bool)

(declare-fun tp!92700 () Bool)

(assert (=> b!1241736 (= e!703886 (and tp_is_empty!31267 tp!92700))))

(declare-datatypes ((B!1868 0))(
  ( (B!1869 (val!15696 Int)) )
))
(declare-datatypes ((tuple2!20420 0))(
  ( (tuple2!20421 (_1!10220 (_ BitVec 64)) (_2!10220 B!1868)) )
))
(declare-datatypes ((List!27525 0))(
  ( (Nil!27522) (Cons!27521 (h!28730 tuple2!20420) (t!40995 List!27525)) )
))
(declare-fun l!644 () List!27525)

(assert (= (and start!103740 (is-Cons!27521 l!644)) b!1241736))

(push 1)

(assert (not b!1241736))

(assert tp_is_empty!31267)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

