; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115410 () Bool)

(assert start!115410)

(declare-fun res!908304 () Bool)

(declare-fun e!773965 () Bool)

(assert (=> start!115410 (=> (not res!908304) (not e!773965))))

(declare-datatypes ((List!32014 0))(
  ( (Nil!32011) (Cons!32010 (h!33219 (_ BitVec 64)) (t!46715 List!32014)) )
))
(declare-fun l!3677 () List!32014)

(declare-datatypes ((tuple2!24550 0))(
  ( (tuple2!24551 (_1!12285 (_ BitVec 64)) (_2!12285 List!32014)) )
))
(declare-datatypes ((Option!801 0))(
  ( (Some!800 (v!21597 tuple2!24550)) (None!799) )
))
(declare-fun isEmpty!1126 (Option!801) Bool)

(declare-fun unapply!66 (List!32014) Option!801)

(assert (=> start!115410 (= res!908304 (isEmpty!1126 (unapply!66 l!3677)))))

(assert (=> start!115410 e!773965))

(assert (=> start!115410 true))

(declare-fun b!1364609 () Bool)

(assert (=> b!1364609 (= e!773965 (not (is-Nil!32011 l!3677)))))

(assert (= (and start!115410 res!908304) b!1364609))

(declare-fun m!1249419 () Bool)

(assert (=> start!115410 m!1249419))

(assert (=> start!115410 m!1249419))

(declare-fun m!1249421 () Bool)

(assert (=> start!115410 m!1249421))

(push 1)

(assert (not start!115410))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146485 () Bool)

(assert (=> d!146485 (= (isEmpty!1126 (unapply!66 l!3677)) (not (is-Some!800 (unapply!66 l!3677))))))

(assert (=> start!115410 d!146485))

(declare-fun d!146491 () Bool)

(assert (=> d!146491 (= (unapply!66 l!3677) (ite (is-Nil!32011 l!3677) None!799 (Some!800 (tuple2!24551 (h!33219 l!3677) (t!46715 l!3677)))))))

(assert (=> start!115410 d!146491))

(push 1)

