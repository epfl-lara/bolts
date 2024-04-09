; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30750 () Bool)

(assert start!30750)

(declare-fun b!308235 () Bool)

(declare-fun res!165010 () Bool)

(declare-fun e!192769 () Bool)

(assert (=> b!308235 (=> (not res!165010) (not e!192769))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308235 (= res!165010 (validKeyInArray!0 k!2441))))

(declare-fun b!308236 () Bool)

(declare-fun res!165012 () Bool)

(declare-fun e!192768 () Bool)

(assert (=> b!308236 (=> (not res!165012) (not e!192768))))

(declare-datatypes ((array!15701 0))(
  ( (array!15702 (arr!7432 (Array (_ BitVec 32) (_ BitVec 64))) (size!7784 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15701)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!308236 (= res!165012 (and (= (select (arr!7432 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7784 a!3293))))))

(declare-fun b!308237 () Bool)

(assert (=> b!308237 (= e!192769 e!192768)))

(declare-fun res!165013 () Bool)

(assert (=> b!308237 (=> (not res!165013) (not e!192768))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2583 0))(
  ( (MissingZero!2583 (index!12508 (_ BitVec 32))) (Found!2583 (index!12509 (_ BitVec 32))) (Intermediate!2583 (undefined!3395 Bool) (index!12510 (_ BitVec 32)) (x!30718 (_ BitVec 32))) (Undefined!2583) (MissingVacant!2583 (index!12511 (_ BitVec 32))) )
))
(declare-fun lt!151328 () SeekEntryResult!2583)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15701 (_ BitVec 32)) SeekEntryResult!2583)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308237 (= res!165013 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151328))))

(assert (=> b!308237 (= lt!151328 (Intermediate!2583 false resIndex!52 resX!52))))

(declare-fun b!308238 () Bool)

(declare-fun res!165008 () Bool)

(assert (=> b!308238 (=> (not res!165008) (not e!192769))))

(assert (=> b!308238 (= res!165008 (and (= (size!7784 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7784 a!3293))))))

(declare-fun b!308239 () Bool)

(declare-fun res!165009 () Bool)

(assert (=> b!308239 (=> (not res!165009) (not e!192769))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15701 (_ BitVec 32)) Bool)

(assert (=> b!308239 (= res!165009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308240 () Bool)

(declare-fun res!165014 () Bool)

(assert (=> b!308240 (=> (not res!165014) (not e!192769))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15701 (_ BitVec 32)) SeekEntryResult!2583)

(assert (=> b!308240 (= res!165014 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2583 i!1240)))))

(declare-fun b!308241 () Bool)

(declare-fun res!165015 () Bool)

(assert (=> b!308241 (=> (not res!165015) (not e!192769))))

(declare-fun arrayContainsKey!0 (array!15701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308241 (= res!165015 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!308242 () Bool)

(declare-fun res!165007 () Bool)

(assert (=> b!308242 (=> (not res!165007) (not e!192768))))

(assert (=> b!308242 (= res!165007 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151328))))

(declare-fun res!165006 () Bool)

(assert (=> start!30750 (=> (not res!165006) (not e!192769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30750 (= res!165006 (validMask!0 mask!3709))))

(assert (=> start!30750 e!192769))

(declare-fun array_inv!5386 (array!15701) Bool)

(assert (=> start!30750 (array_inv!5386 a!3293)))

(assert (=> start!30750 true))

(declare-fun b!308243 () Bool)

(assert (=> b!308243 (= e!192768 false)))

(declare-fun lt!151327 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308243 (= lt!151327 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!308244 () Bool)

(declare-fun res!165011 () Bool)

(assert (=> b!308244 (=> (not res!165011) (not e!192768))))

(assert (=> b!308244 (= res!165011 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7432 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (= (and start!30750 res!165006) b!308238))

(assert (= (and b!308238 res!165008) b!308235))

(assert (= (and b!308235 res!165010) b!308241))

(assert (= (and b!308241 res!165015) b!308240))

(assert (= (and b!308240 res!165014) b!308239))

(assert (= (and b!308239 res!165009) b!308237))

(assert (= (and b!308237 res!165013) b!308236))

(assert (= (and b!308236 res!165012) b!308242))

(assert (= (and b!308242 res!165007) b!308244))

(assert (= (and b!308244 res!165011) b!308243))

(declare-fun m!318331 () Bool)

(assert (=> b!308239 m!318331))

(declare-fun m!318333 () Bool)

(assert (=> b!308236 m!318333))

(declare-fun m!318335 () Bool)

(assert (=> start!30750 m!318335))

(declare-fun m!318337 () Bool)

(assert (=> start!30750 m!318337))

(declare-fun m!318339 () Bool)

(assert (=> b!308235 m!318339))

(declare-fun m!318341 () Bool)

(assert (=> b!308242 m!318341))

(declare-fun m!318343 () Bool)

(assert (=> b!308241 m!318343))

(declare-fun m!318345 () Bool)

(assert (=> b!308243 m!318345))

(declare-fun m!318347 () Bool)

(assert (=> b!308240 m!318347))

(declare-fun m!318349 () Bool)

(assert (=> b!308237 m!318349))

(assert (=> b!308237 m!318349))

(declare-fun m!318351 () Bool)

(assert (=> b!308237 m!318351))

(declare-fun m!318353 () Bool)

(assert (=> b!308244 m!318353))

(push 1)

