; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29888 () Bool)

(assert start!29888)

(declare-fun b!300334 () Bool)

(declare-fun res!158383 () Bool)

(declare-fun e!189661 () Bool)

(assert (=> b!300334 (=> (not res!158383) (not e!189661))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300334 (= res!158383 (validKeyInArray!0 k0!2524))))

(declare-fun res!158388 () Bool)

(assert (=> start!29888 (=> (not res!158388) (not e!189661))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29888 (= res!158388 (validMask!0 mask!3809))))

(assert (=> start!29888 e!189661))

(assert (=> start!29888 true))

(declare-datatypes ((array!15169 0))(
  ( (array!15170 (arr!7178 (Array (_ BitVec 32) (_ BitVec 64))) (size!7530 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15169)

(declare-fun array_inv!5132 (array!15169) Bool)

(assert (=> start!29888 (array_inv!5132 a!3312)))

(declare-fun b!300335 () Bool)

(declare-fun res!158386 () Bool)

(declare-fun e!189659 () Bool)

(assert (=> b!300335 (=> (not res!158386) (not e!189659))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15169 (_ BitVec 32)) Bool)

(assert (=> b!300335 (= res!158386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300336 () Bool)

(declare-fun res!158385 () Bool)

(assert (=> b!300336 (=> (not res!158385) (not e!189661))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!300336 (= res!158385 (and (= (size!7530 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7530 a!3312))))))

(declare-fun b!300337 () Bool)

(declare-fun res!158387 () Bool)

(assert (=> b!300337 (=> (not res!158387) (not e!189661))))

(declare-fun arrayContainsKey!0 (array!15169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300337 (= res!158387 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300338 () Bool)

(assert (=> b!300338 (= e!189661 e!189659)))

(declare-fun res!158384 () Bool)

(assert (=> b!300338 (=> (not res!158384) (not e!189659))))

(declare-datatypes ((SeekEntryResult!2338 0))(
  ( (MissingZero!2338 (index!11528 (_ BitVec 32))) (Found!2338 (index!11529 (_ BitVec 32))) (Intermediate!2338 (undefined!3150 Bool) (index!11530 (_ BitVec 32)) (x!29751 (_ BitVec 32))) (Undefined!2338) (MissingVacant!2338 (index!11531 (_ BitVec 32))) )
))
(declare-fun lt!149461 () SeekEntryResult!2338)

(assert (=> b!300338 (= res!158384 (or (= lt!149461 (MissingZero!2338 i!1256)) (= lt!149461 (MissingVacant!2338 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15169 (_ BitVec 32)) SeekEntryResult!2338)

(assert (=> b!300338 (= lt!149461 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!300339 () Bool)

(assert (=> b!300339 (= e!189659 false)))

(declare-fun lt!149462 () (_ BitVec 32))

(declare-fun lt!149460 () SeekEntryResult!2338)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15169 (_ BitVec 32)) SeekEntryResult!2338)

(assert (=> b!300339 (= lt!149460 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149462 k0!2524 (array!15170 (store (arr!7178 a!3312) i!1256 k0!2524) (size!7530 a!3312)) mask!3809))))

(declare-fun lt!149459 () SeekEntryResult!2338)

(assert (=> b!300339 (= lt!149459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149462 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300339 (= lt!149462 (toIndex!0 k0!2524 mask!3809))))

(assert (= (and start!29888 res!158388) b!300336))

(assert (= (and b!300336 res!158385) b!300334))

(assert (= (and b!300334 res!158383) b!300337))

(assert (= (and b!300337 res!158387) b!300338))

(assert (= (and b!300338 res!158384) b!300335))

(assert (= (and b!300335 res!158386) b!300339))

(declare-fun m!312339 () Bool)

(assert (=> b!300337 m!312339))

(declare-fun m!312341 () Bool)

(assert (=> b!300334 m!312341))

(declare-fun m!312343 () Bool)

(assert (=> b!300339 m!312343))

(declare-fun m!312345 () Bool)

(assert (=> b!300339 m!312345))

(declare-fun m!312347 () Bool)

(assert (=> b!300339 m!312347))

(declare-fun m!312349 () Bool)

(assert (=> b!300339 m!312349))

(declare-fun m!312351 () Bool)

(assert (=> b!300335 m!312351))

(declare-fun m!312353 () Bool)

(assert (=> b!300338 m!312353))

(declare-fun m!312355 () Bool)

(assert (=> start!29888 m!312355))

(declare-fun m!312357 () Bool)

(assert (=> start!29888 m!312357))

(check-sat (not b!300334) (not start!29888) (not b!300338) (not b!300337) (not b!300335) (not b!300339))
(check-sat)
