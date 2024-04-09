; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30746 () Bool)

(assert start!30746)

(declare-fun b!308175 () Bool)

(declare-fun res!164946 () Bool)

(declare-fun e!192750 () Bool)

(assert (=> b!308175 (=> (not res!164946) (not e!192750))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((array!15697 0))(
  ( (array!15698 (arr!7430 (Array (_ BitVec 32) (_ BitVec 64))) (size!7782 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15697)

(declare-fun k0!2441 () (_ BitVec 64))

(assert (=> b!308175 (= res!164946 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7430 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!308176 () Bool)

(declare-fun res!164951 () Bool)

(declare-fun e!192749 () Bool)

(assert (=> b!308176 (=> (not res!164951) (not e!192749))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2581 0))(
  ( (MissingZero!2581 (index!12500 (_ BitVec 32))) (Found!2581 (index!12501 (_ BitVec 32))) (Intermediate!2581 (undefined!3393 Bool) (index!12502 (_ BitVec 32)) (x!30708 (_ BitVec 32))) (Undefined!2581) (MissingVacant!2581 (index!12503 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15697 (_ BitVec 32)) SeekEntryResult!2581)

(assert (=> b!308176 (= res!164951 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2581 i!1240)))))

(declare-fun b!308177 () Bool)

(assert (=> b!308177 (= e!192749 e!192750)))

(declare-fun res!164948 () Bool)

(assert (=> b!308177 (=> (not res!164948) (not e!192750))))

(declare-fun lt!151315 () SeekEntryResult!2581)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15697 (_ BitVec 32)) SeekEntryResult!2581)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308177 (= res!164948 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151315))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!308177 (= lt!151315 (Intermediate!2581 false resIndex!52 resX!52))))

(declare-fun res!164947 () Bool)

(assert (=> start!30746 (=> (not res!164947) (not e!192749))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30746 (= res!164947 (validMask!0 mask!3709))))

(assert (=> start!30746 e!192749))

(declare-fun array_inv!5384 (array!15697) Bool)

(assert (=> start!30746 (array_inv!5384 a!3293)))

(assert (=> start!30746 true))

(declare-fun b!308178 () Bool)

(declare-fun res!164949 () Bool)

(assert (=> b!308178 (=> (not res!164949) (not e!192750))))

(assert (=> b!308178 (= res!164949 (and (= (select (arr!7430 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7782 a!3293))))))

(declare-fun b!308179 () Bool)

(declare-fun res!164950 () Bool)

(assert (=> b!308179 (=> (not res!164950) (not e!192749))))

(declare-fun arrayContainsKey!0 (array!15697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308179 (= res!164950 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308180 () Bool)

(declare-fun res!164952 () Bool)

(assert (=> b!308180 (=> (not res!164952) (not e!192749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15697 (_ BitVec 32)) Bool)

(assert (=> b!308180 (= res!164952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun lt!151316 () (_ BitVec 32))

(declare-fun b!308181 () Bool)

(assert (=> b!308181 (= e!192750 (and (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge lt!151316 #b00000000000000000000000000000000) (bvslt lt!151316 (bvadd #b00000000000000000000000000000001 mask!3709)) (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308181 (= lt!151316 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!308182 () Bool)

(declare-fun res!164953 () Bool)

(assert (=> b!308182 (=> (not res!164953) (not e!192749))))

(assert (=> b!308182 (= res!164953 (and (= (size!7782 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7782 a!3293))))))

(declare-fun b!308183 () Bool)

(declare-fun res!164955 () Bool)

(assert (=> b!308183 (=> (not res!164955) (not e!192750))))

(assert (=> b!308183 (= res!164955 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151315))))

(declare-fun b!308184 () Bool)

(declare-fun res!164954 () Bool)

(assert (=> b!308184 (=> (not res!164954) (not e!192749))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308184 (= res!164954 (validKeyInArray!0 k0!2441))))

(assert (= (and start!30746 res!164947) b!308182))

(assert (= (and b!308182 res!164953) b!308184))

(assert (= (and b!308184 res!164954) b!308179))

(assert (= (and b!308179 res!164950) b!308176))

(assert (= (and b!308176 res!164951) b!308180))

(assert (= (and b!308180 res!164952) b!308177))

(assert (= (and b!308177 res!164948) b!308178))

(assert (= (and b!308178 res!164949) b!308183))

(assert (= (and b!308183 res!164955) b!308175))

(assert (= (and b!308175 res!164946) b!308181))

(declare-fun m!318283 () Bool)

(assert (=> b!308176 m!318283))

(declare-fun m!318285 () Bool)

(assert (=> b!308183 m!318285))

(declare-fun m!318287 () Bool)

(assert (=> b!308184 m!318287))

(declare-fun m!318289 () Bool)

(assert (=> b!308175 m!318289))

(declare-fun m!318291 () Bool)

(assert (=> b!308179 m!318291))

(declare-fun m!318293 () Bool)

(assert (=> b!308178 m!318293))

(declare-fun m!318295 () Bool)

(assert (=> b!308180 m!318295))

(declare-fun m!318297 () Bool)

(assert (=> b!308177 m!318297))

(assert (=> b!308177 m!318297))

(declare-fun m!318299 () Bool)

(assert (=> b!308177 m!318299))

(declare-fun m!318301 () Bool)

(assert (=> start!30746 m!318301))

(declare-fun m!318303 () Bool)

(assert (=> start!30746 m!318303))

(declare-fun m!318305 () Bool)

(assert (=> b!308181 m!318305))

(check-sat (not b!308181) (not b!308184) (not b!308183) (not b!308177) (not b!308179) (not b!308176) (not b!308180) (not start!30746))
(check-sat)
