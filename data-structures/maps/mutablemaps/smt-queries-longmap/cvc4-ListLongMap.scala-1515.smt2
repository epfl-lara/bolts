; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28634 () Bool)

(assert start!28634)

(declare-fun b!292597 () Bool)

(declare-fun e!185107 () Bool)

(assert (=> b!292597 (= e!185107 false)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2183 0))(
  ( (MissingZero!2183 (index!10902 (_ BitVec 32))) (Found!2183 (index!10903 (_ BitVec 32))) (Intermediate!2183 (undefined!2995 Bool) (index!10904 (_ BitVec 32)) (x!29054 (_ BitVec 32))) (Undefined!2183) (MissingVacant!2183 (index!10905 (_ BitVec 32))) )
))
(declare-fun lt!145000 () SeekEntryResult!2183)

(declare-datatypes ((array!14802 0))(
  ( (array!14803 (arr!7023 (Array (_ BitVec 32) (_ BitVec 64))) (size!7375 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14802)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!145001 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14802 (_ BitVec 32)) SeekEntryResult!2183)

(assert (=> b!292597 (= lt!145000 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145001 k!2524 (array!14803 (store (arr!7023 a!3312) i!1256 k!2524) (size!7375 a!3312)) mask!3809))))

(declare-fun lt!144999 () SeekEntryResult!2183)

(assert (=> b!292597 (= lt!144999 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145001 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292597 (= lt!145001 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!153691 () Bool)

(declare-fun e!185106 () Bool)

(assert (=> start!28634 (=> (not res!153691) (not e!185106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28634 (= res!153691 (validMask!0 mask!3809))))

(assert (=> start!28634 e!185106))

(assert (=> start!28634 true))

(declare-fun array_inv!4977 (array!14802) Bool)

(assert (=> start!28634 (array_inv!4977 a!3312)))

(declare-fun b!292598 () Bool)

(declare-fun res!153696 () Bool)

(assert (=> b!292598 (=> (not res!153696) (not e!185106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292598 (= res!153696 (validKeyInArray!0 k!2524))))

(declare-fun b!292599 () Bool)

(assert (=> b!292599 (= e!185106 e!185107)))

(declare-fun res!153694 () Bool)

(assert (=> b!292599 (=> (not res!153694) (not e!185107))))

(declare-fun lt!144998 () SeekEntryResult!2183)

(assert (=> b!292599 (= res!153694 (or (= lt!144998 (MissingZero!2183 i!1256)) (= lt!144998 (MissingVacant!2183 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14802 (_ BitVec 32)) SeekEntryResult!2183)

(assert (=> b!292599 (= lt!144998 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292600 () Bool)

(declare-fun res!153695 () Bool)

(assert (=> b!292600 (=> (not res!153695) (not e!185106))))

(declare-fun arrayContainsKey!0 (array!14802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292600 (= res!153695 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292601 () Bool)

(declare-fun res!153692 () Bool)

(assert (=> b!292601 (=> (not res!153692) (not e!185107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14802 (_ BitVec 32)) Bool)

(assert (=> b!292601 (= res!153692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292602 () Bool)

(declare-fun res!153693 () Bool)

(assert (=> b!292602 (=> (not res!153693) (not e!185106))))

(assert (=> b!292602 (= res!153693 (and (= (size!7375 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7375 a!3312))))))

(assert (= (and start!28634 res!153691) b!292602))

(assert (= (and b!292602 res!153693) b!292598))

(assert (= (and b!292598 res!153696) b!292600))

(assert (= (and b!292600 res!153695) b!292599))

(assert (= (and b!292599 res!153694) b!292601))

(assert (= (and b!292601 res!153692) b!292597))

(declare-fun m!306395 () Bool)

(assert (=> b!292601 m!306395))

(declare-fun m!306397 () Bool)

(assert (=> b!292598 m!306397))

(declare-fun m!306399 () Bool)

(assert (=> b!292599 m!306399))

(declare-fun m!306401 () Bool)

(assert (=> b!292600 m!306401))

(declare-fun m!306403 () Bool)

(assert (=> start!28634 m!306403))

(declare-fun m!306405 () Bool)

(assert (=> start!28634 m!306405))

(declare-fun m!306407 () Bool)

(assert (=> b!292597 m!306407))

(declare-fun m!306409 () Bool)

(assert (=> b!292597 m!306409))

(declare-fun m!306411 () Bool)

(assert (=> b!292597 m!306411))

(declare-fun m!306413 () Bool)

(assert (=> b!292597 m!306413))

(push 1)

