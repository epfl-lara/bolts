; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28644 () Bool)

(assert start!28644)

(declare-fun b!292687 () Bool)

(declare-fun res!153782 () Bool)

(declare-fun e!185150 () Bool)

(assert (=> b!292687 (=> (not res!153782) (not e!185150))))

(declare-datatypes ((array!14812 0))(
  ( (array!14813 (arr!7028 (Array (_ BitVec 32) (_ BitVec 64))) (size!7380 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14812)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292687 (= res!153782 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292688 () Bool)

(declare-fun res!153783 () Bool)

(assert (=> b!292688 (=> (not res!153783) (not e!185150))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!292688 (= res!153783 (and (= (size!7380 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7380 a!3312))))))

(declare-fun b!292689 () Bool)

(declare-fun e!185152 () Bool)

(assert (=> b!292689 (= e!185150 e!185152)))

(declare-fun res!153785 () Bool)

(assert (=> b!292689 (=> (not res!153785) (not e!185152))))

(declare-datatypes ((SeekEntryResult!2188 0))(
  ( (MissingZero!2188 (index!10922 (_ BitVec 32))) (Found!2188 (index!10923 (_ BitVec 32))) (Intermediate!2188 (undefined!3000 Bool) (index!10924 (_ BitVec 32)) (x!29075 (_ BitVec 32))) (Undefined!2188) (MissingVacant!2188 (index!10925 (_ BitVec 32))) )
))
(declare-fun lt!145058 () SeekEntryResult!2188)

(assert (=> b!292689 (= res!153785 (or (= lt!145058 (MissingZero!2188 i!1256)) (= lt!145058 (MissingVacant!2188 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14812 (_ BitVec 32)) SeekEntryResult!2188)

(assert (=> b!292689 (= lt!145058 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!292690 () Bool)

(declare-fun res!153786 () Bool)

(assert (=> b!292690 (=> (not res!153786) (not e!185150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292690 (= res!153786 (validKeyInArray!0 k0!2524))))

(declare-fun b!292692 () Bool)

(declare-fun res!153781 () Bool)

(assert (=> b!292692 (=> (not res!153781) (not e!185152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14812 (_ BitVec 32)) Bool)

(assert (=> b!292692 (= res!153781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292691 () Bool)

(assert (=> b!292691 (= e!185152 false)))

(declare-fun lt!145061 () (_ BitVec 32))

(declare-fun lt!145060 () SeekEntryResult!2188)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14812 (_ BitVec 32)) SeekEntryResult!2188)

(assert (=> b!292691 (= lt!145060 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145061 k0!2524 (array!14813 (store (arr!7028 a!3312) i!1256 k0!2524) (size!7380 a!3312)) mask!3809))))

(declare-fun lt!145059 () SeekEntryResult!2188)

(assert (=> b!292691 (= lt!145059 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145061 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292691 (= lt!145061 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!153784 () Bool)

(assert (=> start!28644 (=> (not res!153784) (not e!185150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28644 (= res!153784 (validMask!0 mask!3809))))

(assert (=> start!28644 e!185150))

(assert (=> start!28644 true))

(declare-fun array_inv!4982 (array!14812) Bool)

(assert (=> start!28644 (array_inv!4982 a!3312)))

(assert (= (and start!28644 res!153784) b!292688))

(assert (= (and b!292688 res!153783) b!292690))

(assert (= (and b!292690 res!153786) b!292687))

(assert (= (and b!292687 res!153782) b!292689))

(assert (= (and b!292689 res!153785) b!292692))

(assert (= (and b!292692 res!153781) b!292691))

(declare-fun m!306495 () Bool)

(assert (=> start!28644 m!306495))

(declare-fun m!306497 () Bool)

(assert (=> start!28644 m!306497))

(declare-fun m!306499 () Bool)

(assert (=> b!292689 m!306499))

(declare-fun m!306501 () Bool)

(assert (=> b!292691 m!306501))

(declare-fun m!306503 () Bool)

(assert (=> b!292691 m!306503))

(declare-fun m!306505 () Bool)

(assert (=> b!292691 m!306505))

(declare-fun m!306507 () Bool)

(assert (=> b!292691 m!306507))

(declare-fun m!306509 () Bool)

(assert (=> b!292690 m!306509))

(declare-fun m!306511 () Bool)

(assert (=> b!292692 m!306511))

(declare-fun m!306513 () Bool)

(assert (=> b!292687 m!306513))

(check-sat (not start!28644) (not b!292690) (not b!292687) (not b!292692) (not b!292691) (not b!292689))
(check-sat)
