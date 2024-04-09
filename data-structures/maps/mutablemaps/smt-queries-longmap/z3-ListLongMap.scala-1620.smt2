; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30452 () Bool)

(assert start!30452)

(declare-fun b!304660 () Bool)

(declare-fun res!162169 () Bool)

(declare-fun e!191413 () Bool)

(assert (=> b!304660 (=> (not res!162169) (not e!191413))))

(declare-datatypes ((array!15505 0))(
  ( (array!15506 (arr!7337 (Array (_ BitVec 32) (_ BitVec 64))) (size!7689 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15505)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15505 (_ BitVec 32)) Bool)

(assert (=> b!304660 (= res!162169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304661 () Bool)

(declare-fun res!162168 () Bool)

(assert (=> b!304661 (=> (not res!162168) (not e!191413))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15505 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304661 (= res!162168 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304662 () Bool)

(declare-fun e!191416 () Bool)

(assert (=> b!304662 (= e!191413 e!191416)))

(declare-fun res!162165 () Bool)

(assert (=> b!304662 (=> (not res!162165) (not e!191416))))

(declare-datatypes ((SeekEntryResult!2488 0))(
  ( (MissingZero!2488 (index!12128 (_ BitVec 32))) (Found!2488 (index!12129 (_ BitVec 32))) (Intermediate!2488 (undefined!3300 Bool) (index!12130 (_ BitVec 32)) (x!30349 (_ BitVec 32))) (Undefined!2488) (MissingVacant!2488 (index!12131 (_ BitVec 32))) )
))
(declare-fun lt!150505 () SeekEntryResult!2488)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15505 (_ BitVec 32)) SeekEntryResult!2488)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304662 (= res!162165 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150505))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304662 (= lt!150505 (Intermediate!2488 false resIndex!52 resX!52))))

(declare-fun b!304663 () Bool)

(declare-fun res!162163 () Bool)

(assert (=> b!304663 (=> (not res!162163) (not e!191413))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304663 (= res!162163 (and (= (size!7689 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7689 a!3293))))))

(declare-fun res!162170 () Bool)

(assert (=> start!30452 (=> (not res!162170) (not e!191413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30452 (= res!162170 (validMask!0 mask!3709))))

(assert (=> start!30452 e!191413))

(declare-fun array_inv!5291 (array!15505) Bool)

(assert (=> start!30452 (array_inv!5291 a!3293)))

(assert (=> start!30452 true))

(declare-fun b!304664 () Bool)

(declare-fun res!162171 () Bool)

(assert (=> b!304664 (=> (not res!162171) (not e!191413))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304664 (= res!162171 (validKeyInArray!0 k0!2441))))

(declare-fun b!304665 () Bool)

(declare-fun res!162167 () Bool)

(assert (=> b!304665 (=> (not res!162167) (not e!191413))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15505 (_ BitVec 32)) SeekEntryResult!2488)

(assert (=> b!304665 (= res!162167 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2488 i!1240)))))

(declare-fun b!304666 () Bool)

(declare-fun res!162164 () Bool)

(assert (=> b!304666 (=> (not res!162164) (not e!191416))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!304666 (= res!162164 (and (= (select (arr!7337 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7689 a!3293))))))

(declare-fun b!304667 () Bool)

(declare-fun e!191414 () Bool)

(assert (=> b!304667 (= e!191416 e!191414)))

(declare-fun res!162166 () Bool)

(assert (=> b!304667 (=> (not res!162166) (not e!191414))))

(declare-fun lt!150506 () SeekEntryResult!2488)

(assert (=> b!304667 (= res!162166 (and (= lt!150506 lt!150505) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7337 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7337 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7337 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304667 (= lt!150506 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!304668 () Bool)

(assert (=> b!304668 (= e!191414 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304668 (= lt!150506 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (= (and start!30452 res!162170) b!304663))

(assert (= (and b!304663 res!162163) b!304664))

(assert (= (and b!304664 res!162171) b!304661))

(assert (= (and b!304661 res!162168) b!304665))

(assert (= (and b!304665 res!162167) b!304660))

(assert (= (and b!304660 res!162169) b!304662))

(assert (= (and b!304662 res!162165) b!304666))

(assert (= (and b!304666 res!162164) b!304667))

(assert (= (and b!304667 res!162166) b!304668))

(declare-fun m!315783 () Bool)

(assert (=> b!304665 m!315783))

(declare-fun m!315785 () Bool)

(assert (=> b!304664 m!315785))

(declare-fun m!315787 () Bool)

(assert (=> b!304662 m!315787))

(assert (=> b!304662 m!315787))

(declare-fun m!315789 () Bool)

(assert (=> b!304662 m!315789))

(declare-fun m!315791 () Bool)

(assert (=> b!304661 m!315791))

(declare-fun m!315793 () Bool)

(assert (=> b!304666 m!315793))

(declare-fun m!315795 () Bool)

(assert (=> b!304667 m!315795))

(declare-fun m!315797 () Bool)

(assert (=> b!304667 m!315797))

(declare-fun m!315799 () Bool)

(assert (=> start!30452 m!315799))

(declare-fun m!315801 () Bool)

(assert (=> start!30452 m!315801))

(declare-fun m!315803 () Bool)

(assert (=> b!304660 m!315803))

(declare-fun m!315805 () Bool)

(assert (=> b!304668 m!315805))

(assert (=> b!304668 m!315805))

(declare-fun m!315807 () Bool)

(assert (=> b!304668 m!315807))

(check-sat (not b!304665) (not b!304668) (not b!304660) (not b!304664) (not b!304661) (not b!304667) (not start!30452) (not b!304662))
(check-sat)
