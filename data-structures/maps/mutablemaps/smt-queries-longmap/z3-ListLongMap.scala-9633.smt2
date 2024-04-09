; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113974 () Bool)

(assert start!113974)

(declare-fun b!1351410 () Bool)

(declare-fun res!896990 () Bool)

(declare-fun e!768499 () Bool)

(assert (=> b!1351410 (=> res!896990 e!768499)))

(declare-datatypes ((List!31704 0))(
  ( (Nil!31701) (Cons!31700 (h!32909 (_ BitVec 64)) (t!46369 List!31704)) )
))
(declare-fun lt!597181 () List!31704)

(declare-fun contains!9269 (List!31704 (_ BitVec 64)) Bool)

(assert (=> b!1351410 (= res!896990 (contains!9269 lt!597181 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351411 () Bool)

(declare-fun res!896993 () Bool)

(declare-fun e!768497 () Bool)

(assert (=> b!1351411 (=> (not res!896993) (not e!768497))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351411 (= res!896993 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!897001 () Bool)

(assert (=> start!113974 (=> (not res!897001) (not e!768497))))

(declare-datatypes ((array!92079 0))(
  ( (array!92080 (arr!44483 (Array (_ BitVec 32) (_ BitVec 64))) (size!45034 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92079)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113974 (= res!897001 (and (bvslt (size!45034 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45034 a!3742))))))

(assert (=> start!113974 e!768497))

(assert (=> start!113974 true))

(declare-fun array_inv!33428 (array!92079) Bool)

(assert (=> start!113974 (array_inv!33428 a!3742)))

(declare-fun b!1351412 () Bool)

(declare-fun res!896991 () Bool)

(assert (=> b!1351412 (=> (not res!896991) (not e!768497))))

(assert (=> b!1351412 (= res!896991 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45034 a!3742)))))

(declare-fun b!1351413 () Bool)

(declare-fun res!896996 () Bool)

(assert (=> b!1351413 (=> (not res!896996) (not e!768497))))

(declare-fun acc!759 () List!31704)

(assert (=> b!1351413 (= res!896996 (not (contains!9269 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351414 () Bool)

(assert (=> b!1351414 (= e!768497 (not e!768499))))

(declare-fun res!896999 () Bool)

(assert (=> b!1351414 (=> res!896999 e!768499)))

(assert (=> b!1351414 (= res!896999 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!695 (List!31704 (_ BitVec 64)) List!31704)

(assert (=> b!1351414 (= lt!597181 ($colon$colon!695 acc!759 (select (arr!44483 a!3742) from!3120)))))

(declare-fun subseq!678 (List!31704 List!31704) Bool)

(assert (=> b!1351414 (subseq!678 acc!759 acc!759)))

(declare-datatypes ((Unit!44218 0))(
  ( (Unit!44219) )
))
(declare-fun lt!597179 () Unit!44218)

(declare-fun lemmaListSubSeqRefl!0 (List!31704) Unit!44218)

(assert (=> b!1351414 (= lt!597179 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1351415 () Bool)

(declare-fun res!896997 () Bool)

(assert (=> b!1351415 (=> (not res!896997) (not e!768497))))

(declare-fun arrayNoDuplicates!0 (array!92079 (_ BitVec 32) List!31704) Bool)

(assert (=> b!1351415 (= res!896997 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31701))))

(declare-fun b!1351416 () Bool)

(declare-fun res!896992 () Bool)

(assert (=> b!1351416 (=> res!896992 e!768499)))

(declare-fun noDuplicate!2148 (List!31704) Bool)

(assert (=> b!1351416 (= res!896992 (not (noDuplicate!2148 lt!597181)))))

(declare-fun b!1351417 () Bool)

(declare-fun res!896989 () Bool)

(assert (=> b!1351417 (=> (not res!896989) (not e!768497))))

(assert (=> b!1351417 (= res!896989 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351418 () Bool)

(declare-fun res!896998 () Bool)

(assert (=> b!1351418 (=> res!896998 e!768499)))

(assert (=> b!1351418 (= res!896998 (contains!9269 lt!597181 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351419 () Bool)

(declare-fun res!896994 () Bool)

(assert (=> b!1351419 (=> (not res!896994) (not e!768497))))

(assert (=> b!1351419 (= res!896994 (noDuplicate!2148 acc!759))))

(declare-fun b!1351420 () Bool)

(declare-fun res!897003 () Bool)

(assert (=> b!1351420 (=> res!897003 e!768499)))

(assert (=> b!1351420 (= res!897003 (not (subseq!678 acc!759 lt!597181)))))

(declare-fun b!1351421 () Bool)

(declare-fun res!896995 () Bool)

(assert (=> b!1351421 (=> (not res!896995) (not e!768497))))

(assert (=> b!1351421 (= res!896995 (not (contains!9269 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351422 () Bool)

(declare-fun res!897002 () Bool)

(assert (=> b!1351422 (=> (not res!897002) (not e!768497))))

(assert (=> b!1351422 (= res!897002 (validKeyInArray!0 (select (arr!44483 a!3742) from!3120)))))

(declare-fun b!1351423 () Bool)

(assert (=> b!1351423 (= e!768499 true)))

(declare-fun lt!597182 () Bool)

(assert (=> b!1351423 (= lt!597182 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597181))))

(declare-fun lt!597180 () Unit!44218)

(declare-fun noDuplicateSubseq!129 (List!31704 List!31704) Unit!44218)

(assert (=> b!1351423 (= lt!597180 (noDuplicateSubseq!129 acc!759 lt!597181))))

(declare-fun b!1351424 () Bool)

(declare-fun res!897000 () Bool)

(assert (=> b!1351424 (=> (not res!897000) (not e!768497))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351424 (= res!897000 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45034 a!3742))))))

(assert (= (and start!113974 res!897001) b!1351419))

(assert (= (and b!1351419 res!896994) b!1351421))

(assert (= (and b!1351421 res!896995) b!1351413))

(assert (= (and b!1351413 res!896996) b!1351415))

(assert (= (and b!1351415 res!896997) b!1351417))

(assert (= (and b!1351417 res!896989) b!1351424))

(assert (= (and b!1351424 res!897000) b!1351411))

(assert (= (and b!1351411 res!896993) b!1351412))

(assert (= (and b!1351412 res!896991) b!1351422))

(assert (= (and b!1351422 res!897002) b!1351414))

(assert (= (and b!1351414 (not res!896999)) b!1351416))

(assert (= (and b!1351416 (not res!896992)) b!1351410))

(assert (= (and b!1351410 (not res!896990)) b!1351418))

(assert (= (and b!1351418 (not res!896998)) b!1351420))

(assert (= (and b!1351420 (not res!897003)) b!1351423))

(declare-fun m!1238461 () Bool)

(assert (=> b!1351414 m!1238461))

(assert (=> b!1351414 m!1238461))

(declare-fun m!1238463 () Bool)

(assert (=> b!1351414 m!1238463))

(declare-fun m!1238465 () Bool)

(assert (=> b!1351414 m!1238465))

(declare-fun m!1238467 () Bool)

(assert (=> b!1351414 m!1238467))

(declare-fun m!1238469 () Bool)

(assert (=> b!1351417 m!1238469))

(declare-fun m!1238471 () Bool)

(assert (=> b!1351415 m!1238471))

(declare-fun m!1238473 () Bool)

(assert (=> start!113974 m!1238473))

(declare-fun m!1238475 () Bool)

(assert (=> b!1351421 m!1238475))

(assert (=> b!1351422 m!1238461))

(assert (=> b!1351422 m!1238461))

(declare-fun m!1238477 () Bool)

(assert (=> b!1351422 m!1238477))

(declare-fun m!1238479 () Bool)

(assert (=> b!1351416 m!1238479))

(declare-fun m!1238481 () Bool)

(assert (=> b!1351419 m!1238481))

(declare-fun m!1238483 () Bool)

(assert (=> b!1351410 m!1238483))

(declare-fun m!1238485 () Bool)

(assert (=> b!1351418 m!1238485))

(declare-fun m!1238487 () Bool)

(assert (=> b!1351411 m!1238487))

(declare-fun m!1238489 () Bool)

(assert (=> b!1351413 m!1238489))

(declare-fun m!1238491 () Bool)

(assert (=> b!1351420 m!1238491))

(declare-fun m!1238493 () Bool)

(assert (=> b!1351423 m!1238493))

(declare-fun m!1238495 () Bool)

(assert (=> b!1351423 m!1238495))

(check-sat (not b!1351416) (not b!1351411) (not b!1351422) (not b!1351413) (not b!1351417) (not b!1351421) (not b!1351419) (not b!1351415) (not b!1351418) (not b!1351410) (not b!1351423) (not b!1351420) (not b!1351414) (not start!113974))
(check-sat)
