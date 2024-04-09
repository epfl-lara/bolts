; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60064 () Bool)

(assert start!60064)

(declare-fun b!668159 () Bool)

(declare-fun e!382311 () Bool)

(declare-fun e!382320 () Bool)

(assert (=> b!668159 (= e!382311 e!382320)))

(declare-fun res!435399 () Bool)

(assert (=> b!668159 (=> (not res!435399) (not e!382320))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!668159 (= res!435399 (bvsle from!3004 i!1382))))

(declare-fun b!668160 () Bool)

(declare-datatypes ((Unit!23405 0))(
  ( (Unit!23406) )
))
(declare-fun e!382318 () Unit!23405)

(declare-fun Unit!23407 () Unit!23405)

(assert (=> b!668160 (= e!382318 Unit!23407)))

(declare-fun lt!311137 () Unit!23405)

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39067 0))(
  ( (array!39068 (arr!18722 (Array (_ BitVec 32) (_ BitVec 64))) (size!19086 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39067)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39067 (_ BitVec 64) (_ BitVec 32)) Unit!23405)

(assert (=> b!668160 (= lt!311137 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!668160 false))

(declare-fun b!668161 () Bool)

(declare-datatypes ((List!12816 0))(
  ( (Nil!12813) (Cons!12812 (h!13857 (_ BitVec 64)) (t!19052 List!12816)) )
))
(declare-fun acc!681 () List!12816)

(declare-fun contains!3359 (List!12816 (_ BitVec 64)) Bool)

(assert (=> b!668161 (= e!382320 (not (contains!3359 acc!681 k!2843)))))

(declare-fun b!668162 () Bool)

(declare-fun res!435408 () Bool)

(declare-fun e!382316 () Bool)

(assert (=> b!668162 (=> (not res!435408) (not e!382316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668162 (= res!435408 (validKeyInArray!0 k!2843))))

(declare-fun b!668163 () Bool)

(declare-fun e!382313 () Bool)

(declare-fun e!382317 () Bool)

(assert (=> b!668163 (= e!382313 e!382317)))

(declare-fun res!435411 () Bool)

(assert (=> b!668163 (=> (not res!435411) (not e!382317))))

(assert (=> b!668163 (= res!435411 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668164 () Bool)

(declare-fun res!435397 () Bool)

(declare-fun e!382314 () Bool)

(assert (=> b!668164 (=> res!435397 e!382314)))

(declare-fun lt!311140 () List!12816)

(assert (=> b!668164 (= res!435397 (contains!3359 lt!311140 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668165 () Bool)

(declare-fun res!435393 () Bool)

(assert (=> b!668165 (=> res!435393 e!382314)))

(declare-fun noDuplicate!606 (List!12816) Bool)

(assert (=> b!668165 (= res!435393 (not (noDuplicate!606 lt!311140)))))

(declare-fun b!668167 () Bool)

(declare-fun res!435403 () Bool)

(assert (=> b!668167 (=> (not res!435403) (not e!382316))))

(assert (=> b!668167 (= res!435403 e!382311)))

(declare-fun res!435405 () Bool)

(assert (=> b!668167 (=> res!435405 e!382311)))

(declare-fun e!382319 () Bool)

(assert (=> b!668167 (= res!435405 e!382319)))

(declare-fun res!435410 () Bool)

(assert (=> b!668167 (=> (not res!435410) (not e!382319))))

(assert (=> b!668167 (= res!435410 (bvsgt from!3004 i!1382))))

(declare-fun b!668168 () Bool)

(declare-fun Unit!23408 () Unit!23405)

(assert (=> b!668168 (= e!382318 Unit!23408)))

(declare-fun b!668169 () Bool)

(assert (=> b!668169 (= e!382319 (contains!3359 acc!681 k!2843))))

(declare-fun b!668170 () Bool)

(assert (=> b!668170 (= e!382316 (not e!382314))))

(declare-fun res!435412 () Bool)

(assert (=> b!668170 (=> res!435412 e!382314)))

(assert (=> b!668170 (= res!435412 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun arrayNoDuplicates!0 (array!39067 (_ BitVec 32) List!12816) Bool)

(assert (=> b!668170 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311140)))

(declare-fun lt!311139 () Unit!23405)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39067 (_ BitVec 64) (_ BitVec 32) List!12816 List!12816) Unit!23405)

(assert (=> b!668170 (= lt!311139 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311140))))

(declare-fun -!95 (List!12816 (_ BitVec 64)) List!12816)

(assert (=> b!668170 (= (-!95 lt!311140 k!2843) acc!681)))

(declare-fun $colon$colon!228 (List!12816 (_ BitVec 64)) List!12816)

(assert (=> b!668170 (= lt!311140 ($colon$colon!228 acc!681 k!2843))))

(declare-fun lt!311134 () Unit!23405)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12816) Unit!23405)

(assert (=> b!668170 (= lt!311134 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!97 (List!12816 List!12816) Bool)

(assert (=> b!668170 (subseq!97 acc!681 acc!681)))

(declare-fun lt!311141 () Unit!23405)

(declare-fun lemmaListSubSeqRefl!0 (List!12816) Unit!23405)

(assert (=> b!668170 (= lt!311141 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668170 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311142 () Unit!23405)

(declare-fun e!382321 () Unit!23405)

(assert (=> b!668170 (= lt!311142 e!382321)))

(declare-fun c!76751 () Bool)

(assert (=> b!668170 (= c!76751 (validKeyInArray!0 (select (arr!18722 a!3626) from!3004)))))

(declare-fun lt!311138 () Unit!23405)

(assert (=> b!668170 (= lt!311138 e!382318)))

(declare-fun c!76750 () Bool)

(declare-fun arrayContainsKey!0 (array!39067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668170 (= c!76750 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668170 (arrayContainsKey!0 (array!39068 (store (arr!18722 a!3626) i!1382 k!2843) (size!19086 a!3626)) k!2843 from!3004)))

(declare-fun b!668171 () Bool)

(declare-fun res!435402 () Bool)

(assert (=> b!668171 (=> (not res!435402) (not e!382316))))

(assert (=> b!668171 (= res!435402 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!668172 () Bool)

(declare-fun res!435398 () Bool)

(assert (=> b!668172 (=> (not res!435398) (not e!382316))))

(assert (=> b!668172 (= res!435398 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19086 a!3626))))))

(declare-fun b!668173 () Bool)

(declare-fun Unit!23409 () Unit!23405)

(assert (=> b!668173 (= e!382321 Unit!23409)))

(declare-fun b!668174 () Bool)

(declare-fun lt!311135 () Unit!23405)

(assert (=> b!668174 (= e!382321 lt!311135)))

(declare-fun lt!311133 () Unit!23405)

(assert (=> b!668174 (= lt!311133 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668174 (subseq!97 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39067 List!12816 List!12816 (_ BitVec 32)) Unit!23405)

(assert (=> b!668174 (= lt!311135 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!228 acc!681 (select (arr!18722 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668174 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668175 () Bool)

(assert (=> b!668175 (= e!382317 (not (contains!3359 lt!311140 k!2843)))))

(declare-fun b!668176 () Bool)

(declare-fun res!435407 () Bool)

(assert (=> b!668176 (=> res!435407 e!382314)))

(assert (=> b!668176 (= res!435407 (contains!3359 lt!311140 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668177 () Bool)

(declare-fun res!435394 () Bool)

(assert (=> b!668177 (=> (not res!435394) (not e!382316))))

(assert (=> b!668177 (= res!435394 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12813))))

(declare-fun b!668178 () Bool)

(declare-fun e!382312 () Bool)

(assert (=> b!668178 (= e!382312 (contains!3359 lt!311140 k!2843))))

(declare-fun b!668179 () Bool)

(declare-fun res!435401 () Bool)

(assert (=> b!668179 (=> (not res!435401) (not e!382316))))

(assert (=> b!668179 (= res!435401 (not (contains!3359 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668166 () Bool)

(declare-fun res!435406 () Bool)

(assert (=> b!668166 (=> (not res!435406) (not e!382316))))

(assert (=> b!668166 (= res!435406 (noDuplicate!606 acc!681))))

(declare-fun res!435404 () Bool)

(assert (=> start!60064 (=> (not res!435404) (not e!382316))))

(assert (=> start!60064 (= res!435404 (and (bvslt (size!19086 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19086 a!3626))))))

(assert (=> start!60064 e!382316))

(assert (=> start!60064 true))

(declare-fun array_inv!14496 (array!39067) Bool)

(assert (=> start!60064 (array_inv!14496 a!3626)))

(declare-fun b!668180 () Bool)

(assert (=> b!668180 (= e!382314 true)))

(declare-fun lt!311136 () Bool)

(assert (=> b!668180 (= lt!311136 e!382313)))

(declare-fun res!435395 () Bool)

(assert (=> b!668180 (=> res!435395 e!382313)))

(assert (=> b!668180 (= res!435395 e!382312)))

(declare-fun res!435396 () Bool)

(assert (=> b!668180 (=> (not res!435396) (not e!382312))))

(assert (=> b!668180 (= res!435396 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668181 () Bool)

(declare-fun res!435409 () Bool)

(assert (=> b!668181 (=> (not res!435409) (not e!382316))))

(assert (=> b!668181 (= res!435409 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!668182 () Bool)

(declare-fun res!435400 () Bool)

(assert (=> b!668182 (=> (not res!435400) (not e!382316))))

(assert (=> b!668182 (= res!435400 (not (contains!3359 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668183 () Bool)

(declare-fun res!435413 () Bool)

(assert (=> b!668183 (=> (not res!435413) (not e!382316))))

(assert (=> b!668183 (= res!435413 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19086 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!60064 res!435404) b!668166))

(assert (= (and b!668166 res!435406) b!668179))

(assert (= (and b!668179 res!435401) b!668182))

(assert (= (and b!668182 res!435400) b!668167))

(assert (= (and b!668167 res!435410) b!668169))

(assert (= (and b!668167 (not res!435405)) b!668159))

(assert (= (and b!668159 res!435399) b!668161))

(assert (= (and b!668167 res!435403) b!668177))

(assert (= (and b!668177 res!435394) b!668171))

(assert (= (and b!668171 res!435402) b!668172))

(assert (= (and b!668172 res!435398) b!668162))

(assert (= (and b!668162 res!435408) b!668181))

(assert (= (and b!668181 res!435409) b!668183))

(assert (= (and b!668183 res!435413) b!668170))

(assert (= (and b!668170 c!76750) b!668160))

(assert (= (and b!668170 (not c!76750)) b!668168))

(assert (= (and b!668170 c!76751) b!668174))

(assert (= (and b!668170 (not c!76751)) b!668173))

(assert (= (and b!668170 (not res!435412)) b!668165))

(assert (= (and b!668165 (not res!435393)) b!668176))

(assert (= (and b!668176 (not res!435407)) b!668164))

(assert (= (and b!668164 (not res!435397)) b!668180))

(assert (= (and b!668180 res!435396) b!668178))

(assert (= (and b!668180 (not res!435395)) b!668163))

(assert (= (and b!668163 res!435411) b!668175))

(declare-fun m!638567 () Bool)

(assert (=> b!668160 m!638567))

(declare-fun m!638569 () Bool)

(assert (=> b!668179 m!638569))

(declare-fun m!638571 () Bool)

(assert (=> b!668170 m!638571))

(declare-fun m!638573 () Bool)

(assert (=> b!668170 m!638573))

(declare-fun m!638575 () Bool)

(assert (=> b!668170 m!638575))

(declare-fun m!638577 () Bool)

(assert (=> b!668170 m!638577))

(declare-fun m!638579 () Bool)

(assert (=> b!668170 m!638579))

(declare-fun m!638581 () Bool)

(assert (=> b!668170 m!638581))

(declare-fun m!638583 () Bool)

(assert (=> b!668170 m!638583))

(declare-fun m!638585 () Bool)

(assert (=> b!668170 m!638585))

(assert (=> b!668170 m!638575))

(declare-fun m!638587 () Bool)

(assert (=> b!668170 m!638587))

(declare-fun m!638589 () Bool)

(assert (=> b!668170 m!638589))

(declare-fun m!638591 () Bool)

(assert (=> b!668170 m!638591))

(declare-fun m!638593 () Bool)

(assert (=> b!668170 m!638593))

(declare-fun m!638595 () Bool)

(assert (=> b!668170 m!638595))

(declare-fun m!638597 () Bool)

(assert (=> b!668182 m!638597))

(declare-fun m!638599 () Bool)

(assert (=> b!668169 m!638599))

(declare-fun m!638601 () Bool)

(assert (=> b!668162 m!638601))

(declare-fun m!638603 () Bool)

(assert (=> b!668175 m!638603))

(assert (=> b!668174 m!638571))

(assert (=> b!668174 m!638575))

(declare-fun m!638605 () Bool)

(assert (=> b!668174 m!638605))

(declare-fun m!638607 () Bool)

(assert (=> b!668174 m!638607))

(assert (=> b!668174 m!638575))

(assert (=> b!668174 m!638605))

(assert (=> b!668174 m!638591))

(assert (=> b!668174 m!638595))

(assert (=> b!668161 m!638599))

(declare-fun m!638609 () Bool)

(assert (=> b!668176 m!638609))

(declare-fun m!638611 () Bool)

(assert (=> b!668164 m!638611))

(declare-fun m!638613 () Bool)

(assert (=> b!668165 m!638613))

(declare-fun m!638615 () Bool)

(assert (=> b!668181 m!638615))

(assert (=> b!668178 m!638603))

(declare-fun m!638617 () Bool)

(assert (=> start!60064 m!638617))

(declare-fun m!638619 () Bool)

(assert (=> b!668171 m!638619))

(declare-fun m!638621 () Bool)

(assert (=> b!668166 m!638621))

(declare-fun m!638623 () Bool)

(assert (=> b!668177 m!638623))

(push 1)

(assert (not b!668179))

(assert (not b!668182))

(assert (not b!668178))

(assert (not b!668177))

(assert (not b!668181))

(assert (not start!60064))

(assert (not b!668171))

(assert (not b!668175))

(assert (not b!668170))

(assert (not b!668164))

(assert (not b!668161))

(assert (not b!668165))

(assert (not b!668169))

(assert (not b!668162))

(assert (not b!668174))

(assert (not b!668160))

(assert (not b!668166))

(assert (not b!668176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

