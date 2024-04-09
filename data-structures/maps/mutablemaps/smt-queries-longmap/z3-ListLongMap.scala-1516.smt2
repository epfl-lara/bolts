; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28638 () Bool)

(assert start!28638)

(declare-fun b!292633 () Bool)

(declare-fun res!153731 () Bool)

(declare-fun e!185123 () Bool)

(assert (=> b!292633 (=> (not res!153731) (not e!185123))))

(declare-datatypes ((array!14806 0))(
  ( (array!14807 (arr!7025 (Array (_ BitVec 32) (_ BitVec 64))) (size!7377 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14806)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14806 (_ BitVec 32)) Bool)

(assert (=> b!292633 (= res!153731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!153728 () Bool)

(declare-fun e!185124 () Bool)

(assert (=> start!28638 (=> (not res!153728) (not e!185124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28638 (= res!153728 (validMask!0 mask!3809))))

(assert (=> start!28638 e!185124))

(assert (=> start!28638 true))

(declare-fun array_inv!4979 (array!14806) Bool)

(assert (=> start!28638 (array_inv!4979 a!3312)))

(declare-fun b!292634 () Bool)

(declare-fun res!153727 () Bool)

(assert (=> b!292634 (=> (not res!153727) (not e!185124))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292634 (= res!153727 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292635 () Bool)

(declare-fun res!153729 () Bool)

(assert (=> b!292635 (=> (not res!153729) (not e!185124))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292635 (= res!153729 (and (= (size!7377 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7377 a!3312))))))

(declare-fun b!292636 () Bool)

(declare-fun res!153732 () Bool)

(assert (=> b!292636 (=> (not res!153732) (not e!185124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292636 (= res!153732 (validKeyInArray!0 k0!2524))))

(declare-fun b!292637 () Bool)

(assert (=> b!292637 (= e!185124 e!185123)))

(declare-fun res!153730 () Bool)

(assert (=> b!292637 (=> (not res!153730) (not e!185123))))

(declare-datatypes ((SeekEntryResult!2185 0))(
  ( (MissingZero!2185 (index!10910 (_ BitVec 32))) (Found!2185 (index!10911 (_ BitVec 32))) (Intermediate!2185 (undefined!2997 Bool) (index!10912 (_ BitVec 32)) (x!29064 (_ BitVec 32))) (Undefined!2185) (MissingVacant!2185 (index!10913 (_ BitVec 32))) )
))
(declare-fun lt!145024 () SeekEntryResult!2185)

(assert (=> b!292637 (= res!153730 (or (= lt!145024 (MissingZero!2185 i!1256)) (= lt!145024 (MissingVacant!2185 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14806 (_ BitVec 32)) SeekEntryResult!2185)

(assert (=> b!292637 (= lt!145024 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!292638 () Bool)

(assert (=> b!292638 (= e!185123 false)))

(declare-fun lt!145022 () (_ BitVec 32))

(declare-fun lt!145023 () SeekEntryResult!2185)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14806 (_ BitVec 32)) SeekEntryResult!2185)

(assert (=> b!292638 (= lt!145023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145022 k0!2524 (array!14807 (store (arr!7025 a!3312) i!1256 k0!2524) (size!7377 a!3312)) mask!3809))))

(declare-fun lt!145025 () SeekEntryResult!2185)

(assert (=> b!292638 (= lt!145025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145022 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292638 (= lt!145022 (toIndex!0 k0!2524 mask!3809))))

(assert (= (and start!28638 res!153728) b!292635))

(assert (= (and b!292635 res!153729) b!292636))

(assert (= (and b!292636 res!153732) b!292634))

(assert (= (and b!292634 res!153727) b!292637))

(assert (= (and b!292637 res!153730) b!292633))

(assert (= (and b!292633 res!153731) b!292638))

(declare-fun m!306435 () Bool)

(assert (=> b!292636 m!306435))

(declare-fun m!306437 () Bool)

(assert (=> b!292638 m!306437))

(declare-fun m!306439 () Bool)

(assert (=> b!292638 m!306439))

(declare-fun m!306441 () Bool)

(assert (=> b!292638 m!306441))

(declare-fun m!306443 () Bool)

(assert (=> b!292638 m!306443))

(declare-fun m!306445 () Bool)

(assert (=> start!28638 m!306445))

(declare-fun m!306447 () Bool)

(assert (=> start!28638 m!306447))

(declare-fun m!306449 () Bool)

(assert (=> b!292633 m!306449))

(declare-fun m!306451 () Bool)

(assert (=> b!292634 m!306451))

(declare-fun m!306453 () Bool)

(assert (=> b!292637 m!306453))

(check-sat (not b!292633) (not b!292634) (not b!292638) (not b!292637) (not b!292636) (not start!28638))
(check-sat)
