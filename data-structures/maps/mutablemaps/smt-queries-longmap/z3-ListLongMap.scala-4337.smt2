; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60068 () Bool)

(assert start!60068)

(declare-fun b!668309 () Bool)

(declare-fun e!382384 () Bool)

(declare-datatypes ((List!12818 0))(
  ( (Nil!12815) (Cons!12814 (h!13859 (_ BitVec 64)) (t!19054 List!12818)) )
))
(declare-fun lt!311195 () List!12818)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3361 (List!12818 (_ BitVec 64)) Bool)

(assert (=> b!668309 (= e!382384 (contains!3361 lt!311195 k0!2843))))

(declare-fun b!668310 () Bool)

(declare-fun res!435520 () Bool)

(declare-fun e!382377 () Bool)

(assert (=> b!668310 (=> (not res!435520) (not e!382377))))

(declare-fun e!382383 () Bool)

(assert (=> b!668310 (= res!435520 e!382383)))

(declare-fun res!435523 () Bool)

(assert (=> b!668310 (=> res!435523 e!382383)))

(declare-fun e!382378 () Bool)

(assert (=> b!668310 (= res!435523 e!382378)))

(declare-fun res!435538 () Bool)

(assert (=> b!668310 (=> (not res!435538) (not e!382378))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!668310 (= res!435538 (bvsgt from!3004 i!1382))))

(declare-fun b!668311 () Bool)

(declare-fun res!435531 () Bool)

(assert (=> b!668311 (=> (not res!435531) (not e!382377))))

(declare-fun acc!681 () List!12818)

(declare-fun noDuplicate!608 (List!12818) Bool)

(assert (=> b!668311 (= res!435531 (noDuplicate!608 acc!681))))

(declare-fun b!668312 () Bool)

(declare-fun res!435534 () Bool)

(assert (=> b!668312 (=> (not res!435534) (not e!382377))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668312 (= res!435534 (validKeyInArray!0 k0!2843))))

(declare-fun b!668313 () Bool)

(declare-fun res!435525 () Bool)

(assert (=> b!668313 (=> (not res!435525) (not e!382377))))

(declare-datatypes ((array!39071 0))(
  ( (array!39072 (arr!18724 (Array (_ BitVec 32) (_ BitVec 64))) (size!19088 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39071)

(assert (=> b!668313 (= res!435525 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19088 a!3626))))))

(declare-fun b!668314 () Bool)

(declare-fun res!435537 () Bool)

(assert (=> b!668314 (=> (not res!435537) (not e!382377))))

(declare-fun arrayNoDuplicates!0 (array!39071 (_ BitVec 32) List!12818) Bool)

(assert (=> b!668314 (= res!435537 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!668315 () Bool)

(declare-fun res!435519 () Bool)

(assert (=> b!668315 (=> (not res!435519) (not e!382377))))

(assert (=> b!668315 (= res!435519 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12815))))

(declare-fun b!668316 () Bool)

(assert (=> b!668316 (= e!382378 (contains!3361 acc!681 k0!2843))))

(declare-fun b!668317 () Bool)

(declare-fun e!382387 () Bool)

(assert (=> b!668317 (= e!382383 e!382387)))

(declare-fun res!435529 () Bool)

(assert (=> b!668317 (=> (not res!435529) (not e!382387))))

(assert (=> b!668317 (= res!435529 (bvsle from!3004 i!1382))))

(declare-fun b!668319 () Bool)

(declare-fun res!435528 () Bool)

(declare-fun e!382380 () Bool)

(assert (=> b!668319 (=> res!435528 e!382380)))

(assert (=> b!668319 (= res!435528 (contains!3361 lt!311195 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668320 () Bool)

(declare-datatypes ((Unit!23415 0))(
  ( (Unit!23416) )
))
(declare-fun e!382382 () Unit!23415)

(declare-fun Unit!23417 () Unit!23415)

(assert (=> b!668320 (= e!382382 Unit!23417)))

(declare-fun lt!311196 () Unit!23415)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39071 (_ BitVec 64) (_ BitVec 32)) Unit!23415)

(assert (=> b!668320 (= lt!311196 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!668320 false))

(declare-fun b!668321 () Bool)

(declare-fun res!435535 () Bool)

(assert (=> b!668321 (=> (not res!435535) (not e!382377))))

(assert (=> b!668321 (= res!435535 (not (contains!3361 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668322 () Bool)

(assert (=> b!668322 (= e!382387 (not (contains!3361 acc!681 k0!2843)))))

(declare-fun b!668323 () Bool)

(declare-fun res!435532 () Bool)

(assert (=> b!668323 (=> (not res!435532) (not e!382377))))

(assert (=> b!668323 (= res!435532 (not (contains!3361 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668324 () Bool)

(declare-fun e!382381 () Unit!23415)

(declare-fun Unit!23418 () Unit!23415)

(assert (=> b!668324 (= e!382381 Unit!23418)))

(declare-fun b!668325 () Bool)

(declare-fun res!435530 () Bool)

(assert (=> b!668325 (=> res!435530 e!382380)))

(assert (=> b!668325 (= res!435530 (contains!3361 lt!311195 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668326 () Bool)

(declare-fun e!382385 () Bool)

(declare-fun e!382386 () Bool)

(assert (=> b!668326 (= e!382385 e!382386)))

(declare-fun res!435539 () Bool)

(assert (=> b!668326 (=> (not res!435539) (not e!382386))))

(assert (=> b!668326 (= res!435539 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668327 () Bool)

(declare-fun res!435536 () Bool)

(assert (=> b!668327 (=> (not res!435536) (not e!382377))))

(assert (=> b!668327 (= res!435536 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19088 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!668328 () Bool)

(declare-fun lt!311199 () Unit!23415)

(assert (=> b!668328 (= e!382381 lt!311199)))

(declare-fun lt!311200 () Unit!23415)

(declare-fun lemmaListSubSeqRefl!0 (List!12818) Unit!23415)

(assert (=> b!668328 (= lt!311200 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!99 (List!12818 List!12818) Bool)

(assert (=> b!668328 (subseq!99 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39071 List!12818 List!12818 (_ BitVec 32)) Unit!23415)

(declare-fun $colon$colon!230 (List!12818 (_ BitVec 64)) List!12818)

(assert (=> b!668328 (= lt!311199 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!230 acc!681 (select (arr!18724 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668328 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668329 () Bool)

(assert (=> b!668329 (= e!382377 (not e!382380))))

(declare-fun res!435527 () Bool)

(assert (=> b!668329 (=> res!435527 e!382380)))

(assert (=> b!668329 (= res!435527 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!668329 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311195)))

(declare-fun lt!311198 () Unit!23415)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39071 (_ BitVec 64) (_ BitVec 32) List!12818 List!12818) Unit!23415)

(assert (=> b!668329 (= lt!311198 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311195))))

(declare-fun -!97 (List!12818 (_ BitVec 64)) List!12818)

(assert (=> b!668329 (= (-!97 lt!311195 k0!2843) acc!681)))

(assert (=> b!668329 (= lt!311195 ($colon$colon!230 acc!681 k0!2843))))

(declare-fun lt!311201 () Unit!23415)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12818) Unit!23415)

(assert (=> b!668329 (= lt!311201 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!668329 (subseq!99 acc!681 acc!681)))

(declare-fun lt!311202 () Unit!23415)

(assert (=> b!668329 (= lt!311202 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668329 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311194 () Unit!23415)

(assert (=> b!668329 (= lt!311194 e!382381)))

(declare-fun c!76762 () Bool)

(assert (=> b!668329 (= c!76762 (validKeyInArray!0 (select (arr!18724 a!3626) from!3004)))))

(declare-fun lt!311197 () Unit!23415)

(assert (=> b!668329 (= lt!311197 e!382382)))

(declare-fun c!76763 () Bool)

(declare-fun arrayContainsKey!0 (array!39071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668329 (= c!76763 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668329 (arrayContainsKey!0 (array!39072 (store (arr!18724 a!3626) i!1382 k0!2843) (size!19088 a!3626)) k0!2843 from!3004)))

(declare-fun b!668330 () Bool)

(declare-fun Unit!23419 () Unit!23415)

(assert (=> b!668330 (= e!382382 Unit!23419)))

(declare-fun b!668331 () Bool)

(declare-fun res!435521 () Bool)

(assert (=> b!668331 (=> (not res!435521) (not e!382377))))

(assert (=> b!668331 (= res!435521 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!668332 () Bool)

(assert (=> b!668332 (= e!382386 (not (contains!3361 lt!311195 k0!2843)))))

(declare-fun b!668333 () Bool)

(declare-fun res!435526 () Bool)

(assert (=> b!668333 (=> res!435526 e!382380)))

(assert (=> b!668333 (= res!435526 (not (noDuplicate!608 lt!311195)))))

(declare-fun b!668318 () Bool)

(assert (=> b!668318 (= e!382380 true)))

(declare-fun lt!311193 () Bool)

(assert (=> b!668318 (= lt!311193 e!382385)))

(declare-fun res!435522 () Bool)

(assert (=> b!668318 (=> res!435522 e!382385)))

(assert (=> b!668318 (= res!435522 e!382384)))

(declare-fun res!435524 () Bool)

(assert (=> b!668318 (=> (not res!435524) (not e!382384))))

(assert (=> b!668318 (= res!435524 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!435533 () Bool)

(assert (=> start!60068 (=> (not res!435533) (not e!382377))))

(assert (=> start!60068 (= res!435533 (and (bvslt (size!19088 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19088 a!3626))))))

(assert (=> start!60068 e!382377))

(assert (=> start!60068 true))

(declare-fun array_inv!14498 (array!39071) Bool)

(assert (=> start!60068 (array_inv!14498 a!3626)))

(assert (= (and start!60068 res!435533) b!668311))

(assert (= (and b!668311 res!435531) b!668321))

(assert (= (and b!668321 res!435535) b!668323))

(assert (= (and b!668323 res!435532) b!668310))

(assert (= (and b!668310 res!435538) b!668316))

(assert (= (and b!668310 (not res!435523)) b!668317))

(assert (= (and b!668317 res!435529) b!668322))

(assert (= (and b!668310 res!435520) b!668315))

(assert (= (and b!668315 res!435519) b!668314))

(assert (= (and b!668314 res!435537) b!668313))

(assert (= (and b!668313 res!435525) b!668312))

(assert (= (and b!668312 res!435534) b!668331))

(assert (= (and b!668331 res!435521) b!668327))

(assert (= (and b!668327 res!435536) b!668329))

(assert (= (and b!668329 c!76763) b!668320))

(assert (= (and b!668329 (not c!76763)) b!668330))

(assert (= (and b!668329 c!76762) b!668328))

(assert (= (and b!668329 (not c!76762)) b!668324))

(assert (= (and b!668329 (not res!435527)) b!668333))

(assert (= (and b!668333 (not res!435526)) b!668325))

(assert (= (and b!668325 (not res!435530)) b!668319))

(assert (= (and b!668319 (not res!435528)) b!668318))

(assert (= (and b!668318 res!435524) b!668309))

(assert (= (and b!668318 (not res!435522)) b!668326))

(assert (= (and b!668326 res!435539) b!668332))

(declare-fun m!638683 () Bool)

(assert (=> b!668309 m!638683))

(declare-fun m!638685 () Bool)

(assert (=> b!668319 m!638685))

(declare-fun m!638687 () Bool)

(assert (=> b!668333 m!638687))

(declare-fun m!638689 () Bool)

(assert (=> b!668315 m!638689))

(declare-fun m!638691 () Bool)

(assert (=> b!668312 m!638691))

(declare-fun m!638693 () Bool)

(assert (=> b!668320 m!638693))

(declare-fun m!638695 () Bool)

(assert (=> b!668311 m!638695))

(declare-fun m!638697 () Bool)

(assert (=> b!668314 m!638697))

(declare-fun m!638699 () Bool)

(assert (=> b!668329 m!638699))

(declare-fun m!638701 () Bool)

(assert (=> b!668329 m!638701))

(declare-fun m!638703 () Bool)

(assert (=> b!668329 m!638703))

(declare-fun m!638705 () Bool)

(assert (=> b!668329 m!638705))

(declare-fun m!638707 () Bool)

(assert (=> b!668329 m!638707))

(declare-fun m!638709 () Bool)

(assert (=> b!668329 m!638709))

(declare-fun m!638711 () Bool)

(assert (=> b!668329 m!638711))

(declare-fun m!638713 () Bool)

(assert (=> b!668329 m!638713))

(declare-fun m!638715 () Bool)

(assert (=> b!668329 m!638715))

(declare-fun m!638717 () Bool)

(assert (=> b!668329 m!638717))

(assert (=> b!668329 m!638703))

(declare-fun m!638719 () Bool)

(assert (=> b!668329 m!638719))

(declare-fun m!638721 () Bool)

(assert (=> b!668329 m!638721))

(declare-fun m!638723 () Bool)

(assert (=> b!668329 m!638723))

(declare-fun m!638725 () Bool)

(assert (=> b!668321 m!638725))

(declare-fun m!638727 () Bool)

(assert (=> b!668331 m!638727))

(declare-fun m!638729 () Bool)

(assert (=> b!668322 m!638729))

(declare-fun m!638731 () Bool)

(assert (=> b!668325 m!638731))

(assert (=> b!668316 m!638729))

(assert (=> b!668332 m!638683))

(assert (=> b!668328 m!638699))

(assert (=> b!668328 m!638703))

(declare-fun m!638733 () Bool)

(assert (=> b!668328 m!638733))

(declare-fun m!638735 () Bool)

(assert (=> b!668328 m!638735))

(assert (=> b!668328 m!638703))

(assert (=> b!668328 m!638733))

(assert (=> b!668328 m!638713))

(assert (=> b!668328 m!638723))

(declare-fun m!638737 () Bool)

(assert (=> start!60068 m!638737))

(declare-fun m!638739 () Bool)

(assert (=> b!668323 m!638739))

(check-sat (not b!668314) (not b!668323) (not b!668333) (not b!668332) (not b!668321) (not b!668312) (not b!668311) (not b!668320) (not b!668325) (not b!668319) (not b!668316) (not b!668322) (not b!668328) (not b!668315) (not b!668309) (not b!668329) (not start!60068) (not b!668331))
