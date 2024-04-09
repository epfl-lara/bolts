; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30824 () Bool)

(assert start!30824)

(declare-fun b!309241 () Bool)

(declare-fun e!193207 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!309241 (= e!193207 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!15775 0))(
  ( (array!15776 (arr!7469 (Array (_ BitVec 32) (_ BitVec 64))) (size!7821 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15775)

(declare-datatypes ((SeekEntryResult!2620 0))(
  ( (MissingZero!2620 (index!12656 (_ BitVec 32))) (Found!2620 (index!12657 (_ BitVec 32))) (Intermediate!2620 (undefined!3432 Bool) (index!12658 (_ BitVec 32)) (x!30851 (_ BitVec 32))) (Undefined!2620) (MissingVacant!2620 (index!12659 (_ BitVec 32))) )
))
(declare-fun lt!151549 () SeekEntryResult!2620)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15775 (_ BitVec 32)) SeekEntryResult!2620)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309241 (= lt!151549 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!309242 () Bool)

(declare-fun res!166016 () Bool)

(declare-fun e!193205 () Bool)

(assert (=> b!309242 (=> (not res!166016) (not e!193205))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15775 (_ BitVec 32)) SeekEntryResult!2620)

(assert (=> b!309242 (= res!166016 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2620 i!1240)))))

(declare-fun b!309243 () Bool)

(declare-fun res!166019 () Bool)

(declare-fun e!193206 () Bool)

(assert (=> b!309243 (=> (not res!166019) (not e!193206))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309243 (= res!166019 (and (= (select (arr!7469 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7821 a!3293))))))

(declare-fun b!309244 () Bool)

(declare-fun res!166012 () Bool)

(assert (=> b!309244 (=> (not res!166012) (not e!193205))))

(declare-fun arrayContainsKey!0 (array!15775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309244 (= res!166012 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309245 () Bool)

(declare-fun res!166013 () Bool)

(assert (=> b!309245 (=> (not res!166013) (not e!193205))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309245 (= res!166013 (validKeyInArray!0 k0!2441))))

(declare-fun b!309246 () Bool)

(assert (=> b!309246 (= e!193206 e!193207)))

(declare-fun res!166015 () Bool)

(assert (=> b!309246 (=> (not res!166015) (not e!193207))))

(declare-fun lt!151550 () SeekEntryResult!2620)

(assert (=> b!309246 (= res!166015 (and (= lt!151549 lt!151550) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7469 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309246 (= lt!151549 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!309248 () Bool)

(assert (=> b!309248 (= e!193205 e!193206)))

(declare-fun res!166014 () Bool)

(assert (=> b!309248 (=> (not res!166014) (not e!193206))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309248 (= res!166014 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151550))))

(assert (=> b!309248 (= lt!151550 (Intermediate!2620 false resIndex!52 resX!52))))

(declare-fun b!309249 () Bool)

(declare-fun res!166018 () Bool)

(assert (=> b!309249 (=> (not res!166018) (not e!193205))))

(assert (=> b!309249 (= res!166018 (and (= (size!7821 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7821 a!3293))))))

(declare-fun res!166020 () Bool)

(assert (=> start!30824 (=> (not res!166020) (not e!193205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30824 (= res!166020 (validMask!0 mask!3709))))

(assert (=> start!30824 e!193205))

(declare-fun array_inv!5423 (array!15775) Bool)

(assert (=> start!30824 (array_inv!5423 a!3293)))

(assert (=> start!30824 true))

(declare-fun b!309247 () Bool)

(declare-fun res!166017 () Bool)

(assert (=> b!309247 (=> (not res!166017) (not e!193205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15775 (_ BitVec 32)) Bool)

(assert (=> b!309247 (= res!166017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30824 res!166020) b!309249))

(assert (= (and b!309249 res!166018) b!309245))

(assert (= (and b!309245 res!166013) b!309244))

(assert (= (and b!309244 res!166012) b!309242))

(assert (= (and b!309242 res!166016) b!309247))

(assert (= (and b!309247 res!166017) b!309248))

(assert (= (and b!309248 res!166014) b!309243))

(assert (= (and b!309243 res!166019) b!309246))

(assert (= (and b!309246 res!166015) b!309241))

(declare-fun m!319287 () Bool)

(assert (=> start!30824 m!319287))

(declare-fun m!319289 () Bool)

(assert (=> start!30824 m!319289))

(declare-fun m!319291 () Bool)

(assert (=> b!309246 m!319291))

(declare-fun m!319293 () Bool)

(assert (=> b!309246 m!319293))

(declare-fun m!319295 () Bool)

(assert (=> b!309242 m!319295))

(declare-fun m!319297 () Bool)

(assert (=> b!309244 m!319297))

(declare-fun m!319299 () Bool)

(assert (=> b!309245 m!319299))

(declare-fun m!319301 () Bool)

(assert (=> b!309241 m!319301))

(assert (=> b!309241 m!319301))

(declare-fun m!319303 () Bool)

(assert (=> b!309241 m!319303))

(declare-fun m!319305 () Bool)

(assert (=> b!309243 m!319305))

(declare-fun m!319307 () Bool)

(assert (=> b!309247 m!319307))

(declare-fun m!319309 () Bool)

(assert (=> b!309248 m!319309))

(assert (=> b!309248 m!319309))

(declare-fun m!319311 () Bool)

(assert (=> b!309248 m!319311))

(check-sat (not b!309245) (not b!309242) (not b!309244) (not b!309241) (not b!309247) (not b!309248) (not start!30824) (not b!309246))
(check-sat)
