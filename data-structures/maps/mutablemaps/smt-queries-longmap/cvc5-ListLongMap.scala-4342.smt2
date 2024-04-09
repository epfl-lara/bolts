; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60096 () Bool)

(assert start!60096)

(declare-fun b!669359 () Bool)

(declare-fun res!436406 () Bool)

(declare-fun e!382839 () Bool)

(assert (=> b!669359 (=> (not res!436406) (not e!382839))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!669359 (= res!436406 (validKeyInArray!0 k!2843))))

(declare-fun b!669360 () Bool)

(declare-fun e!382849 () Bool)

(declare-datatypes ((List!12832 0))(
  ( (Nil!12829) (Cons!12828 (h!13873 (_ BitVec 64)) (t!19068 List!12832)) )
))
(declare-fun lt!311620 () List!12832)

(declare-fun contains!3375 (List!12832 (_ BitVec 64)) Bool)

(assert (=> b!669360 (= e!382849 (contains!3375 lt!311620 k!2843))))

(declare-fun b!669361 () Bool)

(declare-fun e!382848 () Bool)

(assert (=> b!669361 (= e!382848 (not (contains!3375 lt!311620 k!2843)))))

(declare-fun b!669362 () Bool)

(declare-fun e!382846 () Bool)

(declare-fun acc!681 () List!12832)

(assert (=> b!669362 (= e!382846 (not (contains!3375 acc!681 k!2843)))))

(declare-fun b!669363 () Bool)

(declare-fun res!436405 () Bool)

(assert (=> b!669363 (=> (not res!436405) (not e!382839))))

(declare-fun e!382843 () Bool)

(assert (=> b!669363 (= res!436405 e!382843)))

(declare-fun res!436413 () Bool)

(assert (=> b!669363 (=> res!436413 e!382843)))

(declare-fun e!382842 () Bool)

(assert (=> b!669363 (= res!436413 e!382842)))

(declare-fun res!436420 () Bool)

(assert (=> b!669363 (=> (not res!436420) (not e!382842))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!669363 (= res!436420 (bvsgt from!3004 i!1382))))

(declare-fun b!669364 () Bool)

(declare-datatypes ((Unit!23485 0))(
  ( (Unit!23486) )
))
(declare-fun e!382840 () Unit!23485)

(declare-fun Unit!23487 () Unit!23485)

(assert (=> b!669364 (= e!382840 Unit!23487)))

(declare-fun b!669366 () Bool)

(declare-fun res!436410 () Bool)

(assert (=> b!669366 (=> (not res!436410) (not e!382839))))

(declare-datatypes ((array!39099 0))(
  ( (array!39100 (arr!18738 (Array (_ BitVec 32) (_ BitVec 64))) (size!19102 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39099)

(assert (=> b!669366 (= res!436410 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19102 a!3626))))))

(declare-fun b!669367 () Bool)

(declare-fun res!436404 () Bool)

(assert (=> b!669367 (=> (not res!436404) (not e!382839))))

(assert (=> b!669367 (= res!436404 (not (contains!3375 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669368 () Bool)

(assert (=> b!669368 (= e!382842 (contains!3375 acc!681 k!2843))))

(declare-fun b!669369 () Bool)

(declare-fun e!382845 () Unit!23485)

(declare-fun Unit!23488 () Unit!23485)

(assert (=> b!669369 (= e!382845 Unit!23488)))

(declare-fun lt!311615 () Unit!23485)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39099 (_ BitVec 64) (_ BitVec 32)) Unit!23485)

(assert (=> b!669369 (= lt!311615 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!669369 false))

(declare-fun b!669370 () Bool)

(declare-fun res!436415 () Bool)

(assert (=> b!669370 (=> (not res!436415) (not e!382839))))

(assert (=> b!669370 (= res!436415 (not (contains!3375 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669371 () Bool)

(declare-fun e!382841 () Bool)

(assert (=> b!669371 (= e!382841 e!382848)))

(declare-fun res!436419 () Bool)

(assert (=> b!669371 (=> (not res!436419) (not e!382848))))

(assert (=> b!669371 (= res!436419 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669372 () Bool)

(declare-fun res!436407 () Bool)

(assert (=> b!669372 (=> (not res!436407) (not e!382839))))

(declare-fun noDuplicate!622 (List!12832) Bool)

(assert (=> b!669372 (= res!436407 (noDuplicate!622 acc!681))))

(declare-fun b!669373 () Bool)

(assert (=> b!669373 (= e!382843 e!382846)))

(declare-fun res!436411 () Bool)

(assert (=> b!669373 (=> (not res!436411) (not e!382846))))

(assert (=> b!669373 (= res!436411 (bvsle from!3004 i!1382))))

(declare-fun b!669374 () Bool)

(declare-fun lt!311618 () Unit!23485)

(assert (=> b!669374 (= e!382840 lt!311618)))

(declare-fun lt!311614 () Unit!23485)

(declare-fun lemmaListSubSeqRefl!0 (List!12832) Unit!23485)

(assert (=> b!669374 (= lt!311614 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!113 (List!12832 List!12832) Bool)

(assert (=> b!669374 (subseq!113 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39099 List!12832 List!12832 (_ BitVec 32)) Unit!23485)

(declare-fun $colon$colon!244 (List!12832 (_ BitVec 64)) List!12832)

(assert (=> b!669374 (= lt!311618 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!244 acc!681 (select (arr!18738 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39099 (_ BitVec 32) List!12832) Bool)

(assert (=> b!669374 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun res!436403 () Bool)

(assert (=> start!60096 (=> (not res!436403) (not e!382839))))

(assert (=> start!60096 (= res!436403 (and (bvslt (size!19102 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19102 a!3626))))))

(assert (=> start!60096 e!382839))

(assert (=> start!60096 true))

(declare-fun array_inv!14512 (array!39099) Bool)

(assert (=> start!60096 (array_inv!14512 a!3626)))

(declare-fun b!669365 () Bool)

(declare-fun res!436416 () Bool)

(assert (=> b!669365 (=> (not res!436416) (not e!382839))))

(assert (=> b!669365 (= res!436416 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!669375 () Bool)

(declare-fun Unit!23489 () Unit!23485)

(assert (=> b!669375 (= e!382845 Unit!23489)))

(declare-fun b!669376 () Bool)

(declare-fun res!436408 () Bool)

(assert (=> b!669376 (=> (not res!436408) (not e!382839))))

(declare-fun arrayContainsKey!0 (array!39099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!669376 (= res!436408 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669377 () Bool)

(declare-fun res!436412 () Bool)

(declare-fun e!382844 () Bool)

(assert (=> b!669377 (=> res!436412 e!382844)))

(assert (=> b!669377 (= res!436412 (contains!3375 lt!311620 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669378 () Bool)

(declare-fun res!436402 () Bool)

(assert (=> b!669378 (=> res!436402 e!382844)))

(assert (=> b!669378 (= res!436402 (not (noDuplicate!622 lt!311620)))))

(declare-fun b!669379 () Bool)

(assert (=> b!669379 (= e!382839 (not e!382844))))

(declare-fun res!436421 () Bool)

(assert (=> b!669379 (=> res!436421 e!382844)))

(assert (=> b!669379 (= res!436421 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!669379 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311620)))

(declare-fun lt!311621 () Unit!23485)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39099 (_ BitVec 64) (_ BitVec 32) List!12832 List!12832) Unit!23485)

(assert (=> b!669379 (= lt!311621 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311620))))

(declare-fun -!111 (List!12832 (_ BitVec 64)) List!12832)

(assert (=> b!669379 (= (-!111 lt!311620 k!2843) acc!681)))

(assert (=> b!669379 (= lt!311620 ($colon$colon!244 acc!681 k!2843))))

(declare-fun lt!311619 () Unit!23485)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12832) Unit!23485)

(assert (=> b!669379 (= lt!311619 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!669379 (subseq!113 acc!681 acc!681)))

(declare-fun lt!311622 () Unit!23485)

(assert (=> b!669379 (= lt!311622 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669379 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311617 () Unit!23485)

(assert (=> b!669379 (= lt!311617 e!382840)))

(declare-fun c!76847 () Bool)

(assert (=> b!669379 (= c!76847 (validKeyInArray!0 (select (arr!18738 a!3626) from!3004)))))

(declare-fun lt!311616 () Unit!23485)

(assert (=> b!669379 (= lt!311616 e!382845)))

(declare-fun c!76846 () Bool)

(assert (=> b!669379 (= c!76846 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669379 (arrayContainsKey!0 (array!39100 (store (arr!18738 a!3626) i!1382 k!2843) (size!19102 a!3626)) k!2843 from!3004)))

(declare-fun b!669380 () Bool)

(assert (=> b!669380 (= e!382844 true)))

(declare-fun lt!311613 () Bool)

(assert (=> b!669380 (= lt!311613 e!382841)))

(declare-fun res!436418 () Bool)

(assert (=> b!669380 (=> res!436418 e!382841)))

(assert (=> b!669380 (= res!436418 e!382849)))

(declare-fun res!436401 () Bool)

(assert (=> b!669380 (=> (not res!436401) (not e!382849))))

(assert (=> b!669380 (= res!436401 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669381 () Bool)

(declare-fun res!436409 () Bool)

(assert (=> b!669381 (=> res!436409 e!382844)))

(assert (=> b!669381 (= res!436409 (contains!3375 lt!311620 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669382 () Bool)

(declare-fun res!436417 () Bool)

(assert (=> b!669382 (=> (not res!436417) (not e!382839))))

(assert (=> b!669382 (= res!436417 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19102 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!669383 () Bool)

(declare-fun res!436414 () Bool)

(assert (=> b!669383 (=> (not res!436414) (not e!382839))))

(assert (=> b!669383 (= res!436414 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12829))))

(assert (= (and start!60096 res!436403) b!669372))

(assert (= (and b!669372 res!436407) b!669370))

(assert (= (and b!669370 res!436415) b!669367))

(assert (= (and b!669367 res!436404) b!669363))

(assert (= (and b!669363 res!436420) b!669368))

(assert (= (and b!669363 (not res!436413)) b!669373))

(assert (= (and b!669373 res!436411) b!669362))

(assert (= (and b!669363 res!436405) b!669383))

(assert (= (and b!669383 res!436414) b!669365))

(assert (= (and b!669365 res!436416) b!669366))

(assert (= (and b!669366 res!436410) b!669359))

(assert (= (and b!669359 res!436406) b!669376))

(assert (= (and b!669376 res!436408) b!669382))

(assert (= (and b!669382 res!436417) b!669379))

(assert (= (and b!669379 c!76846) b!669369))

(assert (= (and b!669379 (not c!76846)) b!669375))

(assert (= (and b!669379 c!76847) b!669374))

(assert (= (and b!669379 (not c!76847)) b!669364))

(assert (= (and b!669379 (not res!436421)) b!669378))

(assert (= (and b!669378 (not res!436402)) b!669381))

(assert (= (and b!669381 (not res!436409)) b!669377))

(assert (= (and b!669377 (not res!436412)) b!669380))

(assert (= (and b!669380 res!436401) b!669360))

(assert (= (and b!669380 (not res!436418)) b!669371))

(assert (= (and b!669371 res!436419) b!669361))

(declare-fun m!639495 () Bool)

(assert (=> b!669377 m!639495))

(declare-fun m!639497 () Bool)

(assert (=> b!669365 m!639497))

(declare-fun m!639499 () Bool)

(assert (=> b!669359 m!639499))

(declare-fun m!639501 () Bool)

(assert (=> b!669372 m!639501))

(declare-fun m!639503 () Bool)

(assert (=> b!669381 m!639503))

(declare-fun m!639505 () Bool)

(assert (=> b!669378 m!639505))

(declare-fun m!639507 () Bool)

(assert (=> b!669360 m!639507))

(declare-fun m!639509 () Bool)

(assert (=> b!669376 m!639509))

(declare-fun m!639511 () Bool)

(assert (=> b!669368 m!639511))

(assert (=> b!669362 m!639511))

(declare-fun m!639513 () Bool)

(assert (=> start!60096 m!639513))

(declare-fun m!639515 () Bool)

(assert (=> b!669367 m!639515))

(declare-fun m!639517 () Bool)

(assert (=> b!669379 m!639517))

(declare-fun m!639519 () Bool)

(assert (=> b!669379 m!639519))

(declare-fun m!639521 () Bool)

(assert (=> b!669379 m!639521))

(declare-fun m!639523 () Bool)

(assert (=> b!669379 m!639523))

(declare-fun m!639525 () Bool)

(assert (=> b!669379 m!639525))

(declare-fun m!639527 () Bool)

(assert (=> b!669379 m!639527))

(declare-fun m!639529 () Bool)

(assert (=> b!669379 m!639529))

(declare-fun m!639531 () Bool)

(assert (=> b!669379 m!639531))

(assert (=> b!669379 m!639519))

(declare-fun m!639533 () Bool)

(assert (=> b!669379 m!639533))

(declare-fun m!639535 () Bool)

(assert (=> b!669379 m!639535))

(declare-fun m!639537 () Bool)

(assert (=> b!669379 m!639537))

(declare-fun m!639539 () Bool)

(assert (=> b!669379 m!639539))

(declare-fun m!639541 () Bool)

(assert (=> b!669379 m!639541))

(declare-fun m!639543 () Bool)

(assert (=> b!669383 m!639543))

(assert (=> b!669361 m!639507))

(assert (=> b!669374 m!639517))

(assert (=> b!669374 m!639519))

(declare-fun m!639545 () Bool)

(assert (=> b!669374 m!639545))

(declare-fun m!639547 () Bool)

(assert (=> b!669374 m!639547))

(assert (=> b!669374 m!639519))

(assert (=> b!669374 m!639545))

(assert (=> b!669374 m!639525))

(assert (=> b!669374 m!639541))

(declare-fun m!639549 () Bool)

(assert (=> b!669369 m!639549))

(declare-fun m!639551 () Bool)

(assert (=> b!669370 m!639551))

(push 1)

(assert (not b!669378))

(assert (not b!669361))

(assert (not b!669367))

(assert (not b!669372))

(assert (not start!60096))

(assert (not b!669381))

(assert (not b!669374))

(assert (not b!669369))

(assert (not b!669365))

(assert (not b!669370))

(assert (not b!669376))

(assert (not b!669359))

(assert (not b!669362))

(assert (not b!669383))

(assert (not b!669368))

(assert (not b!669377))

(assert (not b!669360))

(assert (not b!669379))

(check-sat)

(pop 1)

