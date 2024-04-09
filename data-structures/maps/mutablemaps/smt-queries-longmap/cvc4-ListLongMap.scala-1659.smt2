; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30796 () Bool)

(assert start!30796)

(declare-fun b!308863 () Bool)

(declare-fun e!193038 () Bool)

(declare-fun e!193039 () Bool)

(assert (=> b!308863 (= e!193038 e!193039)))

(declare-fun res!165642 () Bool)

(assert (=> b!308863 (=> (not res!165642) (not e!193039))))

(declare-datatypes ((array!15747 0))(
  ( (array!15748 (arr!7455 (Array (_ BitVec 32) (_ BitVec 64))) (size!7807 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15747)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2606 0))(
  ( (MissingZero!2606 (index!12600 (_ BitVec 32))) (Found!2606 (index!12601 (_ BitVec 32))) (Intermediate!2606 (undefined!3418 Bool) (index!12602 (_ BitVec 32)) (x!30797 (_ BitVec 32))) (Undefined!2606) (MissingVacant!2606 (index!12603 (_ BitVec 32))) )
))
(declare-fun lt!151465 () SeekEntryResult!2606)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15747 (_ BitVec 32)) SeekEntryResult!2606)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308863 (= res!165642 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151465))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!308863 (= lt!151465 (Intermediate!2606 false resIndex!52 resX!52))))

(declare-fun b!308864 () Bool)

(declare-fun e!193036 () Bool)

(assert (=> b!308864 (= e!193039 e!193036)))

(declare-fun res!165634 () Bool)

(assert (=> b!308864 (=> (not res!165634) (not e!193036))))

(declare-fun lt!151466 () SeekEntryResult!2606)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308864 (= res!165634 (and (= lt!151466 lt!151465) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7455 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308864 (= lt!151466 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!165639 () Bool)

(assert (=> start!30796 (=> (not res!165639) (not e!193038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30796 (= res!165639 (validMask!0 mask!3709))))

(assert (=> start!30796 e!193038))

(declare-fun array_inv!5409 (array!15747) Bool)

(assert (=> start!30796 (array_inv!5409 a!3293)))

(assert (=> start!30796 true))

(declare-fun b!308865 () Bool)

(declare-fun res!165636 () Bool)

(assert (=> b!308865 (=> (not res!165636) (not e!193038))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!308865 (= res!165636 (and (= (size!7807 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7807 a!3293))))))

(declare-fun b!308866 () Bool)

(declare-fun res!165635 () Bool)

(assert (=> b!308866 (=> (not res!165635) (not e!193038))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308866 (= res!165635 (validKeyInArray!0 k!2441))))

(declare-fun b!308867 () Bool)

(declare-fun res!165640 () Bool)

(assert (=> b!308867 (=> (not res!165640) (not e!193038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15747 (_ BitVec 32)) Bool)

(assert (=> b!308867 (= res!165640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308868 () Bool)

(declare-fun res!165637 () Bool)

(assert (=> b!308868 (=> (not res!165637) (not e!193038))))

(declare-fun arrayContainsKey!0 (array!15747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308868 (= res!165637 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308869 () Bool)

(declare-fun res!165641 () Bool)

(assert (=> b!308869 (=> (not res!165641) (not e!193038))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15747 (_ BitVec 32)) SeekEntryResult!2606)

(assert (=> b!308869 (= res!165641 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2606 i!1240)))))

(declare-fun b!308870 () Bool)

(declare-fun res!165638 () Bool)

(assert (=> b!308870 (=> (not res!165638) (not e!193039))))

(assert (=> b!308870 (= res!165638 (and (= (select (arr!7455 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7807 a!3293))))))

(declare-fun b!308871 () Bool)

(assert (=> b!308871 (= e!193036 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308871 (= lt!151466 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(assert (= (and start!30796 res!165639) b!308865))

(assert (= (and b!308865 res!165636) b!308866))

(assert (= (and b!308866 res!165635) b!308868))

(assert (= (and b!308868 res!165637) b!308869))

(assert (= (and b!308869 res!165641) b!308867))

(assert (= (and b!308867 res!165640) b!308863))

(assert (= (and b!308863 res!165642) b!308870))

(assert (= (and b!308870 res!165638) b!308864))

(assert (= (and b!308864 res!165634) b!308871))

(declare-fun m!318923 () Bool)

(assert (=> b!308864 m!318923))

(declare-fun m!318925 () Bool)

(assert (=> b!308864 m!318925))

(declare-fun m!318927 () Bool)

(assert (=> b!308863 m!318927))

(assert (=> b!308863 m!318927))

(declare-fun m!318929 () Bool)

(assert (=> b!308863 m!318929))

(declare-fun m!318931 () Bool)

(assert (=> b!308866 m!318931))

(declare-fun m!318933 () Bool)

(assert (=> b!308870 m!318933))

(declare-fun m!318935 () Bool)

(assert (=> b!308867 m!318935))

(declare-fun m!318937 () Bool)

(assert (=> start!30796 m!318937))

(declare-fun m!318939 () Bool)

(assert (=> start!30796 m!318939))

(declare-fun m!318941 () Bool)

(assert (=> b!308868 m!318941))

(declare-fun m!318943 () Bool)

(assert (=> b!308871 m!318943))

(assert (=> b!308871 m!318943))

(declare-fun m!318945 () Bool)

(assert (=> b!308871 m!318945))

(declare-fun m!318947 () Bool)

(assert (=> b!308869 m!318947))

(push 1)

(assert (not b!308869))

(assert (not b!308871))

(assert (not b!308866))

(assert (not start!30796))

(assert (not b!308867))

(assert (not b!308863))

(assert (not b!308864))

