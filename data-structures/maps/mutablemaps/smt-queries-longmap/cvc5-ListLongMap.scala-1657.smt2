; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30780 () Bool)

(assert start!30780)

(declare-fun res!165423 () Bool)

(declare-fun e!192942 () Bool)

(assert (=> start!30780 (=> (not res!165423) (not e!192942))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30780 (= res!165423 (validMask!0 mask!3709))))

(assert (=> start!30780 e!192942))

(declare-datatypes ((array!15731 0))(
  ( (array!15732 (arr!7447 (Array (_ BitVec 32) (_ BitVec 64))) (size!7799 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15731)

(declare-fun array_inv!5401 (array!15731) Bool)

(assert (=> start!30780 (array_inv!5401 a!3293)))

(assert (=> start!30780 true))

(declare-fun b!308647 () Bool)

(declare-fun res!165422 () Bool)

(declare-fun e!192943 () Bool)

(assert (=> b!308647 (=> (not res!165422) (not e!192943))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308647 (= res!165422 (and (= (select (arr!7447 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7799 a!3293))))))

(declare-fun b!308648 () Bool)

(assert (=> b!308648 (= e!192942 e!192943)))

(declare-fun res!165425 () Bool)

(assert (=> b!308648 (=> (not res!165425) (not e!192943))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2598 0))(
  ( (MissingZero!2598 (index!12568 (_ BitVec 32))) (Found!2598 (index!12569 (_ BitVec 32))) (Intermediate!2598 (undefined!3410 Bool) (index!12570 (_ BitVec 32)) (x!30773 (_ BitVec 32))) (Undefined!2598) (MissingVacant!2598 (index!12571 (_ BitVec 32))) )
))
(declare-fun lt!151417 () SeekEntryResult!2598)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15731 (_ BitVec 32)) SeekEntryResult!2598)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308648 (= res!165425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151417))))

(assert (=> b!308648 (= lt!151417 (Intermediate!2598 false resIndex!52 resX!52))))

(declare-fun b!308649 () Bool)

(declare-fun res!165426 () Bool)

(assert (=> b!308649 (=> (not res!165426) (not e!192942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308649 (= res!165426 (validKeyInArray!0 k!2441))))

(declare-fun e!192941 () Bool)

(declare-fun b!308650 () Bool)

(assert (=> b!308650 (= e!192941 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun lt!151418 () SeekEntryResult!2598)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308650 (= lt!151418 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!308651 () Bool)

(declare-fun res!165421 () Bool)

(assert (=> b!308651 (=> (not res!165421) (not e!192942))))

(declare-fun arrayContainsKey!0 (array!15731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308651 (= res!165421 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308652 () Bool)

(declare-fun res!165420 () Bool)

(assert (=> b!308652 (=> (not res!165420) (not e!192942))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15731 (_ BitVec 32)) SeekEntryResult!2598)

(assert (=> b!308652 (= res!165420 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2598 i!1240)))))

(declare-fun b!308653 () Bool)

(declare-fun res!165424 () Bool)

(assert (=> b!308653 (=> (not res!165424) (not e!192942))))

(assert (=> b!308653 (= res!165424 (and (= (size!7799 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7799 a!3293))))))

(declare-fun b!308654 () Bool)

(assert (=> b!308654 (= e!192943 e!192941)))

(declare-fun res!165419 () Bool)

(assert (=> b!308654 (=> (not res!165419) (not e!192941))))

(assert (=> b!308654 (= res!165419 (and (= lt!151418 lt!151417) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7447 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308654 (= lt!151418 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!308655 () Bool)

(declare-fun res!165418 () Bool)

(assert (=> b!308655 (=> (not res!165418) (not e!192942))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15731 (_ BitVec 32)) Bool)

(assert (=> b!308655 (= res!165418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30780 res!165423) b!308653))

(assert (= (and b!308653 res!165424) b!308649))

(assert (= (and b!308649 res!165426) b!308651))

(assert (= (and b!308651 res!165421) b!308652))

(assert (= (and b!308652 res!165420) b!308655))

(assert (= (and b!308655 res!165418) b!308648))

(assert (= (and b!308648 res!165425) b!308647))

(assert (= (and b!308647 res!165422) b!308654))

(assert (= (and b!308654 res!165419) b!308650))

(declare-fun m!318715 () Bool)

(assert (=> b!308648 m!318715))

(assert (=> b!308648 m!318715))

(declare-fun m!318717 () Bool)

(assert (=> b!308648 m!318717))

(declare-fun m!318719 () Bool)

(assert (=> start!30780 m!318719))

(declare-fun m!318721 () Bool)

(assert (=> start!30780 m!318721))

(declare-fun m!318723 () Bool)

(assert (=> b!308647 m!318723))

(declare-fun m!318725 () Bool)

(assert (=> b!308651 m!318725))

(declare-fun m!318727 () Bool)

(assert (=> b!308650 m!318727))

(assert (=> b!308650 m!318727))

(declare-fun m!318729 () Bool)

(assert (=> b!308650 m!318729))

(declare-fun m!318731 () Bool)

(assert (=> b!308654 m!318731))

(declare-fun m!318733 () Bool)

(assert (=> b!308654 m!318733))

(declare-fun m!318735 () Bool)

(assert (=> b!308652 m!318735))

(declare-fun m!318737 () Bool)

(assert (=> b!308655 m!318737))

(declare-fun m!318739 () Bool)

(assert (=> b!308649 m!318739))

(push 1)

