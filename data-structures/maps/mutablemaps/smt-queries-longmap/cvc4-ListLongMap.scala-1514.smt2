; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28628 () Bool)

(assert start!28628)

(declare-fun b!292543 () Bool)

(declare-fun res!153639 () Bool)

(declare-fun e!185080 () Bool)

(assert (=> b!292543 (=> (not res!153639) (not e!185080))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14796 0))(
  ( (array!14797 (arr!7020 (Array (_ BitVec 32) (_ BitVec 64))) (size!7372 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14796)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!292543 (= res!153639 (and (= (size!7372 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7372 a!3312))))))

(declare-fun b!292544 () Bool)

(declare-fun e!185079 () Bool)

(assert (=> b!292544 (= e!185080 e!185079)))

(declare-fun res!153641 () Bool)

(assert (=> b!292544 (=> (not res!153641) (not e!185079))))

(declare-datatypes ((SeekEntryResult!2180 0))(
  ( (MissingZero!2180 (index!10890 (_ BitVec 32))) (Found!2180 (index!10891 (_ BitVec 32))) (Intermediate!2180 (undefined!2992 Bool) (index!10892 (_ BitVec 32)) (x!29043 (_ BitVec 32))) (Undefined!2180) (MissingVacant!2180 (index!10893 (_ BitVec 32))) )
))
(declare-fun lt!144965 () SeekEntryResult!2180)

(assert (=> b!292544 (= res!153641 (or (= lt!144965 (MissingZero!2180 i!1256)) (= lt!144965 (MissingVacant!2180 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14796 (_ BitVec 32)) SeekEntryResult!2180)

(assert (=> b!292544 (= lt!144965 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!153642 () Bool)

(assert (=> start!28628 (=> (not res!153642) (not e!185080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28628 (= res!153642 (validMask!0 mask!3809))))

(assert (=> start!28628 e!185080))

(assert (=> start!28628 true))

(declare-fun array_inv!4974 (array!14796) Bool)

(assert (=> start!28628 (array_inv!4974 a!3312)))

(declare-fun b!292545 () Bool)

(declare-fun res!153637 () Bool)

(assert (=> b!292545 (=> (not res!153637) (not e!185079))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14796 (_ BitVec 32)) Bool)

(assert (=> b!292545 (= res!153637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292546 () Bool)

(declare-fun res!153640 () Bool)

(assert (=> b!292546 (=> (not res!153640) (not e!185080))))

(declare-fun arrayContainsKey!0 (array!14796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292546 (= res!153640 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292547 () Bool)

(assert (=> b!292547 (= e!185079 false)))

(declare-fun lt!144963 () (_ BitVec 32))

(declare-fun lt!144962 () SeekEntryResult!2180)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14796 (_ BitVec 32)) SeekEntryResult!2180)

(assert (=> b!292547 (= lt!144962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144963 k!2524 (array!14797 (store (arr!7020 a!3312) i!1256 k!2524) (size!7372 a!3312)) mask!3809))))

(declare-fun lt!144964 () SeekEntryResult!2180)

(assert (=> b!292547 (= lt!144964 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144963 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292547 (= lt!144963 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292548 () Bool)

(declare-fun res!153638 () Bool)

(assert (=> b!292548 (=> (not res!153638) (not e!185080))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292548 (= res!153638 (validKeyInArray!0 k!2524))))

(assert (= (and start!28628 res!153642) b!292543))

(assert (= (and b!292543 res!153639) b!292548))

(assert (= (and b!292548 res!153638) b!292546))

(assert (= (and b!292546 res!153640) b!292544))

(assert (= (and b!292544 res!153641) b!292545))

(assert (= (and b!292545 res!153637) b!292547))

(declare-fun m!306335 () Bool)

(assert (=> b!292546 m!306335))

(declare-fun m!306337 () Bool)

(assert (=> b!292547 m!306337))

(declare-fun m!306339 () Bool)

(assert (=> b!292547 m!306339))

(declare-fun m!306341 () Bool)

(assert (=> b!292547 m!306341))

(declare-fun m!306343 () Bool)

(assert (=> b!292547 m!306343))

(declare-fun m!306345 () Bool)

(assert (=> b!292544 m!306345))

(declare-fun m!306347 () Bool)

(assert (=> b!292548 m!306347))

(declare-fun m!306349 () Bool)

(assert (=> b!292545 m!306349))

(declare-fun m!306351 () Bool)

(assert (=> start!28628 m!306351))

(declare-fun m!306353 () Bool)

(assert (=> start!28628 m!306353))

(push 1)

