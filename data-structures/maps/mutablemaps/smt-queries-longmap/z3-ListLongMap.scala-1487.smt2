; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28320 () Bool)

(assert start!28320)

(declare-fun b!290041 () Bool)

(declare-fun res!151561 () Bool)

(declare-fun e!183567 () Bool)

(assert (=> b!290041 (=> (not res!151561) (not e!183567))))

(declare-datatypes ((array!14623 0))(
  ( (array!14624 (arr!6938 (Array (_ BitVec 32) (_ BitVec 64))) (size!7290 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14623)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14623 (_ BitVec 32)) Bool)

(assert (=> b!290041 (= res!151561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290042 () Bool)

(declare-fun res!151563 () Bool)

(declare-fun e!183568 () Bool)

(assert (=> b!290042 (=> (not res!151563) (not e!183568))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!290042 (= res!151563 (and (= (size!7290 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7290 a!3312))))))

(declare-fun b!290043 () Bool)

(assert (=> b!290043 (= e!183568 e!183567)))

(declare-fun res!151558 () Bool)

(assert (=> b!290043 (=> (not res!151558) (not e!183567))))

(declare-datatypes ((SeekEntryResult!2098 0))(
  ( (MissingZero!2098 (index!10562 (_ BitVec 32))) (Found!2098 (index!10563 (_ BitVec 32))) (Intermediate!2098 (undefined!2910 Bool) (index!10564 (_ BitVec 32)) (x!28727 (_ BitVec 32))) (Undefined!2098) (MissingVacant!2098 (index!10565 (_ BitVec 32))) )
))
(declare-fun lt!143276 () SeekEntryResult!2098)

(assert (=> b!290043 (= res!151558 (or (= lt!143276 (MissingZero!2098 i!1256)) (= lt!143276 (MissingVacant!2098 i!1256))))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14623 (_ BitVec 32)) SeekEntryResult!2098)

(assert (=> b!290043 (= lt!143276 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!290044 () Bool)

(declare-fun res!151560 () Bool)

(assert (=> b!290044 (=> (not res!151560) (not e!183568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290044 (= res!151560 (validKeyInArray!0 k0!2524))))

(declare-fun b!290046 () Bool)

(assert (=> b!290046 (= e!183567 false)))

(declare-fun lt!143277 () SeekEntryResult!2098)

(declare-fun lt!143279 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14623 (_ BitVec 32)) SeekEntryResult!2098)

(assert (=> b!290046 (= lt!143277 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143279 k0!2524 (array!14624 (store (arr!6938 a!3312) i!1256 k0!2524) (size!7290 a!3312)) mask!3809))))

(declare-fun lt!143278 () SeekEntryResult!2098)

(assert (=> b!290046 (= lt!143278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143279 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290046 (= lt!143279 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!290045 () Bool)

(declare-fun res!151559 () Bool)

(assert (=> b!290045 (=> (not res!151559) (not e!183568))))

(declare-fun arrayContainsKey!0 (array!14623 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290045 (= res!151559 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!151562 () Bool)

(assert (=> start!28320 (=> (not res!151562) (not e!183568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28320 (= res!151562 (validMask!0 mask!3809))))

(assert (=> start!28320 e!183568))

(assert (=> start!28320 true))

(declare-fun array_inv!4892 (array!14623) Bool)

(assert (=> start!28320 (array_inv!4892 a!3312)))

(assert (= (and start!28320 res!151562) b!290042))

(assert (= (and b!290042 res!151563) b!290044))

(assert (= (and b!290044 res!151560) b!290045))

(assert (= (and b!290045 res!151559) b!290043))

(assert (= (and b!290043 res!151558) b!290041))

(assert (= (and b!290041 res!151561) b!290046))

(declare-fun m!304185 () Bool)

(assert (=> b!290044 m!304185))

(declare-fun m!304187 () Bool)

(assert (=> start!28320 m!304187))

(declare-fun m!304189 () Bool)

(assert (=> start!28320 m!304189))

(declare-fun m!304191 () Bool)

(assert (=> b!290041 m!304191))

(declare-fun m!304193 () Bool)

(assert (=> b!290046 m!304193))

(declare-fun m!304195 () Bool)

(assert (=> b!290046 m!304195))

(declare-fun m!304197 () Bool)

(assert (=> b!290046 m!304197))

(declare-fun m!304199 () Bool)

(assert (=> b!290046 m!304199))

(declare-fun m!304201 () Bool)

(assert (=> b!290045 m!304201))

(declare-fun m!304203 () Bool)

(assert (=> b!290043 m!304203))

(check-sat (not b!290041) (not b!290044) (not b!290046) (not b!290043) (not b!290045) (not start!28320))
(check-sat)
