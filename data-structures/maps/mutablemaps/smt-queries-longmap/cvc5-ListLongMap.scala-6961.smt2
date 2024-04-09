; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87940 () Bool)

(assert start!87940)

(declare-fun b!1015446 () Bool)

(assert (=> b!1015446 true))

(assert (=> b!1015446 true))

(declare-fun res!681226 () Bool)

(declare-fun e!571298 () Bool)

(assert (=> start!87940 (=> (not res!681226) (not e!571298))))

(declare-datatypes ((B!1472 0))(
  ( (B!1473 (val!11820 Int)) )
))
(declare-datatypes ((tuple2!15276 0))(
  ( (tuple2!15277 (_1!7648 (_ BitVec 64)) (_2!7648 B!1472)) )
))
(declare-datatypes ((List!21583 0))(
  ( (Nil!21580) (Cons!21579 (h!22777 tuple2!15276) (t!30592 List!21583)) )
))
(declare-fun l!412 () List!21583)

(declare-fun isStrictlySorted!590 (List!21583) Bool)

(assert (=> start!87940 (= res!681226 (isStrictlySorted!590 l!412))))

(assert (=> start!87940 e!571298))

(declare-fun e!571297 () Bool)

(assert (=> start!87940 e!571297))

(declare-fun tp_is_empty!23539 () Bool)

(assert (=> start!87940 tp_is_empty!23539))

(declare-fun b!1015445 () Bool)

(declare-fun res!681225 () Bool)

(assert (=> b!1015445 (=> (not res!681225) (not e!571298))))

(declare-fun value!115 () B!1472)

(assert (=> b!1015445 (= res!681225 (and (or (not (is-Cons!21579 l!412)) (not (= (_2!7648 (h!22777 l!412)) value!115))) (or (not (is-Cons!21579 l!412)) (= (_2!7648 (h!22777 l!412)) value!115)) (not (is-Nil!21580 l!412))))))

(declare-datatypes ((List!21584 0))(
  ( (Nil!21581) (Cons!21580 (h!22778 (_ BitVec 64)) (t!30593 List!21584)) )
))
(declare-fun err!111 () List!21584)

(declare-fun lambda!902 () Int)

(declare-fun forall!259 (List!21584 Int) Bool)

(assert (=> b!1015446 (= e!571298 (not (forall!259 err!111 lambda!902)))))

(assert (=> b!1015446 true))

(declare-fun b!1015447 () Bool)

(declare-fun tp!70638 () Bool)

(assert (=> b!1015447 (= e!571297 (and tp_is_empty!23539 tp!70638))))

(assert (= (and start!87940 res!681226) b!1015445))

(assert (= (and b!1015445 res!681225) b!1015446))

(assert (= (and start!87940 (is-Cons!21579 l!412)) b!1015447))

(declare-fun m!937665 () Bool)

(assert (=> start!87940 m!937665))

(declare-fun m!937667 () Bool)

(assert (=> b!1015446 m!937667))

(push 1)

(assert (not b!1015446))

(assert (not start!87940))

(assert (not b!1015447))

(assert tp_is_empty!23539)

(check-sat)

(pop 1)

