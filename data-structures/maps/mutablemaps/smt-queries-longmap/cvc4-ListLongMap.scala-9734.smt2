; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115350 () Bool)

(assert start!115350)

(declare-fun res!908193 () Bool)

(declare-fun e!773863 () Bool)

(assert (=> start!115350 (=> (not res!908193) (not e!773863))))

(declare-datatypes ((List!32008 0))(
  ( (Nil!32005) (Cons!32004 (h!33213 (_ BitVec 64)) (t!46709 List!32008)) )
))
(declare-datatypes ((tuple2!24538 0))(
  ( (tuple2!24539 (_1!12279 (_ BitVec 64)) (_2!12279 List!32008)) )
))
(declare-datatypes ((Option!795 0))(
  ( (Some!794 (v!21591 tuple2!24538)) (None!793) )
))
(declare-fun lt!601068 () Option!795)

(declare-fun isEmpty!1120 (Option!795) Bool)

(assert (=> start!115350 (= res!908193 (not (isEmpty!1120 lt!601068)))))

(declare-fun l!3677 () List!32008)

(declare-fun unapply!60 (List!32008) Option!795)

(assert (=> start!115350 (= lt!601068 (unapply!60 l!3677))))

(assert (=> start!115350 e!773863))

(assert (=> start!115350 true))

(declare-fun b!1364498 () Bool)

(declare-fun subseq!943 (List!32008 List!32008) Bool)

(assert (=> b!1364498 (= e!773863 (not (subseq!943 l!3677 l!3677)))))

(declare-fun lt!601069 () tuple2!24538)

(assert (=> b!1364498 (subseq!943 (_2!12279 lt!601069) (_2!12279 lt!601069))))

(declare-datatypes ((Unit!44979 0))(
  ( (Unit!44980) )
))
(declare-fun lt!601070 () Unit!44979)

(declare-fun lemmaListSubSeqRefl!0 (List!32008) Unit!44979)

(assert (=> b!1364498 (= lt!601070 (lemmaListSubSeqRefl!0 (_2!12279 lt!601069)))))

(declare-fun get!22750 (Option!795) tuple2!24538)

(assert (=> b!1364498 (= lt!601069 (get!22750 lt!601068))))

(assert (= (and start!115350 res!908193) b!1364498))

(declare-fun m!1249339 () Bool)

(assert (=> start!115350 m!1249339))

(declare-fun m!1249341 () Bool)

(assert (=> start!115350 m!1249341))

(declare-fun m!1249343 () Bool)

(assert (=> b!1364498 m!1249343))

(declare-fun m!1249345 () Bool)

(assert (=> b!1364498 m!1249345))

(declare-fun m!1249347 () Bool)

(assert (=> b!1364498 m!1249347))

(declare-fun m!1249349 () Bool)

(assert (=> b!1364498 m!1249349))

(push 1)

(assert (not b!1364498))

(assert (not start!115350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1364524 () Bool)

(declare-fun e!773888 () Bool)

(declare-fun e!773889 () Bool)

(assert (=> b!1364524 (= e!773888 e!773889)))

(declare-fun res!908221 () Bool)

(assert (=> b!1364524 (=> res!908221 e!773889)))

(declare-fun e!773890 () Bool)

(assert (=> b!1364524 (= res!908221 e!773890)))

(declare-fun res!908219 () Bool)

(assert (=> b!1364524 (=> (not res!908219) (not e!773890))))

(assert (=> b!1364524 (= res!908219 (= (h!33213 l!3677) (h!33213 l!3677)))))

(declare-fun b!1364526 () Bool)

(assert (=> b!1364526 (= e!773889 (subseq!943 l!3677 (t!46709 l!3677)))))

(declare-fun b!1364525 () Bool)

(assert (=> b!1364525 (= e!773890 (subseq!943 (t!46709 l!3677) (t!46709 l!3677)))))

(declare-fun b!1364523 () Bool)

(declare-fun e!773891 () Bool)

(assert (=> b!1364523 (= e!773891 e!773888)))

(declare-fun res!908220 () Bool)

(assert (=> b!1364523 (=> (not res!908220) (not e!773888))))

(assert (=> b!1364523 (= res!908220 (is-Cons!32004 l!3677))))

(declare-fun d!146427 () Bool)

(declare-fun res!908218 () Bool)

(assert (=> d!146427 (=> res!908218 e!773891)))

(assert (=> d!146427 (= res!908218 (is-Nil!32005 l!3677))))

(assert (=> d!146427 (= (subseq!943 l!3677 l!3677) e!773891)))

(assert (= (and d!146427 (not res!908218)) b!1364523))

(assert (= (and b!1364523 res!908220) b!1364524))

(assert (= (and b!1364524 res!908219) b!1364525))

(assert (= (and b!1364524 (not res!908221)) b!1364526))

(declare-fun m!1249351 () Bool)

(assert (=> b!1364526 m!1249351))

(declare-fun m!1249353 () Bool)

(assert (=> b!1364525 m!1249353))

(assert (=> b!1364498 d!146427))

(declare-fun b!1364528 () Bool)

(declare-fun e!773892 () Bool)

(declare-fun e!773893 () Bool)

(assert (=> b!1364528 (= e!773892 e!773893)))

(declare-fun res!908225 () Bool)

(assert (=> b!1364528 (=> res!908225 e!773893)))

(declare-fun e!773894 () Bool)

(assert (=> b!1364528 (= res!908225 e!773894)))

(declare-fun res!908223 () Bool)

(assert (=> b!1364528 (=> (not res!908223) (not e!773894))))

(assert (=> b!1364528 (= res!908223 (= (h!33213 (_2!12279 lt!601069)) (h!33213 (_2!12279 lt!601069))))))

(declare-fun b!1364530 () Bool)

(assert (=> b!1364530 (= e!773893 (subseq!943 (_2!12279 lt!601069) (t!46709 (_2!12279 lt!601069))))))

(declare-fun b!1364529 () Bool)

(assert (=> b!1364529 (= e!773894 (subseq!943 (t!46709 (_2!12279 lt!601069)) (t!46709 (_2!12279 lt!601069))))))

(declare-fun b!1364527 () Bool)

(declare-fun e!773895 () Bool)

(assert (=> b!1364527 (= e!773895 e!773892)))

(declare-fun res!908224 () Bool)

(assert (=> b!1364527 (=> (not res!908224) (not e!773892))))

(assert (=> b!1364527 (= res!908224 (is-Cons!32004 (_2!12279 lt!601069)))))

(declare-fun d!146437 () Bool)

(declare-fun res!908222 () Bool)

(assert (=> d!146437 (=> res!908222 e!773895)))

(assert (=> d!146437 (= res!908222 (is-Nil!32005 (_2!12279 lt!601069)))))

(assert (=> d!146437 (= (subseq!943 (_2!12279 lt!601069) (_2!12279 lt!601069)) e!773895)))

(assert (= (and d!146437 (not res!908222)) b!1364527))

(assert (= (and b!1364527 res!908224) b!1364528))

(assert (= (and b!1364528 res!908223) b!1364529))

(assert (= (and b!1364528 (not res!908225)) b!1364530))

(declare-fun m!1249355 () Bool)

(assert (=> b!1364530 m!1249355))

(declare-fun m!1249357 () Bool)

(assert (=> b!1364529 m!1249357))

(assert (=> b!1364498 d!146437))

(declare-fun d!146439 () Bool)

(assert (=> d!146439 (subseq!943 (_2!12279 lt!601069) (_2!12279 lt!601069))))

(declare-fun lt!601073 () Unit!44979)

(declare-fun choose!36 (List!32008) Unit!44979)

(assert (=> d!146439 (= lt!601073 (choose!36 (_2!12279 lt!601069)))))

(assert (=> d!146439 (= (lemmaListSubSeqRefl!0 (_2!12279 lt!601069)) lt!601073)))

(declare-fun bs!39143 () Bool)

(assert (= bs!39143 d!146439))

(assert (=> bs!39143 m!1249345))

(declare-fun m!1249367 () Bool)

(assert (=> bs!39143 m!1249367))

(assert (=> b!1364498 d!146439))

(declare-fun d!146445 () Bool)

(assert (=> d!146445 (= (get!22750 lt!601068) (v!21591 lt!601068))))

