; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29954 () Bool)

(assert start!29954)

(declare-fun b!300712 () Bool)

(declare-fun e!189873 () Bool)

(declare-fun e!189872 () Bool)

(assert (=> b!300712 (= e!189873 e!189872)))

(declare-fun res!158620 () Bool)

(assert (=> b!300712 (=> (not res!158620) (not e!189872))))

(declare-datatypes ((SeekEntryResult!2347 0))(
  ( (MissingZero!2347 (index!11564 (_ BitVec 32))) (Found!2347 (index!11565 (_ BitVec 32))) (Intermediate!2347 (undefined!3159 Bool) (index!11566 (_ BitVec 32)) (x!29790 (_ BitVec 32))) (Undefined!2347) (MissingVacant!2347 (index!11567 (_ BitVec 32))) )
))
(declare-fun lt!149673 () SeekEntryResult!2347)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!300712 (= res!158620 (or (= lt!149673 (MissingZero!2347 i!1256)) (= lt!149673 (MissingVacant!2347 i!1256))))))

(declare-datatypes ((array!15190 0))(
  ( (array!15191 (arr!7187 (Array (_ BitVec 32) (_ BitVec 64))) (size!7539 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15190)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15190 (_ BitVec 32)) SeekEntryResult!2347)

(assert (=> b!300712 (= lt!149673 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!300714 () Bool)

(declare-fun res!158622 () Bool)

(assert (=> b!300714 (=> (not res!158622) (not e!189873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300714 (= res!158622 (validKeyInArray!0 k0!2524))))

(declare-fun b!300715 () Bool)

(declare-fun res!158624 () Bool)

(assert (=> b!300715 (=> (not res!158624) (not e!189873))))

(declare-fun arrayContainsKey!0 (array!15190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300715 (= res!158624 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300716 () Bool)

(assert (=> b!300716 (= e!189872 false)))

(declare-fun lt!149672 () SeekEntryResult!2347)

(declare-fun lt!149674 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15190 (_ BitVec 32)) SeekEntryResult!2347)

(assert (=> b!300716 (= lt!149672 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149674 k0!2524 (array!15191 (store (arr!7187 a!3312) i!1256 k0!2524) (size!7539 a!3312)) mask!3809))))

(declare-fun lt!149675 () SeekEntryResult!2347)

(assert (=> b!300716 (= lt!149675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149674 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300716 (= lt!149674 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!300717 () Bool)

(declare-fun res!158621 () Bool)

(assert (=> b!300717 (=> (not res!158621) (not e!189873))))

(assert (=> b!300717 (= res!158621 (and (= (size!7539 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7539 a!3312))))))

(declare-fun res!158623 () Bool)

(assert (=> start!29954 (=> (not res!158623) (not e!189873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29954 (= res!158623 (validMask!0 mask!3809))))

(assert (=> start!29954 e!189873))

(assert (=> start!29954 true))

(declare-fun array_inv!5141 (array!15190) Bool)

(assert (=> start!29954 (array_inv!5141 a!3312)))

(declare-fun b!300713 () Bool)

(declare-fun res!158625 () Bool)

(assert (=> b!300713 (=> (not res!158625) (not e!189872))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15190 (_ BitVec 32)) Bool)

(assert (=> b!300713 (= res!158625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29954 res!158623) b!300717))

(assert (= (and b!300717 res!158621) b!300714))

(assert (= (and b!300714 res!158622) b!300715))

(assert (= (and b!300715 res!158624) b!300712))

(assert (= (and b!300712 res!158620) b!300713))

(assert (= (and b!300713 res!158625) b!300716))

(declare-fun m!312639 () Bool)

(assert (=> b!300716 m!312639))

(declare-fun m!312641 () Bool)

(assert (=> b!300716 m!312641))

(declare-fun m!312643 () Bool)

(assert (=> b!300716 m!312643))

(declare-fun m!312645 () Bool)

(assert (=> b!300716 m!312645))

(declare-fun m!312647 () Bool)

(assert (=> b!300713 m!312647))

(declare-fun m!312649 () Bool)

(assert (=> start!29954 m!312649))

(declare-fun m!312651 () Bool)

(assert (=> start!29954 m!312651))

(declare-fun m!312653 () Bool)

(assert (=> b!300712 m!312653))

(declare-fun m!312655 () Bool)

(assert (=> b!300714 m!312655))

(declare-fun m!312657 () Bool)

(assert (=> b!300715 m!312657))

(check-sat (not b!300716) (not b!300714) (not b!300712) (not start!29954) (not b!300715) (not b!300713))
(check-sat)
