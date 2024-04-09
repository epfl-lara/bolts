; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28650 () Bool)

(assert start!28650)

(declare-fun b!292741 () Bool)

(declare-fun res!153840 () Bool)

(declare-fun e!185177 () Bool)

(assert (=> b!292741 (=> (not res!153840) (not e!185177))))

(declare-datatypes ((array!14818 0))(
  ( (array!14819 (arr!7031 (Array (_ BitVec 32) (_ BitVec 64))) (size!7383 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14818)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14818 (_ BitVec 32)) Bool)

(assert (=> b!292741 (= res!153840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!153838 () Bool)

(declare-fun e!185179 () Bool)

(assert (=> start!28650 (=> (not res!153838) (not e!185179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28650 (= res!153838 (validMask!0 mask!3809))))

(assert (=> start!28650 e!185179))

(assert (=> start!28650 true))

(declare-fun array_inv!4985 (array!14818) Bool)

(assert (=> start!28650 (array_inv!4985 a!3312)))

(declare-fun b!292742 () Bool)

(assert (=> b!292742 (= e!185179 e!185177)))

(declare-fun res!153837 () Bool)

(assert (=> b!292742 (=> (not res!153837) (not e!185177))))

(declare-datatypes ((SeekEntryResult!2191 0))(
  ( (MissingZero!2191 (index!10934 (_ BitVec 32))) (Found!2191 (index!10935 (_ BitVec 32))) (Intermediate!2191 (undefined!3003 Bool) (index!10936 (_ BitVec 32)) (x!29086 (_ BitVec 32))) (Undefined!2191) (MissingVacant!2191 (index!10937 (_ BitVec 32))) )
))
(declare-fun lt!145097 () SeekEntryResult!2191)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292742 (= res!153837 (or (= lt!145097 (MissingZero!2191 i!1256)) (= lt!145097 (MissingVacant!2191 i!1256))))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14818 (_ BitVec 32)) SeekEntryResult!2191)

(assert (=> b!292742 (= lt!145097 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!292743 () Bool)

(declare-fun res!153839 () Bool)

(assert (=> b!292743 (=> (not res!153839) (not e!185179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292743 (= res!153839 (validKeyInArray!0 k0!2524))))

(declare-fun b!292744 () Bool)

(declare-fun res!153835 () Bool)

(assert (=> b!292744 (=> (not res!153835) (not e!185179))))

(assert (=> b!292744 (= res!153835 (and (= (size!7383 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7383 a!3312))))))

(declare-fun b!292745 () Bool)

(declare-fun res!153836 () Bool)

(assert (=> b!292745 (=> (not res!153836) (not e!185179))))

(declare-fun arrayContainsKey!0 (array!14818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292745 (= res!153836 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292746 () Bool)

(assert (=> b!292746 (= e!185177 false)))

(declare-fun lt!145094 () SeekEntryResult!2191)

(declare-fun lt!145096 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14818 (_ BitVec 32)) SeekEntryResult!2191)

(assert (=> b!292746 (= lt!145094 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145096 k0!2524 (array!14819 (store (arr!7031 a!3312) i!1256 k0!2524) (size!7383 a!3312)) mask!3809))))

(declare-fun lt!145095 () SeekEntryResult!2191)

(assert (=> b!292746 (= lt!145095 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145096 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292746 (= lt!145096 (toIndex!0 k0!2524 mask!3809))))

(assert (= (and start!28650 res!153838) b!292744))

(assert (= (and b!292744 res!153835) b!292743))

(assert (= (and b!292743 res!153839) b!292745))

(assert (= (and b!292745 res!153836) b!292742))

(assert (= (and b!292742 res!153837) b!292741))

(assert (= (and b!292741 res!153840) b!292746))

(declare-fun m!306555 () Bool)

(assert (=> b!292742 m!306555))

(declare-fun m!306557 () Bool)

(assert (=> b!292741 m!306557))

(declare-fun m!306559 () Bool)

(assert (=> start!28650 m!306559))

(declare-fun m!306561 () Bool)

(assert (=> start!28650 m!306561))

(declare-fun m!306563 () Bool)

(assert (=> b!292745 m!306563))

(declare-fun m!306565 () Bool)

(assert (=> b!292746 m!306565))

(declare-fun m!306567 () Bool)

(assert (=> b!292746 m!306567))

(declare-fun m!306569 () Bool)

(assert (=> b!292746 m!306569))

(declare-fun m!306571 () Bool)

(assert (=> b!292746 m!306571))

(declare-fun m!306573 () Bool)

(assert (=> b!292743 m!306573))

(check-sat (not b!292743) (not b!292742) (not start!28650) (not b!292745) (not b!292741) (not b!292746))
(check-sat)
