; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28656 () Bool)

(assert start!28656)

(declare-fun b!292795 () Bool)

(declare-fun res!153894 () Bool)

(declare-fun e!185204 () Bool)

(assert (=> b!292795 (=> (not res!153894) (not e!185204))))

(declare-datatypes ((array!14824 0))(
  ( (array!14825 (arr!7034 (Array (_ BitVec 32) (_ BitVec 64))) (size!7386 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14824)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14824 (_ BitVec 32)) Bool)

(assert (=> b!292795 (= res!153894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292796 () Bool)

(declare-fun res!153891 () Bool)

(declare-fun e!185206 () Bool)

(assert (=> b!292796 (=> (not res!153891) (not e!185206))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292796 (= res!153891 (validKeyInArray!0 k0!2524))))

(declare-fun res!153893 () Bool)

(assert (=> start!28656 (=> (not res!153893) (not e!185206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28656 (= res!153893 (validMask!0 mask!3809))))

(assert (=> start!28656 e!185206))

(assert (=> start!28656 true))

(declare-fun array_inv!4988 (array!14824) Bool)

(assert (=> start!28656 (array_inv!4988 a!3312)))

(declare-fun b!292797 () Bool)

(declare-fun res!153889 () Bool)

(assert (=> b!292797 (=> (not res!153889) (not e!185206))))

(declare-fun arrayContainsKey!0 (array!14824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292797 (= res!153889 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292798 () Bool)

(assert (=> b!292798 (= e!185204 false)))

(declare-fun lt!145133 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2194 0))(
  ( (MissingZero!2194 (index!10946 (_ BitVec 32))) (Found!2194 (index!10947 (_ BitVec 32))) (Intermediate!2194 (undefined!3006 Bool) (index!10948 (_ BitVec 32)) (x!29097 (_ BitVec 32))) (Undefined!2194) (MissingVacant!2194 (index!10949 (_ BitVec 32))) )
))
(declare-fun lt!145130 () SeekEntryResult!2194)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14824 (_ BitVec 32)) SeekEntryResult!2194)

(assert (=> b!292798 (= lt!145130 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145133 k0!2524 (array!14825 (store (arr!7034 a!3312) i!1256 k0!2524) (size!7386 a!3312)) mask!3809))))

(declare-fun lt!145131 () SeekEntryResult!2194)

(assert (=> b!292798 (= lt!145131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145133 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292798 (= lt!145133 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!292799 () Bool)

(assert (=> b!292799 (= e!185206 e!185204)))

(declare-fun res!153892 () Bool)

(assert (=> b!292799 (=> (not res!153892) (not e!185204))))

(declare-fun lt!145132 () SeekEntryResult!2194)

(assert (=> b!292799 (= res!153892 (or (= lt!145132 (MissingZero!2194 i!1256)) (= lt!145132 (MissingVacant!2194 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14824 (_ BitVec 32)) SeekEntryResult!2194)

(assert (=> b!292799 (= lt!145132 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!292800 () Bool)

(declare-fun res!153890 () Bool)

(assert (=> b!292800 (=> (not res!153890) (not e!185206))))

(assert (=> b!292800 (= res!153890 (and (= (size!7386 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7386 a!3312))))))

(assert (= (and start!28656 res!153893) b!292800))

(assert (= (and b!292800 res!153890) b!292796))

(assert (= (and b!292796 res!153891) b!292797))

(assert (= (and b!292797 res!153889) b!292799))

(assert (= (and b!292799 res!153892) b!292795))

(assert (= (and b!292795 res!153894) b!292798))

(declare-fun m!306615 () Bool)

(assert (=> b!292797 m!306615))

(declare-fun m!306617 () Bool)

(assert (=> b!292796 m!306617))

(declare-fun m!306619 () Bool)

(assert (=> b!292799 m!306619))

(declare-fun m!306621 () Bool)

(assert (=> b!292798 m!306621))

(declare-fun m!306623 () Bool)

(assert (=> b!292798 m!306623))

(declare-fun m!306625 () Bool)

(assert (=> b!292798 m!306625))

(declare-fun m!306627 () Bool)

(assert (=> b!292798 m!306627))

(declare-fun m!306629 () Bool)

(assert (=> b!292795 m!306629))

(declare-fun m!306631 () Bool)

(assert (=> start!28656 m!306631))

(declare-fun m!306633 () Bool)

(assert (=> start!28656 m!306633))

(check-sat (not start!28656) (not b!292799) (not b!292796) (not b!292798) (not b!292797) (not b!292795))
(check-sat)
