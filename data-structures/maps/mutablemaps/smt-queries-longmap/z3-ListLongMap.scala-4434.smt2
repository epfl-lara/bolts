; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61598 () Bool)

(assert start!61598)

(declare-fun res!453797 () Bool)

(declare-fun e!392345 () Bool)

(assert (=> start!61598 (=> (not res!453797) (not e!392345))))

(declare-datatypes ((array!39695 0))(
  ( (array!39696 (arr!19015 (Array (_ BitVec 32) (_ BitVec 64))) (size!19396 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39695)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!61598 (= res!453797 (and (bvslt (size!19396 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19396 a!3626))))))

(assert (=> start!61598 e!392345))

(assert (=> start!61598 true))

(declare-fun array_inv!14789 (array!39695) Bool)

(assert (=> start!61598 (array_inv!14789 a!3626)))

(declare-fun b!689029 () Bool)

(declare-fun res!453799 () Bool)

(assert (=> b!689029 (=> (not res!453799) (not e!392345))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!689029 (= res!453799 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19396 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!689030 () Bool)

(declare-fun res!453794 () Bool)

(assert (=> b!689030 (=> (not res!453794) (not e!392345))))

(declare-datatypes ((List!13109 0))(
  ( (Nil!13106) (Cons!13105 (h!14150 (_ BitVec 64)) (t!19381 List!13109)) )
))
(declare-fun acc!681 () List!13109)

(declare-fun contains!3652 (List!13109 (_ BitVec 64)) Bool)

(assert (=> b!689030 (= res!453794 (not (contains!3652 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689031 () Bool)

(declare-fun e!392353 () Bool)

(declare-fun e!392346 () Bool)

(assert (=> b!689031 (= e!392353 e!392346)))

(declare-fun res!453786 () Bool)

(assert (=> b!689031 (=> (not res!453786) (not e!392346))))

(assert (=> b!689031 (= res!453786 (bvsle from!3004 i!1382))))

(declare-fun b!689032 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!689032 (= e!392346 (not (contains!3652 acc!681 k0!2843)))))

(declare-fun b!689033 () Bool)

(declare-fun e!392349 () Bool)

(assert (=> b!689033 (= e!392349 (contains!3652 acc!681 k0!2843))))

(declare-fun b!689034 () Bool)

(declare-fun res!453784 () Bool)

(assert (=> b!689034 (=> (not res!453784) (not e!392345))))

(assert (=> b!689034 (= res!453784 (not (contains!3652 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689035 () Bool)

(declare-fun res!453780 () Bool)

(assert (=> b!689035 (=> (not res!453780) (not e!392345))))

(declare-fun arrayContainsKey!0 (array!39695 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!689035 (= res!453780 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!689036 () Bool)

(declare-fun res!453793 () Bool)

(assert (=> b!689036 (=> (not res!453793) (not e!392345))))

(declare-fun arrayNoDuplicates!0 (array!39695 (_ BitVec 32) List!13109) Bool)

(assert (=> b!689036 (= res!453793 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13106))))

(declare-fun b!689037 () Bool)

(declare-fun res!453790 () Bool)

(assert (=> b!689037 (=> (not res!453790) (not e!392345))))

(assert (=> b!689037 (= res!453790 e!392353)))

(declare-fun res!453795 () Bool)

(assert (=> b!689037 (=> res!453795 e!392353)))

(assert (=> b!689037 (= res!453795 e!392349)))

(declare-fun res!453781 () Bool)

(assert (=> b!689037 (=> (not res!453781) (not e!392349))))

(assert (=> b!689037 (= res!453781 (bvsgt from!3004 i!1382))))

(declare-fun b!689038 () Bool)

(declare-fun e!392352 () Bool)

(declare-fun lt!316026 () List!13109)

(assert (=> b!689038 (= e!392352 (not (contains!3652 lt!316026 k0!2843)))))

(declare-fun b!689039 () Bool)

(declare-fun e!392344 () Bool)

(assert (=> b!689039 (= e!392345 (not e!392344))))

(declare-fun res!453788 () Bool)

(assert (=> b!689039 (=> res!453788 e!392344)))

(assert (=> b!689039 (= res!453788 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!689039 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316026)))

(declare-datatypes ((Unit!24312 0))(
  ( (Unit!24313) )
))
(declare-fun lt!316032 () Unit!24312)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39695 (_ BitVec 64) (_ BitVec 32) List!13109 List!13109) Unit!24312)

(assert (=> b!689039 (= lt!316032 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!316026))))

(declare-fun -!202 (List!13109 (_ BitVec 64)) List!13109)

(assert (=> b!689039 (= (-!202 lt!316026 k0!2843) acc!681)))

(declare-fun $colon$colon!401 (List!13109 (_ BitVec 64)) List!13109)

(assert (=> b!689039 (= lt!316026 ($colon$colon!401 acc!681 k0!2843))))

(declare-fun lt!316030 () Unit!24312)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13109) Unit!24312)

(assert (=> b!689039 (= lt!316030 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!237 (List!13109 List!13109) Bool)

(assert (=> b!689039 (subseq!237 acc!681 acc!681)))

(declare-fun lt!316025 () Unit!24312)

(declare-fun lemmaListSubSeqRefl!0 (List!13109) Unit!24312)

(assert (=> b!689039 (= lt!316025 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!689039 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!316028 () Unit!24312)

(declare-fun e!392347 () Unit!24312)

(assert (=> b!689039 (= lt!316028 e!392347)))

(declare-fun c!77992 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!689039 (= c!77992 (validKeyInArray!0 (select (arr!19015 a!3626) from!3004)))))

(declare-fun lt!316031 () Unit!24312)

(declare-fun e!392351 () Unit!24312)

(assert (=> b!689039 (= lt!316031 e!392351)))

(declare-fun c!77993 () Bool)

(assert (=> b!689039 (= c!77993 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!689039 (arrayContainsKey!0 (array!39696 (store (arr!19015 a!3626) i!1382 k0!2843) (size!19396 a!3626)) k0!2843 from!3004)))

(declare-fun b!689040 () Bool)

(declare-fun res!453779 () Bool)

(assert (=> b!689040 (=> res!453779 e!392344)))

(assert (=> b!689040 (= res!453779 (contains!3652 lt!316026 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689041 () Bool)

(declare-fun res!453785 () Bool)

(assert (=> b!689041 (=> res!453785 e!392344)))

(assert (=> b!689041 (= res!453785 (contains!3652 lt!316026 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689042 () Bool)

(assert (=> b!689042 (= e!392344 (bvslt (bvsub (size!19396 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) (bvsub (size!19396 a!3626) from!3004)))))

(declare-fun b!689043 () Bool)

(declare-fun res!453798 () Bool)

(assert (=> b!689043 (=> (not res!453798) (not e!392345))))

(assert (=> b!689043 (= res!453798 (validKeyInArray!0 k0!2843))))

(declare-fun b!689044 () Bool)

(declare-fun res!453782 () Bool)

(assert (=> b!689044 (=> res!453782 e!392344)))

(declare-fun noDuplicate!899 (List!13109) Bool)

(assert (=> b!689044 (= res!453782 (not (noDuplicate!899 lt!316026)))))

(declare-fun b!689045 () Bool)

(declare-fun res!453787 () Bool)

(assert (=> b!689045 (=> res!453787 e!392344)))

(declare-fun e!392348 () Bool)

(assert (=> b!689045 (= res!453787 e!392348)))

(declare-fun res!453791 () Bool)

(assert (=> b!689045 (=> (not res!453791) (not e!392348))))

(assert (=> b!689045 (= res!453791 e!392352)))

(declare-fun res!453792 () Bool)

(assert (=> b!689045 (=> res!453792 e!392352)))

(assert (=> b!689045 (= res!453792 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689046 () Bool)

(declare-fun e!392343 () Bool)

(assert (=> b!689046 (= e!392348 e!392343)))

(declare-fun res!453789 () Bool)

(assert (=> b!689046 (=> res!453789 e!392343)))

(assert (=> b!689046 (= res!453789 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689047 () Bool)

(declare-fun res!453800 () Bool)

(assert (=> b!689047 (=> (not res!453800) (not e!392345))))

(assert (=> b!689047 (= res!453800 (noDuplicate!899 acc!681))))

(declare-fun b!689048 () Bool)

(declare-fun Unit!24314 () Unit!24312)

(assert (=> b!689048 (= e!392347 Unit!24314)))

(declare-fun b!689049 () Bool)

(declare-fun res!453783 () Bool)

(assert (=> b!689049 (=> (not res!453783) (not e!392345))))

(assert (=> b!689049 (= res!453783 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!689050 () Bool)

(declare-fun lt!316029 () Unit!24312)

(assert (=> b!689050 (= e!392347 lt!316029)))

(declare-fun lt!316027 () Unit!24312)

(assert (=> b!689050 (= lt!316027 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!689050 (subseq!237 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39695 List!13109 List!13109 (_ BitVec 32)) Unit!24312)

(assert (=> b!689050 (= lt!316029 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!401 acc!681 (select (arr!19015 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!689050 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!689051 () Bool)

(declare-fun Unit!24315 () Unit!24312)

(assert (=> b!689051 (= e!392351 Unit!24315)))

(declare-fun lt!316024 () Unit!24312)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39695 (_ BitVec 64) (_ BitVec 32)) Unit!24312)

(assert (=> b!689051 (= lt!316024 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!689051 false))

(declare-fun b!689052 () Bool)

(assert (=> b!689052 (= e!392343 (contains!3652 lt!316026 k0!2843))))

(declare-fun b!689053 () Bool)

(declare-fun Unit!24316 () Unit!24312)

(assert (=> b!689053 (= e!392351 Unit!24316)))

(declare-fun b!689054 () Bool)

(declare-fun res!453796 () Bool)

(assert (=> b!689054 (=> (not res!453796) (not e!392345))))

(assert (=> b!689054 (= res!453796 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19396 a!3626))))))

(assert (= (and start!61598 res!453797) b!689047))

(assert (= (and b!689047 res!453800) b!689034))

(assert (= (and b!689034 res!453784) b!689030))

(assert (= (and b!689030 res!453794) b!689037))

(assert (= (and b!689037 res!453781) b!689033))

(assert (= (and b!689037 (not res!453795)) b!689031))

(assert (= (and b!689031 res!453786) b!689032))

(assert (= (and b!689037 res!453790) b!689036))

(assert (= (and b!689036 res!453793) b!689049))

(assert (= (and b!689049 res!453783) b!689054))

(assert (= (and b!689054 res!453796) b!689043))

(assert (= (and b!689043 res!453798) b!689035))

(assert (= (and b!689035 res!453780) b!689029))

(assert (= (and b!689029 res!453799) b!689039))

(assert (= (and b!689039 c!77993) b!689051))

(assert (= (and b!689039 (not c!77993)) b!689053))

(assert (= (and b!689039 c!77992) b!689050))

(assert (= (and b!689039 (not c!77992)) b!689048))

(assert (= (and b!689039 (not res!453788)) b!689044))

(assert (= (and b!689044 (not res!453782)) b!689040))

(assert (= (and b!689040 (not res!453779)) b!689041))

(assert (= (and b!689041 (not res!453785)) b!689045))

(assert (= (and b!689045 (not res!453792)) b!689038))

(assert (= (and b!689045 res!453791) b!689046))

(assert (= (and b!689046 (not res!453789)) b!689052))

(assert (= (and b!689045 (not res!453787)) b!689042))

(declare-fun m!652807 () Bool)

(assert (=> b!689041 m!652807))

(declare-fun m!652809 () Bool)

(assert (=> b!689038 m!652809))

(declare-fun m!652811 () Bool)

(assert (=> b!689044 m!652811))

(declare-fun m!652813 () Bool)

(assert (=> b!689030 m!652813))

(declare-fun m!652815 () Bool)

(assert (=> b!689033 m!652815))

(declare-fun m!652817 () Bool)

(assert (=> b!689049 m!652817))

(assert (=> b!689032 m!652815))

(declare-fun m!652819 () Bool)

(assert (=> b!689040 m!652819))

(declare-fun m!652821 () Bool)

(assert (=> start!61598 m!652821))

(declare-fun m!652823 () Bool)

(assert (=> b!689035 m!652823))

(declare-fun m!652825 () Bool)

(assert (=> b!689034 m!652825))

(declare-fun m!652827 () Bool)

(assert (=> b!689047 m!652827))

(declare-fun m!652829 () Bool)

(assert (=> b!689036 m!652829))

(assert (=> b!689052 m!652809))

(declare-fun m!652831 () Bool)

(assert (=> b!689039 m!652831))

(declare-fun m!652833 () Bool)

(assert (=> b!689039 m!652833))

(declare-fun m!652835 () Bool)

(assert (=> b!689039 m!652835))

(declare-fun m!652837 () Bool)

(assert (=> b!689039 m!652837))

(declare-fun m!652839 () Bool)

(assert (=> b!689039 m!652839))

(declare-fun m!652841 () Bool)

(assert (=> b!689039 m!652841))

(declare-fun m!652843 () Bool)

(assert (=> b!689039 m!652843))

(declare-fun m!652845 () Bool)

(assert (=> b!689039 m!652845))

(declare-fun m!652847 () Bool)

(assert (=> b!689039 m!652847))

(assert (=> b!689039 m!652833))

(declare-fun m!652849 () Bool)

(assert (=> b!689039 m!652849))

(declare-fun m!652851 () Bool)

(assert (=> b!689039 m!652851))

(declare-fun m!652853 () Bool)

(assert (=> b!689039 m!652853))

(declare-fun m!652855 () Bool)

(assert (=> b!689039 m!652855))

(declare-fun m!652857 () Bool)

(assert (=> b!689043 m!652857))

(declare-fun m!652859 () Bool)

(assert (=> b!689051 m!652859))

(assert (=> b!689050 m!652831))

(assert (=> b!689050 m!652833))

(declare-fun m!652861 () Bool)

(assert (=> b!689050 m!652861))

(declare-fun m!652863 () Bool)

(assert (=> b!689050 m!652863))

(assert (=> b!689050 m!652833))

(assert (=> b!689050 m!652861))

(assert (=> b!689050 m!652841))

(assert (=> b!689050 m!652855))

(check-sat (not b!689049) (not b!689041) (not b!689039) (not b!689043) (not start!61598) (not b!689036) (not b!689047) (not b!689033) (not b!689038) (not b!689051) (not b!689052) (not b!689032) (not b!689044) (not b!689040) (not b!689030) (not b!689050) (not b!689034) (not b!689035))
(check-sat)
