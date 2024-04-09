; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30454 () Bool)

(assert start!30454)

(declare-fun b!304687 () Bool)

(declare-fun res!162190 () Bool)

(declare-fun e!191428 () Bool)

(assert (=> b!304687 (=> (not res!162190) (not e!191428))))

(declare-datatypes ((array!15507 0))(
  ( (array!15508 (arr!7338 (Array (_ BitVec 32) (_ BitVec 64))) (size!7690 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15507)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!304687 (= res!162190 (and (= (select (arr!7338 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7690 a!3293))))))

(declare-fun b!304688 () Bool)

(declare-fun e!191426 () Bool)

(assert (=> b!304688 (= e!191428 e!191426)))

(declare-fun res!162191 () Bool)

(assert (=> b!304688 (=> (not res!162191) (not e!191426))))

(declare-datatypes ((SeekEntryResult!2489 0))(
  ( (MissingZero!2489 (index!12132 (_ BitVec 32))) (Found!2489 (index!12133 (_ BitVec 32))) (Intermediate!2489 (undefined!3301 Bool) (index!12134 (_ BitVec 32)) (x!30350 (_ BitVec 32))) (Undefined!2489) (MissingVacant!2489 (index!12135 (_ BitVec 32))) )
))
(declare-fun lt!150511 () SeekEntryResult!2489)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun lt!150512 () SeekEntryResult!2489)

(assert (=> b!304688 (= res!162191 (and (= lt!150511 lt!150512) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7338 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7338 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7338 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15507 (_ BitVec 32)) SeekEntryResult!2489)

(assert (=> b!304688 (= lt!150511 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!304689 () Bool)

(declare-fun e!191427 () Bool)

(assert (=> b!304689 (= e!191427 e!191428)))

(declare-fun res!162195 () Bool)

(assert (=> b!304689 (=> (not res!162195) (not e!191428))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304689 (= res!162195 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150512))))

(assert (=> b!304689 (= lt!150512 (Intermediate!2489 false resIndex!52 resX!52))))

(declare-fun b!304690 () Bool)

(declare-fun res!162192 () Bool)

(assert (=> b!304690 (=> (not res!162192) (not e!191427))))

(assert (=> b!304690 (= res!162192 (and (= (size!7690 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7690 a!3293))))))

(declare-fun b!304691 () Bool)

(declare-fun res!162194 () Bool)

(assert (=> b!304691 (=> (not res!162194) (not e!191427))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15507 (_ BitVec 32)) Bool)

(assert (=> b!304691 (= res!162194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!304692 () Bool)

(declare-fun res!162193 () Bool)

(assert (=> b!304692 (=> (not res!162193) (not e!191427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304692 (= res!162193 (validKeyInArray!0 k!2441))))

(declare-fun res!162198 () Bool)

(assert (=> start!30454 (=> (not res!162198) (not e!191427))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30454 (= res!162198 (validMask!0 mask!3709))))

(assert (=> start!30454 e!191427))

(declare-fun array_inv!5292 (array!15507) Bool)

(assert (=> start!30454 (array_inv!5292 a!3293)))

(assert (=> start!30454 true))

(declare-fun b!304693 () Bool)

(assert (=> b!304693 (= e!191426 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304693 (= lt!150511 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!304694 () Bool)

(declare-fun res!162196 () Bool)

(assert (=> b!304694 (=> (not res!162196) (not e!191427))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15507 (_ BitVec 32)) SeekEntryResult!2489)

(assert (=> b!304694 (= res!162196 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2489 i!1240)))))

(declare-fun b!304695 () Bool)

(declare-fun res!162197 () Bool)

(assert (=> b!304695 (=> (not res!162197) (not e!191427))))

(declare-fun arrayContainsKey!0 (array!15507 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304695 (= res!162197 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30454 res!162198) b!304690))

(assert (= (and b!304690 res!162192) b!304692))

(assert (= (and b!304692 res!162193) b!304695))

(assert (= (and b!304695 res!162197) b!304694))

(assert (= (and b!304694 res!162196) b!304691))

(assert (= (and b!304691 res!162194) b!304689))

(assert (= (and b!304689 res!162195) b!304687))

(assert (= (and b!304687 res!162190) b!304688))

(assert (= (and b!304688 res!162191) b!304693))

(declare-fun m!315809 () Bool)

(assert (=> b!304688 m!315809))

(declare-fun m!315811 () Bool)

(assert (=> b!304688 m!315811))

(declare-fun m!315813 () Bool)

(assert (=> b!304693 m!315813))

(assert (=> b!304693 m!315813))

(declare-fun m!315815 () Bool)

(assert (=> b!304693 m!315815))

(declare-fun m!315817 () Bool)

(assert (=> start!30454 m!315817))

(declare-fun m!315819 () Bool)

(assert (=> start!30454 m!315819))

(declare-fun m!315821 () Bool)

(assert (=> b!304689 m!315821))

(assert (=> b!304689 m!315821))

(declare-fun m!315823 () Bool)

(assert (=> b!304689 m!315823))

(declare-fun m!315825 () Bool)

(assert (=> b!304694 m!315825))

(declare-fun m!315827 () Bool)

(assert (=> b!304687 m!315827))

(declare-fun m!315829 () Bool)

(assert (=> b!304691 m!315829))

(declare-fun m!315831 () Bool)

(assert (=> b!304692 m!315831))

(declare-fun m!315833 () Bool)

(assert (=> b!304695 m!315833))

(push 1)

(assert (not b!304691))

(assert (not start!30454))

(assert (not b!304692))

(assert (not b!304695))

(assert (not b!304688))

(assert (not b!304689))

(assert (not b!304693))

(assert (not b!304694))

(check-sat)

(pop 1)

(push 1)

(check-sat)

