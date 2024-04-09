; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28630 () Bool)

(assert start!28630)

(declare-fun b!292561 () Bool)

(declare-fun res!153660 () Bool)

(declare-fun e!185089 () Bool)

(assert (=> b!292561 (=> (not res!153660) (not e!185089))))

(declare-datatypes ((array!14798 0))(
  ( (array!14799 (arr!7021 (Array (_ BitVec 32) (_ BitVec 64))) (size!7373 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14798)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14798 (_ BitVec 32)) Bool)

(assert (=> b!292561 (= res!153660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!153656 () Bool)

(declare-fun e!185087 () Bool)

(assert (=> start!28630 (=> (not res!153656) (not e!185087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28630 (= res!153656 (validMask!0 mask!3809))))

(assert (=> start!28630 e!185087))

(assert (=> start!28630 true))

(declare-fun array_inv!4975 (array!14798) Bool)

(assert (=> start!28630 (array_inv!4975 a!3312)))

(declare-fun b!292562 () Bool)

(assert (=> b!292562 (= e!185089 false)))

(declare-fun lt!144975 () (_ BitVec 32))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2181 0))(
  ( (MissingZero!2181 (index!10894 (_ BitVec 32))) (Found!2181 (index!10895 (_ BitVec 32))) (Intermediate!2181 (undefined!2993 Bool) (index!10896 (_ BitVec 32)) (x!29052 (_ BitVec 32))) (Undefined!2181) (MissingVacant!2181 (index!10897 (_ BitVec 32))) )
))
(declare-fun lt!144977 () SeekEntryResult!2181)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14798 (_ BitVec 32)) SeekEntryResult!2181)

(assert (=> b!292562 (= lt!144977 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144975 k!2524 (array!14799 (store (arr!7021 a!3312) i!1256 k!2524) (size!7373 a!3312)) mask!3809))))

(declare-fun lt!144976 () SeekEntryResult!2181)

(assert (=> b!292562 (= lt!144976 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144975 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292562 (= lt!144975 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292563 () Bool)

(declare-fun res!153659 () Bool)

(assert (=> b!292563 (=> (not res!153659) (not e!185087))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292563 (= res!153659 (validKeyInArray!0 k!2524))))

(declare-fun b!292564 () Bool)

(declare-fun res!153658 () Bool)

(assert (=> b!292564 (=> (not res!153658) (not e!185087))))

(assert (=> b!292564 (= res!153658 (and (= (size!7373 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7373 a!3312))))))

(declare-fun b!292565 () Bool)

(declare-fun res!153655 () Bool)

(assert (=> b!292565 (=> (not res!153655) (not e!185087))))

(declare-fun arrayContainsKey!0 (array!14798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292565 (= res!153655 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292566 () Bool)

(assert (=> b!292566 (= e!185087 e!185089)))

(declare-fun res!153657 () Bool)

(assert (=> b!292566 (=> (not res!153657) (not e!185089))))

(declare-fun lt!144974 () SeekEntryResult!2181)

(assert (=> b!292566 (= res!153657 (or (= lt!144974 (MissingZero!2181 i!1256)) (= lt!144974 (MissingVacant!2181 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14798 (_ BitVec 32)) SeekEntryResult!2181)

(assert (=> b!292566 (= lt!144974 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!28630 res!153656) b!292564))

(assert (= (and b!292564 res!153658) b!292563))

(assert (= (and b!292563 res!153659) b!292565))

(assert (= (and b!292565 res!153655) b!292566))

(assert (= (and b!292566 res!153657) b!292561))

(assert (= (and b!292561 res!153660) b!292562))

(declare-fun m!306355 () Bool)

(assert (=> start!28630 m!306355))

(declare-fun m!306357 () Bool)

(assert (=> start!28630 m!306357))

(declare-fun m!306359 () Bool)

(assert (=> b!292563 m!306359))

(declare-fun m!306361 () Bool)

(assert (=> b!292561 m!306361))

(declare-fun m!306363 () Bool)

(assert (=> b!292565 m!306363))

(declare-fun m!306365 () Bool)

(assert (=> b!292566 m!306365))

(declare-fun m!306367 () Bool)

(assert (=> b!292562 m!306367))

(declare-fun m!306369 () Bool)

(assert (=> b!292562 m!306369))

(declare-fun m!306371 () Bool)

(assert (=> b!292562 m!306371))

(declare-fun m!306373 () Bool)

(assert (=> b!292562 m!306373))

(push 1)

