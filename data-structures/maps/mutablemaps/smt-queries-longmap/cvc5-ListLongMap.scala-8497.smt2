; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103596 () Bool)

(assert start!103596)

(assert (=> start!103596 false))

(assert (=> start!103596 true))

(declare-fun e!703265 () Bool)

(assert (=> start!103596 e!703265))

(declare-fun b!1240671 () Bool)

(declare-fun tp_is_empty!31207 () Bool)

(declare-fun tp!92565 () Bool)

(assert (=> b!1240671 (= e!703265 (and tp_is_empty!31207 tp!92565))))

(declare-datatypes ((B!1808 0))(
  ( (B!1809 (val!15666 Int)) )
))
(declare-datatypes ((tuple2!20360 0))(
  ( (tuple2!20361 (_1!10190 (_ BitVec 64)) (_2!10190 B!1808)) )
))
(declare-datatypes ((List!27495 0))(
  ( (Nil!27492) (Cons!27491 (h!28700 tuple2!20360) (t!40965 List!27495)) )
))
(declare-fun l!644 () List!27495)

(assert (= (and start!103596 (is-Cons!27491 l!644)) b!1240671))

(push 1)

(assert (not b!1240671))

(assert tp_is_empty!31207)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

