; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30784 () Bool)

(assert start!30784)

(declare-fun b!308701 () Bool)

(declare-fun e!192965 () Bool)

(declare-fun e!192966 () Bool)

(assert (=> b!308701 (= e!192965 e!192966)))

(declare-fun res!165478 () Bool)

(assert (=> b!308701 (=> (not res!165478) (not e!192966))))

(declare-datatypes ((array!15735 0))(
  ( (array!15736 (arr!7449 (Array (_ BitVec 32) (_ BitVec 64))) (size!7801 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15735)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2600 0))(
  ( (MissingZero!2600 (index!12576 (_ BitVec 32))) (Found!2600 (index!12577 (_ BitVec 32))) (Intermediate!2600 (undefined!3412 Bool) (index!12578 (_ BitVec 32)) (x!30775 (_ BitVec 32))) (Undefined!2600) (MissingVacant!2600 (index!12579 (_ BitVec 32))) )
))
(declare-fun lt!151429 () SeekEntryResult!2600)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15735 (_ BitVec 32)) SeekEntryResult!2600)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308701 (= res!165478 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151429))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!308701 (= lt!151429 (Intermediate!2600 false resIndex!52 resX!52))))

(declare-fun b!308702 () Bool)

(declare-fun res!165476 () Bool)

(assert (=> b!308702 (=> (not res!165476) (not e!192965))))

(declare-fun arrayContainsKey!0 (array!15735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308702 (= res!165476 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!165472 () Bool)

(assert (=> start!30784 (=> (not res!165472) (not e!192965))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30784 (= res!165472 (validMask!0 mask!3709))))

(assert (=> start!30784 e!192965))

(declare-fun array_inv!5403 (array!15735) Bool)

(assert (=> start!30784 (array_inv!5403 a!3293)))

(assert (=> start!30784 true))

(declare-fun b!308703 () Bool)

(declare-fun res!165480 () Bool)

(assert (=> b!308703 (=> (not res!165480) (not e!192965))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308703 (= res!165480 (validKeyInArray!0 k!2441))))

(declare-fun b!308704 () Bool)

(declare-fun res!165477 () Bool)

(assert (=> b!308704 (=> (not res!165477) (not e!192965))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15735 (_ BitVec 32)) SeekEntryResult!2600)

(assert (=> b!308704 (= res!165477 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2600 i!1240)))))

(declare-fun e!192967 () Bool)

(declare-fun b!308705 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308705 (= e!192967 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun lt!151430 () SeekEntryResult!2600)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308705 (= lt!151430 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308706 () Bool)

(declare-fun res!165473 () Bool)

(assert (=> b!308706 (=> (not res!165473) (not e!192965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15735 (_ BitVec 32)) Bool)

(assert (=> b!308706 (= res!165473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308707 () Bool)

(assert (=> b!308707 (= e!192966 e!192967)))

(declare-fun res!165475 () Bool)

(assert (=> b!308707 (=> (not res!165475) (not e!192967))))

(assert (=> b!308707 (= res!165475 (and (= lt!151430 lt!151429) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7449 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308707 (= lt!151430 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!308708 () Bool)

(declare-fun res!165474 () Bool)

(assert (=> b!308708 (=> (not res!165474) (not e!192966))))

(assert (=> b!308708 (= res!165474 (and (= (select (arr!7449 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7801 a!3293))))))

(declare-fun b!308709 () Bool)

(declare-fun res!165479 () Bool)

(assert (=> b!308709 (=> (not res!165479) (not e!192965))))

(assert (=> b!308709 (= res!165479 (and (= (size!7801 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7801 a!3293))))))

(assert (= (and start!30784 res!165472) b!308709))

(assert (= (and b!308709 res!165479) b!308703))

(assert (= (and b!308703 res!165480) b!308702))

(assert (= (and b!308702 res!165476) b!308704))

(assert (= (and b!308704 res!165477) b!308706))

(assert (= (and b!308706 res!165473) b!308701))

(assert (= (and b!308701 res!165478) b!308708))

(assert (= (and b!308708 res!165474) b!308707))

(assert (= (and b!308707 res!165475) b!308705))

(declare-fun m!318767 () Bool)

(assert (=> b!308706 m!318767))

(declare-fun m!318769 () Bool)

(assert (=> b!308708 m!318769))

(declare-fun m!318771 () Bool)

(assert (=> start!30784 m!318771))

(declare-fun m!318773 () Bool)

(assert (=> start!30784 m!318773))

(declare-fun m!318775 () Bool)

(assert (=> b!308704 m!318775))

(declare-fun m!318777 () Bool)

(assert (=> b!308707 m!318777))

(declare-fun m!318779 () Bool)

(assert (=> b!308707 m!318779))

(declare-fun m!318781 () Bool)

(assert (=> b!308701 m!318781))

(assert (=> b!308701 m!318781))

(declare-fun m!318783 () Bool)

(assert (=> b!308701 m!318783))

(declare-fun m!318785 () Bool)

(assert (=> b!308705 m!318785))

(assert (=> b!308705 m!318785))

(declare-fun m!318787 () Bool)

(assert (=> b!308705 m!318787))

(declare-fun m!318789 () Bool)

(assert (=> b!308703 m!318789))

(declare-fun m!318791 () Bool)

(assert (=> b!308702 m!318791))

(push 1)

(assert (not b!308702))

(assert (not b!308703))

(assert (not b!308701))

(assert (not b!308706))

(assert (not b!308707))

(assert (not b!308704))

(assert (not b!308705))

(assert (not start!30784))

