; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30792 () Bool)

(assert start!30792)

(declare-fun b!308809 () Bool)

(declare-fun res!165585 () Bool)

(declare-fun e!193014 () Bool)

(assert (=> b!308809 (=> (not res!165585) (not e!193014))))

(declare-datatypes ((array!15743 0))(
  ( (array!15744 (arr!7453 (Array (_ BitVec 32) (_ BitVec 64))) (size!7805 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15743)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!308809 (= res!165585 (and (= (size!7805 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7805 a!3293))))))

(declare-fun res!165582 () Bool)

(assert (=> start!30792 (=> (not res!165582) (not e!193014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30792 (= res!165582 (validMask!0 mask!3709))))

(assert (=> start!30792 e!193014))

(declare-fun array_inv!5407 (array!15743) Bool)

(assert (=> start!30792 (array_inv!5407 a!3293)))

(assert (=> start!30792 true))

(declare-fun b!308810 () Bool)

(declare-fun res!165587 () Bool)

(assert (=> b!308810 (=> (not res!165587) (not e!193014))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308810 (= res!165587 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308811 () Bool)

(declare-fun res!165586 () Bool)

(assert (=> b!308811 (=> (not res!165586) (not e!193014))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308811 (= res!165586 (validKeyInArray!0 k!2441))))

(declare-fun b!308812 () Bool)

(declare-fun res!165584 () Bool)

(assert (=> b!308812 (=> (not res!165584) (not e!193014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15743 (_ BitVec 32)) Bool)

(assert (=> b!308812 (= res!165584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308813 () Bool)

(declare-fun e!193012 () Bool)

(assert (=> b!308813 (= e!193014 e!193012)))

(declare-fun res!165580 () Bool)

(assert (=> b!308813 (=> (not res!165580) (not e!193012))))

(declare-datatypes ((SeekEntryResult!2604 0))(
  ( (MissingZero!2604 (index!12592 (_ BitVec 32))) (Found!2604 (index!12593 (_ BitVec 32))) (Intermediate!2604 (undefined!3416 Bool) (index!12594 (_ BitVec 32)) (x!30795 (_ BitVec 32))) (Undefined!2604) (MissingVacant!2604 (index!12595 (_ BitVec 32))) )
))
(declare-fun lt!151453 () SeekEntryResult!2604)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15743 (_ BitVec 32)) SeekEntryResult!2604)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308813 (= res!165580 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151453))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!308813 (= lt!151453 (Intermediate!2604 false resIndex!52 resX!52))))

(declare-fun b!308814 () Bool)

(declare-fun res!165581 () Bool)

(assert (=> b!308814 (=> (not res!165581) (not e!193012))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308814 (= res!165581 (and (= (select (arr!7453 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7805 a!3293))))))

(declare-fun b!308815 () Bool)

(declare-fun e!193013 () Bool)

(assert (=> b!308815 (= e!193012 e!193013)))

(declare-fun res!165588 () Bool)

(assert (=> b!308815 (=> (not res!165588) (not e!193013))))

(declare-fun lt!151454 () SeekEntryResult!2604)

(assert (=> b!308815 (= res!165588 (and (= lt!151454 lt!151453) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7453 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308815 (= lt!151454 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!308816 () Bool)

(assert (=> b!308816 (= e!193013 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308816 (= lt!151454 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308817 () Bool)

(declare-fun res!165583 () Bool)

(assert (=> b!308817 (=> (not res!165583) (not e!193014))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15743 (_ BitVec 32)) SeekEntryResult!2604)

(assert (=> b!308817 (= res!165583 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2604 i!1240)))))

(assert (= (and start!30792 res!165582) b!308809))

(assert (= (and b!308809 res!165585) b!308811))

(assert (= (and b!308811 res!165586) b!308810))

(assert (= (and b!308810 res!165587) b!308817))

(assert (= (and b!308817 res!165583) b!308812))

(assert (= (and b!308812 res!165584) b!308813))

(assert (= (and b!308813 res!165580) b!308814))

(assert (= (and b!308814 res!165581) b!308815))

(assert (= (and b!308815 res!165588) b!308816))

(declare-fun m!318871 () Bool)

(assert (=> b!308814 m!318871))

(declare-fun m!318873 () Bool)

(assert (=> b!308815 m!318873))

(declare-fun m!318875 () Bool)

(assert (=> b!308815 m!318875))

(declare-fun m!318877 () Bool)

(assert (=> b!308811 m!318877))

(declare-fun m!318879 () Bool)

(assert (=> b!308813 m!318879))

(assert (=> b!308813 m!318879))

(declare-fun m!318881 () Bool)

(assert (=> b!308813 m!318881))

(declare-fun m!318883 () Bool)

(assert (=> b!308812 m!318883))

(declare-fun m!318885 () Bool)

(assert (=> start!30792 m!318885))

(declare-fun m!318887 () Bool)

(assert (=> start!30792 m!318887))

(declare-fun m!318889 () Bool)

(assert (=> b!308817 m!318889))

(declare-fun m!318891 () Bool)

(assert (=> b!308810 m!318891))

(declare-fun m!318893 () Bool)

(assert (=> b!308816 m!318893))

(assert (=> b!308816 m!318893))

(declare-fun m!318895 () Bool)

(assert (=> b!308816 m!318895))

(push 1)

