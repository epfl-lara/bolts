; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115258 () Bool)

(assert start!115258)

(declare-fun res!908163 () Bool)

(declare-fun e!773812 () Bool)

(assert (=> start!115258 (=> (not res!908163) (not e!773812))))

(declare-datatypes ((List!31995 0))(
  ( (Nil!31992) (Cons!31991 (h!33200 (_ BitVec 64)) (t!46696 List!31995)) )
))
(declare-datatypes ((tuple2!24518 0))(
  ( (tuple2!24519 (_1!12269 (_ BitVec 64)) (_2!12269 List!31995)) )
))
(declare-datatypes ((Option!785 0))(
  ( (Some!784 (v!21581 tuple2!24518)) (None!783) )
))
(declare-fun lt!601001 () Option!785)

(declare-fun isEmpty!1110 (Option!785) Bool)

(assert (=> start!115258 (= res!908163 (not (isEmpty!1110 lt!601001)))))

(declare-fun l!3677 () List!31995)

(declare-fun unapply!50 (List!31995) Option!785)

(assert (=> start!115258 (= lt!601001 (unapply!50 l!3677))))

(assert (=> start!115258 e!773812))

(assert (=> start!115258 true))

(declare-fun b!1364426 () Bool)

(declare-fun isDefined!537 (Option!785) Bool)

(assert (=> b!1364426 (= e!773812 (not (isDefined!537 lt!601001)))))

(assert (= (and start!115258 res!908163) b!1364426))

(declare-fun m!1249231 () Bool)

(assert (=> start!115258 m!1249231))

(declare-fun m!1249233 () Bool)

(assert (=> start!115258 m!1249233))

(declare-fun m!1249235 () Bool)

(assert (=> b!1364426 m!1249235))

(check-sat (not b!1364426) (not start!115258))
(check-sat)
(get-model)

(declare-fun d!146345 () Bool)

(assert (=> d!146345 (= (isDefined!537 lt!601001) (not (isEmpty!1110 lt!601001)))))

(declare-fun bs!39122 () Bool)

(assert (= bs!39122 d!146345))

(assert (=> bs!39122 m!1249231))

(assert (=> b!1364426 d!146345))

(declare-fun d!146351 () Bool)

(get-info :version)

(assert (=> d!146351 (= (isEmpty!1110 lt!601001) (not ((_ is Some!784) lt!601001)))))

(assert (=> start!115258 d!146351))

(declare-fun d!146355 () Bool)

(assert (=> d!146355 (= (unapply!50 l!3677) (ite ((_ is Nil!31992) l!3677) None!783 (Some!784 (tuple2!24519 (h!33200 l!3677) (t!46696 l!3677)))))))

(assert (=> start!115258 d!146355))

(check-sat (not d!146345))
(check-sat)
