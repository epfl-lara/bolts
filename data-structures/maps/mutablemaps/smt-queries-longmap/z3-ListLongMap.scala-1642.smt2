; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30638 () Bool)

(assert start!30638)

(declare-fun b!307202 () Bool)

(declare-fun res!164116 () Bool)

(declare-fun e!192387 () Bool)

(assert (=> b!307202 (=> (not res!164116) (not e!192387))))

(declare-datatypes ((array!15640 0))(
  ( (array!15641 (arr!7403 (Array (_ BitVec 32) (_ BitVec 64))) (size!7755 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15640)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307202 (= res!164116 (and (= (select (arr!7403 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7755 a!3293))))))

(declare-fun b!307203 () Bool)

(assert (=> b!307203 (= e!192387 false)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2554 0))(
  ( (MissingZero!2554 (index!12392 (_ BitVec 32))) (Found!2554 (index!12393 (_ BitVec 32))) (Intermediate!2554 (undefined!3366 Bool) (index!12394 (_ BitVec 32)) (x!30600 (_ BitVec 32))) (Undefined!2554) (MissingVacant!2554 (index!12395 (_ BitVec 32))) )
))
(declare-fun lt!151088 () SeekEntryResult!2554)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15640 (_ BitVec 32)) SeekEntryResult!2554)

(assert (=> b!307203 (= lt!151088 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!307204 () Bool)

(declare-fun res!164117 () Bool)

(assert (=> b!307204 (=> (not res!164117) (not e!192387))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307204 (= res!164117 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) (Intermediate!2554 false resIndex!52 resX!52)))))

(declare-fun b!307205 () Bool)

(declare-fun res!164114 () Bool)

(assert (=> b!307205 (=> (not res!164114) (not e!192387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15640 (_ BitVec 32)) Bool)

(assert (=> b!307205 (= res!164114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!164121 () Bool)

(assert (=> start!30638 (=> (not res!164121) (not e!192387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30638 (= res!164121 (validMask!0 mask!3709))))

(assert (=> start!30638 e!192387))

(declare-fun array_inv!5357 (array!15640) Bool)

(assert (=> start!30638 (array_inv!5357 a!3293)))

(assert (=> start!30638 true))

(declare-fun b!307206 () Bool)

(declare-fun res!164115 () Bool)

(assert (=> b!307206 (=> (not res!164115) (not e!192387))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15640 (_ BitVec 32)) SeekEntryResult!2554)

(assert (=> b!307206 (= res!164115 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2554 i!1240)))))

(declare-fun b!307207 () Bool)

(declare-fun res!164119 () Bool)

(assert (=> b!307207 (=> (not res!164119) (not e!192387))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307207 (= res!164119 (validKeyInArray!0 k0!2441))))

(declare-fun b!307208 () Bool)

(declare-fun res!164118 () Bool)

(assert (=> b!307208 (=> (not res!164118) (not e!192387))))

(declare-fun arrayContainsKey!0 (array!15640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307208 (= res!164118 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307209 () Bool)

(declare-fun res!164120 () Bool)

(assert (=> b!307209 (=> (not res!164120) (not e!192387))))

(assert (=> b!307209 (= res!164120 (and (= (size!7755 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7755 a!3293))))))

(assert (= (and start!30638 res!164121) b!307209))

(assert (= (and b!307209 res!164120) b!307207))

(assert (= (and b!307207 res!164119) b!307208))

(assert (= (and b!307208 res!164118) b!307206))

(assert (= (and b!307206 res!164115) b!307205))

(assert (= (and b!307205 res!164114) b!307204))

(assert (= (and b!307204 res!164117) b!307202))

(assert (= (and b!307202 res!164116) b!307203))

(declare-fun m!317559 () Bool)

(assert (=> b!307206 m!317559))

(declare-fun m!317561 () Bool)

(assert (=> b!307205 m!317561))

(declare-fun m!317563 () Bool)

(assert (=> b!307203 m!317563))

(declare-fun m!317565 () Bool)

(assert (=> b!307207 m!317565))

(declare-fun m!317567 () Bool)

(assert (=> b!307204 m!317567))

(assert (=> b!307204 m!317567))

(declare-fun m!317569 () Bool)

(assert (=> b!307204 m!317569))

(declare-fun m!317571 () Bool)

(assert (=> b!307208 m!317571))

(declare-fun m!317573 () Bool)

(assert (=> start!30638 m!317573))

(declare-fun m!317575 () Bool)

(assert (=> start!30638 m!317575))

(declare-fun m!317577 () Bool)

(assert (=> b!307202 m!317577))

(check-sat (not b!307205) (not b!307204) (not start!30638) (not b!307207) (not b!307208) (not b!307203) (not b!307206))
