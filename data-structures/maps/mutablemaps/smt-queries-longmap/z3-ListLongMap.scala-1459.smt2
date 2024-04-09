; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28104 () Bool)

(assert start!28104)

(declare-fun b!287827 () Bool)

(declare-fun e!182264 () Bool)

(declare-fun e!182266 () Bool)

(assert (=> b!287827 (= e!182264 e!182266)))

(declare-fun res!149634 () Bool)

(assert (=> b!287827 (=> (not res!149634) (not e!182266))))

(declare-datatypes ((SeekEntryResult!2014 0))(
  ( (MissingZero!2014 (index!10226 (_ BitVec 32))) (Found!2014 (index!10227 (_ BitVec 32))) (Intermediate!2014 (undefined!2826 Bool) (index!10228 (_ BitVec 32)) (x!28413 (_ BitVec 32))) (Undefined!2014) (MissingVacant!2014 (index!10229 (_ BitVec 32))) )
))
(declare-fun lt!141752 () SeekEntryResult!2014)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287827 (= res!149634 (or (= lt!141752 (MissingZero!2014 i!1256)) (= lt!141752 (MissingVacant!2014 i!1256))))))

(declare-datatypes ((array!14452 0))(
  ( (array!14453 (arr!6854 (Array (_ BitVec 32) (_ BitVec 64))) (size!7206 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14452)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14452 (_ BitVec 32)) SeekEntryResult!2014)

(assert (=> b!287827 (= lt!141752 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!287828 () Bool)

(declare-fun res!149629 () Bool)

(assert (=> b!287828 (=> (not res!149629) (not e!182264))))

(declare-fun arrayContainsKey!0 (array!14452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287828 (= res!149629 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287829 () Bool)

(declare-fun res!149630 () Bool)

(assert (=> b!287829 (=> (not res!149630) (not e!182264))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287829 (= res!149630 (validKeyInArray!0 k0!2524))))

(declare-fun b!287830 () Bool)

(declare-fun res!149631 () Bool)

(assert (=> b!287830 (=> (not res!149631) (not e!182264))))

(assert (=> b!287830 (= res!149631 (and (= (size!7206 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7206 a!3312))))))

(declare-fun res!149632 () Bool)

(assert (=> start!28104 (=> (not res!149632) (not e!182264))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28104 (= res!149632 (validMask!0 mask!3809))))

(assert (=> start!28104 e!182264))

(assert (=> start!28104 true))

(declare-fun array_inv!4808 (array!14452) Bool)

(assert (=> start!28104 (array_inv!4808 a!3312)))

(declare-fun b!287831 () Bool)

(assert (=> b!287831 (= e!182266 false)))

(declare-fun lt!141749 () SeekEntryResult!2014)

(declare-fun lt!141750 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14452 (_ BitVec 32)) SeekEntryResult!2014)

(assert (=> b!287831 (= lt!141749 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141750 k0!2524 (array!14453 (store (arr!6854 a!3312) i!1256 k0!2524) (size!7206 a!3312)) mask!3809))))

(declare-fun lt!141751 () SeekEntryResult!2014)

(assert (=> b!287831 (= lt!141751 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141750 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287831 (= lt!141750 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!287832 () Bool)

(declare-fun res!149633 () Bool)

(assert (=> b!287832 (=> (not res!149633) (not e!182266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14452 (_ BitVec 32)) Bool)

(assert (=> b!287832 (= res!149633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28104 res!149632) b!287830))

(assert (= (and b!287830 res!149631) b!287829))

(assert (= (and b!287829 res!149630) b!287828))

(assert (= (and b!287828 res!149629) b!287827))

(assert (= (and b!287827 res!149634) b!287832))

(assert (= (and b!287832 res!149633) b!287831))

(declare-fun m!302211 () Bool)

(assert (=> b!287831 m!302211))

(declare-fun m!302213 () Bool)

(assert (=> b!287831 m!302213))

(declare-fun m!302215 () Bool)

(assert (=> b!287831 m!302215))

(declare-fun m!302217 () Bool)

(assert (=> b!287831 m!302217))

(declare-fun m!302219 () Bool)

(assert (=> b!287832 m!302219))

(declare-fun m!302221 () Bool)

(assert (=> b!287828 m!302221))

(declare-fun m!302223 () Bool)

(assert (=> b!287829 m!302223))

(declare-fun m!302225 () Bool)

(assert (=> b!287827 m!302225))

(declare-fun m!302227 () Bool)

(assert (=> start!28104 m!302227))

(declare-fun m!302229 () Bool)

(assert (=> start!28104 m!302229))

(check-sat (not b!287827) (not b!287832) (not b!287828) (not b!287829) (not b!287831) (not start!28104))
(check-sat)
