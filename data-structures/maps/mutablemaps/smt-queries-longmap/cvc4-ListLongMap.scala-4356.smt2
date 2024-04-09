; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60184 () Bool)

(assert start!60184)

(declare-fun b!671965 () Bool)

(declare-fun res!438806 () Bool)

(declare-fun e!383922 () Bool)

(assert (=> b!671965 (=> (not res!438806) (not e!383922))))

(declare-fun e!383919 () Bool)

(assert (=> b!671965 (= res!438806 e!383919)))

(declare-fun res!438796 () Bool)

(assert (=> b!671965 (=> res!438796 e!383919)))

(declare-fun e!383921 () Bool)

(assert (=> b!671965 (= res!438796 e!383921)))

(declare-fun res!438800 () Bool)

(assert (=> b!671965 (=> (not res!438800) (not e!383921))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!671965 (= res!438800 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671966 () Bool)

(declare-fun e!383916 () Bool)

(declare-fun e!383915 () Bool)

(assert (=> b!671966 (= e!383916 e!383915)))

(declare-fun res!438786 () Bool)

(assert (=> b!671966 (=> (not res!438786) (not e!383915))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39187 0))(
  ( (array!39188 (arr!18782 (Array (_ BitVec 32) (_ BitVec 64))) (size!19146 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39187)

(assert (=> b!671966 (= res!438786 (not (= (select (arr!18782 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!23592 0))(
  ( (Unit!23593) )
))
(declare-fun lt!312212 () Unit!23592)

(declare-fun e!383918 () Unit!23592)

(assert (=> b!671966 (= lt!312212 e!383918)))

(declare-fun c!76958 () Bool)

(assert (=> b!671966 (= c!76958 (= (select (arr!18782 a!3626) from!3004) k!2843))))

(declare-fun b!671967 () Bool)

(declare-fun res!438789 () Bool)

(assert (=> b!671967 (=> (not res!438789) (not e!383916))))

(declare-datatypes ((List!12876 0))(
  ( (Nil!12873) (Cons!12872 (h!13917 (_ BitVec 64)) (t!19112 List!12876)) )
))
(declare-fun acc!681 () List!12876)

(declare-fun contains!3419 (List!12876 (_ BitVec 64)) Bool)

(assert (=> b!671967 (= res!438789 (not (contains!3419 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671968 () Bool)

(declare-fun Unit!23594 () Unit!23592)

(assert (=> b!671968 (= e!383918 Unit!23594)))

(declare-fun arrayContainsKey!0 (array!39187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!671968 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312211 () Unit!23592)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39187 (_ BitVec 64) (_ BitVec 32)) Unit!23592)

(assert (=> b!671968 (= lt!312211 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!671968 false))

(declare-fun b!671969 () Bool)

(declare-fun e!383917 () Bool)

(assert (=> b!671969 (= e!383917 (contains!3419 acc!681 k!2843))))

(declare-fun b!671970 () Bool)

(declare-fun res!438801 () Bool)

(assert (=> b!671970 (=> (not res!438801) (not e!383916))))

(assert (=> b!671970 (= res!438801 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!671971 () Bool)

(declare-fun lt!312213 () List!12876)

(assert (=> b!671971 (= e!383921 (contains!3419 lt!312213 k!2843))))

(declare-fun b!671972 () Bool)

(declare-fun e!383914 () Bool)

(declare-fun e!383913 () Bool)

(assert (=> b!671972 (= e!383914 e!383913)))

(declare-fun res!438794 () Bool)

(assert (=> b!671972 (=> (not res!438794) (not e!383913))))

(assert (=> b!671972 (= res!438794 (bvsle from!3004 i!1382))))

(declare-fun b!671973 () Bool)

(declare-fun res!438785 () Bool)

(assert (=> b!671973 (=> (not res!438785) (not e!383916))))

(declare-fun arrayNoDuplicates!0 (array!39187 (_ BitVec 32) List!12876) Bool)

(assert (=> b!671973 (= res!438785 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12873))))

(declare-fun b!671974 () Bool)

(declare-fun res!438798 () Bool)

(assert (=> b!671974 (=> (not res!438798) (not e!383922))))

(declare-fun noDuplicate!666 (List!12876) Bool)

(assert (=> b!671974 (= res!438798 (noDuplicate!666 lt!312213))))

(declare-fun b!671975 () Bool)

(assert (=> b!671975 (= e!383922 false)))

(declare-fun lt!312210 () Bool)

(assert (=> b!671975 (= lt!312210 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312213))))

(declare-fun b!671976 () Bool)

(declare-fun Unit!23595 () Unit!23592)

(assert (=> b!671976 (= e!383918 Unit!23595)))

(declare-fun b!671977 () Bool)

(declare-fun res!438803 () Bool)

(assert (=> b!671977 (=> (not res!438803) (not e!383916))))

(assert (=> b!671977 (= res!438803 e!383914)))

(declare-fun res!438787 () Bool)

(assert (=> b!671977 (=> res!438787 e!383914)))

(assert (=> b!671977 (= res!438787 e!383917)))

(declare-fun res!438783 () Bool)

(assert (=> b!671977 (=> (not res!438783) (not e!383917))))

(assert (=> b!671977 (= res!438783 (bvsgt from!3004 i!1382))))

(declare-fun b!671978 () Bool)

(declare-fun res!438788 () Bool)

(assert (=> b!671978 (=> (not res!438788) (not e!383916))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!671978 (= res!438788 (validKeyInArray!0 (select (arr!18782 a!3626) from!3004)))))

(declare-fun b!671979 () Bool)

(declare-fun res!438802 () Bool)

(assert (=> b!671979 (=> (not res!438802) (not e!383916))))

(assert (=> b!671979 (= res!438802 (validKeyInArray!0 k!2843))))

(declare-fun b!671980 () Bool)

(declare-fun res!438795 () Bool)

(assert (=> b!671980 (=> (not res!438795) (not e!383922))))

(assert (=> b!671980 (= res!438795 (not (contains!3419 lt!312213 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671981 () Bool)

(declare-fun e!383923 () Bool)

(assert (=> b!671981 (= e!383923 (not (contains!3419 lt!312213 k!2843)))))

(declare-fun b!671982 () Bool)

(declare-fun res!438790 () Bool)

(assert (=> b!671982 (=> (not res!438790) (not e!383916))))

(assert (=> b!671982 (= res!438790 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19146 a!3626))))))

(declare-fun b!671983 () Bool)

(assert (=> b!671983 (= e!383919 e!383923)))

(declare-fun res!438784 () Bool)

(assert (=> b!671983 (=> (not res!438784) (not e!383923))))

(assert (=> b!671983 (= res!438784 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!671984 () Bool)

(declare-fun res!438791 () Bool)

(assert (=> b!671984 (=> (not res!438791) (not e!383916))))

(assert (=> b!671984 (= res!438791 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19146 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!671985 () Bool)

(assert (=> b!671985 (= e!383915 e!383922)))

(declare-fun res!438805 () Bool)

(assert (=> b!671985 (=> (not res!438805) (not e!383922))))

(assert (=> b!671985 (= res!438805 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!267 (List!12876 (_ BitVec 64)) List!12876)

(assert (=> b!671985 (= lt!312213 ($colon$colon!267 acc!681 (select (arr!18782 a!3626) from!3004)))))

(declare-fun b!671986 () Bool)

(declare-fun res!438797 () Bool)

(assert (=> b!671986 (=> (not res!438797) (not e!383922))))

(assert (=> b!671986 (= res!438797 (not (contains!3419 lt!312213 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671987 () Bool)

(declare-fun res!438799 () Bool)

(assert (=> b!671987 (=> (not res!438799) (not e!383916))))

(assert (=> b!671987 (= res!438799 (not (contains!3419 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!671988 () Bool)

(assert (=> b!671988 (= e!383913 (not (contains!3419 acc!681 k!2843)))))

(declare-fun b!671989 () Bool)

(declare-fun res!438793 () Bool)

(assert (=> b!671989 (=> (not res!438793) (not e!383916))))

(assert (=> b!671989 (= res!438793 (noDuplicate!666 acc!681))))

(declare-fun b!671990 () Bool)

(declare-fun res!438804 () Bool)

(assert (=> b!671990 (=> (not res!438804) (not e!383916))))

(assert (=> b!671990 (= res!438804 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!438792 () Bool)

(assert (=> start!60184 (=> (not res!438792) (not e!383916))))

(assert (=> start!60184 (= res!438792 (and (bvslt (size!19146 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19146 a!3626))))))

(assert (=> start!60184 e!383916))

(assert (=> start!60184 true))

(declare-fun array_inv!14556 (array!39187) Bool)

(assert (=> start!60184 (array_inv!14556 a!3626)))

(assert (= (and start!60184 res!438792) b!671989))

(assert (= (and b!671989 res!438793) b!671967))

(assert (= (and b!671967 res!438789) b!671987))

(assert (= (and b!671987 res!438799) b!671977))

(assert (= (and b!671977 res!438783) b!671969))

(assert (= (and b!671977 (not res!438787)) b!671972))

(assert (= (and b!671972 res!438794) b!671988))

(assert (= (and b!671977 res!438803) b!671973))

(assert (= (and b!671973 res!438785) b!671990))

(assert (= (and b!671990 res!438804) b!671982))

(assert (= (and b!671982 res!438790) b!671979))

(assert (= (and b!671979 res!438802) b!671970))

(assert (= (and b!671970 res!438801) b!671984))

(assert (= (and b!671984 res!438791) b!671978))

(assert (= (and b!671978 res!438788) b!671966))

(assert (= (and b!671966 c!76958) b!671968))

(assert (= (and b!671966 (not c!76958)) b!671976))

(assert (= (and b!671966 res!438786) b!671985))

(assert (= (and b!671985 res!438805) b!671974))

(assert (= (and b!671974 res!438798) b!671986))

(assert (= (and b!671986 res!438797) b!671980))

(assert (= (and b!671980 res!438795) b!671965))

(assert (= (and b!671965 res!438800) b!671971))

(assert (= (and b!671965 (not res!438796)) b!671983))

(assert (= (and b!671983 res!438784) b!671981))

(assert (= (and b!671965 res!438806) b!671975))

(declare-fun m!641131 () Bool)

(assert (=> b!671966 m!641131))

(declare-fun m!641133 () Bool)

(assert (=> b!671986 m!641133))

(declare-fun m!641135 () Bool)

(assert (=> b!671988 m!641135))

(declare-fun m!641137 () Bool)

(assert (=> b!671980 m!641137))

(declare-fun m!641139 () Bool)

(assert (=> b!671970 m!641139))

(declare-fun m!641141 () Bool)

(assert (=> b!671967 m!641141))

(declare-fun m!641143 () Bool)

(assert (=> b!671979 m!641143))

(declare-fun m!641145 () Bool)

(assert (=> b!671990 m!641145))

(assert (=> b!671969 m!641135))

(declare-fun m!641147 () Bool)

(assert (=> b!671989 m!641147))

(declare-fun m!641149 () Bool)

(assert (=> b!671987 m!641149))

(declare-fun m!641151 () Bool)

(assert (=> b!671971 m!641151))

(declare-fun m!641153 () Bool)

(assert (=> b!671973 m!641153))

(assert (=> b!671985 m!641131))

(assert (=> b!671985 m!641131))

(declare-fun m!641155 () Bool)

(assert (=> b!671985 m!641155))

(assert (=> b!671981 m!641151))

(declare-fun m!641157 () Bool)

(assert (=> b!671975 m!641157))

(declare-fun m!641159 () Bool)

(assert (=> start!60184 m!641159))

(declare-fun m!641161 () Bool)

(assert (=> b!671968 m!641161))

(declare-fun m!641163 () Bool)

(assert (=> b!671968 m!641163))

(declare-fun m!641165 () Bool)

(assert (=> b!671974 m!641165))

(assert (=> b!671978 m!641131))

(assert (=> b!671978 m!641131))

(declare-fun m!641167 () Bool)

(assert (=> b!671978 m!641167))

(push 1)

