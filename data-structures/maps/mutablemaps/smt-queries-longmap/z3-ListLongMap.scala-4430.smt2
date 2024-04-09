; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61574 () Bool)

(assert start!61574)

(declare-fun b!688124 () Bool)

(declare-datatypes ((Unit!24252 0))(
  ( (Unit!24253) )
))
(declare-fun e!391957 () Unit!24252)

(declare-fun Unit!24254 () Unit!24252)

(assert (=> b!688124 (= e!391957 Unit!24254)))

(declare-fun b!688125 () Bool)

(declare-fun res!453023 () Bool)

(declare-fun e!391953 () Bool)

(assert (=> b!688125 (=> (not res!453023) (not e!391953))))

(declare-datatypes ((array!39671 0))(
  ( (array!39672 (arr!19003 (Array (_ BitVec 32) (_ BitVec 64))) (size!19384 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39671)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39671 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!688125 (= res!453023 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun res!453032 () Bool)

(assert (=> start!61574 (=> (not res!453032) (not e!391953))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!61574 (= res!453032 (and (bvslt (size!19384 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19384 a!3626))))))

(assert (=> start!61574 e!391953))

(assert (=> start!61574 true))

(declare-fun array_inv!14777 (array!39671) Bool)

(assert (=> start!61574 (array_inv!14777 a!3626)))

(declare-fun b!688126 () Bool)

(declare-fun res!453020 () Bool)

(declare-fun e!391956 () Bool)

(assert (=> b!688126 (=> res!453020 e!391956)))

(declare-datatypes ((List!13097 0))(
  ( (Nil!13094) (Cons!13093 (h!14138 (_ BitVec 64)) (t!19369 List!13097)) )
))
(declare-fun lt!315674 () List!13097)

(declare-fun noDuplicate!887 (List!13097) Bool)

(assert (=> b!688126 (= res!453020 (not (noDuplicate!887 lt!315674)))))

(declare-fun b!688127 () Bool)

(declare-fun res!453025 () Bool)

(assert (=> b!688127 (=> (not res!453025) (not e!391953))))

(declare-fun acc!681 () List!13097)

(declare-fun contains!3640 (List!13097 (_ BitVec 64)) Bool)

(assert (=> b!688127 (= res!453025 (not (contains!3640 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688128 () Bool)

(declare-fun res!453026 () Bool)

(assert (=> b!688128 (=> (not res!453026) (not e!391953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!688128 (= res!453026 (validKeyInArray!0 k0!2843))))

(declare-fun b!688129 () Bool)

(declare-fun e!391952 () Bool)

(assert (=> b!688129 (= e!391952 (not (contains!3640 acc!681 k0!2843)))))

(declare-fun b!688130 () Bool)

(declare-fun res!453030 () Bool)

(assert (=> b!688130 (=> (not res!453030) (not e!391953))))

(declare-fun arrayNoDuplicates!0 (array!39671 (_ BitVec 32) List!13097) Bool)

(assert (=> b!688130 (= res!453030 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!688131 () Bool)

(declare-fun res!453021 () Bool)

(assert (=> b!688131 (=> (not res!453021) (not e!391953))))

(declare-fun e!391949 () Bool)

(assert (=> b!688131 (= res!453021 e!391949)))

(declare-fun res!453033 () Bool)

(assert (=> b!688131 (=> res!453033 e!391949)))

(declare-fun e!391947 () Bool)

(assert (=> b!688131 (= res!453033 e!391947)))

(declare-fun res!453037 () Bool)

(assert (=> b!688131 (=> (not res!453037) (not e!391947))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!688131 (= res!453037 (bvsgt from!3004 i!1382))))

(declare-fun b!688132 () Bool)

(declare-fun e!391950 () Unit!24252)

(declare-fun Unit!24255 () Unit!24252)

(assert (=> b!688132 (= e!391950 Unit!24255)))

(declare-fun b!688133 () Bool)

(declare-fun res!453036 () Bool)

(assert (=> b!688133 (=> (not res!453036) (not e!391953))))

(assert (=> b!688133 (= res!453036 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13094))))

(declare-fun b!688134 () Bool)

(declare-fun res!453024 () Bool)

(assert (=> b!688134 (=> (not res!453024) (not e!391953))))

(assert (=> b!688134 (= res!453024 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19384 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!688135 () Bool)

(declare-fun e!391954 () Bool)

(assert (=> b!688135 (= e!391954 (not (contains!3640 lt!315674 k0!2843)))))

(declare-fun b!688136 () Bool)

(declare-fun res!453028 () Bool)

(assert (=> b!688136 (=> (not res!453028) (not e!391953))))

(assert (=> b!688136 (= res!453028 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19384 a!3626))))))

(declare-fun b!688137 () Bool)

(assert (=> b!688137 (= e!391956 true)))

(declare-fun lt!315671 () Bool)

(declare-fun e!391948 () Bool)

(assert (=> b!688137 (= lt!315671 e!391948)))

(declare-fun res!453035 () Bool)

(assert (=> b!688137 (=> res!453035 e!391948)))

(declare-fun e!391951 () Bool)

(assert (=> b!688137 (= res!453035 e!391951)))

(declare-fun res!453027 () Bool)

(assert (=> b!688137 (=> (not res!453027) (not e!391951))))

(assert (=> b!688137 (= res!453027 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688138 () Bool)

(assert (=> b!688138 (= e!391947 (contains!3640 acc!681 k0!2843))))

(declare-fun b!688139 () Bool)

(declare-fun res!453018 () Bool)

(assert (=> b!688139 (=> (not res!453018) (not e!391953))))

(assert (=> b!688139 (= res!453018 (noDuplicate!887 acc!681))))

(declare-fun b!688140 () Bool)

(declare-fun res!453031 () Bool)

(assert (=> b!688140 (=> res!453031 e!391956)))

(assert (=> b!688140 (= res!453031 (contains!3640 lt!315674 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688141 () Bool)

(declare-fun res!453038 () Bool)

(assert (=> b!688141 (=> (not res!453038) (not e!391953))))

(assert (=> b!688141 (= res!453038 (not (contains!3640 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688142 () Bool)

(assert (=> b!688142 (= e!391953 (not e!391956))))

(declare-fun res!453029 () Bool)

(assert (=> b!688142 (=> res!453029 e!391956)))

(assert (=> b!688142 (= res!453029 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!688142 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315674)))

(declare-fun lt!315670 () Unit!24252)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39671 (_ BitVec 64) (_ BitVec 32) List!13097 List!13097) Unit!24252)

(assert (=> b!688142 (= lt!315670 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315674))))

(declare-fun -!190 (List!13097 (_ BitVec 64)) List!13097)

(assert (=> b!688142 (= (-!190 lt!315674 k0!2843) acc!681)))

(declare-fun $colon$colon!389 (List!13097 (_ BitVec 64)) List!13097)

(assert (=> b!688142 (= lt!315674 ($colon$colon!389 acc!681 k0!2843))))

(declare-fun lt!315669 () Unit!24252)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13097) Unit!24252)

(assert (=> b!688142 (= lt!315669 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!225 (List!13097 List!13097) Bool)

(assert (=> b!688142 (subseq!225 acc!681 acc!681)))

(declare-fun lt!315676 () Unit!24252)

(declare-fun lemmaListSubSeqRefl!0 (List!13097) Unit!24252)

(assert (=> b!688142 (= lt!315676 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688142 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315673 () Unit!24252)

(assert (=> b!688142 (= lt!315673 e!391950)))

(declare-fun c!77920 () Bool)

(assert (=> b!688142 (= c!77920 (validKeyInArray!0 (select (arr!19003 a!3626) from!3004)))))

(declare-fun lt!315675 () Unit!24252)

(assert (=> b!688142 (= lt!315675 e!391957)))

(declare-fun c!77921 () Bool)

(assert (=> b!688142 (= c!77921 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688142 (arrayContainsKey!0 (array!39672 (store (arr!19003 a!3626) i!1382 k0!2843) (size!19384 a!3626)) k0!2843 from!3004)))

(declare-fun b!688143 () Bool)

(declare-fun res!453019 () Bool)

(assert (=> b!688143 (=> res!453019 e!391956)))

(assert (=> b!688143 (= res!453019 (contains!3640 lt!315674 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688144 () Bool)

(declare-fun Unit!24256 () Unit!24252)

(assert (=> b!688144 (= e!391957 Unit!24256)))

(declare-fun lt!315677 () Unit!24252)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39671 (_ BitVec 64) (_ BitVec 32)) Unit!24252)

(assert (=> b!688144 (= lt!315677 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!688144 false))

(declare-fun b!688145 () Bool)

(assert (=> b!688145 (= e!391951 (contains!3640 lt!315674 k0!2843))))

(declare-fun b!688146 () Bool)

(declare-fun lt!315672 () Unit!24252)

(assert (=> b!688146 (= e!391950 lt!315672)))

(declare-fun lt!315678 () Unit!24252)

(assert (=> b!688146 (= lt!315678 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688146 (subseq!225 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39671 List!13097 List!13097 (_ BitVec 32)) Unit!24252)

(assert (=> b!688146 (= lt!315672 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!389 acc!681 (select (arr!19003 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688146 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!688147 () Bool)

(assert (=> b!688147 (= e!391949 e!391952)))

(declare-fun res!453034 () Bool)

(assert (=> b!688147 (=> (not res!453034) (not e!391952))))

(assert (=> b!688147 (= res!453034 (bvsle from!3004 i!1382))))

(declare-fun b!688148 () Bool)

(assert (=> b!688148 (= e!391948 e!391954)))

(declare-fun res!453022 () Bool)

(assert (=> b!688148 (=> (not res!453022) (not e!391954))))

(assert (=> b!688148 (= res!453022 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!61574 res!453032) b!688139))

(assert (= (and b!688139 res!453018) b!688141))

(assert (= (and b!688141 res!453038) b!688127))

(assert (= (and b!688127 res!453025) b!688131))

(assert (= (and b!688131 res!453037) b!688138))

(assert (= (and b!688131 (not res!453033)) b!688147))

(assert (= (and b!688147 res!453034) b!688129))

(assert (= (and b!688131 res!453021) b!688133))

(assert (= (and b!688133 res!453036) b!688130))

(assert (= (and b!688130 res!453030) b!688136))

(assert (= (and b!688136 res!453028) b!688128))

(assert (= (and b!688128 res!453026) b!688125))

(assert (= (and b!688125 res!453023) b!688134))

(assert (= (and b!688134 res!453024) b!688142))

(assert (= (and b!688142 c!77921) b!688144))

(assert (= (and b!688142 (not c!77921)) b!688124))

(assert (= (and b!688142 c!77920) b!688146))

(assert (= (and b!688142 (not c!77920)) b!688132))

(assert (= (and b!688142 (not res!453029)) b!688126))

(assert (= (and b!688126 (not res!453020)) b!688143))

(assert (= (and b!688143 (not res!453019)) b!688140))

(assert (= (and b!688140 (not res!453031)) b!688137))

(assert (= (and b!688137 res!453027) b!688145))

(assert (= (and b!688137 (not res!453035)) b!688148))

(assert (= (and b!688148 res!453022) b!688135))

(declare-fun m!652111 () Bool)

(assert (=> b!688143 m!652111))

(declare-fun m!652113 () Bool)

(assert (=> start!61574 m!652113))

(declare-fun m!652115 () Bool)

(assert (=> b!688138 m!652115))

(declare-fun m!652117 () Bool)

(assert (=> b!688144 m!652117))

(declare-fun m!652119 () Bool)

(assert (=> b!688145 m!652119))

(declare-fun m!652121 () Bool)

(assert (=> b!688146 m!652121))

(declare-fun m!652123 () Bool)

(assert (=> b!688146 m!652123))

(declare-fun m!652125 () Bool)

(assert (=> b!688146 m!652125))

(declare-fun m!652127 () Bool)

(assert (=> b!688146 m!652127))

(assert (=> b!688146 m!652123))

(assert (=> b!688146 m!652125))

(declare-fun m!652129 () Bool)

(assert (=> b!688146 m!652129))

(declare-fun m!652131 () Bool)

(assert (=> b!688146 m!652131))

(assert (=> b!688142 m!652123))

(declare-fun m!652133 () Bool)

(assert (=> b!688142 m!652133))

(declare-fun m!652135 () Bool)

(assert (=> b!688142 m!652135))

(assert (=> b!688142 m!652129))

(declare-fun m!652137 () Bool)

(assert (=> b!688142 m!652137))

(declare-fun m!652139 () Bool)

(assert (=> b!688142 m!652139))

(assert (=> b!688142 m!652123))

(declare-fun m!652141 () Bool)

(assert (=> b!688142 m!652141))

(declare-fun m!652143 () Bool)

(assert (=> b!688142 m!652143))

(assert (=> b!688142 m!652121))

(declare-fun m!652145 () Bool)

(assert (=> b!688142 m!652145))

(declare-fun m!652147 () Bool)

(assert (=> b!688142 m!652147))

(declare-fun m!652149 () Bool)

(assert (=> b!688142 m!652149))

(assert (=> b!688142 m!652131))

(assert (=> b!688129 m!652115))

(declare-fun m!652151 () Bool)

(assert (=> b!688126 m!652151))

(assert (=> b!688135 m!652119))

(declare-fun m!652153 () Bool)

(assert (=> b!688125 m!652153))

(declare-fun m!652155 () Bool)

(assert (=> b!688140 m!652155))

(declare-fun m!652157 () Bool)

(assert (=> b!688128 m!652157))

(declare-fun m!652159 () Bool)

(assert (=> b!688130 m!652159))

(declare-fun m!652161 () Bool)

(assert (=> b!688133 m!652161))

(declare-fun m!652163 () Bool)

(assert (=> b!688127 m!652163))

(declare-fun m!652165 () Bool)

(assert (=> b!688139 m!652165))

(declare-fun m!652167 () Bool)

(assert (=> b!688141 m!652167))

(check-sat (not b!688126) (not start!61574) (not b!688146) (not b!688135) (not b!688125) (not b!688130) (not b!688127) (not b!688139) (not b!688143) (not b!688140) (not b!688145) (not b!688142) (not b!688128) (not b!688133) (not b!688144) (not b!688129) (not b!688141) (not b!688138))
