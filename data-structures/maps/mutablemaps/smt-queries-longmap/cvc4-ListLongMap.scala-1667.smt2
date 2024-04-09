; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30898 () Bool)

(assert start!30898)

(declare-fun b!309754 () Bool)

(declare-fun e!193474 () Bool)

(declare-fun e!193472 () Bool)

(assert (=> b!309754 (= e!193474 e!193472)))

(declare-fun res!166371 () Bool)

(assert (=> b!309754 (=> (not res!166371) (not e!193472))))

(declare-datatypes ((array!15798 0))(
  ( (array!15799 (arr!7479 (Array (_ BitVec 32) (_ BitVec 64))) (size!7831 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15798)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2630 0))(
  ( (MissingZero!2630 (index!12696 (_ BitVec 32))) (Found!2630 (index!12697 (_ BitVec 32))) (Intermediate!2630 (undefined!3442 Bool) (index!12698 (_ BitVec 32)) (x!30894 (_ BitVec 32))) (Undefined!2630) (MissingVacant!2630 (index!12699 (_ BitVec 32))) )
))
(declare-fun lt!151738 () SeekEntryResult!2630)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15798 (_ BitVec 32)) SeekEntryResult!2630)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309754 (= res!166371 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151738))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309754 (= lt!151738 (Intermediate!2630 false resIndex!52 resX!52))))

(declare-fun b!309755 () Bool)

(declare-fun res!166372 () Bool)

(assert (=> b!309755 (=> (not res!166372) (not e!193472))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309755 (= res!166372 (and (= (select (arr!7479 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7831 a!3293))))))

(declare-fun res!166369 () Bool)

(assert (=> start!30898 (=> (not res!166369) (not e!193474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30898 (= res!166369 (validMask!0 mask!3709))))

(assert (=> start!30898 e!193474))

(declare-fun array_inv!5433 (array!15798) Bool)

(assert (=> start!30898 (array_inv!5433 a!3293)))

(assert (=> start!30898 true))

(declare-fun b!309756 () Bool)

(declare-fun e!193471 () Bool)

(assert (=> b!309756 (= e!193472 e!193471)))

(declare-fun res!166367 () Bool)

(assert (=> b!309756 (=> (not res!166367) (not e!193471))))

(declare-fun lt!151739 () SeekEntryResult!2630)

(assert (=> b!309756 (= res!166367 (and (= lt!151739 lt!151738) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7479 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309756 (= lt!151739 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309757 () Bool)

(declare-fun res!166374 () Bool)

(assert (=> b!309757 (=> (not res!166374) (not e!193474))))

(declare-fun arrayContainsKey!0 (array!15798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309757 (= res!166374 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309758 () Bool)

(declare-fun res!166368 () Bool)

(assert (=> b!309758 (=> (not res!166368) (not e!193474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309758 (= res!166368 (validKeyInArray!0 k!2441))))

(declare-fun b!309759 () Bool)

(declare-fun res!166370 () Bool)

(assert (=> b!309759 (=> (not res!166370) (not e!193474))))

(assert (=> b!309759 (= res!166370 (and (= (size!7831 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7831 a!3293))))))

(declare-fun b!309760 () Bool)

(declare-fun res!166373 () Bool)

(assert (=> b!309760 (=> (not res!166373) (not e!193474))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15798 (_ BitVec 32)) SeekEntryResult!2630)

(assert (=> b!309760 (= res!166373 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2630 i!1240)))))

(declare-fun b!309761 () Bool)

(declare-fun res!166366 () Bool)

(assert (=> b!309761 (=> (not res!166366) (not e!193474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15798 (_ BitVec 32)) Bool)

(assert (=> b!309761 (= res!166366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun lt!151737 () (_ BitVec 32))

(declare-fun b!309762 () Bool)

(assert (=> b!309762 (= e!193471 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt lt!151737 #b00000000000000000000000000000000) (bvsge lt!151737 (bvadd #b00000000000000000000000000000001 mask!3709)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000)))))))

(assert (=> b!309762 (= lt!151739 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151737 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309762 (= lt!151737 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!30898 res!166369) b!309759))

(assert (= (and b!309759 res!166370) b!309758))

(assert (= (and b!309758 res!166368) b!309757))

(assert (= (and b!309757 res!166374) b!309760))

(assert (= (and b!309760 res!166373) b!309761))

(assert (= (and b!309761 res!166366) b!309754))

(assert (= (and b!309754 res!166371) b!309755))

(assert (= (and b!309755 res!166372) b!309756))

(assert (= (and b!309756 res!166367) b!309762))

(declare-fun m!319685 () Bool)

(assert (=> b!309754 m!319685))

(assert (=> b!309754 m!319685))

(declare-fun m!319687 () Bool)

(assert (=> b!309754 m!319687))

(declare-fun m!319689 () Bool)

(assert (=> b!309755 m!319689))

(declare-fun m!319691 () Bool)

(assert (=> b!309757 m!319691))

(declare-fun m!319693 () Bool)

(assert (=> b!309762 m!319693))

(declare-fun m!319695 () Bool)

(assert (=> b!309762 m!319695))

(declare-fun m!319697 () Bool)

(assert (=> start!30898 m!319697))

(declare-fun m!319699 () Bool)

(assert (=> start!30898 m!319699))

(declare-fun m!319701 () Bool)

(assert (=> b!309758 m!319701))

(declare-fun m!319703 () Bool)

(assert (=> b!309761 m!319703))

(declare-fun m!319705 () Bool)

(assert (=> b!309760 m!319705))

(declare-fun m!319707 () Bool)

(assert (=> b!309756 m!319707))

(declare-fun m!319709 () Bool)

(assert (=> b!309756 m!319709))

(push 1)

(assert (not b!309760))

(assert (not b!309758))

(assert (not start!30898))

(assert (not b!309761))

(assert (not b!309756))

(assert (not b!309754))

(assert (not b!309762))

(assert (not b!309757))

(check-sat)

(pop 1)

(push 1)

(check-sat)

