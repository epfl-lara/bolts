; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115406 () Bool)

(assert start!115406)

(declare-fun res!908298 () Bool)

(declare-fun e!773959 () Bool)

(assert (=> start!115406 (=> (not res!908298) (not e!773959))))

(declare-datatypes ((List!32012 0))(
  ( (Nil!32009) (Cons!32008 (h!33217 (_ BitVec 64)) (t!46713 List!32012)) )
))
(declare-fun l!3677 () List!32012)

(declare-datatypes ((tuple2!24546 0))(
  ( (tuple2!24547 (_1!12283 (_ BitVec 64)) (_2!12283 List!32012)) )
))
(declare-datatypes ((Option!799 0))(
  ( (Some!798 (v!21595 tuple2!24546)) (None!797) )
))
(declare-fun isEmpty!1124 (Option!799) Bool)

(declare-fun unapply!64 (List!32012) Option!799)

(assert (=> start!115406 (= res!908298 (isEmpty!1124 (unapply!64 l!3677)))))

(assert (=> start!115406 e!773959))

(assert (=> start!115406 true))

(declare-fun b!1364603 () Bool)

(assert (=> b!1364603 (= e!773959 (not (is-Nil!32009 l!3677)))))

(assert (= (and start!115406 res!908298) b!1364603))

(declare-fun m!1249411 () Bool)

(assert (=> start!115406 m!1249411))

(assert (=> start!115406 m!1249411))

(declare-fun m!1249413 () Bool)

(assert (=> start!115406 m!1249413))

(push 1)

(assert (not start!115406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146481 () Bool)

(assert (=> d!146481 (= (isEmpty!1124 (unapply!64 l!3677)) (not (is-Some!798 (unapply!64 l!3677))))))

(assert (=> start!115406 d!146481))

(declare-fun d!146487 () Bool)

(assert (=> d!146487 (= (unapply!64 l!3677) (ite (is-Nil!32009 l!3677) None!797 (Some!798 (tuple2!24547 (h!33217 l!3677) (t!46713 l!3677)))))))

(assert (=> start!115406 d!146487))

(push 1)

