; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31012 () Bool)

(assert start!31012)

(declare-fun b!311454 () Bool)

(declare-fun res!168071 () Bool)

(declare-fun e!194320 () Bool)

(assert (=> b!311454 (=> (not res!168071) (not e!194320))))

(declare-datatypes ((array!15912 0))(
  ( (array!15913 (arr!7536 (Array (_ BitVec 32) (_ BitVec 64))) (size!7888 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15912)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311454 (= res!168071 (and (= (select (arr!7536 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7888 a!3293))))))

(declare-fun b!311455 () Bool)

(declare-fun res!168068 () Bool)

(declare-fun e!194317 () Bool)

(assert (=> b!311455 (=> (not res!168068) (not e!194317))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15912 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311455 (= res!168068 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311456 () Bool)

(declare-fun e!194318 () Bool)

(assert (=> b!311456 (= e!194318 (not true))))

(declare-fun e!194316 () Bool)

(assert (=> b!311456 e!194316))

(declare-fun res!168066 () Bool)

(assert (=> b!311456 (=> (not res!168066) (not e!194316))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!152405 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2687 0))(
  ( (MissingZero!2687 (index!12924 (_ BitVec 32))) (Found!2687 (index!12925 (_ BitVec 32))) (Intermediate!2687 (undefined!3499 Bool) (index!12926 (_ BitVec 32)) (x!31103 (_ BitVec 32))) (Undefined!2687) (MissingVacant!2687 (index!12927 (_ BitVec 32))) )
))
(declare-fun lt!152404 () SeekEntryResult!2687)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15912 (_ BitVec 32)) SeekEntryResult!2687)

(assert (=> b!311456 (= res!168066 (= lt!152404 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152405 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311456 (= lt!152405 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311457 () Bool)

(assert (=> b!311457 (= e!194317 e!194320)))

(declare-fun res!168067 () Bool)

(assert (=> b!311457 (=> (not res!168067) (not e!194320))))

(declare-fun lt!152403 () SeekEntryResult!2687)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311457 (= res!168067 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152403))))

(assert (=> b!311457 (= lt!152403 (Intermediate!2687 false resIndex!52 resX!52))))

(declare-fun b!311458 () Bool)

(declare-fun lt!152402 () array!15912)

(assert (=> b!311458 (= e!194316 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152402 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152405 k!2441 lt!152402 mask!3709)))))

(assert (=> b!311458 (= lt!152402 (array!15913 (store (arr!7536 a!3293) i!1240 k!2441) (size!7888 a!3293)))))

(declare-fun b!311459 () Bool)

(declare-fun res!168073 () Bool)

(assert (=> b!311459 (=> (not res!168073) (not e!194317))))

(assert (=> b!311459 (= res!168073 (and (= (size!7888 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7888 a!3293))))))

(declare-fun res!168072 () Bool)

(assert (=> start!31012 (=> (not res!168072) (not e!194317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31012 (= res!168072 (validMask!0 mask!3709))))

(assert (=> start!31012 e!194317))

(declare-fun array_inv!5490 (array!15912) Bool)

(assert (=> start!31012 (array_inv!5490 a!3293)))

(assert (=> start!31012 true))

(declare-fun b!311460 () Bool)

(assert (=> b!311460 (= e!194320 e!194318)))

(declare-fun res!168074 () Bool)

(assert (=> b!311460 (=> (not res!168074) (not e!194318))))

(assert (=> b!311460 (= res!168074 (and (= lt!152404 lt!152403) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7536 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311460 (= lt!152404 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311461 () Bool)

(declare-fun res!168069 () Bool)

(assert (=> b!311461 (=> (not res!168069) (not e!194317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15912 (_ BitVec 32)) Bool)

(assert (=> b!311461 (= res!168069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311462 () Bool)

(declare-fun res!168075 () Bool)

(assert (=> b!311462 (=> (not res!168075) (not e!194317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311462 (= res!168075 (validKeyInArray!0 k!2441))))

(declare-fun b!311463 () Bool)

(declare-fun res!168070 () Bool)

(assert (=> b!311463 (=> (not res!168070) (not e!194317))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15912 (_ BitVec 32)) SeekEntryResult!2687)

(assert (=> b!311463 (= res!168070 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2687 i!1240)))))

(assert (= (and start!31012 res!168072) b!311459))

(assert (= (and b!311459 res!168073) b!311462))

(assert (= (and b!311462 res!168075) b!311455))

(assert (= (and b!311455 res!168068) b!311463))

(assert (= (and b!311463 res!168070) b!311461))

(assert (= (and b!311461 res!168069) b!311457))

(assert (= (and b!311457 res!168067) b!311454))

(assert (= (and b!311454 res!168071) b!311460))

(assert (= (and b!311460 res!168074) b!311456))

(assert (= (and b!311456 res!168066) b!311458))

(declare-fun m!321485 () Bool)

(assert (=> b!311463 m!321485))

(declare-fun m!321487 () Bool)

(assert (=> start!31012 m!321487))

(declare-fun m!321489 () Bool)

(assert (=> start!31012 m!321489))

(declare-fun m!321491 () Bool)

(assert (=> b!311460 m!321491))

(declare-fun m!321493 () Bool)

(assert (=> b!311460 m!321493))

(declare-fun m!321495 () Bool)

(assert (=> b!311456 m!321495))

(declare-fun m!321497 () Bool)

(assert (=> b!311456 m!321497))

(declare-fun m!321499 () Bool)

(assert (=> b!311461 m!321499))

(declare-fun m!321501 () Bool)

(assert (=> b!311454 m!321501))

(declare-fun m!321503 () Bool)

(assert (=> b!311458 m!321503))

(declare-fun m!321505 () Bool)

(assert (=> b!311458 m!321505))

(declare-fun m!321507 () Bool)

(assert (=> b!311458 m!321507))

(declare-fun m!321509 () Bool)

(assert (=> b!311455 m!321509))

(declare-fun m!321511 () Bool)

(assert (=> b!311457 m!321511))

(assert (=> b!311457 m!321511))

(declare-fun m!321513 () Bool)

(assert (=> b!311457 m!321513))

(declare-fun m!321515 () Bool)

(assert (=> b!311462 m!321515))

(push 1)

(assert (not start!31012))

(assert (not b!311463))

(assert (not b!311461))

(assert (not b!311455))

(assert (not b!311458))

