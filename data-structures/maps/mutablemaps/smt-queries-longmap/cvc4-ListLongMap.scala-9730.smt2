; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115260 () Bool)

(assert start!115260)

(declare-fun res!908166 () Bool)

(declare-fun e!773815 () Bool)

(assert (=> start!115260 (=> (not res!908166) (not e!773815))))

(declare-datatypes ((List!31996 0))(
  ( (Nil!31993) (Cons!31992 (h!33201 (_ BitVec 64)) (t!46697 List!31996)) )
))
(declare-datatypes ((tuple2!24520 0))(
  ( (tuple2!24521 (_1!12270 (_ BitVec 64)) (_2!12270 List!31996)) )
))
(declare-datatypes ((Option!786 0))(
  ( (Some!785 (v!21582 tuple2!24520)) (None!784) )
))
(declare-fun lt!601004 () Option!786)

(declare-fun isEmpty!1111 (Option!786) Bool)

(assert (=> start!115260 (= res!908166 (not (isEmpty!1111 lt!601004)))))

(declare-fun l!3677 () List!31996)

(declare-fun unapply!51 (List!31996) Option!786)

(assert (=> start!115260 (= lt!601004 (unapply!51 l!3677))))

(assert (=> start!115260 e!773815))

(assert (=> start!115260 true))

(declare-fun b!1364429 () Bool)

(declare-fun isDefined!538 (Option!786) Bool)

(assert (=> b!1364429 (= e!773815 (not (isDefined!538 lt!601004)))))

(assert (= (and start!115260 res!908166) b!1364429))

(declare-fun m!1249237 () Bool)

(assert (=> start!115260 m!1249237))

(declare-fun m!1249239 () Bool)

(assert (=> start!115260 m!1249239))

(declare-fun m!1249241 () Bool)

(assert (=> b!1364429 m!1249241))

(push 1)

(assert (not start!115260))

(assert (not b!1364429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146347 () Bool)

(assert (=> d!146347 (= (isEmpty!1111 lt!601004) (not (is-Some!785 lt!601004)))))

(assert (=> start!115260 d!146347))

(declare-fun d!146353 () Bool)

(assert (=> d!146353 (= (unapply!51 l!3677) (ite (is-Nil!31993 l!3677) None!784 (Some!785 (tuple2!24521 (h!33201 l!3677) (t!46697 l!3677)))))))

(assert (=> start!115260 d!146353))

(declare-fun d!146359 () Bool)

(assert (=> d!146359 (= (isDefined!538 lt!601004) (not (isEmpty!1111 lt!601004)))))

(declare-fun bs!39124 () Bool)

(assert (= bs!39124 d!146359))

(assert (=> bs!39124 m!1249237))

(assert (=> b!1364429 d!146359))

(push 1)

