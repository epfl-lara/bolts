; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115284 () Bool)

(assert start!115284)

(declare-fun res!908175 () Bool)

(declare-fun e!773824 () Bool)

(assert (=> start!115284 (=> (not res!908175) (not e!773824))))

(declare-datatypes ((List!31999 0))(
  ( (Nil!31996) (Cons!31995 (h!33204 (_ BitVec 64)) (t!46700 List!31999)) )
))
(declare-datatypes ((tuple2!24526 0))(
  ( (tuple2!24527 (_1!12273 (_ BitVec 64)) (_2!12273 List!31999)) )
))
(declare-datatypes ((Option!789 0))(
  ( (Some!788 (v!21585 tuple2!24526)) (None!787) )
))
(declare-fun lt!601013 () Option!789)

(declare-fun isEmpty!1114 (Option!789) Bool)

(assert (=> start!115284 (= res!908175 (not (isEmpty!1114 lt!601013)))))

(declare-fun l!3677 () List!31999)

(declare-fun unapply!54 (List!31999) Option!789)

(assert (=> start!115284 (= lt!601013 (unapply!54 l!3677))))

(assert (=> start!115284 e!773824))

(assert (=> start!115284 true))

(declare-fun b!1364438 () Bool)

(declare-fun isDefined!541 (Option!789) Bool)

(assert (=> b!1364438 (= e!773824 (not (isDefined!541 lt!601013)))))

(assert (= (and start!115284 res!908175) b!1364438))

(declare-fun m!1249255 () Bool)

(assert (=> start!115284 m!1249255))

(declare-fun m!1249257 () Bool)

(assert (=> start!115284 m!1249257))

(declare-fun m!1249259 () Bool)

(assert (=> b!1364438 m!1249259))

(push 1)

(assert (not b!1364438))

(assert (not start!115284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146363 () Bool)

(assert (=> d!146363 (= (isDefined!541 lt!601013) (not (isEmpty!1114 lt!601013)))))

(declare-fun bs!39128 () Bool)

(assert (= bs!39128 d!146363))

(assert (=> bs!39128 m!1249255))

(assert (=> b!1364438 d!146363))

(declare-fun d!146371 () Bool)

(assert (=> d!146371 (= (isEmpty!1114 lt!601013) (not (is-Some!788 lt!601013)))))

(assert (=> start!115284 d!146371))

(declare-fun d!146375 () Bool)

(assert (=> d!146375 (= (unapply!54 l!3677) (ite (is-Nil!31996 l!3677) None!787 (Some!788 (tuple2!24527 (h!33204 l!3677) (t!46700 l!3677)))))))

(assert (=> start!115284 d!146375))

(push 1)

