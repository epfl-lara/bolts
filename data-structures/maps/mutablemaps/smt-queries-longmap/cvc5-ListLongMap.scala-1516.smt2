; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28636 () Bool)

(assert start!28636)

(declare-fun b!292615 () Bool)

(declare-fun e!185114 () Bool)

(declare-fun e!185115 () Bool)

(assert (=> b!292615 (= e!185114 e!185115)))

(declare-fun res!153714 () Bool)

(assert (=> b!292615 (=> (not res!153714) (not e!185115))))

(declare-datatypes ((SeekEntryResult!2184 0))(
  ( (MissingZero!2184 (index!10906 (_ BitVec 32))) (Found!2184 (index!10907 (_ BitVec 32))) (Intermediate!2184 (undefined!2996 Bool) (index!10908 (_ BitVec 32)) (x!29063 (_ BitVec 32))) (Undefined!2184) (MissingVacant!2184 (index!10909 (_ BitVec 32))) )
))
(declare-fun lt!145013 () SeekEntryResult!2184)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292615 (= res!153714 (or (= lt!145013 (MissingZero!2184 i!1256)) (= lt!145013 (MissingVacant!2184 i!1256))))))

(declare-datatypes ((array!14804 0))(
  ( (array!14805 (arr!7024 (Array (_ BitVec 32) (_ BitVec 64))) (size!7376 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14804)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14804 (_ BitVec 32)) SeekEntryResult!2184)

(assert (=> b!292615 (= lt!145013 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!153713 () Bool)

(assert (=> start!28636 (=> (not res!153713) (not e!185114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28636 (= res!153713 (validMask!0 mask!3809))))

(assert (=> start!28636 e!185114))

(assert (=> start!28636 true))

(declare-fun array_inv!4978 (array!14804) Bool)

(assert (=> start!28636 (array_inv!4978 a!3312)))

(declare-fun b!292616 () Bool)

(assert (=> b!292616 (= e!185115 false)))

(declare-fun lt!145012 () SeekEntryResult!2184)

(declare-fun lt!145010 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14804 (_ BitVec 32)) SeekEntryResult!2184)

(assert (=> b!292616 (= lt!145012 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145010 k!2524 (array!14805 (store (arr!7024 a!3312) i!1256 k!2524) (size!7376 a!3312)) mask!3809))))

(declare-fun lt!145011 () SeekEntryResult!2184)

(assert (=> b!292616 (= lt!145011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145010 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292616 (= lt!145010 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292617 () Bool)

(declare-fun res!153711 () Bool)

(assert (=> b!292617 (=> (not res!153711) (not e!185115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14804 (_ BitVec 32)) Bool)

(assert (=> b!292617 (= res!153711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292618 () Bool)

(declare-fun res!153710 () Bool)

(assert (=> b!292618 (=> (not res!153710) (not e!185114))))

(assert (=> b!292618 (= res!153710 (and (= (size!7376 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7376 a!3312))))))

(declare-fun b!292619 () Bool)

(declare-fun res!153712 () Bool)

(assert (=> b!292619 (=> (not res!153712) (not e!185114))))

(declare-fun arrayContainsKey!0 (array!14804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292619 (= res!153712 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292620 () Bool)

(declare-fun res!153709 () Bool)

(assert (=> b!292620 (=> (not res!153709) (not e!185114))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292620 (= res!153709 (validKeyInArray!0 k!2524))))

(assert (= (and start!28636 res!153713) b!292618))

(assert (= (and b!292618 res!153710) b!292620))

(assert (= (and b!292620 res!153709) b!292619))

(assert (= (and b!292619 res!153712) b!292615))

(assert (= (and b!292615 res!153714) b!292617))

(assert (= (and b!292617 res!153711) b!292616))

(declare-fun m!306415 () Bool)

(assert (=> b!292616 m!306415))

(declare-fun m!306417 () Bool)

(assert (=> b!292616 m!306417))

(declare-fun m!306419 () Bool)

(assert (=> b!292616 m!306419))

(declare-fun m!306421 () Bool)

(assert (=> b!292616 m!306421))

(declare-fun m!306423 () Bool)

(assert (=> b!292615 m!306423))

(declare-fun m!306425 () Bool)

(assert (=> b!292617 m!306425))

(declare-fun m!306427 () Bool)

(assert (=> b!292619 m!306427))

(declare-fun m!306429 () Bool)

(assert (=> start!28636 m!306429))

(declare-fun m!306431 () Bool)

(assert (=> start!28636 m!306431))

(declare-fun m!306433 () Bool)

(assert (=> b!292620 m!306433))

(push 1)

