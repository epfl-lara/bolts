; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87500 () Bool)

(assert start!87500)

(declare-fun b!1013072 () Bool)

(assert (=> b!1013072 true))

(assert (=> b!1013072 true))

(declare-fun b!1013069 () Bool)

(declare-datatypes ((Unit!33069 0))(
  ( (Unit!33070) )
))
(declare-fun e!569910 () Unit!33069)

(declare-fun Unit!33071 () Unit!33069)

(assert (=> b!1013069 (= e!569910 Unit!33071)))

(declare-fun res!680353 () Bool)

(declare-fun e!569911 () Bool)

(assert (=> start!87500 (=> (not res!680353) (not e!569911))))

(declare-datatypes ((B!1374 0))(
  ( (B!1375 (val!11771 Int)) )
))
(declare-datatypes ((tuple2!15178 0))(
  ( (tuple2!15179 (_1!7599 (_ BitVec 64)) (_2!7599 B!1374)) )
))
(declare-datatypes ((List!21503 0))(
  ( (Nil!21500) (Cons!21499 (h!22697 tuple2!15178) (t!30512 List!21503)) )
))
(declare-fun l!412 () List!21503)

(declare-fun isStrictlySorted!547 (List!21503) Bool)

(assert (=> start!87500 (= res!680353 (isStrictlySorted!547 l!412))))

(assert (=> start!87500 e!569911))

(declare-fun e!569912 () Bool)

(assert (=> start!87500 e!569912))

(declare-fun tp_is_empty!23441 () Bool)

(assert (=> start!87500 tp_is_empty!23441))

(declare-fun b!1013070 () Bool)

(assert (=> b!1013070 (= e!569911 false)))

(declare-fun lt!447855 () Unit!33069)

(assert (=> b!1013070 (= lt!447855 e!569910)))

(declare-fun c!102354 () Bool)

(declare-datatypes ((List!21504 0))(
  ( (Nil!21501) (Cons!21500 (h!22698 (_ BitVec 64)) (t!30513 List!21504)) )
))
(declare-fun lt!447854 () List!21504)

(declare-fun isEmpty!815 (List!21504) Bool)

(assert (=> b!1013070 (= c!102354 (not (isEmpty!815 lt!447854)))))

(declare-fun value!115 () B!1374)

(declare-fun getKeysOf!33 (List!21503 B!1374) List!21504)

(assert (=> b!1013070 (= lt!447854 (getKeysOf!33 (t!30512 l!412) value!115))))

(declare-fun b!1013071 () Bool)

(declare-fun res!680352 () Bool)

(assert (=> b!1013071 (=> (not res!680352) (not e!569911))))

(assert (=> b!1013071 (= res!680352 (and (not (= (_2!7599 (h!22697 l!412)) value!115)) (is-Cons!21499 l!412)))))

(declare-fun lt!447853 () Unit!33069)

(assert (=> b!1013072 (= e!569910 lt!447853)))

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!24 (List!21503 List!21504 B!1374 tuple2!15178) Unit!33069)

(assert (=> b!1013072 (= lt!447853 (lemmaForallGetValueByKeySameWithASmallerHead!24 (t!30512 l!412) lt!447854 value!115 (h!22697 l!412)))))

(declare-fun lambda!479 () Int)

(declare-fun forall!229 (List!21504 Int) Bool)

(assert (=> b!1013072 (forall!229 lt!447854 lambda!479)))

(declare-fun b!1013073 () Bool)

(declare-fun tp!70371 () Bool)

(assert (=> b!1013073 (= e!569912 (and tp_is_empty!23441 tp!70371))))

(assert (= (and start!87500 res!680353) b!1013071))

(assert (= (and b!1013071 res!680352) b!1013070))

(assert (= (and b!1013070 c!102354) b!1013072))

(assert (= (and b!1013070 (not c!102354)) b!1013069))

(assert (= (and start!87500 (is-Cons!21499 l!412)) b!1013073))

(declare-fun m!936407 () Bool)

(assert (=> start!87500 m!936407))

(declare-fun m!936409 () Bool)

(assert (=> b!1013070 m!936409))

(declare-fun m!936411 () Bool)

(assert (=> b!1013070 m!936411))

(declare-fun m!936413 () Bool)

(assert (=> b!1013072 m!936413))

(declare-fun m!936415 () Bool)

(assert (=> b!1013072 m!936415))

(push 1)

(assert (not b!1013073))

(assert (not b!1013070))

(assert tp_is_empty!23441)

(assert (not start!87500))

(assert (not b!1013072))

(check-sat)

(pop 1)

(push 1)

