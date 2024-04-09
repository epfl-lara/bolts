; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115530 () Bool)

(assert start!115530)

(declare-fun b!1366362 () Bool)

(declare-fun res!910059 () Bool)

(declare-fun e!774422 () Bool)

(assert (=> b!1366362 (=> (not res!910059) (not e!774422))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!92774 0))(
  ( (array!92775 (arr!44811 (Array (_ BitVec 32) (_ BitVec 64))) (size!45362 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92774)

(assert (=> b!1366362 (= res!910059 (bvslt from!3239 (size!45362 a!3861)))))

(declare-fun b!1366363 () Bool)

(declare-fun res!910057 () Bool)

(assert (=> b!1366363 (=> (not res!910057) (not e!774422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366363 (= res!910057 (validKeyInArray!0 (select (arr!44811 a!3861) from!3239)))))

(declare-fun b!1366364 () Bool)

(declare-fun e!774421 () Bool)

(declare-datatypes ((List!32059 0))(
  ( (Nil!32056) (Cons!32055 (h!33264 (_ BitVec 64)) (t!46760 List!32059)) )
))
(declare-fun lt!601510 () List!32059)

(declare-fun noDuplicate!2476 (List!32059) Bool)

(assert (=> b!1366364 (= e!774421 (noDuplicate!2476 lt!601510))))

(declare-fun b!1366365 () Bool)

(declare-fun res!910066 () Bool)

(declare-fun e!774423 () Bool)

(assert (=> b!1366365 (=> (not res!910066) (not e!774423))))

(declare-fun newAcc!98 () List!32059)

(declare-fun acc!866 () List!32059)

(declare-fun subseq!988 (List!32059 List!32059) Bool)

(assert (=> b!1366365 (= res!910066 (subseq!988 newAcc!98 acc!866))))

(declare-fun b!1366366 () Bool)

(declare-fun res!910065 () Bool)

(assert (=> b!1366366 (=> (not res!910065) (not e!774422))))

(declare-fun contains!9597 (List!32059 (_ BitVec 64)) Bool)

(assert (=> b!1366366 (= res!910065 (not (contains!9597 acc!866 (select (arr!44811 a!3861) from!3239))))))

(declare-fun b!1366367 () Bool)

(declare-fun res!910068 () Bool)

(assert (=> b!1366367 (=> (not res!910068) (not e!774423))))

(assert (=> b!1366367 (= res!910068 (noDuplicate!2476 acc!866))))

(declare-fun b!1366368 () Bool)

(declare-fun res!910062 () Bool)

(assert (=> b!1366368 (=> (not res!910062) (not e!774423))))

(assert (=> b!1366368 (= res!910062 (not (contains!9597 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366369 () Bool)

(declare-fun res!910061 () Bool)

(assert (=> b!1366369 (=> (not res!910061) (not e!774423))))

(assert (=> b!1366369 (= res!910061 (not (contains!9597 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366371 () Bool)

(declare-fun res!910058 () Bool)

(assert (=> b!1366371 (=> (not res!910058) (not e!774423))))

(assert (=> b!1366371 (= res!910058 (not (contains!9597 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366372 () Bool)

(assert (=> b!1366372 (= e!774423 e!774422)))

(declare-fun res!910064 () Bool)

(assert (=> b!1366372 (=> (not res!910064) (not e!774422))))

(declare-fun arrayNoDuplicates!0 (array!92774 (_ BitVec 32) List!32059) Bool)

(assert (=> b!1366372 (= res!910064 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45057 0))(
  ( (Unit!45058) )
))
(declare-fun lt!601511 () Unit!45057)

(declare-fun noDuplicateSubseq!175 (List!32059 List!32059) Unit!45057)

(assert (=> b!1366372 (= lt!601511 (noDuplicateSubseq!175 newAcc!98 acc!866))))

(declare-fun b!1366373 () Bool)

(assert (=> b!1366373 (= e!774422 (not e!774421))))

(declare-fun res!910063 () Bool)

(assert (=> b!1366373 (=> (not res!910063) (not e!774421))))

(declare-fun lt!601508 () List!32059)

(assert (=> b!1366373 (= res!910063 (subseq!988 lt!601508 lt!601510))))

(assert (=> b!1366373 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601508)))

(declare-fun lt!601509 () Unit!45057)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92774 List!32059 List!32059 (_ BitVec 32)) Unit!45057)

(assert (=> b!1366373 (= lt!601509 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601510 lt!601508 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1366373 (= lt!601508 (Cons!32055 (select (arr!44811 a!3861) from!3239) newAcc!98))))

(assert (=> b!1366373 (= lt!601510 (Cons!32055 (select (arr!44811 a!3861) from!3239) acc!866))))

(declare-fun res!910060 () Bool)

(assert (=> start!115530 (=> (not res!910060) (not e!774423))))

(assert (=> start!115530 (= res!910060 (and (bvslt (size!45362 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45362 a!3861))))))

(assert (=> start!115530 e!774423))

(declare-fun array_inv!33756 (array!92774) Bool)

(assert (=> start!115530 (array_inv!33756 a!3861)))

(assert (=> start!115530 true))

(declare-fun b!1366370 () Bool)

(declare-fun res!910067 () Bool)

(assert (=> b!1366370 (=> (not res!910067) (not e!774423))))

(assert (=> b!1366370 (= res!910067 (not (contains!9597 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115530 res!910060) b!1366367))

(assert (= (and b!1366367 res!910068) b!1366371))

(assert (= (and b!1366371 res!910058) b!1366370))

(assert (= (and b!1366370 res!910067) b!1366368))

(assert (= (and b!1366368 res!910062) b!1366369))

(assert (= (and b!1366369 res!910061) b!1366365))

(assert (= (and b!1366365 res!910066) b!1366372))

(assert (= (and b!1366372 res!910064) b!1366362))

(assert (= (and b!1366362 res!910059) b!1366363))

(assert (= (and b!1366363 res!910057) b!1366366))

(assert (= (and b!1366366 res!910065) b!1366373))

(assert (= (and b!1366373 res!910063) b!1366364))

(declare-fun m!1250705 () Bool)

(assert (=> b!1366364 m!1250705))

(declare-fun m!1250707 () Bool)

(assert (=> b!1366372 m!1250707))

(declare-fun m!1250709 () Bool)

(assert (=> b!1366372 m!1250709))

(declare-fun m!1250711 () Bool)

(assert (=> b!1366371 m!1250711))

(declare-fun m!1250713 () Bool)

(assert (=> b!1366373 m!1250713))

(declare-fun m!1250715 () Bool)

(assert (=> b!1366373 m!1250715))

(declare-fun m!1250717 () Bool)

(assert (=> b!1366373 m!1250717))

(declare-fun m!1250719 () Bool)

(assert (=> b!1366373 m!1250719))

(declare-fun m!1250721 () Bool)

(assert (=> start!115530 m!1250721))

(declare-fun m!1250723 () Bool)

(assert (=> b!1366370 m!1250723))

(assert (=> b!1366366 m!1250719))

(assert (=> b!1366366 m!1250719))

(declare-fun m!1250725 () Bool)

(assert (=> b!1366366 m!1250725))

(declare-fun m!1250727 () Bool)

(assert (=> b!1366369 m!1250727))

(assert (=> b!1366363 m!1250719))

(assert (=> b!1366363 m!1250719))

(declare-fun m!1250729 () Bool)

(assert (=> b!1366363 m!1250729))

(declare-fun m!1250731 () Bool)

(assert (=> b!1366368 m!1250731))

(declare-fun m!1250733 () Bool)

(assert (=> b!1366365 m!1250733))

(declare-fun m!1250735 () Bool)

(assert (=> b!1366367 m!1250735))

(push 1)

(assert (not b!1366371))

(assert (not b!1366373))

(assert (not b!1366365))

(assert (not b!1366367))

(assert (not b!1366366))

(assert (not start!115530))

(assert (not b!1366372))

(assert (not b!1366364))

(assert (not b!1366363))

(assert (not b!1366369))

(assert (not b!1366370))

(assert (not b!1366368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1366406 () Bool)

(declare-fun e!774456 () Bool)

(declare-fun e!774455 () Bool)

(assert (=> b!1366406 (= e!774456 e!774455)))

(declare-fun res!910097 () Bool)

(assert (=> b!1366406 (=> (not res!910097) (not e!774455))))

(assert (=> b!1366406 (= res!910097 (is-Cons!32055 acc!866))))

(declare-fun b!1366407 () Bool)

(declare-fun e!774457 () Bool)

(assert (=> b!1366407 (= e!774455 e!774457)))

(declare-fun res!910098 () Bool)

(assert (=> b!1366407 (=> res!910098 e!774457)))

(declare-fun e!774454 () Bool)

(assert (=> b!1366407 (= res!910098 e!774454)))

(declare-fun res!910096 () Bool)

(assert (=> b!1366407 (=> (not res!910096) (not e!774454))))

(assert (=> b!1366407 (= res!910096 (= (h!33264 newAcc!98) (h!33264 acc!866)))))

(declare-fun d!146547 () Bool)

(declare-fun res!910095 () Bool)

(assert (=> d!146547 (=> res!910095 e!774456)))

(assert (=> d!146547 (= res!910095 (is-Nil!32056 newAcc!98))))

(assert (=> d!146547 (= (subseq!988 newAcc!98 acc!866) e!774456)))

(declare-fun b!1366409 () Bool)

(assert (=> b!1366409 (= e!774457 (subseq!988 newAcc!98 (t!46760 acc!866)))))

(declare-fun b!1366408 () Bool)

(assert (=> b!1366408 (= e!774454 (subseq!988 (t!46760 newAcc!98) (t!46760 acc!866)))))

(assert (= (and d!146547 (not res!910095)) b!1366406))

(assert (= (and b!1366406 res!910097) b!1366407))

(assert (= (and b!1366407 res!910096) b!1366408))

(assert (= (and b!1366407 (not res!910098)) b!1366409))

(declare-fun m!1250747 () Bool)

(assert (=> b!1366409 m!1250747))

(declare-fun m!1250749 () Bool)

(assert (=> b!1366408 m!1250749))

(assert (=> b!1366365 d!146547))

(declare-fun d!146553 () Bool)

(declare-fun lt!601517 () Bool)

(declare-fun content!718 (List!32059) (Set (_ BitVec 64)))

(assert (=> d!146553 (= lt!601517 (member (select (arr!44811 a!3861) from!3239) (content!718 acc!866)))))

(declare-fun e!774486 () Bool)

(assert (=> d!146553 (= lt!601517 e!774486)))

(declare-fun res!910127 () Bool)

(assert (=> d!146553 (=> (not res!910127) (not e!774486))))

(assert (=> d!146553 (= res!910127 (is-Cons!32055 acc!866))))

(assert (=> d!146553 (= (contains!9597 acc!866 (select (arr!44811 a!3861) from!3239)) lt!601517)))

(declare-fun b!1366438 () Bool)

(declare-fun e!774487 () Bool)

(assert (=> b!1366438 (= e!774486 e!774487)))

(declare-fun res!910128 () Bool)

(assert (=> b!1366438 (=> res!910128 e!774487)))

(assert (=> b!1366438 (= res!910128 (= (h!33264 acc!866) (select (arr!44811 a!3861) from!3239)))))

(declare-fun b!1366439 () Bool)

(assert (=> b!1366439 (= e!774487 (contains!9597 (t!46760 acc!866) (select (arr!44811 a!3861) from!3239)))))

(assert (= (and d!146553 res!910127) b!1366438))

(assert (= (and b!1366438 (not res!910128)) b!1366439))

(declare-fun m!1250759 () Bool)

(assert (=> d!146553 m!1250759))

(assert (=> d!146553 m!1250719))

(declare-fun m!1250761 () Bool)

(assert (=> d!146553 m!1250761))

(assert (=> b!1366439 m!1250719))

(declare-fun m!1250763 () Bool)

(assert (=> b!1366439 m!1250763))

(assert (=> b!1366366 d!146553))

(declare-fun d!146561 () Bool)

(declare-fun res!910143 () Bool)

(declare-fun e!774504 () Bool)

(assert (=> d!146561 (=> res!910143 e!774504)))

(assert (=> d!146561 (= res!910143 (is-Nil!32056 acc!866))))

(assert (=> d!146561 (= (noDuplicate!2476 acc!866) e!774504)))

(declare-fun b!1366458 () Bool)

(declare-fun e!774505 () Bool)

(assert (=> b!1366458 (= e!774504 e!774505)))

(declare-fun res!910144 () Bool)

(assert (=> b!1366458 (=> (not res!910144) (not e!774505))))

(assert (=> b!1366458 (= res!910144 (not (contains!9597 (t!46760 acc!866) (h!33264 acc!866))))))

(declare-fun b!1366459 () Bool)

(assert (=> b!1366459 (= e!774505 (noDuplicate!2476 (t!46760 acc!866)))))

(assert (= (and d!146561 (not res!910143)) b!1366458))

(assert (= (and b!1366458 res!910144) b!1366459))

(declare-fun m!1250765 () Bool)

(assert (=> b!1366458 m!1250765))

(declare-fun m!1250767 () Bool)

(assert (=> b!1366459 m!1250767))

(assert (=> b!1366367 d!146561))

(declare-fun d!146563 () Bool)

(assert (=> d!146563 (= (array_inv!33756 a!3861) (bvsge (size!45362 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115530 d!146563))

(declare-fun b!1366462 () Bool)

(declare-fun e!774510 () Bool)

(declare-fun e!774509 () Bool)

(assert (=> b!1366462 (= e!774510 e!774509)))

(declare-fun res!910149 () Bool)

(assert (=> b!1366462 (=> (not res!910149) (not e!774509))))

(assert (=> b!1366462 (= res!910149 (is-Cons!32055 lt!601510))))

(declare-fun b!1366463 () Bool)

(declare-fun e!774511 () Bool)

(assert (=> b!1366463 (= e!774509 e!774511)))

(declare-fun res!910150 () Bool)

(assert (=> b!1366463 (=> res!910150 e!774511)))

(declare-fun e!774508 () Bool)

(assert (=> b!1366463 (= res!910150 e!774508)))

(declare-fun res!910148 () Bool)

(assert (=> b!1366463 (=> (not res!910148) (not e!774508))))

(assert (=> b!1366463 (= res!910148 (= (h!33264 lt!601508) (h!33264 lt!601510)))))

(declare-fun d!146565 () Bool)

(declare-fun res!910147 () Bool)

(assert (=> d!146565 (=> res!910147 e!774510)))

(assert (=> d!146565 (= res!910147 (is-Nil!32056 lt!601508))))

(assert (=> d!146565 (= (subseq!988 lt!601508 lt!601510) e!774510)))

(declare-fun b!1366465 () Bool)

(assert (=> b!1366465 (= e!774511 (subseq!988 lt!601508 (t!46760 lt!601510)))))

(declare-fun b!1366464 () Bool)

(assert (=> b!1366464 (= e!774508 (subseq!988 (t!46760 lt!601508) (t!46760 lt!601510)))))

(assert (= (and d!146565 (not res!910147)) b!1366462))

(assert (= (and b!1366462 res!910149) b!1366463))

(assert (= (and b!1366463 res!910148) b!1366464))

(assert (= (and b!1366463 (not res!910150)) b!1366465))

(declare-fun m!1250775 () Bool)

(assert (=> b!1366465 m!1250775))

(declare-fun m!1250777 () Bool)

(assert (=> b!1366464 m!1250777))

(assert (=> b!1366373 d!146565))

(declare-fun b!1366498 () Bool)

(declare-fun e!774542 () Bool)

(declare-fun call!65465 () Bool)

(assert (=> b!1366498 (= e!774542 call!65465)))

(declare-fun b!1366499 () Bool)

(declare-fun e!774540 () Bool)

(assert (=> b!1366499 (= e!774540 (contains!9597 lt!601508 (select (arr!44811 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun c!127604 () Bool)

(declare-fun bm!65462 () Bool)

(assert (=> bm!65462 (= call!65465 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127604 (Cons!32055 (select (arr!44811 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!601508) lt!601508)))))

(declare-fun b!1366500 () Bool)

(declare-fun e!774541 () Bool)

(assert (=> b!1366500 (= e!774541 e!774542)))

(assert (=> b!1366500 (= c!127604 (validKeyInArray!0 (select (arr!44811 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1366501 () Bool)

(assert (=> b!1366501 (= e!774542 call!65465)))

(declare-fun d!146569 () Bool)

(declare-fun res!910176 () Bool)

(declare-fun e!774543 () Bool)

(assert (=> d!146569 (=> res!910176 e!774543)))

(assert (=> d!146569 (= res!910176 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45362 a!3861)))))

(assert (=> d!146569 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601508) e!774543)))

(declare-fun b!1366502 () Bool)

(assert (=> b!1366502 (= e!774543 e!774541)))

(declare-fun res!910175 () Bool)

(assert (=> b!1366502 (=> (not res!910175) (not e!774541))))

(assert (=> b!1366502 (= res!910175 (not e!774540))))

(declare-fun res!910177 () Bool)

(assert (=> b!1366502 (=> (not res!910177) (not e!774540))))

(assert (=> b!1366502 (= res!910177 (validKeyInArray!0 (select (arr!44811 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(assert (= (and d!146569 (not res!910176)) b!1366502))

(assert (= (and b!1366502 res!910177) b!1366499))

(assert (= (and b!1366502 res!910175) b!1366500))

(assert (= (and b!1366500 c!127604) b!1366498))

(assert (= (and b!1366500 (not c!127604)) b!1366501))

(assert (= (or b!1366498 b!1366501) bm!65462))

(declare-fun m!1250813 () Bool)

(assert (=> b!1366499 m!1250813))

(assert (=> b!1366499 m!1250813))

(declare-fun m!1250815 () Bool)

(assert (=> b!1366499 m!1250815))

(assert (=> bm!65462 m!1250813))

(declare-fun m!1250817 () Bool)

(assert (=> bm!65462 m!1250817))

(assert (=> b!1366500 m!1250813))

(assert (=> b!1366500 m!1250813))

(declare-fun m!1250819 () Bool)

(assert (=> b!1366500 m!1250819))

(assert (=> b!1366502 m!1250813))

(assert (=> b!1366502 m!1250813))

(assert (=> b!1366502 m!1250819))

(assert (=> b!1366373 d!146569))

(declare-fun d!146585 () Bool)

(assert (=> d!146585 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601508)))

(declare-fun lt!601537 () Unit!45057)

(declare-fun choose!80 (array!92774 List!32059 List!32059 (_ BitVec 32)) Unit!45057)

(assert (=> d!146585 (= lt!601537 (choose!80 a!3861 lt!601510 lt!601508 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> d!146585 (bvslt (size!45362 a!3861) #b01111111111111111111111111111111)))

(assert (=> d!146585 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601510 lt!601508 (bvadd #b00000000000000000000000000000001 from!3239)) lt!601537)))

(declare-fun bs!39199 () Bool)

(assert (= bs!39199 d!146585))

(assert (=> bs!39199 m!1250715))

(declare-fun m!1250847 () Bool)

(assert (=> bs!39199 m!1250847))

(assert (=> b!1366373 d!146585))

(declare-fun d!146599 () Bool)

(assert (=> d!146599 (= (validKeyInArray!0 (select (arr!44811 a!3861) from!3239)) (and (not (= (select (arr!44811 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44811 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1366363 d!146599))

(declare-fun d!146607 () Bool)

(declare-fun res!910202 () Bool)

(declare-fun e!774568 () Bool)

(assert (=> d!146607 (=> res!910202 e!774568)))

(assert (=> d!146607 (= res!910202 (is-Nil!32056 lt!601510))))

(assert (=> d!146607 (= (noDuplicate!2476 lt!601510) e!774568)))

(declare-fun b!1366527 () Bool)

(declare-fun e!774569 () Bool)

(assert (=> b!1366527 (= e!774568 e!774569)))

(declare-fun res!910203 () Bool)

(assert (=> b!1366527 (=> (not res!910203) (not e!774569))))

(assert (=> b!1366527 (= res!910203 (not (contains!9597 (t!46760 lt!601510) (h!33264 lt!601510))))))

(declare-fun b!1366528 () Bool)

(assert (=> b!1366528 (= e!774569 (noDuplicate!2476 (t!46760 lt!601510)))))

(assert (= (and d!146607 (not res!910202)) b!1366527))

(assert (= (and b!1366527 res!910203) b!1366528))

(declare-fun m!1250861 () Bool)

(assert (=> b!1366527 m!1250861))

(declare-fun m!1250865 () Bool)

(assert (=> b!1366528 m!1250865))

(assert (=> b!1366364 d!146607))

(declare-fun d!146611 () Bool)

(declare-fun lt!601541 () Bool)

(assert (=> d!146611 (= lt!601541 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!718 acc!866)))))

(declare-fun e!774572 () Bool)

(assert (=> d!146611 (= lt!601541 e!774572)))

(declare-fun res!910206 () Bool)

(assert (=> d!146611 (=> (not res!910206) (not e!774572))))

(assert (=> d!146611 (= res!910206 (is-Cons!32055 acc!866))))

(assert (=> d!146611 (= (contains!9597 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!601541)))

(declare-fun b!1366531 () Bool)

(declare-fun e!774573 () Bool)

(assert (=> b!1366531 (= e!774572 e!774573)))

(declare-fun res!910207 () Bool)

(assert (=> b!1366531 (=> res!910207 e!774573)))

(assert (=> b!1366531 (= res!910207 (= (h!33264 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1366532 () Bool)

(assert (=> b!1366532 (= e!774573 (contains!9597 (t!46760 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146611 res!910206) b!1366531))

(assert (= (and b!1366531 (not res!910207)) b!1366532))

(assert (=> d!146611 m!1250759))

(declare-fun m!1250869 () Bool)

(assert (=> d!146611 m!1250869))

(declare-fun m!1250873 () Bool)

(assert (=> b!1366532 m!1250873))

(assert (=> b!1366371 d!146611))

(declare-fun b!1366533 () Bool)

(declare-fun e!774576 () Bool)

(declare-fun call!65466 () Bool)

(assert (=> b!1366533 (= e!774576 call!65466)))

(declare-fun e!774574 () Bool)

(declare-fun b!1366534 () Bool)

(assert (=> b!1366534 (= e!774574 (contains!9597 acc!866 (select (arr!44811 a!3861) from!3239)))))

(declare-fun c!127605 () Bool)

(declare-fun bm!65463 () Bool)

(assert (=> bm!65463 (= call!65466 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127605 (Cons!32055 (select (arr!44811 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1366535 () Bool)

(declare-fun e!774575 () Bool)

(assert (=> b!1366535 (= e!774575 e!774576)))

(assert (=> b!1366535 (= c!127605 (validKeyInArray!0 (select (arr!44811 a!3861) from!3239)))))

(declare-fun b!1366536 () Bool)

(assert (=> b!1366536 (= e!774576 call!65466)))

(declare-fun d!146615 () Bool)

(declare-fun res!910209 () Bool)

(declare-fun e!774577 () Bool)

(assert (=> d!146615 (=> res!910209 e!774577)))

(assert (=> d!146615 (= res!910209 (bvsge from!3239 (size!45362 a!3861)))))

(assert (=> d!146615 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!774577)))

(declare-fun b!1366537 () Bool)

(assert (=> b!1366537 (= e!774577 e!774575)))

(declare-fun res!910208 () Bool)

(assert (=> b!1366537 (=> (not res!910208) (not e!774575))))

(assert (=> b!1366537 (= res!910208 (not e!774574))))

(declare-fun res!910210 () Bool)

(assert (=> b!1366537 (=> (not res!910210) (not e!774574))))

(assert (=> b!1366537 (= res!910210 (validKeyInArray!0 (select (arr!44811 a!3861) from!3239)))))

(assert (= (and d!146615 (not res!910209)) b!1366537))

(assert (= (and b!1366537 res!910210) b!1366534))

(assert (= (and b!1366537 res!910208) b!1366535))

(assert (= (and b!1366535 c!127605) b!1366533))

(assert (= (and b!1366535 (not c!127605)) b!1366536))

(assert (= (or b!1366533 b!1366536) bm!65463))

(assert (=> b!1366534 m!1250719))

(assert (=> b!1366534 m!1250719))

(assert (=> b!1366534 m!1250725))

(assert (=> bm!65463 m!1250719))

(declare-fun m!1250875 () Bool)

(assert (=> bm!65463 m!1250875))

(assert (=> b!1366535 m!1250719))

(assert (=> b!1366535 m!1250719))

(assert (=> b!1366535 m!1250729))

(assert (=> b!1366537 m!1250719))

(assert (=> b!1366537 m!1250719))

(assert (=> b!1366537 m!1250729))

(assert (=> b!1366372 d!146615))

(declare-fun d!146619 () Bool)

(assert (=> d!146619 (noDuplicate!2476 newAcc!98)))

(declare-fun lt!601544 () Unit!45057)

(declare-fun choose!2000 (List!32059 List!32059) Unit!45057)

(assert (=> d!146619 (= lt!601544 (choose!2000 newAcc!98 acc!866))))

(declare-fun e!774586 () Bool)

(assert (=> d!146619 e!774586))

(declare-fun res!910218 () Bool)

(assert (=> d!146619 (=> (not res!910218) (not e!774586))))

(assert (=> d!146619 (= res!910218 (subseq!988 newAcc!98 acc!866))))

(assert (=> d!146619 (= (noDuplicateSubseq!175 newAcc!98 acc!866) lt!601544)))

(declare-fun b!1366547 () Bool)

(assert (=> b!1366547 (= e!774586 (noDuplicate!2476 acc!866))))

(assert (= (and d!146619 res!910218) b!1366547))

(declare-fun m!1250883 () Bool)

(assert (=> d!146619 m!1250883))

(declare-fun m!1250885 () Bool)

