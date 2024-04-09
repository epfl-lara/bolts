; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60046 () Bool)

(assert start!60046)

(declare-fun b!667484 () Bool)

(declare-fun res!434843 () Bool)

(declare-fun e!382024 () Bool)

(assert (=> b!667484 (=> (not res!434843) (not e!382024))))

(declare-datatypes ((List!12807 0))(
  ( (Nil!12804) (Cons!12803 (h!13848 (_ BitVec 64)) (t!19043 List!12807)) )
))
(declare-fun acc!681 () List!12807)

(declare-fun noDuplicate!597 (List!12807) Bool)

(assert (=> b!667484 (= res!434843 (noDuplicate!597 acc!681))))

(declare-fun b!667485 () Bool)

(declare-datatypes ((Unit!23360 0))(
  ( (Unit!23361) )
))
(declare-fun e!382022 () Unit!23360)

(declare-fun Unit!23362 () Unit!23360)

(assert (=> b!667485 (= e!382022 Unit!23362)))

(declare-fun b!667486 () Bool)

(declare-fun e!382023 () Unit!23360)

(declare-fun Unit!23363 () Unit!23360)

(assert (=> b!667486 (= e!382023 Unit!23363)))

(declare-fun b!667487 () Bool)

(declare-fun res!434835 () Bool)

(assert (=> b!667487 (=> (not res!434835) (not e!382024))))

(declare-fun e!382014 () Bool)

(assert (=> b!667487 (= res!434835 e!382014)))

(declare-fun res!434841 () Bool)

(assert (=> b!667487 (=> res!434841 e!382014)))

(declare-fun e!382019 () Bool)

(assert (=> b!667487 (= res!434841 e!382019)))

(declare-fun res!434842 () Bool)

(assert (=> b!667487 (=> (not res!434842) (not e!382019))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!667487 (= res!434842 (bvsgt from!3004 i!1382))))

(declare-fun b!667489 () Bool)

(declare-fun e!382021 () Bool)

(assert (=> b!667489 (= e!382014 e!382021)))

(declare-fun res!434834 () Bool)

(assert (=> b!667489 (=> (not res!434834) (not e!382021))))

(assert (=> b!667489 (= res!434834 (bvsle from!3004 i!1382))))

(declare-fun b!667490 () Bool)

(declare-fun res!434840 () Bool)

(assert (=> b!667490 (=> (not res!434840) (not e!382024))))

(declare-datatypes ((array!39049 0))(
  ( (array!39050 (arr!18713 (Array (_ BitVec 32) (_ BitVec 64))) (size!19077 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39049)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39049 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!667490 (= res!434840 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!667491 () Bool)

(declare-fun res!434845 () Bool)

(assert (=> b!667491 (=> (not res!434845) (not e!382024))))

(assert (=> b!667491 (= res!434845 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19077 a!3626))))))

(declare-fun b!667492 () Bool)

(declare-fun e!382015 () Bool)

(declare-fun lt!310866 () List!12807)

(declare-fun contains!3350 (List!12807 (_ BitVec 64)) Bool)

(assert (=> b!667492 (= e!382015 (contains!3350 lt!310866 k!2843))))

(declare-fun b!667493 () Bool)

(declare-fun e!382020 () Bool)

(assert (=> b!667493 (= e!382020 true)))

(declare-fun lt!310869 () Bool)

(declare-fun e!382018 () Bool)

(assert (=> b!667493 (= lt!310869 e!382018)))

(declare-fun res!434827 () Bool)

(assert (=> b!667493 (=> res!434827 e!382018)))

(assert (=> b!667493 (= res!434827 e!382015)))

(declare-fun res!434839 () Bool)

(assert (=> b!667493 (=> (not res!434839) (not e!382015))))

(assert (=> b!667493 (= res!434839 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667488 () Bool)

(declare-fun res!434846 () Bool)

(assert (=> b!667488 (=> (not res!434846) (not e!382024))))

(assert (=> b!667488 (= res!434846 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19077 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!434837 () Bool)

(assert (=> start!60046 (=> (not res!434837) (not e!382024))))

(assert (=> start!60046 (= res!434837 (and (bvslt (size!19077 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19077 a!3626))))))

(assert (=> start!60046 e!382024))

(assert (=> start!60046 true))

(declare-fun array_inv!14487 (array!39049) Bool)

(assert (=> start!60046 (array_inv!14487 a!3626)))

(declare-fun b!667494 () Bool)

(declare-fun res!434831 () Bool)

(assert (=> b!667494 (=> res!434831 e!382020)))

(assert (=> b!667494 (= res!434831 (not (noDuplicate!597 lt!310866)))))

(declare-fun b!667495 () Bool)

(declare-fun e!382016 () Bool)

(assert (=> b!667495 (= e!382018 e!382016)))

(declare-fun res!434829 () Bool)

(assert (=> b!667495 (=> (not res!434829) (not e!382016))))

(assert (=> b!667495 (= res!434829 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667496 () Bool)

(declare-fun res!434828 () Bool)

(assert (=> b!667496 (=> (not res!434828) (not e!382024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!667496 (= res!434828 (validKeyInArray!0 k!2843))))

(declare-fun b!667497 () Bool)

(declare-fun res!434836 () Bool)

(assert (=> b!667497 (=> (not res!434836) (not e!382024))))

(declare-fun arrayNoDuplicates!0 (array!39049 (_ BitVec 32) List!12807) Bool)

(assert (=> b!667497 (= res!434836 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!667498 () Bool)

(assert (=> b!667498 (= e!382024 (not e!382020))))

(declare-fun res!434833 () Bool)

(assert (=> b!667498 (=> res!434833 e!382020)))

(assert (=> b!667498 (= res!434833 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!667498 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!310866)))

(declare-fun lt!310864 () Unit!23360)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39049 (_ BitVec 64) (_ BitVec 32) List!12807 List!12807) Unit!23360)

(assert (=> b!667498 (= lt!310864 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!310866))))

(declare-fun -!86 (List!12807 (_ BitVec 64)) List!12807)

(assert (=> b!667498 (= (-!86 lt!310866 k!2843) acc!681)))

(declare-fun $colon$colon!219 (List!12807 (_ BitVec 64)) List!12807)

(assert (=> b!667498 (= lt!310866 ($colon$colon!219 acc!681 k!2843))))

(declare-fun lt!310872 () Unit!23360)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12807) Unit!23360)

(assert (=> b!667498 (= lt!310872 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!88 (List!12807 List!12807) Bool)

(assert (=> b!667498 (subseq!88 acc!681 acc!681)))

(declare-fun lt!310870 () Unit!23360)

(declare-fun lemmaListSubSeqRefl!0 (List!12807) Unit!23360)

(assert (=> b!667498 (= lt!310870 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667498 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310863 () Unit!23360)

(assert (=> b!667498 (= lt!310863 e!382023)))

(declare-fun c!76697 () Bool)

(assert (=> b!667498 (= c!76697 (validKeyInArray!0 (select (arr!18713 a!3626) from!3004)))))

(declare-fun lt!310871 () Unit!23360)

(assert (=> b!667498 (= lt!310871 e!382022)))

(declare-fun c!76696 () Bool)

(assert (=> b!667498 (= c!76696 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667498 (arrayContainsKey!0 (array!39050 (store (arr!18713 a!3626) i!1382 k!2843) (size!19077 a!3626)) k!2843 from!3004)))

(declare-fun b!667499 () Bool)

(declare-fun res!434832 () Bool)

(assert (=> b!667499 (=> (not res!434832) (not e!382024))))

(assert (=> b!667499 (= res!434832 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12804))))

(declare-fun b!667500 () Bool)

(assert (=> b!667500 (= e!382021 (not (contains!3350 acc!681 k!2843)))))

(declare-fun b!667501 () Bool)

(declare-fun Unit!23364 () Unit!23360)

(assert (=> b!667501 (= e!382022 Unit!23364)))

(declare-fun lt!310868 () Unit!23360)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39049 (_ BitVec 64) (_ BitVec 32)) Unit!23360)

(assert (=> b!667501 (= lt!310868 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!667501 false))

(declare-fun b!667502 () Bool)

(assert (=> b!667502 (= e!382019 (contains!3350 acc!681 k!2843))))

(declare-fun b!667503 () Bool)

(assert (=> b!667503 (= e!382016 (not (contains!3350 lt!310866 k!2843)))))

(declare-fun b!667504 () Bool)

(declare-fun res!434830 () Bool)

(assert (=> b!667504 (=> (not res!434830) (not e!382024))))

(assert (=> b!667504 (= res!434830 (not (contains!3350 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667505 () Bool)

(declare-fun res!434844 () Bool)

(assert (=> b!667505 (=> res!434844 e!382020)))

(assert (=> b!667505 (= res!434844 (contains!3350 lt!310866 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667506 () Bool)

(declare-fun res!434826 () Bool)

(assert (=> b!667506 (=> (not res!434826) (not e!382024))))

(assert (=> b!667506 (= res!434826 (not (contains!3350 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667507 () Bool)

(declare-fun lt!310867 () Unit!23360)

(assert (=> b!667507 (= e!382023 lt!310867)))

(declare-fun lt!310865 () Unit!23360)

(assert (=> b!667507 (= lt!310865 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667507 (subseq!88 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39049 List!12807 List!12807 (_ BitVec 32)) Unit!23360)

(assert (=> b!667507 (= lt!310867 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!219 acc!681 (select (arr!18713 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667507 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!667508 () Bool)

(declare-fun res!434838 () Bool)

(assert (=> b!667508 (=> res!434838 e!382020)))

(assert (=> b!667508 (= res!434838 (contains!3350 lt!310866 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!60046 res!434837) b!667484))

(assert (= (and b!667484 res!434843) b!667506))

(assert (= (and b!667506 res!434826) b!667504))

(assert (= (and b!667504 res!434830) b!667487))

(assert (= (and b!667487 res!434842) b!667502))

(assert (= (and b!667487 (not res!434841)) b!667489))

(assert (= (and b!667489 res!434834) b!667500))

(assert (= (and b!667487 res!434835) b!667499))

(assert (= (and b!667499 res!434832) b!667497))

(assert (= (and b!667497 res!434836) b!667491))

(assert (= (and b!667491 res!434845) b!667496))

(assert (= (and b!667496 res!434828) b!667490))

(assert (= (and b!667490 res!434840) b!667488))

(assert (= (and b!667488 res!434846) b!667498))

(assert (= (and b!667498 c!76696) b!667501))

(assert (= (and b!667498 (not c!76696)) b!667485))

(assert (= (and b!667498 c!76697) b!667507))

(assert (= (and b!667498 (not c!76697)) b!667486))

(assert (= (and b!667498 (not res!434833)) b!667494))

(assert (= (and b!667494 (not res!434831)) b!667505))

(assert (= (and b!667505 (not res!434844)) b!667508))

(assert (= (and b!667508 (not res!434838)) b!667493))

(assert (= (and b!667493 res!434839) b!667492))

(assert (= (and b!667493 (not res!434827)) b!667495))

(assert (= (and b!667495 res!434829) b!667503))

(declare-fun m!638045 () Bool)

(assert (=> b!667502 m!638045))

(declare-fun m!638047 () Bool)

(assert (=> b!667503 m!638047))

(assert (=> b!667492 m!638047))

(declare-fun m!638049 () Bool)

(assert (=> b!667484 m!638049))

(declare-fun m!638051 () Bool)

(assert (=> b!667494 m!638051))

(declare-fun m!638053 () Bool)

(assert (=> b!667501 m!638053))

(declare-fun m!638055 () Bool)

(assert (=> b!667499 m!638055))

(declare-fun m!638057 () Bool)

(assert (=> b!667507 m!638057))

(declare-fun m!638059 () Bool)

(assert (=> b!667507 m!638059))

(declare-fun m!638061 () Bool)

(assert (=> b!667507 m!638061))

(declare-fun m!638063 () Bool)

(assert (=> b!667507 m!638063))

(assert (=> b!667507 m!638059))

(assert (=> b!667507 m!638061))

(declare-fun m!638065 () Bool)

(assert (=> b!667507 m!638065))

(declare-fun m!638067 () Bool)

(assert (=> b!667507 m!638067))

(declare-fun m!638069 () Bool)

(assert (=> b!667490 m!638069))

(declare-fun m!638071 () Bool)

(assert (=> b!667496 m!638071))

(declare-fun m!638073 () Bool)

(assert (=> b!667506 m!638073))

(assert (=> b!667500 m!638045))

(declare-fun m!638075 () Bool)

(assert (=> b!667497 m!638075))

(declare-fun m!638077 () Bool)

(assert (=> start!60046 m!638077))

(declare-fun m!638079 () Bool)

(assert (=> b!667498 m!638079))

(assert (=> b!667498 m!638057))

(declare-fun m!638081 () Bool)

(assert (=> b!667498 m!638081))

(declare-fun m!638083 () Bool)

(assert (=> b!667498 m!638083))

(declare-fun m!638085 () Bool)

(assert (=> b!667498 m!638085))

(assert (=> b!667498 m!638065))

(declare-fun m!638087 () Bool)

(assert (=> b!667498 m!638087))

(declare-fun m!638089 () Bool)

(assert (=> b!667498 m!638089))

(assert (=> b!667498 m!638059))

(declare-fun m!638091 () Bool)

(assert (=> b!667498 m!638091))

(assert (=> b!667498 m!638059))

(declare-fun m!638093 () Bool)

(assert (=> b!667498 m!638093))

(declare-fun m!638095 () Bool)

(assert (=> b!667498 m!638095))

(assert (=> b!667498 m!638067))

(declare-fun m!638097 () Bool)

(assert (=> b!667508 m!638097))

(declare-fun m!638099 () Bool)

(assert (=> b!667505 m!638099))

(declare-fun m!638101 () Bool)

(assert (=> b!667504 m!638101))

(push 1)

(assert (not b!667508))

(assert (not b!667505))

(assert (not b!667501))

(assert (not b!667503))

(assert (not b!667496))

(assert (not b!667492))

(assert (not b!667504))

(assert (not b!667502))

(assert (not b!667500))

(assert (not b!667499))

(assert (not b!667498))

(assert (not b!667497))

(assert (not b!667507))

(assert (not b!667484))

(assert (not b!667494))

(assert (not b!667506))

(assert (not b!667490))

(assert (not start!60046))

(check-sat)

