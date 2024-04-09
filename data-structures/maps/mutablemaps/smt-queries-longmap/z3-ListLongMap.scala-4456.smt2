; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62048 () Bool)

(assert start!62048)

(declare-fun b!693850 () Bool)

(declare-fun e!394761 () Bool)

(declare-datatypes ((List!13175 0))(
  ( (Nil!13172) (Cons!13171 (h!14216 (_ BitVec 64)) (t!19462 List!13175)) )
))
(declare-fun lt!316790 () List!13175)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3718 (List!13175 (_ BitVec 64)) Bool)

(assert (=> b!693850 (= e!394761 (not (contains!3718 lt!316790 k0!2843)))))

(declare-fun b!693851 () Bool)

(declare-fun res!458102 () Bool)

(declare-fun e!394765 () Bool)

(assert (=> b!693851 (=> (not res!458102) (not e!394765))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39845 0))(
  ( (array!39846 (arr!19081 (Array (_ BitVec 32) (_ BitVec 64))) (size!19464 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39845)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!693851 (= res!458102 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19464 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!693852 () Bool)

(declare-fun e!394766 () Bool)

(declare-fun acc!681 () List!13175)

(assert (=> b!693852 (= e!394766 (contains!3718 acc!681 k0!2843))))

(declare-fun b!693853 () Bool)

(declare-fun res!458100 () Bool)

(assert (=> b!693853 (=> (not res!458100) (not e!394765))))

(declare-fun arrayContainsKey!0 (array!39845 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!693853 (= res!458100 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!693854 () Bool)

(declare-fun e!394762 () Bool)

(assert (=> b!693854 (= e!394762 (not (contains!3718 acc!681 k0!2843)))))

(declare-fun b!693855 () Bool)

(declare-fun res!458113 () Bool)

(assert (=> b!693855 (=> (not res!458113) (not e!394765))))

(declare-fun arrayNoDuplicates!0 (array!39845 (_ BitVec 32) List!13175) Bool)

(assert (=> b!693855 (= res!458113 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!693856 () Bool)

(declare-fun res!458109 () Bool)

(assert (=> b!693856 (=> (not res!458109) (not e!394765))))

(declare-fun noDuplicate!965 (List!13175) Bool)

(assert (=> b!693856 (= res!458109 (noDuplicate!965 acc!681))))

(declare-fun b!693857 () Bool)

(declare-fun res!458116 () Bool)

(assert (=> b!693857 (=> (not res!458116) (not e!394765))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!693857 (= res!458116 (validKeyInArray!0 k0!2843))))

(declare-fun b!693858 () Bool)

(declare-fun e!394758 () Bool)

(assert (=> b!693858 (= e!394758 e!394761)))

(declare-fun res!458114 () Bool)

(assert (=> b!693858 (=> (not res!458114) (not e!394761))))

(assert (=> b!693858 (= res!458114 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693859 () Bool)

(declare-fun res!458098 () Bool)

(declare-fun e!394768 () Bool)

(assert (=> b!693859 (=> (not res!458098) (not e!394768))))

(assert (=> b!693859 (= res!458098 e!394758)))

(declare-fun res!458103 () Bool)

(assert (=> b!693859 (=> res!458103 e!394758)))

(declare-fun e!394760 () Bool)

(assert (=> b!693859 (= res!458103 e!394760)))

(declare-fun res!458112 () Bool)

(assert (=> b!693859 (=> (not res!458112) (not e!394760))))

(assert (=> b!693859 (= res!458112 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!458111 () Bool)

(assert (=> start!62048 (=> (not res!458111) (not e!394765))))

(assert (=> start!62048 (= res!458111 (and (bvslt (size!19464 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19464 a!3626))))))

(assert (=> start!62048 e!394765))

(assert (=> start!62048 true))

(declare-fun array_inv!14855 (array!39845) Bool)

(assert (=> start!62048 (array_inv!14855 a!3626)))

(declare-fun b!693860 () Bool)

(declare-fun res!458099 () Bool)

(assert (=> b!693860 (=> (not res!458099) (not e!394765))))

(assert (=> b!693860 (= res!458099 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13172))))

(declare-fun b!693861 () Bool)

(assert (=> b!693861 (= e!394768 false)))

(declare-fun lt!316789 () Bool)

(assert (=> b!693861 (= lt!316789 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316790))))

(declare-fun b!693862 () Bool)

(declare-datatypes ((Unit!24494 0))(
  ( (Unit!24495) )
))
(declare-fun e!394763 () Unit!24494)

(declare-fun Unit!24496 () Unit!24494)

(assert (=> b!693862 (= e!394763 Unit!24496)))

(assert (=> b!693862 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!316788 () Unit!24494)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39845 (_ BitVec 64) (_ BitVec 32)) Unit!24494)

(assert (=> b!693862 (= lt!316788 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!693862 false))

(declare-fun b!693863 () Bool)

(declare-fun e!394767 () Bool)

(assert (=> b!693863 (= e!394767 e!394768)))

(declare-fun res!458094 () Bool)

(assert (=> b!693863 (=> (not res!458094) (not e!394768))))

(assert (=> b!693863 (= res!458094 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!428 (List!13175 (_ BitVec 64)) List!13175)

(assert (=> b!693863 (= lt!316790 ($colon$colon!428 acc!681 (select (arr!19081 a!3626) from!3004)))))

(declare-fun b!693864 () Bool)

(assert (=> b!693864 (= e!394760 (contains!3718 lt!316790 k0!2843))))

(declare-fun b!693865 () Bool)

(declare-fun res!458096 () Bool)

(assert (=> b!693865 (=> (not res!458096) (not e!394765))))

(declare-fun e!394759 () Bool)

(assert (=> b!693865 (= res!458096 e!394759)))

(declare-fun res!458097 () Bool)

(assert (=> b!693865 (=> res!458097 e!394759)))

(assert (=> b!693865 (= res!458097 e!394766)))

(declare-fun res!458101 () Bool)

(assert (=> b!693865 (=> (not res!458101) (not e!394766))))

(assert (=> b!693865 (= res!458101 (bvsgt from!3004 i!1382))))

(declare-fun b!693866 () Bool)

(declare-fun Unit!24497 () Unit!24494)

(assert (=> b!693866 (= e!394763 Unit!24497)))

(declare-fun b!693867 () Bool)

(assert (=> b!693867 (= e!394759 e!394762)))

(declare-fun res!458117 () Bool)

(assert (=> b!693867 (=> (not res!458117) (not e!394762))))

(assert (=> b!693867 (= res!458117 (bvsle from!3004 i!1382))))

(declare-fun b!693868 () Bool)

(declare-fun res!458107 () Bool)

(assert (=> b!693868 (=> (not res!458107) (not e!394765))))

(assert (=> b!693868 (= res!458107 (not (contains!3718 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693869 () Bool)

(declare-fun res!458110 () Bool)

(assert (=> b!693869 (=> (not res!458110) (not e!394765))))

(assert (=> b!693869 (= res!458110 (not (contains!3718 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693870 () Bool)

(declare-fun res!458115 () Bool)

(assert (=> b!693870 (=> (not res!458115) (not e!394765))))

(assert (=> b!693870 (= res!458115 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19464 a!3626))))))

(declare-fun b!693871 () Bool)

(declare-fun res!458105 () Bool)

(assert (=> b!693871 (=> (not res!458105) (not e!394768))))

(assert (=> b!693871 (= res!458105 (noDuplicate!965 lt!316790))))

(declare-fun b!693872 () Bool)

(declare-fun res!458104 () Bool)

(assert (=> b!693872 (=> (not res!458104) (not e!394765))))

(assert (=> b!693872 (= res!458104 (validKeyInArray!0 (select (arr!19081 a!3626) from!3004)))))

(declare-fun b!693873 () Bool)

(declare-fun res!458095 () Bool)

(assert (=> b!693873 (=> (not res!458095) (not e!394768))))

(assert (=> b!693873 (= res!458095 (not (contains!3718 lt!316790 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693874 () Bool)

(assert (=> b!693874 (= e!394765 e!394767)))

(declare-fun res!458106 () Bool)

(assert (=> b!693874 (=> (not res!458106) (not e!394767))))

(assert (=> b!693874 (= res!458106 (not (= (select (arr!19081 a!3626) from!3004) k0!2843)))))

(declare-fun lt!316791 () Unit!24494)

(assert (=> b!693874 (= lt!316791 e!394763)))

(declare-fun c!78245 () Bool)

(assert (=> b!693874 (= c!78245 (= (select (arr!19081 a!3626) from!3004) k0!2843))))

(declare-fun b!693875 () Bool)

(declare-fun res!458108 () Bool)

(assert (=> b!693875 (=> (not res!458108) (not e!394768))))

(assert (=> b!693875 (= res!458108 (not (contains!3718 lt!316790 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62048 res!458111) b!693856))

(assert (= (and b!693856 res!458109) b!693868))

(assert (= (and b!693868 res!458107) b!693869))

(assert (= (and b!693869 res!458110) b!693865))

(assert (= (and b!693865 res!458101) b!693852))

(assert (= (and b!693865 (not res!458097)) b!693867))

(assert (= (and b!693867 res!458117) b!693854))

(assert (= (and b!693865 res!458096) b!693860))

(assert (= (and b!693860 res!458099) b!693855))

(assert (= (and b!693855 res!458113) b!693870))

(assert (= (and b!693870 res!458115) b!693857))

(assert (= (and b!693857 res!458116) b!693853))

(assert (= (and b!693853 res!458100) b!693851))

(assert (= (and b!693851 res!458102) b!693872))

(assert (= (and b!693872 res!458104) b!693874))

(assert (= (and b!693874 c!78245) b!693862))

(assert (= (and b!693874 (not c!78245)) b!693866))

(assert (= (and b!693874 res!458106) b!693863))

(assert (= (and b!693863 res!458094) b!693871))

(assert (= (and b!693871 res!458105) b!693875))

(assert (= (and b!693875 res!458108) b!693873))

(assert (= (and b!693873 res!458095) b!693859))

(assert (= (and b!693859 res!458112) b!693864))

(assert (= (and b!693859 (not res!458103)) b!693858))

(assert (= (and b!693858 res!458114) b!693850))

(assert (= (and b!693859 res!458098) b!693861))

(declare-fun m!655943 () Bool)

(assert (=> b!693861 m!655943))

(declare-fun m!655945 () Bool)

(assert (=> b!693871 m!655945))

(declare-fun m!655947 () Bool)

(assert (=> b!693863 m!655947))

(assert (=> b!693863 m!655947))

(declare-fun m!655949 () Bool)

(assert (=> b!693863 m!655949))

(declare-fun m!655951 () Bool)

(assert (=> b!693850 m!655951))

(declare-fun m!655953 () Bool)

(assert (=> b!693857 m!655953))

(assert (=> b!693864 m!655951))

(declare-fun m!655955 () Bool)

(assert (=> b!693869 m!655955))

(declare-fun m!655957 () Bool)

(assert (=> b!693873 m!655957))

(assert (=> b!693872 m!655947))

(assert (=> b!693872 m!655947))

(declare-fun m!655959 () Bool)

(assert (=> b!693872 m!655959))

(declare-fun m!655961 () Bool)

(assert (=> b!693868 m!655961))

(assert (=> b!693874 m!655947))

(declare-fun m!655963 () Bool)

(assert (=> b!693852 m!655963))

(declare-fun m!655965 () Bool)

(assert (=> b!693856 m!655965))

(declare-fun m!655967 () Bool)

(assert (=> start!62048 m!655967))

(declare-fun m!655969 () Bool)

(assert (=> b!693855 m!655969))

(declare-fun m!655971 () Bool)

(assert (=> b!693860 m!655971))

(declare-fun m!655973 () Bool)

(assert (=> b!693862 m!655973))

(declare-fun m!655975 () Bool)

(assert (=> b!693862 m!655975))

(declare-fun m!655977 () Bool)

(assert (=> b!693853 m!655977))

(declare-fun m!655979 () Bool)

(assert (=> b!693875 m!655979))

(assert (=> b!693854 m!655963))

(check-sat (not b!693868) (not b!693853) (not b!693864) (not b!693856) (not b!693854) (not b!693862) (not b!693873) (not b!693860) (not b!693852) (not b!693869) (not b!693857) (not b!693863) (not b!693855) (not b!693872) (not b!693850) (not b!693875) (not b!693871) (not start!62048) (not b!693861))
(check-sat)
