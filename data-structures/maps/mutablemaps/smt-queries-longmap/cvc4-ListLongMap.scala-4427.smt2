; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61390 () Bool)

(assert start!61390)

(declare-fun b!686988 () Bool)

(declare-fun res!452127 () Bool)

(declare-fun e!391222 () Bool)

(assert (=> b!686988 (=> (not res!452127) (not e!391222))))

(declare-datatypes ((List!13089 0))(
  ( (Nil!13086) (Cons!13085 (h!14130 (_ BitVec 64)) (t!19355 List!13089)) )
))
(declare-fun acc!681 () List!13089)

(declare-fun noDuplicate!879 (List!13089) Bool)

(assert (=> b!686988 (= res!452127 (noDuplicate!879 acc!681))))

(declare-fun b!686990 () Bool)

(declare-fun res!452138 () Bool)

(assert (=> b!686990 (=> (not res!452138) (not e!391222))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39649 0))(
  ( (array!39650 (arr!18995 (Array (_ BitVec 32) (_ BitVec 64))) (size!19370 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39649)

(assert (=> b!686990 (= res!452138 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19370 a!3626))))))

(declare-fun b!686991 () Bool)

(declare-datatypes ((Unit!24212 0))(
  ( (Unit!24213) )
))
(declare-fun e!391225 () Unit!24212)

(declare-fun Unit!24214 () Unit!24212)

(assert (=> b!686991 (= e!391225 Unit!24214)))

(declare-fun b!686992 () Bool)

(declare-fun res!452128 () Bool)

(declare-fun e!391221 () Bool)

(assert (=> b!686992 (=> res!452128 e!391221)))

(declare-fun lt!315290 () List!13089)

(assert (=> b!686992 (= res!452128 (not (noDuplicate!879 lt!315290)))))

(declare-fun b!686993 () Bool)

(declare-fun e!391223 () Bool)

(declare-fun contains!3632 (List!13089 (_ BitVec 64)) Bool)

(assert (=> b!686993 (= e!391223 (not (contains!3632 lt!315290 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686994 () Bool)

(declare-fun e!391226 () Unit!24212)

(declare-fun Unit!24215 () Unit!24212)

(assert (=> b!686994 (= e!391226 Unit!24215)))

(declare-fun lt!315286 () Unit!24212)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39649 (_ BitVec 64) (_ BitVec 32)) Unit!24212)

(assert (=> b!686994 (= lt!315286 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!686994 false))

(declare-fun b!686995 () Bool)

(declare-fun res!452132 () Bool)

(assert (=> b!686995 (=> (not res!452132) (not e!391222))))

(assert (=> b!686995 (= res!452132 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19370 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!686996 () Bool)

(declare-fun res!452135 () Bool)

(assert (=> b!686996 (=> (not res!452135) (not e!391222))))

(declare-fun arrayNoDuplicates!0 (array!39649 (_ BitVec 32) List!13089) Bool)

(assert (=> b!686996 (= res!452135 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13086))))

(declare-fun b!686997 () Bool)

(declare-fun res!452133 () Bool)

(assert (=> b!686997 (=> (not res!452133) (not e!391222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!686997 (= res!452133 (validKeyInArray!0 k!2843))))

(declare-fun b!686998 () Bool)

(declare-fun res!452129 () Bool)

(assert (=> b!686998 (=> (not res!452129) (not e!391222))))

(declare-fun e!391224 () Bool)

(assert (=> b!686998 (= res!452129 e!391224)))

(declare-fun res!452125 () Bool)

(assert (=> b!686998 (=> res!452125 e!391224)))

(declare-fun e!391220 () Bool)

(assert (=> b!686998 (= res!452125 e!391220)))

(declare-fun res!452124 () Bool)

(assert (=> b!686998 (=> (not res!452124) (not e!391220))))

(assert (=> b!686998 (= res!452124 (bvsgt from!3004 i!1382))))

(declare-fun b!686999 () Bool)

(declare-fun e!391227 () Bool)

(assert (=> b!686999 (= e!391224 e!391227)))

(declare-fun res!452123 () Bool)

(assert (=> b!686999 (=> (not res!452123) (not e!391227))))

(assert (=> b!686999 (= res!452123 (bvsle from!3004 i!1382))))

(declare-fun b!687000 () Bool)

(assert (=> b!687000 (= e!391221 e!391223)))

(declare-fun res!452122 () Bool)

(assert (=> b!687000 (=> (not res!452122) (not e!391223))))

(assert (=> b!687000 (= res!452122 (not (contains!3632 lt!315290 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!687001 () Bool)

(declare-fun res!452134 () Bool)

(assert (=> b!687001 (=> (not res!452134) (not e!391222))))

(assert (=> b!687001 (= res!452134 (not (contains!3632 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!687002 () Bool)

(declare-fun lt!315293 () Unit!24212)

(assert (=> b!687002 (= e!391225 lt!315293)))

(declare-fun lt!315287 () Unit!24212)

(declare-fun lemmaListSubSeqRefl!0 (List!13089) Unit!24212)

(assert (=> b!687002 (= lt!315287 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!217 (List!13089 List!13089) Bool)

(assert (=> b!687002 (subseq!217 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39649 List!13089 List!13089 (_ BitVec 32)) Unit!24212)

(declare-fun $colon$colon!381 (List!13089 (_ BitVec 64)) List!13089)

(assert (=> b!687002 (= lt!315293 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!381 acc!681 (select (arr!18995 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687002 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!687003 () Bool)

(assert (=> b!687003 (= e!391222 (not e!391221))))

(declare-fun res!452126 () Bool)

(assert (=> b!687003 (=> res!452126 e!391221)))

(assert (=> b!687003 (= res!452126 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!687003 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315290)))

(declare-fun lt!315292 () Unit!24212)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39649 (_ BitVec 64) (_ BitVec 32) List!13089 List!13089) Unit!24212)

(assert (=> b!687003 (= lt!315292 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315290))))

(declare-fun -!182 (List!13089 (_ BitVec 64)) List!13089)

(assert (=> b!687003 (= (-!182 lt!315290 k!2843) acc!681)))

(assert (=> b!687003 (= lt!315290 ($colon$colon!381 acc!681 k!2843))))

(declare-fun lt!315288 () Unit!24212)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13089) Unit!24212)

(assert (=> b!687003 (= lt!315288 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!687003 (subseq!217 acc!681 acc!681)))

(declare-fun lt!315294 () Unit!24212)

(assert (=> b!687003 (= lt!315294 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!687003 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315289 () Unit!24212)

(assert (=> b!687003 (= lt!315289 e!391225)))

(declare-fun c!77800 () Bool)

(assert (=> b!687003 (= c!77800 (validKeyInArray!0 (select (arr!18995 a!3626) from!3004)))))

(declare-fun lt!315291 () Unit!24212)

(assert (=> b!687003 (= lt!315291 e!391226)))

(declare-fun c!77801 () Bool)

(declare-fun arrayContainsKey!0 (array!39649 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!687003 (= c!77801 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687003 (arrayContainsKey!0 (array!39650 (store (arr!18995 a!3626) i!1382 k!2843) (size!19370 a!3626)) k!2843 from!3004)))

(declare-fun res!452130 () Bool)

(assert (=> start!61390 (=> (not res!452130) (not e!391222))))

(assert (=> start!61390 (= res!452130 (and (bvslt (size!19370 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19370 a!3626))))))

(assert (=> start!61390 e!391222))

(assert (=> start!61390 true))

(declare-fun array_inv!14769 (array!39649) Bool)

(assert (=> start!61390 (array_inv!14769 a!3626)))

(declare-fun b!686989 () Bool)

(assert (=> b!686989 (= e!391220 (contains!3632 acc!681 k!2843))))

(declare-fun b!687004 () Bool)

(declare-fun Unit!24216 () Unit!24212)

(assert (=> b!687004 (= e!391226 Unit!24216)))

(declare-fun b!687005 () Bool)

(declare-fun res!452136 () Bool)

(assert (=> b!687005 (=> (not res!452136) (not e!391222))))

(assert (=> b!687005 (= res!452136 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!687006 () Bool)

(assert (=> b!687006 (= e!391227 (not (contains!3632 acc!681 k!2843)))))

(declare-fun b!687007 () Bool)

(declare-fun res!452131 () Bool)

(assert (=> b!687007 (=> (not res!452131) (not e!391222))))

(assert (=> b!687007 (= res!452131 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!687008 () Bool)

(declare-fun res!452137 () Bool)

(assert (=> b!687008 (=> (not res!452137) (not e!391222))))

(assert (=> b!687008 (= res!452137 (not (contains!3632 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61390 res!452130) b!686988))

(assert (= (and b!686988 res!452127) b!687008))

(assert (= (and b!687008 res!452137) b!687001))

(assert (= (and b!687001 res!452134) b!686998))

(assert (= (and b!686998 res!452124) b!686989))

(assert (= (and b!686998 (not res!452125)) b!686999))

(assert (= (and b!686999 res!452123) b!687006))

(assert (= (and b!686998 res!452129) b!686996))

(assert (= (and b!686996 res!452135) b!687005))

(assert (= (and b!687005 res!452136) b!686990))

(assert (= (and b!686990 res!452138) b!686997))

(assert (= (and b!686997 res!452133) b!687007))

(assert (= (and b!687007 res!452131) b!686995))

(assert (= (and b!686995 res!452132) b!687003))

(assert (= (and b!687003 c!77801) b!686994))

(assert (= (and b!687003 (not c!77801)) b!687004))

(assert (= (and b!687003 c!77800) b!687002))

(assert (= (and b!687003 (not c!77800)) b!686991))

(assert (= (and b!687003 (not res!452126)) b!686992))

(assert (= (and b!686992 (not res!452128)) b!687000))

(assert (= (and b!687000 res!452122) b!686993))

(declare-fun m!651097 () Bool)

(assert (=> b!686994 m!651097))

(declare-fun m!651099 () Bool)

(assert (=> b!686997 m!651099))

(declare-fun m!651101 () Bool)

(assert (=> b!687006 m!651101))

(declare-fun m!651103 () Bool)

(assert (=> b!687007 m!651103))

(declare-fun m!651105 () Bool)

(assert (=> b!687003 m!651105))

(declare-fun m!651107 () Bool)

(assert (=> b!687003 m!651107))

(declare-fun m!651109 () Bool)

(assert (=> b!687003 m!651109))

(declare-fun m!651111 () Bool)

(assert (=> b!687003 m!651111))

(declare-fun m!651113 () Bool)

(assert (=> b!687003 m!651113))

(declare-fun m!651115 () Bool)

(assert (=> b!687003 m!651115))

(declare-fun m!651117 () Bool)

(assert (=> b!687003 m!651117))

(declare-fun m!651119 () Bool)

(assert (=> b!687003 m!651119))

(declare-fun m!651121 () Bool)

(assert (=> b!687003 m!651121))

(declare-fun m!651123 () Bool)

(assert (=> b!687003 m!651123))

(assert (=> b!687003 m!651107))

(declare-fun m!651125 () Bool)

(assert (=> b!687003 m!651125))

(declare-fun m!651127 () Bool)

(assert (=> b!687003 m!651127))

(declare-fun m!651129 () Bool)

(assert (=> b!687003 m!651129))

(declare-fun m!651131 () Bool)

(assert (=> b!686992 m!651131))

(declare-fun m!651133 () Bool)

(assert (=> b!686993 m!651133))

(declare-fun m!651135 () Bool)

(assert (=> b!686988 m!651135))

(declare-fun m!651137 () Bool)

(assert (=> b!687000 m!651137))

(declare-fun m!651139 () Bool)

(assert (=> b!687005 m!651139))

(assert (=> b!686989 m!651101))

(declare-fun m!651141 () Bool)

(assert (=> b!686996 m!651141))

(declare-fun m!651143 () Bool)

(assert (=> b!687008 m!651143))

(assert (=> b!687002 m!651105))

(assert (=> b!687002 m!651107))

(declare-fun m!651145 () Bool)

(assert (=> b!687002 m!651145))

(declare-fun m!651147 () Bool)

(assert (=> b!687002 m!651147))

(assert (=> b!687002 m!651107))

(assert (=> b!687002 m!651145))

(assert (=> b!687002 m!651117))

(assert (=> b!687002 m!651129))

(declare-fun m!651149 () Bool)

(assert (=> start!61390 m!651149))

(declare-fun m!651151 () Bool)

(assert (=> b!687001 m!651151))

(push 1)

(assert (not b!686988))

(assert (not b!686993))

(assert (not b!687008))

(assert (not b!686994))

(assert (not b!687003))

(assert (not b!687001))

(assert (not b!687007))

(assert (not b!687002))

(assert (not b!687006))

(assert (not b!686992))

(assert (not b!686997))

(assert (not b!686996))

(assert (not b!686989))

(assert (not b!687005))

(assert (not b!687000))

(assert (not start!61390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!94797 () Bool)

(assert (=> d!94797 (= ($colon$colon!381 acc!681 (select (arr!18995 a!3626) from!3004)) (Cons!13085 (select (arr!18995 a!3626) from!3004) acc!681))))

(assert (=> b!687002 d!94797))

(declare-fun b!687043 () Bool)

(declare-fun e!391259 () Bool)

(assert (=> b!687043 (= e!391259 (subseq!217 (t!19355 acc!681) (t!19355 acc!681)))))

(declare-fun b!687041 () Bool)

(declare-fun e!391260 () Bool)

(declare-fun e!391261 () Bool)

(assert (=> b!687041 (= e!391260 e!391261)))

(declare-fun res!452168 () Bool)

(assert (=> b!687041 (=> (not res!452168) (not e!391261))))

(assert (=> b!687041 (= res!452168 (is-Cons!13085 acc!681))))

(declare-fun b!687042 () Bool)

(declare-fun e!391262 () Bool)

(assert (=> b!687042 (= e!391261 e!391262)))

(declare-fun res!452170 () Bool)

(assert (=> b!687042 (=> res!452170 e!391262)))

(assert (=> b!687042 (= res!452170 e!391259)))

(declare-fun res!452167 () Bool)

(assert (=> b!687042 (=> (not res!452167) (not e!391259))))

(assert (=> b!687042 (= res!452167 (= (h!14130 acc!681) (h!14130 acc!681)))))

(declare-fun b!687044 () Bool)

(assert (=> b!687044 (= e!391262 (subseq!217 acc!681 (t!19355 acc!681)))))

(declare-fun d!94801 () Bool)

(declare-fun res!452169 () Bool)

(assert (=> d!94801 (=> res!452169 e!391260)))

(assert (=> d!94801 (= res!452169 (is-Nil!13086 acc!681))))

(assert (=> d!94801 (= (subseq!217 acc!681 acc!681) e!391260)))

(assert (= (and d!94801 (not res!452169)) b!687041))

(assert (= (and b!687041 res!452168) b!687042))

(assert (= (and b!687042 res!452167) b!687043))

(assert (= (and b!687042 (not res!452170)) b!687044))

(declare-fun m!651169 () Bool)

(assert (=> b!687043 m!651169))

(declare-fun m!651171 () Bool)

(assert (=> b!687044 m!651171))

(assert (=> b!687002 d!94801))

(declare-fun d!94803 () Bool)

(assert (=> d!94803 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315304 () Unit!24212)

(declare-fun choose!80 (array!39649 List!13089 List!13089 (_ BitVec 32)) Unit!24212)

(assert (=> d!94803 (= lt!315304 (choose!80 a!3626 ($colon$colon!381 acc!681 (select (arr!18995 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!94803 (bvslt (size!19370 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94803 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!381 acc!681 (select (arr!18995 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!315304)))

(declare-fun bs!20145 () Bool)

(assert (= bs!20145 d!94803))

(assert (=> bs!20145 m!651105))

(assert (=> bs!20145 m!651145))

(declare-fun m!651181 () Bool)

(assert (=> bs!20145 m!651181))

(assert (=> b!687002 d!94803))

(declare-fun d!94807 () Bool)

(assert (=> d!94807 (subseq!217 acc!681 acc!681)))

(declare-fun lt!315307 () Unit!24212)

(declare-fun choose!36 (List!13089) Unit!24212)

(assert (=> d!94807 (= lt!315307 (choose!36 acc!681))))

(assert (=> d!94807 (= (lemmaListSubSeqRefl!0 acc!681) lt!315307)))

(declare-fun bs!20146 () Bool)

(assert (= bs!20146 d!94807))

(assert (=> bs!20146 m!651129))

(declare-fun m!651183 () Bool)

(assert (=> bs!20146 m!651183))

(assert (=> b!687002 d!94807))

(declare-fun e!391291 () Bool)

(declare-fun b!687076 () Bool)

(assert (=> b!687076 (= e!391291 (contains!3632 acc!681 (select (arr!18995 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687077 () Bool)

(declare-fun e!391292 () Bool)

(declare-fun e!391293 () Bool)

(assert (=> b!687077 (= e!391292 e!391293)))

(declare-fun c!77807 () Bool)

(assert (=> b!687077 (= c!77807 (validKeyInArray!0 (select (arr!18995 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687078 () Bool)

(declare-fun call!34130 () Bool)

(assert (=> b!687078 (= e!391293 call!34130)))

(declare-fun b!687079 () Bool)

(assert (=> b!687079 (= e!391293 call!34130)))

(declare-fun d!94809 () Bool)

(declare-fun res!452196 () Bool)

(declare-fun e!391294 () Bool)

(assert (=> d!94809 (=> res!452196 e!391294)))

(assert (=> d!94809 (= res!452196 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19370 a!3626)))))

(assert (=> d!94809 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!391294)))

(declare-fun bm!34127 () Bool)

(assert (=> bm!34127 (= call!34130 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77807 (Cons!13085 (select (arr!18995 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!687080 () Bool)

(assert (=> b!687080 (= e!391294 e!391292)))

(declare-fun res!452197 () Bool)

(assert (=> b!687080 (=> (not res!452197) (not e!391292))))

(assert (=> b!687080 (= res!452197 (not e!391291))))

(declare-fun res!452198 () Bool)

(assert (=> b!687080 (=> (not res!452198) (not e!391291))))

(assert (=> b!687080 (= res!452198 (validKeyInArray!0 (select (arr!18995 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!94809 (not res!452196)) b!687080))

(assert (= (and b!687080 res!452198) b!687076))

(assert (= (and b!687080 res!452197) b!687077))

(assert (= (and b!687077 c!77807) b!687078))

(assert (= (and b!687077 (not c!77807)) b!687079))

(assert (= (or b!687078 b!687079) bm!34127))

(declare-fun m!651191 () Bool)

(assert (=> b!687076 m!651191))

(assert (=> b!687076 m!651191))

(declare-fun m!651193 () Bool)

(assert (=> b!687076 m!651193))

(assert (=> b!687077 m!651191))

(assert (=> b!687077 m!651191))

(declare-fun m!651195 () Bool)

(assert (=> b!687077 m!651195))

(assert (=> bm!34127 m!651191))

(declare-fun m!651197 () Bool)

(assert (=> bm!34127 m!651197))

(assert (=> b!687080 m!651191))

(assert (=> b!687080 m!651191))

(assert (=> b!687080 m!651195))

(assert (=> b!687002 d!94809))

(declare-fun d!94817 () Bool)

(declare-fun res!452211 () Bool)

(declare-fun e!391307 () Bool)

(assert (=> d!94817 (=> res!452211 e!391307)))

(assert (=> d!94817 (= res!452211 (is-Nil!13086 lt!315290))))

(assert (=> d!94817 (= (noDuplicate!879 lt!315290) e!391307)))

(declare-fun b!687093 () Bool)

(declare-fun e!391308 () Bool)

(assert (=> b!687093 (= e!391307 e!391308)))

(declare-fun res!452212 () Bool)

(assert (=> b!687093 (=> (not res!452212) (not e!391308))))

(assert (=> b!687093 (= res!452212 (not (contains!3632 (t!19355 lt!315290) (h!14130 lt!315290))))))

(declare-fun b!687094 () Bool)

(assert (=> b!687094 (= e!391308 (noDuplicate!879 (t!19355 lt!315290)))))

(assert (= (and d!94817 (not res!452211)) b!687093))

(assert (= (and b!687093 res!452212) b!687094))

(declare-fun m!651207 () Bool)

(assert (=> b!687093 m!651207))

(declare-fun m!651209 () Bool)

(assert (=> b!687094 m!651209))

(assert (=> b!686992 d!94817))

(declare-fun b!687095 () Bool)

(declare-fun e!391309 () Bool)

(assert (=> b!687095 (= e!391309 (contains!3632 lt!315290 (select (arr!18995 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687096 () Bool)

(declare-fun e!391310 () Bool)

(declare-fun e!391311 () Bool)

(assert (=> b!687096 (= e!391310 e!391311)))

(declare-fun c!77808 () Bool)

(assert (=> b!687096 (= c!77808 (validKeyInArray!0 (select (arr!18995 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687097 () Bool)

(declare-fun call!34131 () Bool)

(assert (=> b!687097 (= e!391311 call!34131)))

(declare-fun b!687098 () Bool)

(assert (=> b!687098 (= e!391311 call!34131)))

(declare-fun d!94823 () Bool)

(declare-fun res!452213 () Bool)

(declare-fun e!391312 () Bool)

(assert (=> d!94823 (=> res!452213 e!391312)))

(assert (=> d!94823 (= res!452213 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19370 a!3626)))))

(assert (=> d!94823 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315290) e!391312)))

(declare-fun bm!34128 () Bool)

(assert (=> bm!34128 (= call!34131 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77808 (Cons!13085 (select (arr!18995 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!315290) lt!315290)))))

(declare-fun b!687099 () Bool)

(assert (=> b!687099 (= e!391312 e!391310)))

(declare-fun res!452214 () Bool)

(assert (=> b!687099 (=> (not res!452214) (not e!391310))))

(assert (=> b!687099 (= res!452214 (not e!391309))))

(declare-fun res!452215 () Bool)

(assert (=> b!687099 (=> (not res!452215) (not e!391309))))

(assert (=> b!687099 (= res!452215 (validKeyInArray!0 (select (arr!18995 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!94823 (not res!452213)) b!687099))

(assert (= (and b!687099 res!452215) b!687095))

(assert (= (and b!687099 res!452214) b!687096))

(assert (= (and b!687096 c!77808) b!687097))

(assert (= (and b!687096 (not c!77808)) b!687098))

(assert (= (or b!687097 b!687098) bm!34128))

(assert (=> b!687095 m!651191))

(assert (=> b!687095 m!651191))

(declare-fun m!651211 () Bool)

(assert (=> b!687095 m!651211))

(assert (=> b!687096 m!651191))

(assert (=> b!687096 m!651191))

(assert (=> b!687096 m!651195))

(assert (=> bm!34128 m!651191))

(declare-fun m!651213 () Bool)

(assert (=> bm!34128 m!651213))

(assert (=> b!687099 m!651191))

(assert (=> b!687099 m!651191))

(assert (=> b!687099 m!651195))

(assert (=> b!687003 d!94823))

(assert (=> b!687003 d!94801))

(declare-fun d!94825 () Bool)

(declare-fun res!452228 () Bool)

(declare-fun e!391332 () Bool)

(assert (=> d!94825 (=> res!452228 e!391332)))

(assert (=> d!94825 (= res!452228 (= (select (arr!18995 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!94825 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!391332)))

(declare-fun b!687124 () Bool)

(declare-fun e!391333 () Bool)

(assert (=> b!687124 (= e!391332 e!391333)))

(declare-fun res!452229 () Bool)

(assert (=> b!687124 (=> (not res!452229) (not e!391333))))

(assert (=> b!687124 (= res!452229 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19370 a!3626)))))

(declare-fun b!687125 () Bool)

(assert (=> b!687125 (= e!391333 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94825 (not res!452228)) b!687124))

(assert (= (and b!687124 res!452229) b!687125))

(assert (=> d!94825 m!651191))

(declare-fun m!651215 () Bool)

(assert (=> b!687125 m!651215))

(assert (=> b!687003 d!94825))

(declare-fun b!687158 () Bool)

(declare-fun e!391358 () List!13089)

(assert (=> b!687158 (= e!391358 Nil!13086)))

(declare-fun b!687159 () Bool)

(declare-fun e!391357 () List!13089)

(declare-fun call!34142 () List!13089)

(assert (=> b!687159 (= e!391357 call!34142)))

(declare-fun e!391359 () Bool)

(declare-fun b!687160 () Bool)

(declare-fun lt!315327 () List!13089)

(declare-fun content!300 (List!13089) (Set (_ BitVec 64)))

(assert (=> b!687160 (= e!391359 (= (content!300 lt!315327) (setminus (content!300 lt!315290) (insert k!2843 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun d!94827 () Bool)

(assert (=> d!94827 e!391359))

(declare-fun res!452240 () Bool)

(assert (=> d!94827 (=> (not res!452240) (not e!391359))))

(declare-fun size!19373 (List!13089) Int)

(assert (=> d!94827 (= res!452240 (<= (size!19373 lt!315327) (size!19373 lt!315290)))))

(assert (=> d!94827 (= lt!315327 e!391358)))

(declare-fun c!77826 () Bool)

(assert (=> d!94827 (= c!77826 (is-Cons!13085 lt!315290))))

(assert (=> d!94827 (= (-!182 lt!315290 k!2843) lt!315327)))

(declare-fun b!687161 () Bool)

(assert (=> b!687161 (= e!391358 e!391357)))

(declare-fun c!77827 () Bool)

(assert (=> b!687161 (= c!77827 (= k!2843 (h!14130 lt!315290)))))

(declare-fun bm!34139 () Bool)

(assert (=> bm!34139 (= call!34142 (-!182 (t!19355 lt!315290) k!2843))))

(declare-fun b!687162 () Bool)

(assert (=> b!687162 (= e!391357 (Cons!13085 (h!14130 lt!315290) call!34142))))

(assert (= (and d!94827 c!77826) b!687161))

(assert (= (and d!94827 (not c!77826)) b!687158))

(assert (= (and b!687161 c!77827) b!687159))

(assert (= (and b!687161 (not c!77827)) b!687162))

(assert (= (or b!687159 b!687162) bm!34139))

(assert (= (and d!94827 res!452240) b!687160))

(declare-fun m!651247 () Bool)

(assert (=> b!687160 m!651247))

(declare-fun m!651249 () Bool)

(assert (=> b!687160 m!651249))

(declare-fun m!651251 () Bool)

(assert (=> b!687160 m!651251))

(declare-fun m!651253 () Bool)

(assert (=> d!94827 m!651253))

(declare-fun m!651255 () Bool)

(assert (=> d!94827 m!651255))

(declare-fun m!651257 () Bool)

(assert (=> bm!34139 m!651257))

(assert (=> b!687003 d!94827))

(declare-fun d!94839 () Bool)

(assert (=> d!94839 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315290)))

(declare-fun lt!315332 () Unit!24212)

(declare-fun choose!66 (array!39649 (_ BitVec 64) (_ BitVec 32) List!13089 List!13089) Unit!24212)

(assert (=> d!94839 (= lt!315332 (choose!66 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315290))))

(assert (=> d!94839 (bvslt (size!19370 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94839 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315290) lt!315332)))

(declare-fun bs!20150 () Bool)

(assert (= bs!20150 d!94839))

(assert (=> bs!20150 m!651111))

(declare-fun m!651283 () Bool)

(assert (=> bs!20150 m!651283))

(assert (=> b!687003 d!94839))

(declare-fun d!94855 () Bool)

(assert (=> d!94855 (= (-!182 ($colon$colon!381 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!315338 () Unit!24212)

(declare-fun choose!16 ((_ BitVec 64) List!13089) Unit!24212)

(assert (=> d!94855 (= lt!315338 (choose!16 k!2843 acc!681))))

(assert (=> d!94855 (not (contains!3632 acc!681 k!2843))))

(assert (=> d!94855 (= (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681) lt!315338)))

(declare-fun bs!20152 () Bool)

(assert (= bs!20152 d!94855))

(assert (=> bs!20152 m!651121))

(assert (=> bs!20152 m!651121))

(declare-fun m!651291 () Bool)

(assert (=> bs!20152 m!651291))

(declare-fun m!651293 () Bool)

(assert (=> bs!20152 m!651293))

(assert (=> bs!20152 m!651101))

(assert (=> b!687003 d!94855))

(declare-fun d!94861 () Bool)

(declare-fun res!452261 () Bool)

(declare-fun e!391384 () Bool)

(assert (=> d!94861 (=> res!452261 e!391384)))

(assert (=> d!94861 (= res!452261 (= (select (arr!18995 (array!39650 (store (arr!18995 a!3626) i!1382 k!2843) (size!19370 a!3626))) from!3004) k!2843))))

(assert (=> d!94861 (= (arrayContainsKey!0 (array!39650 (store (arr!18995 a!3626) i!1382 k!2843) (size!19370 a!3626)) k!2843 from!3004) e!391384)))

(declare-fun b!687189 () Bool)

(declare-fun e!391385 () Bool)

(assert (=> b!687189 (= e!391384 e!391385)))

(declare-fun res!452264 () Bool)

(assert (=> b!687189 (=> (not res!452264) (not e!391385))))

(assert (=> b!687189 (= res!452264 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19370 (array!39650 (store (arr!18995 a!3626) i!1382 k!2843) (size!19370 a!3626)))))))

(declare-fun b!687190 () Bool)

(assert (=> b!687190 (= e!391385 (arrayContainsKey!0 (array!39650 (store (arr!18995 a!3626) i!1382 k!2843) (size!19370 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94861 (not res!452261)) b!687189))

(assert (= (and b!687189 res!452264) b!687190))

(declare-fun m!651295 () Bool)

(assert (=> d!94861 m!651295))

(declare-fun m!651297 () Bool)

(assert (=> b!687190 m!651297))

(assert (=> b!687003 d!94861))

(assert (=> b!687003 d!94807))

(declare-fun d!94865 () Bool)

(assert (=> d!94865 (= (validKeyInArray!0 (select (arr!18995 a!3626) from!3004)) (and (not (= (select (arr!18995 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18995 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!687003 d!94865))

(declare-fun d!94871 () Bool)

(assert (=> d!94871 (= ($colon$colon!381 acc!681 k!2843) (Cons!13085 k!2843 acc!681))))

(assert (=> b!687003 d!94871))

(assert (=> b!687003 d!94809))

(declare-fun d!94873 () Bool)

(declare-fun lt!315345 () Bool)

(assert (=> d!94873 (= lt!315345 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!300 lt!315290)))))

(declare-fun e!391410 () Bool)

(assert (=> d!94873 (= lt!315345 e!391410)))

(declare-fun res!452285 () Bool)

(assert (=> d!94873 (=> (not res!452285) (not e!391410))))

(assert (=> d!94873 (= res!452285 (is-Cons!13085 lt!315290))))

(assert (=> d!94873 (= (contains!3632 lt!315290 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315345)))

(declare-fun b!687217 () Bool)

(declare-fun e!391409 () Bool)

(assert (=> b!687217 (= e!391410 e!391409)))

(declare-fun res!452286 () Bool)

(assert (=> b!687217 (=> res!452286 e!391409)))

(assert (=> b!687217 (= res!452286 (= (h!14130 lt!315290) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687218 () Bool)

(assert (=> b!687218 (= e!391409 (contains!3632 (t!19355 lt!315290) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94873 res!452285) b!687217))

(assert (= (and b!687217 (not res!452286)) b!687218))

(assert (=> d!94873 m!651249))

(declare-fun m!651323 () Bool)

(assert (=> d!94873 m!651323))

(declare-fun m!651325 () Bool)

(assert (=> b!687218 m!651325))

(assert (=> b!686993 d!94873))

(declare-fun d!94883 () Bool)

(declare-fun res!452287 () Bool)

(declare-fun e!391411 () Bool)

(assert (=> d!94883 (=> res!452287 e!391411)))

(assert (=> d!94883 (= res!452287 (is-Nil!13086 acc!681))))

(assert (=> d!94883 (= (noDuplicate!879 acc!681) e!391411)))

(declare-fun b!687219 () Bool)

(declare-fun e!391412 () Bool)

(assert (=> b!687219 (= e!391411 e!391412)))

(declare-fun res!452288 () Bool)

(assert (=> b!687219 (=> (not res!452288) (not e!391412))))

(assert (=> b!687219 (= res!452288 (not (contains!3632 (t!19355 acc!681) (h!14130 acc!681))))))

(declare-fun b!687220 () Bool)

(assert (=> b!687220 (= e!391412 (noDuplicate!879 (t!19355 acc!681)))))

(assert (= (and d!94883 (not res!452287)) b!687219))

(assert (= (and b!687219 res!452288) b!687220))

(declare-fun m!651327 () Bool)

(assert (=> b!687219 m!651327))

(declare-fun m!651331 () Bool)

(assert (=> b!687220 m!651331))

(assert (=> b!686988 d!94883))

(declare-fun d!94885 () Bool)

(declare-fun lt!315347 () Bool)

(assert (=> d!94885 (= lt!315347 (member k!2843 (content!300 acc!681)))))

(declare-fun e!391414 () Bool)

(assert (=> d!94885 (= lt!315347 e!391414)))

(declare-fun res!452289 () Bool)

(assert (=> d!94885 (=> (not res!452289) (not e!391414))))

(assert (=> d!94885 (= res!452289 (is-Cons!13085 acc!681))))

(assert (=> d!94885 (= (contains!3632 acc!681 k!2843) lt!315347)))

(declare-fun b!687221 () Bool)

(declare-fun e!391413 () Bool)

(assert (=> b!687221 (= e!391414 e!391413)))

(declare-fun res!452290 () Bool)

(assert (=> b!687221 (=> res!452290 e!391413)))

(assert (=> b!687221 (= res!452290 (= (h!14130 acc!681) k!2843))))

(declare-fun b!687222 () Bool)

(assert (=> b!687222 (= e!391413 (contains!3632 (t!19355 acc!681) k!2843))))

(assert (= (and d!94885 res!452289) b!687221))

(assert (= (and b!687221 (not res!452290)) b!687222))

(declare-fun m!651335 () Bool)

(assert (=> d!94885 m!651335))

(declare-fun m!651337 () Bool)

(assert (=> d!94885 m!651337))

(declare-fun m!651339 () Bool)

(assert (=> b!687222 m!651339))

(assert (=> b!686989 d!94885))

(declare-fun d!94889 () Bool)

(declare-fun lt!315348 () Bool)

(assert (=> d!94889 (= lt!315348 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!300 lt!315290)))))

(declare-fun e!391418 () Bool)

(assert (=> d!94889 (= lt!315348 e!391418)))

(declare-fun res!452293 () Bool)

(assert (=> d!94889 (=> (not res!452293) (not e!391418))))

(assert (=> d!94889 (= res!452293 (is-Cons!13085 lt!315290))))

(assert (=> d!94889 (= (contains!3632 lt!315290 #b0000000000000000000000000000000000000000000000000000000000000000) lt!315348)))

(declare-fun b!687225 () Bool)

(declare-fun e!391417 () Bool)

(assert (=> b!687225 (= e!391418 e!391417)))

(declare-fun res!452294 () Bool)

(assert (=> b!687225 (=> res!452294 e!391417)))

(assert (=> b!687225 (= res!452294 (= (h!14130 lt!315290) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687226 () Bool)

(assert (=> b!687226 (= e!391417 (contains!3632 (t!19355 lt!315290) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94889 res!452293) b!687225))

(assert (= (and b!687225 (not res!452294)) b!687226))

(assert (=> d!94889 m!651249))

(declare-fun m!651345 () Bool)

(assert (=> d!94889 m!651345))

(declare-fun m!651347 () Bool)

(assert (=> b!687226 m!651347))

(assert (=> b!687000 d!94889))

(declare-fun d!94893 () Bool)

(declare-fun lt!315349 () Bool)

(assert (=> d!94893 (= lt!315349 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!300 acc!681)))))

(declare-fun e!391420 () Bool)

(assert (=> d!94893 (= lt!315349 e!391420)))

(declare-fun res!452295 () Bool)

(assert (=> d!94893 (=> (not res!452295) (not e!391420))))

(assert (=> d!94893 (= res!452295 (is-Cons!13085 acc!681))))

(assert (=> d!94893 (= (contains!3632 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315349)))

(declare-fun b!687227 () Bool)

(declare-fun e!391419 () Bool)

(assert (=> b!687227 (= e!391420 e!391419)))

(declare-fun res!452296 () Bool)

(assert (=> b!687227 (=> res!452296 e!391419)))

(assert (=> b!687227 (= res!452296 (= (h!14130 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687228 () Bool)

(assert (=> b!687228 (= e!391419 (contains!3632 (t!19355 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94893 res!452295) b!687227))

(assert (= (and b!687227 (not res!452296)) b!687228))

(assert (=> d!94893 m!651335))

(declare-fun m!651349 () Bool)

(assert (=> d!94893 m!651349))

(declare-fun m!651351 () Bool)

(assert (=> b!687228 m!651351))

(assert (=> b!687001 d!94893))

(declare-fun b!687229 () Bool)

(declare-fun e!391421 () Bool)

(assert (=> b!687229 (= e!391421 (contains!3632 Nil!13086 (select (arr!18995 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!687230 () Bool)

(declare-fun e!391422 () Bool)

(declare-fun e!391423 () Bool)

(assert (=> b!687230 (= e!391422 e!391423)))

(declare-fun c!77833 () Bool)

(assert (=> b!687230 (= c!77833 (validKeyInArray!0 (select (arr!18995 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!687231 () Bool)

(declare-fun call!34147 () Bool)

(assert (=> b!687231 (= e!391423 call!34147)))

(declare-fun b!687232 () Bool)

(assert (=> b!687232 (= e!391423 call!34147)))

(declare-fun d!94895 () Bool)

(declare-fun res!452297 () Bool)

