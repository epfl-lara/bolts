; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30826 () Bool)

(assert start!30826)

(declare-fun b!309268 () Bool)

(declare-fun res!166046 () Bool)

(declare-fun e!193219 () Bool)

(assert (=> b!309268 (=> (not res!166046) (not e!193219))))

(declare-datatypes ((array!15777 0))(
  ( (array!15778 (arr!7470 (Array (_ BitVec 32) (_ BitVec 64))) (size!7822 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15777)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15777 (_ BitVec 32)) Bool)

(assert (=> b!309268 (= res!166046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!166041 () Bool)

(assert (=> start!30826 (=> (not res!166041) (not e!193219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30826 (= res!166041 (validMask!0 mask!3709))))

(assert (=> start!30826 e!193219))

(declare-fun array_inv!5424 (array!15777) Bool)

(assert (=> start!30826 (array_inv!5424 a!3293)))

(assert (=> start!30826 true))

(declare-fun b!309269 () Bool)

(declare-fun res!166042 () Bool)

(declare-fun e!193218 () Bool)

(assert (=> b!309269 (=> (not res!166042) (not e!193218))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309269 (= res!166042 (and (= (select (arr!7470 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7822 a!3293))))))

(declare-fun b!309270 () Bool)

(declare-fun e!193216 () Bool)

(assert (=> b!309270 (= e!193216 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2621 0))(
  ( (MissingZero!2621 (index!12660 (_ BitVec 32))) (Found!2621 (index!12661 (_ BitVec 32))) (Intermediate!2621 (undefined!3433 Bool) (index!12662 (_ BitVec 32)) (x!30852 (_ BitVec 32))) (Undefined!2621) (MissingVacant!2621 (index!12663 (_ BitVec 32))) )
))
(declare-fun lt!151555 () SeekEntryResult!2621)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15777 (_ BitVec 32)) SeekEntryResult!2621)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309270 (= lt!151555 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!309271 () Bool)

(assert (=> b!309271 (= e!193219 e!193218)))

(declare-fun res!166045 () Bool)

(assert (=> b!309271 (=> (not res!166045) (not e!193218))))

(declare-fun lt!151556 () SeekEntryResult!2621)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309271 (= res!166045 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151556))))

(assert (=> b!309271 (= lt!151556 (Intermediate!2621 false resIndex!52 resX!52))))

(declare-fun b!309272 () Bool)

(declare-fun res!166040 () Bool)

(assert (=> b!309272 (=> (not res!166040) (not e!193219))))

(declare-fun arrayContainsKey!0 (array!15777 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309272 (= res!166040 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309273 () Bool)

(declare-fun res!166044 () Bool)

(assert (=> b!309273 (=> (not res!166044) (not e!193219))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309273 (= res!166044 (validKeyInArray!0 k!2441))))

(declare-fun b!309274 () Bool)

(declare-fun res!166047 () Bool)

(assert (=> b!309274 (=> (not res!166047) (not e!193219))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15777 (_ BitVec 32)) SeekEntryResult!2621)

(assert (=> b!309274 (= res!166047 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2621 i!1240)))))

(declare-fun b!309275 () Bool)

(declare-fun res!166043 () Bool)

(assert (=> b!309275 (=> (not res!166043) (not e!193219))))

(assert (=> b!309275 (= res!166043 (and (= (size!7822 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7822 a!3293))))))

(declare-fun b!309276 () Bool)

(assert (=> b!309276 (= e!193218 e!193216)))

(declare-fun res!166039 () Bool)

(assert (=> b!309276 (=> (not res!166039) (not e!193216))))

(assert (=> b!309276 (= res!166039 (and (= lt!151555 lt!151556) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7470 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309276 (= lt!151555 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!30826 res!166041) b!309275))

(assert (= (and b!309275 res!166043) b!309273))

(assert (= (and b!309273 res!166044) b!309272))

(assert (= (and b!309272 res!166040) b!309274))

(assert (= (and b!309274 res!166047) b!309268))

(assert (= (and b!309268 res!166046) b!309271))

(assert (= (and b!309271 res!166045) b!309269))

(assert (= (and b!309269 res!166042) b!309276))

(assert (= (and b!309276 res!166039) b!309270))

(declare-fun m!319313 () Bool)

(assert (=> b!309268 m!319313))

(declare-fun m!319315 () Bool)

(assert (=> b!309274 m!319315))

(declare-fun m!319317 () Bool)

(assert (=> b!309270 m!319317))

(assert (=> b!309270 m!319317))

(declare-fun m!319319 () Bool)

(assert (=> b!309270 m!319319))

(declare-fun m!319321 () Bool)

(assert (=> b!309276 m!319321))

(declare-fun m!319323 () Bool)

(assert (=> b!309276 m!319323))

(declare-fun m!319325 () Bool)

(assert (=> b!309273 m!319325))

(declare-fun m!319327 () Bool)

(assert (=> b!309271 m!319327))

(assert (=> b!309271 m!319327))

(declare-fun m!319329 () Bool)

(assert (=> b!309271 m!319329))

(declare-fun m!319331 () Bool)

(assert (=> start!30826 m!319331))

(declare-fun m!319333 () Bool)

(assert (=> start!30826 m!319333))

(declare-fun m!319335 () Bool)

(assert (=> b!309269 m!319335))

(declare-fun m!319337 () Bool)

(assert (=> b!309272 m!319337))

(push 1)

(assert (not b!309271))

(assert (not b!309273))

(assert (not b!309274))

(assert (not b!309272))

(assert (not b!309270))

(assert (not b!309268))

(assert (not b!309276))

(assert (not start!30826))

(check-sat)

