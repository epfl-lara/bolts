; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29896 () Bool)

(assert start!29896)

(declare-fun b!300406 () Bool)

(declare-fun res!158458 () Bool)

(declare-fun e!189697 () Bool)

(assert (=> b!300406 (=> (not res!158458) (not e!189697))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15177 0))(
  ( (array!15178 (arr!7182 (Array (_ BitVec 32) (_ BitVec 64))) (size!7534 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15177)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!300406 (= res!158458 (and (= (size!7534 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7534 a!3312))))))

(declare-fun b!300407 () Bool)

(declare-fun e!189695 () Bool)

(assert (=> b!300407 (= e!189695 false)))

(declare-fun lt!149507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2342 0))(
  ( (MissingZero!2342 (index!11544 (_ BitVec 32))) (Found!2342 (index!11545 (_ BitVec 32))) (Intermediate!2342 (undefined!3154 Bool) (index!11546 (_ BitVec 32)) (x!29763 (_ BitVec 32))) (Undefined!2342) (MissingVacant!2342 (index!11547 (_ BitVec 32))) )
))
(declare-fun lt!149509 () SeekEntryResult!2342)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15177 (_ BitVec 32)) SeekEntryResult!2342)

(assert (=> b!300407 (= lt!149509 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149507 k!2524 (array!15178 (store (arr!7182 a!3312) i!1256 k!2524) (size!7534 a!3312)) mask!3809))))

(declare-fun lt!149508 () SeekEntryResult!2342)

(assert (=> b!300407 (= lt!149508 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149507 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300407 (= lt!149507 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!158455 () Bool)

(assert (=> start!29896 (=> (not res!158455) (not e!189697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29896 (= res!158455 (validMask!0 mask!3809))))

(assert (=> start!29896 e!189697))

(assert (=> start!29896 true))

(declare-fun array_inv!5136 (array!15177) Bool)

(assert (=> start!29896 (array_inv!5136 a!3312)))

(declare-fun b!300408 () Bool)

(declare-fun res!158457 () Bool)

(assert (=> b!300408 (=> (not res!158457) (not e!189697))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300408 (= res!158457 (validKeyInArray!0 k!2524))))

(declare-fun b!300409 () Bool)

(declare-fun res!158459 () Bool)

(assert (=> b!300409 (=> (not res!158459) (not e!189695))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15177 (_ BitVec 32)) Bool)

(assert (=> b!300409 (= res!158459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300410 () Bool)

(declare-fun res!158456 () Bool)

(assert (=> b!300410 (=> (not res!158456) (not e!189697))))

(declare-fun arrayContainsKey!0 (array!15177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300410 (= res!158456 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!300411 () Bool)

(assert (=> b!300411 (= e!189697 e!189695)))

(declare-fun res!158460 () Bool)

(assert (=> b!300411 (=> (not res!158460) (not e!189695))))

(declare-fun lt!149510 () SeekEntryResult!2342)

(assert (=> b!300411 (= res!158460 (or (= lt!149510 (MissingZero!2342 i!1256)) (= lt!149510 (MissingVacant!2342 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15177 (_ BitVec 32)) SeekEntryResult!2342)

(assert (=> b!300411 (= lt!149510 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!29896 res!158455) b!300406))

(assert (= (and b!300406 res!158458) b!300408))

(assert (= (and b!300408 res!158457) b!300410))

(assert (= (and b!300410 res!158456) b!300411))

(assert (= (and b!300411 res!158460) b!300409))

(assert (= (and b!300409 res!158459) b!300407))

(declare-fun m!312419 () Bool)

(assert (=> b!300411 m!312419))

(declare-fun m!312421 () Bool)

(assert (=> b!300410 m!312421))

(declare-fun m!312423 () Bool)

(assert (=> b!300409 m!312423))

(declare-fun m!312425 () Bool)

(assert (=> start!29896 m!312425))

(declare-fun m!312427 () Bool)

(assert (=> start!29896 m!312427))

(declare-fun m!312429 () Bool)

(assert (=> b!300408 m!312429))

(declare-fun m!312431 () Bool)

(assert (=> b!300407 m!312431))

(declare-fun m!312433 () Bool)

(assert (=> b!300407 m!312433))

(declare-fun m!312435 () Bool)

(assert (=> b!300407 m!312435))

(declare-fun m!312437 () Bool)

(assert (=> b!300407 m!312437))

(push 1)

(assert (not b!300407))

(assert (not b!300409))

