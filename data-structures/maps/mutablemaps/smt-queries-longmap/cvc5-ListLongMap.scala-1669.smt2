; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30906 () Bool)

(assert start!30906)

(declare-fun b!309864 () Bool)

(declare-fun res!166484 () Bool)

(declare-fun e!193525 () Bool)

(assert (=> b!309864 (=> (not res!166484) (not e!193525))))

(declare-datatypes ((array!15806 0))(
  ( (array!15807 (arr!7483 (Array (_ BitVec 32) (_ BitVec 64))) (size!7835 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15806)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2634 0))(
  ( (MissingZero!2634 (index!12712 (_ BitVec 32))) (Found!2634 (index!12713 (_ BitVec 32))) (Intermediate!2634 (undefined!3446 Bool) (index!12714 (_ BitVec 32)) (x!30914 (_ BitVec 32))) (Undefined!2634) (MissingVacant!2634 (index!12715 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15806 (_ BitVec 32)) SeekEntryResult!2634)

(assert (=> b!309864 (= res!166484 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2634 i!1240)))))

(declare-fun b!309865 () Bool)

(declare-fun lt!151769 () array!15806)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun e!193524 () Bool)

(declare-fun lt!151767 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15806 (_ BitVec 32)) SeekEntryResult!2634)

(assert (=> b!309865 (= e!193524 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!151769 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151767 k!2441 lt!151769 mask!3709)))))

(assert (=> b!309865 (= lt!151769 (array!15807 (store (arr!7483 a!3293) i!1240 k!2441) (size!7835 a!3293)))))

(declare-fun b!309866 () Bool)

(declare-fun res!166480 () Bool)

(assert (=> b!309866 (=> (not res!166480) (not e!193525))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15806 (_ BitVec 32)) Bool)

(assert (=> b!309866 (= res!166480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309867 () Bool)

(declare-fun res!166485 () Bool)

(declare-fun e!193522 () Bool)

(assert (=> b!309867 (=> (not res!166485) (not e!193522))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309867 (= res!166485 (and (= (select (arr!7483 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7835 a!3293))))))

(declare-fun b!309868 () Bool)

(assert (=> b!309868 (= e!193525 e!193522)))

(declare-fun res!166479 () Bool)

(assert (=> b!309868 (=> (not res!166479) (not e!193522))))

(declare-fun lt!151768 () SeekEntryResult!2634)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309868 (= res!166479 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151768))))

(assert (=> b!309868 (= lt!151768 (Intermediate!2634 false resIndex!52 resX!52))))

(declare-fun b!309869 () Bool)

(declare-fun res!166481 () Bool)

(assert (=> b!309869 (=> (not res!166481) (not e!193525))))

(assert (=> b!309869 (= res!166481 (and (= (size!7835 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7835 a!3293))))))

(declare-fun b!309870 () Bool)

(declare-fun res!166483 () Bool)

(assert (=> b!309870 (=> (not res!166483) (not e!193525))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309870 (= res!166483 (validKeyInArray!0 k!2441))))

(declare-fun b!309871 () Bool)

(declare-fun e!193521 () Bool)

(assert (=> b!309871 (= e!193522 e!193521)))

(declare-fun res!166476 () Bool)

(assert (=> b!309871 (=> (not res!166476) (not e!193521))))

(declare-fun lt!151766 () SeekEntryResult!2634)

(assert (=> b!309871 (= res!166476 (and (= lt!151766 lt!151768) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7483 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309871 (= lt!151766 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309872 () Bool)

(declare-fun res!166477 () Bool)

(assert (=> b!309872 (=> (not res!166477) (not e!193525))))

(declare-fun arrayContainsKey!0 (array!15806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309872 (= res!166477 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309873 () Bool)

(assert (=> b!309873 (= e!193521 (not true))))

(assert (=> b!309873 e!193524))

(declare-fun res!166478 () Bool)

(assert (=> b!309873 (=> (not res!166478) (not e!193524))))

(assert (=> b!309873 (= res!166478 (= lt!151766 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151767 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309873 (= lt!151767 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun res!166482 () Bool)

(assert (=> start!30906 (=> (not res!166482) (not e!193525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30906 (= res!166482 (validMask!0 mask!3709))))

(assert (=> start!30906 e!193525))

(declare-fun array_inv!5437 (array!15806) Bool)

(assert (=> start!30906 (array_inv!5437 a!3293)))

(assert (=> start!30906 true))

(assert (= (and start!30906 res!166482) b!309869))

(assert (= (and b!309869 res!166481) b!309870))

(assert (= (and b!309870 res!166483) b!309872))

(assert (= (and b!309872 res!166477) b!309864))

(assert (= (and b!309864 res!166484) b!309866))

(assert (= (and b!309866 res!166480) b!309868))

(assert (= (and b!309868 res!166479) b!309867))

(assert (= (and b!309867 res!166485) b!309871))

(assert (= (and b!309871 res!166476) b!309873))

(assert (= (and b!309873 res!166478) b!309865))

(declare-fun m!319789 () Bool)

(assert (=> b!309872 m!319789))

(declare-fun m!319791 () Bool)

(assert (=> b!309866 m!319791))

(declare-fun m!319793 () Bool)

(assert (=> b!309864 m!319793))

(declare-fun m!319795 () Bool)

(assert (=> b!309868 m!319795))

(assert (=> b!309868 m!319795))

(declare-fun m!319797 () Bool)

(assert (=> b!309868 m!319797))

(declare-fun m!319799 () Bool)

(assert (=> start!30906 m!319799))

(declare-fun m!319801 () Bool)

(assert (=> start!30906 m!319801))

(declare-fun m!319803 () Bool)

(assert (=> b!309865 m!319803))

(declare-fun m!319805 () Bool)

(assert (=> b!309865 m!319805))

(declare-fun m!319807 () Bool)

(assert (=> b!309865 m!319807))

(declare-fun m!319809 () Bool)

(assert (=> b!309867 m!319809))

(declare-fun m!319811 () Bool)

(assert (=> b!309873 m!319811))

(declare-fun m!319813 () Bool)

(assert (=> b!309873 m!319813))

(declare-fun m!319815 () Bool)

(assert (=> b!309870 m!319815))

(declare-fun m!319817 () Bool)

(assert (=> b!309871 m!319817))

(declare-fun m!319819 () Bool)

(assert (=> b!309871 m!319819))

(push 1)

