; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115232 () Bool)

(assert start!115232)

(declare-fun res!908151 () Bool)

(declare-fun e!773800 () Bool)

(assert (=> start!115232 (=> (not res!908151) (not e!773800))))

(declare-datatypes ((List!31991 0))(
  ( (Nil!31988) (Cons!31987 (h!33196 (_ BitVec 64)) (t!46692 List!31991)) )
))
(declare-datatypes ((tuple2!24510 0))(
  ( (tuple2!24511 (_1!12265 (_ BitVec 64)) (_2!12265 List!31991)) )
))
(declare-datatypes ((Option!781 0))(
  ( (Some!780 (v!21577 tuple2!24510)) (None!779) )
))
(declare-fun lt!600989 () Option!781)

(declare-fun isEmpty!1106 (Option!781) Bool)

(assert (=> start!115232 (= res!908151 (not (isEmpty!1106 lt!600989)))))

(declare-fun l!3677 () List!31991)

(declare-fun unapply!46 (List!31991) Option!781)

(assert (=> start!115232 (= lt!600989 (unapply!46 l!3677))))

(assert (=> start!115232 e!773800))

(assert (=> start!115232 true))

(declare-fun b!1364414 () Bool)

(declare-fun isDefined!533 (Option!781) Bool)

(assert (=> b!1364414 (= e!773800 (not (isDefined!533 lt!600989)))))

(assert (= (and start!115232 res!908151) b!1364414))

(declare-fun m!1249207 () Bool)

(assert (=> start!115232 m!1249207))

(declare-fun m!1249209 () Bool)

(assert (=> start!115232 m!1249209))

(declare-fun m!1249211 () Bool)

(assert (=> b!1364414 m!1249211))

(push 1)

(assert (not b!1364414))

(assert (not start!115232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146323 () Bool)

(assert (=> d!146323 (= (isDefined!533 lt!600989) (not (isEmpty!1106 lt!600989)))))

(declare-fun bs!39116 () Bool)

(assert (= bs!39116 d!146323))

(assert (=> bs!39116 m!1249207))

(assert (=> b!1364414 d!146323))

(declare-fun d!146329 () Bool)

(assert (=> d!146329 (= (isEmpty!1106 lt!600989) (not (is-Some!780 lt!600989)))))

(assert (=> start!115232 d!146329))

(declare-fun d!146335 () Bool)

(assert (=> d!146335 (= (unapply!46 l!3677) (ite (is-Nil!31988 l!3677) None!779 (Some!780 (tuple2!24511 (h!33196 l!3677) (t!46692 l!3677)))))))

(assert (=> start!115232 d!146335))

(push 1)

