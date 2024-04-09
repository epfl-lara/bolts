; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30668 () Bool)

(assert start!30668)

(declare-fun b!307599 () Bool)

(declare-fun res!164517 () Bool)

(declare-fun e!192511 () Bool)

(assert (=> b!307599 (=> (not res!164517) (not e!192511))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307599 (= res!164517 (validKeyInArray!0 k0!2441))))

(declare-fun b!307600 () Bool)

(declare-fun res!164515 () Bool)

(assert (=> b!307600 (=> (not res!164515) (not e!192511))))

(declare-datatypes ((array!15670 0))(
  ( (array!15671 (arr!7418 (Array (_ BitVec 32) (_ BitVec 64))) (size!7770 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15670)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15670 (_ BitVec 32)) Bool)

(assert (=> b!307600 (= res!164515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307601 () Bool)

(declare-fun e!192510 () Bool)

(assert (=> b!307601 (= e!192510 false)))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!151139 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307601 (= lt!151139 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!307602 () Bool)

(declare-fun res!164518 () Bool)

(assert (=> b!307602 (=> (not res!164518) (not e!192511))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307602 (= res!164518 (and (= (size!7770 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7770 a!3293))))))

(declare-fun b!307603 () Bool)

(declare-fun res!164520 () Bool)

(assert (=> b!307603 (=> (not res!164520) (not e!192510))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!307603 (= res!164520 (and (= (select (arr!7418 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7770 a!3293))))))

(declare-fun b!307604 () Bool)

(declare-fun res!164512 () Bool)

(assert (=> b!307604 (=> (not res!164512) (not e!192510))))

(declare-datatypes ((SeekEntryResult!2569 0))(
  ( (MissingZero!2569 (index!12452 (_ BitVec 32))) (Found!2569 (index!12453 (_ BitVec 32))) (Intermediate!2569 (undefined!3381 Bool) (index!12454 (_ BitVec 32)) (x!30655 (_ BitVec 32))) (Undefined!2569) (MissingVacant!2569 (index!12455 (_ BitVec 32))) )
))
(declare-fun lt!151138 () SeekEntryResult!2569)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15670 (_ BitVec 32)) SeekEntryResult!2569)

(assert (=> b!307604 (= res!164512 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151138))))

(declare-fun b!307605 () Bool)

(declare-fun res!164513 () Bool)

(assert (=> b!307605 (=> (not res!164513) (not e!192510))))

(assert (=> b!307605 (= res!164513 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7418 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!307606 () Bool)

(assert (=> b!307606 (= e!192511 e!192510)))

(declare-fun res!164516 () Bool)

(assert (=> b!307606 (=> (not res!164516) (not e!192510))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307606 (= res!164516 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151138))))

(assert (=> b!307606 (= lt!151138 (Intermediate!2569 false resIndex!52 resX!52))))

(declare-fun res!164519 () Bool)

(assert (=> start!30668 (=> (not res!164519) (not e!192511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30668 (= res!164519 (validMask!0 mask!3709))))

(assert (=> start!30668 e!192511))

(declare-fun array_inv!5372 (array!15670) Bool)

(assert (=> start!30668 (array_inv!5372 a!3293)))

(assert (=> start!30668 true))

(declare-fun b!307607 () Bool)

(declare-fun res!164511 () Bool)

(assert (=> b!307607 (=> (not res!164511) (not e!192511))))

(declare-fun arrayContainsKey!0 (array!15670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307607 (= res!164511 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307608 () Bool)

(declare-fun res!164514 () Bool)

(assert (=> b!307608 (=> (not res!164514) (not e!192511))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15670 (_ BitVec 32)) SeekEntryResult!2569)

(assert (=> b!307608 (= res!164514 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2569 i!1240)))))

(assert (= (and start!30668 res!164519) b!307602))

(assert (= (and b!307602 res!164518) b!307599))

(assert (= (and b!307599 res!164517) b!307607))

(assert (= (and b!307607 res!164511) b!307608))

(assert (= (and b!307608 res!164514) b!307600))

(assert (= (and b!307600 res!164515) b!307606))

(assert (= (and b!307606 res!164516) b!307603))

(assert (= (and b!307603 res!164520) b!307604))

(assert (= (and b!307604 res!164512) b!307605))

(assert (= (and b!307605 res!164513) b!307601))

(declare-fun m!317881 () Bool)

(assert (=> b!307605 m!317881))

(declare-fun m!317883 () Bool)

(assert (=> b!307599 m!317883))

(declare-fun m!317885 () Bool)

(assert (=> b!307608 m!317885))

(declare-fun m!317887 () Bool)

(assert (=> b!307606 m!317887))

(assert (=> b!307606 m!317887))

(declare-fun m!317889 () Bool)

(assert (=> b!307606 m!317889))

(declare-fun m!317891 () Bool)

(assert (=> b!307603 m!317891))

(declare-fun m!317893 () Bool)

(assert (=> b!307600 m!317893))

(declare-fun m!317895 () Bool)

(assert (=> start!30668 m!317895))

(declare-fun m!317897 () Bool)

(assert (=> start!30668 m!317897))

(declare-fun m!317899 () Bool)

(assert (=> b!307601 m!317899))

(declare-fun m!317901 () Bool)

(assert (=> b!307607 m!317901))

(declare-fun m!317903 () Bool)

(assert (=> b!307604 m!317903))

(check-sat (not b!307604) (not b!307606) (not start!30668) (not b!307608) (not b!307601) (not b!307599) (not b!307600) (not b!307607))
(check-sat)
