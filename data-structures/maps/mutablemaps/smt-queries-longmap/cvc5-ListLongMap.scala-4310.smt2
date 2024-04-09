; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59904 () Bool)

(assert start!59904)

(declare-fun b!662549 () Bool)

(declare-fun res!430706 () Bool)

(declare-fun e!380309 () Bool)

(assert (=> b!662549 (=> res!430706 e!380309)))

(declare-datatypes ((List!12736 0))(
  ( (Nil!12733) (Cons!12732 (h!13777 (_ BitVec 64)) (t!18972 List!12736)) )
))
(declare-fun lt!309044 () List!12736)

(declare-fun contains!3279 (List!12736 (_ BitVec 64)) Bool)

(assert (=> b!662549 (= res!430706 (contains!3279 lt!309044 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662550 () Bool)

(declare-fun e!380306 () Bool)

(assert (=> b!662550 (= e!380306 e!380309)))

(declare-fun res!430699 () Bool)

(assert (=> b!662550 (=> res!430699 e!380309)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!662550 (= res!430699 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun acc!681 () List!12736)

(declare-datatypes ((array!38907 0))(
  ( (array!38908 (arr!18642 (Array (_ BitVec 32) (_ BitVec 64))) (size!19006 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38907)

(declare-fun $colon$colon!148 (List!12736 (_ BitVec 64)) List!12736)

(assert (=> b!662550 (= lt!309044 ($colon$colon!148 acc!681 (select (arr!18642 a!3626) from!3004)))))

(declare-fun subseq!17 (List!12736 List!12736) Bool)

(assert (=> b!662550 (subseq!17 acc!681 acc!681)))

(declare-datatypes ((Unit!23014 0))(
  ( (Unit!23015) )
))
(declare-fun lt!309043 () Unit!23014)

(declare-fun lemmaListSubSeqRefl!0 (List!12736) Unit!23014)

(assert (=> b!662550 (= lt!309043 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662551 () Bool)

(declare-fun res!430711 () Bool)

(declare-fun e!380308 () Bool)

(assert (=> b!662551 (=> (not res!430711) (not e!380308))))

(declare-fun arrayNoDuplicates!0 (array!38907 (_ BitVec 32) List!12736) Bool)

(assert (=> b!662551 (= res!430711 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!662552 () Bool)

(declare-fun e!380311 () Unit!23014)

(declare-fun Unit!23016 () Unit!23014)

(assert (=> b!662552 (= e!380311 Unit!23016)))

(declare-fun res!430693 () Bool)

(assert (=> start!59904 (=> (not res!430693) (not e!380308))))

(assert (=> start!59904 (= res!430693 (and (bvslt (size!19006 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19006 a!3626))))))

(assert (=> start!59904 e!380308))

(assert (=> start!59904 true))

(declare-fun array_inv!14416 (array!38907) Bool)

(assert (=> start!59904 (array_inv!14416 a!3626)))

(declare-fun b!662553 () Bool)

(declare-fun res!430702 () Bool)

(assert (=> b!662553 (=> (not res!430702) (not e!380308))))

(declare-fun noDuplicate!526 (List!12736) Bool)

(assert (=> b!662553 (= res!430702 (noDuplicate!526 acc!681))))

(declare-fun b!662554 () Bool)

(declare-fun e!380307 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!662554 (= e!380307 (not (contains!3279 acc!681 k!2843)))))

(declare-fun b!662555 () Bool)

(declare-fun res!430700 () Bool)

(assert (=> b!662555 (=> res!430700 e!380309)))

(assert (=> b!662555 (= res!430700 (not (subseq!17 acc!681 lt!309044)))))

(declare-fun b!662556 () Bool)

(declare-fun res!430703 () Bool)

(assert (=> b!662556 (=> (not res!430703) (not e!380308))))

(assert (=> b!662556 (= res!430703 (not (contains!3279 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662557 () Bool)

(declare-fun res!430694 () Bool)

(assert (=> b!662557 (=> (not res!430694) (not e!380308))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!662557 (= res!430694 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19006 a!3626))))))

(declare-fun b!662558 () Bool)

(declare-fun res!430695 () Bool)

(assert (=> b!662558 (=> res!430695 e!380309)))

(assert (=> b!662558 (= res!430695 (contains!3279 lt!309044 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662559 () Bool)

(declare-fun res!430710 () Bool)

(assert (=> b!662559 (=> (not res!430710) (not e!380308))))

(declare-fun arrayContainsKey!0 (array!38907 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662559 (= res!430710 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!662560 () Bool)

(assert (=> b!662560 (= e!380308 (not e!380306))))

(declare-fun res!430705 () Bool)

(assert (=> b!662560 (=> res!430705 e!380306)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662560 (= res!430705 (not (validKeyInArray!0 (select (arr!18642 a!3626) from!3004))))))

(declare-fun lt!309045 () Unit!23014)

(assert (=> b!662560 (= lt!309045 e!380311)))

(declare-fun c!76295 () Bool)

(assert (=> b!662560 (= c!76295 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!662560 (arrayContainsKey!0 (array!38908 (store (arr!18642 a!3626) i!1382 k!2843) (size!19006 a!3626)) k!2843 from!3004)))

(declare-fun b!662561 () Bool)

(declare-fun res!430701 () Bool)

(assert (=> b!662561 (=> (not res!430701) (not e!380308))))

(declare-fun e!380305 () Bool)

(assert (=> b!662561 (= res!430701 e!380305)))

(declare-fun res!430709 () Bool)

(assert (=> b!662561 (=> res!430709 e!380305)))

(declare-fun e!380310 () Bool)

(assert (=> b!662561 (= res!430709 e!380310)))

(declare-fun res!430712 () Bool)

(assert (=> b!662561 (=> (not res!430712) (not e!380310))))

(assert (=> b!662561 (= res!430712 (bvsgt from!3004 i!1382))))

(declare-fun b!662562 () Bool)

(assert (=> b!662562 (= e!380305 e!380307)))

(declare-fun res!430696 () Bool)

(assert (=> b!662562 (=> (not res!430696) (not e!380307))))

(assert (=> b!662562 (= res!430696 (bvsle from!3004 i!1382))))

(declare-fun b!662563 () Bool)

(declare-fun res!430707 () Bool)

(assert (=> b!662563 (=> res!430707 e!380309)))

(assert (=> b!662563 (= res!430707 (not (noDuplicate!526 lt!309044)))))

(declare-fun b!662564 () Bool)

(assert (=> b!662564 (= e!380310 (contains!3279 acc!681 k!2843))))

(declare-fun b!662565 () Bool)

(declare-fun Unit!23017 () Unit!23014)

(assert (=> b!662565 (= e!380311 Unit!23017)))

(declare-fun lt!309042 () Unit!23014)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38907 (_ BitVec 64) (_ BitVec 32)) Unit!23014)

(assert (=> b!662565 (= lt!309042 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!662565 false))

(declare-fun b!662566 () Bool)

(declare-fun res!430708 () Bool)

(assert (=> b!662566 (=> (not res!430708) (not e!380308))))

(assert (=> b!662566 (= res!430708 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19006 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662567 () Bool)

(assert (=> b!662567 (= e!380309 true)))

(declare-fun lt!309041 () Bool)

(assert (=> b!662567 (= lt!309041 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!309044))))

(declare-fun lt!309040 () Unit!23014)

(declare-fun noDuplicateSubseq!17 (List!12736 List!12736) Unit!23014)

(assert (=> b!662567 (= lt!309040 (noDuplicateSubseq!17 acc!681 lt!309044))))

(declare-fun b!662568 () Bool)

(declare-fun res!430704 () Bool)

(assert (=> b!662568 (=> (not res!430704) (not e!380308))))

(assert (=> b!662568 (= res!430704 (validKeyInArray!0 k!2843))))

(declare-fun b!662569 () Bool)

(declare-fun res!430698 () Bool)

(assert (=> b!662569 (=> (not res!430698) (not e!380308))))

(assert (=> b!662569 (= res!430698 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12733))))

(declare-fun b!662570 () Bool)

(declare-fun res!430697 () Bool)

(assert (=> b!662570 (=> (not res!430697) (not e!380308))))

(assert (=> b!662570 (= res!430697 (not (contains!3279 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59904 res!430693) b!662553))

(assert (= (and b!662553 res!430702) b!662570))

(assert (= (and b!662570 res!430697) b!662556))

(assert (= (and b!662556 res!430703) b!662561))

(assert (= (and b!662561 res!430712) b!662564))

(assert (= (and b!662561 (not res!430709)) b!662562))

(assert (= (and b!662562 res!430696) b!662554))

(assert (= (and b!662561 res!430701) b!662569))

(assert (= (and b!662569 res!430698) b!662551))

(assert (= (and b!662551 res!430711) b!662557))

(assert (= (and b!662557 res!430694) b!662568))

(assert (= (and b!662568 res!430704) b!662559))

(assert (= (and b!662559 res!430710) b!662566))

(assert (= (and b!662566 res!430708) b!662560))

(assert (= (and b!662560 c!76295) b!662565))

(assert (= (and b!662560 (not c!76295)) b!662552))

(assert (= (and b!662560 (not res!430705)) b!662550))

(assert (= (and b!662550 (not res!430699)) b!662563))

(assert (= (and b!662563 (not res!430707)) b!662558))

(assert (= (and b!662558 (not res!430695)) b!662549))

(assert (= (and b!662549 (not res!430706)) b!662555))

(assert (= (and b!662555 (not res!430700)) b!662567))

(declare-fun m!634371 () Bool)

(assert (=> b!662569 m!634371))

(declare-fun m!634373 () Bool)

(assert (=> b!662554 m!634373))

(assert (=> b!662564 m!634373))

(declare-fun m!634375 () Bool)

(assert (=> start!59904 m!634375))

(declare-fun m!634377 () Bool)

(assert (=> b!662549 m!634377))

(declare-fun m!634379 () Bool)

(assert (=> b!662551 m!634379))

(declare-fun m!634381 () Bool)

(assert (=> b!662565 m!634381))

(declare-fun m!634383 () Bool)

(assert (=> b!662560 m!634383))

(declare-fun m!634385 () Bool)

(assert (=> b!662560 m!634385))

(declare-fun m!634387 () Bool)

(assert (=> b!662560 m!634387))

(assert (=> b!662560 m!634383))

(declare-fun m!634389 () Bool)

(assert (=> b!662560 m!634389))

(declare-fun m!634391 () Bool)

(assert (=> b!662560 m!634391))

(declare-fun m!634393 () Bool)

(assert (=> b!662559 m!634393))

(declare-fun m!634395 () Bool)

(assert (=> b!662555 m!634395))

(declare-fun m!634397 () Bool)

(assert (=> b!662553 m!634397))

(declare-fun m!634399 () Bool)

(assert (=> b!662558 m!634399))

(declare-fun m!634401 () Bool)

(assert (=> b!662556 m!634401))

(declare-fun m!634403 () Bool)

(assert (=> b!662570 m!634403))

(declare-fun m!634405 () Bool)

(assert (=> b!662563 m!634405))

(declare-fun m!634407 () Bool)

(assert (=> b!662568 m!634407))

(assert (=> b!662550 m!634383))

(assert (=> b!662550 m!634383))

(declare-fun m!634409 () Bool)

(assert (=> b!662550 m!634409))

(declare-fun m!634411 () Bool)

(assert (=> b!662550 m!634411))

(declare-fun m!634413 () Bool)

(assert (=> b!662550 m!634413))

(declare-fun m!634415 () Bool)

(assert (=> b!662567 m!634415))

(declare-fun m!634417 () Bool)

(assert (=> b!662567 m!634417))

(push 1)

