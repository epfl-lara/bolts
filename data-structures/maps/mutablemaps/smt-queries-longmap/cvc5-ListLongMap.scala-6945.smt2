; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87502 () Bool)

(assert start!87502)

(assert (=> start!87502 false))

(declare-fun e!569915 () Bool)

(assert (=> start!87502 e!569915))

(declare-fun b!1013080 () Bool)

(declare-fun tp_is_empty!23443 () Bool)

(declare-fun tp!70374 () Bool)

(assert (=> b!1013080 (= e!569915 (and tp_is_empty!23443 tp!70374))))

(declare-datatypes ((B!1376 0))(
  ( (B!1377 (val!11772 Int)) )
))
(declare-datatypes ((tuple2!15180 0))(
  ( (tuple2!15181 (_1!7600 (_ BitVec 64)) (_2!7600 B!1376)) )
))
(declare-datatypes ((List!21505 0))(
  ( (Nil!21502) (Cons!21501 (h!22699 tuple2!15180) (t!30514 List!21505)) )
))
(declare-fun l!412 () List!21505)

(assert (= (and start!87502 (is-Cons!21501 l!412)) b!1013080))

(push 1)

(assert (not b!1013080))

(assert tp_is_empty!23443)

(check-sat)

(pop 1)

