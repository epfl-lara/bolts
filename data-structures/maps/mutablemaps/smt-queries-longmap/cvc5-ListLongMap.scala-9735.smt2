; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115382 () Bool)

(assert start!115382)

(declare-fun res!908246 () Bool)

(declare-fun e!773914 () Bool)

(assert (=> start!115382 (=> (not res!908246) (not e!773914))))

(declare-datatypes ((List!32009 0))(
  ( (Nil!32006) (Cons!32005 (h!33214 (_ BitVec 64)) (t!46710 List!32009)) )
))
(declare-fun l!3677 () List!32009)

(declare-datatypes ((tuple2!24540 0))(
  ( (tuple2!24541 (_1!12280 (_ BitVec 64)) (_2!12280 List!32009)) )
))
(declare-datatypes ((Option!796 0))(
  ( (Some!795 (v!21592 tuple2!24540)) (None!794) )
))
(declare-fun isEmpty!1121 (Option!796) Bool)

(declare-fun unapply!61 (List!32009) Option!796)

(assert (=> start!115382 (= res!908246 (isEmpty!1121 (unapply!61 l!3677)))))

(assert (=> start!115382 e!773914))

(assert (=> start!115382 true))

(declare-fun b!1364551 () Bool)

(declare-fun res!908247 () Bool)

(assert (=> b!1364551 (=> (not res!908247) (not e!773914))))

(assert (=> b!1364551 (= res!908247 (is-Nil!32006 l!3677))))

(declare-fun b!1364552 () Bool)

(declare-fun subseq!944 (List!32009 List!32009) Bool)

(assert (=> b!1364552 (= e!773914 (not (subseq!944 l!3677 l!3677)))))

(assert (= (and start!115382 res!908246) b!1364551))

(assert (= (and b!1364551 res!908247) b!1364552))

(declare-fun m!1249381 () Bool)

(assert (=> start!115382 m!1249381))

(assert (=> start!115382 m!1249381))

(declare-fun m!1249383 () Bool)

(assert (=> start!115382 m!1249383))

(declare-fun m!1249385 () Bool)

(assert (=> b!1364552 m!1249385))

(push 1)

(assert (not b!1364552))

(assert (not start!115382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1364592 () Bool)

(declare-fun e!773948 () Bool)

(assert (=> b!1364592 (= e!773948 (subseq!944 l!3677 (t!46710 l!3677)))))

(declare-fun b!1364590 () Bool)

(declare-fun e!773945 () Bool)

(assert (=> b!1364590 (= e!773945 e!773948)))

(declare-fun res!908285 () Bool)

(assert (=> b!1364590 (=> res!908285 e!773948)))

(declare-fun e!773947 () Bool)

(assert (=> b!1364590 (= res!908285 e!773947)))

(declare-fun res!908287 () Bool)

(assert (=> b!1364590 (=> (not res!908287) (not e!773947))))

(assert (=> b!1364590 (= res!908287 (= (h!33214 l!3677) (h!33214 l!3677)))))

(declare-fun b!1364591 () Bool)

(assert (=> b!1364591 (= e!773947 (subseq!944 (t!46710 l!3677) (t!46710 l!3677)))))

(declare-fun d!146463 () Bool)

(declare-fun res!908284 () Bool)

(declare-fun e!773946 () Bool)

(assert (=> d!146463 (=> res!908284 e!773946)))

(assert (=> d!146463 (= res!908284 (is-Nil!32006 l!3677))))

(assert (=> d!146463 (= (subseq!944 l!3677 l!3677) e!773946)))

(declare-fun b!1364589 () Bool)

(assert (=> b!1364589 (= e!773946 e!773945)))

(declare-fun res!908286 () Bool)

(assert (=> b!1364589 (=> (not res!908286) (not e!773945))))

(assert (=> b!1364589 (= res!908286 (is-Cons!32005 l!3677))))

(assert (= (and d!146463 (not res!908284)) b!1364589))

(assert (= (and b!1364589 res!908286) b!1364590))

(assert (= (and b!1364590 res!908287) b!1364591))

(assert (= (and b!1364590 (not res!908285)) b!1364592))

(declare-fun m!1249399 () Bool)

(assert (=> b!1364592 m!1249399))

(declare-fun m!1249401 () Bool)

(assert (=> b!1364591 m!1249401))

(assert (=> b!1364552 d!146463))

(declare-fun d!146471 () Bool)

(assert (=> d!146471 (= (isEmpty!1121 (unapply!61 l!3677)) (not (is-Some!795 (unapply!61 l!3677))))))

(assert (=> start!115382 d!146471))

(declare-fun d!146475 () Bool)

(assert (=> d!146475 (= (unapply!61 l!3677) (ite (is-Nil!32006 l!3677) None!794 (Some!795 (tuple2!24541 (h!33214 l!3677) (t!46710 l!3677)))))))

