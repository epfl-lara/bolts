; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28314 () Bool)

(assert start!28314)

(declare-fun b!289987 () Bool)

(declare-fun e!183540 () Bool)

(declare-fun e!183539 () Bool)

(assert (=> b!289987 (= e!183540 e!183539)))

(declare-fun res!151507 () Bool)

(assert (=> b!289987 (=> (not res!151507) (not e!183539))))

(declare-datatypes ((SeekEntryResult!2095 0))(
  ( (MissingZero!2095 (index!10550 (_ BitVec 32))) (Found!2095 (index!10551 (_ BitVec 32))) (Intermediate!2095 (undefined!2907 Bool) (index!10552 (_ BitVec 32)) (x!28716 (_ BitVec 32))) (Undefined!2095) (MissingVacant!2095 (index!10553 (_ BitVec 32))) )
))
(declare-fun lt!143241 () SeekEntryResult!2095)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!289987 (= res!151507 (or (= lt!143241 (MissingZero!2095 i!1256)) (= lt!143241 (MissingVacant!2095 i!1256))))))

(declare-datatypes ((array!14617 0))(
  ( (array!14618 (arr!6935 (Array (_ BitVec 32) (_ BitVec 64))) (size!7287 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14617)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14617 (_ BitVec 32)) SeekEntryResult!2095)

(assert (=> b!289987 (= lt!143241 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!289988 () Bool)

(declare-fun res!151506 () Bool)

(assert (=> b!289988 (=> (not res!151506) (not e!183540))))

(assert (=> b!289988 (= res!151506 (and (= (size!7287 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7287 a!3312))))))

(declare-fun b!289989 () Bool)

(declare-fun res!151508 () Bool)

(assert (=> b!289989 (=> (not res!151508) (not e!183540))))

(declare-fun arrayContainsKey!0 (array!14617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289989 (= res!151508 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289990 () Bool)

(declare-fun res!151504 () Bool)

(assert (=> b!289990 (=> (not res!151504) (not e!183539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14617 (_ BitVec 32)) Bool)

(assert (=> b!289990 (= res!151504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289991 () Bool)

(declare-fun res!151509 () Bool)

(assert (=> b!289991 (=> (not res!151509) (not e!183540))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289991 (= res!151509 (validKeyInArray!0 k0!2524))))

(declare-fun res!151505 () Bool)

(assert (=> start!28314 (=> (not res!151505) (not e!183540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28314 (= res!151505 (validMask!0 mask!3809))))

(assert (=> start!28314 e!183540))

(assert (=> start!28314 true))

(declare-fun array_inv!4889 (array!14617) Bool)

(assert (=> start!28314 (array_inv!4889 a!3312)))

(declare-fun b!289992 () Bool)

(assert (=> b!289992 (= e!183539 false)))

(declare-fun lt!143240 () SeekEntryResult!2095)

(declare-fun lt!143243 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14617 (_ BitVec 32)) SeekEntryResult!2095)

(assert (=> b!289992 (= lt!143240 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143243 k0!2524 (array!14618 (store (arr!6935 a!3312) i!1256 k0!2524) (size!7287 a!3312)) mask!3809))))

(declare-fun lt!143242 () SeekEntryResult!2095)

(assert (=> b!289992 (= lt!143242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143243 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289992 (= lt!143243 (toIndex!0 k0!2524 mask!3809))))

(assert (= (and start!28314 res!151505) b!289988))

(assert (= (and b!289988 res!151506) b!289991))

(assert (= (and b!289991 res!151509) b!289989))

(assert (= (and b!289989 res!151508) b!289987))

(assert (= (and b!289987 res!151507) b!289990))

(assert (= (and b!289990 res!151504) b!289992))

(declare-fun m!304125 () Bool)

(assert (=> b!289992 m!304125))

(declare-fun m!304127 () Bool)

(assert (=> b!289992 m!304127))

(declare-fun m!304129 () Bool)

(assert (=> b!289992 m!304129))

(declare-fun m!304131 () Bool)

(assert (=> b!289992 m!304131))

(declare-fun m!304133 () Bool)

(assert (=> start!28314 m!304133))

(declare-fun m!304135 () Bool)

(assert (=> start!28314 m!304135))

(declare-fun m!304137 () Bool)

(assert (=> b!289991 m!304137))

(declare-fun m!304139 () Bool)

(assert (=> b!289989 m!304139))

(declare-fun m!304141 () Bool)

(assert (=> b!289990 m!304141))

(declare-fun m!304143 () Bool)

(assert (=> b!289987 m!304143))

(check-sat (not b!289987) (not start!28314) (not b!289991) (not b!289989) (not b!289992) (not b!289990))
(check-sat)
