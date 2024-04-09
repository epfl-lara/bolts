; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28618 () Bool)

(assert start!28618)

(declare-fun b!292453 () Bool)

(declare-fun res!153552 () Bool)

(declare-fun e!185033 () Bool)

(assert (=> b!292453 (=> (not res!153552) (not e!185033))))

(declare-datatypes ((array!14786 0))(
  ( (array!14787 (arr!7015 (Array (_ BitVec 32) (_ BitVec 64))) (size!7367 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14786)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14786 (_ BitVec 32)) Bool)

(assert (=> b!292453 (= res!153552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292454 () Bool)

(declare-fun res!153551 () Bool)

(declare-fun e!185035 () Bool)

(assert (=> b!292454 (=> (not res!153551) (not e!185035))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292454 (= res!153551 (and (= (size!7367 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7367 a!3312))))))

(declare-fun b!292455 () Bool)

(declare-fun res!153547 () Bool)

(assert (=> b!292455 (=> (not res!153547) (not e!185035))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292455 (= res!153547 (validKeyInArray!0 k!2524))))

(declare-fun b!292456 () Bool)

(declare-fun res!153550 () Bool)

(assert (=> b!292456 (=> (not res!153550) (not e!185035))))

(declare-fun arrayContainsKey!0 (array!14786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292456 (= res!153550 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!153548 () Bool)

(assert (=> start!28618 (=> (not res!153548) (not e!185035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28618 (= res!153548 (validMask!0 mask!3809))))

(assert (=> start!28618 e!185035))

(assert (=> start!28618 true))

(declare-fun array_inv!4969 (array!14786) Bool)

(assert (=> start!28618 (array_inv!4969 a!3312)))

(declare-fun b!292457 () Bool)

(assert (=> b!292457 (= e!185035 e!185033)))

(declare-fun res!153549 () Bool)

(assert (=> b!292457 (=> (not res!153549) (not e!185033))))

(declare-datatypes ((SeekEntryResult!2175 0))(
  ( (MissingZero!2175 (index!10870 (_ BitVec 32))) (Found!2175 (index!10871 (_ BitVec 32))) (Intermediate!2175 (undefined!2987 Bool) (index!10872 (_ BitVec 32)) (x!29030 (_ BitVec 32))) (Undefined!2175) (MissingVacant!2175 (index!10873 (_ BitVec 32))) )
))
(declare-fun lt!144902 () SeekEntryResult!2175)

(assert (=> b!292457 (= res!153549 (or (= lt!144902 (MissingZero!2175 i!1256)) (= lt!144902 (MissingVacant!2175 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14786 (_ BitVec 32)) SeekEntryResult!2175)

(assert (=> b!292457 (= lt!144902 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292458 () Bool)

(assert (=> b!292458 (= e!185033 false)))

(declare-fun lt!144905 () (_ BitVec 32))

(declare-fun lt!144903 () SeekEntryResult!2175)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14786 (_ BitVec 32)) SeekEntryResult!2175)

(assert (=> b!292458 (= lt!144903 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144905 k!2524 (array!14787 (store (arr!7015 a!3312) i!1256 k!2524) (size!7367 a!3312)) mask!3809))))

(declare-fun lt!144904 () SeekEntryResult!2175)

(assert (=> b!292458 (= lt!144904 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144905 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292458 (= lt!144905 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28618 res!153548) b!292454))

(assert (= (and b!292454 res!153551) b!292455))

(assert (= (and b!292455 res!153547) b!292456))

(assert (= (and b!292456 res!153550) b!292457))

(assert (= (and b!292457 res!153549) b!292453))

(assert (= (and b!292453 res!153552) b!292458))

(declare-fun m!306235 () Bool)

(assert (=> start!28618 m!306235))

(declare-fun m!306237 () Bool)

(assert (=> start!28618 m!306237))

(declare-fun m!306239 () Bool)

(assert (=> b!292455 m!306239))

(declare-fun m!306241 () Bool)

(assert (=> b!292457 m!306241))

(declare-fun m!306243 () Bool)

(assert (=> b!292458 m!306243))

(declare-fun m!306245 () Bool)

(assert (=> b!292458 m!306245))

(declare-fun m!306247 () Bool)

(assert (=> b!292458 m!306247))

(declare-fun m!306249 () Bool)

(assert (=> b!292458 m!306249))

(declare-fun m!306251 () Bool)

(assert (=> b!292456 m!306251))

(declare-fun m!306253 () Bool)

(assert (=> b!292453 m!306253))

(push 1)

