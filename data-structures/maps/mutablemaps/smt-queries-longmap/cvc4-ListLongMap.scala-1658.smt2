; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30790 () Bool)

(assert start!30790)

(declare-fun b!308782 () Bool)

(declare-fun e!193002 () Bool)

(declare-fun e!193003 () Bool)

(assert (=> b!308782 (= e!193002 e!193003)))

(declare-fun res!165561 () Bool)

(assert (=> b!308782 (=> (not res!165561) (not e!193003))))

(declare-datatypes ((SeekEntryResult!2603 0))(
  ( (MissingZero!2603 (index!12588 (_ BitVec 32))) (Found!2603 (index!12589 (_ BitVec 32))) (Intermediate!2603 (undefined!3415 Bool) (index!12590 (_ BitVec 32)) (x!30786 (_ BitVec 32))) (Undefined!2603) (MissingVacant!2603 (index!12591 (_ BitVec 32))) )
))
(declare-fun lt!151448 () SeekEntryResult!2603)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((array!15741 0))(
  ( (array!15742 (arr!7452 (Array (_ BitVec 32) (_ BitVec 64))) (size!7804 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15741)

(declare-fun lt!151447 () SeekEntryResult!2603)

(assert (=> b!308782 (= res!165561 (and (= lt!151448 lt!151447) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7452 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15741 (_ BitVec 32)) SeekEntryResult!2603)

(assert (=> b!308782 (= lt!151448 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!308783 () Bool)

(declare-fun res!165558 () Bool)

(declare-fun e!193001 () Bool)

(assert (=> b!308783 (=> (not res!165558) (not e!193001))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15741 (_ BitVec 32)) SeekEntryResult!2603)

(assert (=> b!308783 (= res!165558 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2603 i!1240)))))

(declare-fun b!308784 () Bool)

(declare-fun res!165553 () Bool)

(assert (=> b!308784 (=> (not res!165553) (not e!193001))))

(declare-fun arrayContainsKey!0 (array!15741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308784 (= res!165553 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308785 () Bool)

(assert (=> b!308785 (= e!193003 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308785 (= lt!151448 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308786 () Bool)

(declare-fun res!165555 () Bool)

(assert (=> b!308786 (=> (not res!165555) (not e!193001))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15741 (_ BitVec 32)) Bool)

(assert (=> b!308786 (= res!165555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!165557 () Bool)

(assert (=> start!30790 (=> (not res!165557) (not e!193001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30790 (= res!165557 (validMask!0 mask!3709))))

(assert (=> start!30790 e!193001))

(declare-fun array_inv!5406 (array!15741) Bool)

(assert (=> start!30790 (array_inv!5406 a!3293)))

(assert (=> start!30790 true))

(declare-fun b!308787 () Bool)

(declare-fun res!165559 () Bool)

(assert (=> b!308787 (=> (not res!165559) (not e!193002))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!308787 (= res!165559 (and (= (select (arr!7452 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7804 a!3293))))))

(declare-fun b!308788 () Bool)

(assert (=> b!308788 (= e!193001 e!193002)))

(declare-fun res!165556 () Bool)

(assert (=> b!308788 (=> (not res!165556) (not e!193002))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308788 (= res!165556 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151447))))

(assert (=> b!308788 (= lt!151447 (Intermediate!2603 false resIndex!52 resX!52))))

(declare-fun b!308789 () Bool)

(declare-fun res!165554 () Bool)

(assert (=> b!308789 (=> (not res!165554) (not e!193001))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308789 (= res!165554 (validKeyInArray!0 k!2441))))

(declare-fun b!308790 () Bool)

(declare-fun res!165560 () Bool)

(assert (=> b!308790 (=> (not res!165560) (not e!193001))))

(assert (=> b!308790 (= res!165560 (and (= (size!7804 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7804 a!3293))))))

(assert (= (and start!30790 res!165557) b!308790))

(assert (= (and b!308790 res!165560) b!308789))

(assert (= (and b!308789 res!165554) b!308784))

(assert (= (and b!308784 res!165553) b!308783))

(assert (= (and b!308783 res!165558) b!308786))

(assert (= (and b!308786 res!165555) b!308788))

(assert (= (and b!308788 res!165556) b!308787))

(assert (= (and b!308787 res!165559) b!308782))

(assert (= (and b!308782 res!165561) b!308785))

(declare-fun m!318845 () Bool)

(assert (=> b!308783 m!318845))

(declare-fun m!318847 () Bool)

(assert (=> b!308782 m!318847))

(declare-fun m!318849 () Bool)

(assert (=> b!308782 m!318849))

(declare-fun m!318851 () Bool)

(assert (=> b!308789 m!318851))

(declare-fun m!318853 () Bool)

(assert (=> b!308785 m!318853))

(assert (=> b!308785 m!318853))

(declare-fun m!318855 () Bool)

(assert (=> b!308785 m!318855))

(declare-fun m!318857 () Bool)

(assert (=> start!30790 m!318857))

(declare-fun m!318859 () Bool)

(assert (=> start!30790 m!318859))

(declare-fun m!318861 () Bool)

(assert (=> b!308784 m!318861))

(declare-fun m!318863 () Bool)

(assert (=> b!308787 m!318863))

(declare-fun m!318865 () Bool)

(assert (=> b!308788 m!318865))

(assert (=> b!308788 m!318865))

(declare-fun m!318867 () Bool)

(assert (=> b!308788 m!318867))

(declare-fun m!318869 () Bool)

(assert (=> b!308786 m!318869))

(push 1)

(assert (not b!308785))

(assert (not b!308783))

(assert (not b!308784))

(assert (not b!308789))

(assert (not b!308786))

(assert (not b!308788))

