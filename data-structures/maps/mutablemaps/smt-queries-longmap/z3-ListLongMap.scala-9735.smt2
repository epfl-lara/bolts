; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115384 () Bool)

(assert start!115384)

(declare-fun res!908252 () Bool)

(declare-fun e!773917 () Bool)

(assert (=> start!115384 (=> (not res!908252) (not e!773917))))

(declare-datatypes ((List!32010 0))(
  ( (Nil!32007) (Cons!32006 (h!33215 (_ BitVec 64)) (t!46711 List!32010)) )
))
(declare-fun l!3677 () List!32010)

(declare-datatypes ((tuple2!24542 0))(
  ( (tuple2!24543 (_1!12281 (_ BitVec 64)) (_2!12281 List!32010)) )
))
(declare-datatypes ((Option!797 0))(
  ( (Some!796 (v!21593 tuple2!24542)) (None!795) )
))
(declare-fun isEmpty!1122 (Option!797) Bool)

(declare-fun unapply!62 (List!32010) Option!797)

(assert (=> start!115384 (= res!908252 (isEmpty!1122 (unapply!62 l!3677)))))

(assert (=> start!115384 e!773917))

(assert (=> start!115384 true))

(declare-fun b!1364557 () Bool)

(declare-fun res!908253 () Bool)

(assert (=> b!1364557 (=> (not res!908253) (not e!773917))))

(get-info :version)

(assert (=> b!1364557 (= res!908253 ((_ is Nil!32007) l!3677))))

(declare-fun b!1364558 () Bool)

(declare-fun subseq!945 (List!32010 List!32010) Bool)

(assert (=> b!1364558 (= e!773917 (not (subseq!945 l!3677 l!3677)))))

(assert (= (and start!115384 res!908252) b!1364557))

(assert (= (and b!1364557 res!908253) b!1364558))

(declare-fun m!1249387 () Bool)

(assert (=> start!115384 m!1249387))

(assert (=> start!115384 m!1249387))

(declare-fun m!1249389 () Bool)

(assert (=> start!115384 m!1249389))

(declare-fun m!1249391 () Bool)

(assert (=> b!1364558 m!1249391))

(check-sat (not start!115384) (not b!1364558))
(check-sat)
(get-model)

(declare-fun d!146461 () Bool)

(assert (=> d!146461 (= (isEmpty!1122 (unapply!62 l!3677)) (not ((_ is Some!796) (unapply!62 l!3677))))))

(assert (=> start!115384 d!146461))

(declare-fun d!146467 () Bool)

(assert (=> d!146467 (= (unapply!62 l!3677) (ite ((_ is Nil!32007) l!3677) None!795 (Some!796 (tuple2!24543 (h!33215 l!3677) (t!46711 l!3677)))))))

(assert (=> start!115384 d!146467))

(declare-fun b!1364599 () Bool)

(declare-fun e!773953 () Bool)

(assert (=> b!1364599 (= e!773953 (subseq!945 (t!46711 l!3677) (t!46711 l!3677)))))

(declare-fun b!1364598 () Bool)

(declare-fun e!773954 () Bool)

(declare-fun e!773956 () Bool)

(assert (=> b!1364598 (= e!773954 e!773956)))

(declare-fun res!908293 () Bool)

(assert (=> b!1364598 (=> res!908293 e!773956)))

(assert (=> b!1364598 (= res!908293 e!773953)))

(declare-fun res!908295 () Bool)

(assert (=> b!1364598 (=> (not res!908295) (not e!773953))))

(assert (=> b!1364598 (= res!908295 (= (h!33215 l!3677) (h!33215 l!3677)))))

(declare-fun b!1364600 () Bool)

(assert (=> b!1364600 (= e!773956 (subseq!945 l!3677 (t!46711 l!3677)))))

(declare-fun b!1364597 () Bool)

(declare-fun e!773955 () Bool)

(assert (=> b!1364597 (= e!773955 e!773954)))

(declare-fun res!908292 () Bool)

(assert (=> b!1364597 (=> (not res!908292) (not e!773954))))

(assert (=> b!1364597 (= res!908292 ((_ is Cons!32006) l!3677))))

(declare-fun d!146469 () Bool)

(declare-fun res!908294 () Bool)

(assert (=> d!146469 (=> res!908294 e!773955)))

(assert (=> d!146469 (= res!908294 ((_ is Nil!32007) l!3677))))

(assert (=> d!146469 (= (subseq!945 l!3677 l!3677) e!773955)))

(assert (= (and d!146469 (not res!908294)) b!1364597))

(assert (= (and b!1364597 res!908292) b!1364598))

(assert (= (and b!1364598 res!908295) b!1364599))

(assert (= (and b!1364598 (not res!908293)) b!1364600))

(declare-fun m!1249407 () Bool)

(assert (=> b!1364599 m!1249407))

(declare-fun m!1249409 () Bool)

(assert (=> b!1364600 m!1249409))

(assert (=> b!1364558 d!146469))

(check-sat (not b!1364599) (not b!1364600))
(check-sat)
