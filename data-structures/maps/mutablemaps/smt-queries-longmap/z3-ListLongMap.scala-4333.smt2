; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60044 () Bool)

(assert start!60044)

(declare-fun b!667409 () Bool)

(declare-fun res!434775 () Bool)

(declare-fun e!381984 () Bool)

(assert (=> b!667409 (=> (not res!434775) (not e!381984))))

(declare-datatypes ((List!12806 0))(
  ( (Nil!12803) (Cons!12802 (h!13847 (_ BitVec 64)) (t!19042 List!12806)) )
))
(declare-fun acc!681 () List!12806)

(declare-fun noDuplicate!596 (List!12806) Bool)

(assert (=> b!667409 (= res!434775 (noDuplicate!596 acc!681))))

(declare-fun b!667410 () Bool)

(declare-fun res!434764 () Bool)

(assert (=> b!667410 (=> (not res!434764) (not e!381984))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!667410 (= res!434764 (validKeyInArray!0 k0!2843))))

(declare-fun b!667411 () Bool)

(declare-fun res!434768 () Bool)

(assert (=> b!667411 (=> (not res!434768) (not e!381984))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39047 0))(
  ( (array!39048 (arr!18712 (Array (_ BitVec 32) (_ BitVec 64))) (size!19076 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39047)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!667411 (= res!434768 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19076 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!667412 () Bool)

(declare-fun res!434771 () Bool)

(declare-fun e!381990 () Bool)

(assert (=> b!667412 (=> res!434771 e!381990)))

(declare-fun lt!310835 () List!12806)

(declare-fun contains!3349 (List!12806 (_ BitVec 64)) Bool)

(assert (=> b!667412 (= res!434771 (contains!3349 lt!310835 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667413 () Bool)

(declare-fun res!434776 () Bool)

(assert (=> b!667413 (=> (not res!434776) (not e!381984))))

(declare-fun e!381986 () Bool)

(assert (=> b!667413 (= res!434776 e!381986)))

(declare-fun res!434774 () Bool)

(assert (=> b!667413 (=> res!434774 e!381986)))

(declare-fun e!381985 () Bool)

(assert (=> b!667413 (= res!434774 e!381985)))

(declare-fun res!434766 () Bool)

(assert (=> b!667413 (=> (not res!434766) (not e!381985))))

(assert (=> b!667413 (= res!434766 (bvsgt from!3004 i!1382))))

(declare-fun b!667414 () Bool)

(declare-datatypes ((Unit!23355 0))(
  ( (Unit!23356) )
))
(declare-fun e!381983 () Unit!23355)

(declare-fun Unit!23357 () Unit!23355)

(assert (=> b!667414 (= e!381983 Unit!23357)))

(declare-fun b!667415 () Bool)

(assert (=> b!667415 (= e!381985 (contains!3349 acc!681 k0!2843))))

(declare-fun b!667416 () Bool)

(declare-fun res!434783 () Bool)

(assert (=> b!667416 (=> (not res!434783) (not e!381984))))

(declare-fun arrayNoDuplicates!0 (array!39047 (_ BitVec 32) List!12806) Bool)

(assert (=> b!667416 (= res!434783 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12803))))

(declare-fun b!667417 () Bool)

(declare-fun e!381981 () Bool)

(assert (=> b!667417 (= e!381981 (not (contains!3349 acc!681 k0!2843)))))

(declare-fun b!667418 () Bool)

(assert (=> b!667418 (= e!381990 true)))

(declare-fun lt!310833 () Bool)

(declare-fun e!381987 () Bool)

(assert (=> b!667418 (= lt!310833 e!381987)))

(declare-fun res!434770 () Bool)

(assert (=> b!667418 (=> res!434770 e!381987)))

(declare-fun e!381982 () Bool)

(assert (=> b!667418 (= res!434770 e!381982)))

(declare-fun res!434763 () Bool)

(assert (=> b!667418 (=> (not res!434763) (not e!381982))))

(assert (=> b!667418 (= res!434763 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667419 () Bool)

(declare-fun e!381989 () Bool)

(assert (=> b!667419 (= e!381987 e!381989)))

(declare-fun res!434779 () Bool)

(assert (=> b!667419 (=> (not res!434779) (not e!381989))))

(assert (=> b!667419 (= res!434779 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667420 () Bool)

(declare-fun res!434781 () Bool)

(assert (=> b!667420 (=> (not res!434781) (not e!381984))))

(declare-fun arrayContainsKey!0 (array!39047 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!667420 (= res!434781 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!667421 () Bool)

(declare-fun res!434772 () Bool)

(assert (=> b!667421 (=> (not res!434772) (not e!381984))))

(assert (=> b!667421 (= res!434772 (not (contains!3349 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667422 () Bool)

(assert (=> b!667422 (= e!381984 (not e!381990))))

(declare-fun res!434782 () Bool)

(assert (=> b!667422 (=> res!434782 e!381990)))

(assert (=> b!667422 (= res!434782 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!667422 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!310835)))

(declare-fun lt!310840 () Unit!23355)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39047 (_ BitVec 64) (_ BitVec 32) List!12806 List!12806) Unit!23355)

(assert (=> b!667422 (= lt!310840 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!310835))))

(declare-fun -!85 (List!12806 (_ BitVec 64)) List!12806)

(assert (=> b!667422 (= (-!85 lt!310835 k0!2843) acc!681)))

(declare-fun $colon$colon!218 (List!12806 (_ BitVec 64)) List!12806)

(assert (=> b!667422 (= lt!310835 ($colon$colon!218 acc!681 k0!2843))))

(declare-fun lt!310836 () Unit!23355)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12806) Unit!23355)

(assert (=> b!667422 (= lt!310836 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!87 (List!12806 List!12806) Bool)

(assert (=> b!667422 (subseq!87 acc!681 acc!681)))

(declare-fun lt!310842 () Unit!23355)

(declare-fun lemmaListSubSeqRefl!0 (List!12806) Unit!23355)

(assert (=> b!667422 (= lt!310842 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667422 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310839 () Unit!23355)

(declare-fun e!381991 () Unit!23355)

(assert (=> b!667422 (= lt!310839 e!381991)))

(declare-fun c!76691 () Bool)

(assert (=> b!667422 (= c!76691 (validKeyInArray!0 (select (arr!18712 a!3626) from!3004)))))

(declare-fun lt!310841 () Unit!23355)

(assert (=> b!667422 (= lt!310841 e!381983)))

(declare-fun c!76690 () Bool)

(assert (=> b!667422 (= c!76690 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667422 (arrayContainsKey!0 (array!39048 (store (arr!18712 a!3626) i!1382 k0!2843) (size!19076 a!3626)) k0!2843 from!3004)))

(declare-fun res!434773 () Bool)

(assert (=> start!60044 (=> (not res!434773) (not e!381984))))

(assert (=> start!60044 (= res!434773 (and (bvslt (size!19076 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19076 a!3626))))))

(assert (=> start!60044 e!381984))

(assert (=> start!60044 true))

(declare-fun array_inv!14486 (array!39047) Bool)

(assert (=> start!60044 (array_inv!14486 a!3626)))

(declare-fun b!667423 () Bool)

(assert (=> b!667423 (= e!381989 (not (contains!3349 lt!310835 k0!2843)))))

(declare-fun b!667424 () Bool)

(assert (=> b!667424 (= e!381986 e!381981)))

(declare-fun res!434778 () Bool)

(assert (=> b!667424 (=> (not res!434778) (not e!381981))))

(assert (=> b!667424 (= res!434778 (bvsle from!3004 i!1382))))

(declare-fun b!667425 () Bool)

(declare-fun res!434765 () Bool)

(assert (=> b!667425 (=> (not res!434765) (not e!381984))))

(assert (=> b!667425 (= res!434765 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19076 a!3626))))))

(declare-fun b!667426 () Bool)

(declare-fun lt!310837 () Unit!23355)

(assert (=> b!667426 (= e!381991 lt!310837)))

(declare-fun lt!310838 () Unit!23355)

(assert (=> b!667426 (= lt!310838 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667426 (subseq!87 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39047 List!12806 List!12806 (_ BitVec 32)) Unit!23355)

(assert (=> b!667426 (= lt!310837 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!218 acc!681 (select (arr!18712 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667426 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!667427 () Bool)

(declare-fun res!434769 () Bool)

(assert (=> b!667427 (=> (not res!434769) (not e!381984))))

(assert (=> b!667427 (= res!434769 (not (contains!3349 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667428 () Bool)

(declare-fun res!434767 () Bool)

(assert (=> b!667428 (=> res!434767 e!381990)))

(assert (=> b!667428 (= res!434767 (contains!3349 lt!310835 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667429 () Bool)

(assert (=> b!667429 (= e!381982 (contains!3349 lt!310835 k0!2843))))

(declare-fun b!667430 () Bool)

(declare-fun Unit!23358 () Unit!23355)

(assert (=> b!667430 (= e!381983 Unit!23358)))

(declare-fun lt!310834 () Unit!23355)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39047 (_ BitVec 64) (_ BitVec 32)) Unit!23355)

(assert (=> b!667430 (= lt!310834 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!667430 false))

(declare-fun b!667431 () Bool)

(declare-fun Unit!23359 () Unit!23355)

(assert (=> b!667431 (= e!381991 Unit!23359)))

(declare-fun b!667432 () Bool)

(declare-fun res!434777 () Bool)

(assert (=> b!667432 (=> (not res!434777) (not e!381984))))

(assert (=> b!667432 (= res!434777 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!667433 () Bool)

(declare-fun res!434780 () Bool)

(assert (=> b!667433 (=> res!434780 e!381990)))

(assert (=> b!667433 (= res!434780 (not (noDuplicate!596 lt!310835)))))

(assert (= (and start!60044 res!434773) b!667409))

(assert (= (and b!667409 res!434775) b!667421))

(assert (= (and b!667421 res!434772) b!667427))

(assert (= (and b!667427 res!434769) b!667413))

(assert (= (and b!667413 res!434766) b!667415))

(assert (= (and b!667413 (not res!434774)) b!667424))

(assert (= (and b!667424 res!434778) b!667417))

(assert (= (and b!667413 res!434776) b!667416))

(assert (= (and b!667416 res!434783) b!667432))

(assert (= (and b!667432 res!434777) b!667425))

(assert (= (and b!667425 res!434765) b!667410))

(assert (= (and b!667410 res!434764) b!667420))

(assert (= (and b!667420 res!434781) b!667411))

(assert (= (and b!667411 res!434768) b!667422))

(assert (= (and b!667422 c!76690) b!667430))

(assert (= (and b!667422 (not c!76690)) b!667414))

(assert (= (and b!667422 c!76691) b!667426))

(assert (= (and b!667422 (not c!76691)) b!667431))

(assert (= (and b!667422 (not res!434782)) b!667433))

(assert (= (and b!667433 (not res!434780)) b!667412))

(assert (= (and b!667412 (not res!434771)) b!667428))

(assert (= (and b!667428 (not res!434767)) b!667418))

(assert (= (and b!667418 res!434763) b!667429))

(assert (= (and b!667418 (not res!434770)) b!667419))

(assert (= (and b!667419 res!434779) b!667423))

(declare-fun m!637987 () Bool)

(assert (=> b!667422 m!637987))

(declare-fun m!637989 () Bool)

(assert (=> b!667422 m!637989))

(declare-fun m!637991 () Bool)

(assert (=> b!667422 m!637991))

(declare-fun m!637993 () Bool)

(assert (=> b!667422 m!637993))

(declare-fun m!637995 () Bool)

(assert (=> b!667422 m!637995))

(declare-fun m!637997 () Bool)

(assert (=> b!667422 m!637997))

(assert (=> b!667422 m!637987))

(declare-fun m!637999 () Bool)

(assert (=> b!667422 m!637999))

(declare-fun m!638001 () Bool)

(assert (=> b!667422 m!638001))

(declare-fun m!638003 () Bool)

(assert (=> b!667422 m!638003))

(declare-fun m!638005 () Bool)

(assert (=> b!667422 m!638005))

(declare-fun m!638007 () Bool)

(assert (=> b!667422 m!638007))

(declare-fun m!638009 () Bool)

(assert (=> b!667422 m!638009))

(declare-fun m!638011 () Bool)

(assert (=> b!667422 m!638011))

(declare-fun m!638013 () Bool)

(assert (=> b!667428 m!638013))

(declare-fun m!638015 () Bool)

(assert (=> b!667433 m!638015))

(declare-fun m!638017 () Bool)

(assert (=> b!667415 m!638017))

(declare-fun m!638019 () Bool)

(assert (=> b!667420 m!638019))

(declare-fun m!638021 () Bool)

(assert (=> b!667427 m!638021))

(declare-fun m!638023 () Bool)

(assert (=> b!667432 m!638023))

(declare-fun m!638025 () Bool)

(assert (=> b!667423 m!638025))

(declare-fun m!638027 () Bool)

(assert (=> b!667430 m!638027))

(declare-fun m!638029 () Bool)

(assert (=> start!60044 m!638029))

(declare-fun m!638031 () Bool)

(assert (=> b!667421 m!638031))

(declare-fun m!638033 () Bool)

(assert (=> b!667409 m!638033))

(declare-fun m!638035 () Bool)

(assert (=> b!667416 m!638035))

(declare-fun m!638037 () Bool)

(assert (=> b!667410 m!638037))

(declare-fun m!638039 () Bool)

(assert (=> b!667412 m!638039))

(assert (=> b!667429 m!638025))

(assert (=> b!667417 m!638017))

(assert (=> b!667426 m!638001))

(assert (=> b!667426 m!637987))

(declare-fun m!638041 () Bool)

(assert (=> b!667426 m!638041))

(declare-fun m!638043 () Bool)

(assert (=> b!667426 m!638043))

(assert (=> b!667426 m!637987))

(assert (=> b!667426 m!638041))

(assert (=> b!667426 m!638007))

(assert (=> b!667426 m!638011))

(check-sat (not b!667416) (not b!667433) (not b!667412) (not b!667409) (not b!667415) (not b!667430) (not b!667422) (not b!667427) (not b!667428) (not b!667421) (not b!667417) (not b!667432) (not b!667423) (not b!667429) (not b!667410) (not start!60044) (not b!667420) (not b!667426))
(check-sat)
