; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59990 () Bool)

(assert start!59990)

(declare-fun b!665384 () Bool)

(declare-fun e!381297 () Bool)

(declare-fun e!381296 () Bool)

(assert (=> b!665384 (= e!381297 e!381296)))

(declare-fun res!433082 () Bool)

(assert (=> b!665384 (=> (not res!433082) (not e!381296))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!665384 (= res!433082 (bvsle from!3004 i!1382))))

(declare-fun b!665385 () Bool)

(declare-fun res!433063 () Bool)

(declare-fun e!381291 () Bool)

(assert (=> b!665385 (=> (not res!433063) (not e!381291))))

(declare-datatypes ((array!38993 0))(
  ( (array!38994 (arr!18685 (Array (_ BitVec 32) (_ BitVec 64))) (size!19049 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38993)

(assert (=> b!665385 (= res!433063 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19049 a!3626))))))

(declare-fun b!665387 () Bool)

(declare-fun res!433072 () Bool)

(declare-fun e!381294 () Bool)

(assert (=> b!665387 (=> res!433072 e!381294)))

(declare-datatypes ((List!12779 0))(
  ( (Nil!12776) (Cons!12775 (h!13820 (_ BitVec 64)) (t!19015 List!12779)) )
))
(declare-fun acc!681 () List!12779)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3322 (List!12779 (_ BitVec 64)) Bool)

(assert (=> b!665387 (= res!433072 (contains!3322 acc!681 k0!2843))))

(declare-fun b!665388 () Bool)

(declare-fun res!433065 () Bool)

(assert (=> b!665388 (=> (not res!433065) (not e!381291))))

(declare-fun arrayContainsKey!0 (array!38993 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665388 (= res!433065 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!665389 () Bool)

(declare-fun res!433074 () Bool)

(assert (=> b!665389 (=> res!433074 e!381294)))

(declare-fun lt!310026 () List!12779)

(assert (=> b!665389 (= res!433074 (contains!3322 lt!310026 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665390 () Bool)

(assert (=> b!665390 (= e!381294 true)))

(declare-fun lt!310029 () Bool)

(assert (=> b!665390 (= lt!310029 (contains!3322 lt!310026 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665391 () Bool)

(declare-fun res!433064 () Bool)

(assert (=> b!665391 (=> (not res!433064) (not e!381291))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665391 (= res!433064 (validKeyInArray!0 k0!2843))))

(declare-fun b!665392 () Bool)

(declare-fun e!381292 () Bool)

(assert (=> b!665392 (= e!381292 (contains!3322 acc!681 k0!2843))))

(declare-fun b!665393 () Bool)

(assert (=> b!665393 (= e!381291 (not e!381294))))

(declare-fun res!433068 () Bool)

(assert (=> b!665393 (=> res!433068 e!381294)))

(assert (=> b!665393 (= res!433068 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!58 (List!12779 (_ BitVec 64)) List!12779)

(assert (=> b!665393 (= (-!58 lt!310026 k0!2843) acc!681)))

(declare-fun $colon$colon!191 (List!12779 (_ BitVec 64)) List!12779)

(assert (=> b!665393 (= lt!310026 ($colon$colon!191 acc!681 k0!2843))))

(declare-datatypes ((Unit!23220 0))(
  ( (Unit!23221) )
))
(declare-fun lt!310025 () Unit!23220)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12779) Unit!23220)

(assert (=> b!665393 (= lt!310025 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!60 (List!12779 List!12779) Bool)

(assert (=> b!665393 (subseq!60 acc!681 acc!681)))

(declare-fun lt!310028 () Unit!23220)

(declare-fun lemmaListSubSeqRefl!0 (List!12779) Unit!23220)

(assert (=> b!665393 (= lt!310028 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun arrayNoDuplicates!0 (array!38993 (_ BitVec 32) List!12779) Bool)

(assert (=> b!665393 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310031 () Unit!23220)

(declare-fun e!381293 () Unit!23220)

(assert (=> b!665393 (= lt!310031 e!381293)))

(declare-fun c!76528 () Bool)

(assert (=> b!665393 (= c!76528 (validKeyInArray!0 (select (arr!18685 a!3626) from!3004)))))

(declare-fun lt!310030 () Unit!23220)

(declare-fun e!381298 () Unit!23220)

(assert (=> b!665393 (= lt!310030 e!381298)))

(declare-fun c!76529 () Bool)

(declare-fun lt!310024 () Bool)

(assert (=> b!665393 (= c!76529 lt!310024)))

(assert (=> b!665393 (= lt!310024 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665393 (arrayContainsKey!0 (array!38994 (store (arr!18685 a!3626) i!1382 k0!2843) (size!19049 a!3626)) k0!2843 from!3004)))

(declare-fun b!665394 () Bool)

(declare-fun res!433076 () Bool)

(assert (=> b!665394 (=> (not res!433076) (not e!381291))))

(assert (=> b!665394 (= res!433076 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19049 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!665395 () Bool)

(declare-fun res!433062 () Bool)

(assert (=> b!665395 (=> (not res!433062) (not e!381291))))

(declare-fun noDuplicate!569 (List!12779) Bool)

(assert (=> b!665395 (= res!433062 (noDuplicate!569 acc!681))))

(declare-fun b!665396 () Bool)

(declare-fun res!433080 () Bool)

(assert (=> b!665396 (=> res!433080 e!381294)))

(assert (=> b!665396 (= res!433080 (not (contains!3322 lt!310026 k0!2843)))))

(declare-fun b!665397 () Bool)

(declare-fun res!433071 () Bool)

(assert (=> b!665397 (=> (not res!433071) (not e!381291))))

(assert (=> b!665397 (= res!433071 (not (contains!3322 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!433077 () Bool)

(assert (=> start!59990 (=> (not res!433077) (not e!381291))))

(assert (=> start!59990 (= res!433077 (and (bvslt (size!19049 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19049 a!3626))))))

(assert (=> start!59990 e!381291))

(assert (=> start!59990 true))

(declare-fun array_inv!14459 (array!38993) Bool)

(assert (=> start!59990 (array_inv!14459 a!3626)))

(declare-fun b!665386 () Bool)

(declare-fun res!433078 () Bool)

(assert (=> b!665386 (=> res!433078 e!381294)))

(assert (=> b!665386 (= res!433078 lt!310024)))

(declare-fun b!665398 () Bool)

(declare-fun res!433067 () Bool)

(assert (=> b!665398 (=> (not res!433067) (not e!381291))))

(assert (=> b!665398 (= res!433067 e!381297)))

(declare-fun res!433079 () Bool)

(assert (=> b!665398 (=> res!433079 e!381297)))

(assert (=> b!665398 (= res!433079 e!381292)))

(declare-fun res!433070 () Bool)

(assert (=> b!665398 (=> (not res!433070) (not e!381292))))

(assert (=> b!665398 (= res!433070 (bvsgt from!3004 i!1382))))

(declare-fun b!665399 () Bool)

(declare-fun res!433075 () Bool)

(assert (=> b!665399 (=> res!433075 e!381294)))

(assert (=> b!665399 (= res!433075 (not (noDuplicate!569 lt!310026)))))

(declare-fun b!665400 () Bool)

(assert (=> b!665400 (= e!381296 (not (contains!3322 acc!681 k0!2843)))))

(declare-fun b!665401 () Bool)

(declare-fun res!433081 () Bool)

(assert (=> b!665401 (=> (not res!433081) (not e!381291))))

(assert (=> b!665401 (= res!433081 (not (contains!3322 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665402 () Bool)

(declare-fun res!433073 () Bool)

(assert (=> b!665402 (=> (not res!433073) (not e!381291))))

(assert (=> b!665402 (= res!433073 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665403 () Bool)

(declare-fun Unit!23222 () Unit!23220)

(assert (=> b!665403 (= e!381298 Unit!23222)))

(declare-fun b!665404 () Bool)

(declare-fun res!433069 () Bool)

(assert (=> b!665404 (=> (not res!433069) (not e!381291))))

(assert (=> b!665404 (= res!433069 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12776))))

(declare-fun b!665405 () Bool)

(declare-fun Unit!23223 () Unit!23220)

(assert (=> b!665405 (= e!381298 Unit!23223)))

(declare-fun lt!310032 () Unit!23220)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38993 (_ BitVec 64) (_ BitVec 32)) Unit!23220)

(assert (=> b!665405 (= lt!310032 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!665405 false))

(declare-fun b!665406 () Bool)

(declare-fun res!433066 () Bool)

(assert (=> b!665406 (=> res!433066 e!381294)))

(assert (=> b!665406 (= res!433066 (not (subseq!60 acc!681 lt!310026)))))

(declare-fun b!665407 () Bool)

(declare-fun Unit!23224 () Unit!23220)

(assert (=> b!665407 (= e!381293 Unit!23224)))

(declare-fun b!665408 () Bool)

(declare-fun lt!310023 () Unit!23220)

(assert (=> b!665408 (= e!381293 lt!310023)))

(declare-fun lt!310027 () Unit!23220)

(assert (=> b!665408 (= lt!310027 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665408 (subseq!60 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38993 List!12779 List!12779 (_ BitVec 32)) Unit!23220)

(assert (=> b!665408 (= lt!310023 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!191 acc!681 (select (arr!18685 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665408 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(assert (= (and start!59990 res!433077) b!665395))

(assert (= (and b!665395 res!433062) b!665397))

(assert (= (and b!665397 res!433071) b!665401))

(assert (= (and b!665401 res!433081) b!665398))

(assert (= (and b!665398 res!433070) b!665392))

(assert (= (and b!665398 (not res!433079)) b!665384))

(assert (= (and b!665384 res!433082) b!665400))

(assert (= (and b!665398 res!433067) b!665404))

(assert (= (and b!665404 res!433069) b!665402))

(assert (= (and b!665402 res!433073) b!665385))

(assert (= (and b!665385 res!433063) b!665391))

(assert (= (and b!665391 res!433064) b!665388))

(assert (= (and b!665388 res!433065) b!665394))

(assert (= (and b!665394 res!433076) b!665393))

(assert (= (and b!665393 c!76529) b!665405))

(assert (= (and b!665393 (not c!76529)) b!665403))

(assert (= (and b!665393 c!76528) b!665408))

(assert (= (and b!665393 (not c!76528)) b!665407))

(assert (= (and b!665393 (not res!433068)) b!665399))

(assert (= (and b!665399 (not res!433075)) b!665386))

(assert (= (and b!665386 (not res!433078)) b!665387))

(assert (= (and b!665387 (not res!433072)) b!665406))

(assert (= (and b!665406 (not res!433066)) b!665396))

(assert (= (and b!665396 (not res!433080)) b!665389))

(assert (= (and b!665389 (not res!433074)) b!665390))

(declare-fun m!636467 () Bool)

(assert (=> b!665389 m!636467))

(declare-fun m!636469 () Bool)

(assert (=> b!665395 m!636469))

(declare-fun m!636471 () Bool)

(assert (=> b!665401 m!636471))

(declare-fun m!636473 () Bool)

(assert (=> start!59990 m!636473))

(declare-fun m!636475 () Bool)

(assert (=> b!665392 m!636475))

(declare-fun m!636477 () Bool)

(assert (=> b!665406 m!636477))

(declare-fun m!636479 () Bool)

(assert (=> b!665391 m!636479))

(declare-fun m!636481 () Bool)

(assert (=> b!665399 m!636481))

(declare-fun m!636483 () Bool)

(assert (=> b!665393 m!636483))

(declare-fun m!636485 () Bool)

(assert (=> b!665393 m!636485))

(declare-fun m!636487 () Bool)

(assert (=> b!665393 m!636487))

(declare-fun m!636489 () Bool)

(assert (=> b!665393 m!636489))

(declare-fun m!636491 () Bool)

(assert (=> b!665393 m!636491))

(declare-fun m!636493 () Bool)

(assert (=> b!665393 m!636493))

(declare-fun m!636495 () Bool)

(assert (=> b!665393 m!636495))

(declare-fun m!636497 () Bool)

(assert (=> b!665393 m!636497))

(assert (=> b!665393 m!636487))

(declare-fun m!636499 () Bool)

(assert (=> b!665393 m!636499))

(declare-fun m!636501 () Bool)

(assert (=> b!665393 m!636501))

(declare-fun m!636503 () Bool)

(assert (=> b!665393 m!636503))

(declare-fun m!636505 () Bool)

(assert (=> b!665390 m!636505))

(declare-fun m!636507 () Bool)

(assert (=> b!665404 m!636507))

(declare-fun m!636509 () Bool)

(assert (=> b!665402 m!636509))

(declare-fun m!636511 () Bool)

(assert (=> b!665396 m!636511))

(declare-fun m!636513 () Bool)

(assert (=> b!665397 m!636513))

(declare-fun m!636515 () Bool)

(assert (=> b!665405 m!636515))

(assert (=> b!665408 m!636485))

(assert (=> b!665408 m!636487))

(declare-fun m!636517 () Bool)

(assert (=> b!665408 m!636517))

(declare-fun m!636519 () Bool)

(assert (=> b!665408 m!636519))

(assert (=> b!665408 m!636487))

(assert (=> b!665408 m!636517))

(assert (=> b!665408 m!636493))

(assert (=> b!665408 m!636503))

(assert (=> b!665400 m!636475))

(assert (=> b!665387 m!636475))

(declare-fun m!636521 () Bool)

(assert (=> b!665388 m!636521))

(check-sat (not b!665391) (not b!665400) (not b!665396) (not b!665393) (not b!665405) (not b!665392) (not b!665389) (not b!665408) (not b!665388) (not start!59990) (not b!665399) (not b!665395) (not b!665404) (not b!665402) (not b!665401) (not b!665387) (not b!665397) (not b!665406) (not b!665390))
(check-sat)
