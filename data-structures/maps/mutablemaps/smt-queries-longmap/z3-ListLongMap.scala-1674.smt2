; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30938 () Bool)

(assert start!30938)

(declare-fun res!166956 () Bool)

(declare-fun e!193761 () Bool)

(assert (=> start!30938 (=> (not res!166956) (not e!193761))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30938 (= res!166956 (validMask!0 mask!3709))))

(assert (=> start!30938 e!193761))

(declare-datatypes ((array!15838 0))(
  ( (array!15839 (arr!7499 (Array (_ BitVec 32) (_ BitVec 64))) (size!7851 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15838)

(declare-fun array_inv!5453 (array!15838) Bool)

(assert (=> start!30938 (array_inv!5453 a!3293)))

(assert (=> start!30938 true))

(declare-fun b!310344 () Bool)

(declare-fun res!166965 () Bool)

(assert (=> b!310344 (=> (not res!166965) (not e!193761))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2650 0))(
  ( (MissingZero!2650 (index!12776 (_ BitVec 32))) (Found!2650 (index!12777 (_ BitVec 32))) (Intermediate!2650 (undefined!3462 Bool) (index!12778 (_ BitVec 32)) (x!30970 (_ BitVec 32))) (Undefined!2650) (MissingVacant!2650 (index!12779 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15838 (_ BitVec 32)) SeekEntryResult!2650)

(assert (=> b!310344 (= res!166965 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2650 i!1240)))))

(declare-fun b!310345 () Bool)

(declare-fun e!193764 () Bool)

(assert (=> b!310345 (= e!193764 (not true))))

(declare-fun e!193763 () Bool)

(assert (=> b!310345 e!193763))

(declare-fun res!166961 () Bool)

(assert (=> b!310345 (=> (not res!166961) (not e!193763))))

(declare-fun lt!151959 () SeekEntryResult!2650)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!151960 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15838 (_ BitVec 32)) SeekEntryResult!2650)

(assert (=> b!310345 (= res!166961 (= lt!151959 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151960 k0!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310345 (= lt!151960 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310346 () Bool)

(declare-fun res!166958 () Bool)

(declare-fun e!193762 () Bool)

(assert (=> b!310346 (=> (not res!166958) (not e!193762))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310346 (= res!166958 (and (= (select (arr!7499 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7851 a!3293))))))

(declare-fun b!310347 () Bool)

(declare-fun res!166962 () Bool)

(assert (=> b!310347 (=> (not res!166962) (not e!193761))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310347 (= res!166962 (validKeyInArray!0 k0!2441))))

(declare-fun b!310348 () Bool)

(declare-fun res!166957 () Bool)

(assert (=> b!310348 (=> (not res!166957) (not e!193761))))

(declare-fun arrayContainsKey!0 (array!15838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310348 (= res!166957 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310349 () Bool)

(declare-fun res!166964 () Bool)

(assert (=> b!310349 (=> (not res!166964) (not e!193761))))

(assert (=> b!310349 (= res!166964 (and (= (size!7851 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7851 a!3293))))))

(declare-fun b!310350 () Bool)

(assert (=> b!310350 (= e!193762 e!193764)))

(declare-fun res!166959 () Bool)

(assert (=> b!310350 (=> (not res!166959) (not e!193764))))

(declare-fun lt!151961 () SeekEntryResult!2650)

(assert (=> b!310350 (= res!166959 (and (= lt!151959 lt!151961) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7499 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310350 (= lt!151959 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!310351 () Bool)

(assert (=> b!310351 (= e!193761 e!193762)))

(declare-fun res!166963 () Bool)

(assert (=> b!310351 (=> (not res!166963) (not e!193762))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310351 (= res!166963 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151961))))

(assert (=> b!310351 (= lt!151961 (Intermediate!2650 false resIndex!52 resX!52))))

(declare-fun b!310352 () Bool)

(declare-fun res!166960 () Bool)

(assert (=> b!310352 (=> (not res!166960) (not e!193761))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15838 (_ BitVec 32)) Bool)

(assert (=> b!310352 (= res!166960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun lt!151958 () array!15838)

(declare-fun b!310353 () Bool)

(assert (=> b!310353 (= e!193763 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!151958 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151960 k0!2441 lt!151958 mask!3709)))))

(assert (=> b!310353 (= lt!151958 (array!15839 (store (arr!7499 a!3293) i!1240 k0!2441) (size!7851 a!3293)))))

(assert (= (and start!30938 res!166956) b!310349))

(assert (= (and b!310349 res!166964) b!310347))

(assert (= (and b!310347 res!166962) b!310348))

(assert (= (and b!310348 res!166957) b!310344))

(assert (= (and b!310344 res!166965) b!310352))

(assert (= (and b!310352 res!166960) b!310351))

(assert (= (and b!310351 res!166963) b!310346))

(assert (= (and b!310346 res!166958) b!310350))

(assert (= (and b!310350 res!166959) b!310345))

(assert (= (and b!310345 res!166961) b!310353))

(declare-fun m!320301 () Bool)

(assert (=> b!310351 m!320301))

(assert (=> b!310351 m!320301))

(declare-fun m!320303 () Bool)

(assert (=> b!310351 m!320303))

(declare-fun m!320305 () Bool)

(assert (=> b!310347 m!320305))

(declare-fun m!320307 () Bool)

(assert (=> b!310345 m!320307))

(declare-fun m!320309 () Bool)

(assert (=> b!310345 m!320309))

(declare-fun m!320311 () Bool)

(assert (=> b!310353 m!320311))

(declare-fun m!320313 () Bool)

(assert (=> b!310353 m!320313))

(declare-fun m!320315 () Bool)

(assert (=> b!310353 m!320315))

(declare-fun m!320317 () Bool)

(assert (=> b!310346 m!320317))

(declare-fun m!320319 () Bool)

(assert (=> start!30938 m!320319))

(declare-fun m!320321 () Bool)

(assert (=> start!30938 m!320321))

(declare-fun m!320323 () Bool)

(assert (=> b!310352 m!320323))

(declare-fun m!320325 () Bool)

(assert (=> b!310344 m!320325))

(declare-fun m!320327 () Bool)

(assert (=> b!310348 m!320327))

(declare-fun m!320329 () Bool)

(assert (=> b!310350 m!320329))

(declare-fun m!320331 () Bool)

(assert (=> b!310350 m!320331))

(check-sat (not b!310350) (not b!310352) (not b!310348) (not b!310345) (not start!30938) (not b!310347) (not b!310344) (not b!310351) (not b!310353))
(check-sat)
