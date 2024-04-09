; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60022 () Bool)

(assert start!60022)

(declare-fun b!666584 () Bool)

(declare-fun e!381679 () Bool)

(declare-fun e!381677 () Bool)

(assert (=> b!666584 (= e!381679 e!381677)))

(declare-fun res!434072 () Bool)

(assert (=> b!666584 (=> (not res!434072) (not e!381677))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!666584 (= res!434072 (bvsle from!3004 i!1382))))

(declare-fun b!666585 () Bool)

(declare-fun res!434081 () Bool)

(declare-fun e!381681 () Bool)

(assert (=> b!666585 (=> (not res!434081) (not e!381681))))

(declare-datatypes ((array!39025 0))(
  ( (array!39026 (arr!18701 (Array (_ BitVec 32) (_ BitVec 64))) (size!19065 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39025)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!666585 (= res!434081 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!666586 () Bool)

(declare-fun e!381676 () Bool)

(assert (=> b!666586 (= e!381681 (not e!381676))))

(declare-fun res!434089 () Bool)

(assert (=> b!666586 (=> res!434089 e!381676)))

(assert (=> b!666586 (= res!434089 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!12795 0))(
  ( (Nil!12792) (Cons!12791 (h!13836 (_ BitVec 64)) (t!19031 List!12795)) )
))
(declare-fun lt!310504 () List!12795)

(declare-fun acc!681 () List!12795)

(declare-fun -!74 (List!12795 (_ BitVec 64)) List!12795)

(assert (=> b!666586 (= (-!74 lt!310504 k!2843) acc!681)))

(declare-fun $colon$colon!207 (List!12795 (_ BitVec 64)) List!12795)

(assert (=> b!666586 (= lt!310504 ($colon$colon!207 acc!681 k!2843))))

(declare-datatypes ((Unit!23300 0))(
  ( (Unit!23301) )
))
(declare-fun lt!310511 () Unit!23300)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12795) Unit!23300)

(assert (=> b!666586 (= lt!310511 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!76 (List!12795 List!12795) Bool)

(assert (=> b!666586 (subseq!76 acc!681 acc!681)))

(declare-fun lt!310512 () Unit!23300)

(declare-fun lemmaListSubSeqRefl!0 (List!12795) Unit!23300)

(assert (=> b!666586 (= lt!310512 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun arrayNoDuplicates!0 (array!39025 (_ BitVec 32) List!12795) Bool)

(assert (=> b!666586 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310506 () Unit!23300)

(declare-fun e!381675 () Unit!23300)

(assert (=> b!666586 (= lt!310506 e!381675)))

(declare-fun c!76625 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!666586 (= c!76625 (validKeyInArray!0 (select (arr!18701 a!3626) from!3004)))))

(declare-fun lt!310503 () Unit!23300)

(declare-fun e!381682 () Unit!23300)

(assert (=> b!666586 (= lt!310503 e!381682)))

(declare-fun c!76624 () Bool)

(declare-fun lt!310508 () Bool)

(assert (=> b!666586 (= c!76624 lt!310508)))

(assert (=> b!666586 (= lt!310508 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666586 (arrayContainsKey!0 (array!39026 (store (arr!18701 a!3626) i!1382 k!2843) (size!19065 a!3626)) k!2843 from!3004)))

(declare-fun b!666587 () Bool)

(declare-fun res!434080 () Bool)

(assert (=> b!666587 (=> (not res!434080) (not e!381681))))

(assert (=> b!666587 (= res!434080 (validKeyInArray!0 k!2843))))

(declare-fun b!666588 () Bool)

(declare-fun res!434084 () Bool)

(assert (=> b!666588 (=> (not res!434084) (not e!381681))))

(assert (=> b!666588 (= res!434084 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12792))))

(declare-fun b!666589 () Bool)

(declare-fun res!434077 () Bool)

(assert (=> b!666589 (=> (not res!434077) (not e!381681))))

(declare-fun noDuplicate!585 (List!12795) Bool)

(assert (=> b!666589 (= res!434077 (noDuplicate!585 acc!681))))

(declare-fun b!666590 () Bool)

(declare-fun Unit!23302 () Unit!23300)

(assert (=> b!666590 (= e!381675 Unit!23302)))

(declare-fun b!666591 () Bool)

(declare-fun res!434087 () Bool)

(assert (=> b!666591 (=> res!434087 e!381676)))

(assert (=> b!666591 (= res!434087 (not (subseq!76 acc!681 lt!310504)))))

(declare-fun b!666592 () Bool)

(declare-fun res!434071 () Bool)

(assert (=> b!666592 (=> res!434071 e!381676)))

(assert (=> b!666592 (= res!434071 lt!310508)))

(declare-fun b!666594 () Bool)

(declare-fun res!434074 () Bool)

(assert (=> b!666594 (=> (not res!434074) (not e!381681))))

(assert (=> b!666594 (= res!434074 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!666595 () Bool)

(declare-fun Unit!23303 () Unit!23300)

(assert (=> b!666595 (= e!381682 Unit!23303)))

(declare-fun b!666596 () Bool)

(declare-fun res!434070 () Bool)

(assert (=> b!666596 (=> (not res!434070) (not e!381681))))

(assert (=> b!666596 (= res!434070 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19065 a!3626))))))

(declare-fun b!666597 () Bool)

(declare-fun res!434082 () Bool)

(assert (=> b!666597 (=> res!434082 e!381676)))

(declare-fun contains!3338 (List!12795 (_ BitVec 64)) Bool)

(assert (=> b!666597 (= res!434082 (contains!3338 acc!681 k!2843))))

(declare-fun b!666598 () Bool)

(declare-fun e!381680 () Bool)

(assert (=> b!666598 (= e!381680 (contains!3338 acc!681 k!2843))))

(declare-fun b!666599 () Bool)

(declare-fun res!434086 () Bool)

(assert (=> b!666599 (=> res!434086 e!381676)))

(assert (=> b!666599 (= res!434086 (not (noDuplicate!585 lt!310504)))))

(declare-fun b!666600 () Bool)

(declare-fun res!434090 () Bool)

(assert (=> b!666600 (=> (not res!434090) (not e!381681))))

(assert (=> b!666600 (= res!434090 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19065 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!666601 () Bool)

(declare-fun lt!310510 () Unit!23300)

(assert (=> b!666601 (= e!381675 lt!310510)))

(declare-fun lt!310507 () Unit!23300)

(assert (=> b!666601 (= lt!310507 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666601 (subseq!76 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39025 List!12795 List!12795 (_ BitVec 32)) Unit!23300)

(assert (=> b!666601 (= lt!310510 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!207 acc!681 (select (arr!18701 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666601 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666593 () Bool)

(assert (=> b!666593 (= e!381677 (not (contains!3338 acc!681 k!2843)))))

(declare-fun res!434083 () Bool)

(assert (=> start!60022 (=> (not res!434083) (not e!381681))))

(assert (=> start!60022 (= res!434083 (and (bvslt (size!19065 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19065 a!3626))))))

(assert (=> start!60022 e!381681))

(assert (=> start!60022 true))

(declare-fun array_inv!14475 (array!39025) Bool)

(assert (=> start!60022 (array_inv!14475 a!3626)))

(declare-fun b!666602 () Bool)

(declare-fun Unit!23304 () Unit!23300)

(assert (=> b!666602 (= e!381682 Unit!23304)))

(declare-fun lt!310505 () Unit!23300)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39025 (_ BitVec 64) (_ BitVec 32)) Unit!23300)

(assert (=> b!666602 (= lt!310505 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!666602 false))

(declare-fun b!666603 () Bool)

(declare-fun res!434079 () Bool)

(assert (=> b!666603 (=> res!434079 e!381676)))

(assert (=> b!666603 (= res!434079 (not (contains!3338 lt!310504 k!2843)))))

(declare-fun b!666604 () Bool)

(declare-fun res!434085 () Bool)

(assert (=> b!666604 (=> (not res!434085) (not e!381681))))

(assert (=> b!666604 (= res!434085 (not (contains!3338 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666605 () Bool)

(declare-fun res!434073 () Bool)

(assert (=> b!666605 (=> res!434073 e!381676)))

(assert (=> b!666605 (= res!434073 (contains!3338 lt!310504 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666606 () Bool)

(assert (=> b!666606 (= e!381676 true)))

(declare-fun lt!310509 () Bool)

(assert (=> b!666606 (= lt!310509 (contains!3338 lt!310504 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666607 () Bool)

(declare-fun res!434075 () Bool)

(assert (=> b!666607 (=> (not res!434075) (not e!381681))))

(assert (=> b!666607 (= res!434075 e!381679)))

(declare-fun res!434076 () Bool)

(assert (=> b!666607 (=> res!434076 e!381679)))

(assert (=> b!666607 (= res!434076 e!381680)))

(declare-fun res!434078 () Bool)

(assert (=> b!666607 (=> (not res!434078) (not e!381680))))

(assert (=> b!666607 (= res!434078 (bvsgt from!3004 i!1382))))

(declare-fun b!666608 () Bool)

(declare-fun res!434088 () Bool)

(assert (=> b!666608 (=> (not res!434088) (not e!381681))))

(assert (=> b!666608 (= res!434088 (not (contains!3338 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60022 res!434083) b!666589))

(assert (= (and b!666589 res!434077) b!666608))

(assert (= (and b!666608 res!434088) b!666604))

(assert (= (and b!666604 res!434085) b!666607))

(assert (= (and b!666607 res!434078) b!666598))

(assert (= (and b!666607 (not res!434076)) b!666584))

(assert (= (and b!666584 res!434072) b!666593))

(assert (= (and b!666607 res!434075) b!666588))

(assert (= (and b!666588 res!434084) b!666594))

(assert (= (and b!666594 res!434074) b!666596))

(assert (= (and b!666596 res!434070) b!666587))

(assert (= (and b!666587 res!434080) b!666585))

(assert (= (and b!666585 res!434081) b!666600))

(assert (= (and b!666600 res!434090) b!666586))

(assert (= (and b!666586 c!76624) b!666602))

(assert (= (and b!666586 (not c!76624)) b!666595))

(assert (= (and b!666586 c!76625) b!666601))

(assert (= (and b!666586 (not c!76625)) b!666590))

(assert (= (and b!666586 (not res!434089)) b!666599))

(assert (= (and b!666599 (not res!434086)) b!666592))

(assert (= (and b!666592 (not res!434071)) b!666597))

(assert (= (and b!666597 (not res!434082)) b!666591))

(assert (= (and b!666591 (not res!434087)) b!666603))

(assert (= (and b!666603 (not res!434079)) b!666605))

(assert (= (and b!666605 (not res!434073)) b!666606))

(declare-fun m!637363 () Bool)

(assert (=> b!666585 m!637363))

(declare-fun m!637365 () Bool)

(assert (=> b!666587 m!637365))

(declare-fun m!637367 () Bool)

(assert (=> b!666593 m!637367))

(assert (=> b!666597 m!637367))

(declare-fun m!637369 () Bool)

(assert (=> b!666608 m!637369))

(declare-fun m!637371 () Bool)

(assert (=> b!666601 m!637371))

(declare-fun m!637373 () Bool)

(assert (=> b!666601 m!637373))

(declare-fun m!637375 () Bool)

(assert (=> b!666601 m!637375))

(declare-fun m!637377 () Bool)

(assert (=> b!666601 m!637377))

(assert (=> b!666601 m!637373))

(assert (=> b!666601 m!637375))

(declare-fun m!637379 () Bool)

(assert (=> b!666601 m!637379))

(declare-fun m!637381 () Bool)

(assert (=> b!666601 m!637381))

(assert (=> b!666586 m!637371))

(assert (=> b!666586 m!637373))

(declare-fun m!637383 () Bool)

(assert (=> b!666586 m!637383))

(assert (=> b!666586 m!637379))

(declare-fun m!637385 () Bool)

(assert (=> b!666586 m!637385))

(declare-fun m!637387 () Bool)

(assert (=> b!666586 m!637387))

(assert (=> b!666586 m!637373))

(declare-fun m!637389 () Bool)

(assert (=> b!666586 m!637389))

(declare-fun m!637391 () Bool)

(assert (=> b!666586 m!637391))

(declare-fun m!637393 () Bool)

(assert (=> b!666586 m!637393))

(declare-fun m!637395 () Bool)

(assert (=> b!666586 m!637395))

(assert (=> b!666586 m!637381))

(assert (=> b!666598 m!637367))

(declare-fun m!637397 () Bool)

(assert (=> b!666602 m!637397))

(declare-fun m!637399 () Bool)

(assert (=> b!666594 m!637399))

(declare-fun m!637401 () Bool)

(assert (=> b!666606 m!637401))

(declare-fun m!637403 () Bool)

(assert (=> b!666589 m!637403))

(declare-fun m!637405 () Bool)

(assert (=> b!666591 m!637405))

(declare-fun m!637407 () Bool)

(assert (=> b!666604 m!637407))

(declare-fun m!637409 () Bool)

(assert (=> b!666588 m!637409))

(declare-fun m!637411 () Bool)

(assert (=> b!666599 m!637411))

(declare-fun m!637413 () Bool)

(assert (=> b!666603 m!637413))

(declare-fun m!637415 () Bool)

(assert (=> b!666605 m!637415))

(declare-fun m!637417 () Bool)

(assert (=> start!60022 m!637417))

(push 1)

(assert (not b!666599))

(assert (not b!666605))

(assert (not b!666593))

(assert (not start!60022))

(assert (not b!666586))

(assert (not b!666587))

(assert (not b!666591))

(assert (not b!666589))

(assert (not b!666602))

(assert (not b!666606))

(assert (not b!666597))

(assert (not b!666601))

(assert (not b!666603))

(assert (not b!666594))

(assert (not b!666608))

(assert (not b!666604))

(assert (not b!666585))

(assert (not b!666598))

(assert (not b!666588))

(check-sat)

(pop 1)

