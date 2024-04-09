; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115236 () Bool)

(assert start!115236)

(declare-fun res!908157 () Bool)

(declare-fun e!773806 () Bool)

(assert (=> start!115236 (=> (not res!908157) (not e!773806))))

(declare-datatypes ((List!31993 0))(
  ( (Nil!31990) (Cons!31989 (h!33198 (_ BitVec 64)) (t!46694 List!31993)) )
))
(declare-datatypes ((tuple2!24514 0))(
  ( (tuple2!24515 (_1!12267 (_ BitVec 64)) (_2!12267 List!31993)) )
))
(declare-datatypes ((Option!783 0))(
  ( (Some!782 (v!21579 tuple2!24514)) (None!781) )
))
(declare-fun lt!600995 () Option!783)

(declare-fun isEmpty!1108 (Option!783) Bool)

(assert (=> start!115236 (= res!908157 (not (isEmpty!1108 lt!600995)))))

(declare-fun l!3677 () List!31993)

(declare-fun unapply!48 (List!31993) Option!783)

(assert (=> start!115236 (= lt!600995 (unapply!48 l!3677))))

(assert (=> start!115236 e!773806))

(assert (=> start!115236 true))

(declare-fun b!1364420 () Bool)

(declare-fun isDefined!535 (Option!783) Bool)

(assert (=> b!1364420 (= e!773806 (not (isDefined!535 lt!600995)))))

(assert (= (and start!115236 res!908157) b!1364420))

(declare-fun m!1249219 () Bool)

(assert (=> start!115236 m!1249219))

(declare-fun m!1249221 () Bool)

(assert (=> start!115236 m!1249221))

(declare-fun m!1249223 () Bool)

(assert (=> b!1364420 m!1249223))

(push 1)

(assert (not start!115236))

(assert (not b!1364420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146327 () Bool)

(assert (=> d!146327 (= (isEmpty!1108 lt!600995) (not (is-Some!782 lt!600995)))))

(assert (=> start!115236 d!146327))

(declare-fun d!146333 () Bool)

(assert (=> d!146333 (= (unapply!48 l!3677) (ite (is-Nil!31990 l!3677) None!781 (Some!782 (tuple2!24515 (h!33198 l!3677) (t!46694 l!3677)))))))

(assert (=> start!115236 d!146333))

(declare-fun d!146339 () Bool)

(assert (=> d!146339 (= (isDefined!535 lt!600995) (not (isEmpty!1108 lt!600995)))))

(declare-fun bs!39118 () Bool)

(assert (= bs!39118 d!146339))

