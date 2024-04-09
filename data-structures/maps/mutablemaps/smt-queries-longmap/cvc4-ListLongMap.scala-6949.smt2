; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87554 () Bool)

(assert start!87554)

(declare-fun b!1013284 () Bool)

(declare-fun e!570059 () Bool)

(declare-fun tp_is_empty!23471 () Bool)

(declare-fun tp!70434 () Bool)

(assert (=> b!1013284 (= e!570059 (and tp_is_empty!23471 tp!70434))))

(declare-fun b!1013281 () Bool)

(declare-fun res!680442 () Bool)

(declare-fun e!570058 () Bool)

(assert (=> b!1013281 (=> (not res!680442) (not e!570058))))

(declare-datatypes ((B!1404 0))(
  ( (B!1405 (val!11786 Int)) )
))
(declare-datatypes ((tuple2!15208 0))(
  ( (tuple2!15209 (_1!7614 (_ BitVec 64)) (_2!7614 B!1404)) )
))
(declare-datatypes ((List!21521 0))(
  ( (Nil!21518) (Cons!21517 (h!22715 tuple2!15208) (t!30530 List!21521)) )
))
(declare-fun l!412 () List!21521)

(declare-fun value!115 () B!1404)

(assert (=> b!1013281 (= res!680442 (and (is-Cons!21517 l!412) (= (_2!7614 (h!22715 l!412)) value!115)))))

(declare-fun res!680443 () Bool)

(assert (=> start!87554 (=> (not res!680443) (not e!570058))))

(declare-fun isStrictlySorted!556 (List!21521) Bool)

(assert (=> start!87554 (= res!680443 (isStrictlySorted!556 l!412))))

(assert (=> start!87554 e!570058))

(assert (=> start!87554 e!570059))

(assert (=> start!87554 tp_is_empty!23471))

(declare-fun b!1013283 () Bool)

(declare-fun ListPrimitiveSize!105 (List!21521) Int)

(assert (=> b!1013283 (= e!570058 (>= (ListPrimitiveSize!105 (t!30530 l!412)) (ListPrimitiveSize!105 l!412)))))

(declare-fun b!1013282 () Bool)

(declare-fun res!680441 () Bool)

(assert (=> b!1013282 (=> (not res!680441) (not e!570058))))

(declare-datatypes ((List!21522 0))(
  ( (Nil!21519) (Cons!21518 (h!22716 (_ BitVec 64)) (t!30531 List!21522)) )
))
(declare-fun isEmpty!818 (List!21522) Bool)

(declare-fun getKeysOf!36 (List!21521 B!1404) List!21522)

(assert (=> b!1013282 (= res!680441 (not (isEmpty!818 (getKeysOf!36 (t!30530 l!412) value!115))))))

(assert (= (and start!87554 res!680443) b!1013281))

(assert (= (and b!1013281 res!680442) b!1013282))

(assert (= (and b!1013282 res!680441) b!1013283))

(assert (= (and start!87554 (is-Cons!21517 l!412)) b!1013284))

(declare-fun m!936491 () Bool)

(assert (=> start!87554 m!936491))

(declare-fun m!936493 () Bool)

(assert (=> b!1013283 m!936493))

(declare-fun m!936495 () Bool)

(assert (=> b!1013283 m!936495))

(declare-fun m!936497 () Bool)

(assert (=> b!1013282 m!936497))

(assert (=> b!1013282 m!936497))

(declare-fun m!936499 () Bool)

(assert (=> b!1013282 m!936499))

(push 1)

(assert (not b!1013283))

(assert (not b!1013282))

(assert tp_is_empty!23471)

(assert (not b!1013284))

(assert (not start!87554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120405 () Bool)

(assert (=> d!120405 (= (isEmpty!818 (getKeysOf!36 (t!30530 l!412) value!115)) (is-Nil!21519 (getKeysOf!36 (t!30530 l!412) value!115)))))

(assert (=> b!1013282 d!120405))

(declare-fun b!1013365 () Bool)

(assert (=> b!1013365 true))

(assert (=> b!1013365 true))

(assert (=> b!1013365 true))

(declare-fun bs!28910 () Bool)

(declare-fun b!1013361 () Bool)

(assert (= bs!28910 (and b!1013361 b!1013365)))

(declare-fun lt!447959 () tuple2!15208)

(declare-fun lt!447964 () tuple2!15208)

(declare-fun lt!447967 () List!21521)

(declare-fun lambda!499 () Int)

(declare-fun lt!447957 () List!21521)

(declare-fun lambda!498 () Int)

(assert (=> bs!28910 (= (= (Cons!21517 lt!447964 lt!447967) (Cons!21517 lt!447959 lt!447957)) (= lambda!499 lambda!498))))

(assert (=> b!1013361 true))

(assert (=> b!1013361 true))

(assert (=> b!1013361 true))

(declare-fun bs!28911 () Bool)

(declare-fun d!120409 () Bool)

(assert (= bs!28911 (and d!120409 b!1013365)))

(declare-fun lambda!500 () Int)

(assert (=> bs!28911 (= (= (t!30530 l!412) (Cons!21517 lt!447959 lt!447957)) (= lambda!500 lambda!498))))

(declare-fun bs!28912 () Bool)

(assert (= bs!28912 (and d!120409 b!1013361)))

(assert (=> bs!28912 (= (= (t!30530 l!412) (Cons!21517 lt!447964 lt!447967)) (= lambda!500 lambda!499))))

(assert (=> d!120409 true))

(assert (=> d!120409 true))

(declare-datatypes ((Unit!33072 0))(
  ( (Unit!33073) )
))
(declare-fun e!570105 () Unit!33072)

(declare-fun lt!447958 () Unit!33072)

(assert (=> b!1013361 (= e!570105 lt!447958)))

(assert (=> b!1013361 (= lt!447967 (t!30530 (t!30530 l!412)))))

(declare-fun lt!447965 () List!21522)

(declare-fun call!42652 () List!21522)

(assert (=> b!1013361 (= lt!447965 call!42652)))

(assert (=> b!1013361 (= lt!447964 (h!22715 (t!30530 l!412)))))

(declare-fun call!42650 () Unit!33072)

(assert (=> b!1013361 (= lt!447958 call!42650)))

(declare-fun call!42653 () Bool)

(assert (=> b!1013361 call!42653))

(declare-fun bm!42647 () Bool)

(declare-fun c!102409 () Bool)

(declare-fun lt!447961 () List!21522)

(declare-fun forall!230 (List!21522 Int) Bool)

(assert (=> bm!42647 (= call!42653 (forall!230 (ite c!102409 lt!447961 lt!447965) (ite c!102409 lambda!498 lambda!499)))))

(declare-fun bm!42648 () Bool)

(assert (=> bm!42648 (= call!42652 (getKeysOf!36 (t!30530 (t!30530 l!412)) value!115))))

(declare-fun bm!42649 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!25 (List!21521 List!21522 B!1404 tuple2!15208) Unit!33072)

(assert (=> bm!42649 (= call!42650 (lemmaForallGetValueByKeySameWithASmallerHead!25 (ite c!102409 lt!447957 lt!447967) (ite c!102409 lt!447961 lt!447965) value!115 (ite c!102409 lt!447959 lt!447964)))))

(declare-fun bm!42650 () Bool)

(declare-fun call!42651 () Bool)

(assert (=> bm!42650 (= call!42651 (isEmpty!818 call!42652))))

(declare-fun b!1013363 () Bool)

(declare-fun e!570104 () Unit!33072)

(declare-fun Unit!33078 () Unit!33072)

(assert (=> b!1013363 (= e!570104 Unit!33078)))

(declare-fun b!1013364 () Bool)

(declare-fun lt!447962 () Unit!33072)

(assert (=> b!1013364 (= lt!447962 e!570105)))

(declare-fun c!102408 () Bool)

(assert (=> b!1013364 (= c!102408 (not call!42651))))

(declare-fun lt!447960 () List!21522)

(assert (=> b!1013364 (= lt!447960 call!42652)))

(declare-fun e!570106 () List!21522)

(assert (=> b!1013364 (= e!570106 call!42652)))

(assert (=> b!1013365 call!42653))

(declare-fun lt!447963 () Unit!33072)

(assert (=> b!1013365 (= lt!447963 call!42650)))

(assert (=> b!1013365 (= lt!447959 (h!22715 (t!30530 l!412)))))

(assert (=> b!1013365 (= lt!447961 call!42652)))

(assert (=> b!1013365 (= lt!447957 (t!30530 (t!30530 l!412)))))

(assert (=> b!1013365 (= e!570104 lt!447963)))

(declare-fun b!1013366 () Bool)

(assert (=> b!1013366 (= e!570106 Nil!21519)))

(declare-fun b!1013362 () Bool)

(declare-fun e!570107 () List!21522)

(assert (=> b!1013362 (= e!570107 (Cons!21518 (_1!7614 (h!22715 (t!30530 l!412))) call!42652))))

(declare-fun c!102410 () Bool)

(assert (=> b!1013362 (= c!102410 (not call!42651))))

(declare-fun lt!447968 () Unit!33072)

(assert (=> b!1013362 (= lt!447968 e!570104)))

(declare-fun lt!447966 () List!21522)

(assert (=> d!120409 (forall!230 lt!447966 lambda!500)))

(assert (=> d!120409 (= lt!447966 e!570107)))

(assert (=> d!120409 (= c!102409 (and (is-Cons!21517 (t!30530 l!412)) (= (_2!7614 (h!22715 (t!30530 l!412))) value!115)))))

(assert (=> d!120409 (isStrictlySorted!556 (t!30530 l!412))))

(assert (=> d!120409 (= (getKeysOf!36 (t!30530 l!412) value!115) lt!447966)))

(declare-fun b!1013367 () Bool)

(declare-fun Unit!33083 () Unit!33072)

(assert (=> b!1013367 (= e!570105 Unit!33083)))

(declare-fun b!1013368 () Bool)

(assert (=> b!1013368 (= e!570107 e!570106)))

(declare-fun c!102411 () Bool)

(assert (=> b!1013368 (= c!102411 (and (is-Cons!21517 (t!30530 l!412)) (not (= (_2!7614 (h!22715 (t!30530 l!412))) value!115))))))

(assert (= (and d!120409 c!102409) b!1013362))

(assert (= (and d!120409 (not c!102409)) b!1013368))

(assert (= (and b!1013362 c!102410) b!1013365))

(assert (= (and b!1013362 (not c!102410)) b!1013363))

(assert (= (and b!1013368 c!102411) b!1013364))

(assert (= (and b!1013368 (not c!102411)) b!1013366))

(assert (= (and b!1013364 c!102408) b!1013361))

(assert (= (and b!1013364 (not c!102408)) b!1013367))

(assert (= (or b!1013365 b!1013361) bm!42649))

(assert (= (or b!1013365 b!1013361) bm!42647))

(assert (= (or b!1013362 b!1013365 b!1013361 b!1013364) bm!42648))

(assert (= (or b!1013362 b!1013364) bm!42650))

(declare-fun m!936509 () Bool)

(assert (=> bm!42647 m!936509))

(declare-fun m!936511 () Bool)

(assert (=> bm!42650 m!936511))

(declare-fun m!936513 () Bool)

(assert (=> bm!42649 m!936513))

(declare-fun m!936515 () Bool)

(assert (=> d!120409 m!936515))

(declare-fun m!936517 () Bool)

(assert (=> d!120409 m!936517))

(declare-fun m!936519 () Bool)

(assert (=> bm!42648 m!936519))

(assert (=> b!1013282 d!120409))

(declare-fun d!120427 () Bool)

(declare-fun lt!447995 () Int)

(assert (=> d!120427 (>= lt!447995 0)))

(declare-fun e!570118 () Int)

(assert (=> d!120427 (= lt!447995 e!570118)))

(declare-fun c!102422 () Bool)

(assert (=> d!120427 (= c!102422 (is-Nil!21518 (t!30530 l!412)))))

