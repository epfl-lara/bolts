; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28302 () Bool)

(assert start!28302)

(declare-fun b!289879 () Bool)

(declare-fun res!151401 () Bool)

(declare-fun e!183486 () Bool)

(assert (=> b!289879 (=> (not res!151401) (not e!183486))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289879 (= res!151401 (validKeyInArray!0 k0!2524))))

(declare-fun b!289880 () Bool)

(declare-fun res!151398 () Bool)

(declare-fun e!183487 () Bool)

(assert (=> b!289880 (=> (not res!151398) (not e!183487))))

(declare-datatypes ((array!14605 0))(
  ( (array!14606 (arr!6929 (Array (_ BitVec 32) (_ BitVec 64))) (size!7281 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14605)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14605 (_ BitVec 32)) Bool)

(assert (=> b!289880 (= res!151398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!151400 () Bool)

(assert (=> start!28302 (=> (not res!151400) (not e!183486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28302 (= res!151400 (validMask!0 mask!3809))))

(assert (=> start!28302 e!183486))

(assert (=> start!28302 true))

(declare-fun array_inv!4883 (array!14605) Bool)

(assert (=> start!28302 (array_inv!4883 a!3312)))

(declare-fun b!289881 () Bool)

(declare-fun res!151396 () Bool)

(assert (=> b!289881 (=> (not res!151396) (not e!183486))))

(declare-fun arrayContainsKey!0 (array!14605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289881 (= res!151396 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289882 () Bool)

(assert (=> b!289882 (= e!183487 false)))

(declare-datatypes ((SeekEntryResult!2089 0))(
  ( (MissingZero!2089 (index!10526 (_ BitVec 32))) (Found!2089 (index!10527 (_ BitVec 32))) (Intermediate!2089 (undefined!2901 Bool) (index!10528 (_ BitVec 32)) (x!28694 (_ BitVec 32))) (Undefined!2089) (MissingVacant!2089 (index!10529 (_ BitVec 32))) )
))
(declare-fun lt!143170 () SeekEntryResult!2089)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!143169 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14605 (_ BitVec 32)) SeekEntryResult!2089)

(assert (=> b!289882 (= lt!143170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143169 k0!2524 (array!14606 (store (arr!6929 a!3312) i!1256 k0!2524) (size!7281 a!3312)) mask!3809))))

(declare-fun lt!143171 () SeekEntryResult!2089)

(assert (=> b!289882 (= lt!143171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143169 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289882 (= lt!143169 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!289883 () Bool)

(declare-fun res!151399 () Bool)

(assert (=> b!289883 (=> (not res!151399) (not e!183486))))

(assert (=> b!289883 (= res!151399 (and (= (size!7281 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7281 a!3312))))))

(declare-fun b!289884 () Bool)

(assert (=> b!289884 (= e!183486 e!183487)))

(declare-fun res!151397 () Bool)

(assert (=> b!289884 (=> (not res!151397) (not e!183487))))

(declare-fun lt!143168 () SeekEntryResult!2089)

(assert (=> b!289884 (= res!151397 (or (= lt!143168 (MissingZero!2089 i!1256)) (= lt!143168 (MissingVacant!2089 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14605 (_ BitVec 32)) SeekEntryResult!2089)

(assert (=> b!289884 (= lt!143168 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!28302 res!151400) b!289883))

(assert (= (and b!289883 res!151399) b!289879))

(assert (= (and b!289879 res!151401) b!289881))

(assert (= (and b!289881 res!151396) b!289884))

(assert (= (and b!289884 res!151397) b!289880))

(assert (= (and b!289880 res!151398) b!289882))

(declare-fun m!304005 () Bool)

(assert (=> b!289882 m!304005))

(declare-fun m!304007 () Bool)

(assert (=> b!289882 m!304007))

(declare-fun m!304009 () Bool)

(assert (=> b!289882 m!304009))

(declare-fun m!304011 () Bool)

(assert (=> b!289882 m!304011))

(declare-fun m!304013 () Bool)

(assert (=> b!289879 m!304013))

(declare-fun m!304015 () Bool)

(assert (=> start!28302 m!304015))

(declare-fun m!304017 () Bool)

(assert (=> start!28302 m!304017))

(declare-fun m!304019 () Bool)

(assert (=> b!289884 m!304019))

(declare-fun m!304021 () Bool)

(assert (=> b!289881 m!304021))

(declare-fun m!304023 () Bool)

(assert (=> b!289880 m!304023))

(check-sat (not b!289879) (not b!289882) (not start!28302) (not b!289881) (not b!289884) (not b!289880))
(check-sat)
