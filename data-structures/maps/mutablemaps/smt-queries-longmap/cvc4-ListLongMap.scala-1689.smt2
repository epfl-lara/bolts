; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31030 () Bool)

(assert start!31030)

(declare-fun b!311724 () Bool)

(declare-fun res!168340 () Bool)

(declare-fun e!194454 () Bool)

(assert (=> b!311724 (=> (not res!168340) (not e!194454))))

(declare-datatypes ((array!15930 0))(
  ( (array!15931 (arr!7545 (Array (_ BitVec 32) (_ BitVec 64))) (size!7897 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15930)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311724 (= res!168340 (and (= (size!7897 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7897 a!3293))))))

(declare-fun b!311725 () Bool)

(declare-fun res!168343 () Bool)

(declare-fun e!194455 () Bool)

(assert (=> b!311725 (=> (not res!168343) (not e!194455))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311725 (= res!168343 (and (= (select (arr!7545 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7897 a!3293))))))

(declare-fun b!311726 () Bool)

(declare-fun res!168344 () Bool)

(assert (=> b!311726 (=> (not res!168344) (not e!194454))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2696 0))(
  ( (MissingZero!2696 (index!12960 (_ BitVec 32))) (Found!2696 (index!12961 (_ BitVec 32))) (Intermediate!2696 (undefined!3508 Bool) (index!12962 (_ BitVec 32)) (x!31136 (_ BitVec 32))) (Undefined!2696) (MissingVacant!2696 (index!12963 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15930 (_ BitVec 32)) SeekEntryResult!2696)

(assert (=> b!311726 (= res!168344 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2696 i!1240)))))

(declare-fun res!168337 () Bool)

(assert (=> start!31030 (=> (not res!168337) (not e!194454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31030 (= res!168337 (validMask!0 mask!3709))))

(assert (=> start!31030 e!194454))

(declare-fun array_inv!5499 (array!15930) Bool)

(assert (=> start!31030 (array_inv!5499 a!3293)))

(assert (=> start!31030 true))

(declare-fun b!311727 () Bool)

(declare-fun e!194452 () Bool)

(declare-fun e!194451 () Bool)

(assert (=> b!311727 (= e!194452 (not e!194451))))

(declare-fun res!168342 () Bool)

(assert (=> b!311727 (=> res!168342 e!194451)))

(declare-fun lt!152579 () (_ BitVec 32))

(declare-fun lt!152578 () SeekEntryResult!2696)

(declare-fun lt!152583 () SeekEntryResult!2696)

(assert (=> b!311727 (= res!168342 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152579 #b00000000000000000000000000000000) (bvsge lt!152579 (size!7897 a!3293)) (not (= lt!152583 lt!152578))))))

(declare-fun lt!152584 () SeekEntryResult!2696)

(declare-fun lt!152581 () SeekEntryResult!2696)

(assert (=> b!311727 (= lt!152584 lt!152581)))

(declare-fun lt!152585 () array!15930)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15930 (_ BitVec 32)) SeekEntryResult!2696)

(assert (=> b!311727 (= lt!152581 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152579 k!2441 lt!152585 mask!3709))))

(assert (=> b!311727 (= lt!152584 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152585 mask!3709))))

(assert (=> b!311727 (= lt!152585 (array!15931 (store (arr!7545 a!3293) i!1240 k!2441) (size!7897 a!3293)))))

(declare-fun lt!152580 () SeekEntryResult!2696)

(assert (=> b!311727 (= lt!152580 lt!152583)))

(assert (=> b!311727 (= lt!152583 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152579 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311727 (= lt!152579 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311728 () Bool)

(assert (=> b!311728 (= e!194454 e!194455)))

(declare-fun res!168338 () Bool)

(assert (=> b!311728 (=> (not res!168338) (not e!194455))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311728 (= res!168338 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152578))))

(assert (=> b!311728 (= lt!152578 (Intermediate!2696 false resIndex!52 resX!52))))

(declare-fun b!311729 () Bool)

(declare-fun res!168345 () Bool)

(assert (=> b!311729 (=> (not res!168345) (not e!194454))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311729 (= res!168345 (validKeyInArray!0 k!2441))))

(declare-fun b!311730 () Bool)

(assert (=> b!311730 (= e!194455 e!194452)))

(declare-fun res!168339 () Bool)

(assert (=> b!311730 (=> (not res!168339) (not e!194452))))

(assert (=> b!311730 (= res!168339 (and (= lt!152580 lt!152578) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7545 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311730 (= lt!152580 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311731 () Bool)

(declare-fun res!168341 () Bool)

(assert (=> b!311731 (=> (not res!168341) (not e!194454))))

(declare-fun arrayContainsKey!0 (array!15930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311731 (= res!168341 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311732 () Bool)

(declare-fun res!168336 () Bool)

(assert (=> b!311732 (=> (not res!168336) (not e!194454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15930 (_ BitVec 32)) Bool)

(assert (=> b!311732 (= res!168336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311733 () Bool)

(assert (=> b!311733 (= e!194451 (bvsge mask!3709 #b00000000000000000000000000000000))))

(assert (=> b!311733 (= lt!152581 lt!152583)))

(declare-datatypes ((Unit!9590 0))(
  ( (Unit!9591) )
))
(declare-fun lt!152582 () Unit!9590)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15930 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9590)

(assert (=> b!311733 (= lt!152582 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152579 resIndex!52 resX!52 mask!3709))))

(assert (= (and start!31030 res!168337) b!311724))

(assert (= (and b!311724 res!168340) b!311729))

(assert (= (and b!311729 res!168345) b!311731))

(assert (= (and b!311731 res!168341) b!311726))

(assert (= (and b!311726 res!168344) b!311732))

(assert (= (and b!311732 res!168336) b!311728))

(assert (= (and b!311728 res!168338) b!311725))

(assert (= (and b!311725 res!168343) b!311730))

(assert (= (and b!311730 res!168339) b!311727))

(assert (= (and b!311727 (not res!168342)) b!311733))

(declare-fun m!321783 () Bool)

(assert (=> b!311733 m!321783))

(declare-fun m!321785 () Bool)

(assert (=> b!311729 m!321785))

(declare-fun m!321787 () Bool)

(assert (=> b!311730 m!321787))

(declare-fun m!321789 () Bool)

(assert (=> b!311730 m!321789))

(declare-fun m!321791 () Bool)

(assert (=> start!31030 m!321791))

(declare-fun m!321793 () Bool)

(assert (=> start!31030 m!321793))

(declare-fun m!321795 () Bool)

(assert (=> b!311728 m!321795))

(assert (=> b!311728 m!321795))

(declare-fun m!321797 () Bool)

(assert (=> b!311728 m!321797))

(declare-fun m!321799 () Bool)

(assert (=> b!311726 m!321799))

(declare-fun m!321801 () Bool)

(assert (=> b!311725 m!321801))

(declare-fun m!321803 () Bool)

(assert (=> b!311732 m!321803))

(declare-fun m!321805 () Bool)

(assert (=> b!311727 m!321805))

(declare-fun m!321807 () Bool)

(assert (=> b!311727 m!321807))

(declare-fun m!321809 () Bool)

(assert (=> b!311727 m!321809))

(declare-fun m!321811 () Bool)

(assert (=> b!311727 m!321811))

(declare-fun m!321813 () Bool)

(assert (=> b!311727 m!321813))

(declare-fun m!321815 () Bool)

(assert (=> b!311731 m!321815))

(push 1)

(assert (not b!311726))

(assert (not b!311730))

(assert (not b!311733))

(assert (not b!311729))

(assert (not start!31030))

(assert (not b!311728))

(assert (not b!311732))

(assert (not b!311727))

(assert (not b!311731))

(check-sat)

