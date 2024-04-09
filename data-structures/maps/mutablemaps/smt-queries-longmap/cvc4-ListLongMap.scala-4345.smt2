; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60118 () Bool)

(assert start!60118)

(declare-fun b!670210 () Bool)

(declare-fun res!437139 () Bool)

(declare-fun e!383207 () Bool)

(assert (=> b!670210 (=> (not res!437139) (not e!383207))))

(declare-datatypes ((List!12843 0))(
  ( (Nil!12840) (Cons!12839 (h!13884 (_ BitVec 64)) (t!19079 List!12843)) )
))
(declare-fun acc!681 () List!12843)

(declare-fun contains!3386 (List!12843 (_ BitVec 64)) Bool)

(assert (=> b!670210 (= res!437139 (not (contains!3386 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670211 () Bool)

(declare-fun e!383202 () Bool)

(declare-fun lt!311976 () List!12843)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!670211 (= e!383202 (not (contains!3386 lt!311976 k!2843)))))

(declare-fun b!670212 () Bool)

(declare-fun res!437140 () Bool)

(assert (=> b!670212 (=> (not res!437140) (not e!383207))))

(declare-fun noDuplicate!633 (List!12843) Bool)

(assert (=> b!670212 (= res!437140 (noDuplicate!633 acc!681))))

(declare-fun b!670213 () Bool)

(declare-datatypes ((Unit!23540 0))(
  ( (Unit!23541) )
))
(declare-fun e!383211 () Unit!23540)

(declare-fun Unit!23542 () Unit!23540)

(assert (=> b!670213 (= e!383211 Unit!23542)))

(declare-fun b!670214 () Bool)

(declare-fun res!437127 () Bool)

(assert (=> b!670214 (=> (not res!437127) (not e!383207))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39121 0))(
  ( (array!39122 (arr!18749 (Array (_ BitVec 32) (_ BitVec 64))) (size!19113 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39121)

(assert (=> b!670214 (= res!437127 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19113 a!3626))))))

(declare-fun b!670215 () Bool)

(declare-fun res!437121 () Bool)

(assert (=> b!670215 (=> (not res!437121) (not e!383207))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39121 (_ BitVec 32) List!12843) Bool)

(assert (=> b!670215 (= res!437121 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670216 () Bool)

(declare-fun res!437126 () Bool)

(assert (=> b!670216 (=> (not res!437126) (not e!383207))))

(assert (=> b!670216 (= res!437126 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19113 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!670217 () Bool)

(declare-fun res!437129 () Bool)

(assert (=> b!670217 (=> (not res!437129) (not e!383207))))

(assert (=> b!670217 (= res!437129 (not (contains!3386 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670218 () Bool)

(declare-fun e!383206 () Unit!23540)

(declare-fun Unit!23543 () Unit!23540)

(assert (=> b!670218 (= e!383206 Unit!23543)))

(declare-fun lt!311977 () Unit!23540)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39121 (_ BitVec 64) (_ BitVec 32)) Unit!23540)

(assert (=> b!670218 (= lt!311977 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!670218 false))

(declare-fun b!670220 () Bool)

(declare-fun e!383210 () Bool)

(assert (=> b!670220 (= e!383210 (contains!3386 lt!311976 k!2843))))

(declare-fun b!670221 () Bool)

(declare-fun Unit!23544 () Unit!23540)

(assert (=> b!670221 (= e!383206 Unit!23544)))

(declare-fun b!670222 () Bool)

(declare-fun e!383209 () Bool)

(assert (=> b!670222 (= e!383209 e!383210)))

(declare-fun res!437130 () Bool)

(assert (=> b!670222 (=> res!437130 e!383210)))

(assert (=> b!670222 (= res!437130 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!670223 () Bool)

(declare-fun res!437132 () Bool)

(assert (=> b!670223 (=> (not res!437132) (not e!383207))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!670223 (= res!437132 (validKeyInArray!0 k!2843))))

(declare-fun b!670224 () Bool)

(declare-fun res!437125 () Bool)

(assert (=> b!670224 (=> (not res!437125) (not e!383207))))

(declare-fun e!383205 () Bool)

(assert (=> b!670224 (= res!437125 e!383205)))

(declare-fun res!437135 () Bool)

(assert (=> b!670224 (=> res!437135 e!383205)))

(declare-fun e!383203 () Bool)

(assert (=> b!670224 (= res!437135 e!383203)))

(declare-fun res!437137 () Bool)

(assert (=> b!670224 (=> (not res!437137) (not e!383203))))

(assert (=> b!670224 (= res!437137 (bvsgt from!3004 i!1382))))

(declare-fun b!670225 () Bool)

(declare-fun res!437133 () Bool)

(declare-fun e!383212 () Bool)

(assert (=> b!670225 (=> res!437133 e!383212)))

(assert (=> b!670225 (= res!437133 (contains!3386 lt!311976 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!670226 () Bool)

(declare-fun e!383208 () Bool)

(assert (=> b!670226 (= e!383208 (not (contains!3386 acc!681 k!2843)))))

(declare-fun b!670227 () Bool)

(declare-fun res!437134 () Bool)

(assert (=> b!670227 (=> res!437134 e!383212)))

(assert (=> b!670227 (= res!437134 (contains!3386 lt!311976 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!670228 () Bool)

(assert (=> b!670228 (= e!383203 (contains!3386 acc!681 k!2843))))

(declare-fun b!670229 () Bool)

(declare-fun res!437123 () Bool)

(assert (=> b!670229 (=> res!437123 e!383212)))

(assert (=> b!670229 (= res!437123 (not (noDuplicate!633 lt!311976)))))

(declare-fun b!670230 () Bool)

(declare-fun lt!311975 () Unit!23540)

(assert (=> b!670230 (= e!383211 lt!311975)))

(declare-fun lt!311971 () Unit!23540)

(declare-fun lemmaListSubSeqRefl!0 (List!12843) Unit!23540)

(assert (=> b!670230 (= lt!311971 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!124 (List!12843 List!12843) Bool)

(assert (=> b!670230 (subseq!124 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39121 List!12843 List!12843 (_ BitVec 32)) Unit!23540)

(declare-fun $colon$colon!255 (List!12843 (_ BitVec 64)) List!12843)

(assert (=> b!670230 (= lt!311975 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!255 acc!681 (select (arr!18749 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!670230 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!670231 () Bool)

(declare-fun res!437138 () Bool)

(assert (=> b!670231 (=> (not res!437138) (not e!383207))))

(declare-fun arrayContainsKey!0 (array!39121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!670231 (= res!437138 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!670232 () Bool)

(assert (=> b!670232 (= e!383212 true)))

(declare-fun lt!311979 () array!39121)

(assert (=> b!670232 (arrayNoDuplicates!0 lt!311979 (bvadd #b00000000000000000000000000000001 from!3004) lt!311976)))

(declare-fun lt!311972 () Unit!23540)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39121 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12843) Unit!23540)

(assert (=> b!670232 (= lt!311972 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!311976))))

(declare-fun b!670233 () Bool)

(declare-fun res!437120 () Bool)

(assert (=> b!670233 (=> (not res!437120) (not e!383207))))

(assert (=> b!670233 (= res!437120 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12840))))

(declare-fun b!670234 () Bool)

(assert (=> b!670234 (= e!383205 e!383208)))

(declare-fun res!437128 () Bool)

(assert (=> b!670234 (=> (not res!437128) (not e!383208))))

(assert (=> b!670234 (= res!437128 (bvsle from!3004 i!1382))))

(declare-fun b!670235 () Bool)

(declare-fun res!437141 () Bool)

(assert (=> b!670235 (=> res!437141 e!383212)))

(assert (=> b!670235 (= res!437141 e!383209)))

(declare-fun res!437136 () Bool)

(assert (=> b!670235 (=> (not res!437136) (not e!383209))))

(assert (=> b!670235 (= res!437136 e!383202)))

(declare-fun res!437124 () Bool)

(assert (=> b!670235 (=> res!437124 e!383202)))

(assert (=> b!670235 (= res!437124 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!437131 () Bool)

(assert (=> start!60118 (=> (not res!437131) (not e!383207))))

(assert (=> start!60118 (= res!437131 (and (bvslt (size!19113 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19113 a!3626))))))

(assert (=> start!60118 e!383207))

(assert (=> start!60118 true))

(declare-fun array_inv!14523 (array!39121) Bool)

(assert (=> start!60118 (array_inv!14523 a!3626)))

(declare-fun b!670219 () Bool)

(assert (=> b!670219 (= e!383207 (not e!383212))))

(declare-fun res!437122 () Bool)

(assert (=> b!670219 (=> res!437122 e!383212)))

(assert (=> b!670219 (= res!437122 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!670219 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311976)))

(declare-fun lt!311973 () Unit!23540)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39121 (_ BitVec 64) (_ BitVec 32) List!12843 List!12843) Unit!23540)

(assert (=> b!670219 (= lt!311973 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311976))))

(declare-fun -!122 (List!12843 (_ BitVec 64)) List!12843)

(assert (=> b!670219 (= (-!122 lt!311976 k!2843) acc!681)))

(assert (=> b!670219 (= lt!311976 ($colon$colon!255 acc!681 k!2843))))

(declare-fun lt!311969 () Unit!23540)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12843) Unit!23540)

(assert (=> b!670219 (= lt!311969 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!670219 (subseq!124 acc!681 acc!681)))

(declare-fun lt!311974 () Unit!23540)

(assert (=> b!670219 (= lt!311974 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!670219 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311970 () Unit!23540)

(assert (=> b!670219 (= lt!311970 e!383211)))

(declare-fun c!76912 () Bool)

(assert (=> b!670219 (= c!76912 (validKeyInArray!0 (select (arr!18749 a!3626) from!3004)))))

(declare-fun lt!311978 () Unit!23540)

(assert (=> b!670219 (= lt!311978 e!383206)))

(declare-fun c!76913 () Bool)

(assert (=> b!670219 (= c!76913 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!670219 (arrayContainsKey!0 lt!311979 k!2843 from!3004)))

(assert (=> b!670219 (= lt!311979 (array!39122 (store (arr!18749 a!3626) i!1382 k!2843) (size!19113 a!3626)))))

(assert (= (and start!60118 res!437131) b!670212))

(assert (= (and b!670212 res!437140) b!670217))

(assert (= (and b!670217 res!437129) b!670210))

(assert (= (and b!670210 res!437139) b!670224))

(assert (= (and b!670224 res!437137) b!670228))

(assert (= (and b!670224 (not res!437135)) b!670234))

(assert (= (and b!670234 res!437128) b!670226))

(assert (= (and b!670224 res!437125) b!670233))

(assert (= (and b!670233 res!437120) b!670215))

(assert (= (and b!670215 res!437121) b!670214))

(assert (= (and b!670214 res!437127) b!670223))

(assert (= (and b!670223 res!437132) b!670231))

(assert (= (and b!670231 res!437138) b!670216))

(assert (= (and b!670216 res!437126) b!670219))

(assert (= (and b!670219 c!76913) b!670218))

(assert (= (and b!670219 (not c!76913)) b!670221))

(assert (= (and b!670219 c!76912) b!670230))

(assert (= (and b!670219 (not c!76912)) b!670213))

(assert (= (and b!670219 (not res!437122)) b!670229))

(assert (= (and b!670229 (not res!437123)) b!670225))

(assert (= (and b!670225 (not res!437133)) b!670227))

(assert (= (and b!670227 (not res!437134)) b!670235))

(assert (= (and b!670235 (not res!437124)) b!670211))

(assert (= (and b!670235 res!437136) b!670222))

(assert (= (and b!670222 (not res!437130)) b!670220))

(assert (= (and b!670235 (not res!437141)) b!670232))

(declare-fun m!640165 () Bool)

(assert (=> b!670218 m!640165))

(declare-fun m!640167 () Bool)

(assert (=> b!670228 m!640167))

(declare-fun m!640169 () Bool)

(assert (=> b!670231 m!640169))

(declare-fun m!640171 () Bool)

(assert (=> b!670211 m!640171))

(declare-fun m!640173 () Bool)

(assert (=> b!670229 m!640173))

(assert (=> b!670220 m!640171))

(declare-fun m!640175 () Bool)

(assert (=> b!670210 m!640175))

(declare-fun m!640177 () Bool)

(assert (=> b!670230 m!640177))

(declare-fun m!640179 () Bool)

(assert (=> b!670230 m!640179))

(declare-fun m!640181 () Bool)

(assert (=> b!670230 m!640181))

(declare-fun m!640183 () Bool)

(assert (=> b!670230 m!640183))

(assert (=> b!670230 m!640179))

(assert (=> b!670230 m!640181))

(declare-fun m!640185 () Bool)

(assert (=> b!670230 m!640185))

(declare-fun m!640187 () Bool)

(assert (=> b!670230 m!640187))

(declare-fun m!640189 () Bool)

(assert (=> b!670233 m!640189))

(declare-fun m!640191 () Bool)

(assert (=> b!670232 m!640191))

(declare-fun m!640193 () Bool)

(assert (=> b!670232 m!640193))

(declare-fun m!640195 () Bool)

(assert (=> b!670225 m!640195))

(declare-fun m!640197 () Bool)

(assert (=> b!670227 m!640197))

(assert (=> b!670226 m!640167))

(declare-fun m!640199 () Bool)

(assert (=> b!670217 m!640199))

(assert (=> b!670219 m!640177))

(assert (=> b!670219 m!640179))

(declare-fun m!640201 () Bool)

(assert (=> b!670219 m!640201))

(declare-fun m!640203 () Bool)

(assert (=> b!670219 m!640203))

(declare-fun m!640205 () Bool)

(assert (=> b!670219 m!640205))

(assert (=> b!670219 m!640185))

(declare-fun m!640207 () Bool)

(assert (=> b!670219 m!640207))

(declare-fun m!640209 () Bool)

(assert (=> b!670219 m!640209))

(assert (=> b!670219 m!640187))

(declare-fun m!640211 () Bool)

(assert (=> b!670219 m!640211))

(declare-fun m!640213 () Bool)

(assert (=> b!670219 m!640213))

(declare-fun m!640215 () Bool)

(assert (=> b!670219 m!640215))

(assert (=> b!670219 m!640179))

(declare-fun m!640217 () Bool)

(assert (=> b!670219 m!640217))

(declare-fun m!640219 () Bool)

(assert (=> start!60118 m!640219))

(declare-fun m!640221 () Bool)

(assert (=> b!670215 m!640221))

(declare-fun m!640223 () Bool)

(assert (=> b!670223 m!640223))

(declare-fun m!640225 () Bool)

(assert (=> b!670212 m!640225))

(push 1)

(assert (not b!670227))

(assert (not b!670233))

(assert (not b!670215))

(assert (not b!670225))

(assert (not b!670212))

(assert (not b!670231))

(assert (not b!670226))

(assert (not b!670211))

(assert (not b!670219))

