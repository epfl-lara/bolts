; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103744 () Bool)

(assert start!103744)

(assert (=> start!103744 false))

(assert (=> start!103744 true))

(declare-fun e!703892 () Bool)

(assert (=> start!103744 e!703892))

(declare-fun b!1241742 () Bool)

(declare-fun tp_is_empty!31271 () Bool)

(declare-fun tp!92706 () Bool)

(assert (=> b!1241742 (= e!703892 (and tp_is_empty!31271 tp!92706))))

(declare-datatypes ((B!1872 0))(
  ( (B!1873 (val!15698 Int)) )
))
(declare-datatypes ((tuple2!20424 0))(
  ( (tuple2!20425 (_1!10222 (_ BitVec 64)) (_2!10222 B!1872)) )
))
(declare-datatypes ((List!27527 0))(
  ( (Nil!27524) (Cons!27523 (h!28732 tuple2!20424) (t!40997 List!27527)) )
))
(declare-fun l!644 () List!27527)

(assert (= (and start!103744 (is-Cons!27523 l!644)) b!1241742))

(push 1)

(assert (not b!1241742))

(assert tp_is_empty!31271)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

