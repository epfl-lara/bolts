; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87934 () Bool)

(assert start!87934)

(declare-fun res!681214 () Bool)

(declare-fun e!571279 () Bool)

(assert (=> start!87934 (=> (not res!681214) (not e!571279))))

(declare-datatypes ((B!1466 0))(
  ( (B!1467 (val!11817 Int)) )
))
(declare-datatypes ((tuple2!15270 0))(
  ( (tuple2!15271 (_1!7645 (_ BitVec 64)) (_2!7645 B!1466)) )
))
(declare-datatypes ((List!21580 0))(
  ( (Nil!21577) (Cons!21576 (h!22774 tuple2!15270) (t!30589 List!21580)) )
))
(declare-fun l!412 () List!21580)

(declare-fun isStrictlySorted!587 (List!21580) Bool)

(assert (=> start!87934 (= res!681214 (isStrictlySorted!587 l!412))))

(assert (=> start!87934 e!571279))

(declare-fun e!571280 () Bool)

(assert (=> start!87934 e!571280))

(declare-fun tp_is_empty!23533 () Bool)

(assert (=> start!87934 tp_is_empty!23533))

(declare-fun b!1015425 () Bool)

(declare-fun value!115 () B!1466)

(assert (=> b!1015425 (= e!571279 (and (or (not (is-Cons!21576 l!412)) (not (= (_2!7645 (h!22774 l!412)) value!115))) (or (not (is-Cons!21576 l!412)) (= (_2!7645 (h!22774 l!412)) value!115)) (not (is-Nil!21577 l!412))))))

(declare-fun b!1015426 () Bool)

(declare-fun tp!70629 () Bool)

(assert (=> b!1015426 (= e!571280 (and tp_is_empty!23533 tp!70629))))

(assert (= (and start!87934 res!681214) b!1015425))

(assert (= (and start!87934 (is-Cons!21576 l!412)) b!1015426))

(declare-fun m!937659 () Bool)

(assert (=> start!87934 m!937659))

(push 1)

(assert (not start!87934))

(assert (not b!1015426))

(assert tp_is_empty!23533)

(check-sat)

