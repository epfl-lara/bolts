; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115280 () Bool)

(assert start!115280)

(declare-fun res!908169 () Bool)

(declare-fun e!773818 () Bool)

(assert (=> start!115280 (=> (not res!908169) (not e!773818))))

(declare-datatypes ((List!31997 0))(
  ( (Nil!31994) (Cons!31993 (h!33202 (_ BitVec 64)) (t!46698 List!31997)) )
))
(declare-datatypes ((tuple2!24522 0))(
  ( (tuple2!24523 (_1!12271 (_ BitVec 64)) (_2!12271 List!31997)) )
))
(declare-datatypes ((Option!787 0))(
  ( (Some!786 (v!21583 tuple2!24522)) (None!785) )
))
(declare-fun lt!601007 () Option!787)

(declare-fun isEmpty!1112 (Option!787) Bool)

(assert (=> start!115280 (= res!908169 (not (isEmpty!1112 lt!601007)))))

(declare-fun l!3677 () List!31997)

(declare-fun unapply!52 (List!31997) Option!787)

(assert (=> start!115280 (= lt!601007 (unapply!52 l!3677))))

(assert (=> start!115280 e!773818))

(assert (=> start!115280 true))

(declare-fun b!1364432 () Bool)

(declare-fun isDefined!539 (Option!787) Bool)

(assert (=> b!1364432 (= e!773818 (not (isDefined!539 lt!601007)))))

(assert (= (and start!115280 res!908169) b!1364432))

(declare-fun m!1249243 () Bool)

(assert (=> start!115280 m!1249243))

(declare-fun m!1249245 () Bool)

(assert (=> start!115280 m!1249245))

(declare-fun m!1249247 () Bool)

(assert (=> b!1364432 m!1249247))

(push 1)

(assert (not start!115280))

(assert (not b!1364432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146367 () Bool)

(assert (=> d!146367 (= (isEmpty!1112 lt!601007) (not (is-Some!786 lt!601007)))))

(assert (=> start!115280 d!146367))

(declare-fun d!146373 () Bool)

(assert (=> d!146373 (= (unapply!52 l!3677) (ite (is-Nil!31994 l!3677) None!785 (Some!786 (tuple2!24523 (h!33202 l!3677) (t!46698 l!3677)))))))

(assert (=> start!115280 d!146373))

(declare-fun d!146379 () Bool)

(assert (=> d!146379 (= (isDefined!539 lt!601007) (not (isEmpty!1112 lt!601007)))))

(declare-fun bs!39130 () Bool)

(assert (= bs!39130 d!146379))

(assert (=> bs!39130 m!1249243))

(assert (=> b!1364432 d!146379))

(push 1)

