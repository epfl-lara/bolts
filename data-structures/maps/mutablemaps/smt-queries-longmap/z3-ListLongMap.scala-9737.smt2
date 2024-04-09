; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115426 () Bool)

(assert start!115426)

(declare-fun res!908315 () Bool)

(declare-fun e!773971 () Bool)

(assert (=> start!115426 (=> (not res!908315) (not e!773971))))

(declare-datatypes ((List!32016 0))(
  ( (Nil!32013) (Cons!32012 (h!33221 (_ BitVec 64)) (t!46717 List!32016)) )
))
(declare-fun l!3677 () List!32016)

(declare-datatypes ((tuple2!24554 0))(
  ( (tuple2!24555 (_1!12287 (_ BitVec 64)) (_2!12287 List!32016)) )
))
(declare-datatypes ((Option!803 0))(
  ( (Some!802 (v!21599 tuple2!24554)) (None!801) )
))
(declare-fun isEmpty!1128 (Option!803) Bool)

(declare-fun unapply!68 (List!32016) Option!803)

(assert (=> start!115426 (= res!908315 (isEmpty!1128 (unapply!68 l!3677)))))

(assert (=> start!115426 e!773971))

(assert (=> start!115426 true))

(declare-fun b!1364620 () Bool)

(declare-fun res!908316 () Bool)

(assert (=> b!1364620 (=> (not res!908316) (not e!773971))))

(get-info :version)

(assert (=> b!1364620 (= res!908316 (not ((_ is Nil!32013) l!3677)))))

(declare-fun b!1364621 () Bool)

(declare-fun subseq!948 (List!32016 List!32016) Bool)

(assert (=> b!1364621 (= e!773971 (not (subseq!948 l!3677 l!3677)))))

(assert (= (and start!115426 res!908315) b!1364620))

(assert (= (and b!1364620 res!908316) b!1364621))

(declare-fun m!1249429 () Bool)

(assert (=> start!115426 m!1249429))

(assert (=> start!115426 m!1249429))

(declare-fun m!1249431 () Bool)

(assert (=> start!115426 m!1249431))

(declare-fun m!1249433 () Bool)

(assert (=> b!1364621 m!1249433))

(check-sat (not b!1364621) (not start!115426))
(check-sat)
(get-model)

(declare-fun b!1364652 () Bool)

(declare-fun e!774002 () Bool)

(declare-fun e!774000 () Bool)

(assert (=> b!1364652 (= e!774002 e!774000)))

(declare-fun res!908349 () Bool)

(assert (=> b!1364652 (=> (not res!908349) (not e!774000))))

(assert (=> b!1364652 (= res!908349 ((_ is Cons!32012) l!3677))))

(declare-fun b!1364654 () Bool)

(declare-fun e!774001 () Bool)

(assert (=> b!1364654 (= e!774001 (subseq!948 (t!46717 l!3677) (t!46717 l!3677)))))

(declare-fun d!146499 () Bool)

(declare-fun res!908350 () Bool)

(assert (=> d!146499 (=> res!908350 e!774002)))

(assert (=> d!146499 (= res!908350 ((_ is Nil!32013) l!3677))))

(assert (=> d!146499 (= (subseq!948 l!3677 l!3677) e!774002)))

(declare-fun b!1364655 () Bool)

(declare-fun e!773999 () Bool)

(assert (=> b!1364655 (= e!773999 (subseq!948 l!3677 (t!46717 l!3677)))))

(declare-fun b!1364653 () Bool)

(assert (=> b!1364653 (= e!774000 e!773999)))

(declare-fun res!908348 () Bool)

(assert (=> b!1364653 (=> res!908348 e!773999)))

(assert (=> b!1364653 (= res!908348 e!774001)))

(declare-fun res!908347 () Bool)

(assert (=> b!1364653 (=> (not res!908347) (not e!774001))))

(assert (=> b!1364653 (= res!908347 (= (h!33221 l!3677) (h!33221 l!3677)))))

(assert (= (and d!146499 (not res!908350)) b!1364652))

(assert (= (and b!1364652 res!908349) b!1364653))

(assert (= (and b!1364653 res!908347) b!1364654))

(assert (= (and b!1364653 (not res!908348)) b!1364655))

(declare-fun m!1249445 () Bool)

(assert (=> b!1364654 m!1249445))

(declare-fun m!1249447 () Bool)

(assert (=> b!1364655 m!1249447))

(assert (=> b!1364621 d!146499))

(declare-fun d!146507 () Bool)

(assert (=> d!146507 (= (isEmpty!1128 (unapply!68 l!3677)) (not ((_ is Some!802) (unapply!68 l!3677))))))

(assert (=> start!115426 d!146507))

(declare-fun d!146511 () Bool)

(assert (=> d!146511 (= (unapply!68 l!3677) (ite ((_ is Nil!32013) l!3677) None!801 (Some!802 (tuple2!24555 (h!33221 l!3677) (t!46717 l!3677)))))))

(assert (=> start!115426 d!146511))

(check-sat (not b!1364654) (not b!1364655))
(check-sat)
