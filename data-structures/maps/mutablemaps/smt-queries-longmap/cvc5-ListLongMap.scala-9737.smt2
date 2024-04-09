; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115424 () Bool)

(assert start!115424)

(declare-fun res!908309 () Bool)

(declare-fun e!773968 () Bool)

(assert (=> start!115424 (=> (not res!908309) (not e!773968))))

(declare-datatypes ((List!32015 0))(
  ( (Nil!32012) (Cons!32011 (h!33220 (_ BitVec 64)) (t!46716 List!32015)) )
))
(declare-fun l!3677 () List!32015)

(declare-datatypes ((tuple2!24552 0))(
  ( (tuple2!24553 (_1!12286 (_ BitVec 64)) (_2!12286 List!32015)) )
))
(declare-datatypes ((Option!802 0))(
  ( (Some!801 (v!21598 tuple2!24552)) (None!800) )
))
(declare-fun isEmpty!1127 (Option!802) Bool)

(declare-fun unapply!67 (List!32015) Option!802)

(assert (=> start!115424 (= res!908309 (isEmpty!1127 (unapply!67 l!3677)))))

(assert (=> start!115424 e!773968))

(assert (=> start!115424 true))

(declare-fun b!1364614 () Bool)

(declare-fun res!908310 () Bool)

(assert (=> b!1364614 (=> (not res!908310) (not e!773968))))

(assert (=> b!1364614 (= res!908310 (not (is-Nil!32012 l!3677)))))

(declare-fun b!1364615 () Bool)

(declare-fun subseq!947 (List!32015 List!32015) Bool)

(assert (=> b!1364615 (= e!773968 (not (subseq!947 l!3677 l!3677)))))

(assert (= (and start!115424 res!908309) b!1364614))

(assert (= (and b!1364614 res!908310) b!1364615))

(declare-fun m!1249423 () Bool)

(assert (=> start!115424 m!1249423))

(assert (=> start!115424 m!1249423))

(declare-fun m!1249425 () Bool)

(assert (=> start!115424 m!1249425))

(declare-fun m!1249427 () Bool)

(assert (=> b!1364615 m!1249427))

(push 1)

(assert (not b!1364615))

(assert (not start!115424))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146495 () Bool)

(declare-fun res!908342 () Bool)

(declare-fun e!773993 () Bool)

(assert (=> d!146495 (=> res!908342 e!773993)))

(assert (=> d!146495 (= res!908342 (is-Nil!32012 l!3677))))

(assert (=> d!146495 (= (subseq!947 l!3677 l!3677) e!773993)))

(declare-fun b!1364645 () Bool)

(declare-fun e!773994 () Bool)

(declare-fun e!773992 () Bool)

(assert (=> b!1364645 (= e!773994 e!773992)))

(declare-fun res!908340 () Bool)

(assert (=> b!1364645 (=> res!908340 e!773992)))

(declare-fun e!773991 () Bool)

(assert (=> b!1364645 (= res!908340 e!773991)))

(declare-fun res!908339 () Bool)

(assert (=> b!1364645 (=> (not res!908339) (not e!773991))))

(assert (=> b!1364645 (= res!908339 (= (h!33220 l!3677) (h!33220 l!3677)))))

(declare-fun b!1364644 () Bool)

(assert (=> b!1364644 (= e!773993 e!773994)))

(declare-fun res!908341 () Bool)

(assert (=> b!1364644 (=> (not res!908341) (not e!773994))))

(assert (=> b!1364644 (= res!908341 (is-Cons!32011 l!3677))))

(declare-fun b!1364646 () Bool)

(assert (=> b!1364646 (= e!773991 (subseq!947 (t!46716 l!3677) (t!46716 l!3677)))))

(declare-fun b!1364647 () Bool)

(assert (=> b!1364647 (= e!773992 (subseq!947 l!3677 (t!46716 l!3677)))))

(assert (= (and d!146495 (not res!908342)) b!1364644))

(assert (= (and b!1364644 res!908341) b!1364645))

(assert (= (and b!1364645 res!908339) b!1364646))

(assert (= (and b!1364645 (not res!908340)) b!1364647))

(declare-fun m!1249441 () Bool)

(assert (=> b!1364646 m!1249441))

(declare-fun m!1249443 () Bool)

(assert (=> b!1364647 m!1249443))

(assert (=> b!1364615 d!146495))

(declare-fun d!146505 () Bool)

(assert (=> d!146505 (= (isEmpty!1127 (unapply!67 l!3677)) (not (is-Some!801 (unapply!67 l!3677))))))

(assert (=> start!115424 d!146505))

(declare-fun d!146509 () Bool)

(assert (=> d!146509 (= (unapply!67 l!3677) (ite (is-Nil!32012 l!3677) None!800 (Some!801 (tuple2!24553 (h!33220 l!3677) (t!46716 l!3677)))))))

(assert (=> start!115424 d!146509))

(push 1)

