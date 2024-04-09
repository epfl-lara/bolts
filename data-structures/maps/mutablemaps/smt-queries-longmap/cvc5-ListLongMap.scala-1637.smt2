; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30606 () Bool)

(assert start!30606)

(declare-fun b!306791 () Bool)

(declare-fun res!163706 () Bool)

(declare-fun e!192265 () Bool)

(assert (=> b!306791 (=> (not res!163706) (not e!192265))))

(declare-datatypes ((array!15608 0))(
  ( (array!15609 (arr!7387 (Array (_ BitVec 32) (_ BitVec 64))) (size!7739 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15608)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2538 0))(
  ( (MissingZero!2538 (index!12328 (_ BitVec 32))) (Found!2538 (index!12329 (_ BitVec 32))) (Intermediate!2538 (undefined!3350 Bool) (index!12330 (_ BitVec 32)) (x!30544 (_ BitVec 32))) (Undefined!2538) (MissingVacant!2538 (index!12331 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15608 (_ BitVec 32)) SeekEntryResult!2538)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306791 (= res!163706 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2538 false resIndex!52 resX!52)))))

(declare-fun b!306792 () Bool)

(declare-fun res!163705 () Bool)

(assert (=> b!306792 (=> (not res!163705) (not e!192265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15608 (_ BitVec 32)) Bool)

(assert (=> b!306792 (= res!163705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306794 () Bool)

(declare-fun res!163704 () Bool)

(assert (=> b!306794 (=> (not res!163704) (not e!192265))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!306794 (= res!163704 (and (= (size!7739 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7739 a!3293))))))

(declare-fun b!306795 () Bool)

(declare-fun res!163707 () Bool)

(assert (=> b!306795 (=> (not res!163707) (not e!192265))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!306795 (= res!163707 (and (= (select (arr!7387 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7739 a!3293))))))

(declare-fun b!306796 () Bool)

(assert (=> b!306796 (= e!192265 false)))

(declare-fun lt!151040 () SeekEntryResult!2538)

(assert (=> b!306796 (= lt!151040 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!306797 () Bool)

(declare-fun res!163709 () Bool)

(assert (=> b!306797 (=> (not res!163709) (not e!192265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306797 (= res!163709 (validKeyInArray!0 k!2441))))

(declare-fun b!306798 () Bool)

(declare-fun res!163710 () Bool)

(assert (=> b!306798 (=> (not res!163710) (not e!192265))))

(declare-fun arrayContainsKey!0 (array!15608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306798 (= res!163710 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!163703 () Bool)

(assert (=> start!30606 (=> (not res!163703) (not e!192265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30606 (= res!163703 (validMask!0 mask!3709))))

(assert (=> start!30606 e!192265))

(declare-fun array_inv!5341 (array!15608) Bool)

(assert (=> start!30606 (array_inv!5341 a!3293)))

(assert (=> start!30606 true))

(declare-fun b!306793 () Bool)

(declare-fun res!163708 () Bool)

(assert (=> b!306793 (=> (not res!163708) (not e!192265))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15608 (_ BitVec 32)) SeekEntryResult!2538)

(assert (=> b!306793 (= res!163708 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2538 i!1240)))))

(assert (= (and start!30606 res!163703) b!306794))

(assert (= (and b!306794 res!163704) b!306797))

(assert (= (and b!306797 res!163709) b!306798))

(assert (= (and b!306798 res!163710) b!306793))

(assert (= (and b!306793 res!163708) b!306792))

(assert (= (and b!306792 res!163705) b!306791))

(assert (= (and b!306791 res!163706) b!306795))

(assert (= (and b!306795 res!163707) b!306796))

(declare-fun m!317221 () Bool)

(assert (=> b!306793 m!317221))

(declare-fun m!317223 () Bool)

(assert (=> start!30606 m!317223))

(declare-fun m!317225 () Bool)

(assert (=> start!30606 m!317225))

(declare-fun m!317227 () Bool)

(assert (=> b!306796 m!317227))

(declare-fun m!317229 () Bool)

(assert (=> b!306792 m!317229))

(declare-fun m!317231 () Bool)

(assert (=> b!306797 m!317231))

(declare-fun m!317233 () Bool)

(assert (=> b!306798 m!317233))

(declare-fun m!317235 () Bool)

(assert (=> b!306791 m!317235))

(assert (=> b!306791 m!317235))

(declare-fun m!317237 () Bool)

(assert (=> b!306791 m!317237))

(declare-fun m!317239 () Bool)

(assert (=> b!306795 m!317239))

(push 1)

(assert (not b!306796))

(assert (not b!306797))

(assert (not b!306791))

(assert (not start!30606))

(assert (not b!306793))

(assert (not b!306798))

(assert (not b!306792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

