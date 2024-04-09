; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30656 () Bool)

(assert start!30656)

(declare-fun e!192455 () Bool)

(declare-datatypes ((array!15658 0))(
  ( (array!15659 (arr!7412 (Array (_ BitVec 32) (_ BitVec 64))) (size!7764 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15658)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun b!307432 () Bool)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307432 (= e!192455 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7412 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!307433 () Bool)

(declare-fun res!164349 () Bool)

(declare-fun e!192457 () Bool)

(assert (=> b!307433 (=> (not res!164349) (not e!192457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15658 (_ BitVec 32)) Bool)

(assert (=> b!307433 (= res!164349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307434 () Bool)

(declare-fun res!164352 () Bool)

(assert (=> b!307434 (=> (not res!164352) (not e!192457))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307434 (= res!164352 (validKeyInArray!0 k0!2441))))

(declare-fun b!307435 () Bool)

(declare-fun res!164350 () Bool)

(assert (=> b!307435 (=> (not res!164350) (not e!192457))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2563 0))(
  ( (MissingZero!2563 (index!12428 (_ BitVec 32))) (Found!2563 (index!12429 (_ BitVec 32))) (Intermediate!2563 (undefined!3375 Bool) (index!12430 (_ BitVec 32)) (x!30633 (_ BitVec 32))) (Undefined!2563) (MissingVacant!2563 (index!12431 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15658 (_ BitVec 32)) SeekEntryResult!2563)

(assert (=> b!307435 (= res!164350 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2563 i!1240)))))

(declare-fun b!307436 () Bool)

(declare-fun res!164351 () Bool)

(assert (=> b!307436 (=> (not res!164351) (not e!192455))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!307436 (= res!164351 (and (= (select (arr!7412 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7764 a!3293))))))

(declare-fun b!307437 () Bool)

(declare-fun res!164346 () Bool)

(assert (=> b!307437 (=> (not res!164346) (not e!192457))))

(assert (=> b!307437 (= res!164346 (and (= (size!7764 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7764 a!3293))))))

(declare-fun b!307438 () Bool)

(declare-fun res!164344 () Bool)

(assert (=> b!307438 (=> (not res!164344) (not e!192455))))

(declare-fun lt!151115 () SeekEntryResult!2563)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15658 (_ BitVec 32)) SeekEntryResult!2563)

(assert (=> b!307438 (= res!164344 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151115))))

(declare-fun res!164345 () Bool)

(assert (=> start!30656 (=> (not res!164345) (not e!192457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30656 (= res!164345 (validMask!0 mask!3709))))

(assert (=> start!30656 e!192457))

(declare-fun array_inv!5366 (array!15658) Bool)

(assert (=> start!30656 (array_inv!5366 a!3293)))

(assert (=> start!30656 true))

(declare-fun b!307439 () Bool)

(declare-fun res!164348 () Bool)

(assert (=> b!307439 (=> (not res!164348) (not e!192457))))

(declare-fun arrayContainsKey!0 (array!15658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307439 (= res!164348 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307440 () Bool)

(assert (=> b!307440 (= e!192457 e!192455)))

(declare-fun res!164347 () Bool)

(assert (=> b!307440 (=> (not res!164347) (not e!192455))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307440 (= res!164347 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151115))))

(assert (=> b!307440 (= lt!151115 (Intermediate!2563 false resIndex!52 resX!52))))

(assert (= (and start!30656 res!164345) b!307437))

(assert (= (and b!307437 res!164346) b!307434))

(assert (= (and b!307434 res!164352) b!307439))

(assert (= (and b!307439 res!164348) b!307435))

(assert (= (and b!307435 res!164350) b!307433))

(assert (= (and b!307433 res!164349) b!307440))

(assert (= (and b!307440 res!164347) b!307436))

(assert (= (and b!307436 res!164351) b!307438))

(assert (= (and b!307438 res!164344) b!307432))

(declare-fun m!317747 () Bool)

(assert (=> b!307440 m!317747))

(assert (=> b!307440 m!317747))

(declare-fun m!317749 () Bool)

(assert (=> b!307440 m!317749))

(declare-fun m!317751 () Bool)

(assert (=> b!307432 m!317751))

(declare-fun m!317753 () Bool)

(assert (=> b!307436 m!317753))

(declare-fun m!317755 () Bool)

(assert (=> b!307435 m!317755))

(declare-fun m!317757 () Bool)

(assert (=> b!307438 m!317757))

(declare-fun m!317759 () Bool)

(assert (=> b!307433 m!317759))

(declare-fun m!317761 () Bool)

(assert (=> b!307434 m!317761))

(declare-fun m!317763 () Bool)

(assert (=> b!307439 m!317763))

(declare-fun m!317765 () Bool)

(assert (=> start!30656 m!317765))

(declare-fun m!317767 () Bool)

(assert (=> start!30656 m!317767))

(check-sat (not start!30656) (not b!307440) (not b!307434) (not b!307433) (not b!307435) (not b!307439) (not b!307438))
(check-sat)
