; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30786 () Bool)

(assert start!30786)

(declare-fun b!308728 () Bool)

(declare-fun res!165507 () Bool)

(declare-fun e!192978 () Bool)

(assert (=> b!308728 (=> (not res!165507) (not e!192978))))

(declare-datatypes ((array!15737 0))(
  ( (array!15738 (arr!7450 (Array (_ BitVec 32) (_ BitVec 64))) (size!7802 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15737)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308728 (= res!165507 (and (= (select (arr!7450 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7802 a!3293))))))

(declare-fun b!308729 () Bool)

(declare-fun res!165500 () Bool)

(declare-fun e!192977 () Bool)

(assert (=> b!308729 (=> (not res!165500) (not e!192977))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308729 (= res!165500 (validKeyInArray!0 k!2441))))

(declare-fun b!308730 () Bool)

(declare-fun res!165503 () Bool)

(assert (=> b!308730 (=> (not res!165503) (not e!192977))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2601 0))(
  ( (MissingZero!2601 (index!12580 (_ BitVec 32))) (Found!2601 (index!12581 (_ BitVec 32))) (Intermediate!2601 (undefined!3413 Bool) (index!12582 (_ BitVec 32)) (x!30784 (_ BitVec 32))) (Undefined!2601) (MissingVacant!2601 (index!12583 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15737 (_ BitVec 32)) SeekEntryResult!2601)

(assert (=> b!308730 (= res!165503 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2601 i!1240)))))

(declare-fun b!308731 () Bool)

(assert (=> b!308731 (= e!192977 e!192978)))

(declare-fun res!165504 () Bool)

(assert (=> b!308731 (=> (not res!165504) (not e!192978))))

(declare-fun lt!151435 () SeekEntryResult!2601)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15737 (_ BitVec 32)) SeekEntryResult!2601)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308731 (= res!165504 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151435))))

(assert (=> b!308731 (= lt!151435 (Intermediate!2601 false resIndex!52 resX!52))))

(declare-fun b!308732 () Bool)

(declare-fun res!165502 () Bool)

(assert (=> b!308732 (=> (not res!165502) (not e!192977))))

(assert (=> b!308732 (= res!165502 (and (= (size!7802 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7802 a!3293))))))

(declare-fun b!308733 () Bool)

(declare-fun res!165501 () Bool)

(assert (=> b!308733 (=> (not res!165501) (not e!192977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15737 (_ BitVec 32)) Bool)

(assert (=> b!308733 (= res!165501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!165505 () Bool)

(assert (=> start!30786 (=> (not res!165505) (not e!192977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30786 (= res!165505 (validMask!0 mask!3709))))

(assert (=> start!30786 e!192977))

(declare-fun array_inv!5404 (array!15737) Bool)

(assert (=> start!30786 (array_inv!5404 a!3293)))

(assert (=> start!30786 true))

(declare-fun b!308734 () Bool)

(declare-fun e!192976 () Bool)

(assert (=> b!308734 (= e!192978 e!192976)))

(declare-fun res!165499 () Bool)

(assert (=> b!308734 (=> (not res!165499) (not e!192976))))

(declare-fun lt!151436 () SeekEntryResult!2601)

(assert (=> b!308734 (= res!165499 (and (= lt!151436 lt!151435) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7450 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!308734 (= lt!151436 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!308735 () Bool)

(declare-fun res!165506 () Bool)

(assert (=> b!308735 (=> (not res!165506) (not e!192977))))

(declare-fun arrayContainsKey!0 (array!15737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308735 (= res!165506 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308736 () Bool)

(assert (=> b!308736 (= e!192976 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308736 (= lt!151436 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(assert (= (and start!30786 res!165505) b!308732))

(assert (= (and b!308732 res!165502) b!308729))

(assert (= (and b!308729 res!165500) b!308735))

(assert (= (and b!308735 res!165506) b!308730))

(assert (= (and b!308730 res!165503) b!308733))

(assert (= (and b!308733 res!165501) b!308731))

(assert (= (and b!308731 res!165504) b!308728))

(assert (= (and b!308728 res!165507) b!308734))

(assert (= (and b!308734 res!165499) b!308736))

(declare-fun m!318793 () Bool)

(assert (=> b!308731 m!318793))

(assert (=> b!308731 m!318793))

(declare-fun m!318795 () Bool)

(assert (=> b!308731 m!318795))

(declare-fun m!318797 () Bool)

(assert (=> b!308729 m!318797))

(declare-fun m!318799 () Bool)

(assert (=> b!308728 m!318799))

(declare-fun m!318801 () Bool)

(assert (=> b!308735 m!318801))

(declare-fun m!318803 () Bool)

(assert (=> b!308734 m!318803))

(declare-fun m!318805 () Bool)

(assert (=> b!308734 m!318805))

(declare-fun m!318807 () Bool)

(assert (=> b!308736 m!318807))

(assert (=> b!308736 m!318807))

(declare-fun m!318809 () Bool)

(assert (=> b!308736 m!318809))

(declare-fun m!318811 () Bool)

(assert (=> b!308733 m!318811))

(declare-fun m!318813 () Bool)

(assert (=> start!30786 m!318813))

(declare-fun m!318815 () Bool)

(assert (=> start!30786 m!318815))

(declare-fun m!318817 () Bool)

(assert (=> b!308730 m!318817))

(push 1)

