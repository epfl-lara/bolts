; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28296 () Bool)

(assert start!28296)

(declare-fun res!151342 () Bool)

(declare-fun e!183459 () Bool)

(assert (=> start!28296 (=> (not res!151342) (not e!183459))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28296 (= res!151342 (validMask!0 mask!3809))))

(assert (=> start!28296 e!183459))

(assert (=> start!28296 true))

(declare-datatypes ((array!14599 0))(
  ( (array!14600 (arr!6926 (Array (_ BitVec 32) (_ BitVec 64))) (size!7278 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14599)

(declare-fun array_inv!4880 (array!14599) Bool)

(assert (=> start!28296 (array_inv!4880 a!3312)))

(declare-fun b!289825 () Bool)

(declare-fun res!151347 () Bool)

(assert (=> b!289825 (=> (not res!151347) (not e!183459))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289825 (= res!151347 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289826 () Bool)

(declare-fun e!183460 () Bool)

(assert (=> b!289826 (= e!183459 e!183460)))

(declare-fun res!151346 () Bool)

(assert (=> b!289826 (=> (not res!151346) (not e!183460))))

(declare-datatypes ((SeekEntryResult!2086 0))(
  ( (MissingZero!2086 (index!10514 (_ BitVec 32))) (Found!2086 (index!10515 (_ BitVec 32))) (Intermediate!2086 (undefined!2898 Bool) (index!10516 (_ BitVec 32)) (x!28683 (_ BitVec 32))) (Undefined!2086) (MissingVacant!2086 (index!10517 (_ BitVec 32))) )
))
(declare-fun lt!143131 () SeekEntryResult!2086)

(declare-fun lt!143130 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289826 (= res!151346 (or lt!143130 (= lt!143131 (MissingVacant!2086 i!1256))))))

(assert (=> b!289826 (= lt!143130 (= lt!143131 (MissingZero!2086 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14599 (_ BitVec 32)) SeekEntryResult!2086)

(assert (=> b!289826 (= lt!143131 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!289827 () Bool)

(declare-fun res!151344 () Bool)

(assert (=> b!289827 (=> (not res!151344) (not e!183459))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289827 (= res!151344 (validKeyInArray!0 k0!2524))))

(declare-fun b!289828 () Bool)

(declare-fun res!151345 () Bool)

(assert (=> b!289828 (=> (not res!151345) (not e!183459))))

(assert (=> b!289828 (= res!151345 (and (= (size!7278 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7278 a!3312))))))

(declare-fun b!289829 () Bool)

(declare-fun res!151343 () Bool)

(assert (=> b!289829 (=> (not res!151343) (not e!183460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14599 (_ BitVec 32)) Bool)

(assert (=> b!289829 (= res!151343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289830 () Bool)

(assert (=> b!289830 (= e!183460 (and (not lt!143130) (bvslt mask!3809 #b00000000000000000000000000000000)))))

(declare-fun lt!143129 () (_ BitVec 32))

(declare-fun lt!143128 () SeekEntryResult!2086)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14599 (_ BitVec 32)) SeekEntryResult!2086)

(assert (=> b!289830 (= lt!143128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143129 k0!2524 (array!14600 (store (arr!6926 a!3312) i!1256 k0!2524) (size!7278 a!3312)) mask!3809))))

(declare-fun lt!143132 () SeekEntryResult!2086)

(assert (=> b!289830 (= lt!143132 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143129 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289830 (= lt!143129 (toIndex!0 k0!2524 mask!3809))))

(assert (= (and start!28296 res!151342) b!289828))

(assert (= (and b!289828 res!151345) b!289827))

(assert (= (and b!289827 res!151344) b!289825))

(assert (= (and b!289825 res!151347) b!289826))

(assert (= (and b!289826 res!151346) b!289829))

(assert (= (and b!289829 res!151343) b!289830))

(declare-fun m!303945 () Bool)

(assert (=> b!289827 m!303945))

(declare-fun m!303947 () Bool)

(assert (=> start!28296 m!303947))

(declare-fun m!303949 () Bool)

(assert (=> start!28296 m!303949))

(declare-fun m!303951 () Bool)

(assert (=> b!289830 m!303951))

(declare-fun m!303953 () Bool)

(assert (=> b!289830 m!303953))

(declare-fun m!303955 () Bool)

(assert (=> b!289830 m!303955))

(declare-fun m!303957 () Bool)

(assert (=> b!289830 m!303957))

(declare-fun m!303959 () Bool)

(assert (=> b!289826 m!303959))

(declare-fun m!303961 () Bool)

(assert (=> b!289825 m!303961))

(declare-fun m!303963 () Bool)

(assert (=> b!289829 m!303963))

(check-sat (not b!289827) (not start!28296) (not b!289826) (not b!289825) (not b!289830) (not b!289829))
(check-sat)
