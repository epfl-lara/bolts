; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30542 () Bool)

(assert start!30542)

(declare-fun b!305459 () Bool)

(declare-fun res!162750 () Bool)

(declare-fun e!191790 () Bool)

(assert (=> b!305459 (=> (not res!162750) (not e!191790))))

(declare-datatypes ((array!15544 0))(
  ( (array!15545 (arr!7355 (Array (_ BitVec 32) (_ BitVec 64))) (size!7707 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15544)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!305459 (= res!162750 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7355 a!3293) index!1781) k0!2441)) (= x!1427 resX!52)))))

(declare-fun b!305460 () Bool)

(declare-datatypes ((Unit!9408 0))(
  ( (Unit!9409) )
))
(declare-fun e!191791 () Unit!9408)

(declare-fun Unit!9410 () Unit!9408)

(assert (=> b!305460 (= e!191791 Unit!9410)))

(declare-fun b!305461 () Bool)

(declare-fun res!162752 () Bool)

(declare-fun e!191794 () Bool)

(assert (=> b!305461 (=> (not res!162752) (not e!191794))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!305461 (= res!162752 (validKeyInArray!0 k0!2441))))

(declare-fun b!305462 () Bool)

(assert (=> b!305462 false))

(declare-fun e!191792 () Unit!9408)

(declare-fun Unit!9411 () Unit!9408)

(assert (=> b!305462 (= e!191792 Unit!9411)))

(declare-fun b!305463 () Bool)

(declare-fun res!162751 () Bool)

(assert (=> b!305463 (=> (not res!162751) (not e!191794))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2506 0))(
  ( (MissingZero!2506 (index!12200 (_ BitVec 32))) (Found!2506 (index!12201 (_ BitVec 32))) (Intermediate!2506 (undefined!3318 Bool) (index!12202 (_ BitVec 32)) (x!30424 (_ BitVec 32))) (Undefined!2506) (MissingVacant!2506 (index!12203 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15544 (_ BitVec 32)) SeekEntryResult!2506)

(assert (=> b!305463 (= res!162751 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2506 i!1240)))))

(declare-fun b!305464 () Bool)

(assert (=> b!305464 false))

(declare-fun lt!150757 () SeekEntryResult!2506)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15544 (_ BitVec 32)) SeekEntryResult!2506)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305464 (= lt!150757 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun Unit!9412 () Unit!9408)

(assert (=> b!305464 (= e!191792 Unit!9412)))

(declare-fun b!305466 () Bool)

(declare-fun res!162749 () Bool)

(assert (=> b!305466 (=> (not res!162749) (not e!191790))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!305466 (= res!162749 (and (= (select (arr!7355 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7707 a!3293))))))

(declare-fun b!305467 () Bool)

(assert (=> b!305467 (= e!191791 e!191792)))

(declare-fun c!48959 () Bool)

(assert (=> b!305467 (= c!48959 (or (= (select (arr!7355 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7355 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!305468 () Bool)

(assert (=> b!305468 (= e!191794 e!191790)))

(declare-fun res!162753 () Bool)

(assert (=> b!305468 (=> (not res!162753) (not e!191790))))

(declare-fun lt!150758 () SeekEntryResult!2506)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!305468 (= res!162753 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150758))))

(assert (=> b!305468 (= lt!150758 (Intermediate!2506 false resIndex!52 resX!52))))

(declare-fun res!162748 () Bool)

(assert (=> start!30542 (=> (not res!162748) (not e!191794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30542 (= res!162748 (validMask!0 mask!3709))))

(assert (=> start!30542 e!191794))

(declare-fun array_inv!5309 (array!15544) Bool)

(assert (=> start!30542 (array_inv!5309 a!3293)))

(assert (=> start!30542 true))

(declare-fun b!305465 () Bool)

(declare-fun res!162756 () Bool)

(assert (=> b!305465 (=> (not res!162756) (not e!191794))))

(declare-fun arrayContainsKey!0 (array!15544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!305465 (= res!162756 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!305469 () Bool)

(assert (=> b!305469 (= e!191790 (not (or (not (= (select (arr!7355 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000))))))

(assert (=> b!305469 (= index!1781 resIndex!52)))

(declare-fun lt!150756 () Unit!9408)

(assert (=> b!305469 (= lt!150756 e!191791)))

(declare-fun c!48958 () Bool)

(assert (=> b!305469 (= c!48958 (not (= resIndex!52 index!1781)))))

(declare-fun b!305470 () Bool)

(declare-fun res!162755 () Bool)

(assert (=> b!305470 (=> (not res!162755) (not e!191794))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15544 (_ BitVec 32)) Bool)

(assert (=> b!305470 (= res!162755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!305471 () Bool)

(declare-fun res!162747 () Bool)

(assert (=> b!305471 (=> (not res!162747) (not e!191794))))

(assert (=> b!305471 (= res!162747 (and (= (size!7707 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7707 a!3293))))))

(declare-fun b!305472 () Bool)

(declare-fun res!162754 () Bool)

(assert (=> b!305472 (=> (not res!162754) (not e!191790))))

(assert (=> b!305472 (= res!162754 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150758))))

(assert (= (and start!30542 res!162748) b!305471))

(assert (= (and b!305471 res!162747) b!305461))

(assert (= (and b!305461 res!162752) b!305465))

(assert (= (and b!305465 res!162756) b!305463))

(assert (= (and b!305463 res!162751) b!305470))

(assert (= (and b!305470 res!162755) b!305468))

(assert (= (and b!305468 res!162753) b!305466))

(assert (= (and b!305466 res!162749) b!305472))

(assert (= (and b!305472 res!162754) b!305459))

(assert (= (and b!305459 res!162750) b!305469))

(assert (= (and b!305469 c!48958) b!305467))

(assert (= (and b!305469 (not c!48958)) b!305460))

(assert (= (and b!305467 c!48959) b!305462))

(assert (= (and b!305467 (not c!48959)) b!305464))

(declare-fun m!316389 () Bool)

(assert (=> b!305461 m!316389))

(declare-fun m!316391 () Bool)

(assert (=> b!305464 m!316391))

(assert (=> b!305464 m!316391))

(declare-fun m!316393 () Bool)

(assert (=> b!305464 m!316393))

(declare-fun m!316395 () Bool)

(assert (=> b!305467 m!316395))

(declare-fun m!316397 () Bool)

(assert (=> b!305472 m!316397))

(declare-fun m!316399 () Bool)

(assert (=> b!305468 m!316399))

(assert (=> b!305468 m!316399))

(declare-fun m!316401 () Bool)

(assert (=> b!305468 m!316401))

(declare-fun m!316403 () Bool)

(assert (=> b!305470 m!316403))

(declare-fun m!316405 () Bool)

(assert (=> b!305466 m!316405))

(declare-fun m!316407 () Bool)

(assert (=> b!305465 m!316407))

(assert (=> b!305469 m!316395))

(assert (=> b!305459 m!316395))

(declare-fun m!316409 () Bool)

(assert (=> b!305463 m!316409))

(declare-fun m!316411 () Bool)

(assert (=> start!30542 m!316411))

(declare-fun m!316413 () Bool)

(assert (=> start!30542 m!316413))

(check-sat (not b!305472) (not b!305461) (not b!305468) (not b!305464) (not b!305470) (not b!305463) (not start!30542) (not b!305465))
(check-sat)
