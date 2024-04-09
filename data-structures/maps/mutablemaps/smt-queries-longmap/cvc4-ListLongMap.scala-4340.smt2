; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60088 () Bool)

(assert start!60088)

(declare-fun b!669059 () Bool)

(declare-fun res!436158 () Bool)

(declare-fun e!382716 () Bool)

(assert (=> b!669059 (=> (not res!436158) (not e!382716))))

(declare-datatypes ((array!39091 0))(
  ( (array!39092 (arr!18734 (Array (_ BitVec 32) (_ BitVec 64))) (size!19098 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39091)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12828 0))(
  ( (Nil!12825) (Cons!12824 (h!13869 (_ BitVec 64)) (t!19064 List!12828)) )
))
(declare-fun acc!681 () List!12828)

(declare-fun arrayNoDuplicates!0 (array!39091 (_ BitVec 32) List!12828) Bool)

(assert (=> b!669059 (= res!436158 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!669060 () Bool)

(declare-fun res!436151 () Bool)

(assert (=> b!669060 (=> (not res!436151) (not e!382716))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!669060 (= res!436151 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19098 a!3626))))))

(declare-fun b!669061 () Bool)

(declare-datatypes ((Unit!23465 0))(
  ( (Unit!23466) )
))
(declare-fun e!382710 () Unit!23465)

(declare-fun lt!311496 () Unit!23465)

(assert (=> b!669061 (= e!382710 lt!311496)))

(declare-fun lt!311501 () Unit!23465)

(declare-fun lemmaListSubSeqRefl!0 (List!12828) Unit!23465)

(assert (=> b!669061 (= lt!311501 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!109 (List!12828 List!12828) Bool)

(assert (=> b!669061 (subseq!109 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39091 List!12828 List!12828 (_ BitVec 32)) Unit!23465)

(declare-fun $colon$colon!240 (List!12828 (_ BitVec 64)) List!12828)

(assert (=> b!669061 (= lt!311496 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!240 acc!681 (select (arr!18734 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669061 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!669062 () Bool)

(declare-fun Unit!23467 () Unit!23465)

(assert (=> b!669062 (= e!382710 Unit!23467)))

(declare-fun b!669063 () Bool)

(declare-fun res!436159 () Bool)

(declare-fun e!382712 () Bool)

(assert (=> b!669063 (=> res!436159 e!382712)))

(declare-fun lt!311500 () List!12828)

(declare-fun contains!3371 (List!12828 (_ BitVec 64)) Bool)

(assert (=> b!669063 (= res!436159 (contains!3371 lt!311500 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669064 () Bool)

(declare-fun res!436156 () Bool)

(assert (=> b!669064 (=> (not res!436156) (not e!382716))))

(assert (=> b!669064 (= res!436156 (not (contains!3371 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669065 () Bool)

(declare-fun e!382714 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!669065 (= e!382714 (contains!3371 acc!681 k!2843))))

(declare-fun b!669066 () Bool)

(declare-fun e!382711 () Bool)

(declare-fun e!382707 () Bool)

(assert (=> b!669066 (= e!382711 e!382707)))

(declare-fun res!436150 () Bool)

(assert (=> b!669066 (=> (not res!436150) (not e!382707))))

(assert (=> b!669066 (= res!436150 (bvsle from!3004 i!1382))))

(declare-fun b!669067 () Bool)

(assert (=> b!669067 (= e!382707 (not (contains!3371 acc!681 k!2843)))))

(declare-fun res!436168 () Bool)

(assert (=> start!60088 (=> (not res!436168) (not e!382716))))

(assert (=> start!60088 (= res!436168 (and (bvslt (size!19098 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19098 a!3626))))))

(assert (=> start!60088 e!382716))

(assert (=> start!60088 true))

(declare-fun array_inv!14508 (array!39091) Bool)

(assert (=> start!60088 (array_inv!14508 a!3626)))

(declare-fun b!669068 () Bool)

(declare-fun res!436152 () Bool)

(assert (=> b!669068 (=> res!436152 e!382712)))

(assert (=> b!669068 (= res!436152 (contains!3371 lt!311500 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669069 () Bool)

(declare-fun e!382709 () Unit!23465)

(declare-fun Unit!23468 () Unit!23465)

(assert (=> b!669069 (= e!382709 Unit!23468)))

(declare-fun b!669070 () Bool)

(declare-fun res!436166 () Bool)

(assert (=> b!669070 (=> (not res!436166) (not e!382716))))

(assert (=> b!669070 (= res!436166 (not (contains!3371 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669071 () Bool)

(declare-fun Unit!23469 () Unit!23465)

(assert (=> b!669071 (= e!382709 Unit!23469)))

(declare-fun lt!311497 () Unit!23465)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39091 (_ BitVec 64) (_ BitVec 32)) Unit!23465)

(assert (=> b!669071 (= lt!311497 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!669071 false))

(declare-fun b!669072 () Bool)

(assert (=> b!669072 (= e!382716 (not e!382712))))

(declare-fun res!436161 () Bool)

(assert (=> b!669072 (=> res!436161 e!382712)))

(assert (=> b!669072 (= res!436161 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!669072 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311500)))

(declare-fun lt!311493 () Unit!23465)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39091 (_ BitVec 64) (_ BitVec 32) List!12828 List!12828) Unit!23465)

(assert (=> b!669072 (= lt!311493 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311500))))

(declare-fun -!107 (List!12828 (_ BitVec 64)) List!12828)

(assert (=> b!669072 (= (-!107 lt!311500 k!2843) acc!681)))

(assert (=> b!669072 (= lt!311500 ($colon$colon!240 acc!681 k!2843))))

(declare-fun lt!311495 () Unit!23465)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12828) Unit!23465)

(assert (=> b!669072 (= lt!311495 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!669072 (subseq!109 acc!681 acc!681)))

(declare-fun lt!311499 () Unit!23465)

(assert (=> b!669072 (= lt!311499 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669072 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311502 () Unit!23465)

(assert (=> b!669072 (= lt!311502 e!382710)))

(declare-fun c!76822 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!669072 (= c!76822 (validKeyInArray!0 (select (arr!18734 a!3626) from!3004)))))

(declare-fun lt!311498 () Unit!23465)

(assert (=> b!669072 (= lt!311498 e!382709)))

(declare-fun c!76823 () Bool)

(declare-fun arrayContainsKey!0 (array!39091 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!669072 (= c!76823 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669072 (arrayContainsKey!0 (array!39092 (store (arr!18734 a!3626) i!1382 k!2843) (size!19098 a!3626)) k!2843 from!3004)))

(declare-fun b!669073 () Bool)

(declare-fun res!436163 () Bool)

(assert (=> b!669073 (=> (not res!436163) (not e!382716))))

(assert (=> b!669073 (= res!436163 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669074 () Bool)

(declare-fun e!382715 () Bool)

(declare-fun e!382708 () Bool)

(assert (=> b!669074 (= e!382715 e!382708)))

(declare-fun res!436154 () Bool)

(assert (=> b!669074 (=> (not res!436154) (not e!382708))))

(assert (=> b!669074 (= res!436154 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669075 () Bool)

(assert (=> b!669075 (= e!382712 true)))

(declare-fun lt!311494 () Bool)

(assert (=> b!669075 (= lt!311494 e!382715)))

(declare-fun res!436164 () Bool)

(assert (=> b!669075 (=> res!436164 e!382715)))

(declare-fun e!382717 () Bool)

(assert (=> b!669075 (= res!436164 e!382717)))

(declare-fun res!436149 () Bool)

(assert (=> b!669075 (=> (not res!436149) (not e!382717))))

(assert (=> b!669075 (= res!436149 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669076 () Bool)

(declare-fun res!436155 () Bool)

(assert (=> b!669076 (=> (not res!436155) (not e!382716))))

(assert (=> b!669076 (= res!436155 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12825))))

(declare-fun b!669077 () Bool)

(declare-fun res!436169 () Bool)

(assert (=> b!669077 (=> res!436169 e!382712)))

(declare-fun noDuplicate!618 (List!12828) Bool)

(assert (=> b!669077 (= res!436169 (not (noDuplicate!618 lt!311500)))))

(declare-fun b!669078 () Bool)

(declare-fun res!436167 () Bool)

(assert (=> b!669078 (=> (not res!436167) (not e!382716))))

(assert (=> b!669078 (= res!436167 e!382711)))

(declare-fun res!436160 () Bool)

(assert (=> b!669078 (=> res!436160 e!382711)))

(assert (=> b!669078 (= res!436160 e!382714)))

(declare-fun res!436157 () Bool)

(assert (=> b!669078 (=> (not res!436157) (not e!382714))))

(assert (=> b!669078 (= res!436157 (bvsgt from!3004 i!1382))))

(declare-fun b!669079 () Bool)

(declare-fun res!436165 () Bool)

(assert (=> b!669079 (=> (not res!436165) (not e!382716))))

(assert (=> b!669079 (= res!436165 (noDuplicate!618 acc!681))))

(declare-fun b!669080 () Bool)

(declare-fun res!436153 () Bool)

(assert (=> b!669080 (=> (not res!436153) (not e!382716))))

(assert (=> b!669080 (= res!436153 (validKeyInArray!0 k!2843))))

(declare-fun b!669081 () Bool)

(assert (=> b!669081 (= e!382717 (contains!3371 lt!311500 k!2843))))

(declare-fun b!669082 () Bool)

(assert (=> b!669082 (= e!382708 (not (contains!3371 lt!311500 k!2843)))))

(declare-fun b!669083 () Bool)

(declare-fun res!436162 () Bool)

(assert (=> b!669083 (=> (not res!436162) (not e!382716))))

(assert (=> b!669083 (= res!436162 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19098 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!60088 res!436168) b!669079))

(assert (= (and b!669079 res!436165) b!669064))

(assert (= (and b!669064 res!436156) b!669070))

(assert (= (and b!669070 res!436166) b!669078))

(assert (= (and b!669078 res!436157) b!669065))

(assert (= (and b!669078 (not res!436160)) b!669066))

(assert (= (and b!669066 res!436150) b!669067))

(assert (= (and b!669078 res!436167) b!669076))

(assert (= (and b!669076 res!436155) b!669059))

(assert (= (and b!669059 res!436158) b!669060))

(assert (= (and b!669060 res!436151) b!669080))

(assert (= (and b!669080 res!436153) b!669073))

(assert (= (and b!669073 res!436163) b!669083))

(assert (= (and b!669083 res!436162) b!669072))

(assert (= (and b!669072 c!76823) b!669071))

(assert (= (and b!669072 (not c!76823)) b!669069))

(assert (= (and b!669072 c!76822) b!669061))

(assert (= (and b!669072 (not c!76822)) b!669062))

(assert (= (and b!669072 (not res!436161)) b!669077))

(assert (= (and b!669077 (not res!436169)) b!669063))

(assert (= (and b!669063 (not res!436159)) b!669068))

(assert (= (and b!669068 (not res!436152)) b!669075))

(assert (= (and b!669075 res!436149) b!669081))

(assert (= (and b!669075 (not res!436164)) b!669074))

(assert (= (and b!669074 res!436154) b!669082))

(declare-fun m!639263 () Bool)

(assert (=> b!669080 m!639263))

(declare-fun m!639265 () Bool)

(assert (=> b!669059 m!639265))

(declare-fun m!639267 () Bool)

(assert (=> b!669067 m!639267))

(declare-fun m!639269 () Bool)

(assert (=> b!669070 m!639269))

(declare-fun m!639271 () Bool)

(assert (=> start!60088 m!639271))

(declare-fun m!639273 () Bool)

(assert (=> b!669081 m!639273))

(assert (=> b!669065 m!639267))

(declare-fun m!639275 () Bool)

(assert (=> b!669077 m!639275))

(declare-fun m!639277 () Bool)

(assert (=> b!669073 m!639277))

(declare-fun m!639279 () Bool)

(assert (=> b!669076 m!639279))

(declare-fun m!639281 () Bool)

(assert (=> b!669079 m!639281))

(declare-fun m!639283 () Bool)

(assert (=> b!669071 m!639283))

(assert (=> b!669082 m!639273))

(declare-fun m!639285 () Bool)

(assert (=> b!669064 m!639285))

(declare-fun m!639287 () Bool)

(assert (=> b!669068 m!639287))

(declare-fun m!639289 () Bool)

(assert (=> b!669063 m!639289))

(declare-fun m!639291 () Bool)

(assert (=> b!669072 m!639291))

(declare-fun m!639293 () Bool)

(assert (=> b!669072 m!639293))

(declare-fun m!639295 () Bool)

(assert (=> b!669072 m!639295))

(declare-fun m!639297 () Bool)

(assert (=> b!669072 m!639297))

(declare-fun m!639299 () Bool)

(assert (=> b!669072 m!639299))

(declare-fun m!639301 () Bool)

(assert (=> b!669072 m!639301))

(declare-fun m!639303 () Bool)

(assert (=> b!669072 m!639303))

(declare-fun m!639305 () Bool)

(assert (=> b!669072 m!639305))

(declare-fun m!639307 () Bool)

(assert (=> b!669072 m!639307))

(declare-fun m!639309 () Bool)

(assert (=> b!669072 m!639309))

(assert (=> b!669072 m!639297))

(declare-fun m!639311 () Bool)

(assert (=> b!669072 m!639311))

(declare-fun m!639313 () Bool)

(assert (=> b!669072 m!639313))

(declare-fun m!639315 () Bool)

(assert (=> b!669072 m!639315))

(assert (=> b!669061 m!639295))

(assert (=> b!669061 m!639297))

(declare-fun m!639317 () Bool)

(assert (=> b!669061 m!639317))

(declare-fun m!639319 () Bool)

(assert (=> b!669061 m!639319))

(assert (=> b!669061 m!639297))

(assert (=> b!669061 m!639317))

(assert (=> b!669061 m!639305))

(assert (=> b!669061 m!639315))

(push 1)

(assert (not b!669064))

(assert (not b!669076))

(assert (not b!669063))

(assert (not b!669079))

(assert (not b!669080))

(assert (not b!669068))

(assert (not b!669070))

(assert (not b!669073))

(assert (not b!669081))

(assert (not b!669072))

(assert (not b!669071))

(assert (not b!669082))

(assert (not start!60088))

(assert (not b!669077))

(assert (not b!669065))

(assert (not b!669059))

(assert (not b!669067))

(assert (not b!669061))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

