; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87944 () Bool)

(assert start!87944)

(declare-fun b!1015472 () Bool)

(assert (=> b!1015472 true))

(assert (=> b!1015472 true))

(declare-fun res!681238 () Bool)

(declare-fun e!571310 () Bool)

(assert (=> start!87944 (=> (not res!681238) (not e!571310))))

(declare-datatypes ((B!1476 0))(
  ( (B!1477 (val!11822 Int)) )
))
(declare-datatypes ((tuple2!15280 0))(
  ( (tuple2!15281 (_1!7650 (_ BitVec 64)) (_2!7650 B!1476)) )
))
(declare-datatypes ((List!21587 0))(
  ( (Nil!21584) (Cons!21583 (h!22781 tuple2!15280) (t!30596 List!21587)) )
))
(declare-fun l!412 () List!21587)

(declare-fun isStrictlySorted!592 (List!21587) Bool)

(assert (=> start!87944 (= res!681238 (isStrictlySorted!592 l!412))))

(assert (=> start!87944 e!571310))

(declare-fun e!571309 () Bool)

(assert (=> start!87944 e!571309))

(declare-fun tp_is_empty!23543 () Bool)

(assert (=> start!87944 tp_is_empty!23543))

(declare-fun b!1015471 () Bool)

(declare-fun res!681237 () Bool)

(assert (=> b!1015471 (=> (not res!681237) (not e!571310))))

(declare-fun value!115 () B!1476)

(assert (=> b!1015471 (= res!681237 (and (or (not (is-Cons!21583 l!412)) (not (= (_2!7650 (h!22781 l!412)) value!115))) (or (not (is-Cons!21583 l!412)) (= (_2!7650 (h!22781 l!412)) value!115)) (not (is-Nil!21584 l!412))))))

(declare-datatypes ((List!21588 0))(
  ( (Nil!21585) (Cons!21584 (h!22782 (_ BitVec 64)) (t!30597 List!21588)) )
))
(declare-fun err!119 () List!21588)

(declare-fun lambda!908 () Int)

(declare-fun forall!261 (List!21588 Int) Bool)

(assert (=> b!1015472 (= e!571310 (not (forall!261 err!119 lambda!908)))))

(assert (=> b!1015472 true))

(declare-fun b!1015473 () Bool)

(declare-fun tp!70644 () Bool)

(assert (=> b!1015473 (= e!571309 (and tp_is_empty!23543 tp!70644))))

(assert (= (and start!87944 res!681238) b!1015471))

(assert (= (and b!1015471 res!681237) b!1015472))

(assert (= (and start!87944 (is-Cons!21583 l!412)) b!1015473))

(declare-fun m!937673 () Bool)

(assert (=> start!87944 m!937673))

(declare-fun m!937675 () Bool)

(assert (=> b!1015472 m!937675))

(push 1)

(assert (not b!1015472))

(assert (not start!87944))

(assert (not b!1015473))

(assert tp_is_empty!23543)

(check-sat)

(pop 1)

