; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29144 () Bool)

(assert start!29144)

(declare-fun b!295511 () Bool)

(declare-fun res!155438 () Bool)

(declare-fun e!186790 () Bool)

(assert (=> b!295511 (=> (not res!155438) (not e!186790))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14944 0))(
  ( (array!14945 (arr!7082 (Array (_ BitVec 32) (_ BitVec 64))) (size!7434 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14944)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!295511 (= res!155438 (and (= (size!7434 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7434 a!3312))))))

(declare-fun b!295512 () Bool)

(declare-fun e!186791 () Bool)

(declare-fun e!186794 () Bool)

(assert (=> b!295512 (= e!186791 e!186794)))

(declare-fun res!155434 () Bool)

(assert (=> b!295512 (=> (not res!155434) (not e!186794))))

(declare-fun lt!146611 () Bool)

(assert (=> b!295512 (= res!155434 lt!146611)))

(declare-datatypes ((SeekEntryResult!2242 0))(
  ( (MissingZero!2242 (index!11138 (_ BitVec 32))) (Found!2242 (index!11139 (_ BitVec 32))) (Intermediate!2242 (undefined!3054 Bool) (index!11140 (_ BitVec 32)) (x!29323 (_ BitVec 32))) (Undefined!2242) (MissingVacant!2242 (index!11141 (_ BitVec 32))) )
))
(declare-fun lt!146612 () SeekEntryResult!2242)

(declare-fun lt!146610 () (_ BitVec 32))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14944 (_ BitVec 32)) SeekEntryResult!2242)

(assert (=> b!295512 (= lt!146612 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146610 k0!2524 (array!14945 (store (arr!7082 a!3312) i!1256 k0!2524) (size!7434 a!3312)) mask!3809))))

(declare-fun lt!146615 () SeekEntryResult!2242)

(assert (=> b!295512 (= lt!146615 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146610 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295512 (= lt!146610 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!295513 () Bool)

(declare-fun e!186792 () Bool)

(assert (=> b!295513 (= e!186794 e!186792)))

(declare-fun res!155435 () Bool)

(assert (=> b!295513 (=> (not res!155435) (not e!186792))))

(declare-fun lt!146613 () Bool)

(assert (=> b!295513 (= res!155435 (and (or lt!146613 (not (undefined!3054 lt!146615))) (or lt!146613 (not (= (select (arr!7082 a!3312) (index!11140 lt!146615)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146613 (not (= (select (arr!7082 a!3312) (index!11140 lt!146615)) k0!2524))) (not lt!146613)))))

(get-info :version)

(assert (=> b!295513 (= lt!146613 (not ((_ is Intermediate!2242) lt!146615)))))

(declare-fun b!295514 () Bool)

(assert (=> b!295514 (= e!186792 (not true))))

(assert (=> b!295514 (and (= (select (arr!7082 a!3312) (index!11140 lt!146615)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11140 lt!146615) i!1256))))

(declare-fun b!295515 () Bool)

(assert (=> b!295515 (= e!186790 e!186791)))

(declare-fun res!155436 () Bool)

(assert (=> b!295515 (=> (not res!155436) (not e!186791))))

(declare-fun lt!146614 () SeekEntryResult!2242)

(assert (=> b!295515 (= res!155436 (or lt!146611 (= lt!146614 (MissingVacant!2242 i!1256))))))

(assert (=> b!295515 (= lt!146611 (= lt!146614 (MissingZero!2242 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14944 (_ BitVec 32)) SeekEntryResult!2242)

(assert (=> b!295515 (= lt!146614 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!295516 () Bool)

(declare-fun res!155432 () Bool)

(assert (=> b!295516 (=> (not res!155432) (not e!186790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295516 (= res!155432 (validKeyInArray!0 k0!2524))))

(declare-fun b!295517 () Bool)

(declare-fun res!155439 () Bool)

(assert (=> b!295517 (=> (not res!155439) (not e!186790))))

(declare-fun arrayContainsKey!0 (array!14944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295517 (= res!155439 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!155433 () Bool)

(assert (=> start!29144 (=> (not res!155433) (not e!186790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29144 (= res!155433 (validMask!0 mask!3809))))

(assert (=> start!29144 e!186790))

(assert (=> start!29144 true))

(declare-fun array_inv!5036 (array!14944) Bool)

(assert (=> start!29144 (array_inv!5036 a!3312)))

(declare-fun b!295510 () Bool)

(declare-fun res!155437 () Bool)

(assert (=> b!295510 (=> (not res!155437) (not e!186791))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14944 (_ BitVec 32)) Bool)

(assert (=> b!295510 (= res!155437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29144 res!155433) b!295511))

(assert (= (and b!295511 res!155438) b!295516))

(assert (= (and b!295516 res!155432) b!295517))

(assert (= (and b!295517 res!155439) b!295515))

(assert (= (and b!295515 res!155436) b!295510))

(assert (= (and b!295510 res!155437) b!295512))

(assert (= (and b!295512 res!155434) b!295513))

(assert (= (and b!295513 res!155435) b!295514))

(declare-fun m!308637 () Bool)

(assert (=> b!295515 m!308637))

(declare-fun m!308639 () Bool)

(assert (=> b!295513 m!308639))

(declare-fun m!308641 () Bool)

(assert (=> start!29144 m!308641))

(declare-fun m!308643 () Bool)

(assert (=> start!29144 m!308643))

(declare-fun m!308645 () Bool)

(assert (=> b!295512 m!308645))

(declare-fun m!308647 () Bool)

(assert (=> b!295512 m!308647))

(declare-fun m!308649 () Bool)

(assert (=> b!295512 m!308649))

(declare-fun m!308651 () Bool)

(assert (=> b!295512 m!308651))

(declare-fun m!308653 () Bool)

(assert (=> b!295516 m!308653))

(declare-fun m!308655 () Bool)

(assert (=> b!295510 m!308655))

(assert (=> b!295514 m!308639))

(declare-fun m!308657 () Bool)

(assert (=> b!295517 m!308657))

(check-sat (not b!295512) (not b!295510) (not b!295517) (not start!29144) (not b!295516) (not b!295515))
(check-sat)
