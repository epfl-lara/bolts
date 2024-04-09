; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62588 () Bool)

(assert start!62588)

(declare-fun res!469448 () Bool)

(declare-fun e!397744 () Bool)

(assert (=> start!62588 (=> (not res!469448) (not e!397744))))

(declare-datatypes ((array!40223 0))(
  ( (array!40224 (arr!19264 (Array (_ BitVec 32) (_ BitVec 64))) (size!19647 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40223)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62588 (= res!469448 (and (bvslt (size!19647 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19647 a!3591))))))

(assert (=> start!62588 e!397744))

(assert (=> start!62588 true))

(declare-fun array_inv!15038 (array!40223) Bool)

(assert (=> start!62588 (array_inv!15038 a!3591)))

(declare-fun b!705449 () Bool)

(declare-fun res!469434 () Bool)

(assert (=> b!705449 (=> (not res!469434) (not e!397744))))

(declare-datatypes ((List!13358 0))(
  ( (Nil!13355) (Cons!13354 (h!14399 (_ BitVec 64)) (t!19648 List!13358)) )
))
(declare-fun newAcc!49 () List!13358)

(declare-fun noDuplicate!1148 (List!13358) Bool)

(assert (=> b!705449 (= res!469434 (noDuplicate!1148 newAcc!49))))

(declare-fun b!705450 () Bool)

(declare-fun res!469440 () Bool)

(assert (=> b!705450 (=> (not res!469440) (not e!397744))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705450 (= res!469440 (validKeyInArray!0 k0!2824))))

(declare-fun b!705451 () Bool)

(declare-fun res!469450 () Bool)

(assert (=> b!705451 (=> (not res!469450) (not e!397744))))

(declare-fun acc!652 () List!13358)

(declare-fun contains!3901 (List!13358 (_ BitVec 64)) Bool)

(assert (=> b!705451 (= res!469450 (not (contains!3901 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705452 () Bool)

(declare-fun res!469441 () Bool)

(assert (=> b!705452 (=> (not res!469441) (not e!397744))))

(assert (=> b!705452 (= res!469441 (noDuplicate!1148 acc!652))))

(declare-fun b!705453 () Bool)

(declare-fun res!469451 () Bool)

(assert (=> b!705453 (=> (not res!469451) (not e!397744))))

(declare-fun -!310 (List!13358 (_ BitVec 64)) List!13358)

(assert (=> b!705453 (= res!469451 (= (-!310 newAcc!49 k0!2824) acc!652))))

(declare-fun b!705454 () Bool)

(declare-fun res!469439 () Bool)

(assert (=> b!705454 (=> (not res!469439) (not e!397744))))

(assert (=> b!705454 (= res!469439 (not (validKeyInArray!0 (select (arr!19264 a!3591) from!2969))))))

(declare-fun b!705455 () Bool)

(assert (=> b!705455 (= e!397744 (not true))))

(declare-fun arrayNoDuplicates!0 (array!40223 (_ BitVec 32) List!13358) Bool)

(assert (=> b!705455 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24594 0))(
  ( (Unit!24595) )
))
(declare-fun lt!317853 () Unit!24594)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40223 (_ BitVec 64) (_ BitVec 32) List!13358 List!13358) Unit!24594)

(assert (=> b!705455 (= lt!317853 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(declare-fun b!705456 () Bool)

(declare-fun res!469444 () Bool)

(assert (=> b!705456 (=> (not res!469444) (not e!397744))))

(assert (=> b!705456 (= res!469444 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!705457 () Bool)

(declare-fun res!469449 () Bool)

(assert (=> b!705457 (=> (not res!469449) (not e!397744))))

(assert (=> b!705457 (= res!469449 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705458 () Bool)

(declare-fun res!469443 () Bool)

(assert (=> b!705458 (=> (not res!469443) (not e!397744))))

(assert (=> b!705458 (= res!469443 (not (contains!3901 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705459 () Bool)

(declare-fun res!469433 () Bool)

(assert (=> b!705459 (=> (not res!469433) (not e!397744))))

(assert (=> b!705459 (= res!469433 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!705460 () Bool)

(declare-fun res!469445 () Bool)

(assert (=> b!705460 (=> (not res!469445) (not e!397744))))

(assert (=> b!705460 (= res!469445 (not (contains!3901 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705461 () Bool)

(declare-fun res!469442 () Bool)

(assert (=> b!705461 (=> (not res!469442) (not e!397744))))

(assert (=> b!705461 (= res!469442 (contains!3901 newAcc!49 k0!2824))))

(declare-fun b!705462 () Bool)

(declare-fun res!469438 () Bool)

(assert (=> b!705462 (=> (not res!469438) (not e!397744))))

(declare-fun arrayContainsKey!0 (array!40223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705462 (= res!469438 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705463 () Bool)

(declare-fun res!469435 () Bool)

(assert (=> b!705463 (=> (not res!469435) (not e!397744))))

(assert (=> b!705463 (= res!469435 (not (contains!3901 acc!652 k0!2824)))))

(declare-fun b!705464 () Bool)

(declare-fun res!469436 () Bool)

(assert (=> b!705464 (=> (not res!469436) (not e!397744))))

(assert (=> b!705464 (= res!469436 (not (contains!3901 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705465 () Bool)

(declare-fun res!469437 () Bool)

(assert (=> b!705465 (=> (not res!469437) (not e!397744))))

(assert (=> b!705465 (= res!469437 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19647 a!3591)))))

(declare-fun b!705466 () Bool)

(declare-fun res!469446 () Bool)

(assert (=> b!705466 (=> (not res!469446) (not e!397744))))

(declare-fun subseq!345 (List!13358 List!13358) Bool)

(assert (=> b!705466 (= res!469446 (subseq!345 acc!652 newAcc!49))))

(declare-fun b!705467 () Bool)

(declare-fun res!469447 () Bool)

(assert (=> b!705467 (=> (not res!469447) (not e!397744))))

(assert (=> b!705467 (= res!469447 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(assert (= (and start!62588 res!469448) b!705452))

(assert (= (and b!705452 res!469441) b!705449))

(assert (= (and b!705449 res!469434) b!705451))

(assert (= (and b!705451 res!469450) b!705458))

(assert (= (and b!705458 res!469443) b!705467))

(assert (= (and b!705467 res!469447) b!705463))

(assert (= (and b!705463 res!469435) b!705450))

(assert (= (and b!705450 res!469440) b!705457))

(assert (= (and b!705457 res!469449) b!705466))

(assert (= (and b!705466 res!469446) b!705461))

(assert (= (and b!705461 res!469442) b!705453))

(assert (= (and b!705453 res!469451) b!705460))

(assert (= (and b!705460 res!469445) b!705464))

(assert (= (and b!705464 res!469436) b!705465))

(assert (= (and b!705465 res!469437) b!705454))

(assert (= (and b!705454 res!469439) b!705456))

(assert (= (and b!705456 res!469444) b!705462))

(assert (= (and b!705462 res!469438) b!705459))

(assert (= (and b!705459 res!469433) b!705455))

(declare-fun m!663631 () Bool)

(assert (=> b!705459 m!663631))

(declare-fun m!663633 () Bool)

(assert (=> b!705464 m!663633))

(declare-fun m!663635 () Bool)

(assert (=> b!705461 m!663635))

(declare-fun m!663637 () Bool)

(assert (=> b!705450 m!663637))

(declare-fun m!663639 () Bool)

(assert (=> b!705453 m!663639))

(declare-fun m!663641 () Bool)

(assert (=> b!705455 m!663641))

(declare-fun m!663643 () Bool)

(assert (=> b!705455 m!663643))

(declare-fun m!663645 () Bool)

(assert (=> b!705452 m!663645))

(declare-fun m!663647 () Bool)

(assert (=> b!705460 m!663647))

(declare-fun m!663649 () Bool)

(assert (=> b!705463 m!663649))

(declare-fun m!663651 () Bool)

(assert (=> b!705449 m!663651))

(declare-fun m!663653 () Bool)

(assert (=> b!705454 m!663653))

(assert (=> b!705454 m!663653))

(declare-fun m!663655 () Bool)

(assert (=> b!705454 m!663655))

(declare-fun m!663657 () Bool)

(assert (=> b!705467 m!663657))

(declare-fun m!663659 () Bool)

(assert (=> b!705458 m!663659))

(declare-fun m!663661 () Bool)

(assert (=> b!705451 m!663661))

(declare-fun m!663663 () Bool)

(assert (=> b!705466 m!663663))

(declare-fun m!663665 () Bool)

(assert (=> b!705457 m!663665))

(declare-fun m!663667 () Bool)

(assert (=> start!62588 m!663667))

(declare-fun m!663669 () Bool)

(assert (=> b!705462 m!663669))

(check-sat (not b!705466) (not b!705450) (not b!705461) (not b!705464) (not b!705451) (not b!705457) (not b!705458) (not b!705449) (not b!705467) (not b!705455) (not b!705452) (not b!705463) (not b!705453) (not b!705459) (not b!705454) (not start!62588) (not b!705462) (not b!705460))
(check-sat)
