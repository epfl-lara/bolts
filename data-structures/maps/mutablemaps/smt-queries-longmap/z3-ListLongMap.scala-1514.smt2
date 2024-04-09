; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28626 () Bool)

(assert start!28626)

(declare-fun b!292525 () Bool)

(declare-fun res!153622 () Bool)

(declare-fun e!185070 () Bool)

(assert (=> b!292525 (=> (not res!153622) (not e!185070))))

(declare-datatypes ((array!14794 0))(
  ( (array!14795 (arr!7019 (Array (_ BitVec 32) (_ BitVec 64))) (size!7371 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14794)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14794 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292525 (= res!153622 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292526 () Bool)

(declare-fun e!185071 () Bool)

(assert (=> b!292526 (= e!185070 e!185071)))

(declare-fun res!153620 () Bool)

(assert (=> b!292526 (=> (not res!153620) (not e!185071))))

(declare-datatypes ((SeekEntryResult!2179 0))(
  ( (MissingZero!2179 (index!10886 (_ BitVec 32))) (Found!2179 (index!10887 (_ BitVec 32))) (Intermediate!2179 (undefined!2991 Bool) (index!10888 (_ BitVec 32)) (x!29042 (_ BitVec 32))) (Undefined!2179) (MissingVacant!2179 (index!10889 (_ BitVec 32))) )
))
(declare-fun lt!144952 () SeekEntryResult!2179)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292526 (= res!153620 (or (= lt!144952 (MissingZero!2179 i!1256)) (= lt!144952 (MissingVacant!2179 i!1256))))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14794 (_ BitVec 32)) SeekEntryResult!2179)

(assert (=> b!292526 (= lt!144952 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!292527 () Bool)

(assert (=> b!292527 (= e!185071 false)))

(declare-fun lt!144950 () (_ BitVec 32))

(declare-fun lt!144953 () SeekEntryResult!2179)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14794 (_ BitVec 32)) SeekEntryResult!2179)

(assert (=> b!292527 (= lt!144953 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144950 k0!2524 (array!14795 (store (arr!7019 a!3312) i!1256 k0!2524) (size!7371 a!3312)) mask!3809))))

(declare-fun lt!144951 () SeekEntryResult!2179)

(assert (=> b!292527 (= lt!144951 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144950 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292527 (= lt!144950 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!292528 () Bool)

(declare-fun res!153624 () Bool)

(assert (=> b!292528 (=> (not res!153624) (not e!185071))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14794 (_ BitVec 32)) Bool)

(assert (=> b!292528 (= res!153624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292529 () Bool)

(declare-fun res!153623 () Bool)

(assert (=> b!292529 (=> (not res!153623) (not e!185070))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292529 (= res!153623 (validKeyInArray!0 k0!2524))))

(declare-fun res!153621 () Bool)

(assert (=> start!28626 (=> (not res!153621) (not e!185070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28626 (= res!153621 (validMask!0 mask!3809))))

(assert (=> start!28626 e!185070))

(assert (=> start!28626 true))

(declare-fun array_inv!4973 (array!14794) Bool)

(assert (=> start!28626 (array_inv!4973 a!3312)))

(declare-fun b!292530 () Bool)

(declare-fun res!153619 () Bool)

(assert (=> b!292530 (=> (not res!153619) (not e!185070))))

(assert (=> b!292530 (= res!153619 (and (= (size!7371 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7371 a!3312))))))

(assert (= (and start!28626 res!153621) b!292530))

(assert (= (and b!292530 res!153619) b!292529))

(assert (= (and b!292529 res!153623) b!292525))

(assert (= (and b!292525 res!153622) b!292526))

(assert (= (and b!292526 res!153620) b!292528))

(assert (= (and b!292528 res!153624) b!292527))

(declare-fun m!306315 () Bool)

(assert (=> b!292526 m!306315))

(declare-fun m!306317 () Bool)

(assert (=> b!292527 m!306317))

(declare-fun m!306319 () Bool)

(assert (=> b!292527 m!306319))

(declare-fun m!306321 () Bool)

(assert (=> b!292527 m!306321))

(declare-fun m!306323 () Bool)

(assert (=> b!292527 m!306323))

(declare-fun m!306325 () Bool)

(assert (=> start!28626 m!306325))

(declare-fun m!306327 () Bool)

(assert (=> start!28626 m!306327))

(declare-fun m!306329 () Bool)

(assert (=> b!292525 m!306329))

(declare-fun m!306331 () Bool)

(assert (=> b!292528 m!306331))

(declare-fun m!306333 () Bool)

(assert (=> b!292529 m!306333))

(check-sat (not b!292526) (not b!292528) (not b!292527) (not start!28626) (not b!292529) (not b!292525))
(check-sat)
