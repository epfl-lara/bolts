; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28404 () Bool)

(assert start!28404)

(declare-fun b!290645 () Bool)

(declare-fun res!152023 () Bool)

(declare-fun e!183924 () Bool)

(assert (=> b!290645 (=> (not res!152023) (not e!183924))))

(declare-datatypes ((array!14662 0))(
  ( (array!14663 (arr!6956 (Array (_ BitVec 32) (_ BitVec 64))) (size!7308 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14662)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14662 (_ BitVec 32)) Bool)

(assert (=> b!290645 (= res!152023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290647 () Bool)

(declare-fun e!183927 () Bool)

(declare-fun e!183928 () Bool)

(assert (=> b!290647 (= e!183927 e!183928)))

(declare-fun res!152027 () Bool)

(assert (=> b!290647 (=> (not res!152027) (not e!183928))))

(declare-datatypes ((SeekEntryResult!2116 0))(
  ( (MissingZero!2116 (index!10634 (_ BitVec 32))) (Found!2116 (index!10635 (_ BitVec 32))) (Intermediate!2116 (undefined!2928 Bool) (index!10636 (_ BitVec 32)) (x!28799 (_ BitVec 32))) (Undefined!2116) (MissingVacant!2116 (index!10637 (_ BitVec 32))) )
))
(declare-fun lt!143653 () SeekEntryResult!2116)

(declare-fun lt!143652 () Bool)

(assert (=> b!290647 (= res!152027 (and (or lt!143652 (not (undefined!2928 lt!143653))) (not lt!143652) (= (select (arr!6956 a!3312) (index!10636 lt!143653)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!290647 (= lt!143652 (not ((_ is Intermediate!2116) lt!143653)))))

(declare-fun b!290648 () Bool)

(declare-fun res!152026 () Bool)

(declare-fun e!183926 () Bool)

(assert (=> b!290648 (=> (not res!152026) (not e!183926))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290648 (= res!152026 (validKeyInArray!0 k0!2524))))

(declare-fun b!290649 () Bool)

(assert (=> b!290649 (= e!183924 e!183927)))

(declare-fun res!152025 () Bool)

(assert (=> b!290649 (=> (not res!152025) (not e!183927))))

(declare-fun lt!143656 () SeekEntryResult!2116)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143657 () Bool)

(assert (=> b!290649 (= res!152025 (and (not lt!143657) (= lt!143656 (MissingVacant!2116 i!1256))))))

(declare-fun lt!143655 () SeekEntryResult!2116)

(declare-fun lt!143654 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14662 (_ BitVec 32)) SeekEntryResult!2116)

(assert (=> b!290649 (= lt!143655 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143654 k0!2524 (array!14663 (store (arr!6956 a!3312) i!1256 k0!2524) (size!7308 a!3312)) mask!3809))))

(assert (=> b!290649 (= lt!143653 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143654 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290649 (= lt!143654 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!290650 () Bool)

(declare-fun res!152028 () Bool)

(assert (=> b!290650 (=> (not res!152028) (not e!183926))))

(declare-fun arrayContainsKey!0 (array!14662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290650 (= res!152028 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290651 () Bool)

(assert (=> b!290651 (= e!183926 e!183924)))

(declare-fun res!152022 () Bool)

(assert (=> b!290651 (=> (not res!152022) (not e!183924))))

(assert (=> b!290651 (= res!152022 (or lt!143657 (= lt!143656 (MissingVacant!2116 i!1256))))))

(assert (=> b!290651 (= lt!143657 (= lt!143656 (MissingZero!2116 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14662 (_ BitVec 32)) SeekEntryResult!2116)

(assert (=> b!290651 (= lt!143656 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!290652 () Bool)

(declare-fun res!152024 () Bool)

(assert (=> b!290652 (=> (not res!152024) (not e!183926))))

(assert (=> b!290652 (= res!152024 (and (= (size!7308 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7308 a!3312))))))

(declare-fun res!152021 () Bool)

(assert (=> start!28404 (=> (not res!152021) (not e!183926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28404 (= res!152021 (validMask!0 mask!3809))))

(assert (=> start!28404 e!183926))

(assert (=> start!28404 true))

(declare-fun array_inv!4910 (array!14662) Bool)

(assert (=> start!28404 (array_inv!4910 a!3312)))

(declare-fun b!290646 () Bool)

(assert (=> b!290646 (= e!183928 (not true))))

(assert (=> b!290646 (= (index!10636 lt!143653) i!1256)))

(assert (= (and start!28404 res!152021) b!290652))

(assert (= (and b!290652 res!152024) b!290648))

(assert (= (and b!290648 res!152026) b!290650))

(assert (= (and b!290650 res!152028) b!290651))

(assert (= (and b!290651 res!152022) b!290645))

(assert (= (and b!290645 res!152023) b!290649))

(assert (= (and b!290649 res!152025) b!290647))

(assert (= (and b!290647 res!152027) b!290646))

(declare-fun m!304685 () Bool)

(assert (=> b!290648 m!304685))

(declare-fun m!304687 () Bool)

(assert (=> start!28404 m!304687))

(declare-fun m!304689 () Bool)

(assert (=> start!28404 m!304689))

(declare-fun m!304691 () Bool)

(assert (=> b!290645 m!304691))

(declare-fun m!304693 () Bool)

(assert (=> b!290649 m!304693))

(declare-fun m!304695 () Bool)

(assert (=> b!290649 m!304695))

(declare-fun m!304697 () Bool)

(assert (=> b!290649 m!304697))

(declare-fun m!304699 () Bool)

(assert (=> b!290649 m!304699))

(declare-fun m!304701 () Bool)

(assert (=> b!290647 m!304701))

(declare-fun m!304703 () Bool)

(assert (=> b!290651 m!304703))

(declare-fun m!304705 () Bool)

(assert (=> b!290650 m!304705))

(check-sat (not b!290645) (not b!290650) (not start!28404) (not b!290649) (not b!290648) (not b!290651))
(check-sat)
