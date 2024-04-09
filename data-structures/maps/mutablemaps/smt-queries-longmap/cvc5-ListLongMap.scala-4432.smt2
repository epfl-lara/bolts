; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61584 () Bool)

(assert start!61584)

(declare-fun b!688499 () Bool)

(declare-datatypes ((Unit!24277 0))(
  ( (Unit!24278) )
))
(declare-fun e!392115 () Unit!24277)

(declare-fun Unit!24279 () Unit!24277)

(assert (=> b!688499 (= e!392115 Unit!24279)))

(declare-fun b!688500 () Bool)

(declare-fun e!392121 () Unit!24277)

(declare-fun Unit!24280 () Unit!24277)

(assert (=> b!688500 (= e!392121 Unit!24280)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!315821 () Unit!24277)

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39681 0))(
  ( (array!39682 (arr!19008 (Array (_ BitVec 32) (_ BitVec 64))) (size!19389 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39681)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39681 (_ BitVec 64) (_ BitVec 32)) Unit!24277)

(assert (=> b!688500 (= lt!315821 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!688500 false))

(declare-fun b!688501 () Bool)

(declare-fun res!453353 () Bool)

(declare-fun e!392112 () Bool)

(assert (=> b!688501 (=> (not res!453353) (not e!392112))))

(declare-datatypes ((List!13102 0))(
  ( (Nil!13099) (Cons!13098 (h!14143 (_ BitVec 64)) (t!19374 List!13102)) )
))
(declare-fun acc!681 () List!13102)

(declare-fun arrayNoDuplicates!0 (array!39681 (_ BitVec 32) List!13102) Bool)

(assert (=> b!688501 (= res!453353 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!688503 () Bool)

(declare-fun lt!315822 () Unit!24277)

(assert (=> b!688503 (= e!392115 lt!315822)))

(declare-fun lt!315826 () Unit!24277)

(declare-fun lemmaListSubSeqRefl!0 (List!13102) Unit!24277)

(assert (=> b!688503 (= lt!315826 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!230 (List!13102 List!13102) Bool)

(assert (=> b!688503 (subseq!230 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39681 List!13102 List!13102 (_ BitVec 32)) Unit!24277)

(declare-fun $colon$colon!394 (List!13102 (_ BitVec 64)) List!13102)

(assert (=> b!688503 (= lt!315822 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!394 acc!681 (select (arr!19008 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688503 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!688504 () Bool)

(declare-fun res!453338 () Bool)

(assert (=> b!688504 (=> (not res!453338) (not e!392112))))

(declare-fun contains!3645 (List!13102 (_ BitVec 64)) Bool)

(assert (=> b!688504 (= res!453338 (not (contains!3645 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688505 () Bool)

(declare-fun res!453343 () Bool)

(declare-fun e!392118 () Bool)

(assert (=> b!688505 (=> res!453343 e!392118)))

(declare-fun lt!315820 () List!13102)

(assert (=> b!688505 (= res!453343 (contains!3645 lt!315820 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688506 () Bool)

(declare-fun e!392114 () Bool)

(assert (=> b!688506 (= e!392114 (not (contains!3645 acc!681 k!2843)))))

(declare-fun b!688507 () Bool)

(assert (=> b!688507 (= e!392112 (not e!392118))))

(declare-fun res!453334 () Bool)

(assert (=> b!688507 (=> res!453334 e!392118)))

(assert (=> b!688507 (= res!453334 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!688507 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315820)))

(declare-fun lt!315824 () Unit!24277)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39681 (_ BitVec 64) (_ BitVec 32) List!13102 List!13102) Unit!24277)

(assert (=> b!688507 (= lt!315824 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315820))))

(declare-fun -!195 (List!13102 (_ BitVec 64)) List!13102)

(assert (=> b!688507 (= (-!195 lt!315820 k!2843) acc!681)))

(assert (=> b!688507 (= lt!315820 ($colon$colon!394 acc!681 k!2843))))

(declare-fun lt!315828 () Unit!24277)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13102) Unit!24277)

(assert (=> b!688507 (= lt!315828 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!688507 (subseq!230 acc!681 acc!681)))

(declare-fun lt!315819 () Unit!24277)

(assert (=> b!688507 (= lt!315819 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688507 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315823 () Unit!24277)

(assert (=> b!688507 (= lt!315823 e!392115)))

(declare-fun c!77951 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!688507 (= c!77951 (validKeyInArray!0 (select (arr!19008 a!3626) from!3004)))))

(declare-fun lt!315827 () Unit!24277)

(assert (=> b!688507 (= lt!315827 e!392121)))

(declare-fun c!77950 () Bool)

(declare-fun arrayContainsKey!0 (array!39681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!688507 (= c!77950 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!688507 (arrayContainsKey!0 (array!39682 (store (arr!19008 a!3626) i!1382 k!2843) (size!19389 a!3626)) k!2843 from!3004)))

(declare-fun b!688508 () Bool)

(declare-fun e!392113 () Bool)

(assert (=> b!688508 (= e!392113 (not (contains!3645 lt!315820 k!2843)))))

(declare-fun b!688509 () Bool)

(declare-fun e!392117 () Bool)

(assert (=> b!688509 (= e!392117 e!392113)))

(declare-fun res!453335 () Bool)

(assert (=> b!688509 (=> (not res!453335) (not e!392113))))

(assert (=> b!688509 (= res!453335 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!453345 () Bool)

(assert (=> start!61584 (=> (not res!453345) (not e!392112))))

(assert (=> start!61584 (= res!453345 (and (bvslt (size!19389 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19389 a!3626))))))

(assert (=> start!61584 e!392112))

(assert (=> start!61584 true))

(declare-fun array_inv!14782 (array!39681) Bool)

(assert (=> start!61584 (array_inv!14782 a!3626)))

(declare-fun b!688502 () Bool)

(declare-fun res!453336 () Bool)

(assert (=> b!688502 (=> (not res!453336) (not e!392112))))

(assert (=> b!688502 (= res!453336 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19389 a!3626))))))

(declare-fun b!688510 () Bool)

(declare-fun res!453346 () Bool)

(assert (=> b!688510 (=> (not res!453346) (not e!392112))))

(assert (=> b!688510 (= res!453346 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13099))))

(declare-fun b!688511 () Bool)

(declare-fun res!453347 () Bool)

(assert (=> b!688511 (=> (not res!453347) (not e!392112))))

(assert (=> b!688511 (= res!453347 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!688512 () Bool)

(declare-fun res!453339 () Bool)

(assert (=> b!688512 (=> (not res!453339) (not e!392112))))

(declare-fun e!392120 () Bool)

(assert (=> b!688512 (= res!453339 e!392120)))

(declare-fun res!453344 () Bool)

(assert (=> b!688512 (=> res!453344 e!392120)))

(declare-fun e!392116 () Bool)

(assert (=> b!688512 (= res!453344 e!392116)))

(declare-fun res!453350 () Bool)

(assert (=> b!688512 (=> (not res!453350) (not e!392116))))

(assert (=> b!688512 (= res!453350 (bvsgt from!3004 i!1382))))

(declare-fun b!688513 () Bool)

(assert (=> b!688513 (= e!392120 e!392114)))

(declare-fun res!453341 () Bool)

(assert (=> b!688513 (=> (not res!453341) (not e!392114))))

(assert (=> b!688513 (= res!453341 (bvsle from!3004 i!1382))))

(declare-fun b!688514 () Bool)

(declare-fun res!453348 () Bool)

(assert (=> b!688514 (=> res!453348 e!392118)))

(declare-fun noDuplicate!892 (List!13102) Bool)

(assert (=> b!688514 (= res!453348 (not (noDuplicate!892 lt!315820)))))

(declare-fun b!688515 () Bool)

(declare-fun Unit!24281 () Unit!24277)

(assert (=> b!688515 (= e!392121 Unit!24281)))

(declare-fun b!688516 () Bool)

(declare-fun res!453352 () Bool)

(assert (=> b!688516 (=> (not res!453352) (not e!392112))))

(assert (=> b!688516 (= res!453352 (validKeyInArray!0 k!2843))))

(declare-fun b!688517 () Bool)

(declare-fun res!453342 () Bool)

(assert (=> b!688517 (=> (not res!453342) (not e!392112))))

(assert (=> b!688517 (= res!453342 (noDuplicate!892 acc!681))))

(declare-fun b!688518 () Bool)

(assert (=> b!688518 (= e!392118 true)))

(declare-fun lt!315825 () Bool)

(assert (=> b!688518 (= lt!315825 e!392117)))

(declare-fun res!453349 () Bool)

(assert (=> b!688518 (=> res!453349 e!392117)))

(declare-fun e!392119 () Bool)

(assert (=> b!688518 (= res!453349 e!392119)))

(declare-fun res!453351 () Bool)

(assert (=> b!688518 (=> (not res!453351) (not e!392119))))

(assert (=> b!688518 (= res!453351 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688519 () Bool)

(declare-fun res!453337 () Bool)

(assert (=> b!688519 (=> res!453337 e!392118)))

(assert (=> b!688519 (= res!453337 (contains!3645 lt!315820 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688520 () Bool)

(assert (=> b!688520 (= e!392116 (contains!3645 acc!681 k!2843))))

(declare-fun b!688521 () Bool)

(declare-fun res!453333 () Bool)

(assert (=> b!688521 (=> (not res!453333) (not e!392112))))

(assert (=> b!688521 (= res!453333 (not (contains!3645 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688522 () Bool)

(assert (=> b!688522 (= e!392119 (contains!3645 lt!315820 k!2843))))

(declare-fun b!688523 () Bool)

(declare-fun res!453340 () Bool)

(assert (=> b!688523 (=> (not res!453340) (not e!392112))))

(assert (=> b!688523 (= res!453340 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19389 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!61584 res!453345) b!688517))

(assert (= (and b!688517 res!453342) b!688521))

(assert (= (and b!688521 res!453333) b!688504))

(assert (= (and b!688504 res!453338) b!688512))

(assert (= (and b!688512 res!453350) b!688520))

(assert (= (and b!688512 (not res!453344)) b!688513))

(assert (= (and b!688513 res!453341) b!688506))

(assert (= (and b!688512 res!453339) b!688510))

(assert (= (and b!688510 res!453346) b!688501))

(assert (= (and b!688501 res!453353) b!688502))

(assert (= (and b!688502 res!453336) b!688516))

(assert (= (and b!688516 res!453352) b!688511))

(assert (= (and b!688511 res!453347) b!688523))

(assert (= (and b!688523 res!453340) b!688507))

(assert (= (and b!688507 c!77950) b!688500))

(assert (= (and b!688507 (not c!77950)) b!688515))

(assert (= (and b!688507 c!77951) b!688503))

(assert (= (and b!688507 (not c!77951)) b!688499))

(assert (= (and b!688507 (not res!453334)) b!688514))

(assert (= (and b!688514 (not res!453348)) b!688505))

(assert (= (and b!688505 (not res!453343)) b!688519))

(assert (= (and b!688519 (not res!453337)) b!688518))

(assert (= (and b!688518 res!453351) b!688522))

(assert (= (and b!688518 (not res!453349)) b!688509))

(assert (= (and b!688509 res!453335) b!688508))

(declare-fun m!652401 () Bool)

(assert (=> b!688519 m!652401))

(declare-fun m!652403 () Bool)

(assert (=> b!688504 m!652403))

(declare-fun m!652405 () Bool)

(assert (=> start!61584 m!652405))

(declare-fun m!652407 () Bool)

(assert (=> b!688505 m!652407))

(declare-fun m!652409 () Bool)

(assert (=> b!688506 m!652409))

(declare-fun m!652411 () Bool)

(assert (=> b!688501 m!652411))

(declare-fun m!652413 () Bool)

(assert (=> b!688508 m!652413))

(assert (=> b!688520 m!652409))

(declare-fun m!652415 () Bool)

(assert (=> b!688517 m!652415))

(declare-fun m!652417 () Bool)

(assert (=> b!688500 m!652417))

(assert (=> b!688522 m!652413))

(declare-fun m!652419 () Bool)

(assert (=> b!688521 m!652419))

(declare-fun m!652421 () Bool)

(assert (=> b!688511 m!652421))

(declare-fun m!652423 () Bool)

(assert (=> b!688510 m!652423))

(declare-fun m!652425 () Bool)

(assert (=> b!688503 m!652425))

(declare-fun m!652427 () Bool)

(assert (=> b!688503 m!652427))

(declare-fun m!652429 () Bool)

(assert (=> b!688503 m!652429))

(declare-fun m!652431 () Bool)

(assert (=> b!688503 m!652431))

(assert (=> b!688503 m!652427))

(assert (=> b!688503 m!652429))

(declare-fun m!652433 () Bool)

(assert (=> b!688503 m!652433))

(declare-fun m!652435 () Bool)

(assert (=> b!688503 m!652435))

(assert (=> b!688507 m!652425))

(assert (=> b!688507 m!652427))

(declare-fun m!652437 () Bool)

(assert (=> b!688507 m!652437))

(declare-fun m!652439 () Bool)

(assert (=> b!688507 m!652439))

(declare-fun m!652441 () Bool)

(assert (=> b!688507 m!652441))

(assert (=> b!688507 m!652433))

(declare-fun m!652443 () Bool)

(assert (=> b!688507 m!652443))

(declare-fun m!652445 () Bool)

(assert (=> b!688507 m!652445))

(assert (=> b!688507 m!652427))

(declare-fun m!652447 () Bool)

(assert (=> b!688507 m!652447))

(declare-fun m!652449 () Bool)

(assert (=> b!688507 m!652449))

(declare-fun m!652451 () Bool)

(assert (=> b!688507 m!652451))

(declare-fun m!652453 () Bool)

(assert (=> b!688507 m!652453))

(assert (=> b!688507 m!652435))

(declare-fun m!652455 () Bool)

(assert (=> b!688514 m!652455))

(declare-fun m!652457 () Bool)

(assert (=> b!688516 m!652457))

(push 1)

(assert (not b!688508))

(assert (not b!688521))

(assert (not start!61584))

(assert (not b!688516))

(assert (not b!688511))

(assert (not b!688522))

(assert (not b!688519))

(assert (not b!688504))

(assert (not b!688500))

(assert (not b!688503))

(assert (not b!688506))

(assert (not b!688510))

(assert (not b!688501))

(assert (not b!688507))

(assert (not b!688520))

(assert (not b!688514))

(assert (not b!688517))

(assert (not b!688505))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

