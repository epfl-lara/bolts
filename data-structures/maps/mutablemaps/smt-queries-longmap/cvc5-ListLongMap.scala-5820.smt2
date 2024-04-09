; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75110 () Bool)

(assert start!75110)

(assert (=> start!75110 false))

(declare-fun e!492626 () Bool)

(assert (=> start!75110 e!492626))

(assert (=> start!75110 true))

(declare-fun b!885100 () Bool)

(declare-fun tp_is_empty!17749 () Bool)

(declare-fun tp!54231 () Bool)

(assert (=> b!885100 (= e!492626 (and tp_is_empty!17749 tp!54231))))

(declare-datatypes ((B!1238 0))(
  ( (B!1239 (val!8925 Int)) )
))
(declare-datatypes ((tuple2!11870 0))(
  ( (tuple2!11871 (_1!5945 (_ BitVec 64)) (_2!5945 B!1238)) )
))
(declare-datatypes ((List!17725 0))(
  ( (Nil!17722) (Cons!17721 (h!18852 tuple2!11870) (t!25010 List!17725)) )
))
(declare-fun l!906 () List!17725)

(assert (= (and start!75110 (is-Cons!17721 l!906)) b!885100))

(push 1)

(assert (not b!885100))

(assert tp_is_empty!17749)

(check-sat)

(pop 1)

