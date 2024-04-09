; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115256 () Bool)

(assert start!115256)

(declare-fun res!908160 () Bool)

(declare-fun e!773809 () Bool)

(assert (=> start!115256 (=> (not res!908160) (not e!773809))))

(declare-datatypes ((List!31994 0))(
  ( (Nil!31991) (Cons!31990 (h!33199 (_ BitVec 64)) (t!46695 List!31994)) )
))
(declare-datatypes ((tuple2!24516 0))(
  ( (tuple2!24517 (_1!12268 (_ BitVec 64)) (_2!12268 List!31994)) )
))
(declare-datatypes ((Option!784 0))(
  ( (Some!783 (v!21580 tuple2!24516)) (None!782) )
))
(declare-fun lt!600998 () Option!784)

(declare-fun isEmpty!1109 (Option!784) Bool)

(assert (=> start!115256 (= res!908160 (not (isEmpty!1109 lt!600998)))))

(declare-fun l!3677 () List!31994)

(declare-fun unapply!49 (List!31994) Option!784)

(assert (=> start!115256 (= lt!600998 (unapply!49 l!3677))))

(assert (=> start!115256 e!773809))

(assert (=> start!115256 true))

(declare-fun b!1364423 () Bool)

(declare-fun isDefined!536 (Option!784) Bool)

(assert (=> b!1364423 (= e!773809 (not (isDefined!536 lt!600998)))))

(assert (= (and start!115256 res!908160) b!1364423))

(declare-fun m!1249225 () Bool)

(assert (=> start!115256 m!1249225))

(declare-fun m!1249227 () Bool)

(assert (=> start!115256 m!1249227))

(declare-fun m!1249229 () Bool)

(assert (=> b!1364423 m!1249229))

(push 1)

(assert (not start!115256))

(assert (not b!1364423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146344 () Bool)

(assert (=> d!146344 (= (isEmpty!1109 lt!600998) (not (is-Some!783 lt!600998)))))

(assert (=> start!115256 d!146344))

(declare-fun d!146349 () Bool)

(assert (=> d!146349 (= (unapply!49 l!3677) (ite (is-Nil!31991 l!3677) None!782 (Some!783 (tuple2!24517 (h!33199 l!3677) (t!46695 l!3677)))))))

(assert (=> start!115256 d!146349))

(declare-fun d!146357 () Bool)

(assert (=> d!146357 (= (isDefined!536 lt!600998) (not (isEmpty!1109 lt!600998)))))

(declare-fun bs!39123 () Bool)

(assert (= bs!39123 d!146357))

(assert (=> bs!39123 m!1249225))

(assert (=> b!1364423 d!146357))

(push 1)

(assert (not d!146357))

(check-sat)

