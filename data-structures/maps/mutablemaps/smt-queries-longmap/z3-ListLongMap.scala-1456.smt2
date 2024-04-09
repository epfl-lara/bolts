; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28086 () Bool)

(assert start!28086)

(declare-fun res!149472 () Bool)

(declare-fun e!182184 () Bool)

(assert (=> start!28086 (=> (not res!149472) (not e!182184))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28086 (= res!149472 (validMask!0 mask!3809))))

(assert (=> start!28086 e!182184))

(assert (=> start!28086 true))

(declare-datatypes ((array!14434 0))(
  ( (array!14435 (arr!6845 (Array (_ BitVec 32) (_ BitVec 64))) (size!7197 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14434)

(declare-fun array_inv!4799 (array!14434) Bool)

(assert (=> start!28086 (array_inv!4799 a!3312)))

(declare-fun b!287665 () Bool)

(declare-fun res!149471 () Bool)

(assert (=> b!287665 (=> (not res!149471) (not e!182184))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287665 (= res!149471 (validKeyInArray!0 k0!2524))))

(declare-fun b!287666 () Bool)

(declare-fun res!149468 () Bool)

(assert (=> b!287666 (=> (not res!149468) (not e!182184))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287666 (= res!149468 (and (= (size!7197 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7197 a!3312))))))

(declare-fun b!287667 () Bool)

(declare-fun e!182183 () Bool)

(assert (=> b!287667 (= e!182183 false)))

(declare-datatypes ((SeekEntryResult!2005 0))(
  ( (MissingZero!2005 (index!10190 (_ BitVec 32))) (Found!2005 (index!10191 (_ BitVec 32))) (Intermediate!2005 (undefined!2817 Bool) (index!10192 (_ BitVec 32)) (x!28380 (_ BitVec 32))) (Undefined!2005) (MissingVacant!2005 (index!10193 (_ BitVec 32))) )
))
(declare-fun lt!141649 () SeekEntryResult!2005)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14434 (_ BitVec 32)) SeekEntryResult!2005)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287667 (= lt!141649 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!287668 () Bool)

(declare-fun res!149467 () Bool)

(assert (=> b!287668 (=> (not res!149467) (not e!182183))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14434 (_ BitVec 32)) Bool)

(assert (=> b!287668 (= res!149467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287669 () Bool)

(declare-fun res!149469 () Bool)

(assert (=> b!287669 (=> (not res!149469) (not e!182184))))

(declare-fun arrayContainsKey!0 (array!14434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287669 (= res!149469 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287670 () Bool)

(assert (=> b!287670 (= e!182184 e!182183)))

(declare-fun res!149470 () Bool)

(assert (=> b!287670 (=> (not res!149470) (not e!182183))))

(declare-fun lt!141650 () SeekEntryResult!2005)

(assert (=> b!287670 (= res!149470 (or (= lt!141650 (MissingZero!2005 i!1256)) (= lt!141650 (MissingVacant!2005 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14434 (_ BitVec 32)) SeekEntryResult!2005)

(assert (=> b!287670 (= lt!141650 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!28086 res!149472) b!287666))

(assert (= (and b!287666 res!149468) b!287665))

(assert (= (and b!287665 res!149471) b!287669))

(assert (= (and b!287669 res!149469) b!287670))

(assert (= (and b!287670 res!149470) b!287668))

(assert (= (and b!287668 res!149467) b!287667))

(declare-fun m!302039 () Bool)

(assert (=> b!287670 m!302039))

(declare-fun m!302041 () Bool)

(assert (=> b!287667 m!302041))

(assert (=> b!287667 m!302041))

(declare-fun m!302043 () Bool)

(assert (=> b!287667 m!302043))

(declare-fun m!302045 () Bool)

(assert (=> b!287669 m!302045))

(declare-fun m!302047 () Bool)

(assert (=> b!287665 m!302047))

(declare-fun m!302049 () Bool)

(assert (=> b!287668 m!302049))

(declare-fun m!302051 () Bool)

(assert (=> start!28086 m!302051))

(declare-fun m!302053 () Bool)

(assert (=> start!28086 m!302053))

(check-sat (not b!287667) (not b!287669) (not b!287668) (not b!287665) (not start!28086) (not b!287670))
(check-sat)
