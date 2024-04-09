; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115348 () Bool)

(assert start!115348)

(declare-fun res!908190 () Bool)

(declare-fun e!773860 () Bool)

(assert (=> start!115348 (=> (not res!908190) (not e!773860))))

(declare-datatypes ((List!32007 0))(
  ( (Nil!32004) (Cons!32003 (h!33212 (_ BitVec 64)) (t!46708 List!32007)) )
))
(declare-datatypes ((tuple2!24536 0))(
  ( (tuple2!24537 (_1!12278 (_ BitVec 64)) (_2!12278 List!32007)) )
))
(declare-datatypes ((Option!794 0))(
  ( (Some!793 (v!21590 tuple2!24536)) (None!792) )
))
(declare-fun lt!601061 () Option!794)

(declare-fun isEmpty!1119 (Option!794) Bool)

(assert (=> start!115348 (= res!908190 (not (isEmpty!1119 lt!601061)))))

(declare-fun l!3677 () List!32007)

(declare-fun unapply!59 (List!32007) Option!794)

(assert (=> start!115348 (= lt!601061 (unapply!59 l!3677))))

(assert (=> start!115348 e!773860))

(assert (=> start!115348 true))

(declare-fun b!1364495 () Bool)

(declare-fun subseq!942 (List!32007 List!32007) Bool)

(assert (=> b!1364495 (= e!773860 (not (subseq!942 l!3677 l!3677)))))

(declare-fun lt!601060 () tuple2!24536)

(assert (=> b!1364495 (subseq!942 (_2!12278 lt!601060) (_2!12278 lt!601060))))

(declare-datatypes ((Unit!44977 0))(
  ( (Unit!44978) )
))
(declare-fun lt!601059 () Unit!44977)

(declare-fun lemmaListSubSeqRefl!0 (List!32007) Unit!44977)

(assert (=> b!1364495 (= lt!601059 (lemmaListSubSeqRefl!0 (_2!12278 lt!601060)))))

(declare-fun get!22749 (Option!794) tuple2!24536)

(assert (=> b!1364495 (= lt!601060 (get!22749 lt!601061))))

(assert (= (and start!115348 res!908190) b!1364495))

(declare-fun m!1249327 () Bool)

(assert (=> start!115348 m!1249327))

(declare-fun m!1249329 () Bool)

(assert (=> start!115348 m!1249329))

(declare-fun m!1249331 () Bool)

(assert (=> b!1364495 m!1249331))

(declare-fun m!1249333 () Bool)

(assert (=> b!1364495 m!1249333))

(declare-fun m!1249335 () Bool)

(assert (=> b!1364495 m!1249335))

(declare-fun m!1249337 () Bool)

(assert (=> b!1364495 m!1249337))

(check-sat (not start!115348) (not b!1364495))
(check-sat)
(get-model)

(declare-fun d!146425 () Bool)

(get-info :version)

(assert (=> d!146425 (= (isEmpty!1119 lt!601061) (not ((_ is Some!793) lt!601061)))))

(assert (=> start!115348 d!146425))

(declare-fun d!146431 () Bool)

(assert (=> d!146431 (= (unapply!59 l!3677) (ite ((_ is Nil!32004) l!3677) None!792 (Some!793 (tuple2!24537 (h!33212 l!3677) (t!46708 l!3677)))))))

(assert (=> start!115348 d!146431))

(declare-fun b!1364536 () Bool)

(declare-fun e!773903 () Bool)

(declare-fun e!773901 () Bool)

(assert (=> b!1364536 (= e!773903 e!773901)))

(declare-fun res!908231 () Bool)

(assert (=> b!1364536 (=> res!908231 e!773901)))

(declare-fun e!773900 () Bool)

(assert (=> b!1364536 (= res!908231 e!773900)))

(declare-fun res!908233 () Bool)

(assert (=> b!1364536 (=> (not res!908233) (not e!773900))))

(assert (=> b!1364536 (= res!908233 (= (h!33212 l!3677) (h!33212 l!3677)))))

(declare-fun b!1364538 () Bool)

(assert (=> b!1364538 (= e!773901 (subseq!942 l!3677 (t!46708 l!3677)))))

(declare-fun b!1364537 () Bool)

(assert (=> b!1364537 (= e!773900 (subseq!942 (t!46708 l!3677) (t!46708 l!3677)))))

(declare-fun b!1364535 () Bool)

(declare-fun e!773902 () Bool)

(assert (=> b!1364535 (= e!773902 e!773903)))

(declare-fun res!908230 () Bool)

(assert (=> b!1364535 (=> (not res!908230) (not e!773903))))

(assert (=> b!1364535 (= res!908230 ((_ is Cons!32003) l!3677))))

(declare-fun d!146435 () Bool)

(declare-fun res!908232 () Bool)

(assert (=> d!146435 (=> res!908232 e!773902)))

(assert (=> d!146435 (= res!908232 ((_ is Nil!32004) l!3677))))

(assert (=> d!146435 (= (subseq!942 l!3677 l!3677) e!773902)))

(assert (= (and d!146435 (not res!908232)) b!1364535))

(assert (= (and b!1364535 res!908230) b!1364536))

(assert (= (and b!1364536 res!908233) b!1364537))

(assert (= (and b!1364536 (not res!908231)) b!1364538))

(declare-fun m!1249361 () Bool)

(assert (=> b!1364538 m!1249361))

(declare-fun m!1249365 () Bool)

(assert (=> b!1364537 m!1249365))

(assert (=> b!1364495 d!146435))

(declare-fun b!1364544 () Bool)

(declare-fun e!773911 () Bool)

(declare-fun e!773909 () Bool)

(assert (=> b!1364544 (= e!773911 e!773909)))

(declare-fun res!908239 () Bool)

(assert (=> b!1364544 (=> res!908239 e!773909)))

(declare-fun e!773908 () Bool)

(assert (=> b!1364544 (= res!908239 e!773908)))

(declare-fun res!908241 () Bool)

(assert (=> b!1364544 (=> (not res!908241) (not e!773908))))

(assert (=> b!1364544 (= res!908241 (= (h!33212 (_2!12278 lt!601060)) (h!33212 (_2!12278 lt!601060))))))

(declare-fun b!1364546 () Bool)

(assert (=> b!1364546 (= e!773909 (subseq!942 (_2!12278 lt!601060) (t!46708 (_2!12278 lt!601060))))))

(declare-fun b!1364545 () Bool)

(assert (=> b!1364545 (= e!773908 (subseq!942 (t!46708 (_2!12278 lt!601060)) (t!46708 (_2!12278 lt!601060))))))

(declare-fun b!1364543 () Bool)

(declare-fun e!773910 () Bool)

(assert (=> b!1364543 (= e!773910 e!773911)))

(declare-fun res!908238 () Bool)

(assert (=> b!1364543 (=> (not res!908238) (not e!773911))))

(assert (=> b!1364543 (= res!908238 ((_ is Cons!32003) (_2!12278 lt!601060)))))

(declare-fun d!146443 () Bool)

(declare-fun res!908240 () Bool)

(assert (=> d!146443 (=> res!908240 e!773910)))

(assert (=> d!146443 (= res!908240 ((_ is Nil!32004) (_2!12278 lt!601060)))))

(assert (=> d!146443 (= (subseq!942 (_2!12278 lt!601060) (_2!12278 lt!601060)) e!773910)))

(assert (= (and d!146443 (not res!908240)) b!1364543))

(assert (= (and b!1364543 res!908238) b!1364544))

(assert (= (and b!1364544 res!908241) b!1364545))

(assert (= (and b!1364544 (not res!908239)) b!1364546))

(declare-fun m!1249371 () Bool)

(assert (=> b!1364546 m!1249371))

(declare-fun m!1249375 () Bool)

(assert (=> b!1364545 m!1249375))

(assert (=> b!1364495 d!146443))

(declare-fun d!146449 () Bool)

(assert (=> d!146449 (subseq!942 (_2!12278 lt!601060) (_2!12278 lt!601060))))

(declare-fun lt!601079 () Unit!44977)

(declare-fun choose!36 (List!32007) Unit!44977)

(assert (=> d!146449 (= lt!601079 (choose!36 (_2!12278 lt!601060)))))

(assert (=> d!146449 (= (lemmaListSubSeqRefl!0 (_2!12278 lt!601060)) lt!601079)))

(declare-fun bs!39145 () Bool)

(assert (= bs!39145 d!146449))

(assert (=> bs!39145 m!1249333))

(declare-fun m!1249379 () Bool)

(assert (=> bs!39145 m!1249379))

(assert (=> b!1364495 d!146449))

(declare-fun d!146457 () Bool)

(assert (=> d!146457 (= (get!22749 lt!601061) (v!21590 lt!601061))))

(assert (=> b!1364495 d!146457))

(check-sat (not b!1364537) (not b!1364545) (not b!1364538) (not b!1364546) (not d!146449))
(check-sat)
