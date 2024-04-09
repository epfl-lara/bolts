; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30674 () Bool)

(assert start!30674)

(declare-fun res!164609 () Bool)

(declare-fun e!192537 () Bool)

(assert (=> start!30674 (=> (not res!164609) (not e!192537))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30674 (= res!164609 (validMask!0 mask!3709))))

(assert (=> start!30674 e!192537))

(declare-datatypes ((array!15676 0))(
  ( (array!15677 (arr!7421 (Array (_ BitVec 32) (_ BitVec 64))) (size!7773 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15676)

(declare-fun array_inv!5375 (array!15676) Bool)

(assert (=> start!30674 (array_inv!5375 a!3293)))

(assert (=> start!30674 true))

(declare-fun b!307689 () Bool)

(declare-fun res!164602 () Bool)

(assert (=> b!307689 (=> (not res!164602) (not e!192537))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307689 (= res!164602 (and (= (size!7773 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7773 a!3293))))))

(declare-fun b!307690 () Bool)

(declare-fun res!164601 () Bool)

(declare-fun e!192538 () Bool)

(assert (=> b!307690 (=> (not res!164601) (not e!192538))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2572 0))(
  ( (MissingZero!2572 (index!12464 (_ BitVec 32))) (Found!2572 (index!12465 (_ BitVec 32))) (Intermediate!2572 (undefined!3384 Bool) (index!12466 (_ BitVec 32)) (x!30666 (_ BitVec 32))) (Undefined!2572) (MissingVacant!2572 (index!12467 (_ BitVec 32))) )
))
(declare-fun lt!151157 () SeekEntryResult!2572)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15676 (_ BitVec 32)) SeekEntryResult!2572)

(assert (=> b!307690 (= res!164601 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151157))))

(declare-fun b!307691 () Bool)

(declare-fun res!164606 () Bool)

(assert (=> b!307691 (=> (not res!164606) (not e!192537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15676 (_ BitVec 32)) Bool)

(assert (=> b!307691 (= res!164606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307692 () Bool)

(assert (=> b!307692 (= e!192538 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun lt!151156 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307692 (= lt!151156 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!307693 () Bool)

(assert (=> b!307693 (= e!192537 e!192538)))

(declare-fun res!164610 () Bool)

(assert (=> b!307693 (=> (not res!164610) (not e!192538))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307693 (= res!164610 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151157))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!307693 (= lt!151157 (Intermediate!2572 false resIndex!52 resX!52))))

(declare-fun b!307694 () Bool)

(declare-fun res!164603 () Bool)

(assert (=> b!307694 (=> (not res!164603) (not e!192537))))

(declare-fun arrayContainsKey!0 (array!15676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307694 (= res!164603 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307695 () Bool)

(declare-fun res!164608 () Bool)

(assert (=> b!307695 (=> (not res!164608) (not e!192537))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15676 (_ BitVec 32)) SeekEntryResult!2572)

(assert (=> b!307695 (= res!164608 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2572 i!1240)))))

(declare-fun b!307696 () Bool)

(declare-fun res!164605 () Bool)

(assert (=> b!307696 (=> (not res!164605) (not e!192537))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307696 (= res!164605 (validKeyInArray!0 k0!2441))))

(declare-fun b!307697 () Bool)

(declare-fun res!164604 () Bool)

(assert (=> b!307697 (=> (not res!164604) (not e!192538))))

(assert (=> b!307697 (= res!164604 (and (= (select (arr!7421 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7773 a!3293))))))

(declare-fun b!307698 () Bool)

(declare-fun res!164607 () Bool)

(assert (=> b!307698 (=> (not res!164607) (not e!192538))))

(assert (=> b!307698 (= res!164607 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7421 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (= (and start!30674 res!164609) b!307689))

(assert (= (and b!307689 res!164602) b!307696))

(assert (= (and b!307696 res!164605) b!307694))

(assert (= (and b!307694 res!164603) b!307695))

(assert (= (and b!307695 res!164608) b!307691))

(assert (= (and b!307691 res!164606) b!307693))

(assert (= (and b!307693 res!164610) b!307697))

(assert (= (and b!307697 res!164604) b!307690))

(assert (= (and b!307690 res!164601) b!307698))

(assert (= (and b!307698 res!164607) b!307692))

(declare-fun m!317953 () Bool)

(assert (=> b!307697 m!317953))

(declare-fun m!317955 () Bool)

(assert (=> b!307696 m!317955))

(declare-fun m!317957 () Bool)

(assert (=> b!307693 m!317957))

(assert (=> b!307693 m!317957))

(declare-fun m!317959 () Bool)

(assert (=> b!307693 m!317959))

(declare-fun m!317961 () Bool)

(assert (=> b!307695 m!317961))

(declare-fun m!317963 () Bool)

(assert (=> b!307691 m!317963))

(declare-fun m!317965 () Bool)

(assert (=> b!307698 m!317965))

(declare-fun m!317967 () Bool)

(assert (=> b!307694 m!317967))

(declare-fun m!317969 () Bool)

(assert (=> b!307690 m!317969))

(declare-fun m!317971 () Bool)

(assert (=> start!30674 m!317971))

(declare-fun m!317973 () Bool)

(assert (=> start!30674 m!317973))

(declare-fun m!317975 () Bool)

(assert (=> b!307692 m!317975))

(check-sat (not b!307694) (not b!307695) (not b!307690) (not b!307693) (not b!307691) (not b!307696) (not start!30674) (not b!307692))
(check-sat)
