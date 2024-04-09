; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138424 () Bool)

(assert start!138424)

(declare-fun b!1586037 () Bool)

(declare-fun e!885684 () Bool)

(declare-fun e!885687 () Bool)

(assert (=> b!1586037 (= e!885684 e!885687)))

(declare-fun res!1083281 () Bool)

(assert (=> b!1586037 (=> res!1083281 e!885687)))

(declare-datatypes ((B!3014 0))(
  ( (B!3015 (val!19869 Int)) )
))
(declare-datatypes ((tuple2!26070 0))(
  ( (tuple2!26071 (_1!13045 (_ BitVec 64)) (_2!13045 B!3014)) )
))
(declare-datatypes ((List!37150 0))(
  ( (Nil!37147) (Cons!37146 (h!38690 tuple2!26070) (t!52089 List!37150)) )
))
(declare-fun lt!677422 () List!37150)

(declare-fun isStrictlySorted!1209 (List!37150) Bool)

(assert (=> b!1586037 (= res!1083281 (not (isStrictlySorted!1209 lt!677422)))))

(declare-fun err!225 () List!37150)

(assert (=> b!1586037 (= lt!677422 err!225)))

(assert (=> b!1586037 true))

(declare-fun e!885686 () Bool)

(assert (=> b!1586037 e!885686))

(declare-fun b!1586038 () Bool)

(declare-fun e!885685 () Bool)

(declare-fun tp_is_empty!39547 () Bool)

(declare-fun tp!115351 () Bool)

(assert (=> b!1586038 (= e!885685 (and tp_is_empty!39547 tp!115351))))

(declare-fun b!1586039 () Bool)

(declare-fun res!1083284 () Bool)

(assert (=> b!1586039 (=> res!1083284 e!885687)))

(declare-fun newKey!21 () (_ BitVec 64))

(declare-fun containsKey!1019 (List!37150 (_ BitVec 64)) Bool)

(assert (=> b!1586039 (= res!1083284 (not (containsKey!1019 lt!677422 newKey!21)))))

(declare-fun res!1083283 () Bool)

(assert (=> start!138424 (=> (not res!1083283) (not e!885684))))

(declare-fun l!556 () List!37150)

(assert (=> start!138424 (= res!1083283 (isStrictlySorted!1209 l!556))))

(assert (=> start!138424 e!885684))

(assert (=> start!138424 e!885685))

(assert (=> start!138424 true))

(assert (=> start!138424 tp_is_empty!39547))

(declare-fun b!1586040 () Bool)

(declare-fun tp!115350 () Bool)

(assert (=> b!1586040 (= e!885686 (and tp_is_empty!39547 tp!115350))))

(declare-fun b!1586041 () Bool)

(declare-fun res!1083282 () Bool)

(assert (=> b!1586041 (=> (not res!1083282) (not e!885684))))

(assert (=> b!1586041 (= res!1083282 (and (or (not (is-Cons!37146 l!556)) (bvsge (_1!13045 (h!38690 l!556)) newKey!21)) (or (not (is-Cons!37146 l!556)) (not (= (_1!13045 (h!38690 l!556)) newKey!21))) (or (not (is-Cons!37146 l!556)) (bvsle (_1!13045 (h!38690 l!556)) newKey!21)) (not (is-Nil!37147 l!556))))))

(declare-fun newValue!21 () B!3014)

(declare-fun b!1586042 () Bool)

(declare-fun contains!10561 (List!37150 tuple2!26070) Bool)

(assert (=> b!1586042 (= e!885687 (not (contains!10561 lt!677422 (tuple2!26071 newKey!21 newValue!21))))))

(assert (= (and start!138424 res!1083283) b!1586041))

(assert (= (and b!1586041 res!1083282) b!1586037))

(assert (= (and b!1586037 (is-Cons!37146 err!225)) b!1586040))

(assert (= (and b!1586037 (not res!1083281)) b!1586039))

(assert (= (and b!1586039 (not res!1083284)) b!1586042))

(assert (= (and start!138424 (is-Cons!37146 l!556)) b!1586038))

(declare-fun m!1454631 () Bool)

(assert (=> b!1586037 m!1454631))

(declare-fun m!1454633 () Bool)

(assert (=> b!1586039 m!1454633))

(declare-fun m!1454635 () Bool)

(assert (=> start!138424 m!1454635))

(declare-fun m!1454637 () Bool)

(assert (=> b!1586042 m!1454637))

(push 1)

(assert (not b!1586038))

(assert (not b!1586042))

(assert (not start!138424))

(assert (not b!1586037))

(assert (not b!1586040))

(assert tp_is_empty!39547)

(assert (not b!1586039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

