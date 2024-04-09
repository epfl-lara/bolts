; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59980 () Bool)

(assert start!59980)

(declare-fun b!665009 () Bool)

(declare-fun res!432754 () Bool)

(declare-fun e!381177 () Bool)

(assert (=> b!665009 (=> (not res!432754) (not e!381177))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38983 0))(
  ( (array!38984 (arr!18680 (Array (_ BitVec 32) (_ BitVec 64))) (size!19044 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38983)

(assert (=> b!665009 (= res!432754 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19044 a!3626))))))

(declare-fun b!665010 () Bool)

(declare-fun res!432760 () Bool)

(assert (=> b!665010 (=> (not res!432760) (not e!381177))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38983 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665010 (= res!432760 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!432767 () Bool)

(assert (=> start!59980 (=> (not res!432767) (not e!381177))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59980 (= res!432767 (and (bvslt (size!19044 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19044 a!3626))))))

(assert (=> start!59980 e!381177))

(assert (=> start!59980 true))

(declare-fun array_inv!14454 (array!38983) Bool)

(assert (=> start!59980 (array_inv!14454 a!3626)))

(declare-fun b!665011 () Bool)

(declare-fun res!432749 () Bool)

(assert (=> b!665011 (=> (not res!432749) (not e!381177))))

(declare-datatypes ((List!12774 0))(
  ( (Nil!12771) (Cons!12770 (h!13815 (_ BitVec 64)) (t!19010 List!12774)) )
))
(declare-fun arrayNoDuplicates!0 (array!38983 (_ BitVec 32) List!12774) Bool)

(assert (=> b!665011 (= res!432749 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12771))))

(declare-fun b!665012 () Bool)

(declare-datatypes ((Unit!23195 0))(
  ( (Unit!23196) )
))
(declare-fun e!381176 () Unit!23195)

(declare-fun Unit!23197 () Unit!23195)

(assert (=> b!665012 (= e!381176 Unit!23197)))

(declare-fun lt!309880 () Unit!23195)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38983 (_ BitVec 64) (_ BitVec 32)) Unit!23195)

(assert (=> b!665012 (= lt!309880 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!665012 false))

(declare-fun b!665013 () Bool)

(declare-fun res!432751 () Bool)

(declare-fun e!381175 () Bool)

(assert (=> b!665013 (=> res!432751 e!381175)))

(declare-fun lt!309879 () List!12774)

(declare-fun contains!3317 (List!12774 (_ BitVec 64)) Bool)

(assert (=> b!665013 (= res!432751 (contains!3317 lt!309879 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665014 () Bool)

(declare-fun e!381178 () Unit!23195)

(declare-fun Unit!23198 () Unit!23195)

(assert (=> b!665014 (= e!381178 Unit!23198)))

(declare-fun b!665015 () Bool)

(declare-fun lt!309877 () Unit!23195)

(assert (=> b!665015 (= e!381178 lt!309877)))

(declare-fun lt!309881 () Unit!23195)

(declare-fun acc!681 () List!12774)

(declare-fun lemmaListSubSeqRefl!0 (List!12774) Unit!23195)

(assert (=> b!665015 (= lt!309881 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!55 (List!12774 List!12774) Bool)

(assert (=> b!665015 (subseq!55 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38983 List!12774 List!12774 (_ BitVec 32)) Unit!23195)

(declare-fun $colon$colon!186 (List!12774 (_ BitVec 64)) List!12774)

(assert (=> b!665015 (= lt!309877 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!186 acc!681 (select (arr!18680 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665015 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!665016 () Bool)

(declare-fun res!432750 () Bool)

(assert (=> b!665016 (=> res!432750 e!381175)))

(declare-fun lt!309876 () Bool)

(assert (=> b!665016 (= res!432750 lt!309876)))

(declare-fun b!665017 () Bool)

(declare-fun res!432753 () Bool)

(assert (=> b!665017 (=> (not res!432753) (not e!381177))))

(assert (=> b!665017 (= res!432753 (not (contains!3317 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665018 () Bool)

(declare-fun e!381173 () Bool)

(assert (=> b!665018 (= e!381173 (not (contains!3317 acc!681 k!2843)))))

(declare-fun b!665019 () Bool)

(declare-fun Unit!23199 () Unit!23195)

(assert (=> b!665019 (= e!381176 Unit!23199)))

(declare-fun b!665020 () Bool)

(declare-fun e!381171 () Bool)

(assert (=> b!665020 (= e!381171 e!381173)))

(declare-fun res!432761 () Bool)

(assert (=> b!665020 (=> (not res!432761) (not e!381173))))

(assert (=> b!665020 (= res!432761 (bvsle from!3004 i!1382))))

(declare-fun b!665021 () Bool)

(declare-fun res!432763 () Bool)

(assert (=> b!665021 (=> (not res!432763) (not e!381177))))

(assert (=> b!665021 (= res!432763 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19044 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!665022 () Bool)

(declare-fun e!381172 () Bool)

(assert (=> b!665022 (= e!381172 (contains!3317 acc!681 k!2843))))

(declare-fun b!665023 () Bool)

(declare-fun res!432762 () Bool)

(assert (=> b!665023 (=> (not res!432762) (not e!381177))))

(declare-fun noDuplicate!564 (List!12774) Bool)

(assert (=> b!665023 (= res!432762 (noDuplicate!564 acc!681))))

(declare-fun b!665024 () Bool)

(declare-fun res!432747 () Bool)

(assert (=> b!665024 (=> res!432747 e!381175)))

(assert (=> b!665024 (= res!432747 (contains!3317 acc!681 k!2843))))

(declare-fun b!665025 () Bool)

(declare-fun res!432748 () Bool)

(assert (=> b!665025 (=> res!432748 e!381175)))

(assert (=> b!665025 (= res!432748 (not (subseq!55 acc!681 lt!309879)))))

(declare-fun b!665026 () Bool)

(declare-fun res!432766 () Bool)

(assert (=> b!665026 (=> (not res!432766) (not e!381177))))

(assert (=> b!665026 (= res!432766 e!381171)))

(declare-fun res!432758 () Bool)

(assert (=> b!665026 (=> res!432758 e!381171)))

(assert (=> b!665026 (= res!432758 e!381172)))

(declare-fun res!432757 () Bool)

(assert (=> b!665026 (=> (not res!432757) (not e!381172))))

(assert (=> b!665026 (= res!432757 (bvsgt from!3004 i!1382))))

(declare-fun b!665027 () Bool)

(assert (=> b!665027 (= e!381175 true)))

(declare-fun lt!309878 () Bool)

(assert (=> b!665027 (= lt!309878 (contains!3317 lt!309879 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665028 () Bool)

(declare-fun res!432752 () Bool)

(assert (=> b!665028 (=> (not res!432752) (not e!381177))))

(assert (=> b!665028 (= res!432752 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665029 () Bool)

(assert (=> b!665029 (= e!381177 (not e!381175))))

(declare-fun res!432756 () Bool)

(assert (=> b!665029 (=> res!432756 e!381175)))

(assert (=> b!665029 (= res!432756 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!53 (List!12774 (_ BitVec 64)) List!12774)

(assert (=> b!665029 (= (-!53 lt!309879 k!2843) acc!681)))

(assert (=> b!665029 (= lt!309879 ($colon$colon!186 acc!681 k!2843))))

(declare-fun lt!309873 () Unit!23195)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12774) Unit!23195)

(assert (=> b!665029 (= lt!309873 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!665029 (subseq!55 acc!681 acc!681)))

(declare-fun lt!309874 () Unit!23195)

(assert (=> b!665029 (= lt!309874 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665029 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309882 () Unit!23195)

(assert (=> b!665029 (= lt!309882 e!381178)))

(declare-fun c!76499 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665029 (= c!76499 (validKeyInArray!0 (select (arr!18680 a!3626) from!3004)))))

(declare-fun lt!309875 () Unit!23195)

(assert (=> b!665029 (= lt!309875 e!381176)))

(declare-fun c!76498 () Bool)

(assert (=> b!665029 (= c!76498 lt!309876)))

(assert (=> b!665029 (= lt!309876 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665029 (arrayContainsKey!0 (array!38984 (store (arr!18680 a!3626) i!1382 k!2843) (size!19044 a!3626)) k!2843 from!3004)))

(declare-fun b!665030 () Bool)

(declare-fun res!432764 () Bool)

(assert (=> b!665030 (=> res!432764 e!381175)))

(assert (=> b!665030 (= res!432764 (not (contains!3317 lt!309879 k!2843)))))

(declare-fun b!665031 () Bool)

(declare-fun res!432755 () Bool)

(assert (=> b!665031 (=> (not res!432755) (not e!381177))))

(assert (=> b!665031 (= res!432755 (validKeyInArray!0 k!2843))))

(declare-fun b!665032 () Bool)

(declare-fun res!432765 () Bool)

(assert (=> b!665032 (=> res!432765 e!381175)))

(assert (=> b!665032 (= res!432765 (not (noDuplicate!564 lt!309879)))))

(declare-fun b!665033 () Bool)

(declare-fun res!432759 () Bool)

(assert (=> b!665033 (=> (not res!432759) (not e!381177))))

(assert (=> b!665033 (= res!432759 (not (contains!3317 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59980 res!432767) b!665023))

(assert (= (and b!665023 res!432762) b!665033))

(assert (= (and b!665033 res!432759) b!665017))

(assert (= (and b!665017 res!432753) b!665026))

(assert (= (and b!665026 res!432757) b!665022))

(assert (= (and b!665026 (not res!432758)) b!665020))

(assert (= (and b!665020 res!432761) b!665018))

(assert (= (and b!665026 res!432766) b!665011))

(assert (= (and b!665011 res!432749) b!665028))

(assert (= (and b!665028 res!432752) b!665009))

(assert (= (and b!665009 res!432754) b!665031))

(assert (= (and b!665031 res!432755) b!665010))

(assert (= (and b!665010 res!432760) b!665021))

(assert (= (and b!665021 res!432763) b!665029))

(assert (= (and b!665029 c!76498) b!665012))

(assert (= (and b!665029 (not c!76498)) b!665019))

(assert (= (and b!665029 c!76499) b!665015))

(assert (= (and b!665029 (not c!76499)) b!665014))

(assert (= (and b!665029 (not res!432756)) b!665032))

(assert (= (and b!665032 (not res!432765)) b!665016))

(assert (= (and b!665016 (not res!432750)) b!665024))

(assert (= (and b!665024 (not res!432747)) b!665025))

(assert (= (and b!665025 (not res!432748)) b!665030))

(assert (= (and b!665030 (not res!432764)) b!665013))

(assert (= (and b!665013 (not res!432751)) b!665027))

(declare-fun m!636187 () Bool)

(assert (=> start!59980 m!636187))

(declare-fun m!636189 () Bool)

(assert (=> b!665024 m!636189))

(declare-fun m!636191 () Bool)

(assert (=> b!665017 m!636191))

(declare-fun m!636193 () Bool)

(assert (=> b!665023 m!636193))

(declare-fun m!636195 () Bool)

(assert (=> b!665011 m!636195))

(declare-fun m!636197 () Bool)

(assert (=> b!665025 m!636197))

(declare-fun m!636199 () Bool)

(assert (=> b!665027 m!636199))

(assert (=> b!665022 m!636189))

(declare-fun m!636201 () Bool)

(assert (=> b!665013 m!636201))

(declare-fun m!636203 () Bool)

(assert (=> b!665033 m!636203))

(declare-fun m!636205 () Bool)

(assert (=> b!665028 m!636205))

(declare-fun m!636207 () Bool)

(assert (=> b!665010 m!636207))

(declare-fun m!636209 () Bool)

(assert (=> b!665031 m!636209))

(assert (=> b!665018 m!636189))

(declare-fun m!636211 () Bool)

(assert (=> b!665029 m!636211))

(declare-fun m!636213 () Bool)

(assert (=> b!665029 m!636213))

(declare-fun m!636215 () Bool)

(assert (=> b!665029 m!636215))

(declare-fun m!636217 () Bool)

(assert (=> b!665029 m!636217))

(declare-fun m!636219 () Bool)

(assert (=> b!665029 m!636219))

(declare-fun m!636221 () Bool)

(assert (=> b!665029 m!636221))

(declare-fun m!636223 () Bool)

(assert (=> b!665029 m!636223))

(declare-fun m!636225 () Bool)

(assert (=> b!665029 m!636225))

(assert (=> b!665029 m!636215))

(declare-fun m!636227 () Bool)

(assert (=> b!665029 m!636227))

(declare-fun m!636229 () Bool)

(assert (=> b!665029 m!636229))

(declare-fun m!636231 () Bool)

(assert (=> b!665029 m!636231))

(declare-fun m!636233 () Bool)

(assert (=> b!665030 m!636233))

(declare-fun m!636235 () Bool)

(assert (=> b!665012 m!636235))

(declare-fun m!636237 () Bool)

(assert (=> b!665032 m!636237))

(assert (=> b!665015 m!636211))

(assert (=> b!665015 m!636215))

(declare-fun m!636239 () Bool)

(assert (=> b!665015 m!636239))

(declare-fun m!636241 () Bool)

(assert (=> b!665015 m!636241))

(assert (=> b!665015 m!636215))

(assert (=> b!665015 m!636239))

(assert (=> b!665015 m!636221))

(assert (=> b!665015 m!636231))

(push 1)

(assert (not start!59980))

(assert (not b!665027))

(assert (not b!665032))

(assert (not b!665018))

(assert (not b!665012))

(assert (not b!665025))

(assert (not b!665017))

(assert (not b!665024))

(assert (not b!665010))

(assert (not b!665023))

(assert (not b!665013))

(assert (not b!665030))

(assert (not b!665015))

(assert (not b!665031))

(assert (not b!665022))

(assert (not b!665033))

(assert (not b!665028))

(assert (not b!665029))

(assert (not b!665011))

(check-sat)

