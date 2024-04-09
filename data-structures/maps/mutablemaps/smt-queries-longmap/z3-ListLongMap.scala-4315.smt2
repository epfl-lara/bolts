; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59936 () Bool)

(assert start!59936)

(declare-fun b!663513 () Bool)

(declare-fun res!431524 () Bool)

(declare-fun e!380667 () Bool)

(assert (=> b!663513 (=> (not res!431524) (not e!380667))))

(declare-fun e!380666 () Bool)

(assert (=> b!663513 (= res!431524 e!380666)))

(declare-fun res!431521 () Bool)

(assert (=> b!663513 (=> res!431521 e!380666)))

(declare-fun e!380669 () Bool)

(assert (=> b!663513 (= res!431521 e!380669)))

(declare-fun res!431519 () Bool)

(assert (=> b!663513 (=> (not res!431519) (not e!380669))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663513 (= res!431519 (bvsgt from!3004 i!1382))))

(declare-fun b!663514 () Bool)

(declare-fun res!431515 () Bool)

(assert (=> b!663514 (=> (not res!431515) (not e!380667))))

(declare-datatypes ((array!38939 0))(
  ( (array!38940 (arr!18658 (Array (_ BitVec 32) (_ BitVec 64))) (size!19022 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38939)

(declare-datatypes ((List!12752 0))(
  ( (Nil!12749) (Cons!12748 (h!13793 (_ BitVec 64)) (t!18988 List!12752)) )
))
(declare-fun acc!681 () List!12752)

(declare-fun arrayNoDuplicates!0 (array!38939 (_ BitVec 32) List!12752) Bool)

(assert (=> b!663514 (= res!431515 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663515 () Bool)

(declare-fun res!431518 () Bool)

(assert (=> b!663515 (=> (not res!431518) (not e!380667))))

(assert (=> b!663515 (= res!431518 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19022 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663516 () Bool)

(declare-fun res!431526 () Bool)

(assert (=> b!663516 (=> (not res!431526) (not e!380667))))

(declare-fun contains!3295 (List!12752 (_ BitVec 64)) Bool)

(assert (=> b!663516 (= res!431526 (not (contains!3295 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663517 () Bool)

(declare-datatypes ((Unit!23085 0))(
  ( (Unit!23086) )
))
(declare-fun e!380671 () Unit!23085)

(declare-fun Unit!23087 () Unit!23085)

(assert (=> b!663517 (= e!380671 Unit!23087)))

(declare-fun b!663518 () Bool)

(declare-fun res!431527 () Bool)

(assert (=> b!663518 (=> (not res!431527) (not e!380667))))

(assert (=> b!663518 (= res!431527 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19022 a!3626))))))

(declare-fun b!663519 () Bool)

(declare-fun e!380668 () Unit!23085)

(declare-fun Unit!23088 () Unit!23085)

(assert (=> b!663519 (= e!380668 Unit!23088)))

(declare-fun res!431525 () Bool)

(assert (=> start!59936 (=> (not res!431525) (not e!380667))))

(assert (=> start!59936 (= res!431525 (and (bvslt (size!19022 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19022 a!3626))))))

(assert (=> start!59936 e!380667))

(assert (=> start!59936 true))

(declare-fun array_inv!14432 (array!38939) Bool)

(assert (=> start!59936 (array_inv!14432 a!3626)))

(declare-fun b!663520 () Bool)

(declare-fun e!380665 () Bool)

(assert (=> b!663520 (= e!380666 e!380665)))

(declare-fun res!431517 () Bool)

(assert (=> b!663520 (=> (not res!431517) (not e!380665))))

(assert (=> b!663520 (= res!431517 (bvsle from!3004 i!1382))))

(declare-fun b!663521 () Bool)

(assert (=> b!663521 (= e!380667 (not true))))

(declare-fun lt!309306 () Unit!23085)

(assert (=> b!663521 (= lt!309306 e!380668)))

(declare-fun c!76367 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663521 (= c!76367 (validKeyInArray!0 (select (arr!18658 a!3626) from!3004)))))

(declare-fun lt!309307 () Unit!23085)

(assert (=> b!663521 (= lt!309307 e!380671)))

(declare-fun c!76366 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663521 (= c!76366 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663521 (arrayContainsKey!0 (array!38940 (store (arr!18658 a!3626) i!1382 k0!2843) (size!19022 a!3626)) k0!2843 from!3004)))

(declare-fun b!663522 () Bool)

(declare-fun res!431516 () Bool)

(assert (=> b!663522 (=> (not res!431516) (not e!380667))))

(assert (=> b!663522 (= res!431516 (not (contains!3295 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663523 () Bool)

(assert (=> b!663523 (= e!380669 (contains!3295 acc!681 k0!2843))))

(declare-fun b!663524 () Bool)

(declare-fun Unit!23089 () Unit!23085)

(assert (=> b!663524 (= e!380671 Unit!23089)))

(declare-fun lt!309308 () Unit!23085)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38939 (_ BitVec 64) (_ BitVec 32)) Unit!23085)

(assert (=> b!663524 (= lt!309308 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!663524 false))

(declare-fun b!663525 () Bool)

(declare-fun res!431522 () Bool)

(assert (=> b!663525 (=> (not res!431522) (not e!380667))))

(assert (=> b!663525 (= res!431522 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663526 () Bool)

(declare-fun res!431523 () Bool)

(assert (=> b!663526 (=> (not res!431523) (not e!380667))))

(assert (=> b!663526 (= res!431523 (validKeyInArray!0 k0!2843))))

(declare-fun b!663527 () Bool)

(assert (=> b!663527 (= e!380665 (not (contains!3295 acc!681 k0!2843)))))

(declare-fun b!663528 () Bool)

(declare-fun lt!309305 () Unit!23085)

(assert (=> b!663528 (= e!380668 lt!309305)))

(declare-fun lt!309309 () Unit!23085)

(declare-fun lemmaListSubSeqRefl!0 (List!12752) Unit!23085)

(assert (=> b!663528 (= lt!309309 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!33 (List!12752 List!12752) Bool)

(assert (=> b!663528 (subseq!33 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38939 List!12752 List!12752 (_ BitVec 32)) Unit!23085)

(declare-fun $colon$colon!164 (List!12752 (_ BitVec 64)) List!12752)

(assert (=> b!663528 (= lt!309305 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!164 acc!681 (select (arr!18658 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663528 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663529 () Bool)

(declare-fun res!431528 () Bool)

(assert (=> b!663529 (=> (not res!431528) (not e!380667))))

(declare-fun noDuplicate!542 (List!12752) Bool)

(assert (=> b!663529 (= res!431528 (noDuplicate!542 acc!681))))

(declare-fun b!663530 () Bool)

(declare-fun res!431520 () Bool)

(assert (=> b!663530 (=> (not res!431520) (not e!380667))))

(assert (=> b!663530 (= res!431520 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12749))))

(assert (= (and start!59936 res!431525) b!663529))

(assert (= (and b!663529 res!431528) b!663522))

(assert (= (and b!663522 res!431516) b!663516))

(assert (= (and b!663516 res!431526) b!663513))

(assert (= (and b!663513 res!431519) b!663523))

(assert (= (and b!663513 (not res!431521)) b!663520))

(assert (= (and b!663520 res!431517) b!663527))

(assert (= (and b!663513 res!431524) b!663530))

(assert (= (and b!663530 res!431520) b!663514))

(assert (= (and b!663514 res!431515) b!663518))

(assert (= (and b!663518 res!431527) b!663526))

(assert (= (and b!663526 res!431523) b!663525))

(assert (= (and b!663525 res!431522) b!663515))

(assert (= (and b!663515 res!431518) b!663521))

(assert (= (and b!663521 c!76366) b!663524))

(assert (= (and b!663521 (not c!76366)) b!663517))

(assert (= (and b!663521 c!76367) b!663528))

(assert (= (and b!663521 (not c!76367)) b!663519))

(declare-fun m!635083 () Bool)

(assert (=> b!663526 m!635083))

(declare-fun m!635085 () Bool)

(assert (=> b!663523 m!635085))

(declare-fun m!635087 () Bool)

(assert (=> b!663524 m!635087))

(declare-fun m!635089 () Bool)

(assert (=> b!663522 m!635089))

(declare-fun m!635091 () Bool)

(assert (=> b!663525 m!635091))

(declare-fun m!635093 () Bool)

(assert (=> b!663514 m!635093))

(declare-fun m!635095 () Bool)

(assert (=> b!663528 m!635095))

(declare-fun m!635097 () Bool)

(assert (=> b!663528 m!635097))

(declare-fun m!635099 () Bool)

(assert (=> b!663528 m!635099))

(declare-fun m!635101 () Bool)

(assert (=> b!663528 m!635101))

(assert (=> b!663528 m!635097))

(assert (=> b!663528 m!635099))

(declare-fun m!635103 () Bool)

(assert (=> b!663528 m!635103))

(declare-fun m!635105 () Bool)

(assert (=> b!663528 m!635105))

(declare-fun m!635107 () Bool)

(assert (=> b!663516 m!635107))

(declare-fun m!635109 () Bool)

(assert (=> b!663529 m!635109))

(assert (=> b!663527 m!635085))

(assert (=> b!663521 m!635097))

(declare-fun m!635111 () Bool)

(assert (=> b!663521 m!635111))

(declare-fun m!635113 () Bool)

(assert (=> b!663521 m!635113))

(assert (=> b!663521 m!635097))

(declare-fun m!635115 () Bool)

(assert (=> b!663521 m!635115))

(declare-fun m!635117 () Bool)

(assert (=> b!663521 m!635117))

(declare-fun m!635119 () Bool)

(assert (=> start!59936 m!635119))

(declare-fun m!635121 () Bool)

(assert (=> b!663530 m!635121))

(check-sat (not b!663523) (not b!663527) (not b!663522) (not b!663526) (not b!663528) (not b!663514) (not b!663530) (not b!663516) (not b!663524) (not start!59936) (not b!663521) (not b!663529) (not b!663525))
(check-sat)
