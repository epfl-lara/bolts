; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30896 () Bool)

(assert start!30896)

(declare-fun b!309727 () Bool)

(declare-fun e!193460 () Bool)

(declare-fun e!193459 () Bool)

(assert (=> b!309727 (= e!193460 e!193459)))

(declare-fun res!166342 () Bool)

(assert (=> b!309727 (=> (not res!166342) (not e!193459))))

(declare-datatypes ((array!15796 0))(
  ( (array!15797 (arr!7478 (Array (_ BitVec 32) (_ BitVec 64))) (size!7830 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15796)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2629 0))(
  ( (MissingZero!2629 (index!12692 (_ BitVec 32))) (Found!2629 (index!12693 (_ BitVec 32))) (Intermediate!2629 (undefined!3441 Bool) (index!12694 (_ BitVec 32)) (x!30893 (_ BitVec 32))) (Undefined!2629) (MissingVacant!2629 (index!12695 (_ BitVec 32))) )
))
(declare-fun lt!151730 () SeekEntryResult!2629)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15796 (_ BitVec 32)) SeekEntryResult!2629)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309727 (= res!166342 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151730))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309727 (= lt!151730 (Intermediate!2629 false resIndex!52 resX!52))))

(declare-fun b!309728 () Bool)

(declare-fun e!193461 () Bool)

(assert (=> b!309728 (= e!193459 e!193461)))

(declare-fun res!166341 () Bool)

(assert (=> b!309728 (=> (not res!166341) (not e!193461))))

(declare-fun lt!151728 () SeekEntryResult!2629)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309728 (= res!166341 (and (= lt!151728 lt!151730) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7478 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309728 (= lt!151728 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun lt!151729 () (_ BitVec 32))

(declare-fun b!309729 () Bool)

(assert (=> b!309729 (= e!193461 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt lt!151729 #b00000000000000000000000000000000) (bvsge lt!151729 (bvadd #b00000000000000000000000000000001 mask!3709)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000)))))))

(assert (=> b!309729 (= lt!151728 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151729 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309729 (= lt!151729 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!309731 () Bool)

(declare-fun res!166343 () Bool)

(assert (=> b!309731 (=> (not res!166343) (not e!193460))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15796 (_ BitVec 32)) SeekEntryResult!2629)

(assert (=> b!309731 (= res!166343 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2629 i!1240)))))

(declare-fun b!309732 () Bool)

(declare-fun res!166344 () Bool)

(assert (=> b!309732 (=> (not res!166344) (not e!193460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15796 (_ BitVec 32)) Bool)

(assert (=> b!309732 (= res!166344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309733 () Bool)

(declare-fun res!166340 () Bool)

(assert (=> b!309733 (=> (not res!166340) (not e!193460))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309733 (= res!166340 (validKeyInArray!0 k0!2441))))

(declare-fun b!309734 () Bool)

(declare-fun res!166345 () Bool)

(assert (=> b!309734 (=> (not res!166345) (not e!193460))))

(declare-fun arrayContainsKey!0 (array!15796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309734 (= res!166345 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309735 () Bool)

(declare-fun res!166346 () Bool)

(assert (=> b!309735 (=> (not res!166346) (not e!193459))))

(assert (=> b!309735 (= res!166346 (and (= (select (arr!7478 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7830 a!3293))))))

(declare-fun res!166339 () Bool)

(assert (=> start!30896 (=> (not res!166339) (not e!193460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30896 (= res!166339 (validMask!0 mask!3709))))

(assert (=> start!30896 e!193460))

(declare-fun array_inv!5432 (array!15796) Bool)

(assert (=> start!30896 (array_inv!5432 a!3293)))

(assert (=> start!30896 true))

(declare-fun b!309730 () Bool)

(declare-fun res!166347 () Bool)

(assert (=> b!309730 (=> (not res!166347) (not e!193460))))

(assert (=> b!309730 (= res!166347 (and (= (size!7830 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7830 a!3293))))))

(assert (= (and start!30896 res!166339) b!309730))

(assert (= (and b!309730 res!166347) b!309733))

(assert (= (and b!309733 res!166340) b!309734))

(assert (= (and b!309734 res!166345) b!309731))

(assert (= (and b!309731 res!166343) b!309732))

(assert (= (and b!309732 res!166344) b!309727))

(assert (= (and b!309727 res!166342) b!309735))

(assert (= (and b!309735 res!166346) b!309728))

(assert (= (and b!309728 res!166341) b!309729))

(declare-fun m!319659 () Bool)

(assert (=> b!309731 m!319659))

(declare-fun m!319661 () Bool)

(assert (=> b!309727 m!319661))

(assert (=> b!309727 m!319661))

(declare-fun m!319663 () Bool)

(assert (=> b!309727 m!319663))

(declare-fun m!319665 () Bool)

(assert (=> b!309728 m!319665))

(declare-fun m!319667 () Bool)

(assert (=> b!309728 m!319667))

(declare-fun m!319669 () Bool)

(assert (=> start!30896 m!319669))

(declare-fun m!319671 () Bool)

(assert (=> start!30896 m!319671))

(declare-fun m!319673 () Bool)

(assert (=> b!309732 m!319673))

(declare-fun m!319675 () Bool)

(assert (=> b!309734 m!319675))

(declare-fun m!319677 () Bool)

(assert (=> b!309735 m!319677))

(declare-fun m!319679 () Bool)

(assert (=> b!309729 m!319679))

(declare-fun m!319681 () Bool)

(assert (=> b!309729 m!319681))

(declare-fun m!319683 () Bool)

(assert (=> b!309733 m!319683))

(check-sat (not b!309734) (not b!309732) (not b!309731) (not b!309729) (not b!309727) (not b!309728) (not start!30896) (not b!309733))
(check-sat)
