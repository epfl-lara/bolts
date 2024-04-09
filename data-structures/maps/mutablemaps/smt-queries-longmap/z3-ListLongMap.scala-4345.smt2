; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60116 () Bool)

(assert start!60116)

(declare-fun b!670132 () Bool)

(declare-fun res!437066 () Bool)

(declare-fun e!383172 () Bool)

(assert (=> b!670132 (=> (not res!437066) (not e!383172))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39119 0))(
  ( (array!39120 (arr!18748 (Array (_ BitVec 32) (_ BitVec 64))) (size!19112 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39119)

(assert (=> b!670132 (= res!437066 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19112 a!3626))))))

(declare-fun b!670133 () Bool)

(declare-fun res!437059 () Bool)

(assert (=> b!670133 (=> (not res!437059) (not e!383172))))

(declare-fun e!383169 () Bool)

(assert (=> b!670133 (= res!437059 e!383169)))

(declare-fun res!437073 () Bool)

(assert (=> b!670133 (=> res!437073 e!383169)))

(declare-fun e!383171 () Bool)

(assert (=> b!670133 (= res!437073 e!383171)))

(declare-fun res!437054 () Bool)

(assert (=> b!670133 (=> (not res!437054) (not e!383171))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!670133 (= res!437054 (bvsgt from!3004 i!1382))))

(declare-fun b!670134 () Bool)

(declare-datatypes ((Unit!23535 0))(
  ( (Unit!23536) )
))
(declare-fun e!383174 () Unit!23535)

(declare-fun Unit!23537 () Unit!23535)

(assert (=> b!670134 (= e!383174 Unit!23537)))

(declare-fun b!670135 () Bool)

(declare-fun e!383179 () Unit!23535)

(declare-fun lt!311936 () Unit!23535)

(assert (=> b!670135 (= e!383179 lt!311936)))

(declare-fun lt!311946 () Unit!23535)

(declare-datatypes ((List!12842 0))(
  ( (Nil!12839) (Cons!12838 (h!13883 (_ BitVec 64)) (t!19078 List!12842)) )
))
(declare-fun acc!681 () List!12842)

(declare-fun lemmaListSubSeqRefl!0 (List!12842) Unit!23535)

(assert (=> b!670135 (= lt!311946 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!123 (List!12842 List!12842) Bool)

(assert (=> b!670135 (subseq!123 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39119 List!12842 List!12842 (_ BitVec 32)) Unit!23535)

(declare-fun $colon$colon!254 (List!12842 (_ BitVec 64)) List!12842)

(assert (=> b!670135 (= lt!311936 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!254 acc!681 (select (arr!18748 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39119 (_ BitVec 32) List!12842) Bool)

(assert (=> b!670135 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun res!437075 () Bool)

(assert (=> start!60116 (=> (not res!437075) (not e!383172))))

(assert (=> start!60116 (= res!437075 (and (bvslt (size!19112 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19112 a!3626))))))

(assert (=> start!60116 e!383172))

(assert (=> start!60116 true))

(declare-fun array_inv!14522 (array!39119) Bool)

(assert (=> start!60116 (array_inv!14522 a!3626)))

(declare-fun b!670136 () Bool)

(declare-fun e!383175 () Bool)

(declare-fun lt!311943 () List!12842)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3385 (List!12842 (_ BitVec 64)) Bool)

(assert (=> b!670136 (= e!383175 (contains!3385 lt!311943 k0!2843))))

(declare-fun b!670137 () Bool)

(declare-fun res!437058 () Bool)

(declare-fun e!383176 () Bool)

(assert (=> b!670137 (=> res!437058 e!383176)))

(declare-fun e!383173 () Bool)

(assert (=> b!670137 (= res!437058 e!383173)))

(declare-fun res!437060 () Bool)

(assert (=> b!670137 (=> (not res!437060) (not e!383173))))

(declare-fun e!383178 () Bool)

(assert (=> b!670137 (= res!437060 e!383178)))

(declare-fun res!437068 () Bool)

(assert (=> b!670137 (=> res!437068 e!383178)))

(assert (=> b!670137 (= res!437068 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!670138 () Bool)

(declare-fun e!383177 () Bool)

(assert (=> b!670138 (= e!383177 (not (contains!3385 acc!681 k0!2843)))))

(declare-fun b!670139 () Bool)

(declare-fun res!437067 () Bool)

(assert (=> b!670139 (=> (not res!437067) (not e!383172))))

(assert (=> b!670139 (= res!437067 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19112 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!670140 () Bool)

(declare-fun res!437069 () Bool)

(assert (=> b!670140 (=> res!437069 e!383176)))

(assert (=> b!670140 (= res!437069 (contains!3385 lt!311943 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!670141 () Bool)

(assert (=> b!670141 (= e!383173 e!383175)))

(declare-fun res!437065 () Bool)

(assert (=> b!670141 (=> res!437065 e!383175)))

(assert (=> b!670141 (= res!437065 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!670142 () Bool)

(declare-fun res!437057 () Bool)

(assert (=> b!670142 (=> (not res!437057) (not e!383172))))

(assert (=> b!670142 (= res!437057 (not (contains!3385 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670143 () Bool)

(assert (=> b!670143 (= e!383176 true)))

(declare-fun lt!311940 () array!39119)

(assert (=> b!670143 (arrayNoDuplicates!0 lt!311940 (bvadd #b00000000000000000000000000000001 from!3004) lt!311943)))

(declare-fun lt!311939 () Unit!23535)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39119 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12842) Unit!23535)

(assert (=> b!670143 (= lt!311939 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!311943))))

(declare-fun b!670144 () Bool)

(assert (=> b!670144 (= e!383178 (not (contains!3385 lt!311943 k0!2843)))))

(declare-fun b!670145 () Bool)

(declare-fun res!437072 () Bool)

(assert (=> b!670145 (=> (not res!437072) (not e!383172))))

(assert (=> b!670145 (= res!437072 (not (contains!3385 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670146 () Bool)

(declare-fun Unit!23538 () Unit!23535)

(assert (=> b!670146 (= e!383179 Unit!23538)))

(declare-fun b!670147 () Bool)

(declare-fun Unit!23539 () Unit!23535)

(assert (=> b!670147 (= e!383174 Unit!23539)))

(declare-fun lt!311937 () Unit!23535)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39119 (_ BitVec 64) (_ BitVec 32)) Unit!23535)

(assert (=> b!670147 (= lt!311937 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!670147 false))

(declare-fun b!670148 () Bool)

(declare-fun res!437062 () Bool)

(assert (=> b!670148 (=> res!437062 e!383176)))

(assert (=> b!670148 (= res!437062 (contains!3385 lt!311943 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!670149 () Bool)

(assert (=> b!670149 (= e!383169 e!383177)))

(declare-fun res!437074 () Bool)

(assert (=> b!670149 (=> (not res!437074) (not e!383177))))

(assert (=> b!670149 (= res!437074 (bvsle from!3004 i!1382))))

(declare-fun b!670150 () Bool)

(declare-fun res!437055 () Bool)

(assert (=> b!670150 (=> res!437055 e!383176)))

(declare-fun noDuplicate!632 (List!12842) Bool)

(assert (=> b!670150 (= res!437055 (not (noDuplicate!632 lt!311943)))))

(declare-fun b!670151 () Bool)

(assert (=> b!670151 (= e!383172 (not e!383176))))

(declare-fun res!437064 () Bool)

(assert (=> b!670151 (=> res!437064 e!383176)))

(assert (=> b!670151 (= res!437064 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!670151 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311943)))

(declare-fun lt!311941 () Unit!23535)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39119 (_ BitVec 64) (_ BitVec 32) List!12842 List!12842) Unit!23535)

(assert (=> b!670151 (= lt!311941 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311943))))

(declare-fun -!121 (List!12842 (_ BitVec 64)) List!12842)

(assert (=> b!670151 (= (-!121 lt!311943 k0!2843) acc!681)))

(assert (=> b!670151 (= lt!311943 ($colon$colon!254 acc!681 k0!2843))))

(declare-fun lt!311942 () Unit!23535)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12842) Unit!23535)

(assert (=> b!670151 (= lt!311942 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!670151 (subseq!123 acc!681 acc!681)))

(declare-fun lt!311944 () Unit!23535)

(assert (=> b!670151 (= lt!311944 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!670151 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311938 () Unit!23535)

(assert (=> b!670151 (= lt!311938 e!383179)))

(declare-fun c!76907 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!670151 (= c!76907 (validKeyInArray!0 (select (arr!18748 a!3626) from!3004)))))

(declare-fun lt!311945 () Unit!23535)

(assert (=> b!670151 (= lt!311945 e!383174)))

(declare-fun c!76906 () Bool)

(declare-fun arrayContainsKey!0 (array!39119 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!670151 (= c!76906 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!670151 (arrayContainsKey!0 lt!311940 k0!2843 from!3004)))

(assert (=> b!670151 (= lt!311940 (array!39120 (store (arr!18748 a!3626) i!1382 k0!2843) (size!19112 a!3626)))))

(declare-fun b!670152 () Bool)

(declare-fun res!437071 () Bool)

(assert (=> b!670152 (=> (not res!437071) (not e!383172))))

(assert (=> b!670152 (= res!437071 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12839))))

(declare-fun b!670153 () Bool)

(declare-fun res!437061 () Bool)

(assert (=> b!670153 (=> (not res!437061) (not e!383172))))

(assert (=> b!670153 (= res!437061 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670154 () Bool)

(assert (=> b!670154 (= e!383171 (contains!3385 acc!681 k0!2843))))

(declare-fun b!670155 () Bool)

(declare-fun res!437063 () Bool)

(assert (=> b!670155 (=> (not res!437063) (not e!383172))))

(assert (=> b!670155 (= res!437063 (noDuplicate!632 acc!681))))

(declare-fun b!670156 () Bool)

(declare-fun res!437056 () Bool)

(assert (=> b!670156 (=> (not res!437056) (not e!383172))))

(assert (=> b!670156 (= res!437056 (validKeyInArray!0 k0!2843))))

(declare-fun b!670157 () Bool)

(declare-fun res!437070 () Bool)

(assert (=> b!670157 (=> (not res!437070) (not e!383172))))

(assert (=> b!670157 (= res!437070 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!60116 res!437075) b!670155))

(assert (= (and b!670155 res!437063) b!670145))

(assert (= (and b!670145 res!437072) b!670142))

(assert (= (and b!670142 res!437057) b!670133))

(assert (= (and b!670133 res!437054) b!670154))

(assert (= (and b!670133 (not res!437073)) b!670149))

(assert (= (and b!670149 res!437074) b!670138))

(assert (= (and b!670133 res!437059) b!670152))

(assert (= (and b!670152 res!437071) b!670153))

(assert (= (and b!670153 res!437061) b!670132))

(assert (= (and b!670132 res!437066) b!670156))

(assert (= (and b!670156 res!437056) b!670157))

(assert (= (and b!670157 res!437070) b!670139))

(assert (= (and b!670139 res!437067) b!670151))

(assert (= (and b!670151 c!76906) b!670147))

(assert (= (and b!670151 (not c!76906)) b!670134))

(assert (= (and b!670151 c!76907) b!670135))

(assert (= (and b!670151 (not c!76907)) b!670146))

(assert (= (and b!670151 (not res!437064)) b!670150))

(assert (= (and b!670150 (not res!437055)) b!670140))

(assert (= (and b!670140 (not res!437069)) b!670148))

(assert (= (and b!670148 (not res!437062)) b!670137))

(assert (= (and b!670137 (not res!437068)) b!670144))

(assert (= (and b!670137 res!437060) b!670141))

(assert (= (and b!670141 (not res!437065)) b!670136))

(assert (= (and b!670137 (not res!437058)) b!670143))

(declare-fun m!640103 () Bool)

(assert (=> b!670144 m!640103))

(declare-fun m!640105 () Bool)

(assert (=> b!670147 m!640105))

(declare-fun m!640107 () Bool)

(assert (=> b!670155 m!640107))

(declare-fun m!640109 () Bool)

(assert (=> b!670148 m!640109))

(declare-fun m!640111 () Bool)

(assert (=> b!670156 m!640111))

(declare-fun m!640113 () Bool)

(assert (=> b!670153 m!640113))

(declare-fun m!640115 () Bool)

(assert (=> b!670138 m!640115))

(declare-fun m!640117 () Bool)

(assert (=> b!670152 m!640117))

(assert (=> b!670136 m!640103))

(declare-fun m!640119 () Bool)

(assert (=> b!670145 m!640119))

(assert (=> b!670154 m!640115))

(declare-fun m!640121 () Bool)

(assert (=> b!670150 m!640121))

(declare-fun m!640123 () Bool)

(assert (=> start!60116 m!640123))

(declare-fun m!640125 () Bool)

(assert (=> b!670135 m!640125))

(declare-fun m!640127 () Bool)

(assert (=> b!670135 m!640127))

(declare-fun m!640129 () Bool)

(assert (=> b!670135 m!640129))

(declare-fun m!640131 () Bool)

(assert (=> b!670135 m!640131))

(assert (=> b!670135 m!640127))

(assert (=> b!670135 m!640129))

(declare-fun m!640133 () Bool)

(assert (=> b!670135 m!640133))

(declare-fun m!640135 () Bool)

(assert (=> b!670135 m!640135))

(declare-fun m!640137 () Bool)

(assert (=> b!670142 m!640137))

(declare-fun m!640139 () Bool)

(assert (=> b!670157 m!640139))

(declare-fun m!640141 () Bool)

(assert (=> b!670143 m!640141))

(declare-fun m!640143 () Bool)

(assert (=> b!670143 m!640143))

(assert (=> b!670151 m!640125))

(declare-fun m!640145 () Bool)

(assert (=> b!670151 m!640145))

(assert (=> b!670151 m!640127))

(declare-fun m!640147 () Bool)

(assert (=> b!670151 m!640147))

(declare-fun m!640149 () Bool)

(assert (=> b!670151 m!640149))

(assert (=> b!670151 m!640133))

(declare-fun m!640151 () Bool)

(assert (=> b!670151 m!640151))

(assert (=> b!670151 m!640127))

(declare-fun m!640153 () Bool)

(assert (=> b!670151 m!640153))

(assert (=> b!670151 m!640135))

(declare-fun m!640155 () Bool)

(assert (=> b!670151 m!640155))

(declare-fun m!640157 () Bool)

(assert (=> b!670151 m!640157))

(declare-fun m!640159 () Bool)

(assert (=> b!670151 m!640159))

(declare-fun m!640161 () Bool)

(assert (=> b!670151 m!640161))

(declare-fun m!640163 () Bool)

(assert (=> b!670140 m!640163))

(check-sat (not b!670135) (not b!670156) (not b!670155) (not b!670136) (not b!670152) (not b!670145) (not b!670143) (not b!670140) (not b!670153) (not b!670154) (not b!670147) (not b!670148) (not start!60116) (not b!670150) (not b!670142) (not b!670157) (not b!670144) (not b!670138) (not b!670151))
(check-sat)
