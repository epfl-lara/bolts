; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28632 () Bool)

(assert start!28632)

(declare-fun b!292579 () Bool)

(declare-fun res!153678 () Bool)

(declare-fun e!185097 () Bool)

(assert (=> b!292579 (=> (not res!153678) (not e!185097))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292579 (= res!153678 (validKeyInArray!0 k0!2524))))

(declare-fun b!292580 () Bool)

(declare-fun e!185096 () Bool)

(assert (=> b!292580 (= e!185096 false)))

(declare-datatypes ((array!14800 0))(
  ( (array!14801 (arr!7022 (Array (_ BitVec 32) (_ BitVec 64))) (size!7374 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14800)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!144989 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2182 0))(
  ( (MissingZero!2182 (index!10898 (_ BitVec 32))) (Found!2182 (index!10899 (_ BitVec 32))) (Intermediate!2182 (undefined!2994 Bool) (index!10900 (_ BitVec 32)) (x!29053 (_ BitVec 32))) (Undefined!2182) (MissingVacant!2182 (index!10901 (_ BitVec 32))) )
))
(declare-fun lt!144986 () SeekEntryResult!2182)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14800 (_ BitVec 32)) SeekEntryResult!2182)

(assert (=> b!292580 (= lt!144986 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144989 k0!2524 (array!14801 (store (arr!7022 a!3312) i!1256 k0!2524) (size!7374 a!3312)) mask!3809))))

(declare-fun lt!144988 () SeekEntryResult!2182)

(assert (=> b!292580 (= lt!144988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144989 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292580 (= lt!144989 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!292581 () Bool)

(declare-fun res!153677 () Bool)

(assert (=> b!292581 (=> (not res!153677) (not e!185097))))

(assert (=> b!292581 (= res!153677 (and (= (size!7374 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7374 a!3312))))))

(declare-fun b!292582 () Bool)

(assert (=> b!292582 (= e!185097 e!185096)))

(declare-fun res!153673 () Bool)

(assert (=> b!292582 (=> (not res!153673) (not e!185096))))

(declare-fun lt!144987 () SeekEntryResult!2182)

(assert (=> b!292582 (= res!153673 (or (= lt!144987 (MissingZero!2182 i!1256)) (= lt!144987 (MissingVacant!2182 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14800 (_ BitVec 32)) SeekEntryResult!2182)

(assert (=> b!292582 (= lt!144987 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!292583 () Bool)

(declare-fun res!153676 () Bool)

(assert (=> b!292583 (=> (not res!153676) (not e!185096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14800 (_ BitVec 32)) Bool)

(assert (=> b!292583 (= res!153676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292584 () Bool)

(declare-fun res!153674 () Bool)

(assert (=> b!292584 (=> (not res!153674) (not e!185097))))

(declare-fun arrayContainsKey!0 (array!14800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292584 (= res!153674 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!153675 () Bool)

(assert (=> start!28632 (=> (not res!153675) (not e!185097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28632 (= res!153675 (validMask!0 mask!3809))))

(assert (=> start!28632 e!185097))

(assert (=> start!28632 true))

(declare-fun array_inv!4976 (array!14800) Bool)

(assert (=> start!28632 (array_inv!4976 a!3312)))

(assert (= (and start!28632 res!153675) b!292581))

(assert (= (and b!292581 res!153677) b!292579))

(assert (= (and b!292579 res!153678) b!292584))

(assert (= (and b!292584 res!153674) b!292582))

(assert (= (and b!292582 res!153673) b!292583))

(assert (= (and b!292583 res!153676) b!292580))

(declare-fun m!306375 () Bool)

(assert (=> b!292579 m!306375))

(declare-fun m!306377 () Bool)

(assert (=> b!292582 m!306377))

(declare-fun m!306379 () Bool)

(assert (=> b!292583 m!306379))

(declare-fun m!306381 () Bool)

(assert (=> b!292580 m!306381))

(declare-fun m!306383 () Bool)

(assert (=> b!292580 m!306383))

(declare-fun m!306385 () Bool)

(assert (=> b!292580 m!306385))

(declare-fun m!306387 () Bool)

(assert (=> b!292580 m!306387))

(declare-fun m!306389 () Bool)

(assert (=> start!28632 m!306389))

(declare-fun m!306391 () Bool)

(assert (=> start!28632 m!306391))

(declare-fun m!306393 () Bool)

(assert (=> b!292584 m!306393))

(check-sat (not b!292583) (not start!28632) (not b!292580) (not b!292582) (not b!292579) (not b!292584))
(check-sat)
