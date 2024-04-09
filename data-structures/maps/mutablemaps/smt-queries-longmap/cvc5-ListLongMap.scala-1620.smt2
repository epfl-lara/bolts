; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30450 () Bool)

(assert start!30450)

(declare-fun res!162136 () Bool)

(declare-fun e!191404 () Bool)

(assert (=> start!30450 (=> (not res!162136) (not e!191404))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30450 (= res!162136 (validMask!0 mask!3709))))

(assert (=> start!30450 e!191404))

(declare-datatypes ((array!15503 0))(
  ( (array!15504 (arr!7336 (Array (_ BitVec 32) (_ BitVec 64))) (size!7688 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15503)

(declare-fun array_inv!5290 (array!15503) Bool)

(assert (=> start!30450 (array_inv!5290 a!3293)))

(assert (=> start!30450 true))

(declare-fun b!304633 () Bool)

(declare-fun res!162139 () Bool)

(assert (=> b!304633 (=> (not res!162139) (not e!191404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15503 (_ BitVec 32)) Bool)

(assert (=> b!304633 (= res!162139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304634 () Bool)

(declare-fun res!162140 () Bool)

(assert (=> b!304634 (=> (not res!162140) (not e!191404))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!304634 (= res!162140 (and (= (size!7688 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7688 a!3293))))))

(declare-fun b!304635 () Bool)

(declare-fun res!162141 () Bool)

(assert (=> b!304635 (=> (not res!162141) (not e!191404))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304635 (= res!162141 (validKeyInArray!0 k!2441))))

(declare-fun b!304636 () Bool)

(declare-fun res!162144 () Bool)

(assert (=> b!304636 (=> (not res!162144) (not e!191404))))

(declare-datatypes ((SeekEntryResult!2487 0))(
  ( (MissingZero!2487 (index!12124 (_ BitVec 32))) (Found!2487 (index!12125 (_ BitVec 32))) (Intermediate!2487 (undefined!3299 Bool) (index!12126 (_ BitVec 32)) (x!30348 (_ BitVec 32))) (Undefined!2487) (MissingVacant!2487 (index!12127 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15503 (_ BitVec 32)) SeekEntryResult!2487)

(assert (=> b!304636 (= res!162144 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2487 i!1240)))))

(declare-fun b!304637 () Bool)

(declare-fun e!191403 () Bool)

(declare-fun e!191402 () Bool)

(assert (=> b!304637 (= e!191403 e!191402)))

(declare-fun res!162143 () Bool)

(assert (=> b!304637 (=> (not res!162143) (not e!191402))))

(declare-fun lt!150500 () SeekEntryResult!2487)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!150499 () SeekEntryResult!2487)

(assert (=> b!304637 (= res!162143 (and (= lt!150500 lt!150499) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7336 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7336 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7336 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15503 (_ BitVec 32)) SeekEntryResult!2487)

(assert (=> b!304637 (= lt!150500 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!304638 () Bool)

(assert (=> b!304638 (= e!191402 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304638 (= lt!150500 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!304639 () Bool)

(assert (=> b!304639 (= e!191404 e!191403)))

(declare-fun res!162142 () Bool)

(assert (=> b!304639 (=> (not res!162142) (not e!191403))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304639 (= res!162142 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150499))))

(assert (=> b!304639 (= lt!150499 (Intermediate!2487 false resIndex!52 resX!52))))

(declare-fun b!304640 () Bool)

(declare-fun res!162137 () Bool)

(assert (=> b!304640 (=> (not res!162137) (not e!191403))))

(assert (=> b!304640 (= res!162137 (and (= (select (arr!7336 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7688 a!3293))))))

(declare-fun b!304641 () Bool)

(declare-fun res!162138 () Bool)

(assert (=> b!304641 (=> (not res!162138) (not e!191404))))

(declare-fun arrayContainsKey!0 (array!15503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304641 (= res!162138 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30450 res!162136) b!304634))

(assert (= (and b!304634 res!162140) b!304635))

(assert (= (and b!304635 res!162141) b!304641))

(assert (= (and b!304641 res!162138) b!304636))

(assert (= (and b!304636 res!162144) b!304633))

(assert (= (and b!304633 res!162139) b!304639))

(assert (= (and b!304639 res!162142) b!304640))

(assert (= (and b!304640 res!162137) b!304637))

(assert (= (and b!304637 res!162143) b!304638))

(declare-fun m!315757 () Bool)

(assert (=> b!304637 m!315757))

(declare-fun m!315759 () Bool)

(assert (=> b!304637 m!315759))

(declare-fun m!315761 () Bool)

(assert (=> start!30450 m!315761))

(declare-fun m!315763 () Bool)

(assert (=> start!30450 m!315763))

(declare-fun m!315765 () Bool)

(assert (=> b!304640 m!315765))

(declare-fun m!315767 () Bool)

(assert (=> b!304638 m!315767))

(assert (=> b!304638 m!315767))

(declare-fun m!315769 () Bool)

(assert (=> b!304638 m!315769))

(declare-fun m!315771 () Bool)

(assert (=> b!304641 m!315771))

(declare-fun m!315773 () Bool)

(assert (=> b!304633 m!315773))

(declare-fun m!315775 () Bool)

(assert (=> b!304636 m!315775))

(declare-fun m!315777 () Bool)

(assert (=> b!304639 m!315777))

(assert (=> b!304639 m!315777))

(declare-fun m!315779 () Bool)

(assert (=> b!304639 m!315779))

(declare-fun m!315781 () Bool)

(assert (=> b!304635 m!315781))

(push 1)

