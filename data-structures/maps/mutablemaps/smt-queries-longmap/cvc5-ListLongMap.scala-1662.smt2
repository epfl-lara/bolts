; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30810 () Bool)

(assert start!30810)

(declare-fun b!309052 () Bool)

(declare-fun res!165831 () Bool)

(declare-fun e!193121 () Bool)

(assert (=> b!309052 (=> (not res!165831) (not e!193121))))

(declare-datatypes ((array!15761 0))(
  ( (array!15762 (arr!7462 (Array (_ BitVec 32) (_ BitVec 64))) (size!7814 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15761)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15761 (_ BitVec 32)) Bool)

(assert (=> b!309052 (= res!165831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309053 () Bool)

(declare-fun e!193122 () Bool)

(assert (=> b!309053 (= e!193121 e!193122)))

(declare-fun res!165824 () Bool)

(assert (=> b!309053 (=> (not res!165824) (not e!193122))))

(declare-datatypes ((SeekEntryResult!2613 0))(
  ( (MissingZero!2613 (index!12628 (_ BitVec 32))) (Found!2613 (index!12629 (_ BitVec 32))) (Intermediate!2613 (undefined!3425 Bool) (index!12630 (_ BitVec 32)) (x!30828 (_ BitVec 32))) (Undefined!2613) (MissingVacant!2613 (index!12631 (_ BitVec 32))) )
))
(declare-fun lt!151508 () SeekEntryResult!2613)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15761 (_ BitVec 32)) SeekEntryResult!2613)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309053 (= res!165824 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151508))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309053 (= lt!151508 (Intermediate!2613 false resIndex!52 resX!52))))

(declare-fun b!309054 () Bool)

(declare-fun res!165826 () Bool)

(assert (=> b!309054 (=> (not res!165826) (not e!193121))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15761 (_ BitVec 32)) SeekEntryResult!2613)

(assert (=> b!309054 (= res!165826 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2613 i!1240)))))

(declare-fun res!165830 () Bool)

(assert (=> start!30810 (=> (not res!165830) (not e!193121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30810 (= res!165830 (validMask!0 mask!3709))))

(assert (=> start!30810 e!193121))

(declare-fun array_inv!5416 (array!15761) Bool)

(assert (=> start!30810 (array_inv!5416 a!3293)))

(assert (=> start!30810 true))

(declare-fun b!309055 () Bool)

(declare-fun e!193123 () Bool)

(assert (=> b!309055 (= e!193122 e!193123)))

(declare-fun res!165825 () Bool)

(assert (=> b!309055 (=> (not res!165825) (not e!193123))))

(declare-fun lt!151507 () SeekEntryResult!2613)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309055 (= res!165825 (and (= lt!151507 lt!151508) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7462 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309055 (= lt!151507 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309056 () Bool)

(declare-fun res!165829 () Bool)

(assert (=> b!309056 (=> (not res!165829) (not e!193121))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309056 (= res!165829 (validKeyInArray!0 k!2441))))

(declare-fun b!309057 () Bool)

(declare-fun res!165823 () Bool)

(assert (=> b!309057 (=> (not res!165823) (not e!193122))))

(assert (=> b!309057 (= res!165823 (and (= (select (arr!7462 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7814 a!3293))))))

(declare-fun b!309058 () Bool)

(declare-fun res!165828 () Bool)

(assert (=> b!309058 (=> (not res!165828) (not e!193121))))

(assert (=> b!309058 (= res!165828 (and (= (size!7814 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7814 a!3293))))))

(declare-fun b!309059 () Bool)

(declare-fun res!165827 () Bool)

(assert (=> b!309059 (=> (not res!165827) (not e!193121))))

(declare-fun arrayContainsKey!0 (array!15761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309059 (= res!165827 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309060 () Bool)

(assert (=> b!309060 (= e!193123 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309060 (= lt!151507 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(assert (= (and start!30810 res!165830) b!309058))

(assert (= (and b!309058 res!165828) b!309056))

(assert (= (and b!309056 res!165829) b!309059))

(assert (= (and b!309059 res!165827) b!309054))

(assert (= (and b!309054 res!165826) b!309052))

(assert (= (and b!309052 res!165831) b!309053))

(assert (= (and b!309053 res!165824) b!309057))

(assert (= (and b!309057 res!165823) b!309055))

(assert (= (and b!309055 res!165825) b!309060))

(declare-fun m!319105 () Bool)

(assert (=> b!309054 m!319105))

(declare-fun m!319107 () Bool)

(assert (=> b!309056 m!319107))

(declare-fun m!319109 () Bool)

(assert (=> b!309060 m!319109))

(assert (=> b!309060 m!319109))

(declare-fun m!319111 () Bool)

(assert (=> b!309060 m!319111))

(declare-fun m!319113 () Bool)

(assert (=> b!309059 m!319113))

(declare-fun m!319115 () Bool)

(assert (=> b!309057 m!319115))

(declare-fun m!319117 () Bool)

(assert (=> b!309053 m!319117))

(assert (=> b!309053 m!319117))

(declare-fun m!319119 () Bool)

(assert (=> b!309053 m!319119))

(declare-fun m!319121 () Bool)

(assert (=> b!309055 m!319121))

(declare-fun m!319123 () Bool)

(assert (=> b!309055 m!319123))

(declare-fun m!319125 () Bool)

(assert (=> start!30810 m!319125))

(declare-fun m!319127 () Bool)

(assert (=> start!30810 m!319127))

(declare-fun m!319129 () Bool)

(assert (=> b!309052 m!319129))

(push 1)

