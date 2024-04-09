; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59984 () Bool)

(assert start!59984)

(declare-fun b!665159 () Bool)

(declare-fun e!381221 () Bool)

(declare-datatypes ((List!12776 0))(
  ( (Nil!12773) (Cons!12772 (h!13817 (_ BitVec 64)) (t!19012 List!12776)) )
))
(declare-fun acc!681 () List!12776)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3319 (List!12776 (_ BitVec 64)) Bool)

(assert (=> b!665159 (= e!381221 (contains!3319 acc!681 k0!2843))))

(declare-fun b!665160 () Bool)

(declare-fun res!432880 () Bool)

(declare-fun e!381225 () Bool)

(assert (=> b!665160 (=> (not res!432880) (not e!381225))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38987 0))(
  ( (array!38988 (arr!18682 (Array (_ BitVec 32) (_ BitVec 64))) (size!19046 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38987)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!665160 (= res!432880 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19046 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!665161 () Bool)

(declare-fun res!432888 () Bool)

(declare-fun e!381224 () Bool)

(assert (=> b!665161 (=> res!432888 e!381224)))

(declare-fun lt!309939 () List!12776)

(declare-fun subseq!57 (List!12776 List!12776) Bool)

(assert (=> b!665161 (= res!432888 (not (subseq!57 acc!681 lt!309939)))))

(declare-fun b!665162 () Bool)

(declare-fun res!432891 () Bool)

(assert (=> b!665162 (=> (not res!432891) (not e!381225))))

(declare-fun arrayNoDuplicates!0 (array!38987 (_ BitVec 32) List!12776) Bool)

(assert (=> b!665162 (= res!432891 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12773))))

(declare-fun b!665163 () Bool)

(assert (=> b!665163 (= e!381224 true)))

(declare-fun lt!309937 () Bool)

(assert (=> b!665163 (= lt!309937 (contains!3319 lt!309939 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665164 () Bool)

(declare-fun res!432875 () Bool)

(assert (=> b!665164 (=> (not res!432875) (not e!381225))))

(assert (=> b!665164 (= res!432875 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19046 a!3626))))))

(declare-fun b!665165 () Bool)

(declare-fun res!432883 () Bool)

(assert (=> b!665165 (=> (not res!432883) (not e!381225))))

(assert (=> b!665165 (= res!432883 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665166 () Bool)

(declare-datatypes ((Unit!23205 0))(
  ( (Unit!23206) )
))
(declare-fun e!381226 () Unit!23205)

(declare-fun Unit!23207 () Unit!23205)

(assert (=> b!665166 (= e!381226 Unit!23207)))

(declare-fun lt!309942 () Unit!23205)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38987 (_ BitVec 64) (_ BitVec 32)) Unit!23205)

(assert (=> b!665166 (= lt!309942 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!665166 false))

(declare-fun b!665167 () Bool)

(declare-fun res!432887 () Bool)

(assert (=> b!665167 (=> (not res!432887) (not e!381225))))

(assert (=> b!665167 (= res!432887 (not (contains!3319 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!432884 () Bool)

(assert (=> start!59984 (=> (not res!432884) (not e!381225))))

(assert (=> start!59984 (= res!432884 (and (bvslt (size!19046 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19046 a!3626))))))

(assert (=> start!59984 e!381225))

(assert (=> start!59984 true))

(declare-fun array_inv!14456 (array!38987) Bool)

(assert (=> start!59984 (array_inv!14456 a!3626)))

(declare-fun b!665168 () Bool)

(declare-fun res!432882 () Bool)

(assert (=> b!665168 (=> (not res!432882) (not e!381225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665168 (= res!432882 (validKeyInArray!0 k0!2843))))

(declare-fun b!665169 () Bool)

(declare-fun e!381222 () Unit!23205)

(declare-fun lt!309934 () Unit!23205)

(assert (=> b!665169 (= e!381222 lt!309934)))

(declare-fun lt!309935 () Unit!23205)

(declare-fun lemmaListSubSeqRefl!0 (List!12776) Unit!23205)

(assert (=> b!665169 (= lt!309935 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665169 (subseq!57 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38987 List!12776 List!12776 (_ BitVec 32)) Unit!23205)

(declare-fun $colon$colon!188 (List!12776 (_ BitVec 64)) List!12776)

(assert (=> b!665169 (= lt!309934 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!188 acc!681 (select (arr!18682 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665169 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!665170 () Bool)

(declare-fun res!432881 () Bool)

(assert (=> b!665170 (=> res!432881 e!381224)))

(declare-fun lt!309938 () Bool)

(assert (=> b!665170 (= res!432881 lt!309938)))

(declare-fun b!665171 () Bool)

(declare-fun res!432886 () Bool)

(assert (=> b!665171 (=> (not res!432886) (not e!381225))))

(declare-fun e!381220 () Bool)

(assert (=> b!665171 (= res!432886 e!381220)))

(declare-fun res!432874 () Bool)

(assert (=> b!665171 (=> res!432874 e!381220)))

(assert (=> b!665171 (= res!432874 e!381221)))

(declare-fun res!432890 () Bool)

(assert (=> b!665171 (=> (not res!432890) (not e!381221))))

(assert (=> b!665171 (= res!432890 (bvsgt from!3004 i!1382))))

(declare-fun b!665172 () Bool)

(declare-fun res!432877 () Bool)

(assert (=> b!665172 (=> res!432877 e!381224)))

(assert (=> b!665172 (= res!432877 (contains!3319 lt!309939 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665173 () Bool)

(assert (=> b!665173 (= e!381225 (not e!381224))))

(declare-fun res!432873 () Bool)

(assert (=> b!665173 (=> res!432873 e!381224)))

(assert (=> b!665173 (= res!432873 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!55 (List!12776 (_ BitVec 64)) List!12776)

(assert (=> b!665173 (= (-!55 lt!309939 k0!2843) acc!681)))

(assert (=> b!665173 (= lt!309939 ($colon$colon!188 acc!681 k0!2843))))

(declare-fun lt!309941 () Unit!23205)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12776) Unit!23205)

(assert (=> b!665173 (= lt!309941 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!665173 (subseq!57 acc!681 acc!681)))

(declare-fun lt!309936 () Unit!23205)

(assert (=> b!665173 (= lt!309936 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665173 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309940 () Unit!23205)

(assert (=> b!665173 (= lt!309940 e!381222)))

(declare-fun c!76510 () Bool)

(assert (=> b!665173 (= c!76510 (validKeyInArray!0 (select (arr!18682 a!3626) from!3004)))))

(declare-fun lt!309933 () Unit!23205)

(assert (=> b!665173 (= lt!309933 e!381226)))

(declare-fun c!76511 () Bool)

(assert (=> b!665173 (= c!76511 lt!309938)))

(declare-fun arrayContainsKey!0 (array!38987 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665173 (= lt!309938 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665173 (arrayContainsKey!0 (array!38988 (store (arr!18682 a!3626) i!1382 k0!2843) (size!19046 a!3626)) k0!2843 from!3004)))

(declare-fun b!665174 () Bool)

(declare-fun res!432889 () Bool)

(assert (=> b!665174 (=> res!432889 e!381224)))

(declare-fun noDuplicate!566 (List!12776) Bool)

(assert (=> b!665174 (= res!432889 (not (noDuplicate!566 lt!309939)))))

(declare-fun b!665175 () Bool)

(declare-fun Unit!23208 () Unit!23205)

(assert (=> b!665175 (= e!381226 Unit!23208)))

(declare-fun b!665176 () Bool)

(declare-fun res!432878 () Bool)

(assert (=> b!665176 (=> (not res!432878) (not e!381225))))

(assert (=> b!665176 (= res!432878 (not (contains!3319 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665177 () Bool)

(declare-fun Unit!23209 () Unit!23205)

(assert (=> b!665177 (= e!381222 Unit!23209)))

(declare-fun b!665178 () Bool)

(declare-fun e!381219 () Bool)

(assert (=> b!665178 (= e!381219 (not (contains!3319 acc!681 k0!2843)))))

(declare-fun b!665179 () Bool)

(assert (=> b!665179 (= e!381220 e!381219)))

(declare-fun res!432876 () Bool)

(assert (=> b!665179 (=> (not res!432876) (not e!381219))))

(assert (=> b!665179 (= res!432876 (bvsle from!3004 i!1382))))

(declare-fun b!665180 () Bool)

(declare-fun res!432879 () Bool)

(assert (=> b!665180 (=> res!432879 e!381224)))

(assert (=> b!665180 (= res!432879 (not (contains!3319 lt!309939 k0!2843)))))

(declare-fun b!665181 () Bool)

(declare-fun res!432885 () Bool)

(assert (=> b!665181 (=> (not res!432885) (not e!381225))))

(assert (=> b!665181 (= res!432885 (noDuplicate!566 acc!681))))

(declare-fun b!665182 () Bool)

(declare-fun res!432893 () Bool)

(assert (=> b!665182 (=> res!432893 e!381224)))

(assert (=> b!665182 (= res!432893 (contains!3319 acc!681 k0!2843))))

(declare-fun b!665183 () Bool)

(declare-fun res!432892 () Bool)

(assert (=> b!665183 (=> (not res!432892) (not e!381225))))

(assert (=> b!665183 (= res!432892 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!59984 res!432884) b!665181))

(assert (= (and b!665181 res!432885) b!665176))

(assert (= (and b!665176 res!432878) b!665167))

(assert (= (and b!665167 res!432887) b!665171))

(assert (= (and b!665171 res!432890) b!665159))

(assert (= (and b!665171 (not res!432874)) b!665179))

(assert (= (and b!665179 res!432876) b!665178))

(assert (= (and b!665171 res!432886) b!665162))

(assert (= (and b!665162 res!432891) b!665165))

(assert (= (and b!665165 res!432883) b!665164))

(assert (= (and b!665164 res!432875) b!665168))

(assert (= (and b!665168 res!432882) b!665183))

(assert (= (and b!665183 res!432892) b!665160))

(assert (= (and b!665160 res!432880) b!665173))

(assert (= (and b!665173 c!76511) b!665166))

(assert (= (and b!665173 (not c!76511)) b!665175))

(assert (= (and b!665173 c!76510) b!665169))

(assert (= (and b!665173 (not c!76510)) b!665177))

(assert (= (and b!665173 (not res!432873)) b!665174))

(assert (= (and b!665174 (not res!432889)) b!665170))

(assert (= (and b!665170 (not res!432881)) b!665182))

(assert (= (and b!665182 (not res!432893)) b!665161))

(assert (= (and b!665161 (not res!432888)) b!665180))

(assert (= (and b!665180 (not res!432879)) b!665172))

(assert (= (and b!665172 (not res!432877)) b!665163))

(declare-fun m!636299 () Bool)

(assert (=> b!665182 m!636299))

(declare-fun m!636301 () Bool)

(assert (=> b!665176 m!636301))

(declare-fun m!636303 () Bool)

(assert (=> b!665173 m!636303))

(declare-fun m!636305 () Bool)

(assert (=> b!665173 m!636305))

(declare-fun m!636307 () Bool)

(assert (=> b!665173 m!636307))

(declare-fun m!636309 () Bool)

(assert (=> b!665173 m!636309))

(declare-fun m!636311 () Bool)

(assert (=> b!665173 m!636311))

(declare-fun m!636313 () Bool)

(assert (=> b!665173 m!636313))

(assert (=> b!665173 m!636305))

(declare-fun m!636315 () Bool)

(assert (=> b!665173 m!636315))

(declare-fun m!636317 () Bool)

(assert (=> b!665173 m!636317))

(declare-fun m!636319 () Bool)

(assert (=> b!665173 m!636319))

(declare-fun m!636321 () Bool)

(assert (=> b!665173 m!636321))

(declare-fun m!636323 () Bool)

(assert (=> b!665173 m!636323))

(declare-fun m!636325 () Bool)

(assert (=> b!665180 m!636325))

(declare-fun m!636327 () Bool)

(assert (=> b!665163 m!636327))

(assert (=> b!665169 m!636303))

(assert (=> b!665169 m!636305))

(declare-fun m!636329 () Bool)

(assert (=> b!665169 m!636329))

(declare-fun m!636331 () Bool)

(assert (=> b!665169 m!636331))

(assert (=> b!665169 m!636305))

(assert (=> b!665169 m!636329))

(assert (=> b!665169 m!636311))

(assert (=> b!665169 m!636323))

(declare-fun m!636333 () Bool)

(assert (=> b!665168 m!636333))

(declare-fun m!636335 () Bool)

(assert (=> b!665172 m!636335))

(declare-fun m!636337 () Bool)

(assert (=> start!59984 m!636337))

(declare-fun m!636339 () Bool)

(assert (=> b!665181 m!636339))

(declare-fun m!636341 () Bool)

(assert (=> b!665166 m!636341))

(declare-fun m!636343 () Bool)

(assert (=> b!665161 m!636343))

(assert (=> b!665178 m!636299))

(declare-fun m!636345 () Bool)

(assert (=> b!665165 m!636345))

(declare-fun m!636347 () Bool)

(assert (=> b!665183 m!636347))

(declare-fun m!636349 () Bool)

(assert (=> b!665162 m!636349))

(declare-fun m!636351 () Bool)

(assert (=> b!665174 m!636351))

(declare-fun m!636353 () Bool)

(assert (=> b!665167 m!636353))

(assert (=> b!665159 m!636299))

(check-sat (not b!665183) (not b!665173) (not b!665166) (not b!665178) (not b!665162) (not b!665165) (not b!665167) (not b!665180) (not b!665176) (not b!665174) (not b!665161) (not b!665172) (not b!665168) (not b!665169) (not b!665181) (not b!665182) (not start!59984) (not b!665163) (not b!665159))
