; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115282 () Bool)

(assert start!115282)

(declare-fun res!908172 () Bool)

(declare-fun e!773821 () Bool)

(assert (=> start!115282 (=> (not res!908172) (not e!773821))))

(declare-datatypes ((List!31998 0))(
  ( (Nil!31995) (Cons!31994 (h!33203 (_ BitVec 64)) (t!46699 List!31998)) )
))
(declare-datatypes ((tuple2!24524 0))(
  ( (tuple2!24525 (_1!12272 (_ BitVec 64)) (_2!12272 List!31998)) )
))
(declare-datatypes ((Option!788 0))(
  ( (Some!787 (v!21584 tuple2!24524)) (None!786) )
))
(declare-fun lt!601010 () Option!788)

(declare-fun isEmpty!1113 (Option!788) Bool)

(assert (=> start!115282 (= res!908172 (not (isEmpty!1113 lt!601010)))))

(declare-fun l!3677 () List!31998)

(declare-fun unapply!53 (List!31998) Option!788)

(assert (=> start!115282 (= lt!601010 (unapply!53 l!3677))))

(assert (=> start!115282 e!773821))

(assert (=> start!115282 true))

(declare-fun b!1364435 () Bool)

(declare-fun isDefined!540 (Option!788) Bool)

(assert (=> b!1364435 (= e!773821 (not (isDefined!540 lt!601010)))))

(assert (= (and start!115282 res!908172) b!1364435))

(declare-fun m!1249249 () Bool)

(assert (=> start!115282 m!1249249))

(declare-fun m!1249251 () Bool)

(assert (=> start!115282 m!1249251))

(declare-fun m!1249253 () Bool)

(assert (=> b!1364435 m!1249253))

(check-sat (not start!115282) (not b!1364435))
(check-sat)
(get-model)

(declare-fun d!146365 () Bool)

(get-info :version)

(assert (=> d!146365 (= (isEmpty!1113 lt!601010) (not ((_ is Some!787) lt!601010)))))

(assert (=> start!115282 d!146365))

(declare-fun d!146369 () Bool)

(assert (=> d!146369 (= (unapply!53 l!3677) (ite ((_ is Nil!31995) l!3677) None!786 (Some!787 (tuple2!24525 (h!33203 l!3677) (t!46699 l!3677)))))))

(assert (=> start!115282 d!146369))

(declare-fun d!146377 () Bool)

(assert (=> d!146377 (= (isDefined!540 lt!601010) (not (isEmpty!1113 lt!601010)))))

(declare-fun bs!39129 () Bool)

(assert (= bs!39129 d!146377))

(assert (=> bs!39129 m!1249249))

(assert (=> b!1364435 d!146377))

(check-sat (not d!146377))
(check-sat)
