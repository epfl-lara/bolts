; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29524 () Bool)

(assert start!29524)

(declare-fun b!298245 () Bool)

(declare-fun res!157338 () Bool)

(declare-fun e!188439 () Bool)

(assert (=> b!298245 (=> (not res!157338) (not e!188439))))

(declare-datatypes ((array!15093 0))(
  ( (array!15094 (arr!7149 (Array (_ BitVec 32) (_ BitVec 64))) (size!7501 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15093)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15093 (_ BitVec 32)) Bool)

(assert (=> b!298245 (= res!157338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!298246 () Bool)

(declare-fun res!157341 () Bool)

(declare-fun e!188440 () Bool)

(assert (=> b!298246 (=> (not res!157341) (not e!188440))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15093 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298246 (= res!157341 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!157336 () Bool)

(assert (=> start!29524 (=> (not res!157336) (not e!188440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29524 (= res!157336 (validMask!0 mask!3809))))

(assert (=> start!29524 e!188440))

(assert (=> start!29524 true))

(declare-fun array_inv!5103 (array!15093) Bool)

(assert (=> start!29524 (array_inv!5103 a!3312)))

(declare-fun b!298247 () Bool)

(assert (=> b!298247 (= e!188440 e!188439)))

(declare-fun res!157339 () Bool)

(assert (=> b!298247 (=> (not res!157339) (not e!188439))))

(declare-datatypes ((SeekEntryResult!2309 0))(
  ( (MissingZero!2309 (index!11409 (_ BitVec 32))) (Found!2309 (index!11410 (_ BitVec 32))) (Intermediate!2309 (undefined!3121 Bool) (index!11411 (_ BitVec 32)) (x!29599 (_ BitVec 32))) (Undefined!2309) (MissingVacant!2309 (index!11412 (_ BitVec 32))) )
))
(declare-fun lt!148327 () SeekEntryResult!2309)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!298247 (= res!157339 (or (= lt!148327 (MissingZero!2309 i!1256)) (= lt!148327 (MissingVacant!2309 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15093 (_ BitVec 32)) SeekEntryResult!2309)

(assert (=> b!298247 (= lt!148327 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!298248 () Bool)

(declare-fun res!157337 () Bool)

(assert (=> b!298248 (=> (not res!157337) (not e!188440))))

(assert (=> b!298248 (= res!157337 (and (= (size!7501 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7501 a!3312))))))

(declare-fun b!298249 () Bool)

(assert (=> b!298249 (= e!188439 false)))

(declare-fun lt!148328 () SeekEntryResult!2309)

(declare-fun lt!148326 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15093 (_ BitVec 32)) SeekEntryResult!2309)

(assert (=> b!298249 (= lt!148328 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148326 k!2524 (array!15094 (store (arr!7149 a!3312) i!1256 k!2524) (size!7501 a!3312)) mask!3809))))

(declare-fun lt!148325 () SeekEntryResult!2309)

(assert (=> b!298249 (= lt!148325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148326 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298249 (= lt!148326 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!298250 () Bool)

(declare-fun res!157340 () Bool)

(assert (=> b!298250 (=> (not res!157340) (not e!188440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298250 (= res!157340 (validKeyInArray!0 k!2524))))

(assert (= (and start!29524 res!157336) b!298248))

(assert (= (and b!298248 res!157337) b!298250))

(assert (= (and b!298250 res!157340) b!298246))

(assert (= (and b!298246 res!157341) b!298247))

(assert (= (and b!298247 res!157339) b!298245))

(assert (= (and b!298245 res!157338) b!298249))

(declare-fun m!310803 () Bool)

(assert (=> b!298245 m!310803))

(declare-fun m!310805 () Bool)

(assert (=> b!298249 m!310805))

(declare-fun m!310807 () Bool)

(assert (=> b!298249 m!310807))

(declare-fun m!310809 () Bool)

(assert (=> b!298249 m!310809))

(declare-fun m!310811 () Bool)

(assert (=> b!298249 m!310811))

(declare-fun m!310813 () Bool)

(assert (=> b!298247 m!310813))

(declare-fun m!310815 () Bool)

(assert (=> b!298250 m!310815))

(declare-fun m!310817 () Bool)

(assert (=> b!298246 m!310817))

(declare-fun m!310819 () Bool)

(assert (=> start!29524 m!310819))

(declare-fun m!310821 () Bool)

(assert (=> start!29524 m!310821))

(push 1)

