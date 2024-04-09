; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115408 () Bool)

(assert start!115408)

(declare-fun res!908301 () Bool)

(declare-fun e!773962 () Bool)

(assert (=> start!115408 (=> (not res!908301) (not e!773962))))

(declare-datatypes ((List!32013 0))(
  ( (Nil!32010) (Cons!32009 (h!33218 (_ BitVec 64)) (t!46714 List!32013)) )
))
(declare-fun l!3677 () List!32013)

(declare-datatypes ((tuple2!24548 0))(
  ( (tuple2!24549 (_1!12284 (_ BitVec 64)) (_2!12284 List!32013)) )
))
(declare-datatypes ((Option!800 0))(
  ( (Some!799 (v!21596 tuple2!24548)) (None!798) )
))
(declare-fun isEmpty!1125 (Option!800) Bool)

(declare-fun unapply!65 (List!32013) Option!800)

(assert (=> start!115408 (= res!908301 (isEmpty!1125 (unapply!65 l!3677)))))

(assert (=> start!115408 e!773962))

(assert (=> start!115408 true))

(declare-fun b!1364606 () Bool)

(get-info :version)

(assert (=> b!1364606 (= e!773962 (not ((_ is Nil!32010) l!3677)))))

(assert (= (and start!115408 res!908301) b!1364606))

(declare-fun m!1249415 () Bool)

(assert (=> start!115408 m!1249415))

(assert (=> start!115408 m!1249415))

(declare-fun m!1249417 () Bool)

(assert (=> start!115408 m!1249417))

(check-sat (not start!115408))
(check-sat)
(get-model)

(declare-fun d!146483 () Bool)

(assert (=> d!146483 (= (isEmpty!1125 (unapply!65 l!3677)) (not ((_ is Some!799) (unapply!65 l!3677))))))

(assert (=> start!115408 d!146483))

(declare-fun d!146489 () Bool)

(assert (=> d!146489 (= (unapply!65 l!3677) (ite ((_ is Nil!32010) l!3677) None!798 (Some!799 (tuple2!24549 (h!33218 l!3677) (t!46714 l!3677)))))))

(assert (=> start!115408 d!146489))

(check-sat)
