; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60084 () Bool)

(assert start!60084)

(declare-fun b!668909 () Bool)

(declare-fun res!436037 () Bool)

(declare-fun e!382644 () Bool)

(assert (=> b!668909 (=> (not res!436037) (not e!382644))))

(declare-datatypes ((array!39087 0))(
  ( (array!39088 (arr!18732 (Array (_ BitVec 32) (_ BitVec 64))) (size!19096 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39087)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668909 (= res!436037 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!668910 () Bool)

(declare-fun res!436026 () Bool)

(declare-fun e!382649 () Bool)

(assert (=> b!668910 (=> res!436026 e!382649)))

(declare-datatypes ((List!12826 0))(
  ( (Nil!12823) (Cons!12822 (h!13867 (_ BitVec 64)) (t!19062 List!12826)) )
))
(declare-fun lt!311438 () List!12826)

(declare-fun noDuplicate!616 (List!12826) Bool)

(assert (=> b!668910 (= res!436026 (not (noDuplicate!616 lt!311438)))))

(declare-fun b!668911 () Bool)

(declare-fun res!436024 () Bool)

(assert (=> b!668911 (=> (not res!436024) (not e!382644))))

(declare-fun arrayNoDuplicates!0 (array!39087 (_ BitVec 32) List!12826) Bool)

(assert (=> b!668911 (= res!436024 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12823))))

(declare-fun b!668912 () Bool)

(declare-fun res!436033 () Bool)

(assert (=> b!668912 (=> res!436033 e!382649)))

(declare-fun contains!3369 (List!12826 (_ BitVec 64)) Bool)

(assert (=> b!668912 (= res!436033 (contains!3369 lt!311438 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668913 () Bool)

(declare-fun res!436023 () Bool)

(assert (=> b!668913 (=> (not res!436023) (not e!382644))))

(declare-fun acc!681 () List!12826)

(assert (=> b!668913 (= res!436023 (not (contains!3369 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668914 () Bool)

(declare-datatypes ((Unit!23455 0))(
  ( (Unit!23456) )
))
(declare-fun e!382647 () Unit!23455)

(declare-fun lt!311434 () Unit!23455)

(assert (=> b!668914 (= e!382647 lt!311434)))

(declare-fun lt!311442 () Unit!23455)

(declare-fun lemmaListSubSeqRefl!0 (List!12826) Unit!23455)

(assert (=> b!668914 (= lt!311442 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!107 (List!12826 List!12826) Bool)

(assert (=> b!668914 (subseq!107 acc!681 acc!681)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39087 List!12826 List!12826 (_ BitVec 32)) Unit!23455)

(declare-fun $colon$colon!238 (List!12826 (_ BitVec 64)) List!12826)

(assert (=> b!668914 (= lt!311434 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!238 acc!681 (select (arr!18732 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668914 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668915 () Bool)

(declare-fun e!382643 () Bool)

(assert (=> b!668915 (= e!382643 (contains!3369 acc!681 k!2843))))

(declare-fun b!668916 () Bool)

(declare-fun e!382651 () Bool)

(assert (=> b!668916 (= e!382651 (not (contains!3369 acc!681 k!2843)))))

(declare-fun b!668917 () Bool)

(declare-fun res!436038 () Bool)

(assert (=> b!668917 (=> (not res!436038) (not e!382644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668917 (= res!436038 (validKeyInArray!0 k!2843))))

(declare-fun b!668918 () Bool)

(declare-fun res!436029 () Bool)

(assert (=> b!668918 (=> res!436029 e!382649)))

(assert (=> b!668918 (= res!436029 (contains!3369 lt!311438 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668919 () Bool)

(declare-fun e!382648 () Bool)

(declare-fun e!382641 () Bool)

(assert (=> b!668919 (= e!382648 e!382641)))

(declare-fun res!436043 () Bool)

(assert (=> b!668919 (=> (not res!436043) (not e!382641))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!668919 (= res!436043 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668920 () Bool)

(declare-fun res!436032 () Bool)

(assert (=> b!668920 (=> (not res!436032) (not e!382644))))

(assert (=> b!668920 (= res!436032 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19096 a!3626))))))

(declare-fun b!668921 () Bool)

(declare-fun res!436034 () Bool)

(assert (=> b!668921 (=> (not res!436034) (not e!382644))))

(assert (=> b!668921 (= res!436034 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!668922 () Bool)

(declare-fun e!382646 () Bool)

(assert (=> b!668922 (= e!382646 e!382651)))

(declare-fun res!436028 () Bool)

(assert (=> b!668922 (=> (not res!436028) (not e!382651))))

(assert (=> b!668922 (= res!436028 (bvsle from!3004 i!1382))))

(declare-fun b!668924 () Bool)

(declare-fun res!436031 () Bool)

(assert (=> b!668924 (=> (not res!436031) (not e!382644))))

(assert (=> b!668924 (= res!436031 (noDuplicate!616 acc!681))))

(declare-fun b!668925 () Bool)

(declare-fun res!436035 () Bool)

(assert (=> b!668925 (=> (not res!436035) (not e!382644))))

(assert (=> b!668925 (= res!436035 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19096 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!668926 () Bool)

(assert (=> b!668926 (= e!382641 (not (contains!3369 lt!311438 k!2843)))))

(declare-fun b!668927 () Bool)

(declare-fun res!436041 () Bool)

(assert (=> b!668927 (=> (not res!436041) (not e!382644))))

(assert (=> b!668927 (= res!436041 (not (contains!3369 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668928 () Bool)

(assert (=> b!668928 (= e!382649 true)))

(declare-fun lt!311437 () Bool)

(assert (=> b!668928 (= lt!311437 e!382648)))

(declare-fun res!436040 () Bool)

(assert (=> b!668928 (=> res!436040 e!382648)))

(declare-fun e!382642 () Bool)

(assert (=> b!668928 (= res!436040 e!382642)))

(declare-fun res!436030 () Bool)

(assert (=> b!668928 (=> (not res!436030) (not e!382642))))

(assert (=> b!668928 (= res!436030 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668929 () Bool)

(declare-fun Unit!23457 () Unit!23455)

(assert (=> b!668929 (= e!382647 Unit!23457)))

(declare-fun b!668930 () Bool)

(assert (=> b!668930 (= e!382644 (not e!382649))))

(declare-fun res!436042 () Bool)

(assert (=> b!668930 (=> res!436042 e!382649)))

(assert (=> b!668930 (= res!436042 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!668930 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311438)))

(declare-fun lt!311440 () Unit!23455)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39087 (_ BitVec 64) (_ BitVec 32) List!12826 List!12826) Unit!23455)

(assert (=> b!668930 (= lt!311440 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311438))))

(declare-fun -!105 (List!12826 (_ BitVec 64)) List!12826)

(assert (=> b!668930 (= (-!105 lt!311438 k!2843) acc!681)))

(assert (=> b!668930 (= lt!311438 ($colon$colon!238 acc!681 k!2843))))

(declare-fun lt!311433 () Unit!23455)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12826) Unit!23455)

(assert (=> b!668930 (= lt!311433 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!668930 (subseq!107 acc!681 acc!681)))

(declare-fun lt!311435 () Unit!23455)

(assert (=> b!668930 (= lt!311435 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668930 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311441 () Unit!23455)

(assert (=> b!668930 (= lt!311441 e!382647)))

(declare-fun c!76810 () Bool)

(assert (=> b!668930 (= c!76810 (validKeyInArray!0 (select (arr!18732 a!3626) from!3004)))))

(declare-fun lt!311439 () Unit!23455)

(declare-fun e!382650 () Unit!23455)

(assert (=> b!668930 (= lt!311439 e!382650)))

(declare-fun c!76811 () Bool)

(assert (=> b!668930 (= c!76811 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668930 (arrayContainsKey!0 (array!39088 (store (arr!18732 a!3626) i!1382 k!2843) (size!19096 a!3626)) k!2843 from!3004)))

(declare-fun b!668931 () Bool)

(declare-fun res!436039 () Bool)

(assert (=> b!668931 (=> (not res!436039) (not e!382644))))

(assert (=> b!668931 (= res!436039 e!382646)))

(declare-fun res!436036 () Bool)

(assert (=> b!668931 (=> res!436036 e!382646)))

(assert (=> b!668931 (= res!436036 e!382643)))

(declare-fun res!436027 () Bool)

(assert (=> b!668931 (=> (not res!436027) (not e!382643))))

(assert (=> b!668931 (= res!436027 (bvsgt from!3004 i!1382))))

(declare-fun res!436025 () Bool)

(assert (=> start!60084 (=> (not res!436025) (not e!382644))))

(assert (=> start!60084 (= res!436025 (and (bvslt (size!19096 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19096 a!3626))))))

(assert (=> start!60084 e!382644))

(assert (=> start!60084 true))

(declare-fun array_inv!14506 (array!39087) Bool)

(assert (=> start!60084 (array_inv!14506 a!3626)))

(declare-fun b!668923 () Bool)

(declare-fun Unit!23458 () Unit!23455)

(assert (=> b!668923 (= e!382650 Unit!23458)))

(declare-fun lt!311436 () Unit!23455)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39087 (_ BitVec 64) (_ BitVec 32)) Unit!23455)

(assert (=> b!668923 (= lt!311436 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!668923 false))

(declare-fun b!668932 () Bool)

(declare-fun Unit!23459 () Unit!23455)

(assert (=> b!668932 (= e!382650 Unit!23459)))

(declare-fun b!668933 () Bool)

(assert (=> b!668933 (= e!382642 (contains!3369 lt!311438 k!2843))))

(assert (= (and start!60084 res!436025) b!668924))

(assert (= (and b!668924 res!436031) b!668913))

(assert (= (and b!668913 res!436023) b!668927))

(assert (= (and b!668927 res!436041) b!668931))

(assert (= (and b!668931 res!436027) b!668915))

(assert (= (and b!668931 (not res!436036)) b!668922))

(assert (= (and b!668922 res!436028) b!668916))

(assert (= (and b!668931 res!436039) b!668911))

(assert (= (and b!668911 res!436024) b!668921))

(assert (= (and b!668921 res!436034) b!668920))

(assert (= (and b!668920 res!436032) b!668917))

(assert (= (and b!668917 res!436038) b!668909))

(assert (= (and b!668909 res!436037) b!668925))

(assert (= (and b!668925 res!436035) b!668930))

(assert (= (and b!668930 c!76811) b!668923))

(assert (= (and b!668930 (not c!76811)) b!668932))

(assert (= (and b!668930 c!76810) b!668914))

(assert (= (and b!668930 (not c!76810)) b!668929))

(assert (= (and b!668930 (not res!436042)) b!668910))

(assert (= (and b!668910 (not res!436026)) b!668912))

(assert (= (and b!668912 (not res!436033)) b!668918))

(assert (= (and b!668918 (not res!436029)) b!668928))

(assert (= (and b!668928 res!436030) b!668933))

(assert (= (and b!668928 (not res!436040)) b!668919))

(assert (= (and b!668919 res!436043) b!668926))

(declare-fun m!639147 () Bool)

(assert (=> b!668918 m!639147))

(declare-fun m!639149 () Bool)

(assert (=> b!668930 m!639149))

(declare-fun m!639151 () Bool)

(assert (=> b!668930 m!639151))

(declare-fun m!639153 () Bool)

(assert (=> b!668930 m!639153))

(declare-fun m!639155 () Bool)

(assert (=> b!668930 m!639155))

(declare-fun m!639157 () Bool)

(assert (=> b!668930 m!639157))

(declare-fun m!639159 () Bool)

(assert (=> b!668930 m!639159))

(assert (=> b!668930 m!639151))

(declare-fun m!639161 () Bool)

(assert (=> b!668930 m!639161))

(declare-fun m!639163 () Bool)

(assert (=> b!668930 m!639163))

(declare-fun m!639165 () Bool)

(assert (=> b!668930 m!639165))

(declare-fun m!639167 () Bool)

(assert (=> b!668930 m!639167))

(declare-fun m!639169 () Bool)

(assert (=> b!668930 m!639169))

(declare-fun m!639171 () Bool)

(assert (=> b!668930 m!639171))

(declare-fun m!639173 () Bool)

(assert (=> b!668930 m!639173))

(assert (=> b!668914 m!639163))

(assert (=> b!668914 m!639151))

(declare-fun m!639175 () Bool)

(assert (=> b!668914 m!639175))

(declare-fun m!639177 () Bool)

(assert (=> b!668914 m!639177))

(assert (=> b!668914 m!639151))

(assert (=> b!668914 m!639175))

(assert (=> b!668914 m!639157))

(assert (=> b!668914 m!639173))

(declare-fun m!639179 () Bool)

(assert (=> b!668911 m!639179))

(declare-fun m!639181 () Bool)

(assert (=> b!668910 m!639181))

(declare-fun m!639183 () Bool)

(assert (=> b!668923 m!639183))

(declare-fun m!639185 () Bool)

(assert (=> b!668921 m!639185))

(declare-fun m!639187 () Bool)

(assert (=> b!668909 m!639187))

(declare-fun m!639189 () Bool)

(assert (=> b!668915 m!639189))

(declare-fun m!639191 () Bool)

(assert (=> b!668924 m!639191))

(declare-fun m!639193 () Bool)

(assert (=> b!668926 m!639193))

(declare-fun m!639195 () Bool)

(assert (=> b!668917 m!639195))

(assert (=> b!668933 m!639193))

(declare-fun m!639197 () Bool)

(assert (=> b!668927 m!639197))

(declare-fun m!639199 () Bool)

(assert (=> b!668912 m!639199))

(declare-fun m!639201 () Bool)

(assert (=> start!60084 m!639201))

(declare-fun m!639203 () Bool)

(assert (=> b!668913 m!639203))

(assert (=> b!668916 m!639189))

(push 1)

(assert (not b!668913))

(assert (not b!668924))

(assert (not b!668911))

(assert (not b!668923))

(assert (not b!668921))

(assert (not b!668915))

(assert (not b!668914))

(assert (not b!668910))

(assert (not start!60084))

(assert (not b!668933))

(assert (not b!668909))

(assert (not b!668918))

(assert (not b!668917))

(assert (not b!668927))

(assert (not b!668926))

(assert (not b!668912))

(assert (not b!668930))

(assert (not b!668916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

