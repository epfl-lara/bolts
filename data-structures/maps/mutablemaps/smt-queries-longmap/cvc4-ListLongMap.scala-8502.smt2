; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103678 () Bool)

(assert start!103678)

(assert (=> start!103678 false))

(assert (=> start!103678 true))

(declare-fun e!703646 () Bool)

(assert (=> start!103678 e!703646))

(declare-fun b!1241361 () Bool)

(declare-fun tp_is_empty!31241 () Bool)

(declare-fun tp!92634 () Bool)

(assert (=> b!1241361 (= e!703646 (and tp_is_empty!31241 tp!92634))))

(declare-datatypes ((B!1842 0))(
  ( (B!1843 (val!15683 Int)) )
))
(declare-datatypes ((tuple2!20394 0))(
  ( (tuple2!20395 (_1!10207 (_ BitVec 64)) (_2!10207 B!1842)) )
))
(declare-datatypes ((List!27512 0))(
  ( (Nil!27509) (Cons!27508 (h!28717 tuple2!20394) (t!40982 List!27512)) )
))
(declare-fun l!644 () List!27512)

(assert (= (and start!103678 (is-Cons!27508 l!644)) b!1241361))

(push 1)

(assert (not b!1241361))

(assert tp_is_empty!31241)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

