; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30948 () Bool)

(assert start!30948)

(declare-fun b!310494 () Bool)

(declare-fun res!167106 () Bool)

(declare-fun e!193840 () Bool)

(assert (=> b!310494 (=> (not res!167106) (not e!193840))))

(declare-datatypes ((array!15848 0))(
  ( (array!15849 (arr!7504 (Array (_ BitVec 32) (_ BitVec 64))) (size!7856 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15848)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310494 (= res!167106 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310495 () Bool)

(declare-fun res!167113 () Bool)

(declare-fun e!193838 () Bool)

(assert (=> b!310495 (=> (not res!167113) (not e!193838))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310495 (= res!167113 (and (= (select (arr!7504 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7856 a!3293))))))

(declare-fun b!310496 () Bool)

(declare-fun res!167108 () Bool)

(assert (=> b!310496 (=> (not res!167108) (not e!193840))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15848 (_ BitVec 32)) Bool)

(assert (=> b!310496 (= res!167108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310497 () Bool)

(declare-fun res!167111 () Bool)

(assert (=> b!310497 (=> (not res!167111) (not e!193840))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310497 (= res!167111 (validKeyInArray!0 k!2441))))

(declare-fun b!310498 () Bool)

(declare-fun res!167109 () Bool)

(assert (=> b!310498 (=> (not res!167109) (not e!193840))))

(assert (=> b!310498 (= res!167109 (and (= (size!7856 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7856 a!3293))))))

(declare-fun e!193837 () Bool)

(declare-fun b!310500 () Bool)

(declare-fun lt!152020 () array!15848)

(declare-fun lt!152019 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2655 0))(
  ( (MissingZero!2655 (index!12796 (_ BitVec 32))) (Found!2655 (index!12797 (_ BitVec 32))) (Intermediate!2655 (undefined!3467 Bool) (index!12798 (_ BitVec 32)) (x!30991 (_ BitVec 32))) (Undefined!2655) (MissingVacant!2655 (index!12799 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15848 (_ BitVec 32)) SeekEntryResult!2655)

(assert (=> b!310500 (= e!193837 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152020 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152019 k!2441 lt!152020 mask!3709)))))

(assert (=> b!310500 (= lt!152020 (array!15849 (store (arr!7504 a!3293) i!1240 k!2441) (size!7856 a!3293)))))

(declare-fun b!310501 () Bool)

(declare-fun e!193839 () Bool)

(assert (=> b!310501 (= e!193838 e!193839)))

(declare-fun res!167110 () Bool)

(assert (=> b!310501 (=> (not res!167110) (not e!193839))))

(declare-fun lt!152018 () SeekEntryResult!2655)

(declare-fun lt!152021 () SeekEntryResult!2655)

(assert (=> b!310501 (= res!167110 (and (= lt!152021 lt!152018) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7504 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310501 (= lt!152021 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!167114 () Bool)

(assert (=> start!30948 (=> (not res!167114) (not e!193840))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30948 (= res!167114 (validMask!0 mask!3709))))

(assert (=> start!30948 e!193840))

(declare-fun array_inv!5458 (array!15848) Bool)

(assert (=> start!30948 (array_inv!5458 a!3293)))

(assert (=> start!30948 true))

(declare-fun b!310499 () Bool)

(declare-fun res!167115 () Bool)

(assert (=> b!310499 (=> (not res!167115) (not e!193840))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15848 (_ BitVec 32)) SeekEntryResult!2655)

(assert (=> b!310499 (= res!167115 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2655 i!1240)))))

(declare-fun b!310502 () Bool)

(assert (=> b!310502 (= e!193840 e!193838)))

(declare-fun res!167107 () Bool)

(assert (=> b!310502 (=> (not res!167107) (not e!193838))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310502 (= res!167107 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152018))))

(assert (=> b!310502 (= lt!152018 (Intermediate!2655 false resIndex!52 resX!52))))

(declare-fun b!310503 () Bool)

(assert (=> b!310503 (= e!193839 (not true))))

(assert (=> b!310503 e!193837))

(declare-fun res!167112 () Bool)

(assert (=> b!310503 (=> (not res!167112) (not e!193837))))

(assert (=> b!310503 (= res!167112 (= lt!152021 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152019 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310503 (= lt!152019 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!30948 res!167114) b!310498))

(assert (= (and b!310498 res!167109) b!310497))

(assert (= (and b!310497 res!167111) b!310494))

(assert (= (and b!310494 res!167106) b!310499))

(assert (= (and b!310499 res!167115) b!310496))

(assert (= (and b!310496 res!167108) b!310502))

(assert (= (and b!310502 res!167107) b!310495))

(assert (= (and b!310495 res!167113) b!310501))

(assert (= (and b!310501 res!167110) b!310503))

(assert (= (and b!310503 res!167112) b!310500))

(declare-fun m!320461 () Bool)

(assert (=> b!310499 m!320461))

(declare-fun m!320463 () Bool)

(assert (=> b!310502 m!320463))

(assert (=> b!310502 m!320463))

(declare-fun m!320465 () Bool)

(assert (=> b!310502 m!320465))

(declare-fun m!320467 () Bool)

(assert (=> b!310496 m!320467))

(declare-fun m!320469 () Bool)

(assert (=> b!310495 m!320469))

(declare-fun m!320471 () Bool)

(assert (=> start!30948 m!320471))

(declare-fun m!320473 () Bool)

(assert (=> start!30948 m!320473))

(declare-fun m!320475 () Bool)

(assert (=> b!310503 m!320475))

(declare-fun m!320477 () Bool)

(assert (=> b!310503 m!320477))

(declare-fun m!320479 () Bool)

(assert (=> b!310494 m!320479))

(declare-fun m!320481 () Bool)

(assert (=> b!310501 m!320481))

(declare-fun m!320483 () Bool)

(assert (=> b!310501 m!320483))

(declare-fun m!320485 () Bool)

(assert (=> b!310500 m!320485))

(declare-fun m!320487 () Bool)

(assert (=> b!310500 m!320487))

(declare-fun m!320489 () Bool)

(assert (=> b!310500 m!320489))

(declare-fun m!320491 () Bool)

(assert (=> b!310497 m!320491))

(push 1)

