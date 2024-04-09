; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31822 () Bool)

(assert start!31822)

(declare-fun b!317709 () Bool)

(declare-fun e!197493 () Bool)

(declare-fun e!197494 () Bool)

(assert (=> b!317709 (= e!197493 e!197494)))

(declare-fun res!172448 () Bool)

(assert (=> b!317709 (=> (not res!172448) (not e!197494))))

(declare-datatypes ((SeekEntryResult!2810 0))(
  ( (MissingZero!2810 (index!13416 (_ BitVec 32))) (Found!2810 (index!13417 (_ BitVec 32))) (Intermediate!2810 (undefined!3622 Bool) (index!13418 (_ BitVec 32)) (x!31638 (_ BitVec 32))) (Undefined!2810) (MissingVacant!2810 (index!13419 (_ BitVec 32))) )
))
(declare-fun lt!155102 () SeekEntryResult!2810)

(declare-datatypes ((array!16191 0))(
  ( (array!16192 (arr!7659 (Array (_ BitVec 32) (_ BitVec 64))) (size!8011 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16191)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16191 (_ BitVec 32)) SeekEntryResult!2810)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317709 (= res!172448 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155102))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!317709 (= lt!155102 (Intermediate!2810 false resIndex!52 resX!52))))

(declare-fun b!317710 () Bool)

(declare-fun e!197490 () Bool)

(assert (=> b!317710 (= e!197494 e!197490)))

(declare-fun res!172450 () Bool)

(assert (=> b!317710 (=> (not res!172450) (not e!197490))))

(declare-fun lt!155100 () SeekEntryResult!2810)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!317710 (= res!172450 (and (= lt!155100 lt!155102) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7659 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317710 (= lt!155100 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun lt!155101 () array!16191)

(declare-fun lt!155099 () (_ BitVec 32))

(declare-fun e!197491 () Bool)

(declare-fun b!317711 () Bool)

(assert (=> b!317711 (= e!197491 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155101 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155099 k!2441 lt!155101 mask!3709)))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317711 (= lt!155101 (array!16192 (store (arr!7659 a!3293) i!1240 k!2441) (size!8011 a!3293)))))

(declare-fun b!317712 () Bool)

(declare-fun res!172455 () Bool)

(assert (=> b!317712 (=> (not res!172455) (not e!197494))))

(assert (=> b!317712 (= res!172455 (and (= (select (arr!7659 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8011 a!3293))))))

(declare-fun res!172449 () Bool)

(assert (=> start!31822 (=> (not res!172449) (not e!197493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31822 (= res!172449 (validMask!0 mask!3709))))

(assert (=> start!31822 e!197493))

(declare-fun array_inv!5613 (array!16191) Bool)

(assert (=> start!31822 (array_inv!5613 a!3293)))

(assert (=> start!31822 true))

(declare-fun b!317713 () Bool)

(declare-fun res!172451 () Bool)

(assert (=> b!317713 (=> (not res!172451) (not e!197493))))

(assert (=> b!317713 (= res!172451 (and (= (size!8011 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8011 a!3293))))))

(declare-fun b!317714 () Bool)

(assert (=> b!317714 (= e!197490 (not true))))

(assert (=> b!317714 e!197491))

(declare-fun res!172453 () Bool)

(assert (=> b!317714 (=> (not res!172453) (not e!197491))))

(assert (=> b!317714 (= res!172453 (= lt!155100 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155099 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317714 (= lt!155099 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317715 () Bool)

(declare-fun res!172454 () Bool)

(assert (=> b!317715 (=> (not res!172454) (not e!197493))))

(declare-fun arrayContainsKey!0 (array!16191 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317715 (= res!172454 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317716 () Bool)

(declare-fun res!172447 () Bool)

(assert (=> b!317716 (=> (not res!172447) (not e!197493))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16191 (_ BitVec 32)) SeekEntryResult!2810)

(assert (=> b!317716 (= res!172447 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2810 i!1240)))))

(declare-fun b!317717 () Bool)

(declare-fun res!172452 () Bool)

(assert (=> b!317717 (=> (not res!172452) (not e!197493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16191 (_ BitVec 32)) Bool)

(assert (=> b!317717 (= res!172452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317718 () Bool)

(declare-fun res!172446 () Bool)

(assert (=> b!317718 (=> (not res!172446) (not e!197493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317718 (= res!172446 (validKeyInArray!0 k!2441))))

(assert (= (and start!31822 res!172449) b!317713))

(assert (= (and b!317713 res!172451) b!317718))

(assert (= (and b!317718 res!172446) b!317715))

(assert (= (and b!317715 res!172454) b!317716))

(assert (= (and b!317716 res!172447) b!317717))

(assert (= (and b!317717 res!172452) b!317709))

(assert (= (and b!317709 res!172448) b!317712))

(assert (= (and b!317712 res!172455) b!317710))

(assert (= (and b!317710 res!172450) b!317714))

(assert (= (and b!317714 res!172453) b!317711))

(declare-fun m!326417 () Bool)

(assert (=> b!317716 m!326417))

(declare-fun m!326419 () Bool)

(assert (=> b!317718 m!326419))

(declare-fun m!326421 () Bool)

(assert (=> b!317709 m!326421))

(assert (=> b!317709 m!326421))

(declare-fun m!326423 () Bool)

(assert (=> b!317709 m!326423))

(declare-fun m!326425 () Bool)

(assert (=> b!317710 m!326425))

(declare-fun m!326427 () Bool)

(assert (=> b!317710 m!326427))

(declare-fun m!326429 () Bool)

(assert (=> b!317714 m!326429))

(declare-fun m!326431 () Bool)

(assert (=> b!317714 m!326431))

(declare-fun m!326433 () Bool)

(assert (=> b!317715 m!326433))

(declare-fun m!326435 () Bool)

(assert (=> b!317712 m!326435))

(declare-fun m!326437 () Bool)

(assert (=> start!31822 m!326437))

(declare-fun m!326439 () Bool)

(assert (=> start!31822 m!326439))

(declare-fun m!326441 () Bool)

(assert (=> b!317717 m!326441))

(declare-fun m!326443 () Bool)

(assert (=> b!317711 m!326443))

(declare-fun m!326445 () Bool)

(assert (=> b!317711 m!326445))

(declare-fun m!326447 () Bool)

(assert (=> b!317711 m!326447))

(push 1)

(assert (not start!31822))

(assert (not b!317714))

(assert (not b!317718))

