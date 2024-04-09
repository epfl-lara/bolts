; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103702 () Bool)

(assert start!103702)

(assert (=> start!103702 false))

(assert (=> start!103702 true))

(declare-fun e!703733 () Bool)

(assert (=> start!103702 e!703733))

(declare-fun b!1241490 () Bool)

(declare-fun tp_is_empty!31253 () Bool)

(declare-fun tp!92661 () Bool)

(assert (=> b!1241490 (= e!703733 (and tp_is_empty!31253 tp!92661))))

(declare-datatypes ((B!1854 0))(
  ( (B!1855 (val!15689 Int)) )
))
(declare-datatypes ((tuple2!20406 0))(
  ( (tuple2!20407 (_1!10213 (_ BitVec 64)) (_2!10213 B!1854)) )
))
(declare-datatypes ((List!27518 0))(
  ( (Nil!27515) (Cons!27514 (h!28723 tuple2!20406) (t!40988 List!27518)) )
))
(declare-fun l!644 () List!27518)

(assert (= (and start!103702 (is-Cons!27514 l!644)) b!1241490))

(push 1)

(assert (not b!1241490))

(assert tp_is_empty!31253)

(check-sat)

(pop 1)

