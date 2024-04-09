; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60020 () Bool)

(assert start!60020)

(declare-fun b!666509 () Bool)

(declare-fun res!434015 () Bool)

(declare-fun e!381656 () Bool)

(assert (=> b!666509 (=> res!434015 e!381656)))

(declare-datatypes ((List!12794 0))(
  ( (Nil!12791) (Cons!12790 (h!13835 (_ BitVec 64)) (t!19030 List!12794)) )
))
(declare-fun lt!310479 () List!12794)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3337 (List!12794 (_ BitVec 64)) Bool)

(assert (=> b!666509 (= res!434015 (not (contains!3337 lt!310479 k0!2843)))))

(declare-fun b!666510 () Bool)

(declare-datatypes ((Unit!23295 0))(
  ( (Unit!23296) )
))
(declare-fun e!381658 () Unit!23295)

(declare-fun Unit!23297 () Unit!23295)

(assert (=> b!666510 (= e!381658 Unit!23297)))

(declare-fun b!666511 () Bool)

(declare-fun res!434026 () Bool)

(assert (=> b!666511 (=> res!434026 e!381656)))

(declare-fun acc!681 () List!12794)

(declare-fun subseq!75 (List!12794 List!12794) Bool)

(assert (=> b!666511 (= res!434026 (not (subseq!75 acc!681 lt!310479)))))

(declare-fun b!666512 () Bool)

(declare-fun res!434021 () Bool)

(assert (=> b!666512 (=> res!434021 e!381656)))

(declare-fun noDuplicate!584 (List!12794) Bool)

(assert (=> b!666512 (= res!434021 (not (noDuplicate!584 lt!310479)))))

(declare-fun b!666513 () Bool)

(assert (=> b!666513 (= e!381656 true)))

(declare-fun lt!310482 () Bool)

(assert (=> b!666513 (= lt!310482 (contains!3337 lt!310479 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666514 () Bool)

(declare-fun e!381654 () Bool)

(declare-fun e!381657 () Bool)

(assert (=> b!666514 (= e!381654 e!381657)))

(declare-fun res!434025 () Bool)

(assert (=> b!666514 (=> (not res!434025) (not e!381657))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!666514 (= res!434025 (bvsle from!3004 i!1382))))

(declare-fun b!666515 () Bool)

(assert (=> b!666515 (= e!381657 (not (contains!3337 acc!681 k0!2843)))))

(declare-fun b!666516 () Bool)

(declare-fun e!381652 () Bool)

(assert (=> b!666516 (= e!381652 (contains!3337 acc!681 k0!2843))))

(declare-fun b!666517 () Bool)

(declare-fun res!434016 () Bool)

(declare-fun e!381655 () Bool)

(assert (=> b!666517 (=> (not res!434016) (not e!381655))))

(declare-datatypes ((array!39023 0))(
  ( (array!39024 (arr!18700 (Array (_ BitVec 32) (_ BitVec 64))) (size!19064 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39023)

(assert (=> b!666517 (= res!434016 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19064 a!3626))))))

(declare-fun b!666518 () Bool)

(assert (=> b!666518 (= e!381655 (not e!381656))))

(declare-fun res!434012 () Bool)

(assert (=> b!666518 (=> res!434012 e!381656)))

(assert (=> b!666518 (= res!434012 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!73 (List!12794 (_ BitVec 64)) List!12794)

(assert (=> b!666518 (= (-!73 lt!310479 k0!2843) acc!681)))

(declare-fun $colon$colon!206 (List!12794 (_ BitVec 64)) List!12794)

(assert (=> b!666518 (= lt!310479 ($colon$colon!206 acc!681 k0!2843))))

(declare-fun lt!310481 () Unit!23295)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12794) Unit!23295)

(assert (=> b!666518 (= lt!310481 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!666518 (subseq!75 acc!681 acc!681)))

(declare-fun lt!310475 () Unit!23295)

(declare-fun lemmaListSubSeqRefl!0 (List!12794) Unit!23295)

(assert (=> b!666518 (= lt!310475 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun arrayNoDuplicates!0 (array!39023 (_ BitVec 32) List!12794) Bool)

(assert (=> b!666518 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310474 () Unit!23295)

(declare-fun e!381651 () Unit!23295)

(assert (=> b!666518 (= lt!310474 e!381651)))

(declare-fun c!76619 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!666518 (= c!76619 (validKeyInArray!0 (select (arr!18700 a!3626) from!3004)))))

(declare-fun lt!310478 () Unit!23295)

(assert (=> b!666518 (= lt!310478 e!381658)))

(declare-fun c!76618 () Bool)

(declare-fun lt!310473 () Bool)

(assert (=> b!666518 (= c!76618 lt!310473)))

(declare-fun arrayContainsKey!0 (array!39023 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!666518 (= lt!310473 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666518 (arrayContainsKey!0 (array!39024 (store (arr!18700 a!3626) i!1382 k0!2843) (size!19064 a!3626)) k0!2843 from!3004)))

(declare-fun b!666519 () Bool)

(declare-fun res!434027 () Bool)

(assert (=> b!666519 (=> (not res!434027) (not e!381655))))

(assert (=> b!666519 (= res!434027 (not (contains!3337 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666521 () Bool)

(declare-fun res!434013 () Bool)

(assert (=> b!666521 (=> (not res!434013) (not e!381655))))

(assert (=> b!666521 (= res!434013 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!666522 () Bool)

(declare-fun res!434023 () Bool)

(assert (=> b!666522 (=> (not res!434023) (not e!381655))))

(assert (=> b!666522 (= res!434023 (noDuplicate!584 acc!681))))

(declare-fun b!666523 () Bool)

(declare-fun res!434018 () Bool)

(assert (=> b!666523 (=> res!434018 e!381656)))

(assert (=> b!666523 (= res!434018 lt!310473)))

(declare-fun b!666524 () Bool)

(declare-fun res!434019 () Bool)

(assert (=> b!666524 (=> (not res!434019) (not e!381655))))

(assert (=> b!666524 (= res!434019 (not (contains!3337 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666525 () Bool)

(declare-fun res!434017 () Bool)

(assert (=> b!666525 (=> (not res!434017) (not e!381655))))

(assert (=> b!666525 (= res!434017 (validKeyInArray!0 k0!2843))))

(declare-fun b!666526 () Bool)

(declare-fun res!434014 () Bool)

(assert (=> b!666526 (=> (not res!434014) (not e!381655))))

(assert (=> b!666526 (= res!434014 e!381654)))

(declare-fun res!434008 () Bool)

(assert (=> b!666526 (=> res!434008 e!381654)))

(assert (=> b!666526 (= res!434008 e!381652)))

(declare-fun res!434009 () Bool)

(assert (=> b!666526 (=> (not res!434009) (not e!381652))))

(assert (=> b!666526 (= res!434009 (bvsgt from!3004 i!1382))))

(declare-fun b!666527 () Bool)

(declare-fun Unit!23298 () Unit!23295)

(assert (=> b!666527 (= e!381658 Unit!23298)))

(declare-fun lt!310476 () Unit!23295)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39023 (_ BitVec 64) (_ BitVec 32)) Unit!23295)

(assert (=> b!666527 (= lt!310476 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!666527 false))

(declare-fun b!666528 () Bool)

(declare-fun res!434007 () Bool)

(assert (=> b!666528 (=> res!434007 e!381656)))

(assert (=> b!666528 (= res!434007 (contains!3337 lt!310479 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666529 () Bool)

(declare-fun res!434022 () Bool)

(assert (=> b!666529 (=> (not res!434022) (not e!381655))))

(assert (=> b!666529 (= res!434022 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!666530 () Bool)

(declare-fun res!434020 () Bool)

(assert (=> b!666530 (=> (not res!434020) (not e!381655))))

(assert (=> b!666530 (= res!434020 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19064 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!434011 () Bool)

(assert (=> start!60020 (=> (not res!434011) (not e!381655))))

(assert (=> start!60020 (= res!434011 (and (bvslt (size!19064 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19064 a!3626))))))

(assert (=> start!60020 e!381655))

(assert (=> start!60020 true))

(declare-fun array_inv!14474 (array!39023) Bool)

(assert (=> start!60020 (array_inv!14474 a!3626)))

(declare-fun b!666520 () Bool)

(declare-fun lt!310477 () Unit!23295)

(assert (=> b!666520 (= e!381651 lt!310477)))

(declare-fun lt!310480 () Unit!23295)

(assert (=> b!666520 (= lt!310480 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666520 (subseq!75 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39023 List!12794 List!12794 (_ BitVec 32)) Unit!23295)

(assert (=> b!666520 (= lt!310477 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!206 acc!681 (select (arr!18700 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666520 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666531 () Bool)

(declare-fun res!434024 () Bool)

(assert (=> b!666531 (=> (not res!434024) (not e!381655))))

(assert (=> b!666531 (= res!434024 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12791))))

(declare-fun b!666532 () Bool)

(declare-fun res!434010 () Bool)

(assert (=> b!666532 (=> res!434010 e!381656)))

(assert (=> b!666532 (= res!434010 (contains!3337 acc!681 k0!2843))))

(declare-fun b!666533 () Bool)

(declare-fun Unit!23299 () Unit!23295)

(assert (=> b!666533 (= e!381651 Unit!23299)))

(assert (= (and start!60020 res!434011) b!666522))

(assert (= (and b!666522 res!434023) b!666524))

(assert (= (and b!666524 res!434019) b!666519))

(assert (= (and b!666519 res!434027) b!666526))

(assert (= (and b!666526 res!434009) b!666516))

(assert (= (and b!666526 (not res!434008)) b!666514))

(assert (= (and b!666514 res!434025) b!666515))

(assert (= (and b!666526 res!434014) b!666531))

(assert (= (and b!666531 res!434024) b!666529))

(assert (= (and b!666529 res!434022) b!666517))

(assert (= (and b!666517 res!434016) b!666525))

(assert (= (and b!666525 res!434017) b!666521))

(assert (= (and b!666521 res!434013) b!666530))

(assert (= (and b!666530 res!434020) b!666518))

(assert (= (and b!666518 c!76618) b!666527))

(assert (= (and b!666518 (not c!76618)) b!666510))

(assert (= (and b!666518 c!76619) b!666520))

(assert (= (and b!666518 (not c!76619)) b!666533))

(assert (= (and b!666518 (not res!434012)) b!666512))

(assert (= (and b!666512 (not res!434021)) b!666523))

(assert (= (and b!666523 (not res!434018)) b!666532))

(assert (= (and b!666532 (not res!434010)) b!666511))

(assert (= (and b!666511 (not res!434026)) b!666509))

(assert (= (and b!666509 (not res!434015)) b!666528))

(assert (= (and b!666528 (not res!434007)) b!666513))

(declare-fun m!637307 () Bool)

(assert (=> b!666519 m!637307))

(declare-fun m!637309 () Bool)

(assert (=> b!666511 m!637309))

(declare-fun m!637311 () Bool)

(assert (=> b!666532 m!637311))

(declare-fun m!637313 () Bool)

(assert (=> start!60020 m!637313))

(declare-fun m!637315 () Bool)

(assert (=> b!666531 m!637315))

(declare-fun m!637317 () Bool)

(assert (=> b!666521 m!637317))

(declare-fun m!637319 () Bool)

(assert (=> b!666509 m!637319))

(declare-fun m!637321 () Bool)

(assert (=> b!666525 m!637321))

(declare-fun m!637323 () Bool)

(assert (=> b!666527 m!637323))

(assert (=> b!666515 m!637311))

(declare-fun m!637325 () Bool)

(assert (=> b!666524 m!637325))

(declare-fun m!637327 () Bool)

(assert (=> b!666518 m!637327))

(declare-fun m!637329 () Bool)

(assert (=> b!666518 m!637329))

(declare-fun m!637331 () Bool)

(assert (=> b!666518 m!637331))

(declare-fun m!637333 () Bool)

(assert (=> b!666518 m!637333))

(declare-fun m!637335 () Bool)

(assert (=> b!666518 m!637335))

(declare-fun m!637337 () Bool)

(assert (=> b!666518 m!637337))

(declare-fun m!637339 () Bool)

(assert (=> b!666518 m!637339))

(declare-fun m!637341 () Bool)

(assert (=> b!666518 m!637341))

(assert (=> b!666518 m!637329))

(declare-fun m!637343 () Bool)

(assert (=> b!666518 m!637343))

(declare-fun m!637345 () Bool)

(assert (=> b!666518 m!637345))

(declare-fun m!637347 () Bool)

(assert (=> b!666518 m!637347))

(declare-fun m!637349 () Bool)

(assert (=> b!666513 m!637349))

(declare-fun m!637351 () Bool)

(assert (=> b!666529 m!637351))

(assert (=> b!666520 m!637327))

(assert (=> b!666520 m!637329))

(declare-fun m!637353 () Bool)

(assert (=> b!666520 m!637353))

(declare-fun m!637355 () Bool)

(assert (=> b!666520 m!637355))

(assert (=> b!666520 m!637329))

(assert (=> b!666520 m!637353))

(assert (=> b!666520 m!637337))

(assert (=> b!666520 m!637347))

(assert (=> b!666516 m!637311))

(declare-fun m!637357 () Bool)

(assert (=> b!666512 m!637357))

(declare-fun m!637359 () Bool)

(assert (=> b!666528 m!637359))

(declare-fun m!637361 () Bool)

(assert (=> b!666522 m!637361))

(check-sat (not b!666521) (not b!666515) (not b!666524) (not b!666529) (not b!666512) (not b!666513) (not b!666531) (not b!666520) (not b!666528) (not b!666518) (not b!666509) (not b!666511) (not b!666525) (not start!60020) (not b!666527) (not b!666522) (not b!666519) (not b!666532) (not b!666516))
(check-sat)
