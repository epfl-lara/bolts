; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115428 () Bool)

(assert start!115428)

(declare-fun res!908321 () Bool)

(declare-fun e!773974 () Bool)

(assert (=> start!115428 (=> (not res!908321) (not e!773974))))

(declare-datatypes ((List!32017 0))(
  ( (Nil!32014) (Cons!32013 (h!33222 (_ BitVec 64)) (t!46718 List!32017)) )
))
(declare-fun l!3677 () List!32017)

(declare-datatypes ((tuple2!24556 0))(
  ( (tuple2!24557 (_1!12288 (_ BitVec 64)) (_2!12288 List!32017)) )
))
(declare-datatypes ((Option!804 0))(
  ( (Some!803 (v!21600 tuple2!24556)) (None!802) )
))
(declare-fun isEmpty!1129 (Option!804) Bool)

(declare-fun unapply!69 (List!32017) Option!804)

(assert (=> start!115428 (= res!908321 (isEmpty!1129 (unapply!69 l!3677)))))

(assert (=> start!115428 e!773974))

(assert (=> start!115428 true))

(declare-fun b!1364626 () Bool)

(declare-fun res!908322 () Bool)

(assert (=> b!1364626 (=> (not res!908322) (not e!773974))))

(assert (=> b!1364626 (= res!908322 (not (is-Nil!32014 l!3677)))))

(declare-fun b!1364627 () Bool)

(declare-fun subseq!949 (List!32017 List!32017) Bool)

(assert (=> b!1364627 (= e!773974 (not (subseq!949 l!3677 l!3677)))))

(assert (= (and start!115428 res!908321) b!1364626))

(assert (= (and b!1364626 res!908322) b!1364627))

(declare-fun m!1249435 () Bool)

(assert (=> start!115428 m!1249435))

(assert (=> start!115428 m!1249435))

(declare-fun m!1249437 () Bool)

(assert (=> start!115428 m!1249437))

(declare-fun m!1249439 () Bool)

(assert (=> b!1364627 m!1249439))

(push 1)

(assert (not start!115428))

(assert (not b!1364627))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146497 () Bool)

(assert (=> d!146497 (= (isEmpty!1129 (unapply!69 l!3677)) (not (is-Some!803 (unapply!69 l!3677))))))

(assert (=> start!115428 d!146497))

(declare-fun d!146501 () Bool)

(assert (=> d!146501 (= (unapply!69 l!3677) (ite (is-Nil!32014 l!3677) None!802 (Some!803 (tuple2!24557 (h!33222 l!3677) (t!46718 l!3677)))))))

(assert (=> start!115428 d!146501))

(declare-fun b!1364660 () Bool)

(declare-fun e!774007 () Bool)

(declare-fun e!774010 () Bool)

(assert (=> b!1364660 (= e!774007 e!774010)))

(declare-fun res!908356 () Bool)

(assert (=> b!1364660 (=> (not res!908356) (not e!774010))))

(assert (=> b!1364660 (= res!908356 (is-Cons!32013 l!3677))))

(declare-fun b!1364661 () Bool)

(declare-fun e!774008 () Bool)

(assert (=> b!1364661 (= e!774010 e!774008)))

(declare-fun res!908358 () Bool)

(assert (=> b!1364661 (=> res!908358 e!774008)))

(declare-fun e!774009 () Bool)

(assert (=> b!1364661 (= res!908358 e!774009)))

(declare-fun res!908357 () Bool)

(assert (=> b!1364661 (=> (not res!908357) (not e!774009))))

(assert (=> b!1364661 (= res!908357 (= (h!33222 l!3677) (h!33222 l!3677)))))

(declare-fun b!1364663 () Bool)

(assert (=> b!1364663 (= e!774008 (subseq!949 l!3677 (t!46718 l!3677)))))

(declare-fun d!146503 () Bool)

(declare-fun res!908355 () Bool)

(assert (=> d!146503 (=> res!908355 e!774007)))

(assert (=> d!146503 (= res!908355 (is-Nil!32014 l!3677))))

(assert (=> d!146503 (= (subseq!949 l!3677 l!3677) e!774007)))

(declare-fun b!1364662 () Bool)

(assert (=> b!1364662 (= e!774009 (subseq!949 (t!46718 l!3677) (t!46718 l!3677)))))

(assert (= (and d!146503 (not res!908355)) b!1364660))

(assert (= (and b!1364660 res!908356) b!1364661))

(assert (= (and b!1364661 res!908357) b!1364662))

(assert (= (and b!1364661 (not res!908358)) b!1364663))

(declare-fun m!1249449 () Bool)

(assert (=> b!1364663 m!1249449))

(declare-fun m!1249451 () Bool)

(assert (=> b!1364662 m!1249451))

