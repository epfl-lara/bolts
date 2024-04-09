; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60214 () Bool)

(assert start!60214)

(declare-fun b!673135 () Bool)

(declare-fun res!439874 () Bool)

(declare-fun e!384411 () Bool)

(assert (=> b!673135 (=> (not res!439874) (not e!384411))))

(declare-datatypes ((array!39217 0))(
  ( (array!39218 (arr!18797 (Array (_ BitVec 32) (_ BitVec 64))) (size!19161 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39217)

(declare-datatypes ((List!12891 0))(
  ( (Nil!12888) (Cons!12887 (h!13932 (_ BitVec 64)) (t!19127 List!12891)) )
))
(declare-fun arrayNoDuplicates!0 (array!39217 (_ BitVec 32) List!12891) Bool)

(assert (=> b!673135 (= res!439874 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12888))))

(declare-fun b!673136 () Bool)

(declare-fun res!439882 () Bool)

(assert (=> b!673136 (=> (not res!439882) (not e!384411))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!673136 (= res!439882 (validKeyInArray!0 k!2843))))

(declare-fun b!673137 () Bool)

(declare-fun e!384417 () Bool)

(declare-fun e!384408 () Bool)

(assert (=> b!673137 (= e!384417 e!384408)))

(declare-fun res!439877 () Bool)

(assert (=> b!673137 (=> (not res!439877) (not e!384408))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!673137 (= res!439877 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!312392 () List!12891)

(declare-fun acc!681 () List!12891)

(declare-fun $colon$colon!282 (List!12891 (_ BitVec 64)) List!12891)

(assert (=> b!673137 (= lt!312392 ($colon$colon!282 acc!681 (select (arr!18797 a!3626) from!3004)))))

(declare-fun b!673138 () Bool)

(declare-fun res!439872 () Bool)

(assert (=> b!673138 (=> (not res!439872) (not e!384411))))

(declare-fun noDuplicate!681 (List!12891) Bool)

(assert (=> b!673138 (= res!439872 (noDuplicate!681 acc!681))))

(declare-fun b!673139 () Bool)

(declare-fun res!439873 () Bool)

(assert (=> b!673139 (=> (not res!439873) (not e!384411))))

(declare-fun contains!3434 (List!12891 (_ BitVec 64)) Bool)

(assert (=> b!673139 (= res!439873 (not (contains!3434 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673140 () Bool)

(declare-fun res!439883 () Bool)

(assert (=> b!673140 (=> (not res!439883) (not e!384408))))

(declare-fun e!384413 () Bool)

(assert (=> b!673140 (= res!439883 e!384413)))

(declare-fun res!439879 () Bool)

(assert (=> b!673140 (=> res!439879 e!384413)))

(declare-fun e!384415 () Bool)

(assert (=> b!673140 (= res!439879 e!384415)))

(declare-fun res!439886 () Bool)

(assert (=> b!673140 (=> (not res!439886) (not e!384415))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!673140 (= res!439886 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673141 () Bool)

(assert (=> b!673141 (= e!384408 false)))

(declare-fun lt!312390 () Bool)

(assert (=> b!673141 (= lt!312390 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312392))))

(declare-fun b!673142 () Bool)

(declare-fun res!439866 () Bool)

(assert (=> b!673142 (=> (not res!439866) (not e!384411))))

(assert (=> b!673142 (= res!439866 (not (contains!3434 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673143 () Bool)

(assert (=> b!673143 (= e!384415 (contains!3434 lt!312392 k!2843))))

(declare-fun b!673144 () Bool)

(declare-fun e!384410 () Bool)

(assert (=> b!673144 (= e!384410 (contains!3434 acc!681 k!2843))))

(declare-fun b!673145 () Bool)

(declare-fun res!439876 () Bool)

(assert (=> b!673145 (=> (not res!439876) (not e!384408))))

(assert (=> b!673145 (= res!439876 (not (contains!3434 lt!312392 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673146 () Bool)

(declare-datatypes ((Unit!23652 0))(
  ( (Unit!23653) )
))
(declare-fun e!384412 () Unit!23652)

(declare-fun Unit!23654 () Unit!23652)

(assert (=> b!673146 (= e!384412 Unit!23654)))

(declare-fun arrayContainsKey!0 (array!39217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!673146 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312391 () Unit!23652)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39217 (_ BitVec 64) (_ BitVec 32)) Unit!23652)

(assert (=> b!673146 (= lt!312391 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!673146 false))

(declare-fun b!673147 () Bool)

(declare-fun e!384414 () Bool)

(declare-fun e!384418 () Bool)

(assert (=> b!673147 (= e!384414 e!384418)))

(declare-fun res!439863 () Bool)

(assert (=> b!673147 (=> (not res!439863) (not e!384418))))

(assert (=> b!673147 (= res!439863 (bvsle from!3004 i!1382))))

(declare-fun b!673148 () Bool)

(declare-fun res!439884 () Bool)

(assert (=> b!673148 (=> (not res!439884) (not e!384411))))

(assert (=> b!673148 (= res!439884 e!384414)))

(declare-fun res!439865 () Bool)

(assert (=> b!673148 (=> res!439865 e!384414)))

(assert (=> b!673148 (= res!439865 e!384410)))

(declare-fun res!439871 () Bool)

(assert (=> b!673148 (=> (not res!439871) (not e!384410))))

(assert (=> b!673148 (= res!439871 (bvsgt from!3004 i!1382))))

(declare-fun res!439878 () Bool)

(assert (=> start!60214 (=> (not res!439878) (not e!384411))))

(assert (=> start!60214 (= res!439878 (and (bvslt (size!19161 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19161 a!3626))))))

(assert (=> start!60214 e!384411))

(assert (=> start!60214 true))

(declare-fun array_inv!14571 (array!39217) Bool)

(assert (=> start!60214 (array_inv!14571 a!3626)))

(declare-fun b!673149 () Bool)

(declare-fun Unit!23655 () Unit!23652)

(assert (=> b!673149 (= e!384412 Unit!23655)))

(declare-fun b!673150 () Bool)

(assert (=> b!673150 (= e!384411 e!384417)))

(declare-fun res!439875 () Bool)

(assert (=> b!673150 (=> (not res!439875) (not e!384417))))

(assert (=> b!673150 (= res!439875 (not (= (select (arr!18797 a!3626) from!3004) k!2843)))))

(declare-fun lt!312393 () Unit!23652)

(assert (=> b!673150 (= lt!312393 e!384412)))

(declare-fun c!77003 () Bool)

(assert (=> b!673150 (= c!77003 (= (select (arr!18797 a!3626) from!3004) k!2843))))

(declare-fun b!673151 () Bool)

(declare-fun res!439868 () Bool)

(assert (=> b!673151 (=> (not res!439868) (not e!384411))))

(assert (=> b!673151 (= res!439868 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!673152 () Bool)

(declare-fun e!384409 () Bool)

(assert (=> b!673152 (= e!384413 e!384409)))

(declare-fun res!439864 () Bool)

(assert (=> b!673152 (=> (not res!439864) (not e!384409))))

(assert (=> b!673152 (= res!439864 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673153 () Bool)

(declare-fun res!439881 () Bool)

(assert (=> b!673153 (=> (not res!439881) (not e!384411))))

(assert (=> b!673153 (= res!439881 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19161 a!3626))))))

(declare-fun b!673154 () Bool)

(declare-fun res!439880 () Bool)

(assert (=> b!673154 (=> (not res!439880) (not e!384408))))

(assert (=> b!673154 (= res!439880 (noDuplicate!681 lt!312392))))

(declare-fun b!673155 () Bool)

(assert (=> b!673155 (= e!384409 (not (contains!3434 lt!312392 k!2843)))))

(declare-fun b!673156 () Bool)

(declare-fun res!439867 () Bool)

(assert (=> b!673156 (=> (not res!439867) (not e!384411))))

(assert (=> b!673156 (= res!439867 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!673157 () Bool)

(assert (=> b!673157 (= e!384418 (not (contains!3434 acc!681 k!2843)))))

(declare-fun b!673158 () Bool)

(declare-fun res!439885 () Bool)

(assert (=> b!673158 (=> (not res!439885) (not e!384411))))

(assert (=> b!673158 (= res!439885 (validKeyInArray!0 (select (arr!18797 a!3626) from!3004)))))

(declare-fun b!673159 () Bool)

(declare-fun res!439870 () Bool)

(assert (=> b!673159 (=> (not res!439870) (not e!384408))))

(assert (=> b!673159 (= res!439870 (not (contains!3434 lt!312392 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673160 () Bool)

(declare-fun res!439869 () Bool)

(assert (=> b!673160 (=> (not res!439869) (not e!384411))))

(assert (=> b!673160 (= res!439869 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19161 a!3626)) (not (= from!3004 i!1382))))))

(assert (= (and start!60214 res!439878) b!673138))

(assert (= (and b!673138 res!439872) b!673139))

(assert (= (and b!673139 res!439873) b!673142))

(assert (= (and b!673142 res!439866) b!673148))

(assert (= (and b!673148 res!439871) b!673144))

(assert (= (and b!673148 (not res!439865)) b!673147))

(assert (= (and b!673147 res!439863) b!673157))

(assert (= (and b!673148 res!439884) b!673135))

(assert (= (and b!673135 res!439874) b!673156))

(assert (= (and b!673156 res!439867) b!673153))

(assert (= (and b!673153 res!439881) b!673136))

(assert (= (and b!673136 res!439882) b!673151))

(assert (= (and b!673151 res!439868) b!673160))

(assert (= (and b!673160 res!439869) b!673158))

(assert (= (and b!673158 res!439885) b!673150))

(assert (= (and b!673150 c!77003) b!673146))

(assert (= (and b!673150 (not c!77003)) b!673149))

(assert (= (and b!673150 res!439875) b!673137))

(assert (= (and b!673137 res!439877) b!673154))

(assert (= (and b!673154 res!439880) b!673159))

(assert (= (and b!673159 res!439870) b!673145))

(assert (= (and b!673145 res!439876) b!673140))

(assert (= (and b!673140 res!439886) b!673143))

(assert (= (and b!673140 (not res!439879)) b!673152))

(assert (= (and b!673152 res!439864) b!673155))

(assert (= (and b!673140 res!439883) b!673141))

(declare-fun m!641701 () Bool)

(assert (=> b!673138 m!641701))

(declare-fun m!641703 () Bool)

(assert (=> b!673159 m!641703))

(declare-fun m!641705 () Bool)

(assert (=> b!673141 m!641705))

(declare-fun m!641707 () Bool)

(assert (=> start!60214 m!641707))

(declare-fun m!641709 () Bool)

(assert (=> b!673143 m!641709))

(assert (=> b!673155 m!641709))

(declare-fun m!641711 () Bool)

(assert (=> b!673137 m!641711))

(assert (=> b!673137 m!641711))

(declare-fun m!641713 () Bool)

(assert (=> b!673137 m!641713))

(declare-fun m!641715 () Bool)

(assert (=> b!673156 m!641715))

(declare-fun m!641717 () Bool)

(assert (=> b!673151 m!641717))

(declare-fun m!641719 () Bool)

(assert (=> b!673135 m!641719))

(declare-fun m!641721 () Bool)

(assert (=> b!673146 m!641721))

(declare-fun m!641723 () Bool)

(assert (=> b!673146 m!641723))

(assert (=> b!673158 m!641711))

(assert (=> b!673158 m!641711))

(declare-fun m!641725 () Bool)

(assert (=> b!673158 m!641725))

(declare-fun m!641727 () Bool)

(assert (=> b!673142 m!641727))

(declare-fun m!641729 () Bool)

(assert (=> b!673136 m!641729))

(assert (=> b!673150 m!641711))

(declare-fun m!641731 () Bool)

(assert (=> b!673139 m!641731))

(declare-fun m!641733 () Bool)

(assert (=> b!673145 m!641733))

(declare-fun m!641735 () Bool)

(assert (=> b!673154 m!641735))

(declare-fun m!641737 () Bool)

(assert (=> b!673157 m!641737))

(assert (=> b!673144 m!641737))

(push 1)

