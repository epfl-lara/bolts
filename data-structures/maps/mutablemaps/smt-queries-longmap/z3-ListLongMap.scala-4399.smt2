; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60512 () Bool)

(assert start!60512)

(declare-fun b!679714 () Bool)

(declare-fun res!446205 () Bool)

(declare-fun e!387208 () Bool)

(assert (=> b!679714 (=> (not res!446205) (not e!387208))))

(declare-datatypes ((List!13004 0))(
  ( (Nil!13001) (Cons!13000 (h!14045 (_ BitVec 64)) (t!19240 List!13004)) )
))
(declare-fun acc!681 () List!13004)

(declare-fun contains!3547 (List!13004 (_ BitVec 64)) Bool)

(assert (=> b!679714 (= res!446205 (not (contains!3547 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679715 () Bool)

(declare-fun res!446209 () Bool)

(assert (=> b!679715 (=> (not res!446209) (not e!387208))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39449 0))(
  ( (array!39450 (arr!18910 (Array (_ BitVec 32) (_ BitVec 64))) (size!19274 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39449)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!679715 (= res!446209 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19274 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679716 () Bool)

(declare-fun res!446208 () Bool)

(assert (=> b!679716 (=> (not res!446208) (not e!387208))))

(declare-fun arrayNoDuplicates!0 (array!39449 (_ BitVec 32) List!13004) Bool)

(assert (=> b!679716 (= res!446208 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13001))))

(declare-fun b!679717 () Bool)

(declare-fun e!387212 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!679717 (= e!387212 (contains!3547 acc!681 k0!2843))))

(declare-fun b!679718 () Bool)

(declare-fun res!446207 () Bool)

(assert (=> b!679718 (=> (not res!446207) (not e!387208))))

(declare-fun noDuplicate!794 (List!13004) Bool)

(assert (=> b!679718 (= res!446207 (noDuplicate!794 acc!681))))

(declare-fun res!446216 () Bool)

(assert (=> start!60512 (=> (not res!446216) (not e!387208))))

(assert (=> start!60512 (= res!446216 (and (bvslt (size!19274 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19274 a!3626))))))

(assert (=> start!60512 e!387208))

(assert (=> start!60512 true))

(declare-fun array_inv!14684 (array!39449) Bool)

(assert (=> start!60512 (array_inv!14684 a!3626)))

(declare-fun b!679719 () Bool)

(declare-datatypes ((Unit!23810 0))(
  ( (Unit!23811) )
))
(declare-fun e!387210 () Unit!23810)

(declare-fun Unit!23812 () Unit!23810)

(assert (=> b!679719 (= e!387210 Unit!23812)))

(declare-fun lt!312934 () Unit!23810)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39449 (_ BitVec 64) (_ BitVec 32)) Unit!23810)

(assert (=> b!679719 (= lt!312934 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!679719 false))

(declare-fun b!679720 () Bool)

(declare-fun e!387209 () Bool)

(assert (=> b!679720 (= e!387208 (not e!387209))))

(declare-fun res!446204 () Bool)

(assert (=> b!679720 (=> res!446204 e!387209)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679720 (= res!446204 (not (validKeyInArray!0 (select (arr!18910 a!3626) from!3004))))))

(declare-fun lt!312936 () Unit!23810)

(assert (=> b!679720 (= lt!312936 e!387210)))

(declare-fun c!77123 () Bool)

(declare-fun arrayContainsKey!0 (array!39449 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679720 (= c!77123 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!679720 (arrayContainsKey!0 (array!39450 (store (arr!18910 a!3626) i!1382 k0!2843) (size!19274 a!3626)) k0!2843 from!3004)))

(declare-fun b!679721 () Bool)

(declare-fun res!446212 () Bool)

(assert (=> b!679721 (=> (not res!446212) (not e!387208))))

(assert (=> b!679721 (= res!446212 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19274 a!3626))))))

(declare-fun b!679722 () Bool)

(declare-fun e!387213 () Bool)

(declare-fun e!387214 () Bool)

(assert (=> b!679722 (= e!387213 e!387214)))

(declare-fun res!446213 () Bool)

(assert (=> b!679722 (=> (not res!446213) (not e!387214))))

(assert (=> b!679722 (= res!446213 (bvsle from!3004 i!1382))))

(declare-fun b!679723 () Bool)

(declare-fun res!446215 () Bool)

(assert (=> b!679723 (=> (not res!446215) (not e!387208))))

(assert (=> b!679723 (= res!446215 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679724 () Bool)

(declare-fun res!446214 () Bool)

(assert (=> b!679724 (=> (not res!446214) (not e!387208))))

(assert (=> b!679724 (= res!446214 (validKeyInArray!0 k0!2843))))

(declare-fun b!679725 () Bool)

(assert (=> b!679725 (= e!387214 (not (contains!3547 acc!681 k0!2843)))))

(declare-fun b!679726 () Bool)

(declare-fun Unit!23813 () Unit!23810)

(assert (=> b!679726 (= e!387210 Unit!23813)))

(declare-fun b!679727 () Bool)

(declare-fun res!446210 () Bool)

(assert (=> b!679727 (=> (not res!446210) (not e!387208))))

(assert (=> b!679727 (= res!446210 (not (contains!3547 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679728 () Bool)

(declare-fun res!446206 () Bool)

(assert (=> b!679728 (=> (not res!446206) (not e!387208))))

(assert (=> b!679728 (= res!446206 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!679729 () Bool)

(assert (=> b!679729 (= e!387209 true)))

(declare-fun subseq!132 (List!13004 List!13004) Bool)

(assert (=> b!679729 (subseq!132 acc!681 acc!681)))

(declare-fun lt!312935 () Unit!23810)

(declare-fun lemmaListSubSeqRefl!0 (List!13004) Unit!23810)

(assert (=> b!679729 (= lt!312935 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!679730 () Bool)

(declare-fun res!446202 () Bool)

(assert (=> b!679730 (=> (not res!446202) (not e!387208))))

(assert (=> b!679730 (= res!446202 e!387213)))

(declare-fun res!446203 () Bool)

(assert (=> b!679730 (=> res!446203 e!387213)))

(assert (=> b!679730 (= res!446203 e!387212)))

(declare-fun res!446211 () Bool)

(assert (=> b!679730 (=> (not res!446211) (not e!387212))))

(assert (=> b!679730 (= res!446211 (bvsgt from!3004 i!1382))))

(assert (= (and start!60512 res!446216) b!679718))

(assert (= (and b!679718 res!446207) b!679714))

(assert (= (and b!679714 res!446205) b!679727))

(assert (= (and b!679727 res!446210) b!679730))

(assert (= (and b!679730 res!446211) b!679717))

(assert (= (and b!679730 (not res!446203)) b!679722))

(assert (= (and b!679722 res!446213) b!679725))

(assert (= (and b!679730 res!446202) b!679716))

(assert (= (and b!679716 res!446208) b!679728))

(assert (= (and b!679728 res!446206) b!679721))

(assert (= (and b!679721 res!446212) b!679724))

(assert (= (and b!679724 res!446214) b!679723))

(assert (= (and b!679723 res!446215) b!679715))

(assert (= (and b!679715 res!446209) b!679720))

(assert (= (and b!679720 c!77123) b!679719))

(assert (= (and b!679720 (not c!77123)) b!679726))

(assert (= (and b!679720 (not res!446204)) b!679729))

(declare-fun m!645007 () Bool)

(assert (=> b!679728 m!645007))

(declare-fun m!645009 () Bool)

(assert (=> b!679720 m!645009))

(declare-fun m!645011 () Bool)

(assert (=> b!679720 m!645011))

(declare-fun m!645013 () Bool)

(assert (=> b!679720 m!645013))

(assert (=> b!679720 m!645009))

(declare-fun m!645015 () Bool)

(assert (=> b!679720 m!645015))

(declare-fun m!645017 () Bool)

(assert (=> b!679720 m!645017))

(declare-fun m!645019 () Bool)

(assert (=> b!679727 m!645019))

(declare-fun m!645021 () Bool)

(assert (=> start!60512 m!645021))

(declare-fun m!645023 () Bool)

(assert (=> b!679719 m!645023))

(declare-fun m!645025 () Bool)

(assert (=> b!679718 m!645025))

(declare-fun m!645027 () Bool)

(assert (=> b!679714 m!645027))

(declare-fun m!645029 () Bool)

(assert (=> b!679716 m!645029))

(declare-fun m!645031 () Bool)

(assert (=> b!679729 m!645031))

(declare-fun m!645033 () Bool)

(assert (=> b!679729 m!645033))

(declare-fun m!645035 () Bool)

(assert (=> b!679724 m!645035))

(declare-fun m!645037 () Bool)

(assert (=> b!679717 m!645037))

(assert (=> b!679725 m!645037))

(declare-fun m!645039 () Bool)

(assert (=> b!679723 m!645039))

(check-sat (not b!679720) (not b!679723) (not b!679729) (not start!60512) (not b!679717) (not b!679716) (not b!679727) (not b!679719) (not b!679724) (not b!679725) (not b!679718) (not b!679714) (not b!679728))
