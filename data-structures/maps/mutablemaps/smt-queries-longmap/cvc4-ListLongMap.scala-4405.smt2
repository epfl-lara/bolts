; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60670 () Bool)

(assert start!60670)

(declare-fun b!681150 () Bool)

(declare-fun res!447483 () Bool)

(declare-fun e!388001 () Bool)

(assert (=> b!681150 (=> (not res!447483) (not e!388001))))

(declare-datatypes ((List!13023 0))(
  ( (Nil!13020) (Cons!13019 (h!14064 (_ BitVec 64)) (t!19265 List!13023)) )
))
(declare-fun acc!681 () List!13023)

(declare-fun contains!3566 (List!13023 (_ BitVec 64)) Bool)

(assert (=> b!681150 (= res!447483 (not (contains!3566 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681151 () Bool)

(declare-fun res!447481 () Bool)

(assert (=> b!681151 (=> (not res!447481) (not e!388001))))

(assert (=> b!681151 (= res!447481 (not (contains!3566 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681152 () Bool)

(declare-fun e!387999 () Bool)

(declare-fun lt!313215 () List!13023)

(declare-fun subseq!151 (List!13023 List!13023) Bool)

(assert (=> b!681152 (= e!387999 (subseq!151 acc!681 lt!313215))))

(declare-fun b!681153 () Bool)

(declare-fun res!447476 () Bool)

(assert (=> b!681153 (=> (not res!447476) (not e!388001))))

(declare-datatypes ((array!39493 0))(
  ( (array!39494 (arr!18929 (Array (_ BitVec 32) (_ BitVec 64))) (size!19293 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39493)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39493 (_ BitVec 32) List!13023) Bool)

(assert (=> b!681153 (= res!447476 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!681154 () Bool)

(declare-fun e!388004 () Bool)

(assert (=> b!681154 (= e!388004 e!387999)))

(declare-fun res!447482 () Bool)

(assert (=> b!681154 (=> res!447482 e!387999)))

(assert (=> b!681154 (= res!447482 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!315 (List!13023 (_ BitVec 64)) List!13023)

(assert (=> b!681154 (= lt!313215 ($colon$colon!315 acc!681 (select (arr!18929 a!3626) from!3004)))))

(assert (=> b!681154 (subseq!151 acc!681 acc!681)))

(declare-datatypes ((Unit!23886 0))(
  ( (Unit!23887) )
))
(declare-fun lt!313213 () Unit!23886)

(declare-fun lemmaListSubSeqRefl!0 (List!13023) Unit!23886)

(assert (=> b!681154 (= lt!313213 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!681155 () Bool)

(declare-fun res!447477 () Bool)

(assert (=> b!681155 (=> (not res!447477) (not e!388001))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!681155 (= res!447477 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!681156 () Bool)

(declare-fun res!447480 () Bool)

(assert (=> b!681156 (=> res!447480 e!387999)))

(assert (=> b!681156 (= res!447480 (contains!3566 lt!313215 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681157 () Bool)

(assert (=> b!681157 (= e!388001 (not e!388004))))

(declare-fun res!447479 () Bool)

(assert (=> b!681157 (=> res!447479 e!388004)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!681157 (= res!447479 (not (validKeyInArray!0 (select (arr!18929 a!3626) from!3004))))))

(declare-fun lt!313214 () Unit!23886)

(declare-fun e!388002 () Unit!23886)

(assert (=> b!681157 (= lt!313214 e!388002)))

(declare-fun c!77204 () Bool)

(assert (=> b!681157 (= c!77204 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!681157 (arrayContainsKey!0 (array!39494 (store (arr!18929 a!3626) i!1382 k!2843) (size!19293 a!3626)) k!2843 from!3004)))

(declare-fun b!681158 () Bool)

(declare-fun Unit!23888 () Unit!23886)

(assert (=> b!681158 (= e!388002 Unit!23888)))

(declare-fun b!681159 () Bool)

(declare-fun Unit!23889 () Unit!23886)

(assert (=> b!681159 (= e!388002 Unit!23889)))

(declare-fun lt!313212 () Unit!23886)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39493 (_ BitVec 64) (_ BitVec 32)) Unit!23886)

(assert (=> b!681159 (= lt!313212 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!681159 false))

(declare-fun b!681160 () Bool)

(declare-fun res!447485 () Bool)

(assert (=> b!681160 (=> (not res!447485) (not e!388001))))

(assert (=> b!681160 (= res!447485 (validKeyInArray!0 k!2843))))

(declare-fun b!681161 () Bool)

(declare-fun e!388000 () Bool)

(assert (=> b!681161 (= e!388000 (contains!3566 acc!681 k!2843))))

(declare-fun b!681162 () Bool)

(declare-fun res!447489 () Bool)

(assert (=> b!681162 (=> (not res!447489) (not e!388001))))

(declare-fun e!388006 () Bool)

(assert (=> b!681162 (= res!447489 e!388006)))

(declare-fun res!447486 () Bool)

(assert (=> b!681162 (=> res!447486 e!388006)))

(assert (=> b!681162 (= res!447486 e!388000)))

(declare-fun res!447488 () Bool)

(assert (=> b!681162 (=> (not res!447488) (not e!388000))))

(assert (=> b!681162 (= res!447488 (bvsgt from!3004 i!1382))))

(declare-fun b!681163 () Bool)

(declare-fun res!447478 () Bool)

(assert (=> b!681163 (=> res!447478 e!387999)))

(declare-fun noDuplicate!813 (List!13023) Bool)

(assert (=> b!681163 (= res!447478 (not (noDuplicate!813 lt!313215)))))

(declare-fun b!681164 () Bool)

(declare-fun res!447484 () Bool)

(assert (=> b!681164 (=> (not res!447484) (not e!388001))))

(assert (=> b!681164 (= res!447484 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19293 a!3626))))))

(declare-fun b!681165 () Bool)

(declare-fun res!447492 () Bool)

(assert (=> b!681165 (=> (not res!447492) (not e!388001))))

(assert (=> b!681165 (= res!447492 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19293 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!447493 () Bool)

(assert (=> start!60670 (=> (not res!447493) (not e!388001))))

(assert (=> start!60670 (= res!447493 (and (bvslt (size!19293 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19293 a!3626))))))

(assert (=> start!60670 e!388001))

(assert (=> start!60670 true))

(declare-fun array_inv!14703 (array!39493) Bool)

(assert (=> start!60670 (array_inv!14703 a!3626)))

(declare-fun b!681166 () Bool)

(declare-fun res!447494 () Bool)

(assert (=> b!681166 (=> res!447494 e!387999)))

(assert (=> b!681166 (= res!447494 (contains!3566 lt!313215 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681167 () Bool)

(declare-fun res!447487 () Bool)

(assert (=> b!681167 (=> (not res!447487) (not e!388001))))

(assert (=> b!681167 (= res!447487 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13020))))

(declare-fun b!681168 () Bool)

(declare-fun res!447490 () Bool)

(assert (=> b!681168 (=> (not res!447490) (not e!388001))))

(assert (=> b!681168 (= res!447490 (noDuplicate!813 acc!681))))

(declare-fun b!681169 () Bool)

(declare-fun e!388005 () Bool)

(assert (=> b!681169 (= e!388006 e!388005)))

(declare-fun res!447491 () Bool)

(assert (=> b!681169 (=> (not res!447491) (not e!388005))))

(assert (=> b!681169 (= res!447491 (bvsle from!3004 i!1382))))

(declare-fun b!681170 () Bool)

(assert (=> b!681170 (= e!388005 (not (contains!3566 acc!681 k!2843)))))

(assert (= (and start!60670 res!447493) b!681168))

(assert (= (and b!681168 res!447490) b!681150))

(assert (= (and b!681150 res!447483) b!681151))

(assert (= (and b!681151 res!447481) b!681162))

(assert (= (and b!681162 res!447488) b!681161))

(assert (= (and b!681162 (not res!447486)) b!681169))

(assert (= (and b!681169 res!447491) b!681170))

(assert (= (and b!681162 res!447489) b!681167))

(assert (= (and b!681167 res!447487) b!681153))

(assert (= (and b!681153 res!447476) b!681164))

(assert (= (and b!681164 res!447484) b!681160))

(assert (= (and b!681160 res!447485) b!681155))

(assert (= (and b!681155 res!447477) b!681165))

(assert (= (and b!681165 res!447492) b!681157))

(assert (= (and b!681157 c!77204) b!681159))

(assert (= (and b!681157 (not c!77204)) b!681158))

(assert (= (and b!681157 (not res!447479)) b!681154))

(assert (= (and b!681154 (not res!447482)) b!681163))

(assert (= (and b!681163 (not res!447478)) b!681156))

(assert (= (and b!681156 (not res!447480)) b!681166))

(assert (= (and b!681166 (not res!447494)) b!681152))

(declare-fun m!646075 () Bool)

(assert (=> b!681152 m!646075))

(declare-fun m!646077 () Bool)

(assert (=> b!681153 m!646077))

(declare-fun m!646079 () Bool)

(assert (=> b!681168 m!646079))

(declare-fun m!646081 () Bool)

(assert (=> b!681151 m!646081))

(declare-fun m!646083 () Bool)

(assert (=> b!681170 m!646083))

(declare-fun m!646085 () Bool)

(assert (=> b!681160 m!646085))

(declare-fun m!646087 () Bool)

(assert (=> b!681154 m!646087))

(assert (=> b!681154 m!646087))

(declare-fun m!646089 () Bool)

(assert (=> b!681154 m!646089))

(declare-fun m!646091 () Bool)

(assert (=> b!681154 m!646091))

(declare-fun m!646093 () Bool)

(assert (=> b!681154 m!646093))

(declare-fun m!646095 () Bool)

(assert (=> b!681150 m!646095))

(declare-fun m!646097 () Bool)

(assert (=> b!681163 m!646097))

(assert (=> b!681161 m!646083))

(assert (=> b!681157 m!646087))

(declare-fun m!646099 () Bool)

(assert (=> b!681157 m!646099))

(declare-fun m!646101 () Bool)

(assert (=> b!681157 m!646101))

(assert (=> b!681157 m!646087))

(declare-fun m!646103 () Bool)

(assert (=> b!681157 m!646103))

(declare-fun m!646105 () Bool)

(assert (=> b!681157 m!646105))

(declare-fun m!646107 () Bool)

(assert (=> start!60670 m!646107))

(declare-fun m!646109 () Bool)

(assert (=> b!681167 m!646109))

(declare-fun m!646111 () Bool)

(assert (=> b!681155 m!646111))

(declare-fun m!646113 () Bool)

(assert (=> b!681166 m!646113))

(declare-fun m!646115 () Bool)

(assert (=> b!681156 m!646115))

(declare-fun m!646117 () Bool)

(assert (=> b!681159 m!646117))

(push 1)

(assert (not b!681168))

(assert (not b!681161))

(assert (not b!681166))

(assert (not b!681159))

(assert (not b!681153))

(assert (not b!681152))

(assert (not b!681160))

(assert (not b!681156))

(assert (not b!681170))

(assert (not b!681150))

(assert (not b!681151))

(assert (not b!681167))

(assert (not start!60670))

(assert (not b!681163))

(assert (not b!681157))

(assert (not b!681155))

(assert (not b!681154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93683 () Bool)

(declare-fun lt!313222 () Bool)

(declare-fun content!274 (List!13023) (Set (_ BitVec 64)))

(assert (=> d!93683 (= lt!313222 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!274 acc!681)))))

(declare-fun e!388035 () Bool)

(assert (=> d!93683 (= lt!313222 e!388035)))

(declare-fun res!447524 () Bool)

(assert (=> d!93683 (=> (not res!447524) (not e!388035))))

(assert (=> d!93683 (= res!447524 (is-Cons!13019 acc!681))))

(assert (=> d!93683 (= (contains!3566 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313222)))

(declare-fun b!681199 () Bool)

(declare-fun e!388036 () Bool)

(assert (=> b!681199 (= e!388035 e!388036)))

(declare-fun res!447523 () Bool)

(assert (=> b!681199 (=> res!447523 e!388036)))

(assert (=> b!681199 (= res!447523 (= (h!14064 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681200 () Bool)

(assert (=> b!681200 (= e!388036 (contains!3566 (t!19265 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93683 res!447524) b!681199))

(assert (= (and b!681199 (not res!447523)) b!681200))

(declare-fun m!646137 () Bool)

(assert (=> d!93683 m!646137))

(declare-fun m!646139 () Bool)

(assert (=> d!93683 m!646139))

(declare-fun m!646141 () Bool)

(assert (=> b!681200 m!646141))

(assert (=> b!681150 d!93683))

(declare-fun d!93693 () Bool)

(assert (=> d!93693 (= (array_inv!14703 a!3626) (bvsge (size!19293 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60670 d!93693))

(declare-fun d!93697 () Bool)

(assert (=> d!93697 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681160 d!93697))

(declare-fun d!93701 () Bool)

(declare-fun lt!313225 () Bool)

(assert (=> d!93701 (= lt!313225 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!274 acc!681)))))

(declare-fun e!388047 () Bool)

(assert (=> d!93701 (= lt!313225 e!388047)))

(declare-fun res!447536 () Bool)

(assert (=> d!93701 (=> (not res!447536) (not e!388047))))

(assert (=> d!93701 (= res!447536 (is-Cons!13019 acc!681))))

(assert (=> d!93701 (= (contains!3566 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313225)))

(declare-fun b!681211 () Bool)

(declare-fun e!388048 () Bool)

(assert (=> b!681211 (= e!388047 e!388048)))

(declare-fun res!447535 () Bool)

(assert (=> b!681211 (=> res!447535 e!388048)))

(assert (=> b!681211 (= res!447535 (= (h!14064 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681212 () Bool)

(assert (=> b!681212 (= e!388048 (contains!3566 (t!19265 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93701 res!447536) b!681211))

(assert (= (and b!681211 (not res!447535)) b!681212))

(assert (=> d!93701 m!646137))

(declare-fun m!646153 () Bool)

(assert (=> d!93701 m!646153))

(declare-fun m!646155 () Bool)

(assert (=> b!681212 m!646155))

(assert (=> b!681151 d!93701))

(declare-fun d!93705 () Bool)

(declare-fun lt!313227 () Bool)

(assert (=> d!93705 (= lt!313227 (member k!2843 (content!274 acc!681)))))

(declare-fun e!388049 () Bool)

(assert (=> d!93705 (= lt!313227 e!388049)))

(declare-fun res!447538 () Bool)

(assert (=> d!93705 (=> (not res!447538) (not e!388049))))

(assert (=> d!93705 (= res!447538 (is-Cons!13019 acc!681))))

(assert (=> d!93705 (= (contains!3566 acc!681 k!2843) lt!313227)))

(declare-fun b!681213 () Bool)

(declare-fun e!388050 () Bool)

(assert (=> b!681213 (= e!388049 e!388050)))

(declare-fun res!447537 () Bool)

(assert (=> b!681213 (=> res!447537 e!388050)))

(assert (=> b!681213 (= res!447537 (= (h!14064 acc!681) k!2843))))

(declare-fun b!681214 () Bool)

(assert (=> b!681214 (= e!388050 (contains!3566 (t!19265 acc!681) k!2843))))

(assert (= (and d!93705 res!447538) b!681213))

(assert (= (and b!681213 (not res!447537)) b!681214))

(assert (=> d!93705 m!646137))

(declare-fun m!646157 () Bool)

(assert (=> d!93705 m!646157))

(declare-fun m!646159 () Bool)

(assert (=> b!681214 m!646159))

(assert (=> b!681161 d!93705))

(declare-fun d!93707 () Bool)

(declare-fun res!447555 () Bool)

(declare-fun e!388067 () Bool)

(assert (=> d!93707 (=> res!447555 e!388067)))

(assert (=> d!93707 (= res!447555 (is-Nil!13020 lt!313215))))

(assert (=> d!93707 (= (noDuplicate!813 lt!313215) e!388067)))

(declare-fun b!681231 () Bool)

(declare-fun e!388068 () Bool)

(assert (=> b!681231 (= e!388067 e!388068)))

(declare-fun res!447556 () Bool)

(assert (=> b!681231 (=> (not res!447556) (not e!388068))))

(assert (=> b!681231 (= res!447556 (not (contains!3566 (t!19265 lt!313215) (h!14064 lt!313215))))))

(declare-fun b!681232 () Bool)

(assert (=> b!681232 (= e!388068 (noDuplicate!813 (t!19265 lt!313215)))))

(assert (= (and d!93707 (not res!447555)) b!681231))

(assert (= (and b!681231 res!447556) b!681232))

(declare-fun m!646181 () Bool)

(assert (=> b!681231 m!646181))

(declare-fun m!646183 () Bool)

(assert (=> b!681232 m!646183))

(assert (=> b!681163 d!93707))

(declare-fun b!681257 () Bool)

(declare-fun e!388093 () Bool)

(assert (=> b!681257 (= e!388093 (subseq!151 (t!19265 acc!681) (t!19265 lt!313215)))))

(declare-fun b!681256 () Bool)

(declare-fun e!388091 () Bool)

(declare-fun e!388094 () Bool)

(assert (=> b!681256 (= e!388091 e!388094)))

(declare-fun res!447579 () Bool)

(assert (=> b!681256 (=> res!447579 e!388094)))

(assert (=> b!681256 (= res!447579 e!388093)))

(declare-fun res!447581 () Bool)

(assert (=> b!681256 (=> (not res!447581) (not e!388093))))

(assert (=> b!681256 (= res!447581 (= (h!14064 acc!681) (h!14064 lt!313215)))))

(declare-fun b!681258 () Bool)

(assert (=> b!681258 (= e!388094 (subseq!151 acc!681 (t!19265 lt!313215)))))

(declare-fun b!681255 () Bool)

(declare-fun e!388092 () Bool)

(assert (=> b!681255 (= e!388092 e!388091)))

(declare-fun res!447582 () Bool)

(assert (=> b!681255 (=> (not res!447582) (not e!388091))))

(assert (=> b!681255 (= res!447582 (is-Cons!13019 lt!313215))))

(declare-fun d!93719 () Bool)

(declare-fun res!447580 () Bool)

(assert (=> d!93719 (=> res!447580 e!388092)))

(assert (=> d!93719 (= res!447580 (is-Nil!13020 acc!681))))

(assert (=> d!93719 (= (subseq!151 acc!681 lt!313215) e!388092)))

(assert (= (and d!93719 (not res!447580)) b!681255))

(assert (= (and b!681255 res!447582) b!681256))

(assert (= (and b!681256 res!447581) b!681257))

(assert (= (and b!681256 (not res!447579)) b!681258))

(declare-fun m!646191 () Bool)

(assert (=> b!681257 m!646191))

(declare-fun m!646193 () Bool)

(assert (=> b!681258 m!646193))

(assert (=> b!681152 d!93719))

(declare-fun d!93725 () Bool)

(assert (=> d!93725 (= ($colon$colon!315 acc!681 (select (arr!18929 a!3626) from!3004)) (Cons!13019 (select (arr!18929 a!3626) from!3004) acc!681))))

(assert (=> b!681154 d!93725))

(declare-fun b!681269 () Bool)

(declare-fun e!388105 () Bool)

(assert (=> b!681269 (= e!388105 (subseq!151 (t!19265 acc!681) (t!19265 acc!681)))))

(declare-fun b!681268 () Bool)

(declare-fun e!388103 () Bool)

(declare-fun e!388106 () Bool)

(assert (=> b!681268 (= e!388103 e!388106)))

(declare-fun res!447591 () Bool)

(assert (=> b!681268 (=> res!447591 e!388106)))

(assert (=> b!681268 (= res!447591 e!388105)))

(declare-fun res!447593 () Bool)

(assert (=> b!681268 (=> (not res!447593) (not e!388105))))

(assert (=> b!681268 (= res!447593 (= (h!14064 acc!681) (h!14064 acc!681)))))

(declare-fun b!681270 () Bool)

(assert (=> b!681270 (= e!388106 (subseq!151 acc!681 (t!19265 acc!681)))))

(declare-fun b!681267 () Bool)

(declare-fun e!388104 () Bool)

(assert (=> b!681267 (= e!388104 e!388103)))

(declare-fun res!447594 () Bool)

(assert (=> b!681267 (=> (not res!447594) (not e!388103))))

(assert (=> b!681267 (= res!447594 (is-Cons!13019 acc!681))))

(declare-fun d!93729 () Bool)

(declare-fun res!447592 () Bool)

(assert (=> d!93729 (=> res!447592 e!388104)))

(assert (=> d!93729 (= res!447592 (is-Nil!13020 acc!681))))

(assert (=> d!93729 (= (subseq!151 acc!681 acc!681) e!388104)))

(assert (= (and d!93729 (not res!447592)) b!681267))

(assert (= (and b!681267 res!447594) b!681268))

(assert (= (and b!681268 res!447593) b!681269))

(assert (= (and b!681268 (not res!447591)) b!681270))

(declare-fun m!646199 () Bool)

(assert (=> b!681269 m!646199))

(declare-fun m!646201 () Bool)

(assert (=> b!681270 m!646201))

(assert (=> b!681154 d!93729))

(declare-fun d!93731 () Bool)

(assert (=> d!93731 (subseq!151 acc!681 acc!681)))

(declare-fun lt!313242 () Unit!23886)

(declare-fun choose!36 (List!13023) Unit!23886)

(assert (=> d!93731 (= lt!313242 (choose!36 acc!681))))

(assert (=> d!93731 (= (lemmaListSubSeqRefl!0 acc!681) lt!313242)))

(declare-fun bs!19997 () Bool)

(assert (= bs!19997 d!93731))

(assert (=> bs!19997 m!646091))

(declare-fun m!646213 () Bool)

(assert (=> bs!19997 m!646213))

(assert (=> b!681154 d!93731))

(declare-fun b!681311 () Bool)

(declare-fun e!388146 () Bool)

(declare-fun e!388145 () Bool)

(assert (=> b!681311 (= e!388146 e!388145)))

(declare-fun res!447629 () Bool)

(assert (=> b!681311 (=> (not res!447629) (not e!388145))))

(declare-fun e!388144 () Bool)

(assert (=> b!681311 (= res!447629 (not e!388144))))

(declare-fun res!447627 () Bool)

(assert (=> b!681311 (=> (not res!447627) (not e!388144))))

(assert (=> b!681311 (= res!447627 (validKeyInArray!0 (select (arr!18929 a!3626) from!3004)))))

(declare-fun b!681312 () Bool)

(declare-fun e!388143 () Bool)

(declare-fun call!33964 () Bool)

(assert (=> b!681312 (= e!388143 call!33964)))

(declare-fun bm!33961 () Bool)

(declare-fun c!77209 () Bool)

(assert (=> bm!33961 (= call!33964 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77209 (Cons!13019 (select (arr!18929 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!681314 () Bool)

(assert (=> b!681314 (= e!388144 (contains!3566 acc!681 (select (arr!18929 a!3626) from!3004)))))

(declare-fun b!681315 () Bool)

(assert (=> b!681315 (= e!388145 e!388143)))

(assert (=> b!681315 (= c!77209 (validKeyInArray!0 (select (arr!18929 a!3626) from!3004)))))

(declare-fun b!681313 () Bool)

(assert (=> b!681313 (= e!388143 call!33964)))

(declare-fun d!93741 () Bool)

(declare-fun res!447628 () Bool)

(assert (=> d!93741 (=> res!447628 e!388146)))

(assert (=> d!93741 (= res!447628 (bvsge from!3004 (size!19293 a!3626)))))

(assert (=> d!93741 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!388146)))

(assert (= (and d!93741 (not res!447628)) b!681311))

(assert (= (and b!681311 res!447627) b!681314))

(assert (= (and b!681311 res!447629) b!681315))

(assert (= (and b!681315 c!77209) b!681312))

(assert (= (and b!681315 (not c!77209)) b!681313))

(assert (= (or b!681312 b!681313) bm!33961))

(assert (=> b!681311 m!646087))

(assert (=> b!681311 m!646087))

(assert (=> b!681311 m!646103))

(assert (=> bm!33961 m!646087))

(declare-fun m!646247 () Bool)

(assert (=> bm!33961 m!646247))

(assert (=> b!681314 m!646087))

(assert (=> b!681314 m!646087))

(declare-fun m!646249 () Bool)

(assert (=> b!681314 m!646249))

(assert (=> b!681315 m!646087))

(assert (=> b!681315 m!646087))

(assert (=> b!681315 m!646103))

(assert (=> b!681153 d!93741))

(declare-fun d!93763 () Bool)

(declare-fun lt!313248 () Bool)

(assert (=> d!93763 (= lt!313248 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!274 lt!313215)))))

(declare-fun e!388151 () Bool)

(assert (=> d!93763 (= lt!313248 e!388151)))

(declare-fun res!447634 () Bool)

(assert (=> d!93763 (=> (not res!447634) (not e!388151))))

(assert (=> d!93763 (= res!447634 (is-Cons!13019 lt!313215))))

(assert (=> d!93763 (= (contains!3566 lt!313215 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313248)))

(declare-fun b!681321 () Bool)

(declare-fun e!388152 () Bool)

(assert (=> b!681321 (= e!388151 e!388152)))

(declare-fun res!447633 () Bool)

(assert (=> b!681321 (=> res!447633 e!388152)))

(assert (=> b!681321 (= res!447633 (= (h!14064 lt!313215) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681322 () Bool)

(assert (=> b!681322 (= e!388152 (contains!3566 (t!19265 lt!313215) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93763 res!447634) b!681321))

(assert (= (and b!681321 (not res!447633)) b!681322))

(declare-fun m!646255 () Bool)

(assert (=> d!93763 m!646255))

(declare-fun m!646259 () Bool)

(assert (=> d!93763 m!646259))

(declare-fun m!646261 () Bool)

(assert (=> b!681322 m!646261))

(assert (=> b!681166 d!93763))

(declare-fun d!93765 () Bool)

(declare-fun res!447648 () Bool)

(declare-fun e!388169 () Bool)

(assert (=> d!93765 (=> res!447648 e!388169)))

(assert (=> d!93765 (= res!447648 (= (select (arr!18929 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!93765 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!388169)))

(declare-fun b!681342 () Bool)

(declare-fun e!388170 () Bool)

(assert (=> b!681342 (= e!388169 e!388170)))

(declare-fun res!447649 () Bool)

(assert (=> b!681342 (=> (not res!447649) (not e!388170))))

(assert (=> b!681342 (= res!447649 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19293 a!3626)))))

(declare-fun b!681343 () Bool)

(assert (=> b!681343 (= e!388170 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93765 (not res!447648)) b!681342))

(assert (= (and b!681342 res!447649) b!681343))

(declare-fun m!646267 () Bool)

(assert (=> d!93765 m!646267))

(declare-fun m!646269 () Bool)

(assert (=> b!681343 m!646269))

(assert (=> b!681155 d!93765))

(declare-fun b!681344 () Bool)

(declare-fun e!388174 () Bool)

(declare-fun e!388173 () Bool)

(assert (=> b!681344 (= e!388174 e!388173)))

(declare-fun res!447652 () Bool)

(assert (=> b!681344 (=> (not res!447652) (not e!388173))))

(declare-fun e!388172 () Bool)

(assert (=> b!681344 (= res!447652 (not e!388172))))

(declare-fun res!447650 () Bool)

(assert (=> b!681344 (=> (not res!447650) (not e!388172))))

(assert (=> b!681344 (= res!447650 (validKeyInArray!0 (select (arr!18929 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!681345 () Bool)

(declare-fun e!388171 () Bool)

(declare-fun call!33969 () Bool)

(assert (=> b!681345 (= e!388171 call!33969)))

(declare-fun bm!33966 () Bool)

(declare-fun c!77214 () Bool)

(assert (=> bm!33966 (= call!33969 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77214 (Cons!13019 (select (arr!18929 a!3626) #b00000000000000000000000000000000) Nil!13020) Nil!13020)))))

(declare-fun b!681347 () Bool)

(assert (=> b!681347 (= e!388172 (contains!3566 Nil!13020 (select (arr!18929 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!681348 () Bool)

(assert (=> b!681348 (= e!388173 e!388171)))

(assert (=> b!681348 (= c!77214 (validKeyInArray!0 (select (arr!18929 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!681346 () Bool)

(assert (=> b!681346 (= e!388171 call!33969)))

(declare-fun d!93769 () Bool)

(declare-fun res!447651 () Bool)

(assert (=> d!93769 (=> res!447651 e!388174)))

(assert (=> d!93769 (= res!447651 (bvsge #b00000000000000000000000000000000 (size!19293 a!3626)))))

(assert (=> d!93769 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13020) e!388174)))

(assert (= (and d!93769 (not res!447651)) b!681344))

(assert (= (and b!681344 res!447650) b!681347))

(assert (= (and b!681344 res!447652) b!681348))

(assert (= (and b!681348 c!77214) b!681345))

(assert (= (and b!681348 (not c!77214)) b!681346))

