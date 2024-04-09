; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28326 () Bool)

(assert start!28326)

(declare-fun b!290095 () Bool)

(declare-fun res!151612 () Bool)

(declare-fun e!183594 () Bool)

(assert (=> b!290095 (=> (not res!151612) (not e!183594))))

(declare-datatypes ((array!14629 0))(
  ( (array!14630 (arr!6941 (Array (_ BitVec 32) (_ BitVec 64))) (size!7293 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14629)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290095 (= res!151612 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290096 () Bool)

(declare-fun res!151615 () Bool)

(assert (=> b!290096 (=> (not res!151615) (not e!183594))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!290096 (= res!151615 (and (= (size!7293 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7293 a!3312))))))

(declare-fun b!290097 () Bool)

(declare-fun e!183595 () Bool)

(assert (=> b!290097 (= e!183595 false)))

(declare-fun lt!143315 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2101 0))(
  ( (MissingZero!2101 (index!10574 (_ BitVec 32))) (Found!2101 (index!10575 (_ BitVec 32))) (Intermediate!2101 (undefined!2913 Bool) (index!10576 (_ BitVec 32)) (x!28738 (_ BitVec 32))) (Undefined!2101) (MissingVacant!2101 (index!10577 (_ BitVec 32))) )
))
(declare-fun lt!143312 () SeekEntryResult!2101)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14629 (_ BitVec 32)) SeekEntryResult!2101)

(assert (=> b!290097 (= lt!143312 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143315 k0!2524 (array!14630 (store (arr!6941 a!3312) i!1256 k0!2524) (size!7293 a!3312)) mask!3809))))

(declare-fun lt!143313 () SeekEntryResult!2101)

(assert (=> b!290097 (= lt!143313 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143315 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290097 (= lt!143315 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!290098 () Bool)

(assert (=> b!290098 (= e!183594 e!183595)))

(declare-fun res!151617 () Bool)

(assert (=> b!290098 (=> (not res!151617) (not e!183595))))

(declare-fun lt!143314 () SeekEntryResult!2101)

(assert (=> b!290098 (= res!151617 (or (= lt!143314 (MissingZero!2101 i!1256)) (= lt!143314 (MissingVacant!2101 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14629 (_ BitVec 32)) SeekEntryResult!2101)

(assert (=> b!290098 (= lt!143314 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!290099 () Bool)

(declare-fun res!151613 () Bool)

(assert (=> b!290099 (=> (not res!151613) (not e!183594))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290099 (= res!151613 (validKeyInArray!0 k0!2524))))

(declare-fun b!290100 () Bool)

(declare-fun res!151616 () Bool)

(assert (=> b!290100 (=> (not res!151616) (not e!183595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14629 (_ BitVec 32)) Bool)

(assert (=> b!290100 (= res!151616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!151614 () Bool)

(assert (=> start!28326 (=> (not res!151614) (not e!183594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28326 (= res!151614 (validMask!0 mask!3809))))

(assert (=> start!28326 e!183594))

(assert (=> start!28326 true))

(declare-fun array_inv!4895 (array!14629) Bool)

(assert (=> start!28326 (array_inv!4895 a!3312)))

(assert (= (and start!28326 res!151614) b!290096))

(assert (= (and b!290096 res!151615) b!290099))

(assert (= (and b!290099 res!151613) b!290095))

(assert (= (and b!290095 res!151612) b!290098))

(assert (= (and b!290098 res!151617) b!290100))

(assert (= (and b!290100 res!151616) b!290097))

(declare-fun m!304245 () Bool)

(assert (=> b!290095 m!304245))

(declare-fun m!304247 () Bool)

(assert (=> start!28326 m!304247))

(declare-fun m!304249 () Bool)

(assert (=> start!28326 m!304249))

(declare-fun m!304251 () Bool)

(assert (=> b!290100 m!304251))

(declare-fun m!304253 () Bool)

(assert (=> b!290098 m!304253))

(declare-fun m!304255 () Bool)

(assert (=> b!290097 m!304255))

(declare-fun m!304257 () Bool)

(assert (=> b!290097 m!304257))

(declare-fun m!304259 () Bool)

(assert (=> b!290097 m!304259))

(declare-fun m!304261 () Bool)

(assert (=> b!290097 m!304261))

(declare-fun m!304263 () Bool)

(assert (=> b!290099 m!304263))

(check-sat (not b!290095) (not b!290097) (not b!290098) (not b!290099) (not b!290100) (not start!28326))
(check-sat)
