; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28116 () Bool)

(assert start!28116)

(declare-fun b!287945 () Bool)

(declare-fun res!149752 () Bool)

(declare-fun e!182332 () Bool)

(assert (=> b!287945 (=> (not res!149752) (not e!182332))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287945 (= res!149752 (validKeyInArray!0 k0!2524))))

(declare-fun b!287946 () Bool)

(declare-fun res!149749 () Bool)

(assert (=> b!287946 (=> (not res!149749) (not e!182332))))

(declare-datatypes ((array!14464 0))(
  ( (array!14465 (arr!6860 (Array (_ BitVec 32) (_ BitVec 64))) (size!7212 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14464)

(declare-fun arrayContainsKey!0 (array!14464 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287946 (= res!149749 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287947 () Bool)

(declare-fun res!149754 () Bool)

(declare-fun e!182331 () Bool)

(assert (=> b!287947 (=> (not res!149754) (not e!182331))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14464 (_ BitVec 32)) Bool)

(assert (=> b!287947 (= res!149754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287948 () Bool)

(assert (=> b!287948 (= e!182332 e!182331)))

(declare-fun res!149750 () Bool)

(assert (=> b!287948 (=> (not res!149750) (not e!182331))))

(declare-fun lt!141834 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2020 0))(
  ( (MissingZero!2020 (index!10250 (_ BitVec 32))) (Found!2020 (index!10251 (_ BitVec 32))) (Intermediate!2020 (undefined!2832 Bool) (index!10252 (_ BitVec 32)) (x!28435 (_ BitVec 32))) (Undefined!2020) (MissingVacant!2020 (index!10253 (_ BitVec 32))) )
))
(declare-fun lt!141836 () SeekEntryResult!2020)

(assert (=> b!287948 (= res!149750 (or lt!141834 (= lt!141836 (MissingVacant!2020 i!1256))))))

(assert (=> b!287948 (= lt!141834 (= lt!141836 (MissingZero!2020 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14464 (_ BitVec 32)) SeekEntryResult!2020)

(assert (=> b!287948 (= lt!141836 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!287949 () Bool)

(declare-fun e!182329 () Bool)

(assert (=> b!287949 (= e!182331 e!182329)))

(declare-fun res!149747 () Bool)

(assert (=> b!287949 (=> (not res!149747) (not e!182329))))

(assert (=> b!287949 (= res!149747 lt!141834)))

(declare-fun lt!141835 () SeekEntryResult!2020)

(declare-fun lt!141833 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14464 (_ BitVec 32)) SeekEntryResult!2020)

(assert (=> b!287949 (= lt!141835 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141833 k0!2524 (array!14465 (store (arr!6860 a!3312) i!1256 k0!2524) (size!7212 a!3312)) mask!3809))))

(declare-fun lt!141831 () SeekEntryResult!2020)

(assert (=> b!287949 (= lt!141831 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141833 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287949 (= lt!141833 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!287951 () Bool)

(declare-fun res!149751 () Bool)

(assert (=> b!287951 (=> (not res!149751) (not e!182332))))

(assert (=> b!287951 (= res!149751 (and (= (size!7212 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7212 a!3312))))))

(declare-fun b!287952 () Bool)

(declare-fun e!182328 () Bool)

(assert (=> b!287952 (= e!182328 (not (bvsge mask!3809 #b00000000000000000000000000000000)))))

(assert (=> b!287952 (and (= (select (arr!6860 a!3312) (index!10252 lt!141831)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10252 lt!141831) i!1256))))

(declare-fun res!149753 () Bool)

(assert (=> start!28116 (=> (not res!149753) (not e!182332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28116 (= res!149753 (validMask!0 mask!3809))))

(assert (=> start!28116 e!182332))

(assert (=> start!28116 true))

(declare-fun array_inv!4814 (array!14464) Bool)

(assert (=> start!28116 (array_inv!4814 a!3312)))

(declare-fun b!287950 () Bool)

(assert (=> b!287950 (= e!182329 e!182328)))

(declare-fun res!149748 () Bool)

(assert (=> b!287950 (=> (not res!149748) (not e!182328))))

(declare-fun lt!141832 () Bool)

(assert (=> b!287950 (= res!149748 (and (or lt!141832 (not (undefined!2832 lt!141831))) (or lt!141832 (not (= (select (arr!6860 a!3312) (index!10252 lt!141831)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!141832 (not (= (select (arr!6860 a!3312) (index!10252 lt!141831)) k0!2524))) (not lt!141832)))))

(get-info :version)

(assert (=> b!287950 (= lt!141832 (not ((_ is Intermediate!2020) lt!141831)))))

(assert (= (and start!28116 res!149753) b!287951))

(assert (= (and b!287951 res!149751) b!287945))

(assert (= (and b!287945 res!149752) b!287946))

(assert (= (and b!287946 res!149749) b!287948))

(assert (= (and b!287948 res!149750) b!287947))

(assert (= (and b!287947 res!149754) b!287949))

(assert (= (and b!287949 res!149747) b!287950))

(assert (= (and b!287950 res!149748) b!287952))

(declare-fun m!302333 () Bool)

(assert (=> b!287945 m!302333))

(declare-fun m!302335 () Bool)

(assert (=> b!287947 m!302335))

(declare-fun m!302337 () Bool)

(assert (=> b!287952 m!302337))

(declare-fun m!302339 () Bool)

(assert (=> b!287946 m!302339))

(declare-fun m!302341 () Bool)

(assert (=> start!28116 m!302341))

(declare-fun m!302343 () Bool)

(assert (=> start!28116 m!302343))

(declare-fun m!302345 () Bool)

(assert (=> b!287948 m!302345))

(assert (=> b!287950 m!302337))

(declare-fun m!302347 () Bool)

(assert (=> b!287949 m!302347))

(declare-fun m!302349 () Bool)

(assert (=> b!287949 m!302349))

(declare-fun m!302351 () Bool)

(assert (=> b!287949 m!302351))

(declare-fun m!302353 () Bool)

(assert (=> b!287949 m!302353))

(check-sat (not b!287947) (not b!287945) (not b!287946) (not start!28116) (not b!287948) (not b!287949))
(check-sat)
