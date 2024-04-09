; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75176 () Bool)

(assert start!75176)

(assert (=> start!75176 false))

(declare-fun e!492923 () Bool)

(assert (=> start!75176 e!492923))

(declare-fun b!885607 () Bool)

(declare-fun tp_is_empty!17785 () Bool)

(declare-fun tp!54303 () Bool)

(assert (=> b!885607 (= e!492923 (and tp_is_empty!17785 tp!54303))))

(declare-datatypes ((B!1274 0))(
  ( (B!1275 (val!8943 Int)) )
))
(declare-datatypes ((tuple2!11906 0))(
  ( (tuple2!11907 (_1!5963 (_ BitVec 64)) (_2!5963 B!1274)) )
))
(declare-datatypes ((List!17743 0))(
  ( (Nil!17740) (Cons!17739 (h!18870 tuple2!11906) (t!25028 List!17743)) )
))
(declare-fun l!906 () List!17743)

(assert (= (and start!75176 (is-Cons!17739 l!906)) b!885607))

(push 1)

(assert (not b!885607))

(assert tp_is_empty!17785)

(check-sat)

(pop 1)

