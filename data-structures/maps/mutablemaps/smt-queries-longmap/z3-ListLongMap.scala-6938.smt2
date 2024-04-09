; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87396 () Bool)

(assert start!87396)

(declare-fun b!1012305 () Bool)

(assert (=> b!1012305 true))

(assert (=> b!1012305 true))

(declare-fun b!1012303 () Bool)

(declare-fun e!569500 () Bool)

(declare-fun tp_is_empty!23403 () Bool)

(declare-fun tp!70278 () Bool)

(assert (=> b!1012303 (= e!569500 (and tp_is_empty!23403 tp!70278))))

(declare-fun b!1012304 () Bool)

(declare-fun res!680044 () Bool)

(declare-fun e!569501 () Bool)

(assert (=> b!1012304 (=> (not res!680044) (not e!569501))))

(declare-datatypes ((B!1336 0))(
  ( (B!1337 (val!11752 Int)) )
))
(declare-datatypes ((tuple2!15140 0))(
  ( (tuple2!15141 (_1!7580 (_ BitVec 64)) (_2!7580 B!1336)) )
))
(declare-datatypes ((List!21468 0))(
  ( (Nil!21465) (Cons!21464 (h!22662 tuple2!15140) (t!30477 List!21468)) )
))
(declare-fun l!412 () List!21468)

(declare-fun value!115 () B!1336)

(get-info :version)

(assert (=> b!1012304 (= res!680044 (and ((_ is Cons!21464) l!412) (= (_2!7580 (h!22662 l!412)) value!115)))))

(declare-datatypes ((Unit!33018 0))(
  ( (Unit!33019) )
))
(declare-fun e!569499 () Unit!33018)

(declare-fun lt!447441 () Unit!33018)

(assert (=> b!1012305 (= e!569499 lt!447441)))

(declare-datatypes ((List!21469 0))(
  ( (Nil!21466) (Cons!21465 (h!22663 (_ BitVec 64)) (t!30478 List!21469)) )
))
(declare-fun lt!447440 () List!21469)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!11 (List!21468 List!21469 B!1336 tuple2!15140) Unit!33018)

(assert (=> b!1012305 (= lt!447441 (lemmaForallGetValueByKeySameWithASmallerHead!11 (t!30477 l!412) lt!447440 value!115 (h!22662 l!412)))))

(declare-fun lambda!344 () Int)

(declare-fun forall!213 (List!21469 Int) Bool)

(assert (=> b!1012305 (forall!213 lt!447440 lambda!344)))

(declare-fun res!680043 () Bool)

(assert (=> start!87396 (=> (not res!680043) (not e!569501))))

(declare-fun isStrictlySorted!528 (List!21468) Bool)

(assert (=> start!87396 (= res!680043 (isStrictlySorted!528 l!412))))

(assert (=> start!87396 e!569501))

(assert (=> start!87396 e!569500))

(assert (=> start!87396 tp_is_empty!23403))

(declare-fun b!1012306 () Bool)

(assert (=> b!1012306 (= e!569501 false)))

(declare-fun lt!447439 () Unit!33018)

(assert (=> b!1012306 (= lt!447439 e!569499)))

(declare-fun c!102225 () Bool)

(declare-fun isEmpty!794 (List!21469) Bool)

(assert (=> b!1012306 (= c!102225 (not (isEmpty!794 lt!447440)))))

(declare-fun getKeysOf!17 (List!21468 B!1336) List!21469)

(assert (=> b!1012306 (= lt!447440 (getKeysOf!17 (t!30477 l!412) value!115))))

(declare-fun b!1012307 () Bool)

(declare-fun Unit!33020 () Unit!33018)

(assert (=> b!1012307 (= e!569499 Unit!33020)))

(assert (= (and start!87396 res!680043) b!1012304))

(assert (= (and b!1012304 res!680044) b!1012306))

(assert (= (and b!1012306 c!102225) b!1012305))

(assert (= (and b!1012306 (not c!102225)) b!1012307))

(assert (= (and start!87396 ((_ is Cons!21464) l!412)) b!1012303))

(declare-fun m!936073 () Bool)

(assert (=> b!1012305 m!936073))

(declare-fun m!936075 () Bool)

(assert (=> b!1012305 m!936075))

(declare-fun m!936077 () Bool)

(assert (=> start!87396 m!936077))

(declare-fun m!936079 () Bool)

(assert (=> b!1012306 m!936079))

(declare-fun m!936081 () Bool)

(assert (=> b!1012306 m!936081))

(check-sat tp_is_empty!23403 (not b!1012305) (not b!1012303) (not start!87396) (not b!1012306))
(check-sat)
