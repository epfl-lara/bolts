; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103590 () Bool)

(assert start!103590)

(assert (=> start!103590 false))

(assert (=> start!103590 true))

(declare-fun e!703256 () Bool)

(assert (=> start!103590 e!703256))

(declare-fun b!1240662 () Bool)

(declare-fun tp_is_empty!31201 () Bool)

(declare-fun tp!92556 () Bool)

(assert (=> b!1240662 (= e!703256 (and tp_is_empty!31201 tp!92556))))

(declare-datatypes ((B!1802 0))(
  ( (B!1803 (val!15663 Int)) )
))
(declare-datatypes ((tuple2!20354 0))(
  ( (tuple2!20355 (_1!10187 (_ BitVec 64)) (_2!10187 B!1802)) )
))
(declare-datatypes ((List!27492 0))(
  ( (Nil!27489) (Cons!27488 (h!28697 tuple2!20354) (t!40962 List!27492)) )
))
(declare-fun l!644 () List!27492)

(assert (= (and start!103590 (is-Cons!27488 l!644)) b!1240662))

(push 1)

(assert (not b!1240662))

(assert tp_is_empty!31201)

(check-sat)

(pop 1)

