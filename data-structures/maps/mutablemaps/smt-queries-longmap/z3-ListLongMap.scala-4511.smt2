; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62552 () Bool)

(assert start!62552)

(declare-fun res!468447 () Bool)

(declare-fun e!397636 () Bool)

(assert (=> start!62552 (=> (not res!468447) (not e!397636))))

(declare-datatypes ((array!40187 0))(
  ( (array!40188 (arr!19246 (Array (_ BitVec 32) (_ BitVec 64))) (size!19629 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40187)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62552 (= res!468447 (and (bvslt (size!19629 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19629 a!3591))))))

(assert (=> start!62552 e!397636))

(assert (=> start!62552 true))

(declare-fun array_inv!15020 (array!40187) Bool)

(assert (=> start!62552 (array_inv!15020 a!3591)))

(declare-fun b!704463 () Bool)

(declare-fun res!468448 () Bool)

(assert (=> b!704463 (=> (not res!468448) (not e!397636))))

(declare-datatypes ((List!13340 0))(
  ( (Nil!13337) (Cons!13336 (h!14381 (_ BitVec 64)) (t!19630 List!13340)) )
))
(declare-fun newAcc!49 () List!13340)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3883 (List!13340 (_ BitVec 64)) Bool)

(assert (=> b!704463 (= res!468448 (contains!3883 newAcc!49 k0!2824))))

(declare-fun b!704464 () Bool)

(declare-fun res!468449 () Bool)

(assert (=> b!704464 (=> (not res!468449) (not e!397636))))

(declare-fun acc!652 () List!13340)

(declare-fun arrayNoDuplicates!0 (array!40187 (_ BitVec 32) List!13340) Bool)

(assert (=> b!704464 (= res!468449 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704465 () Bool)

(declare-fun res!468463 () Bool)

(assert (=> b!704465 (=> (not res!468463) (not e!397636))))

(declare-fun arrayContainsKey!0 (array!40187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704465 (= res!468463 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!704466 () Bool)

(declare-fun res!468460 () Bool)

(assert (=> b!704466 (=> (not res!468460) (not e!397636))))

(assert (=> b!704466 (= res!468460 (not (contains!3883 acc!652 k0!2824)))))

(declare-fun b!704467 () Bool)

(assert (=> b!704467 (= e!397636 false)))

(declare-fun lt!317799 () Bool)

(assert (=> b!704467 (= lt!317799 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!704468 () Bool)

(declare-fun res!468451 () Bool)

(assert (=> b!704468 (=> (not res!468451) (not e!397636))))

(assert (=> b!704468 (= res!468451 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704469 () Bool)

(declare-fun res!468464 () Bool)

(assert (=> b!704469 (=> (not res!468464) (not e!397636))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704469 (= res!468464 (validKeyInArray!0 k0!2824))))

(declare-fun b!704470 () Bool)

(declare-fun res!468459 () Bool)

(assert (=> b!704470 (=> (not res!468459) (not e!397636))))

(declare-fun noDuplicate!1130 (List!13340) Bool)

(assert (=> b!704470 (= res!468459 (noDuplicate!1130 newAcc!49))))

(declare-fun b!704471 () Bool)

(declare-fun res!468450 () Bool)

(assert (=> b!704471 (=> (not res!468450) (not e!397636))))

(declare-fun subseq!327 (List!13340 List!13340) Bool)

(assert (=> b!704471 (= res!468450 (subseq!327 acc!652 newAcc!49))))

(declare-fun b!704472 () Bool)

(declare-fun res!468458 () Bool)

(assert (=> b!704472 (=> (not res!468458) (not e!397636))))

(declare-fun -!292 (List!13340 (_ BitVec 64)) List!13340)

(assert (=> b!704472 (= res!468458 (= (-!292 newAcc!49 k0!2824) acc!652))))

(declare-fun b!704473 () Bool)

(declare-fun res!468461 () Bool)

(assert (=> b!704473 (=> (not res!468461) (not e!397636))))

(assert (=> b!704473 (= res!468461 (not (validKeyInArray!0 (select (arr!19246 a!3591) from!2969))))))

(declare-fun b!704474 () Bool)

(declare-fun res!468456 () Bool)

(assert (=> b!704474 (=> (not res!468456) (not e!397636))))

(assert (=> b!704474 (= res!468456 (not (contains!3883 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704475 () Bool)

(declare-fun res!468455 () Bool)

(assert (=> b!704475 (=> (not res!468455) (not e!397636))))

(assert (=> b!704475 (= res!468455 (noDuplicate!1130 acc!652))))

(declare-fun b!704476 () Bool)

(declare-fun res!468454 () Bool)

(assert (=> b!704476 (=> (not res!468454) (not e!397636))))

(assert (=> b!704476 (= res!468454 (not (contains!3883 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704477 () Bool)

(declare-fun res!468452 () Bool)

(assert (=> b!704477 (=> (not res!468452) (not e!397636))))

(assert (=> b!704477 (= res!468452 (not (contains!3883 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704478 () Bool)

(declare-fun res!468462 () Bool)

(assert (=> b!704478 (=> (not res!468462) (not e!397636))))

(assert (=> b!704478 (= res!468462 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19629 a!3591)))))

(declare-fun b!704479 () Bool)

(declare-fun res!468453 () Bool)

(assert (=> b!704479 (=> (not res!468453) (not e!397636))))

(assert (=> b!704479 (= res!468453 (not (contains!3883 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704480 () Bool)

(declare-fun res!468457 () Bool)

(assert (=> b!704480 (=> (not res!468457) (not e!397636))))

(assert (=> b!704480 (= res!468457 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(assert (= (and start!62552 res!468447) b!704475))

(assert (= (and b!704475 res!468455) b!704470))

(assert (= (and b!704470 res!468459) b!704474))

(assert (= (and b!704474 res!468456) b!704479))

(assert (= (and b!704479 res!468453) b!704465))

(assert (= (and b!704465 res!468463) b!704466))

(assert (= (and b!704466 res!468460) b!704469))

(assert (= (and b!704469 res!468464) b!704464))

(assert (= (and b!704464 res!468449) b!704471))

(assert (= (and b!704471 res!468450) b!704463))

(assert (= (and b!704463 res!468448) b!704472))

(assert (= (and b!704472 res!468458) b!704477))

(assert (= (and b!704477 res!468452) b!704476))

(assert (= (and b!704476 res!468454) b!704478))

(assert (= (and b!704478 res!468462) b!704473))

(assert (= (and b!704473 res!468461) b!704468))

(assert (= (and b!704468 res!468451) b!704480))

(assert (= (and b!704480 res!468457) b!704467))

(declare-fun m!662967 () Bool)

(assert (=> start!62552 m!662967))

(declare-fun m!662969 () Bool)

(assert (=> b!704475 m!662969))

(declare-fun m!662971 () Bool)

(assert (=> b!704480 m!662971))

(declare-fun m!662973 () Bool)

(assert (=> b!704477 m!662973))

(declare-fun m!662975 () Bool)

(assert (=> b!704463 m!662975))

(declare-fun m!662977 () Bool)

(assert (=> b!704464 m!662977))

(declare-fun m!662979 () Bool)

(assert (=> b!704479 m!662979))

(declare-fun m!662981 () Bool)

(assert (=> b!704469 m!662981))

(declare-fun m!662983 () Bool)

(assert (=> b!704470 m!662983))

(declare-fun m!662985 () Bool)

(assert (=> b!704471 m!662985))

(declare-fun m!662987 () Bool)

(assert (=> b!704473 m!662987))

(assert (=> b!704473 m!662987))

(declare-fun m!662989 () Bool)

(assert (=> b!704473 m!662989))

(declare-fun m!662991 () Bool)

(assert (=> b!704467 m!662991))

(declare-fun m!662993 () Bool)

(assert (=> b!704465 m!662993))

(declare-fun m!662995 () Bool)

(assert (=> b!704476 m!662995))

(declare-fun m!662997 () Bool)

(assert (=> b!704474 m!662997))

(declare-fun m!662999 () Bool)

(assert (=> b!704472 m!662999))

(declare-fun m!663001 () Bool)

(assert (=> b!704466 m!663001))

(check-sat (not b!704475) (not start!62552) (not b!704476) (not b!704472) (not b!704470) (not b!704464) (not b!704471) (not b!704480) (not b!704473) (not b!704467) (not b!704463) (not b!704474) (not b!704469) (not b!704477) (not b!704466) (not b!704465) (not b!704479))
(check-sat)
