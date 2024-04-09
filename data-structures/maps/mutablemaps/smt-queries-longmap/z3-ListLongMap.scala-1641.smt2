; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30632 () Bool)

(assert start!30632)

(declare-fun res!164046 () Bool)

(declare-fun e!192366 () Bool)

(assert (=> start!30632 (=> (not res!164046) (not e!192366))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30632 (= res!164046 (validMask!0 mask!3709))))

(assert (=> start!30632 e!192366))

(declare-datatypes ((array!15634 0))(
  ( (array!15635 (arr!7400 (Array (_ BitVec 32) (_ BitVec 64))) (size!7752 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15634)

(declare-fun array_inv!5354 (array!15634) Bool)

(assert (=> start!30632 (array_inv!5354 a!3293)))

(assert (=> start!30632 true))

(declare-fun b!307126 () Bool)

(declare-fun res!164041 () Bool)

(assert (=> b!307126 (=> (not res!164041) (not e!192366))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307126 (= res!164041 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307127 () Bool)

(declare-fun res!164045 () Bool)

(declare-fun e!192365 () Bool)

(assert (=> b!307127 (=> (not res!164045) (not e!192365))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307127 (= res!164045 (and (= (select (arr!7400 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7752 a!3293))))))

(declare-fun b!307128 () Bool)

(declare-fun res!164043 () Bool)

(assert (=> b!307128 (=> (not res!164043) (not e!192366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15634 (_ BitVec 32)) Bool)

(assert (=> b!307128 (= res!164043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307129 () Bool)

(assert (=> b!307129 (= e!192365 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7400 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsgt x!1427 #b01111111111111111111111111111110)))))

(declare-fun b!307130 () Bool)

(declare-fun res!164044 () Bool)

(assert (=> b!307130 (=> (not res!164044) (not e!192366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307130 (= res!164044 (validKeyInArray!0 k0!2441))))

(declare-fun b!307131 () Bool)

(declare-fun res!164042 () Bool)

(assert (=> b!307131 (=> (not res!164042) (not e!192366))))

(assert (=> b!307131 (= res!164042 (and (= (size!7752 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7752 a!3293))))))

(declare-fun b!307132 () Bool)

(declare-fun res!164040 () Bool)

(assert (=> b!307132 (=> (not res!164040) (not e!192365))))

(declare-datatypes ((SeekEntryResult!2551 0))(
  ( (MissingZero!2551 (index!12380 (_ BitVec 32))) (Found!2551 (index!12381 (_ BitVec 32))) (Intermediate!2551 (undefined!3363 Bool) (index!12382 (_ BitVec 32)) (x!30589 (_ BitVec 32))) (Undefined!2551) (MissingVacant!2551 (index!12383 (_ BitVec 32))) )
))
(declare-fun lt!151079 () SeekEntryResult!2551)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15634 (_ BitVec 32)) SeekEntryResult!2551)

(assert (=> b!307132 (= res!164040 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151079))))

(declare-fun b!307133 () Bool)

(declare-fun res!164039 () Bool)

(assert (=> b!307133 (=> (not res!164039) (not e!192366))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15634 (_ BitVec 32)) SeekEntryResult!2551)

(assert (=> b!307133 (= res!164039 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2551 i!1240)))))

(declare-fun b!307134 () Bool)

(assert (=> b!307134 (= e!192366 e!192365)))

(declare-fun res!164038 () Bool)

(assert (=> b!307134 (=> (not res!164038) (not e!192365))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307134 (= res!164038 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151079))))

(assert (=> b!307134 (= lt!151079 (Intermediate!2551 false resIndex!52 resX!52))))

(assert (= (and start!30632 res!164046) b!307131))

(assert (= (and b!307131 res!164042) b!307130))

(assert (= (and b!307130 res!164044) b!307126))

(assert (= (and b!307126 res!164041) b!307133))

(assert (= (and b!307133 res!164039) b!307128))

(assert (= (and b!307128 res!164043) b!307134))

(assert (= (and b!307134 res!164038) b!307127))

(assert (= (and b!307127 res!164045) b!307132))

(assert (= (and b!307132 res!164040) b!307129))

(declare-fun m!317495 () Bool)

(assert (=> b!307132 m!317495))

(declare-fun m!317497 () Bool)

(assert (=> b!307133 m!317497))

(declare-fun m!317499 () Bool)

(assert (=> start!30632 m!317499))

(declare-fun m!317501 () Bool)

(assert (=> start!30632 m!317501))

(declare-fun m!317503 () Bool)

(assert (=> b!307127 m!317503))

(declare-fun m!317505 () Bool)

(assert (=> b!307134 m!317505))

(assert (=> b!307134 m!317505))

(declare-fun m!317507 () Bool)

(assert (=> b!307134 m!317507))

(declare-fun m!317509 () Bool)

(assert (=> b!307126 m!317509))

(declare-fun m!317511 () Bool)

(assert (=> b!307128 m!317511))

(declare-fun m!317513 () Bool)

(assert (=> b!307130 m!317513))

(declare-fun m!317515 () Bool)

(assert (=> b!307129 m!317515))

(check-sat (not b!307133) (not start!30632) (not b!307132) (not b!307130) (not b!307126) (not b!307134) (not b!307128))
(check-sat)
