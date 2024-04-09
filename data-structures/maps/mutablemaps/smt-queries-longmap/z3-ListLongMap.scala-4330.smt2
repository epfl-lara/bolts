; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60026 () Bool)

(assert start!60026)

(declare-fun b!666734 () Bool)

(declare-datatypes ((Unit!23310 0))(
  ( (Unit!23311) )
))
(declare-fun e!381724 () Unit!23310)

(declare-fun Unit!23312 () Unit!23310)

(assert (=> b!666734 (= e!381724 Unit!23312)))

(declare-fun b!666735 () Bool)

(declare-fun res!434198 () Bool)

(declare-fun e!381728 () Bool)

(assert (=> b!666735 (=> (not res!434198) (not e!381728))))

(declare-datatypes ((array!39029 0))(
  ( (array!39030 (arr!18703 (Array (_ BitVec 32) (_ BitVec 64))) (size!19067 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39029)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39029 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!666735 (= res!434198 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!666736 () Bool)

(declare-fun e!381727 () Bool)

(assert (=> b!666736 (= e!381727 true)))

(declare-fun lt!310571 () Bool)

(declare-datatypes ((List!12797 0))(
  ( (Nil!12794) (Cons!12793 (h!13838 (_ BitVec 64)) (t!19033 List!12797)) )
))
(declare-fun lt!310567 () List!12797)

(declare-fun contains!3340 (List!12797 (_ BitVec 64)) Bool)

(assert (=> b!666736 (= lt!310571 (contains!3340 lt!310567 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666737 () Bool)

(declare-fun lt!310565 () Unit!23310)

(assert (=> b!666737 (= e!381724 lt!310565)))

(declare-fun lt!310572 () Unit!23310)

(declare-fun acc!681 () List!12797)

(declare-fun lemmaListSubSeqRefl!0 (List!12797) Unit!23310)

(assert (=> b!666737 (= lt!310572 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!78 (List!12797 List!12797) Bool)

(assert (=> b!666737 (subseq!78 acc!681 acc!681)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39029 List!12797 List!12797 (_ BitVec 32)) Unit!23310)

(declare-fun $colon$colon!209 (List!12797 (_ BitVec 64)) List!12797)

(assert (=> b!666737 (= lt!310565 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!209 acc!681 (select (arr!18703 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39029 (_ BitVec 32) List!12797) Bool)

(assert (=> b!666737 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666738 () Bool)

(declare-fun res!434196 () Bool)

(assert (=> b!666738 (=> res!434196 e!381727)))

(declare-fun lt!310568 () Bool)

(assert (=> b!666738 (= res!434196 lt!310568)))

(declare-fun b!666740 () Bool)

(assert (=> b!666740 (= e!381728 (not e!381727))))

(declare-fun res!434201 () Bool)

(assert (=> b!666740 (=> res!434201 e!381727)))

(assert (=> b!666740 (= res!434201 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!76 (List!12797 (_ BitVec 64)) List!12797)

(assert (=> b!666740 (= (-!76 lt!310567 k0!2843) acc!681)))

(assert (=> b!666740 (= lt!310567 ($colon$colon!209 acc!681 k0!2843))))

(declare-fun lt!310570 () Unit!23310)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12797) Unit!23310)

(assert (=> b!666740 (= lt!310570 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!666740 (subseq!78 acc!681 acc!681)))

(declare-fun lt!310566 () Unit!23310)

(assert (=> b!666740 (= lt!310566 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666740 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310563 () Unit!23310)

(assert (=> b!666740 (= lt!310563 e!381724)))

(declare-fun c!76636 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!666740 (= c!76636 (validKeyInArray!0 (select (arr!18703 a!3626) from!3004)))))

(declare-fun lt!310564 () Unit!23310)

(declare-fun e!381726 () Unit!23310)

(assert (=> b!666740 (= lt!310564 e!381726)))

(declare-fun c!76637 () Bool)

(assert (=> b!666740 (= c!76637 lt!310568)))

(assert (=> b!666740 (= lt!310568 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!666740 (arrayContainsKey!0 (array!39030 (store (arr!18703 a!3626) i!1382 k0!2843) (size!19067 a!3626)) k0!2843 from!3004)))

(declare-fun b!666741 () Bool)

(declare-fun res!434207 () Bool)

(assert (=> b!666741 (=> (not res!434207) (not e!381728))))

(assert (=> b!666741 (= res!434207 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19067 a!3626))))))

(declare-fun b!666742 () Bool)

(declare-fun res!434202 () Bool)

(assert (=> b!666742 (=> (not res!434202) (not e!381728))))

(assert (=> b!666742 (= res!434202 (not (contains!3340 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666743 () Bool)

(declare-fun res!434211 () Bool)

(assert (=> b!666743 (=> (not res!434211) (not e!381728))))

(assert (=> b!666743 (= res!434211 (not (contains!3340 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666744 () Bool)

(declare-fun e!381723 () Bool)

(declare-fun e!381725 () Bool)

(assert (=> b!666744 (= e!381723 e!381725)))

(declare-fun res!434208 () Bool)

(assert (=> b!666744 (=> (not res!434208) (not e!381725))))

(assert (=> b!666744 (= res!434208 (bvsle from!3004 i!1382))))

(declare-fun b!666739 () Bool)

(declare-fun res!434214 () Bool)

(assert (=> b!666739 (=> (not res!434214) (not e!381728))))

(assert (=> b!666739 (= res!434214 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!434197 () Bool)

(assert (=> start!60026 (=> (not res!434197) (not e!381728))))

(assert (=> start!60026 (= res!434197 (and (bvslt (size!19067 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19067 a!3626))))))

(assert (=> start!60026 e!381728))

(assert (=> start!60026 true))

(declare-fun array_inv!14477 (array!39029) Bool)

(assert (=> start!60026 (array_inv!14477 a!3626)))

(declare-fun b!666745 () Bool)

(declare-fun res!434204 () Bool)

(assert (=> b!666745 (=> (not res!434204) (not e!381728))))

(assert (=> b!666745 (= res!434204 e!381723)))

(declare-fun res!434210 () Bool)

(assert (=> b!666745 (=> res!434210 e!381723)))

(declare-fun e!381730 () Bool)

(assert (=> b!666745 (= res!434210 e!381730)))

(declare-fun res!434205 () Bool)

(assert (=> b!666745 (=> (not res!434205) (not e!381730))))

(assert (=> b!666745 (= res!434205 (bvsgt from!3004 i!1382))))

(declare-fun b!666746 () Bool)

(assert (=> b!666746 (= e!381730 (contains!3340 acc!681 k0!2843))))

(declare-fun b!666747 () Bool)

(declare-fun res!434215 () Bool)

(assert (=> b!666747 (=> (not res!434215) (not e!381728))))

(assert (=> b!666747 (= res!434215 (validKeyInArray!0 k0!2843))))

(declare-fun b!666748 () Bool)

(declare-fun res!434199 () Bool)

(assert (=> b!666748 (=> (not res!434199) (not e!381728))))

(assert (=> b!666748 (= res!434199 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19067 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!666749 () Bool)

(declare-fun Unit!23313 () Unit!23310)

(assert (=> b!666749 (= e!381726 Unit!23313)))

(declare-fun lt!310569 () Unit!23310)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39029 (_ BitVec 64) (_ BitVec 32)) Unit!23310)

(assert (=> b!666749 (= lt!310569 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!666749 false))

(declare-fun b!666750 () Bool)

(assert (=> b!666750 (= e!381725 (not (contains!3340 acc!681 k0!2843)))))

(declare-fun b!666751 () Bool)

(declare-fun res!434209 () Bool)

(assert (=> b!666751 (=> res!434209 e!381727)))

(assert (=> b!666751 (= res!434209 (not (contains!3340 lt!310567 k0!2843)))))

(declare-fun b!666752 () Bool)

(declare-fun Unit!23314 () Unit!23310)

(assert (=> b!666752 (= e!381726 Unit!23314)))

(declare-fun b!666753 () Bool)

(declare-fun res!434213 () Bool)

(assert (=> b!666753 (=> (not res!434213) (not e!381728))))

(assert (=> b!666753 (= res!434213 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12794))))

(declare-fun b!666754 () Bool)

(declare-fun res!434216 () Bool)

(assert (=> b!666754 (=> res!434216 e!381727)))

(assert (=> b!666754 (= res!434216 (not (subseq!78 acc!681 lt!310567)))))

(declare-fun b!666755 () Bool)

(declare-fun res!434203 () Bool)

(assert (=> b!666755 (=> res!434203 e!381727)))

(assert (=> b!666755 (= res!434203 (contains!3340 acc!681 k0!2843))))

(declare-fun b!666756 () Bool)

(declare-fun res!434206 () Bool)

(assert (=> b!666756 (=> (not res!434206) (not e!381728))))

(declare-fun noDuplicate!587 (List!12797) Bool)

(assert (=> b!666756 (= res!434206 (noDuplicate!587 acc!681))))

(declare-fun b!666757 () Bool)

(declare-fun res!434200 () Bool)

(assert (=> b!666757 (=> res!434200 e!381727)))

(assert (=> b!666757 (= res!434200 (not (noDuplicate!587 lt!310567)))))

(declare-fun b!666758 () Bool)

(declare-fun res!434212 () Bool)

(assert (=> b!666758 (=> res!434212 e!381727)))

(assert (=> b!666758 (= res!434212 (contains!3340 lt!310567 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!60026 res!434197) b!666756))

(assert (= (and b!666756 res!434206) b!666743))

(assert (= (and b!666743 res!434211) b!666742))

(assert (= (and b!666742 res!434202) b!666745))

(assert (= (and b!666745 res!434205) b!666746))

(assert (= (and b!666745 (not res!434210)) b!666744))

(assert (= (and b!666744 res!434208) b!666750))

(assert (= (and b!666745 res!434204) b!666753))

(assert (= (and b!666753 res!434213) b!666739))

(assert (= (and b!666739 res!434214) b!666741))

(assert (= (and b!666741 res!434207) b!666747))

(assert (= (and b!666747 res!434215) b!666735))

(assert (= (and b!666735 res!434198) b!666748))

(assert (= (and b!666748 res!434199) b!666740))

(assert (= (and b!666740 c!76637) b!666749))

(assert (= (and b!666740 (not c!76637)) b!666752))

(assert (= (and b!666740 c!76636) b!666737))

(assert (= (and b!666740 (not c!76636)) b!666734))

(assert (= (and b!666740 (not res!434201)) b!666757))

(assert (= (and b!666757 (not res!434200)) b!666738))

(assert (= (and b!666738 (not res!434196)) b!666755))

(assert (= (and b!666755 (not res!434203)) b!666754))

(assert (= (and b!666754 (not res!434216)) b!666751))

(assert (= (and b!666751 (not res!434209)) b!666758))

(assert (= (and b!666758 (not res!434212)) b!666736))

(declare-fun m!637475 () Bool)

(assert (=> b!666746 m!637475))

(declare-fun m!637477 () Bool)

(assert (=> b!666737 m!637477))

(declare-fun m!637479 () Bool)

(assert (=> b!666737 m!637479))

(declare-fun m!637481 () Bool)

(assert (=> b!666737 m!637481))

(declare-fun m!637483 () Bool)

(assert (=> b!666737 m!637483))

(assert (=> b!666737 m!637479))

(assert (=> b!666737 m!637481))

(declare-fun m!637485 () Bool)

(assert (=> b!666737 m!637485))

(declare-fun m!637487 () Bool)

(assert (=> b!666737 m!637487))

(declare-fun m!637489 () Bool)

(assert (=> b!666739 m!637489))

(assert (=> b!666740 m!637477))

(assert (=> b!666740 m!637479))

(declare-fun m!637491 () Bool)

(assert (=> b!666740 m!637491))

(declare-fun m!637493 () Bool)

(assert (=> b!666740 m!637493))

(declare-fun m!637495 () Bool)

(assert (=> b!666740 m!637495))

(assert (=> b!666740 m!637485))

(declare-fun m!637497 () Bool)

(assert (=> b!666740 m!637497))

(declare-fun m!637499 () Bool)

(assert (=> b!666740 m!637499))

(assert (=> b!666740 m!637479))

(declare-fun m!637501 () Bool)

(assert (=> b!666740 m!637501))

(declare-fun m!637503 () Bool)

(assert (=> b!666740 m!637503))

(assert (=> b!666740 m!637487))

(declare-fun m!637505 () Bool)

(assert (=> b!666742 m!637505))

(declare-fun m!637507 () Bool)

(assert (=> b!666747 m!637507))

(assert (=> b!666750 m!637475))

(declare-fun m!637509 () Bool)

(assert (=> b!666736 m!637509))

(declare-fun m!637511 () Bool)

(assert (=> start!60026 m!637511))

(declare-fun m!637513 () Bool)

(assert (=> b!666754 m!637513))

(declare-fun m!637515 () Bool)

(assert (=> b!666757 m!637515))

(declare-fun m!637517 () Bool)

(assert (=> b!666758 m!637517))

(assert (=> b!666755 m!637475))

(declare-fun m!637519 () Bool)

(assert (=> b!666735 m!637519))

(declare-fun m!637521 () Bool)

(assert (=> b!666751 m!637521))

(declare-fun m!637523 () Bool)

(assert (=> b!666749 m!637523))

(declare-fun m!637525 () Bool)

(assert (=> b!666743 m!637525))

(declare-fun m!637527 () Bool)

(assert (=> b!666753 m!637527))

(declare-fun m!637529 () Bool)

(assert (=> b!666756 m!637529))

(check-sat (not b!666735) (not b!666743) (not b!666746) (not b!666742) (not b!666736) (not start!60026) (not b!666753) (not b!666739) (not b!666749) (not b!666754) (not b!666737) (not b!666747) (not b!666756) (not b!666758) (not b!666751) (not b!666750) (not b!666755) (not b!666757) (not b!666740))
(check-sat)
