; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59918 () Bool)

(assert start!59918)

(declare-fun b!663011 () Bool)

(declare-fun res!431126 () Bool)

(declare-fun e!380477 () Bool)

(assert (=> b!663011 (=> (not res!431126) (not e!380477))))

(declare-datatypes ((List!12743 0))(
  ( (Nil!12740) (Cons!12739 (h!13784 (_ BitVec 64)) (t!18979 List!12743)) )
))
(declare-fun acc!681 () List!12743)

(declare-fun contains!3286 (List!12743 (_ BitVec 64)) Bool)

(assert (=> b!663011 (= res!431126 (not (contains!3286 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663012 () Bool)

(declare-fun res!431131 () Bool)

(declare-fun e!380476 () Bool)

(assert (=> b!663012 (=> res!431131 e!380476)))

(declare-fun lt!309166 () List!12743)

(assert (=> b!663012 (= res!431131 (contains!3286 lt!309166 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!663013 () Bool)

(declare-fun res!431113 () Bool)

(assert (=> b!663013 (=> res!431113 e!380476)))

(declare-fun subseq!24 (List!12743 List!12743) Bool)

(assert (=> b!663013 (= res!431113 (not (subseq!24 acc!681 lt!309166)))))

(declare-fun b!663014 () Bool)

(declare-fun e!380472 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!663014 (= e!380472 (contains!3286 acc!681 k0!2843))))

(declare-fun b!663015 () Bool)

(declare-fun res!431130 () Bool)

(assert (=> b!663015 (=> (not res!431130) (not e!380477))))

(declare-fun noDuplicate!533 (List!12743) Bool)

(assert (=> b!663015 (= res!431130 (noDuplicate!533 acc!681))))

(declare-fun b!663016 () Bool)

(declare-fun res!431132 () Bool)

(assert (=> b!663016 (=> (not res!431132) (not e!380477))))

(declare-datatypes ((array!38921 0))(
  ( (array!38922 (arr!18649 (Array (_ BitVec 32) (_ BitVec 64))) (size!19013 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38921)

(declare-fun arrayContainsKey!0 (array!38921 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663016 (= res!431132 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663017 () Bool)

(declare-fun res!431121 () Bool)

(assert (=> b!663017 (=> (not res!431121) (not e!380477))))

(assert (=> b!663017 (= res!431121 (not (contains!3286 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663018 () Bool)

(assert (=> b!663018 (= e!380476 true)))

(declare-fun lt!309170 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!38921 (_ BitVec 32) List!12743) Bool)

(assert (=> b!663018 (= lt!309170 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!309166))))

(declare-datatypes ((Unit!23042 0))(
  ( (Unit!23043) )
))
(declare-fun lt!309168 () Unit!23042)

(declare-fun noDuplicateSubseq!24 (List!12743 List!12743) Unit!23042)

(assert (=> b!663018 (= lt!309168 (noDuplicateSubseq!24 acc!681 lt!309166))))

(declare-fun b!663019 () Bool)

(declare-fun e!380478 () Bool)

(declare-fun e!380474 () Bool)

(assert (=> b!663019 (= e!380478 e!380474)))

(declare-fun res!431116 () Bool)

(assert (=> b!663019 (=> (not res!431116) (not e!380474))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663019 (= res!431116 (bvsle from!3004 i!1382))))

(declare-fun b!663020 () Bool)

(declare-fun res!431115 () Bool)

(assert (=> b!663020 (=> (not res!431115) (not e!380477))))

(assert (=> b!663020 (= res!431115 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12740))))

(declare-fun b!663022 () Bool)

(declare-fun e!380475 () Bool)

(assert (=> b!663022 (= e!380475 e!380476)))

(declare-fun res!431122 () Bool)

(assert (=> b!663022 (=> res!431122 e!380476)))

(assert (=> b!663022 (= res!431122 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!155 (List!12743 (_ BitVec 64)) List!12743)

(assert (=> b!663022 (= lt!309166 ($colon$colon!155 acc!681 (select (arr!18649 a!3626) from!3004)))))

(assert (=> b!663022 (subseq!24 acc!681 acc!681)))

(declare-fun lt!309171 () Unit!23042)

(declare-fun lemmaListSubSeqRefl!0 (List!12743) Unit!23042)

(assert (=> b!663022 (= lt!309171 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!663023 () Bool)

(declare-fun res!431125 () Bool)

(assert (=> b!663023 (=> (not res!431125) (not e!380477))))

(assert (=> b!663023 (= res!431125 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19013 a!3626))))))

(declare-fun b!663024 () Bool)

(assert (=> b!663024 (= e!380477 (not e!380475))))

(declare-fun res!431127 () Bool)

(assert (=> b!663024 (=> res!431127 e!380475)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663024 (= res!431127 (not (validKeyInArray!0 (select (arr!18649 a!3626) from!3004))))))

(declare-fun lt!309169 () Unit!23042)

(declare-fun e!380479 () Unit!23042)

(assert (=> b!663024 (= lt!309169 e!380479)))

(declare-fun c!76316 () Bool)

(assert (=> b!663024 (= c!76316 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663024 (arrayContainsKey!0 (array!38922 (store (arr!18649 a!3626) i!1382 k0!2843) (size!19013 a!3626)) k0!2843 from!3004)))

(declare-fun b!663025 () Bool)

(declare-fun res!431123 () Bool)

(assert (=> b!663025 (=> (not res!431123) (not e!380477))))

(assert (=> b!663025 (= res!431123 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19013 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663026 () Bool)

(declare-fun res!431119 () Bool)

(assert (=> b!663026 (=> (not res!431119) (not e!380477))))

(assert (=> b!663026 (= res!431119 e!380478)))

(declare-fun res!431124 () Bool)

(assert (=> b!663026 (=> res!431124 e!380478)))

(assert (=> b!663026 (= res!431124 e!380472)))

(declare-fun res!431114 () Bool)

(assert (=> b!663026 (=> (not res!431114) (not e!380472))))

(assert (=> b!663026 (= res!431114 (bvsgt from!3004 i!1382))))

(declare-fun b!663027 () Bool)

(declare-fun res!431129 () Bool)

(assert (=> b!663027 (=> res!431129 e!380476)))

(assert (=> b!663027 (= res!431129 (not (noDuplicate!533 lt!309166)))))

(declare-fun b!663028 () Bool)

(declare-fun Unit!23044 () Unit!23042)

(assert (=> b!663028 (= e!380479 Unit!23044)))

(declare-fun lt!309167 () Unit!23042)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38921 (_ BitVec 64) (_ BitVec 32)) Unit!23042)

(assert (=> b!663028 (= lt!309167 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!663028 false))

(declare-fun b!663029 () Bool)

(assert (=> b!663029 (= e!380474 (not (contains!3286 acc!681 k0!2843)))))

(declare-fun b!663030 () Bool)

(declare-fun Unit!23045 () Unit!23042)

(assert (=> b!663030 (= e!380479 Unit!23045)))

(declare-fun res!431120 () Bool)

(assert (=> start!59918 (=> (not res!431120) (not e!380477))))

(assert (=> start!59918 (= res!431120 (and (bvslt (size!19013 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19013 a!3626))))))

(assert (=> start!59918 e!380477))

(assert (=> start!59918 true))

(declare-fun array_inv!14423 (array!38921) Bool)

(assert (=> start!59918 (array_inv!14423 a!3626)))

(declare-fun b!663021 () Bool)

(declare-fun res!431118 () Bool)

(assert (=> b!663021 (=> res!431118 e!380476)))

(assert (=> b!663021 (= res!431118 (contains!3286 lt!309166 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!663031 () Bool)

(declare-fun res!431117 () Bool)

(assert (=> b!663031 (=> (not res!431117) (not e!380477))))

(assert (=> b!663031 (= res!431117 (validKeyInArray!0 k0!2843))))

(declare-fun b!663032 () Bool)

(declare-fun res!431128 () Bool)

(assert (=> b!663032 (=> (not res!431128) (not e!380477))))

(assert (=> b!663032 (= res!431128 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!59918 res!431120) b!663015))

(assert (= (and b!663015 res!431130) b!663011))

(assert (= (and b!663011 res!431126) b!663017))

(assert (= (and b!663017 res!431121) b!663026))

(assert (= (and b!663026 res!431114) b!663014))

(assert (= (and b!663026 (not res!431124)) b!663019))

(assert (= (and b!663019 res!431116) b!663029))

(assert (= (and b!663026 res!431119) b!663020))

(assert (= (and b!663020 res!431115) b!663032))

(assert (= (and b!663032 res!431128) b!663023))

(assert (= (and b!663023 res!431125) b!663031))

(assert (= (and b!663031 res!431117) b!663016))

(assert (= (and b!663016 res!431132) b!663025))

(assert (= (and b!663025 res!431123) b!663024))

(assert (= (and b!663024 c!76316) b!663028))

(assert (= (and b!663024 (not c!76316)) b!663030))

(assert (= (and b!663024 (not res!431127)) b!663022))

(assert (= (and b!663022 (not res!431122)) b!663027))

(assert (= (and b!663027 (not res!431129)) b!663012))

(assert (= (and b!663012 (not res!431131)) b!663021))

(assert (= (and b!663021 (not res!431118)) b!663013))

(assert (= (and b!663013 (not res!431113)) b!663018))

(declare-fun m!634707 () Bool)

(assert (=> b!663017 m!634707))

(declare-fun m!634709 () Bool)

(assert (=> b!663032 m!634709))

(declare-fun m!634711 () Bool)

(assert (=> b!663013 m!634711))

(declare-fun m!634713 () Bool)

(assert (=> b!663015 m!634713))

(declare-fun m!634715 () Bool)

(assert (=> b!663012 m!634715))

(declare-fun m!634717 () Bool)

(assert (=> b!663027 m!634717))

(declare-fun m!634719 () Bool)

(assert (=> b!663016 m!634719))

(declare-fun m!634721 () Bool)

(assert (=> b!663031 m!634721))

(declare-fun m!634723 () Bool)

(assert (=> b!663014 m!634723))

(declare-fun m!634725 () Bool)

(assert (=> b!663018 m!634725))

(declare-fun m!634727 () Bool)

(assert (=> b!663018 m!634727))

(declare-fun m!634729 () Bool)

(assert (=> b!663021 m!634729))

(declare-fun m!634731 () Bool)

(assert (=> b!663028 m!634731))

(assert (=> b!663029 m!634723))

(declare-fun m!634733 () Bool)

(assert (=> b!663024 m!634733))

(declare-fun m!634735 () Bool)

(assert (=> b!663024 m!634735))

(declare-fun m!634737 () Bool)

(assert (=> b!663024 m!634737))

(assert (=> b!663024 m!634733))

(declare-fun m!634739 () Bool)

(assert (=> b!663024 m!634739))

(declare-fun m!634741 () Bool)

(assert (=> b!663024 m!634741))

(assert (=> b!663022 m!634733))

(assert (=> b!663022 m!634733))

(declare-fun m!634743 () Bool)

(assert (=> b!663022 m!634743))

(declare-fun m!634745 () Bool)

(assert (=> b!663022 m!634745))

(declare-fun m!634747 () Bool)

(assert (=> b!663022 m!634747))

(declare-fun m!634749 () Bool)

(assert (=> b!663011 m!634749))

(declare-fun m!634751 () Bool)

(assert (=> start!59918 m!634751))

(declare-fun m!634753 () Bool)

(assert (=> b!663020 m!634753))

(check-sat (not start!59918) (not b!663031) (not b!663016) (not b!663032) (not b!663022) (not b!663013) (not b!663015) (not b!663027) (not b!663011) (not b!663029) (not b!663014) (not b!663028) (not b!663024) (not b!663012) (not b!663020) (not b!663017) (not b!663021) (not b!663018))
(check-sat)
