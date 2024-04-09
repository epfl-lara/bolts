; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103698 () Bool)

(assert start!103698)

(assert (=> start!103698 false))

(assert (=> start!103698 true))

(declare-fun e!703727 () Bool)

(assert (=> start!103698 e!703727))

(declare-fun b!1241484 () Bool)

(declare-fun tp_is_empty!31249 () Bool)

(declare-fun tp!92655 () Bool)

(assert (=> b!1241484 (= e!703727 (and tp_is_empty!31249 tp!92655))))

(declare-datatypes ((B!1850 0))(
  ( (B!1851 (val!15687 Int)) )
))
(declare-datatypes ((tuple2!20402 0))(
  ( (tuple2!20403 (_1!10211 (_ BitVec 64)) (_2!10211 B!1850)) )
))
(declare-datatypes ((List!27516 0))(
  ( (Nil!27513) (Cons!27512 (h!28721 tuple2!20402) (t!40986 List!27516)) )
))
(declare-fun l!644 () List!27516)

(assert (= (and start!103698 (is-Cons!27512 l!644)) b!1241484))

(push 1)

(assert (not b!1241484))

(assert tp_is_empty!31249)

(check-sat)

(pop 1)

