; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30804 () Bool)

(assert start!30804)

(declare-fun b!308971 () Bool)

(declare-fun res!165744 () Bool)

(declare-fun e!193084 () Bool)

(assert (=> b!308971 (=> (not res!165744) (not e!193084))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((array!15755 0))(
  ( (array!15756 (arr!7459 (Array (_ BitVec 32) (_ BitVec 64))) (size!7811 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15755)

(assert (=> b!308971 (= res!165744 (and (= (select (arr!7459 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7811 a!3293))))))

(declare-fun b!308972 () Bool)

(declare-fun res!165746 () Bool)

(declare-fun e!193086 () Bool)

(assert (=> b!308972 (=> (not res!165746) (not e!193086))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15755 (_ BitVec 32)) Bool)

(assert (=> b!308972 (= res!165746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308973 () Bool)

(declare-fun e!193085 () Bool)

(assert (=> b!308973 (= e!193085 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-datatypes ((SeekEntryResult!2610 0))(
  ( (MissingZero!2610 (index!12616 (_ BitVec 32))) (Found!2610 (index!12617 (_ BitVec 32))) (Intermediate!2610 (undefined!3422 Bool) (index!12618 (_ BitVec 32)) (x!30817 (_ BitVec 32))) (Undefined!2610) (MissingVacant!2610 (index!12619 (_ BitVec 32))) )
))
(declare-fun lt!151489 () SeekEntryResult!2610)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15755 (_ BitVec 32)) SeekEntryResult!2610)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308973 (= lt!151489 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308974 () Bool)

(declare-fun res!165742 () Bool)

(assert (=> b!308974 (=> (not res!165742) (not e!193086))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15755 (_ BitVec 32)) SeekEntryResult!2610)

(assert (=> b!308974 (= res!165742 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2610 i!1240)))))

(declare-fun b!308975 () Bool)

(declare-fun res!165747 () Bool)

(assert (=> b!308975 (=> (not res!165747) (not e!193086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308975 (= res!165747 (validKeyInArray!0 k!2441))))

(declare-fun b!308976 () Bool)

(declare-fun res!165748 () Bool)

(assert (=> b!308976 (=> (not res!165748) (not e!193086))))

(declare-fun arrayContainsKey!0 (array!15755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308976 (= res!165748 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308977 () Bool)

(declare-fun res!165743 () Bool)

(assert (=> b!308977 (=> (not res!165743) (not e!193086))))

(assert (=> b!308977 (= res!165743 (and (= (size!7811 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7811 a!3293))))))

(declare-fun b!308979 () Bool)

(assert (=> b!308979 (= e!193084 e!193085)))

(declare-fun res!165745 () Bool)

(assert (=> b!308979 (=> (not res!165745) (not e!193085))))

(declare-fun lt!151490 () SeekEntryResult!2610)

(assert (=> b!308979 (= res!165745 (and (= lt!151489 lt!151490) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7459 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308979 (= lt!151489 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!165749 () Bool)

(assert (=> start!30804 (=> (not res!165749) (not e!193086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30804 (= res!165749 (validMask!0 mask!3709))))

(assert (=> start!30804 e!193086))

(declare-fun array_inv!5413 (array!15755) Bool)

(assert (=> start!30804 (array_inv!5413 a!3293)))

(assert (=> start!30804 true))

(declare-fun b!308978 () Bool)

(assert (=> b!308978 (= e!193086 e!193084)))

(declare-fun res!165750 () Bool)

(assert (=> b!308978 (=> (not res!165750) (not e!193084))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308978 (= res!165750 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151490))))

(assert (=> b!308978 (= lt!151490 (Intermediate!2610 false resIndex!52 resX!52))))

(assert (= (and start!30804 res!165749) b!308977))

(assert (= (and b!308977 res!165743) b!308975))

(assert (= (and b!308975 res!165747) b!308976))

(assert (= (and b!308976 res!165748) b!308974))

(assert (= (and b!308974 res!165742) b!308972))

(assert (= (and b!308972 res!165746) b!308978))

(assert (= (and b!308978 res!165750) b!308971))

(assert (= (and b!308971 res!165744) b!308979))

(assert (= (and b!308979 res!165745) b!308973))

(declare-fun m!319027 () Bool)

(assert (=> start!30804 m!319027))

(declare-fun m!319029 () Bool)

(assert (=> start!30804 m!319029))

(declare-fun m!319031 () Bool)

(assert (=> b!308978 m!319031))

(assert (=> b!308978 m!319031))

(declare-fun m!319033 () Bool)

(assert (=> b!308978 m!319033))

(declare-fun m!319035 () Bool)

(assert (=> b!308975 m!319035))

(declare-fun m!319037 () Bool)

(assert (=> b!308979 m!319037))

(declare-fun m!319039 () Bool)

(assert (=> b!308979 m!319039))

(declare-fun m!319041 () Bool)

(assert (=> b!308976 m!319041))

(declare-fun m!319043 () Bool)

(assert (=> b!308974 m!319043))

(declare-fun m!319045 () Bool)

(assert (=> b!308971 m!319045))

(declare-fun m!319047 () Bool)

(assert (=> b!308973 m!319047))

(assert (=> b!308973 m!319047))

(declare-fun m!319049 () Bool)

(assert (=> b!308973 m!319049))

(declare-fun m!319051 () Bool)

(assert (=> b!308972 m!319051))

(push 1)

(assert (not b!308976))

(assert (not b!308979))

(assert (not b!308978))

(assert (not b!308974))

(assert (not b!308973))

(assert (not b!308975))

(assert (not start!30804))

(assert (not b!308972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

